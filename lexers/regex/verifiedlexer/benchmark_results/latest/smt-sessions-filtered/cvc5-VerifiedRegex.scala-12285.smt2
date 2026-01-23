; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690498 () Bool)

(assert start!690498)

(declare-fun b!7093607 () Bool)

(declare-fun res!2896847 () Bool)

(declare-fun e!4264215 () Bool)

(assert (=> b!7093607 (=> (not res!2896847) (not e!4264215))))

(declare-datatypes ((C!35894 0))(
  ( (C!35895 (val!27653 Int)) )
))
(declare-datatypes ((Regex!17812 0))(
  ( (ElementMatch!17812 (c!1323873 C!35894)) (Concat!26657 (regOne!36136 Regex!17812) (regTwo!36136 Regex!17812)) (EmptyExpr!17812) (Star!17812 (reg!18141 Regex!17812)) (EmptyLang!17812) (Union!17812 (regOne!36137 Regex!17812) (regTwo!36137 Regex!17812)) )
))
(declare-fun r!11554 () Regex!17812)

(assert (=> b!7093607 (= res!2896847 (is-Concat!26657 r!11554))))

(declare-fun b!7093608 () Bool)

(declare-fun res!2896843 () Bool)

(assert (=> b!7093608 (=> (not res!2896843) (not e!4264215))))

(declare-fun a!1901 () C!35894)

(assert (=> b!7093608 (= res!2896843 (and (or (not (is-ElementMatch!17812 r!11554)) (not (= (c!1323873 r!11554) a!1901))) (not (is-Union!17812 r!11554))))))

(declare-fun b!7093609 () Bool)

(declare-fun e!4264216 () Bool)

(declare-fun tp_is_empty!44857 () Bool)

(assert (=> b!7093609 (= e!4264216 tp_is_empty!44857)))

(declare-fun b!7093610 () Bool)

(declare-fun tp!1948872 () Bool)

(declare-fun tp!1948871 () Bool)

(assert (=> b!7093610 (= e!4264216 (and tp!1948872 tp!1948871))))

(declare-fun b!7093611 () Bool)

(declare-fun tp!1948874 () Bool)

(assert (=> b!7093611 (= e!4264216 tp!1948874)))

(declare-fun b!7093612 () Bool)

(declare-fun tp!1948875 () Bool)

(declare-fun tp!1948873 () Bool)

(assert (=> b!7093612 (= e!4264216 (and tp!1948875 tp!1948873))))

(declare-fun b!7093613 () Bool)

(declare-fun e!4264213 () Bool)

(declare-fun tp!1948876 () Bool)

(assert (=> b!7093613 (= e!4264213 tp!1948876)))

(declare-fun b!7093614 () Bool)

(declare-fun e!4264214 () Bool)

(declare-fun nullable!7452 (Regex!17812) Bool)

(assert (=> b!7093614 (= e!4264214 (not (nullable!7452 (regOne!36136 r!11554))))))

(declare-fun b!7093615 () Bool)

(declare-fun res!2896846 () Bool)

(assert (=> b!7093615 (=> (not res!2896846) (not e!4264215))))

(assert (=> b!7093615 (= res!2896846 e!4264214)))

(declare-fun res!2896845 () Bool)

(assert (=> b!7093615 (=> res!2896845 e!4264214)))

(assert (=> b!7093615 (= res!2896845 (not (is-Concat!26657 r!11554)))))

(declare-fun res!2896844 () Bool)

(assert (=> start!690498 (=> (not res!2896844) (not e!4264215))))

(declare-fun validRegex!9087 (Regex!17812) Bool)

(assert (=> start!690498 (= res!2896844 (validRegex!9087 r!11554))))

(assert (=> start!690498 e!4264215))

(assert (=> start!690498 e!4264216))

(assert (=> start!690498 tp_is_empty!44857))

(declare-datatypes ((List!68775 0))(
  ( (Nil!68651) (Cons!68651 (h!75099 Regex!17812) (t!382570 List!68775)) )
))
(declare-datatypes ((Context!13616 0))(
  ( (Context!13617 (exprs!7308 List!68775)) )
))
(declare-fun c!9994 () Context!13616)

(declare-fun inv!87396 (Context!13616) Bool)

(assert (=> start!690498 (and (inv!87396 c!9994) e!4264213)))

(declare-fun b!7093616 () Bool)

(declare-fun lambda!430228 () Int)

