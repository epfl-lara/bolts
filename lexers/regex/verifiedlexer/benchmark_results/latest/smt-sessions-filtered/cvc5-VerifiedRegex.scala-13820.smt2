; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735490 () Bool)

(assert start!735490)

(declare-fun b!7639710 () Bool)

(declare-fun e!4541221 () Bool)

(declare-fun tp_is_empty!51223 () Bool)

(declare-fun tp!2229983 () Bool)

(assert (=> b!7639710 (= e!4541221 (and tp_is_empty!51223 tp!2229983))))

(declare-fun res!3060042 () Bool)

(declare-fun e!4541222 () Bool)

(assert (=> start!735490 (=> (not res!3060042) (not e!4541222))))

(declare-datatypes ((C!41194 0))(
  ( (C!41195 (val!31037 Int)) )
))
(declare-datatypes ((Regex!20434 0))(
  ( (ElementMatch!20434 (c!1407241 C!41194)) (Concat!29279 (regOne!41380 Regex!20434) (regTwo!41380 Regex!20434)) (EmptyExpr!20434) (Star!20434 (reg!20763 Regex!20434)) (EmptyLang!20434) (Union!20434 (regOne!41381 Regex!20434) (regTwo!41381 Regex!20434)) )
))
(declare-fun r!14126 () Regex!20434)

(declare-fun validRegex!10852 (Regex!20434) Bool)

(assert (=> start!735490 (= res!3060042 (validRegex!10852 r!14126))))

(assert (=> start!735490 e!4541222))

(declare-fun e!4541220 () Bool)

(assert (=> start!735490 e!4541220))

(assert (=> start!735490 e!4541221))

(declare-fun b!7639711 () Bool)

(declare-fun tp!2229986 () Bool)

(assert (=> b!7639711 (= e!4541220 tp!2229986)))

(declare-fun b!7639712 () Bool)

(declare-fun res!3060041 () Bool)

(assert (=> b!7639712 (=> (not res!3060041) (not e!4541222))))

(assert (=> b!7639712 (= res!3060041 (and (not (is-EmptyExpr!20434 r!14126)) (is-EmptyLang!20434 r!14126)))))

(declare-fun b!7639713 () Bool)

(assert (=> b!7639713 (= e!4541220 tp_is_empty!51223)))

(declare-fun b!7639714 () Bool)

(declare-datatypes ((List!73285 0))(
  ( (Nil!73161) (Cons!73161 (h!79609 C!41194) (t!388020 List!73285)) )
))
(declare-fun s!9605 () List!73285)

(declare-fun matchR!9935 (Regex!20434 List!73285) Bool)

(declare-fun matchRSpec!4565 (Regex!20434 List!73285) Bool)

(assert (=> b!7639714 (= e!4541222 (not (= (matchR!9935 r!14126 s!9605) (matchRSpec!4565 r!14126 s!9605))))))

(declare-fun b!7639715 () Bool)

(declare-fun tp!2229985 () Bool)

(declare-fun tp!2229987 () Bool)

(assert (=> b!7639715 (= e!4541220 (and tp!2229985 tp!2229987))))

(declare-fun b!7639716 () Bool)

(declare-fun tp!2229982 () Bool)

(declare-fun tp!2229984 () Bool)

(assert (=> b!7639716 (= e!4541220 (and tp!2229982 tp!2229984))))

(assert (= (and start!735490 res!3060042) b!7639712))

(assert (= (and b!7639712 res!3060041) b!7639714))

(assert (= (and start!735490 (is-ElementMatch!20434 r!14126)) b!7639713))

(assert (= (and start!735490 (is-Concat!29279 r!14126)) b!7639715))

(assert (= (and start!735490 (is-Star!20434 r!14126)) b!7639711))

(assert (= (and start!735490 (is-Union!20434 r!14126)) b!7639716))

(assert (= (and start!735490 (is-Cons!73161 s!9605)) b!7639710))

(declare-fun m!8162658 () Bool)

(assert (=> start!735490 m!8162658))

(declare-fun m!8162660 () Bool)

(assert (=> b!7639714 m!8162660))

(declare-fun m!8162662 () Bool)

(assert (=> b!7639714 m!8162662))

(push 1)

(assert (not b!7639715))

