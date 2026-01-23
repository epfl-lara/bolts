; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246908 () Bool)

(assert start!246908)

(declare-fun b!2543005 () Bool)

(declare-fun e!1607878 () Bool)

(declare-fun e!1607880 () Bool)

(assert (=> b!2543005 (= e!1607878 e!1607880)))

(declare-fun res!1071774 () Bool)

(assert (=> b!2543005 (=> (not res!1071774) (not e!1607880))))

(declare-datatypes ((C!15300 0))(
  ( (C!15301 (val!9302 Int)) )
))
(declare-datatypes ((Regex!7571 0))(
  ( (ElementMatch!7571 (c!407171 C!15300)) (Concat!12267 (regOne!15654 Regex!7571) (regTwo!15654 Regex!7571)) (EmptyExpr!7571) (Star!7571 (reg!7900 Regex!7571)) (EmptyLang!7571) (Union!7571 (regOne!15655 Regex!7571) (regTwo!15655 Regex!7571)) )
))
(declare-fun lt!902179 () Regex!7571)

(declare-datatypes ((List!29636 0))(
  ( (Nil!29536) (Cons!29536 (h!34956 C!15300) (t!211335 List!29636)) )
))
(declare-fun tl!4068 () List!29636)

(declare-fun nullable!2488 (Regex!7571) Bool)

(declare-fun derivative!266 (Regex!7571 List!29636) Regex!7571)

(assert (=> b!2543005 (= res!1071774 (nullable!2488 (derivative!266 lt!902179 tl!4068)))))

(declare-fun r!27340 () Regex!7571)

(declare-fun c!14016 () C!15300)

(declare-fun derivativeStep!2140 (Regex!7571 C!15300) Regex!7571)

(assert (=> b!2543005 (= lt!902179 (derivativeStep!2140 r!27340 c!14016))))

(declare-fun b!2543007 () Bool)

(declare-fun e!1607877 () Bool)

(declare-fun tp_is_empty!12997 () Bool)

(declare-fun tp!811956 () Bool)

(assert (=> b!2543007 (= e!1607877 (and tp_is_empty!12997 tp!811956))))

(declare-fun b!2543008 () Bool)

(declare-fun e!1607876 () Bool)

(assert (=> b!2543008 (= e!1607876 tp_is_empty!12997)))

(declare-fun b!2543009 () Bool)

(declare-fun tp!811953 () Bool)

(declare-fun tp!811954 () Bool)

(assert (=> b!2543009 (= e!1607876 (and tp!811953 tp!811954))))

(declare-fun b!2543010 () Bool)

(declare-fun tp!811957 () Bool)

(declare-fun tp!811955 () Bool)

(assert (=> b!2543010 (= e!1607876 (and tp!811957 tp!811955))))

(declare-fun b!2543006 () Bool)

(declare-fun res!1071773 () Bool)

(assert (=> b!2543006 (=> (not res!1071773) (not e!1607880))))

(get-info :version)

(assert (=> b!2543006 (= res!1071773 (and (not ((_ is EmptyExpr!7571) r!27340)) (not ((_ is EmptyLang!7571) r!27340)) (not ((_ is ElementMatch!7571) r!27340)) (not ((_ is Union!7571) r!27340)) ((_ is Star!7571) r!27340)))))

(declare-fun res!1071771 () Bool)

(assert (=> start!246908 (=> (not res!1071771) (not e!1607878))))

(declare-fun validRegex!3197 (Regex!7571) Bool)

(assert (=> start!246908 (= res!1071771 (validRegex!3197 r!27340))))

(assert (=> start!246908 e!1607878))

(assert (=> start!246908 e!1607876))

(assert (=> start!246908 tp_is_empty!12997))

(assert (=> start!246908 e!1607877))

(declare-fun b!2543011 () Bool)

(declare-fun tp!811958 () Bool)

(assert (=> b!2543011 (= e!1607876 tp!811958)))

(declare-fun b!2543012 () Bool)

(declare-fun e!1607879 () Bool)

(assert (=> b!2543012 (= e!1607880 e!1607879)))

(declare-fun res!1071770 () Bool)

(assert (=> b!2543012 (=> (not res!1071770) (not e!1607879))))

(declare-fun lt!902180 () Regex!7571)

(assert (=> b!2543012 (= res!1071770 (= lt!902179 (Concat!12267 lt!902180 (Star!7571 (reg!7900 r!27340)))))))

(assert (=> b!2543012 (= lt!902180 (derivativeStep!2140 (reg!7900 r!27340) c!14016))))

(declare-fun b!2543013 () Bool)

(declare-fun res!1071772 () Bool)

(assert (=> b!2543013 (=> (not res!1071772) (not e!1607879))))

(assert (=> b!2543013 (= res!1071772 (nullable!2488 (derivative!266 lt!902180 tl!4068)))))

(declare-fun b!2543014 () Bool)

