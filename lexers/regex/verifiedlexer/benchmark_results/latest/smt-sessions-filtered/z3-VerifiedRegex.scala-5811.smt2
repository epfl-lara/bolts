; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286728 () Bool)

(assert start!286728)

(declare-fun b!2958149 () Bool)

(assert (=> b!2958149 true))

(assert (=> b!2958149 true))

(assert (=> b!2958149 true))

(declare-fun lambda!110224 () Int)

(declare-fun lambda!110223 () Int)

(assert (=> b!2958149 (not (= lambda!110224 lambda!110223))))

(assert (=> b!2958149 true))

(assert (=> b!2958149 true))

(assert (=> b!2958149 true))

(declare-fun b!2958140 () Bool)

(declare-fun res!1220507 () Bool)

(declare-fun e!1862392 () Bool)

(assert (=> b!2958140 (=> res!1220507 e!1862392)))

(declare-datatypes ((C!18532 0))(
  ( (C!18533 (val!11302 Int)) )
))
(declare-datatypes ((Regex!9173 0))(
  ( (ElementMatch!9173 (c!484715 C!18532)) (Concat!14494 (regOne!18858 Regex!9173) (regTwo!18858 Regex!9173)) (EmptyExpr!9173) (Star!9173 (reg!9502 Regex!9173)) (EmptyLang!9173) (Union!9173 (regOne!18859 Regex!9173) (regTwo!18859 Regex!9173)) )
))
(declare-fun lt!1033435 () Regex!9173)

(declare-fun validRegex!3906 (Regex!9173) Bool)

(assert (=> b!2958140 (= res!1220507 (not (validRegex!3906 lt!1033435)))))

(declare-fun b!2958141 () Bool)

(declare-fun e!1862393 () Bool)

(declare-fun tp_is_empty!15909 () Bool)

(assert (=> b!2958141 (= e!1862393 tp_is_empty!15909)))

(declare-fun b!2958142 () Bool)

(declare-fun res!1220508 () Bool)

(declare-fun e!1862387 () Bool)

(assert (=> b!2958142 (=> res!1220508 e!1862387)))

(declare-fun lt!1033427 () Regex!9173)

(declare-fun isEmptyExpr!376 (Regex!9173) Bool)

(assert (=> b!2958142 (= res!1220508 (isEmptyExpr!376 lt!1033427))))

(declare-fun res!1220502 () Bool)

(declare-fun e!1862391 () Bool)

(assert (=> start!286728 (=> (not res!1220502) (not e!1862391))))

(declare-fun r!17423 () Regex!9173)

(assert (=> start!286728 (= res!1220502 (validRegex!3906 r!17423))))

(assert (=> start!286728 e!1862391))

(assert (=> start!286728 e!1862393))

(declare-fun e!1862390 () Bool)

(assert (=> start!286728 e!1862390))

(declare-fun b!2958143 () Bool)

(declare-fun e!1862389 () Bool)

(assert (=> b!2958143 (= e!1862387 e!1862389)))

(declare-fun res!1220503 () Bool)

(assert (=> b!2958143 (=> res!1220503 e!1862389)))

(declare-fun lt!1033432 () Regex!9173)

(declare-datatypes ((List!35038 0))(
  ( (Nil!34914) (Cons!34914 (h!40334 C!18532) (t!234103 List!35038)) )
))
(declare-fun s!11993 () List!35038)

(declare-fun matchR!4055 (Regex!9173 List!35038) Bool)

(assert (=> b!2958143 (= res!1220503 (not (matchR!4055 lt!1033432 s!11993)))))

(assert (=> b!2958143 (= lt!1033432 (Concat!14494 lt!1033435 lt!1033427))))

(declare-fun b!2958144 () Bool)

(declare-fun res!1220504 () Bool)

(assert (=> b!2958144 (=> res!1220504 e!1862392)))

(assert (=> b!2958144 (= res!1220504 (not (validRegex!3906 lt!1033427)))))

(declare-fun b!2958145 () Bool)

(declare-fun res!1220506 () Bool)

(declare-fun e!1862388 () Bool)

(assert (=> b!2958145 (=> res!1220506 e!1862388)))

(declare-fun isEmpty!19196 (List!35038) Bool)

(assert (=> b!2958145 (= res!1220506 (isEmpty!19196 s!11993))))

(declare-fun b!2958146 () Bool)

(declare-fun tp!944313 () Bool)

(declare-fun tp!944309 () Bool)

(assert (=> b!2958146 (= e!1862393 (and tp!944313 tp!944309))))

(declare-fun b!2958147 () Bool)

(assert (=> b!2958147 (= e!1862391 (not e!1862388))))

(declare-fun res!1220499 () Bool)

(assert (=> b!2958147 (=> res!1220499 e!1862388)))

(declare-fun lt!1033434 () Bool)

(get-info :version)

(assert (=> b!2958147 (= res!1220499 (or lt!1033434 (not ((_ is Concat!14494) r!17423))))))

(declare-fun matchRSpec!1310 (Regex!9173 List!35038) Bool)

(assert (=> b!2958147 (= lt!1033434 (matchRSpec!1310 r!17423 s!11993))))

(assert (=> b!2958147 (= lt!1033434 (matchR!4055 r!17423 s!11993))))

(declare-datatypes ((Unit!48725 0))(
  ( (Unit!48726) )
))
(declare-fun lt!1033433 () Unit!48725)

(declare-fun mainMatchTheorem!1310 (Regex!9173 List!35038) Unit!48725)

(assert (=> b!2958147 (= lt!1033433 (mainMatchTheorem!1310 r!17423 s!11993))))

(declare-fun b!2958148 () Bool)

(declare-fun res!1220505 () Bool)

(assert (=> b!2958148 (=> res!1220505 e!1862387)))

(declare-fun isEmptyLang!295 (Regex!9173) Bool)

(assert (=> b!2958148 (= res!1220505 (isEmptyLang!295 lt!1033427))))

(assert (=> b!2958149 (= e!1862389 e!1862392)))

(declare-fun res!1220501 () Bool)

(assert (=> b!2958149 (=> res!1220501 e!1862392)))

(declare-fun lt!1033428 () Bool)

(assert (=> b!2958149 (= res!1220501 (not lt!1033428))))

(declare-fun Exists!1505 (Int) Bool)

(assert (=> b!2958149 (= (Exists!1505 lambda!110223) (Exists!1505 lambda!110224))))

(declare-fun lt!1033430 () Unit!48725)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!526 (Regex!9173 Regex!9173 List!35038) Unit!48725)

(assert (=> b!2958149 (= lt!1033430 (lemmaExistCutMatchRandMatchRSpecEquivalent!526 lt!1033435 lt!1033427 s!11993))))

(assert (=> b!2958149 (= lt!1033428 (Exists!1505 lambda!110223))))

(declare-datatypes ((tuple2!33864 0))(
  ( (tuple2!33865 (_1!20064 List!35038) (_2!20064 List!35038)) )
))
(declare-datatypes ((Option!6664 0))(
  ( (None!6663) (Some!6663 (v!34797 tuple2!33864)) )
))
(declare-fun isDefined!5215 (Option!6664) Bool)

(declare-fun findConcatSeparation!1058 (Regex!9173 Regex!9173 List!35038 List!35038 List!35038) Option!6664)

(assert (=> b!2958149 (= lt!1033428 (isDefined!5215 (findConcatSeparation!1058 lt!1033435 lt!1033427 Nil!34914 s!11993 s!11993)))))

(declare-fun lt!1033431 () Unit!48725)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!836 (Regex!9173 Regex!9173 List!35038) Unit!48725)

(assert (=> b!2958149 (= lt!1033431 (lemmaFindConcatSeparationEquivalentToExists!836 lt!1033435 lt!1033427 s!11993))))

(assert (=> b!2958149 (matchRSpec!1310 lt!1033432 s!11993)))

(declare-fun lt!1033429 () Unit!48725)

(assert (=> b!2958149 (= lt!1033429 (mainMatchTheorem!1310 lt!1033432 s!11993))))

(declare-fun b!2958150 () Bool)

(declare-fun tp!944308 () Bool)

(declare-fun tp!944311 () Bool)

(assert (=> b!2958150 (= e!1862393 (and tp!944308 tp!944311))))

(declare-fun b!2958151 () Bool)

(declare-fun tp!944310 () Bool)

(assert (=> b!2958151 (= e!1862390 (and tp_is_empty!15909 tp!944310))))

(declare-fun b!2958152 () Bool)

(assert (=> b!2958152 (= e!1862388 e!1862387)))

(declare-fun res!1220500 () Bool)

(assert (=> b!2958152 (=> res!1220500 e!1862387)))

(assert (=> b!2958152 (= res!1220500 (isEmptyLang!295 lt!1033435))))

(declare-fun simplify!178 (Regex!9173) Regex!9173)

(assert (=> b!2958152 (= lt!1033427 (simplify!178 (regTwo!18858 r!17423)))))

(assert (=> b!2958152 (= lt!1033435 (simplify!178 (regOne!18858 r!17423)))))

(declare-fun b!2958153 () Bool)

(declare-fun res!1220498 () Bool)

(assert (=> b!2958153 (=> res!1220498 e!1862387)))

(assert (=> b!2958153 (= res!1220498 (isEmptyExpr!376 lt!1033435))))

(declare-fun b!2958154 () Bool)

(declare-fun tp!944312 () Bool)

(assert (=> b!2958154 (= e!1862393 tp!944312)))

(declare-fun b!2958155 () Bool)

(declare-fun ++!8340 (List!35038 List!35038) List!35038)

(assert (=> b!2958155 (= e!1862392 (= (++!8340 Nil!34914 s!11993) s!11993))))

(assert (= (and start!286728 res!1220502) b!2958147))

(assert (= (and b!2958147 (not res!1220499)) b!2958145))

(assert (= (and b!2958145 (not res!1220506)) b!2958152))

(assert (= (and b!2958152 (not res!1220500)) b!2958148))

(assert (= (and b!2958148 (not res!1220505)) b!2958153))

(assert (= (and b!2958153 (not res!1220498)) b!2958142))

(assert (= (and b!2958142 (not res!1220508)) b!2958143))

(assert (= (and b!2958143 (not res!1220503)) b!2958149))

(assert (= (and b!2958149 (not res!1220501)) b!2958140))

(assert (= (and b!2958140 (not res!1220507)) b!2958144))

(assert (= (and b!2958144 (not res!1220504)) b!2958155))

(assert (= (and start!286728 ((_ is ElementMatch!9173) r!17423)) b!2958141))

(assert (= (and start!286728 ((_ is Concat!14494) r!17423)) b!2958146))

(assert (= (and start!286728 ((_ is Star!9173) r!17423)) b!2958154))

(assert (= (and start!286728 ((_ is Union!9173) r!17423)) b!2958150))

(assert (= (and start!286728 ((_ is Cons!34914) s!11993)) b!2958151))

(declare-fun m!3332935 () Bool)

(assert (=> b!2958152 m!3332935))

(declare-fun m!3332937 () Bool)

(assert (=> b!2958152 m!3332937))

(declare-fun m!3332939 () Bool)

(assert (=> b!2958152 m!3332939))

(declare-fun m!3332941 () Bool)

(assert (=> b!2958142 m!3332941))

(declare-fun m!3332943 () Bool)

(assert (=> b!2958147 m!3332943))

(declare-fun m!3332945 () Bool)

(assert (=> b!2958147 m!3332945))

(declare-fun m!3332947 () Bool)

(assert (=> b!2958147 m!3332947))

(declare-fun m!3332949 () Bool)

(assert (=> b!2958140 m!3332949))

(declare-fun m!3332951 () Bool)

(assert (=> start!286728 m!3332951))

(declare-fun m!3332953 () Bool)

(assert (=> b!2958153 m!3332953))

(declare-fun m!3332955 () Bool)

(assert (=> b!2958155 m!3332955))

(declare-fun m!3332957 () Bool)

(assert (=> b!2958148 m!3332957))

(declare-fun m!3332959 () Bool)

(assert (=> b!2958145 m!3332959))

(declare-fun m!3332961 () Bool)

(assert (=> b!2958143 m!3332961))

(declare-fun m!3332963 () Bool)

(assert (=> b!2958149 m!3332963))

(declare-fun m!3332965 () Bool)

(assert (=> b!2958149 m!3332965))

(assert (=> b!2958149 m!3332963))

(declare-fun m!3332967 () Bool)

(assert (=> b!2958149 m!3332967))

(assert (=> b!2958149 m!3332965))

(declare-fun m!3332969 () Bool)

(assert (=> b!2958149 m!3332969))

(declare-fun m!3332971 () Bool)

(assert (=> b!2958149 m!3332971))

(declare-fun m!3332973 () Bool)

(assert (=> b!2958149 m!3332973))

(declare-fun m!3332975 () Bool)

(assert (=> b!2958149 m!3332975))

(declare-fun m!3332977 () Bool)

(assert (=> b!2958149 m!3332977))

(declare-fun m!3332979 () Bool)

