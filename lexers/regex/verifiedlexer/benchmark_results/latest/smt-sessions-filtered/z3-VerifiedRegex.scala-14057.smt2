; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741778 () Bool)

(assert start!741778)

(declare-fun b!7810992 () Bool)

(declare-fun e!4623012 () Bool)

(declare-fun tp!2301897 () Bool)

(assert (=> b!7810992 (= e!4623012 tp!2301897)))

(declare-fun b!7810993 () Bool)

(declare-fun tp_is_empty!52173 () Bool)

(assert (=> b!7810993 (= e!4623012 tp_is_empty!52173)))

(declare-fun b!7810994 () Bool)

(declare-fun e!4623013 () Bool)

(declare-fun tp!2301893 () Bool)

(assert (=> b!7810994 (= e!4623013 tp!2301893)))

(declare-fun b!7810995 () Bool)

(declare-fun tp!2301900 () Bool)

(declare-fun tp!2301896 () Bool)

(assert (=> b!7810995 (= e!4623012 (and tp!2301900 tp!2301896))))

(declare-fun b!7810996 () Bool)

(declare-fun res!3110524 () Bool)

(declare-fun e!4623010 () Bool)

(assert (=> b!7810996 (=> (not res!3110524) (not e!4623010))))

(declare-datatypes ((C!42144 0))(
  ( (C!42145 (val!31512 Int)) )
))
(declare-datatypes ((List!73746 0))(
  ( (Nil!73622) (Cons!73622 (h!80070 C!42144) (t!388481 List!73746)) )
))
(declare-fun s!14225 () List!73746)

(declare-datatypes ((Regex!20909 0))(
  ( (ElementMatch!20909 (c!1438216 C!42144)) (Concat!29754 (regOne!42330 Regex!20909) (regTwo!42330 Regex!20909)) (EmptyExpr!20909) (Star!20909 (reg!21238 Regex!20909)) (EmptyLang!20909) (Union!20909 (regOne!42331 Regex!20909) (regTwo!42331 Regex!20909)) )
))
(declare-fun r2!6144 () Regex!20909)

(declare-fun r1!6206 () Regex!20909)

(declare-fun matchR!10367 (Regex!20909 List!73746) Bool)

