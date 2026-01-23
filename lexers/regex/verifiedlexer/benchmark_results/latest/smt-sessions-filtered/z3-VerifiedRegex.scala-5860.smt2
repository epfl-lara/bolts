; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287468 () Bool)

(assert start!287468)

(declare-fun b!2972122 () Bool)

(declare-fun e!1869952 () Bool)

(declare-fun e!1869951 () Bool)

(assert (=> b!2972122 (= e!1869952 e!1869951)))

(declare-fun res!1225563 () Bool)

(assert (=> b!2972122 (=> res!1225563 e!1869951)))

(declare-datatypes ((C!18728 0))(
  ( (C!18729 (val!11400 Int)) )
))
(declare-datatypes ((List!35136 0))(
  ( (Nil!35012) (Cons!35012 (h!40432 C!18728) (t!234201 List!35136)) )
))
(declare-fun s!11993 () List!35136)

(declare-fun isEmpty!19249 (List!35136) Bool)

(assert (=> b!2972122 (= res!1225563 (isEmpty!19249 s!11993))))

(declare-datatypes ((Regex!9271 0))(
  ( (ElementMatch!9271 (c!487739 C!18728)) (Concat!14592 (regOne!19054 Regex!9271) (regTwo!19054 Regex!9271)) (EmptyExpr!9271) (Star!9271 (reg!9600 Regex!9271)) (EmptyLang!9271) (Union!9271 (regOne!19055 Regex!9271) (regTwo!19055 Regex!9271)) )
))
(declare-fun lt!1036354 () Regex!9271)

(declare-fun matchRSpec!1408 (Regex!9271 List!35136) Bool)

(assert (=> b!2972122 (matchRSpec!1408 lt!1036354 s!11993)))

(declare-datatypes ((Unit!48921 0))(
  ( (Unit!48922) )
))
(declare-fun lt!1036351 () Unit!48921)

(declare-fun mainMatchTheorem!1408 (Regex!9271 List!35136) Unit!48921)

(assert (=> b!2972122 (= lt!1036351 (mainMatchTheorem!1408 lt!1036354 s!11993))))

(declare-fun res!1225565 () Bool)

(declare-fun e!1869948 () Bool)

(assert (=> start!287468 (=> (not res!1225565) (not e!1869948))))

(declare-fun r!17423 () Regex!9271)

(declare-fun validRegex!4004 (Regex!9271) Bool)

(assert (=> start!287468 (= res!1225565 (validRegex!4004 r!17423))))

(assert (=> start!287468 e!1869948))

(declare-fun e!1869947 () Bool)

(assert (=> start!287468 e!1869947))

(declare-fun e!1869953 () Bool)

(assert (=> start!287468 e!1869953))

(declare-fun b!2972123 () Bool)

(assert (=> b!2972123 (= e!1869951 (validRegex!4004 (reg!9600 r!17423)))))

(declare-fun b!2972124 () Bool)

(declare-fun e!1869949 () Bool)

(declare-fun e!1869950 () Bool)

(assert (=> b!2972124 (= e!1869949 e!1869950)))

(declare-fun res!1225562 () Bool)

(assert (=> b!2972124 (=> res!1225562 e!1869950)))

(declare-fun lt!1036352 () Regex!9271)

(declare-fun isEmptyLang!385 (Regex!9271) Bool)

(assert (=> b!2972124 (= res!1225562 (isEmptyLang!385 lt!1036352))))

(declare-fun simplify!272 (Regex!9271) Regex!9271)

(assert (=> b!2972124 (= lt!1036352 (simplify!272 (reg!9600 r!17423)))))

(declare-fun b!2972125 () Bool)

(declare-fun tp!947594 () Bool)

(assert (=> b!2972125 (= e!1869947 tp!947594)))

(declare-fun b!2972126 () Bool)

(declare-fun tp_is_empty!16105 () Bool)

(assert (=> b!2972126 (= e!1869947 tp_is_empty!16105)))

(declare-fun b!2972127 () Bool)

(declare-fun tp!947597 () Bool)

(declare-fun tp!947596 () Bool)

(assert (=> b!2972127 (= e!1869947 (and tp!947597 tp!947596))))

(declare-fun b!2972128 () Bool)

(declare-fun tp!947592 () Bool)

(assert (=> b!2972128 (= e!1869953 (and tp_is_empty!16105 tp!947592))))

(declare-fun b!2972129 () Bool)

(assert (=> b!2972129 (= e!1869950 e!1869952)))

(declare-fun res!1225566 () Bool)

(assert (=> b!2972129 (=> res!1225566 e!1869952)))

(declare-fun matchR!4153 (Regex!9271 List!35136) Bool)

(assert (=> b!2972129 (= res!1225566 (not (matchR!4153 lt!1036354 s!11993)))))

(assert (=> b!2972129 (= lt!1036354 (Star!9271 lt!1036352))))

(declare-fun b!2972130 () Bool)

(declare-fun tp!947593 () Bool)

(declare-fun tp!947595 () Bool)

(assert (=> b!2972130 (= e!1869947 (and tp!947593 tp!947595))))

(declare-fun b!2972131 () Bool)

(assert (=> b!2972131 (= e!1869948 (not e!1869949))))

(declare-fun res!1225564 () Bool)

(assert (=> b!2972131 (=> res!1225564 e!1869949)))

(declare-fun lt!1036353 () Bool)

(get-info :version)

(assert (=> b!2972131 (= res!1225564 (or lt!1036353 ((_ is Concat!14592) r!17423) ((_ is Union!9271) r!17423) (not ((_ is Star!9271) r!17423))))))

(assert (=> b!2972131 (= lt!1036353 (matchRSpec!1408 r!17423 s!11993))))

(assert (=> b!2972131 (= lt!1036353 (matchR!4153 r!17423 s!11993))))

(declare-fun lt!1036350 () Unit!48921)

(assert (=> b!2972131 (= lt!1036350 (mainMatchTheorem!1408 r!17423 s!11993))))

(assert (= (and start!287468 res!1225565) b!2972131))

(assert (= (and b!2972131 (not res!1225564)) b!2972124))

(assert (= (and b!2972124 (not res!1225562)) b!2972129))

(assert (= (and b!2972129 (not res!1225566)) b!2972122))

(assert (= (and b!2972122 (not res!1225563)) b!2972123))

(assert (= (and start!287468 ((_ is ElementMatch!9271) r!17423)) b!2972126))

(assert (= (and start!287468 ((_ is Concat!14592) r!17423)) b!2972130))

(assert (= (and start!287468 ((_ is Star!9271) r!17423)) b!2972125))

(assert (= (and start!287468 ((_ is Union!9271) r!17423)) b!2972127))

(assert (= (and start!287468 ((_ is Cons!35012) s!11993)) b!2972128))

(declare-fun m!3338567 () Bool)

(assert (=> b!2972131 m!3338567))

(declare-fun m!3338569 () Bool)

(assert (=> b!2972131 m!3338569))

(declare-fun m!3338571 () Bool)

(assert (=> b!2972131 m!3338571))

(declare-fun m!3338573 () Bool)

(assert (=> b!2972123 m!3338573))

(declare-fun m!3338575 () Bool)

(assert (=> start!287468 m!3338575))

(declare-fun m!3338577 () Bool)

(assert (=> b!2972129 m!3338577))

(declare-fun m!3338579 () Bool)

(assert (=> b!2972122 m!3338579))

(declare-fun m!3338581 () Bool)

(assert (=> b!2972122 m!3338581))

(declare-fun m!3338583 () Bool)

(assert (=> b!2972122 m!3338583))

(declare-fun m!3338585 () Bool)

(assert (=> b!2972124 m!3338585))

(declare-fun m!3338587 () Bool)

(assert (=> b!2972124 m!3338587))

(check-sat (not b!2972124) (not b!2972122) (not b!2972129) (not start!287468) (not b!2972125) (not b!2972127) (not b!2972131) (not b!2972128) (not b!2972130) tp_is_empty!16105 (not b!2972123))
(check-sat)
(get-model)

(declare-fun b!2972164 () Bool)