(assert (=> b!2958144 m!3332979))

(check-sat (not b!2958153) (not b!2958143) (not b!2958146) (not b!2958155) (not b!2958148) (not b!2958149) (not start!286728) (not b!2958154) (not b!2958145) (not b!2958140) (not b!2958144) (not b!2958147) (not b!2958151) (not b!2958150) (not b!2958142) tp_is_empty!15909 (not b!2958152))
(check-sat)
(get-model)

(declare-fun bs!526263 () Bool)

(declare-fun b!2958301 () Bool)

(assert (= bs!526263 (and b!2958301 b!2958149)))

(declare-fun lambda!110243 () Int)

(assert (=> bs!526263 (not (= lambda!110243 lambda!110223))))

(assert (=> bs!526263 (not (= lambda!110243 lambda!110224))))

(assert (=> b!2958301 true))

(assert (=> b!2958301 true))

(declare-fun bs!526268 () Bool)

(declare-fun b!2958305 () Bool)

(assert (= bs!526268 (and b!2958305 b!2958149)))

(declare-fun lambda!110245 () Int)

(assert (=> bs!526268 (not (= lambda!110245 lambda!110223))))

(assert (=> bs!526268 (= (and (= (regOne!18858 r!17423) lt!1033435) (= (regTwo!18858 r!17423) lt!1033427)) (= lambda!110245 lambda!110224))))

(declare-fun bs!526269 () Bool)

(assert (= bs!526269 (and b!2958305 b!2958301)))

(assert (=> bs!526269 (not (= lambda!110245 lambda!110243))))

(assert (=> b!2958305 true))

(assert (=> b!2958305 true))

(declare-fun e!1862480 () Bool)

(declare-fun call!196058 () Bool)

(assert (=> b!2958301 (= e!1862480 call!196058)))

(declare-fun bm!196053 () Bool)

(declare-fun call!196059 () Bool)

(assert (=> bm!196053 (= call!196059 (isEmpty!19196 s!11993))))

(declare-fun d!841826 () Bool)

(declare-fun c!484749 () Bool)

(assert (=> d!841826 (= c!484749 ((_ is EmptyExpr!9173) r!17423))))

(declare-fun e!1862483 () Bool)

(assert (=> d!841826 (= (matchRSpec!1310 r!17423 s!11993) e!1862483)))

(declare-fun b!2958302 () Bool)

(declare-fun e!1862485 () Bool)

(assert (=> b!2958302 (= e!1862485 (= s!11993 (Cons!34914 (c!484715 r!17423) Nil!34914)))))

(declare-fun b!2958303 () Bool)

(declare-fun e!1862484 () Bool)

(declare-fun e!1862481 () Bool)

(assert (=> b!2958303 (= e!1862484 e!1862481)))

(declare-fun c!484750 () Bool)

(assert (=> b!2958303 (= c!484750 ((_ is Star!9173) r!17423))))

(declare-fun b!2958304 () Bool)

(declare-fun e!1862482 () Bool)

(assert (=> b!2958304 (= e!1862483 e!1862482)))

(declare-fun res!1220588 () Bool)

(assert (=> b!2958304 (= res!1220588 (not ((_ is EmptyLang!9173) r!17423)))))

(assert (=> b!2958304 (=> (not res!1220588) (not e!1862482))))

(assert (=> b!2958305 (= e!1862481 call!196058)))

(declare-fun b!2958306 () Bool)

(declare-fun c!484748 () Bool)

(assert (=> b!2958306 (= c!484748 ((_ is Union!9173) r!17423))))

(assert (=> b!2958306 (= e!1862485 e!1862484)))

(declare-fun bm!196054 () Bool)

(assert (=> bm!196054 (= call!196058 (Exists!1505 (ite c!484750 lambda!110243 lambda!110245)))))

(declare-fun b!2958307 () Bool)

(declare-fun e!1862479 () Bool)

(assert (=> b!2958307 (= e!1862484 e!1862479)))

(declare-fun res!1220586 () Bool)

(assert (=> b!2958307 (= res!1220586 (matchRSpec!1310 (regOne!18859 r!17423) s!11993))))

(assert (=> b!2958307 (=> res!1220586 e!1862479)))

(declare-fun b!2958308 () Bool)

(declare-fun c!484751 () Bool)

(assert (=> b!2958308 (= c!484751 ((_ is ElementMatch!9173) r!17423))))

(assert (=> b!2958308 (= e!1862482 e!1862485)))

(declare-fun b!2958309 () Bool)

(declare-fun res!1220587 () Bool)

(assert (=> b!2958309 (=> res!1220587 e!1862480)))

(assert (=> b!2958309 (= res!1220587 call!196059)))

(assert (=> b!2958309 (= e!1862481 e!1862480)))

(declare-fun b!2958310 () Bool)

(assert (=> b!2958310 (= e!1862483 call!196059)))

(declare-fun b!2958311 () Bool)

(assert (=> b!2958311 (= e!1862479 (matchRSpec!1310 (regTwo!18859 r!17423) s!11993))))

(assert (= (and d!841826 c!484749) b!2958310))

(assert (= (and d!841826 (not c!484749)) b!2958304))

(assert (= (and b!2958304 res!1220588) b!2958308))

(assert (= (and b!2958308 c!484751) b!2958302))

(assert (= (and b!2958308 (not c!484751)) b!2958306))

(assert (= (and b!2958306 c!484748) b!2958307))

(assert (= (and b!2958306 (not c!484748)) b!2958303))

(assert (= (and b!2958307 (not res!1220586)) b!2958311))

(assert (= (and b!2958303 c!484750) b!2958309))

(assert (= (and b!2958303 (not c!484750)) b!2958305))

(assert (= (and b!2958309 (not res!1220587)) b!2958301))

(assert (= (or b!2958301 b!2958305) bm!196054))

(assert (= (or b!2958310 b!2958309) bm!196053))

(assert (=> bm!196053 m!3332959))

(declare-fun m!3333047 () Bool)

(assert (=> bm!196054 m!3333047))

(declare-fun m!3333049 () Bool)

(assert (=> b!2958307 m!3333049))

(declare-fun m!3333051 () Bool)

(assert (=> b!2958311 m!3333051))

(assert (=> b!2958147 d!841826))

(declare-fun d!841850 () Bool)

(declare-fun e!1862555 () Bool)

(assert (=> d!841850 e!1862555))

(declare-fun c!484781 () Bool)

(assert (=> d!841850 (= c!484781 ((_ is EmptyExpr!9173) r!17423))))

(declare-fun lt!1033464 () Bool)

(declare-fun e!1862557 () Bool)

(assert (=> d!841850 (= lt!1033464 e!1862557)))

(declare-fun c!484782 () Bool)

(assert (=> d!841850 (= c!484782 (isEmpty!19196 s!11993))))

(assert (=> d!841850 (validRegex!3906 r!17423)))

(assert (=> d!841850 (= (matchR!4055 r!17423 s!11993) lt!1033464)))

(declare-fun b!2958437 () Bool)

(declare-fun e!1862561 () Bool)

(declare-fun head!6590 (List!35038) C!18532)

(assert (=> b!2958437 (= e!1862561 (not (= (head!6590 s!11993) (c!484715 r!17423))))))

(declare-fun b!2958438 () Bool)

(declare-fun res!1220658 () Bool)

(declare-fun e!1862560 () Bool)

(assert (=> b!2958438 (=> res!1220658 e!1862560)))

(declare-fun e!1862559 () Bool)

(assert (=> b!2958438 (= res!1220658 e!1862559)))

(declare-fun res!1220661 () Bool)

(assert (=> b!2958438 (=> (not res!1220661) (not e!1862559))))

(assert (=> b!2958438 (= res!1220661 lt!1033464)))

(declare-fun b!2958439 () Bool)

(declare-fun derivativeStep!2531 (Regex!9173 C!18532) Regex!9173)

(declare-fun tail!4816 (List!35038) List!35038)

(assert (=> b!2958439 (= e!1862557 (matchR!4055 (derivativeStep!2531 r!17423 (head!6590 s!11993)) (tail!4816 s!11993)))))

(declare-fun bm!196069 () Bool)

(declare-fun call!196074 () Bool)

(assert (=> bm!196069 (= call!196074 (isEmpty!19196 s!11993))))

(declare-fun b!2958440 () Bool)

(assert (=> b!2958440 (= e!1862555 (= lt!1033464 call!196074))))

(declare-fun b!2958441 () Bool)

(declare-fun res!1220657 () Bool)

(assert (=> b!2958441 (=> res!1220657 e!1862560)))

(assert (=> b!2958441 (= res!1220657 (not ((_ is ElementMatch!9173) r!17423)))))

(declare-fun e!1862558 () Bool)

(assert (=> b!2958441 (= e!1862558 e!1862560)))

(declare-fun b!2958442 () Bool)

(declare-fun e!1862556 () Bool)

(assert (=> b!2958442 (= e!1862556 e!1862561)))

(declare-fun res!1220663 () Bool)

(assert (=> b!2958442 (=> res!1220663 e!1862561)))

(assert (=> b!2958442 (= res!1220663 call!196074)))

(declare-fun b!2958443 () Bool)

(declare-fun nullable!2929 (Regex!9173) Bool)

(assert (=> b!2958443 (= e!1862557 (nullable!2929 r!17423))))

(declare-fun b!2958444 () Bool)

(assert (=> b!2958444 (= e!1862558 (not lt!1033464))))

(declare-fun b!2958445 () Bool)

(declare-fun res!1220662 () Bool)

(assert (=> b!2958445 (=> res!1220662 e!1862561)))

(assert (=> b!2958445 (= res!1220662 (not (isEmpty!19196 (tail!4816 s!11993))))))

(declare-fun b!2958446 () Bool)

(assert (=> b!2958446 (= e!1862560 e!1862556)))

(declare-fun res!1220656 () Bool)

(assert (=> b!2958446 (=> (not res!1220656) (not e!1862556))))

(assert (=> b!2958446 (= res!1220656 (not lt!1033464))))

(declare-fun b!2958447 () Bool)

(assert (=> b!2958447 (= e!1862559 (= (head!6590 s!11993) (c!484715 r!17423)))))

(declare-fun b!2958448 () Bool)

(declare-fun res!1220660 () Bool)

(assert (=> b!2958448 (=> (not res!1220660) (not e!1862559))))

(assert (=> b!2958448 (= res!1220660 (isEmpty!19196 (tail!4816 s!11993)))))

(declare-fun b!2958449 () Bool)

(declare-fun res!1220659 () Bool)

(assert (=> b!2958449 (=> (not res!1220659) (not e!1862559))))

(assert (=> b!2958449 (= res!1220659 (not call!196074))))

(declare-fun b!2958450 () Bool)

(assert (=> b!2958450 (= e!1862555 e!1862558)))

(declare-fun c!484783 () Bool)

(assert (=> b!2958450 (= c!484783 ((_ is EmptyLang!9173) r!17423))))

(assert (= (and d!841850 c!484782) b!2958443))

(assert (= (and d!841850 (not c!484782)) b!2958439))

(assert (= (and d!841850 c!484781) b!2958440))

(assert (= (and d!841850 (not c!484781)) b!2958450))

(assert (= (and b!2958450 c!484783) b!2958444))

(assert (= (and b!2958450 (not c!484783)) b!2958441))

(assert (= (and b!2958441 (not res!1220657)) b!2958438))

(assert (= (and b!2958438 res!1220661) b!2958449))

(assert (= (and b!2958449 res!1220659) b!2958448))

(assert (= (and b!2958448 res!1220660) b!2958447))

(assert (= (and b!2958438 (not res!1220658)) b!2958446))

(assert (= (and b!2958446 res!1220656) b!2958442))

(assert (= (and b!2958442 (not res!1220663)) b!2958445))

(assert (= (and b!2958445 (not res!1220662)) b!2958437))

(assert (= (or b!2958440 b!2958442 b!2958449) bm!196069))

(declare-fun m!3333093 () Bool)

(assert (=> b!2958439 m!3333093))

(assert (=> b!2958439 m!3333093))

(declare-fun m!3333095 () Bool)

(assert (=> b!2958439 m!3333095))

(declare-fun m!3333097 () Bool)

(assert (=> b!2958439 m!3333097))

(assert (=> b!2958439 m!3333095))

(assert (=> b!2958439 m!3333097))

(declare-fun m!3333099 () Bool)

(assert (=> b!2958439 m!3333099))

(assert (=> b!2958448 m!3333097))

(assert (=> b!2958448 m!3333097))

(declare-fun m!3333101 () Bool)

(assert (=> b!2958448 m!3333101))

(assert (=> bm!196069 m!3332959))

(assert (=> b!2958445 m!3333097))

(assert (=> b!2958445 m!3333097))

(assert (=> b!2958445 m!3333101))

(declare-fun m!3333103 () Bool)

(assert (=> b!2958443 m!3333103))

(assert (=> d!841850 m!3332959))

(assert (=> d!841850 m!3332951))

(assert (=> b!2958437 m!3333093))

