; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292572 () Bool)

(assert start!292572)

(declare-fun b!3066254 () Bool)

(declare-fun res!1258740 () Bool)

(declare-fun e!1919488 () Bool)

(assert (=> b!3066254 (=> res!1258740 e!1919488)))

(declare-datatypes ((C!19188 0))(
  ( (C!19189 (val!11630 Int)) )
))
(declare-datatypes ((Regex!9501 0))(
  ( (ElementMatch!9501 (c!509377 C!19188)) (Concat!14822 (regOne!19514 Regex!9501) (regTwo!19514 Regex!9501)) (EmptyExpr!9501) (Star!9501 (reg!9830 Regex!9501)) (EmptyLang!9501) (Union!9501 (regOne!19515 Regex!9501) (regTwo!19515 Regex!9501)) )
))
(declare-fun lt!1050827 () Regex!9501)

(declare-fun isEmptyExpr!558 (Regex!9501) Bool)

(assert (=> b!3066254 (= res!1258740 (not (isEmptyExpr!558 lt!1050827)))))

(declare-fun b!3066255 () Bool)

(declare-fun e!1919487 () Bool)

(declare-fun tp!968110 () Bool)

(declare-fun tp!968113 () Bool)

(assert (=> b!3066255 (= e!1919487 (and tp!968110 tp!968113))))

(declare-fun b!3066256 () Bool)

(declare-fun e!1919486 () Bool)

(declare-fun e!1919491 () Bool)

(assert (=> b!3066256 (= e!1919486 (not e!1919491))))

(declare-fun res!1258743 () Bool)

(assert (=> b!3066256 (=> res!1258743 e!1919491)))

(declare-fun lt!1050826 () Bool)

(declare-fun r!17423 () Regex!9501)

(get-info :version)

(assert (=> b!3066256 (= res!1258743 (or lt!1050826 (not ((_ is Concat!14822) r!17423))))))

(declare-datatypes ((List!35366 0))(
  ( (Nil!35242) (Cons!35242 (h!40662 C!19188) (t!234431 List!35366)) )
))
(declare-fun s!11993 () List!35366)

(declare-fun matchRSpec!1638 (Regex!9501 List!35366) Bool)

(assert (=> b!3066256 (= lt!1050826 (matchRSpec!1638 r!17423 s!11993))))

(declare-fun matchR!4383 (Regex!9501 List!35366) Bool)

(assert (=> b!3066256 (= lt!1050826 (matchR!4383 r!17423 s!11993))))

(declare-datatypes ((Unit!49441 0))(
  ( (Unit!49442) )
))
(declare-fun lt!1050824 () Unit!49441)

(declare-fun mainMatchTheorem!1638 (Regex!9501 List!35366) Unit!49441)

(assert (=> b!3066256 (= lt!1050824 (mainMatchTheorem!1638 r!17423 s!11993))))

(declare-fun b!3066257 () Bool)

(declare-fun tp_is_empty!16565 () Bool)

(assert (=> b!3066257 (= e!1919487 tp_is_empty!16565)))

(declare-fun b!3066258 () Bool)

(declare-fun e!1919490 () Bool)

(declare-fun simplify!456 (Regex!9501) Regex!9501)

(assert (=> b!3066258 (= e!1919490 (not (matchR!4383 (simplify!456 r!17423) s!11993)))))

(declare-fun b!3066259 () Bool)

(assert (=> b!3066259 (= e!1919491 e!1919488)))

(declare-fun res!1258744 () Bool)

(assert (=> b!3066259 (=> res!1258744 e!1919488)))

(declare-fun isEmptyLang!552 (Regex!9501) Bool)

(assert (=> b!3066259 (= res!1258744 (isEmptyLang!552 lt!1050827))))

(declare-fun lt!1050823 () Regex!9501)

(assert (=> b!3066259 (= lt!1050823 (simplify!456 (regTwo!19514 r!17423)))))

(assert (=> b!3066259 (= lt!1050827 (simplify!456 (regOne!19514 r!17423)))))

(declare-fun b!3066260 () Bool)

(declare-fun e!1919489 () Bool)

(declare-fun tp!968109 () Bool)

(assert (=> b!3066260 (= e!1919489 (and tp_is_empty!16565 tp!968109))))

(declare-fun res!1258739 () Bool)

(assert (=> start!292572 (=> (not res!1258739) (not e!1919486))))

(declare-fun validRegex!4234 (Regex!9501) Bool)

(assert (=> start!292572 (= res!1258739 (validRegex!4234 r!17423))))

(assert (=> start!292572 e!1919486))

(assert (=> start!292572 e!1919487))

(assert (=> start!292572 e!1919489))

(declare-fun b!3066261 () Bool)

(assert (=> b!3066261 (= e!1919488 e!1919490)))

(declare-fun res!1258742 () Bool)

(assert (=> b!3066261 (=> res!1258742 e!1919490)))

(declare-fun lt!1050828 () Bool)

(assert (=> b!3066261 (= res!1258742 lt!1050828)))

(assert (=> b!3066261 (= lt!1050828 (matchR!4383 lt!1050823 s!11993))))

(assert (=> b!3066261 (= lt!1050828 (matchR!4383 (regTwo!19514 r!17423) s!11993))))

(declare-fun lt!1050825 () Unit!49441)

(declare-fun lemmaSimplifySound!286 (Regex!9501 List!35366) Unit!49441)

(assert (=> b!3066261 (= lt!1050825 (lemmaSimplifySound!286 (regTwo!19514 r!17423) s!11993))))

(declare-fun b!3066262 () Bool)

(declare-fun tp!968108 () Bool)

(assert (=> b!3066262 (= e!1919487 tp!968108)))

(declare-fun b!3066263 () Bool)

(declare-fun res!1258738 () Bool)

(assert (=> b!3066263 (=> res!1258738 e!1919491)))

(declare-fun isEmpty!19567 (List!35366) Bool)

(assert (=> b!3066263 (= res!1258738 (isEmpty!19567 s!11993))))

(declare-fun b!3066264 () Bool)

(declare-fun tp!968112 () Bool)

(declare-fun tp!968111 () Bool)

(assert (=> b!3066264 (= e!1919487 (and tp!968112 tp!968111))))

(declare-fun b!3066265 () Bool)

(declare-fun res!1258741 () Bool)

(assert (=> b!3066265 (=> res!1258741 e!1919488)))

(assert (=> b!3066265 (= res!1258741 (isEmptyLang!552 lt!1050823))))

(assert (= (and start!292572 res!1258739) b!3066256))

(assert (= (and b!3066256 (not res!1258743)) b!3066263))

(assert (= (and b!3066263 (not res!1258738)) b!3066259))

(assert (= (and b!3066259 (not res!1258744)) b!3066265))

(assert (= (and b!3066265 (not res!1258741)) b!3066254))

(assert (= (and b!3066254 (not res!1258740)) b!3066261))

(assert (= (and b!3066261 (not res!1258742)) b!3066258))

(assert (= (and start!292572 ((_ is ElementMatch!9501) r!17423)) b!3066257))

(assert (= (and start!292572 ((_ is Concat!14822) r!17423)) b!3066264))

(assert (= (and start!292572 ((_ is Star!9501) r!17423)) b!3066262))

(assert (= (and start!292572 ((_ is Union!9501) r!17423)) b!3066255))

(assert (= (and start!292572 ((_ is Cons!35242) s!11993)) b!3066260))

(declare-fun m!3383839 () Bool)

(assert (=> start!292572 m!3383839))

(declare-fun m!3383841 () Bool)

(assert (=> b!3066259 m!3383841))

(declare-fun m!3383843 () Bool)

(assert (=> b!3066259 m!3383843))

(declare-fun m!3383845 () Bool)

(assert (=> b!3066259 m!3383845))

(declare-fun m!3383847 () Bool)

(assert (=> b!3066258 m!3383847))

(assert (=> b!3066258 m!3383847))

(declare-fun m!3383849 () Bool)

(assert (=> b!3066258 m!3383849))

(declare-fun m!3383851 () Bool)

(assert (=> b!3066263 m!3383851))

(declare-fun m!3383853 () Bool)

(assert (=> b!3066265 m!3383853))

(declare-fun m!3383855 () Bool)

(assert (=> b!3066256 m!3383855))

(declare-fun m!3383857 () Bool)

(assert (=> b!3066256 m!3383857))

(declare-fun m!3383859 () Bool)

(assert (=> b!3066256 m!3383859))

(declare-fun m!3383861 () Bool)

(assert (=> b!3066254 m!3383861))

(declare-fun m!3383863 () Bool)

(assert (=> b!3066261 m!3383863))

(declare-fun m!3383865 () Bool)

(assert (=> b!3066261 m!3383865))

(declare-fun m!3383867 () Bool)

(assert (=> b!3066261 m!3383867))

(check-sat (not b!3066264) (not b!3066259) (not b!3066260) (not b!3066256) (not b!3066262) (not b!3066261) tp_is_empty!16565 (not b!3066255) (not b!3066263) (not b!3066254) (not b!3066258) (not b!3066265) (not start!292572))
(check-sat)
(get-model)

(declare-fun d!855802 () Bool)

(declare-fun res!1258756 () Bool)

(declare-fun e!1919510 () Bool)

(assert (=> d!855802 (=> res!1258756 e!1919510)))

(assert (=> d!855802 (= res!1258756 ((_ is ElementMatch!9501) r!17423))))

(assert (=> d!855802 (= (validRegex!4234 r!17423) e!1919510)))

(declare-fun call!212459 () Bool)

(declare-fun bm!212454 () Bool)

(declare-fun c!509383 () Bool)

(declare-fun c!509382 () Bool)

(assert (=> bm!212454 (= call!212459 (validRegex!4234 (ite c!509382 (reg!9830 r!17423) (ite c!509383 (regTwo!19515 r!17423) (regOne!19514 r!17423)))))))

(declare-fun b!3066284 () Bool)

(declare-fun e!1919512 () Bool)

(declare-fun e!1919511 () Bool)

(assert (=> b!3066284 (= e!1919512 e!1919511)))

(declare-fun res!1258755 () Bool)

(declare-fun nullable!3147 (Regex!9501) Bool)

(assert (=> b!3066284 (= res!1258755 (not (nullable!3147 (reg!9830 r!17423))))))

(assert (=> b!3066284 (=> (not res!1258755) (not e!1919511))))

(declare-fun b!3066285 () Bool)

(declare-fun res!1258757 () Bool)

(declare-fun e!1919507 () Bool)

(assert (=> b!3066285 (=> (not res!1258757) (not e!1919507))))

(declare-fun call!212460 () Bool)

(assert (=> b!3066285 (= res!1258757 call!212460)))

(declare-fun e!1919509 () Bool)

(assert (=> b!3066285 (= e!1919509 e!1919507)))

(declare-fun b!3066286 () Bool)

(declare-fun e!1919506 () Bool)

(declare-fun e!1919508 () Bool)

(assert (=> b!3066286 (= e!1919506 e!1919508)))

(declare-fun res!1258759 () Bool)

(assert (=> b!3066286 (=> (not res!1258759) (not e!1919508))))

(declare-fun call!212461 () Bool)

(assert (=> b!3066286 (= res!1258759 call!212461)))

(declare-fun b!3066287 () Bool)

(assert (=> b!3066287 (= e!1919507 call!212461)))

(declare-fun b!3066288 () Bool)

(declare-fun res!1258758 () Bool)

(assert (=> b!3066288 (=> res!1258758 e!1919506)))