(assert tp_is_empty!51223)

(assert (not b!7639711))

(assert (not start!735490))

(assert (not b!7639710))

(assert (not b!7639716))

(assert (not b!7639714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7639784 () Bool)

(declare-fun e!4541266 () Bool)

(declare-fun e!4541264 () Bool)

(assert (=> b!7639784 (= e!4541266 e!4541264)))

(declare-fun c!1407253 () Bool)

(assert (=> b!7639784 (= c!1407253 (is-Star!20434 r!14126))))

(declare-fun d!2325083 () Bool)

(declare-fun res!3060077 () Bool)

(assert (=> d!2325083 (=> res!3060077 e!4541266)))

(assert (=> d!2325083 (= res!3060077 (is-ElementMatch!20434 r!14126))))

(assert (=> d!2325083 (= (validRegex!10852 r!14126) e!4541266)))

(declare-fun bm!701188 () Bool)

(declare-fun call!701194 () Bool)

(declare-fun c!1407254 () Bool)

(assert (=> bm!701188 (= call!701194 (validRegex!10852 (ite c!1407254 (regTwo!41381 r!14126) (regTwo!41380 r!14126))))))

(declare-fun bm!701189 () Bool)

(declare-fun call!701193 () Bool)

(declare-fun call!701195 () Bool)

(assert (=> bm!701189 (= call!701193 call!701195)))

(declare-fun b!7639785 () Bool)

(declare-fun e!4541262 () Bool)

(assert (=> b!7639785 (= e!4541262 call!701194)))

(declare-fun b!7639786 () Bool)

(declare-fun res!3060078 () Bool)

(declare-fun e!4541261 () Bool)

(assert (=> b!7639786 (=> (not res!3060078) (not e!4541261))))

(assert (=> b!7639786 (= res!3060078 call!701193)))

(declare-fun e!4541265 () Bool)

(assert (=> b!7639786 (= e!4541265 e!4541261)))

(declare-fun b!7639787 () Bool)

(declare-fun e!4541260 () Bool)

(assert (=> b!7639787 (= e!4541264 e!4541260)))

(declare-fun res!3060076 () Bool)

(declare-fun nullable!8941 (Regex!20434) Bool)

(assert (=> b!7639787 (= res!3060076 (not (nullable!8941 (reg!20763 r!14126))))))

(assert (=> b!7639787 (=> (not res!3060076) (not e!4541260))))

(declare-fun b!7639788 () Bool)

(declare-fun e!4541263 () Bool)

(assert (=> b!7639788 (= e!4541263 e!4541262)))

(declare-fun res!3060079 () Bool)

(assert (=> b!7639788 (=> (not res!3060079) (not e!4541262))))

(assert (=> b!7639788 (= res!3060079 call!701193)))

(declare-fun b!7639789 () Bool)

(declare-fun res!3060075 () Bool)

(assert (=> b!7639789 (=> res!3060075 e!4541263)))

(assert (=> b!7639789 (= res!3060075 (not (is-Concat!29279 r!14126)))))

(assert (=> b!7639789 (= e!4541265 e!4541263)))

(declare-fun b!7639790 () Bool)

(assert (=> b!7639790 (= e!4541264 e!4541265)))

(assert (=> b!7639790 (= c!1407254 (is-Union!20434 r!14126))))

(declare-fun bm!701190 () Bool)

(assert (=> bm!701190 (= call!701195 (validRegex!10852 (ite c!1407253 (reg!20763 r!14126) (ite c!1407254 (regOne!41381 r!14126) (regOne!41380 r!14126)))))))

(declare-fun b!7639791 () Bool)

(assert (=> b!7639791 (= e!4541260 call!701195)))

(declare-fun b!7639792 () Bool)

(assert (=> b!7639792 (= e!4541261 call!701194)))

(assert (= (and d!2325083 (not res!3060077)) b!7639784))

(assert (= (and b!7639784 c!1407253) b!7639787))

(assert (= (and b!7639784 (not c!1407253)) b!7639790))

(assert (= (and b!7639787 res!3060076) b!7639791))

(assert (= (and b!7639790 c!1407254) b!7639786))

(assert (= (and b!7639790 (not c!1407254)) b!7639789))

(assert (= (and b!7639786 res!3060078) b!7639792))

(assert (= (and b!7639789 (not res!3060075)) b!7639788))

(assert (= (and b!7639788 res!3060079) b!7639785))

(assert (= (or b!7639786 b!7639788) bm!701189))

(assert (= (or b!7639792 b!7639785) bm!701188))

(assert (= (or b!7639791 bm!701189) bm!701190))

(declare-fun m!8162670 () Bool)

(assert (=> bm!701188 m!8162670))

(declare-fun m!8162672 () Bool)

(assert (=> b!7639787 m!8162672))

(declare-fun m!8162674 () Bool)

(assert (=> bm!701190 m!8162674))

(assert (=> start!735490 d!2325083))

(declare-fun b!7639857 () Bool)

(declare-fun res!3060114 () Bool)

(declare-fun e!4541308 () Bool)

(assert (=> b!7639857 (=> res!3060114 e!4541308)))

(assert (=> b!7639857 (= res!3060114 (not (is-ElementMatch!20434 r!14126)))))

(declare-fun e!4541303 () Bool)

(assert (=> b!7639857 (= e!4541303 e!4541308)))

(declare-fun b!7639858 () Bool)

(declare-fun e!4541304 () Bool)

(declare-fun lt!2660492 () Bool)

(declare-fun call!701201 () Bool)

(assert (=> b!7639858 (= e!4541304 (= lt!2660492 call!701201))))

(declare-fun b!7639859 () Bool)

(declare-fun res!3060117 () Bool)

(declare-fun e!4541305 () Bool)

(assert (=> b!7639859 (=> (not res!3060117) (not e!4541305))))

(assert (=> b!7639859 (= res!3060117 (not call!701201))))

(declare-fun b!7639860 () Bool)

(declare-fun e!4541306 () Bool)

(declare-fun head!15712 (List!73285) C!41194)

(assert (=> b!7639860 (= e!4541306 (not (= (head!15712 s!9605) (c!1407241 r!14126))))))

(declare-fun b!7639861 () Bool)

(declare-fun e!4541302 () Bool)

(assert (=> b!7639861 (= e!4541302 e!4541306)))

(declare-fun res!3060111 () Bool)

(assert (=> b!7639861 (=> res!3060111 e!4541306)))

(assert (=> b!7639861 (= res!3060111 call!701201)))

(declare-fun b!7639862 () Bool)

(assert (=> b!7639862 (= e!4541308 e!4541302)))

(declare-fun res!3060110 () Bool)

(assert (=> b!7639862 (=> (not res!3060110) (not e!4541302))))

(assert (=> b!7639862 (= res!3060110 (not lt!2660492))))

(declare-fun d!2325085 () Bool)

(assert (=> d!2325085 e!4541304))

(declare-fun c!1407274 () Bool)

(assert (=> d!2325085 (= c!1407274 (is-EmptyExpr!20434 r!14126))))

(declare-fun e!4541307 () Bool)

(assert (=> d!2325085 (= lt!2660492 e!4541307)))

(declare-fun c!1407272 () Bool)

(declare-fun isEmpty!41792 (List!73285) Bool)

(assert (=> d!2325085 (= c!1407272 (isEmpty!41792 s!9605))))

(assert (=> d!2325085 (validRegex!10852 r!14126)))

(assert (=> d!2325085 (= (matchR!9935 r!14126 s!9605) lt!2660492)))

(declare-fun b!7639863 () Bool)

(assert (=> b!7639863 (= e!4541304 e!4541303)))

(declare-fun c!1407273 () Bool)

(assert (=> b!7639863 (= c!1407273 (is-EmptyLang!20434 r!14126))))

(declare-fun b!7639864 () Bool)

(declare-fun res!3060115 () Bool)

(assert (=> b!7639864 (=> res!3060115 e!4541308)))

(assert (=> b!7639864 (= res!3060115 e!4541305)))

(declare-fun res!3060112 () Bool)

(assert (=> b!7639864 (=> (not res!3060112) (not e!4541305))))

(assert (=> b!7639864 (= res!3060112 lt!2660492)))

(declare-fun b!7639865 () Bool)

(declare-fun derivativeStep!5912 (Regex!20434 C!41194) Regex!20434)

(declare-fun tail!15252 (List!73285) List!73285)

(assert (=> b!7639865 (= e!4541307 (matchR!9935 (derivativeStep!5912 r!14126 (head!15712 s!9605)) (tail!15252 s!9605)))))

(declare-fun bm!701196 () Bool)

(assert (=> bm!701196 (= call!701201 (isEmpty!41792 s!9605))))

(declare-fun b!7639866 () Bool)

(assert (=> b!7639866 (= e!4541305 (= (head!15712 s!9605) (c!1407241 r!14126)))))

(declare-fun b!7639867 () Bool)

(declare-fun res!3060116 () Bool)

(assert (=> b!7639867 (=> (not res!3060116) (not e!4541305))))

(assert (=> b!7639867 (= res!3060116 (isEmpty!41792 (tail!15252 s!9605)))))

(declare-fun b!7639868 () Bool)

(declare-fun res!3060113 () Bool)

(assert (=> b!7639868 (=> res!3060113 e!4541306)))

(assert (=> b!7639868 (= res!3060113 (not (isEmpty!41792 (tail!15252 s!9605))))))

(declare-fun b!7639869 () Bool)

(assert (=> b!7639869 (= e!4541303 (not lt!2660492))))

(declare-fun b!7639870 () Bool)

(assert (=> b!7639870 (= e!4541307 (nullable!8941 r!14126))))

(assert (= (and d!2325085 c!1407272) b!7639870))

(assert (= (and d!2325085 (not c!1407272)) b!7639865))

(assert (= (and d!2325085 c!1407274) b!7639858))

(assert (= (and d!2325085 (not c!1407274)) b!7639863))

(assert (= (and b!7639863 c!1407273) b!7639869))

(assert (= (and b!7639863 (not c!1407273)) b!7639857))

(assert (= (and b!7639857 (not res!3060114)) b!7639864))

(assert (= (and b!7639864 res!3060112) b!7639859))

(assert (= (and b!7639859 res!3060117) b!7639867))

(assert (= (and b!7639867 res!3060116) b!7639866))

(assert (= (and b!7639864 (not res!3060115)) b!7639862))

(assert (= (and b!7639862 res!3060110) b!7639861))

(assert (= (and b!7639861 (not res!3060111)) b!7639868))

(assert (= (and b!7639868 (not res!3060113)) b!7639860))

(assert (= (or b!7639858 b!7639859 b!7639861) bm!701196))

(declare-fun m!8162690 () Bool)

(assert (=> d!2325085 m!8162690))

(assert (=> d!2325085 m!8162658))

(declare-fun m!8162692 () Bool)

(assert (=> b!7639868 m!8162692))

(assert (=> b!7639868 m!8162692))

(declare-fun m!8162694 () Bool)

(assert (=> b!7639868 m!8162694))

(declare-fun m!8162696 () Bool)

(assert (=> b!7639860 m!8162696))

(declare-fun m!8162698 () Bool)

(assert (=> b!7639870 m!8162698))

(assert (=> b!7639866 m!8162696))

(assert (=> b!7639867 m!8162692))

(assert (=> b!7639867 m!8162692))

(assert (=> b!7639867 m!8162694))

(assert (=> b!7639865 m!8162696))

(assert (=> b!7639865 m!8162696))

(declare-fun m!8162700 () Bool)

(assert (=> b!7639865 m!8162700))

(assert (=> b!7639865 m!8162692))

(assert (=> b!7639865 m!8162700))

(assert (=> b!7639865 m!8162692))

(declare-fun m!8162702 () Bool)

(assert (=> b!7639865 m!8162702))

(assert (=> bm!701196 m!8162690))

(assert (=> b!7639714 d!2325085))

(declare-fun b!7639905 () Bool)

(assert (=> b!7639905 true))

(assert (=> b!7639905 true))

(declare-fun bs!1944685 () Bool)

(declare-fun b!7639909 () Bool)

(assert (= bs!1944685 (and b!7639909 b!7639905)))

(declare-fun lambda!469621 () Int)

(declare-fun lambda!469620 () Int)

(assert (=> bs!1944685 (not (= lambda!469621 lambda!469620))))

(assert (=> b!7639909 true))

(assert (=> b!7639909 true))

(declare-fun bm!701201 () Bool)

(declare-fun call!701207 () Bool)

(assert (=> bm!701201 (= call!701207 (isEmpty!41792 s!9605))))

(declare-fun call!701206 () Bool)

(declare-fun c!1407284 () Bool)

(declare-fun bm!701202 () Bool)

(declare-fun Exists!4586 (Int) Bool)

(assert (=> bm!701202 (= call!701206 (Exists!4586 (ite c!1407284 lambda!469620 lambda!469621)))))

(declare-fun b!7639903 () Bool)

(declare-fun e!4541331 () Bool)

(declare-fun e!4541328 () Bool)

(assert (=> b!7639903 (= e!4541331 e!4541328)))

(assert (=> b!7639903 (= c!1407284 (is-Star!20434 r!14126))))

(declare-fun b!7639904 () Bool)

(declare-fun e!4541330 () Bool)

(declare-fun e!4541332 () Bool)

(assert (=> b!7639904 (= e!4541330 e!4541332)))

(declare-fun res!3060135 () Bool)

(assert (=> b!7639904 (= res!3060135 (not (is-EmptyLang!20434 r!14126)))))

(assert (=> b!7639904 (=> (not res!3060135) (not e!4541332))))

(declare-fun e!4541329 () Bool)

(assert (=> b!7639905 (= e!4541329 call!701206)))

(declare-fun b!7639906 () Bool)

(declare-fun c!1407286 () Bool)

(assert (=> b!7639906 (= c!1407286 (is-Union!20434 r!14126))))

(declare-fun e!4541333 () Bool)

(assert (=> b!7639906 (= e!4541333 e!4541331)))

(declare-fun d!2325089 () Bool)

(declare-fun c!1407285 () Bool)

(assert (=> d!2325089 (= c!1407285 (is-EmptyExpr!20434 r!14126))))

(assert (=> d!2325089 (= (matchRSpec!4565 r!14126 s!9605) e!4541330)))

(declare-fun b!7639907 () Bool)

(declare-fun c!1407283 () Bool)

(assert (=> b!7639907 (= c!1407283 (is-ElementMatch!20434 r!14126))))

(assert (=> b!7639907 (= e!4541332 e!4541333)))

(declare-fun b!7639908 () Bool)

(assert (=> b!7639908 (= e!4541333 (= s!9605 (Cons!73161 (c!1407241 r!14126) Nil!73161)))))

(assert (=> b!7639909 (= e!4541328 call!701206)))

(declare-fun b!7639910 () Bool)

(declare-fun e!4541327 () Bool)

(assert (=> b!7639910 (= e!4541331 e!4541327)))

(declare-fun res!3060136 () Bool)

(assert (=> b!7639910 (= res!3060136 (matchRSpec!4565 (regOne!41381 r!14126) s!9605))))

(assert (=> b!7639910 (=> res!3060136 e!4541327)))

(declare-fun b!7639911 () Bool)

(declare-fun res!3060134 () Bool)

(assert (=> b!7639911 (=> res!3060134 e!4541329)))

(assert (=> b!7639911 (= res!3060134 call!701207)))

(assert (=> b!7639911 (= e!4541328 e!4541329)))

(declare-fun b!7639912 () Bool)

(assert (=> b!7639912 (= e!4541327 (matchRSpec!4565 (regTwo!41381 r!14126) s!9605))))

(declare-fun b!7639913 () Bool)

(assert (=> b!7639913 (= e!4541330 call!701207)))

(assert (= (and d!2325089 c!1407285) b!7639913))

(assert (= (and d!2325089 (not c!1407285)) b!7639904))

(assert (= (and b!7639904 res!3060135) b!7639907))

(assert (= (and b!7639907 c!1407283) b!7639908))

(assert (= (and b!7639907 (not c!1407283)) b!7639906))

(assert (= (and b!7639906 c!1407286) b!7639910))

(assert (= (and b!7639906 (not c!1407286)) b!7639903))

(assert (= (and b!7639910 (not res!3060136)) b!7639912))

(assert (= (and b!7639903 c!1407284) b!7639911))

(assert (= (and b!7639903 (not c!1407284)) b!7639909))

(assert (= (and b!7639911 (not res!3060134)) b!7639905))

(assert (= (or b!7639905 b!7639909) bm!701202))

(assert (= (or b!7639913 b!7639911) bm!701201))

(assert (=> bm!701201 m!8162690))

(declare-fun m!8162704 () Bool)

(assert (=> bm!701202 m!8162704))

(declare-fun m!8162706 () Bool)

(assert (=> b!7639910 m!8162706))

(declare-fun m!8162708 () Bool)

(assert (=> b!7639912 m!8162708))

(assert (=> b!7639714 d!2325089))

(declare-fun b!7639929 () Bool)

(declare-fun e!4541336 () Bool)

(declare-fun tp!2230016 () Bool)

(declare-fun tp!2230018 () Bool)

(assert (=> b!7639929 (= e!4541336 (and tp!2230016 tp!2230018))))

(declare-fun b!7639930 () Bool)

(declare-fun tp!2230017 () Bool)

(assert (=> b!7639930 (= e!4541336 tp!2230017)))

(declare-fun b!7639928 () Bool)

(assert (=> b!7639928 (= e!4541336 tp_is_empty!51223)))

(assert (=> b!7639715 (= tp!2229985 e!4541336)))

(declare-fun b!7639931 () Bool)

(declare-fun tp!2230019 () Bool)

(declare-fun tp!2230020 () Bool)

(assert (=> b!7639931 (= e!4541336 (and tp!2230019 tp!2230020))))

(assert (= (and b!7639715 (is-ElementMatch!20434 (regOne!41380 r!14126))) b!7639928))

(assert (= (and b!7639715 (is-Concat!29279 (regOne!41380 r!14126))) b!7639929))

(assert (= (and b!7639715 (is-Star!20434 (regOne!41380 r!14126))) b!7639930))

(assert (= (and b!7639715 (is-Union!20434 (regOne!41380 r!14126))) b!7639931))

(declare-fun b!7639933 () Bool)

(declare-fun e!4541337 () Bool)

(declare-fun tp!2230021 () Bool)

(declare-fun tp!2230023 () Bool)

(assert (=> b!7639933 (= e!4541337 (and tp!2230021 tp!2230023))))

(declare-fun b!7639934 () Bool)

(declare-fun tp!2230022 () Bool)

(assert (=> b!7639934 (= e!4541337 tp!2230022)))

(declare-fun b!7639932 () Bool)

(assert (=> b!7639932 (= e!4541337 tp_is_empty!51223)))

(assert (=> b!7639715 (= tp!2229987 e!4541337)))

(declare-fun b!7639935 () Bool)

(declare-fun tp!2230024 () Bool)

(declare-fun tp!2230025 () Bool)

(assert (=> b!7639935 (= e!4541337 (and tp!2230024 tp!2230025))))

(assert (= (and b!7639715 (is-ElementMatch!20434 (regTwo!41380 r!14126))) b!7639932))

(assert (= (and b!7639715 (is-Concat!29279 (regTwo!41380 r!14126))) b!7639933))

(assert (= (and b!7639715 (is-Star!20434 (regTwo!41380 r!14126))) b!7639934))

(assert (= (and b!7639715 (is-Union!20434 (regTwo!41380 r!14126))) b!7639935))

(declare-fun b!7639940 () Bool)

(declare-fun e!4541340 () Bool)

(declare-fun tp!2230028 () Bool)

(assert (=> b!7639940 (= e!4541340 (and tp_is_empty!51223 tp!2230028))))

(assert (=> b!7639710 (= tp!2229983 e!4541340)))

(assert (= (and b!7639710 (is-Cons!73161 (t!388020 s!9605))) b!7639940))

(declare-fun b!7639942 () Bool)

(declare-fun e!4541341 () Bool)

(declare-fun tp!2230029 () Bool)

(declare-fun tp!2230031 () Bool)

(assert (=> b!7639942 (= e!4541341 (and tp!2230029 tp!2230031))))

(declare-fun b!7639943 () Bool)

(declare-fun tp!2230030 () Bool)

(assert (=> b!7639943 (= e!4541341 tp!2230030)))

(declare-fun b!7639941 () Bool)

(assert (=> b!7639941 (= e!4541341 tp_is_empty!51223)))

(assert (=> b!7639716 (= tp!2229982 e!4541341)))

(declare-fun b!7639944 () Bool)

(declare-fun tp!2230032 () Bool)

(declare-fun tp!2230033 () Bool)

(assert (=> b!7639944 (= e!4541341 (and tp!2230032 tp!2230033))))

(assert (= (and b!7639716 (is-ElementMatch!20434 (regOne!41381 r!14126))) b!7639941))

(assert (= (and b!7639716 (is-Concat!29279 (regOne!41381 r!14126))) b!7639942))

(assert (= (and b!7639716 (is-Star!20434 (regOne!41381 r!14126))) b!7639943))

(assert (= (and b!7639716 (is-Union!20434 (regOne!41381 r!14126))) b!7639944))

(declare-fun b!7639946 () Bool)

(declare-fun e!4541342 () Bool)

(declare-fun tp!2230034 () Bool)

(declare-fun tp!2230036 () Bool)

(assert (=> b!7639946 (= e!4541342 (and tp!2230034 tp!2230036))))

(declare-fun b!7639947 () Bool)

(declare-fun tp!2230035 () Bool)

(assert (=> b!7639947 (= e!4541342 tp!2230035)))

(declare-fun b!7639945 () Bool)

(assert (=> b!7639945 (= e!4541342 tp_is_empty!51223)))

(assert (=> b!7639716 (= tp!2229984 e!4541342)))

(declare-fun b!7639948 () Bool)

(declare-fun tp!2230037 () Bool)

(declare-fun tp!2230038 () Bool)

(assert (=> b!7639948 (= e!4541342 (and tp!2230037 tp!2230038))))

(assert (= (and b!7639716 (is-ElementMatch!20434 (regTwo!41381 r!14126))) b!7639945))

(assert (= (and b!7639716 (is-Concat!29279 (regTwo!41381 r!14126))) b!7639946))

(assert (= (and b!7639716 (is-Star!20434 (regTwo!41381 r!14126))) b!7639947))

(assert (= (and b!7639716 (is-Union!20434 (regTwo!41381 r!14126))) b!7639948))

(declare-fun b!7639950 () Bool)

(declare-fun e!4541343 () Bool)

(declare-fun tp!2230039 () Bool)

(declare-fun tp!2230041 () Bool)

(assert (=> b!7639950 (= e!4541343 (and tp!2230039 tp!2230041))))

(declare-fun b!7639951 () Bool)

(declare-fun tp!2230040 () Bool)

(assert (=> b!7639951 (= e!4541343 tp!2230040)))

(declare-fun b!7639949 () Bool)

(assert (=> b!7639949 (= e!4541343 tp_is_empty!51223)))

(assert (=> b!7639711 (= tp!2229986 e!4541343)))

(declare-fun b!7639952 () Bool)

(declare-fun tp!2230042 () Bool)

(declare-fun tp!2230043 () Bool)

(assert (=> b!7639952 (= e!4541343 (and tp!2230042 tp!2230043))))

(assert (= (and b!7639711 (is-ElementMatch!20434 (reg!20763 r!14126))) b!7639949))

(assert (= (and b!7639711 (is-Concat!29279 (reg!20763 r!14126))) b!7639950))

(assert (= (and b!7639711 (is-Star!20434 (reg!20763 r!14126))) b!7639951))

(assert (= (and b!7639711 (is-Union!20434 (reg!20763 r!14126))) b!7639952))

(push 1)

(assert (not b!7639868))

(assert (not b!7639865))

(assert (not b!7639860))

(assert (not b!7639952))

(assert (not d!2325085))

(assert (not bm!701188))

(assert (not b!7639912))

(assert (not bm!701190))

(assert (not b!7639948))

(assert (not b!7639866))

(assert (not b!7639951))

(assert (not b!7639943))

(assert (not b!7639944))

(assert (not bm!701202))

(assert (not b!7639935))

(assert (not b!7639870))

(assert (not b!7639787))

(assert (not b!7639934))

(assert (not b!7639930))

(assert (not b!7639929))

(assert (not b!7639942))

(assert (not b!7639867))

(assert (not b!7639933))

(assert (not bm!701196))

(assert (not b!7639931))

(assert (not b!7639950))

(assert (not b!7639946))

(assert (not b!7639910))

(assert (not b!7639947))

(assert (not b!7639940))

(assert (not bm!701201))

(assert tp_is_empty!51223)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

