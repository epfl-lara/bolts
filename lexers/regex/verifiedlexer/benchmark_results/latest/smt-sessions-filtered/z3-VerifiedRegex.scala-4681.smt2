; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243456 () Bool)

(assert start!243456)

(declare-fun res!1054248 () Bool)

(declare-fun e!1581674 () Bool)

(assert (=> start!243456 (=> (not res!1054248) (not e!1581674))))

(declare-datatypes ((C!14832 0))(
  ( (C!14833 (val!9068 Int)) )
))
(declare-datatypes ((Regex!7337 0))(
  ( (ElementMatch!7337 (c!396135 C!14832)) (Concat!12033 (regOne!15186 Regex!7337) (regTwo!15186 Regex!7337)) (EmptyExpr!7337) (Star!7337 (reg!7666 Regex!7337)) (EmptyLang!7337) (Union!7337 (regOne!15187 Regex!7337) (regTwo!15187 Regex!7337)) )
))
(declare-fun r!27340 () Regex!7337)

(declare-fun validRegex!2963 (Regex!7337) Bool)

(assert (=> start!243456 (= res!1054248 (validRegex!2963 r!27340))))

(assert (=> start!243456 e!1581674))

(declare-fun e!1581673 () Bool)

(assert (=> start!243456 e!1581673))

(declare-fun tp_is_empty!12529 () Bool)

(assert (=> start!243456 tp_is_empty!12529))

(declare-fun e!1581672 () Bool)

(assert (=> start!243456 e!1581672))

(declare-fun b!2491814 () Bool)

(declare-fun res!1054247 () Bool)

(assert (=> b!2491814 (=> (not res!1054247) (not e!1581674))))

(declare-datatypes ((List!29402 0))(
  ( (Nil!29302) (Cons!29302 (h!34722 C!14832) (t!211101 List!29402)) )
))
(declare-fun tl!4068 () List!29402)

(declare-fun c!14016 () C!14832)

(declare-fun nullable!2254 (Regex!7337) Bool)

(declare-fun derivative!32 (Regex!7337 List!29402) Regex!7337)

(declare-fun derivativeStep!1906 (Regex!7337 C!14832) Regex!7337)

(assert (=> b!2491814 (= res!1054247 (not (nullable!2254 (derivative!32 (derivativeStep!1906 (regOne!15187 r!27340) c!14016) tl!4068))))))

(declare-fun b!2491815 () Bool)

(declare-fun tp!797982 () Bool)

(declare-fun tp!797984 () Bool)

(assert (=> b!2491815 (= e!1581673 (and tp!797982 tp!797984))))

(declare-fun b!2491816 () Bool)

(declare-fun tp!797985 () Bool)

(assert (=> b!2491816 (= e!1581672 (and tp_is_empty!12529 tp!797985))))

(declare-fun b!2491817 () Bool)

(declare-fun tp!797986 () Bool)

(assert (=> b!2491817 (= e!1581673 tp!797986)))

(declare-fun b!2491818 () Bool)

(declare-fun res!1054246 () Bool)

(assert (=> b!2491818 (=> (not res!1054246) (not e!1581674))))

(get-info :version)

(assert (=> b!2491818 (= res!1054246 (and (not ((_ is EmptyExpr!7337) r!27340)) (not ((_ is EmptyLang!7337) r!27340)) (not ((_ is ElementMatch!7337) r!27340)) ((_ is Union!7337) r!27340)))))

(declare-fun b!2491819 () Bool)

(assert (=> b!2491819 (= e!1581674 (not (validRegex!2963 (regTwo!15187 r!27340))))))

(declare-fun b!2491820 () Bool)

(assert (=> b!2491820 (= e!1581673 tp_is_empty!12529)))

(declare-fun b!2491821 () Bool)

(declare-fun tp!797983 () Bool)

(declare-fun tp!797981 () Bool)

(assert (=> b!2491821 (= e!1581673 (and tp!797983 tp!797981))))

(declare-fun b!2491822 () Bool)

(declare-fun res!1054245 () Bool)

(assert (=> b!2491822 (=> (not res!1054245) (not e!1581674))))

(assert (=> b!2491822 (= res!1054245 (nullable!2254 (derivative!32 (derivativeStep!1906 r!27340 c!14016) tl!4068)))))

(assert (= (and start!243456 res!1054248) b!2491822))

(assert (= (and b!2491822 res!1054245) b!2491818))

(assert (= (and b!2491818 res!1054246) b!2491814))

(assert (= (and b!2491814 res!1054247) b!2491819))

(assert (= (and start!243456 ((_ is ElementMatch!7337) r!27340)) b!2491820))

(assert (= (and start!243456 ((_ is Concat!12033) r!27340)) b!2491821))

(assert (= (and start!243456 ((_ is Star!7337) r!27340)) b!2491817))

(assert (= (and start!243456 ((_ is Union!7337) r!27340)) b!2491815))