(assert (=> b!2958447 m!3333093))

(assert (=> b!2958147 d!841850))

(declare-fun d!841866 () Bool)

(assert (=> d!841866 (= (matchR!4055 r!17423 s!11993) (matchRSpec!1310 r!17423 s!11993))))

(declare-fun lt!1033479 () Unit!48725)

(declare-fun choose!17509 (Regex!9173 List!35038) Unit!48725)

(assert (=> d!841866 (= lt!1033479 (choose!17509 r!17423 s!11993))))

(assert (=> d!841866 (validRegex!3906 r!17423)))

(assert (=> d!841866 (= (mainMatchTheorem!1310 r!17423 s!11993) lt!1033479)))

(declare-fun bs!526282 () Bool)

(assert (= bs!526282 d!841866))

(assert (=> bs!526282 m!3332945))

(assert (=> bs!526282 m!3332943))

(declare-fun m!3333105 () Bool)

(assert (=> bs!526282 m!3333105))

(assert (=> bs!526282 m!3332951))

(assert (=> b!2958147 d!841866))

(declare-fun d!841868 () Bool)

(assert (=> d!841868 (= (isEmptyLang!295 lt!1033427) ((_ is EmptyLang!9173) lt!1033427))))

(assert (=> b!2958148 d!841868))

(declare-fun b!2958604 () Bool)

(declare-fun res!1220686 () Bool)

(declare-fun e!1862642 () Bool)

(assert (=> b!2958604 (=> res!1220686 e!1862642)))

(assert (=> b!2958604 (= res!1220686 (not ((_ is Concat!14494) lt!1033427)))))

(declare-fun e!1862648 () Bool)

(assert (=> b!2958604 (= e!1862648 e!1862642)))

(declare-fun b!2958605 () Bool)

(declare-fun e!1862646 () Bool)

(assert (=> b!2958605 (= e!1862642 e!1862646)))

(declare-fun res!1220687 () Bool)

(assert (=> b!2958605 (=> (not res!1220687) (not e!1862646))))

(declare-fun call!196111 () Bool)

(assert (=> b!2958605 (= res!1220687 call!196111)))

(declare-fun b!2958606 () Bool)

(declare-fun call!196109 () Bool)

(assert (=> b!2958606 (= e!1862646 call!196109)))

(declare-fun d!841870 () Bool)

(declare-fun res!1220690 () Bool)

(declare-fun e!1862643 () Bool)

(assert (=> d!841870 (=> res!1220690 e!1862643)))

(assert (=> d!841870 (= res!1220690 ((_ is ElementMatch!9173) lt!1033427))))

(assert (=> d!841870 (= (validRegex!3906 lt!1033427) e!1862643)))

(declare-fun b!2958607 () Bool)

(declare-fun e!1862647 () Bool)

(assert (=> b!2958607 (= e!1862647 call!196111)))

(declare-fun b!2958608 () Bool)

(declare-fun res!1220689 () Bool)

(assert (=> b!2958608 (=> (not res!1220689) (not e!1862647))))

(assert (=> b!2958608 (= res!1220689 call!196109)))

(assert (=> b!2958608 (= e!1862648 e!1862647)))

(declare-fun bm!196104 () Bool)

(declare-fun c!484833 () Bool)

(assert (=> bm!196104 (= call!196111 (validRegex!3906 (ite c!484833 (regTwo!18859 lt!1033427) (regOne!18858 lt!1033427))))))

(declare-fun c!484832 () Bool)

(declare-fun bm!196105 () Bool)

(declare-fun call!196110 () Bool)

(assert (=> bm!196105 (= call!196110 (validRegex!3906 (ite c!484832 (reg!9502 lt!1033427) (ite c!484833 (regOne!18859 lt!1033427) (regTwo!18858 lt!1033427)))))))

(declare-fun b!2958609 () Bool)

(declare-fun e!1862644 () Bool)

(assert (=> b!2958609 (= e!1862644 e!1862648)))

(assert (=> b!2958609 (= c!484833 ((_ is Union!9173) lt!1033427))))

(declare-fun b!2958610 () Bool)

(assert (=> b!2958610 (= e!1862643 e!1862644)))

(assert (=> b!2958610 (= c!484832 ((_ is Star!9173) lt!1033427))))

(declare-fun bm!196106 () Bool)

(assert (=> bm!196106 (= call!196109 call!196110)))

(declare-fun b!2958611 () Bool)

(declare-fun e!1862645 () Bool)

(assert (=> b!2958611 (= e!1862645 call!196110)))

(declare-fun b!2958612 () Bool)

(assert (=> b!2958612 (= e!1862644 e!1862645)))

(declare-fun res!1220688 () Bool)

(assert (=> b!2958612 (= res!1220688 (not (nullable!2929 (reg!9502 lt!1033427))))))

(assert (=> b!2958612 (=> (not res!1220688) (not e!1862645))))

(assert (= (and d!841870 (not res!1220690)) b!2958610))

(assert (= (and b!2958610 c!484832) b!2958612))

(assert (= (and b!2958610 (not c!484832)) b!2958609))

(assert (= (and b!2958612 res!1220688) b!2958611))

(assert (= (and b!2958609 c!484833) b!2958608))

(assert (= (and b!2958609 (not c!484833)) b!2958604))

(assert (= (and b!2958608 res!1220689) b!2958607))

(assert (= (and b!2958604 (not res!1220686)) b!2958605))

(assert (= (and b!2958605 res!1220687) b!2958606))

(assert (= (or b!2958608 b!2958606) bm!196106))

(assert (= (or b!2958607 b!2958605) bm!196104))

(assert (= (or b!2958611 bm!196106) bm!196105))

(declare-fun m!3333147 () Bool)

(assert (=> bm!196104 m!3333147))

(declare-fun m!3333149 () Bool)

(assert (=> bm!196105 m!3333149))

(declare-fun m!3333151 () Bool)

(assert (=> b!2958612 m!3333151))

(assert (=> b!2958144 d!841870))

(declare-fun b!2958622 () Bool)

(declare-fun e!1862653 () List!35038)

(assert (=> b!2958622 (= e!1862653 (Cons!34914 (h!40334 Nil!34914) (++!8340 (t!234103 Nil!34914) s!11993)))))

(declare-fun d!841876 () Bool)

(declare-fun e!1862654 () Bool)

(assert (=> d!841876 e!1862654))

(declare-fun res!1220695 () Bool)

(assert (=> d!841876 (=> (not res!1220695) (not e!1862654))))

(declare-fun lt!1033494 () List!35038)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4758 (List!35038) (InoxSet C!18532))

(assert (=> d!841876 (= res!1220695 (= (content!4758 lt!1033494) ((_ map or) (content!4758 Nil!34914) (content!4758 s!11993))))))

(assert (=> d!841876 (= lt!1033494 e!1862653)))

(declare-fun c!484836 () Bool)

(assert (=> d!841876 (= c!484836 ((_ is Nil!34914) Nil!34914))))

(assert (=> d!841876 (= (++!8340 Nil!34914 s!11993) lt!1033494)))

(declare-fun b!2958621 () Bool)

(assert (=> b!2958621 (= e!1862653 s!11993)))

(declare-fun b!2958623 () Bool)

(declare-fun res!1220696 () Bool)

(assert (=> b!2958623 (=> (not res!1220696) (not e!1862654))))

(declare-fun size!26469 (List!35038) Int)

(assert (=> b!2958623 (= res!1220696 (= (size!26469 lt!1033494) (+ (size!26469 Nil!34914) (size!26469 s!11993))))))

(declare-fun b!2958624 () Bool)

(assert (=> b!2958624 (= e!1862654 (or (not (= s!11993 Nil!34914)) (= lt!1033494 Nil!34914)))))

(assert (= (and d!841876 c!484836) b!2958621))

(assert (= (and d!841876 (not c!484836)) b!2958622))

(assert (= (and d!841876 res!1220695) b!2958623))

(assert (= (and b!2958623 res!1220696) b!2958624))

(declare-fun m!3333153 () Bool)

(assert (=> b!2958622 m!3333153))

(declare-fun m!3333155 () Bool)

(assert (=> d!841876 m!3333155))

(declare-fun m!3333157 () Bool)

(assert (=> d!841876 m!3333157))

(declare-fun m!3333159 () Bool)

(assert (=> d!841876 m!3333159))

(declare-fun m!3333161 () Bool)

(assert (=> b!2958623 m!3333161))

(declare-fun m!3333163 () Bool)

(assert (=> b!2958623 m!3333163))

(declare-fun m!3333165 () Bool)

(assert (=> b!2958623 m!3333165))

(assert (=> b!2958155 d!841876))

(declare-fun d!841878 () Bool)

(assert (=> d!841878 (= (isEmpty!19196 s!11993) ((_ is Nil!34914) s!11993))))

(assert (=> b!2958145 d!841878))

(declare-fun d!841880 () Bool)

(assert (=> d!841880 (= (isEmptyLang!295 lt!1033435) ((_ is EmptyLang!9173) lt!1033435))))

(assert (=> b!2958152 d!841880))

(declare-fun b!2958675 () Bool)

(declare-fun e!1862695 () Regex!9173)

(declare-fun lt!1033512 () Regex!9173)

(declare-fun lt!1033510 () Regex!9173)

(assert (=> b!2958675 (= e!1862695 (Concat!14494 lt!1033512 lt!1033510))))

(declare-fun bm!196121 () Bool)

(declare-fun c!484868 () Bool)

(declare-fun c!484869 () Bool)

(declare-fun call!196126 () Regex!9173)

(assert (=> bm!196121 (= call!196126 (simplify!178 (ite c!484868 (reg!9502 (regTwo!18858 r!17423)) (ite c!484869 (regTwo!18859 (regTwo!18858 r!17423)) (regOne!18858 (regTwo!18858 r!17423))))))))

(declare-fun b!2958676 () Bool)

(declare-fun e!1862683 () Regex!9173)

(declare-fun e!1862684 () Regex!9173)

(assert (=> b!2958676 (= e!1862683 e!1862684)))

(declare-fun c!484864 () Bool)

(assert (=> b!2958676 (= c!484864 ((_ is ElementMatch!9173) (regTwo!18858 r!17423)))))

(declare-fun b!2958677 () Bool)

(declare-fun c!484866 () Bool)

(assert (=> b!2958677 (= c!484866 ((_ is EmptyExpr!9173) (regTwo!18858 r!17423)))))

(declare-fun e!1862686 () Regex!9173)

(assert (=> b!2958677 (= e!1862684 e!1862686)))

(declare-fun bm!196122 () Bool)

(declare-fun lt!1033511 () Regex!9173)

(declare-fun lt!1033507 () Regex!9173)

(declare-fun call!196132 () Bool)

(assert (=> bm!196122 (= call!196132 (isEmptyLang!295 (ite c!484868 lt!1033507 (ite c!484869 lt!1033511 lt!1033510))))))

(declare-fun b!2958678 () Bool)

(declare-fun e!1862689 () Regex!9173)

(assert (=> b!2958678 (= e!1862689 (Star!9173 lt!1033507))))

(declare-fun b!2958679 () Bool)

(declare-fun e!1862690 () Regex!9173)

(assert (=> b!2958679 (= e!1862690 lt!1033511)))

(declare-fun b!2958680 () Bool)

(assert (=> b!2958680 (= e!1862686 EmptyExpr!9173)))

(declare-fun b!2958681 () Bool)

(declare-fun c!484865 () Bool)

(declare-fun call!196130 () Bool)

(assert (=> b!2958681 (= c!484865 call!196130)))

(declare-fun e!1862694 () Regex!9173)

(declare-fun e!1862688 () Regex!9173)

(assert (=> b!2958681 (= e!1862694 e!1862688)))

(declare-fun b!2958682 () Bool)

(assert (=> b!2958682 (= e!1862694 EmptyLang!9173)))

(declare-fun b!2958683 () Bool)

(declare-fun e!1862692 () Bool)

(declare-fun call!196128 () Bool)

(assert (=> b!2958683 (= e!1862692 call!196128)))

(declare-fun bm!196123 () Bool)

(declare-fun call!196131 () Regex!9173)

(assert (=> bm!196123 (= call!196131 (simplify!178 (ite c!484869 (regOne!18859 (regTwo!18858 r!17423)) (regTwo!18858 (regTwo!18858 r!17423)))))))

(declare-fun b!2958684 () Bool)

(declare-fun e!1862691 () Bool)

(assert (=> b!2958684 (= e!1862691 call!196130)))

(declare-fun b!2958685 () Bool)

(declare-fun e!1862696 () Regex!9173)

(assert (=> b!2958685 (= e!1862696 e!1862690)))

(declare-fun lt!1033509 () Regex!9173)

(assert (=> b!2958685 (= lt!1033509 call!196131)))

(declare-fun call!196129 () Regex!9173)

(assert (=> b!2958685 (= lt!1033511 call!196129)))

(declare-fun c!484862 () Bool)

(declare-fun call!196127 () Bool)

