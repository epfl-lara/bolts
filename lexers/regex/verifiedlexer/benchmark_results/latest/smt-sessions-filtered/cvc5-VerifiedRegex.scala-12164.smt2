; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684330 () Bool)

(assert start!684330)

(declare-fun b!7055755 () Bool)

(assert (=> b!7055755 true))

(declare-fun b!7055737 () Bool)

(assert (=> b!7055737 true))

(declare-fun b!7055747 () Bool)

(assert (=> b!7055747 true))

(declare-fun b!7055734 () Bool)

(declare-fun e!4241769 () Bool)

(declare-datatypes ((C!35418 0))(
  ( (C!35419 (val!27411 Int)) )
))
(declare-datatypes ((Regex!17574 0))(
  ( (ElementMatch!17574 (c!1314520 C!35418)) (Concat!26419 (regOne!35660 Regex!17574) (regTwo!35660 Regex!17574)) (EmptyExpr!17574) (Star!17574 (reg!17903 Regex!17574)) (EmptyLang!17574) (Union!17574 (regOne!35661 Regex!17574) (regTwo!35661 Regex!17574)) )
))
(declare-datatypes ((List!68248 0))(
  ( (Nil!68124) (Cons!68124 (h!74572 Regex!17574) (t!382027 List!68248)) )
))
(declare-datatypes ((Context!13140 0))(
  ( (Context!13141 (exprs!7070 List!68248)) )
))
(declare-fun lt!2532269 () (Set Context!13140))

(declare-datatypes ((List!68249 0))(
  ( (Nil!68125) (Cons!68125 (h!74573 C!35418) (t!382028 List!68249)) )
))
(declare-fun s!7408 () List!68249)

(declare-fun matchZipper!3114 ((Set Context!13140) List!68249) Bool)

(assert (=> b!7055734 (= e!4241769 (matchZipper!3114 lt!2532269 (t!382028 s!7408)))))

(declare-fun res!2880492 () Bool)

(declare-fun e!4241781 () Bool)

(assert (=> start!684330 (=> (not res!2880492) (not e!4241781))))

(declare-fun lt!2532270 () (Set Context!13140))

(assert (=> start!684330 (= res!2880492 (matchZipper!3114 lt!2532270 s!7408))))

(declare-fun z1!570 () (Set Context!13140))

(declare-fun ct2!306 () Context!13140)

(declare-fun appendTo!695 ((Set Context!13140) Context!13140) (Set Context!13140))

(assert (=> start!684330 (= lt!2532270 (appendTo!695 z1!570 ct2!306))))

(assert (=> start!684330 e!4241781))

(declare-fun c!403 () Context!13140)

(declare-fun e!4241778 () Bool)

(declare-fun inv!86795 (Context!13140) Bool)

(assert (=> start!684330 (and (inv!86795 c!403) e!4241778)))

(declare-fun condSetEmpty!49864 () Bool)

(assert (=> start!684330 (= condSetEmpty!49864 (= z1!570 (as set.empty (Set Context!13140))))))

(declare-fun setRes!49864 () Bool)

(assert (=> start!684330 setRes!49864))

(declare-fun e!4241783 () Bool)

(assert (=> start!684330 e!4241783))

(declare-fun e!4241779 () Bool)

(assert (=> start!684330 (and (inv!86795 ct2!306) e!4241779)))

(declare-fun b!7055735 () Bool)

(declare-fun res!2880494 () Bool)

(declare-fun e!4241782 () Bool)

(assert (=> b!7055735 (=> res!2880494 e!4241782)))

(declare-fun lt!2532247 () Context!13140)

(declare-fun isEmpty!39734 (List!68248) Bool)

(assert (=> b!7055735 (= res!2880494 (isEmpty!39734 (exprs!7070 lt!2532247)))))

(declare-fun b!7055736 () Bool)

(declare-fun e!4241780 () Bool)

(declare-fun e!4241773 () Bool)

(assert (=> b!7055736 (= e!4241780 e!4241773)))

(declare-fun res!2880507 () Bool)

(assert (=> b!7055736 (=> res!2880507 e!4241773)))

(declare-fun lt!2532271 () (Set Context!13140))

(declare-fun lt!2532248 () (Set Context!13140))

(assert (=> b!7055736 (= res!2880507 (not (= lt!2532271 lt!2532248)))))

(declare-fun lt!2532242 () (Set Context!13140))

(assert (=> b!7055736 (= lt!2532248 (set.union lt!2532242 lt!2532269))))

(declare-fun lt!2532266 () Context!13140)

(declare-fun derivationStepZipperUp!2158 (Context!13140 C!35418) (Set Context!13140))

(assert (=> b!7055736 (= lt!2532269 (derivationStepZipperUp!2158 lt!2532266 (h!74573 s!7408)))))

(declare-fun derivationStepZipperDown!2208 (Regex!17574 Context!13140 C!35418) (Set Context!13140))

(assert (=> b!7055736 (= lt!2532242 (derivationStepZipperDown!2208 (h!74572 (exprs!7070 lt!2532247)) lt!2532266 (h!74573 s!7408)))))

(declare-fun lt!2532263 () List!68248)

(declare-fun ++!15657 (List!68248 List!68248) List!68248)

(assert (=> b!7055736 (= lt!2532266 (Context!13141 (++!15657 lt!2532263 (exprs!7070 ct2!306))))))

(declare-fun lambda!420423 () Int)

(declare-datatypes ((Unit!161821 0))(
  ( (Unit!161822) )
))
(declare-fun lt!2532262 () Unit!161821)

(declare-fun lemmaConcatPreservesForall!885 (List!68248 List!68248 Int) Unit!161821)