(assert (= (and start!243456 ((_ is Cons!29302) tl!4068)) b!2491816))

(declare-fun m!2858265 () Bool)

(assert (=> start!243456 m!2858265))

(declare-fun m!2858267 () Bool)

(assert (=> b!2491814 m!2858267))

(assert (=> b!2491814 m!2858267))

(declare-fun m!2858269 () Bool)

(assert (=> b!2491814 m!2858269))

(assert (=> b!2491814 m!2858269))

(declare-fun m!2858271 () Bool)

(assert (=> b!2491814 m!2858271))

(declare-fun m!2858273 () Bool)

(assert (=> b!2491819 m!2858273))

(declare-fun m!2858275 () Bool)

(assert (=> b!2491822 m!2858275))

(assert (=> b!2491822 m!2858275))

(declare-fun m!2858277 () Bool)

(assert (=> b!2491822 m!2858277))

(assert (=> b!2491822 m!2858277))

(declare-fun m!2858279 () Bool)

(assert (=> b!2491822 m!2858279))

(check-sat (not b!2491814) (not b!2491817) tp_is_empty!12529 (not start!243456) (not b!2491816) (not b!2491821) (not b!2491815) (not b!2491822) (not b!2491819))
(check-sat)
(get-model)

(declare-fun b!2491847 () Bool)

(declare-fun e!1581695 () Bool)

(declare-fun call!153257 () Bool)

(assert (=> b!2491847 (= e!1581695 call!153257)))

(declare-fun b!2491848 () Bool)

(declare-fun e!1581694 () Bool)

(declare-fun e!1581697 () Bool)

(assert (=> b!2491848 (= e!1581694 e!1581697)))

(declare-fun res!1054261 () Bool)

(assert (=> b!2491848 (=> (not res!1054261) (not e!1581697))))

(assert (=> b!2491848 (= res!1054261 call!153257)))

(declare-fun call!153258 () Bool)

(declare-fun c!396143 () Bool)

(declare-fun c!396144 () Bool)

(declare-fun bm!153251 () Bool)

(assert (=> bm!153251 (= call!153258 (validRegex!2963 (ite c!396143 (reg!7666 r!27340) (ite c!396144 (regOne!15187 r!27340) (regTwo!15186 r!27340)))))))

(declare-fun b!2491849 () Bool)

(declare-fun e!1581692 () Bool)

(declare-fun e!1581696 () Bool)

(assert (=> b!2491849 (= e!1581692 e!1581696)))

(declare-fun res!1054262 () Bool)

(assert (=> b!2491849 (= res!1054262 (not (nullable!2254 (reg!7666 r!27340))))))

(assert (=> b!2491849 (=> (not res!1054262) (not e!1581696))))

(declare-fun b!2491850 () Bool)

(declare-fun call!153256 () Bool)

(assert (=> b!2491850 (= e!1581697 call!153256)))

(declare-fun bm!153252 () Bool)

(assert (=> bm!153252 (= call!153256 call!153258)))

(declare-fun d!714480 () Bool)

(declare-fun res!1054260 () Bool)

(declare-fun e!1581693 () Bool)

(assert (=> d!714480 (=> res!1054260 e!1581693)))

(assert (=> d!714480 (= res!1054260 ((_ is ElementMatch!7337) r!27340))))

(assert (=> d!714480 (= (validRegex!2963 r!27340) e!1581693)))

(declare-fun b!2491851 () Bool)

(declare-fun e!1581698 () Bool)

(assert (=> b!2491851 (= e!1581692 e!1581698)))

(assert (=> b!2491851 (= c!396144 ((_ is Union!7337) r!27340))))

(declare-fun b!2491852 () Bool)

(assert (=> b!2491852 (= e!1581696 call!153258)))

(declare-fun bm!153253 () Bool)

(assert (=> bm!153253 (= call!153257 (validRegex!2963 (ite c!396144 (regTwo!15187 r!27340) (regOne!15186 r!27340))))))

(declare-fun b!2491853 () Bool)

(assert (=> b!2491853 (= e!1581693 e!1581692)))

(assert (=> b!2491853 (= c!396143 ((_ is Star!7337) r!27340))))

(declare-fun b!2491854 () Bool)

(declare-fun res!1054263 () Bool)

(assert (=> b!2491854 (=> (not res!1054263) (not e!1581695))))

(assert (=> b!2491854 (= res!1054263 call!153256)))

(assert (=> b!2491854 (= e!1581698 e!1581695)))

(declare-fun b!2491855 () Bool)

(declare-fun res!1054259 () Bool)

(assert (=> b!2491855 (=> res!1054259 e!1581694)))

(assert (=> b!2491855 (= res!1054259 (not ((_ is Concat!12033) r!27340)))))

(assert (=> b!2491855 (= e!1581698 e!1581694)))

(assert (= (and d!714480 (not res!1054260)) b!2491853))

(assert (= (and b!2491853 c!396143) b!2491849))