(declare-fun e!1869981 () Bool)

(declare-fun call!197962 () Bool)

(assert (=> b!2972164 (= e!1869981 call!197962)))

(declare-fun d!842739 () Bool)

(declare-fun res!1225581 () Bool)

(declare-fun e!1869977 () Bool)

(assert (=> d!842739 (=> res!1225581 e!1869977)))

(assert (=> d!842739 (= res!1225581 ((_ is ElementMatch!9271) (reg!9600 r!17423)))))

(assert (=> d!842739 (= (validRegex!4004 (reg!9600 r!17423)) e!1869977)))

(declare-fun b!2972165 () Bool)

(declare-fun e!1869978 () Bool)

(assert (=> b!2972165 (= e!1869977 e!1869978)))

(declare-fun c!487750 () Bool)

(assert (=> b!2972165 (= c!487750 ((_ is Star!9271) (reg!9600 r!17423)))))

(declare-fun b!2972166 () Bool)

(declare-fun e!1869980 () Bool)

(declare-fun e!1869975 () Bool)

(assert (=> b!2972166 (= e!1869980 e!1869975)))

(declare-fun res!1225579 () Bool)

(assert (=> b!2972166 (=> (not res!1225579) (not e!1869975))))

(assert (=> b!2972166 (= res!1225579 call!197962)))

(declare-fun call!197961 () Bool)

(declare-fun bm!197956 () Bool)

(declare-fun c!487751 () Bool)

(assert (=> bm!197956 (= call!197961 (validRegex!4004 (ite c!487750 (reg!9600 (reg!9600 r!17423)) (ite c!487751 (regOne!19055 (reg!9600 r!17423)) (regTwo!19054 (reg!9600 r!17423))))))))

(declare-fun b!2972167 () Bool)

(declare-fun e!1869982 () Bool)

(assert (=> b!2972167 (= e!1869982 call!197961)))

(declare-fun b!2972168 () Bool)

(declare-fun e!1869979 () Bool)

(assert (=> b!2972168 (= e!1869978 e!1869979)))

(assert (=> b!2972168 (= c!487751 ((_ is Union!9271) (reg!9600 r!17423)))))

(declare-fun b!2972169 () Bool)

(declare-fun call!197963 () Bool)

(assert (=> b!2972169 (= e!1869975 call!197963)))

(declare-fun bm!197957 () Bool)

(assert (=> bm!197957 (= call!197962 (validRegex!4004 (ite c!487751 (regTwo!19055 (reg!9600 r!17423)) (regOne!19054 (reg!9600 r!17423)))))))

(declare-fun b!2972170 () Bool)

(declare-fun res!1225580 () Bool)

(assert (=> b!2972170 (=> (not res!1225580) (not e!1869981))))

(assert (=> b!2972170 (= res!1225580 call!197963)))

(assert (=> b!2972170 (= e!1869979 e!1869981)))

(declare-fun b!2972171 () Bool)

(declare-fun res!1225582 () Bool)

(assert (=> b!2972171 (=> res!1225582 e!1869980)))

(assert (=> b!2972171 (= res!1225582 (not ((_ is Concat!14592) (reg!9600 r!17423))))))

(assert (=> b!2972171 (= e!1869979 e!1869980)))

(declare-fun bm!197958 () Bool)

(assert (=> bm!197958 (= call!197963 call!197961)))

(declare-fun b!2972172 () Bool)

(assert (=> b!2972172 (= e!1869978 e!1869982)))

(declare-fun res!1225583 () Bool)

(declare-fun nullable!2967 (Regex!9271) Bool)

(assert (=> b!2972172 (= res!1225583 (not (nullable!2967 (reg!9600 (reg!9600 r!17423)))))))

(assert (=> b!2972172 (=> (not res!1225583) (not e!1869982))))

(assert (= (and d!842739 (not res!1225581)) b!2972165))

(assert (= (and b!2972165 c!487750) b!2972172))

(assert (= (and b!2972165 (not c!487750)) b!2972168))

(assert (= (and b!2972172 res!1225583) b!2972167))

(assert (= (and b!2972168 c!487751) b!2972170))

(assert (= (and b!2972168 (not c!487751)) b!2972171))

(assert (= (and b!2972170 res!1225580) b!2972164))

(assert (= (and b!2972171 (not res!1225582)) b!2972166))

(assert (= (and b!2972166 res!1225579) b!2972169))

(assert (= (or b!2972170 b!2972169) bm!197958))

(assert (= (or b!2972164 b!2972166) bm!197957))

(assert (= (or b!2972167 bm!197958) bm!197956))

(declare-fun m!3338589 () Bool)

(assert (=> bm!197956 m!3338589))

(declare-fun m!3338591 () Bool)

(assert (=> bm!197957 m!3338591))

(declare-fun m!3338593 () Bool)

(assert (=> b!2972172 m!3338593))

(assert (=> b!2972123 d!842739))

(declare-fun d!842743 () Bool)

(assert (=> d!842743 (= (isEmptyLang!385 lt!1036352) ((_ is EmptyLang!9271) lt!1036352))))

(assert (=> b!2972124 d!842743))

(declare-fun b!2972231 () Bool)

(declare-fun e!1870027 () Regex!9271)

(assert (=> b!2972231 (= e!1870027 EmptyExpr!9271)))

(declare-fun b!2972232 () Bool)

(declare-fun e!1870028 () Regex!9271)

(declare-fun lt!1036370 () Regex!9271)

(assert (=> b!2972232 (= e!1870028 lt!1036370)))

(declare-fun b!2972233 () Bool)

(declare-fun e!1870018 () Regex!9271)

(declare-fun e!1870024 () Regex!9271)

(assert (=> b!2972233 (= e!1870018 e!1870024)))

(declare-fun lt!1036369 () Regex!9271)

(declare-fun call!197980 () Regex!9271)

(assert (=> b!2972233 (= lt!1036369 call!197980)))

(declare-fun lt!1036371 () Regex!9271)

(declare-fun call!197982 () Regex!9271)

(assert (=> b!2972233 (= lt!1036371 call!197982)))

(declare-fun res!1225594 () Bool)

(declare-fun call!197979 () Bool)

(assert (=> b!2972233 (= res!1225594 call!197979)))

(declare-fun e!1870029 () Bool)

(assert (=> b!2972233 (=> res!1225594 e!1870029)))

(declare-fun c!487784 () Bool)

(assert (=> b!2972233 (= c!487784 e!1870029)))

(declare-fun b!2972234 () Bool)

(declare-fun e!1870022 () Regex!9271)

(assert (=> b!2972234 (= e!1870022 (reg!9600 r!17423))))

(declare-fun b!2972235 () Bool)

(declare-fun e!1870030 () Regex!9271)

(assert (=> b!2972235 (= e!1870027 e!1870030)))

(declare-fun c!487780 () Bool)

(assert (=> b!2972235 (= c!487780 ((_ is Star!9271) (reg!9600 r!17423)))))

(declare-fun d!842745 () Bool)

(declare-fun e!1870025 () Bool)

(assert (=> d!842745 e!1870025))

(declare-fun res!1225596 () Bool)

(assert (=> d!842745 (=> (not res!1225596) (not e!1870025))))

(declare-fun lt!1036372 () Regex!9271)

(assert (=> d!842745 (= res!1225596 (validRegex!4004 lt!1036372))))

(declare-fun e!1870019 () Regex!9271)

(assert (=> d!842745 (= lt!1036372 e!1870019)))

(declare-fun c!487783 () Bool)

(assert (=> d!842745 (= c!487783 ((_ is EmptyLang!9271) (reg!9600 r!17423)))))

(assert (=> d!842745 (validRegex!4004 (reg!9600 r!17423))))

(assert (=> d!842745 (= (simplify!272 (reg!9600 r!17423)) lt!1036372)))

(declare-fun b!2972236 () Bool)

(declare-fun e!1870026 () Bool)

(declare-fun call!197981 () Bool)

(assert (=> b!2972236 (= e!1870026 call!197981)))

(declare-fun b!2972237 () Bool)

(declare-fun e!1870020 () Regex!9271)

