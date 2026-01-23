; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739136 () Bool)

(assert start!739136)

(declare-fun b!7755910 () Bool)

(declare-fun e!4597329 () Bool)

(declare-fun tp_is_empty!51633 () Bool)

(declare-fun tp!2276143 () Bool)

(assert (=> b!7755910 (= e!4597329 (and tp_is_empty!51633 tp!2276143))))

(declare-fun b!7755911 () Bool)

(declare-fun e!4597328 () Bool)

(declare-fun tp!2276141 () Bool)

(declare-fun tp!2276136 () Bool)

(assert (=> b!7755911 (= e!4597328 (and tp!2276141 tp!2276136))))

(declare-fun b!7755912 () Bool)

(declare-fun e!4597323 () Bool)

(declare-fun tp!2276142 () Bool)

(declare-fun tp!2276135 () Bool)

(assert (=> b!7755912 (= e!4597323 (and tp!2276142 tp!2276135))))

(declare-fun res!3092229 () Bool)

(declare-fun e!4597327 () Bool)

(assert (=> start!739136 (=> (not res!3092229) (not e!4597327))))

(declare-datatypes ((C!41604 0))(
  ( (C!41605 (val!31242 Int)) )
))
(declare-datatypes ((Regex!20639 0))(
  ( (ElementMatch!20639 (c!1430368 C!41604)) (Concat!29484 (regOne!41790 Regex!20639) (regTwo!41790 Regex!20639)) (EmptyExpr!20639) (Star!20639 (reg!20968 Regex!20639)) (EmptyLang!20639) (Union!20639 (regOne!41791 Regex!20639) (regTwo!41791 Regex!20639)) )
))
(declare-fun r1!6249 () Regex!20639)

(declare-fun validRegex!11057 (Regex!20639) Bool)

(assert (=> start!739136 (= res!3092229 (validRegex!11057 r1!6249))))

(assert (=> start!739136 e!4597327))

(declare-fun e!4597326 () Bool)

(assert (=> start!739136 e!4597326))

(declare-fun e!4597325 () Bool)

(assert (=> start!739136 e!4597325))

(assert (=> start!739136 e!4597329))

(assert (=> start!739136 e!4597323))

(assert (=> start!739136 e!4597328))

(declare-fun b!7755913 () Bool)

(declare-fun tp!2276140 () Bool)

(assert (=> b!7755913 (= e!4597323 tp!2276140)))

(declare-fun b!7755914 () Bool)

(declare-fun e!4597324 () Bool)

(declare-datatypes ((List!73484 0))(
  ( (Nil!73360) (Cons!73360 (h!79808 C!41604) (t!388219 List!73484)) )
))
(declare-fun s1!4090 () List!73484)

(declare-fun matchR!10123 (Regex!20639 List!73484) Bool)

(assert (=> b!7755914 (= e!4597324 (not (matchR!10123 r1!6249 s1!4090)))))

(declare-fun b!7755915 () Bool)

(declare-fun tp!2276132 () Bool)

(assert (=> b!7755915 (= e!4597325 (and tp_is_empty!51633 tp!2276132))))

(declare-fun b!7755916 () Bool)

(declare-fun res!3092232 () Bool)

(assert (=> b!7755916 (=> (not res!3092232) (not e!4597327))))

(declare-fun s!14266 () List!73484)

(declare-fun s2!3712 () List!73484)

(declare-fun ++!17820 (List!73484 List!73484) List!73484)

(assert (=> b!7755916 (= res!3092232 (= s!14266 (++!17820 s1!4090 s2!3712)))))

(declare-fun b!7755917 () Bool)

(declare-fun tp!2276131 () Bool)

(assert (=> b!7755917 (= e!4597326 (and tp_is_empty!51633 tp!2276131))))

(declare-fun b!7755918 () Bool)

(assert (=> b!7755918 (= e!4597323 tp_is_empty!51633)))

(declare-fun b!7755919 () Bool)

(declare-fun res!3092230 () Bool)

(assert (=> b!7755919 (=> (not res!3092230) (not e!4597324))))

(declare-datatypes ((tuple2!69672 0))(
  ( (tuple2!69673 (_1!38139 List!73484) (_2!38139 List!73484)) )
))
(declare-datatypes ((Option!17630 0))(
  ( (None!17629) (Some!17629 (v!54764 tuple2!69672)) )
))
(declare-fun lt!2669782 () Option!17630)

(declare-fun get!26117 (Option!17630) tuple2!69672)

(assert (=> b!7755919 (= res!3092230 (= (get!26117 lt!2669782) (tuple2!69673 s1!4090 s2!3712)))))

(declare-fun b!7755920 () Bool)

(assert (=> b!7755920 (= e!4597327 e!4597324)))

(declare-fun res!3092228 () Bool)

(assert (=> b!7755920 (=> (not res!3092228) (not e!4597324))))

(declare-fun isDefined!14244 (Option!17630) Bool)

(assert (=> b!7755920 (= res!3092228 (isDefined!14244 lt!2669782))))

(declare-fun r2!6187 () Regex!20639)

(declare-fun findConcatSeparation!3660 (Regex!20639 Regex!20639 List!73484 List!73484 List!73484) Option!17630)

(assert (=> b!7755920 (= lt!2669782 (findConcatSeparation!3660 r1!6249 r2!6187 Nil!73360 s!14266 s!14266))))

(declare-fun b!7755921 () Bool)

(declare-fun tp!2276134 () Bool)

(assert (=> b!7755921 (= e!4597328 tp!2276134)))

(declare-fun b!7755922 () Bool)

(declare-fun tp!2276133 () Bool)

(declare-fun tp!2276137 () Bool)

(assert (=> b!7755922 (= e!4597323 (and tp!2276133 tp!2276137))))

(declare-fun b!7755923 () Bool)

(declare-fun tp!2276138 () Bool)

(declare-fun tp!2276139 () Bool)

(assert (=> b!7755923 (= e!4597328 (and tp!2276138 tp!2276139))))

(declare-fun b!7755924 () Bool)

(declare-fun res!3092231 () Bool)

(assert (=> b!7755924 (=> (not res!3092231) (not e!4597327))))

(assert (=> b!7755924 (= res!3092231 (validRegex!11057 r2!6187))))

(declare-fun b!7755925 () Bool)

(assert (=> b!7755925 (= e!4597328 tp_is_empty!51633)))