(declare-fun forall!16740 (List!68775 Int) Bool)

(assert (=> b!7093616 (= e!4264215 (not (forall!16740 (exprs!7308 c!9994) lambda!430228)))))

(assert (= (and start!690498 res!2896844) b!7093608))

(assert (= (and b!7093608 res!2896843) b!7093615))

(assert (= (and b!7093615 (not res!2896845)) b!7093614))

(assert (= (and b!7093615 res!2896846) b!7093607))

(assert (= (and b!7093607 res!2896847) b!7093616))

(assert (= (and start!690498 (is-ElementMatch!17812 r!11554)) b!7093609))

(assert (= (and start!690498 (is-Concat!26657 r!11554)) b!7093610))

(assert (= (and start!690498 (is-Star!17812 r!11554)) b!7093611))

(assert (= (and start!690498 (is-Union!17812 r!11554)) b!7093612))

(assert (= start!690498 b!7093613))

(declare-fun m!7822280 () Bool)

(assert (=> b!7093614 m!7822280))

(declare-fun m!7822282 () Bool)

(assert (=> start!690498 m!7822282))

(declare-fun m!7822284 () Bool)

(assert (=> start!690498 m!7822284))

(declare-fun m!7822286 () Bool)

(assert (=> b!7093616 m!7822286))

(push 1)

(assert (not start!690498))

(assert (not b!7093611))

(assert (not b!7093616))

(assert (not b!7093610))

(assert (not b!7093612))

(assert (not b!7093614))

(assert (not b!7093613))

(assert tp_is_empty!44857)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217436 () Bool)

(declare-fun nullableFct!2859 (Regex!17812) Bool)

(assert (=> d!2217436 (= (nullable!7452 (regOne!36136 r!11554)) (nullableFct!2859 (regOne!36136 r!11554)))))

(declare-fun bs!1883751 () Bool)

(assert (= bs!1883751 d!2217436))

(declare-fun m!7822296 () Bool)

(assert (=> bs!1883751 m!7822296))

(assert (=> b!7093614 d!2217436))

(declare-fun b!7093665 () Bool)

(declare-fun e!4264247 () Bool)

(declare-fun e!4264246 () Bool)

(assert (=> b!7093665 (= e!4264247 e!4264246)))

(declare-fun res!2896873 () Bool)

(assert (=> b!7093665 (=> (not res!2896873) (not e!4264246))))

(declare-fun call!645402 () Bool)

(assert (=> b!7093665 (= res!2896873 call!645402)))

(declare-fun b!7093666 () Bool)

(declare-fun e!4264248 () Bool)

(declare-fun e!4264244 () Bool)

(assert (=> b!7093666 (= e!4264248 e!4264244)))

(declare-fun res!2896874 () Bool)

(assert (=> b!7093666 (= res!2896874 (not (nullable!7452 (reg!18141 r!11554))))))

(assert (=> b!7093666 (=> (not res!2896874) (not e!4264244))))

(declare-fun d!2217438 () Bool)

(declare-fun res!2896875 () Bool)

(declare-fun e!4264249 () Bool)

(assert (=> d!2217438 (=> res!2896875 e!4264249)))

(assert (=> d!2217438 (= res!2896875 (is-ElementMatch!17812 r!11554))))

(assert (=> d!2217438 (= (validRegex!9087 r!11554) e!4264249)))

(declare-fun b!7093667 () Bool)

(assert (=> b!7093667 (= e!4264249 e!4264248)))

(declare-fun c!1323880 () Bool)

(assert (=> b!7093667 (= c!1323880 (is-Star!17812 r!11554))))

(declare-fun b!7093668 () Bool)

(declare-fun e!4264245 () Bool)

(assert (=> b!7093668 (= e!4264248 e!4264245)))

(declare-fun c!1323879 () Bool)

(assert (=> b!7093668 (= c!1323879 (is-Union!17812 r!11554))))

(declare-fun b!7093669 () Bool)

(declare-fun res!2896876 () Bool)

(assert (=> b!7093669 (=> res!2896876 e!4264247)))

(assert (=> b!7093669 (= res!2896876 (not (is-Concat!26657 r!11554)))))

(assert (=> b!7093669 (= e!4264245 e!4264247)))

(declare-fun b!7093670 () Bool)

(declare-fun e!4264243 () Bool)

(assert (=> b!7093670 (= e!4264243 call!645402)))

(declare-fun call!645404 () Bool)