(declare-fun lt!1036367 () Regex!9271)

(assert (=> b!2972237 (= e!1870020 lt!1036367)))

(declare-fun b!2972238 () Bool)

(declare-fun c!487779 () Bool)

(assert (=> b!2972238 (= c!487779 ((_ is Union!9271) (reg!9600 r!17423)))))

(assert (=> b!2972238 (= e!1870030 e!1870018)))

(declare-fun b!2972239 () Bool)

(declare-fun c!487778 () Bool)

(declare-fun call!197984 () Bool)

(assert (=> b!2972239 (= c!487778 call!197984)))

(assert (=> b!2972239 (= e!1870028 e!1870020)))

(declare-fun bm!197973 () Bool)

(declare-fun lt!1036368 () Regex!9271)

(declare-fun call!197978 () Bool)

(assert (=> bm!197973 (= call!197978 (isEmptyLang!385 (ite c!487780 lt!1036368 (ite c!487779 lt!1036370 lt!1036371))))))

(declare-fun b!2972240 () Bool)

(declare-fun e!1870017 () Regex!9271)

(assert (=> b!2972240 (= e!1870017 (Concat!14592 lt!1036369 lt!1036371))))

(declare-fun b!2972241 () Bool)

(assert (=> b!2972241 (= e!1870019 e!1870022)))

(declare-fun c!487777 () Bool)

(assert (=> b!2972241 (= c!487777 ((_ is ElementMatch!9271) (reg!9600 r!17423)))))

(declare-fun b!2972242 () Bool)

(assert (=> b!2972242 (= e!1870024 EmptyLang!9271)))

(declare-fun b!2972243 () Bool)

(declare-fun e!1870023 () Regex!9271)

(assert (=> b!2972243 (= e!1870023 (Star!9271 lt!1036368))))

(declare-fun bm!197974 () Bool)

(assert (=> bm!197974 (= call!197979 (isEmptyLang!385 (ite c!487779 lt!1036367 lt!1036369)))))

(declare-fun bm!197975 () Bool)

(assert (=> bm!197975 (= call!197982 (simplify!272 (ite c!487779 (regOne!19055 (reg!9600 r!17423)) (regTwo!19054 (reg!9600 r!17423)))))))

(declare-fun b!2972244 () Bool)

(assert (=> b!2972244 (= e!1870018 e!1870028)))

(assert (=> b!2972244 (= lt!1036367 call!197982)))

(assert (=> b!2972244 (= lt!1036370 call!197980)))

(declare-fun c!487786 () Bool)

(assert (=> b!2972244 (= c!487786 call!197979)))

(declare-fun b!2972245 () Bool)

(declare-fun c!487776 () Bool)

(declare-fun isEmptyExpr!423 (Regex!9271) Bool)

(assert (=> b!2972245 (= c!487776 (isEmptyExpr!423 lt!1036369))))

(declare-fun e!1870021 () Regex!9271)

(assert (=> b!2972245 (= e!1870024 e!1870021)))

(declare-fun bm!197976 () Bool)

(assert (=> bm!197976 (= call!197981 (isEmptyExpr!423 (ite c!487780 lt!1036368 lt!1036371)))))

(declare-fun b!2972246 () Bool)

(assert (=> b!2972246 (= e!1870023 EmptyExpr!9271)))

(declare-fun b!2972247 () Bool)

(assert (=> b!2972247 (= e!1870021 lt!1036371)))

(declare-fun b!2972248 () Bool)

(assert (=> b!2972248 (= e!1870017 lt!1036369)))

(declare-fun bm!197977 () Bool)

(assert (=> bm!197977 (= call!197984 call!197978)))

(declare-fun b!2972249 () Bool)

(declare-fun c!487785 () Bool)

(assert (=> b!2972249 (= c!487785 ((_ is EmptyExpr!9271) (reg!9600 r!17423)))))

(assert (=> b!2972249 (= e!1870022 e!1870027)))

(declare-fun b!2972250 () Bool)

(declare-fun c!487782 () Bool)

(assert (=> b!2972250 (= c!487782 e!1870026)))

(declare-fun res!1225595 () Bool)

(assert (=> b!2972250 (=> res!1225595 e!1870026)))

(assert (=> b!2972250 (= res!1225595 call!197978)))

(declare-fun call!197983 () Regex!9271)

(assert (=> b!2972250 (= lt!1036368 call!197983)))

(assert (=> b!2972250 (= e!1870030 e!1870023)))

(declare-fun bm!197978 () Bool)

(assert (=> bm!197978 (= call!197980 call!197983)))

(declare-fun b!2972251 () Bool)

(assert (=> b!2972251 (= e!1870019 EmptyLang!9271)))

(declare-fun b!2972252 () Bool)

(assert (=> b!2972252 (= e!1870021 e!1870017)))

(declare-fun c!487781 () Bool)

(assert (=> b!2972252 (= c!487781 call!197981)))

(declare-fun bm!197979 () Bool)

(assert (=> bm!197979 (= call!197983 (simplify!272 (ite c!487780 (reg!9600 (reg!9600 r!17423)) (ite c!487779 (regTwo!19055 (reg!9600 r!17423)) (regOne!19054 (reg!9600 r!17423))))))))

(declare-fun b!2972253 () Bool)

(assert (=> b!2972253 (= e!1870025 (= (nullable!2967 lt!1036372) (nullable!2967 (reg!9600 r!17423))))))

(declare-fun b!2972254 () Bool)

(assert (=> b!2972254 (= e!1870029 call!197984)))

(declare-fun b!2972255 () Bool)

(assert (=> b!2972255 (= e!1870020 (Union!9271 lt!1036367 lt!1036370))))

(assert (= (and d!842745 c!487783) b!2972251))

(assert (= (and d!842745 (not c!487783)) b!2972241))

(assert (= (and b!2972241 c!487777) b!2972234))

(assert (= (and b!2972241 (not c!487777)) b!2972249))

(assert (= (and b!2972249 c!487785) b!2972231))

(assert (= (and b!2972249 (not c!487785)) b!2972235))

(assert (= (and b!2972235 c!487780) b!2972250))

(assert (= (and b!2972235 (not c!487780)) b!2972238))

(assert (= (and b!2972250 (not res!1225595)) b!2972236))

(assert (= (and b!2972250 c!487782) b!2972246))

(assert (= (and b!2972250 (not c!487782)) b!2972243))

(assert (= (and b!2972238 c!487779) b!2972244))

(assert (= (and b!2972238 (not c!487779)) b!2972233))

(assert (= (and b!2972244 c!487786) b!2972232))

(assert (= (and b!2972244 (not c!487786)) b!2972239))

(assert (= (and b!2972239 c!487778) b!2972237))

(assert (= (and b!2972239 (not c!487778)) b!2972255))

(assert (= (and b!2972233 (not res!1225594)) b!2972254))

(assert (= (and b!2972233 c!487784) b!2972242))

(assert (= (and b!2972233 (not c!487784)) b!2972245))

(assert (= (and b!2972245 c!487776) b!2972247))

(assert (= (and b!2972245 (not c!487776)) b!2972252))

(assert (= (and b!2972252 c!487781) b!2972248))

(assert (= (and b!2972252 (not c!487781)) b!2972240))

(assert (= (or b!2972244 b!2972233) bm!197975))

(assert (= (or b!2972244 b!2972233) bm!197978))

(assert (= (or b!2972239 b!2972254) bm!197977))

(assert (= (or b!2972244 b!2972233) bm!197974))

(assert (= (or b!2972236 b!2972252) bm!197976))

(assert (= (or b!2972250 bm!197978) bm!197979))

(assert (= (or b!2972250 bm!197977) bm!197973))

(assert (= (and d!842745 res!1225596) b!2972253))

(declare-fun m!3338595 () Bool)

(assert (=> bm!197974 m!3338595))

(declare-fun m!3338597 () Bool)

(assert (=> d!842745 m!3338597))

(assert (=> d!842745 m!3338573))

(declare-fun m!3338599 () Bool)

(assert (=> bm!197976 m!3338599))