(assert (= (and start!739136 res!3092229) b!7755924))

(assert (= (and b!7755924 res!3092231) b!7755916))

(assert (= (and b!7755916 res!3092232) b!7755920))

(assert (= (and b!7755920 res!3092228) b!7755919))

(assert (= (and b!7755919 res!3092230) b!7755914))

(get-info :version)

(assert (= (and start!739136 ((_ is Cons!73360) s!14266)) b!7755917))

(assert (= (and start!739136 ((_ is Cons!73360) s2!3712)) b!7755915))

(assert (= (and start!739136 ((_ is Cons!73360) s1!4090)) b!7755910))

(assert (= (and start!739136 ((_ is ElementMatch!20639) r1!6249)) b!7755918))

(assert (= (and start!739136 ((_ is Concat!29484) r1!6249)) b!7755922))

(assert (= (and start!739136 ((_ is Star!20639) r1!6249)) b!7755913))

(assert (= (and start!739136 ((_ is Union!20639) r1!6249)) b!7755912))

(assert (= (and start!739136 ((_ is ElementMatch!20639) r2!6187)) b!7755925))

(assert (= (and start!739136 ((_ is Concat!29484) r2!6187)) b!7755923))

(assert (= (and start!739136 ((_ is Star!20639) r2!6187)) b!7755921))

(assert (= (and start!739136 ((_ is Union!20639) r2!6187)) b!7755911))

(declare-fun m!8218924 () Bool)

(assert (=> start!739136 m!8218924))

(declare-fun m!8218926 () Bool)

(assert (=> b!7755919 m!8218926))

(declare-fun m!8218928 () Bool)

(assert (=> b!7755916 m!8218928))

(declare-fun m!8218930 () Bool)

(assert (=> b!7755914 m!8218930))

(declare-fun m!8218932 () Bool)

(assert (=> b!7755924 m!8218932))

(declare-fun m!8218934 () Bool)

(assert (=> b!7755920 m!8218934))

(declare-fun m!8218936 () Bool)

(assert (=> b!7755920 m!8218936))

(check-sat (not b!7755920) (not b!7755915) (not b!7755919) (not b!7755923) tp_is_empty!51633 (not b!7755911) (not b!7755916) (not b!7755910) (not b!7755912) (not b!7755921) (not b!7755914) (not b!7755913) (not b!7755917) (not b!7755924) (not b!7755922) (not start!739136))
(check-sat)
(get-model)

(declare-fun b!7755962 () Bool)

(declare-fun e!4597356 () List!73484)

(assert (=> b!7755962 (= e!4597356 (Cons!73360 (h!79808 s1!4090) (++!17820 (t!388219 s1!4090) s2!3712)))))

(declare-fun e!4597355 () Bool)

(declare-fun b!7755964 () Bool)

(declare-fun lt!2669785 () List!73484)

(assert (=> b!7755964 (= e!4597355 (or (not (= s2!3712 Nil!73360)) (= lt!2669785 s1!4090)))))

(declare-fun b!7755963 () Bool)

(declare-fun res!3092253 () Bool)

(assert (=> b!7755963 (=> (not res!3092253) (not e!4597355))))

(declare-fun size!42666 (List!73484) Int)

(assert (=> b!7755963 (= res!3092253 (= (size!42666 lt!2669785) (+ (size!42666 s1!4090) (size!42666 s2!3712))))))

(declare-fun d!2343323 () Bool)

(assert (=> d!2343323 e!4597355))

(declare-fun res!3092252 () Bool)

