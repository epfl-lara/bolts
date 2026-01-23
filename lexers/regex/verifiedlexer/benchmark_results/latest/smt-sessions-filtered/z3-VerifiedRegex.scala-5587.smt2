; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280012 () Bool)

(assert start!280012)

(declare-fun b!2868817 () Bool)

(declare-fun e!1815946 () Bool)

(declare-fun e!1815945 () Bool)

(assert (=> b!2868817 (= e!1815946 e!1815945)))

(declare-fun res!1190615 () Bool)

(assert (=> b!2868817 (=> (not res!1190615) (not e!1815945))))

(declare-datatypes ((C!17640 0))(
  ( (C!17641 (val!10854 Int)) )
))
(declare-datatypes ((Regex!8729 0))(
  ( (ElementMatch!8729 (c!463662 C!17640)) (Concat!14050 (regOne!17970 Regex!8729) (regTwo!17970 Regex!8729)) (EmptyExpr!8729) (Star!8729 (reg!9058 Regex!8729)) (EmptyLang!8729) (Union!8729 (regOne!17971 Regex!8729) (regTwo!17971 Regex!8729)) )
))
(declare-datatypes ((List!34485 0))(
  ( (Nil!34361) (Cons!34361 (h!39781 Regex!8729) (t!233528 List!34485)) )
))
(declare-datatypes ((Context!5378 0))(
  ( (Context!5379 (exprs!3189 List!34485)) )
))
(declare-fun lt!1017548 () Context!5378)

(get-info :version)

(declare-datatypes ((List!34486 0))(
  ( (Nil!34362) (Cons!34362 (h!39782 C!17640) (t!233529 List!34486)) )
))
(declare-datatypes ((Option!6404 0))(
  ( (None!6403) (Some!6403 (v!34525 List!34486)) )
))
(declare-fun getLanguageWitness!409 (Context!5378) Option!6404)

(assert (=> b!2868817 (= res!1190615 ((_ is Some!6403) (getLanguageWitness!409 lt!1017548)))))

(declare-fun c!7184 () Context!5378)

(assert (=> b!2868817 (= lt!1017548 (Context!5379 (t!233528 (exprs!3189 c!7184))))))

(declare-fun b!2868818 () Bool)

(declare-fun res!1190616 () Bool)

(declare-fun e!1815944 () Bool)

(assert (=> b!2868818 (=> (not res!1190616) (not e!1815944))))

(assert (=> b!2868818 (= res!1190616 ((_ is Cons!34361) (exprs!3189 c!7184)))))

(declare-fun b!2868819 () Bool)

(declare-fun inv!46409 (Context!5378) Bool)

(assert (=> b!2868819 (= e!1815945 (not (inv!46409 lt!1017548)))))

(declare-fun lt!1017549 () Option!6404)

(declare-fun matchR!3729 (Regex!8729 List!34486) Bool)

(declare-fun get!10320 (Option!6404) List!34486)

(assert (=> b!2868819 (matchR!3729 (h!39781 (exprs!3189 c!7184)) (get!10320 lt!1017549))))

(declare-datatypes ((Unit!47959 0))(
  ( (Unit!47960) )
))
(declare-fun lt!1017547 () Unit!47959)

(declare-fun lemmaGetWitnessMatches!36 (Regex!8729) Unit!47959)

(assert (=> b!2868819 (= lt!1017547 (lemmaGetWitnessMatches!36 (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2868820 () Bool)

(assert (=> b!2868820 (= e!1815944 e!1815946)))

(declare-fun res!1190617 () Bool)

(assert (=> b!2868820 (=> (not res!1190617) (not e!1815946))))

(assert (=> b!2868820 (= res!1190617 ((_ is Some!6403) lt!1017549))))

(declare-fun getLanguageWitness!410 (Regex!8729) Option!6404)

(assert (=> b!2868820 (= lt!1017549 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))))

(declare-fun res!1190614 () Bool)

(assert (=> start!280012 (=> (not res!1190614) (not e!1815944))))

(declare-fun lostCause!821 (Context!5378) Bool)

(assert (=> start!280012 (= res!1190614 (not (lostCause!821 c!7184)))))

(assert (=> start!280012 e!1815944))

(declare-fun e!1815947 () Bool)

(assert (=> start!280012 (and (inv!46409 c!7184) e!1815947)))

(declare-fun b!2868821 () Bool)

(declare-fun tp!923232 () Bool)

(assert (=> b!2868821 (= e!1815947 tp!923232)))

(assert (= (and start!280012 res!1190614) b!2868818))

(assert (= (and b!2868818 res!1190616) b!2868820))

(assert (= (and b!2868820 res!1190617) b!2868817))

(assert (= (and b!2868817 res!1190615) b!2868819))

(assert (= start!280012 b!2868821))

(declare-fun m!3288239 () Bool)

(assert (=> b!2868817 m!3288239))

(declare-fun m!3288241 () Bool)

(assert (=> b!2868819 m!3288241))

(declare-fun m!3288243 () Bool)

(assert (=> b!2868819 m!3288243))

(assert (=> b!2868819 m!3288243))

(declare-fun m!3288245 () Bool)

(assert (=> b!2868819 m!3288245))

(declare-fun m!3288247 () Bool)

(assert (=> b!2868819 m!3288247))

(declare-fun m!3288249 () Bool)

(assert (=> b!2868820 m!3288249))

(declare-fun m!3288251 () Bool)

(assert (=> start!280012 m!3288251))

(declare-fun m!3288253 () Bool)

(assert (=> start!280012 m!3288253))

(check-sat (not b!2868819) (not b!2868821) (not b!2868820) (not b!2868817) (not start!280012))
(check-sat)
(get-model)

(declare-fun d!829186 () Bool)

(declare-fun lambda!106985 () Int)

(declare-fun forall!7074 (List!34485 Int) Bool)

(assert (=> d!829186 (= (inv!46409 lt!1017548) (forall!7074 (exprs!3189 lt!1017548) lambda!106985))))

(declare-fun bs!521828 () Bool)

(assert (= bs!521828 d!829186))

(declare-fun m!3288299 () Bool)

(assert (=> bs!521828 m!3288299))

(assert (=> b!2868819 d!829186))

(declare-fun b!2868963 () Bool)

(declare-fun e!1816025 () Bool)

(declare-fun e!1816020 () Bool)

(assert (=> b!2868963 (= e!1816025 e!1816020)))

(declare-fun res!1190664 () Bool)

(assert (=> b!2868963 (=> (not res!1190664) (not e!1816020))))

(declare-fun lt!1017576 () Bool)

(assert (=> b!2868963 (= res!1190664 (not lt!1017576))))

(declare-fun b!2868965 () Bool)

(declare-fun res!1190659 () Bool)

(declare-fun e!1816024 () Bool)

(assert (=> b!2868965 (=> (not res!1190659) (not e!1816024))))

(declare-fun call!185138 () Bool)

(assert (=> b!2868965 (= res!1190659 (not call!185138))))

(declare-fun b!2868966 () Bool)

(declare-fun res!1190663 () Bool)

(declare-fun e!1816021 () Bool)

(assert (=> b!2868966 (=> res!1190663 e!1816021)))

(declare-fun isEmpty!18700 (List!34486) Bool)

(declare-fun tail!4559 (List!34486) List!34486)

(assert (=> b!2868966 (= res!1190663 (not (isEmpty!18700 (tail!4559 (get!10320 lt!1017549)))))))

(declare-fun b!2868967 () Bool)

(declare-fun head!6334 (List!34486) C!17640)

(assert (=> b!2868967 (= e!1816024 (= (head!6334 (get!10320 lt!1017549)) (c!463662 (h!39781 (exprs!3189 c!7184)))))))

(declare-fun b!2868968 () Bool)

(declare-fun e!1816023 () Bool)

(declare-fun derivativeStep!2312 (Regex!8729 C!17640) Regex!8729)

(assert (=> b!2868968 (= e!1816023 (matchR!3729 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))) (tail!4559 (get!10320 lt!1017549))))))

(declare-fun bm!185133 () Bool)

(assert (=> bm!185133 (= call!185138 (isEmpty!18700 (get!10320 lt!1017549)))))

(declare-fun b!2868969 () Bool)