(declare-fun m!3338601 () Bool)

(assert (=> bm!197973 m!3338601))

(declare-fun m!3338603 () Bool)

(assert (=> b!2972245 m!3338603))

(declare-fun m!3338605 () Bool)

(assert (=> bm!197975 m!3338605))

(declare-fun m!3338607 () Bool)

(assert (=> b!2972253 m!3338607))

(declare-fun m!3338609 () Bool)

(assert (=> b!2972253 m!3338609))

(declare-fun m!3338611 () Bool)

(assert (=> bm!197979 m!3338611))

(assert (=> b!2972124 d!842745))

(declare-fun b!2972284 () Bool)

(declare-fun res!1225614 () Bool)

(declare-fun e!1870048 () Bool)

(assert (=> b!2972284 (=> (not res!1225614) (not e!1870048))))

(declare-fun tail!4853 (List!35136) List!35136)

(assert (=> b!2972284 (= res!1225614 (isEmpty!19249 (tail!4853 s!11993)))))

(declare-fun b!2972285 () Bool)

(declare-fun e!1870047 () Bool)

(declare-fun e!1870046 () Bool)

(assert (=> b!2972285 (= e!1870047 e!1870046)))

(declare-fun res!1225613 () Bool)

(assert (=> b!2972285 (=> (not res!1225613) (not e!1870046))))

(declare-fun lt!1036375 () Bool)

(assert (=> b!2972285 (= res!1225613 (not lt!1036375))))

(declare-fun b!2972286 () Bool)

(declare-fun e!1870050 () Bool)

(declare-fun head!6627 (List!35136) C!18728)

(assert (=> b!2972286 (= e!1870050 (not (= (head!6627 s!11993) (c!487739 lt!1036354))))))

(declare-fun b!2972287 () Bool)

(declare-fun res!1225615 () Bool)

(assert (=> b!2972287 (=> (not res!1225615) (not e!1870048))))

(declare-fun call!197987 () Bool)

(assert (=> b!2972287 (= res!1225615 (not call!197987))))

(declare-fun d!842747 () Bool)

(declare-fun e!1870049 () Bool)

(assert (=> d!842747 e!1870049))

(declare-fun c!487793 () Bool)

(assert (=> d!842747 (= c!487793 ((_ is EmptyExpr!9271) lt!1036354))))

(declare-fun e!1870045 () Bool)

(assert (=> d!842747 (= lt!1036375 e!1870045)))

(declare-fun c!487794 () Bool)

(assert (=> d!842747 (= c!487794 (isEmpty!19249 s!11993))))

(assert (=> d!842747 (validRegex!4004 lt!1036354)))

(assert (=> d!842747 (= (matchR!4153 lt!1036354 s!11993) lt!1036375)))

(declare-fun b!2972288 () Bool)

(assert (=> b!2972288 (= e!1870046 e!1870050)))

(declare-fun res!1225617 () Bool)

(assert (=> b!2972288 (=> res!1225617 e!1870050)))

(assert (=> b!2972288 (= res!1225617 call!197987)))

(declare-fun bm!197982 () Bool)

(assert (=> bm!197982 (= call!197987 (isEmpty!19249 s!11993))))

(declare-fun b!2972289 () Bool)

(assert (=> b!2972289 (= e!1870045 (nullable!2967 lt!1036354))))

(declare-fun b!2972290 () Bool)

(assert (=> b!2972290 (= e!1870049 (= lt!1036375 call!197987))))

(declare-fun b!2972291 () Bool)

(assert (=> b!2972291 (= e!1870048 (= (head!6627 s!11993) (c!487739 lt!1036354)))))

(declare-fun b!2972292 () Bool)

(declare-fun derivativeStep!2568 (Regex!9271 C!18728) Regex!9271)

(assert (=> b!2972292 (= e!1870045 (matchR!4153 (derivativeStep!2568 lt!1036354 (head!6627 s!11993)) (tail!4853 s!11993)))))

(declare-fun b!2972293 () Bool)

(declare-fun e!1870051 () Bool)

(assert (=> b!2972293 (= e!1870049 e!1870051)))

(declare-fun c!487795 () Bool)

(assert (=> b!2972293 (= c!487795 ((_ is EmptyLang!9271) lt!1036354))))

(declare-fun b!2972294 () Bool)

(declare-fun res!1225616 () Bool)

(assert (=> b!2972294 (=> res!1225616 e!1870047)))

(assert (=> b!2972294 (= res!1225616 e!1870048)))

(declare-fun res!1225619 () Bool)

(assert (=> b!2972294 (=> (not res!1225619) (not e!1870048))))

(assert (=> b!2972294 (= res!1225619 lt!1036375)))

(declare-fun b!2972295 () Bool)

(assert (=> b!2972295 (= e!1870051 (not lt!1036375))))

(declare-fun b!2972296 () Bool)

(declare-fun res!1225618 () Bool)

(assert (=> b!2972296 (=> res!1225618 e!1870050)))

(assert (=> b!2972296 (= res!1225618 (not (isEmpty!19249 (tail!4853 s!11993))))))

(declare-fun b!2972297 () Bool)

(declare-fun res!1225620 () Bool)

(assert (=> b!2972297 (=> res!1225620 e!1870047)))

(assert (=> b!2972297 (= res!1225620 (not ((_ is ElementMatch!9271) lt!1036354)))))

(assert (=> b!2972297 (= e!1870051 e!1870047)))

(assert (= (and d!842747 c!487794) b!2972289))

(assert (= (and d!842747 (not c!487794)) b!2972292))

(assert (= (and d!842747 c!487793) b!2972290))

(assert (= (and d!842747 (not c!487793)) b!2972293))

(assert (= (and b!2972293 c!487795) b!2972295))

(assert (= (and b!2972293 (not c!487795)) b!2972297))

(assert (= (and b!2972297 (not res!1225620)) b!2972294))

(assert (= (and b!2972294 res!1225619) b!2972287))

(assert (= (and b!2972287 res!1225615) b!2972284))

(assert (= (and b!2972284 res!1225614) b!2972291))

(assert (= (and b!2972294 (not res!1225616)) b!2972285))

(assert (= (and b!2972285 res!1225613) b!2972288))

(assert (= (and b!2972288 (not res!1225617)) b!2972296))

(assert (= (and b!2972296 (not res!1225618)) b!2972286))

(assert (= (or b!2972290 b!2972287 b!2972288) bm!197982))

(declare-fun m!3338613 () Bool)

(assert (=> b!2972291 m!3338613))

(assert (=> b!2972286 m!3338613))

(declare-fun m!3338615 () Bool)

(assert (=> b!2972289 m!3338615))

(assert (=> b!2972292 m!3338613))

(assert (=> b!2972292 m!3338613))

(declare-fun m!3338617 () Bool)

(assert (=> b!2972292 m!3338617))

(declare-fun m!3338619 () Bool)

(assert (=> b!2972292 m!3338619))

(assert (=> b!2972292 m!3338617))

(assert (=> b!2972292 m!3338619))

(declare-fun m!3338621 () Bool)

(assert (=> b!2972292 m!3338621))

(assert (=> d!842747 m!3338579))

(declare-fun m!3338623 () Bool)

(assert (=> d!842747 m!3338623))

(assert (=> b!2972284 m!3338619))

(assert (=> b!2972284 m!3338619))

(declare-fun m!3338625 () Bool)

(assert (=> b!2972284 m!3338625))

(assert (=> bm!197982 m!3338579))

(assert (=> b!2972296 m!3338619))

(assert (=> b!2972296 m!3338619))

(assert (=> b!2972296 m!3338625))

(assert (=> b!2972129 d!842747))

(declare-fun d!842749 () Bool)

(assert (=> d!842749 (= (isEmpty!19249 s!11993) ((_ is Nil!35012) s!11993))))

(assert (=> b!2972122 d!842749))

(declare-fun b!2972404 () Bool)

(assert (=> b!2972404 true))

(assert (=> b!2972404 true))

(declare-fun bs!526510 () Bool)

(declare-fun b!2972397 () Bool)