(declare-fun bm!645397 () Bool)

(assert (=> bm!645397 (= call!645404 (validRegex!9087 (ite c!1323880 (reg!18141 r!11554) (ite c!1323879 (regOne!36137 r!11554) (regTwo!36136 r!11554)))))))

(declare-fun bm!645398 () Bool)

(declare-fun call!645403 () Bool)

(assert (=> bm!645398 (= call!645403 call!645404)))

(declare-fun b!7093671 () Bool)

(declare-fun res!2896877 () Bool)

(assert (=> b!7093671 (=> (not res!2896877) (not e!4264243))))

(assert (=> b!7093671 (= res!2896877 call!645403)))

(assert (=> b!7093671 (= e!4264245 e!4264243)))

(declare-fun bm!645399 () Bool)

(assert (=> bm!645399 (= call!645402 (validRegex!9087 (ite c!1323879 (regTwo!36137 r!11554) (regOne!36136 r!11554))))))

(declare-fun b!7093672 () Bool)

(assert (=> b!7093672 (= e!4264246 call!645403)))

(declare-fun b!7093673 () Bool)

(assert (=> b!7093673 (= e!4264244 call!645404)))

(assert (= (and d!2217438 (not res!2896875)) b!7093667))

(assert (= (and b!7093667 c!1323880) b!7093666))

(assert (= (and b!7093667 (not c!1323880)) b!7093668))

(assert (= (and b!7093666 res!2896874) b!7093673))

(assert (= (and b!7093668 c!1323879) b!7093671))

(assert (= (and b!7093668 (not c!1323879)) b!7093669))

(assert (= (and b!7093671 res!2896877) b!7093670))

(assert (= (and b!7093669 (not res!2896876)) b!7093665))

(assert (= (and b!7093665 res!2896873) b!7093672))

(assert (= (or b!7093671 b!7093672) bm!645398))

(assert (= (or b!7093670 b!7093665) bm!645399))

(assert (= (or b!7093673 bm!645398) bm!645397))

(declare-fun m!7822298 () Bool)

(assert (=> b!7093666 m!7822298))

(declare-fun m!7822300 () Bool)

(assert (=> bm!645397 m!7822300))

(declare-fun m!7822302 () Bool)

(assert (=> bm!645399 m!7822302))

(assert (=> start!690498 d!2217438))

(declare-fun bs!1883753 () Bool)

(declare-fun d!2217442 () Bool)

(assert (= bs!1883753 (and d!2217442 b!7093616)))

(declare-fun lambda!430234 () Int)

(assert (=> bs!1883753 (= lambda!430234 lambda!430228)))

(assert (=> d!2217442 (= (inv!87396 c!9994) (forall!16740 (exprs!7308 c!9994) lambda!430234))))

(declare-fun bs!1883754 () Bool)

(assert (= bs!1883754 d!2217442))

(declare-fun m!7822306 () Bool)

(assert (=> bs!1883754 m!7822306))

(assert (=> start!690498 d!2217442))

(declare-fun d!2217446 () Bool)

(declare-fun res!2896886 () Bool)

(declare-fun e!4264258 () Bool)

(assert (=> d!2217446 (=> res!2896886 e!4264258)))

(assert (=> d!2217446 (= res!2896886 (is-Nil!68651 (exprs!7308 c!9994)))))

(assert (=> d!2217446 (= (forall!16740 (exprs!7308 c!9994) lambda!430228) e!4264258)))

(declare-fun b!7093682 () Bool)

(declare-fun e!4264259 () Bool)

(assert (=> b!7093682 (= e!4264258 e!4264259)))

(declare-fun res!2896887 () Bool)

(assert (=> b!7093682 (=> (not res!2896887) (not e!4264259))))

(declare-fun dynLambda!28008 (Int Regex!17812) Bool)

(assert (=> b!7093682 (= res!2896887 (dynLambda!28008 lambda!430228 (h!75099 (exprs!7308 c!9994))))))

(declare-fun b!7093683 () Bool)

(assert (=> b!7093683 (= e!4264259 (forall!16740 (t!382570 (exprs!7308 c!9994)) lambda!430228))))

(assert (= (and d!2217446 (not res!2896886)) b!7093682))

(assert (= (and b!7093682 res!2896887) b!7093683))

(declare-fun b_lambda!271073 () Bool)

(assert (=> (not b_lambda!271073) (not b!7093682)))

