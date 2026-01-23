; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277854 () Bool)

(assert start!277854)

(declare-fun b!2853060 () Bool)

(assert (=> b!2853060 true))

(assert (=> b!2853060 true))

(declare-fun b!2853054 () Bool)

(declare-fun e!1807600 () Bool)

(declare-fun tp!917023 () Bool)

(declare-fun tp!917030 () Bool)

(assert (=> b!2853054 (= e!1807600 (and tp!917023 tp!917030))))

(declare-fun b!2853055 () Bool)

(declare-fun res!1185975 () Bool)

(declare-fun e!1807597 () Bool)

(assert (=> b!2853055 (=> (not res!1185975) (not e!1807597))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17304 0))(
  ( (C!17305 (val!10686 Int)) )
))
(declare-datatypes ((Regex!8561 0))(
  ( (ElementMatch!8561 (c!459872 C!17304)) (Concat!13882 (regOne!17634 Regex!8561) (regTwo!17634 Regex!8561)) (EmptyExpr!8561) (Star!8561 (reg!8890 Regex!8561)) (EmptyLang!8561) (Union!8561 (regOne!17635 Regex!8561) (regTwo!17635 Regex!8561)) )
))
(declare-datatypes ((List!34148 0))(
  ( (Nil!34024) (Cons!34024 (h!39444 Regex!8561) (t!233179 List!34148)) )
))
(declare-datatypes ((Context!5142 0))(
  ( (Context!5143 (exprs!3071 List!34148)) )
))
(declare-fun z!809 () (InoxSet Context!5142))

(declare-datatypes ((List!34149 0))(
  ( (Nil!34025) (Cons!34025 (h!39445 Context!5142) (t!233180 List!34149)) )
))
(declare-fun zl!222 () List!34149)

(declare-fun toList!1974 ((InoxSet Context!5142)) List!34149)

(assert (=> b!2853055 (= res!1185975 (= (toList!1974 z!809) zl!222))))

(declare-fun b!2853056 () Bool)

(declare-fun e!1807601 () Bool)

(assert (=> b!2853056 (= e!1807597 e!1807601)))

(declare-fun res!1185977 () Bool)

(assert (=> b!2853056 (=> (not res!1185977) (not e!1807601))))

(declare-fun e!1807602 () Bool)

(assert (=> b!2853056 (= res!1185977 e!1807602)))

(declare-fun res!1185973 () Bool)

(assert (=> b!2853056 (=> res!1185973 e!1807602)))

(declare-fun lt!1013719 () Bool)

(assert (=> b!2853056 (= res!1185973 lt!1013719)))

(declare-fun r!5723 () Regex!8561)

(declare-datatypes ((List!34150 0))(
  ( (Nil!34026) (Cons!34026 (h!39446 C!17304) (t!233181 List!34150)) )
))
(declare-fun prefix!862 () List!34150)

(declare-fun prefixMatch!869 (Regex!8561 List!34150) Bool)

(assert (=> b!2853056 (= lt!1013719 (prefixMatch!869 r!5723 prefix!862))))

(declare-fun b!2853057 () Bool)

(declare-fun e!1807603 () Bool)

(declare-fun tp!917025 () Bool)

(assert (=> b!2853057 (= e!1807603 tp!917025)))

(declare-fun b!2853058 () Bool)

(declare-fun e!1807598 () Bool)

(declare-fun e!1807595 () Bool)

(assert (=> b!2853058 (= e!1807598 e!1807595)))

(declare-fun res!1185971 () Bool)

(assert (=> b!2853058 (=> res!1185971 e!1807595)))

(declare-fun lt!1013717 () List!34150)

(declare-fun matchR!3682 (Regex!8561 List!34150) Bool)

(assert (=> b!2853058 (= res!1185971 (not (matchR!3682 r!5723 lt!1013717)))))

(declare-fun lambda!104987 () Int)

(declare-fun pickWitness!300 (Int) List!34150)

(assert (=> b!2853058 (= lt!1013717 (pickWitness!300 lambda!104987))))

(declare-fun b!2853059 () Bool)

(declare-fun tp!917031 () Bool)

(declare-fun tp!917028 () Bool)

(assert (=> b!2853059 (= e!1807600 (and tp!917031 tp!917028))))

(declare-fun res!1185974 () Bool)

(assert (=> start!277854 (=> (not res!1185974) (not e!1807597))))

(declare-fun validRegex!3431 (Regex!8561) Bool)

(assert (=> start!277854 (= res!1185974 (validRegex!3431 r!5723))))

(assert (=> start!277854 e!1807597))

(assert (=> start!277854 e!1807600))

(declare-fun condSetEmpty!25236 () Bool)

(assert (=> start!277854 (= condSetEmpty!25236 (= z!809 ((as const (Array Context!5142 Bool)) false)))))

(declare-fun setRes!25236 () Bool)

(assert (=> start!277854 setRes!25236))

(declare-fun e!1807596 () Bool)

(assert (=> start!277854 e!1807596))

(declare-fun e!1807604 () Bool)

(assert (=> start!277854 e!1807604))

(assert (=> b!2853060 (= e!1807601 (not e!1807598))))

(declare-fun res!1185976 () Bool)

(assert (=> b!2853060 (=> res!1185976 e!1807598)))

(declare-fun Exists!1283 (Int) Bool)

(assert (=> b!2853060 (= res!1185976 (not (Exists!1283 lambda!104987)))))

(assert (=> b!2853060 (Exists!1283 lambda!104987)))

(declare-datatypes ((Unit!47685 0))(
  ( (Unit!47686) )
))
(declare-fun lt!1013718 () Unit!47685)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!331 (Regex!8561 List!34150) Unit!47685)

(assert (=> b!2853060 (= lt!1013718 (lemmaPrefixMatchThenExistsStringThatMatches!331 r!5723 prefix!862))))

(declare-fun setElem!25236 () Context!5142)

(declare-fun setNonEmpty!25236 () Bool)

(declare-fun tp!917026 () Bool)

(declare-fun inv!46039 (Context!5142) Bool)

(assert (=> setNonEmpty!25236 (= setRes!25236 (and tp!917026 (inv!46039 setElem!25236) e!1807603))))

(declare-fun setRest!25236 () (InoxSet Context!5142))

(assert (=> setNonEmpty!25236 (= z!809 ((_ map or) (store ((as const (Array Context!5142 Bool)) false) setElem!25236 true) setRest!25236))))

(declare-fun b!2853061 () Bool)

(declare-fun res!1185972 () Bool)