(assert (= bs!526510 (and b!2972397 b!2972404)))

(declare-fun lambda!110582 () Int)

(declare-fun lambda!110581 () Int)

(assert (=> bs!526510 (not (= lambda!110582 lambda!110581))))

(assert (=> b!2972397 true))

(assert (=> b!2972397 true))

(declare-fun e!1870106 () Bool)

(declare-fun call!198001 () Bool)

(assert (=> b!2972397 (= e!1870106 call!198001)))

(declare-fun b!2972398 () Bool)

(declare-fun e!1870108 () Bool)

(assert (=> b!2972398 (= e!1870108 (= s!11993 (Cons!35012 (c!487739 lt!1036354) Nil!35012)))))

(declare-fun b!2972399 () Bool)

(declare-fun e!1870102 () Bool)

(declare-fun e!1870104 () Bool)

(assert (=> b!2972399 (= e!1870102 e!1870104)))

(declare-fun res!1225676 () Bool)

(assert (=> b!2972399 (= res!1225676 (not ((_ is EmptyLang!9271) lt!1036354)))))

(assert (=> b!2972399 (=> (not res!1225676) (not e!1870104))))

(declare-fun b!2972400 () Bool)

(declare-fun c!487817 () Bool)

(assert (=> b!2972400 (= c!487817 ((_ is ElementMatch!9271) lt!1036354))))

(assert (=> b!2972400 (= e!1870104 e!1870108)))

(declare-fun d!842751 () Bool)

(declare-fun c!487819 () Bool)

(assert (=> d!842751 (= c!487819 ((_ is EmptyExpr!9271) lt!1036354))))

(assert (=> d!842751 (= (matchRSpec!1408 lt!1036354 s!11993) e!1870102)))

(declare-fun b!2972401 () Bool)

(declare-fun c!487818 () Bool)

(assert (=> b!2972401 (= c!487818 ((_ is Union!9271) lt!1036354))))

(declare-fun e!1870107 () Bool)

(assert (=> b!2972401 (= e!1870108 e!1870107)))

(declare-fun c!487820 () Bool)

(declare-fun bm!197996 () Bool)

(declare-fun Exists!1553 (Int) Bool)

(assert (=> bm!197996 (= call!198001 (Exists!1553 (ite c!487820 lambda!110581 lambda!110582)))))

(declare-fun b!2972402 () Bool)

(assert (=> b!2972402 (= e!1870107 e!1870106)))

(assert (=> b!2972402 (= c!487820 ((_ is Star!9271) lt!1036354))))

(declare-fun b!2972403 () Bool)

(declare-fun res!1225674 () Bool)

(declare-fun e!1870103 () Bool)

(assert (=> b!2972403 (=> res!1225674 e!1870103)))

(declare-fun call!198002 () Bool)

(assert (=> b!2972403 (= res!1225674 call!198002)))

(assert (=> b!2972403 (= e!1870106 e!1870103)))

(assert (=> b!2972404 (= e!1870103 call!198001)))

(declare-fun bm!197997 () Bool)

(assert (=> bm!197997 (= call!198002 (isEmpty!19249 s!11993))))

(declare-fun b!2972405 () Bool)

(declare-fun e!1870105 () Bool)

(assert (=> b!2972405 (= e!1870107 e!1870105)))

(declare-fun res!1225675 () Bool)

(assert (=> b!2972405 (= res!1225675 (matchRSpec!1408 (regOne!19055 lt!1036354) s!11993))))

(assert (=> b!2972405 (=> res!1225675 e!1870105)))

(declare-fun b!2972406 () Bool)

(assert (=> b!2972406 (= e!1870102 call!198002)))

(declare-fun b!2972407 () Bool)

(assert (=> b!2972407 (= e!1870105 (matchRSpec!1408 (regTwo!19055 lt!1036354) s!11993))))

(assert (= (and d!842751 c!487819) b!2972406))

(assert (= (and d!842751 (not c!487819)) b!2972399))

(assert (= (and b!2972399 res!1225676) b!2972400))

(assert (= (and b!2972400 c!487817) b!2972398))

(assert (= (and b!2972400 (not c!487817)) b!2972401))

(assert (= (and b!2972401 c!487818) b!2972405))

(assert (= (and b!2972401 (not c!487818)) b!2972402))

(assert (= (and b!2972405 (not res!1225675)) b!2972407))

(assert (= (and b!2972402 c!487820) b!2972403))

(assert (= (and b!2972402 (not c!487820)) b!2972397))

(assert (= (and b!2972403 (not res!1225674)) b!2972404))

(assert (= (or b!2972404 b!2972397) bm!197996))

(assert (= (or b!2972406 b!2972403) bm!197997))

(declare-fun m!3338647 () Bool)

(assert (=> bm!197996 m!3338647))

(assert (=> bm!197997 m!3338579))

(declare-fun m!3338649 () Bool)

(assert (=> b!2972405 m!3338649))

(declare-fun m!3338651 () Bool)

(assert (=> b!2972407 m!3338651))

(assert (=> b!2972122 d!842751))

(declare-fun d!842761 () Bool)

(assert (=> d!842761 (= (matchR!4153 lt!1036354 s!11993) (matchRSpec!1408 lt!1036354 s!11993))))

(declare-fun lt!1036396 () Unit!48921)

(declare-fun choose!17571 (Regex!9271 List!35136) Unit!48921)

(assert (=> d!842761 (= lt!1036396 (choose!17571 lt!1036354 s!11993))))

(assert (=> d!842761 (validRegex!4004 lt!1036354)))

(assert (=> d!842761 (= (mainMatchTheorem!1408 lt!1036354 s!11993) lt!1036396)))

(declare-fun bs!526511 () Bool)

(assert (= bs!526511 d!842761))

(assert (=> bs!526511 m!3338577))

(assert (=> bs!526511 m!3338581))

(declare-fun m!3338653 () Bool)

(assert (=> bs!526511 m!3338653))

(assert (=> bs!526511 m!3338623))

(assert (=> b!2972122 d!842761))

(declare-fun b!2972460 () Bool)

(declare-fun e!1870140 () Bool)

(declare-fun call!198018 () Bool)

(assert (=> b!2972460 (= e!1870140 call!198018)))

(declare-fun d!842763 () Bool)

(declare-fun res!1225683 () Bool)

(declare-fun e!1870136 () Bool)

(assert (=> d!842763 (=> res!1225683 e!1870136)))

(assert (=> d!842763 (= res!1225683 ((_ is ElementMatch!9271) r!17423))))

(assert (=> d!842763 (= (validRegex!4004 r!17423) e!1870136)))

(declare-fun b!2972461 () Bool)

(declare-fun e!1870137 () Bool)

(assert (=> b!2972461 (= e!1870136 e!1870137)))

(declare-fun c!487843 () Bool)

(assert (=> b!2972461 (= c!487843 ((_ is Star!9271) r!17423))))

(declare-fun b!2972462 () Bool)

(declare-fun e!1870139 () Bool)

(declare-fun e!1870135 () Bool)

(assert (=> b!2972462 (= e!1870139 e!1870135)))

(declare-fun res!1225681 () Bool)

(assert (=> b!2972462 (=> (not res!1225681) (not e!1870135))))

(assert (=> b!2972462 (= res!1225681 call!198018)))

(declare-fun bm!198010 () Bool)

(declare-fun call!198017 () Bool)

(declare-fun c!487844 () Bool)

(assert (=> bm!198010 (= call!198017 (validRegex!4004 (ite c!487843 (reg!9600 r!17423) (ite c!487844 (regOne!19055 r!17423) (regTwo!19054 r!17423)))))))

(declare-fun b!2972463 () Bool)

(declare-fun e!1870141 () Bool)

(assert (=> b!2972463 (= e!1870141 call!198017)))

(declare-fun b!2972464 () Bool)

(declare-fun e!1870138 () Bool)

(assert (=> b!2972464 (= e!1870137 e!1870138)))

(assert (=> b!2972464 (= c!487844 ((_ is Union!9271) r!17423))))

(declare-fun b!2972465 () Bool)

(declare-fun call!198019 () Bool)

