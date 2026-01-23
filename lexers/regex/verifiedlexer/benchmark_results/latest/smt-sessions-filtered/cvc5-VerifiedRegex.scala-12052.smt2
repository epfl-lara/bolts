; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676220 () Bool)

(assert start!676220)

(declare-fun b!7016203 () Bool)

(assert (=> b!7016203 true))

(declare-fun b!7016191 () Bool)

(assert (=> b!7016191 true))

(declare-fun b!7016198 () Bool)

(assert (=> b!7016198 true))

(declare-fun b!7016190 () Bool)

(declare-fun res!2863480 () Bool)

(declare-fun e!4217599 () Bool)

(assert (=> b!7016190 (=> (not res!2863480) (not e!4217599))))

(declare-datatypes ((C!34970 0))(
  ( (C!34971 (val!27187 Int)) )
))
(declare-datatypes ((List!67595 0))(
  ( (Nil!67471) (Cons!67471 (h!73919 C!34970) (t!381350 List!67595)) )
))
(declare-fun s!7408 () List!67595)

(assert (=> b!7016190 (= res!2863480 (is-Cons!67471 s!7408))))

(declare-fun e!4217595 () Bool)

(declare-fun e!4217597 () Bool)

(assert (=> b!7016191 (= e!4217595 e!4217597)))

(declare-fun res!2863479 () Bool)

(assert (=> b!7016191 (=> res!2863479 e!4217597)))

(declare-datatypes ((Regex!17350 0))(
  ( (ElementMatch!17350 (c!1303577 C!34970)) (Concat!26195 (regOne!35212 Regex!17350) (regTwo!35212 Regex!17350)) (EmptyExpr!17350) (Star!17350 (reg!17679 Regex!17350)) (EmptyLang!17350) (Union!17350 (regOne!35213 Regex!17350) (regTwo!35213 Regex!17350)) )
))
(declare-datatypes ((List!67596 0))(
  ( (Nil!67472) (Cons!67472 (h!73920 Regex!17350) (t!381351 List!67596)) )
))
(declare-datatypes ((Context!12692 0))(
  ( (Context!12693 (exprs!6846 List!67596)) )
))
(declare-fun lt!2508233 () Context!12692)

(declare-fun lt!2508238 () Context!12692)

(declare-fun lt!2508239 () Context!12692)

(declare-fun z1!570 () (Set Context!12692))

(assert (=> b!7016191 (= res!2863479 (or (not (= lt!2508233 lt!2508239)) (not (set.member lt!2508238 z1!570))))))

(declare-fun ct2!306 () Context!12692)

(declare-fun ++!15366 (List!67596 List!67596) List!67596)

(assert (=> b!7016191 (= lt!2508233 (Context!12693 (++!15366 (exprs!6846 lt!2508238) (exprs!6846 ct2!306))))))

(declare-fun lambda!409988 () Int)

(declare-datatypes ((Unit!161382 0))(
  ( (Unit!161383) )
))
(declare-fun lt!2508226 () Unit!161382)

(declare-fun lemmaConcatPreservesForall!686 (List!67596 List!67596 Int) Unit!161382)

(assert (=> b!7016191 (= lt!2508226 (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508238) (exprs!6846 ct2!306) lambda!409988))))

(declare-fun lambda!409987 () Int)

(declare-fun mapPost2!205 ((Set Context!12692) Int Context!12692) Context!12692)

(assert (=> b!7016191 (= lt!2508238 (mapPost2!205 z1!570 lambda!409987 lt!2508239))))

(declare-fun res!2863475 () Bool)

(assert (=> start!676220 (=> (not res!2863475) (not e!4217599))))

(declare-fun lt!2508224 () (Set Context!12692))

(declare-fun matchZipper!2890 ((Set Context!12692) List!67595) Bool)

(assert (=> start!676220 (= res!2863475 (matchZipper!2890 lt!2508224 s!7408))))

(declare-fun appendTo!471 ((Set Context!12692) Context!12692) (Set Context!12692))

(assert (=> start!676220 (= lt!2508224 (appendTo!471 z1!570 ct2!306))))

(assert (=> start!676220 e!4217599))

(declare-fun condSetEmpty!48525 () Bool)

(assert (=> start!676220 (= condSetEmpty!48525 (= z1!570 (as set.empty (Set Context!12692))))))

(declare-fun setRes!48525 () Bool)

(assert (=> start!676220 setRes!48525))

(declare-fun e!4217591 () Bool)

(declare-fun inv!86235 (Context!12692) Bool)

(assert (=> start!676220 (and (inv!86235 ct2!306) e!4217591)))

(declare-fun e!4217592 () Bool)

(assert (=> start!676220 e!4217592))

(declare-fun b!7016192 () Bool)

(declare-fun e!4217596 () Bool)

(declare-fun e!4217594 () Bool)

(assert (=> b!7016192 (= e!4217596 e!4217594)))

(declare-fun res!2863477 () Bool)

(assert (=> b!7016192 (=> res!2863477 e!4217594)))

(declare-fun nullable!7110 (Regex!17350) Bool)

(assert (=> b!7016192 (= res!2863477 (nullable!7110 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun lt!2508231 () Context!12692)

(declare-fun lt!2508227 () List!67596)

(assert (=> b!7016192 (= lt!2508231 (Context!12693 lt!2508227))))

(declare-fun tail!13440 (List!67596) List!67596)

(assert (=> b!7016192 (= lt!2508227 (tail!13440 (exprs!6846 lt!2508238)))))

(declare-fun b!7016193 () Bool)

(declare-fun tp!1933238 () Bool)

(assert (=> b!7016193 (= e!4217591 tp!1933238)))

(declare-fun b!7016194 () Bool)

(declare-fun e!4217598 () Bool)

(assert (=> b!7016194 (= e!4217597 e!4217598)))

(declare-fun res!2863476 () Bool)

(assert (=> b!7016194 (=> res!2863476 e!4217598)))

(declare-fun lt!2508229 () (Set Context!12692))

(declare-fun lt!2508240 () (Set Context!12692))

(assert (=> b!7016194 (= res!2863476 (not (= lt!2508229 lt!2508240)))))

(assert (=> b!7016194 (= lt!2508229 (set.insert lt!2508233 (as set.empty (Set Context!12692))))))

(declare-fun lt!2508237 () Unit!161382)

(assert (=> b!7016194 (= lt!2508237 (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508238) (exprs!6846 ct2!306) lambda!409988))))

(declare-fun b!7016195 () Bool)

(declare-fun e!4217593 () Bool)

(assert (=> b!7016195 (= e!4217594 e!4217593)))

(declare-fun res!2863482 () Bool)

(assert (=> b!7016195 (=> res!2863482 e!4217593)))

(declare-fun lt!2508241 () (Set Context!12692))

(assert (=> b!7016195 (= res!2863482 (not (matchZipper!2890 lt!2508241 (t!381350 s!7408))))))

(declare-fun derivationStepZipperDown!2068 (Regex!17350 Context!12692 C!34970) (Set Context!12692))

(assert (=> b!7016195 (= lt!2508241 (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306))) (h!73919 s!7408)))))

(declare-fun lt!2508235 () Unit!161382)

(assert (=> b!7016195 (= lt!2508235 (lemmaConcatPreservesForall!686 lt!2508227 (exprs!6846 ct2!306) lambda!409988))))

(declare-fun b!7016196 () Bool)

(declare-fun res!2863478 () Bool)

(assert (=> b!7016196 (=> res!2863478 e!4217596)))

(declare-fun isEmpty!39405 (List!67596) Bool)

(assert (=> b!7016196 (= res!2863478 (isEmpty!39405 (exprs!6846 lt!2508238)))))

(declare-fun b!7016197 () Bool)

(declare-fun ++!15367 (List!67595 List!67595) List!67595)

(assert (=> b!7016197 (= e!4217593 (= (++!15367 Nil!67471 (t!381350 s!7408)) (t!381350 s!7408)))))

(declare-fun lt!2508232 () (Set Context!12692))

(declare-datatypes ((tuple2!67982 0))(
  ( (tuple2!67983 (_1!37294 List!67595) (_2!37294 List!67595)) )
))
(declare-datatypes ((Option!16823 0))(
  ( (None!16822) (Some!16822 (v!53100 tuple2!67982)) )
))
(declare-fun isDefined!13524 (Option!16823) Bool)

(declare-fun findConcatSeparationZippers!339 ((Set Context!12692) (Set Context!12692) List!67595 List!67595 List!67595) Option!16823)

(assert (=> b!7016197 (isDefined!13524 (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) Nil!67471 (t!381350 s!7408) (t!381350 s!7408)))))

(declare-fun lt!2508236 () Unit!161382)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!339 ((Set Context!12692) Context!12692 List!67595) Unit!161382)

(assert (=> b!7016197 (= lt!2508236 (lemmaConcatZipperMatchesStringThenFindConcatDefined!339 lt!2508232 ct2!306 (t!381350 s!7408)))))

(assert (=> b!7016197 (= lt!2508241 (appendTo!471 lt!2508232 ct2!306))))

(assert (=> b!7016197 (= lt!2508232 (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) lt!2508231 (h!73919 s!7408)))))

(declare-fun lt!2508242 () Unit!161382)

(assert (=> b!7016197 (= lt!2508242 (lemmaConcatPreservesForall!686 lt!2508227 (exprs!6846 ct2!306) lambda!409988))))

(declare-fun lt!2508234 () Unit!161382)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!41 (Context!12692 Regex!17350 C!34970 Context!12692) Unit!161382)

(assert (=> b!7016197 (= lt!2508234 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!41 lt!2508231 (h!73920 (exprs!6846 lt!2508238)) (h!73919 s!7408) ct2!306))))

(assert (=> b!7016198 (= e!4217598 e!4217596)))

(declare-fun res!2863481 () Bool)

(assert (=> b!7016198 (=> res!2863481 e!4217596)))

(declare-fun lt!2508230 () (Set Context!12692))

(declare-fun derivationStepZipper!2830 ((Set Context!12692) C!34970) (Set Context!12692))

(assert (=> b!7016198 (= res!2863481 (not (= (derivationStepZipper!2830 lt!2508229 (h!73919 s!7408)) lt!2508230)))))

(declare-fun lambda!409989 () Int)

(declare-fun flatMap!2336 ((Set Context!12692) Int) (Set Context!12692))

(declare-fun derivationStepZipperUp!2000 (Context!12692 C!34970) (Set Context!12692))

(assert (=> b!7016198 (= (flatMap!2336 lt!2508229 lambda!409989) (derivationStepZipperUp!2000 lt!2508233 (h!73919 s!7408)))))