(assert (=> b!2853061 (=> (not res!1185972) (not e!1807597))))

(declare-fun unfocusZipper!233 (List!34149) Regex!8561)

(assert (=> b!2853061 (= res!1185972 (= r!5723 (unfocusZipper!233 zl!222)))))

(declare-fun b!2853062 () Bool)

(declare-fun isPrefix!2661 (List!34150 List!34150) Bool)

(assert (=> b!2853062 (= e!1807595 (isPrefix!2661 prefix!862 lt!1013717))))

(declare-fun matchZipper!419 ((InoxSet Context!5142) List!34150) Bool)

(assert (=> b!2853062 (matchZipper!419 z!809 lt!1013717)))

(declare-fun lt!1013716 () Unit!47685)

(declare-fun theoremZipperRegexEquiv!105 ((InoxSet Context!5142) List!34149 Regex!8561 List!34150) Unit!47685)

(assert (=> b!2853062 (= lt!1013716 (theoremZipperRegexEquiv!105 z!809 zl!222 r!5723 lt!1013717))))

(declare-fun setIsEmpty!25236 () Bool)

(assert (=> setIsEmpty!25236 setRes!25236))

(declare-fun b!2853063 () Bool)

(declare-fun tp_is_empty!14859 () Bool)

(declare-fun tp!917029 () Bool)

(assert (=> b!2853063 (= e!1807604 (and tp_is_empty!14859 tp!917029))))

(declare-fun b!2853064 () Bool)

(declare-fun res!1185978 () Bool)

(assert (=> b!2853064 (=> (not res!1185978) (not e!1807601))))

(declare-fun prefixMatchZipper!293 ((InoxSet Context!5142) List!34150) Bool)

(assert (=> b!2853064 (= res!1185978 (not (prefixMatchZipper!293 z!809 prefix!862)))))

(declare-fun b!2853065 () Bool)

(declare-fun res!1185970 () Bool)

(assert (=> b!2853065 (=> (not res!1185970) (not e!1807601))))

(assert (=> b!2853065 (= res!1185970 lt!1013719)))

(declare-fun b!2853066 () Bool)

(declare-fun e!1807599 () Bool)

(declare-fun tp!917032 () Bool)

(assert (=> b!2853066 (= e!1807599 tp!917032)))

(declare-fun tp!917027 () Bool)

(declare-fun b!2853067 () Bool)

(assert (=> b!2853067 (= e!1807596 (and (inv!46039 (h!39445 zl!222)) e!1807599 tp!917027))))

(declare-fun b!2853068 () Bool)

(declare-fun tp!917024 () Bool)

(assert (=> b!2853068 (= e!1807600 tp!917024)))

(declare-fun b!2853069 () Bool)

(assert (=> b!2853069 (= e!1807600 tp_is_empty!14859)))

(declare-fun b!2853070 () Bool)

(assert (=> b!2853070 (= e!1807602 (not (prefixMatchZipper!293 z!809 prefix!862)))))

(assert (= (and start!277854 res!1185974) b!2853055))

(assert (= (and b!2853055 res!1185975) b!2853061))

(assert (= (and b!2853061 res!1185972) b!2853056))

(assert (= (and b!2853056 (not res!1185973)) b!2853070))

(assert (= (and b!2853056 res!1185977) b!2853065))

(assert (= (and b!2853065 res!1185970) b!2853064))

(assert (= (and b!2853064 res!1185978) b!2853060))

(assert (= (and b!2853060 (not res!1185976)) b!2853058))

(assert (= (and b!2853058 (not res!1185971)) b!2853062))

(get-info :version)

(assert (= (and start!277854 ((_ is ElementMatch!8561) r!5723)) b!2853069))

(assert (= (and start!277854 ((_ is Concat!13882) r!5723)) b!2853059))

(assert (= (and start!277854 ((_ is Star!8561) r!5723)) b!2853068))

(assert (= (and start!277854 ((_ is Union!8561) r!5723)) b!2853054))

(assert (= (and start!277854 condSetEmpty!25236) setIsEmpty!25236))

(assert (= (and start!277854 (not condSetEmpty!25236)) setNonEmpty!25236))

(assert (= setNonEmpty!25236 b!2853057))

(assert (= b!2853067 b!2853066))

(assert (= (and start!277854 ((_ is Cons!34025) zl!222)) b!2853067))

(assert (= (and start!277854 ((_ is Cons!34026) prefix!862)) b!2853063))

(declare-fun m!3277825 () Bool)

(assert (=> b!2853064 m!3277825))

(declare-fun m!3277827 () Bool)

(assert (=> b!2853056 m!3277827))

(declare-fun m!3277829 () Bool)

(assert (=> b!2853055 m!3277829))

(declare-fun m!3277831 () Bool)

(assert (=> start!277854 m!3277831))

(declare-fun m!3277833 () Bool)

(assert (=> b!2853062 m!3277833))

(declare-fun m!3277835 () Bool)

(assert (=> b!2853062 m!3277835))

(declare-fun m!3277837 () Bool)

(assert (=> b!2853062 m!3277837))

(declare-fun m!3277839 () Bool)

(assert (=> b!2853061 m!3277839))

(declare-fun m!3277841 () Bool)

(assert (=> b!2853060 m!3277841))

(assert (=> b!2853060 m!3277841))

(declare-fun m!3277843 () Bool)

(assert (=> b!2853060 m!3277843))

(assert (=> b!2853070 m!3277825))

(declare-fun m!3277845 () Bool)

(assert (=> b!2853058 m!3277845))

(declare-fun m!3277847 () Bool)

(assert (=> b!2853058 m!3277847))

(declare-fun m!3277849 () Bool)

(assert (=> setNonEmpty!25236 m!3277849))

(declare-fun m!3277851 () Bool)

(assert (=> b!2853067 m!3277851))

(check-sat (not b!2853054) (not b!2853063) (not setNonEmpty!25236) (not b!2853062) (not b!2853064) (not b!2853070) (not start!277854) (not b!2853068) (not b!2853067) (not b!2853055) (not b!2853056) tp_is_empty!14859 (not b!2853059) (not b!2853061) (not b!2853057) (not b!2853060) (not b!2853058) (not b!2853066))
(check-sat)
(get-model)

(declare-fun d!826196 () Bool)

(declare-fun lt!1013731 () Regex!8561)

(assert (=> d!826196 (validRegex!3431 lt!1013731)))

(declare-fun generalisedUnion!553 (List!34148) Regex!8561)

(declare-fun unfocusZipperList!66 (List!34149) List!34148)

