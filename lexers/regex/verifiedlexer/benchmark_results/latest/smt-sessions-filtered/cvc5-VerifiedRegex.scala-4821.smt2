; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!247938 () Bool)

(assert start!247938)

(declare-fun b!2560841 () Bool)

(declare-fun res!1078140 () Bool)

(declare-fun e!1617234 () Bool)

(assert (=> b!2560841 (=> (not res!1078140) (not e!1617234))))

(declare-datatypes ((C!15390 0))(
  ( (C!15391 (val!9347 Int)) )
))
(declare-datatypes ((Regex!7616 0))(
  ( (ElementMatch!7616 (c!411380 C!15390)) (Concat!12312 (regOne!15744 Regex!7616) (regTwo!15744 Regex!7616)) (EmptyExpr!7616) (Star!7616 (reg!7945 Regex!7616)) (EmptyLang!7616) (Union!7616 (regOne!15745 Regex!7616) (regTwo!15745 Regex!7616)) )
))
(declare-fun r!27340 () Regex!7616)

(declare-fun nullable!2533 (Regex!7616) Bool)

(assert (=> b!2560841 (= res!1078140 (nullable!2533 (regOne!15744 r!27340)))))

(declare-fun b!2560842 () Bool)

(declare-fun e!1617232 () Bool)

(declare-fun tp_is_empty!13087 () Bool)

(assert (=> b!2560842 (= e!1617232 tp_is_empty!13087)))

(declare-fun b!2560843 () Bool)

(declare-fun e!1617231 () Bool)

(declare-fun tp!815624 () Bool)

(assert (=> b!2560843 (= e!1617231 (and tp_is_empty!13087 tp!815624))))

(declare-fun b!2560844 () Bool)

(declare-fun tp!815622 () Bool)

(assert (=> b!2560844 (= e!1617232 tp!815622)))

(declare-fun b!2560845 () Bool)

(declare-fun tp!815621 () Bool)

(declare-fun tp!815623 () Bool)

(assert (=> b!2560845 (= e!1617232 (and tp!815621 tp!815623))))

(declare-fun res!1078144 () Bool)

(assert (=> start!247938 (=> (not res!1078144) (not e!1617234))))

(declare-fun validRegex!3242 (Regex!7616) Bool)

(assert (=> start!247938 (= res!1078144 (validRegex!3242 r!27340))))

(assert (=> start!247938 e!1617234))

(assert (=> start!247938 e!1617232))

(assert (=> start!247938 tp_is_empty!13087))

(assert (=> start!247938 e!1617231))

(declare-fun b!2560846 () Bool)

(declare-fun tp!815619 () Bool)

(declare-fun tp!815620 () Bool)

(assert (=> b!2560846 (= e!1617232 (and tp!815619 tp!815620))))

(declare-fun b!2560847 () Bool)

(declare-fun e!1617233 () Bool)

(assert (=> b!2560847 (= e!1617233 (validRegex!3242 (regTwo!15744 r!27340)))))

(declare-fun lt!904709 () Regex!7616)

(declare-datatypes ((List!29681 0))(
  ( (Nil!29581) (Cons!29581 (h!35001 C!15390) (t!211380 List!29681)) )
))
(declare-fun tl!4068 () List!29681)

(declare-fun matchR!3561 (Regex!7616 List!29681) Bool)

(declare-fun derivative!311 (Regex!7616 List!29681) Regex!7616)

(assert (=> b!2560847 (= (matchR!3561 lt!904709 tl!4068) (matchR!3561 (derivative!311 lt!904709 tl!4068) Nil!29581))))

(declare-datatypes ((Unit!43417 0))(
  ( (Unit!43418) )
))
(declare-fun lt!904714 () Unit!43417)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!207 (Regex!7616 List!29681) Unit!43417)

(assert (=> b!2560847 (= lt!904714 (lemmaMatchRIsSameAsWholeDerivativeAndNil!207 lt!904709 tl!4068))))

(declare-fun b!2560848 () Bool)

(declare-fun res!1078143 () Bool)

(assert (=> b!2560848 (=> (not res!1078143) (not e!1617234))))

(declare-fun c!14016 () C!15390)

(declare-fun derivativeStep!2185 (Regex!7616 C!15390) Regex!7616)

(assert (=> b!2560848 (= res!1078143 (nullable!2533 (derivative!311 (derivativeStep!2185 r!27340 c!14016) tl!4068)))))

(declare-fun b!2560849 () Bool)

(assert (=> b!2560849 (= e!1617234 (not e!1617233))))

(declare-fun res!1078141 () Bool)

(assert (=> b!2560849 (=> res!1078141 e!1617233)))

(declare-fun lt!904710 () Bool)

(assert (=> b!2560849 (= res!1078141 lt!904710)))

(declare-fun e!1617235 () Bool)

(assert (=> b!2560849 e!1617235))

(declare-fun res!1078142 () Bool)

(assert (=> b!2560849 (=> res!1078142 e!1617235)))

(assert (=> b!2560849 (= res!1078142 lt!904710)))

(declare-fun lt!904712 () Regex!7616)

(assert (=> b!2560849 (= lt!904710 (matchR!3561 lt!904712 tl!4068))))

(declare-fun lt!904711 () Unit!43417)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!211 (Regex!7616 Regex!7616 List!29681) Unit!43417)

(assert (=> b!2560849 (= lt!904711 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!211 lt!904712 lt!904709 tl!4068))))

(declare-fun lt!904713 () Regex!7616)

(assert (=> b!2560849 (= (matchR!3561 lt!904713 tl!4068) (matchR!3561 (derivative!311 lt!904713 tl!4068) Nil!29581))))

(declare-fun lt!904715 () Unit!43417)

(assert (=> b!2560849 (= lt!904715 (lemmaMatchRIsSameAsWholeDerivativeAndNil!207 lt!904713 tl!4068))))

(assert (=> b!2560849 (= lt!904713 (Union!7616 lt!904712 lt!904709))))

(assert (=> b!2560849 (= lt!904709 (derivativeStep!2185 (regTwo!15744 r!27340) c!14016))))

(assert (=> b!2560849 (= lt!904712 (Concat!12312 (derivativeStep!2185 (regOne!15744 r!27340) c!14016) (regTwo!15744 r!27340)))))

(declare-fun b!2560850 () Bool)

(declare-fun res!1078139 () Bool)

(assert (=> b!2560850 (=> (not res!1078139) (not e!1617234))))

(assert (=> b!2560850 (= res!1078139 (and (not (is-EmptyExpr!7616 r!27340)) (not (is-EmptyLang!7616 r!27340)) (not (is-ElementMatch!7616 r!27340)) (not (is-Union!7616 r!27340)) (not (is-Star!7616 r!27340))))))

(declare-fun b!2560851 () Bool)

(assert (=> b!2560851 (= e!1617235 (matchR!3561 lt!904709 tl!4068))))

(assert (= (and start!247938 res!1078144) b!2560848))

(assert (= (and b!2560848 res!1078143) b!2560850))

(assert (= (and b!2560850 res!1078139) b!2560841))

(assert (= (and b!2560841 res!1078140) b!2560849))

(assert (= (and b!2560849 (not res!1078142)) b!2560851))

(assert (= (and b!2560849 (not res!1078141)) b!2560847))

(assert (= (and start!247938 (is-ElementMatch!7616 r!27340)) b!2560842))

(assert (= (and start!247938 (is-Concat!12312 r!27340)) b!2560846))

(assert (= (and start!247938 (is-Star!7616 r!27340)) b!2560844))

(assert (= (and start!247938 (is-Union!7616 r!27340)) b!2560845))

(assert (= (and start!247938 (is-Cons!29581 tl!4068)) b!2560843))

(declare-fun m!2901045 () Bool)

(assert (=> b!2560848 m!2901045))

(assert (=> b!2560848 m!2901045))

(declare-fun m!2901047 () Bool)

(assert (=> b!2560848 m!2901047))

(assert (=> b!2560848 m!2901047))

(declare-fun m!2901049 () Bool)

(assert (=> b!2560848 m!2901049))

(declare-fun m!2901051 () Bool)

(assert (=> b!2560841 m!2901051))

(declare-fun m!2901053 () Bool)

(assert (=> b!2560847 m!2901053))

(declare-fun m!2901055 () Bool)

(assert (=> b!2560847 m!2901055))

(declare-fun m!2901057 () Bool)

(assert (=> b!2560847 m!2901057))

(declare-fun m!2901059 () Bool)

(assert (=> b!2560847 m!2901059))

(assert (=> b!2560847 m!2901059))

(declare-fun m!2901061 () Bool)

(assert (=> b!2560847 m!2901061))

(declare-fun m!2901063 () Bool)

(assert (=> b!2560849 m!2901063))

(declare-fun m!2901065 () Bool)

(assert (=> b!2560849 m!2901065))

(declare-fun m!2901067 () Bool)

(assert (=> b!2560849 m!2901067))

(declare-fun m!2901069 () Bool)

(assert (=> b!2560849 m!2901069))

(declare-fun m!2901071 () Bool)

(assert (=> b!2560849 m!2901071))

(declare-fun m!2901073 () Bool)

(assert (=> b!2560849 m!2901073))

(assert (=> b!2560849 m!2901067))

(declare-fun m!2901075 () Bool)

(assert (=> b!2560849 m!2901075))

(declare-fun m!2901077 () Bool)

(assert (=> b!2560849 m!2901077))

(assert (=> b!2560851 m!2901053))

(declare-fun m!2901079 () Bool)

(assert (=> start!247938 m!2901079))

(push 1)

(assert tp_is_empty!13087)

(assert (not b!2560851))

(assert (not b!2560848))

(assert (not b!2560843))

(assert (not start!247938))

(assert (not b!2560844))

(assert (not b!2560847))

(assert (not b!2560846))

(assert (not b!2560849))

(assert (not b!2560841))

