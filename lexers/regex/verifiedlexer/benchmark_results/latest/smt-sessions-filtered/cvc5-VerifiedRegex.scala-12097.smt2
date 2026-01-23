; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!678170 () Bool)

(assert start!678170)

(declare-fun b!7025208 () Bool)

(assert (=> b!7025208 true))

(declare-fun b!7025215 () Bool)

(assert (=> b!7025215 true))

(declare-fun b!7025222 () Bool)

(assert (=> b!7025222 true))

(declare-fun b!7025206 () Bool)

(declare-fun e!4223155 () Bool)

(declare-fun e!4223167 () Bool)

(assert (=> b!7025206 (= e!4223155 e!4223167)))

(declare-fun res!2867828 () Bool)

(assert (=> b!7025206 (=> res!2867828 e!4223167)))

(declare-datatypes ((C!35150 0))(
  ( (C!35151 (val!27277 Int)) )
))
(declare-datatypes ((Regex!17440 0))(
  ( (ElementMatch!17440 (c!1305829 C!35150)) (Concat!26285 (regOne!35392 Regex!17440) (regTwo!35392 Regex!17440)) (EmptyExpr!17440) (Star!17440 (reg!17769 Regex!17440)) (EmptyLang!17440) (Union!17440 (regOne!35393 Regex!17440) (regTwo!35393 Regex!17440)) )
))
(declare-datatypes ((List!67848 0))(
  ( (Nil!67724) (Cons!67724 (h!74172 Regex!17440) (t!381605 List!67848)) )
))
(declare-datatypes ((Context!12872 0))(
  ( (Context!12873 (exprs!6936 List!67848)) )
))
(declare-fun lt!2514103 () Context!12872)

(declare-fun nullable!7151 (Regex!17440) Bool)

(assert (=> b!7025206 (= res!2867828 (not (nullable!7151 (h!74172 (exprs!6936 lt!2514103)))))))

(declare-fun lt!2514115 () List!67848)

(declare-fun tail!13509 (List!67848) List!67848)

(assert (=> b!7025206 (= lt!2514115 (tail!13509 (exprs!6936 lt!2514103)))))

(declare-fun b!7025207 () Bool)

(declare-fun res!2867824 () Bool)

(declare-fun e!4223160 () Bool)

(assert (=> b!7025207 (=> (not res!2867824) (not e!4223160))))

(declare-datatypes ((List!67849 0))(
  ( (Nil!67725) (Cons!67725 (h!74173 C!35150) (t!381606 List!67849)) )
))
(declare-fun s!7408 () List!67849)

(assert (=> b!7025207 (= res!2867824 (is-Cons!67725 s!7408))))

(declare-fun res!2867829 () Bool)

(assert (=> start!678170 (=> (not res!2867829) (not e!4223160))))

(declare-fun lt!2514118 () (Set Context!12872))

(declare-fun matchZipper!2980 ((Set Context!12872) List!67849) Bool)

(assert (=> start!678170 (= res!2867829 (matchZipper!2980 lt!2514118 s!7408))))

(declare-fun z1!570 () (Set Context!12872))

(declare-fun ct2!306 () Context!12872)

(declare-fun appendTo!561 ((Set Context!12872) Context!12872) (Set Context!12872))

(assert (=> start!678170 (= lt!2514118 (appendTo!561 z1!570 ct2!306))))

(assert (=> start!678170 e!4223160))

(declare-fun condSetEmpty!48961 () Bool)

(assert (=> start!678170 (= condSetEmpty!48961 (= z1!570 (as set.empty (Set Context!12872))))))

(declare-fun setRes!48961 () Bool)

(assert (=> start!678170 setRes!48961))

(declare-fun e!4223166 () Bool)

(declare-fun inv!86460 (Context!12872) Bool)

(assert (=> start!678170 (and (inv!86460 ct2!306) e!4223166)))

(declare-fun e!4223159 () Bool)

(assert (=> start!678170 e!4223159))

(declare-fun e!4223154 () Bool)

(assert (=> b!7025208 (= e!4223160 (not e!4223154))))

(declare-fun res!2867821 () Bool)

(assert (=> b!7025208 (=> res!2867821 e!4223154)))

(declare-fun lt!2514133 () (Set Context!12872))

(assert (=> b!7025208 (= res!2867821 (not (matchZipper!2980 lt!2514133 s!7408)))))

(declare-fun lt!2514127 () Context!12872)

(assert (=> b!7025208 (= lt!2514133 (set.insert lt!2514127 (as set.empty (Set Context!12872))))))

(declare-fun lambda!412780 () Int)

(declare-fun getWitness!1429 ((Set Context!12872) Int) Context!12872)

(assert (=> b!7025208 (= lt!2514127 (getWitness!1429 lt!2514118 lambda!412780))))

(declare-datatypes ((List!67850 0))(
  ( (Nil!67726) (Cons!67726 (h!74174 Context!12872) (t!381607 List!67850)) )
))
(declare-fun lt!2514124 () List!67850)

(declare-fun exists!3348 (List!67850 Int) Bool)

(assert (=> b!7025208 (exists!3348 lt!2514124 lambda!412780)))

(declare-datatypes ((Unit!161543 0))(
  ( (Unit!161544) )
))
(declare-fun lt!2514113 () Unit!161543)

(declare-fun lemmaZipperMatchesExistsMatchingContext!379 (List!67850 List!67849) Unit!161543)

(assert (=> b!7025208 (= lt!2514113 (lemmaZipperMatchesExistsMatchingContext!379 lt!2514124 s!7408))))

(declare-fun toList!10783 ((Set Context!12872)) List!67850)

(assert (=> b!7025208 (= lt!2514124 (toList!10783 lt!2514118))))

(declare-fun b!7025209 () Bool)

(declare-fun e!4223164 () Bool)

(declare-fun lt!2514106 () (Set Context!12872))

(assert (=> b!7025209 (= e!4223164 (matchZipper!2980 lt!2514106 (t!381606 s!7408)))))

(declare-fun setIsEmpty!48961 () Bool)

(assert (=> setIsEmpty!48961 setRes!48961))

(declare-fun b!7025210 () Bool)

(declare-fun e!4223162 () Bool)

(assert (=> b!7025210 (= e!4223167 e!4223162)))

(declare-fun res!2867825 () Bool)

(assert (=> b!7025210 (=> res!2867825 e!4223162)))

(declare-fun lt!2514112 () (Set Context!12872))

(declare-fun lt!2514114 () (Set Context!12872))

(assert (=> b!7025210 (= res!2867825 (not (= lt!2514112 lt!2514114)))))

(declare-fun lt!2514122 () (Set Context!12872))

(assert (=> b!7025210 (= lt!2514114 (set.union lt!2514122 lt!2514106))))

(declare-fun lt!2514120 () Context!12872)

(declare-fun derivationStepZipperUp!2050 (Context!12872 C!35150) (Set Context!12872))

(assert (=> b!7025210 (= lt!2514106 (derivationStepZipperUp!2050 lt!2514120 (h!74173 s!7408)))))

(declare-fun derivationStepZipperDown!2104 (Regex!17440 Context!12872 C!35150) (Set Context!12872))

(assert (=> b!7025210 (= lt!2514122 (derivationStepZipperDown!2104 (h!74172 (exprs!6936 lt!2514103)) lt!2514120 (h!74173 s!7408)))))

(declare-fun ++!15473 (List!67848 List!67848) List!67848)

(assert (=> b!7025210 (= lt!2514120 (Context!12873 (++!15473 lt!2514115 (exprs!6936 ct2!306))))))

(declare-fun lt!2514111 () Unit!161543)

(declare-fun lambda!412782 () Int)

(declare-fun lemmaConcatPreservesForall!761 (List!67848 List!67848 Int) Unit!161543)