(assert (=> b!3066288 (= res!1258758 (not ((_ is Concat!14822) r!17423)))))

(assert (=> b!3066288 (= e!1919509 e!1919506)))

(declare-fun bm!212455 () Bool)

(assert (=> bm!212455 (= call!212460 (validRegex!4234 (ite c!509383 (regOne!19515 r!17423) (regTwo!19514 r!17423))))))

(declare-fun b!3066289 () Bool)

(assert (=> b!3066289 (= e!1919511 call!212459)))

(declare-fun b!3066290 () Bool)

(assert (=> b!3066290 (= e!1919510 e!1919512)))

(assert (=> b!3066290 (= c!509382 ((_ is Star!9501) r!17423))))

(declare-fun b!3066291 () Bool)

(assert (=> b!3066291 (= e!1919508 call!212460)))

(declare-fun b!3066292 () Bool)

(assert (=> b!3066292 (= e!1919512 e!1919509)))

(assert (=> b!3066292 (= c!509383 ((_ is Union!9501) r!17423))))

(declare-fun bm!212456 () Bool)

(assert (=> bm!212456 (= call!212461 call!212459)))

(assert (= (and d!855802 (not res!1258756)) b!3066290))

(assert (= (and b!3066290 c!509382) b!3066284))

(assert (= (and b!3066290 (not c!509382)) b!3066292))

(assert (= (and b!3066284 res!1258755) b!3066289))

(assert (= (and b!3066292 c!509383) b!3066285))

(assert (= (and b!3066292 (not c!509383)) b!3066288))

(assert (= (and b!3066285 res!1258757) b!3066287))

(assert (= (and b!3066288 (not res!1258758)) b!3066286))

(assert (= (and b!3066286 res!1258759) b!3066291))

(assert (= (or b!3066285 b!3066291) bm!212455))

(assert (= (or b!3066287 b!3066286) bm!212456))

(assert (= (or b!3066289 bm!212456) bm!212454))

(declare-fun m!3383869 () Bool)

(assert (=> bm!212454 m!3383869))

(declare-fun m!3383871 () Bool)

(assert (=> b!3066284 m!3383871))

(declare-fun m!3383873 () Bool)

(assert (=> bm!212455 m!3383873))

(assert (=> start!292572 d!855802))

(declare-fun d!855806 () Bool)

(assert (=> d!855806 (= (isEmpty!19567 s!11993) ((_ is Nil!35242) s!11993))))

(assert (=> b!3066263 d!855806))

(declare-fun b!3066377 () Bool)

(declare-fun res!1258814 () Bool)

(declare-fun e!1919556 () Bool)

(assert (=> b!3066377 (=> (not res!1258814) (not e!1919556))))

(declare-fun tail!5028 (List!35366) List!35366)

(assert (=> b!3066377 (= res!1258814 (isEmpty!19567 (tail!5028 s!11993)))))

(declare-fun b!3066378 () Bool)

(declare-fun res!1258809 () Bool)

(declare-fun e!1919555 () Bool)

(assert (=> b!3066378 (=> res!1258809 e!1919555)))

(assert (=> b!3066378 (= res!1258809 (not ((_ is ElementMatch!9501) (simplify!456 r!17423))))))

(declare-fun e!1919560 () Bool)

(assert (=> b!3066378 (= e!1919560 e!1919555)))

(declare-fun b!3066379 () Bool)

(declare-fun e!1919559 () Bool)

(declare-fun lt!1050837 () Bool)

(declare-fun call!212468 () Bool)

(assert (=> b!3066379 (= e!1919559 (= lt!1050837 call!212468))))

(declare-fun b!3066380 () Bool)

(declare-fun e!1919561 () Bool)

(assert (=> b!3066380 (= e!1919555 e!1919561)))

(declare-fun res!1258812 () Bool)

(assert (=> b!3066380 (=> (not res!1258812) (not e!1919561))))

(assert (=> b!3066380 (= res!1258812 (not lt!1050837))))

(declare-fun bm!212463 () Bool)

(assert (=> bm!212463 (= call!212468 (isEmpty!19567 s!11993))))

(declare-fun b!3066381 () Bool)

(declare-fun e!1919557 () Bool)

(assert (=> b!3066381 (= e!1919557 (nullable!3147 (simplify!456 r!17423)))))

(declare-fun b!3066382 () Bool)

(assert (=> b!3066382 (= e!1919560 (not lt!1050837))))

(declare-fun d!855808 () Bool)

(assert (=> d!855808 e!1919559))

(declare-fun c!509404 () Bool)

(assert (=> d!855808 (= c!509404 ((_ is EmptyExpr!9501) (simplify!456 r!17423)))))

(assert (=> d!855808 (= lt!1050837 e!1919557)))

(declare-fun c!509403 () Bool)

(assert (=> d!855808 (= c!509403 (isEmpty!19567 s!11993))))

(assert (=> d!855808 (validRegex!4234 (simplify!456 r!17423))))

(assert (=> d!855808 (= (matchR!4383 (simplify!456 r!17423) s!11993) lt!1050837)))

(declare-fun b!3066383 () Bool)

(declare-fun e!1919558 () Bool)

(assert (=> b!3066383 (= e!1919561 e!1919558)))

(declare-fun res!1258808 () Bool)

(assert (=> b!3066383 (=> res!1258808 e!1919558)))

(assert (=> b!3066383 (= res!1258808 call!212468)))

(declare-fun b!3066384 () Bool)

(declare-fun res!1258813 () Bool)

(assert (=> b!3066384 (=> res!1258813 e!1919555)))

(assert (=> b!3066384 (= res!1258813 e!1919556)))

(declare-fun res!1258811 () Bool)

(assert (=> b!3066384 (=> (not res!1258811) (not e!1919556))))

(assert (=> b!3066384 (= res!1258811 lt!1050837)))

(declare-fun b!3066385 () Bool)

(declare-fun res!1258815 () Bool)

(assert (=> b!3066385 (=> res!1258815 e!1919558)))

(assert (=> b!3066385 (= res!1258815 (not (isEmpty!19567 (tail!5028 s!11993))))))

(declare-fun b!3066386 () Bool)

(declare-fun derivativeStep!2743 (Regex!9501 C!19188) Regex!9501)

(declare-fun head!6802 (List!35366) C!19188)

(assert (=> b!3066386 (= e!1919557 (matchR!4383 (derivativeStep!2743 (simplify!456 r!17423) (head!6802 s!11993)) (tail!5028 s!11993)))))

(declare-fun b!3066387 () Bool)

(assert (=> b!3066387 (= e!1919556 (= (head!6802 s!11993) (c!509377 (simplify!456 r!17423))))))

(declare-fun b!3066388 () Bool)

(assert (=> b!3066388 (= e!1919559 e!1919560)))

(declare-fun c!509402 () Bool)

(assert (=> b!3066388 (= c!509402 ((_ is EmptyLang!9501) (simplify!456 r!17423)))))

(declare-fun b!3066389 () Bool)

(declare-fun res!1258810 () Bool)

(assert (=> b!3066389 (=> (not res!1258810) (not e!1919556))))

(assert (=> b!3066389 (= res!1258810 (not call!212468))))

(declare-fun b!3066390 () Bool)

(assert (=> b!3066390 (= e!1919558 (not (= (head!6802 s!11993) (c!509377 (simplify!456 r!17423)))))))

(assert (= (and d!855808 c!509403) b!3066381))

(assert (= (and d!855808 (not c!509403)) b!3066386))

(assert (= (and d!855808 c!509404) b!3066379))

(assert (= (and d!855808 (not c!509404)) b!3066388))

(assert (= (and b!3066388 c!509402) b!3066382))

(assert (= (and b!3066388 (not c!509402)) b!3066378))

(assert (= (and b!3066378 (not res!1258809)) b!3066384))

(assert (= (and b!3066384 res!1258811) b!3066389))

(assert (= (and b!3066389 res!1258810) b!3066377))

(assert (= (and b!3066377 res!1258814) b!3066387))

(assert (= (and b!3066384 (not res!1258813)) b!3066380))

(assert (= (and b!3066380 res!1258812) b!3066383))

(assert (= (and b!3066383 (not res!1258808)) b!3066385))

(assert (= (and b!3066385 (not res!1258815)) b!3066390))

(assert (= (or b!3066379 b!3066383 b!3066389) bm!212463))

(declare-fun m!3383901 () Bool)

(assert (=> b!3066387 m!3383901))

(declare-fun m!3383903 () Bool)

(assert (=> b!3066385 m!3383903))

(assert (=> b!3066385 m!3383903))

(declare-fun m!3383905 () Bool)

(assert (=> b!3066385 m!3383905))

(assert (=> b!3066381 m!3383847))

(declare-fun m!3383907 () Bool)

(assert (=> b!3066381 m!3383907))

(assert (=> b!3066377 m!3383903))

(assert (=> b!3066377 m!3383903))

(assert (=> b!3066377 m!3383905))

(assert (=> bm!212463 m!3383851))

(assert (=> b!3066390 m!3383901))

(assert (=> d!855808 m!3383851))

(assert (=> d!855808 m!3383847))

(declare-fun m!3383909 () Bool)

(assert (=> d!855808 m!3383909))

(assert (=> b!3066386 m!3383901))

(assert (=> b!3066386 m!3383847))

(assert (=> b!3066386 m!3383901))

(declare-fun m!3383911 () Bool)

(assert (=> b!3066386 m!3383911))

(assert (=> b!3066386 m!3383903))

(assert (=> b!3066386 m!3383911))

(assert (=> b!3066386 m!3383903))

(declare-fun m!3383913 () Bool)

(assert (=> b!3066386 m!3383913))

(assert (=> b!3066258 d!855808))

(declare-fun b!3066516 () Bool)

(declare-fun e!1919647 () Bool)

(declare-fun lt!1050864 () Regex!9501)

(assert (=> b!3066516 (= e!1919647 (= (nullable!3147 lt!1050864) (nullable!3147 r!17423)))))

(declare-fun b!3066517 () Bool)

(declare-fun e!1919645 () Bool)

(declare-fun call!212509 () Bool)

(assert (=> b!3066517 (= e!1919645 call!212509)))

(declare-fun c!509458 () Bool)

(declare-fun c!509457 () Bool)

(declare-fun bm!212501 () Bool)

(declare-fun call!212512 () Regex!9501)

(assert (=> bm!212501 (= call!212512 (simplify!456 (ite c!509457 (reg!9830 r!17423) (ite c!509458 (regOne!19515 r!17423) (regTwo!19514 r!17423)))))))

(declare-fun b!3066518 () Bool)

(declare-fun e!1919643 () Regex!9501)

(declare-fun lt!1050865 () Regex!9501)

(declare-fun lt!1050868 () Regex!9501)

(assert (=> b!3066518 (= e!1919643 (Union!9501 lt!1050865 lt!1050868))))

(declare-fun bm!212502 () Bool)

(declare-fun lt!1050866 () Regex!9501)

(declare-fun lt!1050863 () Regex!9501)

(assert (=> bm!212502 (= call!212509 (isEmptyExpr!558 (ite c!509457 lt!1050866 lt!1050863)))))

(declare-fun b!3066519 () Bool)

(declare-fun e!1919640 () Regex!9501)

(declare-fun e!1919638 () Regex!9501)

(assert (=> b!3066519 (= e!1919640 e!1919638)))

(declare-fun call!212508 () Regex!9501)

(assert (=> b!3066519 (= lt!1050865 call!212508)))

(declare-fun call!212511 () Regex!9501)