(assert (=> b!2972465 (= e!1870135 call!198019)))

(declare-fun bm!198011 () Bool)

(assert (=> bm!198011 (= call!198018 (validRegex!4004 (ite c!487844 (regTwo!19055 r!17423) (regOne!19054 r!17423))))))

(declare-fun b!2972466 () Bool)

(declare-fun res!1225682 () Bool)

(assert (=> b!2972466 (=> (not res!1225682) (not e!1870140))))

(assert (=> b!2972466 (= res!1225682 call!198019)))

(assert (=> b!2972466 (= e!1870138 e!1870140)))

(declare-fun b!2972467 () Bool)

(declare-fun res!1225684 () Bool)

(assert (=> b!2972467 (=> res!1225684 e!1870139)))

(assert (=> b!2972467 (= res!1225684 (not ((_ is Concat!14592) r!17423)))))

(assert (=> b!2972467 (= e!1870138 e!1870139)))

(declare-fun bm!198012 () Bool)

(assert (=> bm!198012 (= call!198019 call!198017)))

(declare-fun b!2972468 () Bool)

(assert (=> b!2972468 (= e!1870137 e!1870141)))

(declare-fun res!1225685 () Bool)

(assert (=> b!2972468 (= res!1225685 (not (nullable!2967 (reg!9600 r!17423))))))

(assert (=> b!2972468 (=> (not res!1225685) (not e!1870141))))

(assert (= (and d!842763 (not res!1225683)) b!2972461))

(assert (= (and b!2972461 c!487843) b!2972468))

(assert (= (and b!2972461 (not c!487843)) b!2972464))

(assert (= (and b!2972468 res!1225685) b!2972463))

(assert (= (and b!2972464 c!487844) b!2972466))

(assert (= (and b!2972464 (not c!487844)) b!2972467))

(assert (= (and b!2972466 res!1225682) b!2972460))

(assert (= (and b!2972467 (not res!1225684)) b!2972462))

(assert (= (and b!2972462 res!1225681) b!2972465))

(assert (= (or b!2972466 b!2972465) bm!198012))

(assert (= (or b!2972460 b!2972462) bm!198011))

(assert (= (or b!2972463 bm!198012) bm!198010))

(declare-fun m!3338655 () Bool)

(assert (=> bm!198010 m!3338655))

(declare-fun m!3338657 () Bool)

(assert (=> bm!198011 m!3338657))

(assert (=> b!2972468 m!3338609))

(assert (=> start!287468 d!842763))

(declare-fun bs!526512 () Bool)

(declare-fun b!2972476 () Bool)

(assert (= bs!526512 (and b!2972476 b!2972404)))

(declare-fun lambda!110583 () Int)

(assert (=> bs!526512 (= (and (= (reg!9600 r!17423) (reg!9600 lt!1036354)) (= r!17423 lt!1036354)) (= lambda!110583 lambda!110581))))

(declare-fun bs!526513 () Bool)

(assert (= bs!526513 (and b!2972476 b!2972397)))

(assert (=> bs!526513 (not (= lambda!110583 lambda!110582))))

(assert (=> b!2972476 true))

(assert (=> b!2972476 true))

(declare-fun bs!526514 () Bool)

(declare-fun b!2972469 () Bool)

(assert (= bs!526514 (and b!2972469 b!2972404)))

(declare-fun lambda!110584 () Int)

(assert (=> bs!526514 (not (= lambda!110584 lambda!110581))))

(declare-fun bs!526515 () Bool)

(assert (= bs!526515 (and b!2972469 b!2972397)))

(assert (=> bs!526515 (= (and (= (regOne!19054 r!17423) (regOne!19054 lt!1036354)) (= (regTwo!19054 r!17423) (regTwo!19054 lt!1036354))) (= lambda!110584 lambda!110582))))

(declare-fun bs!526516 () Bool)

(assert (= bs!526516 (and b!2972469 b!2972476)))

(assert (=> bs!526516 (not (= lambda!110584 lambda!110583))))

(assert (=> b!2972469 true))

(assert (=> b!2972469 true))

(declare-fun e!1870146 () Bool)

(declare-fun call!198020 () Bool)

(assert (=> b!2972469 (= e!1870146 call!198020)))

(declare-fun b!2972470 () Bool)

(declare-fun e!1870148 () Bool)

(assert (=> b!2972470 (= e!1870148 (= s!11993 (Cons!35012 (c!487739 r!17423) Nil!35012)))))

(declare-fun b!2972471 () Bool)

(declare-fun e!1870142 () Bool)

(declare-fun e!1870144 () Bool)

(assert (=> b!2972471 (= e!1870142 e!1870144)))

(declare-fun res!1225688 () Bool)

(assert (=> b!2972471 (= res!1225688 (not ((_ is EmptyLang!9271) r!17423)))))

(assert (=> b!2972471 (=> (not res!1225688) (not e!1870144))))

(declare-fun b!2972472 () Bool)

(declare-fun c!487845 () Bool)

(assert (=> b!2972472 (= c!487845 ((_ is ElementMatch!9271) r!17423))))

(assert (=> b!2972472 (= e!1870144 e!1870148)))

(declare-fun d!842765 () Bool)

(declare-fun c!487847 () Bool)

(assert (=> d!842765 (= c!487847 ((_ is EmptyExpr!9271) r!17423))))

(assert (=> d!842765 (= (matchRSpec!1408 r!17423 s!11993) e!1870142)))

(declare-fun b!2972473 () Bool)

(declare-fun c!487846 () Bool)

(assert (=> b!2972473 (= c!487846 ((_ is Union!9271) r!17423))))

(declare-fun e!1870147 () Bool)

(assert (=> b!2972473 (= e!1870148 e!1870147)))

(declare-fun bm!198015 () Bool)

(declare-fun c!487848 () Bool)

(assert (=> bm!198015 (= call!198020 (Exists!1553 (ite c!487848 lambda!110583 lambda!110584)))))

(declare-fun b!2972474 () Bool)

(assert (=> b!2972474 (= e!1870147 e!1870146)))

(assert (=> b!2972474 (= c!487848 ((_ is Star!9271) r!17423))))

(declare-fun b!2972475 () Bool)

(declare-fun res!1225686 () Bool)

(declare-fun e!1870143 () Bool)

(assert (=> b!2972475 (=> res!1225686 e!1870143)))

(declare-fun call!198021 () Bool)

(assert (=> b!2972475 (= res!1225686 call!198021)))

(assert (=> b!2972475 (= e!1870146 e!1870143)))

(assert (=> b!2972476 (= e!1870143 call!198020)))

(declare-fun bm!198016 () Bool)

(assert (=> bm!198016 (= call!198021 (isEmpty!19249 s!11993))))

(declare-fun b!2972477 () Bool)

(declare-fun e!1870145 () Bool)

(assert (=> b!2972477 (= e!1870147 e!1870145)))

(declare-fun res!1225687 () Bool)

(assert (=> b!2972477 (= res!1225687 (matchRSpec!1408 (regOne!19055 r!17423) s!11993))))

(assert (=> b!2972477 (=> res!1225687 e!1870145)))

(declare-fun b!2972478 () Bool)

(assert (=> b!2972478 (= e!1870142 call!198021)))

(declare-fun b!2972479 () Bool)

(assert (=> b!2972479 (= e!1870145 (matchRSpec!1408 (regTwo!19055 r!17423) s!11993))))

(assert (= (and d!842765 c!487847) b!2972478))

(assert (= (and d!842765 (not c!487847)) b!2972471))

(assert (= (and b!2972471 res!1225688) b!2972472))

(assert (= (and b!2972472 c!487845) b!2972470))

(assert (= (and b!2972472 (not c!487845)) b!2972473))

(assert (= (and b!2972473 c!487846) b!2972477))

(assert (= (and b!2972473 (not c!487846)) b!2972474))

(assert (= (and b!2972477 (not res!1225687)) b!2972479))

(assert (= (and b!2972474 c!487848) b!2972475))

(assert (= (and b!2972474 (not c!487848)) b!2972469))

