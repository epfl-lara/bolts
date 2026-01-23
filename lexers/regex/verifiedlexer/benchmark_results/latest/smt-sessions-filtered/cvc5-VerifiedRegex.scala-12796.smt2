; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707682 () Bool)

(assert start!707682)

(assert (=> start!707682 true))

(declare-fun b!7261277 () Bool)

(declare-fun res!2944207 () Bool)

(declare-fun e!4354240 () Bool)

(assert (=> b!7261277 (=> (not res!2944207) (not e!4354240))))

(declare-datatypes ((C!37674 0))(
  ( (C!37675 (val!28785 Int)) )
))
(declare-datatypes ((Regex!18700 0))(
  ( (ElementMatch!18700 (c!1350878 C!37674)) (Concat!27545 (regOne!37912 Regex!18700) (regTwo!37912 Regex!18700)) (EmptyExpr!18700) (Star!18700 (reg!19029 Regex!18700)) (EmptyLang!18700) (Union!18700 (regOne!37913 Regex!18700) (regTwo!37913 Regex!18700)) )
))
(declare-datatypes ((List!70679 0))(
  ( (Nil!70555) (Cons!70555 (h!77003 Regex!18700) (t!384745 List!70679)) )
))
(declare-datatypes ((Context!15280 0))(
  ( (Context!15281 (exprs!8140 List!70679)) )
))
(declare-datatypes ((List!70680 0))(
  ( (Nil!70556) (Cons!70556 (h!77004 Context!15280) (t!384746 List!70680)) )
))
(declare-fun zl!1664 () List!70680)

(assert (=> b!7261277 (= res!2944207 (is-Cons!70556 zl!1664))))

(declare-fun b!7261278 () Bool)

(declare-fun e!4354237 () Bool)

(declare-fun tp!2039074 () Bool)

(assert (=> b!7261278 (= e!4354237 tp!2039074)))

(declare-fun b!7261279 () Bool)

(declare-fun res!2944203 () Bool)

(declare-fun e!4354235 () Bool)

(assert (=> b!7261279 (=> res!2944203 e!4354235)))

(declare-fun lambda!446648 () Int)

(declare-fun exists!4466 (List!70680 Int) Bool)

(assert (=> b!7261279 (= res!2944203 (not (exists!4466 (t!384746 zl!1664) lambda!446648)))))

(declare-fun b!7261280 () Bool)

(declare-fun e!4354236 () Bool)

(declare-fun lt!2590850 () (Set Context!15280))

(declare-datatypes ((List!70681 0))(
  ( (Nil!70557) (Cons!70557 (h!77005 C!37674) (t!384747 List!70681)) )
))
(declare-fun s!7912 () List!70681)

(declare-fun matchZipper!3608 ((Set Context!15280) List!70681) Bool)

(assert (=> b!7261280 (= e!4354236 (matchZipper!3608 lt!2590850 s!7912))))

(declare-fun b!7261282 () Bool)

(declare-fun size!41772 (List!70680) Int)

(assert (=> b!7261282 (= e!4354235 (< (size!41772 (t!384746 zl!1664)) (size!41772 zl!1664)))))

(declare-fun res!2944205 () Bool)

(assert (=> start!707682 (=> (not res!2944205) (not e!4354240))))

(assert (=> start!707682 (= res!2944205 (exists!4466 zl!1664 lambda!446648))))

(assert (=> start!707682 e!4354240))

(declare-fun e!4354238 () Bool)

(assert (=> start!707682 e!4354238))

(declare-fun e!4354239 () Bool)

(assert (=> start!707682 e!4354239))

(declare-fun b!7261281 () Bool)

(assert (=> b!7261281 (= e!4354240 (not e!4354235))))

(declare-fun res!2944204 () Bool)

(assert (=> b!7261281 (=> res!2944204 e!4354235)))

(declare-fun lt!2590847 () Bool)

(assert (=> b!7261281 (= res!2944204 lt!2590847)))

(declare-fun lt!2590848 () (Set Context!15280))

(assert (=> b!7261281 (= (matchZipper!3608 (set.union lt!2590848 lt!2590850) s!7912) e!4354236)))

(declare-fun res!2944206 () Bool)

(assert (=> b!7261281 (=> res!2944206 e!4354236)))

(assert (=> b!7261281 (= res!2944206 lt!2590847)))

(assert (=> b!7261281 (= lt!2590847 (matchZipper!3608 lt!2590848 s!7912))))