(assert (=> b!3066519 (= lt!1050868 call!212511)))

(declare-fun c!509462 () Bool)

(declare-fun call!212510 () Bool)

(assert (=> b!3066519 (= c!509462 call!212510)))

(declare-fun bm!212503 () Bool)

(assert (=> bm!212503 (= call!212511 (simplify!456 (ite c!509458 (regTwo!19515 r!17423) (regOne!19514 r!17423))))))

(declare-fun b!3066520 () Bool)

(declare-fun e!1919639 () Regex!9501)

(assert (=> b!3066520 (= e!1919640 e!1919639)))

(assert (=> b!3066520 (= lt!1050863 call!212511)))

(declare-fun lt!1050867 () Regex!9501)

(assert (=> b!3066520 (= lt!1050867 call!212508)))

(declare-fun res!1258842 () Bool)

(assert (=> b!3066520 (= res!1258842 call!212510)))

(declare-fun e!1919646 () Bool)

(assert (=> b!3066520 (=> res!1258842 e!1919646)))

(declare-fun c!509461 () Bool)

(assert (=> b!3066520 (= c!509461 e!1919646)))

(declare-fun b!3066521 () Bool)

(declare-fun c!509464 () Bool)

(declare-fun call!212506 () Bool)

(assert (=> b!3066521 (= c!509464 call!212506)))

(assert (=> b!3066521 (= e!1919638 e!1919643)))

(declare-fun b!3066522 () Bool)

(assert (=> b!3066522 (= e!1919639 EmptyLang!9501)))

(declare-fun d!855818 () Bool)

(assert (=> d!855818 e!1919647))

(declare-fun res!1258843 () Bool)

(assert (=> d!855818 (=> (not res!1258843) (not e!1919647))))

(assert (=> d!855818 (= res!1258843 (validRegex!4234 lt!1050864))))

(declare-fun e!1919649 () Regex!9501)

(assert (=> d!855818 (= lt!1050864 e!1919649)))

(declare-fun c!509456 () Bool)

(assert (=> d!855818 (= c!509456 ((_ is EmptyLang!9501) r!17423))))

(assert (=> d!855818 (validRegex!4234 r!17423)))

(assert (=> d!855818 (= (simplify!456 r!17423) lt!1050864)))

(declare-fun b!3066523 () Bool)

(declare-fun e!1919648 () Regex!9501)

(assert (=> b!3066523 (= e!1919648 EmptyExpr!9501)))

(declare-fun bm!212504 () Bool)

(declare-fun call!212507 () Bool)

(assert (=> bm!212504 (= call!212506 call!212507)))

(declare-fun b!3066524 () Bool)

(declare-fun e!1919644 () Regex!9501)

(assert (=> b!3066524 (= e!1919644 r!17423)))

(declare-fun b!3066525 () Bool)

(assert (=> b!3066525 (= c!509458 ((_ is Union!9501) r!17423))))

(declare-fun e!1919642 () Regex!9501)

(assert (=> b!3066525 (= e!1919642 e!1919640)))

(declare-fun b!3066526 () Bool)

(declare-fun c!509460 () Bool)

(assert (=> b!3066526 (= c!509460 e!1919645)))

(declare-fun res!1258841 () Bool)

(assert (=> b!3066526 (=> res!1258841 e!1919645)))

(assert (=> b!3066526 (= res!1258841 call!212507)))

(assert (=> b!3066526 (= lt!1050866 call!212512)))

(assert (=> b!3066526 (= e!1919642 e!1919648)))

(declare-fun b!3066527 () Bool)

(assert (=> b!3066527 (= e!1919649 e!1919644)))

(declare-fun c!509465 () Bool)

(assert (=> b!3066527 (= c!509465 ((_ is ElementMatch!9501) r!17423))))

(declare-fun b!3066528 () Bool)

(declare-fun c!509463 () Bool)

(assert (=> b!3066528 (= c!509463 call!212509)))

(declare-fun e!1919637 () Regex!9501)

(assert (=> b!3066528 (= e!1919639 e!1919637)))

(declare-fun b!3066529 () Bool)

(assert (=> b!3066529 (= e!1919648 (Star!9501 lt!1050866))))

(declare-fun b!3066530 () Bool)

(assert (=> b!3066530 (= e!1919649 EmptyLang!9501)))

(declare-fun bm!212505 () Bool)

(assert (=> bm!212505 (= call!212508 call!212512)))

(declare-fun b!3066531 () Bool)

(assert (=> b!3066531 (= e!1919643 lt!1050865)))

(declare-fun b!3066532 () Bool)

(declare-fun e!1919641 () Regex!9501)

(assert (=> b!3066532 (= e!1919641 lt!1050863)))

(declare-fun b!3066533 () Bool)

(declare-fun e!1919650 () Regex!9501)

(assert (=> b!3066533 (= e!1919650 e!1919642)))

(assert (=> b!3066533 (= c!509457 ((_ is Star!9501) r!17423))))

(declare-fun bm!212506 () Bool)

(assert (=> bm!212506 (= call!212510 (isEmptyLang!552 (ite c!509458 lt!1050865 lt!1050863)))))

(declare-fun b!3066534 () Bool)

(assert (=> b!3066534 (= e!1919650 EmptyExpr!9501)))

(declare-fun b!3066535 () Bool)

(assert (=> b!3066535 (= e!1919641 (Concat!14822 lt!1050863 lt!1050867))))

(declare-fun b!3066536 () Bool)

(assert (=> b!3066536 (= e!1919637 e!1919641)))

(declare-fun c!509455 () Bool)

(assert (=> b!3066536 (= c!509455 (isEmptyExpr!558 lt!1050867))))

(declare-fun bm!212507 () Bool)

(assert (=> bm!212507 (= call!212507 (isEmptyLang!552 (ite c!509457 lt!1050866 (ite c!509458 lt!1050868 lt!1050867))))))

(declare-fun b!3066537 () Bool)

(assert (=> b!3066537 (= e!1919638 lt!1050868)))

(declare-fun b!3066538 () Bool)

(declare-fun c!509459 () Bool)

(assert (=> b!3066538 (= c!509459 ((_ is EmptyExpr!9501) r!17423))))

(assert (=> b!3066538 (= e!1919644 e!1919650)))

(declare-fun b!3066539 () Bool)

(assert (=> b!3066539 (= e!1919637 lt!1050867)))

(declare-fun b!3066540 () Bool)

(assert (=> b!3066540 (= e!1919646 call!212506)))

(assert (= (and d!855818 c!509456) b!3066530))

(assert (= (and d!855818 (not c!509456)) b!3066527))

(assert (= (and b!3066527 c!509465) b!3066524))

(assert (= (and b!3066527 (not c!509465)) b!3066538))

(assert (= (and b!3066538 c!509459) b!3066534))

(assert (= (and b!3066538 (not c!509459)) b!3066533))

(assert (= (and b!3066533 c!509457) b!3066526))

(assert (= (and b!3066533 (not c!509457)) b!3066525))

(assert (= (and b!3066526 (not res!1258841)) b!3066517))

(assert (= (and b!3066526 c!509460) b!3066523))

(assert (= (and b!3066526 (not c!509460)) b!3066529))

(assert (= (and b!3066525 c!509458) b!3066519))

(assert (= (and b!3066525 (not c!509458)) b!3066520))

(assert (= (and b!3066519 c!509462) b!3066537))

(assert (= (and b!3066519 (not c!509462)) b!3066521))

(assert (= (and b!3066521 c!509464) b!3066531))

(assert (= (and b!3066521 (not c!509464)) b!3066518))

(assert (= (and b!3066520 (not res!1258842)) b!3066540))

(assert (= (and b!3066520 c!509461) b!3066522))

(assert (= (and b!3066520 (not c!509461)) b!3066528))

(assert (= (and b!3066528 c!509463) b!3066539))

(assert (= (and b!3066528 (not c!509463)) b!3066536))

(assert (= (and b!3066536 c!509455) b!3066532))

(assert (= (and b!3066536 (not c!509455)) b!3066535))

(assert (= (or b!3066519 b!3066520) bm!212505))

(assert (= (or b!3066519 b!3066520) bm!212503))

(assert (= (or b!3066521 b!3066540) bm!212504))

(assert (= (or b!3066519 b!3066520) bm!212506))

(assert (= (or b!3066517 b!3066528) bm!212502))

(assert (= (or b!3066526 bm!212505) bm!212501))

(assert (= (or b!3066526 bm!212504) bm!212507))

(assert (= (and d!855818 res!1258843) b!3066516))

(declare-fun m!3383921 () Bool)

(assert (=> bm!212501 m!3383921))

(declare-fun m!3383923 () Bool)

(assert (=> bm!212502 m!3383923))

(declare-fun m!3383925 () Bool)

(assert (=> bm!212506 m!3383925))

(declare-fun m!3383927 () Bool)

(assert (=> bm!212507 m!3383927))

(declare-fun m!3383929 () Bool)

(assert (=> d!855818 m!3383929))

(assert (=> d!855818 m!3383839))

(declare-fun m!3383931 () Bool)

(assert (=> b!3066536 m!3383931))

(declare-fun m!3383933 () Bool)

(assert (=> bm!212503 m!3383933))

(declare-fun m!3383935 () Bool)

(assert (=> b!3066516 m!3383935))

(declare-fun m!3383937 () Bool)

(assert (=> b!3066516 m!3383937))

(assert (=> b!3066258 d!855818))

(declare-fun d!855824 () Bool)

(assert (=> d!855824 (= (isEmptyLang!552 lt!1050823) ((_ is EmptyLang!9501) lt!1050823))))

(assert (=> b!3066265 d!855824))

(declare-fun d!855826 () Bool)

(assert (=> d!855826 (= (isEmptyLang!552 lt!1050827) ((_ is EmptyLang!9501) lt!1050827))))

(assert (=> b!3066259 d!855826))

(declare-fun b!3066543 () Bool)

(declare-fun e!1919663 () Bool)

(declare-fun lt!1050870 () Regex!9501)

(assert (=> b!3066543 (= e!1919663 (= (nullable!3147 lt!1050870) (nullable!3147 (regTwo!19514 r!17423))))))

(declare-fun b!3066544 () Bool)

(declare-fun e!1919661 () Bool)

(declare-fun call!212516 () Bool)

(assert (=> b!3066544 (= e!1919661 call!212516)))

(declare-fun c!509469 () Bool)

(declare-fun c!509468 () Bool)

(declare-fun bm!212508 () Bool)

(declare-fun call!212519 () Regex!9501)

(assert (=> bm!212508 (= call!212519 (simplify!456 (ite c!509468 (reg!9830 (regTwo!19514 r!17423)) (ite c!509469 (regOne!19515 (regTwo!19514 r!17423)) (regTwo!19514 (regTwo!19514 r!17423))))))))

(declare-fun b!3066545 () Bool)

(declare-fun e!1919659 () Regex!9501)

(declare-fun lt!1050871 () Regex!9501)

(declare-fun lt!1050874 () Regex!9501)

(assert (=> b!3066545 (= e!1919659 (Union!9501 lt!1050871 lt!1050874))))

(declare-fun bm!212509 () Bool)

(declare-fun lt!1050872 () Regex!9501)

(declare-fun lt!1050869 () Regex!9501)

(assert (=> bm!212509 (= call!212516 (isEmptyExpr!558 (ite c!509468 lt!1050872 lt!1050869)))))

(declare-fun b!3066546 () Bool)

(declare-fun e!1919656 () Regex!9501)