(assert (not b!2560845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2560919 () Bool)

(declare-fun e!1617274 () Bool)

(declare-fun e!1617269 () Bool)

(assert (=> b!2560919 (= e!1617274 e!1617269)))

(declare-fun c!411391 () Bool)

(assert (=> b!2560919 (= c!411391 (is-EmptyLang!7616 lt!904709))))

(declare-fun b!2560920 () Bool)

(declare-fun e!1617273 () Bool)

(declare-fun head!5823 (List!29681) C!15390)

(assert (=> b!2560920 (= e!1617273 (not (= (head!5823 tl!4068) (c!411380 lt!904709))))))

(declare-fun b!2560921 () Bool)

(declare-fun lt!904742 () Bool)

(assert (=> b!2560921 (= e!1617269 (not lt!904742))))

(declare-fun b!2560922 () Bool)

(declare-fun e!1617270 () Bool)

(declare-fun e!1617272 () Bool)

(assert (=> b!2560922 (= e!1617270 e!1617272)))

(declare-fun res!1078180 () Bool)

(assert (=> b!2560922 (=> (not res!1078180) (not e!1617272))))

(assert (=> b!2560922 (= res!1078180 (not lt!904742))))

(declare-fun b!2560923 () Bool)

(assert (=> b!2560923 (= e!1617272 e!1617273)))

(declare-fun res!1078185 () Bool)

(assert (=> b!2560923 (=> res!1078185 e!1617273)))

(declare-fun call!164038 () Bool)

(assert (=> b!2560923 (= res!1078185 call!164038)))

(declare-fun b!2560924 () Bool)

(declare-fun res!1078183 () Bool)

(declare-fun e!1617268 () Bool)

(assert (=> b!2560924 (=> (not res!1078183) (not e!1617268))))

(assert (=> b!2560924 (= res!1078183 (not call!164038))))

(declare-fun b!2560925 () Bool)

(declare-fun e!1617271 () Bool)

(declare-fun tail!4098 (List!29681) List!29681)

(assert (=> b!2560925 (= e!1617271 (matchR!3561 (derivativeStep!2185 lt!904709 (head!5823 tl!4068)) (tail!4098 tl!4068)))))

(declare-fun d!725466 () Bool)

(assert (=> d!725466 e!1617274))

(declare-fun c!411392 () Bool)

(assert (=> d!725466 (= c!411392 (is-EmptyExpr!7616 lt!904709))))

(assert (=> d!725466 (= lt!904742 e!1617271)))

(declare-fun c!411393 () Bool)

(declare-fun isEmpty!17039 (List!29681) Bool)

(assert (=> d!725466 (= c!411393 (isEmpty!17039 tl!4068))))

(assert (=> d!725466 (validRegex!3242 lt!904709)))

(assert (=> d!725466 (= (matchR!3561 lt!904709 tl!4068) lt!904742)))

(declare-fun b!2560926 () Bool)

(assert (=> b!2560926 (= e!1617271 (nullable!2533 lt!904709))))

(declare-fun b!2560927 () Bool)

(declare-fun res!1078179 () Bool)

(assert (=> b!2560927 (=> res!1078179 e!1617270)))

(assert (=> b!2560927 (= res!1078179 (not (is-ElementMatch!7616 lt!904709)))))

(assert (=> b!2560927 (= e!1617269 e!1617270)))

(declare-fun b!2560928 () Bool)

(assert (=> b!2560928 (= e!1617268 (= (head!5823 tl!4068) (c!411380 lt!904709)))))

(declare-fun bm!164033 () Bool)

(assert (=> bm!164033 (= call!164038 (isEmpty!17039 tl!4068))))

(declare-fun b!2560929 () Bool)

(declare-fun res!1078184 () Bool)

(assert (=> b!2560929 (=> res!1078184 e!1617273)))

(assert (=> b!2560929 (= res!1078184 (not (isEmpty!17039 (tail!4098 tl!4068))))))

(declare-fun b!2560930 () Bool)

(declare-fun res!1078186 () Bool)

(assert (=> b!2560930 (=> (not res!1078186) (not e!1617268))))

(assert (=> b!2560930 (= res!1078186 (isEmpty!17039 (tail!4098 tl!4068)))))

(declare-fun b!2560931 () Bool)

(assert (=> b!2560931 (= e!1617274 (= lt!904742 call!164038))))

(declare-fun b!2560932 () Bool)

(declare-fun res!1078181 () Bool)

(assert (=> b!2560932 (=> res!1078181 e!1617270)))

(assert (=> b!2560932 (= res!1078181 e!1617268)))

(declare-fun res!1078182 () Bool)

(assert (=> b!2560932 (=> (not res!1078182) (not e!1617268))))

(assert (=> b!2560932 (= res!1078182 lt!904742)))

(assert (= (and d!725466 c!411393) b!2560926))

(assert (= (and d!725466 (not c!411393)) b!2560925))

(assert (= (and d!725466 c!411392) b!2560931))

(assert (= (and d!725466 (not c!411392)) b!2560919))

(assert (= (and b!2560919 c!411391) b!2560921))

(assert (= (and b!2560919 (not c!411391)) b!2560927))

(assert (= (and b!2560927 (not res!1078179)) b!2560932))

(assert (= (and b!2560932 res!1078182) b!2560924))

(assert (= (and b!2560924 res!1078183) b!2560930))

(assert (= (and b!2560930 res!1078186) b!2560928))

(assert (= (and b!2560932 (not res!1078181)) b!2560922))

(assert (= (and b!2560922 res!1078180) b!2560923))

(assert (= (and b!2560923 (not res!1078185)) b!2560929))

(assert (= (and b!2560929 (not res!1078184)) b!2560920))

(assert (= (or b!2560931 b!2560923 b!2560924) bm!164033))

(declare-fun m!2901127 () Bool)

(assert (=> b!2560920 m!2901127))

(declare-fun m!2901129 () Bool)

(assert (=> bm!164033 m!2901129))

(assert (=> b!2560928 m!2901127))

(declare-fun m!2901131 () Bool)

(assert (=> b!2560926 m!2901131))

(declare-fun m!2901133 () Bool)

(assert (=> b!2560930 m!2901133))

(assert (=> b!2560930 m!2901133))

(declare-fun m!2901135 () Bool)

(assert (=> b!2560930 m!2901135))

(assert (=> b!2560929 m!2901133))

(assert (=> b!2560929 m!2901133))

(assert (=> b!2560929 m!2901135))

(assert (=> d!725466 m!2901129))

(declare-fun m!2901137 () Bool)

(assert (=> d!725466 m!2901137))

(assert (=> b!2560925 m!2901127))

(assert (=> b!2560925 m!2901127))

(declare-fun m!2901139 () Bool)

(assert (=> b!2560925 m!2901139))

(assert (=> b!2560925 m!2901133))

(assert (=> b!2560925 m!2901139))

(assert (=> b!2560925 m!2901133))

(declare-fun m!2901141 () Bool)

(assert (=> b!2560925 m!2901141))

(assert (=> b!2560847 d!725466))

(declare-fun d!725474 () Bool)

(declare-fun lt!904747 () Regex!7616)

(assert (=> d!725474 (validRegex!3242 lt!904747)))

(declare-fun e!1617287 () Regex!7616)

(assert (=> d!725474 (= lt!904747 e!1617287)))

(declare-fun c!411406 () Bool)

(assert (=> d!725474 (= c!411406 (is-Cons!29581 tl!4068))))

(assert (=> d!725474 (validRegex!3242 lt!904709)))

(assert (=> d!725474 (= (derivative!311 lt!904709 tl!4068) lt!904747)))

(declare-fun b!2560957 () Bool)

(assert (=> b!2560957 (= e!1617287 (derivative!311 (derivativeStep!2185 lt!904709 (h!35001 tl!4068)) (t!211380 tl!4068)))))

(declare-fun b!2560958 () Bool)

(assert (=> b!2560958 (= e!1617287 lt!904709)))

(assert (= (and d!725474 c!411406) b!2560957))

(assert (= (and d!725474 (not c!411406)) b!2560958))

(declare-fun m!2901143 () Bool)

(assert (=> d!725474 m!2901143))

(assert (=> d!725474 m!2901137))

(declare-fun m!2901145 () Bool)

(assert (=> b!2560957 m!2901145))

(assert (=> b!2560957 m!2901145))

(declare-fun m!2901147 () Bool)

(assert (=> b!2560957 m!2901147))

(assert (=> b!2560847 d!725474))

(declare-fun d!725476 () Bool)

(declare-fun res!1078198 () Bool)

(declare-fun e!1617311 () Bool)

(assert (=> d!725476 (=> res!1078198 e!1617311)))

(assert (=> d!725476 (= res!1078198 (is-ElementMatch!7616 (regTwo!15744 r!27340)))))

(assert (=> d!725476 (= (validRegex!3242 (regTwo!15744 r!27340)) e!1617311)))

(declare-fun b!2560987 () Bool)

(declare-fun e!1617310 () Bool)

(declare-fun e!1617307 () Bool)

(assert (=> b!2560987 (= e!1617310 e!1617307)))

(declare-fun res!1078199 () Bool)

(assert (=> b!2560987 (= res!1078199 (not (nullable!2533 (reg!7945 (regTwo!15744 r!27340)))))))

(assert (=> b!2560987 (=> (not res!1078199) (not e!1617307))))

(declare-fun b!2560988 () Bool)

(declare-fun e!1617309 () Bool)

(assert (=> b!2560988 (= e!1617310 e!1617309)))

(declare-fun c!411417 () Bool)

(assert (=> b!2560988 (= c!411417 (is-Union!7616 (regTwo!15744 r!27340)))))

(declare-fun b!2560989 () Bool)

(declare-fun res!1078197 () Bool)

(declare-fun e!1617313 () Bool)

(assert (=> b!2560989 (=> res!1078197 e!1617313)))

(assert (=> b!2560989 (= res!1078197 (not (is-Concat!12312 (regTwo!15744 r!27340))))))

(assert (=> b!2560989 (= e!1617309 e!1617313)))

(declare-fun b!2560990 () Bool)

(declare-fun e!1617312 () Bool)

(declare-fun call!164059 () Bool)

(assert (=> b!2560990 (= e!1617312 call!164059)))

(declare-fun bm!164052 () Bool)

(declare-fun call!164057 () Bool)

(declare-fun c!411416 () Bool)

(assert (=> bm!164052 (= call!164057 (validRegex!3242 (ite c!411416 (reg!7945 (regTwo!15744 r!27340)) (ite c!411417 (regOne!15745 (regTwo!15744 r!27340)) (regTwo!15744 (regTwo!15744 r!27340))))))))

(declare-fun b!2560991 () Bool)

(assert (=> b!2560991 (= e!1617313 e!1617312)))

(declare-fun res!1078200 () Bool)

(assert (=> b!2560991 (=> (not res!1078200) (not e!1617312))))

(declare-fun call!164058 () Bool)

(assert (=> b!2560991 (= res!1078200 call!164058)))

(declare-fun b!2560992 () Bool)

(declare-fun e!1617308 () Bool)

(assert (=> b!2560992 (= e!1617308 call!164058)))

(declare-fun b!2560993 () Bool)

(assert (=> b!2560993 (= e!1617311 e!1617310)))

(assert (=> b!2560993 (= c!411416 (is-Star!7616 (regTwo!15744 r!27340)))))

(declare-fun bm!164053 () Bool)

(assert (=> bm!164053 (= call!164059 call!164057)))

(declare-fun b!2560994 () Bool)

(declare-fun res!1078201 () Bool)

(assert (=> b!2560994 (=> (not res!1078201) (not e!1617308))))

(assert (=> b!2560994 (= res!1078201 call!164059)))

(assert (=> b!2560994 (= e!1617309 e!1617308)))

(declare-fun bm!164054 () Bool)

(assert (=> bm!164054 (= call!164058 (validRegex!3242 (ite c!411417 (regTwo!15745 (regTwo!15744 r!27340)) (regOne!15744 (regTwo!15744 r!27340)))))))

(declare-fun b!2560995 () Bool)

(assert (=> b!2560995 (= e!1617307 call!164057)))

(assert (= (and d!725476 (not res!1078198)) b!2560993))

(assert (= (and b!2560993 c!411416) b!2560987))

(assert (= (and b!2560993 (not c!411416)) b!2560988))

(assert (= (and b!2560987 res!1078199) b!2560995))

(assert (= (and b!2560988 c!411417) b!2560994))

(assert (= (and b!2560988 (not c!411417)) b!2560989))

(assert (= (and b!2560994 res!1078201) b!2560992))

(assert (= (and b!2560989 (not res!1078197)) b!2560991))

(assert (= (and b!2560991 res!1078200) b!2560990))

(assert (= (or b!2560994 b!2560990) bm!164053))

(assert (= (or b!2560992 b!2560991) bm!164054))

(assert (= (or b!2560995 bm!164053) bm!164052))

(declare-fun m!2901157 () Bool)

(assert (=> b!2560987 m!2901157))

(declare-fun m!2901159 () Bool)

(assert (=> bm!164052 m!2901159))

(declare-fun m!2901161 () Bool)

(assert (=> bm!164054 m!2901161))

(assert (=> b!2560847 d!725476))

(declare-fun b!2560996 () Bool)

(declare-fun e!1617320 () Bool)

(declare-fun e!1617315 () Bool)

(assert (=> b!2560996 (= e!1617320 e!1617315)))

(declare-fun c!411418 () Bool)

(assert (=> b!2560996 (= c!411418 (is-EmptyLang!7616 (derivative!311 lt!904709 tl!4068)))))

(declare-fun b!2560997 () Bool)

(declare-fun e!1617319 () Bool)

(assert (=> b!2560997 (= e!1617319 (not (= (head!5823 Nil!29581) (c!411380 (derivative!311 lt!904709 tl!4068)))))))

(declare-fun b!2560998 () Bool)

(declare-fun lt!904749 () Bool)

(assert (=> b!2560998 (= e!1617315 (not lt!904749))))

(declare-fun b!2560999 () Bool)

(declare-fun e!1617316 () Bool)

(declare-fun e!1617318 () Bool)

(assert (=> b!2560999 (= e!1617316 e!1617318)))

(declare-fun res!1078203 () Bool)

(assert (=> b!2560999 (=> (not res!1078203) (not e!1617318))))

(assert (=> b!2560999 (= res!1078203 (not lt!904749))))

(declare-fun b!2561000 () Bool)

(assert (=> b!2561000 (= e!1617318 e!1617319)))

(declare-fun res!1078208 () Bool)

(assert (=> b!2561000 (=> res!1078208 e!1617319)))

(declare-fun call!164060 () Bool)

(assert (=> b!2561000 (= res!1078208 call!164060)))

(declare-fun b!2561001 () Bool)

(declare-fun res!1078206 () Bool)

(declare-fun e!1617314 () Bool)

(assert (=> b!2561001 (=> (not res!1078206) (not e!1617314))))

(assert (=> b!2561001 (= res!1078206 (not call!164060))))

(declare-fun b!2561002 () Bool)

(declare-fun e!1617317 () Bool)

(assert (=> b!2561002 (= e!1617317 (matchR!3561 (derivativeStep!2185 (derivative!311 lt!904709 tl!4068) (head!5823 Nil!29581)) (tail!4098 Nil!29581)))))

(declare-fun d!725482 () Bool)

(assert (=> d!725482 e!1617320))

(declare-fun c!411419 () Bool)

(assert (=> d!725482 (= c!411419 (is-EmptyExpr!7616 (derivative!311 lt!904709 tl!4068)))))

(assert (=> d!725482 (= lt!904749 e!1617317)))

(declare-fun c!411420 () Bool)

(assert (=> d!725482 (= c!411420 (isEmpty!17039 Nil!29581))))

(assert (=> d!725482 (validRegex!3242 (derivative!311 lt!904709 tl!4068))))

(assert (=> d!725482 (= (matchR!3561 (derivative!311 lt!904709 tl!4068) Nil!29581) lt!904749)))

(declare-fun b!2561003 () Bool)

(assert (=> b!2561003 (= e!1617317 (nullable!2533 (derivative!311 lt!904709 tl!4068)))))

(declare-fun b!2561004 () Bool)

(declare-fun res!1078202 () Bool)

(assert (=> b!2561004 (=> res!1078202 e!1617316)))

(assert (=> b!2561004 (= res!1078202 (not (is-ElementMatch!7616 (derivative!311 lt!904709 tl!4068))))))

(assert (=> b!2561004 (= e!1617315 e!1617316)))

(declare-fun b!2561005 () Bool)

(assert (=> b!2561005 (= e!1617314 (= (head!5823 Nil!29581) (c!411380 (derivative!311 lt!904709 tl!4068))))))

(declare-fun bm!164055 () Bool)

(assert (=> bm!164055 (= call!164060 (isEmpty!17039 Nil!29581))))

(declare-fun b!2561006 () Bool)

(declare-fun res!1078207 () Bool)

(assert (=> b!2561006 (=> res!1078207 e!1617319)))

(assert (=> b!2561006 (= res!1078207 (not (isEmpty!17039 (tail!4098 Nil!29581))))))

(declare-fun b!2561007 () Bool)

(declare-fun res!1078209 () Bool)

(assert (=> b!2561007 (=> (not res!1078209) (not e!1617314))))

(assert (=> b!2561007 (= res!1078209 (isEmpty!17039 (tail!4098 Nil!29581)))))

(declare-fun b!2561008 () Bool)

(assert (=> b!2561008 (= e!1617320 (= lt!904749 call!164060))))

(declare-fun b!2561009 () Bool)

(declare-fun res!1078204 () Bool)

(assert (=> b!2561009 (=> res!1078204 e!1617316)))

(assert (=> b!2561009 (= res!1078204 e!1617314)))

(declare-fun res!1078205 () Bool)

(assert (=> b!2561009 (=> (not res!1078205) (not e!1617314))))

(assert (=> b!2561009 (= res!1078205 lt!904749)))

(assert (= (and d!725482 c!411420) b!2561003))

(assert (= (and d!725482 (not c!411420)) b!2561002))

(assert (= (and d!725482 c!411419) b!2561008))

(assert (= (and d!725482 (not c!411419)) b!2560996))

(assert (= (and b!2560996 c!411418) b!2560998))

(assert (= (and b!2560996 (not c!411418)) b!2561004))

(assert (= (and b!2561004 (not res!1078202)) b!2561009))

(assert (= (and b!2561009 res!1078205) b!2561001))

(assert (= (and b!2561001 res!1078206) b!2561007))

(assert (= (and b!2561007 res!1078209) b!2561005))

(assert (= (and b!2561009 (not res!1078204)) b!2560999))

(assert (= (and b!2560999 res!1078203) b!2561000))

(assert (= (and b!2561000 (not res!1078208)) b!2561006))

(assert (= (and b!2561006 (not res!1078207)) b!2560997))

(assert (= (or b!2561008 b!2561000 b!2561001) bm!164055))

(declare-fun m!2901163 () Bool)

(assert (=> b!2560997 m!2901163))

(declare-fun m!2901165 () Bool)

(assert (=> bm!164055 m!2901165))

(assert (=> b!2561005 m!2901163))

(assert (=> b!2561003 m!2901059))

(declare-fun m!2901167 () Bool)

(assert (=> b!2561003 m!2901167))

(declare-fun m!2901169 () Bool)

(assert (=> b!2561007 m!2901169))

(assert (=> b!2561007 m!2901169))

(declare-fun m!2901171 () Bool)

(assert (=> b!2561007 m!2901171))

(assert (=> b!2561006 m!2901169))

(assert (=> b!2561006 m!2901169))

(assert (=> b!2561006 m!2901171))

(assert (=> d!725482 m!2901165))

(assert (=> d!725482 m!2901059))

(declare-fun m!2901173 () Bool)

(assert (=> d!725482 m!2901173))

(assert (=> b!2561002 m!2901163))

(assert (=> b!2561002 m!2901059))

(assert (=> b!2561002 m!2901163))

(declare-fun m!2901175 () Bool)

(assert (=> b!2561002 m!2901175))

(assert (=> b!2561002 m!2901169))

(assert (=> b!2561002 m!2901175))

(assert (=> b!2561002 m!2901169))

(declare-fun m!2901177 () Bool)

(assert (=> b!2561002 m!2901177))

(assert (=> b!2560847 d!725482))

(declare-fun d!725484 () Bool)

(assert (=> d!725484 (= (matchR!3561 lt!904709 tl!4068) (matchR!3561 (derivative!311 lt!904709 tl!4068) Nil!29581))))

(declare-fun lt!904752 () Unit!43417)

(declare-fun choose!15110 (Regex!7616 List!29681) Unit!43417)

(assert (=> d!725484 (= lt!904752 (choose!15110 lt!904709 tl!4068))))

(assert (=> d!725484 (validRegex!3242 lt!904709)))

(assert (=> d!725484 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!207 lt!904709 tl!4068) lt!904752)))