(assert (=> b!2543014 (= e!1607879 (not (validRegex!3197 (reg!7900 r!27340))))))

(assert (= (and start!246908 res!1071771) b!2543005))

(assert (= (and b!2543005 res!1071774) b!2543006))

(assert (= (and b!2543006 res!1071773) b!2543012))

(assert (= (and b!2543012 res!1071770) b!2543013))

(assert (= (and b!2543013 res!1071772) b!2543014))

(assert (= (and start!246908 ((_ is ElementMatch!7571) r!27340)) b!2543008))

(assert (= (and start!246908 ((_ is Concat!12267) r!27340)) b!2543009))

(assert (= (and start!246908 ((_ is Star!7571) r!27340)) b!2543011))

(assert (= (and start!246908 ((_ is Union!7571) r!27340)) b!2543010))

(assert (= (and start!246908 ((_ is Cons!29536) tl!4068)) b!2543007))

(declare-fun m!2889237 () Bool)

(assert (=> b!2543014 m!2889237))

(declare-fun m!2889239 () Bool)

(assert (=> b!2543005 m!2889239))

(assert (=> b!2543005 m!2889239))

(declare-fun m!2889241 () Bool)

(assert (=> b!2543005 m!2889241))

(declare-fun m!2889243 () Bool)

(assert (=> b!2543005 m!2889243))

(declare-fun m!2889245 () Bool)

(assert (=> b!2543012 m!2889245))

(declare-fun m!2889247 () Bool)

(assert (=> b!2543013 m!2889247))

(assert (=> b!2543013 m!2889247))

(declare-fun m!2889249 () Bool)

(assert (=> b!2543013 m!2889249))

(declare-fun m!2889251 () Bool)

(assert (=> start!246908 m!2889251))

(check-sat (not b!2543012) tp_is_empty!12997 (not b!2543014) (not start!246908) (not b!2543011) (not b!2543010) (not b!2543007) (not b!2543013) (not b!2543009) (not b!2543005))
(check-sat)
(get-model)

(declare-fun b!2543053 () Bool)

(declare-fun e!1607907 () Bool)

(declare-fun call!161066 () Bool)

(assert (=> b!2543053 (= e!1607907 call!161066)))

(declare-fun b!2543054 () Bool)

(declare-fun e!1607909 () Bool)

(declare-fun call!161068 () Bool)

(assert (=> b!2543054 (= e!1607909 call!161068)))

(declare-fun b!2543056 () Bool)

(declare-fun e!1607905 () Bool)

(assert (=> b!2543056 (= e!1607905 e!1607907)))

(declare-fun res!1071786 () Bool)

(assert (=> b!2543056 (=> (not res!1071786) (not e!1607907))))

(assert (=> b!2543056 (= res!1071786 call!161068)))

(declare-fun b!2543057 () Bool)

(declare-fun res!1071789 () Bool)

(assert (=> b!2543057 (=> res!1071789 e!1607905)))

(assert (=> b!2543057 (= res!1071789 (not ((_ is Concat!12267) (reg!7900 r!27340))))))

(declare-fun e!1607911 () Bool)

(assert (=> b!2543057 (= e!1607911 e!1607905)))

(declare-fun bm!161061 () Bool)

(declare-fun c!407187 () Bool)

(assert (=> bm!161061 (= call!161068 (validRegex!3197 (ite c!407187 (regTwo!15655 (reg!7900 r!27340)) (regOne!15654 (reg!7900 r!27340)))))))

(declare-fun b!2543058 () Bool)

(declare-fun e!1607908 () Bool)

(assert (=> b!2543058 (= e!1607908 e!1607911)))

(assert (=> b!2543058 (= c!407187 ((_ is Union!7571) (reg!7900 r!27340)))))

(declare-fun b!2543055 () Bool)

(declare-fun res!1071787 () Bool)

(assert (=> b!2543055 (=> (not res!1071787) (not e!1607909))))

(assert (=> b!2543055 (= res!1071787 call!161066)))

(assert (=> b!2543055 (= e!1607911 e!1607909)))

(declare-fun d!722041 () Bool)

(declare-fun res!1071785 () Bool)

(declare-fun e!1607910 () Bool)

(assert (=> d!722041 (=> res!1071785 e!1607910)))

(assert (=> d!722041 (= res!1071785 ((_ is ElementMatch!7571) (reg!7900 r!27340)))))

(assert (=> d!722041 (= (validRegex!3197 (reg!7900 r!27340)) e!1607910)))

(declare-fun b!2543059 () Bool)

(declare-fun e!1607906 () Bool)

(assert (=> b!2543059 (= e!1607908 e!1607906)))

(declare-fun res!1071788 () Bool)

(assert (=> b!2543059 (= res!1071788 (not (nullable!2488 (reg!7900 (reg!7900 r!27340)))))))

(assert (=> b!2543059 (=> (not res!1071788) (not e!1607906))))