(declare-fun e!1919654 () Regex!9501)

(assert (=> b!3066546 (= e!1919656 e!1919654)))

(declare-fun call!212515 () Regex!9501)

(assert (=> b!3066546 (= lt!1050871 call!212515)))

(declare-fun call!212518 () Regex!9501)

(assert (=> b!3066546 (= lt!1050874 call!212518)))

(declare-fun c!509473 () Bool)

(declare-fun call!212517 () Bool)

(assert (=> b!3066546 (= c!509473 call!212517)))

(declare-fun bm!212510 () Bool)

(assert (=> bm!212510 (= call!212518 (simplify!456 (ite c!509469 (regTwo!19515 (regTwo!19514 r!17423)) (regOne!19514 (regTwo!19514 r!17423)))))))

(declare-fun b!3066547 () Bool)

(declare-fun e!1919655 () Regex!9501)

(assert (=> b!3066547 (= e!1919656 e!1919655)))

(assert (=> b!3066547 (= lt!1050869 call!212518)))

(declare-fun lt!1050873 () Regex!9501)

(assert (=> b!3066547 (= lt!1050873 call!212515)))

(declare-fun res!1258847 () Bool)

(assert (=> b!3066547 (= res!1258847 call!212517)))

(declare-fun e!1919662 () Bool)

(assert (=> b!3066547 (=> res!1258847 e!1919662)))

(declare-fun c!509472 () Bool)

(assert (=> b!3066547 (= c!509472 e!1919662)))

(declare-fun b!3066548 () Bool)

(declare-fun c!509475 () Bool)

(declare-fun call!212513 () Bool)

(assert (=> b!3066548 (= c!509475 call!212513)))

(assert (=> b!3066548 (= e!1919654 e!1919659)))

(declare-fun b!3066549 () Bool)

(assert (=> b!3066549 (= e!1919655 EmptyLang!9501)))

(declare-fun d!855828 () Bool)

(assert (=> d!855828 e!1919663))

(declare-fun res!1258848 () Bool)

(assert (=> d!855828 (=> (not res!1258848) (not e!1919663))))

(assert (=> d!855828 (= res!1258848 (validRegex!4234 lt!1050870))))

(declare-fun e!1919665 () Regex!9501)

(assert (=> d!855828 (= lt!1050870 e!1919665)))

(declare-fun c!509467 () Bool)

(assert (=> d!855828 (= c!509467 ((_ is EmptyLang!9501) (regTwo!19514 r!17423)))))

(assert (=> d!855828 (validRegex!4234 (regTwo!19514 r!17423))))

(assert (=> d!855828 (= (simplify!456 (regTwo!19514 r!17423)) lt!1050870)))

(declare-fun b!3066550 () Bool)

(declare-fun e!1919664 () Regex!9501)

(assert (=> b!3066550 (= e!1919664 EmptyExpr!9501)))

(declare-fun bm!212511 () Bool)

(declare-fun call!212514 () Bool)

(assert (=> bm!212511 (= call!212513 call!212514)))

(declare-fun b!3066551 () Bool)

(declare-fun e!1919660 () Regex!9501)

(assert (=> b!3066551 (= e!1919660 (regTwo!19514 r!17423))))

(declare-fun b!3066552 () Bool)

(assert (=> b!3066552 (= c!509469 ((_ is Union!9501) (regTwo!19514 r!17423)))))

(declare-fun e!1919658 () Regex!9501)

(assert (=> b!3066552 (= e!1919658 e!1919656)))

(declare-fun b!3066553 () Bool)

(declare-fun c!509471 () Bool)

(assert (=> b!3066553 (= c!509471 e!1919661)))

(declare-fun res!1258846 () Bool)

(assert (=> b!3066553 (=> res!1258846 e!1919661)))

(assert (=> b!3066553 (= res!1258846 call!212514)))

(assert (=> b!3066553 (= lt!1050872 call!212519)))

(assert (=> b!3066553 (= e!1919658 e!1919664)))

(declare-fun b!3066554 () Bool)

(assert (=> b!3066554 (= e!1919665 e!1919660)))

(declare-fun c!509476 () Bool)

(assert (=> b!3066554 (= c!509476 ((_ is ElementMatch!9501) (regTwo!19514 r!17423)))))

(declare-fun b!3066555 () Bool)

(declare-fun c!509474 () Bool)

(assert (=> b!3066555 (= c!509474 call!212516)))

(declare-fun e!1919653 () Regex!9501)

(assert (=> b!3066555 (= e!1919655 e!1919653)))

(declare-fun b!3066556 () Bool)

(assert (=> b!3066556 (= e!1919664 (Star!9501 lt!1050872))))

(declare-fun b!3066557 () Bool)

(assert (=> b!3066557 (= e!1919665 EmptyLang!9501)))

(declare-fun bm!212512 () Bool)

(assert (=> bm!212512 (= call!212515 call!212519)))

(declare-fun b!3066558 () Bool)

(assert (=> b!3066558 (= e!1919659 lt!1050871)))

(declare-fun b!3066559 () Bool)

(declare-fun e!1919657 () Regex!9501)

(assert (=> b!3066559 (= e!1919657 lt!1050869)))

(declare-fun b!3066560 () Bool)

(declare-fun e!1919666 () Regex!9501)

(assert (=> b!3066560 (= e!1919666 e!1919658)))

(assert (=> b!3066560 (= c!509468 ((_ is Star!9501) (regTwo!19514 r!17423)))))

(declare-fun bm!212513 () Bool)

(assert (=> bm!212513 (= call!212517 (isEmptyLang!552 (ite c!509469 lt!1050871 lt!1050869)))))

(declare-fun b!3066561 () Bool)

(assert (=> b!3066561 (= e!1919666 EmptyExpr!9501)))

(declare-fun b!3066562 () Bool)

(assert (=> b!3066562 (= e!1919657 (Concat!14822 lt!1050869 lt!1050873))))

(declare-fun b!3066563 () Bool)

(assert (=> b!3066563 (= e!1919653 e!1919657)))

(declare-fun c!509466 () Bool)

(assert (=> b!3066563 (= c!509466 (isEmptyExpr!558 lt!1050873))))

(declare-fun bm!212514 () Bool)

(assert (=> bm!212514 (= call!212514 (isEmptyLang!552 (ite c!509468 lt!1050872 (ite c!509469 lt!1050874 lt!1050873))))))

(declare-fun b!3066564 () Bool)

(assert (=> b!3066564 (= e!1919654 lt!1050874)))

(declare-fun b!3066565 () Bool)

(declare-fun c!509470 () Bool)

(assert (=> b!3066565 (= c!509470 ((_ is EmptyExpr!9501) (regTwo!19514 r!17423)))))

(assert (=> b!3066565 (= e!1919660 e!1919666)))

(declare-fun b!3066566 () Bool)

(assert (=> b!3066566 (= e!1919653 lt!1050873)))

(declare-fun b!3066567 () Bool)

(assert (=> b!3066567 (= e!1919662 call!212513)))

(assert (= (and d!855828 c!509467) b!3066557))

(assert (= (and d!855828 (not c!509467)) b!3066554))

(assert (= (and b!3066554 c!509476) b!3066551))

(assert (= (and b!3066554 (not c!509476)) b!3066565))

(assert (= (and b!3066565 c!509470) b!3066561))

(assert (= (and b!3066565 (not c!509470)) b!3066560))

(assert (= (and b!3066560 c!509468) b!3066553))

(assert (= (and b!3066560 (not c!509468)) b!3066552))

(assert (= (and b!3066553 (not res!1258846)) b!3066544))

(assert (= (and b!3066553 c!509471) b!3066550))

(assert (= (and b!3066553 (not c!509471)) b!3066556))

(assert (= (and b!3066552 c!509469) b!3066546))

(assert (= (and b!3066552 (not c!509469)) b!3066547))

(assert (= (and b!3066546 c!509473) b!3066564))

(assert (= (and b!3066546 (not c!509473)) b!3066548))

(assert (= (and b!3066548 c!509475) b!3066558))

(assert (= (and b!3066548 (not c!509475)) b!3066545))

(assert (= (and b!3066547 (not res!1258847)) b!3066567))

(assert (= (and b!3066547 c!509472) b!3066549))

(assert (= (and b!3066547 (not c!509472)) b!3066555))

(assert (= (and b!3066555 c!509474) b!3066566))

(assert (= (and b!3066555 (not c!509474)) b!3066563))

(assert (= (and b!3066563 c!509466) b!3066559))

(assert (= (and b!3066563 (not c!509466)) b!3066562))

(assert (= (or b!3066546 b!3066547) bm!212512))

(assert (= (or b!3066546 b!3066547) bm!212510))

(assert (= (or b!3066548 b!3066567) bm!212511))

(assert (= (or b!3066546 b!3066547) bm!212513))

(assert (= (or b!3066544 b!3066555) bm!212509))

(assert (= (or b!3066553 bm!212512) bm!212508))

(assert (= (or b!3066553 bm!212511) bm!212514))

(assert (= (and d!855828 res!1258848) b!3066543))

(declare-fun m!3383939 () Bool)

(assert (=> bm!212508 m!3383939))

(declare-fun m!3383941 () Bool)

(assert (=> bm!212509 m!3383941))

(declare-fun m!3383943 () Bool)

(assert (=> bm!212513 m!3383943))

(declare-fun m!3383945 () Bool)

(assert (=> bm!212514 m!3383945))

(declare-fun m!3383947 () Bool)

(assert (=> d!855828 m!3383947))

(declare-fun m!3383949 () Bool)

(assert (=> d!855828 m!3383949))

(declare-fun m!3383951 () Bool)

(assert (=> b!3066563 m!3383951))

(declare-fun m!3383953 () Bool)

(assert (=> bm!212510 m!3383953))

(declare-fun m!3383955 () Bool)

(assert (=> b!3066543 m!3383955))

(declare-fun m!3383957 () Bool)

(assert (=> b!3066543 m!3383957))

(assert (=> b!3066259 d!855828))

(declare-fun b!3066568 () Bool)

(declare-fun e!1919677 () Bool)

(declare-fun lt!1050876 () Regex!9501)

(assert (=> b!3066568 (= e!1919677 (= (nullable!3147 lt!1050876) (nullable!3147 (regOne!19514 r!17423))))))

(declare-fun b!3066569 () Bool)

(declare-fun e!1919675 () Bool)

(declare-fun call!212523 () Bool)

(assert (=> b!3066569 (= e!1919675 call!212523)))

(declare-fun call!212526 () Regex!9501)

(declare-fun bm!212515 () Bool)

(declare-fun c!509479 () Bool)

(declare-fun c!509480 () Bool)

(assert (=> bm!212515 (= call!212526 (simplify!456 (ite c!509479 (reg!9830 (regOne!19514 r!17423)) (ite c!509480 (regOne!19515 (regOne!19514 r!17423)) (regTwo!19514 (regOne!19514 r!17423))))))))

(declare-fun b!3066570 () Bool)

(declare-fun e!1919673 () Regex!9501)

(declare-fun lt!1050877 () Regex!9501)

(declare-fun lt!1050880 () Regex!9501)

(assert (=> b!3066570 (= e!1919673 (Union!9501 lt!1050877 lt!1050880))))

(declare-fun bm!212516 () Bool)

(declare-fun lt!1050875 () Regex!9501)

(declare-fun lt!1050878 () Regex!9501)

(assert (=> bm!212516 (= call!212523 (isEmptyExpr!558 (ite c!509479 lt!1050878 lt!1050875)))))

