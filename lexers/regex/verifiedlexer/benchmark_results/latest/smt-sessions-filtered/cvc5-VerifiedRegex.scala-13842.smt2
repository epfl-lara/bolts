; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735938 () Bool)

(assert start!735938)

(declare-fun b!7649758 () Bool)

(assert (=> b!7649758 true))

(assert (=> b!7649758 true))

(declare-fun b!7649756 () Bool)

(declare-fun e!4546196 () Bool)

(declare-fun tp_is_empty!51311 () Bool)

(assert (=> b!7649756 (= e!4546196 tp_is_empty!51311)))

(declare-fun b!7649757 () Bool)

(declare-fun res!3063541 () Bool)

(declare-fun e!4546199 () Bool)

(assert (=> b!7649757 (=> (not res!3063541) (not e!4546199))))

(declare-datatypes ((C!41282 0))(
  ( (C!41283 (val!31081 Int)) )
))
(declare-datatypes ((Regex!20478 0))(
  ( (ElementMatch!20478 (c!1408863 C!41282)) (Concat!29323 (regOne!41468 Regex!20478) (regTwo!41468 Regex!20478)) (EmptyExpr!20478) (Star!20478 (reg!20807 Regex!20478)) (EmptyLang!20478) (Union!20478 (regOne!41469 Regex!20478) (regTwo!41469 Regex!20478)) )
))
(declare-fun r!14126 () Regex!20478)

(assert (=> b!7649757 (= res!3063541 (and (not (is-EmptyExpr!20478 r!14126)) (not (is-EmptyLang!20478 r!14126)) (not (is-ElementMatch!20478 r!14126)) (not (is-Union!20478 r!14126)) (is-Star!20478 r!14126)))))

(declare-fun e!4546197 () Bool)

(assert (=> b!7649758 (= e!4546199 (not e!4546197))))

(declare-fun res!3063539 () Bool)

(assert (=> b!7649758 (=> res!3063539 e!4546197)))

(declare-fun lt!2661243 () Bool)

(assert (=> b!7649758 (= res!3063539 (not lt!2661243))))

(declare-fun lambda!469774 () Int)

(declare-fun Exists!4603 (Int) Bool)

(assert (=> b!7649758 (= lt!2661243 (Exists!4603 lambda!469774))))

(declare-datatypes ((List!73329 0))(
  ( (Nil!73205) (Cons!73205 (h!79653 C!41282) (t!388064 List!73329)) )
))
(declare-fun s!9605 () List!73329)

(declare-datatypes ((tuple2!69418 0))(
  ( (tuple2!69419 (_1!38012 List!73329) (_2!38012 List!73329)) )
))
(declare-datatypes ((Option!17503 0))(
  ( (None!17502) (Some!17502 (v!54637 tuple2!69418)) )
))
(declare-fun isDefined!14119 (Option!17503) Bool)

(declare-fun findConcatSeparation!3533 (Regex!20478 Regex!20478 List!73329 List!73329 List!73329) Option!17503)

(assert (=> b!7649758 (= lt!2661243 (isDefined!14119 (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 Nil!73205 s!9605 s!9605)))))

(declare-datatypes ((Unit!167968 0))(
  ( (Unit!167969) )
))
(declare-fun lt!2661244 () Unit!167968)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3291 (Regex!20478 Regex!20478 List!73329) Unit!167968)

(assert (=> b!7649758 (= lt!2661244 (lemmaFindConcatSeparationEquivalentToExists!3291 (reg!20807 r!14126) r!14126 s!9605))))

(declare-fun b!7649759 () Bool)

(declare-fun tp!2233900 () Bool)

(declare-fun tp!2233903 () Bool)

(assert (=> b!7649759 (= e!4546196 (and tp!2233900 tp!2233903))))

(declare-fun res!3063542 () Bool)

(assert (=> start!735938 (=> (not res!3063542) (not e!4546199))))

(declare-fun validRegex!10896 (Regex!20478) Bool)

(assert (=> start!735938 (= res!3063542 (validRegex!10896 r!14126))))

(assert (=> start!735938 e!4546199))

(assert (=> start!735938 e!4546196))

(declare-fun e!4546198 () Bool)

(assert (=> start!735938 e!4546198))

(declare-fun b!7649760 () Bool)