(declare-fun lt!2508243 () Unit!161382)

(declare-fun lemmaFlatMapOnSingletonSet!1851 ((Set Context!12692) Context!12692 Int) Unit!161382)

(assert (=> b!7016198 (= lt!2508243 (lemmaFlatMapOnSingletonSet!1851 lt!2508229 lt!2508233 lambda!409989))))

(assert (=> b!7016198 (= lt!2508230 (derivationStepZipperUp!2000 lt!2508233 (h!73919 s!7408)))))

(declare-fun lt!2508223 () Unit!161382)

(assert (=> b!7016198 (= lt!2508223 (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508238) (exprs!6846 ct2!306) lambda!409988))))

(declare-fun b!7016199 () Bool)

(declare-fun res!2863483 () Bool)

(assert (=> b!7016199 (=> res!2863483 e!4217596)))

(assert (=> b!7016199 (= res!2863483 (not (is-Cons!67472 (exprs!6846 lt!2508238))))))

(declare-fun b!7016200 () Bool)

(declare-fun tp_is_empty!43925 () Bool)

(declare-fun tp!1933236 () Bool)

(assert (=> b!7016200 (= e!4217592 (and tp_is_empty!43925 tp!1933236))))

(declare-fun b!7016201 () Bool)

(declare-fun res!2863484 () Bool)

(assert (=> b!7016201 (=> res!2863484 e!4217595)))

(assert (=> b!7016201 (= res!2863484 (not (set.member lt!2508239 lt!2508224)))))

(declare-fun setNonEmpty!48525 () Bool)

(declare-fun e!4217600 () Bool)

(declare-fun setElem!48525 () Context!12692)

(declare-fun tp!1933237 () Bool)

(assert (=> setNonEmpty!48525 (= setRes!48525 (and tp!1933237 (inv!86235 setElem!48525) e!4217600))))

(declare-fun setRest!48525 () (Set Context!12692))

(assert (=> setNonEmpty!48525 (= z1!570 (set.union (set.insert setElem!48525 (as set.empty (Set Context!12692))) setRest!48525))))

(declare-fun setIsEmpty!48525 () Bool)

(assert (=> setIsEmpty!48525 setRes!48525))

(declare-fun b!7016202 () Bool)

(declare-fun tp!1933239 () Bool)

(assert (=> b!7016202 (= e!4217600 tp!1933239)))

(assert (=> b!7016203 (= e!4217599 (not e!4217595))))

(declare-fun res!2863474 () Bool)

(assert (=> b!7016203 (=> res!2863474 e!4217595)))

(assert (=> b!7016203 (= res!2863474 (not (matchZipper!2890 lt!2508240 s!7408)))))

(assert (=> b!7016203 (= lt!2508240 (set.insert lt!2508239 (as set.empty (Set Context!12692))))))

(declare-fun lambda!409986 () Int)

(declare-fun getWitness!1307 ((Set Context!12692) Int) Context!12692)

(assert (=> b!7016203 (= lt!2508239 (getWitness!1307 lt!2508224 lambda!409986))))

(declare-datatypes ((List!67597 0))(
  ( (Nil!67473) (Cons!67473 (h!73921 Context!12692) (t!381352 List!67597)) )
))
(declare-fun lt!2508228 () List!67597)

(declare-fun exists!3214 (List!67597 Int) Bool)

(assert (=> b!7016203 (exists!3214 lt!2508228 lambda!409986)))

(declare-fun lt!2508225 () Unit!161382)

(declare-fun lemmaZipperMatchesExistsMatchingContext!319 (List!67597 List!67595) Unit!161382)

(assert (=> b!7016203 (= lt!2508225 (lemmaZipperMatchesExistsMatchingContext!319 lt!2508228 s!7408))))

(declare-fun toList!10710 ((Set Context!12692)) List!67597)

(assert (=> b!7016203 (= lt!2508228 (toList!10710 lt!2508224))))

(assert (= (and start!676220 res!2863475) b!7016190))

(assert (= (and b!7016190 res!2863480) b!7016203))

(assert (= (and b!7016203 (not res!2863474)) b!7016201))

(assert (= (and b!7016201 (not res!2863484)) b!7016191))

(assert (= (and b!7016191 (not res!2863479)) b!7016194))

(assert (= (and b!7016194 (not res!2863476)) b!7016198))

(assert (= (and b!7016198 (not res!2863481)) b!7016199))

(assert (= (and b!7016199 (not res!2863483)) b!7016196))

(assert (= (and b!7016196 (not res!2863478)) b!7016192))

(assert (= (and b!7016192 (not res!2863477)) b!7016195))

(assert (= (and b!7016195 (not res!2863482)) b!7016197))

(assert (= (and start!676220 condSetEmpty!48525) setIsEmpty!48525))

(assert (= (and start!676220 (not condSetEmpty!48525)) setNonEmpty!48525))

(assert (= setNonEmpty!48525 b!7016202))

(assert (= start!676220 b!7016193))

(assert (= (and start!676220 (is-Cons!67471 s!7408)) b!7016200))

(declare-fun m!7715800 () Bool)

(assert (=> b!7016203 m!7715800))

(declare-fun m!7715802 () Bool)

(assert (=> b!7016203 m!7715802))

(declare-fun m!7715804 () Bool)

(assert (=> b!7016203 m!7715804))

(declare-fun m!7715806 () Bool)

(assert (=> b!7016203 m!7715806))

(declare-fun m!7715808 () Bool)

(assert (=> b!7016203 m!7715808))

(declare-fun m!7715810 () Bool)

(assert (=> b!7016203 m!7715810))

(declare-fun m!7715812 () Bool)

(assert (=> b!7016192 m!7715812))

(declare-fun m!7715814 () Bool)

(assert (=> b!7016192 m!7715814))

(declare-fun m!7715816 () Bool)

(assert (=> b!7016191 m!7715816))

(declare-fun m!7715818 () Bool)

(assert (=> b!7016191 m!7715818))

(declare-fun m!7715820 () Bool)

(assert (=> b!7016191 m!7715820))

(declare-fun m!7715822 () Bool)

(assert (=> b!7016191 m!7715822))

(declare-fun m!7715824 () Bool)

(assert (=> b!7016197 m!7715824))

(declare-fun m!7715826 () Bool)

(assert (=> b!7016197 m!7715826))

(declare-fun m!7715828 () Bool)

(assert (=> b!7016197 m!7715828))

(declare-fun m!7715830 () Bool)

(assert (=> b!7016197 m!7715830))

(assert (=> b!7016197 m!7715824))

(assert (=> b!7016197 m!7715826))

(declare-fun m!7715832 () Bool)

(assert (=> b!7016197 m!7715832))

(declare-fun m!7715834 () Bool)

(assert (=> b!7016197 m!7715834))

(declare-fun m!7715836 () Bool)

(assert (=> b!7016197 m!7715836))

(declare-fun m!7715838 () Bool)

(assert (=> b!7016197 m!7715838))

(declare-fun m!7715840 () Bool)

(assert (=> b!7016197 m!7715840))

(declare-fun m!7715842 () Bool)

(assert (=> setNonEmpty!48525 m!7715842))

(declare-fun m!7715844 () Bool)

(assert (=> b!7016198 m!7715844))

(declare-fun m!7715846 () Bool)

(assert (=> b!7016198 m!7715846))

(declare-fun m!7715848 () Bool)

(assert (=> b!7016198 m!7715848))

(assert (=> b!7016198 m!7715820))

(declare-fun m!7715850 () Bool)

(assert (=> b!7016198 m!7715850))

(declare-fun m!7715852 () Bool)

(assert (=> b!7016201 m!7715852))

(declare-fun m!7715854 () Bool)

(assert (=> start!676220 m!7715854))

(declare-fun m!7715856 () Bool)

(assert (=> start!676220 m!7715856))

(declare-fun m!7715858 () Bool)

(assert (=> start!676220 m!7715858))

(declare-fun m!7715860 () Bool)

(assert (=> b!7016195 m!7715860))

(declare-fun m!7715862 () Bool)

(assert (=> b!7016195 m!7715862))

(declare-fun m!7715864 () Bool)

(assert (=> b!7016195 m!7715864))

(assert (=> b!7016195 m!7715838))

(declare-fun m!7715866 () Bool)

(assert (=> b!7016194 m!7715866))

(assert (=> b!7016194 m!7715820))

(declare-fun m!7715868 () Bool)

(assert (=> b!7016196 m!7715868))

(push 1)

(assert (not b!7016202))

(assert tp_is_empty!43925)

(assert (not b!7016191))

(assert (not b!7016194))

(assert (not b!7016200))

(assert (not b!7016195))

(assert (not b!7016198))

(assert (not setNonEmpty!48525))

(assert (not b!7016193))

(assert (not b!7016197))

(assert (not b!7016196))

(assert (not b!7016203))

(assert (not start!676220))

(assert (not b!7016192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2187137 () Bool)

(declare-fun c!1303589 () Bool)

(declare-fun isEmpty!39407 (List!67595) Bool)

(assert (=> d!2187137 (= c!1303589 (isEmpty!39407 (t!381350 s!7408)))))

(declare-fun e!4217633 () Bool)

(assert (=> d!2187137 (= (matchZipper!2890 lt!2508241 (t!381350 s!7408)) e!4217633)))

(declare-fun b!7016262 () Bool)

(declare-fun nullableZipper!2503 ((Set Context!12692)) Bool)

(assert (=> b!7016262 (= e!4217633 (nullableZipper!2503 lt!2508241))))

(declare-fun b!7016263 () Bool)

(declare-fun head!14193 (List!67595) C!34970)

(declare-fun tail!13442 (List!67595) List!67595)

(assert (=> b!7016263 (= e!4217633 (matchZipper!2890 (derivationStepZipper!2830 lt!2508241 (head!14193 (t!381350 s!7408))) (tail!13442 (t!381350 s!7408))))))

(assert (= (and d!2187137 c!1303589) b!7016262))

(assert (= (and d!2187137 (not c!1303589)) b!7016263))

(declare-fun m!7715940 () Bool)

(assert (=> d!2187137 m!7715940))

(declare-fun m!7715942 () Bool)

(assert (=> b!7016262 m!7715942))

(declare-fun m!7715944 () Bool)

(assert (=> b!7016263 m!7715944))

(assert (=> b!7016263 m!7715944))

(declare-fun m!7715946 () Bool)

(assert (=> b!7016263 m!7715946))

(declare-fun m!7715948 () Bool)

(assert (=> b!7016263 m!7715948))

(assert (=> b!7016263 m!7715946))

(assert (=> b!7016263 m!7715948))

(declare-fun m!7715950 () Bool)

(assert (=> b!7016263 m!7715950))

(assert (=> b!7016195 d!2187137))

(declare-fun b!7016286 () Bool)

(declare-fun e!4217646 () (Set Context!12692))

(declare-fun call!637300 () (Set Context!12692))

(declare-fun call!637302 () (Set Context!12692))

(assert (=> b!7016286 (= e!4217646 (set.union call!637300 call!637302))))

(declare-fun b!7016287 () Bool)

(declare-fun e!4217651 () (Set Context!12692))

(assert (=> b!7016287 (= e!4217651 (set.insert (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306))) (as set.empty (Set Context!12692))))))