(declare-fun bs!469826 () Bool)

(assert (= bs!469826 d!725484))

(assert (=> bs!469826 m!2901059))

(assert (=> bs!469826 m!2901061))

(declare-fun m!2901179 () Bool)

(assert (=> bs!469826 m!2901179))

(assert (=> bs!469826 m!2901137))

(assert (=> bs!469826 m!2901053))

(assert (=> bs!469826 m!2901059))

(assert (=> b!2560847 d!725484))

(declare-fun d!725486 () Bool)

(declare-fun e!1617339 () Bool)

(assert (=> d!725486 e!1617339))

(declare-fun res!1078230 () Bool)

(assert (=> d!725486 (=> res!1078230 e!1617339)))

(assert (=> d!725486 (= res!1078230 (matchR!3561 lt!904712 tl!4068))))

(declare-fun lt!904757 () Unit!43417)

(declare-fun choose!15111 (Regex!7616 Regex!7616 List!29681) Unit!43417)

(assert (=> d!725486 (= lt!904757 (choose!15111 lt!904712 lt!904709 tl!4068))))

(declare-fun e!1617340 () Bool)

(assert (=> d!725486 e!1617340))

(declare-fun res!1078231 () Bool)

(assert (=> d!725486 (=> (not res!1078231) (not e!1617340))))

(assert (=> d!725486 (= res!1078231 (validRegex!3242 lt!904712))))

(assert (=> d!725486 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!211 lt!904712 lt!904709 tl!4068) lt!904757)))

(declare-fun b!2561042 () Bool)

(assert (=> b!2561042 (= e!1617340 (validRegex!3242 lt!904709))))

(declare-fun b!2561043 () Bool)

(assert (=> b!2561043 (= e!1617339 (matchR!3561 lt!904709 tl!4068))))

(assert (= (and d!725486 res!1078231) b!2561042))

(assert (= (and d!725486 (not res!1078230)) b!2561043))

(assert (=> d!725486 m!2901073))

(declare-fun m!2901181 () Bool)

(assert (=> d!725486 m!2901181))

(declare-fun m!2901183 () Bool)

(assert (=> d!725486 m!2901183))

(assert (=> b!2561042 m!2901137))

(assert (=> b!2561043 m!2901053))

(assert (=> b!2560849 d!725486))

(declare-fun d!725488 () Bool)

(declare-fun lt!904758 () Regex!7616)