(declare-datatypes ((Unit!164038 0))(
  ( (Unit!164039) )
))
(declare-fun lt!2590849 () Unit!164038)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1749 ((Set Context!15280) (Set Context!15280) List!70681) Unit!164038)

(assert (=> b!7261281 (= lt!2590849 (lemmaZipperConcatMatchesSameAsBothZippers!1749 lt!2590848 lt!2590850 s!7912))))

(declare-fun content!14698 (List!70680) (Set Context!15280))

(assert (=> b!7261281 (= lt!2590850 (content!14698 (t!384746 zl!1664)))))

(assert (=> b!7261281 (= lt!2590848 (set.insert (h!77004 zl!1664) (as set.empty (Set Context!15280))))))

(declare-fun tp!2039075 () Bool)

(declare-fun b!7261283 () Bool)

(declare-fun inv!89761 (Context!15280) Bool)

(assert (=> b!7261283 (= e!4354238 (and (inv!89761 (h!77004 zl!1664)) e!4354237 tp!2039075))))

(declare-fun b!7261284 () Bool)

(declare-fun tp_is_empty!46865 () Bool)

(declare-fun tp!2039073 () Bool)

(assert (=> b!7261284 (= e!4354239 (and tp_is_empty!46865 tp!2039073))))

(assert (= (and start!707682 res!2944205) b!7261277))

(assert (= (and b!7261277 res!2944207) b!7261281))

(assert (= (and b!7261281 (not res!2944206)) b!7261280))

(assert (= (and b!7261281 (not res!2944204)) b!7261279))

(assert (= (and b!7261279 (not res!2944203)) b!7261282))

(assert (= b!7261283 b!7261278))

(assert (= (and start!707682 (is-Cons!70556 zl!1664)) b!7261283))

(assert (= (and start!707682 (is-Cons!70557 s!7912)) b!7261284))

(declare-fun m!7945998 () Bool)

(assert (=> b!7261282 m!7945998))

(declare-fun m!7946000 () Bool)

(assert (=> b!7261282 m!7946000))

(declare-fun m!7946002 () Bool)

(assert (=> b!7261280 m!7946002))

(declare-fun m!7946004 () Bool)

(assert (=> b!7261283 m!7946004))

(declare-fun m!7946006 () Bool)

(assert (=> start!707682 m!7946006))

(declare-fun m!7946008 () Bool)

(assert (=> b!7261281 m!7946008))

(declare-fun m!7946010 () Bool)

(assert (=> b!7261281 m!7946010))

(declare-fun m!7946012 () Bool)

(assert (=> b!7261281 m!7946012))

(declare-fun m!7946014 () Bool)

(assert (=> b!7261281 m!7946014))

(declare-fun m!7946016 () Bool)

(assert (=> b!7261281 m!7946016))

(declare-fun m!7946018 () Bool)

(assert (=> b!7261279 m!7946018))

(push 1)

(assert tp_is_empty!46865)

(assert (not b!7261283))

(assert (not b!7261279))

(assert (not b!7261278))

(assert (not b!7261281))

(assert (not b!7261282))

(assert (not b!7261280))

(assert (not start!707682))