(assert (=> d!826196 (= lt!1013731 (generalisedUnion!553 (unfocusZipperList!66 zl!222)))))

(assert (=> d!826196 (= (unfocusZipper!233 zl!222) lt!1013731)))

(declare-fun bs!520205 () Bool)

(assert (= bs!520205 d!826196))

(declare-fun m!3277889 () Bool)

(assert (=> bs!520205 m!3277889))

(declare-fun m!3277891 () Bool)

(assert (=> bs!520205 m!3277891))

(assert (=> bs!520205 m!3277891))

(declare-fun m!3277893 () Bool)

(assert (=> bs!520205 m!3277893))

(assert (=> b!2853061 d!826196))

(declare-fun d!826202 () Bool)

(declare-fun c!459878 () Bool)

(declare-fun isEmpty!18591 (List!34150) Bool)

(assert (=> d!826202 (= c!459878 (isEmpty!18591 prefix!862))))

(declare-fun e!1807624 () Bool)

(assert (=> d!826202 (= (prefixMatch!869 r!5723 prefix!862) e!1807624)))

(declare-fun b!2853102 () Bool)

(declare-fun lostCause!738 (Regex!8561) Bool)

(assert (=> b!2853102 (= e!1807624 (not (lostCause!738 r!5723)))))

(declare-fun b!2853103 () Bool)

(declare-fun derivativeStep!2263 (Regex!8561 C!17304) Regex!8561)

(declare-fun head!6268 (List!34150) C!17304)

(declare-fun tail!4493 (List!34150) List!34150)

(assert (=> b!2853103 (= e!1807624 (prefixMatch!869 (derivativeStep!2263 r!5723 (head!6268 prefix!862)) (tail!4493 prefix!862)))))

(assert (= (and d!826202 c!459878) b!2853102))

(assert (= (and d!826202 (not c!459878)) b!2853103))

(declare-fun m!3277899 () Bool)

(assert (=> d!826202 m!3277899))

(declare-fun m!3277901 () Bool)

(assert (=> b!2853102 m!3277901))

(declare-fun m!3277903 () Bool)

(assert (=> b!2853103 m!3277903))

(assert (=> b!2853103 m!3277903))

(declare-fun m!3277905 () Bool)

(assert (=> b!2853103 m!3277905))

(declare-fun m!3277907 () Bool)

(assert (=> b!2853103 m!3277907))

(assert (=> b!2853103 m!3277905))

(assert (=> b!2853103 m!3277907))

(declare-fun m!3277909 () Bool)

(assert (=> b!2853103 m!3277909))

(assert (=> b!2853056 d!826202))

(declare-fun d!826208 () Bool)

(declare-fun c!459883 () Bool)

(assert (=> d!826208 (= c!459883 (isEmpty!18591 prefix!862))))

(declare-fun e!1807629 () Bool)

(assert (=> d!826208 (= (prefixMatchZipper!293 z!809 prefix!862) e!1807629)))

(declare-fun b!2853112 () Bool)

(declare-fun lostCauseZipper!537 ((InoxSet Context!5142)) Bool)

(assert (=> b!2853112 (= e!1807629 (not (lostCauseZipper!537 z!809)))))

(declare-fun b!2853113 () Bool)

(declare-fun derivationStepZipper!421 ((InoxSet Context!5142) C!17304) (InoxSet Context!5142))

(assert (=> b!2853113 (= e!1807629 (prefixMatchZipper!293 (derivationStepZipper!421 z!809 (head!6268 prefix!862)) (tail!4493 prefix!862)))))

(assert (= (and d!826208 c!459883) b!2853112))

(assert (= (and d!826208 (not c!459883)) b!2853113))

(assert (=> d!826208 m!3277899))

(declare-fun m!3277917 () Bool)

(assert (=> b!2853112 m!3277917))

(assert (=> b!2853113 m!3277903))

(assert (=> b!2853113 m!3277903))

(declare-fun m!3277919 () Bool)

(assert (=> b!2853113 m!3277919))

(assert (=> b!2853113 m!3277907))

(assert (=> b!2853113 m!3277919))

(assert (=> b!2853113 m!3277907))

(declare-fun m!3277921 () Bool)

(assert (=> b!2853113 m!3277921))

(assert (=> b!2853070 d!826208))

(assert (=> b!2853064 d!826208))

(declare-fun d!826214 () Bool)

(declare-fun lambda!104997 () Int)

(declare-fun forall!6962 (List!34148 Int) Bool)

(assert (=> d!826214 (= (inv!46039 setElem!25236) (forall!6962 (exprs!3071 setElem!25236) lambda!104997))))

(declare-fun bs!520212 () Bool)

(assert (= bs!520212 d!826214))

(declare-fun m!3277931 () Bool)

(assert (=> bs!520212 m!3277931))

(assert (=> setNonEmpty!25236 d!826214))

(declare-fun d!826218 () Bool)

(declare-fun choose!16788 (Int) Bool)

(assert (=> d!826218 (= (Exists!1283 lambda!104987) (choose!16788 lambda!104987))))

(declare-fun bs!520213 () Bool)

(assert (= bs!520213 d!826218))

(declare-fun m!3277933 () Bool)

(assert (=> bs!520213 m!3277933))

(assert (=> b!2853060 d!826218))

(declare-fun bs!520214 () Bool)

(declare-fun d!826220 () Bool)

(assert (= bs!520214 (and d!826220 b!2853060)))

(declare-fun lambda!105000 () Int)

(assert (=> bs!520214 (= lambda!105000 lambda!104987)))

(assert (=> d!826220 true))

(assert (=> d!826220 true))

(assert (=> d!826220 (Exists!1283 lambda!105000)))

(declare-fun lt!1013742 () Unit!47685)

(declare-fun choose!16789 (Regex!8561 List!34150) Unit!47685)

(assert (=> d!826220 (= lt!1013742 (choose!16789 r!5723 prefix!862))))

(assert (=> d!826220 (validRegex!3431 r!5723)))

(assert (=> d!826220 (= (lemmaPrefixMatchThenExistsStringThatMatches!331 r!5723 prefix!862) lt!1013742)))

(declare-fun bs!520215 () Bool)

(assert (= bs!520215 d!826220))

(declare-fun m!3277935 () Bool)

(assert (=> bs!520215 m!3277935))

(declare-fun m!3277937 () Bool)

(assert (=> bs!520215 m!3277937))

(assert (=> bs!520215 m!3277831))

(assert (=> b!2853060 d!826220))