(declare-fun bm!161062 () Bool)

(declare-fun call!161067 () Bool)

(assert (=> bm!161062 (= call!161066 call!161067)))

(declare-fun b!2543060 () Bool)

(assert (=> b!2543060 (= e!1607910 e!1607908)))

(declare-fun c!407186 () Bool)

(assert (=> b!2543060 (= c!407186 ((_ is Star!7571) (reg!7900 r!27340)))))

(declare-fun bm!161063 () Bool)

(assert (=> bm!161063 (= call!161067 (validRegex!3197 (ite c!407186 (reg!7900 (reg!7900 r!27340)) (ite c!407187 (regOne!15655 (reg!7900 r!27340)) (regTwo!15654 (reg!7900 r!27340))))))))

(declare-fun b!2543061 () Bool)

(assert (=> b!2543061 (= e!1607906 call!161067)))

(assert (= (and d!722041 (not res!1071785)) b!2543060))

(assert (= (and b!2543060 c!407186) b!2543059))

(assert (= (and b!2543060 (not c!407186)) b!2543058))

(assert (= (and b!2543059 res!1071788) b!2543061))

(assert (= (and b!2543058 c!407187) b!2543055))

(assert (= (and b!2543058 (not c!407187)) b!2543057))

(assert (= (and b!2543055 res!1071787) b!2543054))

(assert (= (and b!2543057 (not res!1071789)) b!2543056))

(assert (= (and b!2543056 res!1071786) b!2543053))

(assert (= (or b!2543055 b!2543053) bm!161062))

(assert (= (or b!2543054 b!2543056) bm!161061))

(assert (= (or b!2543061 bm!161062) bm!161063))

(declare-fun m!2889253 () Bool)

(assert (=> bm!161061 m!2889253))

(declare-fun m!2889255 () Bool)

(assert (=> b!2543059 m!2889255))

(declare-fun m!2889257 () Bool)

(assert (=> bm!161063 m!2889257))

(assert (=> b!2543014 d!722041))

(declare-fun d!722043 () Bool)

(declare-fun nullableFct!717 (Regex!7571) Bool)

(assert (=> d!722043 (= (nullable!2488 (derivative!266 lt!902180 tl!4068)) (nullableFct!717 (derivative!266 lt!902180 tl!4068)))))

(declare-fun bs!469448 () Bool)

(assert (= bs!469448 d!722043))

(assert (=> bs!469448 m!2889247))

(declare-fun m!2889259 () Bool)

(assert (=> bs!469448 m!2889259))

(assert (=> b!2543013 d!722043))

(declare-fun d!722045 () Bool)

(declare-fun lt!902186 () Regex!7571)

(assert (=> d!722045 (validRegex!3197 lt!902186)))

(declare-fun e!1607919 () Regex!7571)

(assert (=> d!722045 (= lt!902186 e!1607919)))

(declare-fun c!407195 () Bool)

(assert (=> d!722045 (= c!407195 ((_ is Cons!29536) tl!4068))))

(assert (=> d!722045 (validRegex!3197 lt!902180)))

(assert (=> d!722045 (= (derivative!266 lt!902180 tl!4068) lt!902186)))

(declare-fun b!2543076 () Bool)

(assert (=> b!2543076 (= e!1607919 (derivative!266 (derivativeStep!2140 lt!902180 (h!34956 tl!4068)) (t!211335 tl!4068)))))

(declare-fun b!2543077 () Bool)

(assert (=> b!2543077 (= e!1607919 lt!902180)))

(assert (= (and d!722045 c!407195) b!2543076))

(assert (= (and d!722045 (not c!407195)) b!2543077))

(declare-fun m!2889271 () Bool)

(assert (=> d!722045 m!2889271))

(declare-fun m!2889273 () Bool)

(assert (=> d!722045 m!2889273))

(declare-fun m!2889275 () Bool)

(assert (=> b!2543076 m!2889275))

(assert (=> b!2543076 m!2889275))

(declare-fun m!2889277 () Bool)

(assert (=> b!2543076 m!2889277))

(assert (=> b!2543013 d!722045))

(declare-fun b!2543078 () Bool)

(declare-fun e!1607922 () Bool)

(declare-fun call!161073 () Bool)

(assert (=> b!2543078 (= e!1607922 call!161073)))

(declare-fun b!2543079 () Bool)

(declare-fun e!1607924 () Bool)

(declare-fun call!161075 () Bool)

(assert (=> b!2543079 (= e!1607924 call!161075)))

(declare-fun b!2543081 () Bool)

(declare-fun e!1607920 () Bool)

(assert (=> b!2543081 (= e!1607920 e!1607922)))

(declare-fun res!1071791 () Bool)

(assert (=> b!2543081 (=> (not res!1071791) (not e!1607922))))

(assert (=> b!2543081 (= res!1071791 call!161075)))

(declare-fun b!2543082 () Bool)

(declare-fun res!1071794 () Bool)

