; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672236 () Bool)

(assert start!672236)

(declare-fun b!6992336 () Bool)

(assert (=> b!6992336 true))

(declare-fun b!6992334 () Bool)

(assert (=> b!6992334 true))

(declare-fun b!6992340 () Bool)

(assert (=> b!6992340 true))

(declare-fun b!6992333 () Bool)

(declare-fun e!4202851 () Bool)

(declare-datatypes ((C!34742 0))(
  ( (C!34743 (val!27073 Int)) )
))
(declare-datatypes ((Regex!17236 0))(
  ( (ElementMatch!17236 (c!1297119 C!34742)) (Concat!26081 (regOne!34984 Regex!17236) (regTwo!34984 Regex!17236)) (EmptyExpr!17236) (Star!17236 (reg!17565 Regex!17236)) (EmptyLang!17236) (Union!17236 (regOne!34985 Regex!17236) (regTwo!34985 Regex!17236)) )
))
(declare-datatypes ((List!67253 0))(
  ( (Nil!67129) (Cons!67129 (h!73577 Regex!17236) (t!381000 List!67253)) )
))
(declare-datatypes ((Context!12464 0))(
  ( (Context!12465 (exprs!6732 List!67253)) )
))
(declare-fun lt!2489238 () (Set Context!12464))

(declare-datatypes ((List!67254 0))(
  ( (Nil!67130) (Cons!67130 (h!73578 C!34742) (t!381001 List!67254)) )
))
(declare-fun s!7408 () List!67254)

(declare-fun matchZipper!2776 ((Set Context!12464) List!67254) Bool)

(assert (=> b!6992333 (= e!4202851 (not (matchZipper!2776 lt!2489238 (t!381001 s!7408))))))

(declare-datatypes ((Unit!161127 0))(
  ( (Unit!161128) )
))
(declare-fun lt!2489230 () Unit!161127)

(declare-fun lambda!402729 () Int)

(declare-fun lt!2489250 () List!67253)

(declare-fun ct2!306 () Context!12464)

(declare-fun lemmaConcatPreservesForall!572 (List!67253 List!67253 Int) Unit!161127)