(assert (=> b!2958685 (= c!484862 call!196127)))

(declare-fun b!2958686 () Bool)

(declare-fun e!1862685 () Regex!9173)

(assert (=> b!2958686 (= e!1862685 lt!1033509)))

(declare-fun b!2958687 () Bool)

(assert (=> b!2958687 (= e!1862689 EmptyExpr!9173)))

(declare-fun b!2958688 () Bool)

(assert (=> b!2958688 (= e!1862684 (regTwo!18858 r!17423))))

(declare-fun b!2958689 () Bool)

(declare-fun e!1862687 () Regex!9173)

(assert (=> b!2958689 (= e!1862686 e!1862687)))

(assert (=> b!2958689 (= c!484868 ((_ is Star!9173) (regTwo!18858 r!17423)))))

(declare-fun b!2958690 () Bool)

(assert (=> b!2958690 (= e!1862688 e!1862695)))

(declare-fun c!484859 () Bool)

(assert (=> b!2958690 (= c!484859 (isEmptyExpr!376 lt!1033510))))

(declare-fun b!2958691 () Bool)

(assert (=> b!2958691 (= e!1862683 EmptyLang!9173)))

(declare-fun b!2958692 () Bool)

(declare-fun e!1862693 () Bool)

(declare-fun lt!1033508 () Regex!9173)

(assert (=> b!2958692 (= e!1862693 (= (nullable!2929 lt!1033508) (nullable!2929 (regTwo!18858 r!17423))))))

(declare-fun b!2958693 () Bool)

(assert (=> b!2958693 (= e!1862685 (Union!9173 lt!1033509 lt!1033511))))

(declare-fun b!2958694 () Bool)

(assert (=> b!2958694 (= e!1862688 lt!1033510)))

(declare-fun bm!196124 () Bool)

(assert (=> bm!196124 (= call!196129 call!196126)))

(declare-fun d!841882 () Bool)

(assert (=> d!841882 e!1862693))

(declare-fun res!1220704 () Bool)

(assert (=> d!841882 (=> (not res!1220704) (not e!1862693))))

(assert (=> d!841882 (= res!1220704 (validRegex!3906 lt!1033508))))

(assert (=> d!841882 (= lt!1033508 e!1862683)))

(declare-fun c!484861 () Bool)

(assert (=> d!841882 (= c!484861 ((_ is EmptyLang!9173) (regTwo!18858 r!17423)))))

(assert (=> d!841882 (validRegex!3906 (regTwo!18858 r!17423))))

(assert (=> d!841882 (= (simplify!178 (regTwo!18858 r!17423)) lt!1033508)))

(declare-fun b!2958695 () Bool)

(assert (=> b!2958695 (= c!484869 ((_ is Union!9173) (regTwo!18858 r!17423)))))

(assert (=> b!2958695 (= e!1862687 e!1862696)))

(declare-fun bm!196125 () Bool)

(assert (=> bm!196125 (= call!196127 (isEmptyLang!295 (ite c!484869 lt!1033509 lt!1033512)))))

(declare-fun b!2958696 () Bool)

(assert (=> b!2958696 (= e!1862696 e!1862694)))

(assert (=> b!2958696 (= lt!1033512 call!196129)))

(assert (=> b!2958696 (= lt!1033510 call!196131)))

(declare-fun res!1220705 () Bool)

(assert (=> b!2958696 (= res!1220705 call!196127)))

(assert (=> b!2958696 (=> res!1220705 e!1862692)))

(declare-fun c!484867 () Bool)

(assert (=> b!2958696 (= c!484867 e!1862692)))

(declare-fun bm!196126 () Bool)

(assert (=> bm!196126 (= call!196128 call!196132)))

(declare-fun b!2958697 () Bool)

(assert (=> b!2958697 (= e!1862695 lt!1033512)))

(declare-fun bm!196127 () Bool)

(assert (=> bm!196127 (= call!196130 (isEmptyExpr!376 (ite c!484868 lt!1033507 lt!1033512)))))

(declare-fun b!2958698 () Bool)

(declare-fun c!484860 () Bool)

(assert (=> b!2958698 (= c!484860 call!196128)))

(assert (=> b!2958698 (= e!1862690 e!1862685)))

(declare-fun b!2958699 () Bool)

(declare-fun c!484863 () Bool)

(assert (=> b!2958699 (= c!484863 e!1862691)))

(declare-fun res!1220703 () Bool)

(assert (=> b!2958699 (=> res!1220703 e!1862691)))

(assert (=> b!2958699 (= res!1220703 call!196132)))

(assert (=> b!2958699 (= lt!1033507 call!196126)))

(assert (=> b!2958699 (= e!1862687 e!1862689)))

(assert (= (and d!841882 c!484861) b!2958691))

(assert (= (and d!841882 (not c!484861)) b!2958676))

(assert (= (and b!2958676 c!484864) b!2958688))

(assert (= (and b!2958676 (not c!484864)) b!2958677))

(assert (= (and b!2958677 c!484866) b!2958680))

(assert (= (and b!2958677 (not c!484866)) b!2958689))

(assert (= (and b!2958689 c!484868) b!2958699))

(assert (= (and b!2958689 (not c!484868)) b!2958695))

(assert (= (and b!2958699 (not res!1220703)) b!2958684))

(assert (= (and b!2958699 c!484863) b!2958687))

(assert (= (and b!2958699 (not c!484863)) b!2958678))

(assert (= (and b!2958695 c!484869) b!2958685))

(assert (= (and b!2958695 (not c!484869)) b!2958696))

(assert (= (and b!2958685 c!484862) b!2958679))

(assert (= (and b!2958685 (not c!484862)) b!2958698))

(assert (= (and b!2958698 c!484860) b!2958686))

(assert (= (and b!2958698 (not c!484860)) b!2958693))

(assert (= (and b!2958696 (not res!1220705)) b!2958683))

(assert (= (and b!2958696 c!484867) b!2958682))

(assert (= (and b!2958696 (not c!484867)) b!2958681))

(assert (= (and b!2958681 c!484865) b!2958694))

(assert (= (and b!2958681 (not c!484865)) b!2958690))

(assert (= (and b!2958690 c!484859) b!2958697))

(assert (= (and b!2958690 (not c!484859)) b!2958675))

(assert (= (or b!2958685 b!2958696) bm!196123))

(assert (= (or b!2958685 b!2958696) bm!196124))

(assert (= (or b!2958685 b!2958696) bm!196125))

(assert (= (or b!2958698 b!2958683) bm!196126))

(assert (= (or b!2958684 b!2958681) bm!196127))

(assert (= (or b!2958699 bm!196124) bm!196121))

(assert (= (or b!2958699 bm!196126) bm!196122))

(assert (= (and d!841882 res!1220704) b!2958692))

(declare-fun m!3333167 () Bool)

(assert (=> bm!196122 m!3333167))

(declare-fun m!3333169 () Bool)

(assert (=> bm!196127 m!3333169))

(declare-fun m!3333171 () Bool)

(assert (=> bm!196121 m!3333171))

(declare-fun m!3333173 () Bool)

(assert (=> b!2958690 m!3333173))

(declare-fun m!3333175 () Bool)

(assert (=> d!841882 m!3333175))

(declare-fun m!3333177 () Bool)

(assert (=> d!841882 m!3333177))

(declare-fun m!3333179 () Bool)

(assert (=> bm!196123 m!3333179))

(declare-fun m!3333181 () Bool)

(assert (=> bm!196125 m!3333181))

(declare-fun m!3333183 () Bool)

(assert (=> b!2958692 m!3333183))

(declare-fun m!3333185 () Bool)

(assert (=> b!2958692 m!3333185))

(assert (=> b!2958152 d!841882))

(declare-fun b!2958700 () Bool)

(declare-fun e!1862709 () Regex!9173)

(declare-fun lt!1033518 () Regex!9173)

(declare-fun lt!1033516 () Regex!9173)

(assert (=> b!2958700 (= e!1862709 (Concat!14494 lt!1033518 lt!1033516))))

(declare-fun call!196133 () Regex!9173)

(declare-fun c!484880 () Bool)

(declare-fun bm!196128 () Bool)

(declare-fun c!484879 () Bool)

(assert (=> bm!196128 (= call!196133 (simplify!178 (ite c!484879 (reg!9502 (regOne!18858 r!17423)) (ite c!484880 (regTwo!18859 (regOne!18858 r!17423)) (regOne!18858 (regOne!18858 r!17423))))))))

(declare-fun b!2958701 () Bool)

(declare-fun e!1862697 () Regex!9173)

(declare-fun e!1862698 () Regex!9173)

(assert (=> b!2958701 (= e!1862697 e!1862698)))

(declare-fun c!484875 () Bool)

(assert (=> b!2958701 (= c!484875 ((_ is ElementMatch!9173) (regOne!18858 r!17423)))))

(declare-fun b!2958702 () Bool)

(declare-fun c!484877 () Bool)

(assert (=> b!2958702 (= c!484877 ((_ is EmptyExpr!9173) (regOne!18858 r!17423)))))

(declare-fun e!1862700 () Regex!9173)

(assert (=> b!2958702 (= e!1862698 e!1862700)))

(declare-fun lt!1033513 () Regex!9173)

(declare-fun call!196139 () Bool)

(declare-fun bm!196129 () Bool)

(declare-fun lt!1033517 () Regex!9173)

(assert (=> bm!196129 (= call!196139 (isEmptyLang!295 (ite c!484879 lt!1033513 (ite c!484880 lt!1033517 lt!1033516))))))

(declare-fun b!2958703 () Bool)

(declare-fun e!1862703 () Regex!9173)

(assert (=> b!2958703 (= e!1862703 (Star!9173 lt!1033513))))

(declare-fun b!2958704 () Bool)

(declare-fun e!1862704 () Regex!9173)

(assert (=> b!2958704 (= e!1862704 lt!1033517)))

(declare-fun b!2958705 () Bool)

(assert (=> b!2958705 (= e!1862700 EmptyExpr!9173)))

(declare-fun b!2958706 () Bool)

(declare-fun c!484876 () Bool)

(declare-fun call!196137 () Bool)

(assert (=> b!2958706 (= c!484876 call!196137)))

(declare-fun e!1862708 () Regex!9173)

(declare-fun e!1862702 () Regex!9173)

(assert (=> b!2958706 (= e!1862708 e!1862702)))

(declare-fun b!2958707 () Bool)

(assert (=> b!2958707 (= e!1862708 EmptyLang!9173)))

(declare-fun b!2958708 () Bool)

(declare-fun e!1862706 () Bool)

(declare-fun call!196135 () Bool)

(assert (=> b!2958708 (= e!1862706 call!196135)))

(declare-fun bm!196130 () Bool)

(declare-fun call!196138 () Regex!9173)

(assert (=> bm!196130 (= call!196138 (simplify!178 (ite c!484880 (regOne!18859 (regOne!18858 r!17423)) (regTwo!18858 (regOne!18858 r!17423)))))))

(declare-fun b!2958709 () Bool)

(declare-fun e!1862705 () Bool)

(assert (=> b!2958709 (= e!1862705 call!196137)))

(declare-fun b!2958710 () Bool)

(declare-fun e!1862710 () Regex!9173)

(assert (=> b!2958710 (= e!1862710 e!1862704)))

(declare-fun lt!1033515 () Regex!9173)

(assert (=> b!2958710 (= lt!1033515 call!196138)))

(declare-fun call!196136 () Regex!9173)

(assert (=> b!2958710 (= lt!1033517 call!196136)))

(declare-fun c!484873 () Bool)

(declare-fun call!196134 () Bool)

(assert (=> b!2958710 (= c!484873 call!196134)))

(declare-fun b!2958711 () Bool)

(declare-fun e!1862699 () Regex!9173)

(assert (=> b!2958711 (= e!1862699 lt!1033515)))

(declare-fun b!2958712 () Bool)

(assert (=> b!2958712 (= e!1862703 EmptyExpr!9173)))

(declare-fun b!2958713 () Bool)

(assert (=> b!2958713 (= e!1862698 (regOne!18858 r!17423))))

(declare-fun b!2958714 () Bool)

(declare-fun e!1862701 () Regex!9173)

(assert (=> b!2958714 (= e!1862700 e!1862701)))

(assert (=> b!2958714 (= c!484879 ((_ is Star!9173) (regOne!18858 r!17423)))))

(declare-fun b!2958715 () Bool)

(assert (=> b!2958715 (= e!1862702 e!1862709)))

(declare-fun c!484870 () Bool)

(assert (=> b!2958715 (= c!484870 (isEmptyExpr!376 lt!1033516))))

(declare-fun b!2958716 () Bool)

(assert (=> b!2958716 (= e!1862697 EmptyLang!9173)))

(declare-fun b!2958717 () Bool)

(declare-fun e!1862707 () Bool)

(declare-fun lt!1033514 () Regex!9173)

(assert (=> b!2958717 (= e!1862707 (= (nullable!2929 lt!1033514) (nullable!2929 (regOne!18858 r!17423))))))