(assert (=> b!2543082 (=> res!1071794 e!1607920)))

(assert (=> b!2543082 (= res!1071794 (not ((_ is Concat!12267) r!27340)))))

(declare-fun e!1607926 () Bool)

(assert (=> b!2543082 (= e!1607926 e!1607920)))

(declare-fun bm!161068 () Bool)

(declare-fun c!407197 () Bool)

(assert (=> bm!161068 (= call!161075 (validRegex!3197 (ite c!407197 (regTwo!15655 r!27340) (regOne!15654 r!27340))))))

(declare-fun b!2543083 () Bool)

(declare-fun e!1607923 () Bool)

(assert (=> b!2543083 (= e!1607923 e!1607926)))

(assert (=> b!2543083 (= c!407197 ((_ is Union!7571) r!27340))))

(declare-fun b!2543080 () Bool)

(declare-fun res!1071792 () Bool)

(assert (=> b!2543080 (=> (not res!1071792) (not e!1607924))))

(assert (=> b!2543080 (= res!1071792 call!161073)))

(assert (=> b!2543080 (= e!1607926 e!1607924)))

(declare-fun d!722051 () Bool)

(declare-fun res!1071790 () Bool)

(declare-fun e!1607925 () Bool)

(assert (=> d!722051 (=> res!1071790 e!1607925)))

(assert (=> d!722051 (= res!1071790 ((_ is ElementMatch!7571) r!27340))))

(assert (=> d!722051 (= (validRegex!3197 r!27340) e!1607925)))

(declare-fun b!2543084 () Bool)

(declare-fun e!1607921 () Bool)

(assert (=> b!2543084 (= e!1607923 e!1607921)))

(declare-fun res!1071793 () Bool)

(assert (=> b!2543084 (= res!1071793 (not (nullable!2488 (reg!7900 r!27340))))))

(assert (=> b!2543084 (=> (not res!1071793) (not e!1607921))))

(declare-fun bm!161069 () Bool)

(declare-fun call!161074 () Bool)

(assert (=> bm!161069 (= call!161073 call!161074)))

(declare-fun b!2543085 () Bool)

(assert (=> b!2543085 (= e!1607925 e!1607923)))

(declare-fun c!407196 () Bool)

(assert (=> b!2543085 (= c!407196 ((_ is Star!7571) r!27340))))

(declare-fun bm!161070 () Bool)

(assert (=> bm!161070 (= call!161074 (validRegex!3197 (ite c!407196 (reg!7900 r!27340) (ite c!407197 (regOne!15655 r!27340) (regTwo!15654 r!27340)))))))

(declare-fun b!2543086 () Bool)

(assert (=> b!2543086 (= e!1607921 call!161074)))

(assert (= (and d!722051 (not res!1071790)) b!2543085))

(assert (= (and b!2543085 c!407196) b!2543084))

(assert (= (and b!2543085 (not c!407196)) b!2543083))

(assert (= (and b!2543084 res!1071793) b!2543086))

(assert (= (and b!2543083 c!407197) b!2543080))

(assert (= (and b!2543083 (not c!407197)) b!2543082))

(assert (= (and b!2543080 res!1071792) b!2543079))

(assert (= (and b!2543082 (not res!1071794)) b!2543081))

(assert (= (and b!2543081 res!1071791) b!2543078))

(assert (= (or b!2543080 b!2543078) bm!161069))

(assert (= (or b!2543079 b!2543081) bm!161068))

(assert (= (or b!2543086 bm!161069) bm!161070))

(declare-fun m!2889279 () Bool)

(assert (=> bm!161068 m!2889279))

(declare-fun m!2889281 () Bool)

(assert (=> b!2543084 m!2889281))

(declare-fun m!2889283 () Bool)

(assert (=> bm!161070 m!2889283))

(assert (=> start!246908 d!722051))

(declare-fun b!2543161 () Bool)

(declare-fun e!1607974 () Regex!7571)

(declare-fun e!1607977 () Regex!7571)

(assert (=> b!2543161 (= e!1607974 e!1607977)))

(declare-fun c!407226 () Bool)

(assert (=> b!2543161 (= c!407226 ((_ is Star!7571) (reg!7900 r!27340)))))

(declare-fun b!2543162 () Bool)

(declare-fun e!1607975 () Regex!7571)

(declare-fun call!161101 () Regex!7571)

(assert (=> b!2543162 (= e!1607975 (Union!7571 (Concat!12267 call!161101 (regTwo!15654 (reg!7900 r!27340))) EmptyLang!7571))))

(declare-fun b!2543163 () Bool)

(declare-fun e!1607976 () Regex!7571)

(assert (=> b!2543163 (= e!1607976 (ite (= c!14016 (c!407171 (reg!7900 r!27340))) EmptyExpr!7571 EmptyLang!7571))))

(declare-fun b!2543164 () Bool)

(declare-fun call!161103 () Regex!7571)