(declare-fun b!7016288 () Bool)

(declare-fun e!4217649 () (Set Context!12692))

(declare-fun e!4217648 () (Set Context!12692))

(assert (=> b!7016288 (= e!4217649 e!4217648)))

(declare-fun c!1303604 () Bool)

(assert (=> b!7016288 (= c!1303604 (is-Concat!26195 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun bm!637292 () Bool)

(declare-fun call!637299 () (Set Context!12692))

(declare-fun call!637297 () (Set Context!12692))

(assert (=> bm!637292 (= call!637299 call!637297)))

(declare-fun b!7016289 () Bool)

(declare-fun e!4217650 () (Set Context!12692))

(assert (=> b!7016289 (= e!4217650 call!637299)))

(declare-fun b!7016290 () Bool)

(declare-fun c!1303600 () Bool)

(assert (=> b!7016290 (= c!1303600 (is-Star!17350 (h!73920 (exprs!6846 lt!2508238))))))

(assert (=> b!7016290 (= e!4217648 e!4217650)))

(declare-fun c!1303602 () Bool)

(declare-fun call!637298 () List!67596)

(declare-fun bm!637293 () Bool)

(assert (=> bm!637293 (= call!637302 (derivationStepZipperDown!2068 (ite c!1303602 (regTwo!35213 (h!73920 (exprs!6846 lt!2508238))) (regOne!35212 (h!73920 (exprs!6846 lt!2508238)))) (ite c!1303602 (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306))) (Context!12693 call!637298)) (h!73919 s!7408)))))

(declare-fun b!7016291 () Bool)

(assert (=> b!7016291 (= e!4217651 e!4217646)))

(assert (=> b!7016291 (= c!1303602 (is-Union!17350 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun b!7016292 () Bool)

(assert (=> b!7016292 (= e!4217649 (set.union call!637302 call!637297))))

(declare-fun bm!637294 () Bool)

(assert (=> bm!637294 (= call!637297 call!637300)))

(declare-fun bm!637295 () Bool)

(declare-fun call!637301 () List!67596)

(assert (=> bm!637295 (= call!637301 call!637298)))

(declare-fun d!2187139 () Bool)

(declare-fun c!1303601 () Bool)

(assert (=> d!2187139 (= c!1303601 (and (is-ElementMatch!17350 (h!73920 (exprs!6846 lt!2508238))) (= (c!1303577 (h!73920 (exprs!6846 lt!2508238))) (h!73919 s!7408))))))

(assert (=> d!2187139 (= (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306))) (h!73919 s!7408)) e!4217651)))

(declare-fun b!7016293 () Bool)

(assert (=> b!7016293 (= e!4217650 (as set.empty (Set Context!12692)))))

(declare-fun b!7016294 () Bool)

(assert (=> b!7016294 (= e!4217648 call!637299)))

(declare-fun c!1303603 () Bool)

(declare-fun bm!637296 () Bool)

(assert (=> bm!637296 (= call!637300 (derivationStepZipperDown!2068 (ite c!1303602 (regOne!35213 (h!73920 (exprs!6846 lt!2508238))) (ite c!1303603 (regTwo!35212 (h!73920 (exprs!6846 lt!2508238))) (ite c!1303604 (regOne!35212 (h!73920 (exprs!6846 lt!2508238))) (reg!17679 (h!73920 (exprs!6846 lt!2508238)))))) (ite (or c!1303602 c!1303603) (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306))) (Context!12693 call!637301)) (h!73919 s!7408)))))

(declare-fun b!7016295 () Bool)

(declare-fun e!4217647 () Bool)

(assert (=> b!7016295 (= e!4217647 (nullable!7110 (regOne!35212 (h!73920 (exprs!6846 lt!2508238)))))))

(declare-fun b!7016296 () Bool)

(assert (=> b!7016296 (= c!1303603 e!4217647)))

(declare-fun res!2863522 () Bool)

(assert (=> b!7016296 (=> (not res!2863522) (not e!4217647))))

(assert (=> b!7016296 (= res!2863522 (is-Concat!26195 (h!73920 (exprs!6846 lt!2508238))))))

(assert (=> b!7016296 (= e!4217646 e!4217649)))

(declare-fun bm!637297 () Bool)

(declare-fun $colon$colon!2543 (List!67596 Regex!17350) List!67596)

(assert (=> bm!637297 (= call!637298 ($colon$colon!2543 (exprs!6846 (Context!12693 (++!15366 lt!2508227 (exprs!6846 ct2!306)))) (ite (or c!1303603 c!1303604) (regTwo!35212 (h!73920 (exprs!6846 lt!2508238))) (h!73920 (exprs!6846 lt!2508238)))))))

(assert (= (and d!2187139 c!1303601) b!7016287))

(assert (= (and d!2187139 (not c!1303601)) b!7016291))

(assert (= (and b!7016291 c!1303602) b!7016286))

(assert (= (and b!7016291 (not c!1303602)) b!7016296))

(assert (= (and b!7016296 res!2863522) b!7016295))

(assert (= (and b!7016296 c!1303603) b!7016292))

(assert (= (and b!7016296 (not c!1303603)) b!7016288))

(assert (= (and b!7016288 c!1303604) b!7016294))

(assert (= (and b!7016288 (not c!1303604)) b!7016290))

(assert (= (and b!7016290 c!1303600) b!7016289))

(assert (= (and b!7016290 (not c!1303600)) b!7016293))

(assert (= (or b!7016294 b!7016289) bm!637295))

(assert (= (or b!7016294 b!7016289) bm!637292))

(assert (= (or b!7016292 bm!637292) bm!637294))

(assert (= (or b!7016292 bm!637295) bm!637297))

(assert (= (or b!7016286 bm!637294) bm!637296))

(assert (= (or b!7016286 b!7016292) bm!637293))

(declare-fun m!7715952 () Bool)

(assert (=> b!7016287 m!7715952))

(declare-fun m!7715954 () Bool)

(assert (=> b!7016295 m!7715954))

(declare-fun m!7715956 () Bool)

(assert (=> bm!637296 m!7715956))

(declare-fun m!7715958 () Bool)

(assert (=> bm!637297 m!7715958))

(declare-fun m!7715960 () Bool)

(assert (=> bm!637293 m!7715960))

(assert (=> b!7016195 d!2187139))

(declare-fun b!7016305 () Bool)

(declare-fun e!4217657 () List!67596)

(assert (=> b!7016305 (= e!4217657 (exprs!6846 ct2!306))))

(declare-fun d!2187143 () Bool)

(declare-fun e!4217656 () Bool)

(assert (=> d!2187143 e!4217656))

(declare-fun res!2863527 () Bool)

(assert (=> d!2187143 (=> (not res!2863527) (not e!4217656))))

(declare-fun lt!2508311 () List!67596)

(declare-fun content!13413 (List!67596) (Set Regex!17350))

(assert (=> d!2187143 (= res!2863527 (= (content!13413 lt!2508311) (set.union (content!13413 lt!2508227) (content!13413 (exprs!6846 ct2!306)))))))

(assert (=> d!2187143 (= lt!2508311 e!4217657)))

(declare-fun c!1303607 () Bool)

(assert (=> d!2187143 (= c!1303607 (is-Nil!67472 lt!2508227))))

(assert (=> d!2187143 (= (++!15366 lt!2508227 (exprs!6846 ct2!306)) lt!2508311)))

(declare-fun b!7016307 () Bool)

(declare-fun res!2863528 () Bool)

(assert (=> b!7016307 (=> (not res!2863528) (not e!4217656))))

(declare-fun size!40995 (List!67596) Int)

(assert (=> b!7016307 (= res!2863528 (= (size!40995 lt!2508311) (+ (size!40995 lt!2508227) (size!40995 (exprs!6846 ct2!306)))))))

(declare-fun b!7016308 () Bool)

(assert (=> b!7016308 (= e!4217656 (or (not (= (exprs!6846 ct2!306) Nil!67472)) (= lt!2508311 lt!2508227)))))

(declare-fun b!7016306 () Bool)

(assert (=> b!7016306 (= e!4217657 (Cons!67472 (h!73920 lt!2508227) (++!15366 (t!381351 lt!2508227) (exprs!6846 ct2!306))))))

(assert (= (and d!2187143 c!1303607) b!7016305))

(assert (= (and d!2187143 (not c!1303607)) b!7016306))

(assert (= (and d!2187143 res!2863527) b!7016307))

(assert (= (and b!7016307 res!2863528) b!7016308))

(declare-fun m!7715964 () Bool)

(assert (=> d!2187143 m!7715964))

(declare-fun m!7715966 () Bool)

(assert (=> d!2187143 m!7715966))

(declare-fun m!7715968 () Bool)

(assert (=> d!2187143 m!7715968))

(declare-fun m!7715970 () Bool)

(assert (=> b!7016307 m!7715970))

(declare-fun m!7715972 () Bool)

(assert (=> b!7016307 m!7715972))

(declare-fun m!7715974 () Bool)

(assert (=> b!7016307 m!7715974))

(declare-fun m!7715976 () Bool)

(assert (=> b!7016306 m!7715976))

(assert (=> b!7016195 d!2187143))

(declare-fun d!2187147 () Bool)

(declare-fun forall!16266 (List!67596 Int) Bool)

(assert (=> d!2187147 (forall!16266 (++!15366 lt!2508227 (exprs!6846 ct2!306)) lambda!409988)))

(declare-fun lt!2508314 () Unit!161382)

(declare-fun choose!52831 (List!67596 List!67596 Int) Unit!161382)

(assert (=> d!2187147 (= lt!2508314 (choose!52831 lt!2508227 (exprs!6846 ct2!306) lambda!409988))))

(assert (=> d!2187147 (forall!16266 lt!2508227 lambda!409988)))

(assert (=> d!2187147 (= (lemmaConcatPreservesForall!686 lt!2508227 (exprs!6846 ct2!306) lambda!409988) lt!2508314)))