(declare-fun d!826222 () Bool)

(declare-fun e!1807649 () Bool)

(assert (=> d!826222 e!1807649))

(declare-fun res!1186016 () Bool)

(assert (=> d!826222 (=> (not res!1186016) (not e!1807649))))

(declare-fun lt!1013745 () List!34149)

(declare-fun noDuplicate!565 (List!34149) Bool)

(assert (=> d!826222 (= res!1186016 (noDuplicate!565 lt!1013745))))

(declare-fun choose!16790 ((InoxSet Context!5142)) List!34149)

(assert (=> d!826222 (= lt!1013745 (choose!16790 z!809))))

(assert (=> d!826222 (= (toList!1974 z!809) lt!1013745)))

(declare-fun b!2853148 () Bool)

(declare-fun content!4665 (List!34149) (InoxSet Context!5142))

(assert (=> b!2853148 (= e!1807649 (= (content!4665 lt!1013745) z!809))))

(assert (= (and d!826222 res!1186016) b!2853148))

(declare-fun m!3277939 () Bool)

(assert (=> d!826222 m!3277939))

(declare-fun m!3277941 () Bool)

(assert (=> d!826222 m!3277941))

(declare-fun m!3277943 () Bool)

(assert (=> b!2853148 m!3277943))

(assert (=> b!2853055 d!826222))

(declare-fun bm!183749 () Bool)

(declare-fun call!183756 () Bool)

(declare-fun c!459899 () Bool)

(assert (=> bm!183749 (= call!183756 (validRegex!3431 (ite c!459899 (regOne!17635 r!5723) (regOne!17634 r!5723))))))

(declare-fun b!2853182 () Bool)

(declare-fun e!1807675 () Bool)

(declare-fun call!183755 () Bool)

(assert (=> b!2853182 (= e!1807675 call!183755)))

(declare-fun b!2853183 () Bool)

(declare-fun e!1807673 () Bool)

(declare-fun e!1807677 () Bool)

(assert (=> b!2853183 (= e!1807673 e!1807677)))

(assert (=> b!2853183 (= c!459899 ((_ is Union!8561) r!5723))))

(declare-fun b!2853184 () Bool)

(declare-fun e!1807676 () Bool)

(declare-fun call!183754 () Bool)

(assert (=> b!2853184 (= e!1807676 call!183754)))

(declare-fun b!2853185 () Bool)

(declare-fun e!1807672 () Bool)

(assert (=> b!2853185 (= e!1807672 e!1807675)))

(declare-fun res!1186037 () Bool)

(assert (=> b!2853185 (=> (not res!1186037) (not e!1807675))))

(assert (=> b!2853185 (= res!1186037 call!183756)))

(declare-fun b!2853186 () Bool)

(assert (=> b!2853186 (= e!1807673 e!1807676)))

(declare-fun res!1186039 () Bool)

(declare-fun nullable!2640 (Regex!8561) Bool)

(assert (=> b!2853186 (= res!1186039 (not (nullable!2640 (reg!8890 r!5723))))))

(assert (=> b!2853186 (=> (not res!1186039) (not e!1807676))))

(declare-fun c!459898 () Bool)

(declare-fun bm!183750 () Bool)

(assert (=> bm!183750 (= call!183754 (validRegex!3431 (ite c!459898 (reg!8890 r!5723) (ite c!459899 (regTwo!17635 r!5723) (regTwo!17634 r!5723)))))))

(declare-fun b!2853187 () Bool)

(declare-fun res!1186036 () Bool)

(assert (=> b!2853187 (=> res!1186036 e!1807672)))

(assert (=> b!2853187 (= res!1186036 (not ((_ is Concat!13882) r!5723)))))

(assert (=> b!2853187 (= e!1807677 e!1807672)))

(declare-fun bm!183751 () Bool)

(assert (=> bm!183751 (= call!183755 call!183754)))

(declare-fun d!826224 () Bool)

(declare-fun res!1186035 () Bool)

(declare-fun e!1807674 () Bool)

(assert (=> d!826224 (=> res!1186035 e!1807674)))

(assert (=> d!826224 (= res!1186035 ((_ is ElementMatch!8561) r!5723))))

(assert (=> d!826224 (= (validRegex!3431 r!5723) e!1807674)))

(declare-fun b!2853181 () Bool)

(declare-fun res!1186038 () Bool)

(declare-fun e!1807671 () Bool)

(assert (=> b!2853181 (=> (not res!1186038) (not e!1807671))))

(assert (=> b!2853181 (= res!1186038 call!183756)))

(assert (=> b!2853181 (= e!1807677 e!1807671)))

(declare-fun b!2853188 () Bool)

(assert (=> b!2853188 (= e!1807674 e!1807673)))

(assert (=> b!2853188 (= c!459898 ((_ is Star!8561) r!5723))))

(declare-fun b!2853189 () Bool)

(assert (=> b!2853189 (= e!1807671 call!183755)))

(assert (= (and d!826224 (not res!1186035)) b!2853188))

(assert (= (and b!2853188 c!459898) b!2853186))

(assert (= (and b!2853188 (not c!459898)) b!2853183))

(assert (= (and b!2853186 res!1186039) b!2853184))

(assert (= (and b!2853183 c!459899) b!2853181))

(assert (= (and b!2853183 (not c!459899)) b!2853187))

(assert (= (and b!2853181 res!1186038) b!2853189))

(assert (= (and b!2853187 (not res!1186036)) b!2853185))

(assert (= (and b!2853185 res!1186037) b!2853182))

(assert (= (or b!2853181 b!2853185) bm!183749))

(assert (= (or b!2853189 b!2853182) bm!183751))

(assert (= (or b!2853184 bm!183751) bm!183750))

(declare-fun m!3277957 () Bool)

(assert (=> bm!183749 m!3277957))

(declare-fun m!3277959 () Bool)

(assert (=> b!2853186 m!3277959))

(declare-fun m!3277961 () Bool)

(assert (=> bm!183750 m!3277961))

(assert (=> start!277854 d!826224))

(declare-fun b!2853279 () Bool)

(declare-fun res!1186078 () Bool)

(declare-fun e!1807730 () Bool)

(assert (=> b!2853279 (=> (not res!1186078) (not e!1807730))))

(assert (=> b!2853279 (= res!1186078 (isEmpty!18591 (tail!4493 lt!1013717)))))

(declare-fun b!2853280 () Bool)

(declare-fun e!1807735 () Bool)

(assert (=> b!2853280 (= e!1807735 (not (= (head!6268 lt!1013717) (c!459872 r!5723))))))

