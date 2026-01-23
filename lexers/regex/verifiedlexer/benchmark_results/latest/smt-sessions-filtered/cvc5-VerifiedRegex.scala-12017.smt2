; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674018 () Bool)

(assert start!674018)

(declare-fun b!7003608 () Bool)

(assert (=> b!7003608 true))

(declare-fun b!7003595 () Bool)

(assert (=> b!7003595 true))

(declare-fun b!7003609 () Bool)

(assert (=> b!7003609 true))

(declare-fun b!7003580 () Bool)

(declare-fun e!4209729 () Bool)

(declare-datatypes ((C!34830 0))(
  ( (C!34831 (val!27117 Int)) )
))
(declare-datatypes ((Regex!17280 0))(
  ( (ElementMatch!17280 (c!1300340 C!34830)) (Concat!26125 (regOne!35072 Regex!17280) (regTwo!35072 Regex!17280)) (EmptyExpr!17280) (Star!17280 (reg!17609 Regex!17280)) (EmptyLang!17280) (Union!17280 (regOne!35073 Regex!17280) (regTwo!35073 Regex!17280)) )
))
(declare-datatypes ((List!67385 0))(
  ( (Nil!67261) (Cons!67261 (h!73709 Regex!17280) (t!381138 List!67385)) )
))
(declare-datatypes ((Context!12552 0))(
  ( (Context!12553 (exprs!6776 List!67385)) )
))
(declare-fun lt!2498338 () (Set Context!12552))

(declare-datatypes ((List!67386 0))(
  ( (Nil!67262) (Cons!67262 (h!73710 C!34830) (t!381139 List!67386)) )
))
(declare-fun lt!2498372 () List!67386)

(declare-fun matchZipper!2820 ((Set Context!12552) List!67386) Bool)

(assert (=> b!7003580 (= e!4209729 (matchZipper!2820 lt!2498338 lt!2498372))))

(declare-fun b!7003581 () Bool)

(declare-fun res!2857216 () Bool)

(declare-fun e!4209725 () Bool)

(assert (=> b!7003581 (=> res!2857216 e!4209725)))

(declare-fun lt!2498376 () Context!12552)

(declare-fun lt!2498383 () Int)

(declare-datatypes ((List!67387 0))(
  ( (Nil!67263) (Cons!67263 (h!73711 Context!12552) (t!381140 List!67387)) )
))
(declare-fun zipperDepthTotal!501 (List!67387) Int)

(assert (=> b!7003581 (= res!2857216 (>= (zipperDepthTotal!501 (Cons!67263 lt!2498376 Nil!67263)) lt!2498383))))

(declare-fun b!7003582 () Bool)

(declare-fun res!2857212 () Bool)

(declare-fun e!4209736 () Bool)

(assert (=> b!7003582 (=> res!2857212 e!4209736)))

(declare-fun lt!2498391 () Context!12552)

(declare-fun isEmpty!39278 (List!67385) Bool)

(assert (=> b!7003582 (= res!2857212 (isEmpty!39278 (exprs!6776 lt!2498391)))))

(declare-fun b!7003583 () Bool)

(declare-fun res!2857222 () Bool)

(declare-fun e!4209721 () Bool)

(assert (=> b!7003583 (=> res!2857222 e!4209721)))

(declare-fun lt!2498362 () (Set Context!12552))

(assert (=> b!7003583 (= res!2857222 (not (matchZipper!2820 lt!2498362 lt!2498372)))))

(declare-fun b!7003584 () Bool)

(declare-fun e!4209730 () Bool)

(assert (=> b!7003584 (= e!4209730 (not (matchZipper!2820 lt!2498338 lt!2498372)))))

(declare-fun b!7003585 () Bool)

(declare-fun e!4209719 () Bool)

(assert (=> b!7003585 (= e!4209719 e!4209721)))

(declare-fun res!2857219 () Bool)

(assert (=> b!7003585 (=> res!2857219 e!4209721)))

(declare-fun lt!2498393 () (Set Context!12552))

(declare-fun lt!2498367 () C!34830)

(declare-fun derivationStepZipper!2760 ((Set Context!12552) C!34830) (Set Context!12552))

(assert (=> b!7003585 (= res!2857219 (not (= (derivationStepZipper!2760 lt!2498393 lt!2498367) lt!2498362)))))

(declare-fun derivationStepZipperUp!1930 (Context!12552 C!34830) (Set Context!12552))

(assert (=> b!7003585 (= lt!2498362 (derivationStepZipperUp!1930 lt!2498376 lt!2498367))))

(declare-datatypes ((tuple2!67906 0))(
  ( (tuple2!67907 (_1!37256 List!67386) (_2!37256 List!67386)) )
))
(declare-fun lt!2498357 () tuple2!67906)

(declare-fun head!14151 (List!67386) C!34830)

(assert (=> b!7003585 (= lt!2498367 (head!14151 (_1!37256 lt!2498357)))))

(declare-fun lambda!406125 () Int)

(declare-fun s!7408 () List!67386)

(declare-fun flatMap!2266 ((Set Context!12552) Int) (Set Context!12552))

(assert (=> b!7003585 (= (flatMap!2266 lt!2498393 lambda!406125) (derivationStepZipperUp!1930 lt!2498376 (h!73710 s!7408)))))

(declare-datatypes ((Unit!161220 0))(
  ( (Unit!161221) )
))
(declare-fun lt!2498369 () Unit!161220)

(declare-fun lemmaFlatMapOnSingletonSet!1781 ((Set Context!12552) Context!12552 Int) Unit!161220)

(assert (=> b!7003585 (= lt!2498369 (lemmaFlatMapOnSingletonSet!1781 lt!2498393 lt!2498376 lambda!406125))))

(declare-fun b!7003586 () Bool)

(declare-fun res!2857225 () Bool)

(assert (=> b!7003586 (=> res!2857225 e!4209721)))

(declare-fun lt!2498380 () Bool)

(assert (=> b!7003586 (= res!2857225 (not lt!2498380))))

(declare-fun b!7003587 () Bool)

(declare-fun res!2857220 () Bool)

(declare-fun e!4209716 () Bool)

(assert (=> b!7003587 (=> res!2857220 e!4209716)))

(declare-fun lt!2498332 () (Set Context!12552))

(assert (=> b!7003587 (= res!2857220 (not (matchZipper!2820 lt!2498332 (_2!37256 lt!2498357))))))

(declare-fun b!7003588 () Bool)

(declare-fun e!4209714 () Bool)

(declare-fun tp!1931404 () Bool)

(assert (=> b!7003588 (= e!4209714 tp!1931404)))

(declare-fun b!7003589 () Bool)

(declare-fun e!4209727 () Bool)

(declare-fun e!4209734 () Bool)

(assert (=> b!7003589 (= e!4209727 e!4209734)))

(declare-fun res!2857230 () Bool)

(assert (=> b!7003589 (=> res!2857230 e!4209734)))

(declare-fun lt!2498341 () (Set Context!12552))

(assert (=> b!7003589 (= res!2857230 (not (matchZipper!2820 lt!2498341 (t!381139 s!7408))))))

(declare-fun lambda!406124 () Int)

(declare-fun lt!2498334 () Unit!161220)

(declare-fun ct2!306 () Context!12552)

(declare-fun lt!2498339 () List!67385)

(declare-fun lemmaConcatPreservesForall!616 (List!67385 List!67385 Int) Unit!161220)

