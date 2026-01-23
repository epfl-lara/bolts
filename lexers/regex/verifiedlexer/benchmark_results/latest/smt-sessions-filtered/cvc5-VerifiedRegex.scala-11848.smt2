; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666040 () Bool)

(assert start!666040)

(declare-fun b!6930010 () Bool)

(assert (=> b!6930010 true))

(assert (=> b!6930010 true))

(assert (=> b!6930010 true))

(declare-fun res!2826278 () Bool)

(declare-fun e!4169990 () Bool)

(assert (=> start!666040 (=> (not res!2826278) (not e!4169990))))

(declare-datatypes ((C!34154 0))(
  ( (C!34155 (val!26779 Int)) )
))
(declare-datatypes ((Regex!16942 0))(
  ( (ElementMatch!16942 (c!1286224 C!34154)) (Concat!25787 (regOne!34396 Regex!16942) (regTwo!34396 Regex!16942)) (EmptyExpr!16942) (Star!16942 (reg!17271 Regex!16942)) (EmptyLang!16942) (Union!16942 (regOne!34397 Regex!16942) (regTwo!34397 Regex!16942)) )
))
(declare-fun r1!6342 () Regex!16942)

(declare-fun validRegex!8648 (Regex!16942) Bool)

(assert (=> start!666040 (= res!2826278 (validRegex!8648 r1!6342))))

(assert (=> start!666040 e!4169990))

(declare-fun e!4169989 () Bool)

(assert (=> start!666040 e!4169989))

(declare-fun e!4169987 () Bool)

(assert (=> start!666040 e!4169987))

(declare-fun e!4169992 () Bool)

(assert (=> start!666040 e!4169992))

(declare-fun e!4169988 () Bool)

(assert (=> start!666040 e!4169988))

(declare-fun b!6930006 () Bool)

(declare-fun tp_is_empty!43109 () Bool)

(assert (=> b!6930006 (= e!4169992 tp_is_empty!43109)))

(declare-fun b!6930007 () Bool)

(declare-fun tp!1910310 () Bool)

(assert (=> b!6930007 (= e!4169989 tp!1910310)))

(declare-fun b!6930008 () Bool)

(declare-fun tp!1910319 () Bool)

(assert (=> b!6930008 (= e!4169988 (and tp_is_empty!43109 tp!1910319))))

(declare-fun b!6930009 () Bool)

(declare-fun e!4169991 () Bool)

(assert (=> b!6930009 (= e!4169990 (not e!4169991))))

(declare-fun res!2826280 () Bool)

(assert (=> b!6930009 (=> res!2826280 e!4169991)))

(declare-fun lt!2472935 () Bool)

(assert (=> b!6930009 (= res!2826280 lt!2472935)))

(declare-fun lt!2472930 () Regex!16942)

(declare-datatypes ((List!66695 0))(
  ( (Nil!66571) (Cons!66571 (h!73019 C!34154) (t!380438 List!66695)) )
))
(declare-fun s!14361 () List!66695)

(declare-fun matchR!9081 (Regex!16942 List!66695) Bool)

(declare-fun matchRSpec!3999 (Regex!16942 List!66695) Bool)

(assert (=> b!6930009 (= (matchR!9081 lt!2472930 s!14361) (matchRSpec!3999 lt!2472930 s!14361))))

(declare-datatypes ((Unit!160608 0))(
  ( (Unit!160609) )
))
(declare-fun lt!2472931 () Unit!160608)

(declare-fun mainMatchTheorem!3999 (Regex!16942 List!66695) Unit!160608)

(assert (=> b!6930009 (= lt!2472931 (mainMatchTheorem!3999 lt!2472930 s!14361))))

(declare-fun lt!2472936 () Regex!16942)

(assert (=> b!6930009 (= lt!2472935 (matchRSpec!3999 lt!2472936 s!14361))))

(assert (=> b!6930009 (= lt!2472935 (matchR!9081 lt!2472936 s!14361))))

(declare-fun lt!2472934 () Unit!160608)

(assert (=> b!6930009 (= lt!2472934 (mainMatchTheorem!3999 lt!2472936 s!14361))))

(declare-fun lt!2472933 () Regex!16942)

(assert (=> b!6930009 (= lt!2472930 (Concat!25787 r1!6342 lt!2472933))))

(declare-fun r2!6280 () Regex!16942)

(declare-fun r3!135 () Regex!16942)

(assert (=> b!6930009 (= lt!2472933 (Concat!25787 r2!6280 r3!135))))

(assert (=> b!6930009 (= lt!2472936 (Concat!25787 (Concat!25787 r1!6342 r2!6280) r3!135))))

(assert (=> b!6930010 (= e!4169991 (validRegex!8648 lt!2472933))))

(declare-fun lambda!394347 () Int)

(declare-fun Exists!3942 (Int) Bool)

(assert (=> b!6930010 (Exists!3942 lambda!394347)))

(declare-fun lt!2472932 () Unit!160608)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2883 (Regex!16942 Regex!16942 List!66695) Unit!160608)

(assert (=> b!6930010 (= lt!2472932 (lemmaFindConcatSeparationEquivalentToExists!2883 r1!6342 lt!2472933 s!14361))))

(declare-fun b!6930011 () Bool)

(declare-fun tp!1910317 () Bool)

(declare-fun tp!1910314 () Bool)

(assert (=> b!6930011 (= e!4169992 (and tp!1910317 tp!1910314))))

(declare-fun b!6930012 () Bool)

(assert (=> b!6930012 (= e!4169987 tp_is_empty!43109)))

(declare-fun b!6930013 () Bool)

(declare-fun res!2826279 () Bool)

(assert (=> b!6930013 (=> res!2826279 e!4169991)))

(declare-datatypes ((tuple2!67598 0))(
  ( (tuple2!67599 (_1!37102 List!66695) (_2!37102 List!66695)) )
))
(declare-datatypes ((Option!16711 0))(
  ( (None!16710) (Some!16710 (v!52982 tuple2!67598)) )
))
(declare-fun isDefined!13412 (Option!16711) Bool)

(declare-fun findConcatSeparation!3125 (Regex!16942 Regex!16942 List!66695 List!66695 List!66695) Option!16711)

(assert (=> b!6930013 (= res!2826279 (not (isDefined!13412 (findConcatSeparation!3125 r1!6342 lt!2472933 Nil!66571 s!14361 s!14361))))))

(declare-fun b!6930014 () Bool)

(declare-fun tp!1910320 () Bool)

(assert (=> b!6930014 (= e!4169987 tp!1910320)))

(declare-fun b!6930015 () Bool)

(declare-fun tp!1910315 () Bool)

(declare-fun tp!1910311 () Bool)

(assert (=> b!6930015 (= e!4169989 (and tp!1910315 tp!1910311))))

(declare-fun b!6930016 () Bool)

(declare-fun tp!1910309 () Bool)

(declare-fun tp!1910321 () Bool)

(assert (=> b!6930016 (= e!4169992 (and tp!1910309 tp!1910321))))

(declare-fun b!6930017 () Bool)

(declare-fun res!2826281 () Bool)

(assert (=> b!6930017 (=> (not res!2826281) (not e!4169990))))

(assert (=> b!6930017 (= res!2826281 (validRegex!8648 r2!6280))))

(declare-fun b!6930018 () Bool)

(declare-fun tp!1910312 () Bool)

(declare-fun tp!1910323 () Bool)

(assert (=> b!6930018 (= e!4169989 (and tp!1910312 tp!1910323))))

(declare-fun b!6930019 () Bool)

(declare-fun res!2826277 () Bool)

(assert (=> b!6930019 (=> (not res!2826277) (not e!4169990))))

(assert (=> b!6930019 (= res!2826277 (validRegex!8648 r3!135))))

(declare-fun b!6930020 () Bool)

(declare-fun tp!1910308 () Bool)

(declare-fun tp!1910318 () Bool)

(assert (=> b!6930020 (= e!4169987 (and tp!1910308 tp!1910318))))

(declare-fun b!6930021 () Bool)

(declare-fun tp!1910313 () Bool)

(declare-fun tp!1910322 () Bool)

(assert (=> b!6930021 (= e!4169987 (and tp!1910313 tp!1910322))))

(declare-fun b!6930022 () Bool)

(assert (=> b!6930022 (= e!4169989 tp_is_empty!43109)))

(declare-fun b!6930023 () Bool)

(declare-fun tp!1910316 () Bool)

(assert (=> b!6930023 (= e!4169992 tp!1910316)))

(assert (= (and start!666040 res!2826278) b!6930017))

(assert (= (and b!6930017 res!2826281) b!6930019))

(assert (= (and b!6930019 res!2826277) b!6930009))

(assert (= (and b!6930009 (not res!2826280)) b!6930013))

(assert (= (and b!6930013 (not res!2826279)) b!6930010))

(assert (= (and start!666040 (is-ElementMatch!16942 r1!6342)) b!6930022))

(assert (= (and start!666040 (is-Concat!25787 r1!6342)) b!6930015))

(assert (= (and start!666040 (is-Star!16942 r1!6342)) b!6930007))

(assert (= (and start!666040 (is-Union!16942 r1!6342)) b!6930018))

(assert (= (and start!666040 (is-ElementMatch!16942 r2!6280)) b!6930012))

(assert (= (and start!666040 (is-Concat!25787 r2!6280)) b!6930021))

(assert (= (and start!666040 (is-Star!16942 r2!6280)) b!6930014))

(assert (= (and start!666040 (is-Union!16942 r2!6280)) b!6930020))

(assert (= (and start!666040 (is-ElementMatch!16942 r3!135)) b!6930006))

(assert (= (and start!666040 (is-Concat!25787 r3!135)) b!6930011))

(assert (= (and start!666040 (is-Star!16942 r3!135)) b!6930023))

(assert (= (and start!666040 (is-Union!16942 r3!135)) b!6930016))

(assert (= (and start!666040 (is-Cons!66571 s!14361)) b!6930008))

(declare-fun m!7637756 () Bool)

(assert (=> b!6930019 m!7637756))

(declare-fun m!7637758 () Bool)

(assert (=> b!6930010 m!7637758))

(declare-fun m!7637760 () Bool)

(assert (=> b!6930010 m!7637760))

(declare-fun m!7637762 () Bool)

(assert (=> b!6930010 m!7637762))

(declare-fun m!7637764 () Bool)

(assert (=> b!6930009 m!7637764))

(declare-fun m!7637766 () Bool)

(assert (=> b!6930009 m!7637766))

(declare-fun m!7637768 () Bool)

(assert (=> b!6930009 m!7637768))

(declare-fun m!7637770 () Bool)

(assert (=> b!6930009 m!7637770))

(declare-fun m!7637772 () Bool)

(assert (=> b!6930009 m!7637772))

(declare-fun m!7637774 () Bool)

(assert (=> b!6930009 m!7637774))

(declare-fun m!7637776 () Bool)

(assert (=> start!666040 m!7637776))

(declare-fun m!7637778 () Bool)

(assert (=> b!6930017 m!7637778))

(declare-fun m!7637780 () Bool)

(assert (=> b!6930013 m!7637780))

(assert (=> b!6930013 m!7637780))

(declare-fun m!7637782 () Bool)

(assert (=> b!6930013 m!7637782))

(push 1)

(assert (not b!6930011))

(assert (not b!6930018))

(assert (not b!6930013))

(assert tp_is_empty!43109)