(assert (=> d!725488 (validRegex!3242 lt!904758)))

(declare-fun e!1617341 () Regex!7616)

(assert (=> d!725488 (= lt!904758 e!1617341)))

(declare-fun c!411427 () Bool)

(assert (=> d!725488 (= c!411427 (is-Cons!29581 tl!4068))))

(assert (=> d!725488 (validRegex!3242 lt!904713)))

(assert (=> d!725488 (= (derivative!311 lt!904713 tl!4068) lt!904758)))

(declare-fun b!2561044 () Bool)

(assert (=> b!2561044 (= e!1617341 (derivative!311 (derivativeStep!2185 lt!904713 (h!35001 tl!4068)) (t!211380 tl!4068)))))

(declare-fun b!2561045 () Bool)

(assert (=> b!2561045 (= e!1617341 lt!904713)))

(assert (= (and d!725488 c!411427) b!2561044))

(assert (= (and d!725488 (not c!411427)) b!2561045))

(declare-fun m!2901185 () Bool)

(assert (=> d!725488 m!2901185))

(declare-fun m!2901187 () Bool)

(assert (=> d!725488 m!2901187))

(declare-fun m!2901189 () Bool)

(assert (=> b!2561044 m!2901189))

(assert (=> b!2561044 m!2901189))

(declare-fun m!2901191 () Bool)

(assert (=> b!2561044 m!2901191))

(assert (=> b!2560849 d!725488))

(declare-fun b!2561046 () Bool)

(declare-fun e!1617348 () Bool)

(declare-fun e!1617343 () Bool)

(assert (=> b!2561046 (= e!1617348 e!1617343)))

(declare-fun c!411428 () Bool)

(assert (=> b!2561046 (= c!411428 (is-EmptyLang!7616 (derivative!311 lt!904713 tl!4068)))))

(declare-fun b!2561047 () Bool)

(declare-fun e!1617347 () Bool)

(assert (=> b!2561047 (= e!1617347 (not (= (head!5823 Nil!29581) (c!411380 (derivative!311 lt!904713 tl!4068)))))))

(declare-fun b!2561048 () Bool)

(declare-fun lt!904759 () Bool)

(assert (=> b!2561048 (= e!1617343 (not lt!904759))))

(declare-fun b!2561049 () Bool)

(declare-fun e!1617344 () Bool)

(declare-fun e!1617346 () Bool)

(assert (=> b!2561049 (= e!1617344 e!1617346)))

(declare-fun res!1078233 () Bool)

(assert (=> b!2561049 (=> (not res!1078233) (not e!1617346))))

(assert (=> b!2561049 (= res!1078233 (not lt!904759))))

(declare-fun b!2561050 () Bool)

(assert (=> b!2561050 (= e!1617346 e!1617347)))

(declare-fun res!1078238 () Bool)

(assert (=> b!2561050 (=> res!1078238 e!1617347)))

(declare-fun call!164063 () Bool)

(assert (=> b!2561050 (= res!1078238 call!164063)))

(declare-fun b!2561051 () Bool)

(declare-fun res!1078236 () Bool)

(declare-fun e!1617342 () Bool)

(assert (=> b!2561051 (=> (not res!1078236) (not e!1617342))))

(assert (=> b!2561051 (= res!1078236 (not call!164063))))

(declare-fun b!2561052 () Bool)

(declare-fun e!1617345 () Bool)

(assert (=> b!2561052 (= e!1617345 (matchR!3561 (derivativeStep!2185 (derivative!311 lt!904713 tl!4068) (head!5823 Nil!29581)) (tail!4098 Nil!29581)))))

(declare-fun d!725490 () Bool)

(assert (=> d!725490 e!1617348))

(declare-fun c!411429 () Bool)

(assert (=> d!725490 (= c!411429 (is-EmptyExpr!7616 (derivative!311 lt!904713 tl!4068)))))

(assert (=> d!725490 (= lt!904759 e!1617345)))

(declare-fun c!411430 () Bool)

(assert (=> d!725490 (= c!411430 (isEmpty!17039 Nil!29581))))

(assert (=> d!725490 (validRegex!3242 (derivative!311 lt!904713 tl!4068))))

(assert (=> d!725490 (= (matchR!3561 (derivative!311 lt!904713 tl!4068) Nil!29581) lt!904759)))

(declare-fun b!2561053 () Bool)

(assert (=> b!2561053 (= e!1617345 (nullable!2533 (derivative!311 lt!904713 tl!4068)))))

(declare-fun b!2561054 () Bool)

(declare-fun res!1078232 () Bool)

(assert (=> b!2561054 (=> res!1078232 e!1617344)))

(assert (=> b!2561054 (= res!1078232 (not (is-ElementMatch!7616 (derivative!311 lt!904713 tl!4068))))))

(assert (=> b!2561054 (= e!1617343 e!1617344)))

(declare-fun b!2561055 () Bool)

(assert (=> b!2561055 (= e!1617342 (= (head!5823 Nil!29581) (c!411380 (derivative!311 lt!904713 tl!4068))))))

(declare-fun bm!164058 () Bool)

(assert (=> bm!164058 (= call!164063 (isEmpty!17039 Nil!29581))))

(declare-fun b!2561056 () Bool)

(declare-fun res!1078237 () Bool)

(assert (=> b!2561056 (=> res!1078237 e!1617347)))

(assert (=> b!2561056 (= res!1078237 (not (isEmpty!17039 (tail!4098 Nil!29581))))))

(declare-fun b!2561057 () Bool)

(declare-fun res!1078239 () Bool)

(assert (=> b!2561057 (=> (not res!1078239) (not e!1617342))))

(assert (=> b!2561057 (= res!1078239 (isEmpty!17039 (tail!4098 Nil!29581)))))

(declare-fun b!2561058 () Bool)

(assert (=> b!2561058 (= e!1617348 (= lt!904759 call!164063))))

(declare-fun b!2561059 () Bool)

(declare-fun res!1078234 () Bool)

(assert (=> b!2561059 (=> res!1078234 e!1617344)))

(assert (=> b!2561059 (= res!1078234 e!1617342)))

(declare-fun res!1078235 () Bool)

(assert (=> b!2561059 (=> (not res!1078235) (not e!1617342))))

(assert (=> b!2561059 (= res!1078235 lt!904759)))

(assert (= (and d!725490 c!411430) b!2561053))

(assert (= (and d!725490 (not c!411430)) b!2561052))

(assert (= (and d!725490 c!411429) b!2561058))

(assert (= (and d!725490 (not c!411429)) b!2561046))

(assert (= (and b!2561046 c!411428) b!2561048))

(assert (= (and b!2561046 (not c!411428)) b!2561054))

(assert (= (and b!2561054 (not res!1078232)) b!2561059))

(assert (= (and b!2561059 res!1078235) b!2561051))

(assert (= (and b!2561051 res!1078236) b!2561057))

(assert (= (and b!2561057 res!1078239) b!2561055))

(assert (= (and b!2561059 (not res!1078234)) b!2561049))

(assert (= (and b!2561049 res!1078233) b!2561050))

(assert (= (and b!2561050 (not res!1078238)) b!2561056))

(assert (= (and b!2561056 (not res!1078237)) b!2561047))

(assert (= (or b!2561058 b!2561050 b!2561051) bm!164058))

(assert (=> b!2561047 m!2901163))

(assert (=> bm!164058 m!2901165))

(assert (=> b!2561055 m!2901163))

(assert (=> b!2561053 m!2901067))

(declare-fun m!2901193 () Bool)

(assert (=> b!2561053 m!2901193))

(assert (=> b!2561057 m!2901169))

(assert (=> b!2561057 m!2901169))

(assert (=> b!2561057 m!2901171))

(assert (=> b!2561056 m!2901169))

(assert (=> b!2561056 m!2901169))

(assert (=> b!2561056 m!2901171))

(assert (=> d!725490 m!2901165))

(assert (=> d!725490 m!2901067))

(declare-fun m!2901195 () Bool)

(assert (=> d!725490 m!2901195))

(assert (=> b!2561052 m!2901163))

(assert (=> b!2561052 m!2901067))

(assert (=> b!2561052 m!2901163))

(declare-fun m!2901197 () Bool)

(assert (=> b!2561052 m!2901197))

(assert (=> b!2561052 m!2901169))

(assert (=> b!2561052 m!2901197))

(assert (=> b!2561052 m!2901169))

(declare-fun m!2901199 () Bool)

(assert (=> b!2561052 m!2901199))

(assert (=> b!2560849 d!725490))

(declare-fun b!2561060 () Bool)

(declare-fun e!1617355 () Bool)

(declare-fun e!1617350 () Bool)

(assert (=> b!2561060 (= e!1617355 e!1617350)))

(declare-fun c!411431 () Bool)

(assert (=> b!2561060 (= c!411431 (is-EmptyLang!7616 lt!904712))))

(declare-fun b!2561061 () Bool)

(declare-fun e!1617354 () Bool)

(assert (=> b!2561061 (= e!1617354 (not (= (head!5823 tl!4068) (c!411380 lt!904712))))))

(declare-fun b!2561062 () Bool)

(declare-fun lt!904760 () Bool)

(assert (=> b!2561062 (= e!1617350 (not lt!904760))))

(declare-fun b!2561063 () Bool)

(declare-fun e!1617351 () Bool)

(declare-fun e!1617353 () Bool)

(assert (=> b!2561063 (= e!1617351 e!1617353)))

(declare-fun res!1078241 () Bool)

(assert (=> b!2561063 (=> (not res!1078241) (not e!1617353))))

(assert (=> b!2561063 (= res!1078241 (not lt!904760))))

(declare-fun b!2561064 () Bool)

(assert (=> b!2561064 (= e!1617353 e!1617354)))

(declare-fun res!1078246 () Bool)

(assert (=> b!2561064 (=> res!1078246 e!1617354)))

(declare-fun call!164064 () Bool)

(assert (=> b!2561064 (= res!1078246 call!164064)))

(declare-fun b!2561065 () Bool)

(declare-fun res!1078244 () Bool)

(declare-fun e!1617349 () Bool)

(assert (=> b!2561065 (=> (not res!1078244) (not e!1617349))))

(assert (=> b!2561065 (= res!1078244 (not call!164064))))

(declare-fun b!2561066 () Bool)

(declare-fun e!1617352 () Bool)

(assert (=> b!2561066 (= e!1617352 (matchR!3561 (derivativeStep!2185 lt!904712 (head!5823 tl!4068)) (tail!4098 tl!4068)))))

(declare-fun d!725492 () Bool)

(assert (=> d!725492 e!1617355))

(declare-fun c!411432 () Bool)

(assert (=> d!725492 (= c!411432 (is-EmptyExpr!7616 lt!904712))))

(assert (=> d!725492 (= lt!904760 e!1617352)))

(declare-fun c!411433 () Bool)

(assert (=> d!725492 (= c!411433 (isEmpty!17039 tl!4068))))

(assert (=> d!725492 (validRegex!3242 lt!904712)))

(assert (=> d!725492 (= (matchR!3561 lt!904712 tl!4068) lt!904760)))