(declare-fun bs!1866887 () Bool)

(assert (= bs!1866887 d!2187147))

(assert (=> bs!1866887 m!7715862))

(assert (=> bs!1866887 m!7715862))

(declare-fun m!7715978 () Bool)

(assert (=> bs!1866887 m!7715978))

(declare-fun m!7715980 () Bool)

(assert (=> bs!1866887 m!7715980))

(declare-fun m!7715982 () Bool)

(assert (=> bs!1866887 m!7715982))

(assert (=> b!7016195 d!2187147))

(declare-fun d!2187149 () Bool)

(declare-fun e!4217662 () Bool)

(assert (=> d!2187149 e!4217662))

(declare-fun res!2863531 () Bool)

(assert (=> d!2187149 (=> (not res!2863531) (not e!4217662))))

(declare-fun lt!2508319 () List!67597)

(declare-fun noDuplicate!2581 (List!67597) Bool)

(assert (=> d!2187149 (= res!2863531 (noDuplicate!2581 lt!2508319))))

(declare-fun choose!52832 ((Set Context!12692)) List!67597)

(assert (=> d!2187149 (= lt!2508319 (choose!52832 lt!2508224))))

(assert (=> d!2187149 (= (toList!10710 lt!2508224) lt!2508319)))

(declare-fun b!7016315 () Bool)

(declare-fun content!13414 (List!67597) (Set Context!12692))

(assert (=> b!7016315 (= e!4217662 (= (content!13414 lt!2508319) lt!2508224))))

(assert (= (and d!2187149 res!2863531) b!7016315))

(declare-fun m!7715984 () Bool)

(assert (=> d!2187149 m!7715984))

(declare-fun m!7715986 () Bool)

(assert (=> d!2187149 m!7715986))

(declare-fun m!7715988 () Bool)

(assert (=> b!7016315 m!7715988))

(assert (=> b!7016203 d!2187149))

(declare-fun d!2187151 () Bool)

(declare-fun e!4217667 () Bool)

(assert (=> d!2187151 e!4217667))

(declare-fun res!2863538 () Bool)

(assert (=> d!2187151 (=> (not res!2863538) (not e!4217667))))

(declare-fun lt!2508322 () Context!12692)

(declare-fun dynLambda!27169 (Int Context!12692) Bool)

(assert (=> d!2187151 (= res!2863538 (dynLambda!27169 lambda!409986 lt!2508322))))

(declare-fun getWitness!1309 (List!67597 Int) Context!12692)

(assert (=> d!2187151 (= lt!2508322 (getWitness!1309 (toList!10710 lt!2508224) lambda!409986))))

(declare-fun exists!3216 ((Set Context!12692) Int) Bool)

(assert (=> d!2187151 (exists!3216 lt!2508224 lambda!409986)))

(assert (=> d!2187151 (= (getWitness!1307 lt!2508224 lambda!409986) lt!2508322)))

(declare-fun b!7016322 () Bool)

(assert (=> b!7016322 (= e!4217667 (set.member lt!2508322 lt!2508224))))

(assert (= (and d!2187151 res!2863538) b!7016322))

(declare-fun b_lambda!264795 () Bool)

(assert (=> (not b_lambda!264795) (not d!2187151)))

(declare-fun m!7715990 () Bool)

(assert (=> d!2187151 m!7715990))

(assert (=> d!2187151 m!7715802))

(assert (=> d!2187151 m!7715802))

(declare-fun m!7715992 () Bool)

(assert (=> d!2187151 m!7715992))

(declare-fun m!7715994 () Bool)

(assert (=> d!2187151 m!7715994))

(declare-fun m!7715996 () Bool)

(assert (=> b!7016322 m!7715996))

(assert (=> b!7016203 d!2187151))

(declare-fun bs!1866888 () Bool)

(declare-fun d!2187153 () Bool)

(assert (= bs!1866888 (and d!2187153 b!7016203)))

(declare-fun lambda!410019 () Int)

(assert (=> bs!1866888 (= lambda!410019 lambda!409986)))

(assert (=> d!2187153 true))

(assert (=> d!2187153 (exists!3214 lt!2508228 lambda!410019)))

(declare-fun lt!2508326 () Unit!161382)

(declare-fun choose!52833 (List!67597 List!67595) Unit!161382)

(assert (=> d!2187153 (= lt!2508326 (choose!52833 lt!2508228 s!7408))))

(assert (=> d!2187153 (matchZipper!2890 (content!13414 lt!2508228) s!7408)))

(assert (=> d!2187153 (= (lemmaZipperMatchesExistsMatchingContext!319 lt!2508228 s!7408) lt!2508326)))

(declare-fun bs!1866889 () Bool)

(assert (= bs!1866889 d!2187153))

(declare-fun m!7716012 () Bool)

(assert (=> bs!1866889 m!7716012))

(declare-fun m!7716014 () Bool)

(assert (=> bs!1866889 m!7716014))

(declare-fun m!7716016 () Bool)

(assert (=> bs!1866889 m!7716016))

(assert (=> bs!1866889 m!7716016))

(declare-fun m!7716018 () Bool)

(assert (=> bs!1866889 m!7716018))

(assert (=> b!7016203 d!2187153))

(declare-fun d!2187157 () Bool)

(declare-fun c!1303613 () Bool)

(assert (=> d!2187157 (= c!1303613 (isEmpty!39407 s!7408))))

(declare-fun e!4217670 () Bool)

(assert (=> d!2187157 (= (matchZipper!2890 lt!2508240 s!7408) e!4217670)))

(declare-fun b!7016327 () Bool)

(assert (=> b!7016327 (= e!4217670 (nullableZipper!2503 lt!2508240))))

(declare-fun b!7016328 () Bool)

(assert (=> b!7016328 (= e!4217670 (matchZipper!2890 (derivationStepZipper!2830 lt!2508240 (head!14193 s!7408)) (tail!13442 s!7408)))))

(assert (= (and d!2187157 c!1303613) b!7016327))

(assert (= (and d!2187157 (not c!1303613)) b!7016328))

(declare-fun m!7716020 () Bool)

(assert (=> d!2187157 m!7716020))

(declare-fun m!7716022 () Bool)

(assert (=> b!7016327 m!7716022))

(declare-fun m!7716024 () Bool)

(assert (=> b!7016328 m!7716024))

(assert (=> b!7016328 m!7716024))

(declare-fun m!7716026 () Bool)

(assert (=> b!7016328 m!7716026))

(declare-fun m!7716028 () Bool)

(assert (=> b!7016328 m!7716028))

(assert (=> b!7016328 m!7716026))

(assert (=> b!7016328 m!7716028))

(declare-fun m!7716030 () Bool)

(assert (=> b!7016328 m!7716030))

(assert (=> b!7016203 d!2187157))

(declare-fun bs!1866891 () Bool)

(declare-fun d!2187159 () Bool)

(assert (= bs!1866891 (and d!2187159 b!7016203)))

(declare-fun lambda!410022 () Int)

(assert (=> bs!1866891 (not (= lambda!410022 lambda!409986))))

(declare-fun bs!1866892 () Bool)

(assert (= bs!1866892 (and d!2187159 d!2187153)))

(assert (=> bs!1866892 (not (= lambda!410022 lambda!410019))))

(assert (=> d!2187159 true))

(declare-fun order!28065 () Int)

(declare-fun dynLambda!27170 (Int Int) Int)

(assert (=> d!2187159 (< (dynLambda!27170 order!28065 lambda!409986) (dynLambda!27170 order!28065 lambda!410022))))

(declare-fun forall!16267 (List!67597 Int) Bool)

(assert (=> d!2187159 (= (exists!3214 lt!2508228 lambda!409986) (not (forall!16267 lt!2508228 lambda!410022)))))

(declare-fun bs!1866893 () Bool)

(assert (= bs!1866893 d!2187159))

(declare-fun m!7716038 () Bool)

(assert (=> bs!1866893 m!7716038))

(assert (=> b!7016203 d!2187159))

(declare-fun bs!1866894 () Bool)

(declare-fun d!2187163 () Bool)

(assert (= bs!1866894 (and d!2187163 b!7016191)))

(declare-fun lambda!410025 () Int)

(assert (=> bs!1866894 (= lambda!410025 lambda!409988)))

(assert (=> d!2187163 (= (inv!86235 setElem!48525) (forall!16266 (exprs!6846 setElem!48525) lambda!410025))))

(declare-fun bs!1866895 () Bool)

(assert (= bs!1866895 d!2187163))

(declare-fun m!7716040 () Bool)

(assert (=> bs!1866895 m!7716040))

(assert (=> setNonEmpty!48525 d!2187163))

(declare-fun b!7016331 () Bool)

(declare-fun e!4217672 () List!67596)

(assert (=> b!7016331 (= e!4217672 (exprs!6846 ct2!306))))

(declare-fun d!2187165 () Bool)

(declare-fun e!4217671 () Bool)

(assert (=> d!2187165 e!4217671))

(declare-fun res!2863541 () Bool)

(assert (=> d!2187165 (=> (not res!2863541) (not e!4217671))))

(declare-fun lt!2508330 () List!67596)

(assert (=> d!2187165 (= res!2863541 (= (content!13413 lt!2508330) (set.union (content!13413 (exprs!6846 lt!2508238)) (content!13413 (exprs!6846 ct2!306)))))))

(assert (=> d!2187165 (= lt!2508330 e!4217672)))

(declare-fun c!1303614 () Bool)

(assert (=> d!2187165 (= c!1303614 (is-Nil!67472 (exprs!6846 lt!2508238)))))

(assert (=> d!2187165 (= (++!15366 (exprs!6846 lt!2508238) (exprs!6846 ct2!306)) lt!2508330)))

(declare-fun b!7016333 () Bool)

(declare-fun res!2863542 () Bool)

(assert (=> b!7016333 (=> (not res!2863542) (not e!4217671))))

(assert (=> b!7016333 (= res!2863542 (= (size!40995 lt!2508330) (+ (size!40995 (exprs!6846 lt!2508238)) (size!40995 (exprs!6846 ct2!306)))))))

(declare-fun b!7016334 () Bool)

(assert (=> b!7016334 (= e!4217671 (or (not (= (exprs!6846 ct2!306) Nil!67472)) (= lt!2508330 (exprs!6846 lt!2508238))))))

(declare-fun b!7016332 () Bool)

(assert (=> b!7016332 (= e!4217672 (Cons!67472 (h!73920 (exprs!6846 lt!2508238)) (++!15366 (t!381351 (exprs!6846 lt!2508238)) (exprs!6846 ct2!306))))))