(assert (=> b!7810996 (= res!3110524 (matchR!10367 (Union!20909 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810997 () Bool)

(declare-fun tp!2301901 () Bool)

(declare-fun tp!2301903 () Bool)

(assert (=> b!7810997 (= e!4623012 (and tp!2301901 tp!2301903))))

(declare-fun b!7810998 () Bool)

(declare-fun tp!2301899 () Bool)

(declare-fun tp!2301895 () Bool)

(assert (=> b!7810998 (= e!4623013 (and tp!2301899 tp!2301895))))

(declare-fun b!7810999 () Bool)

(declare-fun ListPrimitiveSize!452 (List!73746) Int)

(assert (=> b!7810999 (= e!4623010 (< (ListPrimitiveSize!452 s!14225) 0))))

(declare-fun res!3110525 () Bool)

(assert (=> start!741778 (=> (not res!3110525) (not e!4623010))))

(declare-fun validRegex!11323 (Regex!20909) Bool)

(assert (=> start!741778 (= res!3110525 (validRegex!11323 r1!6206))))

(assert (=> start!741778 e!4623010))

(assert (=> start!741778 e!4623013))

(assert (=> start!741778 e!4623012))

(declare-fun e!4623011 () Bool)

(assert (=> start!741778 e!4623011))

(declare-fun b!7811000 () Bool)

(declare-fun res!3110526 () Bool)

(assert (=> b!7811000 (=> (not res!3110526) (not e!4623010))))

(assert (=> b!7811000 (= res!3110526 (validRegex!11323 r2!6144))))

(declare-fun b!7811001 () Bool)

(declare-fun tp!2301898 () Bool)

(assert (=> b!7811001 (= e!4623011 (and tp_is_empty!52173 tp!2301898))))

(declare-fun b!7811002 () Bool)

(assert (=> b!7811002 (= e!4623013 tp_is_empty!52173)))

(declare-fun b!7811003 () Bool)

(declare-fun tp!2301894 () Bool)

(declare-fun tp!2301902 () Bool)

(assert (=> b!7811003 (= e!4623013 (and tp!2301894 tp!2301902))))

(assert (= (and start!741778 res!3110525) b!7811000))

(assert (= (and b!7811000 res!3110526) b!7810996))

(assert (= (and b!7810996 res!3110524) b!7810999))

(get-info :version)

(assert (= (and start!741778 ((_ is ElementMatch!20909) r1!6206)) b!7811002))

(assert (= (and start!741778 ((_ is Concat!29754) r1!6206)) b!7811003))

(assert (= (and start!741778 ((_ is Star!20909) r1!6206)) b!7810994))

(assert (= (and start!741778 ((_ is Union!20909) r1!6206)) b!7810998))

(assert (= (and start!741778 ((_ is ElementMatch!20909) r2!6144)) b!7810993))

(assert (= (and start!741778 ((_ is Concat!29754) r2!6144)) b!7810997))

(assert (= (and start!741778 ((_ is Star!20909) r2!6144)) b!7810992))

(assert (= (and start!741778 ((_ is Union!20909) r2!6144)) b!7810995))

(assert (= (and start!741778 ((_ is Cons!73622) s!14225)) b!7811001))

(declare-fun m!8241946 () Bool)

(assert (=> b!7810996 m!8241946))

(declare-fun m!8241948 () Bool)

(assert (=> b!7810999 m!8241948))

(declare-fun m!8241950 () Bool)

(assert (=> start!741778 m!8241950))

(declare-fun m!8241952 () Bool)

(assert (=> b!7811000 m!8241952))

(check-sat tp_is_empty!52173 (not b!7810992) (not b!7810996) (not b!7810998) (not b!7811001) (not b!7810997) (not b!7810995) (not start!741778) (not b!7811000) (not b!7810999) (not b!7810994) (not b!7811003))
(check-sat)
(get-model)

(declare-fun bm!724496 () Bool)

(declare-fun call!724501 () Bool)

(declare-fun call!724502 () Bool)

(assert (=> bm!724496 (= call!724501 call!724502)))

(declare-fun b!7811026 () Bool)

(declare-fun e!4623036 () Bool)

(declare-fun e!4623031 () Bool)

(assert (=> b!7811026 (= e!4623036 e!4623031)))

(declare-fun c!1438224 () Bool)

(assert (=> b!7811026 (= c!1438224 ((_ is Union!20909) r2!6144))))

(declare-fun c!1438223 () Bool)

(declare-fun bm!724497 () Bool)

(assert (=> bm!724497 (= call!724502 (validRegex!11323 (ite c!1438223 (reg!21238 r2!6144) (ite c!1438224 (regOne!42331 r2!6144) (regOne!42330 r2!6144)))))))

(declare-fun d!2348730 () Bool)

(declare-fun res!3110540 () Bool)

(declare-fun e!4623035 () Bool)

(assert (=> d!2348730 (=> res!3110540 e!4623035)))

(assert (=> d!2348730 (= res!3110540 ((_ is ElementMatch!20909) r2!6144))))

(assert (=> d!2348730 (= (validRegex!11323 r2!6144) e!4623035)))

(declare-fun b!7811027 () Bool)

(declare-fun e!4623033 () Bool)

(assert (=> b!7811027 (= e!4623033 call!724502)))

(declare-fun b!7811028 () Bool)

(declare-fun res!3110539 () Bool)

(declare-fun e!4623030 () Bool)

(assert (=> b!7811028 (=> res!3110539 e!4623030)))

(assert (=> b!7811028 (= res!3110539 (not ((_ is Concat!29754) r2!6144)))))

(assert (=> b!7811028 (= e!4623031 e!4623030)))

(declare-fun b!7811029 () Bool)

(declare-fun e!4623032 () Bool)

(declare-fun call!724503 () Bool)

(assert (=> b!7811029 (= e!4623032 call!724503)))

(declare-fun bm!724498 () Bool)

(assert (=> bm!724498 (= call!724503 (validRegex!11323 (ite c!1438224 (regTwo!42331 r2!6144) (regTwo!42330 r2!6144))))))

(declare-fun b!7811030 () Bool)

(declare-fun res!3110538 () Bool)

(declare-fun e!4623034 () Bool)

(assert (=> b!7811030 (=> (not res!3110538) (not e!4623034))))

(assert (=> b!7811030 (= res!3110538 call!724501)))

(assert (=> b!7811030 (= e!4623031 e!4623034)))

(declare-fun b!7811031 () Bool)

(assert (=> b!7811031 (= e!4623035 e!4623036)))

(assert (=> b!7811031 (= c!1438223 ((_ is Star!20909) r2!6144))))

(declare-fun b!7811032 () Bool)

(assert (=> b!7811032 (= e!4623034 call!724503)))

(declare-fun b!7811033 () Bool)

(assert (=> b!7811033 (= e!4623036 e!4623033)))

(declare-fun res!3110537 () Bool)

(declare-fun nullable!9280 (Regex!20909) Bool)

(assert (=> b!7811033 (= res!3110537 (not (nullable!9280 (reg!21238 r2!6144))))))

(assert (=> b!7811033 (=> (not res!3110537) (not e!4623033))))

(declare-fun b!7811034 () Bool)

(assert (=> b!7811034 (= e!4623030 e!4623032)))

(declare-fun res!3110541 () Bool)

(assert (=> b!7811034 (=> (not res!3110541) (not e!4623032))))

(assert (=> b!7811034 (= res!3110541 call!724501)))

(assert (= (and d!2348730 (not res!3110540)) b!7811031))

(assert (= (and b!7811031 c!1438223) b!7811033))

(assert (= (and b!7811031 (not c!1438223)) b!7811026))

(assert (= (and b!7811033 res!3110537) b!7811027))

(assert (= (and b!7811026 c!1438224) b!7811030))

(assert (= (and b!7811026 (not c!1438224)) b!7811028))

(assert (= (and b!7811030 res!3110538) b!7811032))

(assert (= (and b!7811028 (not res!3110539)) b!7811034))

(assert (= (and b!7811034 res!3110541) b!7811029))

(assert (= (or b!7811030 b!7811034) bm!724496))

(assert (= (or b!7811032 b!7811029) bm!724498))

(assert (= (or b!7811027 bm!724496) bm!724497))

(declare-fun m!8241954 () Bool)

(assert (=> bm!724497 m!8241954))

(declare-fun m!8241956 () Bool)

(assert (=> bm!724498 m!8241956))

(declare-fun m!8241958 () Bool)

(assert (=> b!7811033 m!8241958))

(assert (=> b!7811000 d!2348730))

(declare-fun d!2348734 () Bool)

(declare-fun lt!2675854 () Int)

(assert (=> d!2348734 (>= lt!2675854 0)))

(declare-fun e!4623040 () Int)

(assert (=> d!2348734 (= lt!2675854 e!4623040)))

(declare-fun c!1438228 () Bool)

(assert (=> d!2348734 (= c!1438228 ((_ is Nil!73622) s!14225))))

(assert (=> d!2348734 (= (ListPrimitiveSize!452 s!14225) lt!2675854)))

(declare-fun b!7811041 () Bool)

(assert (=> b!7811041 (= e!4623040 0)))

(declare-fun b!7811042 () Bool)

(assert (=> b!7811042 (= e!4623040 (+ 1 (ListPrimitiveSize!452 (t!388481 s!14225))))))

(assert (= (and d!2348734 c!1438228) b!7811041))

(assert (= (and d!2348734 (not c!1438228)) b!7811042))

(declare-fun m!8241962 () Bool)

(assert (=> b!7811042 m!8241962))

(assert (=> b!7810999 d!2348734))

(declare-fun bm!724499 () Bool)

(declare-fun call!724504 () Bool)

(declare-fun call!724505 () Bool)

(assert (=> bm!724499 (= call!724504 call!724505)))

(declare-fun b!7811043 () Bool)

(declare-fun e!4623047 () Bool)

(declare-fun e!4623042 () Bool)

(assert (=> b!7811043 (= e!4623047 e!4623042)))

(declare-fun c!1438230 () Bool)

(assert (=> b!7811043 (= c!1438230 ((_ is Union!20909) r1!6206))))

(declare-fun c!1438229 () Bool)

(declare-fun bm!724500 () Bool)

(assert (=> bm!724500 (= call!724505 (validRegex!11323 (ite c!1438229 (reg!21238 r1!6206) (ite c!1438230 (regOne!42331 r1!6206) (regOne!42330 r1!6206)))))))

(declare-fun d!2348738 () Bool)

(declare-fun res!3110545 () Bool)

(declare-fun e!4623046 () Bool)

(assert (=> d!2348738 (=> res!3110545 e!4623046)))

(assert (=> d!2348738 (= res!3110545 ((_ is ElementMatch!20909) r1!6206))))

(assert (=> d!2348738 (= (validRegex!11323 r1!6206) e!4623046)))

(declare-fun b!7811044 () Bool)

(declare-fun e!4623044 () Bool)

(assert (=> b!7811044 (= e!4623044 call!724505)))

(declare-fun b!7811045 () Bool)

(declare-fun res!3110544 () Bool)

(declare-fun e!4623041 () Bool)

(assert (=> b!7811045 (=> res!3110544 e!4623041)))

(assert (=> b!7811045 (= res!3110544 (not ((_ is Concat!29754) r1!6206)))))

(assert (=> b!7811045 (= e!4623042 e!4623041)))

(declare-fun b!7811046 () Bool)

(declare-fun e!4623043 () Bool)

(declare-fun call!724506 () Bool)

(assert (=> b!7811046 (= e!4623043 call!724506)))

(declare-fun bm!724501 () Bool)

(assert (=> bm!724501 (= call!724506 (validRegex!11323 (ite c!1438230 (regTwo!42331 r1!6206) (regTwo!42330 r1!6206))))))

(declare-fun b!7811047 () Bool)

(declare-fun res!3110543 () Bool)

(declare-fun e!4623045 () Bool)

(assert (=> b!7811047 (=> (not res!3110543) (not e!4623045))))

(assert (=> b!7811047 (= res!3110543 call!724504)))

(assert (=> b!7811047 (= e!4623042 e!4623045)))

(declare-fun b!7811048 () Bool)

(assert (=> b!7811048 (= e!4623046 e!4623047)))

(assert (=> b!7811048 (= c!1438229 ((_ is Star!20909) r1!6206))))

(declare-fun b!7811049 () Bool)

(assert (=> b!7811049 (= e!4623045 call!724506)))

(declare-fun b!7811050 () Bool)

(assert (=> b!7811050 (= e!4623047 e!4623044)))

(declare-fun res!3110542 () Bool)

(assert (=> b!7811050 (= res!3110542 (not (nullable!9280 (reg!21238 r1!6206))))))

(assert (=> b!7811050 (=> (not res!3110542) (not e!4623044))))

(declare-fun b!7811051 () Bool)

(assert (=> b!7811051 (= e!4623041 e!4623043)))

(declare-fun res!3110546 () Bool)

(assert (=> b!7811051 (=> (not res!3110546) (not e!4623043))))

(assert (=> b!7811051 (= res!3110546 call!724504)))

(assert (= (and d!2348738 (not res!3110545)) b!7811048))

(assert (= (and b!7811048 c!1438229) b!7811050))

(assert (= (and b!7811048 (not c!1438229)) b!7811043))

(assert (= (and b!7811050 res!3110542) b!7811044))

(assert (= (and b!7811043 c!1438230) b!7811047))

(assert (= (and b!7811043 (not c!1438230)) b!7811045))

(assert (= (and b!7811047 res!3110543) b!7811049))

(assert (= (and b!7811045 (not res!3110544)) b!7811051))

(assert (= (and b!7811051 res!3110546) b!7811046))

(assert (= (or b!7811047 b!7811051) bm!724499))

(assert (= (or b!7811049 b!7811046) bm!724501))

(assert (= (or b!7811044 bm!724499) bm!724500))

(declare-fun m!8241964 () Bool)

(assert (=> bm!724500 m!8241964))

(declare-fun m!8241966 () Bool)

(assert (=> bm!724501 m!8241966))

(declare-fun m!8241968 () Bool)

(assert (=> b!7811050 m!8241968))

(assert (=> start!741778 d!2348738))

(declare-fun b!7811100 () Bool)

(declare-fun e!4623072 () Bool)

(declare-fun head!15969 (List!73746) C!42144)

(assert (=> b!7811100 (= e!4623072 (not (= (head!15969 s!14225) (c!1438216 (Union!20909 r1!6206 r2!6144)))))))

(declare-fun b!7811101 () Bool)

(declare-fun res!3110579 () Bool)

(declare-fun e!4623078 () Bool)

(assert (=> b!7811101 (=> res!3110579 e!4623078)))

(declare-fun e!4623076 () Bool)

(assert (=> b!7811101 (= res!3110579 e!4623076)))

(declare-fun res!3110574 () Bool)

(assert (=> b!7811101 (=> (not res!3110574) (not e!4623076))))

(declare-fun lt!2675859 () Bool)

(assert (=> b!7811101 (= res!3110574 lt!2675859)))

(declare-fun b!7811102 () Bool)

(declare-fun e!4623077 () Bool)

(assert (=> b!7811102 (= e!4623077 (nullable!9280 (Union!20909 r1!6206 r2!6144)))))

(declare-fun bm!724504 () Bool)

(declare-fun call!724509 () Bool)

(declare-fun isEmpty!42268 (List!73746) Bool)

(assert (=> bm!724504 (= call!724509 (isEmpty!42268 s!14225))))

(declare-fun b!7811104 () Bool)

(declare-fun res!3110573 () Bool)

(assert (=> b!7811104 (=> res!3110573 e!4623072)))

(declare-fun tail!15510 (List!73746) List!73746)

(assert (=> b!7811104 (= res!3110573 (not (isEmpty!42268 (tail!15510 s!14225))))))

(declare-fun b!7811105 () Bool)

(declare-fun e!4623075 () Bool)

(assert (=> b!7811105 (= e!4623078 e!4623075)))

(declare-fun res!3110578 () Bool)

(assert (=> b!7811105 (=> (not res!3110578) (not e!4623075))))

(assert (=> b!7811105 (= res!3110578 (not lt!2675859))))

(declare-fun b!7811106 () Bool)

(assert (=> b!7811106 (= e!4623075 e!4623072)))

(declare-fun res!3110580 () Bool)

(assert (=> b!7811106 (=> res!3110580 e!4623072)))

(assert (=> b!7811106 (= res!3110580 call!724509)))

(declare-fun b!7811107 () Bool)

(assert (=> b!7811107 (= e!4623076 (= (head!15969 s!14225) (c!1438216 (Union!20909 r1!6206 r2!6144))))))

(declare-fun b!7811108 () Bool)

(declare-fun res!3110577 () Bool)

(assert (=> b!7811108 (=> (not res!3110577) (not e!4623076))))

(assert (=> b!7811108 (= res!3110577 (isEmpty!42268 (tail!15510 s!14225)))))

(declare-fun b!7811109 () Bool)

(declare-fun e!4623073 () Bool)

(declare-fun e!4623074 () Bool)

(assert (=> b!7811109 (= e!4623073 e!4623074)))

(declare-fun c!1438243 () Bool)

(assert (=> b!7811109 (= c!1438243 ((_ is EmptyLang!20909) (Union!20909 r1!6206 r2!6144)))))

(declare-fun b!7811110 () Bool)

(declare-fun derivativeStep!6239 (Regex!20909 C!42144) Regex!20909)

(assert (=> b!7811110 (= e!4623077 (matchR!10367 (derivativeStep!6239 (Union!20909 r1!6206 r2!6144) (head!15969 s!14225)) (tail!15510 s!14225)))))

(declare-fun b!7811111 () Bool)

(assert (=> b!7811111 (= e!4623074 (not lt!2675859))))

(declare-fun b!7811112 () Bool)

(declare-fun res!3110576 () Bool)

(assert (=> b!7811112 (=> (not res!3110576) (not e!4623076))))

(assert (=> b!7811112 (= res!3110576 (not call!724509))))

(declare-fun b!7811113 () Bool)

(assert (=> b!7811113 (= e!4623073 (= lt!2675859 call!724509))))

(declare-fun d!2348740 () Bool)

(assert (=> d!2348740 e!4623073))

(declare-fun c!1438245 () Bool)

(assert (=> d!2348740 (= c!1438245 ((_ is EmptyExpr!20909) (Union!20909 r1!6206 r2!6144)))))

(assert (=> d!2348740 (= lt!2675859 e!4623077)))

(declare-fun c!1438244 () Bool)

(assert (=> d!2348740 (= c!1438244 (isEmpty!42268 s!14225))))

(assert (=> d!2348740 (validRegex!11323 (Union!20909 r1!6206 r2!6144))))

(assert (=> d!2348740 (= (matchR!10367 (Union!20909 r1!6206 r2!6144) s!14225) lt!2675859)))

(declare-fun b!7811103 () Bool)

(declare-fun res!3110575 () Bool)

(assert (=> b!7811103 (=> res!3110575 e!4623078)))

(assert (=> b!7811103 (= res!3110575 (not ((_ is ElementMatch!20909) (Union!20909 r1!6206 r2!6144))))))

(assert (=> b!7811103 (= e!4623074 e!4623078)))

(assert (= (and d!2348740 c!1438244) b!7811102))

(assert (= (and d!2348740 (not c!1438244)) b!7811110))

(assert (= (and d!2348740 c!1438245) b!7811113))

(assert (= (and d!2348740 (not c!1438245)) b!7811109))

(assert (= (and b!7811109 c!1438243) b!7811111))

(assert (= (and b!7811109 (not c!1438243)) b!7811103))

(assert (= (and b!7811103 (not res!3110575)) b!7811101))

(assert (= (and b!7811101 res!3110574) b!7811112))

(assert (= (and b!7811112 res!3110576) b!7811108))

(assert (= (and b!7811108 res!3110577) b!7811107))

(assert (= (and b!7811101 (not res!3110579)) b!7811105))

(assert (= (and b!7811105 res!3110578) b!7811106))

(assert (= (and b!7811106 (not res!3110580)) b!7811104))

(assert (= (and b!7811104 (not res!3110573)) b!7811100))

(assert (= (or b!7811113 b!7811112 b!7811106) bm!724504))

(declare-fun m!8241970 () Bool)

(assert (=> b!7811108 m!8241970))

(assert (=> b!7811108 m!8241970))

(declare-fun m!8241972 () Bool)

(assert (=> b!7811108 m!8241972))

(declare-fun m!8241974 () Bool)

(assert (=> bm!724504 m!8241974))

(declare-fun m!8241976 () Bool)

(assert (=> b!7811102 m!8241976))

(declare-fun m!8241978 () Bool)

(assert (=> b!7811110 m!8241978))

(assert (=> b!7811110 m!8241978))

(declare-fun m!8241980 () Bool)

(assert (=> b!7811110 m!8241980))

(assert (=> b!7811110 m!8241970))

(assert (=> b!7811110 m!8241980))

(assert (=> b!7811110 m!8241970))

(declare-fun m!8241982 () Bool)

(assert (=> b!7811110 m!8241982))

(assert (=> b!7811107 m!8241978))

(assert (=> d!2348740 m!8241974))

(declare-fun m!8241984 () Bool)

(assert (=> d!2348740 m!8241984))

(assert (=> b!7811104 m!8241970))

(assert (=> b!7811104 m!8241970))

(assert (=> b!7811104 m!8241972))

(assert (=> b!7811100 m!8241978))

(assert (=> b!7810996 d!2348740))

(declare-fun b!7811134 () Bool)

(declare-fun e!4623085 () Bool)

(declare-fun tp!2301917 () Bool)

(assert (=> b!7811134 (= e!4623085 tp!2301917)))

(declare-fun b!7811135 () Bool)

(declare-fun tp!2301918 () Bool)

(declare-fun tp!2301915 () Bool)

(assert (=> b!7811135 (= e!4623085 (and tp!2301918 tp!2301915))))

(assert (=> b!7810995 (= tp!2301900 e!4623085)))

(declare-fun b!7811132 () Bool)

(assert (=> b!7811132 (= e!4623085 tp_is_empty!52173)))

(declare-fun b!7811133 () Bool)

(declare-fun tp!2301916 () Bool)

(declare-fun tp!2301914 () Bool)

(assert (=> b!7811133 (= e!4623085 (and tp!2301916 tp!2301914))))

(assert (= (and b!7810995 ((_ is ElementMatch!20909) (regOne!42331 r2!6144))) b!7811132))

(assert (= (and b!7810995 ((_ is Concat!29754) (regOne!42331 r2!6144))) b!7811133))

(assert (= (and b!7810995 ((_ is Star!20909) (regOne!42331 r2!6144))) b!7811134))

(assert (= (and b!7810995 ((_ is Union!20909) (regOne!42331 r2!6144))) b!7811135))

(declare-fun b!7811138 () Bool)

(declare-fun e!4623086 () Bool)

(declare-fun tp!2301922 () Bool)

(assert (=> b!7811138 (= e!4623086 tp!2301922)))

(declare-fun b!7811139 () Bool)

(declare-fun tp!2301923 () Bool)

(declare-fun tp!2301920 () Bool)

(assert (=> b!7811139 (= e!4623086 (and tp!2301923 tp!2301920))))

(assert (=> b!7810995 (= tp!2301896 e!4623086)))

(declare-fun b!7811136 () Bool)

(assert (=> b!7811136 (= e!4623086 tp_is_empty!52173)))

(declare-fun b!7811137 () Bool)

(declare-fun tp!2301921 () Bool)

(declare-fun tp!2301919 () Bool)

(assert (=> b!7811137 (= e!4623086 (and tp!2301921 tp!2301919))))

(assert (= (and b!7810995 ((_ is ElementMatch!20909) (regTwo!42331 r2!6144))) b!7811136))

(assert (= (and b!7810995 ((_ is Concat!29754) (regTwo!42331 r2!6144))) b!7811137))

(assert (= (and b!7810995 ((_ is Star!20909) (regTwo!42331 r2!6144))) b!7811138))

(assert (= (and b!7810995 ((_ is Union!20909) (regTwo!42331 r2!6144))) b!7811139))

(declare-fun b!7811144 () Bool)

(declare-fun e!4623089 () Bool)

(declare-fun tp!2301926 () Bool)

(assert (=> b!7811144 (= e!4623089 (and tp_is_empty!52173 tp!2301926))))

(assert (=> b!7811001 (= tp!2301898 e!4623089)))

(assert (= (and b!7811001 ((_ is Cons!73622) (t!388481 s!14225))) b!7811144))

(declare-fun b!7811147 () Bool)

(declare-fun e!4623090 () Bool)

(declare-fun tp!2301930 () Bool)

(assert (=> b!7811147 (= e!4623090 tp!2301930)))

(declare-fun b!7811148 () Bool)

(declare-fun tp!2301931 () Bool)

(declare-fun tp!2301928 () Bool)

(assert (=> b!7811148 (= e!4623090 (and tp!2301931 tp!2301928))))

(assert (=> b!7810994 (= tp!2301893 e!4623090)))

(declare-fun b!7811145 () Bool)

(assert (=> b!7811145 (= e!4623090 tp_is_empty!52173)))

(declare-fun b!7811146 () Bool)

(declare-fun tp!2301929 () Bool)

(declare-fun tp!2301927 () Bool)

(assert (=> b!7811146 (= e!4623090 (and tp!2301929 tp!2301927))))

(assert (= (and b!7810994 ((_ is ElementMatch!20909) (reg!21238 r1!6206))) b!7811145))

(assert (= (and b!7810994 ((_ is Concat!29754) (reg!21238 r1!6206))) b!7811146))

(assert (= (and b!7810994 ((_ is Star!20909) (reg!21238 r1!6206))) b!7811147))

(assert (= (and b!7810994 ((_ is Union!20909) (reg!21238 r1!6206))) b!7811148))

(declare-fun b!7811151 () Bool)

(declare-fun e!4623091 () Bool)

(declare-fun tp!2301935 () Bool)

(assert (=> b!7811151 (= e!4623091 tp!2301935)))

(declare-fun b!7811152 () Bool)

(declare-fun tp!2301936 () Bool)

(declare-fun tp!2301933 () Bool)

(assert (=> b!7811152 (= e!4623091 (and tp!2301936 tp!2301933))))

(assert (=> b!7811003 (= tp!2301894 e!4623091)))

(declare-fun b!7811149 () Bool)

(assert (=> b!7811149 (= e!4623091 tp_is_empty!52173)))

(declare-fun b!7811150 () Bool)

(declare-fun tp!2301934 () Bool)

(declare-fun tp!2301932 () Bool)

(assert (=> b!7811150 (= e!4623091 (and tp!2301934 tp!2301932))))

(assert (= (and b!7811003 ((_ is ElementMatch!20909) (regOne!42330 r1!6206))) b!7811149))

(assert (= (and b!7811003 ((_ is Concat!29754) (regOne!42330 r1!6206))) b!7811150))

(assert (= (and b!7811003 ((_ is Star!20909) (regOne!42330 r1!6206))) b!7811151))

(assert (= (and b!7811003 ((_ is Union!20909) (regOne!42330 r1!6206))) b!7811152))

(declare-fun b!7811155 () Bool)

(declare-fun e!4623092 () Bool)

(declare-fun tp!2301940 () Bool)

(assert (=> b!7811155 (= e!4623092 tp!2301940)))

(declare-fun b!7811156 () Bool)

(declare-fun tp!2301941 () Bool)

(declare-fun tp!2301938 () Bool)

(assert (=> b!7811156 (= e!4623092 (and tp!2301941 tp!2301938))))

(assert (=> b!7811003 (= tp!2301902 e!4623092)))

(declare-fun b!7811153 () Bool)

(assert (=> b!7811153 (= e!4623092 tp_is_empty!52173)))

(declare-fun b!7811154 () Bool)

(declare-fun tp!2301939 () Bool)

(declare-fun tp!2301937 () Bool)

(assert (=> b!7811154 (= e!4623092 (and tp!2301939 tp!2301937))))

(assert (= (and b!7811003 ((_ is ElementMatch!20909) (regTwo!42330 r1!6206))) b!7811153))

(assert (= (and b!7811003 ((_ is Concat!29754) (regTwo!42330 r1!6206))) b!7811154))

(assert (= (and b!7811003 ((_ is Star!20909) (regTwo!42330 r1!6206))) b!7811155))

(assert (= (and b!7811003 ((_ is Union!20909) (regTwo!42330 r1!6206))) b!7811156))

(declare-fun b!7811159 () Bool)

(declare-fun e!4623093 () Bool)

(declare-fun tp!2301945 () Bool)

(assert (=> b!7811159 (= e!4623093 tp!2301945)))

(declare-fun b!7811160 () Bool)

(declare-fun tp!2301946 () Bool)

(declare-fun tp!2301943 () Bool)

(assert (=> b!7811160 (= e!4623093 (and tp!2301946 tp!2301943))))

(assert (=> b!7810992 (= tp!2301897 e!4623093)))

(declare-fun b!7811157 () Bool)

(assert (=> b!7811157 (= e!4623093 tp_is_empty!52173)))

(declare-fun b!7811158 () Bool)

(declare-fun tp!2301944 () Bool)

(declare-fun tp!2301942 () Bool)

(assert (=> b!7811158 (= e!4623093 (and tp!2301944 tp!2301942))))

(assert (= (and b!7810992 ((_ is ElementMatch!20909) (reg!21238 r2!6144))) b!7811157))

(assert (= (and b!7810992 ((_ is Concat!29754) (reg!21238 r2!6144))) b!7811158))

(assert (= (and b!7810992 ((_ is Star!20909) (reg!21238 r2!6144))) b!7811159))

(assert (= (and b!7810992 ((_ is Union!20909) (reg!21238 r2!6144))) b!7811160))

(declare-fun b!7811163 () Bool)

(declare-fun e!4623094 () Bool)

(declare-fun tp!2301950 () Bool)

(assert (=> b!7811163 (= e!4623094 tp!2301950)))

(declare-fun b!7811164 () Bool)

(declare-fun tp!2301951 () Bool)

(declare-fun tp!2301948 () Bool)

(assert (=> b!7811164 (= e!4623094 (and tp!2301951 tp!2301948))))

(assert (=> b!7810998 (= tp!2301899 e!4623094)))

(declare-fun b!7811161 () Bool)

(assert (=> b!7811161 (= e!4623094 tp_is_empty!52173)))

(declare-fun b!7811162 () Bool)

(declare-fun tp!2301949 () Bool)

(declare-fun tp!2301947 () Bool)

(assert (=> b!7811162 (= e!4623094 (and tp!2301949 tp!2301947))))

(assert (= (and b!7810998 ((_ is ElementMatch!20909) (regOne!42331 r1!6206))) b!7811161))

(assert (= (and b!7810998 ((_ is Concat!29754) (regOne!42331 r1!6206))) b!7811162))

(assert (= (and b!7810998 ((_ is Star!20909) (regOne!42331 r1!6206))) b!7811163))

(assert (= (and b!7810998 ((_ is Union!20909) (regOne!42331 r1!6206))) b!7811164))

(declare-fun b!7811167 () Bool)

(declare-fun e!4623095 () Bool)

(declare-fun tp!2301955 () Bool)

(assert (=> b!7811167 (= e!4623095 tp!2301955)))

(declare-fun b!7811168 () Bool)

(declare-fun tp!2301956 () Bool)

(declare-fun tp!2301953 () Bool)

(assert (=> b!7811168 (= e!4623095 (and tp!2301956 tp!2301953))))

(assert (=> b!7810998 (= tp!2301895 e!4623095)))

(declare-fun b!7811165 () Bool)

(assert (=> b!7811165 (= e!4623095 tp_is_empty!52173)))

(declare-fun b!7811166 () Bool)

(declare-fun tp!2301954 () Bool)

(declare-fun tp!2301952 () Bool)

(assert (=> b!7811166 (= e!4623095 (and tp!2301954 tp!2301952))))

(assert (= (and b!7810998 ((_ is ElementMatch!20909) (regTwo!42331 r1!6206))) b!7811165))

(assert (= (and b!7810998 ((_ is Concat!29754) (regTwo!42331 r1!6206))) b!7811166))

(assert (= (and b!7810998 ((_ is Star!20909) (regTwo!42331 r1!6206))) b!7811167))

(assert (= (and b!7810998 ((_ is Union!20909) (regTwo!42331 r1!6206))) b!7811168))

(declare-fun b!7811171 () Bool)

(declare-fun e!4623096 () Bool)

(declare-fun tp!2301960 () Bool)

(assert (=> b!7811171 (= e!4623096 tp!2301960)))

(declare-fun b!7811172 () Bool)

(declare-fun tp!2301961 () Bool)

(declare-fun tp!2301958 () Bool)

(assert (=> b!7811172 (= e!4623096 (and tp!2301961 tp!2301958))))

(assert (=> b!7810997 (= tp!2301901 e!4623096)))

(declare-fun b!7811169 () Bool)

(assert (=> b!7811169 (= e!4623096 tp_is_empty!52173)))

(declare-fun b!7811170 () Bool)

(declare-fun tp!2301959 () Bool)

(declare-fun tp!2301957 () Bool)

(assert (=> b!7811170 (= e!4623096 (and tp!2301959 tp!2301957))))

(assert (= (and b!7810997 ((_ is ElementMatch!20909) (regOne!42330 r2!6144))) b!7811169))

(assert (= (and b!7810997 ((_ is Concat!29754) (regOne!42330 r2!6144))) b!7811170))

(assert (= (and b!7810997 ((_ is Star!20909) (regOne!42330 r2!6144))) b!7811171))

(assert (= (and b!7810997 ((_ is Union!20909) (regOne!42330 r2!6144))) b!7811172))

(declare-fun b!7811175 () Bool)

(declare-fun e!4623097 () Bool)

(declare-fun tp!2301965 () Bool)

(assert (=> b!7811175 (= e!4623097 tp!2301965)))

(declare-fun b!7811176 () Bool)

(declare-fun tp!2301966 () Bool)

(declare-fun tp!2301963 () Bool)

(assert (=> b!7811176 (= e!4623097 (and tp!2301966 tp!2301963))))

(assert (=> b!7810997 (= tp!2301903 e!4623097)))

(declare-fun b!7811173 () Bool)

(assert (=> b!7811173 (= e!4623097 tp_is_empty!52173)))

(declare-fun b!7811174 () Bool)

(declare-fun tp!2301964 () Bool)

(declare-fun tp!2301962 () Bool)

(assert (=> b!7811174 (= e!4623097 (and tp!2301964 tp!2301962))))

(assert (= (and b!7810997 ((_ is ElementMatch!20909) (regTwo!42330 r2!6144))) b!7811173))

(assert (= (and b!7810997 ((_ is Concat!29754) (regTwo!42330 r2!6144))) b!7811174))

(assert (= (and b!7810997 ((_ is Star!20909) (regTwo!42330 r2!6144))) b!7811175))

(assert (= (and b!7810997 ((_ is Union!20909) (regTwo!42330 r2!6144))) b!7811176))

(check-sat (not b!7811134) (not d!2348740) (not b!7811104) (not b!7811100) (not b!7811107) (not b!7811146) (not b!7811164) (not b!7811171) (not bm!724500) (not b!7811133) (not b!7811156) (not b!7811108) (not b!7811147) (not bm!724501) tp_is_empty!52173 (not b!7811102) (not b!7811175) (not b!7811152) (not b!7811168) (not b!7811162) (not b!7811137) (not b!7811159) (not b!7811151) (not b!7811155) (not b!7811166) (not b!7811167) (not b!7811170) (not bm!724498) (not b!7811148) (not bm!724497) (not bm!724504) (not b!7811135) (not b!7811139) (not b!7811174) (not b!7811042) (not b!7811160) (not b!7811163) (not b!7811158) (not b!7811176) (not b!7811150) (not b!7811154) (not b!7811033) (not b!7811110) (not b!7811050) (not b!7811144) (not b!7811172) (not b!7811138))
(check-sat)