(declare-fun b!2958718 () Bool)

(assert (=> b!2958718 (= e!1862699 (Union!9173 lt!1033515 lt!1033517))))

(declare-fun b!2958719 () Bool)

(assert (=> b!2958719 (= e!1862702 lt!1033516)))

(declare-fun bm!196131 () Bool)

(assert (=> bm!196131 (= call!196136 call!196133)))

(declare-fun d!841884 () Bool)

(assert (=> d!841884 e!1862707))

(declare-fun res!1220707 () Bool)

(assert (=> d!841884 (=> (not res!1220707) (not e!1862707))))

(assert (=> d!841884 (= res!1220707 (validRegex!3906 lt!1033514))))

(assert (=> d!841884 (= lt!1033514 e!1862697)))

(declare-fun c!484872 () Bool)

(assert (=> d!841884 (= c!484872 ((_ is EmptyLang!9173) (regOne!18858 r!17423)))))

(assert (=> d!841884 (validRegex!3906 (regOne!18858 r!17423))))

(assert (=> d!841884 (= (simplify!178 (regOne!18858 r!17423)) lt!1033514)))

(declare-fun b!2958720 () Bool)

(assert (=> b!2958720 (= c!484880 ((_ is Union!9173) (regOne!18858 r!17423)))))

(assert (=> b!2958720 (= e!1862701 e!1862710)))

(declare-fun bm!196132 () Bool)

(assert (=> bm!196132 (= call!196134 (isEmptyLang!295 (ite c!484880 lt!1033515 lt!1033518)))))

(declare-fun b!2958721 () Bool)

(assert (=> b!2958721 (= e!1862710 e!1862708)))

(assert (=> b!2958721 (= lt!1033518 call!196136)))

(assert (=> b!2958721 (= lt!1033516 call!196138)))

(declare-fun res!1220708 () Bool)

(assert (=> b!2958721 (= res!1220708 call!196134)))

(assert (=> b!2958721 (=> res!1220708 e!1862706)))

(declare-fun c!484878 () Bool)

(assert (=> b!2958721 (= c!484878 e!1862706)))

(declare-fun bm!196133 () Bool)

(assert (=> bm!196133 (= call!196135 call!196139)))

(declare-fun b!2958722 () Bool)

(assert (=> b!2958722 (= e!1862709 lt!1033518)))

(declare-fun bm!196134 () Bool)

(assert (=> bm!196134 (= call!196137 (isEmptyExpr!376 (ite c!484879 lt!1033513 lt!1033518)))))

(declare-fun b!2958723 () Bool)

(declare-fun c!484871 () Bool)

(assert (=> b!2958723 (= c!484871 call!196135)))

(assert (=> b!2958723 (= e!1862704 e!1862699)))

(declare-fun b!2958724 () Bool)

(declare-fun c!484874 () Bool)

(assert (=> b!2958724 (= c!484874 e!1862705)))

(declare-fun res!1220706 () Bool)

(assert (=> b!2958724 (=> res!1220706 e!1862705)))

(assert (=> b!2958724 (= res!1220706 call!196139)))

(assert (=> b!2958724 (= lt!1033513 call!196133)))

(assert (=> b!2958724 (= e!1862701 e!1862703)))

(assert (= (and d!841884 c!484872) b!2958716))

(assert (= (and d!841884 (not c!484872)) b!2958701))

(assert (= (and b!2958701 c!484875) b!2958713))

(assert (= (and b!2958701 (not c!484875)) b!2958702))

(assert (= (and b!2958702 c!484877) b!2958705))

(assert (= (and b!2958702 (not c!484877)) b!2958714))

(assert (= (and b!2958714 c!484879) b!2958724))

(assert (= (and b!2958714 (not c!484879)) b!2958720))

(assert (= (and b!2958724 (not res!1220706)) b!2958709))

(assert (= (and b!2958724 c!484874) b!2958712))

(assert (= (and b!2958724 (not c!484874)) b!2958703))

(assert (= (and b!2958720 c!484880) b!2958710))

(assert (= (and b!2958720 (not c!484880)) b!2958721))

(assert (= (and b!2958710 c!484873) b!2958704))

(assert (= (and b!2958710 (not c!484873)) b!2958723))

(assert (= (and b!2958723 c!484871) b!2958711))

(assert (= (and b!2958723 (not c!484871)) b!2958718))

(assert (= (and b!2958721 (not res!1220708)) b!2958708))

(assert (= (and b!2958721 c!484878) b!2958707))

(assert (= (and b!2958721 (not c!484878)) b!2958706))

(assert (= (and b!2958706 c!484876) b!2958719))

(assert (= (and b!2958706 (not c!484876)) b!2958715))

(assert (= (and b!2958715 c!484870) b!2958722))

(assert (= (and b!2958715 (not c!484870)) b!2958700))

(assert (= (or b!2958710 b!2958721) bm!196130))

(assert (= (or b!2958710 b!2958721) bm!196131))

(assert (= (or b!2958710 b!2958721) bm!196132))

(assert (= (or b!2958723 b!2958708) bm!196133))

(assert (= (or b!2958709 b!2958706) bm!196134))

(assert (= (or b!2958724 bm!196131) bm!196128))

(assert (= (or b!2958724 bm!196133) bm!196129))

(assert (= (and d!841884 res!1220707) b!2958717))

(declare-fun m!3333187 () Bool)

(assert (=> bm!196129 m!3333187))

(declare-fun m!3333189 () Bool)

(assert (=> bm!196134 m!3333189))

(declare-fun m!3333191 () Bool)

(assert (=> bm!196128 m!3333191))

(declare-fun m!3333193 () Bool)

(assert (=> b!2958715 m!3333193))

(declare-fun m!3333195 () Bool)

(assert (=> d!841884 m!3333195))

(declare-fun m!3333197 () Bool)

(assert (=> d!841884 m!3333197))

(declare-fun m!3333199 () Bool)

(assert (=> bm!196130 m!3333199))

(declare-fun m!3333201 () Bool)

(assert (=> bm!196132 m!3333201))

(declare-fun m!3333203 () Bool)

(assert (=> b!2958717 m!3333203))

(declare-fun m!3333205 () Bool)

(assert (=> b!2958717 m!3333205))

(assert (=> b!2958152 d!841884))

(declare-fun d!841886 () Bool)

(declare-fun e!1862711 () Bool)

(assert (=> d!841886 e!1862711))

(declare-fun c!484881 () Bool)

(assert (=> d!841886 (= c!484881 ((_ is EmptyExpr!9173) lt!1033432))))

(declare-fun lt!1033519 () Bool)

(declare-fun e!1862713 () Bool)

(assert (=> d!841886 (= lt!1033519 e!1862713)))

(declare-fun c!484882 () Bool)

(assert (=> d!841886 (= c!484882 (isEmpty!19196 s!11993))))

(assert (=> d!841886 (validRegex!3906 lt!1033432)))

(assert (=> d!841886 (= (matchR!4055 lt!1033432 s!11993) lt!1033519)))

(declare-fun b!2958725 () Bool)

(declare-fun e!1862717 () Bool)

(assert (=> b!2958725 (= e!1862717 (not (= (head!6590 s!11993) (c!484715 lt!1033432))))))

(declare-fun b!2958726 () Bool)

(declare-fun res!1220711 () Bool)

(declare-fun e!1862716 () Bool)

(assert (=> b!2958726 (=> res!1220711 e!1862716)))

(declare-fun e!1862715 () Bool)

(assert (=> b!2958726 (= res!1220711 e!1862715)))

(declare-fun res!1220714 () Bool)

(assert (=> b!2958726 (=> (not res!1220714) (not e!1862715))))

(assert (=> b!2958726 (= res!1220714 lt!1033519)))

(declare-fun b!2958727 () Bool)

(assert (=> b!2958727 (= e!1862713 (matchR!4055 (derivativeStep!2531 lt!1033432 (head!6590 s!11993)) (tail!4816 s!11993)))))

(declare-fun bm!196135 () Bool)

(declare-fun call!196140 () Bool)

(assert (=> bm!196135 (= call!196140 (isEmpty!19196 s!11993))))

(declare-fun b!2958728 () Bool)

(assert (=> b!2958728 (= e!1862711 (= lt!1033519 call!196140))))

(declare-fun b!2958729 () Bool)

(declare-fun res!1220710 () Bool)

(assert (=> b!2958729 (=> res!1220710 e!1862716)))

(assert (=> b!2958729 (= res!1220710 (not ((_ is ElementMatch!9173) lt!1033432)))))

(declare-fun e!1862714 () Bool)

(assert (=> b!2958729 (= e!1862714 e!1862716)))

(declare-fun b!2958730 () Bool)

(declare-fun e!1862712 () Bool)

(assert (=> b!2958730 (= e!1862712 e!1862717)))

(declare-fun res!1220716 () Bool)

(assert (=> b!2958730 (=> res!1220716 e!1862717)))

(assert (=> b!2958730 (= res!1220716 call!196140)))

(declare-fun b!2958731 () Bool)

(assert (=> b!2958731 (= e!1862713 (nullable!2929 lt!1033432))))

(declare-fun b!2958732 () Bool)

(assert (=> b!2958732 (= e!1862714 (not lt!1033519))))

(declare-fun b!2958733 () Bool)

(declare-fun res!1220715 () Bool)

(assert (=> b!2958733 (=> res!1220715 e!1862717)))

(assert (=> b!2958733 (= res!1220715 (not (isEmpty!19196 (tail!4816 s!11993))))))

(declare-fun b!2958734 () Bool)

(assert (=> b!2958734 (= e!1862716 e!1862712)))

(declare-fun res!1220709 () Bool)

(assert (=> b!2958734 (=> (not res!1220709) (not e!1862712))))

(assert (=> b!2958734 (= res!1220709 (not lt!1033519))))

(declare-fun b!2958735 () Bool)

(assert (=> b!2958735 (= e!1862715 (= (head!6590 s!11993) (c!484715 lt!1033432)))))

(declare-fun b!2958736 () Bool)

(declare-fun res!1220713 () Bool)

(assert (=> b!2958736 (=> (not res!1220713) (not e!1862715))))

(assert (=> b!2958736 (= res!1220713 (isEmpty!19196 (tail!4816 s!11993)))))

(declare-fun b!2958737 () Bool)

(declare-fun res!1220712 () Bool)

(assert (=> b!2958737 (=> (not res!1220712) (not e!1862715))))

(assert (=> b!2958737 (= res!1220712 (not call!196140))))

(declare-fun b!2958738 () Bool)

(assert (=> b!2958738 (= e!1862711 e!1862714)))

(declare-fun c!484883 () Bool)

(assert (=> b!2958738 (= c!484883 ((_ is EmptyLang!9173) lt!1033432))))

(assert (= (and d!841886 c!484882) b!2958731))

(assert (= (and d!841886 (not c!484882)) b!2958727))

(assert (= (and d!841886 c!484881) b!2958728))

(assert (= (and d!841886 (not c!484881)) b!2958738))

(assert (= (and b!2958738 c!484883) b!2958732))

(assert (= (and b!2958738 (not c!484883)) b!2958729))

(assert (= (and b!2958729 (not res!1220710)) b!2958726))

(assert (= (and b!2958726 res!1220714) b!2958737))

(assert (= (and b!2958737 res!1220712) b!2958736))

(assert (= (and b!2958736 res!1220713) b!2958735))

(assert (= (and b!2958726 (not res!1220711)) b!2958734))

(assert (= (and b!2958734 res!1220709) b!2958730))

(assert (= (and b!2958730 (not res!1220716)) b!2958733))

(assert (= (and b!2958733 (not res!1220715)) b!2958725))

(assert (= (or b!2958728 b!2958730 b!2958737) bm!196135))

(assert (=> b!2958727 m!3333093))

(assert (=> b!2958727 m!3333093))

(declare-fun m!3333207 () Bool)

(assert (=> b!2958727 m!3333207))

(assert (=> b!2958727 m!3333097))

(assert (=> b!2958727 m!3333207))

(assert (=> b!2958727 m!3333097))

(declare-fun m!3333209 () Bool)

(assert (=> b!2958727 m!3333209))

(assert (=> b!2958736 m!3333097))

(assert (=> b!2958736 m!3333097))

(assert (=> b!2958736 m!3333101))

(assert (=> bm!196135 m!3332959))

(assert (=> b!2958733 m!3333097))

(assert (=> b!2958733 m!3333097))

(assert (=> b!2958733 m!3333101))

(declare-fun m!3333211 () Bool)

(assert (=> b!2958731 m!3333211))

(assert (=> d!841886 m!3332959))

(declare-fun m!3333213 () Bool)

(assert (=> d!841886 m!3333213))

(assert (=> b!2958725 m!3333093))

(assert (=> b!2958735 m!3333093))

(assert (=> b!2958143 d!841886))

(declare-fun b!2958739 () Bool)

(declare-fun res!1220717 () Bool)

(declare-fun e!1862718 () Bool)

(assert (=> b!2958739 (=> res!1220717 e!1862718)))