(assert (= (and d!2187165 c!1303614) b!7016331))

(assert (= (and d!2187165 (not c!1303614)) b!7016332))

(assert (= (and d!2187165 res!2863541) b!7016333))

(assert (= (and b!7016333 res!2863542) b!7016334))

(declare-fun m!7716042 () Bool)

(assert (=> d!2187165 m!7716042))

(declare-fun m!7716044 () Bool)

(assert (=> d!2187165 m!7716044))

(assert (=> d!2187165 m!7715968))

(declare-fun m!7716046 () Bool)

(assert (=> b!7016333 m!7716046))

(declare-fun m!7716048 () Bool)

(assert (=> b!7016333 m!7716048))

(assert (=> b!7016333 m!7715974))

(declare-fun m!7716050 () Bool)

(assert (=> b!7016332 m!7716050))

(assert (=> b!7016191 d!2187165))

(declare-fun d!2187167 () Bool)

(assert (=> d!2187167 (forall!16266 (++!15366 (exprs!6846 lt!2508238) (exprs!6846 ct2!306)) lambda!409988)))

(declare-fun lt!2508331 () Unit!161382)

(assert (=> d!2187167 (= lt!2508331 (choose!52831 (exprs!6846 lt!2508238) (exprs!6846 ct2!306) lambda!409988))))

(assert (=> d!2187167 (forall!16266 (exprs!6846 lt!2508238) lambda!409988)))

(assert (=> d!2187167 (= (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508238) (exprs!6846 ct2!306) lambda!409988) lt!2508331)))

(declare-fun bs!1866896 () Bool)

(assert (= bs!1866896 d!2187167))

(assert (=> bs!1866896 m!7715818))

(assert (=> bs!1866896 m!7715818))

(declare-fun m!7716052 () Bool)

(assert (=> bs!1866896 m!7716052))

(declare-fun m!7716054 () Bool)

(assert (=> bs!1866896 m!7716054))

(declare-fun m!7716056 () Bool)

(assert (=> bs!1866896 m!7716056))

(assert (=> b!7016191 d!2187167))

(declare-fun d!2187169 () Bool)

(declare-fun e!4217677 () Bool)

(assert (=> d!2187169 e!4217677))

(declare-fun res!2863547 () Bool)

(assert (=> d!2187169 (=> (not res!2863547) (not e!4217677))))

(declare-fun lt!2508336 () Context!12692)

(declare-fun dynLambda!27171 (Int Context!12692) Context!12692)

(assert (=> d!2187169 (= res!2863547 (= lt!2508239 (dynLambda!27171 lambda!409987 lt!2508336)))))

(declare-fun choose!52834 ((Set Context!12692) Int Context!12692) Context!12692)

(assert (=> d!2187169 (= lt!2508336 (choose!52834 z1!570 lambda!409987 lt!2508239))))

(declare-fun map!15643 ((Set Context!12692) Int) (Set Context!12692))

(assert (=> d!2187169 (set.member lt!2508239 (map!15643 z1!570 lambda!409987))))

(assert (=> d!2187169 (= (mapPost2!205 z1!570 lambda!409987 lt!2508239) lt!2508336)))

(declare-fun b!7016341 () Bool)

(assert (=> b!7016341 (= e!4217677 (set.member lt!2508336 z1!570))))

(assert (= (and d!2187169 res!2863547) b!7016341))

(declare-fun b_lambda!264797 () Bool)

(assert (=> (not b_lambda!264797) (not d!2187169)))

(declare-fun m!7716058 () Bool)

(assert (=> d!2187169 m!7716058))

(declare-fun m!7716060 () Bool)

(assert (=> d!2187169 m!7716060))

(declare-fun m!7716062 () Bool)

(assert (=> d!2187169 m!7716062))

(declare-fun m!7716064 () Bool)

(assert (=> d!2187169 m!7716064))

(declare-fun m!7716066 () Bool)

(assert (=> b!7016341 m!7716066))

(assert (=> b!7016191 d!2187169))

(declare-fun d!2187171 () Bool)

(assert (=> d!2187171 (= (isEmpty!39405 (exprs!6846 lt!2508238)) (is-Nil!67472 (exprs!6846 lt!2508238)))))

(assert (=> b!7016196 d!2187171))

(declare-fun bs!1866897 () Bool)

(declare-fun d!2187173 () Bool)

(assert (= bs!1866897 (and d!2187173 b!7016198)))

(declare-fun lambda!410028 () Int)

(assert (=> bs!1866897 (= lambda!410028 lambda!409989)))

(assert (=> d!2187173 true))

(assert (=> d!2187173 (= (derivationStepZipper!2830 lt!2508229 (h!73919 s!7408)) (flatMap!2336 lt!2508229 lambda!410028))))

(declare-fun bs!1866898 () Bool)

(assert (= bs!1866898 d!2187173))

(declare-fun m!7716078 () Bool)

(assert (=> bs!1866898 m!7716078))

(assert (=> b!7016198 d!2187173))

(declare-fun bm!637300 () Bool)

(declare-fun call!637305 () (Set Context!12692))

(assert (=> bm!637300 (= call!637305 (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508233)) (Context!12693 (t!381351 (exprs!6846 lt!2508233))) (h!73919 s!7408)))))

(declare-fun b!7016355 () Bool)

(declare-fun e!4217687 () (Set Context!12692))

(assert (=> b!7016355 (= e!4217687 call!637305)))

(declare-fun b!7016356 () Bool)

(declare-fun e!4217685 () (Set Context!12692))

(assert (=> b!7016356 (= e!4217685 e!4217687)))

(declare-fun c!1303623 () Bool)

(assert (=> b!7016356 (= c!1303623 (is-Cons!67472 (exprs!6846 lt!2508233)))))

(declare-fun d!2187179 () Bool)

(declare-fun c!1303624 () Bool)

(declare-fun e!4217686 () Bool)

(assert (=> d!2187179 (= c!1303624 e!4217686)))

(declare-fun res!2863551 () Bool)

(assert (=> d!2187179 (=> (not res!2863551) (not e!4217686))))

(assert (=> d!2187179 (= res!2863551 (is-Cons!67472 (exprs!6846 lt!2508233)))))

(assert (=> d!2187179 (= (derivationStepZipperUp!2000 lt!2508233 (h!73919 s!7408)) e!4217685)))

(declare-fun b!7016357 () Bool)

(assert (=> b!7016357 (= e!4217687 (as set.empty (Set Context!12692)))))

(declare-fun b!7016358 () Bool)

(assert (=> b!7016358 (= e!4217686 (nullable!7110 (h!73920 (exprs!6846 lt!2508233))))))

(declare-fun b!7016359 () Bool)

(assert (=> b!7016359 (= e!4217685 (set.union call!637305 (derivationStepZipperUp!2000 (Context!12693 (t!381351 (exprs!6846 lt!2508233))) (h!73919 s!7408))))))

(assert (= (and d!2187179 res!2863551) b!7016358))

(assert (= (and d!2187179 c!1303624) b!7016359))

(assert (= (and d!2187179 (not c!1303624)) b!7016356))

(assert (= (and b!7016356 c!1303623) b!7016355))

(assert (= (and b!7016356 (not c!1303623)) b!7016357))

(assert (= (or b!7016359 b!7016355) bm!637300))

(declare-fun m!7716082 () Bool)

(assert (=> bm!637300 m!7716082))

(declare-fun m!7716084 () Bool)

(assert (=> b!7016358 m!7716084))

(declare-fun m!7716086 () Bool)

(assert (=> b!7016359 m!7716086))

(assert (=> b!7016198 d!2187179))

(declare-fun d!2187183 () Bool)

(declare-fun dynLambda!27172 (Int Context!12692) (Set Context!12692))

(assert (=> d!2187183 (= (flatMap!2336 lt!2508229 lambda!409989) (dynLambda!27172 lambda!409989 lt!2508233))))

(declare-fun lt!2508340 () Unit!161382)

(declare-fun choose!52835 ((Set Context!12692) Context!12692 Int) Unit!161382)

(assert (=> d!2187183 (= lt!2508340 (choose!52835 lt!2508229 lt!2508233 lambda!409989))))

(assert (=> d!2187183 (= lt!2508229 (set.insert lt!2508233 (as set.empty (Set Context!12692))))))

(assert (=> d!2187183 (= (lemmaFlatMapOnSingletonSet!1851 lt!2508229 lt!2508233 lambda!409989) lt!2508340)))

(declare-fun b_lambda!264801 () Bool)

(assert (=> (not b_lambda!264801) (not d!2187183)))

(declare-fun bs!1866902 () Bool)

(assert (= bs!1866902 d!2187183))

(assert (=> bs!1866902 m!7715850))

(declare-fun m!7716090 () Bool)

(assert (=> bs!1866902 m!7716090))

(declare-fun m!7716092 () Bool)

(assert (=> bs!1866902 m!7716092))

(assert (=> bs!1866902 m!7715866))

(assert (=> b!7016198 d!2187183))

(assert (=> b!7016198 d!2187167))

(declare-fun d!2187187 () Bool)

(declare-fun choose!52836 ((Set Context!12692) Int) (Set Context!12692))

(assert (=> d!2187187 (= (flatMap!2336 lt!2508229 lambda!409989) (choose!52836 lt!2508229 lambda!409989))))

(declare-fun bs!1866903 () Bool)

(assert (= bs!1866903 d!2187187))

(declare-fun m!7716094 () Bool)

(assert (=> bs!1866903 m!7716094))

(assert (=> b!7016198 d!2187187))

(declare-fun d!2187189 () Bool)

(declare-fun nullableFct!2697 (Regex!17350) Bool)