(assert (=> b!7025210 (= lt!2514111 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lt!2514119 () Unit!161543)

(assert (=> b!7025210 (= lt!2514119 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun e!4223161 () Bool)

(declare-fun b!7025211 () Bool)

(declare-fun lt!2514104 () (Set Context!12872))

(declare-fun derivationStepZipper!2896 ((Set Context!12872) C!35150) (Set Context!12872))

(assert (=> b!7025211 (= e!4223161 (= (derivationStepZipper!2896 lt!2514104 (h!74173 s!7408)) lt!2514106))))

(declare-fun lt!2514109 () Unit!161543)

(assert (=> b!7025211 (= lt!2514109 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lt!2514128 () Unit!161543)

(assert (=> b!7025211 (= lt!2514128 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lambda!412783 () Int)

(declare-fun flatMap!2387 ((Set Context!12872) Int) (Set Context!12872))

(assert (=> b!7025211 (= (flatMap!2387 lt!2514104 lambda!412783) (derivationStepZipperUp!2050 lt!2514120 (h!74173 s!7408)))))

(declare-fun lt!2514110 () Unit!161543)

(declare-fun lemmaFlatMapOnSingletonSet!1901 ((Set Context!12872) Context!12872 Int) Unit!161543)

(assert (=> b!7025211 (= lt!2514110 (lemmaFlatMapOnSingletonSet!1901 lt!2514104 lt!2514120 lambda!412783))))

(assert (=> b!7025211 (= lt!2514104 (set.insert lt!2514120 (as set.empty (Set Context!12872))))))

(declare-fun lt!2514134 () Unit!161543)

(assert (=> b!7025211 (= lt!2514134 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lt!2514102 () Unit!161543)

(assert (=> b!7025211 (= lt!2514102 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025212 () Bool)

(declare-fun res!2867826 () Bool)

(assert (=> b!7025212 (=> res!2867826 e!4223154)))

(assert (=> b!7025212 (= res!2867826 (not (set.member lt!2514127 lt!2514118)))))

(declare-fun b!7025213 () Bool)

(declare-fun res!2867832 () Bool)

(assert (=> b!7025213 (=> res!2867832 e!4223155)))

(assert (=> b!7025213 (= res!2867832 (not (is-Cons!67724 (exprs!6936 lt!2514103))))))

(declare-fun b!7025214 () Bool)

(declare-fun e!4223156 () Bool)

(declare-fun tp!1935372 () Bool)

(assert (=> b!7025214 (= e!4223156 tp!1935372)))

(declare-fun e!4223157 () Bool)

(assert (=> b!7025215 (= e!4223154 e!4223157)))

(declare-fun res!2867833 () Bool)

(assert (=> b!7025215 (=> res!2867833 e!4223157)))

(declare-fun lt!2514108 () Context!12872)

(assert (=> b!7025215 (= res!2867833 (or (not (= lt!2514108 lt!2514127)) (not (set.member lt!2514103 z1!570))))))

(assert (=> b!7025215 (= lt!2514108 (Context!12873 (++!15473 (exprs!6936 lt!2514103) (exprs!6936 ct2!306))))))

(declare-fun lt!2514123 () Unit!161543)

(assert (=> b!7025215 (= lt!2514123 (lemmaConcatPreservesForall!761 (exprs!6936 lt!2514103) (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lambda!412781 () Int)

(declare-fun mapPost2!281 ((Set Context!12872) Int Context!12872) Context!12872)

(assert (=> b!7025215 (= lt!2514103 (mapPost2!281 z1!570 lambda!412781 lt!2514127))))

(declare-fun b!7025216 () Bool)

(declare-fun e!4223165 () Bool)

(assert (=> b!7025216 (= e!4223162 e!4223165)))

(declare-fun res!2867827 () Bool)

(assert (=> b!7025216 (=> res!2867827 e!4223165)))

(declare-fun e!4223163 () Bool)

(assert (=> b!7025216 (= res!2867827 e!4223163)))

(declare-fun res!2867830 () Bool)

(assert (=> b!7025216 (=> (not res!2867830) (not e!4223163))))

(declare-fun lt!2514132 () Bool)

(declare-fun lt!2514130 () Bool)

(assert (=> b!7025216 (= res!2867830 (not (= lt!2514132 lt!2514130)))))

(assert (=> b!7025216 (= lt!2514132 (matchZipper!2980 lt!2514112 (t!381606 s!7408)))))

(declare-fun lt!2514107 () Unit!161543)

(assert (=> b!7025216 (= lt!2514107 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(assert (=> b!7025216 (= (matchZipper!2980 lt!2514114 (t!381606 s!7408)) e!4223164)))

(declare-fun res!2867834 () Bool)

(assert (=> b!7025216 (=> res!2867834 e!4223164)))

(assert (=> b!7025216 (= res!2867834 lt!2514130)))

(assert (=> b!7025216 (= lt!2514130 (matchZipper!2980 lt!2514122 (t!381606 s!7408)))))

(declare-fun lt!2514135 () Unit!161543)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1513 ((Set Context!12872) (Set Context!12872) List!67849) Unit!161543)

(assert (=> b!7025216 (= lt!2514135 (lemmaZipperConcatMatchesSameAsBothZippers!1513 lt!2514122 lt!2514106 (t!381606 s!7408)))))

(declare-fun lt!2514129 () Unit!161543)

(assert (=> b!7025216 (= lt!2514129 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun lt!2514117 () Unit!161543)

(assert (=> b!7025216 (= lt!2514117 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025217 () Bool)

(assert (=> b!7025217 (= e!4223163 (not (matchZipper!2980 lt!2514106 (t!381606 s!7408))))))

(declare-fun lt!2514121 () Unit!161543)

(assert (=> b!7025217 (= lt!2514121 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025218 () Bool)

(declare-fun e!4223158 () Bool)

(assert (=> b!7025218 (= e!4223157 e!4223158)))

(declare-fun res!2867823 () Bool)

(assert (=> b!7025218 (=> res!2867823 e!4223158)))

(declare-fun lt!2514126 () (Set Context!12872))

(assert (=> b!7025218 (= res!2867823 (not (= lt!2514126 lt!2514133)))))

(assert (=> b!7025218 (= lt!2514126 (set.insert lt!2514108 (as set.empty (Set Context!12872))))))

(declare-fun lt!2514116 () Unit!161543)

(assert (=> b!7025218 (= lt!2514116 (lemmaConcatPreservesForall!761 (exprs!6936 lt!2514103) (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025219 () Bool)

(assert (=> b!7025219 (= e!4223165 e!4223161)))

(declare-fun res!2867831 () Bool)

(assert (=> b!7025219 (=> res!2867831 e!4223161)))

(assert (=> b!7025219 (= res!2867831 (not (matchZipper!2980 lt!2514106 (t!381606 s!7408))))))

(declare-fun lt!2514131 () Unit!161543)

(assert (=> b!7025219 (= lt!2514131 (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025220 () Bool)

(declare-fun res!2867822 () Bool)

(assert (=> b!7025220 (=> res!2867822 e!4223155)))

(declare-fun isEmpty!39488 (List!67848) Bool)

(assert (=> b!7025220 (= res!2867822 (isEmpty!39488 (exprs!6936 lt!2514103)))))

(declare-fun tp!1935375 () Bool)

(declare-fun setNonEmpty!48961 () Bool)

(declare-fun setElem!48961 () Context!12872)

(assert (=> setNonEmpty!48961 (= setRes!48961 (and tp!1935375 (inv!86460 setElem!48961) e!4223156))))

(declare-fun setRest!48961 () (Set Context!12872))

(assert (=> setNonEmpty!48961 (= z1!570 (set.union (set.insert setElem!48961 (as set.empty (Set Context!12872))) setRest!48961))))

(declare-fun b!7025221 () Bool)

(declare-fun res!2867820 () Bool)

(assert (=> b!7025221 (=> res!2867820 e!4223165)))

(assert (=> b!7025221 (= res!2867820 (not lt!2514132))))

(assert (=> b!7025222 (= e!4223158 e!4223155)))

(declare-fun res!2867819 () Bool)

(assert (=> b!7025222 (=> res!2867819 e!4223155)))

(assert (=> b!7025222 (= res!2867819 (not (= (derivationStepZipper!2896 lt!2514126 (h!74173 s!7408)) lt!2514112)))))

(assert (=> b!7025222 (= (flatMap!2387 lt!2514126 lambda!412783) (derivationStepZipperUp!2050 lt!2514108 (h!74173 s!7408)))))

(declare-fun lt!2514105 () Unit!161543)

(assert (=> b!7025222 (= lt!2514105 (lemmaFlatMapOnSingletonSet!1901 lt!2514126 lt!2514108 lambda!412783))))

(assert (=> b!7025222 (= lt!2514112 (derivationStepZipperUp!2050 lt!2514108 (h!74173 s!7408)))))

(declare-fun lt!2514125 () Unit!161543)

(assert (=> b!7025222 (= lt!2514125 (lemmaConcatPreservesForall!761 (exprs!6936 lt!2514103) (exprs!6936 ct2!306) lambda!412782))))

(declare-fun b!7025223 () Bool)

(declare-fun tp_is_empty!44105 () Bool)

(declare-fun tp!1935373 () Bool)

(assert (=> b!7025223 (= e!4223159 (and tp_is_empty!44105 tp!1935373))))

(declare-fun b!7025224 () Bool)

(declare-fun tp!1935374 () Bool)

(assert (=> b!7025224 (= e!4223166 tp!1935374)))

(assert (= (and start!678170 res!2867829) b!7025207))

(assert (= (and b!7025207 res!2867824) b!7025208))

(assert (= (and b!7025208 (not res!2867821)) b!7025212))

(assert (= (and b!7025212 (not res!2867826)) b!7025215))

(assert (= (and b!7025215 (not res!2867833)) b!7025218))

(assert (= (and b!7025218 (not res!2867823)) b!7025222))

(assert (= (and b!7025222 (not res!2867819)) b!7025213))

(assert (= (and b!7025213 (not res!2867832)) b!7025220))

(assert (= (and b!7025220 (not res!2867822)) b!7025206))

(assert (= (and b!7025206 (not res!2867828)) b!7025210))

(assert (= (and b!7025210 (not res!2867825)) b!7025216))

(assert (= (and b!7025216 (not res!2867834)) b!7025209))

(assert (= (and b!7025216 res!2867830) b!7025217))

(assert (= (and b!7025216 (not res!2867827)) b!7025221))

(assert (= (and b!7025221 (not res!2867820)) b!7025219))

(assert (= (and b!7025219 (not res!2867831)) b!7025211))

(assert (= (and start!678170 condSetEmpty!48961) setIsEmpty!48961))

(assert (= (and start!678170 (not condSetEmpty!48961)) setNonEmpty!48961))

(assert (= setNonEmpty!48961 b!7025214))

(assert (= start!678170 b!7025224))

(assert (= (and start!678170 (is-Cons!67725 s!7408)) b!7025223))

(declare-fun m!7728228 () Bool)

(assert (=> b!7025208 m!7728228))

(declare-fun m!7728230 () Bool)

(assert (=> b!7025208 m!7728230))

(declare-fun m!7728232 () Bool)

(assert (=> b!7025208 m!7728232))

(declare-fun m!7728234 () Bool)

(assert (=> b!7025208 m!7728234))

(declare-fun m!7728236 () Bool)

(assert (=> b!7025208 m!7728236))

(declare-fun m!7728238 () Bool)

(assert (=> b!7025208 m!7728238))

(declare-fun m!7728240 () Bool)

(assert (=> b!7025215 m!7728240))

(declare-fun m!7728242 () Bool)

(assert (=> b!7025215 m!7728242))

(declare-fun m!7728244 () Bool)

(assert (=> b!7025215 m!7728244))

(declare-fun m!7728246 () Bool)

(assert (=> b!7025215 m!7728246))

(declare-fun m!7728248 () Bool)

(assert (=> b!7025212 m!7728248))

(declare-fun m!7728250 () Bool)

(assert (=> b!7025216 m!7728250))

(declare-fun m!7728252 () Bool)

(assert (=> b!7025216 m!7728252))

(assert (=> b!7025216 m!7728252))

(declare-fun m!7728254 () Bool)

(assert (=> b!7025216 m!7728254))

(declare-fun m!7728256 () Bool)

(assert (=> b!7025216 m!7728256))

(assert (=> b!7025216 m!7728252))

(declare-fun m!7728258 () Bool)

(assert (=> b!7025216 m!7728258))

(declare-fun m!7728260 () Bool)

(assert (=> b!7025210 m!7728260))

(declare-fun m!7728262 () Bool)

(assert (=> b!7025210 m!7728262))

(declare-fun m!7728264 () Bool)

(assert (=> b!7025210 m!7728264))

(assert (=> b!7025210 m!7728252))

(assert (=> b!7025210 m!7728252))

(assert (=> b!7025211 m!7728252))

(assert (=> b!7025211 m!7728252))

(assert (=> b!7025211 m!7728252))

(assert (=> b!7025211 m!7728252))

(declare-fun m!7728266 () Bool)

(assert (=> b!7025211 m!7728266))

(declare-fun m!7728268 () Bool)

(assert (=> b!7025211 m!7728268))

(assert (=> b!7025211 m!7728262))

(declare-fun m!7728270 () Bool)

(assert (=> b!7025211 m!7728270))

(declare-fun m!7728272 () Bool)

(assert (=> b!7025211 m!7728272))

(declare-fun m!7728274 () Bool)

(assert (=> start!678170 m!7728274))

(declare-fun m!7728276 () Bool)

(assert (=> start!678170 m!7728276))

(declare-fun m!7728278 () Bool)

(assert (=> start!678170 m!7728278))

(declare-fun m!7728280 () Bool)

(assert (=> b!7025222 m!7728280))

(declare-fun m!7728282 () Bool)

(assert (=> b!7025222 m!7728282))

(declare-fun m!7728284 () Bool)

(assert (=> b!7025222 m!7728284))

(declare-fun m!7728286 () Bool)

(assert (=> b!7025222 m!7728286))

(assert (=> b!7025222 m!7728244))

(declare-fun m!7728288 () Bool)

(assert (=> b!7025218 m!7728288))

(assert (=> b!7025218 m!7728244))

(declare-fun m!7728290 () Bool)

(assert (=> b!7025219 m!7728290))

(assert (=> b!7025219 m!7728252))

(declare-fun m!7728292 () Bool)

(assert (=> setNonEmpty!48961 m!7728292))

(assert (=> b!7025209 m!7728290))

(declare-fun m!7728294 () Bool)

(assert (=> b!7025206 m!7728294))

(declare-fun m!7728296 () Bool)

(assert (=> b!7025206 m!7728296))

(assert (=> b!7025217 m!7728290))

(assert (=> b!7025217 m!7728252))

(declare-fun m!7728298 () Bool)

(assert (=> b!7025220 m!7728298))

(push 1)

(assert (not b!7025215))

(assert (not b!7025214))

(assert (not b!7025223))

(assert (not start!678170))

(assert (not setNonEmpty!48961))

(assert (not b!7025211))

(assert (not b!7025222))

(assert (not b!7025208))

(assert (not b!7025224))

(assert (not b!7025220))

(assert (not b!7025210))

(assert (not b!7025216))

(assert (not b!7025219))

(assert (not b!7025209))

(assert (not b!7025206))

(assert (not b!7025217))

(assert tp_is_empty!44105)

(assert (not b!7025218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2190116 () Bool)

(declare-fun nullableFct!2710 (Regex!17440) Bool)

(assert (=> d!2190116 (= (nullable!7151 (h!74172 (exprs!6936 lt!2514103))) (nullableFct!2710 (h!74172 (exprs!6936 lt!2514103))))))

(declare-fun bs!1868522 () Bool)

(assert (= bs!1868522 d!2190116))

(declare-fun m!7728372 () Bool)

(assert (=> bs!1868522 m!7728372))

(assert (=> b!7025206 d!2190116))

(declare-fun d!2190118 () Bool)

(assert (=> d!2190118 (= (tail!13509 (exprs!6936 lt!2514103)) (t!381605 (exprs!6936 lt!2514103)))))

(assert (=> b!7025206 d!2190118))

(declare-fun d!2190120 () Bool)

(declare-fun e!4223212 () Bool)

(assert (=> d!2190120 (= (matchZipper!2980 (set.union lt!2514122 lt!2514106) (t!381606 s!7408)) e!4223212)))

(declare-fun res!2867886 () Bool)

(assert (=> d!2190120 (=> res!2867886 e!4223212)))

(assert (=> d!2190120 (= res!2867886 (matchZipper!2980 lt!2514122 (t!381606 s!7408)))))

(declare-fun lt!2514242 () Unit!161543)

(declare-fun choose!53066 ((Set Context!12872) (Set Context!12872) List!67849) Unit!161543)

(assert (=> d!2190120 (= lt!2514242 (choose!53066 lt!2514122 lt!2514106 (t!381606 s!7408)))))

(assert (=> d!2190120 (= (lemmaZipperConcatMatchesSameAsBothZippers!1513 lt!2514122 lt!2514106 (t!381606 s!7408)) lt!2514242)))

(declare-fun b!7025296 () Bool)

(assert (=> b!7025296 (= e!4223212 (matchZipper!2980 lt!2514106 (t!381606 s!7408)))))

(assert (= (and d!2190120 (not res!2867886)) b!7025296))

(declare-fun m!7728374 () Bool)

(assert (=> d!2190120 m!7728374))

(assert (=> d!2190120 m!7728258))

(declare-fun m!7728376 () Bool)

(assert (=> d!2190120 m!7728376))

(assert (=> b!7025296 m!7728290))

(assert (=> b!7025216 d!2190120))

(declare-fun d!2190122 () Bool)

(declare-fun c!1305843 () Bool)

(declare-fun isEmpty!39490 (List!67849) Bool)

(assert (=> d!2190122 (= c!1305843 (isEmpty!39490 (t!381606 s!7408)))))

(declare-fun e!4223215 () Bool)

(assert (=> d!2190122 (= (matchZipper!2980 lt!2514112 (t!381606 s!7408)) e!4223215)))

(declare-fun b!7025301 () Bool)

(declare-fun nullableZipper!2561 ((Set Context!12872)) Bool)

(assert (=> b!7025301 (= e!4223215 (nullableZipper!2561 lt!2514112))))

(declare-fun b!7025302 () Bool)

(declare-fun head!14237 (List!67849) C!35150)

(declare-fun tail!13511 (List!67849) List!67849)

(assert (=> b!7025302 (= e!4223215 (matchZipper!2980 (derivationStepZipper!2896 lt!2514112 (head!14237 (t!381606 s!7408))) (tail!13511 (t!381606 s!7408))))))

(assert (= (and d!2190122 c!1305843) b!7025301))

(assert (= (and d!2190122 (not c!1305843)) b!7025302))

(declare-fun m!7728378 () Bool)

(assert (=> d!2190122 m!7728378))

(declare-fun m!7728380 () Bool)

(assert (=> b!7025301 m!7728380))

(declare-fun m!7728382 () Bool)

(assert (=> b!7025302 m!7728382))

(assert (=> b!7025302 m!7728382))

(declare-fun m!7728384 () Bool)

(assert (=> b!7025302 m!7728384))

(declare-fun m!7728386 () Bool)

(assert (=> b!7025302 m!7728386))

(assert (=> b!7025302 m!7728384))

(assert (=> b!7025302 m!7728386))

(declare-fun m!7728388 () Bool)

(assert (=> b!7025302 m!7728388))

(assert (=> b!7025216 d!2190122))

(declare-fun d!2190124 () Bool)

(declare-fun c!1305844 () Bool)

(assert (=> d!2190124 (= c!1305844 (isEmpty!39490 (t!381606 s!7408)))))

(declare-fun e!4223216 () Bool)

(assert (=> d!2190124 (= (matchZipper!2980 lt!2514122 (t!381606 s!7408)) e!4223216)))

(declare-fun b!7025303 () Bool)

(assert (=> b!7025303 (= e!4223216 (nullableZipper!2561 lt!2514122))))

(declare-fun b!7025304 () Bool)

(assert (=> b!7025304 (= e!4223216 (matchZipper!2980 (derivationStepZipper!2896 lt!2514122 (head!14237 (t!381606 s!7408))) (tail!13511 (t!381606 s!7408))))))

(assert (= (and d!2190124 c!1305844) b!7025303))

(assert (= (and d!2190124 (not c!1305844)) b!7025304))

(assert (=> d!2190124 m!7728378))

(declare-fun m!7728390 () Bool)

(assert (=> b!7025303 m!7728390))

(assert (=> b!7025304 m!7728382))

(assert (=> b!7025304 m!7728382))

(declare-fun m!7728392 () Bool)

(assert (=> b!7025304 m!7728392))

(assert (=> b!7025304 m!7728386))

(assert (=> b!7025304 m!7728392))

(assert (=> b!7025304 m!7728386))

(declare-fun m!7728394 () Bool)

(assert (=> b!7025304 m!7728394))

(assert (=> b!7025216 d!2190124))

(declare-fun d!2190126 () Bool)

(declare-fun c!1305845 () Bool)

(assert (=> d!2190126 (= c!1305845 (isEmpty!39490 (t!381606 s!7408)))))

(declare-fun e!4223217 () Bool)

(assert (=> d!2190126 (= (matchZipper!2980 lt!2514114 (t!381606 s!7408)) e!4223217)))

(declare-fun b!7025305 () Bool)

(assert (=> b!7025305 (= e!4223217 (nullableZipper!2561 lt!2514114))))

(declare-fun b!7025306 () Bool)

(assert (=> b!7025306 (= e!4223217 (matchZipper!2980 (derivationStepZipper!2896 lt!2514114 (head!14237 (t!381606 s!7408))) (tail!13511 (t!381606 s!7408))))))

(assert (= (and d!2190126 c!1305845) b!7025305))

(assert (= (and d!2190126 (not c!1305845)) b!7025306))

(assert (=> d!2190126 m!7728378))

(declare-fun m!7728396 () Bool)

(assert (=> b!7025305 m!7728396))

(assert (=> b!7025306 m!7728382))

(assert (=> b!7025306 m!7728382))

(declare-fun m!7728398 () Bool)

(assert (=> b!7025306 m!7728398))

(assert (=> b!7025306 m!7728386))

(assert (=> b!7025306 m!7728398))

(assert (=> b!7025306 m!7728386))

(declare-fun m!7728400 () Bool)

(assert (=> b!7025306 m!7728400))

(assert (=> b!7025216 d!2190126))

(declare-fun d!2190128 () Bool)

(declare-fun forall!16342 (List!67848 Int) Bool)

(assert (=> d!2190128 (forall!16342 (++!15473 lt!2514115 (exprs!6936 ct2!306)) lambda!412782)))

(declare-fun lt!2514245 () Unit!161543)

(declare-fun choose!53067 (List!67848 List!67848 Int) Unit!161543)

(assert (=> d!2190128 (= lt!2514245 (choose!53067 lt!2514115 (exprs!6936 ct2!306) lambda!412782))))

(assert (=> d!2190128 (forall!16342 lt!2514115 lambda!412782)))

(assert (=> d!2190128 (= (lemmaConcatPreservesForall!761 lt!2514115 (exprs!6936 ct2!306) lambda!412782) lt!2514245)))

(declare-fun bs!1868523 () Bool)

(assert (= bs!1868523 d!2190128))

(assert (=> bs!1868523 m!7728264))

(assert (=> bs!1868523 m!7728264))

(declare-fun m!7728402 () Bool)

(assert (=> bs!1868523 m!7728402))

(declare-fun m!7728404 () Bool)

(assert (=> bs!1868523 m!7728404))

(declare-fun m!7728406 () Bool)

(assert (=> bs!1868523 m!7728406))

(assert (=> b!7025216 d!2190128))

(declare-fun b!7025317 () Bool)

(declare-fun res!2867891 () Bool)

(declare-fun e!4223223 () Bool)

(assert (=> b!7025317 (=> (not res!2867891) (not e!4223223))))

(declare-fun lt!2514248 () List!67848)

(declare-fun size!41039 (List!67848) Int)

(assert (=> b!7025317 (= res!2867891 (= (size!41039 lt!2514248) (+ (size!41039 (exprs!6936 lt!2514103)) (size!41039 (exprs!6936 ct2!306)))))))

(declare-fun b!7025318 () Bool)

(assert (=> b!7025318 (= e!4223223 (or (not (= (exprs!6936 ct2!306) Nil!67724)) (= lt!2514248 (exprs!6936 lt!2514103))))))

(declare-fun d!2190130 () Bool)

(assert (=> d!2190130 e!4223223))

(declare-fun res!2867892 () Bool)

(assert (=> d!2190130 (=> (not res!2867892) (not e!4223223))))

(declare-fun content!13492 (List!67848) (Set Regex!17440))

(assert (=> d!2190130 (= res!2867892 (= (content!13492 lt!2514248) (set.union (content!13492 (exprs!6936 lt!2514103)) (content!13492 (exprs!6936 ct2!306)))))))

(declare-fun e!4223222 () List!67848)

(assert (=> d!2190130 (= lt!2514248 e!4223222)))

(declare-fun c!1305848 () Bool)

(assert (=> d!2190130 (= c!1305848 (is-Nil!67724 (exprs!6936 lt!2514103)))))

(assert (=> d!2190130 (= (++!15473 (exprs!6936 lt!2514103) (exprs!6936 ct2!306)) lt!2514248)))

(declare-fun b!7025315 () Bool)

(assert (=> b!7025315 (= e!4223222 (exprs!6936 ct2!306))))

(declare-fun b!7025316 () Bool)

(assert (=> b!7025316 (= e!4223222 (Cons!67724 (h!74172 (exprs!6936 lt!2514103)) (++!15473 (t!381605 (exprs!6936 lt!2514103)) (exprs!6936 ct2!306))))))

(assert (= (and d!2190130 c!1305848) b!7025315))

(assert (= (and d!2190130 (not c!1305848)) b!7025316))

(assert (= (and d!2190130 res!2867892) b!7025317))

(assert (= (and b!7025317 res!2867891) b!7025318))

(declare-fun m!7728408 () Bool)

(assert (=> b!7025317 m!7728408))

(declare-fun m!7728410 () Bool)

(assert (=> b!7025317 m!7728410))

(declare-fun m!7728412 () Bool)

(assert (=> b!7025317 m!7728412))

(declare-fun m!7728414 () Bool)

(assert (=> d!2190130 m!7728414))

(declare-fun m!7728416 () Bool)

(assert (=> d!2190130 m!7728416))

(declare-fun m!7728418 () Bool)

(assert (=> d!2190130 m!7728418))

(declare-fun m!7728420 () Bool)

(assert (=> b!7025316 m!7728420))

(assert (=> b!7025215 d!2190130))

(declare-fun d!2190132 () Bool)

(assert (=> d!2190132 (forall!16342 (++!15473 (exprs!6936 lt!2514103) (exprs!6936 ct2!306)) lambda!412782)))

(declare-fun lt!2514249 () Unit!161543)

(assert (=> d!2190132 (= lt!2514249 (choose!53067 (exprs!6936 lt!2514103) (exprs!6936 ct2!306) lambda!412782))))

(assert (=> d!2190132 (forall!16342 (exprs!6936 lt!2514103) lambda!412782)))

(assert (=> d!2190132 (= (lemmaConcatPreservesForall!761 (exprs!6936 lt!2514103) (exprs!6936 ct2!306) lambda!412782) lt!2514249)))

(declare-fun bs!1868524 () Bool)

(assert (= bs!1868524 d!2190132))

(assert (=> bs!1868524 m!7728242))

(assert (=> bs!1868524 m!7728242))

(declare-fun m!7728422 () Bool)

(assert (=> bs!1868524 m!7728422))

(declare-fun m!7728424 () Bool)

(assert (=> bs!1868524 m!7728424))

(declare-fun m!7728426 () Bool)

(assert (=> bs!1868524 m!7728426))

(assert (=> b!7025215 d!2190132))

(declare-fun d!2190134 () Bool)

(declare-fun e!4223226 () Bool)

(assert (=> d!2190134 e!4223226))

(declare-fun res!2867895 () Bool)

(assert (=> d!2190134 (=> (not res!2867895) (not e!4223226))))

(declare-fun lt!2514252 () Context!12872)

(declare-fun dynLambda!27300 (Int Context!12872) Context!12872)

(assert (=> d!2190134 (= res!2867895 (= lt!2514127 (dynLambda!27300 lambda!412781 lt!2514252)))))

(declare-fun choose!53068 ((Set Context!12872) Int Context!12872) Context!12872)

(assert (=> d!2190134 (= lt!2514252 (choose!53068 z1!570 lambda!412781 lt!2514127))))

(declare-fun map!15728 ((Set Context!12872) Int) (Set Context!12872))

(assert (=> d!2190134 (set.member lt!2514127 (map!15728 z1!570 lambda!412781))))

(assert (=> d!2190134 (= (mapPost2!281 z1!570 lambda!412781 lt!2514127) lt!2514252)))

(declare-fun b!7025322 () Bool)

(assert (=> b!7025322 (= e!4223226 (set.member lt!2514252 z1!570))))

(assert (= (and d!2190134 res!2867895) b!7025322))

(declare-fun b_lambda!265547 () Bool)

(assert (=> (not b_lambda!265547) (not d!2190134)))

(declare-fun m!7728428 () Bool)

(assert (=> d!2190134 m!7728428))

(declare-fun m!7728430 () Bool)

(assert (=> d!2190134 m!7728430))

(declare-fun m!7728432 () Bool)

(assert (=> d!2190134 m!7728432))

(declare-fun m!7728434 () Bool)

(assert (=> d!2190134 m!7728434))

(declare-fun m!7728436 () Bool)

(assert (=> b!7025322 m!7728436))

(assert (=> b!7025215 d!2190134))

(declare-fun d!2190136 () Bool)

(declare-fun dynLambda!27301 (Int Context!12872) (Set Context!12872))

(assert (=> d!2190136 (= (flatMap!2387 lt!2514126 lambda!412783) (dynLambda!27301 lambda!412783 lt!2514108))))

(declare-fun lt!2514255 () Unit!161543)

(declare-fun choose!53069 ((Set Context!12872) Context!12872 Int) Unit!161543)

(assert (=> d!2190136 (= lt!2514255 (choose!53069 lt!2514126 lt!2514108 lambda!412783))))

(assert (=> d!2190136 (= lt!2514126 (set.insert lt!2514108 (as set.empty (Set Context!12872))))))

(assert (=> d!2190136 (= (lemmaFlatMapOnSingletonSet!1901 lt!2514126 lt!2514108 lambda!412783) lt!2514255)))

(declare-fun b_lambda!265549 () Bool)

(assert (=> (not b_lambda!265549) (not d!2190136)))

(declare-fun bs!1868525 () Bool)

(assert (= bs!1868525 d!2190136))

(assert (=> bs!1868525 m!7728284))

(declare-fun m!7728438 () Bool)

(assert (=> bs!1868525 m!7728438))

(declare-fun m!7728440 () Bool)

(assert (=> bs!1868525 m!7728440))

(assert (=> bs!1868525 m!7728288))

(assert (=> b!7025222 d!2190136))

(declare-fun bs!1868526 () Bool)

(declare-fun d!2190138 () Bool)

(assert (= bs!1868526 (and d!2190138 b!7025222)))

(declare-fun lambda!412830 () Int)

(assert (=> bs!1868526 (= lambda!412830 lambda!412783)))

(assert (=> d!2190138 true))

(assert (=> d!2190138 (= (derivationStepZipper!2896 lt!2514126 (h!74173 s!7408)) (flatMap!2387 lt!2514126 lambda!412830))))

(declare-fun bs!1868527 () Bool)

(assert (= bs!1868527 d!2190138))

(declare-fun m!7728442 () Bool)

(assert (=> bs!1868527 m!7728442))

(assert (=> b!7025222 d!2190138))

(declare-fun d!2190140 () Bool)

(declare-fun c!1305855 () Bool)

(declare-fun e!4223235 () Bool)

(assert (=> d!2190140 (= c!1305855 e!4223235)))

(declare-fun res!2867898 () Bool)

(assert (=> d!2190140 (=> (not res!2867898) (not e!4223235))))

(assert (=> d!2190140 (= res!2867898 (is-Cons!67724 (exprs!6936 lt!2514108)))))

(declare-fun e!4223233 () (Set Context!12872))

(assert (=> d!2190140 (= (derivationStepZipperUp!2050 lt!2514108 (h!74173 s!7408)) e!4223233)))

(declare-fun b!7025335 () Bool)

(assert (=> b!7025335 (= e!4223235 (nullable!7151 (h!74172 (exprs!6936 lt!2514108))))))

(declare-fun call!637807 () (Set Context!12872))

(declare-fun b!7025336 () Bool)

(assert (=> b!7025336 (= e!4223233 (set.union call!637807 (derivationStepZipperUp!2050 (Context!12873 (t!381605 (exprs!6936 lt!2514108))) (h!74173 s!7408))))))

(declare-fun b!7025337 () Bool)

(declare-fun e!4223234 () (Set Context!12872))

(assert (=> b!7025337 (= e!4223233 e!4223234)))

(declare-fun c!1305856 () Bool)

(assert (=> b!7025337 (= c!1305856 (is-Cons!67724 (exprs!6936 lt!2514108)))))

(declare-fun bm!637802 () Bool)

(assert (=> bm!637802 (= call!637807 (derivationStepZipperDown!2104 (h!74172 (exprs!6936 lt!2514108)) (Context!12873 (t!381605 (exprs!6936 lt!2514108))) (h!74173 s!7408)))))

(declare-fun b!7025338 () Bool)

(assert (=> b!7025338 (= e!4223234 call!637807)))

(declare-fun b!7025339 () Bool)

(assert (=> b!7025339 (= e!4223234 (as set.empty (Set Context!12872)))))

(assert (= (and d!2190140 res!2867898) b!7025335))

(assert (= (and d!2190140 c!1305855) b!7025336))

(assert (= (and d!2190140 (not c!1305855)) b!7025337))

(assert (= (and b!7025337 c!1305856) b!7025338))

(assert (= (and b!7025337 (not c!1305856)) b!7025339))

(assert (= (or b!7025336 b!7025338) bm!637802))

(declare-fun m!7728444 () Bool)

(assert (=> b!7025335 m!7728444))

(declare-fun m!7728446 () Bool)

(assert (=> b!7025336 m!7728446))

(declare-fun m!7728448 () Bool)

(assert (=> bm!637802 m!7728448))

(assert (=> b!7025222 d!2190140))

(declare-fun d!2190142 () Bool)

(declare-fun choose!53070 ((Set Context!12872) Int) (Set Context!12872))

(assert (=> d!2190142 (= (flatMap!2387 lt!2514126 lambda!412783) (choose!53070 lt!2514126 lambda!412783))))

(declare-fun bs!1868528 () Bool)

(assert (= bs!1868528 d!2190142))

(declare-fun m!7728450 () Bool)

(assert (=> bs!1868528 m!7728450))

(assert (=> b!7025222 d!2190142))

(assert (=> b!7025222 d!2190132))

(declare-fun d!2190144 () Bool)

(assert (=> d!2190144 (= (flatMap!2387 lt!2514104 lambda!412783) (choose!53070 lt!2514104 lambda!412783))))

(declare-fun bs!1868529 () Bool)

(assert (= bs!1868529 d!2190144))

(declare-fun m!7728452 () Bool)

(assert (=> bs!1868529 m!7728452))

(assert (=> b!7025211 d!2190144))

(declare-fun d!2190146 () Bool)

(declare-fun c!1305857 () Bool)

(declare-fun e!4223238 () Bool)

(assert (=> d!2190146 (= c!1305857 e!4223238)))

(declare-fun res!2867899 () Bool)

(assert (=> d!2190146 (=> (not res!2867899) (not e!4223238))))

(assert (=> d!2190146 (= res!2867899 (is-Cons!67724 (exprs!6936 lt!2514120)))))

(declare-fun e!4223236 () (Set Context!12872))

(assert (=> d!2190146 (= (derivationStepZipperUp!2050 lt!2514120 (h!74173 s!7408)) e!4223236)))

(declare-fun b!7025340 () Bool)

(assert (=> b!7025340 (= e!4223238 (nullable!7151 (h!74172 (exprs!6936 lt!2514120))))))

(declare-fun b!7025341 () Bool)

(declare-fun call!637808 () (Set Context!12872))

(assert (=> b!7025341 (= e!4223236 (set.union call!637808 (derivationStepZipperUp!2050 (Context!12873 (t!381605 (exprs!6936 lt!2514120))) (h!74173 s!7408))))))

(declare-fun b!7025342 () Bool)

(declare-fun e!4223237 () (Set Context!12872))

(assert (=> b!7025342 (= e!4223236 e!4223237)))

(declare-fun c!1305858 () Bool)

(assert (=> b!7025342 (= c!1305858 (is-Cons!67724 (exprs!6936 lt!2514120)))))

(declare-fun bm!637803 () Bool)

(assert (=> bm!637803 (= call!637808 (derivationStepZipperDown!2104 (h!74172 (exprs!6936 lt!2514120)) (Context!12873 (t!381605 (exprs!6936 lt!2514120))) (h!74173 s!7408)))))

(declare-fun b!7025343 () Bool)

(assert (=> b!7025343 (= e!4223237 call!637808)))

(declare-fun b!7025344 () Bool)

(assert (=> b!7025344 (= e!4223237 (as set.empty (Set Context!12872)))))

(assert (= (and d!2190146 res!2867899) b!7025340))

(assert (= (and d!2190146 c!1305857) b!7025341))

(assert (= (and d!2190146 (not c!1305857)) b!7025342))

(assert (= (and b!7025342 c!1305858) b!7025343))

(assert (= (and b!7025342 (not c!1305858)) b!7025344))

(assert (= (or b!7025341 b!7025343) bm!637803))

(declare-fun m!7728454 () Bool)

(assert (=> b!7025340 m!7728454))

(declare-fun m!7728456 () Bool)

(assert (=> b!7025341 m!7728456))

(declare-fun m!7728458 () Bool)

(assert (=> bm!637803 m!7728458))

(assert (=> b!7025211 d!2190146))

(declare-fun bs!1868530 () Bool)

(declare-fun d!2190148 () Bool)

(assert (= bs!1868530 (and d!2190148 b!7025222)))

(declare-fun lambda!412831 () Int)

(assert (=> bs!1868530 (= lambda!412831 lambda!412783)))

(declare-fun bs!1868531 () Bool)

(assert (= bs!1868531 (and d!2190148 d!2190138)))

(assert (=> bs!1868531 (= lambda!412831 lambda!412830)))

(assert (=> d!2190148 true))

(assert (=> d!2190148 (= (derivationStepZipper!2896 lt!2514104 (h!74173 s!7408)) (flatMap!2387 lt!2514104 lambda!412831))))

(declare-fun bs!1868532 () Bool)

(assert (= bs!1868532 d!2190148))

(declare-fun m!7728460 () Bool)

(assert (=> bs!1868532 m!7728460))

(assert (=> b!7025211 d!2190148))

(declare-fun d!2190150 () Bool)

(assert (=> d!2190150 (= (flatMap!2387 lt!2514104 lambda!412783) (dynLambda!27301 lambda!412783 lt!2514120))))

(declare-fun lt!2514256 () Unit!161543)

(assert (=> d!2190150 (= lt!2514256 (choose!53069 lt!2514104 lt!2514120 lambda!412783))))

(assert (=> d!2190150 (= lt!2514104 (set.insert lt!2514120 (as set.empty (Set Context!12872))))))

(assert (=> d!2190150 (= (lemmaFlatMapOnSingletonSet!1901 lt!2514104 lt!2514120 lambda!412783) lt!2514256)))

(declare-fun b_lambda!265551 () Bool)

(assert (=> (not b_lambda!265551) (not d!2190150)))

(declare-fun bs!1868533 () Bool)

(assert (= bs!1868533 d!2190150))

(assert (=> bs!1868533 m!7728272))

(declare-fun m!7728462 () Bool)

(assert (=> bs!1868533 m!7728462))

(declare-fun m!7728464 () Bool)

(assert (=> bs!1868533 m!7728464))

(assert (=> bs!1868533 m!7728270))

(assert (=> b!7025211 d!2190150))

(assert (=> b!7025211 d!2190128))

(declare-fun bs!1868534 () Bool)

(declare-fun d!2190152 () Bool)

(assert (= bs!1868534 (and d!2190152 b!7025215)))

(declare-fun lambda!412834 () Int)

(assert (=> bs!1868534 (= lambda!412834 lambda!412782)))

(assert (=> d!2190152 (= (inv!86460 setElem!48961) (forall!16342 (exprs!6936 setElem!48961) lambda!412834))))

(declare-fun bs!1868535 () Bool)

(assert (= bs!1868535 d!2190152))

(declare-fun m!7728466 () Bool)

(assert (=> bs!1868535 m!7728466))

(assert (=> setNonEmpty!48961 d!2190152))

(assert (=> b!7025210 d!2190128))

(declare-fun b!7025367 () Bool)

(declare-fun e!4223254 () (Set Context!12872))

(declare-fun e!4223252 () (Set Context!12872))

(assert (=> b!7025367 (= e!4223254 e!4223252)))

(declare-fun c!1305870 () Bool)

(assert (=> b!7025367 (= c!1305870 (is-Concat!26285 (h!74172 (exprs!6936 lt!2514103))))))

(declare-fun bm!637816 () Bool)

(declare-fun call!637825 () List!67848)

(declare-fun call!637823 () List!67848)

(assert (=> bm!637816 (= call!637825 call!637823)))

(declare-fun bm!637817 () Bool)

(declare-fun call!637822 () (Set Context!12872))

(declare-fun call!637821 () (Set Context!12872))

(assert (=> bm!637817 (= call!637822 call!637821)))

(declare-fun d!2190154 () Bool)

(declare-fun c!1305871 () Bool)

(assert (=> d!2190154 (= c!1305871 (and (is-ElementMatch!17440 (h!74172 (exprs!6936 lt!2514103))) (= (c!1305829 (h!74172 (exprs!6936 lt!2514103))) (h!74173 s!7408))))))

(declare-fun e!4223255 () (Set Context!12872))

(assert (=> d!2190154 (= (derivationStepZipperDown!2104 (h!74172 (exprs!6936 lt!2514103)) lt!2514120 (h!74173 s!7408)) e!4223255)))

(declare-fun c!1305872 () Bool)

(declare-fun bm!637818 () Bool)

(declare-fun $colon$colon!2557 (List!67848 Regex!17440) List!67848)

(assert (=> bm!637818 (= call!637823 ($colon$colon!2557 (exprs!6936 lt!2514120) (ite (or c!1305872 c!1305870) (regTwo!35392 (h!74172 (exprs!6936 lt!2514103))) (h!74172 (exprs!6936 lt!2514103)))))))

(declare-fun b!7025368 () Bool)

(declare-fun e!4223256 () (Set Context!12872))

(assert (=> b!7025368 (= e!4223256 (as set.empty (Set Context!12872)))))

(declare-fun b!7025369 () Bool)

(assert (=> b!7025369 (= e!4223255 (set.insert lt!2514120 (as set.empty (Set Context!12872))))))

(declare-fun b!7025370 () Bool)

(declare-fun e!4223253 () (Set Context!12872))

(assert (=> b!7025370 (= e!4223255 e!4223253)))

(declare-fun c!1305869 () Bool)

(assert (=> b!7025370 (= c!1305869 (is-Union!17440 (h!74172 (exprs!6936 lt!2514103))))))

(declare-fun b!7025371 () Bool)

(declare-fun call!637824 () (Set Context!12872))

(assert (=> b!7025371 (= e!4223254 (set.union call!637824 call!637822))))

(declare-fun bm!637819 () Bool)

(declare-fun call!637826 () (Set Context!12872))

(assert (=> bm!637819 (= call!637826 call!637822)))

(declare-fun b!7025372 () Bool)

(declare-fun c!1305873 () Bool)

(assert (=> b!7025372 (= c!1305873 (is-Star!17440 (h!74172 (exprs!6936 lt!2514103))))))

(assert (=> b!7025372 (= e!4223252 e!4223256)))

(declare-fun b!7025373 () Bool)

(assert (=> b!7025373 (= e!4223253 (set.union call!637821 call!637824))))

(declare-fun b!7025374 () Bool)

(assert (=> b!7025374 (= e!4223256 call!637826)))

(declare-fun b!7025375 () Bool)

(declare-fun e!4223251 () Bool)

(assert (=> b!7025375 (= c!1305872 e!4223251)))

(declare-fun res!2867902 () Bool)

(assert (=> b!7025375 (=> (not res!2867902) (not e!4223251))))

(assert (=> b!7025375 (= res!2867902 (is-Concat!26285 (h!74172 (exprs!6936 lt!2514103))))))

(assert (=> b!7025375 (= e!4223253 e!4223254)))

(declare-fun bm!637820 () Bool)

(assert (=> bm!637820 (= call!637824 (derivationStepZipperDown!2104 (ite c!1305869 (regTwo!35393 (h!74172 (exprs!6936 lt!2514103))) (regOne!35392 (h!74172 (exprs!6936 lt!2514103)))) (ite c!1305869 lt!2514120 (Context!12873 call!637823)) (h!74173 s!7408)))))

(declare-fun b!7025376 () Bool)

(assert (=> b!7025376 (= e!4223252 call!637826)))

(declare-fun bm!637821 () Bool)

(assert (=> bm!637821 (= call!637821 (derivationStepZipperDown!2104 (ite c!1305869 (regOne!35393 (h!74172 (exprs!6936 lt!2514103))) (ite c!1305872 (regTwo!35392 (h!74172 (exprs!6936 lt!2514103))) (ite c!1305870 (regOne!35392 (h!74172 (exprs!6936 lt!2514103))) (reg!17769 (h!74172 (exprs!6936 lt!2514103)))))) (ite (or c!1305869 c!1305872) lt!2514120 (Context!12873 call!637825)) (h!74173 s!7408)))))

(declare-fun b!7025377 () Bool)

(assert (=> b!7025377 (= e!4223251 (nullable!7151 (regOne!35392 (h!74172 (exprs!6936 lt!2514103)))))))

(assert (= (and d!2190154 c!1305871) b!7025369))

(assert (= (and d!2190154 (not c!1305871)) b!7025370))

(assert (= (and b!7025370 c!1305869) b!7025373))

(assert (= (and b!7025370 (not c!1305869)) b!7025375))

(assert (= (and b!7025375 res!2867902) b!7025377))

(assert (= (and b!7025375 c!1305872) b!7025371))

(assert (= (and b!7025375 (not c!1305872)) b!7025367))

(assert (= (and b!7025367 c!1305870) b!7025376))

(assert (= (and b!7025367 (not c!1305870)) b!7025372))

(assert (= (and b!7025372 c!1305873) b!7025374))

(assert (= (and b!7025372 (not c!1305873)) b!7025368))

(assert (= (or b!7025376 b!7025374) bm!637816))

(assert (= (or b!7025376 b!7025374) bm!637819))

(assert (= (or b!7025371 bm!637819) bm!637817))

(assert (= (or b!7025371 bm!637816) bm!637818))

(assert (= (or b!7025373 bm!637817) bm!637821))

(assert (= (or b!7025373 b!7025371) bm!637820))

(assert (=> b!7025369 m!7728270))

(declare-fun m!7728468 () Bool)

(assert (=> bm!637818 m!7728468))

(declare-fun m!7728470 () Bool)

(assert (=> b!7025377 m!7728470))

(declare-fun m!7728472 () Bool)

(assert (=> bm!637820 m!7728472))

(declare-fun m!7728474 () Bool)

(assert (=> bm!637821 m!7728474))

(assert (=> b!7025210 d!2190154))

(declare-fun b!7025380 () Bool)

(declare-fun res!2867903 () Bool)

(declare-fun e!4223258 () Bool)

(assert (=> b!7025380 (=> (not res!2867903) (not e!4223258))))

(declare-fun lt!2514257 () List!67848)

(assert (=> b!7025380 (= res!2867903 (= (size!41039 lt!2514257) (+ (size!41039 lt!2514115) (size!41039 (exprs!6936 ct2!306)))))))

(declare-fun b!7025381 () Bool)

(assert (=> b!7025381 (= e!4223258 (or (not (= (exprs!6936 ct2!306) Nil!67724)) (= lt!2514257 lt!2514115)))))

(declare-fun d!2190156 () Bool)

(assert (=> d!2190156 e!4223258))

(declare-fun res!2867904 () Bool)

(assert (=> d!2190156 (=> (not res!2867904) (not e!4223258))))

(assert (=> d!2190156 (= res!2867904 (= (content!13492 lt!2514257) (set.union (content!13492 lt!2514115) (content!13492 (exprs!6936 ct2!306)))))))

(declare-fun e!4223257 () List!67848)

(assert (=> d!2190156 (= lt!2514257 e!4223257)))

(declare-fun c!1305874 () Bool)

(assert (=> d!2190156 (= c!1305874 (is-Nil!67724 lt!2514115))))

(assert (=> d!2190156 (= (++!15473 lt!2514115 (exprs!6936 ct2!306)) lt!2514257)))

(declare-fun b!7025378 () Bool)

(assert (=> b!7025378 (= e!4223257 (exprs!6936 ct2!306))))

(declare-fun b!7025379 () Bool)

(assert (=> b!7025379 (= e!4223257 (Cons!67724 (h!74172 lt!2514115) (++!15473 (t!381605 lt!2514115) (exprs!6936 ct2!306))))))

(assert (= (and d!2190156 c!1305874) b!7025378))

(assert (= (and d!2190156 (not c!1305874)) b!7025379))

(assert (= (and d!2190156 res!2867904) b!7025380))

(assert (= (and b!7025380 res!2867903) b!7025381))

(declare-fun m!7728476 () Bool)

(assert (=> b!7025380 m!7728476))

(declare-fun m!7728478 () Bool)

(assert (=> b!7025380 m!7728478))

(assert (=> b!7025380 m!7728412))

(declare-fun m!7728480 () Bool)

(assert (=> d!2190156 m!7728480))

(declare-fun m!7728482 () Bool)

(assert (=> d!2190156 m!7728482))

(assert (=> d!2190156 m!7728418))

(declare-fun m!7728484 () Bool)

(assert (=> b!7025379 m!7728484))

(assert (=> b!7025210 d!2190156))

(assert (=> b!7025210 d!2190146))

(declare-fun d!2190158 () Bool)

(assert (=> d!2190158 (= (isEmpty!39488 (exprs!6936 lt!2514103)) (is-Nil!67724 (exprs!6936 lt!2514103)))))

(assert (=> b!7025220 d!2190158))

(declare-fun d!2190160 () Bool)

(declare-fun c!1305875 () Bool)

(assert (=> d!2190160 (= c!1305875 (isEmpty!39490 s!7408))))

(declare-fun e!4223259 () Bool)

(assert (=> d!2190160 (= (matchZipper!2980 lt!2514118 s!7408) e!4223259)))

(declare-fun b!7025382 () Bool)

(assert (=> b!7025382 (= e!4223259 (nullableZipper!2561 lt!2514118))))

(declare-fun b!7025383 () Bool)

(assert (=> b!7025383 (= e!4223259 (matchZipper!2980 (derivationStepZipper!2896 lt!2514118 (head!14237 s!7408)) (tail!13511 s!7408)))))

(assert (= (and d!2190160 c!1305875) b!7025382))

(assert (= (and d!2190160 (not c!1305875)) b!7025383))

(declare-fun m!7728486 () Bool)

(assert (=> d!2190160 m!7728486))

(declare-fun m!7728488 () Bool)

(assert (=> b!7025382 m!7728488))

(declare-fun m!7728490 () Bool)

(assert (=> b!7025383 m!7728490))

(assert (=> b!7025383 m!7728490))

(declare-fun m!7728492 () Bool)

(assert (=> b!7025383 m!7728492))

(declare-fun m!7728494 () Bool)

(assert (=> b!7025383 m!7728494))

(assert (=> b!7025383 m!7728492))

(assert (=> b!7025383 m!7728494))

(declare-fun m!7728496 () Bool)

(assert (=> b!7025383 m!7728496))

(assert (=> start!678170 d!2190160))

(declare-fun bs!1868536 () Bool)

(declare-fun d!2190162 () Bool)

(assert (= bs!1868536 (and d!2190162 b!7025215)))

(declare-fun lambda!412839 () Int)

(assert (=> bs!1868536 (= lambda!412839 lambda!412781)))

(assert (=> d!2190162 true))

(assert (=> d!2190162 (= (appendTo!561 z1!570 ct2!306) (map!15728 z1!570 lambda!412839))))

(declare-fun bs!1868537 () Bool)

(assert (= bs!1868537 d!2190162))

(declare-fun m!7728498 () Bool)

(assert (=> bs!1868537 m!7728498))

(assert (=> start!678170 d!2190162))

(declare-fun bs!1868538 () Bool)

(declare-fun d!2190164 () Bool)

(assert (= bs!1868538 (and d!2190164 b!7025215)))

(declare-fun lambda!412840 () Int)

(assert (=> bs!1868538 (= lambda!412840 lambda!412782)))

(declare-fun bs!1868539 () Bool)

(assert (= bs!1868539 (and d!2190164 d!2190152)))

(assert (=> bs!1868539 (= lambda!412840 lambda!412834)))

(assert (=> d!2190164 (= (inv!86460 ct2!306) (forall!16342 (exprs!6936 ct2!306) lambda!412840))))

(declare-fun bs!1868540 () Bool)

(assert (= bs!1868540 d!2190164))

(declare-fun m!7728500 () Bool)

(assert (=> bs!1868540 m!7728500))

(assert (=> start!678170 d!2190164))

(declare-fun d!2190166 () Bool)

(declare-fun c!1305877 () Bool)

(assert (=> d!2190166 (= c!1305877 (isEmpty!39490 (t!381606 s!7408)))))

(declare-fun e!4223260 () Bool)

(assert (=> d!2190166 (= (matchZipper!2980 lt!2514106 (t!381606 s!7408)) e!4223260)))

(declare-fun b!7025384 () Bool)

(assert (=> b!7025384 (= e!4223260 (nullableZipper!2561 lt!2514106))))

(declare-fun b!7025385 () Bool)

(assert (=> b!7025385 (= e!4223260 (matchZipper!2980 (derivationStepZipper!2896 lt!2514106 (head!14237 (t!381606 s!7408))) (tail!13511 (t!381606 s!7408))))))

(assert (= (and d!2190166 c!1305877) b!7025384))

(assert (= (and d!2190166 (not c!1305877)) b!7025385))

(assert (=> d!2190166 m!7728378))

(declare-fun m!7728502 () Bool)

(assert (=> b!7025384 m!7728502))

(assert (=> b!7025385 m!7728382))

(assert (=> b!7025385 m!7728382))

(declare-fun m!7728504 () Bool)

(assert (=> b!7025385 m!7728504))

(assert (=> b!7025385 m!7728386))

(assert (=> b!7025385 m!7728504))

(assert (=> b!7025385 m!7728386))

(declare-fun m!7728506 () Bool)

(assert (=> b!7025385 m!7728506))

(assert (=> b!7025219 d!2190166))

(assert (=> b!7025219 d!2190128))

(assert (=> b!7025209 d!2190166))

(declare-fun d!2190168 () Bool)

(declare-fun e!4223263 () Bool)

(assert (=> d!2190168 e!4223263))

(declare-fun res!2867907 () Bool)

(assert (=> d!2190168 (=> (not res!2867907) (not e!4223263))))

(declare-fun lt!2514262 () Context!12872)

(declare-fun dynLambda!27302 (Int Context!12872) Bool)

(assert (=> d!2190168 (= res!2867907 (dynLambda!27302 lambda!412780 lt!2514262))))

(declare-fun getWitness!1431 (List!67850 Int) Context!12872)

(assert (=> d!2190168 (= lt!2514262 (getWitness!1431 (toList!10783 lt!2514118) lambda!412780))))

(declare-fun exists!3350 ((Set Context!12872) Int) Bool)

(assert (=> d!2190168 (exists!3350 lt!2514118 lambda!412780)))

(assert (=> d!2190168 (= (getWitness!1429 lt!2514118 lambda!412780) lt!2514262)))

(declare-fun b!7025388 () Bool)

(assert (=> b!7025388 (= e!4223263 (set.member lt!2514262 lt!2514118))))

(assert (= (and d!2190168 res!2867907) b!7025388))

(declare-fun b_lambda!265553 () Bool)

(assert (=> (not b_lambda!265553) (not d!2190168)))

(declare-fun m!7728508 () Bool)

(assert (=> d!2190168 m!7728508))

(assert (=> d!2190168 m!7728232))

(assert (=> d!2190168 m!7728232))

(declare-fun m!7728510 () Bool)

(assert (=> d!2190168 m!7728510))

(declare-fun m!7728512 () Bool)

(assert (=> d!2190168 m!7728512))

(declare-fun m!7728514 () Bool)

(assert (=> b!7025388 m!7728514))

(assert (=> b!7025208 d!2190168))

(declare-fun bs!1868541 () Bool)

(declare-fun d!2190170 () Bool)

(assert (= bs!1868541 (and d!2190170 b!7025208)))

(declare-fun lambda!412843 () Int)

(assert (=> bs!1868541 (= lambda!412843 lambda!412780)))

(assert (=> d!2190170 true))

(assert (=> d!2190170 (exists!3348 lt!2514124 lambda!412843)))

(declare-fun lt!2514265 () Unit!161543)

(declare-fun choose!53071 (List!67850 List!67849) Unit!161543)

(assert (=> d!2190170 (= lt!2514265 (choose!53071 lt!2514124 s!7408))))

(declare-fun content!13493 (List!67850) (Set Context!12872))

(assert (=> d!2190170 (matchZipper!2980 (content!13493 lt!2514124) s!7408)))

(assert (=> d!2190170 (= (lemmaZipperMatchesExistsMatchingContext!379 lt!2514124 s!7408) lt!2514265)))

(declare-fun bs!1868542 () Bool)

(assert (= bs!1868542 d!2190170))

(declare-fun m!7728516 () Bool)

(assert (=> bs!1868542 m!7728516))

(declare-fun m!7728518 () Bool)

(assert (=> bs!1868542 m!7728518))

(declare-fun m!7728520 () Bool)

(assert (=> bs!1868542 m!7728520))

(assert (=> bs!1868542 m!7728520))

(declare-fun m!7728522 () Bool)

(assert (=> bs!1868542 m!7728522))

(assert (=> b!7025208 d!2190170))

(declare-fun d!2190172 () Bool)

(declare-fun c!1305880 () Bool)

(assert (=> d!2190172 (= c!1305880 (isEmpty!39490 s!7408))))

(declare-fun e!4223264 () Bool)

(assert (=> d!2190172 (= (matchZipper!2980 lt!2514133 s!7408) e!4223264)))

(declare-fun b!7025389 () Bool)

(assert (=> b!7025389 (= e!4223264 (nullableZipper!2561 lt!2514133))))

(declare-fun b!7025390 () Bool)

(assert (=> b!7025390 (= e!4223264 (matchZipper!2980 (derivationStepZipper!2896 lt!2514133 (head!14237 s!7408)) (tail!13511 s!7408)))))

(assert (= (and d!2190172 c!1305880) b!7025389))

(assert (= (and d!2190172 (not c!1305880)) b!7025390))

(assert (=> d!2190172 m!7728486))

(declare-fun m!7728524 () Bool)

(assert (=> b!7025389 m!7728524))

(assert (=> b!7025390 m!7728490))

(assert (=> b!7025390 m!7728490))

(declare-fun m!7728526 () Bool)

(assert (=> b!7025390 m!7728526))

(assert (=> b!7025390 m!7728494))

(assert (=> b!7025390 m!7728526))

(assert (=> b!7025390 m!7728494))

(declare-fun m!7728528 () Bool)

(assert (=> b!7025390 m!7728528))

(assert (=> b!7025208 d!2190172))

(declare-fun bs!1868543 () Bool)

(declare-fun d!2190174 () Bool)

(assert (= bs!1868543 (and d!2190174 b!7025208)))

(declare-fun lambda!412846 () Int)

(assert (=> bs!1868543 (not (= lambda!412846 lambda!412780))))

(declare-fun bs!1868544 () Bool)

(assert (= bs!1868544 (and d!2190174 d!2190170)))

(assert (=> bs!1868544 (not (= lambda!412846 lambda!412843))))

(assert (=> d!2190174 true))

(declare-fun order!28137 () Int)

(declare-fun dynLambda!27303 (Int Int) Int)

(assert (=> d!2190174 (< (dynLambda!27303 order!28137 lambda!412780) (dynLambda!27303 order!28137 lambda!412846))))

(declare-fun forall!16343 (List!67850 Int) Bool)

(assert (=> d!2190174 (= (exists!3348 lt!2514124 lambda!412780) (not (forall!16343 lt!2514124 lambda!412846)))))

(declare-fun bs!1868545 () Bool)

(assert (= bs!1868545 d!2190174))

(declare-fun m!7728530 () Bool)

(assert (=> bs!1868545 m!7728530))

(assert (=> b!7025208 d!2190174))

(declare-fun d!2190176 () Bool)

(declare-fun e!4223267 () Bool)

(assert (=> d!2190176 e!4223267))

(declare-fun res!2867911 () Bool)

(assert (=> d!2190176 (=> (not res!2867911) (not e!4223267))))

(declare-fun lt!2514268 () List!67850)

(declare-fun noDuplicate!2610 (List!67850) Bool)

(assert (=> d!2190176 (= res!2867911 (noDuplicate!2610 lt!2514268))))

(declare-fun choose!53072 ((Set Context!12872)) List!67850)

(assert (=> d!2190176 (= lt!2514268 (choose!53072 lt!2514118))))

(assert (=> d!2190176 (= (toList!10783 lt!2514118) lt!2514268)))

(declare-fun b!7025395 () Bool)

(assert (=> b!7025395 (= e!4223267 (= (content!13493 lt!2514268) lt!2514118))))

(assert (= (and d!2190176 res!2867911) b!7025395))

(declare-fun m!7728532 () Bool)

(assert (=> d!2190176 m!7728532))

(declare-fun m!7728534 () Bool)

(assert (=> d!2190176 m!7728534))

(declare-fun m!7728536 () Bool)

(assert (=> b!7025395 m!7728536))

(assert (=> b!7025208 d!2190176))

(assert (=> b!7025218 d!2190132))

(assert (=> b!7025217 d!2190166))

(assert (=> b!7025217 d!2190128))

(declare-fun condSetEmpty!48967 () Bool)

(assert (=> setNonEmpty!48961 (= condSetEmpty!48967 (= setRest!48961 (as set.empty (Set Context!12872))))))

(declare-fun setRes!48967 () Bool)

(assert (=> setNonEmpty!48961 (= tp!1935375 setRes!48967)))

(declare-fun setIsEmpty!48967 () Bool)

(assert (=> setIsEmpty!48967 setRes!48967))

(declare-fun tp!1935393 () Bool)

(declare-fun setElem!48967 () Context!12872)

(declare-fun setNonEmpty!48967 () Bool)

(declare-fun e!4223270 () Bool)

(assert (=> setNonEmpty!48967 (= setRes!48967 (and tp!1935393 (inv!86460 setElem!48967) e!4223270))))

(declare-fun setRest!48967 () (Set Context!12872))

(assert (=> setNonEmpty!48967 (= setRest!48961 (set.union (set.insert setElem!48967 (as set.empty (Set Context!12872))) setRest!48967))))

(declare-fun b!7025400 () Bool)

(declare-fun tp!1935392 () Bool)

(assert (=> b!7025400 (= e!4223270 tp!1935392)))

(assert (= (and setNonEmpty!48961 condSetEmpty!48967) setIsEmpty!48967))

(assert (= (and setNonEmpty!48961 (not condSetEmpty!48967)) setNonEmpty!48967))

(assert (= setNonEmpty!48967 b!7025400))

(declare-fun m!7728538 () Bool)

(assert (=> setNonEmpty!48967 m!7728538))

(declare-fun b!7025405 () Bool)

(declare-fun e!4223273 () Bool)

(declare-fun tp!1935398 () Bool)

(declare-fun tp!1935399 () Bool)

(assert (=> b!7025405 (= e!4223273 (and tp!1935398 tp!1935399))))

(assert (=> b!7025224 (= tp!1935374 e!4223273)))

(assert (= (and b!7025224 (is-Cons!67724 (exprs!6936 ct2!306))) b!7025405))

(declare-fun b!7025406 () Bool)

(declare-fun e!4223274 () Bool)

(declare-fun tp!1935400 () Bool)

(declare-fun tp!1935401 () Bool)

(assert (=> b!7025406 (= e!4223274 (and tp!1935400 tp!1935401))))

(assert (=> b!7025214 (= tp!1935372 e!4223274)))

(assert (= (and b!7025214 (is-Cons!67724 (exprs!6936 setElem!48961))) b!7025406))

(declare-fun b!7025411 () Bool)

(declare-fun e!4223277 () Bool)

(declare-fun tp!1935404 () Bool)

(assert (=> b!7025411 (= e!4223277 (and tp_is_empty!44105 tp!1935404))))

(assert (=> b!7025223 (= tp!1935373 e!4223277)))

(assert (= (and b!7025223 (is-Cons!67725 (t!381606 s!7408))) b!7025411))

(declare-fun b_lambda!265555 () Bool)

(assert (= b_lambda!265553 (or b!7025208 b_lambda!265555)))

(declare-fun bs!1868546 () Bool)

(declare-fun d!2190178 () Bool)

(assert (= bs!1868546 (and d!2190178 b!7025208)))

(assert (=> bs!1868546 (= (dynLambda!27302 lambda!412780 lt!2514262) (matchZipper!2980 (set.insert lt!2514262 (as set.empty (Set Context!12872))) s!7408))))

(declare-fun m!7728540 () Bool)

(assert (=> bs!1868546 m!7728540))

(assert (=> bs!1868546 m!7728540))

(declare-fun m!7728542 () Bool)

(assert (=> bs!1868546 m!7728542))

(assert (=> d!2190168 d!2190178))

(declare-fun b_lambda!265557 () Bool)

(assert (= b_lambda!265549 (or b!7025222 b_lambda!265557)))

(declare-fun bs!1868547 () Bool)

(declare-fun d!2190180 () Bool)

(assert (= bs!1868547 (and d!2190180 b!7025222)))

(assert (=> bs!1868547 (= (dynLambda!27301 lambda!412783 lt!2514108) (derivationStepZipperUp!2050 lt!2514108 (h!74173 s!7408)))))

(assert (=> bs!1868547 m!7728286))

(assert (=> d!2190136 d!2190180))

(declare-fun b_lambda!265559 () Bool)

(assert (= b_lambda!265547 (or b!7025215 b_lambda!265559)))

(declare-fun bs!1868548 () Bool)

(declare-fun d!2190182 () Bool)

(assert (= bs!1868548 (and d!2190182 b!7025215)))

(declare-fun lt!2514269 () Unit!161543)

(assert (=> bs!1868548 (= lt!2514269 (lemmaConcatPreservesForall!761 (exprs!6936 lt!2514252) (exprs!6936 ct2!306) lambda!412782))))

(assert (=> bs!1868548 (= (dynLambda!27300 lambda!412781 lt!2514252) (Context!12873 (++!15473 (exprs!6936 lt!2514252) (exprs!6936 ct2!306))))))

(declare-fun m!7728544 () Bool)

(assert (=> bs!1868548 m!7728544))

(declare-fun m!7728546 () Bool)

(assert (=> bs!1868548 m!7728546))

(assert (=> d!2190134 d!2190182))

(declare-fun b_lambda!265561 () Bool)

(assert (= b_lambda!265551 (or b!7025222 b_lambda!265561)))

(declare-fun bs!1868549 () Bool)

(declare-fun d!2190184 () Bool)

(assert (= bs!1868549 (and d!2190184 b!7025222)))

(assert (=> bs!1868549 (= (dynLambda!27301 lambda!412783 lt!2514120) (derivationStepZipperUp!2050 lt!2514120 (h!74173 s!7408)))))

(assert (=> bs!1868549 m!7728262))

(assert (=> d!2190150 d!2190184))

(push 1)

(assert (not d!2190172))

(assert (not b!7025406))

(assert (not d!2190150))

(assert (not d!2190124))

(assert (not b!7025316))

(assert (not bm!637820))

(assert (not bm!637802))

(assert (not b!7025389))

(assert (not d!2190160))

(assert (not b!7025380))

(assert (not d!2190176))

(assert (not d!2190164))

(assert (not d!2190170))

(assert (not b!7025382))

(assert (not d!2190120))

(assert (not b!7025384))

(assert (not d!2190122))

(assert (not b_lambda!265561))

(assert (not bs!1868549))

(assert (not b!7025383))

(assert (not d!2190162))

(assert (not b!7025335))

(assert (not bm!637803))

(assert (not d!2190144))

(assert (not b!7025400))

(assert (not bm!637818))

(assert (not b!7025379))

(assert (not d!2190138))

(assert (not b!7025385))

(assert (not b!7025306))

(assert (not d!2190136))

(assert (not d!2190166))

(assert (not d!2190132))

(assert (not bs!1868546))

(assert tp_is_empty!44105)

(assert (not d!2190126))

(assert (not d!2190116))

(assert (not b!7025405))

(assert (not b!7025317))

(assert (not d!2190148))

(assert (not b!7025395))

(assert (not b!7025341))

(assert (not b!7025305))

(assert (not setNonEmpty!48967))

(assert (not b!7025302))

(assert (not b!7025303))

(assert (not bs!1868548))

(assert (not bs!1868547))

(assert (not b!7025304))

(assert (not d!2190128))

(assert (not bm!637821))

(assert (not b!7025301))

(assert (not d!2190134))

(assert (not b!7025411))

(assert (not d!2190156))

(assert (not d!2190130))

(assert (not d!2190174))

(assert (not b!7025377))

(assert (not d!2190168))

(assert (not b!7025390))

(assert (not d!2190152))

(assert (not b!7025296))

(assert (not d!2190142))

(assert (not b_lambda!265559))

(assert (not b!7025340))

(assert (not b_lambda!265557))

(assert (not b!7025336))

(assert (not b_lambda!265555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