(assert (= (and b!2491853 (not c!396143)) b!2491851))

(assert (= (and b!2491849 res!1054262) b!2491852))

(assert (= (and b!2491851 c!396144) b!2491854))

(assert (= (and b!2491851 (not c!396144)) b!2491855))

(assert (= (and b!2491854 res!1054263) b!2491847))

(assert (= (and b!2491855 (not res!1054259)) b!2491848))

(assert (= (and b!2491848 res!1054261) b!2491850))

(assert (= (or b!2491854 b!2491850) bm!153252))

(assert (= (or b!2491847 b!2491848) bm!153253))

(assert (= (or b!2491852 bm!153252) bm!153251))

(declare-fun m!2858291 () Bool)

(assert (=> bm!153251 m!2858291))

(declare-fun m!2858293 () Bool)

(assert (=> b!2491849 m!2858293))

(declare-fun m!2858295 () Bool)

(assert (=> bm!153253 m!2858295))

(assert (=> start!243456 d!714480))

(declare-fun b!2491856 () Bool)

(declare-fun e!1581702 () Bool)

(declare-fun call!153260 () Bool)

(assert (=> b!2491856 (= e!1581702 call!153260)))

(declare-fun b!2491857 () Bool)

(declare-fun e!1581701 () Bool)

(declare-fun e!1581704 () Bool)

(assert (=> b!2491857 (= e!1581701 e!1581704)))

(declare-fun res!1054266 () Bool)

(assert (=> b!2491857 (=> (not res!1054266) (not e!1581704))))

(assert (=> b!2491857 (= res!1054266 call!153260)))

(declare-fun call!153261 () Bool)

(declare-fun c!396146 () Bool)

(declare-fun c!396145 () Bool)

(declare-fun bm!153254 () Bool)

(assert (=> bm!153254 (= call!153261 (validRegex!2963 (ite c!396145 (reg!7666 (regTwo!15187 r!27340)) (ite c!396146 (regOne!15187 (regTwo!15187 r!27340)) (regTwo!15186 (regTwo!15187 r!27340))))))))

(declare-fun b!2491858 () Bool)

(declare-fun e!1581699 () Bool)

(declare-fun e!1581703 () Bool)

(assert (=> b!2491858 (= e!1581699 e!1581703)))

(declare-fun res!1054267 () Bool)

(assert (=> b!2491858 (= res!1054267 (not (nullable!2254 (reg!7666 (regTwo!15187 r!27340)))))))

(assert (=> b!2491858 (=> (not res!1054267) (not e!1581703))))

(declare-fun b!2491859 () Bool)

(declare-fun call!153259 () Bool)

(assert (=> b!2491859 (= e!1581704 call!153259)))

(declare-fun bm!153255 () Bool)

(assert (=> bm!153255 (= call!153259 call!153261)))

(declare-fun d!714486 () Bool)

(declare-fun res!1054265 () Bool)

(declare-fun e!1581700 () Bool)

(assert (=> d!714486 (=> res!1054265 e!1581700)))

(assert (=> d!714486 (= res!1054265 ((_ is ElementMatch!7337) (regTwo!15187 r!27340)))))

(assert (=> d!714486 (= (validRegex!2963 (regTwo!15187 r!27340)) e!1581700)))

(declare-fun b!2491860 () Bool)

(declare-fun e!1581705 () Bool)

(assert (=> b!2491860 (= e!1581699 e!1581705)))

(assert (=> b!2491860 (= c!396146 ((_ is Union!7337) (regTwo!15187 r!27340)))))

(declare-fun b!2491861 () Bool)

(assert (=> b!2491861 (= e!1581703 call!153261)))

(declare-fun bm!153256 () Bool)

(assert (=> bm!153256 (= call!153260 (validRegex!2963 (ite c!396146 (regTwo!15187 (regTwo!15187 r!27340)) (regOne!15186 (regTwo!15187 r!27340)))))))

(declare-fun b!2491862 () Bool)

(assert (=> b!2491862 (= e!1581700 e!1581699)))

(assert (=> b!2491862 (= c!396145 ((_ is Star!7337) (regTwo!15187 r!27340)))))

(declare-fun b!2491863 () Bool)

(declare-fun res!1054268 () Bool)

(assert (=> b!2491863 (=> (not res!1054268) (not e!1581702))))

(assert (=> b!2491863 (= res!1054268 call!153259)))

(assert (=> b!2491863 (= e!1581705 e!1581702)))

(declare-fun b!2491864 () Bool)

(declare-fun res!1054264 () Bool)

(assert (=> b!2491864 (=> res!1054264 e!1581701)))

(assert (=> b!2491864 (= res!1054264 (not ((_ is Concat!12033) (regTwo!15187 r!27340))))))

(assert (=> b!2491864 (= e!1581705 e!1581701)))

(assert (= (and d!714486 (not res!1054265)) b!2491862))

