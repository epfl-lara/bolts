; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687046 () Bool)

(assert start!687046)

(declare-fun b!7072234 () Bool)

(assert (=> b!7072234 true))

(declare-fun b!7072249 () Bool)

(assert (=> b!7072249 true))

(declare-fun b!7072233 () Bool)

(assert (=> b!7072233 true))

(declare-fun bs!1880724 () Bool)

(declare-fun b!7072242 () Bool)

(assert (= bs!1880724 (and b!7072242 b!7072234)))

(declare-datatypes ((C!35562 0))(
  ( (C!35563 (val!27483 Int)) )
))
(declare-datatypes ((List!68464 0))(
  ( (Nil!68340) (Cons!68340 (h!74788 C!35562) (t!382247 List!68464)) )
))
(declare-fun lt!2546202 () List!68464)

(declare-fun lambda!425672 () Int)

(declare-fun s!7408 () List!68464)

(declare-fun lambda!425668 () Int)

(assert (=> bs!1880724 (= (= lt!2546202 s!7408) (= lambda!425672 lambda!425668))))

(assert (=> b!7072242 true))

(declare-fun e!4251837 () Bool)

(declare-fun e!4251839 () Bool)

(assert (=> b!7072233 (= e!4251837 e!4251839)))

(declare-fun res!2888383 () Bool)

(assert (=> b!7072233 (=> res!2888383 e!4251839)))

(declare-datatypes ((Regex!17646 0))(
  ( (ElementMatch!17646 (c!1319233 C!35562)) (Concat!26491 (regOne!35804 Regex!17646) (regTwo!35804 Regex!17646)) (EmptyExpr!17646) (Star!17646 (reg!17975 Regex!17646)) (EmptyLang!17646) (Union!17646 (regOne!35805 Regex!17646) (regTwo!35805 Regex!17646)) )
))
(declare-datatypes ((List!68465 0))(
  ( (Nil!68341) (Cons!68341 (h!74789 Regex!17646) (t!382248 List!68465)) )
))
(declare-datatypes ((Context!13284 0))(
  ( (Context!13285 (exprs!7142 List!68465)) )
))
(declare-fun lt!2546189 () (Set Context!13284))

(declare-fun lt!2546153 () (Set Context!13284))

(declare-fun derivationStepZipper!3096 ((Set Context!13284) C!35562) (Set Context!13284))

(assert (=> b!7072233 (= res!2888383 (not (= (derivationStepZipper!3096 lt!2546153 (h!74788 s!7408)) lt!2546189)))))

(declare-fun lambda!425671 () Int)

(declare-fun lt!2546170 () Context!13284)

(declare-fun flatMap!2572 ((Set Context!13284) Int) (Set Context!13284))

(declare-fun derivationStepZipperUp!2230 (Context!13284 C!35562) (Set Context!13284))

(assert (=> b!7072233 (= (flatMap!2572 lt!2546153 lambda!425671) (derivationStepZipperUp!2230 lt!2546170 (h!74788 s!7408)))))

(declare-datatypes ((Unit!162002 0))(
  ( (Unit!162003) )
))
(declare-fun lt!2546180 () Unit!162002)

(declare-fun lemmaFlatMapOnSingletonSet!2081 ((Set Context!13284) Context!13284 Int) Unit!162002)

(assert (=> b!7072233 (= lt!2546180 (lemmaFlatMapOnSingletonSet!2081 lt!2546153 lt!2546170 lambda!425671))))

(assert (=> b!7072233 (= lt!2546189 (derivationStepZipperUp!2230 lt!2546170 (h!74788 s!7408)))))

(declare-fun lt!2546186 () Unit!162002)

(declare-fun lt!2546157 () Context!13284)

(declare-fun ct2!306 () Context!13284)

(declare-fun lambda!425670 () Int)

(declare-fun lemmaConcatPreservesForall!957 (List!68465 List!68465 Int) Unit!162002)

(assert (=> b!7072233 (= lt!2546186 (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546157) (exprs!7142 ct2!306) lambda!425670))))

(declare-fun e!4251830 () Bool)

(declare-fun e!4251840 () Bool)

(assert (=> b!7072234 (= e!4251830 (not e!4251840))))

(declare-fun res!2888385 () Bool)

(assert (=> b!7072234 (=> res!2888385 e!4251840)))

(declare-fun lt!2546188 () (Set Context!13284))

(declare-fun matchZipper!3186 ((Set Context!13284) List!68464) Bool)

(assert (=> b!7072234 (= res!2888385 (not (matchZipper!3186 lt!2546188 s!7408)))))

(declare-fun lt!2546191 () Context!13284)

(assert (=> b!7072234 (= lt!2546188 (set.insert lt!2546191 (as set.empty (Set Context!13284))))))

(declare-fun lt!2546152 () (Set Context!13284))

(declare-fun getWitness!1749 ((Set Context!13284) Int) Context!13284)

(assert (=> b!7072234 (= lt!2546191 (getWitness!1749 lt!2546152 lambda!425668))))

(declare-datatypes ((List!68466 0))(
  ( (Nil!68342) (Cons!68342 (h!74790 Context!13284) (t!382249 List!68466)) )
))
(declare-fun lt!2546195 () List!68466)

(declare-fun exists!3692 (List!68466 Int) Bool)

(assert (=> b!7072234 (exists!3692 lt!2546195 lambda!425668)))

(declare-fun lt!2546200 () Unit!162002)

(declare-fun lemmaZipperMatchesExistsMatchingContext!567 (List!68466 List!68464) Unit!162002)

(assert (=> b!7072234 (= lt!2546200 (lemmaZipperMatchesExistsMatchingContext!567 lt!2546195 s!7408))))

(declare-fun toList!10987 ((Set Context!13284)) List!68466)

(assert (=> b!7072234 (= lt!2546195 (toList!10987 lt!2546152))))

(declare-fun b!7072235 () Bool)

(declare-fun res!2888396 () Bool)

(assert (=> b!7072235 (=> res!2888396 e!4251839)))

(assert (=> b!7072235 (= res!2888396 (not (is-Cons!68341 (exprs!7142 lt!2546157))))))

(declare-fun b!7072236 () Bool)

(declare-fun res!2888384 () Bool)

(assert (=> b!7072236 (=> (not res!2888384) (not e!4251830))))

(assert (=> b!7072236 (= res!2888384 (is-Cons!68340 s!7408))))

(declare-fun b!7072237 () Bool)

(declare-fun res!2888387 () Bool)

(declare-fun e!4251845 () Bool)

(assert (=> b!7072237 (=> res!2888387 e!4251845)))

(declare-datatypes ((tuple2!68266 0))(
  ( (tuple2!68267 (_1!37436 List!68464) (_2!37436 List!68464)) )
))
(declare-fun lt!2546165 () tuple2!68266)

(declare-fun ++!15775 (List!68464 List!68464) List!68464)

(assert (=> b!7072237 (= res!2888387 (not (= (++!15775 (_1!37436 lt!2546165) (_2!37436 lt!2546165)) (t!382247 s!7408))))))

(declare-fun res!2888380 () Bool)

(assert (=> start!687046 (=> (not res!2888380) (not e!4251830))))

(assert (=> start!687046 (= res!2888380 (matchZipper!3186 lt!2546152 s!7408))))

(declare-fun z1!570 () (Set Context!13284))

(declare-fun appendTo!767 ((Set Context!13284) Context!13284) (Set Context!13284))

(assert (=> start!687046 (= lt!2546152 (appendTo!767 z1!570 ct2!306))))

(assert (=> start!687046 e!4251830))

(declare-fun condSetEmpty!50264 () Bool)

(assert (=> start!687046 (= condSetEmpty!50264 (= z1!570 (as set.empty (Set Context!13284))))))

(declare-fun setRes!50264 () Bool)

(assert (=> start!687046 setRes!50264))

(declare-fun e!4251831 () Bool)

(declare-fun inv!86975 (Context!13284) Bool)

(assert (=> start!687046 (and (inv!86975 ct2!306) e!4251831)))

(declare-fun e!4251828 () Bool)

(assert (=> start!687046 e!4251828))

(declare-fun b!7072238 () Bool)

(declare-fun e!4251833 () Bool)

(declare-fun lt!2546156 () (Set Context!13284))

(assert (=> b!7072238 (= e!4251833 (matchZipper!3186 lt!2546156 (t!382247 s!7408)))))

(declare-fun b!7072239 () Bool)

(declare-fun res!2888401 () Bool)

(assert (=> b!7072239 (=> res!2888401 e!4251845)))

(declare-fun lt!2546193 () (Set Context!13284))

(assert (=> b!7072239 (= res!2888401 (not (matchZipper!3186 lt!2546193 (_2!37436 lt!2546165))))))

(declare-fun b!7072240 () Bool)

(declare-fun e!4251844 () Bool)

(declare-fun e!4251826 () Bool)

(assert (=> b!7072240 (= e!4251844 e!4251826)))

(declare-fun res!2888404 () Bool)

(assert (=> b!7072240 (=> res!2888404 e!4251826)))

(declare-fun e!4251834 () Bool)

(assert (=> b!7072240 (= res!2888404 e!4251834)))

(declare-fun res!2888393 () Bool)

(assert (=> b!7072240 (=> (not res!2888393) (not e!4251834))))

(declare-fun lt!2546203 () Bool)

(assert (=> b!7072240 (= res!2888393 (not lt!2546203))))

(declare-fun lt!2546169 () (Set Context!13284))

(assert (=> b!7072240 (= lt!2546203 (matchZipper!3186 lt!2546169 lt!2546202))))

(assert (=> b!7072240 (= lt!2546202 (Cons!68340 (h!74788 s!7408) (_1!37436 lt!2546165)))))

(declare-fun lt!2546184 () (Set Context!13284))

(assert (=> b!7072240 (matchZipper!3186 lt!2546184 (_1!37436 lt!2546165))))

(declare-fun lt!2546171 () (Set Context!13284))

(declare-fun lt!2546166 () Unit!162002)

(declare-fun lt!2546163 () (Set Context!13284))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1659 ((Set Context!13284) (Set Context!13284) List!68464) Unit!162002)

(assert (=> b!7072240 (= lt!2546166 (lemmaZipperConcatMatchesSameAsBothZippers!1659 lt!2546163 lt!2546171 (_1!37436 lt!2546165)))))

(declare-fun setElem!50264 () Context!13284)

(declare-fun setNonEmpty!50264 () Bool)

(declare-fun e!4251843 () Bool)

(declare-fun tp!1942340 () Bool)

(assert (=> setNonEmpty!50264 (= setRes!50264 (and tp!1942340 (inv!86975 setElem!50264) e!4251843))))

(declare-fun setRest!50264 () (Set Context!13284))

(assert (=> setNonEmpty!50264 (= z1!570 (set.union (set.insert setElem!50264 (as set.empty (Set Context!13284))) setRest!50264))))

(declare-fun b!7072241 () Bool)

(declare-fun res!2888397 () Bool)

(declare-fun e!4251835 () Bool)

(assert (=> b!7072241 (=> res!2888397 e!4251835)))

(declare-fun lt!2546182 () Bool)

(assert (=> b!7072241 (= res!2888397 (not lt!2546182))))

(declare-fun setIsEmpty!50264 () Bool)

(assert (=> setIsEmpty!50264 setRes!50264))

(assert (=> b!7072242 (= e!4251826 (matchZipper!3186 z1!570 lt!2546202))))

(declare-fun lt!2546176 () List!68466)

(declare-fun content!13793 (List!68466) (Set Context!13284))

(assert (=> b!7072242 (matchZipper!3186 (content!13793 lt!2546176) lt!2546202)))

(declare-fun lt!2546159 () Unit!162002)

(declare-fun lemmaExistsMatchingContextThenMatchingString!49 (List!68466 List!68464) Unit!162002)

(assert (=> b!7072242 (= lt!2546159 (lemmaExistsMatchingContextThenMatchingString!49 lt!2546176 lt!2546202))))

(assert (=> b!7072242 (= lt!2546176 (toList!10987 z1!570))))

(declare-fun exists!3693 ((Set Context!13284) Int) Bool)

(assert (=> b!7072242 (exists!3693 z1!570 lambda!425672)))

(declare-fun lt!2546201 () Unit!162002)

(declare-fun lemmaContainsThenExists!154 ((Set Context!13284) Context!13284 Int) Unit!162002)

(assert (=> b!7072242 (= lt!2546201 (lemmaContainsThenExists!154 z1!570 lt!2546157 lambda!425672))))

(declare-datatypes ((Option!16965 0))(
  ( (None!16964) (Some!16964 (v!53258 tuple2!68266)) )
))
(declare-fun isDefined!13666 (Option!16965) Bool)

(declare-fun findConcatSeparationZippers!481 ((Set Context!13284) (Set Context!13284) List!68464 List!68464 List!68464) Option!16965)

(assert (=> b!7072242 (isDefined!13666 (findConcatSeparationZippers!481 lt!2546169 lt!2546193 Nil!68340 s!7408 s!7408))))

(declare-fun lt!2546162 () Unit!162002)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!73 ((Set Context!13284) (Set Context!13284) List!68464 List!68464 List!68464 List!68464 List!68464) Unit!162002)

(assert (=> b!7072242 (= lt!2546162 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!73 lt!2546169 lt!2546193 lt!2546202 (_2!37436 lt!2546165) s!7408 Nil!68340 s!7408))))

(declare-fun b!7072243 () Bool)

(declare-fun e!4251838 () Bool)

(assert (=> b!7072243 (= e!4251835 e!4251838)))

(declare-fun res!2888388 () Bool)

(assert (=> b!7072243 (=> res!2888388 e!4251838)))

(assert (=> b!7072243 (= res!2888388 (matchZipper!3186 lt!2546156 (t!382247 s!7408)))))

(declare-fun lt!2546167 () Unit!162002)

(declare-fun lt!2546192 () List!68465)

