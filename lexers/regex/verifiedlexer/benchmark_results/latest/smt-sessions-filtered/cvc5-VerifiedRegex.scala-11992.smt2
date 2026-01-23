; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671960 () Bool)

(assert start!671960)

(declare-fun b!6991139 () Bool)

(assert (=> b!6991139 true))

(declare-fun b!6991131 () Bool)

(assert (=> b!6991131 true))

(declare-fun b!6991129 () Bool)

(assert (=> b!6991129 true))

(declare-fun b!6991121 () Bool)

(declare-fun e!4202093 () Bool)

(declare-datatypes ((C!34730 0))(
  ( (C!34731 (val!27067 Int)) )
))
(declare-datatypes ((Regex!17230 0))(
  ( (ElementMatch!17230 (c!1296771 C!34730)) (Concat!26075 (regOne!34972 Regex!17230) (regTwo!34972 Regex!17230)) (EmptyExpr!17230) (Star!17230 (reg!17559 Regex!17230)) (EmptyLang!17230) (Union!17230 (regOne!34973 Regex!17230) (regTwo!34973 Regex!17230)) )
))
(declare-datatypes ((List!67235 0))(
  ( (Nil!67111) (Cons!67111 (h!73559 Regex!17230) (t!380982 List!67235)) )
))
(declare-datatypes ((Context!12452 0))(
  ( (Context!12453 (exprs!6726 List!67235)) )
))
(declare-fun lt!2488249 () (Set Context!12452))

(declare-datatypes ((List!67236 0))(
  ( (Nil!67112) (Cons!67112 (h!73560 C!34730) (t!380983 List!67236)) )
))
(declare-fun s!7408 () List!67236)

(declare-fun matchZipper!2770 ((Set Context!12452) List!67236) Bool)

(assert (=> b!6991121 (= e!4202093 (not (matchZipper!2770 lt!2488249 (t!380983 s!7408))))))

(declare-fun lambda!402261 () Int)

(declare-datatypes ((Unit!161115 0))(
  ( (Unit!161116) )
))
(declare-fun lt!2488250 () Unit!161115)

(declare-fun lt!2488246 () List!67235)

(declare-fun ct2!306 () Context!12452)

(declare-fun lemmaConcatPreservesForall!566 (List!67235 List!67235 Int) Unit!161115)