(assert (= (and b!2491862 c!396145) b!2491858))

(assert (= (and b!2491862 (not c!396145)) b!2491860))

(assert (= (and b!2491858 res!1054267) b!2491861))

(assert (= (and b!2491860 c!396146) b!2491863))

(assert (= (and b!2491860 (not c!396146)) b!2491864))

(assert (= (and b!2491863 res!1054268) b!2491856))

(assert (= (and b!2491864 (not res!1054264)) b!2491857))

(assert (= (and b!2491857 res!1054266) b!2491859))

(assert (= (or b!2491863 b!2491859) bm!153255))

(assert (= (or b!2491856 b!2491857) bm!153256))

(assert (= (or b!2491861 bm!153255) bm!153254))

(declare-fun m!2858297 () Bool)

(assert (=> bm!153254 m!2858297))

(declare-fun m!2858299 () Bool)

(assert (=> b!2491858 m!2858299))

(declare-fun m!2858301 () Bool)

(assert (=> bm!153256 m!2858301))

(assert (=> b!2491819 d!714486))

(declare-fun d!714488 () Bool)

(declare-fun nullableFct!557 (Regex!7337) Bool)

(assert (=> d!714488 (= (nullable!2254 (derivative!32 (derivativeStep!1906 (regOne!15187 r!27340) c!14016) tl!4068)) (nullableFct!557 (derivative!32 (derivativeStep!1906 (regOne!15187 r!27340) c!14016) tl!4068)))))

(declare-fun bs!468375 () Bool)

(assert (= bs!468375 d!714488))

(assert (=> bs!468375 m!2858269))

(declare-fun m!2858303 () Bool)

(assert (=> bs!468375 m!2858303))

(assert (=> b!2491814 d!714488))

(declare-fun d!714490 () Bool)

(declare-fun lt!893988 () Regex!7337)

(assert (=> d!714490 (validRegex!2963 lt!893988)))

(declare-fun e!1581718 () Regex!7337)

(assert (=> d!714490 (= lt!893988 e!1581718)))

(declare-fun c!396159 () Bool)

(assert (=> d!714490 (= c!396159 ((_ is Cons!29302) tl!4068))))

(assert (=> d!714490 (validRegex!2963 (derivativeStep!1906 (regOne!15187 r!27340) c!14016))))

(assert (=> d!714490 (= (derivative!32 (derivativeStep!1906 (regOne!15187 r!27340) c!14016) tl!4068) lt!893988)))

(declare-fun b!2491889 () Bool)

(assert (=> b!2491889 (= e!1581718 (derivative!32 (derivativeStep!1906 (derivativeStep!1906 (regOne!15187 r!27340) c!14016) (h!34722 tl!4068)) (t!211101 tl!4068)))))

(declare-fun b!2491890 () Bool)

(assert (=> b!2491890 (= e!1581718 (derivativeStep!1906 (regOne!15187 r!27340) c!14016))))

(assert (= (and d!714490 c!396159) b!2491889))

(assert (= (and d!714490 (not c!396159)) b!2491890))

(declare-fun m!2858305 () Bool)

(assert (=> d!714490 m!2858305))

(assert (=> d!714490 m!2858267))

(declare-fun m!2858307 () Bool)

(assert (=> d!714490 m!2858307))

(assert (=> b!2491889 m!2858267))

(declare-fun m!2858309 () Bool)

(assert (=> b!2491889 m!2858309))

(assert (=> b!2491889 m!2858309))

(declare-fun m!2858311 () Bool)

(assert (=> b!2491889 m!2858311))

(assert (=> b!2491814 d!714490))

(declare-fun b!2491950 () Bool)

(declare-fun e!1581756 () Regex!7337)

(declare-fun call!153294 () Regex!7337)

(declare-fun call!153293 () Regex!7337)

(assert (=> b!2491950 (= e!1581756 (Union!7337 call!153294 call!153293))))

(declare-fun b!2491951 () Bool)

(declare-fun c!396182 () Bool)

(assert (=> b!2491951 (= c!396182 (nullable!2254 (regOne!15186 (regOne!15187 r!27340))))))

(declare-fun e!1581760 () Regex!7337)

(declare-fun e!1581757 () Regex!7337)

(assert (=> b!2491951 (= e!1581760 e!1581757)))

(declare-fun b!2491952 () Bool)

(declare-fun call!153292 () Regex!7337)

(assert (=> b!2491952 (= e!1581757 (Union!7337 (Concat!12033 call!153292 (regTwo!15186 (regOne!15187 r!27340))) EmptyLang!7337))))

(declare-fun b!2491953 () Bool)

(assert (=> b!2491953 (= e!1581757 (Union!7337 (Concat!12033 call!153292 (regTwo!15186 (regOne!15187 r!27340))) call!153293))))

(declare-fun b!2491954 () Bool)

(declare-fun e!1581759 () Regex!7337)

(declare-fun e!1581758 () Regex!7337)