(assert (=> b!7003589 (= lt!2498334 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003590 () Bool)

(declare-fun e!4209713 () Bool)

(declare-fun e!4209723 () Bool)

(assert (=> b!7003590 (= e!4209713 e!4209723)))

(declare-fun res!2857207 () Bool)

(assert (=> b!7003590 (=> res!2857207 e!4209723)))

(declare-fun lt!2498337 () (Set Context!12552))

(declare-fun lt!2498340 () (Set Context!12552))

(assert (=> b!7003590 (= res!2857207 (not (= lt!2498337 lt!2498340)))))

(declare-fun lt!2498346 () Context!12552)

(assert (=> b!7003590 (= lt!2498337 (set.insert lt!2498346 (as set.empty (Set Context!12552))))))

(declare-fun lt!2498384 () Unit!161220)

(assert (=> b!7003590 (= lt!2498384 (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498391) (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003591 () Bool)

(declare-fun res!2857223 () Bool)

(assert (=> b!7003591 (=> res!2857223 e!4209736)))

(assert (=> b!7003591 (= res!2857223 (not (is-Cons!67261 (exprs!6776 lt!2498391))))))

(declare-fun res!2857214 () Bool)

(declare-fun e!4209717 () Bool)

(assert (=> start!674018 (=> (not res!2857214) (not e!4209717))))

(declare-fun lt!2498374 () (Set Context!12552))

(assert (=> start!674018 (= res!2857214 (matchZipper!2820 lt!2498374 s!7408))))

(declare-fun z1!570 () (Set Context!12552))

(declare-fun appendTo!401 ((Set Context!12552) Context!12552) (Set Context!12552))

(assert (=> start!674018 (= lt!2498374 (appendTo!401 z1!570 ct2!306))))

(assert (=> start!674018 e!4209717))

(declare-fun condSetEmpty!48162 () Bool)

(assert (=> start!674018 (= condSetEmpty!48162 (= z1!570 (as set.empty (Set Context!12552))))))

(declare-fun setRes!48162 () Bool)

(assert (=> start!674018 setRes!48162))

(declare-fun e!4209722 () Bool)

(declare-fun inv!86060 (Context!12552) Bool)

(assert (=> start!674018 (and (inv!86060 ct2!306) e!4209722)))

(declare-fun e!4209720 () Bool)

(assert (=> start!674018 e!4209720))

(declare-fun b!7003592 () Bool)

(declare-fun e!4209728 () Bool)

(assert (=> b!7003592 (= e!4209728 (matchZipper!2820 lt!2498341 (t!381139 s!7408)))))

(declare-fun b!7003593 () Bool)

(declare-fun e!4209731 () Bool)

(assert (=> b!7003593 (= e!4209731 e!4209727)))

(declare-fun res!2857234 () Bool)

(assert (=> b!7003593 (=> res!2857234 e!4209727)))

(declare-fun e!4209733 () Bool)

(assert (=> b!7003593 (= res!2857234 e!4209733)))

(declare-fun res!2857204 () Bool)

(assert (=> b!7003593 (=> (not res!2857204) (not e!4209733))))

(declare-fun lt!2498392 () Bool)

(declare-fun lt!2498370 () Bool)

(assert (=> b!7003593 (= res!2857204 (not (= lt!2498392 lt!2498370)))))

(declare-fun lt!2498387 () (Set Context!12552))

(assert (=> b!7003593 (= lt!2498392 (matchZipper!2820 lt!2498387 (t!381139 s!7408)))))

(declare-fun lt!2498356 () Unit!161220)

(assert (=> b!7003593 (= lt!2498356 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498368 () (Set Context!12552))

(assert (=> b!7003593 (= (matchZipper!2820 lt!2498368 (t!381139 s!7408)) e!4209728)))

(declare-fun res!2857226 () Bool)

(assert (=> b!7003593 (=> res!2857226 e!4209728)))

(assert (=> b!7003593 (= res!2857226 lt!2498370)))

(declare-fun lt!2498355 () (Set Context!12552))

(assert (=> b!7003593 (= lt!2498370 (matchZipper!2820 lt!2498355 (t!381139 s!7408)))))

(declare-fun lt!2498390 () Unit!161220)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1453 ((Set Context!12552) (Set Context!12552) List!67386) Unit!161220)

(assert (=> b!7003593 (= lt!2498390 (lemmaZipperConcatMatchesSameAsBothZippers!1453 lt!2498355 lt!2498341 (t!381139 s!7408)))))

(declare-fun lt!2498363 () Unit!161220)

(assert (=> b!7003593 (= lt!2498363 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498354 () Unit!161220)

(assert (=> b!7003593 (= lt!2498354 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003594 () Bool)

(declare-fun tp!1931403 () Bool)

(assert (=> b!7003594 (= e!4209722 tp!1931403)))

(declare-fun e!4209732 () Bool)

(assert (=> b!7003595 (= e!4209732 e!4209713)))

(declare-fun res!2857210 () Bool)

(assert (=> b!7003595 (=> res!2857210 e!4209713)))

(declare-fun lt!2498378 () Context!12552)

(assert (=> b!7003595 (= res!2857210 (or (not (= lt!2498346 lt!2498378)) (not (set.member lt!2498391 z1!570))))))

(declare-fun ++!15261 (List!67385 List!67385) List!67385)

(assert (=> b!7003595 (= lt!2498346 (Context!12553 (++!15261 (exprs!6776 lt!2498391) (exprs!6776 ct2!306))))))

(declare-fun lt!2498396 () Unit!161220)

(assert (=> b!7003595 (= lt!2498396 (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498391) (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lambda!406123 () Int)

(declare-fun mapPost2!135 ((Set Context!12552) Int Context!12552) Context!12552)

(assert (=> b!7003595 (= lt!2498391 (mapPost2!135 z1!570 lambda!406123 lt!2498378))))

(declare-fun b!7003596 () Bool)

(declare-fun res!2857235 () Bool)

(assert (=> b!7003596 (=> res!2857235 e!4209732)))

(assert (=> b!7003596 (= res!2857235 (not (set.member lt!2498378 lt!2498374)))))

(declare-fun b!7003597 () Bool)

(declare-fun e!4209718 () Bool)

(assert (=> b!7003597 (= e!4209718 e!4209725)))

(declare-fun res!2857211 () Bool)

(assert (=> b!7003597 (=> res!2857211 e!4209725)))

(declare-fun lt!2498350 () Int)

(declare-fun contextDepthTotal!473 (Context!12552) Int)

(assert (=> b!7003597 (= res!2857211 (<= lt!2498350 (contextDepthTotal!473 lt!2498376)))))

(assert (=> b!7003597 (<= lt!2498350 lt!2498383)))

(declare-fun lt!2498381 () List!67387)

(assert (=> b!7003597 (= lt!2498383 (zipperDepthTotal!501 lt!2498381))))

(assert (=> b!7003597 (= lt!2498350 (contextDepthTotal!473 lt!2498391))))

(declare-fun lt!2498351 () Unit!161220)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!41 (List!67387 Context!12552) Unit!161220)

(assert (=> b!7003597 (= lt!2498351 (lemmaTotalDepthZipperLargerThanOfAnyContext!41 lt!2498381 lt!2498391))))

(declare-fun toList!10640 ((Set Context!12552)) List!67387)

(assert (=> b!7003597 (= lt!2498381 (toList!10640 z1!570))))

(declare-fun lt!2498347 () Unit!161220)

(assert (=> b!7003597 (= lt!2498347 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498343 () Unit!161220)

(assert (=> b!7003597 (= lt!2498343 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498352 () Unit!161220)

(assert (=> b!7003597 (= lt!2498352 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(assert (=> b!7003597 (= (flatMap!2266 lt!2498393 lambda!406125) (derivationStepZipperUp!1930 lt!2498376 (h!73710 s!7408)))))

(declare-fun lt!2498348 () Unit!161220)

(assert (=> b!7003597 (= lt!2498348 (lemmaFlatMapOnSingletonSet!1781 lt!2498393 lt!2498376 lambda!406125))))

(declare-fun map!15567 ((Set Context!12552) Int) (Set Context!12552))

(assert (=> b!7003597 (= (map!15567 lt!2498393 lambda!406123) (set.insert (Context!12553 (++!15261 lt!2498339 (exprs!6776 ct2!306))) (as set.empty (Set Context!12552))))))

(declare-fun lt!2498375 () Unit!161220)

(assert (=> b!7003597 (= lt!2498375 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498349 () Unit!161220)

(declare-fun lemmaMapOnSingletonSet!345 ((Set Context!12552) Context!12552 Int) Unit!161220)

(assert (=> b!7003597 (= lt!2498349 (lemmaMapOnSingletonSet!345 lt!2498393 lt!2498376 lambda!406123))))

(assert (=> b!7003597 (= lt!2498393 (set.insert lt!2498376 (as set.empty (Set Context!12552))))))

(declare-fun b!7003598 () Bool)

(declare-fun e!4209715 () Bool)

(assert (=> b!7003598 (= e!4209716 e!4209715)))

(declare-fun res!2857228 () Bool)

(assert (=> b!7003598 (=> res!2857228 e!4209715)))

(declare-fun lt!2498342 () (Set Context!12552))

(declare-fun lt!2498364 () (Set Context!12552))

(assert (=> b!7003598 (= res!2857228 (not (= (derivationStepZipper!2760 lt!2498342 (h!73710 s!7408)) lt!2498364)))))

(assert (=> b!7003598 (= lt!2498364 (derivationStepZipperUp!1930 lt!2498391 (h!73710 s!7408)))))

(assert (=> b!7003598 (= (flatMap!2266 lt!2498342 lambda!406125) (derivationStepZipperUp!1930 lt!2498391 (h!73710 s!7408)))))

(declare-fun lt!2498335 () Unit!161220)

(assert (=> b!7003598 (= lt!2498335 (lemmaFlatMapOnSingletonSet!1781 lt!2498342 lt!2498391 lambda!406125))))

(assert (=> b!7003598 (= lt!2498342 (set.insert lt!2498391 (as set.empty (Set Context!12552))))))

(declare-fun b!7003599 () Bool)

(declare-fun tp_is_empty!43785 () Bool)

(declare-fun tp!1931402 () Bool)

(assert (=> b!7003599 (= e!4209720 (and tp_is_empty!43785 tp!1931402))))

(declare-fun b!7003600 () Bool)

(declare-fun e!4209724 () Bool)

(assert (=> b!7003600 (= e!4209724 e!4209731)))

(declare-fun res!2857206 () Bool)

(assert (=> b!7003600 (=> res!2857206 e!4209731)))

(assert (=> b!7003600 (= res!2857206 (not (= lt!2498387 lt!2498368)))))

(assert (=> b!7003600 (= lt!2498368 (set.union lt!2498355 lt!2498341))))

(declare-fun lt!2498353 () Context!12552)

(assert (=> b!7003600 (= lt!2498341 (derivationStepZipperUp!1930 lt!2498353 (h!73710 s!7408)))))

(declare-fun derivationStepZipperDown!1998 (Regex!17280 Context!12552 C!34830) (Set Context!12552))

(assert (=> b!7003600 (= lt!2498355 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498391)) lt!2498353 (h!73710 s!7408)))))

(assert (=> b!7003600 (= lt!2498353 (Context!12553 (++!15261 lt!2498339 (exprs!6776 ct2!306))))))

(declare-fun lt!2498373 () Unit!161220)

(assert (=> b!7003600 (= lt!2498373 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498365 () Unit!161220)

(assert (=> b!7003600 (= lt!2498365 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003601 () Bool)

(declare-fun e!4209735 () Bool)

(assert (=> b!7003601 (= e!4209715 e!4209735)))

(declare-fun res!2857233 () Bool)

(assert (=> b!7003601 (=> res!2857233 e!4209735)))

(declare-fun lt!2498360 () (Set Context!12552))

(assert (=> b!7003601 (= res!2857233 (not (= lt!2498364 lt!2498360)))))

(declare-fun lt!2498379 () (Set Context!12552))

(assert (=> b!7003601 (= lt!2498360 (set.union lt!2498379 lt!2498338))))

(assert (=> b!7003601 (= lt!2498338 (derivationStepZipperUp!1930 lt!2498376 (h!73710 s!7408)))))

(assert (=> b!7003601 (= lt!2498379 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498391)) lt!2498376 (h!73710 s!7408)))))

(declare-fun b!7003602 () Bool)

(declare-fun res!2857205 () Bool)

(assert (=> b!7003602 (=> (not res!2857205) (not e!4209717))))

(assert (=> b!7003602 (= res!2857205 (is-Cons!67262 s!7408))))

(declare-fun b!7003603 () Bool)

(declare-fun e!4209726 () Bool)

(assert (=> b!7003603 (= e!4209726 e!4209718)))

(declare-fun res!2857218 () Bool)

(assert (=> b!7003603 (=> res!2857218 e!4209718)))

(declare-fun lt!2498333 () (Set Context!12552))

(assert (=> b!7003603 (= res!2857218 (not (matchZipper!2820 lt!2498333 s!7408)))))

(declare-fun lt!2498389 () Unit!161220)

(assert (=> b!7003603 (= lt!2498389 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003604 () Bool)

(declare-fun res!2857221 () Bool)

(assert (=> b!7003604 (=> res!2857221 e!4209727)))

(assert (=> b!7003604 (= res!2857221 (not lt!2498392))))

(declare-fun b!7003605 () Bool)

(assert (=> b!7003605 (= e!4209736 e!4209724)))

(declare-fun res!2857232 () Bool)

(assert (=> b!7003605 (=> res!2857232 e!4209724)))

(declare-fun nullable!7040 (Regex!17280) Bool)

(assert (=> b!7003605 (= res!2857232 (not (nullable!7040 (h!73709 (exprs!6776 lt!2498391)))))))

(assert (=> b!7003605 (= lt!2498376 (Context!12553 lt!2498339))))

(declare-fun tail!13328 (List!67385) List!67385)

(assert (=> b!7003605 (= lt!2498339 (tail!13328 (exprs!6776 lt!2498391)))))

(declare-fun setIsEmpty!48162 () Bool)

(assert (=> setIsEmpty!48162 setRes!48162))

(declare-fun b!7003606 () Bool)

(declare-fun res!2857209 () Bool)

(assert (=> b!7003606 (=> res!2857209 e!4209716)))

(declare-fun ++!15262 (List!67386 List!67386) List!67386)

(assert (=> b!7003606 (= res!2857209 (not (= (++!15262 (_1!37256 lt!2498357) (_2!37256 lt!2498357)) s!7408)))))

(declare-fun b!7003607 () Bool)

(assert (=> b!7003607 (= e!4209735 e!4209719)))

(declare-fun res!2857227 () Bool)

(assert (=> b!7003607 (=> res!2857227 e!4209719)))

(assert (=> b!7003607 (= res!2857227 e!4209730)))

(declare-fun res!2857208 () Bool)

(assert (=> b!7003607 (=> (not res!2857208) (not e!4209730))))

(declare-fun lt!2498336 () Bool)

(assert (=> b!7003607 (= res!2857208 (not (= lt!2498380 lt!2498336)))))

(assert (=> b!7003607 (= lt!2498380 (matchZipper!2820 lt!2498342 (_1!37256 lt!2498357)))))

(assert (=> b!7003607 (= (matchZipper!2820 lt!2498360 lt!2498372) e!4209729)))

(declare-fun res!2857229 () Bool)

(assert (=> b!7003607 (=> res!2857229 e!4209729)))

(assert (=> b!7003607 (= res!2857229 lt!2498336)))

(assert (=> b!7003607 (= lt!2498336 (matchZipper!2820 lt!2498379 lt!2498372))))

(declare-fun lt!2498358 () Unit!161220)

(assert (=> b!7003607 (= lt!2498358 (lemmaZipperConcatMatchesSameAsBothZippers!1453 lt!2498379 lt!2498338 lt!2498372))))

(declare-fun tail!13329 (List!67386) List!67386)

(assert (=> b!7003607 (= lt!2498372 (tail!13329 (_1!37256 lt!2498357)))))

(assert (=> b!7003608 (= e!4209717 (not e!4209732))))

(declare-fun res!2857215 () Bool)

(assert (=> b!7003608 (=> res!2857215 e!4209732)))

(assert (=> b!7003608 (= res!2857215 (not (matchZipper!2820 lt!2498340 s!7408)))))

(assert (=> b!7003608 (= lt!2498340 (set.insert lt!2498378 (as set.empty (Set Context!12552))))))

(declare-fun lambda!406122 () Int)

(declare-fun getWitness!1205 ((Set Context!12552) Int) Context!12552)

(assert (=> b!7003608 (= lt!2498378 (getWitness!1205 lt!2498374 lambda!406122))))

(declare-fun lt!2498388 () List!67387)

(declare-fun exists!3101 (List!67387 Int) Bool)

(assert (=> b!7003608 (exists!3101 lt!2498388 lambda!406122)))

(declare-fun lt!2498361 () Unit!161220)

(declare-fun lemmaZipperMatchesExistsMatchingContext!249 (List!67387 List!67386) Unit!161220)

(assert (=> b!7003608 (= lt!2498361 (lemmaZipperMatchesExistsMatchingContext!249 lt!2498388 s!7408))))

(assert (=> b!7003608 (= lt!2498388 (toList!10640 lt!2498374))))

(assert (=> b!7003609 (= e!4209723 e!4209736)))

(declare-fun res!2857231 () Bool)

(assert (=> b!7003609 (=> res!2857231 e!4209736)))

(assert (=> b!7003609 (= res!2857231 (not (= (derivationStepZipper!2760 lt!2498337 (h!73710 s!7408)) lt!2498387)))))

(assert (=> b!7003609 (= (flatMap!2266 lt!2498337 lambda!406125) (derivationStepZipperUp!1930 lt!2498346 (h!73710 s!7408)))))

(declare-fun lt!2498394 () Unit!161220)

(assert (=> b!7003609 (= lt!2498394 (lemmaFlatMapOnSingletonSet!1781 lt!2498337 lt!2498346 lambda!406125))))

(assert (=> b!7003609 (= lt!2498387 (derivationStepZipperUp!1930 lt!2498346 (h!73710 s!7408)))))

(declare-fun lt!2498385 () Unit!161220)

(assert (=> b!7003609 (= lt!2498385 (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498391) (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003610 () Bool)

(assert (=> b!7003610 (= e!4209733 (not (matchZipper!2820 lt!2498341 (t!381139 s!7408))))))

(declare-fun lt!2498377 () Unit!161220)

(assert (=> b!7003610 (= lt!2498377 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003611 () Bool)

(assert (=> b!7003611 (= e!4209725 e!4209716)))

(declare-fun res!2857217 () Bool)

(assert (=> b!7003611 (=> res!2857217 e!4209716)))

(assert (=> b!7003611 (= res!2857217 (not (matchZipper!2820 lt!2498393 (_1!37256 lt!2498357))))))

(declare-datatypes ((Option!16785 0))(
  ( (None!16784) (Some!16784 (v!53062 tuple2!67906)) )
))
(declare-fun lt!2498371 () Option!16785)

(declare-fun get!23590 (Option!16785) tuple2!67906)

(assert (=> b!7003611 (= lt!2498357 (get!23590 lt!2498371))))

(declare-fun isDefined!13486 (Option!16785) Bool)

(assert (=> b!7003611 (isDefined!13486 lt!2498371)))

(declare-fun findConcatSeparationZippers!301 ((Set Context!12552) (Set Context!12552) List!67386 List!67386 List!67386) Option!16785)

(assert (=> b!7003611 (= lt!2498371 (findConcatSeparationZippers!301 lt!2498393 lt!2498332 Nil!67262 s!7408 s!7408))))

(assert (=> b!7003611 (= lt!2498332 (set.insert ct2!306 (as set.empty (Set Context!12552))))))

(declare-fun lt!2498382 () Unit!161220)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!301 ((Set Context!12552) Context!12552 List!67386) Unit!161220)

(assert (=> b!7003611 (= lt!2498382 (lemmaConcatZipperMatchesStringThenFindConcatDefined!301 lt!2498393 ct2!306 s!7408))))

(declare-fun tp!1931401 () Bool)

(declare-fun setElem!48162 () Context!12552)

(declare-fun setNonEmpty!48162 () Bool)

(assert (=> setNonEmpty!48162 (= setRes!48162 (and tp!1931401 (inv!86060 setElem!48162) e!4209714))))

(declare-fun setRest!48162 () (Set Context!12552))

(assert (=> setNonEmpty!48162 (= z1!570 (set.union (set.insert setElem!48162 (as set.empty (Set Context!12552))) setRest!48162))))

(declare-fun b!7003612 () Bool)

(assert (=> b!7003612 (= e!4209721 (= (++!15262 Nil!67262 s!7408) s!7408))))

(assert (=> b!7003612 (isDefined!13486 (findConcatSeparationZippers!301 lt!2498342 lt!2498332 Nil!67262 s!7408 s!7408))))

(declare-fun lt!2498395 () Unit!161220)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!3 ((Set Context!12552) (Set Context!12552) List!67386 List!67386 List!67386 List!67386 List!67386) Unit!161220)

(assert (=> b!7003612 (= lt!2498395 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!3 lt!2498342 lt!2498332 (_1!37256 lt!2498357) (_2!37256 lt!2498357) s!7408 Nil!67262 s!7408))))

(declare-fun b!7003613 () Bool)

(assert (=> b!7003613 (= e!4209734 e!4209726)))

(declare-fun res!2857224 () Bool)

(assert (=> b!7003613 (=> res!2857224 e!4209726)))

(assert (=> b!7003613 (= res!2857224 (not (= (derivationStepZipper!2760 lt!2498333 (h!73710 s!7408)) lt!2498341)))))

(declare-fun lt!2498345 () Unit!161220)

(assert (=> b!7003613 (= lt!2498345 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498359 () Unit!161220)

(assert (=> b!7003613 (= lt!2498359 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(assert (=> b!7003613 (= (flatMap!2266 lt!2498333 lambda!406125) (derivationStepZipperUp!1930 lt!2498353 (h!73710 s!7408)))))

(declare-fun lt!2498366 () Unit!161220)

(assert (=> b!7003613 (= lt!2498366 (lemmaFlatMapOnSingletonSet!1781 lt!2498333 lt!2498353 lambda!406125))))

(assert (=> b!7003613 (= lt!2498333 (set.insert lt!2498353 (as set.empty (Set Context!12552))))))

(declare-fun lt!2498386 () Unit!161220)

(assert (=> b!7003613 (= lt!2498386 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun lt!2498344 () Unit!161220)

(assert (=> b!7003613 (= lt!2498344 (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(declare-fun b!7003614 () Bool)

(declare-fun res!2857213 () Bool)

(assert (=> b!7003614 (=> res!2857213 e!4209716)))

(declare-fun isEmpty!39279 (List!67386) Bool)

(assert (=> b!7003614 (= res!2857213 (isEmpty!39279 (_1!37256 lt!2498357)))))

(assert (= (and start!674018 res!2857214) b!7003602))

(assert (= (and b!7003602 res!2857205) b!7003608))

(assert (= (and b!7003608 (not res!2857215)) b!7003596))

(assert (= (and b!7003596 (not res!2857235)) b!7003595))

(assert (= (and b!7003595 (not res!2857210)) b!7003590))

(assert (= (and b!7003590 (not res!2857207)) b!7003609))

(assert (= (and b!7003609 (not res!2857231)) b!7003591))

(assert (= (and b!7003591 (not res!2857223)) b!7003582))

(assert (= (and b!7003582 (not res!2857212)) b!7003605))

(assert (= (and b!7003605 (not res!2857232)) b!7003600))

(assert (= (and b!7003600 (not res!2857206)) b!7003593))

(assert (= (and b!7003593 (not res!2857226)) b!7003592))

(assert (= (and b!7003593 res!2857204) b!7003610))

(assert (= (and b!7003593 (not res!2857234)) b!7003604))

(assert (= (and b!7003604 (not res!2857221)) b!7003589))

(assert (= (and b!7003589 (not res!2857230)) b!7003613))

(assert (= (and b!7003613 (not res!2857224)) b!7003603))

(assert (= (and b!7003603 (not res!2857218)) b!7003597))

(assert (= (and b!7003597 (not res!2857211)) b!7003581))

(assert (= (and b!7003581 (not res!2857216)) b!7003611))

(assert (= (and b!7003611 (not res!2857217)) b!7003587))

(assert (= (and b!7003587 (not res!2857220)) b!7003606))

(assert (= (and b!7003606 (not res!2857209)) b!7003614))

(assert (= (and b!7003614 (not res!2857213)) b!7003598))

(assert (= (and b!7003598 (not res!2857228)) b!7003601))

(assert (= (and b!7003601 (not res!2857233)) b!7003607))

(assert (= (and b!7003607 (not res!2857229)) b!7003580))

(assert (= (and b!7003607 res!2857208) b!7003584))

(assert (= (and b!7003607 (not res!2857227)) b!7003585))

(assert (= (and b!7003585 (not res!2857219)) b!7003583))

(assert (= (and b!7003583 (not res!2857222)) b!7003586))

(assert (= (and b!7003586 (not res!2857225)) b!7003612))

(assert (= (and start!674018 condSetEmpty!48162) setIsEmpty!48162))

(assert (= (and start!674018 (not condSetEmpty!48162)) setNonEmpty!48162))

(assert (= setNonEmpty!48162 b!7003588))

(assert (= start!674018 b!7003594))

(assert (= (and start!674018 (is-Cons!67262 s!7408)) b!7003599))

(declare-fun m!7699040 () Bool)

(assert (=> b!7003582 m!7699040))

(declare-fun m!7699042 () Bool)

(assert (=> b!7003611 m!7699042))

(declare-fun m!7699044 () Bool)

(assert (=> b!7003611 m!7699044))

(declare-fun m!7699046 () Bool)

(assert (=> b!7003611 m!7699046))

(declare-fun m!7699048 () Bool)

(assert (=> b!7003611 m!7699048))

(declare-fun m!7699050 () Bool)

(assert (=> b!7003611 m!7699050))

(declare-fun m!7699052 () Bool)

(assert (=> b!7003611 m!7699052))

(declare-fun m!7699054 () Bool)

(assert (=> b!7003589 m!7699054))

(declare-fun m!7699056 () Bool)

(assert (=> b!7003589 m!7699056))

(declare-fun m!7699058 () Bool)

(assert (=> b!7003596 m!7699058))

(declare-fun m!7699060 () Bool)

(assert (=> b!7003614 m!7699060))

(declare-fun m!7699062 () Bool)

(assert (=> b!7003598 m!7699062))

(declare-fun m!7699064 () Bool)

(assert (=> b!7003598 m!7699064))

(declare-fun m!7699066 () Bool)

(assert (=> b!7003598 m!7699066))

(declare-fun m!7699068 () Bool)

(assert (=> b!7003598 m!7699068))

(declare-fun m!7699070 () Bool)

(assert (=> b!7003598 m!7699070))

(declare-fun m!7699072 () Bool)

(assert (=> b!7003606 m!7699072))

(declare-fun m!7699074 () Bool)

(assert (=> b!7003607 m!7699074))

(declare-fun m!7699076 () Bool)

(assert (=> b!7003607 m!7699076))

(declare-fun m!7699078 () Bool)

(assert (=> b!7003607 m!7699078))

(declare-fun m!7699080 () Bool)

(assert (=> b!7003607 m!7699080))

(declare-fun m!7699082 () Bool)

(assert (=> b!7003607 m!7699082))

(declare-fun m!7699084 () Bool)

(assert (=> b!7003612 m!7699084))

(declare-fun m!7699086 () Bool)

(assert (=> b!7003612 m!7699086))

(assert (=> b!7003612 m!7699086))

(declare-fun m!7699088 () Bool)

(assert (=> b!7003612 m!7699088))

(declare-fun m!7699090 () Bool)

(assert (=> b!7003612 m!7699090))

(declare-fun m!7699092 () Bool)

(assert (=> b!7003608 m!7699092))

(declare-fun m!7699094 () Bool)

(assert (=> b!7003608 m!7699094))

(declare-fun m!7699096 () Bool)

(assert (=> b!7003608 m!7699096))

(declare-fun m!7699098 () Bool)

(assert (=> b!7003608 m!7699098))

(declare-fun m!7699100 () Bool)

(assert (=> b!7003608 m!7699100))

(declare-fun m!7699102 () Bool)

(assert (=> b!7003608 m!7699102))

(declare-fun m!7699104 () Bool)

(assert (=> b!7003597 m!7699104))

(declare-fun m!7699106 () Bool)

(assert (=> b!7003597 m!7699106))

(declare-fun m!7699108 () Bool)

(assert (=> b!7003597 m!7699108))

(declare-fun m!7699110 () Bool)

(assert (=> b!7003597 m!7699110))

(declare-fun m!7699112 () Bool)

(assert (=> b!7003597 m!7699112))

(assert (=> b!7003597 m!7699056))

(assert (=> b!7003597 m!7699056))

(declare-fun m!7699114 () Bool)

(assert (=> b!7003597 m!7699114))

(assert (=> b!7003597 m!7699056))

(declare-fun m!7699116 () Bool)

(assert (=> b!7003597 m!7699116))

(assert (=> b!7003597 m!7699056))

(declare-fun m!7699118 () Bool)

(assert (=> b!7003597 m!7699118))

(declare-fun m!7699120 () Bool)

(assert (=> b!7003597 m!7699120))

(declare-fun m!7699122 () Bool)

(assert (=> b!7003597 m!7699122))

(declare-fun m!7699124 () Bool)

(assert (=> b!7003597 m!7699124))

(declare-fun m!7699126 () Bool)

(assert (=> b!7003597 m!7699126))

(declare-fun m!7699128 () Bool)

(assert (=> b!7003597 m!7699128))

(declare-fun m!7699130 () Bool)

(assert (=> b!7003587 m!7699130))

(declare-fun m!7699132 () Bool)

(assert (=> b!7003590 m!7699132))

(declare-fun m!7699134 () Bool)

(assert (=> b!7003590 m!7699134))

(declare-fun m!7699136 () Bool)

(assert (=> setNonEmpty!48162 m!7699136))

(assert (=> b!7003600 m!7699056))

(declare-fun m!7699138 () Bool)

(assert (=> b!7003600 m!7699138))

(assert (=> b!7003600 m!7699056))

(declare-fun m!7699140 () Bool)

(assert (=> b!7003600 m!7699140))

(assert (=> b!7003600 m!7699110))

(declare-fun m!7699142 () Bool)

(assert (=> b!7003583 m!7699142))

(declare-fun m!7699144 () Bool)

(assert (=> b!7003613 m!7699144))

(assert (=> b!7003613 m!7699056))

(assert (=> b!7003613 m!7699138))

(declare-fun m!7699146 () Bool)

(assert (=> b!7003613 m!7699146))

(declare-fun m!7699148 () Bool)

(assert (=> b!7003613 m!7699148))

(assert (=> b!7003613 m!7699056))

(declare-fun m!7699150 () Bool)

(assert (=> b!7003613 m!7699150))

(assert (=> b!7003613 m!7699056))

(assert (=> b!7003613 m!7699056))

(declare-fun m!7699152 () Bool)

(assert (=> b!7003605 m!7699152))

(declare-fun m!7699154 () Bool)

(assert (=> b!7003605 m!7699154))

(declare-fun m!7699156 () Bool)

(assert (=> b!7003609 m!7699156))

(assert (=> b!7003609 m!7699134))

(declare-fun m!7699158 () Bool)

(assert (=> b!7003609 m!7699158))

(declare-fun m!7699160 () Bool)

(assert (=> b!7003609 m!7699160))

(declare-fun m!7699162 () Bool)

(assert (=> b!7003609 m!7699162))

(declare-fun m!7699164 () Bool)

(assert (=> b!7003580 m!7699164))

(assert (=> b!7003584 m!7699164))

(assert (=> b!7003593 m!7699056))

(assert (=> b!7003593 m!7699056))

(declare-fun m!7699166 () Bool)

(assert (=> b!7003593 m!7699166))

(assert (=> b!7003593 m!7699056))

(declare-fun m!7699168 () Bool)

(assert (=> b!7003593 m!7699168))

(declare-fun m!7699170 () Bool)

(assert (=> b!7003593 m!7699170))

(declare-fun m!7699172 () Bool)

(assert (=> b!7003593 m!7699172))

(declare-fun m!7699174 () Bool)

(assert (=> b!7003581 m!7699174))

(assert (=> b!7003585 m!7699112))

(assert (=> b!7003585 m!7699120))

(declare-fun m!7699176 () Bool)

(assert (=> b!7003585 m!7699176))

(declare-fun m!7699178 () Bool)

(assert (=> b!7003585 m!7699178))

(assert (=> b!7003585 m!7699116))

(declare-fun m!7699180 () Bool)

(assert (=> b!7003585 m!7699180))

(declare-fun m!7699182 () Bool)

(assert (=> b!7003595 m!7699182))

(declare-fun m!7699184 () Bool)

(assert (=> b!7003595 m!7699184))

(assert (=> b!7003595 m!7699134))

(declare-fun m!7699186 () Bool)

(assert (=> b!7003595 m!7699186))

(declare-fun m!7699188 () Bool)

(assert (=> start!674018 m!7699188))

(declare-fun m!7699190 () Bool)

(assert (=> start!674018 m!7699190))

(declare-fun m!7699192 () Bool)

(assert (=> start!674018 m!7699192))

(assert (=> b!7003610 m!7699054))

(assert (=> b!7003610 m!7699056))

(assert (=> b!7003601 m!7699120))

(declare-fun m!7699194 () Bool)

(assert (=> b!7003601 m!7699194))

(assert (=> b!7003592 m!7699054))

(declare-fun m!7699196 () Bool)

(assert (=> b!7003603 m!7699196))

(assert (=> b!7003603 m!7699056))

(push 1)

(assert (not b!7003612))

(assert (not b!7003590))

(assert (not b!7003594))

(assert (not b!7003585))

(assert (not start!674018))

(assert (not b!7003597))

(assert (not b!7003598))

(assert (not b!7003613))

(assert (not b!7003599))

(assert (not b!7003614))

(assert (not b!7003583))

(assert (not b!7003600))

(assert (not b!7003587))

(assert (not b!7003603))

(assert (not b!7003589))

(assert (not b!7003610))

(assert (not b!7003609))

(assert (not b!7003611))

(assert (not b!7003595))

(assert (not b!7003582))

(assert (not setNonEmpty!48162))

(assert (not b!7003601))

(assert (not b!7003608))

(assert (not b!7003593))

(assert (not b!7003592))

(assert (not b!7003588))

(assert (not b!7003581))

(assert tp_is_empty!43785)

(assert (not b!7003606))

(assert (not b!7003605))

(assert (not b!7003607))

(assert (not b!7003584))

(assert (not b!7003580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1865135 () Bool)

(declare-fun d!2183122 () Bool)

(assert (= bs!1865135 (and d!2183122 b!7003595)))

(declare-fun lambda!406192 () Int)

(assert (=> bs!1865135 (= lambda!406192 lambda!406124)))

(declare-fun forall!16195 (List!67385 Int) Bool)

(assert (=> d!2183122 (= (inv!86060 setElem!48162) (forall!16195 (exprs!6776 setElem!48162) lambda!406192))))

(declare-fun bs!1865136 () Bool)

(assert (= bs!1865136 d!2183122))

(declare-fun m!7699356 () Bool)

(assert (=> bs!1865136 m!7699356))

(assert (=> setNonEmpty!48162 d!2183122))

(declare-fun d!2183124 () Bool)

(declare-fun c!1300362 () Bool)

(assert (=> d!2183124 (= c!1300362 (isEmpty!39279 (t!381139 s!7408)))))

(declare-fun e!4209811 () Bool)

(assert (=> d!2183124 (= (matchZipper!2820 lt!2498341 (t!381139 s!7408)) e!4209811)))

(declare-fun b!7003736 () Bool)

(declare-fun nullableZipper!2468 ((Set Context!12552)) Bool)

(assert (=> b!7003736 (= e!4209811 (nullableZipper!2468 lt!2498341))))

(declare-fun b!7003737 () Bool)

(assert (=> b!7003737 (= e!4209811 (matchZipper!2820 (derivationStepZipper!2760 lt!2498341 (head!14151 (t!381139 s!7408))) (tail!13329 (t!381139 s!7408))))))

(assert (= (and d!2183124 c!1300362) b!7003736))

(assert (= (and d!2183124 (not c!1300362)) b!7003737))

(declare-fun m!7699358 () Bool)

(assert (=> d!2183124 m!7699358))

(declare-fun m!7699360 () Bool)

(assert (=> b!7003736 m!7699360))

(declare-fun m!7699362 () Bool)

(assert (=> b!7003737 m!7699362))

(assert (=> b!7003737 m!7699362))

(declare-fun m!7699364 () Bool)

(assert (=> b!7003737 m!7699364))

(declare-fun m!7699366 () Bool)

(assert (=> b!7003737 m!7699366))

(assert (=> b!7003737 m!7699364))

(assert (=> b!7003737 m!7699366))

(declare-fun m!7699368 () Bool)

(assert (=> b!7003737 m!7699368))

(assert (=> b!7003592 d!2183124))

(declare-fun b!7003756 () Bool)

(declare-fun res!2857344 () Bool)

(declare-fun e!4209824 () Bool)

(assert (=> b!7003756 (=> (not res!2857344) (not e!4209824))))

(declare-fun lt!2498602 () Option!16785)

(assert (=> b!7003756 (= res!2857344 (matchZipper!2820 lt!2498393 (_1!37256 (get!23590 lt!2498602))))))

(declare-fun b!7003757 () Bool)

(assert (=> b!7003757 (= e!4209824 (= (++!15262 (_1!37256 (get!23590 lt!2498602)) (_2!37256 (get!23590 lt!2498602))) s!7408))))

(declare-fun b!7003758 () Bool)

(declare-fun e!4209825 () Option!16785)

(assert (=> b!7003758 (= e!4209825 (Some!16784 (tuple2!67907 Nil!67262 s!7408)))))

(declare-fun b!7003759 () Bool)

(declare-fun res!2857346 () Bool)

(assert (=> b!7003759 (=> (not res!2857346) (not e!4209824))))

(assert (=> b!7003759 (= res!2857346 (matchZipper!2820 lt!2498332 (_2!37256 (get!23590 lt!2498602))))))

(declare-fun b!7003760 () Bool)

(declare-fun e!4209826 () Bool)

(assert (=> b!7003760 (= e!4209826 (matchZipper!2820 lt!2498332 s!7408))))

(declare-fun b!7003761 () Bool)

(declare-fun e!4209823 () Option!16785)

(assert (=> b!7003761 (= e!4209823 None!16784)))

(declare-fun b!7003763 () Bool)

(declare-fun lt!2498604 () Unit!161220)

(declare-fun lt!2498603 () Unit!161220)

(assert (=> b!7003763 (= lt!2498604 lt!2498603)))

(assert (=> b!7003763 (= (++!15262 (++!15262 Nil!67262 (Cons!67262 (h!73710 s!7408) Nil!67262)) (t!381139 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2888 (List!67386 C!34830 List!67386 List!67386) Unit!161220)

(assert (=> b!7003763 (= lt!2498603 (lemmaMoveElementToOtherListKeepsConcatEq!2888 Nil!67262 (h!73710 s!7408) (t!381139 s!7408) s!7408))))

(assert (=> b!7003763 (= e!4209823 (findConcatSeparationZippers!301 lt!2498393 lt!2498332 (++!15262 Nil!67262 (Cons!67262 (h!73710 s!7408) Nil!67262)) (t!381139 s!7408) s!7408))))

(declare-fun b!7003764 () Bool)

(declare-fun e!4209822 () Bool)

(assert (=> b!7003764 (= e!4209822 (not (isDefined!13486 lt!2498602)))))

(declare-fun d!2183126 () Bool)

(assert (=> d!2183126 e!4209822))

(declare-fun res!2857347 () Bool)

(assert (=> d!2183126 (=> res!2857347 e!4209822)))

(assert (=> d!2183126 (= res!2857347 e!4209824)))

(declare-fun res!2857345 () Bool)

(assert (=> d!2183126 (=> (not res!2857345) (not e!4209824))))

(assert (=> d!2183126 (= res!2857345 (isDefined!13486 lt!2498602))))

(assert (=> d!2183126 (= lt!2498602 e!4209825)))

(declare-fun c!1300367 () Bool)

(assert (=> d!2183126 (= c!1300367 e!4209826)))

(declare-fun res!2857343 () Bool)

(assert (=> d!2183126 (=> (not res!2857343) (not e!4209826))))

(assert (=> d!2183126 (= res!2857343 (matchZipper!2820 lt!2498393 Nil!67262))))

(assert (=> d!2183126 (= (++!15262 Nil!67262 s!7408) s!7408)))

(assert (=> d!2183126 (= (findConcatSeparationZippers!301 lt!2498393 lt!2498332 Nil!67262 s!7408 s!7408) lt!2498602)))

(declare-fun b!7003762 () Bool)

(assert (=> b!7003762 (= e!4209825 e!4209823)))

(declare-fun c!1300368 () Bool)

(assert (=> b!7003762 (= c!1300368 (is-Nil!67262 s!7408))))

(assert (= (and d!2183126 res!2857343) b!7003760))

(assert (= (and d!2183126 c!1300367) b!7003758))

(assert (= (and d!2183126 (not c!1300367)) b!7003762))

(assert (= (and b!7003762 c!1300368) b!7003761))

(assert (= (and b!7003762 (not c!1300368)) b!7003763))

(assert (= (and d!2183126 res!2857345) b!7003756))

(assert (= (and b!7003756 res!2857344) b!7003759))

(assert (= (and b!7003759 res!2857346) b!7003757))

(assert (= (and d!2183126 (not res!2857347)) b!7003764))

(declare-fun m!7699370 () Bool)

(assert (=> b!7003760 m!7699370))

(declare-fun m!7699372 () Bool)

(assert (=> d!2183126 m!7699372))

(declare-fun m!7699374 () Bool)

(assert (=> d!2183126 m!7699374))

(assert (=> d!2183126 m!7699084))

(declare-fun m!7699376 () Bool)

(assert (=> b!7003763 m!7699376))

(assert (=> b!7003763 m!7699376))

(declare-fun m!7699378 () Bool)

(assert (=> b!7003763 m!7699378))

(declare-fun m!7699380 () Bool)

(assert (=> b!7003763 m!7699380))

(assert (=> b!7003763 m!7699376))

(declare-fun m!7699382 () Bool)

(assert (=> b!7003763 m!7699382))

(assert (=> b!7003764 m!7699372))

(declare-fun m!7699384 () Bool)

(assert (=> b!7003757 m!7699384))

(declare-fun m!7699386 () Bool)

(assert (=> b!7003757 m!7699386))

(assert (=> b!7003759 m!7699384))

(declare-fun m!7699388 () Bool)

(assert (=> b!7003759 m!7699388))

(assert (=> b!7003756 m!7699384))

(declare-fun m!7699390 () Bool)

(assert (=> b!7003756 m!7699390))

(assert (=> b!7003611 d!2183126))

(declare-fun d!2183128 () Bool)

(assert (=> d!2183128 (isDefined!13486 (findConcatSeparationZippers!301 lt!2498393 (set.insert ct2!306 (as set.empty (Set Context!12552))) Nil!67262 s!7408 s!7408))))

(declare-fun lt!2498607 () Unit!161220)

(declare-fun choose!52541 ((Set Context!12552) Context!12552 List!67386) Unit!161220)

(assert (=> d!2183128 (= lt!2498607 (choose!52541 lt!2498393 ct2!306 s!7408))))

(assert (=> d!2183128 (matchZipper!2820 (appendTo!401 lt!2498393 ct2!306) s!7408)))

(assert (=> d!2183128 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!301 lt!2498393 ct2!306 s!7408) lt!2498607)))

(declare-fun bs!1865137 () Bool)

(assert (= bs!1865137 d!2183128))

(declare-fun m!7699392 () Bool)

(assert (=> bs!1865137 m!7699392))

(declare-fun m!7699394 () Bool)

(assert (=> bs!1865137 m!7699394))

(assert (=> bs!1865137 m!7699394))

(declare-fun m!7699396 () Bool)

(assert (=> bs!1865137 m!7699396))

(declare-fun m!7699398 () Bool)

(assert (=> bs!1865137 m!7699398))

(declare-fun m!7699400 () Bool)

(assert (=> bs!1865137 m!7699400))

(assert (=> bs!1865137 m!7699042))

(assert (=> bs!1865137 m!7699042))

(assert (=> bs!1865137 m!7699398))

(assert (=> b!7003611 d!2183128))

(declare-fun d!2183130 () Bool)

(declare-fun isEmpty!39282 (Option!16785) Bool)

(assert (=> d!2183130 (= (isDefined!13486 lt!2498371) (not (isEmpty!39282 lt!2498371)))))

(declare-fun bs!1865138 () Bool)

(assert (= bs!1865138 d!2183130))

(declare-fun m!7699402 () Bool)

(assert (=> bs!1865138 m!7699402))

(assert (=> b!7003611 d!2183130))

(declare-fun d!2183132 () Bool)

(declare-fun c!1300369 () Bool)

(assert (=> d!2183132 (= c!1300369 (isEmpty!39279 (_1!37256 lt!2498357)))))

(declare-fun e!4209827 () Bool)

(assert (=> d!2183132 (= (matchZipper!2820 lt!2498393 (_1!37256 lt!2498357)) e!4209827)))

(declare-fun b!7003765 () Bool)

(assert (=> b!7003765 (= e!4209827 (nullableZipper!2468 lt!2498393))))

(declare-fun b!7003766 () Bool)

(assert (=> b!7003766 (= e!4209827 (matchZipper!2820 (derivationStepZipper!2760 lt!2498393 (head!14151 (_1!37256 lt!2498357))) (tail!13329 (_1!37256 lt!2498357))))))

(assert (= (and d!2183132 c!1300369) b!7003765))

(assert (= (and d!2183132 (not c!1300369)) b!7003766))

(assert (=> d!2183132 m!7699060))

(declare-fun m!7699404 () Bool)

(assert (=> b!7003765 m!7699404))

(assert (=> b!7003766 m!7699178))

(assert (=> b!7003766 m!7699178))

(declare-fun m!7699406 () Bool)

(assert (=> b!7003766 m!7699406))

(assert (=> b!7003766 m!7699082))

(assert (=> b!7003766 m!7699406))

(assert (=> b!7003766 m!7699082))

(declare-fun m!7699408 () Bool)

(assert (=> b!7003766 m!7699408))

(assert (=> b!7003611 d!2183132))

(declare-fun d!2183134 () Bool)

(assert (=> d!2183134 (= (get!23590 lt!2498371) (v!53062 lt!2498371))))

(assert (=> b!7003611 d!2183134))

(assert (=> b!7003610 d!2183124))

(declare-fun d!2183136 () Bool)

(assert (=> d!2183136 (forall!16195 (++!15261 lt!2498339 (exprs!6776 ct2!306)) lambda!406124)))

(declare-fun lt!2498610 () Unit!161220)

(declare-fun choose!52542 (List!67385 List!67385 Int) Unit!161220)

(assert (=> d!2183136 (= lt!2498610 (choose!52542 lt!2498339 (exprs!6776 ct2!306) lambda!406124))))

(assert (=> d!2183136 (forall!16195 lt!2498339 lambda!406124)))

(assert (=> d!2183136 (= (lemmaConcatPreservesForall!616 lt!2498339 (exprs!6776 ct2!306) lambda!406124) lt!2498610)))

(declare-fun bs!1865139 () Bool)

(assert (= bs!1865139 d!2183136))

(assert (=> bs!1865139 m!7699110))

(assert (=> bs!1865139 m!7699110))

(declare-fun m!7699410 () Bool)

(assert (=> bs!1865139 m!7699410))

(declare-fun m!7699412 () Bool)

(assert (=> bs!1865139 m!7699412))

(declare-fun m!7699414 () Bool)

(assert (=> bs!1865139 m!7699414))

(assert (=> b!7003610 d!2183136))

(declare-fun d!2183138 () Bool)

(assert (=> d!2183138 (forall!16195 (++!15261 (exprs!6776 lt!2498391) (exprs!6776 ct2!306)) lambda!406124)))

(declare-fun lt!2498611 () Unit!161220)

(assert (=> d!2183138 (= lt!2498611 (choose!52542 (exprs!6776 lt!2498391) (exprs!6776 ct2!306) lambda!406124))))

(assert (=> d!2183138 (forall!16195 (exprs!6776 lt!2498391) lambda!406124)))

(assert (=> d!2183138 (= (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498391) (exprs!6776 ct2!306) lambda!406124) lt!2498611)))

(declare-fun bs!1865140 () Bool)

(assert (= bs!1865140 d!2183138))

(assert (=> bs!1865140 m!7699184))

(assert (=> bs!1865140 m!7699184))

(declare-fun m!7699416 () Bool)

(assert (=> bs!1865140 m!7699416))

(declare-fun m!7699418 () Bool)

(assert (=> bs!1865140 m!7699418))

(declare-fun m!7699420 () Bool)

(assert (=> bs!1865140 m!7699420))

(assert (=> b!7003590 d!2183138))

(assert (=> b!7003589 d!2183124))

(assert (=> b!7003589 d!2183136))

(assert (=> b!7003609 d!2183138))

(declare-fun d!2183140 () Bool)

(declare-fun choose!52543 ((Set Context!12552) Int) (Set Context!12552))

(assert (=> d!2183140 (= (flatMap!2266 lt!2498337 lambda!406125) (choose!52543 lt!2498337 lambda!406125))))

(declare-fun bs!1865141 () Bool)

(assert (= bs!1865141 d!2183140))

(declare-fun m!7699422 () Bool)

(assert (=> bs!1865141 m!7699422))

(assert (=> b!7003609 d!2183140))

(declare-fun bs!1865142 () Bool)

(declare-fun d!2183142 () Bool)

(assert (= bs!1865142 (and d!2183142 b!7003609)))

(declare-fun lambda!406195 () Int)

(assert (=> bs!1865142 (= lambda!406195 lambda!406125)))

(assert (=> d!2183142 true))

(assert (=> d!2183142 (= (derivationStepZipper!2760 lt!2498337 (h!73710 s!7408)) (flatMap!2266 lt!2498337 lambda!406195))))

(declare-fun bs!1865143 () Bool)

(assert (= bs!1865143 d!2183142))

(declare-fun m!7699424 () Bool)

(assert (=> bs!1865143 m!7699424))

(assert (=> b!7003609 d!2183142))

(declare-fun b!7003779 () Bool)

(declare-fun e!4209835 () Bool)

(assert (=> b!7003779 (= e!4209835 (nullable!7040 (h!73709 (exprs!6776 lt!2498346))))))

(declare-fun b!7003780 () Bool)

(declare-fun e!4209834 () (Set Context!12552))

(declare-fun e!4209836 () (Set Context!12552))

(assert (=> b!7003780 (= e!4209834 e!4209836)))

(declare-fun c!1300377 () Bool)

(assert (=> b!7003780 (= c!1300377 (is-Cons!67261 (exprs!6776 lt!2498346)))))

(declare-fun call!635919 () (Set Context!12552))

(declare-fun b!7003781 () Bool)

(assert (=> b!7003781 (= e!4209834 (set.union call!635919 (derivationStepZipperUp!1930 (Context!12553 (t!381138 (exprs!6776 lt!2498346))) (h!73710 s!7408))))))

(declare-fun bm!635914 () Bool)

(assert (=> bm!635914 (= call!635919 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498346)) (Context!12553 (t!381138 (exprs!6776 lt!2498346))) (h!73710 s!7408)))))

(declare-fun b!7003782 () Bool)

(assert (=> b!7003782 (= e!4209836 call!635919)))

(declare-fun b!7003783 () Bool)

(assert (=> b!7003783 (= e!4209836 (as set.empty (Set Context!12552)))))

(declare-fun d!2183144 () Bool)

(declare-fun c!1300376 () Bool)

(assert (=> d!2183144 (= c!1300376 e!4209835)))

(declare-fun res!2857350 () Bool)

(assert (=> d!2183144 (=> (not res!2857350) (not e!4209835))))

(assert (=> d!2183144 (= res!2857350 (is-Cons!67261 (exprs!6776 lt!2498346)))))

(assert (=> d!2183144 (= (derivationStepZipperUp!1930 lt!2498346 (h!73710 s!7408)) e!4209834)))

(assert (= (and d!2183144 res!2857350) b!7003779))

(assert (= (and d!2183144 c!1300376) b!7003781))

(assert (= (and d!2183144 (not c!1300376)) b!7003780))

(assert (= (and b!7003780 c!1300377) b!7003782))

(assert (= (and b!7003780 (not c!1300377)) b!7003783))

(assert (= (or b!7003781 b!7003782) bm!635914))

(declare-fun m!7699426 () Bool)

(assert (=> b!7003779 m!7699426))

(declare-fun m!7699428 () Bool)

(assert (=> b!7003781 m!7699428))

(declare-fun m!7699430 () Bool)

(assert (=> bm!635914 m!7699430))

(assert (=> b!7003609 d!2183144))

(declare-fun d!2183146 () Bool)

(declare-fun dynLambda!27022 (Int Context!12552) (Set Context!12552))

(assert (=> d!2183146 (= (flatMap!2266 lt!2498337 lambda!406125) (dynLambda!27022 lambda!406125 lt!2498346))))

(declare-fun lt!2498614 () Unit!161220)

(declare-fun choose!52544 ((Set Context!12552) Context!12552 Int) Unit!161220)

(assert (=> d!2183146 (= lt!2498614 (choose!52544 lt!2498337 lt!2498346 lambda!406125))))

(assert (=> d!2183146 (= lt!2498337 (set.insert lt!2498346 (as set.empty (Set Context!12552))))))

(assert (=> d!2183146 (= (lemmaFlatMapOnSingletonSet!1781 lt!2498337 lt!2498346 lambda!406125) lt!2498614)))

(declare-fun b_lambda!263883 () Bool)

(assert (=> (not b_lambda!263883) (not d!2183146)))

(declare-fun bs!1865144 () Bool)

(assert (= bs!1865144 d!2183146))

(assert (=> bs!1865144 m!7699160))

(declare-fun m!7699432 () Bool)

(assert (=> bs!1865144 m!7699432))

(declare-fun m!7699434 () Bool)

(assert (=> bs!1865144 m!7699434))

(assert (=> bs!1865144 m!7699132))

(assert (=> b!7003609 d!2183146))

(declare-fun d!2183148 () Bool)

(declare-fun c!1300378 () Bool)

(assert (=> d!2183148 (= c!1300378 (isEmpty!39279 s!7408))))

(declare-fun e!4209837 () Bool)

(assert (=> d!2183148 (= (matchZipper!2820 lt!2498340 s!7408) e!4209837)))

(declare-fun b!7003784 () Bool)

(assert (=> b!7003784 (= e!4209837 (nullableZipper!2468 lt!2498340))))

(declare-fun b!7003785 () Bool)

(assert (=> b!7003785 (= e!4209837 (matchZipper!2820 (derivationStepZipper!2760 lt!2498340 (head!14151 s!7408)) (tail!13329 s!7408)))))

(assert (= (and d!2183148 c!1300378) b!7003784))

(assert (= (and d!2183148 (not c!1300378)) b!7003785))

(declare-fun m!7699436 () Bool)

(assert (=> d!2183148 m!7699436))

(declare-fun m!7699438 () Bool)

(assert (=> b!7003784 m!7699438))

(declare-fun m!7699440 () Bool)

(assert (=> b!7003785 m!7699440))

(assert (=> b!7003785 m!7699440))

(declare-fun m!7699442 () Bool)

(assert (=> b!7003785 m!7699442))

(declare-fun m!7699444 () Bool)

(assert (=> b!7003785 m!7699444))

(assert (=> b!7003785 m!7699442))

(assert (=> b!7003785 m!7699444))

(declare-fun m!7699446 () Bool)

(assert (=> b!7003785 m!7699446))

(assert (=> b!7003608 d!2183148))

(declare-fun d!2183150 () Bool)

(declare-fun e!4209840 () Bool)

(assert (=> d!2183150 e!4209840))

(declare-fun res!2857353 () Bool)

(assert (=> d!2183150 (=> (not res!2857353) (not e!4209840))))

(declare-fun lt!2498617 () List!67387)

(declare-fun noDuplicate!2549 (List!67387) Bool)

(assert (=> d!2183150 (= res!2857353 (noDuplicate!2549 lt!2498617))))

(declare-fun choose!52545 ((Set Context!12552)) List!67387)

(assert (=> d!2183150 (= lt!2498617 (choose!52545 lt!2498374))))

(assert (=> d!2183150 (= (toList!10640 lt!2498374) lt!2498617)))

(declare-fun b!7003788 () Bool)

(declare-fun content!13330 (List!67387) (Set Context!12552))

(assert (=> b!7003788 (= e!4209840 (= (content!13330 lt!2498617) lt!2498374))))

(assert (= (and d!2183150 res!2857353) b!7003788))

(declare-fun m!7699448 () Bool)

(assert (=> d!2183150 m!7699448))

(declare-fun m!7699450 () Bool)

(assert (=> d!2183150 m!7699450))

(declare-fun m!7699452 () Bool)

(assert (=> b!7003788 m!7699452))

(assert (=> b!7003608 d!2183150))

(declare-fun bs!1865145 () Bool)

(declare-fun d!2183152 () Bool)

(assert (= bs!1865145 (and d!2183152 b!7003608)))

(declare-fun lambda!406198 () Int)

(assert (=> bs!1865145 (not (= lambda!406198 lambda!406122))))

(assert (=> d!2183152 true))

(declare-fun order!27989 () Int)

(declare-fun dynLambda!27023 (Int Int) Int)

(assert (=> d!2183152 (< (dynLambda!27023 order!27989 lambda!406122) (dynLambda!27023 order!27989 lambda!406198))))

(declare-fun forall!16196 (List!67387 Int) Bool)

(assert (=> d!2183152 (= (exists!3101 lt!2498388 lambda!406122) (not (forall!16196 lt!2498388 lambda!406198)))))

(declare-fun bs!1865146 () Bool)

(assert (= bs!1865146 d!2183152))

(declare-fun m!7699454 () Bool)

(assert (=> bs!1865146 m!7699454))

(assert (=> b!7003608 d!2183152))

(declare-fun d!2183154 () Bool)

(declare-fun e!4209843 () Bool)

(assert (=> d!2183154 e!4209843))

(declare-fun res!2857356 () Bool)

(assert (=> d!2183154 (=> (not res!2857356) (not e!4209843))))

(declare-fun lt!2498620 () Context!12552)

(declare-fun dynLambda!27024 (Int Context!12552) Bool)

(assert (=> d!2183154 (= res!2857356 (dynLambda!27024 lambda!406122 lt!2498620))))

(declare-fun getWitness!1207 (List!67387 Int) Context!12552)

(assert (=> d!2183154 (= lt!2498620 (getWitness!1207 (toList!10640 lt!2498374) lambda!406122))))

(declare-fun exists!3103 ((Set Context!12552) Int) Bool)

(assert (=> d!2183154 (exists!3103 lt!2498374 lambda!406122)))

(assert (=> d!2183154 (= (getWitness!1205 lt!2498374 lambda!406122) lt!2498620)))

(declare-fun b!7003793 () Bool)

(assert (=> b!7003793 (= e!4209843 (set.member lt!2498620 lt!2498374))))

(assert (= (and d!2183154 res!2857356) b!7003793))

(declare-fun b_lambda!263885 () Bool)

(assert (=> (not b_lambda!263885) (not d!2183154)))

(declare-fun m!7699456 () Bool)

(assert (=> d!2183154 m!7699456))

(assert (=> d!2183154 m!7699102))

(assert (=> d!2183154 m!7699102))

(declare-fun m!7699458 () Bool)

(assert (=> d!2183154 m!7699458))

(declare-fun m!7699460 () Bool)

(assert (=> d!2183154 m!7699460))

(declare-fun m!7699462 () Bool)

(assert (=> b!7003793 m!7699462))

(assert (=> b!7003608 d!2183154))

(declare-fun bs!1865147 () Bool)

(declare-fun d!2183156 () Bool)

(assert (= bs!1865147 (and d!2183156 b!7003608)))

(declare-fun lambda!406201 () Int)

(assert (=> bs!1865147 (= lambda!406201 lambda!406122)))

(declare-fun bs!1865148 () Bool)

(assert (= bs!1865148 (and d!2183156 d!2183152)))

(assert (=> bs!1865148 (not (= lambda!406201 lambda!406198))))

(assert (=> d!2183156 true))

(assert (=> d!2183156 (exists!3101 lt!2498388 lambda!406201)))

(declare-fun lt!2498623 () Unit!161220)

(declare-fun choose!52546 (List!67387 List!67386) Unit!161220)

(assert (=> d!2183156 (= lt!2498623 (choose!52546 lt!2498388 s!7408))))

(assert (=> d!2183156 (matchZipper!2820 (content!13330 lt!2498388) s!7408)))

(assert (=> d!2183156 (= (lemmaZipperMatchesExistsMatchingContext!249 lt!2498388 s!7408) lt!2498623)))

(declare-fun bs!1865149 () Bool)

(assert (= bs!1865149 d!2183156))

(declare-fun m!7699464 () Bool)

(assert (=> bs!1865149 m!7699464))

(declare-fun m!7699466 () Bool)

(assert (=> bs!1865149 m!7699466))

(declare-fun m!7699468 () Bool)

(assert (=> bs!1865149 m!7699468))

(assert (=> bs!1865149 m!7699468))

(declare-fun m!7699470 () Bool)

(assert (=> bs!1865149 m!7699470))

(assert (=> b!7003608 d!2183156))

(declare-fun d!2183158 () Bool)

(declare-fun c!1300381 () Bool)

(assert (=> d!2183158 (= c!1300381 (isEmpty!39279 (_2!37256 lt!2498357)))))

(declare-fun e!4209844 () Bool)

(assert (=> d!2183158 (= (matchZipper!2820 lt!2498332 (_2!37256 lt!2498357)) e!4209844)))

(declare-fun b!7003794 () Bool)

(assert (=> b!7003794 (= e!4209844 (nullableZipper!2468 lt!2498332))))

(declare-fun b!7003795 () Bool)

(assert (=> b!7003795 (= e!4209844 (matchZipper!2820 (derivationStepZipper!2760 lt!2498332 (head!14151 (_2!37256 lt!2498357))) (tail!13329 (_2!37256 lt!2498357))))))

(assert (= (and d!2183158 c!1300381) b!7003794))

(assert (= (and d!2183158 (not c!1300381)) b!7003795))

(declare-fun m!7699472 () Bool)

(assert (=> d!2183158 m!7699472))

(declare-fun m!7699474 () Bool)

(assert (=> b!7003794 m!7699474))

(declare-fun m!7699476 () Bool)

(assert (=> b!7003795 m!7699476))

(assert (=> b!7003795 m!7699476))

(declare-fun m!7699478 () Bool)

(assert (=> b!7003795 m!7699478))

(declare-fun m!7699480 () Bool)

(assert (=> b!7003795 m!7699480))

(assert (=> b!7003795 m!7699478))

(assert (=> b!7003795 m!7699480))

(declare-fun m!7699482 () Bool)

(assert (=> b!7003795 m!7699482))

(assert (=> b!7003587 d!2183158))

(declare-fun e!4209847 () Bool)

(declare-fun d!2183160 () Bool)

(assert (=> d!2183160 (= (matchZipper!2820 (set.union lt!2498379 lt!2498338) lt!2498372) e!4209847)))

(declare-fun res!2857359 () Bool)

(assert (=> d!2183160 (=> res!2857359 e!4209847)))

(assert (=> d!2183160 (= res!2857359 (matchZipper!2820 lt!2498379 lt!2498372))))

(declare-fun lt!2498626 () Unit!161220)

(declare-fun choose!52547 ((Set Context!12552) (Set Context!12552) List!67386) Unit!161220)

(assert (=> d!2183160 (= lt!2498626 (choose!52547 lt!2498379 lt!2498338 lt!2498372))))

(assert (=> d!2183160 (= (lemmaZipperConcatMatchesSameAsBothZippers!1453 lt!2498379 lt!2498338 lt!2498372) lt!2498626)))

(declare-fun b!7003798 () Bool)

(assert (=> b!7003798 (= e!4209847 (matchZipper!2820 lt!2498338 lt!2498372))))

(assert (= (and d!2183160 (not res!2857359)) b!7003798))

(declare-fun m!7699484 () Bool)

(assert (=> d!2183160 m!7699484))

(assert (=> d!2183160 m!7699074))

(declare-fun m!7699486 () Bool)

(assert (=> d!2183160 m!7699486))

(assert (=> b!7003798 m!7699164))

(assert (=> b!7003607 d!2183160))

(declare-fun d!2183162 () Bool)

(assert (=> d!2183162 (= (tail!13329 (_1!37256 lt!2498357)) (t!381139 (_1!37256 lt!2498357)))))

(assert (=> b!7003607 d!2183162))

(declare-fun d!2183164 () Bool)

(declare-fun c!1300382 () Bool)

(assert (=> d!2183164 (= c!1300382 (isEmpty!39279 lt!2498372))))

(declare-fun e!4209848 () Bool)

(assert (=> d!2183164 (= (matchZipper!2820 lt!2498360 lt!2498372) e!4209848)))

(declare-fun b!7003799 () Bool)

(assert (=> b!7003799 (= e!4209848 (nullableZipper!2468 lt!2498360))))

(declare-fun b!7003800 () Bool)

(assert (=> b!7003800 (= e!4209848 (matchZipper!2820 (derivationStepZipper!2760 lt!2498360 (head!14151 lt!2498372)) (tail!13329 lt!2498372)))))

(assert (= (and d!2183164 c!1300382) b!7003799))

(assert (= (and d!2183164 (not c!1300382)) b!7003800))

(declare-fun m!7699488 () Bool)

(assert (=> d!2183164 m!7699488))

(declare-fun m!7699490 () Bool)

(assert (=> b!7003799 m!7699490))

(declare-fun m!7699492 () Bool)

(assert (=> b!7003800 m!7699492))

(assert (=> b!7003800 m!7699492))

(declare-fun m!7699494 () Bool)

(assert (=> b!7003800 m!7699494))

(declare-fun m!7699496 () Bool)

(assert (=> b!7003800 m!7699496))

(assert (=> b!7003800 m!7699494))

(assert (=> b!7003800 m!7699496))

(declare-fun m!7699498 () Bool)

(assert (=> b!7003800 m!7699498))

(assert (=> b!7003607 d!2183164))

(declare-fun d!2183166 () Bool)

(declare-fun c!1300383 () Bool)

(assert (=> d!2183166 (= c!1300383 (isEmpty!39279 lt!2498372))))

(declare-fun e!4209849 () Bool)

(assert (=> d!2183166 (= (matchZipper!2820 lt!2498379 lt!2498372) e!4209849)))

(declare-fun b!7003801 () Bool)

(assert (=> b!7003801 (= e!4209849 (nullableZipper!2468 lt!2498379))))

(declare-fun b!7003802 () Bool)

(assert (=> b!7003802 (= e!4209849 (matchZipper!2820 (derivationStepZipper!2760 lt!2498379 (head!14151 lt!2498372)) (tail!13329 lt!2498372)))))

(assert (= (and d!2183166 c!1300383) b!7003801))

(assert (= (and d!2183166 (not c!1300383)) b!7003802))

(assert (=> d!2183166 m!7699488))

(declare-fun m!7699500 () Bool)

(assert (=> b!7003801 m!7699500))

(assert (=> b!7003802 m!7699492))

(assert (=> b!7003802 m!7699492))

(declare-fun m!7699502 () Bool)

(assert (=> b!7003802 m!7699502))

(assert (=> b!7003802 m!7699496))

(assert (=> b!7003802 m!7699502))

(assert (=> b!7003802 m!7699496))

(declare-fun m!7699504 () Bool)

(assert (=> b!7003802 m!7699504))

(assert (=> b!7003607 d!2183166))

(declare-fun d!2183168 () Bool)

(declare-fun c!1300384 () Bool)

(assert (=> d!2183168 (= c!1300384 (isEmpty!39279 (_1!37256 lt!2498357)))))

(declare-fun e!4209850 () Bool)

(assert (=> d!2183168 (= (matchZipper!2820 lt!2498342 (_1!37256 lt!2498357)) e!4209850)))

(declare-fun b!7003803 () Bool)

(assert (=> b!7003803 (= e!4209850 (nullableZipper!2468 lt!2498342))))

(declare-fun b!7003804 () Bool)

(assert (=> b!7003804 (= e!4209850 (matchZipper!2820 (derivationStepZipper!2760 lt!2498342 (head!14151 (_1!37256 lt!2498357))) (tail!13329 (_1!37256 lt!2498357))))))

(assert (= (and d!2183168 c!1300384) b!7003803))

(assert (= (and d!2183168 (not c!1300384)) b!7003804))

(assert (=> d!2183168 m!7699060))

(declare-fun m!7699506 () Bool)

(assert (=> b!7003803 m!7699506))

(assert (=> b!7003804 m!7699178))

(assert (=> b!7003804 m!7699178))

(declare-fun m!7699508 () Bool)

(assert (=> b!7003804 m!7699508))

(assert (=> b!7003804 m!7699082))

(assert (=> b!7003804 m!7699508))

(assert (=> b!7003804 m!7699082))

(declare-fun m!7699510 () Bool)

(assert (=> b!7003804 m!7699510))

(assert (=> b!7003607 d!2183168))

(declare-fun b!7003814 () Bool)

(declare-fun e!4209856 () List!67386)

(assert (=> b!7003814 (= e!4209856 (Cons!67262 (h!73710 (_1!37256 lt!2498357)) (++!15262 (t!381139 (_1!37256 lt!2498357)) (_2!37256 lt!2498357))))))

(declare-fun b!7003813 () Bool)

(assert (=> b!7003813 (= e!4209856 (_2!37256 lt!2498357))))

(declare-fun d!2183170 () Bool)

(declare-fun e!4209855 () Bool)

(assert (=> d!2183170 e!4209855))

(declare-fun res!2857365 () Bool)

(assert (=> d!2183170 (=> (not res!2857365) (not e!4209855))))

(declare-fun lt!2498629 () List!67386)

(declare-fun content!13331 (List!67386) (Set C!34830))

(assert (=> d!2183170 (= res!2857365 (= (content!13331 lt!2498629) (set.union (content!13331 (_1!37256 lt!2498357)) (content!13331 (_2!37256 lt!2498357)))))))

(assert (=> d!2183170 (= lt!2498629 e!4209856)))

(declare-fun c!1300387 () Bool)

(assert (=> d!2183170 (= c!1300387 (is-Nil!67262 (_1!37256 lt!2498357)))))

(assert (=> d!2183170 (= (++!15262 (_1!37256 lt!2498357) (_2!37256 lt!2498357)) lt!2498629)))

(declare-fun b!7003815 () Bool)

(declare-fun res!2857364 () Bool)

(assert (=> b!7003815 (=> (not res!2857364) (not e!4209855))))

(declare-fun size!40949 (List!67386) Int)

(assert (=> b!7003815 (= res!2857364 (= (size!40949 lt!2498629) (+ (size!40949 (_1!37256 lt!2498357)) (size!40949 (_2!37256 lt!2498357)))))))

(declare-fun b!7003816 () Bool)

(assert (=> b!7003816 (= e!4209855 (or (not (= (_2!37256 lt!2498357) Nil!67262)) (= lt!2498629 (_1!37256 lt!2498357))))))

(assert (= (and d!2183170 c!1300387) b!7003813))

(assert (= (and d!2183170 (not c!1300387)) b!7003814))

(assert (= (and d!2183170 res!2857365) b!7003815))

(assert (= (and b!7003815 res!2857364) b!7003816))

(declare-fun m!7699512 () Bool)

(assert (=> b!7003814 m!7699512))

(declare-fun m!7699514 () Bool)

(assert (=> d!2183170 m!7699514))

(declare-fun m!7699516 () Bool)

(assert (=> d!2183170 m!7699516))

(declare-fun m!7699518 () Bool)

(assert (=> d!2183170 m!7699518))

(declare-fun m!7699520 () Bool)

(assert (=> b!7003815 m!7699520))

(declare-fun m!7699522 () Bool)

(assert (=> b!7003815 m!7699522))

(declare-fun m!7699524 () Bool)

(assert (=> b!7003815 m!7699524))

(assert (=> b!7003606 d!2183170))

(declare-fun b!7003817 () Bool)

(declare-fun e!4209858 () Bool)

(assert (=> b!7003817 (= e!4209858 (nullable!7040 (h!73709 (exprs!6776 lt!2498376))))))

(declare-fun b!7003818 () Bool)

(declare-fun e!4209857 () (Set Context!12552))

(declare-fun e!4209859 () (Set Context!12552))

(assert (=> b!7003818 (= e!4209857 e!4209859)))

(declare-fun c!1300389 () Bool)

(assert (=> b!7003818 (= c!1300389 (is-Cons!67261 (exprs!6776 lt!2498376)))))

(declare-fun call!635920 () (Set Context!12552))

(declare-fun b!7003819 () Bool)

(assert (=> b!7003819 (= e!4209857 (set.union call!635920 (derivationStepZipperUp!1930 (Context!12553 (t!381138 (exprs!6776 lt!2498376))) (h!73710 s!7408))))))

(declare-fun bm!635915 () Bool)

(assert (=> bm!635915 (= call!635920 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498376)) (Context!12553 (t!381138 (exprs!6776 lt!2498376))) (h!73710 s!7408)))))

(declare-fun b!7003820 () Bool)

(assert (=> b!7003820 (= e!4209859 call!635920)))

(declare-fun b!7003821 () Bool)

(assert (=> b!7003821 (= e!4209859 (as set.empty (Set Context!12552)))))

(declare-fun d!2183172 () Bool)

(declare-fun c!1300388 () Bool)

(assert (=> d!2183172 (= c!1300388 e!4209858)))

(declare-fun res!2857366 () Bool)

(assert (=> d!2183172 (=> (not res!2857366) (not e!4209858))))

(assert (=> d!2183172 (= res!2857366 (is-Cons!67261 (exprs!6776 lt!2498376)))))

(assert (=> d!2183172 (= (derivationStepZipperUp!1930 lt!2498376 (h!73710 s!7408)) e!4209857)))

(assert (= (and d!2183172 res!2857366) b!7003817))

(assert (= (and d!2183172 c!1300388) b!7003819))

(assert (= (and d!2183172 (not c!1300388)) b!7003818))

(assert (= (and b!7003818 c!1300389) b!7003820))

(assert (= (and b!7003818 (not c!1300389)) b!7003821))

(assert (= (or b!7003819 b!7003820) bm!635915))

(declare-fun m!7699526 () Bool)

(assert (=> b!7003817 m!7699526))

(declare-fun m!7699528 () Bool)

(assert (=> b!7003819 m!7699528))

(declare-fun m!7699530 () Bool)

(assert (=> bm!635915 m!7699530))

(assert (=> b!7003585 d!2183172))

(declare-fun bs!1865150 () Bool)

(declare-fun d!2183174 () Bool)

(assert (= bs!1865150 (and d!2183174 b!7003609)))

(declare-fun lambda!406202 () Int)

(assert (=> bs!1865150 (= (= lt!2498367 (h!73710 s!7408)) (= lambda!406202 lambda!406125))))

(declare-fun bs!1865151 () Bool)

(assert (= bs!1865151 (and d!2183174 d!2183142)))

(assert (=> bs!1865151 (= (= lt!2498367 (h!73710 s!7408)) (= lambda!406202 lambda!406195))))

(assert (=> d!2183174 true))

(assert (=> d!2183174 (= (derivationStepZipper!2760 lt!2498393 lt!2498367) (flatMap!2266 lt!2498393 lambda!406202))))

(declare-fun bs!1865152 () Bool)

(assert (= bs!1865152 d!2183174))

(declare-fun m!7699532 () Bool)

(assert (=> bs!1865152 m!7699532))

(assert (=> b!7003585 d!2183174))

(declare-fun d!2183176 () Bool)

(assert (=> d!2183176 (= (head!14151 (_1!37256 lt!2498357)) (h!73710 (_1!37256 lt!2498357)))))

(assert (=> b!7003585 d!2183176))

(declare-fun d!2183178 () Bool)

(assert (=> d!2183178 (= (flatMap!2266 lt!2498393 lambda!406125) (choose!52543 lt!2498393 lambda!406125))))

(declare-fun bs!1865153 () Bool)

(assert (= bs!1865153 d!2183178))

(declare-fun m!7699534 () Bool)

(assert (=> bs!1865153 m!7699534))

(assert (=> b!7003585 d!2183178))

(declare-fun b!7003822 () Bool)

(declare-fun e!4209861 () Bool)

(assert (=> b!7003822 (= e!4209861 (nullable!7040 (h!73709 (exprs!6776 lt!2498376))))))

(declare-fun b!7003823 () Bool)

(declare-fun e!4209860 () (Set Context!12552))

(declare-fun e!4209862 () (Set Context!12552))

(assert (=> b!7003823 (= e!4209860 e!4209862)))

(declare-fun c!1300391 () Bool)

(assert (=> b!7003823 (= c!1300391 (is-Cons!67261 (exprs!6776 lt!2498376)))))

(declare-fun b!7003824 () Bool)

(declare-fun call!635921 () (Set Context!12552))

(assert (=> b!7003824 (= e!4209860 (set.union call!635921 (derivationStepZipperUp!1930 (Context!12553 (t!381138 (exprs!6776 lt!2498376))) lt!2498367)))))

(declare-fun bm!635916 () Bool)

(assert (=> bm!635916 (= call!635921 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498376)) (Context!12553 (t!381138 (exprs!6776 lt!2498376))) lt!2498367))))

(declare-fun b!7003825 () Bool)

(assert (=> b!7003825 (= e!4209862 call!635921)))

(declare-fun b!7003826 () Bool)

(assert (=> b!7003826 (= e!4209862 (as set.empty (Set Context!12552)))))

(declare-fun d!2183180 () Bool)

(declare-fun c!1300390 () Bool)

(assert (=> d!2183180 (= c!1300390 e!4209861)))

(declare-fun res!2857367 () Bool)

(assert (=> d!2183180 (=> (not res!2857367) (not e!4209861))))

(assert (=> d!2183180 (= res!2857367 (is-Cons!67261 (exprs!6776 lt!2498376)))))

(assert (=> d!2183180 (= (derivationStepZipperUp!1930 lt!2498376 lt!2498367) e!4209860)))

(assert (= (and d!2183180 res!2857367) b!7003822))

(assert (= (and d!2183180 c!1300390) b!7003824))

(assert (= (and d!2183180 (not c!1300390)) b!7003823))

(assert (= (and b!7003823 c!1300391) b!7003825))

(assert (= (and b!7003823 (not c!1300391)) b!7003826))

(assert (= (or b!7003824 b!7003825) bm!635916))

(assert (=> b!7003822 m!7699526))

(declare-fun m!7699536 () Bool)

(assert (=> b!7003824 m!7699536))

(declare-fun m!7699538 () Bool)

(assert (=> bm!635916 m!7699538))

(assert (=> b!7003585 d!2183180))

(declare-fun d!2183182 () Bool)

(assert (=> d!2183182 (= (flatMap!2266 lt!2498393 lambda!406125) (dynLambda!27022 lambda!406125 lt!2498376))))

(declare-fun lt!2498630 () Unit!161220)

(assert (=> d!2183182 (= lt!2498630 (choose!52544 lt!2498393 lt!2498376 lambda!406125))))

(assert (=> d!2183182 (= lt!2498393 (set.insert lt!2498376 (as set.empty (Set Context!12552))))))

(assert (=> d!2183182 (= (lemmaFlatMapOnSingletonSet!1781 lt!2498393 lt!2498376 lambda!406125) lt!2498630)))

(declare-fun b_lambda!263887 () Bool)

(assert (=> (not b_lambda!263887) (not d!2183182)))

(declare-fun bs!1865154 () Bool)

(assert (= bs!1865154 d!2183182))

(assert (=> bs!1865154 m!7699112))

(declare-fun m!7699540 () Bool)

(assert (=> bs!1865154 m!7699540))

(declare-fun m!7699542 () Bool)

(assert (=> bs!1865154 m!7699542))

(assert (=> bs!1865154 m!7699108))

(assert (=> b!7003585 d!2183182))

(declare-fun d!2183184 () Bool)

(declare-fun nullableFct!2664 (Regex!17280) Bool)

(assert (=> d!2183184 (= (nullable!7040 (h!73709 (exprs!6776 lt!2498391))) (nullableFct!2664 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun bs!1865155 () Bool)

(assert (= bs!1865155 d!2183184))

(declare-fun m!7699544 () Bool)

(assert (=> bs!1865155 m!7699544))

(assert (=> b!7003605 d!2183184))

(declare-fun d!2183186 () Bool)

(assert (=> d!2183186 (= (tail!13328 (exprs!6776 lt!2498391)) (t!381138 (exprs!6776 lt!2498391)))))

(assert (=> b!7003605 d!2183186))

(declare-fun d!2183188 () Bool)

(declare-fun c!1300392 () Bool)

(assert (=> d!2183188 (= c!1300392 (isEmpty!39279 lt!2498372))))

(declare-fun e!4209863 () Bool)

(assert (=> d!2183188 (= (matchZipper!2820 lt!2498338 lt!2498372) e!4209863)))

(declare-fun b!7003827 () Bool)

(assert (=> b!7003827 (= e!4209863 (nullableZipper!2468 lt!2498338))))

(declare-fun b!7003828 () Bool)

(assert (=> b!7003828 (= e!4209863 (matchZipper!2820 (derivationStepZipper!2760 lt!2498338 (head!14151 lt!2498372)) (tail!13329 lt!2498372)))))

(assert (= (and d!2183188 c!1300392) b!7003827))

(assert (= (and d!2183188 (not c!1300392)) b!7003828))

(assert (=> d!2183188 m!7699488))

(declare-fun m!7699546 () Bool)

(assert (=> b!7003827 m!7699546))

(assert (=> b!7003828 m!7699492))

(assert (=> b!7003828 m!7699492))

(declare-fun m!7699548 () Bool)

(assert (=> b!7003828 m!7699548))

(assert (=> b!7003828 m!7699496))

(assert (=> b!7003828 m!7699548))

(assert (=> b!7003828 m!7699496))

(declare-fun m!7699550 () Bool)

(assert (=> b!7003828 m!7699550))

(assert (=> b!7003584 d!2183188))

(declare-fun d!2183190 () Bool)

(declare-fun c!1300393 () Bool)

(assert (=> d!2183190 (= c!1300393 (isEmpty!39279 lt!2498372))))

(declare-fun e!4209864 () Bool)

(assert (=> d!2183190 (= (matchZipper!2820 lt!2498362 lt!2498372) e!4209864)))

(declare-fun b!7003829 () Bool)

(assert (=> b!7003829 (= e!4209864 (nullableZipper!2468 lt!2498362))))

(declare-fun b!7003830 () Bool)

(assert (=> b!7003830 (= e!4209864 (matchZipper!2820 (derivationStepZipper!2760 lt!2498362 (head!14151 lt!2498372)) (tail!13329 lt!2498372)))))

(assert (= (and d!2183190 c!1300393) b!7003829))

(assert (= (and d!2183190 (not c!1300393)) b!7003830))

(assert (=> d!2183190 m!7699488))

(declare-fun m!7699552 () Bool)

(assert (=> b!7003829 m!7699552))

(assert (=> b!7003830 m!7699492))

(assert (=> b!7003830 m!7699492))

(declare-fun m!7699554 () Bool)

(assert (=> b!7003830 m!7699554))

(assert (=> b!7003830 m!7699496))

(assert (=> b!7003830 m!7699554))

(assert (=> b!7003830 m!7699496))

(declare-fun m!7699556 () Bool)

(assert (=> b!7003830 m!7699556))

(assert (=> b!7003583 d!2183190))

(declare-fun d!2183192 () Bool)

(declare-fun c!1300394 () Bool)

(assert (=> d!2183192 (= c!1300394 (isEmpty!39279 s!7408))))

(declare-fun e!4209865 () Bool)

(assert (=> d!2183192 (= (matchZipper!2820 lt!2498333 s!7408) e!4209865)))

(declare-fun b!7003831 () Bool)

(assert (=> b!7003831 (= e!4209865 (nullableZipper!2468 lt!2498333))))

(declare-fun b!7003832 () Bool)

(assert (=> b!7003832 (= e!4209865 (matchZipper!2820 (derivationStepZipper!2760 lt!2498333 (head!14151 s!7408)) (tail!13329 s!7408)))))

(assert (= (and d!2183192 c!1300394) b!7003831))

(assert (= (and d!2183192 (not c!1300394)) b!7003832))

(assert (=> d!2183192 m!7699436))

(declare-fun m!7699558 () Bool)

(assert (=> b!7003831 m!7699558))

(assert (=> b!7003832 m!7699440))

(assert (=> b!7003832 m!7699440))

(declare-fun m!7699560 () Bool)

(assert (=> b!7003832 m!7699560))

(assert (=> b!7003832 m!7699444))

(assert (=> b!7003832 m!7699560))

(assert (=> b!7003832 m!7699444))

(declare-fun m!7699562 () Bool)

(assert (=> b!7003832 m!7699562))

(assert (=> b!7003603 d!2183192))

(assert (=> b!7003603 d!2183136))

(declare-fun d!2183194 () Bool)

(assert (=> d!2183194 (= (isEmpty!39278 (exprs!6776 lt!2498391)) (is-Nil!67261 (exprs!6776 lt!2498391)))))

(assert (=> b!7003582 d!2183194))

(declare-fun d!2183196 () Bool)

(declare-fun lt!2498633 () Int)

(assert (=> d!2183196 (>= lt!2498633 0)))

(declare-fun e!4209868 () Int)

(assert (=> d!2183196 (= lt!2498633 e!4209868)))

(declare-fun c!1300397 () Bool)

(assert (=> d!2183196 (= c!1300397 (is-Cons!67263 (Cons!67263 lt!2498376 Nil!67263)))))

(assert (=> d!2183196 (= (zipperDepthTotal!501 (Cons!67263 lt!2498376 Nil!67263)) lt!2498633)))

(declare-fun b!7003837 () Bool)

(assert (=> b!7003837 (= e!4209868 (+ (contextDepthTotal!473 (h!73711 (Cons!67263 lt!2498376 Nil!67263))) (zipperDepthTotal!501 (t!381140 (Cons!67263 lt!2498376 Nil!67263)))))))

(declare-fun b!7003838 () Bool)

(assert (=> b!7003838 (= e!4209868 0)))

(assert (= (and d!2183196 c!1300397) b!7003837))

(assert (= (and d!2183196 (not c!1300397)) b!7003838))

(declare-fun m!7699564 () Bool)

(assert (=> b!7003837 m!7699564))

(declare-fun m!7699566 () Bool)

(assert (=> b!7003837 m!7699566))

(assert (=> b!7003581 d!2183196))

(assert (=> b!7003601 d!2183172))

(declare-fun d!2183198 () Bool)

(declare-fun c!1300410 () Bool)

(assert (=> d!2183198 (= c!1300410 (and (is-ElementMatch!17280 (h!73709 (exprs!6776 lt!2498391))) (= (c!1300340 (h!73709 (exprs!6776 lt!2498391))) (h!73710 s!7408))))))

(declare-fun e!4209883 () (Set Context!12552))

(assert (=> d!2183198 (= (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498391)) lt!2498376 (h!73710 s!7408)) e!4209883)))

(declare-fun b!7003861 () Bool)

(declare-fun e!4209884 () (Set Context!12552))

(declare-fun call!635939 () (Set Context!12552))

(declare-fun call!635936 () (Set Context!12552))

(assert (=> b!7003861 (= e!4209884 (set.union call!635939 call!635936))))

(declare-fun c!1300409 () Bool)

(declare-fun bm!635929 () Bool)

(declare-fun c!1300408 () Bool)

(declare-fun c!1300412 () Bool)

(declare-fun call!635937 () List!67385)

(assert (=> bm!635929 (= call!635936 (derivationStepZipperDown!1998 (ite c!1300408 (regTwo!35073 (h!73709 (exprs!6776 lt!2498391))) (ite c!1300412 (regTwo!35072 (h!73709 (exprs!6776 lt!2498391))) (ite c!1300409 (regOne!35072 (h!73709 (exprs!6776 lt!2498391))) (reg!17609 (h!73709 (exprs!6776 lt!2498391)))))) (ite (or c!1300408 c!1300412) lt!2498376 (Context!12553 call!635937)) (h!73710 s!7408)))))

(declare-fun b!7003862 () Bool)

(declare-fun e!4209882 () Bool)

(assert (=> b!7003862 (= e!4209882 (nullable!7040 (regOne!35072 (h!73709 (exprs!6776 lt!2498391)))))))

(declare-fun b!7003863 () Bool)

(declare-fun c!1300411 () Bool)

(assert (=> b!7003863 (= c!1300411 (is-Star!17280 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun e!4209881 () (Set Context!12552))

(declare-fun e!4209885 () (Set Context!12552))

(assert (=> b!7003863 (= e!4209881 e!4209885)))

(declare-fun bm!635930 () Bool)

(declare-fun call!635934 () (Set Context!12552))

(declare-fun call!635935 () (Set Context!12552))

(assert (=> bm!635930 (= call!635934 call!635935)))

(declare-fun b!7003864 () Bool)

(assert (=> b!7003864 (= c!1300412 e!4209882)))

(declare-fun res!2857370 () Bool)

(assert (=> b!7003864 (=> (not res!2857370) (not e!4209882))))

(assert (=> b!7003864 (= res!2857370 (is-Concat!26125 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun e!4209886 () (Set Context!12552))

(assert (=> b!7003864 (= e!4209884 e!4209886)))

(declare-fun b!7003865 () Bool)

(assert (=> b!7003865 (= e!4209885 (as set.empty (Set Context!12552)))))

(declare-fun b!7003866 () Bool)

(assert (=> b!7003866 (= e!4209885 call!635934)))

(declare-fun call!635938 () List!67385)

(declare-fun bm!635931 () Bool)

(assert (=> bm!635931 (= call!635939 (derivationStepZipperDown!1998 (ite c!1300408 (regOne!35073 (h!73709 (exprs!6776 lt!2498391))) (regOne!35072 (h!73709 (exprs!6776 lt!2498391)))) (ite c!1300408 lt!2498376 (Context!12553 call!635938)) (h!73710 s!7408)))))

(declare-fun b!7003867 () Bool)

(assert (=> b!7003867 (= e!4209883 (set.insert lt!2498376 (as set.empty (Set Context!12552))))))

(declare-fun bm!635932 () Bool)

(assert (=> bm!635932 (= call!635937 call!635938)))

(declare-fun b!7003868 () Bool)

(assert (=> b!7003868 (= e!4209886 e!4209881)))

(assert (=> b!7003868 (= c!1300409 (is-Concat!26125 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun b!7003869 () Bool)

(assert (=> b!7003869 (= e!4209881 call!635934)))

(declare-fun b!7003870 () Bool)

(assert (=> b!7003870 (= e!4209886 (set.union call!635939 call!635935))))

(declare-fun b!7003871 () Bool)

(assert (=> b!7003871 (= e!4209883 e!4209884)))

(assert (=> b!7003871 (= c!1300408 (is-Union!17280 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun bm!635933 () Bool)

(declare-fun $colon$colon!2511 (List!67385 Regex!17280) List!67385)

(assert (=> bm!635933 (= call!635938 ($colon$colon!2511 (exprs!6776 lt!2498376) (ite (or c!1300412 c!1300409) (regTwo!35072 (h!73709 (exprs!6776 lt!2498391))) (h!73709 (exprs!6776 lt!2498391)))))))

(declare-fun bm!635934 () Bool)

(assert (=> bm!635934 (= call!635935 call!635936)))

(assert (= (and d!2183198 c!1300410) b!7003867))

(assert (= (and d!2183198 (not c!1300410)) b!7003871))

(assert (= (and b!7003871 c!1300408) b!7003861))

(assert (= (and b!7003871 (not c!1300408)) b!7003864))

(assert (= (and b!7003864 res!2857370) b!7003862))

(assert (= (and b!7003864 c!1300412) b!7003870))

(assert (= (and b!7003864 (not c!1300412)) b!7003868))

(assert (= (and b!7003868 c!1300409) b!7003869))

(assert (= (and b!7003868 (not c!1300409)) b!7003863))

(assert (= (and b!7003863 c!1300411) b!7003866))

(assert (= (and b!7003863 (not c!1300411)) b!7003865))

(assert (= (or b!7003869 b!7003866) bm!635932))

(assert (= (or b!7003869 b!7003866) bm!635930))

(assert (= (or b!7003870 bm!635930) bm!635934))

(assert (= (or b!7003870 bm!635932) bm!635933))

(assert (= (or b!7003861 b!7003870) bm!635931))

(assert (= (or b!7003861 bm!635934) bm!635929))

(declare-fun m!7699568 () Bool)

(assert (=> bm!635931 m!7699568))

(declare-fun m!7699570 () Bool)

(assert (=> bm!635933 m!7699570))

(declare-fun m!7699572 () Bool)

(assert (=> bm!635929 m!7699572))

(declare-fun m!7699574 () Bool)

(assert (=> b!7003862 m!7699574))

(assert (=> b!7003867 m!7699108))

(assert (=> b!7003601 d!2183198))

(assert (=> b!7003580 d!2183188))

(declare-fun b!7003872 () Bool)

(declare-fun e!4209888 () Bool)

(assert (=> b!7003872 (= e!4209888 (nullable!7040 (h!73709 (exprs!6776 lt!2498353))))))

(declare-fun b!7003873 () Bool)

(declare-fun e!4209887 () (Set Context!12552))

(declare-fun e!4209889 () (Set Context!12552))

(assert (=> b!7003873 (= e!4209887 e!4209889)))

(declare-fun c!1300414 () Bool)

(assert (=> b!7003873 (= c!1300414 (is-Cons!67261 (exprs!6776 lt!2498353)))))

(declare-fun b!7003874 () Bool)

(declare-fun call!635940 () (Set Context!12552))

(assert (=> b!7003874 (= e!4209887 (set.union call!635940 (derivationStepZipperUp!1930 (Context!12553 (t!381138 (exprs!6776 lt!2498353))) (h!73710 s!7408))))))

(declare-fun bm!635935 () Bool)

(assert (=> bm!635935 (= call!635940 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498353)) (Context!12553 (t!381138 (exprs!6776 lt!2498353))) (h!73710 s!7408)))))

(declare-fun b!7003875 () Bool)

(assert (=> b!7003875 (= e!4209889 call!635940)))

(declare-fun b!7003876 () Bool)

(assert (=> b!7003876 (= e!4209889 (as set.empty (Set Context!12552)))))

(declare-fun d!2183200 () Bool)

(declare-fun c!1300413 () Bool)

(assert (=> d!2183200 (= c!1300413 e!4209888)))

(declare-fun res!2857371 () Bool)

(assert (=> d!2183200 (=> (not res!2857371) (not e!4209888))))

(assert (=> d!2183200 (= res!2857371 (is-Cons!67261 (exprs!6776 lt!2498353)))))

(assert (=> d!2183200 (= (derivationStepZipperUp!1930 lt!2498353 (h!73710 s!7408)) e!4209887)))

(assert (= (and d!2183200 res!2857371) b!7003872))

(assert (= (and d!2183200 c!1300413) b!7003874))

(assert (= (and d!2183200 (not c!1300413)) b!7003873))

(assert (= (and b!7003873 c!1300414) b!7003875))

(assert (= (and b!7003873 (not c!1300414)) b!7003876))

(assert (= (or b!7003874 b!7003875) bm!635935))

(declare-fun m!7699576 () Bool)

(assert (=> b!7003872 m!7699576))

(declare-fun m!7699578 () Bool)

(assert (=> b!7003874 m!7699578))

(declare-fun m!7699580 () Bool)

(assert (=> bm!635935 m!7699580))

(assert (=> b!7003600 d!2183200))

(declare-fun d!2183202 () Bool)

(declare-fun c!1300417 () Bool)

(assert (=> d!2183202 (= c!1300417 (and (is-ElementMatch!17280 (h!73709 (exprs!6776 lt!2498391))) (= (c!1300340 (h!73709 (exprs!6776 lt!2498391))) (h!73710 s!7408))))))

(declare-fun e!4209892 () (Set Context!12552))

(assert (=> d!2183202 (= (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498391)) lt!2498353 (h!73710 s!7408)) e!4209892)))

(declare-fun b!7003877 () Bool)

(declare-fun e!4209893 () (Set Context!12552))

(declare-fun call!635946 () (Set Context!12552))

(declare-fun call!635943 () (Set Context!12552))

(assert (=> b!7003877 (= e!4209893 (set.union call!635946 call!635943))))

(declare-fun bm!635936 () Bool)

(declare-fun c!1300415 () Bool)

(declare-fun c!1300419 () Bool)

(declare-fun c!1300416 () Bool)

(declare-fun call!635944 () List!67385)

(assert (=> bm!635936 (= call!635943 (derivationStepZipperDown!1998 (ite c!1300415 (regTwo!35073 (h!73709 (exprs!6776 lt!2498391))) (ite c!1300419 (regTwo!35072 (h!73709 (exprs!6776 lt!2498391))) (ite c!1300416 (regOne!35072 (h!73709 (exprs!6776 lt!2498391))) (reg!17609 (h!73709 (exprs!6776 lt!2498391)))))) (ite (or c!1300415 c!1300419) lt!2498353 (Context!12553 call!635944)) (h!73710 s!7408)))))

(declare-fun b!7003878 () Bool)

(declare-fun e!4209891 () Bool)

(assert (=> b!7003878 (= e!4209891 (nullable!7040 (regOne!35072 (h!73709 (exprs!6776 lt!2498391)))))))

(declare-fun b!7003879 () Bool)

(declare-fun c!1300418 () Bool)

(assert (=> b!7003879 (= c!1300418 (is-Star!17280 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun e!4209890 () (Set Context!12552))

(declare-fun e!4209894 () (Set Context!12552))

(assert (=> b!7003879 (= e!4209890 e!4209894)))

(declare-fun bm!635937 () Bool)

(declare-fun call!635941 () (Set Context!12552))

(declare-fun call!635942 () (Set Context!12552))

(assert (=> bm!635937 (= call!635941 call!635942)))

(declare-fun b!7003880 () Bool)

(assert (=> b!7003880 (= c!1300419 e!4209891)))

(declare-fun res!2857372 () Bool)

(assert (=> b!7003880 (=> (not res!2857372) (not e!4209891))))

(assert (=> b!7003880 (= res!2857372 (is-Concat!26125 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun e!4209895 () (Set Context!12552))

(assert (=> b!7003880 (= e!4209893 e!4209895)))

(declare-fun b!7003881 () Bool)

(assert (=> b!7003881 (= e!4209894 (as set.empty (Set Context!12552)))))

(declare-fun b!7003882 () Bool)

(assert (=> b!7003882 (= e!4209894 call!635941)))

(declare-fun call!635945 () List!67385)

(declare-fun bm!635938 () Bool)

(assert (=> bm!635938 (= call!635946 (derivationStepZipperDown!1998 (ite c!1300415 (regOne!35073 (h!73709 (exprs!6776 lt!2498391))) (regOne!35072 (h!73709 (exprs!6776 lt!2498391)))) (ite c!1300415 lt!2498353 (Context!12553 call!635945)) (h!73710 s!7408)))))

(declare-fun b!7003883 () Bool)

(assert (=> b!7003883 (= e!4209892 (set.insert lt!2498353 (as set.empty (Set Context!12552))))))

(declare-fun bm!635939 () Bool)

(assert (=> bm!635939 (= call!635944 call!635945)))

(declare-fun b!7003884 () Bool)

(assert (=> b!7003884 (= e!4209895 e!4209890)))

(assert (=> b!7003884 (= c!1300416 (is-Concat!26125 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun b!7003885 () Bool)

(assert (=> b!7003885 (= e!4209890 call!635941)))

(declare-fun b!7003886 () Bool)

(assert (=> b!7003886 (= e!4209895 (set.union call!635946 call!635942))))

(declare-fun b!7003887 () Bool)

(assert (=> b!7003887 (= e!4209892 e!4209893)))

(assert (=> b!7003887 (= c!1300415 (is-Union!17280 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun bm!635940 () Bool)

(assert (=> bm!635940 (= call!635945 ($colon$colon!2511 (exprs!6776 lt!2498353) (ite (or c!1300419 c!1300416) (regTwo!35072 (h!73709 (exprs!6776 lt!2498391))) (h!73709 (exprs!6776 lt!2498391)))))))

(declare-fun bm!635941 () Bool)

(assert (=> bm!635941 (= call!635942 call!635943)))

(assert (= (and d!2183202 c!1300417) b!7003883))

(assert (= (and d!2183202 (not c!1300417)) b!7003887))

(assert (= (and b!7003887 c!1300415) b!7003877))

(assert (= (and b!7003887 (not c!1300415)) b!7003880))

(assert (= (and b!7003880 res!2857372) b!7003878))

(assert (= (and b!7003880 c!1300419) b!7003886))

(assert (= (and b!7003880 (not c!1300419)) b!7003884))

(assert (= (and b!7003884 c!1300416) b!7003885))

(assert (= (and b!7003884 (not c!1300416)) b!7003879))

(assert (= (and b!7003879 c!1300418) b!7003882))

(assert (= (and b!7003879 (not c!1300418)) b!7003881))

(assert (= (or b!7003885 b!7003882) bm!635939))

(assert (= (or b!7003885 b!7003882) bm!635937))

(assert (= (or b!7003886 bm!635937) bm!635941))

(assert (= (or b!7003886 bm!635939) bm!635940))

(assert (= (or b!7003877 b!7003886) bm!635938))

(assert (= (or b!7003877 bm!635941) bm!635936))

(declare-fun m!7699582 () Bool)

(assert (=> bm!635938 m!7699582))

(declare-fun m!7699584 () Bool)

(assert (=> bm!635940 m!7699584))

(declare-fun m!7699586 () Bool)

(assert (=> bm!635936 m!7699586))

(assert (=> b!7003878 m!7699574))

(assert (=> b!7003883 m!7699150))

(assert (=> b!7003600 d!2183202))

(declare-fun d!2183204 () Bool)

(declare-fun e!4209901 () Bool)

(assert (=> d!2183204 e!4209901))

(declare-fun res!2857378 () Bool)

(assert (=> d!2183204 (=> (not res!2857378) (not e!4209901))))

(declare-fun lt!2498636 () List!67385)

(declare-fun content!13332 (List!67385) (Set Regex!17280))

(assert (=> d!2183204 (= res!2857378 (= (content!13332 lt!2498636) (set.union (content!13332 lt!2498339) (content!13332 (exprs!6776 ct2!306)))))))

(declare-fun e!4209900 () List!67385)

(assert (=> d!2183204 (= lt!2498636 e!4209900)))

(declare-fun c!1300422 () Bool)

(assert (=> d!2183204 (= c!1300422 (is-Nil!67261 lt!2498339))))

(assert (=> d!2183204 (= (++!15261 lt!2498339 (exprs!6776 ct2!306)) lt!2498636)))

(declare-fun b!7003897 () Bool)

(assert (=> b!7003897 (= e!4209900 (Cons!67261 (h!73709 lt!2498339) (++!15261 (t!381138 lt!2498339) (exprs!6776 ct2!306))))))

(declare-fun b!7003898 () Bool)

(declare-fun res!2857377 () Bool)

(assert (=> b!7003898 (=> (not res!2857377) (not e!4209901))))

(declare-fun size!40950 (List!67385) Int)

(assert (=> b!7003898 (= res!2857377 (= (size!40950 lt!2498636) (+ (size!40950 lt!2498339) (size!40950 (exprs!6776 ct2!306)))))))

(declare-fun b!7003899 () Bool)

(assert (=> b!7003899 (= e!4209901 (or (not (= (exprs!6776 ct2!306) Nil!67261)) (= lt!2498636 lt!2498339)))))

(declare-fun b!7003896 () Bool)

(assert (=> b!7003896 (= e!4209900 (exprs!6776 ct2!306))))

(assert (= (and d!2183204 c!1300422) b!7003896))

(assert (= (and d!2183204 (not c!1300422)) b!7003897))

(assert (= (and d!2183204 res!2857378) b!7003898))

(assert (= (and b!7003898 res!2857377) b!7003899))

(declare-fun m!7699588 () Bool)

(assert (=> d!2183204 m!7699588))

(declare-fun m!7699590 () Bool)

(assert (=> d!2183204 m!7699590))

(declare-fun m!7699592 () Bool)

(assert (=> d!2183204 m!7699592))

(declare-fun m!7699594 () Bool)

(assert (=> b!7003897 m!7699594))

(declare-fun m!7699596 () Bool)

(assert (=> b!7003898 m!7699596))

(declare-fun m!7699598 () Bool)

(assert (=> b!7003898 m!7699598))

(declare-fun m!7699600 () Bool)

(assert (=> b!7003898 m!7699600))

(assert (=> b!7003600 d!2183204))

(assert (=> b!7003600 d!2183136))

(declare-fun d!2183206 () Bool)

(declare-fun c!1300423 () Bool)

(assert (=> d!2183206 (= c!1300423 (isEmpty!39279 s!7408))))

(declare-fun e!4209902 () Bool)

(assert (=> d!2183206 (= (matchZipper!2820 lt!2498374 s!7408) e!4209902)))

(declare-fun b!7003900 () Bool)

(assert (=> b!7003900 (= e!4209902 (nullableZipper!2468 lt!2498374))))

(declare-fun b!7003901 () Bool)

(assert (=> b!7003901 (= e!4209902 (matchZipper!2820 (derivationStepZipper!2760 lt!2498374 (head!14151 s!7408)) (tail!13329 s!7408)))))

(assert (= (and d!2183206 c!1300423) b!7003900))

(assert (= (and d!2183206 (not c!1300423)) b!7003901))

(assert (=> d!2183206 m!7699436))

(declare-fun m!7699602 () Bool)

(assert (=> b!7003900 m!7699602))

(assert (=> b!7003901 m!7699440))

(assert (=> b!7003901 m!7699440))

(declare-fun m!7699604 () Bool)

(assert (=> b!7003901 m!7699604))

(assert (=> b!7003901 m!7699444))

(assert (=> b!7003901 m!7699604))

(assert (=> b!7003901 m!7699444))

(declare-fun m!7699606 () Bool)

(assert (=> b!7003901 m!7699606))

(assert (=> start!674018 d!2183206))

(declare-fun bs!1865156 () Bool)

(declare-fun d!2183208 () Bool)

(assert (= bs!1865156 (and d!2183208 b!7003595)))

(declare-fun lambda!406207 () Int)

(assert (=> bs!1865156 (= lambda!406207 lambda!406123)))

(assert (=> d!2183208 true))

(assert (=> d!2183208 (= (appendTo!401 z1!570 ct2!306) (map!15567 z1!570 lambda!406207))))

(declare-fun bs!1865157 () Bool)

(assert (= bs!1865157 d!2183208))

(declare-fun m!7699608 () Bool)

(assert (=> bs!1865157 m!7699608))

(assert (=> start!674018 d!2183208))

(declare-fun bs!1865158 () Bool)

(declare-fun d!2183210 () Bool)

(assert (= bs!1865158 (and d!2183210 b!7003595)))

(declare-fun lambda!406208 () Int)

(assert (=> bs!1865158 (= lambda!406208 lambda!406124)))

(declare-fun bs!1865159 () Bool)

(assert (= bs!1865159 (and d!2183210 d!2183122)))

(assert (=> bs!1865159 (= lambda!406208 lambda!406192)))

(assert (=> d!2183210 (= (inv!86060 ct2!306) (forall!16195 (exprs!6776 ct2!306) lambda!406208))))

(declare-fun bs!1865160 () Bool)

(assert (= bs!1865160 d!2183210))

(declare-fun m!7699610 () Bool)

(assert (=> bs!1865160 m!7699610))

(assert (=> start!674018 d!2183210))

(declare-fun bs!1865161 () Bool)

(declare-fun d!2183212 () Bool)

(assert (= bs!1865161 (and d!2183212 b!7003609)))

(declare-fun lambda!406209 () Int)

(assert (=> bs!1865161 (= lambda!406209 lambda!406125)))

(declare-fun bs!1865162 () Bool)

(assert (= bs!1865162 (and d!2183212 d!2183142)))

(assert (=> bs!1865162 (= lambda!406209 lambda!406195)))

(declare-fun bs!1865163 () Bool)

(assert (= bs!1865163 (and d!2183212 d!2183174)))

(assert (=> bs!1865163 (= (= (h!73710 s!7408) lt!2498367) (= lambda!406209 lambda!406202))))

(assert (=> d!2183212 true))

(assert (=> d!2183212 (= (derivationStepZipper!2760 lt!2498342 (h!73710 s!7408)) (flatMap!2266 lt!2498342 lambda!406209))))

(declare-fun bs!1865164 () Bool)

(assert (= bs!1865164 d!2183212))

(declare-fun m!7699612 () Bool)

(assert (=> bs!1865164 m!7699612))

(assert (=> b!7003598 d!2183212))

(declare-fun b!7003902 () Bool)

(declare-fun e!4209904 () Bool)

(assert (=> b!7003902 (= e!4209904 (nullable!7040 (h!73709 (exprs!6776 lt!2498391))))))

(declare-fun b!7003903 () Bool)

(declare-fun e!4209903 () (Set Context!12552))

(declare-fun e!4209905 () (Set Context!12552))

(assert (=> b!7003903 (= e!4209903 e!4209905)))

(declare-fun c!1300426 () Bool)

(assert (=> b!7003903 (= c!1300426 (is-Cons!67261 (exprs!6776 lt!2498391)))))

(declare-fun b!7003904 () Bool)

(declare-fun call!635947 () (Set Context!12552))

(assert (=> b!7003904 (= e!4209903 (set.union call!635947 (derivationStepZipperUp!1930 (Context!12553 (t!381138 (exprs!6776 lt!2498391))) (h!73710 s!7408))))))

(declare-fun bm!635942 () Bool)

(assert (=> bm!635942 (= call!635947 (derivationStepZipperDown!1998 (h!73709 (exprs!6776 lt!2498391)) (Context!12553 (t!381138 (exprs!6776 lt!2498391))) (h!73710 s!7408)))))

(declare-fun b!7003905 () Bool)

(assert (=> b!7003905 (= e!4209905 call!635947)))

(declare-fun b!7003906 () Bool)

(assert (=> b!7003906 (= e!4209905 (as set.empty (Set Context!12552)))))

(declare-fun d!2183214 () Bool)

(declare-fun c!1300425 () Bool)

(assert (=> d!2183214 (= c!1300425 e!4209904)))

(declare-fun res!2857379 () Bool)

(assert (=> d!2183214 (=> (not res!2857379) (not e!4209904))))

(assert (=> d!2183214 (= res!2857379 (is-Cons!67261 (exprs!6776 lt!2498391)))))

(assert (=> d!2183214 (= (derivationStepZipperUp!1930 lt!2498391 (h!73710 s!7408)) e!4209903)))

(assert (= (and d!2183214 res!2857379) b!7003902))

(assert (= (and d!2183214 c!1300425) b!7003904))

(assert (= (and d!2183214 (not c!1300425)) b!7003903))

(assert (= (and b!7003903 c!1300426) b!7003905))

(assert (= (and b!7003903 (not c!1300426)) b!7003906))

(assert (= (or b!7003904 b!7003905) bm!635942))

(assert (=> b!7003902 m!7699152))

(declare-fun m!7699614 () Bool)

(assert (=> b!7003904 m!7699614))

(declare-fun m!7699616 () Bool)

(assert (=> bm!635942 m!7699616))

(assert (=> b!7003598 d!2183214))

(declare-fun d!2183216 () Bool)

(assert (=> d!2183216 (= (flatMap!2266 lt!2498342 lambda!406125) (choose!52543 lt!2498342 lambda!406125))))

(declare-fun bs!1865165 () Bool)

(assert (= bs!1865165 d!2183216))

(declare-fun m!7699618 () Bool)

(assert (=> bs!1865165 m!7699618))

(assert (=> b!7003598 d!2183216))

(declare-fun d!2183218 () Bool)

(assert (=> d!2183218 (= (flatMap!2266 lt!2498342 lambda!406125) (dynLambda!27022 lambda!406125 lt!2498391))))

(declare-fun lt!2498639 () Unit!161220)

(assert (=> d!2183218 (= lt!2498639 (choose!52544 lt!2498342 lt!2498391 lambda!406125))))

(assert (=> d!2183218 (= lt!2498342 (set.insert lt!2498391 (as set.empty (Set Context!12552))))))

(assert (=> d!2183218 (= (lemmaFlatMapOnSingletonSet!1781 lt!2498342 lt!2498391 lambda!406125) lt!2498639)))

(declare-fun b_lambda!263889 () Bool)

(assert (=> (not b_lambda!263889) (not d!2183218)))

(declare-fun bs!1865166 () Bool)

(assert (= bs!1865166 d!2183218))

(assert (=> bs!1865166 m!7699066))

(declare-fun m!7699620 () Bool)

(assert (=> bs!1865166 m!7699620))

(declare-fun m!7699622 () Bool)

(assert (=> bs!1865166 m!7699622))

(assert (=> bs!1865166 m!7699062))

(assert (=> b!7003598 d!2183218))

(declare-fun d!2183220 () Bool)

(declare-fun e!4209906 () Bool)

(assert (=> d!2183220 e!4209906))

(declare-fun res!2857380 () Bool)

(assert (=> d!2183220 (=> (not res!2857380) (not e!4209906))))

(declare-fun lt!2498640 () List!67387)

(assert (=> d!2183220 (= res!2857380 (noDuplicate!2549 lt!2498640))))

(assert (=> d!2183220 (= lt!2498640 (choose!52545 z1!570))))

(assert (=> d!2183220 (= (toList!10640 z1!570) lt!2498640)))

(declare-fun b!7003907 () Bool)

(assert (=> b!7003907 (= e!4209906 (= (content!13330 lt!2498640) z1!570))))

(assert (= (and d!2183220 res!2857380) b!7003907))

(declare-fun m!7699624 () Bool)

(assert (=> d!2183220 m!7699624))

(declare-fun m!7699626 () Bool)

(assert (=> d!2183220 m!7699626))

(declare-fun m!7699628 () Bool)

(assert (=> b!7003907 m!7699628))

(assert (=> b!7003597 d!2183220))

(assert (=> b!7003597 d!2183178))

(declare-fun d!2183222 () Bool)

(declare-fun lt!2498643 () Int)

(assert (=> d!2183222 (>= lt!2498643 0)))

(declare-fun e!4209909 () Int)

(assert (=> d!2183222 (= lt!2498643 e!4209909)))

(declare-fun c!1300430 () Bool)

(assert (=> d!2183222 (= c!1300430 (is-Cons!67261 (exprs!6776 lt!2498376)))))

(assert (=> d!2183222 (= (contextDepthTotal!473 lt!2498376) lt!2498643)))

(declare-fun b!7003912 () Bool)

(declare-fun regexDepthTotal!286 (Regex!17280) Int)

(assert (=> b!7003912 (= e!4209909 (+ (regexDepthTotal!286 (h!73709 (exprs!6776 lt!2498376))) (contextDepthTotal!473 (Context!12553 (t!381138 (exprs!6776 lt!2498376))))))))

(declare-fun b!7003913 () Bool)

(assert (=> b!7003913 (= e!4209909 1)))

(assert (= (and d!2183222 c!1300430) b!7003912))

(assert (= (and d!2183222 (not c!1300430)) b!7003913))

(declare-fun m!7699630 () Bool)

(assert (=> b!7003912 m!7699630))

(declare-fun m!7699632 () Bool)

(assert (=> b!7003912 m!7699632))

(assert (=> b!7003597 d!2183222))

(declare-fun d!2183224 () Bool)

(declare-fun lt!2498644 () Int)

(assert (=> d!2183224 (>= lt!2498644 0)))

(declare-fun e!4209910 () Int)

(assert (=> d!2183224 (= lt!2498644 e!4209910)))

(declare-fun c!1300431 () Bool)

(assert (=> d!2183224 (= c!1300431 (is-Cons!67261 (exprs!6776 lt!2498391)))))

(assert (=> d!2183224 (= (contextDepthTotal!473 lt!2498391) lt!2498644)))

(declare-fun b!7003914 () Bool)

(assert (=> b!7003914 (= e!4209910 (+ (regexDepthTotal!286 (h!73709 (exprs!6776 lt!2498391))) (contextDepthTotal!473 (Context!12553 (t!381138 (exprs!6776 lt!2498391))))))))

(declare-fun b!7003915 () Bool)

(assert (=> b!7003915 (= e!4209910 1)))

(assert (= (and d!2183224 c!1300431) b!7003914))

(assert (= (and d!2183224 (not c!1300431)) b!7003915))

(declare-fun m!7699634 () Bool)

(assert (=> b!7003914 m!7699634))

(declare-fun m!7699636 () Bool)

(assert (=> b!7003914 m!7699636))

(assert (=> b!7003597 d!2183224))

(declare-fun d!2183226 () Bool)

(declare-fun lt!2498645 () Int)

(assert (=> d!2183226 (>= lt!2498645 0)))

(declare-fun e!4209911 () Int)

(assert (=> d!2183226 (= lt!2498645 e!4209911)))

(declare-fun c!1300432 () Bool)

(assert (=> d!2183226 (= c!1300432 (is-Cons!67263 lt!2498381))))

(assert (=> d!2183226 (= (zipperDepthTotal!501 lt!2498381) lt!2498645)))

(declare-fun b!7003916 () Bool)

(assert (=> b!7003916 (= e!4209911 (+ (contextDepthTotal!473 (h!73711 lt!2498381)) (zipperDepthTotal!501 (t!381140 lt!2498381))))))

(declare-fun b!7003917 () Bool)

(assert (=> b!7003917 (= e!4209911 0)))

(assert (= (and d!2183226 c!1300432) b!7003916))

(assert (= (and d!2183226 (not c!1300432)) b!7003917))

(declare-fun m!7699638 () Bool)

(assert (=> b!7003916 m!7699638))

(declare-fun m!7699640 () Bool)

(assert (=> b!7003916 m!7699640))

(assert (=> b!7003597 d!2183226))

(assert (=> b!7003597 d!2183182))

(declare-fun d!2183228 () Bool)

(declare-fun dynLambda!27025 (Int Context!12552) Context!12552)

(assert (=> d!2183228 (= (map!15567 lt!2498393 lambda!406123) (set.insert (dynLambda!27025 lambda!406123 lt!2498376) (as set.empty (Set Context!12552))))))

(declare-fun lt!2498648 () Unit!161220)

(declare-fun choose!52548 ((Set Context!12552) Context!12552 Int) Unit!161220)

(assert (=> d!2183228 (= lt!2498648 (choose!52548 lt!2498393 lt!2498376 lambda!406123))))

(assert (=> d!2183228 (= lt!2498393 (set.insert lt!2498376 (as set.empty (Set Context!12552))))))

(assert (=> d!2183228 (= (lemmaMapOnSingletonSet!345 lt!2498393 lt!2498376 lambda!406123) lt!2498648)))

(declare-fun b_lambda!263891 () Bool)

(assert (=> (not b_lambda!263891) (not d!2183228)))

(declare-fun bs!1865167 () Bool)

(assert (= bs!1865167 d!2183228))

(declare-fun m!7699642 () Bool)

(assert (=> bs!1865167 m!7699642))

(assert (=> bs!1865167 m!7699108))

(declare-fun m!7699644 () Bool)

(assert (=> bs!1865167 m!7699644))

(assert (=> bs!1865167 m!7699128))

(assert (=> bs!1865167 m!7699642))

(declare-fun m!7699646 () Bool)

(assert (=> bs!1865167 m!7699646))

(assert (=> b!7003597 d!2183228))

(declare-fun d!2183230 () Bool)

(assert (=> d!2183230 (<= (contextDepthTotal!473 lt!2498391) (zipperDepthTotal!501 lt!2498381))))

(declare-fun lt!2498651 () Unit!161220)

(declare-fun choose!52549 (List!67387 Context!12552) Unit!161220)

(assert (=> d!2183230 (= lt!2498651 (choose!52549 lt!2498381 lt!2498391))))

(declare-fun contains!20428 (List!67387 Context!12552) Bool)

(assert (=> d!2183230 (contains!20428 lt!2498381 lt!2498391)))

(assert (=> d!2183230 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!41 lt!2498381 lt!2498391) lt!2498651)))

(declare-fun bs!1865168 () Bool)

(assert (= bs!1865168 d!2183230))

(assert (=> bs!1865168 m!7699124))

(assert (=> bs!1865168 m!7699122))

(declare-fun m!7699648 () Bool)

(assert (=> bs!1865168 m!7699648))

(declare-fun m!7699650 () Bool)

(assert (=> bs!1865168 m!7699650))

(assert (=> b!7003597 d!2183230))

(assert (=> b!7003597 d!2183136))

(declare-fun d!2183232 () Bool)

(declare-fun choose!52550 ((Set Context!12552) Int) (Set Context!12552))

(assert (=> d!2183232 (= (map!15567 lt!2498393 lambda!406123) (choose!52550 lt!2498393 lambda!406123))))

(declare-fun bs!1865169 () Bool)

(assert (= bs!1865169 d!2183232))

(declare-fun m!7699652 () Bool)

(assert (=> bs!1865169 m!7699652))

(assert (=> b!7003597 d!2183232))

(assert (=> b!7003597 d!2183204))

(assert (=> b!7003597 d!2183172))

(declare-fun d!2183234 () Bool)

(declare-fun e!4209913 () Bool)

(assert (=> d!2183234 e!4209913))

(declare-fun res!2857382 () Bool)

(assert (=> d!2183234 (=> (not res!2857382) (not e!4209913))))

(declare-fun lt!2498652 () List!67385)

(assert (=> d!2183234 (= res!2857382 (= (content!13332 lt!2498652) (set.union (content!13332 (exprs!6776 lt!2498391)) (content!13332 (exprs!6776 ct2!306)))))))

(declare-fun e!4209912 () List!67385)

(assert (=> d!2183234 (= lt!2498652 e!4209912)))

(declare-fun c!1300434 () Bool)

(assert (=> d!2183234 (= c!1300434 (is-Nil!67261 (exprs!6776 lt!2498391)))))

(assert (=> d!2183234 (= (++!15261 (exprs!6776 lt!2498391) (exprs!6776 ct2!306)) lt!2498652)))

(declare-fun b!7003919 () Bool)

(assert (=> b!7003919 (= e!4209912 (Cons!67261 (h!73709 (exprs!6776 lt!2498391)) (++!15261 (t!381138 (exprs!6776 lt!2498391)) (exprs!6776 ct2!306))))))

(declare-fun b!7003920 () Bool)

(declare-fun res!2857381 () Bool)

(assert (=> b!7003920 (=> (not res!2857381) (not e!4209913))))

(assert (=> b!7003920 (= res!2857381 (= (size!40950 lt!2498652) (+ (size!40950 (exprs!6776 lt!2498391)) (size!40950 (exprs!6776 ct2!306)))))))

(declare-fun b!7003921 () Bool)

(assert (=> b!7003921 (= e!4209913 (or (not (= (exprs!6776 ct2!306) Nil!67261)) (= lt!2498652 (exprs!6776 lt!2498391))))))

(declare-fun b!7003918 () Bool)

(assert (=> b!7003918 (= e!4209912 (exprs!6776 ct2!306))))

(assert (= (and d!2183234 c!1300434) b!7003918))

(assert (= (and d!2183234 (not c!1300434)) b!7003919))

(assert (= (and d!2183234 res!2857382) b!7003920))

(assert (= (and b!7003920 res!2857381) b!7003921))

(declare-fun m!7699654 () Bool)

(assert (=> d!2183234 m!7699654))

(declare-fun m!7699656 () Bool)

(assert (=> d!2183234 m!7699656))

(assert (=> d!2183234 m!7699592))

(declare-fun m!7699658 () Bool)

(assert (=> b!7003919 m!7699658))

(declare-fun m!7699660 () Bool)

(assert (=> b!7003920 m!7699660))

(declare-fun m!7699662 () Bool)

(assert (=> b!7003920 m!7699662))

(assert (=> b!7003920 m!7699600))

(assert (=> b!7003595 d!2183234))

(assert (=> b!7003595 d!2183138))

(declare-fun d!2183236 () Bool)

(declare-fun e!4209916 () Bool)

(assert (=> d!2183236 e!4209916))

(declare-fun res!2857385 () Bool)

(assert (=> d!2183236 (=> (not res!2857385) (not e!4209916))))

(declare-fun lt!2498655 () Context!12552)

(assert (=> d!2183236 (= res!2857385 (= lt!2498378 (dynLambda!27025 lambda!406123 lt!2498655)))))

(declare-fun choose!52551 ((Set Context!12552) Int Context!12552) Context!12552)

(assert (=> d!2183236 (= lt!2498655 (choose!52551 z1!570 lambda!406123 lt!2498378))))

(assert (=> d!2183236 (set.member lt!2498378 (map!15567 z1!570 lambda!406123))))

(assert (=> d!2183236 (= (mapPost2!135 z1!570 lambda!406123 lt!2498378) lt!2498655)))

(declare-fun b!7003925 () Bool)

(assert (=> b!7003925 (= e!4209916 (set.member lt!2498655 z1!570))))

(assert (= (and d!2183236 res!2857385) b!7003925))

(declare-fun b_lambda!263893 () Bool)

(assert (=> (not b_lambda!263893) (not d!2183236)))

(declare-fun m!7699664 () Bool)

(assert (=> d!2183236 m!7699664))

(declare-fun m!7699666 () Bool)

(assert (=> d!2183236 m!7699666))

(declare-fun m!7699668 () Bool)

(assert (=> d!2183236 m!7699668))

(declare-fun m!7699670 () Bool)

(assert (=> d!2183236 m!7699670))

(declare-fun m!7699672 () Bool)

(assert (=> b!7003925 m!7699672))

(assert (=> b!7003595 d!2183236))

(declare-fun d!2183238 () Bool)

(assert (=> d!2183238 (= (isEmpty!39279 (_1!37256 lt!2498357)) (is-Nil!67262 (_1!37256 lt!2498357)))))

(assert (=> b!7003614 d!2183238))

(declare-fun d!2183240 () Bool)

(assert (=> d!2183240 (= (flatMap!2266 lt!2498333 lambda!406125) (choose!52543 lt!2498333 lambda!406125))))

(declare-fun bs!1865170 () Bool)

(assert (= bs!1865170 d!2183240))

(declare-fun m!7699674 () Bool)

(assert (=> bs!1865170 m!7699674))

(assert (=> b!7003613 d!2183240))

(declare-fun d!2183242 () Bool)

(assert (=> d!2183242 (= (flatMap!2266 lt!2498333 lambda!406125) (dynLambda!27022 lambda!406125 lt!2498353))))

(declare-fun lt!2498656 () Unit!161220)

(assert (=> d!2183242 (= lt!2498656 (choose!52544 lt!2498333 lt!2498353 lambda!406125))))

(assert (=> d!2183242 (= lt!2498333 (set.insert lt!2498353 (as set.empty (Set Context!12552))))))

(assert (=> d!2183242 (= (lemmaFlatMapOnSingletonSet!1781 lt!2498333 lt!2498353 lambda!406125) lt!2498656)))

(declare-fun b_lambda!263895 () Bool)

(assert (=> (not b_lambda!263895) (not d!2183242)))

(declare-fun bs!1865171 () Bool)

(assert (= bs!1865171 d!2183242))

(assert (=> bs!1865171 m!7699146))

(declare-fun m!7699676 () Bool)

(assert (=> bs!1865171 m!7699676))

(declare-fun m!7699678 () Bool)

(assert (=> bs!1865171 m!7699678))

(assert (=> bs!1865171 m!7699150))

(assert (=> b!7003613 d!2183242))

(assert (=> b!7003613 d!2183200))

(declare-fun bs!1865172 () Bool)

(declare-fun d!2183244 () Bool)

(assert (= bs!1865172 (and d!2183244 b!7003609)))

(declare-fun lambda!406210 () Int)

(assert (=> bs!1865172 (= lambda!406210 lambda!406125)))

(declare-fun bs!1865173 () Bool)

(assert (= bs!1865173 (and d!2183244 d!2183142)))

(assert (=> bs!1865173 (= lambda!406210 lambda!406195)))

(declare-fun bs!1865174 () Bool)

(assert (= bs!1865174 (and d!2183244 d!2183174)))

(assert (=> bs!1865174 (= (= (h!73710 s!7408) lt!2498367) (= lambda!406210 lambda!406202))))

(declare-fun bs!1865175 () Bool)

(assert (= bs!1865175 (and d!2183244 d!2183212)))

(assert (=> bs!1865175 (= lambda!406210 lambda!406209)))

(assert (=> d!2183244 true))

(assert (=> d!2183244 (= (derivationStepZipper!2760 lt!2498333 (h!73710 s!7408)) (flatMap!2266 lt!2498333 lambda!406210))))

(declare-fun bs!1865176 () Bool)

(assert (= bs!1865176 d!2183244))

(declare-fun m!7699680 () Bool)

(assert (=> bs!1865176 m!7699680))

(assert (=> b!7003613 d!2183244))

(assert (=> b!7003613 d!2183136))

(declare-fun e!4209917 () Bool)

(declare-fun d!2183246 () Bool)

(assert (=> d!2183246 (= (matchZipper!2820 (set.union lt!2498355 lt!2498341) (t!381139 s!7408)) e!4209917)))

(declare-fun res!2857386 () Bool)

(assert (=> d!2183246 (=> res!2857386 e!4209917)))

(assert (=> d!2183246 (= res!2857386 (matchZipper!2820 lt!2498355 (t!381139 s!7408)))))

(declare-fun lt!2498657 () Unit!161220)

(assert (=> d!2183246 (= lt!2498657 (choose!52547 lt!2498355 lt!2498341 (t!381139 s!7408)))))

(assert (=> d!2183246 (= (lemmaZipperConcatMatchesSameAsBothZippers!1453 lt!2498355 lt!2498341 (t!381139 s!7408)) lt!2498657)))

(declare-fun b!7003926 () Bool)

(assert (=> b!7003926 (= e!4209917 (matchZipper!2820 lt!2498341 (t!381139 s!7408)))))

(assert (= (and d!2183246 (not res!2857386)) b!7003926))

(declare-fun m!7699682 () Bool)

(assert (=> d!2183246 m!7699682))

(assert (=> d!2183246 m!7699170))

(declare-fun m!7699684 () Bool)

(assert (=> d!2183246 m!7699684))

(assert (=> b!7003926 m!7699054))

(assert (=> b!7003593 d!2183246))

(declare-fun d!2183248 () Bool)

(declare-fun c!1300435 () Bool)

(assert (=> d!2183248 (= c!1300435 (isEmpty!39279 (t!381139 s!7408)))))

(declare-fun e!4209918 () Bool)

(assert (=> d!2183248 (= (matchZipper!2820 lt!2498368 (t!381139 s!7408)) e!4209918)))

(declare-fun b!7003927 () Bool)

(assert (=> b!7003927 (= e!4209918 (nullableZipper!2468 lt!2498368))))

(declare-fun b!7003928 () Bool)

(assert (=> b!7003928 (= e!4209918 (matchZipper!2820 (derivationStepZipper!2760 lt!2498368 (head!14151 (t!381139 s!7408))) (tail!13329 (t!381139 s!7408))))))

(assert (= (and d!2183248 c!1300435) b!7003927))

(assert (= (and d!2183248 (not c!1300435)) b!7003928))

(assert (=> d!2183248 m!7699358))

(declare-fun m!7699686 () Bool)

(assert (=> b!7003927 m!7699686))

(assert (=> b!7003928 m!7699362))

(assert (=> b!7003928 m!7699362))

(declare-fun m!7699688 () Bool)

(assert (=> b!7003928 m!7699688))

(assert (=> b!7003928 m!7699366))

(assert (=> b!7003928 m!7699688))

(assert (=> b!7003928 m!7699366))

(declare-fun m!7699690 () Bool)

(assert (=> b!7003928 m!7699690))

(assert (=> b!7003593 d!2183248))

(declare-fun d!2183250 () Bool)

(declare-fun c!1300436 () Bool)

(assert (=> d!2183250 (= c!1300436 (isEmpty!39279 (t!381139 s!7408)))))

(declare-fun e!4209919 () Bool)

(assert (=> d!2183250 (= (matchZipper!2820 lt!2498355 (t!381139 s!7408)) e!4209919)))

(declare-fun b!7003929 () Bool)

(assert (=> b!7003929 (= e!4209919 (nullableZipper!2468 lt!2498355))))

(declare-fun b!7003930 () Bool)

(assert (=> b!7003930 (= e!4209919 (matchZipper!2820 (derivationStepZipper!2760 lt!2498355 (head!14151 (t!381139 s!7408))) (tail!13329 (t!381139 s!7408))))))

(assert (= (and d!2183250 c!1300436) b!7003929))

(assert (= (and d!2183250 (not c!1300436)) b!7003930))

(assert (=> d!2183250 m!7699358))

(declare-fun m!7699692 () Bool)

(assert (=> b!7003929 m!7699692))

(assert (=> b!7003930 m!7699362))

(assert (=> b!7003930 m!7699362))

(declare-fun m!7699694 () Bool)

(assert (=> b!7003930 m!7699694))

(assert (=> b!7003930 m!7699366))

(assert (=> b!7003930 m!7699694))

(assert (=> b!7003930 m!7699366))

(declare-fun m!7699696 () Bool)

(assert (=> b!7003930 m!7699696))

(assert (=> b!7003593 d!2183250))

(declare-fun d!2183252 () Bool)

(declare-fun c!1300437 () Bool)

(assert (=> d!2183252 (= c!1300437 (isEmpty!39279 (t!381139 s!7408)))))

(declare-fun e!4209920 () Bool)

(assert (=> d!2183252 (= (matchZipper!2820 lt!2498387 (t!381139 s!7408)) e!4209920)))

(declare-fun b!7003931 () Bool)

(assert (=> b!7003931 (= e!4209920 (nullableZipper!2468 lt!2498387))))

(declare-fun b!7003932 () Bool)

(assert (=> b!7003932 (= e!4209920 (matchZipper!2820 (derivationStepZipper!2760 lt!2498387 (head!14151 (t!381139 s!7408))) (tail!13329 (t!381139 s!7408))))))

(assert (= (and d!2183252 c!1300437) b!7003931))

(assert (= (and d!2183252 (not c!1300437)) b!7003932))

(assert (=> d!2183252 m!7699358))

(declare-fun m!7699698 () Bool)

(assert (=> b!7003931 m!7699698))

(assert (=> b!7003932 m!7699362))

(assert (=> b!7003932 m!7699362))

(declare-fun m!7699700 () Bool)

(assert (=> b!7003932 m!7699700))

(assert (=> b!7003932 m!7699366))

(assert (=> b!7003932 m!7699700))

(assert (=> b!7003932 m!7699366))

(declare-fun m!7699702 () Bool)

(assert (=> b!7003932 m!7699702))

(assert (=> b!7003593 d!2183252))

(assert (=> b!7003593 d!2183136))

(declare-fun b!7003934 () Bool)

(declare-fun e!4209922 () List!67386)

(assert (=> b!7003934 (= e!4209922 (Cons!67262 (h!73710 Nil!67262) (++!15262 (t!381139 Nil!67262) s!7408)))))

(declare-fun b!7003933 () Bool)

(assert (=> b!7003933 (= e!4209922 s!7408)))

(declare-fun d!2183254 () Bool)

(declare-fun e!4209921 () Bool)

(assert (=> d!2183254 e!4209921))

(declare-fun res!2857388 () Bool)

(assert (=> d!2183254 (=> (not res!2857388) (not e!4209921))))

(declare-fun lt!2498658 () List!67386)

(assert (=> d!2183254 (= res!2857388 (= (content!13331 lt!2498658) (set.union (content!13331 Nil!67262) (content!13331 s!7408))))))

(assert (=> d!2183254 (= lt!2498658 e!4209922)))

(declare-fun c!1300438 () Bool)

(assert (=> d!2183254 (= c!1300438 (is-Nil!67262 Nil!67262))))

(assert (=> d!2183254 (= (++!15262 Nil!67262 s!7408) lt!2498658)))

(declare-fun b!7003935 () Bool)

(declare-fun res!2857387 () Bool)

(assert (=> b!7003935 (=> (not res!2857387) (not e!4209921))))

(assert (=> b!7003935 (= res!2857387 (= (size!40949 lt!2498658) (+ (size!40949 Nil!67262) (size!40949 s!7408))))))

(declare-fun b!7003936 () Bool)

(assert (=> b!7003936 (= e!4209921 (or (not (= s!7408 Nil!67262)) (= lt!2498658 Nil!67262)))))

(assert (= (and d!2183254 c!1300438) b!7003933))

(assert (= (and d!2183254 (not c!1300438)) b!7003934))

(assert (= (and d!2183254 res!2857388) b!7003935))

(assert (= (and b!7003935 res!2857387) b!7003936))

(declare-fun m!7699704 () Bool)

(assert (=> b!7003934 m!7699704))

(declare-fun m!7699706 () Bool)

(assert (=> d!2183254 m!7699706))

(declare-fun m!7699708 () Bool)

(assert (=> d!2183254 m!7699708))

(declare-fun m!7699710 () Bool)

(assert (=> d!2183254 m!7699710))

(declare-fun m!7699712 () Bool)

(assert (=> b!7003935 m!7699712))

(declare-fun m!7699714 () Bool)

(assert (=> b!7003935 m!7699714))

(declare-fun m!7699716 () Bool)

(assert (=> b!7003935 m!7699716))

(assert (=> b!7003612 d!2183254))

(declare-fun d!2183256 () Bool)

(assert (=> d!2183256 (= (isDefined!13486 (findConcatSeparationZippers!301 lt!2498342 lt!2498332 Nil!67262 s!7408 s!7408)) (not (isEmpty!39282 (findConcatSeparationZippers!301 lt!2498342 lt!2498332 Nil!67262 s!7408 s!7408))))))

(declare-fun bs!1865177 () Bool)

(assert (= bs!1865177 d!2183256))

(assert (=> bs!1865177 m!7699086))

(declare-fun m!7699718 () Bool)

(assert (=> bs!1865177 m!7699718))

(assert (=> b!7003612 d!2183256))

(declare-fun b!7003937 () Bool)

(declare-fun res!2857390 () Bool)

(declare-fun e!4209925 () Bool)

(assert (=> b!7003937 (=> (not res!2857390) (not e!4209925))))

(declare-fun lt!2498659 () Option!16785)

(assert (=> b!7003937 (= res!2857390 (matchZipper!2820 lt!2498342 (_1!37256 (get!23590 lt!2498659))))))

(declare-fun b!7003938 () Bool)

(assert (=> b!7003938 (= e!4209925 (= (++!15262 (_1!37256 (get!23590 lt!2498659)) (_2!37256 (get!23590 lt!2498659))) s!7408))))

(declare-fun b!7003939 () Bool)

(declare-fun e!4209926 () Option!16785)

(assert (=> b!7003939 (= e!4209926 (Some!16784 (tuple2!67907 Nil!67262 s!7408)))))

(declare-fun b!7003940 () Bool)

(declare-fun res!2857392 () Bool)

(assert (=> b!7003940 (=> (not res!2857392) (not e!4209925))))

(assert (=> b!7003940 (= res!2857392 (matchZipper!2820 lt!2498332 (_2!37256 (get!23590 lt!2498659))))))

(declare-fun b!7003941 () Bool)

(declare-fun e!4209927 () Bool)

(assert (=> b!7003941 (= e!4209927 (matchZipper!2820 lt!2498332 s!7408))))

(declare-fun b!7003942 () Bool)

(declare-fun e!4209924 () Option!16785)

(assert (=> b!7003942 (= e!4209924 None!16784)))

(declare-fun b!7003944 () Bool)

(declare-fun lt!2498661 () Unit!161220)

(declare-fun lt!2498660 () Unit!161220)

(assert (=> b!7003944 (= lt!2498661 lt!2498660)))

(assert (=> b!7003944 (= (++!15262 (++!15262 Nil!67262 (Cons!67262 (h!73710 s!7408) Nil!67262)) (t!381139 s!7408)) s!7408)))

(assert (=> b!7003944 (= lt!2498660 (lemmaMoveElementToOtherListKeepsConcatEq!2888 Nil!67262 (h!73710 s!7408) (t!381139 s!7408) s!7408))))

(assert (=> b!7003944 (= e!4209924 (findConcatSeparationZippers!301 lt!2498342 lt!2498332 (++!15262 Nil!67262 (Cons!67262 (h!73710 s!7408) Nil!67262)) (t!381139 s!7408) s!7408))))

(declare-fun b!7003945 () Bool)

(declare-fun e!4209923 () Bool)

(assert (=> b!7003945 (= e!4209923 (not (isDefined!13486 lt!2498659)))))

(declare-fun d!2183258 () Bool)

(assert (=> d!2183258 e!4209923))

(declare-fun res!2857393 () Bool)

(assert (=> d!2183258 (=> res!2857393 e!4209923)))

(assert (=> d!2183258 (= res!2857393 e!4209925)))

(declare-fun res!2857391 () Bool)

(assert (=> d!2183258 (=> (not res!2857391) (not e!4209925))))

(assert (=> d!2183258 (= res!2857391 (isDefined!13486 lt!2498659))))

(assert (=> d!2183258 (= lt!2498659 e!4209926)))

(declare-fun c!1300439 () Bool)

(assert (=> d!2183258 (= c!1300439 e!4209927)))

(declare-fun res!2857389 () Bool)

(assert (=> d!2183258 (=> (not res!2857389) (not e!4209927))))

(assert (=> d!2183258 (= res!2857389 (matchZipper!2820 lt!2498342 Nil!67262))))

(assert (=> d!2183258 (= (++!15262 Nil!67262 s!7408) s!7408)))

(assert (=> d!2183258 (= (findConcatSeparationZippers!301 lt!2498342 lt!2498332 Nil!67262 s!7408 s!7408) lt!2498659)))

(declare-fun b!7003943 () Bool)

(assert (=> b!7003943 (= e!4209926 e!4209924)))

(declare-fun c!1300440 () Bool)

(assert (=> b!7003943 (= c!1300440 (is-Nil!67262 s!7408))))

(assert (= (and d!2183258 res!2857389) b!7003941))

(assert (= (and d!2183258 c!1300439) b!7003939))

(assert (= (and d!2183258 (not c!1300439)) b!7003943))

(assert (= (and b!7003943 c!1300440) b!7003942))

(assert (= (and b!7003943 (not c!1300440)) b!7003944))

(assert (= (and d!2183258 res!2857391) b!7003937))

(assert (= (and b!7003937 res!2857390) b!7003940))

(assert (= (and b!7003940 res!2857392) b!7003938))

(assert (= (and d!2183258 (not res!2857393)) b!7003945))

(assert (=> b!7003941 m!7699370))

(declare-fun m!7699720 () Bool)

(assert (=> d!2183258 m!7699720))

(declare-fun m!7699722 () Bool)

(assert (=> d!2183258 m!7699722))

(assert (=> d!2183258 m!7699084))

(assert (=> b!7003944 m!7699376))

(assert (=> b!7003944 m!7699376))

(assert (=> b!7003944 m!7699378))

(assert (=> b!7003944 m!7699380))

(assert (=> b!7003944 m!7699376))

(declare-fun m!7699724 () Bool)

(assert (=> b!7003944 m!7699724))

(assert (=> b!7003945 m!7699720))

(declare-fun m!7699726 () Bool)

(assert (=> b!7003938 m!7699726))

(declare-fun m!7699728 () Bool)

(assert (=> b!7003938 m!7699728))

(assert (=> b!7003940 m!7699726))

(declare-fun m!7699730 () Bool)

(assert (=> b!7003940 m!7699730))

(assert (=> b!7003937 m!7699726))

(declare-fun m!7699732 () Bool)

(assert (=> b!7003937 m!7699732))

(assert (=> b!7003612 d!2183258))

(declare-fun d!2183260 () Bool)

(assert (=> d!2183260 (isDefined!13486 (findConcatSeparationZippers!301 lt!2498342 lt!2498332 Nil!67262 s!7408 s!7408))))

(declare-fun lt!2498664 () Unit!161220)

(declare-fun choose!52552 ((Set Context!12552) (Set Context!12552) List!67386 List!67386 List!67386 List!67386 List!67386) Unit!161220)

(assert (=> d!2183260 (= lt!2498664 (choose!52552 lt!2498342 lt!2498332 (_1!37256 lt!2498357) (_2!37256 lt!2498357) s!7408 Nil!67262 s!7408))))

(assert (=> d!2183260 (matchZipper!2820 lt!2498342 (_1!37256 lt!2498357))))

(assert (=> d!2183260 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!3 lt!2498342 lt!2498332 (_1!37256 lt!2498357) (_2!37256 lt!2498357) s!7408 Nil!67262 s!7408) lt!2498664)))

(declare-fun bs!1865178 () Bool)

(assert (= bs!1865178 d!2183260))

(assert (=> bs!1865178 m!7699086))

(assert (=> bs!1865178 m!7699086))

(assert (=> bs!1865178 m!7699088))

(declare-fun m!7699734 () Bool)

(assert (=> bs!1865178 m!7699734))

(assert (=> bs!1865178 m!7699078))

(assert (=> b!7003612 d!2183260))

(declare-fun condSetEmpty!48168 () Bool)

(assert (=> setNonEmpty!48162 (= condSetEmpty!48168 (= setRest!48162 (as set.empty (Set Context!12552))))))

(declare-fun setRes!48168 () Bool)

(assert (=> setNonEmpty!48162 (= tp!1931401 setRes!48168)))

(declare-fun setIsEmpty!48168 () Bool)

(assert (=> setIsEmpty!48168 setRes!48168))

(declare-fun e!4209930 () Bool)

(declare-fun setNonEmpty!48168 () Bool)

(declare-fun tp!1931421 () Bool)

(declare-fun setElem!48168 () Context!12552)

(assert (=> setNonEmpty!48168 (= setRes!48168 (and tp!1931421 (inv!86060 setElem!48168) e!4209930))))

(declare-fun setRest!48168 () (Set Context!12552))

(assert (=> setNonEmpty!48168 (= setRest!48162 (set.union (set.insert setElem!48168 (as set.empty (Set Context!12552))) setRest!48168))))

(declare-fun b!7003950 () Bool)

(declare-fun tp!1931422 () Bool)

(assert (=> b!7003950 (= e!4209930 tp!1931422)))

(assert (= (and setNonEmpty!48162 condSetEmpty!48168) setIsEmpty!48168))

(assert (= (and setNonEmpty!48162 (not condSetEmpty!48168)) setNonEmpty!48168))

(assert (= setNonEmpty!48168 b!7003950))

(declare-fun m!7699736 () Bool)

(assert (=> setNonEmpty!48168 m!7699736))

(declare-fun b!7003955 () Bool)

(declare-fun e!4209933 () Bool)

(declare-fun tp!1931425 () Bool)

(assert (=> b!7003955 (= e!4209933 (and tp_is_empty!43785 tp!1931425))))

(assert (=> b!7003599 (= tp!1931402 e!4209933)))

(assert (= (and b!7003599 (is-Cons!67262 (t!381139 s!7408))) b!7003955))

(declare-fun b!7003960 () Bool)

(declare-fun e!4209936 () Bool)

(declare-fun tp!1931430 () Bool)

(declare-fun tp!1931431 () Bool)

(assert (=> b!7003960 (= e!4209936 (and tp!1931430 tp!1931431))))

(assert (=> b!7003594 (= tp!1931403 e!4209936)))

(assert (= (and b!7003594 (is-Cons!67261 (exprs!6776 ct2!306))) b!7003960))

(declare-fun b!7003961 () Bool)

(declare-fun e!4209937 () Bool)

(declare-fun tp!1931432 () Bool)

(declare-fun tp!1931433 () Bool)

(assert (=> b!7003961 (= e!4209937 (and tp!1931432 tp!1931433))))

(assert (=> b!7003588 (= tp!1931404 e!4209937)))

(assert (= (and b!7003588 (is-Cons!67261 (exprs!6776 setElem!48162))) b!7003961))

(declare-fun b_lambda!263897 () Bool)

(assert (= b_lambda!263895 (or b!7003609 b_lambda!263897)))

(declare-fun bs!1865179 () Bool)

(declare-fun d!2183262 () Bool)

(assert (= bs!1865179 (and d!2183262 b!7003609)))

(assert (=> bs!1865179 (= (dynLambda!27022 lambda!406125 lt!2498353) (derivationStepZipperUp!1930 lt!2498353 (h!73710 s!7408)))))

(assert (=> bs!1865179 m!7699138))

(assert (=> d!2183242 d!2183262))

(declare-fun b_lambda!263899 () Bool)

(assert (= b_lambda!263883 (or b!7003609 b_lambda!263899)))

(declare-fun bs!1865180 () Bool)

(declare-fun d!2183264 () Bool)

(assert (= bs!1865180 (and d!2183264 b!7003609)))

(assert (=> bs!1865180 (= (dynLambda!27022 lambda!406125 lt!2498346) (derivationStepZipperUp!1930 lt!2498346 (h!73710 s!7408)))))

(assert (=> bs!1865180 m!7699158))

(assert (=> d!2183146 d!2183264))

(declare-fun b_lambda!263901 () Bool)

(assert (= b_lambda!263893 (or b!7003595 b_lambda!263901)))

(declare-fun bs!1865181 () Bool)

(declare-fun d!2183266 () Bool)

(assert (= bs!1865181 (and d!2183266 b!7003595)))

(declare-fun lt!2498665 () Unit!161220)

(assert (=> bs!1865181 (= lt!2498665 (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498655) (exprs!6776 ct2!306) lambda!406124))))

(assert (=> bs!1865181 (= (dynLambda!27025 lambda!406123 lt!2498655) (Context!12553 (++!15261 (exprs!6776 lt!2498655) (exprs!6776 ct2!306))))))

(declare-fun m!7699738 () Bool)

(assert (=> bs!1865181 m!7699738))

(declare-fun m!7699740 () Bool)

(assert (=> bs!1865181 m!7699740))

(assert (=> d!2183236 d!2183266))

(declare-fun b_lambda!263903 () Bool)

(assert (= b_lambda!263887 (or b!7003609 b_lambda!263903)))

(declare-fun bs!1865182 () Bool)

(declare-fun d!2183268 () Bool)

(assert (= bs!1865182 (and d!2183268 b!7003609)))

(assert (=> bs!1865182 (= (dynLambda!27022 lambda!406125 lt!2498376) (derivationStepZipperUp!1930 lt!2498376 (h!73710 s!7408)))))

(assert (=> bs!1865182 m!7699120))

(assert (=> d!2183182 d!2183268))

(declare-fun b_lambda!263905 () Bool)

(assert (= b_lambda!263889 (or b!7003609 b_lambda!263905)))

(declare-fun bs!1865183 () Bool)

(declare-fun d!2183270 () Bool)

(assert (= bs!1865183 (and d!2183270 b!7003609)))

(assert (=> bs!1865183 (= (dynLambda!27022 lambda!406125 lt!2498391) (derivationStepZipperUp!1930 lt!2498391 (h!73710 s!7408)))))

(assert (=> bs!1865183 m!7699064))

(assert (=> d!2183218 d!2183270))

(declare-fun b_lambda!263907 () Bool)

(assert (= b_lambda!263885 (or b!7003608 b_lambda!263907)))

(declare-fun bs!1865184 () Bool)

(declare-fun d!2183272 () Bool)

(assert (= bs!1865184 (and d!2183272 b!7003608)))

(assert (=> bs!1865184 (= (dynLambda!27024 lambda!406122 lt!2498620) (matchZipper!2820 (set.insert lt!2498620 (as set.empty (Set Context!12552))) s!7408))))

(declare-fun m!7699742 () Bool)

(assert (=> bs!1865184 m!7699742))

(assert (=> bs!1865184 m!7699742))

(declare-fun m!7699744 () Bool)

(assert (=> bs!1865184 m!7699744))

(assert (=> d!2183154 d!2183272))

(declare-fun b_lambda!263909 () Bool)

(assert (= b_lambda!263891 (or b!7003595 b_lambda!263909)))

(declare-fun bs!1865185 () Bool)

(declare-fun d!2183274 () Bool)

(assert (= bs!1865185 (and d!2183274 b!7003595)))

(declare-fun lt!2498666 () Unit!161220)

(assert (=> bs!1865185 (= lt!2498666 (lemmaConcatPreservesForall!616 (exprs!6776 lt!2498376) (exprs!6776 ct2!306) lambda!406124))))

(assert (=> bs!1865185 (= (dynLambda!27025 lambda!406123 lt!2498376) (Context!12553 (++!15261 (exprs!6776 lt!2498376) (exprs!6776 ct2!306))))))

(declare-fun m!7699746 () Bool)

(assert (=> bs!1865185 m!7699746))

(declare-fun m!7699748 () Bool)

(assert (=> bs!1865185 m!7699748))

(assert (=> d!2183228 d!2183274))

(push 1)

(assert (not b!7003757))

(assert (not d!2183236))

(assert (not d!2183184))

(assert (not b!7003784))

(assert (not b!7003781))

(assert (not d!2183216))

(assert (not d!2183244))

(assert (not b!7003766))

(assert (not d!2183242))

(assert (not d!2183258))

(assert (not bm!635931))

(assert (not d!2183154))

(assert (not b!7003897))

(assert (not b!7003801))

(assert (not b!7003794))

(assert (not b!7003756))

(assert (not d!2183174))

(assert (not b!7003937))

(assert (not d!2183252))

(assert (not b!7003804))

(assert (not d!2183230))

(assert (not b!7003930))

(assert (not d!2183204))

(assert (not b!7003736))

(assert (not b!7003944))

(assert (not d!2183166))

(assert (not bm!635915))

(assert (not b!7003926))

(assert (not b!7003902))

(assert (not b!7003765))

(assert (not b!7003961))

(assert (not b!7003827))

(assert (not b!7003907))

(assert (not b!7003831))

(assert (not bm!635933))

(assert (not d!2183254))

(assert (not b!7003785))

(assert (not bm!635942))

(assert (not b!7003919))

(assert (not b!7003950))

(assert (not d!2183168))

(assert (not b!7003938))

(assert (not b!7003788))

(assert (not d!2183124))

(assert (not b_lambda!263899))

(assert (not b!7003830))

(assert (not d!2183148))

(assert (not b!7003935))

(assert (not b!7003779))

(assert (not b!7003815))

(assert (not d!2183218))

(assert (not b!7003912))

(assert (not b!7003941))

(assert (not bm!635935))

(assert (not d!2183250))

(assert (not d!2183158))

(assert (not b!7003872))

(assert (not d!2183164))

(assert (not d!2183208))

(assert (not b!7003928))

(assert (not bm!635936))

(assert (not bs!1865180))

(assert (not d!2183132))

(assert (not d!2183160))

(assert (not d!2183182))

(assert (not d!2183178))

(assert (not bs!1865181))

(assert (not bm!635914))

(assert (not setNonEmpty!48168))

(assert (not bs!1865184))

(assert (not d!2183234))

(assert (not d!2183150))

(assert (not b!7003920))

(assert (not b!7003901))

(assert (not b!7003914))

(assert (not b!7003800))

(assert (not b_lambda!263897))

(assert (not d!2183248))

(assert (not b!7003878))

(assert (not b!7003940))

(assert (not d!2183122))

(assert (not d!2183192))

(assert (not b!7003802))

(assert (not b!7003898))

(assert (not b!7003763))

(assert (not bm!635940))

(assert (not bm!635916))

(assert (not d!2183260))

(assert (not b!7003798))

(assert (not b!7003803))

(assert (not b!7003837))

(assert (not b!7003862))

(assert tp_is_empty!43785)

(assert (not d!2183240))

(assert (not bm!635929))

(assert (not b!7003817))

(assert (not bs!1865185))

(assert (not d!2183206))

(assert (not b!7003932))

(assert (not b!7003927))

(assert (not b!7003832))

(assert (not b!7003931))

(assert (not d!2183256))

(assert (not d!2183210))

(assert (not b!7003828))

(assert (not b!7003874))

(assert (not b_lambda!263909))

(assert (not d!2183130))

(assert (not b!7003934))

(assert (not d!2183246))

(assert (not d!2183140))

(assert (not b!7003929))

(assert (not d!2183190))

(assert (not b_lambda!263903))

(assert (not b!7003737))

(assert (not b!7003819))

(assert (not b!7003795))

(assert (not d!2183138))

(assert (not d!2183188))

(assert (not d!2183212))

(assert (not b!7003829))

(assert (not b!7003759))

(assert (not b!7003799))

(assert (not b_lambda!263905))

(assert (not d!2183156))

(assert (not b_lambda!263907))

(assert (not b!7003916))

(assert (not d!2183220))

(assert (not b!7003822))

(assert (not bs!1865183))

(assert (not b!7003955))

(assert (not d!2183128))

(assert (not d!2183232))

(assert (not bs!1865179))

(assert (not b!7003960))

(assert (not d!2183126))

(assert (not bs!1865182))

(assert (not d!2183170))

(assert (not d!2183228))

(assert (not b!7003764))

(assert (not d!2183142))

(assert (not b!7003760))

(assert (not bm!635938))

(assert (not b!7003824))

(assert (not d!2183146))

(assert (not b!7003904))

(assert (not d!2183152))

(assert (not b_lambda!263901))

(assert (not b!7003945))

(assert (not b!7003900))

(assert (not b!7003814))

(assert (not d!2183136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

