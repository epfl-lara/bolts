; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285382 () Bool)

(assert start!285382)

(declare-fun b!2936872 () Bool)

(declare-fun e!1851266 () Bool)

(declare-fun tp_is_empty!15711 () Bool)

(assert (=> b!2936872 (= e!1851266 tp_is_empty!15711)))

(declare-fun b!2936874 () Bool)

(declare-fun tp!940325 () Bool)

(declare-fun tp!940322 () Bool)

(assert (=> b!2936874 (= e!1851266 (and tp!940325 tp!940322))))

(declare-fun b!2936875 () Bool)

(declare-fun e!1851268 () Bool)

(declare-fun tp!940327 () Bool)

(assert (=> b!2936875 (= e!1851268 (and tp_is_empty!15711 tp!940327))))

(declare-fun b!2936876 () Bool)

(declare-fun tp!940326 () Bool)

(assert (=> b!2936876 (= e!1851266 tp!940326)))

(declare-fun b!2936877 () Bool)

(declare-fun e!1851269 () Bool)

(declare-datatypes ((C!18334 0))(
  ( (C!18335 (val!11203 Int)) )
))
(declare-datatypes ((Regex!9074 0))(
  ( (ElementMatch!9074 (c!479928 C!18334)) (Concat!14395 (regOne!18660 Regex!9074) (regTwo!18660 Regex!9074)) (EmptyExpr!9074) (Star!9074 (reg!9403 Regex!9074)) (EmptyLang!9074) (Union!9074 (regOne!18661 Regex!9074) (regTwo!18661 Regex!9074)) )
))
(declare-fun r!17423 () Regex!9074)

(declare-fun validRegex!3807 (Regex!9074) Bool)

(assert (=> b!2936877 (= e!1851269 (validRegex!3807 (regOne!18660 r!17423)))))

(declare-fun b!2936878 () Bool)

(declare-fun res!1212399 () Bool)

(assert (=> b!2936878 (=> res!1212399 e!1851269)))

(declare-datatypes ((List!34939 0))(
  ( (Nil!34815) (Cons!34815 (h!40235 C!18334) (t!234004 List!34939)) )
))
(declare-fun s!11993 () List!34939)

(declare-fun isEmpty!19076 (List!34939) Bool)

(assert (=> b!2936878 (= res!1212399 (isEmpty!19076 s!11993))))

(declare-fun b!2936879 () Bool)

(declare-fun e!1851267 () Bool)

(assert (=> b!2936879 (= e!1851267 (not e!1851269))))

(declare-fun res!1212397 () Bool)

(assert (=> b!2936879 (=> res!1212397 e!1851269)))

(declare-fun lt!1029352 () Bool)

(assert (=> b!2936879 (= res!1212397 (or lt!1029352 (not (is-Concat!14395 r!17423))))))

(declare-fun matchRSpec!1211 (Regex!9074 List!34939) Bool)

(assert (=> b!2936879 (= lt!1029352 (matchRSpec!1211 r!17423 s!11993))))

(declare-fun matchR!3956 (Regex!9074 List!34939) Bool)

(assert (=> b!2936879 (= lt!1029352 (matchR!3956 r!17423 s!11993))))

(declare-datatypes ((Unit!48527 0))(
  ( (Unit!48528) )
))
(declare-fun lt!1029353 () Unit!48527)

(declare-fun mainMatchTheorem!1211 (Regex!9074 List!34939) Unit!48527)

(assert (=> b!2936879 (= lt!1029353 (mainMatchTheorem!1211 r!17423 s!11993))))

(declare-fun res!1212398 () Bool)

(assert (=> start!285382 (=> (not res!1212398) (not e!1851267))))

(assert (=> start!285382 (= res!1212398 (validRegex!3807 r!17423))))

(assert (=> start!285382 e!1851267))

(assert (=> start!285382 e!1851266))

(assert (=> start!285382 e!1851268))

(declare-fun b!2936873 () Bool)

(declare-fun tp!940323 () Bool)

(declare-fun tp!940324 () Bool)

(assert (=> b!2936873 (= e!1851266 (and tp!940323 tp!940324))))

(assert (= (and start!285382 res!1212398) b!2936879))

(assert (= (and b!2936879 (not res!1212397)) b!2936878))

(assert (= (and b!2936878 (not res!1212399)) b!2936877))

(assert (= (and start!285382 (is-ElementMatch!9074 r!17423)) b!2936872))

(assert (= (and start!285382 (is-Concat!14395 r!17423)) b!2936874))

(assert (= (and start!285382 (is-Star!9074 r!17423)) b!2936876))