(assert (=> b!2491954 (= e!1581759 e!1581758)))

(declare-fun c!396184 () Bool)

(assert (=> b!2491954 (= c!396184 ((_ is ElementMatch!7337) (regOne!15187 r!27340)))))

(declare-fun bm!153286 () Bool)

(declare-fun call!153291 () Regex!7337)

(assert (=> bm!153286 (= call!153292 call!153291)))

(declare-fun bm!153287 () Bool)

(declare-fun c!396183 () Bool)

(assert (=> bm!153287 (= call!153293 (derivativeStep!1906 (ite c!396183 (regTwo!15187 (regOne!15187 r!27340)) (regTwo!15186 (regOne!15187 r!27340))) c!14016))))

(declare-fun b!2491955 () Bool)

(assert (=> b!2491955 (= c!396183 ((_ is Union!7337) (regOne!15187 r!27340)))))

(assert (=> b!2491955 (= e!1581758 e!1581756)))

(declare-fun d!714492 () Bool)

(declare-fun lt!893993 () Regex!7337)

(assert (=> d!714492 (validRegex!2963 lt!893993)))

(assert (=> d!714492 (= lt!893993 e!1581759)))

(declare-fun c!396185 () Bool)

(assert (=> d!714492 (= c!396185 (or ((_ is EmptyExpr!7337) (regOne!15187 r!27340)) ((_ is EmptyLang!7337) (regOne!15187 r!27340))))))

(assert (=> d!714492 (validRegex!2963 (regOne!15187 r!27340))))

(assert (=> d!714492 (= (derivativeStep!1906 (regOne!15187 r!27340) c!14016) lt!893993)))

(declare-fun c!396186 () Bool)

(declare-fun bm!153288 () Bool)

(assert (=> bm!153288 (= call!153294 (derivativeStep!1906 (ite c!396183 (regOne!15187 (regOne!15187 r!27340)) (ite c!396186 (reg!7666 (regOne!15187 r!27340)) (regOne!15186 (regOne!15187 r!27340)))) c!14016))))

(declare-fun b!2491956 () Bool)

(assert (=> b!2491956 (= e!1581756 e!1581760)))

(assert (=> b!2491956 (= c!396186 ((_ is Star!7337) (regOne!15187 r!27340)))))

(declare-fun b!2491957 () Bool)

(assert (=> b!2491957 (= e!1581758 (ite (= c!14016 (c!396135 (regOne!15187 r!27340))) EmptyExpr!7337 EmptyLang!7337))))

(declare-fun b!2491958 () Bool)

(assert (=> b!2491958 (= e!1581759 EmptyLang!7337)))

(declare-fun b!2491959 () Bool)

(assert (=> b!2491959 (= e!1581760 (Concat!12033 call!153291 (regOne!15187 r!27340)))))

(declare-fun bm!153289 () Bool)

(assert (=> bm!153289 (= call!153291 call!153294)))

(assert (= (and d!714492 c!396185) b!2491958))

(assert (= (and d!714492 (not c!396185)) b!2491954))

(assert (= (and b!2491954 c!396184) b!2491957))

(assert (= (and b!2491954 (not c!396184)) b!2491955))

(assert (= (and b!2491955 c!396183) b!2491950))

(assert (= (and b!2491955 (not c!396183)) b!2491956))

(assert (= (and b!2491956 c!396186) b!2491959))

(assert (= (and b!2491956 (not c!396186)) b!2491951))

(assert (= (and b!2491951 c!396182) b!2491953))

(assert (= (and b!2491951 (not c!396182)) b!2491952))

(assert (= (or b!2491953 b!2491952) bm!153286))

(assert (= (or b!2491959 bm!153286) bm!153289))

(assert (= (or b!2491950 b!2491953) bm!153287))

(assert (= (or b!2491950 bm!153289) bm!153288))

(declare-fun m!2858337 () Bool)

(assert (=> b!2491951 m!2858337))

(declare-fun m!2858345 () Bool)

(assert (=> bm!153287 m!2858345))

(declare-fun m!2858349 () Bool)

(assert (=> d!714492 m!2858349))

(declare-fun m!2858351 () Bool)

(assert (=> d!714492 m!2858351))

(declare-fun m!2858355 () Bool)

(assert (=> bm!153288 m!2858355))

(assert (=> b!2491814 d!714492))

(declare-fun d!714504 () Bool)