(declare-fun m!7822308 () Bool)

(assert (=> b!7093682 m!7822308))

(declare-fun m!7822310 () Bool)

(assert (=> b!7093683 m!7822310))

(assert (=> b!7093616 d!2217446))

(declare-fun b!7093688 () Bool)

(declare-fun e!4264262 () Bool)

(declare-fun tp!1948899 () Bool)

(declare-fun tp!1948900 () Bool)

(assert (=> b!7093688 (= e!4264262 (and tp!1948899 tp!1948900))))

(assert (=> b!7093613 (= tp!1948876 e!4264262)))

(assert (= (and b!7093613 (is-Cons!68651 (exprs!7308 c!9994))) b!7093688))

(declare-fun e!4264265 () Bool)

(assert (=> b!7093612 (= tp!1948875 e!4264265)))

(declare-fun b!7093702 () Bool)

(declare-fun tp!1948911 () Bool)

(declare-fun tp!1948913 () Bool)

(assert (=> b!7093702 (= e!4264265 (and tp!1948911 tp!1948913))))

(declare-fun b!7093699 () Bool)

(assert (=> b!7093699 (= e!4264265 tp_is_empty!44857)))

(declare-fun b!7093700 () Bool)

(declare-fun tp!1948912 () Bool)

(declare-fun tp!1948915 () Bool)

(assert (=> b!7093700 (= e!4264265 (and tp!1948912 tp!1948915))))

(declare-fun b!7093701 () Bool)

(declare-fun tp!1948914 () Bool)

(assert (=> b!7093701 (= e!4264265 tp!1948914)))

(assert (= (and b!7093612 (is-ElementMatch!17812 (regOne!36137 r!11554))) b!7093699))

(assert (= (and b!7093612 (is-Concat!26657 (regOne!36137 r!11554))) b!7093700))

(assert (= (and b!7093612 (is-Star!17812 (regOne!36137 r!11554))) b!7093701))

(assert (= (and b!7093612 (is-Union!17812 (regOne!36137 r!11554))) b!7093702))

(declare-fun e!4264268 () Bool)

(assert (=> b!7093612 (= tp!1948873 e!4264268)))

(declare-fun b!7093708 () Bool)

(declare-fun tp!1948916 () Bool)

(declare-fun tp!1948918 () Bool)

(assert (=> b!7093708 (= e!4264268 (and tp!1948916 tp!1948918))))

(declare-fun b!7093705 () Bool)

(assert (=> b!7093705 (= e!4264268 tp_is_empty!44857)))

(declare-fun b!7093706 () Bool)

(declare-fun tp!1948917 () Bool)

(declare-fun tp!1948920 () Bool)

(assert (=> b!7093706 (= e!4264268 (and tp!1948917 tp!1948920))))

(declare-fun b!7093707 () Bool)

(declare-fun tp!1948919 () Bool)

(assert (=> b!7093707 (= e!4264268 tp!1948919)))

(assert (= (and b!7093612 (is-ElementMatch!17812 (regTwo!36137 r!11554))) b!7093705))

(assert (= (and b!7093612 (is-Concat!26657 (regTwo!36137 r!11554))) b!7093706))

(assert (= (and b!7093612 (is-Star!17812 (regTwo!36137 r!11554))) b!7093707))

(assert (= (and b!7093612 (is-Union!17812 (regTwo!36137 r!11554))) b!7093708))

(declare-fun e!4264269 () Bool)

(assert (=> b!7093611 (= tp!1948874 e!4264269)))

(declare-fun b!7093712 () Bool)

(declare-fun tp!1948921 () Bool)

(declare-fun tp!1948923 () Bool)

(assert (=> b!7093712 (= e!4264269 (and tp!1948921 tp!1948923))))

(declare-fun b!7093709 () Bool)

(assert (=> b!7093709 (= e!4264269 tp_is_empty!44857)))

(declare-fun b!7093710 () Bool)

(declare-fun tp!1948922 () Bool)

(declare-fun tp!1948925 () Bool)

(assert (=> b!7093710 (= e!4264269 (and tp!1948922 tp!1948925))))

(declare-fun b!7093711 () Bool)

(declare-fun tp!1948924 () Bool)

(assert (=> b!7093711 (= e!4264269 tp!1948924)))

(assert (= (and b!7093611 (is-ElementMatch!17812 (reg!18141 r!11554))) b!7093709))