(assert (=> b!2543164 (= e!1607977 (Concat!12267 call!161103 (reg!7900 r!27340)))))

(declare-fun d!722053 () Bool)

(declare-fun lt!902194 () Regex!7571)

(assert (=> d!722053 (validRegex!3197 lt!902194)))

(declare-fun e!1607978 () Regex!7571)

(assert (=> d!722053 (= lt!902194 e!1607978)))

(declare-fun c!407227 () Bool)

(assert (=> d!722053 (= c!407227 (or ((_ is EmptyExpr!7571) (reg!7900 r!27340)) ((_ is EmptyLang!7571) (reg!7900 r!27340))))))

(assert (=> d!722053 (validRegex!3197 (reg!7900 r!27340))))

(assert (=> d!722053 (= (derivativeStep!2140 (reg!7900 r!27340) c!14016) lt!902194)))

(declare-fun b!2543165 () Bool)

(declare-fun call!161102 () Regex!7571)

(assert (=> b!2543165 (= e!1607975 (Union!7571 (Concat!12267 call!161101 (regTwo!15654 (reg!7900 r!27340))) call!161102))))

(declare-fun b!2543166 () Bool)

(declare-fun c!407225 () Bool)

(assert (=> b!2543166 (= c!407225 ((_ is Union!7571) (reg!7900 r!27340)))))

(assert (=> b!2543166 (= e!1607976 e!1607974)))

(declare-fun bm!161095 () Bool)

(assert (=> bm!161095 (= call!161101 call!161103)))

(declare-fun b!2543167 () Bool)

(assert (=> b!2543167 (= e!1607978 EmptyLang!7571)))

(declare-fun b!2543168 () Bool)

(assert (=> b!2543168 (= e!1607978 e!1607976)))

(declare-fun c!407229 () Bool)

(assert (=> b!2543168 (= c!407229 ((_ is ElementMatch!7571) (reg!7900 r!27340)))))

(declare-fun bm!161096 () Bool)

(assert (=> bm!161096 (= call!161102 (derivativeStep!2140 (ite c!407225 (regOne!15655 (reg!7900 r!27340)) (regTwo!15654 (reg!7900 r!27340))) c!14016))))

(declare-fun bm!161097 () Bool)

(declare-fun call!161100 () Regex!7571)

(assert (=> bm!161097 (= call!161103 call!161100)))

(declare-fun b!2543169 () Bool)

(assert (=> b!2543169 (= e!1607974 (Union!7571 call!161102 call!161100))))

(declare-fun b!2543170 () Bool)

(declare-fun c!407228 () Bool)

(assert (=> b!2543170 (= c!407228 (nullable!2488 (regOne!15654 (reg!7900 r!27340))))))

(assert (=> b!2543170 (= e!1607977 e!1607975)))

(declare-fun bm!161098 () Bool)

(assert (=> bm!161098 (= call!161100 (derivativeStep!2140 (ite c!407225 (regTwo!15655 (reg!7900 r!27340)) (ite c!407226 (reg!7900 (reg!7900 r!27340)) (regOne!15654 (reg!7900 r!27340)))) c!14016))))

(assert (= (and d!722053 c!407227) b!2543167))

(assert (= (and d!722053 (not c!407227)) b!2543168))

(assert (= (and b!2543168 c!407229) b!2543163))

(assert (= (and b!2543168 (not c!407229)) b!2543166))

(assert (= (and b!2543166 c!407225) b!2543169))

(assert (= (and b!2543166 (not c!407225)) b!2543161))

(assert (= (and b!2543161 c!407226) b!2543164))

(assert (= (and b!2543161 (not c!407226)) b!2543170))

(assert (= (and b!2543170 c!407228) b!2543165))

(assert (= (and b!2543170 (not c!407228)) b!2543162))

(assert (= (or b!2543165 b!2543162) bm!161095))

(assert (= (or b!2543164 bm!161095) bm!161097))

(assert (= (or b!2543169 bm!161097) bm!161098))

(assert (= (or b!2543169 b!2543165) bm!161096))

(declare-fun m!2889323 () Bool)

(assert (=> d!722053 m!2889323))

(assert (=> d!722053 m!2889237))

(declare-fun m!2889325 () Bool)

(assert (=> bm!161096 m!2889325))

(declare-fun m!2889327 () Bool)

(assert (=> b!2543170 m!2889327))

(declare-fun m!2889329 () Bool)

(assert (=> bm!161098 m!2889329))

(assert (=> b!2543012 d!722053))

(declare-fun d!722065 () Bool)

(assert (=> d!722065 (= (nullable!2488 (derivative!266 lt!902179 tl!4068)) (nullableFct!717 (derivative!266 lt!902179 tl!4068)))))

(declare-fun bs!469451 () Bool)

(assert (= bs!469451 d!722065))

(assert (=> bs!469451 m!2889239))

(declare-fun m!2889331 () Bool)