(declare-fun b!2561067 () Bool)

(assert (=> b!2561067 (= e!1617352 (nullable!2533 lt!904712))))

(declare-fun b!2561068 () Bool)

(declare-fun res!1078240 () Bool)

(assert (=> b!2561068 (=> res!1078240 e!1617351)))

(assert (=> b!2561068 (= res!1078240 (not (is-ElementMatch!7616 lt!904712)))))

(assert (=> b!2561068 (= e!1617350 e!1617351)))

(declare-fun b!2561069 () Bool)

(assert (=> b!2561069 (= e!1617349 (= (head!5823 tl!4068) (c!411380 lt!904712)))))

(declare-fun bm!164059 () Bool)

(assert (=> bm!164059 (= call!164064 (isEmpty!17039 tl!4068))))

(declare-fun b!2561070 () Bool)

(declare-fun res!1078245 () Bool)

(assert (=> b!2561070 (=> res!1078245 e!1617354)))

(assert (=> b!2561070 (= res!1078245 (not (isEmpty!17039 (tail!4098 tl!4068))))))

(declare-fun b!2561071 () Bool)

(declare-fun res!1078247 () Bool)

(assert (=> b!2561071 (=> (not res!1078247) (not e!1617349))))

(assert (=> b!2561071 (= res!1078247 (isEmpty!17039 (tail!4098 tl!4068)))))

(declare-fun b!2561072 () Bool)

(assert (=> b!2561072 (= e!1617355 (= lt!904760 call!164064))))

(declare-fun b!2561073 () Bool)

(declare-fun res!1078242 () Bool)

(assert (=> b!2561073 (=> res!1078242 e!1617351)))

(assert (=> b!2561073 (= res!1078242 e!1617349)))

(declare-fun res!1078243 () Bool)

(assert (=> b!2561073 (=> (not res!1078243) (not e!1617349))))

(assert (=> b!2561073 (= res!1078243 lt!904760)))

(assert (= (and d!725492 c!411433) b!2561067))

(assert (= (and d!725492 (not c!411433)) b!2561066))

(assert (= (and d!725492 c!411432) b!2561072))

(assert (= (and d!725492 (not c!411432)) b!2561060))

(assert (= (and b!2561060 c!411431) b!2561062))

(assert (= (and b!2561060 (not c!411431)) b!2561068))

(assert (= (and b!2561068 (not res!1078240)) b!2561073))

(assert (= (and b!2561073 res!1078243) b!2561065))

(assert (= (and b!2561065 res!1078244) b!2561071))

(assert (= (and b!2561071 res!1078247) b!2561069))

(assert (= (and b!2561073 (not res!1078242)) b!2561063))

(assert (= (and b!2561063 res!1078241) b!2561064))

(assert (= (and b!2561064 (not res!1078246)) b!2561070))

(assert (= (and b!2561070 (not res!1078245)) b!2561061))

(assert (= (or b!2561072 b!2561064 b!2561065) bm!164059))

(assert (=> b!2561061 m!2901127))

(assert (=> bm!164059 m!2901129))

(assert (=> b!2561069 m!2901127))

(declare-fun m!2901201 () Bool)

(assert (=> b!2561067 m!2901201))

(assert (=> b!2561071 m!2901133))

(assert (=> b!2561071 m!2901133))

(assert (=> b!2561071 m!2901135))

(assert (=> b!2561070 m!2901133))

(assert (=> b!2561070 m!2901133))

(assert (=> b!2561070 m!2901135))

(assert (=> d!725492 m!2901129))

(assert (=> d!725492 m!2901183))

(assert (=> b!2561066 m!2901127))

(assert (=> b!2561066 m!2901127))

(declare-fun m!2901203 () Bool)

(assert (=> b!2561066 m!2901203))

(assert (=> b!2561066 m!2901133))

(assert (=> b!2561066 m!2901203))

(assert (=> b!2561066 m!2901133))

(declare-fun m!2901205 () Bool)

(assert (=> b!2561066 m!2901205))

(assert (=> b!2560849 d!725492))

(declare-fun b!2561148 () Bool)

(declare-fun e!1617397 () Regex!7616)

(declare-fun call!164080 () Regex!7616)

(declare-fun call!164082 () Regex!7616)

(assert (=> b!2561148 (= e!1617397 (Union!7616 call!164080 call!164082))))

(declare-fun b!2561149 () Bool)

(declare-fun c!411461 () Bool)

(assert (=> b!2561149 (= c!411461 (is-Union!7616 (regTwo!15744 r!27340)))))

(declare-fun e!1617396 () Regex!7616)

(assert (=> b!2561149 (= e!1617396 e!1617397)))

(declare-fun b!2561150 () Bool)

(declare-fun e!1617395 () Regex!7616)

(declare-fun call!164083 () Regex!7616)

(assert (=> b!2561150 (= e!1617395 (Union!7616 (Concat!12312 call!164083 (regTwo!15744 (regTwo!15744 r!27340))) EmptyLang!7616))))

(declare-fun b!2561151 () Bool)

(declare-fun e!1617393 () Regex!7616)

(declare-fun call!164081 () Regex!7616)

(assert (=> b!2561151 (= e!1617393 (Concat!12312 call!164081 (regTwo!15744 r!27340)))))

(declare-fun b!2561152 () Bool)

(assert (=> b!2561152 (= e!1617395 (Union!7616 (Concat!12312 call!164083 (regTwo!15744 (regTwo!15744 r!27340))) call!164082))))

(declare-fun b!2561153 () Bool)

(declare-fun c!411459 () Bool)

(assert (=> b!2561153 (= c!411459 (nullable!2533 (regOne!15744 (regTwo!15744 r!27340))))))

(assert (=> b!2561153 (= e!1617393 e!1617395)))

(declare-fun d!725494 () Bool)

(declare-fun lt!904771 () Regex!7616)

(assert (=> d!725494 (validRegex!3242 lt!904771)))

(declare-fun e!1617394 () Regex!7616)

(assert (=> d!725494 (= lt!904771 e!1617394)))

(declare-fun c!411460 () Bool)

(assert (=> d!725494 (= c!411460 (or (is-EmptyExpr!7616 (regTwo!15744 r!27340)) (is-EmptyLang!7616 (regTwo!15744 r!27340))))))

(assert (=> d!725494 (validRegex!3242 (regTwo!15744 r!27340))))

(assert (=> d!725494 (= (derivativeStep!2185 (regTwo!15744 r!27340) c!14016) lt!904771)))

(declare-fun b!2561154 () Bool)

(assert (=> b!2561154 (= e!1617394 EmptyLang!7616)))

(declare-fun bm!164075 () Bool)

(assert (=> bm!164075 (= call!164083 call!164081)))

(declare-fun b!2561155 () Bool)

(assert (=> b!2561155 (= e!1617394 e!1617396)))

(declare-fun c!411462 () Bool)

(assert (=> b!2561155 (= c!411462 (is-ElementMatch!7616 (regTwo!15744 r!27340)))))

(declare-fun c!411463 () Bool)

(declare-fun bm!164076 () Bool)

(assert (=> bm!164076 (= call!164080 (derivativeStep!2185 (ite c!411461 (regOne!15745 (regTwo!15744 r!27340)) (ite c!411463 (reg!7945 (regTwo!15744 r!27340)) (regOne!15744 (regTwo!15744 r!27340)))) c!14016))))

(declare-fun b!2561156 () Bool)

(assert (=> b!2561156 (= e!1617397 e!1617393)))

(assert (=> b!2561156 (= c!411463 (is-Star!7616 (regTwo!15744 r!27340)))))

(declare-fun bm!164077 () Bool)

(assert (=> bm!164077 (= call!164081 call!164080)))

(declare-fun b!2561157 () Bool)

(assert (=> b!2561157 (= e!1617396 (ite (= c!14016 (c!411380 (regTwo!15744 r!27340))) EmptyExpr!7616 EmptyLang!7616))))

(declare-fun bm!164078 () Bool)

(assert (=> bm!164078 (= call!164082 (derivativeStep!2185 (ite c!411461 (regTwo!15745 (regTwo!15744 r!27340)) (regTwo!15744 (regTwo!15744 r!27340))) c!14016))))

(assert (= (and d!725494 c!411460) b!2561154))

(assert (= (and d!725494 (not c!411460)) b!2561155))

(assert (= (and b!2561155 c!411462) b!2561157))

(assert (= (and b!2561155 (not c!411462)) b!2561149))

(assert (= (and b!2561149 c!411461) b!2561148))

(assert (= (and b!2561149 (not c!411461)) b!2561156))

(assert (= (and b!2561156 c!411463) b!2561151))

(assert (= (and b!2561156 (not c!411463)) b!2561153))

(assert (= (and b!2561153 c!411459) b!2561152))

(assert (= (and b!2561153 (not c!411459)) b!2561150))

(assert (= (or b!2561152 b!2561150) bm!164075))

(assert (= (or b!2561151 bm!164075) bm!164077))

(assert (= (or b!2561148 b!2561152) bm!164078))

(assert (= (or b!2561148 bm!164077) bm!164076))

(declare-fun m!2901259 () Bool)

(assert (=> b!2561153 m!2901259))

(declare-fun m!2901262 () Bool)

(assert (=> d!725494 m!2901262))

(assert (=> d!725494 m!2901055))

(declare-fun m!2901265 () Bool)

(assert (=> bm!164076 m!2901265))

(declare-fun m!2901267 () Bool)

(assert (=> bm!164078 m!2901267))

(assert (=> b!2560849 d!725494))

(declare-fun b!2561158 () Bool)

(declare-fun e!1617402 () Regex!7616)

(declare-fun call!164084 () Regex!7616)

(declare-fun call!164086 () Regex!7616)

(assert (=> b!2561158 (= e!1617402 (Union!7616 call!164084 call!164086))))

(declare-fun b!2561159 () Bool)

(declare-fun c!411466 () Bool)

(assert (=> b!2561159 (= c!411466 (is-Union!7616 (regOne!15744 r!27340)))))

(declare-fun e!1617401 () Regex!7616)

(assert (=> b!2561159 (= e!1617401 e!1617402)))

(declare-fun b!2561160 () Bool)

(declare-fun e!1617400 () Regex!7616)

(declare-fun call!164087 () Regex!7616)

(assert (=> b!2561160 (= e!1617400 (Union!7616 (Concat!12312 call!164087 (regTwo!15744 (regOne!15744 r!27340))) EmptyLang!7616))))

(declare-fun b!2561161 () Bool)

(declare-fun e!1617398 () Regex!7616)

(declare-fun call!164085 () Regex!7616)

(assert (=> b!2561161 (= e!1617398 (Concat!12312 call!164085 (regOne!15744 r!27340)))))

(declare-fun b!2561162 () Bool)

(assert (=> b!2561162 (= e!1617400 (Union!7616 (Concat!12312 call!164087 (regTwo!15744 (regOne!15744 r!27340))) call!164086))))

(declare-fun b!2561163 () Bool)

(declare-fun c!411464 () Bool)

(assert (=> b!2561163 (= c!411464 (nullable!2533 (regOne!15744 (regOne!15744 r!27340))))))