(assert (= (and start!285382 (is-Union!9074 r!17423)) b!2936873))

(assert (= (and start!285382 (is-Cons!34815 s!11993)) b!2936875))

(declare-fun m!3323949 () Bool)

(assert (=> b!2936877 m!3323949))

(declare-fun m!3323951 () Bool)

(assert (=> b!2936878 m!3323951))

(declare-fun m!3323953 () Bool)

(assert (=> b!2936879 m!3323953))

(declare-fun m!3323955 () Bool)

(assert (=> b!2936879 m!3323955))

(declare-fun m!3323957 () Bool)

(assert (=> b!2936879 m!3323957))

(declare-fun m!3323959 () Bool)

(assert (=> start!285382 m!3323959))

(push 1)

(assert (not b!2936874))

(assert (not b!2936876))

(assert (not b!2936875))

(assert (not b!2936878))

(assert (not b!2936877))

(assert tp_is_empty!15711)

(assert (not start!285382))

(assert (not b!2936879))

(assert (not b!2936873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!839895 () Bool)

(declare-fun res!1212423 () Bool)

(declare-fun e!1851304 () Bool)

(assert (=> d!839895 (=> res!1212423 e!1851304)))

(assert (=> d!839895 (= res!1212423 (is-ElementMatch!9074 (regOne!18660 r!17423)))))

(assert (=> d!839895 (= (validRegex!3807 (regOne!18660 r!17423)) e!1851304)))

(declare-fun b!2936930 () Bool)

(declare-fun e!1851305 () Bool)

(declare-fun call!193073 () Bool)

(assert (=> b!2936930 (= e!1851305 call!193073)))

(declare-fun b!2936931 () Bool)

(declare-fun e!1851307 () Bool)

(assert (=> b!2936931 (= e!1851304 e!1851307)))

(declare-fun c!479936 () Bool)

(assert (=> b!2936931 (= c!479936 (is-Star!9074 (regOne!18660 r!17423)))))

(declare-fun b!2936932 () Bool)

(declare-fun res!1212426 () Bool)

(declare-fun e!1851303 () Bool)

(assert (=> b!2936932 (=> res!1212426 e!1851303)))

(assert (=> b!2936932 (= res!1212426 (not (is-Concat!14395 (regOne!18660 r!17423))))))

(declare-fun e!1851308 () Bool)

(assert (=> b!2936932 (= e!1851308 e!1851303)))

(declare-fun b!2936933 () Bool)

(declare-fun res!1212427 () Bool)

(declare-fun e!1851306 () Bool)

(assert (=> b!2936933 (=> (not res!1212427) (not e!1851306))))

(assert (=> b!2936933 (= res!1212427 call!193073)))

(assert (=> b!2936933 (= e!1851308 e!1851306)))

(declare-fun b!2936934 () Bool)

(assert (=> b!2936934 (= e!1851303 e!1851305)))

(declare-fun res!1212424 () Bool)

(assert (=> b!2936934 (=> (not res!1212424) (not e!1851305))))

(declare-fun call!193075 () Bool)

(assert (=> b!2936934 (= res!1212424 call!193075)))

(declare-fun b!2936935 () Bool)

(assert (=> b!2936935 (= e!1851307 e!1851308)))

(declare-fun c!479937 () Bool)

(assert (=> b!2936935 (= c!479937 (is-Union!9074 (regOne!18660 r!17423)))))

(declare-fun bm!193068 () Bool)

(assert (=> bm!193068 (= call!193073 (validRegex!3807 (ite c!479937 (regOne!18661 (regOne!18660 r!17423)) (regTwo!18660 (regOne!18660 r!17423)))))))

(declare-fun call!193074 () Bool)

(declare-fun bm!193069 () Bool)

(assert (=> bm!193069 (= call!193074 (validRegex!3807 (ite c!479936 (reg!9403 (regOne!18660 r!17423)) (ite c!479937 (regTwo!18661 (regOne!18660 r!17423)) (regOne!18660 (regOne!18660 r!17423))))))))

(declare-fun b!2936936 () Bool)

(assert (=> b!2936936 (= e!1851306 call!193075)))

(declare-fun b!2936937 () Bool)

(declare-fun e!1851302 () Bool)

(assert (=> b!2936937 (= e!1851307 e!1851302)))

(declare-fun res!1212425 () Bool)

(declare-fun nullable!2862 (Regex!9074) Bool)

(assert (=> b!2936937 (= res!1212425 (not (nullable!2862 (reg!9403 (regOne!18660 r!17423)))))))

(assert (=> b!2936937 (=> (not res!1212425) (not e!1851302))))

(declare-fun bm!193070 () Bool)

(assert (=> bm!193070 (= call!193075 call!193074)))

(declare-fun b!2936938 () Bool)

(assert (=> b!2936938 (= e!1851302 call!193074)))

(assert (= (and d!839895 (not res!1212423)) b!2936931))

(assert (= (and b!2936931 c!479936) b!2936937))

(assert (= (and b!2936931 (not c!479936)) b!2936935))

(assert (= (and b!2936937 res!1212425) b!2936938))

(assert (= (and b!2936935 c!479937) b!2936933))

(assert (= (and b!2936935 (not c!479937)) b!2936932))

(assert (= (and b!2936933 res!1212427) b!2936936))

(assert (= (and b!2936932 (not res!1212426)) b!2936934))

(assert (= (and b!2936934 res!1212424) b!2936930))

(assert (= (or b!2936933 b!2936930) bm!193068))

(assert (= (or b!2936936 b!2936934) bm!193070))

(assert (= (or b!2936938 bm!193070) bm!193069))

(declare-fun m!3323973 () Bool)

(assert (=> bm!193068 m!3323973))

(declare-fun m!3323975 () Bool)

(assert (=> bm!193069 m!3323975))

(declare-fun m!3323977 () Bool)

(assert (=> b!2936937 m!3323977))

(assert (=> b!2936877 d!839895))

(declare-fun d!839899 () Bool)

(declare-fun res!1212434 () Bool)

(declare-fun e!1851319 () Bool)

(assert (=> d!839899 (=> res!1212434 e!1851319)))

(assert (=> d!839899 (= res!1212434 (is-ElementMatch!9074 r!17423))))

(assert (=> d!839899 (= (validRegex!3807 r!17423) e!1851319)))

(declare-fun b!2936949 () Bool)

(declare-fun e!1851320 () Bool)

(declare-fun call!193076 () Bool)

(assert (=> b!2936949 (= e!1851320 call!193076)))

(declare-fun b!2936950 () Bool)

(declare-fun e!1851322 () Bool)

(assert (=> b!2936950 (= e!1851319 e!1851322)))

(declare-fun c!479940 () Bool)

(assert (=> b!2936950 (= c!479940 (is-Star!9074 r!17423))))

(declare-fun b!2936951 () Bool)

(declare-fun res!1212437 () Bool)

(declare-fun e!1851318 () Bool)

(assert (=> b!2936951 (=> res!1212437 e!1851318)))

(assert (=> b!2936951 (= res!1212437 (not (is-Concat!14395 r!17423)))))

(declare-fun e!1851323 () Bool)

(assert (=> b!2936951 (= e!1851323 e!1851318)))

(declare-fun b!2936952 () Bool)

(declare-fun res!1212438 () Bool)

(declare-fun e!1851321 () Bool)

(assert (=> b!2936952 (=> (not res!1212438) (not e!1851321))))

(assert (=> b!2936952 (= res!1212438 call!193076)))

(assert (=> b!2936952 (= e!1851323 e!1851321)))

(declare-fun b!2936953 () Bool)

(assert (=> b!2936953 (= e!1851318 e!1851320)))

(declare-fun res!1212435 () Bool)

(assert (=> b!2936953 (=> (not res!1212435) (not e!1851320))))

(declare-fun call!193078 () Bool)

(assert (=> b!2936953 (= res!1212435 call!193078)))

(declare-fun b!2936954 () Bool)

(assert (=> b!2936954 (= e!1851322 e!1851323)))

(declare-fun c!479941 () Bool)

(assert (=> b!2936954 (= c!479941 (is-Union!9074 r!17423))))

(declare-fun bm!193071 () Bool)

(assert (=> bm!193071 (= call!193076 (validRegex!3807 (ite c!479941 (regOne!18661 r!17423) (regTwo!18660 r!17423))))))

(declare-fun bm!193072 () Bool)

(declare-fun call!193077 () Bool)

(assert (=> bm!193072 (= call!193077 (validRegex!3807 (ite c!479940 (reg!9403 r!17423) (ite c!479941 (regTwo!18661 r!17423) (regOne!18660 r!17423)))))))

(declare-fun b!2936955 () Bool)

(assert (=> b!2936955 (= e!1851321 call!193078)))

(declare-fun b!2936956 () Bool)

(declare-fun e!1851317 () Bool)

(assert (=> b!2936956 (= e!1851322 e!1851317)))

(declare-fun res!1212436 () Bool)

(assert (=> b!2936956 (= res!1212436 (not (nullable!2862 (reg!9403 r!17423))))))

(assert (=> b!2936956 (=> (not res!1212436) (not e!1851317))))

(declare-fun bm!193073 () Bool)

(assert (=> bm!193073 (= call!193078 call!193077)))

(declare-fun b!2936957 () Bool)

(assert (=> b!2936957 (= e!1851317 call!193077)))

(assert (= (and d!839899 (not res!1212434)) b!2936950))

(assert (= (and b!2936950 c!479940) b!2936956))

(assert (= (and b!2936950 (not c!479940)) b!2936954))

(assert (= (and b!2936956 res!1212436) b!2936957))

(assert (= (and b!2936954 c!479941) b!2936952))

(assert (= (and b!2936954 (not c!479941)) b!2936951))

(assert (= (and b!2936952 res!1212438) b!2936955))

(assert (= (and b!2936951 (not res!1212437)) b!2936953))

(assert (= (and b!2936953 res!1212435) b!2936949))

(assert (= (or b!2936952 b!2936949) bm!193071))

(assert (= (or b!2936955 b!2936953) bm!193073))

(assert (= (or b!2936957 bm!193073) bm!193072))

(declare-fun m!3323979 () Bool)

(assert (=> bm!193071 m!3323979))

(declare-fun m!3323981 () Bool)

(assert (=> bm!193072 m!3323981))

(declare-fun m!3323983 () Bool)

(assert (=> b!2936956 m!3323983))

(assert (=> start!285382 d!839899))

(declare-fun d!839901 () Bool)

(assert (=> d!839901 (= (isEmpty!19076 s!11993) (is-Nil!34815 s!11993))))

(assert (=> b!2936878 d!839901))

(declare-fun b!2937023 () Bool)

(assert (=> b!2937023 true))

(assert (=> b!2937023 true))

(declare-fun bs!525449 () Bool)

(declare-fun b!2937029 () Bool)

(assert (= bs!525449 (and b!2937029 b!2937023)))

(declare-fun lambda!109434 () Int)

(declare-fun lambda!109433 () Int)

(assert (=> bs!525449 (not (= lambda!109434 lambda!109433))))

(assert (=> b!2937029 true))

(assert (=> b!2937029 true))

(declare-fun b!2937021 () Bool)

(declare-fun e!1851363 () Bool)

(declare-fun e!1851369 () Bool)

(assert (=> b!2937021 (= e!1851363 e!1851369)))

(declare-fun c!479963 () Bool)

(assert (=> b!2937021 (= c!479963 (is-Star!9074 r!17423))))

(declare-fun b!2937022 () Bool)

(declare-fun e!1851365 () Bool)

(declare-fun e!1851366 () Bool)

(assert (=> b!2937022 (= e!1851365 e!1851366)))

(declare-fun res!1212466 () Bool)

(assert (=> b!2937022 (= res!1212466 (not (is-EmptyLang!9074 r!17423)))))

(assert (=> b!2937022 (=> (not res!1212466) (not e!1851366))))

(declare-fun bm!193087 () Bool)

(declare-fun call!193093 () Bool)

(declare-fun Exists!1436 (Int) Bool)

(assert (=> bm!193087 (= call!193093 (Exists!1436 (ite c!479963 lambda!109433 lambda!109434)))))

(declare-fun bm!193088 () Bool)

(declare-fun call!193092 () Bool)

(assert (=> bm!193088 (= call!193092 (isEmpty!19076 s!11993))))

(declare-fun b!2937024 () Bool)

(declare-fun c!479960 () Bool)

(assert (=> b!2937024 (= c!479960 (is-ElementMatch!9074 r!17423))))

(declare-fun e!1851368 () Bool)

(assert (=> b!2937024 (= e!1851366 e!1851368)))

(declare-fun b!2937025 () Bool)

(assert (=> b!2937025 (= e!1851365 call!193092)))

(declare-fun b!2937026 () Bool)

(declare-fun e!1851367 () Bool)

(assert (=> b!2937026 (= e!1851367 (matchRSpec!1211 (regTwo!18661 r!17423) s!11993))))

(declare-fun b!2937027 () Bool)

(assert (=> b!2937027 (= e!1851368 (= s!11993 (Cons!34815 (c!479928 r!17423) Nil!34815)))))

(declare-fun e!1851364 () Bool)

(assert (=> b!2937023 (= e!1851364 call!193093)))

(declare-fun d!839903 () Bool)

(declare-fun c!479961 () Bool)

(assert (=> d!839903 (= c!479961 (is-EmptyExpr!9074 r!17423))))

(assert (=> d!839903 (= (matchRSpec!1211 r!17423 s!11993) e!1851365)))

(declare-fun b!2937028 () Bool)

(declare-fun res!1212467 () Bool)

(assert (=> b!2937028 (=> res!1212467 e!1851364)))

(assert (=> b!2937028 (= res!1212467 call!193092)))

(assert (=> b!2937028 (= e!1851369 e!1851364)))

(assert (=> b!2937029 (= e!1851369 call!193093)))

(declare-fun b!2937030 () Bool)

(declare-fun c!479962 () Bool)

(assert (=> b!2937030 (= c!479962 (is-Union!9074 r!17423))))

(assert (=> b!2937030 (= e!1851368 e!1851363)))

(declare-fun b!2937031 () Bool)

(assert (=> b!2937031 (= e!1851363 e!1851367)))

(declare-fun res!1212468 () Bool)

(assert (=> b!2937031 (= res!1212468 (matchRSpec!1211 (regOne!18661 r!17423) s!11993))))

(assert (=> b!2937031 (=> res!1212468 e!1851367)))

(assert (= (and d!839903 c!479961) b!2937025))

(assert (= (and d!839903 (not c!479961)) b!2937022))

(assert (= (and b!2937022 res!1212466) b!2937024))

(assert (= (and b!2937024 c!479960) b!2937027))

(assert (= (and b!2937024 (not c!479960)) b!2937030))

(assert (= (and b!2937030 c!479962) b!2937031))

(assert (= (and b!2937030 (not c!479962)) b!2937021))

(assert (= (and b!2937031 (not res!1212468)) b!2937026))

(assert (= (and b!2937021 c!479963) b!2937028))

(assert (= (and b!2937021 (not c!479963)) b!2937029))

(assert (= (and b!2937028 (not res!1212467)) b!2937023))

(assert (= (or b!2937023 b!2937029) bm!193087))

(assert (= (or b!2937025 b!2937028) bm!193088))

(declare-fun m!3323991 () Bool)

(assert (=> bm!193087 m!3323991))

(assert (=> bm!193088 m!3323951))

(declare-fun m!3323993 () Bool)

(assert (=> b!2937026 m!3323993))

(declare-fun m!3323995 () Bool)

(assert (=> b!2937031 m!3323995))

(assert (=> b!2936879 d!839903))

(declare-fun bm!193091 () Bool)

(declare-fun call!193096 () Bool)

(assert (=> bm!193091 (= call!193096 (isEmpty!19076 s!11993))))

(declare-fun b!2937064 () Bool)

(declare-fun res!1212486 () Bool)

(declare-fun e!1851384 () Bool)

(assert (=> b!2937064 (=> res!1212486 e!1851384)))

(assert (=> b!2937064 (= res!1212486 (not (is-ElementMatch!9074 r!17423)))))

(declare-fun e!1851389 () Bool)

(assert (=> b!2937064 (= e!1851389 e!1851384)))

(declare-fun b!2937066 () Bool)

(declare-fun e!1851390 () Bool)

(assert (=> b!2937066 (= e!1851390 (nullable!2862 r!17423))))

(declare-fun b!2937067 () Bool)

(declare-fun e!1851386 () Bool)

(assert (=> b!2937067 (= e!1851386 e!1851389)))

(declare-fun c!479970 () Bool)

(assert (=> b!2937067 (= c!479970 (is-EmptyLang!9074 r!17423))))

(declare-fun b!2937068 () Bool)

(declare-fun lt!1029362 () Bool)

(assert (=> b!2937068 (= e!1851389 (not lt!1029362))))

(declare-fun b!2937069 () Bool)

(declare-fun e!1851388 () Bool)

(declare-fun head!6532 (List!34939) C!18334)

(assert (=> b!2937069 (= e!1851388 (not (= (head!6532 s!11993) (c!479928 r!17423))))))

(declare-fun b!2937070 () Bool)

(declare-fun res!1212488 () Bool)

(assert (=> b!2937070 (=> res!1212488 e!1851384)))

(declare-fun e!1851385 () Bool)

(assert (=> b!2937070 (= res!1212488 e!1851385)))

(declare-fun res!1212490 () Bool)

(assert (=> b!2937070 (=> (not res!1212490) (not e!1851385))))

(assert (=> b!2937070 (= res!1212490 lt!1029362)))

(declare-fun b!2937071 () Bool)

(declare-fun e!1851387 () Bool)

(assert (=> b!2937071 (= e!1851387 e!1851388)))

(declare-fun res!1212487 () Bool)

(assert (=> b!2937071 (=> res!1212487 e!1851388)))

(assert (=> b!2937071 (= res!1212487 call!193096)))

(declare-fun b!2937072 () Bool)

(assert (=> b!2937072 (= e!1851385 (= (head!6532 s!11993) (c!479928 r!17423)))))

(declare-fun b!2937073 () Bool)

(assert (=> b!2937073 (= e!1851384 e!1851387)))

(declare-fun res!1212491 () Bool)

(assert (=> b!2937073 (=> (not res!1212491) (not e!1851387))))

(assert (=> b!2937073 (= res!1212491 (not lt!1029362))))

(declare-fun b!2937074 () Bool)

(declare-fun derivativeStep!2473 (Regex!9074 C!18334) Regex!9074)

(declare-fun tail!4758 (List!34939) List!34939)

(assert (=> b!2937074 (= e!1851390 (matchR!3956 (derivativeStep!2473 r!17423 (head!6532 s!11993)) (tail!4758 s!11993)))))

(declare-fun b!2937075 () Bool)

(declare-fun res!1212489 () Bool)

(assert (=> b!2937075 (=> (not res!1212489) (not e!1851385))))

(assert (=> b!2937075 (= res!1212489 (isEmpty!19076 (tail!4758 s!11993)))))

(declare-fun b!2937076 () Bool)

(declare-fun res!1212485 () Bool)

(assert (=> b!2937076 (=> (not res!1212485) (not e!1851385))))

(assert (=> b!2937076 (= res!1212485 (not call!193096))))

(declare-fun b!2937077 () Bool)

(declare-fun res!1212492 () Bool)

(assert (=> b!2937077 (=> res!1212492 e!1851388)))

(assert (=> b!2937077 (= res!1212492 (not (isEmpty!19076 (tail!4758 s!11993))))))

(declare-fun b!2937065 () Bool)

(assert (=> b!2937065 (= e!1851386 (= lt!1029362 call!193096))))

(declare-fun d!839907 () Bool)

(assert (=> d!839907 e!1851386))

(declare-fun c!479972 () Bool)

(assert (=> d!839907 (= c!479972 (is-EmptyExpr!9074 r!17423))))

(assert (=> d!839907 (= lt!1029362 e!1851390)))

(declare-fun c!479971 () Bool)

(assert (=> d!839907 (= c!479971 (isEmpty!19076 s!11993))))

(assert (=> d!839907 (validRegex!3807 r!17423)))

(assert (=> d!839907 (= (matchR!3956 r!17423 s!11993) lt!1029362)))

(assert (= (and d!839907 c!479971) b!2937066))

(assert (= (and d!839907 (not c!479971)) b!2937074))

(assert (= (and d!839907 c!479972) b!2937065))

(assert (= (and d!839907 (not c!479972)) b!2937067))

(assert (= (and b!2937067 c!479970) b!2937068))

(assert (= (and b!2937067 (not c!479970)) b!2937064))

(assert (= (and b!2937064 (not res!1212486)) b!2937070))

(assert (= (and b!2937070 res!1212490) b!2937076))

(assert (= (and b!2937076 res!1212485) b!2937075))

(assert (= (and b!2937075 res!1212489) b!2937072))

(assert (= (and b!2937070 (not res!1212488)) b!2937073))

(assert (= (and b!2937073 res!1212491) b!2937071))

(assert (= (and b!2937071 (not res!1212487)) b!2937077))

(assert (= (and b!2937077 (not res!1212492)) b!2937069))

(assert (= (or b!2937065 b!2937071 b!2937076) bm!193091))

(assert (=> bm!193091 m!3323951))

(declare-fun m!3323997 () Bool)

(assert (=> b!2937072 m!3323997))

(declare-fun m!3323999 () Bool)

(assert (=> b!2937077 m!3323999))

(assert (=> b!2937077 m!3323999))

(declare-fun m!3324001 () Bool)

(assert (=> b!2937077 m!3324001))

(assert (=> b!2937074 m!3323997))

(assert (=> b!2937074 m!3323997))

(declare-fun m!3324003 () Bool)

(assert (=> b!2937074 m!3324003))

(assert (=> b!2937074 m!3323999))

(assert (=> b!2937074 m!3324003))

(assert (=> b!2937074 m!3323999))

(declare-fun m!3324005 () Bool)

(assert (=> b!2937074 m!3324005))

(assert (=> b!2937075 m!3323999))

(assert (=> b!2937075 m!3323999))

(assert (=> b!2937075 m!3324001))

(assert (=> b!2937069 m!3323997))

(assert (=> d!839907 m!3323951))

(assert (=> d!839907 m!3323959))

(declare-fun m!3324007 () Bool)

(assert (=> b!2937066 m!3324007))

(assert (=> b!2936879 d!839907))

(declare-fun d!839909 () Bool)

(assert (=> d!839909 (= (matchR!3956 r!17423 s!11993) (matchRSpec!1211 r!17423 s!11993))))

(declare-fun lt!1029365 () Unit!48527)

(declare-fun choose!17374 (Regex!9074 List!34939) Unit!48527)

(assert (=> d!839909 (= lt!1029365 (choose!17374 r!17423 s!11993))))

(assert (=> d!839909 (validRegex!3807 r!17423)))

(assert (=> d!839909 (= (mainMatchTheorem!1211 r!17423 s!11993) lt!1029365)))

(declare-fun bs!525450 () Bool)

(assert (= bs!525450 d!839909))

(assert (=> bs!525450 m!3323955))

(assert (=> bs!525450 m!3323953))

(declare-fun m!3324009 () Bool)

(assert (=> bs!525450 m!3324009))

(assert (=> bs!525450 m!3323959))

(assert (=> b!2936879 d!839909))

(declare-fun b!2937088 () Bool)

(declare-fun e!1851393 () Bool)

(assert (=> b!2937088 (= e!1851393 tp_is_empty!15711)))

(declare-fun b!2937091 () Bool)

(declare-fun tp!940359 () Bool)

(declare-fun tp!940356 () Bool)

(assert (=> b!2937091 (= e!1851393 (and tp!940359 tp!940356))))

(assert (=> b!2936876 (= tp!940326 e!1851393)))

(declare-fun b!2937089 () Bool)

(declare-fun tp!940357 () Bool)

(declare-fun tp!940360 () Bool)

(assert (=> b!2937089 (= e!1851393 (and tp!940357 tp!940360))))

(declare-fun b!2937090 () Bool)

(declare-fun tp!940358 () Bool)

(assert (=> b!2937090 (= e!1851393 tp!940358)))

(assert (= (and b!2936876 (is-ElementMatch!9074 (reg!9403 r!17423))) b!2937088))

(assert (= (and b!2936876 (is-Concat!14395 (reg!9403 r!17423))) b!2937089))

(assert (= (and b!2936876 (is-Star!9074 (reg!9403 r!17423))) b!2937090))

(assert (= (and b!2936876 (is-Union!9074 (reg!9403 r!17423))) b!2937091))

(declare-fun b!2937096 () Bool)

(declare-fun e!1851396 () Bool)

(declare-fun tp!940363 () Bool)

(assert (=> b!2937096 (= e!1851396 (and tp_is_empty!15711 tp!940363))))

(assert (=> b!2936875 (= tp!940327 e!1851396)))

(assert (= (and b!2936875 (is-Cons!34815 (t!234004 s!11993))) b!2937096))

(declare-fun b!2937097 () Bool)

(declare-fun e!1851397 () Bool)

(assert (=> b!2937097 (= e!1851397 tp_is_empty!15711)))

(declare-fun b!2937100 () Bool)

(declare-fun tp!940367 () Bool)

(declare-fun tp!940364 () Bool)

(assert (=> b!2937100 (= e!1851397 (and tp!940367 tp!940364))))

(assert (=> b!2936873 (= tp!940323 e!1851397)))

(declare-fun b!2937098 () Bool)

(declare-fun tp!940365 () Bool)

(declare-fun tp!940368 () Bool)

(assert (=> b!2937098 (= e!1851397 (and tp!940365 tp!940368))))

(declare-fun b!2937099 () Bool)

(declare-fun tp!940366 () Bool)

(assert (=> b!2937099 (= e!1851397 tp!940366)))

(assert (= (and b!2936873 (is-ElementMatch!9074 (regOne!18661 r!17423))) b!2937097))

(assert (= (and b!2936873 (is-Concat!14395 (regOne!18661 r!17423))) b!2937098))

(assert (= (and b!2936873 (is-Star!9074 (regOne!18661 r!17423))) b!2937099))

(assert (= (and b!2936873 (is-Union!9074 (regOne!18661 r!17423))) b!2937100))

(declare-fun b!2937101 () Bool)

(declare-fun e!1851398 () Bool)

(assert (=> b!2937101 (= e!1851398 tp_is_empty!15711)))

(declare-fun b!2937104 () Bool)

(declare-fun tp!940372 () Bool)

(declare-fun tp!940369 () Bool)

(assert (=> b!2937104 (= e!1851398 (and tp!940372 tp!940369))))

(assert (=> b!2936873 (= tp!940324 e!1851398)))

(declare-fun b!2937102 () Bool)

(declare-fun tp!940370 () Bool)

(declare-fun tp!940373 () Bool)

(assert (=> b!2937102 (= e!1851398 (and tp!940370 tp!940373))))

(declare-fun b!2937103 () Bool)

(declare-fun tp!940371 () Bool)

(assert (=> b!2937103 (= e!1851398 tp!940371)))

(assert (= (and b!2936873 (is-ElementMatch!9074 (regTwo!18661 r!17423))) b!2937101))

(assert (= (and b!2936873 (is-Concat!14395 (regTwo!18661 r!17423))) b!2937102))

(assert (= (and b!2936873 (is-Star!9074 (regTwo!18661 r!17423))) b!2937103))

(assert (= (and b!2936873 (is-Union!9074 (regTwo!18661 r!17423))) b!2937104))

(declare-fun b!2937105 () Bool)

(declare-fun e!1851399 () Bool)

(assert (=> b!2937105 (= e!1851399 tp_is_empty!15711)))

(declare-fun b!2937108 () Bool)

(declare-fun tp!940377 () Bool)

(declare-fun tp!940374 () Bool)

(assert (=> b!2937108 (= e!1851399 (and tp!940377 tp!940374))))

(assert (=> b!2936874 (= tp!940325 e!1851399)))

(declare-fun b!2937106 () Bool)

(declare-fun tp!940375 () Bool)

(declare-fun tp!940378 () Bool)

(assert (=> b!2937106 (= e!1851399 (and tp!940375 tp!940378))))

(declare-fun b!2937107 () Bool)

(declare-fun tp!940376 () Bool)

(assert (=> b!2937107 (= e!1851399 tp!940376)))

(assert (= (and b!2936874 (is-ElementMatch!9074 (regOne!18660 r!17423))) b!2937105))

(assert (= (and b!2936874 (is-Concat!14395 (regOne!18660 r!17423))) b!2937106))

(assert (= (and b!2936874 (is-Star!9074 (regOne!18660 r!17423))) b!2937107))

(assert (= (and b!2936874 (is-Union!9074 (regOne!18660 r!17423))) b!2937108))

(declare-fun b!2937109 () Bool)

(declare-fun e!1851400 () Bool)

(assert (=> b!2937109 (= e!1851400 tp_is_empty!15711)))

(declare-fun b!2937112 () Bool)

(declare-fun tp!940382 () Bool)

(declare-fun tp!940379 () Bool)

(assert (=> b!2937112 (= e!1851400 (and tp!940382 tp!940379))))

(assert (=> b!2936874 (= tp!940322 e!1851400)))

(declare-fun b!2937110 () Bool)

(declare-fun tp!940380 () Bool)

(declare-fun tp!940383 () Bool)

(assert (=> b!2937110 (= e!1851400 (and tp!940380 tp!940383))))

(declare-fun b!2937111 () Bool)

(declare-fun tp!940381 () Bool)

(assert (=> b!2937111 (= e!1851400 tp!940381)))

(assert (= (and b!2936874 (is-ElementMatch!9074 (regTwo!18660 r!17423))) b!2937109))

(assert (= (and b!2936874 (is-Concat!14395 (regTwo!18660 r!17423))) b!2937110))

(assert (= (and b!2936874 (is-Star!9074 (regTwo!18660 r!17423))) b!2937111))

(assert (= (and b!2936874 (is-Union!9074 (regTwo!18660 r!17423))) b!2937112))

(push 1)

(assert (not b!2937102))

(assert (not bm!193071))

(assert (not b!2937089))

(assert (not b!2937074))

(assert (not b!2937110))

(assert (not b!2937100))

(assert (not b!2937107))

(assert (not b!2937066))

(assert (not b!2937103))

(assert (not d!839907))

(assert (not b!2937075))

(assert (not bm!193088))

(assert (not bm!193069))

(assert (not b!2936937))

(assert (not b!2937108))

(assert (not b!2937069))

(assert (not b!2937106))

(assert (not b!2937090))

(assert (not b!2937091))

(assert (not b!2937112))

(assert (not b!2936956))

(assert (not b!2937099))

(assert (not bm!193087))

(assert (not b!2937098))

(assert (not bm!193068))

(assert (not b!2937026))

(assert (not b!2937077))

(assert (not bm!193072))

(assert (not d!839909))

(assert (not b!2937111))

(assert (not b!2937104))

(assert (not bm!193091))

(assert (not b!2937096))

(assert (not b!2937031))

(assert tp_is_empty!15711)

(assert (not b!2937072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