(assert (=> b!7055736 (= lt!2532262 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lt!2532253 () Unit!161821)

(assert (=> b!7055736 (= lt!2532253 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun e!4241776 () Bool)

(declare-fun e!4241774 () Bool)

(assert (=> b!7055737 (= e!4241776 e!4241774)))

(declare-fun res!2880491 () Bool)

(assert (=> b!7055737 (=> res!2880491 e!4241774)))

(declare-fun lt!2532251 () Context!13140)

(declare-fun lt!2532254 () Context!13140)

(assert (=> b!7055737 (= res!2880491 (or (not (= lt!2532251 lt!2532254)) (not (set.member lt!2532247 z1!570))))))

(assert (=> b!7055737 (= lt!2532251 (Context!13141 (++!15657 (exprs!7070 lt!2532247) (exprs!7070 ct2!306))))))

(declare-fun lt!2532257 () Unit!161821)

(assert (=> b!7055737 (= lt!2532257 (lemmaConcatPreservesForall!885 (exprs!7070 lt!2532247) (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lambda!420422 () Int)

(declare-fun mapPost2!403 ((Set Context!13140) Int Context!13140) Context!13140)

(assert (=> b!7055737 (= lt!2532247 (mapPost2!403 z1!570 lambda!420422 lt!2532254))))

(declare-fun b!7055738 () Bool)

(declare-fun res!2880500 () Bool)

(assert (=> b!7055738 (=> res!2880500 e!4241776)))

(assert (=> b!7055738 (= res!2880500 (not (set.member lt!2532254 lt!2532270)))))

(declare-fun setIsEmpty!49864 () Bool)

(assert (=> setIsEmpty!49864 setRes!49864))

(declare-fun b!7055739 () Bool)

(declare-fun e!4241770 () Bool)

(assert (=> b!7055739 (= e!4241770 (inv!86795 (Context!13141 (++!15657 (exprs!7070 c!403) (exprs!7070 ct2!306)))))))

(declare-fun lt!2532249 () Unit!161821)

(assert (=> b!7055739 (= lt!2532249 (lemmaConcatPreservesForall!885 (exprs!7070 c!403) (exprs!7070 ct2!306) lambda!420423))))

(declare-fun b!7055740 () Bool)

(declare-fun e!4241777 () Bool)

(declare-fun e!4241771 () Bool)

(assert (=> b!7055740 (= e!4241777 e!4241771)))

(declare-fun res!2880495 () Bool)

(assert (=> b!7055740 (=> res!2880495 e!4241771)))

(declare-fun lt!2532265 () (Set Context!13140))

(declare-fun derivationStepZipper!3024 ((Set Context!13140) C!35418) (Set Context!13140))

(assert (=> b!7055740 (= res!2880495 (not (= (derivationStepZipper!3024 lt!2532265 (h!74573 s!7408)) lt!2532269)))))

(declare-fun lt!2532252 () Unit!161821)

(assert (=> b!7055740 (= lt!2532252 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lt!2532272 () Unit!161821)

(assert (=> b!7055740 (= lt!2532272 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lambda!420424 () Int)

(declare-fun flatMap!2500 ((Set Context!13140) Int) (Set Context!13140))

(assert (=> b!7055740 (= (flatMap!2500 lt!2532265 lambda!420424) (derivationStepZipperUp!2158 lt!2532266 (h!74573 s!7408)))))

(declare-fun lt!2532245 () Unit!161821)

(declare-fun lemmaFlatMapOnSingletonSet!2009 ((Set Context!13140) Context!13140 Int) Unit!161821)

(assert (=> b!7055740 (= lt!2532245 (lemmaFlatMapOnSingletonSet!2009 lt!2532265 lt!2532266 lambda!420424))))

(assert (=> b!7055740 (= lt!2532265 (set.insert lt!2532266 (as set.empty (Set Context!13140))))))

(declare-fun lt!2532258 () Unit!161821)

(assert (=> b!7055740 (= lt!2532258 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lt!2532259 () Unit!161821)

(assert (=> b!7055740 (= lt!2532259 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun e!4241772 () Bool)

(declare-fun setNonEmpty!49864 () Bool)

(declare-fun setElem!49864 () Context!13140)

(declare-fun tp!1940240 () Bool)

(assert (=> setNonEmpty!49864 (= setRes!49864 (and tp!1940240 (inv!86795 setElem!49864) e!4241772))))

(declare-fun setRest!49864 () (Set Context!13140))

(assert (=> setNonEmpty!49864 (= z1!570 (set.union (set.insert setElem!49864 (as set.empty (Set Context!13140))) setRest!49864))))

(declare-fun b!7055741 () Bool)

(assert (=> b!7055741 (= e!4241782 e!4241780)))

(declare-fun res!2880508 () Bool)

(assert (=> b!7055741 (=> res!2880508 e!4241780)))

(declare-fun nullable!7257 (Regex!17574) Bool)

(assert (=> b!7055741 (= res!2880508 (not (nullable!7257 (h!74572 (exprs!7070 lt!2532247)))))))

(declare-fun tail!13706 (List!68248) List!68248)

(assert (=> b!7055741 (= lt!2532263 (tail!13706 (exprs!7070 lt!2532247)))))

(declare-fun b!7055742 () Bool)

(declare-fun e!4241784 () Bool)

(assert (=> b!7055742 (= e!4241774 e!4241784)))

(declare-fun res!2880503 () Bool)

(assert (=> b!7055742 (=> res!2880503 e!4241784)))

(declare-fun lt!2532255 () (Set Context!13140))

(declare-fun lt!2532244 () (Set Context!13140))

(assert (=> b!7055742 (= res!2880503 (not (= lt!2532255 lt!2532244)))))

(assert (=> b!7055742 (= lt!2532255 (set.insert lt!2532251 (as set.empty (Set Context!13140))))))

(declare-fun lt!2532256 () Unit!161821)

(assert (=> b!7055742 (= lt!2532256 (lemmaConcatPreservesForall!885 (exprs!7070 lt!2532247) (exprs!7070 ct2!306) lambda!420423))))

(declare-fun b!7055743 () Bool)

(declare-fun tp_is_empty!44373 () Bool)

(declare-fun tp!1940242 () Bool)

(assert (=> b!7055743 (= e!4241783 (and tp_is_empty!44373 tp!1940242))))

(declare-fun b!7055744 () Bool)

(declare-fun tp!1940241 () Bool)

(assert (=> b!7055744 (= e!4241779 tp!1940241)))

(declare-fun b!7055745 () Bool)

(declare-fun e!4241785 () Bool)

(assert (=> b!7055745 (= e!4241785 e!4241777)))

(declare-fun res!2880496 () Bool)

(assert (=> b!7055745 (=> res!2880496 e!4241777)))

(assert (=> b!7055745 (= res!2880496 (not (matchZipper!3114 lt!2532269 (t!382028 s!7408))))))

(declare-fun lt!2532261 () Unit!161821)

(assert (=> b!7055745 (= lt!2532261 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun b!7055746 () Bool)

(assert (=> b!7055746 (= e!4241771 e!4241770)))

(declare-fun res!2880501 () Bool)

(assert (=> b!7055746 (=> res!2880501 e!4241770)))

(assert (=> b!7055746 (= res!2880501 (not (matchZipper!3114 lt!2532265 s!7408)))))

(declare-fun lt!2532241 () Unit!161821)

(assert (=> b!7055746 (= lt!2532241 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(assert (=> b!7055747 (= e!4241784 e!4241782)))

(declare-fun res!2880504 () Bool)

(assert (=> b!7055747 (=> res!2880504 e!4241782)))

(assert (=> b!7055747 (= res!2880504 (not (= (derivationStepZipper!3024 lt!2532255 (h!74573 s!7408)) lt!2532271)))))

(assert (=> b!7055747 (= (flatMap!2500 lt!2532255 lambda!420424) (derivationStepZipperUp!2158 lt!2532251 (h!74573 s!7408)))))

(declare-fun lt!2532267 () Unit!161821)

(assert (=> b!7055747 (= lt!2532267 (lemmaFlatMapOnSingletonSet!2009 lt!2532255 lt!2532251 lambda!420424))))

(assert (=> b!7055747 (= lt!2532271 (derivationStepZipperUp!2158 lt!2532251 (h!74573 s!7408)))))

(declare-fun lt!2532250 () Unit!161821)

(assert (=> b!7055747 (= lt!2532250 (lemmaConcatPreservesForall!885 (exprs!7070 lt!2532247) (exprs!7070 ct2!306) lambda!420423))))

(declare-fun b!7055748 () Bool)

(declare-fun res!2880493 () Bool)

(assert (=> b!7055748 (=> res!2880493 e!4241785)))

(declare-fun lt!2532237 () Bool)

(assert (=> b!7055748 (= res!2880493 (not lt!2532237))))

(declare-fun b!7055749 () Bool)

(declare-fun tp!1940239 () Bool)

(assert (=> b!7055749 (= e!4241778 tp!1940239)))

(declare-fun b!7055750 () Bool)

(assert (=> b!7055750 (= e!4241773 e!4241785)))

(declare-fun res!2880497 () Bool)

(assert (=> b!7055750 (=> res!2880497 e!4241785)))

(declare-fun e!4241775 () Bool)

(assert (=> b!7055750 (= res!2880497 e!4241775)))

(declare-fun res!2880499 () Bool)

(assert (=> b!7055750 (=> (not res!2880499) (not e!4241775))))

(declare-fun lt!2532243 () Bool)

(assert (=> b!7055750 (= res!2880499 (not (= lt!2532237 lt!2532243)))))

(assert (=> b!7055750 (= lt!2532237 (matchZipper!3114 lt!2532271 (t!382028 s!7408)))))

(declare-fun lt!2532240 () Unit!161821)

(assert (=> b!7055750 (= lt!2532240 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(assert (=> b!7055750 (= (matchZipper!3114 lt!2532248 (t!382028 s!7408)) e!4241769)))

(declare-fun res!2880505 () Bool)

(assert (=> b!7055750 (=> res!2880505 e!4241769)))

(assert (=> b!7055750 (= res!2880505 lt!2532243)))

(assert (=> b!7055750 (= lt!2532243 (matchZipper!3114 lt!2532242 (t!382028 s!7408)))))

(declare-fun lt!2532268 () Unit!161821)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1587 ((Set Context!13140) (Set Context!13140) List!68249) Unit!161821)

(assert (=> b!7055750 (= lt!2532268 (lemmaZipperConcatMatchesSameAsBothZippers!1587 lt!2532242 lt!2532269 (t!382028 s!7408)))))

(declare-fun lt!2532246 () Unit!161821)

(assert (=> b!7055750 (= lt!2532246 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun lt!2532239 () Unit!161821)

(assert (=> b!7055750 (= lt!2532239 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(declare-fun b!7055751 () Bool)

(declare-fun res!2880506 () Bool)

(assert (=> b!7055751 (=> res!2880506 e!4241782)))

(assert (=> b!7055751 (= res!2880506 (not (is-Cons!68124 (exprs!7070 lt!2532247))))))

(declare-fun b!7055752 () Bool)

(declare-fun tp!1940243 () Bool)

(assert (=> b!7055752 (= e!4241772 tp!1940243)))

(declare-fun b!7055753 () Bool)

(declare-fun res!2880498 () Bool)

(assert (=> b!7055753 (=> (not res!2880498) (not e!4241781))))

(assert (=> b!7055753 (= res!2880498 (is-Cons!68125 s!7408))))

(declare-fun b!7055754 () Bool)

(assert (=> b!7055754 (= e!4241775 (not (matchZipper!3114 lt!2532269 (t!382028 s!7408))))))

(declare-fun lt!2532260 () Unit!161821)

(assert (=> b!7055754 (= lt!2532260 (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(assert (=> b!7055755 (= e!4241781 (not e!4241776))))

(declare-fun res!2880502 () Bool)

(assert (=> b!7055755 (=> res!2880502 e!4241776)))

(assert (=> b!7055755 (= res!2880502 (not (matchZipper!3114 lt!2532244 s!7408)))))

(assert (=> b!7055755 (= lt!2532244 (set.insert lt!2532254 (as set.empty (Set Context!13140))))))

(declare-fun lambda!420421 () Int)

(declare-fun getWitness!1639 ((Set Context!13140) Int) Context!13140)

(assert (=> b!7055755 (= lt!2532254 (getWitness!1639 lt!2532270 lambda!420421))))

(declare-datatypes ((List!68250 0))(
  ( (Nil!68126) (Cons!68126 (h!74574 Context!13140) (t!382029 List!68250)) )
))
(declare-fun lt!2532264 () List!68250)

(declare-fun exists!3565 (List!68250 Int) Bool)

(assert (=> b!7055755 (exists!3565 lt!2532264 lambda!420421)))

(declare-fun lt!2532238 () Unit!161821)

(declare-fun lemmaZipperMatchesExistsMatchingContext!495 (List!68250 List!68249) Unit!161821)

(assert (=> b!7055755 (= lt!2532238 (lemmaZipperMatchesExistsMatchingContext!495 lt!2532264 s!7408))))

(declare-fun toList!10915 ((Set Context!13140)) List!68250)

(assert (=> b!7055755 (= lt!2532264 (toList!10915 lt!2532270))))

(assert (= (and start!684330 res!2880492) b!7055753))

(assert (= (and b!7055753 res!2880498) b!7055755))

(assert (= (and b!7055755 (not res!2880502)) b!7055738))

(assert (= (and b!7055738 (not res!2880500)) b!7055737))

(assert (= (and b!7055737 (not res!2880491)) b!7055742))

(assert (= (and b!7055742 (not res!2880503)) b!7055747))

(assert (= (and b!7055747 (not res!2880504)) b!7055751))

(assert (= (and b!7055751 (not res!2880506)) b!7055735))

(assert (= (and b!7055735 (not res!2880494)) b!7055741))

(assert (= (and b!7055741 (not res!2880508)) b!7055736))

(assert (= (and b!7055736 (not res!2880507)) b!7055750))

(assert (= (and b!7055750 (not res!2880505)) b!7055734))

(assert (= (and b!7055750 res!2880499) b!7055754))

(assert (= (and b!7055750 (not res!2880497)) b!7055748))

(assert (= (and b!7055748 (not res!2880493)) b!7055745))

(assert (= (and b!7055745 (not res!2880496)) b!7055740))

(assert (= (and b!7055740 (not res!2880495)) b!7055746))

(assert (= (and b!7055746 (not res!2880501)) b!7055739))

(assert (= start!684330 b!7055749))

(assert (= (and start!684330 condSetEmpty!49864) setIsEmpty!49864))

(assert (= (and start!684330 (not condSetEmpty!49864)) setNonEmpty!49864))

(assert (= setNonEmpty!49864 b!7055752))

(assert (= (and start!684330 (is-Cons!68125 s!7408)) b!7055743))

(assert (= start!684330 b!7055744))

(declare-fun m!7773484 () Bool)

(assert (=> b!7055746 m!7773484))

(declare-fun m!7773486 () Bool)

(assert (=> b!7055746 m!7773486))

(declare-fun m!7773488 () Bool)

(assert (=> start!684330 m!7773488))

(declare-fun m!7773490 () Bool)

(assert (=> start!684330 m!7773490))

(declare-fun m!7773492 () Bool)

(assert (=> start!684330 m!7773492))

(declare-fun m!7773494 () Bool)

(assert (=> start!684330 m!7773494))

(declare-fun m!7773496 () Bool)

(assert (=> b!7055740 m!7773496))

(assert (=> b!7055740 m!7773486))

(declare-fun m!7773498 () Bool)

(assert (=> b!7055740 m!7773498))

(assert (=> b!7055740 m!7773486))

(declare-fun m!7773500 () Bool)

(assert (=> b!7055740 m!7773500))

(declare-fun m!7773502 () Bool)

(assert (=> b!7055740 m!7773502))

(assert (=> b!7055740 m!7773486))

(assert (=> b!7055740 m!7773486))

(declare-fun m!7773504 () Bool)

(assert (=> b!7055740 m!7773504))

(declare-fun m!7773506 () Bool)

(assert (=> b!7055750 m!7773506))

(declare-fun m!7773508 () Bool)

(assert (=> b!7055750 m!7773508))

(declare-fun m!7773510 () Bool)

(assert (=> b!7055750 m!7773510))

(assert (=> b!7055750 m!7773486))

(declare-fun m!7773512 () Bool)

(assert (=> b!7055750 m!7773512))

(assert (=> b!7055750 m!7773486))

(assert (=> b!7055750 m!7773486))

(declare-fun m!7773514 () Bool)

(assert (=> b!7055747 m!7773514))

(declare-fun m!7773516 () Bool)

(assert (=> b!7055747 m!7773516))

(declare-fun m!7773518 () Bool)

(assert (=> b!7055747 m!7773518))

(declare-fun m!7773520 () Bool)

(assert (=> b!7055747 m!7773520))

(declare-fun m!7773522 () Bool)

(assert (=> b!7055747 m!7773522))

(declare-fun m!7773524 () Bool)

(assert (=> b!7055742 m!7773524))

(assert (=> b!7055742 m!7773520))

(declare-fun m!7773526 () Bool)

(assert (=> b!7055737 m!7773526))

(declare-fun m!7773528 () Bool)

(assert (=> b!7055737 m!7773528))

(assert (=> b!7055737 m!7773520))

(declare-fun m!7773530 () Bool)

(assert (=> b!7055737 m!7773530))

(declare-fun m!7773532 () Bool)

(assert (=> setNonEmpty!49864 m!7773532))

(declare-fun m!7773534 () Bool)

(assert (=> b!7055738 m!7773534))

(declare-fun m!7773536 () Bool)

(assert (=> b!7055755 m!7773536))

(declare-fun m!7773538 () Bool)

(assert (=> b!7055755 m!7773538))

(declare-fun m!7773540 () Bool)

(assert (=> b!7055755 m!7773540))

(declare-fun m!7773542 () Bool)

(assert (=> b!7055755 m!7773542))

(declare-fun m!7773544 () Bool)

(assert (=> b!7055755 m!7773544))

(declare-fun m!7773546 () Bool)

(assert (=> b!7055755 m!7773546))

(declare-fun m!7773548 () Bool)

(assert (=> b!7055741 m!7773548))

(declare-fun m!7773550 () Bool)

(assert (=> b!7055741 m!7773550))

(declare-fun m!7773552 () Bool)

(assert (=> b!7055734 m!7773552))

(declare-fun m!7773554 () Bool)

(assert (=> b!7055736 m!7773554))

(assert (=> b!7055736 m!7773486))

(assert (=> b!7055736 m!7773498))

(assert (=> b!7055736 m!7773486))

(declare-fun m!7773556 () Bool)

(assert (=> b!7055736 m!7773556))

(declare-fun m!7773558 () Bool)

(assert (=> b!7055739 m!7773558))

(declare-fun m!7773560 () Bool)

(assert (=> b!7055739 m!7773560))

(declare-fun m!7773562 () Bool)

(assert (=> b!7055739 m!7773562))

(assert (=> b!7055754 m!7773552))

(assert (=> b!7055754 m!7773486))

(assert (=> b!7055745 m!7773552))

(assert (=> b!7055745 m!7773486))

(declare-fun m!7773564 () Bool)

(assert (=> b!7055735 m!7773564))

(push 1)

(assert (not b!7055743))

(assert (not b!7055750))

(assert (not b!7055734))

(assert (not b!7055745))

(assert tp_is_empty!44373)

(assert (not b!7055754))

(assert (not b!7055746))

(assert (not b!7055747))

(assert (not setNonEmpty!49864))

(assert (not b!7055736))

(assert (not b!7055744))

(assert (not b!7055742))

(assert (not b!7055735))

(assert (not b!7055740))

(assert (not b!7055739))

(assert (not b!7055755))

(assert (not b!7055752))

(assert (not start!684330))

(assert (not b!7055749))

(assert (not b!7055737))

(assert (not b!7055741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2205001 () Bool)

(assert (=> d!2205001 (= (isEmpty!39734 (exprs!7070 lt!2532247)) (is-Nil!68124 (exprs!7070 lt!2532247)))))

(assert (=> b!7055735 d!2205001))

(declare-fun d!2205003 () Bool)

(declare-fun c!1314534 () Bool)

(declare-fun isEmpty!39736 (List!68249) Bool)

(assert (=> d!2205003 (= c!1314534 (isEmpty!39736 (t!382028 s!7408)))))

(declare-fun e!4241839 () Bool)

(assert (=> d!2205003 (= (matchZipper!3114 lt!2532269 (t!382028 s!7408)) e!4241839)))

(declare-fun b!7055838 () Bool)

(declare-fun nullableZipper!2659 ((Set Context!13140)) Bool)

(assert (=> b!7055838 (= e!4241839 (nullableZipper!2659 lt!2532269))))

(declare-fun b!7055839 () Bool)

(declare-fun head!14360 (List!68249) C!35418)

(declare-fun tail!13708 (List!68249) List!68249)

(assert (=> b!7055839 (= e!4241839 (matchZipper!3114 (derivationStepZipper!3024 lt!2532269 (head!14360 (t!382028 s!7408))) (tail!13708 (t!382028 s!7408))))))

(assert (= (and d!2205003 c!1314534) b!7055838))

(assert (= (and d!2205003 (not c!1314534)) b!7055839))

(declare-fun m!7773648 () Bool)

(assert (=> d!2205003 m!7773648))

(declare-fun m!7773650 () Bool)

(assert (=> b!7055838 m!7773650))

(declare-fun m!7773652 () Bool)

(assert (=> b!7055839 m!7773652))

(assert (=> b!7055839 m!7773652))

(declare-fun m!7773654 () Bool)

(assert (=> b!7055839 m!7773654))

(declare-fun m!7773656 () Bool)

(assert (=> b!7055839 m!7773656))

(assert (=> b!7055839 m!7773654))

(assert (=> b!7055839 m!7773656))

(declare-fun m!7773658 () Bool)

(assert (=> b!7055839 m!7773658))

(assert (=> b!7055754 d!2205003))

(declare-fun d!2205005 () Bool)

(declare-fun forall!16520 (List!68248 Int) Bool)

(assert (=> d!2205005 (forall!16520 (++!15657 lt!2532263 (exprs!7070 ct2!306)) lambda!420423)))

(declare-fun lt!2532385 () Unit!161821)

(declare-fun choose!53820 (List!68248 List!68248 Int) Unit!161821)

(assert (=> d!2205005 (= lt!2532385 (choose!53820 lt!2532263 (exprs!7070 ct2!306) lambda!420423))))

(assert (=> d!2205005 (forall!16520 lt!2532263 lambda!420423)))

(assert (=> d!2205005 (= (lemmaConcatPreservesForall!885 lt!2532263 (exprs!7070 ct2!306) lambda!420423) lt!2532385)))

(declare-fun bs!1877055 () Bool)

(assert (= bs!1877055 d!2205005))

(assert (=> bs!1877055 m!7773554))

(assert (=> bs!1877055 m!7773554))

(declare-fun m!7773660 () Bool)

(assert (=> bs!1877055 m!7773660))

(declare-fun m!7773662 () Bool)

(assert (=> bs!1877055 m!7773662))

(declare-fun m!7773664 () Bool)

(assert (=> bs!1877055 m!7773664))

(assert (=> b!7055754 d!2205005))

(assert (=> b!7055734 d!2205003))

(declare-fun d!2205007 () Bool)

(assert (=> d!2205007 (forall!16520 (++!15657 (exprs!7070 lt!2532247) (exprs!7070 ct2!306)) lambda!420423)))

(declare-fun lt!2532386 () Unit!161821)

(assert (=> d!2205007 (= lt!2532386 (choose!53820 (exprs!7070 lt!2532247) (exprs!7070 ct2!306) lambda!420423))))

(assert (=> d!2205007 (forall!16520 (exprs!7070 lt!2532247) lambda!420423)))

(assert (=> d!2205007 (= (lemmaConcatPreservesForall!885 (exprs!7070 lt!2532247) (exprs!7070 ct2!306) lambda!420423) lt!2532386)))

(declare-fun bs!1877056 () Bool)

(assert (= bs!1877056 d!2205007))

(assert (=> bs!1877056 m!7773528))

(assert (=> bs!1877056 m!7773528))

(declare-fun m!7773666 () Bool)

(assert (=> bs!1877056 m!7773666))

(declare-fun m!7773668 () Bool)

(assert (=> bs!1877056 m!7773668))

(declare-fun m!7773670 () Bool)

(assert (=> bs!1877056 m!7773670))

(assert (=> b!7055742 d!2205007))

(declare-fun d!2205009 () Bool)

(declare-fun e!4241844 () Bool)

(assert (=> d!2205009 e!4241844))

(declare-fun res!2880569 () Bool)

(assert (=> d!2205009 (=> (not res!2880569) (not e!4241844))))

(declare-fun lt!2532389 () List!68248)

(declare-fun content!13688 (List!68248) (Set Regex!17574))

(assert (=> d!2205009 (= res!2880569 (= (content!13688 lt!2532389) (set.union (content!13688 (exprs!7070 lt!2532247)) (content!13688 (exprs!7070 ct2!306)))))))

(declare-fun e!4241845 () List!68248)

(assert (=> d!2205009 (= lt!2532389 e!4241845)))

(declare-fun c!1314537 () Bool)

(assert (=> d!2205009 (= c!1314537 (is-Nil!68124 (exprs!7070 lt!2532247)))))

(assert (=> d!2205009 (= (++!15657 (exprs!7070 lt!2532247) (exprs!7070 ct2!306)) lt!2532389)))

(declare-fun b!7055851 () Bool)

(assert (=> b!7055851 (= e!4241844 (or (not (= (exprs!7070 ct2!306) Nil!68124)) (= lt!2532389 (exprs!7070 lt!2532247))))))

(declare-fun b!7055850 () Bool)

(declare-fun res!2880570 () Bool)

(assert (=> b!7055850 (=> (not res!2880570) (not e!4241844))))

(declare-fun size!41153 (List!68248) Int)

(assert (=> b!7055850 (= res!2880570 (= (size!41153 lt!2532389) (+ (size!41153 (exprs!7070 lt!2532247)) (size!41153 (exprs!7070 ct2!306)))))))

(declare-fun b!7055849 () Bool)

(assert (=> b!7055849 (= e!4241845 (Cons!68124 (h!74572 (exprs!7070 lt!2532247)) (++!15657 (t!382027 (exprs!7070 lt!2532247)) (exprs!7070 ct2!306))))))

(declare-fun b!7055848 () Bool)

(assert (=> b!7055848 (= e!4241845 (exprs!7070 ct2!306))))

(assert (= (and d!2205009 c!1314537) b!7055848))

(assert (= (and d!2205009 (not c!1314537)) b!7055849))

(assert (= (and d!2205009 res!2880569) b!7055850))

(assert (= (and b!7055850 res!2880570) b!7055851))

(declare-fun m!7773672 () Bool)

(assert (=> d!2205009 m!7773672))

(declare-fun m!7773674 () Bool)

(assert (=> d!2205009 m!7773674))

(declare-fun m!7773676 () Bool)

(assert (=> d!2205009 m!7773676))

(declare-fun m!7773678 () Bool)

(assert (=> b!7055850 m!7773678))

(declare-fun m!7773680 () Bool)

(assert (=> b!7055850 m!7773680))

(declare-fun m!7773682 () Bool)

(assert (=> b!7055850 m!7773682))

(declare-fun m!7773684 () Bool)

(assert (=> b!7055849 m!7773684))

(assert (=> b!7055737 d!2205009))

(assert (=> b!7055737 d!2205007))

(declare-fun d!2205011 () Bool)

(declare-fun e!4241848 () Bool)

(assert (=> d!2205011 e!4241848))

(declare-fun res!2880573 () Bool)

(assert (=> d!2205011 (=> (not res!2880573) (not e!4241848))))

(declare-fun lt!2532392 () Context!13140)

(declare-fun dynLambda!27644 (Int Context!13140) Context!13140)

(assert (=> d!2205011 (= res!2880573 (= lt!2532254 (dynLambda!27644 lambda!420422 lt!2532392)))))

(declare-fun choose!53821 ((Set Context!13140) Int Context!13140) Context!13140)

(assert (=> d!2205011 (= lt!2532392 (choose!53821 z1!570 lambda!420422 lt!2532254))))

(declare-fun map!15894 ((Set Context!13140) Int) (Set Context!13140))

(assert (=> d!2205011 (set.member lt!2532254 (map!15894 z1!570 lambda!420422))))

(assert (=> d!2205011 (= (mapPost2!403 z1!570 lambda!420422 lt!2532254) lt!2532392)))

(declare-fun b!7055855 () Bool)

(assert (=> b!7055855 (= e!4241848 (set.member lt!2532392 z1!570))))

(assert (= (and d!2205011 res!2880573) b!7055855))

(declare-fun b_lambda!268715 () Bool)

(assert (=> (not b_lambda!268715) (not d!2205011)))

(declare-fun m!7773686 () Bool)

(assert (=> d!2205011 m!7773686))

(declare-fun m!7773688 () Bool)

(assert (=> d!2205011 m!7773688))

(declare-fun m!7773690 () Bool)

(assert (=> d!2205011 m!7773690))

(declare-fun m!7773692 () Bool)

(assert (=> d!2205011 m!7773692))

(declare-fun m!7773694 () Bool)

(assert (=> b!7055855 m!7773694))

(assert (=> b!7055737 d!2205011))

(declare-fun d!2205015 () Bool)

(declare-fun c!1314538 () Bool)

(assert (=> d!2205015 (= c!1314538 (isEmpty!39736 s!7408))))

(declare-fun e!4241849 () Bool)

(assert (=> d!2205015 (= (matchZipper!3114 lt!2532265 s!7408) e!4241849)))

(declare-fun b!7055856 () Bool)

(assert (=> b!7055856 (= e!4241849 (nullableZipper!2659 lt!2532265))))

(declare-fun b!7055857 () Bool)

(assert (=> b!7055857 (= e!4241849 (matchZipper!3114 (derivationStepZipper!3024 lt!2532265 (head!14360 s!7408)) (tail!13708 s!7408)))))

(assert (= (and d!2205015 c!1314538) b!7055856))

(assert (= (and d!2205015 (not c!1314538)) b!7055857))

(declare-fun m!7773696 () Bool)

(assert (=> d!2205015 m!7773696))

(declare-fun m!7773698 () Bool)

(assert (=> b!7055856 m!7773698))

(declare-fun m!7773700 () Bool)

(assert (=> b!7055857 m!7773700))

(assert (=> b!7055857 m!7773700))

(declare-fun m!7773702 () Bool)

(assert (=> b!7055857 m!7773702))

(declare-fun m!7773704 () Bool)

(assert (=> b!7055857 m!7773704))

(assert (=> b!7055857 m!7773702))

(assert (=> b!7055857 m!7773704))

(declare-fun m!7773706 () Bool)

(assert (=> b!7055857 m!7773706))

(assert (=> b!7055746 d!2205015))

(assert (=> b!7055746 d!2205005))

(assert (=> b!7055745 d!2205003))

(assert (=> b!7055745 d!2205005))

(declare-fun d!2205017 () Bool)

(declare-fun e!4241852 () Bool)

(assert (=> d!2205017 e!4241852))

(declare-fun res!2880576 () Bool)

(assert (=> d!2205017 (=> (not res!2880576) (not e!4241852))))

(declare-fun lt!2532395 () List!68250)

(declare-fun noDuplicate!2691 (List!68250) Bool)

(assert (=> d!2205017 (= res!2880576 (noDuplicate!2691 lt!2532395))))

(declare-fun choose!53822 ((Set Context!13140)) List!68250)

(assert (=> d!2205017 (= lt!2532395 (choose!53822 lt!2532270))))

(assert (=> d!2205017 (= (toList!10915 lt!2532270) lt!2532395)))

(declare-fun b!7055860 () Bool)

(declare-fun content!13689 (List!68250) (Set Context!13140))

(assert (=> b!7055860 (= e!4241852 (= (content!13689 lt!2532395) lt!2532270))))

(assert (= (and d!2205017 res!2880576) b!7055860))

(declare-fun m!7773708 () Bool)

(assert (=> d!2205017 m!7773708))

(declare-fun m!7773710 () Bool)

(assert (=> d!2205017 m!7773710))

(declare-fun m!7773712 () Bool)

(assert (=> b!7055860 m!7773712))

(assert (=> b!7055755 d!2205017))

(declare-fun d!2205019 () Bool)

(declare-fun e!4241859 () Bool)

(assert (=> d!2205019 e!4241859))

(declare-fun res!2880581 () Bool)

(assert (=> d!2205019 (=> (not res!2880581) (not e!4241859))))

(declare-fun lt!2532400 () Context!13140)

(declare-fun dynLambda!27645 (Int Context!13140) Bool)

(assert (=> d!2205019 (= res!2880581 (dynLambda!27645 lambda!420421 lt!2532400))))

(declare-fun getWitness!1641 (List!68250 Int) Context!13140)

(assert (=> d!2205019 (= lt!2532400 (getWitness!1641 (toList!10915 lt!2532270) lambda!420421))))

(declare-fun exists!3567 ((Set Context!13140) Int) Bool)

(assert (=> d!2205019 (exists!3567 lt!2532270 lambda!420421)))

(assert (=> d!2205019 (= (getWitness!1639 lt!2532270 lambda!420421) lt!2532400)))

(declare-fun b!7055869 () Bool)

(assert (=> b!7055869 (= e!4241859 (set.member lt!2532400 lt!2532270))))

(assert (= (and d!2205019 res!2880581) b!7055869))

(declare-fun b_lambda!268717 () Bool)

(assert (=> (not b_lambda!268717) (not d!2205019)))

(declare-fun m!7773714 () Bool)

(assert (=> d!2205019 m!7773714))

(assert (=> d!2205019 m!7773540))

(assert (=> d!2205019 m!7773540))

(declare-fun m!7773716 () Bool)

(assert (=> d!2205019 m!7773716))

(declare-fun m!7773718 () Bool)

(assert (=> d!2205019 m!7773718))

(declare-fun m!7773720 () Bool)

(assert (=> b!7055869 m!7773720))

(assert (=> b!7055755 d!2205019))

(declare-fun bs!1877057 () Bool)

(declare-fun d!2205021 () Bool)

(assert (= bs!1877057 (and d!2205021 b!7055755)))

(declare-fun lambda!420475 () Int)

(assert (=> bs!1877057 (not (= lambda!420475 lambda!420421))))

(assert (=> d!2205021 true))

(declare-fun order!28323 () Int)

(declare-fun dynLambda!27646 (Int Int) Int)

(assert (=> d!2205021 (< (dynLambda!27646 order!28323 lambda!420421) (dynLambda!27646 order!28323 lambda!420475))))

(declare-fun forall!16521 (List!68250 Int) Bool)

(assert (=> d!2205021 (= (exists!3565 lt!2532264 lambda!420421) (not (forall!16521 lt!2532264 lambda!420475)))))

(declare-fun bs!1877058 () Bool)

(assert (= bs!1877058 d!2205021))

(declare-fun m!7773722 () Bool)

(assert (=> bs!1877058 m!7773722))

(assert (=> b!7055755 d!2205021))

(declare-fun d!2205023 () Bool)

(declare-fun c!1314541 () Bool)

(assert (=> d!2205023 (= c!1314541 (isEmpty!39736 s!7408))))

(declare-fun e!4241860 () Bool)

(assert (=> d!2205023 (= (matchZipper!3114 lt!2532244 s!7408) e!4241860)))

(declare-fun b!7055874 () Bool)

(assert (=> b!7055874 (= e!4241860 (nullableZipper!2659 lt!2532244))))

(declare-fun b!7055875 () Bool)

(assert (=> b!7055875 (= e!4241860 (matchZipper!3114 (derivationStepZipper!3024 lt!2532244 (head!14360 s!7408)) (tail!13708 s!7408)))))

(assert (= (and d!2205023 c!1314541) b!7055874))

(assert (= (and d!2205023 (not c!1314541)) b!7055875))

(assert (=> d!2205023 m!7773696))

(declare-fun m!7773724 () Bool)

(assert (=> b!7055874 m!7773724))

(assert (=> b!7055875 m!7773700))

(assert (=> b!7055875 m!7773700))

(declare-fun m!7773726 () Bool)

(assert (=> b!7055875 m!7773726))

(assert (=> b!7055875 m!7773704))

(assert (=> b!7055875 m!7773726))

(assert (=> b!7055875 m!7773704))

(declare-fun m!7773728 () Bool)

(assert (=> b!7055875 m!7773728))

(assert (=> b!7055755 d!2205023))

(declare-fun bs!1877059 () Bool)

(declare-fun d!2205025 () Bool)

(assert (= bs!1877059 (and d!2205025 b!7055755)))

(declare-fun lambda!420478 () Int)

(assert (=> bs!1877059 (= lambda!420478 lambda!420421)))

(declare-fun bs!1877060 () Bool)

(assert (= bs!1877060 (and d!2205025 d!2205021)))

(assert (=> bs!1877060 (not (= lambda!420478 lambda!420475))))

(assert (=> d!2205025 true))

(assert (=> d!2205025 (exists!3565 lt!2532264 lambda!420478)))

(declare-fun lt!2532404 () Unit!161821)

(declare-fun choose!53823 (List!68250 List!68249) Unit!161821)

(assert (=> d!2205025 (= lt!2532404 (choose!53823 lt!2532264 s!7408))))

(assert (=> d!2205025 (matchZipper!3114 (content!13689 lt!2532264) s!7408)))

(assert (=> d!2205025 (= (lemmaZipperMatchesExistsMatchingContext!495 lt!2532264 s!7408) lt!2532404)))

(declare-fun bs!1877061 () Bool)

(assert (= bs!1877061 d!2205025))

(declare-fun m!7773744 () Bool)

(assert (=> bs!1877061 m!7773744))

(declare-fun m!7773746 () Bool)

(assert (=> bs!1877061 m!7773746))

(declare-fun m!7773748 () Bool)

(assert (=> bs!1877061 m!7773748))

(assert (=> bs!1877061 m!7773748))

(declare-fun m!7773750 () Bool)

(assert (=> bs!1877061 m!7773750))

(assert (=> b!7055755 d!2205025))

(assert (=> b!7055736 d!2205005))

(declare-fun b!7055890 () Bool)

(declare-fun e!4241871 () Bool)

(assert (=> b!7055890 (= e!4241871 (nullable!7257 (h!74572 (exprs!7070 lt!2532266))))))

(declare-fun call!640982 () (Set Context!13140))

(declare-fun e!4241870 () (Set Context!13140))

(declare-fun b!7055891 () Bool)

(assert (=> b!7055891 (= e!4241870 (set.union call!640982 (derivationStepZipperUp!2158 (Context!13141 (t!382027 (exprs!7070 lt!2532266))) (h!74573 s!7408))))))

(declare-fun b!7055892 () Bool)

(declare-fun e!4241869 () (Set Context!13140))

(assert (=> b!7055892 (= e!4241870 e!4241869)))

(declare-fun c!1314549 () Bool)

(assert (=> b!7055892 (= c!1314549 (is-Cons!68124 (exprs!7070 lt!2532266)))))

(declare-fun b!7055893 () Bool)

(assert (=> b!7055893 (= e!4241869 (as set.empty (Set Context!13140)))))

(declare-fun b!7055894 () Bool)

(assert (=> b!7055894 (= e!4241869 call!640982)))

(declare-fun d!2205029 () Bool)

(declare-fun c!1314550 () Bool)

(assert (=> d!2205029 (= c!1314550 e!4241871)))

(declare-fun res!2880588 () Bool)

(assert (=> d!2205029 (=> (not res!2880588) (not e!4241871))))

(assert (=> d!2205029 (= res!2880588 (is-Cons!68124 (exprs!7070 lt!2532266)))))

(assert (=> d!2205029 (= (derivationStepZipperUp!2158 lt!2532266 (h!74573 s!7408)) e!4241870)))

(declare-fun bm!640977 () Bool)

(assert (=> bm!640977 (= call!640982 (derivationStepZipperDown!2208 (h!74572 (exprs!7070 lt!2532266)) (Context!13141 (t!382027 (exprs!7070 lt!2532266))) (h!74573 s!7408)))))

(assert (= (and d!2205029 res!2880588) b!7055890))

(assert (= (and d!2205029 c!1314550) b!7055891))

(assert (= (and d!2205029 (not c!1314550)) b!7055892))

(assert (= (and b!7055892 c!1314549) b!7055894))

(assert (= (and b!7055892 (not c!1314549)) b!7055893))

(assert (= (or b!7055891 b!7055894) bm!640977))

(declare-fun m!7773758 () Bool)

(assert (=> b!7055890 m!7773758))

(declare-fun m!7773760 () Bool)

(assert (=> b!7055891 m!7773760))

(declare-fun m!7773762 () Bool)

(assert (=> bm!640977 m!7773762))

(assert (=> b!7055736 d!2205029))

(declare-fun c!1314562 () Bool)

(declare-fun c!1314561 () Bool)

(declare-fun c!1314564 () Bool)

(declare-fun call!640997 () (Set Context!13140))

(declare-fun call!640996 () List!68248)

(declare-fun bm!640990 () Bool)

(assert (=> bm!640990 (= call!640997 (derivationStepZipperDown!2208 (ite c!1314562 (regOne!35661 (h!74572 (exprs!7070 lt!2532247))) (ite c!1314561 (regTwo!35660 (h!74572 (exprs!7070 lt!2532247))) (ite c!1314564 (regOne!35660 (h!74572 (exprs!7070 lt!2532247))) (reg!17903 (h!74572 (exprs!7070 lt!2532247)))))) (ite (or c!1314562 c!1314561) lt!2532266 (Context!13141 call!640996)) (h!74573 s!7408)))))

(declare-fun b!7055921 () Bool)

(declare-fun e!4241888 () (Set Context!13140))

(declare-fun call!640999 () (Set Context!13140))

(assert (=> b!7055921 (= e!4241888 call!640999)))

(declare-fun bm!640991 () Bool)

(declare-fun call!640995 () List!68248)

(declare-fun $colon$colon!2623 (List!68248 Regex!17574) List!68248)

(assert (=> bm!640991 (= call!640995 ($colon$colon!2623 (exprs!7070 lt!2532266) (ite (or c!1314561 c!1314564) (regTwo!35660 (h!74572 (exprs!7070 lt!2532247))) (h!74572 (exprs!7070 lt!2532247)))))))

(declare-fun bm!640992 () Bool)

(declare-fun call!640998 () (Set Context!13140))

(assert (=> bm!640992 (= call!640998 (derivationStepZipperDown!2208 (ite c!1314562 (regTwo!35661 (h!74572 (exprs!7070 lt!2532247))) (regOne!35660 (h!74572 (exprs!7070 lt!2532247)))) (ite c!1314562 lt!2532266 (Context!13141 call!640995)) (h!74573 s!7408)))))

(declare-fun b!7055922 () Bool)

(declare-fun e!4241892 () (Set Context!13140))

(declare-fun e!4241889 () (Set Context!13140))

(assert (=> b!7055922 (= e!4241892 e!4241889)))

(assert (=> b!7055922 (= c!1314564 (is-Concat!26419 (h!74572 (exprs!7070 lt!2532247))))))

(declare-fun bm!640993 () Bool)

(declare-fun call!641000 () (Set Context!13140))

(assert (=> bm!640993 (= call!641000 call!640997)))

(declare-fun b!7055923 () Bool)

(declare-fun e!4241891 () Bool)

(assert (=> b!7055923 (= c!1314561 e!4241891)))

(declare-fun res!2880594 () Bool)

(assert (=> b!7055923 (=> (not res!2880594) (not e!4241891))))

(assert (=> b!7055923 (= res!2880594 (is-Concat!26419 (h!74572 (exprs!7070 lt!2532247))))))

(declare-fun e!4241887 () (Set Context!13140))

(assert (=> b!7055923 (= e!4241887 e!4241892)))

(declare-fun bm!640994 () Bool)

(assert (=> bm!640994 (= call!640996 call!640995)))

(declare-fun b!7055924 () Bool)

(assert (=> b!7055924 (= e!4241887 (set.union call!640997 call!640998))))

(declare-fun d!2205033 () Bool)

(declare-fun c!1314565 () Bool)

(assert (=> d!2205033 (= c!1314565 (and (is-ElementMatch!17574 (h!74572 (exprs!7070 lt!2532247))) (= (c!1314520 (h!74572 (exprs!7070 lt!2532247))) (h!74573 s!7408))))))

(declare-fun e!4241890 () (Set Context!13140))

(assert (=> d!2205033 (= (derivationStepZipperDown!2208 (h!74572 (exprs!7070 lt!2532247)) lt!2532266 (h!74573 s!7408)) e!4241890)))

(declare-fun b!7055925 () Bool)

(assert (=> b!7055925 (= e!4241890 (set.insert lt!2532266 (as set.empty (Set Context!13140))))))

(declare-fun b!7055926 () Bool)

(assert (=> b!7055926 (= e!4241890 e!4241887)))

(assert (=> b!7055926 (= c!1314562 (is-Union!17574 (h!74572 (exprs!7070 lt!2532247))))))

(declare-fun b!7055927 () Bool)

(assert (=> b!7055927 (= e!4241891 (nullable!7257 (regOne!35660 (h!74572 (exprs!7070 lt!2532247)))))))

(declare-fun bm!640995 () Bool)

(assert (=> bm!640995 (= call!640999 call!641000)))

(declare-fun b!7055928 () Bool)

(assert (=> b!7055928 (= e!4241892 (set.union call!640998 call!641000))))

(declare-fun b!7055929 () Bool)

(assert (=> b!7055929 (= e!4241888 (as set.empty (Set Context!13140)))))

(declare-fun b!7055930 () Bool)

(declare-fun c!1314563 () Bool)

(assert (=> b!7055930 (= c!1314563 (is-Star!17574 (h!74572 (exprs!7070 lt!2532247))))))

(assert (=> b!7055930 (= e!4241889 e!4241888)))

(declare-fun b!7055931 () Bool)

(assert (=> b!7055931 (= e!4241889 call!640999)))

(assert (= (and d!2205033 c!1314565) b!7055925))

(assert (= (and d!2205033 (not c!1314565)) b!7055926))

(assert (= (and b!7055926 c!1314562) b!7055924))

(assert (= (and b!7055926 (not c!1314562)) b!7055923))

(assert (= (and b!7055923 res!2880594) b!7055927))

(assert (= (and b!7055923 c!1314561) b!7055928))

(assert (= (and b!7055923 (not c!1314561)) b!7055922))

(assert (= (and b!7055922 c!1314564) b!7055931))

(assert (= (and b!7055922 (not c!1314564)) b!7055930))

(assert (= (and b!7055930 c!1314563) b!7055921))

(assert (= (and b!7055930 (not c!1314563)) b!7055929))

(assert (= (or b!7055931 b!7055921) bm!640994))

(assert (= (or b!7055931 b!7055921) bm!640995))

(assert (= (or b!7055928 bm!640995) bm!640993))

(assert (= (or b!7055928 bm!640994) bm!640991))

(assert (= (or b!7055924 bm!640993) bm!640990))

(assert (= (or b!7055924 b!7055928) bm!640992))

(declare-fun m!7773774 () Bool)

(assert (=> b!7055927 m!7773774))

(declare-fun m!7773776 () Bool)

(assert (=> bm!640990 m!7773776))

(declare-fun m!7773778 () Bool)

(assert (=> bm!640992 m!7773778))

(declare-fun m!7773780 () Bool)

(assert (=> bm!640991 m!7773780))

(assert (=> b!7055925 m!7773500))

(assert (=> b!7055736 d!2205033))

(declare-fun d!2205037 () Bool)

(declare-fun e!4241893 () Bool)

(assert (=> d!2205037 e!4241893))

(declare-fun res!2880595 () Bool)

(assert (=> d!2205037 (=> (not res!2880595) (not e!4241893))))

(declare-fun lt!2532411 () List!68248)

(assert (=> d!2205037 (= res!2880595 (= (content!13688 lt!2532411) (set.union (content!13688 lt!2532263) (content!13688 (exprs!7070 ct2!306)))))))

(declare-fun e!4241894 () List!68248)

(assert (=> d!2205037 (= lt!2532411 e!4241894)))

(declare-fun c!1314566 () Bool)

(assert (=> d!2205037 (= c!1314566 (is-Nil!68124 lt!2532263))))

(assert (=> d!2205037 (= (++!15657 lt!2532263 (exprs!7070 ct2!306)) lt!2532411)))

(declare-fun b!7055935 () Bool)

(assert (=> b!7055935 (= e!4241893 (or (not (= (exprs!7070 ct2!306) Nil!68124)) (= lt!2532411 lt!2532263)))))

(declare-fun b!7055934 () Bool)

(declare-fun res!2880596 () Bool)

(assert (=> b!7055934 (=> (not res!2880596) (not e!4241893))))

(assert (=> b!7055934 (= res!2880596 (= (size!41153 lt!2532411) (+ (size!41153 lt!2532263) (size!41153 (exprs!7070 ct2!306)))))))

(declare-fun b!7055933 () Bool)

(assert (=> b!7055933 (= e!4241894 (Cons!68124 (h!74572 lt!2532263) (++!15657 (t!382027 lt!2532263) (exprs!7070 ct2!306))))))

(declare-fun b!7055932 () Bool)

(assert (=> b!7055932 (= e!4241894 (exprs!7070 ct2!306))))

(assert (= (and d!2205037 c!1314566) b!7055932))

(assert (= (and d!2205037 (not c!1314566)) b!7055933))

(assert (= (and d!2205037 res!2880595) b!7055934))

(assert (= (and b!7055934 res!2880596) b!7055935))

(declare-fun m!7773784 () Bool)

(assert (=> d!2205037 m!7773784))

(declare-fun m!7773786 () Bool)

(assert (=> d!2205037 m!7773786))

(assert (=> d!2205037 m!7773676))

(declare-fun m!7773788 () Bool)

(assert (=> b!7055934 m!7773788))

(declare-fun m!7773790 () Bool)

(assert (=> b!7055934 m!7773790))

(assert (=> b!7055934 m!7773682))

(declare-fun m!7773792 () Bool)

(assert (=> b!7055933 m!7773792))

(assert (=> b!7055736 d!2205037))

(declare-fun bs!1877066 () Bool)

(declare-fun d!2205041 () Bool)

(assert (= bs!1877066 (and d!2205041 b!7055737)))

(declare-fun lambda!420484 () Int)

(assert (=> bs!1877066 (= lambda!420484 lambda!420423)))

(assert (=> d!2205041 (= (inv!86795 (Context!13141 (++!15657 (exprs!7070 c!403) (exprs!7070 ct2!306)))) (forall!16520 (exprs!7070 (Context!13141 (++!15657 (exprs!7070 c!403) (exprs!7070 ct2!306)))) lambda!420484))))

(declare-fun bs!1877067 () Bool)

(assert (= bs!1877067 d!2205041))

(declare-fun m!7773810 () Bool)

(assert (=> bs!1877067 m!7773810))

(assert (=> b!7055739 d!2205041))

(declare-fun d!2205047 () Bool)

(declare-fun e!4241897 () Bool)

(assert (=> d!2205047 e!4241897))

(declare-fun res!2880599 () Bool)

(assert (=> d!2205047 (=> (not res!2880599) (not e!4241897))))

(declare-fun lt!2532414 () List!68248)

(assert (=> d!2205047 (= res!2880599 (= (content!13688 lt!2532414) (set.union (content!13688 (exprs!7070 c!403)) (content!13688 (exprs!7070 ct2!306)))))))

(declare-fun e!4241898 () List!68248)

(assert (=> d!2205047 (= lt!2532414 e!4241898)))

(declare-fun c!1314568 () Bool)

(assert (=> d!2205047 (= c!1314568 (is-Nil!68124 (exprs!7070 c!403)))))

(assert (=> d!2205047 (= (++!15657 (exprs!7070 c!403) (exprs!7070 ct2!306)) lt!2532414)))

(declare-fun b!7055943 () Bool)

(assert (=> b!7055943 (= e!4241897 (or (not (= (exprs!7070 ct2!306) Nil!68124)) (= lt!2532414 (exprs!7070 c!403))))))

(declare-fun b!7055942 () Bool)

(declare-fun res!2880600 () Bool)

(assert (=> b!7055942 (=> (not res!2880600) (not e!4241897))))

(assert (=> b!7055942 (= res!2880600 (= (size!41153 lt!2532414) (+ (size!41153 (exprs!7070 c!403)) (size!41153 (exprs!7070 ct2!306)))))))

(declare-fun b!7055941 () Bool)

(assert (=> b!7055941 (= e!4241898 (Cons!68124 (h!74572 (exprs!7070 c!403)) (++!15657 (t!382027 (exprs!7070 c!403)) (exprs!7070 ct2!306))))))

(declare-fun b!7055940 () Bool)

(assert (=> b!7055940 (= e!4241898 (exprs!7070 ct2!306))))

(assert (= (and d!2205047 c!1314568) b!7055940))

(assert (= (and d!2205047 (not c!1314568)) b!7055941))

(assert (= (and d!2205047 res!2880599) b!7055942))

(assert (= (and b!7055942 res!2880600) b!7055943))

(declare-fun m!7773812 () Bool)

(assert (=> d!2205047 m!7773812))

(declare-fun m!7773814 () Bool)

(assert (=> d!2205047 m!7773814))

(assert (=> d!2205047 m!7773676))

(declare-fun m!7773816 () Bool)

(assert (=> b!7055942 m!7773816))

(declare-fun m!7773818 () Bool)

(assert (=> b!7055942 m!7773818))

(assert (=> b!7055942 m!7773682))

(declare-fun m!7773820 () Bool)

(assert (=> b!7055941 m!7773820))

(assert (=> b!7055739 d!2205047))

(declare-fun d!2205049 () Bool)

(assert (=> d!2205049 (forall!16520 (++!15657 (exprs!7070 c!403) (exprs!7070 ct2!306)) lambda!420423)))

(declare-fun lt!2532415 () Unit!161821)

(assert (=> d!2205049 (= lt!2532415 (choose!53820 (exprs!7070 c!403) (exprs!7070 ct2!306) lambda!420423))))

(assert (=> d!2205049 (forall!16520 (exprs!7070 c!403) lambda!420423)))

(assert (=> d!2205049 (= (lemmaConcatPreservesForall!885 (exprs!7070 c!403) (exprs!7070 ct2!306) lambda!420423) lt!2532415)))

(declare-fun bs!1877068 () Bool)

(assert (= bs!1877068 d!2205049))

(assert (=> bs!1877068 m!7773558))

(assert (=> bs!1877068 m!7773558))

(declare-fun m!7773822 () Bool)

(assert (=> bs!1877068 m!7773822))

(declare-fun m!7773824 () Bool)

(assert (=> bs!1877068 m!7773824))

(declare-fun m!7773826 () Bool)

(assert (=> bs!1877068 m!7773826))

(assert (=> b!7055739 d!2205049))

(declare-fun b!7055944 () Bool)

(declare-fun e!4241901 () Bool)

(assert (=> b!7055944 (= e!4241901 (nullable!7257 (h!74572 (exprs!7070 lt!2532251))))))

(declare-fun b!7055945 () Bool)

(declare-fun call!641001 () (Set Context!13140))

(declare-fun e!4241900 () (Set Context!13140))

(assert (=> b!7055945 (= e!4241900 (set.union call!641001 (derivationStepZipperUp!2158 (Context!13141 (t!382027 (exprs!7070 lt!2532251))) (h!74573 s!7408))))))

(declare-fun b!7055946 () Bool)

(declare-fun e!4241899 () (Set Context!13140))

(assert (=> b!7055946 (= e!4241900 e!4241899)))

(declare-fun c!1314569 () Bool)

(assert (=> b!7055946 (= c!1314569 (is-Cons!68124 (exprs!7070 lt!2532251)))))

(declare-fun b!7055947 () Bool)

(assert (=> b!7055947 (= e!4241899 (as set.empty (Set Context!13140)))))

(declare-fun b!7055948 () Bool)

(assert (=> b!7055948 (= e!4241899 call!641001)))

(declare-fun d!2205051 () Bool)

(declare-fun c!1314570 () Bool)

(assert (=> d!2205051 (= c!1314570 e!4241901)))

(declare-fun res!2880601 () Bool)

(assert (=> d!2205051 (=> (not res!2880601) (not e!4241901))))

(assert (=> d!2205051 (= res!2880601 (is-Cons!68124 (exprs!7070 lt!2532251)))))

(assert (=> d!2205051 (= (derivationStepZipperUp!2158 lt!2532251 (h!74573 s!7408)) e!4241900)))

(declare-fun bm!640996 () Bool)

(assert (=> bm!640996 (= call!641001 (derivationStepZipperDown!2208 (h!74572 (exprs!7070 lt!2532251)) (Context!13141 (t!382027 (exprs!7070 lt!2532251))) (h!74573 s!7408)))))

(assert (= (and d!2205051 res!2880601) b!7055944))

(assert (= (and d!2205051 c!1314570) b!7055945))

(assert (= (and d!2205051 (not c!1314570)) b!7055946))

(assert (= (and b!7055946 c!1314569) b!7055948))

(assert (= (and b!7055946 (not c!1314569)) b!7055947))

(assert (= (or b!7055945 b!7055948) bm!640996))

(declare-fun m!7773828 () Bool)

(assert (=> b!7055944 m!7773828))

(declare-fun m!7773830 () Bool)

(assert (=> b!7055945 m!7773830))

(declare-fun m!7773832 () Bool)

(assert (=> bm!640996 m!7773832))

(assert (=> b!7055747 d!2205051))

(declare-fun d!2205053 () Bool)

(declare-fun choose!53824 ((Set Context!13140) Int) (Set Context!13140))

(assert (=> d!2205053 (= (flatMap!2500 lt!2532255 lambda!420424) (choose!53824 lt!2532255 lambda!420424))))

(declare-fun bs!1877070 () Bool)

(assert (= bs!1877070 d!2205053))

(declare-fun m!7773836 () Bool)

(assert (=> bs!1877070 m!7773836))

(assert (=> b!7055747 d!2205053))

(assert (=> b!7055747 d!2205007))

(declare-fun d!2205057 () Bool)

(declare-fun dynLambda!27647 (Int Context!13140) (Set Context!13140))

(assert (=> d!2205057 (= (flatMap!2500 lt!2532255 lambda!420424) (dynLambda!27647 lambda!420424 lt!2532251))))

(declare-fun lt!2532418 () Unit!161821)

(declare-fun choose!53825 ((Set Context!13140) Context!13140 Int) Unit!161821)

(assert (=> d!2205057 (= lt!2532418 (choose!53825 lt!2532255 lt!2532251 lambda!420424))))

(assert (=> d!2205057 (= lt!2532255 (set.insert lt!2532251 (as set.empty (Set Context!13140))))))

(assert (=> d!2205057 (= (lemmaFlatMapOnSingletonSet!2009 lt!2532255 lt!2532251 lambda!420424) lt!2532418)))

(declare-fun b_lambda!268721 () Bool)

(assert (=> (not b_lambda!268721) (not d!2205057)))

(declare-fun bs!1877071 () Bool)

(assert (= bs!1877071 d!2205057))

(assert (=> bs!1877071 m!7773522))

(declare-fun m!7773838 () Bool)

(assert (=> bs!1877071 m!7773838))

(declare-fun m!7773840 () Bool)

(assert (=> bs!1877071 m!7773840))

(assert (=> bs!1877071 m!7773524))

(assert (=> b!7055747 d!2205057))

(declare-fun bs!1877072 () Bool)

(declare-fun d!2205059 () Bool)

(assert (= bs!1877072 (and d!2205059 b!7055747)))

(declare-fun lambda!420487 () Int)

(assert (=> bs!1877072 (= lambda!420487 lambda!420424)))

(assert (=> d!2205059 true))

(assert (=> d!2205059 (= (derivationStepZipper!3024 lt!2532255 (h!74573 s!7408)) (flatMap!2500 lt!2532255 lambda!420487))))

(declare-fun bs!1877073 () Bool)

(assert (= bs!1877073 d!2205059))

(declare-fun m!7773842 () Bool)

(assert (=> bs!1877073 m!7773842))

(assert (=> b!7055747 d!2205059))

(declare-fun d!2205061 () Bool)

(declare-fun nullableFct!2776 (Regex!17574) Bool)

(assert (=> d!2205061 (= (nullable!7257 (h!74572 (exprs!7070 lt!2532247))) (nullableFct!2776 (h!74572 (exprs!7070 lt!2532247))))))

(declare-fun bs!1877074 () Bool)

(assert (= bs!1877074 d!2205061))

(declare-fun m!7773844 () Bool)

(assert (=> bs!1877074 m!7773844))

(assert (=> b!7055741 d!2205061))

(declare-fun d!2205063 () Bool)

(assert (=> d!2205063 (= (tail!13706 (exprs!7070 lt!2532247)) (t!382027 (exprs!7070 lt!2532247)))))

(assert (=> b!7055741 d!2205063))

(declare-fun d!2205065 () Bool)

(declare-fun c!1314573 () Bool)

(assert (=> d!2205065 (= c!1314573 (isEmpty!39736 s!7408))))

(declare-fun e!4241902 () Bool)

(assert (=> d!2205065 (= (matchZipper!3114 lt!2532270 s!7408) e!4241902)))

(declare-fun b!7055951 () Bool)

(assert (=> b!7055951 (= e!4241902 (nullableZipper!2659 lt!2532270))))

(declare-fun b!7055952 () Bool)

(assert (=> b!7055952 (= e!4241902 (matchZipper!3114 (derivationStepZipper!3024 lt!2532270 (head!14360 s!7408)) (tail!13708 s!7408)))))

(assert (= (and d!2205065 c!1314573) b!7055951))

(assert (= (and d!2205065 (not c!1314573)) b!7055952))

(assert (=> d!2205065 m!7773696))

(declare-fun m!7773850 () Bool)

(assert (=> b!7055951 m!7773850))

(assert (=> b!7055952 m!7773700))

(assert (=> b!7055952 m!7773700))

(declare-fun m!7773852 () Bool)

(assert (=> b!7055952 m!7773852))

(assert (=> b!7055952 m!7773704))

(assert (=> b!7055952 m!7773852))

(assert (=> b!7055952 m!7773704))

(declare-fun m!7773854 () Bool)

(assert (=> b!7055952 m!7773854))

(assert (=> start!684330 d!2205065))

(declare-fun bs!1877076 () Bool)

(declare-fun d!2205069 () Bool)

(assert (= bs!1877076 (and d!2205069 b!7055737)))

(declare-fun lambda!420494 () Int)

(assert (=> bs!1877076 (= lambda!420494 lambda!420422)))

(assert (=> d!2205069 true))

(assert (=> d!2205069 (= (appendTo!695 z1!570 ct2!306) (map!15894 z1!570 lambda!420494))))

(declare-fun bs!1877077 () Bool)

(assert (= bs!1877077 d!2205069))

(declare-fun m!7773856 () Bool)

(assert (=> bs!1877077 m!7773856))

(assert (=> start!684330 d!2205069))

(declare-fun bs!1877078 () Bool)

(declare-fun d!2205071 () Bool)

(assert (= bs!1877078 (and d!2205071 b!7055737)))

(declare-fun lambda!420496 () Int)

(assert (=> bs!1877078 (= lambda!420496 lambda!420423)))

(declare-fun bs!1877080 () Bool)

(assert (= bs!1877080 (and d!2205071 d!2205041)))

(assert (=> bs!1877080 (= lambda!420496 lambda!420484)))

(assert (=> d!2205071 (= (inv!86795 c!403) (forall!16520 (exprs!7070 c!403) lambda!420496))))

(declare-fun bs!1877081 () Bool)

(assert (= bs!1877081 d!2205071))

(declare-fun m!7773858 () Bool)

(assert (=> bs!1877081 m!7773858))

(assert (=> start!684330 d!2205071))

(declare-fun bs!1877082 () Bool)

(declare-fun d!2205073 () Bool)

(assert (= bs!1877082 (and d!2205073 b!7055737)))

(declare-fun lambda!420497 () Int)

(assert (=> bs!1877082 (= lambda!420497 lambda!420423)))

(declare-fun bs!1877083 () Bool)

(assert (= bs!1877083 (and d!2205073 d!2205041)))

(assert (=> bs!1877083 (= lambda!420497 lambda!420484)))

(declare-fun bs!1877085 () Bool)

(assert (= bs!1877085 (and d!2205073 d!2205071)))

(assert (=> bs!1877085 (= lambda!420497 lambda!420496)))

(assert (=> d!2205073 (= (inv!86795 ct2!306) (forall!16520 (exprs!7070 ct2!306) lambda!420497))))

(declare-fun bs!1877086 () Bool)

(assert (= bs!1877086 d!2205073))

(declare-fun m!7773862 () Bool)

(assert (=> bs!1877086 m!7773862))

(assert (=> start!684330 d!2205073))

(declare-fun bs!1877087 () Bool)

(declare-fun d!2205077 () Bool)

(assert (= bs!1877087 (and d!2205077 b!7055737)))

(declare-fun lambda!420498 () Int)

(assert (=> bs!1877087 (= lambda!420498 lambda!420423)))

(declare-fun bs!1877088 () Bool)

(assert (= bs!1877088 (and d!2205077 d!2205041)))

(assert (=> bs!1877088 (= lambda!420498 lambda!420484)))

(declare-fun bs!1877089 () Bool)

(assert (= bs!1877089 (and d!2205077 d!2205071)))

(assert (=> bs!1877089 (= lambda!420498 lambda!420496)))

(declare-fun bs!1877090 () Bool)

(assert (= bs!1877090 (and d!2205077 d!2205073)))

(assert (=> bs!1877090 (= lambda!420498 lambda!420497)))

(assert (=> d!2205077 (= (inv!86795 setElem!49864) (forall!16520 (exprs!7070 setElem!49864) lambda!420498))))

(declare-fun bs!1877091 () Bool)

(assert (= bs!1877091 d!2205077))

(declare-fun m!7773864 () Bool)

(assert (=> bs!1877091 m!7773864))

(assert (=> setNonEmpty!49864 d!2205077))

(assert (=> b!7055740 d!2205029))

(declare-fun bs!1877092 () Bool)

(declare-fun d!2205079 () Bool)

(assert (= bs!1877092 (and d!2205079 b!7055747)))

(declare-fun lambda!420499 () Int)

(assert (=> bs!1877092 (= lambda!420499 lambda!420424)))

(declare-fun bs!1877093 () Bool)

(assert (= bs!1877093 (and d!2205079 d!2205059)))

(assert (=> bs!1877093 (= lambda!420499 lambda!420487)))

(assert (=> d!2205079 true))

(assert (=> d!2205079 (= (derivationStepZipper!3024 lt!2532265 (h!74573 s!7408)) (flatMap!2500 lt!2532265 lambda!420499))))

(declare-fun bs!1877094 () Bool)

(assert (= bs!1877094 d!2205079))

(declare-fun m!7773866 () Bool)

(assert (=> bs!1877094 m!7773866))

(assert (=> b!7055740 d!2205079))

(declare-fun d!2205081 () Bool)

(assert (=> d!2205081 (= (flatMap!2500 lt!2532265 lambda!420424) (choose!53824 lt!2532265 lambda!420424))))

(declare-fun bs!1877095 () Bool)

(assert (= bs!1877095 d!2205081))

(declare-fun m!7773868 () Bool)

(assert (=> bs!1877095 m!7773868))

(assert (=> b!7055740 d!2205081))

(declare-fun d!2205083 () Bool)

(assert (=> d!2205083 (= (flatMap!2500 lt!2532265 lambda!420424) (dynLambda!27647 lambda!420424 lt!2532266))))

(declare-fun lt!2532424 () Unit!161821)

(assert (=> d!2205083 (= lt!2532424 (choose!53825 lt!2532265 lt!2532266 lambda!420424))))

(assert (=> d!2205083 (= lt!2532265 (set.insert lt!2532266 (as set.empty (Set Context!13140))))))

(assert (=> d!2205083 (= (lemmaFlatMapOnSingletonSet!2009 lt!2532265 lt!2532266 lambda!420424) lt!2532424)))

(declare-fun b_lambda!268725 () Bool)

(assert (=> (not b_lambda!268725) (not d!2205083)))

(declare-fun bs!1877096 () Bool)

(assert (= bs!1877096 d!2205083))

(assert (=> bs!1877096 m!7773502))

(declare-fun m!7773870 () Bool)

(assert (=> bs!1877096 m!7773870))

(declare-fun m!7773872 () Bool)

(assert (=> bs!1877096 m!7773872))

(assert (=> bs!1877096 m!7773500))

(assert (=> b!7055740 d!2205083))

(assert (=> b!7055740 d!2205005))

(declare-fun d!2205085 () Bool)

(declare-fun c!1314577 () Bool)

(assert (=> d!2205085 (= c!1314577 (isEmpty!39736 (t!382028 s!7408)))))

(declare-fun e!4241903 () Bool)

(assert (=> d!2205085 (= (matchZipper!3114 lt!2532242 (t!382028 s!7408)) e!4241903)))

(declare-fun b!7055955 () Bool)

(assert (=> b!7055955 (= e!4241903 (nullableZipper!2659 lt!2532242))))

(declare-fun b!7055956 () Bool)

(assert (=> b!7055956 (= e!4241903 (matchZipper!3114 (derivationStepZipper!3024 lt!2532242 (head!14360 (t!382028 s!7408))) (tail!13708 (t!382028 s!7408))))))

(assert (= (and d!2205085 c!1314577) b!7055955))

(assert (= (and d!2205085 (not c!1314577)) b!7055956))

(assert (=> d!2205085 m!7773648))

(declare-fun m!7773874 () Bool)

(assert (=> b!7055955 m!7773874))

(assert (=> b!7055956 m!7773652))

(assert (=> b!7055956 m!7773652))

(declare-fun m!7773876 () Bool)

(assert (=> b!7055956 m!7773876))

(assert (=> b!7055956 m!7773656))

(assert (=> b!7055956 m!7773876))

(assert (=> b!7055956 m!7773656))

(declare-fun m!7773878 () Bool)

(assert (=> b!7055956 m!7773878))

(assert (=> b!7055750 d!2205085))

(declare-fun d!2205087 () Bool)

(declare-fun e!4241912 () Bool)

(assert (=> d!2205087 (= (matchZipper!3114 (set.union lt!2532242 lt!2532269) (t!382028 s!7408)) e!4241912)))

(declare-fun res!2880606 () Bool)

(assert (=> d!2205087 (=> res!2880606 e!4241912)))

(assert (=> d!2205087 (= res!2880606 (matchZipper!3114 lt!2532242 (t!382028 s!7408)))))

(declare-fun lt!2532427 () Unit!161821)

(declare-fun choose!53826 ((Set Context!13140) (Set Context!13140) List!68249) Unit!161821)

(assert (=> d!2205087 (= lt!2532427 (choose!53826 lt!2532242 lt!2532269 (t!382028 s!7408)))))

(assert (=> d!2205087 (= (lemmaZipperConcatMatchesSameAsBothZippers!1587 lt!2532242 lt!2532269 (t!382028 s!7408)) lt!2532427)))

(declare-fun b!7055969 () Bool)

(assert (=> b!7055969 (= e!4241912 (matchZipper!3114 lt!2532269 (t!382028 s!7408)))))

(assert (= (and d!2205087 (not res!2880606)) b!7055969))

(declare-fun m!7773880 () Bool)

(assert (=> d!2205087 m!7773880))

(assert (=> d!2205087 m!7773508))

(declare-fun m!7773882 () Bool)

(assert (=> d!2205087 m!7773882))

(assert (=> b!7055969 m!7773552))

(assert (=> b!7055750 d!2205087))

(assert (=> b!7055750 d!2205005))

(declare-fun d!2205089 () Bool)

(declare-fun c!1314582 () Bool)

(assert (=> d!2205089 (= c!1314582 (isEmpty!39736 (t!382028 s!7408)))))

(declare-fun e!4241913 () Bool)

(assert (=> d!2205089 (= (matchZipper!3114 lt!2532248 (t!382028 s!7408)) e!4241913)))

(declare-fun b!7055970 () Bool)

(assert (=> b!7055970 (= e!4241913 (nullableZipper!2659 lt!2532248))))

(declare-fun b!7055971 () Bool)

(assert (=> b!7055971 (= e!4241913 (matchZipper!3114 (derivationStepZipper!3024 lt!2532248 (head!14360 (t!382028 s!7408))) (tail!13708 (t!382028 s!7408))))))

(assert (= (and d!2205089 c!1314582) b!7055970))

(assert (= (and d!2205089 (not c!1314582)) b!7055971))

(assert (=> d!2205089 m!7773648))

(declare-fun m!7773884 () Bool)

(assert (=> b!7055970 m!7773884))

(assert (=> b!7055971 m!7773652))

(assert (=> b!7055971 m!7773652))

(declare-fun m!7773886 () Bool)

(assert (=> b!7055971 m!7773886))

(assert (=> b!7055971 m!7773656))

(assert (=> b!7055971 m!7773886))

(assert (=> b!7055971 m!7773656))

(declare-fun m!7773888 () Bool)

(assert (=> b!7055971 m!7773888))

(assert (=> b!7055750 d!2205089))

(declare-fun d!2205091 () Bool)

(declare-fun c!1314583 () Bool)

(assert (=> d!2205091 (= c!1314583 (isEmpty!39736 (t!382028 s!7408)))))

(declare-fun e!4241914 () Bool)

(assert (=> d!2205091 (= (matchZipper!3114 lt!2532271 (t!382028 s!7408)) e!4241914)))

(declare-fun b!7055972 () Bool)

(assert (=> b!7055972 (= e!4241914 (nullableZipper!2659 lt!2532271))))

(declare-fun b!7055973 () Bool)

(assert (=> b!7055973 (= e!4241914 (matchZipper!3114 (derivationStepZipper!3024 lt!2532271 (head!14360 (t!382028 s!7408))) (tail!13708 (t!382028 s!7408))))))

(assert (= (and d!2205091 c!1314583) b!7055972))

(assert (= (and d!2205091 (not c!1314583)) b!7055973))

(assert (=> d!2205091 m!7773648))

(declare-fun m!7773890 () Bool)

(assert (=> b!7055972 m!7773890))

(assert (=> b!7055973 m!7773652))

(assert (=> b!7055973 m!7773652))

(declare-fun m!7773892 () Bool)

(assert (=> b!7055973 m!7773892))

(assert (=> b!7055973 m!7773656))

(assert (=> b!7055973 m!7773892))

(assert (=> b!7055973 m!7773656))

(declare-fun m!7773894 () Bool)

(assert (=> b!7055973 m!7773894))

(assert (=> b!7055750 d!2205091))

(declare-fun b!7055978 () Bool)

(declare-fun e!4241917 () Bool)

(declare-fun tp!1940263 () Bool)

(declare-fun tp!1940264 () Bool)

(assert (=> b!7055978 (= e!4241917 (and tp!1940263 tp!1940264))))

(assert (=> b!7055749 (= tp!1940239 e!4241917)))

(assert (= (and b!7055749 (is-Cons!68124 (exprs!7070 c!403))) b!7055978))

(declare-fun b!7055979 () Bool)

(declare-fun e!4241918 () Bool)

(declare-fun tp!1940265 () Bool)

(declare-fun tp!1940266 () Bool)

(assert (=> b!7055979 (= e!4241918 (and tp!1940265 tp!1940266))))

(assert (=> b!7055744 (= tp!1940241 e!4241918)))

(assert (= (and b!7055744 (is-Cons!68124 (exprs!7070 ct2!306))) b!7055979))

(declare-fun b!7055984 () Bool)

(declare-fun e!4241921 () Bool)

(declare-fun tp!1940269 () Bool)

(assert (=> b!7055984 (= e!4241921 (and tp_is_empty!44373 tp!1940269))))

(assert (=> b!7055743 (= tp!1940242 e!4241921)))

(assert (= (and b!7055743 (is-Cons!68125 (t!382028 s!7408))) b!7055984))

(declare-fun b!7055985 () Bool)

(declare-fun e!4241922 () Bool)

(declare-fun tp!1940270 () Bool)

(declare-fun tp!1940271 () Bool)

(assert (=> b!7055985 (= e!4241922 (and tp!1940270 tp!1940271))))

(assert (=> b!7055752 (= tp!1940243 e!4241922)))

(assert (= (and b!7055752 (is-Cons!68124 (exprs!7070 setElem!49864))) b!7055985))

(declare-fun condSetEmpty!49870 () Bool)

(assert (=> setNonEmpty!49864 (= condSetEmpty!49870 (= setRest!49864 (as set.empty (Set Context!13140))))))

(declare-fun setRes!49870 () Bool)

(assert (=> setNonEmpty!49864 (= tp!1940240 setRes!49870)))

(declare-fun setIsEmpty!49870 () Bool)

(assert (=> setIsEmpty!49870 setRes!49870))

(declare-fun setElem!49870 () Context!13140)

(declare-fun e!4241925 () Bool)

(declare-fun setNonEmpty!49870 () Bool)

(declare-fun tp!1940276 () Bool)

(assert (=> setNonEmpty!49870 (= setRes!49870 (and tp!1940276 (inv!86795 setElem!49870) e!4241925))))

(declare-fun setRest!49870 () (Set Context!13140))

(assert (=> setNonEmpty!49870 (= setRest!49864 (set.union (set.insert setElem!49870 (as set.empty (Set Context!13140))) setRest!49870))))

(declare-fun b!7055990 () Bool)

(declare-fun tp!1940277 () Bool)

(assert (=> b!7055990 (= e!4241925 tp!1940277)))

(assert (= (and setNonEmpty!49864 condSetEmpty!49870) setIsEmpty!49870))

(assert (= (and setNonEmpty!49864 (not condSetEmpty!49870)) setNonEmpty!49870))

(assert (= setNonEmpty!49870 b!7055990))

(declare-fun m!7773896 () Bool)

(assert (=> setNonEmpty!49870 m!7773896))

(declare-fun b_lambda!268727 () Bool)

(assert (= b_lambda!268715 (or b!7055737 b_lambda!268727)))

(declare-fun bs!1877097 () Bool)

(declare-fun d!2205093 () Bool)

(assert (= bs!1877097 (and d!2205093 b!7055737)))

(declare-fun lt!2532428 () Unit!161821)

(assert (=> bs!1877097 (= lt!2532428 (lemmaConcatPreservesForall!885 (exprs!7070 lt!2532392) (exprs!7070 ct2!306) lambda!420423))))

(assert (=> bs!1877097 (= (dynLambda!27644 lambda!420422 lt!2532392) (Context!13141 (++!15657 (exprs!7070 lt!2532392) (exprs!7070 ct2!306))))))

(declare-fun m!7773898 () Bool)

(assert (=> bs!1877097 m!7773898))

(declare-fun m!7773900 () Bool)

(assert (=> bs!1877097 m!7773900))

(assert (=> d!2205011 d!2205093))

(declare-fun b_lambda!268729 () Bool)

(assert (= b_lambda!268717 (or b!7055755 b_lambda!268729)))

(declare-fun bs!1877098 () Bool)

(declare-fun d!2205095 () Bool)

(assert (= bs!1877098 (and d!2205095 b!7055755)))

(assert (=> bs!1877098 (= (dynLambda!27645 lambda!420421 lt!2532400) (matchZipper!3114 (set.insert lt!2532400 (as set.empty (Set Context!13140))) s!7408))))

(declare-fun m!7773902 () Bool)

(assert (=> bs!1877098 m!7773902))

(assert (=> bs!1877098 m!7773902))

(declare-fun m!7773904 () Bool)

(assert (=> bs!1877098 m!7773904))

(assert (=> d!2205019 d!2205095))

(declare-fun b_lambda!268731 () Bool)

(assert (= b_lambda!268721 (or b!7055747 b_lambda!268731)))

(declare-fun bs!1877099 () Bool)

(declare-fun d!2205097 () Bool)

(assert (= bs!1877099 (and d!2205097 b!7055747)))

(assert (=> bs!1877099 (= (dynLambda!27647 lambda!420424 lt!2532251) (derivationStepZipperUp!2158 lt!2532251 (h!74573 s!7408)))))

(assert (=> bs!1877099 m!7773518))

(assert (=> d!2205057 d!2205097))

(declare-fun b_lambda!268733 () Bool)

(assert (= b_lambda!268725 (or b!7055747 b_lambda!268733)))

(declare-fun bs!1877100 () Bool)

(declare-fun d!2205099 () Bool)

(assert (= bs!1877100 (and d!2205099 b!7055747)))

(assert (=> bs!1877100 (= (dynLambda!27647 lambda!420424 lt!2532266) (derivationStepZipperUp!2158 lt!2532266 (h!74573 s!7408)))))

(assert (=> bs!1877100 m!7773498))

(assert (=> d!2205083 d!2205099))

(push 1)

(assert (not b!7055860))

(assert (not d!2205015))

(assert (not b!7055934))

(assert (not d!2205047))

(assert (not b!7055952))

(assert (not b!7055970))

(assert (not b!7055891))

(assert (not b!7055856))

(assert (not d!2205083))

(assert (not b!7055933))

(assert (not bs!1877099))

(assert (not d!2205073))

(assert (not d!2205009))

(assert (not d!2205017))

(assert (not b!7055849))

(assert (not d!2205049))

(assert (not bm!640996))

(assert (not d!2205003))

(assert (not b!7055990))

(assert (not bs!1877097))

(assert (not b!7055890))

(assert (not b!7055927))

(assert (not d!2205053))

(assert (not b!7055971))

(assert (not b!7055985))

(assert (not d!2205057))

(assert (not d!2205087))

(assert (not b!7055944))

(assert (not d!2205091))

(assert (not b!7055942))

(assert (not d!2205079))

(assert (not setNonEmpty!49870))

(assert (not d!2205081))

(assert (not bs!1877100))

(assert (not b!7055951))

(assert (not d!2205025))

(assert (not d!2205019))

(assert (not b!7055972))

(assert (not d!2205059))

(assert (not d!2205085))

(assert (not d!2205065))

(assert (not b_lambda!268731))

(assert (not b!7055945))

(assert (not d!2205021))

(assert tp_is_empty!44373)

(assert (not d!2205069))

(assert (not d!2205023))

(assert (not d!2205007))

(assert (not b!7055839))

(assert (not b!7055941))

(assert (not bs!1877098))

(assert (not b_lambda!268727))

(assert (not bm!640990))

(assert (not b!7055857))

(assert (not b!7055875))

(assert (not d!2205037))

(assert (not d!2205071))

(assert (not b!7055955))

(assert (not bm!640977))

(assert (not b!7055956))

(assert (not d!2205061))

(assert (not b!7055874))

(assert (not d!2205077))

(assert (not b_lambda!268729))

(assert (not b!7055850))

(assert (not b_lambda!268733))

(assert (not b!7055838))

(assert (not b!7055984))

(assert (not b!7055973))

(assert (not d!2205089))

(assert (not b!7055969))

(assert (not bm!640992))

(assert (not b!7055978))

(assert (not bm!640991))

(assert (not d!2205005))

(assert (not d!2205041))

(assert (not b!7055979))

(assert (not d!2205011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