(assert (=> b!2561163 (= e!1617398 e!1617400)))

(declare-fun d!725506 () Bool)

(declare-fun lt!904772 () Regex!7616)

(assert (=> d!725506 (validRegex!3242 lt!904772)))

(declare-fun e!1617399 () Regex!7616)

(assert (=> d!725506 (= lt!904772 e!1617399)))

(declare-fun c!411465 () Bool)

(assert (=> d!725506 (= c!411465 (or (is-EmptyExpr!7616 (regOne!15744 r!27340)) (is-EmptyLang!7616 (regOne!15744 r!27340))))))

(assert (=> d!725506 (validRegex!3242 (regOne!15744 r!27340))))

(assert (=> d!725506 (= (derivativeStep!2185 (regOne!15744 r!27340) c!14016) lt!904772)))

(declare-fun b!2561164 () Bool)

(assert (=> b!2561164 (= e!1617399 EmptyLang!7616)))

(declare-fun bm!164079 () Bool)

(assert (=> bm!164079 (= call!164087 call!164085)))

(declare-fun b!2561165 () Bool)

(assert (=> b!2561165 (= e!1617399 e!1617401)))

(declare-fun c!411467 () Bool)

(assert (=> b!2561165 (= c!411467 (is-ElementMatch!7616 (regOne!15744 r!27340)))))

(declare-fun bm!164080 () Bool)

(declare-fun c!411468 () Bool)

(assert (=> bm!164080 (= call!164084 (derivativeStep!2185 (ite c!411466 (regOne!15745 (regOne!15744 r!27340)) (ite c!411468 (reg!7945 (regOne!15744 r!27340)) (regOne!15744 (regOne!15744 r!27340)))) c!14016))))

(declare-fun b!2561166 () Bool)

(assert (=> b!2561166 (= e!1617402 e!1617398)))

(assert (=> b!2561166 (= c!411468 (is-Star!7616 (regOne!15744 r!27340)))))

(declare-fun bm!164081 () Bool)

(assert (=> bm!164081 (= call!164085 call!164084)))

(declare-fun b!2561167 () Bool)

(assert (=> b!2561167 (= e!1617401 (ite (= c!14016 (c!411380 (regOne!15744 r!27340))) EmptyExpr!7616 EmptyLang!7616))))

(declare-fun bm!164082 () Bool)

(assert (=> bm!164082 (= call!164086 (derivativeStep!2185 (ite c!411466 (regTwo!15745 (regOne!15744 r!27340)) (regTwo!15744 (regOne!15744 r!27340))) c!14016))))

(assert (= (and d!725506 c!411465) b!2561164))

(assert (= (and d!725506 (not c!411465)) b!2561165))

(assert (= (and b!2561165 c!411467) b!2561167))

(assert (= (and b!2561165 (not c!411467)) b!2561159))

(assert (= (and b!2561159 c!411466) b!2561158))

(assert (= (and b!2561159 (not c!411466)) b!2561166))

(assert (= (and b!2561166 c!411468) b!2561161))

(assert (= (and b!2561166 (not c!411468)) b!2561163))

(assert (= (and b!2561163 c!411464) b!2561162))

(assert (= (and b!2561163 (not c!411464)) b!2561160))

(assert (= (or b!2561162 b!2561160) bm!164079))

(assert (= (or b!2561161 bm!164079) bm!164081))

(assert (= (or b!2561158 b!2561162) bm!164082))

(assert (= (or b!2561158 bm!164081) bm!164080))

(declare-fun m!2901271 () Bool)

(assert (=> b!2561163 m!2901271))

(declare-fun m!2901273 () Bool)

(assert (=> d!725506 m!2901273))

(declare-fun m!2901275 () Bool)

(assert (=> d!725506 m!2901275))

(declare-fun m!2901277 () Bool)

(assert (=> bm!164080 m!2901277))

(declare-fun m!2901279 () Bool)

(assert (=> bm!164082 m!2901279))

(assert (=> b!2560849 d!725506))

(declare-fun b!2561168 () Bool)

(declare-fun e!1617409 () Bool)

(declare-fun e!1617404 () Bool)

(assert (=> b!2561168 (= e!1617409 e!1617404)))

(declare-fun c!411469 () Bool)

(assert (=> b!2561168 (= c!411469 (is-EmptyLang!7616 lt!904713))))

(declare-fun b!2561169 () Bool)

(declare-fun e!1617408 () Bool)

(assert (=> b!2561169 (= e!1617408 (not (= (head!5823 tl!4068) (c!411380 lt!904713))))))

(declare-fun b!2561170 () Bool)

(declare-fun lt!904773 () Bool)

(assert (=> b!2561170 (= e!1617404 (not lt!904773))))

(declare-fun b!2561171 () Bool)

(declare-fun e!1617405 () Bool)

(declare-fun e!1617407 () Bool)

(assert (=> b!2561171 (= e!1617405 e!1617407)))

(declare-fun res!1078273 () Bool)

(assert (=> b!2561171 (=> (not res!1078273) (not e!1617407))))

(assert (=> b!2561171 (= res!1078273 (not lt!904773))))

(declare-fun b!2561172 () Bool)

(assert (=> b!2561172 (= e!1617407 e!1617408)))

(declare-fun res!1078278 () Bool)

(assert (=> b!2561172 (=> res!1078278 e!1617408)))

(declare-fun call!164088 () Bool)

(assert (=> b!2561172 (= res!1078278 call!164088)))

(declare-fun b!2561173 () Bool)

(declare-fun res!1078276 () Bool)

(declare-fun e!1617403 () Bool)

(assert (=> b!2561173 (=> (not res!1078276) (not e!1617403))))

(assert (=> b!2561173 (= res!1078276 (not call!164088))))

(declare-fun b!2561174 () Bool)

(declare-fun e!1617406 () Bool)

(assert (=> b!2561174 (= e!1617406 (matchR!3561 (derivativeStep!2185 lt!904713 (head!5823 tl!4068)) (tail!4098 tl!4068)))))

(declare-fun d!725510 () Bool)

(assert (=> d!725510 e!1617409))

(declare-fun c!411470 () Bool)

(assert (=> d!725510 (= c!411470 (is-EmptyExpr!7616 lt!904713))))

(assert (=> d!725510 (= lt!904773 e!1617406)))

(declare-fun c!411471 () Bool)

(assert (=> d!725510 (= c!411471 (isEmpty!17039 tl!4068))))

(assert (=> d!725510 (validRegex!3242 lt!904713)))

(assert (=> d!725510 (= (matchR!3561 lt!904713 tl!4068) lt!904773)))

(declare-fun b!2561175 () Bool)

(assert (=> b!2561175 (= e!1617406 (nullable!2533 lt!904713))))

(declare-fun b!2561176 () Bool)

(declare-fun res!1078272 () Bool)

(assert (=> b!2561176 (=> res!1078272 e!1617405)))

(assert (=> b!2561176 (= res!1078272 (not (is-ElementMatch!7616 lt!904713)))))

(assert (=> b!2561176 (= e!1617404 e!1617405)))

(declare-fun b!2561177 () Bool)

(assert (=> b!2561177 (= e!1617403 (= (head!5823 tl!4068) (c!411380 lt!904713)))))

(declare-fun bm!164083 () Bool)

(assert (=> bm!164083 (= call!164088 (isEmpty!17039 tl!4068))))

(declare-fun b!2561178 () Bool)

(declare-fun res!1078277 () Bool)

(assert (=> b!2561178 (=> res!1078277 e!1617408)))

(assert (=> b!2561178 (= res!1078277 (not (isEmpty!17039 (tail!4098 tl!4068))))))

(declare-fun b!2561179 () Bool)

(declare-fun res!1078279 () Bool)

(assert (=> b!2561179 (=> (not res!1078279) (not e!1617403))))

(assert (=> b!2561179 (= res!1078279 (isEmpty!17039 (tail!4098 tl!4068)))))

(declare-fun b!2561180 () Bool)

(assert (=> b!2561180 (= e!1617409 (= lt!904773 call!164088))))

(declare-fun b!2561181 () Bool)

(declare-fun res!1078274 () Bool)

(assert (=> b!2561181 (=> res!1078274 e!1617405)))

(assert (=> b!2561181 (= res!1078274 e!1617403)))

(declare-fun res!1078275 () Bool)

(assert (=> b!2561181 (=> (not res!1078275) (not e!1617403))))

(assert (=> b!2561181 (= res!1078275 lt!904773)))

(assert (= (and d!725510 c!411471) b!2561175))

(assert (= (and d!725510 (not c!411471)) b!2561174))

(assert (= (and d!725510 c!411470) b!2561180))

(assert (= (and d!725510 (not c!411470)) b!2561168))

(assert (= (and b!2561168 c!411469) b!2561170))

(assert (= (and b!2561168 (not c!411469)) b!2561176))

(assert (= (and b!2561176 (not res!1078272)) b!2561181))

(assert (= (and b!2561181 res!1078275) b!2561173))

(assert (= (and b!2561173 res!1078276) b!2561179))

(assert (= (and b!2561179 res!1078279) b!2561177))

(assert (= (and b!2561181 (not res!1078274)) b!2561171))

(assert (= (and b!2561171 res!1078273) b!2561172))

(assert (= (and b!2561172 (not res!1078278)) b!2561178))

(assert (= (and b!2561178 (not res!1078277)) b!2561169))

(assert (= (or b!2561180 b!2561172 b!2561173) bm!164083))

(assert (=> b!2561169 m!2901127))

(assert (=> bm!164083 m!2901129))

(assert (=> b!2561177 m!2901127))

(declare-fun m!2901281 () Bool)

(assert (=> b!2561175 m!2901281))

(assert (=> b!2561179 m!2901133))

(assert (=> b!2561179 m!2901133))

(assert (=> b!2561179 m!2901135))

(assert (=> b!2561178 m!2901133))

(assert (=> b!2561178 m!2901133))

(assert (=> b!2561178 m!2901135))

(assert (=> d!725510 m!2901129))

(assert (=> d!725510 m!2901187))

(assert (=> b!2561174 m!2901127))

(assert (=> b!2561174 m!2901127))

(declare-fun m!2901283 () Bool)

(assert (=> b!2561174 m!2901283))

(assert (=> b!2561174 m!2901133))

(assert (=> b!2561174 m!2901283))

(assert (=> b!2561174 m!2901133))

(declare-fun m!2901285 () Bool)

(assert (=> b!2561174 m!2901285))

(assert (=> b!2560849 d!725510))

(declare-fun d!725512 () Bool)

(assert (=> d!725512 (= (matchR!3561 lt!904713 tl!4068) (matchR!3561 (derivative!311 lt!904713 tl!4068) Nil!29581))))

(declare-fun lt!904774 () Unit!43417)

(assert (=> d!725512 (= lt!904774 (choose!15110 lt!904713 tl!4068))))

(assert (=> d!725512 (validRegex!3242 lt!904713)))

(assert (=> d!725512 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!207 lt!904713 tl!4068) lt!904774)))

(declare-fun bs!469828 () Bool)

(assert (= bs!469828 d!725512))