(declare-fun b!3066571 () Bool)

(declare-fun e!1919670 () Regex!9501)

(declare-fun e!1919668 () Regex!9501)

(assert (=> b!3066571 (= e!1919670 e!1919668)))

(declare-fun call!212522 () Regex!9501)

(assert (=> b!3066571 (= lt!1050877 call!212522)))

(declare-fun call!212525 () Regex!9501)

(assert (=> b!3066571 (= lt!1050880 call!212525)))

(declare-fun c!509484 () Bool)

(declare-fun call!212524 () Bool)

(assert (=> b!3066571 (= c!509484 call!212524)))

(declare-fun bm!212517 () Bool)

(assert (=> bm!212517 (= call!212525 (simplify!456 (ite c!509480 (regTwo!19515 (regOne!19514 r!17423)) (regOne!19514 (regOne!19514 r!17423)))))))

(declare-fun b!3066572 () Bool)

(declare-fun e!1919669 () Regex!9501)

(assert (=> b!3066572 (= e!1919670 e!1919669)))

(assert (=> b!3066572 (= lt!1050875 call!212525)))

(declare-fun lt!1050879 () Regex!9501)

(assert (=> b!3066572 (= lt!1050879 call!212522)))

(declare-fun res!1258850 () Bool)

(assert (=> b!3066572 (= res!1258850 call!212524)))

(declare-fun e!1919676 () Bool)

(assert (=> b!3066572 (=> res!1258850 e!1919676)))

(declare-fun c!509483 () Bool)

(assert (=> b!3066572 (= c!509483 e!1919676)))

(declare-fun b!3066573 () Bool)

(declare-fun c!509486 () Bool)

(declare-fun call!212520 () Bool)

(assert (=> b!3066573 (= c!509486 call!212520)))

(assert (=> b!3066573 (= e!1919668 e!1919673)))

(declare-fun b!3066574 () Bool)

(assert (=> b!3066574 (= e!1919669 EmptyLang!9501)))

(declare-fun d!855830 () Bool)

(assert (=> d!855830 e!1919677))

(declare-fun res!1258851 () Bool)

(assert (=> d!855830 (=> (not res!1258851) (not e!1919677))))

(assert (=> d!855830 (= res!1258851 (validRegex!4234 lt!1050876))))

(declare-fun e!1919679 () Regex!9501)

(assert (=> d!855830 (= lt!1050876 e!1919679)))

(declare-fun c!509478 () Bool)

(assert (=> d!855830 (= c!509478 ((_ is EmptyLang!9501) (regOne!19514 r!17423)))))

(assert (=> d!855830 (validRegex!4234 (regOne!19514 r!17423))))

(assert (=> d!855830 (= (simplify!456 (regOne!19514 r!17423)) lt!1050876)))

(declare-fun b!3066575 () Bool)

(declare-fun e!1919678 () Regex!9501)

(assert (=> b!3066575 (= e!1919678 EmptyExpr!9501)))

(declare-fun bm!212518 () Bool)

(declare-fun call!212521 () Bool)

(assert (=> bm!212518 (= call!212520 call!212521)))

(declare-fun b!3066576 () Bool)

(declare-fun e!1919674 () Regex!9501)

(assert (=> b!3066576 (= e!1919674 (regOne!19514 r!17423))))

(declare-fun b!3066577 () Bool)

(assert (=> b!3066577 (= c!509480 ((_ is Union!9501) (regOne!19514 r!17423)))))

(declare-fun e!1919672 () Regex!9501)

(assert (=> b!3066577 (= e!1919672 e!1919670)))

(declare-fun b!3066578 () Bool)

(declare-fun c!509482 () Bool)

(assert (=> b!3066578 (= c!509482 e!1919675)))

(declare-fun res!1258849 () Bool)

(assert (=> b!3066578 (=> res!1258849 e!1919675)))

(assert (=> b!3066578 (= res!1258849 call!212521)))

(assert (=> b!3066578 (= lt!1050878 call!212526)))

(assert (=> b!3066578 (= e!1919672 e!1919678)))

(declare-fun b!3066579 () Bool)

(assert (=> b!3066579 (= e!1919679 e!1919674)))

(declare-fun c!509487 () Bool)

(assert (=> b!3066579 (= c!509487 ((_ is ElementMatch!9501) (regOne!19514 r!17423)))))

(declare-fun b!3066580 () Bool)

(declare-fun c!509485 () Bool)

(assert (=> b!3066580 (= c!509485 call!212523)))

(declare-fun e!1919667 () Regex!9501)

(assert (=> b!3066580 (= e!1919669 e!1919667)))

(declare-fun b!3066581 () Bool)

(assert (=> b!3066581 (= e!1919678 (Star!9501 lt!1050878))))

(declare-fun b!3066582 () Bool)

(assert (=> b!3066582 (= e!1919679 EmptyLang!9501)))

(declare-fun bm!212519 () Bool)

(assert (=> bm!212519 (= call!212522 call!212526)))

(declare-fun b!3066583 () Bool)

(assert (=> b!3066583 (= e!1919673 lt!1050877)))

(declare-fun b!3066584 () Bool)

(declare-fun e!1919671 () Regex!9501)

(assert (=> b!3066584 (= e!1919671 lt!1050875)))

(declare-fun b!3066585 () Bool)

(declare-fun e!1919680 () Regex!9501)

(assert (=> b!3066585 (= e!1919680 e!1919672)))

(assert (=> b!3066585 (= c!509479 ((_ is Star!9501) (regOne!19514 r!17423)))))

(declare-fun bm!212520 () Bool)

(assert (=> bm!212520 (= call!212524 (isEmptyLang!552 (ite c!509480 lt!1050877 lt!1050875)))))

(declare-fun b!3066586 () Bool)

(assert (=> b!3066586 (= e!1919680 EmptyExpr!9501)))

(declare-fun b!3066587 () Bool)

(assert (=> b!3066587 (= e!1919671 (Concat!14822 lt!1050875 lt!1050879))))

(declare-fun b!3066588 () Bool)

(assert (=> b!3066588 (= e!1919667 e!1919671)))

(declare-fun c!509477 () Bool)

(assert (=> b!3066588 (= c!509477 (isEmptyExpr!558 lt!1050879))))

(declare-fun bm!212521 () Bool)

(assert (=> bm!212521 (= call!212521 (isEmptyLang!552 (ite c!509479 lt!1050878 (ite c!509480 lt!1050880 lt!1050879))))))

(declare-fun b!3066589 () Bool)

(assert (=> b!3066589 (= e!1919668 lt!1050880)))

(declare-fun b!3066590 () Bool)

(declare-fun c!509481 () Bool)

(assert (=> b!3066590 (= c!509481 ((_ is EmptyExpr!9501) (regOne!19514 r!17423)))))

(assert (=> b!3066590 (= e!1919674 e!1919680)))

(declare-fun b!3066591 () Bool)

(assert (=> b!3066591 (= e!1919667 lt!1050879)))

(declare-fun b!3066592 () Bool)

(assert (=> b!3066592 (= e!1919676 call!212520)))

(assert (= (and d!855830 c!509478) b!3066582))

(assert (= (and d!855830 (not c!509478)) b!3066579))

(assert (= (and b!3066579 c!509487) b!3066576))

(assert (= (and b!3066579 (not c!509487)) b!3066590))

(assert (= (and b!3066590 c!509481) b!3066586))

(assert (= (and b!3066590 (not c!509481)) b!3066585))

(assert (= (and b!3066585 c!509479) b!3066578))

(assert (= (and b!3066585 (not c!509479)) b!3066577))

(assert (= (and b!3066578 (not res!1258849)) b!3066569))

(assert (= (and b!3066578 c!509482) b!3066575))

(assert (= (and b!3066578 (not c!509482)) b!3066581))

(assert (= (and b!3066577 c!509480) b!3066571))

(assert (= (and b!3066577 (not c!509480)) b!3066572))

(assert (= (and b!3066571 c!509484) b!3066589))

(assert (= (and b!3066571 (not c!509484)) b!3066573))

(assert (= (and b!3066573 c!509486) b!3066583))

(assert (= (and b!3066573 (not c!509486)) b!3066570))

(assert (= (and b!3066572 (not res!1258850)) b!3066592))

(assert (= (and b!3066572 c!509483) b!3066574))

(assert (= (and b!3066572 (not c!509483)) b!3066580))

(assert (= (and b!3066580 c!509485) b!3066591))

(assert (= (and b!3066580 (not c!509485)) b!3066588))

(assert (= (and b!3066588 c!509477) b!3066584))

(assert (= (and b!3066588 (not c!509477)) b!3066587))

(assert (= (or b!3066571 b!3066572) bm!212519))

(assert (= (or b!3066571 b!3066572) bm!212517))

(assert (= (or b!3066573 b!3066592) bm!212518))

(assert (= (or b!3066571 b!3066572) bm!212520))

(assert (= (or b!3066569 b!3066580) bm!212516))

(assert (= (or b!3066578 bm!212519) bm!212515))

(assert (= (or b!3066578 bm!212518) bm!212521))

(assert (= (and d!855830 res!1258851) b!3066568))

(declare-fun m!3383959 () Bool)

(assert (=> bm!212515 m!3383959))

(declare-fun m!3383961 () Bool)

(assert (=> bm!212516 m!3383961))

(declare-fun m!3383963 () Bool)

(assert (=> bm!212520 m!3383963))

(declare-fun m!3383965 () Bool)

(assert (=> bm!212521 m!3383965))

(declare-fun m!3383967 () Bool)

(assert (=> d!855830 m!3383967))

(declare-fun m!3383969 () Bool)

(assert (=> d!855830 m!3383969))

(declare-fun m!3383971 () Bool)

(assert (=> b!3066588 m!3383971))

(declare-fun m!3383973 () Bool)

(assert (=> bm!212517 m!3383973))

(declare-fun m!3383975 () Bool)

(assert (=> b!3066568 m!3383975))

(declare-fun m!3383977 () Bool)

(assert (=> b!3066568 m!3383977))

(assert (=> b!3066259 d!855830))

(declare-fun d!855832 () Bool)

(assert (=> d!855832 (= (isEmptyExpr!558 lt!1050827) ((_ is EmptyExpr!9501) lt!1050827))))

(assert (=> b!3066254 d!855832))

(declare-fun b!3066618 () Bool)

(declare-fun res!1258861 () Bool)

(declare-fun e!1919696 () Bool)

(assert (=> b!3066618 (=> (not res!1258861) (not e!1919696))))

(assert (=> b!3066618 (= res!1258861 (isEmpty!19567 (tail!5028 s!11993)))))

(declare-fun b!3066619 () Bool)

(declare-fun res!1258856 () Bool)

(declare-fun e!1919695 () Bool)

(assert (=> b!3066619 (=> res!1258856 e!1919695)))

(assert (=> b!3066619 (= res!1258856 (not ((_ is ElementMatch!9501) lt!1050823)))))

(declare-fun e!1919700 () Bool)

(assert (=> b!3066619 (= e!1919700 e!1919695)))

(declare-fun b!3066620 () Bool)

(declare-fun e!1919699 () Bool)

(declare-fun lt!1050887 () Bool)

(declare-fun call!212534 () Bool)

(assert (=> b!3066620 (= e!1919699 (= lt!1050887 call!212534))))

(declare-fun b!3066621 () Bool)

(declare-fun e!1919701 () Bool)

(assert (=> b!3066621 (= e!1919695 e!1919701)))

(declare-fun res!1258859 () Bool)