(assert (=> d!2343323 (=> (not res!3092252) (not e!4597355))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15563 (List!73484) (InoxSet C!41604))

(assert (=> d!2343323 (= res!3092252 (= (content!15563 lt!2669785) ((_ map or) (content!15563 s1!4090) (content!15563 s2!3712))))))

(assert (=> d!2343323 (= lt!2669785 e!4597356)))

(declare-fun c!1430377 () Bool)

(assert (=> d!2343323 (= c!1430377 ((_ is Nil!73360) s1!4090))))

(assert (=> d!2343323 (= (++!17820 s1!4090 s2!3712) lt!2669785)))

(declare-fun b!7755961 () Bool)

(assert (=> b!7755961 (= e!4597356 s2!3712)))

(assert (= (and d!2343323 c!1430377) b!7755961))

(assert (= (and d!2343323 (not c!1430377)) b!7755962))

(assert (= (and d!2343323 res!3092252) b!7755963))

(assert (= (and b!7755963 res!3092253) b!7755964))

(declare-fun m!8218944 () Bool)

(assert (=> b!7755962 m!8218944))

(declare-fun m!8218946 () Bool)

(assert (=> b!7755963 m!8218946))

(declare-fun m!8218948 () Bool)

(assert (=> b!7755963 m!8218948))

(declare-fun m!8218950 () Bool)

(assert (=> b!7755963 m!8218950))

(declare-fun m!8218952 () Bool)

(assert (=> d!2343323 m!8218952))

(declare-fun m!8218954 () Bool)

(assert (=> d!2343323 m!8218954))

(declare-fun m!8218956 () Bool)

(assert (=> d!2343323 m!8218956))

(assert (=> b!7755916 d!2343323))

(declare-fun b!7756023 () Bool)

(declare-fun e!4597394 () Bool)

(declare-fun e!4597391 () Bool)

(assert (=> b!7756023 (= e!4597394 e!4597391)))

(declare-fun c!1430392 () Bool)

(assert (=> b!7756023 (= c!1430392 ((_ is Star!20639) r1!6249))))

(declare-fun call!718956 () Bool)

(declare-fun c!1430391 () Bool)

(declare-fun bm!718951 () Bool)

(assert (=> bm!718951 (= call!718956 (validRegex!11057 (ite c!1430392 (reg!20968 r1!6249) (ite c!1430391 (regTwo!41791 r1!6249) (regOne!41790 r1!6249)))))))

(declare-fun b!7756024 () Bool)

(declare-fun e!4597395 () Bool)

(declare-fun call!718958 () Bool)

(assert (=> b!7756024 (= e!4597395 call!718958)))

(declare-fun b!7756025 () Bool)

(declare-fun e!4597397 () Bool)

(assert (=> b!7756025 (= e!4597391 e!4597397)))

(assert (=> b!7756025 (= c!1430391 ((_ is Union!20639) r1!6249))))

(declare-fun d!2343331 () Bool)

(declare-fun res!3092287 () Bool)

(assert (=> d!2343331 (=> res!3092287 e!4597394)))

(assert (=> d!2343331 (= res!3092287 ((_ is ElementMatch!20639) r1!6249))))

(assert (=> d!2343331 (= (validRegex!11057 r1!6249) e!4597394)))

(declare-fun bm!718952 () Bool)

(assert (=> bm!718952 (= call!718958 (validRegex!11057 (ite c!1430391 (regOne!41791 r1!6249) (regTwo!41790 r1!6249))))))

(declare-fun bm!718953 () Bool)

(declare-fun call!718957 () Bool)

(assert (=> bm!718953 (= call!718957 call!718956)))

(declare-fun b!7756026 () Bool)

(declare-fun e!4597392 () Bool)

(assert (=> b!7756026 (= e!4597391 e!4597392)))

(declare-fun res!3092286 () Bool)

(declare-fun nullable!9094 (Regex!20639) Bool)

(assert (=> b!7756026 (= res!3092286 (not (nullable!9094 (reg!20968 r1!6249))))))

(assert (=> b!7756026 (=> (not res!3092286) (not e!4597392))))

(declare-fun b!7756027 () Bool)

(declare-fun res!3092289 () Bool)

(declare-fun e!4597396 () Bool)

(assert (=> b!7756027 (=> res!3092289 e!4597396)))

(assert (=> b!7756027 (= res!3092289 (not ((_ is Concat!29484) r1!6249)))))

(assert (=> b!7756027 (= e!4597397 e!4597396)))

(declare-fun b!7756028 () Bool)

(declare-fun e!4597393 () Bool)

(assert (=> b!7756028 (= e!4597393 call!718957)))

(declare-fun b!7756029 () Bool)

(declare-fun res!3092290 () Bool)

(assert (=> b!7756029 (=> (not res!3092290) (not e!4597393))))

(assert (=> b!7756029 (= res!3092290 call!718958)))

(assert (=> b!7756029 (= e!4597397 e!4597393)))

(declare-fun b!7756030 () Bool)

(assert (=> b!7756030 (= e!4597392 call!718956)))

(declare-fun b!7756031 () Bool)

(assert (=> b!7756031 (= e!4597396 e!4597395)))

(declare-fun res!3092288 () Bool)

(assert (=> b!7756031 (=> (not res!3092288) (not e!4597395))))

(assert (=> b!7756031 (= res!3092288 call!718957)))

(assert (= (and d!2343331 (not res!3092287)) b!7756023))

(assert (= (and b!7756023 c!1430392) b!7756026))

(assert (= (and b!7756023 (not c!1430392)) b!7756025))

(assert (= (and b!7756026 res!3092286) b!7756030))

(assert (= (and b!7756025 c!1430391) b!7756029))

(assert (= (and b!7756025 (not c!1430391)) b!7756027))

(assert (= (and b!7756029 res!3092290) b!7756028))

(assert (= (and b!7756027 (not res!3092289)) b!7756031))

(assert (= (and b!7756031 res!3092288) b!7756024))

(assert (= (or b!7756029 b!7756024) bm!718952))

(assert (= (or b!7756028 b!7756031) bm!718953))

(assert (= (or b!7756030 bm!718953) bm!718951))

(declare-fun m!8218972 () Bool)

(assert (=> bm!718951 m!8218972))

(declare-fun m!8218974 () Bool)

(assert (=> bm!718952 m!8218974))

(declare-fun m!8218976 () Bool)

(assert (=> b!7756026 m!8218976))

(assert (=> start!739136 d!2343331))

(declare-fun d!2343335 () Bool)

(declare-fun isEmpty!42042 (Option!17630) Bool)

(assert (=> d!2343335 (= (isDefined!14244 lt!2669782) (not (isEmpty!42042 lt!2669782)))))

(declare-fun bs!1965875 () Bool)

(assert (= bs!1965875 d!2343335))

(declare-fun m!8218990 () Bool)

(assert (=> bs!1965875 m!8218990))

(assert (=> b!7755920 d!2343335))

(declare-fun b!7756157 () Bool)

(declare-fun e!4597457 () Option!17630)

(assert (=> b!7756157 (= e!4597457 (Some!17629 (tuple2!69673 Nil!73360 s!14266)))))

(declare-fun b!7756158 () Bool)

(declare-fun res!3092330 () Bool)

(declare-fun e!4597454 () Bool)

(assert (=> b!7756158 (=> (not res!3092330) (not e!4597454))))

(declare-fun lt!2669808 () Option!17630)

(assert (=> b!7756158 (= res!3092330 (matchR!10123 r1!6249 (_1!38139 (get!26117 lt!2669808))))))

(declare-fun b!7756160 () Bool)

(declare-datatypes ((Unit!168342 0))(
  ( (Unit!168343) )
))
(declare-fun lt!2669809 () Unit!168342)

(declare-fun lt!2669807 () Unit!168342)

(assert (=> b!7756160 (= lt!2669809 lt!2669807)))

(assert (=> b!7756160 (= (++!17820 (++!17820 Nil!73360 (Cons!73360 (h!79808 s!14266) Nil!73360)) (t!388219 s!14266)) s!14266)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3348 (List!73484 C!41604 List!73484 List!73484) Unit!168342)

(assert (=> b!7756160 (= lt!2669807 (lemmaMoveElementToOtherListKeepsConcatEq!3348 Nil!73360 (h!79808 s!14266) (t!388219 s!14266) s!14266))))

(declare-fun e!4597458 () Option!17630)

(assert (=> b!7756160 (= e!4597458 (findConcatSeparation!3660 r1!6249 r2!6187 (++!17820 Nil!73360 (Cons!73360 (h!79808 s!14266) Nil!73360)) (t!388219 s!14266) s!14266))))

(declare-fun b!7756161 () Bool)

(assert (=> b!7756161 (= e!4597457 e!4597458)))

(declare-fun c!1430408 () Bool)

(assert (=> b!7756161 (= c!1430408 ((_ is Nil!73360) s!14266))))

(declare-fun b!7756162 () Bool)

(declare-fun res!3092329 () Bool)

(assert (=> b!7756162 (=> (not res!3092329) (not e!4597454))))

(assert (=> b!7756162 (= res!3092329 (matchR!10123 r2!6187 (_2!38139 (get!26117 lt!2669808))))))

(declare-fun b!7756163 () Bool)

(declare-fun e!4597456 () Bool)

(assert (=> b!7756163 (= e!4597456 (not (isDefined!14244 lt!2669808)))))

(declare-fun b!7756164 () Bool)

(assert (=> b!7756164 (= e!4597454 (= (++!17820 (_1!38139 (get!26117 lt!2669808)) (_2!38139 (get!26117 lt!2669808))) s!14266))))

(declare-fun b!7756165 () Bool)

(declare-fun e!4597455 () Bool)

(assert (=> b!7756165 (= e!4597455 (matchR!10123 r2!6187 s!14266))))

(declare-fun b!7756159 () Bool)

(assert (=> b!7756159 (= e!4597458 None!17629)))

(declare-fun d!2343339 () Bool)

(assert (=> d!2343339 e!4597456))

(declare-fun res!3092332 () Bool)

(assert (=> d!2343339 (=> res!3092332 e!4597456)))

(assert (=> d!2343339 (= res!3092332 e!4597454)))

(declare-fun res!3092331 () Bool)

(assert (=> d!2343339 (=> (not res!3092331) (not e!4597454))))

(assert (=> d!2343339 (= res!3092331 (isDefined!14244 lt!2669808))))

(assert (=> d!2343339 (= lt!2669808 e!4597457)))

(declare-fun c!1430409 () Bool)

(assert (=> d!2343339 (= c!1430409 e!4597455)))

(declare-fun res!3092333 () Bool)

(assert (=> d!2343339 (=> (not res!3092333) (not e!4597455))))

(assert (=> d!2343339 (= res!3092333 (matchR!10123 r1!6249 Nil!73360))))

(assert (=> d!2343339 (validRegex!11057 r1!6249)))

(assert (=> d!2343339 (= (findConcatSeparation!3660 r1!6249 r2!6187 Nil!73360 s!14266 s!14266) lt!2669808)))

(assert (= (and d!2343339 res!3092333) b!7756165))

(assert (= (and d!2343339 c!1430409) b!7756157))

(assert (= (and d!2343339 (not c!1430409)) b!7756161))

(assert (= (and b!7756161 c!1430408) b!7756159))

(assert (= (and b!7756161 (not c!1430408)) b!7756160))

(assert (= (and d!2343339 res!3092331) b!7756158))

(assert (= (and b!7756158 res!3092330) b!7756162))

(assert (= (and b!7756162 res!3092329) b!7756164))

(assert (= (and d!2343339 (not res!3092332)) b!7756163))

(declare-fun m!8219024 () Bool)

(assert (=> b!7756165 m!8219024))

(declare-fun m!8219026 () Bool)

(assert (=> b!7756164 m!8219026))

(declare-fun m!8219028 () Bool)

(assert (=> b!7756164 m!8219028))

(declare-fun m!8219030 () Bool)

(assert (=> b!7756163 m!8219030))

(assert (=> b!7756158 m!8219026))

(declare-fun m!8219032 () Bool)

(assert (=> b!7756158 m!8219032))

(declare-fun m!8219034 () Bool)

(assert (=> b!7756160 m!8219034))

(assert (=> b!7756160 m!8219034))

(declare-fun m!8219036 () Bool)

(assert (=> b!7756160 m!8219036))

(declare-fun m!8219038 () Bool)

(assert (=> b!7756160 m!8219038))

(assert (=> b!7756160 m!8219034))

(declare-fun m!8219040 () Bool)

(assert (=> b!7756160 m!8219040))

(assert (=> d!2343339 m!8219030))

(declare-fun m!8219042 () Bool)

(assert (=> d!2343339 m!8219042))

(assert (=> d!2343339 m!8218924))

(assert (=> b!7756162 m!8219026))

(declare-fun m!8219044 () Bool)

(assert (=> b!7756162 m!8219044))

(assert (=> b!7755920 d!2343339))

(declare-fun d!2343345 () Bool)

(assert (=> d!2343345 (= (get!26117 lt!2669782) (v!54764 lt!2669782))))

(assert (=> b!7755919 d!2343345))

(declare-fun b!7756194 () Bool)

(declare-fun e!4597475 () Bool)

(declare-fun lt!2669812 () Bool)

(declare-fun call!718965 () Bool)

(assert (=> b!7756194 (= e!4597475 (= lt!2669812 call!718965))))

(declare-fun b!7756195 () Bool)

(declare-fun e!4597474 () Bool)

(assert (=> b!7756195 (= e!4597474 (nullable!9094 r1!6249))))

(declare-fun b!7756196 () Bool)

(declare-fun res!3092354 () Bool)

(declare-fun e!4597477 () Bool)

(assert (=> b!7756196 (=> res!3092354 e!4597477)))

(declare-fun isEmpty!42043 (List!73484) Bool)

(declare-fun tail!15386 (List!73484) List!73484)

(assert (=> b!7756196 (= res!3092354 (not (isEmpty!42043 (tail!15386 s1!4090))))))

(declare-fun b!7756197 () Bool)

(declare-fun e!4597473 () Bool)

(declare-fun e!4597479 () Bool)

(assert (=> b!7756197 (= e!4597473 e!4597479)))

(declare-fun res!3092357 () Bool)

(assert (=> b!7756197 (=> (not res!3092357) (not e!4597479))))

(assert (=> b!7756197 (= res!3092357 (not lt!2669812))))

(declare-fun d!2343347 () Bool)

(assert (=> d!2343347 e!4597475))

(declare-fun c!1430416 () Bool)

(assert (=> d!2343347 (= c!1430416 ((_ is EmptyExpr!20639) r1!6249))))

(assert (=> d!2343347 (= lt!2669812 e!4597474)))

(declare-fun c!1430417 () Bool)

(assert (=> d!2343347 (= c!1430417 (isEmpty!42043 s1!4090))))

(assert (=> d!2343347 (validRegex!11057 r1!6249)))

(assert (=> d!2343347 (= (matchR!10123 r1!6249 s1!4090) lt!2669812)))

(declare-fun b!7756198 () Bool)

(declare-fun derivativeStep!6050 (Regex!20639 C!41604) Regex!20639)

(declare-fun head!15846 (List!73484) C!41604)

(assert (=> b!7756198 (= e!4597474 (matchR!10123 (derivativeStep!6050 r1!6249 (head!15846 s1!4090)) (tail!15386 s1!4090)))))

(declare-fun b!7756199 () Bool)

(assert (=> b!7756199 (= e!4597479 e!4597477)))

(declare-fun res!3092355 () Bool)

(assert (=> b!7756199 (=> res!3092355 e!4597477)))

(assert (=> b!7756199 (= res!3092355 call!718965)))

(declare-fun b!7756200 () Bool)

(declare-fun e!4597476 () Bool)

(assert (=> b!7756200 (= e!4597476 (= (head!15846 s1!4090) (c!1430368 r1!6249)))))

(declare-fun bm!718960 () Bool)

(assert (=> bm!718960 (= call!718965 (isEmpty!42043 s1!4090))))

(declare-fun b!7756201 () Bool)

(declare-fun res!3092356 () Bool)

(assert (=> b!7756201 (=> res!3092356 e!4597473)))

(assert (=> b!7756201 (= res!3092356 e!4597476)))

(declare-fun res!3092350 () Bool)

(assert (=> b!7756201 (=> (not res!3092350) (not e!4597476))))

(assert (=> b!7756201 (= res!3092350 lt!2669812)))

(declare-fun b!7756202 () Bool)

(assert (=> b!7756202 (= e!4597477 (not (= (head!15846 s1!4090) (c!1430368 r1!6249))))))

(declare-fun b!7756203 () Bool)

(declare-fun e!4597478 () Bool)

(assert (=> b!7756203 (= e!4597475 e!4597478)))

(declare-fun c!1430418 () Bool)

(assert (=> b!7756203 (= c!1430418 ((_ is EmptyLang!20639) r1!6249))))

(declare-fun b!7756204 () Bool)

(declare-fun res!3092353 () Bool)

(assert (=> b!7756204 (=> (not res!3092353) (not e!4597476))))

(assert (=> b!7756204 (= res!3092353 (isEmpty!42043 (tail!15386 s1!4090)))))

(declare-fun b!7756205 () Bool)

(declare-fun res!3092352 () Bool)

(assert (=> b!7756205 (=> res!3092352 e!4597473)))

(assert (=> b!7756205 (= res!3092352 (not ((_ is ElementMatch!20639) r1!6249)))))

(assert (=> b!7756205 (= e!4597478 e!4597473)))

(declare-fun b!7756206 () Bool)

(assert (=> b!7756206 (= e!4597478 (not lt!2669812))))

(declare-fun b!7756207 () Bool)

(declare-fun res!3092351 () Bool)

(assert (=> b!7756207 (=> (not res!3092351) (not e!4597476))))

(assert (=> b!7756207 (= res!3092351 (not call!718965))))

(assert (= (and d!2343347 c!1430417) b!7756195))

(assert (= (and d!2343347 (not c!1430417)) b!7756198))

(assert (= (and d!2343347 c!1430416) b!7756194))

(assert (= (and d!2343347 (not c!1430416)) b!7756203))

(assert (= (and b!7756203 c!1430418) b!7756206))

(assert (= (and b!7756203 (not c!1430418)) b!7756205))

(assert (= (and b!7756205 (not res!3092352)) b!7756201))

(assert (= (and b!7756201 res!3092350) b!7756207))

(assert (= (and b!7756207 res!3092351) b!7756204))

(assert (= (and b!7756204 res!3092353) b!7756200))

(assert (= (and b!7756201 (not res!3092356)) b!7756197))

(assert (= (and b!7756197 res!3092357) b!7756199))

(assert (= (and b!7756199 (not res!3092355)) b!7756196))

(assert (= (and b!7756196 (not res!3092354)) b!7756202))

(assert (= (or b!7756194 b!7756199 b!7756207) bm!718960))

(declare-fun m!8219046 () Bool)

(assert (=> b!7756195 m!8219046))

(declare-fun m!8219048 () Bool)

(assert (=> b!7756204 m!8219048))

(assert (=> b!7756204 m!8219048))

(declare-fun m!8219050 () Bool)

(assert (=> b!7756204 m!8219050))

(declare-fun m!8219052 () Bool)

(assert (=> b!7756202 m!8219052))

(assert (=> b!7756198 m!8219052))

(assert (=> b!7756198 m!8219052))

(declare-fun m!8219054 () Bool)

(assert (=> b!7756198 m!8219054))

(assert (=> b!7756198 m!8219048))

(assert (=> b!7756198 m!8219054))

(assert (=> b!7756198 m!8219048))

(declare-fun m!8219056 () Bool)

(assert (=> b!7756198 m!8219056))

(assert (=> b!7756200 m!8219052))

(declare-fun m!8219058 () Bool)

(assert (=> d!2343347 m!8219058))

(assert (=> d!2343347 m!8218924))

(assert (=> bm!718960 m!8219058))

(assert (=> b!7756196 m!8219048))

(assert (=> b!7756196 m!8219048))

(assert (=> b!7756196 m!8219050))

(assert (=> b!7755914 d!2343347))

(declare-fun b!7756208 () Bool)

(declare-fun e!4597483 () Bool)

(declare-fun e!4597480 () Bool)

(assert (=> b!7756208 (= e!4597483 e!4597480)))

(declare-fun c!1430420 () Bool)

(assert (=> b!7756208 (= c!1430420 ((_ is Star!20639) r2!6187))))

(declare-fun c!1430419 () Bool)

(declare-fun bm!718961 () Bool)

(declare-fun call!718966 () Bool)

(assert (=> bm!718961 (= call!718966 (validRegex!11057 (ite c!1430420 (reg!20968 r2!6187) (ite c!1430419 (regTwo!41791 r2!6187) (regOne!41790 r2!6187)))))))

(declare-fun b!7756209 () Bool)

(declare-fun e!4597484 () Bool)

(declare-fun call!718968 () Bool)

(assert (=> b!7756209 (= e!4597484 call!718968)))

(declare-fun b!7756210 () Bool)

(declare-fun e!4597486 () Bool)

(assert (=> b!7756210 (= e!4597480 e!4597486)))

(assert (=> b!7756210 (= c!1430419 ((_ is Union!20639) r2!6187))))

(declare-fun d!2343349 () Bool)

(declare-fun res!3092359 () Bool)

(assert (=> d!2343349 (=> res!3092359 e!4597483)))

(assert (=> d!2343349 (= res!3092359 ((_ is ElementMatch!20639) r2!6187))))

(assert (=> d!2343349 (= (validRegex!11057 r2!6187) e!4597483)))

(declare-fun bm!718962 () Bool)

(assert (=> bm!718962 (= call!718968 (validRegex!11057 (ite c!1430419 (regOne!41791 r2!6187) (regTwo!41790 r2!6187))))))

(declare-fun bm!718963 () Bool)

(declare-fun call!718967 () Bool)

(assert (=> bm!718963 (= call!718967 call!718966)))

(declare-fun b!7756211 () Bool)

(declare-fun e!4597481 () Bool)

(assert (=> b!7756211 (= e!4597480 e!4597481)))

(declare-fun res!3092358 () Bool)

(assert (=> b!7756211 (= res!3092358 (not (nullable!9094 (reg!20968 r2!6187))))))

(assert (=> b!7756211 (=> (not res!3092358) (not e!4597481))))

(declare-fun b!7756212 () Bool)

(declare-fun res!3092361 () Bool)

(declare-fun e!4597485 () Bool)

(assert (=> b!7756212 (=> res!3092361 e!4597485)))

(assert (=> b!7756212 (= res!3092361 (not ((_ is Concat!29484) r2!6187)))))

(assert (=> b!7756212 (= e!4597486 e!4597485)))

(declare-fun b!7756213 () Bool)

(declare-fun e!4597482 () Bool)

(assert (=> b!7756213 (= e!4597482 call!718967)))

(declare-fun b!7756214 () Bool)

(declare-fun res!3092362 () Bool)

(assert (=> b!7756214 (=> (not res!3092362) (not e!4597482))))

(assert (=> b!7756214 (= res!3092362 call!718968)))

(assert (=> b!7756214 (= e!4597486 e!4597482)))

(declare-fun b!7756215 () Bool)

(assert (=> b!7756215 (= e!4597481 call!718966)))

(declare-fun b!7756216 () Bool)

(assert (=> b!7756216 (= e!4597485 e!4597484)))

(declare-fun res!3092360 () Bool)

(assert (=> b!7756216 (=> (not res!3092360) (not e!4597484))))

(assert (=> b!7756216 (= res!3092360 call!718967)))

(assert (= (and d!2343349 (not res!3092359)) b!7756208))

(assert (= (and b!7756208 c!1430420) b!7756211))

(assert (= (and b!7756208 (not c!1430420)) b!7756210))

(assert (= (and b!7756211 res!3092358) b!7756215))

(assert (= (and b!7756210 c!1430419) b!7756214))

(assert (= (and b!7756210 (not c!1430419)) b!7756212))

(assert (= (and b!7756214 res!3092362) b!7756213))

(assert (= (and b!7756212 (not res!3092361)) b!7756216))

(assert (= (and b!7756216 res!3092360) b!7756209))

(assert (= (or b!7756214 b!7756209) bm!718962))

(assert (= (or b!7756213 b!7756216) bm!718963))

(assert (= (or b!7756215 bm!718963) bm!718961))

(declare-fun m!8219060 () Bool)

(assert (=> bm!718961 m!8219060))

(declare-fun m!8219062 () Bool)

(assert (=> bm!718962 m!8219062))

(declare-fun m!8219064 () Bool)

(assert (=> b!7756211 m!8219064))

(assert (=> b!7755924 d!2343349))

(declare-fun b!7756229 () Bool)

(declare-fun e!4597489 () Bool)

(declare-fun tp!2276220 () Bool)

(assert (=> b!7756229 (= e!4597489 tp!2276220)))

(assert (=> b!7755911 (= tp!2276141 e!4597489)))

(declare-fun b!7756227 () Bool)

(assert (=> b!7756227 (= e!4597489 tp_is_empty!51633)))

(declare-fun b!7756228 () Bool)

(declare-fun tp!2276222 () Bool)

(declare-fun tp!2276221 () Bool)

(assert (=> b!7756228 (= e!4597489 (and tp!2276222 tp!2276221))))

(declare-fun b!7756230 () Bool)

(declare-fun tp!2276219 () Bool)

(declare-fun tp!2276223 () Bool)

(assert (=> b!7756230 (= e!4597489 (and tp!2276219 tp!2276223))))

(assert (= (and b!7755911 ((_ is ElementMatch!20639) (regOne!41791 r2!6187))) b!7756227))

(assert (= (and b!7755911 ((_ is Concat!29484) (regOne!41791 r2!6187))) b!7756228))

(assert (= (and b!7755911 ((_ is Star!20639) (regOne!41791 r2!6187))) b!7756229))

(assert (= (and b!7755911 ((_ is Union!20639) (regOne!41791 r2!6187))) b!7756230))

(declare-fun b!7756233 () Bool)

(declare-fun e!4597490 () Bool)

(declare-fun tp!2276225 () Bool)

(assert (=> b!7756233 (= e!4597490 tp!2276225)))

(assert (=> b!7755911 (= tp!2276136 e!4597490)))

(declare-fun b!7756231 () Bool)

(assert (=> b!7756231 (= e!4597490 tp_is_empty!51633)))

(declare-fun b!7756232 () Bool)

(declare-fun tp!2276227 () Bool)

(declare-fun tp!2276226 () Bool)

(assert (=> b!7756232 (= e!4597490 (and tp!2276227 tp!2276226))))

(declare-fun b!7756234 () Bool)

(declare-fun tp!2276224 () Bool)

(declare-fun tp!2276228 () Bool)

(assert (=> b!7756234 (= e!4597490 (and tp!2276224 tp!2276228))))

(assert (= (and b!7755911 ((_ is ElementMatch!20639) (regTwo!41791 r2!6187))) b!7756231))

(assert (= (and b!7755911 ((_ is Concat!29484) (regTwo!41791 r2!6187))) b!7756232))

(assert (= (and b!7755911 ((_ is Star!20639) (regTwo!41791 r2!6187))) b!7756233))

(assert (= (and b!7755911 ((_ is Union!20639) (regTwo!41791 r2!6187))) b!7756234))

(declare-fun b!7756237 () Bool)

(declare-fun e!4597491 () Bool)

(declare-fun tp!2276230 () Bool)

(assert (=> b!7756237 (= e!4597491 tp!2276230)))

(assert (=> b!7755922 (= tp!2276133 e!4597491)))

(declare-fun b!7756235 () Bool)

(assert (=> b!7756235 (= e!4597491 tp_is_empty!51633)))

(declare-fun b!7756236 () Bool)

(declare-fun tp!2276232 () Bool)

(declare-fun tp!2276231 () Bool)

(assert (=> b!7756236 (= e!4597491 (and tp!2276232 tp!2276231))))

(declare-fun b!7756238 () Bool)

(declare-fun tp!2276229 () Bool)

(declare-fun tp!2276233 () Bool)

(assert (=> b!7756238 (= e!4597491 (and tp!2276229 tp!2276233))))

(assert (= (and b!7755922 ((_ is ElementMatch!20639) (regOne!41790 r1!6249))) b!7756235))

(assert (= (and b!7755922 ((_ is Concat!29484) (regOne!41790 r1!6249))) b!7756236))

(assert (= (and b!7755922 ((_ is Star!20639) (regOne!41790 r1!6249))) b!7756237))

(assert (= (and b!7755922 ((_ is Union!20639) (regOne!41790 r1!6249))) b!7756238))

(declare-fun b!7756241 () Bool)

(declare-fun e!4597492 () Bool)

(declare-fun tp!2276235 () Bool)

(assert (=> b!7756241 (= e!4597492 tp!2276235)))

(assert (=> b!7755922 (= tp!2276137 e!4597492)))

(declare-fun b!7756239 () Bool)

(assert (=> b!7756239 (= e!4597492 tp_is_empty!51633)))

(declare-fun b!7756240 () Bool)

(declare-fun tp!2276237 () Bool)

(declare-fun tp!2276236 () Bool)

(assert (=> b!7756240 (= e!4597492 (and tp!2276237 tp!2276236))))

(declare-fun b!7756242 () Bool)

(declare-fun tp!2276234 () Bool)

(declare-fun tp!2276238 () Bool)

(assert (=> b!7756242 (= e!4597492 (and tp!2276234 tp!2276238))))

(assert (= (and b!7755922 ((_ is ElementMatch!20639) (regTwo!41790 r1!6249))) b!7756239))

(assert (= (and b!7755922 ((_ is Concat!29484) (regTwo!41790 r1!6249))) b!7756240))

(assert (= (and b!7755922 ((_ is Star!20639) (regTwo!41790 r1!6249))) b!7756241))

(assert (= (and b!7755922 ((_ is Union!20639) (regTwo!41790 r1!6249))) b!7756242))

(declare-fun b!7756245 () Bool)

(declare-fun e!4597493 () Bool)

(declare-fun tp!2276240 () Bool)

(assert (=> b!7756245 (= e!4597493 tp!2276240)))

(assert (=> b!7755921 (= tp!2276134 e!4597493)))

(declare-fun b!7756243 () Bool)

(assert (=> b!7756243 (= e!4597493 tp_is_empty!51633)))

(declare-fun b!7756244 () Bool)

(declare-fun tp!2276242 () Bool)

(declare-fun tp!2276241 () Bool)

(assert (=> b!7756244 (= e!4597493 (and tp!2276242 tp!2276241))))

(declare-fun b!7756246 () Bool)

(declare-fun tp!2276239 () Bool)

(declare-fun tp!2276243 () Bool)

(assert (=> b!7756246 (= e!4597493 (and tp!2276239 tp!2276243))))

(assert (= (and b!7755921 ((_ is ElementMatch!20639) (reg!20968 r2!6187))) b!7756243))

(assert (= (and b!7755921 ((_ is Concat!29484) (reg!20968 r2!6187))) b!7756244))

(assert (= (and b!7755921 ((_ is Star!20639) (reg!20968 r2!6187))) b!7756245))

(assert (= (and b!7755921 ((_ is Union!20639) (reg!20968 r2!6187))) b!7756246))

(declare-fun b!7756251 () Bool)

(declare-fun e!4597496 () Bool)

(declare-fun tp!2276246 () Bool)

(assert (=> b!7756251 (= e!4597496 (and tp_is_empty!51633 tp!2276246))))

(assert (=> b!7755915 (= tp!2276132 e!4597496)))

(assert (= (and b!7755915 ((_ is Cons!73360) (t!388219 s2!3712))) b!7756251))

(declare-fun b!7756252 () Bool)

(declare-fun e!4597497 () Bool)

(declare-fun tp!2276247 () Bool)

(assert (=> b!7756252 (= e!4597497 (and tp_is_empty!51633 tp!2276247))))

(assert (=> b!7755910 (= tp!2276143 e!4597497)))

(assert (= (and b!7755910 ((_ is Cons!73360) (t!388219 s1!4090))) b!7756252))

(declare-fun b!7756255 () Bool)

(declare-fun e!4597498 () Bool)

(declare-fun tp!2276249 () Bool)

(assert (=> b!7756255 (= e!4597498 tp!2276249)))

(assert (=> b!7755913 (= tp!2276140 e!4597498)))

(declare-fun b!7756253 () Bool)

(assert (=> b!7756253 (= e!4597498 tp_is_empty!51633)))

(declare-fun b!7756254 () Bool)

(declare-fun tp!2276251 () Bool)

(declare-fun tp!2276250 () Bool)

(assert (=> b!7756254 (= e!4597498 (and tp!2276251 tp!2276250))))

(declare-fun b!7756256 () Bool)

(declare-fun tp!2276248 () Bool)

(declare-fun tp!2276252 () Bool)

(assert (=> b!7756256 (= e!4597498 (and tp!2276248 tp!2276252))))

(assert (= (and b!7755913 ((_ is ElementMatch!20639) (reg!20968 r1!6249))) b!7756253))

(assert (= (and b!7755913 ((_ is Concat!29484) (reg!20968 r1!6249))) b!7756254))

(assert (= (and b!7755913 ((_ is Star!20639) (reg!20968 r1!6249))) b!7756255))

(assert (= (and b!7755913 ((_ is Union!20639) (reg!20968 r1!6249))) b!7756256))

(declare-fun b!7756259 () Bool)

(declare-fun e!4597499 () Bool)

(declare-fun tp!2276254 () Bool)

(assert (=> b!7756259 (= e!4597499 tp!2276254)))

(assert (=> b!7755923 (= tp!2276138 e!4597499)))

(declare-fun b!7756257 () Bool)

(assert (=> b!7756257 (= e!4597499 tp_is_empty!51633)))

(declare-fun b!7756258 () Bool)

(declare-fun tp!2276256 () Bool)

(declare-fun tp!2276255 () Bool)

(assert (=> b!7756258 (= e!4597499 (and tp!2276256 tp!2276255))))

(declare-fun b!7756260 () Bool)

(declare-fun tp!2276253 () Bool)

(declare-fun tp!2276257 () Bool)

(assert (=> b!7756260 (= e!4597499 (and tp!2276253 tp!2276257))))

(assert (= (and b!7755923 ((_ is ElementMatch!20639) (regOne!41790 r2!6187))) b!7756257))

(assert (= (and b!7755923 ((_ is Concat!29484) (regOne!41790 r2!6187))) b!7756258))

(assert (= (and b!7755923 ((_ is Star!20639) (regOne!41790 r2!6187))) b!7756259))

(assert (= (and b!7755923 ((_ is Union!20639) (regOne!41790 r2!6187))) b!7756260))

(declare-fun b!7756263 () Bool)

(declare-fun e!4597500 () Bool)

(declare-fun tp!2276259 () Bool)

(assert (=> b!7756263 (= e!4597500 tp!2276259)))

(assert (=> b!7755923 (= tp!2276139 e!4597500)))

(declare-fun b!7756261 () Bool)

(assert (=> b!7756261 (= e!4597500 tp_is_empty!51633)))

(declare-fun b!7756262 () Bool)

(declare-fun tp!2276261 () Bool)

(declare-fun tp!2276260 () Bool)

(assert (=> b!7756262 (= e!4597500 (and tp!2276261 tp!2276260))))

(declare-fun b!7756264 () Bool)

(declare-fun tp!2276258 () Bool)

(declare-fun tp!2276262 () Bool)

(assert (=> b!7756264 (= e!4597500 (and tp!2276258 tp!2276262))))

(assert (= (and b!7755923 ((_ is ElementMatch!20639) (regTwo!41790 r2!6187))) b!7756261))

(assert (= (and b!7755923 ((_ is Concat!29484) (regTwo!41790 r2!6187))) b!7756262))

(assert (= (and b!7755923 ((_ is Star!20639) (regTwo!41790 r2!6187))) b!7756263))

(assert (= (and b!7755923 ((_ is Union!20639) (regTwo!41790 r2!6187))) b!7756264))

(declare-fun b!7756265 () Bool)

(declare-fun e!4597501 () Bool)

(declare-fun tp!2276263 () Bool)

(assert (=> b!7756265 (= e!4597501 (and tp_is_empty!51633 tp!2276263))))

(assert (=> b!7755917 (= tp!2276131 e!4597501)))

(assert (= (and b!7755917 ((_ is Cons!73360) (t!388219 s!14266))) b!7756265))

(declare-fun b!7756268 () Bool)

(declare-fun e!4597502 () Bool)

(declare-fun tp!2276265 () Bool)

(assert (=> b!7756268 (= e!4597502 tp!2276265)))

(assert (=> b!7755912 (= tp!2276142 e!4597502)))

(declare-fun b!7756266 () Bool)

(assert (=> b!7756266 (= e!4597502 tp_is_empty!51633)))

(declare-fun b!7756267 () Bool)

(declare-fun tp!2276267 () Bool)

(declare-fun tp!2276266 () Bool)

(assert (=> b!7756267 (= e!4597502 (and tp!2276267 tp!2276266))))

(declare-fun b!7756269 () Bool)

(declare-fun tp!2276264 () Bool)

(declare-fun tp!2276268 () Bool)

(assert (=> b!7756269 (= e!4597502 (and tp!2276264 tp!2276268))))

(assert (= (and b!7755912 ((_ is ElementMatch!20639) (regOne!41791 r1!6249))) b!7756266))

(assert (= (and b!7755912 ((_ is Concat!29484) (regOne!41791 r1!6249))) b!7756267))

(assert (= (and b!7755912 ((_ is Star!20639) (regOne!41791 r1!6249))) b!7756268))

(assert (= (and b!7755912 ((_ is Union!20639) (regOne!41791 r1!6249))) b!7756269))

(declare-fun b!7756272 () Bool)

(declare-fun e!4597503 () Bool)

(declare-fun tp!2276270 () Bool)

(assert (=> b!7756272 (= e!4597503 tp!2276270)))

(assert (=> b!7755912 (= tp!2276135 e!4597503)))

(declare-fun b!7756270 () Bool)

(assert (=> b!7756270 (= e!4597503 tp_is_empty!51633)))

(declare-fun b!7756271 () Bool)

(declare-fun tp!2276272 () Bool)

(declare-fun tp!2276271 () Bool)

(assert (=> b!7756271 (= e!4597503 (and tp!2276272 tp!2276271))))

(declare-fun b!7756273 () Bool)

(declare-fun tp!2276269 () Bool)

(declare-fun tp!2276273 () Bool)

(assert (=> b!7756273 (= e!4597503 (and tp!2276269 tp!2276273))))

(assert (= (and b!7755912 ((_ is ElementMatch!20639) (regTwo!41791 r1!6249))) b!7756270))

(assert (= (and b!7755912 ((_ is Concat!29484) (regTwo!41791 r1!6249))) b!7756271))

(assert (= (and b!7755912 ((_ is Star!20639) (regTwo!41791 r1!6249))) b!7756272))

(assert (= (and b!7755912 ((_ is Union!20639) (regTwo!41791 r1!6249))) b!7756273))

(check-sat (not b!7756026) (not b!7756242) (not d!2343339) (not b!7756196) (not b!7756160) (not b!7756269) (not b!7756237) (not b!7756162) (not b!7756229) (not b!7756202) (not b!7756198) (not b!7756262) (not b!7756232) (not b!7756241) (not b!7756255) (not bm!718961) (not b!7756271) tp_is_empty!51633 (not bm!718962) (not b!7755963) (not b!7756165) (not b!7756211) (not b!7756260) (not b!7756236) (not b!7756267) (not b!7756164) (not bm!718952) (not b!7756195) (not b!7756258) (not b!7756228) (not b!7756259) (not b!7756244) (not b!7756268) (not b!7756230) (not b!7756263) (not b!7756158) (not d!2343347) (not b!7756200) (not b!7756245) (not b!7756240) (not d!2343335) (not b!7756272) (not b!7756265) (not bm!718951) (not b!7756163) (not b!7756234) (not b!7756246) (not b!7756238) (not b!7755962) (not bm!718960) (not b!7756273) (not b!7756233) (not b!7756252) (not b!7756204) (not b!7756254) (not b!7756264) (not b!7756256) (not d!2343323) (not b!7756251))
(check-sat)