(assert (=> d!2187189 (= (nullable!7110 (h!73920 (exprs!6846 lt!2508238))) (nullableFct!2697 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun bs!1866904 () Bool)

(assert (= bs!1866904 d!2187189))

(declare-fun m!7716096 () Bool)

(assert (=> bs!1866904 m!7716096))

(assert (=> b!7016192 d!2187189))

(declare-fun d!2187191 () Bool)

(assert (=> d!2187191 (= (tail!13440 (exprs!6846 lt!2508238)) (t!381351 (exprs!6846 lt!2508238)))))

(assert (=> b!7016192 d!2187191))

(declare-fun d!2187193 () Bool)

(declare-fun c!1303625 () Bool)

(assert (=> d!2187193 (= c!1303625 (isEmpty!39407 s!7408))))

(declare-fun e!4217688 () Bool)

(assert (=> d!2187193 (= (matchZipper!2890 lt!2508224 s!7408) e!4217688)))

(declare-fun b!7016362 () Bool)

(assert (=> b!7016362 (= e!4217688 (nullableZipper!2503 lt!2508224))))

(declare-fun b!7016363 () Bool)

(assert (=> b!7016363 (= e!4217688 (matchZipper!2890 (derivationStepZipper!2830 lt!2508224 (head!14193 s!7408)) (tail!13442 s!7408)))))

(assert (= (and d!2187193 c!1303625) b!7016362))

(assert (= (and d!2187193 (not c!1303625)) b!7016363))

(assert (=> d!2187193 m!7716020))

(declare-fun m!7716098 () Bool)

(assert (=> b!7016362 m!7716098))

(assert (=> b!7016363 m!7716024))

(assert (=> b!7016363 m!7716024))

(declare-fun m!7716100 () Bool)

(assert (=> b!7016363 m!7716100))

(assert (=> b!7016363 m!7716028))

(assert (=> b!7016363 m!7716100))

(assert (=> b!7016363 m!7716028))

(declare-fun m!7716102 () Bool)

(assert (=> b!7016363 m!7716102))

(assert (=> start!676220 d!2187193))

(declare-fun bs!1866906 () Bool)

(declare-fun d!2187195 () Bool)

(assert (= bs!1866906 (and d!2187195 b!7016191)))

(declare-fun lambda!410036 () Int)

(assert (=> bs!1866906 (= lambda!410036 lambda!409987)))

(assert (=> d!2187195 true))

(assert (=> d!2187195 (= (appendTo!471 z1!570 ct2!306) (map!15643 z1!570 lambda!410036))))

(declare-fun bs!1866907 () Bool)

(assert (= bs!1866907 d!2187195))

(declare-fun m!7716108 () Bool)

(assert (=> bs!1866907 m!7716108))

(assert (=> start!676220 d!2187195))

(declare-fun bs!1866908 () Bool)

(declare-fun d!2187199 () Bool)

(assert (= bs!1866908 (and d!2187199 b!7016191)))

(declare-fun lambda!410037 () Int)

(assert (=> bs!1866908 (= lambda!410037 lambda!409988)))

(declare-fun bs!1866909 () Bool)

(assert (= bs!1866909 (and d!2187199 d!2187163)))

(assert (=> bs!1866909 (= lambda!410037 lambda!410025)))

(assert (=> d!2187199 (= (inv!86235 ct2!306) (forall!16266 (exprs!6846 ct2!306) lambda!410037))))

(declare-fun bs!1866910 () Bool)

(assert (= bs!1866910 d!2187199))

(declare-fun m!7716110 () Bool)

(assert (=> bs!1866910 m!7716110))

(assert (=> start!676220 d!2187199))

(declare-fun d!2187201 () Bool)

(assert (=> d!2187201 (isDefined!13524 (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) Nil!67471 (t!381350 s!7408) (t!381350 s!7408)))))

(declare-fun lt!2508348 () Unit!161382)

(declare-fun choose!52837 ((Set Context!12692) Context!12692 List!67595) Unit!161382)

(assert (=> d!2187201 (= lt!2508348 (choose!52837 lt!2508232 ct2!306 (t!381350 s!7408)))))

(assert (=> d!2187201 (matchZipper!2890 (appendTo!471 lt!2508232 ct2!306) (t!381350 s!7408))))

(assert (=> d!2187201 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!339 lt!2508232 ct2!306 (t!381350 s!7408)) lt!2508348)))

(declare-fun bs!1866911 () Bool)

(assert (= bs!1866911 d!2187201))

(assert (=> bs!1866911 m!7715824))

(assert (=> bs!1866911 m!7715826))

(assert (=> bs!1866911 m!7715824))

(declare-fun m!7716112 () Bool)

(assert (=> bs!1866911 m!7716112))

(assert (=> bs!1866911 m!7715836))

(assert (=> bs!1866911 m!7715826))

(assert (=> bs!1866911 m!7715828))

(assert (=> bs!1866911 m!7715836))

(declare-fun m!7716114 () Bool)

(assert (=> bs!1866911 m!7716114))

(assert (=> b!7016197 d!2187201))

(assert (=> b!7016197 d!2187147))

(declare-fun bs!1866912 () Bool)

(declare-fun d!2187203 () Bool)

(assert (= bs!1866912 (and d!2187203 b!7016191)))

(declare-fun lambda!410038 () Int)

(assert (=> bs!1866912 (= lambda!410038 lambda!409987)))

(declare-fun bs!1866913 () Bool)

(assert (= bs!1866913 (and d!2187203 d!2187195)))

(assert (=> bs!1866913 (= lambda!410038 lambda!410036)))

(assert (=> d!2187203 true))

(assert (=> d!2187203 (= (appendTo!471 lt!2508232 ct2!306) (map!15643 lt!2508232 lambda!410038))))

(declare-fun bs!1866914 () Bool)

(assert (= bs!1866914 d!2187203))

(declare-fun m!7716116 () Bool)

(assert (=> bs!1866914 m!7716116))

(assert (=> b!7016197 d!2187203))

(declare-fun bs!1866915 () Bool)

(declare-fun d!2187205 () Bool)

(assert (= bs!1866915 (and d!2187205 b!7016191)))

(declare-fun lambda!410041 () Int)

(assert (=> bs!1866915 (= lambda!410041 lambda!409988)))

(declare-fun bs!1866916 () Bool)

(assert (= bs!1866916 (and d!2187205 d!2187163)))

(assert (=> bs!1866916 (= lambda!410041 lambda!410025)))

(declare-fun bs!1866917 () Bool)

(assert (= bs!1866917 (and d!2187205 d!2187199)))

(assert (=> bs!1866917 (= lambda!410041 lambda!410037)))

(assert (=> d!2187205 (= (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) (Context!12693 (++!15366 (exprs!6846 lt!2508231) (exprs!6846 ct2!306))) (h!73919 s!7408)) (appendTo!471 (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) lt!2508231 (h!73919 s!7408)) ct2!306))))

(declare-fun lt!2508354 () Unit!161382)

(assert (=> d!2187205 (= lt!2508354 (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508231) (exprs!6846 ct2!306) lambda!410041))))

(declare-fun lt!2508353 () Unit!161382)

(declare-fun choose!52838 (Context!12692 Regex!17350 C!34970 Context!12692) Unit!161382)

(assert (=> d!2187205 (= lt!2508353 (choose!52838 lt!2508231 (h!73920 (exprs!6846 lt!2508238)) (h!73919 s!7408) ct2!306))))

(declare-fun validRegex!8905 (Regex!17350) Bool)

(assert (=> d!2187205 (validRegex!8905 (h!73920 (exprs!6846 lt!2508238)))))

(assert (=> d!2187205 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!41 lt!2508231 (h!73920 (exprs!6846 lt!2508238)) (h!73919 s!7408) ct2!306) lt!2508353)))

(declare-fun bs!1866918 () Bool)

(assert (= bs!1866918 d!2187205))

(assert (=> bs!1866918 m!7715830))

(declare-fun m!7716124 () Bool)

(assert (=> bs!1866918 m!7716124))

(declare-fun m!7716126 () Bool)

(assert (=> bs!1866918 m!7716126))

(declare-fun m!7716128 () Bool)

(assert (=> bs!1866918 m!7716128))

(declare-fun m!7716130 () Bool)

(assert (=> bs!1866918 m!7716130))

(declare-fun m!7716132 () Bool)

(assert (=> bs!1866918 m!7716132))

(declare-fun m!7716134 () Bool)

(assert (=> bs!1866918 m!7716134))

(assert (=> bs!1866918 m!7715830))

(assert (=> b!7016197 d!2187205))

(declare-fun b!7016396 () Bool)

(declare-fun e!4217706 () Bool)

(declare-fun lt!2508357 () List!67595)

(assert (=> b!7016396 (= e!4217706 (or (not (= (t!381350 s!7408) Nil!67471)) (= lt!2508357 Nil!67471)))))

(declare-fun b!7016393 () Bool)

(declare-fun e!4217705 () List!67595)

(assert (=> b!7016393 (= e!4217705 (t!381350 s!7408))))

(declare-fun b!7016394 () Bool)

(assert (=> b!7016394 (= e!4217705 (Cons!67471 (h!73919 Nil!67471) (++!15367 (t!381350 Nil!67471) (t!381350 s!7408))))))

(declare-fun d!2187209 () Bool)

(assert (=> d!2187209 e!4217706))

(declare-fun res!2863560 () Bool)

(assert (=> d!2187209 (=> (not res!2863560) (not e!4217706))))

(declare-fun content!13415 (List!67595) (Set C!34970))

(assert (=> d!2187209 (= res!2863560 (= (content!13415 lt!2508357) (set.union (content!13415 Nil!67471) (content!13415 (t!381350 s!7408)))))))

(assert (=> d!2187209 (= lt!2508357 e!4217705)))

(declare-fun c!1303639 () Bool)

(assert (=> d!2187209 (= c!1303639 (is-Nil!67471 Nil!67471))))

(assert (=> d!2187209 (= (++!15367 Nil!67471 (t!381350 s!7408)) lt!2508357)))

(declare-fun b!7016395 () Bool)

(declare-fun res!2863559 () Bool)

(assert (=> b!7016395 (=> (not res!2863559) (not e!4217706))))

(declare-fun size!40996 (List!67595) Int)

(assert (=> b!7016395 (= res!2863559 (= (size!40996 lt!2508357) (+ (size!40996 Nil!67471) (size!40996 (t!381350 s!7408)))))))

(assert (= (and d!2187209 c!1303639) b!7016393))

(assert (= (and d!2187209 (not c!1303639)) b!7016394))

(assert (= (and d!2187209 res!2863560) b!7016395))

(assert (= (and b!7016395 res!2863559) b!7016396))

(declare-fun m!7716148 () Bool)

(assert (=> b!7016394 m!7716148))

(declare-fun m!7716150 () Bool)

(assert (=> d!2187209 m!7716150))

(declare-fun m!7716152 () Bool)

(assert (=> d!2187209 m!7716152))

(declare-fun m!7716154 () Bool)

(assert (=> d!2187209 m!7716154))

(declare-fun m!7716156 () Bool)

(assert (=> b!7016395 m!7716156))

(declare-fun m!7716158 () Bool)

(assert (=> b!7016395 m!7716158))

(declare-fun m!7716160 () Bool)

(assert (=> b!7016395 m!7716160))

(assert (=> b!7016197 d!2187209))

(declare-fun b!7016397 () Bool)

(declare-fun e!4217707 () (Set Context!12692))

(declare-fun call!637312 () (Set Context!12692))