(assert (=> bs!469828 m!2901067))

(assert (=> bs!469828 m!2901075))

(declare-fun m!2901287 () Bool)

(assert (=> bs!469828 m!2901287))

(assert (=> bs!469828 m!2901187))

(assert (=> bs!469828 m!2901071))

(assert (=> bs!469828 m!2901067))

(assert (=> b!2560849 d!725512))

(declare-fun d!725514 () Bool)

(declare-fun nullableFct!759 (Regex!7616) Bool)

(assert (=> d!725514 (= (nullable!2533 (derivative!311 (derivativeStep!2185 r!27340 c!14016) tl!4068)) (nullableFct!759 (derivative!311 (derivativeStep!2185 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469829 () Bool)

(assert (= bs!469829 d!725514))

(assert (=> bs!469829 m!2901047))

(declare-fun m!2901289 () Bool)

(assert (=> bs!469829 m!2901289))

(assert (=> b!2560848 d!725514))

(declare-fun d!725516 () Bool)

(declare-fun lt!904775 () Regex!7616)

(assert (=> d!725516 (validRegex!3242 lt!904775)))

(declare-fun e!1617410 () Regex!7616)

(assert (=> d!725516 (= lt!904775 e!1617410)))

(declare-fun c!411472 () Bool)

(assert (=> d!725516 (= c!411472 (is-Cons!29581 tl!4068))))

(assert (=> d!725516 (validRegex!3242 (derivativeStep!2185 r!27340 c!14016))))

(assert (=> d!725516 (= (derivative!311 (derivativeStep!2185 r!27340 c!14016) tl!4068) lt!904775)))

(declare-fun b!2561182 () Bool)

(assert (=> b!2561182 (= e!1617410 (derivative!311 (derivativeStep!2185 (derivativeStep!2185 r!27340 c!14016) (h!35001 tl!4068)) (t!211380 tl!4068)))))

(declare-fun b!2561183 () Bool)

(assert (=> b!2561183 (= e!1617410 (derivativeStep!2185 r!27340 c!14016))))

(assert (= (and d!725516 c!411472) b!2561182))

(assert (= (and d!725516 (not c!411472)) b!2561183))

(declare-fun m!2901291 () Bool)

(assert (=> d!725516 m!2901291))

(assert (=> d!725516 m!2901045))

(declare-fun m!2901293 () Bool)

(assert (=> d!725516 m!2901293))

(assert (=> b!2561182 m!2901045))

(declare-fun m!2901295 () Bool)

(assert (=> b!2561182 m!2901295))

(assert (=> b!2561182 m!2901295))

(declare-fun m!2901297 () Bool)

(assert (=> b!2561182 m!2901297))

(assert (=> b!2560848 d!725516))

(declare-fun b!2561184 () Bool)

(declare-fun e!1617415 () Regex!7616)

(declare-fun call!164089 () Regex!7616)

(declare-fun call!164091 () Regex!7616)

(assert (=> b!2561184 (= e!1617415 (Union!7616 call!164089 call!164091))))

(declare-fun b!2561185 () Bool)

(declare-fun c!411475 () Bool)

(assert (=> b!2561185 (= c!411475 (is-Union!7616 r!27340))))

(declare-fun e!1617414 () Regex!7616)

(assert (=> b!2561185 (= e!1617414 e!1617415)))

(declare-fun b!2561186 () Bool)

(declare-fun e!1617413 () Regex!7616)

(declare-fun call!164092 () Regex!7616)

(assert (=> b!2561186 (= e!1617413 (Union!7616 (Concat!12312 call!164092 (regTwo!15744 r!27340)) EmptyLang!7616))))

(declare-fun b!2561187 () Bool)

(declare-fun e!1617411 () Regex!7616)

(declare-fun call!164090 () Regex!7616)

(assert (=> b!2561187 (= e!1617411 (Concat!12312 call!164090 r!27340))))

(declare-fun b!2561188 () Bool)

(assert (=> b!2561188 (= e!1617413 (Union!7616 (Concat!12312 call!164092 (regTwo!15744 r!27340)) call!164091))))

(declare-fun b!2561189 () Bool)

(declare-fun c!411473 () Bool)

(assert (=> b!2561189 (= c!411473 (nullable!2533 (regOne!15744 r!27340)))))

(assert (=> b!2561189 (= e!1617411 e!1617413)))

(declare-fun d!725518 () Bool)

(declare-fun lt!904776 () Regex!7616)

(assert (=> d!725518 (validRegex!3242 lt!904776)))

(declare-fun e!1617412 () Regex!7616)

(assert (=> d!725518 (= lt!904776 e!1617412)))

(declare-fun c!411474 () Bool)

(assert (=> d!725518 (= c!411474 (or (is-EmptyExpr!7616 r!27340) (is-EmptyLang!7616 r!27340)))))

(assert (=> d!725518 (validRegex!3242 r!27340)))

(assert (=> d!725518 (= (derivativeStep!2185 r!27340 c!14016) lt!904776)))

(declare-fun b!2561190 () Bool)

(assert (=> b!2561190 (= e!1617412 EmptyLang!7616)))

(declare-fun bm!164084 () Bool)

(assert (=> bm!164084 (= call!164092 call!164090)))

(declare-fun b!2561191 () Bool)

(assert (=> b!2561191 (= e!1617412 e!1617414)))

(declare-fun c!411476 () Bool)

(assert (=> b!2561191 (= c!411476 (is-ElementMatch!7616 r!27340))))

(declare-fun bm!164085 () Bool)

(declare-fun c!411477 () Bool)

(assert (=> bm!164085 (= call!164089 (derivativeStep!2185 (ite c!411475 (regOne!15745 r!27340) (ite c!411477 (reg!7945 r!27340) (regOne!15744 r!27340))) c!14016))))

(declare-fun b!2561192 () Bool)

(assert (=> b!2561192 (= e!1617415 e!1617411)))

(assert (=> b!2561192 (= c!411477 (is-Star!7616 r!27340))))

(declare-fun bm!164086 () Bool)

(assert (=> bm!164086 (= call!164090 call!164089)))

(declare-fun b!2561193 () Bool)

(assert (=> b!2561193 (= e!1617414 (ite (= c!14016 (c!411380 r!27340)) EmptyExpr!7616 EmptyLang!7616))))

(declare-fun bm!164087 () Bool)

(assert (=> bm!164087 (= call!164091 (derivativeStep!2185 (ite c!411475 (regTwo!15745 r!27340) (regTwo!15744 r!27340)) c!14016))))

(assert (= (and d!725518 c!411474) b!2561190))

(assert (= (and d!725518 (not c!411474)) b!2561191))

(assert (= (and b!2561191 c!411476) b!2561193))

(assert (= (and b!2561191 (not c!411476)) b!2561185))

(assert (= (and b!2561185 c!411475) b!2561184))

(assert (= (and b!2561185 (not c!411475)) b!2561192))

(assert (= (and b!2561192 c!411477) b!2561187))

(assert (= (and b!2561192 (not c!411477)) b!2561189))

(assert (= (and b!2561189 c!411473) b!2561188))

(assert (= (and b!2561189 (not c!411473)) b!2561186))

(assert (= (or b!2561188 b!2561186) bm!164084))

(assert (= (or b!2561187 bm!164084) bm!164086))

(assert (= (or b!2561184 b!2561188) bm!164087))

(assert (= (or b!2561184 bm!164086) bm!164085))

(assert (=> b!2561189 m!2901051))

(declare-fun m!2901299 () Bool)

(assert (=> d!725518 m!2901299))

(assert (=> d!725518 m!2901079))

(declare-fun m!2901301 () Bool)

(assert (=> bm!164085 m!2901301))

(declare-fun m!2901303 () Bool)

(assert (=> bm!164087 m!2901303))

(assert (=> b!2560848 d!725518))

(declare-fun d!725520 () Bool)

(assert (=> d!725520 (= (nullable!2533 (regOne!15744 r!27340)) (nullableFct!759 (regOne!15744 r!27340)))))

(declare-fun bs!469830 () Bool)

(assert (= bs!469830 d!725520))

(declare-fun m!2901305 () Bool)

(assert (=> bs!469830 m!2901305))

(assert (=> b!2560841 d!725520))

(assert (=> b!2560851 d!725466))

(declare-fun d!725522 () Bool)

(declare-fun res!1078281 () Bool)

(declare-fun e!1617420 () Bool)

(assert (=> d!725522 (=> res!1078281 e!1617420)))

(assert (=> d!725522 (= res!1078281 (is-ElementMatch!7616 r!27340))))

(assert (=> d!725522 (= (validRegex!3242 r!27340) e!1617420)))

(declare-fun b!2561194 () Bool)

(declare-fun e!1617419 () Bool)

(declare-fun e!1617416 () Bool)

(assert (=> b!2561194 (= e!1617419 e!1617416)))

(declare-fun res!1078282 () Bool)

(assert (=> b!2561194 (= res!1078282 (not (nullable!2533 (reg!7945 r!27340))))))

(assert (=> b!2561194 (=> (not res!1078282) (not e!1617416))))

(declare-fun b!2561195 () Bool)

(declare-fun e!1617418 () Bool)

(assert (=> b!2561195 (= e!1617419 e!1617418)))

(declare-fun c!411479 () Bool)

(assert (=> b!2561195 (= c!411479 (is-Union!7616 r!27340))))

(declare-fun b!2561196 () Bool)

(declare-fun res!1078280 () Bool)

(declare-fun e!1617422 () Bool)

(assert (=> b!2561196 (=> res!1078280 e!1617422)))

(assert (=> b!2561196 (= res!1078280 (not (is-Concat!12312 r!27340)))))

(assert (=> b!2561196 (= e!1617418 e!1617422)))

(declare-fun b!2561197 () Bool)

(declare-fun e!1617421 () Bool)

(declare-fun call!164095 () Bool)

(assert (=> b!2561197 (= e!1617421 call!164095)))

(declare-fun bm!164088 () Bool)

(declare-fun call!164093 () Bool)

(declare-fun c!411478 () Bool)

(assert (=> bm!164088 (= call!164093 (validRegex!3242 (ite c!411478 (reg!7945 r!27340) (ite c!411479 (regOne!15745 r!27340) (regTwo!15744 r!27340)))))))

(declare-fun b!2561198 () Bool)

(assert (=> b!2561198 (= e!1617422 e!1617421)))

(declare-fun res!1078283 () Bool)

(assert (=> b!2561198 (=> (not res!1078283) (not e!1617421))))

(declare-fun call!164094 () Bool)

(assert (=> b!2561198 (= res!1078283 call!164094)))

(declare-fun b!2561199 () Bool)

(declare-fun e!1617417 () Bool)

(assert (=> b!2561199 (= e!1617417 call!164094)))

(declare-fun b!2561200 () Bool)

(assert (=> b!2561200 (= e!1617420 e!1617419)))

(assert (=> b!2561200 (= c!411478 (is-Star!7616 r!27340))))

(declare-fun bm!164089 () Bool)

(assert (=> bm!164089 (= call!164095 call!164093)))

(declare-fun b!2561201 () Bool)

(declare-fun res!1078284 () Bool)

(assert (=> b!2561201 (=> (not res!1078284) (not e!1617417))))

(assert (=> b!2561201 (= res!1078284 call!164095)))

(assert (=> b!2561201 (= e!1617418 e!1617417)))

(declare-fun bm!164090 () Bool)

(assert (=> bm!164090 (= call!164094 (validRegex!3242 (ite c!411479 (regTwo!15745 r!27340) (regOne!15744 r!27340))))))

(declare-fun b!2561202 () Bool)

(assert (=> b!2561202 (= e!1617416 call!164093)))

(assert (= (and d!725522 (not res!1078281)) b!2561200))

(assert (= (and b!2561200 c!411478) b!2561194))

(assert (= (and b!2561200 (not c!411478)) b!2561195))

(assert (= (and b!2561194 res!1078282) b!2561202))

(assert (= (and b!2561195 c!411479) b!2561201))

(assert (= (and b!2561195 (not c!411479)) b!2561196))

(assert (= (and b!2561201 res!1078284) b!2561199))

(assert (= (and b!2561196 (not res!1078280)) b!2561198))

(assert (= (and b!2561198 res!1078283) b!2561197))

(assert (= (or b!2561201 b!2561197) bm!164089))

(assert (= (or b!2561199 b!2561198) bm!164090))

(assert (= (or b!2561202 bm!164089) bm!164088))

(declare-fun m!2901307 () Bool)

(assert (=> b!2561194 m!2901307))

(declare-fun m!2901309 () Bool)

(assert (=> bm!164088 m!2901309))

(declare-fun m!2901311 () Bool)

(assert (=> bm!164090 m!2901311))

(assert (=> start!247938 d!725522))

(declare-fun b!2561207 () Bool)

(declare-fun e!1617425 () Bool)

(declare-fun tp!815645 () Bool)

(assert (=> b!2561207 (= e!1617425 (and tp_is_empty!13087 tp!815645))))

(assert (=> b!2560843 (= tp!815624 e!1617425)))

(assert (= (and b!2560843 (is-Cons!29581 (t!211380 tl!4068))) b!2561207))

(declare-fun e!1617428 () Bool)

(assert (=> b!2560845 (= tp!815621 e!1617428)))

(declare-fun b!2561218 () Bool)

(assert (=> b!2561218 (= e!1617428 tp_is_empty!13087)))

(declare-fun b!2561219 () Bool)

(declare-fun tp!815660 () Bool)

(declare-fun tp!815658 () Bool)

(assert (=> b!2561219 (= e!1617428 (and tp!815660 tp!815658))))

(declare-fun b!2561221 () Bool)

(declare-fun tp!815657 () Bool)

(declare-fun tp!815659 () Bool)

(assert (=> b!2561221 (= e!1617428 (and tp!815657 tp!815659))))

(declare-fun b!2561220 () Bool)

(declare-fun tp!815656 () Bool)

(assert (=> b!2561220 (= e!1617428 tp!815656)))

(assert (= (and b!2560845 (is-ElementMatch!7616 (regOne!15745 r!27340))) b!2561218))

(assert (= (and b!2560845 (is-Concat!12312 (regOne!15745 r!27340))) b!2561219))

(assert (= (and b!2560845 (is-Star!7616 (regOne!15745 r!27340))) b!2561220))

(assert (= (and b!2560845 (is-Union!7616 (regOne!15745 r!27340))) b!2561221))

(declare-fun e!1617429 () Bool)

(assert (=> b!2560845 (= tp!815623 e!1617429)))

(declare-fun b!2561222 () Bool)

(assert (=> b!2561222 (= e!1617429 tp_is_empty!13087)))

(declare-fun b!2561223 () Bool)

(declare-fun tp!815665 () Bool)

(declare-fun tp!815663 () Bool)

(assert (=> b!2561223 (= e!1617429 (and tp!815665 tp!815663))))

(declare-fun b!2561225 () Bool)

(declare-fun tp!815662 () Bool)

(declare-fun tp!815664 () Bool)

(assert (=> b!2561225 (= e!1617429 (and tp!815662 tp!815664))))

(declare-fun b!2561224 () Bool)

(declare-fun tp!815661 () Bool)

(assert (=> b!2561224 (= e!1617429 tp!815661)))

(assert (= (and b!2560845 (is-ElementMatch!7616 (regTwo!15745 r!27340))) b!2561222))

(assert (= (and b!2560845 (is-Concat!12312 (regTwo!15745 r!27340))) b!2561223))

(assert (= (and b!2560845 (is-Star!7616 (regTwo!15745 r!27340))) b!2561224))

(assert (= (and b!2560845 (is-Union!7616 (regTwo!15745 r!27340))) b!2561225))

(declare-fun e!1617430 () Bool)

(assert (=> b!2560844 (= tp!815622 e!1617430)))

(declare-fun b!2561226 () Bool)

(assert (=> b!2561226 (= e!1617430 tp_is_empty!13087)))

(declare-fun b!2561227 () Bool)

(declare-fun tp!815670 () Bool)

(declare-fun tp!815668 () Bool)

(assert (=> b!2561227 (= e!1617430 (and tp!815670 tp!815668))))

(declare-fun b!2561229 () Bool)

(declare-fun tp!815667 () Bool)

(declare-fun tp!815669 () Bool)

(assert (=> b!2561229 (= e!1617430 (and tp!815667 tp!815669))))

(declare-fun b!2561228 () Bool)

(declare-fun tp!815666 () Bool)

(assert (=> b!2561228 (= e!1617430 tp!815666)))

(assert (= (and b!2560844 (is-ElementMatch!7616 (reg!7945 r!27340))) b!2561226))

(assert (= (and b!2560844 (is-Concat!12312 (reg!7945 r!27340))) b!2561227))

(assert (= (and b!2560844 (is-Star!7616 (reg!7945 r!27340))) b!2561228))

(assert (= (and b!2560844 (is-Union!7616 (reg!7945 r!27340))) b!2561229))

(declare-fun e!1617431 () Bool)

(assert (=> b!2560846 (= tp!815619 e!1617431)))

(declare-fun b!2561230 () Bool)

(assert (=> b!2561230 (= e!1617431 tp_is_empty!13087)))

(declare-fun b!2561231 () Bool)

(declare-fun tp!815675 () Bool)

(declare-fun tp!815673 () Bool)

(assert (=> b!2561231 (= e!1617431 (and tp!815675 tp!815673))))

(declare-fun b!2561233 () Bool)

(declare-fun tp!815672 () Bool)

(declare-fun tp!815674 () Bool)

(assert (=> b!2561233 (= e!1617431 (and tp!815672 tp!815674))))

(declare-fun b!2561232 () Bool)

(declare-fun tp!815671 () Bool)

(assert (=> b!2561232 (= e!1617431 tp!815671)))

(assert (= (and b!2560846 (is-ElementMatch!7616 (regOne!15744 r!27340))) b!2561230))

(assert (= (and b!2560846 (is-Concat!12312 (regOne!15744 r!27340))) b!2561231))

(assert (= (and b!2560846 (is-Star!7616 (regOne!15744 r!27340))) b!2561232))

(assert (= (and b!2560846 (is-Union!7616 (regOne!15744 r!27340))) b!2561233))

(declare-fun e!1617432 () Bool)

(assert (=> b!2560846 (= tp!815620 e!1617432)))

(declare-fun b!2561234 () Bool)

(assert (=> b!2561234 (= e!1617432 tp_is_empty!13087)))

(declare-fun b!2561235 () Bool)

(declare-fun tp!815680 () Bool)

(declare-fun tp!815678 () Bool)

(assert (=> b!2561235 (= e!1617432 (and tp!815680 tp!815678))))

(declare-fun b!2561237 () Bool)

(declare-fun tp!815677 () Bool)

(declare-fun tp!815679 () Bool)

(assert (=> b!2561237 (= e!1617432 (and tp!815677 tp!815679))))

(declare-fun b!2561236 () Bool)

(declare-fun tp!815676 () Bool)

(assert (=> b!2561236 (= e!1617432 tp!815676)))

(assert (= (and b!2560846 (is-ElementMatch!7616 (regTwo!15744 r!27340))) b!2561234))

(assert (= (and b!2560846 (is-Concat!12312 (regTwo!15744 r!27340))) b!2561235))

(assert (= (and b!2560846 (is-Star!7616 (regTwo!15744 r!27340))) b!2561236))

(assert (= (and b!2560846 (is-Union!7616 (regTwo!15744 r!27340))) b!2561237))

(push 1)

(assert tp_is_empty!13087)

(assert (not d!725484))

(assert (not d!725488))

(assert (not bm!164033))

(assert (not b!2561055))

(assert (not b!2561044))

(assert (not b!2561224))

(assert (not b!2561189))

(assert (not b!2561153))

(assert (not b!2561219))

(assert (not d!725482))

(assert (not b!2561069))

(assert (not b!2560928))

(assert (not b!2561169))

(assert (not bm!164080))

(assert (not bm!164052))

(assert (not b!2560925))

(assert (not bm!164082))

(assert (not d!725474))

(assert (not b!2561194))

(assert (not d!725518))

(assert (not b!2561229))

(assert (not d!725514))

(assert (not b!2561175))

(assert (not bm!164088))

(assert (not b!2561207))

(assert (not d!725494))

(assert (not b!2561066))

(assert (not b!2561233))

(assert (not b!2560957))

(assert (not bm!164059))

(assert (not b!2560930))

(assert (not bm!164087))

(assert (not d!725506))

(assert (not b!2560926))

(assert (not b!2561227))

(assert (not d!725492))

(assert (not bm!164058))

(assert (not b!2560987))

(assert (not b!2561003))

(assert (not bm!164085))

(assert (not b!2560929))

(assert (not b!2561071))

(assert (not d!725520))

(assert (not b!2561052))

(assert (not d!725466))

(assert (not b!2561043))

(assert (not b!2561225))

(assert (not bm!164054))

(assert (not b!2561006))

(assert (not b!2561042))

(assert (not b!2561182))

(assert (not b!2561177))

(assert (not b!2561228))

(assert (not b!2561232))

(assert (not b!2561053))

(assert (not bm!164090))

(assert (not d!725486))

(assert (not b!2561223))

(assert (not b!2561056))

(assert (not b!2561179))

(assert (not b!2561220))

(assert (not b!2561236))

(assert (not b!2561235))

(assert (not bm!164055))

(assert (not b!2561231))

(assert (not bm!164078))

(assert (not bm!164083))

(assert (not b!2561174))

(assert (not d!725516))

(assert (not b!2561221))

(assert (not d!725510))

(assert (not b!2561061))

(assert (not b!2561057))

(assert (not b!2561005))

(assert (not bm!164076))

(assert (not b!2561237))

(assert (not b!2561178))

(assert (not b!2561163))

(assert (not b!2561007))

(assert (not b!2561067))

(assert (not b!2561047))

(assert (not d!725490))

(assert (not b!2560920))

(assert (not d!725512))

(assert (not b!2561070))

(assert (not b!2560997))

(assert (not b!2561002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