(assert (= (and b!7093611 (is-Concat!26657 (reg!18141 r!11554))) b!7093710))

(assert (= (and b!7093611 (is-Star!17812 (reg!18141 r!11554))) b!7093711))

(assert (= (and b!7093611 (is-Union!17812 (reg!18141 r!11554))) b!7093712))

(declare-fun e!4264270 () Bool)

(assert (=> b!7093610 (= tp!1948872 e!4264270)))

(declare-fun b!7093716 () Bool)

(declare-fun tp!1948926 () Bool)

(declare-fun tp!1948928 () Bool)

(assert (=> b!7093716 (= e!4264270 (and tp!1948926 tp!1948928))))

(declare-fun b!7093713 () Bool)

(assert (=> b!7093713 (= e!4264270 tp_is_empty!44857)))

(declare-fun b!7093714 () Bool)

(declare-fun tp!1948927 () Bool)

(declare-fun tp!1948930 () Bool)

(assert (=> b!7093714 (= e!4264270 (and tp!1948927 tp!1948930))))

(declare-fun b!7093715 () Bool)

(declare-fun tp!1948929 () Bool)

(assert (=> b!7093715 (= e!4264270 tp!1948929)))

(assert (= (and b!7093610 (is-ElementMatch!17812 (regOne!36136 r!11554))) b!7093713))

(assert (= (and b!7093610 (is-Concat!26657 (regOne!36136 r!11554))) b!7093714))

(assert (= (and b!7093610 (is-Star!17812 (regOne!36136 r!11554))) b!7093715))

(assert (= (and b!7093610 (is-Union!17812 (regOne!36136 r!11554))) b!7093716))

(declare-fun e!4264271 () Bool)

(assert (=> b!7093610 (= tp!1948871 e!4264271)))

(declare-fun b!7093720 () Bool)

(declare-fun tp!1948931 () Bool)

(declare-fun tp!1948933 () Bool)

(assert (=> b!7093720 (= e!4264271 (and tp!1948931 tp!1948933))))

(declare-fun b!7093717 () Bool)

(assert (=> b!7093717 (= e!4264271 tp_is_empty!44857)))

(declare-fun b!7093718 () Bool)

(declare-fun tp!1948932 () Bool)

(declare-fun tp!1948935 () Bool)

(assert (=> b!7093718 (= e!4264271 (and tp!1948932 tp!1948935))))

(declare-fun b!7093719 () Bool)

(declare-fun tp!1948934 () Bool)

(assert (=> b!7093719 (= e!4264271 tp!1948934)))

(assert (= (and b!7093610 (is-ElementMatch!17812 (regTwo!36136 r!11554))) b!7093717))

(assert (= (and b!7093610 (is-Concat!26657 (regTwo!36136 r!11554))) b!7093718))

(assert (= (and b!7093610 (is-Star!17812 (regTwo!36136 r!11554))) b!7093719))

(assert (= (and b!7093610 (is-Union!17812 (regTwo!36136 r!11554))) b!7093720))

(declare-fun b_lambda!271077 () Bool)

(assert (= b_lambda!271073 (or b!7093616 b_lambda!271077)))

(declare-fun bs!1883755 () Bool)

(declare-fun d!2217448 () Bool)

(assert (= bs!1883755 (and d!2217448 b!7093616)))

(assert (=> bs!1883755 (= (dynLambda!28008 lambda!430228 (h!75099 (exprs!7308 c!9994))) (validRegex!9087 (h!75099 (exprs!7308 c!9994))))))

(declare-fun m!7822316 () Bool)

(assert (=> bs!1883755 m!7822316))

(assert (=> b!7093682 d!2217448))

(push 1)

(assert (not b!7093712))

(assert (not b!7093711))

(assert (not bs!1883755))

(assert (not b!7093706))

(assert (not b!7093683))

(assert (not b!7093710))

(assert (not b!7093666))

(assert (not b!7093688))

(assert (not b_lambda!271077))

(assert (not d!2217436))

(assert (not b!7093700))

(assert (not bm!645397))

(assert (not b!7093715))

(assert (not b!7093714))

(assert (not b!7093719))

(assert (not b!7093708))

(assert (not bm!645399))

(assert (not b!7093718))

(assert (not b!7093720))

(assert (not b!7093716))

(assert (not b!7093701))

(assert (not d!2217442))

(assert tp_is_empty!44857)

(assert (not b!7093702))

(assert (not b!7093707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