(assert (=> d!714504 (= (nullable!2254 (derivative!32 (derivativeStep!1906 r!27340 c!14016) tl!4068)) (nullableFct!557 (derivative!32 (derivativeStep!1906 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468377 () Bool)

(assert (= bs!468377 d!714504))

(assert (=> bs!468377 m!2858277))

(declare-fun m!2858357 () Bool)

(assert (=> bs!468377 m!2858357))

(assert (=> b!2491822 d!714504))

(declare-fun d!714506 () Bool)

(declare-fun lt!893995 () Regex!7337)

(assert (=> d!714506 (validRegex!2963 lt!893995)))

(declare-fun e!1581773 () Regex!7337)

(assert (=> d!714506 (= lt!893995 e!1581773)))

(declare-fun c!396194 () Bool)

(assert (=> d!714506 (= c!396194 ((_ is Cons!29302) tl!4068))))

(assert (=> d!714506 (validRegex!2963 (derivativeStep!1906 r!27340 c!14016))))

(assert (=> d!714506 (= (derivative!32 (derivativeStep!1906 r!27340 c!14016) tl!4068) lt!893995)))

(declare-fun b!2491979 () Bool)

(assert (=> b!2491979 (= e!1581773 (derivative!32 (derivativeStep!1906 (derivativeStep!1906 r!27340 c!14016) (h!34722 tl!4068)) (t!211101 tl!4068)))))

(declare-fun b!2491980 () Bool)

(assert (=> b!2491980 (= e!1581773 (derivativeStep!1906 r!27340 c!14016))))

(assert (= (and d!714506 c!396194) b!2491979))

(assert (= (and d!714506 (not c!396194)) b!2491980))

(declare-fun m!2858359 () Bool)

(assert (=> d!714506 m!2858359))

(assert (=> d!714506 m!2858275))

(declare-fun m!2858361 () Bool)

(assert (=> d!714506 m!2858361))

(assert (=> b!2491979 m!2858275))

(declare-fun m!2858363 () Bool)

(assert (=> b!2491979 m!2858363))

(assert (=> b!2491979 m!2858363))

(declare-fun m!2858365 () Bool)

(assert (=> b!2491979 m!2858365))

(assert (=> b!2491822 d!714506))

(declare-fun b!2491981 () Bool)

(declare-fun e!1581774 () Regex!7337)

(declare-fun call!153305 () Regex!7337)

(declare-fun call!153304 () Regex!7337)

(assert (=> b!2491981 (= e!1581774 (Union!7337 call!153305 call!153304))))

(declare-fun b!2491982 () Bool)

(declare-fun c!396195 () Bool)

(assert (=> b!2491982 (= c!396195 (nullable!2254 (regOne!15186 r!27340)))))

(declare-fun e!1581778 () Regex!7337)

(declare-fun e!1581775 () Regex!7337)

(assert (=> b!2491982 (= e!1581778 e!1581775)))

(declare-fun b!2491983 () Bool)

(declare-fun call!153303 () Regex!7337)

(assert (=> b!2491983 (= e!1581775 (Union!7337 (Concat!12033 call!153303 (regTwo!15186 r!27340)) EmptyLang!7337))))

(declare-fun b!2491984 () Bool)

(assert (=> b!2491984 (= e!1581775 (Union!7337 (Concat!12033 call!153303 (regTwo!15186 r!27340)) call!153304))))

(declare-fun b!2491985 () Bool)

(declare-fun e!1581777 () Regex!7337)

(declare-fun e!1581776 () Regex!7337)

(assert (=> b!2491985 (= e!1581777 e!1581776)))

(declare-fun c!396197 () Bool)

(assert (=> b!2491985 (= c!396197 ((_ is ElementMatch!7337) r!27340))))

(declare-fun bm!153297 () Bool)

(declare-fun call!153302 () Regex!7337)

(assert (=> bm!153297 (= call!153303 call!153302)))

(declare-fun bm!153298 () Bool)

(declare-fun c!396196 () Bool)

(assert (=> bm!153298 (= call!153304 (derivativeStep!1906 (ite c!396196 (regTwo!15187 r!27340) (regTwo!15186 r!27340)) c!14016))))

(declare-fun b!2491986 () Bool)

(assert (=> b!2491986 (= c!396196 ((_ is Union!7337) r!27340))))

(assert (=> b!2491986 (= e!1581776 e!1581774)))

(declare-fun d!714508 () Bool)

(declare-fun lt!893996 () Regex!7337)

(assert (=> d!714508 (validRegex!2963 lt!893996)))

(assert (=> d!714508 (= lt!893996 e!1581777)))

(declare-fun c!396198 () Bool)

(assert (=> d!714508 (= c!396198 (or ((_ is EmptyExpr!7337) r!27340) ((_ is EmptyLang!7337) r!27340)))))

(assert (=> d!714508 (validRegex!2963 r!27340)))

(assert (=> d!714508 (= (derivativeStep!1906 r!27340 c!14016) lt!893996)))

(declare-fun c!396199 () Bool)

(declare-fun bm!153299 () Bool)

(assert (=> bm!153299 (= call!153305 (derivativeStep!1906 (ite c!396196 (regOne!15187 r!27340) (ite c!396199 (reg!7666 r!27340) (regOne!15186 r!27340))) c!14016))))

(declare-fun b!2491987 () Bool)

(assert (=> b!2491987 (= e!1581774 e!1581778)))

(assert (=> b!2491987 (= c!396199 ((_ is Star!7337) r!27340))))

(declare-fun b!2491988 () Bool)

(assert (=> b!2491988 (= e!1581776 (ite (= c!14016 (c!396135 r!27340)) EmptyExpr!7337 EmptyLang!7337))))

(declare-fun b!2491989 () Bool)

(assert (=> b!2491989 (= e!1581777 EmptyLang!7337)))

(declare-fun b!2491990 () Bool)

(assert (=> b!2491990 (= e!1581778 (Concat!12033 call!153302 r!27340))))

(declare-fun bm!153300 () Bool)

(assert (=> bm!153300 (= call!153302 call!153305)))

(assert (= (and d!714508 c!396198) b!2491989))

(assert (= (and d!714508 (not c!396198)) b!2491985))

(assert (= (and b!2491985 c!396197) b!2491988))

(assert (= (and b!2491985 (not c!396197)) b!2491986))

(assert (= (and b!2491986 c!396196) b!2491981))

(assert (= (and b!2491986 (not c!396196)) b!2491987))

(assert (= (and b!2491987 c!396199) b!2491990))

(assert (= (and b!2491987 (not c!396199)) b!2491982))

(assert (= (and b!2491982 c!396195) b!2491984))

(assert (= (and b!2491982 (not c!396195)) b!2491983))

(assert (= (or b!2491984 b!2491983) bm!153297))

(assert (= (or b!2491990 bm!153297) bm!153300))

(assert (= (or b!2491981 b!2491984) bm!153298))

(assert (= (or b!2491981 bm!153300) bm!153299))

(declare-fun m!2858373 () Bool)

(assert (=> b!2491982 m!2858373))

(declare-fun m!2858375 () Bool)

(assert (=> bm!153298 m!2858375))

(declare-fun m!2858377 () Bool)

(assert (=> d!714508 m!2858377))

(assert (=> d!714508 m!2858265))

(declare-fun m!2858379 () Bool)

(assert (=> bm!153299 m!2858379))

(assert (=> b!2491822 d!714508))

(declare-fun b!2492028 () Bool)

(declare-fun e!1581788 () Bool)

(declare-fun tp!798027 () Bool)

(declare-fun tp!798028 () Bool)

(assert (=> b!2492028 (= e!1581788 (and tp!798027 tp!798028))))

(assert (=> b!2491815 (= tp!797982 e!1581788)))

(declare-fun b!2492029 () Bool)

(declare-fun tp!798025 () Bool)

(assert (=> b!2492029 (= e!1581788 tp!798025)))

(declare-fun b!2492030 () Bool)

(declare-fun tp!798026 () Bool)

(declare-fun tp!798024 () Bool)

(assert (=> b!2492030 (= e!1581788 (and tp!798026 tp!798024))))

(declare-fun b!2492027 () Bool)

(assert (=> b!2492027 (= e!1581788 tp_is_empty!12529)))

(assert (= (and b!2491815 ((_ is ElementMatch!7337) (regOne!15187 r!27340))) b!2492027))

(assert (= (and b!2491815 ((_ is Concat!12033) (regOne!15187 r!27340))) b!2492028))

(assert (= (and b!2491815 ((_ is Star!7337) (regOne!15187 r!27340))) b!2492029))

(assert (= (and b!2491815 ((_ is Union!7337) (regOne!15187 r!27340))) b!2492030))

(declare-fun b!2492033 () Bool)

(declare-fun e!1581790 () Bool)

(declare-fun tp!798033 () Bool)

(declare-fun tp!798034 () Bool)

(assert (=> b!2492033 (= e!1581790 (and tp!798033 tp!798034))))

(assert (=> b!2491815 (= tp!797984 e!1581790)))

(declare-fun b!2492034 () Bool)

(declare-fun tp!798031 () Bool)

(assert (=> b!2492034 (= e!1581790 tp!798031)))

(declare-fun b!2492035 () Bool)

(declare-fun tp!798032 () Bool)

(declare-fun tp!798030 () Bool)

(assert (=> b!2492035 (= e!1581790 (and tp!798032 tp!798030))))

(declare-fun b!2492032 () Bool)

(assert (=> b!2492032 (= e!1581790 tp_is_empty!12529)))

(assert (= (and b!2491815 ((_ is ElementMatch!7337) (regTwo!15187 r!27340))) b!2492032))

(assert (= (and b!2491815 ((_ is Concat!12033) (regTwo!15187 r!27340))) b!2492033))

(assert (= (and b!2491815 ((_ is Star!7337) (regTwo!15187 r!27340))) b!2492034))

(assert (= (and b!2491815 ((_ is Union!7337) (regTwo!15187 r!27340))) b!2492035))

(declare-fun b!2492041 () Bool)

(declare-fun e!1581792 () Bool)

(declare-fun tp!798043 () Bool)

(declare-fun tp!798044 () Bool)

(assert (=> b!2492041 (= e!1581792 (and tp!798043 tp!798044))))

(assert (=> b!2491821 (= tp!797983 e!1581792)))

(declare-fun b!2492042 () Bool)

(declare-fun tp!798041 () Bool)

(assert (=> b!2492042 (= e!1581792 tp!798041)))

(declare-fun b!2492043 () Bool)

(declare-fun tp!798042 () Bool)

(declare-fun tp!798040 () Bool)

(assert (=> b!2492043 (= e!1581792 (and tp!798042 tp!798040))))

(declare-fun b!2492040 () Bool)

(assert (=> b!2492040 (= e!1581792 tp_is_empty!12529)))

(assert (= (and b!2491821 ((_ is ElementMatch!7337) (regOne!15186 r!27340))) b!2492040))

(assert (= (and b!2491821 ((_ is Concat!12033) (regOne!15186 r!27340))) b!2492041))

(assert (= (and b!2491821 ((_ is Star!7337) (regOne!15186 r!27340))) b!2492042))

(assert (= (and b!2491821 ((_ is Union!7337) (regOne!15186 r!27340))) b!2492043))

(declare-fun b!2492049 () Bool)

(declare-fun e!1581794 () Bool)

(declare-fun tp!798053 () Bool)

(declare-fun tp!798054 () Bool)

(assert (=> b!2492049 (= e!1581794 (and tp!798053 tp!798054))))

(assert (=> b!2491821 (= tp!797981 e!1581794)))

(declare-fun b!2492050 () Bool)

(declare-fun tp!798051 () Bool)

(assert (=> b!2492050 (= e!1581794 tp!798051)))

(declare-fun b!2492051 () Bool)

(declare-fun tp!798052 () Bool)

(declare-fun tp!798050 () Bool)

(assert (=> b!2492051 (= e!1581794 (and tp!798052 tp!798050))))

(declare-fun b!2492048 () Bool)

(assert (=> b!2492048 (= e!1581794 tp_is_empty!12529)))

(assert (= (and b!2491821 ((_ is ElementMatch!7337) (regTwo!15186 r!27340))) b!2492048))

(assert (= (and b!2491821 ((_ is Concat!12033) (regTwo!15186 r!27340))) b!2492049))

(assert (= (and b!2491821 ((_ is Star!7337) (regTwo!15186 r!27340))) b!2492050))

(assert (= (and b!2491821 ((_ is Union!7337) (regTwo!15186 r!27340))) b!2492051))

(declare-fun b!2492056 () Bool)

(declare-fun e!1581797 () Bool)

(declare-fun tp!798057 () Bool)

(assert (=> b!2492056 (= e!1581797 (and tp_is_empty!12529 tp!798057))))

(assert (=> b!2491816 (= tp!797985 e!1581797)))

(assert (= (and b!2491816 ((_ is Cons!29302) (t!211101 tl!4068))) b!2492056))

(declare-fun b!2492058 () Bool)

(declare-fun e!1581798 () Bool)

(declare-fun tp!798061 () Bool)

(declare-fun tp!798062 () Bool)

(assert (=> b!2492058 (= e!1581798 (and tp!798061 tp!798062))))

(assert (=> b!2491817 (= tp!797986 e!1581798)))

(declare-fun b!2492059 () Bool)

(declare-fun tp!798059 () Bool)

(assert (=> b!2492059 (= e!1581798 tp!798059)))

(declare-fun b!2492060 () Bool)

(declare-fun tp!798060 () Bool)

(declare-fun tp!798058 () Bool)

(assert (=> b!2492060 (= e!1581798 (and tp!798060 tp!798058))))

(declare-fun b!2492057 () Bool)

(assert (=> b!2492057 (= e!1581798 tp_is_empty!12529)))

(assert (= (and b!2491817 ((_ is ElementMatch!7337) (reg!7666 r!27340))) b!2492057))

(assert (= (and b!2491817 ((_ is Concat!12033) (reg!7666 r!27340))) b!2492058))

(assert (= (and b!2491817 ((_ is Star!7337) (reg!7666 r!27340))) b!2492059))

(assert (= (and b!2491817 ((_ is Union!7337) (reg!7666 r!27340))) b!2492060))

(check-sat (not bm!153298) (not b!2492058) (not bm!153256) (not b!2492034) (not b!2492029) (not bm!153288) (not b!2492035) (not bm!153254) (not b!2492033) (not b!2492059) (not b!2491858) (not bm!153253) (not b!2491979) (not d!714488) (not b!2492051) (not d!714492) (not b!2491982) (not bm!153251) (not b!2492030) (not b!2492056) (not b!2491951) (not b!2492049) (not b!2491849) (not b!2492042) (not b!2492028) (not b!2492050) (not d!714490) tp_is_empty!12529 (not d!714506) (not d!714504) (not bm!153287) (not d!714508) (not b!2492043) (not b!2491889) (not b!2492060) (not b!2492041) (not bm!153299))
(check-sat)