(declare-fun b!2853281 () Bool)

(declare-fun e!1807736 () Bool)

(declare-fun e!1807732 () Bool)

(assert (=> b!2853281 (= e!1807736 e!1807732)))

(declare-fun c!459916 () Bool)

(assert (=> b!2853281 (= c!459916 ((_ is EmptyLang!8561) r!5723))))

(declare-fun b!2853283 () Bool)

(assert (=> b!2853283 (= e!1807730 (= (head!6268 lt!1013717) (c!459872 r!5723)))))

(declare-fun b!2853284 () Bool)

(declare-fun e!1807734 () Bool)

(assert (=> b!2853284 (= e!1807734 (nullable!2640 r!5723))))

(declare-fun b!2853285 () Bool)

(declare-fun res!1186073 () Bool)

(declare-fun e!1807733 () Bool)

(assert (=> b!2853285 (=> res!1186073 e!1807733)))

(assert (=> b!2853285 (= res!1186073 (not ((_ is ElementMatch!8561) r!5723)))))

(assert (=> b!2853285 (= e!1807732 e!1807733)))

(declare-fun bm!183763 () Bool)

(declare-fun call!183768 () Bool)

(assert (=> bm!183763 (= call!183768 (isEmpty!18591 lt!1013717))))

(declare-fun b!2853286 () Bool)

(declare-fun res!1186076 () Bool)

(assert (=> b!2853286 (=> res!1186076 e!1807735)))

(assert (=> b!2853286 (= res!1186076 (not (isEmpty!18591 (tail!4493 lt!1013717))))))

(declare-fun b!2853287 () Bool)

(declare-fun e!1807731 () Bool)

(assert (=> b!2853287 (= e!1807733 e!1807731)))

(declare-fun res!1186074 () Bool)

(assert (=> b!2853287 (=> (not res!1186074) (not e!1807731))))

(declare-fun lt!1013752 () Bool)

(assert (=> b!2853287 (= res!1186074 (not lt!1013752))))

(declare-fun d!826230 () Bool)

(assert (=> d!826230 e!1807736))

(declare-fun c!459915 () Bool)

(assert (=> d!826230 (= c!459915 ((_ is EmptyExpr!8561) r!5723))))

(assert (=> d!826230 (= lt!1013752 e!1807734)))

(declare-fun c!459917 () Bool)

(assert (=> d!826230 (= c!459917 (isEmpty!18591 lt!1013717))))

(assert (=> d!826230 (validRegex!3431 r!5723)))

(assert (=> d!826230 (= (matchR!3682 r!5723 lt!1013717) lt!1013752)))

(declare-fun b!2853282 () Bool)

(assert (=> b!2853282 (= e!1807732 (not lt!1013752))))

(declare-fun b!2853288 () Bool)

(assert (=> b!2853288 (= e!1807736 (= lt!1013752 call!183768))))

(declare-fun b!2853289 () Bool)

(declare-fun res!1186072 () Bool)

(assert (=> b!2853289 (=> (not res!1186072) (not e!1807730))))

(assert (=> b!2853289 (= res!1186072 (not call!183768))))

(declare-fun b!2853290 () Bool)

(declare-fun res!1186071 () Bool)

(assert (=> b!2853290 (=> res!1186071 e!1807733)))

(assert (=> b!2853290 (= res!1186071 e!1807730)))

(declare-fun res!1186075 () Bool)

(assert (=> b!2853290 (=> (not res!1186075) (not e!1807730))))

(assert (=> b!2853290 (= res!1186075 lt!1013752)))

(declare-fun b!2853291 () Bool)

(assert (=> b!2853291 (= e!1807734 (matchR!3682 (derivativeStep!2263 r!5723 (head!6268 lt!1013717)) (tail!4493 lt!1013717)))))

(declare-fun b!2853292 () Bool)

(assert (=> b!2853292 (= e!1807731 e!1807735)))

(declare-fun res!1186077 () Bool)

(assert (=> b!2853292 (=> res!1186077 e!1807735)))

(assert (=> b!2853292 (= res!1186077 call!183768)))

(assert (= (and d!826230 c!459917) b!2853284))

(assert (= (and d!826230 (not c!459917)) b!2853291))

(assert (= (and d!826230 c!459915) b!2853288))

(assert (= (and d!826230 (not c!459915)) b!2853281))

(assert (= (and b!2853281 c!459916) b!2853282))

(assert (= (and b!2853281 (not c!459916)) b!2853285))

(assert (= (and b!2853285 (not res!1186073)) b!2853290))

(assert (= (and b!2853290 res!1186075) b!2853289))

(assert (= (and b!2853289 res!1186072) b!2853279))

(assert (= (and b!2853279 res!1186078) b!2853283))

(assert (= (and b!2853290 (not res!1186071)) b!2853287))

(assert (= (and b!2853287 res!1186074) b!2853292))

(assert (= (and b!2853292 (not res!1186077)) b!2853286))

(assert (= (and b!2853286 (not res!1186076)) b!2853280))

(assert (= (or b!2853288 b!2853292 b!2853289) bm!183763))

(declare-fun m!3277979 () Bool)

(assert (=> b!2853280 m!3277979))

(declare-fun m!3277981 () Bool)

(assert (=> b!2853284 m!3277981))

(declare-fun m!3277983 () Bool)

(assert (=> d!826230 m!3277983))

(assert (=> d!826230 m!3277831))

(assert (=> b!2853283 m!3277979))

(assert (=> b!2853291 m!3277979))

(assert (=> b!2853291 m!3277979))

(declare-fun m!3277985 () Bool)

(assert (=> b!2853291 m!3277985))

(declare-fun m!3277987 () Bool)

(assert (=> b!2853291 m!3277987))

(assert (=> b!2853291 m!3277985))

(assert (=> b!2853291 m!3277987))

(declare-fun m!3277989 () Bool)

(assert (=> b!2853291 m!3277989))

(assert (=> b!2853286 m!3277987))

(assert (=> b!2853286 m!3277987))

(declare-fun m!3277991 () Bool)

(assert (=> b!2853286 m!3277991))

(assert (=> b!2853279 m!3277987))

(assert (=> b!2853279 m!3277987))

(assert (=> b!2853279 m!3277991))

(assert (=> bm!183763 m!3277983))

(assert (=> b!2853058 d!826230))

(declare-fun d!826234 () Bool)

(declare-fun lt!1013755 () List!34150)

(declare-fun dynLambda!14229 (Int List!34150) Bool)

