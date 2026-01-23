; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571406 () Bool)

(assert start!571406)

(declare-fun b!5453931 () Bool)

(assert (=> b!5453931 true))

(assert (=> b!5453931 true))

(declare-fun lambda!288149 () Int)

(declare-fun lambda!288148 () Int)

(assert (=> b!5453931 (not (= lambda!288149 lambda!288148))))

(assert (=> b!5453931 true))

(assert (=> b!5453931 true))

(declare-fun b!5453920 () Bool)

(assert (=> b!5453920 true))

(declare-fun bs!1261700 () Bool)

(declare-fun b!5453908 () Bool)

(assert (= bs!1261700 (and b!5453908 b!5453931)))

(declare-datatypes ((C!30832 0))(
  ( (C!30833 (val!25118 Int)) )
))
(declare-datatypes ((Regex!15281 0))(
  ( (ElementMatch!15281 (c!952474 C!30832)) (Concat!24126 (regOne!31074 Regex!15281) (regTwo!31074 Regex!15281)) (EmptyExpr!15281) (Star!15281 (reg!15610 Regex!15281)) (EmptyLang!15281) (Union!15281 (regOne!31075 Regex!15281) (regTwo!31075 Regex!15281)) )
))
(declare-fun r!7292 () Regex!15281)

(declare-fun lambda!288151 () Int)

(declare-fun lt!2225532 () Regex!15281)

(assert (=> bs!1261700 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225532 (regTwo!31074 r!7292))) (= lambda!288151 lambda!288148))))

(assert (=> bs!1261700 (not (= lambda!288151 lambda!288149))))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(declare-fun lambda!288152 () Int)

(assert (=> bs!1261700 (not (= lambda!288152 lambda!288148))))

(assert (=> bs!1261700 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225532 (regTwo!31074 r!7292))) (= lambda!288152 lambda!288149))))

(assert (=> b!5453908 (not (= lambda!288152 lambda!288151))))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(declare-fun lt!2225531 () Regex!15281)

(declare-fun lambda!288153 () Int)

(assert (=> bs!1261700 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225531 (regTwo!31074 r!7292))) (= lambda!288153 lambda!288148))))

(assert (=> bs!1261700 (not (= lambda!288153 lambda!288149))))

(assert (=> b!5453908 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225531 lt!2225532)) (= lambda!288153 lambda!288151))))

(assert (=> b!5453908 (not (= lambda!288153 lambda!288152))))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(declare-fun lambda!288154 () Int)

(assert (=> b!5453908 (not (= lambda!288154 lambda!288153))))

(assert (=> bs!1261700 (not (= lambda!288154 lambda!288148))))

(assert (=> bs!1261700 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225531 (regTwo!31074 r!7292))) (= lambda!288154 lambda!288149))))

(assert (=> b!5453908 (not (= lambda!288154 lambda!288151))))

(assert (=> b!5453908 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225531 lt!2225532)) (= lambda!288154 lambda!288152))))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(assert (=> b!5453908 true))

(declare-fun bs!1261701 () Bool)

(declare-fun b!5453953 () Bool)

(assert (= bs!1261701 (and b!5453953 b!5453908)))

(declare-fun lambda!288155 () Int)

(declare-fun lt!2225518 () Regex!15281)

(assert (=> bs!1261701 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225518 lt!2225531)) (= lambda!288155 lambda!288153))))

(assert (=> bs!1261701 (not (= lambda!288155 lambda!288154))))

(declare-fun bs!1261702 () Bool)

(assert (= bs!1261702 (and b!5453953 b!5453931)))

(assert (=> bs!1261702 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225518 (regTwo!31074 r!7292))) (= lambda!288155 lambda!288148))))

(assert (=> bs!1261702 (not (= lambda!288155 lambda!288149))))

(assert (=> bs!1261701 (= (= lt!2225518 lt!2225532) (= lambda!288155 lambda!288151))))

(assert (=> bs!1261701 (not (= lambda!288155 lambda!288152))))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(declare-fun lambda!288156 () Int)

(assert (=> bs!1261701 (not (= lambda!288156 lambda!288153))))

(assert (=> bs!1261701 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225518 lt!2225531)) (= lambda!288156 lambda!288154))))

(assert (=> bs!1261702 (not (= lambda!288156 lambda!288148))))

(assert (=> bs!1261702 (= (and (= (regOne!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225518 (regTwo!31074 r!7292))) (= lambda!288156 lambda!288149))))

(assert (=> bs!1261701 (not (= lambda!288156 lambda!288151))))

(assert (=> bs!1261701 (= (= lt!2225518 lt!2225532) (= lambda!288156 lambda!288152))))

(assert (=> b!5453953 (not (= lambda!288156 lambda!288155))))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(declare-fun lt!2225526 () Regex!15281)

(declare-fun lambda!288157 () Int)

(assert (=> bs!1261701 (= (= lt!2225526 lt!2225531) (= lambda!288157 lambda!288153))))

(assert (=> bs!1261701 (not (= lambda!288157 lambda!288154))))

(assert (=> bs!1261702 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225526 (regTwo!31074 r!7292))) (= lambda!288157 lambda!288148))))

(assert (=> bs!1261702 (not (= lambda!288157 lambda!288149))))

(assert (=> bs!1261701 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225526 lt!2225532)) (= lambda!288157 lambda!288151))))

(assert (=> b!5453953 (not (= lambda!288157 lambda!288156))))

(assert (=> bs!1261701 (not (= lambda!288157 lambda!288152))))

(assert (=> b!5453953 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225526 lt!2225518)) (= lambda!288157 lambda!288155))))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(declare-fun lambda!288158 () Int)

(assert (=> bs!1261701 (not (= lambda!288158 lambda!288153))))

(assert (=> bs!1261701 (= (= lt!2225526 lt!2225531) (= lambda!288158 lambda!288154))))

(assert (=> bs!1261702 (not (= lambda!288158 lambda!288148))))

(assert (=> bs!1261702 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225526 (regTwo!31074 r!7292))) (= lambda!288158 lambda!288149))))

(assert (=> bs!1261701 (not (= lambda!288158 lambda!288151))))

(assert (=> b!5453953 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225526 lt!2225518)) (= lambda!288158 lambda!288156))))

(assert (=> bs!1261701 (= (and (= (regTwo!31074 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225526 lt!2225532)) (= lambda!288158 lambda!288152))))

(assert (=> b!5453953 (not (= lambda!288158 lambda!288155))))

(assert (=> b!5453953 (not (= lambda!288158 lambda!288157))))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(assert (=> b!5453953 true))

(declare-fun bs!1261703 () Bool)

(declare-fun b!5453946 () Bool)

(assert (= bs!1261703 (and b!5453946 b!5453908)))

(declare-fun lt!2225374 () Regex!15281)

(declare-fun lambda!288159 () Int)

(assert (=> bs!1261703 (= (and (= lt!2225374 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288159 lambda!288153))))

(assert (=> bs!1261703 (not (= lambda!288159 lambda!288154))))

(declare-fun bs!1261704 () Bool)

(assert (= bs!1261704 (and b!5453946 b!5453931)))

(assert (=> bs!1261704 (= (= lt!2225374 (regOne!31074 r!7292)) (= lambda!288159 lambda!288148))))

(assert (=> bs!1261704 (not (= lambda!288159 lambda!288149))))

(assert (=> bs!1261703 (= (and (= lt!2225374 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288159 lambda!288151))))

(declare-fun bs!1261705 () Bool)

(assert (= bs!1261705 (and b!5453946 b!5453953)))

(assert (=> bs!1261705 (not (= lambda!288159 lambda!288156))))

(assert (=> bs!1261703 (not (= lambda!288159 lambda!288152))))

(assert (=> bs!1261705 (= (and (= lt!2225374 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288159 lambda!288155))))

(assert (=> bs!1261705 (not (= lambda!288159 lambda!288158))))

(assert (=> bs!1261705 (= (and (= lt!2225374 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288159 lambda!288157))))

(assert (=> b!5453946 true))

(assert (=> b!5453946 true))

(assert (=> b!5453946 true))

(declare-fun lambda!288160 () Int)

(assert (=> bs!1261703 (not (= lambda!288160 lambda!288153))))

(assert (=> bs!1261703 (= (and (= lt!2225374 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288160 lambda!288154))))

(assert (=> bs!1261704 (= (= lt!2225374 (regOne!31074 r!7292)) (= lambda!288160 lambda!288149))))

(assert (=> bs!1261703 (not (= lambda!288160 lambda!288151))))

(assert (=> bs!1261705 (= (and (= lt!2225374 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288160 lambda!288156))))

(assert (=> bs!1261703 (= (and (= lt!2225374 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288160 lambda!288152))))

(assert (=> bs!1261705 (not (= lambda!288160 lambda!288155))))

(assert (=> b!5453946 (not (= lambda!288160 lambda!288159))))

(assert (=> bs!1261704 (not (= lambda!288160 lambda!288148))))

(assert (=> bs!1261705 (= (and (= lt!2225374 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288160 lambda!288158))))

(assert (=> bs!1261705 (not (= lambda!288160 lambda!288157))))

(assert (=> b!5453946 true))

(assert (=> b!5453946 true))

(assert (=> b!5453946 true))

(declare-fun bs!1261706 () Bool)

(declare-fun b!5453914 () Bool)

(assert (= bs!1261706 (and b!5453914 b!5453908)))

(declare-datatypes ((List!62142 0))(
  ( (Nil!62018) (Cons!62018 (h!68466 C!30832) (t!375371 List!62142)) )
))
(declare-fun s!2326 () List!62142)

(declare-datatypes ((tuple2!64960 0))(
  ( (tuple2!64961 (_1!35783 List!62142) (_2!35783 List!62142)) )
))
(declare-fun lt!2225382 () tuple2!64960)

(declare-fun lambda!288161 () Int)

(assert (=> bs!1261706 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288161 lambda!288153))))

(assert (=> bs!1261706 (not (= lambda!288161 lambda!288154))))

(declare-fun bs!1261707 () Bool)

(assert (= bs!1261707 (and b!5453914 b!5453931)))

(assert (=> bs!1261707 (not (= lambda!288161 lambda!288149))))

(assert (=> bs!1261706 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288161 lambda!288151))))

(declare-fun bs!1261708 () Bool)

(assert (= bs!1261708 (and b!5453914 b!5453953)))

(assert (=> bs!1261708 (not (= lambda!288161 lambda!288156))))

(assert (=> bs!1261706 (not (= lambda!288161 lambda!288152))))

(assert (=> bs!1261708 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288161 lambda!288155))))

(declare-fun bs!1261709 () Bool)

(assert (= bs!1261709 (and b!5453914 b!5453946)))

(assert (=> bs!1261709 (not (= lambda!288161 lambda!288160))))

(assert (=> bs!1261709 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288161 lambda!288159))))

(assert (=> bs!1261707 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288161 lambda!288148))))

(assert (=> bs!1261708 (not (= lambda!288161 lambda!288158))))

(assert (=> bs!1261708 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288161 lambda!288157))))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(declare-fun lambda!288162 () Int)

(assert (=> bs!1261706 (not (= lambda!288162 lambda!288153))))

(assert (=> bs!1261706 (not (= lambda!288162 lambda!288154))))

(assert (=> bs!1261707 (not (= lambda!288162 lambda!288149))))

(assert (=> bs!1261706 (not (= lambda!288162 lambda!288151))))

(assert (=> bs!1261708 (not (= lambda!288162 lambda!288156))))

(assert (=> bs!1261706 (not (= lambda!288162 lambda!288152))))

(assert (=> b!5453914 (not (= lambda!288162 lambda!288161))))

(assert (=> bs!1261708 (not (= lambda!288162 lambda!288155))))

(assert (=> bs!1261709 (not (= lambda!288162 lambda!288160))))

(assert (=> bs!1261709 (not (= lambda!288162 lambda!288159))))

(assert (=> bs!1261707 (not (= lambda!288162 lambda!288148))))

(assert (=> bs!1261708 (not (= lambda!288162 lambda!288158))))

(assert (=> bs!1261708 (not (= lambda!288162 lambda!288157))))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(declare-fun lambda!288163 () Int)

(assert (=> bs!1261706 (not (= lambda!288163 lambda!288153))))

(assert (=> bs!1261706 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288163 lambda!288154))))

(assert (=> bs!1261707 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288163 lambda!288149))))

(assert (=> b!5453914 (not (= lambda!288163 lambda!288162))))

(assert (=> bs!1261706 (not (= lambda!288163 lambda!288151))))

(assert (=> bs!1261708 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288163 lambda!288156))))

(assert (=> bs!1261706 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288163 lambda!288152))))

(assert (=> b!5453914 (not (= lambda!288163 lambda!288161))))

(assert (=> bs!1261708 (not (= lambda!288163 lambda!288155))))

(assert (=> bs!1261709 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288163 lambda!288160))))

(assert (=> bs!1261709 (not (= lambda!288163 lambda!288159))))

(assert (=> bs!1261707 (not (= lambda!288163 lambda!288148))))

(assert (=> bs!1261708 (= (and (= (_1!35783 lt!2225382) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288163 lambda!288158))))

(assert (=> bs!1261708 (not (= lambda!288163 lambda!288157))))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(assert (=> b!5453914 true))

(declare-fun b!5453924 () Bool)

(assert (=> b!5453924 true))

(declare-fun bs!1261710 () Bool)

(assert (= bs!1261710 (and b!5453924 b!5453914)))

(declare-fun lambda!288166 () Int)

(declare-fun lambda!288164 () Int)

(assert (=> bs!1261710 (= lambda!288166 lambda!288164)))

(declare-fun bs!1261711 () Bool)

(assert (= bs!1261711 (and b!5453924 b!5453908)))

(declare-fun lambda!288167 () Int)

(declare-fun lt!2225473 () Regex!15281)

(assert (=> bs!1261711 (= (and (= lt!2225473 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288167 lambda!288153))))

(assert (=> bs!1261711 (not (= lambda!288167 lambda!288154))))

(declare-fun bs!1261712 () Bool)

(assert (= bs!1261712 (and b!5453924 b!5453931)))

(assert (=> bs!1261712 (not (= lambda!288167 lambda!288149))))

(assert (=> bs!1261710 (not (= lambda!288167 lambda!288162))))

(assert (=> bs!1261711 (= (and (= lt!2225473 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288167 lambda!288151))))

(declare-fun bs!1261713 () Bool)

(assert (= bs!1261713 (and b!5453924 b!5453953)))

(assert (=> bs!1261713 (not (= lambda!288167 lambda!288156))))

(assert (=> bs!1261711 (not (= lambda!288167 lambda!288152))))

(assert (=> bs!1261710 (= (and (= s!2326 (_1!35783 lt!2225382)) (= lt!2225473 (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288167 lambda!288161))))

(assert (=> bs!1261713 (= (and (= lt!2225473 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288167 lambda!288155))))

(assert (=> bs!1261710 (not (= lambda!288167 lambda!288163))))

(declare-fun bs!1261714 () Bool)

(assert (= bs!1261714 (and b!5453924 b!5453946)))

(assert (=> bs!1261714 (not (= lambda!288167 lambda!288160))))

(assert (=> bs!1261714 (= (= lt!2225473 lt!2225374) (= lambda!288167 lambda!288159))))

(assert (=> bs!1261712 (= (= lt!2225473 (regOne!31074 r!7292)) (= lambda!288167 lambda!288148))))

(assert (=> bs!1261713 (not (= lambda!288167 lambda!288158))))

(assert (=> bs!1261713 (= (and (= lt!2225473 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288167 lambda!288157))))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(declare-fun lambda!288168 () Int)

(assert (=> bs!1261711 (not (= lambda!288168 lambda!288153))))

(assert (=> bs!1261711 (= (and (= lt!2225473 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288168 lambda!288154))))

(assert (=> bs!1261712 (= (= lt!2225473 (regOne!31074 r!7292)) (= lambda!288168 lambda!288149))))

(assert (=> bs!1261710 (not (= lambda!288168 lambda!288162))))

(assert (=> bs!1261711 (not (= lambda!288168 lambda!288151))))

(assert (=> bs!1261713 (= (and (= lt!2225473 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288168 lambda!288156))))

(assert (=> bs!1261710 (not (= lambda!288168 lambda!288161))))

(assert (=> bs!1261713 (not (= lambda!288168 lambda!288155))))

(assert (=> bs!1261710 (= (and (= s!2326 (_1!35783 lt!2225382)) (= lt!2225473 (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288168 lambda!288163))))

(assert (=> bs!1261714 (= (= lt!2225473 lt!2225374) (= lambda!288168 lambda!288160))))

(assert (=> bs!1261714 (not (= lambda!288168 lambda!288159))))

(assert (=> bs!1261712 (not (= lambda!288168 lambda!288148))))

(assert (=> b!5453924 (not (= lambda!288168 lambda!288167))))

(assert (=> bs!1261711 (= (and (= lt!2225473 (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288168 lambda!288152))))

(assert (=> bs!1261713 (= (and (= lt!2225473 (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288168 lambda!288158))))

(assert (=> bs!1261713 (not (= lambda!288168 lambda!288157))))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(declare-fun lt!2225479 () tuple2!64960)

(declare-fun lambda!288169 () Int)

(assert (=> bs!1261711 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288169 lambda!288153))))

(assert (=> b!5453924 (not (= lambda!288169 lambda!288168))))

(assert (=> bs!1261711 (not (= lambda!288169 lambda!288154))))

(assert (=> bs!1261712 (not (= lambda!288169 lambda!288149))))

(assert (=> bs!1261710 (not (= lambda!288169 lambda!288162))))

(assert (=> bs!1261711 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288169 lambda!288151))))

(assert (=> bs!1261713 (not (= lambda!288169 lambda!288156))))

(assert (=> bs!1261710 (= (= (_1!35783 lt!2225479) (_1!35783 lt!2225382)) (= lambda!288169 lambda!288161))))

(assert (=> bs!1261713 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288169 lambda!288155))))

(assert (=> bs!1261710 (not (= lambda!288169 lambda!288163))))

(assert (=> bs!1261714 (not (= lambda!288169 lambda!288160))))

(assert (=> bs!1261714 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288169 lambda!288159))))

(assert (=> bs!1261712 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288169 lambda!288148))))

(assert (=> b!5453924 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225473) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288169 lambda!288167))))

(assert (=> bs!1261711 (not (= lambda!288169 lambda!288152))))

(assert (=> bs!1261713 (not (= lambda!288169 lambda!288158))))

(assert (=> bs!1261713 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288169 lambda!288157))))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(declare-fun lambda!288170 () Int)

(assert (=> b!5453924 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225473) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288170 lambda!288168))))

(assert (=> bs!1261711 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288170 lambda!288154))))

(assert (=> bs!1261712 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288170 lambda!288149))))

(assert (=> bs!1261710 (not (= lambda!288170 lambda!288162))))

(assert (=> bs!1261711 (not (= lambda!288170 lambda!288151))))

(assert (=> bs!1261713 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288170 lambda!288156))))

(assert (=> bs!1261710 (not (= lambda!288170 lambda!288161))))

(assert (=> bs!1261713 (not (= lambda!288170 lambda!288155))))

(assert (=> bs!1261710 (= (= (_1!35783 lt!2225479) (_1!35783 lt!2225382)) (= lambda!288170 lambda!288163))))

(assert (=> bs!1261714 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288170 lambda!288160))))

(assert (=> b!5453924 (not (= lambda!288170 lambda!288169))))

(assert (=> bs!1261711 (not (= lambda!288170 lambda!288153))))

(assert (=> bs!1261714 (not (= lambda!288170 lambda!288159))))

(assert (=> bs!1261712 (not (= lambda!288170 lambda!288148))))

(assert (=> b!5453924 (not (= lambda!288170 lambda!288167))))

(assert (=> bs!1261711 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288170 lambda!288152))))

(assert (=> bs!1261713 (= (and (= (_1!35783 lt!2225479) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288170 lambda!288158))))

(assert (=> bs!1261713 (not (= lambda!288170 lambda!288157))))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(declare-fun lambda!288171 () Int)

(assert (=> b!5453924 (not (= lambda!288171 lambda!288168))))

(assert (=> bs!1261711 (not (= lambda!288171 lambda!288154))))

(assert (=> bs!1261712 (not (= lambda!288171 lambda!288149))))

(assert (=> bs!1261710 (= (= (_1!35783 lt!2225479) (_1!35783 lt!2225382)) (= lambda!288171 lambda!288162))))

(assert (=> bs!1261711 (not (= lambda!288171 lambda!288151))))

(assert (=> bs!1261713 (not (= lambda!288171 lambda!288156))))

(assert (=> bs!1261710 (not (= lambda!288171 lambda!288161))))

(assert (=> b!5453924 (not (= lambda!288171 lambda!288170))))

(assert (=> bs!1261713 (not (= lambda!288171 lambda!288155))))

(assert (=> bs!1261710 (not (= lambda!288171 lambda!288163))))

(assert (=> bs!1261714 (not (= lambda!288171 lambda!288160))))

(assert (=> b!5453924 (not (= lambda!288171 lambda!288169))))

(assert (=> bs!1261711 (not (= lambda!288171 lambda!288153))))

(assert (=> bs!1261714 (not (= lambda!288171 lambda!288159))))

(assert (=> bs!1261712 (not (= lambda!288171 lambda!288148))))

(assert (=> b!5453924 (not (= lambda!288171 lambda!288167))))

(assert (=> bs!1261711 (not (= lambda!288171 lambda!288152))))

(assert (=> bs!1261713 (not (= lambda!288171 lambda!288158))))

(assert (=> bs!1261713 (not (= lambda!288171 lambda!288157))))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(assert (=> b!5453924 true))

(declare-fun bs!1261715 () Bool)

(declare-fun b!5453934 () Bool)

(assert (= bs!1261715 (and b!5453934 b!5453924)))

(declare-fun lambda!288172 () Int)

(assert (=> bs!1261715 (not (= lambda!288172 lambda!288168))))

(declare-fun bs!1261716 () Bool)

(assert (= bs!1261716 (and b!5453934 b!5453908)))

(assert (=> bs!1261716 (not (= lambda!288172 lambda!288154))))

(declare-fun bs!1261717 () Bool)

(assert (= bs!1261717 (and b!5453934 b!5453931)))

(assert (=> bs!1261717 (not (= lambda!288172 lambda!288149))))

(declare-fun bs!1261718 () Bool)

(assert (= bs!1261718 (and b!5453934 b!5453914)))

(assert (=> bs!1261718 (not (= lambda!288172 lambda!288162))))

(assert (=> bs!1261716 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288172 lambda!288151))))

(assert (=> bs!1261718 (= (= Nil!62018 (_1!35783 lt!2225382)) (= lambda!288172 lambda!288161))))

(assert (=> bs!1261715 (not (= lambda!288172 lambda!288170))))

(declare-fun bs!1261719 () Bool)

(assert (= bs!1261719 (and b!5453934 b!5453953)))

(assert (=> bs!1261719 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288172 lambda!288155))))

(assert (=> bs!1261718 (not (= lambda!288172 lambda!288163))))

(declare-fun bs!1261720 () Bool)

(assert (= bs!1261720 (and b!5453934 b!5453946)))

(assert (=> bs!1261720 (not (= lambda!288172 lambda!288160))))

(assert (=> bs!1261715 (= (= Nil!62018 (_1!35783 lt!2225479)) (= lambda!288172 lambda!288169))))

(assert (=> bs!1261716 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288172 lambda!288153))))

(assert (=> bs!1261720 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288172 lambda!288159))))

(assert (=> bs!1261717 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288172 lambda!288148))))

(assert (=> bs!1261715 (not (= lambda!288172 lambda!288171))))

(assert (=> bs!1261719 (not (= lambda!288172 lambda!288156))))

(assert (=> bs!1261715 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225473) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288172 lambda!288167))))

(assert (=> bs!1261716 (not (= lambda!288172 lambda!288152))))

(assert (=> bs!1261719 (not (= lambda!288172 lambda!288158))))

(assert (=> bs!1261719 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288172 lambda!288157))))

(assert (=> b!5453934 true))

(assert (=> b!5453934 true))

(declare-fun lambda!288173 () Int)

(assert (=> bs!1261716 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225531)) (= lambda!288173 lambda!288154))))

(assert (=> bs!1261717 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288173 lambda!288149))))

(assert (=> bs!1261718 (not (= lambda!288173 lambda!288162))))

(assert (=> bs!1261716 (not (= lambda!288173 lambda!288151))))

(assert (=> bs!1261718 (not (= lambda!288173 lambda!288161))))

(assert (=> bs!1261715 (= (= Nil!62018 (_1!35783 lt!2225479)) (= lambda!288173 lambda!288170))))

(assert (=> bs!1261719 (not (= lambda!288173 lambda!288155))))

(assert (=> bs!1261718 (= (= Nil!62018 (_1!35783 lt!2225382)) (= lambda!288173 lambda!288163))))

(assert (=> bs!1261720 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288173 lambda!288160))))

(assert (=> bs!1261715 (not (= lambda!288173 lambda!288169))))

(assert (=> bs!1261716 (not (= lambda!288173 lambda!288153))))

(assert (=> b!5453934 (not (= lambda!288173 lambda!288172))))

(assert (=> bs!1261715 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225473) (= lt!2225374 (regTwo!31074 r!7292))) (= lambda!288173 lambda!288168))))

(assert (=> bs!1261720 (not (= lambda!288173 lambda!288159))))

(assert (=> bs!1261717 (not (= lambda!288173 lambda!288148))))

(assert (=> bs!1261715 (not (= lambda!288173 lambda!288171))))

(assert (=> bs!1261719 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225518)) (= lambda!288173 lambda!288156))))

(assert (=> bs!1261715 (not (= lambda!288173 lambda!288167))))

(assert (=> bs!1261716 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225532)) (= lambda!288173 lambda!288152))))

(assert (=> bs!1261719 (= (and (= Nil!62018 s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= lt!2225374 lt!2225526)) (= lambda!288173 lambda!288158))))

(assert (=> bs!1261719 (not (= lambda!288173 lambda!288157))))

(assert (=> b!5453934 true))

(assert (=> b!5453934 true))

(declare-fun lambda!288174 () Int)

(assert (=> bs!1261716 (not (= lambda!288174 lambda!288154))))

(assert (=> bs!1261717 (not (= lambda!288174 lambda!288149))))

(assert (=> bs!1261718 (= (= Nil!62018 (_1!35783 lt!2225382)) (= lambda!288174 lambda!288162))))

(assert (=> bs!1261716 (not (= lambda!288174 lambda!288151))))

(assert (=> b!5453934 (not (= lambda!288174 lambda!288173))))

(assert (=> bs!1261718 (not (= lambda!288174 lambda!288161))))

(assert (=> bs!1261715 (not (= lambda!288174 lambda!288170))))

(assert (=> bs!1261719 (not (= lambda!288174 lambda!288155))))

(assert (=> bs!1261718 (not (= lambda!288174 lambda!288163))))

(assert (=> bs!1261720 (not (= lambda!288174 lambda!288160))))

(assert (=> bs!1261715 (not (= lambda!288174 lambda!288169))))

(assert (=> bs!1261716 (not (= lambda!288174 lambda!288153))))

(assert (=> b!5453934 (not (= lambda!288174 lambda!288172))))

(assert (=> bs!1261715 (not (= lambda!288174 lambda!288168))))

(assert (=> bs!1261720 (not (= lambda!288174 lambda!288159))))

(assert (=> bs!1261717 (not (= lambda!288174 lambda!288148))))

(assert (=> bs!1261715 (= (= Nil!62018 (_1!35783 lt!2225479)) (= lambda!288174 lambda!288171))))

(assert (=> bs!1261719 (not (= lambda!288174 lambda!288156))))

(assert (=> bs!1261715 (not (= lambda!288174 lambda!288167))))

(assert (=> bs!1261716 (not (= lambda!288174 lambda!288152))))

(assert (=> bs!1261719 (not (= lambda!288174 lambda!288158))))

(assert (=> bs!1261719 (not (= lambda!288174 lambda!288157))))

(assert (=> b!5453934 true))

(assert (=> b!5453934 true))

(declare-fun bs!1261721 () Bool)

(declare-fun b!5453915 () Bool)

(assert (= bs!1261721 (and b!5453915 b!5453914)))

(declare-fun lambda!288175 () Int)

(assert (=> bs!1261721 (= lambda!288175 lambda!288164)))

(declare-fun bs!1261722 () Bool)

(assert (= bs!1261722 (and b!5453915 b!5453924)))

(assert (=> bs!1261722 (= lambda!288175 lambda!288166)))

(declare-fun bm!396152 () Bool)

(declare-fun call!396264 () Bool)

(declare-fun call!396269 () Bool)

(assert (=> bm!396152 (= call!396264 call!396269)))

(declare-fun bm!396153 () Bool)

(declare-datatypes ((Unit!154792 0))(
  ( (Unit!154793) )
))
(declare-fun call!396276 () Unit!154792)

(declare-fun call!396305 () Unit!154792)

(assert (=> bm!396153 (= call!396276 call!396305)))

(declare-fun b!5453905 () Bool)

(declare-fun lt!2225412 () Bool)

(assert (=> b!5453905 (not lt!2225412)))

(declare-fun lt!2225392 () Unit!154792)

(declare-fun e!3377719 () Unit!154792)

(assert (=> b!5453905 (= lt!2225392 e!3377719)))

(declare-fun c!952473 () Bool)

(assert (=> b!5453905 (= c!952473 lt!2225412)))

(declare-fun call!396260 () Bool)

(assert (=> b!5453905 (= lt!2225412 call!396260)))

(declare-fun e!3377709 () Unit!154792)

(declare-fun Unit!154794 () Unit!154792)

(assert (=> b!5453905 (= e!3377709 Unit!154794)))

(declare-fun b!5453906 () Bool)

(declare-fun e!3377688 () Unit!154792)

(declare-fun Unit!154795 () Unit!154792)

(assert (=> b!5453906 (= e!3377688 Unit!154795)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62143 0))(
  ( (Nil!62019) (Cons!62019 (h!68467 Regex!15281) (t!375372 List!62143)) )
))
(declare-datatypes ((Context!9330 0))(
  ( (Context!9331 (exprs!5165 List!62143)) )
))
(declare-fun lt!2225534 () (InoxSet Context!9330))

(declare-fun lt!2225370 () Unit!154792)

(declare-fun lt!2225384 () (InoxSet Context!9330))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!518 ((InoxSet Context!9330) (InoxSet Context!9330) List!62142) Unit!154792)

(assert (=> b!5453906 (= lt!2225370 (lemmaZipperConcatMatchesSameAsBothZippers!518 lt!2225534 lt!2225384 (t!375371 s!2326)))))

(declare-fun res!2322624 () Bool)

(declare-fun matchZipper!1525 ((InoxSet Context!9330) List!62142) Bool)

(assert (=> b!5453906 (= res!2322624 (matchZipper!1525 lt!2225534 (t!375371 s!2326)))))

(declare-fun e!3377703 () Bool)

(assert (=> b!5453906 (=> res!2322624 e!3377703)))

(assert (=> b!5453906 (= (matchZipper!1525 ((_ map or) lt!2225534 lt!2225384) (t!375371 s!2326)) e!3377703)))

(declare-fun bm!396154 () Bool)

(declare-fun call!396215 () Bool)

(declare-fun call!396283 () Bool)

(assert (=> bm!396154 (= call!396215 call!396283)))

(declare-fun bm!396155 () Bool)

(declare-fun call!396290 () (InoxSet Context!9330))

(declare-fun call!396322 () (InoxSet Context!9330))

(assert (=> bm!396155 (= call!396290 call!396322)))

(declare-fun b!5453907 () Bool)

(declare-fun e!3377711 () Bool)

(declare-fun call!396273 () Bool)

(assert (=> b!5453907 (= e!3377711 call!396273)))

(declare-fun bm!396156 () Bool)

(declare-fun call!396179 () Bool)

(declare-fun c!952465 () Bool)

(declare-fun c!952462 () Bool)

(declare-fun Exists!2462 (Int) Bool)

(assert (=> bm!396156 (= call!396179 (Exists!2462 (ite c!952465 lambda!288161 (ite c!952462 lambda!288169 lambda!288174))))))

(declare-fun e!3377720 () Unit!154792)

(declare-fun Unit!154796 () Unit!154792)

(assert (=> b!5453908 (= e!3377720 Unit!154796)))

(declare-fun lt!2225490 () List!62143)

(declare-datatypes ((List!62144 0))(
  ( (Nil!62020) (Cons!62020 (h!68468 Context!9330) (t!375373 List!62144)) )
))
(declare-fun zl!343 () List!62144)

(assert (=> b!5453908 (= lt!2225490 (Cons!62019 (regTwo!31074 (regOne!31074 r!7292)) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun lt!2225511 () Context!9330)

(assert (=> b!5453908 (= lt!2225511 (Context!9331 lt!2225490))))

(declare-fun lt!2225441 () (InoxSet Context!9330))

(declare-fun call!396351 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225441 call!396351)))

(declare-fun lt!2225541 () (InoxSet Context!9330))

(declare-fun call!396316 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225541 call!396316)))

(declare-fun lt!2225549 () Unit!154792)

(declare-fun call!396229 () Unit!154792)

(assert (=> b!5453908 (= lt!2225549 call!396229)))

(declare-fun lt!2225535 () Bool)

(declare-fun call!396296 () Bool)

(assert (=> b!5453908 (= lt!2225535 call!396296)))

(declare-fun res!2322605 () Bool)

(assert (=> b!5453908 (= res!2322605 lt!2225535)))

(assert (=> b!5453908 (=> res!2322605 e!3377711)))

(declare-fun call!396230 () Bool)

(assert (=> b!5453908 (= call!396230 e!3377711)))

(declare-fun lt!2225367 () List!62143)

(assert (=> b!5453908 (= lt!2225367 (Cons!62019 (regOne!31074 (regOne!31074 r!7292)) lt!2225490))))

(declare-fun lt!2225440 () Context!9330)

(assert (=> b!5453908 (= lt!2225440 (Context!9331 lt!2225367))))

(declare-fun lt!2225450 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225450 (store ((as const (Array Context!9330 Bool)) false) lt!2225440 true))))

(declare-fun lt!2225448 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225448 (store ((as const (Array Context!9330 Bool)) false) lt!2225511 true))))

(declare-fun lt!2225433 () (InoxSet Context!9330))

(declare-fun call!396337 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225433 call!396337)))

(declare-fun lt!2225476 () Unit!154792)

(declare-fun call!396216 () Unit!154792)

(assert (=> b!5453908 (= lt!2225476 call!396216)))

(declare-fun call!396255 () (InoxSet Context!9330))

(assert (=> b!5453908 (= call!396255 call!396337)))

(declare-fun lt!2225439 () (InoxSet Context!9330))

(assert (=> b!5453908 (= lt!2225439 call!396322)))

(declare-fun lt!2225529 () Unit!154792)

(declare-fun call!396186 () Unit!154792)

(assert (=> b!5453908 (= lt!2225529 call!396186)))

(declare-fun call!396253 () (InoxSet Context!9330))

(assert (=> b!5453908 (= call!396253 call!396322)))

(declare-fun lt!2225457 () Unit!154792)

(declare-fun call!396194 () Unit!154792)

(assert (=> b!5453908 (= lt!2225457 call!396194)))

(declare-fun res!2322608 () Bool)

(assert (=> b!5453908 (= res!2322608 lt!2225535)))

(declare-fun e!3377692 () Bool)

(assert (=> b!5453908 (=> res!2322608 e!3377692)))

(declare-fun call!396278 () Bool)

(assert (=> b!5453908 (= call!396278 e!3377692)))

(declare-fun lt!2225530 () Regex!15281)

(declare-fun call!396225 () Regex!15281)

(assert (=> b!5453908 (= lt!2225530 call!396225)))

(declare-fun lt!2225493 () Unit!154792)

(declare-fun call!396162 () Unit!154792)

(assert (=> b!5453908 (= lt!2225493 call!396162)))

(declare-fun lt!2225461 () Bool)

(declare-fun call!396360 () Bool)

(assert (=> b!5453908 (= lt!2225461 call!396360)))

(declare-fun call!396325 () Bool)

(assert (=> b!5453908 (= lt!2225461 call!396325)))

(declare-fun call!396341 () Regex!15281)

(assert (=> b!5453908 (= lt!2225532 call!396341)))

(declare-fun lt!2225501 () Unit!154792)

(declare-fun call!396182 () Unit!154792)

(assert (=> b!5453908 (= lt!2225501 call!396182)))

(declare-fun lt!2225398 () Bool)

(declare-fun call!396270 () Bool)

(assert (=> b!5453908 (= lt!2225398 call!396270)))

(declare-fun call!396277 () Bool)

(assert (=> b!5453908 (= lt!2225398 call!396277)))

(declare-fun lt!2225536 () Unit!154792)

(declare-fun call!396170 () Unit!154792)

(assert (=> b!5453908 (= lt!2225536 call!396170)))

(declare-fun call!396355 () Bool)

(assert (=> b!5453908 (= lt!2225461 call!396355)))

(declare-fun lt!2225432 () Unit!154792)

(declare-fun call!396354 () Unit!154792)

(assert (=> b!5453908 (= lt!2225432 call!396354)))

(declare-fun call!396349 () Bool)

(declare-fun call!396249 () Bool)

(assert (=> b!5453908 (= call!396349 call!396249)))

(declare-fun lt!2225569 () Unit!154792)

(declare-fun call!396271 () Unit!154792)

(assert (=> b!5453908 (= lt!2225569 call!396271)))

(declare-fun call!396226 () Bool)

(declare-fun call!396243 () Bool)

(assert (=> b!5453908 (= call!396226 call!396243)))

(declare-fun lt!2225489 () Unit!154792)

(declare-fun call!396284 () Unit!154792)

(assert (=> b!5453908 (= lt!2225489 call!396284)))

(declare-fun call!396201 () Bool)

(assert (=> b!5453908 (= lt!2225398 call!396201)))

(declare-fun call!396312 () Regex!15281)

(assert (=> b!5453908 (= lt!2225531 call!396312)))

(declare-fun lt!2225466 () Unit!154792)

(declare-fun call!396222 () Unit!154792)

(assert (=> b!5453908 (= lt!2225466 call!396222)))

(declare-fun call!396333 () Bool)

(assert (=> b!5453908 (= call!396333 call!396269)))

(declare-fun lt!2225469 () Unit!154792)

(assert (=> b!5453908 (= lt!2225469 call!396305)))

(declare-fun call!396254 () Bool)

(declare-fun call!396172 () Bool)

(assert (=> b!5453908 (= call!396254 call!396172)))

(declare-fun lt!2225562 () Unit!154792)

(declare-fun call!396334 () Unit!154792)

(assert (=> b!5453908 (= lt!2225562 call!396334)))

(declare-fun res!2322607 () Bool)

(declare-fun call!396311 () Bool)

(declare-fun call!396206 () Bool)

(assert (=> b!5453908 (= res!2322607 (= call!396311 call!396206))))

(declare-fun e!3377695 () Bool)

(assert (=> b!5453908 (=> (not res!2322607) (not e!3377695))))

(assert (=> b!5453908 e!3377695))

(declare-fun bm!396157 () Bool)

(declare-fun call!396165 () Bool)

(assert (=> bm!396157 (= call!396165 call!396296)))

(declare-fun c!952467 () Bool)

(declare-fun c!952471 () Bool)

(declare-fun bm!396158 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> bm!396158 (= call!396305 (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)))))

(declare-fun bm!396159 () Bool)

(declare-fun lt!2225487 () (InoxSet Context!9330))

(declare-fun c!952472 () Bool)

(declare-fun lt!2225418 () (InoxSet Context!9330))

(declare-fun call!396178 () Bool)

(declare-fun c!952469 () Bool)

(declare-fun lt!2225506 () (InoxSet Context!9330))

(assert (=> bm!396159 (= call!396178 (matchZipper!1525 (ite c!952472 lt!2225418 (ite c!952469 ((_ map or) lt!2225487 lt!2225506) lt!2225450)) (ite (or c!952472 c!952469) (t!375371 s!2326) s!2326)))))

(declare-fun bm!396160 () Bool)

(declare-fun call!396242 () Bool)

(assert (=> bm!396160 (= call!396242 call!396260)))

(declare-fun b!5453909 () Bool)

(declare-fun e!3377705 () Bool)

(declare-fun tp_is_empty!39815 () Bool)

(declare-fun tp!1501702 () Bool)

(assert (=> b!5453909 (= e!3377705 (and tp_is_empty!39815 tp!1501702))))

(declare-fun bm!396161 () Bool)

(declare-fun call!396352 () Bool)

(assert (=> bm!396161 (= call!396352 call!396179)))

(declare-fun bm!396162 () Bool)

(declare-fun call!396164 () Bool)

(assert (=> bm!396162 (= call!396296 call!396164)))

(declare-fun bm!396163 () Bool)

(assert (=> bm!396163 (= call!396271 (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))))))

(declare-fun b!5453910 () Bool)

(declare-fun res!2322603 () Bool)

(declare-fun e!3377723 () Bool)

(assert (=> b!5453910 (=> res!2322603 e!3377723)))

(declare-fun isEmpty!34001 (List!62144) Bool)

(assert (=> b!5453910 (= res!2322603 (not (isEmpty!34001 (t!375373 zl!343))))))

(declare-fun bm!396164 () Bool)

(declare-fun call!396168 () Unit!154792)

(declare-fun call!396244 () Unit!154792)

(assert (=> bm!396164 (= call!396168 call!396244)))

(declare-fun bm!396165 () Bool)

(declare-fun call!396265 () Bool)

(declare-fun call!396227 () Bool)

(assert (=> bm!396165 (= call!396265 call!396227)))

(declare-fun bm!396166 () Bool)

(declare-fun call!396217 () Unit!154792)

(assert (=> bm!396166 (= call!396216 call!396217)))

(declare-fun bm!396167 () Bool)

(declare-fun call!396219 () Unit!154792)

(declare-fun call!396291 () Unit!154792)

(assert (=> bm!396167 (= call!396219 call!396291)))

(declare-fun bm!396168 () Bool)

(declare-fun call!396261 () Unit!154792)

(declare-fun call!396303 () Unit!154792)

(assert (=> bm!396168 (= call!396261 call!396303)))

(declare-fun bm!396169 () Bool)

(declare-fun call!396302 () Bool)

(assert (=> bm!396169 (= call!396302 call!396249)))

(declare-fun bm!396170 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1570 (Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> bm!396170 (= call!396222 (lemmaFindConcatSeparationEquivalentToExists!1570 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun bm!396171 () Bool)

(declare-fun call!396363 () Unit!154792)

(assert (=> bm!396171 (= call!396363 call!396170)))

(declare-fun b!5453911 () Bool)

(declare-fun Unit!154797 () Unit!154792)

(assert (=> b!5453911 (= e!3377688 Unit!154797)))

(declare-fun bm!396172 () Bool)

(declare-fun call!396185 () Bool)

(assert (=> bm!396172 (= call!396185 call!396230)))

(declare-fun bm!396173 () Bool)

(declare-fun call!396335 () Bool)

(declare-fun call!396308 () Bool)

(assert (=> bm!396173 (= call!396335 call!396308)))

(declare-fun bm!396174 () Bool)

(declare-fun call!396218 () Regex!15281)

(assert (=> bm!396174 (= call!396218 call!396225)))

(declare-fun call!396268 () List!62142)

(declare-fun lt!2225499 () tuple2!64960)

(declare-fun lt!2225415 () tuple2!64960)

(declare-fun bm!396175 () Bool)

(declare-fun ++!13641 (List!62142 List!62142) List!62142)

(assert (=> bm!396175 (= call!396268 (++!13641 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))

(declare-fun b!5453912 () Bool)

(declare-fun e!3377721 () Bool)

(assert (=> b!5453912 e!3377721))

(declare-fun res!2322600 () Bool)

(assert (=> b!5453912 (=> (not res!2322600) (not e!3377721))))

(declare-fun lt!2225471 () Bool)

(declare-fun call!396340 () Bool)

(assert (=> b!5453912 (= res!2322600 (= lt!2225471 call!396340))))

(declare-fun lt!2225509 () Unit!154792)

(declare-fun call!396300 () Unit!154792)

(assert (=> b!5453912 (= lt!2225509 call!396300)))

(declare-fun lt!2225400 () Bool)

(declare-fun call!396353 () Bool)

(assert (=> b!5453912 (= lt!2225400 call!396353)))

(declare-fun lt!2225550 () Unit!154792)

(declare-fun call!396223 () Unit!154792)

(assert (=> b!5453912 (= lt!2225550 call!396223)))

(assert (=> b!5453912 (= lt!2225471 lt!2225400)))

(declare-fun call!396328 () Bool)

(assert (=> b!5453912 (= lt!2225400 call!396328)))

(declare-fun call!396228 () Bool)

(assert (=> b!5453912 (= lt!2225471 call!396228)))

(declare-fun lt!2225522 () Regex!15281)

(assert (=> b!5453912 (= lt!2225522 (Union!15281 (Concat!24126 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292)) (Concat!24126 (regTwo!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292))))))

(declare-fun lt!2225428 () Regex!15281)

(assert (=> b!5453912 (= lt!2225428 (Concat!24126 (regOne!31074 r!7292) (regTwo!31074 r!7292)))))

(declare-fun lt!2225434 () Unit!154792)

(declare-fun lemmaConcatDistributesInUnion!28 (Regex!15281 Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> b!5453912 (= lt!2225434 (lemmaConcatDistributesInUnion!28 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292) s!2326))))

(declare-fun lt!2225477 () Bool)

(declare-fun lt!2225379 () Regex!15281)

(declare-fun matchRSpec!2384 (Regex!15281 List!62142) Bool)

(assert (=> b!5453912 (= lt!2225477 (matchRSpec!2384 lt!2225379 s!2326))))

(declare-fun lt!2225453 () Unit!154792)

(declare-fun call!396176 () Unit!154792)

(assert (=> b!5453912 (= lt!2225453 call!396176)))

(declare-fun lt!2225564 () Bool)

(declare-fun call!396187 () Bool)

(assert (=> b!5453912 (= lt!2225564 call!396187)))

(declare-fun lt!2225385 () Unit!154792)

(declare-fun lt!2225391 () Regex!15281)

(declare-fun mainMatchTheorem!2384 (Regex!15281 List!62142) Unit!154792)

(assert (=> b!5453912 (= lt!2225385 (mainMatchTheorem!2384 lt!2225391 s!2326))))

(assert (=> b!5453912 (= lt!2225477 call!396164)))

(declare-fun call!396231 () Bool)

(assert (=> b!5453912 (= lt!2225477 call!396231)))

(declare-fun lt!2225507 () Unit!154792)

(declare-fun call!396237 () Unit!154792)

(assert (=> b!5453912 (= lt!2225507 call!396237)))

(declare-fun call!396207 () Regex!15281)

(assert (=> b!5453912 (= lt!2225379 call!396207)))

(declare-fun call!396200 () Bool)

(assert (=> b!5453912 (= lt!2225564 call!396200)))

(declare-fun call!396280 () Bool)

(assert (=> b!5453912 (= lt!2225564 call!396280)))

(declare-fun lt!2225435 () Unit!154792)

(declare-fun call!396281 () Unit!154792)

(assert (=> b!5453912 (= lt!2225435 call!396281)))

(declare-fun call!396175 () Regex!15281)

(assert (=> b!5453912 (= lt!2225391 call!396175)))

(declare-fun lt!2225475 () Unit!154792)

(declare-fun e!3377716 () Unit!154792)

(assert (=> b!5453912 (= lt!2225475 e!3377716)))

(declare-fun c!952464 () Bool)

(declare-fun nullable!5450 (Regex!15281) Bool)

(assert (=> b!5453912 (= c!952464 (nullable!5450 (regTwo!31075 (regOne!31074 r!7292))))))

(declare-fun call!396184 () (InoxSet Context!9330))

(declare-fun call!396357 () (InoxSet Context!9330))

(assert (=> b!5453912 (= call!396184 call!396357)))

(declare-fun lt!2225557 () Unit!154792)

(declare-fun call!396298 () Unit!154792)

(assert (=> b!5453912 (= lt!2225557 call!396298)))

(declare-fun lt!2225556 () (InoxSet Context!9330))

(assert (=> b!5453912 (= lt!2225556 call!396357)))

(declare-fun lt!2225538 () Unit!154792)

(declare-fun e!3377707 () Unit!154792)

(assert (=> b!5453912 (= lt!2225538 e!3377707)))

(declare-fun c!952470 () Bool)

(declare-fun call!396173 () Bool)

(assert (=> b!5453912 (= c!952470 call!396173)))

(declare-fun call!396198 () (InoxSet Context!9330))

(declare-fun call!396343 () (InoxSet Context!9330))

(assert (=> b!5453912 (= call!396198 call!396343)))

(declare-fun lt!2225474 () Unit!154792)

(assert (=> b!5453912 (= lt!2225474 call!396217)))

(declare-fun lt!2225554 () (InoxSet Context!9330))

(assert (=> b!5453912 (= lt!2225554 call!396343)))

(declare-fun lt!2225377 () (InoxSet Context!9330))

(declare-fun lt!2225566 () Context!9330)

(assert (=> b!5453912 (= lt!2225377 (store ((as const (Array Context!9330 Bool)) false) lt!2225566 true))))

(declare-fun lt!2225552 () List!62143)

(assert (=> b!5453912 (= lt!2225566 (Context!9331 lt!2225552))))

(assert (=> b!5453912 (= lt!2225552 (Cons!62019 (regTwo!31075 (regOne!31074 r!7292)) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun lt!2225376 () (InoxSet Context!9330))

(declare-fun lt!2225540 () Context!9330)

(assert (=> b!5453912 (= lt!2225376 (store ((as const (Array Context!9330 Bool)) false) lt!2225540 true))))

(declare-fun lt!2225498 () List!62143)

(assert (=> b!5453912 (= lt!2225540 (Context!9331 lt!2225498))))

(assert (=> b!5453912 (= lt!2225498 (Cons!62019 (regOne!31075 (regOne!31074 r!7292)) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun e!3377713 () Bool)

(assert (=> b!5453912 (= call!396325 e!3377713)))

(declare-fun res!2322602 () Bool)

(assert (=> b!5453912 (=> res!2322602 e!3377713)))

(declare-fun lt!2225431 () Bool)

(assert (=> b!5453912 (= res!2322602 lt!2225431)))

(declare-fun call!396251 () Bool)

(assert (=> b!5453912 (= lt!2225431 call!396251)))

(declare-fun lt!2225563 () Unit!154792)

(assert (=> b!5453912 (= lt!2225563 call!396229)))

(assert (=> b!5453912 (= lt!2225506 call!396351)))

(declare-fun call!396232 () (InoxSet Context!9330))

(assert (=> b!5453912 (= lt!2225487 call!396232)))

(declare-fun e!3377693 () Unit!154792)

(declare-fun Unit!154798 () Unit!154792)

(assert (=> b!5453912 (= e!3377693 Unit!154798)))

(declare-fun bm!396176 () Bool)

(declare-fun call!396195 () Bool)

(assert (=> bm!396176 (= call!396195 call!396311)))

(declare-fun bm!396177 () Bool)

(declare-fun call!396267 () Bool)

(assert (=> bm!396177 (= call!396267 call!396360)))

(declare-fun b!5453913 () Bool)

(declare-fun e!3377722 () Bool)

(assert (=> b!5453913 (= e!3377722 call!396173)))

(declare-fun bm!396178 () Bool)

(declare-fun call!396286 () Bool)

(declare-fun call!396259 () Bool)

(assert (=> bm!396178 (= call!396286 call!396259)))

(declare-fun bm!396179 () Bool)

(assert (=> bm!396179 (= call!396243 (Exists!2462 (ite c!952471 lambda!288152 (ite c!952467 lambda!288158 (ite c!952465 lambda!288159 (ite c!952462 lambda!288167 lambda!288172))))))))

(declare-fun e!3377700 () Unit!154792)

(declare-fun Unit!154799 () Unit!154792)

(assert (=> b!5453914 (= e!3377700 Unit!154799)))

(declare-fun lt!2225512 () Unit!154792)

(declare-fun call!396238 () Unit!154792)

(assert (=> b!5453914 (= lt!2225512 call!396238)))

(declare-fun call!396326 () Bool)

(assert (=> b!5453914 (= call!396326 call!396286)))

(declare-fun lt!2225500 () Unit!154792)

(declare-fun call!396275 () Unit!154792)

(assert (=> b!5453914 (= lt!2225500 call!396275)))

(declare-datatypes ((Option!15392 0))(
  ( (None!15391) (Some!15391 (v!51420 tuple2!64960)) )
))
(declare-fun lt!2225421 () Option!15392)

(declare-fun call!396158 () Option!15392)

(assert (=> b!5453914 (= lt!2225421 call!396158)))

(declare-fun call!396356 () Bool)

(declare-fun call!396329 () Bool)

(assert (=> b!5453914 (= call!396356 call!396329)))

(declare-fun lt!2225425 () Unit!154792)

(assert (=> b!5453914 (= lt!2225425 call!396244)))

(declare-fun call!396258 () Bool)

(declare-fun call!396250 () Bool)

(assert (=> b!5453914 (= call!396258 call!396250)))

(declare-fun lt!2225504 () Unit!154792)

(declare-fun call!396224 () Unit!154792)

(assert (=> b!5453914 (= lt!2225504 call!396224)))

(declare-fun call!396174 () Bool)

(assert (=> b!5453914 (= call!396179 call!396174)))

(declare-fun call!396288 () tuple2!64960)

(assert (=> b!5453914 (= lt!2225499 call!396288)))

(declare-fun lt!2225565 () Unit!154792)

(declare-fun call!396324 () Unit!154792)

(assert (=> b!5453914 (= lt!2225565 call!396324)))

(declare-fun lt!2225463 () List!62142)

(declare-fun call!396211 () List!62142)

(assert (=> b!5453914 (= lt!2225463 call!396211)))

(declare-fun lt!2225429 () List!62142)

(assert (=> b!5453914 (= lt!2225429 call!396268)))

(declare-fun lt!2225515 () List!62142)

(declare-fun call!396313 () List!62142)

(assert (=> b!5453914 (= lt!2225515 call!396313)))

(declare-fun lt!2225455 () List!62142)

(declare-fun call!396348 () List!62142)

(assert (=> b!5453914 (= lt!2225455 call!396348)))

(assert (=> b!5453914 (= lt!2225515 lt!2225455)))

(declare-fun lt!2225533 () Unit!154792)

(declare-fun call!396314 () Unit!154792)

(assert (=> b!5453914 (= lt!2225533 call!396314)))

(assert (=> b!5453914 call!396335))

(declare-fun lt!2225482 () Unit!154792)

(declare-fun call!396161 () Unit!154792)

(assert (=> b!5453914 (= lt!2225482 call!396161)))

(declare-fun call!396248 () Bool)

(assert (=> b!5453914 call!396248))

(declare-fun lt!2225380 () Unit!154792)

(declare-fun call!396221 () Unit!154792)

(assert (=> b!5453914 (= lt!2225380 call!396221)))

(assert (=> b!5453914 (= call!396215 call!396242)))

(declare-fun lt!2225496 () Unit!154792)

(declare-fun call!396213 () Unit!154792)

(assert (=> b!5453914 (= lt!2225496 call!396213)))

(declare-fun call!396272 () Bool)

(assert (=> b!5453914 call!396272))

(declare-fun lt!2225409 () Unit!154792)

(declare-fun call!396192 () Unit!154792)

(assert (=> b!5453914 (= lt!2225409 call!396192)))

(declare-fun lt!2225459 () Unit!154792)

(declare-fun call!396344 () Unit!154792)

(assert (=> b!5453914 (= lt!2225459 call!396344)))

(declare-fun call!396214 () Bool)

(assert (=> b!5453914 call!396214))

(declare-fun lt!2225378 () Unit!154792)

(declare-fun call!396202 () Unit!154792)

(assert (=> b!5453914 (= lt!2225378 call!396202)))

(declare-fun res!2322595 () Bool)

(declare-fun call!396320 () Bool)

(assert (=> b!5453914 (= res!2322595 call!396320)))

(declare-fun e!3377696 () Bool)

(assert (=> b!5453914 (=> (not res!2322595) (not e!3377696))))

(assert (=> b!5453914 e!3377696))

(declare-fun lt!2225568 () Unit!154792)

(declare-fun call!396241 () Unit!154792)

(assert (=> b!5453914 (= lt!2225568 call!396241)))

(declare-fun call!396332 () Bool)

(assert (=> b!5453914 call!396332))

(declare-fun bm!396180 () Bool)

(assert (=> bm!396180 (= call!396173 (nullable!5450 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(declare-fun e!3377714 () Bool)

(declare-fun forall!14584 (List!62143 Int) Bool)

(assert (=> b!5453915 (= e!3377714 (forall!14584 (t!375372 (exprs!5165 (h!68468 zl!343))) lambda!288175))))

(declare-fun c!952461 () Bool)

(declare-fun bm!396181 () Bool)

(declare-fun call!396252 () Bool)

(declare-fun c!952463 () Bool)

(declare-fun z!1189 () (InoxSet Context!9330))

(assert (=> bm!396181 (= call!396252 (matchZipper!1525 (ite (or c!952469 c!952471) z!1189 (ite c!952461 (ite c!952465 z!1189 lt!2225534) (ite c!952463 lt!2225384 z!1189))) (ite (or c!952469 c!952471) s!2326 (ite c!952461 (ite c!952465 s!2326 (t!375371 s!2326)) (ite c!952463 (t!375371 s!2326) s!2326)))))))

(declare-fun b!5453916 () Bool)

(declare-fun res!2322611 () Bool)

(assert (=> b!5453916 (=> res!2322611 e!3377723)))

(declare-fun generalisedConcat!950 (List!62143) Regex!15281)

(assert (=> b!5453916 (= res!2322611 (not (= r!7292 (generalisedConcat!950 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5453917 () Bool)

(declare-fun e!3377717 () Bool)

(declare-fun tp!1501696 () Bool)

(assert (=> b!5453917 (= e!3377717 tp!1501696)))

(declare-fun bm!396182 () Bool)

(declare-fun lambda!288150 () Int)

(declare-fun call!396336 () (InoxSet Context!9330))

(declare-fun lt!2225375 () (InoxSet Context!9330))

(declare-fun lt!2225517 () (InoxSet Context!9330))

(declare-fun lt!2225399 () (InoxSet Context!9330))

(declare-fun flatMap!1008 ((InoxSet Context!9330) Int) (InoxSet Context!9330))

(assert (=> bm!396182 (= call!396336 (flatMap!1008 (ite c!952467 lt!2225517 (ite c!952461 lt!2225399 lt!2225375)) (ite c!952467 lambda!288150 (ite c!952461 lambda!288150 lambda!288150))))))

(declare-fun bm!396183 () Bool)

(declare-fun lt!2225527 () Regex!15281)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!248 (Regex!15281 Regex!15281 List!62142 List!62142) Unit!154792)

(assert (=> bm!396183 (= call!396161 (lemmaTwoRegexMatchThenConcatMatchesConcatString!248 (ite c!952465 lt!2225374 (ite c!952462 (reg!15610 (regOne!31074 r!7292)) lt!2225374)) (ite c!952465 (regTwo!31074 r!7292) (ite c!952462 lt!2225527 (regTwo!31074 r!7292))) (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))

(declare-fun b!5453918 () Bool)

(declare-fun res!2322612 () Bool)

(assert (=> b!5453918 (=> res!2322612 e!3377723)))

(declare-fun generalisedUnion!1210 (List!62143) Regex!15281)

(declare-fun unfocusZipperList!723 (List!62144) List!62143)

(assert (=> b!5453918 (= res!2322612 (not (= r!7292 (generalisedUnion!1210 (unfocusZipperList!723 zl!343)))))))

(declare-fun bm!396184 () Bool)

(declare-fun lt!2225539 () List!62143)

(declare-fun call!396306 () Regex!15281)

(assert (=> bm!396184 (= call!396306 (generalisedConcat!950 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun bm!396185 () Bool)

(declare-fun call!396346 () Bool)

(assert (=> bm!396185 (= call!396346 call!396187)))

(declare-fun bm!396186 () Bool)

(declare-fun call!396321 () Bool)

(assert (=> bm!396186 (= call!396321 call!396346)))

(declare-fun bm!396187 () Bool)

(assert (=> bm!396187 (= call!396172 (Exists!2462 (ite c!952471 lambda!288154 (ite c!952465 lambda!288159 (ite c!952462 lambda!288169 lambda!288173)))))))

(declare-fun b!5453919 () Bool)

(declare-fun e!3377708 () Bool)

(assert (=> b!5453919 (= e!3377708 (matchZipper!1525 lt!2225384 (t!375371 s!2326)))))

(declare-fun bm!396188 () Bool)

(declare-fun call!396188 () Bool)

(assert (=> bm!396188 (= call!396332 call!396188)))

(declare-fun e!3377710 () Bool)

(assert (=> b!5453920 (= e!3377710 e!3377714)))

(declare-fun res!2322615 () Bool)

(assert (=> b!5453920 (=> res!2322615 e!3377714)))

(declare-fun lt!2225452 () (InoxSet Context!9330))

(declare-fun derivationStepZipper!1500 ((InoxSet Context!9330) C!30832) (InoxSet Context!9330))

(assert (=> b!5453920 (= res!2322615 (not (= lt!2225384 (derivationStepZipper!1500 lt!2225452 (h!68466 s!2326)))))))

(declare-fun lt!2225444 () Context!9330)

(declare-fun derivationStepZipperUp!653 (Context!9330 C!30832) (InoxSet Context!9330))

(assert (=> b!5453920 (= (flatMap!1008 lt!2225452 lambda!288150) (derivationStepZipperUp!653 lt!2225444 (h!68466 s!2326)))))

(declare-fun lt!2225423 () Unit!154792)

(declare-fun lemmaFlatMapOnSingletonSet!540 ((InoxSet Context!9330) Context!9330 Int) Unit!154792)

(assert (=> b!5453920 (= lt!2225423 (lemmaFlatMapOnSingletonSet!540 lt!2225452 lt!2225444 lambda!288150))))

(assert (=> b!5453920 (= lt!2225452 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(declare-fun lt!2225386 () Unit!154792)

(declare-fun e!3377697 () Unit!154792)

(assert (=> b!5453920 (= lt!2225386 e!3377697)))

(get-info :version)

(assert (=> b!5453920 (= c!952472 (and ((_ is ElementMatch!15281) (regOne!31074 r!7292)) (= (c!952474 (regOne!31074 r!7292)) (h!68466 s!2326))))))

(declare-fun lt!2225402 () Unit!154792)

(assert (=> b!5453920 (= lt!2225402 e!3377688)))

(declare-fun c!952468 () Bool)

(assert (=> b!5453920 (= c!952468 (nullable!5450 (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> b!5453920 (= (flatMap!1008 z!1189 lambda!288150) (derivationStepZipperUp!653 (h!68468 zl!343) (h!68466 s!2326)))))

(declare-fun lt!2225470 () Unit!154792)

(assert (=> b!5453920 (= lt!2225470 (lemmaFlatMapOnSingletonSet!540 z!1189 (h!68468 zl!343) lambda!288150))))

(assert (=> b!5453920 (= lt!2225384 (derivationStepZipperUp!653 lt!2225444 (h!68466 s!2326)))))

(declare-fun derivationStepZipperDown!729 (Regex!15281 Context!9330 C!30832) (InoxSet Context!9330))

(assert (=> b!5453920 (= lt!2225534 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (h!68468 zl!343))) lt!2225444 (h!68466 s!2326)))))

(assert (=> b!5453920 (= lt!2225444 (Context!9331 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun lt!2225393 () (InoxSet Context!9330))

(assert (=> b!5453920 (= lt!2225393 (derivationStepZipperUp!653 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343))))) (h!68466 s!2326)))))

(declare-fun bm!396189 () Bool)

(declare-fun call!396180 () Bool)

(declare-fun call!396342 () Bool)

(assert (=> bm!396189 (= call!396180 call!396342)))

(declare-fun bm!396190 () Bool)

(declare-fun call!396256 () Bool)

(assert (=> bm!396190 (= call!396256 call!396252)))

(declare-fun b!5453921 () Bool)

(assert (=> b!5453921 (= e!3377713 call!396278)))

(declare-fun bm!396191 () Bool)

(declare-fun call!396319 () Bool)

(assert (=> bm!396191 (= call!396319 call!396243)))

(declare-fun bm!396192 () Bool)

(declare-fun call!396247 () Bool)

(assert (=> bm!396192 (= call!396356 call!396247)))

(declare-fun bm!396193 () Bool)

(declare-fun call!396240 () Bool)

(declare-fun call!396266 () Bool)

(assert (=> bm!396193 (= call!396240 call!396266)))

(declare-fun b!5453922 () Bool)

(declare-fun Unit!154800 () Unit!154792)

(assert (=> b!5453922 (= e!3377707 Unit!154800)))

(declare-fun bm!396194 () Bool)

(declare-fun call!396171 () Unit!154792)

(declare-fun call!396285 () Unit!154792)

(assert (=> bm!396194 (= call!396171 call!396285)))

(declare-fun bm!396195 () Bool)

(declare-fun call!396347 () Unit!154792)

(assert (=> bm!396195 (= call!396347 call!396354)))

(declare-fun lt!2225561 () List!62142)

(declare-fun bm!396196 () Bool)

(declare-fun matchR!7466 (Regex!15281 List!62142) Bool)

(assert (=> bm!396196 (= call!396270 (matchR!7466 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))))))

(declare-fun b!5453923 () Bool)

(declare-fun e!3377689 () Bool)

(assert (=> b!5453923 (= e!3377689 false)))

(declare-fun bm!396197 () Bool)

(declare-fun call!396310 () Bool)

(assert (=> bm!396197 (= call!396283 call!396310)))

(declare-fun bm!396198 () Bool)

(declare-fun lt!2225458 () Option!15392)

(declare-fun get!21386 (Option!15392) tuple2!64960)

(assert (=> bm!396198 (= call!396288 (get!21386 (ite c!952465 lt!2225421 lt!2225458)))))

(declare-fun lt!2225545 () (InoxSet Context!9330))

(declare-fun c!952466 () Bool)

(declare-fun bm!396199 () Bool)

(assert (=> bm!396199 (= call!396251 (matchZipper!1525 (ite c!952469 lt!2225487 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite c!952465 (ite c!952466 z!1189 lt!2225545) z!1189) lt!2225534)))) (ite c!952469 (t!375371 s!2326) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) s!2326) (t!375371 s!2326))))))))

(declare-fun bm!396200 () Bool)

(declare-fun call!396317 () Unit!154792)

(assert (=> bm!396200 (= call!396317 call!396271)))

(declare-fun bm!396201 () Bool)

(declare-fun call!396183 () Bool)

(assert (=> bm!396201 (= call!396183 call!396277)))

(declare-fun bm!396202 () Bool)

(declare-fun call!396193 () Bool)

(assert (=> bm!396202 (= call!396248 call!396193)))

(declare-fun bm!396203 () Bool)

(assert (=> bm!396203 (= call!396278 (matchZipper!1525 (ite c!952469 lt!2225506 ((_ map or) lt!2225441 lt!2225439)) (t!375371 s!2326)))))

(declare-fun lt!2225514 () Option!15392)

(declare-fun call!396181 () Option!15392)

(declare-fun lt!2225497 () Option!15392)

(declare-fun call!396299 () Option!15392)

(declare-fun bm!396204 () Bool)

(declare-fun isDefined!12095 (Option!15392) Bool)

(assert (=> bm!396204 (= call!396349 (isDefined!12095 (ite c!952471 call!396299 (ite c!952467 call!396181 (ite c!952465 lt!2225514 lt!2225497)))))))

(declare-fun bm!396205 () Bool)

(declare-fun lt!2225387 () Context!9330)

(assert (=> bm!396205 (= call!396337 (derivationStepZipperUp!653 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444)) (h!68466 s!2326)))))

(declare-fun bm!396206 () Bool)

(declare-fun call!396157 () Bool)

(declare-fun call!396191 () Bool)

(assert (=> bm!396206 (= call!396157 call!396191)))

(declare-fun lt!2225505 () tuple2!64960)

(declare-fun bm!396207 () Bool)

(assert (=> bm!396207 (= call!396211 (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))

(declare-fun bm!396208 () Bool)

(assert (=> bm!396208 (= call!396250 call!396264)))

(declare-fun e!3377694 () Bool)

(assert (=> b!5453924 e!3377694))

(declare-fun res!2322596 () Bool)

(assert (=> b!5453924 (=> (not res!2322596) (not e!3377694))))

(assert (=> b!5453924 (= res!2322596 call!396335)))

(declare-fun lt!2225403 () Unit!154792)

(assert (=> b!5453924 (= lt!2225403 call!396202)))

(assert (=> b!5453924 call!396320))

(declare-fun lt!2225456 () Unit!154792)

(assert (=> b!5453924 (= lt!2225456 call!396314)))

(assert (=> b!5453924 (= lt!2225561 call!396313)))

(assert (=> b!5453924 (= lt!2225561 call!396348)))

(declare-fun lt!2225407 () List!62142)

(assert (=> b!5453924 (= lt!2225407 (++!13641 (_2!35783 lt!2225505) (_2!35783 lt!2225479)))))

(declare-fun lt!2225495 () List!62142)

(assert (=> b!5453924 (= lt!2225495 call!396211)))

(declare-fun lt!2225544 () Unit!154792)

(assert (=> b!5453924 (= lt!2225544 call!396324)))

(assert (=> b!5453924 (= lt!2225505 call!396288)))

(declare-fun call!396203 () Bool)

(assert (=> b!5453924 (= call!396352 call!396203)))

(declare-fun lt!2225521 () Unit!154792)

(assert (=> b!5453924 (= lt!2225521 call!396168)))

(declare-fun call!396295 () Bool)

(assert (=> b!5453924 (= call!396180 call!396295)))

(declare-fun lt!2225397 () Unit!154792)

(assert (=> b!5453924 (= lt!2225397 call!396224)))

(assert (=> b!5453924 (= call!396356 call!396258)))

(declare-fun call!396297 () Option!15392)

(assert (=> b!5453924 (= lt!2225458 call!396297)))

(declare-fun lt!2225410 () Unit!154792)

(declare-fun call!396307 () Unit!154792)

(assert (=> b!5453924 (= lt!2225410 call!396307)))

(declare-fun call!396315 () Bool)

(assert (=> b!5453924 (= call!396315 call!396286)))

(declare-fun lt!2225437 () Unit!154792)

(declare-fun call!396246 () Unit!154792)

(assert (=> b!5453924 (= lt!2225437 call!396246)))

(assert (=> b!5453924 (= lt!2225479 (get!21386 lt!2225497))))

(assert (=> b!5453924 (= call!396174 call!396329)))

(declare-fun lt!2225395 () Unit!154792)

(declare-fun call!396166 () Unit!154792)

(assert (=> b!5453924 (= lt!2225395 call!396166)))

(declare-fun call!396210 () Bool)

(assert (=> b!5453924 (= call!396265 call!396210)))

(declare-fun call!396287 () Option!15392)

(assert (=> b!5453924 (= lt!2225497 call!396287)))

(declare-fun lt!2225486 () Unit!154792)

(declare-fun call!396196 () Unit!154792)

(assert (=> b!5453924 (= lt!2225486 call!396196)))

(declare-fun call!396177 () Bool)

(assert (=> b!5453924 call!396177))

(declare-fun lt!2225542 () Unit!154792)

(assert (=> b!5453924 (= lt!2225542 call!396238)))

(declare-fun call!396159 () Bool)

(assert (=> b!5453924 call!396159))

(declare-fun lt!2225567 () Regex!15281)

(assert (=> b!5453924 (= lt!2225567 (Concat!24126 lt!2225473 (regTwo!31074 r!7292)))))

(assert (=> b!5453924 (= lt!2225473 (Concat!24126 (reg!15610 (regOne!31074 r!7292)) lt!2225374))))

(declare-fun lt!2225472 () Unit!154792)

(declare-fun call!396234 () Unit!154792)

(assert (=> b!5453924 (= lt!2225472 call!396234)))

(declare-fun e!3377704 () Bool)

(assert (=> b!5453924 e!3377704))

(declare-fun res!2322594 () Bool)

(assert (=> b!5453924 (=> (not res!2322594) (not e!3377704))))

(declare-fun call!396167 () Bool)

(assert (=> b!5453924 (= res!2322594 call!396167)))

(declare-fun lt!2225417 () Unit!154792)

(declare-fun call!396318 () Unit!154792)

(assert (=> b!5453924 (= lt!2225417 call!396318)))

(assert (=> b!5453924 (= call!396326 call!396273)))

(declare-fun lt!2225369 () Unit!154792)

(declare-fun call!396160 () Unit!154792)

(assert (=> b!5453924 (= lt!2225369 call!396160)))

(declare-fun call!396205 () Bool)

(assert (=> b!5453924 (= call!396206 call!396205)))

(declare-fun lt!2225390 () Unit!154792)

(declare-fun call!396358 () Unit!154792)

(assert (=> b!5453924 (= lt!2225390 call!396358)))

(assert (=> b!5453924 call!396214))

(declare-fun lt!2225547 () List!62142)

(declare-fun call!396190 () List!62142)

(assert (=> b!5453924 (= lt!2225547 call!396190)))

(declare-fun lt!2225502 () List!62143)

(declare-fun call!396338 () List!62143)

(assert (=> b!5453924 (= lt!2225502 call!396338)))

(declare-fun lt!2225464 () Unit!154792)

(assert (=> b!5453924 (= lt!2225464 call!396344)))

(declare-fun lt!2225430 () Unit!154792)

(assert (=> b!5453924 (= lt!2225430 call!396192)))

(declare-fun call!396350 () tuple2!64960)

(assert (=> b!5453924 (= lt!2225415 call!396350)))

(declare-fun call!396301 () Bool)

(assert (=> b!5453924 call!396301))

(declare-fun lt!2225416 () Option!15392)

(declare-fun findConcatSeparationZippers!80 ((InoxSet Context!9330) (InoxSet Context!9330) List!62142 List!62142 List!62142) Option!15392)

(assert (=> b!5453924 (= lt!2225416 (findConcatSeparationZippers!80 lt!2225545 lt!2225399 Nil!62018 s!2326 s!2326))))

(declare-fun lt!2225467 () Context!9330)

(declare-fun lt!2225462 () Unit!154792)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!80 ((InoxSet Context!9330) Context!9330 List!62142) Unit!154792)

(assert (=> b!5453924 (= lt!2225462 (lemmaConcatZipperMatchesStringThenFindConcatDefined!80 lt!2225545 lt!2225467 s!2326))))

(declare-fun lambda!288165 () Int)

(declare-fun map!14248 ((InoxSet Context!9330) Int) (InoxSet Context!9330))

(assert (=> b!5453924 (= (map!14248 lt!2225545 lambda!288165) (store ((as const (Array Context!9330 Bool)) false) (Context!9331 call!396338) true))))

(declare-fun lt!2225383 () Unit!154792)

(assert (=> b!5453924 (= lt!2225383 call!396241)))

(declare-fun lt!2225494 () Unit!154792)

(declare-fun lemmaMapOnSingletonSet!82 ((InoxSet Context!9330) Context!9330 Int) Unit!154792)

(assert (=> b!5453924 (= lt!2225494 (lemmaMapOnSingletonSet!82 lt!2225545 lt!2225387 lambda!288165))))

(declare-fun e!3377724 () Unit!154792)

(declare-fun Unit!154801 () Unit!154792)

(assert (=> b!5453924 (= e!3377724 Unit!154801)))

(declare-fun lt!2225411 () Regex!15281)

(declare-fun lt!2225443 () Regex!15281)

(declare-fun bm!396209 () Bool)

(declare-fun lt!2225447 () Regex!15281)

(assert (=> bm!396209 (= call!396310 (matchR!7466 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))) (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)))))

(declare-fun bm!396210 () Bool)

(declare-fun call!396330 () (InoxSet Context!9330))

(assert (=> bm!396210 (= call!396330 call!396357)))

(declare-fun bm!396211 () Bool)

(declare-fun call!396339 () Unit!154792)

(assert (=> bm!396211 (= call!396339 call!396186)))

(declare-fun bm!396212 () Bool)

(declare-fun call!396293 () Bool)

(assert (=> bm!396212 (= call!396320 call!396293)))

(declare-fun bm!396213 () Bool)

(declare-fun lt!2225480 () Regex!15281)

(assert (=> bm!396213 (= call!396187 (matchRSpec!2384 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) s!2326))))

(declare-fun bm!396214 () Bool)

(declare-fun call!396245 () Bool)

(assert (=> bm!396214 (= call!396273 call!396245)))

(declare-fun b!5453925 () Bool)

(assert (=> b!5453925 (= c!952471 e!3377722)))

(declare-fun res!2322621 () Bool)

(assert (=> b!5453925 (=> (not res!2322621) (not e!3377722))))

(assert (=> b!5453925 (= res!2322621 ((_ is Concat!24126) (regOne!31074 r!7292)))))

(assert (=> b!5453925 (= e!3377693 e!3377720)))

(declare-fun bm!396215 () Bool)

(declare-fun call!396189 () Bool)

(assert (=> bm!396215 (= call!396308 call!396189)))

(declare-fun bm!396216 () Bool)

(declare-fun call!396274 () Regex!15281)

(declare-fun call!396304 () Regex!15281)

(assert (=> bm!396216 (= call!396274 call!396304)))

(declare-fun bm!396217 () Bool)

(assert (=> bm!396217 (= call!396295 call!396250)))

(declare-fun bm!396218 () Bool)

(assert (=> bm!396218 (= call!396316 call!396232)))

(declare-fun bm!396219 () Bool)

(assert (=> bm!396219 (= call!396221 call!396358)))

(declare-fun bm!396220 () Bool)

(declare-fun call!396199 () Bool)

(assert (=> bm!396220 (= call!396199 call!396355)))

(declare-fun bm!396221 () Bool)

(declare-fun call!396359 () (InoxSet Context!9330))

(assert (=> bm!396221 (= call!396359 call!396337)))

(declare-fun bm!396222 () Bool)

(declare-fun call!396362 () Unit!154792)

(assert (=> bm!396222 (= call!396362 call!396222)))

(declare-fun bm!396223 () Bool)

(assert (=> bm!396223 (= call!396253 call!396198)))

(declare-fun bm!396224 () Bool)

(declare-fun call!396279 () Bool)

(declare-fun call!396163 () Bool)

(assert (=> bm!396224 (= call!396279 call!396163)))

(declare-fun bm!396225 () Bool)

(assert (=> bm!396225 (= call!396355 call!396353)))

(declare-fun bm!396226 () Bool)

(declare-fun call!396209 () Option!15392)

(assert (=> bm!396226 (= call!396209 call!396299)))

(declare-fun bm!396227 () Bool)

(assert (=> bm!396227 (= call!396162 call!396237)))

(declare-fun b!5453926 () Bool)

(declare-fun Unit!154802 () Unit!154792)

(assert (=> b!5453926 (= e!3377697 Unit!154802)))

(assert (=> b!5453926 (= lt!2225418 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(declare-fun lt!2225551 () Regex!15281)

(assert (=> b!5453926 (= lt!2225551 call!396306)))

(declare-fun lt!2225394 () Unit!154792)

(declare-fun call!396235 () Unit!154792)

(assert (=> b!5453926 (= lt!2225394 call!396235)))

(declare-fun call!396208 () Bool)

(assert (=> b!5453926 (= call!396208 call!396178)))

(declare-fun bm!396228 () Bool)

(declare-fun call!396262 () Option!15392)

(assert (=> bm!396228 (= call!396181 call!396262)))

(declare-fun bm!396229 () Bool)

(declare-fun call!396220 () Bool)

(assert (=> bm!396229 (= call!396220 call!396254)))

(declare-fun bm!396230 () Bool)

(declare-fun call!396204 () Bool)

(assert (=> bm!396230 (= call!396177 call!396204)))

(declare-fun bm!396231 () Bool)

(assert (=> bm!396231 (= call!396159 call!396328)))

(declare-fun bm!396232 () Bool)

(assert (=> bm!396232 (= call!396200 (matchZipper!1525 (ite c!952469 lt!2225376 (ite c!952471 ((_ map or) lt!2225441 lt!2225541) (ite c!952461 (ite c!952465 (store ((as const (Array Context!9330 Bool)) false) (Context!9331 call!396338) true) (store ((as const (Array Context!9330 Bool)) false) (Context!9331 lt!2225502) true)) ((_ map or) lt!2225534 lt!2225384)))) (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite c!952461 (ite c!952465 lt!2225455 lt!2225547) (t!375371 s!2326))))))))

(declare-fun bm!396233 () Bool)

(assert (=> bm!396233 (= call!396234 call!396334)))

(declare-fun bm!396234 () Bool)

(assert (=> bm!396234 (= call!396223 (mainMatchTheorem!2384 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)) (ite c!952469 s!2326 (ite c!952465 (_1!35783 lt!2225382) s!2326))))))

(declare-fun bm!396235 () Bool)

(assert (=> bm!396235 (= call!396304 call!396218)))

(declare-fun b!5453927 () Bool)

(assert (=> b!5453927 (= c!952461 ((_ is Star!15281) (regOne!31074 r!7292)))))

(declare-fun e!3377715 () Unit!154792)

(declare-fun e!3377725 () Unit!154792)

(assert (=> b!5453927 (= e!3377715 e!3377725)))

(declare-fun bm!396236 () Bool)

(assert (=> bm!396236 (= call!396224 call!396317)))

(declare-fun bm!396237 () Bool)

(assert (=> bm!396237 (= call!396190 call!396268)))

(declare-fun b!5453928 () Bool)

(declare-fun e!3377690 () Bool)

(assert (=> b!5453928 e!3377690))

(declare-fun res!2322606 () Bool)

(assert (=> b!5453928 (=> (not res!2322606) (not e!3377690))))

(declare-fun call!396361 () Bool)

(assert (=> b!5453928 (= res!2322606 (= call!396361 call!396321))))

(declare-fun lt!2225427 () Unit!154792)

(assert (=> b!5453928 (= lt!2225427 call!396261)))

(declare-fun call!396294 () Bool)

(declare-fun call!396197 () Bool)

(assert (=> b!5453928 (= call!396294 call!396197)))

(declare-fun lt!2225372 () Unit!154792)

(assert (=> b!5453928 (= lt!2225372 call!396219)))

(declare-fun call!396212 () Bool)

(assert (=> b!5453928 (not call!396212)))

(declare-fun lt!2225422 () Unit!154792)

(declare-fun call!396292 () Unit!154792)

(assert (=> b!5453928 (= lt!2225422 call!396292)))

(declare-fun e!3377712 () Unit!154792)

(declare-fun Unit!154803 () Unit!154792)

(assert (=> b!5453928 (= e!3377712 Unit!154803)))

(declare-fun b!5453929 () Bool)

(declare-fun lt!2225555 () Bool)

(assert (=> b!5453929 (= e!3377696 lt!2225555)))

(declare-fun lt!2225465 () Regex!15281)

(declare-fun bm!396238 () Bool)

(assert (=> bm!396238 (= call!396300 (mainMatchTheorem!2384 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))) s!2326))))

(declare-fun bm!396239 () Bool)

(assert (=> bm!396239 (= call!396228 call!396208)))

(declare-fun bm!396240 () Bool)

(declare-fun lemmaConcatAssociative!76 (Regex!15281 Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> bm!396240 (= call!396334 (lemmaConcatAssociative!76 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))) (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374) (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326))))

(declare-fun bm!396241 () Bool)

(declare-fun call!396323 () Unit!154792)

(assert (=> bm!396241 (= call!396323 (lemmaFlatMapOnSingletonSet!540 (ite c!952461 lt!2225545 lt!2225375) (ite c!952461 lt!2225387 lt!2225444) (ite c!952461 lambda!288150 lambda!288150)))))

(declare-fun b!5453930 () Bool)

(assert (=> b!5453930 (= e!3377719 e!3377724)))

(assert (=> b!5453930 (= c!952462 call!396332)))

(declare-fun bm!396242 () Bool)

(assert (=> bm!396242 (= call!396229 (lemmaZipperConcatMatchesSameAsBothZippers!518 (ite c!952469 lt!2225487 lt!2225441) (ite c!952469 lt!2225506 lt!2225541) (t!375371 s!2326)))))

(assert (=> b!5453931 (= e!3377723 e!3377710)))

(declare-fun res!2322599 () Bool)

(assert (=> b!5453931 (=> res!2322599 e!3377710)))

(declare-fun lt!2225525 () Bool)

(declare-fun lt!2225485 () Bool)

(assert (=> b!5453931 (= res!2322599 (or (not (= lt!2225525 lt!2225485)) ((_ is Nil!62018) s!2326)))))

(assert (=> b!5453931 (= (Exists!2462 lambda!288148) (Exists!2462 lambda!288149))))

(declare-fun lt!2225520 () Unit!154792)

(assert (=> b!5453931 (= lt!2225520 (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326))))

(assert (=> b!5453931 (= lt!2225485 (Exists!2462 lambda!288148))))

(declare-fun findConcatSeparation!1806 (Regex!15281 Regex!15281 List!62142 List!62142 List!62142) Option!15392)

(assert (=> b!5453931 (= lt!2225485 (isDefined!12095 (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) Nil!62018 s!2326 s!2326)))))

(declare-fun lt!2225371 () Unit!154792)

(assert (=> b!5453931 (= lt!2225371 (lemmaFindConcatSeparationEquivalentToExists!1570 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326))))

(declare-fun bm!396243 () Bool)

(declare-fun call!396289 () Unit!154792)

(assert (=> bm!396243 (= call!396289 call!396284)))

(declare-fun bm!396244 () Bool)

(assert (=> bm!396244 (= call!396342 call!396172)))

(declare-fun bm!396245 () Bool)

(assert (=> bm!396245 (= call!396312 call!396175)))

(declare-fun bm!396246 () Bool)

(assert (=> bm!396246 (= call!396238 call!396223)))

(declare-fun b!5453932 () Bool)

(assert (=> b!5453932 (= e!3377697 e!3377693)))

(assert (=> b!5453932 (= c!952469 ((_ is Union!15281) (regOne!31074 r!7292)))))

(declare-fun bm!396247 () Bool)

(assert (=> bm!396247 (= call!396205 call!396240)))

(declare-fun b!5453933 () Bool)

(declare-fun Unit!154804 () Unit!154792)

(assert (=> b!5453933 (= e!3377719 Unit!154804)))

(declare-fun bm!396248 () Bool)

(assert (=> bm!396248 (= call!396170 call!396176)))

(declare-fun lt!2225468 () Context!9330)

(declare-fun bm!396249 () Bool)

(assert (=> bm!396249 (= call!396298 (lemmaFlatMapOnSingletonSet!540 (ite c!952469 lt!2225377 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 lt!2225399))) (ite c!952469 lt!2225566 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952467 lambda!288150 lambda!288150)))))))

(assert (=> b!5453934 e!3377689))

(declare-fun res!2322620 () Bool)

(assert (=> b!5453934 (=> (not res!2322620) (not e!3377689))))

(assert (=> b!5453934 (= res!2322620 call!396159)))

(declare-fun lt!2225488 () Unit!154792)

(assert (=> b!5453934 (= lt!2225488 call!396318)))

(assert (=> b!5453934 (= call!396203 call!396352)))

(declare-fun lt!2225449 () Unit!154792)

(assert (=> b!5453934 (= lt!2225449 call!396168)))

(assert (=> b!5453934 (= call!396295 call!396180)))

(declare-fun lt!2225451 () Unit!154792)

(assert (=> b!5453934 (= lt!2225451 call!396166)))

(assert (=> b!5453934 (= call!396301 call!396210)))

(declare-fun lt!2225413 () Unit!154792)

(assert (=> b!5453934 (= lt!2225413 call!396307)))

(assert (=> b!5453934 (= call!396167 call!396177)))

(declare-fun lt!2225524 () Unit!154792)

(assert (=> b!5453934 (= lt!2225524 call!396246)))

(assert (=> b!5453934 (= call!396315 call!396205)))

(declare-fun lt!2225424 () Unit!154792)

(assert (=> b!5453934 (= lt!2225424 call!396160)))

(assert (=> b!5453934 (= lt!2225443 call!396274)))

(declare-fun call!396233 () (InoxSet Context!9330))

(assert (=> b!5453934 (= call!396233 call!396330)))

(declare-fun lt!2225553 () Unit!154792)

(declare-fun call!396282 () Unit!154792)

(assert (=> b!5453934 (= lt!2225553 call!396282)))

(declare-fun lt!2225513 () (InoxSet Context!9330))

(assert (=> b!5453934 (= lt!2225513 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(declare-fun Unit!154805 () Unit!154792)

(assert (=> b!5453934 (= e!3377724 Unit!154805)))

(declare-fun bm!396250 () Bool)

(assert (=> bm!396250 (= call!396186 call!396298)))

(declare-fun bm!396251 () Bool)

(assert (=> bm!396251 (= call!396360 call!396228)))

(declare-fun bm!396252 () Bool)

(assert (=> bm!396252 (= call!396343 (derivationStepZipperUp!653 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) (h!68466 s!2326)))))

(declare-fun bm!396253 () Bool)

(assert (=> bm!396253 (= call!396175 (generalisedConcat!950 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun bm!396254 () Bool)

(assert (=> bm!396254 (= call!396315 call!396283)))

(declare-fun b!5453935 () Bool)

(declare-fun e!3377699 () Bool)

(assert (=> b!5453935 e!3377699))

(declare-fun res!2322618 () Bool)

(assert (=> b!5453935 (=> (not res!2322618) (not e!3377699))))

(assert (=> b!5453935 (= res!2322618 (= call!396294 call!396212))))

(declare-fun lt!2225460 () Unit!154792)

(assert (=> b!5453935 (= lt!2225460 call!396171)))

(assert (=> b!5453935 (= lt!2225411 call!396304)))

(declare-fun call!396327 () Bool)

(assert (=> b!5453935 (= call!396185 call!396327)))

(declare-fun lt!2225483 () Unit!154792)

(assert (=> b!5453935 (= lt!2225483 call!396194)))

(declare-fun call!396331 () (InoxSet Context!9330))

(assert (=> b!5453935 (= call!396331 call!396359)))

(declare-fun lt!2225419 () Unit!154792)

(assert (=> b!5453935 (= lt!2225419 call!396323)))

(assert (=> b!5453935 (= lt!2225375 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(assert (=> b!5453935 (= call!396361 call!396321)))

(declare-fun lt!2225492 () Unit!154792)

(assert (=> b!5453935 (= lt!2225492 call!396261)))

(assert (=> b!5453935 (= call!396193 call!396197)))

(declare-fun lt!2225406 () Unit!154792)

(assert (=> b!5453935 (= lt!2225406 call!396219)))

(declare-fun call!396169 () Bool)

(assert (=> b!5453935 (not call!396169)))

(declare-fun lt!2225510 () Unit!154792)

(assert (=> b!5453935 (= lt!2225510 call!396292)))

(declare-fun Unit!154806 () Unit!154792)

(assert (=> b!5453935 (= e!3377712 Unit!154806)))

(declare-fun b!5453936 () Bool)

(assert (=> b!5453936 (= e!3377704 lt!2225555)))

(declare-fun bm!396255 () Bool)

(assert (=> bm!396255 (= call!396291 call!396289)))

(declare-fun lt!2225446 () List!62143)

(declare-fun lt!2225442 () List!62143)

(declare-fun bm!396256 () Bool)

(declare-fun lemmaConcatPreservesForall!248 (List!62143 List!62143 Int) Unit!154792)

(assert (=> bm!396256 (= call!396241 (lemmaConcatPreservesForall!248 lt!2225446 lt!2225442 (ite c!952465 lambda!288164 lambda!288166)))))

(declare-fun bm!396257 () Bool)

(assert (=> bm!396257 (= call!396204 call!396201)))

(declare-fun bm!396258 () Bool)

(assert (=> bm!396258 (= call!396287 call!396209)))

(declare-fun b!5453937 () Bool)

(assert (=> b!5453937 (= e!3377690 (= lt!2225525 call!396327))))

(declare-fun bm!396259 () Bool)

(assert (=> bm!396259 (= call!396294 call!396310)))

(declare-fun b!5453938 () Bool)

(declare-fun e!3377727 () Bool)

(declare-fun tp!1501699 () Bool)

(assert (=> b!5453938 (= e!3377727 tp!1501699)))

(declare-fun b!5453939 () Bool)

(assert (=> b!5453939 (= e!3377720 e!3377715)))

(assert (=> b!5453939 (= c!952467 ((_ is Concat!24126) (regOne!31074 r!7292)))))

(declare-fun b!5453940 () Bool)

(declare-fun Unit!154807 () Unit!154792)

(assert (=> b!5453940 (= e!3377725 Unit!154807)))

(assert (=> b!5453940 (= lt!2225374 (regOne!31074 r!7292))))

(assert (=> b!5453940 (= lt!2225442 (Cons!62019 lt!2225374 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun lt!2225528 () Context!9330)

(assert (=> b!5453940 (= lt!2225528 (Context!9331 (Cons!62019 (reg!15610 (regOne!31074 r!7292)) lt!2225442)))))

(declare-fun lt!2225508 () (InoxSet Context!9330))

(assert (=> b!5453940 (= lt!2225508 (store ((as const (Array Context!9330 Bool)) false) lt!2225528 true))))

(declare-fun lt!2225516 () (InoxSet Context!9330))

(assert (=> b!5453940 (= lt!2225516 (derivationStepZipperUp!653 lt!2225528 (h!68466 s!2326)))))

(declare-fun lt!2225537 () Unit!154792)

(assert (=> b!5453940 (= lt!2225537 call!396216)))

(assert (=> b!5453940 (= (flatMap!1008 lt!2225508 lambda!288150) (derivationStepZipperUp!653 lt!2225528 (h!68466 s!2326)))))

(assert (=> b!5453940 (= lt!2225467 (Context!9331 lt!2225442))))

(declare-fun lt!2225420 () (InoxSet Context!9330))

(declare-fun call!396236 () (InoxSet Context!9330))

(assert (=> b!5453940 (= lt!2225420 call!396236)))

(assert (=> b!5453940 (= lt!2225527 (Concat!24126 lt!2225374 (regTwo!31074 r!7292)))))

(assert (=> b!5453940 (= lt!2225480 (Concat!24126 (reg!15610 (regOne!31074 r!7292)) lt!2225527))))

(assert (=> b!5453940 (= lt!2225446 (Cons!62019 (reg!15610 (regOne!31074 r!7292)) Nil!62019))))

(assert (=> b!5453940 (= lt!2225387 (Context!9331 lt!2225446))))

(assert (=> b!5453940 (= lt!2225545 (store ((as const (Array Context!9330 Bool)) false) lt!2225387 true))))

(assert (=> b!5453940 (= lt!2225399 (store ((as const (Array Context!9330 Bool)) false) lt!2225467 true))))

(declare-fun lt!2225438 () (InoxSet Context!9330))

(assert (=> b!5453940 (= lt!2225438 call!396359)))

(declare-fun lt!2225426 () (InoxSet Context!9330))

(assert (=> b!5453940 (= lt!2225426 call!396290)))

(declare-fun lt!2225389 () Unit!154792)

(assert (=> b!5453940 (= lt!2225389 call!396323)))

(assert (=> b!5453940 (= call!396255 call!396359)))

(declare-fun lt!2225484 () Unit!154792)

(assert (=> b!5453940 (= lt!2225484 call!396339)))

(assert (=> b!5453940 (= call!396331 call!396290)))

(declare-fun lt!2225519 () Unit!154792)

(assert (=> b!5453940 (= lt!2225519 call!396291)))

(assert (=> b!5453940 (= lt!2225555 (matchR!7466 lt!2225480 s!2326))))

(declare-fun res!2322604 () Bool)

(assert (=> b!5453940 (= res!2322604 (= lt!2225555 call!396346))))

(declare-fun e!3377702 () Bool)

(assert (=> b!5453940 (=> (not res!2322604) (not e!3377702))))

(assert (=> b!5453940 e!3377702))

(assert (=> b!5453940 (= c!952465 lt!2225525)))

(declare-fun lt!2225414 () Unit!154792)

(assert (=> b!5453940 (= lt!2225414 e!3377709)))

(assert (=> b!5453940 (= lt!2225525 call!396165)))

(declare-fun bm!396260 () Bool)

(assert (=> bm!396260 (= call!396217 (lemmaFlatMapOnSingletonSet!540 (ite c!952469 lt!2225376 (ite c!952471 lt!2225450 lt!2225508)) (ite c!952469 lt!2225540 (ite c!952471 lt!2225440 lt!2225528)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))))))

(declare-fun bm!396261 () Bool)

(declare-fun call!396309 () Unit!154792)

(assert (=> bm!396261 (= call!396194 call!396309)))

(declare-fun bm!396262 () Bool)

(assert (=> bm!396262 (= call!396331 call!396336)))

(declare-fun b!5453941 () Bool)

(assert (=> b!5453941 (= e!3377725 e!3377712)))

(assert (=> b!5453941 (= c!952463 ((_ is EmptyExpr!15281) (regOne!31074 r!7292)))))

(declare-fun bm!396263 () Bool)

(declare-fun call!396257 () Bool)

(assert (=> bm!396263 (= call!396258 call!396257)))

(declare-fun res!2322614 () Bool)

(declare-fun e!3377726 () Bool)

(assert (=> start!571406 (=> (not res!2322614) (not e!3377726))))

(declare-fun validRegex!7017 (Regex!15281) Bool)

(assert (=> start!571406 (= res!2322614 (validRegex!7017 r!7292))))

(assert (=> start!571406 e!3377726))

(assert (=> start!571406 e!3377727))

(declare-fun condSetEmpty!35689 () Bool)

(assert (=> start!571406 (= condSetEmpty!35689 (= z!1189 ((as const (Array Context!9330 Bool)) false)))))

(declare-fun setRes!35689 () Bool)

(assert (=> start!571406 setRes!35689))

(declare-fun e!3377701 () Bool)

(assert (=> start!571406 e!3377701))

(assert (=> start!571406 e!3377705))

(declare-fun bm!396264 () Bool)

(assert (=> bm!396264 (= call!396203 call!396279)))

(declare-fun b!5453942 () Bool)

(declare-fun lt!2225560 () Bool)

(assert (=> b!5453942 (= e!3377702 (or (not lt!2225525) lt!2225560))))

(declare-fun bm!396265 () Bool)

(assert (=> bm!396265 (= call!396247 call!396333)))

(declare-fun bm!396266 () Bool)

(assert (=> bm!396266 (= call!396202 (lemmaTwoRegexMatchThenConcatMatchesConcatString!248 (ite c!952465 (reg!15610 (regOne!31074 r!7292)) lt!2225374) (ite c!952465 lt!2225527 (regTwo!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))

(declare-fun bm!396267 () Bool)

(assert (=> bm!396267 (= call!396163 call!396226)))

(declare-fun bm!396268 () Bool)

(assert (=> bm!396268 (= call!396231 (matchR!7466 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))))))

(declare-fun bm!396269 () Bool)

(assert (=> bm!396269 (= call!396213 call!396162)))

(declare-fun bm!396270 () Bool)

(assert (=> bm!396270 (= call!396344 (lemmaConcatPreservesForall!248 lt!2225446 lt!2225442 (ite c!952465 lambda!288164 lambda!288166)))))

(declare-fun b!5453943 () Bool)

(declare-fun tp!1501701 () Bool)

(declare-fun inv!81449 (Context!9330) Bool)

(assert (=> b!5453943 (= e!3377701 (and (inv!81449 (h!68468 zl!343)) e!3377717 tp!1501701))))

(declare-fun bm!396271 () Bool)

(assert (=> bm!396271 (= call!396174 call!396302)))

(declare-fun bm!396272 () Bool)

(assert (=> bm!396272 (= call!396272 call!396240)))

(declare-fun b!5453944 () Bool)

(declare-fun e!3377691 () Bool)

(assert (=> b!5453944 (= e!3377691 call!396242)))

(declare-fun bm!396273 () Bool)

(assert (=> bm!396273 (= call!396297 call!396158)))

(declare-fun bm!396274 () Bool)

(assert (=> bm!396274 (= call!396280 (matchR!7466 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))) (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))))))

(declare-fun lt!2225436 () (InoxSet Context!9330))

(declare-fun bm!396275 () Bool)

(assert (=> bm!396275 (= call!396282 (lemmaFlatMapOnSingletonSet!540 (ite c!952465 lt!2225436 lt!2225513) lt!2225444 (ite c!952465 lambda!288150 lambda!288150)))))

(declare-fun bm!396276 () Bool)

(assert (=> bm!396276 (= call!396182 call!396281)))

(declare-fun b!5453945 () Bool)

(declare-fun Unit!154808 () Unit!154792)

(assert (=> b!5453945 (= e!3377707 Unit!154808)))

(declare-fun lt!2225546 () Unit!154792)

(assert (=> b!5453945 (= lt!2225546 call!396309)))

(declare-fun res!2322601 () Bool)

(assert (=> b!5453945 (= res!2322601 lt!2225431)))

(assert (=> b!5453945 (=> res!2322601 e!3377708)))

(assert (=> b!5453945 (= call!396245 e!3377708)))

(assert (=> b!5453946 call!396332))

(declare-fun lt!2225401 () Unit!154792)

(assert (=> b!5453946 (= lt!2225401 e!3377700)))

(declare-fun isEmpty!34002 (List!62142) Bool)

(assert (=> b!5453946 (= c!952466 (isEmpty!34002 (_1!35783 lt!2225382)))))

(assert (=> b!5453946 (= lt!2225382 call!396350)))

(assert (=> b!5453946 (= call!396342 call!396279)))

(declare-fun lt!2225381 () Unit!154792)

(declare-fun call!396263 () Unit!154792)

(assert (=> b!5453946 (= lt!2225381 call!396263)))

(declare-fun call!396345 () Bool)

(assert (=> b!5453946 (= call!396265 call!396345)))

(assert (=> b!5453946 (= lt!2225514 call!396287)))

(declare-fun lt!2225558 () Unit!154792)

(assert (=> b!5453946 (= lt!2225558 call!396196)))

(declare-fun Unit!154809 () Unit!154792)

(assert (=> b!5453946 (= e!3377709 Unit!154809)))

(declare-fun bm!396277 () Bool)

(declare-fun call!396239 () Bool)

(assert (=> bm!396277 (= call!396239 call!396157)))

(declare-fun bm!396278 () Bool)

(assert (=> bm!396278 (= call!396184 (flatMap!1008 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 lt!2225545)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))))))

(declare-fun b!5453947 () Bool)

(declare-fun Unit!154810 () Unit!154792)

(assert (=> b!5453947 (= e!3377700 Unit!154810)))

(assert (=> b!5453947 (= lt!2225436 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(declare-fun lt!2225491 () Unit!154792)

(assert (=> b!5453947 (= lt!2225491 call!396282)))

(assert (=> b!5453947 (= call!396233 call!396330)))

(assert (=> b!5453947 (= lt!2225447 call!396274)))

(declare-fun lt!2225445 () Unit!154792)

(assert (=> b!5453947 (= lt!2225445 call!396221)))

(declare-fun res!2322622 () Bool)

(assert (=> b!5453947 (= res!2322622 (= call!396215 call!396272))))

(assert (=> b!5453947 (=> (not res!2322622) (not e!3377691))))

(assert (=> b!5453947 e!3377691))

(declare-fun bm!396279 () Bool)

(assert (=> bm!396279 (= call!396197 call!396259)))

(declare-fun bm!396280 () Bool)

(assert (=> bm!396280 (= call!396236 call!396316)))

(declare-fun b!5453948 () Bool)

(declare-fun res!2322593 () Bool)

(assert (=> b!5453948 (=> res!2322593 e!3377714)))

(declare-fun regexDepth!197 (Regex!15281) Int)

(assert (=> b!5453948 (= res!2322593 (< (regexDepth!197 r!7292) (regexDepth!197 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))

(declare-fun bm!396281 () Bool)

(assert (=> bm!396281 (= call!396245 (matchZipper!1525 (ite c!952469 ((_ map or) lt!2225487 lt!2225384) (ite c!952471 lt!2225541 lt!2225399)) (ite (or c!952469 c!952471) (t!375371 s!2326) (_2!35783 lt!2225415))))))

(declare-fun bm!396282 () Bool)

(assert (=> bm!396282 (= call!396353 (matchRSpec!2384 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))))))

(declare-fun bm!396283 () Bool)

(assert (=> bm!396283 (= call!396361 call!396308)))

(declare-fun bm!396284 () Bool)

(assert (=> bm!396284 (= call!396293 (matchR!7466 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)) (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))))))

(declare-fun bm!396285 () Bool)

(assert (=> bm!396285 (= call!396226 (Exists!2462 (ite c!952471 lambda!288151 (ite c!952467 lambda!288157 (ite c!952465 lambda!288160 (ite c!952462 lambda!288171 lambda!288172))))))))

(declare-fun b!5453949 () Bool)

(declare-fun Unit!154811 () Unit!154792)

(assert (=> b!5453949 (= e!3377716 Unit!154811)))

(declare-fun lt!2225404 () Unit!154792)

(assert (=> b!5453949 (= lt!2225404 (lemmaZipperConcatMatchesSameAsBothZippers!518 lt!2225506 lt!2225384 (t!375371 s!2326)))))

(declare-fun res!2322610 () Bool)

(assert (=> b!5453949 (= res!2322610 call!396278)))

(declare-fun e!3377698 () Bool)

(assert (=> b!5453949 (=> res!2322610 e!3377698)))

(assert (=> b!5453949 (= call!396191 e!3377698)))

(declare-fun bm!396286 () Bool)

(assert (=> bm!396286 (= call!396207 call!396306)))

(declare-fun bm!396287 () Bool)

(assert (=> bm!396287 (= call!396201 call!396340)))

(declare-fun bm!396288 () Bool)

(assert (=> bm!396288 (= call!396318 call!396161)))

(declare-fun bm!396289 () Bool)

(assert (=> bm!396289 (= call!396249 (Exists!2462 (ite c!952471 lambda!288151 (ite c!952467 lambda!288155 (ite c!952465 lambda!288163 lambda!288167)))))))

(declare-fun b!5453950 () Bool)

(assert (=> b!5453950 (= e!3377726 (not e!3377723))))

(declare-fun res!2322613 () Bool)

(assert (=> b!5453950 (=> res!2322613 e!3377723)))

(assert (=> b!5453950 (= res!2322613 (not ((_ is Cons!62020) zl!343)))))

(assert (=> b!5453950 (= lt!2225525 lt!2225560)))

(assert (=> b!5453950 (= lt!2225560 (matchRSpec!2384 r!7292 s!2326))))

(assert (=> b!5453950 (= lt!2225525 (matchR!7466 r!7292 s!2326))))

(declare-fun lt!2225373 () Unit!154792)

(assert (=> b!5453950 (= lt!2225373 (mainMatchTheorem!2384 r!7292 s!2326))))

(declare-fun bm!396290 () Bool)

(assert (=> bm!396290 (= call!396329 call!396220)))

(declare-fun bm!396291 () Bool)

(assert (=> bm!396291 (= call!396328 (matchR!7466 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)) (ite (or c!952469 c!952462) s!2326 call!396190)))))

(declare-fun bm!396292 () Bool)

(assert (=> bm!396292 (= call!396259 call!396199)))

(declare-fun b!5453951 () Bool)

(assert (=> b!5453951 (= e!3377699 (= lt!2225525 call!396266))))

(declare-fun bm!396293 () Bool)

(assert (=> bm!396293 (= call!396262 (findConcatSeparation!1806 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) Nil!62018 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun bm!396294 () Bool)

(assert (=> bm!396294 (= call!396351 (derivationStepZipperDown!729 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (ite c!952469 lt!2225444 lt!2225511) (h!68466 s!2326)))))

(declare-fun bm!396295 () Bool)

(declare-fun lt!2225523 () List!62143)

(assert (=> bm!396295 (= call!396232 (derivationStepZipperDown!729 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467)) (h!68466 s!2326)))))

(declare-fun bm!396296 () Bool)

(assert (=> bm!396296 (= call!396189 call!396270)))

(declare-fun b!5453952 () Bool)

(declare-fun res!2322619 () Bool)

(assert (=> b!5453952 (=> (not res!2322619) (not e!3377726))))

(declare-fun toList!9065 ((InoxSet Context!9330)) List!62144)

(assert (=> b!5453952 (= res!2322619 (= (toList!9065 z!1189) zl!343))))

(declare-fun bm!396297 () Bool)

(assert (=> bm!396297 (= call!396188 call!396256)))

(declare-fun setIsEmpty!35689 () Bool)

(assert (=> setIsEmpty!35689 setRes!35689))

(declare-fun bm!396298 () Bool)

(assert (=> bm!396298 (= call!396266 call!396239)))

(declare-fun bm!396299 () Bool)

(assert (=> bm!396299 (= call!396354 (lemmaFindConcatSeparationEquivalentToExists!1570 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326))))

(declare-fun bm!396300 () Bool)

(assert (=> bm!396300 (= call!396309 (lemmaZipperConcatMatchesSameAsBothZippers!518 (ite c!952469 lt!2225487 (ite c!952471 lt!2225441 lt!2225534)) (ite c!952469 lt!2225384 (ite c!952471 lt!2225439 lt!2225384)) (t!375371 s!2326)))))

(declare-fun e!3377718 () Bool)

(assert (=> b!5453953 e!3377718))

(declare-fun res!2322616 () Bool)

(assert (=> b!5453953 (=> (not res!2322616) (not e!3377718))))

(assert (=> b!5453953 (= res!2322616 (= call!396267 call!396189))))

(declare-fun lt!2225405 () Unit!154792)

(assert (=> b!5453953 (= lt!2225405 call!396234)))

(assert (=> b!5453953 (= call!396220 call!396319)))

(declare-fun lt!2225548 () Unit!154792)

(assert (=> b!5453953 (= lt!2225548 call!396317)))

(assert (=> b!5453953 (= call!396247 call!396163)))

(declare-fun lt!2225543 () Unit!154792)

(assert (=> b!5453953 (= lt!2225543 call!396347)))

(assert (=> b!5453953 (= lt!2225526 call!396312)))

(assert (=> b!5453953 (= call!396195 call!396204)))

(declare-fun lt!2225388 () Unit!154792)

(assert (=> b!5453953 (= lt!2225388 call!396363)))

(assert (=> b!5453953 (= call!396264 call!396257)))

(declare-fun lt!2225408 () Unit!154792)

(assert (=> b!5453953 (= lt!2225408 call!396276)))

(assert (=> b!5453953 (= call!396227 call!396302)))

(declare-fun lt!2225478 () Unit!154792)

(assert (=> b!5453953 (= lt!2225478 call!396362)))

(assert (=> b!5453953 (= lt!2225518 call!396341)))

(declare-fun lt!2225368 () Bool)

(assert (=> b!5453953 (= lt!2225368 call!396199)))

(declare-fun lt!2225481 () Unit!154792)

(assert (=> b!5453953 (= lt!2225481 call!396289)))

(assert (=> b!5453953 (= lt!2225368 call!396183)))

(assert (=> b!5453953 (= lt!2225368 call!396293)))

(declare-fun lt!2225503 () Unit!154792)

(assert (=> b!5453953 (= lt!2225503 call!396285)))

(assert (=> b!5453953 (= lt!2225465 call!396218)))

(assert (=> b!5453953 (= call!396336 call!396290)))

(declare-fun lt!2225454 () Unit!154792)

(assert (=> b!5453953 (= lt!2225454 call!396339)))

(declare-fun lt!2225559 () (InoxSet Context!9330))

(assert (=> b!5453953 (= lt!2225559 call!396290)))

(assert (=> b!5453953 (= lt!2225517 (store ((as const (Array Context!9330 Bool)) false) lt!2225468 true))))

(assert (=> b!5453953 (= lt!2225468 (Context!9331 lt!2225539))))

(assert (=> b!5453953 (= lt!2225539 (Cons!62019 (regOne!31074 (regOne!31074 r!7292)) lt!2225523))))

(declare-fun lt!2225396 () (InoxSet Context!9330))

(assert (=> b!5453953 (= lt!2225396 call!396236)))

(assert (=> b!5453953 (= lt!2225523 (Cons!62019 (regTwo!31074 (regOne!31074 r!7292)) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun Unit!154812 () Unit!154792)

(assert (=> b!5453953 (= e!3377715 Unit!154812)))

(declare-fun bm!396301 () Bool)

(assert (=> bm!396301 (= call!396254 (Exists!2462 (ite c!952471 lambda!288153 (ite c!952467 lambda!288157 (ite c!952465 lambda!288161 lambda!288168)))))))

(declare-fun bm!396302 () Bool)

(declare-fun lemmaStarApp!76 (Regex!15281 List!62142 List!62142) Unit!154792)

(assert (=> bm!396302 (= call!396314 (lemmaStarApp!76 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))

(declare-fun b!5453954 () Bool)

(declare-fun res!2322623 () Bool)

(assert (=> b!5453954 (=> res!2322623 e!3377714)))

(declare-fun zipperDepth!182 (List!62144) Int)

(assert (=> b!5453954 (= res!2322623 (< (zipperDepth!182 zl!343) (zipperDepth!182 (Cons!62020 lt!2225444 Nil!62020))))))

(declare-fun bm!396303 () Bool)

(assert (=> bm!396303 (= call!396285 call!396182)))

(declare-fun bm!396304 () Bool)

(assert (=> bm!396304 (= call!396277 call!396251)))

(declare-fun bm!396305 () Bool)

(declare-fun theoremZipperRegexEquiv!561 ((InoxSet Context!9330) List!62144 Regex!15281 List!62142) Unit!154792)

(assert (=> bm!396305 (= call!396237 (theoremZipperRegexEquiv!561 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 (ite (or c!952465 c!952462) lt!2225399 lt!2225513))) (ite c!952469 (Cons!62020 lt!2225566 Nil!62020) (ite c!952471 (Cons!62020 lt!2225440 Nil!62020) (ite (or c!952465 c!952462) (Cons!62020 lt!2225467 Nil!62020) (Cons!62020 lt!2225444 Nil!62020)))) (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite (or c!952465 c!952462) lt!2225527 lt!2225443))) (ite (or c!952469 c!952471) s!2326 (ite c!952465 lt!2225429 (ite c!952462 (_2!35783 lt!2225415) s!2326)))))))

(declare-fun b!5453955 () Bool)

(declare-fun res!2322617 () Bool)

(assert (=> b!5453955 (=> res!2322617 e!3377710)))

(declare-fun isEmpty!34003 (List!62143) Bool)

(assert (=> b!5453955 (= res!2322617 (isEmpty!34003 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5453956 () Bool)

(assert (=> b!5453956 (= e!3377727 tp_is_empty!39815)))

(declare-fun bm!396306 () Bool)

(assert (=> bm!396306 (= call!396263 call!396276)))

(declare-fun bm!396307 () Bool)

(assert (=> bm!396307 (= call!396313 (++!13641 (ite c!952465 lt!2225463 (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) lt!2225407)))))

(declare-fun bm!396308 () Bool)

(assert (=> bm!396308 (= call!396284 call!396300)))

(declare-fun b!5453957 () Bool)

(assert (=> b!5453957 (= e!3377703 (matchZipper!1525 lt!2225384 (t!375371 s!2326)))))

(declare-fun bm!396309 () Bool)

(assert (=> bm!396309 (= call!396206 call!396280)))

(declare-fun bm!396310 () Bool)

(assert (=> bm!396310 (= call!396255 call!396184)))

(declare-fun bm!396311 () Bool)

(assert (=> bm!396311 (= call!396166 call!396263)))

(declare-fun b!5453958 () Bool)

(assert (=> b!5453958 (= e!3377718 (= lt!2225525 call!396239))))

(declare-fun bm!396312 () Bool)

(assert (=> bm!396312 (= call!396191 (matchZipper!1525 (ite c!952469 ((_ map or) lt!2225506 lt!2225384) (ite c!952471 lt!2225439 (ite c!952467 z!1189 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225436 lt!2225399) (ite c!952462 lt!2225545 lt!2225513)) z!1189)))) (ite (or c!952469 c!952471) (t!375371 s!2326) (ite c!952467 s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 lt!2225429) (ite c!952462 (_1!35783 lt!2225415) s!2326)) s!2326)))))))

(declare-fun b!5453959 () Bool)

(declare-fun res!2322597 () Bool)

(assert (=> b!5453959 (=> (not res!2322597) (not e!3377726))))

(declare-fun unfocusZipper!1023 (List!62144) Regex!15281)

(assert (=> b!5453959 (= res!2322597 (= r!7292 (unfocusZipper!1023 zl!343)))))

(declare-fun bm!396313 () Bool)

(assert (=> bm!396313 (= call!396281 call!396235)))

(declare-fun bm!396314 () Bool)

(assert (=> bm!396314 (= call!396160 call!396213)))

(declare-fun b!5453960 () Bool)

(declare-fun res!2322598 () Bool)

(assert (=> b!5453960 (=> res!2322598 e!3377723)))

(assert (=> b!5453960 (= res!2322598 (not ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343)))))))

(declare-fun bm!396315 () Bool)

(assert (=> bm!396315 (= call!396198 (flatMap!1008 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952465 lt!2225436 lt!2225513))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952465 lambda!288150 lambda!288150)))))))

(declare-fun bm!396316 () Bool)

(assert (=> bm!396316 (= call!396358 call!396171)))

(declare-fun b!5453961 () Bool)

(assert (=> b!5453961 (= e!3377698 (matchZipper!1525 lt!2225384 (t!375371 s!2326)))))

(declare-fun bm!396317 () Bool)

(assert (=> bm!396317 (= call!396167 call!396248)))

(declare-fun bm!396318 () Bool)

(assert (=> bm!396318 (= call!396275 call!396362)))

(declare-fun bm!396319 () Bool)

(assert (=> bm!396319 (= call!396208 (matchR!7466 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))))))

(declare-fun bm!396320 () Bool)

(assert (=> bm!396320 (= call!396246 call!396303)))

(declare-fun bm!396321 () Bool)

(assert (=> bm!396321 (= call!396230 call!396200)))

(declare-fun bm!396322 () Bool)

(assert (=> bm!396322 (= call!396210 call!396345)))

(declare-fun b!5453962 () Bool)

(declare-fun tp!1501700 () Bool)

(declare-fun tp!1501705 () Bool)

(assert (=> b!5453962 (= e!3377727 (and tp!1501700 tp!1501705))))

(declare-fun bm!396323 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!96 (Context!9330 Context!9330 List!62142 List!62142) Unit!154792)

(assert (=> bm!396323 (= call!396192 (lemmaConcatenateContextMatchesConcatOfStrings!96 lt!2225387 lt!2225467 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225415)) (ite c!952465 lt!2225429 (_2!35783 lt!2225415))))))

(declare-fun b!5453963 () Bool)

(assert (=> b!5453963 (= e!3377695 (= lt!2225525 call!396256))))

(declare-fun bm!396324 () Bool)

(assert (=> bm!396324 (= call!396357 (derivationStepZipperUp!653 (ite c!952469 lt!2225566 lt!2225444) (h!68466 s!2326)))))

(declare-fun bm!396325 () Bool)

(assert (=> bm!396325 (= call!396176 (mainMatchTheorem!2384 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952462 (_1!35783 lt!2225479) Nil!62018) s!2326))))))

(declare-fun b!5453964 () Bool)

(assert (=> b!5453964 (= e!3377692 call!396157)))

(declare-fun bm!396326 () Bool)

(assert (=> bm!396326 (= call!396158 call!396181)))

(declare-fun bm!396327 () Bool)

(assert (=> bm!396327 (= call!396333 (isDefined!12095 (ite c!952471 call!396262 (ite c!952467 call!396209 (ite c!952465 lt!2225421 lt!2225458)))))))

(declare-fun bm!396328 () Bool)

(assert (=> bm!396328 (= call!396303 call!396363)))

(declare-fun bm!396329 () Bool)

(assert (=> bm!396329 (= call!396341 (generalisedConcat!950 (ite c!952471 lt!2225490 lt!2225523)))))

(declare-fun b!5453965 () Bool)

(declare-fun tp!1501703 () Bool)

(declare-fun tp!1501698 () Bool)

(assert (=> b!5453965 (= e!3377727 (and tp!1501703 tp!1501698))))

(declare-fun bm!396330 () Bool)

(assert (=> bm!396330 (= call!396325 call!396178)))

(declare-fun b!5453966 () Bool)

(assert (=> b!5453966 (= e!3377721 (= lt!2225525 call!396252))))

(declare-fun bm!396331 () Bool)

(assert (=> bm!396331 (= call!396327 call!396188)))

(declare-fun bm!396332 () Bool)

(assert (=> bm!396332 (= call!396227 call!396349)))

(declare-fun bm!396333 () Bool)

(assert (=> bm!396333 (= call!396322 call!396343)))

(declare-fun bm!396334 () Bool)

(assert (=> bm!396334 (= call!396326 call!396195)))

(declare-fun bm!396335 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!36 ((InoxSet Context!9330) List!62142) Unit!154792)

(assert (=> bm!396335 (= call!396292 (lemmaEmptyZipperMatchesNothing!36 lt!2225534 (t!375371 s!2326)))))

(declare-fun bm!396336 () Bool)

(assert (=> bm!396336 (= call!396193 call!396267)))

(declare-fun bm!396337 () Bool)

(assert (=> bm!396337 (= call!396269 (Exists!2462 (ite c!952471 lambda!288153 (ite c!952467 lambda!288155 (ite c!952465 lambda!288162 (ite c!952462 lambda!288170 lambda!288172))))))))

(declare-fun bm!396338 () Bool)

(assert (=> bm!396338 (= call!396299 (findConcatSeparation!1806 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) Nil!62018 s!2326 s!2326))))

(declare-fun bm!396339 () Bool)

(assert (=> bm!396339 (= call!396340 (matchRSpec!2384 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)))))

(declare-fun bm!396340 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!438 (Regex!15281 List!62142) Unit!154792)

(assert (=> bm!396340 (= call!396244 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!438 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))))

(declare-fun bm!396341 () Bool)

(assert (=> bm!396341 (= call!396257 (Exists!2462 (ite c!952467 lambda!288156 (ite c!952465 lambda!288161 lambda!288169))))))

(declare-fun bm!396342 () Bool)

(assert (=> bm!396342 (= call!396301 (isDefined!12095 (ite c!952462 lt!2225416 call!396297)))))

(declare-fun bm!396343 () Bool)

(assert (=> bm!396343 (= call!396233 call!396253)))

(declare-fun bm!396344 () Bool)

(assert (=> bm!396344 (= call!396348 (++!13641 (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))

(declare-fun bm!396345 () Bool)

(assert (=> bm!396345 (= call!396164 (matchZipper!1525 (ite c!952469 lt!2225377 (ite c!952471 lt!2225441 (ite c!952461 z!1189 (ite c!952463 lt!2225375 lt!2225534)))) (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite (or c!952461 c!952463) s!2326 (t!375371 s!2326))))))))

(declare-fun bm!396346 () Bool)

(assert (=> bm!396346 (= call!396350 (get!21386 (ite c!952465 lt!2225514 lt!2225416)))))

(declare-fun bm!396347 () Bool)

(declare-fun ++!13642 (List!62143 List!62143) List!62143)

(assert (=> bm!396347 (= call!396338 (++!13642 lt!2225446 lt!2225442))))

(declare-fun bm!396348 () Bool)

(assert (=> bm!396348 (= call!396260 call!396169)))

(declare-fun bm!396349 () Bool)

(assert (=> bm!396349 (= call!396225 call!396207)))

(declare-fun bm!396350 () Bool)

(assert (=> bm!396350 (= call!396345 call!396319)))

(declare-fun bm!396351 () Bool)

(assert (=> bm!396351 (= call!396307 call!396275)))

(declare-fun b!5453967 () Bool)

(declare-fun res!2322609 () Bool)

(assert (=> b!5453967 (=> res!2322609 e!3377723)))

(assert (=> b!5453967 (= res!2322609 (or ((_ is EmptyExpr!15281) r!7292) ((_ is EmptyLang!15281) r!7292) ((_ is ElementMatch!15281) r!7292) ((_ is Union!15281) r!7292) (not ((_ is Concat!24126) r!7292))))))

(declare-fun b!5453968 () Bool)

(declare-fun e!3377706 () Bool)

(declare-fun tp!1501704 () Bool)

(assert (=> b!5453968 (= e!3377706 tp!1501704)))

(declare-fun b!5453969 () Bool)

(declare-fun Unit!154813 () Unit!154792)

(assert (=> b!5453969 (= e!3377716 Unit!154813)))

(declare-fun b!5453970 () Bool)

(assert (=> b!5453970 (= e!3377694 false)))

(declare-fun bm!396352 () Bool)

(assert (=> bm!396352 (= call!396212 call!396165)))

(declare-fun bm!396353 () Bool)

(assert (=> bm!396353 (= call!396214 call!396185)))

(declare-fun bm!396354 () Bool)

(declare-fun lemmaConcatAssociativity!2858 (List!62142 List!62142 List!62142) Unit!154792)

(assert (=> bm!396354 (= call!396324 (lemmaConcatAssociativity!2858 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) (_2!35783 lt!2225479))))))

(declare-fun bm!396355 () Bool)

(assert (=> bm!396355 (= call!396235 (theoremZipperRegexEquiv!561 (ite c!952472 lt!2225418 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite (and c!952465 c!952466) lt!2225436 lt!2225545) lt!2225375))))) (ite c!952472 (Cons!62020 lt!2225444 Nil!62020) (ite c!952469 (Cons!62020 lt!2225540 Nil!62020) (ite c!952471 (Cons!62020 lt!2225511 Nil!62020) (ite c!952467 (Cons!62020 lt!2225468 Nil!62020) (ite c!952461 (ite (and c!952465 c!952466) (Cons!62020 lt!2225444 Nil!62020) (Cons!62020 lt!2225387 Nil!62020)) (Cons!62020 lt!2225444 Nil!62020)))))) (ite c!952472 lt!2225551 (ite c!952469 lt!2225391 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 (ite (and c!952465 c!952466) lt!2225447 (reg!15610 (regOne!31074 r!7292))) lt!2225411))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (_1!35783 lt!2225415)) s!2326)))))))

(declare-fun bm!396356 () Bool)

(assert (=> bm!396356 (= call!396311 call!396231)))

(declare-fun bm!396357 () Bool)

(assert (=> bm!396357 (= call!396169 call!396183)))

(declare-fun setElem!35689 () Context!9330)

(declare-fun setNonEmpty!35689 () Bool)

(declare-fun tp!1501697 () Bool)

(assert (=> setNonEmpty!35689 (= setRes!35689 (and tp!1501697 (inv!81449 setElem!35689) e!3377706))))

(declare-fun setRest!35689 () (InoxSet Context!9330))

(assert (=> setNonEmpty!35689 (= z!1189 ((_ map or) (store ((as const (Array Context!9330 Bool)) false) setElem!35689 true) setRest!35689))))

(declare-fun bm!396358 () Bool)

(assert (=> bm!396358 (= call!396196 call!396347)))

(assert (= (and start!571406 res!2322614) b!5453952))

(assert (= (and b!5453952 res!2322619) b!5453959))

(assert (= (and b!5453959 res!2322597) b!5453950))

(assert (= (and b!5453950 (not res!2322613)) b!5453910))

(assert (= (and b!5453910 (not res!2322603)) b!5453916))

(assert (= (and b!5453916 (not res!2322611)) b!5453960))

(assert (= (and b!5453960 (not res!2322598)) b!5453918))

(assert (= (and b!5453918 (not res!2322612)) b!5453967))

(assert (= (and b!5453967 (not res!2322609)) b!5453931))

(assert (= (and b!5453931 (not res!2322599)) b!5453955))

(assert (= (and b!5453955 (not res!2322617)) b!5453920))

(assert (= (and b!5453920 c!952468) b!5453906))

(assert (= (and b!5453920 (not c!952468)) b!5453911))

(assert (= (and b!5453906 (not res!2322624)) b!5453957))

(assert (= (and b!5453920 c!952472) b!5453926))

(assert (= (and b!5453920 (not c!952472)) b!5453932))

(assert (= (and b!5453932 c!952469) b!5453912))

(assert (= (and b!5453932 (not c!952469)) b!5453925))

(assert (= (and b!5453912 (not res!2322602)) b!5453921))

(assert (= (and b!5453912 c!952470) b!5453945))

(assert (= (and b!5453912 (not c!952470)) b!5453922))

(assert (= (and b!5453945 (not res!2322601)) b!5453919))

(assert (= (and b!5453912 c!952464) b!5453949))

(assert (= (and b!5453912 (not c!952464)) b!5453969))

(assert (= (and b!5453949 (not res!2322610)) b!5453961))

(assert (= (and b!5453912 res!2322600) b!5453966))

(assert (= (and b!5453925 res!2322621) b!5453913))

(assert (= (and b!5453925 c!952471) b!5453908))

(assert (= (and b!5453925 (not c!952471)) b!5453939))

(assert (= (and b!5453908 (not res!2322605)) b!5453907))

(assert (= (and b!5453908 (not res!2322608)) b!5453964))

(assert (= (and b!5453908 res!2322607) b!5453963))

(assert (= (and b!5453939 c!952467) b!5453953))

(assert (= (and b!5453939 (not c!952467)) b!5453927))

(assert (= (and b!5453953 res!2322616) b!5453958))

(assert (= (and b!5453927 c!952461) b!5453940))

(assert (= (and b!5453927 (not c!952461)) b!5453941))

(assert (= (and b!5453940 res!2322604) b!5453942))

(assert (= (and b!5453940 c!952465) b!5453946))

(assert (= (and b!5453940 (not c!952465)) b!5453905))

(assert (= (and b!5453946 c!952466) b!5453947))

(assert (= (and b!5453946 (not c!952466)) b!5453914))

(assert (= (and b!5453947 res!2322622) b!5453944))

(assert (= (and b!5453914 res!2322595) b!5453929))

(assert (= (or b!5453947 b!5453914) bm!396154))

(assert (= (or b!5453947 b!5453914) bm!396219))

(assert (= (or b!5453947 b!5453914) bm!396272))

(assert (= (or b!5453944 b!5453914) bm!396160))

(assert (= (and b!5453905 c!952473) b!5453930))

(assert (= (and b!5453905 (not c!952473)) b!5453933))

(assert (= (and b!5453930 c!952462) b!5453924))

(assert (= (and b!5453930 (not c!952462)) b!5453934))

(assert (= (and b!5453924 res!2322594) b!5453936))

(assert (= (and b!5453924 res!2322596) b!5453970))

(assert (= (and b!5453934 res!2322620) b!5453923))

(assert (= (or b!5453924 b!5453934) bm!396351))

(assert (= (or b!5453924 b!5453934) bm!396311))

(assert (= (or b!5453924 b!5453934) bm!396161))

(assert (= (or b!5453924 b!5453934) bm!396217))

(assert (= (or b!5453924 b!5453934) bm!396230))

(assert (= (or b!5453924 b!5453934) bm!396317))

(assert (= (or b!5453924 b!5453934) bm!396237))

(assert (= (or b!5453924 b!5453934) bm!396322))

(assert (= (or b!5453924 b!5453934) bm!396164))

(assert (= (or b!5453924 b!5453934) bm!396288))

(assert (= (or b!5453924 b!5453934) bm!396247))

(assert (= (or b!5453924 b!5453934) bm!396254))

(assert (= (or b!5453924 b!5453934) bm!396264))

(assert (= (or b!5453924 b!5453934) bm!396320))

(assert (= (or b!5453924 b!5453934) bm!396189))

(assert (= (or b!5453924 b!5453934) bm!396314))

(assert (= (or b!5453924 b!5453934) bm!396273))

(assert (= (or b!5453924 b!5453934) bm!396342))

(assert (= (or b!5453924 b!5453934) bm!396231))

(assert (= (or b!5453914 b!5453924) bm!396323))

(assert (= (or b!5453914 b!5453924) bm!396236))

(assert (= (or b!5453914 b!5453924) bm!396307))

(assert (= (or b!5453914 bm!396351) bm!396318))

(assert (= (or b!5453914 b!5453924) bm!396354))

(assert (= (or b!5453914 b!5453924) bm!396212))

(assert (= (or b!5453914 bm!396237) bm!396175))

(assert (= (or b!5453914 b!5453924) bm!396271))

(assert (= (or b!5453914 b!5453924) bm!396344))

(assert (= (or b!5453914 b!5453924) bm!396263))

(assert (= (or bm!396219 b!5453924) bm!396316))

(assert (= (or b!5453914 b!5453924) bm!396198))

(assert (= (or b!5453914 bm!396317) bm!396202))

(assert (= (or b!5453947 b!5453934) bm!396210))

(assert (= (or b!5453914 b!5453924) bm!396173))

(assert (= (or b!5453946 b!5453924) bm!396346))

(assert (= (or b!5453946 b!5453924) bm!396258))

(assert (= (or b!5453914 bm!396164) bm!396340))

(assert (= (or b!5453914 b!5453924) bm!396178))

(assert (= (or b!5453914 bm!396217) bm!396208))

(assert (= (or b!5453914 bm!396288) bm!396183))

(assert (= (or b!5453947 b!5453934) bm!396216))

(assert (= (or b!5453914 b!5453924) bm!396334))

(assert (= (or bm!396160 b!5453905) bm!396348))

(assert (= (or b!5453914 b!5453924) bm!396302))

(assert (= (or b!5453946 b!5453924) bm!396165))

(assert (= (or b!5453914 bm!396273) bm!396326))

(assert (= (or b!5453914 b!5453924) bm!396347))

(assert (= (or b!5453946 bm!396264) bm!396224))

(assert (= (or b!5453914 b!5453924) bm!396246))

(assert (= (or b!5453914 b!5453946 b!5453930) bm!396188))

(assert (= (or b!5453947 b!5453934) bm!396275))

(assert (= (or b!5453914 b!5453924) bm!396266))

(assert (= (or b!5453946 bm!396311) bm!396306))

(assert (= (or b!5453914 bm!396314) bm!396269))

(assert (= (or b!5453947 b!5453934) bm!396343))

(assert (= (or b!5453946 bm!396189) bm!396244))

(assert (= (or b!5453914 bm!396161) bm!396156))

(assert (= (or b!5453914 b!5453924) bm!396270))

(assert (= (or b!5453914 b!5453924) bm!396207))

(assert (= (or b!5453914 b!5453924) bm!396192))

(assert (= (or b!5453946 b!5453924) bm!396358))

(assert (= (or b!5453946 bm!396322) bm!396350))

(assert (= (or bm!396272 bm!396247) bm!396193))

(assert (= (or bm!396154 bm!396254) bm!396197))

(assert (= (or b!5453914 b!5453924) bm!396256))

(assert (= (or b!5453914 b!5453924) bm!396290))

(assert (= (or b!5453914 b!5453924) bm!396353))

(assert (= (and b!5453941 c!952463) b!5453935))

(assert (= (and b!5453941 (not c!952463)) b!5453928))

(assert (= (and b!5453935 res!2322618) b!5453951))

(assert (= (and b!5453928 res!2322606) b!5453937))

(assert (= (or b!5453935 b!5453928) bm!396335))

(assert (= (or b!5453935 b!5453928) bm!396259))

(assert (= (or b!5453935 b!5453928) bm!396352))

(assert (= (or b!5453935 b!5453928) bm!396186))

(assert (= (or b!5453935 b!5453937) bm!396331))

(assert (= (or b!5453935 b!5453928) bm!396167))

(assert (= (or b!5453935 b!5453928) bm!396283))

(assert (= (or b!5453935 b!5453928) bm!396168))

(assert (= (or b!5453935 b!5453928) bm!396279))

(assert (= (or bm!396202 b!5453935) bm!396336))

(assert (= (or bm!396320 bm!396168) bm!396328))

(assert (= (or bm!396173 bm!396283) bm!396215))

(assert (= (or b!5453940 bm!396352) bm!396157))

(assert (= (or bm!396353 b!5453935) bm!396172))

(assert (= (or bm!396348 b!5453935) bm!396357))

(assert (= (or b!5453940 b!5453935) bm!396262))

(assert (= (or b!5453940 b!5453935) bm!396221))

(assert (= (or b!5453940 bm!396186) bm!396185))

(assert (= (or bm!396188 bm!396331) bm!396297))

(assert (= (or bm!396197 bm!396259) bm!396209))

(assert (= (or b!5453940 bm!396167) bm!396255))

(assert (= (or bm!396316 b!5453935) bm!396194))

(assert (= (or bm!396178 bm!396279) bm!396292))

(assert (= (or bm!396193 b!5453951) bm!396298))

(assert (= (or bm!396216 b!5453935) bm!396235))

(assert (= (or b!5453940 b!5453935) bm!396241))

(assert (= (or b!5453953 bm!396230) bm!396257))

(assert (= (or b!5453953 b!5453924) bm!396233))

(assert (= (or b!5453953 bm!396194) bm!396303))

(assert (= (or b!5453953 bm!396258) bm!396226))

(assert (= (or b!5453953 b!5453940) bm!396280))

(assert (= (or b!5453953 bm!396224) bm!396267))

(assert (= (or b!5453953 bm!396215) bm!396296))

(assert (= (or b!5453953 bm!396271) bm!396169))

(assert (= (or b!5453953 bm!396236) bm!396200))

(assert (= (or b!5453953 bm!396208) bm!396152))

(assert (= (or b!5453953 bm!396334) bm!396176))

(assert (= (or b!5453953 bm!396262) bm!396182))

(assert (= (or b!5453953 bm!396318) bm!396222))

(assert (= (or b!5453953 bm!396350) bm!396191))

(assert (= (or b!5453958 bm!396298) bm!396277))

(assert (= (or b!5453953 bm!396290) bm!396229))

(assert (= (or b!5453953 bm!396306) bm!396153))

(assert (= (or b!5453953 bm!396336) bm!396177))

(assert (= (or b!5453953 b!5453940) bm!396211))

(assert (= (or b!5453953 b!5453940) bm!396155))

(assert (= (or b!5453953 bm!396328) bm!396171))

(assert (= (or b!5453953 bm!396292) bm!396220))

(assert (= (or b!5453953 bm!396255) bm!396243))

(assert (= (or b!5453953 bm!396358) bm!396195))

(assert (= (or b!5453953 bm!396235) bm!396174))

(assert (= (or b!5453953 bm!396357) bm!396201))

(assert (= (or b!5453953 bm!396212) bm!396284))

(assert (= (or b!5453953 bm!396263) bm!396341))

(assert (= (or b!5453953 bm!396326) bm!396228))

(assert (= (or b!5453953 bm!396192) bm!396265))

(assert (= (or b!5453953 bm!396165) bm!396332))

(assert (= (or b!5453908 bm!396296) bm!396196))

(assert (= (or b!5453908 bm!396222) bm!396170))

(assert (= (or b!5453908 bm!396243) bm!396308))

(assert (= (or b!5453908 bm!396233) bm!396240))

(assert (= (or b!5453908 bm!396171) bm!396248))

(assert (= (or b!5453908 bm!396172) bm!396321))

(assert (= (or b!5453908 b!5453935) bm!396261))

(assert (= (or b!5453908 b!5453924) bm!396309))

(assert (= (or b!5453908 bm!396169) bm!396289))

(assert (= (or b!5453908 bm!396191) bm!396179))

(assert (= (or b!5453908 bm!396200) bm!396163))

(assert (= (or b!5453908 bm!396228) bm!396293))

(assert (= (or b!5453908 bm!396343) bm!396223))

(assert (= (or b!5453908 bm!396280) bm!396218))

(assert (= (or b!5453908 bm!396257) bm!396287))

(assert (= (or b!5453908 b!5453953) bm!396329))

(assert (= (or b!5453908 bm!396201) bm!396304))

(assert (= (or b!5453908 bm!396174) bm!396349))

(assert (= (or b!5453908 bm!396155) bm!396333))

(assert (= (or b!5453908 bm!396220) bm!396225))

(assert (= (or b!5453908 bm!396153) bm!396158))

(assert (= (or b!5453908 bm!396229) bm!396301))

(assert (= (or b!5453908 bm!396267) bm!396285))

(assert (= (or b!5453908 bm!396303) bm!396276))

(assert (= (or b!5453963 bm!396297) bm!396190))

(assert (= (or b!5453908 bm!396157) bm!396162))

(assert (= (or b!5453908 bm!396152) bm!396337))

(assert (= (or b!5453908 bm!396177) bm!396251))

(assert (= (or b!5453964 bm!396277) bm!396206))

(assert (= (or b!5453908 bm!396244) bm!396187))

(assert (= (or b!5453908 bm!396269) bm!396227))

(assert (= (or b!5453908 bm!396211) bm!396250))

(assert (= (or b!5453908 bm!396221) bm!396205))

(assert (= (or b!5453908 b!5453953) bm!396245))

(assert (= (or b!5453908 bm!396226) bm!396338))

(assert (= (or b!5453908 bm!396176) bm!396356))

(assert (= (or b!5453908 b!5453940) bm!396310))

(assert (= (or b!5453908 b!5453940) bm!396166))

(assert (= (or b!5453908 bm!396195) bm!396299))

(assert (= (or b!5453907 b!5453924) bm!396214))

(assert (= (or b!5453908 bm!396265) bm!396327))

(assert (= (or b!5453908 bm!396332) bm!396204))

(assert (= (or b!5453912 bm!396308) bm!396238))

(assert (= (or b!5453912 bm!396231) bm!396291))

(assert (= (or b!5453912 b!5453913) bm!396180))

(assert (= (or b!5453912 bm!396321) bm!396232))

(assert (= (or b!5453945 bm!396261) bm!396300))

(assert (= (or b!5453949 b!5453921 b!5453908) bm!396203))

(assert (= (or b!5453912 b!5453908) bm!396294))

(assert (= (or b!5453912 bm!396245) bm!396253))

(assert (= (or b!5453912 bm!396218) bm!396295))

(assert (= (or b!5453912 bm!396310) bm!396278))

(assert (= (or b!5453912 bm!396225) bm!396282))

(assert (= (or b!5453912 bm!396185) bm!396213))

(assert (= (or b!5453912 bm!396246) bm!396234))

(assert (= (or b!5453912 bm!396251) bm!396239))

(assert (= (or b!5453912 bm!396333) bm!396252))

(assert (= (or b!5453912 bm!396250) bm!396249))

(assert (= (or b!5453949 bm!396206) bm!396312))

(assert (= (or b!5453912 bm!396162) bm!396345))

(assert (= (or b!5453912 bm!396223) bm!396315))

(assert (= (or b!5453945 bm!396214) bm!396281))

(assert (= (or b!5453912 b!5453908) bm!396330))

(assert (= (or b!5453912 bm!396166) bm!396260))

(assert (= (or b!5453912 bm!396304) bm!396199))

(assert (= (or b!5453912 bm!396356) bm!396268))

(assert (= (or b!5453912 bm!396349) bm!396286))

(assert (= (or b!5453912 bm!396276) bm!396313))

(assert (= (or b!5453966 bm!396190) bm!396181))

(assert (= (or b!5453912 bm!396309) bm!396274))

(assert (= (or b!5453912 b!5453908) bm!396242))

(assert (= (or b!5453912 bm!396227) bm!396305))

(assert (= (or b!5453912 bm!396287) bm!396339))

(assert (= (or b!5453912 bm!396210) bm!396324))

(assert (= (or b!5453912 bm!396248) bm!396325))

(assert (= (or b!5453926 bm!396239) bm!396319))

(assert (= (or b!5453926 bm!396286) bm!396184))

(assert (= (or b!5453926 bm!396313) bm!396355))

(assert (= (or b!5453926 bm!396330) bm!396159))

(assert (= (and b!5453920 (not res!2322615)) b!5453948))

(assert (= (and b!5453948 (not res!2322593)) b!5453954))

(assert (= (and b!5453954 (not res!2322623)) b!5453915))

(assert (= (and start!571406 ((_ is ElementMatch!15281) r!7292)) b!5453956))

(assert (= (and start!571406 ((_ is Concat!24126) r!7292)) b!5453965))

(assert (= (and start!571406 ((_ is Star!15281) r!7292)) b!5453938))

(assert (= (and start!571406 ((_ is Union!15281) r!7292)) b!5453962))

(assert (= (and start!571406 condSetEmpty!35689) setIsEmpty!35689))

(assert (= (and start!571406 (not condSetEmpty!35689)) setNonEmpty!35689))

(assert (= setNonEmpty!35689 b!5453968))

(assert (= b!5453943 b!5453917))

(assert (= (and start!571406 ((_ is Cons!62020) zl!343)) b!5453943))

(assert (= (and start!571406 ((_ is Cons!62018) s!2326)) b!5453909))

(declare-fun m!6474484 () Bool)

(assert (=> bm!396209 m!6474484))

(declare-fun m!6474486 () Bool)

(assert (=> b!5453918 m!6474486))

(assert (=> b!5453918 m!6474486))

(declare-fun m!6474488 () Bool)

(assert (=> b!5453918 m!6474488))

(declare-fun m!6474490 () Bool)

(assert (=> b!5453926 m!6474490))

(declare-fun m!6474492 () Bool)

(assert (=> bm!396253 m!6474492))

(declare-fun m!6474494 () Bool)

(assert (=> bm!396294 m!6474494))

(declare-fun m!6474496 () Bool)

(assert (=> bm!396335 m!6474496))

(declare-fun m!6474498 () Bool)

(assert (=> bm!396295 m!6474498))

(declare-fun m!6474500 () Bool)

(assert (=> bm!396324 m!6474500))

(declare-fun m!6474502 () Bool)

(assert (=> bm!396198 m!6474502))

(declare-fun m!6474504 () Bool)

(assert (=> setNonEmpty!35689 m!6474504))

(declare-fun m!6474506 () Bool)

(assert (=> bm!396341 m!6474506))

(declare-fun m!6474508 () Bool)

(assert (=> b!5453920 m!6474508))

(declare-fun m!6474510 () Bool)

(assert (=> b!5453920 m!6474510))

(declare-fun m!6474512 () Bool)

(assert (=> b!5453920 m!6474512))

(declare-fun m!6474514 () Bool)

(assert (=> b!5453920 m!6474514))

(assert (=> b!5453920 m!6474490))

(declare-fun m!6474516 () Bool)

(assert (=> b!5453920 m!6474516))

(declare-fun m!6474518 () Bool)

(assert (=> b!5453920 m!6474518))

(declare-fun m!6474520 () Bool)

(assert (=> b!5453920 m!6474520))

(declare-fun m!6474522 () Bool)

(assert (=> b!5453920 m!6474522))

(declare-fun m!6474524 () Bool)

(assert (=> b!5453920 m!6474524))

(declare-fun m!6474526 () Bool)

(assert (=> b!5453920 m!6474526))

(declare-fun m!6474528 () Bool)

(assert (=> bm!396270 m!6474528))

(declare-fun m!6474530 () Bool)

(assert (=> bm!396302 m!6474530))

(declare-fun m!6474532 () Bool)

(assert (=> bm!396241 m!6474532))

(declare-fun m!6474534 () Bool)

(assert (=> b!5453931 m!6474534))

(declare-fun m!6474536 () Bool)

(assert (=> b!5453931 m!6474536))

(assert (=> b!5453931 m!6474534))

(declare-fun m!6474538 () Bool)

(assert (=> b!5453931 m!6474538))

(declare-fun m!6474540 () Bool)

(assert (=> b!5453931 m!6474540))

(declare-fun m!6474542 () Bool)

(assert (=> b!5453931 m!6474542))

(assert (=> b!5453931 m!6474540))

(declare-fun m!6474544 () Bool)

(assert (=> b!5453931 m!6474544))

(declare-fun m!6474546 () Bool)

(assert (=> bm!396240 m!6474546))

(declare-fun m!6474548 () Bool)

(assert (=> bm!396181 m!6474548))

(declare-fun m!6474550 () Bool)

(assert (=> bm!396355 m!6474550))

(declare-fun m!6474552 () Bool)

(assert (=> bm!396344 m!6474552))

(declare-fun m!6474554 () Bool)

(assert (=> bm!396278 m!6474554))

(declare-fun m!6474556 () Bool)

(assert (=> bm!396312 m!6474556))

(assert (=> b!5453947 m!6474490))

(declare-fun m!6474558 () Bool)

(assert (=> bm!396327 m!6474558))

(declare-fun m!6474560 () Bool)

(assert (=> b!5453908 m!6474560))

(declare-fun m!6474562 () Bool)

(assert (=> b!5453908 m!6474562))

(declare-fun m!6474564 () Bool)

(assert (=> bm!396293 m!6474564))

(declare-fun m!6474566 () Bool)

(assert (=> bm!396158 m!6474566))

(declare-fun m!6474568 () Bool)

(assert (=> bm!396203 m!6474568))

(declare-fun m!6474570 () Bool)

(assert (=> b!5453916 m!6474570))

(declare-fun m!6474572 () Bool)

(assert (=> bm!396338 m!6474572))

(declare-fun m!6474574 () Bool)

(assert (=> b!5453949 m!6474574))

(declare-fun m!6474576 () Bool)

(assert (=> bm!396323 m!6474576))

(declare-fun m!6474578 () Bool)

(assert (=> bm!396291 m!6474578))

(declare-fun m!6474580 () Bool)

(assert (=> b!5453950 m!6474580))

(declare-fun m!6474582 () Bool)

(assert (=> b!5453950 m!6474582))

(declare-fun m!6474584 () Bool)

(assert (=> b!5453950 m!6474584))

(declare-fun m!6474586 () Bool)

(assert (=> b!5453948 m!6474586))

(declare-fun m!6474588 () Bool)

(assert (=> b!5453948 m!6474588))

(assert (=> b!5453948 m!6474588))

(declare-fun m!6474590 () Bool)

(assert (=> b!5453948 m!6474590))

(declare-fun m!6474592 () Bool)

(assert (=> b!5453943 m!6474592))

(declare-fun m!6474594 () Bool)

(assert (=> b!5453953 m!6474594))

(declare-fun m!6474596 () Bool)

(assert (=> bm!396159 m!6474596))

(declare-fun m!6474598 () Bool)

(assert (=> bm!396337 m!6474598))

(declare-fun m!6474600 () Bool)

(assert (=> bm!396260 m!6474600))

(assert (=> b!5453934 m!6474490))

(declare-fun m!6474602 () Bool)

(assert (=> bm!396300 m!6474602))

(declare-fun m!6474604 () Bool)

(assert (=> bm!396249 m!6474604))

(declare-fun m!6474606 () Bool)

(assert (=> b!5453959 m!6474606))

(declare-fun m!6474608 () Bool)

(assert (=> bm!396301 m!6474608))

(declare-fun m!6474610 () Bool)

(assert (=> bm!396299 m!6474610))

(declare-fun m!6474612 () Bool)

(assert (=> b!5453961 m!6474612))

(declare-fun m!6474614 () Bool)

(assert (=> bm!396281 m!6474614))

(declare-fun m!6474616 () Bool)

(assert (=> bm!396274 m!6474616))

(declare-fun m!6474618 () Bool)

(assert (=> bm!396347 m!6474618))

(declare-fun m!6474620 () Bool)

(assert (=> b!5453955 m!6474620))

(declare-fun m!6474622 () Bool)

(assert (=> bm!396175 m!6474622))

(declare-fun m!6474624 () Bool)

(assert (=> b!5453912 m!6474624))

(declare-fun m!6474626 () Bool)

(assert (=> b!5453912 m!6474626))

(declare-fun m!6474628 () Bool)

(assert (=> b!5453912 m!6474628))

(declare-fun m!6474630 () Bool)

(assert (=> b!5453912 m!6474630))

(declare-fun m!6474632 () Bool)

(assert (=> b!5453912 m!6474632))

(declare-fun m!6474634 () Bool)

(assert (=> b!5453912 m!6474634))

(declare-fun m!6474636 () Bool)

(assert (=> bm!396346 m!6474636))

(declare-fun m!6474638 () Bool)

(assert (=> bm!396285 m!6474638))

(declare-fun m!6474640 () Bool)

(assert (=> start!571406 m!6474640))

(declare-fun m!6474642 () Bool)

(assert (=> bm!396170 m!6474642))

(declare-fun m!6474644 () Bool)

(assert (=> bm!396156 m!6474644))

(declare-fun m!6474646 () Bool)

(assert (=> bm!396180 m!6474646))

(declare-fun m!6474648 () Bool)

(assert (=> bm!396307 m!6474648))

(declare-fun m!6474650 () Bool)

(assert (=> bm!396199 m!6474650))

(declare-fun m!6474652 () Bool)

(assert (=> bm!396205 m!6474652))

(declare-fun m!6474654 () Bool)

(assert (=> bm!396315 m!6474654))

(declare-fun m!6474656 () Bool)

(assert (=> bm!396319 m!6474656))

(declare-fun m!6474658 () Bool)

(assert (=> bm!396204 m!6474658))

(assert (=> bm!396256 m!6474528))

(declare-fun m!6474660 () Bool)

(assert (=> bm!396305 m!6474660))

(declare-fun m!6474662 () Bool)

(assert (=> bm!396163 m!6474662))

(declare-fun m!6474664 () Bool)

(assert (=> bm!396340 m!6474664))

(declare-fun m!6474666 () Bool)

(assert (=> b!5453924 m!6474666))

(declare-fun m!6474668 () Bool)

(assert (=> b!5453924 m!6474668))

(declare-fun m!6474670 () Bool)

(assert (=> b!5453924 m!6474670))

(declare-fun m!6474672 () Bool)

(assert (=> b!5453924 m!6474672))

(declare-fun m!6474674 () Bool)

(assert (=> b!5453924 m!6474674))

(declare-fun m!6474676 () Bool)

(assert (=> b!5453924 m!6474676))

(declare-fun m!6474678 () Bool)

(assert (=> b!5453924 m!6474678))

(declare-fun m!6474680 () Bool)

(assert (=> b!5453910 m!6474680))

(declare-fun m!6474682 () Bool)

(assert (=> b!5453940 m!6474682))

(declare-fun m!6474684 () Bool)

(assert (=> b!5453940 m!6474684))

(declare-fun m!6474686 () Bool)

(assert (=> b!5453940 m!6474686))

(declare-fun m!6474688 () Bool)

(assert (=> b!5453940 m!6474688))

(declare-fun m!6474690 () Bool)

(assert (=> b!5453940 m!6474690))

(declare-fun m!6474692 () Bool)

(assert (=> b!5453940 m!6474692))

(declare-fun m!6474694 () Bool)

(assert (=> bm!396252 m!6474694))

(declare-fun m!6474696 () Bool)

(assert (=> b!5453954 m!6474696))

(declare-fun m!6474698 () Bool)

(assert (=> b!5453954 m!6474698))

(declare-fun m!6474700 () Bool)

(assert (=> bm!396354 m!6474700))

(declare-fun m!6474702 () Bool)

(assert (=> bm!396266 m!6474702))

(declare-fun m!6474704 () Bool)

(assert (=> bm!396268 m!6474704))

(declare-fun m!6474706 () Bool)

(assert (=> bm!396284 m!6474706))

(declare-fun m!6474708 () Bool)

(assert (=> bm!396207 m!6474708))

(declare-fun m!6474710 () Bool)

(assert (=> bm!396213 m!6474710))

(assert (=> bm!396232 m!6474666))

(declare-fun m!6474712 () Bool)

(assert (=> bm!396232 m!6474712))

(declare-fun m!6474714 () Bool)

(assert (=> bm!396232 m!6474714))

(declare-fun m!6474716 () Bool)

(assert (=> b!5453906 m!6474716))

(declare-fun m!6474718 () Bool)

(assert (=> b!5453906 m!6474718))

(declare-fun m!6474720 () Bool)

(assert (=> b!5453906 m!6474720))

(assert (=> b!5453919 m!6474612))

(declare-fun m!6474722 () Bool)

(assert (=> bm!396282 m!6474722))

(declare-fun m!6474724 () Bool)

(assert (=> b!5453952 m!6474724))

(assert (=> b!5453957 m!6474612))

(declare-fun m!6474726 () Bool)

(assert (=> b!5453946 m!6474726))

(declare-fun m!6474728 () Bool)

(assert (=> bm!396183 m!6474728))

(declare-fun m!6474730 () Bool)

(assert (=> bm!396179 m!6474730))

(declare-fun m!6474732 () Bool)

(assert (=> b!5453915 m!6474732))

(assert (=> b!5453935 m!6474490))

(declare-fun m!6474734 () Bool)

(assert (=> bm!396275 m!6474734))

(declare-fun m!6474736 () Bool)

(assert (=> bm!396182 m!6474736))

(declare-fun m!6474738 () Bool)

(assert (=> bm!396342 m!6474738))

(declare-fun m!6474740 () Bool)

(assert (=> bm!396184 m!6474740))

(declare-fun m!6474742 () Bool)

(assert (=> bm!396187 m!6474742))

(declare-fun m!6474744 () Bool)

(assert (=> bm!396238 m!6474744))

(declare-fun m!6474746 () Bool)

(assert (=> bm!396345 m!6474746))

(declare-fun m!6474748 () Bool)

(assert (=> bm!396289 m!6474748))

(declare-fun m!6474750 () Bool)

(assert (=> bm!396196 m!6474750))

(declare-fun m!6474752 () Bool)

(assert (=> bm!396329 m!6474752))

(declare-fun m!6474754 () Bool)

(assert (=> bm!396234 m!6474754))

(declare-fun m!6474756 () Bool)

(assert (=> bm!396339 m!6474756))

(declare-fun m!6474758 () Bool)

(assert (=> bm!396325 m!6474758))

(declare-fun m!6474760 () Bool)

(assert (=> bm!396242 m!6474760))

(check-sat (not b!5453912) (not b!5453909) (not b!5453906) (not bm!396293) (not bm!396187) (not bm!396209) (not b!5453968) (not bm!396252) (not bm!396341) (not bm!396282) (not b!5453955) (not bm!396256) (not b!5453954) (not bm!396241) (not bm!396291) (not b!5453965) (not bm!396234) (not bm!396260) (not bm!396238) (not bm!396205) (not bm!396299) (not b!5453919) (not bm!396198) (not bm!396324) (not bm!396319) (not bm!396295) (not bm!396281) (not bm!396253) (not bm!396315) (not bm!396179) (not b!5453948) (not bm!396203) (not b!5453916) (not b!5453957) (not bm!396184) (not b!5453915) (not bm!396342) (not bm!396307) (not bm!396266) (not b!5453961) (not b!5453920) (not bm!396345) (not bm!396355) (not bm!396301) (not bm!396196) (not bm!396285) (not bm!396274) (not bm!396302) (not b!5453943) (not bm!396232) (not bm!396344) (not b!5453918) (not bm!396156) (not bm!396213) (not b!5453931) (not b!5453959) (not setNonEmpty!35689) (not bm!396268) (not bm!396242) (not bm!396289) (not bm!396159) (not bm!396158) (not bm!396199) (not bm!396325) (not bm!396278) (not bm!396180) (not bm!396340) (not b!5453938) (not bm!396335) (not b!5453917) (not b!5453910) (not start!571406) tp_is_empty!39815 (not bm!396305) (not bm!396270) (not bm!396346) (not b!5453924) (not bm!396327) (not bm!396339) (not bm!396347) (not bm!396204) (not b!5453950) (not b!5453962) (not bm!396329) (not bm!396183) (not b!5453946) (not bm!396312) (not bm!396275) (not bm!396294) (not bm!396338) (not bm!396207) (not b!5453949) (not bm!396337) (not bm!396284) (not bm!396181) (not bm!396163) (not bm!396323) (not bm!396182) (not bm!396300) (not bm!396354) (not bm!396249) (not b!5453940) (not bm!396170) (not b!5453952) (not bm!396175) (not bm!396240))
(check-sat)
(get-model)

(declare-fun bs!1261723 () Bool)

(declare-fun b!5454017 () Bool)

(assert (= bs!1261723 (and b!5454017 b!5453934)))

(declare-fun lambda!288180 () Int)

(assert (=> bs!1261723 (= (and (= s!2326 Nil!62018) (= (reg!15610 r!7292) (reg!15610 (regOne!31074 r!7292))) (= r!7292 lt!2225374)) (= lambda!288180 lambda!288174))))

(declare-fun bs!1261724 () Bool)

(assert (= bs!1261724 (and b!5454017 b!5453908)))

(assert (=> bs!1261724 (not (= lambda!288180 lambda!288154))))

(declare-fun bs!1261725 () Bool)

(assert (= bs!1261725 (and b!5454017 b!5453931)))

(assert (=> bs!1261725 (not (= lambda!288180 lambda!288149))))

(declare-fun bs!1261726 () Bool)

(assert (= bs!1261726 (and b!5454017 b!5453914)))

(assert (=> bs!1261726 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (reg!15610 r!7292) (reg!15610 (regOne!31074 r!7292))) (= r!7292 lt!2225374)) (= lambda!288180 lambda!288162))))

(assert (=> bs!1261724 (not (= lambda!288180 lambda!288151))))

(assert (=> bs!1261723 (not (= lambda!288180 lambda!288173))))

(assert (=> bs!1261726 (not (= lambda!288180 lambda!288161))))

(declare-fun bs!1261727 () Bool)

(assert (= bs!1261727 (and b!5454017 b!5453924)))

(assert (=> bs!1261727 (not (= lambda!288180 lambda!288170))))

(declare-fun bs!1261728 () Bool)

(assert (= bs!1261728 (and b!5454017 b!5453953)))

(assert (=> bs!1261728 (not (= lambda!288180 lambda!288155))))

(assert (=> bs!1261726 (not (= lambda!288180 lambda!288163))))

(declare-fun bs!1261729 () Bool)

(assert (= bs!1261729 (and b!5454017 b!5453946)))

(assert (=> bs!1261729 (not (= lambda!288180 lambda!288160))))

(assert (=> bs!1261727 (not (= lambda!288180 lambda!288169))))

(assert (=> bs!1261724 (not (= lambda!288180 lambda!288153))))

(assert (=> bs!1261723 (not (= lambda!288180 lambda!288172))))

(assert (=> bs!1261727 (not (= lambda!288180 lambda!288168))))

(assert (=> bs!1261729 (not (= lambda!288180 lambda!288159))))

(assert (=> bs!1261725 (not (= lambda!288180 lambda!288148))))

(assert (=> bs!1261727 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (reg!15610 r!7292) (reg!15610 (regOne!31074 r!7292))) (= r!7292 lt!2225374)) (= lambda!288180 lambda!288171))))

(assert (=> bs!1261728 (not (= lambda!288180 lambda!288156))))

(assert (=> bs!1261727 (not (= lambda!288180 lambda!288167))))

(assert (=> bs!1261724 (not (= lambda!288180 lambda!288152))))

(assert (=> bs!1261728 (not (= lambda!288180 lambda!288158))))

(assert (=> bs!1261728 (not (= lambda!288180 lambda!288157))))

(assert (=> b!5454017 true))

(assert (=> b!5454017 true))

(declare-fun bs!1261730 () Bool)

(declare-fun b!5454016 () Bool)

(assert (= bs!1261730 (and b!5454016 b!5453934)))

(declare-fun lambda!288182 () Int)

(assert (=> bs!1261730 (not (= lambda!288182 lambda!288174))))

(declare-fun bs!1261731 () Bool)

(assert (= bs!1261731 (and b!5454016 b!5454017)))

(assert (=> bs!1261731 (not (= lambda!288182 lambda!288180))))

(declare-fun bs!1261732 () Bool)

(assert (= bs!1261732 (and b!5454016 b!5453908)))

(assert (=> bs!1261732 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288182 lambda!288154))))

(declare-fun bs!1261733 () Bool)

(assert (= bs!1261733 (and b!5454016 b!5453931)))

(assert (=> bs!1261733 (= lambda!288182 lambda!288149)))

(declare-fun bs!1261734 () Bool)

(assert (= bs!1261734 (and b!5454016 b!5453914)))

(assert (=> bs!1261734 (not (= lambda!288182 lambda!288162))))

(assert (=> bs!1261732 (not (= lambda!288182 lambda!288151))))

(assert (=> bs!1261730 (= (and (= s!2326 Nil!62018) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288182 lambda!288173))))

(assert (=> bs!1261734 (not (= lambda!288182 lambda!288161))))

(declare-fun bs!1261735 () Bool)

(assert (= bs!1261735 (and b!5454016 b!5453924)))

(assert (=> bs!1261735 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288182 lambda!288170))))

(declare-fun bs!1261736 () Bool)

(assert (= bs!1261736 (and b!5454016 b!5453953)))

(assert (=> bs!1261736 (not (= lambda!288182 lambda!288155))))

(assert (=> bs!1261734 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288182 lambda!288163))))

(declare-fun bs!1261737 () Bool)

(assert (= bs!1261737 (and b!5454016 b!5453946)))

(assert (=> bs!1261737 (= (= (regOne!31074 r!7292) lt!2225374) (= lambda!288182 lambda!288160))))

(assert (=> bs!1261735 (not (= lambda!288182 lambda!288169))))

(assert (=> bs!1261732 (not (= lambda!288182 lambda!288153))))

(assert (=> bs!1261730 (not (= lambda!288182 lambda!288172))))

(assert (=> bs!1261735 (= (= (regOne!31074 r!7292) lt!2225473) (= lambda!288182 lambda!288168))))

(assert (=> bs!1261737 (not (= lambda!288182 lambda!288159))))

(assert (=> bs!1261733 (not (= lambda!288182 lambda!288148))))

(assert (=> bs!1261735 (not (= lambda!288182 lambda!288171))))

(assert (=> bs!1261736 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288182 lambda!288156))))

(assert (=> bs!1261735 (not (= lambda!288182 lambda!288167))))

(assert (=> bs!1261732 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288182 lambda!288152))))

(assert (=> bs!1261736 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288182 lambda!288158))))

(assert (=> bs!1261736 (not (= lambda!288182 lambda!288157))))

(assert (=> b!5454016 true))

(assert (=> b!5454016 true))

(declare-fun b!5454013 () Bool)

(declare-fun e!3377751 () Bool)

(assert (=> b!5454013 (= e!3377751 (matchRSpec!2384 (regTwo!31075 r!7292) s!2326))))

(declare-fun d!1736710 () Bool)

(declare-fun c!952486 () Bool)

(assert (=> d!1736710 (= c!952486 ((_ is EmptyExpr!15281) r!7292))))

(declare-fun e!3377750 () Bool)

(assert (=> d!1736710 (= (matchRSpec!2384 r!7292 s!2326) e!3377750)))

(declare-fun b!5454014 () Bool)

(declare-fun call!396369 () Bool)

(assert (=> b!5454014 (= e!3377750 call!396369)))

(declare-fun b!5454015 () Bool)

(declare-fun e!3377752 () Bool)

(declare-fun e!3377749 () Bool)

(assert (=> b!5454015 (= e!3377752 e!3377749)))

(declare-fun c!952485 () Bool)

(assert (=> b!5454015 (= c!952485 ((_ is Star!15281) r!7292))))

(declare-fun call!396368 () Bool)

(assert (=> b!5454016 (= e!3377749 call!396368)))

(declare-fun e!3377748 () Bool)

(assert (=> b!5454017 (= e!3377748 call!396368)))

(declare-fun b!5454018 () Bool)

(declare-fun res!2322644 () Bool)

(assert (=> b!5454018 (=> res!2322644 e!3377748)))

(assert (=> b!5454018 (= res!2322644 call!396369)))

(assert (=> b!5454018 (= e!3377749 e!3377748)))

(declare-fun b!5454019 () Bool)

(declare-fun e!3377746 () Bool)

(assert (=> b!5454019 (= e!3377746 (= s!2326 (Cons!62018 (c!952474 r!7292) Nil!62018)))))

(declare-fun b!5454020 () Bool)

(declare-fun e!3377747 () Bool)

(assert (=> b!5454020 (= e!3377750 e!3377747)))

(declare-fun res!2322645 () Bool)

(assert (=> b!5454020 (= res!2322645 (not ((_ is EmptyLang!15281) r!7292)))))

(assert (=> b!5454020 (=> (not res!2322645) (not e!3377747))))

(declare-fun b!5454021 () Bool)

(declare-fun c!952483 () Bool)

(assert (=> b!5454021 (= c!952483 ((_ is ElementMatch!15281) r!7292))))

(assert (=> b!5454021 (= e!3377747 e!3377746)))

(declare-fun b!5454022 () Bool)

(assert (=> b!5454022 (= e!3377752 e!3377751)))

(declare-fun res!2322643 () Bool)

(assert (=> b!5454022 (= res!2322643 (matchRSpec!2384 (regOne!31075 r!7292) s!2326))))

(assert (=> b!5454022 (=> res!2322643 e!3377751)))

(declare-fun b!5454023 () Bool)

(declare-fun c!952484 () Bool)

(assert (=> b!5454023 (= c!952484 ((_ is Union!15281) r!7292))))

(assert (=> b!5454023 (= e!3377746 e!3377752)))

(declare-fun bm!396363 () Bool)

(assert (=> bm!396363 (= call!396369 (isEmpty!34002 s!2326))))

(declare-fun bm!396364 () Bool)

(assert (=> bm!396364 (= call!396368 (Exists!2462 (ite c!952485 lambda!288180 lambda!288182)))))

(assert (= (and d!1736710 c!952486) b!5454014))

(assert (= (and d!1736710 (not c!952486)) b!5454020))

(assert (= (and b!5454020 res!2322645) b!5454021))

(assert (= (and b!5454021 c!952483) b!5454019))

(assert (= (and b!5454021 (not c!952483)) b!5454023))

(assert (= (and b!5454023 c!952484) b!5454022))

(assert (= (and b!5454023 (not c!952484)) b!5454015))

(assert (= (and b!5454022 (not res!2322643)) b!5454013))

(assert (= (and b!5454015 c!952485) b!5454018))

(assert (= (and b!5454015 (not c!952485)) b!5454016))

(assert (= (and b!5454018 (not res!2322644)) b!5454017))

(assert (= (or b!5454017 b!5454016) bm!396364))

(assert (= (or b!5454014 b!5454018) bm!396363))

(declare-fun m!6474762 () Bool)

(assert (=> b!5454013 m!6474762))

(declare-fun m!6474764 () Bool)

(assert (=> b!5454022 m!6474764))

(declare-fun m!6474766 () Bool)

(assert (=> bm!396363 m!6474766))

(declare-fun m!6474768 () Bool)

(assert (=> bm!396364 m!6474768))

(assert (=> b!5453950 d!1736710))

(declare-fun b!5454071 () Bool)

(declare-fun e!3377783 () Bool)

(declare-fun lt!2225575 () Bool)

(assert (=> b!5454071 (= e!3377783 (not lt!2225575))))

(declare-fun b!5454072 () Bool)

(declare-fun res!2322670 () Bool)

(declare-fun e!3377780 () Bool)

(assert (=> b!5454072 (=> res!2322670 e!3377780)))

(declare-fun tail!10780 (List!62142) List!62142)

(assert (=> b!5454072 (= res!2322670 (not (isEmpty!34002 (tail!10780 s!2326))))))

(declare-fun b!5454073 () Bool)

(declare-fun e!3377784 () Bool)

(declare-fun e!3377782 () Bool)

(assert (=> b!5454073 (= e!3377784 e!3377782)))

(declare-fun res!2322672 () Bool)

(assert (=> b!5454073 (=> (not res!2322672) (not e!3377782))))

(assert (=> b!5454073 (= res!2322672 (not lt!2225575))))

(declare-fun b!5454074 () Bool)

(declare-fun res!2322674 () Bool)

(declare-fun e!3377779 () Bool)

(assert (=> b!5454074 (=> (not res!2322674) (not e!3377779))))

(declare-fun call!396375 () Bool)

(assert (=> b!5454074 (= res!2322674 (not call!396375))))

(declare-fun b!5454075 () Bool)

(declare-fun res!2322673 () Bool)

(assert (=> b!5454075 (=> (not res!2322673) (not e!3377779))))

(assert (=> b!5454075 (= res!2322673 (isEmpty!34002 (tail!10780 s!2326)))))

(declare-fun b!5454076 () Bool)

(declare-fun e!3377778 () Bool)

(assert (=> b!5454076 (= e!3377778 e!3377783)))

(declare-fun c!952499 () Bool)

(assert (=> b!5454076 (= c!952499 ((_ is EmptyLang!15281) r!7292))))

(declare-fun b!5454077 () Bool)

(declare-fun e!3377781 () Bool)

(assert (=> b!5454077 (= e!3377781 (nullable!5450 r!7292))))

(declare-fun d!1736714 () Bool)

(assert (=> d!1736714 e!3377778))

(declare-fun c!952500 () Bool)

(assert (=> d!1736714 (= c!952500 ((_ is EmptyExpr!15281) r!7292))))

(assert (=> d!1736714 (= lt!2225575 e!3377781)))

(declare-fun c!952501 () Bool)

(assert (=> d!1736714 (= c!952501 (isEmpty!34002 s!2326))))

(assert (=> d!1736714 (validRegex!7017 r!7292)))

(assert (=> d!1736714 (= (matchR!7466 r!7292 s!2326) lt!2225575)))

(declare-fun b!5454078 () Bool)

(assert (=> b!5454078 (= e!3377778 (= lt!2225575 call!396375))))

(declare-fun b!5454079 () Bool)

(declare-fun derivativeStep!4304 (Regex!15281 C!30832) Regex!15281)

(declare-fun head!11683 (List!62142) C!30832)

(assert (=> b!5454079 (= e!3377781 (matchR!7466 (derivativeStep!4304 r!7292 (head!11683 s!2326)) (tail!10780 s!2326)))))

(declare-fun b!5454080 () Bool)

(declare-fun res!2322676 () Bool)

(assert (=> b!5454080 (=> res!2322676 e!3377784)))

(assert (=> b!5454080 (= res!2322676 e!3377779)))

(declare-fun res!2322675 () Bool)

(assert (=> b!5454080 (=> (not res!2322675) (not e!3377779))))

(assert (=> b!5454080 (= res!2322675 lt!2225575)))

(declare-fun bm!396370 () Bool)

(assert (=> bm!396370 (= call!396375 (isEmpty!34002 s!2326))))

(declare-fun b!5454081 () Bool)

(assert (=> b!5454081 (= e!3377782 e!3377780)))

(declare-fun res!2322671 () Bool)

(assert (=> b!5454081 (=> res!2322671 e!3377780)))

(assert (=> b!5454081 (= res!2322671 call!396375)))

(declare-fun b!5454082 () Bool)

(declare-fun res!2322669 () Bool)

(assert (=> b!5454082 (=> res!2322669 e!3377784)))

(assert (=> b!5454082 (= res!2322669 (not ((_ is ElementMatch!15281) r!7292)))))

(assert (=> b!5454082 (= e!3377783 e!3377784)))

(declare-fun b!5454083 () Bool)

(assert (=> b!5454083 (= e!3377779 (= (head!11683 s!2326) (c!952474 r!7292)))))

(declare-fun b!5454084 () Bool)

(assert (=> b!5454084 (= e!3377780 (not (= (head!11683 s!2326) (c!952474 r!7292))))))

(assert (= (and d!1736714 c!952501) b!5454077))

(assert (= (and d!1736714 (not c!952501)) b!5454079))

(assert (= (and d!1736714 c!952500) b!5454078))

(assert (= (and d!1736714 (not c!952500)) b!5454076))

(assert (= (and b!5454076 c!952499) b!5454071))

(assert (= (and b!5454076 (not c!952499)) b!5454082))

(assert (= (and b!5454082 (not res!2322669)) b!5454080))

(assert (= (and b!5454080 res!2322675) b!5454074))

(assert (= (and b!5454074 res!2322674) b!5454075))

(assert (= (and b!5454075 res!2322673) b!5454083))

(assert (= (and b!5454080 (not res!2322676)) b!5454073))

(assert (= (and b!5454073 res!2322672) b!5454081))

(assert (= (and b!5454081 (not res!2322671)) b!5454072))

(assert (= (and b!5454072 (not res!2322670)) b!5454084))

(assert (= (or b!5454078 b!5454074 b!5454081) bm!396370))

(declare-fun m!6474786 () Bool)

(assert (=> b!5454077 m!6474786))

(declare-fun m!6474788 () Bool)

(assert (=> b!5454084 m!6474788))

(assert (=> bm!396370 m!6474766))

(assert (=> b!5454083 m!6474788))

(declare-fun m!6474790 () Bool)

(assert (=> b!5454075 m!6474790))

(assert (=> b!5454075 m!6474790))

(declare-fun m!6474792 () Bool)

(assert (=> b!5454075 m!6474792))

(assert (=> b!5454079 m!6474788))

(assert (=> b!5454079 m!6474788))

(declare-fun m!6474794 () Bool)

(assert (=> b!5454079 m!6474794))

(assert (=> b!5454079 m!6474790))

(assert (=> b!5454079 m!6474794))

(assert (=> b!5454079 m!6474790))

(declare-fun m!6474796 () Bool)

(assert (=> b!5454079 m!6474796))

(assert (=> d!1736714 m!6474766))

(assert (=> d!1736714 m!6474640))

(assert (=> b!5454072 m!6474790))

(assert (=> b!5454072 m!6474790))

(assert (=> b!5454072 m!6474792))

(assert (=> b!5453950 d!1736714))

(declare-fun d!1736720 () Bool)

(assert (=> d!1736720 (= (matchR!7466 r!7292 s!2326) (matchRSpec!2384 r!7292 s!2326))))

(declare-fun lt!2225586 () Unit!154792)

(declare-fun choose!41400 (Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736720 (= lt!2225586 (choose!41400 r!7292 s!2326))))

(assert (=> d!1736720 (validRegex!7017 r!7292)))

(assert (=> d!1736720 (= (mainMatchTheorem!2384 r!7292 s!2326) lt!2225586)))

(declare-fun bs!1261746 () Bool)

(assert (= bs!1261746 d!1736720))

(assert (=> bs!1261746 m!6474582))

(assert (=> bs!1261746 m!6474580))

(declare-fun m!6474798 () Bool)

(assert (=> bs!1261746 m!6474798))

(assert (=> bs!1261746 m!6474640))

(assert (=> b!5453950 d!1736720))

(declare-fun b!5454089 () Bool)

(declare-fun e!3377792 () Bool)

(declare-fun lt!2225587 () Bool)

(assert (=> b!5454089 (= e!3377792 (not lt!2225587))))

(declare-fun b!5454090 () Bool)

(declare-fun res!2322678 () Bool)

(declare-fun e!3377789 () Bool)

(assert (=> b!5454090 (=> res!2322678 e!3377789)))

(assert (=> b!5454090 (= res!2322678 (not (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))))))))

(declare-fun b!5454091 () Bool)

(declare-fun e!3377793 () Bool)

(declare-fun e!3377791 () Bool)

(assert (=> b!5454091 (= e!3377793 e!3377791)))

(declare-fun res!2322680 () Bool)

(assert (=> b!5454091 (=> (not res!2322680) (not e!3377791))))

(assert (=> b!5454091 (= res!2322680 (not lt!2225587))))

(declare-fun b!5454092 () Bool)

(declare-fun res!2322682 () Bool)

(declare-fun e!3377788 () Bool)

(assert (=> b!5454092 (=> (not res!2322682) (not e!3377788))))

(declare-fun call!396376 () Bool)

(assert (=> b!5454092 (= res!2322682 (not call!396376))))

(declare-fun b!5454093 () Bool)

(declare-fun res!2322681 () Bool)

(assert (=> b!5454093 (=> (not res!2322681) (not e!3377788))))

(assert (=> b!5454093 (= res!2322681 (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415)))))))

(declare-fun b!5454094 () Bool)

(declare-fun e!3377787 () Bool)

(assert (=> b!5454094 (= e!3377787 e!3377792)))

(declare-fun c!952508 () Bool)

(assert (=> b!5454094 (= c!952508 ((_ is EmptyLang!15281) (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292))))))))

(declare-fun e!3377790 () Bool)

(declare-fun b!5454095 () Bool)

(assert (=> b!5454095 (= e!3377790 (nullable!5450 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292))))))))

(declare-fun d!1736722 () Bool)

(assert (=> d!1736722 e!3377787))

(declare-fun c!952509 () Bool)

(assert (=> d!1736722 (= c!952509 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292))))))))

(assert (=> d!1736722 (= lt!2225587 e!3377790)))

(declare-fun c!952510 () Bool)

(assert (=> d!1736722 (= c!952510 (isEmpty!34002 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))))))

(assert (=> d!1736722 (validRegex!7017 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))))))

(assert (=> d!1736722 (= (matchR!7466 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))) (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))) lt!2225587)))

(declare-fun b!5454096 () Bool)

(assert (=> b!5454096 (= e!3377787 (= lt!2225587 call!396376))))

(declare-fun b!5454097 () Bool)

(assert (=> b!5454097 (= e!3377790 (matchR!7466 (derivativeStep!4304 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))) (head!11683 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415)))) (tail!10780 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415)))))))

(declare-fun b!5454098 () Bool)

(declare-fun res!2322684 () Bool)

(assert (=> b!5454098 (=> res!2322684 e!3377793)))

(assert (=> b!5454098 (= res!2322684 e!3377788)))

(declare-fun res!2322683 () Bool)

(assert (=> b!5454098 (=> (not res!2322683) (not e!3377788))))

(assert (=> b!5454098 (= res!2322683 lt!2225587)))

(declare-fun bm!396371 () Bool)

(assert (=> bm!396371 (= call!396376 (isEmpty!34002 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))))))

(declare-fun b!5454099 () Bool)

(assert (=> b!5454099 (= e!3377791 e!3377789)))

(declare-fun res!2322679 () Bool)

(assert (=> b!5454099 (=> res!2322679 e!3377789)))

(assert (=> b!5454099 (= res!2322679 call!396376)))

(declare-fun b!5454100 () Bool)

(declare-fun res!2322677 () Bool)

(assert (=> b!5454100 (=> res!2322677 e!3377793)))

(assert (=> b!5454100 (= res!2322677 (not ((_ is ElementMatch!15281) (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))))))))

(assert (=> b!5454100 (= e!3377792 e!3377793)))

(declare-fun b!5454101 () Bool)

(assert (=> b!5454101 (= e!3377788 (= (head!11683 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))) (c!952474 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292)))))))))

(declare-fun b!5454102 () Bool)

(assert (=> b!5454102 (= e!3377789 (not (= (head!11683 (ite (or c!952469 c!952471) s!2326 (_1!35783 lt!2225415))) (c!952474 (ite c!952469 lt!2225391 (ite c!952471 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225531)) (reg!15610 (regOne!31074 r!7292))))))))))

(assert (= (and d!1736722 c!952510) b!5454095))

(assert (= (and d!1736722 (not c!952510)) b!5454097))

(assert (= (and d!1736722 c!952509) b!5454096))

(assert (= (and d!1736722 (not c!952509)) b!5454094))

(assert (= (and b!5454094 c!952508) b!5454089))

(assert (= (and b!5454094 (not c!952508)) b!5454100))

(assert (= (and b!5454100 (not res!2322677)) b!5454098))

(assert (= (and b!5454098 res!2322683) b!5454092))

(assert (= (and b!5454092 res!2322682) b!5454093))

(assert (= (and b!5454093 res!2322681) b!5454101))

(assert (= (and b!5454098 (not res!2322684)) b!5454091))

(assert (= (and b!5454091 res!2322680) b!5454099))

(assert (= (and b!5454099 (not res!2322679)) b!5454090))

(assert (= (and b!5454090 (not res!2322678)) b!5454102))

(assert (= (or b!5454096 b!5454092 b!5454099) bm!396371))

(declare-fun m!6474800 () Bool)

(assert (=> b!5454095 m!6474800))

(declare-fun m!6474802 () Bool)

(assert (=> b!5454102 m!6474802))

(declare-fun m!6474804 () Bool)

(assert (=> bm!396371 m!6474804))

(assert (=> b!5454101 m!6474802))

(declare-fun m!6474806 () Bool)

(assert (=> b!5454093 m!6474806))

(assert (=> b!5454093 m!6474806))

(declare-fun m!6474808 () Bool)

(assert (=> b!5454093 m!6474808))

(assert (=> b!5454097 m!6474802))

(assert (=> b!5454097 m!6474802))

(declare-fun m!6474810 () Bool)

(assert (=> b!5454097 m!6474810))

(assert (=> b!5454097 m!6474806))

(assert (=> b!5454097 m!6474810))

(assert (=> b!5454097 m!6474806))

(declare-fun m!6474812 () Bool)

(assert (=> b!5454097 m!6474812))

(assert (=> d!1736722 m!6474804))

(declare-fun m!6474814 () Bool)

(assert (=> d!1736722 m!6474814))

(assert (=> b!5454090 m!6474806))

(assert (=> b!5454090 m!6474806))

(assert (=> b!5454090 m!6474808))

(assert (=> bm!396274 d!1736722))

(declare-fun d!1736724 () Bool)

(declare-fun choose!41402 (Int) Bool)

(assert (=> d!1736724 (= (Exists!2462 (ite c!952471 lambda!288152 (ite c!952467 lambda!288158 (ite c!952465 lambda!288159 (ite c!952462 lambda!288167 lambda!288172))))) (choose!41402 (ite c!952471 lambda!288152 (ite c!952467 lambda!288158 (ite c!952465 lambda!288159 (ite c!952462 lambda!288167 lambda!288172))))))))

(declare-fun bs!1261747 () Bool)

(assert (= bs!1261747 d!1736724))

(declare-fun m!6474816 () Bool)

(assert (=> bs!1261747 m!6474816))

(assert (=> bm!396179 d!1736724))

(declare-fun b!5454122 () Bool)

(declare-fun e!3377804 () List!62142)

(assert (=> b!5454122 (= e!3377804 (Cons!62018 (h!68466 (ite c!952465 lt!2225463 (_1!35783 lt!2225505))) (++!13641 (t!375371 (ite c!952465 lt!2225463 (_1!35783 lt!2225505))) (ite c!952465 (_2!35783 lt!2225382) lt!2225407))))))

(declare-fun b!5454121 () Bool)

(assert (=> b!5454121 (= e!3377804 (ite c!952465 (_2!35783 lt!2225382) lt!2225407))))

(declare-fun d!1736726 () Bool)

(declare-fun e!3377805 () Bool)

(assert (=> d!1736726 e!3377805))

(declare-fun res!2322693 () Bool)

(assert (=> d!1736726 (=> (not res!2322693) (not e!3377805))))

(declare-fun lt!2225598 () List!62142)

(declare-fun content!11160 (List!62142) (InoxSet C!30832))

(assert (=> d!1736726 (= res!2322693 (= (content!11160 lt!2225598) ((_ map or) (content!11160 (ite c!952465 lt!2225463 (_1!35783 lt!2225505))) (content!11160 (ite c!952465 (_2!35783 lt!2225382) lt!2225407)))))))

(assert (=> d!1736726 (= lt!2225598 e!3377804)))

(declare-fun c!952517 () Bool)

(assert (=> d!1736726 (= c!952517 ((_ is Nil!62018) (ite c!952465 lt!2225463 (_1!35783 lt!2225505))))))

(assert (=> d!1736726 (= (++!13641 (ite c!952465 lt!2225463 (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) lt!2225407)) lt!2225598)))

(declare-fun b!5454123 () Bool)

(declare-fun res!2322694 () Bool)

(assert (=> b!5454123 (=> (not res!2322694) (not e!3377805))))

(declare-fun size!39897 (List!62142) Int)

(assert (=> b!5454123 (= res!2322694 (= (size!39897 lt!2225598) (+ (size!39897 (ite c!952465 lt!2225463 (_1!35783 lt!2225505))) (size!39897 (ite c!952465 (_2!35783 lt!2225382) lt!2225407)))))))

(declare-fun b!5454124 () Bool)

(assert (=> b!5454124 (= e!3377805 (or (not (= (ite c!952465 (_2!35783 lt!2225382) lt!2225407) Nil!62018)) (= lt!2225598 (ite c!952465 lt!2225463 (_1!35783 lt!2225505)))))))

(assert (= (and d!1736726 c!952517) b!5454121))

(assert (= (and d!1736726 (not c!952517)) b!5454122))

(assert (= (and d!1736726 res!2322693) b!5454123))

(assert (= (and b!5454123 res!2322694) b!5454124))

(declare-fun m!6474844 () Bool)

(assert (=> b!5454122 m!6474844))

(declare-fun m!6474846 () Bool)

(assert (=> d!1736726 m!6474846))

(declare-fun m!6474848 () Bool)

(assert (=> d!1736726 m!6474848))

(declare-fun m!6474850 () Bool)

(assert (=> d!1736726 m!6474850))

(declare-fun m!6474852 () Bool)

(assert (=> b!5454123 m!6474852))

(declare-fun m!6474854 () Bool)

(assert (=> b!5454123 m!6474854))

(declare-fun m!6474856 () Bool)

(assert (=> b!5454123 m!6474856))

(assert (=> bm!396307 d!1736726))

(declare-fun bs!1261757 () Bool)

(declare-fun b!5454129 () Bool)

(assert (= bs!1261757 (and b!5454129 b!5453934)))

(declare-fun lambda!288200 () Int)

(assert (=> bs!1261757 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) Nil!62018) (= (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) lt!2225374)) (= lambda!288200 lambda!288174))))

(declare-fun bs!1261758 () Bool)

(assert (= bs!1261758 (and b!5454129 b!5454017)))

(assert (=> bs!1261758 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 r!7292)) (= (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) r!7292)) (= lambda!288200 lambda!288180))))

(declare-fun bs!1261759 () Bool)

(assert (= bs!1261759 (and b!5454129 b!5453908)))

(assert (=> bs!1261759 (not (= lambda!288200 lambda!288154))))

(declare-fun bs!1261760 () Bool)

(assert (= bs!1261760 (and b!5454129 b!5453931)))

(assert (=> bs!1261760 (not (= lambda!288200 lambda!288149))))

(declare-fun bs!1261761 () Bool)

(assert (= bs!1261761 (and b!5454129 b!5453914)))

(assert (=> bs!1261761 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225382)) (= (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) lt!2225374)) (= lambda!288200 lambda!288162))))

(assert (=> bs!1261759 (not (= lambda!288200 lambda!288151))))

(assert (=> bs!1261757 (not (= lambda!288200 lambda!288173))))

(assert (=> bs!1261761 (not (= lambda!288200 lambda!288161))))

(declare-fun bs!1261762 () Bool)

(assert (= bs!1261762 (and b!5454129 b!5453924)))

(assert (=> bs!1261762 (not (= lambda!288200 lambda!288170))))

(assert (=> bs!1261761 (not (= lambda!288200 lambda!288163))))

(declare-fun bs!1261763 () Bool)

(assert (= bs!1261763 (and b!5454129 b!5453946)))

(assert (=> bs!1261763 (not (= lambda!288200 lambda!288160))))

(assert (=> bs!1261762 (not (= lambda!288200 lambda!288169))))

(assert (=> bs!1261759 (not (= lambda!288200 lambda!288153))))

(assert (=> bs!1261757 (not (= lambda!288200 lambda!288172))))

(assert (=> bs!1261762 (not (= lambda!288200 lambda!288168))))

(assert (=> bs!1261763 (not (= lambda!288200 lambda!288159))))

(assert (=> bs!1261760 (not (= lambda!288200 lambda!288148))))

(assert (=> bs!1261762 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225479)) (= (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) lt!2225374)) (= lambda!288200 lambda!288171))))

(declare-fun bs!1261765 () Bool)

(assert (= bs!1261765 (and b!5454129 b!5453953)))

(assert (=> bs!1261765 (not (= lambda!288200 lambda!288156))))

(assert (=> bs!1261762 (not (= lambda!288200 lambda!288167))))

(assert (=> bs!1261759 (not (= lambda!288200 lambda!288152))))

(assert (=> bs!1261765 (not (= lambda!288200 lambda!288155))))

(declare-fun bs!1261767 () Bool)

(assert (= bs!1261767 (and b!5454129 b!5454016)))

(assert (=> bs!1261767 (not (= lambda!288200 lambda!288182))))

(assert (=> bs!1261765 (not (= lambda!288200 lambda!288158))))

(assert (=> bs!1261765 (not (= lambda!288200 lambda!288157))))

(assert (=> b!5454129 true))

(assert (=> b!5454129 true))

(declare-fun bs!1261769 () Bool)

(declare-fun b!5454128 () Bool)

(assert (= bs!1261769 (and b!5454128 b!5453934)))

(declare-fun lambda!288201 () Int)

(assert (=> bs!1261769 (not (= lambda!288201 lambda!288174))))

(declare-fun bs!1261770 () Bool)

(assert (= bs!1261770 (and b!5454128 b!5454017)))

(assert (=> bs!1261770 (not (= lambda!288201 lambda!288180))))

(declare-fun bs!1261771 () Bool)

(assert (= bs!1261771 (and b!5454128 b!5453908)))

(assert (=> bs!1261771 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225531)) (= lambda!288201 lambda!288154))))

(declare-fun bs!1261772 () Bool)

(assert (= bs!1261772 (and b!5454128 b!5453931)))

(assert (=> bs!1261772 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 r!7292))) (= lambda!288201 lambda!288149))))

(declare-fun bs!1261773 () Bool)

(assert (= bs!1261773 (and b!5454128 b!5453914)))

(assert (=> bs!1261773 (not (= lambda!288201 lambda!288162))))

(declare-fun bs!1261774 () Bool)

(assert (= bs!1261774 (and b!5454128 b!5454129)))

(assert (=> bs!1261774 (not (= lambda!288201 lambda!288200))))

(assert (=> bs!1261771 (not (= lambda!288201 lambda!288151))))

(assert (=> bs!1261769 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) Nil!62018) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225374)) (= lambda!288201 lambda!288173))))

(assert (=> bs!1261773 (not (= lambda!288201 lambda!288161))))

(declare-fun bs!1261775 () Bool)

(assert (= bs!1261775 (and b!5454128 b!5453924)))

(assert (=> bs!1261775 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225479)) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225374)) (= lambda!288201 lambda!288170))))

(assert (=> bs!1261773 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225382)) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225374)) (= lambda!288201 lambda!288163))))

(declare-fun bs!1261776 () Bool)

(assert (= bs!1261776 (and b!5454128 b!5453946)))

(assert (=> bs!1261776 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225374) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 r!7292))) (= lambda!288201 lambda!288160))))

(assert (=> bs!1261775 (not (= lambda!288201 lambda!288169))))

(assert (=> bs!1261771 (not (= lambda!288201 lambda!288153))))

(assert (=> bs!1261769 (not (= lambda!288201 lambda!288172))))

(assert (=> bs!1261775 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225473) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 r!7292))) (= lambda!288201 lambda!288168))))

(assert (=> bs!1261776 (not (= lambda!288201 lambda!288159))))

(assert (=> bs!1261772 (not (= lambda!288201 lambda!288148))))

(assert (=> bs!1261775 (not (= lambda!288201 lambda!288171))))

(declare-fun bs!1261777 () Bool)

(assert (= bs!1261777 (and b!5454128 b!5453953)))

(assert (=> bs!1261777 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225518)) (= lambda!288201 lambda!288156))))

(assert (=> bs!1261775 (not (= lambda!288201 lambda!288167))))

(assert (=> bs!1261771 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225532)) (= lambda!288201 lambda!288152))))

(assert (=> bs!1261777 (not (= lambda!288201 lambda!288155))))

(declare-fun bs!1261778 () Bool)

(assert (= bs!1261778 (and b!5454128 b!5454016)))

(assert (=> bs!1261778 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 r!7292))) (= lambda!288201 lambda!288182))))

(assert (=> bs!1261777 (= (and (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) s!2326) (= (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) lt!2225526)) (= lambda!288201 lambda!288158))))

(assert (=> bs!1261777 (not (= lambda!288201 lambda!288157))))

(assert (=> b!5454128 true))

(assert (=> b!5454128 true))

(declare-fun e!3377811 () Bool)

(declare-fun b!5454125 () Bool)

(assert (=> b!5454125 (= e!3377811 (matchRSpec!2384 (regTwo!31075 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)))))

(declare-fun c!952523 () Bool)

(declare-fun d!1736734 () Bool)

(assert (=> d!1736734 (= c!952523 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))))

(declare-fun e!3377810 () Bool)

(assert (=> d!1736734 (= (matchRSpec!2384 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) e!3377810)))

(declare-fun b!5454126 () Bool)

(declare-fun call!396378 () Bool)

(assert (=> b!5454126 (= e!3377810 call!396378)))

(declare-fun b!5454127 () Bool)

(declare-fun e!3377812 () Bool)

(declare-fun e!3377809 () Bool)

(assert (=> b!5454127 (= e!3377812 e!3377809)))

(declare-fun c!952522 () Bool)

(assert (=> b!5454127 (= c!952522 ((_ is Star!15281) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))))

(declare-fun call!396377 () Bool)

(assert (=> b!5454128 (= e!3377809 call!396377)))

(declare-fun e!3377808 () Bool)

(assert (=> b!5454129 (= e!3377808 call!396377)))

(declare-fun b!5454130 () Bool)

(declare-fun res!2322696 () Bool)

(assert (=> b!5454130 (=> res!2322696 e!3377808)))

(assert (=> b!5454130 (= res!2322696 call!396378)))

(assert (=> b!5454130 (= e!3377809 e!3377808)))

(declare-fun e!3377806 () Bool)

(declare-fun b!5454131 () Bool)

(assert (=> b!5454131 (= e!3377806 (= (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018) (Cons!62018 (c!952474 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) Nil!62018)))))

(declare-fun b!5454132 () Bool)

(declare-fun e!3377807 () Bool)

(assert (=> b!5454132 (= e!3377810 e!3377807)))

(declare-fun res!2322697 () Bool)

(assert (=> b!5454132 (= res!2322697 (not ((_ is EmptyLang!15281) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))))))

(assert (=> b!5454132 (=> (not res!2322697) (not e!3377807))))

(declare-fun b!5454133 () Bool)

(declare-fun c!952520 () Bool)

(assert (=> b!5454133 (= c!952520 ((_ is ElementMatch!15281) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))))

(assert (=> b!5454133 (= e!3377807 e!3377806)))

(declare-fun b!5454134 () Bool)

(assert (=> b!5454134 (= e!3377812 e!3377811)))

(declare-fun res!2322695 () Bool)

(assert (=> b!5454134 (= res!2322695 (matchRSpec!2384 (regOne!31075 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)))))

(assert (=> b!5454134 (=> res!2322695 e!3377811)))

(declare-fun b!5454135 () Bool)

(declare-fun c!952521 () Bool)

(assert (=> b!5454135 (= c!952521 ((_ is Union!15281) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))))

(assert (=> b!5454135 (= e!3377806 e!3377812)))

(declare-fun bm!396372 () Bool)

(assert (=> bm!396372 (= call!396378 (isEmpty!34002 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)))))

(declare-fun bm!396373 () Bool)

(assert (=> bm!396373 (= call!396377 (Exists!2462 (ite c!952522 lambda!288200 lambda!288201)))))

(assert (= (and d!1736734 c!952523) b!5454126))

(assert (= (and d!1736734 (not c!952523)) b!5454132))

(assert (= (and b!5454132 res!2322697) b!5454133))

(assert (= (and b!5454133 c!952520) b!5454131))

(assert (= (and b!5454133 (not c!952520)) b!5454135))

(assert (= (and b!5454135 c!952521) b!5454134))

(assert (= (and b!5454135 (not c!952521)) b!5454127))

(assert (= (and b!5454134 (not res!2322695)) b!5454125))

(assert (= (and b!5454127 c!952522) b!5454130))

(assert (= (and b!5454127 (not c!952522)) b!5454128))

(assert (= (and b!5454130 (not res!2322696)) b!5454129))

(assert (= (or b!5454129 b!5454128) bm!396373))

(assert (= (or b!5454126 b!5454130) bm!396372))

(declare-fun m!6474878 () Bool)

(assert (=> b!5454125 m!6474878))

(declare-fun m!6474880 () Bool)

(assert (=> b!5454134 m!6474880))

(declare-fun m!6474882 () Bool)

(assert (=> bm!396372 m!6474882))

(declare-fun m!6474884 () Bool)

(assert (=> bm!396373 m!6474884))

(assert (=> bm!396339 d!1736734))

(declare-fun d!1736748 () Bool)

(assert (=> d!1736748 (= (isEmpty!34002 (_1!35783 lt!2225382)) ((_ is Nil!62018) (_1!35783 lt!2225382)))))

(assert (=> b!5453946 d!1736748))

(declare-fun c!952540 () Bool)

(declare-fun d!1736750 () Bool)

(assert (=> d!1736750 (= c!952540 (isEmpty!34002 (ite (or c!952469 c!952471) s!2326 (ite c!952461 (ite c!952465 s!2326 (t!375371 s!2326)) (ite c!952463 (t!375371 s!2326) s!2326)))))))

(declare-fun e!3377833 () Bool)

(assert (=> d!1736750 (= (matchZipper!1525 (ite (or c!952469 c!952471) z!1189 (ite c!952461 (ite c!952465 z!1189 lt!2225534) (ite c!952463 lt!2225384 z!1189))) (ite (or c!952469 c!952471) s!2326 (ite c!952461 (ite c!952465 s!2326 (t!375371 s!2326)) (ite c!952463 (t!375371 s!2326) s!2326)))) e!3377833)))

(declare-fun b!5454174 () Bool)

(declare-fun nullableZipper!1483 ((InoxSet Context!9330)) Bool)

(assert (=> b!5454174 (= e!3377833 (nullableZipper!1483 (ite (or c!952469 c!952471) z!1189 (ite c!952461 (ite c!952465 z!1189 lt!2225534) (ite c!952463 lt!2225384 z!1189)))))))

(declare-fun b!5454175 () Bool)

(assert (=> b!5454175 (= e!3377833 (matchZipper!1525 (derivationStepZipper!1500 (ite (or c!952469 c!952471) z!1189 (ite c!952461 (ite c!952465 z!1189 lt!2225534) (ite c!952463 lt!2225384 z!1189))) (head!11683 (ite (or c!952469 c!952471) s!2326 (ite c!952461 (ite c!952465 s!2326 (t!375371 s!2326)) (ite c!952463 (t!375371 s!2326) s!2326))))) (tail!10780 (ite (or c!952469 c!952471) s!2326 (ite c!952461 (ite c!952465 s!2326 (t!375371 s!2326)) (ite c!952463 (t!375371 s!2326) s!2326))))))))

(assert (= (and d!1736750 c!952540) b!5454174))

(assert (= (and d!1736750 (not c!952540)) b!5454175))

(declare-fun m!6474886 () Bool)

(assert (=> d!1736750 m!6474886))

(declare-fun m!6474888 () Bool)

(assert (=> b!5454174 m!6474888))

(declare-fun m!6474890 () Bool)

(assert (=> b!5454175 m!6474890))

(assert (=> b!5454175 m!6474890))

(declare-fun m!6474892 () Bool)

(assert (=> b!5454175 m!6474892))

(declare-fun m!6474894 () Bool)

(assert (=> b!5454175 m!6474894))

(assert (=> b!5454175 m!6474892))

(assert (=> b!5454175 m!6474894))

(declare-fun m!6474896 () Bool)

(assert (=> b!5454175 m!6474896))

(assert (=> bm!396181 d!1736750))

(declare-fun d!1736752 () Bool)

(assert (=> d!1736752 (= (matchR!7466 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952462 (_1!35783 lt!2225479) Nil!62018) s!2326))) (matchRSpec!2384 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952462 (_1!35783 lt!2225479) Nil!62018) s!2326))))))

(declare-fun lt!2225602 () Unit!154792)

(assert (=> d!1736752 (= lt!2225602 (choose!41400 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952462 (_1!35783 lt!2225479) Nil!62018) s!2326))))))

(assert (=> d!1736752 (validRegex!7017 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))))))

(assert (=> d!1736752 (= (mainMatchTheorem!2384 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite c!952467 lt!2225518 (ite c!952461 (ite c!952462 lt!2225473 lt!2225374) (regTwo!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952462 (_1!35783 lt!2225479) Nil!62018) s!2326))) lt!2225602)))

(declare-fun bs!1261779 () Bool)

(assert (= bs!1261779 d!1736752))

(declare-fun m!6474898 () Bool)

(assert (=> bs!1261779 m!6474898))

(declare-fun m!6474900 () Bool)

(assert (=> bs!1261779 m!6474900))

(declare-fun m!6474902 () Bool)

(assert (=> bs!1261779 m!6474902))

(declare-fun m!6474904 () Bool)

(assert (=> bs!1261779 m!6474904))

(assert (=> bm!396325 d!1736752))

(declare-fun d!1736754 () Bool)

(assert (=> d!1736754 (= (get!21386 (ite c!952465 lt!2225421 lt!2225458)) (v!51420 (ite c!952465 lt!2225421 lt!2225458)))))

(assert (=> bm!396198 d!1736754))

(declare-fun d!1736756 () Bool)

(assert (=> d!1736756 (matchR!7466 (Concat!24126 (ite c!952465 lt!2225374 (ite c!952462 (reg!15610 (regOne!31074 r!7292)) lt!2225374)) (ite c!952465 (regTwo!31074 r!7292) (ite c!952462 lt!2225527 (regTwo!31074 r!7292)))) (++!13641 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))

(declare-fun lt!2225606 () Unit!154792)

(declare-fun choose!41404 (Regex!15281 Regex!15281 List!62142 List!62142) Unit!154792)

(assert (=> d!1736756 (= lt!2225606 (choose!41404 (ite c!952465 lt!2225374 (ite c!952462 (reg!15610 (regOne!31074 r!7292)) lt!2225374)) (ite c!952465 (regTwo!31074 r!7292) (ite c!952462 lt!2225527 (regTwo!31074 r!7292))) (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))

(declare-fun e!3377842 () Bool)

(assert (=> d!1736756 e!3377842))

(declare-fun res!2322705 () Bool)

(assert (=> d!1736756 (=> (not res!2322705) (not e!3377842))))

(assert (=> d!1736756 (= res!2322705 (validRegex!7017 (ite c!952465 lt!2225374 (ite c!952462 (reg!15610 (regOne!31074 r!7292)) lt!2225374))))))

(assert (=> d!1736756 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!248 (ite c!952465 lt!2225374 (ite c!952462 (reg!15610 (regOne!31074 r!7292)) lt!2225374)) (ite c!952465 (regTwo!31074 r!7292) (ite c!952462 lt!2225527 (regTwo!31074 r!7292))) (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))) lt!2225606)))

(declare-fun b!5454189 () Bool)

(assert (=> b!5454189 (= e!3377842 (validRegex!7017 (ite c!952465 (regTwo!31074 r!7292) (ite c!952462 lt!2225527 (regTwo!31074 r!7292)))))))

(assert (= (and d!1736756 res!2322705) b!5454189))

(assert (=> d!1736756 m!6474622))

(assert (=> d!1736756 m!6474622))

(declare-fun m!6474920 () Bool)

(assert (=> d!1736756 m!6474920))

(declare-fun m!6474922 () Bool)

(assert (=> d!1736756 m!6474922))

(declare-fun m!6474924 () Bool)

(assert (=> d!1736756 m!6474924))

(declare-fun m!6474926 () Bool)

(assert (=> b!5454189 m!6474926))

(assert (=> bm!396183 d!1736756))

(declare-fun d!1736762 () Bool)

(declare-fun lt!2225609 () Regex!15281)

(assert (=> d!1736762 (validRegex!7017 lt!2225609)))

(assert (=> d!1736762 (= lt!2225609 (generalisedUnion!1210 (unfocusZipperList!723 zl!343)))))

(assert (=> d!1736762 (= (unfocusZipper!1023 zl!343) lt!2225609)))

(declare-fun bs!1261781 () Bool)

(assert (= bs!1261781 d!1736762))

(declare-fun m!6474934 () Bool)

(assert (=> bs!1261781 m!6474934))

(assert (=> bs!1261781 m!6474486))

(assert (=> bs!1261781 m!6474486))

(assert (=> bs!1261781 m!6474488))

(assert (=> b!5453959 d!1736762))

(declare-fun b!5454203 () Bool)

(declare-fun e!3377851 () List!62143)

(assert (=> b!5454203 (= e!3377851 lt!2225442)))

(declare-fun b!5454204 () Bool)

(assert (=> b!5454204 (= e!3377851 (Cons!62019 (h!68467 lt!2225446) (++!13642 (t!375372 lt!2225446) lt!2225442)))))

(declare-fun b!5454205 () Bool)

(declare-fun res!2322712 () Bool)

(declare-fun e!3377850 () Bool)

(assert (=> b!5454205 (=> (not res!2322712) (not e!3377850))))

(declare-fun lt!2225615 () List!62143)

(declare-fun size!39898 (List!62143) Int)

(assert (=> b!5454205 (= res!2322712 (= (size!39898 lt!2225615) (+ (size!39898 lt!2225446) (size!39898 lt!2225442))))))

(declare-fun b!5454206 () Bool)

(assert (=> b!5454206 (= e!3377850 (or (not (= lt!2225442 Nil!62019)) (= lt!2225615 lt!2225446)))))

(declare-fun d!1736766 () Bool)

(assert (=> d!1736766 e!3377850))

(declare-fun res!2322711 () Bool)

(assert (=> d!1736766 (=> (not res!2322711) (not e!3377850))))

(declare-fun content!11161 (List!62143) (InoxSet Regex!15281))

(assert (=> d!1736766 (= res!2322711 (= (content!11161 lt!2225615) ((_ map or) (content!11161 lt!2225446) (content!11161 lt!2225442))))))

(assert (=> d!1736766 (= lt!2225615 e!3377851)))

(declare-fun c!952550 () Bool)

(assert (=> d!1736766 (= c!952550 ((_ is Nil!62019) lt!2225446))))

(assert (=> d!1736766 (= (++!13642 lt!2225446 lt!2225442) lt!2225615)))

(assert (= (and d!1736766 c!952550) b!5454203))

(assert (= (and d!1736766 (not c!952550)) b!5454204))

(assert (= (and d!1736766 res!2322711) b!5454205))

(assert (= (and b!5454205 res!2322712) b!5454206))

(declare-fun m!6474944 () Bool)

(assert (=> b!5454204 m!6474944))

(declare-fun m!6474946 () Bool)

(assert (=> b!5454205 m!6474946))

(declare-fun m!6474948 () Bool)

(assert (=> b!5454205 m!6474948))

(declare-fun m!6474950 () Bool)

(assert (=> b!5454205 m!6474950))

(declare-fun m!6474952 () Bool)

(assert (=> d!1736766 m!6474952))

(declare-fun m!6474954 () Bool)

(assert (=> d!1736766 m!6474954))

(declare-fun m!6474956 () Bool)

(assert (=> d!1736766 m!6474956))

(assert (=> bm!396347 d!1736766))

(declare-fun bs!1261783 () Bool)

(declare-fun b!5454211 () Bool)

(assert (= bs!1261783 (and b!5454211 b!5453934)))

(declare-fun lambda!288202 () Int)

(assert (=> bs!1261783 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) Nil!62018) (= (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) lt!2225374)) (= lambda!288202 lambda!288174))))

(declare-fun bs!1261784 () Bool)

(assert (= bs!1261784 (and b!5454211 b!5454128)))

(assert (=> bs!1261784 (not (= lambda!288202 lambda!288201))))

(declare-fun bs!1261785 () Bool)

(assert (= bs!1261785 (and b!5454211 b!5454017)))

(assert (=> bs!1261785 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 r!7292)) (= (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) r!7292)) (= lambda!288202 lambda!288180))))

(declare-fun bs!1261786 () Bool)

(assert (= bs!1261786 (and b!5454211 b!5453908)))

(assert (=> bs!1261786 (not (= lambda!288202 lambda!288154))))

(declare-fun bs!1261787 () Bool)

(assert (= bs!1261787 (and b!5454211 b!5453931)))

(assert (=> bs!1261787 (not (= lambda!288202 lambda!288149))))

(declare-fun bs!1261788 () Bool)

(assert (= bs!1261788 (and b!5454211 b!5453914)))

(assert (=> bs!1261788 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (_1!35783 lt!2225382)) (= (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) lt!2225374)) (= lambda!288202 lambda!288162))))

(declare-fun bs!1261789 () Bool)

(assert (= bs!1261789 (and b!5454211 b!5454129)))

(assert (=> bs!1261789 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= lambda!288202 lambda!288200))))

(assert (=> bs!1261786 (not (= lambda!288202 lambda!288151))))

(assert (=> bs!1261783 (not (= lambda!288202 lambda!288173))))

(assert (=> bs!1261788 (not (= lambda!288202 lambda!288161))))

(declare-fun bs!1261790 () Bool)

(assert (= bs!1261790 (and b!5454211 b!5453924)))

(assert (=> bs!1261790 (not (= lambda!288202 lambda!288170))))

(assert (=> bs!1261788 (not (= lambda!288202 lambda!288163))))

(declare-fun bs!1261791 () Bool)

(assert (= bs!1261791 (and b!5454211 b!5453946)))

(assert (=> bs!1261791 (not (= lambda!288202 lambda!288160))))

(assert (=> bs!1261790 (not (= lambda!288202 lambda!288169))))

(assert (=> bs!1261786 (not (= lambda!288202 lambda!288153))))

(assert (=> bs!1261783 (not (= lambda!288202 lambda!288172))))

(assert (=> bs!1261790 (not (= lambda!288202 lambda!288168))))

(assert (=> bs!1261791 (not (= lambda!288202 lambda!288159))))

(assert (=> bs!1261787 (not (= lambda!288202 lambda!288148))))

(assert (=> bs!1261790 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (_1!35783 lt!2225479)) (= (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) lt!2225374)) (= lambda!288202 lambda!288171))))

(declare-fun bs!1261792 () Bool)

(assert (= bs!1261792 (and b!5454211 b!5453953)))

(assert (=> bs!1261792 (not (= lambda!288202 lambda!288156))))

(assert (=> bs!1261790 (not (= lambda!288202 lambda!288167))))

(assert (=> bs!1261786 (not (= lambda!288202 lambda!288152))))

(assert (=> bs!1261792 (not (= lambda!288202 lambda!288155))))

(declare-fun bs!1261793 () Bool)

(assert (= bs!1261793 (and b!5454211 b!5454016)))

(assert (=> bs!1261793 (not (= lambda!288202 lambda!288182))))

(assert (=> bs!1261792 (not (= lambda!288202 lambda!288158))))

(assert (=> bs!1261792 (not (= lambda!288202 lambda!288157))))

(assert (=> b!5454211 true))

(assert (=> b!5454211 true))

(declare-fun bs!1261794 () Bool)

(declare-fun b!5454210 () Bool)

(assert (= bs!1261794 (and b!5454210 b!5453934)))

(declare-fun lambda!288203 () Int)

(assert (=> bs!1261794 (not (= lambda!288203 lambda!288174))))

(declare-fun bs!1261795 () Bool)

(assert (= bs!1261795 (and b!5454210 b!5454128)))

(assert (=> bs!1261795 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288203 lambda!288201))))

(declare-fun bs!1261796 () Bool)

(assert (= bs!1261796 (and b!5454210 b!5454017)))

(assert (=> bs!1261796 (not (= lambda!288203 lambda!288180))))

(declare-fun bs!1261797 () Bool)

(assert (= bs!1261797 (and b!5454210 b!5453908)))

(assert (=> bs!1261797 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225531)) (= lambda!288203 lambda!288154))))

(declare-fun bs!1261798 () Bool)

(assert (= bs!1261798 (and b!5454210 b!5453931)))

(assert (=> bs!1261798 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 r!7292))) (= lambda!288203 lambda!288149))))

(declare-fun bs!1261799 () Bool)

(assert (= bs!1261799 (and b!5454210 b!5453914)))

(assert (=> bs!1261799 (not (= lambda!288203 lambda!288162))))

(declare-fun bs!1261800 () Bool)

(assert (= bs!1261800 (and b!5454210 b!5454129)))

(assert (=> bs!1261800 (not (= lambda!288203 lambda!288200))))

(assert (=> bs!1261797 (not (= lambda!288203 lambda!288151))))

(assert (=> bs!1261794 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) Nil!62018) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225374)) (= lambda!288203 lambda!288173))))

(assert (=> bs!1261799 (not (= lambda!288203 lambda!288161))))

(declare-fun bs!1261801 () Bool)

(assert (= bs!1261801 (and b!5454210 b!5453924)))

(assert (=> bs!1261801 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (_1!35783 lt!2225479)) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225374)) (= lambda!288203 lambda!288170))))

(assert (=> bs!1261799 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (_1!35783 lt!2225382)) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225374)) (= lambda!288203 lambda!288163))))

(declare-fun bs!1261802 () Bool)

(assert (= bs!1261802 (and b!5454210 b!5453946)))

(assert (=> bs!1261802 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225374) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 r!7292))) (= lambda!288203 lambda!288160))))

(assert (=> bs!1261801 (not (= lambda!288203 lambda!288169))))

(assert (=> bs!1261797 (not (= lambda!288203 lambda!288153))))

(assert (=> bs!1261794 (not (= lambda!288203 lambda!288172))))

(assert (=> bs!1261801 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225473) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 r!7292))) (= lambda!288203 lambda!288168))))

(assert (=> bs!1261802 (not (= lambda!288203 lambda!288159))))

(assert (=> bs!1261798 (not (= lambda!288203 lambda!288148))))

(assert (=> bs!1261801 (not (= lambda!288203 lambda!288171))))

(declare-fun bs!1261803 () Bool)

(assert (= bs!1261803 (and b!5454210 b!5453953)))

(assert (=> bs!1261803 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225518)) (= lambda!288203 lambda!288156))))

(declare-fun bs!1261804 () Bool)

(assert (= bs!1261804 (and b!5454210 b!5454211)))

(assert (=> bs!1261804 (not (= lambda!288203 lambda!288202))))

(assert (=> bs!1261801 (not (= lambda!288203 lambda!288167))))

(assert (=> bs!1261797 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225532)) (= lambda!288203 lambda!288152))))

(assert (=> bs!1261803 (not (= lambda!288203 lambda!288155))))

(declare-fun bs!1261805 () Bool)

(assert (= bs!1261805 (and b!5454210 b!5454016)))

(assert (=> bs!1261805 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 r!7292))) (= lambda!288203 lambda!288182))))

(assert (=> bs!1261803 (= (and (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) s!2326) (= (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) lt!2225526)) (= lambda!288203 lambda!288158))))

(assert (=> bs!1261803 (not (= lambda!288203 lambda!288157))))

(assert (=> b!5454210 true))

(assert (=> b!5454210 true))

(declare-fun b!5454207 () Bool)

(declare-fun e!3377857 () Bool)

(assert (=> b!5454207 (= e!3377857 (matchRSpec!2384 (regTwo!31075 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))))))

(declare-fun c!952554 () Bool)

(declare-fun d!1736770 () Bool)

(assert (=> d!1736770 (= c!952554 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))))

(declare-fun e!3377856 () Bool)

(assert (=> d!1736770 (= (matchRSpec!2384 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) e!3377856)))

(declare-fun b!5454208 () Bool)

(declare-fun call!396401 () Bool)

(assert (=> b!5454208 (= e!3377856 call!396401)))

(declare-fun b!5454209 () Bool)

(declare-fun e!3377858 () Bool)

(declare-fun e!3377855 () Bool)

(assert (=> b!5454209 (= e!3377858 e!3377855)))

(declare-fun c!952553 () Bool)

(assert (=> b!5454209 (= c!952553 ((_ is Star!15281) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))))

(declare-fun call!396400 () Bool)

(assert (=> b!5454210 (= e!3377855 call!396400)))

(declare-fun e!3377854 () Bool)

(assert (=> b!5454211 (= e!3377854 call!396400)))

(declare-fun b!5454212 () Bool)

(declare-fun res!2322714 () Bool)

(assert (=> b!5454212 (=> res!2322714 e!3377854)))

(assert (=> b!5454212 (= res!2322714 call!396401)))

(assert (=> b!5454212 (= e!3377855 e!3377854)))

(declare-fun b!5454213 () Bool)

(declare-fun e!3377852 () Bool)

(assert (=> b!5454213 (= e!3377852 (= (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326)) (Cons!62018 (c!952474 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) Nil!62018)))))

(declare-fun b!5454214 () Bool)

(declare-fun e!3377853 () Bool)

(assert (=> b!5454214 (= e!3377856 e!3377853)))

(declare-fun res!2322715 () Bool)

(assert (=> b!5454214 (= res!2322715 (not ((_ is EmptyLang!15281) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))))))

(assert (=> b!5454214 (=> (not res!2322715) (not e!3377853))))

(declare-fun c!952551 () Bool)

(declare-fun b!5454215 () Bool)

(assert (=> b!5454215 (= c!952551 ((_ is ElementMatch!15281) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))))

(assert (=> b!5454215 (= e!3377853 e!3377852)))

(declare-fun b!5454216 () Bool)

(assert (=> b!5454216 (= e!3377858 e!3377857)))

(declare-fun res!2322713 () Bool)

(assert (=> b!5454216 (= res!2322713 (matchRSpec!2384 (regOne!31075 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))))))

(assert (=> b!5454216 (=> res!2322713 e!3377857)))

(declare-fun c!952552 () Bool)

(declare-fun b!5454217 () Bool)

(assert (=> b!5454217 (= c!952552 ((_ is Union!15281) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))))

(assert (=> b!5454217 (= e!3377852 e!3377858)))

(declare-fun bm!396395 () Bool)

(assert (=> bm!396395 (= call!396401 (isEmpty!34002 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))))))

(declare-fun bm!396396 () Bool)

(assert (=> bm!396396 (= call!396400 (Exists!2462 (ite c!952553 lambda!288202 lambda!288203)))))

(assert (= (and d!1736770 c!952554) b!5454208))

(assert (= (and d!1736770 (not c!952554)) b!5454214))

(assert (= (and b!5454214 res!2322715) b!5454215))

(assert (= (and b!5454215 c!952551) b!5454213))

(assert (= (and b!5454215 (not c!952551)) b!5454217))

(assert (= (and b!5454217 c!952552) b!5454216))

(assert (= (and b!5454217 (not c!952552)) b!5454209))

(assert (= (and b!5454216 (not res!2322713)) b!5454207))

(assert (= (and b!5454209 c!952553) b!5454212))

(assert (= (and b!5454209 (not c!952553)) b!5454210))

(assert (= (and b!5454212 (not res!2322714)) b!5454211))

(assert (= (or b!5454211 b!5454210) bm!396396))

(assert (= (or b!5454208 b!5454212) bm!396395))

(declare-fun m!6474958 () Bool)

(assert (=> b!5454207 m!6474958))

(declare-fun m!6474960 () Bool)

(assert (=> b!5454216 m!6474960))

(declare-fun m!6474962 () Bool)

(assert (=> bm!396395 m!6474962))

(declare-fun m!6474964 () Bool)

(assert (=> bm!396396 m!6474964))

(assert (=> bm!396282 d!1736770))

(declare-fun d!1736772 () Bool)

(assert (=> d!1736772 (= (matchR!7466 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))) s!2326) (matchRSpec!2384 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))) s!2326))))

(declare-fun lt!2225619 () Unit!154792)

(assert (=> d!1736772 (= lt!2225619 (choose!41400 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))) s!2326))))

(assert (=> d!1736772 (validRegex!7017 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))))))

(assert (=> d!1736772 (= (mainMatchTheorem!2384 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 lt!2225480 (regOne!31074 r!7292))))) s!2326) lt!2225619)))

(declare-fun bs!1261806 () Bool)

(assert (= bs!1261806 d!1736772))

(declare-fun m!6474966 () Bool)

(assert (=> bs!1261806 m!6474966))

(declare-fun m!6474968 () Bool)

(assert (=> bs!1261806 m!6474968))

(declare-fun m!6474970 () Bool)

(assert (=> bs!1261806 m!6474970))

(declare-fun m!6474972 () Bool)

(assert (=> bs!1261806 m!6474972))

(assert (=> bm!396238 d!1736772))

(declare-fun d!1736774 () Bool)

(declare-fun choose!41407 ((InoxSet Context!9330) Int) (InoxSet Context!9330))

(assert (=> d!1736774 (= (flatMap!1008 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952465 lt!2225436 lt!2225513))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952465 lambda!288150 lambda!288150)))) (choose!41407 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952465 lt!2225436 lt!2225513))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952465 lambda!288150 lambda!288150)))))))

(declare-fun bs!1261807 () Bool)

(assert (= bs!1261807 d!1736774))

(declare-fun m!6474988 () Bool)

(assert (=> bs!1261807 m!6474988))

(assert (=> bm!396315 d!1736774))

(declare-fun bs!1261808 () Bool)

(declare-fun d!1736776 () Bool)

(assert (= bs!1261808 (and d!1736776 b!5453914)))

(declare-fun lambda!288206 () Int)

(assert (=> bs!1261808 (= lambda!288206 lambda!288164)))

(declare-fun bs!1261809 () Bool)

(assert (= bs!1261809 (and d!1736776 b!5453924)))

(assert (=> bs!1261809 (= lambda!288206 lambda!288166)))

(declare-fun bs!1261810 () Bool)

(assert (= bs!1261810 (and d!1736776 b!5453915)))

(assert (=> bs!1261810 (= lambda!288206 lambda!288175)))

(assert (=> d!1736776 (= (inv!81449 (h!68468 zl!343)) (forall!14584 (exprs!5165 (h!68468 zl!343)) lambda!288206))))

(declare-fun bs!1261811 () Bool)

(assert (= bs!1261811 d!1736776))

(declare-fun m!6474992 () Bool)

(assert (=> bs!1261811 m!6474992))

(assert (=> b!5453943 d!1736776))

(declare-fun d!1736780 () Bool)

(assert (=> d!1736780 (forall!14584 (++!13642 lt!2225446 lt!2225442) (ite c!952465 lambda!288164 lambda!288166))))

(declare-fun lt!2225622 () Unit!154792)

(declare-fun choose!41408 (List!62143 List!62143 Int) Unit!154792)

(assert (=> d!1736780 (= lt!2225622 (choose!41408 lt!2225446 lt!2225442 (ite c!952465 lambda!288164 lambda!288166)))))

(assert (=> d!1736780 (forall!14584 lt!2225446 (ite c!952465 lambda!288164 lambda!288166))))

(assert (=> d!1736780 (= (lemmaConcatPreservesForall!248 lt!2225446 lt!2225442 (ite c!952465 lambda!288164 lambda!288166)) lt!2225622)))

(declare-fun bs!1261812 () Bool)

(assert (= bs!1261812 d!1736780))

(assert (=> bs!1261812 m!6474618))

(assert (=> bs!1261812 m!6474618))

(declare-fun m!6475004 () Bool)

(assert (=> bs!1261812 m!6475004))

(declare-fun m!6475008 () Bool)

(assert (=> bs!1261812 m!6475008))

(declare-fun m!6475010 () Bool)

(assert (=> bs!1261812 m!6475010))

(assert (=> bm!396256 d!1736780))

(declare-fun d!1736784 () Bool)

(assert (=> d!1736784 (= (Exists!2462 (ite c!952471 lambda!288153 (ite c!952467 lambda!288157 (ite c!952465 lambda!288161 lambda!288168)))) (choose!41402 (ite c!952471 lambda!288153 (ite c!952467 lambda!288157 (ite c!952465 lambda!288161 lambda!288168)))))))

(declare-fun bs!1261813 () Bool)

(assert (= bs!1261813 d!1736784))

(declare-fun m!6475012 () Bool)

(assert (=> bs!1261813 m!6475012))

(assert (=> bm!396301 d!1736784))

(declare-fun d!1736786 () Bool)

(declare-fun e!3377888 () Bool)

(assert (=> d!1736786 (= (matchZipper!1525 ((_ map or) lt!2225506 lt!2225384) (t!375371 s!2326)) e!3377888)))

(declare-fun res!2322744 () Bool)

(assert (=> d!1736786 (=> res!2322744 e!3377888)))

(assert (=> d!1736786 (= res!2322744 (matchZipper!1525 lt!2225506 (t!375371 s!2326)))))

(declare-fun lt!2225627 () Unit!154792)

(declare-fun choose!41409 ((InoxSet Context!9330) (InoxSet Context!9330) List!62142) Unit!154792)

(assert (=> d!1736786 (= lt!2225627 (choose!41409 lt!2225506 lt!2225384 (t!375371 s!2326)))))

(assert (=> d!1736786 (= (lemmaZipperConcatMatchesSameAsBothZippers!518 lt!2225506 lt!2225384 (t!375371 s!2326)) lt!2225627)))

(declare-fun b!5454272 () Bool)

(assert (=> b!5454272 (= e!3377888 (matchZipper!1525 lt!2225384 (t!375371 s!2326)))))

(assert (= (and d!1736786 (not res!2322744)) b!5454272))

(declare-fun m!6475026 () Bool)

(assert (=> d!1736786 m!6475026))

(declare-fun m!6475028 () Bool)

(assert (=> d!1736786 m!6475028))

(declare-fun m!6475030 () Bool)

(assert (=> d!1736786 m!6475030))

(assert (=> b!5454272 m!6474612))

(assert (=> b!5453949 d!1736786))

(declare-fun bs!1261815 () Bool)

(declare-fun d!1736790 () Bool)

(assert (= bs!1261815 (and d!1736790 b!5453920)))

(declare-fun lambda!288209 () Int)

(assert (=> bs!1261815 (= lambda!288209 lambda!288150)))

(assert (=> d!1736790 true))

(assert (=> d!1736790 (= (derivationStepZipper!1500 lt!2225452 (h!68466 s!2326)) (flatMap!1008 lt!2225452 lambda!288209))))

(declare-fun bs!1261816 () Bool)

(assert (= bs!1261816 d!1736790))

(declare-fun m!6475044 () Bool)

(assert (=> bs!1261816 m!6475044))

(assert (=> b!5453920 d!1736790))

(declare-fun d!1736796 () Bool)

(declare-fun dynLambda!24401 (Int Context!9330) (InoxSet Context!9330))

(assert (=> d!1736796 (= (flatMap!1008 lt!2225452 lambda!288150) (dynLambda!24401 lambda!288150 lt!2225444))))

(declare-fun lt!2225632 () Unit!154792)

(declare-fun choose!41410 ((InoxSet Context!9330) Context!9330 Int) Unit!154792)

(assert (=> d!1736796 (= lt!2225632 (choose!41410 lt!2225452 lt!2225444 lambda!288150))))

(assert (=> d!1736796 (= lt!2225452 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(assert (=> d!1736796 (= (lemmaFlatMapOnSingletonSet!540 lt!2225452 lt!2225444 lambda!288150) lt!2225632)))

(declare-fun b_lambda!207731 () Bool)

(assert (=> (not b_lambda!207731) (not d!1736796)))

(declare-fun bs!1261820 () Bool)

(assert (= bs!1261820 d!1736796))

(assert (=> bs!1261820 m!6474512))

(declare-fun m!6475056 () Bool)

(assert (=> bs!1261820 m!6475056))

(declare-fun m!6475058 () Bool)

(assert (=> bs!1261820 m!6475058))

(assert (=> bs!1261820 m!6474490))

(assert (=> b!5453920 d!1736796))

(declare-fun d!1736800 () Bool)

(declare-fun nullableFct!1635 (Regex!15281) Bool)

(assert (=> d!1736800 (= (nullable!5450 (h!68467 (exprs!5165 (h!68468 zl!343)))) (nullableFct!1635 (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun bs!1261824 () Bool)

(assert (= bs!1261824 d!1736800))

(declare-fun m!6475060 () Bool)

(assert (=> bs!1261824 m!6475060))

(assert (=> b!5453920 d!1736800))

(declare-fun d!1736802 () Bool)

(assert (=> d!1736802 (= (flatMap!1008 lt!2225452 lambda!288150) (choose!41407 lt!2225452 lambda!288150))))

(declare-fun bs!1261825 () Bool)

(assert (= bs!1261825 d!1736802))

(declare-fun m!6475062 () Bool)

(assert (=> bs!1261825 m!6475062))

(assert (=> b!5453920 d!1736802))

(declare-fun b!5454329 () Bool)

(declare-fun e!3377922 () (InoxSet Context!9330))

(declare-fun e!3377920 () (InoxSet Context!9330))

(assert (=> b!5454329 (= e!3377922 e!3377920)))

(declare-fun c!952597 () Bool)

(assert (=> b!5454329 (= c!952597 ((_ is Concat!24126) (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun call!396423 () List!62143)

(declare-fun call!396424 () (InoxSet Context!9330))

(declare-fun c!952593 () Bool)

(declare-fun bm!396418 () Bool)

(declare-fun c!952596 () Bool)

(assert (=> bm!396418 (= call!396424 (derivationStepZipperDown!729 (ite c!952596 (regOne!31075 (h!68467 (exprs!5165 (h!68468 zl!343)))) (ite c!952593 (regTwo!31074 (h!68467 (exprs!5165 (h!68468 zl!343)))) (ite c!952597 (regOne!31074 (h!68467 (exprs!5165 (h!68468 zl!343)))) (reg!15610 (h!68467 (exprs!5165 (h!68468 zl!343))))))) (ite (or c!952596 c!952593) lt!2225444 (Context!9331 call!396423)) (h!68466 s!2326)))))

(declare-fun b!5454330 () Bool)

(declare-fun e!3377921 () (InoxSet Context!9330))

(assert (=> b!5454330 (= e!3377921 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396419 () Bool)

(declare-fun call!396426 () List!62143)

(assert (=> bm!396419 (= call!396423 call!396426)))

(declare-fun bm!396420 () Bool)

(declare-fun call!396428 () (InoxSet Context!9330))

(declare-fun call!396425 () (InoxSet Context!9330))

(assert (=> bm!396420 (= call!396428 call!396425)))

(declare-fun bm!396421 () Bool)

(declare-fun call!396427 () (InoxSet Context!9330))

(assert (=> bm!396421 (= call!396427 (derivationStepZipperDown!729 (ite c!952596 (regTwo!31075 (h!68467 (exprs!5165 (h!68468 zl!343)))) (regOne!31074 (h!68467 (exprs!5165 (h!68468 zl!343))))) (ite c!952596 lt!2225444 (Context!9331 call!396426)) (h!68466 s!2326)))))

(declare-fun b!5454331 () Bool)

(declare-fun e!3377924 () (InoxSet Context!9330))

(declare-fun e!3377923 () (InoxSet Context!9330))

(assert (=> b!5454331 (= e!3377924 e!3377923)))

(assert (=> b!5454331 (= c!952596 ((_ is Union!15281) (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun d!1736804 () Bool)

(declare-fun c!952595 () Bool)

(assert (=> d!1736804 (= c!952595 (and ((_ is ElementMatch!15281) (h!68467 (exprs!5165 (h!68468 zl!343)))) (= (c!952474 (h!68467 (exprs!5165 (h!68468 zl!343)))) (h!68466 s!2326))))))

(assert (=> d!1736804 (= (derivationStepZipperDown!729 (h!68467 (exprs!5165 (h!68468 zl!343))) lt!2225444 (h!68466 s!2326)) e!3377924)))

(declare-fun b!5454332 () Bool)

(declare-fun e!3377925 () Bool)

(assert (=> b!5454332 (= e!3377925 (nullable!5450 (regOne!31074 (h!68467 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun bm!396422 () Bool)

(assert (=> bm!396422 (= call!396425 call!396424)))

(declare-fun b!5454333 () Bool)

(assert (=> b!5454333 (= e!3377923 ((_ map or) call!396424 call!396427))))

(declare-fun b!5454334 () Bool)

(assert (=> b!5454334 (= e!3377920 call!396428)))

(declare-fun b!5454335 () Bool)

(assert (=> b!5454335 (= e!3377922 ((_ map or) call!396427 call!396425))))

(declare-fun b!5454336 () Bool)

(assert (=> b!5454336 (= c!952593 e!3377925)))

(declare-fun res!2322753 () Bool)

(assert (=> b!5454336 (=> (not res!2322753) (not e!3377925))))

(assert (=> b!5454336 (= res!2322753 ((_ is Concat!24126) (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> b!5454336 (= e!3377923 e!3377922)))

(declare-fun b!5454337 () Bool)

(assert (=> b!5454337 (= e!3377924 (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(declare-fun b!5454338 () Bool)

(assert (=> b!5454338 (= e!3377921 call!396428)))

(declare-fun b!5454339 () Bool)

(declare-fun c!952594 () Bool)

(assert (=> b!5454339 (= c!952594 ((_ is Star!15281) (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> b!5454339 (= e!3377920 e!3377921)))

(declare-fun bm!396423 () Bool)

(declare-fun $colon$colon!1534 (List!62143 Regex!15281) List!62143)

(assert (=> bm!396423 (= call!396426 ($colon$colon!1534 (exprs!5165 lt!2225444) (ite (or c!952593 c!952597) (regTwo!31074 (h!68467 (exprs!5165 (h!68468 zl!343)))) (h!68467 (exprs!5165 (h!68468 zl!343))))))))

(assert (= (and d!1736804 c!952595) b!5454337))

(assert (= (and d!1736804 (not c!952595)) b!5454331))

(assert (= (and b!5454331 c!952596) b!5454333))

(assert (= (and b!5454331 (not c!952596)) b!5454336))

(assert (= (and b!5454336 res!2322753) b!5454332))

(assert (= (and b!5454336 c!952593) b!5454335))

(assert (= (and b!5454336 (not c!952593)) b!5454329))

(assert (= (and b!5454329 c!952597) b!5454334))

(assert (= (and b!5454329 (not c!952597)) b!5454339))

(assert (= (and b!5454339 c!952594) b!5454338))

(assert (= (and b!5454339 (not c!952594)) b!5454330))

(assert (= (or b!5454334 b!5454338) bm!396419))

(assert (= (or b!5454334 b!5454338) bm!396420))

(assert (= (or b!5454335 bm!396419) bm!396423))

(assert (= (or b!5454335 bm!396420) bm!396422))

(assert (= (or b!5454333 b!5454335) bm!396421))

(assert (= (or b!5454333 bm!396422) bm!396418))

(assert (=> b!5454337 m!6474490))

(declare-fun m!6475084 () Bool)

(assert (=> b!5454332 m!6475084))

(declare-fun m!6475086 () Bool)

(assert (=> bm!396421 m!6475086))

(declare-fun m!6475088 () Bool)

(assert (=> bm!396423 m!6475088))

(declare-fun m!6475098 () Bool)

(assert (=> bm!396418 m!6475098))

(assert (=> b!5453920 d!1736804))

(declare-fun b!5454366 () Bool)

(declare-fun e!3377942 () Bool)

(assert (=> b!5454366 (= e!3377942 (nullable!5450 (h!68467 (exprs!5165 lt!2225444))))))

(declare-fun d!1736812 () Bool)

(declare-fun c!952610 () Bool)

(assert (=> d!1736812 (= c!952610 e!3377942)))

(declare-fun res!2322758 () Bool)

(assert (=> d!1736812 (=> (not res!2322758) (not e!3377942))))

(assert (=> d!1736812 (= res!2322758 ((_ is Cons!62019) (exprs!5165 lt!2225444)))))

(declare-fun e!3377943 () (InoxSet Context!9330))

(assert (=> d!1736812 (= (derivationStepZipperUp!653 lt!2225444 (h!68466 s!2326)) e!3377943)))

(declare-fun b!5454367 () Bool)

(declare-fun e!3377941 () (InoxSet Context!9330))

(declare-fun call!396431 () (InoxSet Context!9330))

(assert (=> b!5454367 (= e!3377941 call!396431)))

(declare-fun b!5454368 () Bool)

(assert (=> b!5454368 (= e!3377943 ((_ map or) call!396431 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 lt!2225444))) (h!68466 s!2326))))))

(declare-fun b!5454369 () Bool)

(assert (=> b!5454369 (= e!3377943 e!3377941)))

(declare-fun c!952609 () Bool)

(assert (=> b!5454369 (= c!952609 ((_ is Cons!62019) (exprs!5165 lt!2225444)))))

(declare-fun b!5454370 () Bool)

(assert (=> b!5454370 (= e!3377941 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396426 () Bool)

(assert (=> bm!396426 (= call!396431 (derivationStepZipperDown!729 (h!68467 (exprs!5165 lt!2225444)) (Context!9331 (t!375372 (exprs!5165 lt!2225444))) (h!68466 s!2326)))))

(assert (= (and d!1736812 res!2322758) b!5454366))

(assert (= (and d!1736812 c!952610) b!5454368))

(assert (= (and d!1736812 (not c!952610)) b!5454369))

(assert (= (and b!5454369 c!952609) b!5454367))

(assert (= (and b!5454369 (not c!952609)) b!5454370))

(assert (= (or b!5454368 b!5454367) bm!396426))

(declare-fun m!6475116 () Bool)

(assert (=> b!5454366 m!6475116))

(declare-fun m!6475118 () Bool)

(assert (=> b!5454368 m!6475118))

(declare-fun m!6475120 () Bool)

(assert (=> bm!396426 m!6475120))

(assert (=> b!5453920 d!1736812))

(declare-fun d!1736818 () Bool)

(assert (=> d!1736818 (= (flatMap!1008 z!1189 lambda!288150) (choose!41407 z!1189 lambda!288150))))

(declare-fun bs!1261838 () Bool)

(assert (= bs!1261838 d!1736818))

(declare-fun m!6475122 () Bool)

(assert (=> bs!1261838 m!6475122))

(assert (=> b!5453920 d!1736818))

(declare-fun b!5454371 () Bool)

(declare-fun e!3377945 () Bool)

(assert (=> b!5454371 (= e!3377945 (nullable!5450 (h!68467 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun d!1736820 () Bool)

(declare-fun c!952612 () Bool)

(assert (=> d!1736820 (= c!952612 e!3377945)))

(declare-fun res!2322759 () Bool)

(assert (=> d!1736820 (=> (not res!2322759) (not e!3377945))))

(assert (=> d!1736820 (= res!2322759 ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343))))))

(declare-fun e!3377946 () (InoxSet Context!9330))

(assert (=> d!1736820 (= (derivationStepZipperUp!653 (h!68468 zl!343) (h!68466 s!2326)) e!3377946)))

(declare-fun b!5454372 () Bool)

(declare-fun e!3377944 () (InoxSet Context!9330))

(declare-fun call!396432 () (InoxSet Context!9330))

(assert (=> b!5454372 (= e!3377944 call!396432)))

(declare-fun b!5454373 () Bool)

(assert (=> b!5454373 (= e!3377946 ((_ map or) call!396432 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 (h!68468 zl!343)))) (h!68466 s!2326))))))

(declare-fun b!5454374 () Bool)

(assert (=> b!5454374 (= e!3377946 e!3377944)))

(declare-fun c!952611 () Bool)

(assert (=> b!5454374 (= c!952611 ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343))))))

(declare-fun b!5454375 () Bool)

(assert (=> b!5454375 (= e!3377944 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396427 () Bool)

(assert (=> bm!396427 (= call!396432 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (h!68468 zl!343))) (Context!9331 (t!375372 (exprs!5165 (h!68468 zl!343)))) (h!68466 s!2326)))))

(assert (= (and d!1736820 res!2322759) b!5454371))

(assert (= (and d!1736820 c!952612) b!5454373))

(assert (= (and d!1736820 (not c!952612)) b!5454374))

(assert (= (and b!5454374 c!952611) b!5454372))

(assert (= (and b!5454374 (not c!952611)) b!5454375))

(assert (= (or b!5454373 b!5454372) bm!396427))

(assert (=> b!5454371 m!6474518))

(declare-fun m!6475124 () Bool)

(assert (=> b!5454373 m!6475124))

(declare-fun m!6475126 () Bool)

(assert (=> bm!396427 m!6475126))

(assert (=> b!5453920 d!1736820))

(declare-fun d!1736822 () Bool)

(assert (=> d!1736822 (= (flatMap!1008 z!1189 lambda!288150) (dynLambda!24401 lambda!288150 (h!68468 zl!343)))))

(declare-fun lt!2225640 () Unit!154792)

(assert (=> d!1736822 (= lt!2225640 (choose!41410 z!1189 (h!68468 zl!343) lambda!288150))))

(assert (=> d!1736822 (= z!1189 (store ((as const (Array Context!9330 Bool)) false) (h!68468 zl!343) true))))

(assert (=> d!1736822 (= (lemmaFlatMapOnSingletonSet!540 z!1189 (h!68468 zl!343) lambda!288150) lt!2225640)))

(declare-fun b_lambda!207735 () Bool)

(assert (=> (not b_lambda!207735) (not d!1736822)))

(declare-fun bs!1261839 () Bool)

(assert (= bs!1261839 d!1736822))

(assert (=> bs!1261839 m!6474520))

(declare-fun m!6475128 () Bool)

(assert (=> bs!1261839 m!6475128))

(declare-fun m!6475130 () Bool)

(assert (=> bs!1261839 m!6475130))

(declare-fun m!6475132 () Bool)

(assert (=> bs!1261839 m!6475132))

(assert (=> b!5453920 d!1736822))

(declare-fun b!5454376 () Bool)

(declare-fun e!3377948 () Bool)

(assert (=> b!5454376 (= e!3377948 (nullable!5450 (h!68467 (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun d!1736824 () Bool)

(declare-fun c!952614 () Bool)

(assert (=> d!1736824 (= c!952614 e!3377948)))

(declare-fun res!2322760 () Bool)

(assert (=> d!1736824 (=> (not res!2322760) (not e!3377948))))

(assert (=> d!1736824 (= res!2322760 ((_ is Cons!62019) (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343))))))))))

(declare-fun e!3377949 () (InoxSet Context!9330))

(assert (=> d!1736824 (= (derivationStepZipperUp!653 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343))))) (h!68466 s!2326)) e!3377949)))

(declare-fun b!5454377 () Bool)

(declare-fun e!3377947 () (InoxSet Context!9330))

(declare-fun call!396433 () (InoxSet Context!9330))

(assert (=> b!5454377 (= e!3377947 call!396433)))

(declare-fun b!5454378 () Bool)

(assert (=> b!5454378 (= e!3377949 ((_ map or) call!396433 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343)))))))) (h!68466 s!2326))))))

(declare-fun b!5454379 () Bool)

(assert (=> b!5454379 (= e!3377949 e!3377947)))

(declare-fun c!952613 () Bool)

(assert (=> b!5454379 (= c!952613 ((_ is Cons!62019) (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343))))))))))

(declare-fun b!5454380 () Bool)

(assert (=> b!5454380 (= e!3377947 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396428 () Bool)

(assert (=> bm!396428 (= call!396433 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343))))))) (Context!9331 (t!375372 (exprs!5165 (Context!9331 (Cons!62019 (h!68467 (exprs!5165 (h!68468 zl!343))) (t!375372 (exprs!5165 (h!68468 zl!343)))))))) (h!68466 s!2326)))))

(assert (= (and d!1736824 res!2322760) b!5454376))

(assert (= (and d!1736824 c!952614) b!5454378))

(assert (= (and d!1736824 (not c!952614)) b!5454379))

(assert (= (and b!5454379 c!952613) b!5454377))

(assert (= (and b!5454379 (not c!952613)) b!5454380))

(assert (= (or b!5454378 b!5454377) bm!396428))

(declare-fun m!6475134 () Bool)

(assert (=> b!5454376 m!6475134))

(declare-fun m!6475136 () Bool)

(assert (=> b!5454378 m!6475136))

(declare-fun m!6475138 () Bool)

(assert (=> bm!396428 m!6475138))

(assert (=> b!5453920 d!1736824))

(declare-fun d!1736826 () Bool)

(assert (=> d!1736826 (= (matchR!7466 (Concat!24126 (Union!15281 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31075 (regOne!31074 r!7292))) (regTwo!31074 r!7292)) s!2326) (matchR!7466 (Union!15281 (Concat!24126 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292)) (Concat!24126 (regTwo!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292))) s!2326))))

(declare-fun lt!2225646 () Unit!154792)

(declare-fun choose!41412 (Regex!15281 Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736826 (= lt!2225646 (choose!41412 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292) s!2326))))

(assert (=> d!1736826 (validRegex!7017 (regOne!31075 (regOne!31074 r!7292)))))

(assert (=> d!1736826 (= (lemmaConcatDistributesInUnion!28 (regOne!31075 (regOne!31074 r!7292)) (regTwo!31075 (regOne!31074 r!7292)) (regTwo!31074 r!7292) s!2326) lt!2225646)))

(declare-fun bs!1261840 () Bool)

(assert (= bs!1261840 d!1736826))

(declare-fun m!6475154 () Bool)

(assert (=> bs!1261840 m!6475154))

(declare-fun m!6475156 () Bool)

(assert (=> bs!1261840 m!6475156))

(declare-fun m!6475158 () Bool)

(assert (=> bs!1261840 m!6475158))

(declare-fun m!6475160 () Bool)

(assert (=> bs!1261840 m!6475160))

(assert (=> b!5453912 d!1736826))

(declare-fun bs!1261841 () Bool)

(declare-fun b!5454397 () Bool)

(assert (= bs!1261841 (and b!5454397 b!5453934)))

(declare-fun lambda!288217 () Int)

(assert (=> bs!1261841 (= (and (= s!2326 Nil!62018) (= (reg!15610 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= lt!2225379 lt!2225374)) (= lambda!288217 lambda!288174))))

(declare-fun bs!1261842 () Bool)

(assert (= bs!1261842 (and b!5454397 b!5454128)))

(assert (=> bs!1261842 (not (= lambda!288217 lambda!288201))))

(declare-fun bs!1261843 () Bool)

(assert (= bs!1261843 (and b!5454397 b!5454017)))

(assert (=> bs!1261843 (= (and (= (reg!15610 lt!2225379) (reg!15610 r!7292)) (= lt!2225379 r!7292)) (= lambda!288217 lambda!288180))))

(declare-fun bs!1261844 () Bool)

(assert (= bs!1261844 (and b!5454397 b!5453908)))

(assert (=> bs!1261844 (not (= lambda!288217 lambda!288154))))

(declare-fun bs!1261845 () Bool)

(assert (= bs!1261845 (and b!5454397 b!5453931)))

(assert (=> bs!1261845 (not (= lambda!288217 lambda!288149))))

(declare-fun bs!1261846 () Bool)

(assert (= bs!1261846 (and b!5454397 b!5453914)))

(assert (=> bs!1261846 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (reg!15610 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= lt!2225379 lt!2225374)) (= lambda!288217 lambda!288162))))

(declare-fun bs!1261847 () Bool)

(assert (= bs!1261847 (and b!5454397 b!5454129)))

(assert (=> bs!1261847 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (reg!15610 lt!2225379) (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= lt!2225379 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= lambda!288217 lambda!288200))))

(assert (=> bs!1261844 (not (= lambda!288217 lambda!288151))))

(assert (=> bs!1261841 (not (= lambda!288217 lambda!288173))))

(assert (=> bs!1261846 (not (= lambda!288217 lambda!288161))))

(declare-fun bs!1261848 () Bool)

(assert (= bs!1261848 (and b!5454397 b!5453924)))

(assert (=> bs!1261848 (not (= lambda!288217 lambda!288170))))

(assert (=> bs!1261846 (not (= lambda!288217 lambda!288163))))

(declare-fun bs!1261849 () Bool)

(assert (= bs!1261849 (and b!5454397 b!5453946)))

(assert (=> bs!1261849 (not (= lambda!288217 lambda!288160))))

(assert (=> bs!1261848 (not (= lambda!288217 lambda!288169))))

(assert (=> bs!1261844 (not (= lambda!288217 lambda!288153))))

(assert (=> bs!1261841 (not (= lambda!288217 lambda!288172))))

(assert (=> bs!1261848 (not (= lambda!288217 lambda!288168))))

(assert (=> bs!1261849 (not (= lambda!288217 lambda!288159))))

(assert (=> bs!1261845 (not (= lambda!288217 lambda!288148))))

(assert (=> bs!1261848 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (reg!15610 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= lt!2225379 lt!2225374)) (= lambda!288217 lambda!288171))))

(declare-fun bs!1261850 () Bool)

(assert (= bs!1261850 (and b!5454397 b!5453953)))

(assert (=> bs!1261850 (not (= lambda!288217 lambda!288156))))

(declare-fun bs!1261851 () Bool)

(assert (= bs!1261851 (and b!5454397 b!5454211)))

(assert (=> bs!1261851 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (reg!15610 lt!2225379) (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= lt!2225379 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= lambda!288217 lambda!288202))))

(assert (=> bs!1261848 (not (= lambda!288217 lambda!288167))))

(assert (=> bs!1261844 (not (= lambda!288217 lambda!288152))))

(assert (=> bs!1261850 (not (= lambda!288217 lambda!288155))))

(declare-fun bs!1261852 () Bool)

(assert (= bs!1261852 (and b!5454397 b!5454016)))

(assert (=> bs!1261852 (not (= lambda!288217 lambda!288182))))

(assert (=> bs!1261850 (not (= lambda!288217 lambda!288158))))

(assert (=> bs!1261850 (not (= lambda!288217 lambda!288157))))

(declare-fun bs!1261853 () Bool)

(assert (= bs!1261853 (and b!5454397 b!5454210)))

(assert (=> bs!1261853 (not (= lambda!288217 lambda!288203))))

(assert (=> b!5454397 true))

(assert (=> b!5454397 true))

(declare-fun bs!1261854 () Bool)

(declare-fun b!5454396 () Bool)

(assert (= bs!1261854 (and b!5454396 b!5453934)))

(declare-fun lambda!288219 () Int)

(assert (=> bs!1261854 (not (= lambda!288219 lambda!288174))))

(declare-fun bs!1261855 () Bool)

(assert (= bs!1261855 (and b!5454396 b!5454128)))

(assert (=> bs!1261855 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (regOne!31074 lt!2225379) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (regTwo!31074 lt!2225379) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288219 lambda!288201))))

(declare-fun bs!1261856 () Bool)

(assert (= bs!1261856 (and b!5454396 b!5454017)))

(assert (=> bs!1261856 (not (= lambda!288219 lambda!288180))))

(declare-fun bs!1261857 () Bool)

(assert (= bs!1261857 (and b!5454396 b!5453908)))

(assert (=> bs!1261857 (= (and (= (regOne!31074 lt!2225379) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225531)) (= lambda!288219 lambda!288154))))

(declare-fun bs!1261858 () Bool)

(assert (= bs!1261858 (and b!5454396 b!5453931)))

(assert (=> bs!1261858 (= (and (= (regOne!31074 lt!2225379) (regOne!31074 r!7292)) (= (regTwo!31074 lt!2225379) (regTwo!31074 r!7292))) (= lambda!288219 lambda!288149))))

(declare-fun bs!1261859 () Bool)

(assert (= bs!1261859 (and b!5454396 b!5454129)))

(assert (=> bs!1261859 (not (= lambda!288219 lambda!288200))))

(assert (=> bs!1261857 (not (= lambda!288219 lambda!288151))))

(assert (=> bs!1261854 (= (and (= s!2326 Nil!62018) (= (regOne!31074 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225374)) (= lambda!288219 lambda!288173))))

(declare-fun bs!1261860 () Bool)

(assert (= bs!1261860 (and b!5454396 b!5453914)))

(assert (=> bs!1261860 (not (= lambda!288219 lambda!288161))))

(declare-fun bs!1261861 () Bool)

(assert (= bs!1261861 (and b!5454396 b!5453924)))

(assert (=> bs!1261861 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225374)) (= lambda!288219 lambda!288170))))

(assert (=> bs!1261860 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 lt!2225379) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225374)) (= lambda!288219 lambda!288163))))

(declare-fun bs!1261862 () Bool)

(assert (= bs!1261862 (and b!5454396 b!5453946)))

(assert (=> bs!1261862 (= (and (= (regOne!31074 lt!2225379) lt!2225374) (= (regTwo!31074 lt!2225379) (regTwo!31074 r!7292))) (= lambda!288219 lambda!288160))))

(assert (=> bs!1261861 (not (= lambda!288219 lambda!288169))))

(assert (=> bs!1261857 (not (= lambda!288219 lambda!288153))))

(assert (=> bs!1261854 (not (= lambda!288219 lambda!288172))))

(assert (=> bs!1261861 (= (and (= (regOne!31074 lt!2225379) lt!2225473) (= (regTwo!31074 lt!2225379) (regTwo!31074 r!7292))) (= lambda!288219 lambda!288168))))

(assert (=> bs!1261862 (not (= lambda!288219 lambda!288159))))

(assert (=> bs!1261858 (not (= lambda!288219 lambda!288148))))

(declare-fun bs!1261863 () Bool)

(assert (= bs!1261863 (and b!5454396 b!5454397)))

(assert (=> bs!1261863 (not (= lambda!288219 lambda!288217))))

(assert (=> bs!1261860 (not (= lambda!288219 lambda!288162))))

(assert (=> bs!1261861 (not (= lambda!288219 lambda!288171))))

(declare-fun bs!1261864 () Bool)

(assert (= bs!1261864 (and b!5454396 b!5453953)))

(assert (=> bs!1261864 (= (and (= (regOne!31074 lt!2225379) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225518)) (= lambda!288219 lambda!288156))))

(declare-fun bs!1261865 () Bool)

(assert (= bs!1261865 (and b!5454396 b!5454211)))

(assert (=> bs!1261865 (not (= lambda!288219 lambda!288202))))

(assert (=> bs!1261861 (not (= lambda!288219 lambda!288167))))

(assert (=> bs!1261857 (= (and (= (regOne!31074 lt!2225379) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225532)) (= lambda!288219 lambda!288152))))

(assert (=> bs!1261864 (not (= lambda!288219 lambda!288155))))

(declare-fun bs!1261866 () Bool)

(assert (= bs!1261866 (and b!5454396 b!5454016)))

(assert (=> bs!1261866 (= (and (= (regOne!31074 lt!2225379) (regOne!31074 r!7292)) (= (regTwo!31074 lt!2225379) (regTwo!31074 r!7292))) (= lambda!288219 lambda!288182))))

(assert (=> bs!1261864 (= (and (= (regOne!31074 lt!2225379) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 lt!2225379) lt!2225526)) (= lambda!288219 lambda!288158))))

(assert (=> bs!1261864 (not (= lambda!288219 lambda!288157))))

(declare-fun bs!1261867 () Bool)

(assert (= bs!1261867 (and b!5454396 b!5454210)))

(assert (=> bs!1261867 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (regOne!31074 lt!2225379) (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (regTwo!31074 lt!2225379) (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))) (= lambda!288219 lambda!288203))))

(assert (=> b!5454396 true))

(assert (=> b!5454396 true))

(declare-fun b!5454393 () Bool)

(declare-fun e!3377961 () Bool)

(assert (=> b!5454393 (= e!3377961 (matchRSpec!2384 (regTwo!31075 lt!2225379) s!2326))))

(declare-fun d!1736830 () Bool)

(declare-fun c!952621 () Bool)

(assert (=> d!1736830 (= c!952621 ((_ is EmptyExpr!15281) lt!2225379))))

(declare-fun e!3377960 () Bool)

(assert (=> d!1736830 (= (matchRSpec!2384 lt!2225379 s!2326) e!3377960)))

(declare-fun b!5454394 () Bool)

(declare-fun call!396435 () Bool)

(assert (=> b!5454394 (= e!3377960 call!396435)))

(declare-fun b!5454395 () Bool)

(declare-fun e!3377962 () Bool)

(declare-fun e!3377959 () Bool)

(assert (=> b!5454395 (= e!3377962 e!3377959)))

(declare-fun c!952620 () Bool)

(assert (=> b!5454395 (= c!952620 ((_ is Star!15281) lt!2225379))))

(declare-fun call!396434 () Bool)

(assert (=> b!5454396 (= e!3377959 call!396434)))

(declare-fun e!3377958 () Bool)

(assert (=> b!5454397 (= e!3377958 call!396434)))

(declare-fun b!5454398 () Bool)

(declare-fun res!2322768 () Bool)

(assert (=> b!5454398 (=> res!2322768 e!3377958)))

(assert (=> b!5454398 (= res!2322768 call!396435)))

(assert (=> b!5454398 (= e!3377959 e!3377958)))

(declare-fun b!5454399 () Bool)

(declare-fun e!3377956 () Bool)

(assert (=> b!5454399 (= e!3377956 (= s!2326 (Cons!62018 (c!952474 lt!2225379) Nil!62018)))))

(declare-fun b!5454400 () Bool)

(declare-fun e!3377957 () Bool)

(assert (=> b!5454400 (= e!3377960 e!3377957)))

(declare-fun res!2322769 () Bool)

(assert (=> b!5454400 (= res!2322769 (not ((_ is EmptyLang!15281) lt!2225379)))))

(assert (=> b!5454400 (=> (not res!2322769) (not e!3377957))))

(declare-fun b!5454401 () Bool)

(declare-fun c!952618 () Bool)

(assert (=> b!5454401 (= c!952618 ((_ is ElementMatch!15281) lt!2225379))))

(assert (=> b!5454401 (= e!3377957 e!3377956)))

(declare-fun b!5454402 () Bool)

(assert (=> b!5454402 (= e!3377962 e!3377961)))

(declare-fun res!2322767 () Bool)

(assert (=> b!5454402 (= res!2322767 (matchRSpec!2384 (regOne!31075 lt!2225379) s!2326))))

(assert (=> b!5454402 (=> res!2322767 e!3377961)))

(declare-fun b!5454403 () Bool)

(declare-fun c!952619 () Bool)

(assert (=> b!5454403 (= c!952619 ((_ is Union!15281) lt!2225379))))

(assert (=> b!5454403 (= e!3377956 e!3377962)))

(declare-fun bm!396429 () Bool)

(assert (=> bm!396429 (= call!396435 (isEmpty!34002 s!2326))))

(declare-fun bm!396430 () Bool)

(assert (=> bm!396430 (= call!396434 (Exists!2462 (ite c!952620 lambda!288217 lambda!288219)))))

(assert (= (and d!1736830 c!952621) b!5454394))

(assert (= (and d!1736830 (not c!952621)) b!5454400))

(assert (= (and b!5454400 res!2322769) b!5454401))

(assert (= (and b!5454401 c!952618) b!5454399))

(assert (= (and b!5454401 (not c!952618)) b!5454403))

(assert (= (and b!5454403 c!952619) b!5454402))

(assert (= (and b!5454403 (not c!952619)) b!5454395))

(assert (= (and b!5454402 (not res!2322767)) b!5454393))

(assert (= (and b!5454395 c!952620) b!5454398))

(assert (= (and b!5454395 (not c!952620)) b!5454396))

(assert (= (and b!5454398 (not res!2322768)) b!5454397))

(assert (= (or b!5454397 b!5454396) bm!396430))

(assert (= (or b!5454394 b!5454398) bm!396429))

(declare-fun m!6475162 () Bool)

(assert (=> b!5454393 m!6475162))

(declare-fun m!6475164 () Bool)

(assert (=> b!5454402 m!6475164))

(assert (=> bm!396429 m!6474766))

(declare-fun m!6475166 () Bool)

(assert (=> bm!396430 m!6475166))

(assert (=> b!5453912 d!1736830))

(declare-fun d!1736832 () Bool)

(assert (=> d!1736832 (= (matchR!7466 lt!2225391 s!2326) (matchRSpec!2384 lt!2225391 s!2326))))

(declare-fun lt!2225650 () Unit!154792)

(assert (=> d!1736832 (= lt!2225650 (choose!41400 lt!2225391 s!2326))))

(assert (=> d!1736832 (validRegex!7017 lt!2225391)))

(assert (=> d!1736832 (= (mainMatchTheorem!2384 lt!2225391 s!2326) lt!2225650)))

(declare-fun bs!1261868 () Bool)

(assert (= bs!1261868 d!1736832))

(declare-fun m!6475168 () Bool)

(assert (=> bs!1261868 m!6475168))

(declare-fun m!6475170 () Bool)

(assert (=> bs!1261868 m!6475170))

(declare-fun m!6475172 () Bool)

(assert (=> bs!1261868 m!6475172))

(declare-fun m!6475174 () Bool)

(assert (=> bs!1261868 m!6475174))

(assert (=> b!5453912 d!1736832))

(declare-fun d!1736834 () Bool)

(assert (=> d!1736834 (= (nullable!5450 (regTwo!31075 (regOne!31074 r!7292))) (nullableFct!1635 (regTwo!31075 (regOne!31074 r!7292))))))

(declare-fun bs!1261869 () Bool)

(assert (= bs!1261869 d!1736834))

(declare-fun m!6475176 () Bool)

(assert (=> bs!1261869 m!6475176))

(assert (=> b!5453912 d!1736834))

(declare-fun bs!1261880 () Bool)

(declare-fun d!1736836 () Bool)

(assert (= bs!1261880 (and d!1736836 b!5453934)))

(declare-fun lambda!288229 () Int)

(assert (=> bs!1261880 (not (= lambda!288229 lambda!288174))))

(declare-fun bs!1261881 () Bool)

(assert (= bs!1261881 (and d!1736836 b!5454128)))

(assert (=> bs!1261881 (not (= lambda!288229 lambda!288201))))

(declare-fun bs!1261882 () Bool)

(assert (= bs!1261882 (and d!1736836 b!5454017)))

(assert (=> bs!1261882 (not (= lambda!288229 lambda!288180))))

(declare-fun bs!1261883 () Bool)

(assert (= bs!1261883 (and d!1736836 b!5453908)))

(assert (=> bs!1261883 (not (= lambda!288229 lambda!288154))))

(declare-fun bs!1261884 () Bool)

(assert (= bs!1261884 (and d!1736836 b!5453931)))

(assert (=> bs!1261884 (not (= lambda!288229 lambda!288149))))

(declare-fun bs!1261885 () Bool)

(assert (= bs!1261885 (and d!1736836 b!5454129)))

(assert (=> bs!1261885 (not (= lambda!288229 lambda!288200))))

(assert (=> bs!1261883 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225532)) (= lambda!288229 lambda!288151))))

(assert (=> bs!1261880 (not (= lambda!288229 lambda!288173))))

(declare-fun bs!1261886 () Bool)

(assert (= bs!1261886 (and d!1736836 b!5453914)))

(assert (=> bs!1261886 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225382)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288229 lambda!288161))))

(declare-fun bs!1261887 () Bool)

(assert (= bs!1261887 (and d!1736836 b!5454396)))

(assert (=> bs!1261887 (not (= lambda!288229 lambda!288219))))

(declare-fun bs!1261888 () Bool)

(assert (= bs!1261888 (and d!1736836 b!5453924)))

(assert (=> bs!1261888 (not (= lambda!288229 lambda!288170))))

(assert (=> bs!1261886 (not (= lambda!288229 lambda!288163))))

(declare-fun bs!1261889 () Bool)

(assert (= bs!1261889 (and d!1736836 b!5453946)))

(assert (=> bs!1261889 (not (= lambda!288229 lambda!288160))))

(assert (=> bs!1261888 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225479)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288229 lambda!288169))))

(assert (=> bs!1261883 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225531)) (= lambda!288229 lambda!288153))))

(assert (=> bs!1261880 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) Nil!62018) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288229 lambda!288172))))

(assert (=> bs!1261888 (not (= lambda!288229 lambda!288168))))

(assert (=> bs!1261889 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) lt!2225374) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288229 lambda!288159))))

(assert (=> bs!1261884 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288229 lambda!288148))))

(declare-fun bs!1261890 () Bool)

(assert (= bs!1261890 (and d!1736836 b!5454397)))

(assert (=> bs!1261890 (not (= lambda!288229 lambda!288217))))

(assert (=> bs!1261886 (not (= lambda!288229 lambda!288162))))

(assert (=> bs!1261888 (not (= lambda!288229 lambda!288171))))

(declare-fun bs!1261891 () Bool)

(assert (= bs!1261891 (and d!1736836 b!5453953)))

(assert (=> bs!1261891 (not (= lambda!288229 lambda!288156))))

(declare-fun bs!1261892 () Bool)

(assert (= bs!1261892 (and d!1736836 b!5454211)))

(assert (=> bs!1261892 (not (= lambda!288229 lambda!288202))))

(assert (=> bs!1261888 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) lt!2225473) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288229 lambda!288167))))

(assert (=> bs!1261883 (not (= lambda!288229 lambda!288152))))

(assert (=> bs!1261891 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225518)) (= lambda!288229 lambda!288155))))

(declare-fun bs!1261893 () Bool)

(assert (= bs!1261893 (and d!1736836 b!5454016)))

(assert (=> bs!1261893 (not (= lambda!288229 lambda!288182))))

(assert (=> bs!1261891 (not (= lambda!288229 lambda!288158))))

(assert (=> bs!1261891 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225526)) (= lambda!288229 lambda!288157))))

(declare-fun bs!1261894 () Bool)

(assert (= bs!1261894 (and d!1736836 b!5454210)))

(assert (=> bs!1261894 (not (= lambda!288229 lambda!288203))))

(assert (=> d!1736836 true))

(assert (=> d!1736836 true))

(assert (=> d!1736836 true))

(declare-fun lambda!288230 () Int)

(assert (=> bs!1261880 (not (= lambda!288230 lambda!288174))))

(assert (=> bs!1261881 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288230 lambda!288201))))

(assert (=> bs!1261882 (not (= lambda!288230 lambda!288180))))

(assert (=> bs!1261883 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225531)) (= lambda!288230 lambda!288154))))

(assert (=> bs!1261884 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288230 lambda!288149))))

(assert (=> bs!1261885 (not (= lambda!288230 lambda!288200))))

(assert (=> bs!1261883 (not (= lambda!288230 lambda!288151))))

(assert (=> bs!1261880 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) Nil!62018) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288230 lambda!288173))))

(assert (=> bs!1261886 (not (= lambda!288230 lambda!288161))))

(assert (=> bs!1261887 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 lt!2225379)) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 lt!2225379))) (= lambda!288230 lambda!288219))))

(assert (=> bs!1261888 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225479)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288230 lambda!288170))))

(assert (=> bs!1261886 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (_1!35783 lt!2225382)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225374)) (= lambda!288230 lambda!288163))))

(assert (=> bs!1261889 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) lt!2225374) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288230 lambda!288160))))

(declare-fun bs!1261896 () Bool)

(assert (= bs!1261896 d!1736836))

(assert (=> bs!1261896 (not (= lambda!288230 lambda!288229))))

(assert (=> bs!1261888 (not (= lambda!288230 lambda!288169))))

(assert (=> bs!1261883 (not (= lambda!288230 lambda!288153))))

(assert (=> bs!1261880 (not (= lambda!288230 lambda!288172))))

(assert (=> bs!1261888 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) lt!2225473) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288230 lambda!288168))))

(assert (=> bs!1261889 (not (= lambda!288230 lambda!288159))))

(assert (=> bs!1261884 (not (= lambda!288230 lambda!288148))))

(assert (=> bs!1261890 (not (= lambda!288230 lambda!288217))))

(assert (=> bs!1261886 (not (= lambda!288230 lambda!288162))))

(assert (=> bs!1261888 (not (= lambda!288230 lambda!288171))))

(assert (=> bs!1261891 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225518)) (= lambda!288230 lambda!288156))))

(assert (=> bs!1261892 (not (= lambda!288230 lambda!288202))))

(assert (=> bs!1261888 (not (= lambda!288230 lambda!288167))))

(assert (=> bs!1261883 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225532)) (= lambda!288230 lambda!288152))))

(assert (=> bs!1261891 (not (= lambda!288230 lambda!288155))))

(assert (=> bs!1261893 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 r!7292))) (= lambda!288230 lambda!288182))))

(assert (=> bs!1261891 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) lt!2225526)) (= lambda!288230 lambda!288158))))

(assert (=> bs!1261891 (not (= lambda!288230 lambda!288157))))

(assert (=> bs!1261894 (= (and (= (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))) (= lambda!288230 lambda!288203))))

(assert (=> d!1736836 true))

(assert (=> d!1736836 true))

(assert (=> d!1736836 true))

(assert (=> d!1736836 (= (Exists!2462 lambda!288229) (Exists!2462 lambda!288230))))

(declare-fun lt!2225653 () Unit!154792)

(declare-fun choose!41415 (Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736836 (= lt!2225653 (choose!41415 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)))))

(assert (=> d!1736836 (validRegex!7017 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))))))

(assert (=> d!1736836 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292)))))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) lt!2225653)))

(declare-fun m!6475204 () Bool)

(assert (=> bs!1261896 m!6475204))

(declare-fun m!6475206 () Bool)

(assert (=> bs!1261896 m!6475206))

(declare-fun m!6475208 () Bool)

(assert (=> bs!1261896 m!6475208))

(declare-fun m!6475210 () Bool)

(assert (=> bs!1261896 m!6475210))

(assert (=> bm!396158 d!1736836))

(declare-fun d!1736848 () Bool)

(assert (=> d!1736848 (= (Exists!2462 (ite c!952471 lambda!288151 (ite c!952467 lambda!288155 (ite c!952465 lambda!288163 lambda!288167)))) (choose!41402 (ite c!952471 lambda!288151 (ite c!952467 lambda!288155 (ite c!952465 lambda!288163 lambda!288167)))))))

(declare-fun bs!1261897 () Bool)

(assert (= bs!1261897 d!1736848))

(declare-fun m!6475214 () Bool)

(assert (=> bs!1261897 m!6475214))

(assert (=> bm!396289 d!1736848))

(declare-fun d!1736850 () Bool)

(assert (=> d!1736850 (= (isEmpty!34003 (t!375372 (exprs!5165 (h!68468 zl!343)))) ((_ is Nil!62019) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> b!5453955 d!1736850))

(declare-fun d!1736854 () Bool)

(assert (=> d!1736854 (= (flatMap!1008 (ite c!952465 lt!2225436 lt!2225513) (ite c!952465 lambda!288150 lambda!288150)) (dynLambda!24401 (ite c!952465 lambda!288150 lambda!288150) lt!2225444))))

(declare-fun lt!2225660 () Unit!154792)

(assert (=> d!1736854 (= lt!2225660 (choose!41410 (ite c!952465 lt!2225436 lt!2225513) lt!2225444 (ite c!952465 lambda!288150 lambda!288150)))))

(assert (=> d!1736854 (= (ite c!952465 lt!2225436 lt!2225513) (store ((as const (Array Context!9330 Bool)) false) lt!2225444 true))))

(assert (=> d!1736854 (= (lemmaFlatMapOnSingletonSet!540 (ite c!952465 lt!2225436 lt!2225513) lt!2225444 (ite c!952465 lambda!288150 lambda!288150)) lt!2225660)))

(declare-fun b_lambda!207739 () Bool)

(assert (=> (not b_lambda!207739) (not d!1736854)))

(declare-fun bs!1261898 () Bool)

(assert (= bs!1261898 d!1736854))

(declare-fun m!6475222 () Bool)

(assert (=> bs!1261898 m!6475222))

(declare-fun m!6475224 () Bool)

(assert (=> bs!1261898 m!6475224))

(declare-fun m!6475226 () Bool)

(assert (=> bs!1261898 m!6475226))

(assert (=> bs!1261898 m!6474490))

(assert (=> bm!396275 d!1736854))

(declare-fun bs!1261899 () Bool)

(declare-fun d!1736856 () Bool)

(assert (= bs!1261899 (and d!1736856 b!5453934)))

(declare-fun lambda!288231 () Int)

(assert (=> bs!1261899 (not (= lambda!288231 lambda!288174))))

(declare-fun bs!1261900 () Bool)

(assert (= bs!1261900 (and d!1736856 b!5454128)))

(assert (=> bs!1261900 (not (= lambda!288231 lambda!288201))))

(declare-fun bs!1261901 () Bool)

(assert (= bs!1261901 (and d!1736856 b!5454017)))

(assert (=> bs!1261901 (not (= lambda!288231 lambda!288180))))

(declare-fun bs!1261902 () Bool)

(assert (= bs!1261902 (and d!1736856 b!5453908)))

(assert (=> bs!1261902 (not (= lambda!288231 lambda!288154))))

(declare-fun bs!1261903 () Bool)

(assert (= bs!1261903 (and d!1736856 b!5453931)))

(assert (=> bs!1261903 (not (= lambda!288231 lambda!288149))))

(declare-fun bs!1261904 () Bool)

(assert (= bs!1261904 (and d!1736856 b!5454129)))

(assert (=> bs!1261904 (not (= lambda!288231 lambda!288200))))

(assert (=> bs!1261899 (not (= lambda!288231 lambda!288173))))

(declare-fun bs!1261905 () Bool)

(assert (= bs!1261905 (and d!1736856 b!5453914)))

(assert (=> bs!1261905 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (_1!35783 lt!2225382)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288231 lambda!288161))))

(declare-fun bs!1261906 () Bool)

(assert (= bs!1261906 (and d!1736856 b!5454396)))

(assert (=> bs!1261906 (not (= lambda!288231 lambda!288219))))

(declare-fun bs!1261907 () Bool)

(assert (= bs!1261907 (and d!1736856 b!5453924)))

(assert (=> bs!1261907 (not (= lambda!288231 lambda!288170))))

(assert (=> bs!1261905 (not (= lambda!288231 lambda!288163))))

(declare-fun bs!1261908 () Bool)

(assert (= bs!1261908 (and d!1736856 b!5453946)))

(assert (=> bs!1261908 (not (= lambda!288231 lambda!288160))))

(declare-fun bs!1261909 () Bool)

(assert (= bs!1261909 (and d!1736856 d!1736836)))

(assert (=> bs!1261909 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288231 lambda!288229))))

(assert (=> bs!1261907 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (_1!35783 lt!2225479)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288231 lambda!288169))))

(assert (=> bs!1261902 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225531)) (= lambda!288231 lambda!288153))))

(assert (=> bs!1261899 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) Nil!62018) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288231 lambda!288172))))

(assert (=> bs!1261907 (not (= lambda!288231 lambda!288168))))

(assert (=> bs!1261908 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225374) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288231 lambda!288159))))

(assert (=> bs!1261903 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288231 lambda!288148))))

(declare-fun bs!1261910 () Bool)

(assert (= bs!1261910 (and d!1736856 b!5454397)))

(assert (=> bs!1261910 (not (= lambda!288231 lambda!288217))))

(assert (=> bs!1261905 (not (= lambda!288231 lambda!288162))))

(assert (=> bs!1261902 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225532)) (= lambda!288231 lambda!288151))))

(assert (=> bs!1261909 (not (= lambda!288231 lambda!288230))))

(assert (=> bs!1261907 (not (= lambda!288231 lambda!288171))))

(declare-fun bs!1261911 () Bool)

(assert (= bs!1261911 (and d!1736856 b!5453953)))

(assert (=> bs!1261911 (not (= lambda!288231 lambda!288156))))

(declare-fun bs!1261912 () Bool)

(assert (= bs!1261912 (and d!1736856 b!5454211)))

(assert (=> bs!1261912 (not (= lambda!288231 lambda!288202))))

(assert (=> bs!1261907 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225473) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288231 lambda!288167))))

(assert (=> bs!1261902 (not (= lambda!288231 lambda!288152))))

(assert (=> bs!1261911 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225518)) (= lambda!288231 lambda!288155))))

(declare-fun bs!1261913 () Bool)

(assert (= bs!1261913 (and d!1736856 b!5454016)))

(assert (=> bs!1261913 (not (= lambda!288231 lambda!288182))))

(assert (=> bs!1261911 (not (= lambda!288231 lambda!288158))))

(assert (=> bs!1261911 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225526)) (= lambda!288231 lambda!288157))))

(declare-fun bs!1261914 () Bool)

(assert (= bs!1261914 (and d!1736856 b!5454210)))

(assert (=> bs!1261914 (not (= lambda!288231 lambda!288203))))

(assert (=> d!1736856 true))

(assert (=> d!1736856 true))

(assert (=> d!1736856 true))

(declare-fun lambda!288234 () Int)

(assert (=> bs!1261899 (not (= lambda!288234 lambda!288174))))

(assert (=> bs!1261900 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288234 lambda!288201))))

(assert (=> bs!1261901 (not (= lambda!288234 lambda!288180))))

(assert (=> bs!1261902 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225531)) (= lambda!288234 lambda!288154))))

(assert (=> bs!1261903 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288234 lambda!288149))))

(assert (=> bs!1261904 (not (= lambda!288234 lambda!288200))))

(assert (=> bs!1261899 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) Nil!62018) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288234 lambda!288173))))

(assert (=> bs!1261905 (not (= lambda!288234 lambda!288161))))

(assert (=> bs!1261906 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 lt!2225379)) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 lt!2225379))) (= lambda!288234 lambda!288219))))

(assert (=> bs!1261907 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (_1!35783 lt!2225479)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288234 lambda!288170))))

(assert (=> bs!1261905 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (_1!35783 lt!2225382)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225374)) (= lambda!288234 lambda!288163))))

(assert (=> bs!1261908 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225374) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288234 lambda!288160))))

(assert (=> bs!1261909 (not (= lambda!288234 lambda!288229))))

(assert (=> bs!1261907 (not (= lambda!288234 lambda!288169))))

(assert (=> bs!1261902 (not (= lambda!288234 lambda!288153))))

(assert (=> bs!1261899 (not (= lambda!288234 lambda!288172))))

(assert (=> bs!1261907 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225473) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288234 lambda!288168))))

(assert (=> bs!1261908 (not (= lambda!288234 lambda!288159))))

(assert (=> bs!1261903 (not (= lambda!288234 lambda!288148))))

(assert (=> bs!1261910 (not (= lambda!288234 lambda!288217))))

(assert (=> bs!1261905 (not (= lambda!288234 lambda!288162))))

(assert (=> bs!1261902 (not (= lambda!288234 lambda!288151))))

(assert (=> bs!1261909 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288234 lambda!288230))))

(assert (=> bs!1261907 (not (= lambda!288234 lambda!288171))))

(assert (=> bs!1261911 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225518)) (= lambda!288234 lambda!288156))))

(assert (=> bs!1261912 (not (= lambda!288234 lambda!288202))))

(assert (=> bs!1261907 (not (= lambda!288234 lambda!288167))))

(assert (=> bs!1261902 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225532)) (= lambda!288234 lambda!288152))))

(assert (=> bs!1261911 (not (= lambda!288234 lambda!288155))))

(assert (=> bs!1261913 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288234 lambda!288182))))

(assert (=> bs!1261911 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) s!2326) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) lt!2225526)) (= lambda!288234 lambda!288158))))

(assert (=> bs!1261911 (not (= lambda!288234 lambda!288157))))

(assert (=> bs!1261914 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))) (= lambda!288234 lambda!288203))))

(declare-fun bs!1261921 () Bool)

(assert (= bs!1261921 d!1736856))

(assert (=> bs!1261921 (not (= lambda!288234 lambda!288231))))

(assert (=> d!1736856 true))

(assert (=> d!1736856 true))

(assert (=> d!1736856 true))

(assert (=> d!1736856 (= (Exists!2462 lambda!288231) (Exists!2462 lambda!288234))))

(declare-fun lt!2225661 () Unit!154792)

(assert (=> d!1736856 (= lt!2225661 (choose!41415 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))))))

(assert (=> d!1736856 (validRegex!7017 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))

(assert (=> d!1736856 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) lt!2225661)))

(declare-fun m!6475262 () Bool)

(assert (=> bs!1261921 m!6475262))

(declare-fun m!6475264 () Bool)

(assert (=> bs!1261921 m!6475264))

(declare-fun m!6475266 () Bool)

(assert (=> bs!1261921 m!6475266))

(declare-fun m!6475268 () Bool)

(assert (=> bs!1261921 m!6475268))

(assert (=> bm!396163 d!1736856))

(declare-fun b!5454499 () Bool)

(declare-fun e!3378022 () Option!15392)

(assert (=> b!5454499 (= e!3378022 None!15391)))

(declare-fun d!1736864 () Bool)

(declare-fun e!3378018 () Bool)

(assert (=> d!1736864 e!3378018))

(declare-fun res!2322828 () Bool)

(assert (=> d!1736864 (=> res!2322828 e!3378018)))

(declare-fun e!3378019 () Bool)

(assert (=> d!1736864 (= res!2322828 e!3378019)))

(declare-fun res!2322829 () Bool)

(assert (=> d!1736864 (=> (not res!2322829) (not e!3378019))))

(declare-fun lt!2225680 () Option!15392)

(assert (=> d!1736864 (= res!2322829 (isDefined!12095 lt!2225680))))

(declare-fun e!3378021 () Option!15392)

(assert (=> d!1736864 (= lt!2225680 e!3378021)))

(declare-fun c!952642 () Bool)

(declare-fun e!3378020 () Bool)

(assert (=> d!1736864 (= c!952642 e!3378020)))

(declare-fun res!2322827 () Bool)

(assert (=> d!1736864 (=> (not res!2322827) (not e!3378020))))

(assert (=> d!1736864 (= res!2322827 (matchR!7466 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) Nil!62018))))

(assert (=> d!1736864 (validRegex!7017 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))

(assert (=> d!1736864 (= (findConcatSeparation!1806 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) Nil!62018 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) lt!2225680)))

(declare-fun b!5454500 () Bool)

(assert (=> b!5454500 (= e!3378021 e!3378022)))

(declare-fun c!952643 () Bool)

(assert (=> b!5454500 (= c!952643 ((_ is Nil!62018) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun b!5454501 () Bool)

(assert (=> b!5454501 (= e!3378020 (matchR!7466 (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun b!5454502 () Bool)

(assert (=> b!5454502 (= e!3378018 (not (isDefined!12095 lt!2225680)))))

(declare-fun b!5454503 () Bool)

(assert (=> b!5454503 (= e!3378019 (= (++!13641 (_1!35783 (get!21386 lt!2225680)) (_2!35783 (get!21386 lt!2225680))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun b!5454504 () Bool)

(declare-fun lt!2225679 () Unit!154792)

(declare-fun lt!2225681 () Unit!154792)

(assert (=> b!5454504 (= lt!2225679 lt!2225681)))

(assert (=> b!5454504 (= (++!13641 (++!13641 Nil!62018 (Cons!62018 (h!68466 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) Nil!62018)) (t!375371 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1878 (List!62142 C!30832 List!62142 List!62142) Unit!154792)

(assert (=> b!5454504 (= lt!2225681 (lemmaMoveElementToOtherListKeepsConcatEq!1878 Nil!62018 (h!68466 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (t!375371 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(assert (=> b!5454504 (= e!3378022 (findConcatSeparation!1806 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (++!13641 Nil!62018 (Cons!62018 (h!68466 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) Nil!62018)) (t!375371 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(declare-fun b!5454505 () Bool)

(declare-fun res!2322826 () Bool)

(assert (=> b!5454505 (=> (not res!2322826) (not e!3378019))))

(assert (=> b!5454505 (= res!2322826 (matchR!7466 (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (_2!35783 (get!21386 lt!2225680))))))

(declare-fun b!5454506 () Bool)

(declare-fun res!2322825 () Bool)

(assert (=> b!5454506 (=> (not res!2322825) (not e!3378019))))

(assert (=> b!5454506 (= res!2322825 (matchR!7466 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (_1!35783 (get!21386 lt!2225680))))))

(declare-fun b!5454507 () Bool)

(assert (=> b!5454507 (= e!3378021 (Some!15391 (tuple2!64961 Nil!62018 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))))))

(assert (= (and d!1736864 res!2322827) b!5454501))

(assert (= (and d!1736864 c!952642) b!5454507))

(assert (= (and d!1736864 (not c!952642)) b!5454500))

(assert (= (and b!5454500 c!952643) b!5454499))

(assert (= (and b!5454500 (not c!952643)) b!5454504))

(assert (= (and d!1736864 res!2322829) b!5454506))

(assert (= (and b!5454506 res!2322825) b!5454505))

(assert (= (and b!5454505 res!2322826) b!5454503))

(assert (= (and d!1736864 (not res!2322828)) b!5454502))

(declare-fun m!6475302 () Bool)

(assert (=> b!5454505 m!6475302))

(declare-fun m!6475304 () Bool)

(assert (=> b!5454505 m!6475304))

(declare-fun m!6475306 () Bool)

(assert (=> d!1736864 m!6475306))

(declare-fun m!6475308 () Bool)

(assert (=> d!1736864 m!6475308))

(declare-fun m!6475310 () Bool)

(assert (=> d!1736864 m!6475310))

(assert (=> b!5454503 m!6475302))

(declare-fun m!6475312 () Bool)

(assert (=> b!5454503 m!6475312))

(declare-fun m!6475314 () Bool)

(assert (=> b!5454504 m!6475314))

(assert (=> b!5454504 m!6475314))

(declare-fun m!6475316 () Bool)

(assert (=> b!5454504 m!6475316))

(declare-fun m!6475318 () Bool)

(assert (=> b!5454504 m!6475318))

(assert (=> b!5454504 m!6475314))

(declare-fun m!6475320 () Bool)

(assert (=> b!5454504 m!6475320))

(assert (=> b!5454502 m!6475306))

(declare-fun m!6475322 () Bool)

(assert (=> b!5454501 m!6475322))

(assert (=> b!5454506 m!6475302))

(declare-fun m!6475324 () Bool)

(assert (=> b!5454506 m!6475324))

(assert (=> bm!396293 d!1736864))

(declare-fun bs!1261925 () Bool)

(declare-fun d!1736874 () Bool)

(assert (= bs!1261925 (and d!1736874 b!5453934)))

(declare-fun lambda!288240 () Int)

(assert (=> bs!1261925 (not (= lambda!288240 lambda!288174))))

(declare-fun bs!1261926 () Bool)

(assert (= bs!1261926 (and d!1736874 b!5454128)))

(assert (=> bs!1261926 (not (= lambda!288240 lambda!288201))))

(declare-fun bs!1261927 () Bool)

(assert (= bs!1261927 (and d!1736874 b!5454017)))

(assert (=> bs!1261927 (not (= lambda!288240 lambda!288180))))

(declare-fun bs!1261928 () Bool)

(assert (= bs!1261928 (and d!1736874 b!5453908)))

(assert (=> bs!1261928 (not (= lambda!288240 lambda!288154))))

(declare-fun bs!1261929 () Bool)

(assert (= bs!1261929 (and d!1736874 b!5453931)))

(assert (=> bs!1261929 (not (= lambda!288240 lambda!288149))))

(assert (=> bs!1261925 (not (= lambda!288240 lambda!288173))))

(declare-fun bs!1261930 () Bool)

(assert (= bs!1261930 (and d!1736874 b!5453914)))

(assert (=> bs!1261930 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (_1!35783 lt!2225382)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288240 lambda!288161))))

(declare-fun bs!1261931 () Bool)

(assert (= bs!1261931 (and d!1736874 b!5454396)))

(assert (=> bs!1261931 (not (= lambda!288240 lambda!288219))))

(declare-fun bs!1261932 () Bool)

(assert (= bs!1261932 (and d!1736874 b!5453924)))

(assert (=> bs!1261932 (not (= lambda!288240 lambda!288170))))

(assert (=> bs!1261930 (not (= lambda!288240 lambda!288163))))

(declare-fun bs!1261933 () Bool)

(assert (= bs!1261933 (and d!1736874 b!5453946)))

(assert (=> bs!1261933 (not (= lambda!288240 lambda!288160))))

(declare-fun bs!1261934 () Bool)

(assert (= bs!1261934 (and d!1736874 d!1736836)))

(assert (=> bs!1261934 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (reg!15610 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288240 lambda!288229))))

(assert (=> bs!1261932 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (_1!35783 lt!2225479)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288240 lambda!288169))))

(assert (=> bs!1261928 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225531)) (= lambda!288240 lambda!288153))))

(assert (=> bs!1261925 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) Nil!62018) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288240 lambda!288172))))

(assert (=> bs!1261932 (not (= lambda!288240 lambda!288168))))

(assert (=> bs!1261933 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225374) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288240 lambda!288159))))

(assert (=> bs!1261929 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 r!7292)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288240 lambda!288148))))

(declare-fun bs!1261935 () Bool)

(assert (= bs!1261935 (and d!1736874 b!5454397)))

(assert (=> bs!1261935 (not (= lambda!288240 lambda!288217))))

(assert (=> bs!1261930 (not (= lambda!288240 lambda!288162))))

(declare-fun bs!1261936 () Bool)

(assert (= bs!1261936 (and d!1736874 d!1736856)))

(assert (=> bs!1261936 (not (= lambda!288240 lambda!288234))))

(declare-fun bs!1261937 () Bool)

(assert (= bs!1261937 (and d!1736874 b!5454129)))

(assert (=> bs!1261937 (not (= lambda!288240 lambda!288200))))

(assert (=> bs!1261928 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225532)) (= lambda!288240 lambda!288151))))

(assert (=> bs!1261934 (not (= lambda!288240 lambda!288230))))

(assert (=> bs!1261932 (not (= lambda!288240 lambda!288171))))

(declare-fun bs!1261938 () Bool)

(assert (= bs!1261938 (and d!1736874 b!5453953)))

(assert (=> bs!1261938 (not (= lambda!288240 lambda!288156))))

(declare-fun bs!1261939 () Bool)

(assert (= bs!1261939 (and d!1736874 b!5454211)))

(assert (=> bs!1261939 (not (= lambda!288240 lambda!288202))))

(assert (=> bs!1261932 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) lt!2225473) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288240 lambda!288167))))

(assert (=> bs!1261928 (not (= lambda!288240 lambda!288152))))

(assert (=> bs!1261938 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225518)) (= lambda!288240 lambda!288155))))

(declare-fun bs!1261940 () Bool)

(assert (= bs!1261940 (and d!1736874 b!5454016)))

(assert (=> bs!1261940 (not (= lambda!288240 lambda!288182))))

(assert (=> bs!1261938 (not (= lambda!288240 lambda!288158))))

(assert (=> bs!1261938 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225526)) (= lambda!288240 lambda!288157))))

(declare-fun bs!1261941 () Bool)

(assert (= bs!1261941 (and d!1736874 b!5454210)))

(assert (=> bs!1261941 (not (= lambda!288240 lambda!288203))))

(assert (=> bs!1261936 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (reg!15610 (regOne!31074 r!7292)) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288240 lambda!288231))))

(assert (=> d!1736874 true))

(assert (=> d!1736874 true))

(declare-fun lambda!288241 () Int)

(assert (=> bs!1261925 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) Nil!62018) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288241 lambda!288174))))

(assert (=> bs!1261926 (not (= lambda!288241 lambda!288201))))

(assert (=> bs!1261927 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (reg!15610 r!7292)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) r!7292)) (= lambda!288241 lambda!288180))))

(assert (=> bs!1261928 (not (= lambda!288241 lambda!288154))))

(assert (=> bs!1261925 (not (= lambda!288241 lambda!288173))))

(assert (=> bs!1261930 (not (= lambda!288241 lambda!288161))))

(assert (=> bs!1261931 (not (= lambda!288241 lambda!288219))))

(assert (=> bs!1261932 (not (= lambda!288241 lambda!288170))))

(assert (=> bs!1261930 (not (= lambda!288241 lambda!288163))))

(assert (=> bs!1261933 (not (= lambda!288241 lambda!288160))))

(assert (=> bs!1261934 (not (= lambda!288241 lambda!288229))))

(assert (=> bs!1261932 (not (= lambda!288241 lambda!288169))))

(assert (=> bs!1261928 (not (= lambda!288241 lambda!288153))))

(assert (=> bs!1261925 (not (= lambda!288241 lambda!288172))))

(assert (=> bs!1261932 (not (= lambda!288241 lambda!288168))))

(assert (=> bs!1261933 (not (= lambda!288241 lambda!288159))))

(assert (=> bs!1261929 (not (= lambda!288241 lambda!288148))))

(assert (=> bs!1261929 (not (= lambda!288241 lambda!288149))))

(declare-fun bs!1261949 () Bool)

(assert (= bs!1261949 d!1736874))

(assert (=> bs!1261949 (not (= lambda!288241 lambda!288240))))

(assert (=> bs!1261935 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) s!2326) (= (reg!15610 (regOne!31074 r!7292)) (reg!15610 lt!2225379)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225379)) (= lambda!288241 lambda!288217))))

(assert (=> bs!1261930 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (_1!35783 lt!2225382)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288241 lambda!288162))))

(assert (=> bs!1261936 (not (= lambda!288241 lambda!288234))))

(assert (=> bs!1261937 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (reg!15610 (regOne!31074 r!7292)) (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= lambda!288241 lambda!288200))))

(assert (=> bs!1261928 (not (= lambda!288241 lambda!288151))))

(assert (=> bs!1261934 (not (= lambda!288241 lambda!288230))))

(assert (=> bs!1261932 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (_1!35783 lt!2225479)) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) lt!2225374)) (= lambda!288241 lambda!288171))))

(assert (=> bs!1261938 (not (= lambda!288241 lambda!288156))))

(assert (=> bs!1261939 (= (and (= (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (reg!15610 (regOne!31074 r!7292)) (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (Star!15281 (reg!15610 (regOne!31074 r!7292))) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= lambda!288241 lambda!288202))))

(assert (=> bs!1261932 (not (= lambda!288241 lambda!288167))))

(assert (=> bs!1261928 (not (= lambda!288241 lambda!288152))))

(assert (=> bs!1261938 (not (= lambda!288241 lambda!288155))))

(assert (=> bs!1261940 (not (= lambda!288241 lambda!288182))))

(assert (=> bs!1261938 (not (= lambda!288241 lambda!288158))))

(assert (=> bs!1261938 (not (= lambda!288241 lambda!288157))))

(assert (=> bs!1261941 (not (= lambda!288241 lambda!288203))))

(assert (=> bs!1261936 (not (= lambda!288241 lambda!288231))))

(assert (=> d!1736874 true))

(assert (=> d!1736874 true))

(assert (=> d!1736874 (= (Exists!2462 lambda!288240) (Exists!2462 lambda!288241))))

(declare-fun lt!2225691 () Unit!154792)

(declare-fun choose!41420 (Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736874 (= lt!2225691 (choose!41420 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))))

(assert (=> d!1736874 (validRegex!7017 (reg!15610 (regOne!31074 r!7292)))))

(assert (=> d!1736874 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!438 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) lt!2225691)))

(declare-fun m!6475392 () Bool)

(assert (=> bs!1261949 m!6475392))

(declare-fun m!6475394 () Bool)

(assert (=> bs!1261949 m!6475394))

(declare-fun m!6475396 () Bool)

(assert (=> bs!1261949 m!6475396))

(declare-fun m!6475398 () Bool)

(assert (=> bs!1261949 m!6475398))

(assert (=> bm!396340 d!1736874))

(declare-fun bs!1261968 () Bool)

(declare-fun d!1736890 () Bool)

(assert (= bs!1261968 (and d!1736890 b!5453914)))

(declare-fun lambda!288249 () Int)

(assert (=> bs!1261968 (= lambda!288249 lambda!288164)))

(declare-fun bs!1261969 () Bool)

(assert (= bs!1261969 (and d!1736890 b!5453924)))

(assert (=> bs!1261969 (= lambda!288249 lambda!288166)))

(declare-fun bs!1261970 () Bool)

(assert (= bs!1261970 (and d!1736890 b!5453915)))

(assert (=> bs!1261970 (= lambda!288249 lambda!288175)))

(declare-fun bs!1261971 () Bool)

(assert (= bs!1261971 (and d!1736890 d!1736776)))

(assert (=> bs!1261971 (= lambda!288249 lambda!288206)))

(assert (=> d!1736890 (matchZipper!1525 (store ((as const (Array Context!9330 Bool)) false) (Context!9331 (++!13642 (exprs!5165 lt!2225387) (exprs!5165 lt!2225467))) true) (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225415)) (ite c!952465 lt!2225429 (_2!35783 lt!2225415))))))

(declare-fun lt!2225705 () Unit!154792)

(assert (=> d!1736890 (= lt!2225705 (lemmaConcatPreservesForall!248 (exprs!5165 lt!2225387) (exprs!5165 lt!2225467) lambda!288249))))

(declare-fun lt!2225704 () Unit!154792)

(declare-fun choose!41421 (Context!9330 Context!9330 List!62142 List!62142) Unit!154792)

(assert (=> d!1736890 (= lt!2225704 (choose!41421 lt!2225387 lt!2225467 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225415)) (ite c!952465 lt!2225429 (_2!35783 lt!2225415))))))

(assert (=> d!1736890 (matchZipper!1525 (store ((as const (Array Context!9330 Bool)) false) lt!2225387 true) (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225415)))))

(assert (=> d!1736890 (= (lemmaConcatenateContextMatchesConcatOfStrings!96 lt!2225387 lt!2225467 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225415)) (ite c!952465 lt!2225429 (_2!35783 lt!2225415))) lt!2225704)))

(declare-fun bs!1261972 () Bool)

(assert (= bs!1261972 d!1736890))

(declare-fun m!6475442 () Bool)

(assert (=> bs!1261972 m!6475442))

(declare-fun m!6475444 () Bool)

(assert (=> bs!1261972 m!6475444))

(declare-fun m!6475446 () Bool)

(assert (=> bs!1261972 m!6475446))

(declare-fun m!6475448 () Bool)

(assert (=> bs!1261972 m!6475448))

(assert (=> bs!1261972 m!6474684))

(declare-fun m!6475450 () Bool)

(assert (=> bs!1261972 m!6475450))

(assert (=> bs!1261972 m!6474684))

(assert (=> bs!1261972 m!6475448))

(assert (=> bs!1261972 m!6475442))

(declare-fun m!6475452 () Bool)

(assert (=> bs!1261972 m!6475452))

(declare-fun m!6475454 () Bool)

(assert (=> bs!1261972 m!6475454))

(assert (=> bm!396323 d!1736890))

(declare-fun d!1736904 () Bool)

(assert (=> d!1736904 (= (matchR!7466 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)) (ite c!952469 s!2326 (ite c!952465 (_1!35783 lt!2225382) s!2326))) (matchRSpec!2384 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)) (ite c!952469 s!2326 (ite c!952465 (_1!35783 lt!2225382) s!2326))))))

(declare-fun lt!2225706 () Unit!154792)

(assert (=> d!1736904 (= lt!2225706 (choose!41400 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)) (ite c!952469 s!2326 (ite c!952465 (_1!35783 lt!2225382) s!2326))))))

(assert (=> d!1736904 (validRegex!7017 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)))))

(assert (=> d!1736904 (= (mainMatchTheorem!2384 (ite c!952469 lt!2225522 (ite c!952465 lt!2225374 lt!2225567)) (ite c!952469 s!2326 (ite c!952465 (_1!35783 lt!2225382) s!2326))) lt!2225706)))

(declare-fun bs!1261973 () Bool)

(assert (= bs!1261973 d!1736904))

(declare-fun m!6475456 () Bool)

(assert (=> bs!1261973 m!6475456))

(declare-fun m!6475458 () Bool)

(assert (=> bs!1261973 m!6475458))

(declare-fun m!6475460 () Bool)

(assert (=> bs!1261973 m!6475460))

(declare-fun m!6475462 () Bool)

(assert (=> bs!1261973 m!6475462))

(assert (=> bm!396234 d!1736904))

(declare-fun bs!1261983 () Bool)

(declare-fun d!1736906 () Bool)

(assert (= bs!1261983 (and d!1736906 b!5453915)))

(declare-fun lambda!288257 () Int)

(assert (=> bs!1261983 (= lambda!288257 lambda!288175)))

(declare-fun bs!1261985 () Bool)

(assert (= bs!1261985 (and d!1736906 d!1736890)))

(assert (=> bs!1261985 (= lambda!288257 lambda!288249)))

(declare-fun bs!1261986 () Bool)

(assert (= bs!1261986 (and d!1736906 b!5453914)))

(assert (=> bs!1261986 (= lambda!288257 lambda!288164)))

(declare-fun bs!1261987 () Bool)

(assert (= bs!1261987 (and d!1736906 b!5453924)))

(assert (=> bs!1261987 (= lambda!288257 lambda!288166)))

(declare-fun bs!1261988 () Bool)

(assert (= bs!1261988 (and d!1736906 d!1736776)))

(assert (=> bs!1261988 (= lambda!288257 lambda!288206)))

(declare-fun e!3378079 () Bool)

(assert (=> d!1736906 e!3378079))

(declare-fun res!2322875 () Bool)

(assert (=> d!1736906 (=> (not res!2322875) (not e!3378079))))

(declare-fun lt!2225712 () Regex!15281)

(assert (=> d!1736906 (= res!2322875 (validRegex!7017 lt!2225712))))

(declare-fun e!3378077 () Regex!15281)

(assert (=> d!1736906 (= lt!2225712 e!3378077)))

(declare-fun c!952670 () Bool)

(declare-fun e!3378082 () Bool)

(assert (=> d!1736906 (= c!952670 e!3378082)))

(declare-fun res!2322874 () Bool)

(assert (=> d!1736906 (=> (not res!2322874) (not e!3378082))))

(assert (=> d!1736906 (= res!2322874 ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343))))))

(assert (=> d!1736906 (forall!14584 (exprs!5165 (h!68468 zl!343)) lambda!288257)))

(assert (=> d!1736906 (= (generalisedConcat!950 (exprs!5165 (h!68468 zl!343))) lt!2225712)))

(declare-fun b!5454604 () Bool)

(declare-fun e!3378080 () Regex!15281)

(assert (=> b!5454604 (= e!3378080 EmptyExpr!15281)))

(declare-fun b!5454605 () Bool)

(declare-fun e!3378078 () Bool)

(declare-fun isEmptyExpr!1016 (Regex!15281) Bool)

(assert (=> b!5454605 (= e!3378078 (isEmptyExpr!1016 lt!2225712))))

(declare-fun b!5454606 () Bool)

(assert (=> b!5454606 (= e!3378080 (Concat!24126 (h!68467 (exprs!5165 (h!68468 zl!343))) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5454607 () Bool)

(assert (=> b!5454607 (= e!3378079 e!3378078)))

(declare-fun c!952672 () Bool)

(assert (=> b!5454607 (= c!952672 (isEmpty!34003 (exprs!5165 (h!68468 zl!343))))))

(declare-fun b!5454608 () Bool)

(declare-fun e!3378081 () Bool)

(assert (=> b!5454608 (= e!3378078 e!3378081)))

(declare-fun c!952671 () Bool)

(declare-fun tail!10783 (List!62143) List!62143)

(assert (=> b!5454608 (= c!952671 (isEmpty!34003 (tail!10783 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5454609 () Bool)

(assert (=> b!5454609 (= e!3378082 (isEmpty!34003 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5454610 () Bool)

(assert (=> b!5454610 (= e!3378077 e!3378080)))

(declare-fun c!952673 () Bool)

(assert (=> b!5454610 (= c!952673 ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343))))))

(declare-fun b!5454611 () Bool)

(declare-fun head!11686 (List!62143) Regex!15281)

(assert (=> b!5454611 (= e!3378081 (= lt!2225712 (head!11686 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5454612 () Bool)

(declare-fun isConcat!539 (Regex!15281) Bool)

(assert (=> b!5454612 (= e!3378081 (isConcat!539 lt!2225712))))

(declare-fun b!5454613 () Bool)

(assert (=> b!5454613 (= e!3378077 (h!68467 (exprs!5165 (h!68468 zl!343))))))

(assert (= (and d!1736906 res!2322874) b!5454609))

(assert (= (and d!1736906 c!952670) b!5454613))

(assert (= (and d!1736906 (not c!952670)) b!5454610))

(assert (= (and b!5454610 c!952673) b!5454606))

(assert (= (and b!5454610 (not c!952673)) b!5454604))

(assert (= (and d!1736906 res!2322875) b!5454607))

(assert (= (and b!5454607 c!952672) b!5454605))

(assert (= (and b!5454607 (not c!952672)) b!5454608))

(assert (= (and b!5454608 c!952671) b!5454611))

(assert (= (and b!5454608 (not c!952671)) b!5454612))

(assert (=> b!5454609 m!6474620))

(declare-fun m!6475464 () Bool)

(assert (=> b!5454612 m!6475464))

(declare-fun m!6475466 () Bool)

(assert (=> b!5454611 m!6475466))

(declare-fun m!6475468 () Bool)

(assert (=> b!5454607 m!6475468))

(assert (=> b!5454606 m!6474588))

(declare-fun m!6475470 () Bool)

(assert (=> d!1736906 m!6475470))

(declare-fun m!6475472 () Bool)

(assert (=> d!1736906 m!6475472))

(declare-fun m!6475474 () Bool)

(assert (=> b!5454608 m!6475474))

(assert (=> b!5454608 m!6475474))

(declare-fun m!6475476 () Bool)

(assert (=> b!5454608 m!6475476))

(declare-fun m!6475478 () Bool)

(assert (=> b!5454605 m!6475478))

(assert (=> b!5453916 d!1736906))

(declare-fun b!5454614 () Bool)

(declare-fun e!3378088 () Bool)

(declare-fun lt!2225713 () Bool)

(assert (=> b!5454614 (= e!3378088 (not lt!2225713))))

(declare-fun b!5454615 () Bool)

(declare-fun res!2322877 () Bool)

(declare-fun e!3378085 () Bool)

(assert (=> b!5454615 (=> res!2322877 e!3378085)))

(assert (=> b!5454615 (= res!2322877 (not (isEmpty!34002 (tail!10780 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))))))))

(declare-fun b!5454616 () Bool)

(declare-fun e!3378089 () Bool)

(declare-fun e!3378087 () Bool)

(assert (=> b!5454616 (= e!3378089 e!3378087)))

(declare-fun res!2322879 () Bool)

(assert (=> b!5454616 (=> (not res!2322879) (not e!3378087))))

(assert (=> b!5454616 (= res!2322879 (not lt!2225713))))

(declare-fun b!5454617 () Bool)

(declare-fun res!2322881 () Bool)

(declare-fun e!3378084 () Bool)

(assert (=> b!5454617 (=> (not res!2322881) (not e!3378084))))

(declare-fun call!396437 () Bool)

(assert (=> b!5454617 (= res!2322881 (not call!396437))))

(declare-fun b!5454618 () Bool)

(declare-fun res!2322880 () Bool)

(assert (=> b!5454618 (=> (not res!2322880) (not e!3378084))))

(assert (=> b!5454618 (= res!2322880 (isEmpty!34002 (tail!10780 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326)))))))

(declare-fun b!5454619 () Bool)

(declare-fun e!3378083 () Bool)

(assert (=> b!5454619 (= e!3378083 e!3378088)))

(declare-fun c!952674 () Bool)

(assert (=> b!5454619 (= c!952674 ((_ is EmptyLang!15281) (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292))))))))

(declare-fun e!3378086 () Bool)

(declare-fun b!5454620 () Bool)

(assert (=> b!5454620 (= e!3378086 (nullable!5450 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292))))))))

(declare-fun d!1736908 () Bool)

(assert (=> d!1736908 e!3378083))

(declare-fun c!952675 () Bool)

(assert (=> d!1736908 (= c!952675 ((_ is EmptyExpr!15281) (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292))))))))

(assert (=> d!1736908 (= lt!2225713 e!3378086)))

(declare-fun c!952676 () Bool)

(assert (=> d!1736908 (= c!952676 (isEmpty!34002 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))))))

(assert (=> d!1736908 (validRegex!7017 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))))))

(assert (=> d!1736908 (= (matchR!7466 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))) lt!2225713)))

(declare-fun b!5454621 () Bool)

(assert (=> b!5454621 (= e!3378083 (= lt!2225713 call!396437))))

(declare-fun b!5454622 () Bool)

(assert (=> b!5454622 (= e!3378086 (matchR!7466 (derivativeStep!4304 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))) (head!11683 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326)))) (tail!10780 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326)))))))

(declare-fun b!5454623 () Bool)

(declare-fun res!2322883 () Bool)

(assert (=> b!5454623 (=> res!2322883 e!3378089)))

(assert (=> b!5454623 (= res!2322883 e!3378084)))

(declare-fun res!2322882 () Bool)

(assert (=> b!5454623 (=> (not res!2322882) (not e!3378084))))

(assert (=> b!5454623 (= res!2322882 lt!2225713)))

(declare-fun bm!396432 () Bool)

(assert (=> bm!396432 (= call!396437 (isEmpty!34002 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))))))

(declare-fun b!5454624 () Bool)

(assert (=> b!5454624 (= e!3378087 e!3378085)))

(declare-fun res!2322878 () Bool)

(assert (=> b!5454624 (=> res!2322878 e!3378085)))

(assert (=> b!5454624 (= res!2322878 call!396437)))

(declare-fun b!5454625 () Bool)

(declare-fun res!2322876 () Bool)

(assert (=> b!5454625 (=> res!2322876 e!3378089)))

(assert (=> b!5454625 (= res!2322876 (not ((_ is ElementMatch!15281) (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))))))))

(assert (=> b!5454625 (= e!3378088 e!3378089)))

(declare-fun b!5454626 () Bool)

(assert (=> b!5454626 (= e!3378084 (= (head!11683 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))) (c!952474 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292)))))))))

(declare-fun b!5454627 () Bool)

(assert (=> b!5454627 (= e!3378085 (not (= (head!11683 (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225463 lt!2225561) s!2326))) (c!952474 (ite c!952471 lt!2225532 (ite c!952467 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (Concat!24126 (regTwo!31074 (regOne!31074 r!7292)) lt!2225526)) (ite c!952461 (ite c!952465 lt!2225374 lt!2225527) (regTwo!31074 r!7292))))))))))

(assert (= (and d!1736908 c!952676) b!5454620))

(assert (= (and d!1736908 (not c!952676)) b!5454622))

(assert (= (and d!1736908 c!952675) b!5454621))

(assert (= (and d!1736908 (not c!952675)) b!5454619))

(assert (= (and b!5454619 c!952674) b!5454614))

(assert (= (and b!5454619 (not c!952674)) b!5454625))

(assert (= (and b!5454625 (not res!2322876)) b!5454623))

(assert (= (and b!5454623 res!2322882) b!5454617))

(assert (= (and b!5454617 res!2322881) b!5454618))

(assert (= (and b!5454618 res!2322880) b!5454626))

(assert (= (and b!5454623 (not res!2322883)) b!5454616))

(assert (= (and b!5454616 res!2322879) b!5454624))

(assert (= (and b!5454624 (not res!2322878)) b!5454615))

(assert (= (and b!5454615 (not res!2322877)) b!5454627))

(assert (= (or b!5454621 b!5454617 b!5454624) bm!396432))

(declare-fun m!6475480 () Bool)

(assert (=> b!5454620 m!6475480))

(declare-fun m!6475482 () Bool)

(assert (=> b!5454627 m!6475482))

(declare-fun m!6475484 () Bool)

(assert (=> bm!396432 m!6475484))

(assert (=> b!5454626 m!6475482))

(declare-fun m!6475486 () Bool)

(assert (=> b!5454618 m!6475486))

(assert (=> b!5454618 m!6475486))

(declare-fun m!6475488 () Bool)

(assert (=> b!5454618 m!6475488))

(assert (=> b!5454622 m!6475482))

(assert (=> b!5454622 m!6475482))

(declare-fun m!6475490 () Bool)

(assert (=> b!5454622 m!6475490))

(assert (=> b!5454622 m!6475486))

(assert (=> b!5454622 m!6475490))

(assert (=> b!5454622 m!6475486))

(declare-fun m!6475492 () Bool)

(assert (=> b!5454622 m!6475492))

(assert (=> d!1736908 m!6475484))

(declare-fun m!6475494 () Bool)

(assert (=> d!1736908 m!6475494))

(assert (=> b!5454615 m!6475486))

(assert (=> b!5454615 m!6475486))

(assert (=> b!5454615 m!6475488))

(assert (=> bm!396196 d!1736908))

(declare-fun d!1736910 () Bool)

(declare-fun e!3378092 () Bool)

(assert (=> d!1736910 e!3378092))

(declare-fun res!2322886 () Bool)

(assert (=> d!1736910 (=> (not res!2322886) (not e!3378092))))

(declare-fun lt!2225716 () List!62144)

(declare-fun noDuplicate!1433 (List!62144) Bool)

(assert (=> d!1736910 (= res!2322886 (noDuplicate!1433 lt!2225716))))

(declare-fun choose!41422 ((InoxSet Context!9330)) List!62144)

(assert (=> d!1736910 (= lt!2225716 (choose!41422 z!1189))))

(assert (=> d!1736910 (= (toList!9065 z!1189) lt!2225716)))

(declare-fun b!5454630 () Bool)

(declare-fun content!11164 (List!62144) (InoxSet Context!9330))

(assert (=> b!5454630 (= e!3378092 (= (content!11164 lt!2225716) z!1189))))

(assert (= (and d!1736910 res!2322886) b!5454630))

(declare-fun m!6475504 () Bool)

(assert (=> d!1736910 m!6475504))

(declare-fun m!6475506 () Bool)

(assert (=> d!1736910 m!6475506))

(declare-fun m!6475508 () Bool)

(assert (=> b!5454630 m!6475508))

(assert (=> b!5453952 d!1736910))

(declare-fun b!5454632 () Bool)

(declare-fun e!3378093 () List!62142)

(assert (=> b!5454632 (= e!3378093 (Cons!62018 (h!68466 (ite c!952465 (_1!35783 lt!2225499) lt!2225495)) (++!13641 (t!375371 (ite c!952465 (_1!35783 lt!2225499) lt!2225495)) (ite c!952465 lt!2225429 (_2!35783 lt!2225479)))))))

(declare-fun b!5454631 () Bool)

(assert (=> b!5454631 (= e!3378093 (ite c!952465 lt!2225429 (_2!35783 lt!2225479)))))

(declare-fun d!1736916 () Bool)

(declare-fun e!3378094 () Bool)

(assert (=> d!1736916 e!3378094))

(declare-fun res!2322887 () Bool)

(assert (=> d!1736916 (=> (not res!2322887) (not e!3378094))))

(declare-fun lt!2225717 () List!62142)

(assert (=> d!1736916 (= res!2322887 (= (content!11160 lt!2225717) ((_ map or) (content!11160 (ite c!952465 (_1!35783 lt!2225499) lt!2225495)) (content!11160 (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))))

(assert (=> d!1736916 (= lt!2225717 e!3378093)))

(declare-fun c!952677 () Bool)

(assert (=> d!1736916 (= c!952677 ((_ is Nil!62018) (ite c!952465 (_1!35783 lt!2225499) lt!2225495)))))

(assert (=> d!1736916 (= (++!13641 (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))) lt!2225717)))

(declare-fun b!5454633 () Bool)

(declare-fun res!2322888 () Bool)

(assert (=> b!5454633 (=> (not res!2322888) (not e!3378094))))

(assert (=> b!5454633 (= res!2322888 (= (size!39897 lt!2225717) (+ (size!39897 (ite c!952465 (_1!35783 lt!2225499) lt!2225495)) (size!39897 (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))))

(declare-fun b!5454634 () Bool)

(assert (=> b!5454634 (= e!3378094 (or (not (= (ite c!952465 lt!2225429 (_2!35783 lt!2225479)) Nil!62018)) (= lt!2225717 (ite c!952465 (_1!35783 lt!2225499) lt!2225495))))))

(assert (= (and d!1736916 c!952677) b!5454631))

(assert (= (and d!1736916 (not c!952677)) b!5454632))

(assert (= (and d!1736916 res!2322887) b!5454633))

(assert (= (and b!5454633 res!2322888) b!5454634))

(declare-fun m!6475510 () Bool)

(assert (=> b!5454632 m!6475510))

(declare-fun m!6475512 () Bool)

(assert (=> d!1736916 m!6475512))

(declare-fun m!6475514 () Bool)

(assert (=> d!1736916 m!6475514))

(declare-fun m!6475516 () Bool)

(assert (=> d!1736916 m!6475516))

(declare-fun m!6475518 () Bool)

(assert (=> b!5454633 m!6475518))

(declare-fun m!6475520 () Bool)

(assert (=> b!5454633 m!6475520))

(declare-fun m!6475522 () Bool)

(assert (=> b!5454633 m!6475522))

(assert (=> bm!396344 d!1736916))

(declare-fun bs!1261990 () Bool)

(declare-fun d!1736918 () Bool)

(assert (= bs!1261990 (and d!1736918 b!5453915)))

(declare-fun lambda!288261 () Int)

(assert (=> bs!1261990 (= lambda!288261 lambda!288175)))

(declare-fun bs!1261991 () Bool)

(assert (= bs!1261991 (and d!1736918 d!1736890)))

(assert (=> bs!1261991 (= lambda!288261 lambda!288249)))

(declare-fun bs!1261992 () Bool)

(assert (= bs!1261992 (and d!1736918 b!5453914)))

(assert (=> bs!1261992 (= lambda!288261 lambda!288164)))

(declare-fun bs!1261993 () Bool)

(assert (= bs!1261993 (and d!1736918 b!5453924)))

(assert (=> bs!1261993 (= lambda!288261 lambda!288166)))

(declare-fun bs!1261994 () Bool)

(assert (= bs!1261994 (and d!1736918 d!1736906)))

(assert (=> bs!1261994 (= lambda!288261 lambda!288257)))

(declare-fun bs!1261995 () Bool)

(assert (= bs!1261995 (and d!1736918 d!1736776)))

(assert (=> bs!1261995 (= lambda!288261 lambda!288206)))

(declare-fun b!5454655 () Bool)

(declare-fun e!3378109 () Regex!15281)

(assert (=> b!5454655 (= e!3378109 (Union!15281 (h!68467 (unfocusZipperList!723 zl!343)) (generalisedUnion!1210 (t!375372 (unfocusZipperList!723 zl!343)))))))

(declare-fun b!5454656 () Bool)

(declare-fun e!3378111 () Bool)

(declare-fun e!3378107 () Bool)

(assert (=> b!5454656 (= e!3378111 e!3378107)))

(declare-fun c!952689 () Bool)

(assert (=> b!5454656 (= c!952689 (isEmpty!34003 (tail!10783 (unfocusZipperList!723 zl!343))))))

(declare-fun b!5454657 () Bool)

(assert (=> b!5454657 (= e!3378109 EmptyLang!15281)))

(declare-fun b!5454658 () Bool)

(declare-fun e!3378112 () Regex!15281)

(assert (=> b!5454658 (= e!3378112 (h!68467 (unfocusZipperList!723 zl!343)))))

(declare-fun b!5454659 () Bool)

(declare-fun lt!2225720 () Regex!15281)

(assert (=> b!5454659 (= e!3378107 (= lt!2225720 (head!11686 (unfocusZipperList!723 zl!343))))))

(declare-fun b!5454660 () Bool)

(declare-fun e!3378108 () Bool)

(assert (=> b!5454660 (= e!3378108 e!3378111)))

(declare-fun c!952686 () Bool)

(assert (=> b!5454660 (= c!952686 (isEmpty!34003 (unfocusZipperList!723 zl!343)))))

(declare-fun b!5454661 () Bool)

(declare-fun isEmptyLang!1025 (Regex!15281) Bool)

(assert (=> b!5454661 (= e!3378111 (isEmptyLang!1025 lt!2225720))))

(declare-fun b!5454662 () Bool)

(assert (=> b!5454662 (= e!3378112 e!3378109)))

(declare-fun c!952688 () Bool)

(assert (=> b!5454662 (= c!952688 ((_ is Cons!62019) (unfocusZipperList!723 zl!343)))))

(assert (=> d!1736918 e!3378108))

(declare-fun res!2322894 () Bool)

(assert (=> d!1736918 (=> (not res!2322894) (not e!3378108))))

(assert (=> d!1736918 (= res!2322894 (validRegex!7017 lt!2225720))))

(assert (=> d!1736918 (= lt!2225720 e!3378112)))

(declare-fun c!952687 () Bool)

(declare-fun e!3378110 () Bool)

(assert (=> d!1736918 (= c!952687 e!3378110)))

(declare-fun res!2322893 () Bool)

(assert (=> d!1736918 (=> (not res!2322893) (not e!3378110))))

(assert (=> d!1736918 (= res!2322893 ((_ is Cons!62019) (unfocusZipperList!723 zl!343)))))

(assert (=> d!1736918 (forall!14584 (unfocusZipperList!723 zl!343) lambda!288261)))

(assert (=> d!1736918 (= (generalisedUnion!1210 (unfocusZipperList!723 zl!343)) lt!2225720)))

(declare-fun b!5454663 () Bool)

(declare-fun isUnion!457 (Regex!15281) Bool)

(assert (=> b!5454663 (= e!3378107 (isUnion!457 lt!2225720))))

(declare-fun b!5454664 () Bool)

(assert (=> b!5454664 (= e!3378110 (isEmpty!34003 (t!375372 (unfocusZipperList!723 zl!343))))))

(assert (= (and d!1736918 res!2322893) b!5454664))

(assert (= (and d!1736918 c!952687) b!5454658))

(assert (= (and d!1736918 (not c!952687)) b!5454662))

(assert (= (and b!5454662 c!952688) b!5454655))

(assert (= (and b!5454662 (not c!952688)) b!5454657))

(assert (= (and d!1736918 res!2322894) b!5454660))

(assert (= (and b!5454660 c!952686) b!5454661))

(assert (= (and b!5454660 (not c!952686)) b!5454656))

(assert (= (and b!5454656 c!952689) b!5454659))

(assert (= (and b!5454656 (not c!952689)) b!5454663))

(declare-fun m!6475524 () Bool)

(assert (=> d!1736918 m!6475524))

(assert (=> d!1736918 m!6474486))

(declare-fun m!6475526 () Bool)

(assert (=> d!1736918 m!6475526))

(assert (=> b!5454659 m!6474486))

(declare-fun m!6475528 () Bool)

(assert (=> b!5454659 m!6475528))

(declare-fun m!6475530 () Bool)

(assert (=> b!5454655 m!6475530))

(declare-fun m!6475532 () Bool)

(assert (=> b!5454664 m!6475532))

(assert (=> b!5454656 m!6474486))

(declare-fun m!6475534 () Bool)

(assert (=> b!5454656 m!6475534))

(assert (=> b!5454656 m!6475534))

(declare-fun m!6475536 () Bool)

(assert (=> b!5454656 m!6475536))

(assert (=> b!5454660 m!6474486))

(declare-fun m!6475538 () Bool)

(assert (=> b!5454660 m!6475538))

(declare-fun m!6475540 () Bool)

(assert (=> b!5454663 m!6475540))

(declare-fun m!6475542 () Bool)

(assert (=> b!5454661 m!6475542))

(assert (=> b!5453918 d!1736918))

(declare-fun bs!1261996 () Bool)

(declare-fun d!1736920 () Bool)

(assert (= bs!1261996 (and d!1736920 b!5453915)))

(declare-fun lambda!288264 () Int)

(assert (=> bs!1261996 (= lambda!288264 lambda!288175)))

(declare-fun bs!1261997 () Bool)

(assert (= bs!1261997 (and d!1736920 d!1736890)))

(assert (=> bs!1261997 (= lambda!288264 lambda!288249)))

(declare-fun bs!1261998 () Bool)

(assert (= bs!1261998 (and d!1736920 b!5453914)))

(assert (=> bs!1261998 (= lambda!288264 lambda!288164)))

(declare-fun bs!1261999 () Bool)

(assert (= bs!1261999 (and d!1736920 b!5453924)))

(assert (=> bs!1261999 (= lambda!288264 lambda!288166)))

(declare-fun bs!1262000 () Bool)

(assert (= bs!1262000 (and d!1736920 d!1736906)))

(assert (=> bs!1262000 (= lambda!288264 lambda!288257)))

(declare-fun bs!1262001 () Bool)

(assert (= bs!1262001 (and d!1736920 d!1736918)))

(assert (=> bs!1262001 (= lambda!288264 lambda!288261)))

(declare-fun bs!1262002 () Bool)

(assert (= bs!1262002 (and d!1736920 d!1736776)))

(assert (=> bs!1262002 (= lambda!288264 lambda!288206)))

(declare-fun lt!2225729 () List!62143)

(assert (=> d!1736920 (forall!14584 lt!2225729 lambda!288264)))

(declare-fun e!3378125 () List!62143)

(assert (=> d!1736920 (= lt!2225729 e!3378125)))

(declare-fun c!952696 () Bool)

(assert (=> d!1736920 (= c!952696 ((_ is Cons!62020) zl!343))))

(assert (=> d!1736920 (= (unfocusZipperList!723 zl!343) lt!2225729)))

(declare-fun b!5454687 () Bool)

(assert (=> b!5454687 (= e!3378125 (Cons!62019 (generalisedConcat!950 (exprs!5165 (h!68468 zl!343))) (unfocusZipperList!723 (t!375373 zl!343))))))

(declare-fun b!5454688 () Bool)

(assert (=> b!5454688 (= e!3378125 Nil!62019)))

(assert (= (and d!1736920 c!952696) b!5454687))

(assert (= (and d!1736920 (not c!952696)) b!5454688))

(declare-fun m!6475544 () Bool)

(assert (=> d!1736920 m!6475544))

(assert (=> b!5454687 m!6474570))

(declare-fun m!6475546 () Bool)

(assert (=> b!5454687 m!6475546))

(assert (=> b!5453918 d!1736920))

(declare-fun bs!1262004 () Bool)

(declare-fun d!1736922 () Bool)

(assert (= bs!1262004 (and d!1736922 b!5453934)))

(declare-fun lambda!288267 () Int)

(assert (=> bs!1262004 (not (= lambda!288267 lambda!288174))))

(declare-fun bs!1262005 () Bool)

(assert (= bs!1262005 (and d!1736922 b!5454128)))

(assert (=> bs!1262005 (not (= lambda!288267 lambda!288201))))

(declare-fun bs!1262006 () Bool)

(assert (= bs!1262006 (and d!1736922 b!5454017)))

(assert (=> bs!1262006 (not (= lambda!288267 lambda!288180))))

(declare-fun bs!1262007 () Bool)

(assert (= bs!1262007 (and d!1736922 b!5453908)))

(assert (=> bs!1262007 (not (= lambda!288267 lambda!288154))))

(declare-fun bs!1262008 () Bool)

(assert (= bs!1262008 (and d!1736922 d!1736874)))

(assert (=> bs!1262008 (not (= lambda!288267 lambda!288241))))

(assert (=> bs!1262004 (not (= lambda!288267 lambda!288173))))

(declare-fun bs!1262009 () Bool)

(assert (= bs!1262009 (and d!1736922 b!5453914)))

(assert (=> bs!1262009 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (_1!35783 lt!2225382)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225374)) (= lambda!288267 lambda!288161))))

(declare-fun bs!1262010 () Bool)

(assert (= bs!1262010 (and d!1736922 b!5454396)))

(assert (=> bs!1262010 (not (= lambda!288267 lambda!288219))))

(declare-fun bs!1262011 () Bool)

(assert (= bs!1262011 (and d!1736922 b!5453924)))

(assert (=> bs!1262011 (not (= lambda!288267 lambda!288170))))

(assert (=> bs!1262009 (not (= lambda!288267 lambda!288163))))

(declare-fun bs!1262012 () Bool)

(assert (= bs!1262012 (and d!1736922 b!5453946)))

(assert (=> bs!1262012 (not (= lambda!288267 lambda!288160))))

(declare-fun bs!1262013 () Bool)

(assert (= bs!1262013 (and d!1736922 d!1736836)))

(assert (=> bs!1262013 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288267 lambda!288229))))

(assert (=> bs!1262011 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (_1!35783 lt!2225479)) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225374)) (= lambda!288267 lambda!288169))))

(assert (=> bs!1262007 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225531)) (= lambda!288267 lambda!288153))))

(assert (=> bs!1262004 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) Nil!62018) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225374)) (= lambda!288267 lambda!288172))))

(assert (=> bs!1262011 (not (= lambda!288267 lambda!288168))))

(assert (=> bs!1262012 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225374) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288267 lambda!288159))))

(declare-fun bs!1262014 () Bool)

(assert (= bs!1262014 (and d!1736922 b!5453931)))

(assert (=> bs!1262014 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288267 lambda!288148))))

(assert (=> bs!1262014 (not (= lambda!288267 lambda!288149))))

(assert (=> bs!1262008 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (Star!15281 (reg!15610 (regOne!31074 r!7292))))) (= lambda!288267 lambda!288240))))

(declare-fun bs!1262015 () Bool)

(assert (= bs!1262015 (and d!1736922 b!5454397)))

(assert (=> bs!1262015 (not (= lambda!288267 lambda!288217))))

(assert (=> bs!1262009 (not (= lambda!288267 lambda!288162))))

(declare-fun bs!1262016 () Bool)

(assert (= bs!1262016 (and d!1736922 d!1736856)))

(assert (=> bs!1262016 (not (= lambda!288267 lambda!288234))))

(declare-fun bs!1262017 () Bool)

(assert (= bs!1262017 (and d!1736922 b!5454129)))

(assert (=> bs!1262017 (not (= lambda!288267 lambda!288200))))

(assert (=> bs!1262007 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225532)) (= lambda!288267 lambda!288151))))

(assert (=> bs!1262013 (not (= lambda!288267 lambda!288230))))

(assert (=> bs!1262011 (not (= lambda!288267 lambda!288171))))

(declare-fun bs!1262018 () Bool)

(assert (= bs!1262018 (and d!1736922 b!5453953)))

(assert (=> bs!1262018 (not (= lambda!288267 lambda!288156))))

(declare-fun bs!1262019 () Bool)

(assert (= bs!1262019 (and d!1736922 b!5454211)))

(assert (=> bs!1262019 (not (= lambda!288267 lambda!288202))))

(assert (=> bs!1262011 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) lt!2225473) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (regTwo!31074 r!7292))) (= lambda!288267 lambda!288167))))

(assert (=> bs!1262007 (not (= lambda!288267 lambda!288152))))

(assert (=> bs!1262018 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225518)) (= lambda!288267 lambda!288155))))

(declare-fun bs!1262020 () Bool)

(assert (= bs!1262020 (and d!1736922 b!5454016)))

(assert (=> bs!1262020 (not (= lambda!288267 lambda!288182))))

(assert (=> bs!1262018 (not (= lambda!288267 lambda!288158))))

(assert (=> bs!1262018 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) s!2326) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) lt!2225526)) (= lambda!288267 lambda!288157))))

(declare-fun bs!1262021 () Bool)

(assert (= bs!1262021 (and d!1736922 b!5454210)))

(assert (=> bs!1262021 (not (= lambda!288267 lambda!288203))))

(assert (=> bs!1262016 (= (and (= (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288267 lambda!288231))))

(assert (=> d!1736922 true))

(assert (=> d!1736922 true))

(assert (=> d!1736922 true))

(assert (=> d!1736922 (= (isDefined!12095 (findConcatSeparation!1806 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) Nil!62018 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))))) (Exists!2462 lambda!288267))))

(declare-fun lt!2225738 () Unit!154792)

(declare-fun choose!41423 (Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736922 (= lt!2225738 (choose!41423 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))))))

(assert (=> d!1736922 (validRegex!7017 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))

(assert (=> d!1736922 (= (lemmaFindConcatSeparationEquivalentToExists!1570 (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)) (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) lt!2225738)))

(declare-fun bs!1262022 () Bool)

(assert (= bs!1262022 d!1736922))

(assert (=> bs!1262022 m!6474564))

(assert (=> bs!1262022 m!6474564))

(declare-fun m!6475592 () Bool)

(assert (=> bs!1262022 m!6475592))

(declare-fun m!6475594 () Bool)

(assert (=> bs!1262022 m!6475594))

(assert (=> bs!1262022 m!6475310))

(declare-fun m!6475596 () Bool)

(assert (=> bs!1262022 m!6475596))

(assert (=> bm!396170 d!1736922))

(declare-fun d!1736930 () Bool)

(declare-fun c!952714 () Bool)

(assert (=> d!1736930 (= c!952714 (isEmpty!34002 (ite c!952469 (t!375371 s!2326) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) s!2326) (t!375371 s!2326))))))))

(declare-fun e!3378154 () Bool)

(assert (=> d!1736930 (= (matchZipper!1525 (ite c!952469 lt!2225487 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite c!952465 (ite c!952466 z!1189 lt!2225545) z!1189) lt!2225534)))) (ite c!952469 (t!375371 s!2326) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) s!2326) (t!375371 s!2326))))) e!3378154)))

(declare-fun b!5454738 () Bool)

(assert (=> b!5454738 (= e!3378154 (nullableZipper!1483 (ite c!952469 lt!2225487 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite c!952465 (ite c!952466 z!1189 lt!2225545) z!1189) lt!2225534))))))))

(declare-fun b!5454739 () Bool)

(assert (=> b!5454739 (= e!3378154 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 lt!2225487 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite c!952465 (ite c!952466 z!1189 lt!2225545) z!1189) lt!2225534)))) (head!11683 (ite c!952469 (t!375371 s!2326) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) s!2326) (t!375371 s!2326)))))) (tail!10780 (ite c!952469 (t!375371 s!2326) (ite (or c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) s!2326) (t!375371 s!2326)))))))))

(assert (= (and d!1736930 c!952714) b!5454738))

(assert (= (and d!1736930 (not c!952714)) b!5454739))

(declare-fun m!6475598 () Bool)

(assert (=> d!1736930 m!6475598))

(declare-fun m!6475600 () Bool)

(assert (=> b!5454738 m!6475600))

(declare-fun m!6475602 () Bool)

(assert (=> b!5454739 m!6475602))

(assert (=> b!5454739 m!6475602))

(declare-fun m!6475604 () Bool)

(assert (=> b!5454739 m!6475604))

(declare-fun m!6475606 () Bool)

(assert (=> b!5454739 m!6475606))

(assert (=> b!5454739 m!6475604))

(assert (=> b!5454739 m!6475606))

(declare-fun m!6475608 () Bool)

(assert (=> b!5454739 m!6475608))

(assert (=> bm!396199 d!1736930))

(declare-fun bs!1262023 () Bool)

(declare-fun d!1736932 () Bool)

(assert (= bs!1262023 (and d!1736932 b!5453934)))

(declare-fun lambda!288268 () Int)

(assert (=> bs!1262023 (not (= lambda!288268 lambda!288174))))

(declare-fun bs!1262024 () Bool)

(assert (= bs!1262024 (and d!1736932 b!5454128)))

(assert (=> bs!1262024 (not (= lambda!288268 lambda!288201))))

(declare-fun bs!1262025 () Bool)

(assert (= bs!1262025 (and d!1736932 b!5454017)))

(assert (=> bs!1262025 (not (= lambda!288268 lambda!288180))))

(declare-fun bs!1262026 () Bool)

(assert (= bs!1262026 (and d!1736932 b!5453908)))

(assert (=> bs!1262026 (not (= lambda!288268 lambda!288154))))

(declare-fun bs!1262027 () Bool)

(assert (= bs!1262027 (and d!1736932 d!1736874)))

(assert (=> bs!1262027 (not (= lambda!288268 lambda!288241))))

(assert (=> bs!1262023 (not (= lambda!288268 lambda!288173))))

(declare-fun bs!1262028 () Bool)

(assert (= bs!1262028 (and d!1736932 b!5453914)))

(assert (=> bs!1262028 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288268 lambda!288161))))

(declare-fun bs!1262029 () Bool)

(assert (= bs!1262029 (and d!1736932 b!5454396)))

(assert (=> bs!1262029 (not (= lambda!288268 lambda!288219))))

(declare-fun bs!1262030 () Bool)

(assert (= bs!1262030 (and d!1736932 b!5453924)))

(assert (=> bs!1262030 (not (= lambda!288268 lambda!288170))))

(assert (=> bs!1262028 (not (= lambda!288268 lambda!288163))))

(declare-fun bs!1262031 () Bool)

(assert (= bs!1262031 (and d!1736932 b!5453946)))

(assert (=> bs!1262031 (not (= lambda!288268 lambda!288160))))

(declare-fun bs!1262032 () Bool)

(assert (= bs!1262032 (and d!1736932 d!1736836)))

(assert (=> bs!1262032 (= (and (= s!2326 (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288268 lambda!288229))))

(assert (=> bs!1262030 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288268 lambda!288169))))

(assert (=> bs!1262026 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225531)) (= lambda!288268 lambda!288153))))

(assert (=> bs!1262023 (= (and (= s!2326 Nil!62018) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288268 lambda!288172))))

(assert (=> bs!1262030 (not (= lambda!288268 lambda!288168))))

(assert (=> bs!1262031 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) lt!2225374) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288268 lambda!288159))))

(declare-fun bs!1262033 () Bool)

(assert (= bs!1262033 (and d!1736932 b!5453931)))

(assert (=> bs!1262033 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (regOne!31074 r!7292)) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288268 lambda!288148))))

(assert (=> bs!1262033 (not (= lambda!288268 lambda!288149))))

(assert (=> bs!1262027 (= (and (= s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (Star!15281 (reg!15610 (regOne!31074 r!7292))))) (= lambda!288268 lambda!288240))))

(declare-fun bs!1262034 () Bool)

(assert (= bs!1262034 (and d!1736932 b!5454397)))

(assert (=> bs!1262034 (not (= lambda!288268 lambda!288217))))

(assert (=> bs!1262028 (not (= lambda!288268 lambda!288162))))

(declare-fun bs!1262035 () Bool)

(assert (= bs!1262035 (and d!1736932 d!1736856)))

(assert (=> bs!1262035 (not (= lambda!288268 lambda!288234))))

(declare-fun bs!1262036 () Bool)

(assert (= bs!1262036 (and d!1736932 b!5454129)))

(assert (=> bs!1262036 (not (= lambda!288268 lambda!288200))))

(assert (=> bs!1262026 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225532)) (= lambda!288268 lambda!288151))))

(assert (=> bs!1262032 (not (= lambda!288268 lambda!288230))))

(declare-fun bs!1262037 () Bool)

(assert (= bs!1262037 (and d!1736932 d!1736922)))

(assert (=> bs!1262037 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)))) (= lambda!288268 lambda!288267))))

(assert (=> bs!1262030 (not (= lambda!288268 lambda!288171))))

(declare-fun bs!1262038 () Bool)

(assert (= bs!1262038 (and d!1736932 b!5453953)))

(assert (=> bs!1262038 (not (= lambda!288268 lambda!288156))))

(declare-fun bs!1262039 () Bool)

(assert (= bs!1262039 (and d!1736932 b!5454211)))

(assert (=> bs!1262039 (not (= lambda!288268 lambda!288202))))

(assert (=> bs!1262030 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) lt!2225473) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (regTwo!31074 r!7292))) (= lambda!288268 lambda!288167))))

(assert (=> bs!1262026 (not (= lambda!288268 lambda!288152))))

(assert (=> bs!1262038 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (regOne!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225518)) (= lambda!288268 lambda!288155))))

(declare-fun bs!1262040 () Bool)

(assert (= bs!1262040 (and d!1736932 b!5454016)))

(assert (=> bs!1262040 (not (= lambda!288268 lambda!288182))))

(assert (=> bs!1262038 (not (= lambda!288268 lambda!288158))))

(assert (=> bs!1262038 (= (and (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (regTwo!31074 (regOne!31074 r!7292))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) lt!2225526)) (= lambda!288268 lambda!288157))))

(declare-fun bs!1262041 () Bool)

(assert (= bs!1262041 (and d!1736932 b!5454210)))

(assert (=> bs!1262041 (not (= lambda!288268 lambda!288203))))

(assert (=> bs!1262035 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288268 lambda!288231))))

(assert (=> d!1736932 true))

(assert (=> d!1736932 true))

(assert (=> d!1736932 true))

(assert (=> d!1736932 (= (isDefined!12095 (findConcatSeparation!1806 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) Nil!62018 s!2326 s!2326)) (Exists!2462 lambda!288268))))

(declare-fun lt!2225741 () Unit!154792)

(assert (=> d!1736932 (= lt!2225741 (choose!41423 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326))))

(assert (=> d!1736932 (validRegex!7017 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))))))

(assert (=> d!1736932 (= (lemmaFindConcatSeparationEquivalentToExists!1570 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326) lt!2225741)))

(declare-fun bs!1262042 () Bool)

(assert (= bs!1262042 d!1736932))

(assert (=> bs!1262042 m!6474572))

(assert (=> bs!1262042 m!6474572))

(declare-fun m!6475628 () Bool)

(assert (=> bs!1262042 m!6475628))

(declare-fun m!6475632 () Bool)

(assert (=> bs!1262042 m!6475632))

(declare-fun m!6475634 () Bool)

(assert (=> bs!1262042 m!6475634))

(declare-fun m!6475636 () Bool)

(assert (=> bs!1262042 m!6475636))

(assert (=> bm!396299 d!1736932))

(declare-fun e!3378181 () Bool)

(declare-fun d!1736938 () Bool)

(assert (=> d!1736938 (= (matchZipper!1525 ((_ map or) lt!2225534 lt!2225384) (t!375371 s!2326)) e!3378181)))

(declare-fun res!2322928 () Bool)

(assert (=> d!1736938 (=> res!2322928 e!3378181)))

(assert (=> d!1736938 (= res!2322928 (matchZipper!1525 lt!2225534 (t!375371 s!2326)))))

(declare-fun lt!2225745 () Unit!154792)

(assert (=> d!1736938 (= lt!2225745 (choose!41409 lt!2225534 lt!2225384 (t!375371 s!2326)))))

(assert (=> d!1736938 (= (lemmaZipperConcatMatchesSameAsBothZippers!518 lt!2225534 lt!2225384 (t!375371 s!2326)) lt!2225745)))

(declare-fun b!5454784 () Bool)

(assert (=> b!5454784 (= e!3378181 (matchZipper!1525 lt!2225384 (t!375371 s!2326)))))

(assert (= (and d!1736938 (not res!2322928)) b!5454784))

(assert (=> d!1736938 m!6474720))

(assert (=> d!1736938 m!6474718))

(declare-fun m!6475638 () Bool)

(assert (=> d!1736938 m!6475638))

(assert (=> b!5454784 m!6474612))

(assert (=> b!5453906 d!1736938))

(declare-fun d!1736940 () Bool)

(declare-fun c!952733 () Bool)

(assert (=> d!1736940 (= c!952733 (isEmpty!34002 (t!375371 s!2326)))))

(declare-fun e!3378182 () Bool)

(assert (=> d!1736940 (= (matchZipper!1525 lt!2225534 (t!375371 s!2326)) e!3378182)))

(declare-fun b!5454785 () Bool)

(assert (=> b!5454785 (= e!3378182 (nullableZipper!1483 lt!2225534))))

(declare-fun b!5454786 () Bool)

(assert (=> b!5454786 (= e!3378182 (matchZipper!1525 (derivationStepZipper!1500 lt!2225534 (head!11683 (t!375371 s!2326))) (tail!10780 (t!375371 s!2326))))))

(assert (= (and d!1736940 c!952733) b!5454785))

(assert (= (and d!1736940 (not c!952733)) b!5454786))

(declare-fun m!6475640 () Bool)

(assert (=> d!1736940 m!6475640))

(declare-fun m!6475642 () Bool)

(assert (=> b!5454785 m!6475642))

(declare-fun m!6475644 () Bool)

(assert (=> b!5454786 m!6475644))

(assert (=> b!5454786 m!6475644))

(declare-fun m!6475646 () Bool)

(assert (=> b!5454786 m!6475646))

(declare-fun m!6475648 () Bool)

(assert (=> b!5454786 m!6475648))

(assert (=> b!5454786 m!6475646))

(assert (=> b!5454786 m!6475648))

(declare-fun m!6475650 () Bool)

(assert (=> b!5454786 m!6475650))

(assert (=> b!5453906 d!1736940))

(declare-fun d!1736942 () Bool)

(declare-fun c!952734 () Bool)

(assert (=> d!1736942 (= c!952734 (isEmpty!34002 (t!375371 s!2326)))))

(declare-fun e!3378183 () Bool)

(assert (=> d!1736942 (= (matchZipper!1525 ((_ map or) lt!2225534 lt!2225384) (t!375371 s!2326)) e!3378183)))

(declare-fun b!5454787 () Bool)

(assert (=> b!5454787 (= e!3378183 (nullableZipper!1483 ((_ map or) lt!2225534 lt!2225384)))))

(declare-fun b!5454788 () Bool)

(assert (=> b!5454788 (= e!3378183 (matchZipper!1525 (derivationStepZipper!1500 ((_ map or) lt!2225534 lt!2225384) (head!11683 (t!375371 s!2326))) (tail!10780 (t!375371 s!2326))))))

(assert (= (and d!1736942 c!952734) b!5454787))

(assert (= (and d!1736942 (not c!952734)) b!5454788))

(assert (=> d!1736942 m!6475640))

(declare-fun m!6475652 () Bool)

(assert (=> b!5454787 m!6475652))

(assert (=> b!5454788 m!6475644))

(assert (=> b!5454788 m!6475644))

(declare-fun m!6475654 () Bool)

(assert (=> b!5454788 m!6475654))

(assert (=> b!5454788 m!6475648))

(assert (=> b!5454788 m!6475654))

(assert (=> b!5454788 m!6475648))

(declare-fun m!6475656 () Bool)

(assert (=> b!5454788 m!6475656))

(assert (=> b!5453906 d!1736942))

(declare-fun bs!1262052 () Bool)

(declare-fun d!1736944 () Bool)

(assert (= bs!1262052 (and d!1736944 b!5453915)))

(declare-fun lambda!288270 () Int)

(assert (=> bs!1262052 (= lambda!288270 lambda!288175)))

(declare-fun bs!1262053 () Bool)

(assert (= bs!1262053 (and d!1736944 d!1736890)))

(assert (=> bs!1262053 (= lambda!288270 lambda!288249)))

(declare-fun bs!1262054 () Bool)

(assert (= bs!1262054 (and d!1736944 b!5453914)))

(assert (=> bs!1262054 (= lambda!288270 lambda!288164)))

(declare-fun bs!1262055 () Bool)

(assert (= bs!1262055 (and d!1736944 b!5453924)))

(assert (=> bs!1262055 (= lambda!288270 lambda!288166)))

(declare-fun bs!1262056 () Bool)

(assert (= bs!1262056 (and d!1736944 d!1736906)))

(assert (=> bs!1262056 (= lambda!288270 lambda!288257)))

(declare-fun bs!1262057 () Bool)

(assert (= bs!1262057 (and d!1736944 d!1736918)))

(assert (=> bs!1262057 (= lambda!288270 lambda!288261)))

(declare-fun bs!1262058 () Bool)

(assert (= bs!1262058 (and d!1736944 d!1736776)))

(assert (=> bs!1262058 (= lambda!288270 lambda!288206)))

(declare-fun bs!1262059 () Bool)

(assert (= bs!1262059 (and d!1736944 d!1736920)))

(assert (=> bs!1262059 (= lambda!288270 lambda!288264)))

(declare-fun e!3378186 () Bool)

(assert (=> d!1736944 e!3378186))

(declare-fun res!2322930 () Bool)

(assert (=> d!1736944 (=> (not res!2322930) (not e!3378186))))

(declare-fun lt!2225746 () Regex!15281)

(assert (=> d!1736944 (= res!2322930 (validRegex!7017 lt!2225746))))

(declare-fun e!3378184 () Regex!15281)

(assert (=> d!1736944 (= lt!2225746 e!3378184)))

(declare-fun c!952735 () Bool)

(declare-fun e!3378189 () Bool)

(assert (=> d!1736944 (= c!952735 e!3378189)))

(declare-fun res!2322929 () Bool)

(assert (=> d!1736944 (=> (not res!2322929) (not e!3378189))))

(assert (=> d!1736944 (= res!2322929 ((_ is Cons!62019) (ite c!952471 lt!2225490 lt!2225523)))))

(assert (=> d!1736944 (forall!14584 (ite c!952471 lt!2225490 lt!2225523) lambda!288270)))

(assert (=> d!1736944 (= (generalisedConcat!950 (ite c!952471 lt!2225490 lt!2225523)) lt!2225746)))

(declare-fun b!5454789 () Bool)

(declare-fun e!3378187 () Regex!15281)

(assert (=> b!5454789 (= e!3378187 EmptyExpr!15281)))

(declare-fun b!5454790 () Bool)

(declare-fun e!3378185 () Bool)

(assert (=> b!5454790 (= e!3378185 (isEmptyExpr!1016 lt!2225746))))

(declare-fun b!5454791 () Bool)

(assert (=> b!5454791 (= e!3378187 (Concat!24126 (h!68467 (ite c!952471 lt!2225490 lt!2225523)) (generalisedConcat!950 (t!375372 (ite c!952471 lt!2225490 lt!2225523)))))))

(declare-fun b!5454792 () Bool)

(assert (=> b!5454792 (= e!3378186 e!3378185)))

(declare-fun c!952737 () Bool)

(assert (=> b!5454792 (= c!952737 (isEmpty!34003 (ite c!952471 lt!2225490 lt!2225523)))))

(declare-fun b!5454793 () Bool)

(declare-fun e!3378188 () Bool)

(assert (=> b!5454793 (= e!3378185 e!3378188)))

(declare-fun c!952736 () Bool)

(assert (=> b!5454793 (= c!952736 (isEmpty!34003 (tail!10783 (ite c!952471 lt!2225490 lt!2225523))))))

(declare-fun b!5454794 () Bool)

(assert (=> b!5454794 (= e!3378189 (isEmpty!34003 (t!375372 (ite c!952471 lt!2225490 lt!2225523))))))

(declare-fun b!5454795 () Bool)

(assert (=> b!5454795 (= e!3378184 e!3378187)))

(declare-fun c!952738 () Bool)

(assert (=> b!5454795 (= c!952738 ((_ is Cons!62019) (ite c!952471 lt!2225490 lt!2225523)))))

(declare-fun b!5454796 () Bool)

(assert (=> b!5454796 (= e!3378188 (= lt!2225746 (head!11686 (ite c!952471 lt!2225490 lt!2225523))))))

(declare-fun b!5454797 () Bool)

(assert (=> b!5454797 (= e!3378188 (isConcat!539 lt!2225746))))

(declare-fun b!5454798 () Bool)

(assert (=> b!5454798 (= e!3378184 (h!68467 (ite c!952471 lt!2225490 lt!2225523)))))

(assert (= (and d!1736944 res!2322929) b!5454794))

(assert (= (and d!1736944 c!952735) b!5454798))

(assert (= (and d!1736944 (not c!952735)) b!5454795))

(assert (= (and b!5454795 c!952738) b!5454791))

(assert (= (and b!5454795 (not c!952738)) b!5454789))

(assert (= (and d!1736944 res!2322930) b!5454792))

(assert (= (and b!5454792 c!952737) b!5454790))

(assert (= (and b!5454792 (not c!952737)) b!5454793))

(assert (= (and b!5454793 c!952736) b!5454796))

(assert (= (and b!5454793 (not c!952736)) b!5454797))

(declare-fun m!6475676 () Bool)

(assert (=> b!5454794 m!6475676))

(declare-fun m!6475678 () Bool)

(assert (=> b!5454797 m!6475678))

(declare-fun m!6475680 () Bool)

(assert (=> b!5454796 m!6475680))

(declare-fun m!6475682 () Bool)

(assert (=> b!5454792 m!6475682))

(declare-fun m!6475684 () Bool)

(assert (=> b!5454791 m!6475684))

(declare-fun m!6475686 () Bool)

(assert (=> d!1736944 m!6475686))

(declare-fun m!6475688 () Bool)

(assert (=> d!1736944 m!6475688))

(declare-fun m!6475690 () Bool)

(assert (=> b!5454793 m!6475690))

(assert (=> b!5454793 m!6475690))

(declare-fun m!6475692 () Bool)

(assert (=> b!5454793 m!6475692))

(declare-fun m!6475694 () Bool)

(assert (=> b!5454790 m!6475694))

(assert (=> bm!396329 d!1736944))

(declare-fun b!5454813 () Bool)

(declare-fun e!3378202 () Bool)

(declare-fun lt!2225748 () Bool)

(assert (=> b!5454813 (= e!3378202 (not lt!2225748))))

(declare-fun b!5454814 () Bool)

(declare-fun res!2322940 () Bool)

(declare-fun e!3378199 () Bool)

(assert (=> b!5454814 (=> res!2322940 e!3378199)))

(assert (=> b!5454814 (= res!2322940 (not (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))))))))

(declare-fun b!5454815 () Bool)

(declare-fun e!3378203 () Bool)

(declare-fun e!3378201 () Bool)

(assert (=> b!5454815 (= e!3378203 e!3378201)))

(declare-fun res!2322942 () Bool)

(assert (=> b!5454815 (=> (not res!2322942) (not e!3378201))))

(assert (=> b!5454815 (= res!2322942 (not lt!2225748))))

(declare-fun b!5454816 () Bool)

(declare-fun res!2322944 () Bool)

(declare-fun e!3378198 () Bool)

(assert (=> b!5454816 (=> (not res!2322944) (not e!3378198))))

(declare-fun call!396467 () Bool)

(assert (=> b!5454816 (= res!2322944 (not call!396467))))

(declare-fun b!5454817 () Bool)

(declare-fun res!2322943 () Bool)

(assert (=> b!5454817 (=> (not res!2322943) (not e!3378198))))

(assert (=> b!5454817 (= res!2322943 (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415))))))))

(declare-fun b!5454818 () Bool)

(declare-fun e!3378197 () Bool)

(assert (=> b!5454818 (= e!3378197 e!3378202)))

(declare-fun c!952742 () Bool)

(assert (=> b!5454818 (= c!952742 ((_ is EmptyLang!15281) (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527))))))))

(declare-fun e!3378200 () Bool)

(declare-fun b!5454819 () Bool)

(assert (=> b!5454819 (= e!3378200 (nullable!5450 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527))))))))

(declare-fun d!1736948 () Bool)

(assert (=> d!1736948 e!3378197))

(declare-fun c!952743 () Bool)

(assert (=> d!1736948 (= c!952743 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527))))))))

(assert (=> d!1736948 (= lt!2225748 e!3378200)))

(declare-fun c!952744 () Bool)

(assert (=> d!1736948 (= c!952744 (isEmpty!34002 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))))))

(assert (=> d!1736948 (validRegex!7017 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))))))

(assert (=> d!1736948 (= (matchR!7466 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))) lt!2225748)))

(declare-fun b!5454820 () Bool)

(assert (=> b!5454820 (= e!3378197 (= lt!2225748 call!396467))))

(declare-fun b!5454821 () Bool)

(assert (=> b!5454821 (= e!3378200 (matchR!7466 (derivativeStep!4304 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))) (head!11683 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415))))) (tail!10780 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415))))))))

(declare-fun b!5454822 () Bool)

(declare-fun res!2322946 () Bool)

(assert (=> b!5454822 (=> res!2322946 e!3378203)))

(assert (=> b!5454822 (= res!2322946 e!3378198)))

(declare-fun res!2322945 () Bool)

(assert (=> b!5454822 (=> (not res!2322945) (not e!3378198))))

(assert (=> b!5454822 (= res!2322945 lt!2225748)))

(declare-fun bm!396462 () Bool)

(assert (=> bm!396462 (= call!396467 (isEmpty!34002 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))))))

(declare-fun b!5454823 () Bool)

(assert (=> b!5454823 (= e!3378201 e!3378199)))

(declare-fun res!2322941 () Bool)

(assert (=> b!5454823 (=> res!2322941 e!3378199)))

(assert (=> b!5454823 (= res!2322941 call!396467)))

(declare-fun b!5454824 () Bool)

(declare-fun res!2322939 () Bool)

(assert (=> b!5454824 (=> res!2322939 e!3378203)))

(assert (=> b!5454824 (= res!2322939 (not ((_ is ElementMatch!15281) (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))))))))

(assert (=> b!5454824 (= e!3378202 e!3378203)))

(declare-fun b!5454825 () Bool)

(assert (=> b!5454825 (= e!3378198 (= (head!11683 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))) (c!952474 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527)))))))))

(declare-fun b!5454826 () Bool)

(assert (=> b!5454826 (= e!3378199 (not (= (head!11683 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_2!35783 lt!2225415)))) (c!952474 (ite c!952469 lt!2225379 (ite c!952471 (Concat!24126 (Concat!24126 (regOne!31074 (regOne!31074 r!7292)) (regTwo!31074 (regOne!31074 r!7292))) lt!2225531) (ite c!952467 lt!2225518 (ite c!952465 lt!2225374 lt!2225527))))))))))

(assert (= (and d!1736948 c!952744) b!5454819))

(assert (= (and d!1736948 (not c!952744)) b!5454821))

(assert (= (and d!1736948 c!952743) b!5454820))

(assert (= (and d!1736948 (not c!952743)) b!5454818))

(assert (= (and b!5454818 c!952742) b!5454813))

(assert (= (and b!5454818 (not c!952742)) b!5454824))

(assert (= (and b!5454824 (not res!2322939)) b!5454822))

(assert (= (and b!5454822 res!2322945) b!5454816))

(assert (= (and b!5454816 res!2322944) b!5454817))

(assert (= (and b!5454817 res!2322943) b!5454825))

(assert (= (and b!5454822 (not res!2322946)) b!5454815))

(assert (= (and b!5454815 res!2322942) b!5454823))

(assert (= (and b!5454823 (not res!2322941)) b!5454814))

(assert (= (and b!5454814 (not res!2322940)) b!5454826))

(assert (= (or b!5454820 b!5454816 b!5454823) bm!396462))

(declare-fun m!6475714 () Bool)

(assert (=> b!5454819 m!6475714))

(declare-fun m!6475716 () Bool)

(assert (=> b!5454826 m!6475716))

(declare-fun m!6475718 () Bool)

(assert (=> bm!396462 m!6475718))

(assert (=> b!5454825 m!6475716))

(declare-fun m!6475720 () Bool)

(assert (=> b!5454817 m!6475720))

(assert (=> b!5454817 m!6475720))

(declare-fun m!6475724 () Bool)

(assert (=> b!5454817 m!6475724))

(assert (=> b!5454821 m!6475716))

(assert (=> b!5454821 m!6475716))

(declare-fun m!6475732 () Bool)

(assert (=> b!5454821 m!6475732))

(assert (=> b!5454821 m!6475720))

(assert (=> b!5454821 m!6475732))

(assert (=> b!5454821 m!6475720))

(declare-fun m!6475740 () Bool)

(assert (=> b!5454821 m!6475740))

(assert (=> d!1736948 m!6475718))

(declare-fun m!6475744 () Bool)

(assert (=> d!1736948 m!6475744))

(assert (=> b!5454814 m!6475720))

(assert (=> b!5454814 m!6475720))

(assert (=> b!5454814 m!6475724))

(assert (=> bm!396268 d!1736948))

(declare-fun d!1736958 () Bool)

(assert (=> d!1736958 (= (Exists!2462 (ite c!952471 lambda!288154 (ite c!952465 lambda!288159 (ite c!952462 lambda!288169 lambda!288173)))) (choose!41402 (ite c!952471 lambda!288154 (ite c!952465 lambda!288159 (ite c!952462 lambda!288169 lambda!288173)))))))

(declare-fun bs!1262062 () Bool)

(assert (= bs!1262062 d!1736958))

(declare-fun m!6475746 () Bool)

(assert (=> bs!1262062 m!6475746))

(assert (=> bm!396187 d!1736958))

(declare-fun d!1736960 () Bool)

(declare-fun c!952747 () Bool)

(assert (=> d!1736960 (= c!952747 (isEmpty!34002 (t!375371 s!2326)))))

(declare-fun e!3378207 () Bool)

(assert (=> d!1736960 (= (matchZipper!1525 (ite c!952469 lt!2225506 ((_ map or) lt!2225441 lt!2225439)) (t!375371 s!2326)) e!3378207)))

(declare-fun b!5454833 () Bool)

(assert (=> b!5454833 (= e!3378207 (nullableZipper!1483 (ite c!952469 lt!2225506 ((_ map or) lt!2225441 lt!2225439))))))

(declare-fun b!5454834 () Bool)

(assert (=> b!5454834 (= e!3378207 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 lt!2225506 ((_ map or) lt!2225441 lt!2225439)) (head!11683 (t!375371 s!2326))) (tail!10780 (t!375371 s!2326))))))

(assert (= (and d!1736960 c!952747) b!5454833))

(assert (= (and d!1736960 (not c!952747)) b!5454834))

(assert (=> d!1736960 m!6475640))

(declare-fun m!6475758 () Bool)

(assert (=> b!5454833 m!6475758))

(assert (=> b!5454834 m!6475644))

(assert (=> b!5454834 m!6475644))

(declare-fun m!6475760 () Bool)

(assert (=> b!5454834 m!6475760))

(assert (=> b!5454834 m!6475648))

(assert (=> b!5454834 m!6475760))

(assert (=> b!5454834 m!6475648))

(declare-fun m!6475764 () Bool)

(assert (=> b!5454834 m!6475764))

(assert (=> bm!396203 d!1736960))

(declare-fun d!1736964 () Bool)

(assert (=> d!1736964 (matchR!7466 (Star!15281 (reg!15610 (regOne!31074 r!7292))) (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))

(declare-fun lt!2225753 () Unit!154792)

(declare-fun choose!41426 (Regex!15281 List!62142 List!62142) Unit!154792)

(assert (=> d!1736964 (= lt!2225753 (choose!41426 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))

(assert (=> d!1736964 (validRegex!7017 (Star!15281 (reg!15610 (regOne!31074 r!7292))))))

(assert (=> d!1736964 (= (lemmaStarApp!76 (reg!15610 (regOne!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))) lt!2225753)))

(declare-fun bs!1262073 () Bool)

(assert (= bs!1262073 d!1736964))

(assert (=> bs!1262073 m!6474708))

(assert (=> bs!1262073 m!6474708))

(declare-fun m!6475766 () Bool)

(assert (=> bs!1262073 m!6475766))

(declare-fun m!6475768 () Bool)

(assert (=> bs!1262073 m!6475768))

(declare-fun m!6475770 () Bool)

(assert (=> bs!1262073 m!6475770))

(assert (=> bm!396302 d!1736964))

(declare-fun d!1736966 () Bool)

(assert (=> d!1736966 (= (Exists!2462 (ite c!952465 lambda!288161 (ite c!952462 lambda!288169 lambda!288174))) (choose!41402 (ite c!952465 lambda!288161 (ite c!952462 lambda!288169 lambda!288174))))))

(declare-fun bs!1262074 () Bool)

(assert (= bs!1262074 d!1736966))

(declare-fun m!6475772 () Bool)

(assert (=> bs!1262074 m!6475772))

(assert (=> bm!396156 d!1736966))

(declare-fun e!3378208 () Bool)

(declare-fun d!1736968 () Bool)

(assert (=> d!1736968 (= (matchZipper!1525 ((_ map or) (ite c!952469 lt!2225487 lt!2225441) (ite c!952469 lt!2225506 lt!2225541)) (t!375371 s!2326)) e!3378208)))

(declare-fun res!2322949 () Bool)

(assert (=> d!1736968 (=> res!2322949 e!3378208)))

(assert (=> d!1736968 (= res!2322949 (matchZipper!1525 (ite c!952469 lt!2225487 lt!2225441) (t!375371 s!2326)))))

(declare-fun lt!2225754 () Unit!154792)

(assert (=> d!1736968 (= lt!2225754 (choose!41409 (ite c!952469 lt!2225487 lt!2225441) (ite c!952469 lt!2225506 lt!2225541) (t!375371 s!2326)))))

(assert (=> d!1736968 (= (lemmaZipperConcatMatchesSameAsBothZippers!518 (ite c!952469 lt!2225487 lt!2225441) (ite c!952469 lt!2225506 lt!2225541) (t!375371 s!2326)) lt!2225754)))

(declare-fun b!5454835 () Bool)

(assert (=> b!5454835 (= e!3378208 (matchZipper!1525 (ite c!952469 lt!2225506 lt!2225541) (t!375371 s!2326)))))

(assert (= (and d!1736968 (not res!2322949)) b!5454835))

(declare-fun m!6475774 () Bool)

(assert (=> d!1736968 m!6475774))

(declare-fun m!6475776 () Bool)

(assert (=> d!1736968 m!6475776))

(declare-fun m!6475778 () Bool)

(assert (=> d!1736968 m!6475778))

(declare-fun m!6475780 () Bool)

(assert (=> b!5454835 m!6475780))

(assert (=> bm!396242 d!1736968))

(declare-fun e!3378209 () List!62142)

(declare-fun b!5454837 () Bool)

(assert (=> b!5454837 (= e!3378209 (Cons!62018 (h!68466 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505))) (++!13641 (t!375371 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505))) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)))))))

(declare-fun b!5454836 () Bool)

(assert (=> b!5454836 (= e!3378209 (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)))))

(declare-fun d!1736970 () Bool)

(declare-fun e!3378210 () Bool)

(assert (=> d!1736970 e!3378210))

(declare-fun res!2322950 () Bool)

(assert (=> d!1736970 (=> (not res!2322950) (not e!3378210))))

(declare-fun lt!2225755 () List!62142)

(assert (=> d!1736970 (= res!2322950 (= (content!11160 lt!2225755) ((_ map or) (content!11160 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505))) (content!11160 (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))))

(assert (=> d!1736970 (= lt!2225755 e!3378209)))

(declare-fun c!952748 () Bool)

(assert (=> d!1736970 (= c!952748 ((_ is Nil!62018) (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505))))))

(assert (=> d!1736970 (= (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))) lt!2225755)))

(declare-fun b!5454838 () Bool)

(declare-fun res!2322951 () Bool)

(assert (=> b!5454838 (=> (not res!2322951) (not e!3378210))))

(assert (=> b!5454838 (= res!2322951 (= (size!39897 lt!2225755) (+ (size!39897 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505))) (size!39897 (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))))))))

(declare-fun b!5454839 () Bool)

(assert (=> b!5454839 (= e!3378210 (or (not (= (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)) Nil!62018)) (= lt!2225755 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)))))))

(assert (= (and d!1736970 c!952748) b!5454836))

(assert (= (and d!1736970 (not c!952748)) b!5454837))

(assert (= (and d!1736970 res!2322950) b!5454838))

(assert (= (and b!5454838 res!2322951) b!5454839))

(declare-fun m!6475782 () Bool)

(assert (=> b!5454837 m!6475782))

(declare-fun m!6475784 () Bool)

(assert (=> d!1736970 m!6475784))

(declare-fun m!6475786 () Bool)

(assert (=> d!1736970 m!6475786))

(declare-fun m!6475788 () Bool)

(assert (=> d!1736970 m!6475788))

(declare-fun m!6475790 () Bool)

(assert (=> b!5454838 m!6475790))

(declare-fun m!6475792 () Bool)

(assert (=> b!5454838 m!6475792))

(declare-fun m!6475794 () Bool)

(assert (=> b!5454838 m!6475794))

(assert (=> bm!396207 d!1736970))

(declare-fun b!5454840 () Bool)

(declare-fun e!3378216 () Bool)

(declare-fun lt!2225756 () Bool)

(assert (=> b!5454840 (= e!3378216 (not lt!2225756))))

(declare-fun b!5454841 () Bool)

(declare-fun res!2322953 () Bool)

(declare-fun e!3378213 () Bool)

(assert (=> b!5454841 (=> res!2322953 e!3378213)))

(assert (=> b!5454841 (= res!2322953 (not (isEmpty!34002 (tail!10780 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))))))))

(declare-fun b!5454842 () Bool)

(declare-fun e!3378217 () Bool)

(declare-fun e!3378215 () Bool)

(assert (=> b!5454842 (= e!3378217 e!3378215)))

(declare-fun res!2322955 () Bool)

(assert (=> b!5454842 (=> (not res!2322955) (not e!3378215))))

(assert (=> b!5454842 (= res!2322955 (not lt!2225756))))

(declare-fun b!5454843 () Bool)

(declare-fun res!2322957 () Bool)

(declare-fun e!3378212 () Bool)

(assert (=> b!5454843 (=> (not res!2322957) (not e!3378212))))

(declare-fun call!396468 () Bool)

(assert (=> b!5454843 (= res!2322957 (not call!396468))))

(declare-fun b!5454844 () Bool)

(declare-fun res!2322956 () Bool)

(assert (=> b!5454844 (=> (not res!2322956) (not e!3378212))))

(assert (=> b!5454844 (= res!2322956 (isEmpty!34002 (tail!10780 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326))))))))

(declare-fun b!5454845 () Bool)

(declare-fun e!3378211 () Bool)

(assert (=> b!5454845 (= e!3378211 e!3378216)))

(declare-fun c!952749 () Bool)

(assert (=> b!5454845 (= c!952749 ((_ is EmptyLang!15281) (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292))))))))))

(declare-fun e!3378214 () Bool)

(declare-fun b!5454846 () Bool)

(assert (=> b!5454846 (= e!3378214 (nullable!5450 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292))))))))))

(declare-fun d!1736972 () Bool)

(assert (=> d!1736972 e!3378211))

(declare-fun c!952750 () Bool)

(assert (=> d!1736972 (= c!952750 ((_ is EmptyExpr!15281) (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292))))))))))

(assert (=> d!1736972 (= lt!2225756 e!3378214)))

(declare-fun c!952751 () Bool)

(assert (=> d!1736972 (= c!952751 (isEmpty!34002 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))))))

(assert (=> d!1736972 (validRegex!7017 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))))))

(assert (=> d!1736972 (= (matchR!7466 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))) lt!2225756)))

(declare-fun b!5454847 () Bool)

(assert (=> b!5454847 (= e!3378211 (= lt!2225756 call!396468))))

(declare-fun b!5454848 () Bool)

(assert (=> b!5454848 (= e!3378214 (matchR!7466 (derivativeStep!4304 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))) (head!11683 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326))))) (tail!10780 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326))))))))

(declare-fun b!5454849 () Bool)

(declare-fun res!2322959 () Bool)

(assert (=> b!5454849 (=> res!2322959 e!3378217)))

(assert (=> b!5454849 (= res!2322959 e!3378212)))

(declare-fun res!2322958 () Bool)

(assert (=> b!5454849 (=> (not res!2322958) (not e!3378212))))

(assert (=> b!5454849 (= res!2322958 lt!2225756)))

(declare-fun bm!396463 () Bool)

(assert (=> bm!396463 (= call!396468 (isEmpty!34002 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))))))

(declare-fun b!5454850 () Bool)

(assert (=> b!5454850 (= e!3378215 e!3378213)))

(declare-fun res!2322954 () Bool)

(assert (=> b!5454850 (=> res!2322954 e!3378213)))

(assert (=> b!5454850 (= res!2322954 call!396468)))

(declare-fun b!5454851 () Bool)

(declare-fun res!2322952 () Bool)

(assert (=> b!5454851 (=> res!2322952 e!3378217)))

(assert (=> b!5454851 (= res!2322952 (not ((_ is ElementMatch!15281) (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))))))))

(assert (=> b!5454851 (= e!3378216 e!3378217)))

(declare-fun b!5454852 () Bool)

(assert (=> b!5454852 (= e!3378212 (= (head!11683 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))) (c!952474 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292)))))))))))

(declare-fun b!5454853 () Bool)

(assert (=> b!5454853 (= e!3378213 (not (= (head!11683 (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 lt!2225429 (ite c!952462 lt!2225547 Nil!62018)) s!2326)))) (c!952474 (ite c!952472 lt!2225551 (ite c!952469 lt!2225428 (ite c!952471 lt!2225530 (ite c!952467 (Concat!24126 (regOne!31074 r!7292) lt!2225526) (ite c!952461 (ite c!952465 lt!2225527 (ite c!952462 lt!2225480 lt!2225374)) (regOne!31074 r!7292))))))))))))

(assert (= (and d!1736972 c!952751) b!5454846))

(assert (= (and d!1736972 (not c!952751)) b!5454848))

(assert (= (and d!1736972 c!952750) b!5454847))

(assert (= (and d!1736972 (not c!952750)) b!5454845))

(assert (= (and b!5454845 c!952749) b!5454840))

(assert (= (and b!5454845 (not c!952749)) b!5454851))

(assert (= (and b!5454851 (not res!2322952)) b!5454849))

(assert (= (and b!5454849 res!2322958) b!5454843))

(assert (= (and b!5454843 res!2322957) b!5454844))

(assert (= (and b!5454844 res!2322956) b!5454852))

(assert (= (and b!5454849 (not res!2322959)) b!5454842))

(assert (= (and b!5454842 res!2322955) b!5454850))

(assert (= (and b!5454850 (not res!2322954)) b!5454841))

(assert (= (and b!5454841 (not res!2322953)) b!5454853))

(assert (= (or b!5454847 b!5454843 b!5454850) bm!396463))

(declare-fun m!6475796 () Bool)

(assert (=> b!5454846 m!6475796))

(declare-fun m!6475798 () Bool)

(assert (=> b!5454853 m!6475798))

(declare-fun m!6475800 () Bool)

(assert (=> bm!396463 m!6475800))

(assert (=> b!5454852 m!6475798))

(declare-fun m!6475802 () Bool)

(assert (=> b!5454844 m!6475802))

(assert (=> b!5454844 m!6475802))

(declare-fun m!6475804 () Bool)

(assert (=> b!5454844 m!6475804))

(assert (=> b!5454848 m!6475798))

(assert (=> b!5454848 m!6475798))

(declare-fun m!6475806 () Bool)

(assert (=> b!5454848 m!6475806))

(assert (=> b!5454848 m!6475802))

(assert (=> b!5454848 m!6475806))

(assert (=> b!5454848 m!6475802))

(declare-fun m!6475808 () Bool)

(assert (=> b!5454848 m!6475808))

(assert (=> d!1736972 m!6475800))

(declare-fun m!6475810 () Bool)

(assert (=> d!1736972 m!6475810))

(assert (=> b!5454841 m!6475802))

(assert (=> b!5454841 m!6475802))

(assert (=> b!5454841 m!6475804))

(assert (=> bm!396319 d!1736972))

(declare-fun d!1736974 () Bool)

(assert (=> d!1736974 (= (matchR!7466 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite (or c!952465 c!952462) lt!2225527 lt!2225443))) (ite (or c!952469 c!952471) s!2326 (ite c!952465 lt!2225429 (ite c!952462 (_2!35783 lt!2225415) s!2326)))) (matchZipper!1525 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 (ite (or c!952465 c!952462) lt!2225399 lt!2225513))) (ite (or c!952469 c!952471) s!2326 (ite c!952465 lt!2225429 (ite c!952462 (_2!35783 lt!2225415) s!2326)))))))

(declare-fun lt!2225763 () Unit!154792)

(declare-fun choose!41427 ((InoxSet Context!9330) List!62144 Regex!15281 List!62142) Unit!154792)

(assert (=> d!1736974 (= lt!2225763 (choose!41427 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 (ite (or c!952465 c!952462) lt!2225399 lt!2225513))) (ite c!952469 (Cons!62020 lt!2225566 Nil!62020) (ite c!952471 (Cons!62020 lt!2225440 Nil!62020) (ite (or c!952465 c!952462) (Cons!62020 lt!2225467 Nil!62020) (Cons!62020 lt!2225444 Nil!62020)))) (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite (or c!952465 c!952462) lt!2225527 lt!2225443))) (ite (or c!952469 c!952471) s!2326 (ite c!952465 lt!2225429 (ite c!952462 (_2!35783 lt!2225415) s!2326)))))))

(assert (=> d!1736974 (validRegex!7017 (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite (or c!952465 c!952462) lt!2225527 lt!2225443))))))

(assert (=> d!1736974 (= (theoremZipperRegexEquiv!561 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 (ite (or c!952465 c!952462) lt!2225399 lt!2225513))) (ite c!952469 (Cons!62020 lt!2225566 Nil!62020) (ite c!952471 (Cons!62020 lt!2225440 Nil!62020) (ite (or c!952465 c!952462) (Cons!62020 lt!2225467 Nil!62020) (Cons!62020 lt!2225444 Nil!62020)))) (ite c!952469 lt!2225379 (ite c!952471 lt!2225530 (ite (or c!952465 c!952462) lt!2225527 lt!2225443))) (ite (or c!952469 c!952471) s!2326 (ite c!952465 lt!2225429 (ite c!952462 (_2!35783 lt!2225415) s!2326)))) lt!2225763)))

(declare-fun bs!1262078 () Bool)

(assert (= bs!1262078 d!1736974))

(declare-fun m!6475840 () Bool)

(assert (=> bs!1262078 m!6475840))

(declare-fun m!6475842 () Bool)

(assert (=> bs!1262078 m!6475842))

(declare-fun m!6475844 () Bool)

(assert (=> bs!1262078 m!6475844))

(declare-fun m!6475846 () Bool)

(assert (=> bs!1262078 m!6475846))

(assert (=> bm!396305 d!1736974))

(declare-fun d!1736982 () Bool)

(declare-fun c!952757 () Bool)

(assert (=> d!1736982 (= c!952757 (isEmpty!34002 (ite (or c!952472 c!952469) (t!375371 s!2326) s!2326)))))

(declare-fun e!3378226 () Bool)

(assert (=> d!1736982 (= (matchZipper!1525 (ite c!952472 lt!2225418 (ite c!952469 ((_ map or) lt!2225487 lt!2225506) lt!2225450)) (ite (or c!952472 c!952469) (t!375371 s!2326) s!2326)) e!3378226)))

(declare-fun b!5454868 () Bool)

(assert (=> b!5454868 (= e!3378226 (nullableZipper!1483 (ite c!952472 lt!2225418 (ite c!952469 ((_ map or) lt!2225487 lt!2225506) lt!2225450))))))

(declare-fun b!5454869 () Bool)

(assert (=> b!5454869 (= e!3378226 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952472 lt!2225418 (ite c!952469 ((_ map or) lt!2225487 lt!2225506) lt!2225450)) (head!11683 (ite (or c!952472 c!952469) (t!375371 s!2326) s!2326))) (tail!10780 (ite (or c!952472 c!952469) (t!375371 s!2326) s!2326))))))

(assert (= (and d!1736982 c!952757) b!5454868))

(assert (= (and d!1736982 (not c!952757)) b!5454869))

(declare-fun m!6475848 () Bool)

(assert (=> d!1736982 m!6475848))

(declare-fun m!6475850 () Bool)

(assert (=> b!5454868 m!6475850))

(declare-fun m!6475852 () Bool)

(assert (=> b!5454869 m!6475852))

(assert (=> b!5454869 m!6475852))

(declare-fun m!6475854 () Bool)

(assert (=> b!5454869 m!6475854))

(declare-fun m!6475856 () Bool)

(assert (=> b!5454869 m!6475856))

(assert (=> b!5454869 m!6475854))

(assert (=> b!5454869 m!6475856))

(declare-fun m!6475858 () Bool)

(assert (=> b!5454869 m!6475858))

(assert (=> bm!396159 d!1736982))

(declare-fun d!1736984 () Bool)

(assert (=> d!1736984 (not (matchZipper!1525 lt!2225534 (t!375371 s!2326)))))

(declare-fun lt!2225771 () Unit!154792)

(declare-fun choose!41428 ((InoxSet Context!9330) List!62142) Unit!154792)

(assert (=> d!1736984 (= lt!2225771 (choose!41428 lt!2225534 (t!375371 s!2326)))))

(assert (=> d!1736984 (= lt!2225534 ((as const (Array Context!9330 Bool)) false))))

(assert (=> d!1736984 (= (lemmaEmptyZipperMatchesNothing!36 lt!2225534 (t!375371 s!2326)) lt!2225771)))

(declare-fun bs!1262091 () Bool)

(assert (= bs!1262091 d!1736984))

(assert (=> bs!1262091 m!6474718))

(declare-fun m!6475920 () Bool)

(assert (=> bs!1262091 m!6475920))

(assert (=> bm!396335 d!1736984))

(declare-fun d!1736998 () Bool)

(assert (=> d!1736998 (= (++!13641 (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505))) (ite c!952465 (_2!35783 lt!2225382) (_2!35783 lt!2225479))) (++!13641 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (++!13641 (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) (_2!35783 lt!2225479)))))))

(declare-fun lt!2225777 () Unit!154792)

(declare-fun choose!41429 (List!62142 List!62142 List!62142) Unit!154792)

(assert (=> d!1736998 (= lt!2225777 (choose!41429 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) (_2!35783 lt!2225479))))))

(assert (=> d!1736998 (= (lemmaConcatAssociativity!2858 (ite c!952465 (_1!35783 lt!2225499) (_1!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225499) (_2!35783 lt!2225505)) (ite c!952465 (_2!35783 lt!2225382) (_2!35783 lt!2225479))) lt!2225777)))

(declare-fun bs!1262092 () Bool)

(assert (= bs!1262092 d!1736998))

(declare-fun m!6475928 () Bool)

(assert (=> bs!1262092 m!6475928))

(assert (=> bs!1262092 m!6474708))

(assert (=> bs!1262092 m!6474708))

(declare-fun m!6475930 () Bool)

(assert (=> bs!1262092 m!6475930))

(declare-fun m!6475934 () Bool)

(assert (=> bs!1262092 m!6475934))

(assert (=> bs!1262092 m!6475934))

(declare-fun m!6475942 () Bool)

(assert (=> bs!1262092 m!6475942))

(assert (=> bm!396354 d!1736998))

(declare-fun d!1737002 () Bool)

(assert (=> d!1737002 (= (Exists!2462 (ite c!952471 lambda!288153 (ite c!952467 lambda!288155 (ite c!952465 lambda!288162 (ite c!952462 lambda!288170 lambda!288172))))) (choose!41402 (ite c!952471 lambda!288153 (ite c!952467 lambda!288155 (ite c!952465 lambda!288162 (ite c!952462 lambda!288170 lambda!288172))))))))

(declare-fun bs!1262093 () Bool)

(assert (= bs!1262093 d!1737002))

(declare-fun m!6475950 () Bool)

(assert (=> bs!1262093 m!6475950))

(assert (=> bm!396337 d!1737002))

(declare-fun b!5454889 () Bool)

(declare-fun e!3378244 () Bool)

(declare-fun lt!2225779 () Bool)

(assert (=> b!5454889 (= e!3378244 (not lt!2225779))))

(declare-fun b!5454890 () Bool)

(declare-fun res!2322974 () Bool)

(declare-fun e!3378241 () Bool)

(assert (=> b!5454890 (=> res!2322974 e!3378241)))

(assert (=> b!5454890 (= res!2322974 (not (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952462) s!2326 call!396190)))))))

(declare-fun b!5454891 () Bool)

(declare-fun e!3378245 () Bool)

(declare-fun e!3378243 () Bool)

(assert (=> b!5454891 (= e!3378245 e!3378243)))

(declare-fun res!2322976 () Bool)

(assert (=> b!5454891 (=> (not res!2322976) (not e!3378243))))

(assert (=> b!5454891 (= res!2322976 (not lt!2225779))))

(declare-fun b!5454892 () Bool)

(declare-fun res!2322978 () Bool)

(declare-fun e!3378240 () Bool)

(assert (=> b!5454892 (=> (not res!2322978) (not e!3378240))))

(declare-fun call!396470 () Bool)

(assert (=> b!5454892 (= res!2322978 (not call!396470))))

(declare-fun b!5454893 () Bool)

(declare-fun res!2322977 () Bool)

(assert (=> b!5454893 (=> (not res!2322977) (not e!3378240))))

(assert (=> b!5454893 (= res!2322977 (isEmpty!34002 (tail!10780 (ite (or c!952469 c!952462) s!2326 call!396190))))))

(declare-fun b!5454894 () Bool)

(declare-fun e!3378239 () Bool)

(assert (=> b!5454894 (= e!3378239 e!3378244)))

(declare-fun c!952763 () Bool)

(assert (=> b!5454894 (= c!952763 ((_ is EmptyLang!15281) (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527))))))

(declare-fun e!3378242 () Bool)

(declare-fun b!5454895 () Bool)

(assert (=> b!5454895 (= e!3378242 (nullable!5450 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527))))))

(declare-fun d!1737006 () Bool)

(assert (=> d!1737006 e!3378239))

(declare-fun c!952764 () Bool)

(assert (=> d!1737006 (= c!952764 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527))))))

(assert (=> d!1737006 (= lt!2225779 e!3378242)))

(declare-fun c!952765 () Bool)

(assert (=> d!1737006 (= c!952765 (isEmpty!34002 (ite (or c!952469 c!952462) s!2326 call!396190)))))

(assert (=> d!1737006 (validRegex!7017 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)))))

(assert (=> d!1737006 (= (matchR!7466 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)) (ite (or c!952469 c!952462) s!2326 call!396190)) lt!2225779)))

(declare-fun b!5454896 () Bool)

(assert (=> b!5454896 (= e!3378239 (= lt!2225779 call!396470))))

(declare-fun b!5454897 () Bool)

(assert (=> b!5454897 (= e!3378242 (matchR!7466 (derivativeStep!4304 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)) (head!11683 (ite (or c!952469 c!952462) s!2326 call!396190))) (tail!10780 (ite (or c!952469 c!952462) s!2326 call!396190))))))

(declare-fun b!5454898 () Bool)

(declare-fun res!2322980 () Bool)

(assert (=> b!5454898 (=> res!2322980 e!3378245)))

(assert (=> b!5454898 (= res!2322980 e!3378240)))

(declare-fun res!2322979 () Bool)

(assert (=> b!5454898 (=> (not res!2322979) (not e!3378240))))

(assert (=> b!5454898 (= res!2322979 lt!2225779)))

(declare-fun bm!396465 () Bool)

(assert (=> bm!396465 (= call!396470 (isEmpty!34002 (ite (or c!952469 c!952462) s!2326 call!396190)))))

(declare-fun b!5454899 () Bool)

(assert (=> b!5454899 (= e!3378243 e!3378241)))

(declare-fun res!2322975 () Bool)

(assert (=> b!5454899 (=> res!2322975 e!3378241)))

(assert (=> b!5454899 (= res!2322975 call!396470)))

(declare-fun b!5454900 () Bool)

(declare-fun res!2322973 () Bool)

(assert (=> b!5454900 (=> res!2322973 e!3378245)))

(assert (=> b!5454900 (= res!2322973 (not ((_ is ElementMatch!15281) (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)))))))

(assert (=> b!5454900 (= e!3378244 e!3378245)))

(declare-fun b!5454901 () Bool)

(assert (=> b!5454901 (= e!3378240 (= (head!11683 (ite (or c!952469 c!952462) s!2326 call!396190)) (c!952474 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527)))))))

(declare-fun b!5454902 () Bool)

(assert (=> b!5454902 (= e!3378241 (not (= (head!11683 (ite (or c!952469 c!952462) s!2326 call!396190)) (c!952474 (ite c!952469 lt!2225522 (ite c!952462 lt!2225567 lt!2225527))))))))

(assert (= (and d!1737006 c!952765) b!5454895))

(assert (= (and d!1737006 (not c!952765)) b!5454897))

(assert (= (and d!1737006 c!952764) b!5454896))

(assert (= (and d!1737006 (not c!952764)) b!5454894))

(assert (= (and b!5454894 c!952763) b!5454889))

(assert (= (and b!5454894 (not c!952763)) b!5454900))

(assert (= (and b!5454900 (not res!2322973)) b!5454898))

(assert (= (and b!5454898 res!2322979) b!5454892))

(assert (= (and b!5454892 res!2322978) b!5454893))

(assert (= (and b!5454893 res!2322977) b!5454901))

(assert (= (and b!5454898 (not res!2322980)) b!5454891))

(assert (= (and b!5454891 res!2322976) b!5454899))

(assert (= (and b!5454899 (not res!2322975)) b!5454890))

(assert (= (and b!5454890 (not res!2322974)) b!5454902))

(assert (= (or b!5454896 b!5454892 b!5454899) bm!396465))

(declare-fun m!6475966 () Bool)

(assert (=> b!5454895 m!6475966))

(declare-fun m!6475970 () Bool)

(assert (=> b!5454902 m!6475970))

(declare-fun m!6475972 () Bool)

(assert (=> bm!396465 m!6475972))

(assert (=> b!5454901 m!6475970))

(declare-fun m!6475974 () Bool)

(assert (=> b!5454893 m!6475974))

(assert (=> b!5454893 m!6475974))

(declare-fun m!6475976 () Bool)

(assert (=> b!5454893 m!6475976))

(assert (=> b!5454897 m!6475970))

(assert (=> b!5454897 m!6475970))

(declare-fun m!6475980 () Bool)

(assert (=> b!5454897 m!6475980))

(assert (=> b!5454897 m!6475974))

(assert (=> b!5454897 m!6475980))

(assert (=> b!5454897 m!6475974))

(declare-fun m!6475982 () Bool)

(assert (=> b!5454897 m!6475982))

(assert (=> d!1737006 m!6475972))

(declare-fun m!6475984 () Bool)

(assert (=> d!1737006 m!6475984))

(assert (=> b!5454890 m!6475974))

(assert (=> b!5454890 m!6475974))

(assert (=> b!5454890 m!6475976))

(assert (=> bm!396291 d!1737006))

(declare-fun b!5454905 () Bool)

(declare-fun e!3378248 () Bool)

(assert (=> b!5454905 (= e!3378248 (nullable!5450 (h!68467 (exprs!5165 lt!2225528))))))

(declare-fun d!1737012 () Bool)

(declare-fun c!952768 () Bool)

(assert (=> d!1737012 (= c!952768 e!3378248)))

(declare-fun res!2322981 () Bool)

(assert (=> d!1737012 (=> (not res!2322981) (not e!3378248))))

(assert (=> d!1737012 (= res!2322981 ((_ is Cons!62019) (exprs!5165 lt!2225528)))))

(declare-fun e!3378249 () (InoxSet Context!9330))

(assert (=> d!1737012 (= (derivationStepZipperUp!653 lt!2225528 (h!68466 s!2326)) e!3378249)))

(declare-fun b!5454906 () Bool)

(declare-fun e!3378247 () (InoxSet Context!9330))

(declare-fun call!396471 () (InoxSet Context!9330))

(assert (=> b!5454906 (= e!3378247 call!396471)))

(declare-fun b!5454907 () Bool)

(assert (=> b!5454907 (= e!3378249 ((_ map or) call!396471 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 lt!2225528))) (h!68466 s!2326))))))

(declare-fun b!5454908 () Bool)

(assert (=> b!5454908 (= e!3378249 e!3378247)))

(declare-fun c!952767 () Bool)

(assert (=> b!5454908 (= c!952767 ((_ is Cons!62019) (exprs!5165 lt!2225528)))))

(declare-fun b!5454909 () Bool)

(assert (=> b!5454909 (= e!3378247 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396466 () Bool)

(assert (=> bm!396466 (= call!396471 (derivationStepZipperDown!729 (h!68467 (exprs!5165 lt!2225528)) (Context!9331 (t!375372 (exprs!5165 lt!2225528))) (h!68466 s!2326)))))

(assert (= (and d!1737012 res!2322981) b!5454905))

(assert (= (and d!1737012 c!952768) b!5454907))

(assert (= (and d!1737012 (not c!952768)) b!5454908))

(assert (= (and b!5454908 c!952767) b!5454906))

(assert (= (and b!5454908 (not c!952767)) b!5454909))

(assert (= (or b!5454907 b!5454906) bm!396466))

(declare-fun m!6475988 () Bool)

(assert (=> b!5454905 m!6475988))

(declare-fun m!6475992 () Bool)

(assert (=> b!5454907 m!6475992))

(declare-fun m!6475996 () Bool)

(assert (=> bm!396466 m!6475996))

(assert (=> b!5453940 d!1737012))

(declare-fun d!1737014 () Bool)

(assert (=> d!1737014 (= (flatMap!1008 lt!2225508 lambda!288150) (choose!41407 lt!2225508 lambda!288150))))

(declare-fun bs!1262095 () Bool)

(assert (= bs!1262095 d!1737014))

(declare-fun m!6476000 () Bool)

(assert (=> bs!1262095 m!6476000))

(assert (=> b!5453940 d!1737014))

(declare-fun b!5454910 () Bool)

(declare-fun e!3378255 () Bool)

(declare-fun lt!2225781 () Bool)

(assert (=> b!5454910 (= e!3378255 (not lt!2225781))))

(declare-fun b!5454911 () Bool)

(declare-fun res!2322983 () Bool)

(declare-fun e!3378252 () Bool)

(assert (=> b!5454911 (=> res!2322983 e!3378252)))

(assert (=> b!5454911 (= res!2322983 (not (isEmpty!34002 (tail!10780 s!2326))))))

(declare-fun b!5454912 () Bool)

(declare-fun e!3378256 () Bool)

(declare-fun e!3378254 () Bool)

(assert (=> b!5454912 (= e!3378256 e!3378254)))

(declare-fun res!2322985 () Bool)

(assert (=> b!5454912 (=> (not res!2322985) (not e!3378254))))

(assert (=> b!5454912 (= res!2322985 (not lt!2225781))))

(declare-fun b!5454913 () Bool)

(declare-fun res!2322987 () Bool)

(declare-fun e!3378251 () Bool)

(assert (=> b!5454913 (=> (not res!2322987) (not e!3378251))))

(declare-fun call!396472 () Bool)

(assert (=> b!5454913 (= res!2322987 (not call!396472))))

(declare-fun b!5454914 () Bool)

(declare-fun res!2322986 () Bool)

(assert (=> b!5454914 (=> (not res!2322986) (not e!3378251))))

(assert (=> b!5454914 (= res!2322986 (isEmpty!34002 (tail!10780 s!2326)))))

(declare-fun b!5454915 () Bool)

(declare-fun e!3378250 () Bool)

(assert (=> b!5454915 (= e!3378250 e!3378255)))

(declare-fun c!952769 () Bool)

(assert (=> b!5454915 (= c!952769 ((_ is EmptyLang!15281) lt!2225480))))

(declare-fun b!5454916 () Bool)

(declare-fun e!3378253 () Bool)

(assert (=> b!5454916 (= e!3378253 (nullable!5450 lt!2225480))))

(declare-fun d!1737018 () Bool)

(assert (=> d!1737018 e!3378250))

(declare-fun c!952770 () Bool)

(assert (=> d!1737018 (= c!952770 ((_ is EmptyExpr!15281) lt!2225480))))

(assert (=> d!1737018 (= lt!2225781 e!3378253)))

(declare-fun c!952771 () Bool)

(assert (=> d!1737018 (= c!952771 (isEmpty!34002 s!2326))))

(assert (=> d!1737018 (validRegex!7017 lt!2225480)))

(assert (=> d!1737018 (= (matchR!7466 lt!2225480 s!2326) lt!2225781)))

(declare-fun b!5454917 () Bool)

(assert (=> b!5454917 (= e!3378250 (= lt!2225781 call!396472))))

(declare-fun b!5454918 () Bool)

(assert (=> b!5454918 (= e!3378253 (matchR!7466 (derivativeStep!4304 lt!2225480 (head!11683 s!2326)) (tail!10780 s!2326)))))

(declare-fun b!5454919 () Bool)

(declare-fun res!2322989 () Bool)

(assert (=> b!5454919 (=> res!2322989 e!3378256)))

(assert (=> b!5454919 (= res!2322989 e!3378251)))

(declare-fun res!2322988 () Bool)

(assert (=> b!5454919 (=> (not res!2322988) (not e!3378251))))

(assert (=> b!5454919 (= res!2322988 lt!2225781)))

(declare-fun bm!396467 () Bool)

(assert (=> bm!396467 (= call!396472 (isEmpty!34002 s!2326))))

(declare-fun b!5454920 () Bool)

(assert (=> b!5454920 (= e!3378254 e!3378252)))

(declare-fun res!2322984 () Bool)

(assert (=> b!5454920 (=> res!2322984 e!3378252)))

(assert (=> b!5454920 (= res!2322984 call!396472)))

(declare-fun b!5454921 () Bool)

(declare-fun res!2322982 () Bool)

(assert (=> b!5454921 (=> res!2322982 e!3378256)))

(assert (=> b!5454921 (= res!2322982 (not ((_ is ElementMatch!15281) lt!2225480)))))

(assert (=> b!5454921 (= e!3378255 e!3378256)))

(declare-fun b!5454922 () Bool)

(assert (=> b!5454922 (= e!3378251 (= (head!11683 s!2326) (c!952474 lt!2225480)))))

(declare-fun b!5454923 () Bool)

(assert (=> b!5454923 (= e!3378252 (not (= (head!11683 s!2326) (c!952474 lt!2225480))))))

(assert (= (and d!1737018 c!952771) b!5454916))

(assert (= (and d!1737018 (not c!952771)) b!5454918))

(assert (= (and d!1737018 c!952770) b!5454917))

(assert (= (and d!1737018 (not c!952770)) b!5454915))

(assert (= (and b!5454915 c!952769) b!5454910))

(assert (= (and b!5454915 (not c!952769)) b!5454921))

(assert (= (and b!5454921 (not res!2322982)) b!5454919))

(assert (= (and b!5454919 res!2322988) b!5454913))

(assert (= (and b!5454913 res!2322987) b!5454914))

(assert (= (and b!5454914 res!2322986) b!5454922))

(assert (= (and b!5454919 (not res!2322989)) b!5454912))

(assert (= (and b!5454912 res!2322985) b!5454920))

(assert (= (and b!5454920 (not res!2322984)) b!5454911))

(assert (= (and b!5454911 (not res!2322983)) b!5454923))

(assert (= (or b!5454917 b!5454913 b!5454920) bm!396467))

(declare-fun m!6476002 () Bool)

(assert (=> b!5454916 m!6476002))

(assert (=> b!5454923 m!6474788))

(assert (=> bm!396467 m!6474766))

(assert (=> b!5454922 m!6474788))

(assert (=> b!5454914 m!6474790))

(assert (=> b!5454914 m!6474790))

(assert (=> b!5454914 m!6474792))

(assert (=> b!5454918 m!6474788))

(assert (=> b!5454918 m!6474788))

(declare-fun m!6476004 () Bool)

(assert (=> b!5454918 m!6476004))

(assert (=> b!5454918 m!6474790))

(assert (=> b!5454918 m!6476004))

(assert (=> b!5454918 m!6474790))

(declare-fun m!6476006 () Bool)

(assert (=> b!5454918 m!6476006))

(assert (=> d!1737018 m!6474766))

(declare-fun m!6476008 () Bool)

(assert (=> d!1737018 m!6476008))

(assert (=> b!5454911 m!6474790))

(assert (=> b!5454911 m!6474790))

(assert (=> b!5454911 m!6474792))

(assert (=> b!5453940 d!1737018))

(declare-fun b!5454960 () Bool)

(declare-fun e!3378286 () Bool)

(declare-fun call!396481 () Bool)

(assert (=> b!5454960 (= e!3378286 call!396481)))

(declare-fun b!5454961 () Bool)

(declare-fun e!3378285 () Bool)

(declare-fun e!3378280 () Bool)

(assert (=> b!5454961 (= e!3378285 e!3378280)))

(declare-fun c!952781 () Bool)

(assert (=> b!5454961 (= c!952781 ((_ is Union!15281) r!7292))))

(declare-fun bm!396475 () Bool)

(declare-fun call!396480 () Bool)

(declare-fun call!396482 () Bool)

(assert (=> bm!396475 (= call!396480 call!396482)))

(declare-fun b!5454962 () Bool)

(declare-fun e!3378284 () Bool)

(assert (=> b!5454962 (= e!3378285 e!3378284)))

(declare-fun res!2323010 () Bool)

(assert (=> b!5454962 (= res!2323010 (not (nullable!5450 (reg!15610 r!7292))))))

(assert (=> b!5454962 (=> (not res!2323010) (not e!3378284))))

(declare-fun bm!396476 () Bool)

(assert (=> bm!396476 (= call!396481 (validRegex!7017 (ite c!952781 (regTwo!31075 r!7292) (regTwo!31074 r!7292))))))

(declare-fun d!1737020 () Bool)

(declare-fun res!2323011 () Bool)

(declare-fun e!3378282 () Bool)

(assert (=> d!1737020 (=> res!2323011 e!3378282)))

(assert (=> d!1737020 (= res!2323011 ((_ is ElementMatch!15281) r!7292))))

(assert (=> d!1737020 (= (validRegex!7017 r!7292) e!3378282)))

(declare-fun b!5454963 () Bool)

(declare-fun res!2323009 () Bool)

(declare-fun e!3378281 () Bool)

(assert (=> b!5454963 (=> res!2323009 e!3378281)))

(assert (=> b!5454963 (= res!2323009 (not ((_ is Concat!24126) r!7292)))))

(assert (=> b!5454963 (= e!3378280 e!3378281)))

(declare-fun b!5454964 () Bool)

(declare-fun e!3378283 () Bool)

(assert (=> b!5454964 (= e!3378281 e!3378283)))

(declare-fun res!2323008 () Bool)

(assert (=> b!5454964 (=> (not res!2323008) (not e!3378283))))

(assert (=> b!5454964 (= res!2323008 call!396480)))

(declare-fun b!5454965 () Bool)

(assert (=> b!5454965 (= e!3378283 call!396481)))

(declare-fun b!5454966 () Bool)

(assert (=> b!5454966 (= e!3378282 e!3378285)))

(declare-fun c!952782 () Bool)

(assert (=> b!5454966 (= c!952782 ((_ is Star!15281) r!7292))))

(declare-fun b!5454967 () Bool)

(assert (=> b!5454967 (= e!3378284 call!396482)))

(declare-fun b!5454968 () Bool)

(declare-fun res!2323012 () Bool)

(assert (=> b!5454968 (=> (not res!2323012) (not e!3378286))))

(assert (=> b!5454968 (= res!2323012 call!396480)))

(assert (=> b!5454968 (= e!3378280 e!3378286)))

(declare-fun bm!396477 () Bool)

(assert (=> bm!396477 (= call!396482 (validRegex!7017 (ite c!952782 (reg!15610 r!7292) (ite c!952781 (regOne!31075 r!7292) (regOne!31074 r!7292)))))))

(assert (= (and d!1737020 (not res!2323011)) b!5454966))

(assert (= (and b!5454966 c!952782) b!5454962))

(assert (= (and b!5454966 (not c!952782)) b!5454961))

(assert (= (and b!5454962 res!2323010) b!5454967))

(assert (= (and b!5454961 c!952781) b!5454968))

(assert (= (and b!5454961 (not c!952781)) b!5454963))

(assert (= (and b!5454968 res!2323012) b!5454960))

(assert (= (and b!5454963 (not res!2323009)) b!5454964))

(assert (= (and b!5454964 res!2323008) b!5454965))

(assert (= (or b!5454960 b!5454965) bm!396476))

(assert (= (or b!5454968 b!5454964) bm!396475))

(assert (= (or b!5454967 bm!396475) bm!396477))

(declare-fun m!6476058 () Bool)

(assert (=> b!5454962 m!6476058))

(declare-fun m!6476060 () Bool)

(assert (=> bm!396476 m!6476060))

(declare-fun m!6476062 () Bool)

(assert (=> bm!396477 m!6476062))

(assert (=> start!571406 d!1737020))

(declare-fun bs!1262098 () Bool)

(declare-fun d!1737034 () Bool)

(assert (= bs!1262098 (and d!1737034 b!5453915)))

(declare-fun lambda!288274 () Int)

(assert (=> bs!1262098 (= lambda!288274 lambda!288175)))

(declare-fun bs!1262099 () Bool)

(assert (= bs!1262099 (and d!1737034 d!1736890)))

(assert (=> bs!1262099 (= lambda!288274 lambda!288249)))

(declare-fun bs!1262100 () Bool)

(assert (= bs!1262100 (and d!1737034 b!5453914)))

(assert (=> bs!1262100 (= lambda!288274 lambda!288164)))

(declare-fun bs!1262101 () Bool)

(assert (= bs!1262101 (and d!1737034 d!1736944)))

(assert (=> bs!1262101 (= lambda!288274 lambda!288270)))

(declare-fun bs!1262102 () Bool)

(assert (= bs!1262102 (and d!1737034 b!5453924)))

(assert (=> bs!1262102 (= lambda!288274 lambda!288166)))

(declare-fun bs!1262103 () Bool)

(assert (= bs!1262103 (and d!1737034 d!1736906)))

(assert (=> bs!1262103 (= lambda!288274 lambda!288257)))

(declare-fun bs!1262104 () Bool)

(assert (= bs!1262104 (and d!1737034 d!1736918)))

(assert (=> bs!1262104 (= lambda!288274 lambda!288261)))

(declare-fun bs!1262105 () Bool)

(assert (= bs!1262105 (and d!1737034 d!1736776)))

(assert (=> bs!1262105 (= lambda!288274 lambda!288206)))

(declare-fun bs!1262106 () Bool)

(assert (= bs!1262106 (and d!1737034 d!1736920)))

(assert (=> bs!1262106 (= lambda!288274 lambda!288264)))

(assert (=> d!1737034 (= (inv!81449 setElem!35689) (forall!14584 (exprs!5165 setElem!35689) lambda!288274))))

(declare-fun bs!1262107 () Bool)

(assert (= bs!1262107 d!1737034))

(declare-fun m!6476064 () Bool)

(assert (=> bs!1262107 m!6476064))

(assert (=> setNonEmpty!35689 d!1737034))

(declare-fun d!1737036 () Bool)

(assert (=> d!1737036 (= (isEmpty!34001 (t!375373 zl!343)) ((_ is Nil!62020) (t!375373 zl!343)))))

(assert (=> b!5453910 d!1737036))

(declare-fun d!1737038 () Bool)

(assert (=> d!1737038 (= (Exists!2462 (ite c!952467 lambda!288156 (ite c!952465 lambda!288161 lambda!288169))) (choose!41402 (ite c!952467 lambda!288156 (ite c!952465 lambda!288161 lambda!288169))))))

(declare-fun bs!1262108 () Bool)

(assert (= bs!1262108 d!1737038))

(declare-fun m!6476066 () Bool)

(assert (=> bs!1262108 m!6476066))

(assert (=> bm!396341 d!1737038))

(declare-fun d!1737040 () Bool)

(assert (=> d!1737040 (= (nullable!5450 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (nullableFct!1635 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(declare-fun bs!1262109 () Bool)

(assert (= bs!1262109 d!1737040))

(declare-fun m!6476068 () Bool)

(assert (=> bs!1262109 m!6476068))

(assert (=> bm!396180 d!1737040))

(declare-fun b!5454969 () Bool)

(declare-fun e!3378289 () (InoxSet Context!9330))

(declare-fun e!3378287 () (InoxSet Context!9330))

(assert (=> b!5454969 (= e!3378289 e!3378287)))

(declare-fun c!952787 () Bool)

(assert (=> b!5454969 (= c!952787 ((_ is Concat!24126) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(declare-fun c!952783 () Bool)

(declare-fun c!952786 () Bool)

(declare-fun call!396483 () List!62143)

(declare-fun bm!396478 () Bool)

(declare-fun call!396484 () (InoxSet Context!9330))

(assert (=> bm!396478 (= call!396484 (derivationStepZipperDown!729 (ite c!952786 (regOne!31075 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (ite c!952783 (regTwo!31074 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (ite c!952787 (regOne!31074 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (reg!15610 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))))))) (ite (or c!952786 c!952783) (ite c!952469 lt!2225444 lt!2225511) (Context!9331 call!396483)) (h!68466 s!2326)))))

(declare-fun b!5454970 () Bool)

(declare-fun e!3378288 () (InoxSet Context!9330))

(assert (=> b!5454970 (= e!3378288 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396479 () Bool)

(declare-fun call!396486 () List!62143)

(assert (=> bm!396479 (= call!396483 call!396486)))

(declare-fun bm!396480 () Bool)

(declare-fun call!396488 () (InoxSet Context!9330))

(declare-fun call!396485 () (InoxSet Context!9330))

(assert (=> bm!396480 (= call!396488 call!396485)))

(declare-fun call!396487 () (InoxSet Context!9330))

(declare-fun bm!396481 () Bool)

(assert (=> bm!396481 (= call!396487 (derivationStepZipperDown!729 (ite c!952786 (regTwo!31075 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (regOne!31074 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))))) (ite c!952786 (ite c!952469 lt!2225444 lt!2225511) (Context!9331 call!396486)) (h!68466 s!2326)))))

(declare-fun b!5454971 () Bool)

(declare-fun e!3378291 () (InoxSet Context!9330))

(declare-fun e!3378290 () (InoxSet Context!9330))

(assert (=> b!5454971 (= e!3378291 e!3378290)))

(assert (=> b!5454971 (= c!952786 ((_ is Union!15281) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(declare-fun d!1737042 () Bool)

(declare-fun c!952785 () Bool)

(assert (=> d!1737042 (= c!952785 (and ((_ is ElementMatch!15281) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (= (c!952474 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (h!68466 s!2326))))))

(assert (=> d!1737042 (= (derivationStepZipperDown!729 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))) (ite c!952469 lt!2225444 lt!2225511) (h!68466 s!2326)) e!3378291)))

(declare-fun b!5454972 () Bool)

(declare-fun e!3378292 () Bool)

(assert (=> b!5454972 (= e!3378292 (nullable!5450 (regOne!31074 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))))))))

(declare-fun bm!396482 () Bool)

(assert (=> bm!396482 (= call!396485 call!396484)))

(declare-fun b!5454973 () Bool)

(assert (=> b!5454973 (= e!3378290 ((_ map or) call!396484 call!396487))))

(declare-fun b!5454974 () Bool)

(assert (=> b!5454974 (= e!3378287 call!396488)))

(declare-fun b!5454975 () Bool)

(assert (=> b!5454975 (= e!3378289 ((_ map or) call!396487 call!396485))))

(declare-fun b!5454976 () Bool)

(assert (=> b!5454976 (= c!952783 e!3378292)))

(declare-fun res!2323013 () Bool)

(assert (=> b!5454976 (=> (not res!2323013) (not e!3378292))))

(assert (=> b!5454976 (= res!2323013 ((_ is Concat!24126) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(assert (=> b!5454976 (= e!3378290 e!3378289)))

(declare-fun b!5454977 () Bool)

(assert (=> b!5454977 (= e!3378291 (store ((as const (Array Context!9330 Bool)) false) (ite c!952469 lt!2225444 lt!2225511) true))))

(declare-fun b!5454978 () Bool)

(assert (=> b!5454978 (= e!3378288 call!396488)))

(declare-fun b!5454979 () Bool)

(declare-fun c!952784 () Bool)

(assert (=> b!5454979 (= c!952784 ((_ is Star!15281) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))))))

(assert (=> b!5454979 (= e!3378287 e!3378288)))

(declare-fun bm!396483 () Bool)

(assert (=> bm!396483 (= call!396486 ($colon$colon!1534 (exprs!5165 (ite c!952469 lt!2225444 lt!2225511)) (ite (or c!952783 c!952787) (regTwo!31074 (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292)))) (ite c!952469 (regTwo!31075 (regOne!31074 r!7292)) (regOne!31074 (regOne!31074 r!7292))))))))

(assert (= (and d!1737042 c!952785) b!5454977))

(assert (= (and d!1737042 (not c!952785)) b!5454971))

(assert (= (and b!5454971 c!952786) b!5454973))

(assert (= (and b!5454971 (not c!952786)) b!5454976))

(assert (= (and b!5454976 res!2323013) b!5454972))

(assert (= (and b!5454976 c!952783) b!5454975))

(assert (= (and b!5454976 (not c!952783)) b!5454969))

(assert (= (and b!5454969 c!952787) b!5454974))

(assert (= (and b!5454969 (not c!952787)) b!5454979))

(assert (= (and b!5454979 c!952784) b!5454978))

(assert (= (and b!5454979 (not c!952784)) b!5454970))

(assert (= (or b!5454974 b!5454978) bm!396479))

(assert (= (or b!5454974 b!5454978) bm!396480))

(assert (= (or b!5454975 bm!396479) bm!396483))

(assert (= (or b!5454975 bm!396480) bm!396482))

(assert (= (or b!5454973 b!5454975) bm!396481))

(assert (= (or b!5454973 bm!396482) bm!396478))

(declare-fun m!6476070 () Bool)

(assert (=> b!5454977 m!6476070))

(declare-fun m!6476072 () Bool)

(assert (=> b!5454972 m!6476072))

(declare-fun m!6476074 () Bool)

(assert (=> bm!396481 m!6476074))

(declare-fun m!6476076 () Bool)

(assert (=> bm!396483 m!6476076))

(declare-fun m!6476078 () Bool)

(assert (=> bm!396478 m!6476078))

(assert (=> bm!396294 d!1737042))

(declare-fun d!1737044 () Bool)

(assert (=> d!1737044 (= (flatMap!1008 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 lt!2225545)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))) (choose!41407 (ite c!952469 lt!2225377 (ite c!952471 lt!2225450 lt!2225545)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))))))

(declare-fun bs!1262110 () Bool)

(assert (= bs!1262110 d!1737044))

(declare-fun m!6476080 () Bool)

(assert (=> bs!1262110 m!6476080))

(assert (=> bm!396278 d!1737044))

(declare-fun d!1737046 () Bool)

(declare-fun c!952788 () Bool)

(assert (=> d!1737046 (= c!952788 (isEmpty!34002 (t!375371 s!2326)))))

(declare-fun e!3378293 () Bool)

(assert (=> d!1737046 (= (matchZipper!1525 lt!2225384 (t!375371 s!2326)) e!3378293)))

(declare-fun b!5454980 () Bool)

(assert (=> b!5454980 (= e!3378293 (nullableZipper!1483 lt!2225384))))

(declare-fun b!5454981 () Bool)

(assert (=> b!5454981 (= e!3378293 (matchZipper!1525 (derivationStepZipper!1500 lt!2225384 (head!11683 (t!375371 s!2326))) (tail!10780 (t!375371 s!2326))))))

(assert (= (and d!1737046 c!952788) b!5454980))

(assert (= (and d!1737046 (not c!952788)) b!5454981))

(assert (=> d!1737046 m!6475640))

(declare-fun m!6476082 () Bool)

(assert (=> b!5454980 m!6476082))

(assert (=> b!5454981 m!6475644))

(assert (=> b!5454981 m!6475644))

(declare-fun m!6476084 () Bool)

(assert (=> b!5454981 m!6476084))

(assert (=> b!5454981 m!6475648))

(assert (=> b!5454981 m!6476084))

(assert (=> b!5454981 m!6475648))

(declare-fun m!6476086 () Bool)

(assert (=> b!5454981 m!6476086))

(assert (=> b!5453957 d!1737046))

(declare-fun d!1737048 () Bool)

(assert (=> d!1737048 (= (flatMap!1008 (ite c!952469 lt!2225377 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 lt!2225399))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952467 lambda!288150 lambda!288150)))) (dynLambda!24401 (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952467 lambda!288150 lambda!288150))) (ite c!952469 lt!2225566 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467)))))))

(declare-fun lt!2225786 () Unit!154792)

(assert (=> d!1737048 (= lt!2225786 (choose!41410 (ite c!952469 lt!2225377 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 lt!2225399))) (ite c!952469 lt!2225566 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952467 lambda!288150 lambda!288150)))))))

(assert (=> d!1737048 (= (ite c!952469 lt!2225377 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 lt!2225399))) (store ((as const (Array Context!9330 Bool)) false) (ite c!952469 lt!2225566 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) true))))

(assert (=> d!1737048 (= (lemmaFlatMapOnSingletonSet!540 (ite c!952469 lt!2225377 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 lt!2225399))) (ite c!952469 lt!2225566 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 (ite c!952467 lambda!288150 lambda!288150)))) lt!2225786)))

(declare-fun b_lambda!207747 () Bool)

(assert (=> (not b_lambda!207747) (not d!1737048)))

(declare-fun bs!1262111 () Bool)

(assert (= bs!1262111 d!1737048))

(declare-fun m!6476088 () Bool)

(assert (=> bs!1262111 m!6476088))

(declare-fun m!6476090 () Bool)

(assert (=> bs!1262111 m!6476090))

(declare-fun m!6476092 () Bool)

(assert (=> bs!1262111 m!6476092))

(declare-fun m!6476094 () Bool)

(assert (=> bs!1262111 m!6476094))

(assert (=> bm!396249 d!1737048))

(declare-fun c!952797 () Bool)

(declare-fun d!1737050 () Bool)

(assert (=> d!1737050 (= c!952797 (isEmpty!34002 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite (or c!952461 c!952463) s!2326 (t!375371 s!2326))))))))

(declare-fun e!3378308 () Bool)

(assert (=> d!1737050 (= (matchZipper!1525 (ite c!952469 lt!2225377 (ite c!952471 lt!2225441 (ite c!952461 z!1189 (ite c!952463 lt!2225375 lt!2225534)))) (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite (or c!952461 c!952463) s!2326 (t!375371 s!2326))))) e!3378308)))

(declare-fun b!5455004 () Bool)

(assert (=> b!5455004 (= e!3378308 (nullableZipper!1483 (ite c!952469 lt!2225377 (ite c!952471 lt!2225441 (ite c!952461 z!1189 (ite c!952463 lt!2225375 lt!2225534))))))))

(declare-fun b!5455005 () Bool)

(assert (=> b!5455005 (= e!3378308 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 lt!2225377 (ite c!952471 lt!2225441 (ite c!952461 z!1189 (ite c!952463 lt!2225375 lt!2225534)))) (head!11683 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite (or c!952461 c!952463) s!2326 (t!375371 s!2326)))))) (tail!10780 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite (or c!952461 c!952463) s!2326 (t!375371 s!2326)))))))))

(assert (= (and d!1737050 c!952797) b!5455004))

(assert (= (and d!1737050 (not c!952797)) b!5455005))

(declare-fun m!6476096 () Bool)

(assert (=> d!1737050 m!6476096))

(declare-fun m!6476098 () Bool)

(assert (=> b!5455004 m!6476098))

(declare-fun m!6476100 () Bool)

(assert (=> b!5455005 m!6476100))

(assert (=> b!5455005 m!6476100))

(declare-fun m!6476102 () Bool)

(assert (=> b!5455005 m!6476102))

(declare-fun m!6476104 () Bool)

(assert (=> b!5455005 m!6476104))

(assert (=> b!5455005 m!6476102))

(assert (=> b!5455005 m!6476104))

(declare-fun m!6476106 () Bool)

(assert (=> b!5455005 m!6476106))

(assert (=> bm!396345 d!1737050))

(declare-fun b!5455061 () Bool)

(declare-fun e!3378348 () Bool)

(declare-fun lt!2225789 () Int)

(declare-fun call!396513 () Int)

(assert (=> b!5455061 (= e!3378348 (> lt!2225789 call!396513))))

(declare-fun bm!396504 () Bool)

(declare-fun call!396510 () Int)

(declare-fun call!396511 () Int)

(assert (=> bm!396504 (= call!396510 call!396511)))

(declare-fun b!5455062 () Bool)

(declare-fun c!952819 () Bool)

(assert (=> b!5455062 (= c!952819 ((_ is Star!15281) r!7292))))

(declare-fun e!3378349 () Bool)

(declare-fun e!3378340 () Bool)

(assert (=> b!5455062 (= e!3378349 e!3378340)))

(declare-fun b!5455063 () Bool)

(declare-fun e!3378346 () Int)

(declare-fun call!396509 () Int)

(assert (=> b!5455063 (= e!3378346 (+ 1 call!396509))))

(declare-fun b!5455064 () Bool)

(declare-fun e!3378343 () Int)

(declare-fun call!396514 () Int)

(assert (=> b!5455064 (= e!3378343 (+ 1 call!396514))))

(declare-fun c!952820 () Bool)

(declare-fun bm!396505 () Bool)

(declare-fun c!952816 () Bool)

(assert (=> bm!396505 (= call!396509 (regexDepth!197 (ite c!952820 (reg!15610 r!7292) (ite c!952816 (regTwo!31075 r!7292) (regOne!31074 r!7292)))))))

(declare-fun b!5455065 () Bool)

(declare-fun e!3378345 () Bool)

(declare-fun e!3378342 () Bool)

(assert (=> b!5455065 (= e!3378345 e!3378342)))

(declare-fun c!952822 () Bool)

(assert (=> b!5455065 (= c!952822 ((_ is Union!15281) r!7292))))

(declare-fun b!5455066 () Bool)

(declare-fun res!2323041 () Bool)

(assert (=> b!5455066 (=> (not res!2323041) (not e!3378348))))

(assert (=> b!5455066 (= res!2323041 (> lt!2225789 call!396510))))

(assert (=> b!5455066 (= e!3378349 e!3378348)))

(declare-fun bm!396506 () Bool)

(declare-fun call!396512 () Int)

(declare-fun call!396515 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!396506 (= call!396514 (maxBigInt!0 (ite c!952816 call!396512 call!396515) (ite c!952816 call!396515 call!396512)))))

(declare-fun b!5455067 () Bool)

(declare-fun e!3378341 () Int)

(assert (=> b!5455067 (= e!3378341 e!3378346)))

(assert (=> b!5455067 (= c!952820 ((_ is Star!15281) r!7292))))

(declare-fun b!5455068 () Bool)

(assert (=> b!5455068 (= e!3378342 e!3378349)))

(declare-fun c!952821 () Bool)

(assert (=> b!5455068 (= c!952821 ((_ is Concat!24126) r!7292))))

(declare-fun b!5455069 () Bool)

(assert (=> b!5455069 (= e!3378341 1)))

(declare-fun bm!396507 () Bool)

(assert (=> bm!396507 (= call!396511 (regexDepth!197 (ite c!952822 (regTwo!31075 r!7292) (ite c!952821 (regOne!31074 r!7292) (reg!15610 r!7292)))))))

(declare-fun bm!396508 () Bool)

(assert (=> bm!396508 (= call!396513 (regexDepth!197 (ite c!952822 (regOne!31075 r!7292) (regTwo!31074 r!7292))))))

(declare-fun bm!396509 () Bool)

(assert (=> bm!396509 (= call!396515 call!396509)))

(declare-fun b!5455070 () Bool)

(assert (=> b!5455070 (= e!3378340 (= lt!2225789 1))))

(declare-fun b!5455071 () Bool)

(assert (=> b!5455071 (= c!952816 ((_ is Union!15281) r!7292))))

(assert (=> b!5455071 (= e!3378346 e!3378343)))

(declare-fun b!5455072 () Bool)

(declare-fun e!3378344 () Int)

(assert (=> b!5455072 (= e!3378343 e!3378344)))

(declare-fun c!952817 () Bool)

(assert (=> b!5455072 (= c!952817 ((_ is Concat!24126) r!7292))))

(declare-fun b!5455073 () Bool)

(assert (=> b!5455073 (= e!3378340 (> lt!2225789 call!396510))))

(declare-fun bm!396510 () Bool)

(assert (=> bm!396510 (= call!396512 (regexDepth!197 (ite c!952816 (regOne!31075 r!7292) (regTwo!31074 r!7292))))))

(declare-fun d!1737052 () Bool)

(assert (=> d!1737052 e!3378345))

(declare-fun res!2323039 () Bool)

(assert (=> d!1737052 (=> (not res!2323039) (not e!3378345))))

(assert (=> d!1737052 (= res!2323039 (> lt!2225789 0))))

(assert (=> d!1737052 (= lt!2225789 e!3378341)))

(declare-fun c!952818 () Bool)

(assert (=> d!1737052 (= c!952818 ((_ is ElementMatch!15281) r!7292))))

(assert (=> d!1737052 (= (regexDepth!197 r!7292) lt!2225789)))

(declare-fun b!5455074 () Bool)

(assert (=> b!5455074 (= e!3378344 (+ 1 call!396514))))

(declare-fun b!5455075 () Bool)

(declare-fun e!3378347 () Bool)

(assert (=> b!5455075 (= e!3378342 e!3378347)))

(declare-fun res!2323040 () Bool)

(assert (=> b!5455075 (= res!2323040 (> lt!2225789 call!396513))))

(assert (=> b!5455075 (=> (not res!2323040) (not e!3378347))))

(declare-fun b!5455076 () Bool)

(assert (=> b!5455076 (= e!3378347 (> lt!2225789 call!396511))))

(declare-fun b!5455077 () Bool)

(assert (=> b!5455077 (= e!3378344 1)))

(assert (= (and d!1737052 c!952818) b!5455069))

(assert (= (and d!1737052 (not c!952818)) b!5455067))

(assert (= (and b!5455067 c!952820) b!5455063))

(assert (= (and b!5455067 (not c!952820)) b!5455071))

(assert (= (and b!5455071 c!952816) b!5455064))

(assert (= (and b!5455071 (not c!952816)) b!5455072))

(assert (= (and b!5455072 c!952817) b!5455074))

(assert (= (and b!5455072 (not c!952817)) b!5455077))

(assert (= (or b!5455064 b!5455074) bm!396509))

(assert (= (or b!5455064 b!5455074) bm!396510))

(assert (= (or b!5455064 b!5455074) bm!396506))

(assert (= (or b!5455063 bm!396509) bm!396505))

(assert (= (and d!1737052 res!2323039) b!5455065))

(assert (= (and b!5455065 c!952822) b!5455075))

(assert (= (and b!5455065 (not c!952822)) b!5455068))

(assert (= (and b!5455075 res!2323040) b!5455076))

(assert (= (and b!5455068 c!952821) b!5455066))

(assert (= (and b!5455068 (not c!952821)) b!5455062))

(assert (= (and b!5455066 res!2323041) b!5455061))

(assert (= (and b!5455062 c!952819) b!5455073))

(assert (= (and b!5455062 (not c!952819)) b!5455070))

(assert (= (or b!5455066 b!5455073) bm!396504))

(assert (= (or b!5455076 bm!396504) bm!396507))

(assert (= (or b!5455075 b!5455061) bm!396508))

(declare-fun m!6476108 () Bool)

(assert (=> bm!396507 m!6476108))

(declare-fun m!6476110 () Bool)

(assert (=> bm!396506 m!6476110))

(declare-fun m!6476112 () Bool)

(assert (=> bm!396505 m!6476112))

(declare-fun m!6476114 () Bool)

(assert (=> bm!396510 m!6476114))

(declare-fun m!6476116 () Bool)

(assert (=> bm!396508 m!6476116))

(assert (=> b!5453948 d!1737052))

(declare-fun b!5455078 () Bool)

(declare-fun e!3378358 () Bool)

(declare-fun lt!2225790 () Int)

(declare-fun call!396520 () Int)

(assert (=> b!5455078 (= e!3378358 (> lt!2225790 call!396520))))

(declare-fun bm!396511 () Bool)

(declare-fun call!396517 () Int)

(declare-fun call!396518 () Int)

(assert (=> bm!396511 (= call!396517 call!396518)))

(declare-fun b!5455079 () Bool)

(declare-fun c!952826 () Bool)

(assert (=> b!5455079 (= c!952826 ((_ is Star!15281) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun e!3378359 () Bool)

(declare-fun e!3378350 () Bool)

(assert (=> b!5455079 (= e!3378359 e!3378350)))

(declare-fun b!5455080 () Bool)

(declare-fun e!3378356 () Int)

(declare-fun call!396516 () Int)

(assert (=> b!5455080 (= e!3378356 (+ 1 call!396516))))

(declare-fun b!5455081 () Bool)

(declare-fun e!3378353 () Int)

(declare-fun call!396521 () Int)

(assert (=> b!5455081 (= e!3378353 (+ 1 call!396521))))

(declare-fun c!952823 () Bool)

(declare-fun bm!396512 () Bool)

(declare-fun c!952827 () Bool)

(assert (=> bm!396512 (= call!396516 (regexDepth!197 (ite c!952827 (reg!15610 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (ite c!952823 (regTwo!31075 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (regOne!31074 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun b!5455082 () Bool)

(declare-fun e!3378355 () Bool)

(declare-fun e!3378352 () Bool)

(assert (=> b!5455082 (= e!3378355 e!3378352)))

(declare-fun c!952829 () Bool)

(assert (=> b!5455082 (= c!952829 ((_ is Union!15281) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455083 () Bool)

(declare-fun res!2323044 () Bool)

(assert (=> b!5455083 (=> (not res!2323044) (not e!3378358))))

(assert (=> b!5455083 (= res!2323044 (> lt!2225790 call!396517))))

(assert (=> b!5455083 (= e!3378359 e!3378358)))

(declare-fun call!396522 () Int)

(declare-fun bm!396513 () Bool)

(declare-fun call!396519 () Int)

(assert (=> bm!396513 (= call!396521 (maxBigInt!0 (ite c!952823 call!396519 call!396522) (ite c!952823 call!396522 call!396519)))))

(declare-fun b!5455084 () Bool)

(declare-fun e!3378351 () Int)

(assert (=> b!5455084 (= e!3378351 e!3378356)))

(assert (=> b!5455084 (= c!952827 ((_ is Star!15281) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455085 () Bool)

(assert (=> b!5455085 (= e!3378352 e!3378359)))

(declare-fun c!952828 () Bool)

(assert (=> b!5455085 (= c!952828 ((_ is Concat!24126) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455086 () Bool)

(assert (=> b!5455086 (= e!3378351 1)))

(declare-fun bm!396514 () Bool)

(assert (=> bm!396514 (= call!396518 (regexDepth!197 (ite c!952829 (regTwo!31075 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (ite c!952828 (regOne!31074 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (reg!15610 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun bm!396515 () Bool)

(assert (=> bm!396515 (= call!396520 (regexDepth!197 (ite c!952829 (regOne!31075 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (regTwo!31074 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))

(declare-fun bm!396516 () Bool)

(assert (=> bm!396516 (= call!396522 call!396516)))

(declare-fun b!5455087 () Bool)

(assert (=> b!5455087 (= e!3378350 (= lt!2225790 1))))

(declare-fun b!5455088 () Bool)

(assert (=> b!5455088 (= c!952823 ((_ is Union!15281) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(assert (=> b!5455088 (= e!3378356 e!3378353)))

(declare-fun b!5455089 () Bool)

(declare-fun e!3378354 () Int)

(assert (=> b!5455089 (= e!3378353 e!3378354)))

(declare-fun c!952824 () Bool)

(assert (=> b!5455089 (= c!952824 ((_ is Concat!24126) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455090 () Bool)

(assert (=> b!5455090 (= e!3378350 (> lt!2225790 call!396517))))

(declare-fun bm!396517 () Bool)

(assert (=> bm!396517 (= call!396519 (regexDepth!197 (ite c!952823 (regOne!31075 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) (regTwo!31074 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))

(declare-fun d!1737054 () Bool)

(assert (=> d!1737054 e!3378355))

(declare-fun res!2323042 () Bool)

(assert (=> d!1737054 (=> (not res!2323042) (not e!3378355))))

(assert (=> d!1737054 (= res!2323042 (> lt!2225790 0))))

(assert (=> d!1737054 (= lt!2225790 e!3378351)))

(declare-fun c!952825 () Bool)

(assert (=> d!1737054 (= c!952825 ((_ is ElementMatch!15281) (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(assert (=> d!1737054 (= (regexDepth!197 (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343))))) lt!2225790)))

(declare-fun b!5455091 () Bool)

(assert (=> b!5455091 (= e!3378354 (+ 1 call!396521))))

(declare-fun b!5455092 () Bool)

(declare-fun e!3378357 () Bool)

(assert (=> b!5455092 (= e!3378352 e!3378357)))

(declare-fun res!2323043 () Bool)

(assert (=> b!5455092 (= res!2323043 (> lt!2225790 call!396520))))

(assert (=> b!5455092 (=> (not res!2323043) (not e!3378357))))

(declare-fun b!5455093 () Bool)

(assert (=> b!5455093 (= e!3378357 (> lt!2225790 call!396518))))

(declare-fun b!5455094 () Bool)

(assert (=> b!5455094 (= e!3378354 1)))

(assert (= (and d!1737054 c!952825) b!5455086))

(assert (= (and d!1737054 (not c!952825)) b!5455084))

(assert (= (and b!5455084 c!952827) b!5455080))

(assert (= (and b!5455084 (not c!952827)) b!5455088))

(assert (= (and b!5455088 c!952823) b!5455081))

(assert (= (and b!5455088 (not c!952823)) b!5455089))

(assert (= (and b!5455089 c!952824) b!5455091))

(assert (= (and b!5455089 (not c!952824)) b!5455094))

(assert (= (or b!5455081 b!5455091) bm!396516))

(assert (= (or b!5455081 b!5455091) bm!396517))

(assert (= (or b!5455081 b!5455091) bm!396513))

(assert (= (or b!5455080 bm!396516) bm!396512))

(assert (= (and d!1737054 res!2323042) b!5455082))

(assert (= (and b!5455082 c!952829) b!5455092))

(assert (= (and b!5455082 (not c!952829)) b!5455085))

(assert (= (and b!5455092 res!2323043) b!5455093))

(assert (= (and b!5455085 c!952828) b!5455083))

(assert (= (and b!5455085 (not c!952828)) b!5455079))

(assert (= (and b!5455083 res!2323044) b!5455078))

(assert (= (and b!5455079 c!952826) b!5455090))

(assert (= (and b!5455079 (not c!952826)) b!5455087))

(assert (= (or b!5455083 b!5455090) bm!396511))

(assert (= (or b!5455093 bm!396511) bm!396514))

(assert (= (or b!5455092 b!5455078) bm!396515))

(declare-fun m!6476118 () Bool)

(assert (=> bm!396514 m!6476118))

(declare-fun m!6476120 () Bool)

(assert (=> bm!396513 m!6476120))

(declare-fun m!6476122 () Bool)

(assert (=> bm!396512 m!6476122))

(declare-fun m!6476124 () Bool)

(assert (=> bm!396517 m!6476124))

(declare-fun m!6476126 () Bool)

(assert (=> bm!396515 m!6476126))

(assert (=> b!5453948 d!1737054))

(declare-fun bs!1262132 () Bool)

(declare-fun d!1737056 () Bool)

(assert (= bs!1262132 (and d!1737056 b!5453915)))

(declare-fun lambda!288281 () Int)

(assert (=> bs!1262132 (= lambda!288281 lambda!288175)))

(declare-fun bs!1262134 () Bool)

(assert (= bs!1262134 (and d!1737056 d!1736890)))

(assert (=> bs!1262134 (= lambda!288281 lambda!288249)))

(declare-fun bs!1262135 () Bool)

(assert (= bs!1262135 (and d!1737056 d!1737034)))

(assert (=> bs!1262135 (= lambda!288281 lambda!288274)))

(declare-fun bs!1262136 () Bool)

(assert (= bs!1262136 (and d!1737056 b!5453914)))

(assert (=> bs!1262136 (= lambda!288281 lambda!288164)))

(declare-fun bs!1262137 () Bool)

(assert (= bs!1262137 (and d!1737056 d!1736944)))

(assert (=> bs!1262137 (= lambda!288281 lambda!288270)))

(declare-fun bs!1262138 () Bool)

(assert (= bs!1262138 (and d!1737056 b!5453924)))

(assert (=> bs!1262138 (= lambda!288281 lambda!288166)))

(declare-fun bs!1262139 () Bool)

(assert (= bs!1262139 (and d!1737056 d!1736906)))

(assert (=> bs!1262139 (= lambda!288281 lambda!288257)))

(declare-fun bs!1262140 () Bool)

(assert (= bs!1262140 (and d!1737056 d!1736918)))

(assert (=> bs!1262140 (= lambda!288281 lambda!288261)))

(declare-fun bs!1262142 () Bool)

(assert (= bs!1262142 (and d!1737056 d!1736776)))

(assert (=> bs!1262142 (= lambda!288281 lambda!288206)))

(declare-fun bs!1262143 () Bool)

(assert (= bs!1262143 (and d!1737056 d!1736920)))

(assert (=> bs!1262143 (= lambda!288281 lambda!288264)))

(declare-fun e!3378362 () Bool)

(assert (=> d!1737056 e!3378362))

(declare-fun res!2323046 () Bool)

(assert (=> d!1737056 (=> (not res!2323046) (not e!3378362))))

(declare-fun lt!2225791 () Regex!15281)

(assert (=> d!1737056 (= res!2323046 (validRegex!7017 lt!2225791))))

(declare-fun e!3378360 () Regex!15281)

(assert (=> d!1737056 (= lt!2225791 e!3378360)))

(declare-fun c!952830 () Bool)

(declare-fun e!3378365 () Bool)

(assert (=> d!1737056 (= c!952830 e!3378365)))

(declare-fun res!2323045 () Bool)

(assert (=> d!1737056 (=> (not res!2323045) (not e!3378365))))

(assert (=> d!1737056 (= res!2323045 ((_ is Cons!62019) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> d!1737056 (forall!14584 (t!375372 (exprs!5165 (h!68468 zl!343))) lambda!288281)))

(assert (=> d!1737056 (= (generalisedConcat!950 (t!375372 (exprs!5165 (h!68468 zl!343)))) lt!2225791)))

(declare-fun b!5455095 () Bool)

(declare-fun e!3378363 () Regex!15281)

(assert (=> b!5455095 (= e!3378363 EmptyExpr!15281)))

(declare-fun b!5455096 () Bool)

(declare-fun e!3378361 () Bool)

(assert (=> b!5455096 (= e!3378361 (isEmptyExpr!1016 lt!2225791))))

(declare-fun b!5455097 () Bool)

(assert (=> b!5455097 (= e!3378363 (Concat!24126 (h!68467 (t!375372 (exprs!5165 (h!68468 zl!343)))) (generalisedConcat!950 (t!375372 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))

(declare-fun b!5455098 () Bool)

(assert (=> b!5455098 (= e!3378362 e!3378361)))

(declare-fun c!952832 () Bool)

(assert (=> b!5455098 (= c!952832 (isEmpty!34003 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5455099 () Bool)

(declare-fun e!3378364 () Bool)

(assert (=> b!5455099 (= e!3378361 e!3378364)))

(declare-fun c!952831 () Bool)

(assert (=> b!5455099 (= c!952831 (isEmpty!34003 (tail!10783 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455100 () Bool)

(assert (=> b!5455100 (= e!3378365 (isEmpty!34003 (t!375372 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455101 () Bool)

(assert (=> b!5455101 (= e!3378360 e!3378363)))

(declare-fun c!952833 () Bool)

(assert (=> b!5455101 (= c!952833 ((_ is Cons!62019) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(declare-fun b!5455102 () Bool)

(assert (=> b!5455102 (= e!3378364 (= lt!2225791 (head!11686 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455103 () Bool)

(assert (=> b!5455103 (= e!3378364 (isConcat!539 lt!2225791))))

(declare-fun b!5455104 () Bool)

(assert (=> b!5455104 (= e!3378360 (h!68467 (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(assert (= (and d!1737056 res!2323045) b!5455100))

(assert (= (and d!1737056 c!952830) b!5455104))

(assert (= (and d!1737056 (not c!952830)) b!5455101))

(assert (= (and b!5455101 c!952833) b!5455097))

(assert (= (and b!5455101 (not c!952833)) b!5455095))

(assert (= (and d!1737056 res!2323046) b!5455098))

(assert (= (and b!5455098 c!952832) b!5455096))

(assert (= (and b!5455098 (not c!952832)) b!5455099))

(assert (= (and b!5455099 c!952831) b!5455102))

(assert (= (and b!5455099 (not c!952831)) b!5455103))

(declare-fun m!6476128 () Bool)

(assert (=> b!5455100 m!6476128))

(declare-fun m!6476130 () Bool)

(assert (=> b!5455103 m!6476130))

(declare-fun m!6476132 () Bool)

(assert (=> b!5455102 m!6476132))

(assert (=> b!5455098 m!6474620))

(declare-fun m!6476134 () Bool)

(assert (=> b!5455097 m!6476134))

(declare-fun m!6476136 () Bool)

(assert (=> d!1737056 m!6476136))

(declare-fun m!6476138 () Bool)

(assert (=> d!1737056 m!6476138))

(declare-fun m!6476140 () Bool)

(assert (=> b!5455099 m!6476140))

(assert (=> b!5455099 m!6476140))

(declare-fun m!6476142 () Bool)

(assert (=> b!5455099 m!6476142))

(declare-fun m!6476144 () Bool)

(assert (=> b!5455096 m!6476144))

(assert (=> b!5453948 d!1737056))

(declare-fun e!3378367 () Bool)

(declare-fun b!5455105 () Bool)

(assert (=> b!5455105 (= e!3378367 (nullable!5450 (h!68467 (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467)))))))))

(declare-fun d!1737058 () Bool)

(declare-fun c!952835 () Bool)

(assert (=> d!1737058 (= c!952835 e!3378367)))

(declare-fun res!2323047 () Bool)

(assert (=> d!1737058 (=> (not res!2323047) (not e!3378367))))

(assert (=> d!1737058 (= res!2323047 ((_ is Cons!62019) (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))))))))

(declare-fun e!3378368 () (InoxSet Context!9330))

(assert (=> d!1737058 (= (derivationStepZipperUp!653 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))) (h!68466 s!2326)) e!3378368)))

(declare-fun b!5455106 () Bool)

(declare-fun e!3378366 () (InoxSet Context!9330))

(declare-fun call!396523 () (InoxSet Context!9330))

(assert (=> b!5455106 (= e!3378366 call!396523)))

(declare-fun b!5455107 () Bool)

(assert (=> b!5455107 (= e!3378368 ((_ map or) call!396523 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467)))))) (h!68466 s!2326))))))

(declare-fun b!5455108 () Bool)

(assert (=> b!5455108 (= e!3378368 e!3378366)))

(declare-fun c!952834 () Bool)

(assert (=> b!5455108 (= c!952834 ((_ is Cons!62019) (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))))))))

(declare-fun b!5455109 () Bool)

(assert (=> b!5455109 (= e!3378366 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396518 () Bool)

(assert (=> bm!396518 (= call!396523 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467))))) (Context!9331 (t!375372 (exprs!5165 (ite c!952469 lt!2225540 (ite c!952471 lt!2225511 (ite c!952467 lt!2225468 lt!2225467)))))) (h!68466 s!2326)))))

(assert (= (and d!1737058 res!2323047) b!5455105))

(assert (= (and d!1737058 c!952835) b!5455107))

(assert (= (and d!1737058 (not c!952835)) b!5455108))

(assert (= (and b!5455108 c!952834) b!5455106))

(assert (= (and b!5455108 (not c!952834)) b!5455109))

(assert (= (or b!5455107 b!5455106) bm!396518))

(declare-fun m!6476146 () Bool)

(assert (=> b!5455105 m!6476146))

(declare-fun m!6476148 () Bool)

(assert (=> b!5455107 m!6476148))

(declare-fun m!6476150 () Bool)

(assert (=> bm!396518 m!6476150))

(assert (=> bm!396252 d!1737058))

(declare-fun bs!1262147 () Bool)

(declare-fun d!1737060 () Bool)

(assert (= bs!1262147 (and d!1737060 b!5453915)))

(declare-fun lambda!288282 () Int)

(assert (=> bs!1262147 (= lambda!288282 lambda!288175)))

(declare-fun bs!1262148 () Bool)

(assert (= bs!1262148 (and d!1737060 d!1736890)))

(assert (=> bs!1262148 (= lambda!288282 lambda!288249)))

(declare-fun bs!1262149 () Bool)

(assert (= bs!1262149 (and d!1737060 d!1737034)))

(assert (=> bs!1262149 (= lambda!288282 lambda!288274)))

(declare-fun bs!1262150 () Bool)

(assert (= bs!1262150 (and d!1737060 b!5453914)))

(assert (=> bs!1262150 (= lambda!288282 lambda!288164)))

(declare-fun bs!1262151 () Bool)

(assert (= bs!1262151 (and d!1737060 d!1736944)))

(assert (=> bs!1262151 (= lambda!288282 lambda!288270)))

(declare-fun bs!1262152 () Bool)

(assert (= bs!1262152 (and d!1737060 d!1736906)))

(assert (=> bs!1262152 (= lambda!288282 lambda!288257)))

(declare-fun bs!1262153 () Bool)

(assert (= bs!1262153 (and d!1737060 d!1736918)))

(assert (=> bs!1262153 (= lambda!288282 lambda!288261)))

(declare-fun bs!1262154 () Bool)

(assert (= bs!1262154 (and d!1737060 d!1736776)))

(assert (=> bs!1262154 (= lambda!288282 lambda!288206)))

(declare-fun bs!1262155 () Bool)

(assert (= bs!1262155 (and d!1737060 d!1736920)))

(assert (=> bs!1262155 (= lambda!288282 lambda!288264)))

(declare-fun bs!1262156 () Bool)

(assert (= bs!1262156 (and d!1737060 b!5453924)))

(assert (=> bs!1262156 (= lambda!288282 lambda!288166)))

(declare-fun bs!1262157 () Bool)

(assert (= bs!1262157 (and d!1737060 d!1737056)))

(assert (=> bs!1262157 (= lambda!288282 lambda!288281)))

(declare-fun e!3378371 () Bool)

(assert (=> d!1737060 e!3378371))

(declare-fun res!2323049 () Bool)

(assert (=> d!1737060 (=> (not res!2323049) (not e!3378371))))

(declare-fun lt!2225792 () Regex!15281)

(assert (=> d!1737060 (= res!2323049 (validRegex!7017 lt!2225792))))

(declare-fun e!3378369 () Regex!15281)

(assert (=> d!1737060 (= lt!2225792 e!3378369)))

(declare-fun c!952836 () Bool)

(declare-fun e!3378374 () Bool)

(assert (=> d!1737060 (= c!952836 e!3378374)))

(declare-fun res!2323048 () Bool)

(assert (=> d!1737060 (=> (not res!2323048) (not e!3378374))))

(assert (=> d!1737060 (= res!2323048 ((_ is Cons!62019) (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(assert (=> d!1737060 (forall!14584 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343))))))) lambda!288282)))

(assert (=> d!1737060 (= (generalisedConcat!950 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))) lt!2225792)))

(declare-fun b!5455110 () Bool)

(declare-fun e!3378372 () Regex!15281)

(assert (=> b!5455110 (= e!3378372 EmptyExpr!15281)))

(declare-fun b!5455111 () Bool)

(declare-fun e!3378370 () Bool)

(assert (=> b!5455111 (= e!3378370 (isEmptyExpr!1016 lt!2225792))))

(declare-fun b!5455112 () Bool)

(assert (=> b!5455112 (= e!3378372 (Concat!24126 (h!68467 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))) (generalisedConcat!950 (t!375372 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))))

(declare-fun b!5455113 () Bool)

(assert (=> b!5455113 (= e!3378371 e!3378370)))

(declare-fun c!952838 () Bool)

(assert (=> b!5455113 (= c!952838 (isEmpty!34003 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun b!5455114 () Bool)

(declare-fun e!3378373 () Bool)

(assert (=> b!5455114 (= e!3378370 e!3378373)))

(declare-fun c!952837 () Bool)

(assert (=> b!5455114 (= c!952837 (isEmpty!34003 (tail!10783 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))))

(declare-fun b!5455115 () Bool)

(assert (=> b!5455115 (= e!3378374 (isEmpty!34003 (t!375372 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))))

(declare-fun b!5455116 () Bool)

(assert (=> b!5455116 (= e!3378369 e!3378372)))

(declare-fun c!952839 () Bool)

(assert (=> b!5455116 (= c!952839 ((_ is Cons!62019) (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(declare-fun b!5455117 () Bool)

(assert (=> b!5455117 (= e!3378373 (= lt!2225792 (head!11686 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))))

(declare-fun b!5455118 () Bool)

(assert (=> b!5455118 (= e!3378373 (isConcat!539 lt!2225792))))

(declare-fun b!5455119 () Bool)

(assert (=> b!5455119 (= e!3378369 (h!68467 (ite c!952472 (t!375372 (exprs!5165 (h!68468 zl!343))) (ite c!952469 lt!2225552 (ite c!952471 lt!2225367 (ite c!952467 lt!2225539 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))))

(assert (= (and d!1737060 res!2323048) b!5455115))

(assert (= (and d!1737060 c!952836) b!5455119))

(assert (= (and d!1737060 (not c!952836)) b!5455116))

(assert (= (and b!5455116 c!952839) b!5455112))

(assert (= (and b!5455116 (not c!952839)) b!5455110))

(assert (= (and d!1737060 res!2323049) b!5455113))

(assert (= (and b!5455113 c!952838) b!5455111))

(assert (= (and b!5455113 (not c!952838)) b!5455114))

(assert (= (and b!5455114 c!952837) b!5455117))

(assert (= (and b!5455114 (not c!952837)) b!5455118))

(declare-fun m!6476158 () Bool)

(assert (=> b!5455115 m!6476158))

(declare-fun m!6476160 () Bool)

(assert (=> b!5455118 m!6476160))

(declare-fun m!6476162 () Bool)

(assert (=> b!5455117 m!6476162))

(declare-fun m!6476164 () Bool)

(assert (=> b!5455113 m!6476164))

(declare-fun m!6476166 () Bool)

(assert (=> b!5455112 m!6476166))

(declare-fun m!6476168 () Bool)

(assert (=> d!1737060 m!6476168))

(declare-fun m!6476170 () Bool)

(assert (=> d!1737060 m!6476170))

(declare-fun m!6476172 () Bool)

(assert (=> b!5455114 m!6476172))

(assert (=> b!5455114 m!6476172))

(declare-fun m!6476174 () Bool)

(assert (=> b!5455114 m!6476174))

(declare-fun m!6476176 () Bool)

(assert (=> b!5455111 m!6476176))

(assert (=> bm!396184 d!1737060))

(declare-fun d!1737064 () Bool)

(declare-fun e!3378375 () Bool)

(assert (=> d!1737064 (= (matchZipper!1525 ((_ map or) (ite c!952469 lt!2225487 (ite c!952471 lt!2225441 lt!2225534)) (ite c!952469 lt!2225384 (ite c!952471 lt!2225439 lt!2225384))) (t!375371 s!2326)) e!3378375)))

(declare-fun res!2323050 () Bool)

(assert (=> d!1737064 (=> res!2323050 e!3378375)))

(assert (=> d!1737064 (= res!2323050 (matchZipper!1525 (ite c!952469 lt!2225487 (ite c!952471 lt!2225441 lt!2225534)) (t!375371 s!2326)))))

(declare-fun lt!2225793 () Unit!154792)

(assert (=> d!1737064 (= lt!2225793 (choose!41409 (ite c!952469 lt!2225487 (ite c!952471 lt!2225441 lt!2225534)) (ite c!952469 lt!2225384 (ite c!952471 lt!2225439 lt!2225384)) (t!375371 s!2326)))))

(assert (=> d!1737064 (= (lemmaZipperConcatMatchesSameAsBothZippers!518 (ite c!952469 lt!2225487 (ite c!952471 lt!2225441 lt!2225534)) (ite c!952469 lt!2225384 (ite c!952471 lt!2225439 lt!2225384)) (t!375371 s!2326)) lt!2225793)))

(declare-fun b!5455120 () Bool)

(assert (=> b!5455120 (= e!3378375 (matchZipper!1525 (ite c!952469 lt!2225384 (ite c!952471 lt!2225439 lt!2225384)) (t!375371 s!2326)))))

(assert (= (and d!1737064 (not res!2323050)) b!5455120))

(declare-fun m!6476178 () Bool)

(assert (=> d!1737064 m!6476178))

(declare-fun m!6476180 () Bool)

(assert (=> d!1737064 m!6476180))

(declare-fun m!6476182 () Bool)

(assert (=> d!1737064 m!6476182))

(declare-fun m!6476184 () Bool)

(assert (=> b!5455120 m!6476184))

(assert (=> bm!396300 d!1737064))

(declare-fun b!5455121 () Bool)

(declare-fun e!3378381 () Bool)

(declare-fun lt!2225796 () Bool)

(assert (=> b!5455121 (= e!3378381 (not lt!2225796))))

(declare-fun b!5455122 () Bool)

(declare-fun res!2323052 () Bool)

(declare-fun e!3378378 () Bool)

(assert (=> b!5455122 (=> res!2323052 e!3378378)))

(assert (=> b!5455122 (= res!2323052 (not (isEmpty!34002 (tail!10780 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))))))))

(declare-fun b!5455123 () Bool)

(declare-fun e!3378382 () Bool)

(declare-fun e!3378380 () Bool)

(assert (=> b!5455123 (= e!3378382 e!3378380)))

(declare-fun res!2323054 () Bool)

(assert (=> b!5455123 (=> (not res!2323054) (not e!3378380))))

(assert (=> b!5455123 (= res!2323054 (not lt!2225796))))

(declare-fun b!5455124 () Bool)

(declare-fun res!2323056 () Bool)

(declare-fun e!3378377 () Bool)

(assert (=> b!5455124 (=> (not res!2323056) (not e!3378377))))

(declare-fun call!396524 () Bool)

(assert (=> b!5455124 (= res!2323056 (not call!396524))))

(declare-fun b!5455125 () Bool)

(declare-fun res!2323055 () Bool)

(assert (=> b!5455125 (=> (not res!2323055) (not e!3378377))))

(assert (=> b!5455125 (= res!2323055 (isEmpty!34002 (tail!10780 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495)))))))

(declare-fun b!5455126 () Bool)

(declare-fun e!3378376 () Bool)

(assert (=> b!5455126 (= e!3378376 e!3378381)))

(declare-fun c!952840 () Bool)

(assert (=> b!5455126 (= c!952840 ((_ is EmptyLang!15281) (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374))))))

(declare-fun b!5455127 () Bool)

(declare-fun e!3378379 () Bool)

(assert (=> b!5455127 (= e!3378379 (nullable!5450 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374))))))

(declare-fun d!1737066 () Bool)

(assert (=> d!1737066 e!3378376))

(declare-fun c!952841 () Bool)

(assert (=> d!1737066 (= c!952841 ((_ is EmptyExpr!15281) (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374))))))

(assert (=> d!1737066 (= lt!2225796 e!3378379)))

(declare-fun c!952842 () Bool)

(assert (=> d!1737066 (= c!952842 (isEmpty!34002 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))))))

(assert (=> d!1737066 (validRegex!7017 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)))))

(assert (=> d!1737066 (= (matchR!7466 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)) (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))) lt!2225796)))

(declare-fun b!5455128 () Bool)

(assert (=> b!5455128 (= e!3378376 (= lt!2225796 call!396524))))

(declare-fun b!5455129 () Bool)

(assert (=> b!5455129 (= e!3378379 (matchR!7466 (derivativeStep!4304 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)) (head!11683 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495)))) (tail!10780 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495)))))))

(declare-fun b!5455130 () Bool)

(declare-fun res!2323058 () Bool)

(assert (=> b!5455130 (=> res!2323058 e!3378382)))

(assert (=> b!5455130 (= res!2323058 e!3378377)))

(declare-fun res!2323057 () Bool)

(assert (=> b!5455130 (=> (not res!2323057) (not e!3378377))))

(assert (=> b!5455130 (= res!2323057 lt!2225796)))

(declare-fun bm!396519 () Bool)

(assert (=> bm!396519 (= call!396524 (isEmpty!34002 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))))))

(declare-fun b!5455131 () Bool)

(assert (=> b!5455131 (= e!3378380 e!3378378)))

(declare-fun res!2323053 () Bool)

(assert (=> b!5455131 (=> res!2323053 e!3378378)))

(assert (=> b!5455131 (= res!2323053 call!396524)))

(declare-fun b!5455132 () Bool)

(declare-fun res!2323051 () Bool)

(assert (=> b!5455132 (=> res!2323051 e!3378382)))

(assert (=> b!5455132 (= res!2323051 (not ((_ is ElementMatch!15281) (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)))))))

(assert (=> b!5455132 (= e!3378381 e!3378382)))

(declare-fun b!5455133 () Bool)

(assert (=> b!5455133 (= e!3378377 (= (head!11683 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))) (c!952474 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374)))))))

(declare-fun b!5455134 () Bool)

(assert (=> b!5455134 (= e!3378378 (not (= (head!11683 (ite c!952467 s!2326 (ite c!952465 lt!2225455 lt!2225495))) (c!952474 (ite c!952467 lt!2225465 (ite c!952465 lt!2225480 lt!2225374))))))))

(assert (= (and d!1737066 c!952842) b!5455127))

(assert (= (and d!1737066 (not c!952842)) b!5455129))

(assert (= (and d!1737066 c!952841) b!5455128))

(assert (= (and d!1737066 (not c!952841)) b!5455126))

(assert (= (and b!5455126 c!952840) b!5455121))

(assert (= (and b!5455126 (not c!952840)) b!5455132))

(assert (= (and b!5455132 (not res!2323051)) b!5455130))

(assert (= (and b!5455130 res!2323057) b!5455124))

(assert (= (and b!5455124 res!2323056) b!5455125))

(assert (= (and b!5455125 res!2323055) b!5455133))

(assert (= (and b!5455130 (not res!2323058)) b!5455123))

(assert (= (and b!5455123 res!2323054) b!5455131))

(assert (= (and b!5455131 (not res!2323053)) b!5455122))

(assert (= (and b!5455122 (not res!2323052)) b!5455134))

(assert (= (or b!5455128 b!5455124 b!5455131) bm!396519))

(declare-fun m!6476188 () Bool)

(assert (=> b!5455127 m!6476188))

(declare-fun m!6476190 () Bool)

(assert (=> b!5455134 m!6476190))

(declare-fun m!6476192 () Bool)

(assert (=> bm!396519 m!6476192))

(assert (=> b!5455133 m!6476190))

(declare-fun m!6476194 () Bool)

(assert (=> b!5455125 m!6476194))

(assert (=> b!5455125 m!6476194))

(declare-fun m!6476196 () Bool)

(assert (=> b!5455125 m!6476196))

(assert (=> b!5455129 m!6476190))

(assert (=> b!5455129 m!6476190))

(declare-fun m!6476198 () Bool)

(assert (=> b!5455129 m!6476198))

(assert (=> b!5455129 m!6476194))

(assert (=> b!5455129 m!6476198))

(assert (=> b!5455129 m!6476194))

(declare-fun m!6476200 () Bool)

(assert (=> b!5455129 m!6476200))

(assert (=> d!1737066 m!6476192))

(declare-fun m!6476202 () Bool)

(assert (=> d!1737066 m!6476202))

(assert (=> b!5455122 m!6476194))

(assert (=> b!5455122 m!6476194))

(assert (=> b!5455122 m!6476196))

(assert (=> bm!396284 d!1737066))

(declare-fun d!1737070 () Bool)

(assert (=> d!1737070 (= (matchR!7466 (Concat!24126 (Concat!24126 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))) (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374)) (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292)))) s!2326) (matchR!7466 (Concat!24126 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))) (Concat!24126 (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374) (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))))) s!2326))))

(declare-fun lt!2225801 () Unit!154792)

(declare-fun choose!41432 (Regex!15281 Regex!15281 Regex!15281 List!62142) Unit!154792)

(assert (=> d!1737070 (= lt!2225801 (choose!41432 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))) (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374) (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326))))

(declare-fun e!3378399 () Bool)

(assert (=> d!1737070 e!3378399))

(declare-fun res!2323074 () Bool)

(assert (=> d!1737070 (=> (not res!2323074) (not e!3378399))))

(assert (=> d!1737070 (= res!2323074 (validRegex!7017 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))

(assert (=> d!1737070 (= (lemmaConcatAssociative!76 (ite (or c!952471 c!952467) (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))) (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374) (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326) lt!2225801)))

(declare-fun b!5455164 () Bool)

(declare-fun res!2323075 () Bool)

(assert (=> b!5455164 (=> (not res!2323075) (not e!3378399))))

(assert (=> b!5455164 (= res!2323075 (validRegex!7017 (ite (or c!952471 c!952467) (regTwo!31074 (regOne!31074 r!7292)) lt!2225374)))))

(declare-fun b!5455165 () Bool)

(assert (=> b!5455165 (= e!3378399 (validRegex!7017 (ite c!952471 lt!2225531 (ite c!952467 lt!2225526 (regTwo!31074 r!7292)))))))

(assert (= (and d!1737070 res!2323074) b!5455164))

(assert (= (and b!5455164 res!2323075) b!5455165))

(declare-fun m!6476220 () Bool)

(assert (=> d!1737070 m!6476220))

(declare-fun m!6476222 () Bool)

(assert (=> d!1737070 m!6476222))

(declare-fun m!6476224 () Bool)

(assert (=> d!1737070 m!6476224))

(declare-fun m!6476226 () Bool)

(assert (=> d!1737070 m!6476226))

(declare-fun m!6476228 () Bool)

(assert (=> b!5455164 m!6476228))

(declare-fun m!6476230 () Bool)

(assert (=> b!5455165 m!6476230))

(assert (=> bm!396240 d!1737070))

(declare-fun d!1737074 () Bool)

(declare-fun isEmpty!34005 (Option!15392) Bool)

(assert (=> d!1737074 (= (isDefined!12095 (ite c!952471 call!396299 (ite c!952467 call!396181 (ite c!952465 lt!2225514 lt!2225497)))) (not (isEmpty!34005 (ite c!952471 call!396299 (ite c!952467 call!396181 (ite c!952465 lt!2225514 lt!2225497))))))))

(declare-fun bs!1262173 () Bool)

(assert (= bs!1262173 d!1737074))

(declare-fun m!6476232 () Bool)

(assert (=> bs!1262173 m!6476232))

(assert (=> bm!396204 d!1737074))

(assert (=> b!5453919 d!1737046))

(declare-fun b!5455188 () Bool)

(assert (=> b!5455188 true))

(declare-fun bs!1262204 () Bool)

(declare-fun b!5455190 () Bool)

(assert (= bs!1262204 (and b!5455190 b!5455188)))

(declare-fun lt!2225814 () Int)

(declare-fun lambda!288294 () Int)

(declare-fun lt!2225813 () Int)

(declare-fun lambda!288293 () Int)

(assert (=> bs!1262204 (= (= lt!2225814 lt!2225813) (= lambda!288294 lambda!288293))))

(assert (=> b!5455190 true))

(declare-fun d!1737076 () Bool)

(declare-fun e!3378414 () Bool)

(assert (=> d!1737076 e!3378414))

(declare-fun res!2323082 () Bool)

(assert (=> d!1737076 (=> (not res!2323082) (not e!3378414))))

(assert (=> d!1737076 (= res!2323082 (>= lt!2225814 0))))

(declare-fun e!3378415 () Int)

(assert (=> d!1737076 (= lt!2225814 e!3378415)))

(declare-fun c!952864 () Bool)

(assert (=> d!1737076 (= c!952864 ((_ is Cons!62020) zl!343))))

(assert (=> d!1737076 (= (zipperDepth!182 zl!343) lt!2225814)))

(assert (=> b!5455188 (= e!3378415 lt!2225813)))

(declare-fun contextDepth!99 (Context!9330) Int)

(assert (=> b!5455188 (= lt!2225813 (maxBigInt!0 (contextDepth!99 (h!68468 zl!343)) (zipperDepth!182 (t!375373 zl!343))))))

(declare-fun lt!2225811 () Unit!154792)

(declare-fun lambda!288292 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!93 (List!62144 Int Int Int) Unit!154792)

(assert (=> b!5455188 (= lt!2225811 (lemmaForallContextDepthBiggerThanTransitive!93 (t!375373 zl!343) lt!2225813 (zipperDepth!182 (t!375373 zl!343)) lambda!288292))))

(declare-fun forall!14586 (List!62144 Int) Bool)

(assert (=> b!5455188 (forall!14586 (t!375373 zl!343) lambda!288293)))

(declare-fun lt!2225812 () Unit!154792)

(assert (=> b!5455188 (= lt!2225812 lt!2225811)))

(declare-fun b!5455189 () Bool)

(assert (=> b!5455189 (= e!3378415 0)))

(assert (=> b!5455190 (= e!3378414 (forall!14586 zl!343 lambda!288294))))

(assert (= (and d!1737076 c!952864) b!5455188))

(assert (= (and d!1737076 (not c!952864)) b!5455189))

(assert (= (and d!1737076 res!2323082) b!5455190))

(declare-fun m!6476264 () Bool)

(assert (=> b!5455188 m!6476264))

(declare-fun m!6476266 () Bool)

(assert (=> b!5455188 m!6476266))

(declare-fun m!6476268 () Bool)

(assert (=> b!5455188 m!6476268))

(assert (=> b!5455188 m!6476266))

(assert (=> b!5455188 m!6476266))

(declare-fun m!6476270 () Bool)

(assert (=> b!5455188 m!6476270))

(assert (=> b!5455188 m!6476264))

(declare-fun m!6476272 () Bool)

(assert (=> b!5455188 m!6476272))

(declare-fun m!6476274 () Bool)

(assert (=> b!5455190 m!6476274))

(assert (=> b!5453954 d!1737076))

(declare-fun bs!1262209 () Bool)

(declare-fun b!5455193 () Bool)

(assert (= bs!1262209 (and b!5455193 b!5455188)))

(declare-fun lambda!288295 () Int)

(assert (=> bs!1262209 (= lambda!288295 lambda!288292)))

(declare-fun lambda!288296 () Int)

(declare-fun lt!2225817 () Int)

(assert (=> bs!1262209 (= (= lt!2225817 lt!2225813) (= lambda!288296 lambda!288293))))

(declare-fun bs!1262210 () Bool)

(assert (= bs!1262210 (and b!5455193 b!5455190)))

(assert (=> bs!1262210 (= (= lt!2225817 lt!2225814) (= lambda!288296 lambda!288294))))

(assert (=> b!5455193 true))

(declare-fun bs!1262211 () Bool)

(declare-fun b!5455195 () Bool)

(assert (= bs!1262211 (and b!5455195 b!5455188)))

(declare-fun lambda!288297 () Int)

(declare-fun lt!2225818 () Int)

(assert (=> bs!1262211 (= (= lt!2225818 lt!2225813) (= lambda!288297 lambda!288293))))

(declare-fun bs!1262212 () Bool)

(assert (= bs!1262212 (and b!5455195 b!5455190)))

(assert (=> bs!1262212 (= (= lt!2225818 lt!2225814) (= lambda!288297 lambda!288294))))

(declare-fun bs!1262213 () Bool)

(assert (= bs!1262213 (and b!5455195 b!5455193)))

(assert (=> bs!1262213 (= (= lt!2225818 lt!2225817) (= lambda!288297 lambda!288296))))

(assert (=> b!5455195 true))

(declare-fun d!1737092 () Bool)

(declare-fun e!3378416 () Bool)

(assert (=> d!1737092 e!3378416))

(declare-fun res!2323083 () Bool)

(assert (=> d!1737092 (=> (not res!2323083) (not e!3378416))))

(assert (=> d!1737092 (= res!2323083 (>= lt!2225818 0))))

(declare-fun e!3378417 () Int)

(assert (=> d!1737092 (= lt!2225818 e!3378417)))

(declare-fun c!952865 () Bool)

(assert (=> d!1737092 (= c!952865 ((_ is Cons!62020) (Cons!62020 lt!2225444 Nil!62020)))))

(assert (=> d!1737092 (= (zipperDepth!182 (Cons!62020 lt!2225444 Nil!62020)) lt!2225818)))

(assert (=> b!5455193 (= e!3378417 lt!2225817)))

(assert (=> b!5455193 (= lt!2225817 (maxBigInt!0 (contextDepth!99 (h!68468 (Cons!62020 lt!2225444 Nil!62020))) (zipperDepth!182 (t!375373 (Cons!62020 lt!2225444 Nil!62020)))))))

(declare-fun lt!2225815 () Unit!154792)

(assert (=> b!5455193 (= lt!2225815 (lemmaForallContextDepthBiggerThanTransitive!93 (t!375373 (Cons!62020 lt!2225444 Nil!62020)) lt!2225817 (zipperDepth!182 (t!375373 (Cons!62020 lt!2225444 Nil!62020))) lambda!288295))))

(assert (=> b!5455193 (forall!14586 (t!375373 (Cons!62020 lt!2225444 Nil!62020)) lambda!288296)))

(declare-fun lt!2225816 () Unit!154792)

(assert (=> b!5455193 (= lt!2225816 lt!2225815)))

(declare-fun b!5455194 () Bool)

(assert (=> b!5455194 (= e!3378417 0)))

(assert (=> b!5455195 (= e!3378416 (forall!14586 (Cons!62020 lt!2225444 Nil!62020) lambda!288297))))

(assert (= (and d!1737092 c!952865) b!5455193))

(assert (= (and d!1737092 (not c!952865)) b!5455194))

(assert (= (and d!1737092 res!2323083) b!5455195))

(declare-fun m!6476276 () Bool)

(assert (=> b!5455193 m!6476276))

(declare-fun m!6476278 () Bool)

(assert (=> b!5455193 m!6476278))

(declare-fun m!6476280 () Bool)

(assert (=> b!5455193 m!6476280))

(assert (=> b!5455193 m!6476278))

(assert (=> b!5455193 m!6476278))

(declare-fun m!6476282 () Bool)

(assert (=> b!5455193 m!6476282))

(assert (=> b!5455193 m!6476276))

(declare-fun m!6476284 () Bool)

(assert (=> b!5455193 m!6476284))

(declare-fun m!6476286 () Bool)

(assert (=> b!5455195 m!6476286))

(assert (=> b!5453954 d!1737092))

(assert (=> b!5453961 d!1737046))

(declare-fun b!5455196 () Bool)

(declare-fun e!3378422 () Option!15392)

(assert (=> b!5455196 (= e!3378422 None!15391)))

(declare-fun d!1737094 () Bool)

(declare-fun e!3378418 () Bool)

(assert (=> d!1737094 e!3378418))

(declare-fun res!2323087 () Bool)

(assert (=> d!1737094 (=> res!2323087 e!3378418)))

(declare-fun e!3378419 () Bool)

(assert (=> d!1737094 (= res!2323087 e!3378419)))

(declare-fun res!2323088 () Bool)

(assert (=> d!1737094 (=> (not res!2323088) (not e!3378419))))

(declare-fun lt!2225820 () Option!15392)

(assert (=> d!1737094 (= res!2323088 (isDefined!12095 lt!2225820))))

(declare-fun e!3378421 () Option!15392)

(assert (=> d!1737094 (= lt!2225820 e!3378421)))

(declare-fun c!952866 () Bool)

(declare-fun e!3378420 () Bool)

(assert (=> d!1737094 (= c!952866 e!3378420)))

(declare-fun res!2323086 () Bool)

(assert (=> d!1737094 (=> (not res!2323086) (not e!3378420))))

(assert (=> d!1737094 (= res!2323086 (matchR!7466 (regOne!31074 r!7292) Nil!62018))))

(assert (=> d!1737094 (validRegex!7017 (regOne!31074 r!7292))))

(assert (=> d!1737094 (= (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) Nil!62018 s!2326 s!2326) lt!2225820)))

(declare-fun b!5455197 () Bool)

(assert (=> b!5455197 (= e!3378421 e!3378422)))

(declare-fun c!952867 () Bool)

(assert (=> b!5455197 (= c!952867 ((_ is Nil!62018) s!2326))))

(declare-fun b!5455198 () Bool)

(assert (=> b!5455198 (= e!3378420 (matchR!7466 (regTwo!31074 r!7292) s!2326))))

(declare-fun b!5455199 () Bool)

(assert (=> b!5455199 (= e!3378418 (not (isDefined!12095 lt!2225820)))))

(declare-fun b!5455200 () Bool)

(assert (=> b!5455200 (= e!3378419 (= (++!13641 (_1!35783 (get!21386 lt!2225820)) (_2!35783 (get!21386 lt!2225820))) s!2326))))

(declare-fun b!5455201 () Bool)

(declare-fun lt!2225819 () Unit!154792)

(declare-fun lt!2225821 () Unit!154792)

(assert (=> b!5455201 (= lt!2225819 lt!2225821)))

(assert (=> b!5455201 (= (++!13641 (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326)) s!2326)))

(assert (=> b!5455201 (= lt!2225821 (lemmaMoveElementToOtherListKeepsConcatEq!1878 Nil!62018 (h!68466 s!2326) (t!375371 s!2326) s!2326))))

(assert (=> b!5455201 (= e!3378422 (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326) s!2326))))

(declare-fun b!5455202 () Bool)

(declare-fun res!2323085 () Bool)

(assert (=> b!5455202 (=> (not res!2323085) (not e!3378419))))

(assert (=> b!5455202 (= res!2323085 (matchR!7466 (regTwo!31074 r!7292) (_2!35783 (get!21386 lt!2225820))))))

(declare-fun b!5455203 () Bool)

(declare-fun res!2323084 () Bool)

(assert (=> b!5455203 (=> (not res!2323084) (not e!3378419))))

(assert (=> b!5455203 (= res!2323084 (matchR!7466 (regOne!31074 r!7292) (_1!35783 (get!21386 lt!2225820))))))

(declare-fun b!5455204 () Bool)

(assert (=> b!5455204 (= e!3378421 (Some!15391 (tuple2!64961 Nil!62018 s!2326)))))

(assert (= (and d!1737094 res!2323086) b!5455198))

(assert (= (and d!1737094 c!952866) b!5455204))

(assert (= (and d!1737094 (not c!952866)) b!5455197))

(assert (= (and b!5455197 c!952867) b!5455196))

(assert (= (and b!5455197 (not c!952867)) b!5455201))

(assert (= (and d!1737094 res!2323088) b!5455203))

(assert (= (and b!5455203 res!2323084) b!5455202))

(assert (= (and b!5455202 res!2323085) b!5455200))

(assert (= (and d!1737094 (not res!2323087)) b!5455199))

(declare-fun m!6476288 () Bool)

(assert (=> b!5455202 m!6476288))

(declare-fun m!6476290 () Bool)

(assert (=> b!5455202 m!6476290))

(declare-fun m!6476292 () Bool)

(assert (=> d!1737094 m!6476292))

(declare-fun m!6476294 () Bool)

(assert (=> d!1737094 m!6476294))

(declare-fun m!6476296 () Bool)

(assert (=> d!1737094 m!6476296))

(assert (=> b!5455200 m!6476288))

(declare-fun m!6476298 () Bool)

(assert (=> b!5455200 m!6476298))

(declare-fun m!6476300 () Bool)

(assert (=> b!5455201 m!6476300))

(assert (=> b!5455201 m!6476300))

(declare-fun m!6476302 () Bool)

(assert (=> b!5455201 m!6476302))

(declare-fun m!6476304 () Bool)

(assert (=> b!5455201 m!6476304))

(assert (=> b!5455201 m!6476300))

(declare-fun m!6476306 () Bool)

(assert (=> b!5455201 m!6476306))

(assert (=> b!5455199 m!6476292))

(declare-fun m!6476308 () Bool)

(assert (=> b!5455198 m!6476308))

(assert (=> b!5455203 m!6476288))

(declare-fun m!6476310 () Bool)

(assert (=> b!5455203 m!6476310))

(assert (=> b!5453931 d!1737094))

(declare-fun bs!1262228 () Bool)

(declare-fun d!1737096 () Bool)

(assert (= bs!1262228 (and d!1737096 b!5453934)))

(declare-fun lambda!288299 () Int)

(assert (=> bs!1262228 (not (= lambda!288299 lambda!288174))))

(declare-fun bs!1262229 () Bool)

(assert (= bs!1262229 (and d!1737096 b!5454128)))

(assert (=> bs!1262229 (not (= lambda!288299 lambda!288201))))

(declare-fun bs!1262231 () Bool)

(assert (= bs!1262231 (and d!1737096 b!5454017)))

(assert (=> bs!1262231 (not (= lambda!288299 lambda!288180))))

(declare-fun bs!1262233 () Bool)

(assert (= bs!1262233 (and d!1737096 d!1736932)))

(assert (=> bs!1262233 (= (and (= (regOne!31074 r!7292) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473)))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))))) (= lambda!288299 lambda!288268))))

(declare-fun bs!1262234 () Bool)

(assert (= bs!1262234 (and d!1737096 b!5453908)))

(assert (=> bs!1262234 (not (= lambda!288299 lambda!288154))))

(declare-fun bs!1262236 () Bool)

(assert (= bs!1262236 (and d!1737096 d!1736874)))

(assert (=> bs!1262236 (not (= lambda!288299 lambda!288241))))

(assert (=> bs!1262228 (not (= lambda!288299 lambda!288173))))

(declare-fun bs!1262237 () Bool)

(assert (= bs!1262237 (and d!1737096 b!5453914)))

(assert (=> bs!1262237 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288299 lambda!288161))))

(declare-fun bs!1262238 () Bool)

(assert (= bs!1262238 (and d!1737096 b!5454396)))

(assert (=> bs!1262238 (not (= lambda!288299 lambda!288219))))

(declare-fun bs!1262239 () Bool)

(assert (= bs!1262239 (and d!1737096 b!5453924)))

(assert (=> bs!1262239 (not (= lambda!288299 lambda!288170))))

(assert (=> bs!1262237 (not (= lambda!288299 lambda!288163))))

(declare-fun bs!1262240 () Bool)

(assert (= bs!1262240 (and d!1737096 b!5453946)))

(assert (=> bs!1262240 (not (= lambda!288299 lambda!288160))))

(declare-fun bs!1262242 () Bool)

(assert (= bs!1262242 (and d!1737096 d!1736836)))

(assert (=> bs!1262242 (= (and (= s!2326 (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (regOne!31074 r!7292) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288299 lambda!288229))))

(assert (=> bs!1262239 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288299 lambda!288169))))

(assert (=> bs!1262234 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288299 lambda!288153))))

(assert (=> bs!1262228 (= (and (= s!2326 Nil!62018) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288299 lambda!288172))))

(assert (=> bs!1262239 (not (= lambda!288299 lambda!288168))))

(assert (=> bs!1262240 (= (= (regOne!31074 r!7292) lt!2225374) (= lambda!288299 lambda!288159))))

(declare-fun bs!1262244 () Bool)

(assert (= bs!1262244 (and d!1737096 b!5453931)))

(assert (=> bs!1262244 (= lambda!288299 lambda!288148)))

(assert (=> bs!1262244 (not (= lambda!288299 lambda!288149))))

(assert (=> bs!1262236 (= (and (= s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) (Star!15281 (reg!15610 (regOne!31074 r!7292))))) (= lambda!288299 lambda!288240))))

(declare-fun bs!1262245 () Bool)

(assert (= bs!1262245 (and d!1737096 b!5454397)))

(assert (=> bs!1262245 (not (= lambda!288299 lambda!288217))))

(assert (=> bs!1262237 (not (= lambda!288299 lambda!288162))))

(declare-fun bs!1262246 () Bool)

(assert (= bs!1262246 (and d!1737096 d!1736856)))

(assert (=> bs!1262246 (not (= lambda!288299 lambda!288234))))

(declare-fun bs!1262247 () Bool)

(assert (= bs!1262247 (and d!1737096 b!5454129)))

(assert (=> bs!1262247 (not (= lambda!288299 lambda!288200))))

(assert (=> bs!1262234 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288299 lambda!288151))))

(assert (=> bs!1262242 (not (= lambda!288299 lambda!288230))))

(declare-fun bs!1262248 () Bool)

(assert (= bs!1262248 (and d!1737096 d!1736922)))

(assert (=> bs!1262248 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (= (regOne!31074 r!7292) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)))) (= lambda!288299 lambda!288267))))

(assert (=> bs!1262239 (not (= lambda!288299 lambda!288171))))

(declare-fun bs!1262249 () Bool)

(assert (= bs!1262249 (and d!1737096 b!5453953)))

(assert (=> bs!1262249 (not (= lambda!288299 lambda!288156))))

(declare-fun bs!1262250 () Bool)

(assert (= bs!1262250 (and d!1737096 b!5454211)))

(assert (=> bs!1262250 (not (= lambda!288299 lambda!288202))))

(assert (=> bs!1262239 (= (= (regOne!31074 r!7292) lt!2225473) (= lambda!288299 lambda!288167))))

(assert (=> bs!1262234 (not (= lambda!288299 lambda!288152))))

(assert (=> bs!1262249 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288299 lambda!288155))))

(declare-fun bs!1262251 () Bool)

(assert (= bs!1262251 (and d!1737096 b!5454016)))

(assert (=> bs!1262251 (not (= lambda!288299 lambda!288182))))

(assert (=> bs!1262249 (not (= lambda!288299 lambda!288158))))

(assert (=> bs!1262249 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288299 lambda!288157))))

(declare-fun bs!1262252 () Bool)

(assert (= bs!1262252 (and d!1737096 b!5454210)))

(assert (=> bs!1262252 (not (= lambda!288299 lambda!288203))))

(assert (=> bs!1262246 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (regOne!31074 r!7292) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288299 lambda!288231))))

(assert (=> d!1737096 true))

(assert (=> d!1737096 true))

(assert (=> d!1737096 true))

(assert (=> d!1737096 (= (isDefined!12095 (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) Nil!62018 s!2326 s!2326)) (Exists!2462 lambda!288299))))

(declare-fun lt!2225822 () Unit!154792)

(assert (=> d!1737096 (= lt!2225822 (choose!41423 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326))))

(assert (=> d!1737096 (validRegex!7017 (regOne!31074 r!7292))))

(assert (=> d!1737096 (= (lemmaFindConcatSeparationEquivalentToExists!1570 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326) lt!2225822)))

(declare-fun bs!1262254 () Bool)

(assert (= bs!1262254 d!1737096))

(assert (=> bs!1262254 m!6474540))

(assert (=> bs!1262254 m!6474540))

(assert (=> bs!1262254 m!6474542))

(declare-fun m!6476342 () Bool)

(assert (=> bs!1262254 m!6476342))

(assert (=> bs!1262254 m!6476296))

(declare-fun m!6476344 () Bool)

(assert (=> bs!1262254 m!6476344))

(assert (=> b!5453931 d!1737096))

(declare-fun bs!1262256 () Bool)

(declare-fun d!1737106 () Bool)

(assert (= bs!1262256 (and d!1737106 b!5453934)))

(declare-fun lambda!288300 () Int)

(assert (=> bs!1262256 (not (= lambda!288300 lambda!288174))))

(declare-fun bs!1262257 () Bool)

(assert (= bs!1262257 (and d!1737106 b!5454128)))

(assert (=> bs!1262257 (not (= lambda!288300 lambda!288201))))

(declare-fun bs!1262258 () Bool)

(assert (= bs!1262258 (and d!1737106 b!5454017)))

(assert (=> bs!1262258 (not (= lambda!288300 lambda!288180))))

(declare-fun bs!1262259 () Bool)

(assert (= bs!1262259 (and d!1737106 d!1737096)))

(assert (=> bs!1262259 (= lambda!288300 lambda!288299)))

(declare-fun bs!1262260 () Bool)

(assert (= bs!1262260 (and d!1737106 d!1736932)))

(assert (=> bs!1262260 (= (and (= (regOne!31074 r!7292) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473)))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))))) (= lambda!288300 lambda!288268))))

(declare-fun bs!1262261 () Bool)

(assert (= bs!1262261 (and d!1737106 b!5453908)))

(assert (=> bs!1262261 (not (= lambda!288300 lambda!288154))))

(declare-fun bs!1262262 () Bool)

(assert (= bs!1262262 (and d!1737106 d!1736874)))

(assert (=> bs!1262262 (not (= lambda!288300 lambda!288241))))

(assert (=> bs!1262256 (not (= lambda!288300 lambda!288173))))

(declare-fun bs!1262263 () Bool)

(assert (= bs!1262263 (and d!1737106 b!5453914)))

(assert (=> bs!1262263 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288300 lambda!288161))))

(declare-fun bs!1262264 () Bool)

(assert (= bs!1262264 (and d!1737106 b!5454396)))

(assert (=> bs!1262264 (not (= lambda!288300 lambda!288219))))

(declare-fun bs!1262265 () Bool)

(assert (= bs!1262265 (and d!1737106 b!5453924)))

(assert (=> bs!1262265 (not (= lambda!288300 lambda!288170))))

(assert (=> bs!1262263 (not (= lambda!288300 lambda!288163))))

(declare-fun bs!1262267 () Bool)

(assert (= bs!1262267 (and d!1737106 b!5453946)))

(assert (=> bs!1262267 (not (= lambda!288300 lambda!288160))))

(declare-fun bs!1262269 () Bool)

(assert (= bs!1262269 (and d!1737106 d!1736836)))

(assert (=> bs!1262269 (= (and (= s!2326 (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (regOne!31074 r!7292) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288300 lambda!288229))))

(assert (=> bs!1262265 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288300 lambda!288169))))

(assert (=> bs!1262261 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288300 lambda!288153))))

(assert (=> bs!1262256 (= (and (= s!2326 Nil!62018) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288300 lambda!288172))))

(assert (=> bs!1262265 (not (= lambda!288300 lambda!288168))))

(assert (=> bs!1262267 (= (= (regOne!31074 r!7292) lt!2225374) (= lambda!288300 lambda!288159))))

(declare-fun bs!1262276 () Bool)

(assert (= bs!1262276 (and d!1737106 b!5453931)))

(assert (=> bs!1262276 (= lambda!288300 lambda!288148)))

(assert (=> bs!1262276 (not (= lambda!288300 lambda!288149))))

(assert (=> bs!1262262 (= (and (= s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) (Star!15281 (reg!15610 (regOne!31074 r!7292))))) (= lambda!288300 lambda!288240))))

(declare-fun bs!1262278 () Bool)

(assert (= bs!1262278 (and d!1737106 b!5454397)))

(assert (=> bs!1262278 (not (= lambda!288300 lambda!288217))))

(assert (=> bs!1262263 (not (= lambda!288300 lambda!288162))))

(declare-fun bs!1262280 () Bool)

(assert (= bs!1262280 (and d!1737106 d!1736856)))

(assert (=> bs!1262280 (not (= lambda!288300 lambda!288234))))

(declare-fun bs!1262281 () Bool)

(assert (= bs!1262281 (and d!1737106 b!5454129)))

(assert (=> bs!1262281 (not (= lambda!288300 lambda!288200))))

(assert (=> bs!1262261 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288300 lambda!288151))))

(assert (=> bs!1262269 (not (= lambda!288300 lambda!288230))))

(declare-fun bs!1262282 () Bool)

(assert (= bs!1262282 (and d!1737106 d!1736922)))

(assert (=> bs!1262282 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018)))) (= (regOne!31074 r!7292) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 lt!2225374)))) (= lambda!288300 lambda!288267))))

(assert (=> bs!1262265 (not (= lambda!288300 lambda!288171))))

(declare-fun bs!1262285 () Bool)

(assert (= bs!1262285 (and d!1737106 b!5453953)))

(assert (=> bs!1262285 (not (= lambda!288300 lambda!288156))))

(declare-fun bs!1262286 () Bool)

(assert (= bs!1262286 (and d!1737106 b!5454211)))

(assert (=> bs!1262286 (not (= lambda!288300 lambda!288202))))

(assert (=> bs!1262265 (= (= (regOne!31074 r!7292) lt!2225473) (= lambda!288300 lambda!288167))))

(assert (=> bs!1262261 (not (= lambda!288300 lambda!288152))))

(assert (=> bs!1262285 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288300 lambda!288155))))

(declare-fun bs!1262289 () Bool)

(assert (= bs!1262289 (and d!1737106 b!5454016)))

(assert (=> bs!1262289 (not (= lambda!288300 lambda!288182))))

(assert (=> bs!1262285 (not (= lambda!288300 lambda!288158))))

(assert (=> bs!1262285 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288300 lambda!288157))))

(declare-fun bs!1262291 () Bool)

(assert (= bs!1262291 (and d!1737106 b!5454210)))

(assert (=> bs!1262291 (not (= lambda!288300 lambda!288203))))

(assert (=> bs!1262280 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (regOne!31074 r!7292) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288300 lambda!288231))))

(assert (=> d!1737106 true))

(assert (=> d!1737106 true))

(assert (=> d!1737106 true))

(declare-fun bs!1262294 () Bool)

(assert (= bs!1262294 d!1737106))

(declare-fun lambda!288302 () Int)

(assert (=> bs!1262294 (not (= lambda!288302 lambda!288300))))

(assert (=> bs!1262256 (not (= lambda!288302 lambda!288174))))

(assert (=> bs!1262257 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (regOne!31074 r!7292) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (regTwo!31074 r!7292) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288302 lambda!288201))))

(assert (=> bs!1262258 (not (= lambda!288302 lambda!288180))))

(assert (=> bs!1262259 (not (= lambda!288302 lambda!288299))))

(assert (=> bs!1262260 (not (= lambda!288302 lambda!288268))))

(assert (=> bs!1262261 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225531)) (= lambda!288302 lambda!288154))))

(assert (=> bs!1262262 (not (= lambda!288302 lambda!288241))))

(assert (=> bs!1262256 (= (and (= s!2326 Nil!62018) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288302 lambda!288173))))

(assert (=> bs!1262263 (not (= lambda!288302 lambda!288161))))

(assert (=> bs!1262264 (= (and (= (regOne!31074 r!7292) (regOne!31074 lt!2225379)) (= (regTwo!31074 r!7292) (regTwo!31074 lt!2225379))) (= lambda!288302 lambda!288219))))

(assert (=> bs!1262265 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288302 lambda!288170))))

(assert (=> bs!1262263 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 r!7292) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225374)) (= lambda!288302 lambda!288163))))

(assert (=> bs!1262267 (= (= (regOne!31074 r!7292) lt!2225374) (= lambda!288302 lambda!288160))))

(assert (=> bs!1262269 (not (= lambda!288302 lambda!288229))))

(assert (=> bs!1262265 (not (= lambda!288302 lambda!288169))))

(assert (=> bs!1262261 (not (= lambda!288302 lambda!288153))))

(assert (=> bs!1262256 (not (= lambda!288302 lambda!288172))))

(assert (=> bs!1262265 (= (= (regOne!31074 r!7292) lt!2225473) (= lambda!288302 lambda!288168))))

(assert (=> bs!1262267 (not (= lambda!288302 lambda!288159))))

(assert (=> bs!1262276 (not (= lambda!288302 lambda!288148))))

(assert (=> bs!1262276 (= lambda!288302 lambda!288149)))

(assert (=> bs!1262262 (not (= lambda!288302 lambda!288240))))

(assert (=> bs!1262278 (not (= lambda!288302 lambda!288217))))

(assert (=> bs!1262263 (not (= lambda!288302 lambda!288162))))

(assert (=> bs!1262280 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (regOne!31074 r!7292) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288302 lambda!288234))))

(assert (=> bs!1262281 (not (= lambda!288302 lambda!288200))))

(assert (=> bs!1262261 (not (= lambda!288302 lambda!288151))))

(assert (=> bs!1262269 (= (and (= s!2326 (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (regOne!31074 r!7292) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (regTwo!31074 r!7292) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288302 lambda!288230))))

(assert (=> bs!1262282 (not (= lambda!288302 lambda!288267))))

(assert (=> bs!1262265 (not (= lambda!288302 lambda!288171))))

(assert (=> bs!1262285 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225518)) (= lambda!288302 lambda!288156))))

(assert (=> bs!1262286 (not (= lambda!288302 lambda!288202))))

(assert (=> bs!1262265 (not (= lambda!288302 lambda!288167))))

(assert (=> bs!1262261 (= (and (= (regOne!31074 r!7292) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225532)) (= lambda!288302 lambda!288152))))

(assert (=> bs!1262285 (not (= lambda!288302 lambda!288155))))

(assert (=> bs!1262289 (= lambda!288302 lambda!288182)))

(assert (=> bs!1262285 (= (and (= (regOne!31074 r!7292) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 r!7292) lt!2225526)) (= lambda!288302 lambda!288158))))

(assert (=> bs!1262285 (not (= lambda!288302 lambda!288157))))

(assert (=> bs!1262291 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (regOne!31074 r!7292) (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (regTwo!31074 r!7292) (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))) (= lambda!288302 lambda!288203))))

(assert (=> bs!1262280 (not (= lambda!288302 lambda!288231))))

(assert (=> d!1737106 true))

(assert (=> d!1737106 true))

(assert (=> d!1737106 true))

(assert (=> d!1737106 (= (Exists!2462 lambda!288300) (Exists!2462 lambda!288302))))

(declare-fun lt!2225826 () Unit!154792)

(assert (=> d!1737106 (= lt!2225826 (choose!41415 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326))))

(assert (=> d!1737106 (validRegex!7017 (regOne!31074 r!7292))))

(assert (=> d!1737106 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1116 (regOne!31074 r!7292) (regTwo!31074 r!7292) s!2326) lt!2225826)))

(declare-fun m!6476356 () Bool)

(assert (=> bs!1262294 m!6476356))

(declare-fun m!6476358 () Bool)

(assert (=> bs!1262294 m!6476358))

(declare-fun m!6476360 () Bool)

(assert (=> bs!1262294 m!6476360))

(assert (=> bs!1262294 m!6476296))

(assert (=> b!5453931 d!1737106))

(declare-fun d!1737110 () Bool)

(assert (=> d!1737110 (= (isDefined!12095 (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) Nil!62018 s!2326 s!2326)) (not (isEmpty!34005 (findConcatSeparation!1806 (regOne!31074 r!7292) (regTwo!31074 r!7292) Nil!62018 s!2326 s!2326))))))

(declare-fun bs!1262314 () Bool)

(assert (= bs!1262314 d!1737110))

(assert (=> bs!1262314 m!6474540))

(declare-fun m!6476362 () Bool)

(assert (=> bs!1262314 m!6476362))

(assert (=> b!5453931 d!1737110))

(declare-fun d!1737112 () Bool)

(assert (=> d!1737112 (= (Exists!2462 lambda!288148) (choose!41402 lambda!288148))))

(declare-fun bs!1262316 () Bool)

(assert (= bs!1262316 d!1737112))

(declare-fun m!6476364 () Bool)

(assert (=> bs!1262316 m!6476364))

(assert (=> b!5453931 d!1737112))

(declare-fun d!1737114 () Bool)

(assert (=> d!1737114 (= (Exists!2462 lambda!288149) (choose!41402 lambda!288149))))

(declare-fun bs!1262317 () Bool)

(assert (= bs!1262317 d!1737114))

(declare-fun m!6476366 () Bool)

(assert (=> bs!1262317 m!6476366))

(assert (=> b!5453931 d!1737114))

(declare-fun b!5455244 () Bool)

(declare-fun e!3378449 () Bool)

(declare-fun lt!2225827 () Bool)

(assert (=> b!5455244 (= e!3378449 (not lt!2225827))))

(declare-fun b!5455245 () Bool)

(declare-fun res!2323109 () Bool)

(declare-fun e!3378446 () Bool)

(assert (=> b!5455245 (=> res!2323109 e!3378446)))

(assert (=> b!5455245 (= res!2323109 (not (isEmpty!34002 (tail!10780 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)))))))

(declare-fun b!5455246 () Bool)

(declare-fun e!3378450 () Bool)

(declare-fun e!3378448 () Bool)

(assert (=> b!5455246 (= e!3378450 e!3378448)))

(declare-fun res!2323111 () Bool)

(assert (=> b!5455246 (=> (not res!2323111) (not e!3378448))))

(assert (=> b!5455246 (= res!2323111 (not lt!2225827))))

(declare-fun b!5455247 () Bool)

(declare-fun res!2323113 () Bool)

(declare-fun e!3378445 () Bool)

(assert (=> b!5455247 (=> (not res!2323113) (not e!3378445))))

(declare-fun call!396535 () Bool)

(assert (=> b!5455247 (= res!2323113 (not call!396535))))

(declare-fun b!5455248 () Bool)

(declare-fun res!2323112 () Bool)

(assert (=> b!5455248 (=> (not res!2323112) (not e!3378445))))

(assert (=> b!5455248 (= res!2323112 (isEmpty!34002 (tail!10780 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326))))))

(declare-fun b!5455249 () Bool)

(declare-fun e!3378444 () Bool)

(assert (=> b!5455249 (= e!3378444 e!3378449)))

(declare-fun c!952878 () Bool)

(assert (=> b!5455249 (= c!952878 ((_ is EmptyLang!15281) (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292)))))))

(declare-fun e!3378447 () Bool)

(declare-fun b!5455250 () Bool)

(assert (=> b!5455250 (= e!3378447 (nullable!5450 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292)))))))

(declare-fun d!1737116 () Bool)

(assert (=> d!1737116 e!3378444))

(declare-fun c!952879 () Bool)

(assert (=> d!1737116 (= c!952879 ((_ is EmptyExpr!15281) (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292)))))))

(assert (=> d!1737116 (= lt!2225827 e!3378447)))

(declare-fun c!952880 () Bool)

(assert (=> d!1737116 (= c!952880 (isEmpty!34002 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)))))

(assert (=> d!1737116 (validRegex!7017 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))))))

(assert (=> d!1737116 (= (matchR!7466 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))) (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)) lt!2225827)))

(declare-fun b!5455251 () Bool)

(assert (=> b!5455251 (= e!3378444 (= lt!2225827 call!396535))))

(declare-fun b!5455252 () Bool)

(assert (=> b!5455252 (= e!3378447 (matchR!7466 (derivativeStep!4304 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))) (head!11683 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326))) (tail!10780 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326))))))

(declare-fun b!5455253 () Bool)

(declare-fun res!2323115 () Bool)

(assert (=> b!5455253 (=> res!2323115 e!3378450)))

(assert (=> b!5455253 (= res!2323115 e!3378445)))

(declare-fun res!2323114 () Bool)

(assert (=> b!5455253 (=> (not res!2323114) (not e!3378445))))

(assert (=> b!5455253 (= res!2323114 lt!2225827)))

(declare-fun bm!396530 () Bool)

(assert (=> bm!396530 (= call!396535 (isEmpty!34002 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)))))

(declare-fun b!5455254 () Bool)

(assert (=> b!5455254 (= e!3378448 e!3378446)))

(declare-fun res!2323110 () Bool)

(assert (=> b!5455254 (=> res!2323110 e!3378446)))

(assert (=> b!5455254 (= res!2323110 call!396535)))

(declare-fun b!5455255 () Bool)

(declare-fun res!2323108 () Bool)

(assert (=> b!5455255 (=> res!2323108 e!3378450)))

(assert (=> b!5455255 (= res!2323108 (not ((_ is ElementMatch!15281) (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))))))))

(assert (=> b!5455255 (= e!3378449 e!3378450)))

(declare-fun b!5455256 () Bool)

(assert (=> b!5455256 (= e!3378445 (= (head!11683 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)) (c!952474 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292))))))))

(declare-fun b!5455257 () Bool)

(assert (=> b!5455257 (= e!3378446 (not (= (head!11683 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (ite c!952462 (_1!35783 lt!2225479) s!2326)) s!2326)) (c!952474 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225447 (reg!15610 (regOne!31074 r!7292))) (ite c!952462 lt!2225473 lt!2225443)) (ite c!952463 lt!2225411 (regOne!31074 r!7292)))))))))

(assert (= (and d!1737116 c!952880) b!5455250))

(assert (= (and d!1737116 (not c!952880)) b!5455252))

(assert (= (and d!1737116 c!952879) b!5455251))

(assert (= (and d!1737116 (not c!952879)) b!5455249))

(assert (= (and b!5455249 c!952878) b!5455244))

(assert (= (and b!5455249 (not c!952878)) b!5455255))

(assert (= (and b!5455255 (not res!2323108)) b!5455253))

(assert (= (and b!5455253 res!2323114) b!5455247))

(assert (= (and b!5455247 res!2323113) b!5455248))

(assert (= (and b!5455248 res!2323112) b!5455256))

(assert (= (and b!5455253 (not res!2323115)) b!5455246))

(assert (= (and b!5455246 res!2323111) b!5455254))

(assert (= (and b!5455254 (not res!2323110)) b!5455245))

(assert (= (and b!5455245 (not res!2323109)) b!5455257))

(assert (= (or b!5455251 b!5455247 b!5455254) bm!396530))

(declare-fun m!6476380 () Bool)

(assert (=> b!5455250 m!6476380))

(declare-fun m!6476382 () Bool)

(assert (=> b!5455257 m!6476382))

(declare-fun m!6476384 () Bool)

(assert (=> bm!396530 m!6476384))

(assert (=> b!5455256 m!6476382))

(declare-fun m!6476394 () Bool)

(assert (=> b!5455248 m!6476394))

(assert (=> b!5455248 m!6476394))

(declare-fun m!6476396 () Bool)

(assert (=> b!5455248 m!6476396))

(assert (=> b!5455252 m!6476382))

(assert (=> b!5455252 m!6476382))

(declare-fun m!6476398 () Bool)

(assert (=> b!5455252 m!6476398))

(assert (=> b!5455252 m!6476394))

(assert (=> b!5455252 m!6476398))

(assert (=> b!5455252 m!6476394))

(declare-fun m!6476400 () Bool)

(assert (=> b!5455252 m!6476400))

(assert (=> d!1737116 m!6476384))

(declare-fun m!6476402 () Bool)

(assert (=> d!1737116 m!6476402))

(assert (=> b!5455245 m!6476394))

(assert (=> b!5455245 m!6476394))

(assert (=> b!5455245 m!6476396))

(assert (=> bm!396209 d!1737116))

(declare-fun b!5455259 () Bool)

(declare-fun e!3378456 () Option!15392)

(assert (=> b!5455259 (= e!3378456 None!15391)))

(declare-fun d!1737124 () Bool)

(declare-fun e!3378452 () Bool)

(assert (=> d!1737124 e!3378452))

(declare-fun res!2323120 () Bool)

(assert (=> d!1737124 (=> res!2323120 e!3378452)))

(declare-fun e!3378453 () Bool)

(assert (=> d!1737124 (= res!2323120 e!3378453)))

(declare-fun res!2323121 () Bool)

(assert (=> d!1737124 (=> (not res!2323121) (not e!3378453))))

(declare-fun lt!2225831 () Option!15392)

(assert (=> d!1737124 (= res!2323121 (isDefined!12095 lt!2225831))))

(declare-fun e!3378455 () Option!15392)

(assert (=> d!1737124 (= lt!2225831 e!3378455)))

(declare-fun c!952881 () Bool)

(declare-fun e!3378454 () Bool)

(assert (=> d!1737124 (= c!952881 e!3378454)))

(declare-fun res!2323119 () Bool)

(assert (=> d!1737124 (=> (not res!2323119) (not e!3378454))))

(assert (=> d!1737124 (= res!2323119 (matchR!7466 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) Nil!62018))))

(assert (=> d!1737124 (validRegex!7017 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))))))

(assert (=> d!1737124 (= (findConcatSeparation!1806 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) Nil!62018 s!2326 s!2326) lt!2225831)))

(declare-fun b!5455260 () Bool)

(assert (=> b!5455260 (= e!3378455 e!3378456)))

(declare-fun c!952882 () Bool)

(assert (=> b!5455260 (= c!952882 ((_ is Nil!62018) s!2326))))

(declare-fun b!5455261 () Bool)

(assert (=> b!5455261 (= e!3378454 (matchR!7466 (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) s!2326))))

(declare-fun b!5455262 () Bool)

(assert (=> b!5455262 (= e!3378452 (not (isDefined!12095 lt!2225831)))))

(declare-fun b!5455263 () Bool)

(assert (=> b!5455263 (= e!3378453 (= (++!13641 (_1!35783 (get!21386 lt!2225831)) (_2!35783 (get!21386 lt!2225831))) s!2326))))

(declare-fun b!5455264 () Bool)

(declare-fun lt!2225830 () Unit!154792)

(declare-fun lt!2225832 () Unit!154792)

(assert (=> b!5455264 (= lt!2225830 lt!2225832)))

(assert (=> b!5455264 (= (++!13641 (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326)) s!2326)))

(assert (=> b!5455264 (= lt!2225832 (lemmaMoveElementToOtherListKeepsConcatEq!1878 Nil!62018 (h!68466 s!2326) (t!375371 s!2326) s!2326))))

(assert (=> b!5455264 (= e!3378456 (findConcatSeparation!1806 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326) s!2326))))

(declare-fun b!5455265 () Bool)

(declare-fun res!2323118 () Bool)

(assert (=> b!5455265 (=> (not res!2323118) (not e!3378453))))

(assert (=> b!5455265 (= res!2323118 (matchR!7466 (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 (regTwo!31074 r!7292))) (_2!35783 (get!21386 lt!2225831))))))

(declare-fun b!5455266 () Bool)

(declare-fun res!2323117 () Bool)

(assert (=> b!5455266 (=> (not res!2323117) (not e!3378453))))

(assert (=> b!5455266 (= res!2323117 (matchR!7466 (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 lt!2225473))) (_1!35783 (get!21386 lt!2225831))))))

(declare-fun b!5455267 () Bool)

(assert (=> b!5455267 (= e!3378455 (Some!15391 (tuple2!64961 Nil!62018 s!2326)))))

(assert (= (and d!1737124 res!2323119) b!5455261))

(assert (= (and d!1737124 c!952881) b!5455267))

(assert (= (and d!1737124 (not c!952881)) b!5455260))

(assert (= (and b!5455260 c!952882) b!5455259))

(assert (= (and b!5455260 (not c!952882)) b!5455264))

(assert (= (and d!1737124 res!2323121) b!5455266))

(assert (= (and b!5455266 res!2323117) b!5455265))

(assert (= (and b!5455265 res!2323118) b!5455263))

(assert (= (and d!1737124 (not res!2323120)) b!5455262))

(declare-fun m!6476404 () Bool)

(assert (=> b!5455265 m!6476404))

(declare-fun m!6476406 () Bool)

(assert (=> b!5455265 m!6476406))

(declare-fun m!6476408 () Bool)

(assert (=> d!1737124 m!6476408))

(declare-fun m!6476410 () Bool)

(assert (=> d!1737124 m!6476410))

(assert (=> d!1737124 m!6475634))

(assert (=> b!5455263 m!6476404))

(declare-fun m!6476412 () Bool)

(assert (=> b!5455263 m!6476412))

(assert (=> b!5455264 m!6476300))

(assert (=> b!5455264 m!6476300))

(assert (=> b!5455264 m!6476302))

(assert (=> b!5455264 m!6476304))

(assert (=> b!5455264 m!6476300))

(declare-fun m!6476414 () Bool)

(assert (=> b!5455264 m!6476414))

(assert (=> b!5455262 m!6476408))

(declare-fun m!6476416 () Bool)

(assert (=> b!5455261 m!6476416))

(assert (=> b!5455266 m!6476404))

(declare-fun m!6476418 () Bool)

(assert (=> b!5455266 m!6476418))

(assert (=> bm!396338 d!1737124))

(declare-fun d!1737126 () Bool)

(assert (=> d!1737126 (= (matchR!7466 (ite c!952472 lt!2225551 (ite c!952469 lt!2225391 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 (ite (and c!952465 c!952466) lt!2225447 (reg!15610 (regOne!31074 r!7292))) lt!2225411))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (_1!35783 lt!2225415)) s!2326)))) (matchZipper!1525 (ite c!952472 lt!2225418 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite (and c!952465 c!952466) lt!2225436 lt!2225545) lt!2225375))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (_1!35783 lt!2225415)) s!2326)))))))

(declare-fun lt!2225833 () Unit!154792)

(assert (=> d!1737126 (= lt!2225833 (choose!41427 (ite c!952472 lt!2225418 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite (and c!952465 c!952466) lt!2225436 lt!2225545) lt!2225375))))) (ite c!952472 (Cons!62020 lt!2225444 Nil!62020) (ite c!952469 (Cons!62020 lt!2225540 Nil!62020) (ite c!952471 (Cons!62020 lt!2225511 Nil!62020) (ite c!952467 (Cons!62020 lt!2225468 Nil!62020) (ite c!952461 (ite (and c!952465 c!952466) (Cons!62020 lt!2225444 Nil!62020) (Cons!62020 lt!2225387 Nil!62020)) (Cons!62020 lt!2225444 Nil!62020)))))) (ite c!952472 lt!2225551 (ite c!952469 lt!2225391 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 (ite (and c!952465 c!952466) lt!2225447 (reg!15610 (regOne!31074 r!7292))) lt!2225411))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (_1!35783 lt!2225415)) s!2326)))))))

(assert (=> d!1737126 (validRegex!7017 (ite c!952472 lt!2225551 (ite c!952469 lt!2225391 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 (ite (and c!952465 c!952466) lt!2225447 (reg!15610 (regOne!31074 r!7292))) lt!2225411))))))))

(assert (=> d!1737126 (= (theoremZipperRegexEquiv!561 (ite c!952472 lt!2225418 (ite c!952469 lt!2225376 (ite c!952471 lt!2225448 (ite c!952467 lt!2225517 (ite c!952461 (ite (and c!952465 c!952466) lt!2225436 lt!2225545) lt!2225375))))) (ite c!952472 (Cons!62020 lt!2225444 Nil!62020) (ite c!952469 (Cons!62020 lt!2225540 Nil!62020) (ite c!952471 (Cons!62020 lt!2225511 Nil!62020) (ite c!952467 (Cons!62020 lt!2225468 Nil!62020) (ite c!952461 (ite (and c!952465 c!952466) (Cons!62020 lt!2225444 Nil!62020) (Cons!62020 lt!2225387 Nil!62020)) (Cons!62020 lt!2225444 Nil!62020)))))) (ite c!952472 lt!2225551 (ite c!952469 lt!2225391 (ite c!952471 lt!2225532 (ite c!952467 lt!2225465 (ite c!952461 (ite (and c!952465 c!952466) lt!2225447 (reg!15610 (regOne!31074 r!7292))) lt!2225411))))) (ite c!952472 (t!375371 s!2326) (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 (_1!35783 lt!2225499)) (_1!35783 lt!2225415)) s!2326)))) lt!2225833)))

(declare-fun bs!1262319 () Bool)

(assert (= bs!1262319 d!1737126))

(declare-fun m!6476420 () Bool)

(assert (=> bs!1262319 m!6476420))

(declare-fun m!6476422 () Bool)

(assert (=> bs!1262319 m!6476422))

(declare-fun m!6476424 () Bool)

(assert (=> bs!1262319 m!6476424))

(declare-fun m!6476426 () Bool)

(assert (=> bs!1262319 m!6476426))

(assert (=> bm!396355 d!1737126))

(declare-fun d!1737128 () Bool)

(assert (=> d!1737128 (= (flatMap!1008 (ite c!952469 lt!2225376 (ite c!952471 lt!2225450 lt!2225508)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))) (dynLambda!24401 (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150)) (ite c!952469 lt!2225540 (ite c!952471 lt!2225440 lt!2225528))))))

(declare-fun lt!2225836 () Unit!154792)

(assert (=> d!1737128 (= lt!2225836 (choose!41410 (ite c!952469 lt!2225376 (ite c!952471 lt!2225450 lt!2225508)) (ite c!952469 lt!2225540 (ite c!952471 lt!2225440 lt!2225528)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))))))

(assert (=> d!1737128 (= (ite c!952469 lt!2225376 (ite c!952471 lt!2225450 lt!2225508)) (store ((as const (Array Context!9330 Bool)) false) (ite c!952469 lt!2225540 (ite c!952471 lt!2225440 lt!2225528)) true))))

(assert (=> d!1737128 (= (lemmaFlatMapOnSingletonSet!540 (ite c!952469 lt!2225376 (ite c!952471 lt!2225450 lt!2225508)) (ite c!952469 lt!2225540 (ite c!952471 lt!2225440 lt!2225528)) (ite c!952469 lambda!288150 (ite c!952471 lambda!288150 lambda!288150))) lt!2225836)))

(declare-fun b_lambda!207751 () Bool)

(assert (=> (not b_lambda!207751) (not d!1737128)))

(declare-fun bs!1262320 () Bool)

(assert (= bs!1262320 d!1737128))

(declare-fun m!6476428 () Bool)

(assert (=> bs!1262320 m!6476428))

(declare-fun m!6476432 () Bool)

(assert (=> bs!1262320 m!6476432))

(declare-fun m!6476434 () Bool)

(assert (=> bs!1262320 m!6476434))

(declare-fun m!6476438 () Bool)

(assert (=> bs!1262320 m!6476438))

(assert (=> bm!396260 d!1737128))

(declare-fun bs!1262323 () Bool)

(declare-fun b!5455272 () Bool)

(assert (= bs!1262323 (and b!5455272 d!1737106)))

(declare-fun lambda!288304 () Int)

(assert (=> bs!1262323 (not (= lambda!288304 lambda!288300))))

(declare-fun bs!1262324 () Bool)

(assert (= bs!1262324 (and b!5455272 b!5453934)))

(assert (=> bs!1262324 (= (and (= s!2326 Nil!62018) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288304 lambda!288174))))

(assert (=> bs!1262323 (not (= lambda!288304 lambda!288302))))

(declare-fun bs!1262325 () Bool)

(assert (= bs!1262325 (and b!5455272 b!5454128)))

(assert (=> bs!1262325 (not (= lambda!288304 lambda!288201))))

(declare-fun bs!1262326 () Bool)

(assert (= bs!1262326 (and b!5455272 b!5454017)))

(assert (=> bs!1262326 (= (and (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 r!7292)) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) r!7292)) (= lambda!288304 lambda!288180))))

(declare-fun bs!1262327 () Bool)

(assert (= bs!1262327 (and b!5455272 d!1737096)))

(assert (=> bs!1262327 (not (= lambda!288304 lambda!288299))))

(declare-fun bs!1262328 () Bool)

(assert (= bs!1262328 (and b!5455272 d!1736932)))

(assert (=> bs!1262328 (not (= lambda!288304 lambda!288268))))

(declare-fun bs!1262329 () Bool)

(assert (= bs!1262329 (and b!5455272 b!5453908)))

(assert (=> bs!1262329 (not (= lambda!288304 lambda!288154))))

(declare-fun bs!1262330 () Bool)

(assert (= bs!1262330 (and b!5455272 d!1736874)))

(assert (=> bs!1262330 (= (and (= s!2326 (ite c!952465 (_1!35783 lt!2225382) (ite c!952462 (_1!35783 lt!2225479) Nil!62018))) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) (Star!15281 (reg!15610 (regOne!31074 r!7292))))) (= lambda!288304 lambda!288241))))

(assert (=> bs!1262324 (not (= lambda!288304 lambda!288173))))

(declare-fun bs!1262331 () Bool)

(assert (= bs!1262331 (and b!5455272 b!5453914)))

(assert (=> bs!1262331 (not (= lambda!288304 lambda!288161))))

(declare-fun bs!1262332 () Bool)

(assert (= bs!1262332 (and b!5455272 b!5454396)))

(assert (=> bs!1262332 (not (= lambda!288304 lambda!288219))))

(declare-fun bs!1262333 () Bool)

(assert (= bs!1262333 (and b!5455272 b!5453924)))

(assert (=> bs!1262333 (not (= lambda!288304 lambda!288170))))

(assert (=> bs!1262331 (not (= lambda!288304 lambda!288163))))

(declare-fun bs!1262334 () Bool)

(assert (= bs!1262334 (and b!5455272 b!5453946)))

(assert (=> bs!1262334 (not (= lambda!288304 lambda!288160))))

(declare-fun bs!1262335 () Bool)

(assert (= bs!1262335 (and b!5455272 d!1736836)))

(assert (=> bs!1262335 (not (= lambda!288304 lambda!288229))))

(assert (=> bs!1262333 (not (= lambda!288304 lambda!288169))))

(assert (=> bs!1262329 (not (= lambda!288304 lambda!288153))))

(assert (=> bs!1262324 (not (= lambda!288304 lambda!288172))))

(assert (=> bs!1262333 (not (= lambda!288304 lambda!288168))))

(assert (=> bs!1262334 (not (= lambda!288304 lambda!288159))))

(declare-fun bs!1262337 () Bool)

(assert (= bs!1262337 (and b!5455272 b!5453931)))

(assert (=> bs!1262337 (not (= lambda!288304 lambda!288148))))

(assert (=> bs!1262337 (not (= lambda!288304 lambda!288149))))

(assert (=> bs!1262330 (not (= lambda!288304 lambda!288240))))

(declare-fun bs!1262338 () Bool)

(assert (= bs!1262338 (and b!5455272 b!5454397)))

(assert (=> bs!1262338 (= (and (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 lt!2225379)) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) lt!2225379)) (= lambda!288304 lambda!288217))))

(assert (=> bs!1262331 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288304 lambda!288162))))

(declare-fun bs!1262339 () Bool)

(assert (= bs!1262339 (and b!5455272 d!1736856)))

(assert (=> bs!1262339 (not (= lambda!288304 lambda!288234))))

(declare-fun bs!1262340 () Bool)

(assert (= bs!1262340 (and b!5455272 b!5454129)))

(assert (=> bs!1262340 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= lambda!288304 lambda!288200))))

(assert (=> bs!1262329 (not (= lambda!288304 lambda!288151))))

(assert (=> bs!1262335 (not (= lambda!288304 lambda!288230))))

(declare-fun bs!1262342 () Bool)

(assert (= bs!1262342 (and b!5455272 d!1736922)))

(assert (=> bs!1262342 (not (= lambda!288304 lambda!288267))))

(assert (=> bs!1262333 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) lt!2225374)) (= lambda!288304 lambda!288171))))

(declare-fun bs!1262343 () Bool)

(assert (= bs!1262343 (and b!5455272 b!5453953)))

(assert (=> bs!1262343 (not (= lambda!288304 lambda!288156))))

(declare-fun bs!1262344 () Bool)

(assert (= bs!1262344 (and b!5455272 b!5454211)))

(assert (=> bs!1262344 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (reg!15610 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= lambda!288304 lambda!288202))))

(assert (=> bs!1262333 (not (= lambda!288304 lambda!288167))))

(assert (=> bs!1262329 (not (= lambda!288304 lambda!288152))))

(assert (=> bs!1262343 (not (= lambda!288304 lambda!288155))))

(declare-fun bs!1262347 () Bool)

(assert (= bs!1262347 (and b!5455272 b!5454016)))

(assert (=> bs!1262347 (not (= lambda!288304 lambda!288182))))

(assert (=> bs!1262343 (not (= lambda!288304 lambda!288158))))

(assert (=> bs!1262343 (not (= lambda!288304 lambda!288157))))

(declare-fun bs!1262351 () Bool)

(assert (= bs!1262351 (and b!5455272 b!5454210)))

(assert (=> bs!1262351 (not (= lambda!288304 lambda!288203))))

(assert (=> bs!1262339 (not (= lambda!288304 lambda!288231))))

(assert (=> b!5455272 true))

(assert (=> b!5455272 true))

(declare-fun bs!1262356 () Bool)

(declare-fun b!5455271 () Bool)

(assert (= bs!1262356 (and b!5455271 d!1737106)))

(declare-fun lambda!288306 () Int)

(assert (=> bs!1262356 (not (= lambda!288306 lambda!288300))))

(declare-fun bs!1262358 () Bool)

(assert (= bs!1262358 (and b!5455271 b!5453934)))

(assert (=> bs!1262358 (not (= lambda!288306 lambda!288174))))

(assert (=> bs!1262356 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 r!7292))) (= lambda!288306 lambda!288302))))

(declare-fun bs!1262359 () Bool)

(assert (= bs!1262359 (and b!5455271 b!5454128)))

(assert (=> bs!1262359 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467 c!952462) s!2326 Nil!62018)) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374)))))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 (ite c!952469 lt!2225428 (ite c!952471 lt!2225532 (ite c!952467 lt!2225518 (ite c!952462 lt!2225567 lt!2225374))))))) (= lambda!288306 lambda!288201))))

(declare-fun bs!1262361 () Bool)

(assert (= bs!1262361 (and b!5455271 b!5454017)))

(assert (=> bs!1262361 (not (= lambda!288306 lambda!288180))))

(declare-fun bs!1262363 () Bool)

(assert (= bs!1262363 (and b!5455271 d!1737096)))

(assert (=> bs!1262363 (not (= lambda!288306 lambda!288299))))

(declare-fun bs!1262364 () Bool)

(assert (= bs!1262364 (and b!5455271 d!1736932)))

(assert (=> bs!1262364 (not (= lambda!288306 lambda!288268))))

(declare-fun bs!1262365 () Bool)

(assert (= bs!1262365 (and b!5455271 b!5453908)))

(assert (=> bs!1262365 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225531)) (= lambda!288306 lambda!288154))))

(declare-fun bs!1262367 () Bool)

(assert (= bs!1262367 (and b!5455271 b!5455272)))

(assert (=> bs!1262367 (not (= lambda!288306 lambda!288304))))

(declare-fun bs!1262369 () Bool)

(assert (= bs!1262369 (and b!5455271 d!1736874)))

(assert (=> bs!1262369 (not (= lambda!288306 lambda!288241))))

(assert (=> bs!1262358 (= (and (= s!2326 Nil!62018) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225374)) (= lambda!288306 lambda!288173))))

(declare-fun bs!1262371 () Bool)

(assert (= bs!1262371 (and b!5455271 b!5453914)))

(assert (=> bs!1262371 (not (= lambda!288306 lambda!288161))))

(declare-fun bs!1262372 () Bool)

(assert (= bs!1262372 (and b!5455271 b!5454396)))

(assert (=> bs!1262372 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 lt!2225379)) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 lt!2225379))) (= lambda!288306 lambda!288219))))

(declare-fun bs!1262374 () Bool)

(assert (= bs!1262374 (and b!5455271 b!5453924)))

(assert (=> bs!1262374 (= (and (= s!2326 (_1!35783 lt!2225479)) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225374)) (= lambda!288306 lambda!288170))))

(assert (=> bs!1262371 (= (and (= s!2326 (_1!35783 lt!2225382)) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (reg!15610 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225374)) (= lambda!288306 lambda!288163))))

(declare-fun bs!1262375 () Bool)

(assert (= bs!1262375 (and b!5455271 b!5453946)))

(assert (=> bs!1262375 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225374) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 r!7292))) (= lambda!288306 lambda!288160))))

(declare-fun bs!1262376 () Bool)

(assert (= bs!1262376 (and b!5455271 d!1736836)))

(assert (=> bs!1262376 (not (= lambda!288306 lambda!288229))))

(assert (=> bs!1262374 (not (= lambda!288306 lambda!288169))))

(assert (=> bs!1262365 (not (= lambda!288306 lambda!288153))))

(assert (=> bs!1262358 (not (= lambda!288306 lambda!288172))))

(assert (=> bs!1262374 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225473) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 r!7292))) (= lambda!288306 lambda!288168))))

(assert (=> bs!1262375 (not (= lambda!288306 lambda!288159))))

(declare-fun bs!1262380 () Bool)

(assert (= bs!1262380 (and b!5455271 b!5453931)))

(assert (=> bs!1262380 (not (= lambda!288306 lambda!288148))))

(assert (=> bs!1262380 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 r!7292))) (= lambda!288306 lambda!288149))))

(assert (=> bs!1262369 (not (= lambda!288306 lambda!288240))))

(declare-fun bs!1262382 () Bool)

(assert (= bs!1262382 (and b!5455271 b!5454397)))

(assert (=> bs!1262382 (not (= lambda!288306 lambda!288217))))

(assert (=> bs!1262371 (not (= lambda!288306 lambda!288162))))

(declare-fun bs!1262383 () Bool)

(assert (= bs!1262383 (and b!5455271 d!1736856)))

(assert (=> bs!1262383 (= (and (= s!2326 (ite (or c!952471 c!952467) s!2326 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)))) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (ite c!952471 (regOne!31074 (regOne!31074 r!7292)) (ite c!952467 (regTwo!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (ite c!952471 lt!2225532 (ite c!952467 lt!2225526 lt!2225374)))) (= lambda!288306 lambda!288234))))

(declare-fun bs!1262384 () Bool)

(assert (= bs!1262384 (and b!5455271 b!5454129)))

(assert (=> bs!1262384 (not (= lambda!288306 lambda!288200))))

(assert (=> bs!1262365 (not (= lambda!288306 lambda!288151))))

(assert (=> bs!1262376 (= (and (= s!2326 (ite (or c!952471 c!952467 c!952465 c!952462) s!2326 Nil!62018)) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (ite c!952465 lt!2225374 (ite c!952462 lt!2225473 (reg!15610 (regOne!31074 r!7292))))))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (ite c!952471 lt!2225531 (ite c!952467 lt!2225518 (ite (or c!952465 c!952462) (regTwo!31074 r!7292) lt!2225374))))) (= lambda!288306 lambda!288230))))

(declare-fun bs!1262386 () Bool)

(assert (= bs!1262386 (and b!5455271 d!1736922)))

(assert (=> bs!1262386 (not (= lambda!288306 lambda!288267))))

(assert (=> bs!1262374 (not (= lambda!288306 lambda!288171))))

(declare-fun bs!1262389 () Bool)

(assert (= bs!1262389 (and b!5455271 b!5453953)))

(assert (=> bs!1262389 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225518)) (= lambda!288306 lambda!288156))))

(declare-fun bs!1262391 () Bool)

(assert (= bs!1262391 (and b!5455271 b!5454211)))

(assert (=> bs!1262391 (not (= lambda!288306 lambda!288202))))

(assert (=> bs!1262374 (not (= lambda!288306 lambda!288167))))

(assert (=> bs!1262365 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225532)) (= lambda!288306 lambda!288152))))

(assert (=> bs!1262389 (not (= lambda!288306 lambda!288155))))

(declare-fun bs!1262395 () Bool)

(assert (= bs!1262395 (and b!5455271 b!5454016)))

(assert (=> bs!1262395 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 r!7292)) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 r!7292))) (= lambda!288306 lambda!288182))))

(assert (=> bs!1262389 (= (and (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 (regOne!31074 r!7292))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) lt!2225526)) (= lambda!288306 lambda!288158))))

(assert (=> bs!1262389 (not (= lambda!288306 lambda!288157))))

(declare-fun bs!1262398 () Bool)

(assert (= bs!1262398 (and b!5455271 b!5454210)))

(assert (=> bs!1262398 (= (and (= s!2326 (ite (or c!952469 c!952471 c!952467) s!2326 (ite c!952461 (ite c!952465 (_1!35783 lt!2225382) (_1!35783 lt!2225479)) s!2326))) (= (regOne!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regOne!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292))))))) (= (regTwo!31074 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) (regTwo!31074 (ite c!952469 lt!2225522 (ite c!952471 lt!2225530 (ite c!952467 lt!2225465 (ite c!952461 (ite c!952465 lt!2225374 lt!2225473) (regOne!31074 r!7292)))))))) (= lambda!288306 lambda!288203))))

(assert (=> bs!1262383 (not (= lambda!288306 lambda!288231))))

(assert (=> b!5455271 true))

(assert (=> b!5455271 true))

(declare-fun e!3378462 () Bool)

(declare-fun b!5455268 () Bool)

(assert (=> b!5455268 (= e!3378462 (matchRSpec!2384 (regTwo!31075 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) s!2326))))

(declare-fun c!952886 () Bool)

(declare-fun d!1737130 () Bool)

(assert (=> d!1737130 (= c!952886 ((_ is EmptyExpr!15281) (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))))))

(declare-fun e!3378461 () Bool)

(assert (=> d!1737130 (= (matchRSpec!2384 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))) s!2326) e!3378461)))

(declare-fun b!5455269 () Bool)

(declare-fun call!396537 () Bool)

(assert (=> b!5455269 (= e!3378461 call!396537)))

(declare-fun b!5455270 () Bool)

(declare-fun e!3378463 () Bool)

(declare-fun e!3378460 () Bool)

(assert (=> b!5455270 (= e!3378463 e!3378460)))

(declare-fun c!952885 () Bool)

(assert (=> b!5455270 (= c!952885 ((_ is Star!15281) (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))))))

(declare-fun call!396536 () Bool)

(assert (=> b!5455271 (= e!3378460 call!396536)))

(declare-fun e!3378459 () Bool)

(assert (=> b!5455272 (= e!3378459 call!396536)))

(declare-fun b!5455273 () Bool)

(declare-fun res!2323123 () Bool)

(assert (=> b!5455273 (=> res!2323123 e!3378459)))

(assert (=> b!5455273 (= res!2323123 call!396537)))

(assert (=> b!5455273 (= e!3378460 e!3378459)))

(declare-fun b!5455274 () Bool)

(declare-fun e!3378457 () Bool)

(assert (=> b!5455274 (= e!3378457 (= s!2326 (Cons!62018 (c!952474 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) Nil!62018)))))

(declare-fun b!5455275 () Bool)

(declare-fun e!3378458 () Bool)

(assert (=> b!5455275 (= e!3378461 e!3378458)))

(declare-fun res!2323124 () Bool)

(assert (=> b!5455275 (= res!2323124 (not ((_ is EmptyLang!15281) (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292))))))))

(assert (=> b!5455275 (=> (not res!2323124) (not e!3378458))))

(declare-fun c!952883 () Bool)

(declare-fun b!5455276 () Bool)

(assert (=> b!5455276 (= c!952883 ((_ is ElementMatch!15281) (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))))))

(assert (=> b!5455276 (= e!3378458 e!3378457)))

(declare-fun b!5455277 () Bool)

(assert (=> b!5455277 (= e!3378463 e!3378462)))

(declare-fun res!2323122 () Bool)

(assert (=> b!5455277 (= res!2323122 (matchRSpec!2384 (regOne!31075 (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))) s!2326))))

(assert (=> b!5455277 (=> res!2323122 e!3378462)))

(declare-fun b!5455278 () Bool)

(declare-fun c!952884 () Bool)

(assert (=> b!5455278 (= c!952884 ((_ is Union!15281) (ite c!952469 lt!2225391 (ite c!952461 lt!2225480 (regTwo!31074 r!7292)))))))

(assert (=> b!5455278 (= e!3378457 e!3378463)))

(declare-fun bm!396531 () Bool)

(assert (=> bm!396531 (= call!396537 (isEmpty!34002 s!2326))))

(declare-fun bm!396532 () Bool)

(assert (=> bm!396532 (= call!396536 (Exists!2462 (ite c!952885 lambda!288304 lambda!288306)))))

(assert (= (and d!1737130 c!952886) b!5455269))

(assert (= (and d!1737130 (not c!952886)) b!5455275))

(assert (= (and b!5455275 res!2323124) b!5455276))

(assert (= (and b!5455276 c!952883) b!5455274))

(assert (= (and b!5455276 (not c!952883)) b!5455278))

(assert (= (and b!5455278 c!952884) b!5455277))

(assert (= (and b!5455278 (not c!952884)) b!5455270))

(assert (= (and b!5455277 (not res!2323122)) b!5455268))

(assert (= (and b!5455270 c!952885) b!5455273))

(assert (= (and b!5455270 (not c!952885)) b!5455271))

(assert (= (and b!5455273 (not res!2323123)) b!5455272))

(assert (= (or b!5455272 b!5455271) bm!396532))

(assert (= (or b!5455269 b!5455273) bm!396531))

(declare-fun m!6476450 () Bool)

(assert (=> b!5455268 m!6476450))

(declare-fun m!6476452 () Bool)

(assert (=> b!5455277 m!6476452))

(assert (=> bm!396531 m!6474766))

(declare-fun m!6476454 () Bool)

(assert (=> bm!396532 m!6476454))

(assert (=> bm!396213 d!1737130))

(declare-fun c!952891 () Bool)

(declare-fun d!1737144 () Bool)

(assert (=> d!1737144 (= c!952891 (isEmpty!34002 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite c!952461 (ite c!952465 lt!2225455 lt!2225547) (t!375371 s!2326))))))))

(declare-fun e!3378471 () Bool)

(assert (=> d!1737144 (= (matchZipper!1525 (ite c!952469 lt!2225376 (ite c!952471 ((_ map or) lt!2225441 lt!2225541) (ite c!952461 (ite c!952465 (store ((as const (Array Context!9330 Bool)) false) (Context!9331 call!396338) true) (store ((as const (Array Context!9330 Bool)) false) (Context!9331 lt!2225502) true)) ((_ map or) lt!2225534 lt!2225384)))) (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite c!952461 (ite c!952465 lt!2225455 lt!2225547) (t!375371 s!2326))))) e!3378471)))

(declare-fun b!5455290 () Bool)

(assert (=> b!5455290 (= e!3378471 (nullableZipper!1483 (ite c!952469 lt!2225376 (ite c!952471 ((_ map or) lt!2225441 lt!2225541) (ite c!952461 (ite c!952465 (store ((as const (Array Context!9330 Bool)) false) (Context!9331 call!396338) true) (store ((as const (Array Context!9330 Bool)) false) (Context!9331 lt!2225502) true)) ((_ map or) lt!2225534 lt!2225384))))))))

(declare-fun b!5455291 () Bool)

(assert (=> b!5455291 (= e!3378471 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 lt!2225376 (ite c!952471 ((_ map or) lt!2225441 lt!2225541) (ite c!952461 (ite c!952465 (store ((as const (Array Context!9330 Bool)) false) (Context!9331 call!396338) true) (store ((as const (Array Context!9330 Bool)) false) (Context!9331 lt!2225502) true)) ((_ map or) lt!2225534 lt!2225384)))) (head!11683 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite c!952461 (ite c!952465 lt!2225455 lt!2225547) (t!375371 s!2326)))))) (tail!10780 (ite c!952469 s!2326 (ite c!952471 (t!375371 s!2326) (ite c!952461 (ite c!952465 lt!2225455 lt!2225547) (t!375371 s!2326)))))))))

(assert (= (and d!1737144 c!952891) b!5455290))

(assert (= (and d!1737144 (not c!952891)) b!5455291))

(declare-fun m!6476456 () Bool)

(assert (=> d!1737144 m!6476456))

(declare-fun m!6476458 () Bool)

(assert (=> b!5455290 m!6476458))

(declare-fun m!6476460 () Bool)

(assert (=> b!5455291 m!6476460))

(assert (=> b!5455291 m!6476460))

(declare-fun m!6476462 () Bool)

(assert (=> b!5455291 m!6476462))

(declare-fun m!6476464 () Bool)

(assert (=> b!5455291 m!6476464))

(assert (=> b!5455291 m!6476462))

(assert (=> b!5455291 m!6476464))

(declare-fun m!6476466 () Bool)

(assert (=> b!5455291 m!6476466))

(assert (=> bm!396232 d!1737144))

(declare-fun d!1737146 () Bool)

(assert (=> d!1737146 (= (isDefined!12095 (ite c!952462 lt!2225416 call!396297)) (not (isEmpty!34005 (ite c!952462 lt!2225416 call!396297))))))

(declare-fun bs!1262406 () Bool)

(assert (= bs!1262406 d!1737146))

(declare-fun m!6476468 () Bool)

(assert (=> bs!1262406 m!6476468))

(assert (=> bm!396342 d!1737146))

(declare-fun b!5455292 () Bool)

(declare-fun e!3378473 () Bool)

(assert (=> b!5455292 (= e!3378473 (nullable!5450 (h!68467 (exprs!5165 (ite c!952469 lt!2225566 lt!2225444)))))))

(declare-fun d!1737148 () Bool)

(declare-fun c!952893 () Bool)

(assert (=> d!1737148 (= c!952893 e!3378473)))

(declare-fun res!2323128 () Bool)

(assert (=> d!1737148 (=> (not res!2323128) (not e!3378473))))

(assert (=> d!1737148 (= res!2323128 ((_ is Cons!62019) (exprs!5165 (ite c!952469 lt!2225566 lt!2225444))))))

(declare-fun e!3378474 () (InoxSet Context!9330))

(assert (=> d!1737148 (= (derivationStepZipperUp!653 (ite c!952469 lt!2225566 lt!2225444) (h!68466 s!2326)) e!3378474)))

(declare-fun b!5455293 () Bool)

(declare-fun e!3378472 () (InoxSet Context!9330))

(declare-fun call!396540 () (InoxSet Context!9330))

(assert (=> b!5455293 (= e!3378472 call!396540)))

(declare-fun b!5455294 () Bool)

(assert (=> b!5455294 (= e!3378474 ((_ map or) call!396540 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 (ite c!952469 lt!2225566 lt!2225444)))) (h!68466 s!2326))))))

(declare-fun b!5455295 () Bool)

(assert (=> b!5455295 (= e!3378474 e!3378472)))

(declare-fun c!952892 () Bool)

(assert (=> b!5455295 (= c!952892 ((_ is Cons!62019) (exprs!5165 (ite c!952469 lt!2225566 lt!2225444))))))

(declare-fun b!5455296 () Bool)

(assert (=> b!5455296 (= e!3378472 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396535 () Bool)

(assert (=> bm!396535 (= call!396540 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (ite c!952469 lt!2225566 lt!2225444))) (Context!9331 (t!375372 (exprs!5165 (ite c!952469 lt!2225566 lt!2225444)))) (h!68466 s!2326)))))

(assert (= (and d!1737148 res!2323128) b!5455292))

(assert (= (and d!1737148 c!952893) b!5455294))

(assert (= (and d!1737148 (not c!952893)) b!5455295))

(assert (= (and b!5455295 c!952892) b!5455293))

(assert (= (and b!5455295 (not c!952892)) b!5455296))

(assert (= (or b!5455294 b!5455293) bm!396535))

(declare-fun m!6476470 () Bool)

(assert (=> b!5455292 m!6476470))

(declare-fun m!6476472 () Bool)

(assert (=> b!5455294 m!6476472))

(declare-fun m!6476474 () Bool)

(assert (=> bm!396535 m!6476474))

(assert (=> bm!396324 d!1737148))

(declare-fun d!1737150 () Bool)

(declare-fun res!2323141 () Bool)

(declare-fun e!3378486 () Bool)

(assert (=> d!1737150 (=> res!2323141 e!3378486)))

(assert (=> d!1737150 (= res!2323141 ((_ is Nil!62019) (t!375372 (exprs!5165 (h!68468 zl!343)))))))

(assert (=> d!1737150 (= (forall!14584 (t!375372 (exprs!5165 (h!68468 zl!343))) lambda!288175) e!3378486)))

(declare-fun b!5455315 () Bool)

(declare-fun e!3378487 () Bool)

(assert (=> b!5455315 (= e!3378486 e!3378487)))

(declare-fun res!2323142 () Bool)

(assert (=> b!5455315 (=> (not res!2323142) (not e!3378487))))

(declare-fun dynLambda!24404 (Int Regex!15281) Bool)

(assert (=> b!5455315 (= res!2323142 (dynLambda!24404 lambda!288175 (h!68467 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455316 () Bool)

(assert (=> b!5455316 (= e!3378487 (forall!14584 (t!375372 (t!375372 (exprs!5165 (h!68468 zl!343)))) lambda!288175))))

(assert (= (and d!1737150 (not res!2323141)) b!5455315))

(assert (= (and b!5455315 res!2323142) b!5455316))

(declare-fun b_lambda!207753 () Bool)

(assert (=> (not b_lambda!207753) (not b!5455315)))

(declare-fun m!6476484 () Bool)

(assert (=> b!5455315 m!6476484))

(declare-fun m!6476488 () Bool)

(assert (=> b!5455316 m!6476488))

(assert (=> b!5453915 d!1737150))

(declare-fun b!5455317 () Bool)

(declare-fun e!3378490 () (InoxSet Context!9330))

(declare-fun e!3378488 () (InoxSet Context!9330))

(assert (=> b!5455317 (= e!3378490 e!3378488)))

(declare-fun c!952901 () Bool)

(assert (=> b!5455317 (= c!952901 ((_ is Concat!24126) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))))

(declare-fun call!396543 () (InoxSet Context!9330))

(declare-fun bm!396537 () Bool)

(declare-fun c!952900 () Bool)

(declare-fun call!396542 () List!62143)

(declare-fun c!952897 () Bool)

(assert (=> bm!396537 (= call!396543 (derivationStepZipperDown!729 (ite c!952900 (regOne!31075 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (ite c!952897 (regTwo!31074 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (ite c!952901 (regOne!31074 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (reg!15610 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))))))) (ite (or c!952900 c!952897) (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467)) (Context!9331 call!396542)) (h!68466 s!2326)))))

(declare-fun b!5455318 () Bool)

(declare-fun e!3378489 () (InoxSet Context!9330))

(assert (=> b!5455318 (= e!3378489 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396538 () Bool)

(declare-fun call!396545 () List!62143)

(assert (=> bm!396538 (= call!396542 call!396545)))

(declare-fun bm!396539 () Bool)

(declare-fun call!396547 () (InoxSet Context!9330))

(declare-fun call!396544 () (InoxSet Context!9330))

(assert (=> bm!396539 (= call!396547 call!396544)))

(declare-fun bm!396540 () Bool)

(declare-fun call!396546 () (InoxSet Context!9330))

(assert (=> bm!396540 (= call!396546 (derivationStepZipperDown!729 (ite c!952900 (regTwo!31075 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (regOne!31074 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))))) (ite c!952900 (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467)) (Context!9331 call!396545)) (h!68466 s!2326)))))

(declare-fun b!5455319 () Bool)

(declare-fun e!3378492 () (InoxSet Context!9330))

(declare-fun e!3378491 () (InoxSet Context!9330))

(assert (=> b!5455319 (= e!3378492 e!3378491)))

(assert (=> b!5455319 (= c!952900 ((_ is Union!15281) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))))

(declare-fun c!952899 () Bool)

(declare-fun d!1737154 () Bool)

(assert (=> d!1737154 (= c!952899 (and ((_ is ElementMatch!15281) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (= (c!952474 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (h!68466 s!2326))))))

(assert (=> d!1737154 (= (derivationStepZipperDown!729 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))) (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467)) (h!68466 s!2326)) e!3378492)))

(declare-fun b!5455320 () Bool)

(declare-fun e!3378493 () Bool)

(assert (=> b!5455320 (= e!3378493 (nullable!5450 (regOne!31074 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))))))))

(declare-fun bm!396541 () Bool)

(assert (=> bm!396541 (= call!396544 call!396543)))

(declare-fun b!5455321 () Bool)

(assert (=> b!5455321 (= e!3378491 ((_ map or) call!396543 call!396546))))

(declare-fun b!5455322 () Bool)

(assert (=> b!5455322 (= e!3378488 call!396547)))

(declare-fun b!5455323 () Bool)

(assert (=> b!5455323 (= e!3378490 ((_ map or) call!396546 call!396544))))

(declare-fun b!5455324 () Bool)

(assert (=> b!5455324 (= c!952897 e!3378493)))

(declare-fun res!2323143 () Bool)

(assert (=> b!5455324 (=> (not res!2323143) (not e!3378493))))

(assert (=> b!5455324 (= res!2323143 ((_ is Concat!24126) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))))

(assert (=> b!5455324 (= e!3378491 e!3378490)))

(declare-fun b!5455325 () Bool)

(assert (=> b!5455325 (= e!3378492 (store ((as const (Array Context!9330 Bool)) false) (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467)) true))))

(declare-fun b!5455326 () Bool)

(assert (=> b!5455326 (= e!3378489 call!396547)))

(declare-fun b!5455327 () Bool)

(declare-fun c!952898 () Bool)

(assert (=> b!5455327 (= c!952898 ((_ is Star!15281) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))))))

(assert (=> b!5455327 (= e!3378488 e!3378489)))

(declare-fun bm!396542 () Bool)

(assert (=> bm!396542 (= call!396545 ($colon$colon!1534 (exprs!5165 (ite (or c!952469 c!952471) lt!2225444 (ite c!952467 (Context!9331 lt!2225523) lt!2225467))) (ite (or c!952897 c!952901) (regTwo!31074 (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292)))))) (ite c!952469 (regOne!31075 (regOne!31074 r!7292)) (ite c!952471 (regTwo!31074 (regOne!31074 r!7292)) (ite c!952467 (regOne!31074 (regOne!31074 r!7292)) (reg!15610 (regOne!31074 r!7292))))))))))

(assert (= (and d!1737154 c!952899) b!5455325))

(assert (= (and d!1737154 (not c!952899)) b!5455319))

(assert (= (and b!5455319 c!952900) b!5455321))

(assert (= (and b!5455319 (not c!952900)) b!5455324))

(assert (= (and b!5455324 res!2323143) b!5455320))

(assert (= (and b!5455324 c!952897) b!5455323))

(assert (= (and b!5455324 (not c!952897)) b!5455317))

(assert (= (and b!5455317 c!952901) b!5455322))

(assert (= (and b!5455317 (not c!952901)) b!5455327))

(assert (= (and b!5455327 c!952898) b!5455326))

(assert (= (and b!5455327 (not c!952898)) b!5455318))

(assert (= (or b!5455322 b!5455326) bm!396538))

(assert (= (or b!5455322 b!5455326) bm!396539))

(assert (= (or b!5455323 bm!396538) bm!396542))

(assert (= (or b!5455323 bm!396539) bm!396541))

(assert (= (or b!5455321 b!5455323) bm!396540))

(assert (= (or b!5455321 bm!396541) bm!396537))

(declare-fun m!6476500 () Bool)

(assert (=> b!5455325 m!6476500))

(declare-fun m!6476502 () Bool)

(assert (=> b!5455320 m!6476502))

(declare-fun m!6476504 () Bool)

(assert (=> bm!396540 m!6476504))

(declare-fun m!6476506 () Bool)

(assert (=> bm!396542 m!6476506))

(declare-fun m!6476508 () Bool)

(assert (=> bm!396537 m!6476508))

(assert (=> bm!396295 d!1737154))

(declare-fun d!1737162 () Bool)

(assert (=> d!1737162 (= (get!21386 (ite c!952465 lt!2225514 lt!2225416)) (v!51420 (ite c!952465 lt!2225514 lt!2225416)))))

(assert (=> bm!396346 d!1737162))

(declare-fun d!1737164 () Bool)

(assert (=> d!1737164 (= (isDefined!12095 (ite c!952471 call!396262 (ite c!952467 call!396209 (ite c!952465 lt!2225421 lt!2225458)))) (not (isEmpty!34005 (ite c!952471 call!396262 (ite c!952467 call!396209 (ite c!952465 lt!2225421 lt!2225458))))))))

(declare-fun bs!1262413 () Bool)

(assert (= bs!1262413 d!1737164))

(declare-fun m!6476514 () Bool)

(assert (=> bs!1262413 m!6476514))

(assert (=> bm!396327 d!1737164))

(declare-fun d!1737166 () Bool)

(assert (=> d!1737166 (= (flatMap!1008 (ite c!952467 lt!2225517 (ite c!952461 lt!2225399 lt!2225375)) (ite c!952467 lambda!288150 (ite c!952461 lambda!288150 lambda!288150))) (choose!41407 (ite c!952467 lt!2225517 (ite c!952461 lt!2225399 lt!2225375)) (ite c!952467 lambda!288150 (ite c!952461 lambda!288150 lambda!288150))))))

(declare-fun bs!1262414 () Bool)

(assert (= bs!1262414 d!1737166))

(declare-fun m!6476520 () Bool)

(assert (=> bs!1262414 m!6476520))

(assert (=> bm!396182 d!1737166))

(declare-fun c!952905 () Bool)

(declare-fun d!1737168 () Bool)

(assert (=> d!1737168 (= c!952905 (isEmpty!34002 (ite (or c!952469 c!952471) (t!375371 s!2326) (_2!35783 lt!2225415))))))

(declare-fun e!3378500 () Bool)

(assert (=> d!1737168 (= (matchZipper!1525 (ite c!952469 ((_ map or) lt!2225487 lt!2225384) (ite c!952471 lt!2225541 lt!2225399)) (ite (or c!952469 c!952471) (t!375371 s!2326) (_2!35783 lt!2225415))) e!3378500)))

(declare-fun b!5455339 () Bool)

(assert (=> b!5455339 (= e!3378500 (nullableZipper!1483 (ite c!952469 ((_ map or) lt!2225487 lt!2225384) (ite c!952471 lt!2225541 lt!2225399))))))

(declare-fun b!5455340 () Bool)

(assert (=> b!5455340 (= e!3378500 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 ((_ map or) lt!2225487 lt!2225384) (ite c!952471 lt!2225541 lt!2225399)) (head!11683 (ite (or c!952469 c!952471) (t!375371 s!2326) (_2!35783 lt!2225415)))) (tail!10780 (ite (or c!952469 c!952471) (t!375371 s!2326) (_2!35783 lt!2225415)))))))

(assert (= (and d!1737168 c!952905) b!5455339))

(assert (= (and d!1737168 (not c!952905)) b!5455340))

(declare-fun m!6476532 () Bool)

(assert (=> d!1737168 m!6476532))

(declare-fun m!6476536 () Bool)

(assert (=> b!5455339 m!6476536))

(declare-fun m!6476538 () Bool)

(assert (=> b!5455340 m!6476538))

(assert (=> b!5455340 m!6476538))

(declare-fun m!6476540 () Bool)

(assert (=> b!5455340 m!6476540))

(declare-fun m!6476542 () Bool)

(assert (=> b!5455340 m!6476542))

(assert (=> b!5455340 m!6476540))

(assert (=> b!5455340 m!6476542))

(declare-fun m!6476546 () Bool)

(assert (=> b!5455340 m!6476546))

(assert (=> bm!396281 d!1737168))

(declare-fun d!1737176 () Bool)

(assert (=> d!1737176 (matchR!7466 (Concat!24126 (ite c!952465 (reg!15610 (regOne!31074 r!7292)) lt!2225374) (ite c!952465 lt!2225527 (regTwo!31074 r!7292))) (++!13641 (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))

(declare-fun lt!2225847 () Unit!154792)

(assert (=> d!1737176 (= lt!2225847 (choose!41404 (ite c!952465 (reg!15610 (regOne!31074 r!7292)) lt!2225374) (ite c!952465 lt!2225527 (regTwo!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))))))

(declare-fun e!3378501 () Bool)

(assert (=> d!1737176 e!3378501))

(declare-fun res!2323149 () Bool)

(assert (=> d!1737176 (=> (not res!2323149) (not e!3378501))))

(assert (=> d!1737176 (= res!2323149 (validRegex!7017 (ite c!952465 (reg!15610 (regOne!31074 r!7292)) lt!2225374)))))

(assert (=> d!1737176 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!248 (ite c!952465 (reg!15610 (regOne!31074 r!7292)) lt!2225374) (ite c!952465 lt!2225527 (regTwo!31074 r!7292)) (ite c!952465 (_1!35783 lt!2225499) lt!2225495) (ite c!952465 lt!2225429 (_2!35783 lt!2225479))) lt!2225847)))

(declare-fun b!5455341 () Bool)

(assert (=> b!5455341 (= e!3378501 (validRegex!7017 (ite c!952465 lt!2225527 (regTwo!31074 r!7292))))))

(assert (= (and d!1737176 res!2323149) b!5455341))

(assert (=> d!1737176 m!6474552))

(assert (=> d!1737176 m!6474552))

(declare-fun m!6476548 () Bool)

(assert (=> d!1737176 m!6476548))

(declare-fun m!6476550 () Bool)

(assert (=> d!1737176 m!6476550))

(declare-fun m!6476552 () Bool)

(assert (=> d!1737176 m!6476552))

(declare-fun m!6476554 () Bool)

(assert (=> b!5455341 m!6476554))

(assert (=> bm!396266 d!1737176))

(declare-fun c!952906 () Bool)

(declare-fun d!1737178 () Bool)

(assert (=> d!1737178 (= c!952906 (isEmpty!34002 (ite (or c!952469 c!952471) (t!375371 s!2326) (ite c!952467 s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 lt!2225429) (ite c!952462 (_1!35783 lt!2225415) s!2326)) s!2326)))))))

(declare-fun e!3378502 () Bool)

(assert (=> d!1737178 (= (matchZipper!1525 (ite c!952469 ((_ map or) lt!2225506 lt!2225384) (ite c!952471 lt!2225439 (ite c!952467 z!1189 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225436 lt!2225399) (ite c!952462 lt!2225545 lt!2225513)) z!1189)))) (ite (or c!952469 c!952471) (t!375371 s!2326) (ite c!952467 s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 lt!2225429) (ite c!952462 (_1!35783 lt!2225415) s!2326)) s!2326)))) e!3378502)))

(declare-fun b!5455342 () Bool)

(assert (=> b!5455342 (= e!3378502 (nullableZipper!1483 (ite c!952469 ((_ map or) lt!2225506 lt!2225384) (ite c!952471 lt!2225439 (ite c!952467 z!1189 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225436 lt!2225399) (ite c!952462 lt!2225545 lt!2225513)) z!1189))))))))

(declare-fun b!5455343 () Bool)

(assert (=> b!5455343 (= e!3378502 (matchZipper!1525 (derivationStepZipper!1500 (ite c!952469 ((_ map or) lt!2225506 lt!2225384) (ite c!952471 lt!2225439 (ite c!952467 z!1189 (ite c!952461 (ite c!952465 (ite c!952466 lt!2225436 lt!2225399) (ite c!952462 lt!2225545 lt!2225513)) z!1189)))) (head!11683 (ite (or c!952469 c!952471) (t!375371 s!2326) (ite c!952467 s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 lt!2225429) (ite c!952462 (_1!35783 lt!2225415) s!2326)) s!2326))))) (tail!10780 (ite (or c!952469 c!952471) (t!375371 s!2326) (ite c!952467 s!2326 (ite c!952461 (ite c!952465 (ite c!952466 s!2326 lt!2225429) (ite c!952462 (_1!35783 lt!2225415) s!2326)) s!2326))))))))

(assert (= (and d!1737178 c!952906) b!5455342))

(assert (= (and d!1737178 (not c!952906)) b!5455343))

(declare-fun m!6476556 () Bool)

(assert (=> d!1737178 m!6476556))

(declare-fun m!6476558 () Bool)

(assert (=> b!5455342 m!6476558))

(declare-fun m!6476560 () Bool)

(assert (=> b!5455343 m!6476560))

(assert (=> b!5455343 m!6476560))

(declare-fun m!6476562 () Bool)

(assert (=> b!5455343 m!6476562))

(declare-fun m!6476564 () Bool)

(assert (=> b!5455343 m!6476564))

(assert (=> b!5455343 m!6476562))

(assert (=> b!5455343 m!6476564))

(declare-fun m!6476566 () Bool)

(assert (=> b!5455343 m!6476566))

(assert (=> bm!396312 d!1737178))

(declare-fun bs!1262427 () Bool)

(declare-fun d!1737180 () Bool)

(assert (= bs!1262427 (and d!1737180 d!1737060)))

(declare-fun lambda!288309 () Int)

(assert (=> bs!1262427 (= lambda!288309 lambda!288282)))

(declare-fun bs!1262428 () Bool)

(assert (= bs!1262428 (and d!1737180 b!5453915)))

(assert (=> bs!1262428 (= lambda!288309 lambda!288175)))

(declare-fun bs!1262429 () Bool)

(assert (= bs!1262429 (and d!1737180 d!1736890)))

(assert (=> bs!1262429 (= lambda!288309 lambda!288249)))

(declare-fun bs!1262430 () Bool)

(assert (= bs!1262430 (and d!1737180 d!1737034)))

(assert (=> bs!1262430 (= lambda!288309 lambda!288274)))

(declare-fun bs!1262431 () Bool)

(assert (= bs!1262431 (and d!1737180 b!5453914)))

(assert (=> bs!1262431 (= lambda!288309 lambda!288164)))

(declare-fun bs!1262432 () Bool)

(assert (= bs!1262432 (and d!1737180 d!1736944)))

(assert (=> bs!1262432 (= lambda!288309 lambda!288270)))

(declare-fun bs!1262434 () Bool)

(assert (= bs!1262434 (and d!1737180 d!1736906)))

(assert (=> bs!1262434 (= lambda!288309 lambda!288257)))

(declare-fun bs!1262435 () Bool)

(assert (= bs!1262435 (and d!1737180 d!1736918)))

(assert (=> bs!1262435 (= lambda!288309 lambda!288261)))

(declare-fun bs!1262436 () Bool)

(assert (= bs!1262436 (and d!1737180 d!1736776)))

(assert (=> bs!1262436 (= lambda!288309 lambda!288206)))

(declare-fun bs!1262437 () Bool)

(assert (= bs!1262437 (and d!1737180 d!1736920)))

(assert (=> bs!1262437 (= lambda!288309 lambda!288264)))

(declare-fun bs!1262438 () Bool)

(assert (= bs!1262438 (and d!1737180 b!5453924)))

(assert (=> bs!1262438 (= lambda!288309 lambda!288166)))

(declare-fun bs!1262440 () Bool)

(assert (= bs!1262440 (and d!1737180 d!1737056)))

(assert (=> bs!1262440 (= lambda!288309 lambda!288281)))

(declare-fun e!3378505 () Bool)

(assert (=> d!1737180 e!3378505))

(declare-fun res!2323151 () Bool)

(assert (=> d!1737180 (=> (not res!2323151) (not e!3378505))))

(declare-fun lt!2225848 () Regex!15281)

(assert (=> d!1737180 (= res!2323151 (validRegex!7017 lt!2225848))))

(declare-fun e!3378503 () Regex!15281)

(assert (=> d!1737180 (= lt!2225848 e!3378503)))

(declare-fun c!952907 () Bool)

(declare-fun e!3378508 () Bool)

(assert (=> d!1737180 (= c!952907 e!3378508)))

(declare-fun res!2323150 () Bool)

(assert (=> d!1737180 (=> (not res!2323150) (not e!3378508))))

(assert (=> d!1737180 (= res!2323150 ((_ is Cons!62019) (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(assert (=> d!1737180 (forall!14584 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343)))) lambda!288309)))

(assert (=> d!1737180 (= (generalisedConcat!950 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))) lt!2225848)))

(declare-fun b!5455344 () Bool)

(declare-fun e!3378506 () Regex!15281)

(assert (=> b!5455344 (= e!3378506 EmptyExpr!15281)))

(declare-fun b!5455345 () Bool)

(declare-fun e!3378504 () Bool)

(assert (=> b!5455345 (= e!3378504 (isEmptyExpr!1016 lt!2225848))))

(declare-fun b!5455346 () Bool)

(assert (=> b!5455346 (= e!3378506 (Concat!24126 (h!68467 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))) (generalisedConcat!950 (t!375372 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))))

(declare-fun b!5455347 () Bool)

(assert (=> b!5455347 (= e!3378505 e!3378504)))

(declare-fun c!952909 () Bool)

(assert (=> b!5455347 (= c!952909 (isEmpty!34003 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455348 () Bool)

(declare-fun e!3378507 () Bool)

(assert (=> b!5455348 (= e!3378504 e!3378507)))

(declare-fun c!952908 () Bool)

(assert (=> b!5455348 (= c!952908 (isEmpty!34003 (tail!10783 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))

(declare-fun b!5455349 () Bool)

(assert (=> b!5455349 (= e!3378508 (isEmpty!34003 (t!375372 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))

(declare-fun b!5455350 () Bool)

(assert (=> b!5455350 (= e!3378503 e!3378506)))

(declare-fun c!952910 () Bool)

(assert (=> b!5455350 (= c!952910 ((_ is Cons!62019) (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun b!5455351 () Bool)

(assert (=> b!5455351 (= e!3378507 (= lt!2225848 (head!11686 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343)))))))))

(declare-fun b!5455352 () Bool)

(assert (=> b!5455352 (= e!3378507 (isConcat!539 lt!2225848))))

(declare-fun b!5455353 () Bool)

(assert (=> b!5455353 (= e!3378503 (h!68467 (ite c!952469 lt!2225498 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(assert (= (and d!1737180 res!2323150) b!5455349))

(assert (= (and d!1737180 c!952907) b!5455353))

(assert (= (and d!1737180 (not c!952907)) b!5455350))

(assert (= (and b!5455350 c!952910) b!5455346))

(assert (= (and b!5455350 (not c!952910)) b!5455344))

(assert (= (and d!1737180 res!2323151) b!5455347))

(assert (= (and b!5455347 c!952909) b!5455345))

(assert (= (and b!5455347 (not c!952909)) b!5455348))

(assert (= (and b!5455348 c!952908) b!5455351))

(assert (= (and b!5455348 (not c!952908)) b!5455352))

(declare-fun m!6476568 () Bool)

(assert (=> b!5455349 m!6476568))

(declare-fun m!6476570 () Bool)

(assert (=> b!5455352 m!6476570))

(declare-fun m!6476572 () Bool)

(assert (=> b!5455351 m!6476572))

(declare-fun m!6476574 () Bool)

(assert (=> b!5455347 m!6476574))

(declare-fun m!6476576 () Bool)

(assert (=> b!5455346 m!6476576))

(declare-fun m!6476578 () Bool)

(assert (=> d!1737180 m!6476578))

(declare-fun m!6476580 () Bool)

(assert (=> d!1737180 m!6476580))

(declare-fun m!6476582 () Bool)

(assert (=> b!5455348 m!6476582))

(assert (=> b!5455348 m!6476582))

(declare-fun m!6476584 () Bool)

(assert (=> b!5455348 m!6476584))

(declare-fun m!6476586 () Bool)

(assert (=> b!5455345 m!6476586))

(assert (=> bm!396253 d!1737180))

(declare-fun d!1737182 () Bool)

(assert (=> d!1737182 (= (Exists!2462 (ite c!952471 lambda!288151 (ite c!952467 lambda!288157 (ite c!952465 lambda!288160 (ite c!952462 lambda!288171 lambda!288172))))) (choose!41402 (ite c!952471 lambda!288151 (ite c!952467 lambda!288157 (ite c!952465 lambda!288160 (ite c!952462 lambda!288171 lambda!288172))))))))

(declare-fun bs!1262446 () Bool)

(assert (= bs!1262446 d!1737182))

(declare-fun m!6476588 () Bool)

(assert (=> bs!1262446 m!6476588))

(assert (=> bm!396285 d!1737182))

(assert (=> bm!396270 d!1736780))

(declare-fun b!5455354 () Bool)

(declare-fun e!3378510 () Bool)

(assert (=> b!5455354 (= e!3378510 (nullable!5450 (h!68467 (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444))))))))

(declare-fun d!1737184 () Bool)

(declare-fun c!952912 () Bool)

(assert (=> d!1737184 (= c!952912 e!3378510)))

(declare-fun res!2323152 () Bool)

(assert (=> d!1737184 (=> (not res!2323152) (not e!3378510))))

(assert (=> d!1737184 (= res!2323152 ((_ is Cons!62019) (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444)))))))

(declare-fun e!3378511 () (InoxSet Context!9330))

(assert (=> d!1737184 (= (derivationStepZipperUp!653 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444)) (h!68466 s!2326)) e!3378511)))

(declare-fun b!5455355 () Bool)

(declare-fun e!3378509 () (InoxSet Context!9330))

(declare-fun call!396548 () (InoxSet Context!9330))

(assert (=> b!5455355 (= e!3378509 call!396548)))

(declare-fun b!5455356 () Bool)

(assert (=> b!5455356 (= e!3378511 ((_ map or) call!396548 (derivationStepZipperUp!653 (Context!9331 (t!375372 (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444))))) (h!68466 s!2326))))))

(declare-fun b!5455357 () Bool)

(assert (=> b!5455357 (= e!3378511 e!3378509)))

(declare-fun c!952911 () Bool)

(assert (=> b!5455357 (= c!952911 ((_ is Cons!62019) (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444)))))))

(declare-fun b!5455358 () Bool)

(assert (=> b!5455358 (= e!3378509 ((as const (Array Context!9330 Bool)) false))))

(declare-fun bm!396543 () Bool)

(assert (=> bm!396543 (= call!396548 (derivationStepZipperDown!729 (h!68467 (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444)))) (Context!9331 (t!375372 (exprs!5165 (ite c!952471 lt!2225440 (ite c!952461 lt!2225387 lt!2225444))))) (h!68466 s!2326)))))

(assert (= (and d!1737184 res!2323152) b!5455354))

(assert (= (and d!1737184 c!952912) b!5455356))

(assert (= (and d!1737184 (not c!952912)) b!5455357))

(assert (= (and b!5455357 c!952911) b!5455355))

(assert (= (and b!5455357 (not c!952911)) b!5455358))

(assert (= (or b!5455356 b!5455355) bm!396543))

(declare-fun m!6476590 () Bool)

(assert (=> b!5455354 m!6476590))

(declare-fun m!6476592 () Bool)

(assert (=> b!5455356 m!6476592))

(declare-fun m!6476594 () Bool)

(assert (=> bm!396543 m!6476594))

(assert (=> bm!396205 d!1737184))

(declare-fun d!1737186 () Bool)

(assert (=> d!1737186 (= (flatMap!1008 (ite c!952461 lt!2225545 lt!2225375) (ite c!952461 lambda!288150 lambda!288150)) (dynLambda!24401 (ite c!952461 lambda!288150 lambda!288150) (ite c!952461 lt!2225387 lt!2225444)))))

(declare-fun lt!2225849 () Unit!154792)

(assert (=> d!1737186 (= lt!2225849 (choose!41410 (ite c!952461 lt!2225545 lt!2225375) (ite c!952461 lt!2225387 lt!2225444) (ite c!952461 lambda!288150 lambda!288150)))))

(assert (=> d!1737186 (= (ite c!952461 lt!2225545 lt!2225375) (store ((as const (Array Context!9330 Bool)) false) (ite c!952461 lt!2225387 lt!2225444) true))))

(assert (=> d!1737186 (= (lemmaFlatMapOnSingletonSet!540 (ite c!952461 lt!2225545 lt!2225375) (ite c!952461 lt!2225387 lt!2225444) (ite c!952461 lambda!288150 lambda!288150)) lt!2225849)))

(declare-fun b_lambda!207755 () Bool)

(assert (=> (not b_lambda!207755) (not d!1737186)))

(declare-fun bs!1262451 () Bool)

(assert (= bs!1262451 d!1737186))

(declare-fun m!6476596 () Bool)

(assert (=> bs!1262451 m!6476596))

(declare-fun m!6476598 () Bool)

(assert (=> bs!1262451 m!6476598))

(declare-fun m!6476600 () Bool)

(assert (=> bs!1262451 m!6476600))

(declare-fun m!6476602 () Bool)

(assert (=> bs!1262451 m!6476602))

(assert (=> bm!396241 d!1737186))

(declare-fun b!5455360 () Bool)

(declare-fun e!3378512 () List!62142)

(assert (=> b!5455360 (= e!3378512 (Cons!62018 (h!68466 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018))) (++!13641 (t!375371 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018))) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326)))))))

(declare-fun b!5455359 () Bool)

(assert (=> b!5455359 (= e!3378512 (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326)))))

(declare-fun d!1737188 () Bool)

(declare-fun e!3378513 () Bool)

(assert (=> d!1737188 e!3378513))

(declare-fun res!2323153 () Bool)

(assert (=> d!1737188 (=> (not res!2323153) (not e!3378513))))

(declare-fun lt!2225850 () List!62142)

(assert (=> d!1737188 (= res!2323153 (= (content!11160 lt!2225850) ((_ map or) (content!11160 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018))) (content!11160 (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))))

(assert (=> d!1737188 (= lt!2225850 e!3378512)))

(declare-fun c!952913 () Bool)

(assert (=> d!1737188 (= c!952913 ((_ is Nil!62018) (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018))))))

(assert (=> d!1737188 (= (++!13641 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)) (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))) lt!2225850)))

(declare-fun b!5455361 () Bool)

(declare-fun res!2323154 () Bool)

(assert (=> b!5455361 (=> (not res!2323154) (not e!3378513))))

(assert (=> b!5455361 (= res!2323154 (= (size!39897 lt!2225850) (+ (size!39897 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018))) (size!39897 (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326))))))))

(declare-fun b!5455362 () Bool)

(assert (=> b!5455362 (= e!3378513 (or (not (= (ite c!952465 (_2!35783 lt!2225382) (ite c!952462 (_2!35783 lt!2225415) s!2326)) Nil!62018)) (= lt!2225850 (ite c!952465 (_2!35783 lt!2225499) (ite c!952462 (_1!35783 lt!2225415) Nil!62018)))))))

(assert (= (and d!1737188 c!952913) b!5455359))

(assert (= (and d!1737188 (not c!952913)) b!5455360))

(assert (= (and d!1737188 res!2323153) b!5455361))

(assert (= (and b!5455361 res!2323154) b!5455362))

(declare-fun m!6476606 () Bool)

(assert (=> b!5455360 m!6476606))

(declare-fun m!6476610 () Bool)

(assert (=> d!1737188 m!6476610))

(declare-fun m!6476612 () Bool)

(assert (=> d!1737188 m!6476612))

(declare-fun m!6476614 () Bool)

(assert (=> d!1737188 m!6476614))

(declare-fun m!6476616 () Bool)

(assert (=> b!5455361 m!6476616))

(declare-fun m!6476618 () Bool)

(assert (=> b!5455361 m!6476618))

(declare-fun m!6476620 () Bool)

(assert (=> b!5455361 m!6476620))

(assert (=> bm!396175 d!1737188))

(declare-fun d!1737192 () Bool)

(assert (=> d!1737192 (= (get!21386 lt!2225497) (v!51420 lt!2225497))))

(assert (=> b!5453924 d!1737192))

(declare-fun b!5455364 () Bool)

(declare-fun e!3378514 () List!62142)

(assert (=> b!5455364 (= e!3378514 (Cons!62018 (h!68466 (_2!35783 lt!2225505)) (++!13641 (t!375371 (_2!35783 lt!2225505)) (_2!35783 lt!2225479))))))

(declare-fun b!5455363 () Bool)

(assert (=> b!5455363 (= e!3378514 (_2!35783 lt!2225479))))

(declare-fun d!1737194 () Bool)

(declare-fun e!3378515 () Bool)

(assert (=> d!1737194 e!3378515))

(declare-fun res!2323155 () Bool)

(assert (=> d!1737194 (=> (not res!2323155) (not e!3378515))))

(declare-fun lt!2225852 () List!62142)

(assert (=> d!1737194 (= res!2323155 (= (content!11160 lt!2225852) ((_ map or) (content!11160 (_2!35783 lt!2225505)) (content!11160 (_2!35783 lt!2225479)))))))

(assert (=> d!1737194 (= lt!2225852 e!3378514)))

(declare-fun c!952914 () Bool)

(assert (=> d!1737194 (= c!952914 ((_ is Nil!62018) (_2!35783 lt!2225505)))))

(assert (=> d!1737194 (= (++!13641 (_2!35783 lt!2225505) (_2!35783 lt!2225479)) lt!2225852)))

(declare-fun b!5455365 () Bool)

(declare-fun res!2323156 () Bool)

(assert (=> b!5455365 (=> (not res!2323156) (not e!3378515))))

(assert (=> b!5455365 (= res!2323156 (= (size!39897 lt!2225852) (+ (size!39897 (_2!35783 lt!2225505)) (size!39897 (_2!35783 lt!2225479)))))))

(declare-fun b!5455366 () Bool)

(assert (=> b!5455366 (= e!3378515 (or (not (= (_2!35783 lt!2225479) Nil!62018)) (= lt!2225852 (_2!35783 lt!2225505))))))

(assert (= (and d!1737194 c!952914) b!5455363))

(assert (= (and d!1737194 (not c!952914)) b!5455364))

(assert (= (and d!1737194 res!2323155) b!5455365))

(assert (= (and b!5455365 res!2323156) b!5455366))

(declare-fun m!6476622 () Bool)

(assert (=> b!5455364 m!6476622))

(declare-fun m!6476624 () Bool)

(assert (=> d!1737194 m!6476624))

(declare-fun m!6476626 () Bool)

(assert (=> d!1737194 m!6476626))

(declare-fun m!6476628 () Bool)

(assert (=> d!1737194 m!6476628))

(declare-fun m!6476630 () Bool)

(assert (=> b!5455365 m!6476630))

(declare-fun m!6476632 () Bool)

(assert (=> b!5455365 m!6476632))

(declare-fun m!6476634 () Bool)

(assert (=> b!5455365 m!6476634))

(assert (=> b!5453924 d!1737194))

(declare-fun d!1737196 () Bool)

(declare-fun dynLambda!24405 (Int Context!9330) Context!9330)

(assert (=> d!1737196 (= (map!14248 lt!2225545 lambda!288165) (store ((as const (Array Context!9330 Bool)) false) (dynLambda!24405 lambda!288165 lt!2225387) true))))

(declare-fun lt!2225855 () Unit!154792)

(declare-fun choose!41434 ((InoxSet Context!9330) Context!9330 Int) Unit!154792)

(assert (=> d!1737196 (= lt!2225855 (choose!41434 lt!2225545 lt!2225387 lambda!288165))))

(assert (=> d!1737196 (= lt!2225545 (store ((as const (Array Context!9330 Bool)) false) lt!2225387 true))))

(assert (=> d!1737196 (= (lemmaMapOnSingletonSet!82 lt!2225545 lt!2225387 lambda!288165) lt!2225855)))

(declare-fun b_lambda!207757 () Bool)

(assert (=> (not b_lambda!207757) (not d!1737196)))

(declare-fun bs!1262469 () Bool)

(assert (= bs!1262469 d!1737196))

(assert (=> bs!1262469 m!6474684))

(declare-fun m!6476636 () Bool)

(assert (=> bs!1262469 m!6476636))

(declare-fun m!6476638 () Bool)

(assert (=> bs!1262469 m!6476638))

(declare-fun m!6476640 () Bool)

(assert (=> bs!1262469 m!6476640))

(assert (=> bs!1262469 m!6474678))

(assert (=> bs!1262469 m!6476638))

(assert (=> b!5453924 d!1737196))

(declare-fun d!1737198 () Bool)

(assert (=> d!1737198 (isDefined!12095 (findConcatSeparationZippers!80 lt!2225545 (store ((as const (Array Context!9330 Bool)) false) lt!2225467 true) Nil!62018 s!2326 s!2326))))

(declare-fun lt!2225858 () Unit!154792)

(declare-fun choose!41435 ((InoxSet Context!9330) Context!9330 List!62142) Unit!154792)

(assert (=> d!1737198 (= lt!2225858 (choose!41435 lt!2225545 lt!2225467 s!2326))))

(declare-fun appendTo!76 ((InoxSet Context!9330) Context!9330) (InoxSet Context!9330))

(assert (=> d!1737198 (matchZipper!1525 (appendTo!76 lt!2225545 lt!2225467) s!2326)))

(assert (=> d!1737198 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!80 lt!2225545 lt!2225467 s!2326) lt!2225858)))

(declare-fun bs!1262479 () Bool)

(assert (= bs!1262479 d!1737198))

(declare-fun m!6476642 () Bool)

(assert (=> bs!1262479 m!6476642))

(declare-fun m!6476644 () Bool)

(assert (=> bs!1262479 m!6476644))

(assert (=> bs!1262479 m!6474692))

(assert (=> bs!1262479 m!6476644))

(declare-fun m!6476646 () Bool)

(assert (=> bs!1262479 m!6476646))

(declare-fun m!6476648 () Bool)

(assert (=> bs!1262479 m!6476648))

(declare-fun m!6476650 () Bool)

(assert (=> bs!1262479 m!6476650))

(assert (=> bs!1262479 m!6474692))

(assert (=> bs!1262479 m!6476648))

(assert (=> b!5453924 d!1737198))

(declare-fun d!1737200 () Bool)

(declare-fun choose!41436 ((InoxSet Context!9330) Int) (InoxSet Context!9330))

(assert (=> d!1737200 (= (map!14248 lt!2225545 lambda!288165) (choose!41436 lt!2225545 lambda!288165))))

(declare-fun bs!1262480 () Bool)

(assert (= bs!1262480 d!1737200))

(declare-fun m!6476654 () Bool)

(assert (=> bs!1262480 m!6476654))

(assert (=> b!5453924 d!1737200))

(declare-fun d!1737202 () Bool)

(declare-fun e!3378554 () Bool)

(assert (=> d!1737202 e!3378554))

(declare-fun res!2323189 () Bool)

(assert (=> d!1737202 (=> res!2323189 e!3378554)))

(declare-fun e!3378555 () Bool)

(assert (=> d!1737202 (= res!2323189 e!3378555)))

(declare-fun res!2323193 () Bool)

(assert (=> d!1737202 (=> (not res!2323193) (not e!3378555))))

(declare-fun lt!2225876 () Option!15392)

(assert (=> d!1737202 (= res!2323193 (isDefined!12095 lt!2225876))))

(declare-fun e!3378552 () Option!15392)

(assert (=> d!1737202 (= lt!2225876 e!3378552)))

(declare-fun c!952932 () Bool)

(declare-fun e!3378553 () Bool)

(assert (=> d!1737202 (= c!952932 e!3378553)))

(declare-fun res!2323192 () Bool)

(assert (=> d!1737202 (=> (not res!2323192) (not e!3378553))))

(assert (=> d!1737202 (= res!2323192 (matchZipper!1525 lt!2225545 Nil!62018))))

(assert (=> d!1737202 (= (++!13641 Nil!62018 s!2326) s!2326)))

(assert (=> d!1737202 (= (findConcatSeparationZippers!80 lt!2225545 lt!2225399 Nil!62018 s!2326 s!2326) lt!2225876)))

(declare-fun b!5455433 () Bool)

(declare-fun e!3378551 () Option!15392)

(assert (=> b!5455433 (= e!3378552 e!3378551)))

(declare-fun c!952933 () Bool)

(assert (=> b!5455433 (= c!952933 ((_ is Nil!62018) s!2326))))

(declare-fun b!5455434 () Bool)

(assert (=> b!5455434 (= e!3378555 (= (++!13641 (_1!35783 (get!21386 lt!2225876)) (_2!35783 (get!21386 lt!2225876))) s!2326))))

(declare-fun b!5455435 () Bool)

(assert (=> b!5455435 (= e!3378552 (Some!15391 (tuple2!64961 Nil!62018 s!2326)))))

(declare-fun b!5455436 () Bool)

(declare-fun res!2323191 () Bool)

(assert (=> b!5455436 (=> (not res!2323191) (not e!3378555))))

(assert (=> b!5455436 (= res!2323191 (matchZipper!1525 lt!2225545 (_1!35783 (get!21386 lt!2225876))))))

(declare-fun b!5455437 () Bool)

(assert (=> b!5455437 (= e!3378551 None!15391)))

(declare-fun b!5455438 () Bool)

(declare-fun res!2323190 () Bool)

(assert (=> b!5455438 (=> (not res!2323190) (not e!3378555))))

(assert (=> b!5455438 (= res!2323190 (matchZipper!1525 lt!2225399 (_2!35783 (get!21386 lt!2225876))))))

(declare-fun b!5455439 () Bool)

(assert (=> b!5455439 (= e!3378553 (matchZipper!1525 lt!2225399 s!2326))))

(declare-fun b!5455440 () Bool)

(declare-fun lt!2225878 () Unit!154792)

(declare-fun lt!2225877 () Unit!154792)

(assert (=> b!5455440 (= lt!2225878 lt!2225877)))

(assert (=> b!5455440 (= (++!13641 (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326)) s!2326)))

(assert (=> b!5455440 (= lt!2225877 (lemmaMoveElementToOtherListKeepsConcatEq!1878 Nil!62018 (h!68466 s!2326) (t!375371 s!2326) s!2326))))

(assert (=> b!5455440 (= e!3378551 (findConcatSeparationZippers!80 lt!2225545 lt!2225399 (++!13641 Nil!62018 (Cons!62018 (h!68466 s!2326) Nil!62018)) (t!375371 s!2326) s!2326))))

(declare-fun b!5455441 () Bool)

(assert (=> b!5455441 (= e!3378554 (not (isDefined!12095 lt!2225876)))))

(assert (= (and d!1737202 res!2323192) b!5455439))

(assert (= (and d!1737202 c!952932) b!5455435))

(assert (= (and d!1737202 (not c!952932)) b!5455433))

(assert (= (and b!5455433 c!952933) b!5455437))

(assert (= (and b!5455433 (not c!952933)) b!5455440))

(assert (= (and d!1737202 res!2323193) b!5455436))

(assert (= (and b!5455436 res!2323191) b!5455438))

(assert (= (and b!5455438 res!2323190) b!5455434))

(assert (= (and d!1737202 (not res!2323189)) b!5455441))

(declare-fun m!6476738 () Bool)

(assert (=> b!5455434 m!6476738))

(declare-fun m!6476740 () Bool)

(assert (=> b!5455434 m!6476740))

(declare-fun m!6476742 () Bool)

(assert (=> b!5455441 m!6476742))

(assert (=> b!5455440 m!6476300))

(assert (=> b!5455440 m!6476300))

(assert (=> b!5455440 m!6476302))

(assert (=> b!5455440 m!6476304))

(assert (=> b!5455440 m!6476300))

(declare-fun m!6476744 () Bool)

(assert (=> b!5455440 m!6476744))

(assert (=> b!5455436 m!6476738))

(declare-fun m!6476746 () Bool)

(assert (=> b!5455436 m!6476746))

(assert (=> d!1737202 m!6476742))

(declare-fun m!6476748 () Bool)

(assert (=> d!1737202 m!6476748))

(declare-fun m!6476750 () Bool)

(assert (=> d!1737202 m!6476750))

(declare-fun m!6476752 () Bool)

(assert (=> b!5455439 m!6476752))

(assert (=> b!5455438 m!6476738))

(declare-fun m!6476754 () Bool)

(assert (=> b!5455438 m!6476754))

(assert (=> b!5453924 d!1737202))

(declare-fun b!5455455 () Bool)

(declare-fun e!3378558 () Bool)

(declare-fun tp!1501716 () Bool)

(declare-fun tp!1501719 () Bool)

(assert (=> b!5455455 (= e!3378558 (and tp!1501716 tp!1501719))))

(assert (=> b!5453938 (= tp!1501699 e!3378558)))

(declare-fun b!5455452 () Bool)

(assert (=> b!5455452 (= e!3378558 tp_is_empty!39815)))

(declare-fun b!5455454 () Bool)

(declare-fun tp!1501718 () Bool)

(assert (=> b!5455454 (= e!3378558 tp!1501718)))

(declare-fun b!5455453 () Bool)

(declare-fun tp!1501717 () Bool)

(declare-fun tp!1501720 () Bool)

(assert (=> b!5455453 (= e!3378558 (and tp!1501717 tp!1501720))))

(assert (= (and b!5453938 ((_ is ElementMatch!15281) (reg!15610 r!7292))) b!5455452))

(assert (= (and b!5453938 ((_ is Concat!24126) (reg!15610 r!7292))) b!5455453))

(assert (= (and b!5453938 ((_ is Star!15281) (reg!15610 r!7292))) b!5455454))

(assert (= (and b!5453938 ((_ is Union!15281) (reg!15610 r!7292))) b!5455455))

(declare-fun b!5455465 () Bool)

(declare-fun e!3378566 () Bool)

(declare-fun tp!1501725 () Bool)

(assert (=> b!5455465 (= e!3378566 tp!1501725)))

(declare-fun b!5455464 () Bool)

(declare-fun tp!1501726 () Bool)

(declare-fun e!3378565 () Bool)

(assert (=> b!5455464 (= e!3378565 (and (inv!81449 (h!68468 (t!375373 zl!343))) e!3378566 tp!1501726))))

(assert (=> b!5453943 (= tp!1501701 e!3378565)))

(assert (= b!5455464 b!5455465))

(assert (= (and b!5453943 ((_ is Cons!62020) (t!375373 zl!343))) b!5455464))

(declare-fun m!6476758 () Bool)

(assert (=> b!5455464 m!6476758))

(declare-fun b!5455486 () Bool)

(declare-fun e!3378581 () Bool)

(declare-fun tp!1501729 () Bool)

(assert (=> b!5455486 (= e!3378581 (and tp_is_empty!39815 tp!1501729))))

(assert (=> b!5453909 (= tp!1501702 e!3378581)))

(assert (= (and b!5453909 ((_ is Cons!62018) (t!375371 s!2326))) b!5455486))

(declare-fun b!5455491 () Bool)

(declare-fun e!3378584 () Bool)

(declare-fun tp!1501734 () Bool)

(declare-fun tp!1501735 () Bool)

(assert (=> b!5455491 (= e!3378584 (and tp!1501734 tp!1501735))))

(assert (=> b!5453968 (= tp!1501704 e!3378584)))

(assert (= (and b!5453968 ((_ is Cons!62019) (exprs!5165 setElem!35689))) b!5455491))

(declare-fun b!5455495 () Bool)

(declare-fun e!3378585 () Bool)

(declare-fun tp!1501736 () Bool)

(declare-fun tp!1501739 () Bool)

(assert (=> b!5455495 (= e!3378585 (and tp!1501736 tp!1501739))))

(assert (=> b!5453962 (= tp!1501700 e!3378585)))

(declare-fun b!5455492 () Bool)

(assert (=> b!5455492 (= e!3378585 tp_is_empty!39815)))

(declare-fun b!5455494 () Bool)

(declare-fun tp!1501738 () Bool)

(assert (=> b!5455494 (= e!3378585 tp!1501738)))

(declare-fun b!5455493 () Bool)

(declare-fun tp!1501737 () Bool)

(declare-fun tp!1501740 () Bool)

(assert (=> b!5455493 (= e!3378585 (and tp!1501737 tp!1501740))))

(assert (= (and b!5453962 ((_ is ElementMatch!15281) (regOne!31075 r!7292))) b!5455492))

(assert (= (and b!5453962 ((_ is Concat!24126) (regOne!31075 r!7292))) b!5455493))

(assert (= (and b!5453962 ((_ is Star!15281) (regOne!31075 r!7292))) b!5455494))

(assert (= (and b!5453962 ((_ is Union!15281) (regOne!31075 r!7292))) b!5455495))

(declare-fun b!5455499 () Bool)

(declare-fun e!3378586 () Bool)

(declare-fun tp!1501741 () Bool)

(declare-fun tp!1501744 () Bool)

(assert (=> b!5455499 (= e!3378586 (and tp!1501741 tp!1501744))))

(assert (=> b!5453962 (= tp!1501705 e!3378586)))

(declare-fun b!5455496 () Bool)

(assert (=> b!5455496 (= e!3378586 tp_is_empty!39815)))

(declare-fun b!5455498 () Bool)

(declare-fun tp!1501743 () Bool)

(assert (=> b!5455498 (= e!3378586 tp!1501743)))

(declare-fun b!5455497 () Bool)

(declare-fun tp!1501742 () Bool)

(declare-fun tp!1501745 () Bool)

(assert (=> b!5455497 (= e!3378586 (and tp!1501742 tp!1501745))))

(assert (= (and b!5453962 ((_ is ElementMatch!15281) (regTwo!31075 r!7292))) b!5455496))

(assert (= (and b!5453962 ((_ is Concat!24126) (regTwo!31075 r!7292))) b!5455497))

(assert (= (and b!5453962 ((_ is Star!15281) (regTwo!31075 r!7292))) b!5455498))

(assert (= (and b!5453962 ((_ is Union!15281) (regTwo!31075 r!7292))) b!5455499))

(declare-fun b!5455503 () Bool)

(declare-fun e!3378587 () Bool)

(declare-fun tp!1501746 () Bool)

(declare-fun tp!1501749 () Bool)

(assert (=> b!5455503 (= e!3378587 (and tp!1501746 tp!1501749))))

(assert (=> b!5453965 (= tp!1501703 e!3378587)))

(declare-fun b!5455500 () Bool)

(assert (=> b!5455500 (= e!3378587 tp_is_empty!39815)))

(declare-fun b!5455502 () Bool)

(declare-fun tp!1501748 () Bool)

(assert (=> b!5455502 (= e!3378587 tp!1501748)))

(declare-fun b!5455501 () Bool)

(declare-fun tp!1501747 () Bool)

(declare-fun tp!1501750 () Bool)

(assert (=> b!5455501 (= e!3378587 (and tp!1501747 tp!1501750))))

(assert (= (and b!5453965 ((_ is ElementMatch!15281) (regOne!31074 r!7292))) b!5455500))

(assert (= (and b!5453965 ((_ is Concat!24126) (regOne!31074 r!7292))) b!5455501))

(assert (= (and b!5453965 ((_ is Star!15281) (regOne!31074 r!7292))) b!5455502))

(assert (= (and b!5453965 ((_ is Union!15281) (regOne!31074 r!7292))) b!5455503))

(declare-fun b!5455507 () Bool)

(declare-fun e!3378588 () Bool)

(declare-fun tp!1501751 () Bool)

(declare-fun tp!1501754 () Bool)

(assert (=> b!5455507 (= e!3378588 (and tp!1501751 tp!1501754))))

(assert (=> b!5453965 (= tp!1501698 e!3378588)))

(declare-fun b!5455504 () Bool)

(assert (=> b!5455504 (= e!3378588 tp_is_empty!39815)))

(declare-fun b!5455506 () Bool)

(declare-fun tp!1501753 () Bool)

(assert (=> b!5455506 (= e!3378588 tp!1501753)))

(declare-fun b!5455505 () Bool)

(declare-fun tp!1501752 () Bool)

(declare-fun tp!1501755 () Bool)

(assert (=> b!5455505 (= e!3378588 (and tp!1501752 tp!1501755))))

(assert (= (and b!5453965 ((_ is ElementMatch!15281) (regTwo!31074 r!7292))) b!5455504))

(assert (= (and b!5453965 ((_ is Concat!24126) (regTwo!31074 r!7292))) b!5455505))

(assert (= (and b!5453965 ((_ is Star!15281) (regTwo!31074 r!7292))) b!5455506))

(assert (= (and b!5453965 ((_ is Union!15281) (regTwo!31074 r!7292))) b!5455507))

(declare-fun b!5455508 () Bool)

(declare-fun e!3378589 () Bool)

(declare-fun tp!1501756 () Bool)

(declare-fun tp!1501757 () Bool)

(assert (=> b!5455508 (= e!3378589 (and tp!1501756 tp!1501757))))

(assert (=> b!5453917 (= tp!1501696 e!3378589)))

(assert (= (and b!5453917 ((_ is Cons!62019) (exprs!5165 (h!68468 zl!343)))) b!5455508))

(declare-fun condSetEmpty!35692 () Bool)

(assert (=> setNonEmpty!35689 (= condSetEmpty!35692 (= setRest!35689 ((as const (Array Context!9330 Bool)) false)))))

(declare-fun setRes!35692 () Bool)

(assert (=> setNonEmpty!35689 (= tp!1501697 setRes!35692)))

(declare-fun setIsEmpty!35692 () Bool)

(assert (=> setIsEmpty!35692 setRes!35692))

(declare-fun setNonEmpty!35692 () Bool)

(declare-fun setElem!35692 () Context!9330)

(declare-fun tp!1501763 () Bool)

(declare-fun e!3378592 () Bool)

(assert (=> setNonEmpty!35692 (= setRes!35692 (and tp!1501763 (inv!81449 setElem!35692) e!3378592))))

(declare-fun setRest!35692 () (InoxSet Context!9330))

(assert (=> setNonEmpty!35692 (= setRest!35689 ((_ map or) (store ((as const (Array Context!9330 Bool)) false) setElem!35692 true) setRest!35692))))

(declare-fun b!5455513 () Bool)

(declare-fun tp!1501762 () Bool)

(assert (=> b!5455513 (= e!3378592 tp!1501762)))

(assert (= (and setNonEmpty!35689 condSetEmpty!35692) setIsEmpty!35692))

(assert (= (and setNonEmpty!35689 (not condSetEmpty!35692)) setNonEmpty!35692))

(assert (= setNonEmpty!35692 b!5455513))

(declare-fun m!6476760 () Bool)

(assert (=> setNonEmpty!35692 m!6476760))

(declare-fun b_lambda!207759 () Bool)

(assert (= b_lambda!207757 (or b!5453924 b_lambda!207759)))

(declare-fun bs!1262508 () Bool)

(declare-fun d!1737222 () Bool)

(assert (= bs!1262508 (and d!1737222 b!5453924)))

(declare-fun lt!2225879 () Unit!154792)

(assert (=> bs!1262508 (= lt!2225879 (lemmaConcatPreservesForall!248 (exprs!5165 lt!2225387) lt!2225442 lambda!288166))))

(assert (=> bs!1262508 (= (dynLambda!24405 lambda!288165 lt!2225387) (Context!9331 (++!13642 (exprs!5165 lt!2225387) lt!2225442)))))

(declare-fun m!6476762 () Bool)

(assert (=> bs!1262508 m!6476762))

(declare-fun m!6476764 () Bool)

(assert (=> bs!1262508 m!6476764))

(assert (=> d!1737196 d!1737222))

(declare-fun b_lambda!207761 () Bool)

(assert (= b_lambda!207753 (or b!5453915 b_lambda!207761)))

(declare-fun bs!1262509 () Bool)

(declare-fun d!1737224 () Bool)

(assert (= bs!1262509 (and d!1737224 b!5453915)))

(assert (=> bs!1262509 (= (dynLambda!24404 lambda!288175 (h!68467 (t!375372 (exprs!5165 (h!68468 zl!343))))) (validRegex!7017 (h!68467 (t!375372 (exprs!5165 (h!68468 zl!343))))))))

(declare-fun m!6476766 () Bool)

(assert (=> bs!1262509 m!6476766))

(assert (=> b!5455315 d!1737224))

(declare-fun b_lambda!207763 () Bool)

(assert (= b_lambda!207731 (or b!5453920 b_lambda!207763)))

(declare-fun bs!1262510 () Bool)

(declare-fun d!1737226 () Bool)

(assert (= bs!1262510 (and d!1737226 b!5453920)))

(assert (=> bs!1262510 (= (dynLambda!24401 lambda!288150 lt!2225444) (derivationStepZipperUp!653 lt!2225444 (h!68466 s!2326)))))

(assert (=> bs!1262510 m!6474516))

(assert (=> d!1736796 d!1737226))

(declare-fun b_lambda!207765 () Bool)

(assert (= b_lambda!207735 (or b!5453920 b_lambda!207765)))

(declare-fun bs!1262511 () Bool)

(declare-fun d!1737228 () Bool)

(assert (= bs!1262511 (and d!1737228 b!5453920)))

(assert (=> bs!1262511 (= (dynLambda!24401 lambda!288150 (h!68468 zl!343)) (derivationStepZipperUp!653 (h!68468 zl!343) (h!68466 s!2326)))))

(assert (=> bs!1262511 m!6474514))

(assert (=> d!1736822 d!1737228))

(check-sat (not d!1736750) (not b!5454084) (not b!5455493) (not d!1737014) (not b!5454837) (not b!5454366) (not d!1736784) (not b!5455005) (not d!1736964) (not b!5455465) (not b!5454923) (not bm!396510) (not b!5455340) (not b_lambda!207765) (not b_lambda!207759) (not b!5455100) (not bm!396530) (not b!5455360) (not bm!396429) (not bm!396508) (not b!5455195) (not b_lambda!207755) (not d!1736834) (not bm!396531) (not b_lambda!207739) (not d!1736780) (not b!5455122) (not b!5454093) (not d!1736960) (not b!5454846) (not d!1737018) (not b!5455256) (not b!5455105) (not b!5455120) (not d!1737200) (not b!5454615) (not d!1737066) (not b!5454175) (not d!1737128) (not d!1736920) (not b!5455133) (not d!1737050) (not b!5455261) (not d!1736944) (not d!1736966) (not b!5454393) (not d!1736856) (not d!1737074) (not bm!396532) (not b!5455497) (not d!1736772) (not d!1737124) (not b!5454620) (not b!5455320) (not b!5454785) (not d!1736940) (not d!1736970) (not bm!396512) (not d!1737106) (not b!5455112) (not b!5454013) (not d!1736916) (not bm!396462) (not b!5454793) (not d!1736982) (not b!5454914) (not b!5455508) (not bm!396427) (not b!5454738) (not b!5455127) (not b!5455434) (not b!5454606) (not d!1736906) (not bm!396477) (not bm!396423) (not b!5455257) (not d!1736972) (not d!1737176) (not b!5454378) (not b!5454916) (not bm!396507) (not b!5455292) (not b!5454901) (not d!1736714) (not b!5455277) (not bm!396506) (not b!5455342) (not d!1737116) (not b!5454633) (not bm!396466) (not b!5455455) (not b!5455125) (not d!1736908) (not bm!396418) (not d!1736968) (not b!5455004) (not bm!396535) (not d!1737164) (not d!1736822) (not b!5454786) (not b!5455499) (not b!5455117) (not d!1737046) (not b!5454661) (not b!5454825) (not d!1736922) (not b!5455352) (not d!1736762) (not d!1736998) (not b!5454605) (not b!5455454) (not b!5455102) (not b!5454902) (not b!5455507) (not d!1736930) (not b!5455111) (not bm!396373) (not b!5454332) (not b!5455505) (not b!5455096) (not b!5454272) (not b!5455193) (not bm!396540) (not d!1737126) (not bm!396363) (not b!5455348) (not b!5454897) (not d!1736918) (not b!5455341) (not b!5455118) (not b!5455245) (not b!5454981) (not b!5454819) (not b!5454918) (not b!5454622) (not d!1736776) (not b!5454841) (not b!5455129) (not d!1736864) (not b!5455343) (not b!5455491) (not d!1737038) (not b!5454660) (not b!5454659) (not d!1736938) (not d!1737070) (not bs!1262511) (not b!5455354) (not d!1736854) (not b!5454609) (not b!5454791) (not b!5455262) (not b!5455365) (not d!1736942) (not b!5454506) (not b!5455439) (not d!1737002) (not bm!396421) (not d!1737168) (not d!1736974) (not b!5455203) (not d!1737196) (not b!5454501) (not b!5454792) (not bm!396505) (not d!1737060) (not b!5454844) (not b!5454911) (not d!1737096) (not b!5455165) (not b!5454980) (not b!5454835) (not bm!396542) (not b!5455347) (not b!5454630) (not b!5454922) (not b!5455351) (not b!5454090) (not b!5455266) (not b!5454655) (not bs!1262510) (not d!1736910) (not d!1736756) (not b!5454663) (not b!5455199) (not b!5455103) (not b!5454895) (not b!5454502) (not bm!396371) (not b!5454853) (not d!1736948) (not d!1737114) (not b!5455097) (not bm!396465) (not bm!396478) (not b!5454122) (not bm!396364) (not b!5455436) (not d!1737006) (not b!5454402) (not b!5455268) (not bm!396395) (not b!5454095) (not bm!396467) (not b!5455438) (not bm!396483) (not b!5455441) (not d!1736766) (not b_lambda!207751) (not b!5454826) (not d!1737202) (not b!5454890) (not b!5454505) (not d!1736790) (not d!1736874) (not b!5455440) (not b!5455346) (not b!5455198) (not b!5454664) (not d!1737064) (not b!5455501) (not b!5454962) (not bm!396396) (not d!1736726) (not b!5454814) (not b!5455453) (not d!1736904) (not bm!396519) (not b!5454794) (not b!5455494) (not b!5454907) (not b!5454787) (not b!5454204) (not b!5454797) (not d!1736802) (not b!5455134) (not b!5455115) (not b!5455361) (not b!5455188) (not b!5454848) (not b!5454612) (not d!1736774) (not b!5454821) (not b!5455339) (not d!1736796) (not d!1736832) (not b!5454504) (not bm!396463) (not b!5455316) (not b!5455349) (not d!1737034) (not b!5454189) (not bs!1262509) (not b!5455098) (not b!5454079) (not b!5455201) (not b!5454833) (not d!1737198) (not bm!396428) tp_is_empty!39815 (not d!1737144) (not b!5455107) (not b!5454790) (not b!5454075) (not d!1737094) (not d!1737188) (not b!5454784) (not b!5454077) (not b!5455364) (not d!1737180) (not b!5455114) (not b!5455099) (not b!5455495) (not d!1737044) (not d!1736890) (not d!1736826) (not d!1737110) (not bm!396372) (not bm!396543) (not b!5454627) (not d!1737146) (not b!5454123) (not b!5455506) (not bm!396513) (not bm!396481) (not d!1736800) (not b!5454207) (not d!1737112) (not b!5454134) (not b!5455503) (not b!5455263) (not b!5454868) (not b!5455248) (not bm!396430) (not b!5454788) (not b!5455164) (not b!5455190) (not bm!396476) (not b!5454796) (not b!5455356) (not b!5455294) (not b!5454852) (not b!5454817) (not b!5454101) (not b!5455345) (not d!1736722) (not bm!396518) (not b!5454834) (not d!1736752) (not b!5455264) (not b_lambda!207763) (not b!5454373) (not b!5454097) (not d!1737040) (not b!5454739) (not bm!396426) (not b!5454656) (not d!1736958) (not b!5455486) (not b!5454174) (not d!1736932) (not bm!396370) (not b!5455113) (not b!5455291) (not b!5454618) (not b!5455502) (not b!5454072) (not d!1737178) (not b!5454893) (not b!5454503) (not b!5454838) (not b!5454205) (not b!5454687) (not b!5455250) (not b!5454972) (not d!1736786) (not b!5454608) (not b!5454102) (not d!1737048) (not b!5454607) (not d!1736720) (not b!5454611) (not b!5454216) (not b!5454376) (not d!1736724) (not b!5454905) (not b!5455290) (not d!1736836) (not b!5455498) (not bs!1262508) (not d!1737182) (not b!5455513) (not bm!396515) (not b!5455464) (not d!1736818) (not b!5455265) (not b!5454869) (not bm!396517) (not d!1737186) (not b!5454022) (not b!5454626) (not setNonEmpty!35692) (not b_lambda!207747) (not b!5454083) (not d!1736984) (not d!1737194) (not b!5454371) (not d!1736848) (not d!1737166) (not b!5455200) (not bm!396537) (not b!5455252) (not bm!396432) (not b!5454368) (not b_lambda!207761) (not b!5454632) (not b!5454125) (not d!1737056) (not bm!396514) (not b!5455202))
(check-sat)