(assert (=> b!2868969 (= e!1816021 (not (= (head!6334 (get!10320 lt!1017549)) (c!463662 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2868970 () Bool)

(declare-fun res!1190660 () Bool)

(assert (=> b!2868970 (=> res!1190660 e!1816025)))

(assert (=> b!2868970 (= res!1190660 e!1816024)))

(declare-fun res!1190665 () Bool)

(assert (=> b!2868970 (=> (not res!1190665) (not e!1816024))))

(assert (=> b!2868970 (= res!1190665 lt!1017576)))

(declare-fun b!2868971 () Bool)

(declare-fun e!1816019 () Bool)

(assert (=> b!2868971 (= e!1816019 (= lt!1017576 call!185138))))

(declare-fun b!2868972 () Bool)

(declare-fun e!1816022 () Bool)

(assert (=> b!2868972 (= e!1816022 (not lt!1017576))))

(declare-fun b!2868973 () Bool)

(declare-fun nullable!2679 (Regex!8729) Bool)

(assert (=> b!2868973 (= e!1816023 (nullable!2679 (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2868974 () Bool)

(assert (=> b!2868974 (= e!1816020 e!1816021)))

(declare-fun res!1190662 () Bool)

(assert (=> b!2868974 (=> res!1190662 e!1816021)))

(assert (=> b!2868974 (= res!1190662 call!185138)))

(declare-fun b!2868964 () Bool)

(declare-fun res!1190658 () Bool)

(assert (=> b!2868964 (=> res!1190658 e!1816025)))

(assert (=> b!2868964 (= res!1190658 (not ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184)))))))

(assert (=> b!2868964 (= e!1816022 e!1816025)))

(declare-fun d!829202 () Bool)

(assert (=> d!829202 e!1816019))

(declare-fun c!463713 () Bool)

(assert (=> d!829202 (= c!463713 ((_ is EmptyExpr!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (=> d!829202 (= lt!1017576 e!1816023)))

(declare-fun c!463714 () Bool)

(assert (=> d!829202 (= c!463714 (isEmpty!18700 (get!10320 lt!1017549)))))

(declare-fun validRegex!3507 (Regex!8729) Bool)

(assert (=> d!829202 (validRegex!3507 (h!39781 (exprs!3189 c!7184)))))

(assert (=> d!829202 (= (matchR!3729 (h!39781 (exprs!3189 c!7184)) (get!10320 lt!1017549)) lt!1017576)))

(declare-fun b!2868975 () Bool)

(declare-fun res!1190661 () Bool)

(assert (=> b!2868975 (=> (not res!1190661) (not e!1816024))))

(assert (=> b!2868975 (= res!1190661 (isEmpty!18700 (tail!4559 (get!10320 lt!1017549))))))

(declare-fun b!2868976 () Bool)

(assert (=> b!2868976 (= e!1816019 e!1816022)))

(declare-fun c!463712 () Bool)

(assert (=> b!2868976 (= c!463712 ((_ is EmptyLang!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (= (and d!829202 c!463714) b!2868973))

(assert (= (and d!829202 (not c!463714)) b!2868968))

(assert (= (and d!829202 c!463713) b!2868971))

(assert (= (and d!829202 (not c!463713)) b!2868976))

(assert (= (and b!2868976 c!463712) b!2868972))

(assert (= (and b!2868976 (not c!463712)) b!2868964))

(assert (= (and b!2868964 (not res!1190658)) b!2868970))

(assert (= (and b!2868970 res!1190665) b!2868965))

(assert (= (and b!2868965 res!1190659) b!2868975))

(assert (= (and b!2868975 res!1190661) b!2868967))

(assert (= (and b!2868970 (not res!1190660)) b!2868963))

(assert (= (and b!2868963 res!1190664) b!2868974))

(assert (= (and b!2868974 (not res!1190662)) b!2868966))

(assert (= (and b!2868966 (not res!1190663)) b!2868969))

(assert (= (or b!2868971 b!2868965 b!2868974) bm!185133))

(assert (=> b!2868968 m!3288243))

(declare-fun m!3288301 () Bool)

(assert (=> b!2868968 m!3288301))

(assert (=> b!2868968 m!3288301))

(declare-fun m!3288303 () Bool)

(assert (=> b!2868968 m!3288303))

(assert (=> b!2868968 m!3288243))

(declare-fun m!3288305 () Bool)

(assert (=> b!2868968 m!3288305))

(assert (=> b!2868968 m!3288303))

(assert (=> b!2868968 m!3288305))

(declare-fun m!3288307 () Bool)

(assert (=> b!2868968 m!3288307))

(assert (=> b!2868969 m!3288243))

(assert (=> b!2868969 m!3288301))

(assert (=> bm!185133 m!3288243))

(declare-fun m!3288309 () Bool)

(assert (=> bm!185133 m!3288309))

(assert (=> b!2868967 m!3288243))

(assert (=> b!2868967 m!3288301))

(assert (=> b!2868966 m!3288243))

(assert (=> b!2868966 m!3288305))

(assert (=> b!2868966 m!3288305))

(declare-fun m!3288311 () Bool)

(assert (=> b!2868966 m!3288311))

(assert (=> d!829202 m!3288243))

(assert (=> d!829202 m!3288309))

(declare-fun m!3288313 () Bool)

(assert (=> d!829202 m!3288313))

(assert (=> b!2868975 m!3288243))

(assert (=> b!2868975 m!3288305))

(assert (=> b!2868975 m!3288305))

(assert (=> b!2868975 m!3288311))

(declare-fun m!3288315 () Bool)

(assert (=> b!2868973 m!3288315))

(assert (=> b!2868819 d!829202))

(declare-fun d!829204 () Bool)

(assert (=> d!829204 (= (get!10320 lt!1017549) (v!34525 lt!1017549))))

(assert (=> b!2868819 d!829204))

(declare-fun d!829206 () Bool)

(assert (=> d!829206 (matchR!3729 (h!39781 (exprs!3189 c!7184)) (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))))

(declare-fun lt!1017579 () Unit!47959)

(declare-fun choose!16967 (Regex!8729) Unit!47959)

(assert (=> d!829206 (= lt!1017579 (choose!16967 (h!39781 (exprs!3189 c!7184))))))

(assert (=> d!829206 (validRegex!3507 (h!39781 (exprs!3189 c!7184)))))

(assert (=> d!829206 (= (lemmaGetWitnessMatches!36 (h!39781 (exprs!3189 c!7184))) lt!1017579)))

(declare-fun bs!521829 () Bool)

(assert (= bs!521829 d!829206))

(assert (=> bs!521829 m!3288249))

(declare-fun m!3288317 () Bool)

(assert (=> bs!521829 m!3288317))

(assert (=> bs!521829 m!3288317))

(declare-fun m!3288319 () Bool)

(assert (=> bs!521829 m!3288319))

(assert (=> bs!521829 m!3288313))

(declare-fun m!3288321 () Bool)

(assert (=> bs!521829 m!3288321))

(assert (=> bs!521829 m!3288249))

(assert (=> b!2868819 d!829206))

(declare-fun bs!521830 () Bool)

(declare-fun d!829208 () Bool)

(assert (= bs!521830 (and d!829208 d!829186)))

(declare-fun lambda!106988 () Int)

(assert (=> bs!521830 (not (= lambda!106988 lambda!106985))))

(declare-fun b!2868989 () Bool)

(declare-fun e!1816034 () Option!6404)

(declare-fun e!1816033 () Option!6404)

(assert (=> b!2868989 (= e!1816034 e!1816033)))

(declare-fun lt!1017588 () Option!6404)

(assert (=> b!2868989 (= lt!1017588 (getLanguageWitness!410 (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun c!463723 () Bool)

(assert (=> b!2868989 (= c!463723 ((_ is Some!6403) lt!1017588))))

(declare-fun b!2868991 () Bool)

(assert (=> b!2868991 (= e!1816033 None!6403)))

(declare-fun b!2868992 () Bool)

(declare-fun e!1816032 () Option!6404)

(declare-fun lt!1017587 () Option!6404)

(declare-fun ++!8166 (List!34486 List!34486) List!34486)

(assert (=> b!2868992 (= e!1816032 (Some!6403 (++!8166 (v!34525 lt!1017588) (v!34525 lt!1017587))))))

(declare-fun b!2868993 () Bool)

(assert (=> b!2868993 (= e!1816032 None!6403)))

(declare-fun b!2868994 () Bool)

(assert (=> b!2868994 (= e!1816034 (Some!6403 Nil!34362))))

(declare-fun lt!1017586 () Option!6404)

(declare-fun isEmpty!18701 (Option!6404) Bool)

(declare-fun exists!1148 (List!34485 Int) Bool)

(assert (=> d!829208 (= (isEmpty!18701 lt!1017586) (exists!1148 (exprs!3189 lt!1017548) lambda!106988))))

(assert (=> d!829208 (= lt!1017586 e!1816034)))

(declare-fun c!463722 () Bool)

(assert (=> d!829208 (= c!463722 ((_ is Cons!34361) (exprs!3189 lt!1017548)))))

(assert (=> d!829208 (= (getLanguageWitness!409 lt!1017548) lt!1017586)))

(declare-fun b!2868990 () Bool)

(declare-fun c!463724 () Bool)

(assert (=> b!2868990 (= c!463724 ((_ is Some!6403) lt!1017587))))

(assert (=> b!2868990 (= lt!1017587 (getLanguageWitness!409 (Context!5379 (t!233528 (exprs!3189 lt!1017548)))))))

(assert (=> b!2868990 (= e!1816033 e!1816032)))

(assert (= (and d!829208 c!463722) b!2868989))

(assert (= (and d!829208 (not c!463722)) b!2868994))

(assert (= (and b!2868989 c!463723) b!2868990))

(assert (= (and b!2868989 (not c!463723)) b!2868991))

(assert (= (and b!2868990 c!463724) b!2868992))

(assert (= (and b!2868990 (not c!463724)) b!2868993))

(declare-fun m!3288323 () Bool)

(assert (=> b!2868989 m!3288323))

(declare-fun m!3288325 () Bool)

(assert (=> b!2868992 m!3288325))

(declare-fun m!3288327 () Bool)

(assert (=> d!829208 m!3288327))

(declare-fun m!3288329 () Bool)

(assert (=> d!829208 m!3288329))

(declare-fun m!3288331 () Bool)

(assert (=> b!2868990 m!3288331))

(assert (=> b!2868817 d!829208))

(declare-fun bs!521831 () Bool)

(declare-fun d!829210 () Bool)

(assert (= bs!521831 (and d!829210 d!829186)))

(declare-fun lambda!106991 () Int)

(assert (=> bs!521831 (not (= lambda!106991 lambda!106985))))

(declare-fun bs!521832 () Bool)

(assert (= bs!521832 (and d!829210 d!829208)))

(assert (=> bs!521832 (= lambda!106991 lambda!106988)))

(assert (=> d!829210 (= (lostCause!821 c!7184) (exists!1148 (exprs!3189 c!7184) lambda!106991))))

(declare-fun bs!521833 () Bool)

(assert (= bs!521833 d!829210))

(declare-fun m!3288333 () Bool)

(assert (=> bs!521833 m!3288333))

(assert (=> start!280012 d!829210))

(declare-fun bs!521834 () Bool)

(declare-fun d!829212 () Bool)

(assert (= bs!521834 (and d!829212 d!829186)))

(declare-fun lambda!106992 () Int)

(assert (=> bs!521834 (= lambda!106992 lambda!106985)))

(declare-fun bs!521835 () Bool)

(assert (= bs!521835 (and d!829212 d!829208)))

(assert (=> bs!521835 (not (= lambda!106992 lambda!106988))))

(declare-fun bs!521836 () Bool)

(assert (= bs!521836 (and d!829212 d!829210)))

(assert (=> bs!521836 (not (= lambda!106992 lambda!106991))))

(assert (=> d!829212 (= (inv!46409 c!7184) (forall!7074 (exprs!3189 c!7184) lambda!106992))))

(declare-fun bs!521837 () Bool)

(assert (= bs!521837 d!829212))

(declare-fun m!3288335 () Bool)

(assert (=> bs!521837 m!3288335))

(assert (=> start!280012 d!829212))

(declare-fun b!2869027 () Bool)

(declare-fun e!1816056 () Option!6404)

(declare-fun lt!1017595 () Option!6404)

(declare-fun lt!1017597 () Option!6404)

(assert (=> b!2869027 (= e!1816056 (Some!6403 (++!8166 (v!34525 lt!1017595) (v!34525 lt!1017597))))))

(declare-fun b!2869028 () Bool)

(declare-fun c!463743 () Bool)

(assert (=> b!2869028 (= c!463743 ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun e!1816057 () Option!6404)

(declare-fun e!1816053 () Option!6404)

(assert (=> b!2869028 (= e!1816057 e!1816053)))

(declare-fun bm!185138 () Bool)

(declare-fun call!185143 () Option!6404)

(declare-fun c!463745 () Bool)

(assert (=> bm!185138 (= call!185143 (getLanguageWitness!410 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869029 () Bool)

(assert (=> b!2869029 (= e!1816056 None!6403)))

(declare-fun b!2869031 () Bool)

(declare-fun e!1816055 () Option!6404)

(declare-fun e!1816052 () Option!6404)

(assert (=> b!2869031 (= e!1816055 e!1816052)))

(assert (=> b!2869031 (= lt!1017595 call!185143)))

(declare-fun c!463741 () Bool)

(assert (=> b!2869031 (= c!463741 ((_ is Some!6403) lt!1017595))))

(declare-fun b!2869032 () Bool)

(declare-fun c!463747 () Bool)

(assert (=> b!2869032 (= c!463747 ((_ is Some!6403) lt!1017597))))

(declare-fun call!185144 () Option!6404)

(assert (=> b!2869032 (= lt!1017597 call!185144)))

(assert (=> b!2869032 (= e!1816052 e!1816056)))

(declare-fun b!2869033 () Bool)

(declare-fun e!1816058 () Option!6404)

(assert (=> b!2869033 (= e!1816055 e!1816058)))

(declare-fun lt!1017596 () Option!6404)

(assert (=> b!2869033 (= lt!1017596 call!185143)))

(declare-fun c!463742 () Bool)

(assert (=> b!2869033 (= c!463742 ((_ is Some!6403) lt!1017596))))

(declare-fun b!2869034 () Bool)

(assert (=> b!2869034 (= e!1816058 call!185144)))

(declare-fun b!2869035 () Bool)

(assert (=> b!2869035 (= e!1816052 None!6403)))

(declare-fun b!2869036 () Bool)

(assert (=> b!2869036 (= e!1816053 (Some!6403 (Cons!34362 (c!463662 (h!39781 (exprs!3189 c!7184))) Nil!34362)))))

(declare-fun b!2869037 () Bool)

(assert (=> b!2869037 (= c!463745 ((_ is Union!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun e!1816051 () Option!6404)

(assert (=> b!2869037 (= e!1816051 e!1816055)))

(declare-fun bm!185139 () Bool)

(assert (=> bm!185139 (= call!185144 (getLanguageWitness!410 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869038 () Bool)

(assert (=> b!2869038 (= e!1816057 None!6403)))

(declare-fun b!2869039 () Bool)

(assert (=> b!2869039 (= e!1816058 lt!1017596)))

(declare-fun b!2869040 () Bool)

(assert (=> b!2869040 (= e!1816053 e!1816051)))

(declare-fun c!463744 () Bool)

(assert (=> b!2869040 (= c!463744 ((_ is Star!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2869041 () Bool)

(assert (=> b!2869041 (= e!1816051 (Some!6403 Nil!34362))))

(declare-fun b!2869042 () Bool)

(declare-fun e!1816054 () Option!6404)

(assert (=> b!2869042 (= e!1816054 (Some!6403 Nil!34362))))

(declare-fun d!829214 () Bool)

(declare-fun c!463746 () Bool)

(assert (=> d!829214 (= c!463746 ((_ is EmptyExpr!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (=> d!829214 (= (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))) e!1816054)))

(declare-fun b!2869030 () Bool)

(assert (=> b!2869030 (= e!1816054 e!1816057)))

(declare-fun c!463748 () Bool)

(assert (=> b!2869030 (= c!463748 ((_ is EmptyLang!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (= (and d!829214 c!463746) b!2869042))

(assert (= (and d!829214 (not c!463746)) b!2869030))

(assert (= (and b!2869030 c!463748) b!2869038))

(assert (= (and b!2869030 (not c!463748)) b!2869028))

(assert (= (and b!2869028 c!463743) b!2869036))

(assert (= (and b!2869028 (not c!463743)) b!2869040))

(assert (= (and b!2869040 c!463744) b!2869041))

(assert (= (and b!2869040 (not c!463744)) b!2869037))

(assert (= (and b!2869037 c!463745) b!2869033))

(assert (= (and b!2869037 (not c!463745)) b!2869031))

(assert (= (and b!2869033 c!463742) b!2869039))

(assert (= (and b!2869033 (not c!463742)) b!2869034))

(assert (= (and b!2869031 c!463741) b!2869032))

(assert (= (and b!2869031 (not c!463741)) b!2869035))

(assert (= (and b!2869032 c!463747) b!2869027))

(assert (= (and b!2869032 (not c!463747)) b!2869029))

(assert (= (or b!2869034 b!2869032) bm!185139))

(assert (= (or b!2869033 b!2869031) bm!185138))

(declare-fun m!3288337 () Bool)

(assert (=> b!2869027 m!3288337))

(declare-fun m!3288339 () Bool)

(assert (=> bm!185138 m!3288339))

(declare-fun m!3288341 () Bool)

(assert (=> bm!185139 m!3288341))

(assert (=> b!2868820 d!829214))

(declare-fun b!2869047 () Bool)

(declare-fun e!1816061 () Bool)

(declare-fun tp!923243 () Bool)

(declare-fun tp!923244 () Bool)

(assert (=> b!2869047 (= e!1816061 (and tp!923243 tp!923244))))

(assert (=> b!2868821 (= tp!923232 e!1816061)))

(assert (= (and b!2868821 ((_ is Cons!34361) (exprs!3189 c!7184))) b!2869047))

(check-sat (not b!2868992) (not b!2868975) (not d!829208) (not bm!185138) (not b!2868966) (not bm!185133) (not b!2868968) (not b!2868969) (not b!2869047) (not d!829210) (not d!829206) (not b!2869027) (not bm!185139) (not d!829202) (not b!2868967) (not b!2868990) (not d!829186) (not d!829212) (not b!2868973) (not b!2868989))
(check-sat)
(get-model)

(declare-fun d!829264 () Bool)

(assert (=> d!829264 (= (isEmpty!18700 (get!10320 lt!1017549)) ((_ is Nil!34362) (get!10320 lt!1017549)))))

(assert (=> d!829202 d!829264))

(declare-fun bm!185175 () Bool)

(declare-fun call!185180 () Bool)

(declare-fun call!185182 () Bool)

(assert (=> bm!185175 (= call!185180 call!185182)))

(declare-fun b!2869246 () Bool)

(declare-fun e!1816177 () Bool)

(declare-fun e!1816179 () Bool)

(assert (=> b!2869246 (= e!1816177 e!1816179)))

(declare-fun c!463812 () Bool)

(assert (=> b!2869246 (= c!463812 ((_ is Union!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun bm!185176 () Bool)

(declare-fun call!185181 () Bool)

(assert (=> bm!185176 (= call!185181 (validRegex!3507 (ite c!463812 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869247 () Bool)

(declare-fun e!1816175 () Bool)

(assert (=> b!2869247 (= e!1816175 call!185180)))

(declare-fun b!2869248 () Bool)

(declare-fun e!1816174 () Bool)

(assert (=> b!2869248 (= e!1816174 call!185182)))

(declare-fun b!2869249 () Bool)

(declare-fun e!1816178 () Bool)

(declare-fun e!1816173 () Bool)

(assert (=> b!2869249 (= e!1816178 e!1816173)))

(declare-fun res!1190726 () Bool)

(assert (=> b!2869249 (=> (not res!1190726) (not e!1816173))))

(assert (=> b!2869249 (= res!1190726 call!185180)))

(declare-fun b!2869250 () Bool)

(assert (=> b!2869250 (= e!1816173 call!185181)))

(declare-fun b!2869251 () Bool)

(declare-fun e!1816176 () Bool)

(assert (=> b!2869251 (= e!1816176 e!1816177)))

(declare-fun c!463811 () Bool)

(assert (=> b!2869251 (= c!463811 ((_ is Star!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2869252 () Bool)

(declare-fun res!1190725 () Bool)

(assert (=> b!2869252 (=> res!1190725 e!1816178)))

(assert (=> b!2869252 (= res!1190725 (not ((_ is Concat!14050) (h!39781 (exprs!3189 c!7184)))))))

(assert (=> b!2869252 (= e!1816179 e!1816178)))

(declare-fun b!2869253 () Bool)

(assert (=> b!2869253 (= e!1816177 e!1816174)))

(declare-fun res!1190724 () Bool)

(assert (=> b!2869253 (= res!1190724 (not (nullable!2679 (reg!9058 (h!39781 (exprs!3189 c!7184))))))))

(assert (=> b!2869253 (=> (not res!1190724) (not e!1816174))))

(declare-fun b!2869254 () Bool)

(declare-fun res!1190723 () Bool)

(assert (=> b!2869254 (=> (not res!1190723) (not e!1816175))))

(assert (=> b!2869254 (= res!1190723 call!185181)))

(assert (=> b!2869254 (= e!1816179 e!1816175)))

(declare-fun d!829266 () Bool)

(declare-fun res!1190727 () Bool)

(assert (=> d!829266 (=> res!1190727 e!1816176)))

(assert (=> d!829266 (= res!1190727 ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (=> d!829266 (= (validRegex!3507 (h!39781 (exprs!3189 c!7184))) e!1816176)))

(declare-fun bm!185177 () Bool)

(assert (=> bm!185177 (= call!185182 (validRegex!3507 (ite c!463811 (reg!9058 (h!39781 (exprs!3189 c!7184))) (ite c!463812 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184)))))))))

(assert (= (and d!829266 (not res!1190727)) b!2869251))

(assert (= (and b!2869251 c!463811) b!2869253))

(assert (= (and b!2869251 (not c!463811)) b!2869246))

(assert (= (and b!2869253 res!1190724) b!2869248))

(assert (= (and b!2869246 c!463812) b!2869254))

(assert (= (and b!2869246 (not c!463812)) b!2869252))

(assert (= (and b!2869254 res!1190723) b!2869247))

(assert (= (and b!2869252 (not res!1190725)) b!2869249))

(assert (= (and b!2869249 res!1190726) b!2869250))

(assert (= (or b!2869247 b!2869249) bm!185175))

(assert (= (or b!2869254 b!2869250) bm!185176))

(assert (= (or b!2869248 bm!185175) bm!185177))

(declare-fun m!3288455 () Bool)

(assert (=> bm!185176 m!3288455))

(declare-fun m!3288457 () Bool)

(assert (=> b!2869253 m!3288457))

(declare-fun m!3288459 () Bool)

(assert (=> bm!185177 m!3288459))

(assert (=> d!829202 d!829266))

(declare-fun b!2869255 () Bool)

(declare-fun e!1816185 () Option!6404)

(declare-fun lt!1017619 () Option!6404)

(declare-fun lt!1017621 () Option!6404)

(assert (=> b!2869255 (= e!1816185 (Some!6403 (++!8166 (v!34525 lt!1017619) (v!34525 lt!1017621))))))

(declare-fun b!2869256 () Bool)

(declare-fun c!463815 () Bool)

(assert (=> b!2869256 (= c!463815 ((_ is ElementMatch!8729) (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun e!1816186 () Option!6404)

(declare-fun e!1816182 () Option!6404)

(assert (=> b!2869256 (= e!1816186 e!1816182)))

(declare-fun bm!185178 () Bool)

(declare-fun call!185183 () Option!6404)

(declare-fun c!463817 () Bool)

(assert (=> bm!185178 (= call!185183 (getLanguageWitness!410 (ite c!463817 (regOne!17971 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))) (regOne!17970 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))))

(declare-fun b!2869257 () Bool)

(assert (=> b!2869257 (= e!1816185 None!6403)))

(declare-fun b!2869259 () Bool)

(declare-fun e!1816184 () Option!6404)

(declare-fun e!1816181 () Option!6404)

(assert (=> b!2869259 (= e!1816184 e!1816181)))

(assert (=> b!2869259 (= lt!1017619 call!185183)))

(declare-fun c!463813 () Bool)

(assert (=> b!2869259 (= c!463813 ((_ is Some!6403) lt!1017619))))

(declare-fun b!2869260 () Bool)

(declare-fun c!463819 () Bool)

(assert (=> b!2869260 (= c!463819 ((_ is Some!6403) lt!1017621))))

(declare-fun call!185184 () Option!6404)

(assert (=> b!2869260 (= lt!1017621 call!185184)))

(assert (=> b!2869260 (= e!1816181 e!1816185)))

(declare-fun b!2869261 () Bool)

(declare-fun e!1816187 () Option!6404)

(assert (=> b!2869261 (= e!1816184 e!1816187)))

(declare-fun lt!1017620 () Option!6404)

(assert (=> b!2869261 (= lt!1017620 call!185183)))

(declare-fun c!463814 () Bool)

(assert (=> b!2869261 (= c!463814 ((_ is Some!6403) lt!1017620))))

(declare-fun b!2869262 () Bool)

(assert (=> b!2869262 (= e!1816187 call!185184)))

(declare-fun b!2869263 () Bool)

(assert (=> b!2869263 (= e!1816181 None!6403)))

(declare-fun b!2869264 () Bool)

(assert (=> b!2869264 (= e!1816182 (Some!6403 (Cons!34362 (c!463662 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))) Nil!34362)))))

(declare-fun b!2869265 () Bool)

(assert (=> b!2869265 (= c!463817 ((_ is Union!8729) (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun e!1816180 () Option!6404)

(assert (=> b!2869265 (= e!1816180 e!1816184)))

(declare-fun bm!185179 () Bool)

(assert (=> bm!185179 (= call!185184 (getLanguageWitness!410 (ite c!463817 (regTwo!17971 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))) (regTwo!17970 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))))

(declare-fun b!2869266 () Bool)

(assert (=> b!2869266 (= e!1816186 None!6403)))

(declare-fun b!2869267 () Bool)

(assert (=> b!2869267 (= e!1816187 lt!1017620)))

(declare-fun b!2869268 () Bool)

(assert (=> b!2869268 (= e!1816182 e!1816180)))

(declare-fun c!463816 () Bool)

(assert (=> b!2869268 (= c!463816 ((_ is Star!8729) (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869269 () Bool)

(assert (=> b!2869269 (= e!1816180 (Some!6403 Nil!34362))))

(declare-fun b!2869270 () Bool)

(declare-fun e!1816183 () Option!6404)

(assert (=> b!2869270 (= e!1816183 (Some!6403 Nil!34362))))

(declare-fun d!829268 () Bool)

(declare-fun c!463818 () Bool)

(assert (=> d!829268 (= c!463818 ((_ is EmptyExpr!8729) (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(assert (=> d!829268 (= (getLanguageWitness!410 (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))) e!1816183)))

(declare-fun b!2869258 () Bool)

(assert (=> b!2869258 (= e!1816183 e!1816186)))

(declare-fun c!463820 () Bool)

(assert (=> b!2869258 (= c!463820 ((_ is EmptyLang!8729) (ite c!463745 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184))))))))

(assert (= (and d!829268 c!463818) b!2869270))

(assert (= (and d!829268 (not c!463818)) b!2869258))

(assert (= (and b!2869258 c!463820) b!2869266))

(assert (= (and b!2869258 (not c!463820)) b!2869256))

(assert (= (and b!2869256 c!463815) b!2869264))

(assert (= (and b!2869256 (not c!463815)) b!2869268))

(assert (= (and b!2869268 c!463816) b!2869269))

(assert (= (and b!2869268 (not c!463816)) b!2869265))

(assert (= (and b!2869265 c!463817) b!2869261))

(assert (= (and b!2869265 (not c!463817)) b!2869259))

(assert (= (and b!2869261 c!463814) b!2869267))

(assert (= (and b!2869261 (not c!463814)) b!2869262))

(assert (= (and b!2869259 c!463813) b!2869260))

(assert (= (and b!2869259 (not c!463813)) b!2869263))

(assert (= (and b!2869260 c!463819) b!2869255))

(assert (= (and b!2869260 (not c!463819)) b!2869257))

(assert (= (or b!2869262 b!2869260) bm!185179))

(assert (= (or b!2869261 b!2869259) bm!185178))

(declare-fun m!3288461 () Bool)

(assert (=> b!2869255 m!3288461))

(declare-fun m!3288463 () Bool)

(assert (=> bm!185178 m!3288463))

(declare-fun m!3288465 () Bool)

(assert (=> bm!185179 m!3288465))

(assert (=> bm!185139 d!829268))

(declare-fun b!2869271 () Bool)

(declare-fun e!1816193 () Option!6404)

(declare-fun lt!1017622 () Option!6404)

(declare-fun lt!1017624 () Option!6404)

(assert (=> b!2869271 (= e!1816193 (Some!6403 (++!8166 (v!34525 lt!1017622) (v!34525 lt!1017624))))))

(declare-fun b!2869272 () Bool)

(declare-fun c!463823 () Bool)

(assert (=> b!2869272 (= c!463823 ((_ is ElementMatch!8729) (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun e!1816194 () Option!6404)

(declare-fun e!1816190 () Option!6404)

(assert (=> b!2869272 (= e!1816194 e!1816190)))

(declare-fun c!463825 () Bool)

(declare-fun call!185185 () Option!6404)

(declare-fun bm!185180 () Bool)

(assert (=> bm!185180 (= call!185185 (getLanguageWitness!410 (ite c!463825 (regOne!17971 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))) (regOne!17970 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))))

(declare-fun b!2869273 () Bool)

(assert (=> b!2869273 (= e!1816193 None!6403)))

(declare-fun b!2869275 () Bool)

(declare-fun e!1816192 () Option!6404)

(declare-fun e!1816189 () Option!6404)

(assert (=> b!2869275 (= e!1816192 e!1816189)))

(assert (=> b!2869275 (= lt!1017622 call!185185)))

(declare-fun c!463821 () Bool)

(assert (=> b!2869275 (= c!463821 ((_ is Some!6403) lt!1017622))))

(declare-fun b!2869276 () Bool)

(declare-fun c!463827 () Bool)

(assert (=> b!2869276 (= c!463827 ((_ is Some!6403) lt!1017624))))

(declare-fun call!185186 () Option!6404)

(assert (=> b!2869276 (= lt!1017624 call!185186)))

(assert (=> b!2869276 (= e!1816189 e!1816193)))

(declare-fun b!2869277 () Bool)

(declare-fun e!1816195 () Option!6404)

(assert (=> b!2869277 (= e!1816192 e!1816195)))

(declare-fun lt!1017623 () Option!6404)

(assert (=> b!2869277 (= lt!1017623 call!185185)))

(declare-fun c!463822 () Bool)

(assert (=> b!2869277 (= c!463822 ((_ is Some!6403) lt!1017623))))

(declare-fun b!2869278 () Bool)

(assert (=> b!2869278 (= e!1816195 call!185186)))

(declare-fun b!2869279 () Bool)

(assert (=> b!2869279 (= e!1816189 None!6403)))

(declare-fun b!2869280 () Bool)

(assert (=> b!2869280 (= e!1816190 (Some!6403 (Cons!34362 (c!463662 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))) Nil!34362)))))

(declare-fun b!2869281 () Bool)

(assert (=> b!2869281 (= c!463825 ((_ is Union!8729) (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun e!1816188 () Option!6404)

(assert (=> b!2869281 (= e!1816188 e!1816192)))

(declare-fun bm!185181 () Bool)

(assert (=> bm!185181 (= call!185186 (getLanguageWitness!410 (ite c!463825 (regTwo!17971 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))) (regTwo!17970 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))))

(declare-fun b!2869282 () Bool)

(assert (=> b!2869282 (= e!1816194 None!6403)))

(declare-fun b!2869283 () Bool)

(assert (=> b!2869283 (= e!1816195 lt!1017623)))

(declare-fun b!2869284 () Bool)

(assert (=> b!2869284 (= e!1816190 e!1816188)))

(declare-fun c!463824 () Bool)

(assert (=> b!2869284 (= c!463824 ((_ is Star!8729) (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869285 () Bool)

(assert (=> b!2869285 (= e!1816188 (Some!6403 Nil!34362))))

(declare-fun b!2869286 () Bool)

(declare-fun e!1816191 () Option!6404)

(assert (=> b!2869286 (= e!1816191 (Some!6403 Nil!34362))))

(declare-fun d!829270 () Bool)

(declare-fun c!463826 () Bool)

(assert (=> d!829270 (= c!463826 ((_ is EmptyExpr!8729) (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(assert (=> d!829270 (= (getLanguageWitness!410 (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))) e!1816191)))

(declare-fun b!2869274 () Bool)

(assert (=> b!2869274 (= e!1816191 e!1816194)))

(declare-fun c!463828 () Bool)

(assert (=> b!2869274 (= c!463828 ((_ is EmptyLang!8729) (ite c!463745 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))))))

(assert (= (and d!829270 c!463826) b!2869286))

(assert (= (and d!829270 (not c!463826)) b!2869274))

(assert (= (and b!2869274 c!463828) b!2869282))

(assert (= (and b!2869274 (not c!463828)) b!2869272))

(assert (= (and b!2869272 c!463823) b!2869280))

(assert (= (and b!2869272 (not c!463823)) b!2869284))

(assert (= (and b!2869284 c!463824) b!2869285))

(assert (= (and b!2869284 (not c!463824)) b!2869281))

(assert (= (and b!2869281 c!463825) b!2869277))

(assert (= (and b!2869281 (not c!463825)) b!2869275))

(assert (= (and b!2869277 c!463822) b!2869283))

(assert (= (and b!2869277 (not c!463822)) b!2869278))

(assert (= (and b!2869275 c!463821) b!2869276))

(assert (= (and b!2869275 (not c!463821)) b!2869279))

(assert (= (and b!2869276 c!463827) b!2869271))

(assert (= (and b!2869276 (not c!463827)) b!2869273))

(assert (= (or b!2869278 b!2869276) bm!185181))

(assert (= (or b!2869277 b!2869275) bm!185180))

(declare-fun m!3288467 () Bool)

(assert (=> b!2869271 m!3288467))

(declare-fun m!3288469 () Bool)

(assert (=> bm!185180 m!3288469))

(declare-fun m!3288471 () Bool)

(assert (=> bm!185181 m!3288471))

(assert (=> bm!185138 d!829270))

(declare-fun b!2869295 () Bool)

(declare-fun e!1816200 () List!34486)

(assert (=> b!2869295 (= e!1816200 (v!34525 lt!1017597))))

(declare-fun b!2869296 () Bool)

(assert (=> b!2869296 (= e!1816200 (Cons!34362 (h!39782 (v!34525 lt!1017595)) (++!8166 (t!233529 (v!34525 lt!1017595)) (v!34525 lt!1017597))))))

(declare-fun e!1816201 () Bool)

(declare-fun b!2869298 () Bool)

(declare-fun lt!1017627 () List!34486)

(assert (=> b!2869298 (= e!1816201 (or (not (= (v!34525 lt!1017597) Nil!34362)) (= lt!1017627 (v!34525 lt!1017595))))))

(declare-fun b!2869297 () Bool)

(declare-fun res!1190732 () Bool)

(assert (=> b!2869297 (=> (not res!1190732) (not e!1816201))))

(declare-fun size!26313 (List!34486) Int)

(assert (=> b!2869297 (= res!1190732 (= (size!26313 lt!1017627) (+ (size!26313 (v!34525 lt!1017595)) (size!26313 (v!34525 lt!1017597)))))))

(declare-fun d!829272 () Bool)

(assert (=> d!829272 e!1816201))

(declare-fun res!1190733 () Bool)

(assert (=> d!829272 (=> (not res!1190733) (not e!1816201))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4692 (List!34486) (InoxSet C!17640))

(assert (=> d!829272 (= res!1190733 (= (content!4692 lt!1017627) ((_ map or) (content!4692 (v!34525 lt!1017595)) (content!4692 (v!34525 lt!1017597)))))))

(assert (=> d!829272 (= lt!1017627 e!1816200)))

(declare-fun c!463831 () Bool)

(assert (=> d!829272 (= c!463831 ((_ is Nil!34362) (v!34525 lt!1017595)))))

(assert (=> d!829272 (= (++!8166 (v!34525 lt!1017595) (v!34525 lt!1017597)) lt!1017627)))

(assert (= (and d!829272 c!463831) b!2869295))

(assert (= (and d!829272 (not c!463831)) b!2869296))

(assert (= (and d!829272 res!1190733) b!2869297))

(assert (= (and b!2869297 res!1190732) b!2869298))

(declare-fun m!3288473 () Bool)

(assert (=> b!2869296 m!3288473))

(declare-fun m!3288475 () Bool)

(assert (=> b!2869297 m!3288475))

(declare-fun m!3288477 () Bool)

(assert (=> b!2869297 m!3288477))

(declare-fun m!3288479 () Bool)

(assert (=> b!2869297 m!3288479))

(declare-fun m!3288481 () Bool)

(assert (=> d!829272 m!3288481))

(declare-fun m!3288483 () Bool)

(assert (=> d!829272 m!3288483))

(declare-fun m!3288485 () Bool)

(assert (=> d!829272 m!3288485))

(assert (=> b!2869027 d!829272))

(declare-fun d!829274 () Bool)

(declare-fun nullableFct!811 (Regex!8729) Bool)

(assert (=> d!829274 (= (nullable!2679 (h!39781 (exprs!3189 c!7184))) (nullableFct!811 (h!39781 (exprs!3189 c!7184))))))

(declare-fun bs!521859 () Bool)

(assert (= bs!521859 d!829274))

(declare-fun m!3288487 () Bool)

(assert (=> bs!521859 m!3288487))

(assert (=> b!2868973 d!829274))

(declare-fun bs!521860 () Bool)

(declare-fun d!829276 () Bool)

(assert (= bs!521860 (and d!829276 d!829186)))

(declare-fun lambda!107000 () Int)

(assert (=> bs!521860 (not (= lambda!107000 lambda!106985))))

(declare-fun bs!521861 () Bool)

(assert (= bs!521861 (and d!829276 d!829208)))

(assert (=> bs!521861 (not (= lambda!107000 lambda!106988))))

(declare-fun bs!521862 () Bool)

(assert (= bs!521862 (and d!829276 d!829210)))

(assert (=> bs!521862 (not (= lambda!107000 lambda!106991))))

(declare-fun bs!521863 () Bool)

(assert (= bs!521863 (and d!829276 d!829212)))

(assert (=> bs!521863 (not (= lambda!107000 lambda!106992))))

(assert (=> d!829276 true))

(declare-fun order!18119 () Int)

(declare-fun dynLambda!14301 (Int Int) Int)

(assert (=> d!829276 (< (dynLambda!14301 order!18119 lambda!106991) (dynLambda!14301 order!18119 lambda!107000))))

(assert (=> d!829276 (= (exists!1148 (exprs!3189 c!7184) lambda!106991) (not (forall!7074 (exprs!3189 c!7184) lambda!107000)))))

(declare-fun bs!521864 () Bool)

(assert (= bs!521864 d!829276))

(declare-fun m!3288489 () Bool)

(assert (=> bs!521864 m!3288489))

(assert (=> d!829210 d!829276))

(declare-fun bs!521865 () Bool)

(declare-fun d!829278 () Bool)

(assert (= bs!521865 (and d!829278 d!829276)))

(declare-fun lambda!107001 () Int)

(assert (=> bs!521865 (not (= lambda!107001 lambda!107000))))

(declare-fun bs!521866 () Bool)

(assert (= bs!521866 (and d!829278 d!829212)))

(assert (=> bs!521866 (not (= lambda!107001 lambda!106992))))

(declare-fun bs!521867 () Bool)

(assert (= bs!521867 (and d!829278 d!829210)))

(assert (=> bs!521867 (= lambda!107001 lambda!106991)))

(declare-fun bs!521868 () Bool)

(assert (= bs!521868 (and d!829278 d!829186)))

(assert (=> bs!521868 (not (= lambda!107001 lambda!106985))))

(declare-fun bs!521869 () Bool)

(assert (= bs!521869 (and d!829278 d!829208)))

(assert (=> bs!521869 (= lambda!107001 lambda!106988)))

(declare-fun b!2869301 () Bool)

(declare-fun e!1816204 () Option!6404)

(declare-fun e!1816203 () Option!6404)

(assert (=> b!2869301 (= e!1816204 e!1816203)))

(declare-fun lt!1017630 () Option!6404)

(assert (=> b!2869301 (= lt!1017630 (getLanguageWitness!410 (h!39781 (exprs!3189 (Context!5379 (t!233528 (exprs!3189 lt!1017548)))))))))

(declare-fun c!463833 () Bool)

(assert (=> b!2869301 (= c!463833 ((_ is Some!6403) lt!1017630))))

(declare-fun b!2869303 () Bool)

(assert (=> b!2869303 (= e!1816203 None!6403)))

(declare-fun b!2869304 () Bool)

(declare-fun e!1816202 () Option!6404)

(declare-fun lt!1017629 () Option!6404)

(assert (=> b!2869304 (= e!1816202 (Some!6403 (++!8166 (v!34525 lt!1017630) (v!34525 lt!1017629))))))

(declare-fun b!2869305 () Bool)

(assert (=> b!2869305 (= e!1816202 None!6403)))

(declare-fun b!2869306 () Bool)

(assert (=> b!2869306 (= e!1816204 (Some!6403 Nil!34362))))

(declare-fun lt!1017628 () Option!6404)

(assert (=> d!829278 (= (isEmpty!18701 lt!1017628) (exists!1148 (exprs!3189 (Context!5379 (t!233528 (exprs!3189 lt!1017548)))) lambda!107001))))

(assert (=> d!829278 (= lt!1017628 e!1816204)))

(declare-fun c!463832 () Bool)

(assert (=> d!829278 (= c!463832 ((_ is Cons!34361) (exprs!3189 (Context!5379 (t!233528 (exprs!3189 lt!1017548))))))))

(assert (=> d!829278 (= (getLanguageWitness!409 (Context!5379 (t!233528 (exprs!3189 lt!1017548)))) lt!1017628)))

(declare-fun b!2869302 () Bool)

(declare-fun c!463834 () Bool)

(assert (=> b!2869302 (= c!463834 ((_ is Some!6403) lt!1017629))))

(assert (=> b!2869302 (= lt!1017629 (getLanguageWitness!409 (Context!5379 (t!233528 (exprs!3189 (Context!5379 (t!233528 (exprs!3189 lt!1017548))))))))))

(assert (=> b!2869302 (= e!1816203 e!1816202)))

(assert (= (and d!829278 c!463832) b!2869301))

(assert (= (and d!829278 (not c!463832)) b!2869306))

(assert (= (and b!2869301 c!463833) b!2869302))

(assert (= (and b!2869301 (not c!463833)) b!2869303))

(assert (= (and b!2869302 c!463834) b!2869304))

(assert (= (and b!2869302 (not c!463834)) b!2869305))

(declare-fun m!3288491 () Bool)

(assert (=> b!2869301 m!3288491))

(declare-fun m!3288493 () Bool)

(assert (=> b!2869304 m!3288493))

(declare-fun m!3288495 () Bool)

(assert (=> d!829278 m!3288495))

(declare-fun m!3288497 () Bool)

(assert (=> d!829278 m!3288497))

(declare-fun m!3288499 () Bool)

(assert (=> b!2869302 m!3288499))

(assert (=> b!2868990 d!829278))

(declare-fun d!829280 () Bool)

(assert (=> d!829280 (= (head!6334 (get!10320 lt!1017549)) (h!39782 (get!10320 lt!1017549)))))

(assert (=> b!2868967 d!829280))

(declare-fun d!829282 () Bool)

(assert (=> d!829282 (= (isEmpty!18700 (tail!4559 (get!10320 lt!1017549))) ((_ is Nil!34362) (tail!4559 (get!10320 lt!1017549))))))

(assert (=> b!2868975 d!829282))

(declare-fun d!829284 () Bool)

(assert (=> d!829284 (= (tail!4559 (get!10320 lt!1017549)) (t!233529 (get!10320 lt!1017549)))))

(assert (=> b!2868975 d!829284))

(declare-fun b!2869307 () Bool)

(declare-fun e!1816210 () Option!6404)

(declare-fun lt!1017631 () Option!6404)

(declare-fun lt!1017633 () Option!6404)

(assert (=> b!2869307 (= e!1816210 (Some!6403 (++!8166 (v!34525 lt!1017631) (v!34525 lt!1017633))))))

(declare-fun b!2869308 () Bool)

(declare-fun c!463837 () Bool)

(assert (=> b!2869308 (= c!463837 ((_ is ElementMatch!8729) (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun e!1816211 () Option!6404)

(declare-fun e!1816207 () Option!6404)

(assert (=> b!2869308 (= e!1816211 e!1816207)))

(declare-fun bm!185182 () Bool)

(declare-fun call!185187 () Option!6404)

(declare-fun c!463839 () Bool)

(assert (=> bm!185182 (= call!185187 (getLanguageWitness!410 (ite c!463839 (regOne!17971 (h!39781 (exprs!3189 lt!1017548))) (regOne!17970 (h!39781 (exprs!3189 lt!1017548))))))))

(declare-fun b!2869309 () Bool)

(assert (=> b!2869309 (= e!1816210 None!6403)))

(declare-fun b!2869311 () Bool)

(declare-fun e!1816209 () Option!6404)

(declare-fun e!1816206 () Option!6404)

(assert (=> b!2869311 (= e!1816209 e!1816206)))

(assert (=> b!2869311 (= lt!1017631 call!185187)))

(declare-fun c!463835 () Bool)

(assert (=> b!2869311 (= c!463835 ((_ is Some!6403) lt!1017631))))

(declare-fun b!2869312 () Bool)

(declare-fun c!463841 () Bool)

(assert (=> b!2869312 (= c!463841 ((_ is Some!6403) lt!1017633))))

(declare-fun call!185188 () Option!6404)

(assert (=> b!2869312 (= lt!1017633 call!185188)))

(assert (=> b!2869312 (= e!1816206 e!1816210)))

(declare-fun b!2869313 () Bool)

(declare-fun e!1816212 () Option!6404)

(assert (=> b!2869313 (= e!1816209 e!1816212)))

(declare-fun lt!1017632 () Option!6404)

(assert (=> b!2869313 (= lt!1017632 call!185187)))

(declare-fun c!463836 () Bool)

(assert (=> b!2869313 (= c!463836 ((_ is Some!6403) lt!1017632))))

(declare-fun b!2869314 () Bool)

(assert (=> b!2869314 (= e!1816212 call!185188)))

(declare-fun b!2869315 () Bool)

(assert (=> b!2869315 (= e!1816206 None!6403)))

(declare-fun b!2869316 () Bool)

(assert (=> b!2869316 (= e!1816207 (Some!6403 (Cons!34362 (c!463662 (h!39781 (exprs!3189 lt!1017548))) Nil!34362)))))

(declare-fun b!2869317 () Bool)

(assert (=> b!2869317 (= c!463839 ((_ is Union!8729) (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun e!1816205 () Option!6404)

(assert (=> b!2869317 (= e!1816205 e!1816209)))

(declare-fun bm!185183 () Bool)

(assert (=> bm!185183 (= call!185188 (getLanguageWitness!410 (ite c!463839 (regTwo!17971 (h!39781 (exprs!3189 lt!1017548))) (regTwo!17970 (h!39781 (exprs!3189 lt!1017548))))))))

(declare-fun b!2869318 () Bool)

(assert (=> b!2869318 (= e!1816211 None!6403)))

(declare-fun b!2869319 () Bool)

(assert (=> b!2869319 (= e!1816212 lt!1017632)))

(declare-fun b!2869320 () Bool)

(assert (=> b!2869320 (= e!1816207 e!1816205)))

(declare-fun c!463838 () Bool)

(assert (=> b!2869320 (= c!463838 ((_ is Star!8729) (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun b!2869321 () Bool)

(assert (=> b!2869321 (= e!1816205 (Some!6403 Nil!34362))))

(declare-fun b!2869322 () Bool)

(declare-fun e!1816208 () Option!6404)

(assert (=> b!2869322 (= e!1816208 (Some!6403 Nil!34362))))

(declare-fun d!829286 () Bool)

(declare-fun c!463840 () Bool)

(assert (=> d!829286 (= c!463840 ((_ is EmptyExpr!8729) (h!39781 (exprs!3189 lt!1017548))))))

(assert (=> d!829286 (= (getLanguageWitness!410 (h!39781 (exprs!3189 lt!1017548))) e!1816208)))

(declare-fun b!2869310 () Bool)

(assert (=> b!2869310 (= e!1816208 e!1816211)))

(declare-fun c!463842 () Bool)

(assert (=> b!2869310 (= c!463842 ((_ is EmptyLang!8729) (h!39781 (exprs!3189 lt!1017548))))))

(assert (= (and d!829286 c!463840) b!2869322))

(assert (= (and d!829286 (not c!463840)) b!2869310))

(assert (= (and b!2869310 c!463842) b!2869318))

(assert (= (and b!2869310 (not c!463842)) b!2869308))

(assert (= (and b!2869308 c!463837) b!2869316))

(assert (= (and b!2869308 (not c!463837)) b!2869320))

(assert (= (and b!2869320 c!463838) b!2869321))

(assert (= (and b!2869320 (not c!463838)) b!2869317))

(assert (= (and b!2869317 c!463839) b!2869313))

(assert (= (and b!2869317 (not c!463839)) b!2869311))

(assert (= (and b!2869313 c!463836) b!2869319))

(assert (= (and b!2869313 (not c!463836)) b!2869314))

(assert (= (and b!2869311 c!463835) b!2869312))

(assert (= (and b!2869311 (not c!463835)) b!2869315))

(assert (= (and b!2869312 c!463841) b!2869307))

(assert (= (and b!2869312 (not c!463841)) b!2869309))

(assert (= (or b!2869314 b!2869312) bm!185183))

(assert (= (or b!2869313 b!2869311) bm!185182))

(declare-fun m!3288501 () Bool)

(assert (=> b!2869307 m!3288501))

(declare-fun m!3288503 () Bool)

(assert (=> bm!185182 m!3288503))

(declare-fun m!3288505 () Bool)

(assert (=> bm!185183 m!3288505))

(assert (=> b!2868989 d!829286))

(assert (=> b!2868966 d!829282))

(assert (=> b!2868966 d!829284))

(declare-fun d!829288 () Bool)

(declare-fun res!1190738 () Bool)

(declare-fun e!1816217 () Bool)

(assert (=> d!829288 (=> res!1190738 e!1816217)))

(assert (=> d!829288 (= res!1190738 ((_ is Nil!34361) (exprs!3189 lt!1017548)))))

(assert (=> d!829288 (= (forall!7074 (exprs!3189 lt!1017548) lambda!106985) e!1816217)))

(declare-fun b!2869327 () Bool)

(declare-fun e!1816218 () Bool)

(assert (=> b!2869327 (= e!1816217 e!1816218)))

(declare-fun res!1190739 () Bool)

(assert (=> b!2869327 (=> (not res!1190739) (not e!1816218))))

(declare-fun dynLambda!14302 (Int Regex!8729) Bool)

(assert (=> b!2869327 (= res!1190739 (dynLambda!14302 lambda!106985 (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun b!2869328 () Bool)

(assert (=> b!2869328 (= e!1816218 (forall!7074 (t!233528 (exprs!3189 lt!1017548)) lambda!106985))))

(assert (= (and d!829288 (not res!1190738)) b!2869327))

(assert (= (and b!2869327 res!1190739) b!2869328))

(declare-fun b_lambda!85979 () Bool)

(assert (=> (not b_lambda!85979) (not b!2869327)))

(declare-fun m!3288507 () Bool)

(assert (=> b!2869327 m!3288507))

(declare-fun m!3288509 () Bool)

(assert (=> b!2869328 m!3288509))

(assert (=> d!829186 d!829288))

(assert (=> b!2868969 d!829280))

(assert (=> d!829206 d!829266))

(declare-fun d!829290 () Bool)

(assert (=> d!829290 (= (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))) (v!34525 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))))

(assert (=> d!829206 d!829290))

(assert (=> d!829206 d!829214))

(declare-fun b!2869329 () Bool)

(declare-fun e!1816225 () Bool)

(declare-fun e!1816220 () Bool)

(assert (=> b!2869329 (= e!1816225 e!1816220)))

(declare-fun res!1190746 () Bool)

(assert (=> b!2869329 (=> (not res!1190746) (not e!1816220))))

(declare-fun lt!1017634 () Bool)

(assert (=> b!2869329 (= res!1190746 (not lt!1017634))))

(declare-fun b!2869331 () Bool)

(declare-fun res!1190741 () Bool)

(declare-fun e!1816224 () Bool)

(assert (=> b!2869331 (=> (not res!1190741) (not e!1816224))))

(declare-fun call!185189 () Bool)

(assert (=> b!2869331 (= res!1190741 (not call!185189))))

(declare-fun b!2869332 () Bool)

(declare-fun res!1190745 () Bool)

(declare-fun e!1816221 () Bool)

(assert (=> b!2869332 (=> res!1190745 e!1816221)))

(assert (=> b!2869332 (= res!1190745 (not (isEmpty!18700 (tail!4559 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))))))))

(declare-fun b!2869333 () Bool)

(assert (=> b!2869333 (= e!1816224 (= (head!6334 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))) (c!463662 (h!39781 (exprs!3189 c!7184)))))))

(declare-fun b!2869334 () Bool)

(declare-fun e!1816223 () Bool)

(assert (=> b!2869334 (= e!1816223 (matchR!3729 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))) (tail!4559 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))))))

(declare-fun bm!185184 () Bool)

(assert (=> bm!185184 (= call!185189 (isEmpty!18700 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869335 () Bool)

(assert (=> b!2869335 (= e!1816221 (not (= (head!6334 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))) (c!463662 (h!39781 (exprs!3189 c!7184))))))))

(declare-fun b!2869336 () Bool)

(declare-fun res!1190742 () Bool)

(assert (=> b!2869336 (=> res!1190742 e!1816225)))

(assert (=> b!2869336 (= res!1190742 e!1816224)))

(declare-fun res!1190747 () Bool)

(assert (=> b!2869336 (=> (not res!1190747) (not e!1816224))))

(assert (=> b!2869336 (= res!1190747 lt!1017634)))

(declare-fun b!2869337 () Bool)

(declare-fun e!1816219 () Bool)

(assert (=> b!2869337 (= e!1816219 (= lt!1017634 call!185189))))

(declare-fun b!2869338 () Bool)

(declare-fun e!1816222 () Bool)

(assert (=> b!2869338 (= e!1816222 (not lt!1017634))))

(declare-fun b!2869339 () Bool)

(assert (=> b!2869339 (= e!1816223 (nullable!2679 (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2869340 () Bool)

(assert (=> b!2869340 (= e!1816220 e!1816221)))

(declare-fun res!1190744 () Bool)

(assert (=> b!2869340 (=> res!1190744 e!1816221)))

(assert (=> b!2869340 (= res!1190744 call!185189)))

(declare-fun b!2869330 () Bool)

(declare-fun res!1190740 () Bool)

(assert (=> b!2869330 (=> res!1190740 e!1816225)))

(assert (=> b!2869330 (= res!1190740 (not ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184)))))))

(assert (=> b!2869330 (= e!1816222 e!1816225)))

(declare-fun d!829292 () Bool)

(assert (=> d!829292 e!1816219))

(declare-fun c!463844 () Bool)

(assert (=> d!829292 (= c!463844 ((_ is EmptyExpr!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (=> d!829292 (= lt!1017634 e!1816223)))

(declare-fun c!463845 () Bool)

(assert (=> d!829292 (= c!463845 (isEmpty!18700 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))))))

(assert (=> d!829292 (validRegex!3507 (h!39781 (exprs!3189 c!7184)))))

(assert (=> d!829292 (= (matchR!3729 (h!39781 (exprs!3189 c!7184)) (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184))))) lt!1017634)))

(declare-fun b!2869341 () Bool)

(declare-fun res!1190743 () Bool)

(assert (=> b!2869341 (=> (not res!1190743) (not e!1816224))))

(assert (=> b!2869341 (= res!1190743 (isEmpty!18700 (tail!4559 (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))))))

(declare-fun b!2869342 () Bool)

(assert (=> b!2869342 (= e!1816219 e!1816222)))

(declare-fun c!463843 () Bool)

(assert (=> b!2869342 (= c!463843 ((_ is EmptyLang!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (= (and d!829292 c!463845) b!2869339))

(assert (= (and d!829292 (not c!463845)) b!2869334))

(assert (= (and d!829292 c!463844) b!2869337))

(assert (= (and d!829292 (not c!463844)) b!2869342))

(assert (= (and b!2869342 c!463843) b!2869338))

(assert (= (and b!2869342 (not c!463843)) b!2869330))

(assert (= (and b!2869330 (not res!1190740)) b!2869336))

(assert (= (and b!2869336 res!1190747) b!2869331))

(assert (= (and b!2869331 res!1190741) b!2869341))

(assert (= (and b!2869341 res!1190743) b!2869333))

(assert (= (and b!2869336 (not res!1190742)) b!2869329))

(assert (= (and b!2869329 res!1190746) b!2869340))

(assert (= (and b!2869340 (not res!1190744)) b!2869332))

(assert (= (and b!2869332 (not res!1190745)) b!2869335))

(assert (= (or b!2869337 b!2869331 b!2869340) bm!185184))

(assert (=> b!2869334 m!3288317))

(declare-fun m!3288511 () Bool)

(assert (=> b!2869334 m!3288511))

(assert (=> b!2869334 m!3288511))

(declare-fun m!3288513 () Bool)

(assert (=> b!2869334 m!3288513))

(assert (=> b!2869334 m!3288317))

(declare-fun m!3288515 () Bool)

(assert (=> b!2869334 m!3288515))

(assert (=> b!2869334 m!3288513))

(assert (=> b!2869334 m!3288515))

(declare-fun m!3288517 () Bool)

(assert (=> b!2869334 m!3288517))

(assert (=> b!2869335 m!3288317))

(assert (=> b!2869335 m!3288511))

(assert (=> bm!185184 m!3288317))

(declare-fun m!3288519 () Bool)

(assert (=> bm!185184 m!3288519))

(assert (=> b!2869333 m!3288317))

(assert (=> b!2869333 m!3288511))

(assert (=> b!2869332 m!3288317))

(assert (=> b!2869332 m!3288515))

(assert (=> b!2869332 m!3288515))

(declare-fun m!3288521 () Bool)

(assert (=> b!2869332 m!3288521))

(assert (=> d!829292 m!3288317))

(assert (=> d!829292 m!3288519))

(assert (=> d!829292 m!3288313))

(assert (=> b!2869341 m!3288317))

(assert (=> b!2869341 m!3288515))

(assert (=> b!2869341 m!3288515))

(assert (=> b!2869341 m!3288521))

(assert (=> b!2869339 m!3288315))

(assert (=> d!829206 d!829292))

(declare-fun d!829294 () Bool)

(assert (=> d!829294 (matchR!3729 (h!39781 (exprs!3189 c!7184)) (get!10320 (getLanguageWitness!410 (h!39781 (exprs!3189 c!7184)))))))

(assert (=> d!829294 true))

(declare-fun _$101!81 () Unit!47959)

(assert (=> d!829294 (= (choose!16967 (h!39781 (exprs!3189 c!7184))) _$101!81)))

(declare-fun bs!521870 () Bool)

(assert (= bs!521870 d!829294))

(assert (=> bs!521870 m!3288249))

(assert (=> bs!521870 m!3288249))

(assert (=> bs!521870 m!3288317))

(assert (=> bs!521870 m!3288317))

(assert (=> bs!521870 m!3288319))

(assert (=> d!829206 d!829294))

(declare-fun d!829296 () Bool)

(declare-fun res!1190748 () Bool)

(declare-fun e!1816226 () Bool)

(assert (=> d!829296 (=> res!1190748 e!1816226)))

(assert (=> d!829296 (= res!1190748 ((_ is Nil!34361) (exprs!3189 c!7184)))))

(assert (=> d!829296 (= (forall!7074 (exprs!3189 c!7184) lambda!106992) e!1816226)))

(declare-fun b!2869343 () Bool)

(declare-fun e!1816227 () Bool)

(assert (=> b!2869343 (= e!1816226 e!1816227)))

(declare-fun res!1190749 () Bool)

(assert (=> b!2869343 (=> (not res!1190749) (not e!1816227))))

(assert (=> b!2869343 (= res!1190749 (dynLambda!14302 lambda!106992 (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2869344 () Bool)

(assert (=> b!2869344 (= e!1816227 (forall!7074 (t!233528 (exprs!3189 c!7184)) lambda!106992))))

(assert (= (and d!829296 (not res!1190748)) b!2869343))

(assert (= (and b!2869343 res!1190749) b!2869344))

(declare-fun b_lambda!85981 () Bool)

(assert (=> (not b_lambda!85981) (not b!2869343)))

(declare-fun m!3288523 () Bool)

(assert (=> b!2869343 m!3288523))

(declare-fun m!3288525 () Bool)

(assert (=> b!2869344 m!3288525))

(assert (=> d!829212 d!829296))

(declare-fun b!2869345 () Bool)

(declare-fun e!1816234 () Bool)

(declare-fun e!1816229 () Bool)

(assert (=> b!2869345 (= e!1816234 e!1816229)))

(declare-fun res!1190756 () Bool)

(assert (=> b!2869345 (=> (not res!1190756) (not e!1816229))))

(declare-fun lt!1017635 () Bool)

(assert (=> b!2869345 (= res!1190756 (not lt!1017635))))

(declare-fun b!2869347 () Bool)

(declare-fun res!1190751 () Bool)

(declare-fun e!1816233 () Bool)

(assert (=> b!2869347 (=> (not res!1190751) (not e!1816233))))

(declare-fun call!185190 () Bool)

(assert (=> b!2869347 (= res!1190751 (not call!185190))))

(declare-fun b!2869348 () Bool)

(declare-fun res!1190755 () Bool)

(declare-fun e!1816230 () Bool)

(assert (=> b!2869348 (=> res!1190755 e!1816230)))

(assert (=> b!2869348 (= res!1190755 (not (isEmpty!18700 (tail!4559 (tail!4559 (get!10320 lt!1017549))))))))

(declare-fun b!2869349 () Bool)

(assert (=> b!2869349 (= e!1816233 (= (head!6334 (tail!4559 (get!10320 lt!1017549))) (c!463662 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))))))))

(declare-fun b!2869350 () Bool)

(declare-fun e!1816232 () Bool)

(assert (=> b!2869350 (= e!1816232 (matchR!3729 (derivativeStep!2312 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))) (head!6334 (tail!4559 (get!10320 lt!1017549)))) (tail!4559 (tail!4559 (get!10320 lt!1017549)))))))

(declare-fun bm!185185 () Bool)

(assert (=> bm!185185 (= call!185190 (isEmpty!18700 (tail!4559 (get!10320 lt!1017549))))))

(declare-fun b!2869351 () Bool)

(assert (=> b!2869351 (= e!1816230 (not (= (head!6334 (tail!4559 (get!10320 lt!1017549))) (c!463662 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549)))))))))

(declare-fun b!2869352 () Bool)

(declare-fun res!1190752 () Bool)

(assert (=> b!2869352 (=> res!1190752 e!1816234)))

(assert (=> b!2869352 (= res!1190752 e!1816233)))

(declare-fun res!1190757 () Bool)

(assert (=> b!2869352 (=> (not res!1190757) (not e!1816233))))

(assert (=> b!2869352 (= res!1190757 lt!1017635)))

(declare-fun b!2869353 () Bool)

(declare-fun e!1816228 () Bool)

(assert (=> b!2869353 (= e!1816228 (= lt!1017635 call!185190))))

(declare-fun b!2869354 () Bool)

(declare-fun e!1816231 () Bool)

(assert (=> b!2869354 (= e!1816231 (not lt!1017635))))

(declare-fun b!2869355 () Bool)

(assert (=> b!2869355 (= e!1816232 (nullable!2679 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549)))))))

(declare-fun b!2869356 () Bool)

(assert (=> b!2869356 (= e!1816229 e!1816230)))

(declare-fun res!1190754 () Bool)

(assert (=> b!2869356 (=> res!1190754 e!1816230)))

(assert (=> b!2869356 (= res!1190754 call!185190)))

(declare-fun b!2869346 () Bool)

(declare-fun res!1190750 () Bool)

(assert (=> b!2869346 (=> res!1190750 e!1816234)))

(assert (=> b!2869346 (= res!1190750 (not ((_ is ElementMatch!8729) (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))))))))

(assert (=> b!2869346 (= e!1816231 e!1816234)))

(declare-fun d!829298 () Bool)

(assert (=> d!829298 e!1816228))

(declare-fun c!463847 () Bool)

(assert (=> d!829298 (= c!463847 ((_ is EmptyExpr!8729) (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549)))))))

(assert (=> d!829298 (= lt!1017635 e!1816232)))

(declare-fun c!463848 () Bool)

(assert (=> d!829298 (= c!463848 (isEmpty!18700 (tail!4559 (get!10320 lt!1017549))))))

(assert (=> d!829298 (validRegex!3507 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))))))

(assert (=> d!829298 (= (matchR!3729 (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))) (tail!4559 (get!10320 lt!1017549))) lt!1017635)))

(declare-fun b!2869357 () Bool)

(declare-fun res!1190753 () Bool)

(assert (=> b!2869357 (=> (not res!1190753) (not e!1816233))))

(assert (=> b!2869357 (= res!1190753 (isEmpty!18700 (tail!4559 (tail!4559 (get!10320 lt!1017549)))))))

(declare-fun b!2869358 () Bool)

(assert (=> b!2869358 (= e!1816228 e!1816231)))

(declare-fun c!463846 () Bool)

(assert (=> b!2869358 (= c!463846 ((_ is EmptyLang!8729) (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549)))))))

(assert (= (and d!829298 c!463848) b!2869355))

(assert (= (and d!829298 (not c!463848)) b!2869350))

(assert (= (and d!829298 c!463847) b!2869353))

(assert (= (and d!829298 (not c!463847)) b!2869358))

(assert (= (and b!2869358 c!463846) b!2869354))

(assert (= (and b!2869358 (not c!463846)) b!2869346))

(assert (= (and b!2869346 (not res!1190750)) b!2869352))

(assert (= (and b!2869352 res!1190757) b!2869347))

(assert (= (and b!2869347 res!1190751) b!2869357))

(assert (= (and b!2869357 res!1190753) b!2869349))

(assert (= (and b!2869352 (not res!1190752)) b!2869345))

(assert (= (and b!2869345 res!1190756) b!2869356))

(assert (= (and b!2869356 (not res!1190754)) b!2869348))

(assert (= (and b!2869348 (not res!1190755)) b!2869351))

(assert (= (or b!2869353 b!2869347 b!2869356) bm!185185))

(assert (=> b!2869350 m!3288305))

(declare-fun m!3288527 () Bool)

(assert (=> b!2869350 m!3288527))

(assert (=> b!2869350 m!3288303))

(assert (=> b!2869350 m!3288527))

(declare-fun m!3288529 () Bool)

(assert (=> b!2869350 m!3288529))

(assert (=> b!2869350 m!3288305))

(declare-fun m!3288531 () Bool)

(assert (=> b!2869350 m!3288531))

(assert (=> b!2869350 m!3288529))

(assert (=> b!2869350 m!3288531))

(declare-fun m!3288533 () Bool)

(assert (=> b!2869350 m!3288533))

(assert (=> b!2869351 m!3288305))

(assert (=> b!2869351 m!3288527))

(assert (=> bm!185185 m!3288305))

(assert (=> bm!185185 m!3288311))

(assert (=> b!2869349 m!3288305))

(assert (=> b!2869349 m!3288527))

(assert (=> b!2869348 m!3288305))

(assert (=> b!2869348 m!3288531))

(assert (=> b!2869348 m!3288531))

(declare-fun m!3288535 () Bool)

(assert (=> b!2869348 m!3288535))

(assert (=> d!829298 m!3288305))

(assert (=> d!829298 m!3288311))

(assert (=> d!829298 m!3288303))

(declare-fun m!3288537 () Bool)

(assert (=> d!829298 m!3288537))

(assert (=> b!2869357 m!3288305))

(assert (=> b!2869357 m!3288531))

(assert (=> b!2869357 m!3288531))

(assert (=> b!2869357 m!3288535))

(assert (=> b!2869355 m!3288303))

(declare-fun m!3288539 () Bool)

(assert (=> b!2869355 m!3288539))

(assert (=> b!2868968 d!829298))

(declare-fun b!2869379 () Bool)

(declare-fun e!1816246 () Regex!8729)

(declare-fun call!185200 () Regex!8729)

(declare-fun call!185199 () Regex!8729)

(assert (=> b!2869379 (= e!1816246 (Union!8729 call!185200 call!185199))))

(declare-fun b!2869380 () Bool)

(declare-fun e!1816245 () Regex!8729)

(assert (=> b!2869380 (= e!1816245 EmptyLang!8729)))

(declare-fun bm!185194 () Bool)

(declare-fun call!185201 () Regex!8729)

(assert (=> bm!185194 (= call!185201 call!185200)))

(declare-fun b!2869381 () Bool)

(declare-fun e!1816248 () Regex!8729)

(assert (=> b!2869381 (= e!1816248 (Concat!14050 call!185201 (h!39781 (exprs!3189 c!7184))))))

(declare-fun d!829300 () Bool)

(declare-fun lt!1017638 () Regex!8729)

(assert (=> d!829300 (validRegex!3507 lt!1017638)))

(assert (=> d!829300 (= lt!1017638 e!1816245)))

(declare-fun c!463860 () Bool)

(assert (=> d!829300 (= c!463860 (or ((_ is EmptyExpr!8729) (h!39781 (exprs!3189 c!7184))) ((_ is EmptyLang!8729) (h!39781 (exprs!3189 c!7184)))))))

(assert (=> d!829300 (validRegex!3507 (h!39781 (exprs!3189 c!7184)))))

(assert (=> d!829300 (= (derivativeStep!2312 (h!39781 (exprs!3189 c!7184)) (head!6334 (get!10320 lt!1017549))) lt!1017638)))

(declare-fun b!2869382 () Bool)

(declare-fun e!1816247 () Regex!8729)

(declare-fun call!185202 () Regex!8729)

(assert (=> b!2869382 (= e!1816247 (Union!8729 (Concat!14050 call!185202 (regTwo!17970 (h!39781 (exprs!3189 c!7184)))) EmptyLang!8729))))

(declare-fun b!2869383 () Bool)

(declare-fun e!1816249 () Regex!8729)

(assert (=> b!2869383 (= e!1816245 e!1816249)))

(declare-fun c!463863 () Bool)

(assert (=> b!2869383 (= c!463863 ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun b!2869384 () Bool)

(declare-fun c!463861 () Bool)

(assert (=> b!2869384 (= c!463861 ((_ is Union!8729) (h!39781 (exprs!3189 c!7184))))))

(assert (=> b!2869384 (= e!1816249 e!1816246)))

(declare-fun b!2869385 () Bool)

(declare-fun c!463859 () Bool)

(assert (=> b!2869385 (= c!463859 (nullable!2679 (regOne!17970 (h!39781 (exprs!3189 c!7184)))))))

(assert (=> b!2869385 (= e!1816248 e!1816247)))

(declare-fun bm!185195 () Bool)

(assert (=> bm!185195 (= call!185202 call!185201)))

(declare-fun bm!185196 () Bool)

(assert (=> bm!185196 (= call!185199 (derivativeStep!2312 (ite c!463861 (regTwo!17971 (h!39781 (exprs!3189 c!7184))) (regTwo!17970 (h!39781 (exprs!3189 c!7184)))) (head!6334 (get!10320 lt!1017549))))))

(declare-fun b!2869386 () Bool)

(assert (=> b!2869386 (= e!1816249 (ite (= (head!6334 (get!10320 lt!1017549)) (c!463662 (h!39781 (exprs!3189 c!7184)))) EmptyExpr!8729 EmptyLang!8729))))

(declare-fun b!2869387 () Bool)

(assert (=> b!2869387 (= e!1816247 (Union!8729 (Concat!14050 call!185202 (regTwo!17970 (h!39781 (exprs!3189 c!7184)))) call!185199))))

(declare-fun b!2869388 () Bool)

(assert (=> b!2869388 (= e!1816246 e!1816248)))

(declare-fun c!463862 () Bool)

(assert (=> b!2869388 (= c!463862 ((_ is Star!8729) (h!39781 (exprs!3189 c!7184))))))

(declare-fun bm!185197 () Bool)

(assert (=> bm!185197 (= call!185200 (derivativeStep!2312 (ite c!463861 (regOne!17971 (h!39781 (exprs!3189 c!7184))) (ite c!463862 (reg!9058 (h!39781 (exprs!3189 c!7184))) (regOne!17970 (h!39781 (exprs!3189 c!7184))))) (head!6334 (get!10320 lt!1017549))))))

(assert (= (and d!829300 c!463860) b!2869380))

(assert (= (and d!829300 (not c!463860)) b!2869383))

(assert (= (and b!2869383 c!463863) b!2869386))

(assert (= (and b!2869383 (not c!463863)) b!2869384))

(assert (= (and b!2869384 c!463861) b!2869379))

(assert (= (and b!2869384 (not c!463861)) b!2869388))

(assert (= (and b!2869388 c!463862) b!2869381))

(assert (= (and b!2869388 (not c!463862)) b!2869385))

(assert (= (and b!2869385 c!463859) b!2869387))

(assert (= (and b!2869385 (not c!463859)) b!2869382))

(assert (= (or b!2869387 b!2869382) bm!185195))

(assert (= (or b!2869381 bm!185195) bm!185194))

(assert (= (or b!2869379 bm!185194) bm!185197))

(assert (= (or b!2869379 b!2869387) bm!185196))

(declare-fun m!3288541 () Bool)

(assert (=> d!829300 m!3288541))

(assert (=> d!829300 m!3288313))

(declare-fun m!3288543 () Bool)

(assert (=> b!2869385 m!3288543))

(assert (=> bm!185196 m!3288301))

(declare-fun m!3288545 () Bool)

(assert (=> bm!185196 m!3288545))

(assert (=> bm!185197 m!3288301))

(declare-fun m!3288547 () Bool)

(assert (=> bm!185197 m!3288547))

(assert (=> b!2868968 d!829300))

(assert (=> b!2868968 d!829280))

(assert (=> b!2868968 d!829284))

(declare-fun b!2869389 () Bool)

(declare-fun e!1816250 () List!34486)

(assert (=> b!2869389 (= e!1816250 (v!34525 lt!1017587))))

(declare-fun b!2869390 () Bool)

(assert (=> b!2869390 (= e!1816250 (Cons!34362 (h!39782 (v!34525 lt!1017588)) (++!8166 (t!233529 (v!34525 lt!1017588)) (v!34525 lt!1017587))))))

(declare-fun b!2869392 () Bool)

(declare-fun e!1816251 () Bool)

(declare-fun lt!1017639 () List!34486)

(assert (=> b!2869392 (= e!1816251 (or (not (= (v!34525 lt!1017587) Nil!34362)) (= lt!1017639 (v!34525 lt!1017588))))))

(declare-fun b!2869391 () Bool)

(declare-fun res!1190758 () Bool)

(assert (=> b!2869391 (=> (not res!1190758) (not e!1816251))))

(assert (=> b!2869391 (= res!1190758 (= (size!26313 lt!1017639) (+ (size!26313 (v!34525 lt!1017588)) (size!26313 (v!34525 lt!1017587)))))))

(declare-fun d!829302 () Bool)

(assert (=> d!829302 e!1816251))

(declare-fun res!1190759 () Bool)

(assert (=> d!829302 (=> (not res!1190759) (not e!1816251))))

(assert (=> d!829302 (= res!1190759 (= (content!4692 lt!1017639) ((_ map or) (content!4692 (v!34525 lt!1017588)) (content!4692 (v!34525 lt!1017587)))))))

(assert (=> d!829302 (= lt!1017639 e!1816250)))

(declare-fun c!463864 () Bool)

(assert (=> d!829302 (= c!463864 ((_ is Nil!34362) (v!34525 lt!1017588)))))

(assert (=> d!829302 (= (++!8166 (v!34525 lt!1017588) (v!34525 lt!1017587)) lt!1017639)))

(assert (= (and d!829302 c!463864) b!2869389))

(assert (= (and d!829302 (not c!463864)) b!2869390))

(assert (= (and d!829302 res!1190759) b!2869391))

(assert (= (and b!2869391 res!1190758) b!2869392))

(declare-fun m!3288549 () Bool)

(assert (=> b!2869390 m!3288549))

(declare-fun m!3288551 () Bool)

(assert (=> b!2869391 m!3288551))

(declare-fun m!3288553 () Bool)

(assert (=> b!2869391 m!3288553))

(declare-fun m!3288555 () Bool)

(assert (=> b!2869391 m!3288555))

(declare-fun m!3288557 () Bool)

(assert (=> d!829302 m!3288557))

(declare-fun m!3288559 () Bool)

(assert (=> d!829302 m!3288559))

(declare-fun m!3288561 () Bool)

(assert (=> d!829302 m!3288561))

(assert (=> b!2868992 d!829302))

(assert (=> bm!185133 d!829264))

(declare-fun d!829304 () Bool)

(assert (=> d!829304 (= (isEmpty!18701 lt!1017586) (not ((_ is Some!6403) lt!1017586)))))

(assert (=> d!829208 d!829304))

(declare-fun bs!521871 () Bool)

(declare-fun d!829306 () Bool)

(assert (= bs!521871 (and d!829306 d!829276)))

(declare-fun lambda!107002 () Int)

(assert (=> bs!521871 (= (= lambda!106988 lambda!106991) (= lambda!107002 lambda!107000))))

(declare-fun bs!521872 () Bool)

(assert (= bs!521872 (and d!829306 d!829212)))

(assert (=> bs!521872 (not (= lambda!107002 lambda!106992))))

(declare-fun bs!521873 () Bool)

(assert (= bs!521873 (and d!829306 d!829210)))

(assert (=> bs!521873 (not (= lambda!107002 lambda!106991))))

(declare-fun bs!521874 () Bool)

(assert (= bs!521874 (and d!829306 d!829186)))

(assert (=> bs!521874 (not (= lambda!107002 lambda!106985))))

(declare-fun bs!521875 () Bool)

(assert (= bs!521875 (and d!829306 d!829278)))

(assert (=> bs!521875 (not (= lambda!107002 lambda!107001))))

(declare-fun bs!521876 () Bool)

(assert (= bs!521876 (and d!829306 d!829208)))

(assert (=> bs!521876 (not (= lambda!107002 lambda!106988))))

(assert (=> d!829306 true))

(assert (=> d!829306 (< (dynLambda!14301 order!18119 lambda!106988) (dynLambda!14301 order!18119 lambda!107002))))

(assert (=> d!829306 (= (exists!1148 (exprs!3189 lt!1017548) lambda!106988) (not (forall!7074 (exprs!3189 lt!1017548) lambda!107002)))))

(declare-fun bs!521877 () Bool)

(assert (= bs!521877 d!829306))

(declare-fun m!3288563 () Bool)

(assert (=> bs!521877 m!3288563))

(assert (=> d!829208 d!829306))

(declare-fun b!2869404 () Bool)

(declare-fun e!1816254 () Bool)

(declare-fun tp!923272 () Bool)

(declare-fun tp!923275 () Bool)

(assert (=> b!2869404 (= e!1816254 (and tp!923272 tp!923275))))

(declare-fun b!2869403 () Bool)

(declare-fun tp_is_empty!15063 () Bool)

(assert (=> b!2869403 (= e!1816254 tp_is_empty!15063)))

(declare-fun b!2869405 () Bool)

(declare-fun tp!923274 () Bool)

(assert (=> b!2869405 (= e!1816254 tp!923274)))

(declare-fun b!2869406 () Bool)

(declare-fun tp!923273 () Bool)

(declare-fun tp!923276 () Bool)

(assert (=> b!2869406 (= e!1816254 (and tp!923273 tp!923276))))

(assert (=> b!2869047 (= tp!923243 e!1816254)))

(assert (= (and b!2869047 ((_ is ElementMatch!8729) (h!39781 (exprs!3189 c!7184)))) b!2869403))

(assert (= (and b!2869047 ((_ is Concat!14050) (h!39781 (exprs!3189 c!7184)))) b!2869404))

(assert (= (and b!2869047 ((_ is Star!8729) (h!39781 (exprs!3189 c!7184)))) b!2869405))

(assert (= (and b!2869047 ((_ is Union!8729) (h!39781 (exprs!3189 c!7184)))) b!2869406))

(declare-fun b!2869407 () Bool)

(declare-fun e!1816255 () Bool)

(declare-fun tp!923277 () Bool)

(declare-fun tp!923278 () Bool)

(assert (=> b!2869407 (= e!1816255 (and tp!923277 tp!923278))))

(assert (=> b!2869047 (= tp!923244 e!1816255)))

(assert (= (and b!2869047 ((_ is Cons!34361) (t!233528 (exprs!3189 c!7184)))) b!2869407))

(declare-fun b_lambda!85983 () Bool)

(assert (= b_lambda!85979 (or d!829186 b_lambda!85983)))

(declare-fun bs!521878 () Bool)

(declare-fun d!829308 () Bool)

(assert (= bs!521878 (and d!829308 d!829186)))

(assert (=> bs!521878 (= (dynLambda!14302 lambda!106985 (h!39781 (exprs!3189 lt!1017548))) (validRegex!3507 (h!39781 (exprs!3189 lt!1017548))))))

(declare-fun m!3288565 () Bool)

(assert (=> bs!521878 m!3288565))

(assert (=> b!2869327 d!829308))

(declare-fun b_lambda!85985 () Bool)

(assert (= b_lambda!85981 (or d!829212 b_lambda!85985)))

(declare-fun bs!521879 () Bool)

(declare-fun d!829310 () Bool)

(assert (= bs!521879 (and d!829310 d!829212)))

(assert (=> bs!521879 (= (dynLambda!14302 lambda!106992 (h!39781 (exprs!3189 c!7184))) (validRegex!3507 (h!39781 (exprs!3189 c!7184))))))

(assert (=> bs!521879 m!3288313))

(assert (=> b!2869343 d!829310))

(check-sat (not bm!185181) (not d!829306) (not bm!185180) (not b!2869391) (not b!2869406) (not b!2869390) (not b!2869296) (not b!2869304) (not b!2869328) (not b!2869357) (not b!2869271) (not b!2869255) (not b!2869302) (not b!2869253) (not b!2869335) (not b_lambda!85983) (not b!2869344) (not b!2869297) (not b!2869332) (not b!2869407) (not bm!185176) (not d!829292) (not b!2869349) (not bs!521879) (not b!2869307) (not d!829278) (not d!829276) (not d!829302) (not b!2869334) (not d!829300) (not bm!185177) (not b!2869348) (not b!2869339) (not bm!185178) (not bm!185179) (not bm!185183) (not d!829298) (not bs!521878) (not b!2869405) (not bm!185184) (not b!2869333) (not b!2869301) (not b!2869385) (not b!2869350) (not bm!185185) (not b!2869404) (not bm!185182) (not d!829272) tp_is_empty!15063 (not d!829294) (not d!829274) (not b!2869351) (not b_lambda!85985) (not b!2869355) (not b!2869341) (not bm!185196) (not bm!185197))
(check-sat)