(assert (=> d!826234 (dynLambda!14229 lambda!104987 lt!1013755)))

(declare-fun choose!16792 (Int) List!34150)

(assert (=> d!826234 (= lt!1013755 (choose!16792 lambda!104987))))

(assert (=> d!826234 (Exists!1283 lambda!104987)))

(assert (=> d!826234 (= (pickWitness!300 lambda!104987) lt!1013755)))

(declare-fun b_lambda!85679 () Bool)

(assert (=> (not b_lambda!85679) (not d!826234)))

(declare-fun bs!520218 () Bool)

(assert (= bs!520218 d!826234))

(declare-fun m!3277997 () Bool)

(assert (=> bs!520218 m!3277997))

(declare-fun m!3277999 () Bool)

(assert (=> bs!520218 m!3277999))

(assert (=> bs!520218 m!3277841))

(assert (=> b!2853058 d!826234))

(declare-fun bs!520219 () Bool)

(declare-fun d!826238 () Bool)

(assert (= bs!520219 (and d!826238 d!826214)))

(declare-fun lambda!105001 () Int)

(assert (=> bs!520219 (= lambda!105001 lambda!104997)))

(assert (=> d!826238 (= (inv!46039 (h!39445 zl!222)) (forall!6962 (exprs!3071 (h!39445 zl!222)) lambda!105001))))

(declare-fun bs!520220 () Bool)

(assert (= bs!520220 d!826238))

(declare-fun m!3278001 () Bool)

(assert (=> bs!520220 m!3278001))

(assert (=> b!2853067 d!826238))

(declare-fun b!2853330 () Bool)

(declare-fun e!1807753 () Bool)

(assert (=> b!2853330 (= e!1807753 (isPrefix!2661 (tail!4493 prefix!862) (tail!4493 lt!1013717)))))

(declare-fun b!2853328 () Bool)

(declare-fun e!1807755 () Bool)

(assert (=> b!2853328 (= e!1807755 e!1807753)))

(declare-fun res!1186091 () Bool)

(assert (=> b!2853328 (=> (not res!1186091) (not e!1807753))))

(assert (=> b!2853328 (= res!1186091 (not ((_ is Nil!34026) lt!1013717)))))

(declare-fun b!2853329 () Bool)

(declare-fun res!1186089 () Bool)

(assert (=> b!2853329 (=> (not res!1186089) (not e!1807753))))

(assert (=> b!2853329 (= res!1186089 (= (head!6268 prefix!862) (head!6268 lt!1013717)))))

(declare-fun d!826240 () Bool)

(declare-fun e!1807754 () Bool)

(assert (=> d!826240 e!1807754))

(declare-fun res!1186088 () Bool)

(assert (=> d!826240 (=> res!1186088 e!1807754)))

(declare-fun lt!1013758 () Bool)

(assert (=> d!826240 (= res!1186088 (not lt!1013758))))

(assert (=> d!826240 (= lt!1013758 e!1807755)))

(declare-fun res!1186090 () Bool)

(assert (=> d!826240 (=> res!1186090 e!1807755)))

(assert (=> d!826240 (= res!1186090 ((_ is Nil!34026) prefix!862))))

(assert (=> d!826240 (= (isPrefix!2661 prefix!862 lt!1013717) lt!1013758)))

(declare-fun b!2853331 () Bool)

(declare-fun size!26270 (List!34150) Int)

(assert (=> b!2853331 (= e!1807754 (>= (size!26270 lt!1013717) (size!26270 prefix!862)))))

(assert (= (and d!826240 (not res!1186090)) b!2853328))

(assert (= (and b!2853328 res!1186091) b!2853329))

(assert (= (and b!2853329 res!1186089) b!2853330))

(assert (= (and d!826240 (not res!1186088)) b!2853331))

(assert (=> b!2853330 m!3277907))

(assert (=> b!2853330 m!3277987))

(assert (=> b!2853330 m!3277907))

(assert (=> b!2853330 m!3277987))

(declare-fun m!3278003 () Bool)

(assert (=> b!2853330 m!3278003))

(assert (=> b!2853329 m!3277903))

(assert (=> b!2853329 m!3277979))

(declare-fun m!3278005 () Bool)

(assert (=> b!2853331 m!3278005))

(declare-fun m!3278007 () Bool)

(assert (=> b!2853331 m!3278007))

(assert (=> b!2853062 d!826240))

(declare-fun d!826242 () Bool)

(declare-fun c!459920 () Bool)

(assert (=> d!826242 (= c!459920 (isEmpty!18591 lt!1013717))))

(declare-fun e!1807758 () Bool)

(assert (=> d!826242 (= (matchZipper!419 z!809 lt!1013717) e!1807758)))

(declare-fun b!2853336 () Bool)

(declare-fun nullableZipper!683 ((InoxSet Context!5142)) Bool)

(assert (=> b!2853336 (= e!1807758 (nullableZipper!683 z!809))))

(declare-fun b!2853337 () Bool)

(assert (=> b!2853337 (= e!1807758 (matchZipper!419 (derivationStepZipper!421 z!809 (head!6268 lt!1013717)) (tail!4493 lt!1013717)))))

(assert (= (and d!826242 c!459920) b!2853336))

(assert (= (and d!826242 (not c!459920)) b!2853337))

(assert (=> d!826242 m!3277983))

(declare-fun m!3278009 () Bool)

(assert (=> b!2853336 m!3278009))

(assert (=> b!2853337 m!3277979))

(assert (=> b!2853337 m!3277979))

(declare-fun m!3278011 () Bool)

(assert (=> b!2853337 m!3278011))

(assert (=> b!2853337 m!3277987))

(assert (=> b!2853337 m!3278011))

(assert (=> b!2853337 m!3277987))

(declare-fun m!3278013 () Bool)

(assert (=> b!2853337 m!3278013))

(assert (=> b!2853062 d!826242))

(declare-fun d!826244 () Bool)

(assert (=> d!826244 (= (matchR!3682 r!5723 lt!1013717) (matchZipper!419 z!809 lt!1013717))))

(declare-fun lt!1013761 () Unit!47685)

(declare-fun choose!16793 ((InoxSet Context!5142) List!34149 Regex!8561 List!34150) Unit!47685)

(assert (=> d!826244 (= lt!1013761 (choose!16793 z!809 zl!222 r!5723 lt!1013717))))

(assert (=> d!826244 (validRegex!3431 r!5723)))

(assert (=> d!826244 (= (theoremZipperRegexEquiv!105 z!809 zl!222 r!5723 lt!1013717) lt!1013761)))