(assert (=> bs!469451 m!2889331))

(assert (=> b!2543005 d!722065))

(declare-fun d!722067 () Bool)

(declare-fun lt!902195 () Regex!7571)

(assert (=> d!722067 (validRegex!3197 lt!902195)))

(declare-fun e!1607981 () Regex!7571)

(assert (=> d!722067 (= lt!902195 e!1607981)))

(declare-fun c!407230 () Bool)

(assert (=> d!722067 (= c!407230 ((_ is Cons!29536) tl!4068))))

(assert (=> d!722067 (validRegex!3197 lt!902179)))

(assert (=> d!722067 (= (derivative!266 lt!902179 tl!4068) lt!902195)))

(declare-fun b!2543181 () Bool)

(assert (=> b!2543181 (= e!1607981 (derivative!266 (derivativeStep!2140 lt!902179 (h!34956 tl!4068)) (t!211335 tl!4068)))))

(declare-fun b!2543182 () Bool)

(assert (=> b!2543182 (= e!1607981 lt!902179)))

(assert (= (and d!722067 c!407230) b!2543181))

(assert (= (and d!722067 (not c!407230)) b!2543182))

(declare-fun m!2889333 () Bool)

(assert (=> d!722067 m!2889333))

(declare-fun m!2889335 () Bool)

(assert (=> d!722067 m!2889335))

(declare-fun m!2889337 () Bool)

(assert (=> b!2543181 m!2889337))

(assert (=> b!2543181 m!2889337))

(declare-fun m!2889339 () Bool)

(assert (=> b!2543181 m!2889339))

(assert (=> b!2543005 d!722067))

(declare-fun b!2543183 () Bool)

(declare-fun e!1607982 () Regex!7571)

(declare-fun e!1607985 () Regex!7571)

(assert (=> b!2543183 (= e!1607982 e!1607985)))

(declare-fun c!407232 () Bool)

(assert (=> b!2543183 (= c!407232 ((_ is Star!7571) r!27340))))

(declare-fun b!2543184 () Bool)

(declare-fun e!1607983 () Regex!7571)

(declare-fun call!161105 () Regex!7571)

(assert (=> b!2543184 (= e!1607983 (Union!7571 (Concat!12267 call!161105 (regTwo!15654 r!27340)) EmptyLang!7571))))

(declare-fun b!2543185 () Bool)

(declare-fun e!1607984 () Regex!7571)

(assert (=> b!2543185 (= e!1607984 (ite (= c!14016 (c!407171 r!27340)) EmptyExpr!7571 EmptyLang!7571))))

(declare-fun b!2543186 () Bool)

(declare-fun call!161107 () Regex!7571)

(assert (=> b!2543186 (= e!1607985 (Concat!12267 call!161107 r!27340))))

(declare-fun d!722069 () Bool)

(declare-fun lt!902196 () Regex!7571)

(assert (=> d!722069 (validRegex!3197 lt!902196)))

(declare-fun e!1607986 () Regex!7571)

(assert (=> d!722069 (= lt!902196 e!1607986)))

(declare-fun c!407233 () Bool)

(assert (=> d!722069 (= c!407233 (or ((_ is EmptyExpr!7571) r!27340) ((_ is EmptyLang!7571) r!27340)))))

(assert (=> d!722069 (validRegex!3197 r!27340)))

(assert (=> d!722069 (= (derivativeStep!2140 r!27340 c!14016) lt!902196)))

(declare-fun call!161106 () Regex!7571)

(declare-fun b!2543187 () Bool)

(assert (=> b!2543187 (= e!1607983 (Union!7571 (Concat!12267 call!161105 (regTwo!15654 r!27340)) call!161106))))

(declare-fun b!2543188 () Bool)

(declare-fun c!407231 () Bool)

(assert (=> b!2543188 (= c!407231 ((_ is Union!7571) r!27340))))

(assert (=> b!2543188 (= e!1607984 e!1607982)))

(declare-fun bm!161099 () Bool)

(assert (=> bm!161099 (= call!161105 call!161107)))

(declare-fun b!2543189 () Bool)

(assert (=> b!2543189 (= e!1607986 EmptyLang!7571)))

(declare-fun b!2543190 () Bool)

(assert (=> b!2543190 (= e!1607986 e!1607984)))

(declare-fun c!407235 () Bool)

(assert (=> b!2543190 (= c!407235 ((_ is ElementMatch!7571) r!27340))))

(declare-fun bm!161100 () Bool)

(assert (=> bm!161100 (= call!161106 (derivativeStep!2140 (ite c!407231 (regOne!15655 r!27340) (regTwo!15654 r!27340)) c!14016))))

(declare-fun bm!161101 () Bool)

(declare-fun call!161104 () Regex!7571)

(assert (=> bm!161101 (= call!161107 call!161104)))

(declare-fun b!2543191 () Bool)

