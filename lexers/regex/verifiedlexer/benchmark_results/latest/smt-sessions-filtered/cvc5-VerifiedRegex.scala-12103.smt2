; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!678834 () Bool)

(assert start!678834)

(declare-fun b!7028814 () Bool)

(assert (=> b!7028814 true))

(declare-fun b!7028801 () Bool)

(assert (=> b!7028801 true))

(declare-fun b!7028796 () Bool)

(assert (=> b!7028796 true))

(declare-fun res!2869230 () Bool)

(declare-fun e!4225438 () Bool)

(assert (=> start!678834 (=> (not res!2869230) (not e!4225438))))

(declare-datatypes ((C!35174 0))(
  ( (C!35175 (val!27289 Int)) )
))
(declare-datatypes ((Regex!17452 0))(
  ( (ElementMatch!17452 (c!1306901 C!35174)) (Concat!26297 (regOne!35416 Regex!17452) (regTwo!35416 Regex!17452)) (EmptyExpr!17452) (Star!17452 (reg!17781 Regex!17452)) (EmptyLang!17452) (Union!17452 (regOne!35417 Regex!17452) (regTwo!35417 Regex!17452)) )
))
(declare-datatypes ((List!67884 0))(
  ( (Nil!67760) (Cons!67760 (h!74208 Regex!17452) (t!381647 List!67884)) )
))
(declare-datatypes ((Context!12896 0))(
  ( (Context!12897 (exprs!6948 List!67884)) )
))
(declare-fun lt!2516184 () (Set Context!12896))

(declare-datatypes ((List!67885 0))(
  ( (Nil!67761) (Cons!67761 (h!74209 C!35174) (t!381648 List!67885)) )
))
(declare-fun s!7408 () List!67885)

(declare-fun matchZipper!2992 ((Set Context!12896) List!67885) Bool)

(assert (=> start!678834 (= res!2869230 (matchZipper!2992 lt!2516184 s!7408))))

(declare-fun z1!570 () (Set Context!12896))

(declare-fun ct2!306 () Context!12896)

(declare-fun appendTo!573 ((Set Context!12896) Context!12896) (Set Context!12896))

(assert (=> start!678834 (= lt!2516184 (appendTo!573 z1!570 ct2!306))))

(assert (=> start!678834 e!4225438))

(declare-fun condSetEmpty!49067 () Bool)

(assert (=> start!678834 (= condSetEmpty!49067 (= z1!570 (as set.empty (Set Context!12896))))))

(declare-fun setRes!49067 () Bool)

(assert (=> start!678834 setRes!49067))

(declare-fun e!4225441 () Bool)

(declare-fun inv!86490 (Context!12896) Bool)

(assert (=> start!678834 (and (inv!86490 ct2!306) e!4225441)))

(declare-fun e!4225437 () Bool)

(assert (=> start!678834 e!4225437))

(declare-fun e!4225440 () Bool)

(declare-fun e!4225435 () Bool)

(assert (=> b!7028796 (= e!4225440 e!4225435)))

(declare-fun res!2869229 () Bool)

(assert (=> b!7028796 (=> res!2869229 e!4225435)))

(declare-fun lt!2516162 () (Set Context!12896))

(declare-fun lt!2516177 () (Set Context!12896))

(declare-fun derivationStepZipper!2908 ((Set Context!12896) C!35174) (Set Context!12896))

(assert (=> b!7028796 (= res!2869229 (not (= (derivationStepZipper!2908 lt!2516162 (h!74209 s!7408)) lt!2516177)))))

(declare-fun lambda!413733 () Int)

(declare-fun lt!2516148 () Context!12896)

(declare-fun flatMap!2399 ((Set Context!12896) Int) (Set Context!12896))

(declare-fun derivationStepZipperUp!2062 (Context!12896 C!35174) (Set Context!12896))

(assert (=> b!7028796 (= (flatMap!2399 lt!2516162 lambda!413733) (derivationStepZipperUp!2062 lt!2516148 (h!74209 s!7408)))))

(declare-datatypes ((Unit!161572 0))(
  ( (Unit!161573) )
))
(declare-fun lt!2516178 () Unit!161572)

(declare-fun lemmaFlatMapOnSingletonSet!1913 ((Set Context!12896) Context!12896 Int) Unit!161572)

(assert (=> b!7028796 (= lt!2516178 (lemmaFlatMapOnSingletonSet!1913 lt!2516162 lt!2516148 lambda!413733))))

(assert (=> b!7028796 (= lt!2516177 (derivationStepZipperUp!2062 lt!2516148 (h!74209 s!7408)))))

(declare-fun lt!2516181 () Unit!161572)

(declare-fun lambda!413732 () Int)

(declare-fun lt!2516156 () Context!12896)

(declare-fun lemmaConcatPreservesForall!773 (List!67884 List!67884 Int) Unit!161572)