(declare-fun bs!520221 () Bool)

(assert (= bs!520221 d!826244))

(assert (=> bs!520221 m!3277845))

(assert (=> bs!520221 m!3277835))

(declare-fun m!3278015 () Bool)

(assert (=> bs!520221 m!3278015))

(assert (=> bs!520221 m!3277831))

(assert (=> b!2853062 d!826244))

(declare-fun b!2853342 () Bool)

(declare-fun e!1807761 () Bool)

(declare-fun tp!917095 () Bool)

(declare-fun tp!917096 () Bool)

(assert (=> b!2853342 (= e!1807761 (and tp!917095 tp!917096))))

(assert (=> b!2853057 (= tp!917025 e!1807761)))

(assert (= (and b!2853057 ((_ is Cons!34024) (exprs!3071 setElem!25236))) b!2853342))

(declare-fun condSetEmpty!25242 () Bool)

(assert (=> setNonEmpty!25236 (= condSetEmpty!25242 (= setRest!25236 ((as const (Array Context!5142 Bool)) false)))))

(declare-fun setRes!25242 () Bool)

(assert (=> setNonEmpty!25236 (= tp!917026 setRes!25242)))

(declare-fun setIsEmpty!25242 () Bool)

(assert (=> setIsEmpty!25242 setRes!25242))

(declare-fun e!1807764 () Bool)

(declare-fun setNonEmpty!25242 () Bool)

(declare-fun setElem!25242 () Context!5142)

(declare-fun tp!917102 () Bool)

(assert (=> setNonEmpty!25242 (= setRes!25242 (and tp!917102 (inv!46039 setElem!25242) e!1807764))))

(declare-fun setRest!25242 () (InoxSet Context!5142))

(assert (=> setNonEmpty!25242 (= setRest!25236 ((_ map or) (store ((as const (Array Context!5142 Bool)) false) setElem!25242 true) setRest!25242))))

(declare-fun b!2853347 () Bool)

(declare-fun tp!917101 () Bool)

(assert (=> b!2853347 (= e!1807764 tp!917101)))

(assert (= (and setNonEmpty!25236 condSetEmpty!25242) setIsEmpty!25242))

(assert (= (and setNonEmpty!25236 (not condSetEmpty!25242)) setNonEmpty!25242))

(assert (= setNonEmpty!25242 b!2853347))

(declare-fun m!3278017 () Bool)

(assert (=> setNonEmpty!25242 m!3278017))

(declare-fun b!2853360 () Bool)

(declare-fun e!1807767 () Bool)

(declare-fun tp!917116 () Bool)

(assert (=> b!2853360 (= e!1807767 tp!917116)))

(declare-fun b!2853361 () Bool)

(declare-fun tp!917117 () Bool)

(declare-fun tp!917114 () Bool)

(assert (=> b!2853361 (= e!1807767 (and tp!917117 tp!917114))))

(assert (=> b!2853054 (= tp!917023 e!1807767)))

(declare-fun b!2853359 () Bool)

(declare-fun tp!917115 () Bool)

(declare-fun tp!917113 () Bool)

(assert (=> b!2853359 (= e!1807767 (and tp!917115 tp!917113))))

(declare-fun b!2853358 () Bool)

(assert (=> b!2853358 (= e!1807767 tp_is_empty!14859)))

(assert (= (and b!2853054 ((_ is ElementMatch!8561) (regOne!17635 r!5723))) b!2853358))

(assert (= (and b!2853054 ((_ is Concat!13882) (regOne!17635 r!5723))) b!2853359))

(assert (= (and b!2853054 ((_ is Star!8561) (regOne!17635 r!5723))) b!2853360))

(assert (= (and b!2853054 ((_ is Union!8561) (regOne!17635 r!5723))) b!2853361))

(declare-fun b!2853364 () Bool)

(declare-fun e!1807768 () Bool)

(declare-fun tp!917121 () Bool)

(assert (=> b!2853364 (= e!1807768 tp!917121)))

(declare-fun b!2853365 () Bool)

(declare-fun tp!917122 () Bool)

(declare-fun tp!917119 () Bool)

(assert (=> b!2853365 (= e!1807768 (and tp!917122 tp!917119))))

(assert (=> b!2853054 (= tp!917030 e!1807768)))

(declare-fun b!2853363 () Bool)

(declare-fun tp!917120 () Bool)

(declare-fun tp!917118 () Bool)

(assert (=> b!2853363 (= e!1807768 (and tp!917120 tp!917118))))

(declare-fun b!2853362 () Bool)

(assert (=> b!2853362 (= e!1807768 tp_is_empty!14859)))

(assert (= (and b!2853054 ((_ is ElementMatch!8561) (regTwo!17635 r!5723))) b!2853362))

(assert (= (and b!2853054 ((_ is Concat!13882) (regTwo!17635 r!5723))) b!2853363))

(assert (= (and b!2853054 ((_ is Star!8561) (regTwo!17635 r!5723))) b!2853364))

(assert (= (and b!2853054 ((_ is Union!8561) (regTwo!17635 r!5723))) b!2853365))

(declare-fun b!2853368 () Bool)

(declare-fun e!1807769 () Bool)

(declare-fun tp!917126 () Bool)

(assert (=> b!2853368 (= e!1807769 tp!917126)))

(declare-fun b!2853369 () Bool)

(declare-fun tp!917127 () Bool)

(declare-fun tp!917124 () Bool)

(assert (=> b!2853369 (= e!1807769 (and tp!917127 tp!917124))))

(assert (=> b!2853068 (= tp!917024 e!1807769)))

(declare-fun b!2853367 () Bool)

(declare-fun tp!917125 () Bool)

(declare-fun tp!917123 () Bool)

(assert (=> b!2853367 (= e!1807769 (and tp!917125 tp!917123))))

(declare-fun b!2853366 () Bool)

(assert (=> b!2853366 (= e!1807769 tp_is_empty!14859)))

(assert (= (and b!2853068 ((_ is ElementMatch!8561) (reg!8890 r!5723))) b!2853366))

(assert (= (and b!2853068 ((_ is Concat!13882) (reg!8890 r!5723))) b!2853367))

(assert (= (and b!2853068 ((_ is Star!8561) (reg!8890 r!5723))) b!2853368))

(assert (= (and b!2853068 ((_ is Union!8561) (reg!8890 r!5723))) b!2853369))

(declare-fun b!2853374 () Bool)

(declare-fun e!1807772 () Bool)

(declare-fun tp!917130 () Bool)