(assert (= (and b!2972475 (not res!1225686)) b!2972476))

(assert (= (or b!2972476 b!2972469) bm!198015))

(assert (= (or b!2972478 b!2972475) bm!198016))

(declare-fun m!3338659 () Bool)

(assert (=> bm!198015 m!3338659))

(assert (=> bm!198016 m!3338579))

(declare-fun m!3338661 () Bool)

(assert (=> b!2972477 m!3338661))

(declare-fun m!3338663 () Bool)

(assert (=> b!2972479 m!3338663))

(assert (=> b!2972131 d!842765))

(declare-fun b!2972482 () Bool)

(declare-fun res!1225692 () Bool)

(declare-fun e!1870154 () Bool)

(assert (=> b!2972482 (=> (not res!1225692) (not e!1870154))))

(assert (=> b!2972482 (= res!1225692 (isEmpty!19249 (tail!4853 s!11993)))))

(declare-fun b!2972483 () Bool)

(declare-fun e!1870153 () Bool)

(declare-fun e!1870152 () Bool)

(assert (=> b!2972483 (= e!1870153 e!1870152)))

(declare-fun res!1225691 () Bool)

(assert (=> b!2972483 (=> (not res!1225691) (not e!1870152))))

(declare-fun lt!1036397 () Bool)

(assert (=> b!2972483 (= res!1225691 (not lt!1036397))))

(declare-fun b!2972484 () Bool)

(declare-fun e!1870156 () Bool)

(assert (=> b!2972484 (= e!1870156 (not (= (head!6627 s!11993) (c!487739 r!17423))))))

(declare-fun b!2972485 () Bool)

(declare-fun res!1225693 () Bool)

(assert (=> b!2972485 (=> (not res!1225693) (not e!1870154))))

(declare-fun call!198022 () Bool)

(assert (=> b!2972485 (= res!1225693 (not call!198022))))

(declare-fun d!842767 () Bool)

(declare-fun e!1870155 () Bool)

(assert (=> d!842767 e!1870155))

(declare-fun c!487849 () Bool)

(assert (=> d!842767 (= c!487849 ((_ is EmptyExpr!9271) r!17423))))

(declare-fun e!1870151 () Bool)

(assert (=> d!842767 (= lt!1036397 e!1870151)))

(declare-fun c!487850 () Bool)

(assert (=> d!842767 (= c!487850 (isEmpty!19249 s!11993))))

(assert (=> d!842767 (validRegex!4004 r!17423)))

(assert (=> d!842767 (= (matchR!4153 r!17423 s!11993) lt!1036397)))

(declare-fun b!2972486 () Bool)

(assert (=> b!2972486 (= e!1870152 e!1870156)))

(declare-fun res!1225695 () Bool)

(assert (=> b!2972486 (=> res!1225695 e!1870156)))

(assert (=> b!2972486 (= res!1225695 call!198022)))

(declare-fun bm!198017 () Bool)

(assert (=> bm!198017 (= call!198022 (isEmpty!19249 s!11993))))

(declare-fun b!2972487 () Bool)

(assert (=> b!2972487 (= e!1870151 (nullable!2967 r!17423))))

(declare-fun b!2972488 () Bool)

(assert (=> b!2972488 (= e!1870155 (= lt!1036397 call!198022))))

(declare-fun b!2972489 () Bool)

(assert (=> b!2972489 (= e!1870154 (= (head!6627 s!11993) (c!487739 r!17423)))))

(declare-fun b!2972490 () Bool)

(assert (=> b!2972490 (= e!1870151 (matchR!4153 (derivativeStep!2568 r!17423 (head!6627 s!11993)) (tail!4853 s!11993)))))

(declare-fun b!2972491 () Bool)

(declare-fun e!1870157 () Bool)

(assert (=> b!2972491 (= e!1870155 e!1870157)))

(declare-fun c!487851 () Bool)

(assert (=> b!2972491 (= c!487851 ((_ is EmptyLang!9271) r!17423))))

(declare-fun b!2972492 () Bool)

(declare-fun res!1225694 () Bool)

(assert (=> b!2972492 (=> res!1225694 e!1870153)))

(assert (=> b!2972492 (= res!1225694 e!1870154)))

(declare-fun res!1225697 () Bool)

(assert (=> b!2972492 (=> (not res!1225697) (not e!1870154))))

(assert (=> b!2972492 (= res!1225697 lt!1036397)))

(declare-fun b!2972493 () Bool)

(assert (=> b!2972493 (= e!1870157 (not lt!1036397))))

(declare-fun b!2972494 () Bool)

(declare-fun res!1225696 () Bool)

(assert (=> b!2972494 (=> res!1225696 e!1870156)))

(assert (=> b!2972494 (= res!1225696 (not (isEmpty!19249 (tail!4853 s!11993))))))

(declare-fun b!2972495 () Bool)

(declare-fun res!1225698 () Bool)

(assert (=> b!2972495 (=> res!1225698 e!1870153)))

(assert (=> b!2972495 (= res!1225698 (not ((_ is ElementMatch!9271) r!17423)))))

(assert (=> b!2972495 (= e!1870157 e!1870153)))

(assert (= (and d!842767 c!487850) b!2972487))

(assert (= (and d!842767 (not c!487850)) b!2972490))

(assert (= (and d!842767 c!487849) b!2972488))

(assert (= (and d!842767 (not c!487849)) b!2972491))

(assert (= (and b!2972491 c!487851) b!2972493))

(assert (= (and b!2972491 (not c!487851)) b!2972495))

(assert (= (and b!2972495 (not res!1225698)) b!2972492))

(assert (= (and b!2972492 res!1225697) b!2972485))

(assert (= (and b!2972485 res!1225693) b!2972482))

(assert (= (and b!2972482 res!1225692) b!2972489))

(assert (= (and b!2972492 (not res!1225694)) b!2972483))

(assert (= (and b!2972483 res!1225691) b!2972486))

(assert (= (and b!2972486 (not res!1225695)) b!2972494))

(assert (= (and b!2972494 (not res!1225696)) b!2972484))

(assert (= (or b!2972488 b!2972485 b!2972486) bm!198017))

(assert (=> b!2972489 m!3338613))

(assert (=> b!2972484 m!3338613))

(declare-fun m!3338665 () Bool)

(assert (=> b!2972487 m!3338665))

(assert (=> b!2972490 m!3338613))

(assert (=> b!2972490 m!3338613))

(declare-fun m!3338667 () Bool)

(assert (=> b!2972490 m!3338667))

(assert (=> b!2972490 m!3338619))

(assert (=> b!2972490 m!3338667))

(assert (=> b!2972490 m!3338619))

(declare-fun m!3338669 () Bool)

(assert (=> b!2972490 m!3338669))

(assert (=> d!842767 m!3338579))

(assert (=> d!842767 m!3338575))

(assert (=> b!2972482 m!3338619))

(assert (=> b!2972482 m!3338619))

(assert (=> b!2972482 m!3338625))

(assert (=> bm!198017 m!3338579))

(assert (=> b!2972494 m!3338619))

(assert (=> b!2972494 m!3338619))

(assert (=> b!2972494 m!3338625))

(assert (=> b!2972131 d!842767))

(declare-fun d!842769 () Bool)

(assert (=> d!842769 (= (matchR!4153 r!17423 s!11993) (matchRSpec!1408 r!17423 s!11993))))

(declare-fun lt!1036398 () Unit!48921)

(assert (=> d!842769 (= lt!1036398 (choose!17571 r!17423 s!11993))))

(assert (=> d!842769 (validRegex!4004 r!17423)))

(assert (=> d!842769 (= (mainMatchTheorem!1408 r!17423 s!11993) lt!1036398)))

(declare-fun bs!526517 () Bool)

(assert (= bs!526517 d!842769))

(assert (=> bs!526517 m!3338569))

(assert (=> bs!526517 m!3338567))

(declare-fun m!3338671 () Bool)

(assert (=> bs!526517 m!3338671))

(assert (=> bs!526517 m!3338575))

(assert (=> b!2972131 d!842769))

(declare-fun b!2972507 () Bool)