(assert (=> b!2543191 (= e!1607982 (Union!7571 call!161106 call!161104))))

(declare-fun b!2543192 () Bool)

(declare-fun c!407234 () Bool)

(assert (=> b!2543192 (= c!407234 (nullable!2488 (regOne!15654 r!27340)))))

(assert (=> b!2543192 (= e!1607985 e!1607983)))

(declare-fun bm!161102 () Bool)

(assert (=> bm!161102 (= call!161104 (derivativeStep!2140 (ite c!407231 (regTwo!15655 r!27340) (ite c!407232 (reg!7900 r!27340) (regOne!15654 r!27340))) c!14016))))

(assert (= (and d!722069 c!407233) b!2543189))

(assert (= (and d!722069 (not c!407233)) b!2543190))

(assert (= (and b!2543190 c!407235) b!2543185))

(assert (= (and b!2543190 (not c!407235)) b!2543188))

(assert (= (and b!2543188 c!407231) b!2543191))

(assert (= (and b!2543188 (not c!407231)) b!2543183))

(assert (= (and b!2543183 c!407232) b!2543186))

(assert (= (and b!2543183 (not c!407232)) b!2543192))

(assert (= (and b!2543192 c!407234) b!2543187))

(assert (= (and b!2543192 (not c!407234)) b!2543184))

(assert (= (or b!2543187 b!2543184) bm!161099))

(assert (= (or b!2543186 bm!161099) bm!161101))

(assert (= (or b!2543191 bm!161101) bm!161102))

(assert (= (or b!2543191 b!2543187) bm!161100))

(declare-fun m!2889341 () Bool)

(assert (=> d!722069 m!2889341))

(assert (=> d!722069 m!2889251))

(declare-fun m!2889343 () Bool)

(assert (=> bm!161100 m!2889343))

(declare-fun m!2889345 () Bool)

(assert (=> b!2543192 m!2889345))

(declare-fun m!2889347 () Bool)

(assert (=> bm!161102 m!2889347))

(assert (=> b!2543005 d!722069))

(declare-fun b!2543231 () Bool)

(declare-fun e!1607997 () Bool)

(declare-fun tp!812008 () Bool)

(declare-fun tp!812010 () Bool)

(assert (=> b!2543231 (= e!1607997 (and tp!812008 tp!812010))))

(assert (=> b!2543010 (= tp!811957 e!1607997)))

(declare-fun b!2543228 () Bool)

(assert (=> b!2543228 (= e!1607997 tp_is_empty!12997)))

(declare-fun b!2543229 () Bool)

(declare-fun tp!812009 () Bool)

(declare-fun tp!812011 () Bool)

(assert (=> b!2543229 (= e!1607997 (and tp!812009 tp!812011))))

(declare-fun b!2543230 () Bool)

(declare-fun tp!812007 () Bool)

(assert (=> b!2543230 (= e!1607997 tp!812007)))

(assert (= (and b!2543010 ((_ is ElementMatch!7571) (regOne!15655 r!27340))) b!2543228))

(assert (= (and b!2543010 ((_ is Concat!12267) (regOne!15655 r!27340))) b!2543229))

(assert (= (and b!2543010 ((_ is Star!7571) (regOne!15655 r!27340))) b!2543230))

(assert (= (and b!2543010 ((_ is Union!7571) (regOne!15655 r!27340))) b!2543231))

(declare-fun b!2543235 () Bool)

(declare-fun e!1607998 () Bool)

(declare-fun tp!812013 () Bool)

(declare-fun tp!812015 () Bool)

(assert (=> b!2543235 (= e!1607998 (and tp!812013 tp!812015))))

(assert (=> b!2543010 (= tp!811955 e!1607998)))

(declare-fun b!2543232 () Bool)

(assert (=> b!2543232 (= e!1607998 tp_is_empty!12997)))

(declare-fun b!2543233 () Bool)

(declare-fun tp!812014 () Bool)

(declare-fun tp!812016 () Bool)

(assert (=> b!2543233 (= e!1607998 (and tp!812014 tp!812016))))

(declare-fun b!2543234 () Bool)

(declare-fun tp!812012 () Bool)

(assert (=> b!2543234 (= e!1607998 tp!812012)))

(assert (= (and b!2543010 ((_ is ElementMatch!7571) (regTwo!15655 r!27340))) b!2543232))

(assert (= (and b!2543010 ((_ is Concat!12267) (regTwo!15655 r!27340))) b!2543233))

(assert (= (and b!2543010 ((_ is Star!7571) (regTwo!15655 r!27340))) b!2543234))

(assert (= (and b!2543010 ((_ is Union!7571) (regTwo!15655 r!27340))) b!2543235))

(declare-fun b!2543239 () Bool)

(declare-fun e!1607999 () Bool)

(declare-fun tp!812018 () Bool)

(declare-fun tp!812020 () Bool)

(assert (=> b!2543239 (= e!1607999 (and tp!812018 tp!812020))))