(assert (=> b!6991121 (= lt!2488250 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991122 () Bool)

(declare-fun res!2851257 () Bool)

(declare-fun e!4202089 () Bool)

(assert (=> b!6991122 (=> res!2851257 e!4202089)))

(declare-fun lt!2488252 () Context!12452)

(declare-fun isEmpty!39168 (List!67235) Bool)

(assert (=> b!6991122 (= res!2851257 (isEmpty!39168 (exprs!6726 lt!2488252)))))

(declare-fun b!6991123 () Bool)

(declare-fun e!4202086 () Bool)

(assert (=> b!6991123 (= e!4202089 e!4202086)))

(declare-fun res!2851241 () Bool)

(assert (=> b!6991123 (=> res!2851241 e!4202086)))

(declare-fun nullable!6990 (Regex!17230) Bool)

(assert (=> b!6991123 (= res!2851241 (not (nullable!6990 (h!73559 (exprs!6726 lt!2488252)))))))

(declare-fun lt!2488267 () Context!12452)

(assert (=> b!6991123 (= lt!2488267 (Context!12453 lt!2488246))))

(declare-fun tail!13244 (List!67235) List!67235)

(assert (=> b!6991123 (= lt!2488246 (tail!13244 (exprs!6726 lt!2488252)))))

(declare-fun b!6991124 () Bool)

(declare-fun e!4202095 () Bool)

(declare-fun e!4202092 () Bool)

(assert (=> b!6991124 (= e!4202095 e!4202092)))

(declare-fun res!2851249 () Bool)

(assert (=> b!6991124 (=> res!2851249 e!4202092)))

(declare-fun lt!2488263 () (Set Context!12452))

(assert (=> b!6991124 (= res!2851249 (not (matchZipper!2770 lt!2488263 s!7408)))))

(declare-fun lt!2488271 () Unit!161115)

(assert (=> b!6991124 (= lt!2488271 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991126 () Bool)

(declare-fun e!4202091 () Bool)

(declare-fun e!4202094 () Bool)

(assert (=> b!6991126 (= e!4202091 e!4202094)))

(declare-fun res!2851250 () Bool)

(assert (=> b!6991126 (=> res!2851250 e!4202094)))

(declare-fun lt!2488258 () (Set Context!12452))

(declare-fun lt!2488253 () (Set Context!12452))

(assert (=> b!6991126 (= res!2851250 (not (= lt!2488258 lt!2488253)))))

(declare-fun lt!2488251 () Context!12452)

(assert (=> b!6991126 (= lt!2488258 (set.insert lt!2488251 (as set.empty (Set Context!12452))))))

(declare-fun lt!2488245 () Unit!161115)

(assert (=> b!6991126 (= lt!2488245 (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488252) (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991127 () Bool)

(declare-fun forall!16145 (List!67235 Int) Bool)

(assert (=> b!6991127 (= e!4202092 (forall!16145 lt!2488246 lambda!402261))))

(declare-fun lt!2488265 () Unit!161115)

(assert (=> b!6991127 (= lt!2488265 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488261 () (Set Context!12452))

(declare-fun lambda!402262 () Int)

(declare-fun flatMap!2216 ((Set Context!12452) Int) (Set Context!12452))

(declare-fun derivationStepZipperUp!1880 (Context!12452 C!34730) (Set Context!12452))

(assert (=> b!6991127 (= (flatMap!2216 lt!2488261 lambda!402262) (derivationStepZipperUp!1880 lt!2488267 (h!73560 s!7408)))))

(declare-fun lt!2488241 () Unit!161115)

(declare-fun lemmaFlatMapOnSingletonSet!1731 ((Set Context!12452) Context!12452 Int) Unit!161115)

(assert (=> b!6991127 (= lt!2488241 (lemmaFlatMapOnSingletonSet!1731 lt!2488261 lt!2488267 lambda!402262))))

(declare-fun lambda!402260 () Int)

(declare-fun map!15492 ((Set Context!12452) Int) (Set Context!12452))

(declare-fun ++!15175 (List!67235 List!67235) List!67235)

(assert (=> b!6991127 (= (map!15492 lt!2488261 lambda!402260) (set.insert (Context!12453 (++!15175 lt!2488246 (exprs!6726 ct2!306))) (as set.empty (Set Context!12452))))))

(declare-fun lt!2488257 () Unit!161115)

(assert (=> b!6991127 (= lt!2488257 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488273 () Unit!161115)

(declare-fun lemmaMapOnSingletonSet!295 ((Set Context!12452) Context!12452 Int) Unit!161115)

(assert (=> b!6991127 (= lt!2488273 (lemmaMapOnSingletonSet!295 lt!2488261 lt!2488267 lambda!402260))))

(assert (=> b!6991127 (= lt!2488261 (set.insert lt!2488267 (as set.empty (Set Context!12452))))))

(declare-fun b!6991128 () Bool)

(declare-fun e!4202087 () Bool)

(declare-fun tp!1929944 () Bool)

(assert (=> b!6991128 (= e!4202087 tp!1929944)))

(assert (=> b!6991129 (= e!4202094 e!4202089)))

(declare-fun res!2851243 () Bool)

(assert (=> b!6991129 (=> res!2851243 e!4202089)))

(declare-fun lt!2488264 () (Set Context!12452))

(declare-fun derivationStepZipper!2710 ((Set Context!12452) C!34730) (Set Context!12452))

(assert (=> b!6991129 (= res!2851243 (not (= (derivationStepZipper!2710 lt!2488258 (h!73560 s!7408)) lt!2488264)))))

(assert (=> b!6991129 (= (flatMap!2216 lt!2488258 lambda!402262) (derivationStepZipperUp!1880 lt!2488251 (h!73560 s!7408)))))

(declare-fun lt!2488255 () Unit!161115)

(assert (=> b!6991129 (= lt!2488255 (lemmaFlatMapOnSingletonSet!1731 lt!2488258 lt!2488251 lambda!402262))))

(assert (=> b!6991129 (= lt!2488264 (derivationStepZipperUp!1880 lt!2488251 (h!73560 s!7408)))))

(declare-fun lt!2488247 () Unit!161115)

(assert (=> b!6991129 (= lt!2488247 (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488252) (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991130 () Bool)

(declare-fun e!4202096 () Bool)

(declare-fun e!4202083 () Bool)

(assert (=> b!6991130 (= e!4202096 e!4202083)))

(declare-fun res!2851242 () Bool)

(assert (=> b!6991130 (=> res!2851242 e!4202083)))

(assert (=> b!6991130 (= res!2851242 (not (matchZipper!2770 lt!2488249 (t!380983 s!7408))))))

(declare-fun lt!2488254 () Unit!161115)

(assert (=> b!6991130 (= lt!2488254 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun setIsEmpty!47862 () Bool)

(declare-fun setRes!47862 () Bool)

(assert (=> setIsEmpty!47862 setRes!47862))

(declare-fun e!4202088 () Bool)

(assert (=> b!6991131 (= e!4202088 e!4202091)))

(declare-fun res!2851251 () Bool)

(assert (=> b!6991131 (=> res!2851251 e!4202091)))

(declare-fun lt!2488240 () Context!12452)

(declare-fun z1!570 () (Set Context!12452))

(assert (=> b!6991131 (= res!2851251 (or (not (= lt!2488251 lt!2488240)) (not (set.member lt!2488252 z1!570))))))

(assert (=> b!6991131 (= lt!2488251 (Context!12453 (++!15175 (exprs!6726 lt!2488252) (exprs!6726 ct2!306))))))

(declare-fun lt!2488259 () Unit!161115)

(assert (=> b!6991131 (= lt!2488259 (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488252) (exprs!6726 ct2!306) lambda!402261))))

(declare-fun mapPost2!85 ((Set Context!12452) Int Context!12452) Context!12452)

(assert (=> b!6991131 (= lt!2488252 (mapPost2!85 z1!570 lambda!402260 lt!2488240))))

(declare-fun b!6991132 () Bool)

(declare-fun res!2851253 () Bool)

(assert (=> b!6991132 (=> res!2851253 e!4202089)))

(assert (=> b!6991132 (= res!2851253 (not (is-Cons!67111 (exprs!6726 lt!2488252))))))

(declare-fun b!6991133 () Bool)

(declare-fun res!2851247 () Bool)

(assert (=> b!6991133 (=> res!2851247 e!4202096)))

(declare-fun lt!2488270 () Bool)

(assert (=> b!6991133 (= res!2851247 (not lt!2488270))))

(declare-fun b!6991134 () Bool)

(declare-fun e!4202090 () Bool)

(assert (=> b!6991134 (= e!4202086 e!4202090)))

(declare-fun res!2851256 () Bool)

(assert (=> b!6991134 (=> res!2851256 e!4202090)))

(declare-fun lt!2488237 () (Set Context!12452))

(assert (=> b!6991134 (= res!2851256 (not (= lt!2488264 lt!2488237)))))

(declare-fun lt!2488260 () (Set Context!12452))

(assert (=> b!6991134 (= lt!2488237 (set.union lt!2488260 lt!2488249))))

(declare-fun lt!2488262 () Context!12452)

(assert (=> b!6991134 (= lt!2488249 (derivationStepZipperUp!1880 lt!2488262 (h!73560 s!7408)))))

(declare-fun derivationStepZipperDown!1948 (Regex!17230 Context!12452 C!34730) (Set Context!12452))

(assert (=> b!6991134 (= lt!2488260 (derivationStepZipperDown!1948 (h!73559 (exprs!6726 lt!2488252)) lt!2488262 (h!73560 s!7408)))))

(assert (=> b!6991134 (= lt!2488262 (Context!12453 (++!15175 lt!2488246 (exprs!6726 ct2!306))))))

(declare-fun lt!2488242 () Unit!161115)

(assert (=> b!6991134 (= lt!2488242 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488235 () Unit!161115)

(assert (=> b!6991134 (= lt!2488235 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991135 () Bool)

(declare-fun e!4202081 () Bool)

(declare-fun tp_is_empty!43685 () Bool)

(declare-fun tp!1929945 () Bool)

(assert (=> b!6991135 (= e!4202081 (and tp_is_empty!43685 tp!1929945))))

(declare-fun b!6991125 () Bool)

(declare-fun e!4202084 () Bool)

(assert (=> b!6991125 (= e!4202084 (matchZipper!2770 lt!2488249 (t!380983 s!7408)))))

(declare-fun res!2851245 () Bool)

(declare-fun e!4202085 () Bool)

(assert (=> start!671960 (=> (not res!2851245) (not e!4202085))))

(declare-fun lt!2488248 () (Set Context!12452))

(assert (=> start!671960 (= res!2851245 (matchZipper!2770 lt!2488248 s!7408))))

(declare-fun appendTo!351 ((Set Context!12452) Context!12452) (Set Context!12452))

(assert (=> start!671960 (= lt!2488248 (appendTo!351 z1!570 ct2!306))))

(assert (=> start!671960 e!4202085))

(declare-fun condSetEmpty!47862 () Bool)

(assert (=> start!671960 (= condSetEmpty!47862 (= z1!570 (as set.empty (Set Context!12452))))))

(assert (=> start!671960 setRes!47862))

(declare-fun e!4202082 () Bool)

(declare-fun inv!85935 (Context!12452) Bool)

(assert (=> start!671960 (and (inv!85935 ct2!306) e!4202082)))

(assert (=> start!671960 e!4202081))

(declare-fun b!6991136 () Bool)

(declare-fun res!2851258 () Bool)

(assert (=> b!6991136 (=> res!2851258 e!4202088)))

(assert (=> b!6991136 (= res!2851258 (not (set.member lt!2488240 lt!2488248)))))

(declare-fun b!6991137 () Bool)

(declare-fun res!2851248 () Bool)

(assert (=> b!6991137 (=> (not res!2851248) (not e!4202085))))

(assert (=> b!6991137 (= res!2851248 (is-Cons!67112 s!7408))))

(declare-fun b!6991138 () Bool)

(assert (=> b!6991138 (= e!4202090 e!4202096)))

(declare-fun res!2851246 () Bool)

(assert (=> b!6991138 (=> res!2851246 e!4202096)))

(assert (=> b!6991138 (= res!2851246 e!4202093)))

(declare-fun res!2851244 () Bool)

(assert (=> b!6991138 (=> (not res!2851244) (not e!4202093))))

(declare-fun lt!2488266 () Bool)

(assert (=> b!6991138 (= res!2851244 (not (= lt!2488270 lt!2488266)))))

(assert (=> b!6991138 (= lt!2488270 (matchZipper!2770 lt!2488264 (t!380983 s!7408)))))

(declare-fun lt!2488243 () Unit!161115)

(assert (=> b!6991138 (= lt!2488243 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(assert (=> b!6991138 (= (matchZipper!2770 lt!2488237 (t!380983 s!7408)) e!4202084)))

(declare-fun res!2851254 () Bool)

(assert (=> b!6991138 (=> res!2851254 e!4202084)))

(assert (=> b!6991138 (= res!2851254 lt!2488266)))

(assert (=> b!6991138 (= lt!2488266 (matchZipper!2770 lt!2488260 (t!380983 s!7408)))))

(declare-fun lt!2488274 () Unit!161115)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1403 ((Set Context!12452) (Set Context!12452) List!67236) Unit!161115)

(assert (=> b!6991138 (= lt!2488274 (lemmaZipperConcatMatchesSameAsBothZippers!1403 lt!2488260 lt!2488249 (t!380983 s!7408)))))

(declare-fun lt!2488239 () Unit!161115)

(assert (=> b!6991138 (= lt!2488239 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488268 () Unit!161115)

(assert (=> b!6991138 (= lt!2488268 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(assert (=> b!6991139 (= e!4202085 (not e!4202088))))

(declare-fun res!2851255 () Bool)

(assert (=> b!6991139 (=> res!2851255 e!4202088)))

(assert (=> b!6991139 (= res!2851255 (not (matchZipper!2770 lt!2488253 s!7408)))))

(assert (=> b!6991139 (= lt!2488253 (set.insert lt!2488240 (as set.empty (Set Context!12452))))))

(declare-fun lambda!402259 () Int)

(declare-fun getWitness!1132 ((Set Context!12452) Int) Context!12452)

(assert (=> b!6991139 (= lt!2488240 (getWitness!1132 lt!2488248 lambda!402259))))

(declare-datatypes ((List!67237 0))(
  ( (Nil!67113) (Cons!67113 (h!73561 Context!12452) (t!380984 List!67237)) )
))
(declare-fun lt!2488234 () List!67237)

(declare-fun exists!3021 (List!67237 Int) Bool)

(assert (=> b!6991139 (exists!3021 lt!2488234 lambda!402259)))

(declare-fun lt!2488238 () Unit!161115)

(declare-fun lemmaZipperMatchesExistsMatchingContext!199 (List!67237 List!67236) Unit!161115)

(assert (=> b!6991139 (= lt!2488238 (lemmaZipperMatchesExistsMatchingContext!199 lt!2488234 s!7408))))

(declare-fun toList!10590 ((Set Context!12452)) List!67237)

(assert (=> b!6991139 (= lt!2488234 (toList!10590 lt!2488248))))

(declare-fun tp!1929946 () Bool)

(declare-fun setNonEmpty!47862 () Bool)

(declare-fun setElem!47862 () Context!12452)

(assert (=> setNonEmpty!47862 (= setRes!47862 (and tp!1929946 (inv!85935 setElem!47862) e!4202087))))

(declare-fun setRest!47862 () (Set Context!12452))

(assert (=> setNonEmpty!47862 (= z1!570 (set.union (set.insert setElem!47862 (as set.empty (Set Context!12452))) setRest!47862))))

(declare-fun b!6991140 () Bool)

(assert (=> b!6991140 (= e!4202083 e!4202095)))

(declare-fun res!2851252 () Bool)

(assert (=> b!6991140 (=> res!2851252 e!4202095)))

(assert (=> b!6991140 (= res!2851252 (not (= (derivationStepZipper!2710 lt!2488263 (h!73560 s!7408)) lt!2488249)))))

(declare-fun lt!2488269 () Unit!161115)

(assert (=> b!6991140 (= lt!2488269 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488272 () Unit!161115)

(assert (=> b!6991140 (= lt!2488272 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(assert (=> b!6991140 (= (flatMap!2216 lt!2488263 lambda!402262) (derivationStepZipperUp!1880 lt!2488262 (h!73560 s!7408)))))

(declare-fun lt!2488256 () Unit!161115)

(assert (=> b!6991140 (= lt!2488256 (lemmaFlatMapOnSingletonSet!1731 lt!2488263 lt!2488262 lambda!402262))))

(assert (=> b!6991140 (= lt!2488263 (set.insert lt!2488262 (as set.empty (Set Context!12452))))))

(declare-fun lt!2488244 () Unit!161115)

(assert (=> b!6991140 (= lt!2488244 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun lt!2488236 () Unit!161115)

(assert (=> b!6991140 (= lt!2488236 (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(declare-fun b!6991141 () Bool)

(declare-fun tp!1929943 () Bool)

(assert (=> b!6991141 (= e!4202082 tp!1929943)))

(assert (= (and start!671960 res!2851245) b!6991137))

(assert (= (and b!6991137 res!2851248) b!6991139))

(assert (= (and b!6991139 (not res!2851255)) b!6991136))

(assert (= (and b!6991136 (not res!2851258)) b!6991131))

(assert (= (and b!6991131 (not res!2851251)) b!6991126))

(assert (= (and b!6991126 (not res!2851250)) b!6991129))

(assert (= (and b!6991129 (not res!2851243)) b!6991132))

(assert (= (and b!6991132 (not res!2851253)) b!6991122))

(assert (= (and b!6991122 (not res!2851257)) b!6991123))

(assert (= (and b!6991123 (not res!2851241)) b!6991134))

(assert (= (and b!6991134 (not res!2851256)) b!6991138))

(assert (= (and b!6991138 (not res!2851254)) b!6991125))

(assert (= (and b!6991138 res!2851244) b!6991121))

(assert (= (and b!6991138 (not res!2851246)) b!6991133))

(assert (= (and b!6991133 (not res!2851247)) b!6991130))

(assert (= (and b!6991130 (not res!2851242)) b!6991140))

(assert (= (and b!6991140 (not res!2851252)) b!6991124))

(assert (= (and b!6991124 (not res!2851249)) b!6991127))

(assert (= (and start!671960 condSetEmpty!47862) setIsEmpty!47862))

(assert (= (and start!671960 (not condSetEmpty!47862)) setNonEmpty!47862))

(assert (= setNonEmpty!47862 b!6991128))

(assert (= start!671960 b!6991141))

(assert (= (and start!671960 (is-Cons!67112 s!7408)) b!6991135))

(declare-fun m!7680312 () Bool)

(assert (=> b!6991129 m!7680312))

(declare-fun m!7680314 () Bool)

(assert (=> b!6991129 m!7680314))

(declare-fun m!7680316 () Bool)

(assert (=> b!6991129 m!7680316))

(declare-fun m!7680318 () Bool)

(assert (=> b!6991129 m!7680318))

(declare-fun m!7680320 () Bool)

(assert (=> b!6991129 m!7680320))

(declare-fun m!7680322 () Bool)

(assert (=> b!6991136 m!7680322))

(declare-fun m!7680324 () Bool)

(assert (=> b!6991131 m!7680324))

(declare-fun m!7680326 () Bool)

(assert (=> b!6991131 m!7680326))

(assert (=> b!6991131 m!7680312))

(declare-fun m!7680328 () Bool)

(assert (=> b!6991131 m!7680328))

(declare-fun m!7680330 () Bool)

(assert (=> b!6991122 m!7680330))

(declare-fun m!7680332 () Bool)

(assert (=> b!6991126 m!7680332))

(assert (=> b!6991126 m!7680312))

(declare-fun m!7680334 () Bool)

(assert (=> b!6991121 m!7680334))

(declare-fun m!7680336 () Bool)

(assert (=> b!6991121 m!7680336))

(assert (=> b!6991138 m!7680336))

(declare-fun m!7680338 () Bool)

(assert (=> b!6991138 m!7680338))

(assert (=> b!6991138 m!7680336))

(declare-fun m!7680340 () Bool)

(assert (=> b!6991138 m!7680340))

(declare-fun m!7680342 () Bool)

(assert (=> b!6991138 m!7680342))

(assert (=> b!6991138 m!7680336))

(declare-fun m!7680344 () Bool)

(assert (=> b!6991138 m!7680344))

(declare-fun m!7680346 () Bool)

(assert (=> setNonEmpty!47862 m!7680346))

(assert (=> b!6991140 m!7680336))

(assert (=> b!6991140 m!7680336))

(declare-fun m!7680348 () Bool)

(assert (=> b!6991140 m!7680348))

(declare-fun m!7680350 () Bool)

(assert (=> b!6991140 m!7680350))

(assert (=> b!6991140 m!7680336))

(declare-fun m!7680352 () Bool)

(assert (=> b!6991140 m!7680352))

(declare-fun m!7680354 () Bool)

(assert (=> b!6991140 m!7680354))

(declare-fun m!7680356 () Bool)

(assert (=> b!6991140 m!7680356))

(assert (=> b!6991140 m!7680336))

(assert (=> b!6991125 m!7680334))

(declare-fun m!7680358 () Bool)

(assert (=> b!6991123 m!7680358))

(declare-fun m!7680360 () Bool)

(assert (=> b!6991123 m!7680360))

(declare-fun m!7680362 () Bool)

(assert (=> start!671960 m!7680362))

(declare-fun m!7680364 () Bool)

(assert (=> start!671960 m!7680364))

(declare-fun m!7680366 () Bool)

(assert (=> start!671960 m!7680366))

(declare-fun m!7680368 () Bool)

(assert (=> b!6991139 m!7680368))

(declare-fun m!7680370 () Bool)

(assert (=> b!6991139 m!7680370))

(declare-fun m!7680372 () Bool)

(assert (=> b!6991139 m!7680372))

(declare-fun m!7680374 () Bool)

(assert (=> b!6991139 m!7680374))

(declare-fun m!7680376 () Bool)

(assert (=> b!6991139 m!7680376))

(declare-fun m!7680378 () Bool)

(assert (=> b!6991139 m!7680378))

(assert (=> b!6991130 m!7680334))

(assert (=> b!6991130 m!7680336))

(declare-fun m!7680380 () Bool)

(assert (=> b!6991134 m!7680380))

(assert (=> b!6991134 m!7680352))

(assert (=> b!6991134 m!7680336))

(declare-fun m!7680382 () Bool)

(assert (=> b!6991134 m!7680382))

(assert (=> b!6991134 m!7680336))

(declare-fun m!7680384 () Bool)

(assert (=> b!6991124 m!7680384))

(assert (=> b!6991124 m!7680336))

(declare-fun m!7680386 () Bool)

(assert (=> b!6991127 m!7680386))

(declare-fun m!7680388 () Bool)

(assert (=> b!6991127 m!7680388))

(declare-fun m!7680390 () Bool)

(assert (=> b!6991127 m!7680390))

(declare-fun m!7680392 () Bool)

(assert (=> b!6991127 m!7680392))

(assert (=> b!6991127 m!7680336))

(assert (=> b!6991127 m!7680336))

(declare-fun m!7680394 () Bool)

(assert (=> b!6991127 m!7680394))

(declare-fun m!7680396 () Bool)

(assert (=> b!6991127 m!7680396))

(assert (=> b!6991127 m!7680382))

(declare-fun m!7680398 () Bool)

(assert (=> b!6991127 m!7680398))

(declare-fun m!7680400 () Bool)

(assert (=> b!6991127 m!7680400))

(push 1)

(assert (not b!6991125))

(assert (not b!6991131))

(assert (not b!6991141))

(assert (not b!6991122))

(assert (not b!6991140))

(assert (not b!6991129))

(assert (not b!6991126))

(assert (not b!6991139))

(assert (not b!6991135))

(assert (not b!6991121))

(assert (not b!6991130))

(assert (not start!671960))

(assert (not b!6991127))

(assert (not b!6991124))

(assert (not setNonEmpty!47862))

(assert (not b!6991134))

(assert (not b!6991123))

(assert (not b!6991138))

(assert tp_is_empty!43685)

(assert (not b!6991128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177741 () Bool)

(declare-fun nullableFct!2642 (Regex!17230) Bool)

(assert (=> d!2177741 (= (nullable!6990 (h!73559 (exprs!6726 lt!2488252))) (nullableFct!2642 (h!73559 (exprs!6726 lt!2488252))))))

(declare-fun bs!1862377 () Bool)

(assert (= bs!1862377 d!2177741))

(declare-fun m!7680492 () Bool)

(assert (=> bs!1862377 m!7680492))

(assert (=> b!6991123 d!2177741))

(declare-fun d!2177743 () Bool)

(assert (=> d!2177743 (= (tail!13244 (exprs!6726 lt!2488252)) (t!380982 (exprs!6726 lt!2488252)))))

(assert (=> b!6991123 d!2177743))

(declare-fun d!2177745 () Bool)

(declare-fun c!1296789 () Bool)

(declare-fun isEmpty!39170 (List!67236) Bool)

(assert (=> d!2177745 (= c!1296789 (isEmpty!39170 s!7408))))

(declare-fun e!4202147 () Bool)

(assert (=> d!2177745 (= (matchZipper!2770 lt!2488263 s!7408) e!4202147)))

(declare-fun b!6991221 () Bool)

(declare-fun nullableZipper!2441 ((Set Context!12452)) Bool)

(assert (=> b!6991221 (= e!4202147 (nullableZipper!2441 lt!2488263))))

(declare-fun b!6991222 () Bool)

(declare-fun head!14116 (List!67236) C!34730)

(declare-fun tail!13246 (List!67236) List!67236)

(assert (=> b!6991222 (= e!4202147 (matchZipper!2770 (derivationStepZipper!2710 lt!2488263 (head!14116 s!7408)) (tail!13246 s!7408)))))

(assert (= (and d!2177745 c!1296789) b!6991221))

(assert (= (and d!2177745 (not c!1296789)) b!6991222))

(declare-fun m!7680494 () Bool)

(assert (=> d!2177745 m!7680494))

(declare-fun m!7680496 () Bool)

(assert (=> b!6991221 m!7680496))

(declare-fun m!7680498 () Bool)

(assert (=> b!6991222 m!7680498))

(assert (=> b!6991222 m!7680498))

(declare-fun m!7680500 () Bool)

(assert (=> b!6991222 m!7680500))

(declare-fun m!7680502 () Bool)

(assert (=> b!6991222 m!7680502))

(assert (=> b!6991222 m!7680500))

(assert (=> b!6991222 m!7680502))

(declare-fun m!7680504 () Bool)

(assert (=> b!6991222 m!7680504))

(assert (=> b!6991124 d!2177745))

(declare-fun d!2177747 () Bool)

(assert (=> d!2177747 (forall!16145 (++!15175 lt!2488246 (exprs!6726 ct2!306)) lambda!402261)))

(declare-fun lt!2488404 () Unit!161115)

(declare-fun choose!52287 (List!67235 List!67235 Int) Unit!161115)

(assert (=> d!2177747 (= lt!2488404 (choose!52287 lt!2488246 (exprs!6726 ct2!306) lambda!402261))))

(assert (=> d!2177747 (forall!16145 lt!2488246 lambda!402261)))

(assert (=> d!2177747 (= (lemmaConcatPreservesForall!566 lt!2488246 (exprs!6726 ct2!306) lambda!402261) lt!2488404)))

(declare-fun bs!1862378 () Bool)

(assert (= bs!1862378 d!2177747))

(assert (=> bs!1862378 m!7680382))

(assert (=> bs!1862378 m!7680382))

(declare-fun m!7680506 () Bool)

(assert (=> bs!1862378 m!7680506))

(declare-fun m!7680508 () Bool)

(assert (=> bs!1862378 m!7680508))

(assert (=> bs!1862378 m!7680386))

(assert (=> b!6991124 d!2177747))

(declare-fun bm!634675 () Bool)

(declare-fun call!634680 () (Set Context!12452))

(declare-fun call!634682 () (Set Context!12452))

(assert (=> bm!634675 (= call!634680 call!634682)))

(declare-fun b!6991245 () Bool)

(declare-fun e!4202162 () (Set Context!12452))

(declare-fun call!634683 () (Set Context!12452))

(assert (=> b!6991245 (= e!4202162 (set.union call!634683 call!634680))))

(declare-fun b!6991246 () Bool)

(declare-fun e!4202160 () (Set Context!12452))

(declare-fun call!634684 () (Set Context!12452))

(assert (=> b!6991246 (= e!4202160 call!634684)))

(declare-fun b!6991247 () Bool)

(declare-fun e!4202164 () (Set Context!12452))

(assert (=> b!6991247 (= e!4202164 (set.union call!634682 call!634683))))

(declare-fun c!1296800 () Bool)

(declare-fun c!1296802 () Bool)

(declare-fun call!634685 () List!67235)

(declare-fun bm!634676 () Bool)

(declare-fun $colon$colon!2488 (List!67235 Regex!17230) List!67235)

(assert (=> bm!634676 (= call!634685 ($colon$colon!2488 (exprs!6726 lt!2488262) (ite (or c!1296800 c!1296802) (regTwo!34972 (h!73559 (exprs!6726 lt!2488252))) (h!73559 (exprs!6726 lt!2488252)))))))

(declare-fun b!6991248 () Bool)

(declare-fun e!4202161 () Bool)

(assert (=> b!6991248 (= e!4202161 (nullable!6990 (regOne!34972 (h!73559 (exprs!6726 lt!2488252)))))))

(declare-fun b!6991249 () Bool)

(declare-fun c!1296801 () Bool)

(assert (=> b!6991249 (= c!1296801 (is-Star!17230 (h!73559 (exprs!6726 lt!2488252))))))

(declare-fun e!4202163 () (Set Context!12452))

(assert (=> b!6991249 (= e!4202160 e!4202163)))

(declare-fun bm!634677 () Bool)

(assert (=> bm!634677 (= call!634684 call!634680)))

(declare-fun d!2177749 () Bool)

(declare-fun c!1296804 () Bool)

(assert (=> d!2177749 (= c!1296804 (and (is-ElementMatch!17230 (h!73559 (exprs!6726 lt!2488252))) (= (c!1296771 (h!73559 (exprs!6726 lt!2488252))) (h!73560 s!7408))))))

(declare-fun e!4202165 () (Set Context!12452))

(assert (=> d!2177749 (= (derivationStepZipperDown!1948 (h!73559 (exprs!6726 lt!2488252)) lt!2488262 (h!73560 s!7408)) e!4202165)))

(declare-fun b!6991250 () Bool)

(assert (=> b!6991250 (= e!4202165 e!4202164)))

(declare-fun c!1296803 () Bool)

(assert (=> b!6991250 (= c!1296803 (is-Union!17230 (h!73559 (exprs!6726 lt!2488252))))))

(declare-fun bm!634678 () Bool)

(assert (=> bm!634678 (= call!634683 (derivationStepZipperDown!1948 (ite c!1296803 (regTwo!34973 (h!73559 (exprs!6726 lt!2488252))) (regOne!34972 (h!73559 (exprs!6726 lt!2488252)))) (ite c!1296803 lt!2488262 (Context!12453 call!634685)) (h!73560 s!7408)))))

(declare-fun b!6991251 () Bool)

(assert (=> b!6991251 (= e!4202163 (as set.empty (Set Context!12452)))))

(declare-fun call!634681 () List!67235)

(declare-fun bm!634679 () Bool)

(assert (=> bm!634679 (= call!634682 (derivationStepZipperDown!1948 (ite c!1296803 (regOne!34973 (h!73559 (exprs!6726 lt!2488252))) (ite c!1296800 (regTwo!34972 (h!73559 (exprs!6726 lt!2488252))) (ite c!1296802 (regOne!34972 (h!73559 (exprs!6726 lt!2488252))) (reg!17559 (h!73559 (exprs!6726 lt!2488252)))))) (ite (or c!1296803 c!1296800) lt!2488262 (Context!12453 call!634681)) (h!73560 s!7408)))))

(declare-fun b!6991252 () Bool)

(assert (=> b!6991252 (= e!4202163 call!634684)))

(declare-fun b!6991253 () Bool)

(assert (=> b!6991253 (= e!4202165 (set.insert lt!2488262 (as set.empty (Set Context!12452))))))

(declare-fun b!6991254 () Bool)

(assert (=> b!6991254 (= e!4202162 e!4202160)))

(assert (=> b!6991254 (= c!1296802 (is-Concat!26075 (h!73559 (exprs!6726 lt!2488252))))))

(declare-fun bm!634680 () Bool)

(assert (=> bm!634680 (= call!634681 call!634685)))

(declare-fun b!6991255 () Bool)

(assert (=> b!6991255 (= c!1296800 e!4202161)))

(declare-fun res!2851317 () Bool)

(assert (=> b!6991255 (=> (not res!2851317) (not e!4202161))))

(assert (=> b!6991255 (= res!2851317 (is-Concat!26075 (h!73559 (exprs!6726 lt!2488252))))))

(assert (=> b!6991255 (= e!4202164 e!4202162)))

(assert (= (and d!2177749 c!1296804) b!6991253))

(assert (= (and d!2177749 (not c!1296804)) b!6991250))

(assert (= (and b!6991250 c!1296803) b!6991247))

(assert (= (and b!6991250 (not c!1296803)) b!6991255))

(assert (= (and b!6991255 res!2851317) b!6991248))

(assert (= (and b!6991255 c!1296800) b!6991245))

(assert (= (and b!6991255 (not c!1296800)) b!6991254))

(assert (= (and b!6991254 c!1296802) b!6991246))

(assert (= (and b!6991254 (not c!1296802)) b!6991249))

(assert (= (and b!6991249 c!1296801) b!6991252))

(assert (= (and b!6991249 (not c!1296801)) b!6991251))

(assert (= (or b!6991246 b!6991252) bm!634680))

(assert (= (or b!6991246 b!6991252) bm!634677))

(assert (= (or b!6991245 bm!634677) bm!634675))

(assert (= (or b!6991245 bm!634680) bm!634676))

(assert (= (or b!6991247 bm!634675) bm!634679))

(assert (= (or b!6991247 b!6991245) bm!634678))

(declare-fun m!7680510 () Bool)

(assert (=> bm!634678 m!7680510))

(declare-fun m!7680512 () Bool)

(assert (=> bm!634676 m!7680512))

(assert (=> b!6991253 m!7680350))

(declare-fun m!7680514 () Bool)

(assert (=> bm!634679 m!7680514))

(declare-fun m!7680516 () Bool)

(assert (=> b!6991248 m!7680516))

(assert (=> b!6991134 d!2177749))

(declare-fun bm!634683 () Bool)

(declare-fun call!634688 () (Set Context!12452))

(assert (=> bm!634683 (= call!634688 (derivationStepZipperDown!1948 (h!73559 (exprs!6726 lt!2488262)) (Context!12453 (t!380982 (exprs!6726 lt!2488262))) (h!73560 s!7408)))))

(declare-fun b!6991266 () Bool)

(declare-fun e!4202173 () (Set Context!12452))

(declare-fun e!4202172 () (Set Context!12452))

(assert (=> b!6991266 (= e!4202173 e!4202172)))

(declare-fun c!1296810 () Bool)

(assert (=> b!6991266 (= c!1296810 (is-Cons!67111 (exprs!6726 lt!2488262)))))

(declare-fun b!6991267 () Bool)

(declare-fun e!4202174 () Bool)

(assert (=> b!6991267 (= e!4202174 (nullable!6990 (h!73559 (exprs!6726 lt!2488262))))))

(declare-fun b!6991268 () Bool)

(assert (=> b!6991268 (= e!4202172 call!634688)))

(declare-fun d!2177751 () Bool)

(declare-fun c!1296809 () Bool)

(assert (=> d!2177751 (= c!1296809 e!4202174)))

(declare-fun res!2851320 () Bool)

(assert (=> d!2177751 (=> (not res!2851320) (not e!4202174))))

(assert (=> d!2177751 (= res!2851320 (is-Cons!67111 (exprs!6726 lt!2488262)))))

(assert (=> d!2177751 (= (derivationStepZipperUp!1880 lt!2488262 (h!73560 s!7408)) e!4202173)))

(declare-fun b!6991269 () Bool)

(assert (=> b!6991269 (= e!4202173 (set.union call!634688 (derivationStepZipperUp!1880 (Context!12453 (t!380982 (exprs!6726 lt!2488262))) (h!73560 s!7408))))))

(declare-fun b!6991270 () Bool)

(assert (=> b!6991270 (= e!4202172 (as set.empty (Set Context!12452)))))

(assert (= (and d!2177751 res!2851320) b!6991267))

(assert (= (and d!2177751 c!1296809) b!6991269))

(assert (= (and d!2177751 (not c!1296809)) b!6991266))

(assert (= (and b!6991266 c!1296810) b!6991268))

(assert (= (and b!6991266 (not c!1296810)) b!6991270))

(assert (= (or b!6991269 b!6991268) bm!634683))

(declare-fun m!7680518 () Bool)

(assert (=> bm!634683 m!7680518))

(declare-fun m!7680520 () Bool)

(assert (=> b!6991267 m!7680520))

(declare-fun m!7680522 () Bool)

(assert (=> b!6991269 m!7680522))

(assert (=> b!6991134 d!2177751))

(assert (=> b!6991134 d!2177747))

(declare-fun d!2177753 () Bool)

(declare-fun e!4202180 () Bool)

(assert (=> d!2177753 e!4202180))

(declare-fun res!2851325 () Bool)

(assert (=> d!2177753 (=> (not res!2851325) (not e!4202180))))

(declare-fun lt!2488407 () List!67235)

(declare-fun content!13266 (List!67235) (Set Regex!17230))

(assert (=> d!2177753 (= res!2851325 (= (content!13266 lt!2488407) (set.union (content!13266 lt!2488246) (content!13266 (exprs!6726 ct2!306)))))))

(declare-fun e!4202179 () List!67235)

(assert (=> d!2177753 (= lt!2488407 e!4202179)))

(declare-fun c!1296813 () Bool)

(assert (=> d!2177753 (= c!1296813 (is-Nil!67111 lt!2488246))))

(assert (=> d!2177753 (= (++!15175 lt!2488246 (exprs!6726 ct2!306)) lt!2488407)))

(declare-fun b!6991281 () Bool)

(declare-fun res!2851326 () Bool)

(assert (=> b!6991281 (=> (not res!2851326) (not e!4202180))))

(declare-fun size!40909 (List!67235) Int)

(assert (=> b!6991281 (= res!2851326 (= (size!40909 lt!2488407) (+ (size!40909 lt!2488246) (size!40909 (exprs!6726 ct2!306)))))))

(declare-fun b!6991280 () Bool)

(assert (=> b!6991280 (= e!4202179 (Cons!67111 (h!73559 lt!2488246) (++!15175 (t!380982 lt!2488246) (exprs!6726 ct2!306))))))

(declare-fun b!6991282 () Bool)

(assert (=> b!6991282 (= e!4202180 (or (not (= (exprs!6726 ct2!306) Nil!67111)) (= lt!2488407 lt!2488246)))))

(declare-fun b!6991279 () Bool)

(assert (=> b!6991279 (= e!4202179 (exprs!6726 ct2!306))))

(assert (= (and d!2177753 c!1296813) b!6991279))

(assert (= (and d!2177753 (not c!1296813)) b!6991280))

(assert (= (and d!2177753 res!2851325) b!6991281))

(assert (= (and b!6991281 res!2851326) b!6991282))

(declare-fun m!7680524 () Bool)

(assert (=> d!2177753 m!7680524))

(declare-fun m!7680526 () Bool)

(assert (=> d!2177753 m!7680526))

(declare-fun m!7680528 () Bool)

(assert (=> d!2177753 m!7680528))

(declare-fun m!7680530 () Bool)

(assert (=> b!6991281 m!7680530))

(declare-fun m!7680532 () Bool)

(assert (=> b!6991281 m!7680532))

(declare-fun m!7680534 () Bool)

(assert (=> b!6991281 m!7680534))

(declare-fun m!7680536 () Bool)

(assert (=> b!6991280 m!7680536))

(assert (=> b!6991134 d!2177753))

(declare-fun d!2177755 () Bool)

(declare-fun c!1296814 () Bool)

(assert (=> d!2177755 (= c!1296814 (isEmpty!39170 (t!380983 s!7408)))))

(declare-fun e!4202181 () Bool)

(assert (=> d!2177755 (= (matchZipper!2770 lt!2488249 (t!380983 s!7408)) e!4202181)))

(declare-fun b!6991283 () Bool)

(assert (=> b!6991283 (= e!4202181 (nullableZipper!2441 lt!2488249))))

(declare-fun b!6991284 () Bool)

(assert (=> b!6991284 (= e!4202181 (matchZipper!2770 (derivationStepZipper!2710 lt!2488249 (head!14116 (t!380983 s!7408))) (tail!13246 (t!380983 s!7408))))))

(assert (= (and d!2177755 c!1296814) b!6991283))

(assert (= (and d!2177755 (not c!1296814)) b!6991284))

(declare-fun m!7680538 () Bool)

(assert (=> d!2177755 m!7680538))

(declare-fun m!7680540 () Bool)

(assert (=> b!6991283 m!7680540))

(declare-fun m!7680542 () Bool)

(assert (=> b!6991284 m!7680542))

(assert (=> b!6991284 m!7680542))

(declare-fun m!7680544 () Bool)

(assert (=> b!6991284 m!7680544))

(declare-fun m!7680546 () Bool)

(assert (=> b!6991284 m!7680546))

(assert (=> b!6991284 m!7680544))

(assert (=> b!6991284 m!7680546))

(declare-fun m!7680548 () Bool)

(assert (=> b!6991284 m!7680548))

(assert (=> b!6991125 d!2177755))

(declare-fun bs!1862379 () Bool)

(declare-fun d!2177757 () Bool)

(assert (= bs!1862379 (and d!2177757 b!6991129)))

(declare-fun lambda!402323 () Int)

(assert (=> bs!1862379 (= lambda!402323 lambda!402262)))

(assert (=> d!2177757 true))

(assert (=> d!2177757 (= (derivationStepZipper!2710 lt!2488263 (h!73560 s!7408)) (flatMap!2216 lt!2488263 lambda!402323))))

(declare-fun bs!1862380 () Bool)

(assert (= bs!1862380 d!2177757))

(declare-fun m!7680550 () Bool)

(assert (=> bs!1862380 m!7680550))

(assert (=> b!6991140 d!2177757))

(declare-fun d!2177759 () Bool)

(declare-fun choose!52288 ((Set Context!12452) Int) (Set Context!12452))

(assert (=> d!2177759 (= (flatMap!2216 lt!2488263 lambda!402262) (choose!52288 lt!2488263 lambda!402262))))

(declare-fun bs!1862381 () Bool)

(assert (= bs!1862381 d!2177759))

(declare-fun m!7680552 () Bool)

(assert (=> bs!1862381 m!7680552))

(assert (=> b!6991140 d!2177759))

(assert (=> b!6991140 d!2177751))

(assert (=> b!6991140 d!2177747))

(declare-fun d!2177761 () Bool)

(declare-fun dynLambda!26920 (Int Context!12452) (Set Context!12452))

(assert (=> d!2177761 (= (flatMap!2216 lt!2488263 lambda!402262) (dynLambda!26920 lambda!402262 lt!2488262))))

(declare-fun lt!2488410 () Unit!161115)

(declare-fun choose!52289 ((Set Context!12452) Context!12452 Int) Unit!161115)

(assert (=> d!2177761 (= lt!2488410 (choose!52289 lt!2488263 lt!2488262 lambda!402262))))

(assert (=> d!2177761 (= lt!2488263 (set.insert lt!2488262 (as set.empty (Set Context!12452))))))

(assert (=> d!2177761 (= (lemmaFlatMapOnSingletonSet!1731 lt!2488263 lt!2488262 lambda!402262) lt!2488410)))

(declare-fun b_lambda!262715 () Bool)

(assert (=> (not b_lambda!262715) (not d!2177761)))

(declare-fun bs!1862382 () Bool)

(assert (= bs!1862382 d!2177761))

(assert (=> bs!1862382 m!7680348))

(declare-fun m!7680554 () Bool)

(assert (=> bs!1862382 m!7680554))

(declare-fun m!7680556 () Bool)

(assert (=> bs!1862382 m!7680556))

(assert (=> bs!1862382 m!7680350))

(assert (=> b!6991140 d!2177761))

(assert (=> b!6991121 d!2177755))

(assert (=> b!6991121 d!2177747))

(declare-fun d!2177763 () Bool)

(declare-fun e!4202183 () Bool)

(assert (=> d!2177763 e!4202183))

(declare-fun res!2851327 () Bool)

(assert (=> d!2177763 (=> (not res!2851327) (not e!4202183))))

(declare-fun lt!2488411 () List!67235)

(assert (=> d!2177763 (= res!2851327 (= (content!13266 lt!2488411) (set.union (content!13266 (exprs!6726 lt!2488252)) (content!13266 (exprs!6726 ct2!306)))))))

(declare-fun e!4202182 () List!67235)

(assert (=> d!2177763 (= lt!2488411 e!4202182)))

(declare-fun c!1296817 () Bool)

(assert (=> d!2177763 (= c!1296817 (is-Nil!67111 (exprs!6726 lt!2488252)))))

(assert (=> d!2177763 (= (++!15175 (exprs!6726 lt!2488252) (exprs!6726 ct2!306)) lt!2488411)))

(declare-fun b!6991289 () Bool)

(declare-fun res!2851328 () Bool)

(assert (=> b!6991289 (=> (not res!2851328) (not e!4202183))))

(assert (=> b!6991289 (= res!2851328 (= (size!40909 lt!2488411) (+ (size!40909 (exprs!6726 lt!2488252)) (size!40909 (exprs!6726 ct2!306)))))))

(declare-fun b!6991288 () Bool)

(assert (=> b!6991288 (= e!4202182 (Cons!67111 (h!73559 (exprs!6726 lt!2488252)) (++!15175 (t!380982 (exprs!6726 lt!2488252)) (exprs!6726 ct2!306))))))

(declare-fun b!6991290 () Bool)

(assert (=> b!6991290 (= e!4202183 (or (not (= (exprs!6726 ct2!306) Nil!67111)) (= lt!2488411 (exprs!6726 lt!2488252))))))

(declare-fun b!6991287 () Bool)

(assert (=> b!6991287 (= e!4202182 (exprs!6726 ct2!306))))

(assert (= (and d!2177763 c!1296817) b!6991287))

(assert (= (and d!2177763 (not c!1296817)) b!6991288))

(assert (= (and d!2177763 res!2851327) b!6991289))

(assert (= (and b!6991289 res!2851328) b!6991290))

(declare-fun m!7680558 () Bool)

(assert (=> d!2177763 m!7680558))

(declare-fun m!7680560 () Bool)

(assert (=> d!2177763 m!7680560))

(assert (=> d!2177763 m!7680528))

(declare-fun m!7680562 () Bool)

(assert (=> b!6991289 m!7680562))

(declare-fun m!7680564 () Bool)

(assert (=> b!6991289 m!7680564))

(assert (=> b!6991289 m!7680534))

(declare-fun m!7680566 () Bool)

(assert (=> b!6991288 m!7680566))

(assert (=> b!6991131 d!2177763))

(declare-fun d!2177765 () Bool)

(assert (=> d!2177765 (forall!16145 (++!15175 (exprs!6726 lt!2488252) (exprs!6726 ct2!306)) lambda!402261)))

(declare-fun lt!2488412 () Unit!161115)

(assert (=> d!2177765 (= lt!2488412 (choose!52287 (exprs!6726 lt!2488252) (exprs!6726 ct2!306) lambda!402261))))

(assert (=> d!2177765 (forall!16145 (exprs!6726 lt!2488252) lambda!402261)))

(assert (=> d!2177765 (= (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488252) (exprs!6726 ct2!306) lambda!402261) lt!2488412)))

(declare-fun bs!1862383 () Bool)

(assert (= bs!1862383 d!2177765))

(assert (=> bs!1862383 m!7680326))

(assert (=> bs!1862383 m!7680326))

(declare-fun m!7680568 () Bool)

(assert (=> bs!1862383 m!7680568))

(declare-fun m!7680570 () Bool)

(assert (=> bs!1862383 m!7680570))

(declare-fun m!7680572 () Bool)

(assert (=> bs!1862383 m!7680572))

(assert (=> b!6991131 d!2177765))

(declare-fun d!2177767 () Bool)

(declare-fun e!4202186 () Bool)

(assert (=> d!2177767 e!4202186))

(declare-fun res!2851331 () Bool)

(assert (=> d!2177767 (=> (not res!2851331) (not e!4202186))))

(declare-fun lt!2488415 () Context!12452)

(declare-fun dynLambda!26921 (Int Context!12452) Context!12452)

(assert (=> d!2177767 (= res!2851331 (= lt!2488240 (dynLambda!26921 lambda!402260 lt!2488415)))))

(declare-fun choose!52290 ((Set Context!12452) Int Context!12452) Context!12452)

(assert (=> d!2177767 (= lt!2488415 (choose!52290 z1!570 lambda!402260 lt!2488240))))

(assert (=> d!2177767 (set.member lt!2488240 (map!15492 z1!570 lambda!402260))))

(assert (=> d!2177767 (= (mapPost2!85 z1!570 lambda!402260 lt!2488240) lt!2488415)))

(declare-fun b!6991294 () Bool)

(assert (=> b!6991294 (= e!4202186 (set.member lt!2488415 z1!570))))

(assert (= (and d!2177767 res!2851331) b!6991294))

(declare-fun b_lambda!262717 () Bool)

(assert (=> (not b_lambda!262717) (not d!2177767)))

(declare-fun m!7680574 () Bool)

(assert (=> d!2177767 m!7680574))

(declare-fun m!7680576 () Bool)

(assert (=> d!2177767 m!7680576))

(declare-fun m!7680578 () Bool)

(assert (=> d!2177767 m!7680578))

(declare-fun m!7680580 () Bool)

(assert (=> d!2177767 m!7680580))

(declare-fun m!7680582 () Bool)

(assert (=> b!6991294 m!7680582))

(assert (=> b!6991131 d!2177767))

(declare-fun d!2177769 () Bool)

(assert (=> d!2177769 (= (isEmpty!39168 (exprs!6726 lt!2488252)) (is-Nil!67111 (exprs!6726 lt!2488252)))))

(assert (=> b!6991122 d!2177769))

(declare-fun d!2177771 () Bool)

(declare-fun c!1296818 () Bool)

(assert (=> d!2177771 (= c!1296818 (isEmpty!39170 s!7408))))

(declare-fun e!4202187 () Bool)

(assert (=> d!2177771 (= (matchZipper!2770 lt!2488248 s!7408) e!4202187)))

(declare-fun b!6991295 () Bool)

(assert (=> b!6991295 (= e!4202187 (nullableZipper!2441 lt!2488248))))

(declare-fun b!6991296 () Bool)

(assert (=> b!6991296 (= e!4202187 (matchZipper!2770 (derivationStepZipper!2710 lt!2488248 (head!14116 s!7408)) (tail!13246 s!7408)))))

(assert (= (and d!2177771 c!1296818) b!6991295))

(assert (= (and d!2177771 (not c!1296818)) b!6991296))

(assert (=> d!2177771 m!7680494))

(declare-fun m!7680584 () Bool)

(assert (=> b!6991295 m!7680584))

(assert (=> b!6991296 m!7680498))

(assert (=> b!6991296 m!7680498))

(declare-fun m!7680586 () Bool)

(assert (=> b!6991296 m!7680586))

(assert (=> b!6991296 m!7680502))

(assert (=> b!6991296 m!7680586))

(assert (=> b!6991296 m!7680502))

(declare-fun m!7680588 () Bool)

(assert (=> b!6991296 m!7680588))

(assert (=> start!671960 d!2177771))

(declare-fun bs!1862384 () Bool)

(declare-fun d!2177773 () Bool)

(assert (= bs!1862384 (and d!2177773 b!6991131)))

(declare-fun lambda!402328 () Int)

(assert (=> bs!1862384 (= lambda!402328 lambda!402260)))

(assert (=> d!2177773 true))

(assert (=> d!2177773 (= (appendTo!351 z1!570 ct2!306) (map!15492 z1!570 lambda!402328))))

(declare-fun bs!1862385 () Bool)

(assert (= bs!1862385 d!2177773))

(declare-fun m!7680590 () Bool)

(assert (=> bs!1862385 m!7680590))

(assert (=> start!671960 d!2177773))

(declare-fun bs!1862386 () Bool)

(declare-fun d!2177775 () Bool)

(assert (= bs!1862386 (and d!2177775 b!6991131)))

(declare-fun lambda!402331 () Int)

(assert (=> bs!1862386 (= lambda!402331 lambda!402261)))

(assert (=> d!2177775 (= (inv!85935 ct2!306) (forall!16145 (exprs!6726 ct2!306) lambda!402331))))

(declare-fun bs!1862387 () Bool)

(assert (= bs!1862387 d!2177775))

(declare-fun m!7680592 () Bool)

(assert (=> bs!1862387 m!7680592))

(assert (=> start!671960 d!2177775))

(declare-fun d!2177777 () Bool)

(declare-fun c!1296820 () Bool)

(assert (=> d!2177777 (= c!1296820 (isEmpty!39170 (t!380983 s!7408)))))

(declare-fun e!4202188 () Bool)

(assert (=> d!2177777 (= (matchZipper!2770 lt!2488264 (t!380983 s!7408)) e!4202188)))

(declare-fun b!6991297 () Bool)

(assert (=> b!6991297 (= e!4202188 (nullableZipper!2441 lt!2488264))))

(declare-fun b!6991298 () Bool)

(assert (=> b!6991298 (= e!4202188 (matchZipper!2770 (derivationStepZipper!2710 lt!2488264 (head!14116 (t!380983 s!7408))) (tail!13246 (t!380983 s!7408))))))

(assert (= (and d!2177777 c!1296820) b!6991297))

(assert (= (and d!2177777 (not c!1296820)) b!6991298))

(assert (=> d!2177777 m!7680538))

(declare-fun m!7680594 () Bool)

(assert (=> b!6991297 m!7680594))

(assert (=> b!6991298 m!7680542))

(assert (=> b!6991298 m!7680542))

(declare-fun m!7680596 () Bool)

(assert (=> b!6991298 m!7680596))

(assert (=> b!6991298 m!7680546))

(assert (=> b!6991298 m!7680596))

(assert (=> b!6991298 m!7680546))

(declare-fun m!7680598 () Bool)

(assert (=> b!6991298 m!7680598))

(assert (=> b!6991138 d!2177777))

(declare-fun d!2177779 () Bool)

(declare-fun e!4202191 () Bool)

(assert (=> d!2177779 (= (matchZipper!2770 (set.union lt!2488260 lt!2488249) (t!380983 s!7408)) e!4202191)))

(declare-fun res!2851334 () Bool)

(assert (=> d!2177779 (=> res!2851334 e!4202191)))

(assert (=> d!2177779 (= res!2851334 (matchZipper!2770 lt!2488260 (t!380983 s!7408)))))

(declare-fun lt!2488420 () Unit!161115)

(declare-fun choose!52291 ((Set Context!12452) (Set Context!12452) List!67236) Unit!161115)

(assert (=> d!2177779 (= lt!2488420 (choose!52291 lt!2488260 lt!2488249 (t!380983 s!7408)))))

(assert (=> d!2177779 (= (lemmaZipperConcatMatchesSameAsBothZippers!1403 lt!2488260 lt!2488249 (t!380983 s!7408)) lt!2488420)))

(declare-fun b!6991301 () Bool)

(assert (=> b!6991301 (= e!4202191 (matchZipper!2770 lt!2488249 (t!380983 s!7408)))))

(assert (= (and d!2177779 (not res!2851334)) b!6991301))

(declare-fun m!7680600 () Bool)

(assert (=> d!2177779 m!7680600))

(assert (=> d!2177779 m!7680338))

(declare-fun m!7680602 () Bool)

(assert (=> d!2177779 m!7680602))

(assert (=> b!6991301 m!7680334))

(assert (=> b!6991138 d!2177779))

(assert (=> b!6991138 d!2177747))

(declare-fun d!2177781 () Bool)

(declare-fun c!1296821 () Bool)

(assert (=> d!2177781 (= c!1296821 (isEmpty!39170 (t!380983 s!7408)))))

(declare-fun e!4202192 () Bool)

(assert (=> d!2177781 (= (matchZipper!2770 lt!2488260 (t!380983 s!7408)) e!4202192)))

(declare-fun b!6991302 () Bool)

(assert (=> b!6991302 (= e!4202192 (nullableZipper!2441 lt!2488260))))

(declare-fun b!6991303 () Bool)

(assert (=> b!6991303 (= e!4202192 (matchZipper!2770 (derivationStepZipper!2710 lt!2488260 (head!14116 (t!380983 s!7408))) (tail!13246 (t!380983 s!7408))))))

(assert (= (and d!2177781 c!1296821) b!6991302))

(assert (= (and d!2177781 (not c!1296821)) b!6991303))

(assert (=> d!2177781 m!7680538))

(declare-fun m!7680604 () Bool)

(assert (=> b!6991302 m!7680604))

(assert (=> b!6991303 m!7680542))

(assert (=> b!6991303 m!7680542))

(declare-fun m!7680606 () Bool)

(assert (=> b!6991303 m!7680606))

(assert (=> b!6991303 m!7680546))

(assert (=> b!6991303 m!7680606))

(assert (=> b!6991303 m!7680546))

(declare-fun m!7680608 () Bool)

(assert (=> b!6991303 m!7680608))

(assert (=> b!6991138 d!2177781))

(declare-fun d!2177783 () Bool)

(declare-fun c!1296822 () Bool)

(assert (=> d!2177783 (= c!1296822 (isEmpty!39170 (t!380983 s!7408)))))

(declare-fun e!4202193 () Bool)

(assert (=> d!2177783 (= (matchZipper!2770 lt!2488237 (t!380983 s!7408)) e!4202193)))

(declare-fun b!6991304 () Bool)

(assert (=> b!6991304 (= e!4202193 (nullableZipper!2441 lt!2488237))))

(declare-fun b!6991305 () Bool)

(assert (=> b!6991305 (= e!4202193 (matchZipper!2770 (derivationStepZipper!2710 lt!2488237 (head!14116 (t!380983 s!7408))) (tail!13246 (t!380983 s!7408))))))

(assert (= (and d!2177783 c!1296822) b!6991304))

(assert (= (and d!2177783 (not c!1296822)) b!6991305))

(assert (=> d!2177783 m!7680538))

(declare-fun m!7680610 () Bool)

(assert (=> b!6991304 m!7680610))

(assert (=> b!6991305 m!7680542))

(assert (=> b!6991305 m!7680542))

(declare-fun m!7680612 () Bool)

(assert (=> b!6991305 m!7680612))

(assert (=> b!6991305 m!7680546))

(assert (=> b!6991305 m!7680612))

(assert (=> b!6991305 m!7680546))

(declare-fun m!7680614 () Bool)

(assert (=> b!6991305 m!7680614))

(assert (=> b!6991138 d!2177783))

(declare-fun d!2177785 () Bool)

(assert (=> d!2177785 (= (flatMap!2216 lt!2488258 lambda!402262) (choose!52288 lt!2488258 lambda!402262))))

(declare-fun bs!1862388 () Bool)

(assert (= bs!1862388 d!2177785))

(declare-fun m!7680616 () Bool)

(assert (=> bs!1862388 m!7680616))

(assert (=> b!6991129 d!2177785))

(assert (=> b!6991129 d!2177765))

(declare-fun bs!1862389 () Bool)

(declare-fun d!2177787 () Bool)

(assert (= bs!1862389 (and d!2177787 b!6991129)))

(declare-fun lambda!402332 () Int)

(assert (=> bs!1862389 (= lambda!402332 lambda!402262)))

(declare-fun bs!1862390 () Bool)

(assert (= bs!1862390 (and d!2177787 d!2177757)))

(assert (=> bs!1862390 (= lambda!402332 lambda!402323)))

(assert (=> d!2177787 true))

(assert (=> d!2177787 (= (derivationStepZipper!2710 lt!2488258 (h!73560 s!7408)) (flatMap!2216 lt!2488258 lambda!402332))))

(declare-fun bs!1862391 () Bool)

(assert (= bs!1862391 d!2177787))

(declare-fun m!7680618 () Bool)

(assert (=> bs!1862391 m!7680618))

(assert (=> b!6991129 d!2177787))

(declare-fun d!2177789 () Bool)

(assert (=> d!2177789 (= (flatMap!2216 lt!2488258 lambda!402262) (dynLambda!26920 lambda!402262 lt!2488251))))

(declare-fun lt!2488421 () Unit!161115)

(assert (=> d!2177789 (= lt!2488421 (choose!52289 lt!2488258 lt!2488251 lambda!402262))))

(assert (=> d!2177789 (= lt!2488258 (set.insert lt!2488251 (as set.empty (Set Context!12452))))))

(assert (=> d!2177789 (= (lemmaFlatMapOnSingletonSet!1731 lt!2488258 lt!2488251 lambda!402262) lt!2488421)))

(declare-fun b_lambda!262719 () Bool)

(assert (=> (not b_lambda!262719) (not d!2177789)))

(declare-fun bs!1862392 () Bool)

(assert (= bs!1862392 d!2177789))

(assert (=> bs!1862392 m!7680314))

(declare-fun m!7680620 () Bool)

(assert (=> bs!1862392 m!7680620))

(declare-fun m!7680622 () Bool)

(assert (=> bs!1862392 m!7680622))

(assert (=> bs!1862392 m!7680332))

(assert (=> b!6991129 d!2177789))

(declare-fun bm!634684 () Bool)

(declare-fun call!634689 () (Set Context!12452))

(assert (=> bm!634684 (= call!634689 (derivationStepZipperDown!1948 (h!73559 (exprs!6726 lt!2488251)) (Context!12453 (t!380982 (exprs!6726 lt!2488251))) (h!73560 s!7408)))))

(declare-fun b!6991306 () Bool)

(declare-fun e!4202195 () (Set Context!12452))

(declare-fun e!4202194 () (Set Context!12452))

(assert (=> b!6991306 (= e!4202195 e!4202194)))

(declare-fun c!1296824 () Bool)

(assert (=> b!6991306 (= c!1296824 (is-Cons!67111 (exprs!6726 lt!2488251)))))

(declare-fun b!6991307 () Bool)

(declare-fun e!4202196 () Bool)

(assert (=> b!6991307 (= e!4202196 (nullable!6990 (h!73559 (exprs!6726 lt!2488251))))))

(declare-fun b!6991308 () Bool)

(assert (=> b!6991308 (= e!4202194 call!634689)))

(declare-fun d!2177791 () Bool)

(declare-fun c!1296823 () Bool)

(assert (=> d!2177791 (= c!1296823 e!4202196)))

(declare-fun res!2851335 () Bool)

(assert (=> d!2177791 (=> (not res!2851335) (not e!4202196))))

(assert (=> d!2177791 (= res!2851335 (is-Cons!67111 (exprs!6726 lt!2488251)))))

(assert (=> d!2177791 (= (derivationStepZipperUp!1880 lt!2488251 (h!73560 s!7408)) e!4202195)))

(declare-fun b!6991309 () Bool)

(assert (=> b!6991309 (= e!4202195 (set.union call!634689 (derivationStepZipperUp!1880 (Context!12453 (t!380982 (exprs!6726 lt!2488251))) (h!73560 s!7408))))))

(declare-fun b!6991310 () Bool)

(assert (=> b!6991310 (= e!4202194 (as set.empty (Set Context!12452)))))

(assert (= (and d!2177791 res!2851335) b!6991307))

(assert (= (and d!2177791 c!1296823) b!6991309))

(assert (= (and d!2177791 (not c!1296823)) b!6991306))

(assert (= (and b!6991306 c!1296824) b!6991308))

(assert (= (and b!6991306 (not c!1296824)) b!6991310))

(assert (= (or b!6991309 b!6991308) bm!634684))

(declare-fun m!7680624 () Bool)

(assert (=> bm!634684 m!7680624))

(declare-fun m!7680626 () Bool)

(assert (=> b!6991307 m!7680626))

(declare-fun m!7680628 () Bool)

(assert (=> b!6991309 m!7680628))

(assert (=> b!6991129 d!2177791))

(declare-fun d!2177793 () Bool)

(declare-fun e!4202199 () Bool)

(assert (=> d!2177793 e!4202199))

(declare-fun res!2851338 () Bool)

(assert (=> d!2177793 (=> (not res!2851338) (not e!4202199))))

(declare-fun lt!2488424 () List!67237)

(declare-fun noDuplicate!2526 (List!67237) Bool)

(assert (=> d!2177793 (= res!2851338 (noDuplicate!2526 lt!2488424))))

(declare-fun choose!52292 ((Set Context!12452)) List!67237)

(assert (=> d!2177793 (= lt!2488424 (choose!52292 lt!2488248))))

(assert (=> d!2177793 (= (toList!10590 lt!2488248) lt!2488424)))

(declare-fun b!6991313 () Bool)

(declare-fun content!13267 (List!67237) (Set Context!12452))

(assert (=> b!6991313 (= e!4202199 (= (content!13267 lt!2488424) lt!2488248))))

(assert (= (and d!2177793 res!2851338) b!6991313))

(declare-fun m!7680630 () Bool)

(assert (=> d!2177793 m!7680630))

(declare-fun m!7680632 () Bool)

(assert (=> d!2177793 m!7680632))

(declare-fun m!7680634 () Bool)

(assert (=> b!6991313 m!7680634))

(assert (=> b!6991139 d!2177793))

(declare-fun d!2177795 () Bool)

(declare-fun c!1296825 () Bool)

(assert (=> d!2177795 (= c!1296825 (isEmpty!39170 s!7408))))

(declare-fun e!4202200 () Bool)

(assert (=> d!2177795 (= (matchZipper!2770 lt!2488253 s!7408) e!4202200)))

(declare-fun b!6991314 () Bool)

(assert (=> b!6991314 (= e!4202200 (nullableZipper!2441 lt!2488253))))

(declare-fun b!6991315 () Bool)

(assert (=> b!6991315 (= e!4202200 (matchZipper!2770 (derivationStepZipper!2710 lt!2488253 (head!14116 s!7408)) (tail!13246 s!7408)))))

(assert (= (and d!2177795 c!1296825) b!6991314))

(assert (= (and d!2177795 (not c!1296825)) b!6991315))

(assert (=> d!2177795 m!7680494))

(declare-fun m!7680636 () Bool)

(assert (=> b!6991314 m!7680636))

(assert (=> b!6991315 m!7680498))

(assert (=> b!6991315 m!7680498))

(declare-fun m!7680638 () Bool)

(assert (=> b!6991315 m!7680638))

(assert (=> b!6991315 m!7680502))

(assert (=> b!6991315 m!7680638))

(assert (=> b!6991315 m!7680502))

(declare-fun m!7680640 () Bool)

(assert (=> b!6991315 m!7680640))

(assert (=> b!6991139 d!2177795))

(declare-fun d!2177797 () Bool)

(declare-fun e!4202203 () Bool)

(assert (=> d!2177797 e!4202203))

(declare-fun res!2851341 () Bool)

(assert (=> d!2177797 (=> (not res!2851341) (not e!4202203))))

(declare-fun lt!2488427 () Context!12452)

(declare-fun dynLambda!26922 (Int Context!12452) Bool)

(assert (=> d!2177797 (= res!2851341 (dynLambda!26922 lambda!402259 lt!2488427))))

(declare-fun getWitness!1134 (List!67237 Int) Context!12452)

(assert (=> d!2177797 (= lt!2488427 (getWitness!1134 (toList!10590 lt!2488248) lambda!402259))))

(declare-fun exists!3023 ((Set Context!12452) Int) Bool)

(assert (=> d!2177797 (exists!3023 lt!2488248 lambda!402259)))

(assert (=> d!2177797 (= (getWitness!1132 lt!2488248 lambda!402259) lt!2488427)))

(declare-fun b!6991318 () Bool)

(assert (=> b!6991318 (= e!4202203 (set.member lt!2488427 lt!2488248))))

(assert (= (and d!2177797 res!2851341) b!6991318))

(declare-fun b_lambda!262721 () Bool)

(assert (=> (not b_lambda!262721) (not d!2177797)))

(declare-fun m!7680642 () Bool)

(assert (=> d!2177797 m!7680642))

(assert (=> d!2177797 m!7680378))

(assert (=> d!2177797 m!7680378))

(declare-fun m!7680644 () Bool)

(assert (=> d!2177797 m!7680644))

(declare-fun m!7680646 () Bool)

(assert (=> d!2177797 m!7680646))

(declare-fun m!7680648 () Bool)

(assert (=> b!6991318 m!7680648))

(assert (=> b!6991139 d!2177797))

(declare-fun bs!1862393 () Bool)

(declare-fun d!2177799 () Bool)

(assert (= bs!1862393 (and d!2177799 b!6991139)))

(declare-fun lambda!402335 () Int)

(assert (=> bs!1862393 (= lambda!402335 lambda!402259)))

(assert (=> d!2177799 true))

(assert (=> d!2177799 (exists!3021 lt!2488234 lambda!402335)))

(declare-fun lt!2488430 () Unit!161115)

(declare-fun choose!52293 (List!67237 List!67236) Unit!161115)

(assert (=> d!2177799 (= lt!2488430 (choose!52293 lt!2488234 s!7408))))

(assert (=> d!2177799 (matchZipper!2770 (content!13267 lt!2488234) s!7408)))

(assert (=> d!2177799 (= (lemmaZipperMatchesExistsMatchingContext!199 lt!2488234 s!7408) lt!2488430)))

(declare-fun bs!1862394 () Bool)

(assert (= bs!1862394 d!2177799))

(declare-fun m!7680650 () Bool)

(assert (=> bs!1862394 m!7680650))

(declare-fun m!7680652 () Bool)

(assert (=> bs!1862394 m!7680652))

(declare-fun m!7680654 () Bool)

(assert (=> bs!1862394 m!7680654))

(assert (=> bs!1862394 m!7680654))

(declare-fun m!7680656 () Bool)

(assert (=> bs!1862394 m!7680656))

(assert (=> b!6991139 d!2177799))

(declare-fun bs!1862395 () Bool)

(declare-fun d!2177801 () Bool)

(assert (= bs!1862395 (and d!2177801 b!6991139)))

(declare-fun lambda!402338 () Int)

(assert (=> bs!1862395 (not (= lambda!402338 lambda!402259))))

(declare-fun bs!1862396 () Bool)

(assert (= bs!1862396 (and d!2177801 d!2177799)))

(assert (=> bs!1862396 (not (= lambda!402338 lambda!402335))))

(assert (=> d!2177801 true))

(declare-fun order!27933 () Int)

(declare-fun dynLambda!26923 (Int Int) Int)

(assert (=> d!2177801 (< (dynLambda!26923 order!27933 lambda!402259) (dynLambda!26923 order!27933 lambda!402338))))

(declare-fun forall!16147 (List!67237 Int) Bool)

(assert (=> d!2177801 (= (exists!3021 lt!2488234 lambda!402259) (not (forall!16147 lt!2488234 lambda!402338)))))

(declare-fun bs!1862397 () Bool)

(assert (= bs!1862397 d!2177801))

(declare-fun m!7680658 () Bool)

(assert (=> bs!1862397 m!7680658))

(assert (=> b!6991139 d!2177801))

(assert (=> b!6991130 d!2177755))

(assert (=> b!6991130 d!2177747))

(declare-fun bs!1862398 () Bool)

(declare-fun d!2177803 () Bool)

(assert (= bs!1862398 (and d!2177803 b!6991131)))

(declare-fun lambda!402339 () Int)

(assert (=> bs!1862398 (= lambda!402339 lambda!402261)))

(declare-fun bs!1862399 () Bool)

(assert (= bs!1862399 (and d!2177803 d!2177775)))

(assert (=> bs!1862399 (= lambda!402339 lambda!402331)))

(assert (=> d!2177803 (= (inv!85935 setElem!47862) (forall!16145 (exprs!6726 setElem!47862) lambda!402339))))

(declare-fun bs!1862400 () Bool)

(assert (= bs!1862400 d!2177803))

(declare-fun m!7680660 () Bool)

(assert (=> bs!1862400 m!7680660))

(assert (=> setNonEmpty!47862 d!2177803))

(assert (=> b!6991126 d!2177765))

(declare-fun d!2177805 () Bool)

(assert (=> d!2177805 (= (map!15492 lt!2488261 lambda!402260) (set.insert (dynLambda!26921 lambda!402260 lt!2488267) (as set.empty (Set Context!12452))))))

(declare-fun lt!2488433 () Unit!161115)

(declare-fun choose!52294 ((Set Context!12452) Context!12452 Int) Unit!161115)

(assert (=> d!2177805 (= lt!2488433 (choose!52294 lt!2488261 lt!2488267 lambda!402260))))

(assert (=> d!2177805 (= lt!2488261 (set.insert lt!2488267 (as set.empty (Set Context!12452))))))

(assert (=> d!2177805 (= (lemmaMapOnSingletonSet!295 lt!2488261 lt!2488267 lambda!402260) lt!2488433)))

(declare-fun b_lambda!262723 () Bool)

(assert (=> (not b_lambda!262723) (not d!2177805)))

(declare-fun bs!1862401 () Bool)

(assert (= bs!1862401 d!2177805))

(declare-fun m!7680662 () Bool)

(assert (=> bs!1862401 m!7680662))

(declare-fun m!7680664 () Bool)

(assert (=> bs!1862401 m!7680664))

(declare-fun m!7680666 () Bool)

(assert (=> bs!1862401 m!7680666))

(assert (=> bs!1862401 m!7680394))

(assert (=> bs!1862401 m!7680662))

(assert (=> bs!1862401 m!7680392))

(assert (=> b!6991127 d!2177805))

(declare-fun d!2177807 () Bool)

(declare-fun res!2851346 () Bool)

(declare-fun e!4202208 () Bool)

(assert (=> d!2177807 (=> res!2851346 e!4202208)))

(assert (=> d!2177807 (= res!2851346 (is-Nil!67111 lt!2488246))))

(assert (=> d!2177807 (= (forall!16145 lt!2488246 lambda!402261) e!4202208)))

(declare-fun b!6991325 () Bool)

(declare-fun e!4202209 () Bool)

(assert (=> b!6991325 (= e!4202208 e!4202209)))

(declare-fun res!2851347 () Bool)

(assert (=> b!6991325 (=> (not res!2851347) (not e!4202209))))

(declare-fun dynLambda!26924 (Int Regex!17230) Bool)

(assert (=> b!6991325 (= res!2851347 (dynLambda!26924 lambda!402261 (h!73559 lt!2488246)))))

(declare-fun b!6991326 () Bool)

(assert (=> b!6991326 (= e!4202209 (forall!16145 (t!380982 lt!2488246) lambda!402261))))

(assert (= (and d!2177807 (not res!2851346)) b!6991325))

(assert (= (and b!6991325 res!2851347) b!6991326))

(declare-fun b_lambda!262725 () Bool)

(assert (=> (not b_lambda!262725) (not b!6991325)))

(declare-fun m!7680668 () Bool)

(assert (=> b!6991325 m!7680668))

(declare-fun m!7680670 () Bool)

(assert (=> b!6991326 m!7680670))

(assert (=> b!6991127 d!2177807))

(assert (=> b!6991127 d!2177753))

(assert (=> b!6991127 d!2177747))

(declare-fun bm!634685 () Bool)

(declare-fun call!634690 () (Set Context!12452))

(assert (=> bm!634685 (= call!634690 (derivationStepZipperDown!1948 (h!73559 (exprs!6726 lt!2488267)) (Context!12453 (t!380982 (exprs!6726 lt!2488267))) (h!73560 s!7408)))))

(declare-fun b!6991327 () Bool)

(declare-fun e!4202211 () (Set Context!12452))

(declare-fun e!4202210 () (Set Context!12452))

(assert (=> b!6991327 (= e!4202211 e!4202210)))

(declare-fun c!1296829 () Bool)

(assert (=> b!6991327 (= c!1296829 (is-Cons!67111 (exprs!6726 lt!2488267)))))

(declare-fun b!6991328 () Bool)

(declare-fun e!4202212 () Bool)

(assert (=> b!6991328 (= e!4202212 (nullable!6990 (h!73559 (exprs!6726 lt!2488267))))))

(declare-fun b!6991329 () Bool)

(assert (=> b!6991329 (= e!4202210 call!634690)))

(declare-fun d!2177811 () Bool)

(declare-fun c!1296828 () Bool)

(assert (=> d!2177811 (= c!1296828 e!4202212)))

(declare-fun res!2851348 () Bool)

(assert (=> d!2177811 (=> (not res!2851348) (not e!4202212))))

(assert (=> d!2177811 (= res!2851348 (is-Cons!67111 (exprs!6726 lt!2488267)))))

(assert (=> d!2177811 (= (derivationStepZipperUp!1880 lt!2488267 (h!73560 s!7408)) e!4202211)))

(declare-fun b!6991330 () Bool)

(assert (=> b!6991330 (= e!4202211 (set.union call!634690 (derivationStepZipperUp!1880 (Context!12453 (t!380982 (exprs!6726 lt!2488267))) (h!73560 s!7408))))))

(declare-fun b!6991331 () Bool)

(assert (=> b!6991331 (= e!4202210 (as set.empty (Set Context!12452)))))

(assert (= (and d!2177811 res!2851348) b!6991328))

(assert (= (and d!2177811 c!1296828) b!6991330))

(assert (= (and d!2177811 (not c!1296828)) b!6991327))

(assert (= (and b!6991327 c!1296829) b!6991329))

(assert (= (and b!6991327 (not c!1296829)) b!6991331))

(assert (= (or b!6991330 b!6991329) bm!634685))

(declare-fun m!7680672 () Bool)

(assert (=> bm!634685 m!7680672))

(declare-fun m!7680674 () Bool)

(assert (=> b!6991328 m!7680674))

(declare-fun m!7680676 () Bool)

(assert (=> b!6991330 m!7680676))

(assert (=> b!6991127 d!2177811))

(declare-fun d!2177813 () Bool)

(assert (=> d!2177813 (= (flatMap!2216 lt!2488261 lambda!402262) (choose!52288 lt!2488261 lambda!402262))))

(declare-fun bs!1862402 () Bool)

(assert (= bs!1862402 d!2177813))

(declare-fun m!7680678 () Bool)

(assert (=> bs!1862402 m!7680678))

(assert (=> b!6991127 d!2177813))

(declare-fun d!2177815 () Bool)

(declare-fun choose!52295 ((Set Context!12452) Int) (Set Context!12452))

(assert (=> d!2177815 (= (map!15492 lt!2488261 lambda!402260) (choose!52295 lt!2488261 lambda!402260))))

(declare-fun bs!1862403 () Bool)

(assert (= bs!1862403 d!2177815))

(declare-fun m!7680680 () Bool)

(assert (=> bs!1862403 m!7680680))

(assert (=> b!6991127 d!2177815))

(declare-fun d!2177817 () Bool)

(assert (=> d!2177817 (= (flatMap!2216 lt!2488261 lambda!402262) (dynLambda!26920 lambda!402262 lt!2488267))))

(declare-fun lt!2488434 () Unit!161115)

(assert (=> d!2177817 (= lt!2488434 (choose!52289 lt!2488261 lt!2488267 lambda!402262))))

(assert (=> d!2177817 (= lt!2488261 (set.insert lt!2488267 (as set.empty (Set Context!12452))))))

(assert (=> d!2177817 (= (lemmaFlatMapOnSingletonSet!1731 lt!2488261 lt!2488267 lambda!402262) lt!2488434)))

(declare-fun b_lambda!262727 () Bool)

(assert (=> (not b_lambda!262727) (not d!2177817)))

(declare-fun bs!1862404 () Bool)

(assert (= bs!1862404 d!2177817))

(assert (=> bs!1862404 m!7680400))

(declare-fun m!7680682 () Bool)

(assert (=> bs!1862404 m!7680682))

(declare-fun m!7680684 () Bool)

(assert (=> bs!1862404 m!7680684))

(assert (=> bs!1862404 m!7680394))

(assert (=> b!6991127 d!2177817))

(declare-fun b!6991336 () Bool)

(declare-fun e!4202215 () Bool)

(declare-fun tp!1929963 () Bool)

(declare-fun tp!1929964 () Bool)

(assert (=> b!6991336 (= e!4202215 (and tp!1929963 tp!1929964))))

(assert (=> b!6991128 (= tp!1929944 e!4202215)))

(assert (= (and b!6991128 (is-Cons!67111 (exprs!6726 setElem!47862))) b!6991336))

(declare-fun condSetEmpty!47868 () Bool)

(assert (=> setNonEmpty!47862 (= condSetEmpty!47868 (= setRest!47862 (as set.empty (Set Context!12452))))))

(declare-fun setRes!47868 () Bool)

(assert (=> setNonEmpty!47862 (= tp!1929946 setRes!47868)))

(declare-fun setIsEmpty!47868 () Bool)

(assert (=> setIsEmpty!47868 setRes!47868))

(declare-fun e!4202218 () Bool)

(declare-fun tp!1929969 () Bool)

(declare-fun setElem!47868 () Context!12452)

(declare-fun setNonEmpty!47868 () Bool)

(assert (=> setNonEmpty!47868 (= setRes!47868 (and tp!1929969 (inv!85935 setElem!47868) e!4202218))))

(declare-fun setRest!47868 () (Set Context!12452))

(assert (=> setNonEmpty!47868 (= setRest!47862 (set.union (set.insert setElem!47868 (as set.empty (Set Context!12452))) setRest!47868))))

(declare-fun b!6991341 () Bool)

(declare-fun tp!1929970 () Bool)

(assert (=> b!6991341 (= e!4202218 tp!1929970)))

(assert (= (and setNonEmpty!47862 condSetEmpty!47868) setIsEmpty!47868))

(assert (= (and setNonEmpty!47862 (not condSetEmpty!47868)) setNonEmpty!47868))

(assert (= setNonEmpty!47868 b!6991341))

(declare-fun m!7680686 () Bool)

(assert (=> setNonEmpty!47868 m!7680686))

(declare-fun b!6991346 () Bool)

(declare-fun e!4202221 () Bool)

(declare-fun tp!1929973 () Bool)

(assert (=> b!6991346 (= e!4202221 (and tp_is_empty!43685 tp!1929973))))

(assert (=> b!6991135 (= tp!1929945 e!4202221)))

(assert (= (and b!6991135 (is-Cons!67112 (t!380983 s!7408))) b!6991346))

(declare-fun b!6991347 () Bool)

(declare-fun e!4202222 () Bool)

(declare-fun tp!1929974 () Bool)

(declare-fun tp!1929975 () Bool)

(assert (=> b!6991347 (= e!4202222 (and tp!1929974 tp!1929975))))

(assert (=> b!6991141 (= tp!1929943 e!4202222)))

(assert (= (and b!6991141 (is-Cons!67111 (exprs!6726 ct2!306))) b!6991347))

(declare-fun b_lambda!262729 () Bool)

(assert (= b_lambda!262717 (or b!6991131 b_lambda!262729)))

(declare-fun bs!1862405 () Bool)

(declare-fun d!2177819 () Bool)

(assert (= bs!1862405 (and d!2177819 b!6991131)))

(declare-fun lt!2488438 () Unit!161115)

(assert (=> bs!1862405 (= lt!2488438 (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488415) (exprs!6726 ct2!306) lambda!402261))))

(assert (=> bs!1862405 (= (dynLambda!26921 lambda!402260 lt!2488415) (Context!12453 (++!15175 (exprs!6726 lt!2488415) (exprs!6726 ct2!306))))))

(declare-fun m!7680688 () Bool)

(assert (=> bs!1862405 m!7680688))

(declare-fun m!7680690 () Bool)

(assert (=> bs!1862405 m!7680690))

(assert (=> d!2177767 d!2177819))

(declare-fun b_lambda!262731 () Bool)

(assert (= b_lambda!262719 (or b!6991129 b_lambda!262731)))

(declare-fun bs!1862407 () Bool)

(declare-fun d!2177821 () Bool)

(assert (= bs!1862407 (and d!2177821 b!6991129)))

(assert (=> bs!1862407 (= (dynLambda!26920 lambda!402262 lt!2488251) (derivationStepZipperUp!1880 lt!2488251 (h!73560 s!7408)))))

(assert (=> bs!1862407 m!7680316))

(assert (=> d!2177789 d!2177821))

(declare-fun b_lambda!262733 () Bool)

(assert (= b_lambda!262715 (or b!6991129 b_lambda!262733)))

(declare-fun bs!1862408 () Bool)

(declare-fun d!2177823 () Bool)

(assert (= bs!1862408 (and d!2177823 b!6991129)))

(assert (=> bs!1862408 (= (dynLambda!26920 lambda!402262 lt!2488262) (derivationStepZipperUp!1880 lt!2488262 (h!73560 s!7408)))))

(assert (=> bs!1862408 m!7680352))

(assert (=> d!2177761 d!2177823))

(declare-fun b_lambda!262735 () Bool)

(assert (= b_lambda!262727 (or b!6991129 b_lambda!262735)))

(declare-fun bs!1862409 () Bool)

(declare-fun d!2177825 () Bool)

(assert (= bs!1862409 (and d!2177825 b!6991129)))

(assert (=> bs!1862409 (= (dynLambda!26920 lambda!402262 lt!2488267) (derivationStepZipperUp!1880 lt!2488267 (h!73560 s!7408)))))

(assert (=> bs!1862409 m!7680388))

(assert (=> d!2177817 d!2177825))

(declare-fun b_lambda!262737 () Bool)

(assert (= b_lambda!262725 (or b!6991131 b_lambda!262737)))

(declare-fun bs!1862410 () Bool)

(declare-fun d!2177827 () Bool)

(assert (= bs!1862410 (and d!2177827 b!6991131)))

(declare-fun validRegex!8864 (Regex!17230) Bool)

(assert (=> bs!1862410 (= (dynLambda!26924 lambda!402261 (h!73559 lt!2488246)) (validRegex!8864 (h!73559 lt!2488246)))))

(declare-fun m!7680698 () Bool)

(assert (=> bs!1862410 m!7680698))

(assert (=> b!6991325 d!2177827))

(declare-fun b_lambda!262739 () Bool)

(assert (= b_lambda!262723 (or b!6991131 b_lambda!262739)))

(declare-fun bs!1862411 () Bool)

(declare-fun d!2177829 () Bool)

(assert (= bs!1862411 (and d!2177829 b!6991131)))

(declare-fun lt!2488439 () Unit!161115)

(assert (=> bs!1862411 (= lt!2488439 (lemmaConcatPreservesForall!566 (exprs!6726 lt!2488267) (exprs!6726 ct2!306) lambda!402261))))

(assert (=> bs!1862411 (= (dynLambda!26921 lambda!402260 lt!2488267) (Context!12453 (++!15175 (exprs!6726 lt!2488267) (exprs!6726 ct2!306))))))

(declare-fun m!7680700 () Bool)

(assert (=> bs!1862411 m!7680700))

(declare-fun m!7680702 () Bool)

(assert (=> bs!1862411 m!7680702))

(assert (=> d!2177805 d!2177829))

(declare-fun b_lambda!262741 () Bool)

(assert (= b_lambda!262721 (or b!6991139 b_lambda!262741)))

(declare-fun bs!1862412 () Bool)

(declare-fun d!2177833 () Bool)

(assert (= bs!1862412 (and d!2177833 b!6991139)))

(assert (=> bs!1862412 (= (dynLambda!26922 lambda!402259 lt!2488427) (matchZipper!2770 (set.insert lt!2488427 (as set.empty (Set Context!12452))) s!7408))))

(declare-fun m!7680704 () Bool)

(assert (=> bs!1862412 m!7680704))

(assert (=> bs!1862412 m!7680704))

(declare-fun m!7680706 () Bool)

(assert (=> bs!1862412 m!7680706))

(assert (=> d!2177797 d!2177833))

(push 1)

(assert (not bs!1862405))

(assert (not b_lambda!262731))

(assert (not d!2177747))

(assert (not b_lambda!262733))

(assert (not b!6991288))

(assert (not b!6991248))

(assert (not d!2177795))

(assert (not d!2177777))

(assert (not bs!1862411))

(assert (not b!6991289))

(assert (not d!2177797))

(assert (not b!6991328))

(assert (not b!6991301))

(assert (not b!6991305))

(assert (not b!6991298))

(assert (not b!6991346))

(assert (not bs!1862409))

(assert (not b_lambda!262735))

(assert (not b_lambda!262737))

(assert (not d!2177757))

(assert (not b!6991295))

(assert (not bs!1862408))

(assert (not d!2177801))

(assert (not d!2177773))

(assert (not bs!1862407))

(assert (not b!6991280))

(assert (not d!2177815))

(assert (not d!2177745))

(assert (not b_lambda!262741))

(assert (not b!6991283))

(assert (not bm!634676))

(assert (not d!2177767))

(assert (not d!2177787))

(assert (not d!2177803))

(assert (not b!6991307))

(assert (not d!2177813))

(assert (not d!2177789))

(assert (not b!6991315))

(assert (not b!6991309))

(assert (not d!2177785))

(assert (not b!6991269))

(assert (not d!2177783))

(assert (not b!6991347))

(assert (not d!2177805))

(assert (not d!2177799))

(assert (not b!6991336))

(assert (not bm!634678))

(assert (not b!6991314))

(assert (not d!2177755))

(assert (not bs!1862410))

(assert (not b!6991221))

(assert (not d!2177779))

(assert (not b!6991281))

(assert (not b!6991302))

(assert (not d!2177765))

(assert (not b!6991303))

(assert (not d!2177781))

(assert (not d!2177793))

(assert (not d!2177817))

(assert (not b!6991296))

(assert (not b!6991297))

(assert (not b!6991284))

(assert (not setNonEmpty!47868))

(assert (not d!2177775))

(assert (not b!6991341))

(assert (not d!2177763))

(assert (not b!6991304))

(assert (not bm!634679))

(assert (not b_lambda!262739))

(assert (not d!2177741))

(assert (not d!2177759))

(assert (not bm!634683))

(assert (not b!6991267))

(assert (not bs!1862412))

(assert (not d!2177753))

(assert (not b!6991330))

(assert (not bm!634685))

(assert (not bm!634684))

(assert (not b!6991313))

(assert (not d!2177761))

(assert (not b!6991326))

(assert (not b!6991222))

(assert tp_is_empty!43685)

(assert (not d!2177771))

(assert (not b_lambda!262729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