(declare-fun tp!2233902 () Bool)

(assert (=> b!7649760 (= e!4546198 (and tp_is_empty!51311 tp!2233902))))

(declare-fun b!7649761 () Bool)

(declare-fun tp!2233901 () Bool)

(declare-fun tp!2233899 () Bool)

(assert (=> b!7649761 (= e!4546196 (and tp!2233901 tp!2233899))))

(declare-fun b!7649762 () Bool)

(declare-fun res!3063540 () Bool)

(assert (=> b!7649762 (=> (not res!3063540) (not e!4546199))))

(declare-fun isEmpty!41830 (List!73329) Bool)

(assert (=> b!7649762 (= res!3063540 (not (isEmpty!41830 s!9605)))))

(declare-fun b!7649763 () Bool)

(assert (=> b!7649763 (= e!4546197 (validRegex!10896 (reg!20807 r!14126)))))

(declare-fun b!7649764 () Bool)

(declare-fun tp!2233898 () Bool)

(assert (=> b!7649764 (= e!4546196 tp!2233898)))

(assert (= (and start!735938 res!3063542) b!7649757))

(assert (= (and b!7649757 res!3063541) b!7649762))

(assert (= (and b!7649762 res!3063540) b!7649758))

(assert (= (and b!7649758 (not res!3063539)) b!7649763))

(assert (= (and start!735938 (is-ElementMatch!20478 r!14126)) b!7649756))

(assert (= (and start!735938 (is-Concat!29323 r!14126)) b!7649759))

(assert (= (and start!735938 (is-Star!20478 r!14126)) b!7649764))

(assert (= (and start!735938 (is-Union!20478 r!14126)) b!7649761))

(assert (= (and start!735938 (is-Cons!73205 s!9605)) b!7649760))

(declare-fun m!8165578 () Bool)

(assert (=> b!7649758 m!8165578))

(declare-fun m!8165580 () Bool)

(assert (=> b!7649758 m!8165580))

(assert (=> b!7649758 m!8165580))

(declare-fun m!8165582 () Bool)

(assert (=> b!7649758 m!8165582))

(declare-fun m!8165584 () Bool)

(assert (=> b!7649758 m!8165584))

(declare-fun m!8165586 () Bool)

(assert (=> start!735938 m!8165586))

(declare-fun m!8165588 () Bool)

(assert (=> b!7649762 m!8165588))

(declare-fun m!8165590 () Bool)

(assert (=> b!7649763 m!8165590))

(push 1)

(assert (not b!7649758))

(assert (not b!7649759))

(assert (not start!735938))

(assert (not b!7649763))

(assert tp_is_empty!51311)

(assert (not b!7649760))

(assert (not b!7649764))

(assert (not b!7649762))