(assert (=> b!2958739 (= res!1220717 (not ((_ is Concat!14494) r!17423)))))

(declare-fun e!1862724 () Bool)

(assert (=> b!2958739 (= e!1862724 e!1862718)))

(declare-fun b!2958740 () Bool)

(declare-fun e!1862722 () Bool)

(assert (=> b!2958740 (= e!1862718 e!1862722)))

(declare-fun res!1220718 () Bool)

(assert (=> b!2958740 (=> (not res!1220718) (not e!1862722))))

(declare-fun call!196143 () Bool)

(assert (=> b!2958740 (= res!1220718 call!196143)))

(declare-fun b!2958741 () Bool)

(declare-fun call!196141 () Bool)

(assert (=> b!2958741 (= e!1862722 call!196141)))

(declare-fun d!841888 () Bool)

(declare-fun res!1220721 () Bool)

(declare-fun e!1862719 () Bool)

(assert (=> d!841888 (=> res!1220721 e!1862719)))

(assert (=> d!841888 (= res!1220721 ((_ is ElementMatch!9173) r!17423))))

(assert (=> d!841888 (= (validRegex!3906 r!17423) e!1862719)))

(declare-fun b!2958742 () Bool)

(declare-fun e!1862723 () Bool)

(assert (=> b!2958742 (= e!1862723 call!196143)))

(declare-fun b!2958743 () Bool)

(declare-fun res!1220720 () Bool)

(assert (=> b!2958743 (=> (not res!1220720) (not e!1862723))))

(assert (=> b!2958743 (= res!1220720 call!196141)))

(assert (=> b!2958743 (= e!1862724 e!1862723)))

(declare-fun bm!196136 () Bool)

(declare-fun c!484885 () Bool)

(assert (=> bm!196136 (= call!196143 (validRegex!3906 (ite c!484885 (regTwo!18859 r!17423) (regOne!18858 r!17423))))))

(declare-fun bm!196137 () Bool)

(declare-fun c!484884 () Bool)

(declare-fun call!196142 () Bool)

(assert (=> bm!196137 (= call!196142 (validRegex!3906 (ite c!484884 (reg!9502 r!17423) (ite c!484885 (regOne!18859 r!17423) (regTwo!18858 r!17423)))))))

(declare-fun b!2958744 () Bool)

(declare-fun e!1862720 () Bool)

(assert (=> b!2958744 (= e!1862720 e!1862724)))

(assert (=> b!2958744 (= c!484885 ((_ is Union!9173) r!17423))))

(declare-fun b!2958745 () Bool)

(assert (=> b!2958745 (= e!1862719 e!1862720)))

(assert (=> b!2958745 (= c!484884 ((_ is Star!9173) r!17423))))

(declare-fun bm!196138 () Bool)

(assert (=> bm!196138 (= call!196141 call!196142)))

(declare-fun b!2958746 () Bool)

(declare-fun e!1862721 () Bool)

(assert (=> b!2958746 (= e!1862721 call!196142)))

(declare-fun b!2958747 () Bool)

(assert (=> b!2958747 (= e!1862720 e!1862721)))

(declare-fun res!1220719 () Bool)

(assert (=> b!2958747 (= res!1220719 (not (nullable!2929 (reg!9502 r!17423))))))

(assert (=> b!2958747 (=> (not res!1220719) (not e!1862721))))

(assert (= (and d!841888 (not res!1220721)) b!2958745))

(assert (= (and b!2958745 c!484884) b!2958747))

(assert (= (and b!2958745 (not c!484884)) b!2958744))

(assert (= (and b!2958747 res!1220719) b!2958746))

(assert (= (and b!2958744 c!484885) b!2958743))

(assert (= (and b!2958744 (not c!484885)) b!2958739))

(assert (= (and b!2958743 res!1220720) b!2958742))

(assert (= (and b!2958739 (not res!1220717)) b!2958740))

(assert (= (and b!2958740 res!1220718) b!2958741))

(assert (= (or b!2958743 b!2958741) bm!196138))

(assert (= (or b!2958742 b!2958740) bm!196136))

(assert (= (or b!2958746 bm!196138) bm!196137))

(declare-fun m!3333215 () Bool)

(assert (=> bm!196136 m!3333215))

(declare-fun m!3333217 () Bool)

(assert (=> bm!196137 m!3333217))

(declare-fun m!3333219 () Bool)

(assert (=> b!2958747 m!3333219))

(assert (=> start!286728 d!841888))

(declare-fun d!841890 () Bool)

(assert (=> d!841890 (= (isEmptyExpr!376 lt!1033427) ((_ is EmptyExpr!9173) lt!1033427))))

(assert (=> b!2958142 d!841890))

(declare-fun d!841892 () Bool)

(assert (=> d!841892 (= (isEmptyExpr!376 lt!1033435) ((_ is EmptyExpr!9173) lt!1033435))))

(assert (=> b!2958153 d!841892))

(declare-fun bs!526283 () Bool)

(declare-fun d!841894 () Bool)

(assert (= bs!526283 (and d!841894 b!2958149)))

(declare-fun lambda!110250 () Int)

(assert (=> bs!526283 (= lambda!110250 lambda!110223)))

(assert (=> bs!526283 (not (= lambda!110250 lambda!110224))))

(declare-fun bs!526284 () Bool)

(assert (= bs!526284 (and d!841894 b!2958301)))

(assert (=> bs!526284 (not (= lambda!110250 lambda!110243))))

(declare-fun bs!526285 () Bool)

(assert (= bs!526285 (and d!841894 b!2958305)))

(assert (=> bs!526285 (not (= lambda!110250 lambda!110245))))

(assert (=> d!841894 true))

(assert (=> d!841894 true))

(assert (=> d!841894 true))

(assert (=> d!841894 (= (isDefined!5215 (findConcatSeparation!1058 lt!1033435 lt!1033427 Nil!34914 s!11993 s!11993)) (Exists!1505 lambda!110250))))

(declare-fun lt!1033522 () Unit!48725)

(declare-fun choose!17510 (Regex!9173 Regex!9173 List!35038) Unit!48725)

(assert (=> d!841894 (= lt!1033522 (choose!17510 lt!1033435 lt!1033427 s!11993))))

(assert (=> d!841894 (validRegex!3906 lt!1033435)))

(assert (=> d!841894 (= (lemmaFindConcatSeparationEquivalentToExists!836 lt!1033435 lt!1033427 s!11993) lt!1033522)))

(declare-fun bs!526286 () Bool)

(assert (= bs!526286 d!841894))

(assert (=> bs!526286 m!3332965))

(declare-fun m!3333221 () Bool)

(assert (=> bs!526286 m!3333221))

(declare-fun m!3333223 () Bool)

(assert (=> bs!526286 m!3333223))

(assert (=> bs!526286 m!3332949))

(assert (=> bs!526286 m!3332965))

(assert (=> bs!526286 m!3332969))

(assert (=> b!2958149 d!841894))

(declare-fun bs!526287 () Bool)

(declare-fun b!2958752 () Bool)

(assert (= bs!526287 (and b!2958752 b!2958301)))

(declare-fun lambda!110251 () Int)

(assert (=> bs!526287 (= (and (= (reg!9502 lt!1033432) (reg!9502 r!17423)) (= lt!1033432 r!17423)) (= lambda!110251 lambda!110243))))

(declare-fun bs!526288 () Bool)

(assert (= bs!526288 (and b!2958752 d!841894)))

(assert (=> bs!526288 (not (= lambda!110251 lambda!110250))))

(declare-fun bs!526289 () Bool)

(assert (= bs!526289 (and b!2958752 b!2958149)))

(assert (=> bs!526289 (not (= lambda!110251 lambda!110224))))

(declare-fun bs!526290 () Bool)

(assert (= bs!526290 (and b!2958752 b!2958305)))

(assert (=> bs!526290 (not (= lambda!110251 lambda!110245))))

(assert (=> bs!526289 (not (= lambda!110251 lambda!110223))))

(assert (=> b!2958752 true))

(assert (=> b!2958752 true))

(declare-fun bs!526291 () Bool)

(declare-fun b!2958756 () Bool)

(assert (= bs!526291 (and b!2958756 b!2958301)))

(declare-fun lambda!110252 () Int)

(assert (=> bs!526291 (not (= lambda!110252 lambda!110243))))

(declare-fun bs!526292 () Bool)

(assert (= bs!526292 (and b!2958756 d!841894)))

(assert (=> bs!526292 (not (= lambda!110252 lambda!110250))))

(declare-fun bs!526293 () Bool)

(assert (= bs!526293 (and b!2958756 b!2958752)))

(assert (=> bs!526293 (not (= lambda!110252 lambda!110251))))

(declare-fun bs!526294 () Bool)

(assert (= bs!526294 (and b!2958756 b!2958149)))

(assert (=> bs!526294 (= (and (= (regOne!18858 lt!1033432) lt!1033435) (= (regTwo!18858 lt!1033432) lt!1033427)) (= lambda!110252 lambda!110224))))

(declare-fun bs!526295 () Bool)

(assert (= bs!526295 (and b!2958756 b!2958305)))

(assert (=> bs!526295 (= (and (= (regOne!18858 lt!1033432) (regOne!18858 r!17423)) (= (regTwo!18858 lt!1033432) (regTwo!18858 r!17423))) (= lambda!110252 lambda!110245))))

(assert (=> bs!526294 (not (= lambda!110252 lambda!110223))))

(assert (=> b!2958756 true))

(assert (=> b!2958756 true))

(declare-fun e!1862728 () Bool)

(declare-fun call!196144 () Bool)

(assert (=> b!2958752 (= e!1862728 call!196144)))

(declare-fun bm!196139 () Bool)

(declare-fun call!196145 () Bool)

(assert (=> bm!196139 (= call!196145 (isEmpty!19196 s!11993))))

(declare-fun d!841896 () Bool)

(declare-fun c!484887 () Bool)

(assert (=> d!841896 (= c!484887 ((_ is EmptyExpr!9173) lt!1033432))))

(declare-fun e!1862731 () Bool)

(assert (=> d!841896 (= (matchRSpec!1310 lt!1033432 s!11993) e!1862731)))

(declare-fun b!2958753 () Bool)

(declare-fun e!1862733 () Bool)

(assert (=> b!2958753 (= e!1862733 (= s!11993 (Cons!34914 (c!484715 lt!1033432) Nil!34914)))))

(declare-fun b!2958754 () Bool)

(declare-fun e!1862732 () Bool)

(declare-fun e!1862729 () Bool)

(assert (=> b!2958754 (= e!1862732 e!1862729)))

(declare-fun c!484888 () Bool)

(assert (=> b!2958754 (= c!484888 ((_ is Star!9173) lt!1033432))))

(declare-fun b!2958755 () Bool)

(declare-fun e!1862730 () Bool)

(assert (=> b!2958755 (= e!1862731 e!1862730)))

(declare-fun res!1220728 () Bool)

(assert (=> b!2958755 (= res!1220728 (not ((_ is EmptyLang!9173) lt!1033432)))))

(assert (=> b!2958755 (=> (not res!1220728) (not e!1862730))))

(assert (=> b!2958756 (= e!1862729 call!196144)))

(declare-fun b!2958757 () Bool)

(declare-fun c!484886 () Bool)

(assert (=> b!2958757 (= c!484886 ((_ is Union!9173) lt!1033432))))

(assert (=> b!2958757 (= e!1862733 e!1862732)))

(declare-fun bm!196140 () Bool)

(assert (=> bm!196140 (= call!196144 (Exists!1505 (ite c!484888 lambda!110251 lambda!110252)))))

(declare-fun b!2958758 () Bool)

(declare-fun e!1862727 () Bool)

(assert (=> b!2958758 (= e!1862732 e!1862727)))

(declare-fun res!1220726 () Bool)

(assert (=> b!2958758 (= res!1220726 (matchRSpec!1310 (regOne!18859 lt!1033432) s!11993))))

(assert (=> b!2958758 (=> res!1220726 e!1862727)))

(declare-fun b!2958759 () Bool)

(declare-fun c!484889 () Bool)

(assert (=> b!2958759 (= c!484889 ((_ is ElementMatch!9173) lt!1033432))))

(assert (=> b!2958759 (= e!1862730 e!1862733)))

(declare-fun b!2958760 () Bool)

(declare-fun res!1220727 () Bool)

(assert (=> b!2958760 (=> res!1220727 e!1862728)))

(assert (=> b!2958760 (= res!1220727 call!196145)))

(assert (=> b!2958760 (= e!1862729 e!1862728)))

(declare-fun b!2958761 () Bool)

(assert (=> b!2958761 (= e!1862731 call!196145)))

(declare-fun b!2958762 () Bool)

(assert (=> b!2958762 (= e!1862727 (matchRSpec!1310 (regTwo!18859 lt!1033432) s!11993))))

(assert (= (and d!841896 c!484887) b!2958761))

(assert (= (and d!841896 (not c!484887)) b!2958755))