(declare-fun call!637314 () (Set Context!12692))

(assert (=> b!7016397 (= e!4217707 (set.union call!637312 call!637314))))

(declare-fun b!7016398 () Bool)

(declare-fun e!4217712 () (Set Context!12692))

(assert (=> b!7016398 (= e!4217712 (set.insert lt!2508231 (as set.empty (Set Context!12692))))))

(declare-fun b!7016399 () Bool)

(declare-fun e!4217710 () (Set Context!12692))

(declare-fun e!4217709 () (Set Context!12692))

(assert (=> b!7016399 (= e!4217710 e!4217709)))

(declare-fun c!1303644 () Bool)

(assert (=> b!7016399 (= c!1303644 (is-Concat!26195 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun bm!637304 () Bool)

(declare-fun call!637311 () (Set Context!12692))

(declare-fun call!637309 () (Set Context!12692))

(assert (=> bm!637304 (= call!637311 call!637309)))

(declare-fun b!7016400 () Bool)

(declare-fun e!4217711 () (Set Context!12692))

(assert (=> b!7016400 (= e!4217711 call!637311)))

(declare-fun b!7016401 () Bool)

(declare-fun c!1303640 () Bool)

(assert (=> b!7016401 (= c!1303640 (is-Star!17350 (h!73920 (exprs!6846 lt!2508238))))))

(assert (=> b!7016401 (= e!4217709 e!4217711)))

(declare-fun bm!637305 () Bool)

(declare-fun call!637310 () List!67596)

(declare-fun c!1303642 () Bool)

(assert (=> bm!637305 (= call!637314 (derivationStepZipperDown!2068 (ite c!1303642 (regTwo!35213 (h!73920 (exprs!6846 lt!2508238))) (regOne!35212 (h!73920 (exprs!6846 lt!2508238)))) (ite c!1303642 lt!2508231 (Context!12693 call!637310)) (h!73919 s!7408)))))

(declare-fun b!7016402 () Bool)

(assert (=> b!7016402 (= e!4217712 e!4217707)))

(assert (=> b!7016402 (= c!1303642 (is-Union!17350 (h!73920 (exprs!6846 lt!2508238))))))

(declare-fun b!7016403 () Bool)

(assert (=> b!7016403 (= e!4217710 (set.union call!637314 call!637309))))

(declare-fun bm!637306 () Bool)

(assert (=> bm!637306 (= call!637309 call!637312)))

(declare-fun bm!637307 () Bool)

(declare-fun call!637313 () List!67596)

(assert (=> bm!637307 (= call!637313 call!637310)))

(declare-fun d!2187213 () Bool)

(declare-fun c!1303641 () Bool)

(assert (=> d!2187213 (= c!1303641 (and (is-ElementMatch!17350 (h!73920 (exprs!6846 lt!2508238))) (= (c!1303577 (h!73920 (exprs!6846 lt!2508238))) (h!73919 s!7408))))))

(assert (=> d!2187213 (= (derivationStepZipperDown!2068 (h!73920 (exprs!6846 lt!2508238)) lt!2508231 (h!73919 s!7408)) e!4217712)))

(declare-fun b!7016404 () Bool)

(assert (=> b!7016404 (= e!4217711 (as set.empty (Set Context!12692)))))

(declare-fun b!7016405 () Bool)

(assert (=> b!7016405 (= e!4217709 call!637311)))

(declare-fun bm!637308 () Bool)

(declare-fun c!1303643 () Bool)

(assert (=> bm!637308 (= call!637312 (derivationStepZipperDown!2068 (ite c!1303642 (regOne!35213 (h!73920 (exprs!6846 lt!2508238))) (ite c!1303643 (regTwo!35212 (h!73920 (exprs!6846 lt!2508238))) (ite c!1303644 (regOne!35212 (h!73920 (exprs!6846 lt!2508238))) (reg!17679 (h!73920 (exprs!6846 lt!2508238)))))) (ite (or c!1303642 c!1303643) lt!2508231 (Context!12693 call!637313)) (h!73919 s!7408)))))

(declare-fun b!7016406 () Bool)

(declare-fun e!4217708 () Bool)

(assert (=> b!7016406 (= e!4217708 (nullable!7110 (regOne!35212 (h!73920 (exprs!6846 lt!2508238)))))))

(declare-fun b!7016407 () Bool)

(assert (=> b!7016407 (= c!1303643 e!4217708)))

(declare-fun res!2863561 () Bool)

(assert (=> b!7016407 (=> (not res!2863561) (not e!4217708))))

(assert (=> b!7016407 (= res!2863561 (is-Concat!26195 (h!73920 (exprs!6846 lt!2508238))))))

(assert (=> b!7016407 (= e!4217707 e!4217710)))

(declare-fun bm!637309 () Bool)

(assert (=> bm!637309 (= call!637310 ($colon$colon!2543 (exprs!6846 lt!2508231) (ite (or c!1303643 c!1303644) (regTwo!35212 (h!73920 (exprs!6846 lt!2508238))) (h!73920 (exprs!6846 lt!2508238)))))))

(assert (= (and d!2187213 c!1303641) b!7016398))

(assert (= (and d!2187213 (not c!1303641)) b!7016402))

(assert (= (and b!7016402 c!1303642) b!7016397))

(assert (= (and b!7016402 (not c!1303642)) b!7016407))

(assert (= (and b!7016407 res!2863561) b!7016406))

(assert (= (and b!7016407 c!1303643) b!7016403))

(assert (= (and b!7016407 (not c!1303643)) b!7016399))

(assert (= (and b!7016399 c!1303644) b!7016405))

(assert (= (and b!7016399 (not c!1303644)) b!7016401))

(assert (= (and b!7016401 c!1303640) b!7016400))

(assert (= (and b!7016401 (not c!1303640)) b!7016404))

(assert (= (or b!7016405 b!7016400) bm!637307))

(assert (= (or b!7016405 b!7016400) bm!637304))

(assert (= (or b!7016403 bm!637304) bm!637306))

(assert (= (or b!7016403 bm!637307) bm!637309))

(assert (= (or b!7016397 bm!637306) bm!637308))

(assert (= (or b!7016397 b!7016403) bm!637305))

(declare-fun m!7716162 () Bool)

(assert (=> b!7016398 m!7716162))

(assert (=> b!7016406 m!7715954))

(declare-fun m!7716164 () Bool)

(assert (=> bm!637308 m!7716164))

(declare-fun m!7716166 () Bool)

(assert (=> bm!637309 m!7716166))

(declare-fun m!7716168 () Bool)

(assert (=> bm!637305 m!7716168))

(assert (=> b!7016197 d!2187213))

(declare-fun d!2187215 () Bool)

(declare-fun isEmpty!39408 (Option!16823) Bool)

(assert (=> d!2187215 (= (isDefined!13524 (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) Nil!67471 (t!381350 s!7408) (t!381350 s!7408))) (not (isEmpty!39408 (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) Nil!67471 (t!381350 s!7408) (t!381350 s!7408)))))))

(declare-fun bs!1866919 () Bool)

(assert (= bs!1866919 d!2187215))

(assert (=> bs!1866919 m!7715826))

(declare-fun m!7716170 () Bool)

(assert (=> bs!1866919 m!7716170))

(assert (=> b!7016197 d!2187215))

(declare-fun b!7016448 () Bool)

(declare-fun e!4217736 () Bool)

(assert (=> b!7016448 (= e!4217736 (matchZipper!2890 (set.insert ct2!306 (as set.empty (Set Context!12692))) (t!381350 s!7408)))))

(declare-fun b!7016449 () Bool)

(declare-fun e!4217738 () Option!16823)

(assert (=> b!7016449 (= e!4217738 None!16822)))

(declare-fun b!7016450 () Bool)

(declare-fun e!4217737 () Option!16823)

(assert (=> b!7016450 (= e!4217737 (Some!16822 (tuple2!67983 Nil!67471 (t!381350 s!7408))))))

(declare-fun b!7016451 () Bool)

(assert (=> b!7016451 (= e!4217737 e!4217738)))

(declare-fun c!1303659 () Bool)

(assert (=> b!7016451 (= c!1303659 (is-Nil!67471 (t!381350 s!7408)))))

(declare-fun d!2187217 () Bool)

(declare-fun e!4217735 () Bool)

(assert (=> d!2187217 e!4217735))

(declare-fun res!2863578 () Bool)

(assert (=> d!2187217 (=> res!2863578 e!4217735)))

(declare-fun e!4217739 () Bool)

(assert (=> d!2187217 (= res!2863578 e!4217739)))

(declare-fun res!2863575 () Bool)

(assert (=> d!2187217 (=> (not res!2863575) (not e!4217739))))

(declare-fun lt!2508365 () Option!16823)

(assert (=> d!2187217 (= res!2863575 (isDefined!13524 lt!2508365))))

(assert (=> d!2187217 (= lt!2508365 e!4217737)))

(declare-fun c!1303660 () Bool)

(assert (=> d!2187217 (= c!1303660 e!4217736)))

(declare-fun res!2863576 () Bool)

(assert (=> d!2187217 (=> (not res!2863576) (not e!4217736))))

(assert (=> d!2187217 (= res!2863576 (matchZipper!2890 lt!2508232 Nil!67471))))

(assert (=> d!2187217 (= (++!15367 Nil!67471 (t!381350 s!7408)) (t!381350 s!7408))))

(assert (=> d!2187217 (= (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) Nil!67471 (t!381350 s!7408) (t!381350 s!7408)) lt!2508365)))

(declare-fun b!7016452 () Bool)

(declare-fun res!2863577 () Bool)

(assert (=> b!7016452 (=> (not res!2863577) (not e!4217739))))

(declare-fun get!23659 (Option!16823) tuple2!67982)

(assert (=> b!7016452 (= res!2863577 (matchZipper!2890 lt!2508232 (_1!37294 (get!23659 lt!2508365))))))

(declare-fun b!7016453 () Bool)

(declare-fun lt!2508364 () Unit!161382)

(declare-fun lt!2508366 () Unit!161382)

(assert (=> b!7016453 (= lt!2508364 lt!2508366)))