(assert (=> b!3066621 (=> (not res!1258859) (not e!1919701))))

(assert (=> b!3066621 (= res!1258859 (not lt!1050887))))

(declare-fun bm!212529 () Bool)

(assert (=> bm!212529 (= call!212534 (isEmpty!19567 s!11993))))

(declare-fun b!3066622 () Bool)

(declare-fun e!1919697 () Bool)

(assert (=> b!3066622 (= e!1919697 (nullable!3147 lt!1050823))))

(declare-fun b!3066623 () Bool)

(assert (=> b!3066623 (= e!1919700 (not lt!1050887))))

(declare-fun d!855834 () Bool)

(assert (=> d!855834 e!1919699))

(declare-fun c!509501 () Bool)

(assert (=> d!855834 (= c!509501 ((_ is EmptyExpr!9501) lt!1050823))))

(assert (=> d!855834 (= lt!1050887 e!1919697)))

(declare-fun c!509500 () Bool)

(assert (=> d!855834 (= c!509500 (isEmpty!19567 s!11993))))

(assert (=> d!855834 (validRegex!4234 lt!1050823)))

(assert (=> d!855834 (= (matchR!4383 lt!1050823 s!11993) lt!1050887)))

(declare-fun b!3066624 () Bool)

(declare-fun e!1919698 () Bool)

(assert (=> b!3066624 (= e!1919701 e!1919698)))

(declare-fun res!1258855 () Bool)

(assert (=> b!3066624 (=> res!1258855 e!1919698)))

(assert (=> b!3066624 (= res!1258855 call!212534)))

(declare-fun b!3066625 () Bool)

(declare-fun res!1258860 () Bool)

(assert (=> b!3066625 (=> res!1258860 e!1919695)))

(assert (=> b!3066625 (= res!1258860 e!1919696)))

(declare-fun res!1258858 () Bool)

(assert (=> b!3066625 (=> (not res!1258858) (not e!1919696))))

(assert (=> b!3066625 (= res!1258858 lt!1050887)))

(declare-fun b!3066626 () Bool)

(declare-fun res!1258862 () Bool)

(assert (=> b!3066626 (=> res!1258862 e!1919698)))

(assert (=> b!3066626 (= res!1258862 (not (isEmpty!19567 (tail!5028 s!11993))))))

(declare-fun b!3066627 () Bool)

(assert (=> b!3066627 (= e!1919697 (matchR!4383 (derivativeStep!2743 lt!1050823 (head!6802 s!11993)) (tail!5028 s!11993)))))

(declare-fun b!3066628 () Bool)

(assert (=> b!3066628 (= e!1919696 (= (head!6802 s!11993) (c!509377 lt!1050823)))))

(declare-fun b!3066629 () Bool)

(assert (=> b!3066629 (= e!1919699 e!1919700)))

(declare-fun c!509499 () Bool)

(assert (=> b!3066629 (= c!509499 ((_ is EmptyLang!9501) lt!1050823))))

(declare-fun b!3066630 () Bool)

(declare-fun res!1258857 () Bool)

(assert (=> b!3066630 (=> (not res!1258857) (not e!1919696))))

(assert (=> b!3066630 (= res!1258857 (not call!212534))))

(declare-fun b!3066631 () Bool)

(assert (=> b!3066631 (= e!1919698 (not (= (head!6802 s!11993) (c!509377 lt!1050823))))))

(assert (= (and d!855834 c!509500) b!3066622))

(assert (= (and d!855834 (not c!509500)) b!3066627))

(assert (= (and d!855834 c!509501) b!3066620))

(assert (= (and d!855834 (not c!509501)) b!3066629))

(assert (= (and b!3066629 c!509499) b!3066623))

(assert (= (and b!3066629 (not c!509499)) b!3066619))

(assert (= (and b!3066619 (not res!1258856)) b!3066625))

(assert (= (and b!3066625 res!1258858) b!3066630))

(assert (= (and b!3066630 res!1258857) b!3066618))

(assert (= (and b!3066618 res!1258861) b!3066628))

(assert (= (and b!3066625 (not res!1258860)) b!3066621))

(assert (= (and b!3066621 res!1258859) b!3066624))

(assert (= (and b!3066624 (not res!1258855)) b!3066626))

(assert (= (and b!3066626 (not res!1258862)) b!3066631))

(assert (= (or b!3066620 b!3066624 b!3066630) bm!212529))

(assert (=> b!3066628 m!3383901))

(assert (=> b!3066626 m!3383903))

(assert (=> b!3066626 m!3383903))

(assert (=> b!3066626 m!3383905))

(declare-fun m!3383979 () Bool)

(assert (=> b!3066622 m!3383979))

(assert (=> b!3066618 m!3383903))

(assert (=> b!3066618 m!3383903))

(assert (=> b!3066618 m!3383905))

(assert (=> bm!212529 m!3383851))

(assert (=> b!3066631 m!3383901))

(assert (=> d!855834 m!3383851))

(declare-fun m!3383981 () Bool)

(assert (=> d!855834 m!3383981))

(assert (=> b!3066627 m!3383901))

(assert (=> b!3066627 m!3383901))

(declare-fun m!3383983 () Bool)

(assert (=> b!3066627 m!3383983))

(assert (=> b!3066627 m!3383903))

(assert (=> b!3066627 m!3383983))

(assert (=> b!3066627 m!3383903))

(declare-fun m!3383985 () Bool)

(assert (=> b!3066627 m!3383985))

(assert (=> b!3066261 d!855834))

(declare-fun b!3066632 () Bool)

(declare-fun res!1258869 () Bool)

(declare-fun e!1919703 () Bool)

(assert (=> b!3066632 (=> (not res!1258869) (not e!1919703))))

(assert (=> b!3066632 (= res!1258869 (isEmpty!19567 (tail!5028 s!11993)))))

(declare-fun b!3066633 () Bool)

(declare-fun res!1258864 () Bool)

(declare-fun e!1919702 () Bool)

(assert (=> b!3066633 (=> res!1258864 e!1919702)))

(assert (=> b!3066633 (= res!1258864 (not ((_ is ElementMatch!9501) (regTwo!19514 r!17423))))))

(declare-fun e!1919707 () Bool)

(assert (=> b!3066633 (= e!1919707 e!1919702)))

(declare-fun b!3066634 () Bool)

(declare-fun e!1919706 () Bool)

(declare-fun lt!1050888 () Bool)

(declare-fun call!212535 () Bool)

(assert (=> b!3066634 (= e!1919706 (= lt!1050888 call!212535))))

(declare-fun b!3066635 () Bool)

(declare-fun e!1919708 () Bool)

(assert (=> b!3066635 (= e!1919702 e!1919708)))

(declare-fun res!1258867 () Bool)

(assert (=> b!3066635 (=> (not res!1258867) (not e!1919708))))

(assert (=> b!3066635 (= res!1258867 (not lt!1050888))))

(declare-fun bm!212530 () Bool)

(assert (=> bm!212530 (= call!212535 (isEmpty!19567 s!11993))))

(declare-fun b!3066636 () Bool)

(declare-fun e!1919704 () Bool)

(assert (=> b!3066636 (= e!1919704 (nullable!3147 (regTwo!19514 r!17423)))))

(declare-fun b!3066637 () Bool)

(assert (=> b!3066637 (= e!1919707 (not lt!1050888))))

(declare-fun d!855836 () Bool)

(assert (=> d!855836 e!1919706))

(declare-fun c!509504 () Bool)

(assert (=> d!855836 (= c!509504 ((_ is EmptyExpr!9501) (regTwo!19514 r!17423)))))

(assert (=> d!855836 (= lt!1050888 e!1919704)))

(declare-fun c!509503 () Bool)

(assert (=> d!855836 (= c!509503 (isEmpty!19567 s!11993))))

(assert (=> d!855836 (validRegex!4234 (regTwo!19514 r!17423))))

(assert (=> d!855836 (= (matchR!4383 (regTwo!19514 r!17423) s!11993) lt!1050888)))

(declare-fun b!3066638 () Bool)

(declare-fun e!1919705 () Bool)

(assert (=> b!3066638 (= e!1919708 e!1919705)))

(declare-fun res!1258863 () Bool)

(assert (=> b!3066638 (=> res!1258863 e!1919705)))

(assert (=> b!3066638 (= res!1258863 call!212535)))

(declare-fun b!3066639 () Bool)

(declare-fun res!1258868 () Bool)

(assert (=> b!3066639 (=> res!1258868 e!1919702)))

(assert (=> b!3066639 (= res!1258868 e!1919703)))

(declare-fun res!1258866 () Bool)

(assert (=> b!3066639 (=> (not res!1258866) (not e!1919703))))

(assert (=> b!3066639 (= res!1258866 lt!1050888)))

(declare-fun b!3066640 () Bool)

(declare-fun res!1258870 () Bool)

(assert (=> b!3066640 (=> res!1258870 e!1919705)))

(assert (=> b!3066640 (= res!1258870 (not (isEmpty!19567 (tail!5028 s!11993))))))

(declare-fun b!3066641 () Bool)

(assert (=> b!3066641 (= e!1919704 (matchR!4383 (derivativeStep!2743 (regTwo!19514 r!17423) (head!6802 s!11993)) (tail!5028 s!11993)))))

(declare-fun b!3066642 () Bool)

(assert (=> b!3066642 (= e!1919703 (= (head!6802 s!11993) (c!509377 (regTwo!19514 r!17423))))))

(declare-fun b!3066643 () Bool)

(assert (=> b!3066643 (= e!1919706 e!1919707)))

(declare-fun c!509502 () Bool)

(assert (=> b!3066643 (= c!509502 ((_ is EmptyLang!9501) (regTwo!19514 r!17423)))))

(declare-fun b!3066644 () Bool)

(declare-fun res!1258865 () Bool)

(assert (=> b!3066644 (=> (not res!1258865) (not e!1919703))))

(assert (=> b!3066644 (= res!1258865 (not call!212535))))

(declare-fun b!3066645 () Bool)

(assert (=> b!3066645 (= e!1919705 (not (= (head!6802 s!11993) (c!509377 (regTwo!19514 r!17423)))))))

(assert (= (and d!855836 c!509503) b!3066636))

(assert (= (and d!855836 (not c!509503)) b!3066641))

(assert (= (and d!855836 c!509504) b!3066634))

(assert (= (and d!855836 (not c!509504)) b!3066643))

(assert (= (and b!3066643 c!509502) b!3066637))

(assert (= (and b!3066643 (not c!509502)) b!3066633))

(assert (= (and b!3066633 (not res!1258864)) b!3066639))

(assert (= (and b!3066639 res!1258866) b!3066644))

(assert (= (and b!3066644 res!1258865) b!3066632))

(assert (= (and b!3066632 res!1258869) b!3066642))

(assert (= (and b!3066639 (not res!1258868)) b!3066635))

(assert (= (and b!3066635 res!1258867) b!3066638))

(assert (= (and b!3066638 (not res!1258863)) b!3066640))

(assert (= (and b!3066640 (not res!1258870)) b!3066645))

(assert (= (or b!3066634 b!3066638 b!3066644) bm!212530))

(assert (=> b!3066642 m!3383901))

(assert (=> b!3066640 m!3383903))

(assert (=> b!3066640 m!3383903))

(assert (=> b!3066640 m!3383905))

(assert (=> b!3066636 m!3383957))

(assert (=> b!3066632 m!3383903))

(assert (=> b!3066632 m!3383903))

(assert (=> b!3066632 m!3383905))