(assert (not start!666040))

(assert (not b!6930019))

(assert (not b!6930007))

(assert (not b!6930017))

(assert (not b!6930023))

(assert (not b!6930015))

(assert (not b!6930020))

(assert (not b!6930008))

(assert (not b!6930021))

(assert (not b!6930009))

(assert (not b!6930016))

(assert (not b!6930014))

(assert (not b!6930010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6930108 () Bool)

(declare-fun e!4170033 () Bool)

(declare-fun e!4170028 () Bool)

(assert (=> b!6930108 (= e!4170033 e!4170028)))

(declare-fun c!1286230 () Bool)

(assert (=> b!6930108 (= c!1286230 (is-Star!16942 r3!135))))

(declare-fun bm!629743 () Bool)

(declare-fun call!629748 () Bool)

(declare-fun call!629750 () Bool)

(assert (=> bm!629743 (= call!629748 call!629750)))

(declare-fun b!6930109 () Bool)

(declare-fun res!2826312 () Bool)

(declare-fun e!4170032 () Bool)

(assert (=> b!6930109 (=> (not res!2826312) (not e!4170032))))

(assert (=> b!6930109 (= res!2826312 call!629748)))

(declare-fun e!4170031 () Bool)

(assert (=> b!6930109 (= e!4170031 e!4170032)))

(declare-fun d!2165951 () Bool)

(declare-fun res!2826315 () Bool)

(assert (=> d!2165951 (=> res!2826315 e!4170033)))

(assert (=> d!2165951 (= res!2826315 (is-ElementMatch!16942 r3!135))))

(assert (=> d!2165951 (= (validRegex!8648 r3!135) e!4170033)))

(declare-fun b!6930110 () Bool)

(declare-fun call!629749 () Bool)

(assert (=> b!6930110 (= e!4170032 call!629749)))

(declare-fun bm!629744 () Bool)

(declare-fun c!1286231 () Bool)

(assert (=> bm!629744 (= call!629749 (validRegex!8648 (ite c!1286231 (regTwo!34397 r3!135) (regOne!34396 r3!135))))))

(declare-fun b!6930111 () Bool)

(declare-fun e!4170030 () Bool)

(assert (=> b!6930111 (= e!4170028 e!4170030)))

(declare-fun res!2826313 () Bool)

(declare-fun nullable!6763 (Regex!16942) Bool)

(assert (=> b!6930111 (= res!2826313 (not (nullable!6763 (reg!17271 r3!135))))))

(assert (=> b!6930111 (=> (not res!2826313) (not e!4170030))))

(declare-fun b!6930112 () Bool)

(declare-fun e!4170029 () Bool)

(declare-fun e!4170027 () Bool)

(assert (=> b!6930112 (= e!4170029 e!4170027)))

(declare-fun res!2826311 () Bool)

(assert (=> b!6930112 (=> (not res!2826311) (not e!4170027))))

(assert (=> b!6930112 (= res!2826311 call!629749)))

(declare-fun b!6930113 () Bool)

(assert (=> b!6930113 (= e!4170027 call!629748)))

(declare-fun b!6930114 () Bool)

(assert (=> b!6930114 (= e!4170028 e!4170031)))

(assert (=> b!6930114 (= c!1286231 (is-Union!16942 r3!135))))

(declare-fun b!6930115 () Bool)

(assert (=> b!6930115 (= e!4170030 call!629750)))

(declare-fun b!6930116 () Bool)

(declare-fun res!2826314 () Bool)

(assert (=> b!6930116 (=> res!2826314 e!4170029)))

(assert (=> b!6930116 (= res!2826314 (not (is-Concat!25787 r3!135)))))

(assert (=> b!6930116 (= e!4170031 e!4170029)))

(declare-fun bm!629745 () Bool)

(assert (=> bm!629745 (= call!629750 (validRegex!8648 (ite c!1286230 (reg!17271 r3!135) (ite c!1286231 (regOne!34397 r3!135) (regTwo!34396 r3!135)))))))

(assert (= (and d!2165951 (not res!2826315)) b!6930108))

(assert (= (and b!6930108 c!1286230) b!6930111))

(assert (= (and b!6930108 (not c!1286230)) b!6930114))

(assert (= (and b!6930111 res!2826313) b!6930115))

(assert (= (and b!6930114 c!1286231) b!6930109))

(assert (= (and b!6930114 (not c!1286231)) b!6930116))

(assert (= (and b!6930109 res!2826312) b!6930110))

(assert (= (and b!6930116 (not res!2826314)) b!6930112))

(assert (= (and b!6930112 res!2826311) b!6930113))

(assert (= (or b!6930109 b!6930113) bm!629743))

(assert (= (or b!6930110 b!6930112) bm!629744))

(assert (= (or b!6930115 bm!629743) bm!629745))

(declare-fun m!7637814 () Bool)

(assert (=> bm!629744 m!7637814))

(declare-fun m!7637816 () Bool)

(assert (=> b!6930111 m!7637816))

(declare-fun m!7637818 () Bool)

(assert (=> bm!629745 m!7637818))

(assert (=> b!6930019 d!2165951))

(declare-fun d!2165957 () Bool)

(assert (=> d!2165957 (= (matchR!9081 lt!2472930 s!14361) (matchRSpec!3999 lt!2472930 s!14361))))

(declare-fun lt!2472960 () Unit!160608)

(declare-fun choose!51608 (Regex!16942 List!66695) Unit!160608)

(assert (=> d!2165957 (= lt!2472960 (choose!51608 lt!2472930 s!14361))))

(assert (=> d!2165957 (validRegex!8648 lt!2472930)))

(assert (=> d!2165957 (= (mainMatchTheorem!3999 lt!2472930 s!14361) lt!2472960)))

(declare-fun bs!1850341 () Bool)

(assert (= bs!1850341 d!2165957))

(assert (=> bs!1850341 m!7637768))

(assert (=> bs!1850341 m!7637770))

(declare-fun m!7637820 () Bool)

(assert (=> bs!1850341 m!7637820))

(declare-fun m!7637822 () Bool)

(assert (=> bs!1850341 m!7637822))

(assert (=> b!6930009 d!2165957))

(declare-fun bm!629748 () Bool)

(declare-fun call!629753 () Bool)

(declare-fun isEmpty!38828 (List!66695) Bool)

(assert (=> bm!629748 (= call!629753 (isEmpty!38828 s!14361))))

(declare-fun b!6930145 () Bool)

(declare-fun res!2826336 () Bool)

(declare-fun e!4170051 () Bool)

(assert (=> b!6930145 (=> (not res!2826336) (not e!4170051))))

(assert (=> b!6930145 (= res!2826336 (not call!629753))))

(declare-fun b!6930146 () Bool)

(declare-fun e!4170050 () Bool)

(declare-fun head!13891 (List!66695) C!34154)

(assert (=> b!6930146 (= e!4170050 (not (= (head!13891 s!14361) (c!1286224 lt!2472936))))))

(declare-fun d!2165959 () Bool)

(declare-fun e!4170053 () Bool)

(assert (=> d!2165959 e!4170053))

(declare-fun c!1286238 () Bool)

(assert (=> d!2165959 (= c!1286238 (is-EmptyExpr!16942 lt!2472936))))

(declare-fun lt!2472963 () Bool)

(declare-fun e!4170049 () Bool)

(assert (=> d!2165959 (= lt!2472963 e!4170049)))

(declare-fun c!1286239 () Bool)

(assert (=> d!2165959 (= c!1286239 (isEmpty!38828 s!14361))))

(assert (=> d!2165959 (validRegex!8648 lt!2472936)))

(assert (=> d!2165959 (= (matchR!9081 lt!2472936 s!14361) lt!2472963)))

(declare-fun b!6930147 () Bool)

(declare-fun e!4170052 () Bool)

(assert (=> b!6930147 (= e!4170052 (not lt!2472963))))

(declare-fun b!6930148 () Bool)

(declare-fun res!2826339 () Bool)

(assert (=> b!6930148 (=> res!2826339 e!4170050)))

(declare-fun tail!12943 (List!66695) List!66695)

(assert (=> b!6930148 (= res!2826339 (not (isEmpty!38828 (tail!12943 s!14361))))))

(declare-fun b!6930149 () Bool)

(assert (=> b!6930149 (= e!4170053 (= lt!2472963 call!629753))))

(declare-fun b!6930150 () Bool)

(declare-fun res!2826335 () Bool)

(declare-fun e!4170054 () Bool)

(assert (=> b!6930150 (=> res!2826335 e!4170054)))

(assert (=> b!6930150 (= res!2826335 (not (is-ElementMatch!16942 lt!2472936)))))

(assert (=> b!6930150 (= e!4170052 e!4170054)))

(declare-fun b!6930151 () Bool)

(declare-fun e!4170048 () Bool)

(assert (=> b!6930151 (= e!4170054 e!4170048)))

(declare-fun res!2826333 () Bool)

(assert (=> b!6930151 (=> (not res!2826333) (not e!4170048))))

(assert (=> b!6930151 (= res!2826333 (not lt!2472963))))

(declare-fun b!6930152 () Bool)

(assert (=> b!6930152 (= e!4170049 (nullable!6763 lt!2472936))))

(declare-fun b!6930153 () Bool)

(assert (=> b!6930153 (= e!4170051 (= (head!13891 s!14361) (c!1286224 lt!2472936)))))

(declare-fun b!6930154 () Bool)

(assert (=> b!6930154 (= e!4170048 e!4170050)))

(declare-fun res!2826337 () Bool)

(assert (=> b!6930154 (=> res!2826337 e!4170050)))

(assert (=> b!6930154 (= res!2826337 call!629753)))

(declare-fun b!6930155 () Bool)

(declare-fun res!2826338 () Bool)

(assert (=> b!6930155 (=> (not res!2826338) (not e!4170051))))

(assert (=> b!6930155 (= res!2826338 (isEmpty!38828 (tail!12943 s!14361)))))

(declare-fun b!6930156 () Bool)

(declare-fun derivativeStep!5438 (Regex!16942 C!34154) Regex!16942)

(assert (=> b!6930156 (= e!4170049 (matchR!9081 (derivativeStep!5438 lt!2472936 (head!13891 s!14361)) (tail!12943 s!14361)))))

(declare-fun b!6930157 () Bool)

(assert (=> b!6930157 (= e!4170053 e!4170052)))

(declare-fun c!1286240 () Bool)

(assert (=> b!6930157 (= c!1286240 (is-EmptyLang!16942 lt!2472936))))

(declare-fun b!6930158 () Bool)

(declare-fun res!2826334 () Bool)

(assert (=> b!6930158 (=> res!2826334 e!4170054)))

(assert (=> b!6930158 (= res!2826334 e!4170051)))

(declare-fun res!2826332 () Bool)

(assert (=> b!6930158 (=> (not res!2826332) (not e!4170051))))

(assert (=> b!6930158 (= res!2826332 lt!2472963)))

(assert (= (and d!2165959 c!1286239) b!6930152))

(assert (= (and d!2165959 (not c!1286239)) b!6930156))

(assert (= (and d!2165959 c!1286238) b!6930149))

(assert (= (and d!2165959 (not c!1286238)) b!6930157))

(assert (= (and b!6930157 c!1286240) b!6930147))

(assert (= (and b!6930157 (not c!1286240)) b!6930150))

(assert (= (and b!6930150 (not res!2826335)) b!6930158))

(assert (= (and b!6930158 res!2826332) b!6930145))

(assert (= (and b!6930145 res!2826336) b!6930155))

(assert (= (and b!6930155 res!2826338) b!6930153))

(assert (= (and b!6930158 (not res!2826334)) b!6930151))

(assert (= (and b!6930151 res!2826333) b!6930154))

(assert (= (and b!6930154 (not res!2826337)) b!6930148))

(assert (= (and b!6930148 (not res!2826339)) b!6930146))

(assert (= (or b!6930149 b!6930145 b!6930154) bm!629748))

(declare-fun m!7637824 () Bool)

(assert (=> b!6930146 m!7637824))

(assert (=> b!6930156 m!7637824))

(assert (=> b!6930156 m!7637824))

(declare-fun m!7637826 () Bool)

(assert (=> b!6930156 m!7637826))

(declare-fun m!7637828 () Bool)

(assert (=> b!6930156 m!7637828))

(assert (=> b!6930156 m!7637826))

(assert (=> b!6930156 m!7637828))

(declare-fun m!7637830 () Bool)

(assert (=> b!6930156 m!7637830))

(assert (=> b!6930155 m!7637828))

(assert (=> b!6930155 m!7637828))

(declare-fun m!7637832 () Bool)

(assert (=> b!6930155 m!7637832))

(declare-fun m!7637834 () Bool)

(assert (=> b!6930152 m!7637834))

(declare-fun m!7637836 () Bool)

(assert (=> d!2165959 m!7637836))

(declare-fun m!7637838 () Bool)

(assert (=> d!2165959 m!7637838))

(assert (=> bm!629748 m!7637836))

(assert (=> b!6930148 m!7637828))

(assert (=> b!6930148 m!7637828))

(assert (=> b!6930148 m!7637832))

(assert (=> b!6930153 m!7637824))

(assert (=> b!6930009 d!2165959))

(declare-fun bm!629749 () Bool)

(declare-fun call!629754 () Bool)

(assert (=> bm!629749 (= call!629754 (isEmpty!38828 s!14361))))

(declare-fun b!6930159 () Bool)

(declare-fun res!2826344 () Bool)

(declare-fun e!4170058 () Bool)

(assert (=> b!6930159 (=> (not res!2826344) (not e!4170058))))

(assert (=> b!6930159 (= res!2826344 (not call!629754))))

(declare-fun b!6930160 () Bool)

(declare-fun e!4170057 () Bool)

(assert (=> b!6930160 (= e!4170057 (not (= (head!13891 s!14361) (c!1286224 lt!2472930))))))

(declare-fun d!2165961 () Bool)

(declare-fun e!4170060 () Bool)

(assert (=> d!2165961 e!4170060))

(declare-fun c!1286241 () Bool)

(assert (=> d!2165961 (= c!1286241 (is-EmptyExpr!16942 lt!2472930))))

(declare-fun lt!2472964 () Bool)

(declare-fun e!4170056 () Bool)

(assert (=> d!2165961 (= lt!2472964 e!4170056)))

(declare-fun c!1286242 () Bool)

(assert (=> d!2165961 (= c!1286242 (isEmpty!38828 s!14361))))

(assert (=> d!2165961 (validRegex!8648 lt!2472930)))

(assert (=> d!2165961 (= (matchR!9081 lt!2472930 s!14361) lt!2472964)))

(declare-fun b!6930161 () Bool)

(declare-fun e!4170059 () Bool)

(assert (=> b!6930161 (= e!4170059 (not lt!2472964))))

(declare-fun b!6930162 () Bool)

(declare-fun res!2826347 () Bool)

(assert (=> b!6930162 (=> res!2826347 e!4170057)))

(assert (=> b!6930162 (= res!2826347 (not (isEmpty!38828 (tail!12943 s!14361))))))

(declare-fun b!6930163 () Bool)

(assert (=> b!6930163 (= e!4170060 (= lt!2472964 call!629754))))

(declare-fun b!6930164 () Bool)

(declare-fun res!2826343 () Bool)

(declare-fun e!4170061 () Bool)

(assert (=> b!6930164 (=> res!2826343 e!4170061)))

(assert (=> b!6930164 (= res!2826343 (not (is-ElementMatch!16942 lt!2472930)))))

(assert (=> b!6930164 (= e!4170059 e!4170061)))

(declare-fun b!6930165 () Bool)

(declare-fun e!4170055 () Bool)

(assert (=> b!6930165 (= e!4170061 e!4170055)))

(declare-fun res!2826341 () Bool)

(assert (=> b!6930165 (=> (not res!2826341) (not e!4170055))))

(assert (=> b!6930165 (= res!2826341 (not lt!2472964))))

(declare-fun b!6930166 () Bool)

(assert (=> b!6930166 (= e!4170056 (nullable!6763 lt!2472930))))

(declare-fun b!6930167 () Bool)

(assert (=> b!6930167 (= e!4170058 (= (head!13891 s!14361) (c!1286224 lt!2472930)))))

(declare-fun b!6930168 () Bool)

(assert (=> b!6930168 (= e!4170055 e!4170057)))

(declare-fun res!2826345 () Bool)

(assert (=> b!6930168 (=> res!2826345 e!4170057)))

(assert (=> b!6930168 (= res!2826345 call!629754)))

(declare-fun b!6930169 () Bool)

(declare-fun res!2826346 () Bool)

(assert (=> b!6930169 (=> (not res!2826346) (not e!4170058))))

(assert (=> b!6930169 (= res!2826346 (isEmpty!38828 (tail!12943 s!14361)))))

(declare-fun b!6930170 () Bool)

(assert (=> b!6930170 (= e!4170056 (matchR!9081 (derivativeStep!5438 lt!2472930 (head!13891 s!14361)) (tail!12943 s!14361)))))

(declare-fun b!6930171 () Bool)

(assert (=> b!6930171 (= e!4170060 e!4170059)))

(declare-fun c!1286243 () Bool)

(assert (=> b!6930171 (= c!1286243 (is-EmptyLang!16942 lt!2472930))))

(declare-fun b!6930172 () Bool)

(declare-fun res!2826342 () Bool)

(assert (=> b!6930172 (=> res!2826342 e!4170061)))

(assert (=> b!6930172 (= res!2826342 e!4170058)))

(declare-fun res!2826340 () Bool)

(assert (=> b!6930172 (=> (not res!2826340) (not e!4170058))))

(assert (=> b!6930172 (= res!2826340 lt!2472964)))

(assert (= (and d!2165961 c!1286242) b!6930166))

(assert (= (and d!2165961 (not c!1286242)) b!6930170))

(assert (= (and d!2165961 c!1286241) b!6930163))

(assert (= (and d!2165961 (not c!1286241)) b!6930171))

(assert (= (and b!6930171 c!1286243) b!6930161))

(assert (= (and b!6930171 (not c!1286243)) b!6930164))

(assert (= (and b!6930164 (not res!2826343)) b!6930172))

(assert (= (and b!6930172 res!2826340) b!6930159))

(assert (= (and b!6930159 res!2826344) b!6930169))

(assert (= (and b!6930169 res!2826346) b!6930167))

(assert (= (and b!6930172 (not res!2826342)) b!6930165))

(assert (= (and b!6930165 res!2826341) b!6930168))

(assert (= (and b!6930168 (not res!2826345)) b!6930162))

(assert (= (and b!6930162 (not res!2826347)) b!6930160))

(assert (= (or b!6930163 b!6930159 b!6930168) bm!629749))

(assert (=> b!6930160 m!7637824))

(assert (=> b!6930170 m!7637824))

(assert (=> b!6930170 m!7637824))

(declare-fun m!7637840 () Bool)

(assert (=> b!6930170 m!7637840))

(assert (=> b!6930170 m!7637828))

(assert (=> b!6930170 m!7637840))

(assert (=> b!6930170 m!7637828))

(declare-fun m!7637842 () Bool)

(assert (=> b!6930170 m!7637842))

(assert (=> b!6930169 m!7637828))

(assert (=> b!6930169 m!7637828))

(assert (=> b!6930169 m!7637832))

(declare-fun m!7637844 () Bool)

(assert (=> b!6930166 m!7637844))

(assert (=> d!2165961 m!7637836))

(assert (=> d!2165961 m!7637822))

(assert (=> bm!629749 m!7637836))

(assert (=> b!6930162 m!7637828))

(assert (=> b!6930162 m!7637828))

(assert (=> b!6930162 m!7637832))

(assert (=> b!6930167 m!7637824))

(assert (=> b!6930009 d!2165961))

(declare-fun bs!1850342 () Bool)

(declare-fun b!6930233 () Bool)

(assert (= bs!1850342 (and b!6930233 b!6930010)))

(declare-fun lambda!394355 () Int)

(assert (=> bs!1850342 (not (= lambda!394355 lambda!394347))))

(assert (=> b!6930233 true))

(assert (=> b!6930233 true))

(declare-fun bs!1850343 () Bool)

(declare-fun b!6930237 () Bool)

(assert (= bs!1850343 (and b!6930237 b!6930010)))

(declare-fun lambda!394356 () Int)

(assert (=> bs!1850343 (not (= lambda!394356 lambda!394347))))

(declare-fun bs!1850344 () Bool)

(assert (= bs!1850344 (and b!6930237 b!6930233)))

(assert (=> bs!1850344 (not (= lambda!394356 lambda!394355))))

(assert (=> b!6930237 true))

(assert (=> b!6930237 true))

(declare-fun bm!629754 () Bool)

(declare-fun call!629759 () Bool)

(assert (=> bm!629754 (= call!629759 (isEmpty!38828 s!14361))))

(declare-fun b!6930232 () Bool)

(declare-fun e!4170100 () Bool)

(declare-fun e!4170099 () Bool)

(assert (=> b!6930232 (= e!4170100 e!4170099)))

(declare-fun res!2826380 () Bool)

(assert (=> b!6930232 (= res!2826380 (matchRSpec!3999 (regOne!34397 lt!2472930) s!14361))))

(assert (=> b!6930232 (=> res!2826380 e!4170099)))

(declare-fun e!4170096 () Bool)

(declare-fun call!629760 () Bool)

(assert (=> b!6930233 (= e!4170096 call!629760)))

(declare-fun b!6930234 () Bool)

(assert (=> b!6930234 (= e!4170099 (matchRSpec!3999 (regTwo!34397 lt!2472930) s!14361))))

(declare-fun b!6930235 () Bool)

(declare-fun res!2826381 () Bool)

(assert (=> b!6930235 (=> res!2826381 e!4170096)))

(assert (=> b!6930235 (= res!2826381 call!629759)))

(declare-fun e!4170095 () Bool)

(assert (=> b!6930235 (= e!4170095 e!4170096)))

(declare-fun b!6930236 () Bool)

(declare-fun c!1286258 () Bool)

(assert (=> b!6930236 (= c!1286258 (is-ElementMatch!16942 lt!2472930))))

(declare-fun e!4170101 () Bool)

(declare-fun e!4170097 () Bool)

(assert (=> b!6930236 (= e!4170101 e!4170097)))

(assert (=> b!6930237 (= e!4170095 call!629760)))

(declare-fun b!6930239 () Bool)

(declare-fun c!1286260 () Bool)

(assert (=> b!6930239 (= c!1286260 (is-Union!16942 lt!2472930))))

(assert (=> b!6930239 (= e!4170097 e!4170100)))

(declare-fun b!6930240 () Bool)

(assert (=> b!6930240 (= e!4170097 (= s!14361 (Cons!66571 (c!1286224 lt!2472930) Nil!66571)))))

(declare-fun b!6930241 () Bool)

(declare-fun e!4170098 () Bool)

(assert (=> b!6930241 (= e!4170098 e!4170101)))

(declare-fun res!2826379 () Bool)

(assert (=> b!6930241 (= res!2826379 (not (is-EmptyLang!16942 lt!2472930)))))

(assert (=> b!6930241 (=> (not res!2826379) (not e!4170101))))

(declare-fun bm!629755 () Bool)

(declare-fun c!1286259 () Bool)

(assert (=> bm!629755 (= call!629760 (Exists!3942 (ite c!1286259 lambda!394355 lambda!394356)))))

(declare-fun b!6930242 () Bool)

(assert (=> b!6930242 (= e!4170098 call!629759)))

(declare-fun b!6930238 () Bool)

(assert (=> b!6930238 (= e!4170100 e!4170095)))

(assert (=> b!6930238 (= c!1286259 (is-Star!16942 lt!2472930))))

(declare-fun d!2165963 () Bool)

(declare-fun c!1286261 () Bool)

(assert (=> d!2165963 (= c!1286261 (is-EmptyExpr!16942 lt!2472930))))

(assert (=> d!2165963 (= (matchRSpec!3999 lt!2472930 s!14361) e!4170098)))

(assert (= (and d!2165963 c!1286261) b!6930242))

(assert (= (and d!2165963 (not c!1286261)) b!6930241))

(assert (= (and b!6930241 res!2826379) b!6930236))

(assert (= (and b!6930236 c!1286258) b!6930240))

(assert (= (and b!6930236 (not c!1286258)) b!6930239))

(assert (= (and b!6930239 c!1286260) b!6930232))

(assert (= (and b!6930239 (not c!1286260)) b!6930238))

(assert (= (and b!6930232 (not res!2826380)) b!6930234))

(assert (= (and b!6930238 c!1286259) b!6930235))

(assert (= (and b!6930238 (not c!1286259)) b!6930237))

(assert (= (and b!6930235 (not res!2826381)) b!6930233))

(assert (= (or b!6930233 b!6930237) bm!629755))

(assert (= (or b!6930242 b!6930235) bm!629754))

(assert (=> bm!629754 m!7637836))

(declare-fun m!7637868 () Bool)

(assert (=> b!6930232 m!7637868))

(declare-fun m!7637870 () Bool)

(assert (=> b!6930234 m!7637870))

(declare-fun m!7637872 () Bool)

(assert (=> bm!629755 m!7637872))

(assert (=> b!6930009 d!2165963))

(declare-fun d!2165967 () Bool)

(assert (=> d!2165967 (= (matchR!9081 lt!2472936 s!14361) (matchRSpec!3999 lt!2472936 s!14361))))

(declare-fun lt!2472974 () Unit!160608)

(assert (=> d!2165967 (= lt!2472974 (choose!51608 lt!2472936 s!14361))))

(assert (=> d!2165967 (validRegex!8648 lt!2472936)))

(assert (=> d!2165967 (= (mainMatchTheorem!3999 lt!2472936 s!14361) lt!2472974)))

(declare-fun bs!1850345 () Bool)

(assert (= bs!1850345 d!2165967))

(assert (=> bs!1850345 m!7637766))

(assert (=> bs!1850345 m!7637774))

(declare-fun m!7637874 () Bool)

(assert (=> bs!1850345 m!7637874))

(assert (=> bs!1850345 m!7637838))

(assert (=> b!6930009 d!2165967))

(declare-fun bs!1850346 () Bool)

(declare-fun b!6930244 () Bool)

(assert (= bs!1850346 (and b!6930244 b!6930010)))

(declare-fun lambda!394357 () Int)

(assert (=> bs!1850346 (not (= lambda!394357 lambda!394347))))

(declare-fun bs!1850347 () Bool)

(assert (= bs!1850347 (and b!6930244 b!6930233)))

(assert (=> bs!1850347 (= (and (= (reg!17271 lt!2472936) (reg!17271 lt!2472930)) (= lt!2472936 lt!2472930)) (= lambda!394357 lambda!394355))))

(declare-fun bs!1850348 () Bool)

(assert (= bs!1850348 (and b!6930244 b!6930237)))

(assert (=> bs!1850348 (not (= lambda!394357 lambda!394356))))

(assert (=> b!6930244 true))

(assert (=> b!6930244 true))

(declare-fun bs!1850349 () Bool)

(declare-fun b!6930248 () Bool)

(assert (= bs!1850349 (and b!6930248 b!6930010)))

(declare-fun lambda!394358 () Int)

(assert (=> bs!1850349 (not (= lambda!394358 lambda!394347))))

(declare-fun bs!1850350 () Bool)

(assert (= bs!1850350 (and b!6930248 b!6930233)))

(assert (=> bs!1850350 (not (= lambda!394358 lambda!394355))))

(declare-fun bs!1850351 () Bool)

(assert (= bs!1850351 (and b!6930248 b!6930237)))

(assert (=> bs!1850351 (= (and (= (regOne!34396 lt!2472936) (regOne!34396 lt!2472930)) (= (regTwo!34396 lt!2472936) (regTwo!34396 lt!2472930))) (= lambda!394358 lambda!394356))))

(declare-fun bs!1850352 () Bool)

(assert (= bs!1850352 (and b!6930248 b!6930244)))

(assert (=> bs!1850352 (not (= lambda!394358 lambda!394357))))

(assert (=> b!6930248 true))

(assert (=> b!6930248 true))

(declare-fun bm!629756 () Bool)

(declare-fun call!629761 () Bool)

(assert (=> bm!629756 (= call!629761 (isEmpty!38828 s!14361))))

(declare-fun b!6930243 () Bool)

(declare-fun e!4170107 () Bool)

(declare-fun e!4170106 () Bool)

(assert (=> b!6930243 (= e!4170107 e!4170106)))

(declare-fun res!2826383 () Bool)

(assert (=> b!6930243 (= res!2826383 (matchRSpec!3999 (regOne!34397 lt!2472936) s!14361))))

(assert (=> b!6930243 (=> res!2826383 e!4170106)))

(declare-fun e!4170103 () Bool)

(declare-fun call!629762 () Bool)

(assert (=> b!6930244 (= e!4170103 call!629762)))

(declare-fun b!6930245 () Bool)

(assert (=> b!6930245 (= e!4170106 (matchRSpec!3999 (regTwo!34397 lt!2472936) s!14361))))

(declare-fun b!6930246 () Bool)

(declare-fun res!2826384 () Bool)

(assert (=> b!6930246 (=> res!2826384 e!4170103)))

(assert (=> b!6930246 (= res!2826384 call!629761)))

(declare-fun e!4170102 () Bool)

(assert (=> b!6930246 (= e!4170102 e!4170103)))

(declare-fun b!6930247 () Bool)

(declare-fun c!1286262 () Bool)

(assert (=> b!6930247 (= c!1286262 (is-ElementMatch!16942 lt!2472936))))

(declare-fun e!4170108 () Bool)

(declare-fun e!4170104 () Bool)

(assert (=> b!6930247 (= e!4170108 e!4170104)))

(assert (=> b!6930248 (= e!4170102 call!629762)))

(declare-fun b!6930250 () Bool)

(declare-fun c!1286264 () Bool)

(assert (=> b!6930250 (= c!1286264 (is-Union!16942 lt!2472936))))

(assert (=> b!6930250 (= e!4170104 e!4170107)))

(declare-fun b!6930251 () Bool)

(assert (=> b!6930251 (= e!4170104 (= s!14361 (Cons!66571 (c!1286224 lt!2472936) Nil!66571)))))

(declare-fun b!6930252 () Bool)

(declare-fun e!4170105 () Bool)

(assert (=> b!6930252 (= e!4170105 e!4170108)))

(declare-fun res!2826382 () Bool)

(assert (=> b!6930252 (= res!2826382 (not (is-EmptyLang!16942 lt!2472936)))))

(assert (=> b!6930252 (=> (not res!2826382) (not e!4170108))))

(declare-fun bm!629757 () Bool)

(declare-fun c!1286263 () Bool)

(assert (=> bm!629757 (= call!629762 (Exists!3942 (ite c!1286263 lambda!394357 lambda!394358)))))

(declare-fun b!6930253 () Bool)

(assert (=> b!6930253 (= e!4170105 call!629761)))

(declare-fun b!6930249 () Bool)

(assert (=> b!6930249 (= e!4170107 e!4170102)))

(assert (=> b!6930249 (= c!1286263 (is-Star!16942 lt!2472936))))

(declare-fun d!2165969 () Bool)

(declare-fun c!1286265 () Bool)

(assert (=> d!2165969 (= c!1286265 (is-EmptyExpr!16942 lt!2472936))))

(assert (=> d!2165969 (= (matchRSpec!3999 lt!2472936 s!14361) e!4170105)))

(assert (= (and d!2165969 c!1286265) b!6930253))

(assert (= (and d!2165969 (not c!1286265)) b!6930252))

(assert (= (and b!6930252 res!2826382) b!6930247))

(assert (= (and b!6930247 c!1286262) b!6930251))

(assert (= (and b!6930247 (not c!1286262)) b!6930250))

(assert (= (and b!6930250 c!1286264) b!6930243))

(assert (= (and b!6930250 (not c!1286264)) b!6930249))

(assert (= (and b!6930243 (not res!2826383)) b!6930245))

(assert (= (and b!6930249 c!1286263) b!6930246))

(assert (= (and b!6930249 (not c!1286263)) b!6930248))

(assert (= (and b!6930246 (not res!2826384)) b!6930244))

(assert (= (or b!6930244 b!6930248) bm!629757))

(assert (= (or b!6930253 b!6930246) bm!629756))

(assert (=> bm!629756 m!7637836))

(declare-fun m!7637876 () Bool)

(assert (=> b!6930243 m!7637876))

(declare-fun m!7637878 () Bool)

(assert (=> b!6930245 m!7637878))

(declare-fun m!7637880 () Bool)

(assert (=> bm!629757 m!7637880))

(assert (=> b!6930009 d!2165969))

(declare-fun d!2165971 () Bool)

(declare-fun isEmpty!38829 (Option!16711) Bool)

(assert (=> d!2165971 (= (isDefined!13412 (findConcatSeparation!3125 r1!6342 lt!2472933 Nil!66571 s!14361 s!14361)) (not (isEmpty!38829 (findConcatSeparation!3125 r1!6342 lt!2472933 Nil!66571 s!14361 s!14361))))))

(declare-fun bs!1850353 () Bool)

(assert (= bs!1850353 d!2165971))

(assert (=> bs!1850353 m!7637780))

(declare-fun m!7637882 () Bool)

(assert (=> bs!1850353 m!7637882))

(assert (=> b!6930013 d!2165971))

(declare-fun b!6930299 () Bool)

(declare-fun e!4170143 () Option!16711)

(assert (=> b!6930299 (= e!4170143 None!16710)))

(declare-fun d!2165973 () Bool)

(declare-fun e!4170140 () Bool)

(assert (=> d!2165973 e!4170140))

(declare-fun res!2826412 () Bool)

(assert (=> d!2165973 (=> res!2826412 e!4170140)))

(declare-fun e!4170144 () Bool)

(assert (=> d!2165973 (= res!2826412 e!4170144)))

(declare-fun res!2826410 () Bool)

(assert (=> d!2165973 (=> (not res!2826410) (not e!4170144))))

(declare-fun lt!2472983 () Option!16711)

(assert (=> d!2165973 (= res!2826410 (isDefined!13412 lt!2472983))))

(declare-fun e!4170141 () Option!16711)

(assert (=> d!2165973 (= lt!2472983 e!4170141)))

(declare-fun c!1286277 () Bool)

(declare-fun e!4170142 () Bool)

(assert (=> d!2165973 (= c!1286277 e!4170142)))

(declare-fun res!2826411 () Bool)

(assert (=> d!2165973 (=> (not res!2826411) (not e!4170142))))

(assert (=> d!2165973 (= res!2826411 (matchR!9081 r1!6342 Nil!66571))))

(assert (=> d!2165973 (validRegex!8648 r1!6342)))

(assert (=> d!2165973 (= (findConcatSeparation!3125 r1!6342 lt!2472933 Nil!66571 s!14361 s!14361) lt!2472983)))

(declare-fun b!6930300 () Bool)

(declare-fun res!2826413 () Bool)

(assert (=> b!6930300 (=> (not res!2826413) (not e!4170144))))

(declare-fun get!23350 (Option!16711) tuple2!67598)

(assert (=> b!6930300 (= res!2826413 (matchR!9081 lt!2472933 (_2!37102 (get!23350 lt!2472983))))))

(declare-fun b!6930301 () Bool)

(assert (=> b!6930301 (= e!4170141 e!4170143)))

(declare-fun c!1286276 () Bool)

(assert (=> b!6930301 (= c!1286276 (is-Nil!66571 s!14361))))

(declare-fun b!6930302 () Bool)

(declare-fun lt!2472982 () Unit!160608)

(declare-fun lt!2472981 () Unit!160608)

(assert (=> b!6930302 (= lt!2472982 lt!2472981)))

(declare-fun ++!14981 (List!66695 List!66695) List!66695)

(assert (=> b!6930302 (= (++!14981 (++!14981 Nil!66571 (Cons!66571 (h!73019 s!14361) Nil!66571)) (t!380438 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2842 (List!66695 C!34154 List!66695 List!66695) Unit!160608)

(assert (=> b!6930302 (= lt!2472981 (lemmaMoveElementToOtherListKeepsConcatEq!2842 Nil!66571 (h!73019 s!14361) (t!380438 s!14361) s!14361))))

(assert (=> b!6930302 (= e!4170143 (findConcatSeparation!3125 r1!6342 lt!2472933 (++!14981 Nil!66571 (Cons!66571 (h!73019 s!14361) Nil!66571)) (t!380438 s!14361) s!14361))))

(declare-fun b!6930303 () Bool)

(assert (=> b!6930303 (= e!4170144 (= (++!14981 (_1!37102 (get!23350 lt!2472983)) (_2!37102 (get!23350 lt!2472983))) s!14361))))

(declare-fun b!6930304 () Bool)

(declare-fun res!2826414 () Bool)

(assert (=> b!6930304 (=> (not res!2826414) (not e!4170144))))

(assert (=> b!6930304 (= res!2826414 (matchR!9081 r1!6342 (_1!37102 (get!23350 lt!2472983))))))

(declare-fun b!6930305 () Bool)

(assert (=> b!6930305 (= e!4170142 (matchR!9081 lt!2472933 s!14361))))

(declare-fun b!6930306 () Bool)

(assert (=> b!6930306 (= e!4170141 (Some!16710 (tuple2!67599 Nil!66571 s!14361)))))

(declare-fun b!6930307 () Bool)

(assert (=> b!6930307 (= e!4170140 (not (isDefined!13412 lt!2472983)))))

(assert (= (and d!2165973 res!2826411) b!6930305))

(assert (= (and d!2165973 c!1286277) b!6930306))

(assert (= (and d!2165973 (not c!1286277)) b!6930301))

(assert (= (and b!6930301 c!1286276) b!6930299))

(assert (= (and b!6930301 (not c!1286276)) b!6930302))

(assert (= (and d!2165973 res!2826410) b!6930304))

(assert (= (and b!6930304 res!2826414) b!6930300))

(assert (= (and b!6930300 res!2826413) b!6930303))

(assert (= (and d!2165973 (not res!2826412)) b!6930307))

(declare-fun m!7637890 () Bool)

(assert (=> b!6930307 m!7637890))

(assert (=> d!2165973 m!7637890))

(declare-fun m!7637892 () Bool)

(assert (=> d!2165973 m!7637892))

(assert (=> d!2165973 m!7637776))

(declare-fun m!7637894 () Bool)

(assert (=> b!6930305 m!7637894))

(declare-fun m!7637896 () Bool)

(assert (=> b!6930303 m!7637896))

(declare-fun m!7637898 () Bool)

(assert (=> b!6930303 m!7637898))

(assert (=> b!6930304 m!7637896))

(declare-fun m!7637900 () Bool)

(assert (=> b!6930304 m!7637900))

(declare-fun m!7637902 () Bool)

(assert (=> b!6930302 m!7637902))

(assert (=> b!6930302 m!7637902))

(declare-fun m!7637904 () Bool)

(assert (=> b!6930302 m!7637904))

(declare-fun m!7637906 () Bool)

(assert (=> b!6930302 m!7637906))

(assert (=> b!6930302 m!7637902))

(declare-fun m!7637908 () Bool)

(assert (=> b!6930302 m!7637908))

(assert (=> b!6930300 m!7637896))

(declare-fun m!7637910 () Bool)

(assert (=> b!6930300 m!7637910))

(assert (=> b!6930013 d!2165973))

(declare-fun b!6930308 () Bool)

(declare-fun e!4170151 () Bool)

(declare-fun e!4170146 () Bool)

(assert (=> b!6930308 (= e!4170151 e!4170146)))

(declare-fun c!1286278 () Bool)

(assert (=> b!6930308 (= c!1286278 (is-Star!16942 r2!6280))))

(declare-fun bm!629767 () Bool)

(declare-fun call!629772 () Bool)

(declare-fun call!629774 () Bool)

(assert (=> bm!629767 (= call!629772 call!629774)))

(declare-fun b!6930309 () Bool)

(declare-fun res!2826416 () Bool)

(declare-fun e!4170150 () Bool)

(assert (=> b!6930309 (=> (not res!2826416) (not e!4170150))))

(assert (=> b!6930309 (= res!2826416 call!629772)))

(declare-fun e!4170149 () Bool)

(assert (=> b!6930309 (= e!4170149 e!4170150)))

(declare-fun d!2165977 () Bool)

(declare-fun res!2826419 () Bool)

(assert (=> d!2165977 (=> res!2826419 e!4170151)))

(assert (=> d!2165977 (= res!2826419 (is-ElementMatch!16942 r2!6280))))

(assert (=> d!2165977 (= (validRegex!8648 r2!6280) e!4170151)))

(declare-fun b!6930310 () Bool)

(declare-fun call!629773 () Bool)

(assert (=> b!6930310 (= e!4170150 call!629773)))

(declare-fun bm!629768 () Bool)

(declare-fun c!1286279 () Bool)

(assert (=> bm!629768 (= call!629773 (validRegex!8648 (ite c!1286279 (regTwo!34397 r2!6280) (regOne!34396 r2!6280))))))

(declare-fun b!6930311 () Bool)

(declare-fun e!4170148 () Bool)

(assert (=> b!6930311 (= e!4170146 e!4170148)))

(declare-fun res!2826417 () Bool)

(assert (=> b!6930311 (= res!2826417 (not (nullable!6763 (reg!17271 r2!6280))))))

(assert (=> b!6930311 (=> (not res!2826417) (not e!4170148))))

(declare-fun b!6930312 () Bool)

(declare-fun e!4170147 () Bool)

(declare-fun e!4170145 () Bool)

(assert (=> b!6930312 (= e!4170147 e!4170145)))

(declare-fun res!2826415 () Bool)

(assert (=> b!6930312 (=> (not res!2826415) (not e!4170145))))

(assert (=> b!6930312 (= res!2826415 call!629773)))

(declare-fun b!6930313 () Bool)

(assert (=> b!6930313 (= e!4170145 call!629772)))

(declare-fun b!6930314 () Bool)

(assert (=> b!6930314 (= e!4170146 e!4170149)))

(assert (=> b!6930314 (= c!1286279 (is-Union!16942 r2!6280))))

(declare-fun b!6930315 () Bool)

(assert (=> b!6930315 (= e!4170148 call!629774)))

(declare-fun b!6930316 () Bool)

(declare-fun res!2826418 () Bool)

(assert (=> b!6930316 (=> res!2826418 e!4170147)))

(assert (=> b!6930316 (= res!2826418 (not (is-Concat!25787 r2!6280)))))

(assert (=> b!6930316 (= e!4170149 e!4170147)))

(declare-fun bm!629769 () Bool)

(assert (=> bm!629769 (= call!629774 (validRegex!8648 (ite c!1286278 (reg!17271 r2!6280) (ite c!1286279 (regOne!34397 r2!6280) (regTwo!34396 r2!6280)))))))

(assert (= (and d!2165977 (not res!2826419)) b!6930308))

(assert (= (and b!6930308 c!1286278) b!6930311))

(assert (= (and b!6930308 (not c!1286278)) b!6930314))

(assert (= (and b!6930311 res!2826417) b!6930315))

(assert (= (and b!6930314 c!1286279) b!6930309))

(assert (= (and b!6930314 (not c!1286279)) b!6930316))

(assert (= (and b!6930309 res!2826416) b!6930310))

(assert (= (and b!6930316 (not res!2826418)) b!6930312))

(assert (= (and b!6930312 res!2826415) b!6930313))

(assert (= (or b!6930309 b!6930313) bm!629767))

(assert (= (or b!6930310 b!6930312) bm!629768))

(assert (= (or b!6930315 bm!629767) bm!629769))

(declare-fun m!7637912 () Bool)

(assert (=> bm!629768 m!7637912))

(declare-fun m!7637914 () Bool)

(assert (=> b!6930311 m!7637914))

(declare-fun m!7637916 () Bool)

(assert (=> bm!629769 m!7637916))

(assert (=> b!6930017 d!2165977))

(declare-fun b!6930317 () Bool)

(declare-fun e!4170158 () Bool)

(declare-fun e!4170153 () Bool)

(assert (=> b!6930317 (= e!4170158 e!4170153)))

(declare-fun c!1286280 () Bool)

(assert (=> b!6930317 (= c!1286280 (is-Star!16942 r1!6342))))

(declare-fun bm!629770 () Bool)

(declare-fun call!629775 () Bool)

(declare-fun call!629777 () Bool)

(assert (=> bm!629770 (= call!629775 call!629777)))

(declare-fun b!6930318 () Bool)

(declare-fun res!2826421 () Bool)

(declare-fun e!4170157 () Bool)

(assert (=> b!6930318 (=> (not res!2826421) (not e!4170157))))

(assert (=> b!6930318 (= res!2826421 call!629775)))

(declare-fun e!4170156 () Bool)

(assert (=> b!6930318 (= e!4170156 e!4170157)))

(declare-fun d!2165979 () Bool)

(declare-fun res!2826424 () Bool)

(assert (=> d!2165979 (=> res!2826424 e!4170158)))

(assert (=> d!2165979 (= res!2826424 (is-ElementMatch!16942 r1!6342))))

(assert (=> d!2165979 (= (validRegex!8648 r1!6342) e!4170158)))

(declare-fun b!6930319 () Bool)

(declare-fun call!629776 () Bool)

(assert (=> b!6930319 (= e!4170157 call!629776)))

(declare-fun bm!629771 () Bool)

(declare-fun c!1286281 () Bool)

(assert (=> bm!629771 (= call!629776 (validRegex!8648 (ite c!1286281 (regTwo!34397 r1!6342) (regOne!34396 r1!6342))))))

(declare-fun b!6930320 () Bool)

(declare-fun e!4170155 () Bool)

(assert (=> b!6930320 (= e!4170153 e!4170155)))

(declare-fun res!2826422 () Bool)

(assert (=> b!6930320 (= res!2826422 (not (nullable!6763 (reg!17271 r1!6342))))))

(assert (=> b!6930320 (=> (not res!2826422) (not e!4170155))))

(declare-fun b!6930321 () Bool)

(declare-fun e!4170154 () Bool)

(declare-fun e!4170152 () Bool)

(assert (=> b!6930321 (= e!4170154 e!4170152)))

(declare-fun res!2826420 () Bool)

(assert (=> b!6930321 (=> (not res!2826420) (not e!4170152))))

(assert (=> b!6930321 (= res!2826420 call!629776)))

(declare-fun b!6930322 () Bool)

(assert (=> b!6930322 (= e!4170152 call!629775)))

(declare-fun b!6930323 () Bool)

(assert (=> b!6930323 (= e!4170153 e!4170156)))

(assert (=> b!6930323 (= c!1286281 (is-Union!16942 r1!6342))))

(declare-fun b!6930324 () Bool)

(assert (=> b!6930324 (= e!4170155 call!629777)))

(declare-fun b!6930325 () Bool)

(declare-fun res!2826423 () Bool)

(assert (=> b!6930325 (=> res!2826423 e!4170154)))

(assert (=> b!6930325 (= res!2826423 (not (is-Concat!25787 r1!6342)))))

(assert (=> b!6930325 (= e!4170156 e!4170154)))

(declare-fun bm!629772 () Bool)

(assert (=> bm!629772 (= call!629777 (validRegex!8648 (ite c!1286280 (reg!17271 r1!6342) (ite c!1286281 (regOne!34397 r1!6342) (regTwo!34396 r1!6342)))))))

(assert (= (and d!2165979 (not res!2826424)) b!6930317))

(assert (= (and b!6930317 c!1286280) b!6930320))

(assert (= (and b!6930317 (not c!1286280)) b!6930323))

(assert (= (and b!6930320 res!2826422) b!6930324))

(assert (= (and b!6930323 c!1286281) b!6930318))

(assert (= (and b!6930323 (not c!1286281)) b!6930325))

(assert (= (and b!6930318 res!2826421) b!6930319))

(assert (= (and b!6930325 (not res!2826423)) b!6930321))

(assert (= (and b!6930321 res!2826420) b!6930322))

(assert (= (or b!6930318 b!6930322) bm!629770))

(assert (= (or b!6930319 b!6930321) bm!629771))

(assert (= (or b!6930324 bm!629770) bm!629772))

(declare-fun m!7637918 () Bool)

(assert (=> bm!629771 m!7637918))

(declare-fun m!7637920 () Bool)

(assert (=> b!6930320 m!7637920))

(declare-fun m!7637922 () Bool)

(assert (=> bm!629772 m!7637922))

(assert (=> start!666040 d!2165979))

(declare-fun b!6930326 () Bool)

(declare-fun e!4170165 () Bool)

(declare-fun e!4170160 () Bool)

(assert (=> b!6930326 (= e!4170165 e!4170160)))

(declare-fun c!1286282 () Bool)

(assert (=> b!6930326 (= c!1286282 (is-Star!16942 lt!2472933))))

(declare-fun bm!629773 () Bool)

(declare-fun call!629778 () Bool)

(declare-fun call!629780 () Bool)

(assert (=> bm!629773 (= call!629778 call!629780)))

(declare-fun b!6930327 () Bool)

(declare-fun res!2826426 () Bool)

(declare-fun e!4170164 () Bool)

(assert (=> b!6930327 (=> (not res!2826426) (not e!4170164))))

(assert (=> b!6930327 (= res!2826426 call!629778)))

(declare-fun e!4170163 () Bool)

(assert (=> b!6930327 (= e!4170163 e!4170164)))

(declare-fun d!2165981 () Bool)

(declare-fun res!2826429 () Bool)

(assert (=> d!2165981 (=> res!2826429 e!4170165)))

(assert (=> d!2165981 (= res!2826429 (is-ElementMatch!16942 lt!2472933))))

(assert (=> d!2165981 (= (validRegex!8648 lt!2472933) e!4170165)))

(declare-fun b!6930328 () Bool)

(declare-fun call!629779 () Bool)

(assert (=> b!6930328 (= e!4170164 call!629779)))

(declare-fun bm!629774 () Bool)

(declare-fun c!1286283 () Bool)

(assert (=> bm!629774 (= call!629779 (validRegex!8648 (ite c!1286283 (regTwo!34397 lt!2472933) (regOne!34396 lt!2472933))))))

(declare-fun b!6930329 () Bool)

(declare-fun e!4170162 () Bool)

(assert (=> b!6930329 (= e!4170160 e!4170162)))

(declare-fun res!2826427 () Bool)

(assert (=> b!6930329 (= res!2826427 (not (nullable!6763 (reg!17271 lt!2472933))))))

(assert (=> b!6930329 (=> (not res!2826427) (not e!4170162))))

(declare-fun b!6930330 () Bool)

(declare-fun e!4170161 () Bool)

(declare-fun e!4170159 () Bool)

(assert (=> b!6930330 (= e!4170161 e!4170159)))

(declare-fun res!2826425 () Bool)

(assert (=> b!6930330 (=> (not res!2826425) (not e!4170159))))

(assert (=> b!6930330 (= res!2826425 call!629779)))

(declare-fun b!6930331 () Bool)

(assert (=> b!6930331 (= e!4170159 call!629778)))

(declare-fun b!6930332 () Bool)

(assert (=> b!6930332 (= e!4170160 e!4170163)))

(assert (=> b!6930332 (= c!1286283 (is-Union!16942 lt!2472933))))

(declare-fun b!6930333 () Bool)

(assert (=> b!6930333 (= e!4170162 call!629780)))

(declare-fun b!6930334 () Bool)

(declare-fun res!2826428 () Bool)

(assert (=> b!6930334 (=> res!2826428 e!4170161)))

(assert (=> b!6930334 (= res!2826428 (not (is-Concat!25787 lt!2472933)))))

(assert (=> b!6930334 (= e!4170163 e!4170161)))

(declare-fun bm!629775 () Bool)

(assert (=> bm!629775 (= call!629780 (validRegex!8648 (ite c!1286282 (reg!17271 lt!2472933) (ite c!1286283 (regOne!34397 lt!2472933) (regTwo!34396 lt!2472933)))))))

(assert (= (and d!2165981 (not res!2826429)) b!6930326))

(assert (= (and b!6930326 c!1286282) b!6930329))

(assert (= (and b!6930326 (not c!1286282)) b!6930332))

(assert (= (and b!6930329 res!2826427) b!6930333))

(assert (= (and b!6930332 c!1286283) b!6930327))

(assert (= (and b!6930332 (not c!1286283)) b!6930334))

(assert (= (and b!6930327 res!2826426) b!6930328))

(assert (= (and b!6930334 (not res!2826428)) b!6930330))

(assert (= (and b!6930330 res!2826425) b!6930331))

(assert (= (or b!6930327 b!6930331) bm!629773))

(assert (= (or b!6930328 b!6930330) bm!629774))

(assert (= (or b!6930333 bm!629773) bm!629775))

(declare-fun m!7637924 () Bool)

(assert (=> bm!629774 m!7637924))

(declare-fun m!7637926 () Bool)

(assert (=> b!6930329 m!7637926))

(declare-fun m!7637928 () Bool)

(assert (=> bm!629775 m!7637928))

(assert (=> b!6930010 d!2165981))

(declare-fun d!2165983 () Bool)

(declare-fun choose!51609 (Int) Bool)

(assert (=> d!2165983 (= (Exists!3942 lambda!394347) (choose!51609 lambda!394347))))

(declare-fun bs!1850354 () Bool)

(assert (= bs!1850354 d!2165983))

(declare-fun m!7637930 () Bool)

(assert (=> bs!1850354 m!7637930))

(assert (=> b!6930010 d!2165983))

(declare-fun bs!1850355 () Bool)

(declare-fun d!2165985 () Bool)

(assert (= bs!1850355 (and d!2165985 b!6930233)))

(declare-fun lambda!394361 () Int)

(assert (=> bs!1850355 (not (= lambda!394361 lambda!394355))))

(declare-fun bs!1850356 () Bool)

(assert (= bs!1850356 (and d!2165985 b!6930237)))

(assert (=> bs!1850356 (not (= lambda!394361 lambda!394356))))

(declare-fun bs!1850357 () Bool)

(assert (= bs!1850357 (and d!2165985 b!6930248)))

(assert (=> bs!1850357 (not (= lambda!394361 lambda!394358))))

(declare-fun bs!1850358 () Bool)

(assert (= bs!1850358 (and d!2165985 b!6930244)))

(assert (=> bs!1850358 (not (= lambda!394361 lambda!394357))))

(declare-fun bs!1850359 () Bool)

(assert (= bs!1850359 (and d!2165985 b!6930010)))

(assert (=> bs!1850359 (= lambda!394361 lambda!394347)))

(assert (=> d!2165985 true))

(assert (=> d!2165985 true))

(assert (=> d!2165985 true))

(assert (=> d!2165985 (= (isDefined!13412 (findConcatSeparation!3125 r1!6342 lt!2472933 Nil!66571 s!14361 s!14361)) (Exists!3942 lambda!394361))))

(declare-fun lt!2472988 () Unit!160608)

(declare-fun choose!51610 (Regex!16942 Regex!16942 List!66695) Unit!160608)

(assert (=> d!2165985 (= lt!2472988 (choose!51610 r1!6342 lt!2472933 s!14361))))

(assert (=> d!2165985 (validRegex!8648 r1!6342)))

(assert (=> d!2165985 (= (lemmaFindConcatSeparationEquivalentToExists!2883 r1!6342 lt!2472933 s!14361) lt!2472988)))

(declare-fun bs!1850360 () Bool)

(assert (= bs!1850360 d!2165985))

(declare-fun m!7637932 () Bool)

(assert (=> bs!1850360 m!7637932))

(declare-fun m!7637934 () Bool)

(assert (=> bs!1850360 m!7637934))

(assert (=> bs!1850360 m!7637780))

(assert (=> bs!1850360 m!7637782))

(assert (=> bs!1850360 m!7637780))

(assert (=> bs!1850360 m!7637776))

(assert (=> b!6930010 d!2165985))

(declare-fun b!6930371 () Bool)

(declare-fun e!4170184 () Bool)

(declare-fun tp!1910374 () Bool)

(assert (=> b!6930371 (= e!4170184 (and tp_is_empty!43109 tp!1910374))))

(assert (=> b!6930008 (= tp!1910319 e!4170184)))

(assert (= (and b!6930008 (is-Cons!66571 (t!380438 s!14361))) b!6930371))

(declare-fun b!6930383 () Bool)

(declare-fun e!4170187 () Bool)

(declare-fun tp!1910386 () Bool)

(declare-fun tp!1910389 () Bool)

(assert (=> b!6930383 (= e!4170187 (and tp!1910386 tp!1910389))))

(declare-fun b!6930382 () Bool)

(assert (=> b!6930382 (= e!4170187 tp_is_empty!43109)))

(declare-fun b!6930384 () Bool)

(declare-fun tp!1910387 () Bool)

(assert (=> b!6930384 (= e!4170187 tp!1910387)))

(declare-fun b!6930385 () Bool)

(declare-fun tp!1910385 () Bool)

(declare-fun tp!1910388 () Bool)

(assert (=> b!6930385 (= e!4170187 (and tp!1910385 tp!1910388))))

(assert (=> b!6930014 (= tp!1910320 e!4170187)))

(assert (= (and b!6930014 (is-ElementMatch!16942 (reg!17271 r2!6280))) b!6930382))

(assert (= (and b!6930014 (is-Concat!25787 (reg!17271 r2!6280))) b!6930383))

(assert (= (and b!6930014 (is-Star!16942 (reg!17271 r2!6280))) b!6930384))

(assert (= (and b!6930014 (is-Union!16942 (reg!17271 r2!6280))) b!6930385))

(declare-fun b!6930387 () Bool)

(declare-fun e!4170188 () Bool)

(declare-fun tp!1910391 () Bool)

(declare-fun tp!1910394 () Bool)

(assert (=> b!6930387 (= e!4170188 (and tp!1910391 tp!1910394))))

(declare-fun b!6930386 () Bool)

(assert (=> b!6930386 (= e!4170188 tp_is_empty!43109)))

(declare-fun b!6930388 () Bool)

(declare-fun tp!1910392 () Bool)

(assert (=> b!6930388 (= e!4170188 tp!1910392)))

(declare-fun b!6930389 () Bool)

(declare-fun tp!1910390 () Bool)

(declare-fun tp!1910393 () Bool)

(assert (=> b!6930389 (= e!4170188 (and tp!1910390 tp!1910393))))

(assert (=> b!6930007 (= tp!1910310 e!4170188)))

(assert (= (and b!6930007 (is-ElementMatch!16942 (reg!17271 r1!6342))) b!6930386))

(assert (= (and b!6930007 (is-Concat!25787 (reg!17271 r1!6342))) b!6930387))

(assert (= (and b!6930007 (is-Star!16942 (reg!17271 r1!6342))) b!6930388))

(assert (= (and b!6930007 (is-Union!16942 (reg!17271 r1!6342))) b!6930389))

(declare-fun b!6930391 () Bool)

(declare-fun e!4170189 () Bool)

(declare-fun tp!1910396 () Bool)

(declare-fun tp!1910399 () Bool)

(assert (=> b!6930391 (= e!4170189 (and tp!1910396 tp!1910399))))

(declare-fun b!6930390 () Bool)

(assert (=> b!6930390 (= e!4170189 tp_is_empty!43109)))

(declare-fun b!6930392 () Bool)

(declare-fun tp!1910397 () Bool)

(assert (=> b!6930392 (= e!4170189 tp!1910397)))

(declare-fun b!6930393 () Bool)

(declare-fun tp!1910395 () Bool)

(declare-fun tp!1910398 () Bool)

(assert (=> b!6930393 (= e!4170189 (and tp!1910395 tp!1910398))))

(assert (=> b!6930023 (= tp!1910316 e!4170189)))

(assert (= (and b!6930023 (is-ElementMatch!16942 (reg!17271 r3!135))) b!6930390))

(assert (= (and b!6930023 (is-Concat!25787 (reg!17271 r3!135))) b!6930391))

(assert (= (and b!6930023 (is-Star!16942 (reg!17271 r3!135))) b!6930392))

(assert (= (and b!6930023 (is-Union!16942 (reg!17271 r3!135))) b!6930393))

(declare-fun b!6930395 () Bool)

(declare-fun e!4170190 () Bool)

(declare-fun tp!1910401 () Bool)

(declare-fun tp!1910404 () Bool)

(assert (=> b!6930395 (= e!4170190 (and tp!1910401 tp!1910404))))

(declare-fun b!6930394 () Bool)

(assert (=> b!6930394 (= e!4170190 tp_is_empty!43109)))

(declare-fun b!6930396 () Bool)

(declare-fun tp!1910402 () Bool)

(assert (=> b!6930396 (= e!4170190 tp!1910402)))

(declare-fun b!6930397 () Bool)

(declare-fun tp!1910400 () Bool)

(declare-fun tp!1910403 () Bool)

(assert (=> b!6930397 (= e!4170190 (and tp!1910400 tp!1910403))))

(assert (=> b!6930018 (= tp!1910312 e!4170190)))

(assert (= (and b!6930018 (is-ElementMatch!16942 (regOne!34397 r1!6342))) b!6930394))

(assert (= (and b!6930018 (is-Concat!25787 (regOne!34397 r1!6342))) b!6930395))

(assert (= (and b!6930018 (is-Star!16942 (regOne!34397 r1!6342))) b!6930396))

(assert (= (and b!6930018 (is-Union!16942 (regOne!34397 r1!6342))) b!6930397))

(declare-fun b!6930399 () Bool)

(declare-fun e!4170191 () Bool)

(declare-fun tp!1910406 () Bool)

(declare-fun tp!1910409 () Bool)

(assert (=> b!6930399 (= e!4170191 (and tp!1910406 tp!1910409))))

(declare-fun b!6930398 () Bool)

(assert (=> b!6930398 (= e!4170191 tp_is_empty!43109)))

(declare-fun b!6930400 () Bool)

(declare-fun tp!1910407 () Bool)

(assert (=> b!6930400 (= e!4170191 tp!1910407)))

(declare-fun b!6930401 () Bool)

(declare-fun tp!1910405 () Bool)

(declare-fun tp!1910408 () Bool)

(assert (=> b!6930401 (= e!4170191 (and tp!1910405 tp!1910408))))

(assert (=> b!6930018 (= tp!1910323 e!4170191)))

(assert (= (and b!6930018 (is-ElementMatch!16942 (regTwo!34397 r1!6342))) b!6930398))

(assert (= (and b!6930018 (is-Concat!25787 (regTwo!34397 r1!6342))) b!6930399))

(assert (= (and b!6930018 (is-Star!16942 (regTwo!34397 r1!6342))) b!6930400))

(assert (= (and b!6930018 (is-Union!16942 (regTwo!34397 r1!6342))) b!6930401))

(declare-fun b!6930403 () Bool)

(declare-fun e!4170192 () Bool)

(declare-fun tp!1910411 () Bool)

(declare-fun tp!1910414 () Bool)

(assert (=> b!6930403 (= e!4170192 (and tp!1910411 tp!1910414))))

(declare-fun b!6930402 () Bool)

(assert (=> b!6930402 (= e!4170192 tp_is_empty!43109)))

(declare-fun b!6930404 () Bool)

(declare-fun tp!1910412 () Bool)

(assert (=> b!6930404 (= e!4170192 tp!1910412)))

(declare-fun b!6930405 () Bool)

(declare-fun tp!1910410 () Bool)

(declare-fun tp!1910413 () Bool)

(assert (=> b!6930405 (= e!4170192 (and tp!1910410 tp!1910413))))

(assert (=> b!6930016 (= tp!1910309 e!4170192)))

(assert (= (and b!6930016 (is-ElementMatch!16942 (regOne!34397 r3!135))) b!6930402))

(assert (= (and b!6930016 (is-Concat!25787 (regOne!34397 r3!135))) b!6930403))

(assert (= (and b!6930016 (is-Star!16942 (regOne!34397 r3!135))) b!6930404))

(assert (= (and b!6930016 (is-Union!16942 (regOne!34397 r3!135))) b!6930405))

(declare-fun b!6930407 () Bool)

(declare-fun e!4170193 () Bool)

(declare-fun tp!1910416 () Bool)

(declare-fun tp!1910419 () Bool)

(assert (=> b!6930407 (= e!4170193 (and tp!1910416 tp!1910419))))

(declare-fun b!6930406 () Bool)

(assert (=> b!6930406 (= e!4170193 tp_is_empty!43109)))

(declare-fun b!6930408 () Bool)

(declare-fun tp!1910417 () Bool)

(assert (=> b!6930408 (= e!4170193 tp!1910417)))

(declare-fun b!6930409 () Bool)

(declare-fun tp!1910415 () Bool)

(declare-fun tp!1910418 () Bool)

(assert (=> b!6930409 (= e!4170193 (and tp!1910415 tp!1910418))))

(assert (=> b!6930016 (= tp!1910321 e!4170193)))

(assert (= (and b!6930016 (is-ElementMatch!16942 (regTwo!34397 r3!135))) b!6930406))

(assert (= (and b!6930016 (is-Concat!25787 (regTwo!34397 r3!135))) b!6930407))

(assert (= (and b!6930016 (is-Star!16942 (regTwo!34397 r3!135))) b!6930408))

(assert (= (and b!6930016 (is-Union!16942 (regTwo!34397 r3!135))) b!6930409))

(declare-fun b!6930411 () Bool)

(declare-fun e!4170194 () Bool)

(declare-fun tp!1910421 () Bool)

(declare-fun tp!1910424 () Bool)

(assert (=> b!6930411 (= e!4170194 (and tp!1910421 tp!1910424))))

(declare-fun b!6930410 () Bool)

(assert (=> b!6930410 (= e!4170194 tp_is_empty!43109)))

(declare-fun b!6930412 () Bool)

(declare-fun tp!1910422 () Bool)

(assert (=> b!6930412 (= e!4170194 tp!1910422)))

(declare-fun b!6930413 () Bool)

(declare-fun tp!1910420 () Bool)

(declare-fun tp!1910423 () Bool)

(assert (=> b!6930413 (= e!4170194 (and tp!1910420 tp!1910423))))

(assert (=> b!6930011 (= tp!1910317 e!4170194)))

(assert (= (and b!6930011 (is-ElementMatch!16942 (regOne!34396 r3!135))) b!6930410))

(assert (= (and b!6930011 (is-Concat!25787 (regOne!34396 r3!135))) b!6930411))

(assert (= (and b!6930011 (is-Star!16942 (regOne!34396 r3!135))) b!6930412))

(assert (= (and b!6930011 (is-Union!16942 (regOne!34396 r3!135))) b!6930413))

(declare-fun b!6930415 () Bool)

(declare-fun e!4170195 () Bool)

(declare-fun tp!1910426 () Bool)

(declare-fun tp!1910429 () Bool)

(assert (=> b!6930415 (= e!4170195 (and tp!1910426 tp!1910429))))

(declare-fun b!6930414 () Bool)

(assert (=> b!6930414 (= e!4170195 tp_is_empty!43109)))

(declare-fun b!6930416 () Bool)

(declare-fun tp!1910427 () Bool)

(assert (=> b!6930416 (= e!4170195 tp!1910427)))

(declare-fun b!6930417 () Bool)

(declare-fun tp!1910425 () Bool)

(declare-fun tp!1910428 () Bool)

(assert (=> b!6930417 (= e!4170195 (and tp!1910425 tp!1910428))))

(assert (=> b!6930011 (= tp!1910314 e!4170195)))

(assert (= (and b!6930011 (is-ElementMatch!16942 (regTwo!34396 r3!135))) b!6930414))

(assert (= (and b!6930011 (is-Concat!25787 (regTwo!34396 r3!135))) b!6930415))

(assert (= (and b!6930011 (is-Star!16942 (regTwo!34396 r3!135))) b!6930416))

(assert (= (and b!6930011 (is-Union!16942 (regTwo!34396 r3!135))) b!6930417))

(declare-fun b!6930419 () Bool)

(declare-fun e!4170196 () Bool)

(declare-fun tp!1910431 () Bool)

(declare-fun tp!1910434 () Bool)

(assert (=> b!6930419 (= e!4170196 (and tp!1910431 tp!1910434))))

(declare-fun b!6930418 () Bool)

(assert (=> b!6930418 (= e!4170196 tp_is_empty!43109)))

(declare-fun b!6930420 () Bool)

(declare-fun tp!1910432 () Bool)

(assert (=> b!6930420 (= e!4170196 tp!1910432)))

(declare-fun b!6930421 () Bool)

(declare-fun tp!1910430 () Bool)

(declare-fun tp!1910433 () Bool)

(assert (=> b!6930421 (= e!4170196 (and tp!1910430 tp!1910433))))

(assert (=> b!6930020 (= tp!1910308 e!4170196)))

(assert (= (and b!6930020 (is-ElementMatch!16942 (regOne!34397 r2!6280))) b!6930418))

(assert (= (and b!6930020 (is-Concat!25787 (regOne!34397 r2!6280))) b!6930419))

(assert (= (and b!6930020 (is-Star!16942 (regOne!34397 r2!6280))) b!6930420))

(assert (= (and b!6930020 (is-Union!16942 (regOne!34397 r2!6280))) b!6930421))

(declare-fun b!6930423 () Bool)

(declare-fun e!4170197 () Bool)

(declare-fun tp!1910436 () Bool)

(declare-fun tp!1910439 () Bool)

(assert (=> b!6930423 (= e!4170197 (and tp!1910436 tp!1910439))))

(declare-fun b!6930422 () Bool)

(assert (=> b!6930422 (= e!4170197 tp_is_empty!43109)))

(declare-fun b!6930424 () Bool)

(declare-fun tp!1910437 () Bool)

(assert (=> b!6930424 (= e!4170197 tp!1910437)))

(declare-fun b!6930425 () Bool)

(declare-fun tp!1910435 () Bool)

(declare-fun tp!1910438 () Bool)

(assert (=> b!6930425 (= e!4170197 (and tp!1910435 tp!1910438))))

(assert (=> b!6930020 (= tp!1910318 e!4170197)))

(assert (= (and b!6930020 (is-ElementMatch!16942 (regTwo!34397 r2!6280))) b!6930422))

(assert (= (and b!6930020 (is-Concat!25787 (regTwo!34397 r2!6280))) b!6930423))

(assert (= (and b!6930020 (is-Star!16942 (regTwo!34397 r2!6280))) b!6930424))

(assert (= (and b!6930020 (is-Union!16942 (regTwo!34397 r2!6280))) b!6930425))

(declare-fun b!6930427 () Bool)

(declare-fun e!4170198 () Bool)

(declare-fun tp!1910441 () Bool)

(declare-fun tp!1910444 () Bool)

(assert (=> b!6930427 (= e!4170198 (and tp!1910441 tp!1910444))))

(declare-fun b!6930426 () Bool)

(assert (=> b!6930426 (= e!4170198 tp_is_empty!43109)))

(declare-fun b!6930428 () Bool)

(declare-fun tp!1910442 () Bool)

(assert (=> b!6930428 (= e!4170198 tp!1910442)))

(declare-fun b!6930429 () Bool)

(declare-fun tp!1910440 () Bool)

(declare-fun tp!1910443 () Bool)

(assert (=> b!6930429 (= e!4170198 (and tp!1910440 tp!1910443))))

(assert (=> b!6930015 (= tp!1910315 e!4170198)))

(assert (= (and b!6930015 (is-ElementMatch!16942 (regOne!34396 r1!6342))) b!6930426))

(assert (= (and b!6930015 (is-Concat!25787 (regOne!34396 r1!6342))) b!6930427))

(assert (= (and b!6930015 (is-Star!16942 (regOne!34396 r1!6342))) b!6930428))

(assert (= (and b!6930015 (is-Union!16942 (regOne!34396 r1!6342))) b!6930429))

(declare-fun b!6930431 () Bool)

(declare-fun e!4170199 () Bool)

(declare-fun tp!1910446 () Bool)

(declare-fun tp!1910449 () Bool)

(assert (=> b!6930431 (= e!4170199 (and tp!1910446 tp!1910449))))

(declare-fun b!6930430 () Bool)

(assert (=> b!6930430 (= e!4170199 tp_is_empty!43109)))

(declare-fun b!6930432 () Bool)

(declare-fun tp!1910447 () Bool)

(assert (=> b!6930432 (= e!4170199 tp!1910447)))

(declare-fun b!6930433 () Bool)

(declare-fun tp!1910445 () Bool)

(declare-fun tp!1910448 () Bool)

(assert (=> b!6930433 (= e!4170199 (and tp!1910445 tp!1910448))))

(assert (=> b!6930015 (= tp!1910311 e!4170199)))

(assert (= (and b!6930015 (is-ElementMatch!16942 (regTwo!34396 r1!6342))) b!6930430))

(assert (= (and b!6930015 (is-Concat!25787 (regTwo!34396 r1!6342))) b!6930431))

(assert (= (and b!6930015 (is-Star!16942 (regTwo!34396 r1!6342))) b!6930432))

(assert (= (and b!6930015 (is-Union!16942 (regTwo!34396 r1!6342))) b!6930433))

(declare-fun b!6930435 () Bool)

(declare-fun e!4170200 () Bool)

(declare-fun tp!1910451 () Bool)

(declare-fun tp!1910454 () Bool)

(assert (=> b!6930435 (= e!4170200 (and tp!1910451 tp!1910454))))

(declare-fun b!6930434 () Bool)

(assert (=> b!6930434 (= e!4170200 tp_is_empty!43109)))

(declare-fun b!6930436 () Bool)

(declare-fun tp!1910452 () Bool)

(assert (=> b!6930436 (= e!4170200 tp!1910452)))

(declare-fun b!6930437 () Bool)

(declare-fun tp!1910450 () Bool)

(declare-fun tp!1910453 () Bool)

(assert (=> b!6930437 (= e!4170200 (and tp!1910450 tp!1910453))))

(assert (=> b!6930021 (= tp!1910313 e!4170200)))

(assert (= (and b!6930021 (is-ElementMatch!16942 (regOne!34396 r2!6280))) b!6930434))

(assert (= (and b!6930021 (is-Concat!25787 (regOne!34396 r2!6280))) b!6930435))

(assert (= (and b!6930021 (is-Star!16942 (regOne!34396 r2!6280))) b!6930436))

(assert (= (and b!6930021 (is-Union!16942 (regOne!34396 r2!6280))) b!6930437))

(declare-fun b!6930439 () Bool)

(declare-fun e!4170201 () Bool)

(declare-fun tp!1910456 () Bool)

(declare-fun tp!1910459 () Bool)

(assert (=> b!6930439 (= e!4170201 (and tp!1910456 tp!1910459))))

(declare-fun b!6930438 () Bool)

(assert (=> b!6930438 (= e!4170201 tp_is_empty!43109)))

(declare-fun b!6930440 () Bool)

(declare-fun tp!1910457 () Bool)

(assert (=> b!6930440 (= e!4170201 tp!1910457)))

(declare-fun b!6930441 () Bool)

(declare-fun tp!1910455 () Bool)

(declare-fun tp!1910458 () Bool)

(assert (=> b!6930441 (= e!4170201 (and tp!1910455 tp!1910458))))

(assert (=> b!6930021 (= tp!1910322 e!4170201)))

(assert (= (and b!6930021 (is-ElementMatch!16942 (regTwo!34396 r2!6280))) b!6930438))

(assert (= (and b!6930021 (is-Concat!25787 (regTwo!34396 r2!6280))) b!6930439))

(assert (= (and b!6930021 (is-Star!16942 (regTwo!34396 r2!6280))) b!6930440))

(assert (= (and b!6930021 (is-Union!16942 (regTwo!34396 r2!6280))) b!6930441))

(push 1)

(assert (not b!6930152))

(assert (not bm!629769))

(assert (not b!6930383))

(assert (not b!6930302))

(assert (not b!6930156))

(assert (not b!6930245))

(assert (not b!6930412))

(assert (not b!6930170))

(assert (not b!6930371))

(assert (not b!6930234))

(assert (not b!6930395))

(assert (not d!2165961))

(assert (not b!6930428))

(assert (not b!6930409))

(assert (not b!6930169))

(assert (not b!6930435))

(assert (not b!6930413))

(assert (not b!6930162))

(assert (not b!6930303))

(assert (not b!6930420))

(assert (not b!6930437))

(assert (not b!6930405))

(assert (not b!6930385))

(assert (not b!6930407))

(assert (not b!6930304))

(assert (not bm!629755))

(assert (not b!6930401))

(assert (not b!6930155))

(assert (not b!6930393))

(assert (not bm!629771))

(assert (not b!6930160))

(assert (not b!6930153))

(assert (not bm!629749))

(assert (not b!6930441))

(assert (not d!2165971))

(assert (not b!6930388))

(assert tp_is_empty!43109)

(assert (not bm!629772))

(assert (not b!6930427))

(assert (not b!6930146))

(assert (not b!6930329))

(assert (not bm!629775))

(assert (not b!6930415))

(assert (not b!6930408))

(assert (not bm!629768))

(assert (not b!6930424))

(assert (not bm!629748))

(assert (not b!6930396))

(assert (not b!6930387))

(assert (not b!6930403))

(assert (not b!6930397))

(assert (not b!6930419))

(assert (not bm!629754))

(assert (not b!6930432))

(assert (not b!6930389))

(assert (not bm!629757))

(assert (not b!6930431))

(assert (not b!6930429))

(assert (not bm!629756))

(assert (not b!6930232))

(assert (not b!6930400))

(assert (not b!6930404))

(assert (not b!6930423))

(assert (not b!6930411))

(assert (not b!6930305))

(assert (not d!2165973))

(assert (not b!6930392))

(assert (not b!6930384))

(assert (not b!6930439))

(assert (not b!6930433))

(assert (not d!2165967))

(assert (not b!6930391))

(assert (not bm!629774))

(assert (not b!6930307))

(assert (not b!6930111))

(assert (not b!6930148))

(assert (not b!6930436))

(assert (not b!6930166))

(assert (not b!6930300))

(assert (not b!6930243))

(assert (not d!2165983))

(assert (not b!6930425))

(assert (not b!6930440))

(assert (not d!2165957))

(assert (not b!6930416))

(assert (not b!6930399))

(assert (not bm!629744))

(assert (not b!6930421))

(assert (not b!6930311))

(assert (not d!2165985))

(assert (not b!6930320))

(assert (not b!6930417))

(assert (not b!6930167))

(assert (not d!2165959))

(assert (not bm!629745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