(assert (=> b!7016453 (= (++!15367 (++!15367 Nil!67471 (Cons!67471 (h!73919 (t!381350 s!7408)) Nil!67471)) (t!381350 (t!381350 s!7408))) (t!381350 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2901 (List!67595 C!34970 List!67595 List!67595) Unit!161382)

(assert (=> b!7016453 (= lt!2508366 (lemmaMoveElementToOtherListKeepsConcatEq!2901 Nil!67471 (h!73919 (t!381350 s!7408)) (t!381350 (t!381350 s!7408)) (t!381350 s!7408)))))

(assert (=> b!7016453 (= e!4217738 (findConcatSeparationZippers!339 lt!2508232 (set.insert ct2!306 (as set.empty (Set Context!12692))) (++!15367 Nil!67471 (Cons!67471 (h!73919 (t!381350 s!7408)) Nil!67471)) (t!381350 (t!381350 s!7408)) (t!381350 s!7408)))))

(declare-fun b!7016454 () Bool)

(assert (=> b!7016454 (= e!4217735 (not (isDefined!13524 lt!2508365)))))

(declare-fun b!7016455 () Bool)

(declare-fun res!2863574 () Bool)

(assert (=> b!7016455 (=> (not res!2863574) (not e!4217739))))

(assert (=> b!7016455 (= res!2863574 (matchZipper!2890 (set.insert ct2!306 (as set.empty (Set Context!12692))) (_2!37294 (get!23659 lt!2508365))))))

(declare-fun b!7016456 () Bool)

(assert (=> b!7016456 (= e!4217739 (= (++!15367 (_1!37294 (get!23659 lt!2508365)) (_2!37294 (get!23659 lt!2508365))) (t!381350 s!7408)))))

(assert (= (and d!2187217 res!2863576) b!7016448))

(assert (= (and d!2187217 c!1303660) b!7016450))

(assert (= (and d!2187217 (not c!1303660)) b!7016451))

(assert (= (and b!7016451 c!1303659) b!7016449))

(assert (= (and b!7016451 (not c!1303659)) b!7016453))

(assert (= (and d!2187217 res!2863575) b!7016452))

(assert (= (and b!7016452 res!2863577) b!7016455))

(assert (= (and b!7016455 res!2863574) b!7016456))

(assert (= (and d!2187217 (not res!2863578)) b!7016454))

(declare-fun m!7716172 () Bool)

(assert (=> b!7016453 m!7716172))

(assert (=> b!7016453 m!7716172))

(declare-fun m!7716174 () Bool)

(assert (=> b!7016453 m!7716174))

(declare-fun m!7716176 () Bool)

(assert (=> b!7016453 m!7716176))

(assert (=> b!7016453 m!7715824))

(assert (=> b!7016453 m!7716172))

(declare-fun m!7716178 () Bool)

(assert (=> b!7016453 m!7716178))

(declare-fun m!7716180 () Bool)

(assert (=> d!2187217 m!7716180))

(declare-fun m!7716182 () Bool)

(assert (=> d!2187217 m!7716182))

(assert (=> d!2187217 m!7715840))

(assert (=> b!7016448 m!7715824))

(declare-fun m!7716184 () Bool)

(assert (=> b!7016448 m!7716184))

(declare-fun m!7716186 () Bool)

(assert (=> b!7016455 m!7716186))

(assert (=> b!7016455 m!7715824))

(declare-fun m!7716188 () Bool)

(assert (=> b!7016455 m!7716188))

(assert (=> b!7016452 m!7716186))

(declare-fun m!7716190 () Bool)

(assert (=> b!7016452 m!7716190))

(assert (=> b!7016456 m!7716186))

(declare-fun m!7716192 () Bool)

(assert (=> b!7016456 m!7716192))

(assert (=> b!7016454 m!7716180))

(assert (=> b!7016197 d!2187217))

(assert (=> b!7016194 d!2187167))

(declare-fun b!7016461 () Bool)

(declare-fun e!4217742 () Bool)

(declare-fun tp!1933254 () Bool)

(assert (=> b!7016461 (= e!4217742 (and tp_is_empty!43925 tp!1933254))))

(assert (=> b!7016200 (= tp!1933236 e!4217742)))

(assert (= (and b!7016200 (is-Cons!67471 (t!381350 s!7408))) b!7016461))

(declare-fun condSetEmpty!48531 () Bool)

(assert (=> setNonEmpty!48525 (= condSetEmpty!48531 (= setRest!48525 (as set.empty (Set Context!12692))))))

(declare-fun setRes!48531 () Bool)

(assert (=> setNonEmpty!48525 (= tp!1933237 setRes!48531)))

(declare-fun setIsEmpty!48531 () Bool)

(assert (=> setIsEmpty!48531 setRes!48531))

(declare-fun tp!1933259 () Bool)

(declare-fun setNonEmpty!48531 () Bool)

(declare-fun e!4217745 () Bool)

(declare-fun setElem!48531 () Context!12692)

(assert (=> setNonEmpty!48531 (= setRes!48531 (and tp!1933259 (inv!86235 setElem!48531) e!4217745))))

(declare-fun setRest!48531 () (Set Context!12692))

(assert (=> setNonEmpty!48531 (= setRest!48525 (set.union (set.insert setElem!48531 (as set.empty (Set Context!12692))) setRest!48531))))

(declare-fun b!7016466 () Bool)

(declare-fun tp!1933260 () Bool)

(assert (=> b!7016466 (= e!4217745 tp!1933260)))

(assert (= (and setNonEmpty!48525 condSetEmpty!48531) setIsEmpty!48531))

(assert (= (and setNonEmpty!48525 (not condSetEmpty!48531)) setNonEmpty!48531))

(assert (= setNonEmpty!48531 b!7016466))

(declare-fun m!7716194 () Bool)

(assert (=> setNonEmpty!48531 m!7716194))

(declare-fun b!7016471 () Bool)

(declare-fun e!4217748 () Bool)

(declare-fun tp!1933265 () Bool)

(declare-fun tp!1933266 () Bool)

(assert (=> b!7016471 (= e!4217748 (and tp!1933265 tp!1933266))))

(assert (=> b!7016202 (= tp!1933239 e!4217748)))

(assert (= (and b!7016202 (is-Cons!67472 (exprs!6846 setElem!48525))) b!7016471))

(declare-fun b!7016472 () Bool)

(declare-fun e!4217749 () Bool)

(declare-fun tp!1933267 () Bool)

(declare-fun tp!1933268 () Bool)

(assert (=> b!7016472 (= e!4217749 (and tp!1933267 tp!1933268))))

(assert (=> b!7016193 (= tp!1933238 e!4217749)))

(assert (= (and b!7016193 (is-Cons!67472 (exprs!6846 ct2!306))) b!7016472))

(declare-fun b_lambda!264805 () Bool)

(assert (= b_lambda!264795 (or b!7016203 b_lambda!264805)))

(declare-fun bs!1866920 () Bool)

(declare-fun d!2187219 () Bool)

(assert (= bs!1866920 (and d!2187219 b!7016203)))

(assert (=> bs!1866920 (= (dynLambda!27169 lambda!409986 lt!2508322) (matchZipper!2890 (set.insert lt!2508322 (as set.empty (Set Context!12692))) s!7408))))

(declare-fun m!7716196 () Bool)

(assert (=> bs!1866920 m!7716196))

(assert (=> bs!1866920 m!7716196))

(declare-fun m!7716198 () Bool)

(assert (=> bs!1866920 m!7716198))

(assert (=> d!2187151 d!2187219))

(declare-fun b_lambda!264807 () Bool)

(assert (= b_lambda!264801 (or b!7016198 b_lambda!264807)))

(declare-fun bs!1866921 () Bool)

(declare-fun d!2187221 () Bool)

(assert (= bs!1866921 (and d!2187221 b!7016198)))

(assert (=> bs!1866921 (= (dynLambda!27172 lambda!409989 lt!2508233) (derivationStepZipperUp!2000 lt!2508233 (h!73919 s!7408)))))

(assert (=> bs!1866921 m!7715846))

(assert (=> d!2187183 d!2187221))

(declare-fun b_lambda!264809 () Bool)

(assert (= b_lambda!264797 (or b!7016191 b_lambda!264809)))

(declare-fun bs!1866922 () Bool)

(declare-fun d!2187223 () Bool)

(assert (= bs!1866922 (and d!2187223 b!7016191)))

(declare-fun lt!2508367 () Unit!161382)

(assert (=> bs!1866922 (= lt!2508367 (lemmaConcatPreservesForall!686 (exprs!6846 lt!2508336) (exprs!6846 ct2!306) lambda!409988))))

(assert (=> bs!1866922 (= (dynLambda!27171 lambda!409987 lt!2508336) (Context!12693 (++!15366 (exprs!6846 lt!2508336) (exprs!6846 ct2!306))))))

(declare-fun m!7716200 () Bool)

(assert (=> bs!1866922 m!7716200))

(declare-fun m!7716202 () Bool)

(assert (=> bs!1866922 m!7716202))

(assert (=> d!2187169 d!2187223))

(push 1)

(assert (not d!2187195))

(assert (not d!2187147))

(assert (not d!2187163))

(assert (not d!2187149))

(assert (not b!7016406))

(assert (not d!2187165))

(assert (not d!2187203))

(assert (not b!7016448))

(assert (not bm!637293))

(assert (not b!7016332))

(assert (not d!2187173))

(assert (not b!7016472))

(assert (not b!7016327))

(assert (not b_lambda!264809))

(assert tp_is_empty!43925)

(assert (not d!2187137))

(assert (not b!7016454))

(assert (not d!2187201))

(assert (not b!7016295))

(assert (not b!7016455))

(assert (not b!7016453))

(assert (not d!2187205))

(assert (not d!2187183))

(assert (not b!7016306))

(assert (not b!7016395))

(assert (not b!7016328))

(assert (not d!2187153))

(assert (not d!2187157))

(assert (not b!7016394))

(assert (not d!2187143))

(assert (not d!2187159))

(assert (not setNonEmpty!48531))

(assert (not d!2187209))

(assert (not d!2187169))

(assert (not b!7016315))

(assert (not d!2187187))

(assert (not bm!637297))

(assert (not b!7016307))

(assert (not bm!637308))

(assert (not d!2187199))

(assert (not bm!637300))

(assert (not b!7016362))

(assert (not b!7016456))

(assert (not b!7016263))

(assert (not bm!637305))

(assert (not d!2187217))

(assert (not bs!1866922))

(assert (not b!7016359))

(assert (not b_lambda!264807))

(assert (not b!7016333))

(assert (not bm!637309))

(assert (not b!7016452))

(assert (not b_lambda!264805))

(assert (not d!2187151))

(assert (not b!7016471))

(assert (not b!7016363))

(assert (not d!2187189))

(assert (not bs!1866920))

(assert (not b!7016262))

(assert (not d!2187193))

(assert (not d!2187167))

(assert (not b!7016466))

(assert (not d!2187215))

(assert (not b!7016461))

(assert (not bs!1866921))

(assert (not bm!637296))

(assert (not b!7016358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