(assert (not b!7649761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2325879 () Bool)

(declare-fun choose!59052 (Int) Bool)

(assert (=> d!2325879 (= (Exists!4603 lambda!469774) (choose!59052 lambda!469774))))

(declare-fun bs!1945051 () Bool)

(assert (= bs!1945051 d!2325879))

(declare-fun m!8165606 () Bool)

(assert (=> bs!1945051 m!8165606))

(assert (=> b!7649758 d!2325879))

(declare-fun d!2325881 () Bool)

(declare-fun isEmpty!41832 (Option!17503) Bool)

(assert (=> d!2325881 (= (isDefined!14119 (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 Nil!73205 s!9605 s!9605)) (not (isEmpty!41832 (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 Nil!73205 s!9605 s!9605))))))

(declare-fun bs!1945052 () Bool)

(assert (= bs!1945052 d!2325881))

(assert (=> bs!1945052 m!8165580))

(declare-fun m!8165608 () Bool)

(assert (=> bs!1945052 m!8165608))

(assert (=> b!7649758 d!2325881))

(declare-fun b!7649822 () Bool)

(declare-fun res!3063569 () Bool)

(declare-fun e!4546224 () Bool)

(assert (=> b!7649822 (=> (not res!3063569) (not e!4546224))))

(declare-fun lt!2661259 () Option!17503)

(declare-fun matchR!9975 (Regex!20478 List!73329) Bool)

(declare-fun get!25930 (Option!17503) tuple2!69418)

(assert (=> b!7649822 (= res!3063569 (matchR!9975 (reg!20807 r!14126) (_1!38012 (get!25930 lt!2661259))))))

(declare-fun d!2325883 () Bool)

(declare-fun e!4546225 () Bool)

(assert (=> d!2325883 e!4546225))

(declare-fun res!3063570 () Bool)

(assert (=> d!2325883 (=> res!3063570 e!4546225)))

(assert (=> d!2325883 (= res!3063570 e!4546224)))

(declare-fun res!3063572 () Bool)

(assert (=> d!2325883 (=> (not res!3063572) (not e!4546224))))

(assert (=> d!2325883 (= res!3063572 (isDefined!14119 lt!2661259))))

(declare-fun e!4546226 () Option!17503)

(assert (=> d!2325883 (= lt!2661259 e!4546226)))

(declare-fun c!1408870 () Bool)

(declare-fun e!4546228 () Bool)

(assert (=> d!2325883 (= c!1408870 e!4546228)))

(declare-fun res!3063571 () Bool)

(assert (=> d!2325883 (=> (not res!3063571) (not e!4546228))))

(assert (=> d!2325883 (= res!3063571 (matchR!9975 (reg!20807 r!14126) Nil!73205))))

(assert (=> d!2325883 (validRegex!10896 (reg!20807 r!14126))))

(assert (=> d!2325883 (= (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 Nil!73205 s!9605 s!9605) lt!2661259)))

(declare-fun b!7649823 () Bool)

(assert (=> b!7649823 (= e!4546228 (matchR!9975 r!14126 s!9605))))

(declare-fun b!7649824 () Bool)

(declare-fun lt!2661258 () Unit!167968)

(declare-fun lt!2661257 () Unit!167968)

(assert (=> b!7649824 (= lt!2661258 lt!2661257)))

(declare-fun ++!17706 (List!73329 List!73329) List!73329)

(assert (=> b!7649824 (= (++!17706 (++!17706 Nil!73205 (Cons!73205 (h!79653 s!9605) Nil!73205)) (t!388064 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3264 (List!73329 C!41282 List!73329 List!73329) Unit!167968)

(assert (=> b!7649824 (= lt!2661257 (lemmaMoveElementToOtherListKeepsConcatEq!3264 Nil!73205 (h!79653 s!9605) (t!388064 s!9605) s!9605))))

(declare-fun e!4546227 () Option!17503)

(assert (=> b!7649824 (= e!4546227 (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 (++!17706 Nil!73205 (Cons!73205 (h!79653 s!9605) Nil!73205)) (t!388064 s!9605) s!9605))))

(declare-fun b!7649825 () Bool)

(assert (=> b!7649825 (= e!4546226 e!4546227)))

(declare-fun c!1408869 () Bool)

(assert (=> b!7649825 (= c!1408869 (is-Nil!73205 s!9605))))

(declare-fun b!7649826 () Bool)

(declare-fun res!3063573 () Bool)

(assert (=> b!7649826 (=> (not res!3063573) (not e!4546224))))

(assert (=> b!7649826 (= res!3063573 (matchR!9975 r!14126 (_2!38012 (get!25930 lt!2661259))))))

(declare-fun b!7649827 () Bool)

(assert (=> b!7649827 (= e!4546224 (= (++!17706 (_1!38012 (get!25930 lt!2661259)) (_2!38012 (get!25930 lt!2661259))) s!9605))))

(declare-fun b!7649828 () Bool)

(assert (=> b!7649828 (= e!4546226 (Some!17502 (tuple2!69419 Nil!73205 s!9605)))))

(declare-fun b!7649829 () Bool)

(assert (=> b!7649829 (= e!4546225 (not (isDefined!14119 lt!2661259)))))

(declare-fun b!7649830 () Bool)

(assert (=> b!7649830 (= e!4546227 None!17502)))

(assert (= (and d!2325883 res!3063571) b!7649823))

(assert (= (and d!2325883 c!1408870) b!7649828))

(assert (= (and d!2325883 (not c!1408870)) b!7649825))

(assert (= (and b!7649825 c!1408869) b!7649830))

(assert (= (and b!7649825 (not c!1408869)) b!7649824))

(assert (= (and d!2325883 res!3063572) b!7649822))

(assert (= (and b!7649822 res!3063569) b!7649826))

(assert (= (and b!7649826 res!3063573) b!7649827))

(assert (= (and d!2325883 (not res!3063570)) b!7649829))

(declare-fun m!8165610 () Bool)

(assert (=> b!7649823 m!8165610))

(declare-fun m!8165612 () Bool)

(assert (=> d!2325883 m!8165612))

(declare-fun m!8165614 () Bool)

(assert (=> d!2325883 m!8165614))

(assert (=> d!2325883 m!8165590))

(declare-fun m!8165616 () Bool)

(assert (=> b!7649826 m!8165616))

(declare-fun m!8165618 () Bool)

(assert (=> b!7649826 m!8165618))

(declare-fun m!8165620 () Bool)

(assert (=> b!7649824 m!8165620))

(assert (=> b!7649824 m!8165620))

(declare-fun m!8165622 () Bool)

(assert (=> b!7649824 m!8165622))

(declare-fun m!8165624 () Bool)

(assert (=> b!7649824 m!8165624))

(assert (=> b!7649824 m!8165620))

(declare-fun m!8165626 () Bool)

(assert (=> b!7649824 m!8165626))

(assert (=> b!7649829 m!8165612))

(assert (=> b!7649822 m!8165616))

(declare-fun m!8165628 () Bool)

(assert (=> b!7649822 m!8165628))

(assert (=> b!7649827 m!8165616))

(declare-fun m!8165630 () Bool)

(assert (=> b!7649827 m!8165630))

(assert (=> b!7649758 d!2325883))

(declare-fun bs!1945053 () Bool)

(declare-fun d!2325887 () Bool)

(assert (= bs!1945053 (and d!2325887 b!7649758)))

(declare-fun lambda!469780 () Int)

(assert (=> bs!1945053 (= lambda!469780 lambda!469774)))

(assert (=> d!2325887 true))

(assert (=> d!2325887 true))

(assert (=> d!2325887 true))

(assert (=> d!2325887 (= (isDefined!14119 (findConcatSeparation!3533 (reg!20807 r!14126) r!14126 Nil!73205 s!9605 s!9605)) (Exists!4603 lambda!469780))))

(declare-fun lt!2661262 () Unit!167968)

(declare-fun choose!59053 (Regex!20478 Regex!20478 List!73329) Unit!167968)

(assert (=> d!2325887 (= lt!2661262 (choose!59053 (reg!20807 r!14126) r!14126 s!9605))))

(assert (=> d!2325887 (validRegex!10896 (reg!20807 r!14126))))

(assert (=> d!2325887 (= (lemmaFindConcatSeparationEquivalentToExists!3291 (reg!20807 r!14126) r!14126 s!9605) lt!2661262)))

(declare-fun bs!1945054 () Bool)

(assert (= bs!1945054 d!2325887))

(assert (=> bs!1945054 m!8165590))

(assert (=> bs!1945054 m!8165580))

(assert (=> bs!1945054 m!8165580))

(assert (=> bs!1945054 m!8165582))

(declare-fun m!8165632 () Bool)

(assert (=> bs!1945054 m!8165632))

(declare-fun m!8165634 () Bool)

(assert (=> bs!1945054 m!8165634))

(assert (=> b!7649758 d!2325887))

(declare-fun b!7649880 () Bool)

(declare-fun e!4546271 () Bool)

(declare-fun e!4546269 () Bool)

(assert (=> b!7649880 (= e!4546271 e!4546269)))

(declare-fun res!3063604 () Bool)

(assert (=> b!7649880 (=> (not res!3063604) (not e!4546269))))

(declare-fun call!702338 () Bool)

(assert (=> b!7649880 (= res!3063604 call!702338)))

(declare-fun bm!702333 () Bool)

(declare-fun call!702339 () Bool)

(declare-fun c!1408882 () Bool)

(assert (=> bm!702333 (= call!702339 (validRegex!10896 (ite c!1408882 (regTwo!41469 (reg!20807 r!14126)) (regTwo!41468 (reg!20807 r!14126)))))))

(declare-fun b!7649881 () Bool)

(declare-fun e!4546272 () Bool)

(assert (=> b!7649881 (= e!4546272 call!702339)))

(declare-fun b!7649882 () Bool)

(declare-fun res!3063605 () Bool)

(assert (=> b!7649882 (=> res!3063605 e!4546271)))

(assert (=> b!7649882 (= res!3063605 (not (is-Concat!29323 (reg!20807 r!14126))))))

(declare-fun e!4546270 () Bool)

(assert (=> b!7649882 (= e!4546270 e!4546271)))

(declare-fun b!7649883 () Bool)

(declare-fun res!3063606 () Bool)

(assert (=> b!7649883 (=> (not res!3063606) (not e!4546272))))

(assert (=> b!7649883 (= res!3063606 call!702338)))

(assert (=> b!7649883 (= e!4546270 e!4546272)))

(declare-fun c!1408881 () Bool)

(declare-fun bm!702334 () Bool)

(declare-fun call!702340 () Bool)

(assert (=> bm!702334 (= call!702340 (validRegex!10896 (ite c!1408881 (reg!20807 (reg!20807 r!14126)) (ite c!1408882 (regOne!41469 (reg!20807 r!14126)) (regOne!41468 (reg!20807 r!14126))))))))

(declare-fun b!7649884 () Bool)

(assert (=> b!7649884 (= e!4546269 call!702339)))

(declare-fun d!2325889 () Bool)

(declare-fun res!3063607 () Bool)

(declare-fun e!4546267 () Bool)

(assert (=> d!2325889 (=> res!3063607 e!4546267)))

(assert (=> d!2325889 (= res!3063607 (is-ElementMatch!20478 (reg!20807 r!14126)))))

(assert (=> d!2325889 (= (validRegex!10896 (reg!20807 r!14126)) e!4546267)))

(declare-fun bm!702335 () Bool)

(assert (=> bm!702335 (= call!702338 call!702340)))

(declare-fun b!7649885 () Bool)

(declare-fun e!4546266 () Bool)

(assert (=> b!7649885 (= e!4546266 e!4546270)))

(assert (=> b!7649885 (= c!1408882 (is-Union!20478 (reg!20807 r!14126)))))

(declare-fun b!7649886 () Bool)

(declare-fun e!4546268 () Bool)

(assert (=> b!7649886 (= e!4546268 call!702340)))

(declare-fun b!7649887 () Bool)

(assert (=> b!7649887 (= e!4546267 e!4546266)))

(assert (=> b!7649887 (= c!1408881 (is-Star!20478 (reg!20807 r!14126)))))

(declare-fun b!7649888 () Bool)

(assert (=> b!7649888 (= e!4546266 e!4546268)))

(declare-fun res!3063603 () Bool)

(declare-fun nullable!8977 (Regex!20478) Bool)

(assert (=> b!7649888 (= res!3063603 (not (nullable!8977 (reg!20807 (reg!20807 r!14126)))))))

(assert (=> b!7649888 (=> (not res!3063603) (not e!4546268))))

(assert (= (and d!2325889 (not res!3063607)) b!7649887))

(assert (= (and b!7649887 c!1408881) b!7649888))

(assert (= (and b!7649887 (not c!1408881)) b!7649885))

(assert (= (and b!7649888 res!3063603) b!7649886))

(assert (= (and b!7649885 c!1408882) b!7649883))

(assert (= (and b!7649885 (not c!1408882)) b!7649882))

(assert (= (and b!7649883 res!3063606) b!7649881))

(assert (= (and b!7649882 (not res!3063605)) b!7649880))

(assert (= (and b!7649880 res!3063604) b!7649884))

(assert (= (or b!7649883 b!7649880) bm!702335))

(assert (= (or b!7649881 b!7649884) bm!702333))

(assert (= (or b!7649886 bm!702335) bm!702334))

(declare-fun m!8165642 () Bool)

(assert (=> bm!702333 m!8165642))

(declare-fun m!8165644 () Bool)

(assert (=> bm!702334 m!8165644))

(declare-fun m!8165646 () Bool)

(assert (=> b!7649888 m!8165646))

(assert (=> b!7649763 d!2325889))

(declare-fun b!7649889 () Bool)

(declare-fun e!4546278 () Bool)

(declare-fun e!4546276 () Bool)

(assert (=> b!7649889 (= e!4546278 e!4546276)))

(declare-fun res!3063609 () Bool)

(assert (=> b!7649889 (=> (not res!3063609) (not e!4546276))))

(declare-fun call!702341 () Bool)

(assert (=> b!7649889 (= res!3063609 call!702341)))

(declare-fun bm!702336 () Bool)

(declare-fun call!702342 () Bool)

(declare-fun c!1408884 () Bool)

(assert (=> bm!702336 (= call!702342 (validRegex!10896 (ite c!1408884 (regTwo!41469 r!14126) (regTwo!41468 r!14126))))))

(declare-fun b!7649890 () Bool)

(declare-fun e!4546279 () Bool)

(assert (=> b!7649890 (= e!4546279 call!702342)))

(declare-fun b!7649891 () Bool)

(declare-fun res!3063610 () Bool)

(assert (=> b!7649891 (=> res!3063610 e!4546278)))

(assert (=> b!7649891 (= res!3063610 (not (is-Concat!29323 r!14126)))))

(declare-fun e!4546277 () Bool)

(assert (=> b!7649891 (= e!4546277 e!4546278)))

(declare-fun b!7649892 () Bool)

(declare-fun res!3063611 () Bool)

(assert (=> b!7649892 (=> (not res!3063611) (not e!4546279))))

(assert (=> b!7649892 (= res!3063611 call!702341)))

(assert (=> b!7649892 (= e!4546277 e!4546279)))

(declare-fun bm!702337 () Bool)

(declare-fun call!702343 () Bool)

(declare-fun c!1408883 () Bool)

(assert (=> bm!702337 (= call!702343 (validRegex!10896 (ite c!1408883 (reg!20807 r!14126) (ite c!1408884 (regOne!41469 r!14126) (regOne!41468 r!14126)))))))

(declare-fun b!7649893 () Bool)

(assert (=> b!7649893 (= e!4546276 call!702342)))

(declare-fun d!2325893 () Bool)

(declare-fun res!3063612 () Bool)

(declare-fun e!4546274 () Bool)

(assert (=> d!2325893 (=> res!3063612 e!4546274)))

(assert (=> d!2325893 (= res!3063612 (is-ElementMatch!20478 r!14126))))

(assert (=> d!2325893 (= (validRegex!10896 r!14126) e!4546274)))

(declare-fun bm!702338 () Bool)

(assert (=> bm!702338 (= call!702341 call!702343)))

(declare-fun b!7649894 () Bool)

(declare-fun e!4546273 () Bool)

(assert (=> b!7649894 (= e!4546273 e!4546277)))

(assert (=> b!7649894 (= c!1408884 (is-Union!20478 r!14126))))

(declare-fun b!7649895 () Bool)

(declare-fun e!4546275 () Bool)

(assert (=> b!7649895 (= e!4546275 call!702343)))

(declare-fun b!7649896 () Bool)

(assert (=> b!7649896 (= e!4546274 e!4546273)))

(assert (=> b!7649896 (= c!1408883 (is-Star!20478 r!14126))))

(declare-fun b!7649897 () Bool)

(assert (=> b!7649897 (= e!4546273 e!4546275)))

(declare-fun res!3063608 () Bool)

(assert (=> b!7649897 (= res!3063608 (not (nullable!8977 (reg!20807 r!14126))))))

(assert (=> b!7649897 (=> (not res!3063608) (not e!4546275))))

(assert (= (and d!2325893 (not res!3063612)) b!7649896))

(assert (= (and b!7649896 c!1408883) b!7649897))

(assert (= (and b!7649896 (not c!1408883)) b!7649894))

(assert (= (and b!7649897 res!3063608) b!7649895))

(assert (= (and b!7649894 c!1408884) b!7649892))

(assert (= (and b!7649894 (not c!1408884)) b!7649891))

(assert (= (and b!7649892 res!3063611) b!7649890))

(assert (= (and b!7649891 (not res!3063610)) b!7649889))

(assert (= (and b!7649889 res!3063609) b!7649893))

(assert (= (or b!7649892 b!7649889) bm!702338))

(assert (= (or b!7649890 b!7649893) bm!702336))

(assert (= (or b!7649895 bm!702338) bm!702337))

(declare-fun m!8165650 () Bool)

(assert (=> bm!702336 m!8165650))

(declare-fun m!8165652 () Bool)

(assert (=> bm!702337 m!8165652))

(declare-fun m!8165654 () Bool)

(assert (=> b!7649897 m!8165654))

(assert (=> start!735938 d!2325893))

(declare-fun d!2325897 () Bool)

(assert (=> d!2325897 (= (isEmpty!41830 s!9605) (is-Nil!73205 s!9605))))

(assert (=> b!7649762 d!2325897))

(declare-fun b!7649902 () Bool)

(declare-fun e!4546282 () Bool)

(declare-fun tp!2233924 () Bool)

(assert (=> b!7649902 (= e!4546282 (and tp_is_empty!51311 tp!2233924))))

(assert (=> b!7649760 (= tp!2233902 e!4546282)))

(assert (= (and b!7649760 (is-Cons!73205 (t!388064 s!9605))) b!7649902))

(declare-fun b!7649914 () Bool)

(declare-fun e!4546285 () Bool)

(declare-fun tp!2233935 () Bool)

(declare-fun tp!2233938 () Bool)

(assert (=> b!7649914 (= e!4546285 (and tp!2233935 tp!2233938))))

(assert (=> b!7649759 (= tp!2233900 e!4546285)))

(declare-fun b!7649915 () Bool)

(declare-fun tp!2233936 () Bool)

(assert (=> b!7649915 (= e!4546285 tp!2233936)))

(declare-fun b!7649913 () Bool)

(assert (=> b!7649913 (= e!4546285 tp_is_empty!51311)))

(declare-fun b!7649916 () Bool)

(declare-fun tp!2233937 () Bool)

(declare-fun tp!2233939 () Bool)

(assert (=> b!7649916 (= e!4546285 (and tp!2233937 tp!2233939))))

(assert (= (and b!7649759 (is-ElementMatch!20478 (regOne!41468 r!14126))) b!7649913))

(assert (= (and b!7649759 (is-Concat!29323 (regOne!41468 r!14126))) b!7649914))

(assert (= (and b!7649759 (is-Star!20478 (regOne!41468 r!14126))) b!7649915))

(assert (= (and b!7649759 (is-Union!20478 (regOne!41468 r!14126))) b!7649916))

(declare-fun b!7649918 () Bool)

(declare-fun e!4546286 () Bool)

(declare-fun tp!2233940 () Bool)

(declare-fun tp!2233943 () Bool)

(assert (=> b!7649918 (= e!4546286 (and tp!2233940 tp!2233943))))

(assert (=> b!7649759 (= tp!2233903 e!4546286)))

(declare-fun b!7649919 () Bool)

(declare-fun tp!2233941 () Bool)

(assert (=> b!7649919 (= e!4546286 tp!2233941)))

(declare-fun b!7649917 () Bool)

(assert (=> b!7649917 (= e!4546286 tp_is_empty!51311)))

(declare-fun b!7649920 () Bool)

(declare-fun tp!2233942 () Bool)

(declare-fun tp!2233944 () Bool)

(assert (=> b!7649920 (= e!4546286 (and tp!2233942 tp!2233944))))

(assert (= (and b!7649759 (is-ElementMatch!20478 (regTwo!41468 r!14126))) b!7649917))

(assert (= (and b!7649759 (is-Concat!29323 (regTwo!41468 r!14126))) b!7649918))

(assert (= (and b!7649759 (is-Star!20478 (regTwo!41468 r!14126))) b!7649919))

(assert (= (and b!7649759 (is-Union!20478 (regTwo!41468 r!14126))) b!7649920))

(declare-fun b!7649922 () Bool)

(declare-fun e!4546287 () Bool)

(declare-fun tp!2233945 () Bool)

(declare-fun tp!2233948 () Bool)

(assert (=> b!7649922 (= e!4546287 (and tp!2233945 tp!2233948))))

(assert (=> b!7649764 (= tp!2233898 e!4546287)))

(declare-fun b!7649923 () Bool)

(declare-fun tp!2233946 () Bool)

(assert (=> b!7649923 (= e!4546287 tp!2233946)))

(declare-fun b!7649921 () Bool)

(assert (=> b!7649921 (= e!4546287 tp_is_empty!51311)))

(declare-fun b!7649924 () Bool)

(declare-fun tp!2233947 () Bool)

(declare-fun tp!2233949 () Bool)

(assert (=> b!7649924 (= e!4546287 (and tp!2233947 tp!2233949))))

(assert (= (and b!7649764 (is-ElementMatch!20478 (reg!20807 r!14126))) b!7649921))

(assert (= (and b!7649764 (is-Concat!29323 (reg!20807 r!14126))) b!7649922))

(assert (= (and b!7649764 (is-Star!20478 (reg!20807 r!14126))) b!7649923))

(assert (= (and b!7649764 (is-Union!20478 (reg!20807 r!14126))) b!7649924))

(declare-fun b!7649926 () Bool)

(declare-fun e!4546288 () Bool)

(declare-fun tp!2233950 () Bool)

(declare-fun tp!2233953 () Bool)

(assert (=> b!7649926 (= e!4546288 (and tp!2233950 tp!2233953))))

(assert (=> b!7649761 (= tp!2233901 e!4546288)))

(declare-fun b!7649927 () Bool)

(declare-fun tp!2233951 () Bool)

(assert (=> b!7649927 (= e!4546288 tp!2233951)))

(declare-fun b!7649925 () Bool)

(assert (=> b!7649925 (= e!4546288 tp_is_empty!51311)))

(declare-fun b!7649928 () Bool)

(declare-fun tp!2233952 () Bool)

(declare-fun tp!2233954 () Bool)

(assert (=> b!7649928 (= e!4546288 (and tp!2233952 tp!2233954))))

(assert (= (and b!7649761 (is-ElementMatch!20478 (regOne!41469 r!14126))) b!7649925))

(assert (= (and b!7649761 (is-Concat!29323 (regOne!41469 r!14126))) b!7649926))

(assert (= (and b!7649761 (is-Star!20478 (regOne!41469 r!14126))) b!7649927))

(assert (= (and b!7649761 (is-Union!20478 (regOne!41469 r!14126))) b!7649928))

(declare-fun b!7649930 () Bool)

(declare-fun e!4546289 () Bool)

(declare-fun tp!2233955 () Bool)

(declare-fun tp!2233958 () Bool)

(assert (=> b!7649930 (= e!4546289 (and tp!2233955 tp!2233958))))

(assert (=> b!7649761 (= tp!2233899 e!4546289)))

(declare-fun b!7649931 () Bool)

(declare-fun tp!2233956 () Bool)

(assert (=> b!7649931 (= e!4546289 tp!2233956)))

(declare-fun b!7649929 () Bool)

(assert (=> b!7649929 (= e!4546289 tp_is_empty!51311)))

(declare-fun b!7649932 () Bool)

(declare-fun tp!2233957 () Bool)

(declare-fun tp!2233959 () Bool)

(assert (=> b!7649932 (= e!4546289 (and tp!2233957 tp!2233959))))

(assert (= (and b!7649761 (is-ElementMatch!20478 (regTwo!41469 r!14126))) b!7649929))

(assert (= (and b!7649761 (is-Concat!29323 (regTwo!41469 r!14126))) b!7649930))

(assert (= (and b!7649761 (is-Star!20478 (regTwo!41469 r!14126))) b!7649931))

(assert (= (and b!7649761 (is-Union!20478 (regTwo!41469 r!14126))) b!7649932))

(push 1)

(assert (not b!7649822))

(assert (not bm!702334))

(assert (not b!7649922))

(assert (not b!7649928))

(assert (not d!2325883))

(assert (not d!2325887))

(assert (not b!7649919))

(assert (not bm!702333))

(assert (not d!2325881))

(assert (not b!7649827))

(assert (not b!7649824))

(assert (not b!7649915))

(assert (not b!7649918))

(assert (not b!7649930))

(assert (not b!7649823))

(assert (not b!7649931))

(assert (not b!7649902))

(assert (not b!7649923))

(assert (not b!7649829))

(assert (not b!7649920))

(assert (not d!2325879))

(assert (not b!7649926))

(assert (not b!7649826))

(assert (not b!7649924))

(assert (not b!7649897))

(assert (not b!7649914))

(assert (not b!7649888))

(assert (not bm!702337))

(assert (not b!7649927))

(assert (not b!7649932))

(assert tp_is_empty!51311)

(assert (not bm!702336))

(assert (not b!7649916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