(assert (= (and b!2958755 res!1220728) b!2958759))

(assert (= (and b!2958759 c!484889) b!2958753))

(assert (= (and b!2958759 (not c!484889)) b!2958757))

(assert (= (and b!2958757 c!484886) b!2958758))

(assert (= (and b!2958757 (not c!484886)) b!2958754))

(assert (= (and b!2958758 (not res!1220726)) b!2958762))

(assert (= (and b!2958754 c!484888) b!2958760))

(assert (= (and b!2958754 (not c!484888)) b!2958756))

(assert (= (and b!2958760 (not res!1220727)) b!2958752))

(assert (= (or b!2958752 b!2958756) bm!196140))

(assert (= (or b!2958761 b!2958760) bm!196139))

(assert (=> bm!196139 m!3332959))

(declare-fun m!3333225 () Bool)

(assert (=> bm!196140 m!3333225))

(declare-fun m!3333227 () Bool)

(assert (=> b!2958758 m!3333227))

(declare-fun m!3333229 () Bool)

(assert (=> b!2958762 m!3333229))

(assert (=> b!2958149 d!841896))

(declare-fun d!841898 () Bool)

(declare-fun e!1862744 () Bool)

(assert (=> d!841898 e!1862744))

(declare-fun res!1220739 () Bool)

(assert (=> d!841898 (=> res!1220739 e!1862744)))

(declare-fun e!1862748 () Bool)

(assert (=> d!841898 (= res!1220739 e!1862748)))

(declare-fun res!1220743 () Bool)

(assert (=> d!841898 (=> (not res!1220743) (not e!1862748))))

(declare-fun lt!1033529 () Option!6664)

(assert (=> d!841898 (= res!1220743 (isDefined!5215 lt!1033529))))

(declare-fun e!1862745 () Option!6664)

(assert (=> d!841898 (= lt!1033529 e!1862745)))

(declare-fun c!484895 () Bool)

(declare-fun e!1862746 () Bool)

(assert (=> d!841898 (= c!484895 e!1862746)))

(declare-fun res!1220740 () Bool)

(assert (=> d!841898 (=> (not res!1220740) (not e!1862746))))

(assert (=> d!841898 (= res!1220740 (matchR!4055 lt!1033435 Nil!34914))))

(assert (=> d!841898 (validRegex!3906 lt!1033435)))

(assert (=> d!841898 (= (findConcatSeparation!1058 lt!1033435 lt!1033427 Nil!34914 s!11993 s!11993) lt!1033529)))

(declare-fun b!2958781 () Bool)

(declare-fun get!10727 (Option!6664) tuple2!33864)

(assert (=> b!2958781 (= e!1862748 (= (++!8340 (_1!20064 (get!10727 lt!1033529)) (_2!20064 (get!10727 lt!1033529))) s!11993))))

(declare-fun b!2958782 () Bool)

(declare-fun lt!1033531 () Unit!48725)

(declare-fun lt!1033530 () Unit!48725)

(assert (=> b!2958782 (= lt!1033531 lt!1033530)))