(assert (=> b!6992333 (= lt!2489230 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun e!4202853 () Bool)

(declare-fun e!4202861 () Bool)

(assert (=> b!6992334 (= e!4202853 e!4202861)))

(declare-fun res!2851796 () Bool)

(assert (=> b!6992334 (=> res!2851796 e!4202861)))

(declare-fun lt!2489214 () Context!12464)

(declare-fun lt!2489253 () Context!12464)

(declare-fun lt!2489224 () Context!12464)

(declare-fun z1!570 () (Set Context!12464))

(assert (=> b!6992334 (= res!2851796 (or (not (= lt!2489214 lt!2489224)) (not (set.member lt!2489253 z1!570))))))

(declare-fun ++!15181 (List!67253 List!67253) List!67253)

(assert (=> b!6992334 (= lt!2489214 (Context!12465 (++!15181 (exprs!6732 lt!2489253) (exprs!6732 ct2!306))))))

(declare-fun lt!2489231 () Unit!161127)

(assert (=> b!6992334 (= lt!2489231 (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489253) (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lambda!402728 () Int)

(declare-fun mapPost2!91 ((Set Context!12464) Int Context!12464) Context!12464)

(assert (=> b!6992334 (= lt!2489253 (mapPost2!91 z1!570 lambda!402728 lt!2489224))))

(declare-fun setIsEmpty!47898 () Bool)

(declare-fun setRes!47898 () Bool)

(assert (=> setIsEmpty!47898 setRes!47898))

(declare-fun b!6992335 () Bool)

(declare-fun e!4202854 () Bool)

(declare-fun tp_is_empty!43697 () Bool)

(declare-fun tp!1930119 () Bool)

(assert (=> b!6992335 (= e!4202854 (and tp_is_empty!43697 tp!1930119))))

(declare-fun e!4202852 () Bool)

(assert (=> b!6992336 (= e!4202852 (not e!4202853))))

(declare-fun res!2851804 () Bool)

(assert (=> b!6992336 (=> res!2851804 e!4202853)))

(declare-fun lt!2489225 () (Set Context!12464))

(assert (=> b!6992336 (= res!2851804 (not (matchZipper!2776 lt!2489225 s!7408)))))

(assert (=> b!6992336 (= lt!2489225 (set.insert lt!2489224 (as set.empty (Set Context!12464))))))

(declare-fun lt!2489242 () (Set Context!12464))

(declare-fun lambda!402727 () Int)

(declare-fun getWitness!1143 ((Set Context!12464) Int) Context!12464)

(assert (=> b!6992336 (= lt!2489224 (getWitness!1143 lt!2489242 lambda!402727))))

(declare-datatypes ((List!67255 0))(
  ( (Nil!67131) (Cons!67131 (h!73579 Context!12464) (t!381002 List!67255)) )
))
(declare-fun lt!2489239 () List!67255)

(declare-fun exists!3031 (List!67255 Int) Bool)

(assert (=> b!6992336 (exists!3031 lt!2489239 lambda!402727)))

(declare-fun lt!2489215 () Unit!161127)

(declare-fun lemmaZipperMatchesExistsMatchingContext!205 (List!67255 List!67254) Unit!161127)

(assert (=> b!6992336 (= lt!2489215 (lemmaZipperMatchesExistsMatchingContext!205 lt!2489239 s!7408))))

(declare-fun toList!10596 ((Set Context!12464)) List!67255)

(assert (=> b!6992336 (= lt!2489239 (toList!10596 lt!2489242))))

(declare-fun b!6992337 () Bool)

(declare-fun e!4202860 () Bool)

(declare-fun e!4202862 () Bool)

(assert (=> b!6992337 (= e!4202860 e!4202862)))

(declare-fun res!2851788 () Bool)

(assert (=> b!6992337 (=> res!2851788 e!4202862)))

(assert (=> b!6992337 (= res!2851788 (not (matchZipper!2776 lt!2489238 (t!381001 s!7408))))))

(declare-fun lt!2489229 () Unit!161127)

(assert (=> b!6992337 (= lt!2489229 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992339 () Bool)

(declare-fun e!4202857 () Bool)

(assert (=> b!6992339 (= e!4202857 (matchZipper!2776 lt!2489238 (t!381001 s!7408)))))

(declare-fun e!4202850 () Bool)

(declare-fun e!4202855 () Bool)

(assert (=> b!6992340 (= e!4202850 e!4202855)))

(declare-fun res!2851803 () Bool)

(assert (=> b!6992340 (=> res!2851803 e!4202855)))

(declare-fun lt!2489243 () (Set Context!12464))

(declare-fun lt!2489217 () (Set Context!12464))

(declare-fun derivationStepZipper!2716 ((Set Context!12464) C!34742) (Set Context!12464))

(assert (=> b!6992340 (= res!2851803 (not (= (derivationStepZipper!2716 lt!2489243 (h!73578 s!7408)) lt!2489217)))))

(declare-fun lambda!402730 () Int)

(declare-fun flatMap!2222 ((Set Context!12464) Int) (Set Context!12464))

(declare-fun derivationStepZipperUp!1886 (Context!12464 C!34742) (Set Context!12464))

(assert (=> b!6992340 (= (flatMap!2222 lt!2489243 lambda!402730) (derivationStepZipperUp!1886 lt!2489214 (h!73578 s!7408)))))

(declare-fun lt!2489240 () Unit!161127)

(declare-fun lemmaFlatMapOnSingletonSet!1737 ((Set Context!12464) Context!12464 Int) Unit!161127)

(assert (=> b!6992340 (= lt!2489240 (lemmaFlatMapOnSingletonSet!1737 lt!2489243 lt!2489214 lambda!402730))))

(assert (=> b!6992340 (= lt!2489217 (derivationStepZipperUp!1886 lt!2489214 (h!73578 s!7408)))))

(declare-fun lt!2489237 () Unit!161127)

(assert (=> b!6992340 (= lt!2489237 (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489253) (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992341 () Bool)

(declare-fun e!4202849 () Bool)

(declare-fun tp!1930120 () Bool)

(assert (=> b!6992341 (= e!4202849 tp!1930120)))

(declare-fun b!6992342 () Bool)

(declare-fun res!2851799 () Bool)

(assert (=> b!6992342 (=> (not res!2851799) (not e!4202852))))

(assert (=> b!6992342 (= res!2851799 (is-Cons!67130 s!7408))))

(declare-fun b!6992343 () Bool)

(assert (=> b!6992343 (= e!4202861 e!4202850)))

(declare-fun res!2851797 () Bool)

(assert (=> b!6992343 (=> res!2851797 e!4202850)))

(assert (=> b!6992343 (= res!2851797 (not (= lt!2489243 lt!2489225)))))

(assert (=> b!6992343 (= lt!2489243 (set.insert lt!2489214 (as set.empty (Set Context!12464))))))

(declare-fun lt!2489220 () Unit!161127)

(assert (=> b!6992343 (= lt!2489220 (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489253) (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992344 () Bool)

(declare-fun e!4202864 () Bool)

(assert (=> b!6992344 (= e!4202862 e!4202864)))

(declare-fun res!2851792 () Bool)

(assert (=> b!6992344 (=> res!2851792 e!4202864)))

(declare-fun lt!2489252 () (Set Context!12464))

(assert (=> b!6992344 (= res!2851792 (not (= (derivationStepZipper!2716 lt!2489252 (h!73578 s!7408)) lt!2489238)))))

(declare-fun lt!2489234 () Unit!161127)

(assert (=> b!6992344 (= lt!2489234 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489245 () Unit!161127)

(assert (=> b!6992344 (= lt!2489245 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489232 () Context!12464)

(assert (=> b!6992344 (= (flatMap!2222 lt!2489252 lambda!402730) (derivationStepZipperUp!1886 lt!2489232 (h!73578 s!7408)))))

(declare-fun lt!2489233 () Unit!161127)

(assert (=> b!6992344 (= lt!2489233 (lemmaFlatMapOnSingletonSet!1737 lt!2489252 lt!2489232 lambda!402730))))

(assert (=> b!6992344 (= lt!2489252 (set.insert lt!2489232 (as set.empty (Set Context!12464))))))

(declare-fun lt!2489241 () Unit!161127)

(assert (=> b!6992344 (= lt!2489241 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489236 () Unit!161127)

(assert (=> b!6992344 (= lt!2489236 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992345 () Bool)

(declare-fun e!4202858 () Bool)

(declare-fun e!4202856 () Bool)

(assert (=> b!6992345 (= e!4202858 e!4202856)))

(declare-fun res!2851790 () Bool)

(assert (=> b!6992345 (=> res!2851790 e!4202856)))

(declare-fun lt!2489219 () (Set Context!12464))

(assert (=> b!6992345 (= res!2851790 (not (= lt!2489217 lt!2489219)))))

(declare-fun lt!2489221 () (Set Context!12464))

(assert (=> b!6992345 (= lt!2489219 (set.union lt!2489221 lt!2489238))))

(assert (=> b!6992345 (= lt!2489238 (derivationStepZipperUp!1886 lt!2489232 (h!73578 s!7408)))))

(declare-fun derivationStepZipperDown!1954 (Regex!17236 Context!12464 C!34742) (Set Context!12464))

(assert (=> b!6992345 (= lt!2489221 (derivationStepZipperDown!1954 (h!73577 (exprs!6732 lt!2489253)) lt!2489232 (h!73578 s!7408)))))

(assert (=> b!6992345 (= lt!2489232 (Context!12465 (++!15181 lt!2489250 (exprs!6732 ct2!306))))))

(declare-fun lt!2489226 () Unit!161127)

(assert (=> b!6992345 (= lt!2489226 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489216 () Unit!161127)

(assert (=> b!6992345 (= lt!2489216 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992346 () Bool)

(declare-fun e!4202863 () Bool)

(declare-fun e!4202859 () Bool)

(assert (=> b!6992346 (= e!4202863 e!4202859)))

(declare-fun res!2851798 () Bool)

(assert (=> b!6992346 (=> res!2851798 e!4202859)))

(declare-fun forall!16156 (List!67253 Int) Bool)

(assert (=> b!6992346 (= res!2851798 (not (forall!16156 lt!2489250 lambda!402729)))))

(declare-fun lt!2489235 () Unit!161127)

(assert (=> b!6992346 (= lt!2489235 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489254 () Unit!161127)

(assert (=> b!6992346 (= lt!2489254 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489255 () Context!12464)

(declare-fun lt!2489218 () (Set Context!12464))

(assert (=> b!6992346 (= (flatMap!2222 lt!2489218 lambda!402730) (derivationStepZipperUp!1886 lt!2489255 (h!73578 s!7408)))))

(declare-fun lt!2489223 () Unit!161127)

(assert (=> b!6992346 (= lt!2489223 (lemmaFlatMapOnSingletonSet!1737 lt!2489218 lt!2489255 lambda!402730))))

(declare-fun map!15501 ((Set Context!12464) Int) (Set Context!12464))

(assert (=> b!6992346 (= (map!15501 lt!2489218 lambda!402728) (set.insert (Context!12465 (++!15181 lt!2489250 (exprs!6732 ct2!306))) (as set.empty (Set Context!12464))))))

(declare-fun lt!2489228 () Unit!161127)

(assert (=> b!6992346 (= lt!2489228 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489246 () Unit!161127)

(declare-fun lemmaMapOnSingletonSet!301 ((Set Context!12464) Context!12464 Int) Unit!161127)

(assert (=> b!6992346 (= lt!2489246 (lemmaMapOnSingletonSet!301 lt!2489218 lt!2489255 lambda!402728))))

(assert (=> b!6992346 (= lt!2489218 (set.insert lt!2489255 (as set.empty (Set Context!12464))))))

(declare-fun b!6992347 () Bool)

(assert (=> b!6992347 (= e!4202864 e!4202863)))

(declare-fun res!2851793 () Bool)

(assert (=> b!6992347 (=> res!2851793 e!4202863)))

(assert (=> b!6992347 (= res!2851793 (not (matchZipper!2776 lt!2489252 s!7408)))))

(declare-fun lt!2489249 () Unit!161127)

(assert (=> b!6992347 (= lt!2489249 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992348 () Bool)

(assert (=> b!6992348 (= e!4202855 e!4202858)))

(declare-fun res!2851789 () Bool)

(assert (=> b!6992348 (=> res!2851789 e!4202858)))

(declare-fun nullable!6996 (Regex!17236) Bool)

(assert (=> b!6992348 (= res!2851789 (not (nullable!6996 (h!73577 (exprs!6732 lt!2489253)))))))

(assert (=> b!6992348 (= lt!2489255 (Context!12465 lt!2489250))))

(declare-fun tail!13256 (List!67253) List!67253)

(assert (=> b!6992348 (= lt!2489250 (tail!13256 (exprs!6732 lt!2489253)))))

(declare-fun tp!1930118 () Bool)

(declare-fun setElem!47898 () Context!12464)

(declare-fun setNonEmpty!47898 () Bool)

(declare-fun e!4202865 () Bool)

(declare-fun inv!85950 (Context!12464) Bool)

(assert (=> setNonEmpty!47898 (= setRes!47898 (and tp!1930118 (inv!85950 setElem!47898) e!4202865))))

(declare-fun setRest!47898 () (Set Context!12464))

(assert (=> setNonEmpty!47898 (= z1!570 (set.union (set.insert setElem!47898 (as set.empty (Set Context!12464))) setRest!47898))))

(declare-fun b!6992349 () Bool)

(declare-fun res!2851791 () Bool)

(assert (=> b!6992349 (=> res!2851791 e!4202860)))

(declare-fun lt!2489247 () Bool)

(assert (=> b!6992349 (= res!2851791 (not lt!2489247))))

(declare-fun res!2851795 () Bool)

(assert (=> start!672236 (=> (not res!2851795) (not e!4202852))))

(assert (=> start!672236 (= res!2851795 (matchZipper!2776 lt!2489242 s!7408))))

(declare-fun appendTo!357 ((Set Context!12464) Context!12464) (Set Context!12464))

(assert (=> start!672236 (= lt!2489242 (appendTo!357 z1!570 ct2!306))))

(assert (=> start!672236 e!4202852))

(declare-fun condSetEmpty!47898 () Bool)

(assert (=> start!672236 (= condSetEmpty!47898 (= z1!570 (as set.empty (Set Context!12464))))))

(assert (=> start!672236 setRes!47898))

(assert (=> start!672236 (and (inv!85950 ct2!306) e!4202849)))

(assert (=> start!672236 e!4202854))

(declare-fun b!6992338 () Bool)

(assert (=> b!6992338 (= e!4202856 e!4202860)))

(declare-fun res!2851800 () Bool)

(assert (=> b!6992338 (=> res!2851800 e!4202860)))

(assert (=> b!6992338 (= res!2851800 e!4202851)))

(declare-fun res!2851802 () Bool)

(assert (=> b!6992338 (=> (not res!2851802) (not e!4202851))))

(declare-fun lt!2489222 () Bool)

(assert (=> b!6992338 (= res!2851802 (not (= lt!2489247 lt!2489222)))))

(assert (=> b!6992338 (= lt!2489247 (matchZipper!2776 lt!2489217 (t!381001 s!7408)))))

(declare-fun lt!2489248 () Unit!161127)

(assert (=> b!6992338 (= lt!2489248 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(assert (=> b!6992338 (= (matchZipper!2776 lt!2489219 (t!381001 s!7408)) e!4202857)))

(declare-fun res!2851794 () Bool)

(assert (=> b!6992338 (=> res!2851794 e!4202857)))

(assert (=> b!6992338 (= res!2851794 lt!2489222)))

(assert (=> b!6992338 (= lt!2489222 (matchZipper!2776 lt!2489221 (t!381001 s!7408)))))

(declare-fun lt!2489227 () Unit!161127)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1409 ((Set Context!12464) (Set Context!12464) List!67254) Unit!161127)

(assert (=> b!6992338 (= lt!2489227 (lemmaZipperConcatMatchesSameAsBothZippers!1409 lt!2489221 lt!2489238 (t!381001 s!7408)))))

(declare-fun lt!2489244 () Unit!161127)

(assert (=> b!6992338 (= lt!2489244 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun lt!2489251 () Unit!161127)

(assert (=> b!6992338 (= lt!2489251 (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992350 () Bool)

(declare-fun res!2851787 () Bool)

(assert (=> b!6992350 (=> res!2851787 e!4202853)))

(assert (=> b!6992350 (= res!2851787 (not (set.member lt!2489224 lt!2489242)))))

(declare-fun b!6992351 () Bool)

(assert (=> b!6992351 (= e!4202859 (forall!16156 (exprs!6732 ct2!306) lambda!402729))))

(declare-fun b!6992352 () Bool)

(declare-fun res!2851801 () Bool)

(assert (=> b!6992352 (=> res!2851801 e!4202855)))

(assert (=> b!6992352 (= res!2851801 (not (is-Cons!67129 (exprs!6732 lt!2489253))))))

(declare-fun b!6992353 () Bool)

(declare-fun tp!1930117 () Bool)

(assert (=> b!6992353 (= e!4202865 tp!1930117)))

(declare-fun b!6992354 () Bool)

(declare-fun res!2851805 () Bool)

(assert (=> b!6992354 (=> res!2851805 e!4202855)))

(declare-fun isEmpty!39180 (List!67253) Bool)

(assert (=> b!6992354 (= res!2851805 (isEmpty!39180 (exprs!6732 lt!2489253)))))

(assert (= (and start!672236 res!2851795) b!6992342))

(assert (= (and b!6992342 res!2851799) b!6992336))

(assert (= (and b!6992336 (not res!2851804)) b!6992350))

(assert (= (and b!6992350 (not res!2851787)) b!6992334))

(assert (= (and b!6992334 (not res!2851796)) b!6992343))

(assert (= (and b!6992343 (not res!2851797)) b!6992340))

(assert (= (and b!6992340 (not res!2851803)) b!6992352))

(assert (= (and b!6992352 (not res!2851801)) b!6992354))

(assert (= (and b!6992354 (not res!2851805)) b!6992348))

(assert (= (and b!6992348 (not res!2851789)) b!6992345))

(assert (= (and b!6992345 (not res!2851790)) b!6992338))

(assert (= (and b!6992338 (not res!2851794)) b!6992339))

(assert (= (and b!6992338 res!2851802) b!6992333))

(assert (= (and b!6992338 (not res!2851800)) b!6992349))

(assert (= (and b!6992349 (not res!2851791)) b!6992337))

(assert (= (and b!6992337 (not res!2851788)) b!6992344))

(assert (= (and b!6992344 (not res!2851792)) b!6992347))

(assert (= (and b!6992347 (not res!2851793)) b!6992346))

(assert (= (and b!6992346 (not res!2851798)) b!6992351))

(assert (= (and start!672236 condSetEmpty!47898) setIsEmpty!47898))

(assert (= (and start!672236 (not condSetEmpty!47898)) setNonEmpty!47898))

(assert (= setNonEmpty!47898 b!6992353))

(assert (= start!672236 b!6992341))

(assert (= (and start!672236 (is-Cons!67130 s!7408)) b!6992335))

(declare-fun m!7682128 () Bool)

(assert (=> b!6992348 m!7682128))

(declare-fun m!7682130 () Bool)

(assert (=> b!6992348 m!7682130))

(declare-fun m!7682132 () Bool)

(assert (=> b!6992333 m!7682132))

(declare-fun m!7682134 () Bool)

(assert (=> b!6992333 m!7682134))

(declare-fun m!7682136 () Bool)

(assert (=> b!6992354 m!7682136))

(declare-fun m!7682138 () Bool)

(assert (=> b!6992340 m!7682138))

(declare-fun m!7682140 () Bool)

(assert (=> b!6992340 m!7682140))

(declare-fun m!7682142 () Bool)

(assert (=> b!6992340 m!7682142))

(declare-fun m!7682144 () Bool)

(assert (=> b!6992340 m!7682144))

(declare-fun m!7682146 () Bool)

(assert (=> b!6992340 m!7682146))

(declare-fun m!7682148 () Bool)

(assert (=> b!6992338 m!7682148))

(assert (=> b!6992338 m!7682134))

(assert (=> b!6992338 m!7682134))

(declare-fun m!7682150 () Bool)

(assert (=> b!6992338 m!7682150))

(declare-fun m!7682152 () Bool)

(assert (=> b!6992338 m!7682152))

(declare-fun m!7682154 () Bool)

(assert (=> b!6992338 m!7682154))

(assert (=> b!6992338 m!7682134))

(declare-fun m!7682156 () Bool)

(assert (=> b!6992336 m!7682156))

(declare-fun m!7682158 () Bool)

(assert (=> b!6992336 m!7682158))

(declare-fun m!7682160 () Bool)

(assert (=> b!6992336 m!7682160))

(declare-fun m!7682162 () Bool)

(assert (=> b!6992336 m!7682162))

(declare-fun m!7682164 () Bool)

(assert (=> b!6992336 m!7682164))

(declare-fun m!7682166 () Bool)

(assert (=> b!6992336 m!7682166))

(declare-fun m!7682168 () Bool)

(assert (=> b!6992334 m!7682168))

(declare-fun m!7682170 () Bool)

(assert (=> b!6992334 m!7682170))

(assert (=> b!6992334 m!7682138))

(declare-fun m!7682172 () Bool)

(assert (=> b!6992334 m!7682172))

(declare-fun m!7682174 () Bool)

(assert (=> setNonEmpty!47898 m!7682174))

(assert (=> b!6992337 m!7682132))

(assert (=> b!6992337 m!7682134))

(assert (=> b!6992339 m!7682132))

(declare-fun m!7682176 () Bool)

(assert (=> b!6992344 m!7682176))

(declare-fun m!7682178 () Bool)

(assert (=> b!6992344 m!7682178))

(declare-fun m!7682180 () Bool)

(assert (=> b!6992344 m!7682180))

(declare-fun m!7682182 () Bool)

(assert (=> b!6992344 m!7682182))

(assert (=> b!6992344 m!7682134))

(assert (=> b!6992344 m!7682134))

(assert (=> b!6992344 m!7682134))

(declare-fun m!7682184 () Bool)

(assert (=> b!6992344 m!7682184))

(assert (=> b!6992344 m!7682134))

(declare-fun m!7682186 () Bool)

(assert (=> b!6992346 m!7682186))

(assert (=> b!6992346 m!7682134))

(declare-fun m!7682188 () Bool)

(assert (=> b!6992346 m!7682188))

(declare-fun m!7682190 () Bool)

(assert (=> b!6992346 m!7682190))

(declare-fun m!7682192 () Bool)

(assert (=> b!6992346 m!7682192))

(declare-fun m!7682194 () Bool)

(assert (=> b!6992346 m!7682194))

(declare-fun m!7682196 () Bool)

(assert (=> b!6992346 m!7682196))

(declare-fun m!7682198 () Bool)

(assert (=> b!6992346 m!7682198))

(assert (=> b!6992346 m!7682134))

(declare-fun m!7682200 () Bool)

(assert (=> b!6992346 m!7682200))

(assert (=> b!6992346 m!7682134))

(declare-fun m!7682202 () Bool)

(assert (=> b!6992346 m!7682202))

(declare-fun m!7682204 () Bool)

(assert (=> b!6992345 m!7682204))

(assert (=> b!6992345 m!7682188))

(assert (=> b!6992345 m!7682180))

(assert (=> b!6992345 m!7682134))

(assert (=> b!6992345 m!7682134))

(declare-fun m!7682206 () Bool)

(assert (=> b!6992343 m!7682206))

(assert (=> b!6992343 m!7682138))

(declare-fun m!7682208 () Bool)

(assert (=> b!6992347 m!7682208))

(assert (=> b!6992347 m!7682134))

(declare-fun m!7682210 () Bool)

(assert (=> start!672236 m!7682210))

(declare-fun m!7682212 () Bool)

(assert (=> start!672236 m!7682212))

(declare-fun m!7682214 () Bool)

(assert (=> start!672236 m!7682214))

(declare-fun m!7682216 () Bool)

(assert (=> b!6992351 m!7682216))

(declare-fun m!7682218 () Bool)

(assert (=> b!6992350 m!7682218))

(push 1)

(assert (not b!6992337))

(assert (not b!6992347))

(assert (not b!6992354))

(assert (not b!6992338))

(assert (not b!6992343))

(assert (not start!672236))

(assert tp_is_empty!43697)

(assert (not b!6992353))

(assert (not b!6992341))

(assert (not b!6992351))

(assert (not b!6992336))

(assert (not b!6992348))

(assert (not b!6992344))

(assert (not b!6992340))

(assert (not b!6992346))

(assert (not setNonEmpty!47898))

(assert (not b!6992335))

(assert (not b!6992339))

(assert (not b!6992333))

(assert (not b!6992334))

(assert (not b!6992345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2178292 () Bool)

(declare-fun c!1297137 () Bool)

(declare-fun isEmpty!39182 (List!67254) Bool)

(assert (=> d!2178292 (= c!1297137 (isEmpty!39182 s!7408))))

(declare-fun e!4202919 () Bool)

(assert (=> d!2178292 (= (matchZipper!2776 lt!2489252 s!7408) e!4202919)))

(declare-fun b!6992437 () Bool)

(declare-fun nullableZipper!2447 ((Set Context!12464)) Bool)

(assert (=> b!6992437 (= e!4202919 (nullableZipper!2447 lt!2489252))))

(declare-fun b!6992438 () Bool)

(declare-fun head!14122 (List!67254) C!34742)

(declare-fun tail!13258 (List!67254) List!67254)

(assert (=> b!6992438 (= e!4202919 (matchZipper!2776 (derivationStepZipper!2716 lt!2489252 (head!14122 s!7408)) (tail!13258 s!7408)))))

(assert (= (and d!2178292 c!1297137) b!6992437))

(assert (= (and d!2178292 (not c!1297137)) b!6992438))

(declare-fun m!7682312 () Bool)

(assert (=> d!2178292 m!7682312))

(declare-fun m!7682314 () Bool)

(assert (=> b!6992437 m!7682314))

(declare-fun m!7682316 () Bool)

(assert (=> b!6992438 m!7682316))

(assert (=> b!6992438 m!7682316))

(declare-fun m!7682318 () Bool)

(assert (=> b!6992438 m!7682318))

(declare-fun m!7682320 () Bool)

(assert (=> b!6992438 m!7682320))

(assert (=> b!6992438 m!7682318))

(assert (=> b!6992438 m!7682320))

(declare-fun m!7682322 () Bool)

(assert (=> b!6992438 m!7682322))

(assert (=> b!6992347 d!2178292))

(declare-fun d!2178294 () Bool)

(assert (=> d!2178294 (forall!16156 (++!15181 lt!2489250 (exprs!6732 ct2!306)) lambda!402729)))

(declare-fun lt!2489388 () Unit!161127)

(declare-fun choose!52329 (List!67253 List!67253 Int) Unit!161127)

(assert (=> d!2178294 (= lt!2489388 (choose!52329 lt!2489250 (exprs!6732 ct2!306) lambda!402729))))

(assert (=> d!2178294 (forall!16156 lt!2489250 lambda!402729)))

(assert (=> d!2178294 (= (lemmaConcatPreservesForall!572 lt!2489250 (exprs!6732 ct2!306) lambda!402729) lt!2489388)))

(declare-fun bs!1862595 () Bool)

(assert (= bs!1862595 d!2178294))

(assert (=> bs!1862595 m!7682188))

(assert (=> bs!1862595 m!7682188))

(declare-fun m!7682324 () Bool)

(assert (=> bs!1862595 m!7682324))

(declare-fun m!7682326 () Bool)

(assert (=> bs!1862595 m!7682326))

(assert (=> bs!1862595 m!7682190))

(assert (=> b!6992347 d!2178294))

(declare-fun d!2178296 () Bool)

(declare-fun e!4202922 () Bool)

(assert (=> d!2178296 e!4202922))

(declare-fun res!2851866 () Bool)

(assert (=> d!2178296 (=> (not res!2851866) (not e!4202922))))

(declare-fun lt!2489391 () List!67255)

(declare-fun noDuplicate!2531 (List!67255) Bool)

(assert (=> d!2178296 (= res!2851866 (noDuplicate!2531 lt!2489391))))

(declare-fun choose!52330 ((Set Context!12464)) List!67255)

(assert (=> d!2178296 (= lt!2489391 (choose!52330 lt!2489242))))

(assert (=> d!2178296 (= (toList!10596 lt!2489242) lt!2489391)))

(declare-fun b!6992441 () Bool)

(declare-fun content!13276 (List!67255) (Set Context!12464))

(assert (=> b!6992441 (= e!4202922 (= (content!13276 lt!2489391) lt!2489242))))

(assert (= (and d!2178296 res!2851866) b!6992441))

(declare-fun m!7682328 () Bool)

(assert (=> d!2178296 m!7682328))

(declare-fun m!7682330 () Bool)

(assert (=> d!2178296 m!7682330))

(declare-fun m!7682332 () Bool)

(assert (=> b!6992441 m!7682332))

(assert (=> b!6992336 d!2178296))

(declare-fun bs!1862596 () Bool)

(declare-fun d!2178298 () Bool)

(assert (= bs!1862596 (and d!2178298 b!6992336)))

(declare-fun lambda!402793 () Int)

(assert (=> bs!1862596 (not (= lambda!402793 lambda!402727))))

(assert (=> d!2178298 true))

(declare-fun order!27945 () Int)

(declare-fun dynLambda!26943 (Int Int) Int)

(assert (=> d!2178298 (< (dynLambda!26943 order!27945 lambda!402727) (dynLambda!26943 order!27945 lambda!402793))))

(declare-fun forall!16158 (List!67255 Int) Bool)

(assert (=> d!2178298 (= (exists!3031 lt!2489239 lambda!402727) (not (forall!16158 lt!2489239 lambda!402793)))))

(declare-fun bs!1862597 () Bool)

(assert (= bs!1862597 d!2178298))

(declare-fun m!7682334 () Bool)

(assert (=> bs!1862597 m!7682334))

(assert (=> b!6992336 d!2178298))

(declare-fun d!2178300 () Bool)

(declare-fun c!1297138 () Bool)

(assert (=> d!2178300 (= c!1297138 (isEmpty!39182 s!7408))))

(declare-fun e!4202923 () Bool)

(assert (=> d!2178300 (= (matchZipper!2776 lt!2489225 s!7408) e!4202923)))

(declare-fun b!6992444 () Bool)

(assert (=> b!6992444 (= e!4202923 (nullableZipper!2447 lt!2489225))))

(declare-fun b!6992445 () Bool)

(assert (=> b!6992445 (= e!4202923 (matchZipper!2776 (derivationStepZipper!2716 lt!2489225 (head!14122 s!7408)) (tail!13258 s!7408)))))

(assert (= (and d!2178300 c!1297138) b!6992444))

(assert (= (and d!2178300 (not c!1297138)) b!6992445))

(assert (=> d!2178300 m!7682312))

(declare-fun m!7682336 () Bool)

(assert (=> b!6992444 m!7682336))

(assert (=> b!6992445 m!7682316))

(assert (=> b!6992445 m!7682316))

(declare-fun m!7682338 () Bool)

(assert (=> b!6992445 m!7682338))

(assert (=> b!6992445 m!7682320))

(assert (=> b!6992445 m!7682338))

(assert (=> b!6992445 m!7682320))

(declare-fun m!7682340 () Bool)

(assert (=> b!6992445 m!7682340))

(assert (=> b!6992336 d!2178300))

(declare-fun bs!1862598 () Bool)

(declare-fun d!2178302 () Bool)

(assert (= bs!1862598 (and d!2178302 b!6992336)))

(declare-fun lambda!402796 () Int)

(assert (=> bs!1862598 (= lambda!402796 lambda!402727)))

(declare-fun bs!1862599 () Bool)

(assert (= bs!1862599 (and d!2178302 d!2178298)))

(assert (=> bs!1862599 (not (= lambda!402796 lambda!402793))))

(assert (=> d!2178302 true))

(assert (=> d!2178302 (exists!3031 lt!2489239 lambda!402796)))

(declare-fun lt!2489394 () Unit!161127)

(declare-fun choose!52331 (List!67255 List!67254) Unit!161127)

(assert (=> d!2178302 (= lt!2489394 (choose!52331 lt!2489239 s!7408))))

(assert (=> d!2178302 (matchZipper!2776 (content!13276 lt!2489239) s!7408)))

(assert (=> d!2178302 (= (lemmaZipperMatchesExistsMatchingContext!205 lt!2489239 s!7408) lt!2489394)))

(declare-fun bs!1862600 () Bool)

(assert (= bs!1862600 d!2178302))

(declare-fun m!7682342 () Bool)

(assert (=> bs!1862600 m!7682342))

(declare-fun m!7682344 () Bool)

(assert (=> bs!1862600 m!7682344))

(declare-fun m!7682346 () Bool)

(assert (=> bs!1862600 m!7682346))

(assert (=> bs!1862600 m!7682346))

(declare-fun m!7682348 () Bool)

(assert (=> bs!1862600 m!7682348))

(assert (=> b!6992336 d!2178302))

(declare-fun d!2178304 () Bool)

(declare-fun e!4202926 () Bool)

(assert (=> d!2178304 e!4202926))

(declare-fun res!2851869 () Bool)

(assert (=> d!2178304 (=> (not res!2851869) (not e!4202926))))

(declare-fun lt!2489397 () Context!12464)

(declare-fun dynLambda!26944 (Int Context!12464) Bool)

(assert (=> d!2178304 (= res!2851869 (dynLambda!26944 lambda!402727 lt!2489397))))

(declare-fun getWitness!1145 (List!67255 Int) Context!12464)

(assert (=> d!2178304 (= lt!2489397 (getWitness!1145 (toList!10596 lt!2489242) lambda!402727))))

(declare-fun exists!3033 ((Set Context!12464) Int) Bool)

(assert (=> d!2178304 (exists!3033 lt!2489242 lambda!402727)))

(assert (=> d!2178304 (= (getWitness!1143 lt!2489242 lambda!402727) lt!2489397)))

(declare-fun b!6992448 () Bool)

(assert (=> b!6992448 (= e!4202926 (set.member lt!2489397 lt!2489242))))

(assert (= (and d!2178304 res!2851869) b!6992448))

(declare-fun b_lambda!262891 () Bool)

(assert (=> (not b_lambda!262891) (not d!2178304)))

(declare-fun m!7682350 () Bool)

(assert (=> d!2178304 m!7682350))

(assert (=> d!2178304 m!7682162))

(assert (=> d!2178304 m!7682162))

(declare-fun m!7682352 () Bool)

(assert (=> d!2178304 m!7682352))

(declare-fun m!7682354 () Bool)

(assert (=> d!2178304 m!7682354))

(declare-fun m!7682356 () Bool)

(assert (=> b!6992448 m!7682356))

(assert (=> b!6992336 d!2178304))

(declare-fun d!2178306 () Bool)

(declare-fun choose!52332 ((Set Context!12464) Int) (Set Context!12464))

(assert (=> d!2178306 (= (flatMap!2222 lt!2489218 lambda!402730) (choose!52332 lt!2489218 lambda!402730))))

(declare-fun bs!1862601 () Bool)

(assert (= bs!1862601 d!2178306))

(declare-fun m!7682358 () Bool)

(assert (=> bs!1862601 m!7682358))

(assert (=> b!6992346 d!2178306))

(declare-fun d!2178308 () Bool)

(declare-fun dynLambda!26945 (Int Context!12464) (Set Context!12464))

(assert (=> d!2178308 (= (flatMap!2222 lt!2489218 lambda!402730) (dynLambda!26945 lambda!402730 lt!2489255))))

(declare-fun lt!2489400 () Unit!161127)

(declare-fun choose!52333 ((Set Context!12464) Context!12464 Int) Unit!161127)

(assert (=> d!2178308 (= lt!2489400 (choose!52333 lt!2489218 lt!2489255 lambda!402730))))

(assert (=> d!2178308 (= lt!2489218 (set.insert lt!2489255 (as set.empty (Set Context!12464))))))

(assert (=> d!2178308 (= (lemmaFlatMapOnSingletonSet!1737 lt!2489218 lt!2489255 lambda!402730) lt!2489400)))

(declare-fun b_lambda!262893 () Bool)

(assert (=> (not b_lambda!262893) (not d!2178308)))

(declare-fun bs!1862602 () Bool)

(assert (= bs!1862602 d!2178308))

(assert (=> bs!1862602 m!7682202))

(declare-fun m!7682360 () Bool)

(assert (=> bs!1862602 m!7682360))

(declare-fun m!7682362 () Bool)

(assert (=> bs!1862602 m!7682362))

(assert (=> bs!1862602 m!7682198))

(assert (=> b!6992346 d!2178308))

(declare-fun b!6992459 () Bool)

(declare-fun e!4202935 () (Set Context!12464))

(assert (=> b!6992459 (= e!4202935 (as set.empty (Set Context!12464)))))

(declare-fun d!2178310 () Bool)

(declare-fun c!1297145 () Bool)

(declare-fun e!4202934 () Bool)

(assert (=> d!2178310 (= c!1297145 e!4202934)))

(declare-fun res!2851872 () Bool)

(assert (=> d!2178310 (=> (not res!2851872) (not e!4202934))))

(assert (=> d!2178310 (= res!2851872 (is-Cons!67129 (exprs!6732 lt!2489255)))))

(declare-fun e!4202933 () (Set Context!12464))

(assert (=> d!2178310 (= (derivationStepZipperUp!1886 lt!2489255 (h!73578 s!7408)) e!4202933)))

(declare-fun b!6992460 () Bool)

(assert (=> b!6992460 (= e!4202933 e!4202935)))

(declare-fun c!1297146 () Bool)

(assert (=> b!6992460 (= c!1297146 (is-Cons!67129 (exprs!6732 lt!2489255)))))

(declare-fun bm!634803 () Bool)

(declare-fun call!634808 () (Set Context!12464))

(assert (=> bm!634803 (= call!634808 (derivationStepZipperDown!1954 (h!73577 (exprs!6732 lt!2489255)) (Context!12465 (t!381000 (exprs!6732 lt!2489255))) (h!73578 s!7408)))))

(declare-fun b!6992461 () Bool)

(assert (=> b!6992461 (= e!4202933 (set.union call!634808 (derivationStepZipperUp!1886 (Context!12465 (t!381000 (exprs!6732 lt!2489255))) (h!73578 s!7408))))))

(declare-fun b!6992462 () Bool)

(assert (=> b!6992462 (= e!4202934 (nullable!6996 (h!73577 (exprs!6732 lt!2489255))))))

(declare-fun b!6992463 () Bool)

(assert (=> b!6992463 (= e!4202935 call!634808)))

(assert (= (and d!2178310 res!2851872) b!6992462))

(assert (= (and d!2178310 c!1297145) b!6992461))

(assert (= (and d!2178310 (not c!1297145)) b!6992460))

(assert (= (and b!6992460 c!1297146) b!6992463))

(assert (= (and b!6992460 (not c!1297146)) b!6992459))

(assert (= (or b!6992461 b!6992463) bm!634803))

(declare-fun m!7682364 () Bool)

(assert (=> bm!634803 m!7682364))

(declare-fun m!7682366 () Bool)

(assert (=> b!6992461 m!7682366))

(declare-fun m!7682368 () Bool)

(assert (=> b!6992462 m!7682368))

(assert (=> b!6992346 d!2178310))

(assert (=> b!6992346 d!2178294))

(declare-fun d!2178312 () Bool)

(declare-fun choose!52334 ((Set Context!12464) Int) (Set Context!12464))

(assert (=> d!2178312 (= (map!15501 lt!2489218 lambda!402728) (choose!52334 lt!2489218 lambda!402728))))

(declare-fun bs!1862603 () Bool)

(assert (= bs!1862603 d!2178312))

(declare-fun m!7682370 () Bool)

(assert (=> bs!1862603 m!7682370))

(assert (=> b!6992346 d!2178312))

(declare-fun d!2178314 () Bool)

(declare-fun dynLambda!26946 (Int Context!12464) Context!12464)

(assert (=> d!2178314 (= (map!15501 lt!2489218 lambda!402728) (set.insert (dynLambda!26946 lambda!402728 lt!2489255) (as set.empty (Set Context!12464))))))

(declare-fun lt!2489403 () Unit!161127)

(declare-fun choose!52335 ((Set Context!12464) Context!12464 Int) Unit!161127)

(assert (=> d!2178314 (= lt!2489403 (choose!52335 lt!2489218 lt!2489255 lambda!402728))))

(assert (=> d!2178314 (= lt!2489218 (set.insert lt!2489255 (as set.empty (Set Context!12464))))))

(assert (=> d!2178314 (= (lemmaMapOnSingletonSet!301 lt!2489218 lt!2489255 lambda!402728) lt!2489403)))

(declare-fun b_lambda!262895 () Bool)

(assert (=> (not b_lambda!262895) (not d!2178314)))

(declare-fun bs!1862604 () Bool)

(assert (= bs!1862604 d!2178314))

(declare-fun m!7682372 () Bool)

(assert (=> bs!1862604 m!7682372))

(assert (=> bs!1862604 m!7682372))

(declare-fun m!7682374 () Bool)

(assert (=> bs!1862604 m!7682374))

(assert (=> bs!1862604 m!7682196))

(declare-fun m!7682376 () Bool)

(assert (=> bs!1862604 m!7682376))

(assert (=> bs!1862604 m!7682198))

(assert (=> b!6992346 d!2178314))

(declare-fun d!2178316 () Bool)

(declare-fun res!2851877 () Bool)

(declare-fun e!4202940 () Bool)

(assert (=> d!2178316 (=> res!2851877 e!4202940)))

(assert (=> d!2178316 (= res!2851877 (is-Nil!67129 lt!2489250))))

(assert (=> d!2178316 (= (forall!16156 lt!2489250 lambda!402729) e!4202940)))

(declare-fun b!6992468 () Bool)

(declare-fun e!4202941 () Bool)

(assert (=> b!6992468 (= e!4202940 e!4202941)))

(declare-fun res!2851878 () Bool)

(assert (=> b!6992468 (=> (not res!2851878) (not e!4202941))))

(declare-fun dynLambda!26947 (Int Regex!17236) Bool)

(assert (=> b!6992468 (= res!2851878 (dynLambda!26947 lambda!402729 (h!73577 lt!2489250)))))

(declare-fun b!6992469 () Bool)

(assert (=> b!6992469 (= e!4202941 (forall!16156 (t!381000 lt!2489250) lambda!402729))))

(assert (= (and d!2178316 (not res!2851877)) b!6992468))

(assert (= (and b!6992468 res!2851878) b!6992469))

(declare-fun b_lambda!262897 () Bool)

(assert (=> (not b_lambda!262897) (not b!6992468)))

(declare-fun m!7682378 () Bool)

(assert (=> b!6992468 m!7682378))

(declare-fun m!7682380 () Bool)

(assert (=> b!6992469 m!7682380))

(assert (=> b!6992346 d!2178316))

(declare-fun b!6992480 () Bool)

(declare-fun res!2851885 () Bool)

(declare-fun e!4202946 () Bool)

(assert (=> b!6992480 (=> (not res!2851885) (not e!4202946))))

(declare-fun lt!2489406 () List!67253)

(declare-fun size!40914 (List!67253) Int)

(assert (=> b!6992480 (= res!2851885 (= (size!40914 lt!2489406) (+ (size!40914 lt!2489250) (size!40914 (exprs!6732 ct2!306)))))))

(declare-fun b!6992479 () Bool)

(declare-fun e!4202947 () List!67253)

(assert (=> b!6992479 (= e!4202947 (Cons!67129 (h!73577 lt!2489250) (++!15181 (t!381000 lt!2489250) (exprs!6732 ct2!306))))))

(declare-fun b!6992478 () Bool)

(assert (=> b!6992478 (= e!4202947 (exprs!6732 ct2!306))))

(declare-fun d!2178318 () Bool)

(assert (=> d!2178318 e!4202946))

(declare-fun res!2851884 () Bool)

(assert (=> d!2178318 (=> (not res!2851884) (not e!4202946))))

(declare-fun content!13277 (List!67253) (Set Regex!17236))

(assert (=> d!2178318 (= res!2851884 (= (content!13277 lt!2489406) (set.union (content!13277 lt!2489250) (content!13277 (exprs!6732 ct2!306)))))))

(assert (=> d!2178318 (= lt!2489406 e!4202947)))

(declare-fun c!1297149 () Bool)

(assert (=> d!2178318 (= c!1297149 (is-Nil!67129 lt!2489250))))

(assert (=> d!2178318 (= (++!15181 lt!2489250 (exprs!6732 ct2!306)) lt!2489406)))

(declare-fun b!6992481 () Bool)

(assert (=> b!6992481 (= e!4202946 (or (not (= (exprs!6732 ct2!306) Nil!67129)) (= lt!2489406 lt!2489250)))))

(assert (= (and d!2178318 c!1297149) b!6992478))

(assert (= (and d!2178318 (not c!1297149)) b!6992479))

(assert (= (and d!2178318 res!2851884) b!6992480))

(assert (= (and b!6992480 res!2851885) b!6992481))

(declare-fun m!7682382 () Bool)

(assert (=> b!6992480 m!7682382))

(declare-fun m!7682384 () Bool)

(assert (=> b!6992480 m!7682384))

(declare-fun m!7682386 () Bool)

(assert (=> b!6992480 m!7682386))

(declare-fun m!7682388 () Bool)

(assert (=> b!6992479 m!7682388))

(declare-fun m!7682390 () Bool)

(assert (=> d!2178318 m!7682390))

(declare-fun m!7682392 () Bool)

(assert (=> d!2178318 m!7682392))

(declare-fun m!7682394 () Bool)

(assert (=> d!2178318 m!7682394))

(assert (=> b!6992346 d!2178318))

(declare-fun d!2178320 () Bool)

(declare-fun c!1297150 () Bool)

(assert (=> d!2178320 (= c!1297150 (isEmpty!39182 s!7408))))

(declare-fun e!4202948 () Bool)

(assert (=> d!2178320 (= (matchZipper!2776 lt!2489242 s!7408) e!4202948)))

(declare-fun b!6992482 () Bool)

(assert (=> b!6992482 (= e!4202948 (nullableZipper!2447 lt!2489242))))

(declare-fun b!6992483 () Bool)

(assert (=> b!6992483 (= e!4202948 (matchZipper!2776 (derivationStepZipper!2716 lt!2489242 (head!14122 s!7408)) (tail!13258 s!7408)))))

(assert (= (and d!2178320 c!1297150) b!6992482))

(assert (= (and d!2178320 (not c!1297150)) b!6992483))

(assert (=> d!2178320 m!7682312))

(declare-fun m!7682396 () Bool)

(assert (=> b!6992482 m!7682396))

(assert (=> b!6992483 m!7682316))

(assert (=> b!6992483 m!7682316))

(declare-fun m!7682398 () Bool)

(assert (=> b!6992483 m!7682398))

(assert (=> b!6992483 m!7682320))

(assert (=> b!6992483 m!7682398))

(assert (=> b!6992483 m!7682320))

(declare-fun m!7682400 () Bool)

(assert (=> b!6992483 m!7682400))

(assert (=> start!672236 d!2178320))

(declare-fun bs!1862605 () Bool)

(declare-fun d!2178322 () Bool)

(assert (= bs!1862605 (and d!2178322 b!6992334)))

(declare-fun lambda!402801 () Int)

(assert (=> bs!1862605 (= lambda!402801 lambda!402728)))

(assert (=> d!2178322 true))

(assert (=> d!2178322 (= (appendTo!357 z1!570 ct2!306) (map!15501 z1!570 lambda!402801))))

(declare-fun bs!1862606 () Bool)

(assert (= bs!1862606 d!2178322))

(declare-fun m!7682402 () Bool)

(assert (=> bs!1862606 m!7682402))

(assert (=> start!672236 d!2178322))

(declare-fun bs!1862607 () Bool)

(declare-fun d!2178324 () Bool)

(assert (= bs!1862607 (and d!2178324 b!6992334)))

(declare-fun lambda!402804 () Int)

(assert (=> bs!1862607 (= lambda!402804 lambda!402729)))

(assert (=> d!2178324 (= (inv!85950 ct2!306) (forall!16156 (exprs!6732 ct2!306) lambda!402804))))

(declare-fun bs!1862608 () Bool)

(assert (= bs!1862608 d!2178324))

(declare-fun m!7682404 () Bool)

(assert (=> bs!1862608 m!7682404))

(assert (=> start!672236 d!2178324))

(assert (=> b!6992345 d!2178294))

(assert (=> b!6992345 d!2178318))

(declare-fun c!1297162 () Bool)

(declare-fun c!1297166 () Bool)

(declare-fun bm!634816 () Bool)

(declare-fun call!634821 () List!67253)

(declare-fun $colon$colon!2492 (List!67253 Regex!17236) List!67253)

(assert (=> bm!634816 (= call!634821 ($colon$colon!2492 (exprs!6732 lt!2489232) (ite (or c!1297162 c!1297166) (regTwo!34984 (h!73577 (exprs!6732 lt!2489253))) (h!73577 (exprs!6732 lt!2489253)))))))

(declare-fun bm!634817 () Bool)

(declare-fun c!1297163 () Bool)

(declare-fun call!634824 () (Set Context!12464))

(assert (=> bm!634817 (= call!634824 (derivationStepZipperDown!1954 (ite c!1297163 (regOne!34985 (h!73577 (exprs!6732 lt!2489253))) (regOne!34984 (h!73577 (exprs!6732 lt!2489253)))) (ite c!1297163 lt!2489232 (Context!12465 call!634821)) (h!73578 s!7408)))))

(declare-fun b!6992507 () Bool)

(declare-fun e!4202966 () (Set Context!12464))

(declare-fun call!634826 () (Set Context!12464))

(assert (=> b!6992507 (= e!4202966 (set.union call!634824 call!634826))))

(declare-fun bm!634818 () Bool)

(declare-fun call!634823 () (Set Context!12464))

(declare-fun call!634825 () (Set Context!12464))

(assert (=> bm!634818 (= call!634823 call!634825)))

(declare-fun b!6992508 () Bool)

(declare-fun e!4202962 () Bool)

(assert (=> b!6992508 (= c!1297162 e!4202962)))

(declare-fun res!2851888 () Bool)

(assert (=> b!6992508 (=> (not res!2851888) (not e!4202962))))

(assert (=> b!6992508 (= res!2851888 (is-Concat!26081 (h!73577 (exprs!6732 lt!2489253))))))

(declare-fun e!4202963 () (Set Context!12464))

(assert (=> b!6992508 (= e!4202966 e!4202963)))

(declare-fun b!6992509 () Bool)

(declare-fun c!1297165 () Bool)

(assert (=> b!6992509 (= c!1297165 (is-Star!17236 (h!73577 (exprs!6732 lt!2489253))))))

(declare-fun e!4202961 () (Set Context!12464))

(declare-fun e!4202964 () (Set Context!12464))

(assert (=> b!6992509 (= e!4202961 e!4202964)))

(declare-fun bm!634819 () Bool)

(declare-fun call!634822 () List!67253)

(assert (=> bm!634819 (= call!634822 call!634821)))

(declare-fun b!6992510 () Bool)

(assert (=> b!6992510 (= e!4202963 (set.union call!634824 call!634825))))

(declare-fun b!6992511 () Bool)

(declare-fun e!4202965 () (Set Context!12464))

(assert (=> b!6992511 (= e!4202965 e!4202966)))

(assert (=> b!6992511 (= c!1297163 (is-Union!17236 (h!73577 (exprs!6732 lt!2489253))))))

(declare-fun b!6992512 () Bool)

(assert (=> b!6992512 (= e!4202964 call!634823)))

(declare-fun b!6992513 () Bool)

(assert (=> b!6992513 (= e!4202961 call!634823)))

(declare-fun b!6992514 () Bool)

(assert (=> b!6992514 (= e!4202965 (set.insert lt!2489232 (as set.empty (Set Context!12464))))))

(declare-fun b!6992515 () Bool)

(assert (=> b!6992515 (= e!4202963 e!4202961)))

(assert (=> b!6992515 (= c!1297166 (is-Concat!26081 (h!73577 (exprs!6732 lt!2489253))))))

(declare-fun b!6992516 () Bool)

(assert (=> b!6992516 (= e!4202964 (as set.empty (Set Context!12464)))))

(declare-fun d!2178326 () Bool)

(declare-fun c!1297164 () Bool)

(assert (=> d!2178326 (= c!1297164 (and (is-ElementMatch!17236 (h!73577 (exprs!6732 lt!2489253))) (= (c!1297119 (h!73577 (exprs!6732 lt!2489253))) (h!73578 s!7408))))))

(assert (=> d!2178326 (= (derivationStepZipperDown!1954 (h!73577 (exprs!6732 lt!2489253)) lt!2489232 (h!73578 s!7408)) e!4202965)))

(declare-fun b!6992506 () Bool)

(assert (=> b!6992506 (= e!4202962 (nullable!6996 (regOne!34984 (h!73577 (exprs!6732 lt!2489253)))))))

(declare-fun bm!634820 () Bool)

(assert (=> bm!634820 (= call!634826 (derivationStepZipperDown!1954 (ite c!1297163 (regTwo!34985 (h!73577 (exprs!6732 lt!2489253))) (ite c!1297162 (regTwo!34984 (h!73577 (exprs!6732 lt!2489253))) (ite c!1297166 (regOne!34984 (h!73577 (exprs!6732 lt!2489253))) (reg!17565 (h!73577 (exprs!6732 lt!2489253)))))) (ite (or c!1297163 c!1297162) lt!2489232 (Context!12465 call!634822)) (h!73578 s!7408)))))

(declare-fun bm!634821 () Bool)

(assert (=> bm!634821 (= call!634825 call!634826)))

(assert (= (and d!2178326 c!1297164) b!6992514))

(assert (= (and d!2178326 (not c!1297164)) b!6992511))

(assert (= (and b!6992511 c!1297163) b!6992507))

(assert (= (and b!6992511 (not c!1297163)) b!6992508))

(assert (= (and b!6992508 res!2851888) b!6992506))

(assert (= (and b!6992508 c!1297162) b!6992510))

(assert (= (and b!6992508 (not c!1297162)) b!6992515))

(assert (= (and b!6992515 c!1297166) b!6992513))

(assert (= (and b!6992515 (not c!1297166)) b!6992509))

(assert (= (and b!6992509 c!1297165) b!6992512))

(assert (= (and b!6992509 (not c!1297165)) b!6992516))

(assert (= (or b!6992513 b!6992512) bm!634819))

(assert (= (or b!6992513 b!6992512) bm!634818))

(assert (= (or b!6992510 bm!634818) bm!634821))

(assert (= (or b!6992510 bm!634819) bm!634816))

(assert (= (or b!6992507 b!6992510) bm!634817))

(assert (= (or b!6992507 bm!634821) bm!634820))

(assert (=> b!6992514 m!7682178))

(declare-fun m!7682406 () Bool)

(assert (=> b!6992506 m!7682406))

(declare-fun m!7682408 () Bool)

(assert (=> bm!634820 m!7682408))

(declare-fun m!7682410 () Bool)

(assert (=> bm!634816 m!7682410))

(declare-fun m!7682412 () Bool)

(assert (=> bm!634817 m!7682412))

(assert (=> b!6992345 d!2178326))

(declare-fun b!6992517 () Bool)

(declare-fun e!4202969 () (Set Context!12464))

(assert (=> b!6992517 (= e!4202969 (as set.empty (Set Context!12464)))))

(declare-fun d!2178328 () Bool)

(declare-fun c!1297167 () Bool)

(declare-fun e!4202968 () Bool)

(assert (=> d!2178328 (= c!1297167 e!4202968)))

(declare-fun res!2851889 () Bool)

(assert (=> d!2178328 (=> (not res!2851889) (not e!4202968))))

(assert (=> d!2178328 (= res!2851889 (is-Cons!67129 (exprs!6732 lt!2489232)))))

(declare-fun e!4202967 () (Set Context!12464))

(assert (=> d!2178328 (= (derivationStepZipperUp!1886 lt!2489232 (h!73578 s!7408)) e!4202967)))

(declare-fun b!6992518 () Bool)

(assert (=> b!6992518 (= e!4202967 e!4202969)))

(declare-fun c!1297168 () Bool)

(assert (=> b!6992518 (= c!1297168 (is-Cons!67129 (exprs!6732 lt!2489232)))))

(declare-fun bm!634822 () Bool)

(declare-fun call!634827 () (Set Context!12464))

(assert (=> bm!634822 (= call!634827 (derivationStepZipperDown!1954 (h!73577 (exprs!6732 lt!2489232)) (Context!12465 (t!381000 (exprs!6732 lt!2489232))) (h!73578 s!7408)))))

(declare-fun b!6992519 () Bool)

(assert (=> b!6992519 (= e!4202967 (set.union call!634827 (derivationStepZipperUp!1886 (Context!12465 (t!381000 (exprs!6732 lt!2489232))) (h!73578 s!7408))))))

(declare-fun b!6992520 () Bool)

(assert (=> b!6992520 (= e!4202968 (nullable!6996 (h!73577 (exprs!6732 lt!2489232))))))

(declare-fun b!6992521 () Bool)

(assert (=> b!6992521 (= e!4202969 call!634827)))

(assert (= (and d!2178328 res!2851889) b!6992520))

(assert (= (and d!2178328 c!1297167) b!6992519))

(assert (= (and d!2178328 (not c!1297167)) b!6992518))

(assert (= (and b!6992518 c!1297168) b!6992521))

(assert (= (and b!6992518 (not c!1297168)) b!6992517))

(assert (= (or b!6992519 b!6992521) bm!634822))

(declare-fun m!7682414 () Bool)

(assert (=> bm!634822 m!7682414))

(declare-fun m!7682416 () Bool)

(assert (=> b!6992519 m!7682416))

(declare-fun m!7682418 () Bool)

(assert (=> b!6992520 m!7682418))

(assert (=> b!6992345 d!2178328))

(declare-fun d!2178330 () Bool)

(assert (=> d!2178330 (= (isEmpty!39180 (exprs!6732 lt!2489253)) (is-Nil!67129 (exprs!6732 lt!2489253)))))

(assert (=> b!6992354 d!2178330))

(declare-fun b!6992524 () Bool)

(declare-fun res!2851891 () Bool)

(declare-fun e!4202970 () Bool)

(assert (=> b!6992524 (=> (not res!2851891) (not e!4202970))))

(declare-fun lt!2489409 () List!67253)

(assert (=> b!6992524 (= res!2851891 (= (size!40914 lt!2489409) (+ (size!40914 (exprs!6732 lt!2489253)) (size!40914 (exprs!6732 ct2!306)))))))

(declare-fun b!6992523 () Bool)

(declare-fun e!4202971 () List!67253)

(assert (=> b!6992523 (= e!4202971 (Cons!67129 (h!73577 (exprs!6732 lt!2489253)) (++!15181 (t!381000 (exprs!6732 lt!2489253)) (exprs!6732 ct2!306))))))

(declare-fun b!6992522 () Bool)

(assert (=> b!6992522 (= e!4202971 (exprs!6732 ct2!306))))

(declare-fun d!2178332 () Bool)

(assert (=> d!2178332 e!4202970))

(declare-fun res!2851890 () Bool)

(assert (=> d!2178332 (=> (not res!2851890) (not e!4202970))))

(assert (=> d!2178332 (= res!2851890 (= (content!13277 lt!2489409) (set.union (content!13277 (exprs!6732 lt!2489253)) (content!13277 (exprs!6732 ct2!306)))))))

(assert (=> d!2178332 (= lt!2489409 e!4202971)))

(declare-fun c!1297169 () Bool)

(assert (=> d!2178332 (= c!1297169 (is-Nil!67129 (exprs!6732 lt!2489253)))))

(assert (=> d!2178332 (= (++!15181 (exprs!6732 lt!2489253) (exprs!6732 ct2!306)) lt!2489409)))

(declare-fun b!6992525 () Bool)

(assert (=> b!6992525 (= e!4202970 (or (not (= (exprs!6732 ct2!306) Nil!67129)) (= lt!2489409 (exprs!6732 lt!2489253))))))

(assert (= (and d!2178332 c!1297169) b!6992522))

(assert (= (and d!2178332 (not c!1297169)) b!6992523))

(assert (= (and d!2178332 res!2851890) b!6992524))

(assert (= (and b!6992524 res!2851891) b!6992525))

(declare-fun m!7682420 () Bool)

(assert (=> b!6992524 m!7682420))

(declare-fun m!7682422 () Bool)

(assert (=> b!6992524 m!7682422))

(assert (=> b!6992524 m!7682386))

(declare-fun m!7682424 () Bool)

(assert (=> b!6992523 m!7682424))

(declare-fun m!7682426 () Bool)

(assert (=> d!2178332 m!7682426))

(declare-fun m!7682428 () Bool)

(assert (=> d!2178332 m!7682428))

(assert (=> d!2178332 m!7682394))

(assert (=> b!6992334 d!2178332))

(declare-fun d!2178334 () Bool)

(assert (=> d!2178334 (forall!16156 (++!15181 (exprs!6732 lt!2489253) (exprs!6732 ct2!306)) lambda!402729)))

(declare-fun lt!2489410 () Unit!161127)

(assert (=> d!2178334 (= lt!2489410 (choose!52329 (exprs!6732 lt!2489253) (exprs!6732 ct2!306) lambda!402729))))

(assert (=> d!2178334 (forall!16156 (exprs!6732 lt!2489253) lambda!402729)))

(assert (=> d!2178334 (= (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489253) (exprs!6732 ct2!306) lambda!402729) lt!2489410)))

(declare-fun bs!1862609 () Bool)

(assert (= bs!1862609 d!2178334))

(assert (=> bs!1862609 m!7682170))

(assert (=> bs!1862609 m!7682170))

(declare-fun m!7682430 () Bool)

(assert (=> bs!1862609 m!7682430))

(declare-fun m!7682432 () Bool)

(assert (=> bs!1862609 m!7682432))

(declare-fun m!7682434 () Bool)

(assert (=> bs!1862609 m!7682434))

(assert (=> b!6992334 d!2178334))

(declare-fun d!2178336 () Bool)

(declare-fun e!4202974 () Bool)

(assert (=> d!2178336 e!4202974))

(declare-fun res!2851894 () Bool)

(assert (=> d!2178336 (=> (not res!2851894) (not e!4202974))))

(declare-fun lt!2489413 () Context!12464)

(assert (=> d!2178336 (= res!2851894 (= lt!2489224 (dynLambda!26946 lambda!402728 lt!2489413)))))

(declare-fun choose!52336 ((Set Context!12464) Int Context!12464) Context!12464)

(assert (=> d!2178336 (= lt!2489413 (choose!52336 z1!570 lambda!402728 lt!2489224))))

(assert (=> d!2178336 (set.member lt!2489224 (map!15501 z1!570 lambda!402728))))

(assert (=> d!2178336 (= (mapPost2!91 z1!570 lambda!402728 lt!2489224) lt!2489413)))

(declare-fun b!6992529 () Bool)

(assert (=> b!6992529 (= e!4202974 (set.member lt!2489413 z1!570))))

(assert (= (and d!2178336 res!2851894) b!6992529))

(declare-fun b_lambda!262899 () Bool)

(assert (=> (not b_lambda!262899) (not d!2178336)))

(declare-fun m!7682436 () Bool)

(assert (=> d!2178336 m!7682436))

(declare-fun m!7682438 () Bool)

(assert (=> d!2178336 m!7682438))

(declare-fun m!7682440 () Bool)

(assert (=> d!2178336 m!7682440))

(declare-fun m!7682442 () Bool)

(assert (=> d!2178336 m!7682442))

(declare-fun m!7682444 () Bool)

(assert (=> b!6992529 m!7682444))

(assert (=> b!6992334 d!2178336))

(declare-fun d!2178338 () Bool)

(assert (=> d!2178338 (= (flatMap!2222 lt!2489252 lambda!402730) (dynLambda!26945 lambda!402730 lt!2489232))))

(declare-fun lt!2489414 () Unit!161127)

(assert (=> d!2178338 (= lt!2489414 (choose!52333 lt!2489252 lt!2489232 lambda!402730))))

(assert (=> d!2178338 (= lt!2489252 (set.insert lt!2489232 (as set.empty (Set Context!12464))))))

(assert (=> d!2178338 (= (lemmaFlatMapOnSingletonSet!1737 lt!2489252 lt!2489232 lambda!402730) lt!2489414)))

(declare-fun b_lambda!262901 () Bool)

(assert (=> (not b_lambda!262901) (not d!2178338)))

(declare-fun bs!1862610 () Bool)

(assert (= bs!1862610 d!2178338))

(assert (=> bs!1862610 m!7682184))

(declare-fun m!7682446 () Bool)

(assert (=> bs!1862610 m!7682446))

(declare-fun m!7682448 () Bool)

(assert (=> bs!1862610 m!7682448))

(assert (=> bs!1862610 m!7682178))

(assert (=> b!6992344 d!2178338))

(assert (=> b!6992344 d!2178294))

(declare-fun bs!1862611 () Bool)

(declare-fun d!2178340 () Bool)

(assert (= bs!1862611 (and d!2178340 b!6992340)))

(declare-fun lambda!402807 () Int)

(assert (=> bs!1862611 (= lambda!402807 lambda!402730)))

(assert (=> d!2178340 true))

(assert (=> d!2178340 (= (derivationStepZipper!2716 lt!2489252 (h!73578 s!7408)) (flatMap!2222 lt!2489252 lambda!402807))))

(declare-fun bs!1862612 () Bool)

(assert (= bs!1862612 d!2178340))

(declare-fun m!7682450 () Bool)

(assert (=> bs!1862612 m!7682450))

(assert (=> b!6992344 d!2178340))

(declare-fun d!2178342 () Bool)

(assert (=> d!2178342 (= (flatMap!2222 lt!2489252 lambda!402730) (choose!52332 lt!2489252 lambda!402730))))

(declare-fun bs!1862613 () Bool)

(assert (= bs!1862613 d!2178342))

(declare-fun m!7682452 () Bool)

(assert (=> bs!1862613 m!7682452))

(assert (=> b!6992344 d!2178342))

(assert (=> b!6992344 d!2178328))

(assert (=> b!6992343 d!2178334))

(declare-fun d!2178344 () Bool)

(declare-fun c!1297172 () Bool)

(assert (=> d!2178344 (= c!1297172 (isEmpty!39182 (t!381001 s!7408)))))

(declare-fun e!4202975 () Bool)

(assert (=> d!2178344 (= (matchZipper!2776 lt!2489238 (t!381001 s!7408)) e!4202975)))

(declare-fun b!6992532 () Bool)

(assert (=> b!6992532 (= e!4202975 (nullableZipper!2447 lt!2489238))))

(declare-fun b!6992533 () Bool)

(assert (=> b!6992533 (= e!4202975 (matchZipper!2776 (derivationStepZipper!2716 lt!2489238 (head!14122 (t!381001 s!7408))) (tail!13258 (t!381001 s!7408))))))

(assert (= (and d!2178344 c!1297172) b!6992532))

(assert (= (and d!2178344 (not c!1297172)) b!6992533))

(declare-fun m!7682454 () Bool)

(assert (=> d!2178344 m!7682454))

(declare-fun m!7682456 () Bool)

(assert (=> b!6992532 m!7682456))

(declare-fun m!7682458 () Bool)

(assert (=> b!6992533 m!7682458))

(assert (=> b!6992533 m!7682458))

(declare-fun m!7682460 () Bool)

(assert (=> b!6992533 m!7682460))

(declare-fun m!7682462 () Bool)

(assert (=> b!6992533 m!7682462))

(assert (=> b!6992533 m!7682460))

(assert (=> b!6992533 m!7682462))

(declare-fun m!7682464 () Bool)

(assert (=> b!6992533 m!7682464))

(assert (=> b!6992333 d!2178344))

(assert (=> b!6992333 d!2178294))

(declare-fun d!2178346 () Bool)

(declare-fun res!2851895 () Bool)

(declare-fun e!4202976 () Bool)

(assert (=> d!2178346 (=> res!2851895 e!4202976)))

(assert (=> d!2178346 (= res!2851895 (is-Nil!67129 (exprs!6732 ct2!306)))))

(assert (=> d!2178346 (= (forall!16156 (exprs!6732 ct2!306) lambda!402729) e!4202976)))

(declare-fun b!6992534 () Bool)

(declare-fun e!4202977 () Bool)

(assert (=> b!6992534 (= e!4202976 e!4202977)))

(declare-fun res!2851896 () Bool)

(assert (=> b!6992534 (=> (not res!2851896) (not e!4202977))))

(assert (=> b!6992534 (= res!2851896 (dynLambda!26947 lambda!402729 (h!73577 (exprs!6732 ct2!306))))))

(declare-fun b!6992535 () Bool)

(assert (=> b!6992535 (= e!4202977 (forall!16156 (t!381000 (exprs!6732 ct2!306)) lambda!402729))))

(assert (= (and d!2178346 (not res!2851895)) b!6992534))

(assert (= (and b!6992534 res!2851896) b!6992535))

(declare-fun b_lambda!262903 () Bool)

(assert (=> (not b_lambda!262903) (not b!6992534)))

(declare-fun m!7682466 () Bool)

(assert (=> b!6992534 m!7682466))

(declare-fun m!7682468 () Bool)

(assert (=> b!6992535 m!7682468))

(assert (=> b!6992351 d!2178346))

(assert (=> b!6992340 d!2178334))

(declare-fun d!2178348 () Bool)

(assert (=> d!2178348 (= (flatMap!2222 lt!2489243 lambda!402730) (choose!52332 lt!2489243 lambda!402730))))

(declare-fun bs!1862614 () Bool)

(assert (= bs!1862614 d!2178348))

(declare-fun m!7682470 () Bool)

(assert (=> bs!1862614 m!7682470))

(assert (=> b!6992340 d!2178348))

(declare-fun b!6992536 () Bool)

(declare-fun e!4202980 () (Set Context!12464))

(assert (=> b!6992536 (= e!4202980 (as set.empty (Set Context!12464)))))

(declare-fun d!2178350 () Bool)

(declare-fun c!1297173 () Bool)

(declare-fun e!4202979 () Bool)

(assert (=> d!2178350 (= c!1297173 e!4202979)))

(declare-fun res!2851897 () Bool)

(assert (=> d!2178350 (=> (not res!2851897) (not e!4202979))))

(assert (=> d!2178350 (= res!2851897 (is-Cons!67129 (exprs!6732 lt!2489214)))))

(declare-fun e!4202978 () (Set Context!12464))

(assert (=> d!2178350 (= (derivationStepZipperUp!1886 lt!2489214 (h!73578 s!7408)) e!4202978)))

(declare-fun b!6992537 () Bool)

(assert (=> b!6992537 (= e!4202978 e!4202980)))

(declare-fun c!1297174 () Bool)

(assert (=> b!6992537 (= c!1297174 (is-Cons!67129 (exprs!6732 lt!2489214)))))

(declare-fun bm!634823 () Bool)

(declare-fun call!634828 () (Set Context!12464))

(assert (=> bm!634823 (= call!634828 (derivationStepZipperDown!1954 (h!73577 (exprs!6732 lt!2489214)) (Context!12465 (t!381000 (exprs!6732 lt!2489214))) (h!73578 s!7408)))))

(declare-fun b!6992538 () Bool)

(assert (=> b!6992538 (= e!4202978 (set.union call!634828 (derivationStepZipperUp!1886 (Context!12465 (t!381000 (exprs!6732 lt!2489214))) (h!73578 s!7408))))))

(declare-fun b!6992539 () Bool)

(assert (=> b!6992539 (= e!4202979 (nullable!6996 (h!73577 (exprs!6732 lt!2489214))))))

(declare-fun b!6992540 () Bool)

(assert (=> b!6992540 (= e!4202980 call!634828)))

(assert (= (and d!2178350 res!2851897) b!6992539))

(assert (= (and d!2178350 c!1297173) b!6992538))

(assert (= (and d!2178350 (not c!1297173)) b!6992537))

(assert (= (and b!6992537 c!1297174) b!6992540))

(assert (= (and b!6992537 (not c!1297174)) b!6992536))

(assert (= (or b!6992538 b!6992540) bm!634823))

(declare-fun m!7682472 () Bool)

(assert (=> bm!634823 m!7682472))

(declare-fun m!7682474 () Bool)

(assert (=> b!6992538 m!7682474))

(declare-fun m!7682476 () Bool)

(assert (=> b!6992539 m!7682476))

(assert (=> b!6992340 d!2178350))

(declare-fun bs!1862615 () Bool)

(declare-fun d!2178352 () Bool)

(assert (= bs!1862615 (and d!2178352 b!6992340)))

(declare-fun lambda!402808 () Int)

(assert (=> bs!1862615 (= lambda!402808 lambda!402730)))

(declare-fun bs!1862616 () Bool)

(assert (= bs!1862616 (and d!2178352 d!2178340)))

(assert (=> bs!1862616 (= lambda!402808 lambda!402807)))

(assert (=> d!2178352 true))

(assert (=> d!2178352 (= (derivationStepZipper!2716 lt!2489243 (h!73578 s!7408)) (flatMap!2222 lt!2489243 lambda!402808))))

(declare-fun bs!1862617 () Bool)

(assert (= bs!1862617 d!2178352))

(declare-fun m!7682478 () Bool)

(assert (=> bs!1862617 m!7682478))

(assert (=> b!6992340 d!2178352))

(declare-fun d!2178354 () Bool)

(assert (=> d!2178354 (= (flatMap!2222 lt!2489243 lambda!402730) (dynLambda!26945 lambda!402730 lt!2489214))))

(declare-fun lt!2489415 () Unit!161127)

(assert (=> d!2178354 (= lt!2489415 (choose!52333 lt!2489243 lt!2489214 lambda!402730))))

(assert (=> d!2178354 (= lt!2489243 (set.insert lt!2489214 (as set.empty (Set Context!12464))))))

(assert (=> d!2178354 (= (lemmaFlatMapOnSingletonSet!1737 lt!2489243 lt!2489214 lambda!402730) lt!2489415)))

(declare-fun b_lambda!262905 () Bool)

(assert (=> (not b_lambda!262905) (not d!2178354)))

(declare-fun bs!1862618 () Bool)

(assert (= bs!1862618 d!2178354))

(assert (=> bs!1862618 m!7682140))

(declare-fun m!7682480 () Bool)

(assert (=> bs!1862618 m!7682480))

(declare-fun m!7682482 () Bool)

(assert (=> bs!1862618 m!7682482))

(assert (=> bs!1862618 m!7682206))

(assert (=> b!6992340 d!2178354))

(assert (=> b!6992339 d!2178344))

(declare-fun bs!1862619 () Bool)

(declare-fun d!2178356 () Bool)

(assert (= bs!1862619 (and d!2178356 b!6992334)))

(declare-fun lambda!402809 () Int)

(assert (=> bs!1862619 (= lambda!402809 lambda!402729)))

(declare-fun bs!1862620 () Bool)

(assert (= bs!1862620 (and d!2178356 d!2178324)))

(assert (=> bs!1862620 (= lambda!402809 lambda!402804)))

(assert (=> d!2178356 (= (inv!85950 setElem!47898) (forall!16156 (exprs!6732 setElem!47898) lambda!402809))))

(declare-fun bs!1862621 () Bool)

(assert (= bs!1862621 d!2178356))

(declare-fun m!7682484 () Bool)

(assert (=> bs!1862621 m!7682484))

(assert (=> setNonEmpty!47898 d!2178356))

(assert (=> b!6992338 d!2178294))

(declare-fun d!2178358 () Bool)

(declare-fun c!1297175 () Bool)

(assert (=> d!2178358 (= c!1297175 (isEmpty!39182 (t!381001 s!7408)))))

(declare-fun e!4202981 () Bool)

(assert (=> d!2178358 (= (matchZipper!2776 lt!2489217 (t!381001 s!7408)) e!4202981)))

(declare-fun b!6992541 () Bool)

(assert (=> b!6992541 (= e!4202981 (nullableZipper!2447 lt!2489217))))

(declare-fun b!6992542 () Bool)

(assert (=> b!6992542 (= e!4202981 (matchZipper!2776 (derivationStepZipper!2716 lt!2489217 (head!14122 (t!381001 s!7408))) (tail!13258 (t!381001 s!7408))))))

(assert (= (and d!2178358 c!1297175) b!6992541))

(assert (= (and d!2178358 (not c!1297175)) b!6992542))

(assert (=> d!2178358 m!7682454))

(declare-fun m!7682486 () Bool)

(assert (=> b!6992541 m!7682486))

(assert (=> b!6992542 m!7682458))

(assert (=> b!6992542 m!7682458))

(declare-fun m!7682488 () Bool)

(assert (=> b!6992542 m!7682488))

(assert (=> b!6992542 m!7682462))

(assert (=> b!6992542 m!7682488))

(assert (=> b!6992542 m!7682462))

(declare-fun m!7682490 () Bool)

(assert (=> b!6992542 m!7682490))

(assert (=> b!6992338 d!2178358))

(declare-fun d!2178360 () Bool)

(declare-fun c!1297176 () Bool)

(assert (=> d!2178360 (= c!1297176 (isEmpty!39182 (t!381001 s!7408)))))

(declare-fun e!4202982 () Bool)

(assert (=> d!2178360 (= (matchZipper!2776 lt!2489219 (t!381001 s!7408)) e!4202982)))

(declare-fun b!6992543 () Bool)

(assert (=> b!6992543 (= e!4202982 (nullableZipper!2447 lt!2489219))))

(declare-fun b!6992544 () Bool)

(assert (=> b!6992544 (= e!4202982 (matchZipper!2776 (derivationStepZipper!2716 lt!2489219 (head!14122 (t!381001 s!7408))) (tail!13258 (t!381001 s!7408))))))

(assert (= (and d!2178360 c!1297176) b!6992543))

(assert (= (and d!2178360 (not c!1297176)) b!6992544))

(assert (=> d!2178360 m!7682454))

(declare-fun m!7682492 () Bool)

(assert (=> b!6992543 m!7682492))

(assert (=> b!6992544 m!7682458))

(assert (=> b!6992544 m!7682458))

(declare-fun m!7682494 () Bool)

(assert (=> b!6992544 m!7682494))

(assert (=> b!6992544 m!7682462))

(assert (=> b!6992544 m!7682494))

(assert (=> b!6992544 m!7682462))

(declare-fun m!7682496 () Bool)

(assert (=> b!6992544 m!7682496))

(assert (=> b!6992338 d!2178360))

(declare-fun d!2178362 () Bool)

(declare-fun c!1297177 () Bool)

(assert (=> d!2178362 (= c!1297177 (isEmpty!39182 (t!381001 s!7408)))))

(declare-fun e!4202983 () Bool)

(assert (=> d!2178362 (= (matchZipper!2776 lt!2489221 (t!381001 s!7408)) e!4202983)))

(declare-fun b!6992545 () Bool)

(assert (=> b!6992545 (= e!4202983 (nullableZipper!2447 lt!2489221))))

(declare-fun b!6992546 () Bool)

(assert (=> b!6992546 (= e!4202983 (matchZipper!2776 (derivationStepZipper!2716 lt!2489221 (head!14122 (t!381001 s!7408))) (tail!13258 (t!381001 s!7408))))))

(assert (= (and d!2178362 c!1297177) b!6992545))

(assert (= (and d!2178362 (not c!1297177)) b!6992546))

(assert (=> d!2178362 m!7682454))

(declare-fun m!7682498 () Bool)

(assert (=> b!6992545 m!7682498))

(assert (=> b!6992546 m!7682458))

(assert (=> b!6992546 m!7682458))

(declare-fun m!7682500 () Bool)

(assert (=> b!6992546 m!7682500))

(assert (=> b!6992546 m!7682462))

(assert (=> b!6992546 m!7682500))

(assert (=> b!6992546 m!7682462))

(declare-fun m!7682502 () Bool)

(assert (=> b!6992546 m!7682502))

(assert (=> b!6992338 d!2178362))

(declare-fun e!4202986 () Bool)

(declare-fun d!2178364 () Bool)

(assert (=> d!2178364 (= (matchZipper!2776 (set.union lt!2489221 lt!2489238) (t!381001 s!7408)) e!4202986)))

(declare-fun res!2851900 () Bool)

(assert (=> d!2178364 (=> res!2851900 e!4202986)))

(assert (=> d!2178364 (= res!2851900 (matchZipper!2776 lt!2489221 (t!381001 s!7408)))))

(declare-fun lt!2489418 () Unit!161127)

(declare-fun choose!52337 ((Set Context!12464) (Set Context!12464) List!67254) Unit!161127)

(assert (=> d!2178364 (= lt!2489418 (choose!52337 lt!2489221 lt!2489238 (t!381001 s!7408)))))

(assert (=> d!2178364 (= (lemmaZipperConcatMatchesSameAsBothZippers!1409 lt!2489221 lt!2489238 (t!381001 s!7408)) lt!2489418)))

(declare-fun b!6992549 () Bool)

(assert (=> b!6992549 (= e!4202986 (matchZipper!2776 lt!2489238 (t!381001 s!7408)))))

(assert (= (and d!2178364 (not res!2851900)) b!6992549))

(declare-fun m!7682504 () Bool)

(assert (=> d!2178364 m!7682504))

(assert (=> d!2178364 m!7682154))

(declare-fun m!7682506 () Bool)

(assert (=> d!2178364 m!7682506))

(assert (=> b!6992549 m!7682132))

(assert (=> b!6992338 d!2178364))

(assert (=> b!6992337 d!2178344))

(assert (=> b!6992337 d!2178294))

(declare-fun d!2178366 () Bool)

(declare-fun nullableFct!2647 (Regex!17236) Bool)

(assert (=> d!2178366 (= (nullable!6996 (h!73577 (exprs!6732 lt!2489253))) (nullableFct!2647 (h!73577 (exprs!6732 lt!2489253))))))

(declare-fun bs!1862622 () Bool)

(assert (= bs!1862622 d!2178366))

(declare-fun m!7682508 () Bool)

(assert (=> bs!1862622 m!7682508))

(assert (=> b!6992348 d!2178366))

(declare-fun d!2178368 () Bool)

(assert (=> d!2178368 (= (tail!13256 (exprs!6732 lt!2489253)) (t!381000 (exprs!6732 lt!2489253)))))

(assert (=> b!6992348 d!2178368))

(declare-fun b!6992554 () Bool)

(declare-fun e!4202989 () Bool)

(declare-fun tp!1930137 () Bool)

(declare-fun tp!1930138 () Bool)

(assert (=> b!6992554 (= e!4202989 (and tp!1930137 tp!1930138))))

(assert (=> b!6992341 (= tp!1930120 e!4202989)))

(assert (= (and b!6992341 (is-Cons!67129 (exprs!6732 ct2!306))) b!6992554))

(declare-fun b!6992559 () Bool)

(declare-fun e!4202992 () Bool)

(declare-fun tp!1930141 () Bool)

(assert (=> b!6992559 (= e!4202992 (and tp_is_empty!43697 tp!1930141))))

(assert (=> b!6992335 (= tp!1930119 e!4202992)))

(assert (= (and b!6992335 (is-Cons!67130 (t!381001 s!7408))) b!6992559))

(declare-fun condSetEmpty!47904 () Bool)

(assert (=> setNonEmpty!47898 (= condSetEmpty!47904 (= setRest!47898 (as set.empty (Set Context!12464))))))

(declare-fun setRes!47904 () Bool)

(assert (=> setNonEmpty!47898 (= tp!1930118 setRes!47904)))

(declare-fun setIsEmpty!47904 () Bool)

(assert (=> setIsEmpty!47904 setRes!47904))

(declare-fun tp!1930147 () Bool)

(declare-fun setNonEmpty!47904 () Bool)

(declare-fun setElem!47904 () Context!12464)

(declare-fun e!4202995 () Bool)

(assert (=> setNonEmpty!47904 (= setRes!47904 (and tp!1930147 (inv!85950 setElem!47904) e!4202995))))

(declare-fun setRest!47904 () (Set Context!12464))

(assert (=> setNonEmpty!47904 (= setRest!47898 (set.union (set.insert setElem!47904 (as set.empty (Set Context!12464))) setRest!47904))))

(declare-fun b!6992564 () Bool)

(declare-fun tp!1930146 () Bool)

(assert (=> b!6992564 (= e!4202995 tp!1930146)))

(assert (= (and setNonEmpty!47898 condSetEmpty!47904) setIsEmpty!47904))

(assert (= (and setNonEmpty!47898 (not condSetEmpty!47904)) setNonEmpty!47904))

(assert (= setNonEmpty!47904 b!6992564))

(declare-fun m!7682510 () Bool)

(assert (=> setNonEmpty!47904 m!7682510))

(declare-fun b!6992565 () Bool)

(declare-fun e!4202996 () Bool)

(declare-fun tp!1930148 () Bool)

(declare-fun tp!1930149 () Bool)

(assert (=> b!6992565 (= e!4202996 (and tp!1930148 tp!1930149))))

(assert (=> b!6992353 (= tp!1930117 e!4202996)))

(assert (= (and b!6992353 (is-Cons!67129 (exprs!6732 setElem!47898))) b!6992565))

(declare-fun b_lambda!262907 () Bool)

(assert (= b_lambda!262899 (or b!6992334 b_lambda!262907)))

(declare-fun bs!1862623 () Bool)

(declare-fun d!2178370 () Bool)

(assert (= bs!1862623 (and d!2178370 b!6992334)))

(declare-fun lt!2489419 () Unit!161127)

(assert (=> bs!1862623 (= lt!2489419 (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489413) (exprs!6732 ct2!306) lambda!402729))))

(assert (=> bs!1862623 (= (dynLambda!26946 lambda!402728 lt!2489413) (Context!12465 (++!15181 (exprs!6732 lt!2489413) (exprs!6732 ct2!306))))))

(declare-fun m!7682512 () Bool)

(assert (=> bs!1862623 m!7682512))

(declare-fun m!7682514 () Bool)

(assert (=> bs!1862623 m!7682514))

(assert (=> d!2178336 d!2178370))

(declare-fun b_lambda!262909 () Bool)

(assert (= b_lambda!262897 (or b!6992334 b_lambda!262909)))

(declare-fun bs!1862624 () Bool)

(declare-fun d!2178372 () Bool)

(assert (= bs!1862624 (and d!2178372 b!6992334)))

(declare-fun validRegex!8867 (Regex!17236) Bool)

(assert (=> bs!1862624 (= (dynLambda!26947 lambda!402729 (h!73577 lt!2489250)) (validRegex!8867 (h!73577 lt!2489250)))))

(declare-fun m!7682516 () Bool)

(assert (=> bs!1862624 m!7682516))

(assert (=> b!6992468 d!2178372))

(declare-fun b_lambda!262911 () Bool)

(assert (= b_lambda!262893 (or b!6992340 b_lambda!262911)))

(declare-fun bs!1862625 () Bool)

(declare-fun d!2178374 () Bool)

(assert (= bs!1862625 (and d!2178374 b!6992340)))

(assert (=> bs!1862625 (= (dynLambda!26945 lambda!402730 lt!2489255) (derivationStepZipperUp!1886 lt!2489255 (h!73578 s!7408)))))

(assert (=> bs!1862625 m!7682186))

(assert (=> d!2178308 d!2178374))

(declare-fun b_lambda!262913 () Bool)

(assert (= b_lambda!262891 (or b!6992336 b_lambda!262913)))

(declare-fun bs!1862626 () Bool)

(declare-fun d!2178376 () Bool)

(assert (= bs!1862626 (and d!2178376 b!6992336)))

(assert (=> bs!1862626 (= (dynLambda!26944 lambda!402727 lt!2489397) (matchZipper!2776 (set.insert lt!2489397 (as set.empty (Set Context!12464))) s!7408))))

(declare-fun m!7682518 () Bool)

(assert (=> bs!1862626 m!7682518))

(assert (=> bs!1862626 m!7682518))

(declare-fun m!7682520 () Bool)

(assert (=> bs!1862626 m!7682520))

(assert (=> d!2178304 d!2178376))

(declare-fun b_lambda!262915 () Bool)

(assert (= b_lambda!262901 (or b!6992340 b_lambda!262915)))

(declare-fun bs!1862627 () Bool)

(declare-fun d!2178378 () Bool)

(assert (= bs!1862627 (and d!2178378 b!6992340)))

(assert (=> bs!1862627 (= (dynLambda!26945 lambda!402730 lt!2489232) (derivationStepZipperUp!1886 lt!2489232 (h!73578 s!7408)))))

(assert (=> bs!1862627 m!7682180))

(assert (=> d!2178338 d!2178378))

(declare-fun b_lambda!262917 () Bool)

(assert (= b_lambda!262905 (or b!6992340 b_lambda!262917)))

(declare-fun bs!1862628 () Bool)

(declare-fun d!2178380 () Bool)

(assert (= bs!1862628 (and d!2178380 b!6992340)))

(assert (=> bs!1862628 (= (dynLambda!26945 lambda!402730 lt!2489214) (derivationStepZipperUp!1886 lt!2489214 (h!73578 s!7408)))))

(assert (=> bs!1862628 m!7682142))

(assert (=> d!2178354 d!2178380))

(declare-fun b_lambda!262919 () Bool)

(assert (= b_lambda!262895 (or b!6992334 b_lambda!262919)))

(declare-fun bs!1862629 () Bool)

(declare-fun d!2178382 () Bool)

(assert (= bs!1862629 (and d!2178382 b!6992334)))

(declare-fun lt!2489420 () Unit!161127)

(assert (=> bs!1862629 (= lt!2489420 (lemmaConcatPreservesForall!572 (exprs!6732 lt!2489255) (exprs!6732 ct2!306) lambda!402729))))

(assert (=> bs!1862629 (= (dynLambda!26946 lambda!402728 lt!2489255) (Context!12465 (++!15181 (exprs!6732 lt!2489255) (exprs!6732 ct2!306))))))

(declare-fun m!7682522 () Bool)

(assert (=> bs!1862629 m!7682522))

(declare-fun m!7682524 () Bool)

(assert (=> bs!1862629 m!7682524))

(assert (=> d!2178314 d!2178382))

(declare-fun b_lambda!262921 () Bool)

(assert (= b_lambda!262903 (or b!6992334 b_lambda!262921)))

(declare-fun bs!1862630 () Bool)

(declare-fun d!2178384 () Bool)

(assert (= bs!1862630 (and d!2178384 b!6992334)))

(assert (=> bs!1862630 (= (dynLambda!26947 lambda!402729 (h!73577 (exprs!6732 ct2!306))) (validRegex!8867 (h!73577 (exprs!6732 ct2!306))))))

(declare-fun m!7682526 () Bool)

(assert (=> bs!1862630 m!7682526))

(assert (=> b!6992534 d!2178384))

(push 1)

(assert (not d!2178322))

(assert (not b!6992524))

(assert (not bm!634823))

(assert (not d!2178344))

(assert (not bs!1862628))

(assert (not b!6992506))

(assert (not b!6992469))

(assert (not b!6992438))

(assert (not b!6992462))

(assert (not b!6992441))

(assert (not d!2178366))

(assert (not b!6992535))

(assert (not b!6992538))

(assert (not b!6992519))

(assert (not bs!1862624))

(assert (not bm!634817))

(assert (not b!6992539))

(assert (not d!2178334))

(assert (not d!2178338))

(assert (not d!2178318))

(assert (not b!6992554))

(assert (not b!6992545))

(assert (not b!6992542))

(assert (not bs!1862623))

(assert (not d!2178324))

(assert (not b_lambda!262921))

(assert (not b_lambda!262915))

(assert (not d!2178298))

(assert (not b_lambda!262911))

(assert (not bs!1862627))

(assert (not d!2178360))

(assert (not d!2178306))

(assert (not d!2178340))

(assert (not b!6992564))

(assert (not b!6992546))

(assert (not setNonEmpty!47904))

(assert (not bs!1862629))

(assert (not d!2178294))

(assert (not b!6992565))

(assert (not d!2178304))

(assert (not bm!634803))

(assert (not b!6992480))

(assert (not b!6992479))

(assert (not b!6992483))

(assert (not b!6992445))

(assert (not d!2178314))

(assert (not d!2178320))

(assert (not bs!1862625))

(assert (not d!2178342))

(assert (not d!2178308))

(assert (not bs!1862630))

(assert (not d!2178362))

(assert (not b_lambda!262907))

(assert (not b!6992541))

(assert (not d!2178354))

(assert (not d!2178336))

(assert (not bm!634820))

(assert (not b!6992437))

(assert (not d!2178300))

(assert (not b_lambda!262917))

(assert tp_is_empty!43697)

(assert (not d!2178312))

(assert (not b!6992543))

(assert (not d!2178332))

(assert (not b!6992532))

(assert (not d!2178292))

(assert (not d!2178296))

(assert (not b!6992559))

(assert (not bm!634822))

(assert (not bm!634816))

(assert (not d!2178364))

(assert (not b!6992549))

(assert (not b!6992482))

(assert (not b!6992444))

(assert (not d!2178358))

(assert (not bs!1862626))

(assert (not d!2178352))

(assert (not b_lambda!262913))

(assert (not b!6992520))

(assert (not d!2178356))

(assert (not b_lambda!262909))

(assert (not b!6992523))

(assert (not b_lambda!262919))

(assert (not b!6992533))

(assert (not b!6992461))

(assert (not d!2178302))

(assert (not d!2178348))

(assert (not b!6992544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