(assert (=> b!7072243 (= lt!2546167 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun b!7072244 () Bool)

(declare-fun e!4251842 () Bool)

(assert (=> b!7072244 (= e!4251842 (not (matchZipper!3186 lt!2546156 (t!382247 s!7408))))))

(declare-fun lt!2546183 () Unit!162002)

(assert (=> b!7072244 (= lt!2546183 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun b!7072245 () Bool)

(declare-fun e!4251832 () Bool)

(assert (=> b!7072245 (= e!4251832 e!4251835)))

(declare-fun res!2888399 () Bool)

(assert (=> b!7072245 (=> res!2888399 e!4251835)))

(assert (=> b!7072245 (= res!2888399 e!4251842)))

(declare-fun res!2888403 () Bool)

(assert (=> b!7072245 (=> (not res!2888403) (not e!4251842))))

(declare-fun lt!2546155 () Bool)

(assert (=> b!7072245 (= res!2888403 (not (= lt!2546182 lt!2546155)))))

(assert (=> b!7072245 (= lt!2546182 (matchZipper!3186 lt!2546189 (t!382247 s!7408)))))

(declare-fun lt!2546194 () Unit!162002)

(assert (=> b!7072245 (= lt!2546194 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lt!2546197 () (Set Context!13284))

(assert (=> b!7072245 (= (matchZipper!3186 lt!2546197 (t!382247 s!7408)) e!4251833)))

(declare-fun res!2888398 () Bool)

(assert (=> b!7072245 (=> res!2888398 e!4251833)))

(assert (=> b!7072245 (= res!2888398 lt!2546155)))

(declare-fun lt!2546164 () (Set Context!13284))

(assert (=> b!7072245 (= lt!2546155 (matchZipper!3186 lt!2546164 (t!382247 s!7408)))))

(declare-fun lt!2546174 () Unit!162002)

(assert (=> b!7072245 (= lt!2546174 (lemmaZipperConcatMatchesSameAsBothZippers!1659 lt!2546164 lt!2546156 (t!382247 s!7408)))))

(declare-fun lt!2546161 () Unit!162002)

(assert (=> b!7072245 (= lt!2546161 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lt!2546190 () Unit!162002)

(assert (=> b!7072245 (= lt!2546190 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun b!7072246 () Bool)

(declare-fun res!2888382 () Bool)

(assert (=> b!7072246 (=> res!2888382 e!4251839)))

(declare-fun isEmpty!39885 (List!68465) Bool)

(assert (=> b!7072246 (= res!2888382 (isEmpty!39885 (exprs!7142 lt!2546157)))))

(declare-fun b!7072247 () Bool)

(declare-fun res!2888391 () Bool)

(assert (=> b!7072247 (=> res!2888391 e!4251826)))

(assert (=> b!7072247 (= res!2888391 (not lt!2546203))))

(declare-fun b!7072248 () Bool)

(declare-fun e!4251827 () Bool)

(assert (=> b!7072248 (= e!4251839 e!4251827)))

(declare-fun res!2888392 () Bool)

(assert (=> b!7072248 (=> res!2888392 e!4251827)))

(declare-fun nullable!7329 (Regex!17646) Bool)

(assert (=> b!7072248 (= res!2888392 (not (nullable!7329 (h!74789 (exprs!7142 lt!2546157)))))))

(declare-fun lt!2546179 () Context!13284)

(assert (=> b!7072248 (= lt!2546179 (Context!13285 lt!2546192))))

(declare-fun tail!13830 (List!68465) List!68465)

(assert (=> b!7072248 (= lt!2546192 (tail!13830 (exprs!7142 lt!2546157)))))

(declare-fun e!4251836 () Bool)

(assert (=> b!7072249 (= e!4251840 e!4251836)))

(declare-fun res!2888400 () Bool)

(assert (=> b!7072249 (=> res!2888400 e!4251836)))

(assert (=> b!7072249 (= res!2888400 (or (not (= lt!2546170 lt!2546191)) (not (set.member lt!2546157 z1!570))))))

(declare-fun ++!15776 (List!68465 List!68465) List!68465)

(assert (=> b!7072249 (= lt!2546170 (Context!13285 (++!15776 (exprs!7142 lt!2546157) (exprs!7142 ct2!306))))))

(declare-fun lt!2546196 () Unit!162002)

(assert (=> b!7072249 (= lt!2546196 (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546157) (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lambda!425669 () Int)

(declare-fun mapPost2!475 ((Set Context!13284) Int Context!13284) Context!13284)

(assert (=> b!7072249 (= lt!2546157 (mapPost2!475 z1!570 lambda!425669 lt!2546191))))

(declare-fun b!7072250 () Bool)

(declare-fun e!4251841 () Bool)

(assert (=> b!7072250 (= e!4251841 e!4251845)))

(declare-fun res!2888389 () Bool)

(assert (=> b!7072250 (=> res!2888389 e!4251845)))

(assert (=> b!7072250 (= res!2888389 (not (matchZipper!3186 lt!2546163 (_1!37436 lt!2546165))))))

(declare-fun lt!2546187 () Option!16965)

(declare-fun get!23939 (Option!16965) tuple2!68266)

(assert (=> b!7072250 (= lt!2546165 (get!23939 lt!2546187))))

(assert (=> b!7072250 (isDefined!13666 lt!2546187)))

(assert (=> b!7072250 (= lt!2546187 (findConcatSeparationZippers!481 lt!2546163 lt!2546193 Nil!68340 (t!382247 s!7408) (t!382247 s!7408)))))

(assert (=> b!7072250 (= lt!2546193 (set.insert ct2!306 (as set.empty (Set Context!13284))))))

(declare-fun lt!2546168 () Unit!162002)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!469 ((Set Context!13284) Context!13284 List!68464) Unit!162002)

(assert (=> b!7072250 (= lt!2546168 (lemmaConcatZipperMatchesStringThenFindConcatDefined!469 lt!2546163 ct2!306 (t!382247 s!7408)))))

(declare-fun lt!2546172 () Unit!162002)

(assert (=> b!7072250 (= lt!2546172 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(assert (=> b!7072250 (= lt!2546164 (appendTo!767 lt!2546163 ct2!306))))

(declare-fun derivationStepZipperDown!2280 (Regex!17646 Context!13284 C!35562) (Set Context!13284))

(assert (=> b!7072250 (= lt!2546163 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) lt!2546179 (h!74788 s!7408)))))

(declare-fun lt!2546199 () Unit!162002)

(assert (=> b!7072250 (= lt!2546199 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lt!2546158 () Unit!162002)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!117 (Context!13284 Regex!17646 C!35562 Context!13284) Unit!162002)

(assert (=> b!7072250 (= lt!2546158 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!117 lt!2546179 (h!74789 (exprs!7142 lt!2546157)) (h!74788 s!7408) ct2!306))))

(declare-fun b!7072251 () Bool)

(declare-fun tp_is_empty!44517 () Bool)

(declare-fun tp!1942338 () Bool)

(assert (=> b!7072251 (= e!4251828 (and tp_is_empty!44517 tp!1942338))))

(declare-fun b!7072252 () Bool)

(assert (=> b!7072252 (= e!4251834 (not (matchZipper!3186 lt!2546171 (_1!37436 lt!2546165))))))

(declare-fun b!7072253 () Bool)

(declare-fun e!4251829 () Bool)

(assert (=> b!7072253 (= e!4251829 e!4251844)))

(declare-fun res!2888394 () Bool)

(assert (=> b!7072253 (=> res!2888394 e!4251844)))

(declare-fun lt!2546160 () (Set Context!13284))

(assert (=> b!7072253 (= res!2888394 (not (= lt!2546160 lt!2546184)))))

(assert (=> b!7072253 (= lt!2546184 (set.union lt!2546163 lt!2546171))))

(assert (=> b!7072253 (= lt!2546171 (derivationStepZipperUp!2230 lt!2546179 (h!74788 s!7408)))))

(declare-fun b!7072254 () Bool)

(assert (=> b!7072254 (= e!4251836 e!4251837)))

(declare-fun res!2888381 () Bool)

(assert (=> b!7072254 (=> res!2888381 e!4251837)))

(assert (=> b!7072254 (= res!2888381 (not (= lt!2546153 lt!2546188)))))

(assert (=> b!7072254 (= lt!2546153 (set.insert lt!2546170 (as set.empty (Set Context!13284))))))

(declare-fun lt!2546173 () Unit!162002)

(assert (=> b!7072254 (= lt!2546173 (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546157) (exprs!7142 ct2!306) lambda!425670))))

(declare-fun b!7072255 () Bool)

(assert (=> b!7072255 (= e!4251845 e!4251829)))

(declare-fun res!2888395 () Bool)

(assert (=> b!7072255 (=> res!2888395 e!4251829)))

(declare-fun lt!2546177 () (Set Context!13284))

(assert (=> b!7072255 (= res!2888395 (not (= lt!2546160 lt!2546177)))))

(assert (=> b!7072255 (= (flatMap!2572 lt!2546169 lambda!425671) (derivationStepZipperUp!2230 lt!2546157 (h!74788 s!7408)))))

(declare-fun lt!2546178 () Unit!162002)

(assert (=> b!7072255 (= lt!2546178 (lemmaFlatMapOnSingletonSet!2081 lt!2546169 lt!2546157 lambda!425671))))

(assert (=> b!7072255 (= lt!2546177 (derivationStepZipperUp!2230 lt!2546157 (h!74788 s!7408)))))

(assert (=> b!7072255 (= lt!2546160 (derivationStepZipper!3096 lt!2546169 (h!74788 s!7408)))))

(assert (=> b!7072255 (= lt!2546169 (set.insert lt!2546157 (as set.empty (Set Context!13284))))))

(declare-fun b!7072256 () Bool)

(declare-fun res!2888386 () Bool)

(assert (=> b!7072256 (=> res!2888386 e!4251840)))

(assert (=> b!7072256 (= res!2888386 (not (set.member lt!2546191 lt!2546152)))))

(declare-fun b!7072257 () Bool)

(assert (=> b!7072257 (= e!4251838 e!4251841)))

(declare-fun res!2888402 () Bool)

(assert (=> b!7072257 (=> res!2888402 e!4251841)))

(assert (=> b!7072257 (= res!2888402 (not lt!2546155))))

(declare-fun lt!2546175 () Unit!162002)

(assert (=> b!7072257 (= lt!2546175 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lt!2546185 () Unit!162002)

(assert (=> b!7072257 (= lt!2546185 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun b!7072258 () Bool)

(declare-fun tp!1942339 () Bool)

(assert (=> b!7072258 (= e!4251843 tp!1942339)))

(declare-fun b!7072259 () Bool)

(declare-fun tp!1942337 () Bool)

(assert (=> b!7072259 (= e!4251831 tp!1942337)))

(declare-fun b!7072260 () Bool)

(assert (=> b!7072260 (= e!4251827 e!4251832)))

(declare-fun res!2888390 () Bool)

(assert (=> b!7072260 (=> res!2888390 e!4251832)))

(assert (=> b!7072260 (= res!2888390 (not (= lt!2546189 lt!2546197)))))

(assert (=> b!7072260 (= lt!2546197 (set.union lt!2546164 lt!2546156))))

(declare-fun lt!2546198 () Context!13284)

(assert (=> b!7072260 (= lt!2546156 (derivationStepZipperUp!2230 lt!2546198 (h!74788 s!7408)))))

(assert (=> b!7072260 (= lt!2546164 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) lt!2546198 (h!74788 s!7408)))))

(assert (=> b!7072260 (= lt!2546198 (Context!13285 (++!15776 lt!2546192 (exprs!7142 ct2!306))))))

(declare-fun lt!2546181 () Unit!162002)

(assert (=> b!7072260 (= lt!2546181 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(declare-fun lt!2546154 () Unit!162002)

(assert (=> b!7072260 (= lt!2546154 (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(assert (= (and start!687046 res!2888380) b!7072236))

(assert (= (and b!7072236 res!2888384) b!7072234))

(assert (= (and b!7072234 (not res!2888385)) b!7072256))

(assert (= (and b!7072256 (not res!2888386)) b!7072249))

(assert (= (and b!7072249 (not res!2888400)) b!7072254))

(assert (= (and b!7072254 (not res!2888381)) b!7072233))

(assert (= (and b!7072233 (not res!2888383)) b!7072235))

(assert (= (and b!7072235 (not res!2888396)) b!7072246))

(assert (= (and b!7072246 (not res!2888382)) b!7072248))

(assert (= (and b!7072248 (not res!2888392)) b!7072260))

(assert (= (and b!7072260 (not res!2888390)) b!7072245))

(assert (= (and b!7072245 (not res!2888398)) b!7072238))

(assert (= (and b!7072245 res!2888403) b!7072244))

(assert (= (and b!7072245 (not res!2888399)) b!7072241))

(assert (= (and b!7072241 (not res!2888397)) b!7072243))

(assert (= (and b!7072243 (not res!2888388)) b!7072257))

(assert (= (and b!7072257 (not res!2888402)) b!7072250))

(assert (= (and b!7072250 (not res!2888389)) b!7072239))

(assert (= (and b!7072239 (not res!2888401)) b!7072237))

(assert (= (and b!7072237 (not res!2888387)) b!7072255))

(assert (= (and b!7072255 (not res!2888395)) b!7072253))

(assert (= (and b!7072253 (not res!2888394)) b!7072240))

(assert (= (and b!7072240 res!2888393) b!7072252))

(assert (= (and b!7072240 (not res!2888404)) b!7072247))

(assert (= (and b!7072247 (not res!2888391)) b!7072242))

(assert (= (and start!687046 condSetEmpty!50264) setIsEmpty!50264))

(assert (= (and start!687046 (not condSetEmpty!50264)) setNonEmpty!50264))

(assert (= setNonEmpty!50264 b!7072258))

(assert (= start!687046 b!7072259))

(assert (= (and start!687046 (is-Cons!68340 s!7408)) b!7072251))

(declare-fun m!7798294 () Bool)

(assert (=> b!7072245 m!7798294))

(declare-fun m!7798296 () Bool)

(assert (=> b!7072245 m!7798296))

(declare-fun m!7798298 () Bool)

(assert (=> b!7072245 m!7798298))

(assert (=> b!7072245 m!7798298))

(declare-fun m!7798300 () Bool)

(assert (=> b!7072245 m!7798300))

(assert (=> b!7072245 m!7798298))

(declare-fun m!7798302 () Bool)

(assert (=> b!7072245 m!7798302))

(declare-fun m!7798304 () Bool)

(assert (=> b!7072255 m!7798304))

(declare-fun m!7798306 () Bool)

(assert (=> b!7072255 m!7798306))

(declare-fun m!7798308 () Bool)

(assert (=> b!7072255 m!7798308))

(declare-fun m!7798310 () Bool)

(assert (=> b!7072255 m!7798310))

(declare-fun m!7798312 () Bool)

(assert (=> b!7072255 m!7798312))

(declare-fun m!7798314 () Bool)

(assert (=> b!7072252 m!7798314))

(declare-fun m!7798316 () Bool)

(assert (=> b!7072240 m!7798316))

(declare-fun m!7798318 () Bool)

(assert (=> b!7072240 m!7798318))

(declare-fun m!7798320 () Bool)

(assert (=> b!7072240 m!7798320))

(declare-fun m!7798322 () Bool)

(assert (=> b!7072234 m!7798322))

(declare-fun m!7798324 () Bool)

(assert (=> b!7072234 m!7798324))

(declare-fun m!7798326 () Bool)

(assert (=> b!7072234 m!7798326))

(declare-fun m!7798328 () Bool)

(assert (=> b!7072234 m!7798328))

(declare-fun m!7798330 () Bool)

(assert (=> b!7072234 m!7798330))

(declare-fun m!7798332 () Bool)

(assert (=> b!7072234 m!7798332))

(assert (=> b!7072250 m!7798298))

(declare-fun m!7798334 () Bool)

(assert (=> b!7072250 m!7798334))

(declare-fun m!7798336 () Bool)

(assert (=> b!7072250 m!7798336))

(assert (=> b!7072250 m!7798298))

(declare-fun m!7798338 () Bool)

(assert (=> b!7072250 m!7798338))

(declare-fun m!7798340 () Bool)

(assert (=> b!7072250 m!7798340))

(declare-fun m!7798342 () Bool)

(assert (=> b!7072250 m!7798342))

(declare-fun m!7798344 () Bool)

(assert (=> b!7072250 m!7798344))

(declare-fun m!7798346 () Bool)

(assert (=> b!7072250 m!7798346))

(declare-fun m!7798348 () Bool)

(assert (=> b!7072250 m!7798348))

(declare-fun m!7798350 () Bool)

(assert (=> b!7072250 m!7798350))

(declare-fun m!7798352 () Bool)

(assert (=> b!7072242 m!7798352))

(declare-fun m!7798354 () Bool)

(assert (=> b!7072242 m!7798354))

(declare-fun m!7798356 () Bool)

(assert (=> b!7072242 m!7798356))

(declare-fun m!7798358 () Bool)

(assert (=> b!7072242 m!7798358))

(declare-fun m!7798360 () Bool)

(assert (=> b!7072242 m!7798360))

(declare-fun m!7798362 () Bool)

(assert (=> b!7072242 m!7798362))

(declare-fun m!7798364 () Bool)

(assert (=> b!7072242 m!7798364))

(declare-fun m!7798366 () Bool)

(assert (=> b!7072242 m!7798366))

(assert (=> b!7072242 m!7798358))

(declare-fun m!7798368 () Bool)

(assert (=> b!7072242 m!7798368))

(assert (=> b!7072242 m!7798360))

(declare-fun m!7798370 () Bool)

(assert (=> b!7072242 m!7798370))

(declare-fun m!7798372 () Bool)

(assert (=> b!7072256 m!7798372))

(declare-fun m!7798374 () Bool)

(assert (=> b!7072260 m!7798374))

(assert (=> b!7072260 m!7798298))

(declare-fun m!7798376 () Bool)

(assert (=> b!7072260 m!7798376))

(assert (=> b!7072260 m!7798298))

(declare-fun m!7798378 () Bool)

(assert (=> b!7072260 m!7798378))

(declare-fun m!7798380 () Bool)

(assert (=> b!7072238 m!7798380))

(declare-fun m!7798382 () Bool)

(assert (=> start!687046 m!7798382))

(declare-fun m!7798384 () Bool)

(assert (=> start!687046 m!7798384))

(declare-fun m!7798386 () Bool)

(assert (=> start!687046 m!7798386))

(assert (=> b!7072243 m!7798380))

(assert (=> b!7072243 m!7798298))

(declare-fun m!7798388 () Bool)

(assert (=> b!7072248 m!7798388))

(declare-fun m!7798390 () Bool)

(assert (=> b!7072248 m!7798390))

(assert (=> b!7072257 m!7798298))

(assert (=> b!7072257 m!7798298))

(declare-fun m!7798392 () Bool)

(assert (=> b!7072249 m!7798392))

(declare-fun m!7798394 () Bool)

(assert (=> b!7072249 m!7798394))

(declare-fun m!7798396 () Bool)

(assert (=> b!7072249 m!7798396))

(declare-fun m!7798398 () Bool)

(assert (=> b!7072249 m!7798398))

(assert (=> b!7072233 m!7798396))

(declare-fun m!7798400 () Bool)

(assert (=> b!7072233 m!7798400))

(declare-fun m!7798402 () Bool)

(assert (=> b!7072233 m!7798402))

(declare-fun m!7798404 () Bool)

(assert (=> b!7072233 m!7798404))

(declare-fun m!7798406 () Bool)

(assert (=> b!7072233 m!7798406))

(declare-fun m!7798408 () Bool)

(assert (=> setNonEmpty!50264 m!7798408))

(declare-fun m!7798410 () Bool)

(assert (=> b!7072237 m!7798410))

(declare-fun m!7798412 () Bool)

(assert (=> b!7072253 m!7798412))

(assert (=> b!7072244 m!7798380))

(assert (=> b!7072244 m!7798298))

(declare-fun m!7798414 () Bool)

(assert (=> b!7072254 m!7798414))

(assert (=> b!7072254 m!7798396))

(declare-fun m!7798416 () Bool)

(assert (=> b!7072239 m!7798416))

(declare-fun m!7798418 () Bool)

(assert (=> b!7072246 m!7798418))

(push 1)

(assert (not b!7072238))

(assert (not b!7072255))

(assert (not b!7072245))

(assert (not b!7072237))

(assert (not b!7072246))

(assert (not b!7072242))

(assert (not b!7072248))

(assert (not b!7072258))

(assert (not b!7072244))

(assert (not b!7072234))

(assert (not b!7072233))

(assert (not b!7072253))

(assert (not b!7072259))

(assert (not start!687046))

(assert (not b!7072254))

(assert tp_is_empty!44517)

(assert (not b!7072239))

(assert (not b!7072249))

(assert (not b!7072243))

(assert (not b!7072240))

(assert (not b!7072252))

(assert (not b!7072251))

(assert (not setNonEmpty!50264))

(assert (not b!7072257))

(assert (not b!7072260))

(assert (not b!7072250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2211641 () Bool)

(declare-fun c!1319249 () Bool)

(declare-fun isEmpty!39887 (List!68464) Bool)

(assert (=> d!2211641 (= c!1319249 (isEmpty!39887 (t!382247 s!7408)))))

(declare-fun e!4251908 () Bool)

(assert (=> d!2211641 (= (matchZipper!3186 lt!2546197 (t!382247 s!7408)) e!4251908)))

(declare-fun b!7072361 () Bool)

(declare-fun nullableZipper!2700 ((Set Context!13284)) Bool)

(assert (=> b!7072361 (= e!4251908 (nullableZipper!2700 lt!2546197))))

(declare-fun b!7072362 () Bool)

(declare-fun head!14408 (List!68464) C!35562)

(declare-fun tail!13832 (List!68464) List!68464)

(assert (=> b!7072362 (= e!4251908 (matchZipper!3186 (derivationStepZipper!3096 lt!2546197 (head!14408 (t!382247 s!7408))) (tail!13832 (t!382247 s!7408))))))

(assert (= (and d!2211641 c!1319249) b!7072361))

(assert (= (and d!2211641 (not c!1319249)) b!7072362))

(declare-fun m!7798546 () Bool)

(assert (=> d!2211641 m!7798546))

(declare-fun m!7798548 () Bool)

(assert (=> b!7072361 m!7798548))

(declare-fun m!7798550 () Bool)

(assert (=> b!7072362 m!7798550))

(assert (=> b!7072362 m!7798550))

(declare-fun m!7798552 () Bool)

(assert (=> b!7072362 m!7798552))

(declare-fun m!7798554 () Bool)

(assert (=> b!7072362 m!7798554))

(assert (=> b!7072362 m!7798552))

(assert (=> b!7072362 m!7798554))

(declare-fun m!7798556 () Bool)

(assert (=> b!7072362 m!7798556))

(assert (=> b!7072245 d!2211641))

(declare-fun d!2211643 () Bool)

(declare-fun c!1319250 () Bool)

(assert (=> d!2211643 (= c!1319250 (isEmpty!39887 (t!382247 s!7408)))))

(declare-fun e!4251909 () Bool)

(assert (=> d!2211643 (= (matchZipper!3186 lt!2546164 (t!382247 s!7408)) e!4251909)))

(declare-fun b!7072363 () Bool)

(assert (=> b!7072363 (= e!4251909 (nullableZipper!2700 lt!2546164))))

(declare-fun b!7072364 () Bool)

(assert (=> b!7072364 (= e!4251909 (matchZipper!3186 (derivationStepZipper!3096 lt!2546164 (head!14408 (t!382247 s!7408))) (tail!13832 (t!382247 s!7408))))))

(assert (= (and d!2211643 c!1319250) b!7072363))

(assert (= (and d!2211643 (not c!1319250)) b!7072364))

(assert (=> d!2211643 m!7798546))

(declare-fun m!7798558 () Bool)

(assert (=> b!7072363 m!7798558))

(assert (=> b!7072364 m!7798550))

(assert (=> b!7072364 m!7798550))

(declare-fun m!7798560 () Bool)

(assert (=> b!7072364 m!7798560))

(assert (=> b!7072364 m!7798554))

(assert (=> b!7072364 m!7798560))

(assert (=> b!7072364 m!7798554))

(declare-fun m!7798562 () Bool)

(assert (=> b!7072364 m!7798562))

(assert (=> b!7072245 d!2211643))

(declare-fun d!2211645 () Bool)

(declare-fun c!1319251 () Bool)

(assert (=> d!2211645 (= c!1319251 (isEmpty!39887 (t!382247 s!7408)))))

(declare-fun e!4251910 () Bool)

(assert (=> d!2211645 (= (matchZipper!3186 lt!2546189 (t!382247 s!7408)) e!4251910)))

(declare-fun b!7072365 () Bool)

(assert (=> b!7072365 (= e!4251910 (nullableZipper!2700 lt!2546189))))

(declare-fun b!7072366 () Bool)

(assert (=> b!7072366 (= e!4251910 (matchZipper!3186 (derivationStepZipper!3096 lt!2546189 (head!14408 (t!382247 s!7408))) (tail!13832 (t!382247 s!7408))))))

(assert (= (and d!2211645 c!1319251) b!7072365))

(assert (= (and d!2211645 (not c!1319251)) b!7072366))

(assert (=> d!2211645 m!7798546))

(declare-fun m!7798564 () Bool)

(assert (=> b!7072365 m!7798564))

(assert (=> b!7072366 m!7798550))

(assert (=> b!7072366 m!7798550))

(declare-fun m!7798566 () Bool)

(assert (=> b!7072366 m!7798566))

(assert (=> b!7072366 m!7798554))

(assert (=> b!7072366 m!7798566))

(assert (=> b!7072366 m!7798554))

(declare-fun m!7798568 () Bool)

(assert (=> b!7072366 m!7798568))

(assert (=> b!7072245 d!2211645))

(declare-fun d!2211647 () Bool)

(declare-fun e!4251913 () Bool)

(assert (=> d!2211647 (= (matchZipper!3186 (set.union lt!2546164 lt!2546156) (t!382247 s!7408)) e!4251913)))

(declare-fun res!2888483 () Bool)

(assert (=> d!2211647 (=> res!2888483 e!4251913)))

(assert (=> d!2211647 (= res!2888483 (matchZipper!3186 lt!2546164 (t!382247 s!7408)))))

(declare-fun lt!2546364 () Unit!162002)

(declare-fun choose!54219 ((Set Context!13284) (Set Context!13284) List!68464) Unit!162002)

(assert (=> d!2211647 (= lt!2546364 (choose!54219 lt!2546164 lt!2546156 (t!382247 s!7408)))))

(assert (=> d!2211647 (= (lemmaZipperConcatMatchesSameAsBothZippers!1659 lt!2546164 lt!2546156 (t!382247 s!7408)) lt!2546364)))

(declare-fun b!7072369 () Bool)

(assert (=> b!7072369 (= e!4251913 (matchZipper!3186 lt!2546156 (t!382247 s!7408)))))

(assert (= (and d!2211647 (not res!2888483)) b!7072369))

(declare-fun m!7798570 () Bool)

(assert (=> d!2211647 m!7798570))

(assert (=> d!2211647 m!7798294))

(declare-fun m!7798572 () Bool)

(assert (=> d!2211647 m!7798572))

(assert (=> b!7072369 m!7798380))

(assert (=> b!7072245 d!2211647))

(declare-fun d!2211649 () Bool)

(declare-fun forall!16599 (List!68465 Int) Bool)

(assert (=> d!2211649 (forall!16599 (++!15776 lt!2546192 (exprs!7142 ct2!306)) lambda!425670)))

(declare-fun lt!2546367 () Unit!162002)

(declare-fun choose!54220 (List!68465 List!68465 Int) Unit!162002)

(assert (=> d!2211649 (= lt!2546367 (choose!54220 lt!2546192 (exprs!7142 ct2!306) lambda!425670))))

(assert (=> d!2211649 (forall!16599 lt!2546192 lambda!425670)))

(assert (=> d!2211649 (= (lemmaConcatPreservesForall!957 lt!2546192 (exprs!7142 ct2!306) lambda!425670) lt!2546367)))

(declare-fun bs!1880726 () Bool)

(assert (= bs!1880726 d!2211649))

(assert (=> bs!1880726 m!7798376))

(assert (=> bs!1880726 m!7798376))

(declare-fun m!7798574 () Bool)

(assert (=> bs!1880726 m!7798574))

(declare-fun m!7798576 () Bool)

(assert (=> bs!1880726 m!7798576))

(declare-fun m!7798578 () Bool)

(assert (=> bs!1880726 m!7798578))

(assert (=> b!7072245 d!2211649))

(declare-fun d!2211651 () Bool)

(assert (=> d!2211651 (= (isEmpty!39885 (exprs!7142 lt!2546157)) (is-Nil!68341 (exprs!7142 lt!2546157)))))

(assert (=> b!7072246 d!2211651))

(declare-fun b!7072378 () Bool)

(declare-fun e!4251919 () List!68464)

(assert (=> b!7072378 (= e!4251919 (_2!37436 lt!2546165))))

(declare-fun b!7072379 () Bool)

(assert (=> b!7072379 (= e!4251919 (Cons!68340 (h!74788 (_1!37436 lt!2546165)) (++!15775 (t!382247 (_1!37436 lt!2546165)) (_2!37436 lt!2546165))))))

(declare-fun b!7072380 () Bool)

(declare-fun res!2888489 () Bool)

(declare-fun e!4251918 () Bool)

(assert (=> b!7072380 (=> (not res!2888489) (not e!4251918))))

(declare-fun lt!2546370 () List!68464)

(declare-fun size!41215 (List!68464) Int)

(assert (=> b!7072380 (= res!2888489 (= (size!41215 lt!2546370) (+ (size!41215 (_1!37436 lt!2546165)) (size!41215 (_2!37436 lt!2546165)))))))

(declare-fun b!7072381 () Bool)

(assert (=> b!7072381 (= e!4251918 (or (not (= (_2!37436 lt!2546165) Nil!68340)) (= lt!2546370 (_1!37436 lt!2546165))))))

(declare-fun d!2211653 () Bool)

(assert (=> d!2211653 e!4251918))

(declare-fun res!2888488 () Bool)

(assert (=> d!2211653 (=> (not res!2888488) (not e!4251918))))

(declare-fun content!13795 (List!68464) (Set C!35562))

(assert (=> d!2211653 (= res!2888488 (= (content!13795 lt!2546370) (set.union (content!13795 (_1!37436 lt!2546165)) (content!13795 (_2!37436 lt!2546165)))))))

(assert (=> d!2211653 (= lt!2546370 e!4251919)))

(declare-fun c!1319254 () Bool)

(assert (=> d!2211653 (= c!1319254 (is-Nil!68340 (_1!37436 lt!2546165)))))

(assert (=> d!2211653 (= (++!15775 (_1!37436 lt!2546165) (_2!37436 lt!2546165)) lt!2546370)))

(assert (= (and d!2211653 c!1319254) b!7072378))

(assert (= (and d!2211653 (not c!1319254)) b!7072379))

(assert (= (and d!2211653 res!2888488) b!7072380))

(assert (= (and b!7072380 res!2888489) b!7072381))

(declare-fun m!7798580 () Bool)

(assert (=> b!7072379 m!7798580))

(declare-fun m!7798582 () Bool)

(assert (=> b!7072380 m!7798582))

(declare-fun m!7798584 () Bool)

(assert (=> b!7072380 m!7798584))

(declare-fun m!7798586 () Bool)

(assert (=> b!7072380 m!7798586))

(declare-fun m!7798588 () Bool)

(assert (=> d!2211653 m!7798588))

(declare-fun m!7798590 () Bool)

(assert (=> d!2211653 m!7798590))

(declare-fun m!7798592 () Bool)

(assert (=> d!2211653 m!7798592))

(assert (=> b!7072237 d!2211653))

(declare-fun d!2211655 () Bool)

(declare-fun c!1319255 () Bool)

(assert (=> d!2211655 (= c!1319255 (isEmpty!39887 (t!382247 s!7408)))))

(declare-fun e!4251920 () Bool)

(assert (=> d!2211655 (= (matchZipper!3186 lt!2546156 (t!382247 s!7408)) e!4251920)))

(declare-fun b!7072382 () Bool)

(assert (=> b!7072382 (= e!4251920 (nullableZipper!2700 lt!2546156))))

(declare-fun b!7072383 () Bool)

(assert (=> b!7072383 (= e!4251920 (matchZipper!3186 (derivationStepZipper!3096 lt!2546156 (head!14408 (t!382247 s!7408))) (tail!13832 (t!382247 s!7408))))))

(assert (= (and d!2211655 c!1319255) b!7072382))

(assert (= (and d!2211655 (not c!1319255)) b!7072383))

(assert (=> d!2211655 m!7798546))

(declare-fun m!7798594 () Bool)

(assert (=> b!7072382 m!7798594))

(assert (=> b!7072383 m!7798550))

(assert (=> b!7072383 m!7798550))

(declare-fun m!7798596 () Bool)

(assert (=> b!7072383 m!7798596))

(assert (=> b!7072383 m!7798554))

(assert (=> b!7072383 m!7798596))

(assert (=> b!7072383 m!7798554))

(declare-fun m!7798598 () Bool)

(assert (=> b!7072383 m!7798598))

(assert (=> b!7072244 d!2211655))

(assert (=> b!7072244 d!2211649))

(declare-fun d!2211657 () Bool)

(declare-fun choose!54221 ((Set Context!13284) Int) (Set Context!13284))

(assert (=> d!2211657 (= (flatMap!2572 lt!2546169 lambda!425671) (choose!54221 lt!2546169 lambda!425671))))

(declare-fun bs!1880727 () Bool)

(assert (= bs!1880727 d!2211657))

(declare-fun m!7798600 () Bool)

(assert (=> bs!1880727 m!7798600))

(assert (=> b!7072255 d!2211657))

(declare-fun b!7072394 () Bool)

(declare-fun e!4251928 () Bool)

(assert (=> b!7072394 (= e!4251928 (nullable!7329 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun b!7072395 () Bool)

(declare-fun e!4251927 () (Set Context!13284))

(declare-fun call!642765 () (Set Context!13284))

(assert (=> b!7072395 (= e!4251927 (set.union call!642765 (derivationStepZipperUp!2230 (Context!13285 (t!382248 (exprs!7142 lt!2546157))) (h!74788 s!7408))))))

(declare-fun b!7072396 () Bool)

(declare-fun e!4251929 () (Set Context!13284))

(assert (=> b!7072396 (= e!4251927 e!4251929)))

(declare-fun c!1319261 () Bool)

(assert (=> b!7072396 (= c!1319261 (is-Cons!68341 (exprs!7142 lt!2546157)))))

(declare-fun d!2211659 () Bool)

(declare-fun c!1319260 () Bool)

(assert (=> d!2211659 (= c!1319260 e!4251928)))

(declare-fun res!2888492 () Bool)

(assert (=> d!2211659 (=> (not res!2888492) (not e!4251928))))

(assert (=> d!2211659 (= res!2888492 (is-Cons!68341 (exprs!7142 lt!2546157)))))

(assert (=> d!2211659 (= (derivationStepZipperUp!2230 lt!2546157 (h!74788 s!7408)) e!4251927)))

(declare-fun b!7072397 () Bool)

(assert (=> b!7072397 (= e!4251929 (as set.empty (Set Context!13284)))))

(declare-fun b!7072398 () Bool)

(assert (=> b!7072398 (= e!4251929 call!642765)))

(declare-fun bm!642760 () Bool)

(assert (=> bm!642760 (= call!642765 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) (Context!13285 (t!382248 (exprs!7142 lt!2546157))) (h!74788 s!7408)))))

(assert (= (and d!2211659 res!2888492) b!7072394))

(assert (= (and d!2211659 c!1319260) b!7072395))

(assert (= (and d!2211659 (not c!1319260)) b!7072396))

(assert (= (and b!7072396 c!1319261) b!7072398))

(assert (= (and b!7072396 (not c!1319261)) b!7072397))

(assert (= (or b!7072395 b!7072398) bm!642760))

(assert (=> b!7072394 m!7798388))

(declare-fun m!7798602 () Bool)

(assert (=> b!7072395 m!7798602))

(declare-fun m!7798604 () Bool)

(assert (=> bm!642760 m!7798604))

(assert (=> b!7072255 d!2211659))

(declare-fun d!2211661 () Bool)

(declare-fun dynLambda!27803 (Int Context!13284) (Set Context!13284))

(assert (=> d!2211661 (= (flatMap!2572 lt!2546169 lambda!425671) (dynLambda!27803 lambda!425671 lt!2546157))))

(declare-fun lt!2546373 () Unit!162002)

(declare-fun choose!54222 ((Set Context!13284) Context!13284 Int) Unit!162002)

(assert (=> d!2211661 (= lt!2546373 (choose!54222 lt!2546169 lt!2546157 lambda!425671))))

(assert (=> d!2211661 (= lt!2546169 (set.insert lt!2546157 (as set.empty (Set Context!13284))))))

(assert (=> d!2211661 (= (lemmaFlatMapOnSingletonSet!2081 lt!2546169 lt!2546157 lambda!425671) lt!2546373)))

(declare-fun b_lambda!270007 () Bool)

(assert (=> (not b_lambda!270007) (not d!2211661)))

(declare-fun bs!1880728 () Bool)

(assert (= bs!1880728 d!2211661))

(assert (=> bs!1880728 m!7798308))

(declare-fun m!7798606 () Bool)

(assert (=> bs!1880728 m!7798606))

(declare-fun m!7798608 () Bool)

(assert (=> bs!1880728 m!7798608))

(assert (=> bs!1880728 m!7798312))

(assert (=> b!7072255 d!2211661))

(declare-fun bs!1880729 () Bool)

(declare-fun d!2211663 () Bool)

(assert (= bs!1880729 (and d!2211663 b!7072233)))

(declare-fun lambda!425722 () Int)

(assert (=> bs!1880729 (= lambda!425722 lambda!425671)))

(assert (=> d!2211663 true))

(assert (=> d!2211663 (= (derivationStepZipper!3096 lt!2546169 (h!74788 s!7408)) (flatMap!2572 lt!2546169 lambda!425722))))

(declare-fun bs!1880730 () Bool)

(assert (= bs!1880730 d!2211663))

(declare-fun m!7798610 () Bool)

(assert (=> bs!1880730 m!7798610))

(assert (=> b!7072255 d!2211663))

(declare-fun d!2211665 () Bool)

(declare-fun c!1319264 () Bool)

(assert (=> d!2211665 (= c!1319264 (isEmpty!39887 s!7408))))

(declare-fun e!4251930 () Bool)

(assert (=> d!2211665 (= (matchZipper!3186 lt!2546188 s!7408) e!4251930)))

(declare-fun b!7072401 () Bool)

(assert (=> b!7072401 (= e!4251930 (nullableZipper!2700 lt!2546188))))

(declare-fun b!7072402 () Bool)

(assert (=> b!7072402 (= e!4251930 (matchZipper!3186 (derivationStepZipper!3096 lt!2546188 (head!14408 s!7408)) (tail!13832 s!7408)))))

(assert (= (and d!2211665 c!1319264) b!7072401))

(assert (= (and d!2211665 (not c!1319264)) b!7072402))

(declare-fun m!7798612 () Bool)

(assert (=> d!2211665 m!7798612))

(declare-fun m!7798614 () Bool)

(assert (=> b!7072401 m!7798614))

(declare-fun m!7798616 () Bool)

(assert (=> b!7072402 m!7798616))

(assert (=> b!7072402 m!7798616))

(declare-fun m!7798618 () Bool)

(assert (=> b!7072402 m!7798618))

(declare-fun m!7798620 () Bool)

(assert (=> b!7072402 m!7798620))

(assert (=> b!7072402 m!7798618))

(assert (=> b!7072402 m!7798620))

(declare-fun m!7798622 () Bool)

(assert (=> b!7072402 m!7798622))

(assert (=> b!7072234 d!2211665))

(declare-fun bs!1880731 () Bool)

(declare-fun d!2211667 () Bool)

(assert (= bs!1880731 (and d!2211667 b!7072234)))

(declare-fun lambda!425725 () Int)

(assert (=> bs!1880731 (not (= lambda!425725 lambda!425668))))

(declare-fun bs!1880732 () Bool)

(assert (= bs!1880732 (and d!2211667 b!7072242)))

(assert (=> bs!1880732 (not (= lambda!425725 lambda!425672))))

(assert (=> d!2211667 true))

(declare-fun order!28409 () Int)

(declare-fun dynLambda!27804 (Int Int) Int)

(assert (=> d!2211667 (< (dynLambda!27804 order!28409 lambda!425668) (dynLambda!27804 order!28409 lambda!425725))))

(declare-fun forall!16600 (List!68466 Int) Bool)

(assert (=> d!2211667 (= (exists!3692 lt!2546195 lambda!425668) (not (forall!16600 lt!2546195 lambda!425725)))))

(declare-fun bs!1880733 () Bool)

(assert (= bs!1880733 d!2211667))

(declare-fun m!7798624 () Bool)

(assert (=> bs!1880733 m!7798624))

(assert (=> b!7072234 d!2211667))

(declare-fun d!2211669 () Bool)

(declare-fun e!4251933 () Bool)

(assert (=> d!2211669 e!4251933))

(declare-fun res!2888495 () Bool)

(assert (=> d!2211669 (=> (not res!2888495) (not e!4251933))))

(declare-fun lt!2546376 () List!68466)

(declare-fun noDuplicate!2729 (List!68466) Bool)

(assert (=> d!2211669 (= res!2888495 (noDuplicate!2729 lt!2546376))))

(declare-fun choose!54223 ((Set Context!13284)) List!68466)

(assert (=> d!2211669 (= lt!2546376 (choose!54223 lt!2546152))))

(assert (=> d!2211669 (= (toList!10987 lt!2546152) lt!2546376)))

(declare-fun b!7072407 () Bool)

(assert (=> b!7072407 (= e!4251933 (= (content!13793 lt!2546376) lt!2546152))))

(assert (= (and d!2211669 res!2888495) b!7072407))

(declare-fun m!7798626 () Bool)

(assert (=> d!2211669 m!7798626))

(declare-fun m!7798628 () Bool)

(assert (=> d!2211669 m!7798628))

(declare-fun m!7798630 () Bool)

(assert (=> b!7072407 m!7798630))

(assert (=> b!7072234 d!2211669))

(declare-fun d!2211671 () Bool)

(declare-fun e!4251936 () Bool)

(assert (=> d!2211671 e!4251936))

(declare-fun res!2888498 () Bool)

(assert (=> d!2211671 (=> (not res!2888498) (not e!4251936))))

(declare-fun lt!2546379 () Context!13284)

(declare-fun dynLambda!27805 (Int Context!13284) Bool)

(assert (=> d!2211671 (= res!2888498 (dynLambda!27805 lambda!425668 lt!2546379))))

(declare-fun getWitness!1751 (List!68466 Int) Context!13284)

(assert (=> d!2211671 (= lt!2546379 (getWitness!1751 (toList!10987 lt!2546152) lambda!425668))))

(assert (=> d!2211671 (exists!3693 lt!2546152 lambda!425668)))

(assert (=> d!2211671 (= (getWitness!1749 lt!2546152 lambda!425668) lt!2546379)))

(declare-fun b!7072410 () Bool)

(assert (=> b!7072410 (= e!4251936 (set.member lt!2546379 lt!2546152))))

(assert (= (and d!2211671 res!2888498) b!7072410))

(declare-fun b_lambda!270009 () Bool)

(assert (=> (not b_lambda!270009) (not d!2211671)))

(declare-fun m!7798632 () Bool)

(assert (=> d!2211671 m!7798632))

(assert (=> d!2211671 m!7798328))

(assert (=> d!2211671 m!7798328))

(declare-fun m!7798634 () Bool)

(assert (=> d!2211671 m!7798634))

(declare-fun m!7798636 () Bool)

(assert (=> d!2211671 m!7798636))

(declare-fun m!7798638 () Bool)

(assert (=> b!7072410 m!7798638))

(assert (=> b!7072234 d!2211671))

(declare-fun bs!1880734 () Bool)

(declare-fun d!2211673 () Bool)

(assert (= bs!1880734 (and d!2211673 b!7072234)))

(declare-fun lambda!425728 () Int)

(assert (=> bs!1880734 (= lambda!425728 lambda!425668)))

(declare-fun bs!1880735 () Bool)

(assert (= bs!1880735 (and d!2211673 b!7072242)))

(assert (=> bs!1880735 (= (= s!7408 lt!2546202) (= lambda!425728 lambda!425672))))

(declare-fun bs!1880736 () Bool)

(assert (= bs!1880736 (and d!2211673 d!2211667)))

(assert (=> bs!1880736 (not (= lambda!425728 lambda!425725))))

(assert (=> d!2211673 true))

(assert (=> d!2211673 (exists!3692 lt!2546195 lambda!425728)))

(declare-fun lt!2546382 () Unit!162002)

(declare-fun choose!54224 (List!68466 List!68464) Unit!162002)

(assert (=> d!2211673 (= lt!2546382 (choose!54224 lt!2546195 s!7408))))

(assert (=> d!2211673 (matchZipper!3186 (content!13793 lt!2546195) s!7408)))

(assert (=> d!2211673 (= (lemmaZipperMatchesExistsMatchingContext!567 lt!2546195 s!7408) lt!2546382)))

(declare-fun bs!1880737 () Bool)

(assert (= bs!1880737 d!2211673))

(declare-fun m!7798640 () Bool)

(assert (=> bs!1880737 m!7798640))

(declare-fun m!7798642 () Bool)

(assert (=> bs!1880737 m!7798642))

(declare-fun m!7798644 () Bool)

(assert (=> bs!1880737 m!7798644))

(assert (=> bs!1880737 m!7798644))

(declare-fun m!7798646 () Bool)

(assert (=> bs!1880737 m!7798646))

(assert (=> b!7072234 d!2211673))

(declare-fun b!7072411 () Bool)

(declare-fun e!4251938 () Bool)

(assert (=> b!7072411 (= e!4251938 (nullable!7329 (h!74789 (exprs!7142 lt!2546179))))))

(declare-fun b!7072412 () Bool)

(declare-fun e!4251937 () (Set Context!13284))

(declare-fun call!642766 () (Set Context!13284))

(assert (=> b!7072412 (= e!4251937 (set.union call!642766 (derivationStepZipperUp!2230 (Context!13285 (t!382248 (exprs!7142 lt!2546179))) (h!74788 s!7408))))))

(declare-fun b!7072413 () Bool)

(declare-fun e!4251939 () (Set Context!13284))

(assert (=> b!7072413 (= e!4251937 e!4251939)))

(declare-fun c!1319268 () Bool)

(assert (=> b!7072413 (= c!1319268 (is-Cons!68341 (exprs!7142 lt!2546179)))))

(declare-fun d!2211675 () Bool)

(declare-fun c!1319267 () Bool)

(assert (=> d!2211675 (= c!1319267 e!4251938)))

(declare-fun res!2888499 () Bool)

(assert (=> d!2211675 (=> (not res!2888499) (not e!4251938))))

(assert (=> d!2211675 (= res!2888499 (is-Cons!68341 (exprs!7142 lt!2546179)))))

(assert (=> d!2211675 (= (derivationStepZipperUp!2230 lt!2546179 (h!74788 s!7408)) e!4251937)))

(declare-fun b!7072414 () Bool)

(assert (=> b!7072414 (= e!4251939 (as set.empty (Set Context!13284)))))

(declare-fun b!7072415 () Bool)

(assert (=> b!7072415 (= e!4251939 call!642766)))

(declare-fun bm!642761 () Bool)

(assert (=> bm!642761 (= call!642766 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546179)) (Context!13285 (t!382248 (exprs!7142 lt!2546179))) (h!74788 s!7408)))))

(assert (= (and d!2211675 res!2888499) b!7072411))

(assert (= (and d!2211675 c!1319267) b!7072412))

(assert (= (and d!2211675 (not c!1319267)) b!7072413))

(assert (= (and b!7072413 c!1319268) b!7072415))

(assert (= (and b!7072413 (not c!1319268)) b!7072414))

(assert (= (or b!7072412 b!7072415) bm!642761))

(declare-fun m!7798648 () Bool)

(assert (=> b!7072411 m!7798648))

(declare-fun m!7798650 () Bool)

(assert (=> b!7072412 m!7798650))

(declare-fun m!7798652 () Bool)

(assert (=> bm!642761 m!7798652))

(assert (=> b!7072253 d!2211675))

(declare-fun d!2211677 () Bool)

(assert (=> d!2211677 (forall!16599 (++!15776 (exprs!7142 lt!2546157) (exprs!7142 ct2!306)) lambda!425670)))

(declare-fun lt!2546383 () Unit!162002)

(assert (=> d!2211677 (= lt!2546383 (choose!54220 (exprs!7142 lt!2546157) (exprs!7142 ct2!306) lambda!425670))))

(assert (=> d!2211677 (forall!16599 (exprs!7142 lt!2546157) lambda!425670)))

(assert (=> d!2211677 (= (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546157) (exprs!7142 ct2!306) lambda!425670) lt!2546383)))

(declare-fun bs!1880738 () Bool)

(assert (= bs!1880738 d!2211677))

(assert (=> bs!1880738 m!7798394))

(assert (=> bs!1880738 m!7798394))

(declare-fun m!7798654 () Bool)

(assert (=> bs!1880738 m!7798654))

(declare-fun m!7798656 () Bool)

(assert (=> bs!1880738 m!7798656))

(declare-fun m!7798658 () Bool)

(assert (=> bs!1880738 m!7798658))

(assert (=> b!7072254 d!2211677))

(assert (=> b!7072243 d!2211655))

(assert (=> b!7072243 d!2211649))

(declare-fun d!2211679 () Bool)

(declare-fun c!1319269 () Bool)

(assert (=> d!2211679 (= c!1319269 (isEmpty!39887 (_1!37436 lt!2546165)))))

(declare-fun e!4251940 () Bool)

(assert (=> d!2211679 (= (matchZipper!3186 lt!2546171 (_1!37436 lt!2546165)) e!4251940)))

(declare-fun b!7072416 () Bool)

(assert (=> b!7072416 (= e!4251940 (nullableZipper!2700 lt!2546171))))

(declare-fun b!7072417 () Bool)

(assert (=> b!7072417 (= e!4251940 (matchZipper!3186 (derivationStepZipper!3096 lt!2546171 (head!14408 (_1!37436 lt!2546165))) (tail!13832 (_1!37436 lt!2546165))))))

(assert (= (and d!2211679 c!1319269) b!7072416))

(assert (= (and d!2211679 (not c!1319269)) b!7072417))

(declare-fun m!7798660 () Bool)

(assert (=> d!2211679 m!7798660))

(declare-fun m!7798662 () Bool)

(assert (=> b!7072416 m!7798662))

(declare-fun m!7798664 () Bool)

(assert (=> b!7072417 m!7798664))

(assert (=> b!7072417 m!7798664))

(declare-fun m!7798666 () Bool)

(assert (=> b!7072417 m!7798666))

(declare-fun m!7798668 () Bool)

(assert (=> b!7072417 m!7798668))

(assert (=> b!7072417 m!7798666))

(assert (=> b!7072417 m!7798668))

(declare-fun m!7798670 () Bool)

(assert (=> b!7072417 m!7798670))

(assert (=> b!7072252 d!2211679))

(declare-fun d!2211681 () Bool)

(declare-fun isEmpty!39888 (Option!16965) Bool)

(assert (=> d!2211681 (= (isDefined!13666 (findConcatSeparationZippers!481 lt!2546169 lt!2546193 Nil!68340 s!7408 s!7408)) (not (isEmpty!39888 (findConcatSeparationZippers!481 lt!2546169 lt!2546193 Nil!68340 s!7408 s!7408))))))

(declare-fun bs!1880739 () Bool)

(assert (= bs!1880739 d!2211681))

(assert (=> bs!1880739 m!7798358))

(declare-fun m!7798672 () Bool)

(assert (=> bs!1880739 m!7798672))

(assert (=> b!7072242 d!2211681))

(declare-fun b!7072436 () Bool)

(declare-fun e!4251954 () Option!16965)

(assert (=> b!7072436 (= e!4251954 (Some!16964 (tuple2!68267 Nil!68340 s!7408)))))

(declare-fun b!7072437 () Bool)

(declare-fun lt!2546391 () Unit!162002)

(declare-fun lt!2546390 () Unit!162002)

(assert (=> b!7072437 (= lt!2546391 lt!2546390)))

(assert (=> b!7072437 (= (++!15775 (++!15775 Nil!68340 (Cons!68340 (h!74788 s!7408) Nil!68340)) (t!382247 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2975 (List!68464 C!35562 List!68464 List!68464) Unit!162002)

(assert (=> b!7072437 (= lt!2546390 (lemmaMoveElementToOtherListKeepsConcatEq!2975 Nil!68340 (h!74788 s!7408) (t!382247 s!7408) s!7408))))

(declare-fun e!4251953 () Option!16965)

(assert (=> b!7072437 (= e!4251953 (findConcatSeparationZippers!481 lt!2546169 lt!2546193 (++!15775 Nil!68340 (Cons!68340 (h!74788 s!7408) Nil!68340)) (t!382247 s!7408) s!7408))))

(declare-fun b!7072438 () Bool)

(declare-fun e!4251951 () Bool)

(declare-fun lt!2546392 () Option!16965)

(assert (=> b!7072438 (= e!4251951 (not (isDefined!13666 lt!2546392)))))

(declare-fun d!2211683 () Bool)

(assert (=> d!2211683 e!4251951))

(declare-fun res!2888513 () Bool)

(assert (=> d!2211683 (=> res!2888513 e!4251951)))

(declare-fun e!4251952 () Bool)

(assert (=> d!2211683 (= res!2888513 e!4251952)))

(declare-fun res!2888511 () Bool)

(assert (=> d!2211683 (=> (not res!2888511) (not e!4251952))))

(assert (=> d!2211683 (= res!2888511 (isDefined!13666 lt!2546392))))

(assert (=> d!2211683 (= lt!2546392 e!4251954)))

(declare-fun c!1319274 () Bool)

(declare-fun e!4251955 () Bool)

(assert (=> d!2211683 (= c!1319274 e!4251955)))

(declare-fun res!2888514 () Bool)

(assert (=> d!2211683 (=> (not res!2888514) (not e!4251955))))

(assert (=> d!2211683 (= res!2888514 (matchZipper!3186 lt!2546169 Nil!68340))))

(assert (=> d!2211683 (= (++!15775 Nil!68340 s!7408) s!7408)))

(assert (=> d!2211683 (= (findConcatSeparationZippers!481 lt!2546169 lt!2546193 Nil!68340 s!7408 s!7408) lt!2546392)))

(declare-fun b!7072439 () Bool)

(assert (=> b!7072439 (= e!4251955 (matchZipper!3186 lt!2546193 s!7408))))

(declare-fun b!7072440 () Bool)

(assert (=> b!7072440 (= e!4251953 None!16964)))

(declare-fun b!7072441 () Bool)

(declare-fun res!2888510 () Bool)

(assert (=> b!7072441 (=> (not res!2888510) (not e!4251952))))

(assert (=> b!7072441 (= res!2888510 (matchZipper!3186 lt!2546193 (_2!37436 (get!23939 lt!2546392))))))

(declare-fun b!7072442 () Bool)

(assert (=> b!7072442 (= e!4251952 (= (++!15775 (_1!37436 (get!23939 lt!2546392)) (_2!37436 (get!23939 lt!2546392))) s!7408))))

(declare-fun b!7072443 () Bool)

(declare-fun res!2888512 () Bool)

(assert (=> b!7072443 (=> (not res!2888512) (not e!4251952))))

(assert (=> b!7072443 (= res!2888512 (matchZipper!3186 lt!2546169 (_1!37436 (get!23939 lt!2546392))))))

(declare-fun b!7072444 () Bool)

(assert (=> b!7072444 (= e!4251954 e!4251953)))

(declare-fun c!1319275 () Bool)

(assert (=> b!7072444 (= c!1319275 (is-Nil!68340 s!7408))))

(assert (= (and d!2211683 res!2888514) b!7072439))

(assert (= (and d!2211683 c!1319274) b!7072436))

(assert (= (and d!2211683 (not c!1319274)) b!7072444))

(assert (= (and b!7072444 c!1319275) b!7072440))

(assert (= (and b!7072444 (not c!1319275)) b!7072437))

(assert (= (and d!2211683 res!2888511) b!7072443))

(assert (= (and b!7072443 res!2888512) b!7072441))

(assert (= (and b!7072441 res!2888510) b!7072442))

(assert (= (and d!2211683 (not res!2888513)) b!7072438))

(declare-fun m!7798674 () Bool)

(assert (=> d!2211683 m!7798674))

(declare-fun m!7798676 () Bool)

(assert (=> d!2211683 m!7798676))

(declare-fun m!7798678 () Bool)

(assert (=> d!2211683 m!7798678))

(declare-fun m!7798680 () Bool)

(assert (=> b!7072439 m!7798680))

(declare-fun m!7798682 () Bool)

(assert (=> b!7072437 m!7798682))

(assert (=> b!7072437 m!7798682))

(declare-fun m!7798684 () Bool)

(assert (=> b!7072437 m!7798684))

(declare-fun m!7798686 () Bool)

(assert (=> b!7072437 m!7798686))

(assert (=> b!7072437 m!7798682))

(declare-fun m!7798688 () Bool)

(assert (=> b!7072437 m!7798688))

(declare-fun m!7798690 () Bool)

(assert (=> b!7072442 m!7798690))

(declare-fun m!7798692 () Bool)

(assert (=> b!7072442 m!7798692))

(assert (=> b!7072441 m!7798690))

(declare-fun m!7798694 () Bool)

(assert (=> b!7072441 m!7798694))

(assert (=> b!7072443 m!7798690))

(declare-fun m!7798696 () Bool)

(assert (=> b!7072443 m!7798696))

(assert (=> b!7072438 m!7798674))

(assert (=> b!7072242 d!2211683))

(declare-fun bs!1880740 () Bool)

(declare-fun d!2211685 () Bool)

(assert (= bs!1880740 (and d!2211685 b!7072234)))

(declare-fun lambda!425731 () Int)

(assert (=> bs!1880740 (= (= lt!2546202 s!7408) (= lambda!425731 lambda!425668))))

(declare-fun bs!1880741 () Bool)

(assert (= bs!1880741 (and d!2211685 b!7072242)))

(assert (=> bs!1880741 (= lambda!425731 lambda!425672)))

(declare-fun bs!1880742 () Bool)

(assert (= bs!1880742 (and d!2211685 d!2211667)))

(assert (=> bs!1880742 (not (= lambda!425731 lambda!425725))))

(declare-fun bs!1880743 () Bool)

(assert (= bs!1880743 (and d!2211685 d!2211673)))

(assert (=> bs!1880743 (= (= lt!2546202 s!7408) (= lambda!425731 lambda!425728))))

(assert (=> d!2211685 true))

(assert (=> d!2211685 (matchZipper!3186 (content!13793 lt!2546176) lt!2546202)))

(declare-fun lt!2546395 () Unit!162002)

(declare-fun choose!54225 (List!68466 List!68464) Unit!162002)

(assert (=> d!2211685 (= lt!2546395 (choose!54225 lt!2546176 lt!2546202))))

(assert (=> d!2211685 (exists!3692 lt!2546176 lambda!425731)))

(assert (=> d!2211685 (= (lemmaExistsMatchingContextThenMatchingString!49 lt!2546176 lt!2546202) lt!2546395)))

(declare-fun bs!1880744 () Bool)

(assert (= bs!1880744 d!2211685))

(assert (=> bs!1880744 m!7798360))

(assert (=> bs!1880744 m!7798360))

(assert (=> bs!1880744 m!7798370))

(declare-fun m!7798698 () Bool)

(assert (=> bs!1880744 m!7798698))

(declare-fun m!7798700 () Bool)

(assert (=> bs!1880744 m!7798700))

(assert (=> b!7072242 d!2211685))

(declare-fun d!2211687 () Bool)

(declare-fun e!4251956 () Bool)

(assert (=> d!2211687 e!4251956))

(declare-fun res!2888515 () Bool)

(assert (=> d!2211687 (=> (not res!2888515) (not e!4251956))))

(declare-fun lt!2546396 () List!68466)

(assert (=> d!2211687 (= res!2888515 (noDuplicate!2729 lt!2546396))))

(assert (=> d!2211687 (= lt!2546396 (choose!54223 z1!570))))

(assert (=> d!2211687 (= (toList!10987 z1!570) lt!2546396)))

(declare-fun b!7072445 () Bool)

(assert (=> b!7072445 (= e!4251956 (= (content!13793 lt!2546396) z1!570))))

(assert (= (and d!2211687 res!2888515) b!7072445))

(declare-fun m!7798702 () Bool)

(assert (=> d!2211687 m!7798702))

(declare-fun m!7798704 () Bool)

(assert (=> d!2211687 m!7798704))

(declare-fun m!7798706 () Bool)

(assert (=> b!7072445 m!7798706))

(assert (=> b!7072242 d!2211687))

(declare-fun d!2211689 () Bool)

(declare-fun c!1319280 () Bool)

(assert (=> d!2211689 (= c!1319280 (is-Nil!68342 lt!2546176))))

(declare-fun e!4251959 () (Set Context!13284))

(assert (=> d!2211689 (= (content!13793 lt!2546176) e!4251959)))

(declare-fun b!7072450 () Bool)

(assert (=> b!7072450 (= e!4251959 (as set.empty (Set Context!13284)))))

(declare-fun b!7072451 () Bool)

(assert (=> b!7072451 (= e!4251959 (set.union (set.insert (h!74790 lt!2546176) (as set.empty (Set Context!13284))) (content!13793 (t!382249 lt!2546176))))))

(assert (= (and d!2211689 c!1319280) b!7072450))

(assert (= (and d!2211689 (not c!1319280)) b!7072451))

(declare-fun m!7798708 () Bool)

(assert (=> b!7072451 m!7798708))

(declare-fun m!7798710 () Bool)

(assert (=> b!7072451 m!7798710))

(assert (=> b!7072242 d!2211689))

(declare-fun d!2211691 () Bool)

(declare-fun c!1319281 () Bool)

(assert (=> d!2211691 (= c!1319281 (isEmpty!39887 lt!2546202))))

(declare-fun e!4251960 () Bool)

(assert (=> d!2211691 (= (matchZipper!3186 z1!570 lt!2546202) e!4251960)))

(declare-fun b!7072452 () Bool)

(assert (=> b!7072452 (= e!4251960 (nullableZipper!2700 z1!570))))

(declare-fun b!7072453 () Bool)

(assert (=> b!7072453 (= e!4251960 (matchZipper!3186 (derivationStepZipper!3096 z1!570 (head!14408 lt!2546202)) (tail!13832 lt!2546202)))))

(assert (= (and d!2211691 c!1319281) b!7072452))

(assert (= (and d!2211691 (not c!1319281)) b!7072453))

(declare-fun m!7798712 () Bool)

(assert (=> d!2211691 m!7798712))

(declare-fun m!7798714 () Bool)

(assert (=> b!7072452 m!7798714))

(declare-fun m!7798716 () Bool)

(assert (=> b!7072453 m!7798716))

(assert (=> b!7072453 m!7798716))

(declare-fun m!7798718 () Bool)

(assert (=> b!7072453 m!7798718))

(declare-fun m!7798720 () Bool)

(assert (=> b!7072453 m!7798720))

(assert (=> b!7072453 m!7798718))

(assert (=> b!7072453 m!7798720))

(declare-fun m!7798722 () Bool)

(assert (=> b!7072453 m!7798722))

(assert (=> b!7072242 d!2211691))

(declare-fun d!2211693 () Bool)

(declare-fun c!1319282 () Bool)

(assert (=> d!2211693 (= c!1319282 (isEmpty!39887 lt!2546202))))

(declare-fun e!4251961 () Bool)

(assert (=> d!2211693 (= (matchZipper!3186 (content!13793 lt!2546176) lt!2546202) e!4251961)))

(declare-fun b!7072454 () Bool)

(assert (=> b!7072454 (= e!4251961 (nullableZipper!2700 (content!13793 lt!2546176)))))

(declare-fun b!7072455 () Bool)

(assert (=> b!7072455 (= e!4251961 (matchZipper!3186 (derivationStepZipper!3096 (content!13793 lt!2546176) (head!14408 lt!2546202)) (tail!13832 lt!2546202)))))

(assert (= (and d!2211693 c!1319282) b!7072454))

(assert (= (and d!2211693 (not c!1319282)) b!7072455))

(assert (=> d!2211693 m!7798712))

(assert (=> b!7072454 m!7798360))

(declare-fun m!7798724 () Bool)

(assert (=> b!7072454 m!7798724))

(assert (=> b!7072455 m!7798716))

(assert (=> b!7072455 m!7798360))

(assert (=> b!7072455 m!7798716))

(declare-fun m!7798726 () Bool)

(assert (=> b!7072455 m!7798726))

(assert (=> b!7072455 m!7798720))

(assert (=> b!7072455 m!7798726))

(assert (=> b!7072455 m!7798720))

(declare-fun m!7798728 () Bool)

(assert (=> b!7072455 m!7798728))

(assert (=> b!7072242 d!2211693))

(declare-fun d!2211695 () Bool)

(declare-fun lt!2546399 () Bool)

(assert (=> d!2211695 (= lt!2546399 (exists!3692 (toList!10987 z1!570) lambda!425672))))

(declare-fun choose!54226 ((Set Context!13284) Int) Bool)

(assert (=> d!2211695 (= lt!2546399 (choose!54226 z1!570 lambda!425672))))

(assert (=> d!2211695 (= (exists!3693 z1!570 lambda!425672) lt!2546399)))

(declare-fun bs!1880745 () Bool)

(assert (= bs!1880745 d!2211695))

(assert (=> bs!1880745 m!7798354))

(assert (=> bs!1880745 m!7798354))

(declare-fun m!7798730 () Bool)

(assert (=> bs!1880745 m!7798730))

(declare-fun m!7798732 () Bool)

(assert (=> bs!1880745 m!7798732))

(assert (=> b!7072242 d!2211695))

(declare-fun d!2211697 () Bool)

(assert (=> d!2211697 (exists!3693 z1!570 lambda!425672)))

(declare-fun lt!2546402 () Unit!162002)

(declare-fun choose!54227 ((Set Context!13284) Context!13284 Int) Unit!162002)

(assert (=> d!2211697 (= lt!2546402 (choose!54227 z1!570 lt!2546157 lambda!425672))))

(assert (=> d!2211697 (set.member lt!2546157 z1!570)))

(assert (=> d!2211697 (= (lemmaContainsThenExists!154 z1!570 lt!2546157 lambda!425672) lt!2546402)))

(declare-fun bs!1880746 () Bool)

(assert (= bs!1880746 d!2211697))

(assert (=> bs!1880746 m!7798362))

(declare-fun m!7798734 () Bool)

(assert (=> bs!1880746 m!7798734))

(assert (=> bs!1880746 m!7798392))

(assert (=> b!7072242 d!2211697))

(declare-fun d!2211699 () Bool)

(assert (=> d!2211699 (isDefined!13666 (findConcatSeparationZippers!481 lt!2546169 lt!2546193 Nil!68340 s!7408 s!7408))))

(declare-fun lt!2546405 () Unit!162002)

(declare-fun choose!54228 ((Set Context!13284) (Set Context!13284) List!68464 List!68464 List!68464 List!68464 List!68464) Unit!162002)

(assert (=> d!2211699 (= lt!2546405 (choose!54228 lt!2546169 lt!2546193 lt!2546202 (_2!37436 lt!2546165) s!7408 Nil!68340 s!7408))))

(assert (=> d!2211699 (matchZipper!3186 lt!2546169 lt!2546202)))

(assert (=> d!2211699 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!73 lt!2546169 lt!2546193 lt!2546202 (_2!37436 lt!2546165) s!7408 Nil!68340 s!7408) lt!2546405)))

(declare-fun bs!1880747 () Bool)

(assert (= bs!1880747 d!2211699))

(assert (=> bs!1880747 m!7798358))

(assert (=> bs!1880747 m!7798358))

(assert (=> bs!1880747 m!7798368))

(declare-fun m!7798736 () Bool)

(assert (=> bs!1880747 m!7798736))

(assert (=> bs!1880747 m!7798316))

(assert (=> b!7072242 d!2211699))

(assert (=> b!7072233 d!2211677))

(declare-fun d!2211701 () Bool)

(assert (=> d!2211701 (= (flatMap!2572 lt!2546153 lambda!425671) (dynLambda!27803 lambda!425671 lt!2546170))))

(declare-fun lt!2546406 () Unit!162002)

(assert (=> d!2211701 (= lt!2546406 (choose!54222 lt!2546153 lt!2546170 lambda!425671))))

(assert (=> d!2211701 (= lt!2546153 (set.insert lt!2546170 (as set.empty (Set Context!13284))))))

(assert (=> d!2211701 (= (lemmaFlatMapOnSingletonSet!2081 lt!2546153 lt!2546170 lambda!425671) lt!2546406)))

(declare-fun b_lambda!270011 () Bool)

(assert (=> (not b_lambda!270011) (not d!2211701)))

(declare-fun bs!1880748 () Bool)

(assert (= bs!1880748 d!2211701))

(assert (=> bs!1880748 m!7798406))

(declare-fun m!7798738 () Bool)

(assert (=> bs!1880748 m!7798738))

(declare-fun m!7798740 () Bool)

(assert (=> bs!1880748 m!7798740))

(assert (=> bs!1880748 m!7798414))

(assert (=> b!7072233 d!2211701))

(declare-fun b!7072456 () Bool)

(declare-fun e!4251964 () Bool)

(assert (=> b!7072456 (= e!4251964 (nullable!7329 (h!74789 (exprs!7142 lt!2546170))))))

(declare-fun call!642767 () (Set Context!13284))

(declare-fun b!7072457 () Bool)

(declare-fun e!4251963 () (Set Context!13284))

(assert (=> b!7072457 (= e!4251963 (set.union call!642767 (derivationStepZipperUp!2230 (Context!13285 (t!382248 (exprs!7142 lt!2546170))) (h!74788 s!7408))))))

(declare-fun b!7072458 () Bool)

(declare-fun e!4251965 () (Set Context!13284))

(assert (=> b!7072458 (= e!4251963 e!4251965)))

(declare-fun c!1319284 () Bool)

(assert (=> b!7072458 (= c!1319284 (is-Cons!68341 (exprs!7142 lt!2546170)))))

(declare-fun d!2211703 () Bool)

(declare-fun c!1319283 () Bool)

(assert (=> d!2211703 (= c!1319283 e!4251964)))

(declare-fun res!2888516 () Bool)

(assert (=> d!2211703 (=> (not res!2888516) (not e!4251964))))

(assert (=> d!2211703 (= res!2888516 (is-Cons!68341 (exprs!7142 lt!2546170)))))

(assert (=> d!2211703 (= (derivationStepZipperUp!2230 lt!2546170 (h!74788 s!7408)) e!4251963)))

(declare-fun b!7072459 () Bool)

(assert (=> b!7072459 (= e!4251965 (as set.empty (Set Context!13284)))))

(declare-fun b!7072460 () Bool)

(assert (=> b!7072460 (= e!4251965 call!642767)))

(declare-fun bm!642762 () Bool)

(assert (=> bm!642762 (= call!642767 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546170)) (Context!13285 (t!382248 (exprs!7142 lt!2546170))) (h!74788 s!7408)))))

(assert (= (and d!2211703 res!2888516) b!7072456))

(assert (= (and d!2211703 c!1319283) b!7072457))

(assert (= (and d!2211703 (not c!1319283)) b!7072458))

(assert (= (and b!7072458 c!1319284) b!7072460))

(assert (= (and b!7072458 (not c!1319284)) b!7072459))

(assert (= (or b!7072457 b!7072460) bm!642762))

(declare-fun m!7798742 () Bool)

(assert (=> b!7072456 m!7798742))

(declare-fun m!7798744 () Bool)

(assert (=> b!7072457 m!7798744))

(declare-fun m!7798746 () Bool)

(assert (=> bm!642762 m!7798746))

(assert (=> b!7072233 d!2211703))

(declare-fun bs!1880749 () Bool)

(declare-fun d!2211705 () Bool)

(assert (= bs!1880749 (and d!2211705 b!7072233)))

(declare-fun lambda!425732 () Int)

(assert (=> bs!1880749 (= lambda!425732 lambda!425671)))

(declare-fun bs!1880750 () Bool)

(assert (= bs!1880750 (and d!2211705 d!2211663)))

(assert (=> bs!1880750 (= lambda!425732 lambda!425722)))

(assert (=> d!2211705 true))

(assert (=> d!2211705 (= (derivationStepZipper!3096 lt!2546153 (h!74788 s!7408)) (flatMap!2572 lt!2546153 lambda!425732))))

(declare-fun bs!1880751 () Bool)

(assert (= bs!1880751 d!2211705))

(declare-fun m!7798748 () Bool)

(assert (=> bs!1880751 m!7798748))

(assert (=> b!7072233 d!2211705))

(declare-fun d!2211707 () Bool)

(assert (=> d!2211707 (= (flatMap!2572 lt!2546153 lambda!425671) (choose!54221 lt!2546153 lambda!425671))))

(declare-fun bs!1880752 () Bool)

(assert (= bs!1880752 d!2211707))

(declare-fun m!7798750 () Bool)

(assert (=> bs!1880752 m!7798750))

(assert (=> b!7072233 d!2211707))

(declare-fun d!2211709 () Bool)

(declare-fun c!1319285 () Bool)

(assert (=> d!2211709 (= c!1319285 (isEmpty!39887 s!7408))))

(declare-fun e!4251966 () Bool)

(assert (=> d!2211709 (= (matchZipper!3186 lt!2546152 s!7408) e!4251966)))

(declare-fun b!7072461 () Bool)

(assert (=> b!7072461 (= e!4251966 (nullableZipper!2700 lt!2546152))))

(declare-fun b!7072462 () Bool)

(assert (=> b!7072462 (= e!4251966 (matchZipper!3186 (derivationStepZipper!3096 lt!2546152 (head!14408 s!7408)) (tail!13832 s!7408)))))

(assert (= (and d!2211709 c!1319285) b!7072461))

(assert (= (and d!2211709 (not c!1319285)) b!7072462))

(assert (=> d!2211709 m!7798612))

(declare-fun m!7798752 () Bool)

(assert (=> b!7072461 m!7798752))

(assert (=> b!7072462 m!7798616))

(assert (=> b!7072462 m!7798616))

(declare-fun m!7798754 () Bool)

(assert (=> b!7072462 m!7798754))

(assert (=> b!7072462 m!7798620))

(assert (=> b!7072462 m!7798754))

(assert (=> b!7072462 m!7798620))

(declare-fun m!7798756 () Bool)

(assert (=> b!7072462 m!7798756))

(assert (=> start!687046 d!2211709))

(declare-fun bs!1880753 () Bool)

(declare-fun d!2211711 () Bool)

(assert (= bs!1880753 (and d!2211711 b!7072249)))

(declare-fun lambda!425737 () Int)

(assert (=> bs!1880753 (= lambda!425737 lambda!425669)))

(assert (=> d!2211711 true))

(declare-fun map!15992 ((Set Context!13284) Int) (Set Context!13284))

(assert (=> d!2211711 (= (appendTo!767 z1!570 ct2!306) (map!15992 z1!570 lambda!425737))))

(declare-fun bs!1880754 () Bool)

(assert (= bs!1880754 d!2211711))

(declare-fun m!7798758 () Bool)

(assert (=> bs!1880754 m!7798758))

(assert (=> start!687046 d!2211711))

(declare-fun bs!1880755 () Bool)

(declare-fun d!2211713 () Bool)

(assert (= bs!1880755 (and d!2211713 b!7072249)))

(declare-fun lambda!425740 () Int)

(assert (=> bs!1880755 (= lambda!425740 lambda!425670)))

(assert (=> d!2211713 (= (inv!86975 ct2!306) (forall!16599 (exprs!7142 ct2!306) lambda!425740))))

(declare-fun bs!1880756 () Bool)

(assert (= bs!1880756 d!2211713))

(declare-fun m!7798760 () Bool)

(assert (=> bs!1880756 m!7798760))

(assert (=> start!687046 d!2211713))

(declare-fun d!2211715 () Bool)

(declare-fun e!4251971 () Bool)

(assert (=> d!2211715 e!4251971))

(declare-fun res!2888522 () Bool)

(assert (=> d!2211715 (=> (not res!2888522) (not e!4251971))))

(declare-fun lt!2546411 () List!68465)

(declare-fun content!13796 (List!68465) (Set Regex!17646))

(assert (=> d!2211715 (= res!2888522 (= (content!13796 lt!2546411) (set.union (content!13796 lt!2546192) (content!13796 (exprs!7142 ct2!306)))))))

(declare-fun e!4251972 () List!68465)

(assert (=> d!2211715 (= lt!2546411 e!4251972)))

(declare-fun c!1319289 () Bool)

(assert (=> d!2211715 (= c!1319289 (is-Nil!68341 lt!2546192))))

(assert (=> d!2211715 (= (++!15776 lt!2546192 (exprs!7142 ct2!306)) lt!2546411)))

(declare-fun b!7072471 () Bool)

(assert (=> b!7072471 (= e!4251972 (exprs!7142 ct2!306))))

(declare-fun b!7072474 () Bool)

(assert (=> b!7072474 (= e!4251971 (or (not (= (exprs!7142 ct2!306) Nil!68341)) (= lt!2546411 lt!2546192)))))

(declare-fun b!7072473 () Bool)

(declare-fun res!2888521 () Bool)

(assert (=> b!7072473 (=> (not res!2888521) (not e!4251971))))

(declare-fun size!41216 (List!68465) Int)

(assert (=> b!7072473 (= res!2888521 (= (size!41216 lt!2546411) (+ (size!41216 lt!2546192) (size!41216 (exprs!7142 ct2!306)))))))

(declare-fun b!7072472 () Bool)

(assert (=> b!7072472 (= e!4251972 (Cons!68341 (h!74789 lt!2546192) (++!15776 (t!382248 lt!2546192) (exprs!7142 ct2!306))))))

(assert (= (and d!2211715 c!1319289) b!7072471))

(assert (= (and d!2211715 (not c!1319289)) b!7072472))

(assert (= (and d!2211715 res!2888522) b!7072473))

(assert (= (and b!7072473 res!2888521) b!7072474))

(declare-fun m!7798762 () Bool)

(assert (=> d!2211715 m!7798762))

(declare-fun m!7798764 () Bool)

(assert (=> d!2211715 m!7798764))

(declare-fun m!7798766 () Bool)

(assert (=> d!2211715 m!7798766))

(declare-fun m!7798768 () Bool)

(assert (=> b!7072473 m!7798768))

(declare-fun m!7798770 () Bool)

(assert (=> b!7072473 m!7798770))

(declare-fun m!7798772 () Bool)

(assert (=> b!7072473 m!7798772))

(declare-fun m!7798774 () Bool)

(assert (=> b!7072472 m!7798774))

(assert (=> b!7072260 d!2211715))

(declare-fun d!2211717 () Bool)

(declare-fun c!1319303 () Bool)

(assert (=> d!2211717 (= c!1319303 (and (is-ElementMatch!17646 (h!74789 (exprs!7142 lt!2546157))) (= (c!1319233 (h!74789 (exprs!7142 lt!2546157))) (h!74788 s!7408))))))

(declare-fun e!4251988 () (Set Context!13284))

(assert (=> d!2211717 (= (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) lt!2546198 (h!74788 s!7408)) e!4251988)))

(declare-fun b!7072497 () Bool)

(declare-fun e!4251985 () (Set Context!13284))

(declare-fun call!642784 () (Set Context!13284))

(assert (=> b!7072497 (= e!4251985 call!642784)))

(declare-fun call!642785 () (Set Context!13284))

(declare-fun c!1319301 () Bool)

(declare-fun c!1319302 () Bool)

(declare-fun bm!642775 () Bool)

(declare-fun c!1319300 () Bool)

(declare-fun call!642783 () List!68465)

(assert (=> bm!642775 (= call!642785 (derivationStepZipperDown!2280 (ite c!1319302 (regOne!35805 (h!74789 (exprs!7142 lt!2546157))) (ite c!1319301 (regTwo!35804 (h!74789 (exprs!7142 lt!2546157))) (ite c!1319300 (regOne!35804 (h!74789 (exprs!7142 lt!2546157))) (reg!17975 (h!74789 (exprs!7142 lt!2546157)))))) (ite (or c!1319302 c!1319301) lt!2546198 (Context!13285 call!642783)) (h!74788 s!7408)))))

(declare-fun b!7072498 () Bool)

(declare-fun e!4251986 () (Set Context!13284))

(assert (=> b!7072498 (= e!4251986 (as set.empty (Set Context!13284)))))

(declare-fun bm!642776 () Bool)

(declare-fun call!642781 () (Set Context!13284))

(assert (=> bm!642776 (= call!642781 call!642785)))

(declare-fun b!7072499 () Bool)

(declare-fun e!4251987 () Bool)

(assert (=> b!7072499 (= e!4251987 (nullable!7329 (regOne!35804 (h!74789 (exprs!7142 lt!2546157)))))))

(declare-fun bm!642777 () Bool)

(declare-fun call!642780 () List!68465)

(assert (=> bm!642777 (= call!642783 call!642780)))

(declare-fun b!7072500 () Bool)

(declare-fun e!4251989 () (Set Context!13284))

(declare-fun call!642782 () (Set Context!13284))

(assert (=> b!7072500 (= e!4251989 (set.union call!642782 call!642781))))

(declare-fun b!7072501 () Bool)

(declare-fun c!1319304 () Bool)

(assert (=> b!7072501 (= c!1319304 (is-Star!17646 (h!74789 (exprs!7142 lt!2546157))))))

(assert (=> b!7072501 (= e!4251985 e!4251986)))

(declare-fun b!7072502 () Bool)

(assert (=> b!7072502 (= e!4251986 call!642784)))

(declare-fun b!7072503 () Bool)

(declare-fun e!4251990 () (Set Context!13284))

(assert (=> b!7072503 (= e!4251990 (set.union call!642785 call!642782))))

(declare-fun b!7072504 () Bool)

(assert (=> b!7072504 (= e!4251988 (set.insert lt!2546198 (as set.empty (Set Context!13284))))))

(declare-fun bm!642778 () Bool)

(declare-fun $colon$colon!2660 (List!68465 Regex!17646) List!68465)

(assert (=> bm!642778 (= call!642780 ($colon$colon!2660 (exprs!7142 lt!2546198) (ite (or c!1319301 c!1319300) (regTwo!35804 (h!74789 (exprs!7142 lt!2546157))) (h!74789 (exprs!7142 lt!2546157)))))))

(declare-fun b!7072505 () Bool)

(assert (=> b!7072505 (= e!4251988 e!4251990)))

(assert (=> b!7072505 (= c!1319302 (is-Union!17646 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun b!7072506 () Bool)

(assert (=> b!7072506 (= c!1319301 e!4251987)))

(declare-fun res!2888525 () Bool)

(assert (=> b!7072506 (=> (not res!2888525) (not e!4251987))))

(assert (=> b!7072506 (= res!2888525 (is-Concat!26491 (h!74789 (exprs!7142 lt!2546157))))))

(assert (=> b!7072506 (= e!4251990 e!4251989)))

(declare-fun b!7072507 () Bool)

(assert (=> b!7072507 (= e!4251989 e!4251985)))

(assert (=> b!7072507 (= c!1319300 (is-Concat!26491 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun bm!642779 () Bool)

(assert (=> bm!642779 (= call!642784 call!642781)))

(declare-fun bm!642780 () Bool)

(assert (=> bm!642780 (= call!642782 (derivationStepZipperDown!2280 (ite c!1319302 (regTwo!35805 (h!74789 (exprs!7142 lt!2546157))) (regOne!35804 (h!74789 (exprs!7142 lt!2546157)))) (ite c!1319302 lt!2546198 (Context!13285 call!642780)) (h!74788 s!7408)))))

(assert (= (and d!2211717 c!1319303) b!7072504))

(assert (= (and d!2211717 (not c!1319303)) b!7072505))

(assert (= (and b!7072505 c!1319302) b!7072503))

(assert (= (and b!7072505 (not c!1319302)) b!7072506))

(assert (= (and b!7072506 res!2888525) b!7072499))

(assert (= (and b!7072506 c!1319301) b!7072500))

(assert (= (and b!7072506 (not c!1319301)) b!7072507))

(assert (= (and b!7072507 c!1319300) b!7072497))

(assert (= (and b!7072507 (not c!1319300)) b!7072501))

(assert (= (and b!7072501 c!1319304) b!7072502))

(assert (= (and b!7072501 (not c!1319304)) b!7072498))

(assert (= (or b!7072497 b!7072502) bm!642777))

(assert (= (or b!7072497 b!7072502) bm!642779))

(assert (= (or b!7072500 bm!642779) bm!642776))

(assert (= (or b!7072500 bm!642777) bm!642778))

(assert (= (or b!7072503 bm!642776) bm!642775))

(assert (= (or b!7072503 b!7072500) bm!642780))

(declare-fun m!7798776 () Bool)

(assert (=> bm!642778 m!7798776))

(declare-fun m!7798778 () Bool)

(assert (=> b!7072504 m!7798778))

(declare-fun m!7798780 () Bool)

(assert (=> bm!642775 m!7798780))

(declare-fun m!7798782 () Bool)

(assert (=> b!7072499 m!7798782))

(declare-fun m!7798784 () Bool)

(assert (=> bm!642780 m!7798784))

(assert (=> b!7072260 d!2211717))

(declare-fun b!7072508 () Bool)

(declare-fun e!4251992 () Bool)

(assert (=> b!7072508 (= e!4251992 (nullable!7329 (h!74789 (exprs!7142 lt!2546198))))))

(declare-fun b!7072509 () Bool)

(declare-fun e!4251991 () (Set Context!13284))

(declare-fun call!642786 () (Set Context!13284))

(assert (=> b!7072509 (= e!4251991 (set.union call!642786 (derivationStepZipperUp!2230 (Context!13285 (t!382248 (exprs!7142 lt!2546198))) (h!74788 s!7408))))))

(declare-fun b!7072510 () Bool)

(declare-fun e!4251993 () (Set Context!13284))

(assert (=> b!7072510 (= e!4251991 e!4251993)))

(declare-fun c!1319306 () Bool)

(assert (=> b!7072510 (= c!1319306 (is-Cons!68341 (exprs!7142 lt!2546198)))))

(declare-fun d!2211719 () Bool)

(declare-fun c!1319305 () Bool)

(assert (=> d!2211719 (= c!1319305 e!4251992)))

(declare-fun res!2888526 () Bool)

(assert (=> d!2211719 (=> (not res!2888526) (not e!4251992))))

(assert (=> d!2211719 (= res!2888526 (is-Cons!68341 (exprs!7142 lt!2546198)))))

(assert (=> d!2211719 (= (derivationStepZipperUp!2230 lt!2546198 (h!74788 s!7408)) e!4251991)))

(declare-fun b!7072511 () Bool)

(assert (=> b!7072511 (= e!4251993 (as set.empty (Set Context!13284)))))

(declare-fun b!7072512 () Bool)

(assert (=> b!7072512 (= e!4251993 call!642786)))

(declare-fun bm!642781 () Bool)

(assert (=> bm!642781 (= call!642786 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546198)) (Context!13285 (t!382248 (exprs!7142 lt!2546198))) (h!74788 s!7408)))))

(assert (= (and d!2211719 res!2888526) b!7072508))

(assert (= (and d!2211719 c!1319305) b!7072509))

(assert (= (and d!2211719 (not c!1319305)) b!7072510))

(assert (= (and b!7072510 c!1319306) b!7072512))

(assert (= (and b!7072510 (not c!1319306)) b!7072511))

(assert (= (or b!7072509 b!7072512) bm!642781))

(declare-fun m!7798786 () Bool)

(assert (=> b!7072508 m!7798786))

(declare-fun m!7798788 () Bool)

(assert (=> b!7072509 m!7798788))

(declare-fun m!7798790 () Bool)

(assert (=> bm!642781 m!7798790))

(assert (=> b!7072260 d!2211719))

(assert (=> b!7072260 d!2211649))

(declare-fun d!2211721 () Bool)

(declare-fun e!4251994 () Bool)

(assert (=> d!2211721 e!4251994))

(declare-fun res!2888528 () Bool)

(assert (=> d!2211721 (=> (not res!2888528) (not e!4251994))))

(declare-fun lt!2546412 () List!68465)

(assert (=> d!2211721 (= res!2888528 (= (content!13796 lt!2546412) (set.union (content!13796 (exprs!7142 lt!2546157)) (content!13796 (exprs!7142 ct2!306)))))))

(declare-fun e!4251995 () List!68465)

(assert (=> d!2211721 (= lt!2546412 e!4251995)))

(declare-fun c!1319307 () Bool)

(assert (=> d!2211721 (= c!1319307 (is-Nil!68341 (exprs!7142 lt!2546157)))))

(assert (=> d!2211721 (= (++!15776 (exprs!7142 lt!2546157) (exprs!7142 ct2!306)) lt!2546412)))

(declare-fun b!7072513 () Bool)

(assert (=> b!7072513 (= e!4251995 (exprs!7142 ct2!306))))

(declare-fun b!7072516 () Bool)

(assert (=> b!7072516 (= e!4251994 (or (not (= (exprs!7142 ct2!306) Nil!68341)) (= lt!2546412 (exprs!7142 lt!2546157))))))

(declare-fun b!7072515 () Bool)

(declare-fun res!2888527 () Bool)

(assert (=> b!7072515 (=> (not res!2888527) (not e!4251994))))

(assert (=> b!7072515 (= res!2888527 (= (size!41216 lt!2546412) (+ (size!41216 (exprs!7142 lt!2546157)) (size!41216 (exprs!7142 ct2!306)))))))

(declare-fun b!7072514 () Bool)

(assert (=> b!7072514 (= e!4251995 (Cons!68341 (h!74789 (exprs!7142 lt!2546157)) (++!15776 (t!382248 (exprs!7142 lt!2546157)) (exprs!7142 ct2!306))))))

(assert (= (and d!2211721 c!1319307) b!7072513))

(assert (= (and d!2211721 (not c!1319307)) b!7072514))

(assert (= (and d!2211721 res!2888528) b!7072515))

(assert (= (and b!7072515 res!2888527) b!7072516))

(declare-fun m!7798792 () Bool)

(assert (=> d!2211721 m!7798792))

(declare-fun m!7798794 () Bool)

(assert (=> d!2211721 m!7798794))

(assert (=> d!2211721 m!7798766))

(declare-fun m!7798796 () Bool)

(assert (=> b!7072515 m!7798796))

(declare-fun m!7798798 () Bool)

(assert (=> b!7072515 m!7798798))

(assert (=> b!7072515 m!7798772))

(declare-fun m!7798800 () Bool)

(assert (=> b!7072514 m!7798800))

(assert (=> b!7072249 d!2211721))

(assert (=> b!7072249 d!2211677))

(declare-fun d!2211723 () Bool)

(declare-fun e!4251998 () Bool)

(assert (=> d!2211723 e!4251998))

(declare-fun res!2888531 () Bool)

(assert (=> d!2211723 (=> (not res!2888531) (not e!4251998))))

(declare-fun lt!2546415 () Context!13284)

(declare-fun dynLambda!27806 (Int Context!13284) Context!13284)

(assert (=> d!2211723 (= res!2888531 (= lt!2546191 (dynLambda!27806 lambda!425669 lt!2546415)))))

(declare-fun choose!54229 ((Set Context!13284) Int Context!13284) Context!13284)

(assert (=> d!2211723 (= lt!2546415 (choose!54229 z1!570 lambda!425669 lt!2546191))))

(assert (=> d!2211723 (set.member lt!2546191 (map!15992 z1!570 lambda!425669))))

(assert (=> d!2211723 (= (mapPost2!475 z1!570 lambda!425669 lt!2546191) lt!2546415)))

(declare-fun b!7072520 () Bool)

(assert (=> b!7072520 (= e!4251998 (set.member lt!2546415 z1!570))))

(assert (= (and d!2211723 res!2888531) b!7072520))

(declare-fun b_lambda!270013 () Bool)

(assert (=> (not b_lambda!270013) (not d!2211723)))

(declare-fun m!7798802 () Bool)

(assert (=> d!2211723 m!7798802))

(declare-fun m!7798804 () Bool)

(assert (=> d!2211723 m!7798804))

(declare-fun m!7798806 () Bool)

(assert (=> d!2211723 m!7798806))

(declare-fun m!7798808 () Bool)

(assert (=> d!2211723 m!7798808))

(declare-fun m!7798810 () Bool)

(assert (=> b!7072520 m!7798810))

(assert (=> b!7072249 d!2211723))

(declare-fun b!7072521 () Bool)

(declare-fun e!4252002 () Option!16965)

(assert (=> b!7072521 (= e!4252002 (Some!16964 (tuple2!68267 Nil!68340 (t!382247 s!7408))))))

(declare-fun b!7072522 () Bool)

(declare-fun lt!2546417 () Unit!162002)

(declare-fun lt!2546416 () Unit!162002)

(assert (=> b!7072522 (= lt!2546417 lt!2546416)))

(assert (=> b!7072522 (= (++!15775 (++!15775 Nil!68340 (Cons!68340 (h!74788 (t!382247 s!7408)) Nil!68340)) (t!382247 (t!382247 s!7408))) (t!382247 s!7408))))

(assert (=> b!7072522 (= lt!2546416 (lemmaMoveElementToOtherListKeepsConcatEq!2975 Nil!68340 (h!74788 (t!382247 s!7408)) (t!382247 (t!382247 s!7408)) (t!382247 s!7408)))))

(declare-fun e!4252001 () Option!16965)

(assert (=> b!7072522 (= e!4252001 (findConcatSeparationZippers!481 lt!2546163 lt!2546193 (++!15775 Nil!68340 (Cons!68340 (h!74788 (t!382247 s!7408)) Nil!68340)) (t!382247 (t!382247 s!7408)) (t!382247 s!7408)))))

(declare-fun b!7072523 () Bool)

(declare-fun e!4251999 () Bool)

(declare-fun lt!2546418 () Option!16965)

(assert (=> b!7072523 (= e!4251999 (not (isDefined!13666 lt!2546418)))))

(declare-fun d!2211725 () Bool)

(assert (=> d!2211725 e!4251999))

(declare-fun res!2888535 () Bool)

(assert (=> d!2211725 (=> res!2888535 e!4251999)))

(declare-fun e!4252000 () Bool)

(assert (=> d!2211725 (= res!2888535 e!4252000)))

(declare-fun res!2888533 () Bool)

(assert (=> d!2211725 (=> (not res!2888533) (not e!4252000))))

(assert (=> d!2211725 (= res!2888533 (isDefined!13666 lt!2546418))))

(assert (=> d!2211725 (= lt!2546418 e!4252002)))

(declare-fun c!1319308 () Bool)

(declare-fun e!4252003 () Bool)

(assert (=> d!2211725 (= c!1319308 e!4252003)))

(declare-fun res!2888536 () Bool)

(assert (=> d!2211725 (=> (not res!2888536) (not e!4252003))))

(assert (=> d!2211725 (= res!2888536 (matchZipper!3186 lt!2546163 Nil!68340))))

(assert (=> d!2211725 (= (++!15775 Nil!68340 (t!382247 s!7408)) (t!382247 s!7408))))

(assert (=> d!2211725 (= (findConcatSeparationZippers!481 lt!2546163 lt!2546193 Nil!68340 (t!382247 s!7408) (t!382247 s!7408)) lt!2546418)))

(declare-fun b!7072524 () Bool)

(assert (=> b!7072524 (= e!4252003 (matchZipper!3186 lt!2546193 (t!382247 s!7408)))))

(declare-fun b!7072525 () Bool)

(assert (=> b!7072525 (= e!4252001 None!16964)))

(declare-fun b!7072526 () Bool)

(declare-fun res!2888532 () Bool)

(assert (=> b!7072526 (=> (not res!2888532) (not e!4252000))))

(assert (=> b!7072526 (= res!2888532 (matchZipper!3186 lt!2546193 (_2!37436 (get!23939 lt!2546418))))))

(declare-fun b!7072527 () Bool)

(assert (=> b!7072527 (= e!4252000 (= (++!15775 (_1!37436 (get!23939 lt!2546418)) (_2!37436 (get!23939 lt!2546418))) (t!382247 s!7408)))))

(declare-fun b!7072528 () Bool)

(declare-fun res!2888534 () Bool)

(assert (=> b!7072528 (=> (not res!2888534) (not e!4252000))))

(assert (=> b!7072528 (= res!2888534 (matchZipper!3186 lt!2546163 (_1!37436 (get!23939 lt!2546418))))))

(declare-fun b!7072529 () Bool)

(assert (=> b!7072529 (= e!4252002 e!4252001)))

(declare-fun c!1319309 () Bool)

(assert (=> b!7072529 (= c!1319309 (is-Nil!68340 (t!382247 s!7408)))))

(assert (= (and d!2211725 res!2888536) b!7072524))

(assert (= (and d!2211725 c!1319308) b!7072521))

(assert (= (and d!2211725 (not c!1319308)) b!7072529))

(assert (= (and b!7072529 c!1319309) b!7072525))

(assert (= (and b!7072529 (not c!1319309)) b!7072522))

(assert (= (and d!2211725 res!2888533) b!7072528))

(assert (= (and b!7072528 res!2888534) b!7072526))

(assert (= (and b!7072526 res!2888532) b!7072527))

(assert (= (and d!2211725 (not res!2888535)) b!7072523))

(declare-fun m!7798812 () Bool)

(assert (=> d!2211725 m!7798812))

(declare-fun m!7798814 () Bool)

(assert (=> d!2211725 m!7798814))

(declare-fun m!7798816 () Bool)

(assert (=> d!2211725 m!7798816))

(declare-fun m!7798818 () Bool)

(assert (=> b!7072524 m!7798818))

(declare-fun m!7798820 () Bool)

(assert (=> b!7072522 m!7798820))

(assert (=> b!7072522 m!7798820))

(declare-fun m!7798822 () Bool)

(assert (=> b!7072522 m!7798822))

(declare-fun m!7798824 () Bool)

(assert (=> b!7072522 m!7798824))

(assert (=> b!7072522 m!7798820))

(declare-fun m!7798826 () Bool)

(assert (=> b!7072522 m!7798826))

(declare-fun m!7798828 () Bool)

(assert (=> b!7072527 m!7798828))

(declare-fun m!7798830 () Bool)

(assert (=> b!7072527 m!7798830))

(assert (=> b!7072526 m!7798828))

(declare-fun m!7798832 () Bool)

(assert (=> b!7072526 m!7798832))

(assert (=> b!7072528 m!7798828))

(declare-fun m!7798834 () Bool)

(assert (=> b!7072528 m!7798834))

(assert (=> b!7072523 m!7798812))

(assert (=> b!7072250 d!2211725))

(declare-fun d!2211727 () Bool)

(assert (=> d!2211727 (isDefined!13666 (findConcatSeparationZippers!481 lt!2546163 (set.insert ct2!306 (as set.empty (Set Context!13284))) Nil!68340 (t!382247 s!7408) (t!382247 s!7408)))))

(declare-fun lt!2546421 () Unit!162002)

(declare-fun choose!54230 ((Set Context!13284) Context!13284 List!68464) Unit!162002)

(assert (=> d!2211727 (= lt!2546421 (choose!54230 lt!2546163 ct2!306 (t!382247 s!7408)))))

(assert (=> d!2211727 (matchZipper!3186 (appendTo!767 lt!2546163 ct2!306) (t!382247 s!7408))))

(assert (=> d!2211727 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!469 lt!2546163 ct2!306 (t!382247 s!7408)) lt!2546421)))

(declare-fun bs!1880757 () Bool)

(assert (= bs!1880757 d!2211727))

(assert (=> bs!1880757 m!7798336))

(declare-fun m!7798836 () Bool)

(assert (=> bs!1880757 m!7798836))

(declare-fun m!7798838 () Bool)

(assert (=> bs!1880757 m!7798838))

(declare-fun m!7798840 () Bool)

(assert (=> bs!1880757 m!7798840))

(assert (=> bs!1880757 m!7798344))

(assert (=> bs!1880757 m!7798838))

(assert (=> bs!1880757 m!7798336))

(declare-fun m!7798842 () Bool)

(assert (=> bs!1880757 m!7798842))

(assert (=> bs!1880757 m!7798344))

(assert (=> b!7072250 d!2211727))

(declare-fun bs!1880758 () Bool)

(declare-fun d!2211729 () Bool)

(assert (= bs!1880758 (and d!2211729 b!7072249)))

(declare-fun lambda!425741 () Int)

(assert (=> bs!1880758 (= lambda!425741 lambda!425669)))

(declare-fun bs!1880759 () Bool)

(assert (= bs!1880759 (and d!2211729 d!2211711)))

(assert (=> bs!1880759 (= lambda!425741 lambda!425737)))

(assert (=> d!2211729 true))

(assert (=> d!2211729 (= (appendTo!767 lt!2546163 ct2!306) (map!15992 lt!2546163 lambda!425741))))

(declare-fun bs!1880760 () Bool)

(assert (= bs!1880760 d!2211729))

(declare-fun m!7798844 () Bool)

(assert (=> bs!1880760 m!7798844))

(assert (=> b!7072250 d!2211729))

(declare-fun bs!1880761 () Bool)

(declare-fun d!2211731 () Bool)

(assert (= bs!1880761 (and d!2211731 b!7072249)))

(declare-fun lambda!425744 () Int)

(assert (=> bs!1880761 (= lambda!425744 lambda!425670)))

(declare-fun bs!1880762 () Bool)

(assert (= bs!1880762 (and d!2211731 d!2211713)))

(assert (=> bs!1880762 (= lambda!425744 lambda!425740)))

(assert (=> d!2211731 (= (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) (Context!13285 (++!15776 (exprs!7142 lt!2546179) (exprs!7142 ct2!306))) (h!74788 s!7408)) (appendTo!767 (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) lt!2546179 (h!74788 s!7408)) ct2!306))))

(declare-fun lt!2546427 () Unit!162002)

(assert (=> d!2211731 (= lt!2546427 (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546179) (exprs!7142 ct2!306) lambda!425744))))

(declare-fun lt!2546426 () Unit!162002)

(declare-fun choose!54231 (Context!13284 Regex!17646 C!35562 Context!13284) Unit!162002)

(assert (=> d!2211731 (= lt!2546426 (choose!54231 lt!2546179 (h!74789 (exprs!7142 lt!2546157)) (h!74788 s!7408) ct2!306))))

(declare-fun validRegex!8973 (Regex!17646) Bool)

(assert (=> d!2211731 (validRegex!8973 (h!74789 (exprs!7142 lt!2546157)))))

(assert (=> d!2211731 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!117 lt!2546179 (h!74789 (exprs!7142 lt!2546157)) (h!74788 s!7408) ct2!306) lt!2546426)))

(declare-fun bs!1880763 () Bool)

(assert (= bs!1880763 d!2211731))

(declare-fun m!7798846 () Bool)

(assert (=> bs!1880763 m!7798846))

(assert (=> bs!1880763 m!7798340))

(assert (=> bs!1880763 m!7798340))

(declare-fun m!7798848 () Bool)

(assert (=> bs!1880763 m!7798848))

(declare-fun m!7798850 () Bool)

(assert (=> bs!1880763 m!7798850))

(declare-fun m!7798852 () Bool)

(assert (=> bs!1880763 m!7798852))

(declare-fun m!7798854 () Bool)

(assert (=> bs!1880763 m!7798854))

(declare-fun m!7798856 () Bool)

(assert (=> bs!1880763 m!7798856))

(assert (=> b!7072250 d!2211731))

(declare-fun d!2211733 () Bool)

(assert (=> d!2211733 (= (get!23939 lt!2546187) (v!53258 lt!2546187))))

(assert (=> b!7072250 d!2211733))

(declare-fun d!2211735 () Bool)

(declare-fun c!1319314 () Bool)

(assert (=> d!2211735 (= c!1319314 (and (is-ElementMatch!17646 (h!74789 (exprs!7142 lt!2546157))) (= (c!1319233 (h!74789 (exprs!7142 lt!2546157))) (h!74788 s!7408))))))

(declare-fun e!4252007 () (Set Context!13284))

(assert (=> d!2211735 (= (derivationStepZipperDown!2280 (h!74789 (exprs!7142 lt!2546157)) lt!2546179 (h!74788 s!7408)) e!4252007)))

(declare-fun b!7072530 () Bool)

(declare-fun e!4252004 () (Set Context!13284))

(declare-fun call!642791 () (Set Context!13284))

(assert (=> b!7072530 (= e!4252004 call!642791)))

(declare-fun c!1319313 () Bool)

(declare-fun bm!642782 () Bool)

(declare-fun c!1319311 () Bool)

(declare-fun call!642792 () (Set Context!13284))

(declare-fun call!642790 () List!68465)

(declare-fun c!1319312 () Bool)

(assert (=> bm!642782 (= call!642792 (derivationStepZipperDown!2280 (ite c!1319313 (regOne!35805 (h!74789 (exprs!7142 lt!2546157))) (ite c!1319312 (regTwo!35804 (h!74789 (exprs!7142 lt!2546157))) (ite c!1319311 (regOne!35804 (h!74789 (exprs!7142 lt!2546157))) (reg!17975 (h!74789 (exprs!7142 lt!2546157)))))) (ite (or c!1319313 c!1319312) lt!2546179 (Context!13285 call!642790)) (h!74788 s!7408)))))

(declare-fun b!7072531 () Bool)

(declare-fun e!4252005 () (Set Context!13284))

(assert (=> b!7072531 (= e!4252005 (as set.empty (Set Context!13284)))))

(declare-fun bm!642783 () Bool)

(declare-fun call!642788 () (Set Context!13284))

(assert (=> bm!642783 (= call!642788 call!642792)))

(declare-fun b!7072532 () Bool)

(declare-fun e!4252006 () Bool)

(assert (=> b!7072532 (= e!4252006 (nullable!7329 (regOne!35804 (h!74789 (exprs!7142 lt!2546157)))))))

(declare-fun bm!642784 () Bool)

(declare-fun call!642787 () List!68465)

(assert (=> bm!642784 (= call!642790 call!642787)))

(declare-fun b!7072533 () Bool)

(declare-fun e!4252008 () (Set Context!13284))

(declare-fun call!642789 () (Set Context!13284))

(assert (=> b!7072533 (= e!4252008 (set.union call!642789 call!642788))))

(declare-fun b!7072534 () Bool)

(declare-fun c!1319315 () Bool)

(assert (=> b!7072534 (= c!1319315 (is-Star!17646 (h!74789 (exprs!7142 lt!2546157))))))

(assert (=> b!7072534 (= e!4252004 e!4252005)))

(declare-fun b!7072535 () Bool)

(assert (=> b!7072535 (= e!4252005 call!642791)))

(declare-fun b!7072536 () Bool)

(declare-fun e!4252009 () (Set Context!13284))

(assert (=> b!7072536 (= e!4252009 (set.union call!642792 call!642789))))

(declare-fun b!7072537 () Bool)

(assert (=> b!7072537 (= e!4252007 (set.insert lt!2546179 (as set.empty (Set Context!13284))))))

(declare-fun bm!642785 () Bool)

(assert (=> bm!642785 (= call!642787 ($colon$colon!2660 (exprs!7142 lt!2546179) (ite (or c!1319312 c!1319311) (regTwo!35804 (h!74789 (exprs!7142 lt!2546157))) (h!74789 (exprs!7142 lt!2546157)))))))

(declare-fun b!7072538 () Bool)

(assert (=> b!7072538 (= e!4252007 e!4252009)))

(assert (=> b!7072538 (= c!1319313 (is-Union!17646 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun b!7072539 () Bool)

(assert (=> b!7072539 (= c!1319312 e!4252006)))

(declare-fun res!2888537 () Bool)

(assert (=> b!7072539 (=> (not res!2888537) (not e!4252006))))

(assert (=> b!7072539 (= res!2888537 (is-Concat!26491 (h!74789 (exprs!7142 lt!2546157))))))

(assert (=> b!7072539 (= e!4252009 e!4252008)))

(declare-fun b!7072540 () Bool)

(assert (=> b!7072540 (= e!4252008 e!4252004)))

(assert (=> b!7072540 (= c!1319311 (is-Concat!26491 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun bm!642786 () Bool)

(assert (=> bm!642786 (= call!642791 call!642788)))

(declare-fun bm!642787 () Bool)

(assert (=> bm!642787 (= call!642789 (derivationStepZipperDown!2280 (ite c!1319313 (regTwo!35805 (h!74789 (exprs!7142 lt!2546157))) (regOne!35804 (h!74789 (exprs!7142 lt!2546157)))) (ite c!1319313 lt!2546179 (Context!13285 call!642787)) (h!74788 s!7408)))))

(assert (= (and d!2211735 c!1319314) b!7072537))

(assert (= (and d!2211735 (not c!1319314)) b!7072538))

(assert (= (and b!7072538 c!1319313) b!7072536))

(assert (= (and b!7072538 (not c!1319313)) b!7072539))

(assert (= (and b!7072539 res!2888537) b!7072532))

(assert (= (and b!7072539 c!1319312) b!7072533))

(assert (= (and b!7072539 (not c!1319312)) b!7072540))

(assert (= (and b!7072540 c!1319311) b!7072530))

(assert (= (and b!7072540 (not c!1319311)) b!7072534))

(assert (= (and b!7072534 c!1319315) b!7072535))

(assert (= (and b!7072534 (not c!1319315)) b!7072531))

(assert (= (or b!7072530 b!7072535) bm!642784))

(assert (= (or b!7072530 b!7072535) bm!642786))

(assert (= (or b!7072533 bm!642786) bm!642783))

(assert (= (or b!7072533 bm!642784) bm!642785))

(assert (= (or b!7072536 bm!642783) bm!642782))

(assert (= (or b!7072536 b!7072533) bm!642787))

(declare-fun m!7798858 () Bool)

(assert (=> bm!642785 m!7798858))

(declare-fun m!7798860 () Bool)

(assert (=> b!7072537 m!7798860))

(declare-fun m!7798862 () Bool)

(assert (=> bm!642782 m!7798862))

(assert (=> b!7072532 m!7798782))

(declare-fun m!7798864 () Bool)

(assert (=> bm!642787 m!7798864))

(assert (=> b!7072250 d!2211735))

(declare-fun d!2211737 () Bool)

(assert (=> d!2211737 (= (isDefined!13666 lt!2546187) (not (isEmpty!39888 lt!2546187)))))

(declare-fun bs!1880764 () Bool)

(assert (= bs!1880764 d!2211737))

(declare-fun m!7798866 () Bool)

(assert (=> bs!1880764 m!7798866))

(assert (=> b!7072250 d!2211737))

(declare-fun d!2211739 () Bool)

(declare-fun c!1319316 () Bool)

(assert (=> d!2211739 (= c!1319316 (isEmpty!39887 (_1!37436 lt!2546165)))))

(declare-fun e!4252010 () Bool)

(assert (=> d!2211739 (= (matchZipper!3186 lt!2546163 (_1!37436 lt!2546165)) e!4252010)))

(declare-fun b!7072541 () Bool)

(assert (=> b!7072541 (= e!4252010 (nullableZipper!2700 lt!2546163))))

(declare-fun b!7072542 () Bool)

(assert (=> b!7072542 (= e!4252010 (matchZipper!3186 (derivationStepZipper!3096 lt!2546163 (head!14408 (_1!37436 lt!2546165))) (tail!13832 (_1!37436 lt!2546165))))))

(assert (= (and d!2211739 c!1319316) b!7072541))

(assert (= (and d!2211739 (not c!1319316)) b!7072542))

(assert (=> d!2211739 m!7798660))

(declare-fun m!7798868 () Bool)

(assert (=> b!7072541 m!7798868))

(assert (=> b!7072542 m!7798664))

(assert (=> b!7072542 m!7798664))

(declare-fun m!7798870 () Bool)

(assert (=> b!7072542 m!7798870))

(assert (=> b!7072542 m!7798668))

(assert (=> b!7072542 m!7798870))

(assert (=> b!7072542 m!7798668))

(declare-fun m!7798872 () Bool)

(assert (=> b!7072542 m!7798872))

(assert (=> b!7072250 d!2211739))

(assert (=> b!7072250 d!2211649))

(declare-fun bs!1880765 () Bool)

(declare-fun d!2211741 () Bool)

(assert (= bs!1880765 (and d!2211741 b!7072249)))

(declare-fun lambda!425745 () Int)

(assert (=> bs!1880765 (= lambda!425745 lambda!425670)))

(declare-fun bs!1880766 () Bool)

(assert (= bs!1880766 (and d!2211741 d!2211713)))

(assert (=> bs!1880766 (= lambda!425745 lambda!425740)))

(declare-fun bs!1880767 () Bool)

(assert (= bs!1880767 (and d!2211741 d!2211731)))

(assert (=> bs!1880767 (= lambda!425745 lambda!425744)))

(assert (=> d!2211741 (= (inv!86975 setElem!50264) (forall!16599 (exprs!7142 setElem!50264) lambda!425745))))

(declare-fun bs!1880768 () Bool)

(assert (= bs!1880768 d!2211741))

(declare-fun m!7798874 () Bool)

(assert (=> bs!1880768 m!7798874))

(assert (=> setNonEmpty!50264 d!2211741))

(declare-fun d!2211743 () Bool)

(declare-fun nullableFct!2814 (Regex!17646) Bool)

(assert (=> d!2211743 (= (nullable!7329 (h!74789 (exprs!7142 lt!2546157))) (nullableFct!2814 (h!74789 (exprs!7142 lt!2546157))))))

(declare-fun bs!1880769 () Bool)

(assert (= bs!1880769 d!2211743))

(declare-fun m!7798876 () Bool)

(assert (=> bs!1880769 m!7798876))

(assert (=> b!7072248 d!2211743))

(declare-fun d!2211745 () Bool)

(assert (=> d!2211745 (= (tail!13830 (exprs!7142 lt!2546157)) (t!382248 (exprs!7142 lt!2546157)))))

(assert (=> b!7072248 d!2211745))

(declare-fun d!2211747 () Bool)

(declare-fun c!1319317 () Bool)

(assert (=> d!2211747 (= c!1319317 (isEmpty!39887 (_2!37436 lt!2546165)))))

(declare-fun e!4252011 () Bool)

(assert (=> d!2211747 (= (matchZipper!3186 lt!2546193 (_2!37436 lt!2546165)) e!4252011)))

(declare-fun b!7072543 () Bool)

(assert (=> b!7072543 (= e!4252011 (nullableZipper!2700 lt!2546193))))

(declare-fun b!7072544 () Bool)

(assert (=> b!7072544 (= e!4252011 (matchZipper!3186 (derivationStepZipper!3096 lt!2546193 (head!14408 (_2!37436 lt!2546165))) (tail!13832 (_2!37436 lt!2546165))))))

(assert (= (and d!2211747 c!1319317) b!7072543))

(assert (= (and d!2211747 (not c!1319317)) b!7072544))

(declare-fun m!7798878 () Bool)

(assert (=> d!2211747 m!7798878))

(declare-fun m!7798880 () Bool)

(assert (=> b!7072543 m!7798880))

(declare-fun m!7798882 () Bool)

(assert (=> b!7072544 m!7798882))

(assert (=> b!7072544 m!7798882))

(declare-fun m!7798884 () Bool)

(assert (=> b!7072544 m!7798884))

(declare-fun m!7798886 () Bool)

(assert (=> b!7072544 m!7798886))

(assert (=> b!7072544 m!7798884))

(assert (=> b!7072544 m!7798886))

(declare-fun m!7798888 () Bool)

(assert (=> b!7072544 m!7798888))

(assert (=> b!7072239 d!2211747))

(declare-fun d!2211749 () Bool)

(declare-fun c!1319318 () Bool)

(assert (=> d!2211749 (= c!1319318 (isEmpty!39887 lt!2546202))))

(declare-fun e!4252012 () Bool)

(assert (=> d!2211749 (= (matchZipper!3186 lt!2546169 lt!2546202) e!4252012)))

(declare-fun b!7072545 () Bool)

(assert (=> b!7072545 (= e!4252012 (nullableZipper!2700 lt!2546169))))

(declare-fun b!7072546 () Bool)

(assert (=> b!7072546 (= e!4252012 (matchZipper!3186 (derivationStepZipper!3096 lt!2546169 (head!14408 lt!2546202)) (tail!13832 lt!2546202)))))

(assert (= (and d!2211749 c!1319318) b!7072545))

(assert (= (and d!2211749 (not c!1319318)) b!7072546))

(assert (=> d!2211749 m!7798712))

(declare-fun m!7798890 () Bool)

(assert (=> b!7072545 m!7798890))

(assert (=> b!7072546 m!7798716))

(assert (=> b!7072546 m!7798716))

(declare-fun m!7798892 () Bool)

(assert (=> b!7072546 m!7798892))

(assert (=> b!7072546 m!7798720))

(assert (=> b!7072546 m!7798892))

(assert (=> b!7072546 m!7798720))

(declare-fun m!7798894 () Bool)

(assert (=> b!7072546 m!7798894))

(assert (=> b!7072240 d!2211749))

(declare-fun d!2211751 () Bool)

(declare-fun c!1319319 () Bool)

(assert (=> d!2211751 (= c!1319319 (isEmpty!39887 (_1!37436 lt!2546165)))))

(declare-fun e!4252013 () Bool)

(assert (=> d!2211751 (= (matchZipper!3186 lt!2546184 (_1!37436 lt!2546165)) e!4252013)))

(declare-fun b!7072547 () Bool)

(assert (=> b!7072547 (= e!4252013 (nullableZipper!2700 lt!2546184))))

(declare-fun b!7072548 () Bool)

(assert (=> b!7072548 (= e!4252013 (matchZipper!3186 (derivationStepZipper!3096 lt!2546184 (head!14408 (_1!37436 lt!2546165))) (tail!13832 (_1!37436 lt!2546165))))))

(assert (= (and d!2211751 c!1319319) b!7072547))

(assert (= (and d!2211751 (not c!1319319)) b!7072548))

(assert (=> d!2211751 m!7798660))

(declare-fun m!7798896 () Bool)

(assert (=> b!7072547 m!7798896))

(assert (=> b!7072548 m!7798664))

(assert (=> b!7072548 m!7798664))

(declare-fun m!7798898 () Bool)

(assert (=> b!7072548 m!7798898))

(assert (=> b!7072548 m!7798668))

(assert (=> b!7072548 m!7798898))

(assert (=> b!7072548 m!7798668))

(declare-fun m!7798900 () Bool)

(assert (=> b!7072548 m!7798900))

(assert (=> b!7072240 d!2211751))

(declare-fun d!2211753 () Bool)

(declare-fun e!4252014 () Bool)

(assert (=> d!2211753 (= (matchZipper!3186 (set.union lt!2546163 lt!2546171) (_1!37436 lt!2546165)) e!4252014)))

(declare-fun res!2888538 () Bool)

(assert (=> d!2211753 (=> res!2888538 e!4252014)))

(assert (=> d!2211753 (= res!2888538 (matchZipper!3186 lt!2546163 (_1!37436 lt!2546165)))))

(declare-fun lt!2546428 () Unit!162002)

(assert (=> d!2211753 (= lt!2546428 (choose!54219 lt!2546163 lt!2546171 (_1!37436 lt!2546165)))))

(assert (=> d!2211753 (= (lemmaZipperConcatMatchesSameAsBothZippers!1659 lt!2546163 lt!2546171 (_1!37436 lt!2546165)) lt!2546428)))

(declare-fun b!7072549 () Bool)

(assert (=> b!7072549 (= e!4252014 (matchZipper!3186 lt!2546171 (_1!37436 lt!2546165)))))

(assert (= (and d!2211753 (not res!2888538)) b!7072549))

(declare-fun m!7798902 () Bool)

(assert (=> d!2211753 m!7798902))

(assert (=> d!2211753 m!7798342))

(declare-fun m!7798904 () Bool)

(assert (=> d!2211753 m!7798904))

(assert (=> b!7072549 m!7798314))

(assert (=> b!7072240 d!2211753))

(assert (=> b!7072238 d!2211655))

(assert (=> b!7072257 d!2211649))

(declare-fun b!7072554 () Bool)

(declare-fun e!4252017 () Bool)

(declare-fun tp!1942355 () Bool)

(assert (=> b!7072554 (= e!4252017 (and tp_is_empty!44517 tp!1942355))))

(assert (=> b!7072251 (= tp!1942338 e!4252017)))

(assert (= (and b!7072251 (is-Cons!68340 (t!382247 s!7408))) b!7072554))

(declare-fun condSetEmpty!50270 () Bool)

(assert (=> setNonEmpty!50264 (= condSetEmpty!50270 (= setRest!50264 (as set.empty (Set Context!13284))))))

(declare-fun setRes!50270 () Bool)

(assert (=> setNonEmpty!50264 (= tp!1942340 setRes!50270)))

(declare-fun setIsEmpty!50270 () Bool)

(assert (=> setIsEmpty!50270 setRes!50270))

(declare-fun e!4252020 () Bool)

(declare-fun tp!1942360 () Bool)

(declare-fun setNonEmpty!50270 () Bool)

(declare-fun setElem!50270 () Context!13284)

(assert (=> setNonEmpty!50270 (= setRes!50270 (and tp!1942360 (inv!86975 setElem!50270) e!4252020))))

(declare-fun setRest!50270 () (Set Context!13284))

(assert (=> setNonEmpty!50270 (= setRest!50264 (set.union (set.insert setElem!50270 (as set.empty (Set Context!13284))) setRest!50270))))

(declare-fun b!7072559 () Bool)

(declare-fun tp!1942361 () Bool)

(assert (=> b!7072559 (= e!4252020 tp!1942361)))

(assert (= (and setNonEmpty!50264 condSetEmpty!50270) setIsEmpty!50270))

(assert (= (and setNonEmpty!50264 (not condSetEmpty!50270)) setNonEmpty!50270))

(assert (= setNonEmpty!50270 b!7072559))

(declare-fun m!7798906 () Bool)

(assert (=> setNonEmpty!50270 m!7798906))

(declare-fun b!7072564 () Bool)

(declare-fun e!4252023 () Bool)

(declare-fun tp!1942366 () Bool)

(declare-fun tp!1942367 () Bool)

(assert (=> b!7072564 (= e!4252023 (and tp!1942366 tp!1942367))))

(assert (=> b!7072259 (= tp!1942337 e!4252023)))

(assert (= (and b!7072259 (is-Cons!68341 (exprs!7142 ct2!306))) b!7072564))

(declare-fun b!7072565 () Bool)

(declare-fun e!4252024 () Bool)

(declare-fun tp!1942368 () Bool)

(declare-fun tp!1942369 () Bool)

(assert (=> b!7072565 (= e!4252024 (and tp!1942368 tp!1942369))))

(assert (=> b!7072258 (= tp!1942339 e!4252024)))

(assert (= (and b!7072258 (is-Cons!68341 (exprs!7142 setElem!50264))) b!7072565))

(declare-fun b_lambda!270015 () Bool)

(assert (= b_lambda!270009 (or b!7072234 b_lambda!270015)))

(declare-fun bs!1880770 () Bool)

(declare-fun d!2211755 () Bool)

(assert (= bs!1880770 (and d!2211755 b!7072234)))

(assert (=> bs!1880770 (= (dynLambda!27805 lambda!425668 lt!2546379) (matchZipper!3186 (set.insert lt!2546379 (as set.empty (Set Context!13284))) s!7408))))

(declare-fun m!7798908 () Bool)

(assert (=> bs!1880770 m!7798908))

(assert (=> bs!1880770 m!7798908))

(declare-fun m!7798910 () Bool)

(assert (=> bs!1880770 m!7798910))

(assert (=> d!2211671 d!2211755))

(declare-fun b_lambda!270017 () Bool)

(assert (= b_lambda!270011 (or b!7072233 b_lambda!270017)))

(declare-fun bs!1880771 () Bool)

(declare-fun d!2211757 () Bool)

(assert (= bs!1880771 (and d!2211757 b!7072233)))

(assert (=> bs!1880771 (= (dynLambda!27803 lambda!425671 lt!2546170) (derivationStepZipperUp!2230 lt!2546170 (h!74788 s!7408)))))

(assert (=> bs!1880771 m!7798404))

(assert (=> d!2211701 d!2211757))

(declare-fun b_lambda!270019 () Bool)

(assert (= b_lambda!270013 (or b!7072249 b_lambda!270019)))

(declare-fun bs!1880772 () Bool)

(declare-fun d!2211759 () Bool)

(assert (= bs!1880772 (and d!2211759 b!7072249)))

(declare-fun lt!2546429 () Unit!162002)

(assert (=> bs!1880772 (= lt!2546429 (lemmaConcatPreservesForall!957 (exprs!7142 lt!2546415) (exprs!7142 ct2!306) lambda!425670))))

(assert (=> bs!1880772 (= (dynLambda!27806 lambda!425669 lt!2546415) (Context!13285 (++!15776 (exprs!7142 lt!2546415) (exprs!7142 ct2!306))))))

(declare-fun m!7798912 () Bool)

(assert (=> bs!1880772 m!7798912))

(declare-fun m!7798914 () Bool)

(assert (=> bs!1880772 m!7798914))

(assert (=> d!2211723 d!2211759))

(declare-fun b_lambda!270021 () Bool)

(assert (= b_lambda!270007 (or b!7072233 b_lambda!270021)))

(declare-fun bs!1880773 () Bool)

(declare-fun d!2211761 () Bool)

(assert (= bs!1880773 (and d!2211761 b!7072233)))

(assert (=> bs!1880773 (= (dynLambda!27803 lambda!425671 lt!2546157) (derivationStepZipperUp!2230 lt!2546157 (h!74788 s!7408)))))

(assert (=> bs!1880773 m!7798306))

(assert (=> d!2211661 d!2211761))

(push 1)

(assert (not b!7072402))

(assert (not bm!642781))

(assert (not d!2211647))

(assert (not b!7072363))

(assert (not d!2211687))

(assert (not b!7072379))

(assert (not d!2211693))

(assert (not b_lambda!270015))

(assert (not b!7072548))

(assert (not b!7072412))

(assert (not b!7072366))

(assert (not b!7072416))

(assert (not b!7072526))

(assert (not b!7072532))

(assert (not b!7072544))

(assert (not d!2211729))

(assert (not b!7072441))

(assert tp_is_empty!44517)

(assert (not b!7072362))

(assert (not b!7072443))

(assert (not b!7072565))

(assert (not d!2211663))

(assert (not b!7072437))

(assert (not d!2211691))

(assert (not d!2211667))

(assert (not d!2211741))

(assert (not d!2211751))

(assert (not b!7072395))

(assert (not d!2211643))

(assert (not b!7072451))

(assert (not d!2211737))

(assert (not b!7072369))

(assert (not b!7072438))

(assert (not d!2211661))

(assert (not b!7072549))

(assert (not b!7072455))

(assert (not d!2211683))

(assert (not b!7072547))

(assert (not d!2211681))

(assert (not d!2211657))

(assert (not d!2211731))

(assert (not b!7072527))

(assert (not bm!642760))

(assert (not b!7072514))

(assert (not b!7072380))

(assert (not d!2211749))

(assert (not b!7072508))

(assert (not b!7072462))

(assert (not d!2211653))

(assert (not d!2211713))

(assert (not b!7072457))

(assert (not b!7072522))

(assert (not d!2211671))

(assert (not d!2211721))

(assert (not b!7072515))

(assert (not d!2211665))

(assert (not b!7072445))

(assert (not bs!1880771))

(assert (not d!2211739))

(assert (not d!2211673))

(assert (not bm!642761))

(assert (not d!2211685))

(assert (not bs!1880773))

(assert (not d!2211709))

(assert (not d!2211707))

(assert (not b!7072559))

(assert (not bm!642778))

(assert (not d!2211727))

(assert (not d!2211679))

(assert (not b_lambda!270021))

(assert (not bm!642762))

(assert (not b!7072401))

(assert (not d!2211695))

(assert (not b!7072361))

(assert (not d!2211725))

(assert (not b!7072456))

(assert (not d!2211723))

(assert (not b!7072523))

(assert (not bm!642775))

(assert (not b!7072542))

(assert (not d!2211753))

(assert (not d!2211649))

(assert (not b!7072461))

(assert (not d!2211669))

(assert (not b!7072452))

(assert (not d!2211705))

(assert (not b!7072439))

(assert (not b!7072509))

(assert (not b!7072411))

(assert (not b!7072546))

(assert (not b!7072528))

(assert (not bm!642787))

(assert (not b!7072394))

(assert (not d!2211697))

(assert (not b!7072365))

(assert (not b!7072454))

(assert (not b!7072473))

(assert (not setNonEmpty!50270))

(assert (not d!2211641))

(assert (not b!7072417))

(assert (not d!2211701))

(assert (not b!7072524))

(assert (not b!7072453))

(assert (not b!7072407))

(assert (not bs!1880772))

(assert (not bm!642780))

(assert (not b!7072382))

(assert (not d!2211699))

(assert (not b!7072545))

(assert (not d!2211677))

(assert (not b!7072383))

(assert (not b!7072554))

(assert (not b!7072364))

(assert (not d!2211715))

(assert (not bm!642785))

(assert (not b!7072442))

(assert (not b!7072564))

(assert (not b_lambda!270017))

(assert (not b!7072499))

(assert (not d!2211743))

(assert (not b!7072541))

(assert (not b_lambda!270019))

(assert (not bm!642782))

(assert (not d!2211655))

(assert (not d!2211747))

(assert (not bs!1880770))

(assert (not d!2211645))

(assert (not b!7072543))

(assert (not b!7072472))

(assert (not d!2211711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