(assert (=> b!7028796 (= lt!2516181 (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516156) (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028797 () Bool)

(declare-fun e!4225443 () Bool)

(declare-fun lt!2516174 () (Set Context!12896))

(assert (=> b!7028797 (= e!4225443 (matchZipper!2992 lt!2516174 (t!381648 s!7408)))))

(declare-fun setIsEmpty!49067 () Bool)

(assert (=> setIsEmpty!49067 setRes!49067))

(declare-fun b!7028798 () Bool)

(declare-fun res!2869243 () Bool)

(assert (=> b!7028798 (=> (not res!2869243) (not e!4225438))))

(assert (=> b!7028798 (= res!2869243 (is-Cons!67761 s!7408))))

(declare-fun b!7028799 () Bool)

(declare-fun e!4225432 () Bool)

(declare-fun e!4225439 () Bool)

(assert (=> b!7028799 (= e!4225432 e!4225439)))

(declare-fun res!2869247 () Bool)

(assert (=> b!7028799 (=> res!2869247 e!4225439)))

(declare-fun e!4225442 () Bool)

(assert (=> b!7028799 (= res!2869247 e!4225442)))

(declare-fun res!2869239 () Bool)

(assert (=> b!7028799 (=> (not res!2869239) (not e!4225442))))

(declare-fun lt!2516152 () Bool)

(declare-fun lt!2516149 () Bool)

(assert (=> b!7028799 (= res!2869239 (not (= lt!2516152 lt!2516149)))))

(assert (=> b!7028799 (= lt!2516152 (matchZipper!2992 lt!2516177 (t!381648 s!7408)))))

(declare-fun lt!2516190 () Unit!161572)

(declare-fun lt!2516146 () List!67884)

(assert (=> b!7028799 (= lt!2516190 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516187 () (Set Context!12896))

(assert (=> b!7028799 (= (matchZipper!2992 lt!2516187 (t!381648 s!7408)) e!4225443)))

(declare-fun res!2869240 () Bool)

(assert (=> b!7028799 (=> res!2869240 e!4225443)))

(assert (=> b!7028799 (= res!2869240 lt!2516149)))

(declare-fun lt!2516172 () (Set Context!12896))

(assert (=> b!7028799 (= lt!2516149 (matchZipper!2992 lt!2516172 (t!381648 s!7408)))))

(declare-fun lt!2516169 () Unit!161572)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1525 ((Set Context!12896) (Set Context!12896) List!67885) Unit!161572)

(assert (=> b!7028799 (= lt!2516169 (lemmaZipperConcatMatchesSameAsBothZippers!1525 lt!2516172 lt!2516174 (t!381648 s!7408)))))

(declare-fun lt!2516144 () Unit!161572)

(assert (=> b!7028799 (= lt!2516144 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516161 () Unit!161572)

(assert (=> b!7028799 (= lt!2516161 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028800 () Bool)

(declare-fun res!2869235 () Bool)

(assert (=> b!7028800 (=> res!2869235 e!4225435)))

(assert (=> b!7028800 (= res!2869235 (not (is-Cons!67760 (exprs!6948 lt!2516156))))))

(declare-fun e!4225433 () Bool)

(declare-fun e!4225434 () Bool)

(assert (=> b!7028801 (= e!4225433 e!4225434)))

(declare-fun res!2869245 () Bool)

(assert (=> b!7028801 (=> res!2869245 e!4225434)))

(declare-fun lt!2516186 () Context!12896)

(assert (=> b!7028801 (= res!2869245 (or (not (= lt!2516148 lt!2516186)) (not (set.member lt!2516156 z1!570))))))

(declare-fun ++!15485 (List!67884 List!67884) List!67884)

(assert (=> b!7028801 (= lt!2516148 (Context!12897 (++!15485 (exprs!6948 lt!2516156) (exprs!6948 ct2!306))))))

(declare-fun lt!2516175 () Unit!161572)

(assert (=> b!7028801 (= lt!2516175 (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516156) (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lambda!413731 () Int)

(declare-fun mapPost2!293 ((Set Context!12896) Int Context!12896) Context!12896)

(assert (=> b!7028801 (= lt!2516156 (mapPost2!293 z1!570 lambda!413731 lt!2516186))))

(declare-fun b!7028802 () Bool)

(declare-fun e!4225444 () Bool)

(declare-fun lt!2516157 () (Set Context!12896))

(declare-datatypes ((tuple2!68050 0))(
  ( (tuple2!68051 (_1!37328 List!67885) (_2!37328 List!67885)) )
))
(declare-datatypes ((Option!16857 0))(
  ( (None!16856) (Some!16856 (v!53138 tuple2!68050)) )
))
(declare-fun lt!2516163 () Option!16857)

(declare-fun get!23734 (Option!16857) tuple2!68050)

(assert (=> b!7028802 (= e!4225444 (matchZipper!2992 lt!2516157 (_1!37328 (get!23734 lt!2516163))))))

(declare-fun isDefined!13558 (Option!16857) Bool)

(assert (=> b!7028802 (isDefined!13558 lt!2516163)))

(declare-fun findConcatSeparationZippers!373 ((Set Context!12896) (Set Context!12896) List!67885 List!67885 List!67885) Option!16857)

(assert (=> b!7028802 (= lt!2516163 (findConcatSeparationZippers!373 lt!2516157 (set.insert ct2!306 (as set.empty (Set Context!12896))) Nil!67761 s!7408 s!7408))))

(declare-fun lt!2516160 () Unit!161572)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!361 ((Set Context!12896) Context!12896 List!67885) Unit!161572)

(assert (=> b!7028802 (= lt!2516160 (lemmaConcatZipperMatchesStringThenFindConcatDefined!361 lt!2516157 ct2!306 s!7408))))

(declare-fun b!7028803 () Bool)

(declare-fun e!4225431 () Bool)

(assert (=> b!7028803 (= e!4225439 e!4225431)))

(declare-fun res!2869248 () Bool)

(assert (=> b!7028803 (=> res!2869248 e!4225431)))

(assert (=> b!7028803 (= res!2869248 (not (matchZipper!2992 lt!2516174 (t!381648 s!7408))))))

(declare-fun lt!2516170 () Unit!161572)

(assert (=> b!7028803 (= lt!2516170 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028804 () Bool)

(declare-fun res!2869236 () Bool)

(assert (=> b!7028804 (=> res!2869236 e!4225439)))

(assert (=> b!7028804 (= res!2869236 (not lt!2516152))))

(declare-fun b!7028805 () Bool)

(declare-fun e!4225445 () Bool)

(assert (=> b!7028805 (= e!4225435 e!4225445)))

(declare-fun res!2869246 () Bool)

(assert (=> b!7028805 (=> res!2869246 e!4225445)))

(declare-fun nullable!7163 (Regex!17452) Bool)

(assert (=> b!7028805 (= res!2869246 (not (nullable!7163 (h!74208 (exprs!6948 lt!2516156)))))))

(declare-fun lt!2516188 () Context!12896)

(assert (=> b!7028805 (= lt!2516188 (Context!12897 lt!2516146))))

(declare-fun tail!13529 (List!67884) List!67884)

(assert (=> b!7028805 (= lt!2516146 (tail!13529 (exprs!6948 lt!2516156)))))

(declare-fun b!7028806 () Bool)

(declare-fun e!4225436 () Bool)

(assert (=> b!7028806 (= e!4225436 e!4225444)))

(declare-fun res!2869232 () Bool)

(assert (=> b!7028806 (=> res!2869232 e!4225444)))

(declare-fun lt!2516155 () Int)

(declare-fun contextDepthTotal!487 (Context!12896) Int)

(assert (=> b!7028806 (= res!2869232 (<= lt!2516155 (contextDepthTotal!487 lt!2516188)))))

(declare-fun lt!2516166 () Int)

(assert (=> b!7028806 (<= lt!2516155 lt!2516166)))

(declare-datatypes ((List!67886 0))(
  ( (Nil!67762) (Cons!67762 (h!74210 Context!12896) (t!381649 List!67886)) )
))
(declare-fun lt!2516154 () List!67886)

(declare-fun zipperDepthTotal!515 (List!67886) Int)

(assert (=> b!7028806 (= lt!2516166 (zipperDepthTotal!515 lt!2516154))))

(assert (=> b!7028806 (= lt!2516155 (contextDepthTotal!487 lt!2516156))))

(declare-fun lt!2516171 () Unit!161572)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!55 (List!67886 Context!12896) Unit!161572)

(assert (=> b!7028806 (= lt!2516171 (lemmaTotalDepthZipperLargerThanOfAnyContext!55 lt!2516154 lt!2516156))))

(declare-fun toList!10795 ((Set Context!12896)) List!67886)

(assert (=> b!7028806 (= lt!2516154 (toList!10795 z1!570))))

(declare-fun lt!2516179 () Unit!161572)

(assert (=> b!7028806 (= lt!2516179 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516153 () Unit!161572)

(assert (=> b!7028806 (= lt!2516153 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516173 () Unit!161572)

(assert (=> b!7028806 (= lt!2516173 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(assert (=> b!7028806 (= (flatMap!2399 lt!2516157 lambda!413733) (derivationStepZipperUp!2062 lt!2516188 (h!74209 s!7408)))))

(declare-fun lt!2516168 () Unit!161572)

(assert (=> b!7028806 (= lt!2516168 (lemmaFlatMapOnSingletonSet!1913 lt!2516157 lt!2516188 lambda!413733))))

(declare-fun map!15746 ((Set Context!12896) Int) (Set Context!12896))

(assert (=> b!7028806 (= (map!15746 lt!2516157 lambda!413731) (set.insert (Context!12897 (++!15485 lt!2516146 (exprs!6948 ct2!306))) (as set.empty (Set Context!12896))))))

(declare-fun lt!2516147 () Unit!161572)

(assert (=> b!7028806 (= lt!2516147 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516185 () Unit!161572)

(declare-fun lemmaMapOnSingletonSet!363 ((Set Context!12896) Context!12896 Int) Unit!161572)

(assert (=> b!7028806 (= lt!2516185 (lemmaMapOnSingletonSet!363 lt!2516157 lt!2516188 lambda!413731))))

(assert (=> b!7028806 (= lt!2516157 (set.insert lt!2516188 (as set.empty (Set Context!12896))))))

(declare-fun b!7028807 () Bool)

(assert (=> b!7028807 (= e!4225434 e!4225440)))

(declare-fun res!2869237 () Bool)

(assert (=> b!7028807 (=> res!2869237 e!4225440)))

(declare-fun lt!2516150 () (Set Context!12896))

(assert (=> b!7028807 (= res!2869237 (not (= lt!2516162 lt!2516150)))))

(assert (=> b!7028807 (= lt!2516162 (set.insert lt!2516148 (as set.empty (Set Context!12896))))))

(declare-fun lt!2516189 () Unit!161572)

(assert (=> b!7028807 (= lt!2516189 (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516156) (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028808 () Bool)

(assert (=> b!7028808 (= e!4225445 e!4225432)))

(declare-fun res!2869244 () Bool)

(assert (=> b!7028808 (=> res!2869244 e!4225432)))

(assert (=> b!7028808 (= res!2869244 (not (= lt!2516177 lt!2516187)))))

(assert (=> b!7028808 (= lt!2516187 (set.union lt!2516172 lt!2516174))))

(declare-fun lt!2516151 () Context!12896)

(assert (=> b!7028808 (= lt!2516174 (derivationStepZipperUp!2062 lt!2516151 (h!74209 s!7408)))))

(declare-fun derivationStepZipperDown!2116 (Regex!17452 Context!12896 C!35174) (Set Context!12896))

(assert (=> b!7028808 (= lt!2516172 (derivationStepZipperDown!2116 (h!74208 (exprs!6948 lt!2516156)) lt!2516151 (h!74209 s!7408)))))

(assert (=> b!7028808 (= lt!2516151 (Context!12897 (++!15485 lt!2516146 (exprs!6948 ct2!306))))))

(declare-fun lt!2516165 () Unit!161572)

(assert (=> b!7028808 (= lt!2516165 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516164 () Unit!161572)

(assert (=> b!7028808 (= lt!2516164 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028809 () Bool)

(declare-fun e!4225446 () Bool)

(assert (=> b!7028809 (= e!4225431 e!4225446)))

(declare-fun res!2869242 () Bool)

(assert (=> b!7028809 (=> res!2869242 e!4225446)))

(declare-fun lt!2516158 () (Set Context!12896))

(assert (=> b!7028809 (= res!2869242 (not (= (derivationStepZipper!2908 lt!2516158 (h!74209 s!7408)) lt!2516174)))))

(declare-fun lt!2516182 () Unit!161572)

(assert (=> b!7028809 (= lt!2516182 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516167 () Unit!161572)

(assert (=> b!7028809 (= lt!2516167 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(assert (=> b!7028809 (= (flatMap!2399 lt!2516158 lambda!413733) (derivationStepZipperUp!2062 lt!2516151 (h!74209 s!7408)))))

(declare-fun lt!2516183 () Unit!161572)

(assert (=> b!7028809 (= lt!2516183 (lemmaFlatMapOnSingletonSet!1913 lt!2516158 lt!2516151 lambda!413733))))

(assert (=> b!7028809 (= lt!2516158 (set.insert lt!2516151 (as set.empty (Set Context!12896))))))

(declare-fun lt!2516191 () Unit!161572)

(assert (=> b!7028809 (= lt!2516191 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun lt!2516145 () Unit!161572)

(assert (=> b!7028809 (= lt!2516145 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028810 () Bool)

(declare-fun res!2869233 () Bool)

(assert (=> b!7028810 (=> res!2869233 e!4225433)))

(assert (=> b!7028810 (= res!2869233 (not (set.member lt!2516186 lt!2516184)))))

(declare-fun setElem!49067 () Context!12896)

(declare-fun tp!1935968 () Bool)

(declare-fun e!4225430 () Bool)

(declare-fun setNonEmpty!49067 () Bool)

(assert (=> setNonEmpty!49067 (= setRes!49067 (and tp!1935968 (inv!86490 setElem!49067) e!4225430))))

(declare-fun setRest!49067 () (Set Context!12896))

(assert (=> setNonEmpty!49067 (= z1!570 (set.union (set.insert setElem!49067 (as set.empty (Set Context!12896))) setRest!49067))))

(declare-fun b!7028811 () Bool)

(assert (=> b!7028811 (= e!4225446 e!4225436)))

(declare-fun res!2869238 () Bool)

(assert (=> b!7028811 (=> res!2869238 e!4225436)))

(assert (=> b!7028811 (= res!2869238 (not (matchZipper!2992 lt!2516158 s!7408)))))

(declare-fun lt!2516180 () Unit!161572)

(assert (=> b!7028811 (= lt!2516180 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028812 () Bool)

(declare-fun tp_is_empty!44129 () Bool)

(declare-fun tp!1935970 () Bool)

(assert (=> b!7028812 (= e!4225437 (and tp_is_empty!44129 tp!1935970))))

(declare-fun b!7028813 () Bool)

(declare-fun tp!1935971 () Bool)

(assert (=> b!7028813 (= e!4225430 tp!1935971)))

(assert (=> b!7028814 (= e!4225438 (not e!4225433))))

(declare-fun res!2869234 () Bool)

(assert (=> b!7028814 (=> res!2869234 e!4225433)))

(assert (=> b!7028814 (= res!2869234 (not (matchZipper!2992 lt!2516150 s!7408)))))

(assert (=> b!7028814 (= lt!2516150 (set.insert lt!2516186 (as set.empty (Set Context!12896))))))

(declare-fun lambda!413730 () Int)

(declare-fun getWitness!1449 ((Set Context!12896) Int) Context!12896)

(assert (=> b!7028814 (= lt!2516186 (getWitness!1449 lt!2516184 lambda!413730))))

(declare-fun lt!2516176 () List!67886)

(declare-fun exists!3368 (List!67886 Int) Bool)

(assert (=> b!7028814 (exists!3368 lt!2516176 lambda!413730)))

(declare-fun lt!2516192 () Unit!161572)

(declare-fun lemmaZipperMatchesExistsMatchingContext!391 (List!67886 List!67885) Unit!161572)

(assert (=> b!7028814 (= lt!2516192 (lemmaZipperMatchesExistsMatchingContext!391 lt!2516176 s!7408))))

(assert (=> b!7028814 (= lt!2516176 (toList!10795 lt!2516184))))

(declare-fun b!7028815 () Bool)

(declare-fun tp!1935969 () Bool)

(assert (=> b!7028815 (= e!4225441 tp!1935969)))

(declare-fun b!7028816 () Bool)

(declare-fun res!2869241 () Bool)

(assert (=> b!7028816 (=> res!2869241 e!4225435)))

(declare-fun isEmpty!39508 (List!67884) Bool)

(assert (=> b!7028816 (= res!2869241 (isEmpty!39508 (exprs!6948 lt!2516156)))))

(declare-fun b!7028817 () Bool)

(assert (=> b!7028817 (= e!4225442 (not (matchZipper!2992 lt!2516174 (t!381648 s!7408))))))

(declare-fun lt!2516159 () Unit!161572)

(assert (=> b!7028817 (= lt!2516159 (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(declare-fun b!7028818 () Bool)

(declare-fun res!2869231 () Bool)

(assert (=> b!7028818 (=> res!2869231 e!4225444)))

(assert (=> b!7028818 (= res!2869231 (>= (zipperDepthTotal!515 (Cons!67762 lt!2516188 Nil!67762)) lt!2516166))))

(assert (= (and start!678834 res!2869230) b!7028798))

(assert (= (and b!7028798 res!2869243) b!7028814))

(assert (= (and b!7028814 (not res!2869234)) b!7028810))

(assert (= (and b!7028810 (not res!2869233)) b!7028801))

(assert (= (and b!7028801 (not res!2869245)) b!7028807))

(assert (= (and b!7028807 (not res!2869237)) b!7028796))

(assert (= (and b!7028796 (not res!2869229)) b!7028800))

(assert (= (and b!7028800 (not res!2869235)) b!7028816))

(assert (= (and b!7028816 (not res!2869241)) b!7028805))

(assert (= (and b!7028805 (not res!2869246)) b!7028808))

(assert (= (and b!7028808 (not res!2869244)) b!7028799))

(assert (= (and b!7028799 (not res!2869240)) b!7028797))

(assert (= (and b!7028799 res!2869239) b!7028817))

(assert (= (and b!7028799 (not res!2869247)) b!7028804))

(assert (= (and b!7028804 (not res!2869236)) b!7028803))

(assert (= (and b!7028803 (not res!2869248)) b!7028809))

(assert (= (and b!7028809 (not res!2869242)) b!7028811))

(assert (= (and b!7028811 (not res!2869238)) b!7028806))

(assert (= (and b!7028806 (not res!2869232)) b!7028818))

(assert (= (and b!7028818 (not res!2869231)) b!7028802))

(assert (= (and start!678834 condSetEmpty!49067) setIsEmpty!49067))

(assert (= (and start!678834 (not condSetEmpty!49067)) setNonEmpty!49067))

(assert (= setNonEmpty!49067 b!7028813))

(assert (= start!678834 b!7028815))

(assert (= (and start!678834 (is-Cons!67761 s!7408)) b!7028812))

(declare-fun m!7733240 () Bool)

(assert (=> b!7028817 m!7733240))

(declare-fun m!7733242 () Bool)

(assert (=> b!7028817 m!7733242))

(declare-fun m!7733244 () Bool)

(assert (=> b!7028802 m!7733244))

(declare-fun m!7733246 () Bool)

(assert (=> b!7028802 m!7733246))

(declare-fun m!7733248 () Bool)

(assert (=> b!7028802 m!7733248))

(declare-fun m!7733250 () Bool)

(assert (=> b!7028802 m!7733250))

(declare-fun m!7733252 () Bool)

(assert (=> b!7028802 m!7733252))

(assert (=> b!7028802 m!7733250))

(declare-fun m!7733254 () Bool)

(assert (=> b!7028802 m!7733254))

(assert (=> b!7028809 m!7733242))

(declare-fun m!7733256 () Bool)

(assert (=> b!7028809 m!7733256))

(declare-fun m!7733258 () Bool)

(assert (=> b!7028809 m!7733258))

(assert (=> b!7028809 m!7733242))

(assert (=> b!7028809 m!7733242))

(declare-fun m!7733260 () Bool)

(assert (=> b!7028809 m!7733260))

(assert (=> b!7028809 m!7733242))

(declare-fun m!7733262 () Bool)

(assert (=> b!7028809 m!7733262))

(declare-fun m!7733264 () Bool)

(assert (=> b!7028809 m!7733264))

(assert (=> b!7028803 m!7733240))

(assert (=> b!7028803 m!7733242))

(declare-fun m!7733266 () Bool)

(assert (=> b!7028810 m!7733266))

(declare-fun m!7733268 () Bool)

(assert (=> setNonEmpty!49067 m!7733268))

(declare-fun m!7733270 () Bool)

(assert (=> b!7028796 m!7733270))

(declare-fun m!7733272 () Bool)

(assert (=> b!7028796 m!7733272))

(declare-fun m!7733274 () Bool)

(assert (=> b!7028796 m!7733274))

(declare-fun m!7733276 () Bool)

(assert (=> b!7028796 m!7733276))

(declare-fun m!7733278 () Bool)

(assert (=> b!7028796 m!7733278))

(declare-fun m!7733280 () Bool)

(assert (=> b!7028816 m!7733280))

(declare-fun m!7733282 () Bool)

(assert (=> b!7028807 m!7733282))

(assert (=> b!7028807 m!7733270))

(declare-fun m!7733284 () Bool)

(assert (=> start!678834 m!7733284))

(declare-fun m!7733286 () Bool)

(assert (=> start!678834 m!7733286))

(declare-fun m!7733288 () Bool)

(assert (=> start!678834 m!7733288))

(assert (=> b!7028797 m!7733240))

(declare-fun m!7733290 () Bool)

(assert (=> b!7028805 m!7733290))

(declare-fun m!7733292 () Bool)

(assert (=> b!7028805 m!7733292))

(declare-fun m!7733294 () Bool)

(assert (=> b!7028808 m!7733294))

(declare-fun m!7733296 () Bool)

(assert (=> b!7028808 m!7733296))

(assert (=> b!7028808 m!7733242))

(assert (=> b!7028808 m!7733262))

(assert (=> b!7028808 m!7733242))

(declare-fun m!7733298 () Bool)

(assert (=> b!7028799 m!7733298))

(declare-fun m!7733300 () Bool)

(assert (=> b!7028799 m!7733300))

(assert (=> b!7028799 m!7733242))

(declare-fun m!7733302 () Bool)

(assert (=> b!7028799 m!7733302))

(assert (=> b!7028799 m!7733242))

(assert (=> b!7028799 m!7733242))

(declare-fun m!7733304 () Bool)

(assert (=> b!7028799 m!7733304))

(declare-fun m!7733306 () Bool)

(assert (=> b!7028801 m!7733306))

(declare-fun m!7733308 () Bool)

(assert (=> b!7028801 m!7733308))

(assert (=> b!7028801 m!7733270))

(declare-fun m!7733310 () Bool)

(assert (=> b!7028801 m!7733310))

(declare-fun m!7733312 () Bool)

(assert (=> b!7028814 m!7733312))

(declare-fun m!7733314 () Bool)

(assert (=> b!7028814 m!7733314))

(declare-fun m!7733316 () Bool)

(assert (=> b!7028814 m!7733316))

(declare-fun m!7733318 () Bool)

(assert (=> b!7028814 m!7733318))

(declare-fun m!7733320 () Bool)

(assert (=> b!7028814 m!7733320))

(declare-fun m!7733322 () Bool)

(assert (=> b!7028814 m!7733322))

(declare-fun m!7733324 () Bool)

(assert (=> b!7028806 m!7733324))

(declare-fun m!7733326 () Bool)

(assert (=> b!7028806 m!7733326))

(assert (=> b!7028806 m!7733294))

(declare-fun m!7733328 () Bool)

(assert (=> b!7028806 m!7733328))

(declare-fun m!7733330 () Bool)

(assert (=> b!7028806 m!7733330))

(declare-fun m!7733332 () Bool)

(assert (=> b!7028806 m!7733332))

(assert (=> b!7028806 m!7733242))

(assert (=> b!7028806 m!7733242))

(assert (=> b!7028806 m!7733242))

(declare-fun m!7733334 () Bool)

(assert (=> b!7028806 m!7733334))

(declare-fun m!7733336 () Bool)

(assert (=> b!7028806 m!7733336))

(declare-fun m!7733338 () Bool)

(assert (=> b!7028806 m!7733338))

(declare-fun m!7733340 () Bool)

(assert (=> b!7028806 m!7733340))

(declare-fun m!7733342 () Bool)

(assert (=> b!7028806 m!7733342))

(declare-fun m!7733344 () Bool)

(assert (=> b!7028806 m!7733344))

(declare-fun m!7733346 () Bool)

(assert (=> b!7028806 m!7733346))

(assert (=> b!7028806 m!7733242))

(declare-fun m!7733348 () Bool)

(assert (=> b!7028811 m!7733348))

(assert (=> b!7028811 m!7733242))

(declare-fun m!7733350 () Bool)

(assert (=> b!7028818 m!7733350))

(push 1)

(assert (not b!7028816))

(assert (not b!7028809))

(assert (not b!7028818))

(assert (not setNonEmpty!49067))

(assert (not b!7028797))

(assert (not b!7028806))

(assert (not b!7028799))

(assert tp_is_empty!44129)

(assert (not b!7028801))

(assert (not b!7028817))

(assert (not b!7028805))

(assert (not b!7028812))

(assert (not b!7028814))

(assert (not b!7028813))

(assert (not b!7028815))

(assert (not b!7028796))

(assert (not b!7028808))

(assert (not b!7028807))

(assert (not b!7028811))

(assert (not b!7028802))

(assert (not b!7028803))

(assert (not start!678834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1869694 () Bool)

(declare-fun d!2192078 () Bool)

(assert (= bs!1869694 (and d!2192078 b!7028801)))

(declare-fun lambda!413796 () Int)

(assert (=> bs!1869694 (= lambda!413796 lambda!413732)))

(declare-fun forall!16358 (List!67884 Int) Bool)

(assert (=> d!2192078 (= (inv!86490 setElem!49067) (forall!16358 (exprs!6948 setElem!49067) lambda!413796))))

(declare-fun bs!1869695 () Bool)

(assert (= bs!1869695 d!2192078))

(declare-fun m!7733464 () Bool)

(assert (=> bs!1869695 m!7733464))

(assert (=> setNonEmpty!49067 d!2192078))

(declare-fun d!2192080 () Bool)

(declare-fun c!1306919 () Bool)

(declare-fun isEmpty!39510 (List!67885) Bool)

(assert (=> d!2192080 (= c!1306919 (isEmpty!39510 s!7408))))

(declare-fun e!4225500 () Bool)

(assert (=> d!2192080 (= (matchZipper!2992 lt!2516158 s!7408) e!4225500)))

(declare-fun b!7028904 () Bool)

(declare-fun nullableZipper!2569 ((Set Context!12896)) Bool)

(assert (=> b!7028904 (= e!4225500 (nullableZipper!2569 lt!2516158))))

(declare-fun b!7028905 () Bool)

(declare-fun head!14250 (List!67885) C!35174)

(declare-fun tail!13531 (List!67885) List!67885)

(assert (=> b!7028905 (= e!4225500 (matchZipper!2992 (derivationStepZipper!2908 lt!2516158 (head!14250 s!7408)) (tail!13531 s!7408)))))

(assert (= (and d!2192080 c!1306919) b!7028904))

(assert (= (and d!2192080 (not c!1306919)) b!7028905))

(declare-fun m!7733466 () Bool)

(assert (=> d!2192080 m!7733466))

(declare-fun m!7733468 () Bool)

(assert (=> b!7028904 m!7733468))

(declare-fun m!7733470 () Bool)

(assert (=> b!7028905 m!7733470))

(assert (=> b!7028905 m!7733470))

(declare-fun m!7733472 () Bool)

(assert (=> b!7028905 m!7733472))

(declare-fun m!7733474 () Bool)

(assert (=> b!7028905 m!7733474))

(assert (=> b!7028905 m!7733472))

(assert (=> b!7028905 m!7733474))

(declare-fun m!7733476 () Bool)

(assert (=> b!7028905 m!7733476))

(assert (=> b!7028811 d!2192080))

(declare-fun d!2192082 () Bool)

(assert (=> d!2192082 (forall!16358 (++!15485 lt!2516146 (exprs!6948 ct2!306)) lambda!413732)))

(declare-fun lt!2516346 () Unit!161572)

(declare-fun choose!53141 (List!67884 List!67884 Int) Unit!161572)

(assert (=> d!2192082 (= lt!2516346 (choose!53141 lt!2516146 (exprs!6948 ct2!306) lambda!413732))))

(assert (=> d!2192082 (forall!16358 lt!2516146 lambda!413732)))

(assert (=> d!2192082 (= (lemmaConcatPreservesForall!773 lt!2516146 (exprs!6948 ct2!306) lambda!413732) lt!2516346)))

(declare-fun bs!1869696 () Bool)

(assert (= bs!1869696 d!2192082))

(assert (=> bs!1869696 m!7733294))

(assert (=> bs!1869696 m!7733294))

(declare-fun m!7733478 () Bool)

(assert (=> bs!1869696 m!7733478))

(declare-fun m!7733480 () Bool)

(assert (=> bs!1869696 m!7733480))

(declare-fun m!7733482 () Bool)

(assert (=> bs!1869696 m!7733482))

(assert (=> b!7028811 d!2192082))

(declare-fun b!7028916 () Bool)

(declare-fun res!2869315 () Bool)

(declare-fun e!4225505 () Bool)

(assert (=> b!7028916 (=> (not res!2869315) (not e!4225505))))

(declare-fun lt!2516349 () List!67884)

(declare-fun size!41047 (List!67884) Int)

(assert (=> b!7028916 (= res!2869315 (= (size!41047 lt!2516349) (+ (size!41047 (exprs!6948 lt!2516156)) (size!41047 (exprs!6948 ct2!306)))))))

(declare-fun b!7028917 () Bool)

(assert (=> b!7028917 (= e!4225505 (or (not (= (exprs!6948 ct2!306) Nil!67760)) (= lt!2516349 (exprs!6948 lt!2516156))))))

(declare-fun d!2192084 () Bool)

(assert (=> d!2192084 e!4225505))

(declare-fun res!2869314 () Bool)

(assert (=> d!2192084 (=> (not res!2869314) (not e!4225505))))

(declare-fun content!13508 (List!67884) (Set Regex!17452))

(assert (=> d!2192084 (= res!2869314 (= (content!13508 lt!2516349) (set.union (content!13508 (exprs!6948 lt!2516156)) (content!13508 (exprs!6948 ct2!306)))))))

(declare-fun e!4225506 () List!67884)

(assert (=> d!2192084 (= lt!2516349 e!4225506)))

(declare-fun c!1306922 () Bool)

(assert (=> d!2192084 (= c!1306922 (is-Nil!67760 (exprs!6948 lt!2516156)))))

(assert (=> d!2192084 (= (++!15485 (exprs!6948 lt!2516156) (exprs!6948 ct2!306)) lt!2516349)))

(declare-fun b!7028914 () Bool)

(assert (=> b!7028914 (= e!4225506 (exprs!6948 ct2!306))))

(declare-fun b!7028915 () Bool)

(assert (=> b!7028915 (= e!4225506 (Cons!67760 (h!74208 (exprs!6948 lt!2516156)) (++!15485 (t!381647 (exprs!6948 lt!2516156)) (exprs!6948 ct2!306))))))

(assert (= (and d!2192084 c!1306922) b!7028914))

(assert (= (and d!2192084 (not c!1306922)) b!7028915))

(assert (= (and d!2192084 res!2869314) b!7028916))

(assert (= (and b!7028916 res!2869315) b!7028917))

(declare-fun m!7733484 () Bool)

(assert (=> b!7028916 m!7733484))

(declare-fun m!7733486 () Bool)

(assert (=> b!7028916 m!7733486))

(declare-fun m!7733488 () Bool)

(assert (=> b!7028916 m!7733488))

(declare-fun m!7733490 () Bool)

(assert (=> d!2192084 m!7733490))

(declare-fun m!7733492 () Bool)

(assert (=> d!2192084 m!7733492))

(declare-fun m!7733494 () Bool)

(assert (=> d!2192084 m!7733494))

(declare-fun m!7733496 () Bool)

(assert (=> b!7028915 m!7733496))

(assert (=> b!7028801 d!2192084))

(declare-fun d!2192086 () Bool)

(assert (=> d!2192086 (forall!16358 (++!15485 (exprs!6948 lt!2516156) (exprs!6948 ct2!306)) lambda!413732)))

(declare-fun lt!2516350 () Unit!161572)

(assert (=> d!2192086 (= lt!2516350 (choose!53141 (exprs!6948 lt!2516156) (exprs!6948 ct2!306) lambda!413732))))

(assert (=> d!2192086 (forall!16358 (exprs!6948 lt!2516156) lambda!413732)))

(assert (=> d!2192086 (= (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516156) (exprs!6948 ct2!306) lambda!413732) lt!2516350)))

(declare-fun bs!1869697 () Bool)

(assert (= bs!1869697 d!2192086))

(assert (=> bs!1869697 m!7733308))

(assert (=> bs!1869697 m!7733308))

(declare-fun m!7733498 () Bool)

(assert (=> bs!1869697 m!7733498))

(declare-fun m!7733500 () Bool)

(assert (=> bs!1869697 m!7733500))

(declare-fun m!7733502 () Bool)

(assert (=> bs!1869697 m!7733502))

(assert (=> b!7028801 d!2192086))

(declare-fun d!2192088 () Bool)

(declare-fun e!4225509 () Bool)

(assert (=> d!2192088 e!4225509))

(declare-fun res!2869318 () Bool)

(assert (=> d!2192088 (=> (not res!2869318) (not e!4225509))))

(declare-fun lt!2516353 () Context!12896)

(declare-fun dynLambda!27338 (Int Context!12896) Context!12896)

(assert (=> d!2192088 (= res!2869318 (= lt!2516186 (dynLambda!27338 lambda!413731 lt!2516353)))))

(declare-fun choose!53142 ((Set Context!12896) Int Context!12896) Context!12896)

(assert (=> d!2192088 (= lt!2516353 (choose!53142 z1!570 lambda!413731 lt!2516186))))

(assert (=> d!2192088 (set.member lt!2516186 (map!15746 z1!570 lambda!413731))))

(assert (=> d!2192088 (= (mapPost2!293 z1!570 lambda!413731 lt!2516186) lt!2516353)))

(declare-fun b!7028921 () Bool)

(assert (=> b!7028921 (= e!4225509 (set.member lt!2516353 z1!570))))

(assert (= (and d!2192088 res!2869318) b!7028921))

(declare-fun b_lambda!266039 () Bool)

(assert (=> (not b_lambda!266039) (not d!2192088)))

(declare-fun m!7733504 () Bool)

(assert (=> d!2192088 m!7733504))

(declare-fun m!7733506 () Bool)

(assert (=> d!2192088 m!7733506))

(declare-fun m!7733508 () Bool)

(assert (=> d!2192088 m!7733508))

(declare-fun m!7733510 () Bool)

(assert (=> d!2192088 m!7733510))

(declare-fun m!7733512 () Bool)

(assert (=> b!7028921 m!7733512))

(assert (=> b!7028801 d!2192088))

(declare-fun d!2192090 () Bool)

(declare-fun c!1306923 () Bool)

(assert (=> d!2192090 (= c!1306923 (isEmpty!39510 (t!381648 s!7408)))))

(declare-fun e!4225510 () Bool)

(assert (=> d!2192090 (= (matchZipper!2992 lt!2516177 (t!381648 s!7408)) e!4225510)))

(declare-fun b!7028922 () Bool)

(assert (=> b!7028922 (= e!4225510 (nullableZipper!2569 lt!2516177))))

(declare-fun b!7028923 () Bool)

(assert (=> b!7028923 (= e!4225510 (matchZipper!2992 (derivationStepZipper!2908 lt!2516177 (head!14250 (t!381648 s!7408))) (tail!13531 (t!381648 s!7408))))))

(assert (= (and d!2192090 c!1306923) b!7028922))

(assert (= (and d!2192090 (not c!1306923)) b!7028923))

(declare-fun m!7733514 () Bool)

(assert (=> d!2192090 m!7733514))

(declare-fun m!7733516 () Bool)

(assert (=> b!7028922 m!7733516))

(declare-fun m!7733518 () Bool)

(assert (=> b!7028923 m!7733518))

(assert (=> b!7028923 m!7733518))

(declare-fun m!7733520 () Bool)

(assert (=> b!7028923 m!7733520))

(declare-fun m!7733522 () Bool)

(assert (=> b!7028923 m!7733522))

(assert (=> b!7028923 m!7733520))

(assert (=> b!7028923 m!7733522))

(declare-fun m!7733524 () Bool)

(assert (=> b!7028923 m!7733524))

(assert (=> b!7028799 d!2192090))

(assert (=> b!7028799 d!2192082))

(declare-fun d!2192092 () Bool)

(declare-fun c!1306924 () Bool)

(assert (=> d!2192092 (= c!1306924 (isEmpty!39510 (t!381648 s!7408)))))

(declare-fun e!4225511 () Bool)

(assert (=> d!2192092 (= (matchZipper!2992 lt!2516187 (t!381648 s!7408)) e!4225511)))

(declare-fun b!7028924 () Bool)

(assert (=> b!7028924 (= e!4225511 (nullableZipper!2569 lt!2516187))))

(declare-fun b!7028925 () Bool)

(assert (=> b!7028925 (= e!4225511 (matchZipper!2992 (derivationStepZipper!2908 lt!2516187 (head!14250 (t!381648 s!7408))) (tail!13531 (t!381648 s!7408))))))

(assert (= (and d!2192092 c!1306924) b!7028924))

(assert (= (and d!2192092 (not c!1306924)) b!7028925))

(assert (=> d!2192092 m!7733514))

(declare-fun m!7733526 () Bool)

(assert (=> b!7028924 m!7733526))

(assert (=> b!7028925 m!7733518))

(assert (=> b!7028925 m!7733518))

(declare-fun m!7733528 () Bool)

(assert (=> b!7028925 m!7733528))

(assert (=> b!7028925 m!7733522))

(assert (=> b!7028925 m!7733528))

(assert (=> b!7028925 m!7733522))

(declare-fun m!7733530 () Bool)

(assert (=> b!7028925 m!7733530))

(assert (=> b!7028799 d!2192092))

(declare-fun d!2192094 () Bool)

(declare-fun c!1306925 () Bool)

(assert (=> d!2192094 (= c!1306925 (isEmpty!39510 (t!381648 s!7408)))))

(declare-fun e!4225512 () Bool)

(assert (=> d!2192094 (= (matchZipper!2992 lt!2516172 (t!381648 s!7408)) e!4225512)))

(declare-fun b!7028926 () Bool)

(assert (=> b!7028926 (= e!4225512 (nullableZipper!2569 lt!2516172))))

(declare-fun b!7028927 () Bool)

(assert (=> b!7028927 (= e!4225512 (matchZipper!2992 (derivationStepZipper!2908 lt!2516172 (head!14250 (t!381648 s!7408))) (tail!13531 (t!381648 s!7408))))))

(assert (= (and d!2192094 c!1306925) b!7028926))

(assert (= (and d!2192094 (not c!1306925)) b!7028927))

(assert (=> d!2192094 m!7733514))

(declare-fun m!7733532 () Bool)

(assert (=> b!7028926 m!7733532))

(assert (=> b!7028927 m!7733518))

(assert (=> b!7028927 m!7733518))

(declare-fun m!7733534 () Bool)

(assert (=> b!7028927 m!7733534))

(assert (=> b!7028927 m!7733522))

(assert (=> b!7028927 m!7733534))

(assert (=> b!7028927 m!7733522))

(declare-fun m!7733536 () Bool)

(assert (=> b!7028927 m!7733536))

(assert (=> b!7028799 d!2192094))

(declare-fun e!4225515 () Bool)

(declare-fun d!2192096 () Bool)

(assert (=> d!2192096 (= (matchZipper!2992 (set.union lt!2516172 lt!2516174) (t!381648 s!7408)) e!4225515)))

(declare-fun res!2869321 () Bool)

(assert (=> d!2192096 (=> res!2869321 e!4225515)))

(assert (=> d!2192096 (= res!2869321 (matchZipper!2992 lt!2516172 (t!381648 s!7408)))))

(declare-fun lt!2516356 () Unit!161572)

(declare-fun choose!53143 ((Set Context!12896) (Set Context!12896) List!67885) Unit!161572)

(assert (=> d!2192096 (= lt!2516356 (choose!53143 lt!2516172 lt!2516174 (t!381648 s!7408)))))

(assert (=> d!2192096 (= (lemmaZipperConcatMatchesSameAsBothZippers!1525 lt!2516172 lt!2516174 (t!381648 s!7408)) lt!2516356)))

(declare-fun b!7028930 () Bool)

(assert (=> b!7028930 (= e!4225515 (matchZipper!2992 lt!2516174 (t!381648 s!7408)))))

(assert (= (and d!2192096 (not res!2869321)) b!7028930))

(declare-fun m!7733538 () Bool)

(assert (=> d!2192096 m!7733538))

(assert (=> d!2192096 m!7733298))

(declare-fun m!7733540 () Bool)

(assert (=> d!2192096 m!7733540))

(assert (=> b!7028930 m!7733240))

(assert (=> b!7028799 d!2192096))

(declare-fun d!2192098 () Bool)

(declare-fun c!1306926 () Bool)

(assert (=> d!2192098 (= c!1306926 (isEmpty!39510 (t!381648 s!7408)))))

(declare-fun e!4225516 () Bool)

(assert (=> d!2192098 (= (matchZipper!2992 lt!2516174 (t!381648 s!7408)) e!4225516)))

(declare-fun b!7028931 () Bool)

(assert (=> b!7028931 (= e!4225516 (nullableZipper!2569 lt!2516174))))

(declare-fun b!7028932 () Bool)

(assert (=> b!7028932 (= e!4225516 (matchZipper!2992 (derivationStepZipper!2908 lt!2516174 (head!14250 (t!381648 s!7408))) (tail!13531 (t!381648 s!7408))))))

(assert (= (and d!2192098 c!1306926) b!7028931))

(assert (= (and d!2192098 (not c!1306926)) b!7028932))

(assert (=> d!2192098 m!7733514))

(declare-fun m!7733542 () Bool)

(assert (=> b!7028931 m!7733542))

(assert (=> b!7028932 m!7733518))

(assert (=> b!7028932 m!7733518))

(declare-fun m!7733544 () Bool)

(assert (=> b!7028932 m!7733544))

(assert (=> b!7028932 m!7733522))

(assert (=> b!7028932 m!7733544))

(assert (=> b!7028932 m!7733522))

(declare-fun m!7733546 () Bool)

(assert (=> b!7028932 m!7733546))

(assert (=> b!7028803 d!2192098))

(assert (=> b!7028803 d!2192082))

(declare-fun d!2192100 () Bool)

(declare-fun c!1306927 () Bool)

(assert (=> d!2192100 (= c!1306927 (isEmpty!39510 s!7408))))

(declare-fun e!4225517 () Bool)

(assert (=> d!2192100 (= (matchZipper!2992 lt!2516184 s!7408) e!4225517)))

(declare-fun b!7028933 () Bool)

(assert (=> b!7028933 (= e!4225517 (nullableZipper!2569 lt!2516184))))

(declare-fun b!7028934 () Bool)

(assert (=> b!7028934 (= e!4225517 (matchZipper!2992 (derivationStepZipper!2908 lt!2516184 (head!14250 s!7408)) (tail!13531 s!7408)))))

(assert (= (and d!2192100 c!1306927) b!7028933))

(assert (= (and d!2192100 (not c!1306927)) b!7028934))

(assert (=> d!2192100 m!7733466))

(declare-fun m!7733548 () Bool)

(assert (=> b!7028933 m!7733548))

(assert (=> b!7028934 m!7733470))

(assert (=> b!7028934 m!7733470))

(declare-fun m!7733550 () Bool)

(assert (=> b!7028934 m!7733550))

(assert (=> b!7028934 m!7733474))

(assert (=> b!7028934 m!7733550))

(assert (=> b!7028934 m!7733474))

(declare-fun m!7733552 () Bool)

(assert (=> b!7028934 m!7733552))

(assert (=> start!678834 d!2192100))

(declare-fun bs!1869698 () Bool)

(declare-fun d!2192102 () Bool)

(assert (= bs!1869698 (and d!2192102 b!7028801)))

(declare-fun lambda!413801 () Int)

(assert (=> bs!1869698 (= lambda!413801 lambda!413731)))

(assert (=> d!2192102 true))

(assert (=> d!2192102 (= (appendTo!573 z1!570 ct2!306) (map!15746 z1!570 lambda!413801))))

(declare-fun bs!1869699 () Bool)

(assert (= bs!1869699 d!2192102))

(declare-fun m!7733554 () Bool)

(assert (=> bs!1869699 m!7733554))

(assert (=> start!678834 d!2192102))

(declare-fun bs!1869700 () Bool)

(declare-fun d!2192104 () Bool)

(assert (= bs!1869700 (and d!2192104 b!7028801)))

(declare-fun lambda!413802 () Int)

(assert (=> bs!1869700 (= lambda!413802 lambda!413732)))

(declare-fun bs!1869701 () Bool)

(assert (= bs!1869701 (and d!2192104 d!2192078)))

(assert (=> bs!1869701 (= lambda!413802 lambda!413796)))

(assert (=> d!2192104 (= (inv!86490 ct2!306) (forall!16358 (exprs!6948 ct2!306) lambda!413802))))

(declare-fun bs!1869702 () Bool)

(assert (= bs!1869702 d!2192104))

(declare-fun m!7733556 () Bool)

(assert (=> bs!1869702 m!7733556))

(assert (=> start!678834 d!2192104))

(declare-fun d!2192106 () Bool)

(assert (=> d!2192106 (isDefined!13558 (findConcatSeparationZippers!373 lt!2516157 (set.insert ct2!306 (as set.empty (Set Context!12896))) Nil!67761 s!7408 s!7408))))

(declare-fun lt!2516361 () Unit!161572)

(declare-fun choose!53144 ((Set Context!12896) Context!12896 List!67885) Unit!161572)

(assert (=> d!2192106 (= lt!2516361 (choose!53144 lt!2516157 ct2!306 s!7408))))

(assert (=> d!2192106 (matchZipper!2992 (appendTo!573 lt!2516157 ct2!306) s!7408)))

(assert (=> d!2192106 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!361 lt!2516157 ct2!306 s!7408) lt!2516361)))

(declare-fun bs!1869703 () Bool)

(assert (= bs!1869703 d!2192106))

(declare-fun m!7733558 () Bool)

(assert (=> bs!1869703 m!7733558))

(declare-fun m!7733560 () Bool)

(assert (=> bs!1869703 m!7733560))

(assert (=> bs!1869703 m!7733558))

(assert (=> bs!1869703 m!7733254))

(declare-fun m!7733562 () Bool)

(assert (=> bs!1869703 m!7733562))

(assert (=> bs!1869703 m!7733250))

(assert (=> bs!1869703 m!7733250))

(assert (=> bs!1869703 m!7733254))

(declare-fun m!7733564 () Bool)

(assert (=> bs!1869703 m!7733564))

(assert (=> b!7028802 d!2192106))

(declare-fun d!2192108 () Bool)

(declare-fun e!4225530 () Bool)

(assert (=> d!2192108 e!4225530))

(declare-fun res!2869332 () Bool)

(assert (=> d!2192108 (=> res!2869332 e!4225530)))

(declare-fun e!4225529 () Bool)

(assert (=> d!2192108 (= res!2869332 e!4225529)))

(declare-fun res!2869333 () Bool)

(assert (=> d!2192108 (=> (not res!2869333) (not e!4225529))))

(declare-fun lt!2516370 () Option!16857)

(assert (=> d!2192108 (= res!2869333 (isDefined!13558 lt!2516370))))

(declare-fun e!4225528 () Option!16857)

(assert (=> d!2192108 (= lt!2516370 e!4225528)))

(declare-fun c!1306933 () Bool)

(declare-fun e!4225532 () Bool)

(assert (=> d!2192108 (= c!1306933 e!4225532)))

(declare-fun res!2869336 () Bool)

(assert (=> d!2192108 (=> (not res!2869336) (not e!4225532))))

(assert (=> d!2192108 (= res!2869336 (matchZipper!2992 lt!2516157 Nil!67761))))

(declare-fun ++!15487 (List!67885 List!67885) List!67885)

(assert (=> d!2192108 (= (++!15487 Nil!67761 s!7408) s!7408)))

(assert (=> d!2192108 (= (findConcatSeparationZippers!373 lt!2516157 (set.insert ct2!306 (as set.empty (Set Context!12896))) Nil!67761 s!7408 s!7408) lt!2516370)))

(declare-fun b!7028953 () Bool)

(declare-fun lt!2516368 () Unit!161572)

(declare-fun lt!2516369 () Unit!161572)

(assert (=> b!7028953 (= lt!2516368 lt!2516369)))

(assert (=> b!7028953 (= (++!15487 (++!15487 Nil!67761 (Cons!67761 (h!74209 s!7408) Nil!67761)) (t!381648 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2913 (List!67885 C!35174 List!67885 List!67885) Unit!161572)

(assert (=> b!7028953 (= lt!2516369 (lemmaMoveElementToOtherListKeepsConcatEq!2913 Nil!67761 (h!74209 s!7408) (t!381648 s!7408) s!7408))))

(declare-fun e!4225531 () Option!16857)

(assert (=> b!7028953 (= e!4225531 (findConcatSeparationZippers!373 lt!2516157 (set.insert ct2!306 (as set.empty (Set Context!12896))) (++!15487 Nil!67761 (Cons!67761 (h!74209 s!7408) Nil!67761)) (t!381648 s!7408) s!7408))))

(declare-fun b!7028954 () Bool)

(assert (=> b!7028954 (= e!4225528 (Some!16856 (tuple2!68051 Nil!67761 s!7408)))))

(declare-fun b!7028955 () Bool)

(declare-fun res!2869334 () Bool)

(assert (=> b!7028955 (=> (not res!2869334) (not e!4225529))))

(assert (=> b!7028955 (= res!2869334 (matchZipper!2992 (set.insert ct2!306 (as set.empty (Set Context!12896))) (_2!37328 (get!23734 lt!2516370))))))

(declare-fun b!7028956 () Bool)

(assert (=> b!7028956 (= e!4225530 (not (isDefined!13558 lt!2516370)))))

(declare-fun b!7028957 () Bool)

(declare-fun res!2869335 () Bool)

(assert (=> b!7028957 (=> (not res!2869335) (not e!4225529))))

(assert (=> b!7028957 (= res!2869335 (matchZipper!2992 lt!2516157 (_1!37328 (get!23734 lt!2516370))))))

(declare-fun b!7028958 () Bool)

(assert (=> b!7028958 (= e!4225531 None!16856)))

(declare-fun b!7028959 () Bool)

(assert (=> b!7028959 (= e!4225529 (= (++!15487 (_1!37328 (get!23734 lt!2516370)) (_2!37328 (get!23734 lt!2516370))) s!7408))))

(declare-fun b!7028960 () Bool)

(assert (=> b!7028960 (= e!4225532 (matchZipper!2992 (set.insert ct2!306 (as set.empty (Set Context!12896))) s!7408))))

(declare-fun b!7028961 () Bool)

(assert (=> b!7028961 (= e!4225528 e!4225531)))

(declare-fun c!1306934 () Bool)

(assert (=> b!7028961 (= c!1306934 (is-Nil!67761 s!7408))))

(assert (= (and d!2192108 res!2869336) b!7028960))

(assert (= (and d!2192108 c!1306933) b!7028954))

(assert (= (and d!2192108 (not c!1306933)) b!7028961))

(assert (= (and b!7028961 c!1306934) b!7028958))

(assert (= (and b!7028961 (not c!1306934)) b!7028953))

(assert (= (and d!2192108 res!2869333) b!7028957))

(assert (= (and b!7028957 res!2869335) b!7028955))

(assert (= (and b!7028955 res!2869334) b!7028959))

(assert (= (and d!2192108 (not res!2869332)) b!7028956))

(declare-fun m!7733566 () Bool)

(assert (=> b!7028957 m!7733566))

(declare-fun m!7733568 () Bool)

(assert (=> b!7028957 m!7733568))

(declare-fun m!7733570 () Bool)

(assert (=> b!7028953 m!7733570))

(assert (=> b!7028953 m!7733570))

(declare-fun m!7733572 () Bool)

(assert (=> b!7028953 m!7733572))

(declare-fun m!7733574 () Bool)

(assert (=> b!7028953 m!7733574))

(assert (=> b!7028953 m!7733250))

(assert (=> b!7028953 m!7733570))

(declare-fun m!7733576 () Bool)

(assert (=> b!7028953 m!7733576))

(declare-fun m!7733578 () Bool)

(assert (=> d!2192108 m!7733578))

(declare-fun m!7733580 () Bool)

(assert (=> d!2192108 m!7733580))

(declare-fun m!7733582 () Bool)

(assert (=> d!2192108 m!7733582))

(assert (=> b!7028960 m!7733250))

(declare-fun m!7733584 () Bool)

(assert (=> b!7028960 m!7733584))

(assert (=> b!7028955 m!7733566))

(assert (=> b!7028955 m!7733250))

(declare-fun m!7733586 () Bool)

(assert (=> b!7028955 m!7733586))

(assert (=> b!7028959 m!7733566))

(declare-fun m!7733588 () Bool)

(assert (=> b!7028959 m!7733588))

(assert (=> b!7028956 m!7733578))

(assert (=> b!7028802 d!2192108))

(declare-fun d!2192110 () Bool)

(declare-fun isEmpty!39511 (Option!16857) Bool)

(assert (=> d!2192110 (= (isDefined!13558 lt!2516163) (not (isEmpty!39511 lt!2516163)))))

(declare-fun bs!1869704 () Bool)

(assert (= bs!1869704 d!2192110))

(declare-fun m!7733590 () Bool)

(assert (=> bs!1869704 m!7733590))

(assert (=> b!7028802 d!2192110))

(declare-fun d!2192112 () Bool)

(declare-fun c!1306935 () Bool)

(assert (=> d!2192112 (= c!1306935 (isEmpty!39510 (_1!37328 (get!23734 lt!2516163))))))

(declare-fun e!4225533 () Bool)

(assert (=> d!2192112 (= (matchZipper!2992 lt!2516157 (_1!37328 (get!23734 lt!2516163))) e!4225533)))

(declare-fun b!7028962 () Bool)

(assert (=> b!7028962 (= e!4225533 (nullableZipper!2569 lt!2516157))))

(declare-fun b!7028963 () Bool)

(assert (=> b!7028963 (= e!4225533 (matchZipper!2992 (derivationStepZipper!2908 lt!2516157 (head!14250 (_1!37328 (get!23734 lt!2516163)))) (tail!13531 (_1!37328 (get!23734 lt!2516163)))))))

(assert (= (and d!2192112 c!1306935) b!7028962))

(assert (= (and d!2192112 (not c!1306935)) b!7028963))

(declare-fun m!7733592 () Bool)

(assert (=> d!2192112 m!7733592))

(declare-fun m!7733594 () Bool)

(assert (=> b!7028962 m!7733594))

(declare-fun m!7733596 () Bool)

(assert (=> b!7028963 m!7733596))

(assert (=> b!7028963 m!7733596))

(declare-fun m!7733598 () Bool)

(assert (=> b!7028963 m!7733598))

(declare-fun m!7733600 () Bool)

(assert (=> b!7028963 m!7733600))

(assert (=> b!7028963 m!7733598))

(assert (=> b!7028963 m!7733600))

(declare-fun m!7733602 () Bool)

(assert (=> b!7028963 m!7733602))

(assert (=> b!7028802 d!2192112))

(declare-fun d!2192114 () Bool)

(assert (=> d!2192114 (= (get!23734 lt!2516163) (v!53138 lt!2516163))))

(assert (=> b!7028802 d!2192114))

(declare-fun d!2192116 () Bool)

(declare-fun lt!2516373 () Int)

(assert (=> d!2192116 (>= lt!2516373 0)))

(declare-fun e!4225536 () Int)

(assert (=> d!2192116 (= lt!2516373 e!4225536)))

(declare-fun c!1306939 () Bool)

(assert (=> d!2192116 (= c!1306939 (is-Cons!67760 (exprs!6948 lt!2516156)))))

(assert (=> d!2192116 (= (contextDepthTotal!487 lt!2516156) lt!2516373)))

(declare-fun b!7028968 () Bool)

(declare-fun regexDepthTotal!293 (Regex!17452) Int)

(assert (=> b!7028968 (= e!4225536 (+ (regexDepthTotal!293 (h!74208 (exprs!6948 lt!2516156))) (contextDepthTotal!487 (Context!12897 (t!381647 (exprs!6948 lt!2516156))))))))

(declare-fun b!7028969 () Bool)

(assert (=> b!7028969 (= e!4225536 1)))

(assert (= (and d!2192116 c!1306939) b!7028968))

(assert (= (and d!2192116 (not c!1306939)) b!7028969))

(declare-fun m!7733604 () Bool)

(assert (=> b!7028968 m!7733604))

(declare-fun m!7733606 () Bool)

(assert (=> b!7028968 m!7733606))

(assert (=> b!7028806 d!2192116))

(declare-fun d!2192118 () Bool)

(declare-fun e!4225539 () Bool)

(assert (=> d!2192118 e!4225539))

(declare-fun res!2869339 () Bool)

(assert (=> d!2192118 (=> (not res!2869339) (not e!4225539))))

(declare-fun lt!2516376 () List!67886)

(declare-fun noDuplicate!2618 (List!67886) Bool)

(assert (=> d!2192118 (= res!2869339 (noDuplicate!2618 lt!2516376))))

(declare-fun choose!53145 ((Set Context!12896)) List!67886)

(assert (=> d!2192118 (= lt!2516376 (choose!53145 z1!570))))

(assert (=> d!2192118 (= (toList!10795 z1!570) lt!2516376)))

(declare-fun b!7028972 () Bool)

(declare-fun content!13509 (List!67886) (Set Context!12896))

(assert (=> b!7028972 (= e!4225539 (= (content!13509 lt!2516376) z1!570))))

(assert (= (and d!2192118 res!2869339) b!7028972))

(declare-fun m!7733608 () Bool)

(assert (=> d!2192118 m!7733608))

(declare-fun m!7733610 () Bool)

(assert (=> d!2192118 m!7733610))

(declare-fun m!7733612 () Bool)

(assert (=> b!7028972 m!7733612))

(assert (=> b!7028806 d!2192118))

(declare-fun d!2192120 () Bool)

(declare-fun lt!2516379 () Int)

(assert (=> d!2192120 (>= lt!2516379 0)))

(declare-fun e!4225542 () Int)

(assert (=> d!2192120 (= lt!2516379 e!4225542)))

(declare-fun c!1306942 () Bool)

(assert (=> d!2192120 (= c!1306942 (is-Cons!67762 lt!2516154))))

(assert (=> d!2192120 (= (zipperDepthTotal!515 lt!2516154) lt!2516379)))

(declare-fun b!7028977 () Bool)

(assert (=> b!7028977 (= e!4225542 (+ (contextDepthTotal!487 (h!74210 lt!2516154)) (zipperDepthTotal!515 (t!381649 lt!2516154))))))

(declare-fun b!7028978 () Bool)

(assert (=> b!7028978 (= e!4225542 0)))

(assert (= (and d!2192120 c!1306942) b!7028977))

(assert (= (and d!2192120 (not c!1306942)) b!7028978))

(declare-fun m!7733614 () Bool)

(assert (=> b!7028977 m!7733614))

(declare-fun m!7733616 () Bool)

(assert (=> b!7028977 m!7733616))

(assert (=> b!7028806 d!2192120))

(declare-fun d!2192122 () Bool)

(declare-fun choose!53146 ((Set Context!12896) Int) (Set Context!12896))

(assert (=> d!2192122 (= (map!15746 lt!2516157 lambda!413731) (choose!53146 lt!2516157 lambda!413731))))

(declare-fun bs!1869705 () Bool)

(assert (= bs!1869705 d!2192122))

(declare-fun m!7733618 () Bool)

(assert (=> bs!1869705 m!7733618))

(assert (=> b!7028806 d!2192122))

(declare-fun d!2192124 () Bool)

(declare-fun dynLambda!27339 (Int Context!12896) (Set Context!12896))

(assert (=> d!2192124 (= (flatMap!2399 lt!2516157 lambda!413733) (dynLambda!27339 lambda!413733 lt!2516188))))

(declare-fun lt!2516382 () Unit!161572)

(declare-fun choose!53147 ((Set Context!12896) Context!12896 Int) Unit!161572)

(assert (=> d!2192124 (= lt!2516382 (choose!53147 lt!2516157 lt!2516188 lambda!413733))))

(assert (=> d!2192124 (= lt!2516157 (set.insert lt!2516188 (as set.empty (Set Context!12896))))))

(assert (=> d!2192124 (= (lemmaFlatMapOnSingletonSet!1913 lt!2516157 lt!2516188 lambda!413733) lt!2516382)))

(declare-fun b_lambda!266041 () Bool)

(assert (=> (not b_lambda!266041) (not d!2192124)))

(declare-fun bs!1869706 () Bool)

(assert (= bs!1869706 d!2192124))

(assert (=> bs!1869706 m!7733330))

(declare-fun m!7733620 () Bool)

(assert (=> bs!1869706 m!7733620))

(declare-fun m!7733622 () Bool)

(assert (=> bs!1869706 m!7733622))

(assert (=> bs!1869706 m!7733342))

(assert (=> b!7028806 d!2192124))

(declare-fun bm!638250 () Bool)

(declare-fun call!638255 () (Set Context!12896))

(assert (=> bm!638250 (= call!638255 (derivationStepZipperDown!2116 (h!74208 (exprs!6948 lt!2516188)) (Context!12897 (t!381647 (exprs!6948 lt!2516188))) (h!74209 s!7408)))))

(declare-fun b!7028989 () Bool)

(declare-fun e!4225550 () (Set Context!12896))

(assert (=> b!7028989 (= e!4225550 (as set.empty (Set Context!12896)))))

(declare-fun b!7028990 () Bool)

(declare-fun e!4225551 () Bool)

(assert (=> b!7028990 (= e!4225551 (nullable!7163 (h!74208 (exprs!6948 lt!2516188))))))

(declare-fun b!7028991 () Bool)

(declare-fun e!4225549 () (Set Context!12896))

(assert (=> b!7028991 (= e!4225549 e!4225550)))

(declare-fun c!1306948 () Bool)

(assert (=> b!7028991 (= c!1306948 (is-Cons!67760 (exprs!6948 lt!2516188)))))

(declare-fun d!2192126 () Bool)

(declare-fun c!1306947 () Bool)

(assert (=> d!2192126 (= c!1306947 e!4225551)))

(declare-fun res!2869342 () Bool)

(assert (=> d!2192126 (=> (not res!2869342) (not e!4225551))))

(assert (=> d!2192126 (= res!2869342 (is-Cons!67760 (exprs!6948 lt!2516188)))))

(assert (=> d!2192126 (= (derivationStepZipperUp!2062 lt!2516188 (h!74209 s!7408)) e!4225549)))

(declare-fun b!7028992 () Bool)

(assert (=> b!7028992 (= e!4225549 (set.union call!638255 (derivationStepZipperUp!2062 (Context!12897 (t!381647 (exprs!6948 lt!2516188))) (h!74209 s!7408))))))

(declare-fun b!7028993 () Bool)

(assert (=> b!7028993 (= e!4225550 call!638255)))

(assert (= (and d!2192126 res!2869342) b!7028990))

(assert (= (and d!2192126 c!1306947) b!7028992))

(assert (= (and d!2192126 (not c!1306947)) b!7028991))

(assert (= (and b!7028991 c!1306948) b!7028993))

(assert (= (and b!7028991 (not c!1306948)) b!7028989))

(assert (= (or b!7028992 b!7028993) bm!638250))

(declare-fun m!7733624 () Bool)

(assert (=> bm!638250 m!7733624))

(declare-fun m!7733626 () Bool)

(assert (=> b!7028990 m!7733626))

(declare-fun m!7733628 () Bool)

(assert (=> b!7028992 m!7733628))

(assert (=> b!7028806 d!2192126))

(declare-fun d!2192128 () Bool)

(declare-fun choose!53148 ((Set Context!12896) Int) (Set Context!12896))

(assert (=> d!2192128 (= (flatMap!2399 lt!2516157 lambda!413733) (choose!53148 lt!2516157 lambda!413733))))

(declare-fun bs!1869707 () Bool)

(assert (= bs!1869707 d!2192128))

(declare-fun m!7733630 () Bool)

(assert (=> bs!1869707 m!7733630))

(assert (=> b!7028806 d!2192128))

(declare-fun d!2192130 () Bool)

(assert (=> d!2192130 (= (map!15746 lt!2516157 lambda!413731) (set.insert (dynLambda!27338 lambda!413731 lt!2516188) (as set.empty (Set Context!12896))))))

(declare-fun lt!2516385 () Unit!161572)

(declare-fun choose!53149 ((Set Context!12896) Context!12896 Int) Unit!161572)

(assert (=> d!2192130 (= lt!2516385 (choose!53149 lt!2516157 lt!2516188 lambda!413731))))

(assert (=> d!2192130 (= lt!2516157 (set.insert lt!2516188 (as set.empty (Set Context!12896))))))

(assert (=> d!2192130 (= (lemmaMapOnSingletonSet!363 lt!2516157 lt!2516188 lambda!413731) lt!2516385)))

(declare-fun b_lambda!266043 () Bool)

(assert (=> (not b_lambda!266043) (not d!2192130)))

(declare-fun bs!1869708 () Bool)

(assert (= bs!1869708 d!2192130))

(declare-fun m!7733632 () Bool)

(assert (=> bs!1869708 m!7733632))

(declare-fun m!7733634 () Bool)

(assert (=> bs!1869708 m!7733634))

(declare-fun m!7733636 () Bool)

(assert (=> bs!1869708 m!7733636))

(assert (=> bs!1869708 m!7733632))

(assert (=> bs!1869708 m!7733342))

(assert (=> bs!1869708 m!7733324))

(assert (=> b!7028806 d!2192130))

(declare-fun d!2192132 () Bool)

(declare-fun lt!2516386 () Int)

(assert (=> d!2192132 (>= lt!2516386 0)))

(declare-fun e!4225552 () Int)

(assert (=> d!2192132 (= lt!2516386 e!4225552)))

(declare-fun c!1306949 () Bool)

(assert (=> d!2192132 (= c!1306949 (is-Cons!67760 (exprs!6948 lt!2516188)))))

(assert (=> d!2192132 (= (contextDepthTotal!487 lt!2516188) lt!2516386)))

(declare-fun b!7028994 () Bool)

(assert (=> b!7028994 (= e!4225552 (+ (regexDepthTotal!293 (h!74208 (exprs!6948 lt!2516188))) (contextDepthTotal!487 (Context!12897 (t!381647 (exprs!6948 lt!2516188))))))))

(declare-fun b!7028995 () Bool)

(assert (=> b!7028995 (= e!4225552 1)))

(assert (= (and d!2192132 c!1306949) b!7028994))

(assert (= (and d!2192132 (not c!1306949)) b!7028995))

(declare-fun m!7733638 () Bool)

(assert (=> b!7028994 m!7733638))

(declare-fun m!7733640 () Bool)

(assert (=> b!7028994 m!7733640))

(assert (=> b!7028806 d!2192132))

(declare-fun d!2192134 () Bool)

(assert (=> d!2192134 (<= (contextDepthTotal!487 lt!2516156) (zipperDepthTotal!515 lt!2516154))))

(declare-fun lt!2516389 () Unit!161572)

(declare-fun choose!53150 (List!67886 Context!12896) Unit!161572)

(assert (=> d!2192134 (= lt!2516389 (choose!53150 lt!2516154 lt!2516156))))

(declare-fun contains!20447 (List!67886 Context!12896) Bool)

(assert (=> d!2192134 (contains!20447 lt!2516154 lt!2516156)))

(assert (=> d!2192134 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!55 lt!2516154 lt!2516156) lt!2516389)))

(declare-fun bs!1869709 () Bool)

(assert (= bs!1869709 d!2192134))

(assert (=> bs!1869709 m!7733326))

(assert (=> bs!1869709 m!7733336))

(declare-fun m!7733642 () Bool)

(assert (=> bs!1869709 m!7733642))

(declare-fun m!7733644 () Bool)

(assert (=> bs!1869709 m!7733644))

(assert (=> b!7028806 d!2192134))

(assert (=> b!7028806 d!2192082))

(declare-fun b!7028998 () Bool)

(declare-fun res!2869344 () Bool)

(declare-fun e!4225553 () Bool)

(assert (=> b!7028998 (=> (not res!2869344) (not e!4225553))))

(declare-fun lt!2516390 () List!67884)

(assert (=> b!7028998 (= res!2869344 (= (size!41047 lt!2516390) (+ (size!41047 lt!2516146) (size!41047 (exprs!6948 ct2!306)))))))

(declare-fun b!7028999 () Bool)

(assert (=> b!7028999 (= e!4225553 (or (not (= (exprs!6948 ct2!306) Nil!67760)) (= lt!2516390 lt!2516146)))))

(declare-fun d!2192136 () Bool)

(assert (=> d!2192136 e!4225553))

(declare-fun res!2869343 () Bool)

(assert (=> d!2192136 (=> (not res!2869343) (not e!4225553))))

(assert (=> d!2192136 (= res!2869343 (= (content!13508 lt!2516390) (set.union (content!13508 lt!2516146) (content!13508 (exprs!6948 ct2!306)))))))

(declare-fun e!4225554 () List!67884)

(assert (=> d!2192136 (= lt!2516390 e!4225554)))

(declare-fun c!1306951 () Bool)

(assert (=> d!2192136 (= c!1306951 (is-Nil!67760 lt!2516146))))

(assert (=> d!2192136 (= (++!15485 lt!2516146 (exprs!6948 ct2!306)) lt!2516390)))

(declare-fun b!7028996 () Bool)

(assert (=> b!7028996 (= e!4225554 (exprs!6948 ct2!306))))

(declare-fun b!7028997 () Bool)

(assert (=> b!7028997 (= e!4225554 (Cons!67760 (h!74208 lt!2516146) (++!15485 (t!381647 lt!2516146) (exprs!6948 ct2!306))))))

(assert (= (and d!2192136 c!1306951) b!7028996))

(assert (= (and d!2192136 (not c!1306951)) b!7028997))

(assert (= (and d!2192136 res!2869343) b!7028998))

(assert (= (and b!7028998 res!2869344) b!7028999))

(declare-fun m!7733646 () Bool)

(assert (=> b!7028998 m!7733646))

(declare-fun m!7733648 () Bool)

(assert (=> b!7028998 m!7733648))

(assert (=> b!7028998 m!7733488))

(declare-fun m!7733650 () Bool)

(assert (=> d!2192136 m!7733650))

(declare-fun m!7733652 () Bool)

(assert (=> d!2192136 m!7733652))

(assert (=> d!2192136 m!7733494))

(declare-fun m!7733654 () Bool)

(assert (=> b!7028997 m!7733654))

(assert (=> b!7028806 d!2192136))

(declare-fun bs!1869710 () Bool)

(declare-fun d!2192138 () Bool)

(assert (= bs!1869710 (and d!2192138 b!7028796)))

(declare-fun lambda!413805 () Int)

(assert (=> bs!1869710 (= lambda!413805 lambda!413733)))

(assert (=> d!2192138 true))

(assert (=> d!2192138 (= (derivationStepZipper!2908 lt!2516162 (h!74209 s!7408)) (flatMap!2399 lt!2516162 lambda!413805))))

(declare-fun bs!1869711 () Bool)

(assert (= bs!1869711 d!2192138))

(declare-fun m!7733656 () Bool)

(assert (=> bs!1869711 m!7733656))

(assert (=> b!7028796 d!2192138))

(assert (=> b!7028796 d!2192086))

(declare-fun bm!638251 () Bool)

(declare-fun call!638256 () (Set Context!12896))

(assert (=> bm!638251 (= call!638256 (derivationStepZipperDown!2116 (h!74208 (exprs!6948 lt!2516148)) (Context!12897 (t!381647 (exprs!6948 lt!2516148))) (h!74209 s!7408)))))

(declare-fun b!7029002 () Bool)

(declare-fun e!4225556 () (Set Context!12896))

(assert (=> b!7029002 (= e!4225556 (as set.empty (Set Context!12896)))))

(declare-fun b!7029003 () Bool)

(declare-fun e!4225557 () Bool)

(assert (=> b!7029003 (= e!4225557 (nullable!7163 (h!74208 (exprs!6948 lt!2516148))))))

(declare-fun b!7029004 () Bool)

(declare-fun e!4225555 () (Set Context!12896))

(assert (=> b!7029004 (= e!4225555 e!4225556)))

(declare-fun c!1306955 () Bool)

(assert (=> b!7029004 (= c!1306955 (is-Cons!67760 (exprs!6948 lt!2516148)))))

(declare-fun d!2192140 () Bool)

(declare-fun c!1306954 () Bool)

(assert (=> d!2192140 (= c!1306954 e!4225557)))

(declare-fun res!2869345 () Bool)

(assert (=> d!2192140 (=> (not res!2869345) (not e!4225557))))

(assert (=> d!2192140 (= res!2869345 (is-Cons!67760 (exprs!6948 lt!2516148)))))

(assert (=> d!2192140 (= (derivationStepZipperUp!2062 lt!2516148 (h!74209 s!7408)) e!4225555)))

(declare-fun b!7029005 () Bool)

(assert (=> b!7029005 (= e!4225555 (set.union call!638256 (derivationStepZipperUp!2062 (Context!12897 (t!381647 (exprs!6948 lt!2516148))) (h!74209 s!7408))))))

(declare-fun b!7029006 () Bool)

(assert (=> b!7029006 (= e!4225556 call!638256)))

(assert (= (and d!2192140 res!2869345) b!7029003))

(assert (= (and d!2192140 c!1306954) b!7029005))

(assert (= (and d!2192140 (not c!1306954)) b!7029004))

(assert (= (and b!7029004 c!1306955) b!7029006))

(assert (= (and b!7029004 (not c!1306955)) b!7029002))

(assert (= (or b!7029005 b!7029006) bm!638251))

(declare-fun m!7733658 () Bool)

(assert (=> bm!638251 m!7733658))

(declare-fun m!7733660 () Bool)

(assert (=> b!7029003 m!7733660))

(declare-fun m!7733662 () Bool)

(assert (=> b!7029005 m!7733662))

(assert (=> b!7028796 d!2192140))

(declare-fun d!2192142 () Bool)

(assert (=> d!2192142 (= (flatMap!2399 lt!2516162 lambda!413733) (dynLambda!27339 lambda!413733 lt!2516148))))

(declare-fun lt!2516391 () Unit!161572)

(assert (=> d!2192142 (= lt!2516391 (choose!53147 lt!2516162 lt!2516148 lambda!413733))))

(assert (=> d!2192142 (= lt!2516162 (set.insert lt!2516148 (as set.empty (Set Context!12896))))))

(assert (=> d!2192142 (= (lemmaFlatMapOnSingletonSet!1913 lt!2516162 lt!2516148 lambda!413733) lt!2516391)))

(declare-fun b_lambda!266045 () Bool)

(assert (=> (not b_lambda!266045) (not d!2192142)))

(declare-fun bs!1869712 () Bool)

(assert (= bs!1869712 d!2192142))

(assert (=> bs!1869712 m!7733276))

(declare-fun m!7733664 () Bool)

(assert (=> bs!1869712 m!7733664))

(declare-fun m!7733666 () Bool)

(assert (=> bs!1869712 m!7733666))

(assert (=> bs!1869712 m!7733282))

(assert (=> b!7028796 d!2192142))

(declare-fun d!2192144 () Bool)

(assert (=> d!2192144 (= (flatMap!2399 lt!2516162 lambda!413733) (choose!53148 lt!2516162 lambda!413733))))

(declare-fun bs!1869713 () Bool)

(assert (= bs!1869713 d!2192144))

(declare-fun m!7733668 () Bool)

(assert (=> bs!1869713 m!7733668))

(assert (=> b!7028796 d!2192144))

(assert (=> b!7028797 d!2192098))

(declare-fun d!2192146 () Bool)

(assert (=> d!2192146 (= (isEmpty!39508 (exprs!6948 lt!2516156)) (is-Nil!67760 (exprs!6948 lt!2516156)))))

(assert (=> b!7028816 d!2192146))

(declare-fun d!2192148 () Bool)

(declare-fun c!1306956 () Bool)

(assert (=> d!2192148 (= c!1306956 (isEmpty!39510 s!7408))))

(declare-fun e!4225558 () Bool)

(assert (=> d!2192148 (= (matchZipper!2992 lt!2516150 s!7408) e!4225558)))

(declare-fun b!7029007 () Bool)

(assert (=> b!7029007 (= e!4225558 (nullableZipper!2569 lt!2516150))))

(declare-fun b!7029008 () Bool)

(assert (=> b!7029008 (= e!4225558 (matchZipper!2992 (derivationStepZipper!2908 lt!2516150 (head!14250 s!7408)) (tail!13531 s!7408)))))

(assert (= (and d!2192148 c!1306956) b!7029007))

(assert (= (and d!2192148 (not c!1306956)) b!7029008))

(assert (=> d!2192148 m!7733466))

(declare-fun m!7733670 () Bool)

(assert (=> b!7029007 m!7733670))

(assert (=> b!7029008 m!7733470))

(assert (=> b!7029008 m!7733470))

(declare-fun m!7733672 () Bool)

(assert (=> b!7029008 m!7733672))

(assert (=> b!7029008 m!7733474))

(assert (=> b!7029008 m!7733672))

(assert (=> b!7029008 m!7733474))

(declare-fun m!7733674 () Bool)

(assert (=> b!7029008 m!7733674))

(assert (=> b!7028814 d!2192148))

(declare-fun bs!1869714 () Bool)

(declare-fun d!2192150 () Bool)

(assert (= bs!1869714 (and d!2192150 b!7028814)))

(declare-fun lambda!413808 () Int)

(assert (=> bs!1869714 (= lambda!413808 lambda!413730)))

(assert (=> d!2192150 true))

(assert (=> d!2192150 (exists!3368 lt!2516176 lambda!413808)))

(declare-fun lt!2516394 () Unit!161572)

(declare-fun choose!53151 (List!67886 List!67885) Unit!161572)

(assert (=> d!2192150 (= lt!2516394 (choose!53151 lt!2516176 s!7408))))

(assert (=> d!2192150 (matchZipper!2992 (content!13509 lt!2516176) s!7408)))

(assert (=> d!2192150 (= (lemmaZipperMatchesExistsMatchingContext!391 lt!2516176 s!7408) lt!2516394)))

(declare-fun bs!1869715 () Bool)

(assert (= bs!1869715 d!2192150))

(declare-fun m!7733676 () Bool)

(assert (=> bs!1869715 m!7733676))

(declare-fun m!7733678 () Bool)

(assert (=> bs!1869715 m!7733678))

(declare-fun m!7733680 () Bool)

(assert (=> bs!1869715 m!7733680))

(assert (=> bs!1869715 m!7733680))

(declare-fun m!7733682 () Bool)

(assert (=> bs!1869715 m!7733682))

(assert (=> b!7028814 d!2192150))

(declare-fun d!2192152 () Bool)

(declare-fun e!4225561 () Bool)

(assert (=> d!2192152 e!4225561))

(declare-fun res!2869349 () Bool)

(assert (=> d!2192152 (=> (not res!2869349) (not e!4225561))))

(declare-fun lt!2516397 () Context!12896)

(declare-fun dynLambda!27340 (Int Context!12896) Bool)

(assert (=> d!2192152 (= res!2869349 (dynLambda!27340 lambda!413730 lt!2516397))))

(declare-fun getWitness!1451 (List!67886 Int) Context!12896)

(assert (=> d!2192152 (= lt!2516397 (getWitness!1451 (toList!10795 lt!2516184) lambda!413730))))

(declare-fun exists!3370 ((Set Context!12896) Int) Bool)

(assert (=> d!2192152 (exists!3370 lt!2516184 lambda!413730)))

(assert (=> d!2192152 (= (getWitness!1449 lt!2516184 lambda!413730) lt!2516397)))

(declare-fun b!7029011 () Bool)

(assert (=> b!7029011 (= e!4225561 (set.member lt!2516397 lt!2516184))))

(assert (= (and d!2192152 res!2869349) b!7029011))

(declare-fun b_lambda!266047 () Bool)

(assert (=> (not b_lambda!266047) (not d!2192152)))

(declare-fun m!7733684 () Bool)

(assert (=> d!2192152 m!7733684))

(assert (=> d!2192152 m!7733312))

(assert (=> d!2192152 m!7733312))

(declare-fun m!7733686 () Bool)

(assert (=> d!2192152 m!7733686))

(declare-fun m!7733688 () Bool)

(assert (=> d!2192152 m!7733688))

(declare-fun m!7733690 () Bool)

(assert (=> b!7029011 m!7733690))

(assert (=> b!7028814 d!2192152))

(declare-fun d!2192154 () Bool)

(declare-fun e!4225562 () Bool)

(assert (=> d!2192154 e!4225562))

(declare-fun res!2869350 () Bool)

(assert (=> d!2192154 (=> (not res!2869350) (not e!4225562))))

(declare-fun lt!2516398 () List!67886)

(assert (=> d!2192154 (= res!2869350 (noDuplicate!2618 lt!2516398))))

(assert (=> d!2192154 (= lt!2516398 (choose!53145 lt!2516184))))

(assert (=> d!2192154 (= (toList!10795 lt!2516184) lt!2516398)))

(declare-fun b!7029012 () Bool)

(assert (=> b!7029012 (= e!4225562 (= (content!13509 lt!2516398) lt!2516184))))

(assert (= (and d!2192154 res!2869350) b!7029012))

(declare-fun m!7733692 () Bool)

(assert (=> d!2192154 m!7733692))

(declare-fun m!7733694 () Bool)

(assert (=> d!2192154 m!7733694))

(declare-fun m!7733696 () Bool)

(assert (=> b!7029012 m!7733696))

(assert (=> b!7028814 d!2192154))

(declare-fun bs!1869716 () Bool)

(declare-fun d!2192156 () Bool)

(assert (= bs!1869716 (and d!2192156 b!7028814)))

(declare-fun lambda!413811 () Int)

(assert (=> bs!1869716 (not (= lambda!413811 lambda!413730))))

(declare-fun bs!1869717 () Bool)

(assert (= bs!1869717 (and d!2192156 d!2192150)))

(assert (=> bs!1869717 (not (= lambda!413811 lambda!413808))))

(assert (=> d!2192156 true))

(declare-fun order!28153 () Int)

(declare-fun dynLambda!27341 (Int Int) Int)

(assert (=> d!2192156 (< (dynLambda!27341 order!28153 lambda!413730) (dynLambda!27341 order!28153 lambda!413811))))

(declare-fun forall!16359 (List!67886 Int) Bool)

(assert (=> d!2192156 (= (exists!3368 lt!2516176 lambda!413730) (not (forall!16359 lt!2516176 lambda!413811)))))

(declare-fun bs!1869718 () Bool)

(assert (= bs!1869718 d!2192156))

(declare-fun m!7733698 () Bool)

(assert (=> bs!1869718 m!7733698))

(assert (=> b!7028814 d!2192156))

(declare-fun d!2192158 () Bool)

(declare-fun nullableFct!2718 (Regex!17452) Bool)

(assert (=> d!2192158 (= (nullable!7163 (h!74208 (exprs!6948 lt!2516156))) (nullableFct!2718 (h!74208 (exprs!6948 lt!2516156))))))

(declare-fun bs!1869719 () Bool)

(assert (= bs!1869719 d!2192158))

(declare-fun m!7733700 () Bool)

(assert (=> bs!1869719 m!7733700))

(assert (=> b!7028805 d!2192158))

(declare-fun d!2192160 () Bool)

(assert (=> d!2192160 (= (tail!13529 (exprs!6948 lt!2516156)) (t!381647 (exprs!6948 lt!2516156)))))

(assert (=> b!7028805 d!2192160))

(declare-fun d!2192162 () Bool)

(declare-fun lt!2516399 () Int)

(assert (=> d!2192162 (>= lt!2516399 0)))

(declare-fun e!4225563 () Int)

(assert (=> d!2192162 (= lt!2516399 e!4225563)))

(declare-fun c!1306959 () Bool)

(assert (=> d!2192162 (= c!1306959 (is-Cons!67762 (Cons!67762 lt!2516188 Nil!67762)))))

(assert (=> d!2192162 (= (zipperDepthTotal!515 (Cons!67762 lt!2516188 Nil!67762)) lt!2516399)))

(declare-fun b!7029015 () Bool)

(assert (=> b!7029015 (= e!4225563 (+ (contextDepthTotal!487 (h!74210 (Cons!67762 lt!2516188 Nil!67762))) (zipperDepthTotal!515 (t!381649 (Cons!67762 lt!2516188 Nil!67762)))))))

(declare-fun b!7029016 () Bool)

(assert (=> b!7029016 (= e!4225563 0)))

(assert (= (and d!2192162 c!1306959) b!7029015))

(assert (= (and d!2192162 (not c!1306959)) b!7029016))

(declare-fun m!7733702 () Bool)

(assert (=> b!7029015 m!7733702))

(declare-fun m!7733704 () Bool)

(assert (=> b!7029015 m!7733704))

(assert (=> b!7028818 d!2192162))

(declare-fun bs!1869720 () Bool)

(declare-fun d!2192164 () Bool)

(assert (= bs!1869720 (and d!2192164 b!7028796)))

(declare-fun lambda!413812 () Int)

(assert (=> bs!1869720 (= lambda!413812 lambda!413733)))

(declare-fun bs!1869721 () Bool)

(assert (= bs!1869721 (and d!2192164 d!2192138)))

(assert (=> bs!1869721 (= lambda!413812 lambda!413805)))

(assert (=> d!2192164 true))

(assert (=> d!2192164 (= (derivationStepZipper!2908 lt!2516158 (h!74209 s!7408)) (flatMap!2399 lt!2516158 lambda!413812))))

(declare-fun bs!1869722 () Bool)

(assert (= bs!1869722 d!2192164))

(declare-fun m!7733706 () Bool)

(assert (=> bs!1869722 m!7733706))

(assert (=> b!7028809 d!2192164))

(declare-fun bm!638252 () Bool)

(declare-fun call!638257 () (Set Context!12896))

(assert (=> bm!638252 (= call!638257 (derivationStepZipperDown!2116 (h!74208 (exprs!6948 lt!2516151)) (Context!12897 (t!381647 (exprs!6948 lt!2516151))) (h!74209 s!7408)))))

(declare-fun b!7029017 () Bool)

(declare-fun e!4225565 () (Set Context!12896))

(assert (=> b!7029017 (= e!4225565 (as set.empty (Set Context!12896)))))

(declare-fun b!7029018 () Bool)

(declare-fun e!4225566 () Bool)

(assert (=> b!7029018 (= e!4225566 (nullable!7163 (h!74208 (exprs!6948 lt!2516151))))))

(declare-fun b!7029019 () Bool)

(declare-fun e!4225564 () (Set Context!12896))

(assert (=> b!7029019 (= e!4225564 e!4225565)))

(declare-fun c!1306961 () Bool)

(assert (=> b!7029019 (= c!1306961 (is-Cons!67760 (exprs!6948 lt!2516151)))))

(declare-fun d!2192166 () Bool)

(declare-fun c!1306960 () Bool)

(assert (=> d!2192166 (= c!1306960 e!4225566)))

(declare-fun res!2869351 () Bool)

(assert (=> d!2192166 (=> (not res!2869351) (not e!4225566))))

(assert (=> d!2192166 (= res!2869351 (is-Cons!67760 (exprs!6948 lt!2516151)))))

(assert (=> d!2192166 (= (derivationStepZipperUp!2062 lt!2516151 (h!74209 s!7408)) e!4225564)))

(declare-fun b!7029020 () Bool)

(assert (=> b!7029020 (= e!4225564 (set.union call!638257 (derivationStepZipperUp!2062 (Context!12897 (t!381647 (exprs!6948 lt!2516151))) (h!74209 s!7408))))))

(declare-fun b!7029021 () Bool)

(assert (=> b!7029021 (= e!4225565 call!638257)))

(assert (= (and d!2192166 res!2869351) b!7029018))

(assert (= (and d!2192166 c!1306960) b!7029020))

(assert (= (and d!2192166 (not c!1306960)) b!7029019))

(assert (= (and b!7029019 c!1306961) b!7029021))

(assert (= (and b!7029019 (not c!1306961)) b!7029017))

(assert (= (or b!7029020 b!7029021) bm!638252))

(declare-fun m!7733708 () Bool)

(assert (=> bm!638252 m!7733708))

(declare-fun m!7733710 () Bool)

(assert (=> b!7029018 m!7733710))

(declare-fun m!7733712 () Bool)

(assert (=> b!7029020 m!7733712))

(assert (=> b!7028809 d!2192166))

(declare-fun d!2192168 () Bool)

(assert (=> d!2192168 (= (flatMap!2399 lt!2516158 lambda!413733) (dynLambda!27339 lambda!413733 lt!2516151))))

(declare-fun lt!2516400 () Unit!161572)

(assert (=> d!2192168 (= lt!2516400 (choose!53147 lt!2516158 lt!2516151 lambda!413733))))

(assert (=> d!2192168 (= lt!2516158 (set.insert lt!2516151 (as set.empty (Set Context!12896))))))

(assert (=> d!2192168 (= (lemmaFlatMapOnSingletonSet!1913 lt!2516158 lt!2516151 lambda!413733) lt!2516400)))

(declare-fun b_lambda!266049 () Bool)

(assert (=> (not b_lambda!266049) (not d!2192168)))

(declare-fun bs!1869723 () Bool)

(assert (= bs!1869723 d!2192168))

(assert (=> bs!1869723 m!7733264))

(declare-fun m!7733714 () Bool)

(assert (=> bs!1869723 m!7733714))

(declare-fun m!7733716 () Bool)

(assert (=> bs!1869723 m!7733716))

(assert (=> bs!1869723 m!7733258))

(assert (=> b!7028809 d!2192168))

(declare-fun d!2192170 () Bool)

(assert (=> d!2192170 (= (flatMap!2399 lt!2516158 lambda!413733) (choose!53148 lt!2516158 lambda!413733))))

(declare-fun bs!1869724 () Bool)

(assert (= bs!1869724 d!2192170))

(declare-fun m!7733718 () Bool)

(assert (=> bs!1869724 m!7733718))

(assert (=> b!7028809 d!2192170))

(assert (=> b!7028809 d!2192082))

(assert (=> b!7028817 d!2192098))

(assert (=> b!7028817 d!2192082))

(assert (=> b!7028807 d!2192086))

(assert (=> b!7028808 d!2192166))

(assert (=> b!7028808 d!2192136))

(declare-fun b!7029044 () Bool)

(declare-fun e!4225579 () (Set Context!12896))

(assert (=> b!7029044 (= e!4225579 (as set.empty (Set Context!12896)))))

(declare-fun c!1306973 () Bool)

(declare-fun call!638270 () (Set Context!12896))

(declare-fun call!638272 () List!67884)

(declare-fun bm!638265 () Bool)

(assert (=> bm!638265 (= call!638270 (derivationStepZipperDown!2116 (ite c!1306973 (regOne!35417 (h!74208 (exprs!6948 lt!2516156))) (regOne!35416 (h!74208 (exprs!6948 lt!2516156)))) (ite c!1306973 lt!2516151 (Context!12897 call!638272)) (h!74209 s!7408)))))

(declare-fun b!7029045 () Bool)

(declare-fun e!4225582 () (Set Context!12896))

(declare-fun e!4225584 () (Set Context!12896))

(assert (=> b!7029045 (= e!4225582 e!4225584)))

(declare-fun c!1306974 () Bool)

(assert (=> b!7029045 (= c!1306974 (is-Concat!26297 (h!74208 (exprs!6948 lt!2516156))))))

(declare-fun bm!638266 () Bool)

(declare-fun call!638275 () List!67884)

(assert (=> bm!638266 (= call!638275 call!638272)))

(declare-fun bm!638267 () Bool)

(declare-fun call!638271 () (Set Context!12896))

(declare-fun call!638274 () (Set Context!12896))

(assert (=> bm!638267 (= call!638271 call!638274)))

(declare-fun b!7029047 () Bool)

(declare-fun e!4225581 () (Set Context!12896))

(assert (=> b!7029047 (= e!4225581 (set.insert lt!2516151 (as set.empty (Set Context!12896))))))

(declare-fun bm!638268 () Bool)

(declare-fun c!1306972 () Bool)

(assert (=> bm!638268 (= call!638274 (derivationStepZipperDown!2116 (ite c!1306973 (regTwo!35417 (h!74208 (exprs!6948 lt!2516156))) (ite c!1306972 (regTwo!35416 (h!74208 (exprs!6948 lt!2516156))) (ite c!1306974 (regOne!35416 (h!74208 (exprs!6948 lt!2516156))) (reg!17781 (h!74208 (exprs!6948 lt!2516156)))))) (ite (or c!1306973 c!1306972) lt!2516151 (Context!12897 call!638275)) (h!74209 s!7408)))))

(declare-fun b!7029048 () Bool)

(declare-fun call!638273 () (Set Context!12896))

(assert (=> b!7029048 (= e!4225584 call!638273)))

(declare-fun b!7029049 () Bool)

(declare-fun e!4225580 () (Set Context!12896))

(assert (=> b!7029049 (= e!4225580 (set.union call!638270 call!638274))))

(declare-fun bm!638269 () Bool)

(declare-fun $colon$colon!2564 (List!67884 Regex!17452) List!67884)

(assert (=> bm!638269 (= call!638272 ($colon$colon!2564 (exprs!6948 lt!2516151) (ite (or c!1306972 c!1306974) (regTwo!35416 (h!74208 (exprs!6948 lt!2516156))) (h!74208 (exprs!6948 lt!2516156)))))))

(declare-fun b!7029050 () Bool)

(declare-fun e!4225583 () Bool)

(assert (=> b!7029050 (= e!4225583 (nullable!7163 (regOne!35416 (h!74208 (exprs!6948 lt!2516156)))))))

(declare-fun b!7029051 () Bool)

(assert (=> b!7029051 (= e!4225581 e!4225580)))

(assert (=> b!7029051 (= c!1306973 (is-Union!17452 (h!74208 (exprs!6948 lt!2516156))))))

(declare-fun bm!638270 () Bool)

(assert (=> bm!638270 (= call!638273 call!638271)))

(declare-fun b!7029046 () Bool)

(assert (=> b!7029046 (= e!4225582 (set.union call!638270 call!638271))))

(declare-fun d!2192172 () Bool)

(declare-fun c!1306975 () Bool)

(assert (=> d!2192172 (= c!1306975 (and (is-ElementMatch!17452 (h!74208 (exprs!6948 lt!2516156))) (= (c!1306901 (h!74208 (exprs!6948 lt!2516156))) (h!74209 s!7408))))))

(assert (=> d!2192172 (= (derivationStepZipperDown!2116 (h!74208 (exprs!6948 lt!2516156)) lt!2516151 (h!74209 s!7408)) e!4225581)))

(declare-fun b!7029052 () Bool)

(assert (=> b!7029052 (= c!1306972 e!4225583)))

(declare-fun res!2869354 () Bool)

(assert (=> b!7029052 (=> (not res!2869354) (not e!4225583))))

(assert (=> b!7029052 (= res!2869354 (is-Concat!26297 (h!74208 (exprs!6948 lt!2516156))))))

(assert (=> b!7029052 (= e!4225580 e!4225582)))

(declare-fun b!7029053 () Bool)

(assert (=> b!7029053 (= e!4225579 call!638273)))

(declare-fun b!7029054 () Bool)

(declare-fun c!1306976 () Bool)

(assert (=> b!7029054 (= c!1306976 (is-Star!17452 (h!74208 (exprs!6948 lt!2516156))))))

(assert (=> b!7029054 (= e!4225584 e!4225579)))

(assert (= (and d!2192172 c!1306975) b!7029047))

(assert (= (and d!2192172 (not c!1306975)) b!7029051))

(assert (= (and b!7029051 c!1306973) b!7029049))

(assert (= (and b!7029051 (not c!1306973)) b!7029052))

(assert (= (and b!7029052 res!2869354) b!7029050))

(assert (= (and b!7029052 c!1306972) b!7029046))

(assert (= (and b!7029052 (not c!1306972)) b!7029045))

(assert (= (and b!7029045 c!1306974) b!7029048))

(assert (= (and b!7029045 (not c!1306974)) b!7029054))

(assert (= (and b!7029054 c!1306976) b!7029053))

(assert (= (and b!7029054 (not c!1306976)) b!7029044))

(assert (= (or b!7029048 b!7029053) bm!638266))

(assert (= (or b!7029048 b!7029053) bm!638270))

(assert (= (or b!7029046 bm!638270) bm!638267))

(assert (= (or b!7029046 bm!638266) bm!638269))

(assert (= (or b!7029049 b!7029046) bm!638265))

(assert (= (or b!7029049 bm!638267) bm!638268))

(declare-fun m!7733720 () Bool)

(assert (=> bm!638269 m!7733720))

(assert (=> b!7029047 m!7733258))

(declare-fun m!7733722 () Bool)

(assert (=> bm!638265 m!7733722))

(declare-fun m!7733724 () Bool)

(assert (=> bm!638268 m!7733724))

(declare-fun m!7733726 () Bool)

(assert (=> b!7029050 m!7733726))

(assert (=> b!7028808 d!2192172))

(assert (=> b!7028808 d!2192082))

(declare-fun condSetEmpty!49073 () Bool)

(assert (=> setNonEmpty!49067 (= condSetEmpty!49073 (= setRest!49067 (as set.empty (Set Context!12896))))))

(declare-fun setRes!49073 () Bool)

(assert (=> setNonEmpty!49067 (= tp!1935968 setRes!49073)))

(declare-fun setIsEmpty!49073 () Bool)

(assert (=> setIsEmpty!49073 setRes!49073))

(declare-fun setElem!49073 () Context!12896)

(declare-fun tp!1935989 () Bool)

(declare-fun setNonEmpty!49073 () Bool)

(declare-fun e!4225587 () Bool)

(assert (=> setNonEmpty!49073 (= setRes!49073 (and tp!1935989 (inv!86490 setElem!49073) e!4225587))))

(declare-fun setRest!49073 () (Set Context!12896))

(assert (=> setNonEmpty!49073 (= setRest!49067 (set.union (set.insert setElem!49073 (as set.empty (Set Context!12896))) setRest!49073))))

(declare-fun b!7029059 () Bool)

(declare-fun tp!1935988 () Bool)

(assert (=> b!7029059 (= e!4225587 tp!1935988)))

(assert (= (and setNonEmpty!49067 condSetEmpty!49073) setIsEmpty!49073))

(assert (= (and setNonEmpty!49067 (not condSetEmpty!49073)) setNonEmpty!49073))

(assert (= setNonEmpty!49073 b!7029059))

(declare-fun m!7733728 () Bool)

(assert (=> setNonEmpty!49073 m!7733728))

(declare-fun b!7029064 () Bool)

(declare-fun e!4225590 () Bool)

(declare-fun tp!1935994 () Bool)

(declare-fun tp!1935995 () Bool)

(assert (=> b!7029064 (= e!4225590 (and tp!1935994 tp!1935995))))

(assert (=> b!7028815 (= tp!1935969 e!4225590)))

(assert (= (and b!7028815 (is-Cons!67760 (exprs!6948 ct2!306))) b!7029064))

(declare-fun b!7029065 () Bool)

(declare-fun e!4225591 () Bool)

(declare-fun tp!1935996 () Bool)

(declare-fun tp!1935997 () Bool)

(assert (=> b!7029065 (= e!4225591 (and tp!1935996 tp!1935997))))

(assert (=> b!7028813 (= tp!1935971 e!4225591)))

(assert (= (and b!7028813 (is-Cons!67760 (exprs!6948 setElem!49067))) b!7029065))

(declare-fun b!7029070 () Bool)

(declare-fun e!4225594 () Bool)

(declare-fun tp!1936000 () Bool)

(assert (=> b!7029070 (= e!4225594 (and tp_is_empty!44129 tp!1936000))))

(assert (=> b!7028812 (= tp!1935970 e!4225594)))

(assert (= (and b!7028812 (is-Cons!67761 (t!381648 s!7408))) b!7029070))

(declare-fun b_lambda!266051 () Bool)

(assert (= b_lambda!266045 (or b!7028796 b_lambda!266051)))

(declare-fun bs!1869725 () Bool)

(declare-fun d!2192174 () Bool)

(assert (= bs!1869725 (and d!2192174 b!7028796)))

(assert (=> bs!1869725 (= (dynLambda!27339 lambda!413733 lt!2516148) (derivationStepZipperUp!2062 lt!2516148 (h!74209 s!7408)))))

(assert (=> bs!1869725 m!7733278))

(assert (=> d!2192142 d!2192174))

(declare-fun b_lambda!266053 () Bool)

(assert (= b_lambda!266047 (or b!7028814 b_lambda!266053)))

(declare-fun bs!1869726 () Bool)

(declare-fun d!2192176 () Bool)

(assert (= bs!1869726 (and d!2192176 b!7028814)))

(assert (=> bs!1869726 (= (dynLambda!27340 lambda!413730 lt!2516397) (matchZipper!2992 (set.insert lt!2516397 (as set.empty (Set Context!12896))) s!7408))))

(declare-fun m!7733730 () Bool)

(assert (=> bs!1869726 m!7733730))

(assert (=> bs!1869726 m!7733730))

(declare-fun m!7733732 () Bool)

(assert (=> bs!1869726 m!7733732))

(assert (=> d!2192152 d!2192176))

(declare-fun b_lambda!266055 () Bool)

(assert (= b_lambda!266039 (or b!7028801 b_lambda!266055)))

(declare-fun bs!1869727 () Bool)

(declare-fun d!2192178 () Bool)

(assert (= bs!1869727 (and d!2192178 b!7028801)))

(declare-fun lt!2516401 () Unit!161572)

(assert (=> bs!1869727 (= lt!2516401 (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516353) (exprs!6948 ct2!306) lambda!413732))))

(assert (=> bs!1869727 (= (dynLambda!27338 lambda!413731 lt!2516353) (Context!12897 (++!15485 (exprs!6948 lt!2516353) (exprs!6948 ct2!306))))))

(declare-fun m!7733734 () Bool)

(assert (=> bs!1869727 m!7733734))

(declare-fun m!7733736 () Bool)

(assert (=> bs!1869727 m!7733736))

(assert (=> d!2192088 d!2192178))

(declare-fun b_lambda!266057 () Bool)

(assert (= b_lambda!266041 (or b!7028796 b_lambda!266057)))

(declare-fun bs!1869728 () Bool)

(declare-fun d!2192180 () Bool)

(assert (= bs!1869728 (and d!2192180 b!7028796)))

(assert (=> bs!1869728 (= (dynLambda!27339 lambda!413733 lt!2516188) (derivationStepZipperUp!2062 lt!2516188 (h!74209 s!7408)))))

(assert (=> bs!1869728 m!7733344))

(assert (=> d!2192124 d!2192180))

(declare-fun b_lambda!266059 () Bool)

(assert (= b_lambda!266049 (or b!7028796 b_lambda!266059)))

(declare-fun bs!1869729 () Bool)

(declare-fun d!2192182 () Bool)

(assert (= bs!1869729 (and d!2192182 b!7028796)))

(assert (=> bs!1869729 (= (dynLambda!27339 lambda!413733 lt!2516151) (derivationStepZipperUp!2062 lt!2516151 (h!74209 s!7408)))))

(assert (=> bs!1869729 m!7733262))

(assert (=> d!2192168 d!2192182))

(declare-fun b_lambda!266061 () Bool)

(assert (= b_lambda!266043 (or b!7028801 b_lambda!266061)))

(declare-fun bs!1869730 () Bool)

(declare-fun d!2192184 () Bool)

(assert (= bs!1869730 (and d!2192184 b!7028801)))

(declare-fun lt!2516402 () Unit!161572)

(assert (=> bs!1869730 (= lt!2516402 (lemmaConcatPreservesForall!773 (exprs!6948 lt!2516188) (exprs!6948 ct2!306) lambda!413732))))

(assert (=> bs!1869730 (= (dynLambda!27338 lambda!413731 lt!2516188) (Context!12897 (++!15485 (exprs!6948 lt!2516188) (exprs!6948 ct2!306))))))

(declare-fun m!7733738 () Bool)

(assert (=> bs!1869730 m!7733738))

(declare-fun m!7733740 () Bool)

(assert (=> bs!1869730 m!7733740))

(assert (=> d!2192130 d!2192184))

(push 1)

(assert (not d!2192150))

(assert (not d!2192124))

(assert (not b!7028956))

(assert (not b_lambda!266061))

(assert (not b!7028932))

(assert (not b!7029003))

(assert (not d!2192084))

(assert (not bs!1869725))

(assert (not d!2192104))

(assert (not bs!1869726))

(assert (not b!7028957))

(assert (not b_lambda!266053))

(assert (not setNonEmpty!49073))

(assert (not b!7028926))

(assert (not d!2192134))

(assert (not d!2192164))

(assert (not b!7028930))

(assert (not d!2192138))

(assert (not b!7028923))

(assert (not b!7028916))

(assert (not d!2192092))

(assert (not b!7028934))

(assert (not b!7028953))

(assert (not b!7028955))

(assert (not d!2192128))

(assert (not b!7028992))

(assert (not bm!638268))

(assert (not b!7029065))

(assert (not b!7029059))

(assert (not d!2192110))

(assert (not b!7028998))

(assert (not b!7029007))

(assert (not b!7029008))

(assert (not bs!1869727))

(assert (not b!7028977))

(assert (not d!2192122))

(assert (not d!2192082))

(assert (not b_lambda!266055))

(assert (not b!7029018))

(assert (not bm!638269))

(assert (not b!7028959))

(assert (not b!7029064))

(assert (not b!7028924))

(assert (not d!2192100))

(assert (not b!7028968))

(assert (not d!2192170))

(assert (not d!2192090))

(assert (not d!2192144))

(assert (not b!7028997))

(assert (not d!2192098))

(assert (not b!7028960))

(assert (not d!2192168))

(assert (not d!2192118))

(assert (not d!2192130))

(assert (not d!2192136))

(assert (not d!2192148))

(assert (not b!7028990))

(assert (not bs!1869728))

(assert (not d!2192112))

(assert (not bm!638252))

(assert (not bm!638265))

(assert (not d!2192156))

(assert (not b!7029070))

(assert (not b!7028972))

(assert (not d!2192080))

(assert (not d!2192152))

(assert (not b!7028962))

(assert (not bm!638250))

(assert (not b!7028927))

(assert (not b!7029050))

(assert (not b!7028931))

(assert (not b!7028915))

(assert (not b!7029015))

(assert (not d!2192142))

(assert (not d!2192158))

(assert (not d!2192086))

(assert (not b!7029020))

(assert (not d!2192088))

(assert (not b!7029012))

(assert (not d!2192106))

(assert (not bs!1869730))

(assert (not d!2192108))

(assert (not b!7028925))

(assert (not b!7028933))

(assert (not bs!1869729))

(assert (not b!7029005))

(assert (not d!2192094))

(assert (not bm!638251))

(assert (not b_lambda!266059))

(assert (not b!7028994))

(assert tp_is_empty!44129)

(assert (not d!2192154))

(assert (not b!7028905))

(assert (not d!2192078))

(assert (not b!7028904))

(assert (not d!2192102))

(assert (not b!7028963))

(assert (not b_lambda!266051))

(assert (not b_lambda!266057))

(assert (not b!7028922))

(assert (not d!2192096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