(assert (=> bm!212530 m!3383851))

(assert (=> b!3066645 m!3383901))

(assert (=> d!855836 m!3383851))

(assert (=> d!855836 m!3383949))

(assert (=> b!3066641 m!3383901))

(assert (=> b!3066641 m!3383901))

(declare-fun m!3384003 () Bool)

(assert (=> b!3066641 m!3384003))

(assert (=> b!3066641 m!3383903))

(assert (=> b!3066641 m!3384003))

(assert (=> b!3066641 m!3383903))

(declare-fun m!3384005 () Bool)

(assert (=> b!3066641 m!3384005))

(assert (=> b!3066261 d!855836))

(declare-fun d!855840 () Bool)

(assert (=> d!855840 (= (matchR!4383 (regTwo!19514 r!17423) s!11993) (matchR!4383 (simplify!456 (regTwo!19514 r!17423)) s!11993))))

(declare-fun lt!1050904 () Unit!49441)

(declare-fun choose!18176 (Regex!9501 List!35366) Unit!49441)

(assert (=> d!855840 (= lt!1050904 (choose!18176 (regTwo!19514 r!17423) s!11993))))

(assert (=> d!855840 (validRegex!4234 (regTwo!19514 r!17423))))

(assert (=> d!855840 (= (lemmaSimplifySound!286 (regTwo!19514 r!17423) s!11993) lt!1050904)))

(declare-fun bs!532599 () Bool)

(assert (= bs!532599 d!855840))

(declare-fun m!3384035 () Bool)

(assert (=> bs!532599 m!3384035))

(assert (=> bs!532599 m!3383949))

(assert (=> bs!532599 m!3383843))

(declare-fun m!3384037 () Bool)

(assert (=> bs!532599 m!3384037))

(assert (=> bs!532599 m!3383843))

(assert (=> bs!532599 m!3383865))

(assert (=> b!3066261 d!855840))

(declare-fun b!3066823 () Bool)

(assert (=> b!3066823 true))

(assert (=> b!3066823 true))

(declare-fun bs!532602 () Bool)

(declare-fun b!3066827 () Bool)

(assert (= bs!532602 (and b!3066827 b!3066823)))

(declare-fun lambda!114028 () Int)

(declare-fun lambda!114027 () Int)

(assert (=> bs!532602 (not (= lambda!114028 lambda!114027))))

(assert (=> b!3066827 true))

(assert (=> b!3066827 true))

(declare-fun b!3066818 () Bool)

(declare-fun e!1919804 () Bool)

(declare-fun e!1919801 () Bool)

(assert (=> b!3066818 (= e!1919804 e!1919801)))

(declare-fun res!1258929 () Bool)

(assert (=> b!3066818 (= res!1258929 (not ((_ is EmptyLang!9501) r!17423)))))

(assert (=> b!3066818 (=> (not res!1258929) (not e!1919801))))

(declare-fun b!3066819 () Bool)

(declare-fun call!212562 () Bool)

(assert (=> b!3066819 (= e!1919804 call!212562)))

(declare-fun b!3066820 () Bool)

(declare-fun e!1919799 () Bool)

(assert (=> b!3066820 (= e!1919799 (matchRSpec!1638 (regTwo!19515 r!17423) s!11993))))

(declare-fun d!855846 () Bool)

(declare-fun c!509553 () Bool)

(assert (=> d!855846 (= c!509553 ((_ is EmptyExpr!9501) r!17423))))

(assert (=> d!855846 (= (matchRSpec!1638 r!17423 s!11993) e!1919804)))

(declare-fun bm!212557 () Bool)

(assert (=> bm!212557 (= call!212562 (isEmpty!19567 s!11993))))

(declare-fun b!3066821 () Bool)

(declare-fun e!1919802 () Bool)

(assert (=> b!3066821 (= e!1919802 e!1919799)))

(declare-fun res!1258930 () Bool)

(assert (=> b!3066821 (= res!1258930 (matchRSpec!1638 (regOne!19515 r!17423) s!11993))))

(assert (=> b!3066821 (=> res!1258930 e!1919799)))

(declare-fun c!509554 () Bool)

(declare-fun bm!212558 () Bool)

(declare-fun call!212563 () Bool)

(declare-fun Exists!1763 (Int) Bool)

(assert (=> bm!212558 (= call!212563 (Exists!1763 (ite c!509554 lambda!114027 lambda!114028)))))

(declare-fun b!3066822 () Bool)

(declare-fun c!509555 () Bool)

(assert (=> b!3066822 (= c!509555 ((_ is Union!9501) r!17423))))

(declare-fun e!1919800 () Bool)

(assert (=> b!3066822 (= e!1919800 e!1919802)))

(declare-fun e!1919803 () Bool)

(assert (=> b!3066823 (= e!1919803 call!212563)))

(declare-fun b!3066824 () Bool)

(declare-fun c!509556 () Bool)

(assert (=> b!3066824 (= c!509556 ((_ is ElementMatch!9501) r!17423))))

(assert (=> b!3066824 (= e!1919801 e!1919800)))

(declare-fun b!3066825 () Bool)

(declare-fun e!1919805 () Bool)

(assert (=> b!3066825 (= e!1919802 e!1919805)))

(assert (=> b!3066825 (= c!509554 ((_ is Star!9501) r!17423))))

(declare-fun b!3066826 () Bool)

(declare-fun res!1258928 () Bool)

(assert (=> b!3066826 (=> res!1258928 e!1919803)))

(assert (=> b!3066826 (= res!1258928 call!212562)))

(assert (=> b!3066826 (= e!1919805 e!1919803)))

(assert (=> b!3066827 (= e!1919805 call!212563)))

(declare-fun b!3066828 () Bool)

(assert (=> b!3066828 (= e!1919800 (= s!11993 (Cons!35242 (c!509377 r!17423) Nil!35242)))))

(assert (= (and d!855846 c!509553) b!3066819))

(assert (= (and d!855846 (not c!509553)) b!3066818))

(assert (= (and b!3066818 res!1258929) b!3066824))

(assert (= (and b!3066824 c!509556) b!3066828))

(assert (= (and b!3066824 (not c!509556)) b!3066822))

(assert (= (and b!3066822 c!509555) b!3066821))

(assert (= (and b!3066822 (not c!509555)) b!3066825))

(assert (= (and b!3066821 (not res!1258930)) b!3066820))

(assert (= (and b!3066825 c!509554) b!3066826))

(assert (= (and b!3066825 (not c!509554)) b!3066827))

(assert (= (and b!3066826 (not res!1258928)) b!3066823))

(assert (= (or b!3066823 b!3066827) bm!212558))

(assert (= (or b!3066819 b!3066826) bm!212557))

(declare-fun m!3384069 () Bool)

(assert (=> b!3066820 m!3384069))

(assert (=> bm!212557 m!3383851))

(declare-fun m!3384071 () Bool)

(assert (=> b!3066821 m!3384071))

(declare-fun m!3384073 () Bool)

(assert (=> bm!212558 m!3384073))

(assert (=> b!3066256 d!855846))

(declare-fun b!3066853 () Bool)

(declare-fun res!1258937 () Bool)

(declare-fun e!1919812 () Bool)

(assert (=> b!3066853 (=> (not res!1258937) (not e!1919812))))

(assert (=> b!3066853 (= res!1258937 (isEmpty!19567 (tail!5028 s!11993)))))

(declare-fun b!3066854 () Bool)

(declare-fun res!1258932 () Bool)

(declare-fun e!1919811 () Bool)

(assert (=> b!3066854 (=> res!1258932 e!1919811)))

(assert (=> b!3066854 (= res!1258932 (not ((_ is ElementMatch!9501) r!17423)))))

(declare-fun e!1919816 () Bool)

(assert (=> b!3066854 (= e!1919816 e!1919811)))

(declare-fun b!3066855 () Bool)

(declare-fun e!1919815 () Bool)

(declare-fun lt!1050909 () Bool)

(declare-fun call!212564 () Bool)

(assert (=> b!3066855 (= e!1919815 (= lt!1050909 call!212564))))

(declare-fun b!3066856 () Bool)

(declare-fun e!1919817 () Bool)

(assert (=> b!3066856 (= e!1919811 e!1919817)))

(declare-fun res!1258935 () Bool)

(assert (=> b!3066856 (=> (not res!1258935) (not e!1919817))))

(assert (=> b!3066856 (= res!1258935 (not lt!1050909))))

(declare-fun bm!212559 () Bool)

(assert (=> bm!212559 (= call!212564 (isEmpty!19567 s!11993))))

(declare-fun b!3066857 () Bool)

(declare-fun e!1919813 () Bool)

(assert (=> b!3066857 (= e!1919813 (nullable!3147 r!17423))))

(declare-fun b!3066858 () Bool)

(assert (=> b!3066858 (= e!1919816 (not lt!1050909))))

(declare-fun d!855858 () Bool)

(assert (=> d!855858 e!1919815))

(declare-fun c!509559 () Bool)

(assert (=> d!855858 (= c!509559 ((_ is EmptyExpr!9501) r!17423))))

(assert (=> d!855858 (= lt!1050909 e!1919813)))

(declare-fun c!509558 () Bool)

(assert (=> d!855858 (= c!509558 (isEmpty!19567 s!11993))))

(assert (=> d!855858 (validRegex!4234 r!17423)))

(assert (=> d!855858 (= (matchR!4383 r!17423 s!11993) lt!1050909)))

(declare-fun b!3066859 () Bool)

(declare-fun e!1919814 () Bool)

(assert (=> b!3066859 (= e!1919817 e!1919814)))

(declare-fun res!1258931 () Bool)

(assert (=> b!3066859 (=> res!1258931 e!1919814)))

(assert (=> b!3066859 (= res!1258931 call!212564)))

(declare-fun b!3066860 () Bool)

(declare-fun res!1258936 () Bool)

(assert (=> b!3066860 (=> res!1258936 e!1919811)))

(assert (=> b!3066860 (= res!1258936 e!1919812)))

(declare-fun res!1258934 () Bool)

(assert (=> b!3066860 (=> (not res!1258934) (not e!1919812))))

(assert (=> b!3066860 (= res!1258934 lt!1050909)))

(declare-fun b!3066861 () Bool)

(declare-fun res!1258938 () Bool)

(assert (=> b!3066861 (=> res!1258938 e!1919814)))

(assert (=> b!3066861 (= res!1258938 (not (isEmpty!19567 (tail!5028 s!11993))))))

(declare-fun b!3066862 () Bool)

(assert (=> b!3066862 (= e!1919813 (matchR!4383 (derivativeStep!2743 r!17423 (head!6802 s!11993)) (tail!5028 s!11993)))))

(declare-fun b!3066863 () Bool)

(assert (=> b!3066863 (= e!1919812 (= (head!6802 s!11993) (c!509377 r!17423)))))

(declare-fun b!3066864 () Bool)

(assert (=> b!3066864 (= e!1919815 e!1919816)))

(declare-fun c!509557 () Bool)

(assert (=> b!3066864 (= c!509557 ((_ is EmptyLang!9501) r!17423))))

(declare-fun b!3066865 () Bool)

(declare-fun res!1258933 () Bool)

(assert (=> b!3066865 (=> (not res!1258933) (not e!1919812))))

(assert (=> b!3066865 (= res!1258933 (not call!212564))))

(declare-fun b!3066866 () Bool)

(assert (=> b!3066866 (= e!1919814 (not (= (head!6802 s!11993) (c!509377 r!17423))))))