(assert (=> b!2958782 (= (++!8340 (++!8340 Nil!34914 (Cons!34914 (h!40334 s!11993) Nil!34914)) (t!234103 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!963 (List!35038 C!18532 List!35038 List!35038) Unit!48725)

(assert (=> b!2958782 (= lt!1033530 (lemmaMoveElementToOtherListKeepsConcatEq!963 Nil!34914 (h!40334 s!11993) (t!234103 s!11993) s!11993))))

(declare-fun e!1862747 () Option!6664)

(assert (=> b!2958782 (= e!1862747 (findConcatSeparation!1058 lt!1033435 lt!1033427 (++!8340 Nil!34914 (Cons!34914 (h!40334 s!11993) Nil!34914)) (t!234103 s!11993) s!11993))))

(declare-fun b!2958783 () Bool)

(assert (=> b!2958783 (= e!1862747 None!6663)))

(declare-fun b!2958784 () Bool)

(assert (=> b!2958784 (= e!1862744 (not (isDefined!5215 lt!1033529)))))

(declare-fun b!2958785 () Bool)

(assert (=> b!2958785 (= e!1862745 (Some!6663 (tuple2!33865 Nil!34914 s!11993)))))

(declare-fun b!2958786 () Bool)

(declare-fun res!1220742 () Bool)

(assert (=> b!2958786 (=> (not res!1220742) (not e!1862748))))

(assert (=> b!2958786 (= res!1220742 (matchR!4055 lt!1033427 (_2!20064 (get!10727 lt!1033529))))))

(declare-fun b!2958787 () Bool)

(assert (=> b!2958787 (= e!1862745 e!1862747)))

(declare-fun c!484894 () Bool)

(assert (=> b!2958787 (= c!484894 ((_ is Nil!34914) s!11993))))

(declare-fun b!2958788 () Bool)

(assert (=> b!2958788 (= e!1862746 (matchR!4055 lt!1033427 s!11993))))

(declare-fun b!2958789 () Bool)

(declare-fun res!1220741 () Bool)

(assert (=> b!2958789 (=> (not res!1220741) (not e!1862748))))

(assert (=> b!2958789 (= res!1220741 (matchR!4055 lt!1033435 (_1!20064 (get!10727 lt!1033529))))))

(assert (= (and d!841898 res!1220740) b!2958788))

(assert (= (and d!841898 c!484895) b!2958785))

(assert (= (and d!841898 (not c!484895)) b!2958787))

(assert (= (and b!2958787 c!484894) b!2958783))

(assert (= (and b!2958787 (not c!484894)) b!2958782))

(assert (= (and d!841898 res!1220743) b!2958789))

(assert (= (and b!2958789 res!1220741) b!2958786))

(assert (= (and b!2958786 res!1220742) b!2958781))

(assert (= (and d!841898 (not res!1220739)) b!2958784))

(declare-fun m!3333231 () Bool)

(assert (=> b!2958782 m!3333231))

(assert (=> b!2958782 m!3333231))

(declare-fun m!3333233 () Bool)

(assert (=> b!2958782 m!3333233))

(declare-fun m!3333235 () Bool)

(assert (=> b!2958782 m!3333235))

(assert (=> b!2958782 m!3333231))

(declare-fun m!3333237 () Bool)

(assert (=> b!2958782 m!3333237))

(declare-fun m!3333239 () Bool)

(assert (=> b!2958789 m!3333239))

(declare-fun m!3333241 () Bool)

(assert (=> b!2958789 m!3333241))

(declare-fun m!3333243 () Bool)

(assert (=> d!841898 m!3333243))

(declare-fun m!3333245 () Bool)

(assert (=> d!841898 m!3333245))

(assert (=> d!841898 m!3332949))

(declare-fun m!3333247 () Bool)

(assert (=> b!2958788 m!3333247))

(assert (=> b!2958781 m!3333239))

(declare-fun m!3333249 () Bool)

(assert (=> b!2958781 m!3333249))

(assert (=> b!2958786 m!3333239))

(declare-fun m!3333251 () Bool)

(assert (=> b!2958786 m!3333251))

(assert (=> b!2958784 m!3333243))

(assert (=> b!2958149 d!841898))

(declare-fun bs!526296 () Bool)

(declare-fun d!841900 () Bool)

(assert (= bs!526296 (and d!841900 b!2958756)))

(declare-fun lambda!110257 () Int)

(assert (=> bs!526296 (not (= lambda!110257 lambda!110252))))

(declare-fun bs!526297 () Bool)

(assert (= bs!526297 (and d!841900 b!2958301)))

(assert (=> bs!526297 (not (= lambda!110257 lambda!110243))))

(declare-fun bs!526298 () Bool)

(assert (= bs!526298 (and d!841900 d!841894)))

(assert (=> bs!526298 (= lambda!110257 lambda!110250)))

(declare-fun bs!526299 () Bool)

(assert (= bs!526299 (and d!841900 b!2958752)))

(assert (=> bs!526299 (not (= lambda!110257 lambda!110251))))

(declare-fun bs!526300 () Bool)

(assert (= bs!526300 (and d!841900 b!2958149)))

(assert (=> bs!526300 (not (= lambda!110257 lambda!110224))))

(declare-fun bs!526301 () Bool)

(assert (= bs!526301 (and d!841900 b!2958305)))

(assert (=> bs!526301 (not (= lambda!110257 lambda!110245))))

(assert (=> bs!526300 (= lambda!110257 lambda!110223)))

(assert (=> d!841900 true))

(assert (=> d!841900 true))

(assert (=> d!841900 true))

(declare-fun lambda!110258 () Int)

(assert (=> bs!526296 (= (and (= lt!1033435 (regOne!18858 lt!1033432)) (= lt!1033427 (regTwo!18858 lt!1033432))) (= lambda!110258 lambda!110252))))

(declare-fun bs!526302 () Bool)

(assert (= bs!526302 d!841900))

(assert (=> bs!526302 (not (= lambda!110258 lambda!110257))))

(assert (=> bs!526297 (not (= lambda!110258 lambda!110243))))

(assert (=> bs!526298 (not (= lambda!110258 lambda!110250))))

(assert (=> bs!526299 (not (= lambda!110258 lambda!110251))))

(assert (=> bs!526300 (= lambda!110258 lambda!110224)))

(assert (=> bs!526301 (= (and (= lt!1033435 (regOne!18858 r!17423)) (= lt!1033427 (regTwo!18858 r!17423))) (= lambda!110258 lambda!110245))))

(assert (=> bs!526300 (not (= lambda!110258 lambda!110223))))

(assert (=> d!841900 true))

(assert (=> d!841900 true))

(assert (=> d!841900 true))

(assert (=> d!841900 (= (Exists!1505 lambda!110257) (Exists!1505 lambda!110258))))

(declare-fun lt!1033534 () Unit!48725)

(declare-fun choose!17511 (Regex!9173 Regex!9173 List!35038) Unit!48725)

(assert (=> d!841900 (= lt!1033534 (choose!17511 lt!1033435 lt!1033427 s!11993))))

(assert (=> d!841900 (validRegex!3906 lt!1033435)))

(assert (=> d!841900 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!526 lt!1033435 lt!1033427 s!11993) lt!1033534)))

(declare-fun m!3333253 () Bool)

(assert (=> bs!526302 m!3333253))

(declare-fun m!3333255 () Bool)

(assert (=> bs!526302 m!3333255))

(declare-fun m!3333257 () Bool)

(assert (=> bs!526302 m!3333257))

(assert (=> bs!526302 m!3332949))

(assert (=> b!2958149 d!841900))

(declare-fun d!841902 () Bool)

(declare-fun isEmpty!19198 (Option!6664) Bool)

(assert (=> d!841902 (= (isDefined!5215 (findConcatSeparation!1058 lt!1033435 lt!1033427 Nil!34914 s!11993 s!11993)) (not (isEmpty!19198 (findConcatSeparation!1058 lt!1033435 lt!1033427 Nil!34914 s!11993 s!11993))))))

(declare-fun bs!526303 () Bool)

(assert (= bs!526303 d!841902))

(assert (=> bs!526303 m!3332965))

(declare-fun m!3333259 () Bool)

(assert (=> bs!526303 m!3333259))

(assert (=> b!2958149 d!841902))

(declare-fun d!841904 () Bool)

(declare-fun choose!17512 (Int) Bool)

(assert (=> d!841904 (= (Exists!1505 lambda!110223) (choose!17512 lambda!110223))))

(declare-fun bs!526304 () Bool)

(assert (= bs!526304 d!841904))

(declare-fun m!3333261 () Bool)

(assert (=> bs!526304 m!3333261))

(assert (=> b!2958149 d!841904))

(declare-fun d!841906 () Bool)

(assert (=> d!841906 (= (matchR!4055 lt!1033432 s!11993) (matchRSpec!1310 lt!1033432 s!11993))))

(declare-fun lt!1033535 () Unit!48725)

(assert (=> d!841906 (= lt!1033535 (choose!17509 lt!1033432 s!11993))))

(assert (=> d!841906 (validRegex!3906 lt!1033432)))

(assert (=> d!841906 (= (mainMatchTheorem!1310 lt!1033432 s!11993) lt!1033535)))

(declare-fun bs!526305 () Bool)

(assert (= bs!526305 d!841906))

(assert (=> bs!526305 m!3332961))

(assert (=> bs!526305 m!3332971))

(declare-fun m!3333263 () Bool)

(assert (=> bs!526305 m!3333263))

(assert (=> bs!526305 m!3333213))

(assert (=> b!2958149 d!841906))

(declare-fun d!841908 () Bool)

(assert (=> d!841908 (= (Exists!1505 lambda!110224) (choose!17512 lambda!110224))))

(declare-fun bs!526306 () Bool)

(assert (= bs!526306 d!841908))

(declare-fun m!3333265 () Bool)

(assert (=> bs!526306 m!3333265))

(assert (=> b!2958149 d!841908))

(declare-fun b!2958798 () Bool)

(declare-fun res!1220752 () Bool)

(declare-fun e!1862753 () Bool)

(assert (=> b!2958798 (=> res!1220752 e!1862753)))

(assert (=> b!2958798 (= res!1220752 (not ((_ is Concat!14494) lt!1033435)))))

(declare-fun e!1862759 () Bool)

(assert (=> b!2958798 (= e!1862759 e!1862753)))

(declare-fun b!2958799 () Bool)

(declare-fun e!1862757 () Bool)

(assert (=> b!2958799 (= e!1862753 e!1862757)))

(declare-fun res!1220753 () Bool)

(assert (=> b!2958799 (=> (not res!1220753) (not e!1862757))))

(declare-fun call!196148 () Bool)

(assert (=> b!2958799 (= res!1220753 call!196148)))

(declare-fun b!2958800 () Bool)

(declare-fun call!196146 () Bool)

(assert (=> b!2958800 (= e!1862757 call!196146)))

(declare-fun d!841910 () Bool)

(declare-fun res!1220756 () Bool)

(declare-fun e!1862754 () Bool)

(assert (=> d!841910 (=> res!1220756 e!1862754)))

(assert (=> d!841910 (= res!1220756 ((_ is ElementMatch!9173) lt!1033435))))

(assert (=> d!841910 (= (validRegex!3906 lt!1033435) e!1862754)))

(declare-fun b!2958801 () Bool)

(declare-fun e!1862758 () Bool)

(assert (=> b!2958801 (= e!1862758 call!196148)))

(declare-fun b!2958802 () Bool)

(declare-fun res!1220755 () Bool)

(assert (=> b!2958802 (=> (not res!1220755) (not e!1862758))))

(assert (=> b!2958802 (= res!1220755 call!196146)))

(assert (=> b!2958802 (= e!1862759 e!1862758)))

(declare-fun bm!196141 () Bool)

(declare-fun c!484897 () Bool)

(assert (=> bm!196141 (= call!196148 (validRegex!3906 (ite c!484897 (regTwo!18859 lt!1033435) (regOne!18858 lt!1033435))))))

(declare-fun c!484896 () Bool)

(declare-fun call!196147 () Bool)

(declare-fun bm!196142 () Bool)

(assert (=> bm!196142 (= call!196147 (validRegex!3906 (ite c!484896 (reg!9502 lt!1033435) (ite c!484897 (regOne!18859 lt!1033435) (regTwo!18858 lt!1033435)))))))

(declare-fun b!2958803 () Bool)

(declare-fun e!1862755 () Bool)

(assert (=> b!2958803 (= e!1862755 e!1862759)))

(assert (=> b!2958803 (= c!484897 ((_ is Union!9173) lt!1033435))))

(declare-fun b!2958804 () Bool)

(assert (=> b!2958804 (= e!1862754 e!1862755)))

(assert (=> b!2958804 (= c!484896 ((_ is Star!9173) lt!1033435))))

(declare-fun bm!196143 () Bool)

(assert (=> bm!196143 (= call!196146 call!196147)))

(declare-fun b!2958805 () Bool)

(declare-fun e!1862756 () Bool)

(assert (=> b!2958805 (= e!1862756 call!196147)))

(declare-fun b!2958806 () Bool)

(assert (=> b!2958806 (= e!1862755 e!1862756)))

(declare-fun res!1220754 () Bool)

(assert (=> b!2958806 (= res!1220754 (not (nullable!2929 (reg!9502 lt!1033435))))))

(assert (=> b!2958806 (=> (not res!1220754) (not e!1862756))))

(assert (= (and d!841910 (not res!1220756)) b!2958804))

(assert (= (and b!2958804 c!484896) b!2958806))

(assert (= (and b!2958804 (not c!484896)) b!2958803))

(assert (= (and b!2958806 res!1220754) b!2958805))

(assert (= (and b!2958803 c!484897) b!2958802))

(assert (= (and b!2958803 (not c!484897)) b!2958798))

(assert (= (and b!2958802 res!1220755) b!2958801))

(assert (= (and b!2958798 (not res!1220752)) b!2958799))

(assert (= (and b!2958799 res!1220753) b!2958800))

(assert (= (or b!2958802 b!2958800) bm!196143))

(assert (= (or b!2958801 b!2958799) bm!196141))

(assert (= (or b!2958805 bm!196143) bm!196142))

(declare-fun m!3333267 () Bool)

(assert (=> bm!196141 m!3333267))

(declare-fun m!3333269 () Bool)

(assert (=> bm!196142 m!3333269))

(declare-fun m!3333271 () Bool)

(assert (=> b!2958806 m!3333271))

(assert (=> b!2958140 d!841910))

(declare-fun b!2958818 () Bool)

(declare-fun e!1862762 () Bool)

(declare-fun tp!944363 () Bool)

(declare-fun tp!944365 () Bool)

(assert (=> b!2958818 (= e!1862762 (and tp!944363 tp!944365))))

(declare-fun b!2958819 () Bool)

(declare-fun tp!944364 () Bool)

(assert (=> b!2958819 (= e!1862762 tp!944364)))

(declare-fun b!2958817 () Bool)

(assert (=> b!2958817 (= e!1862762 tp_is_empty!15909)))

(declare-fun b!2958820 () Bool)

(declare-fun tp!944366 () Bool)

(declare-fun tp!944362 () Bool)

(assert (=> b!2958820 (= e!1862762 (and tp!944366 tp!944362))))

(assert (=> b!2958146 (= tp!944313 e!1862762)))

(assert (= (and b!2958146 ((_ is ElementMatch!9173) (regOne!18858 r!17423))) b!2958817))

(assert (= (and b!2958146 ((_ is Concat!14494) (regOne!18858 r!17423))) b!2958818))

(assert (= (and b!2958146 ((_ is Star!9173) (regOne!18858 r!17423))) b!2958819))

(assert (= (and b!2958146 ((_ is Union!9173) (regOne!18858 r!17423))) b!2958820))

(declare-fun b!2958822 () Bool)

(declare-fun e!1862763 () Bool)

(declare-fun tp!944368 () Bool)

(declare-fun tp!944370 () Bool)

(assert (=> b!2958822 (= e!1862763 (and tp!944368 tp!944370))))

(declare-fun b!2958823 () Bool)

(declare-fun tp!944369 () Bool)

(assert (=> b!2958823 (= e!1862763 tp!944369)))

(declare-fun b!2958821 () Bool)

(assert (=> b!2958821 (= e!1862763 tp_is_empty!15909)))

(declare-fun b!2958824 () Bool)

(declare-fun tp!944371 () Bool)

(declare-fun tp!944367 () Bool)

(assert (=> b!2958824 (= e!1862763 (and tp!944371 tp!944367))))

(assert (=> b!2958146 (= tp!944309 e!1862763)))

(assert (= (and b!2958146 ((_ is ElementMatch!9173) (regTwo!18858 r!17423))) b!2958821))

(assert (= (and b!2958146 ((_ is Concat!14494) (regTwo!18858 r!17423))) b!2958822))

(assert (= (and b!2958146 ((_ is Star!9173) (regTwo!18858 r!17423))) b!2958823))

(assert (= (and b!2958146 ((_ is Union!9173) (regTwo!18858 r!17423))) b!2958824))

(declare-fun b!2958826 () Bool)

(declare-fun e!1862764 () Bool)

(declare-fun tp!944373 () Bool)

(declare-fun tp!944375 () Bool)

(assert (=> b!2958826 (= e!1862764 (and tp!944373 tp!944375))))

(declare-fun b!2958827 () Bool)

(declare-fun tp!944374 () Bool)

(assert (=> b!2958827 (= e!1862764 tp!944374)))

(declare-fun b!2958825 () Bool)

(assert (=> b!2958825 (= e!1862764 tp_is_empty!15909)))

(declare-fun b!2958828 () Bool)

(declare-fun tp!944376 () Bool)

(declare-fun tp!944372 () Bool)

(assert (=> b!2958828 (= e!1862764 (and tp!944376 tp!944372))))

(assert (=> b!2958154 (= tp!944312 e!1862764)))

(assert (= (and b!2958154 ((_ is ElementMatch!9173) (reg!9502 r!17423))) b!2958825))

(assert (= (and b!2958154 ((_ is Concat!14494) (reg!9502 r!17423))) b!2958826))

(assert (= (and b!2958154 ((_ is Star!9173) (reg!9502 r!17423))) b!2958827))

(assert (= (and b!2958154 ((_ is Union!9173) (reg!9502 r!17423))) b!2958828))

(declare-fun b!2958833 () Bool)

(declare-fun e!1862767 () Bool)

(declare-fun tp!944379 () Bool)

(assert (=> b!2958833 (= e!1862767 (and tp_is_empty!15909 tp!944379))))

(assert (=> b!2958151 (= tp!944310 e!1862767)))

(assert (= (and b!2958151 ((_ is Cons!34914) (t!234103 s!11993))) b!2958833))

(declare-fun b!2958835 () Bool)

(declare-fun e!1862768 () Bool)

(declare-fun tp!944381 () Bool)

(declare-fun tp!944383 () Bool)

(assert (=> b!2958835 (= e!1862768 (and tp!944381 tp!944383))))

(declare-fun b!2958836 () Bool)

(declare-fun tp!944382 () Bool)

(assert (=> b!2958836 (= e!1862768 tp!944382)))

(declare-fun b!2958834 () Bool)

(assert (=> b!2958834 (= e!1862768 tp_is_empty!15909)))

(declare-fun b!2958837 () Bool)

(declare-fun tp!944384 () Bool)

(declare-fun tp!944380 () Bool)

(assert (=> b!2958837 (= e!1862768 (and tp!944384 tp!944380))))

(assert (=> b!2958150 (= tp!944308 e!1862768)))

(assert (= (and b!2958150 ((_ is ElementMatch!9173) (regOne!18859 r!17423))) b!2958834))

(assert (= (and b!2958150 ((_ is Concat!14494) (regOne!18859 r!17423))) b!2958835))

(assert (= (and b!2958150 ((_ is Star!9173) (regOne!18859 r!17423))) b!2958836))

(assert (= (and b!2958150 ((_ is Union!9173) (regOne!18859 r!17423))) b!2958837))

(declare-fun b!2958839 () Bool)

(declare-fun e!1862769 () Bool)

(declare-fun tp!944386 () Bool)

(declare-fun tp!944388 () Bool)

(assert (=> b!2958839 (= e!1862769 (and tp!944386 tp!944388))))

(declare-fun b!2958840 () Bool)

(declare-fun tp!944387 () Bool)

(assert (=> b!2958840 (= e!1862769 tp!944387)))

(declare-fun b!2958838 () Bool)

(assert (=> b!2958838 (= e!1862769 tp_is_empty!15909)))

(declare-fun b!2958841 () Bool)

(declare-fun tp!944389 () Bool)

(declare-fun tp!944385 () Bool)

(assert (=> b!2958841 (= e!1862769 (and tp!944389 tp!944385))))

(assert (=> b!2958150 (= tp!944311 e!1862769)))

(assert (= (and b!2958150 ((_ is ElementMatch!9173) (regTwo!18859 r!17423))) b!2958838))

(assert (= (and b!2958150 ((_ is Concat!14494) (regTwo!18859 r!17423))) b!2958839))

(assert (= (and b!2958150 ((_ is Star!9173) (regTwo!18859 r!17423))) b!2958840))

(assert (= (and b!2958150 ((_ is Union!9173) (regTwo!18859 r!17423))) b!2958841))

(check-sat (not b!2958835) (not bm!196136) (not bm!196135) (not bm!196121) (not b!2958836) (not bm!196142) (not b!2958736) (not bm!196069) (not b!2958786) (not b!2958784) (not d!841876) (not b!2958727) (not b!2958822) (not b!2958839) (not b!2958826) (not b!2958437) (not b!2958725) (not b!2958824) (not bm!196130) (not d!841884) (not bm!196139) (not d!841906) (not d!841886) (not bm!196132) (not b!2958307) (not bm!196129) (not b!2958622) (not b!2958692) (not b!2958690) (not b!2958443) (not b!2958439) (not d!841866) (not bm!196125) (not b!2958747) (not b!2958823) (not bm!196105) (not b!2958781) (not b!2958782) (not bm!196127) (not b!2958448) (not b!2958612) (not bm!196141) (not b!2958841) (not d!841882) (not b!2958731) (not bm!196123) (not d!841902) (not b!2958623) (not bm!196104) (not b!2958762) (not bm!196122) (not b!2958827) (not b!2958788) (not bm!196128) (not b!2958789) (not b!2958837) (not b!2958758) (not b!2958828) (not bm!196140) (not bm!196054) (not b!2958445) (not b!2958818) (not b!2958833) (not d!841908) (not bm!196134) (not b!2958840) (not b!2958717) (not b!2958820) (not b!2958819) tp_is_empty!15909 (not d!841898) (not d!841850) (not b!2958735) (not b!2958715) (not bm!196053) (not d!841904) (not bm!196137) (not b!2958733) (not b!2958447) (not d!841894) (not d!841900) (not b!2958311) (not b!2958806))
(check-sat)
