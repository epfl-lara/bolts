; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672336 () Bool)

(assert start!672336)

(declare-fun b!6993033 () Bool)

(assert (=> b!6993033 true))

(declare-fun b!6993054 () Bool)

(assert (=> b!6993054 true))

(declare-fun b!6993035 () Bool)

(assert (=> b!6993035 true))

(declare-fun e!4203319 () Bool)

(declare-fun e!4203309 () Bool)

(assert (=> b!6993033 (= e!4203319 (not e!4203309))))

(declare-fun res!2852221 () Bool)

(assert (=> b!6993033 (=> res!2852221 e!4203309)))

(declare-datatypes ((C!34754 0))(
  ( (C!34755 (val!27079 Int)) )
))
(declare-datatypes ((Regex!17242 0))(
  ( (ElementMatch!17242 (c!1297295 C!34754)) (Concat!26087 (regOne!34996 Regex!17242) (regTwo!34996 Regex!17242)) (EmptyExpr!17242) (Star!17242 (reg!17571 Regex!17242)) (EmptyLang!17242) (Union!17242 (regOne!34997 Regex!17242) (regTwo!34997 Regex!17242)) )
))
(declare-datatypes ((List!67271 0))(
  ( (Nil!67147) (Cons!67147 (h!73595 Regex!17242) (t!381018 List!67271)) )
))
(declare-datatypes ((Context!12476 0))(
  ( (Context!12477 (exprs!6738 List!67271)) )
))
(declare-fun lt!2490141 () (Set Context!12476))

(declare-datatypes ((List!67272 0))(
  ( (Nil!67148) (Cons!67148 (h!73596 C!34754) (t!381019 List!67272)) )
))
(declare-fun s!7408 () List!67272)

(declare-fun matchZipper!2782 ((Set Context!12476) List!67272) Bool)

(assert (=> b!6993033 (= res!2852221 (not (matchZipper!2782 lt!2490141 s!7408)))))

(declare-fun lt!2490164 () Context!12476)

(assert (=> b!6993033 (= lt!2490141 (set.insert lt!2490164 (as set.empty (Set Context!12476))))))

(declare-fun lt!2490130 () (Set Context!12476))

(declare-fun lambda!403125 () Int)

(declare-fun getWitness!1150 ((Set Context!12476) Int) Context!12476)

(assert (=> b!6993033 (= lt!2490164 (getWitness!1150 lt!2490130 lambda!403125))))

(declare-datatypes ((List!67273 0))(
  ( (Nil!67149) (Cons!67149 (h!73597 Context!12476) (t!381020 List!67273)) )
))
(declare-fun lt!2490144 () List!67273)

(declare-fun exists!3038 (List!67273 Int) Bool)

(assert (=> b!6993033 (exists!3038 lt!2490144 lambda!403125)))

(declare-datatypes ((Unit!161139 0))(
  ( (Unit!161140) )
))
(declare-fun lt!2490131 () Unit!161139)

(declare-fun lemmaZipperMatchesExistsMatchingContext!211 (List!67273 List!67272) Unit!161139)

(assert (=> b!6993033 (= lt!2490131 (lemmaZipperMatchesExistsMatchingContext!211 lt!2490144 s!7408))))

(declare-fun toList!10602 ((Set Context!12476)) List!67273)

(assert (=> b!6993033 (= lt!2490144 (toList!10602 lt!2490130))))

(declare-fun b!6993034 () Bool)

(declare-fun e!4203315 () Bool)

(declare-fun e!4203317 () Bool)

(assert (=> b!6993034 (= e!4203315 e!4203317)))

(declare-fun res!2852210 () Bool)

(assert (=> b!6993034 (=> res!2852210 e!4203317)))

(declare-fun e!4203324 () Bool)

(assert (=> b!6993034 (= res!2852210 e!4203324)))

(declare-fun res!2852222 () Bool)

(assert (=> b!6993034 (=> (not res!2852222) (not e!4203324))))

(declare-fun lt!2490145 () Bool)

(declare-fun lt!2490135 () Bool)

(assert (=> b!6993034 (= res!2852222 (not (= lt!2490145 lt!2490135)))))

(declare-fun lt!2490163 () (Set Context!12476))

(assert (=> b!6993034 (= lt!2490145 (matchZipper!2782 lt!2490163 (t!381019 s!7408)))))

(declare-fun lt!2490132 () Unit!161139)

(declare-fun ct2!306 () Context!12476)

(declare-fun lambda!403127 () Int)

(declare-fun lt!2490158 () List!67271)

(declare-fun lemmaConcatPreservesForall!578 (List!67271 List!67271 Int) Unit!161139)