(assert (= (and d!855858 c!509558) b!3066857))

(assert (= (and d!855858 (not c!509558)) b!3066862))

(assert (= (and d!855858 c!509559) b!3066855))

(assert (= (and d!855858 (not c!509559)) b!3066864))

(assert (= (and b!3066864 c!509557) b!3066858))

(assert (= (and b!3066864 (not c!509557)) b!3066854))

(assert (= (and b!3066854 (not res!1258932)) b!3066860))

(assert (= (and b!3066860 res!1258934) b!3066865))

(assert (= (and b!3066865 res!1258933) b!3066853))

(assert (= (and b!3066853 res!1258937) b!3066863))

(assert (= (and b!3066860 (not res!1258936)) b!3066856))

(assert (= (and b!3066856 res!1258935) b!3066859))

(assert (= (and b!3066859 (not res!1258931)) b!3066861))

(assert (= (and b!3066861 (not res!1258938)) b!3066866))

(assert (= (or b!3066855 b!3066859 b!3066865) bm!212559))

(assert (=> b!3066863 m!3383901))

(assert (=> b!3066861 m!3383903))

(assert (=> b!3066861 m!3383903))

(assert (=> b!3066861 m!3383905))

(assert (=> b!3066857 m!3383937))

(assert (=> b!3066853 m!3383903))

(assert (=> b!3066853 m!3383903))

(assert (=> b!3066853 m!3383905))

(assert (=> bm!212559 m!3383851))

(assert (=> b!3066866 m!3383901))

(assert (=> d!855858 m!3383851))

(assert (=> d!855858 m!3383839))

(assert (=> b!3066862 m!3383901))

(assert (=> b!3066862 m!3383901))

(declare-fun m!3384075 () Bool)

(assert (=> b!3066862 m!3384075))

(assert (=> b!3066862 m!3383903))

(assert (=> b!3066862 m!3384075))

(assert (=> b!3066862 m!3383903))

(declare-fun m!3384077 () Bool)

(assert (=> b!3066862 m!3384077))

(assert (=> b!3066256 d!855858))

(declare-fun d!855860 () Bool)

(assert (=> d!855860 (= (matchR!4383 r!17423 s!11993) (matchRSpec!1638 r!17423 s!11993))))

(declare-fun lt!1050912 () Unit!49441)

(declare-fun choose!18177 (Regex!9501 List!35366) Unit!49441)

(assert (=> d!855860 (= lt!1050912 (choose!18177 r!17423 s!11993))))

(assert (=> d!855860 (validRegex!4234 r!17423)))

(assert (=> d!855860 (= (mainMatchTheorem!1638 r!17423 s!11993) lt!1050912)))

(declare-fun bs!532603 () Bool)

(assert (= bs!532603 d!855860))

(assert (=> bs!532603 m!3383857))

(assert (=> bs!532603 m!3383855))

(declare-fun m!3384079 () Bool)

(assert (=> bs!532603 m!3384079))

(assert (=> bs!532603 m!3383839))

(assert (=> b!3066256 d!855860))

(declare-fun e!1919820 () Bool)

(assert (=> b!3066262 (= tp!968108 e!1919820)))

(declare-fun b!3066878 () Bool)

(declare-fun tp!968162 () Bool)

(declare-fun tp!968163 () Bool)

(assert (=> b!3066878 (= e!1919820 (and tp!968162 tp!968163))))

(declare-fun b!3066877 () Bool)

(assert (=> b!3066877 (= e!1919820 tp_is_empty!16565)))

(declare-fun b!3066880 () Bool)

(declare-fun tp!968166 () Bool)

(declare-fun tp!968164 () Bool)

(assert (=> b!3066880 (= e!1919820 (and tp!968166 tp!968164))))

(declare-fun b!3066879 () Bool)

(declare-fun tp!968165 () Bool)

(assert (=> b!3066879 (= e!1919820 tp!968165)))

(assert (= (and b!3066262 ((_ is ElementMatch!9501) (reg!9830 r!17423))) b!3066877))

(assert (= (and b!3066262 ((_ is Concat!14822) (reg!9830 r!17423))) b!3066878))

(assert (= (and b!3066262 ((_ is Star!9501) (reg!9830 r!17423))) b!3066879))

(assert (= (and b!3066262 ((_ is Union!9501) (reg!9830 r!17423))) b!3066880))

(declare-fun e!1919821 () Bool)

(assert (=> b!3066264 (= tp!968112 e!1919821)))

(declare-fun b!3066882 () Bool)

(declare-fun tp!968167 () Bool)

(declare-fun tp!968168 () Bool)

(assert (=> b!3066882 (= e!1919821 (and tp!968167 tp!968168))))

(declare-fun b!3066881 () Bool)

(assert (=> b!3066881 (= e!1919821 tp_is_empty!16565)))

(declare-fun b!3066884 () Bool)

(declare-fun tp!968171 () Bool)

(declare-fun tp!968169 () Bool)

(assert (=> b!3066884 (= e!1919821 (and tp!968171 tp!968169))))

(declare-fun b!3066883 () Bool)

(declare-fun tp!968170 () Bool)

(assert (=> b!3066883 (= e!1919821 tp!968170)))

(assert (= (and b!3066264 ((_ is ElementMatch!9501) (regOne!19514 r!17423))) b!3066881))

(assert (= (and b!3066264 ((_ is Concat!14822) (regOne!19514 r!17423))) b!3066882))

(assert (= (and b!3066264 ((_ is Star!9501) (regOne!19514 r!17423))) b!3066883))

(assert (= (and b!3066264 ((_ is Union!9501) (regOne!19514 r!17423))) b!3066884))

(declare-fun e!1919822 () Bool)

(assert (=> b!3066264 (= tp!968111 e!1919822)))

(declare-fun b!3066886 () Bool)

(declare-fun tp!968172 () Bool)

(declare-fun tp!968173 () Bool)

(assert (=> b!3066886 (= e!1919822 (and tp!968172 tp!968173))))

(declare-fun b!3066885 () Bool)

(assert (=> b!3066885 (= e!1919822 tp_is_empty!16565)))

(declare-fun b!3066888 () Bool)

(declare-fun tp!968176 () Bool)

(declare-fun tp!968174 () Bool)

(assert (=> b!3066888 (= e!1919822 (and tp!968176 tp!968174))))

(declare-fun b!3066887 () Bool)

(declare-fun tp!968175 () Bool)

(assert (=> b!3066887 (= e!1919822 tp!968175)))

(assert (= (and b!3066264 ((_ is ElementMatch!9501) (regTwo!19514 r!17423))) b!3066885))

(assert (= (and b!3066264 ((_ is Concat!14822) (regTwo!19514 r!17423))) b!3066886))

(assert (= (and b!3066264 ((_ is Star!9501) (regTwo!19514 r!17423))) b!3066887))

(assert (= (and b!3066264 ((_ is Union!9501) (regTwo!19514 r!17423))) b!3066888))

(declare-fun b!3066893 () Bool)

(declare-fun e!1919825 () Bool)

(declare-fun tp!968179 () Bool)

(assert (=> b!3066893 (= e!1919825 (and tp_is_empty!16565 tp!968179))))

(assert (=> b!3066260 (= tp!968109 e!1919825)))

(assert (= (and b!3066260 ((_ is Cons!35242) (t!234431 s!11993))) b!3066893))

(declare-fun e!1919826 () Bool)

(assert (=> b!3066255 (= tp!968110 e!1919826)))

(declare-fun b!3066895 () Bool)

(declare-fun tp!968180 () Bool)

(declare-fun tp!968181 () Bool)

(assert (=> b!3066895 (= e!1919826 (and tp!968180 tp!968181))))

(declare-fun b!3066894 () Bool)

(assert (=> b!3066894 (= e!1919826 tp_is_empty!16565)))

(declare-fun b!3066897 () Bool)

(declare-fun tp!968184 () Bool)

(declare-fun tp!968182 () Bool)

(assert (=> b!3066897 (= e!1919826 (and tp!968184 tp!968182))))

(declare-fun b!3066896 () Bool)

(declare-fun tp!968183 () Bool)

(assert (=> b!3066896 (= e!1919826 tp!968183)))

(assert (= (and b!3066255 ((_ is ElementMatch!9501) (regOne!19515 r!17423))) b!3066894))

(assert (= (and b!3066255 ((_ is Concat!14822) (regOne!19515 r!17423))) b!3066895))

(assert (= (and b!3066255 ((_ is Star!9501) (regOne!19515 r!17423))) b!3066896))

(assert (= (and b!3066255 ((_ is Union!9501) (regOne!19515 r!17423))) b!3066897))

(declare-fun e!1919827 () Bool)

(assert (=> b!3066255 (= tp!968113 e!1919827)))

(declare-fun b!3066899 () Bool)

(declare-fun tp!968185 () Bool)

(declare-fun tp!968186 () Bool)

(assert (=> b!3066899 (= e!1919827 (and tp!968185 tp!968186))))

(declare-fun b!3066898 () Bool)

(assert (=> b!3066898 (= e!1919827 tp_is_empty!16565)))

(declare-fun b!3066901 () Bool)

(declare-fun tp!968189 () Bool)

(declare-fun tp!968187 () Bool)

(assert (=> b!3066901 (= e!1919827 (and tp!968189 tp!968187))))

(declare-fun b!3066900 () Bool)

(declare-fun tp!968188 () Bool)

(assert (=> b!3066900 (= e!1919827 tp!968188)))

(assert (= (and b!3066255 ((_ is ElementMatch!9501) (regTwo!19515 r!17423))) b!3066898))

(assert (= (and b!3066255 ((_ is Concat!14822) (regTwo!19515 r!17423))) b!3066899))

(assert (= (and b!3066255 ((_ is Star!9501) (regTwo!19515 r!17423))) b!3066900))

(assert (= (and b!3066255 ((_ is Union!9501) (regTwo!19515 r!17423))) b!3066901))

(check-sat (not b!3066901) (not bm!212529) (not bm!212463) (not b!3066516) (not b!3066861) (not b!3066900) (not b!3066897) (not d!855808) (not b!3066563) (not b!3066618) (not bm!212557) (not d!855858) (not bm!212517) (not b!3066862) (not bm!212559) (not b!3066895) (not bm!212501) (not bm!212455) (not b!3066878) (not b!3066385) (not b!3066641) (not b!3066627) (not bm!212508) (not b!3066543) (not b!3066857) (not b!3066387) (not b!3066588) (not d!855840) (not b!3066853) (not bm!212513) (not b!3066821) (not b!3066893) (not b!3066628) (not b!3066631) (not bm!212509) (not bm!212515) (not b!3066899) (not b!3066622) (not b!3066386) (not bm!212506) (not d!855830) (not d!855828) (not bm!212521) (not b!3066284) (not b!3066879) (not b!3066896) (not bm!212454) (not d!855860) (not d!855836) (not b!3066866) (not bm!212503) (not b!3066820) (not b!3066880) (not bm!212520) (not bm!212507) (not bm!212510) (not b!3066632) (not b!3066882) (not bm!212502) tp_is_empty!16565 (not bm!212514) (not b!3066636) (not b!3066626) (not bm!212558) (not b!3066863) (not b!3066536) (not b!3066887) (not bm!212516) (not b!3066642) (not b!3066884) (not b!3066640) (not bm!212530) (not b!3066390) (not b!3066883) (not b!3066568) (not d!855818) (not d!855834) (not b!3066886) (not b!3066888) (not b!3066377) (not b!3066645) (not b!3066381))
(check-sat)