(assert (=> b!2543009 (= tp!811953 e!1607999)))

(declare-fun b!2543236 () Bool)

(assert (=> b!2543236 (= e!1607999 tp_is_empty!12997)))

(declare-fun b!2543237 () Bool)

(declare-fun tp!812019 () Bool)

(declare-fun tp!812021 () Bool)

(assert (=> b!2543237 (= e!1607999 (and tp!812019 tp!812021))))

(declare-fun b!2543238 () Bool)

(declare-fun tp!812017 () Bool)

(assert (=> b!2543238 (= e!1607999 tp!812017)))

(assert (= (and b!2543009 ((_ is ElementMatch!7571) (regOne!15654 r!27340))) b!2543236))

(assert (= (and b!2543009 ((_ is Concat!12267) (regOne!15654 r!27340))) b!2543237))

(assert (= (and b!2543009 ((_ is Star!7571) (regOne!15654 r!27340))) b!2543238))

(assert (= (and b!2543009 ((_ is Union!7571) (regOne!15654 r!27340))) b!2543239))

(declare-fun b!2543243 () Bool)

(declare-fun e!1608000 () Bool)

(declare-fun tp!812023 () Bool)

(declare-fun tp!812025 () Bool)

(assert (=> b!2543243 (= e!1608000 (and tp!812023 tp!812025))))

(assert (=> b!2543009 (= tp!811954 e!1608000)))

(declare-fun b!2543240 () Bool)

(assert (=> b!2543240 (= e!1608000 tp_is_empty!12997)))

(declare-fun b!2543241 () Bool)

(declare-fun tp!812024 () Bool)

(declare-fun tp!812026 () Bool)

(assert (=> b!2543241 (= e!1608000 (and tp!812024 tp!812026))))

(declare-fun b!2543242 () Bool)

(declare-fun tp!812022 () Bool)

(assert (=> b!2543242 (= e!1608000 tp!812022)))

(assert (= (and b!2543009 ((_ is ElementMatch!7571) (regTwo!15654 r!27340))) b!2543240))

(assert (= (and b!2543009 ((_ is Concat!12267) (regTwo!15654 r!27340))) b!2543241))

(assert (= (and b!2543009 ((_ is Star!7571) (regTwo!15654 r!27340))) b!2543242))

(assert (= (and b!2543009 ((_ is Union!7571) (regTwo!15654 r!27340))) b!2543243))

(declare-fun b!2543248 () Bool)

(declare-fun e!1608003 () Bool)

(declare-fun tp!812029 () Bool)

(assert (=> b!2543248 (= e!1608003 (and tp_is_empty!12997 tp!812029))))

(assert (=> b!2543007 (= tp!811956 e!1608003)))

(assert (= (and b!2543007 ((_ is Cons!29536) (t!211335 tl!4068))) b!2543248))

(declare-fun b!2543252 () Bool)

(declare-fun e!1608004 () Bool)

(declare-fun tp!812031 () Bool)

(declare-fun tp!812033 () Bool)

(assert (=> b!2543252 (= e!1608004 (and tp!812031 tp!812033))))

(assert (=> b!2543011 (= tp!811958 e!1608004)))

(declare-fun b!2543249 () Bool)

(assert (=> b!2543249 (= e!1608004 tp_is_empty!12997)))

(declare-fun b!2543250 () Bool)

(declare-fun tp!812032 () Bool)

(declare-fun tp!812034 () Bool)

(assert (=> b!2543250 (= e!1608004 (and tp!812032 tp!812034))))

(declare-fun b!2543251 () Bool)

(declare-fun tp!812030 () Bool)

(assert (=> b!2543251 (= e!1608004 tp!812030)))

(assert (= (and b!2543011 ((_ is ElementMatch!7571) (reg!7900 r!27340))) b!2543249))

(assert (= (and b!2543011 ((_ is Concat!12267) (reg!7900 r!27340))) b!2543250))

(assert (= (and b!2543011 ((_ is Star!7571) (reg!7900 r!27340))) b!2543251))

(assert (= (and b!2543011 ((_ is Union!7571) (reg!7900 r!27340))) b!2543252))

(check-sat (not bm!161102) (not d!722067) (not d!722045) (not b!2543238) (not d!722065) (not b!2543059) (not d!722053) (not b!2543076) (not bm!161061) (not b!2543239) (not b!2543233) (not b!2543252) (not b!2543192) (not b!2543242) (not b!2543170) (not bm!161070) tp_is_empty!12997 (not b!2543243) (not b!2543251) (not bm!161100) (not b!2543181) (not d!722069) (not b!2543237) (not b!2543250) (not b!2543235) (not bm!161063) (not b!2543241) (not b!2543230) (not b!2543229) (not b!2543084) (not bm!161068) (not b!2543231) (not b!2543248) (not d!722043) (not bm!161098) (not bm!161096) (not b!2543234))
(check-sat)