(assert (=> b!6993034 (= lt!2490132 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490156 () (Set Context!12476))

(declare-fun e!4203321 () Bool)

(assert (=> b!6993034 (= (matchZipper!2782 lt!2490156 (t!381019 s!7408)) e!4203321)))

(declare-fun res!2852209 () Bool)

(assert (=> b!6993034 (=> res!2852209 e!4203321)))

(assert (=> b!6993034 (= res!2852209 lt!2490135)))

(declare-fun lt!2490142 () (Set Context!12476))

(assert (=> b!6993034 (= lt!2490135 (matchZipper!2782 lt!2490142 (t!381019 s!7408)))))

(declare-fun lt!2490136 () (Set Context!12476))

(declare-fun lt!2490165 () Unit!161139)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1415 ((Set Context!12476) (Set Context!12476) List!67272) Unit!161139)

(assert (=> b!6993034 (= lt!2490165 (lemmaZipperConcatMatchesSameAsBothZippers!1415 lt!2490142 lt!2490136 (t!381019 s!7408)))))

(declare-fun lt!2490129 () Unit!161139)

(assert (=> b!6993034 (= lt!2490129 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490152 () Unit!161139)

(assert (=> b!6993034 (= lt!2490152 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun e!4203313 () Bool)

(declare-fun e!4203322 () Bool)

(assert (=> b!6993035 (= e!4203313 e!4203322)))

(declare-fun res!2852217 () Bool)

(assert (=> b!6993035 (=> res!2852217 e!4203322)))

(declare-fun lt!2490161 () (Set Context!12476))

(declare-fun derivationStepZipper!2722 ((Set Context!12476) C!34754) (Set Context!12476))

(assert (=> b!6993035 (= res!2852217 (not (= (derivationStepZipper!2722 lt!2490161 (h!73596 s!7408)) lt!2490163)))))

(declare-fun lt!2490128 () Context!12476)

(declare-fun lambda!403128 () Int)

(declare-fun flatMap!2228 ((Set Context!12476) Int) (Set Context!12476))

(declare-fun derivationStepZipperUp!1892 (Context!12476 C!34754) (Set Context!12476))

(assert (=> b!6993035 (= (flatMap!2228 lt!2490161 lambda!403128) (derivationStepZipperUp!1892 lt!2490128 (h!73596 s!7408)))))

(declare-fun lt!2490139 () Unit!161139)

(declare-fun lemmaFlatMapOnSingletonSet!1743 ((Set Context!12476) Context!12476 Int) Unit!161139)

(assert (=> b!6993035 (= lt!2490139 (lemmaFlatMapOnSingletonSet!1743 lt!2490161 lt!2490128 lambda!403128))))

(assert (=> b!6993035 (= lt!2490163 (derivationStepZipperUp!1892 lt!2490128 (h!73596 s!7408)))))

(declare-fun lt!2490166 () Context!12476)

(declare-fun lt!2490146 () Unit!161139)

(assert (=> b!6993035 (= lt!2490146 (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490166) (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993036 () Bool)

(declare-fun res!2852224 () Bool)

(declare-fun e!4203312 () Bool)

(assert (=> b!6993036 (=> res!2852224 e!4203312)))

(declare-fun lt!2490170 () Context!12476)

(declare-fun lt!2490155 () Int)

(declare-fun zipperDepthTotal!463 (List!67273) Int)

(assert (=> b!6993036 (= res!2852224 (>= (zipperDepthTotal!463 (Cons!67149 lt!2490170 Nil!67149)) lt!2490155))))

(declare-fun b!6993038 () Bool)

(declare-fun ++!15187 (List!67272 List!67272) List!67272)

(assert (=> b!6993038 (= e!4203312 (= (++!15187 Nil!67148 s!7408) s!7408))))

(declare-fun lt!2490126 () (Set Context!12476))

(declare-datatypes ((tuple2!67830 0))(
  ( (tuple2!67831 (_1!37218 List!67272) (_2!37218 List!67272)) )
))
(declare-datatypes ((Option!16747 0))(
  ( (None!16746) (Some!16746 (v!53018 tuple2!67830)) )
))
(declare-fun isDefined!13448 (Option!16747) Bool)

(declare-fun findConcatSeparationZippers!263 ((Set Context!12476) (Set Context!12476) List!67272 List!67272 List!67272) Option!16747)

(assert (=> b!6993038 (isDefined!13448 (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) Nil!67148 s!7408 s!7408))))

(declare-fun lt!2490153 () Unit!161139)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!263 ((Set Context!12476) Context!12476 List!67272) Unit!161139)

(assert (=> b!6993038 (= lt!2490153 (lemmaConcatZipperMatchesStringThenFindConcatDefined!263 lt!2490126 ct2!306 s!7408))))

(declare-fun setElem!47922 () Context!12476)

(declare-fun setNonEmpty!47922 () Bool)

(declare-fun tp!1930225 () Bool)

(declare-fun setRes!47922 () Bool)

(declare-fun e!4203320 () Bool)

(declare-fun inv!85965 (Context!12476) Bool)

(assert (=> setNonEmpty!47922 (= setRes!47922 (and tp!1930225 (inv!85965 setElem!47922) e!4203320))))

(declare-fun z1!570 () (Set Context!12476))

(declare-fun setRest!47922 () (Set Context!12476))

(assert (=> setNonEmpty!47922 (= z1!570 (set.union (set.insert setElem!47922 (as set.empty (Set Context!12476))) setRest!47922))))

(declare-fun b!6993039 () Bool)

(declare-fun res!2852218 () Bool)

(assert (=> b!6993039 (=> res!2852218 e!4203322)))

(declare-fun isEmpty!39188 (List!67271) Bool)

(assert (=> b!6993039 (= res!2852218 (isEmpty!39188 (exprs!6738 lt!2490166)))))

(declare-fun b!6993040 () Bool)

(declare-fun e!4203323 () Bool)

(assert (=> b!6993040 (= e!4203317 e!4203323)))

(declare-fun res!2852211 () Bool)

(assert (=> b!6993040 (=> res!2852211 e!4203323)))

(assert (=> b!6993040 (= res!2852211 (not (matchZipper!2782 lt!2490136 (t!381019 s!7408))))))

(declare-fun lt!2490127 () Unit!161139)

(assert (=> b!6993040 (= lt!2490127 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993041 () Bool)

(declare-fun e!4203325 () Bool)

(declare-fun e!4203316 () Bool)

(assert (=> b!6993041 (= e!4203325 e!4203316)))

(declare-fun res!2852214 () Bool)

(assert (=> b!6993041 (=> res!2852214 e!4203316)))

(declare-fun lt!2490148 () (Set Context!12476))

(assert (=> b!6993041 (= res!2852214 (not (matchZipper!2782 lt!2490148 s!7408)))))

(declare-fun lt!2490154 () Unit!161139)

(assert (=> b!6993041 (= lt!2490154 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993042 () Bool)

(declare-fun tp!1930224 () Bool)

(assert (=> b!6993042 (= e!4203320 tp!1930224)))

(declare-fun b!6993043 () Bool)

(declare-fun res!2852216 () Bool)

(assert (=> b!6993043 (=> (not res!2852216) (not e!4203319))))

(assert (=> b!6993043 (= res!2852216 (is-Cons!67148 s!7408))))

(declare-fun b!6993044 () Bool)

(declare-fun e!4203311 () Bool)

(assert (=> b!6993044 (= e!4203311 e!4203315)))

(declare-fun res!2852215 () Bool)

(assert (=> b!6993044 (=> res!2852215 e!4203315)))

(assert (=> b!6993044 (= res!2852215 (not (= lt!2490163 lt!2490156)))))

(assert (=> b!6993044 (= lt!2490156 (set.union lt!2490142 lt!2490136))))

(declare-fun lt!2490160 () Context!12476)

(assert (=> b!6993044 (= lt!2490136 (derivationStepZipperUp!1892 lt!2490160 (h!73596 s!7408)))))

(declare-fun derivationStepZipperDown!1960 (Regex!17242 Context!12476 C!34754) (Set Context!12476))

(assert (=> b!6993044 (= lt!2490142 (derivationStepZipperDown!1960 (h!73595 (exprs!6738 lt!2490166)) lt!2490160 (h!73596 s!7408)))))

(declare-fun ++!15188 (List!67271 List!67271) List!67271)

(assert (=> b!6993044 (= lt!2490160 (Context!12477 (++!15188 lt!2490158 (exprs!6738 ct2!306))))))

(declare-fun lt!2490150 () Unit!161139)

(assert (=> b!6993044 (= lt!2490150 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490169 () Unit!161139)

(assert (=> b!6993044 (= lt!2490169 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993045 () Bool)

(declare-fun e!4203318 () Bool)

(assert (=> b!6993045 (= e!4203318 e!4203313)))

(declare-fun res!2852208 () Bool)

(assert (=> b!6993045 (=> res!2852208 e!4203313)))

(assert (=> b!6993045 (= res!2852208 (not (= lt!2490161 lt!2490141)))))

(assert (=> b!6993045 (= lt!2490161 (set.insert lt!2490128 (as set.empty (Set Context!12476))))))

(declare-fun lt!2490138 () Unit!161139)

(assert (=> b!6993045 (= lt!2490138 (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490166) (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993046 () Bool)

(declare-fun res!2852219 () Bool)

(assert (=> b!6993046 (=> res!2852219 e!4203317)))

(assert (=> b!6993046 (= res!2852219 (not lt!2490145))))

(declare-fun b!6993047 () Bool)

(assert (=> b!6993047 (= e!4203322 e!4203311)))

(declare-fun res!2852213 () Bool)

(assert (=> b!6993047 (=> res!2852213 e!4203311)))

(declare-fun nullable!7002 (Regex!17242) Bool)

(assert (=> b!6993047 (= res!2852213 (not (nullable!7002 (h!73595 (exprs!6738 lt!2490166)))))))

(assert (=> b!6993047 (= lt!2490170 (Context!12477 lt!2490158))))

(declare-fun tail!13264 (List!67271) List!67271)

(assert (=> b!6993047 (= lt!2490158 (tail!13264 (exprs!6738 lt!2490166)))))

(declare-fun b!6993048 () Bool)

(assert (=> b!6993048 (= e!4203324 (not (matchZipper!2782 lt!2490136 (t!381019 s!7408))))))

(declare-fun lt!2490167 () Unit!161139)

(assert (=> b!6993048 (= lt!2490167 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun b!6993049 () Bool)

(declare-fun e!4203314 () Bool)

(declare-fun tp!1930226 () Bool)

(assert (=> b!6993049 (= e!4203314 tp!1930226)))

(declare-fun b!6993050 () Bool)

(assert (=> b!6993050 (= e!4203323 e!4203325)))

(declare-fun res!2852220 () Bool)

(assert (=> b!6993050 (=> res!2852220 e!4203325)))

(assert (=> b!6993050 (= res!2852220 (not (= (derivationStepZipper!2722 lt!2490148 (h!73596 s!7408)) lt!2490136)))))

(declare-fun lt!2490124 () Unit!161139)

(assert (=> b!6993050 (= lt!2490124 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490151 () Unit!161139)

(assert (=> b!6993050 (= lt!2490151 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(assert (=> b!6993050 (= (flatMap!2228 lt!2490148 lambda!403128) (derivationStepZipperUp!1892 lt!2490160 (h!73596 s!7408)))))

(declare-fun lt!2490133 () Unit!161139)

(assert (=> b!6993050 (= lt!2490133 (lemmaFlatMapOnSingletonSet!1743 lt!2490148 lt!2490160 lambda!403128))))

(assert (=> b!6993050 (= lt!2490148 (set.insert lt!2490160 (as set.empty (Set Context!12476))))))

(declare-fun lt!2490125 () Unit!161139)

(assert (=> b!6993050 (= lt!2490125 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490147 () Unit!161139)

(assert (=> b!6993050 (= lt!2490147 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun res!2852212 () Bool)

(assert (=> start!672336 (=> (not res!2852212) (not e!4203319))))

(assert (=> start!672336 (= res!2852212 (matchZipper!2782 lt!2490130 s!7408))))

(declare-fun appendTo!363 ((Set Context!12476) Context!12476) (Set Context!12476))

(assert (=> start!672336 (= lt!2490130 (appendTo!363 z1!570 ct2!306))))

(assert (=> start!672336 e!4203319))

(declare-fun condSetEmpty!47922 () Bool)

(assert (=> start!672336 (= condSetEmpty!47922 (= z1!570 (as set.empty (Set Context!12476))))))

(assert (=> start!672336 setRes!47922))

(assert (=> start!672336 (and (inv!85965 ct2!306) e!4203314)))

(declare-fun e!4203310 () Bool)

(assert (=> start!672336 e!4203310))

(declare-fun b!6993037 () Bool)

(declare-fun res!2852205 () Bool)

(assert (=> b!6993037 (=> res!2852205 e!4203322)))

(assert (=> b!6993037 (= res!2852205 (not (is-Cons!67147 (exprs!6738 lt!2490166))))))

(declare-fun b!6993051 () Bool)

(declare-fun res!2852223 () Bool)

(assert (=> b!6993051 (=> res!2852223 e!4203309)))

(assert (=> b!6993051 (= res!2852223 (not (set.member lt!2490164 lt!2490130)))))

(declare-fun setIsEmpty!47922 () Bool)

(assert (=> setIsEmpty!47922 setRes!47922))

(declare-fun b!6993052 () Bool)

(declare-fun tp_is_empty!43709 () Bool)

(declare-fun tp!1930223 () Bool)

(assert (=> b!6993052 (= e!4203310 (and tp_is_empty!43709 tp!1930223))))

(declare-fun b!6993053 () Bool)

(assert (=> b!6993053 (= e!4203316 e!4203312)))

(declare-fun res!2852206 () Bool)

(assert (=> b!6993053 (=> res!2852206 e!4203312)))

(declare-fun lt!2490143 () Int)

(declare-fun contextDepthTotal!435 (Context!12476) Int)

(assert (=> b!6993053 (= res!2852206 (<= lt!2490143 (contextDepthTotal!435 lt!2490170)))))

(assert (=> b!6993053 (<= lt!2490143 lt!2490155)))

(declare-fun lt!2490149 () List!67273)

(assert (=> b!6993053 (= lt!2490155 (zipperDepthTotal!463 lt!2490149))))

(assert (=> b!6993053 (= lt!2490143 (contextDepthTotal!435 lt!2490166))))

(declare-fun lt!2490168 () Unit!161139)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!3 (List!67273 Context!12476) Unit!161139)

(assert (=> b!6993053 (= lt!2490168 (lemmaTotalDepthZipperLargerThanOfAnyContext!3 lt!2490149 lt!2490166))))

(assert (=> b!6993053 (= lt!2490149 (toList!10602 z1!570))))

(declare-fun lt!2490140 () Unit!161139)

(assert (=> b!6993053 (= lt!2490140 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490134 () Unit!161139)

(assert (=> b!6993053 (= lt!2490134 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490171 () Unit!161139)

(assert (=> b!6993053 (= lt!2490171 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(assert (=> b!6993053 (= (flatMap!2228 lt!2490126 lambda!403128) (derivationStepZipperUp!1892 lt!2490170 (h!73596 s!7408)))))

(declare-fun lt!2490157 () Unit!161139)

(assert (=> b!6993053 (= lt!2490157 (lemmaFlatMapOnSingletonSet!1743 lt!2490126 lt!2490170 lambda!403128))))

(declare-fun lambda!403126 () Int)

(declare-fun map!15510 ((Set Context!12476) Int) (Set Context!12476))

(assert (=> b!6993053 (= (map!15510 lt!2490126 lambda!403126) (set.insert (Context!12477 (++!15188 lt!2490158 (exprs!6738 ct2!306))) (as set.empty (Set Context!12476))))))

(declare-fun lt!2490159 () Unit!161139)

(assert (=> b!6993053 (= lt!2490159 (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(declare-fun lt!2490137 () Unit!161139)

(declare-fun lemmaMapOnSingletonSet!307 ((Set Context!12476) Context!12476 Int) Unit!161139)

(assert (=> b!6993053 (= lt!2490137 (lemmaMapOnSingletonSet!307 lt!2490126 lt!2490170 lambda!403126))))

(assert (=> b!6993053 (= lt!2490126 (set.insert lt!2490170 (as set.empty (Set Context!12476))))))

(assert (=> b!6993054 (= e!4203309 e!4203318)))

(declare-fun res!2852207 () Bool)

(assert (=> b!6993054 (=> res!2852207 e!4203318)))

(assert (=> b!6993054 (= res!2852207 (or (not (= lt!2490128 lt!2490164)) (not (set.member lt!2490166 z1!570))))))

(assert (=> b!6993054 (= lt!2490128 (Context!12477 (++!15188 (exprs!6738 lt!2490166) (exprs!6738 ct2!306))))))

(declare-fun lt!2490162 () Unit!161139)

(assert (=> b!6993054 (= lt!2490162 (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490166) (exprs!6738 ct2!306) lambda!403127))))

(declare-fun mapPost2!97 ((Set Context!12476) Int Context!12476) Context!12476)

(assert (=> b!6993054 (= lt!2490166 (mapPost2!97 z1!570 lambda!403126 lt!2490164))))

(declare-fun b!6993055 () Bool)

(assert (=> b!6993055 (= e!4203321 (matchZipper!2782 lt!2490136 (t!381019 s!7408)))))

(assert (= (and start!672336 res!2852212) b!6993043))

(assert (= (and b!6993043 res!2852216) b!6993033))

(assert (= (and b!6993033 (not res!2852221)) b!6993051))

(assert (= (and b!6993051 (not res!2852223)) b!6993054))

(assert (= (and b!6993054 (not res!2852207)) b!6993045))

(assert (= (and b!6993045 (not res!2852208)) b!6993035))

(assert (= (and b!6993035 (not res!2852217)) b!6993037))

(assert (= (and b!6993037 (not res!2852205)) b!6993039))

(assert (= (and b!6993039 (not res!2852218)) b!6993047))

(assert (= (and b!6993047 (not res!2852213)) b!6993044))

(assert (= (and b!6993044 (not res!2852215)) b!6993034))

(assert (= (and b!6993034 (not res!2852209)) b!6993055))

(assert (= (and b!6993034 res!2852222) b!6993048))

(assert (= (and b!6993034 (not res!2852210)) b!6993046))

(assert (= (and b!6993046 (not res!2852219)) b!6993040))

(assert (= (and b!6993040 (not res!2852211)) b!6993050))

(assert (= (and b!6993050 (not res!2852220)) b!6993041))

(assert (= (and b!6993041 (not res!2852214)) b!6993053))

(assert (= (and b!6993053 (not res!2852206)) b!6993036))

(assert (= (and b!6993036 (not res!2852224)) b!6993038))

(assert (= (and start!672336 condSetEmpty!47922) setIsEmpty!47922))

(assert (= (and start!672336 (not condSetEmpty!47922)) setNonEmpty!47922))

(assert (= setNonEmpty!47922 b!6993042))

(assert (= start!672336 b!6993049))

(assert (= (and start!672336 (is-Cons!67148 s!7408)) b!6993052))

(declare-fun m!7683136 () Bool)

(assert (=> b!6993041 m!7683136))

(declare-fun m!7683138 () Bool)

(assert (=> b!6993041 m!7683138))

(declare-fun m!7683140 () Bool)

(assert (=> b!6993051 m!7683140))

(declare-fun m!7683142 () Bool)

(assert (=> b!6993044 m!7683142))

(assert (=> b!6993044 m!7683138))

(declare-fun m!7683144 () Bool)

(assert (=> b!6993044 m!7683144))

(assert (=> b!6993044 m!7683138))

(declare-fun m!7683146 () Bool)

(assert (=> b!6993044 m!7683146))

(declare-fun m!7683148 () Bool)

(assert (=> b!6993039 m!7683148))

(declare-fun m!7683150 () Bool)

(assert (=> b!6993047 m!7683150))

(declare-fun m!7683152 () Bool)

(assert (=> b!6993047 m!7683152))

(declare-fun m!7683154 () Bool)

(assert (=> b!6993048 m!7683154))

(assert (=> b!6993048 m!7683138))

(assert (=> b!6993040 m!7683154))

(assert (=> b!6993040 m!7683138))

(declare-fun m!7683156 () Bool)

(assert (=> b!6993036 m!7683156))

(declare-fun m!7683158 () Bool)

(assert (=> b!6993038 m!7683158))

(declare-fun m!7683160 () Bool)

(assert (=> b!6993038 m!7683160))

(assert (=> b!6993038 m!7683158))

(assert (=> b!6993038 m!7683160))

(declare-fun m!7683162 () Bool)

(assert (=> b!6993038 m!7683162))

(declare-fun m!7683164 () Bool)

(assert (=> b!6993038 m!7683164))

(declare-fun m!7683166 () Bool)

(assert (=> b!6993038 m!7683166))

(declare-fun m!7683168 () Bool)

(assert (=> b!6993054 m!7683168))

(declare-fun m!7683170 () Bool)

(assert (=> b!6993054 m!7683170))

(declare-fun m!7683172 () Bool)

(assert (=> b!6993054 m!7683172))

(declare-fun m!7683174 () Bool)

(assert (=> b!6993054 m!7683174))

(declare-fun m!7683176 () Bool)

(assert (=> start!672336 m!7683176))

(declare-fun m!7683178 () Bool)

(assert (=> start!672336 m!7683178))

(declare-fun m!7683180 () Bool)

(assert (=> start!672336 m!7683180))

(assert (=> b!6993055 m!7683154))

(declare-fun m!7683182 () Bool)

(assert (=> b!6993053 m!7683182))

(declare-fun m!7683184 () Bool)

(assert (=> b!6993053 m!7683184))

(declare-fun m!7683186 () Bool)

(assert (=> b!6993053 m!7683186))

(declare-fun m!7683188 () Bool)

(assert (=> b!6993053 m!7683188))

(declare-fun m!7683190 () Bool)

(assert (=> b!6993053 m!7683190))

(declare-fun m!7683192 () Bool)

(assert (=> b!6993053 m!7683192))

(declare-fun m!7683194 () Bool)

(assert (=> b!6993053 m!7683194))

(assert (=> b!6993053 m!7683138))

(declare-fun m!7683196 () Bool)

(assert (=> b!6993053 m!7683196))

(declare-fun m!7683198 () Bool)

(assert (=> b!6993053 m!7683198))

(declare-fun m!7683200 () Bool)

(assert (=> b!6993053 m!7683200))

(assert (=> b!6993053 m!7683138))

(assert (=> b!6993053 m!7683146))

(assert (=> b!6993053 m!7683138))

(declare-fun m!7683202 () Bool)

(assert (=> b!6993053 m!7683202))

(assert (=> b!6993053 m!7683138))

(declare-fun m!7683204 () Bool)

(assert (=> b!6993053 m!7683204))

(declare-fun m!7683206 () Bool)

(assert (=> b!6993033 m!7683206))

(declare-fun m!7683208 () Bool)

(assert (=> b!6993033 m!7683208))

(declare-fun m!7683210 () Bool)

(assert (=> b!6993033 m!7683210))

(declare-fun m!7683212 () Bool)

(assert (=> b!6993033 m!7683212))

(declare-fun m!7683214 () Bool)

(assert (=> b!6993033 m!7683214))

(declare-fun m!7683216 () Bool)

(assert (=> b!6993033 m!7683216))

(assert (=> b!6993050 m!7683138))

(assert (=> b!6993050 m!7683142))

(declare-fun m!7683218 () Bool)

(assert (=> b!6993050 m!7683218))

(declare-fun m!7683220 () Bool)

(assert (=> b!6993050 m!7683220))

(assert (=> b!6993050 m!7683138))

(assert (=> b!6993050 m!7683138))

(declare-fun m!7683222 () Bool)

(assert (=> b!6993050 m!7683222))

(assert (=> b!6993050 m!7683138))

(declare-fun m!7683224 () Bool)

(assert (=> b!6993050 m!7683224))

(declare-fun m!7683226 () Bool)

(assert (=> b!6993034 m!7683226))

(assert (=> b!6993034 m!7683138))

(assert (=> b!6993034 m!7683138))

(declare-fun m!7683228 () Bool)

(assert (=> b!6993034 m!7683228))

(assert (=> b!6993034 m!7683138))

(declare-fun m!7683230 () Bool)

(assert (=> b!6993034 m!7683230))

(declare-fun m!7683232 () Bool)

(assert (=> b!6993034 m!7683232))

(declare-fun m!7683234 () Bool)

(assert (=> b!6993035 m!7683234))

(assert (=> b!6993035 m!7683172))

(declare-fun m!7683236 () Bool)

(assert (=> b!6993035 m!7683236))

(declare-fun m!7683238 () Bool)

(assert (=> b!6993035 m!7683238))

(declare-fun m!7683240 () Bool)

(assert (=> b!6993035 m!7683240))

(declare-fun m!7683242 () Bool)

(assert (=> setNonEmpty!47922 m!7683242))

(declare-fun m!7683244 () Bool)

(assert (=> b!6993045 m!7683244))

(assert (=> b!6993045 m!7683172))

(push 1)

(assert (not b!6993039))

(assert (not b!6993040))

(assert (not b!6993052))

(assert (not b!6993035))

(assert (not b!6993055))

(assert (not b!6993033))

(assert (not b!6993034))

(assert (not b!6993038))

(assert (not b!6993054))

(assert tp_is_empty!43709)

(assert (not b!6993047))

(assert (not b!6993050))

(assert (not b!6993045))

(assert (not b!6993042))

(assert (not setNonEmpty!47922))

(assert (not b!6993041))

(assert (not b!6993053))

(assert (not b!6993036))

(assert (not b!6993044))

(assert (not start!672336))

(assert (not b!6993048))

(assert (not b!6993049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2178483 () Bool)

(declare-fun nullableFct!2648 (Regex!17242) Bool)

(assert (=> d!2178483 (= (nullable!7002 (h!73595 (exprs!6738 lt!2490166))) (nullableFct!2648 (h!73595 (exprs!6738 lt!2490166))))))

(declare-fun bs!1862673 () Bool)

(assert (= bs!1862673 d!2178483))

(declare-fun m!7683356 () Bool)

(assert (=> bs!1862673 m!7683356))

(assert (=> b!6993047 d!2178483))

(declare-fun d!2178485 () Bool)

(assert (=> d!2178485 (= (tail!13264 (exprs!6738 lt!2490166)) (t!381018 (exprs!6738 lt!2490166)))))

(assert (=> b!6993047 d!2178485))

(declare-fun b!6993145 () Bool)

(declare-fun e!4203381 () List!67272)

(assert (=> b!6993145 (= e!4203381 s!7408)))

(declare-fun d!2178487 () Bool)

(declare-fun e!4203382 () Bool)

(assert (=> d!2178487 e!4203382))

(declare-fun res!2852291 () Bool)

(assert (=> d!2178487 (=> (not res!2852291) (not e!4203382))))

(declare-fun lt!2490322 () List!67272)

(declare-fun content!13279 (List!67272) (Set C!34754))

(assert (=> d!2178487 (= res!2852291 (= (content!13279 lt!2490322) (set.union (content!13279 Nil!67148) (content!13279 s!7408))))))

(assert (=> d!2178487 (= lt!2490322 e!4203381)))

(declare-fun c!1297313 () Bool)

(assert (=> d!2178487 (= c!1297313 (is-Nil!67148 Nil!67148))))

(assert (=> d!2178487 (= (++!15187 Nil!67148 s!7408) lt!2490322)))

(declare-fun b!6993147 () Bool)

(declare-fun res!2852290 () Bool)

(assert (=> b!6993147 (=> (not res!2852290) (not e!4203382))))

(declare-fun size!40916 (List!67272) Int)

(assert (=> b!6993147 (= res!2852290 (= (size!40916 lt!2490322) (+ (size!40916 Nil!67148) (size!40916 s!7408))))))

(declare-fun b!6993148 () Bool)

(assert (=> b!6993148 (= e!4203382 (or (not (= s!7408 Nil!67148)) (= lt!2490322 Nil!67148)))))

(declare-fun b!6993146 () Bool)

(assert (=> b!6993146 (= e!4203381 (Cons!67148 (h!73596 Nil!67148) (++!15187 (t!381019 Nil!67148) s!7408)))))

(assert (= (and d!2178487 c!1297313) b!6993145))

(assert (= (and d!2178487 (not c!1297313)) b!6993146))

(assert (= (and d!2178487 res!2852291) b!6993147))

(assert (= (and b!6993147 res!2852290) b!6993148))

(declare-fun m!7683358 () Bool)

(assert (=> d!2178487 m!7683358))

(declare-fun m!7683360 () Bool)

(assert (=> d!2178487 m!7683360))

(declare-fun m!7683362 () Bool)

(assert (=> d!2178487 m!7683362))

(declare-fun m!7683364 () Bool)

(assert (=> b!6993147 m!7683364))

(declare-fun m!7683366 () Bool)

(assert (=> b!6993147 m!7683366))

(declare-fun m!7683368 () Bool)

(assert (=> b!6993147 m!7683368))

(declare-fun m!7683370 () Bool)

(assert (=> b!6993146 m!7683370))

(assert (=> b!6993038 d!2178487))

(declare-fun d!2178489 () Bool)

(declare-fun isEmpty!39190 (Option!16747) Bool)

(assert (=> d!2178489 (= (isDefined!13448 (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) Nil!67148 s!7408 s!7408)) (not (isEmpty!39190 (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) Nil!67148 s!7408 s!7408))))))

(declare-fun bs!1862674 () Bool)

(assert (= bs!1862674 d!2178489))

(assert (=> bs!1862674 m!7683160))

(declare-fun m!7683372 () Bool)

(assert (=> bs!1862674 m!7683372))

(assert (=> b!6993038 d!2178489))

(declare-fun b!6993167 () Bool)

(declare-fun e!4203394 () Bool)

(declare-fun lt!2490331 () Option!16747)

(declare-fun get!23536 (Option!16747) tuple2!67830)

(assert (=> b!6993167 (= e!4203394 (= (++!15187 (_1!37218 (get!23536 lt!2490331)) (_2!37218 (get!23536 lt!2490331))) s!7408))))

(declare-fun b!6993168 () Bool)

(declare-fun res!2852304 () Bool)

(assert (=> b!6993168 (=> (not res!2852304) (not e!4203394))))

(assert (=> b!6993168 (= res!2852304 (matchZipper!2782 lt!2490126 (_1!37218 (get!23536 lt!2490331))))))

(declare-fun b!6993169 () Bool)

(declare-fun e!4203396 () Bool)

(assert (=> b!6993169 (= e!4203396 (matchZipper!2782 (set.insert ct2!306 (as set.empty (Set Context!12476))) s!7408))))

(declare-fun d!2178491 () Bool)

(declare-fun e!4203397 () Bool)

(assert (=> d!2178491 e!4203397))

(declare-fun res!2852303 () Bool)

(assert (=> d!2178491 (=> res!2852303 e!4203397)))

(assert (=> d!2178491 (= res!2852303 e!4203394)))

(declare-fun res!2852305 () Bool)

(assert (=> d!2178491 (=> (not res!2852305) (not e!4203394))))

(assert (=> d!2178491 (= res!2852305 (isDefined!13448 lt!2490331))))

(declare-fun e!4203393 () Option!16747)

(assert (=> d!2178491 (= lt!2490331 e!4203393)))

(declare-fun c!1297319 () Bool)

(assert (=> d!2178491 (= c!1297319 e!4203396)))

(declare-fun res!2852306 () Bool)

(assert (=> d!2178491 (=> (not res!2852306) (not e!4203396))))

(assert (=> d!2178491 (= res!2852306 (matchZipper!2782 lt!2490126 Nil!67148))))

(assert (=> d!2178491 (= (++!15187 Nil!67148 s!7408) s!7408)))

(assert (=> d!2178491 (= (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) Nil!67148 s!7408 s!7408) lt!2490331)))

(declare-fun b!6993170 () Bool)

(declare-fun lt!2490330 () Unit!161139)

(declare-fun lt!2490329 () Unit!161139)

(assert (=> b!6993170 (= lt!2490330 lt!2490329)))

(assert (=> b!6993170 (= (++!15187 (++!15187 Nil!67148 (Cons!67148 (h!73596 s!7408) Nil!67148)) (t!381019 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2870 (List!67272 C!34754 List!67272 List!67272) Unit!161139)

(assert (=> b!6993170 (= lt!2490329 (lemmaMoveElementToOtherListKeepsConcatEq!2870 Nil!67148 (h!73596 s!7408) (t!381019 s!7408) s!7408))))

(declare-fun e!4203395 () Option!16747)

(assert (=> b!6993170 (= e!4203395 (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) (++!15187 Nil!67148 (Cons!67148 (h!73596 s!7408) Nil!67148)) (t!381019 s!7408) s!7408))))

(declare-fun b!6993171 () Bool)

(assert (=> b!6993171 (= e!4203393 e!4203395)))

(declare-fun c!1297318 () Bool)

(assert (=> b!6993171 (= c!1297318 (is-Nil!67148 s!7408))))

(declare-fun b!6993172 () Bool)

(assert (=> b!6993172 (= e!4203395 None!16746)))

(declare-fun b!6993173 () Bool)

(declare-fun res!2852307 () Bool)

(assert (=> b!6993173 (=> (not res!2852307) (not e!4203394))))

(assert (=> b!6993173 (= res!2852307 (matchZipper!2782 (set.insert ct2!306 (as set.empty (Set Context!12476))) (_2!37218 (get!23536 lt!2490331))))))

(declare-fun b!6993174 () Bool)

(assert (=> b!6993174 (= e!4203397 (not (isDefined!13448 lt!2490331)))))

(declare-fun b!6993175 () Bool)

(assert (=> b!6993175 (= e!4203393 (Some!16746 (tuple2!67831 Nil!67148 s!7408)))))

(assert (= (and d!2178491 res!2852306) b!6993169))

(assert (= (and d!2178491 c!1297319) b!6993175))

(assert (= (and d!2178491 (not c!1297319)) b!6993171))

(assert (= (and b!6993171 c!1297318) b!6993172))

(assert (= (and b!6993171 (not c!1297318)) b!6993170))

(assert (= (and d!2178491 res!2852305) b!6993168))

(assert (= (and b!6993168 res!2852304) b!6993173))

(assert (= (and b!6993173 res!2852307) b!6993167))

(assert (= (and d!2178491 (not res!2852303)) b!6993174))

(declare-fun m!7683374 () Bool)

(assert (=> b!6993170 m!7683374))

(assert (=> b!6993170 m!7683374))

(declare-fun m!7683376 () Bool)

(assert (=> b!6993170 m!7683376))

(declare-fun m!7683378 () Bool)

(assert (=> b!6993170 m!7683378))

(assert (=> b!6993170 m!7683158))

(assert (=> b!6993170 m!7683374))

(declare-fun m!7683380 () Bool)

(assert (=> b!6993170 m!7683380))

(declare-fun m!7683382 () Bool)

(assert (=> d!2178491 m!7683382))

(declare-fun m!7683384 () Bool)

(assert (=> d!2178491 m!7683384))

(assert (=> d!2178491 m!7683166))

(declare-fun m!7683386 () Bool)

(assert (=> b!6993167 m!7683386))

(declare-fun m!7683388 () Bool)

(assert (=> b!6993167 m!7683388))

(assert (=> b!6993174 m!7683382))

(assert (=> b!6993173 m!7683386))

(assert (=> b!6993173 m!7683158))

(declare-fun m!7683390 () Bool)

(assert (=> b!6993173 m!7683390))

(assert (=> b!6993168 m!7683386))

(declare-fun m!7683392 () Bool)

(assert (=> b!6993168 m!7683392))

(assert (=> b!6993169 m!7683158))

(declare-fun m!7683394 () Bool)

(assert (=> b!6993169 m!7683394))

(assert (=> b!6993038 d!2178491))

(declare-fun d!2178493 () Bool)

(assert (=> d!2178493 (isDefined!13448 (findConcatSeparationZippers!263 lt!2490126 (set.insert ct2!306 (as set.empty (Set Context!12476))) Nil!67148 s!7408 s!7408))))

(declare-fun lt!2490334 () Unit!161139)

(declare-fun choose!52343 ((Set Context!12476) Context!12476 List!67272) Unit!161139)

(assert (=> d!2178493 (= lt!2490334 (choose!52343 lt!2490126 ct2!306 s!7408))))

(assert (=> d!2178493 (matchZipper!2782 (appendTo!363 lt!2490126 ct2!306) s!7408)))

(assert (=> d!2178493 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!263 lt!2490126 ct2!306 s!7408) lt!2490334)))

(declare-fun bs!1862675 () Bool)

(assert (= bs!1862675 d!2178493))

(declare-fun m!7683396 () Bool)

(assert (=> bs!1862675 m!7683396))

(declare-fun m!7683398 () Bool)

(assert (=> bs!1862675 m!7683398))

(assert (=> bs!1862675 m!7683396))

(declare-fun m!7683400 () Bool)

(assert (=> bs!1862675 m!7683400))

(assert (=> bs!1862675 m!7683158))

(assert (=> bs!1862675 m!7683158))

(assert (=> bs!1862675 m!7683160))

(assert (=> bs!1862675 m!7683160))

(assert (=> bs!1862675 m!7683162))

(assert (=> b!6993038 d!2178493))

(declare-fun d!2178495 () Bool)

(declare-fun c!1297322 () Bool)

(declare-fun isEmpty!39191 (List!67272) Bool)

(assert (=> d!2178495 (= c!1297322 (isEmpty!39191 (t!381019 s!7408)))))

(declare-fun e!4203400 () Bool)

(assert (=> d!2178495 (= (matchZipper!2782 lt!2490136 (t!381019 s!7408)) e!4203400)))

(declare-fun b!6993180 () Bool)

(declare-fun nullableZipper!2449 ((Set Context!12476)) Bool)

(assert (=> b!6993180 (= e!4203400 (nullableZipper!2449 lt!2490136))))

(declare-fun b!6993181 () Bool)

(declare-fun head!14124 (List!67272) C!34754)

(declare-fun tail!13266 (List!67272) List!67272)

(assert (=> b!6993181 (= e!4203400 (matchZipper!2782 (derivationStepZipper!2722 lt!2490136 (head!14124 (t!381019 s!7408))) (tail!13266 (t!381019 s!7408))))))

(assert (= (and d!2178495 c!1297322) b!6993180))

(assert (= (and d!2178495 (not c!1297322)) b!6993181))

(declare-fun m!7683402 () Bool)

(assert (=> d!2178495 m!7683402))

(declare-fun m!7683404 () Bool)

(assert (=> b!6993180 m!7683404))

(declare-fun m!7683406 () Bool)

(assert (=> b!6993181 m!7683406))

(assert (=> b!6993181 m!7683406))

(declare-fun m!7683408 () Bool)

(assert (=> b!6993181 m!7683408))

(declare-fun m!7683410 () Bool)

(assert (=> b!6993181 m!7683410))

(assert (=> b!6993181 m!7683408))

(assert (=> b!6993181 m!7683410))

(declare-fun m!7683412 () Bool)

(assert (=> b!6993181 m!7683412))

(assert (=> b!6993048 d!2178495))

(declare-fun d!2178497 () Bool)

(declare-fun forall!16159 (List!67271 Int) Bool)

(assert (=> d!2178497 (forall!16159 (++!15188 lt!2490158 (exprs!6738 ct2!306)) lambda!403127)))

(declare-fun lt!2490337 () Unit!161139)

(declare-fun choose!52344 (List!67271 List!67271 Int) Unit!161139)

(assert (=> d!2178497 (= lt!2490337 (choose!52344 lt!2490158 (exprs!6738 ct2!306) lambda!403127))))

(assert (=> d!2178497 (forall!16159 lt!2490158 lambda!403127)))

(assert (=> d!2178497 (= (lemmaConcatPreservesForall!578 lt!2490158 (exprs!6738 ct2!306) lambda!403127) lt!2490337)))

(declare-fun bs!1862676 () Bool)

(assert (= bs!1862676 d!2178497))

(assert (=> bs!1862676 m!7683146))

(assert (=> bs!1862676 m!7683146))

(declare-fun m!7683414 () Bool)

(assert (=> bs!1862676 m!7683414))

(declare-fun m!7683416 () Bool)

(assert (=> bs!1862676 m!7683416))

(declare-fun m!7683418 () Bool)

(assert (=> bs!1862676 m!7683418))

(assert (=> b!6993048 d!2178497))

(declare-fun e!4203403 () Bool)

(declare-fun d!2178499 () Bool)

(assert (=> d!2178499 (= (matchZipper!2782 (set.union lt!2490142 lt!2490136) (t!381019 s!7408)) e!4203403)))

(declare-fun res!2852310 () Bool)

(assert (=> d!2178499 (=> res!2852310 e!4203403)))

(assert (=> d!2178499 (= res!2852310 (matchZipper!2782 lt!2490142 (t!381019 s!7408)))))

(declare-fun lt!2490340 () Unit!161139)

(declare-fun choose!52345 ((Set Context!12476) (Set Context!12476) List!67272) Unit!161139)

(assert (=> d!2178499 (= lt!2490340 (choose!52345 lt!2490142 lt!2490136 (t!381019 s!7408)))))

(assert (=> d!2178499 (= (lemmaZipperConcatMatchesSameAsBothZippers!1415 lt!2490142 lt!2490136 (t!381019 s!7408)) lt!2490340)))

(declare-fun b!6993184 () Bool)

(assert (=> b!6993184 (= e!4203403 (matchZipper!2782 lt!2490136 (t!381019 s!7408)))))

(assert (= (and d!2178499 (not res!2852310)) b!6993184))

(declare-fun m!7683420 () Bool)

(assert (=> d!2178499 m!7683420))

(assert (=> d!2178499 m!7683230))

(declare-fun m!7683422 () Bool)

(assert (=> d!2178499 m!7683422))

(assert (=> b!6993184 m!7683154))

(assert (=> b!6993034 d!2178499))

(declare-fun d!2178501 () Bool)

(declare-fun c!1297323 () Bool)

(assert (=> d!2178501 (= c!1297323 (isEmpty!39191 (t!381019 s!7408)))))

(declare-fun e!4203404 () Bool)

(assert (=> d!2178501 (= (matchZipper!2782 lt!2490142 (t!381019 s!7408)) e!4203404)))

(declare-fun b!6993185 () Bool)

(assert (=> b!6993185 (= e!4203404 (nullableZipper!2449 lt!2490142))))

(declare-fun b!6993186 () Bool)

(assert (=> b!6993186 (= e!4203404 (matchZipper!2782 (derivationStepZipper!2722 lt!2490142 (head!14124 (t!381019 s!7408))) (tail!13266 (t!381019 s!7408))))))

(assert (= (and d!2178501 c!1297323) b!6993185))

(assert (= (and d!2178501 (not c!1297323)) b!6993186))

(assert (=> d!2178501 m!7683402))

(declare-fun m!7683424 () Bool)

(assert (=> b!6993185 m!7683424))

(assert (=> b!6993186 m!7683406))

(assert (=> b!6993186 m!7683406))

(declare-fun m!7683426 () Bool)

(assert (=> b!6993186 m!7683426))

(assert (=> b!6993186 m!7683410))

(assert (=> b!6993186 m!7683426))

(assert (=> b!6993186 m!7683410))

(declare-fun m!7683428 () Bool)

(assert (=> b!6993186 m!7683428))

(assert (=> b!6993034 d!2178501))

(assert (=> b!6993034 d!2178497))

(declare-fun d!2178503 () Bool)

(declare-fun c!1297324 () Bool)

(assert (=> d!2178503 (= c!1297324 (isEmpty!39191 (t!381019 s!7408)))))

(declare-fun e!4203405 () Bool)

(assert (=> d!2178503 (= (matchZipper!2782 lt!2490163 (t!381019 s!7408)) e!4203405)))

(declare-fun b!6993187 () Bool)

(assert (=> b!6993187 (= e!4203405 (nullableZipper!2449 lt!2490163))))

(declare-fun b!6993188 () Bool)

(assert (=> b!6993188 (= e!4203405 (matchZipper!2782 (derivationStepZipper!2722 lt!2490163 (head!14124 (t!381019 s!7408))) (tail!13266 (t!381019 s!7408))))))

(assert (= (and d!2178503 c!1297324) b!6993187))

(assert (= (and d!2178503 (not c!1297324)) b!6993188))

(assert (=> d!2178503 m!7683402))

(declare-fun m!7683430 () Bool)

(assert (=> b!6993187 m!7683430))

(assert (=> b!6993188 m!7683406))

(assert (=> b!6993188 m!7683406))

(declare-fun m!7683432 () Bool)

(assert (=> b!6993188 m!7683432))

(assert (=> b!6993188 m!7683410))

(assert (=> b!6993188 m!7683432))

(assert (=> b!6993188 m!7683410))

(declare-fun m!7683434 () Bool)

(assert (=> b!6993188 m!7683434))

(assert (=> b!6993034 d!2178503))

(declare-fun d!2178505 () Bool)

(declare-fun c!1297325 () Bool)

(assert (=> d!2178505 (= c!1297325 (isEmpty!39191 (t!381019 s!7408)))))

(declare-fun e!4203406 () Bool)

(assert (=> d!2178505 (= (matchZipper!2782 lt!2490156 (t!381019 s!7408)) e!4203406)))

(declare-fun b!6993189 () Bool)

(assert (=> b!6993189 (= e!4203406 (nullableZipper!2449 lt!2490156))))

(declare-fun b!6993190 () Bool)

(assert (=> b!6993190 (= e!4203406 (matchZipper!2782 (derivationStepZipper!2722 lt!2490156 (head!14124 (t!381019 s!7408))) (tail!13266 (t!381019 s!7408))))))

(assert (= (and d!2178505 c!1297325) b!6993189))

(assert (= (and d!2178505 (not c!1297325)) b!6993190))

(assert (=> d!2178505 m!7683402))

(declare-fun m!7683436 () Bool)

(assert (=> b!6993189 m!7683436))

(assert (=> b!6993190 m!7683406))

(assert (=> b!6993190 m!7683406))

(declare-fun m!7683438 () Bool)

(assert (=> b!6993190 m!7683438))

(assert (=> b!6993190 m!7683410))

(assert (=> b!6993190 m!7683438))

(assert (=> b!6993190 m!7683410))

(declare-fun m!7683440 () Bool)

(assert (=> b!6993190 m!7683440))

(assert (=> b!6993034 d!2178505))

(declare-fun d!2178507 () Bool)

(declare-fun c!1297326 () Bool)

(assert (=> d!2178507 (= c!1297326 (isEmpty!39191 s!7408))))

(declare-fun e!4203407 () Bool)

(assert (=> d!2178507 (= (matchZipper!2782 lt!2490130 s!7408) e!4203407)))

(declare-fun b!6993191 () Bool)

(assert (=> b!6993191 (= e!4203407 (nullableZipper!2449 lt!2490130))))

(declare-fun b!6993192 () Bool)

(assert (=> b!6993192 (= e!4203407 (matchZipper!2782 (derivationStepZipper!2722 lt!2490130 (head!14124 s!7408)) (tail!13266 s!7408)))))

(assert (= (and d!2178507 c!1297326) b!6993191))

(assert (= (and d!2178507 (not c!1297326)) b!6993192))

(declare-fun m!7683442 () Bool)

(assert (=> d!2178507 m!7683442))

(declare-fun m!7683444 () Bool)

(assert (=> b!6993191 m!7683444))

(declare-fun m!7683446 () Bool)

(assert (=> b!6993192 m!7683446))

(assert (=> b!6993192 m!7683446))

(declare-fun m!7683448 () Bool)

(assert (=> b!6993192 m!7683448))

(declare-fun m!7683450 () Bool)

(assert (=> b!6993192 m!7683450))

(assert (=> b!6993192 m!7683448))

(assert (=> b!6993192 m!7683450))

(declare-fun m!7683452 () Bool)

(assert (=> b!6993192 m!7683452))

(assert (=> start!672336 d!2178507))

(declare-fun bs!1862677 () Bool)

(declare-fun d!2178509 () Bool)

(assert (= bs!1862677 (and d!2178509 b!6993054)))

(declare-fun lambda!403193 () Int)

(assert (=> bs!1862677 (= lambda!403193 lambda!403126)))

(assert (=> d!2178509 true))

(assert (=> d!2178509 (= (appendTo!363 z1!570 ct2!306) (map!15510 z1!570 lambda!403193))))

(declare-fun bs!1862678 () Bool)

(assert (= bs!1862678 d!2178509))

(declare-fun m!7683454 () Bool)

(assert (=> bs!1862678 m!7683454))

(assert (=> start!672336 d!2178509))

(declare-fun bs!1862679 () Bool)

(declare-fun d!2178511 () Bool)

(assert (= bs!1862679 (and d!2178511 b!6993054)))

(declare-fun lambda!403196 () Int)

(assert (=> bs!1862679 (= lambda!403196 lambda!403127)))

(assert (=> d!2178511 (= (inv!85965 ct2!306) (forall!16159 (exprs!6738 ct2!306) lambda!403196))))

(declare-fun bs!1862680 () Bool)

(assert (= bs!1862680 d!2178511))

(declare-fun m!7683456 () Bool)

(assert (=> bs!1862680 m!7683456))

(assert (=> start!672336 d!2178511))

(declare-fun d!2178513 () Bool)

(declare-fun lt!2490345 () Int)

(assert (=> d!2178513 (>= lt!2490345 0)))

(declare-fun e!4203410 () Int)

(assert (=> d!2178513 (= lt!2490345 e!4203410)))

(declare-fun c!1297331 () Bool)

(assert (=> d!2178513 (= c!1297331 (is-Cons!67147 (exprs!6738 lt!2490170)))))

(assert (=> d!2178513 (= (contextDepthTotal!435 lt!2490170) lt!2490345)))

(declare-fun b!6993197 () Bool)

(declare-fun regexDepthTotal!271 (Regex!17242) Int)

(assert (=> b!6993197 (= e!4203410 (+ (regexDepthTotal!271 (h!73595 (exprs!6738 lt!2490170))) (contextDepthTotal!435 (Context!12477 (t!381018 (exprs!6738 lt!2490170))))))))

(declare-fun b!6993198 () Bool)

(assert (=> b!6993198 (= e!4203410 1)))

(assert (= (and d!2178513 c!1297331) b!6993197))

(assert (= (and d!2178513 (not c!1297331)) b!6993198))

(declare-fun m!7683458 () Bool)

(assert (=> b!6993197 m!7683458))

(declare-fun m!7683460 () Bool)

(assert (=> b!6993197 m!7683460))

(assert (=> b!6993053 d!2178513))

(declare-fun d!2178515 () Bool)

(declare-fun choose!52346 ((Set Context!12476) Int) (Set Context!12476))

(assert (=> d!2178515 (= (map!15510 lt!2490126 lambda!403126) (choose!52346 lt!2490126 lambda!403126))))

(declare-fun bs!1862681 () Bool)

(assert (= bs!1862681 d!2178515))

(declare-fun m!7683462 () Bool)

(assert (=> bs!1862681 m!7683462))

(assert (=> b!6993053 d!2178515))

(declare-fun d!2178517 () Bool)

(declare-fun dynLambda!26950 (Int Context!12476) (Set Context!12476))

(assert (=> d!2178517 (= (flatMap!2228 lt!2490126 lambda!403128) (dynLambda!26950 lambda!403128 lt!2490170))))

(declare-fun lt!2490348 () Unit!161139)

(declare-fun choose!52347 ((Set Context!12476) Context!12476 Int) Unit!161139)

(assert (=> d!2178517 (= lt!2490348 (choose!52347 lt!2490126 lt!2490170 lambda!403128))))

(assert (=> d!2178517 (= lt!2490126 (set.insert lt!2490170 (as set.empty (Set Context!12476))))))

(assert (=> d!2178517 (= (lemmaFlatMapOnSingletonSet!1743 lt!2490126 lt!2490170 lambda!403128) lt!2490348)))

(declare-fun b_lambda!262955 () Bool)

(assert (=> (not b_lambda!262955) (not d!2178517)))

(declare-fun bs!1862682 () Bool)

(assert (= bs!1862682 d!2178517))

(assert (=> bs!1862682 m!7683202))

(declare-fun m!7683464 () Bool)

(assert (=> bs!1862682 m!7683464))

(declare-fun m!7683466 () Bool)

(assert (=> bs!1862682 m!7683466))

(assert (=> bs!1862682 m!7683192))

(assert (=> b!6993053 d!2178517))

(declare-fun b!6993209 () Bool)

(declare-fun res!2852315 () Bool)

(declare-fun e!4203415 () Bool)

(assert (=> b!6993209 (=> (not res!2852315) (not e!4203415))))

(declare-fun lt!2490351 () List!67271)

(declare-fun size!40917 (List!67271) Int)

(assert (=> b!6993209 (= res!2852315 (= (size!40917 lt!2490351) (+ (size!40917 lt!2490158) (size!40917 (exprs!6738 ct2!306)))))))

(declare-fun b!6993207 () Bool)

(declare-fun e!4203416 () List!67271)

(assert (=> b!6993207 (= e!4203416 (exprs!6738 ct2!306))))

(declare-fun b!6993210 () Bool)

(assert (=> b!6993210 (= e!4203415 (or (not (= (exprs!6738 ct2!306) Nil!67147)) (= lt!2490351 lt!2490158)))))

(declare-fun d!2178519 () Bool)

(assert (=> d!2178519 e!4203415))

(declare-fun res!2852316 () Bool)

(assert (=> d!2178519 (=> (not res!2852316) (not e!4203415))))

(declare-fun content!13280 (List!67271) (Set Regex!17242))

(assert (=> d!2178519 (= res!2852316 (= (content!13280 lt!2490351) (set.union (content!13280 lt!2490158) (content!13280 (exprs!6738 ct2!306)))))))

(assert (=> d!2178519 (= lt!2490351 e!4203416)))

(declare-fun c!1297334 () Bool)

(assert (=> d!2178519 (= c!1297334 (is-Nil!67147 lt!2490158))))

(assert (=> d!2178519 (= (++!15188 lt!2490158 (exprs!6738 ct2!306)) lt!2490351)))

(declare-fun b!6993208 () Bool)

(assert (=> b!6993208 (= e!4203416 (Cons!67147 (h!73595 lt!2490158) (++!15188 (t!381018 lt!2490158) (exprs!6738 ct2!306))))))

(assert (= (and d!2178519 c!1297334) b!6993207))

(assert (= (and d!2178519 (not c!1297334)) b!6993208))

(assert (= (and d!2178519 res!2852316) b!6993209))

(assert (= (and b!6993209 res!2852315) b!6993210))

(declare-fun m!7683468 () Bool)

(assert (=> b!6993209 m!7683468))

(declare-fun m!7683470 () Bool)

(assert (=> b!6993209 m!7683470))

(declare-fun m!7683472 () Bool)

(assert (=> b!6993209 m!7683472))

(declare-fun m!7683474 () Bool)

(assert (=> d!2178519 m!7683474))

(declare-fun m!7683476 () Bool)

(assert (=> d!2178519 m!7683476))

(declare-fun m!7683478 () Bool)

(assert (=> d!2178519 m!7683478))

(declare-fun m!7683480 () Bool)

(assert (=> b!6993208 m!7683480))

(assert (=> b!6993053 d!2178519))

(declare-fun d!2178521 () Bool)

(declare-fun e!4203419 () Bool)

(assert (=> d!2178521 e!4203419))

(declare-fun res!2852319 () Bool)

(assert (=> d!2178521 (=> (not res!2852319) (not e!4203419))))

(declare-fun lt!2490354 () List!67273)

(declare-fun noDuplicate!2532 (List!67273) Bool)

(assert (=> d!2178521 (= res!2852319 (noDuplicate!2532 lt!2490354))))

(declare-fun choose!52348 ((Set Context!12476)) List!67273)

(assert (=> d!2178521 (= lt!2490354 (choose!52348 z1!570))))

(assert (=> d!2178521 (= (toList!10602 z1!570) lt!2490354)))

(declare-fun b!6993213 () Bool)

(declare-fun content!13281 (List!67273) (Set Context!12476))

(assert (=> b!6993213 (= e!4203419 (= (content!13281 lt!2490354) z1!570))))

(assert (= (and d!2178521 res!2852319) b!6993213))

(declare-fun m!7683482 () Bool)

(assert (=> d!2178521 m!7683482))

(declare-fun m!7683484 () Bool)

(assert (=> d!2178521 m!7683484))

(declare-fun m!7683486 () Bool)

(assert (=> b!6993213 m!7683486))

(assert (=> b!6993053 d!2178521))

(declare-fun d!2178523 () Bool)

(declare-fun lt!2490355 () Int)

(assert (=> d!2178523 (>= lt!2490355 0)))

(declare-fun e!4203420 () Int)

(assert (=> d!2178523 (= lt!2490355 e!4203420)))

(declare-fun c!1297335 () Bool)

(assert (=> d!2178523 (= c!1297335 (is-Cons!67147 (exprs!6738 lt!2490166)))))

(assert (=> d!2178523 (= (contextDepthTotal!435 lt!2490166) lt!2490355)))

(declare-fun b!6993214 () Bool)

(assert (=> b!6993214 (= e!4203420 (+ (regexDepthTotal!271 (h!73595 (exprs!6738 lt!2490166))) (contextDepthTotal!435 (Context!12477 (t!381018 (exprs!6738 lt!2490166))))))))

(declare-fun b!6993215 () Bool)

(assert (=> b!6993215 (= e!4203420 1)))

(assert (= (and d!2178523 c!1297335) b!6993214))

(assert (= (and d!2178523 (not c!1297335)) b!6993215))

(declare-fun m!7683488 () Bool)

(assert (=> b!6993214 m!7683488))

(declare-fun m!7683490 () Bool)

(assert (=> b!6993214 m!7683490))

(assert (=> b!6993053 d!2178523))

(declare-fun d!2178525 () Bool)

(assert (=> d!2178525 (<= (contextDepthTotal!435 lt!2490166) (zipperDepthTotal!463 lt!2490149))))

(declare-fun lt!2490358 () Unit!161139)

(declare-fun choose!52349 (List!67273 Context!12476) Unit!161139)

(assert (=> d!2178525 (= lt!2490358 (choose!52349 lt!2490149 lt!2490166))))

(declare-fun contains!20413 (List!67273 Context!12476) Bool)

(assert (=> d!2178525 (contains!20413 lt!2490149 lt!2490166)))

(assert (=> d!2178525 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!3 lt!2490149 lt!2490166) lt!2490358)))

(declare-fun bs!1862683 () Bool)

(assert (= bs!1862683 d!2178525))

(assert (=> bs!1862683 m!7683194))

(assert (=> bs!1862683 m!7683188))

(declare-fun m!7683492 () Bool)

(assert (=> bs!1862683 m!7683492))

(declare-fun m!7683494 () Bool)

(assert (=> bs!1862683 m!7683494))

(assert (=> b!6993053 d!2178525))

(declare-fun d!2178527 () Bool)

(declare-fun lt!2490361 () Int)

(assert (=> d!2178527 (>= lt!2490361 0)))

(declare-fun e!4203423 () Int)

(assert (=> d!2178527 (= lt!2490361 e!4203423)))

(declare-fun c!1297339 () Bool)

(assert (=> d!2178527 (= c!1297339 (is-Cons!67149 lt!2490149))))

(assert (=> d!2178527 (= (zipperDepthTotal!463 lt!2490149) lt!2490361)))

(declare-fun b!6993220 () Bool)

(assert (=> b!6993220 (= e!4203423 (+ (contextDepthTotal!435 (h!73597 lt!2490149)) (zipperDepthTotal!463 (t!381020 lt!2490149))))))

(declare-fun b!6993221 () Bool)

(assert (=> b!6993221 (= e!4203423 0)))

(assert (= (and d!2178527 c!1297339) b!6993220))

(assert (= (and d!2178527 (not c!1297339)) b!6993221))

(declare-fun m!7683496 () Bool)

(assert (=> b!6993220 m!7683496))

(declare-fun m!7683498 () Bool)

(assert (=> b!6993220 m!7683498))

(assert (=> b!6993053 d!2178527))

(assert (=> b!6993053 d!2178497))

(declare-fun b!6993232 () Bool)

(declare-fun e!4203431 () (Set Context!12476))

(declare-fun call!634854 () (Set Context!12476))

(assert (=> b!6993232 (= e!4203431 call!634854)))

(declare-fun b!6993233 () Bool)

(declare-fun e!4203432 () Bool)

(assert (=> b!6993233 (= e!4203432 (nullable!7002 (h!73595 (exprs!6738 lt!2490170))))))

(declare-fun b!6993235 () Bool)

(assert (=> b!6993235 (= e!4203431 (as set.empty (Set Context!12476)))))

(declare-fun e!4203430 () (Set Context!12476))

(declare-fun b!6993236 () Bool)

(assert (=> b!6993236 (= e!4203430 (set.union call!634854 (derivationStepZipperUp!1892 (Context!12477 (t!381018 (exprs!6738 lt!2490170))) (h!73596 s!7408))))))

(declare-fun bm!634849 () Bool)

(assert (=> bm!634849 (= call!634854 (derivationStepZipperDown!1960 (h!73595 (exprs!6738 lt!2490170)) (Context!12477 (t!381018 (exprs!6738 lt!2490170))) (h!73596 s!7408)))))

(declare-fun d!2178529 () Bool)

(declare-fun c!1297345 () Bool)

(assert (=> d!2178529 (= c!1297345 e!4203432)))

(declare-fun res!2852322 () Bool)

(assert (=> d!2178529 (=> (not res!2852322) (not e!4203432))))

(assert (=> d!2178529 (= res!2852322 (is-Cons!67147 (exprs!6738 lt!2490170)))))

(assert (=> d!2178529 (= (derivationStepZipperUp!1892 lt!2490170 (h!73596 s!7408)) e!4203430)))

(declare-fun b!6993234 () Bool)

(assert (=> b!6993234 (= e!4203430 e!4203431)))

(declare-fun c!1297344 () Bool)

(assert (=> b!6993234 (= c!1297344 (is-Cons!67147 (exprs!6738 lt!2490170)))))

(assert (= (and d!2178529 res!2852322) b!6993233))

(assert (= (and d!2178529 c!1297345) b!6993236))

(assert (= (and d!2178529 (not c!1297345)) b!6993234))

(assert (= (and b!6993234 c!1297344) b!6993232))

(assert (= (and b!6993234 (not c!1297344)) b!6993235))

(assert (= (or b!6993236 b!6993232) bm!634849))

(declare-fun m!7683500 () Bool)

(assert (=> b!6993233 m!7683500))

(declare-fun m!7683502 () Bool)

(assert (=> b!6993236 m!7683502))

(declare-fun m!7683504 () Bool)

(assert (=> bm!634849 m!7683504))

(assert (=> b!6993053 d!2178529))

(declare-fun d!2178531 () Bool)

(declare-fun dynLambda!26951 (Int Context!12476) Context!12476)

(assert (=> d!2178531 (= (map!15510 lt!2490126 lambda!403126) (set.insert (dynLambda!26951 lambda!403126 lt!2490170) (as set.empty (Set Context!12476))))))

(declare-fun lt!2490364 () Unit!161139)

(declare-fun choose!52350 ((Set Context!12476) Context!12476 Int) Unit!161139)

(assert (=> d!2178531 (= lt!2490364 (choose!52350 lt!2490126 lt!2490170 lambda!403126))))

(assert (=> d!2178531 (= lt!2490126 (set.insert lt!2490170 (as set.empty (Set Context!12476))))))

(assert (=> d!2178531 (= (lemmaMapOnSingletonSet!307 lt!2490126 lt!2490170 lambda!403126) lt!2490364)))

(declare-fun b_lambda!262957 () Bool)

(assert (=> (not b_lambda!262957) (not d!2178531)))

(declare-fun bs!1862684 () Bool)

(assert (= bs!1862684 d!2178531))

(declare-fun m!7683506 () Bool)

(assert (=> bs!1862684 m!7683506))

(declare-fun m!7683508 () Bool)

(assert (=> bs!1862684 m!7683508))

(assert (=> bs!1862684 m!7683192))

(assert (=> bs!1862684 m!7683506))

(declare-fun m!7683510 () Bool)

(assert (=> bs!1862684 m!7683510))

(assert (=> bs!1862684 m!7683196))

(assert (=> b!6993053 d!2178531))

(declare-fun d!2178533 () Bool)

(declare-fun choose!52351 ((Set Context!12476) Int) (Set Context!12476))

(assert (=> d!2178533 (= (flatMap!2228 lt!2490126 lambda!403128) (choose!52351 lt!2490126 lambda!403128))))

(declare-fun bs!1862685 () Bool)

(assert (= bs!1862685 d!2178533))

(declare-fun m!7683512 () Bool)

(assert (=> bs!1862685 m!7683512))

(assert (=> b!6993053 d!2178533))

(declare-fun b!6993239 () Bool)

(declare-fun res!2852323 () Bool)

(declare-fun e!4203433 () Bool)

(assert (=> b!6993239 (=> (not res!2852323) (not e!4203433))))

(declare-fun lt!2490365 () List!67271)

(assert (=> b!6993239 (= res!2852323 (= (size!40917 lt!2490365) (+ (size!40917 (exprs!6738 lt!2490166)) (size!40917 (exprs!6738 ct2!306)))))))

(declare-fun b!6993237 () Bool)

(declare-fun e!4203434 () List!67271)

(assert (=> b!6993237 (= e!4203434 (exprs!6738 ct2!306))))

(declare-fun b!6993240 () Bool)

(assert (=> b!6993240 (= e!4203433 (or (not (= (exprs!6738 ct2!306) Nil!67147)) (= lt!2490365 (exprs!6738 lt!2490166))))))

(declare-fun d!2178535 () Bool)

(assert (=> d!2178535 e!4203433))

(declare-fun res!2852324 () Bool)

(assert (=> d!2178535 (=> (not res!2852324) (not e!4203433))))

(assert (=> d!2178535 (= res!2852324 (= (content!13280 lt!2490365) (set.union (content!13280 (exprs!6738 lt!2490166)) (content!13280 (exprs!6738 ct2!306)))))))

(assert (=> d!2178535 (= lt!2490365 e!4203434)))

(declare-fun c!1297346 () Bool)

(assert (=> d!2178535 (= c!1297346 (is-Nil!67147 (exprs!6738 lt!2490166)))))

(assert (=> d!2178535 (= (++!15188 (exprs!6738 lt!2490166) (exprs!6738 ct2!306)) lt!2490365)))

(declare-fun b!6993238 () Bool)

(assert (=> b!6993238 (= e!4203434 (Cons!67147 (h!73595 (exprs!6738 lt!2490166)) (++!15188 (t!381018 (exprs!6738 lt!2490166)) (exprs!6738 ct2!306))))))

(assert (= (and d!2178535 c!1297346) b!6993237))

(assert (= (and d!2178535 (not c!1297346)) b!6993238))

(assert (= (and d!2178535 res!2852324) b!6993239))

(assert (= (and b!6993239 res!2852323) b!6993240))

(declare-fun m!7683514 () Bool)

(assert (=> b!6993239 m!7683514))

(declare-fun m!7683516 () Bool)

(assert (=> b!6993239 m!7683516))

(assert (=> b!6993239 m!7683472))

(declare-fun m!7683518 () Bool)

(assert (=> d!2178535 m!7683518))

(declare-fun m!7683520 () Bool)

(assert (=> d!2178535 m!7683520))

(assert (=> d!2178535 m!7683478))

(declare-fun m!7683522 () Bool)

(assert (=> b!6993238 m!7683522))

(assert (=> b!6993054 d!2178535))

(declare-fun d!2178537 () Bool)

(assert (=> d!2178537 (forall!16159 (++!15188 (exprs!6738 lt!2490166) (exprs!6738 ct2!306)) lambda!403127)))

(declare-fun lt!2490366 () Unit!161139)

(assert (=> d!2178537 (= lt!2490366 (choose!52344 (exprs!6738 lt!2490166) (exprs!6738 ct2!306) lambda!403127))))

(assert (=> d!2178537 (forall!16159 (exprs!6738 lt!2490166) lambda!403127)))

(assert (=> d!2178537 (= (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490166) (exprs!6738 ct2!306) lambda!403127) lt!2490366)))

(declare-fun bs!1862686 () Bool)

(assert (= bs!1862686 d!2178537))

(assert (=> bs!1862686 m!7683170))

(assert (=> bs!1862686 m!7683170))

(declare-fun m!7683524 () Bool)

(assert (=> bs!1862686 m!7683524))

(declare-fun m!7683526 () Bool)

(assert (=> bs!1862686 m!7683526))

(declare-fun m!7683528 () Bool)

(assert (=> bs!1862686 m!7683528))

(assert (=> b!6993054 d!2178537))

(declare-fun d!2178539 () Bool)

(declare-fun e!4203437 () Bool)

(assert (=> d!2178539 e!4203437))

(declare-fun res!2852327 () Bool)

(assert (=> d!2178539 (=> (not res!2852327) (not e!4203437))))

(declare-fun lt!2490369 () Context!12476)

(assert (=> d!2178539 (= res!2852327 (= lt!2490164 (dynLambda!26951 lambda!403126 lt!2490369)))))

(declare-fun choose!52352 ((Set Context!12476) Int Context!12476) Context!12476)

(assert (=> d!2178539 (= lt!2490369 (choose!52352 z1!570 lambda!403126 lt!2490164))))

(assert (=> d!2178539 (set.member lt!2490164 (map!15510 z1!570 lambda!403126))))

(assert (=> d!2178539 (= (mapPost2!97 z1!570 lambda!403126 lt!2490164) lt!2490369)))

(declare-fun b!6993244 () Bool)

(assert (=> b!6993244 (= e!4203437 (set.member lt!2490369 z1!570))))

(assert (= (and d!2178539 res!2852327) b!6993244))

(declare-fun b_lambda!262959 () Bool)

(assert (=> (not b_lambda!262959) (not d!2178539)))

(declare-fun m!7683530 () Bool)

(assert (=> d!2178539 m!7683530))

(declare-fun m!7683532 () Bool)

(assert (=> d!2178539 m!7683532))

(declare-fun m!7683534 () Bool)

(assert (=> d!2178539 m!7683534))

(declare-fun m!7683536 () Bool)

(assert (=> d!2178539 m!7683536))

(declare-fun m!7683538 () Bool)

(assert (=> b!6993244 m!7683538))

(assert (=> b!6993054 d!2178539))

(assert (=> b!6993044 d!2178519))

(assert (=> b!6993044 d!2178497))

(declare-fun b!6993245 () Bool)

(declare-fun e!4203439 () (Set Context!12476))

(declare-fun call!634855 () (Set Context!12476))

(assert (=> b!6993245 (= e!4203439 call!634855)))

(declare-fun b!6993246 () Bool)

(declare-fun e!4203440 () Bool)

(assert (=> b!6993246 (= e!4203440 (nullable!7002 (h!73595 (exprs!6738 lt!2490160))))))

(declare-fun b!6993248 () Bool)

(assert (=> b!6993248 (= e!4203439 (as set.empty (Set Context!12476)))))

(declare-fun e!4203438 () (Set Context!12476))

(declare-fun b!6993249 () Bool)

(assert (=> b!6993249 (= e!4203438 (set.union call!634855 (derivationStepZipperUp!1892 (Context!12477 (t!381018 (exprs!6738 lt!2490160))) (h!73596 s!7408))))))

(declare-fun bm!634850 () Bool)

(assert (=> bm!634850 (= call!634855 (derivationStepZipperDown!1960 (h!73595 (exprs!6738 lt!2490160)) (Context!12477 (t!381018 (exprs!6738 lt!2490160))) (h!73596 s!7408)))))

(declare-fun d!2178541 () Bool)

(declare-fun c!1297348 () Bool)

(assert (=> d!2178541 (= c!1297348 e!4203440)))

(declare-fun res!2852328 () Bool)

(assert (=> d!2178541 (=> (not res!2852328) (not e!4203440))))

(assert (=> d!2178541 (= res!2852328 (is-Cons!67147 (exprs!6738 lt!2490160)))))

(assert (=> d!2178541 (= (derivationStepZipperUp!1892 lt!2490160 (h!73596 s!7408)) e!4203438)))

(declare-fun b!6993247 () Bool)

(assert (=> b!6993247 (= e!4203438 e!4203439)))

(declare-fun c!1297347 () Bool)

(assert (=> b!6993247 (= c!1297347 (is-Cons!67147 (exprs!6738 lt!2490160)))))

(assert (= (and d!2178541 res!2852328) b!6993246))

(assert (= (and d!2178541 c!1297348) b!6993249))

(assert (= (and d!2178541 (not c!1297348)) b!6993247))

(assert (= (and b!6993247 c!1297347) b!6993245))

(assert (= (and b!6993247 (not c!1297347)) b!6993248))

(assert (= (or b!6993249 b!6993245) bm!634850))

(declare-fun m!7683540 () Bool)

(assert (=> b!6993246 m!7683540))

(declare-fun m!7683542 () Bool)

(assert (=> b!6993249 m!7683542))

(declare-fun m!7683544 () Bool)

(assert (=> bm!634850 m!7683544))

(assert (=> b!6993044 d!2178541))

(declare-fun b!6993272 () Bool)

(declare-fun e!4203457 () (Set Context!12476))

(assert (=> b!6993272 (= e!4203457 (as set.empty (Set Context!12476)))))

(declare-fun c!1297363 () Bool)

(declare-fun call!634871 () (Set Context!12476))

(declare-fun bm!634863 () Bool)

(declare-fun call!634873 () List!67271)

(assert (=> bm!634863 (= call!634871 (derivationStepZipperDown!1960 (ite c!1297363 (regTwo!34997 (h!73595 (exprs!6738 lt!2490166))) (regOne!34996 (h!73595 (exprs!6738 lt!2490166)))) (ite c!1297363 lt!2490160 (Context!12477 call!634873)) (h!73596 s!7408)))))

(declare-fun b!6993273 () Bool)

(declare-fun e!4203458 () Bool)

(assert (=> b!6993273 (= e!4203458 (nullable!7002 (regOne!34996 (h!73595 (exprs!6738 lt!2490166)))))))

(declare-fun c!1297360 () Bool)

(declare-fun c!1297361 () Bool)

(declare-fun call!634870 () (Set Context!12476))

(declare-fun bm!634864 () Bool)

(declare-fun call!634872 () List!67271)

(assert (=> bm!634864 (= call!634870 (derivationStepZipperDown!1960 (ite c!1297363 (regOne!34997 (h!73595 (exprs!6738 lt!2490166))) (ite c!1297360 (regTwo!34996 (h!73595 (exprs!6738 lt!2490166))) (ite c!1297361 (regOne!34996 (h!73595 (exprs!6738 lt!2490166))) (reg!17571 (h!73595 (exprs!6738 lt!2490166)))))) (ite (or c!1297363 c!1297360) lt!2490160 (Context!12477 call!634872)) (h!73596 s!7408)))))

(declare-fun bm!634865 () Bool)

(declare-fun call!634868 () (Set Context!12476))

(declare-fun call!634869 () (Set Context!12476))

(assert (=> bm!634865 (= call!634868 call!634869)))

(declare-fun b!6993274 () Bool)

(assert (=> b!6993274 (= e!4203457 call!634868)))

(declare-fun b!6993275 () Bool)

(declare-fun e!4203454 () (Set Context!12476))

(declare-fun e!4203456 () (Set Context!12476))

(assert (=> b!6993275 (= e!4203454 e!4203456)))

(assert (=> b!6993275 (= c!1297363 (is-Union!17242 (h!73595 (exprs!6738 lt!2490166))))))

(declare-fun bm!634866 () Bool)

(declare-fun $colon$colon!2494 (List!67271 Regex!17242) List!67271)

(assert (=> bm!634866 (= call!634873 ($colon$colon!2494 (exprs!6738 lt!2490160) (ite (or c!1297360 c!1297361) (regTwo!34996 (h!73595 (exprs!6738 lt!2490166))) (h!73595 (exprs!6738 lt!2490166)))))))

(declare-fun bm!634867 () Bool)

(assert (=> bm!634867 (= call!634869 call!634870)))

(declare-fun b!6993276 () Bool)

(declare-fun c!1297359 () Bool)

(assert (=> b!6993276 (= c!1297359 (is-Star!17242 (h!73595 (exprs!6738 lt!2490166))))))

(declare-fun e!4203453 () (Set Context!12476))

(assert (=> b!6993276 (= e!4203453 e!4203457)))

(declare-fun b!6993277 () Bool)

(declare-fun e!4203455 () (Set Context!12476))

(assert (=> b!6993277 (= e!4203455 e!4203453)))

(assert (=> b!6993277 (= c!1297361 (is-Concat!26087 (h!73595 (exprs!6738 lt!2490166))))))

(declare-fun b!6993278 () Bool)

(assert (=> b!6993278 (= e!4203455 (set.union call!634871 call!634869))))

(declare-fun b!6993279 () Bool)

(assert (=> b!6993279 (= e!4203453 call!634868)))

(declare-fun d!2178543 () Bool)

(declare-fun c!1297362 () Bool)

(assert (=> d!2178543 (= c!1297362 (and (is-ElementMatch!17242 (h!73595 (exprs!6738 lt!2490166))) (= (c!1297295 (h!73595 (exprs!6738 lt!2490166))) (h!73596 s!7408))))))

(assert (=> d!2178543 (= (derivationStepZipperDown!1960 (h!73595 (exprs!6738 lt!2490166)) lt!2490160 (h!73596 s!7408)) e!4203454)))

(declare-fun b!6993280 () Bool)

(assert (=> b!6993280 (= e!4203454 (set.insert lt!2490160 (as set.empty (Set Context!12476))))))

(declare-fun bm!634868 () Bool)

(assert (=> bm!634868 (= call!634872 call!634873)))

(declare-fun b!6993281 () Bool)

(assert (=> b!6993281 (= c!1297360 e!4203458)))

(declare-fun res!2852331 () Bool)

(assert (=> b!6993281 (=> (not res!2852331) (not e!4203458))))

(assert (=> b!6993281 (= res!2852331 (is-Concat!26087 (h!73595 (exprs!6738 lt!2490166))))))

(assert (=> b!6993281 (= e!4203456 e!4203455)))

(declare-fun b!6993282 () Bool)

(assert (=> b!6993282 (= e!4203456 (set.union call!634870 call!634871))))

(assert (= (and d!2178543 c!1297362) b!6993280))

(assert (= (and d!2178543 (not c!1297362)) b!6993275))

(assert (= (and b!6993275 c!1297363) b!6993282))

(assert (= (and b!6993275 (not c!1297363)) b!6993281))

(assert (= (and b!6993281 res!2852331) b!6993273))

(assert (= (and b!6993281 c!1297360) b!6993278))

(assert (= (and b!6993281 (not c!1297360)) b!6993277))

(assert (= (and b!6993277 c!1297361) b!6993279))

(assert (= (and b!6993277 (not c!1297361)) b!6993276))

(assert (= (and b!6993276 c!1297359) b!6993274))

(assert (= (and b!6993276 (not c!1297359)) b!6993272))

(assert (= (or b!6993279 b!6993274) bm!634868))

(assert (= (or b!6993279 b!6993274) bm!634865))

(assert (= (or b!6993278 bm!634865) bm!634867))

(assert (= (or b!6993278 bm!634868) bm!634866))

(assert (= (or b!6993282 bm!634867) bm!634864))

(assert (= (or b!6993282 b!6993278) bm!634863))

(declare-fun m!7683546 () Bool)

(assert (=> b!6993273 m!7683546))

(declare-fun m!7683548 () Bool)

(assert (=> bm!634866 m!7683548))

(declare-fun m!7683550 () Bool)

(assert (=> bm!634863 m!7683550))

(assert (=> b!6993280 m!7683222))

(declare-fun m!7683552 () Bool)

(assert (=> bm!634864 m!7683552))

(assert (=> b!6993044 d!2178543))

(assert (=> b!6993045 d!2178537))

(declare-fun d!2178545 () Bool)

(assert (=> d!2178545 (= (flatMap!2228 lt!2490161 lambda!403128) (dynLambda!26950 lambda!403128 lt!2490128))))

(declare-fun lt!2490370 () Unit!161139)

(assert (=> d!2178545 (= lt!2490370 (choose!52347 lt!2490161 lt!2490128 lambda!403128))))

(assert (=> d!2178545 (= lt!2490161 (set.insert lt!2490128 (as set.empty (Set Context!12476))))))

(assert (=> d!2178545 (= (lemmaFlatMapOnSingletonSet!1743 lt!2490161 lt!2490128 lambda!403128) lt!2490370)))

(declare-fun b_lambda!262961 () Bool)

(assert (=> (not b_lambda!262961) (not d!2178545)))

(declare-fun bs!1862687 () Bool)

(assert (= bs!1862687 d!2178545))

(assert (=> bs!1862687 m!7683236))

(declare-fun m!7683554 () Bool)

(assert (=> bs!1862687 m!7683554))

(declare-fun m!7683556 () Bool)

(assert (=> bs!1862687 m!7683556))

(assert (=> bs!1862687 m!7683244))

(assert (=> b!6993035 d!2178545))

(assert (=> b!6993035 d!2178537))

(declare-fun b!6993283 () Bool)

(declare-fun e!4203460 () (Set Context!12476))

(declare-fun call!634874 () (Set Context!12476))

(assert (=> b!6993283 (= e!4203460 call!634874)))

(declare-fun b!6993284 () Bool)

(declare-fun e!4203461 () Bool)

(assert (=> b!6993284 (= e!4203461 (nullable!7002 (h!73595 (exprs!6738 lt!2490128))))))

(declare-fun b!6993286 () Bool)

(assert (=> b!6993286 (= e!4203460 (as set.empty (Set Context!12476)))))

(declare-fun e!4203459 () (Set Context!12476))

(declare-fun b!6993287 () Bool)

(assert (=> b!6993287 (= e!4203459 (set.union call!634874 (derivationStepZipperUp!1892 (Context!12477 (t!381018 (exprs!6738 lt!2490128))) (h!73596 s!7408))))))

(declare-fun bm!634869 () Bool)

(assert (=> bm!634869 (= call!634874 (derivationStepZipperDown!1960 (h!73595 (exprs!6738 lt!2490128)) (Context!12477 (t!381018 (exprs!6738 lt!2490128))) (h!73596 s!7408)))))

(declare-fun d!2178547 () Bool)

(declare-fun c!1297365 () Bool)

(assert (=> d!2178547 (= c!1297365 e!4203461)))

(declare-fun res!2852332 () Bool)

(assert (=> d!2178547 (=> (not res!2852332) (not e!4203461))))

(assert (=> d!2178547 (= res!2852332 (is-Cons!67147 (exprs!6738 lt!2490128)))))

(assert (=> d!2178547 (= (derivationStepZipperUp!1892 lt!2490128 (h!73596 s!7408)) e!4203459)))

(declare-fun b!6993285 () Bool)

(assert (=> b!6993285 (= e!4203459 e!4203460)))

(declare-fun c!1297364 () Bool)

(assert (=> b!6993285 (= c!1297364 (is-Cons!67147 (exprs!6738 lt!2490128)))))

(assert (= (and d!2178547 res!2852332) b!6993284))

(assert (= (and d!2178547 c!1297365) b!6993287))

(assert (= (and d!2178547 (not c!1297365)) b!6993285))

(assert (= (and b!6993285 c!1297364) b!6993283))

(assert (= (and b!6993285 (not c!1297364)) b!6993286))

(assert (= (or b!6993287 b!6993283) bm!634869))

(declare-fun m!7683558 () Bool)

(assert (=> b!6993284 m!7683558))

(declare-fun m!7683560 () Bool)

(assert (=> b!6993287 m!7683560))

(declare-fun m!7683562 () Bool)

(assert (=> bm!634869 m!7683562))

(assert (=> b!6993035 d!2178547))

(declare-fun d!2178549 () Bool)

(assert (=> d!2178549 (= (flatMap!2228 lt!2490161 lambda!403128) (choose!52351 lt!2490161 lambda!403128))))

(declare-fun bs!1862688 () Bool)

(assert (= bs!1862688 d!2178549))

(declare-fun m!7683564 () Bool)

(assert (=> bs!1862688 m!7683564))

(assert (=> b!6993035 d!2178549))

(declare-fun bs!1862689 () Bool)

(declare-fun d!2178551 () Bool)

(assert (= bs!1862689 (and d!2178551 b!6993035)))

(declare-fun lambda!403199 () Int)

(assert (=> bs!1862689 (= lambda!403199 lambda!403128)))

(assert (=> d!2178551 true))

(assert (=> d!2178551 (= (derivationStepZipper!2722 lt!2490161 (h!73596 s!7408)) (flatMap!2228 lt!2490161 lambda!403199))))

(declare-fun bs!1862690 () Bool)

(assert (= bs!1862690 d!2178551))

(declare-fun m!7683566 () Bool)

(assert (=> bs!1862690 m!7683566))

(assert (=> b!6993035 d!2178551))

(declare-fun d!2178553 () Bool)

(declare-fun lt!2490371 () Int)

(assert (=> d!2178553 (>= lt!2490371 0)))

(declare-fun e!4203462 () Int)

(assert (=> d!2178553 (= lt!2490371 e!4203462)))

(declare-fun c!1297368 () Bool)

(assert (=> d!2178553 (= c!1297368 (is-Cons!67149 (Cons!67149 lt!2490170 Nil!67149)))))

(assert (=> d!2178553 (= (zipperDepthTotal!463 (Cons!67149 lt!2490170 Nil!67149)) lt!2490371)))

(declare-fun b!6993290 () Bool)

(assert (=> b!6993290 (= e!4203462 (+ (contextDepthTotal!435 (h!73597 (Cons!67149 lt!2490170 Nil!67149))) (zipperDepthTotal!463 (t!381020 (Cons!67149 lt!2490170 Nil!67149)))))))

(declare-fun b!6993291 () Bool)

(assert (=> b!6993291 (= e!4203462 0)))

(assert (= (and d!2178553 c!1297368) b!6993290))

(assert (= (and d!2178553 (not c!1297368)) b!6993291))

(declare-fun m!7683568 () Bool)

(assert (=> b!6993290 m!7683568))

(declare-fun m!7683570 () Bool)

(assert (=> b!6993290 m!7683570))

(assert (=> b!6993036 d!2178553))

(assert (=> b!6993055 d!2178495))

(declare-fun d!2178555 () Bool)

(declare-fun c!1297369 () Bool)

(assert (=> d!2178555 (= c!1297369 (isEmpty!39191 s!7408))))

(declare-fun e!4203463 () Bool)

(assert (=> d!2178555 (= (matchZipper!2782 lt!2490148 s!7408) e!4203463)))

(declare-fun b!6993292 () Bool)

(assert (=> b!6993292 (= e!4203463 (nullableZipper!2449 lt!2490148))))

(declare-fun b!6993293 () Bool)

(assert (=> b!6993293 (= e!4203463 (matchZipper!2782 (derivationStepZipper!2722 lt!2490148 (head!14124 s!7408)) (tail!13266 s!7408)))))

(assert (= (and d!2178555 c!1297369) b!6993292))

(assert (= (and d!2178555 (not c!1297369)) b!6993293))

(assert (=> d!2178555 m!7683442))

(declare-fun m!7683572 () Bool)

(assert (=> b!6993292 m!7683572))

(assert (=> b!6993293 m!7683446))

(assert (=> b!6993293 m!7683446))

(declare-fun m!7683574 () Bool)

(assert (=> b!6993293 m!7683574))

(assert (=> b!6993293 m!7683450))

(assert (=> b!6993293 m!7683574))

(assert (=> b!6993293 m!7683450))

(declare-fun m!7683576 () Bool)

(assert (=> b!6993293 m!7683576))

(assert (=> b!6993041 d!2178555))

(assert (=> b!6993041 d!2178497))

(declare-fun d!2178557 () Bool)

(declare-fun e!4203466 () Bool)

(assert (=> d!2178557 e!4203466))

(declare-fun res!2852335 () Bool)

(assert (=> d!2178557 (=> (not res!2852335) (not e!4203466))))

(declare-fun lt!2490374 () Context!12476)

(declare-fun dynLambda!26952 (Int Context!12476) Bool)

(assert (=> d!2178557 (= res!2852335 (dynLambda!26952 lambda!403125 lt!2490374))))

(declare-fun getWitness!1152 (List!67273 Int) Context!12476)

(assert (=> d!2178557 (= lt!2490374 (getWitness!1152 (toList!10602 lt!2490130) lambda!403125))))

(declare-fun exists!3040 ((Set Context!12476) Int) Bool)

(assert (=> d!2178557 (exists!3040 lt!2490130 lambda!403125)))

(assert (=> d!2178557 (= (getWitness!1150 lt!2490130 lambda!403125) lt!2490374)))

(declare-fun b!6993296 () Bool)

(assert (=> b!6993296 (= e!4203466 (set.member lt!2490374 lt!2490130))))

(assert (= (and d!2178557 res!2852335) b!6993296))

(declare-fun b_lambda!262963 () Bool)

(assert (=> (not b_lambda!262963) (not d!2178557)))

(declare-fun m!7683578 () Bool)

(assert (=> d!2178557 m!7683578))

(assert (=> d!2178557 m!7683214))

(assert (=> d!2178557 m!7683214))

(declare-fun m!7683580 () Bool)

(assert (=> d!2178557 m!7683580))

(declare-fun m!7683582 () Bool)

(assert (=> d!2178557 m!7683582))

(declare-fun m!7683584 () Bool)

(assert (=> b!6993296 m!7683584))

(assert (=> b!6993033 d!2178557))

(declare-fun d!2178559 () Bool)

(declare-fun c!1297370 () Bool)

(assert (=> d!2178559 (= c!1297370 (isEmpty!39191 s!7408))))

(declare-fun e!4203467 () Bool)

(assert (=> d!2178559 (= (matchZipper!2782 lt!2490141 s!7408) e!4203467)))

(declare-fun b!6993297 () Bool)

(assert (=> b!6993297 (= e!4203467 (nullableZipper!2449 lt!2490141))))

(declare-fun b!6993298 () Bool)

(assert (=> b!6993298 (= e!4203467 (matchZipper!2782 (derivationStepZipper!2722 lt!2490141 (head!14124 s!7408)) (tail!13266 s!7408)))))

(assert (= (and d!2178559 c!1297370) b!6993297))

(assert (= (and d!2178559 (not c!1297370)) b!6993298))

(assert (=> d!2178559 m!7683442))

(declare-fun m!7683586 () Bool)

(assert (=> b!6993297 m!7683586))

(assert (=> b!6993298 m!7683446))

(assert (=> b!6993298 m!7683446))

(declare-fun m!7683588 () Bool)

(assert (=> b!6993298 m!7683588))

(assert (=> b!6993298 m!7683450))

(assert (=> b!6993298 m!7683588))

(assert (=> b!6993298 m!7683450))

(declare-fun m!7683590 () Bool)

(assert (=> b!6993298 m!7683590))

(assert (=> b!6993033 d!2178559))

(declare-fun bs!1862691 () Bool)

(declare-fun d!2178561 () Bool)

(assert (= bs!1862691 (and d!2178561 b!6993033)))

(declare-fun lambda!403202 () Int)

(assert (=> bs!1862691 (= lambda!403202 lambda!403125)))

(assert (=> d!2178561 true))

(assert (=> d!2178561 (exists!3038 lt!2490144 lambda!403202)))

(declare-fun lt!2490377 () Unit!161139)

(declare-fun choose!52353 (List!67273 List!67272) Unit!161139)

(assert (=> d!2178561 (= lt!2490377 (choose!52353 lt!2490144 s!7408))))

(assert (=> d!2178561 (matchZipper!2782 (content!13281 lt!2490144) s!7408)))

(assert (=> d!2178561 (= (lemmaZipperMatchesExistsMatchingContext!211 lt!2490144 s!7408) lt!2490377)))

(declare-fun bs!1862692 () Bool)

(assert (= bs!1862692 d!2178561))

(declare-fun m!7683592 () Bool)

(assert (=> bs!1862692 m!7683592))

(declare-fun m!7683594 () Bool)

(assert (=> bs!1862692 m!7683594))

(declare-fun m!7683596 () Bool)

(assert (=> bs!1862692 m!7683596))

(assert (=> bs!1862692 m!7683596))

(declare-fun m!7683598 () Bool)

(assert (=> bs!1862692 m!7683598))

(assert (=> b!6993033 d!2178561))

(declare-fun bs!1862693 () Bool)

(declare-fun d!2178563 () Bool)

(assert (= bs!1862693 (and d!2178563 b!6993033)))

(declare-fun lambda!403205 () Int)

(assert (=> bs!1862693 (not (= lambda!403205 lambda!403125))))

(declare-fun bs!1862694 () Bool)

(assert (= bs!1862694 (and d!2178563 d!2178561)))

(assert (=> bs!1862694 (not (= lambda!403205 lambda!403202))))

(assert (=> d!2178563 true))

(declare-fun order!27949 () Int)

(declare-fun dynLambda!26953 (Int Int) Int)

(assert (=> d!2178563 (< (dynLambda!26953 order!27949 lambda!403125) (dynLambda!26953 order!27949 lambda!403205))))

(declare-fun forall!16160 (List!67273 Int) Bool)

(assert (=> d!2178563 (= (exists!3038 lt!2490144 lambda!403125) (not (forall!16160 lt!2490144 lambda!403205)))))

(declare-fun bs!1862695 () Bool)

(assert (= bs!1862695 d!2178563))

(declare-fun m!7683600 () Bool)

(assert (=> bs!1862695 m!7683600))

(assert (=> b!6993033 d!2178563))

(declare-fun d!2178565 () Bool)

(declare-fun e!4203468 () Bool)

(assert (=> d!2178565 e!4203468))

(declare-fun res!2852336 () Bool)

(assert (=> d!2178565 (=> (not res!2852336) (not e!4203468))))

(declare-fun lt!2490378 () List!67273)

(assert (=> d!2178565 (= res!2852336 (noDuplicate!2532 lt!2490378))))

(assert (=> d!2178565 (= lt!2490378 (choose!52348 lt!2490130))))

(assert (=> d!2178565 (= (toList!10602 lt!2490130) lt!2490378)))

(declare-fun b!6993301 () Bool)

(assert (=> b!6993301 (= e!4203468 (= (content!13281 lt!2490378) lt!2490130))))

(assert (= (and d!2178565 res!2852336) b!6993301))

(declare-fun m!7683602 () Bool)

(assert (=> d!2178565 m!7683602))

(declare-fun m!7683604 () Bool)

(assert (=> d!2178565 m!7683604))

(declare-fun m!7683606 () Bool)

(assert (=> b!6993301 m!7683606))

(assert (=> b!6993033 d!2178565))

(declare-fun bs!1862696 () Bool)

(declare-fun d!2178567 () Bool)

(assert (= bs!1862696 (and d!2178567 b!6993054)))

(declare-fun lambda!403206 () Int)

(assert (=> bs!1862696 (= lambda!403206 lambda!403127)))

(declare-fun bs!1862697 () Bool)

(assert (= bs!1862697 (and d!2178567 d!2178511)))

(assert (=> bs!1862697 (= lambda!403206 lambda!403196)))

(assert (=> d!2178567 (= (inv!85965 setElem!47922) (forall!16159 (exprs!6738 setElem!47922) lambda!403206))))

(declare-fun bs!1862698 () Bool)

(assert (= bs!1862698 d!2178567))

(declare-fun m!7683608 () Bool)

(assert (=> bs!1862698 m!7683608))

(assert (=> setNonEmpty!47922 d!2178567))

(declare-fun d!2178569 () Bool)

(assert (=> d!2178569 (= (isEmpty!39188 (exprs!6738 lt!2490166)) (is-Nil!67147 (exprs!6738 lt!2490166)))))

(assert (=> b!6993039 d!2178569))

(declare-fun bs!1862699 () Bool)

(declare-fun d!2178571 () Bool)

(assert (= bs!1862699 (and d!2178571 b!6993035)))

(declare-fun lambda!403207 () Int)

(assert (=> bs!1862699 (= lambda!403207 lambda!403128)))

(declare-fun bs!1862700 () Bool)

(assert (= bs!1862700 (and d!2178571 d!2178551)))

(assert (=> bs!1862700 (= lambda!403207 lambda!403199)))

(assert (=> d!2178571 true))

(assert (=> d!2178571 (= (derivationStepZipper!2722 lt!2490148 (h!73596 s!7408)) (flatMap!2228 lt!2490148 lambda!403207))))

(declare-fun bs!1862701 () Bool)

(assert (= bs!1862701 d!2178571))

(declare-fun m!7683610 () Bool)

(assert (=> bs!1862701 m!7683610))

(assert (=> b!6993050 d!2178571))

(assert (=> b!6993050 d!2178497))

(assert (=> b!6993050 d!2178541))

(declare-fun d!2178573 () Bool)

(assert (=> d!2178573 (= (flatMap!2228 lt!2490148 lambda!403128) (choose!52351 lt!2490148 lambda!403128))))

(declare-fun bs!1862702 () Bool)

(assert (= bs!1862702 d!2178573))

(declare-fun m!7683612 () Bool)

(assert (=> bs!1862702 m!7683612))

(assert (=> b!6993050 d!2178573))

(declare-fun d!2178575 () Bool)

(assert (=> d!2178575 (= (flatMap!2228 lt!2490148 lambda!403128) (dynLambda!26950 lambda!403128 lt!2490160))))

(declare-fun lt!2490379 () Unit!161139)

(assert (=> d!2178575 (= lt!2490379 (choose!52347 lt!2490148 lt!2490160 lambda!403128))))

(assert (=> d!2178575 (= lt!2490148 (set.insert lt!2490160 (as set.empty (Set Context!12476))))))

(assert (=> d!2178575 (= (lemmaFlatMapOnSingletonSet!1743 lt!2490148 lt!2490160 lambda!403128) lt!2490379)))

(declare-fun b_lambda!262965 () Bool)

(assert (=> (not b_lambda!262965) (not d!2178575)))

(declare-fun bs!1862703 () Bool)

(assert (= bs!1862703 d!2178575))

(assert (=> bs!1862703 m!7683224))

(declare-fun m!7683614 () Bool)

(assert (=> bs!1862703 m!7683614))

(declare-fun m!7683616 () Bool)

(assert (=> bs!1862703 m!7683616))

(assert (=> bs!1862703 m!7683222))

(assert (=> b!6993050 d!2178575))

(assert (=> b!6993040 d!2178495))

(assert (=> b!6993040 d!2178497))

(declare-fun b!6993306 () Bool)

(declare-fun e!4203471 () Bool)

(declare-fun tp!1930241 () Bool)

(assert (=> b!6993306 (= e!4203471 (and tp_is_empty!43709 tp!1930241))))

(assert (=> b!6993052 (= tp!1930223 e!4203471)))

(assert (= (and b!6993052 (is-Cons!67148 (t!381019 s!7408))) b!6993306))

(declare-fun b!6993311 () Bool)

(declare-fun e!4203474 () Bool)

(declare-fun tp!1930246 () Bool)

(declare-fun tp!1930247 () Bool)

(assert (=> b!6993311 (= e!4203474 (and tp!1930246 tp!1930247))))

(assert (=> b!6993042 (= tp!1930224 e!4203474)))

(assert (= (and b!6993042 (is-Cons!67147 (exprs!6738 setElem!47922))) b!6993311))

(declare-fun b!6993312 () Bool)

(declare-fun e!4203475 () Bool)

(declare-fun tp!1930248 () Bool)

(declare-fun tp!1930249 () Bool)

(assert (=> b!6993312 (= e!4203475 (and tp!1930248 tp!1930249))))

(assert (=> b!6993049 (= tp!1930226 e!4203475)))

(assert (= (and b!6993049 (is-Cons!67147 (exprs!6738 ct2!306))) b!6993312))

(declare-fun condSetEmpty!47928 () Bool)

(assert (=> setNonEmpty!47922 (= condSetEmpty!47928 (= setRest!47922 (as set.empty (Set Context!12476))))))

(declare-fun setRes!47928 () Bool)

(assert (=> setNonEmpty!47922 (= tp!1930225 setRes!47928)))

(declare-fun setIsEmpty!47928 () Bool)

(assert (=> setIsEmpty!47928 setRes!47928))

(declare-fun tp!1930255 () Bool)

(declare-fun setElem!47928 () Context!12476)

(declare-fun e!4203478 () Bool)

(declare-fun setNonEmpty!47928 () Bool)

(assert (=> setNonEmpty!47928 (= setRes!47928 (and tp!1930255 (inv!85965 setElem!47928) e!4203478))))

(declare-fun setRest!47928 () (Set Context!12476))

(assert (=> setNonEmpty!47928 (= setRest!47922 (set.union (set.insert setElem!47928 (as set.empty (Set Context!12476))) setRest!47928))))

(declare-fun b!6993317 () Bool)

(declare-fun tp!1930254 () Bool)

(assert (=> b!6993317 (= e!4203478 tp!1930254)))

(assert (= (and setNonEmpty!47922 condSetEmpty!47928) setIsEmpty!47928))

(assert (= (and setNonEmpty!47922 (not condSetEmpty!47928)) setNonEmpty!47928))

(assert (= setNonEmpty!47928 b!6993317))

(declare-fun m!7683618 () Bool)

(assert (=> setNonEmpty!47928 m!7683618))

(declare-fun b_lambda!262967 () Bool)

(assert (= b_lambda!262955 (or b!6993035 b_lambda!262967)))

(declare-fun bs!1862704 () Bool)

(declare-fun d!2178577 () Bool)

(assert (= bs!1862704 (and d!2178577 b!6993035)))

(assert (=> bs!1862704 (= (dynLambda!26950 lambda!403128 lt!2490170) (derivationStepZipperUp!1892 lt!2490170 (h!73596 s!7408)))))

(assert (=> bs!1862704 m!7683198))

(assert (=> d!2178517 d!2178577))

(declare-fun b_lambda!262969 () Bool)

(assert (= b_lambda!262963 (or b!6993033 b_lambda!262969)))

(declare-fun bs!1862705 () Bool)

(declare-fun d!2178579 () Bool)

(assert (= bs!1862705 (and d!2178579 b!6993033)))

(assert (=> bs!1862705 (= (dynLambda!26952 lambda!403125 lt!2490374) (matchZipper!2782 (set.insert lt!2490374 (as set.empty (Set Context!12476))) s!7408))))

(declare-fun m!7683620 () Bool)

(assert (=> bs!1862705 m!7683620))

(assert (=> bs!1862705 m!7683620))

(declare-fun m!7683622 () Bool)

(assert (=> bs!1862705 m!7683622))

(assert (=> d!2178557 d!2178579))

(declare-fun b_lambda!262971 () Bool)

(assert (= b_lambda!262961 (or b!6993035 b_lambda!262971)))

(declare-fun bs!1862706 () Bool)

(declare-fun d!2178581 () Bool)

(assert (= bs!1862706 (and d!2178581 b!6993035)))

(assert (=> bs!1862706 (= (dynLambda!26950 lambda!403128 lt!2490128) (derivationStepZipperUp!1892 lt!2490128 (h!73596 s!7408)))))

(assert (=> bs!1862706 m!7683238))

(assert (=> d!2178545 d!2178581))

(declare-fun b_lambda!262973 () Bool)

(assert (= b_lambda!262965 (or b!6993035 b_lambda!262973)))

(declare-fun bs!1862707 () Bool)

(declare-fun d!2178583 () Bool)

(assert (= bs!1862707 (and d!2178583 b!6993035)))

(assert (=> bs!1862707 (= (dynLambda!26950 lambda!403128 lt!2490160) (derivationStepZipperUp!1892 lt!2490160 (h!73596 s!7408)))))

(assert (=> bs!1862707 m!7683142))

(assert (=> d!2178575 d!2178583))

(declare-fun b_lambda!262975 () Bool)

(assert (= b_lambda!262959 (or b!6993054 b_lambda!262975)))

(declare-fun bs!1862708 () Bool)

(declare-fun d!2178585 () Bool)

(assert (= bs!1862708 (and d!2178585 b!6993054)))

(declare-fun lt!2490380 () Unit!161139)

(assert (=> bs!1862708 (= lt!2490380 (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490369) (exprs!6738 ct2!306) lambda!403127))))

(assert (=> bs!1862708 (= (dynLambda!26951 lambda!403126 lt!2490369) (Context!12477 (++!15188 (exprs!6738 lt!2490369) (exprs!6738 ct2!306))))))

(declare-fun m!7683624 () Bool)

(assert (=> bs!1862708 m!7683624))

(declare-fun m!7683626 () Bool)

(assert (=> bs!1862708 m!7683626))

(assert (=> d!2178539 d!2178585))

(declare-fun b_lambda!262977 () Bool)

(assert (= b_lambda!262957 (or b!6993054 b_lambda!262977)))

(declare-fun bs!1862709 () Bool)

(declare-fun d!2178587 () Bool)

(assert (= bs!1862709 (and d!2178587 b!6993054)))

(declare-fun lt!2490381 () Unit!161139)

(assert (=> bs!1862709 (= lt!2490381 (lemmaConcatPreservesForall!578 (exprs!6738 lt!2490170) (exprs!6738 ct2!306) lambda!403127))))

(assert (=> bs!1862709 (= (dynLambda!26951 lambda!403126 lt!2490170) (Context!12477 (++!15188 (exprs!6738 lt!2490170) (exprs!6738 ct2!306))))))

(declare-fun m!7683628 () Bool)

(assert (=> bs!1862709 m!7683628))

(declare-fun m!7683630 () Bool)

(assert (=> bs!1862709 m!7683630))

(assert (=> d!2178531 d!2178587))

(push 1)

(assert (not d!2178567))

(assert (not d!2178501))

(assert (not b_lambda!262975))

(assert (not b!6993190))

(assert (not d!2178573))

(assert (not d!2178491))

(assert (not b!6993187))

(assert (not b_lambda!262971))

(assert (not b!6993311))

(assert (not b!6993292))

(assert (not setNonEmpty!47928))

(assert (not b!6993297))

(assert (not b!6993186))

(assert (not d!2178525))

(assert (not b!6993174))

(assert (not b!6993192))

(assert (not d!2178519))

(assert (not d!2178493))

(assert (not b!6993169))

(assert (not b!6993168))

(assert (not b!6993238))

(assert (not b!6993249))

(assert (not d!2178521))

(assert (not bs!1862709))

(assert (not b!6993287))

(assert (not d!2178517))

(assert (not d!2178515))

(assert (not b!6993191))

(assert (not b!6993273))

(assert (not bs!1862707))

(assert (not d!2178549))

(assert (not bm!634863))

(assert (not b!6993312))

(assert (not d!2178483))

(assert (not b!6993209))

(assert (not d!2178545))

(assert (not b!6993301))

(assert (not bm!634864))

(assert (not d!2178561))

(assert (not d!2178511))

(assert (not d!2178565))

(assert (not b!6993188))

(assert (not bm!634869))

(assert (not b!6993147))

(assert (not d!2178531))

(assert (not b!6993290))

(assert (not b!6993214))

(assert (not b!6993173))

(assert (not d!2178497))

(assert (not bm!634866))

(assert (not b!6993293))

(assert (not b!6993181))

(assert (not d!2178571))

(assert (not bm!634850))

(assert (not b!6993246))

(assert (not b!6993317))

(assert (not b_lambda!262967))

(assert (not d!2178533))

(assert (not b!6993233))

(assert (not b_lambda!262977))

(assert (not b!6993189))

(assert (not d!2178539))

(assert (not b!6993184))

(assert (not d!2178557))

(assert (not b_lambda!262973))

(assert (not d!2178509))

(assert (not d!2178559))

(assert (not d!2178507))

(assert (not d!2178505))

(assert (not b!6993213))

(assert (not b!6993167))

(assert (not b!6993239))

(assert (not d!2178499))

(assert (not b!6993236))

(assert (not bs!1862704))

(assert tp_is_empty!43709)

(assert (not b!6993197))

(assert (not d!2178575))

(assert (not d!2178487))

(assert (not b!6993298))

(assert (not b_lambda!262969))

(assert (not bs!1862708))

(assert (not b!6993306))

(assert (not d!2178535))

(assert (not bs!1862705))

(assert (not b!6993180))

(assert (not b!6993284))

(assert (not d!2178551))

(assert (not d!2178555))

(assert (not bm!634849))

(assert (not b!6993220))

(assert (not b!6993146))

(assert (not bs!1862706))

(assert (not d!2178489))

(assert (not d!2178537))

(assert (not b!6993170))

(assert (not d!2178495))

(assert (not d!2178563))

(assert (not b!6993185))

(assert (not d!2178503))

(assert (not b!6993208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