(assert (=> b!2853374 (= e!1807772 (and tp_is_empty!14859 tp!917130))))

(assert (=> b!2853063 (= tp!917029 e!1807772)))

(assert (= (and b!2853063 ((_ is Cons!34026) (t!233181 prefix!862))) b!2853374))

(declare-fun b!2853377 () Bool)

(declare-fun e!1807773 () Bool)

(declare-fun tp!917134 () Bool)

(assert (=> b!2853377 (= e!1807773 tp!917134)))

(declare-fun b!2853378 () Bool)

(declare-fun tp!917135 () Bool)

(declare-fun tp!917132 () Bool)

(assert (=> b!2853378 (= e!1807773 (and tp!917135 tp!917132))))

(assert (=> b!2853059 (= tp!917031 e!1807773)))

(declare-fun b!2853376 () Bool)

(declare-fun tp!917133 () Bool)

(declare-fun tp!917131 () Bool)

(assert (=> b!2853376 (= e!1807773 (and tp!917133 tp!917131))))

(declare-fun b!2853375 () Bool)

(assert (=> b!2853375 (= e!1807773 tp_is_empty!14859)))

(assert (= (and b!2853059 ((_ is ElementMatch!8561) (regOne!17634 r!5723))) b!2853375))

(assert (= (and b!2853059 ((_ is Concat!13882) (regOne!17634 r!5723))) b!2853376))

(assert (= (and b!2853059 ((_ is Star!8561) (regOne!17634 r!5723))) b!2853377))

(assert (= (and b!2853059 ((_ is Union!8561) (regOne!17634 r!5723))) b!2853378))

(declare-fun b!2853381 () Bool)

(declare-fun e!1807774 () Bool)

(declare-fun tp!917139 () Bool)

(assert (=> b!2853381 (= e!1807774 tp!917139)))

(declare-fun b!2853382 () Bool)

(declare-fun tp!917140 () Bool)

(declare-fun tp!917137 () Bool)

(assert (=> b!2853382 (= e!1807774 (and tp!917140 tp!917137))))

(assert (=> b!2853059 (= tp!917028 e!1807774)))

(declare-fun b!2853380 () Bool)

(declare-fun tp!917138 () Bool)

(declare-fun tp!917136 () Bool)

(assert (=> b!2853380 (= e!1807774 (and tp!917138 tp!917136))))

(declare-fun b!2853379 () Bool)

(assert (=> b!2853379 (= e!1807774 tp_is_empty!14859)))

(assert (= (and b!2853059 ((_ is ElementMatch!8561) (regTwo!17634 r!5723))) b!2853379))

(assert (= (and b!2853059 ((_ is Concat!13882) (regTwo!17634 r!5723))) b!2853380))

(assert (= (and b!2853059 ((_ is Star!8561) (regTwo!17634 r!5723))) b!2853381))

(assert (= (and b!2853059 ((_ is Union!8561) (regTwo!17634 r!5723))) b!2853382))

(declare-fun b!2853390 () Bool)

(declare-fun e!1807780 () Bool)

(declare-fun tp!917145 () Bool)

(assert (=> b!2853390 (= e!1807780 tp!917145)))

(declare-fun e!1807779 () Bool)

(declare-fun b!2853389 () Bool)

(declare-fun tp!917146 () Bool)

(assert (=> b!2853389 (= e!1807779 (and (inv!46039 (h!39445 (t!233180 zl!222))) e!1807780 tp!917146))))

(assert (=> b!2853067 (= tp!917027 e!1807779)))

(assert (= b!2853389 b!2853390))

(assert (= (and b!2853067 ((_ is Cons!34025) (t!233180 zl!222))) b!2853389))

(declare-fun m!3278019 () Bool)

(assert (=> b!2853389 m!3278019))

(declare-fun b!2853391 () Bool)

(declare-fun e!1807781 () Bool)

(declare-fun tp!917147 () Bool)

(declare-fun tp!917148 () Bool)

(assert (=> b!2853391 (= e!1807781 (and tp!917147 tp!917148))))

(assert (=> b!2853066 (= tp!917032 e!1807781)))

(assert (= (and b!2853066 ((_ is Cons!34024) (exprs!3071 (h!39445 zl!222)))) b!2853391))

(declare-fun b_lambda!85681 () Bool)

(assert (= b_lambda!85679 (or b!2853060 b_lambda!85681)))

(declare-fun bs!520222 () Bool)

(declare-fun d!826246 () Bool)

(assert (= bs!520222 (and d!826246 b!2853060)))

(declare-fun res!1186092 () Bool)

(declare-fun e!1807782 () Bool)

(assert (=> bs!520222 (=> (not res!1186092) (not e!1807782))))

(assert (=> bs!520222 (= res!1186092 (matchR!3682 r!5723 lt!1013755))))

(assert (=> bs!520222 (= (dynLambda!14229 lambda!104987 lt!1013755) e!1807782)))

(declare-fun b!2853392 () Bool)

(assert (=> b!2853392 (= e!1807782 (isPrefix!2661 prefix!862 lt!1013755))))

(assert (= (and bs!520222 res!1186092) b!2853392))

(declare-fun m!3278021 () Bool)

(assert (=> bs!520222 m!3278021))

(declare-fun m!3278023 () Bool)

(assert (=> b!2853392 m!3278023))

(assert (=> d!826234 d!826246))

(check-sat (not b!2853347) (not b!2853331) (not d!826220) (not b!2853382) (not b!2853392) (not b!2853381) (not d!826238) (not b!2853364) (not d!826208) (not b!2853291) (not d!826222) (not b!2853365) (not bs!520222) (not b!2853330) (not b!2853390) (not d!826196) (not b!2853102) (not b!2853367) (not b!2853361) (not d!826234) (not d!826242) (not bm!183749) (not d!826218) (not b!2853279) (not b!2853329) (not b!2853337) (not b!2853380) (not b!2853389) (not d!826244) (not b!2853368) (not b!2853363) (not b!2853391) (not b!2853359) (not setNonEmpty!25242) (not b!2853186) (not d!826214) (not b!2853377) (not b!2853342) (not b!2853112) (not b!2853286) (not b!2853103) (not b!2853360) tp_is_empty!14859 (not b!2853376) (not b!2853113) (not b!2853374) (not b!2853283) (not bm!183763) (not b!2853148) (not d!826202) (not b!2853369) (not bm!183750) (not b!2853284) (not b!2853336) (not d!826230) (not b!2853280) (not b_lambda!85681) (not b!2853378))
(check-sat)