(declare-fun e!1870160 () Bool)

(declare-fun tp!947608 () Bool)

(declare-fun tp!947610 () Bool)

(assert (=> b!2972507 (= e!1870160 (and tp!947608 tp!947610))))

(declare-fun b!2972508 () Bool)

(declare-fun tp!947611 () Bool)

(assert (=> b!2972508 (= e!1870160 tp!947611)))

(declare-fun b!2972509 () Bool)

(declare-fun tp!947612 () Bool)

(declare-fun tp!947609 () Bool)

(assert (=> b!2972509 (= e!1870160 (and tp!947612 tp!947609))))

(declare-fun b!2972506 () Bool)

(assert (=> b!2972506 (= e!1870160 tp_is_empty!16105)))

(assert (=> b!2972130 (= tp!947593 e!1870160)))

(assert (= (and b!2972130 ((_ is ElementMatch!9271) (regOne!19054 r!17423))) b!2972506))

(assert (= (and b!2972130 ((_ is Concat!14592) (regOne!19054 r!17423))) b!2972507))

(assert (= (and b!2972130 ((_ is Star!9271) (regOne!19054 r!17423))) b!2972508))

(assert (= (and b!2972130 ((_ is Union!9271) (regOne!19054 r!17423))) b!2972509))

(declare-fun b!2972511 () Bool)

(declare-fun e!1870161 () Bool)

(declare-fun tp!947613 () Bool)

(declare-fun tp!947615 () Bool)

(assert (=> b!2972511 (= e!1870161 (and tp!947613 tp!947615))))

(declare-fun b!2972512 () Bool)

(declare-fun tp!947616 () Bool)

(assert (=> b!2972512 (= e!1870161 tp!947616)))

(declare-fun b!2972513 () Bool)

(declare-fun tp!947617 () Bool)

(declare-fun tp!947614 () Bool)

(assert (=> b!2972513 (= e!1870161 (and tp!947617 tp!947614))))

(declare-fun b!2972510 () Bool)

(assert (=> b!2972510 (= e!1870161 tp_is_empty!16105)))

(assert (=> b!2972130 (= tp!947595 e!1870161)))

(assert (= (and b!2972130 ((_ is ElementMatch!9271) (regTwo!19054 r!17423))) b!2972510))

(assert (= (and b!2972130 ((_ is Concat!14592) (regTwo!19054 r!17423))) b!2972511))

(assert (= (and b!2972130 ((_ is Star!9271) (regTwo!19054 r!17423))) b!2972512))

(assert (= (and b!2972130 ((_ is Union!9271) (regTwo!19054 r!17423))) b!2972513))

(declare-fun b!2972515 () Bool)

(declare-fun e!1870162 () Bool)

(declare-fun tp!947618 () Bool)

(declare-fun tp!947620 () Bool)

(assert (=> b!2972515 (= e!1870162 (and tp!947618 tp!947620))))

(declare-fun b!2972516 () Bool)

(declare-fun tp!947621 () Bool)

(assert (=> b!2972516 (= e!1870162 tp!947621)))

(declare-fun b!2972517 () Bool)

(declare-fun tp!947622 () Bool)

(declare-fun tp!947619 () Bool)

(assert (=> b!2972517 (= e!1870162 (and tp!947622 tp!947619))))

(declare-fun b!2972514 () Bool)

(assert (=> b!2972514 (= e!1870162 tp_is_empty!16105)))

(assert (=> b!2972125 (= tp!947594 e!1870162)))

(assert (= (and b!2972125 ((_ is ElementMatch!9271) (reg!9600 r!17423))) b!2972514))

(assert (= (and b!2972125 ((_ is Concat!14592) (reg!9600 r!17423))) b!2972515))

(assert (= (and b!2972125 ((_ is Star!9271) (reg!9600 r!17423))) b!2972516))

(assert (= (and b!2972125 ((_ is Union!9271) (reg!9600 r!17423))) b!2972517))

(declare-fun b!2972519 () Bool)

(declare-fun e!1870163 () Bool)

(declare-fun tp!947623 () Bool)

(declare-fun tp!947625 () Bool)

(assert (=> b!2972519 (= e!1870163 (and tp!947623 tp!947625))))

(declare-fun b!2972520 () Bool)

(declare-fun tp!947626 () Bool)

(assert (=> b!2972520 (= e!1870163 tp!947626)))

(declare-fun b!2972521 () Bool)

(declare-fun tp!947627 () Bool)

(declare-fun tp!947624 () Bool)

(assert (=> b!2972521 (= e!1870163 (and tp!947627 tp!947624))))

(declare-fun b!2972518 () Bool)

(assert (=> b!2972518 (= e!1870163 tp_is_empty!16105)))

(assert (=> b!2972127 (= tp!947597 e!1870163)))

(assert (= (and b!2972127 ((_ is ElementMatch!9271) (regOne!19055 r!17423))) b!2972518))

(assert (= (and b!2972127 ((_ is Concat!14592) (regOne!19055 r!17423))) b!2972519))

(assert (= (and b!2972127 ((_ is Star!9271) (regOne!19055 r!17423))) b!2972520))

(assert (= (and b!2972127 ((_ is Union!9271) (regOne!19055 r!17423))) b!2972521))

(declare-fun b!2972523 () Bool)

(declare-fun e!1870164 () Bool)

(declare-fun tp!947628 () Bool)

(declare-fun tp!947630 () Bool)

(assert (=> b!2972523 (= e!1870164 (and tp!947628 tp!947630))))

(declare-fun b!2972524 () Bool)

(declare-fun tp!947631 () Bool)

(assert (=> b!2972524 (= e!1870164 tp!947631)))

(declare-fun b!2972525 () Bool)

(declare-fun tp!947632 () Bool)

(declare-fun tp!947629 () Bool)

(assert (=> b!2972525 (= e!1870164 (and tp!947632 tp!947629))))

(declare-fun b!2972522 () Bool)

(assert (=> b!2972522 (= e!1870164 tp_is_empty!16105)))

(assert (=> b!2972127 (= tp!947596 e!1870164)))

(assert (= (and b!2972127 ((_ is ElementMatch!9271) (regTwo!19055 r!17423))) b!2972522))

(assert (= (and b!2972127 ((_ is Concat!14592) (regTwo!19055 r!17423))) b!2972523))

(assert (= (and b!2972127 ((_ is Star!9271) (regTwo!19055 r!17423))) b!2972524))

(assert (= (and b!2972127 ((_ is Union!9271) (regTwo!19055 r!17423))) b!2972525))

(declare-fun b!2972530 () Bool)

(declare-fun e!1870167 () Bool)

(declare-fun tp!947635 () Bool)

(assert (=> b!2972530 (= e!1870167 (and tp_is_empty!16105 tp!947635))))

(assert (=> b!2972128 (= tp!947592 e!1870167)))

(assert (= (and b!2972128 ((_ is Cons!35012) (t!234201 s!11993))) b!2972530))

(check-sat (not bm!197974) (not b!2972296) (not b!2972172) (not bm!197982) (not b!2972292) (not bm!197996) (not b!2972405) (not b!2972479) (not b!2972511) (not bm!197997) (not d!842761) (not b!2972513) (not b!2972494) (not bm!198016) (not b!2972519) (not d!842745) (not b!2972489) (not b!2972520) (not b!2972245) (not b!2972286) (not b!2972487) (not b!2972521) (not bm!198015) (not b!2972253) (not b!2972284) (not b!2972523) (not d!842747) (not b!2972477) (not b!2972524) (not b!2972507) (not b!2972482) (not b!2972289) (not bm!198010) (not b!2972530) (not b!2972291) (not bm!197976) (not d!842767) (not bm!197979) (not b!2972525) (not b!2972515) (not bm!198011) (not b!2972484) (not bm!197973) (not b!2972516) (not b!2972509) (not b!2972490) (not d!842769) tp_is_empty!16105 (not b!2972407) (not b!2972468) (not bm!197957) (not bm!197956) (not b!2972517) (not bm!198017) (not b!2972508) (not bm!197975) (not b!2972512))
(check-sat)