(assert (not b!7261284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259099 () Bool)

(declare-fun c!1350886 () Bool)

(declare-fun isEmpty!40611 (List!70681) Bool)

(assert (=> d!2259099 (= c!1350886 (isEmpty!40611 s!7912))))

(declare-fun e!4354261 () Bool)

(assert (=> d!2259099 (= (matchZipper!3608 lt!2590850 s!7912) e!4354261)))

(declare-fun b!7261317 () Bool)

(declare-fun nullableZipper!2945 ((Set Context!15280)) Bool)

(assert (=> b!7261317 (= e!4354261 (nullableZipper!2945 lt!2590850))))

(declare-fun b!7261318 () Bool)

(declare-fun derivationStepZipper!3471 ((Set Context!15280) C!37674) (Set Context!15280))

(declare-fun head!14944 (List!70681) C!37674)

(declare-fun tail!14403 (List!70681) List!70681)

(assert (=> b!7261318 (= e!4354261 (matchZipper!3608 (derivationStepZipper!3471 lt!2590850 (head!14944 s!7912)) (tail!14403 s!7912)))))

(assert (= (and d!2259099 c!1350886) b!7261317))

(assert (= (and d!2259099 (not c!1350886)) b!7261318))

(declare-fun m!7946042 () Bool)

(assert (=> d!2259099 m!7946042))

(declare-fun m!7946044 () Bool)

(assert (=> b!7261317 m!7946044))

(declare-fun m!7946046 () Bool)

(assert (=> b!7261318 m!7946046))

(assert (=> b!7261318 m!7946046))

(declare-fun m!7946048 () Bool)

(assert (=> b!7261318 m!7946048))

(declare-fun m!7946050 () Bool)

(assert (=> b!7261318 m!7946050))

(assert (=> b!7261318 m!7946048))

(assert (=> b!7261318 m!7946050))

(declare-fun m!7946052 () Bool)

(assert (=> b!7261318 m!7946052))

(assert (=> b!7261280 d!2259099))

(declare-fun bs!1909439 () Bool)

(declare-fun d!2259101 () Bool)

(assert (= bs!1909439 (and d!2259101 start!707682)))

(declare-fun lambda!446656 () Int)

(assert (=> bs!1909439 (not (= lambda!446656 lambda!446648))))

(assert (=> d!2259101 true))

(declare-fun order!29049 () Int)

(declare-fun dynLambda!28831 (Int Int) Int)

(assert (=> d!2259101 (< (dynLambda!28831 order!29049 lambda!446648) (dynLambda!28831 order!29049 lambda!446656))))

(declare-fun forall!17553 (List!70680 Int) Bool)

(assert (=> d!2259101 (= (exists!4466 (t!384746 zl!1664) lambda!446648) (not (forall!17553 (t!384746 zl!1664) lambda!446656)))))

(declare-fun bs!1909440 () Bool)

(assert (= bs!1909440 d!2259101))

(declare-fun m!7946054 () Bool)

(assert (=> bs!1909440 m!7946054))

(assert (=> b!7261279 d!2259101))

(declare-fun d!2259103 () Bool)

(declare-fun c!1350887 () Bool)

(assert (=> d!2259103 (= c!1350887 (isEmpty!40611 s!7912))))

(declare-fun e!4354262 () Bool)

(assert (=> d!2259103 (= (matchZipper!3608 (set.union lt!2590848 lt!2590850) s!7912) e!4354262)))

(declare-fun b!7261321 () Bool)

(assert (=> b!7261321 (= e!4354262 (nullableZipper!2945 (set.union lt!2590848 lt!2590850)))))

(declare-fun b!7261322 () Bool)

(assert (=> b!7261322 (= e!4354262 (matchZipper!3608 (derivationStepZipper!3471 (set.union lt!2590848 lt!2590850) (head!14944 s!7912)) (tail!14403 s!7912)))))

(assert (= (and d!2259103 c!1350887) b!7261321))

(assert (= (and d!2259103 (not c!1350887)) b!7261322))

(assert (=> d!2259103 m!7946042))

(declare-fun m!7946056 () Bool)

(assert (=> b!7261321 m!7946056))

(assert (=> b!7261322 m!7946046))

(assert (=> b!7261322 m!7946046))

(declare-fun m!7946058 () Bool)

(assert (=> b!7261322 m!7946058))

(assert (=> b!7261322 m!7946050))

(assert (=> b!7261322 m!7946058))

(assert (=> b!7261322 m!7946050))

(declare-fun m!7946060 () Bool)

(assert (=> b!7261322 m!7946060))

(assert (=> b!7261281 d!2259103))

(declare-fun d!2259105 () Bool)

(declare-fun c!1350888 () Bool)

(assert (=> d!2259105 (= c!1350888 (isEmpty!40611 s!7912))))

(declare-fun e!4354263 () Bool)

(assert (=> d!2259105 (= (matchZipper!3608 lt!2590848 s!7912) e!4354263)))

(declare-fun b!7261323 () Bool)

(assert (=> b!7261323 (= e!4354263 (nullableZipper!2945 lt!2590848))))

(declare-fun b!7261324 () Bool)

(assert (=> b!7261324 (= e!4354263 (matchZipper!3608 (derivationStepZipper!3471 lt!2590848 (head!14944 s!7912)) (tail!14403 s!7912)))))

(assert (= (and d!2259105 c!1350888) b!7261323))

(assert (= (and d!2259105 (not c!1350888)) b!7261324))

(assert (=> d!2259105 m!7946042))

(declare-fun m!7946062 () Bool)

(assert (=> b!7261323 m!7946062))

(assert (=> b!7261324 m!7946046))

(assert (=> b!7261324 m!7946046))

(declare-fun m!7946064 () Bool)

(assert (=> b!7261324 m!7946064))

(assert (=> b!7261324 m!7946050))

(assert (=> b!7261324 m!7946064))

(assert (=> b!7261324 m!7946050))

(declare-fun m!7946066 () Bool)

(assert (=> b!7261324 m!7946066))

(assert (=> b!7261281 d!2259105))

(declare-fun e!4354266 () Bool)

(declare-fun d!2259107 () Bool)

(assert (=> d!2259107 (= (matchZipper!3608 (set.union lt!2590848 lt!2590850) s!7912) e!4354266)))

(declare-fun res!2944225 () Bool)

(assert (=> d!2259107 (=> res!2944225 e!4354266)))

(assert (=> d!2259107 (= res!2944225 (matchZipper!3608 lt!2590848 s!7912))))

(declare-fun lt!2590865 () Unit!164038)

(declare-fun choose!56234 ((Set Context!15280) (Set Context!15280) List!70681) Unit!164038)

(assert (=> d!2259107 (= lt!2590865 (choose!56234 lt!2590848 lt!2590850 s!7912))))

(assert (=> d!2259107 (= (lemmaZipperConcatMatchesSameAsBothZippers!1749 lt!2590848 lt!2590850 s!7912) lt!2590865)))

(declare-fun b!7261327 () Bool)

(assert (=> b!7261327 (= e!4354266 (matchZipper!3608 lt!2590850 s!7912))))

(assert (= (and d!2259107 (not res!2944225)) b!7261327))

(assert (=> d!2259107 m!7946008))

(assert (=> d!2259107 m!7946014))

(declare-fun m!7946068 () Bool)

(assert (=> d!2259107 m!7946068))

(assert (=> b!7261327 m!7946002))

(assert (=> b!7261281 d!2259107))

(declare-fun d!2259111 () Bool)

(declare-fun c!1350893 () Bool)

(assert (=> d!2259111 (= c!1350893 (is-Nil!70556 (t!384746 zl!1664)))))

(declare-fun e!4354271 () (Set Context!15280))

(assert (=> d!2259111 (= (content!14698 (t!384746 zl!1664)) e!4354271)))

(declare-fun b!7261336 () Bool)

(assert (=> b!7261336 (= e!4354271 (as set.empty (Set Context!15280)))))

(declare-fun b!7261337 () Bool)

(assert (=> b!7261337 (= e!4354271 (set.union (set.insert (h!77004 (t!384746 zl!1664)) (as set.empty (Set Context!15280))) (content!14698 (t!384746 (t!384746 zl!1664)))))))

(assert (= (and d!2259111 c!1350893) b!7261336))

(assert (= (and d!2259111 (not c!1350893)) b!7261337))

(declare-fun m!7946070 () Bool)

(assert (=> b!7261337 m!7946070))

(declare-fun m!7946072 () Bool)

(assert (=> b!7261337 m!7946072))

(assert (=> b!7261281 d!2259111))

(declare-fun d!2259113 () Bool)

(declare-fun lt!2590870 () Int)

(assert (=> d!2259113 (>= lt!2590870 0)))

(declare-fun e!4354274 () Int)

(assert (=> d!2259113 (= lt!2590870 e!4354274)))

(declare-fun c!1350896 () Bool)

(assert (=> d!2259113 (= c!1350896 (is-Nil!70556 (t!384746 zl!1664)))))

(assert (=> d!2259113 (= (size!41772 (t!384746 zl!1664)) lt!2590870)))

(declare-fun b!7261342 () Bool)

(assert (=> b!7261342 (= e!4354274 0)))

(declare-fun b!7261343 () Bool)

(assert (=> b!7261343 (= e!4354274 (+ 1 (size!41772 (t!384746 (t!384746 zl!1664)))))))

(assert (= (and d!2259113 c!1350896) b!7261342))

(assert (= (and d!2259113 (not c!1350896)) b!7261343))

(declare-fun m!7946074 () Bool)

(assert (=> b!7261343 m!7946074))

(assert (=> b!7261282 d!2259113))

(declare-fun d!2259115 () Bool)

(declare-fun lt!2590871 () Int)

(assert (=> d!2259115 (>= lt!2590871 0)))

(declare-fun e!4354275 () Int)

(assert (=> d!2259115 (= lt!2590871 e!4354275)))

(declare-fun c!1350897 () Bool)

(assert (=> d!2259115 (= c!1350897 (is-Nil!70556 zl!1664))))

(assert (=> d!2259115 (= (size!41772 zl!1664) lt!2590871)))

(declare-fun b!7261344 () Bool)

(assert (=> b!7261344 (= e!4354275 0)))

(declare-fun b!7261345 () Bool)

(assert (=> b!7261345 (= e!4354275 (+ 1 (size!41772 (t!384746 zl!1664))))))

(assert (= (and d!2259115 c!1350897) b!7261344))

(assert (= (and d!2259115 (not c!1350897)) b!7261345))

(assert (=> b!7261345 m!7945998))

(assert (=> b!7261282 d!2259115))

(declare-fun bs!1909441 () Bool)

(declare-fun d!2259117 () Bool)

(assert (= bs!1909441 (and d!2259117 start!707682)))

(declare-fun lambda!446657 () Int)

(assert (=> bs!1909441 (not (= lambda!446657 lambda!446648))))

(declare-fun bs!1909442 () Bool)

(assert (= bs!1909442 (and d!2259117 d!2259101)))

(assert (=> bs!1909442 (= lambda!446657 lambda!446656)))

(assert (=> d!2259117 true))

(assert (=> d!2259117 (< (dynLambda!28831 order!29049 lambda!446648) (dynLambda!28831 order!29049 lambda!446657))))

(assert (=> d!2259117 (= (exists!4466 zl!1664 lambda!446648) (not (forall!17553 zl!1664 lambda!446657)))))

(declare-fun bs!1909443 () Bool)

(assert (= bs!1909443 d!2259117))

(declare-fun m!7946076 () Bool)

(assert (=> bs!1909443 m!7946076))

(assert (=> start!707682 d!2259117))

(declare-fun d!2259119 () Bool)

(declare-fun lambda!446660 () Int)

(declare-fun forall!17554 (List!70679 Int) Bool)

(assert (=> d!2259119 (= (inv!89761 (h!77004 zl!1664)) (forall!17554 (exprs!8140 (h!77004 zl!1664)) lambda!446660))))

(declare-fun bs!1909444 () Bool)

(assert (= bs!1909444 d!2259119))

(declare-fun m!7946080 () Bool)

(assert (=> bs!1909444 m!7946080))

(assert (=> b!7261283 d!2259119))

(declare-fun b!7261354 () Bool)

(declare-fun e!4354280 () Bool)

(declare-fun tp!2039087 () Bool)

(assert (=> b!7261354 (= e!4354280 (and tp_is_empty!46865 tp!2039087))))

(assert (=> b!7261284 (= tp!2039073 e!4354280)))

(assert (= (and b!7261284 (is-Cons!70557 (t!384747 s!7912))) b!7261354))

(declare-fun b!7261362 () Bool)

(declare-fun e!4354286 () Bool)

(declare-fun tp!2039092 () Bool)

(assert (=> b!7261362 (= e!4354286 tp!2039092)))

(declare-fun b!7261361 () Bool)

(declare-fun e!4354285 () Bool)

(declare-fun tp!2039093 () Bool)

(assert (=> b!7261361 (= e!4354285 (and (inv!89761 (h!77004 (t!384746 zl!1664))) e!4354286 tp!2039093))))

(assert (=> b!7261283 (= tp!2039075 e!4354285)))

(assert (= b!7261361 b!7261362))

(assert (= (and b!7261283 (is-Cons!70556 (t!384746 zl!1664))) b!7261361))

(declare-fun m!7946082 () Bool)

(assert (=> b!7261361 m!7946082))

(declare-fun b!7261367 () Bool)

(declare-fun e!4354289 () Bool)

(declare-fun tp!2039098 () Bool)

(declare-fun tp!2039099 () Bool)

(assert (=> b!7261367 (= e!4354289 (and tp!2039098 tp!2039099))))

(assert (=> b!7261278 (= tp!2039074 e!4354289)))

(assert (= (and b!7261278 (is-Cons!70555 (exprs!8140 (h!77004 zl!1664)))) b!7261367))

(push 1)

(assert (not d!2259099))

(assert (not b!7261317))

(assert tp_is_empty!46865)

(assert (not b!7261361))

(assert (not d!2259103))

(assert (not b!7261367))

(assert (not d!2259119))

(assert (not b!7261345))

(assert (not b!7261318))

(assert (not b!7261354))

(assert (not d!2259107))

(assert (not b!7261362))

(assert (not b!7261322))

(assert (not b!7261323))

(assert (not d!2259117))

(assert (not b!7261337))

(assert (not b!7261321))

(assert (not d!2259101))

(assert (not b!7261327))

(assert (not d!2259105))

(assert (not b!7261343))

(assert (not b!7261324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

