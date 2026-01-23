; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672864 () Bool)

(assert start!672864)

(declare-fun b!6996717 () Bool)

(assert (=> b!6996717 true))

(declare-fun b!6996710 () Bool)

(assert (=> b!6996710 true))

(declare-fun b!6996719 () Bool)

(assert (=> b!6996719 true))

(declare-fun b!6996691 () Bool)

(declare-fun res!2854170 () Bool)

(declare-fun e!4205547 () Bool)

(assert (=> b!6996691 (=> res!2854170 e!4205547)))

(declare-datatypes ((C!34790 0))(
  ( (C!34791 (val!27097 Int)) )
))
(declare-datatypes ((Regex!17260 0))(
  ( (ElementMatch!17260 (c!1298311 C!34790)) (Concat!26105 (regOne!35032 Regex!17260) (regTwo!35032 Regex!17260)) (EmptyExpr!17260) (Star!17260 (reg!17589 Regex!17260)) (EmptyLang!17260) (Union!17260 (regOne!35033 Regex!17260) (regTwo!35033 Regex!17260)) )
))
(declare-datatypes ((List!67325 0))(
  ( (Nil!67201) (Cons!67201 (h!73649 Regex!17260) (t!381074 List!67325)) )
))
(declare-datatypes ((Context!12512 0))(
  ( (Context!12513 (exprs!6756 List!67325)) )
))
(declare-fun lt!2493591 () (Set Context!12512))

(declare-datatypes ((List!67326 0))(
  ( (Nil!67202) (Cons!67202 (h!73650 C!34790) (t!381075 List!67326)) )
))
(declare-datatypes ((tuple2!67866 0))(
  ( (tuple2!67867 (_1!37236 List!67326) (_2!37236 List!67326)) )
))
(declare-fun lt!2493566 () tuple2!67866)

(declare-fun matchZipper!2800 ((Set Context!12512) List!67326) Bool)

(assert (=> b!6996691 (= res!2854170 (not (matchZipper!2800 lt!2493591 (_2!37236 lt!2493566))))))

(declare-fun b!6996692 () Bool)

(declare-fun e!4205544 () Bool)

(declare-fun tp!1930657 () Bool)

(assert (=> b!6996692 (= e!4205544 tp!1930657)))

(declare-fun b!6996693 () Bool)

(declare-fun res!2854173 () Bool)

(declare-fun e!4205531 () Bool)

(assert (=> b!6996693 (=> res!2854173 e!4205531)))

(declare-fun lt!2493561 () Context!12512)

(declare-fun lt!2493575 () Int)

(declare-datatypes ((List!67327 0))(
  ( (Nil!67203) (Cons!67203 (h!73651 Context!12512) (t!381076 List!67327)) )
))
(declare-fun zipperDepthTotal!481 (List!67327) Int)

(assert (=> b!6996693 (= res!2854173 (>= (zipperDepthTotal!481 (Cons!67203 lt!2493561 Nil!67203)) lt!2493575))))

(declare-fun b!6996694 () Bool)

(declare-fun e!4205529 () Bool)

(declare-fun lt!2493594 () (Set Context!12512))

(declare-fun s!7408 () List!67326)

(assert (=> b!6996694 (= e!4205529 (not (matchZipper!2800 lt!2493594 (t!381075 s!7408))))))

(declare-fun lt!2493545 () List!67325)

(declare-datatypes ((Unit!161177 0))(
  ( (Unit!161178) )
))
(declare-fun lt!2493556 () Unit!161177)

(declare-fun ct2!306 () Context!12512)

(declare-fun lambda!404459 () Int)

(declare-fun lemmaConcatPreservesForall!596 (List!67325 List!67325 Int) Unit!161177)

(assert (=> b!6996694 (= lt!2493556 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun setIsEmpty!48014 () Bool)

(declare-fun setRes!48014 () Bool)

(assert (=> setIsEmpty!48014 setRes!48014))

(declare-fun b!6996695 () Bool)

(declare-fun e!4205543 () Bool)

(declare-fun lt!2493587 () Context!12512)

(declare-fun validRegex!8870 (Regex!17260) Bool)

(assert (=> b!6996695 (= e!4205543 (validRegex!8870 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun setElem!48014 () Context!12512)

(declare-fun setNonEmpty!48014 () Bool)

(declare-fun tp!1930660 () Bool)

(declare-fun inv!86010 (Context!12512) Bool)

(assert (=> setNonEmpty!48014 (= setRes!48014 (and tp!1930660 (inv!86010 setElem!48014) e!4205544))))

(declare-fun z1!570 () (Set Context!12512))

(declare-fun setRest!48014 () (Set Context!12512))

(assert (=> setNonEmpty!48014 (= z1!570 (set.union (set.insert setElem!48014 (as set.empty (Set Context!12512))) setRest!48014))))

(declare-fun b!6996696 () Bool)

(declare-fun res!2854171 () Bool)

(declare-fun e!4205536 () Bool)

(assert (=> b!6996696 (=> res!2854171 e!4205536)))

(assert (=> b!6996696 (= res!2854171 (not (is-Cons!67201 (exprs!6756 lt!2493587))))))

(declare-fun b!6996697 () Bool)

(declare-fun res!2854175 () Bool)

(assert (=> b!6996697 (=> res!2854175 e!4205536)))

(declare-fun isEmpty!39225 (List!67325) Bool)

(assert (=> b!6996697 (= res!2854175 (isEmpty!39225 (exprs!6756 lt!2493587)))))

(declare-fun b!6996698 () Bool)

(declare-fun e!4205539 () Bool)

(assert (=> b!6996698 (= e!4205536 e!4205539)))

(declare-fun res!2854179 () Bool)

(assert (=> b!6996698 (=> res!2854179 e!4205539)))

(declare-fun nullable!7020 (Regex!17260) Bool)

(assert (=> b!6996698 (= res!2854179 (not (nullable!7020 (h!73649 (exprs!6756 lt!2493587)))))))

(assert (=> b!6996698 (= lt!2493561 (Context!12513 lt!2493545))))

(declare-fun tail!13288 (List!67325) List!67325)

(assert (=> b!6996698 (= lt!2493545 (tail!13288 (exprs!6756 lt!2493587)))))

(declare-fun b!6996699 () Bool)

(declare-fun e!4205535 () Bool)

(assert (=> b!6996699 (= e!4205539 e!4205535)))

(declare-fun res!2854181 () Bool)

(assert (=> b!6996699 (=> res!2854181 e!4205535)))

(declare-fun lt!2493557 () (Set Context!12512))

(declare-fun lt!2493546 () (Set Context!12512))

(assert (=> b!6996699 (= res!2854181 (not (= lt!2493557 lt!2493546)))))

(declare-fun lt!2493581 () (Set Context!12512))

(assert (=> b!6996699 (= lt!2493546 (set.union lt!2493581 lt!2493594))))

(declare-fun lt!2493586 () Context!12512)

(declare-fun derivationStepZipperUp!1910 (Context!12512 C!34790) (Set Context!12512))

(assert (=> b!6996699 (= lt!2493594 (derivationStepZipperUp!1910 lt!2493586 (h!73650 s!7408)))))

(declare-fun derivationStepZipperDown!1978 (Regex!17260 Context!12512 C!34790) (Set Context!12512))

(assert (=> b!6996699 (= lt!2493581 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) lt!2493586 (h!73650 s!7408)))))

(declare-fun ++!15221 (List!67325 List!67325) List!67325)

(assert (=> b!6996699 (= lt!2493586 (Context!12513 (++!15221 lt!2493545 (exprs!6756 ct2!306))))))

(declare-fun lt!2493597 () Unit!161177)

(assert (=> b!6996699 (= lt!2493597 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493572 () Unit!161177)

(assert (=> b!6996699 (= lt!2493572 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun b!6996700 () Bool)

(declare-fun res!2854162 () Bool)

(assert (=> b!6996700 (=> res!2854162 e!4205543)))

(declare-fun lt!2493559 () (Set Context!12512))

(assert (=> b!6996700 (= res!2854162 (not (= lt!2493559 (set.union (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) lt!2493561 (h!73650 s!7408)) (derivationStepZipperUp!1910 lt!2493561 (h!73650 s!7408))))))))

(declare-fun b!6996701 () Bool)

(declare-fun res!2854169 () Bool)

(declare-fun e!4205545 () Bool)

(assert (=> b!6996701 (=> res!2854169 e!4205545)))

(declare-fun lt!2493578 () Bool)

(assert (=> b!6996701 (= res!2854169 (not lt!2493578))))

(declare-fun b!6996702 () Bool)

(declare-fun e!4205540 () Bool)

(declare-fun e!4205537 () Bool)

(assert (=> b!6996702 (= e!4205540 e!4205537)))

(declare-fun res!2854183 () Bool)

(assert (=> b!6996702 (=> res!2854183 e!4205537)))

(declare-fun lt!2493574 () (Set Context!12512))

(declare-fun derivationStepZipper!2740 ((Set Context!12512) C!34790) (Set Context!12512))

(assert (=> b!6996702 (= res!2854183 (not (= (derivationStepZipper!2740 lt!2493574 (h!73650 s!7408)) lt!2493594)))))

(declare-fun lt!2493551 () Unit!161177)

(assert (=> b!6996702 (= lt!2493551 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493596 () Unit!161177)

(assert (=> b!6996702 (= lt!2493596 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lambda!404460 () Int)

(declare-fun flatMap!2246 ((Set Context!12512) Int) (Set Context!12512))

(assert (=> b!6996702 (= (flatMap!2246 lt!2493574 lambda!404460) (derivationStepZipperUp!1910 lt!2493586 (h!73650 s!7408)))))

(declare-fun lt!2493593 () Unit!161177)

(declare-fun lemmaFlatMapOnSingletonSet!1761 ((Set Context!12512) Context!12512 Int) Unit!161177)

(assert (=> b!6996702 (= lt!2493593 (lemmaFlatMapOnSingletonSet!1761 lt!2493574 lt!2493586 lambda!404460))))

(assert (=> b!6996702 (= lt!2493574 (set.insert lt!2493586 (as set.empty (Set Context!12512))))))

(declare-fun lt!2493588 () Unit!161177)

(assert (=> b!6996702 (= lt!2493588 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493589 () Unit!161177)

(assert (=> b!6996702 (= lt!2493589 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun b!6996703 () Bool)

(declare-fun res!2854160 () Bool)

(assert (=> b!6996703 (=> res!2854160 e!4205547)))

(declare-fun isEmpty!39226 (List!67326) Bool)

(assert (=> b!6996703 (= res!2854160 (isEmpty!39226 (_1!37236 lt!2493566)))))

(declare-fun b!6996704 () Bool)

(declare-fun e!4205534 () Bool)

(declare-fun tp_is_empty!43745 () Bool)

(declare-fun tp!1930659 () Bool)

(assert (=> b!6996704 (= e!4205534 (and tp_is_empty!43745 tp!1930659))))

(declare-fun b!6996705 () Bool)

(declare-fun res!2854174 () Bool)

(declare-fun e!4205533 () Bool)

(assert (=> b!6996705 (=> (not res!2854174) (not e!4205533))))

(assert (=> b!6996705 (= res!2854174 (is-Cons!67202 s!7408))))

(declare-fun b!6996706 () Bool)

(assert (=> b!6996706 (= e!4205531 e!4205547)))

(declare-fun res!2854168 () Bool)

(assert (=> b!6996706 (=> res!2854168 e!4205547)))

(declare-fun lt!2493576 () (Set Context!12512))

(assert (=> b!6996706 (= res!2854168 (not (matchZipper!2800 lt!2493576 (_1!37236 lt!2493566))))))

(declare-datatypes ((Option!16765 0))(
  ( (None!16764) (Some!16764 (v!53038 tuple2!67866)) )
))
(declare-fun lt!2493579 () Option!16765)

(declare-fun get!23560 (Option!16765) tuple2!67866)

(assert (=> b!6996706 (= lt!2493566 (get!23560 lt!2493579))))

(declare-fun isDefined!13466 (Option!16765) Bool)

(assert (=> b!6996706 (isDefined!13466 lt!2493579)))

(declare-fun findConcatSeparationZippers!281 ((Set Context!12512) (Set Context!12512) List!67326 List!67326 List!67326) Option!16765)

(assert (=> b!6996706 (= lt!2493579 (findConcatSeparationZippers!281 lt!2493576 lt!2493591 Nil!67202 s!7408 s!7408))))

(assert (=> b!6996706 (= lt!2493591 (set.insert ct2!306 (as set.empty (Set Context!12512))))))

(declare-fun lt!2493584 () Unit!161177)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!281 ((Set Context!12512) Context!12512 List!67326) Unit!161177)

(assert (=> b!6996706 (= lt!2493584 (lemmaConcatZipperMatchesStringThenFindConcatDefined!281 lt!2493576 ct2!306 s!7408))))

(declare-fun b!6996707 () Bool)

(declare-fun e!4205541 () Bool)

(assert (=> b!6996707 (= e!4205541 e!4205531)))

(declare-fun res!2854182 () Bool)

(assert (=> b!6996707 (=> res!2854182 e!4205531)))

(declare-fun lt!2493568 () Int)

(declare-fun contextDepthTotal!453 (Context!12512) Int)

(assert (=> b!6996707 (= res!2854182 (<= lt!2493568 (contextDepthTotal!453 lt!2493561)))))

(assert (=> b!6996707 (<= lt!2493568 lt!2493575)))

(declare-fun lt!2493565 () List!67327)

(assert (=> b!6996707 (= lt!2493575 (zipperDepthTotal!481 lt!2493565))))

(assert (=> b!6996707 (= lt!2493568 (contextDepthTotal!453 lt!2493587))))

(declare-fun lt!2493577 () Unit!161177)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!21 (List!67327 Context!12512) Unit!161177)

(assert (=> b!6996707 (= lt!2493577 (lemmaTotalDepthZipperLargerThanOfAnyContext!21 lt!2493565 lt!2493587))))

(declare-fun toList!10620 ((Set Context!12512)) List!67327)

(assert (=> b!6996707 (= lt!2493565 (toList!10620 z1!570))))

(declare-fun lt!2493554 () Unit!161177)

(assert (=> b!6996707 (= lt!2493554 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493580 () Unit!161177)

(assert (=> b!6996707 (= lt!2493580 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493563 () Unit!161177)

(assert (=> b!6996707 (= lt!2493563 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(assert (=> b!6996707 (= (flatMap!2246 lt!2493576 lambda!404460) (derivationStepZipperUp!1910 lt!2493561 (h!73650 s!7408)))))

(declare-fun lt!2493549 () Unit!161177)

(assert (=> b!6996707 (= lt!2493549 (lemmaFlatMapOnSingletonSet!1761 lt!2493576 lt!2493561 lambda!404460))))

(declare-fun lambda!404458 () Int)

(declare-fun map!15537 ((Set Context!12512) Int) (Set Context!12512))

(assert (=> b!6996707 (= (map!15537 lt!2493576 lambda!404458) (set.insert (Context!12513 (++!15221 lt!2493545 (exprs!6756 ct2!306))) (as set.empty (Set Context!12512))))))

(declare-fun lt!2493550 () Unit!161177)

(assert (=> b!6996707 (= lt!2493550 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493583 () Unit!161177)

(declare-fun lemmaMapOnSingletonSet!325 ((Set Context!12512) Context!12512 Int) Unit!161177)

(assert (=> b!6996707 (= lt!2493583 (lemmaMapOnSingletonSet!325 lt!2493576 lt!2493561 lambda!404458))))

(assert (=> b!6996707 (= lt!2493576 (set.insert lt!2493561 (as set.empty (Set Context!12512))))))

(declare-fun b!6996708 () Bool)

(assert (=> b!6996708 (= e!4205547 e!4205543)))

(declare-fun res!2854161 () Bool)

(assert (=> b!6996708 (=> res!2854161 e!4205543)))

(declare-fun lt!2493558 () (Set Context!12512))

(assert (=> b!6996708 (= res!2854161 (not (= (derivationStepZipper!2740 lt!2493558 (h!73650 s!7408)) lt!2493559)))))

(assert (=> b!6996708 (= lt!2493559 (derivationStepZipperUp!1910 lt!2493587 (h!73650 s!7408)))))

(assert (=> b!6996708 (= (flatMap!2246 lt!2493558 lambda!404460) (derivationStepZipperUp!1910 lt!2493587 (h!73650 s!7408)))))

(declare-fun lt!2493585 () Unit!161177)

(assert (=> b!6996708 (= lt!2493585 (lemmaFlatMapOnSingletonSet!1761 lt!2493558 lt!2493587 lambda!404460))))

(assert (=> b!6996708 (= lt!2493558 (set.insert lt!2493587 (as set.empty (Set Context!12512))))))

(declare-fun b!6996709 () Bool)

(declare-fun e!4205532 () Bool)

(declare-fun e!4205530 () Bool)

(assert (=> b!6996709 (= e!4205532 e!4205530)))

(declare-fun res!2854178 () Bool)

(assert (=> b!6996709 (=> res!2854178 e!4205530)))

(declare-fun lt!2493595 () (Set Context!12512))

(declare-fun lt!2493552 () (Set Context!12512))

(assert (=> b!6996709 (= res!2854178 (not (= lt!2493595 lt!2493552)))))

(declare-fun lt!2493570 () Context!12512)

(assert (=> b!6996709 (= lt!2493595 (set.insert lt!2493570 (as set.empty (Set Context!12512))))))

(declare-fun lt!2493547 () Unit!161177)

(assert (=> b!6996709 (= lt!2493547 (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459))))

(declare-fun e!4205546 () Bool)

(assert (=> b!6996710 (= e!4205546 e!4205532)))

(declare-fun res!2854167 () Bool)

(assert (=> b!6996710 (=> res!2854167 e!4205532)))

(declare-fun lt!2493567 () Context!12512)

(assert (=> b!6996710 (= res!2854167 (or (not (= lt!2493570 lt!2493567)) (not (set.member lt!2493587 z1!570))))))

(assert (=> b!6996710 (= lt!2493570 (Context!12513 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306))))))

(declare-fun lt!2493592 () Unit!161177)

(assert (=> b!6996710 (= lt!2493592 (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459))))

(declare-fun mapPost2!115 ((Set Context!12512) Int Context!12512) Context!12512)

(assert (=> b!6996710 (= lt!2493587 (mapPost2!115 z1!570 lambda!404458 lt!2493567))))

(declare-fun b!6996711 () Bool)

(declare-fun res!2854172 () Bool)

(assert (=> b!6996711 (=> res!2854172 e!4205546)))

(declare-fun lt!2493564 () (Set Context!12512))

(assert (=> b!6996711 (= res!2854172 (not (set.member lt!2493567 lt!2493564)))))

(declare-fun b!6996712 () Bool)

(declare-fun e!4205542 () Bool)

(declare-fun tp!1930658 () Bool)

(assert (=> b!6996712 (= e!4205542 tp!1930658)))

(declare-fun b!6996713 () Bool)

(assert (=> b!6996713 (= e!4205537 e!4205541)))

(declare-fun res!2854166 () Bool)

(assert (=> b!6996713 (=> res!2854166 e!4205541)))

(assert (=> b!6996713 (= res!2854166 (not (matchZipper!2800 lt!2493574 s!7408)))))

(declare-fun lt!2493553 () Unit!161177)

(assert (=> b!6996713 (= lt!2493553 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun b!6996714 () Bool)

(assert (=> b!6996714 (= e!4205535 e!4205545)))

(declare-fun res!2854176 () Bool)

(assert (=> b!6996714 (=> res!2854176 e!4205545)))

(assert (=> b!6996714 (= res!2854176 e!4205529)))

(declare-fun res!2854165 () Bool)

(assert (=> b!6996714 (=> (not res!2854165) (not e!4205529))))

(declare-fun lt!2493582 () Bool)

(assert (=> b!6996714 (= res!2854165 (not (= lt!2493578 lt!2493582)))))

(assert (=> b!6996714 (= lt!2493578 (matchZipper!2800 lt!2493557 (t!381075 s!7408)))))

(declare-fun lt!2493562 () Unit!161177)

(assert (=> b!6996714 (= lt!2493562 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun e!4205538 () Bool)

(assert (=> b!6996714 (= (matchZipper!2800 lt!2493546 (t!381075 s!7408)) e!4205538)))

(declare-fun res!2854184 () Bool)

(assert (=> b!6996714 (=> res!2854184 e!4205538)))

(assert (=> b!6996714 (= res!2854184 lt!2493582)))

(assert (=> b!6996714 (= lt!2493582 (matchZipper!2800 lt!2493581 (t!381075 s!7408)))))

(declare-fun lt!2493571 () Unit!161177)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1433 ((Set Context!12512) (Set Context!12512) List!67326) Unit!161177)

(assert (=> b!6996714 (= lt!2493571 (lemmaZipperConcatMatchesSameAsBothZippers!1433 lt!2493581 lt!2493594 (t!381075 s!7408)))))

(declare-fun lt!2493573 () Unit!161177)

(assert (=> b!6996714 (= lt!2493573 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun lt!2493548 () Unit!161177)

(assert (=> b!6996714 (= lt!2493548 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(declare-fun b!6996715 () Bool)

(assert (=> b!6996715 (= e!4205538 (matchZipper!2800 lt!2493594 (t!381075 s!7408)))))

(declare-fun b!6996716 () Bool)

(declare-fun res!2854164 () Bool)

(assert (=> b!6996716 (=> res!2854164 e!4205547)))

(declare-fun ++!15222 (List!67326 List!67326) List!67326)

(assert (=> b!6996716 (= res!2854164 (not (= (++!15222 (_1!37236 lt!2493566) (_2!37236 lt!2493566)) s!7408)))))

(assert (=> b!6996717 (= e!4205533 (not e!4205546))))

(declare-fun res!2854163 () Bool)

(assert (=> b!6996717 (=> res!2854163 e!4205546)))

(assert (=> b!6996717 (= res!2854163 (not (matchZipper!2800 lt!2493552 s!7408)))))

(assert (=> b!6996717 (= lt!2493552 (set.insert lt!2493567 (as set.empty (Set Context!12512))))))

(declare-fun lambda!404457 () Int)

(declare-fun getWitness!1173 ((Set Context!12512) Int) Context!12512)

(assert (=> b!6996717 (= lt!2493567 (getWitness!1173 lt!2493564 lambda!404457))))

(declare-fun lt!2493590 () List!67327)

(declare-fun exists!3069 (List!67327 Int) Bool)

(assert (=> b!6996717 (exists!3069 lt!2493590 lambda!404457)))

(declare-fun lt!2493544 () Unit!161177)

(declare-fun lemmaZipperMatchesExistsMatchingContext!229 (List!67327 List!67326) Unit!161177)

(assert (=> b!6996717 (= lt!2493544 (lemmaZipperMatchesExistsMatchingContext!229 lt!2493590 s!7408))))

(assert (=> b!6996717 (= lt!2493590 (toList!10620 lt!2493564))))

(declare-fun res!2854159 () Bool)

(assert (=> start!672864 (=> (not res!2854159) (not e!4205533))))

(assert (=> start!672864 (= res!2854159 (matchZipper!2800 lt!2493564 s!7408))))

(declare-fun appendTo!381 ((Set Context!12512) Context!12512) (Set Context!12512))

(assert (=> start!672864 (= lt!2493564 (appendTo!381 z1!570 ct2!306))))

(assert (=> start!672864 e!4205533))

(declare-fun condSetEmpty!48014 () Bool)

(assert (=> start!672864 (= condSetEmpty!48014 (= z1!570 (as set.empty (Set Context!12512))))))

(assert (=> start!672864 setRes!48014))

(assert (=> start!672864 (and (inv!86010 ct2!306) e!4205542)))

(assert (=> start!672864 e!4205534))

(declare-fun b!6996718 () Bool)

(assert (=> b!6996718 (= e!4205545 e!4205540)))

(declare-fun res!2854180 () Bool)

(assert (=> b!6996718 (=> res!2854180 e!4205540)))

(assert (=> b!6996718 (= res!2854180 (not (matchZipper!2800 lt!2493594 (t!381075 s!7408))))))

(declare-fun lt!2493569 () Unit!161177)

(assert (=> b!6996718 (= lt!2493569 (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(assert (=> b!6996719 (= e!4205530 e!4205536)))

(declare-fun res!2854177 () Bool)

(assert (=> b!6996719 (=> res!2854177 e!4205536)))

(assert (=> b!6996719 (= res!2854177 (not (= (derivationStepZipper!2740 lt!2493595 (h!73650 s!7408)) lt!2493557)))))

(assert (=> b!6996719 (= (flatMap!2246 lt!2493595 lambda!404460) (derivationStepZipperUp!1910 lt!2493570 (h!73650 s!7408)))))

(declare-fun lt!2493555 () Unit!161177)

(assert (=> b!6996719 (= lt!2493555 (lemmaFlatMapOnSingletonSet!1761 lt!2493595 lt!2493570 lambda!404460))))

(assert (=> b!6996719 (= lt!2493557 (derivationStepZipperUp!1910 lt!2493570 (h!73650 s!7408)))))

(declare-fun lt!2493560 () Unit!161177)

(assert (=> b!6996719 (= lt!2493560 (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459))))

(assert (= (and start!672864 res!2854159) b!6996705))

(assert (= (and b!6996705 res!2854174) b!6996717))

(assert (= (and b!6996717 (not res!2854163)) b!6996711))

(assert (= (and b!6996711 (not res!2854172)) b!6996710))

(assert (= (and b!6996710 (not res!2854167)) b!6996709))

(assert (= (and b!6996709 (not res!2854178)) b!6996719))

(assert (= (and b!6996719 (not res!2854177)) b!6996696))

(assert (= (and b!6996696 (not res!2854171)) b!6996697))

(assert (= (and b!6996697 (not res!2854175)) b!6996698))

(assert (= (and b!6996698 (not res!2854179)) b!6996699))

(assert (= (and b!6996699 (not res!2854181)) b!6996714))

(assert (= (and b!6996714 (not res!2854184)) b!6996715))

(assert (= (and b!6996714 res!2854165) b!6996694))

(assert (= (and b!6996714 (not res!2854176)) b!6996701))

(assert (= (and b!6996701 (not res!2854169)) b!6996718))

(assert (= (and b!6996718 (not res!2854180)) b!6996702))

(assert (= (and b!6996702 (not res!2854183)) b!6996713))

(assert (= (and b!6996713 (not res!2854166)) b!6996707))

(assert (= (and b!6996707 (not res!2854182)) b!6996693))

(assert (= (and b!6996693 (not res!2854173)) b!6996706))

(assert (= (and b!6996706 (not res!2854168)) b!6996691))

(assert (= (and b!6996691 (not res!2854170)) b!6996716))

(assert (= (and b!6996716 (not res!2854164)) b!6996703))

(assert (= (and b!6996703 (not res!2854160)) b!6996708))

(assert (= (and b!6996708 (not res!2854161)) b!6996700))

(assert (= (and b!6996700 (not res!2854162)) b!6996695))

(assert (= (and start!672864 condSetEmpty!48014) setIsEmpty!48014))

(assert (= (and start!672864 (not condSetEmpty!48014)) setNonEmpty!48014))

(assert (= setNonEmpty!48014 b!6996692))

(assert (= start!672864 b!6996712))

(assert (= (and start!672864 (is-Cons!67202 s!7408)) b!6996704))

(declare-fun m!7688612 () Bool)

(assert (=> b!6996713 m!7688612))

(declare-fun m!7688614 () Bool)

(assert (=> b!6996713 m!7688614))

(declare-fun m!7688616 () Bool)

(assert (=> b!6996710 m!7688616))

(declare-fun m!7688618 () Bool)

(assert (=> b!6996710 m!7688618))

(declare-fun m!7688620 () Bool)

(assert (=> b!6996710 m!7688620))

(declare-fun m!7688622 () Bool)

(assert (=> b!6996710 m!7688622))

(declare-fun m!7688624 () Bool)

(assert (=> b!6996693 m!7688624))

(declare-fun m!7688626 () Bool)

(assert (=> b!6996695 m!7688626))

(declare-fun m!7688628 () Bool)

(assert (=> b!6996714 m!7688628))

(assert (=> b!6996714 m!7688614))

(declare-fun m!7688630 () Bool)

(assert (=> b!6996714 m!7688630))

(assert (=> b!6996714 m!7688614))

(declare-fun m!7688632 () Bool)

(assert (=> b!6996714 m!7688632))

(declare-fun m!7688634 () Bool)

(assert (=> b!6996714 m!7688634))

(assert (=> b!6996714 m!7688614))

(declare-fun m!7688636 () Bool)

(assert (=> b!6996698 m!7688636))

(declare-fun m!7688638 () Bool)

(assert (=> b!6996698 m!7688638))

(declare-fun m!7688640 () Bool)

(assert (=> b!6996711 m!7688640))

(declare-fun m!7688642 () Bool)

(assert (=> b!6996697 m!7688642))

(declare-fun m!7688644 () Bool)

(assert (=> b!6996691 m!7688644))

(declare-fun m!7688646 () Bool)

(assert (=> b!6996718 m!7688646))

(assert (=> b!6996718 m!7688614))

(declare-fun m!7688648 () Bool)

(assert (=> b!6996719 m!7688648))

(declare-fun m!7688650 () Bool)

(assert (=> b!6996719 m!7688650))

(declare-fun m!7688652 () Bool)

(assert (=> b!6996719 m!7688652))

(assert (=> b!6996719 m!7688620))

(declare-fun m!7688654 () Bool)

(assert (=> b!6996719 m!7688654))

(declare-fun m!7688656 () Bool)

(assert (=> b!6996703 m!7688656))

(declare-fun m!7688658 () Bool)

(assert (=> b!6996709 m!7688658))

(assert (=> b!6996709 m!7688620))

(assert (=> b!6996715 m!7688646))

(declare-fun m!7688660 () Bool)

(assert (=> b!6996717 m!7688660))

(declare-fun m!7688662 () Bool)

(assert (=> b!6996717 m!7688662))

(declare-fun m!7688664 () Bool)

(assert (=> b!6996717 m!7688664))

(declare-fun m!7688666 () Bool)

(assert (=> b!6996717 m!7688666))

(declare-fun m!7688668 () Bool)

(assert (=> b!6996717 m!7688668))

(declare-fun m!7688670 () Bool)

(assert (=> b!6996717 m!7688670))

(declare-fun m!7688672 () Bool)

(assert (=> b!6996708 m!7688672))

(declare-fun m!7688674 () Bool)

(assert (=> b!6996708 m!7688674))

(declare-fun m!7688676 () Bool)

(assert (=> b!6996708 m!7688676))

(declare-fun m!7688678 () Bool)

(assert (=> b!6996708 m!7688678))

(declare-fun m!7688680 () Bool)

(assert (=> b!6996708 m!7688680))

(declare-fun m!7688682 () Bool)

(assert (=> start!672864 m!7688682))

(declare-fun m!7688684 () Bool)

(assert (=> start!672864 m!7688684))

(declare-fun m!7688686 () Bool)

(assert (=> start!672864 m!7688686))

(declare-fun m!7688688 () Bool)

(assert (=> b!6996699 m!7688688))

(declare-fun m!7688690 () Bool)

(assert (=> b!6996699 m!7688690))

(assert (=> b!6996699 m!7688614))

(assert (=> b!6996699 m!7688614))

(declare-fun m!7688692 () Bool)

(assert (=> b!6996699 m!7688692))

(declare-fun m!7688694 () Bool)

(assert (=> setNonEmpty!48014 m!7688694))

(assert (=> b!6996702 m!7688688))

(declare-fun m!7688696 () Bool)

(assert (=> b!6996702 m!7688696))

(declare-fun m!7688698 () Bool)

(assert (=> b!6996702 m!7688698))

(assert (=> b!6996702 m!7688614))

(declare-fun m!7688700 () Bool)

(assert (=> b!6996702 m!7688700))

(assert (=> b!6996702 m!7688614))

(assert (=> b!6996702 m!7688614))

(declare-fun m!7688702 () Bool)

(assert (=> b!6996702 m!7688702))

(assert (=> b!6996702 m!7688614))

(declare-fun m!7688704 () Bool)

(assert (=> b!6996707 m!7688704))

(assert (=> b!6996707 m!7688614))

(declare-fun m!7688706 () Bool)

(assert (=> b!6996707 m!7688706))

(declare-fun m!7688708 () Bool)

(assert (=> b!6996707 m!7688708))

(declare-fun m!7688710 () Bool)

(assert (=> b!6996707 m!7688710))

(declare-fun m!7688712 () Bool)

(assert (=> b!6996707 m!7688712))

(declare-fun m!7688714 () Bool)

(assert (=> b!6996707 m!7688714))

(assert (=> b!6996707 m!7688614))

(assert (=> b!6996707 m!7688614))

(declare-fun m!7688716 () Bool)

(assert (=> b!6996707 m!7688716))

(assert (=> b!6996707 m!7688690))

(declare-fun m!7688718 () Bool)

(assert (=> b!6996707 m!7688718))

(declare-fun m!7688720 () Bool)

(assert (=> b!6996707 m!7688720))

(declare-fun m!7688722 () Bool)

(assert (=> b!6996707 m!7688722))

(declare-fun m!7688724 () Bool)

(assert (=> b!6996707 m!7688724))

(declare-fun m!7688726 () Bool)

(assert (=> b!6996707 m!7688726))

(assert (=> b!6996707 m!7688614))

(declare-fun m!7688728 () Bool)

(assert (=> b!6996700 m!7688728))

(assert (=> b!6996700 m!7688724))

(declare-fun m!7688730 () Bool)

(assert (=> b!6996716 m!7688730))

(declare-fun m!7688732 () Bool)

(assert (=> b!6996706 m!7688732))

(declare-fun m!7688734 () Bool)

(assert (=> b!6996706 m!7688734))

(declare-fun m!7688736 () Bool)

(assert (=> b!6996706 m!7688736))

(declare-fun m!7688738 () Bool)

(assert (=> b!6996706 m!7688738))

(declare-fun m!7688740 () Bool)

(assert (=> b!6996706 m!7688740))

(declare-fun m!7688742 () Bool)

(assert (=> b!6996706 m!7688742))

(assert (=> b!6996694 m!7688646))

(assert (=> b!6996694 m!7688614))

(push 1)

(assert (not b!6996693))

(assert (not b!6996692))

(assert (not b!6996697))

(assert (not b!6996694))

(assert (not b!6996699))

(assert (not b!6996704))

(assert (not b!6996710))

(assert (not b!6996706))

(assert (not b!6996708))

(assert (not b!6996717))

(assert (not setNonEmpty!48014))

(assert (not b!6996715))

(assert (not b!6996700))

(assert (not b!6996707))

(assert (not b!6996695))

(assert (not b!6996719))

(assert (not b!6996702))

(assert (not b!6996718))

(assert (not b!6996698))

(assert (not b!6996712))

(assert (not start!672864))

(assert (not b!6996703))

(assert (not b!6996691))

(assert (not b!6996713))

(assert (not b!6996709))

(assert (not b!6996716))

(assert (not b!6996714))

(assert tp_is_empty!43745)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2179872 () Bool)

(assert (=> d!2179872 (= (isEmpty!39226 (_1!37236 lt!2493566)) (is-Nil!67202 (_1!37236 lt!2493566)))))

(assert (=> b!6996703 d!2179872))

(declare-fun d!2179874 () Bool)

(declare-fun forall!16170 (List!67325 Int) Bool)

(assert (=> d!2179874 (forall!16170 (++!15221 lt!2493545 (exprs!6756 ct2!306)) lambda!404459)))

(declare-fun lt!2493766 () Unit!161177)

(declare-fun choose!52409 (List!67325 List!67325 Int) Unit!161177)

(assert (=> d!2179874 (= lt!2493766 (choose!52409 lt!2493545 (exprs!6756 ct2!306) lambda!404459))))

(assert (=> d!2179874 (forall!16170 lt!2493545 lambda!404459)))

(assert (=> d!2179874 (= (lemmaConcatPreservesForall!596 lt!2493545 (exprs!6756 ct2!306) lambda!404459) lt!2493766)))

(declare-fun bs!1863417 () Bool)

(assert (= bs!1863417 d!2179874))

(assert (=> bs!1863417 m!7688690))

(assert (=> bs!1863417 m!7688690))

(declare-fun m!7688876 () Bool)

(assert (=> bs!1863417 m!7688876))

(declare-fun m!7688878 () Bool)

(assert (=> bs!1863417 m!7688878))

(declare-fun m!7688880 () Bool)

(assert (=> bs!1863417 m!7688880))

(assert (=> b!6996702 d!2179874))

(declare-fun b!6996829 () Bool)

(declare-fun e!4205613 () Bool)

(assert (=> b!6996829 (= e!4205613 (nullable!7020 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun b!6996830 () Bool)

(declare-fun e!4205612 () (Set Context!12512))

(declare-fun e!4205611 () (Set Context!12512))

(assert (=> b!6996830 (= e!4205612 e!4205611)))

(declare-fun c!1298333 () Bool)

(assert (=> b!6996830 (= c!1298333 (is-Cons!67201 (exprs!6756 lt!2493586)))))

(declare-fun d!2179876 () Bool)

(declare-fun c!1298334 () Bool)

(assert (=> d!2179876 (= c!1298334 e!4205613)))

(declare-fun res!2854266 () Bool)

(assert (=> d!2179876 (=> (not res!2854266) (not e!4205613))))

(assert (=> d!2179876 (= res!2854266 (is-Cons!67201 (exprs!6756 lt!2493586)))))

(assert (=> d!2179876 (= (derivationStepZipperUp!1910 lt!2493586 (h!73650 s!7408)) e!4205612)))

(declare-fun call!635140 () (Set Context!12512))

(declare-fun b!6996831 () Bool)

(assert (=> b!6996831 (= e!4205612 (set.union call!635140 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (h!73650 s!7408))))))

(declare-fun b!6996832 () Bool)

(assert (=> b!6996832 (= e!4205611 call!635140)))

(declare-fun b!6996833 () Bool)

(assert (=> b!6996833 (= e!4205611 (as set.empty (Set Context!12512)))))

(declare-fun bm!635135 () Bool)

(assert (=> bm!635135 (= call!635140 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493586)) (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (h!73650 s!7408)))))

(assert (= (and d!2179876 res!2854266) b!6996829))

(assert (= (and d!2179876 c!1298334) b!6996831))

(assert (= (and d!2179876 (not c!1298334)) b!6996830))

(assert (= (and b!6996830 c!1298333) b!6996832))

(assert (= (and b!6996830 (not c!1298333)) b!6996833))

(assert (= (or b!6996831 b!6996832) bm!635135))

(declare-fun m!7688882 () Bool)

(assert (=> b!6996829 m!7688882))

(declare-fun m!7688884 () Bool)

(assert (=> b!6996831 m!7688884))

(declare-fun m!7688886 () Bool)

(assert (=> bm!635135 m!7688886))

(assert (=> b!6996702 d!2179876))

(declare-fun d!2179878 () Bool)

(declare-fun dynLambda!26972 (Int Context!12512) (Set Context!12512))

(assert (=> d!2179878 (= (flatMap!2246 lt!2493574 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493586))))

(declare-fun lt!2493769 () Unit!161177)

(declare-fun choose!52410 ((Set Context!12512) Context!12512 Int) Unit!161177)

(assert (=> d!2179878 (= lt!2493769 (choose!52410 lt!2493574 lt!2493586 lambda!404460))))

(assert (=> d!2179878 (= lt!2493574 (set.insert lt!2493586 (as set.empty (Set Context!12512))))))

(assert (=> d!2179878 (= (lemmaFlatMapOnSingletonSet!1761 lt!2493574 lt!2493586 lambda!404460) lt!2493769)))

(declare-fun b_lambda!263239 () Bool)

(assert (=> (not b_lambda!263239) (not d!2179878)))

(declare-fun bs!1863418 () Bool)

(assert (= bs!1863418 d!2179878))

(assert (=> bs!1863418 m!7688700))

(declare-fun m!7688888 () Bool)

(assert (=> bs!1863418 m!7688888))

(declare-fun m!7688890 () Bool)

(assert (=> bs!1863418 m!7688890))

(assert (=> bs!1863418 m!7688698))

(assert (=> b!6996702 d!2179878))

(declare-fun d!2179880 () Bool)

(declare-fun choose!52411 ((Set Context!12512) Int) (Set Context!12512))

(assert (=> d!2179880 (= (flatMap!2246 lt!2493574 lambda!404460) (choose!52411 lt!2493574 lambda!404460))))

(declare-fun bs!1863419 () Bool)

(assert (= bs!1863419 d!2179880))

(declare-fun m!7688892 () Bool)

(assert (=> bs!1863419 m!7688892))

(assert (=> b!6996702 d!2179880))

(declare-fun bs!1863420 () Bool)

(declare-fun d!2179882 () Bool)

(assert (= bs!1863420 (and d!2179882 b!6996719)))

(declare-fun lambda!404525 () Int)

(assert (=> bs!1863420 (= lambda!404525 lambda!404460)))

(assert (=> d!2179882 true))

(assert (=> d!2179882 (= (derivationStepZipper!2740 lt!2493574 (h!73650 s!7408)) (flatMap!2246 lt!2493574 lambda!404525))))

(declare-fun bs!1863421 () Bool)

(assert (= bs!1863421 d!2179882))

(declare-fun m!7688894 () Bool)

(assert (=> bs!1863421 m!7688894))

(assert (=> b!6996702 d!2179882))

(declare-fun b!6996858 () Bool)

(declare-fun e!4205627 () (Set Context!12512))

(assert (=> b!6996858 (= e!4205627 (set.insert lt!2493561 (as set.empty (Set Context!12512))))))

(declare-fun b!6996859 () Bool)

(declare-fun e!4205628 () (Set Context!12512))

(declare-fun call!635156 () (Set Context!12512))

(assert (=> b!6996859 (= e!4205628 call!635156)))

(declare-fun call!635158 () (Set Context!12512))

(declare-fun bm!635148 () Bool)

(declare-fun call!635153 () List!67325)

(declare-fun c!1298348 () Bool)

(assert (=> bm!635148 (= call!635158 (derivationStepZipperDown!1978 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (ite c!1298348 lt!2493561 (Context!12513 call!635153)) (h!73650 s!7408)))))

(declare-fun bm!635149 () Bool)

(declare-fun call!635157 () (Set Context!12512))

(declare-fun call!635155 () (Set Context!12512))

(assert (=> bm!635149 (= call!635157 call!635155)))

(declare-fun bm!635150 () Bool)

(assert (=> bm!635150 (= call!635156 call!635157)))

(declare-fun bm!635151 () Bool)

(declare-fun call!635154 () List!67325)

(assert (=> bm!635151 (= call!635154 call!635153)))

(declare-fun b!6996861 () Bool)

(declare-fun e!4205626 () (Set Context!12512))

(assert (=> b!6996861 (= e!4205626 (set.union call!635158 call!635157))))

(declare-fun b!6996862 () Bool)

(declare-fun c!1298347 () Bool)

(declare-fun e!4205629 () Bool)

(assert (=> b!6996862 (= c!1298347 e!4205629)))

(declare-fun res!2854269 () Bool)

(assert (=> b!6996862 (=> (not res!2854269) (not e!4205629))))

(assert (=> b!6996862 (= res!2854269 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205631 () (Set Context!12512))

(assert (=> b!6996862 (= e!4205631 e!4205626)))

(declare-fun bm!635152 () Bool)

(declare-fun c!1298349 () Bool)

(declare-fun $colon$colon!2499 (List!67325 Regex!17260) List!67325)

(assert (=> bm!635152 (= call!635153 ($colon$colon!2499 (exprs!6756 lt!2493561) (ite (or c!1298347 c!1298349) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6996863 () Bool)

(assert (=> b!6996863 (= e!4205629 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6996860 () Bool)

(declare-fun c!1298351 () Bool)

(assert (=> b!6996860 (= c!1298351 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205630 () (Set Context!12512))

(assert (=> b!6996860 (= e!4205630 e!4205628)))

(declare-fun d!2179884 () Bool)

(declare-fun c!1298350 () Bool)

(assert (=> d!2179884 (= c!1298350 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493587))) (h!73650 s!7408))))))

(assert (=> d!2179884 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) lt!2493561 (h!73650 s!7408)) e!4205627)))

(declare-fun bm!635153 () Bool)

(assert (=> bm!635153 (= call!635155 (derivationStepZipperDown!1978 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))) (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154)) (h!73650 s!7408)))))

(declare-fun b!6996864 () Bool)

(assert (=> b!6996864 (= e!4205630 call!635156)))

(declare-fun b!6996865 () Bool)

(assert (=> b!6996865 (= e!4205631 (set.union call!635155 call!635158))))

(declare-fun b!6996866 () Bool)

(assert (=> b!6996866 (= e!4205626 e!4205630)))

(assert (=> b!6996866 (= c!1298349 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6996867 () Bool)

(assert (=> b!6996867 (= e!4205627 e!4205631)))

(assert (=> b!6996867 (= c!1298348 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6996868 () Bool)

(assert (=> b!6996868 (= e!4205628 (as set.empty (Set Context!12512)))))

(assert (= (and d!2179884 c!1298350) b!6996858))

(assert (= (and d!2179884 (not c!1298350)) b!6996867))

(assert (= (and b!6996867 c!1298348) b!6996865))

(assert (= (and b!6996867 (not c!1298348)) b!6996862))

(assert (= (and b!6996862 res!2854269) b!6996863))

(assert (= (and b!6996862 c!1298347) b!6996861))

(assert (= (and b!6996862 (not c!1298347)) b!6996866))

(assert (= (and b!6996866 c!1298349) b!6996864))

(assert (= (and b!6996866 (not c!1298349)) b!6996860))

(assert (= (and b!6996860 c!1298351) b!6996859))

(assert (= (and b!6996860 (not c!1298351)) b!6996868))

(assert (= (or b!6996864 b!6996859) bm!635151))

(assert (= (or b!6996864 b!6996859) bm!635150))

(assert (= (or b!6996861 bm!635150) bm!635149))

(assert (= (or b!6996861 bm!635151) bm!635152))

(assert (= (or b!6996865 bm!635149) bm!635153))

(assert (= (or b!6996865 b!6996861) bm!635148))

(declare-fun m!7688896 () Bool)

(assert (=> bm!635152 m!7688896))

(declare-fun m!7688898 () Bool)

(assert (=> bm!635148 m!7688898))

(declare-fun m!7688900 () Bool)

(assert (=> b!6996863 m!7688900))

(declare-fun m!7688902 () Bool)

(assert (=> bm!635153 m!7688902))

(assert (=> b!6996858 m!7688706))

(assert (=> b!6996700 d!2179884))

(declare-fun b!6996869 () Bool)

(declare-fun e!4205634 () Bool)

(assert (=> b!6996869 (= e!4205634 (nullable!7020 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun b!6996870 () Bool)

(declare-fun e!4205633 () (Set Context!12512))

(declare-fun e!4205632 () (Set Context!12512))

(assert (=> b!6996870 (= e!4205633 e!4205632)))

(declare-fun c!1298352 () Bool)

(assert (=> b!6996870 (= c!1298352 (is-Cons!67201 (exprs!6756 lt!2493561)))))

(declare-fun d!2179886 () Bool)

(declare-fun c!1298353 () Bool)

(assert (=> d!2179886 (= c!1298353 e!4205634)))

(declare-fun res!2854270 () Bool)

(assert (=> d!2179886 (=> (not res!2854270) (not e!4205634))))

(assert (=> d!2179886 (= res!2854270 (is-Cons!67201 (exprs!6756 lt!2493561)))))

(assert (=> d!2179886 (= (derivationStepZipperUp!1910 lt!2493561 (h!73650 s!7408)) e!4205633)))

(declare-fun call!635159 () (Set Context!12512))

(declare-fun b!6996871 () Bool)

(assert (=> b!6996871 (= e!4205633 (set.union call!635159 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (h!73650 s!7408))))))

(declare-fun b!6996872 () Bool)

(assert (=> b!6996872 (= e!4205632 call!635159)))

(declare-fun b!6996873 () Bool)

(assert (=> b!6996873 (= e!4205632 (as set.empty (Set Context!12512)))))

(declare-fun bm!635154 () Bool)

(assert (=> bm!635154 (= call!635159 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493561)) (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (h!73650 s!7408)))))

(assert (= (and d!2179886 res!2854270) b!6996869))

(assert (= (and d!2179886 c!1298353) b!6996871))

(assert (= (and d!2179886 (not c!1298353)) b!6996870))

(assert (= (and b!6996870 c!1298352) b!6996872))

(assert (= (and b!6996870 (not c!1298352)) b!6996873))

(assert (= (or b!6996871 b!6996872) bm!635154))

(declare-fun m!7688904 () Bool)

(assert (=> b!6996869 m!7688904))

(declare-fun m!7688906 () Bool)

(assert (=> b!6996871 m!7688906))

(declare-fun m!7688908 () Bool)

(assert (=> bm!635154 m!7688908))

(assert (=> b!6996700 d!2179886))

(declare-fun d!2179888 () Bool)

(assert (=> d!2179888 (forall!16170 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)) lambda!404459)))

(declare-fun lt!2493770 () Unit!161177)

(assert (=> d!2179888 (= lt!2493770 (choose!52409 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> d!2179888 (forall!16170 (exprs!6756 lt!2493587) lambda!404459)))

(assert (=> d!2179888 (= (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459) lt!2493770)))

(declare-fun bs!1863422 () Bool)

(assert (= bs!1863422 d!2179888))

(assert (=> bs!1863422 m!7688618))

(assert (=> bs!1863422 m!7688618))

(declare-fun m!7688910 () Bool)

(assert (=> bs!1863422 m!7688910))

(declare-fun m!7688912 () Bool)

(assert (=> bs!1863422 m!7688912))

(declare-fun m!7688914 () Bool)

(assert (=> bs!1863422 m!7688914))

(assert (=> b!6996709 d!2179888))

(declare-fun b!6996882 () Bool)

(declare-fun e!4205640 () List!67325)

(assert (=> b!6996882 (= e!4205640 (exprs!6756 ct2!306))))

(declare-fun b!6996884 () Bool)

(declare-fun res!2854275 () Bool)

(declare-fun e!4205639 () Bool)

(assert (=> b!6996884 (=> (not res!2854275) (not e!4205639))))

(declare-fun lt!2493773 () List!67325)

(declare-fun size!40926 (List!67325) Int)

(assert (=> b!6996884 (= res!2854275 (= (size!40926 lt!2493773) (+ (size!40926 (exprs!6756 lt!2493587)) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2179890 () Bool)

(assert (=> d!2179890 e!4205639))

(declare-fun res!2854276 () Bool)

(assert (=> d!2179890 (=> (not res!2854276) (not e!4205639))))

(declare-fun content!13295 (List!67325) (Set Regex!17260))

(assert (=> d!2179890 (= res!2854276 (= (content!13295 lt!2493773) (set.union (content!13295 (exprs!6756 lt!2493587)) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2179890 (= lt!2493773 e!4205640)))

(declare-fun c!1298356 () Bool)

(assert (=> d!2179890 (= c!1298356 (is-Nil!67201 (exprs!6756 lt!2493587)))))

(assert (=> d!2179890 (= (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)) lt!2493773)))

(declare-fun b!6996885 () Bool)

(assert (=> b!6996885 (= e!4205639 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493773 (exprs!6756 lt!2493587))))))

(declare-fun b!6996883 () Bool)

(assert (=> b!6996883 (= e!4205640 (Cons!67201 (h!73649 (exprs!6756 lt!2493587)) (++!15221 (t!381074 (exprs!6756 lt!2493587)) (exprs!6756 ct2!306))))))

(assert (= (and d!2179890 c!1298356) b!6996882))

(assert (= (and d!2179890 (not c!1298356)) b!6996883))

(assert (= (and d!2179890 res!2854276) b!6996884))

(assert (= (and b!6996884 res!2854275) b!6996885))

(declare-fun m!7688916 () Bool)

(assert (=> b!6996884 m!7688916))

(declare-fun m!7688918 () Bool)

(assert (=> b!6996884 m!7688918))

(declare-fun m!7688920 () Bool)

(assert (=> b!6996884 m!7688920))

(declare-fun m!7688922 () Bool)

(assert (=> d!2179890 m!7688922))

(declare-fun m!7688924 () Bool)

(assert (=> d!2179890 m!7688924))

(declare-fun m!7688926 () Bool)

(assert (=> d!2179890 m!7688926))

(declare-fun m!7688928 () Bool)

(assert (=> b!6996883 m!7688928))

(assert (=> b!6996710 d!2179890))

(assert (=> b!6996710 d!2179888))

(declare-fun d!2179892 () Bool)

(declare-fun e!4205643 () Bool)

(assert (=> d!2179892 e!4205643))

(declare-fun res!2854279 () Bool)

(assert (=> d!2179892 (=> (not res!2854279) (not e!4205643))))

(declare-fun lt!2493776 () Context!12512)

(declare-fun dynLambda!26973 (Int Context!12512) Context!12512)

(assert (=> d!2179892 (= res!2854279 (= lt!2493567 (dynLambda!26973 lambda!404458 lt!2493776)))))

(declare-fun choose!52412 ((Set Context!12512) Int Context!12512) Context!12512)

(assert (=> d!2179892 (= lt!2493776 (choose!52412 z1!570 lambda!404458 lt!2493567))))

(assert (=> d!2179892 (set.member lt!2493567 (map!15537 z1!570 lambda!404458))))

(assert (=> d!2179892 (= (mapPost2!115 z1!570 lambda!404458 lt!2493567) lt!2493776)))

(declare-fun b!6996889 () Bool)

(assert (=> b!6996889 (= e!4205643 (set.member lt!2493776 z1!570))))

(assert (= (and d!2179892 res!2854279) b!6996889))

(declare-fun b_lambda!263241 () Bool)

(assert (=> (not b_lambda!263241) (not d!2179892)))

(declare-fun m!7688930 () Bool)

(assert (=> d!2179892 m!7688930))

(declare-fun m!7688932 () Bool)

(assert (=> d!2179892 m!7688932))

(declare-fun m!7688934 () Bool)

(assert (=> d!2179892 m!7688934))

(declare-fun m!7688936 () Bool)

(assert (=> d!2179892 m!7688936))

(declare-fun m!7688938 () Bool)

(assert (=> b!6996889 m!7688938))

(assert (=> b!6996710 d!2179892))

(declare-fun bs!1863423 () Bool)

(declare-fun d!2179894 () Bool)

(assert (= bs!1863423 (and d!2179894 b!6996719)))

(declare-fun lambda!404526 () Int)

(assert (=> bs!1863423 (= lambda!404526 lambda!404460)))

(declare-fun bs!1863424 () Bool)

(assert (= bs!1863424 (and d!2179894 d!2179882)))

(assert (=> bs!1863424 (= lambda!404526 lambda!404525)))

(assert (=> d!2179894 true))

(assert (=> d!2179894 (= (derivationStepZipper!2740 lt!2493558 (h!73650 s!7408)) (flatMap!2246 lt!2493558 lambda!404526))))

(declare-fun bs!1863425 () Bool)

(assert (= bs!1863425 d!2179894))

(declare-fun m!7688940 () Bool)

(assert (=> bs!1863425 m!7688940))

(assert (=> b!6996708 d!2179894))

(declare-fun b!6996890 () Bool)

(declare-fun e!4205646 () Bool)

(assert (=> b!6996890 (= e!4205646 (nullable!7020 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6996891 () Bool)

(declare-fun e!4205645 () (Set Context!12512))

(declare-fun e!4205644 () (Set Context!12512))

(assert (=> b!6996891 (= e!4205645 e!4205644)))

(declare-fun c!1298357 () Bool)

(assert (=> b!6996891 (= c!1298357 (is-Cons!67201 (exprs!6756 lt!2493587)))))

(declare-fun d!2179896 () Bool)

(declare-fun c!1298358 () Bool)

(assert (=> d!2179896 (= c!1298358 e!4205646)))

(declare-fun res!2854280 () Bool)

(assert (=> d!2179896 (=> (not res!2854280) (not e!4205646))))

(assert (=> d!2179896 (= res!2854280 (is-Cons!67201 (exprs!6756 lt!2493587)))))

(assert (=> d!2179896 (= (derivationStepZipperUp!1910 lt!2493587 (h!73650 s!7408)) e!4205645)))

(declare-fun b!6996892 () Bool)

(declare-fun call!635160 () (Set Context!12512))

(assert (=> b!6996892 (= e!4205645 (set.union call!635160 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (h!73650 s!7408))))))

(declare-fun b!6996893 () Bool)

(assert (=> b!6996893 (= e!4205644 call!635160)))

(declare-fun b!6996894 () Bool)

(assert (=> b!6996894 (= e!4205644 (as set.empty (Set Context!12512)))))

(declare-fun bm!635155 () Bool)

(assert (=> bm!635155 (= call!635160 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (h!73650 s!7408)))))

(assert (= (and d!2179896 res!2854280) b!6996890))

(assert (= (and d!2179896 c!1298358) b!6996892))

(assert (= (and d!2179896 (not c!1298358)) b!6996891))

(assert (= (and b!6996891 c!1298357) b!6996893))

(assert (= (and b!6996891 (not c!1298357)) b!6996894))

(assert (= (or b!6996892 b!6996893) bm!635155))

(assert (=> b!6996890 m!7688636))

(declare-fun m!7688942 () Bool)

(assert (=> b!6996892 m!7688942))

(declare-fun m!7688944 () Bool)

(assert (=> bm!635155 m!7688944))

(assert (=> b!6996708 d!2179896))

(declare-fun d!2179898 () Bool)

(assert (=> d!2179898 (= (flatMap!2246 lt!2493558 lambda!404460) (choose!52411 lt!2493558 lambda!404460))))

(declare-fun bs!1863426 () Bool)

(assert (= bs!1863426 d!2179898))

(declare-fun m!7688946 () Bool)

(assert (=> bs!1863426 m!7688946))

(assert (=> b!6996708 d!2179898))

(declare-fun d!2179900 () Bool)

(assert (=> d!2179900 (= (flatMap!2246 lt!2493558 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493587))))

(declare-fun lt!2493777 () Unit!161177)

(assert (=> d!2179900 (= lt!2493777 (choose!52410 lt!2493558 lt!2493587 lambda!404460))))

(assert (=> d!2179900 (= lt!2493558 (set.insert lt!2493587 (as set.empty (Set Context!12512))))))

(assert (=> d!2179900 (= (lemmaFlatMapOnSingletonSet!1761 lt!2493558 lt!2493587 lambda!404460) lt!2493777)))

(declare-fun b_lambda!263243 () Bool)

(assert (=> (not b_lambda!263243) (not d!2179900)))

(declare-fun bs!1863427 () Bool)

(assert (= bs!1863427 d!2179900))

(assert (=> bs!1863427 m!7688678))

(declare-fun m!7688948 () Bool)

(assert (=> bs!1863427 m!7688948))

(declare-fun m!7688950 () Bool)

(assert (=> bs!1863427 m!7688950))

(assert (=> bs!1863427 m!7688674))

(assert (=> b!6996708 d!2179900))

(assert (=> b!6996707 d!2179874))

(declare-fun d!2179902 () Bool)

(declare-fun choose!52413 ((Set Context!12512) Int) (Set Context!12512))

(assert (=> d!2179902 (= (map!15537 lt!2493576 lambda!404458) (choose!52413 lt!2493576 lambda!404458))))

(declare-fun bs!1863428 () Bool)

(assert (= bs!1863428 d!2179902))

(declare-fun m!7688952 () Bool)

(assert (=> bs!1863428 m!7688952))

(assert (=> b!6996707 d!2179902))

(declare-fun b!6996895 () Bool)

(declare-fun e!4205648 () List!67325)

(assert (=> b!6996895 (= e!4205648 (exprs!6756 ct2!306))))

(declare-fun b!6996897 () Bool)

(declare-fun res!2854281 () Bool)

(declare-fun e!4205647 () Bool)

(assert (=> b!6996897 (=> (not res!2854281) (not e!4205647))))

(declare-fun lt!2493778 () List!67325)

(assert (=> b!6996897 (= res!2854281 (= (size!40926 lt!2493778) (+ (size!40926 lt!2493545) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2179904 () Bool)

(assert (=> d!2179904 e!4205647))

(declare-fun res!2854282 () Bool)

(assert (=> d!2179904 (=> (not res!2854282) (not e!4205647))))

(assert (=> d!2179904 (= res!2854282 (= (content!13295 lt!2493778) (set.union (content!13295 lt!2493545) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2179904 (= lt!2493778 e!4205648)))

(declare-fun c!1298359 () Bool)

(assert (=> d!2179904 (= c!1298359 (is-Nil!67201 lt!2493545))))

(assert (=> d!2179904 (= (++!15221 lt!2493545 (exprs!6756 ct2!306)) lt!2493778)))

(declare-fun b!6996898 () Bool)

(assert (=> b!6996898 (= e!4205647 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493778 lt!2493545)))))

(declare-fun b!6996896 () Bool)

(assert (=> b!6996896 (= e!4205648 (Cons!67201 (h!73649 lt!2493545) (++!15221 (t!381074 lt!2493545) (exprs!6756 ct2!306))))))

(assert (= (and d!2179904 c!1298359) b!6996895))

(assert (= (and d!2179904 (not c!1298359)) b!6996896))

(assert (= (and d!2179904 res!2854282) b!6996897))

(assert (= (and b!6996897 res!2854281) b!6996898))

(declare-fun m!7688954 () Bool)

(assert (=> b!6996897 m!7688954))

(declare-fun m!7688956 () Bool)

(assert (=> b!6996897 m!7688956))

(assert (=> b!6996897 m!7688920))

(declare-fun m!7688958 () Bool)

(assert (=> d!2179904 m!7688958))

(declare-fun m!7688960 () Bool)

(assert (=> d!2179904 m!7688960))

(assert (=> d!2179904 m!7688926))

(declare-fun m!7688962 () Bool)

(assert (=> b!6996896 m!7688962))

(assert (=> b!6996707 d!2179904))

(declare-fun d!2179906 () Bool)

(declare-fun e!4205651 () Bool)

(assert (=> d!2179906 e!4205651))

(declare-fun res!2854285 () Bool)

(assert (=> d!2179906 (=> (not res!2854285) (not e!4205651))))

(declare-fun lt!2493781 () List!67327)

(declare-fun noDuplicate!2537 (List!67327) Bool)

(assert (=> d!2179906 (= res!2854285 (noDuplicate!2537 lt!2493781))))

(declare-fun choose!52414 ((Set Context!12512)) List!67327)

(assert (=> d!2179906 (= lt!2493781 (choose!52414 z1!570))))

(assert (=> d!2179906 (= (toList!10620 z1!570) lt!2493781)))

(declare-fun b!6996901 () Bool)

(declare-fun content!13296 (List!67327) (Set Context!12512))

(assert (=> b!6996901 (= e!4205651 (= (content!13296 lt!2493781) z1!570))))

(assert (= (and d!2179906 res!2854285) b!6996901))

(declare-fun m!7688964 () Bool)

(assert (=> d!2179906 m!7688964))

(declare-fun m!7688966 () Bool)

(assert (=> d!2179906 m!7688966))

(declare-fun m!7688968 () Bool)

(assert (=> b!6996901 m!7688968))

(assert (=> b!6996707 d!2179906))

(declare-fun d!2179908 () Bool)

(assert (=> d!2179908 (<= (contextDepthTotal!453 lt!2493587) (zipperDepthTotal!481 lt!2493565))))

(declare-fun lt!2493784 () Unit!161177)

(declare-fun choose!52415 (List!67327 Context!12512) Unit!161177)

(assert (=> d!2179908 (= lt!2493784 (choose!52415 lt!2493565 lt!2493587))))

(declare-fun contains!20418 (List!67327 Context!12512) Bool)

(assert (=> d!2179908 (contains!20418 lt!2493565 lt!2493587)))

(assert (=> d!2179908 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!21 lt!2493565 lt!2493587) lt!2493784)))

(declare-fun bs!1863429 () Bool)

(assert (= bs!1863429 d!2179908))

(assert (=> bs!1863429 m!7688722))

(assert (=> bs!1863429 m!7688716))

(declare-fun m!7688970 () Bool)

(assert (=> bs!1863429 m!7688970))

(declare-fun m!7688972 () Bool)

(assert (=> bs!1863429 m!7688972))

(assert (=> b!6996707 d!2179908))

(declare-fun d!2179910 () Bool)

(declare-fun lt!2493787 () Int)

(assert (=> d!2179910 (>= lt!2493787 0)))

(declare-fun e!4205654 () Int)

(assert (=> d!2179910 (= lt!2493787 e!4205654)))

(declare-fun c!1298364 () Bool)

(assert (=> d!2179910 (= c!1298364 (is-Cons!67201 (exprs!6756 lt!2493561)))))

(assert (=> d!2179910 (= (contextDepthTotal!453 lt!2493561) lt!2493787)))

(declare-fun b!6996906 () Bool)

(declare-fun regexDepthTotal!276 (Regex!17260) Int)

(assert (=> b!6996906 (= e!4205654 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 lt!2493561))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 lt!2493561))))))))

(declare-fun b!6996907 () Bool)

(assert (=> b!6996907 (= e!4205654 1)))

(assert (= (and d!2179910 c!1298364) b!6996906))

(assert (= (and d!2179910 (not c!1298364)) b!6996907))

(declare-fun m!7688974 () Bool)

(assert (=> b!6996906 m!7688974))

(declare-fun m!7688976 () Bool)

(assert (=> b!6996906 m!7688976))

(assert (=> b!6996707 d!2179910))

(assert (=> b!6996707 d!2179886))

(declare-fun d!2179912 () Bool)

(declare-fun lt!2493790 () Int)

(assert (=> d!2179912 (>= lt!2493790 0)))

(declare-fun e!4205657 () Int)

(assert (=> d!2179912 (= lt!2493790 e!4205657)))

(declare-fun c!1298367 () Bool)

(assert (=> d!2179912 (= c!1298367 (is-Cons!67203 lt!2493565))))

(assert (=> d!2179912 (= (zipperDepthTotal!481 lt!2493565) lt!2493790)))

(declare-fun b!6996912 () Bool)

(assert (=> b!6996912 (= e!4205657 (+ (contextDepthTotal!453 (h!73651 lt!2493565)) (zipperDepthTotal!481 (t!381076 lt!2493565))))))

(declare-fun b!6996913 () Bool)

(assert (=> b!6996913 (= e!4205657 0)))

(assert (= (and d!2179912 c!1298367) b!6996912))

(assert (= (and d!2179912 (not c!1298367)) b!6996913))

(declare-fun m!7688978 () Bool)

(assert (=> b!6996912 m!7688978))

(declare-fun m!7688980 () Bool)

(assert (=> b!6996912 m!7688980))

(assert (=> b!6996707 d!2179912))

(declare-fun d!2179914 () Bool)

(assert (=> d!2179914 (= (flatMap!2246 lt!2493576 lambda!404460) (choose!52411 lt!2493576 lambda!404460))))

(declare-fun bs!1863430 () Bool)

(assert (= bs!1863430 d!2179914))

(declare-fun m!7688982 () Bool)

(assert (=> bs!1863430 m!7688982))

(assert (=> b!6996707 d!2179914))

(declare-fun d!2179916 () Bool)

(assert (=> d!2179916 (= (flatMap!2246 lt!2493576 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493561))))

(declare-fun lt!2493791 () Unit!161177)

(assert (=> d!2179916 (= lt!2493791 (choose!52410 lt!2493576 lt!2493561 lambda!404460))))

(assert (=> d!2179916 (= lt!2493576 (set.insert lt!2493561 (as set.empty (Set Context!12512))))))

(assert (=> d!2179916 (= (lemmaFlatMapOnSingletonSet!1761 lt!2493576 lt!2493561 lambda!404460) lt!2493791)))

(declare-fun b_lambda!263245 () Bool)

(assert (=> (not b_lambda!263245) (not d!2179916)))

(declare-fun bs!1863431 () Bool)

(assert (= bs!1863431 d!2179916))

(assert (=> bs!1863431 m!7688708))

(declare-fun m!7688984 () Bool)

(assert (=> bs!1863431 m!7688984))

(declare-fun m!7688986 () Bool)

(assert (=> bs!1863431 m!7688986))

(assert (=> bs!1863431 m!7688706))

(assert (=> b!6996707 d!2179916))

(declare-fun d!2179918 () Bool)

(declare-fun lt!2493792 () Int)

(assert (=> d!2179918 (>= lt!2493792 0)))

(declare-fun e!4205658 () Int)

(assert (=> d!2179918 (= lt!2493792 e!4205658)))

(declare-fun c!1298368 () Bool)

(assert (=> d!2179918 (= c!1298368 (is-Cons!67201 (exprs!6756 lt!2493587)))))

(assert (=> d!2179918 (= (contextDepthTotal!453 lt!2493587) lt!2493792)))

(declare-fun b!6996914 () Bool)

(assert (=> b!6996914 (= e!4205658 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 lt!2493587))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 lt!2493587))))))))

(declare-fun b!6996915 () Bool)

(assert (=> b!6996915 (= e!4205658 1)))

(assert (= (and d!2179918 c!1298368) b!6996914))

(assert (= (and d!2179918 (not c!1298368)) b!6996915))

(declare-fun m!7688988 () Bool)

(assert (=> b!6996914 m!7688988))

(declare-fun m!7688990 () Bool)

(assert (=> b!6996914 m!7688990))

(assert (=> b!6996707 d!2179918))

(declare-fun d!2179920 () Bool)

(assert (=> d!2179920 (= (map!15537 lt!2493576 lambda!404458) (set.insert (dynLambda!26973 lambda!404458 lt!2493561) (as set.empty (Set Context!12512))))))

(declare-fun lt!2493795 () Unit!161177)

(declare-fun choose!52416 ((Set Context!12512) Context!12512 Int) Unit!161177)

(assert (=> d!2179920 (= lt!2493795 (choose!52416 lt!2493576 lt!2493561 lambda!404458))))

(assert (=> d!2179920 (= lt!2493576 (set.insert lt!2493561 (as set.empty (Set Context!12512))))))

(assert (=> d!2179920 (= (lemmaMapOnSingletonSet!325 lt!2493576 lt!2493561 lambda!404458) lt!2493795)))

(declare-fun b_lambda!263247 () Bool)

(assert (=> (not b_lambda!263247) (not d!2179920)))

(declare-fun bs!1863432 () Bool)

(assert (= bs!1863432 d!2179920))

(assert (=> bs!1863432 m!7688710))

(declare-fun m!7688992 () Bool)

(assert (=> bs!1863432 m!7688992))

(declare-fun m!7688994 () Bool)

(assert (=> bs!1863432 m!7688994))

(assert (=> bs!1863432 m!7688706))

(assert (=> bs!1863432 m!7688992))

(declare-fun m!7688996 () Bool)

(assert (=> bs!1863432 m!7688996))

(assert (=> b!6996707 d!2179920))

(declare-fun d!2179922 () Bool)

(declare-fun c!1298371 () Bool)

(assert (=> d!2179922 (= c!1298371 (isEmpty!39226 s!7408))))

(declare-fun e!4205661 () Bool)

(assert (=> d!2179922 (= (matchZipper!2800 lt!2493564 s!7408) e!4205661)))

(declare-fun b!6996920 () Bool)

(declare-fun nullableZipper!2455 ((Set Context!12512)) Bool)

(assert (=> b!6996920 (= e!4205661 (nullableZipper!2455 lt!2493564))))

(declare-fun b!6996921 () Bool)

(declare-fun head!14132 (List!67326) C!34790)

(declare-fun tail!13290 (List!67326) List!67326)

(assert (=> b!6996921 (= e!4205661 (matchZipper!2800 (derivationStepZipper!2740 lt!2493564 (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2179922 c!1298371) b!6996920))

(assert (= (and d!2179922 (not c!1298371)) b!6996921))

(declare-fun m!7688998 () Bool)

(assert (=> d!2179922 m!7688998))

(declare-fun m!7689000 () Bool)

(assert (=> b!6996920 m!7689000))

(declare-fun m!7689002 () Bool)

(assert (=> b!6996921 m!7689002))

(assert (=> b!6996921 m!7689002))

(declare-fun m!7689004 () Bool)

(assert (=> b!6996921 m!7689004))

(declare-fun m!7689006 () Bool)

(assert (=> b!6996921 m!7689006))

(assert (=> b!6996921 m!7689004))

(assert (=> b!6996921 m!7689006))

(declare-fun m!7689008 () Bool)

(assert (=> b!6996921 m!7689008))

(assert (=> start!672864 d!2179922))

(declare-fun bs!1863433 () Bool)

(declare-fun d!2179924 () Bool)

(assert (= bs!1863433 (and d!2179924 b!6996710)))

(declare-fun lambda!404531 () Int)

(assert (=> bs!1863433 (= lambda!404531 lambda!404458)))

(assert (=> d!2179924 true))

(assert (=> d!2179924 (= (appendTo!381 z1!570 ct2!306) (map!15537 z1!570 lambda!404531))))

(declare-fun bs!1863434 () Bool)

(assert (= bs!1863434 d!2179924))

(declare-fun m!7689010 () Bool)

(assert (=> bs!1863434 m!7689010))

(assert (=> start!672864 d!2179924))

(declare-fun bs!1863435 () Bool)

(declare-fun d!2179926 () Bool)

(assert (= bs!1863435 (and d!2179926 b!6996710)))

(declare-fun lambda!404534 () Int)

(assert (=> bs!1863435 (= lambda!404534 lambda!404459)))

(assert (=> d!2179926 (= (inv!86010 ct2!306) (forall!16170 (exprs!6756 ct2!306) lambda!404534))))

(declare-fun bs!1863436 () Bool)

(assert (= bs!1863436 d!2179926))

(declare-fun m!7689012 () Bool)

(assert (=> bs!1863436 m!7689012))

(assert (=> start!672864 d!2179926))

(declare-fun d!2179928 () Bool)

(assert (=> d!2179928 (isDefined!13466 (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) Nil!67202 s!7408 s!7408))))

(declare-fun lt!2493800 () Unit!161177)

(declare-fun choose!52417 ((Set Context!12512) Context!12512 List!67326) Unit!161177)

(assert (=> d!2179928 (= lt!2493800 (choose!52417 lt!2493576 ct2!306 s!7408))))

(assert (=> d!2179928 (matchZipper!2800 (appendTo!381 lt!2493576 ct2!306) s!7408)))

(assert (=> d!2179928 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!281 lt!2493576 ct2!306 s!7408) lt!2493800)))

(declare-fun bs!1863437 () Bool)

(assert (= bs!1863437 d!2179928))

(declare-fun m!7689014 () Bool)

(assert (=> bs!1863437 m!7689014))

(declare-fun m!7689016 () Bool)

(assert (=> bs!1863437 m!7689016))

(declare-fun m!7689018 () Bool)

(assert (=> bs!1863437 m!7689018))

(assert (=> bs!1863437 m!7688732))

(assert (=> bs!1863437 m!7689016))

(declare-fun m!7689020 () Bool)

(assert (=> bs!1863437 m!7689020))

(assert (=> bs!1863437 m!7689020))

(declare-fun m!7689022 () Bool)

(assert (=> bs!1863437 m!7689022))

(assert (=> bs!1863437 m!7688732))

(assert (=> b!6996706 d!2179928))

(declare-fun b!6996940 () Bool)

(declare-fun res!2854299 () Bool)

(declare-fun e!4205676 () Bool)

(assert (=> b!6996940 (=> (not res!2854299) (not e!4205676))))

(declare-fun lt!2493807 () Option!16765)

(assert (=> b!6996940 (= res!2854299 (matchZipper!2800 lt!2493591 (_2!37236 (get!23560 lt!2493807))))))

(declare-fun b!6996941 () Bool)

(declare-fun e!4205672 () Bool)

(assert (=> b!6996941 (= e!4205672 (not (isDefined!13466 lt!2493807)))))

(declare-fun b!6996942 () Bool)

(declare-fun e!4205675 () Bool)

(assert (=> b!6996942 (= e!4205675 (matchZipper!2800 lt!2493591 s!7408))))

(declare-fun b!6996943 () Bool)

(declare-fun e!4205673 () Option!16765)

(assert (=> b!6996943 (= e!4205673 None!16764)))

(declare-fun b!6996944 () Bool)

(declare-fun e!4205674 () Option!16765)

(assert (=> b!6996944 (= e!4205674 e!4205673)))

(declare-fun c!1298377 () Bool)

(assert (=> b!6996944 (= c!1298377 (is-Nil!67202 s!7408))))

(declare-fun d!2179930 () Bool)

(assert (=> d!2179930 e!4205672))

(declare-fun res!2854296 () Bool)

(assert (=> d!2179930 (=> res!2854296 e!4205672)))

(assert (=> d!2179930 (= res!2854296 e!4205676)))

(declare-fun res!2854298 () Bool)

(assert (=> d!2179930 (=> (not res!2854298) (not e!4205676))))

(assert (=> d!2179930 (= res!2854298 (isDefined!13466 lt!2493807))))

(assert (=> d!2179930 (= lt!2493807 e!4205674)))

(declare-fun c!1298378 () Bool)

(assert (=> d!2179930 (= c!1298378 e!4205675)))

(declare-fun res!2854297 () Bool)

(assert (=> d!2179930 (=> (not res!2854297) (not e!4205675))))

(assert (=> d!2179930 (= res!2854297 (matchZipper!2800 lt!2493576 Nil!67202))))

(assert (=> d!2179930 (= (++!15222 Nil!67202 s!7408) s!7408)))

(assert (=> d!2179930 (= (findConcatSeparationZippers!281 lt!2493576 lt!2493591 Nil!67202 s!7408 s!7408) lt!2493807)))

(declare-fun b!6996945 () Bool)

(assert (=> b!6996945 (= e!4205676 (= (++!15222 (_1!37236 (get!23560 lt!2493807)) (_2!37236 (get!23560 lt!2493807))) s!7408))))

(declare-fun b!6996946 () Bool)

(declare-fun res!2854300 () Bool)

(assert (=> b!6996946 (=> (not res!2854300) (not e!4205676))))

(assert (=> b!6996946 (= res!2854300 (matchZipper!2800 lt!2493576 (_1!37236 (get!23560 lt!2493807))))))

(declare-fun b!6996947 () Bool)

(declare-fun lt!2493808 () Unit!161177)

(declare-fun lt!2493809 () Unit!161177)

(assert (=> b!6996947 (= lt!2493808 lt!2493809)))

(assert (=> b!6996947 (= (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2875 (List!67326 C!34790 List!67326 List!67326) Unit!161177)

(assert (=> b!6996947 (= lt!2493809 (lemmaMoveElementToOtherListKeepsConcatEq!2875 Nil!67202 (h!73650 s!7408) (t!381075 s!7408) s!7408))))

(assert (=> b!6996947 (= e!4205673 (findConcatSeparationZippers!281 lt!2493576 lt!2493591 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408) s!7408))))

(declare-fun b!6996948 () Bool)

(assert (=> b!6996948 (= e!4205674 (Some!16764 (tuple2!67867 Nil!67202 s!7408)))))

(assert (= (and d!2179930 res!2854297) b!6996942))

(assert (= (and d!2179930 c!1298378) b!6996948))

(assert (= (and d!2179930 (not c!1298378)) b!6996944))

(assert (= (and b!6996944 c!1298377) b!6996943))

(assert (= (and b!6996944 (not c!1298377)) b!6996947))

(assert (= (and d!2179930 res!2854298) b!6996946))

(assert (= (and b!6996946 res!2854300) b!6996940))

(assert (= (and b!6996940 res!2854299) b!6996945))

(assert (= (and d!2179930 (not res!2854296)) b!6996941))

(declare-fun m!7689024 () Bool)

(assert (=> b!6996945 m!7689024))

(declare-fun m!7689026 () Bool)

(assert (=> b!6996945 m!7689026))

(assert (=> b!6996946 m!7689024))

(declare-fun m!7689028 () Bool)

(assert (=> b!6996946 m!7689028))

(declare-fun m!7689030 () Bool)

(assert (=> b!6996942 m!7689030))

(declare-fun m!7689032 () Bool)

(assert (=> d!2179930 m!7689032))

(declare-fun m!7689034 () Bool)

(assert (=> d!2179930 m!7689034))

(declare-fun m!7689036 () Bool)

(assert (=> d!2179930 m!7689036))

(declare-fun m!7689038 () Bool)

(assert (=> b!6996947 m!7689038))

(assert (=> b!6996947 m!7689038))

(declare-fun m!7689040 () Bool)

(assert (=> b!6996947 m!7689040))

(declare-fun m!7689042 () Bool)

(assert (=> b!6996947 m!7689042))

(assert (=> b!6996947 m!7689038))

(declare-fun m!7689044 () Bool)

(assert (=> b!6996947 m!7689044))

(assert (=> b!6996940 m!7689024))

(declare-fun m!7689046 () Bool)

(assert (=> b!6996940 m!7689046))

(assert (=> b!6996941 m!7689032))

(assert (=> b!6996706 d!2179930))

(declare-fun d!2179932 () Bool)

(declare-fun isEmpty!39229 (Option!16765) Bool)

(assert (=> d!2179932 (= (isDefined!13466 lt!2493579) (not (isEmpty!39229 lt!2493579)))))

(declare-fun bs!1863438 () Bool)

(assert (= bs!1863438 d!2179932))

(declare-fun m!7689048 () Bool)

(assert (=> bs!1863438 m!7689048))

(assert (=> b!6996706 d!2179932))

(declare-fun d!2179934 () Bool)

(assert (=> d!2179934 (= (get!23560 lt!2493579) (v!53038 lt!2493579))))

(assert (=> b!6996706 d!2179934))

(declare-fun d!2179936 () Bool)

(declare-fun c!1298379 () Bool)

(assert (=> d!2179936 (= c!1298379 (isEmpty!39226 (_1!37236 lt!2493566)))))

(declare-fun e!4205677 () Bool)

(assert (=> d!2179936 (= (matchZipper!2800 lt!2493576 (_1!37236 lt!2493566)) e!4205677)))

(declare-fun b!6996949 () Bool)

(assert (=> b!6996949 (= e!4205677 (nullableZipper!2455 lt!2493576))))

(declare-fun b!6996950 () Bool)

(assert (=> b!6996950 (= e!4205677 (matchZipper!2800 (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 lt!2493566))) (tail!13290 (_1!37236 lt!2493566))))))

(assert (= (and d!2179936 c!1298379) b!6996949))

(assert (= (and d!2179936 (not c!1298379)) b!6996950))

(assert (=> d!2179936 m!7688656))

(declare-fun m!7689050 () Bool)

(assert (=> b!6996949 m!7689050))

(declare-fun m!7689052 () Bool)

(assert (=> b!6996950 m!7689052))

(assert (=> b!6996950 m!7689052))

(declare-fun m!7689054 () Bool)

(assert (=> b!6996950 m!7689054))

(declare-fun m!7689056 () Bool)

(assert (=> b!6996950 m!7689056))

(assert (=> b!6996950 m!7689054))

(assert (=> b!6996950 m!7689056))

(declare-fun m!7689058 () Bool)

(assert (=> b!6996950 m!7689058))

(assert (=> b!6996706 d!2179936))

(declare-fun b!6996969 () Bool)

(declare-fun e!4205692 () Bool)

(declare-fun call!635167 () Bool)

(assert (=> b!6996969 (= e!4205692 call!635167)))

(declare-fun b!6996970 () Bool)

(declare-fun e!4205693 () Bool)

(declare-fun e!4205697 () Bool)

(assert (=> b!6996970 (= e!4205693 e!4205697)))

(declare-fun c!1298385 () Bool)

(assert (=> b!6996970 (= c!1298385 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6996971 () Bool)

(declare-fun e!4205698 () Bool)

(assert (=> b!6996971 (= e!4205698 call!635167)))

(declare-fun d!2179938 () Bool)

(declare-fun res!2854313 () Bool)

(declare-fun e!4205694 () Bool)

(assert (=> d!2179938 (=> res!2854313 e!4205694)))

(assert (=> d!2179938 (= res!2854313 (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))))))

(assert (=> d!2179938 (= (validRegex!8870 (h!73649 (exprs!6756 lt!2493587))) e!4205694)))

(declare-fun bm!635162 () Bool)

(declare-fun call!635168 () Bool)

(assert (=> bm!635162 (= call!635167 call!635168)))

(declare-fun bm!635163 () Bool)

(declare-fun call!635169 () Bool)

(assert (=> bm!635163 (= call!635169 (validRegex!8870 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6996972 () Bool)

(declare-fun e!4205695 () Bool)

(assert (=> b!6996972 (= e!4205695 e!4205692)))

(declare-fun res!2854315 () Bool)

(assert (=> b!6996972 (=> (not res!2854315) (not e!4205692))))

(assert (=> b!6996972 (= res!2854315 call!635169)))

(declare-fun b!6996973 () Bool)

(declare-fun res!2854316 () Bool)

(assert (=> b!6996973 (=> res!2854316 e!4205695)))

(assert (=> b!6996973 (= res!2854316 (not (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587)))))))

(assert (=> b!6996973 (= e!4205697 e!4205695)))

(declare-fun b!6996974 () Bool)

(assert (=> b!6996974 (= e!4205694 e!4205693)))

(declare-fun c!1298384 () Bool)

(assert (=> b!6996974 (= c!1298384 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6996975 () Bool)

(declare-fun res!2854312 () Bool)

(assert (=> b!6996975 (=> (not res!2854312) (not e!4205698))))

(assert (=> b!6996975 (= res!2854312 call!635169)))

(assert (=> b!6996975 (= e!4205697 e!4205698)))

(declare-fun b!6996976 () Bool)

(declare-fun e!4205696 () Bool)

(assert (=> b!6996976 (= e!4205693 e!4205696)))

(declare-fun res!2854314 () Bool)

(assert (=> b!6996976 (= res!2854314 (not (nullable!7020 (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))

(assert (=> b!6996976 (=> (not res!2854314) (not e!4205696))))

(declare-fun b!6996977 () Bool)

(assert (=> b!6996977 (= e!4205696 call!635168)))

(declare-fun bm!635164 () Bool)

(assert (=> bm!635164 (= call!635168 (validRegex!8870 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(assert (= (and d!2179938 (not res!2854313)) b!6996974))

(assert (= (and b!6996974 c!1298384) b!6996976))

(assert (= (and b!6996974 (not c!1298384)) b!6996970))

(assert (= (and b!6996976 res!2854314) b!6996977))

(assert (= (and b!6996970 c!1298385) b!6996975))

(assert (= (and b!6996970 (not c!1298385)) b!6996973))

(assert (= (and b!6996975 res!2854312) b!6996971))

(assert (= (and b!6996973 (not res!2854316)) b!6996972))

(assert (= (and b!6996972 res!2854315) b!6996969))

(assert (= (or b!6996971 b!6996969) bm!635162))

(assert (= (or b!6996975 b!6996972) bm!635163))

(assert (= (or b!6996977 bm!635162) bm!635164))

(declare-fun m!7689060 () Bool)

(assert (=> bm!635163 m!7689060))

(declare-fun m!7689062 () Bool)

(assert (=> b!6996976 m!7689062))

(declare-fun m!7689064 () Bool)

(assert (=> bm!635164 m!7689064))

(assert (=> b!6996695 d!2179938))

(declare-fun d!2179940 () Bool)

(declare-fun c!1298386 () Bool)

(assert (=> d!2179940 (= c!1298386 (isEmpty!39226 (t!381075 s!7408)))))

(declare-fun e!4205699 () Bool)

(assert (=> d!2179940 (= (matchZipper!2800 lt!2493594 (t!381075 s!7408)) e!4205699)))

(declare-fun b!6996978 () Bool)

(assert (=> b!6996978 (= e!4205699 (nullableZipper!2455 lt!2493594))))

(declare-fun b!6996979 () Bool)

(assert (=> b!6996979 (= e!4205699 (matchZipper!2800 (derivationStepZipper!2740 lt!2493594 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))))))

(assert (= (and d!2179940 c!1298386) b!6996978))

(assert (= (and d!2179940 (not c!1298386)) b!6996979))

(declare-fun m!7689066 () Bool)

(assert (=> d!2179940 m!7689066))

(declare-fun m!7689068 () Bool)

(assert (=> b!6996978 m!7689068))

(declare-fun m!7689070 () Bool)

(assert (=> b!6996979 m!7689070))

(assert (=> b!6996979 m!7689070))

(declare-fun m!7689072 () Bool)

(assert (=> b!6996979 m!7689072))

(declare-fun m!7689074 () Bool)

(assert (=> b!6996979 m!7689074))

(assert (=> b!6996979 m!7689072))

(assert (=> b!6996979 m!7689074))

(declare-fun m!7689076 () Bool)

(assert (=> b!6996979 m!7689076))

(assert (=> b!6996715 d!2179940))

(assert (=> b!6996694 d!2179940))

(assert (=> b!6996694 d!2179874))

(declare-fun d!2179942 () Bool)

(declare-fun c!1298387 () Bool)

(assert (=> d!2179942 (= c!1298387 (isEmpty!39226 s!7408))))

(declare-fun e!4205700 () Bool)

(assert (=> d!2179942 (= (matchZipper!2800 lt!2493574 s!7408) e!4205700)))

(declare-fun b!6996980 () Bool)

(assert (=> b!6996980 (= e!4205700 (nullableZipper!2455 lt!2493574))))

(declare-fun b!6996981 () Bool)

(assert (=> b!6996981 (= e!4205700 (matchZipper!2800 (derivationStepZipper!2740 lt!2493574 (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2179942 c!1298387) b!6996980))

(assert (= (and d!2179942 (not c!1298387)) b!6996981))

(assert (=> d!2179942 m!7688998))

(declare-fun m!7689078 () Bool)

(assert (=> b!6996980 m!7689078))

(assert (=> b!6996981 m!7689002))

(assert (=> b!6996981 m!7689002))

(declare-fun m!7689080 () Bool)

(assert (=> b!6996981 m!7689080))

(assert (=> b!6996981 m!7689006))

(assert (=> b!6996981 m!7689080))

(assert (=> b!6996981 m!7689006))

(declare-fun m!7689082 () Bool)

(assert (=> b!6996981 m!7689082))

(assert (=> b!6996713 d!2179942))

(assert (=> b!6996713 d!2179874))

(assert (=> b!6996714 d!2179874))

(declare-fun d!2179944 () Bool)

(declare-fun c!1298388 () Bool)

(assert (=> d!2179944 (= c!1298388 (isEmpty!39226 (t!381075 s!7408)))))

(declare-fun e!4205701 () Bool)

(assert (=> d!2179944 (= (matchZipper!2800 lt!2493557 (t!381075 s!7408)) e!4205701)))

(declare-fun b!6996982 () Bool)

(assert (=> b!6996982 (= e!4205701 (nullableZipper!2455 lt!2493557))))

(declare-fun b!6996983 () Bool)

(assert (=> b!6996983 (= e!4205701 (matchZipper!2800 (derivationStepZipper!2740 lt!2493557 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))))))

(assert (= (and d!2179944 c!1298388) b!6996982))

(assert (= (and d!2179944 (not c!1298388)) b!6996983))

(assert (=> d!2179944 m!7689066))

(declare-fun m!7689084 () Bool)

(assert (=> b!6996982 m!7689084))

(assert (=> b!6996983 m!7689070))

(assert (=> b!6996983 m!7689070))

(declare-fun m!7689086 () Bool)

(assert (=> b!6996983 m!7689086))

(assert (=> b!6996983 m!7689074))

(assert (=> b!6996983 m!7689086))

(assert (=> b!6996983 m!7689074))

(declare-fun m!7689088 () Bool)

(assert (=> b!6996983 m!7689088))

(assert (=> b!6996714 d!2179944))

(declare-fun d!2179946 () Bool)

(declare-fun e!4205704 () Bool)

(assert (=> d!2179946 (= (matchZipper!2800 (set.union lt!2493581 lt!2493594) (t!381075 s!7408)) e!4205704)))

(declare-fun res!2854319 () Bool)

(assert (=> d!2179946 (=> res!2854319 e!4205704)))

(assert (=> d!2179946 (= res!2854319 (matchZipper!2800 lt!2493581 (t!381075 s!7408)))))

(declare-fun lt!2493812 () Unit!161177)

(declare-fun choose!52418 ((Set Context!12512) (Set Context!12512) List!67326) Unit!161177)

(assert (=> d!2179946 (= lt!2493812 (choose!52418 lt!2493581 lt!2493594 (t!381075 s!7408)))))

(assert (=> d!2179946 (= (lemmaZipperConcatMatchesSameAsBothZippers!1433 lt!2493581 lt!2493594 (t!381075 s!7408)) lt!2493812)))

(declare-fun b!6996986 () Bool)

(assert (=> b!6996986 (= e!4205704 (matchZipper!2800 lt!2493594 (t!381075 s!7408)))))

(assert (= (and d!2179946 (not res!2854319)) b!6996986))

(declare-fun m!7689090 () Bool)

(assert (=> d!2179946 m!7689090))

(assert (=> d!2179946 m!7688634))

(declare-fun m!7689092 () Bool)

(assert (=> d!2179946 m!7689092))

(assert (=> b!6996986 m!7688646))

(assert (=> b!6996714 d!2179946))

(declare-fun d!2179948 () Bool)

(declare-fun c!1298389 () Bool)

(assert (=> d!2179948 (= c!1298389 (isEmpty!39226 (t!381075 s!7408)))))

(declare-fun e!4205705 () Bool)

(assert (=> d!2179948 (= (matchZipper!2800 lt!2493546 (t!381075 s!7408)) e!4205705)))

(declare-fun b!6996987 () Bool)

(assert (=> b!6996987 (= e!4205705 (nullableZipper!2455 lt!2493546))))

(declare-fun b!6996988 () Bool)

(assert (=> b!6996988 (= e!4205705 (matchZipper!2800 (derivationStepZipper!2740 lt!2493546 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))))))

(assert (= (and d!2179948 c!1298389) b!6996987))

(assert (= (and d!2179948 (not c!1298389)) b!6996988))

(assert (=> d!2179948 m!7689066))

(declare-fun m!7689094 () Bool)

(assert (=> b!6996987 m!7689094))

(assert (=> b!6996988 m!7689070))

(assert (=> b!6996988 m!7689070))

(declare-fun m!7689096 () Bool)

(assert (=> b!6996988 m!7689096))

(assert (=> b!6996988 m!7689074))

(assert (=> b!6996988 m!7689096))

(assert (=> b!6996988 m!7689074))

(declare-fun m!7689098 () Bool)

(assert (=> b!6996988 m!7689098))

(assert (=> b!6996714 d!2179948))

(declare-fun d!2179950 () Bool)

(declare-fun c!1298390 () Bool)

(assert (=> d!2179950 (= c!1298390 (isEmpty!39226 (t!381075 s!7408)))))

(declare-fun e!4205706 () Bool)

(assert (=> d!2179950 (= (matchZipper!2800 lt!2493581 (t!381075 s!7408)) e!4205706)))

(declare-fun b!6996989 () Bool)

(assert (=> b!6996989 (= e!4205706 (nullableZipper!2455 lt!2493581))))

(declare-fun b!6996990 () Bool)

(assert (=> b!6996990 (= e!4205706 (matchZipper!2800 (derivationStepZipper!2740 lt!2493581 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))))))

(assert (= (and d!2179950 c!1298390) b!6996989))

(assert (= (and d!2179950 (not c!1298390)) b!6996990))

(assert (=> d!2179950 m!7689066))

(declare-fun m!7689100 () Bool)

(assert (=> b!6996989 m!7689100))

(assert (=> b!6996990 m!7689070))

(assert (=> b!6996990 m!7689070))

(declare-fun m!7689102 () Bool)

(assert (=> b!6996990 m!7689102))

(assert (=> b!6996990 m!7689074))

(assert (=> b!6996990 m!7689102))

(assert (=> b!6996990 m!7689074))

(declare-fun m!7689104 () Bool)

(assert (=> b!6996990 m!7689104))

(assert (=> b!6996714 d!2179950))

(declare-fun d!2179952 () Bool)

(declare-fun lt!2493813 () Int)

(assert (=> d!2179952 (>= lt!2493813 0)))

(declare-fun e!4205707 () Int)

(assert (=> d!2179952 (= lt!2493813 e!4205707)))

(declare-fun c!1298391 () Bool)

(assert (=> d!2179952 (= c!1298391 (is-Cons!67203 (Cons!67203 lt!2493561 Nil!67203)))))

(assert (=> d!2179952 (= (zipperDepthTotal!481 (Cons!67203 lt!2493561 Nil!67203)) lt!2493813)))

(declare-fun b!6996991 () Bool)

(assert (=> b!6996991 (= e!4205707 (+ (contextDepthTotal!453 (h!73651 (Cons!67203 lt!2493561 Nil!67203))) (zipperDepthTotal!481 (t!381076 (Cons!67203 lt!2493561 Nil!67203)))))))

(declare-fun b!6996992 () Bool)

(assert (=> b!6996992 (= e!4205707 0)))

(assert (= (and d!2179952 c!1298391) b!6996991))

(assert (= (and d!2179952 (not c!1298391)) b!6996992))

(declare-fun m!7689106 () Bool)

(assert (=> b!6996991 m!7689106))

(declare-fun m!7689108 () Bool)

(assert (=> b!6996991 m!7689108))

(assert (=> b!6996693 d!2179952))

(declare-fun d!2179954 () Bool)

(declare-fun c!1298392 () Bool)

(assert (=> d!2179954 (= c!1298392 (isEmpty!39226 (_2!37236 lt!2493566)))))

(declare-fun e!4205708 () Bool)

(assert (=> d!2179954 (= (matchZipper!2800 lt!2493591 (_2!37236 lt!2493566)) e!4205708)))

(declare-fun b!6996993 () Bool)

(assert (=> b!6996993 (= e!4205708 (nullableZipper!2455 lt!2493591))))

(declare-fun b!6996994 () Bool)

(assert (=> b!6996994 (= e!4205708 (matchZipper!2800 (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 lt!2493566))) (tail!13290 (_2!37236 lt!2493566))))))

(assert (= (and d!2179954 c!1298392) b!6996993))

(assert (= (and d!2179954 (not c!1298392)) b!6996994))

(declare-fun m!7689110 () Bool)

(assert (=> d!2179954 m!7689110))

(declare-fun m!7689112 () Bool)

(assert (=> b!6996993 m!7689112))

(declare-fun m!7689114 () Bool)

(assert (=> b!6996994 m!7689114))

(assert (=> b!6996994 m!7689114))

(declare-fun m!7689116 () Bool)

(assert (=> b!6996994 m!7689116))

(declare-fun m!7689118 () Bool)

(assert (=> b!6996994 m!7689118))

(assert (=> b!6996994 m!7689116))

(assert (=> b!6996994 m!7689118))

(declare-fun m!7689120 () Bool)

(assert (=> b!6996994 m!7689120))

(assert (=> b!6996691 d!2179954))

(assert (=> b!6996699 d!2179904))

(assert (=> b!6996699 d!2179874))

(assert (=> b!6996699 d!2179876))

(declare-fun b!6996995 () Bool)

(declare-fun e!4205710 () (Set Context!12512))

(assert (=> b!6996995 (= e!4205710 (set.insert lt!2493586 (as set.empty (Set Context!12512))))))

(declare-fun b!6996996 () Bool)

(declare-fun e!4205711 () (Set Context!12512))

(declare-fun call!635173 () (Set Context!12512))

(assert (=> b!6996996 (= e!4205711 call!635173)))

(declare-fun bm!635165 () Bool)

(declare-fun call!635170 () List!67325)

(declare-fun c!1298394 () Bool)

(declare-fun call!635175 () (Set Context!12512))

(assert (=> bm!635165 (= call!635175 (derivationStepZipperDown!1978 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (ite c!1298394 lt!2493586 (Context!12513 call!635170)) (h!73650 s!7408)))))

(declare-fun bm!635166 () Bool)

(declare-fun call!635174 () (Set Context!12512))

(declare-fun call!635172 () (Set Context!12512))

(assert (=> bm!635166 (= call!635174 call!635172)))

(declare-fun bm!635167 () Bool)

(assert (=> bm!635167 (= call!635173 call!635174)))

(declare-fun bm!635168 () Bool)

(declare-fun call!635171 () List!67325)

(assert (=> bm!635168 (= call!635171 call!635170)))

(declare-fun b!6996998 () Bool)

(declare-fun e!4205709 () (Set Context!12512))

(assert (=> b!6996998 (= e!4205709 (set.union call!635175 call!635174))))

(declare-fun b!6996999 () Bool)

(declare-fun c!1298393 () Bool)

(declare-fun e!4205712 () Bool)

(assert (=> b!6996999 (= c!1298393 e!4205712)))

(declare-fun res!2854320 () Bool)

(assert (=> b!6996999 (=> (not res!2854320) (not e!4205712))))

(assert (=> b!6996999 (= res!2854320 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205714 () (Set Context!12512))

(assert (=> b!6996999 (= e!4205714 e!4205709)))

(declare-fun bm!635169 () Bool)

(declare-fun c!1298395 () Bool)

(assert (=> bm!635169 (= call!635170 ($colon$colon!2499 (exprs!6756 lt!2493586) (ite (or c!1298393 c!1298395) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6997000 () Bool)

(assert (=> b!6997000 (= e!4205712 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6996997 () Bool)

(declare-fun c!1298397 () Bool)

(assert (=> b!6996997 (= c!1298397 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205713 () (Set Context!12512))

(assert (=> b!6996997 (= e!4205713 e!4205711)))

(declare-fun d!2179956 () Bool)

(declare-fun c!1298396 () Bool)

(assert (=> d!2179956 (= c!1298396 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493587))) (h!73650 s!7408))))))

(assert (=> d!2179956 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) lt!2493586 (h!73650 s!7408)) e!4205710)))

(declare-fun bm!635170 () Bool)

(assert (=> bm!635170 (= call!635172 (derivationStepZipperDown!1978 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))) (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171)) (h!73650 s!7408)))))

(declare-fun b!6997001 () Bool)

(assert (=> b!6997001 (= e!4205713 call!635173)))

(declare-fun b!6997002 () Bool)

(assert (=> b!6997002 (= e!4205714 (set.union call!635172 call!635175))))

(declare-fun b!6997003 () Bool)

(assert (=> b!6997003 (= e!4205709 e!4205713)))

(assert (=> b!6997003 (= c!1298395 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997004 () Bool)

(assert (=> b!6997004 (= e!4205710 e!4205714)))

(assert (=> b!6997004 (= c!1298394 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997005 () Bool)

(assert (=> b!6997005 (= e!4205711 (as set.empty (Set Context!12512)))))

(assert (= (and d!2179956 c!1298396) b!6996995))

(assert (= (and d!2179956 (not c!1298396)) b!6997004))

(assert (= (and b!6997004 c!1298394) b!6997002))

(assert (= (and b!6997004 (not c!1298394)) b!6996999))

(assert (= (and b!6996999 res!2854320) b!6997000))

(assert (= (and b!6996999 c!1298393) b!6996998))

(assert (= (and b!6996999 (not c!1298393)) b!6997003))

(assert (= (and b!6997003 c!1298395) b!6997001))

(assert (= (and b!6997003 (not c!1298395)) b!6996997))

(assert (= (and b!6996997 c!1298397) b!6996996))

(assert (= (and b!6996997 (not c!1298397)) b!6997005))

(assert (= (or b!6997001 b!6996996) bm!635168))

(assert (= (or b!6997001 b!6996996) bm!635167))

(assert (= (or b!6996998 bm!635167) bm!635166))

(assert (= (or b!6996998 bm!635168) bm!635169))

(assert (= (or b!6997002 bm!635166) bm!635170))

(assert (= (or b!6997002 b!6996998) bm!635165))

(declare-fun m!7689122 () Bool)

(assert (=> bm!635169 m!7689122))

(declare-fun m!7689124 () Bool)

(assert (=> bm!635165 m!7689124))

(assert (=> b!6997000 m!7688900))

(declare-fun m!7689126 () Bool)

(assert (=> bm!635170 m!7689126))

(assert (=> b!6996995 m!7688698))

(assert (=> b!6996699 d!2179956))

(declare-fun d!2179958 () Bool)

(assert (=> d!2179958 (= (isEmpty!39225 (exprs!6756 lt!2493587)) (is-Nil!67201 (exprs!6756 lt!2493587)))))

(assert (=> b!6996697 d!2179958))

(declare-fun d!2179960 () Bool)

(declare-fun nullableFct!2653 (Regex!17260) Bool)

(assert (=> d!2179960 (= (nullable!7020 (h!73649 (exprs!6756 lt!2493587))) (nullableFct!2653 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun bs!1863439 () Bool)

(assert (= bs!1863439 d!2179960))

(declare-fun m!7689128 () Bool)

(assert (=> bs!1863439 m!7689128))

(assert (=> b!6996698 d!2179960))

(declare-fun d!2179962 () Bool)

(assert (=> d!2179962 (= (tail!13288 (exprs!6756 lt!2493587)) (t!381074 (exprs!6756 lt!2493587)))))

(assert (=> b!6996698 d!2179962))

(declare-fun bs!1863440 () Bool)

(declare-fun d!2179964 () Bool)

(assert (= bs!1863440 (and d!2179964 b!6996719)))

(declare-fun lambda!404535 () Int)

(assert (=> bs!1863440 (= lambda!404535 lambda!404460)))

(declare-fun bs!1863441 () Bool)

(assert (= bs!1863441 (and d!2179964 d!2179882)))

(assert (=> bs!1863441 (= lambda!404535 lambda!404525)))

(declare-fun bs!1863442 () Bool)

(assert (= bs!1863442 (and d!2179964 d!2179894)))

(assert (=> bs!1863442 (= lambda!404535 lambda!404526)))

(assert (=> d!2179964 true))

(assert (=> d!2179964 (= (derivationStepZipper!2740 lt!2493595 (h!73650 s!7408)) (flatMap!2246 lt!2493595 lambda!404535))))

(declare-fun bs!1863443 () Bool)

(assert (= bs!1863443 d!2179964))

(declare-fun m!7689130 () Bool)

(assert (=> bs!1863443 m!7689130))

(assert (=> b!6996719 d!2179964))

(assert (=> b!6996719 d!2179888))

(declare-fun d!2179966 () Bool)

(assert (=> d!2179966 (= (flatMap!2246 lt!2493595 lambda!404460) (choose!52411 lt!2493595 lambda!404460))))

(declare-fun bs!1863444 () Bool)

(assert (= bs!1863444 d!2179966))

(declare-fun m!7689132 () Bool)

(assert (=> bs!1863444 m!7689132))

(assert (=> b!6996719 d!2179966))

(declare-fun d!2179968 () Bool)

(assert (=> d!2179968 (= (flatMap!2246 lt!2493595 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493570))))

(declare-fun lt!2493814 () Unit!161177)

(assert (=> d!2179968 (= lt!2493814 (choose!52410 lt!2493595 lt!2493570 lambda!404460))))

(assert (=> d!2179968 (= lt!2493595 (set.insert lt!2493570 (as set.empty (Set Context!12512))))))

(assert (=> d!2179968 (= (lemmaFlatMapOnSingletonSet!1761 lt!2493595 lt!2493570 lambda!404460) lt!2493814)))

(declare-fun b_lambda!263249 () Bool)

(assert (=> (not b_lambda!263249) (not d!2179968)))

(declare-fun bs!1863445 () Bool)

(assert (= bs!1863445 d!2179968))

(assert (=> bs!1863445 m!7688652))

(declare-fun m!7689134 () Bool)

(assert (=> bs!1863445 m!7689134))

(declare-fun m!7689136 () Bool)

(assert (=> bs!1863445 m!7689136))

(assert (=> bs!1863445 m!7688658))

(assert (=> b!6996719 d!2179968))

(declare-fun b!6997006 () Bool)

(declare-fun e!4205717 () Bool)

(assert (=> b!6997006 (= e!4205717 (nullable!7020 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun b!6997007 () Bool)

(declare-fun e!4205716 () (Set Context!12512))

(declare-fun e!4205715 () (Set Context!12512))

(assert (=> b!6997007 (= e!4205716 e!4205715)))

(declare-fun c!1298398 () Bool)

(assert (=> b!6997007 (= c!1298398 (is-Cons!67201 (exprs!6756 lt!2493570)))))

(declare-fun d!2179970 () Bool)

(declare-fun c!1298399 () Bool)

(assert (=> d!2179970 (= c!1298399 e!4205717)))

(declare-fun res!2854321 () Bool)

(assert (=> d!2179970 (=> (not res!2854321) (not e!4205717))))

(assert (=> d!2179970 (= res!2854321 (is-Cons!67201 (exprs!6756 lt!2493570)))))

(assert (=> d!2179970 (= (derivationStepZipperUp!1910 lt!2493570 (h!73650 s!7408)) e!4205716)))

(declare-fun call!635176 () (Set Context!12512))

(declare-fun b!6997008 () Bool)

(assert (=> b!6997008 (= e!4205716 (set.union call!635176 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (h!73650 s!7408))))))

(declare-fun b!6997009 () Bool)

(assert (=> b!6997009 (= e!4205715 call!635176)))

(declare-fun b!6997010 () Bool)

(assert (=> b!6997010 (= e!4205715 (as set.empty (Set Context!12512)))))

(declare-fun bm!635171 () Bool)

(assert (=> bm!635171 (= call!635176 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493570)) (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (h!73650 s!7408)))))

(assert (= (and d!2179970 res!2854321) b!6997006))

(assert (= (and d!2179970 c!1298399) b!6997008))

(assert (= (and d!2179970 (not c!1298399)) b!6997007))

(assert (= (and b!6997007 c!1298398) b!6997009))

(assert (= (and b!6997007 (not c!1298398)) b!6997010))

(assert (= (or b!6997008 b!6997009) bm!635171))

(declare-fun m!7689138 () Bool)

(assert (=> b!6997006 m!7689138))

(declare-fun m!7689140 () Bool)

(assert (=> b!6997008 m!7689140))

(declare-fun m!7689142 () Bool)

(assert (=> bm!635171 m!7689142))

(assert (=> b!6996719 d!2179970))

(declare-fun d!2179972 () Bool)

(declare-fun c!1298400 () Bool)

(assert (=> d!2179972 (= c!1298400 (isEmpty!39226 s!7408))))

(declare-fun e!4205718 () Bool)

(assert (=> d!2179972 (= (matchZipper!2800 lt!2493552 s!7408) e!4205718)))

(declare-fun b!6997011 () Bool)

(assert (=> b!6997011 (= e!4205718 (nullableZipper!2455 lt!2493552))))

(declare-fun b!6997012 () Bool)

(assert (=> b!6997012 (= e!4205718 (matchZipper!2800 (derivationStepZipper!2740 lt!2493552 (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2179972 c!1298400) b!6997011))

(assert (= (and d!2179972 (not c!1298400)) b!6997012))

(assert (=> d!2179972 m!7688998))

(declare-fun m!7689144 () Bool)

(assert (=> b!6997011 m!7689144))

(assert (=> b!6997012 m!7689002))

(assert (=> b!6997012 m!7689002))

(declare-fun m!7689146 () Bool)

(assert (=> b!6997012 m!7689146))

(assert (=> b!6997012 m!7689006))

(assert (=> b!6997012 m!7689146))

(assert (=> b!6997012 m!7689006))

(declare-fun m!7689148 () Bool)

(assert (=> b!6997012 m!7689148))

(assert (=> b!6996717 d!2179972))

(declare-fun d!2179974 () Bool)

(declare-fun e!4205721 () Bool)

(assert (=> d!2179974 e!4205721))

(declare-fun res!2854324 () Bool)

(assert (=> d!2179974 (=> (not res!2854324) (not e!4205721))))

(declare-fun lt!2493817 () Context!12512)

(declare-fun dynLambda!26974 (Int Context!12512) Bool)

(assert (=> d!2179974 (= res!2854324 (dynLambda!26974 lambda!404457 lt!2493817))))

(declare-fun getWitness!1175 (List!67327 Int) Context!12512)

(assert (=> d!2179974 (= lt!2493817 (getWitness!1175 (toList!10620 lt!2493564) lambda!404457))))

(declare-fun exists!3071 ((Set Context!12512) Int) Bool)

(assert (=> d!2179974 (exists!3071 lt!2493564 lambda!404457)))

(assert (=> d!2179974 (= (getWitness!1173 lt!2493564 lambda!404457) lt!2493817)))

(declare-fun b!6997015 () Bool)

(assert (=> b!6997015 (= e!4205721 (set.member lt!2493817 lt!2493564))))

(assert (= (and d!2179974 res!2854324) b!6997015))

(declare-fun b_lambda!263251 () Bool)

(assert (=> (not b_lambda!263251) (not d!2179974)))

(declare-fun m!7689150 () Bool)

(assert (=> d!2179974 m!7689150))

(assert (=> d!2179974 m!7688664))

(assert (=> d!2179974 m!7688664))

(declare-fun m!7689152 () Bool)

(assert (=> d!2179974 m!7689152))

(declare-fun m!7689154 () Bool)

(assert (=> d!2179974 m!7689154))

(declare-fun m!7689156 () Bool)

(assert (=> b!6997015 m!7689156))

(assert (=> b!6996717 d!2179974))

(declare-fun bs!1863446 () Bool)

(declare-fun d!2179976 () Bool)

(assert (= bs!1863446 (and d!2179976 b!6996717)))

(declare-fun lambda!404538 () Int)

(assert (=> bs!1863446 (not (= lambda!404538 lambda!404457))))

(assert (=> d!2179976 true))

(declare-fun order!27961 () Int)

(declare-fun dynLambda!26975 (Int Int) Int)

(assert (=> d!2179976 (< (dynLambda!26975 order!27961 lambda!404457) (dynLambda!26975 order!27961 lambda!404538))))

(declare-fun forall!16171 (List!67327 Int) Bool)

(assert (=> d!2179976 (= (exists!3069 lt!2493590 lambda!404457) (not (forall!16171 lt!2493590 lambda!404538)))))

(declare-fun bs!1863447 () Bool)

(assert (= bs!1863447 d!2179976))

(declare-fun m!7689158 () Bool)

(assert (=> bs!1863447 m!7689158))

(assert (=> b!6996717 d!2179976))

(declare-fun bs!1863448 () Bool)

(declare-fun d!2179978 () Bool)

(assert (= bs!1863448 (and d!2179978 b!6996717)))

(declare-fun lambda!404541 () Int)

(assert (=> bs!1863448 (= lambda!404541 lambda!404457)))

(declare-fun bs!1863449 () Bool)

(assert (= bs!1863449 (and d!2179978 d!2179976)))

(assert (=> bs!1863449 (not (= lambda!404541 lambda!404538))))

(assert (=> d!2179978 true))

(assert (=> d!2179978 (exists!3069 lt!2493590 lambda!404541)))

(declare-fun lt!2493820 () Unit!161177)

(declare-fun choose!52419 (List!67327 List!67326) Unit!161177)

(assert (=> d!2179978 (= lt!2493820 (choose!52419 lt!2493590 s!7408))))

(assert (=> d!2179978 (matchZipper!2800 (content!13296 lt!2493590) s!7408)))

(assert (=> d!2179978 (= (lemmaZipperMatchesExistsMatchingContext!229 lt!2493590 s!7408) lt!2493820)))

(declare-fun bs!1863450 () Bool)

(assert (= bs!1863450 d!2179978))

(declare-fun m!7689160 () Bool)

(assert (=> bs!1863450 m!7689160))

(declare-fun m!7689162 () Bool)

(assert (=> bs!1863450 m!7689162))

(declare-fun m!7689164 () Bool)

(assert (=> bs!1863450 m!7689164))

(assert (=> bs!1863450 m!7689164))

(declare-fun m!7689166 () Bool)

(assert (=> bs!1863450 m!7689166))

(assert (=> b!6996717 d!2179978))

(declare-fun d!2179980 () Bool)

(declare-fun e!4205722 () Bool)

(assert (=> d!2179980 e!4205722))

(declare-fun res!2854325 () Bool)

(assert (=> d!2179980 (=> (not res!2854325) (not e!4205722))))

(declare-fun lt!2493821 () List!67327)

(assert (=> d!2179980 (= res!2854325 (noDuplicate!2537 lt!2493821))))

(assert (=> d!2179980 (= lt!2493821 (choose!52414 lt!2493564))))

(assert (=> d!2179980 (= (toList!10620 lt!2493564) lt!2493821)))

(declare-fun b!6997018 () Bool)

(assert (=> b!6997018 (= e!4205722 (= (content!13296 lt!2493821) lt!2493564))))

(assert (= (and d!2179980 res!2854325) b!6997018))

(declare-fun m!7689168 () Bool)

(assert (=> d!2179980 m!7689168))

(declare-fun m!7689170 () Bool)

(assert (=> d!2179980 m!7689170))

(declare-fun m!7689172 () Bool)

(assert (=> b!6997018 m!7689172))

(assert (=> b!6996717 d!2179980))

(assert (=> b!6996718 d!2179940))

(assert (=> b!6996718 d!2179874))

(declare-fun b!6997027 () Bool)

(declare-fun e!4205727 () List!67326)

(assert (=> b!6997027 (= e!4205727 (_2!37236 lt!2493566))))

(declare-fun d!2179982 () Bool)

(declare-fun e!4205728 () Bool)

(assert (=> d!2179982 e!4205728))

(declare-fun res!2854330 () Bool)

(assert (=> d!2179982 (=> (not res!2854330) (not e!4205728))))

(declare-fun lt!2493824 () List!67326)

(declare-fun content!13297 (List!67326) (Set C!34790))

(assert (=> d!2179982 (= res!2854330 (= (content!13297 lt!2493824) (set.union (content!13297 (_1!37236 lt!2493566)) (content!13297 (_2!37236 lt!2493566)))))))

(assert (=> d!2179982 (= lt!2493824 e!4205727)))

(declare-fun c!1298405 () Bool)

(assert (=> d!2179982 (= c!1298405 (is-Nil!67202 (_1!37236 lt!2493566)))))

(assert (=> d!2179982 (= (++!15222 (_1!37236 lt!2493566) (_2!37236 lt!2493566)) lt!2493824)))

(declare-fun b!6997028 () Bool)

(assert (=> b!6997028 (= e!4205727 (Cons!67202 (h!73650 (_1!37236 lt!2493566)) (++!15222 (t!381075 (_1!37236 lt!2493566)) (_2!37236 lt!2493566))))))

(declare-fun b!6997030 () Bool)

(assert (=> b!6997030 (= e!4205728 (or (not (= (_2!37236 lt!2493566) Nil!67202)) (= lt!2493824 (_1!37236 lt!2493566))))))

(declare-fun b!6997029 () Bool)

(declare-fun res!2854331 () Bool)

(assert (=> b!6997029 (=> (not res!2854331) (not e!4205728))))

(declare-fun size!40927 (List!67326) Int)

(assert (=> b!6997029 (= res!2854331 (= (size!40927 lt!2493824) (+ (size!40927 (_1!37236 lt!2493566)) (size!40927 (_2!37236 lt!2493566)))))))

(assert (= (and d!2179982 c!1298405) b!6997027))

(assert (= (and d!2179982 (not c!1298405)) b!6997028))

(assert (= (and d!2179982 res!2854330) b!6997029))

(assert (= (and b!6997029 res!2854331) b!6997030))

(declare-fun m!7689174 () Bool)

(assert (=> d!2179982 m!7689174))

(declare-fun m!7689176 () Bool)

(assert (=> d!2179982 m!7689176))

(declare-fun m!7689178 () Bool)

(assert (=> d!2179982 m!7689178))

(declare-fun m!7689180 () Bool)

(assert (=> b!6997028 m!7689180))

(declare-fun m!7689182 () Bool)

(assert (=> b!6997029 m!7689182))

(declare-fun m!7689184 () Bool)

(assert (=> b!6997029 m!7689184))

(declare-fun m!7689186 () Bool)

(assert (=> b!6997029 m!7689186))

(assert (=> b!6996716 d!2179982))

(declare-fun bs!1863451 () Bool)

(declare-fun d!2179984 () Bool)

(assert (= bs!1863451 (and d!2179984 b!6996710)))

(declare-fun lambda!404542 () Int)

(assert (=> bs!1863451 (= lambda!404542 lambda!404459)))

(declare-fun bs!1863452 () Bool)

(assert (= bs!1863452 (and d!2179984 d!2179926)))

(assert (=> bs!1863452 (= lambda!404542 lambda!404534)))

(assert (=> d!2179984 (= (inv!86010 setElem!48014) (forall!16170 (exprs!6756 setElem!48014) lambda!404542))))

(declare-fun bs!1863453 () Bool)

(assert (= bs!1863453 d!2179984))

(declare-fun m!7689188 () Bool)

(assert (=> bs!1863453 m!7689188))

(assert (=> setNonEmpty!48014 d!2179984))

(declare-fun b!6997035 () Bool)

(declare-fun e!4205731 () Bool)

(declare-fun tp!1930675 () Bool)

(assert (=> b!6997035 (= e!4205731 (and tp_is_empty!43745 tp!1930675))))

(assert (=> b!6996704 (= tp!1930659 e!4205731)))

(assert (= (and b!6996704 (is-Cons!67202 (t!381075 s!7408))) b!6997035))

(declare-fun b!6997040 () Bool)

(declare-fun e!4205734 () Bool)

(declare-fun tp!1930680 () Bool)

(declare-fun tp!1930681 () Bool)

(assert (=> b!6997040 (= e!4205734 (and tp!1930680 tp!1930681))))

(assert (=> b!6996712 (= tp!1930658 e!4205734)))

(assert (= (and b!6996712 (is-Cons!67201 (exprs!6756 ct2!306))) b!6997040))

(declare-fun b!6997041 () Bool)

(declare-fun e!4205735 () Bool)

(declare-fun tp!1930682 () Bool)

(declare-fun tp!1930683 () Bool)

(assert (=> b!6997041 (= e!4205735 (and tp!1930682 tp!1930683))))

(assert (=> b!6996692 (= tp!1930657 e!4205735)))

(assert (= (and b!6996692 (is-Cons!67201 (exprs!6756 setElem!48014))) b!6997041))

(declare-fun condSetEmpty!48020 () Bool)

(assert (=> setNonEmpty!48014 (= condSetEmpty!48020 (= setRest!48014 (as set.empty (Set Context!12512))))))

(declare-fun setRes!48020 () Bool)

(assert (=> setNonEmpty!48014 (= tp!1930660 setRes!48020)))

(declare-fun setIsEmpty!48020 () Bool)

(assert (=> setIsEmpty!48020 setRes!48020))

(declare-fun setNonEmpty!48020 () Bool)

(declare-fun setElem!48020 () Context!12512)

(declare-fun e!4205738 () Bool)

(declare-fun tp!1930689 () Bool)

(assert (=> setNonEmpty!48020 (= setRes!48020 (and tp!1930689 (inv!86010 setElem!48020) e!4205738))))

(declare-fun setRest!48020 () (Set Context!12512))

(assert (=> setNonEmpty!48020 (= setRest!48014 (set.union (set.insert setElem!48020 (as set.empty (Set Context!12512))) setRest!48020))))

(declare-fun b!6997046 () Bool)

(declare-fun tp!1930688 () Bool)

(assert (=> b!6997046 (= e!4205738 tp!1930688)))

(assert (= (and setNonEmpty!48014 condSetEmpty!48020) setIsEmpty!48020))

(assert (= (and setNonEmpty!48014 (not condSetEmpty!48020)) setNonEmpty!48020))

(assert (= setNonEmpty!48020 b!6997046))

(declare-fun m!7689190 () Bool)

(assert (=> setNonEmpty!48020 m!7689190))

(declare-fun b_lambda!263253 () Bool)

(assert (= b_lambda!263247 (or b!6996710 b_lambda!263253)))

(declare-fun bs!1863454 () Bool)

(declare-fun d!2179986 () Bool)

(assert (= bs!1863454 (and d!2179986 b!6996710)))

(declare-fun lt!2493825 () Unit!161177)

(assert (=> bs!1863454 (= lt!2493825 (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493561) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> bs!1863454 (= (dynLambda!26973 lambda!404458 lt!2493561) (Context!12513 (++!15221 (exprs!6756 lt!2493561) (exprs!6756 ct2!306))))))

(declare-fun m!7689192 () Bool)

(assert (=> bs!1863454 m!7689192))

(declare-fun m!7689194 () Bool)

(assert (=> bs!1863454 m!7689194))

(assert (=> d!2179920 d!2179986))

(declare-fun b_lambda!263255 () Bool)

(assert (= b_lambda!263249 (or b!6996719 b_lambda!263255)))

(declare-fun bs!1863455 () Bool)

(declare-fun d!2179988 () Bool)

(assert (= bs!1863455 (and d!2179988 b!6996719)))

(assert (=> bs!1863455 (= (dynLambda!26972 lambda!404460 lt!2493570) (derivationStepZipperUp!1910 lt!2493570 (h!73650 s!7408)))))

(assert (=> bs!1863455 m!7688650))

(assert (=> d!2179968 d!2179988))

(declare-fun b_lambda!263257 () Bool)

(assert (= b_lambda!263245 (or b!6996719 b_lambda!263257)))

(declare-fun bs!1863456 () Bool)

(declare-fun d!2179990 () Bool)

(assert (= bs!1863456 (and d!2179990 b!6996719)))

(assert (=> bs!1863456 (= (dynLambda!26972 lambda!404460 lt!2493561) (derivationStepZipperUp!1910 lt!2493561 (h!73650 s!7408)))))

(assert (=> bs!1863456 m!7688724))

(assert (=> d!2179916 d!2179990))

(declare-fun b_lambda!263259 () Bool)

(assert (= b_lambda!263239 (or b!6996719 b_lambda!263259)))

(declare-fun bs!1863457 () Bool)

(declare-fun d!2179992 () Bool)

(assert (= bs!1863457 (and d!2179992 b!6996719)))

(assert (=> bs!1863457 (= (dynLambda!26972 lambda!404460 lt!2493586) (derivationStepZipperUp!1910 lt!2493586 (h!73650 s!7408)))))

(assert (=> bs!1863457 m!7688688))

(assert (=> d!2179878 d!2179992))

(declare-fun b_lambda!263261 () Bool)

(assert (= b_lambda!263243 (or b!6996719 b_lambda!263261)))

(declare-fun bs!1863458 () Bool)

(declare-fun d!2179994 () Bool)

(assert (= bs!1863458 (and d!2179994 b!6996719)))

(assert (=> bs!1863458 (= (dynLambda!26972 lambda!404460 lt!2493587) (derivationStepZipperUp!1910 lt!2493587 (h!73650 s!7408)))))

(assert (=> bs!1863458 m!7688672))

(assert (=> d!2179900 d!2179994))

(declare-fun b_lambda!263263 () Bool)

(assert (= b_lambda!263251 (or b!6996717 b_lambda!263263)))

(declare-fun bs!1863459 () Bool)

(declare-fun d!2179996 () Bool)

(assert (= bs!1863459 (and d!2179996 b!6996717)))

(assert (=> bs!1863459 (= (dynLambda!26974 lambda!404457 lt!2493817) (matchZipper!2800 (set.insert lt!2493817 (as set.empty (Set Context!12512))) s!7408))))

(declare-fun m!7689196 () Bool)

(assert (=> bs!1863459 m!7689196))

(assert (=> bs!1863459 m!7689196))

(declare-fun m!7689198 () Bool)

(assert (=> bs!1863459 m!7689198))

(assert (=> d!2179974 d!2179996))

(declare-fun b_lambda!263265 () Bool)

(assert (= b_lambda!263241 (or b!6996710 b_lambda!263265)))

(declare-fun bs!1863460 () Bool)

(declare-fun d!2179998 () Bool)

(assert (= bs!1863460 (and d!2179998 b!6996710)))

(declare-fun lt!2493826 () Unit!161177)

(assert (=> bs!1863460 (= lt!2493826 (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493776) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> bs!1863460 (= (dynLambda!26973 lambda!404458 lt!2493776) (Context!12513 (++!15221 (exprs!6756 lt!2493776) (exprs!6756 ct2!306))))))

(declare-fun m!7689200 () Bool)

(assert (=> bs!1863460 m!7689200))

(declare-fun m!7689202 () Bool)

(assert (=> bs!1863460 m!7689202))

(assert (=> d!2179892 d!2179998))

(push 1)

(assert (not d!2179964))

(assert (not d!2179976))

(assert (not d!2179972))

(assert (not b!6997046))

(assert (not bm!635154))

(assert (not b!6996983))

(assert (not b!6996993))

(assert (not d!2179874))

(assert (not b_lambda!263265))

(assert (not b!6996945))

(assert (not d!2179944))

(assert (not b!6996941))

(assert (not d!2179966))

(assert (not d!2179930))

(assert (not b!6996890))

(assert (not bs!1863457))

(assert (not d!2179902))

(assert (not d!2179908))

(assert (not d!2179898))

(assert (not d!2179936))

(assert (not b!6996980))

(assert (not b_lambda!263259))

(assert (not b_lambda!263263))

(assert (not b!6996991))

(assert (not b!6997006))

(assert (not b_lambda!263255))

(assert (not b!6997035))

(assert (not d!2179892))

(assert (not d!2179920))

(assert (not bs!1863459))

(assert (not d!2179904))

(assert (not b!6997008))

(assert (not b!6996982))

(assert (not bm!635135))

(assert (not d!2179890))

(assert (not d!2179940))

(assert (not bs!1863458))

(assert (not d!2179968))

(assert (not b!6996897))

(assert (not b!6996976))

(assert (not d!2179900))

(assert (not b!6997000))

(assert (not bm!635170))

(assert (not bm!635164))

(assert (not bs!1863460))

(assert (not d!2179906))

(assert (not b!6996831))

(assert (not b!6996986))

(assert (not b!6996883))

(assert (not d!2179888))

(assert (not bm!635163))

(assert (not b!6996829))

(assert (not d!2179924))

(assert (not d!2179974))

(assert (not b_lambda!263257))

(assert (not d!2179916))

(assert (not d!2179960))

(assert (not b!6996896))

(assert (not b!6996987))

(assert (not b!6997040))

(assert (not bm!635165))

(assert (not d!2179932))

(assert (not d!2179894))

(assert (not bs!1863454))

(assert (not b!6996946))

(assert (not b!6996940))

(assert (not b!6996863))

(assert (not d!2179954))

(assert (not b!6996912))

(assert (not b!6996990))

(assert (not d!2179982))

(assert (not b!6996979))

(assert (not b!6996950))

(assert (not b!6996949))

(assert (not b_lambda!263261))

(assert (not b!6996884))

(assert (not b!6996869))

(assert (not bm!635155))

(assert (not b!6996914))

(assert (not d!2179946))

(assert (not bs!1863456))

(assert (not b!6996901))

(assert (not b!6996978))

(assert (not b!6996989))

(assert (not setNonEmpty!48020))

(assert (not d!2179878))

(assert (not d!2179922))

(assert (not b!6996947))

(assert (not b!6997028))

(assert (not bm!635153))

(assert (not d!2179948))

(assert (not d!2179984))

(assert (not b!6997012))

(assert (not b!6996920))

(assert (not b_lambda!263253))

(assert (not d!2179926))

(assert (not bm!635152))

(assert (not b!6996871))

(assert (not d!2179880))

(assert (not b!6996906))

(assert (not b!6997029))

(assert (not b!6997041))

(assert (not d!2179914))

(assert (not b!6996981))

(assert (not bm!635148))

(assert (not bm!635169))

(assert (not d!2179942))

(assert (not b!6997018))

(assert (not b!6996994))

(assert tp_is_empty!43745)

(assert (not d!2179882))

(assert (not b!6997011))

(assert (not d!2179980))

(assert (not d!2179978))

(assert (not b!6996921))

(assert (not b!6996942))

(assert (not bm!635171))

(assert (not d!2179928))

(assert (not bs!1863455))

(assert (not d!2179950))

(assert (not b!6996988))

(assert (not b!6996892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1863505 () Bool)

(declare-fun d!2180128 () Bool)

(assert (= bs!1863505 (and d!2180128 b!6996717)))

(declare-fun lambda!404565 () Int)

(assert (=> bs!1863505 (not (= lambda!404565 lambda!404457))))

(declare-fun bs!1863506 () Bool)

(assert (= bs!1863506 (and d!2180128 d!2179976)))

(assert (=> bs!1863506 (not (= lambda!404565 lambda!404538))))

(declare-fun bs!1863507 () Bool)

(assert (= bs!1863507 (and d!2180128 d!2179978)))

(assert (=> bs!1863507 (not (= lambda!404565 lambda!404541))))

(assert (=> d!2180128 (= (nullableZipper!2455 lt!2493552) (exists!3071 lt!2493552 lambda!404565))))

(declare-fun bs!1863508 () Bool)

(assert (= bs!1863508 d!2180128))

(declare-fun m!7689532 () Bool)

(assert (=> bs!1863508 m!7689532))

(assert (=> b!6997011 d!2180128))

(declare-fun d!2180130 () Bool)

(assert (=> d!2180130 (= (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (nullableFct!2653 (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun bs!1863509 () Bool)

(assert (= bs!1863509 d!2180130))

(declare-fun m!7689534 () Bool)

(assert (=> bs!1863509 m!7689534))

(assert (=> b!6997000 d!2180130))

(declare-fun bs!1863510 () Bool)

(declare-fun d!2180132 () Bool)

(assert (= bs!1863510 (and d!2180132 b!6996717)))

(declare-fun lambda!404566 () Int)

(assert (=> bs!1863510 (not (= lambda!404566 lambda!404457))))

(declare-fun bs!1863511 () Bool)

(assert (= bs!1863511 (and d!2180132 d!2179976)))

(assert (=> bs!1863511 (not (= lambda!404566 lambda!404538))))

(declare-fun bs!1863512 () Bool)

(assert (= bs!1863512 (and d!2180132 d!2179978)))

(assert (=> bs!1863512 (not (= lambda!404566 lambda!404541))))

(declare-fun bs!1863513 () Bool)

(assert (= bs!1863513 (and d!2180132 d!2180128)))

(assert (=> bs!1863513 (= lambda!404566 lambda!404565)))

(assert (=> d!2180132 (= (nullableZipper!2455 lt!2493564) (exists!3071 lt!2493564 lambda!404566))))

(declare-fun bs!1863514 () Bool)

(assert (= bs!1863514 d!2180132))

(declare-fun m!7689536 () Bool)

(assert (=> bs!1863514 m!7689536))

(assert (=> b!6996920 d!2180132))

(declare-fun d!2180134 () Bool)

(declare-fun c!1298487 () Bool)

(assert (=> d!2180134 (= c!1298487 (is-Nil!67203 lt!2493781))))

(declare-fun e!4205875 () (Set Context!12512))

(assert (=> d!2180134 (= (content!13296 lt!2493781) e!4205875)))

(declare-fun b!6997279 () Bool)

(assert (=> b!6997279 (= e!4205875 (as set.empty (Set Context!12512)))))

(declare-fun b!6997280 () Bool)

(assert (=> b!6997280 (= e!4205875 (set.union (set.insert (h!73651 lt!2493781) (as set.empty (Set Context!12512))) (content!13296 (t!381076 lt!2493781))))))

(assert (= (and d!2180134 c!1298487) b!6997279))

(assert (= (and d!2180134 (not c!1298487)) b!6997280))

(declare-fun m!7689538 () Bool)

(assert (=> b!6997280 m!7689538))

(declare-fun m!7689540 () Bool)

(assert (=> b!6997280 m!7689540))

(assert (=> b!6996901 d!2180134))

(declare-fun d!2180136 () Bool)

(declare-fun lt!2493890 () Int)

(assert (=> d!2180136 (>= lt!2493890 0)))

(declare-fun e!4205876 () Int)

(assert (=> d!2180136 (= lt!2493890 e!4205876)))

(declare-fun c!1298488 () Bool)

(assert (=> d!2180136 (= c!1298488 (is-Cons!67201 (exprs!6756 (h!73651 lt!2493565))))))

(assert (=> d!2180136 (= (contextDepthTotal!453 (h!73651 lt!2493565)) lt!2493890)))

(declare-fun b!6997281 () Bool)

(assert (=> b!6997281 (= e!4205876 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 (h!73651 lt!2493565)))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 (h!73651 lt!2493565)))))))))

(declare-fun b!6997282 () Bool)

(assert (=> b!6997282 (= e!4205876 1)))

(assert (= (and d!2180136 c!1298488) b!6997281))

(assert (= (and d!2180136 (not c!1298488)) b!6997282))

(declare-fun m!7689542 () Bool)

(assert (=> b!6997281 m!7689542))

(declare-fun m!7689544 () Bool)

(assert (=> b!6997281 m!7689544))

(assert (=> b!6996912 d!2180136))

(declare-fun d!2180138 () Bool)

(declare-fun lt!2493891 () Int)

(assert (=> d!2180138 (>= lt!2493891 0)))

(declare-fun e!4205877 () Int)

(assert (=> d!2180138 (= lt!2493891 e!4205877)))

(declare-fun c!1298489 () Bool)

(assert (=> d!2180138 (= c!1298489 (is-Cons!67203 (t!381076 lt!2493565)))))

(assert (=> d!2180138 (= (zipperDepthTotal!481 (t!381076 lt!2493565)) lt!2493891)))

(declare-fun b!6997283 () Bool)

(assert (=> b!6997283 (= e!4205877 (+ (contextDepthTotal!453 (h!73651 (t!381076 lt!2493565))) (zipperDepthTotal!481 (t!381076 (t!381076 lt!2493565)))))))

(declare-fun b!6997284 () Bool)

(assert (=> b!6997284 (= e!4205877 0)))

(assert (= (and d!2180138 c!1298489) b!6997283))

(assert (= (and d!2180138 (not c!1298489)) b!6997284))

(declare-fun m!7689546 () Bool)

(assert (=> b!6997283 m!7689546))

(declare-fun m!7689548 () Bool)

(assert (=> b!6997283 m!7689548))

(assert (=> b!6996912 d!2180138))

(assert (=> b!6996986 d!2179940))

(declare-fun bs!1863515 () Bool)

(declare-fun d!2180140 () Bool)

(assert (= bs!1863515 (and d!2180140 d!2179976)))

(declare-fun lambda!404567 () Int)

(assert (=> bs!1863515 (not (= lambda!404567 lambda!404538))))

(declare-fun bs!1863516 () Bool)

(assert (= bs!1863516 (and d!2180140 b!6996717)))

(assert (=> bs!1863516 (not (= lambda!404567 lambda!404457))))

(declare-fun bs!1863517 () Bool)

(assert (= bs!1863517 (and d!2180140 d!2180132)))

(assert (=> bs!1863517 (= lambda!404567 lambda!404566)))

(declare-fun bs!1863518 () Bool)

(assert (= bs!1863518 (and d!2180140 d!2180128)))

(assert (=> bs!1863518 (= lambda!404567 lambda!404565)))

(declare-fun bs!1863519 () Bool)

(assert (= bs!1863519 (and d!2180140 d!2179978)))

(assert (=> bs!1863519 (not (= lambda!404567 lambda!404541))))

(assert (=> d!2180140 (= (nullableZipper!2455 lt!2493581) (exists!3071 lt!2493581 lambda!404567))))

(declare-fun bs!1863520 () Bool)

(assert (= bs!1863520 d!2180140))

(declare-fun m!7689550 () Bool)

(assert (=> bs!1863520 m!7689550))

(assert (=> b!6996989 d!2180140))

(assert (=> d!2179908 d!2179918))

(assert (=> d!2179908 d!2179912))

(declare-fun d!2180142 () Bool)

(assert (=> d!2180142 (<= (contextDepthTotal!453 lt!2493587) (zipperDepthTotal!481 lt!2493565))))

(assert (=> d!2180142 true))

(declare-fun _$53!86 () Unit!161177)

(assert (=> d!2180142 (= (choose!52415 lt!2493565 lt!2493587) _$53!86)))

(declare-fun bs!1863521 () Bool)

(assert (= bs!1863521 d!2180142))

(assert (=> bs!1863521 m!7688722))

(assert (=> bs!1863521 m!7688716))

(assert (=> d!2179908 d!2180142))

(declare-fun d!2180144 () Bool)

(declare-fun lt!2493894 () Bool)

(assert (=> d!2180144 (= lt!2493894 (set.member lt!2493587 (content!13296 lt!2493565)))))

(declare-fun e!4205883 () Bool)

(assert (=> d!2180144 (= lt!2493894 e!4205883)))

(declare-fun res!2854404 () Bool)

(assert (=> d!2180144 (=> (not res!2854404) (not e!4205883))))

(assert (=> d!2180144 (= res!2854404 (is-Cons!67203 lt!2493565))))

(assert (=> d!2180144 (= (contains!20418 lt!2493565 lt!2493587) lt!2493894)))

(declare-fun b!6997289 () Bool)

(declare-fun e!4205882 () Bool)

(assert (=> b!6997289 (= e!4205883 e!4205882)))

(declare-fun res!2854403 () Bool)

(assert (=> b!6997289 (=> res!2854403 e!4205882)))

(assert (=> b!6997289 (= res!2854403 (= (h!73651 lt!2493565) lt!2493587))))

(declare-fun b!6997290 () Bool)

(assert (=> b!6997290 (= e!4205882 (contains!20418 (t!381076 lt!2493565) lt!2493587))))

(assert (= (and d!2180144 res!2854404) b!6997289))

(assert (= (and b!6997289 (not res!2854403)) b!6997290))

(declare-fun m!7689552 () Bool)

(assert (=> d!2180144 m!7689552))

(declare-fun m!7689554 () Bool)

(assert (=> d!2180144 m!7689554))

(declare-fun m!7689556 () Bool)

(assert (=> b!6997290 m!7689556))

(assert (=> d!2179908 d!2180144))

(declare-fun b!6997291 () Bool)

(declare-fun e!4205884 () List!67326)

(assert (=> b!6997291 (= e!4205884 (t!381075 s!7408))))

(declare-fun d!2180146 () Bool)

(declare-fun e!4205885 () Bool)

(assert (=> d!2180146 e!4205885))

(declare-fun res!2854405 () Bool)

(assert (=> d!2180146 (=> (not res!2854405) (not e!4205885))))

(declare-fun lt!2493895 () List!67326)

(assert (=> d!2180146 (= res!2854405 (= (content!13297 lt!2493895) (set.union (content!13297 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))) (content!13297 (t!381075 s!7408)))))))

(assert (=> d!2180146 (= lt!2493895 e!4205884)))

(declare-fun c!1298491 () Bool)

(assert (=> d!2180146 (= c!1298491 (is-Nil!67202 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))))))

(assert (=> d!2180146 (= (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408)) lt!2493895)))

(declare-fun b!6997292 () Bool)

(assert (=> b!6997292 (= e!4205884 (Cons!67202 (h!73650 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))) (++!15222 (t!381075 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))) (t!381075 s!7408))))))

(declare-fun b!6997294 () Bool)

(assert (=> b!6997294 (= e!4205885 (or (not (= (t!381075 s!7408) Nil!67202)) (= lt!2493895 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)))))))

(declare-fun b!6997293 () Bool)

(declare-fun res!2854406 () Bool)

(assert (=> b!6997293 (=> (not res!2854406) (not e!4205885))))

(assert (=> b!6997293 (= res!2854406 (= (size!40927 lt!2493895) (+ (size!40927 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))) (size!40927 (t!381075 s!7408)))))))

(assert (= (and d!2180146 c!1298491) b!6997291))

(assert (= (and d!2180146 (not c!1298491)) b!6997292))

(assert (= (and d!2180146 res!2854405) b!6997293))

(assert (= (and b!6997293 res!2854406) b!6997294))

(declare-fun m!7689558 () Bool)

(assert (=> d!2180146 m!7689558))

(assert (=> d!2180146 m!7689038))

(declare-fun m!7689560 () Bool)

(assert (=> d!2180146 m!7689560))

(declare-fun m!7689562 () Bool)

(assert (=> d!2180146 m!7689562))

(declare-fun m!7689564 () Bool)

(assert (=> b!6997292 m!7689564))

(declare-fun m!7689566 () Bool)

(assert (=> b!6997293 m!7689566))

(assert (=> b!6997293 m!7689038))

(declare-fun m!7689568 () Bool)

(assert (=> b!6997293 m!7689568))

(declare-fun m!7689570 () Bool)

(assert (=> b!6997293 m!7689570))

(assert (=> b!6996947 d!2180146))

(declare-fun b!6997295 () Bool)

(declare-fun e!4205886 () List!67326)

(assert (=> b!6997295 (= e!4205886 (Cons!67202 (h!73650 s!7408) Nil!67202))))

(declare-fun d!2180148 () Bool)

(declare-fun e!4205887 () Bool)

(assert (=> d!2180148 e!4205887))

(declare-fun res!2854407 () Bool)

(assert (=> d!2180148 (=> (not res!2854407) (not e!4205887))))

(declare-fun lt!2493896 () List!67326)

(assert (=> d!2180148 (= res!2854407 (= (content!13297 lt!2493896) (set.union (content!13297 Nil!67202) (content!13297 (Cons!67202 (h!73650 s!7408) Nil!67202)))))))

(assert (=> d!2180148 (= lt!2493896 e!4205886)))

(declare-fun c!1298492 () Bool)

(assert (=> d!2180148 (= c!1298492 (is-Nil!67202 Nil!67202))))

(assert (=> d!2180148 (= (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) lt!2493896)))

(declare-fun b!6997296 () Bool)

(assert (=> b!6997296 (= e!4205886 (Cons!67202 (h!73650 Nil!67202) (++!15222 (t!381075 Nil!67202) (Cons!67202 (h!73650 s!7408) Nil!67202))))))

(declare-fun b!6997298 () Bool)

(assert (=> b!6997298 (= e!4205887 (or (not (= (Cons!67202 (h!73650 s!7408) Nil!67202) Nil!67202)) (= lt!2493896 Nil!67202)))))

(declare-fun b!6997297 () Bool)

(declare-fun res!2854408 () Bool)

(assert (=> b!6997297 (=> (not res!2854408) (not e!4205887))))

(assert (=> b!6997297 (= res!2854408 (= (size!40927 lt!2493896) (+ (size!40927 Nil!67202) (size!40927 (Cons!67202 (h!73650 s!7408) Nil!67202)))))))

(assert (= (and d!2180148 c!1298492) b!6997295))

(assert (= (and d!2180148 (not c!1298492)) b!6997296))

(assert (= (and d!2180148 res!2854407) b!6997297))

(assert (= (and b!6997297 res!2854408) b!6997298))

(declare-fun m!7689572 () Bool)

(assert (=> d!2180148 m!7689572))

(declare-fun m!7689574 () Bool)

(assert (=> d!2180148 m!7689574))

(declare-fun m!7689576 () Bool)

(assert (=> d!2180148 m!7689576))

(declare-fun m!7689578 () Bool)

(assert (=> b!6997296 m!7689578))

(declare-fun m!7689580 () Bool)

(assert (=> b!6997297 m!7689580))

(declare-fun m!7689582 () Bool)

(assert (=> b!6997297 m!7689582))

(declare-fun m!7689584 () Bool)

(assert (=> b!6997297 m!7689584))

(assert (=> b!6996947 d!2180148))

(declare-fun d!2180150 () Bool)

(assert (=> d!2180150 (= (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408)) s!7408)))

(declare-fun lt!2493899 () Unit!161177)

(declare-fun choose!52431 (List!67326 C!34790 List!67326 List!67326) Unit!161177)

(assert (=> d!2180150 (= lt!2493899 (choose!52431 Nil!67202 (h!73650 s!7408) (t!381075 s!7408) s!7408))))

(assert (=> d!2180150 (= (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) (t!381075 s!7408))) s!7408)))

(assert (=> d!2180150 (= (lemmaMoveElementToOtherListKeepsConcatEq!2875 Nil!67202 (h!73650 s!7408) (t!381075 s!7408) s!7408) lt!2493899)))

(declare-fun bs!1863522 () Bool)

(assert (= bs!1863522 d!2180150))

(assert (=> bs!1863522 m!7689038))

(assert (=> bs!1863522 m!7689038))

(assert (=> bs!1863522 m!7689040))

(declare-fun m!7689586 () Bool)

(assert (=> bs!1863522 m!7689586))

(declare-fun m!7689588 () Bool)

(assert (=> bs!1863522 m!7689588))

(assert (=> b!6996947 d!2180150))

(declare-fun b!6997299 () Bool)

(declare-fun res!2854412 () Bool)

(declare-fun e!4205892 () Bool)

(assert (=> b!6997299 (=> (not res!2854412) (not e!4205892))))

(declare-fun lt!2493900 () Option!16765)

(assert (=> b!6997299 (= res!2854412 (matchZipper!2800 lt!2493591 (_2!37236 (get!23560 lt!2493900))))))

(declare-fun b!6997300 () Bool)

(declare-fun e!4205888 () Bool)

(assert (=> b!6997300 (= e!4205888 (not (isDefined!13466 lt!2493900)))))

(declare-fun b!6997301 () Bool)

(declare-fun e!4205891 () Bool)

(assert (=> b!6997301 (= e!4205891 (matchZipper!2800 lt!2493591 (t!381075 s!7408)))))

(declare-fun b!6997302 () Bool)

(declare-fun e!4205889 () Option!16765)

(assert (=> b!6997302 (= e!4205889 None!16764)))

(declare-fun b!6997303 () Bool)

(declare-fun e!4205890 () Option!16765)

(assert (=> b!6997303 (= e!4205890 e!4205889)))

(declare-fun c!1298493 () Bool)

(assert (=> b!6997303 (= c!1298493 (is-Nil!67202 (t!381075 s!7408)))))

(declare-fun d!2180152 () Bool)

(assert (=> d!2180152 e!4205888))

(declare-fun res!2854409 () Bool)

(assert (=> d!2180152 (=> res!2854409 e!4205888)))

(assert (=> d!2180152 (= res!2854409 e!4205892)))

(declare-fun res!2854411 () Bool)

(assert (=> d!2180152 (=> (not res!2854411) (not e!4205892))))

(assert (=> d!2180152 (= res!2854411 (isDefined!13466 lt!2493900))))

(assert (=> d!2180152 (= lt!2493900 e!4205890)))

(declare-fun c!1298494 () Bool)

(assert (=> d!2180152 (= c!1298494 e!4205891)))

(declare-fun res!2854410 () Bool)

(assert (=> d!2180152 (=> (not res!2854410) (not e!4205891))))

(assert (=> d!2180152 (= res!2854410 (matchZipper!2800 lt!2493576 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202))))))

(assert (=> d!2180152 (= (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408)) s!7408)))

(assert (=> d!2180152 (= (findConcatSeparationZippers!281 lt!2493576 lt!2493591 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408) s!7408) lt!2493900)))

(declare-fun b!6997304 () Bool)

(assert (=> b!6997304 (= e!4205892 (= (++!15222 (_1!37236 (get!23560 lt!2493900)) (_2!37236 (get!23560 lt!2493900))) s!7408))))

(declare-fun b!6997305 () Bool)

(declare-fun res!2854413 () Bool)

(assert (=> b!6997305 (=> (not res!2854413) (not e!4205892))))

(assert (=> b!6997305 (= res!2854413 (matchZipper!2800 lt!2493576 (_1!37236 (get!23560 lt!2493900))))))

(declare-fun b!6997306 () Bool)

(declare-fun lt!2493901 () Unit!161177)

(declare-fun lt!2493902 () Unit!161177)

(assert (=> b!6997306 (= lt!2493901 lt!2493902)))

(assert (=> b!6997306 (= (++!15222 (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (Cons!67202 (h!73650 (t!381075 s!7408)) Nil!67202)) (t!381075 (t!381075 s!7408))) s!7408)))

(assert (=> b!6997306 (= lt!2493902 (lemmaMoveElementToOtherListKeepsConcatEq!2875 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (h!73650 (t!381075 s!7408)) (t!381075 (t!381075 s!7408)) s!7408))))

(assert (=> b!6997306 (= e!4205889 (findConcatSeparationZippers!281 lt!2493576 lt!2493591 (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (Cons!67202 (h!73650 (t!381075 s!7408)) Nil!67202)) (t!381075 (t!381075 s!7408)) s!7408))))

(declare-fun b!6997307 () Bool)

(assert (=> b!6997307 (= e!4205890 (Some!16764 (tuple2!67867 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408))))))

(assert (= (and d!2180152 res!2854410) b!6997301))

(assert (= (and d!2180152 c!1298494) b!6997307))

(assert (= (and d!2180152 (not c!1298494)) b!6997303))

(assert (= (and b!6997303 c!1298493) b!6997302))

(assert (= (and b!6997303 (not c!1298493)) b!6997306))

(assert (= (and d!2180152 res!2854411) b!6997305))

(assert (= (and b!6997305 res!2854413) b!6997299))

(assert (= (and b!6997299 res!2854412) b!6997304))

(assert (= (and d!2180152 (not res!2854409)) b!6997300))

(declare-fun m!7689590 () Bool)

(assert (=> b!6997304 m!7689590))

(declare-fun m!7689592 () Bool)

(assert (=> b!6997304 m!7689592))

(assert (=> b!6997305 m!7689590))

(declare-fun m!7689594 () Bool)

(assert (=> b!6997305 m!7689594))

(declare-fun m!7689596 () Bool)

(assert (=> b!6997301 m!7689596))

(declare-fun m!7689598 () Bool)

(assert (=> d!2180152 m!7689598))

(assert (=> d!2180152 m!7689038))

(declare-fun m!7689600 () Bool)

(assert (=> d!2180152 m!7689600))

(assert (=> d!2180152 m!7689038))

(assert (=> d!2180152 m!7689040))

(assert (=> b!6997306 m!7689038))

(declare-fun m!7689602 () Bool)

(assert (=> b!6997306 m!7689602))

(assert (=> b!6997306 m!7689602))

(declare-fun m!7689604 () Bool)

(assert (=> b!6997306 m!7689604))

(assert (=> b!6997306 m!7689038))

(declare-fun m!7689606 () Bool)

(assert (=> b!6997306 m!7689606))

(assert (=> b!6997306 m!7689602))

(declare-fun m!7689608 () Bool)

(assert (=> b!6997306 m!7689608))

(assert (=> b!6997299 m!7689590))

(declare-fun m!7689610 () Bool)

(assert (=> b!6997299 m!7689610))

(assert (=> b!6997300 m!7689598))

(assert (=> b!6996947 d!2180152))

(declare-fun bs!1863523 () Bool)

(declare-fun d!2180154 () Bool)

(assert (= bs!1863523 (and d!2180154 d!2179976)))

(declare-fun lambda!404568 () Int)

(assert (=> bs!1863523 (not (= lambda!404568 lambda!404538))))

(declare-fun bs!1863524 () Bool)

(assert (= bs!1863524 (and d!2180154 d!2180140)))

(assert (=> bs!1863524 (= lambda!404568 lambda!404567)))

(declare-fun bs!1863525 () Bool)

(assert (= bs!1863525 (and d!2180154 b!6996717)))

(assert (=> bs!1863525 (not (= lambda!404568 lambda!404457))))

(declare-fun bs!1863526 () Bool)

(assert (= bs!1863526 (and d!2180154 d!2180132)))

(assert (=> bs!1863526 (= lambda!404568 lambda!404566)))

(declare-fun bs!1863527 () Bool)

(assert (= bs!1863527 (and d!2180154 d!2180128)))

(assert (=> bs!1863527 (= lambda!404568 lambda!404565)))

(declare-fun bs!1863528 () Bool)

(assert (= bs!1863528 (and d!2180154 d!2179978)))

(assert (=> bs!1863528 (not (= lambda!404568 lambda!404541))))

(assert (=> d!2180154 (= (nullableZipper!2455 lt!2493574) (exists!3071 lt!2493574 lambda!404568))))

(declare-fun bs!1863529 () Bool)

(assert (= bs!1863529 d!2180154))

(declare-fun m!7689612 () Bool)

(assert (=> bs!1863529 m!7689612))

(assert (=> b!6996980 d!2180154))

(declare-fun d!2180156 () Bool)

(declare-fun c!1298495 () Bool)

(assert (=> d!2180156 (= c!1298495 (isEmpty!39226 (t!381075 s!7408)))))

(declare-fun e!4205893 () Bool)

(assert (=> d!2180156 (= (matchZipper!2800 (set.union lt!2493581 lt!2493594) (t!381075 s!7408)) e!4205893)))

(declare-fun b!6997308 () Bool)

(assert (=> b!6997308 (= e!4205893 (nullableZipper!2455 (set.union lt!2493581 lt!2493594)))))

(declare-fun b!6997309 () Bool)

(assert (=> b!6997309 (= e!4205893 (matchZipper!2800 (derivationStepZipper!2740 (set.union lt!2493581 lt!2493594) (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))))))

(assert (= (and d!2180156 c!1298495) b!6997308))

(assert (= (and d!2180156 (not c!1298495)) b!6997309))

(assert (=> d!2180156 m!7689066))

(declare-fun m!7689614 () Bool)

(assert (=> b!6997308 m!7689614))

(assert (=> b!6997309 m!7689070))

(assert (=> b!6997309 m!7689070))

(declare-fun m!7689616 () Bool)

(assert (=> b!6997309 m!7689616))

(assert (=> b!6997309 m!7689074))

(assert (=> b!6997309 m!7689616))

(assert (=> b!6997309 m!7689074))

(declare-fun m!7689618 () Bool)

(assert (=> b!6997309 m!7689618))

(assert (=> d!2179946 d!2180156))

(assert (=> d!2179946 d!2179950))

(declare-fun e!4205896 () Bool)

(declare-fun d!2180158 () Bool)

(assert (=> d!2180158 (= (matchZipper!2800 (set.union lt!2493581 lt!2493594) (t!381075 s!7408)) e!4205896)))

(declare-fun res!2854416 () Bool)

(assert (=> d!2180158 (=> res!2854416 e!4205896)))

(assert (=> d!2180158 (= res!2854416 (matchZipper!2800 lt!2493581 (t!381075 s!7408)))))

(assert (=> d!2180158 true))

(declare-fun _$48!2435 () Unit!161177)

(assert (=> d!2180158 (= (choose!52418 lt!2493581 lt!2493594 (t!381075 s!7408)) _$48!2435)))

(declare-fun b!6997312 () Bool)

(assert (=> b!6997312 (= e!4205896 (matchZipper!2800 lt!2493594 (t!381075 s!7408)))))

(assert (= (and d!2180158 (not res!2854416)) b!6997312))

(assert (=> d!2180158 m!7689090))

(assert (=> d!2180158 m!7688634))

(assert (=> b!6997312 m!7688646))

(assert (=> d!2179946 d!2180158))

(declare-fun d!2180160 () Bool)

(assert (=> d!2180160 (= (isEmpty!39226 (t!381075 s!7408)) (is-Nil!67202 (t!381075 s!7408)))))

(assert (=> d!2179940 d!2180160))

(declare-fun d!2180162 () Bool)

(assert (=> d!2180162 (= (isDefined!13466 lt!2493807) (not (isEmpty!39229 lt!2493807)))))

(declare-fun bs!1863530 () Bool)

(assert (= bs!1863530 d!2180162))

(declare-fun m!7689620 () Bool)

(assert (=> bs!1863530 m!7689620))

(assert (=> d!2179930 d!2180162))

(declare-fun d!2180164 () Bool)

(declare-fun c!1298496 () Bool)

(assert (=> d!2180164 (= c!1298496 (isEmpty!39226 Nil!67202))))

(declare-fun e!4205897 () Bool)

(assert (=> d!2180164 (= (matchZipper!2800 lt!2493576 Nil!67202) e!4205897)))

(declare-fun b!6997313 () Bool)

(assert (=> b!6997313 (= e!4205897 (nullableZipper!2455 lt!2493576))))

(declare-fun b!6997314 () Bool)

(assert (=> b!6997314 (= e!4205897 (matchZipper!2800 (derivationStepZipper!2740 lt!2493576 (head!14132 Nil!67202)) (tail!13290 Nil!67202)))))

(assert (= (and d!2180164 c!1298496) b!6997313))

(assert (= (and d!2180164 (not c!1298496)) b!6997314))

(declare-fun m!7689622 () Bool)

(assert (=> d!2180164 m!7689622))

(assert (=> b!6997313 m!7689050))

(declare-fun m!7689624 () Bool)

(assert (=> b!6997314 m!7689624))

(assert (=> b!6997314 m!7689624))

(declare-fun m!7689626 () Bool)

(assert (=> b!6997314 m!7689626))

(declare-fun m!7689628 () Bool)

(assert (=> b!6997314 m!7689628))

(assert (=> b!6997314 m!7689626))

(assert (=> b!6997314 m!7689628))

(declare-fun m!7689630 () Bool)

(assert (=> b!6997314 m!7689630))

(assert (=> d!2179930 d!2180164))

(declare-fun b!6997315 () Bool)

(declare-fun e!4205898 () List!67326)

(assert (=> b!6997315 (= e!4205898 s!7408)))

(declare-fun d!2180166 () Bool)

(declare-fun e!4205899 () Bool)

(assert (=> d!2180166 e!4205899))

(declare-fun res!2854417 () Bool)

(assert (=> d!2180166 (=> (not res!2854417) (not e!4205899))))

(declare-fun lt!2493903 () List!67326)

(assert (=> d!2180166 (= res!2854417 (= (content!13297 lt!2493903) (set.union (content!13297 Nil!67202) (content!13297 s!7408))))))

(assert (=> d!2180166 (= lt!2493903 e!4205898)))

(declare-fun c!1298497 () Bool)

(assert (=> d!2180166 (= c!1298497 (is-Nil!67202 Nil!67202))))

(assert (=> d!2180166 (= (++!15222 Nil!67202 s!7408) lt!2493903)))

(declare-fun b!6997316 () Bool)

(assert (=> b!6997316 (= e!4205898 (Cons!67202 (h!73650 Nil!67202) (++!15222 (t!381075 Nil!67202) s!7408)))))

(declare-fun b!6997318 () Bool)

(assert (=> b!6997318 (= e!4205899 (or (not (= s!7408 Nil!67202)) (= lt!2493903 Nil!67202)))))

(declare-fun b!6997317 () Bool)

(declare-fun res!2854418 () Bool)

(assert (=> b!6997317 (=> (not res!2854418) (not e!4205899))))

(assert (=> b!6997317 (= res!2854418 (= (size!40927 lt!2493903) (+ (size!40927 Nil!67202) (size!40927 s!7408))))))

(assert (= (and d!2180166 c!1298497) b!6997315))

(assert (= (and d!2180166 (not c!1298497)) b!6997316))

(assert (= (and d!2180166 res!2854417) b!6997317))

(assert (= (and b!6997317 res!2854418) b!6997318))

(declare-fun m!7689632 () Bool)

(assert (=> d!2180166 m!7689632))

(assert (=> d!2180166 m!7689574))

(declare-fun m!7689634 () Bool)

(assert (=> d!2180166 m!7689634))

(declare-fun m!7689636 () Bool)

(assert (=> b!6997316 m!7689636))

(declare-fun m!7689638 () Bool)

(assert (=> b!6997317 m!7689638))

(assert (=> b!6997317 m!7689582))

(declare-fun m!7689640 () Bool)

(assert (=> b!6997317 m!7689640))

(assert (=> d!2179930 d!2180166))

(assert (=> b!6996890 d!2179960))

(declare-fun d!2180168 () Bool)

(assert (=> d!2180168 (isDefined!13466 (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) Nil!67202 s!7408 s!7408))))

(assert (=> d!2180168 true))

(declare-fun _$50!551 () Unit!161177)

(assert (=> d!2180168 (= (choose!52417 lt!2493576 ct2!306 s!7408) _$50!551)))

(declare-fun bs!1863531 () Bool)

(assert (= bs!1863531 d!2180168))

(assert (=> bs!1863531 m!7688732))

(assert (=> bs!1863531 m!7688732))

(assert (=> bs!1863531 m!7689016))

(assert (=> bs!1863531 m!7689016))

(assert (=> bs!1863531 m!7689018))

(assert (=> d!2179928 d!2180168))

(declare-fun d!2180170 () Bool)

(assert (=> d!2180170 (= (isDefined!13466 (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) Nil!67202 s!7408 s!7408)) (not (isEmpty!39229 (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) Nil!67202 s!7408 s!7408))))))

(declare-fun bs!1863532 () Bool)

(assert (= bs!1863532 d!2180170))

(assert (=> bs!1863532 m!7689016))

(declare-fun m!7689642 () Bool)

(assert (=> bs!1863532 m!7689642))

(assert (=> d!2179928 d!2180170))

(declare-fun bs!1863533 () Bool)

(declare-fun d!2180172 () Bool)

(assert (= bs!1863533 (and d!2180172 b!6996710)))

(declare-fun lambda!404569 () Int)

(assert (=> bs!1863533 (= lambda!404569 lambda!404458)))

(declare-fun bs!1863534 () Bool)

(assert (= bs!1863534 (and d!2180172 d!2179924)))

(assert (=> bs!1863534 (= lambda!404569 lambda!404531)))

(assert (=> d!2180172 true))

(assert (=> d!2180172 (= (appendTo!381 lt!2493576 ct2!306) (map!15537 lt!2493576 lambda!404569))))

(declare-fun bs!1863535 () Bool)

(assert (= bs!1863535 d!2180172))

(declare-fun m!7689644 () Bool)

(assert (=> bs!1863535 m!7689644))

(assert (=> d!2179928 d!2180172))

(declare-fun d!2180174 () Bool)

(declare-fun c!1298498 () Bool)

(assert (=> d!2180174 (= c!1298498 (isEmpty!39226 s!7408))))

(declare-fun e!4205900 () Bool)

(assert (=> d!2180174 (= (matchZipper!2800 (appendTo!381 lt!2493576 ct2!306) s!7408) e!4205900)))

(declare-fun b!6997319 () Bool)

(assert (=> b!6997319 (= e!4205900 (nullableZipper!2455 (appendTo!381 lt!2493576 ct2!306)))))

(declare-fun b!6997320 () Bool)

(assert (=> b!6997320 (= e!4205900 (matchZipper!2800 (derivationStepZipper!2740 (appendTo!381 lt!2493576 ct2!306) (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2180174 c!1298498) b!6997319))

(assert (= (and d!2180174 (not c!1298498)) b!6997320))

(assert (=> d!2180174 m!7688998))

(assert (=> b!6997319 m!7689020))

(declare-fun m!7689646 () Bool)

(assert (=> b!6997319 m!7689646))

(assert (=> b!6997320 m!7689002))

(assert (=> b!6997320 m!7689020))

(assert (=> b!6997320 m!7689002))

(declare-fun m!7689648 () Bool)

(assert (=> b!6997320 m!7689648))

(assert (=> b!6997320 m!7689006))

(assert (=> b!6997320 m!7689648))

(assert (=> b!6997320 m!7689006))

(declare-fun m!7689650 () Bool)

(assert (=> b!6997320 m!7689650))

(assert (=> d!2179928 d!2180174))

(declare-fun b!6997321 () Bool)

(declare-fun res!2854422 () Bool)

(declare-fun e!4205905 () Bool)

(assert (=> b!6997321 (=> (not res!2854422) (not e!4205905))))

(declare-fun lt!2493904 () Option!16765)

(assert (=> b!6997321 (= res!2854422 (matchZipper!2800 (set.insert ct2!306 (as set.empty (Set Context!12512))) (_2!37236 (get!23560 lt!2493904))))))

(declare-fun b!6997322 () Bool)

(declare-fun e!4205901 () Bool)

(assert (=> b!6997322 (= e!4205901 (not (isDefined!13466 lt!2493904)))))

(declare-fun b!6997323 () Bool)

(declare-fun e!4205904 () Bool)

(assert (=> b!6997323 (= e!4205904 (matchZipper!2800 (set.insert ct2!306 (as set.empty (Set Context!12512))) s!7408))))

(declare-fun b!6997324 () Bool)

(declare-fun e!4205902 () Option!16765)

(assert (=> b!6997324 (= e!4205902 None!16764)))

(declare-fun b!6997325 () Bool)

(declare-fun e!4205903 () Option!16765)

(assert (=> b!6997325 (= e!4205903 e!4205902)))

(declare-fun c!1298499 () Bool)

(assert (=> b!6997325 (= c!1298499 (is-Nil!67202 s!7408))))

(declare-fun d!2180176 () Bool)

(assert (=> d!2180176 e!4205901))

(declare-fun res!2854419 () Bool)

(assert (=> d!2180176 (=> res!2854419 e!4205901)))

(assert (=> d!2180176 (= res!2854419 e!4205905)))

(declare-fun res!2854421 () Bool)

(assert (=> d!2180176 (=> (not res!2854421) (not e!4205905))))

(assert (=> d!2180176 (= res!2854421 (isDefined!13466 lt!2493904))))

(assert (=> d!2180176 (= lt!2493904 e!4205903)))

(declare-fun c!1298500 () Bool)

(assert (=> d!2180176 (= c!1298500 e!4205904)))

(declare-fun res!2854420 () Bool)

(assert (=> d!2180176 (=> (not res!2854420) (not e!4205904))))

(assert (=> d!2180176 (= res!2854420 (matchZipper!2800 lt!2493576 Nil!67202))))

(assert (=> d!2180176 (= (++!15222 Nil!67202 s!7408) s!7408)))

(assert (=> d!2180176 (= (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) Nil!67202 s!7408 s!7408) lt!2493904)))

(declare-fun b!6997326 () Bool)

(assert (=> b!6997326 (= e!4205905 (= (++!15222 (_1!37236 (get!23560 lt!2493904)) (_2!37236 (get!23560 lt!2493904))) s!7408))))

(declare-fun b!6997327 () Bool)

(declare-fun res!2854423 () Bool)

(assert (=> b!6997327 (=> (not res!2854423) (not e!4205905))))

(assert (=> b!6997327 (= res!2854423 (matchZipper!2800 lt!2493576 (_1!37236 (get!23560 lt!2493904))))))

(declare-fun b!6997328 () Bool)

(declare-fun lt!2493905 () Unit!161177)

(declare-fun lt!2493906 () Unit!161177)

(assert (=> b!6997328 (= lt!2493905 lt!2493906)))

(assert (=> b!6997328 (= (++!15222 (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408)) s!7408)))

(assert (=> b!6997328 (= lt!2493906 (lemmaMoveElementToOtherListKeepsConcatEq!2875 Nil!67202 (h!73650 s!7408) (t!381075 s!7408) s!7408))))

(assert (=> b!6997328 (= e!4205902 (findConcatSeparationZippers!281 lt!2493576 (set.insert ct2!306 (as set.empty (Set Context!12512))) (++!15222 Nil!67202 (Cons!67202 (h!73650 s!7408) Nil!67202)) (t!381075 s!7408) s!7408))))

(declare-fun b!6997329 () Bool)

(assert (=> b!6997329 (= e!4205903 (Some!16764 (tuple2!67867 Nil!67202 s!7408)))))

(assert (= (and d!2180176 res!2854420) b!6997323))

(assert (= (and d!2180176 c!1298500) b!6997329))

(assert (= (and d!2180176 (not c!1298500)) b!6997325))

(assert (= (and b!6997325 c!1298499) b!6997324))

(assert (= (and b!6997325 (not c!1298499)) b!6997328))

(assert (= (and d!2180176 res!2854421) b!6997327))

(assert (= (and b!6997327 res!2854423) b!6997321))

(assert (= (and b!6997321 res!2854422) b!6997326))

(assert (= (and d!2180176 (not res!2854419)) b!6997322))

(declare-fun m!7689652 () Bool)

(assert (=> b!6997326 m!7689652))

(declare-fun m!7689654 () Bool)

(assert (=> b!6997326 m!7689654))

(assert (=> b!6997327 m!7689652))

(declare-fun m!7689656 () Bool)

(assert (=> b!6997327 m!7689656))

(assert (=> b!6997323 m!7688732))

(declare-fun m!7689658 () Bool)

(assert (=> b!6997323 m!7689658))

(declare-fun m!7689660 () Bool)

(assert (=> d!2180176 m!7689660))

(assert (=> d!2180176 m!7689034))

(assert (=> d!2180176 m!7689036))

(assert (=> b!6997328 m!7689038))

(assert (=> b!6997328 m!7689038))

(assert (=> b!6997328 m!7689040))

(assert (=> b!6997328 m!7689042))

(assert (=> b!6997328 m!7688732))

(assert (=> b!6997328 m!7689038))

(declare-fun m!7689662 () Bool)

(assert (=> b!6997328 m!7689662))

(assert (=> b!6997321 m!7689652))

(assert (=> b!6997321 m!7688732))

(declare-fun m!7689664 () Bool)

(assert (=> b!6997321 m!7689664))

(assert (=> b!6997322 m!7689660))

(assert (=> d!2179928 d!2180176))

(declare-fun e!4205907 () (Set Context!12512))

(declare-fun b!6997330 () Bool)

(assert (=> b!6997330 (= e!4205907 (set.insert (ite c!1298348 lt!2493561 (Context!12513 call!635153)) (as set.empty (Set Context!12512))))))

(declare-fun b!6997331 () Bool)

(declare-fun e!4205908 () (Set Context!12512))

(declare-fun call!635219 () (Set Context!12512))

(assert (=> b!6997331 (= e!4205908 call!635219)))

(declare-fun call!635221 () (Set Context!12512))

(declare-fun c!1298502 () Bool)

(declare-fun call!635216 () List!67325)

(declare-fun bm!635211 () Bool)

(assert (=> bm!635211 (= call!635221 (derivationStepZipperDown!1978 (ite c!1298502 (regTwo!35033 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (regOne!35032 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))) (ite c!1298502 (ite c!1298348 lt!2493561 (Context!12513 call!635153)) (Context!12513 call!635216)) (h!73650 s!7408)))))

(declare-fun bm!635212 () Bool)

(declare-fun call!635220 () (Set Context!12512))

(declare-fun call!635218 () (Set Context!12512))

(assert (=> bm!635212 (= call!635220 call!635218)))

(declare-fun bm!635213 () Bool)

(assert (=> bm!635213 (= call!635219 call!635220)))

(declare-fun bm!635214 () Bool)

(declare-fun call!635217 () List!67325)

(assert (=> bm!635214 (= call!635217 call!635216)))

(declare-fun b!6997333 () Bool)

(declare-fun e!4205906 () (Set Context!12512))

(assert (=> b!6997333 (= e!4205906 (set.union call!635221 call!635220))))

(declare-fun b!6997334 () Bool)

(declare-fun c!1298501 () Bool)

(declare-fun e!4205909 () Bool)

(assert (=> b!6997334 (= c!1298501 e!4205909)))

(declare-fun res!2854424 () Bool)

(assert (=> b!6997334 (=> (not res!2854424) (not e!4205909))))

(assert (=> b!6997334 (= res!2854424 (is-Concat!26105 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun e!4205911 () (Set Context!12512))

(assert (=> b!6997334 (= e!4205911 e!4205906)))

(declare-fun bm!635215 () Bool)

(declare-fun c!1298503 () Bool)

(assert (=> bm!635215 (= call!635216 ($colon$colon!2499 (exprs!6756 (ite c!1298348 lt!2493561 (Context!12513 call!635153))) (ite (or c!1298501 c!1298503) (regTwo!35032 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997335 () Bool)

(assert (=> b!6997335 (= e!4205909 (nullable!7020 (regOne!35032 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997332 () Bool)

(declare-fun c!1298505 () Bool)

(assert (=> b!6997332 (= c!1298505 (is-Star!17260 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun e!4205910 () (Set Context!12512))

(assert (=> b!6997332 (= e!4205910 e!4205908)))

(declare-fun d!2180178 () Bool)

(declare-fun c!1298504 () Bool)

(assert (=> d!2180178 (= c!1298504 (and (is-ElementMatch!17260 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (= (c!1298311 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (h!73650 s!7408))))))

(assert (=> d!2180178 (= (derivationStepZipperDown!1978 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (ite c!1298348 lt!2493561 (Context!12513 call!635153)) (h!73650 s!7408)) e!4205907)))

(declare-fun bm!635216 () Bool)

(assert (=> bm!635216 (= call!635218 (derivationStepZipperDown!1978 (ite c!1298502 (regOne!35033 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298501 (regTwo!35032 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298503 (regOne!35032 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (reg!17589 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))) (ite (or c!1298502 c!1298501) (ite c!1298348 lt!2493561 (Context!12513 call!635153)) (Context!12513 call!635217)) (h!73650 s!7408)))))

(declare-fun b!6997336 () Bool)

(assert (=> b!6997336 (= e!4205910 call!635219)))

(declare-fun b!6997337 () Bool)

(assert (=> b!6997337 (= e!4205911 (set.union call!635218 call!635221))))

(declare-fun b!6997338 () Bool)

(assert (=> b!6997338 (= e!4205906 e!4205910)))

(assert (=> b!6997338 (= c!1298503 (is-Concat!26105 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997339 () Bool)

(assert (=> b!6997339 (= e!4205907 e!4205911)))

(assert (=> b!6997339 (= c!1298502 (is-Union!17260 (ite c!1298348 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997340 () Bool)

(assert (=> b!6997340 (= e!4205908 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180178 c!1298504) b!6997330))

(assert (= (and d!2180178 (not c!1298504)) b!6997339))

(assert (= (and b!6997339 c!1298502) b!6997337))

(assert (= (and b!6997339 (not c!1298502)) b!6997334))

(assert (= (and b!6997334 res!2854424) b!6997335))

(assert (= (and b!6997334 c!1298501) b!6997333))

(assert (= (and b!6997334 (not c!1298501)) b!6997338))

(assert (= (and b!6997338 c!1298503) b!6997336))

(assert (= (and b!6997338 (not c!1298503)) b!6997332))

(assert (= (and b!6997332 c!1298505) b!6997331))

(assert (= (and b!6997332 (not c!1298505)) b!6997340))

(assert (= (or b!6997336 b!6997331) bm!635214))

(assert (= (or b!6997336 b!6997331) bm!635213))

(assert (= (or b!6997333 bm!635213) bm!635212))

(assert (= (or b!6997333 bm!635214) bm!635215))

(assert (= (or b!6997337 bm!635212) bm!635216))

(assert (= (or b!6997337 b!6997333) bm!635211))

(declare-fun m!7689666 () Bool)

(assert (=> bm!635215 m!7689666))

(declare-fun m!7689668 () Bool)

(assert (=> bm!635211 m!7689668))

(declare-fun m!7689670 () Bool)

(assert (=> b!6997335 m!7689670))

(declare-fun m!7689672 () Bool)

(assert (=> bm!635216 m!7689672))

(declare-fun m!7689674 () Bool)

(assert (=> b!6997330 m!7689674))

(assert (=> bm!635148 d!2180178))

(assert (=> d!2179968 d!2179966))

(declare-fun d!2180180 () Bool)

(assert (=> d!2180180 (= (flatMap!2246 lt!2493595 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493570))))

(assert (=> d!2180180 true))

(declare-fun _$13!4388 () Unit!161177)

(assert (=> d!2180180 (= (choose!52410 lt!2493595 lt!2493570 lambda!404460) _$13!4388)))

(declare-fun b_lambda!263295 () Bool)

(assert (=> (not b_lambda!263295) (not d!2180180)))

(declare-fun bs!1863536 () Bool)

(assert (= bs!1863536 d!2180180))

(assert (=> bs!1863536 m!7688652))

(assert (=> bs!1863536 m!7689134))

(assert (=> d!2179968 d!2180180))

(assert (=> d!2179920 d!2179902))

(declare-fun d!2180182 () Bool)

(assert (=> d!2180182 (= (map!15537 lt!2493576 lambda!404458) (set.insert (dynLambda!26973 lambda!404458 lt!2493561) (as set.empty (Set Context!12512))))))

(assert (=> d!2180182 true))

(declare-fun _$12!2106 () Unit!161177)

(assert (=> d!2180182 (= (choose!52416 lt!2493576 lt!2493561 lambda!404458) _$12!2106)))

(declare-fun b_lambda!263297 () Bool)

(assert (=> (not b_lambda!263297) (not d!2180182)))

(declare-fun bs!1863537 () Bool)

(assert (= bs!1863537 d!2180182))

(assert (=> bs!1863537 m!7688710))

(assert (=> bs!1863537 m!7688992))

(assert (=> bs!1863537 m!7688992))

(assert (=> bs!1863537 m!7688996))

(assert (=> d!2179920 d!2180182))

(assert (=> d!2179916 d!2179914))

(declare-fun d!2180184 () Bool)

(assert (=> d!2180184 (= (flatMap!2246 lt!2493576 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493561))))

(assert (=> d!2180184 true))

(declare-fun _$13!4389 () Unit!161177)

(assert (=> d!2180184 (= (choose!52410 lt!2493576 lt!2493561 lambda!404460) _$13!4389)))

(declare-fun b_lambda!263299 () Bool)

(assert (=> (not b_lambda!263299) (not d!2180184)))

(declare-fun bs!1863538 () Bool)

(assert (= bs!1863538 d!2180184))

(assert (=> bs!1863538 m!7688708))

(assert (=> bs!1863538 m!7688984))

(assert (=> d!2179916 d!2180184))

(declare-fun d!2180186 () Bool)

(assert (=> d!2180186 (forall!16170 (++!15221 (exprs!6756 lt!2493776) (exprs!6756 ct2!306)) lambda!404459)))

(declare-fun lt!2493907 () Unit!161177)

(assert (=> d!2180186 (= lt!2493907 (choose!52409 (exprs!6756 lt!2493776) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> d!2180186 (forall!16170 (exprs!6756 lt!2493776) lambda!404459)))

(assert (=> d!2180186 (= (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493776) (exprs!6756 ct2!306) lambda!404459) lt!2493907)))

(declare-fun bs!1863539 () Bool)

(assert (= bs!1863539 d!2180186))

(assert (=> bs!1863539 m!7689202))

(assert (=> bs!1863539 m!7689202))

(declare-fun m!7689676 () Bool)

(assert (=> bs!1863539 m!7689676))

(declare-fun m!7689678 () Bool)

(assert (=> bs!1863539 m!7689678))

(declare-fun m!7689680 () Bool)

(assert (=> bs!1863539 m!7689680))

(assert (=> bs!1863460 d!2180186))

(declare-fun b!6997341 () Bool)

(declare-fun e!4205913 () List!67325)

(assert (=> b!6997341 (= e!4205913 (exprs!6756 ct2!306))))

(declare-fun b!6997343 () Bool)

(declare-fun res!2854425 () Bool)

(declare-fun e!4205912 () Bool)

(assert (=> b!6997343 (=> (not res!2854425) (not e!4205912))))

(declare-fun lt!2493908 () List!67325)

(assert (=> b!6997343 (= res!2854425 (= (size!40926 lt!2493908) (+ (size!40926 (exprs!6756 lt!2493776)) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2180188 () Bool)

(assert (=> d!2180188 e!4205912))

(declare-fun res!2854426 () Bool)

(assert (=> d!2180188 (=> (not res!2854426) (not e!4205912))))

(assert (=> d!2180188 (= res!2854426 (= (content!13295 lt!2493908) (set.union (content!13295 (exprs!6756 lt!2493776)) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2180188 (= lt!2493908 e!4205913)))

(declare-fun c!1298506 () Bool)

(assert (=> d!2180188 (= c!1298506 (is-Nil!67201 (exprs!6756 lt!2493776)))))

(assert (=> d!2180188 (= (++!15221 (exprs!6756 lt!2493776) (exprs!6756 ct2!306)) lt!2493908)))

(declare-fun b!6997344 () Bool)

(assert (=> b!6997344 (= e!4205912 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493908 (exprs!6756 lt!2493776))))))

(declare-fun b!6997342 () Bool)

(assert (=> b!6997342 (= e!4205913 (Cons!67201 (h!73649 (exprs!6756 lt!2493776)) (++!15221 (t!381074 (exprs!6756 lt!2493776)) (exprs!6756 ct2!306))))))

(assert (= (and d!2180188 c!1298506) b!6997341))

(assert (= (and d!2180188 (not c!1298506)) b!6997342))

(assert (= (and d!2180188 res!2854426) b!6997343))

(assert (= (and b!6997343 res!2854425) b!6997344))

(declare-fun m!7689682 () Bool)

(assert (=> b!6997343 m!7689682))

(declare-fun m!7689684 () Bool)

(assert (=> b!6997343 m!7689684))

(assert (=> b!6997343 m!7688920))

(declare-fun m!7689686 () Bool)

(assert (=> d!2180188 m!7689686))

(declare-fun m!7689688 () Bool)

(assert (=> d!2180188 m!7689688))

(assert (=> d!2180188 m!7688926))

(declare-fun m!7689690 () Bool)

(assert (=> b!6997342 m!7689690))

(assert (=> bs!1863460 d!2180188))

(declare-fun d!2180190 () Bool)

(declare-fun c!1298507 () Bool)

(assert (=> d!2180190 (= c!1298507 (isEmpty!39226 (tail!13290 (t!381075 s!7408))))))

(declare-fun e!4205914 () Bool)

(assert (=> d!2180190 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493594 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))) e!4205914)))

(declare-fun b!6997345 () Bool)

(assert (=> b!6997345 (= e!4205914 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493594 (head!14132 (t!381075 s!7408)))))))

(declare-fun b!6997346 () Bool)

(assert (=> b!6997346 (= e!4205914 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493594 (head!14132 (t!381075 s!7408))) (head!14132 (tail!13290 (t!381075 s!7408)))) (tail!13290 (tail!13290 (t!381075 s!7408)))))))

(assert (= (and d!2180190 c!1298507) b!6997345))

(assert (= (and d!2180190 (not c!1298507)) b!6997346))

(assert (=> d!2180190 m!7689074))

(declare-fun m!7689692 () Bool)

(assert (=> d!2180190 m!7689692))

(assert (=> b!6997345 m!7689072))

(declare-fun m!7689694 () Bool)

(assert (=> b!6997345 m!7689694))

(assert (=> b!6997346 m!7689074))

(declare-fun m!7689696 () Bool)

(assert (=> b!6997346 m!7689696))

(assert (=> b!6997346 m!7689072))

(assert (=> b!6997346 m!7689696))

(declare-fun m!7689698 () Bool)

(assert (=> b!6997346 m!7689698))

(assert (=> b!6997346 m!7689074))

(declare-fun m!7689700 () Bool)

(assert (=> b!6997346 m!7689700))

(assert (=> b!6997346 m!7689698))

(assert (=> b!6997346 m!7689700))

(declare-fun m!7689702 () Bool)

(assert (=> b!6997346 m!7689702))

(assert (=> b!6996979 d!2180190))

(declare-fun bs!1863540 () Bool)

(declare-fun d!2180192 () Bool)

(assert (= bs!1863540 (and d!2180192 b!6996719)))

(declare-fun lambda!404570 () Int)

(assert (=> bs!1863540 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404570 lambda!404460))))

(declare-fun bs!1863541 () Bool)

(assert (= bs!1863541 (and d!2180192 d!2179882)))

(assert (=> bs!1863541 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404570 lambda!404525))))

(declare-fun bs!1863542 () Bool)

(assert (= bs!1863542 (and d!2180192 d!2179894)))

(assert (=> bs!1863542 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404570 lambda!404526))))

(declare-fun bs!1863543 () Bool)

(assert (= bs!1863543 (and d!2180192 d!2179964)))

(assert (=> bs!1863543 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404570 lambda!404535))))

(assert (=> d!2180192 true))

(assert (=> d!2180192 (= (derivationStepZipper!2740 lt!2493594 (head!14132 (t!381075 s!7408))) (flatMap!2246 lt!2493594 lambda!404570))))

(declare-fun bs!1863544 () Bool)

(assert (= bs!1863544 d!2180192))

(declare-fun m!7689704 () Bool)

(assert (=> bs!1863544 m!7689704))

(assert (=> b!6996979 d!2180192))

(declare-fun d!2180194 () Bool)

(assert (=> d!2180194 (= (head!14132 (t!381075 s!7408)) (h!73650 (t!381075 s!7408)))))

(assert (=> b!6996979 d!2180194))

(declare-fun d!2180196 () Bool)

(assert (=> d!2180196 (= (tail!13290 (t!381075 s!7408)) (t!381075 (t!381075 s!7408)))))

(assert (=> b!6996979 d!2180196))

(assert (=> bs!1863457 d!2179876))

(declare-fun d!2180198 () Bool)

(declare-fun res!2854431 () Bool)

(declare-fun e!4205919 () Bool)

(assert (=> d!2180198 (=> res!2854431 e!4205919)))

(assert (=> d!2180198 (= res!2854431 (is-Nil!67203 lt!2493590))))

(assert (=> d!2180198 (= (forall!16171 lt!2493590 lambda!404538) e!4205919)))

(declare-fun b!6997351 () Bool)

(declare-fun e!4205920 () Bool)

(assert (=> b!6997351 (= e!4205919 e!4205920)))

(declare-fun res!2854432 () Bool)

(assert (=> b!6997351 (=> (not res!2854432) (not e!4205920))))

(assert (=> b!6997351 (= res!2854432 (dynLambda!26974 lambda!404538 (h!73651 lt!2493590)))))

(declare-fun b!6997352 () Bool)

(assert (=> b!6997352 (= e!4205920 (forall!16171 (t!381076 lt!2493590) lambda!404538))))

(assert (= (and d!2180198 (not res!2854431)) b!6997351))

(assert (= (and b!6997351 res!2854432) b!6997352))

(declare-fun b_lambda!263301 () Bool)

(assert (=> (not b_lambda!263301) (not b!6997351)))

(declare-fun m!7689706 () Bool)

(assert (=> b!6997351 m!7689706))

(declare-fun m!7689708 () Bool)

(assert (=> b!6997352 m!7689708))

(assert (=> d!2179976 d!2180198))

(declare-fun b!6997353 () Bool)

(declare-fun e!4205921 () List!67326)

(assert (=> b!6997353 (= e!4205921 (_2!37236 lt!2493566))))

(declare-fun d!2180200 () Bool)

(declare-fun e!4205922 () Bool)

(assert (=> d!2180200 e!4205922))

(declare-fun res!2854433 () Bool)

(assert (=> d!2180200 (=> (not res!2854433) (not e!4205922))))

(declare-fun lt!2493909 () List!67326)

(assert (=> d!2180200 (= res!2854433 (= (content!13297 lt!2493909) (set.union (content!13297 (t!381075 (_1!37236 lt!2493566))) (content!13297 (_2!37236 lt!2493566)))))))

(assert (=> d!2180200 (= lt!2493909 e!4205921)))

(declare-fun c!1298508 () Bool)

(assert (=> d!2180200 (= c!1298508 (is-Nil!67202 (t!381075 (_1!37236 lt!2493566))))))

(assert (=> d!2180200 (= (++!15222 (t!381075 (_1!37236 lt!2493566)) (_2!37236 lt!2493566)) lt!2493909)))

(declare-fun b!6997354 () Bool)

(assert (=> b!6997354 (= e!4205921 (Cons!67202 (h!73650 (t!381075 (_1!37236 lt!2493566))) (++!15222 (t!381075 (t!381075 (_1!37236 lt!2493566))) (_2!37236 lt!2493566))))))

(declare-fun b!6997356 () Bool)

(assert (=> b!6997356 (= e!4205922 (or (not (= (_2!37236 lt!2493566) Nil!67202)) (= lt!2493909 (t!381075 (_1!37236 lt!2493566)))))))

(declare-fun b!6997355 () Bool)

(declare-fun res!2854434 () Bool)

(assert (=> b!6997355 (=> (not res!2854434) (not e!4205922))))

(assert (=> b!6997355 (= res!2854434 (= (size!40927 lt!2493909) (+ (size!40927 (t!381075 (_1!37236 lt!2493566))) (size!40927 (_2!37236 lt!2493566)))))))

(assert (= (and d!2180200 c!1298508) b!6997353))

(assert (= (and d!2180200 (not c!1298508)) b!6997354))

(assert (= (and d!2180200 res!2854433) b!6997355))

(assert (= (and b!6997355 res!2854434) b!6997356))

(declare-fun m!7689710 () Bool)

(assert (=> d!2180200 m!7689710))

(declare-fun m!7689712 () Bool)

(assert (=> d!2180200 m!7689712))

(assert (=> d!2180200 m!7689178))

(declare-fun m!7689714 () Bool)

(assert (=> b!6997354 m!7689714))

(declare-fun m!7689716 () Bool)

(assert (=> b!6997355 m!7689716))

(declare-fun m!7689718 () Bool)

(assert (=> b!6997355 m!7689718))

(assert (=> b!6997355 m!7689186))

(assert (=> b!6997028 d!2180200))

(declare-fun bs!1863545 () Bool)

(declare-fun d!2180202 () Bool)

(assert (= bs!1863545 (and d!2180202 d!2179976)))

(declare-fun lambda!404571 () Int)

(assert (=> bs!1863545 (not (= lambda!404571 lambda!404538))))

(declare-fun bs!1863546 () Bool)

(assert (= bs!1863546 (and d!2180202 d!2180154)))

(assert (=> bs!1863546 (= lambda!404571 lambda!404568)))

(declare-fun bs!1863547 () Bool)

(assert (= bs!1863547 (and d!2180202 d!2180140)))

(assert (=> bs!1863547 (= lambda!404571 lambda!404567)))

(declare-fun bs!1863548 () Bool)

(assert (= bs!1863548 (and d!2180202 b!6996717)))

(assert (=> bs!1863548 (not (= lambda!404571 lambda!404457))))

(declare-fun bs!1863549 () Bool)

(assert (= bs!1863549 (and d!2180202 d!2180132)))

(assert (=> bs!1863549 (= lambda!404571 lambda!404566)))

(declare-fun bs!1863550 () Bool)

(assert (= bs!1863550 (and d!2180202 d!2180128)))

(assert (=> bs!1863550 (= lambda!404571 lambda!404565)))

(declare-fun bs!1863551 () Bool)

(assert (= bs!1863551 (and d!2180202 d!2179978)))

(assert (=> bs!1863551 (not (= lambda!404571 lambda!404541))))

(assert (=> d!2180202 (= (nullableZipper!2455 lt!2493557) (exists!3071 lt!2493557 lambda!404571))))

(declare-fun bs!1863552 () Bool)

(assert (= bs!1863552 d!2180202))

(declare-fun m!7689720 () Bool)

(assert (=> bs!1863552 m!7689720))

(assert (=> b!6996982 d!2180202))

(declare-fun d!2180204 () Bool)

(declare-fun c!1298509 () Bool)

(assert (=> d!2180204 (= c!1298509 (isEmpty!39226 s!7408))))

(declare-fun e!4205923 () Bool)

(assert (=> d!2180204 (= (matchZipper!2800 (set.insert lt!2493817 (as set.empty (Set Context!12512))) s!7408) e!4205923)))

(declare-fun b!6997357 () Bool)

(assert (=> b!6997357 (= e!4205923 (nullableZipper!2455 (set.insert lt!2493817 (as set.empty (Set Context!12512)))))))

(declare-fun b!6997358 () Bool)

(assert (=> b!6997358 (= e!4205923 (matchZipper!2800 (derivationStepZipper!2740 (set.insert lt!2493817 (as set.empty (Set Context!12512))) (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2180204 c!1298509) b!6997357))

(assert (= (and d!2180204 (not c!1298509)) b!6997358))

(assert (=> d!2180204 m!7688998))

(assert (=> b!6997357 m!7689196))

(declare-fun m!7689722 () Bool)

(assert (=> b!6997357 m!7689722))

(assert (=> b!6997358 m!7689002))

(assert (=> b!6997358 m!7689196))

(assert (=> b!6997358 m!7689002))

(declare-fun m!7689724 () Bool)

(assert (=> b!6997358 m!7689724))

(assert (=> b!6997358 m!7689006))

(assert (=> b!6997358 m!7689724))

(assert (=> b!6997358 m!7689006))

(declare-fun m!7689726 () Bool)

(assert (=> b!6997358 m!7689726))

(assert (=> bs!1863459 d!2180204))

(declare-fun d!2180206 () Bool)

(assert (=> d!2180206 (= (isEmpty!39226 s!7408) (is-Nil!67202 s!7408))))

(assert (=> d!2179942 d!2180206))

(declare-fun d!2180208 () Bool)

(declare-fun c!1298510 () Bool)

(assert (=> d!2180208 (= c!1298510 (isEmpty!39226 (tail!13290 s!7408)))))

(declare-fun e!4205924 () Bool)

(assert (=> d!2180208 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493564 (head!14132 s!7408)) (tail!13290 s!7408)) e!4205924)))

(declare-fun b!6997359 () Bool)

(assert (=> b!6997359 (= e!4205924 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493564 (head!14132 s!7408))))))

(declare-fun b!6997360 () Bool)

(assert (=> b!6997360 (= e!4205924 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493564 (head!14132 s!7408)) (head!14132 (tail!13290 s!7408))) (tail!13290 (tail!13290 s!7408))))))

(assert (= (and d!2180208 c!1298510) b!6997359))

(assert (= (and d!2180208 (not c!1298510)) b!6997360))

(assert (=> d!2180208 m!7689006))

(declare-fun m!7689728 () Bool)

(assert (=> d!2180208 m!7689728))

(assert (=> b!6997359 m!7689004))

(declare-fun m!7689730 () Bool)

(assert (=> b!6997359 m!7689730))

(assert (=> b!6997360 m!7689006))

(declare-fun m!7689732 () Bool)

(assert (=> b!6997360 m!7689732))

(assert (=> b!6997360 m!7689004))

(assert (=> b!6997360 m!7689732))

(declare-fun m!7689734 () Bool)

(assert (=> b!6997360 m!7689734))

(assert (=> b!6997360 m!7689006))

(declare-fun m!7689736 () Bool)

(assert (=> b!6997360 m!7689736))

(assert (=> b!6997360 m!7689734))

(assert (=> b!6997360 m!7689736))

(declare-fun m!7689738 () Bool)

(assert (=> b!6997360 m!7689738))

(assert (=> b!6996921 d!2180208))

(declare-fun bs!1863553 () Bool)

(declare-fun d!2180210 () Bool)

(assert (= bs!1863553 (and d!2180210 d!2179882)))

(declare-fun lambda!404572 () Int)

(assert (=> bs!1863553 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404572 lambda!404525))))

(declare-fun bs!1863554 () Bool)

(assert (= bs!1863554 (and d!2180210 d!2179964)))

(assert (=> bs!1863554 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404572 lambda!404535))))

(declare-fun bs!1863555 () Bool)

(assert (= bs!1863555 (and d!2180210 d!2180192)))

(assert (=> bs!1863555 (= (= (head!14132 s!7408) (head!14132 (t!381075 s!7408))) (= lambda!404572 lambda!404570))))

(declare-fun bs!1863556 () Bool)

(assert (= bs!1863556 (and d!2180210 b!6996719)))

(assert (=> bs!1863556 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404572 lambda!404460))))

(declare-fun bs!1863557 () Bool)

(assert (= bs!1863557 (and d!2180210 d!2179894)))

(assert (=> bs!1863557 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404572 lambda!404526))))

(assert (=> d!2180210 true))

(assert (=> d!2180210 (= (derivationStepZipper!2740 lt!2493564 (head!14132 s!7408)) (flatMap!2246 lt!2493564 lambda!404572))))

(declare-fun bs!1863558 () Bool)

(assert (= bs!1863558 d!2180210))

(declare-fun m!7689740 () Bool)

(assert (=> bs!1863558 m!7689740))

(assert (=> b!6996921 d!2180210))

(declare-fun d!2180212 () Bool)

(assert (=> d!2180212 (= (head!14132 s!7408) (h!73650 s!7408))))

(assert (=> b!6996921 d!2180212))

(declare-fun d!2180214 () Bool)

(assert (=> d!2180214 (= (tail!13290 s!7408) (t!381075 s!7408))))

(assert (=> b!6996921 d!2180214))

(declare-fun d!2180216 () Bool)

(assert (=> d!2180216 (= (nullable!7020 (h!73649 (exprs!6756 lt!2493586))) (nullableFct!2653 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun bs!1863559 () Bool)

(assert (= bs!1863559 d!2180216))

(declare-fun m!7689742 () Bool)

(assert (=> bs!1863559 m!7689742))

(assert (=> b!6996829 d!2180216))

(declare-fun d!2180218 () Bool)

(declare-fun c!1298511 () Bool)

(assert (=> d!2180218 (= c!1298511 (isEmpty!39226 (tail!13290 s!7408)))))

(declare-fun e!4205925 () Bool)

(assert (=> d!2180218 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493552 (head!14132 s!7408)) (tail!13290 s!7408)) e!4205925)))

(declare-fun b!6997361 () Bool)

(assert (=> b!6997361 (= e!4205925 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493552 (head!14132 s!7408))))))

(declare-fun b!6997362 () Bool)

(assert (=> b!6997362 (= e!4205925 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493552 (head!14132 s!7408)) (head!14132 (tail!13290 s!7408))) (tail!13290 (tail!13290 s!7408))))))

(assert (= (and d!2180218 c!1298511) b!6997361))

(assert (= (and d!2180218 (not c!1298511)) b!6997362))

(assert (=> d!2180218 m!7689006))

(assert (=> d!2180218 m!7689728))

(assert (=> b!6997361 m!7689146))

(declare-fun m!7689744 () Bool)

(assert (=> b!6997361 m!7689744))

(assert (=> b!6997362 m!7689006))

(assert (=> b!6997362 m!7689732))

(assert (=> b!6997362 m!7689146))

(assert (=> b!6997362 m!7689732))

(declare-fun m!7689746 () Bool)

(assert (=> b!6997362 m!7689746))

(assert (=> b!6997362 m!7689006))

(assert (=> b!6997362 m!7689736))

(assert (=> b!6997362 m!7689746))

(assert (=> b!6997362 m!7689736))

(declare-fun m!7689748 () Bool)

(assert (=> b!6997362 m!7689748))

(assert (=> b!6997012 d!2180218))

(declare-fun bs!1863560 () Bool)

(declare-fun d!2180220 () Bool)

(assert (= bs!1863560 (and d!2180220 d!2180210)))

(declare-fun lambda!404573 () Int)

(assert (=> bs!1863560 (= lambda!404573 lambda!404572)))

(declare-fun bs!1863561 () Bool)

(assert (= bs!1863561 (and d!2180220 d!2179882)))

(assert (=> bs!1863561 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404573 lambda!404525))))

(declare-fun bs!1863562 () Bool)

(assert (= bs!1863562 (and d!2180220 d!2179964)))

(assert (=> bs!1863562 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404573 lambda!404535))))

(declare-fun bs!1863563 () Bool)

(assert (= bs!1863563 (and d!2180220 d!2180192)))

(assert (=> bs!1863563 (= (= (head!14132 s!7408) (head!14132 (t!381075 s!7408))) (= lambda!404573 lambda!404570))))

(declare-fun bs!1863564 () Bool)

(assert (= bs!1863564 (and d!2180220 b!6996719)))

(assert (=> bs!1863564 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404573 lambda!404460))))

(declare-fun bs!1863565 () Bool)

(assert (= bs!1863565 (and d!2180220 d!2179894)))

(assert (=> bs!1863565 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404573 lambda!404526))))

(assert (=> d!2180220 true))

(assert (=> d!2180220 (= (derivationStepZipper!2740 lt!2493552 (head!14132 s!7408)) (flatMap!2246 lt!2493552 lambda!404573))))

(declare-fun bs!1863566 () Bool)

(assert (= bs!1863566 d!2180220))

(declare-fun m!7689750 () Bool)

(assert (=> bs!1863566 m!7689750))

(assert (=> b!6997012 d!2180220))

(assert (=> b!6997012 d!2180212))

(assert (=> b!6997012 d!2180214))

(declare-fun d!2180222 () Bool)

(assert (=> d!2180222 (= (nullable!7020 (h!73649 (exprs!6756 lt!2493561))) (nullableFct!2653 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun bs!1863567 () Bool)

(assert (= bs!1863567 d!2180222))

(declare-fun m!7689752 () Bool)

(assert (=> bs!1863567 m!7689752))

(assert (=> b!6996869 d!2180222))

(assert (=> d!2179972 d!2180206))

(declare-fun d!2180224 () Bool)

(declare-fun c!1298512 () Bool)

(assert (=> d!2180224 (= c!1298512 (isEmpty!39226 (_2!37236 (get!23560 lt!2493807))))))

(declare-fun e!4205926 () Bool)

(assert (=> d!2180224 (= (matchZipper!2800 lt!2493591 (_2!37236 (get!23560 lt!2493807))) e!4205926)))

(declare-fun b!6997363 () Bool)

(assert (=> b!6997363 (= e!4205926 (nullableZipper!2455 lt!2493591))))

(declare-fun b!6997364 () Bool)

(assert (=> b!6997364 (= e!4205926 (matchZipper!2800 (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 (get!23560 lt!2493807)))) (tail!13290 (_2!37236 (get!23560 lt!2493807)))))))

(assert (= (and d!2180224 c!1298512) b!6997363))

(assert (= (and d!2180224 (not c!1298512)) b!6997364))

(declare-fun m!7689754 () Bool)

(assert (=> d!2180224 m!7689754))

(assert (=> b!6997363 m!7689112))

(declare-fun m!7689756 () Bool)

(assert (=> b!6997364 m!7689756))

(assert (=> b!6997364 m!7689756))

(declare-fun m!7689758 () Bool)

(assert (=> b!6997364 m!7689758))

(declare-fun m!7689760 () Bool)

(assert (=> b!6997364 m!7689760))

(assert (=> b!6997364 m!7689758))

(assert (=> b!6997364 m!7689760))

(declare-fun m!7689762 () Bool)

(assert (=> b!6997364 m!7689762))

(assert (=> b!6996940 d!2180224))

(declare-fun d!2180226 () Bool)

(assert (=> d!2180226 (= (get!23560 lt!2493807) (v!53038 lt!2493807))))

(assert (=> b!6996940 d!2180226))

(declare-fun d!2180228 () Bool)

(declare-fun c!1298513 () Bool)

(assert (=> d!2180228 (= c!1298513 (isEmpty!39226 (tail!13290 (t!381075 s!7408))))))

(declare-fun e!4205927 () Bool)

(assert (=> d!2180228 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493581 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))) e!4205927)))

(declare-fun b!6997365 () Bool)

(assert (=> b!6997365 (= e!4205927 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493581 (head!14132 (t!381075 s!7408)))))))

(declare-fun b!6997366 () Bool)

(assert (=> b!6997366 (= e!4205927 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493581 (head!14132 (t!381075 s!7408))) (head!14132 (tail!13290 (t!381075 s!7408)))) (tail!13290 (tail!13290 (t!381075 s!7408)))))))

(assert (= (and d!2180228 c!1298513) b!6997365))

(assert (= (and d!2180228 (not c!1298513)) b!6997366))

(assert (=> d!2180228 m!7689074))

(assert (=> d!2180228 m!7689692))

(assert (=> b!6997365 m!7689102))

(declare-fun m!7689764 () Bool)

(assert (=> b!6997365 m!7689764))

(assert (=> b!6997366 m!7689074))

(assert (=> b!6997366 m!7689696))

(assert (=> b!6997366 m!7689102))

(assert (=> b!6997366 m!7689696))

(declare-fun m!7689766 () Bool)

(assert (=> b!6997366 m!7689766))

(assert (=> b!6997366 m!7689074))

(assert (=> b!6997366 m!7689700))

(assert (=> b!6997366 m!7689766))

(assert (=> b!6997366 m!7689700))

(declare-fun m!7689768 () Bool)

(assert (=> b!6997366 m!7689768))

(assert (=> b!6996990 d!2180228))

(declare-fun bs!1863568 () Bool)

(declare-fun d!2180230 () Bool)

(assert (= bs!1863568 (and d!2180230 d!2180210)))

(declare-fun lambda!404574 () Int)

(assert (=> bs!1863568 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404574 lambda!404572))))

(declare-fun bs!1863569 () Bool)

(assert (= bs!1863569 (and d!2180230 d!2180220)))

(assert (=> bs!1863569 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404574 lambda!404573))))

(declare-fun bs!1863570 () Bool)

(assert (= bs!1863570 (and d!2180230 d!2179882)))

(assert (=> bs!1863570 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404574 lambda!404525))))

(declare-fun bs!1863571 () Bool)

(assert (= bs!1863571 (and d!2180230 d!2179964)))

(assert (=> bs!1863571 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404574 lambda!404535))))

(declare-fun bs!1863572 () Bool)

(assert (= bs!1863572 (and d!2180230 d!2180192)))

(assert (=> bs!1863572 (= lambda!404574 lambda!404570)))

(declare-fun bs!1863573 () Bool)

(assert (= bs!1863573 (and d!2180230 b!6996719)))

(assert (=> bs!1863573 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404574 lambda!404460))))

(declare-fun bs!1863574 () Bool)

(assert (= bs!1863574 (and d!2180230 d!2179894)))

(assert (=> bs!1863574 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404574 lambda!404526))))

(assert (=> d!2180230 true))

(assert (=> d!2180230 (= (derivationStepZipper!2740 lt!2493581 (head!14132 (t!381075 s!7408))) (flatMap!2246 lt!2493581 lambda!404574))))

(declare-fun bs!1863575 () Bool)

(assert (= bs!1863575 d!2180230))

(declare-fun m!7689770 () Bool)

(assert (=> bs!1863575 m!7689770))

(assert (=> b!6996990 d!2180230))

(assert (=> b!6996990 d!2180194))

(assert (=> b!6996990 d!2180196))

(declare-fun d!2180232 () Bool)

(assert (=> d!2180232 (= (nullable!7020 (h!73649 (exprs!6756 lt!2493570))) (nullableFct!2653 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun bs!1863576 () Bool)

(assert (= bs!1863576 d!2180232))

(declare-fun m!7689772 () Bool)

(assert (=> bs!1863576 m!7689772))

(assert (=> b!6997006 d!2180232))

(declare-fun bs!1863577 () Bool)

(declare-fun d!2180234 () Bool)

(assert (= bs!1863577 (and d!2180234 d!2179976)))

(declare-fun lambda!404575 () Int)

(assert (=> bs!1863577 (not (= lambda!404575 lambda!404538))))

(declare-fun bs!1863578 () Bool)

(assert (= bs!1863578 (and d!2180234 d!2180202)))

(assert (=> bs!1863578 (= lambda!404575 lambda!404571)))

(declare-fun bs!1863579 () Bool)

(assert (= bs!1863579 (and d!2180234 d!2180154)))

(assert (=> bs!1863579 (= lambda!404575 lambda!404568)))

(declare-fun bs!1863580 () Bool)

(assert (= bs!1863580 (and d!2180234 d!2180140)))

(assert (=> bs!1863580 (= lambda!404575 lambda!404567)))

(declare-fun bs!1863581 () Bool)

(assert (= bs!1863581 (and d!2180234 b!6996717)))

(assert (=> bs!1863581 (not (= lambda!404575 lambda!404457))))

(declare-fun bs!1863582 () Bool)

(assert (= bs!1863582 (and d!2180234 d!2180132)))

(assert (=> bs!1863582 (= lambda!404575 lambda!404566)))

(declare-fun bs!1863583 () Bool)

(assert (= bs!1863583 (and d!2180234 d!2180128)))

(assert (=> bs!1863583 (= lambda!404575 lambda!404565)))

(declare-fun bs!1863584 () Bool)

(assert (= bs!1863584 (and d!2180234 d!2179978)))

(assert (=> bs!1863584 (not (= lambda!404575 lambda!404541))))

(assert (=> d!2180234 (= (nullableZipper!2455 lt!2493576) (exists!3071 lt!2493576 lambda!404575))))

(declare-fun bs!1863585 () Bool)

(assert (= bs!1863585 d!2180234))

(declare-fun m!7689774 () Bool)

(assert (=> bs!1863585 m!7689774))

(assert (=> b!6996949 d!2180234))

(declare-fun d!2180236 () Bool)

(declare-fun c!1298516 () Bool)

(assert (=> d!2180236 (= c!1298516 (is-Nil!67202 lt!2493824))))

(declare-fun e!4205930 () (Set C!34790))

(assert (=> d!2180236 (= (content!13297 lt!2493824) e!4205930)))

(declare-fun b!6997371 () Bool)

(assert (=> b!6997371 (= e!4205930 (as set.empty (Set C!34790)))))

(declare-fun b!6997372 () Bool)

(assert (=> b!6997372 (= e!4205930 (set.union (set.insert (h!73650 lt!2493824) (as set.empty (Set C!34790))) (content!13297 (t!381075 lt!2493824))))))

(assert (= (and d!2180236 c!1298516) b!6997371))

(assert (= (and d!2180236 (not c!1298516)) b!6997372))

(declare-fun m!7689776 () Bool)

(assert (=> b!6997372 m!7689776))

(declare-fun m!7689778 () Bool)

(assert (=> b!6997372 m!7689778))

(assert (=> d!2179982 d!2180236))

(declare-fun d!2180238 () Bool)

(declare-fun c!1298517 () Bool)

(assert (=> d!2180238 (= c!1298517 (is-Nil!67202 (_1!37236 lt!2493566)))))

(declare-fun e!4205931 () (Set C!34790))

(assert (=> d!2180238 (= (content!13297 (_1!37236 lt!2493566)) e!4205931)))

(declare-fun b!6997373 () Bool)

(assert (=> b!6997373 (= e!4205931 (as set.empty (Set C!34790)))))

(declare-fun b!6997374 () Bool)

(assert (=> b!6997374 (= e!4205931 (set.union (set.insert (h!73650 (_1!37236 lt!2493566)) (as set.empty (Set C!34790))) (content!13297 (t!381075 (_1!37236 lt!2493566)))))))

(assert (= (and d!2180238 c!1298517) b!6997373))

(assert (= (and d!2180238 (not c!1298517)) b!6997374))

(declare-fun m!7689780 () Bool)

(assert (=> b!6997374 m!7689780))

(assert (=> b!6997374 m!7689712))

(assert (=> d!2179982 d!2180238))

(declare-fun d!2180240 () Bool)

(declare-fun c!1298518 () Bool)

(assert (=> d!2180240 (= c!1298518 (is-Nil!67202 (_2!37236 lt!2493566)))))

(declare-fun e!4205932 () (Set C!34790))

(assert (=> d!2180240 (= (content!13297 (_2!37236 lt!2493566)) e!4205932)))

(declare-fun b!6997375 () Bool)

(assert (=> b!6997375 (= e!4205932 (as set.empty (Set C!34790)))))

(declare-fun b!6997376 () Bool)

(assert (=> b!6997376 (= e!4205932 (set.union (set.insert (h!73650 (_2!37236 lt!2493566)) (as set.empty (Set C!34790))) (content!13297 (t!381075 (_2!37236 lt!2493566)))))))

(assert (= (and d!2180240 c!1298518) b!6997375))

(assert (= (and d!2180240 (not c!1298518)) b!6997376))

(declare-fun m!7689782 () Bool)

(assert (=> b!6997376 m!7689782))

(declare-fun m!7689784 () Bool)

(assert (=> b!6997376 m!7689784))

(assert (=> d!2179982 d!2180240))

(declare-fun d!2180242 () Bool)

(declare-fun c!1298521 () Bool)

(assert (=> d!2180242 (= c!1298521 (is-Nil!67201 lt!2493778))))

(declare-fun e!4205935 () (Set Regex!17260))

(assert (=> d!2180242 (= (content!13295 lt!2493778) e!4205935)))

(declare-fun b!6997381 () Bool)

(assert (=> b!6997381 (= e!4205935 (as set.empty (Set Regex!17260)))))

(declare-fun b!6997382 () Bool)

(assert (=> b!6997382 (= e!4205935 (set.union (set.insert (h!73649 lt!2493778) (as set.empty (Set Regex!17260))) (content!13295 (t!381074 lt!2493778))))))

(assert (= (and d!2180242 c!1298521) b!6997381))

(assert (= (and d!2180242 (not c!1298521)) b!6997382))

(declare-fun m!7689786 () Bool)

(assert (=> b!6997382 m!7689786))

(declare-fun m!7689788 () Bool)

(assert (=> b!6997382 m!7689788))

(assert (=> d!2179904 d!2180242))

(declare-fun d!2180244 () Bool)

(declare-fun c!1298522 () Bool)

(assert (=> d!2180244 (= c!1298522 (is-Nil!67201 lt!2493545))))

(declare-fun e!4205936 () (Set Regex!17260))

(assert (=> d!2180244 (= (content!13295 lt!2493545) e!4205936)))

(declare-fun b!6997383 () Bool)

(assert (=> b!6997383 (= e!4205936 (as set.empty (Set Regex!17260)))))

(declare-fun b!6997384 () Bool)

(assert (=> b!6997384 (= e!4205936 (set.union (set.insert (h!73649 lt!2493545) (as set.empty (Set Regex!17260))) (content!13295 (t!381074 lt!2493545))))))

(assert (= (and d!2180244 c!1298522) b!6997383))

(assert (= (and d!2180244 (not c!1298522)) b!6997384))

(declare-fun m!7689790 () Bool)

(assert (=> b!6997384 m!7689790))

(declare-fun m!7689792 () Bool)

(assert (=> b!6997384 m!7689792))

(assert (=> d!2179904 d!2180244))

(declare-fun d!2180246 () Bool)

(declare-fun c!1298523 () Bool)

(assert (=> d!2180246 (= c!1298523 (is-Nil!67201 (exprs!6756 ct2!306)))))

(declare-fun e!4205937 () (Set Regex!17260))

(assert (=> d!2180246 (= (content!13295 (exprs!6756 ct2!306)) e!4205937)))

(declare-fun b!6997385 () Bool)

(assert (=> b!6997385 (= e!4205937 (as set.empty (Set Regex!17260)))))

(declare-fun b!6997386 () Bool)

(assert (=> b!6997386 (= e!4205937 (set.union (set.insert (h!73649 (exprs!6756 ct2!306)) (as set.empty (Set Regex!17260))) (content!13295 (t!381074 (exprs!6756 ct2!306)))))))

(assert (= (and d!2180246 c!1298523) b!6997385))

(assert (= (and d!2180246 (not c!1298523)) b!6997386))

(declare-fun m!7689794 () Bool)

(assert (=> b!6997386 m!7689794))

(declare-fun m!7689796 () Bool)

(assert (=> b!6997386 m!7689796))

(assert (=> d!2179904 d!2180246))

(declare-fun b!6997387 () Bool)

(declare-fun e!4205939 () (Set Context!12512))

(assert (=> b!6997387 (= e!4205939 (set.insert (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171)) (as set.empty (Set Context!12512))))))

(declare-fun b!6997388 () Bool)

(declare-fun e!4205940 () (Set Context!12512))

(declare-fun call!635225 () (Set Context!12512))

(assert (=> b!6997388 (= e!4205940 call!635225)))

(declare-fun call!635222 () List!67325)

(declare-fun bm!635217 () Bool)

(declare-fun c!1298525 () Bool)

(declare-fun call!635227 () (Set Context!12512))

(assert (=> bm!635217 (= call!635227 (derivationStepZipperDown!1978 (ite c!1298525 (regTwo!35033 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (regOne!35032 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))) (ite c!1298525 (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171)) (Context!12513 call!635222)) (h!73650 s!7408)))))

(declare-fun bm!635218 () Bool)

(declare-fun call!635226 () (Set Context!12512))

(declare-fun call!635224 () (Set Context!12512))

(assert (=> bm!635218 (= call!635226 call!635224)))

(declare-fun bm!635219 () Bool)

(assert (=> bm!635219 (= call!635225 call!635226)))

(declare-fun bm!635220 () Bool)

(declare-fun call!635223 () List!67325)

(assert (=> bm!635220 (= call!635223 call!635222)))

(declare-fun b!6997390 () Bool)

(declare-fun e!4205938 () (Set Context!12512))

(assert (=> b!6997390 (= e!4205938 (set.union call!635227 call!635226))))

(declare-fun b!6997391 () Bool)

(declare-fun c!1298524 () Bool)

(declare-fun e!4205941 () Bool)

(assert (=> b!6997391 (= c!1298524 e!4205941)))

(declare-fun res!2854435 () Bool)

(assert (=> b!6997391 (=> (not res!2854435) (not e!4205941))))

(assert (=> b!6997391 (= res!2854435 (is-Concat!26105 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun e!4205943 () (Set Context!12512))

(assert (=> b!6997391 (= e!4205943 e!4205938)))

(declare-fun bm!635221 () Bool)

(declare-fun c!1298526 () Bool)

(assert (=> bm!635221 (= call!635222 ($colon$colon!2499 (exprs!6756 (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171))) (ite (or c!1298524 c!1298526) (regTwo!35032 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))))

(declare-fun b!6997392 () Bool)

(assert (=> b!6997392 (= e!4205941 (nullable!7020 (regOne!35032 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))))

(declare-fun b!6997389 () Bool)

(declare-fun c!1298528 () Bool)

(assert (=> b!6997389 (= c!1298528 (is-Star!17260 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun e!4205942 () (Set Context!12512))

(assert (=> b!6997389 (= e!4205942 e!4205940)))

(declare-fun d!2180248 () Bool)

(declare-fun c!1298527 () Bool)

(assert (=> d!2180248 (= c!1298527 (and (is-ElementMatch!17260 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (= (c!1298311 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (h!73650 s!7408))))))

(assert (=> d!2180248 (= (derivationStepZipperDown!1978 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))) (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171)) (h!73650 s!7408)) e!4205939)))

(declare-fun bm!635222 () Bool)

(assert (=> bm!635222 (= call!635224 (derivationStepZipperDown!1978 (ite c!1298525 (regOne!35033 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298524 (regTwo!35032 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298526 (regOne!35032 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (reg!17589 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))) (ite (or c!1298525 c!1298524) (ite (or c!1298394 c!1298393) lt!2493586 (Context!12513 call!635171)) (Context!12513 call!635223)) (h!73650 s!7408)))))

(declare-fun b!6997393 () Bool)

(assert (=> b!6997393 (= e!4205942 call!635225)))

(declare-fun b!6997394 () Bool)

(assert (=> b!6997394 (= e!4205943 (set.union call!635224 call!635227))))

(declare-fun b!6997395 () Bool)

(assert (=> b!6997395 (= e!4205938 e!4205942)))

(assert (=> b!6997395 (= c!1298526 (is-Concat!26105 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun b!6997396 () Bool)

(assert (=> b!6997396 (= e!4205939 e!4205943)))

(assert (=> b!6997396 (= c!1298525 (is-Union!17260 (ite c!1298394 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298393 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298395 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun b!6997397 () Bool)

(assert (=> b!6997397 (= e!4205940 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180248 c!1298527) b!6997387))

(assert (= (and d!2180248 (not c!1298527)) b!6997396))

(assert (= (and b!6997396 c!1298525) b!6997394))

(assert (= (and b!6997396 (not c!1298525)) b!6997391))

(assert (= (and b!6997391 res!2854435) b!6997392))

(assert (= (and b!6997391 c!1298524) b!6997390))

(assert (= (and b!6997391 (not c!1298524)) b!6997395))

(assert (= (and b!6997395 c!1298526) b!6997393))

(assert (= (and b!6997395 (not c!1298526)) b!6997389))

(assert (= (and b!6997389 c!1298528) b!6997388))

(assert (= (and b!6997389 (not c!1298528)) b!6997397))

(assert (= (or b!6997393 b!6997388) bm!635220))

(assert (= (or b!6997393 b!6997388) bm!635219))

(assert (= (or b!6997390 bm!635219) bm!635218))

(assert (= (or b!6997390 bm!635220) bm!635221))

(assert (= (or b!6997394 bm!635218) bm!635222))

(assert (= (or b!6997394 b!6997390) bm!635217))

(declare-fun m!7689798 () Bool)

(assert (=> bm!635221 m!7689798))

(declare-fun m!7689800 () Bool)

(assert (=> bm!635217 m!7689800))

(declare-fun m!7689802 () Bool)

(assert (=> b!6997392 m!7689802))

(declare-fun m!7689804 () Bool)

(assert (=> bm!635222 m!7689804))

(declare-fun m!7689806 () Bool)

(assert (=> b!6997387 m!7689806))

(assert (=> bm!635170 d!2180248))

(declare-fun b!6997414 () Bool)

(declare-fun e!4205955 () Int)

(declare-fun call!635235 () Int)

(assert (=> b!6997414 (= e!4205955 (+ 1 call!635235))))

(declare-fun b!6997415 () Bool)

(declare-fun e!4205954 () Int)

(declare-fun e!4205952 () Int)

(assert (=> b!6997415 (= e!4205954 e!4205952)))

(declare-fun c!1298538 () Bool)

(assert (=> b!6997415 (= c!1298538 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun d!2180250 () Bool)

(declare-fun lt!2493912 () Int)

(assert (=> d!2180250 (> lt!2493912 0)))

(declare-fun e!4205953 () Int)

(assert (=> d!2180250 (= lt!2493912 e!4205953)))

(declare-fun c!1298537 () Bool)

(assert (=> d!2180250 (= c!1298537 (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))))))

(assert (=> d!2180250 (= (regexDepthTotal!276 (h!73649 (exprs!6756 lt!2493587))) lt!2493912)))

(declare-fun bm!635229 () Bool)

(declare-fun call!635236 () Int)

(declare-fun c!1298539 () Bool)

(assert (=> bm!635229 (= call!635236 (regexDepthTotal!276 (ite c!1298539 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun bm!635230 () Bool)

(declare-fun c!1298540 () Bool)

(assert (=> bm!635230 (= call!635235 (regexDepthTotal!276 (ite c!1298540 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298539 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997416 () Bool)

(assert (=> b!6997416 (= c!1298539 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(assert (=> b!6997416 (= e!4205955 e!4205954)))

(declare-fun bm!635231 () Bool)

(declare-fun call!635234 () Int)

(assert (=> bm!635231 (= call!635234 call!635235)))

(declare-fun b!6997417 () Bool)

(assert (=> b!6997417 (= e!4205953 1)))

(declare-fun b!6997418 () Bool)

(assert (=> b!6997418 (= e!4205952 1)))

(declare-fun b!6997419 () Bool)

(assert (=> b!6997419 (= e!4205952 (+ 1 call!635234 call!635236))))

(declare-fun b!6997420 () Bool)

(assert (=> b!6997420 (= e!4205954 (+ 1 call!635236 call!635234))))

(declare-fun b!6997421 () Bool)

(assert (=> b!6997421 (= e!4205953 e!4205955)))

(assert (=> b!6997421 (= c!1298540 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(assert (= (and d!2180250 c!1298537) b!6997417))

(assert (= (and d!2180250 (not c!1298537)) b!6997421))

(assert (= (and b!6997421 c!1298540) b!6997414))

(assert (= (and b!6997421 (not c!1298540)) b!6997416))

(assert (= (and b!6997416 c!1298539) b!6997420))

(assert (= (and b!6997416 (not c!1298539)) b!6997415))

(assert (= (and b!6997415 c!1298538) b!6997419))

(assert (= (and b!6997415 (not c!1298538)) b!6997418))

(assert (= (or b!6997420 b!6997419) bm!635231))

(assert (= (or b!6997420 b!6997419) bm!635229))

(assert (= (or b!6997414 bm!635231) bm!635230))

(declare-fun m!7689808 () Bool)

(assert (=> bm!635229 m!7689808))

(declare-fun m!7689810 () Bool)

(assert (=> bm!635230 m!7689810))

(assert (=> b!6996914 d!2180250))

(declare-fun d!2180252 () Bool)

(declare-fun lt!2493913 () Int)

(assert (=> d!2180252 (>= lt!2493913 0)))

(declare-fun e!4205956 () Int)

(assert (=> d!2180252 (= lt!2493913 e!4205956)))

(declare-fun c!1298541 () Bool)

(assert (=> d!2180252 (= c!1298541 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587))))))))

(assert (=> d!2180252 (= (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))) lt!2493913)))

(declare-fun b!6997422 () Bool)

(assert (=> b!6997422 (= e!4205956 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))))))))))

(declare-fun b!6997423 () Bool)

(assert (=> b!6997423 (= e!4205956 1)))

(assert (= (and d!2180252 c!1298541) b!6997422))

(assert (= (and d!2180252 (not c!1298541)) b!6997423))

(declare-fun m!7689812 () Bool)

(assert (=> b!6997422 m!7689812))

(declare-fun m!7689814 () Bool)

(assert (=> b!6997422 m!7689814))

(assert (=> b!6996914 d!2180252))

(declare-fun d!2180254 () Bool)

(declare-fun c!1298542 () Bool)

(assert (=> d!2180254 (= c!1298542 (isEmpty!39226 (tail!13290 s!7408)))))

(declare-fun e!4205957 () Bool)

(assert (=> d!2180254 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493574 (head!14132 s!7408)) (tail!13290 s!7408)) e!4205957)))

(declare-fun b!6997424 () Bool)

(assert (=> b!6997424 (= e!4205957 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493574 (head!14132 s!7408))))))

(declare-fun b!6997425 () Bool)

(assert (=> b!6997425 (= e!4205957 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493574 (head!14132 s!7408)) (head!14132 (tail!13290 s!7408))) (tail!13290 (tail!13290 s!7408))))))

(assert (= (and d!2180254 c!1298542) b!6997424))

(assert (= (and d!2180254 (not c!1298542)) b!6997425))

(assert (=> d!2180254 m!7689006))

(assert (=> d!2180254 m!7689728))

(assert (=> b!6997424 m!7689080))

(declare-fun m!7689816 () Bool)

(assert (=> b!6997424 m!7689816))

(assert (=> b!6997425 m!7689006))

(assert (=> b!6997425 m!7689732))

(assert (=> b!6997425 m!7689080))

(assert (=> b!6997425 m!7689732))

(declare-fun m!7689818 () Bool)

(assert (=> b!6997425 m!7689818))

(assert (=> b!6997425 m!7689006))

(assert (=> b!6997425 m!7689736))

(assert (=> b!6997425 m!7689818))

(assert (=> b!6997425 m!7689736))

(declare-fun m!7689820 () Bool)

(assert (=> b!6997425 m!7689820))

(assert (=> b!6996981 d!2180254))

(declare-fun bs!1863586 () Bool)

(declare-fun d!2180256 () Bool)

(assert (= bs!1863586 (and d!2180256 d!2180210)))

(declare-fun lambda!404576 () Int)

(assert (=> bs!1863586 (= lambda!404576 lambda!404572)))

(declare-fun bs!1863587 () Bool)

(assert (= bs!1863587 (and d!2180256 d!2180220)))

(assert (=> bs!1863587 (= lambda!404576 lambda!404573)))

(declare-fun bs!1863588 () Bool)

(assert (= bs!1863588 (and d!2180256 d!2179882)))

(assert (=> bs!1863588 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404576 lambda!404525))))

(declare-fun bs!1863589 () Bool)

(assert (= bs!1863589 (and d!2180256 d!2179964)))

(assert (=> bs!1863589 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404576 lambda!404535))))

(declare-fun bs!1863590 () Bool)

(assert (= bs!1863590 (and d!2180256 d!2180230)))

(assert (=> bs!1863590 (= (= (head!14132 s!7408) (head!14132 (t!381075 s!7408))) (= lambda!404576 lambda!404574))))

(declare-fun bs!1863591 () Bool)

(assert (= bs!1863591 (and d!2180256 d!2180192)))

(assert (=> bs!1863591 (= (= (head!14132 s!7408) (head!14132 (t!381075 s!7408))) (= lambda!404576 lambda!404570))))

(declare-fun bs!1863592 () Bool)

(assert (= bs!1863592 (and d!2180256 b!6996719)))

(assert (=> bs!1863592 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404576 lambda!404460))))

(declare-fun bs!1863593 () Bool)

(assert (= bs!1863593 (and d!2180256 d!2179894)))

(assert (=> bs!1863593 (= (= (head!14132 s!7408) (h!73650 s!7408)) (= lambda!404576 lambda!404526))))

(assert (=> d!2180256 true))

(assert (=> d!2180256 (= (derivationStepZipper!2740 lt!2493574 (head!14132 s!7408)) (flatMap!2246 lt!2493574 lambda!404576))))

(declare-fun bs!1863594 () Bool)

(assert (= bs!1863594 d!2180256))

(declare-fun m!7689822 () Bool)

(assert (=> bs!1863594 m!7689822))

(assert (=> b!6996981 d!2180256))

(assert (=> b!6996981 d!2180212))

(assert (=> b!6996981 d!2180214))

(declare-fun d!2180258 () Bool)

(declare-fun lt!2493914 () Int)

(assert (=> d!2180258 (>= lt!2493914 0)))

(declare-fun e!4205958 () Int)

(assert (=> d!2180258 (= lt!2493914 e!4205958)))

(declare-fun c!1298543 () Bool)

(assert (=> d!2180258 (= c!1298543 (is-Cons!67201 (exprs!6756 (h!73651 (Cons!67203 lt!2493561 Nil!67203)))))))

(assert (=> d!2180258 (= (contextDepthTotal!453 (h!73651 (Cons!67203 lt!2493561 Nil!67203))) lt!2493914)))

(declare-fun b!6997426 () Bool)

(assert (=> b!6997426 (= e!4205958 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 (h!73651 (Cons!67203 lt!2493561 Nil!67203))))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 (h!73651 (Cons!67203 lt!2493561 Nil!67203))))))))))

(declare-fun b!6997427 () Bool)

(assert (=> b!6997427 (= e!4205958 1)))

(assert (= (and d!2180258 c!1298543) b!6997426))

(assert (= (and d!2180258 (not c!1298543)) b!6997427))

(declare-fun m!7689824 () Bool)

(assert (=> b!6997426 m!7689824))

(declare-fun m!7689826 () Bool)

(assert (=> b!6997426 m!7689826))

(assert (=> b!6996991 d!2180258))

(declare-fun d!2180260 () Bool)

(declare-fun lt!2493915 () Int)

(assert (=> d!2180260 (>= lt!2493915 0)))

(declare-fun e!4205959 () Int)

(assert (=> d!2180260 (= lt!2493915 e!4205959)))

(declare-fun c!1298544 () Bool)

(assert (=> d!2180260 (= c!1298544 (is-Cons!67203 (t!381076 (Cons!67203 lt!2493561 Nil!67203))))))

(assert (=> d!2180260 (= (zipperDepthTotal!481 (t!381076 (Cons!67203 lt!2493561 Nil!67203))) lt!2493915)))

(declare-fun b!6997428 () Bool)

(assert (=> b!6997428 (= e!4205959 (+ (contextDepthTotal!453 (h!73651 (t!381076 (Cons!67203 lt!2493561 Nil!67203)))) (zipperDepthTotal!481 (t!381076 (t!381076 (Cons!67203 lt!2493561 Nil!67203))))))))

(declare-fun b!6997429 () Bool)

(assert (=> b!6997429 (= e!4205959 0)))

(assert (= (and d!2180260 c!1298544) b!6997428))

(assert (= (and d!2180260 (not c!1298544)) b!6997429))

(declare-fun m!7689828 () Bool)

(assert (=> b!6997428 m!7689828))

(declare-fun m!7689830 () Bool)

(assert (=> b!6997428 m!7689830))

(assert (=> b!6996991 d!2180260))

(declare-fun b!6997430 () Bool)

(declare-fun e!4205961 () List!67325)

(assert (=> b!6997430 (= e!4205961 (exprs!6756 ct2!306))))

(declare-fun b!6997432 () Bool)

(declare-fun res!2854436 () Bool)

(declare-fun e!4205960 () Bool)

(assert (=> b!6997432 (=> (not res!2854436) (not e!4205960))))

(declare-fun lt!2493916 () List!67325)

(assert (=> b!6997432 (= res!2854436 (= (size!40926 lt!2493916) (+ (size!40926 (t!381074 lt!2493545)) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2180262 () Bool)

(assert (=> d!2180262 e!4205960))

(declare-fun res!2854437 () Bool)

(assert (=> d!2180262 (=> (not res!2854437) (not e!4205960))))

(assert (=> d!2180262 (= res!2854437 (= (content!13295 lt!2493916) (set.union (content!13295 (t!381074 lt!2493545)) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2180262 (= lt!2493916 e!4205961)))

(declare-fun c!1298545 () Bool)

(assert (=> d!2180262 (= c!1298545 (is-Nil!67201 (t!381074 lt!2493545)))))

(assert (=> d!2180262 (= (++!15221 (t!381074 lt!2493545) (exprs!6756 ct2!306)) lt!2493916)))

(declare-fun b!6997433 () Bool)

(assert (=> b!6997433 (= e!4205960 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493916 (t!381074 lt!2493545))))))

(declare-fun b!6997431 () Bool)

(assert (=> b!6997431 (= e!4205961 (Cons!67201 (h!73649 (t!381074 lt!2493545)) (++!15221 (t!381074 (t!381074 lt!2493545)) (exprs!6756 ct2!306))))))

(assert (= (and d!2180262 c!1298545) b!6997430))

(assert (= (and d!2180262 (not c!1298545)) b!6997431))

(assert (= (and d!2180262 res!2854437) b!6997432))

(assert (= (and b!6997432 res!2854436) b!6997433))

(declare-fun m!7689832 () Bool)

(assert (=> b!6997432 m!7689832))

(declare-fun m!7689834 () Bool)

(assert (=> b!6997432 m!7689834))

(assert (=> b!6997432 m!7688920))

(declare-fun m!7689836 () Bool)

(assert (=> d!2180262 m!7689836))

(assert (=> d!2180262 m!7689792))

(assert (=> d!2180262 m!7688926))

(declare-fun m!7689838 () Bool)

(assert (=> b!6997431 m!7689838))

(assert (=> b!6996896 d!2180262))

(declare-fun d!2180264 () Bool)

(declare-fun res!2854442 () Bool)

(declare-fun e!4205966 () Bool)

(assert (=> d!2180264 (=> res!2854442 e!4205966)))

(assert (=> d!2180264 (= res!2854442 (is-Nil!67201 (exprs!6756 setElem!48014)))))

(assert (=> d!2180264 (= (forall!16170 (exprs!6756 setElem!48014) lambda!404542) e!4205966)))

(declare-fun b!6997438 () Bool)

(declare-fun e!4205967 () Bool)

(assert (=> b!6997438 (= e!4205966 e!4205967)))

(declare-fun res!2854443 () Bool)

(assert (=> b!6997438 (=> (not res!2854443) (not e!4205967))))

(declare-fun dynLambda!26980 (Int Regex!17260) Bool)

(assert (=> b!6997438 (= res!2854443 (dynLambda!26980 lambda!404542 (h!73649 (exprs!6756 setElem!48014))))))

(declare-fun b!6997439 () Bool)

(assert (=> b!6997439 (= e!4205967 (forall!16170 (t!381074 (exprs!6756 setElem!48014)) lambda!404542))))

(assert (= (and d!2180264 (not res!2854442)) b!6997438))

(assert (= (and b!6997438 res!2854443) b!6997439))

(declare-fun b_lambda!263303 () Bool)

(assert (=> (not b_lambda!263303) (not b!6997438)))

(declare-fun m!7689840 () Bool)

(assert (=> b!6997438 m!7689840))

(declare-fun m!7689842 () Bool)

(assert (=> b!6997439 m!7689842))

(assert (=> d!2179984 d!2180264))

(declare-fun d!2180266 () Bool)

(declare-fun res!2854444 () Bool)

(declare-fun e!4205968 () Bool)

(assert (=> d!2180266 (=> res!2854444 e!4205968)))

(assert (=> d!2180266 (= res!2854444 (is-Nil!67201 (++!15221 lt!2493545 (exprs!6756 ct2!306))))))

(assert (=> d!2180266 (= (forall!16170 (++!15221 lt!2493545 (exprs!6756 ct2!306)) lambda!404459) e!4205968)))

(declare-fun b!6997440 () Bool)

(declare-fun e!4205969 () Bool)

(assert (=> b!6997440 (= e!4205968 e!4205969)))

(declare-fun res!2854445 () Bool)

(assert (=> b!6997440 (=> (not res!2854445) (not e!4205969))))

(assert (=> b!6997440 (= res!2854445 (dynLambda!26980 lambda!404459 (h!73649 (++!15221 lt!2493545 (exprs!6756 ct2!306)))))))

(declare-fun b!6997441 () Bool)

(assert (=> b!6997441 (= e!4205969 (forall!16170 (t!381074 (++!15221 lt!2493545 (exprs!6756 ct2!306))) lambda!404459))))

(assert (= (and d!2180266 (not res!2854444)) b!6997440))

(assert (= (and b!6997440 res!2854445) b!6997441))

(declare-fun b_lambda!263305 () Bool)

(assert (=> (not b_lambda!263305) (not b!6997440)))

(declare-fun m!7689844 () Bool)

(assert (=> b!6997440 m!7689844))

(declare-fun m!7689846 () Bool)

(assert (=> b!6997441 m!7689846))

(assert (=> d!2179874 d!2180266))

(assert (=> d!2179874 d!2179904))

(declare-fun d!2180268 () Bool)

(assert (=> d!2180268 (forall!16170 (++!15221 lt!2493545 (exprs!6756 ct2!306)) lambda!404459)))

(assert (=> d!2180268 true))

(declare-fun _$78!503 () Unit!161177)

(assert (=> d!2180268 (= (choose!52409 lt!2493545 (exprs!6756 ct2!306) lambda!404459) _$78!503)))

(declare-fun bs!1863595 () Bool)

(assert (= bs!1863595 d!2180268))

(assert (=> bs!1863595 m!7688690))

(assert (=> bs!1863595 m!7688690))

(assert (=> bs!1863595 m!7688876))

(assert (=> d!2179874 d!2180268))

(declare-fun d!2180270 () Bool)

(declare-fun res!2854446 () Bool)

(declare-fun e!4205970 () Bool)

(assert (=> d!2180270 (=> res!2854446 e!4205970)))

(assert (=> d!2180270 (= res!2854446 (is-Nil!67201 lt!2493545))))

(assert (=> d!2180270 (= (forall!16170 lt!2493545 lambda!404459) e!4205970)))

(declare-fun b!6997442 () Bool)

(declare-fun e!4205971 () Bool)

(assert (=> b!6997442 (= e!4205970 e!4205971)))

(declare-fun res!2854447 () Bool)

(assert (=> b!6997442 (=> (not res!2854447) (not e!4205971))))

(assert (=> b!6997442 (= res!2854447 (dynLambda!26980 lambda!404459 (h!73649 lt!2493545)))))

(declare-fun b!6997443 () Bool)

(assert (=> b!6997443 (= e!4205971 (forall!16170 (t!381074 lt!2493545) lambda!404459))))

(assert (= (and d!2180270 (not res!2854446)) b!6997442))

(assert (= (and b!6997442 res!2854447) b!6997443))

(declare-fun b_lambda!263307 () Bool)

(assert (=> (not b_lambda!263307) (not b!6997442)))

(declare-fun m!7689848 () Bool)

(assert (=> b!6997442 m!7689848))

(declare-fun m!7689850 () Bool)

(assert (=> b!6997443 m!7689850))

(assert (=> d!2179874 d!2180270))

(assert (=> d!2179944 d!2180160))

(declare-fun bs!1863596 () Bool)

(declare-fun d!2180272 () Bool)

(assert (= bs!1863596 (and d!2180272 d!2179976)))

(declare-fun lambda!404577 () Int)

(assert (=> bs!1863596 (not (= lambda!404577 lambda!404538))))

(declare-fun bs!1863597 () Bool)

(assert (= bs!1863597 (and d!2180272 d!2180202)))

(assert (=> bs!1863597 (= lambda!404577 lambda!404571)))

(declare-fun bs!1863598 () Bool)

(assert (= bs!1863598 (and d!2180272 d!2180154)))

(assert (=> bs!1863598 (= lambda!404577 lambda!404568)))

(declare-fun bs!1863599 () Bool)

(assert (= bs!1863599 (and d!2180272 d!2180140)))

(assert (=> bs!1863599 (= lambda!404577 lambda!404567)))

(declare-fun bs!1863600 () Bool)

(assert (= bs!1863600 (and d!2180272 d!2180234)))

(assert (=> bs!1863600 (= lambda!404577 lambda!404575)))

(declare-fun bs!1863601 () Bool)

(assert (= bs!1863601 (and d!2180272 b!6996717)))

(assert (=> bs!1863601 (not (= lambda!404577 lambda!404457))))

(declare-fun bs!1863602 () Bool)

(assert (= bs!1863602 (and d!2180272 d!2180132)))

(assert (=> bs!1863602 (= lambda!404577 lambda!404566)))

(declare-fun bs!1863603 () Bool)

(assert (= bs!1863603 (and d!2180272 d!2180128)))

(assert (=> bs!1863603 (= lambda!404577 lambda!404565)))

(declare-fun bs!1863604 () Bool)

(assert (= bs!1863604 (and d!2180272 d!2179978)))

(assert (=> bs!1863604 (not (= lambda!404577 lambda!404541))))

(assert (=> d!2180272 (= (nullableZipper!2455 lt!2493546) (exists!3071 lt!2493546 lambda!404577))))

(declare-fun bs!1863605 () Bool)

(assert (= bs!1863605 d!2180272))

(declare-fun m!7689852 () Bool)

(assert (=> bs!1863605 m!7689852))

(assert (=> b!6996987 d!2180272))

(declare-fun b!6997456 () Bool)

(declare-fun e!4205983 () Context!12512)

(assert (=> b!6997456 (= e!4205983 (getWitness!1175 (t!381076 (toList!10620 lt!2493564)) lambda!404457))))

(declare-fun b!6997457 () Bool)

(declare-fun e!4205981 () Bool)

(declare-fun lt!2493921 () Context!12512)

(assert (=> b!6997457 (= e!4205981 (contains!20418 (toList!10620 lt!2493564) lt!2493921))))

(declare-fun b!6997458 () Bool)

(declare-fun e!4205982 () Context!12512)

(assert (=> b!6997458 (= e!4205982 (h!73651 (toList!10620 lt!2493564)))))

(declare-fun b!6997459 () Bool)

(declare-fun e!4205980 () Bool)

(assert (=> b!6997459 (= e!4205980 (dynLambda!26974 lambda!404457 (h!73651 (toList!10620 lt!2493564))))))

(declare-fun d!2180274 () Bool)

(assert (=> d!2180274 e!4205981))

(declare-fun res!2854453 () Bool)

(assert (=> d!2180274 (=> (not res!2854453) (not e!4205981))))

(assert (=> d!2180274 (= res!2854453 (dynLambda!26974 lambda!404457 lt!2493921))))

(assert (=> d!2180274 (= lt!2493921 e!4205982)))

(declare-fun c!1298551 () Bool)

(assert (=> d!2180274 (= c!1298551 e!4205980)))

(declare-fun res!2854452 () Bool)

(assert (=> d!2180274 (=> (not res!2854452) (not e!4205980))))

(assert (=> d!2180274 (= res!2854452 (is-Cons!67203 (toList!10620 lt!2493564)))))

(assert (=> d!2180274 (exists!3069 (toList!10620 lt!2493564) lambda!404457)))

(assert (=> d!2180274 (= (getWitness!1175 (toList!10620 lt!2493564) lambda!404457) lt!2493921)))

(declare-fun b!6997460 () Bool)

(assert (=> b!6997460 (= e!4205982 e!4205983)))

(declare-fun c!1298550 () Bool)

(assert (=> b!6997460 (= c!1298550 (is-Cons!67203 (toList!10620 lt!2493564)))))

(declare-fun b!6997461 () Bool)

(declare-fun lt!2493922 () Unit!161177)

(declare-fun Unit!161181 () Unit!161177)

(assert (=> b!6997461 (= lt!2493922 Unit!161181)))

(assert (=> b!6997461 false))

(declare-fun head!14134 (List!67327) Context!12512)

(assert (=> b!6997461 (= e!4205983 (head!14134 (toList!10620 lt!2493564)))))

(assert (= (and d!2180274 res!2854452) b!6997459))

(assert (= (and d!2180274 c!1298551) b!6997458))

(assert (= (and d!2180274 (not c!1298551)) b!6997460))

(assert (= (and b!6997460 c!1298550) b!6997456))

(assert (= (and b!6997460 (not c!1298550)) b!6997461))

(assert (= (and d!2180274 res!2854453) b!6997457))

(declare-fun b_lambda!263309 () Bool)

(assert (=> (not b_lambda!263309) (not b!6997459)))

(declare-fun b_lambda!263311 () Bool)

(assert (=> (not b_lambda!263311) (not d!2180274)))

(declare-fun m!7689854 () Bool)

(assert (=> d!2180274 m!7689854))

(assert (=> d!2180274 m!7688664))

(declare-fun m!7689856 () Bool)

(assert (=> d!2180274 m!7689856))

(declare-fun m!7689858 () Bool)

(assert (=> b!6997456 m!7689858))

(assert (=> b!6997461 m!7688664))

(declare-fun m!7689860 () Bool)

(assert (=> b!6997461 m!7689860))

(declare-fun m!7689862 () Bool)

(assert (=> b!6997459 m!7689862))

(assert (=> b!6997457 m!7688664))

(declare-fun m!7689864 () Bool)

(assert (=> b!6997457 m!7689864))

(assert (=> d!2179974 d!2180274))

(assert (=> d!2179974 d!2179980))

(declare-fun d!2180276 () Bool)

(declare-fun lt!2493925 () Bool)

(assert (=> d!2180276 (= lt!2493925 (exists!3069 (toList!10620 lt!2493564) lambda!404457))))

(declare-fun choose!52432 ((Set Context!12512) Int) Bool)

(assert (=> d!2180276 (= lt!2493925 (choose!52432 lt!2493564 lambda!404457))))

(assert (=> d!2180276 (= (exists!3071 lt!2493564 lambda!404457) lt!2493925)))

(declare-fun bs!1863606 () Bool)

(assert (= bs!1863606 d!2180276))

(assert (=> bs!1863606 m!7688664))

(assert (=> bs!1863606 m!7688664))

(assert (=> bs!1863606 m!7689856))

(declare-fun m!7689866 () Bool)

(assert (=> bs!1863606 m!7689866))

(assert (=> d!2179974 d!2180276))

(declare-fun b!6997462 () Bool)

(declare-fun e!4205985 () (Set Context!12512))

(assert (=> b!6997462 (= e!4205985 (set.insert (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (as set.empty (Set Context!12512))))))

(declare-fun b!6997463 () Bool)

(declare-fun e!4205986 () (Set Context!12512))

(declare-fun call!635240 () (Set Context!12512))

(assert (=> b!6997463 (= e!4205986 call!635240)))

(declare-fun call!635242 () (Set Context!12512))

(declare-fun call!635237 () List!67325)

(declare-fun bm!635232 () Bool)

(declare-fun c!1298553 () Bool)

(assert (=> bm!635232 (= call!635242 (derivationStepZipperDown!1978 (ite c!1298553 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (ite c!1298553 (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (Context!12513 call!635237)) (h!73650 s!7408)))))

(declare-fun bm!635233 () Bool)

(declare-fun call!635241 () (Set Context!12512))

(declare-fun call!635239 () (Set Context!12512))

(assert (=> bm!635233 (= call!635241 call!635239)))

(declare-fun bm!635234 () Bool)

(assert (=> bm!635234 (= call!635240 call!635241)))

(declare-fun bm!635235 () Bool)

(declare-fun call!635238 () List!67325)

(assert (=> bm!635235 (= call!635238 call!635237)))

(declare-fun b!6997465 () Bool)

(declare-fun e!4205984 () (Set Context!12512))

(assert (=> b!6997465 (= e!4205984 (set.union call!635242 call!635241))))

(declare-fun b!6997466 () Bool)

(declare-fun c!1298552 () Bool)

(declare-fun e!4205987 () Bool)

(assert (=> b!6997466 (= c!1298552 e!4205987)))

(declare-fun res!2854454 () Bool)

(assert (=> b!6997466 (=> (not res!2854454) (not e!4205987))))

(assert (=> b!6997466 (= res!2854454 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205989 () (Set Context!12512))

(assert (=> b!6997466 (= e!4205989 e!4205984)))

(declare-fun c!1298554 () Bool)

(declare-fun bm!635236 () Bool)

(assert (=> bm!635236 (= call!635237 ($colon$colon!2499 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))) (ite (or c!1298552 c!1298554) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6997467 () Bool)

(assert (=> b!6997467 (= e!4205987 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun b!6997464 () Bool)

(declare-fun c!1298556 () Bool)

(assert (=> b!6997464 (= c!1298556 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun e!4205988 () (Set Context!12512))

(assert (=> b!6997464 (= e!4205988 e!4205986)))

(declare-fun d!2180278 () Bool)

(declare-fun c!1298555 () Bool)

(assert (=> d!2180278 (= c!1298555 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493587))) (h!73650 s!7408))))))

(assert (=> d!2180278 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493587)) (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (h!73650 s!7408)) e!4205985)))

(declare-fun bm!635237 () Bool)

(assert (=> bm!635237 (= call!635239 (derivationStepZipperDown!1978 (ite c!1298553 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298552 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298554 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))) (ite (or c!1298553 c!1298552) (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (Context!12513 call!635238)) (h!73650 s!7408)))))

(declare-fun b!6997468 () Bool)

(assert (=> b!6997468 (= e!4205988 call!635240)))

(declare-fun b!6997469 () Bool)

(assert (=> b!6997469 (= e!4205989 (set.union call!635239 call!635242))))

(declare-fun b!6997470 () Bool)

(assert (=> b!6997470 (= e!4205984 e!4205988)))

(assert (=> b!6997470 (= c!1298554 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997471 () Bool)

(assert (=> b!6997471 (= e!4205985 e!4205989)))

(assert (=> b!6997471 (= c!1298553 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997472 () Bool)

(assert (=> b!6997472 (= e!4205986 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180278 c!1298555) b!6997462))

(assert (= (and d!2180278 (not c!1298555)) b!6997471))

(assert (= (and b!6997471 c!1298553) b!6997469))

(assert (= (and b!6997471 (not c!1298553)) b!6997466))

(assert (= (and b!6997466 res!2854454) b!6997467))

(assert (= (and b!6997466 c!1298552) b!6997465))

(assert (= (and b!6997466 (not c!1298552)) b!6997470))

(assert (= (and b!6997470 c!1298554) b!6997468))

(assert (= (and b!6997470 (not c!1298554)) b!6997464))

(assert (= (and b!6997464 c!1298556) b!6997463))

(assert (= (and b!6997464 (not c!1298556)) b!6997472))

(assert (= (or b!6997468 b!6997463) bm!635235))

(assert (= (or b!6997468 b!6997463) bm!635234))

(assert (= (or b!6997465 bm!635234) bm!635233))

(assert (= (or b!6997465 bm!635235) bm!635236))

(assert (= (or b!6997469 bm!635233) bm!635237))

(assert (= (or b!6997469 b!6997465) bm!635232))

(declare-fun m!7689868 () Bool)

(assert (=> bm!635236 m!7689868))

(declare-fun m!7689870 () Bool)

(assert (=> bm!635232 m!7689870))

(assert (=> b!6997467 m!7688900))

(declare-fun m!7689872 () Bool)

(assert (=> bm!635237 m!7689872))

(declare-fun m!7689874 () Bool)

(assert (=> b!6997462 m!7689874))

(assert (=> bm!635155 d!2180278))

(declare-fun d!2180280 () Bool)

(assert (=> d!2180280 (= (flatMap!2246 lt!2493558 lambda!404526) (choose!52411 lt!2493558 lambda!404526))))

(declare-fun bs!1863607 () Bool)

(assert (= bs!1863607 d!2180280))

(declare-fun m!7689876 () Bool)

(assert (=> bs!1863607 m!7689876))

(assert (=> d!2179894 d!2180280))

(declare-fun d!2180282 () Bool)

(declare-fun c!1298557 () Bool)

(assert (=> d!2180282 (= c!1298557 (isEmpty!39226 (tail!13290 (t!381075 s!7408))))))

(declare-fun e!4205990 () Bool)

(assert (=> d!2180282 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493557 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))) e!4205990)))

(declare-fun b!6997473 () Bool)

(assert (=> b!6997473 (= e!4205990 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493557 (head!14132 (t!381075 s!7408)))))))

(declare-fun b!6997474 () Bool)

(assert (=> b!6997474 (= e!4205990 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493557 (head!14132 (t!381075 s!7408))) (head!14132 (tail!13290 (t!381075 s!7408)))) (tail!13290 (tail!13290 (t!381075 s!7408)))))))

(assert (= (and d!2180282 c!1298557) b!6997473))

(assert (= (and d!2180282 (not c!1298557)) b!6997474))

(assert (=> d!2180282 m!7689074))

(assert (=> d!2180282 m!7689692))

(assert (=> b!6997473 m!7689086))

(declare-fun m!7689878 () Bool)

(assert (=> b!6997473 m!7689878))

(assert (=> b!6997474 m!7689074))

(assert (=> b!6997474 m!7689696))

(assert (=> b!6997474 m!7689086))

(assert (=> b!6997474 m!7689696))

(declare-fun m!7689880 () Bool)

(assert (=> b!6997474 m!7689880))

(assert (=> b!6997474 m!7689074))

(assert (=> b!6997474 m!7689700))

(assert (=> b!6997474 m!7689880))

(assert (=> b!6997474 m!7689700))

(declare-fun m!7689882 () Bool)

(assert (=> b!6997474 m!7689882))

(assert (=> b!6996983 d!2180282))

(declare-fun bs!1863608 () Bool)

(declare-fun d!2180284 () Bool)

(assert (= bs!1863608 (and d!2180284 d!2180210)))

(declare-fun lambda!404578 () Int)

(assert (=> bs!1863608 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404578 lambda!404572))))

(declare-fun bs!1863609 () Bool)

(assert (= bs!1863609 (and d!2180284 d!2180256)))

(assert (=> bs!1863609 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404578 lambda!404576))))

(declare-fun bs!1863610 () Bool)

(assert (= bs!1863610 (and d!2180284 d!2180220)))

(assert (=> bs!1863610 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404578 lambda!404573))))

(declare-fun bs!1863611 () Bool)

(assert (= bs!1863611 (and d!2180284 d!2179882)))

(assert (=> bs!1863611 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404578 lambda!404525))))

(declare-fun bs!1863612 () Bool)

(assert (= bs!1863612 (and d!2180284 d!2179964)))

(assert (=> bs!1863612 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404578 lambda!404535))))

(declare-fun bs!1863613 () Bool)

(assert (= bs!1863613 (and d!2180284 d!2180230)))

(assert (=> bs!1863613 (= lambda!404578 lambda!404574)))

(declare-fun bs!1863614 () Bool)

(assert (= bs!1863614 (and d!2180284 d!2180192)))

(assert (=> bs!1863614 (= lambda!404578 lambda!404570)))

(declare-fun bs!1863615 () Bool)

(assert (= bs!1863615 (and d!2180284 b!6996719)))

(assert (=> bs!1863615 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404578 lambda!404460))))

(declare-fun bs!1863616 () Bool)

(assert (= bs!1863616 (and d!2180284 d!2179894)))

(assert (=> bs!1863616 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404578 lambda!404526))))

(assert (=> d!2180284 true))

(assert (=> d!2180284 (= (derivationStepZipper!2740 lt!2493557 (head!14132 (t!381075 s!7408))) (flatMap!2246 lt!2493557 lambda!404578))))

(declare-fun bs!1863617 () Bool)

(assert (= bs!1863617 d!2180284))

(declare-fun m!7689884 () Bool)

(assert (=> bs!1863617 m!7689884))

(assert (=> b!6996983 d!2180284))

(assert (=> b!6996983 d!2180194))

(assert (=> b!6996983 d!2180196))

(declare-fun d!2180286 () Bool)

(assert (=> d!2180286 true))

(declare-fun setRes!48026 () Bool)

(assert (=> d!2180286 setRes!48026))

(declare-fun condSetEmpty!48026 () Bool)

(declare-fun res!2854457 () (Set Context!12512))

(assert (=> d!2180286 (= condSetEmpty!48026 (= res!2854457 (as set.empty (Set Context!12512))))))

(assert (=> d!2180286 (= (choose!52413 lt!2493576 lambda!404458) res!2854457)))

(declare-fun setIsEmpty!48026 () Bool)

(assert (=> setIsEmpty!48026 setRes!48026))

(declare-fun e!4205993 () Bool)

(declare-fun setElem!48026 () Context!12512)

(declare-fun setNonEmpty!48026 () Bool)

(declare-fun tp!1930712 () Bool)

(assert (=> setNonEmpty!48026 (= setRes!48026 (and tp!1930712 (inv!86010 setElem!48026) e!4205993))))

(declare-fun setRest!48026 () (Set Context!12512))

(assert (=> setNonEmpty!48026 (= res!2854457 (set.union (set.insert setElem!48026 (as set.empty (Set Context!12512))) setRest!48026))))

(declare-fun b!6997477 () Bool)

(declare-fun tp!1930711 () Bool)

(assert (=> b!6997477 (= e!4205993 tp!1930711)))

(assert (= (and d!2180286 condSetEmpty!48026) setIsEmpty!48026))

(assert (= (and d!2180286 (not condSetEmpty!48026)) setNonEmpty!48026))

(assert (= setNonEmpty!48026 b!6997477))

(declare-fun m!7689886 () Bool)

(assert (=> setNonEmpty!48026 m!7689886))

(assert (=> d!2179902 d!2180286))

(declare-fun b!6997478 () Bool)

(declare-fun e!4205994 () Bool)

(declare-fun call!635243 () Bool)

(assert (=> b!6997478 (= e!4205994 call!635243)))

(declare-fun b!6997479 () Bool)

(declare-fun e!4205995 () Bool)

(declare-fun e!4205999 () Bool)

(assert (=> b!6997479 (= e!4205995 e!4205999)))

(declare-fun c!1298559 () Bool)

(assert (=> b!6997479 (= c!1298559 (is-Union!17260 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997480 () Bool)

(declare-fun e!4206000 () Bool)

(assert (=> b!6997480 (= e!4206000 call!635243)))

(declare-fun d!2180288 () Bool)

(declare-fun res!2854459 () Bool)

(declare-fun e!4205996 () Bool)

(assert (=> d!2180288 (=> res!2854459 e!4205996)))

(assert (=> d!2180288 (= res!2854459 (is-ElementMatch!17260 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(assert (=> d!2180288 (= (validRegex!8870 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))) e!4205996)))

(declare-fun bm!635238 () Bool)

(declare-fun call!635244 () Bool)

(assert (=> bm!635238 (= call!635243 call!635244)))

(declare-fun call!635245 () Bool)

(declare-fun bm!635239 () Bool)

(assert (=> bm!635239 (= call!635245 (validRegex!8870 (ite c!1298559 (regOne!35033 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))) (regOne!35032 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))))

(declare-fun b!6997481 () Bool)

(declare-fun e!4205997 () Bool)

(assert (=> b!6997481 (= e!4205997 e!4205994)))

(declare-fun res!2854461 () Bool)

(assert (=> b!6997481 (=> (not res!2854461) (not e!4205994))))

(assert (=> b!6997481 (= res!2854461 call!635245)))

(declare-fun b!6997482 () Bool)

(declare-fun res!2854462 () Bool)

(assert (=> b!6997482 (=> res!2854462 e!4205997)))

(assert (=> b!6997482 (= res!2854462 (not (is-Concat!26105 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))))))))))

(assert (=> b!6997482 (= e!4205999 e!4205997)))

(declare-fun b!6997483 () Bool)

(assert (=> b!6997483 (= e!4205996 e!4205995)))

(declare-fun c!1298558 () Bool)

(assert (=> b!6997483 (= c!1298558 (is-Star!17260 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997484 () Bool)

(declare-fun res!2854458 () Bool)

(assert (=> b!6997484 (=> (not res!2854458) (not e!4206000))))

(assert (=> b!6997484 (= res!2854458 call!635245)))

(assert (=> b!6997484 (= e!4205999 e!4206000)))

(declare-fun b!6997485 () Bool)

(declare-fun e!4205998 () Bool)

(assert (=> b!6997485 (= e!4205995 e!4205998)))

(declare-fun res!2854460 () Bool)

(assert (=> b!6997485 (= res!2854460 (not (nullable!7020 (reg!17589 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))))))))

(assert (=> b!6997485 (=> (not res!2854460) (not e!4205998))))

(declare-fun b!6997486 () Bool)

(assert (=> b!6997486 (= e!4205998 call!635244)))

(declare-fun bm!635240 () Bool)

(assert (=> bm!635240 (= call!635244 (validRegex!8870 (ite c!1298558 (reg!17589 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))) (ite c!1298559 (regTwo!35033 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587)))))) (regTwo!35032 (ite c!1298384 (reg!17589 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298385 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))))))))))))

(assert (= (and d!2180288 (not res!2854459)) b!6997483))

(assert (= (and b!6997483 c!1298558) b!6997485))

(assert (= (and b!6997483 (not c!1298558)) b!6997479))

(assert (= (and b!6997485 res!2854460) b!6997486))

(assert (= (and b!6997479 c!1298559) b!6997484))

(assert (= (and b!6997479 (not c!1298559)) b!6997482))

(assert (= (and b!6997484 res!2854458) b!6997480))

(assert (= (and b!6997482 (not res!2854462)) b!6997481))

(assert (= (and b!6997481 res!2854461) b!6997478))

(assert (= (or b!6997480 b!6997478) bm!635238))

(assert (= (or b!6997484 b!6997481) bm!635239))

(assert (= (or b!6997486 bm!635238) bm!635240))

(declare-fun m!7689888 () Bool)

(assert (=> bm!635239 m!7689888))

(declare-fun m!7689890 () Bool)

(assert (=> b!6997485 m!7689890))

(declare-fun m!7689892 () Bool)

(assert (=> bm!635240 m!7689892))

(assert (=> bm!635164 d!2180288))

(assert (=> bs!1863456 d!2179886))

(declare-fun d!2180290 () Bool)

(declare-fun lt!2493928 () Int)

(assert (=> d!2180290 (>= lt!2493928 0)))

(declare-fun e!4206003 () Int)

(assert (=> d!2180290 (= lt!2493928 e!4206003)))

(declare-fun c!1298562 () Bool)

(assert (=> d!2180290 (= c!1298562 (is-Nil!67202 lt!2493824))))

(assert (=> d!2180290 (= (size!40927 lt!2493824) lt!2493928)))

(declare-fun b!6997491 () Bool)

(assert (=> b!6997491 (= e!4206003 0)))

(declare-fun b!6997492 () Bool)

(assert (=> b!6997492 (= e!4206003 (+ 1 (size!40927 (t!381075 lt!2493824))))))

(assert (= (and d!2180290 c!1298562) b!6997491))

(assert (= (and d!2180290 (not c!1298562)) b!6997492))

(declare-fun m!7689894 () Bool)

(assert (=> b!6997492 m!7689894))

(assert (=> b!6997029 d!2180290))

(declare-fun d!2180292 () Bool)

(declare-fun lt!2493929 () Int)

(assert (=> d!2180292 (>= lt!2493929 0)))

(declare-fun e!4206004 () Int)

(assert (=> d!2180292 (= lt!2493929 e!4206004)))

(declare-fun c!1298563 () Bool)

(assert (=> d!2180292 (= c!1298563 (is-Nil!67202 (_1!37236 lt!2493566)))))

(assert (=> d!2180292 (= (size!40927 (_1!37236 lt!2493566)) lt!2493929)))

(declare-fun b!6997493 () Bool)

(assert (=> b!6997493 (= e!4206004 0)))

(declare-fun b!6997494 () Bool)

(assert (=> b!6997494 (= e!4206004 (+ 1 (size!40927 (t!381075 (_1!37236 lt!2493566)))))))

(assert (= (and d!2180292 c!1298563) b!6997493))

(assert (= (and d!2180292 (not c!1298563)) b!6997494))

(assert (=> b!6997494 m!7689718))

(assert (=> b!6997029 d!2180292))

(declare-fun d!2180294 () Bool)

(declare-fun lt!2493930 () Int)

(assert (=> d!2180294 (>= lt!2493930 0)))

(declare-fun e!4206005 () Int)

(assert (=> d!2180294 (= lt!2493930 e!4206005)))

(declare-fun c!1298564 () Bool)

(assert (=> d!2180294 (= c!1298564 (is-Nil!67202 (_2!37236 lt!2493566)))))

(assert (=> d!2180294 (= (size!40927 (_2!37236 lt!2493566)) lt!2493930)))

(declare-fun b!6997495 () Bool)

(assert (=> b!6997495 (= e!4206005 0)))

(declare-fun b!6997496 () Bool)

(assert (=> b!6997496 (= e!4206005 (+ 1 (size!40927 (t!381075 (_2!37236 lt!2493566)))))))

(assert (= (and d!2180294 c!1298564) b!6997495))

(assert (= (and d!2180294 (not c!1298564)) b!6997496))

(declare-fun m!7689896 () Bool)

(assert (=> b!6997496 m!7689896))

(assert (=> b!6997029 d!2180294))

(assert (=> b!6996941 d!2180162))

(declare-fun d!2180296 () Bool)

(assert (=> d!2180296 true))

(declare-fun setRes!48029 () Bool)

(assert (=> d!2180296 setRes!48029))

(declare-fun condSetEmpty!48029 () Bool)

(declare-fun res!2854465 () (Set Context!12512))

(assert (=> d!2180296 (= condSetEmpty!48029 (= res!2854465 (as set.empty (Set Context!12512))))))

(assert (=> d!2180296 (= (choose!52411 lt!2493558 lambda!404460) res!2854465)))

(declare-fun setIsEmpty!48029 () Bool)

(assert (=> setIsEmpty!48029 setRes!48029))

(declare-fun e!4206008 () Bool)

(declare-fun tp!1930717 () Bool)

(declare-fun setElem!48029 () Context!12512)

(declare-fun setNonEmpty!48029 () Bool)

(assert (=> setNonEmpty!48029 (= setRes!48029 (and tp!1930717 (inv!86010 setElem!48029) e!4206008))))

(declare-fun setRest!48029 () (Set Context!12512))

(assert (=> setNonEmpty!48029 (= res!2854465 (set.union (set.insert setElem!48029 (as set.empty (Set Context!12512))) setRest!48029))))

(declare-fun b!6997499 () Bool)

(declare-fun tp!1930718 () Bool)

(assert (=> b!6997499 (= e!4206008 tp!1930718)))

(assert (= (and d!2180296 condSetEmpty!48029) setIsEmpty!48029))

(assert (= (and d!2180296 (not condSetEmpty!48029)) setNonEmpty!48029))

(assert (= setNonEmpty!48029 b!6997499))

(declare-fun m!7689898 () Bool)

(assert (=> setNonEmpty!48029 m!7689898))

(assert (=> d!2179898 d!2180296))

(declare-fun bs!1863618 () Bool)

(declare-fun d!2180298 () Bool)

(assert (= bs!1863618 (and d!2180298 d!2179976)))

(declare-fun lambda!404579 () Int)

(assert (=> bs!1863618 (not (= lambda!404579 lambda!404538))))

(declare-fun bs!1863619 () Bool)

(assert (= bs!1863619 (and d!2180298 d!2180202)))

(assert (=> bs!1863619 (= lambda!404579 lambda!404571)))

(declare-fun bs!1863620 () Bool)

(assert (= bs!1863620 (and d!2180298 d!2180154)))

(assert (=> bs!1863620 (= lambda!404579 lambda!404568)))

(declare-fun bs!1863621 () Bool)

(assert (= bs!1863621 (and d!2180298 d!2180140)))

(assert (=> bs!1863621 (= lambda!404579 lambda!404567)))

(declare-fun bs!1863622 () Bool)

(assert (= bs!1863622 (and d!2180298 d!2180272)))

(assert (=> bs!1863622 (= lambda!404579 lambda!404577)))

(declare-fun bs!1863623 () Bool)

(assert (= bs!1863623 (and d!2180298 d!2180234)))

(assert (=> bs!1863623 (= lambda!404579 lambda!404575)))

(declare-fun bs!1863624 () Bool)

(assert (= bs!1863624 (and d!2180298 b!6996717)))

(assert (=> bs!1863624 (not (= lambda!404579 lambda!404457))))

(declare-fun bs!1863625 () Bool)

(assert (= bs!1863625 (and d!2180298 d!2180132)))

(assert (=> bs!1863625 (= lambda!404579 lambda!404566)))

(declare-fun bs!1863626 () Bool)

(assert (= bs!1863626 (and d!2180298 d!2180128)))

(assert (=> bs!1863626 (= lambda!404579 lambda!404565)))

(declare-fun bs!1863627 () Bool)

(assert (= bs!1863627 (and d!2180298 d!2179978)))

(assert (=> bs!1863627 (not (= lambda!404579 lambda!404541))))

(assert (=> d!2180298 (= (nullableZipper!2455 lt!2493591) (exists!3071 lt!2493591 lambda!404579))))

(declare-fun bs!1863628 () Bool)

(assert (= bs!1863628 d!2180298))

(declare-fun m!7689900 () Bool)

(assert (=> bs!1863628 m!7689900))

(assert (=> b!6996993 d!2180298))

(declare-fun d!2180300 () Bool)

(assert (=> d!2180300 (forall!16170 (++!15221 (exprs!6756 lt!2493561) (exprs!6756 ct2!306)) lambda!404459)))

(declare-fun lt!2493931 () Unit!161177)

(assert (=> d!2180300 (= lt!2493931 (choose!52409 (exprs!6756 lt!2493561) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> d!2180300 (forall!16170 (exprs!6756 lt!2493561) lambda!404459)))

(assert (=> d!2180300 (= (lemmaConcatPreservesForall!596 (exprs!6756 lt!2493561) (exprs!6756 ct2!306) lambda!404459) lt!2493931)))

(declare-fun bs!1863629 () Bool)

(assert (= bs!1863629 d!2180300))

(assert (=> bs!1863629 m!7689194))

(assert (=> bs!1863629 m!7689194))

(declare-fun m!7689902 () Bool)

(assert (=> bs!1863629 m!7689902))

(declare-fun m!7689904 () Bool)

(assert (=> bs!1863629 m!7689904))

(declare-fun m!7689906 () Bool)

(assert (=> bs!1863629 m!7689906))

(assert (=> bs!1863454 d!2180300))

(declare-fun b!6997500 () Bool)

(declare-fun e!4206010 () List!67325)

(assert (=> b!6997500 (= e!4206010 (exprs!6756 ct2!306))))

(declare-fun b!6997502 () Bool)

(declare-fun res!2854466 () Bool)

(declare-fun e!4206009 () Bool)

(assert (=> b!6997502 (=> (not res!2854466) (not e!4206009))))

(declare-fun lt!2493932 () List!67325)

(assert (=> b!6997502 (= res!2854466 (= (size!40926 lt!2493932) (+ (size!40926 (exprs!6756 lt!2493561)) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2180302 () Bool)

(assert (=> d!2180302 e!4206009))

(declare-fun res!2854467 () Bool)

(assert (=> d!2180302 (=> (not res!2854467) (not e!4206009))))

(assert (=> d!2180302 (= res!2854467 (= (content!13295 lt!2493932) (set.union (content!13295 (exprs!6756 lt!2493561)) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2180302 (= lt!2493932 e!4206010)))

(declare-fun c!1298565 () Bool)

(assert (=> d!2180302 (= c!1298565 (is-Nil!67201 (exprs!6756 lt!2493561)))))

(assert (=> d!2180302 (= (++!15221 (exprs!6756 lt!2493561) (exprs!6756 ct2!306)) lt!2493932)))

(declare-fun b!6997503 () Bool)

(assert (=> b!6997503 (= e!4206009 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493932 (exprs!6756 lt!2493561))))))

(declare-fun b!6997501 () Bool)

(assert (=> b!6997501 (= e!4206010 (Cons!67201 (h!73649 (exprs!6756 lt!2493561)) (++!15221 (t!381074 (exprs!6756 lt!2493561)) (exprs!6756 ct2!306))))))

(assert (= (and d!2180302 c!1298565) b!6997500))

(assert (= (and d!2180302 (not c!1298565)) b!6997501))

(assert (= (and d!2180302 res!2854467) b!6997502))

(assert (= (and b!6997502 res!2854466) b!6997503))

(declare-fun m!7689908 () Bool)

(assert (=> b!6997502 m!7689908))

(declare-fun m!7689910 () Bool)

(assert (=> b!6997502 m!7689910))

(assert (=> b!6997502 m!7688920))

(declare-fun m!7689912 () Bool)

(assert (=> d!2180302 m!7689912))

(declare-fun m!7689914 () Bool)

(assert (=> d!2180302 m!7689914))

(assert (=> d!2180302 m!7688926))

(declare-fun m!7689916 () Bool)

(assert (=> b!6997501 m!7689916))

(assert (=> bs!1863454 d!2180302))

(declare-fun bs!1863630 () Bool)

(declare-fun d!2180304 () Bool)

(assert (= bs!1863630 (and d!2180304 d!2179976)))

(declare-fun lambda!404580 () Int)

(assert (=> bs!1863630 (= (= lambda!404541 lambda!404457) (= lambda!404580 lambda!404538))))

(declare-fun bs!1863631 () Bool)

(assert (= bs!1863631 (and d!2180304 d!2180202)))

(assert (=> bs!1863631 (not (= lambda!404580 lambda!404571))))

(declare-fun bs!1863632 () Bool)

(assert (= bs!1863632 (and d!2180304 d!2180154)))

(assert (=> bs!1863632 (not (= lambda!404580 lambda!404568))))

(declare-fun bs!1863633 () Bool)

(assert (= bs!1863633 (and d!2180304 d!2180140)))

(assert (=> bs!1863633 (not (= lambda!404580 lambda!404567))))

(declare-fun bs!1863634 () Bool)

(assert (= bs!1863634 (and d!2180304 d!2180234)))

(assert (=> bs!1863634 (not (= lambda!404580 lambda!404575))))

(declare-fun bs!1863635 () Bool)

(assert (= bs!1863635 (and d!2180304 b!6996717)))

(assert (=> bs!1863635 (not (= lambda!404580 lambda!404457))))

(declare-fun bs!1863636 () Bool)

(assert (= bs!1863636 (and d!2180304 d!2180132)))

(assert (=> bs!1863636 (not (= lambda!404580 lambda!404566))))

(declare-fun bs!1863637 () Bool)

(assert (= bs!1863637 (and d!2180304 d!2180128)))

(assert (=> bs!1863637 (not (= lambda!404580 lambda!404565))))

(declare-fun bs!1863638 () Bool)

(assert (= bs!1863638 (and d!2180304 d!2179978)))

(assert (=> bs!1863638 (not (= lambda!404580 lambda!404541))))

(declare-fun bs!1863639 () Bool)

(assert (= bs!1863639 (and d!2180304 d!2180298)))

(assert (=> bs!1863639 (not (= lambda!404580 lambda!404579))))

(declare-fun bs!1863640 () Bool)

(assert (= bs!1863640 (and d!2180304 d!2180272)))

(assert (=> bs!1863640 (not (= lambda!404580 lambda!404577))))

(assert (=> d!2180304 true))

(assert (=> d!2180304 (< (dynLambda!26975 order!27961 lambda!404541) (dynLambda!26975 order!27961 lambda!404580))))

(assert (=> d!2180304 (= (exists!3069 lt!2493590 lambda!404541) (not (forall!16171 lt!2493590 lambda!404580)))))

(declare-fun bs!1863641 () Bool)

(assert (= bs!1863641 d!2180304))

(declare-fun m!7689918 () Bool)

(assert (=> bs!1863641 m!7689918))

(assert (=> d!2179978 d!2180304))

(declare-fun bs!1863642 () Bool)

(declare-fun d!2180306 () Bool)

(assert (= bs!1863642 (and d!2180306 d!2179976)))

(declare-fun lambda!404583 () Int)

(assert (=> bs!1863642 (not (= lambda!404583 lambda!404538))))

(declare-fun bs!1863643 () Bool)

(assert (= bs!1863643 (and d!2180306 d!2180202)))

(assert (=> bs!1863643 (not (= lambda!404583 lambda!404571))))

(declare-fun bs!1863644 () Bool)

(assert (= bs!1863644 (and d!2180306 d!2180154)))

(assert (=> bs!1863644 (not (= lambda!404583 lambda!404568))))

(declare-fun bs!1863645 () Bool)

(assert (= bs!1863645 (and d!2180306 d!2180140)))

(assert (=> bs!1863645 (not (= lambda!404583 lambda!404567))))

(declare-fun bs!1863646 () Bool)

(assert (= bs!1863646 (and d!2180306 d!2180234)))

(assert (=> bs!1863646 (not (= lambda!404583 lambda!404575))))

(declare-fun bs!1863647 () Bool)

(assert (= bs!1863647 (and d!2180306 b!6996717)))

(assert (=> bs!1863647 (= lambda!404583 lambda!404457)))

(declare-fun bs!1863648 () Bool)

(assert (= bs!1863648 (and d!2180306 d!2180132)))

(assert (=> bs!1863648 (not (= lambda!404583 lambda!404566))))

(declare-fun bs!1863649 () Bool)

(assert (= bs!1863649 (and d!2180306 d!2180128)))

(assert (=> bs!1863649 (not (= lambda!404583 lambda!404565))))

(declare-fun bs!1863650 () Bool)

(assert (= bs!1863650 (and d!2180306 d!2179978)))

(assert (=> bs!1863650 (= lambda!404583 lambda!404541)))

(declare-fun bs!1863651 () Bool)

(assert (= bs!1863651 (and d!2180306 d!2180298)))

(assert (=> bs!1863651 (not (= lambda!404583 lambda!404579))))

(declare-fun bs!1863652 () Bool)

(assert (= bs!1863652 (and d!2180306 d!2180272)))

(assert (=> bs!1863652 (not (= lambda!404583 lambda!404577))))

(declare-fun bs!1863653 () Bool)

(assert (= bs!1863653 (and d!2180306 d!2180304)))

(assert (=> bs!1863653 (not (= lambda!404583 lambda!404580))))

(assert (=> d!2180306 true))

(assert (=> d!2180306 (exists!3069 lt!2493590 lambda!404583)))

(assert (=> d!2180306 true))

(declare-fun _$60!1063 () Unit!161177)

(assert (=> d!2180306 (= (choose!52419 lt!2493590 s!7408) _$60!1063)))

(declare-fun bs!1863654 () Bool)

(assert (= bs!1863654 d!2180306))

(declare-fun m!7689920 () Bool)

(assert (=> bs!1863654 m!7689920))

(assert (=> d!2179978 d!2180306))

(declare-fun d!2180308 () Bool)

(declare-fun c!1298568 () Bool)

(assert (=> d!2180308 (= c!1298568 (isEmpty!39226 s!7408))))

(declare-fun e!4206011 () Bool)

(assert (=> d!2180308 (= (matchZipper!2800 (content!13296 lt!2493590) s!7408) e!4206011)))

(declare-fun b!6997504 () Bool)

(assert (=> b!6997504 (= e!4206011 (nullableZipper!2455 (content!13296 lt!2493590)))))

(declare-fun b!6997505 () Bool)

(assert (=> b!6997505 (= e!4206011 (matchZipper!2800 (derivationStepZipper!2740 (content!13296 lt!2493590) (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2180308 c!1298568) b!6997504))

(assert (= (and d!2180308 (not c!1298568)) b!6997505))

(assert (=> d!2180308 m!7688998))

(assert (=> b!6997504 m!7689164))

(declare-fun m!7689922 () Bool)

(assert (=> b!6997504 m!7689922))

(assert (=> b!6997505 m!7689002))

(assert (=> b!6997505 m!7689164))

(assert (=> b!6997505 m!7689002))

(declare-fun m!7689924 () Bool)

(assert (=> b!6997505 m!7689924))

(assert (=> b!6997505 m!7689006))

(assert (=> b!6997505 m!7689924))

(assert (=> b!6997505 m!7689006))

(declare-fun m!7689926 () Bool)

(assert (=> b!6997505 m!7689926))

(assert (=> d!2179978 d!2180308))

(declare-fun d!2180310 () Bool)

(declare-fun c!1298569 () Bool)

(assert (=> d!2180310 (= c!1298569 (is-Nil!67203 lt!2493590))))

(declare-fun e!4206012 () (Set Context!12512))

(assert (=> d!2180310 (= (content!13296 lt!2493590) e!4206012)))

(declare-fun b!6997506 () Bool)

(assert (=> b!6997506 (= e!4206012 (as set.empty (Set Context!12512)))))

(declare-fun b!6997507 () Bool)

(assert (=> b!6997507 (= e!4206012 (set.union (set.insert (h!73651 lt!2493590) (as set.empty (Set Context!12512))) (content!13296 (t!381076 lt!2493590))))))

(assert (= (and d!2180310 c!1298569) b!6997506))

(assert (= (and d!2180310 (not c!1298569)) b!6997507))

(declare-fun m!7689928 () Bool)

(assert (=> b!6997507 m!7689928))

(declare-fun m!7689930 () Bool)

(assert (=> b!6997507 m!7689930))

(assert (=> d!2179978 d!2180310))

(assert (=> bs!1863458 d!2179896))

(declare-fun d!2180312 () Bool)

(declare-fun res!2854468 () Bool)

(declare-fun e!4206013 () Bool)

(assert (=> d!2180312 (=> res!2854468 e!4206013)))

(assert (=> d!2180312 (= res!2854468 (is-Nil!67201 (exprs!6756 ct2!306)))))

(assert (=> d!2180312 (= (forall!16170 (exprs!6756 ct2!306) lambda!404534) e!4206013)))

(declare-fun b!6997508 () Bool)

(declare-fun e!4206014 () Bool)

(assert (=> b!6997508 (= e!4206013 e!4206014)))

(declare-fun res!2854469 () Bool)

(assert (=> b!6997508 (=> (not res!2854469) (not e!4206014))))

(assert (=> b!6997508 (= res!2854469 (dynLambda!26980 lambda!404534 (h!73649 (exprs!6756 ct2!306))))))

(declare-fun b!6997509 () Bool)

(assert (=> b!6997509 (= e!4206014 (forall!16170 (t!381074 (exprs!6756 ct2!306)) lambda!404534))))

(assert (= (and d!2180312 (not res!2854468)) b!6997508))

(assert (= (and b!6997508 res!2854469) b!6997509))

(declare-fun b_lambda!263313 () Bool)

(assert (=> (not b_lambda!263313) (not b!6997508)))

(declare-fun m!7689932 () Bool)

(assert (=> b!6997508 m!7689932))

(declare-fun m!7689934 () Bool)

(assert (=> b!6997509 m!7689934))

(assert (=> d!2179926 d!2180312))

(declare-fun d!2180314 () Bool)

(assert (=> d!2180314 (= (flatMap!2246 lt!2493574 lambda!404525) (choose!52411 lt!2493574 lambda!404525))))

(declare-fun bs!1863655 () Bool)

(assert (= bs!1863655 d!2180314))

(declare-fun m!7689936 () Bool)

(assert (=> bs!1863655 m!7689936))

(assert (=> d!2179882 d!2180314))

(declare-fun b!6997510 () Bool)

(declare-fun e!4206016 () (Set Context!12512))

(assert (=> b!6997510 (= e!4206016 (set.insert (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (as set.empty (Set Context!12512))))))

(declare-fun b!6997511 () Bool)

(declare-fun e!4206017 () (Set Context!12512))

(declare-fun call!635249 () (Set Context!12512))

(assert (=> b!6997511 (= e!4206017 call!635249)))

(declare-fun c!1298571 () Bool)

(declare-fun call!635251 () (Set Context!12512))

(declare-fun call!635246 () List!67325)

(declare-fun bm!635241 () Bool)

(assert (=> bm!635241 (= call!635251 (derivationStepZipperDown!1978 (ite c!1298571 (regTwo!35033 (h!73649 (exprs!6756 lt!2493586))) (regOne!35032 (h!73649 (exprs!6756 lt!2493586)))) (ite c!1298571 (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (Context!12513 call!635246)) (h!73650 s!7408)))))

(declare-fun bm!635242 () Bool)

(declare-fun call!635250 () (Set Context!12512))

(declare-fun call!635248 () (Set Context!12512))

(assert (=> bm!635242 (= call!635250 call!635248)))

(declare-fun bm!635243 () Bool)

(assert (=> bm!635243 (= call!635249 call!635250)))

(declare-fun bm!635244 () Bool)

(declare-fun call!635247 () List!67325)

(assert (=> bm!635244 (= call!635247 call!635246)))

(declare-fun b!6997513 () Bool)

(declare-fun e!4206015 () (Set Context!12512))

(assert (=> b!6997513 (= e!4206015 (set.union call!635251 call!635250))))

(declare-fun b!6997514 () Bool)

(declare-fun c!1298570 () Bool)

(declare-fun e!4206018 () Bool)

(assert (=> b!6997514 (= c!1298570 e!4206018)))

(declare-fun res!2854470 () Bool)

(assert (=> b!6997514 (=> (not res!2854470) (not e!4206018))))

(assert (=> b!6997514 (= res!2854470 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun e!4206020 () (Set Context!12512))

(assert (=> b!6997514 (= e!4206020 e!4206015)))

(declare-fun c!1298572 () Bool)

(declare-fun bm!635245 () Bool)

(assert (=> bm!635245 (= call!635246 ($colon$colon!2499 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586)))) (ite (or c!1298570 c!1298572) (regTwo!35032 (h!73649 (exprs!6756 lt!2493586))) (h!73649 (exprs!6756 lt!2493586)))))))

(declare-fun b!6997515 () Bool)

(assert (=> b!6997515 (= e!4206018 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493586)))))))

(declare-fun b!6997512 () Bool)

(declare-fun c!1298574 () Bool)

(assert (=> b!6997512 (= c!1298574 (is-Star!17260 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun e!4206019 () (Set Context!12512))

(assert (=> b!6997512 (= e!4206019 e!4206017)))

(declare-fun d!2180316 () Bool)

(declare-fun c!1298573 () Bool)

(assert (=> d!2180316 (= c!1298573 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493586))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493586))) (h!73650 s!7408))))))

(assert (=> d!2180316 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493586)) (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (h!73650 s!7408)) e!4206016)))

(declare-fun bm!635246 () Bool)

(assert (=> bm!635246 (= call!635248 (derivationStepZipperDown!1978 (ite c!1298571 (regOne!35033 (h!73649 (exprs!6756 lt!2493586))) (ite c!1298570 (regTwo!35032 (h!73649 (exprs!6756 lt!2493586))) (ite c!1298572 (regOne!35032 (h!73649 (exprs!6756 lt!2493586))) (reg!17589 (h!73649 (exprs!6756 lt!2493586)))))) (ite (or c!1298571 c!1298570) (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (Context!12513 call!635247)) (h!73650 s!7408)))))

(declare-fun b!6997516 () Bool)

(assert (=> b!6997516 (= e!4206019 call!635249)))

(declare-fun b!6997517 () Bool)

(assert (=> b!6997517 (= e!4206020 (set.union call!635248 call!635251))))

(declare-fun b!6997518 () Bool)

(assert (=> b!6997518 (= e!4206015 e!4206019)))

(assert (=> b!6997518 (= c!1298572 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun b!6997519 () Bool)

(assert (=> b!6997519 (= e!4206016 e!4206020)))

(assert (=> b!6997519 (= c!1298571 (is-Union!17260 (h!73649 (exprs!6756 lt!2493586))))))

(declare-fun b!6997520 () Bool)

(assert (=> b!6997520 (= e!4206017 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180316 c!1298573) b!6997510))

(assert (= (and d!2180316 (not c!1298573)) b!6997519))

(assert (= (and b!6997519 c!1298571) b!6997517))

(assert (= (and b!6997519 (not c!1298571)) b!6997514))

(assert (= (and b!6997514 res!2854470) b!6997515))

(assert (= (and b!6997514 c!1298570) b!6997513))

(assert (= (and b!6997514 (not c!1298570)) b!6997518))

(assert (= (and b!6997518 c!1298572) b!6997516))

(assert (= (and b!6997518 (not c!1298572)) b!6997512))

(assert (= (and b!6997512 c!1298574) b!6997511))

(assert (= (and b!6997512 (not c!1298574)) b!6997520))

(assert (= (or b!6997516 b!6997511) bm!635244))

(assert (= (or b!6997516 b!6997511) bm!635243))

(assert (= (or b!6997513 bm!635243) bm!635242))

(assert (= (or b!6997513 bm!635244) bm!635245))

(assert (= (or b!6997517 bm!635242) bm!635246))

(assert (= (or b!6997517 b!6997513) bm!635241))

(declare-fun m!7689938 () Bool)

(assert (=> bm!635245 m!7689938))

(declare-fun m!7689940 () Bool)

(assert (=> bm!635241 m!7689940))

(declare-fun m!7689942 () Bool)

(assert (=> b!6997515 m!7689942))

(declare-fun m!7689944 () Bool)

(assert (=> bm!635246 m!7689944))

(declare-fun m!7689946 () Bool)

(assert (=> b!6997510 m!7689946))

(assert (=> bm!635135 d!2180316))

(assert (=> d!2179922 d!2180206))

(declare-fun d!2180318 () Bool)

(declare-fun res!2854475 () Bool)

(declare-fun e!4206025 () Bool)

(assert (=> d!2180318 (=> res!2854475 e!4206025)))

(assert (=> d!2180318 (= res!2854475 (is-Nil!67203 lt!2493781))))

(assert (=> d!2180318 (= (noDuplicate!2537 lt!2493781) e!4206025)))

(declare-fun b!6997525 () Bool)

(declare-fun e!4206026 () Bool)

(assert (=> b!6997525 (= e!4206025 e!4206026)))

(declare-fun res!2854476 () Bool)

(assert (=> b!6997525 (=> (not res!2854476) (not e!4206026))))

(assert (=> b!6997525 (= res!2854476 (not (contains!20418 (t!381076 lt!2493781) (h!73651 lt!2493781))))))

(declare-fun b!6997526 () Bool)

(assert (=> b!6997526 (= e!4206026 (noDuplicate!2537 (t!381076 lt!2493781)))))

(assert (= (and d!2180318 (not res!2854475)) b!6997525))

(assert (= (and b!6997525 res!2854476) b!6997526))

(declare-fun m!7689948 () Bool)

(assert (=> b!6997525 m!7689948))

(declare-fun m!7689950 () Bool)

(assert (=> b!6997526 m!7689950))

(assert (=> d!2179906 d!2180318))

(declare-fun d!2180320 () Bool)

(declare-fun e!4206035 () Bool)

(assert (=> d!2180320 e!4206035))

(declare-fun res!2854481 () Bool)

(assert (=> d!2180320 (=> (not res!2854481) (not e!4206035))))

(declare-fun res!2854482 () List!67327)

(assert (=> d!2180320 (= res!2854481 (noDuplicate!2537 res!2854482))))

(declare-fun e!4206034 () Bool)

(assert (=> d!2180320 e!4206034))

(assert (=> d!2180320 (= (choose!52414 z1!570) res!2854482)))

(declare-fun b!6997534 () Bool)

(declare-fun e!4206033 () Bool)

(declare-fun tp!1930724 () Bool)

(assert (=> b!6997534 (= e!4206033 tp!1930724)))

(declare-fun b!6997533 () Bool)

(declare-fun tp!1930723 () Bool)

(assert (=> b!6997533 (= e!4206034 (and (inv!86010 (h!73651 res!2854482)) e!4206033 tp!1930723))))

(declare-fun b!6997535 () Bool)

(assert (=> b!6997535 (= e!4206035 (= (content!13296 res!2854482) z1!570))))

(assert (= b!6997533 b!6997534))

(assert (= (and d!2180320 (is-Cons!67203 res!2854482)) b!6997533))

(assert (= (and d!2180320 res!2854481) b!6997535))

(declare-fun m!7689952 () Bool)

(assert (=> d!2180320 m!7689952))

(declare-fun m!7689954 () Bool)

(assert (=> b!6997533 m!7689954))

(declare-fun m!7689956 () Bool)

(assert (=> b!6997535 m!7689956))

(assert (=> d!2179906 d!2180320))

(declare-fun b!6997536 () Bool)

(declare-fun e!4206037 () (Set Context!12512))

(assert (=> b!6997536 (= e!4206037 (set.insert (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (as set.empty (Set Context!12512))))))

(declare-fun b!6997537 () Bool)

(declare-fun e!4206038 () (Set Context!12512))

(declare-fun call!635255 () (Set Context!12512))

(assert (=> b!6997537 (= e!4206038 call!635255)))

(declare-fun bm!635247 () Bool)

(declare-fun call!635257 () (Set Context!12512))

(declare-fun call!635252 () List!67325)

(declare-fun c!1298576 () Bool)

(assert (=> bm!635247 (= call!635257 (derivationStepZipperDown!1978 (ite c!1298576 (regTwo!35033 (h!73649 (exprs!6756 lt!2493561))) (regOne!35032 (h!73649 (exprs!6756 lt!2493561)))) (ite c!1298576 (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (Context!12513 call!635252)) (h!73650 s!7408)))))

(declare-fun bm!635248 () Bool)

(declare-fun call!635256 () (Set Context!12512))

(declare-fun call!635254 () (Set Context!12512))

(assert (=> bm!635248 (= call!635256 call!635254)))

(declare-fun bm!635249 () Bool)

(assert (=> bm!635249 (= call!635255 call!635256)))

(declare-fun bm!635250 () Bool)

(declare-fun call!635253 () List!67325)

(assert (=> bm!635250 (= call!635253 call!635252)))

(declare-fun b!6997539 () Bool)

(declare-fun e!4206036 () (Set Context!12512))

(assert (=> b!6997539 (= e!4206036 (set.union call!635257 call!635256))))

(declare-fun b!6997540 () Bool)

(declare-fun c!1298575 () Bool)

(declare-fun e!4206039 () Bool)

(assert (=> b!6997540 (= c!1298575 e!4206039)))

(declare-fun res!2854483 () Bool)

(assert (=> b!6997540 (=> (not res!2854483) (not e!4206039))))

(assert (=> b!6997540 (= res!2854483 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun e!4206041 () (Set Context!12512))

(assert (=> b!6997540 (= e!4206041 e!4206036)))

(declare-fun c!1298577 () Bool)

(declare-fun bm!635251 () Bool)

(assert (=> bm!635251 (= call!635252 ($colon$colon!2499 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))) (ite (or c!1298575 c!1298577) (regTwo!35032 (h!73649 (exprs!6756 lt!2493561))) (h!73649 (exprs!6756 lt!2493561)))))))

(declare-fun b!6997541 () Bool)

(assert (=> b!6997541 (= e!4206039 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493561)))))))

(declare-fun b!6997538 () Bool)

(declare-fun c!1298579 () Bool)

(assert (=> b!6997538 (= c!1298579 (is-Star!17260 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun e!4206040 () (Set Context!12512))

(assert (=> b!6997538 (= e!4206040 e!4206038)))

(declare-fun d!2180322 () Bool)

(declare-fun c!1298578 () Bool)

(assert (=> d!2180322 (= c!1298578 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493561))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493561))) (h!73650 s!7408))))))

(assert (=> d!2180322 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493561)) (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (h!73650 s!7408)) e!4206037)))

(declare-fun bm!635252 () Bool)

(assert (=> bm!635252 (= call!635254 (derivationStepZipperDown!1978 (ite c!1298576 (regOne!35033 (h!73649 (exprs!6756 lt!2493561))) (ite c!1298575 (regTwo!35032 (h!73649 (exprs!6756 lt!2493561))) (ite c!1298577 (regOne!35032 (h!73649 (exprs!6756 lt!2493561))) (reg!17589 (h!73649 (exprs!6756 lt!2493561)))))) (ite (or c!1298576 c!1298575) (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (Context!12513 call!635253)) (h!73650 s!7408)))))

(declare-fun b!6997542 () Bool)

(assert (=> b!6997542 (= e!4206040 call!635255)))

(declare-fun b!6997543 () Bool)

(assert (=> b!6997543 (= e!4206041 (set.union call!635254 call!635257))))

(declare-fun b!6997544 () Bool)

(assert (=> b!6997544 (= e!4206036 e!4206040)))

(assert (=> b!6997544 (= c!1298577 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun b!6997545 () Bool)

(assert (=> b!6997545 (= e!4206037 e!4206041)))

(assert (=> b!6997545 (= c!1298576 (is-Union!17260 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun b!6997546 () Bool)

(assert (=> b!6997546 (= e!4206038 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180322 c!1298578) b!6997536))

(assert (= (and d!2180322 (not c!1298578)) b!6997545))

(assert (= (and b!6997545 c!1298576) b!6997543))

(assert (= (and b!6997545 (not c!1298576)) b!6997540))

(assert (= (and b!6997540 res!2854483) b!6997541))

(assert (= (and b!6997540 c!1298575) b!6997539))

(assert (= (and b!6997540 (not c!1298575)) b!6997544))

(assert (= (and b!6997544 c!1298577) b!6997542))

(assert (= (and b!6997544 (not c!1298577)) b!6997538))

(assert (= (and b!6997538 c!1298579) b!6997537))

(assert (= (and b!6997538 (not c!1298579)) b!6997546))

(assert (= (or b!6997542 b!6997537) bm!635250))

(assert (= (or b!6997542 b!6997537) bm!635249))

(assert (= (or b!6997539 bm!635249) bm!635248))

(assert (= (or b!6997539 bm!635250) bm!635251))

(assert (= (or b!6997543 bm!635248) bm!635252))

(assert (= (or b!6997543 b!6997539) bm!635247))

(declare-fun m!7689958 () Bool)

(assert (=> bm!635251 m!7689958))

(declare-fun m!7689960 () Bool)

(assert (=> bm!635247 m!7689960))

(declare-fun m!7689962 () Bool)

(assert (=> b!6997541 m!7689962))

(declare-fun m!7689964 () Bool)

(assert (=> bm!635252 m!7689964))

(declare-fun m!7689966 () Bool)

(assert (=> b!6997536 m!7689966))

(assert (=> bm!635154 d!2180322))

(assert (=> d!2179948 d!2180160))

(declare-fun b!6997547 () Bool)

(declare-fun e!4206042 () List!67326)

(assert (=> b!6997547 (= e!4206042 (_2!37236 (get!23560 lt!2493807)))))

(declare-fun d!2180324 () Bool)

(declare-fun e!4206043 () Bool)

(assert (=> d!2180324 e!4206043))

(declare-fun res!2854484 () Bool)

(assert (=> d!2180324 (=> (not res!2854484) (not e!4206043))))

(declare-fun lt!2493933 () List!67326)

(assert (=> d!2180324 (= res!2854484 (= (content!13297 lt!2493933) (set.union (content!13297 (_1!37236 (get!23560 lt!2493807))) (content!13297 (_2!37236 (get!23560 lt!2493807))))))))

(assert (=> d!2180324 (= lt!2493933 e!4206042)))

(declare-fun c!1298580 () Bool)

(assert (=> d!2180324 (= c!1298580 (is-Nil!67202 (_1!37236 (get!23560 lt!2493807))))))

(assert (=> d!2180324 (= (++!15222 (_1!37236 (get!23560 lt!2493807)) (_2!37236 (get!23560 lt!2493807))) lt!2493933)))

(declare-fun b!6997548 () Bool)

(assert (=> b!6997548 (= e!4206042 (Cons!67202 (h!73650 (_1!37236 (get!23560 lt!2493807))) (++!15222 (t!381075 (_1!37236 (get!23560 lt!2493807))) (_2!37236 (get!23560 lt!2493807)))))))

(declare-fun b!6997550 () Bool)

(assert (=> b!6997550 (= e!4206043 (or (not (= (_2!37236 (get!23560 lt!2493807)) Nil!67202)) (= lt!2493933 (_1!37236 (get!23560 lt!2493807)))))))

(declare-fun b!6997549 () Bool)

(declare-fun res!2854485 () Bool)

(assert (=> b!6997549 (=> (not res!2854485) (not e!4206043))))

(assert (=> b!6997549 (= res!2854485 (= (size!40927 lt!2493933) (+ (size!40927 (_1!37236 (get!23560 lt!2493807))) (size!40927 (_2!37236 (get!23560 lt!2493807))))))))

(assert (= (and d!2180324 c!1298580) b!6997547))

(assert (= (and d!2180324 (not c!1298580)) b!6997548))

(assert (= (and d!2180324 res!2854484) b!6997549))

(assert (= (and b!6997549 res!2854485) b!6997550))

(declare-fun m!7689968 () Bool)

(assert (=> d!2180324 m!7689968))

(declare-fun m!7689970 () Bool)

(assert (=> d!2180324 m!7689970))

(declare-fun m!7689972 () Bool)

(assert (=> d!2180324 m!7689972))

(declare-fun m!7689974 () Bool)

(assert (=> b!6997548 m!7689974))

(declare-fun m!7689976 () Bool)

(assert (=> b!6997549 m!7689976))

(declare-fun m!7689978 () Bool)

(assert (=> b!6997549 m!7689978))

(declare-fun m!7689980 () Bool)

(assert (=> b!6997549 m!7689980))

(assert (=> b!6996945 d!2180324))

(assert (=> b!6996945 d!2180226))

(assert (=> d!2179936 d!2179872))

(declare-fun d!2180326 () Bool)

(declare-fun res!2854486 () Bool)

(declare-fun e!4206044 () Bool)

(assert (=> d!2180326 (=> res!2854486 e!4206044)))

(assert (=> d!2180326 (= res!2854486 (is-Nil!67201 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306))))))

(assert (=> d!2180326 (= (forall!16170 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)) lambda!404459) e!4206044)))

(declare-fun b!6997551 () Bool)

(declare-fun e!4206045 () Bool)

(assert (=> b!6997551 (= e!4206044 e!4206045)))

(declare-fun res!2854487 () Bool)

(assert (=> b!6997551 (=> (not res!2854487) (not e!4206045))))

(assert (=> b!6997551 (= res!2854487 (dynLambda!26980 lambda!404459 (h!73649 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)))))))

(declare-fun b!6997552 () Bool)

(assert (=> b!6997552 (= e!4206045 (forall!16170 (t!381074 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306))) lambda!404459))))

(assert (= (and d!2180326 (not res!2854486)) b!6997551))

(assert (= (and b!6997551 res!2854487) b!6997552))

(declare-fun b_lambda!263315 () Bool)

(assert (=> (not b_lambda!263315) (not b!6997551)))

(declare-fun m!7689982 () Bool)

(assert (=> b!6997551 m!7689982))

(declare-fun m!7689984 () Bool)

(assert (=> b!6997552 m!7689984))

(assert (=> d!2179888 d!2180326))

(assert (=> d!2179888 d!2179890))

(declare-fun d!2180328 () Bool)

(assert (=> d!2180328 (forall!16170 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)) lambda!404459)))

(assert (=> d!2180328 true))

(declare-fun _$78!504 () Unit!161177)

(assert (=> d!2180328 (= (choose!52409 (exprs!6756 lt!2493587) (exprs!6756 ct2!306) lambda!404459) _$78!504)))

(declare-fun bs!1863656 () Bool)

(assert (= bs!1863656 d!2180328))

(assert (=> bs!1863656 m!7688618))

(assert (=> bs!1863656 m!7688618))

(assert (=> bs!1863656 m!7688910))

(assert (=> d!2179888 d!2180328))

(declare-fun d!2180330 () Bool)

(declare-fun res!2854488 () Bool)

(declare-fun e!4206046 () Bool)

(assert (=> d!2180330 (=> res!2854488 e!4206046)))

(assert (=> d!2180330 (= res!2854488 (is-Nil!67201 (exprs!6756 lt!2493587)))))

(assert (=> d!2180330 (= (forall!16170 (exprs!6756 lt!2493587) lambda!404459) e!4206046)))

(declare-fun b!6997553 () Bool)

(declare-fun e!4206047 () Bool)

(assert (=> b!6997553 (= e!4206046 e!4206047)))

(declare-fun res!2854489 () Bool)

(assert (=> b!6997553 (=> (not res!2854489) (not e!4206047))))

(assert (=> b!6997553 (= res!2854489 (dynLambda!26980 lambda!404459 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997554 () Bool)

(assert (=> b!6997554 (= e!4206047 (forall!16170 (t!381074 (exprs!6756 lt!2493587)) lambda!404459))))

(assert (= (and d!2180330 (not res!2854488)) b!6997553))

(assert (= (and b!6997553 res!2854489) b!6997554))

(declare-fun b_lambda!263317 () Bool)

(assert (=> (not b_lambda!263317) (not b!6997553)))

(declare-fun m!7689986 () Bool)

(assert (=> b!6997553 m!7689986))

(declare-fun m!7689988 () Bool)

(assert (=> b!6997554 m!7689988))

(assert (=> d!2179888 d!2180330))

(declare-fun b!6997555 () Bool)

(declare-fun e!4206049 () (Set Context!12512))

(assert (=> b!6997555 (= e!4206049 (set.insert (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (as set.empty (Set Context!12512))))))

(declare-fun b!6997556 () Bool)

(declare-fun e!4206050 () (Set Context!12512))

(declare-fun call!635261 () (Set Context!12512))

(assert (=> b!6997556 (= e!4206050 call!635261)))

(declare-fun bm!635253 () Bool)

(declare-fun call!635263 () (Set Context!12512))

(declare-fun call!635258 () List!67325)

(declare-fun c!1298582 () Bool)

(assert (=> bm!635253 (= call!635263 (derivationStepZipperDown!1978 (ite c!1298582 (regTwo!35033 (h!73649 (exprs!6756 lt!2493570))) (regOne!35032 (h!73649 (exprs!6756 lt!2493570)))) (ite c!1298582 (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (Context!12513 call!635258)) (h!73650 s!7408)))))

(declare-fun bm!635254 () Bool)

(declare-fun call!635262 () (Set Context!12512))

(declare-fun call!635260 () (Set Context!12512))

(assert (=> bm!635254 (= call!635262 call!635260)))

(declare-fun bm!635255 () Bool)

(assert (=> bm!635255 (= call!635261 call!635262)))

(declare-fun bm!635256 () Bool)

(declare-fun call!635259 () List!67325)

(assert (=> bm!635256 (= call!635259 call!635258)))

(declare-fun b!6997558 () Bool)

(declare-fun e!4206048 () (Set Context!12512))

(assert (=> b!6997558 (= e!4206048 (set.union call!635263 call!635262))))

(declare-fun b!6997559 () Bool)

(declare-fun c!1298581 () Bool)

(declare-fun e!4206051 () Bool)

(assert (=> b!6997559 (= c!1298581 e!4206051)))

(declare-fun res!2854490 () Bool)

(assert (=> b!6997559 (=> (not res!2854490) (not e!4206051))))

(assert (=> b!6997559 (= res!2854490 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun e!4206053 () (Set Context!12512))

(assert (=> b!6997559 (= e!4206053 e!4206048)))

(declare-fun c!1298583 () Bool)

(declare-fun bm!635257 () Bool)

(assert (=> bm!635257 (= call!635258 ($colon$colon!2499 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570)))) (ite (or c!1298581 c!1298583) (regTwo!35032 (h!73649 (exprs!6756 lt!2493570))) (h!73649 (exprs!6756 lt!2493570)))))))

(declare-fun b!6997560 () Bool)

(assert (=> b!6997560 (= e!4206051 (nullable!7020 (regOne!35032 (h!73649 (exprs!6756 lt!2493570)))))))

(declare-fun b!6997557 () Bool)

(declare-fun c!1298585 () Bool)

(assert (=> b!6997557 (= c!1298585 (is-Star!17260 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun e!4206052 () (Set Context!12512))

(assert (=> b!6997557 (= e!4206052 e!4206050)))

(declare-fun d!2180332 () Bool)

(declare-fun c!1298584 () Bool)

(assert (=> d!2180332 (= c!1298584 (and (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493570))) (= (c!1298311 (h!73649 (exprs!6756 lt!2493570))) (h!73650 s!7408))))))

(assert (=> d!2180332 (= (derivationStepZipperDown!1978 (h!73649 (exprs!6756 lt!2493570)) (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (h!73650 s!7408)) e!4206049)))

(declare-fun bm!635258 () Bool)

(assert (=> bm!635258 (= call!635260 (derivationStepZipperDown!1978 (ite c!1298582 (regOne!35033 (h!73649 (exprs!6756 lt!2493570))) (ite c!1298581 (regTwo!35032 (h!73649 (exprs!6756 lt!2493570))) (ite c!1298583 (regOne!35032 (h!73649 (exprs!6756 lt!2493570))) (reg!17589 (h!73649 (exprs!6756 lt!2493570)))))) (ite (or c!1298582 c!1298581) (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (Context!12513 call!635259)) (h!73650 s!7408)))))

(declare-fun b!6997561 () Bool)

(assert (=> b!6997561 (= e!4206052 call!635261)))

(declare-fun b!6997562 () Bool)

(assert (=> b!6997562 (= e!4206053 (set.union call!635260 call!635263))))

(declare-fun b!6997563 () Bool)

(assert (=> b!6997563 (= e!4206048 e!4206052)))

(assert (=> b!6997563 (= c!1298583 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun b!6997564 () Bool)

(assert (=> b!6997564 (= e!4206049 e!4206053)))

(assert (=> b!6997564 (= c!1298582 (is-Union!17260 (h!73649 (exprs!6756 lt!2493570))))))

(declare-fun b!6997565 () Bool)

(assert (=> b!6997565 (= e!4206050 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180332 c!1298584) b!6997555))

(assert (= (and d!2180332 (not c!1298584)) b!6997564))

(assert (= (and b!6997564 c!1298582) b!6997562))

(assert (= (and b!6997564 (not c!1298582)) b!6997559))

(assert (= (and b!6997559 res!2854490) b!6997560))

(assert (= (and b!6997559 c!1298581) b!6997558))

(assert (= (and b!6997559 (not c!1298581)) b!6997563))

(assert (= (and b!6997563 c!1298583) b!6997561))

(assert (= (and b!6997563 (not c!1298583)) b!6997557))

(assert (= (and b!6997557 c!1298585) b!6997556))

(assert (= (and b!6997557 (not c!1298585)) b!6997565))

(assert (= (or b!6997561 b!6997556) bm!635256))

(assert (= (or b!6997561 b!6997556) bm!635255))

(assert (= (or b!6997558 bm!635255) bm!635254))

(assert (= (or b!6997558 bm!635256) bm!635257))

(assert (= (or b!6997562 bm!635254) bm!635258))

(assert (= (or b!6997562 b!6997558) bm!635253))

(declare-fun m!7689990 () Bool)

(assert (=> bm!635257 m!7689990))

(declare-fun m!7689992 () Bool)

(assert (=> bm!635253 m!7689992))

(declare-fun m!7689994 () Bool)

(assert (=> b!6997560 m!7689994))

(declare-fun m!7689996 () Bool)

(assert (=> bm!635258 m!7689996))

(declare-fun m!7689998 () Bool)

(assert (=> b!6997555 m!7689998))

(assert (=> bm!635171 d!2180332))

(declare-fun d!2180334 () Bool)

(assert (=> d!2180334 true))

(declare-fun setRes!48030 () Bool)

(assert (=> d!2180334 setRes!48030))

(declare-fun condSetEmpty!48030 () Bool)

(declare-fun res!2854491 () (Set Context!12512))

(assert (=> d!2180334 (= condSetEmpty!48030 (= res!2854491 (as set.empty (Set Context!12512))))))

(assert (=> d!2180334 (= (choose!52411 lt!2493574 lambda!404460) res!2854491)))

(declare-fun setIsEmpty!48030 () Bool)

(assert (=> setIsEmpty!48030 setRes!48030))

(declare-fun e!4206054 () Bool)

(declare-fun setElem!48030 () Context!12512)

(declare-fun setNonEmpty!48030 () Bool)

(declare-fun tp!1930725 () Bool)

(assert (=> setNonEmpty!48030 (= setRes!48030 (and tp!1930725 (inv!86010 setElem!48030) e!4206054))))

(declare-fun setRest!48030 () (Set Context!12512))

(assert (=> setNonEmpty!48030 (= res!2854491 (set.union (set.insert setElem!48030 (as set.empty (Set Context!12512))) setRest!48030))))

(declare-fun b!6997566 () Bool)

(declare-fun tp!1930726 () Bool)

(assert (=> b!6997566 (= e!4206054 tp!1930726)))

(assert (= (and d!2180334 condSetEmpty!48030) setIsEmpty!48030))

(assert (= (and d!2180334 (not condSetEmpty!48030)) setNonEmpty!48030))

(assert (= setNonEmpty!48030 b!6997566))

(declare-fun m!7690000 () Bool)

(assert (=> setNonEmpty!48030 m!7690000))

(assert (=> d!2179880 d!2180334))

(declare-fun d!2180336 () Bool)

(declare-fun res!2854492 () Bool)

(declare-fun e!4206055 () Bool)

(assert (=> d!2180336 (=> res!2854492 e!4206055)))

(assert (=> d!2180336 (= res!2854492 (is-Nil!67203 lt!2493821))))

(assert (=> d!2180336 (= (noDuplicate!2537 lt!2493821) e!4206055)))

(declare-fun b!6997567 () Bool)

(declare-fun e!4206056 () Bool)

(assert (=> b!6997567 (= e!4206055 e!4206056)))

(declare-fun res!2854493 () Bool)

(assert (=> b!6997567 (=> (not res!2854493) (not e!4206056))))

(assert (=> b!6997567 (= res!2854493 (not (contains!20418 (t!381076 lt!2493821) (h!73651 lt!2493821))))))

(declare-fun b!6997568 () Bool)

(assert (=> b!6997568 (= e!4206056 (noDuplicate!2537 (t!381076 lt!2493821)))))

(assert (= (and d!2180336 (not res!2854492)) b!6997567))

(assert (= (and b!6997567 res!2854493) b!6997568))

(declare-fun m!7690002 () Bool)

(assert (=> b!6997567 m!7690002))

(declare-fun m!7690004 () Bool)

(assert (=> b!6997568 m!7690004))

(assert (=> d!2179980 d!2180336))

(declare-fun d!2180338 () Bool)

(declare-fun e!4206059 () Bool)

(assert (=> d!2180338 e!4206059))

(declare-fun res!2854494 () Bool)

(assert (=> d!2180338 (=> (not res!2854494) (not e!4206059))))

(declare-fun res!2854495 () List!67327)

(assert (=> d!2180338 (= res!2854494 (noDuplicate!2537 res!2854495))))

(declare-fun e!4206058 () Bool)

(assert (=> d!2180338 e!4206058))

(assert (=> d!2180338 (= (choose!52414 lt!2493564) res!2854495)))

(declare-fun b!6997570 () Bool)

(declare-fun e!4206057 () Bool)

(declare-fun tp!1930728 () Bool)

(assert (=> b!6997570 (= e!4206057 tp!1930728)))

(declare-fun tp!1930727 () Bool)

(declare-fun b!6997569 () Bool)

(assert (=> b!6997569 (= e!4206058 (and (inv!86010 (h!73651 res!2854495)) e!4206057 tp!1930727))))

(declare-fun b!6997571 () Bool)

(assert (=> b!6997571 (= e!4206059 (= (content!13296 res!2854495) lt!2493564))))

(assert (= b!6997569 b!6997570))

(assert (= (and d!2180338 (is-Cons!67203 res!2854495)) b!6997569))

(assert (= (and d!2180338 res!2854494) b!6997571))

(declare-fun m!7690006 () Bool)

(assert (=> d!2180338 m!7690006))

(declare-fun m!7690008 () Bool)

(assert (=> b!6997569 m!7690008))

(declare-fun m!7690010 () Bool)

(assert (=> b!6997571 m!7690010))

(assert (=> d!2179980 d!2180338))

(declare-fun b!6997572 () Bool)

(declare-fun e!4206061 () List!67325)

(assert (=> b!6997572 (= e!4206061 (exprs!6756 ct2!306))))

(declare-fun b!6997574 () Bool)

(declare-fun res!2854496 () Bool)

(declare-fun e!4206060 () Bool)

(assert (=> b!6997574 (=> (not res!2854496) (not e!4206060))))

(declare-fun lt!2493934 () List!67325)

(assert (=> b!6997574 (= res!2854496 (= (size!40926 lt!2493934) (+ (size!40926 (t!381074 (exprs!6756 lt!2493587))) (size!40926 (exprs!6756 ct2!306)))))))

(declare-fun d!2180340 () Bool)

(assert (=> d!2180340 e!4206060))

(declare-fun res!2854497 () Bool)

(assert (=> d!2180340 (=> (not res!2854497) (not e!4206060))))

(assert (=> d!2180340 (= res!2854497 (= (content!13295 lt!2493934) (set.union (content!13295 (t!381074 (exprs!6756 lt!2493587))) (content!13295 (exprs!6756 ct2!306)))))))

(assert (=> d!2180340 (= lt!2493934 e!4206061)))

(declare-fun c!1298586 () Bool)

(assert (=> d!2180340 (= c!1298586 (is-Nil!67201 (t!381074 (exprs!6756 lt!2493587))))))

(assert (=> d!2180340 (= (++!15221 (t!381074 (exprs!6756 lt!2493587)) (exprs!6756 ct2!306)) lt!2493934)))

(declare-fun b!6997575 () Bool)

(assert (=> b!6997575 (= e!4206060 (or (not (= (exprs!6756 ct2!306) Nil!67201)) (= lt!2493934 (t!381074 (exprs!6756 lt!2493587)))))))

(declare-fun b!6997573 () Bool)

(assert (=> b!6997573 (= e!4206061 (Cons!67201 (h!73649 (t!381074 (exprs!6756 lt!2493587))) (++!15221 (t!381074 (t!381074 (exprs!6756 lt!2493587))) (exprs!6756 ct2!306))))))

(assert (= (and d!2180340 c!1298586) b!6997572))

(assert (= (and d!2180340 (not c!1298586)) b!6997573))

(assert (= (and d!2180340 res!2854497) b!6997574))

(assert (= (and b!6997574 res!2854496) b!6997575))

(declare-fun m!7690012 () Bool)

(assert (=> b!6997574 m!7690012))

(declare-fun m!7690014 () Bool)

(assert (=> b!6997574 m!7690014))

(assert (=> b!6997574 m!7688920))

(declare-fun m!7690016 () Bool)

(assert (=> d!2180340 m!7690016))

(declare-fun m!7690018 () Bool)

(assert (=> d!2180340 m!7690018))

(assert (=> d!2180340 m!7688926))

(declare-fun m!7690020 () Bool)

(assert (=> b!6997573 m!7690020))

(assert (=> b!6996883 d!2180340))

(declare-fun d!2180342 () Bool)

(assert (=> d!2180342 (= (isEmpty!39229 lt!2493579) (not (is-Some!16764 lt!2493579)))))

(assert (=> d!2179932 d!2180342))

(declare-fun d!2180344 () Bool)

(declare-fun c!1298587 () Bool)

(assert (=> d!2180344 (= c!1298587 (isEmpty!39226 (tail!13290 (t!381075 s!7408))))))

(declare-fun e!4206062 () Bool)

(assert (=> d!2180344 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493546 (head!14132 (t!381075 s!7408))) (tail!13290 (t!381075 s!7408))) e!4206062)))

(declare-fun b!6997576 () Bool)

(assert (=> b!6997576 (= e!4206062 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493546 (head!14132 (t!381075 s!7408)))))))

(declare-fun b!6997577 () Bool)

(assert (=> b!6997577 (= e!4206062 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493546 (head!14132 (t!381075 s!7408))) (head!14132 (tail!13290 (t!381075 s!7408)))) (tail!13290 (tail!13290 (t!381075 s!7408)))))))

(assert (= (and d!2180344 c!1298587) b!6997576))

(assert (= (and d!2180344 (not c!1298587)) b!6997577))

(assert (=> d!2180344 m!7689074))

(assert (=> d!2180344 m!7689692))

(assert (=> b!6997576 m!7689096))

(declare-fun m!7690022 () Bool)

(assert (=> b!6997576 m!7690022))

(assert (=> b!6997577 m!7689074))

(assert (=> b!6997577 m!7689696))

(assert (=> b!6997577 m!7689096))

(assert (=> b!6997577 m!7689696))

(declare-fun m!7690024 () Bool)

(assert (=> b!6997577 m!7690024))

(assert (=> b!6997577 m!7689074))

(assert (=> b!6997577 m!7689700))

(assert (=> b!6997577 m!7690024))

(assert (=> b!6997577 m!7689700))

(declare-fun m!7690026 () Bool)

(assert (=> b!6997577 m!7690026))

(assert (=> b!6996988 d!2180344))

(declare-fun bs!1863657 () Bool)

(declare-fun d!2180346 () Bool)

(assert (= bs!1863657 (and d!2180346 d!2180210)))

(declare-fun lambda!404584 () Int)

(assert (=> bs!1863657 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404584 lambda!404572))))

(declare-fun bs!1863658 () Bool)

(assert (= bs!1863658 (and d!2180346 d!2180256)))

(assert (=> bs!1863658 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404584 lambda!404576))))

(declare-fun bs!1863659 () Bool)

(assert (= bs!1863659 (and d!2180346 d!2180220)))

(assert (=> bs!1863659 (= (= (head!14132 (t!381075 s!7408)) (head!14132 s!7408)) (= lambda!404584 lambda!404573))))

(declare-fun bs!1863660 () Bool)

(assert (= bs!1863660 (and d!2180346 d!2179882)))

(assert (=> bs!1863660 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404584 lambda!404525))))

(declare-fun bs!1863661 () Bool)

(assert (= bs!1863661 (and d!2180346 d!2179964)))

(assert (=> bs!1863661 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404584 lambda!404535))))

(declare-fun bs!1863662 () Bool)

(assert (= bs!1863662 (and d!2180346 d!2180230)))

(assert (=> bs!1863662 (= lambda!404584 lambda!404574)))

(declare-fun bs!1863663 () Bool)

(assert (= bs!1863663 (and d!2180346 d!2180284)))

(assert (=> bs!1863663 (= lambda!404584 lambda!404578)))

(declare-fun bs!1863664 () Bool)

(assert (= bs!1863664 (and d!2180346 d!2180192)))

(assert (=> bs!1863664 (= lambda!404584 lambda!404570)))

(declare-fun bs!1863665 () Bool)

(assert (= bs!1863665 (and d!2180346 b!6996719)))

(assert (=> bs!1863665 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404584 lambda!404460))))

(declare-fun bs!1863666 () Bool)

(assert (= bs!1863666 (and d!2180346 d!2179894)))

(assert (=> bs!1863666 (= (= (head!14132 (t!381075 s!7408)) (h!73650 s!7408)) (= lambda!404584 lambda!404526))))

(assert (=> d!2180346 true))

(assert (=> d!2180346 (= (derivationStepZipper!2740 lt!2493546 (head!14132 (t!381075 s!7408))) (flatMap!2246 lt!2493546 lambda!404584))))

(declare-fun bs!1863667 () Bool)

(assert (= bs!1863667 d!2180346))

(declare-fun m!7690028 () Bool)

(assert (=> bs!1863667 m!7690028))

(assert (=> b!6996988 d!2180346))

(assert (=> b!6996988 d!2180194))

(assert (=> b!6996988 d!2180196))

(declare-fun d!2180348 () Bool)

(declare-fun c!1298588 () Bool)

(assert (=> d!2180348 (= c!1298588 (isEmpty!39226 (tail!13290 (_1!37236 lt!2493566))))))

(declare-fun e!4206063 () Bool)

(assert (=> d!2180348 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 lt!2493566))) (tail!13290 (_1!37236 lt!2493566))) e!4206063)))

(declare-fun b!6997578 () Bool)

(assert (=> b!6997578 (= e!4206063 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 lt!2493566)))))))

(declare-fun b!6997579 () Bool)

(assert (=> b!6997579 (= e!4206063 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 lt!2493566))) (head!14132 (tail!13290 (_1!37236 lt!2493566)))) (tail!13290 (tail!13290 (_1!37236 lt!2493566)))))))

(assert (= (and d!2180348 c!1298588) b!6997578))

(assert (= (and d!2180348 (not c!1298588)) b!6997579))

(assert (=> d!2180348 m!7689056))

(declare-fun m!7690030 () Bool)

(assert (=> d!2180348 m!7690030))

(assert (=> b!6997578 m!7689054))

(declare-fun m!7690032 () Bool)

(assert (=> b!6997578 m!7690032))

(assert (=> b!6997579 m!7689056))

(declare-fun m!7690034 () Bool)

(assert (=> b!6997579 m!7690034))

(assert (=> b!6997579 m!7689054))

(assert (=> b!6997579 m!7690034))

(declare-fun m!7690036 () Bool)

(assert (=> b!6997579 m!7690036))

(assert (=> b!6997579 m!7689056))

(declare-fun m!7690038 () Bool)

(assert (=> b!6997579 m!7690038))

(assert (=> b!6997579 m!7690036))

(assert (=> b!6997579 m!7690038))

(declare-fun m!7690040 () Bool)

(assert (=> b!6997579 m!7690040))

(assert (=> b!6996950 d!2180348))

(declare-fun bs!1863668 () Bool)

(declare-fun d!2180350 () Bool)

(assert (= bs!1863668 (and d!2180350 d!2180210)))

(declare-fun lambda!404585 () Int)

(assert (=> bs!1863668 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404585 lambda!404572))))

(declare-fun bs!1863669 () Bool)

(assert (= bs!1863669 (and d!2180350 d!2180256)))

(assert (=> bs!1863669 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404585 lambda!404576))))

(declare-fun bs!1863670 () Bool)

(assert (= bs!1863670 (and d!2180350 d!2180220)))

(assert (=> bs!1863670 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404585 lambda!404573))))

(declare-fun bs!1863671 () Bool)

(assert (= bs!1863671 (and d!2180350 d!2179964)))

(assert (=> bs!1863671 (= (= (head!14132 (_1!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404585 lambda!404535))))

(declare-fun bs!1863672 () Bool)

(assert (= bs!1863672 (and d!2180350 d!2180230)))

(assert (=> bs!1863672 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404585 lambda!404574))))

(declare-fun bs!1863673 () Bool)

(assert (= bs!1863673 (and d!2180350 d!2180284)))

(assert (=> bs!1863673 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404585 lambda!404578))))

(declare-fun bs!1863674 () Bool)

(assert (= bs!1863674 (and d!2180350 d!2180192)))

(assert (=> bs!1863674 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404585 lambda!404570))))

(declare-fun bs!1863675 () Bool)

(assert (= bs!1863675 (and d!2180350 b!6996719)))

(assert (=> bs!1863675 (= (= (head!14132 (_1!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404585 lambda!404460))))

(declare-fun bs!1863676 () Bool)

(assert (= bs!1863676 (and d!2180350 d!2179894)))

(assert (=> bs!1863676 (= (= (head!14132 (_1!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404585 lambda!404526))))

(declare-fun bs!1863677 () Bool)

(assert (= bs!1863677 (and d!2180350 d!2179882)))

(assert (=> bs!1863677 (= (= (head!14132 (_1!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404585 lambda!404525))))

(declare-fun bs!1863678 () Bool)

(assert (= bs!1863678 (and d!2180350 d!2180346)))

(assert (=> bs!1863678 (= (= (head!14132 (_1!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404585 lambda!404584))))

(assert (=> d!2180350 true))

(assert (=> d!2180350 (= (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 lt!2493566))) (flatMap!2246 lt!2493576 lambda!404585))))

(declare-fun bs!1863679 () Bool)

(assert (= bs!1863679 d!2180350))

(declare-fun m!7690042 () Bool)

(assert (=> bs!1863679 m!7690042))

(assert (=> b!6996950 d!2180350))

(declare-fun d!2180352 () Bool)

(assert (=> d!2180352 (= (head!14132 (_1!37236 lt!2493566)) (h!73650 (_1!37236 lt!2493566)))))

(assert (=> b!6996950 d!2180352))

(declare-fun d!2180354 () Bool)

(assert (=> d!2180354 (= (tail!13290 (_1!37236 lt!2493566)) (t!381075 (_1!37236 lt!2493566)))))

(assert (=> b!6996950 d!2180354))

(assert (=> bs!1863455 d!2179970))

(declare-fun b!6997580 () Bool)

(declare-fun e!4206064 () Bool)

(declare-fun call!635264 () Bool)

(assert (=> b!6997580 (= e!4206064 call!635264)))

(declare-fun b!6997581 () Bool)

(declare-fun e!4206065 () Bool)

(declare-fun e!4206069 () Bool)

(assert (=> b!6997581 (= e!4206065 e!4206069)))

(declare-fun c!1298590 () Bool)

(assert (=> b!6997581 (= c!1298590 (is-Union!17260 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997582 () Bool)

(declare-fun e!4206070 () Bool)

(assert (=> b!6997582 (= e!4206070 call!635264)))

(declare-fun d!2180356 () Bool)

(declare-fun res!2854499 () Bool)

(declare-fun e!4206066 () Bool)

(assert (=> d!2180356 (=> res!2854499 e!4206066)))

(assert (=> d!2180356 (= res!2854499 (is-ElementMatch!17260 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(assert (=> d!2180356 (= (validRegex!8870 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) e!4206066)))

(declare-fun bm!635259 () Bool)

(declare-fun call!635265 () Bool)

(assert (=> bm!635259 (= call!635264 call!635265)))

(declare-fun bm!635260 () Bool)

(declare-fun call!635266 () Bool)

(assert (=> bm!635260 (= call!635266 (validRegex!8870 (ite c!1298590 (regOne!35033 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (regOne!35032 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun b!6997583 () Bool)

(declare-fun e!4206067 () Bool)

(assert (=> b!6997583 (= e!4206067 e!4206064)))

(declare-fun res!2854501 () Bool)

(assert (=> b!6997583 (=> (not res!2854501) (not e!4206064))))

(assert (=> b!6997583 (= res!2854501 call!635266)))

(declare-fun b!6997584 () Bool)

(declare-fun res!2854502 () Bool)

(assert (=> b!6997584 (=> res!2854502 e!4206067)))

(assert (=> b!6997584 (= res!2854502 (not (is-Concat!26105 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(assert (=> b!6997584 (= e!4206069 e!4206067)))

(declare-fun b!6997585 () Bool)

(assert (=> b!6997585 (= e!4206066 e!4206065)))

(declare-fun c!1298589 () Bool)

(assert (=> b!6997585 (= c!1298589 (is-Star!17260 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997586 () Bool)

(declare-fun res!2854498 () Bool)

(assert (=> b!6997586 (=> (not res!2854498) (not e!4206070))))

(assert (=> b!6997586 (= res!2854498 call!635266)))

(assert (=> b!6997586 (= e!4206069 e!4206070)))

(declare-fun b!6997587 () Bool)

(declare-fun e!4206068 () Bool)

(assert (=> b!6997587 (= e!4206065 e!4206068)))

(declare-fun res!2854500 () Bool)

(assert (=> b!6997587 (= res!2854500 (not (nullable!7020 (reg!17589 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))))

(assert (=> b!6997587 (=> (not res!2854500) (not e!4206068))))

(declare-fun b!6997588 () Bool)

(assert (=> b!6997588 (= e!4206068 call!635265)))

(declare-fun bm!635261 () Bool)

(assert (=> bm!635261 (= call!635265 (validRegex!8870 (ite c!1298589 (reg!17589 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298590 (regTwo!35033 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (regTwo!35032 (ite c!1298385 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))))

(assert (= (and d!2180356 (not res!2854499)) b!6997585))

(assert (= (and b!6997585 c!1298589) b!6997587))

(assert (= (and b!6997585 (not c!1298589)) b!6997581))

(assert (= (and b!6997587 res!2854500) b!6997588))

(assert (= (and b!6997581 c!1298590) b!6997586))

(assert (= (and b!6997581 (not c!1298590)) b!6997584))

(assert (= (and b!6997586 res!2854498) b!6997582))

(assert (= (and b!6997584 (not res!2854502)) b!6997583))

(assert (= (and b!6997583 res!2854501) b!6997580))

(assert (= (or b!6997582 b!6997580) bm!635259))

(assert (= (or b!6997586 b!6997583) bm!635260))

(assert (= (or b!6997588 bm!635259) bm!635261))

(declare-fun m!7690044 () Bool)

(assert (=> bm!635260 m!7690044))

(declare-fun m!7690046 () Bool)

(assert (=> b!6997587 m!7690046))

(declare-fun m!7690048 () Bool)

(assert (=> bm!635261 m!7690048))

(assert (=> bm!635163 d!2180356))

(assert (=> d!2179950 d!2180160))

(declare-fun d!2180358 () Bool)

(declare-fun c!1298591 () Bool)

(assert (=> d!2180358 (= c!1298591 (is-Nil!67203 lt!2493821))))

(declare-fun e!4206071 () (Set Context!12512))

(assert (=> d!2180358 (= (content!13296 lt!2493821) e!4206071)))

(declare-fun b!6997589 () Bool)

(assert (=> b!6997589 (= e!4206071 (as set.empty (Set Context!12512)))))

(declare-fun b!6997590 () Bool)

(assert (=> b!6997590 (= e!4206071 (set.union (set.insert (h!73651 lt!2493821) (as set.empty (Set Context!12512))) (content!13296 (t!381076 lt!2493821))))))

(assert (= (and d!2180358 c!1298591) b!6997589))

(assert (= (and d!2180358 (not c!1298591)) b!6997590))

(declare-fun m!7690050 () Bool)

(assert (=> b!6997590 m!7690050))

(declare-fun m!7690052 () Bool)

(assert (=> b!6997590 m!7690052))

(assert (=> b!6997018 d!2180358))

(declare-fun e!4206073 () (Set Context!12512))

(declare-fun b!6997591 () Bool)

(assert (=> b!6997591 (= e!4206073 (set.insert (ite c!1298394 lt!2493586 (Context!12513 call!635170)) (as set.empty (Set Context!12512))))))

(declare-fun b!6997592 () Bool)

(declare-fun e!4206074 () (Set Context!12512))

(declare-fun call!635270 () (Set Context!12512))

(assert (=> b!6997592 (= e!4206074 call!635270)))

(declare-fun call!635267 () List!67325)

(declare-fun call!635272 () (Set Context!12512))

(declare-fun c!1298593 () Bool)

(declare-fun bm!635262 () Bool)

(assert (=> bm!635262 (= call!635272 (derivationStepZipperDown!1978 (ite c!1298593 (regTwo!35033 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (regOne!35032 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))) (ite c!1298593 (ite c!1298394 lt!2493586 (Context!12513 call!635170)) (Context!12513 call!635267)) (h!73650 s!7408)))))

(declare-fun bm!635263 () Bool)

(declare-fun call!635271 () (Set Context!12512))

(declare-fun call!635269 () (Set Context!12512))

(assert (=> bm!635263 (= call!635271 call!635269)))

(declare-fun bm!635264 () Bool)

(assert (=> bm!635264 (= call!635270 call!635271)))

(declare-fun bm!635265 () Bool)

(declare-fun call!635268 () List!67325)

(assert (=> bm!635265 (= call!635268 call!635267)))

(declare-fun b!6997594 () Bool)

(declare-fun e!4206072 () (Set Context!12512))

(assert (=> b!6997594 (= e!4206072 (set.union call!635272 call!635271))))

(declare-fun b!6997595 () Bool)

(declare-fun c!1298592 () Bool)

(declare-fun e!4206075 () Bool)

(assert (=> b!6997595 (= c!1298592 e!4206075)))

(declare-fun res!2854503 () Bool)

(assert (=> b!6997595 (=> (not res!2854503) (not e!4206075))))

(assert (=> b!6997595 (= res!2854503 (is-Concat!26105 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun e!4206077 () (Set Context!12512))

(assert (=> b!6997595 (= e!4206077 e!4206072)))

(declare-fun bm!635266 () Bool)

(declare-fun c!1298594 () Bool)

(assert (=> bm!635266 (= call!635267 ($colon$colon!2499 (exprs!6756 (ite c!1298394 lt!2493586 (Context!12513 call!635170))) (ite (or c!1298592 c!1298594) (regTwo!35032 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997596 () Bool)

(assert (=> b!6997596 (= e!4206075 (nullable!7020 (regOne!35032 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997593 () Bool)

(declare-fun c!1298596 () Bool)

(assert (=> b!6997593 (= c!1298596 (is-Star!17260 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun e!4206076 () (Set Context!12512))

(assert (=> b!6997593 (= e!4206076 e!4206074)))

(declare-fun c!1298595 () Bool)

(declare-fun d!2180360 () Bool)

(assert (=> d!2180360 (= c!1298595 (and (is-ElementMatch!17260 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (= (c!1298311 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (h!73650 s!7408))))))

(assert (=> d!2180360 (= (derivationStepZipperDown!1978 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))) (ite c!1298394 lt!2493586 (Context!12513 call!635170)) (h!73650 s!7408)) e!4206073)))

(declare-fun bm!635267 () Bool)

(assert (=> bm!635267 (= call!635269 (derivationStepZipperDown!1978 (ite c!1298593 (regOne!35033 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298592 (regTwo!35032 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (ite c!1298594 (regOne!35032 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))) (reg!17589 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587)))))))) (ite (or c!1298593 c!1298592) (ite c!1298394 lt!2493586 (Context!12513 call!635170)) (Context!12513 call!635268)) (h!73650 s!7408)))))

(declare-fun b!6997597 () Bool)

(assert (=> b!6997597 (= e!4206076 call!635270)))

(declare-fun b!6997598 () Bool)

(assert (=> b!6997598 (= e!4206077 (set.union call!635269 call!635272))))

(declare-fun b!6997599 () Bool)

(assert (=> b!6997599 (= e!4206072 e!4206076)))

(assert (=> b!6997599 (= c!1298594 (is-Concat!26105 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997600 () Bool)

(assert (=> b!6997600 (= e!4206073 e!4206077)))

(assert (=> b!6997600 (= c!1298593 (is-Union!17260 (ite c!1298394 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997601 () Bool)

(assert (=> b!6997601 (= e!4206074 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180360 c!1298595) b!6997591))

(assert (= (and d!2180360 (not c!1298595)) b!6997600))

(assert (= (and b!6997600 c!1298593) b!6997598))

(assert (= (and b!6997600 (not c!1298593)) b!6997595))

(assert (= (and b!6997595 res!2854503) b!6997596))

(assert (= (and b!6997595 c!1298592) b!6997594))

(assert (= (and b!6997595 (not c!1298592)) b!6997599))

(assert (= (and b!6997599 c!1298594) b!6997597))

(assert (= (and b!6997599 (not c!1298594)) b!6997593))

(assert (= (and b!6997593 c!1298596) b!6997592))

(assert (= (and b!6997593 (not c!1298596)) b!6997601))

(assert (= (or b!6997597 b!6997592) bm!635265))

(assert (= (or b!6997597 b!6997592) bm!635264))

(assert (= (or b!6997594 bm!635264) bm!635263))

(assert (= (or b!6997594 bm!635265) bm!635266))

(assert (= (or b!6997598 bm!635263) bm!635267))

(assert (= (or b!6997598 b!6997594) bm!635262))

(declare-fun m!7690054 () Bool)

(assert (=> bm!635266 m!7690054))

(declare-fun m!7690056 () Bool)

(assert (=> bm!635262 m!7690056))

(declare-fun m!7690058 () Bool)

(assert (=> b!6997596 m!7690058))

(declare-fun m!7690060 () Bool)

(assert (=> bm!635267 m!7690060))

(declare-fun m!7690062 () Bool)

(assert (=> b!6997591 m!7690062))

(assert (=> bm!635165 d!2180360))

(declare-fun d!2180362 () Bool)

(assert (=> d!2180362 (= ($colon$colon!2499 (exprs!6756 lt!2493561) (ite (or c!1298347 c!1298349) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587)))) (Cons!67201 (ite (or c!1298347 c!1298349) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587))) (exprs!6756 lt!2493561)))))

(assert (=> bm!635152 d!2180362))

(declare-fun b!6997602 () Bool)

(declare-fun e!4206081 () Int)

(declare-fun call!635274 () Int)

(assert (=> b!6997602 (= e!4206081 (+ 1 call!635274))))

(declare-fun b!6997603 () Bool)

(declare-fun e!4206080 () Int)

(declare-fun e!4206078 () Int)

(assert (=> b!6997603 (= e!4206080 e!4206078)))

(declare-fun c!1298598 () Bool)

(assert (=> b!6997603 (= c!1298598 (is-Concat!26105 (h!73649 (exprs!6756 lt!2493561))))))

(declare-fun d!2180364 () Bool)

(declare-fun lt!2493935 () Int)

(assert (=> d!2180364 (> lt!2493935 0)))

(declare-fun e!4206079 () Int)

(assert (=> d!2180364 (= lt!2493935 e!4206079)))

(declare-fun c!1298597 () Bool)

(assert (=> d!2180364 (= c!1298597 (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493561))))))

(assert (=> d!2180364 (= (regexDepthTotal!276 (h!73649 (exprs!6756 lt!2493561))) lt!2493935)))

(declare-fun bm!635268 () Bool)

(declare-fun call!635275 () Int)

(declare-fun c!1298599 () Bool)

(assert (=> bm!635268 (= call!635275 (regexDepthTotal!276 (ite c!1298599 (regOne!35033 (h!73649 (exprs!6756 lt!2493561))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493561))))))))

(declare-fun bm!635269 () Bool)

(declare-fun c!1298600 () Bool)

(assert (=> bm!635269 (= call!635274 (regexDepthTotal!276 (ite c!1298600 (reg!17589 (h!73649 (exprs!6756 lt!2493561))) (ite c!1298599 (regTwo!35033 (h!73649 (exprs!6756 lt!2493561))) (regOne!35032 (h!73649 (exprs!6756 lt!2493561)))))))))

(declare-fun b!6997604 () Bool)

(assert (=> b!6997604 (= c!1298599 (is-Union!17260 (h!73649 (exprs!6756 lt!2493561))))))

(assert (=> b!6997604 (= e!4206081 e!4206080)))

(declare-fun bm!635270 () Bool)

(declare-fun call!635273 () Int)

(assert (=> bm!635270 (= call!635273 call!635274)))

(declare-fun b!6997605 () Bool)

(assert (=> b!6997605 (= e!4206079 1)))

(declare-fun b!6997606 () Bool)

(assert (=> b!6997606 (= e!4206078 1)))

(declare-fun b!6997607 () Bool)

(assert (=> b!6997607 (= e!4206078 (+ 1 call!635273 call!635275))))

(declare-fun b!6997608 () Bool)

(assert (=> b!6997608 (= e!4206080 (+ 1 call!635275 call!635273))))

(declare-fun b!6997609 () Bool)

(assert (=> b!6997609 (= e!4206079 e!4206081)))

(assert (=> b!6997609 (= c!1298600 (is-Star!17260 (h!73649 (exprs!6756 lt!2493561))))))

(assert (= (and d!2180364 c!1298597) b!6997605))

(assert (= (and d!2180364 (not c!1298597)) b!6997609))

(assert (= (and b!6997609 c!1298600) b!6997602))

(assert (= (and b!6997609 (not c!1298600)) b!6997604))

(assert (= (and b!6997604 c!1298599) b!6997608))

(assert (= (and b!6997604 (not c!1298599)) b!6997603))

(assert (= (and b!6997603 c!1298598) b!6997607))

(assert (= (and b!6997603 (not c!1298598)) b!6997606))

(assert (= (or b!6997608 b!6997607) bm!635270))

(assert (= (or b!6997608 b!6997607) bm!635268))

(assert (= (or b!6997602 bm!635270) bm!635269))

(declare-fun m!7690064 () Bool)

(assert (=> bm!635268 m!7690064))

(declare-fun m!7690066 () Bool)

(assert (=> bm!635269 m!7690066))

(assert (=> b!6996906 d!2180364))

(declare-fun d!2180366 () Bool)

(declare-fun lt!2493936 () Int)

(assert (=> d!2180366 (>= lt!2493936 0)))

(declare-fun e!4206082 () Int)

(assert (=> d!2180366 (= lt!2493936 e!4206082)))

(declare-fun c!1298601 () Bool)

(assert (=> d!2180366 (= c!1298601 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561))))))))

(assert (=> d!2180366 (= (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))) lt!2493936)))

(declare-fun b!6997610 () Bool)

(assert (=> b!6997610 (= e!4206082 (+ (regexDepthTotal!276 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))))) (contextDepthTotal!453 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))))))))))

(declare-fun b!6997611 () Bool)

(assert (=> b!6997611 (= e!4206082 1)))

(assert (= (and d!2180366 c!1298601) b!6997610))

(assert (= (and d!2180366 (not c!1298601)) b!6997611))

(declare-fun m!7690068 () Bool)

(assert (=> b!6997610 m!7690068))

(declare-fun m!7690070 () Bool)

(assert (=> b!6997610 m!7690070))

(assert (=> b!6996906 d!2180366))

(assert (=> d!2179878 d!2179880))

(declare-fun d!2180368 () Bool)

(assert (=> d!2180368 (= (flatMap!2246 lt!2493574 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493586))))

(assert (=> d!2180368 true))

(declare-fun _$13!4390 () Unit!161177)

(assert (=> d!2180368 (= (choose!52410 lt!2493574 lt!2493586 lambda!404460) _$13!4390)))

(declare-fun b_lambda!263319 () Bool)

(assert (=> (not b_lambda!263319) (not d!2180368)))

(declare-fun bs!1863680 () Bool)

(assert (= bs!1863680 d!2180368))

(assert (=> bs!1863680 m!7688700))

(assert (=> bs!1863680 m!7688888))

(assert (=> d!2179878 d!2180368))

(declare-fun d!2180370 () Bool)

(declare-fun lt!2493939 () Int)

(assert (=> d!2180370 (>= lt!2493939 0)))

(declare-fun e!4206085 () Int)

(assert (=> d!2180370 (= lt!2493939 e!4206085)))

(declare-fun c!1298604 () Bool)

(assert (=> d!2180370 (= c!1298604 (is-Nil!67201 lt!2493778))))

(assert (=> d!2180370 (= (size!40926 lt!2493778) lt!2493939)))

(declare-fun b!6997616 () Bool)

(assert (=> b!6997616 (= e!4206085 0)))

(declare-fun b!6997617 () Bool)

(assert (=> b!6997617 (= e!4206085 (+ 1 (size!40926 (t!381074 lt!2493778))))))

(assert (= (and d!2180370 c!1298604) b!6997616))

(assert (= (and d!2180370 (not c!1298604)) b!6997617))

(declare-fun m!7690072 () Bool)

(assert (=> b!6997617 m!7690072))

(assert (=> b!6996897 d!2180370))

(declare-fun d!2180372 () Bool)

(declare-fun lt!2493940 () Int)

(assert (=> d!2180372 (>= lt!2493940 0)))

(declare-fun e!4206086 () Int)

(assert (=> d!2180372 (= lt!2493940 e!4206086)))

(declare-fun c!1298605 () Bool)

(assert (=> d!2180372 (= c!1298605 (is-Nil!67201 lt!2493545))))

(assert (=> d!2180372 (= (size!40926 lt!2493545) lt!2493940)))

(declare-fun b!6997618 () Bool)

(assert (=> b!6997618 (= e!4206086 0)))

(declare-fun b!6997619 () Bool)

(assert (=> b!6997619 (= e!4206086 (+ 1 (size!40926 (t!381074 lt!2493545))))))

(assert (= (and d!2180372 c!1298605) b!6997618))

(assert (= (and d!2180372 (not c!1298605)) b!6997619))

(assert (=> b!6997619 m!7689834))

(assert (=> b!6996897 d!2180372))

(declare-fun d!2180374 () Bool)

(declare-fun lt!2493941 () Int)

(assert (=> d!2180374 (>= lt!2493941 0)))

(declare-fun e!4206087 () Int)

(assert (=> d!2180374 (= lt!2493941 e!4206087)))

(declare-fun c!1298606 () Bool)

(assert (=> d!2180374 (= c!1298606 (is-Nil!67201 (exprs!6756 ct2!306)))))

(assert (=> d!2180374 (= (size!40926 (exprs!6756 ct2!306)) lt!2493941)))

(declare-fun b!6997620 () Bool)

(assert (=> b!6997620 (= e!4206087 0)))

(declare-fun b!6997621 () Bool)

(assert (=> b!6997621 (= e!4206087 (+ 1 (size!40926 (t!381074 (exprs!6756 ct2!306)))))))

(assert (= (and d!2180374 c!1298606) b!6997620))

(assert (= (and d!2180374 (not c!1298606)) b!6997621))

(declare-fun m!7690074 () Bool)

(assert (=> b!6997621 m!7690074))

(assert (=> b!6996897 d!2180374))

(declare-fun b!6997622 () Bool)

(declare-fun e!4206090 () Bool)

(assert (=> b!6997622 (= e!4206090 (nullable!7020 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))))))))

(declare-fun b!6997623 () Bool)

(declare-fun e!4206089 () (Set Context!12512))

(declare-fun e!4206088 () (Set Context!12512))

(assert (=> b!6997623 (= e!4206089 e!4206088)))

(declare-fun c!1298607 () Bool)

(assert (=> b!6997623 (= c!1298607 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587))))))))

(declare-fun d!2180376 () Bool)

(declare-fun c!1298608 () Bool)

(assert (=> d!2180376 (= c!1298608 e!4206090)))

(declare-fun res!2854504 () Bool)

(assert (=> d!2180376 (=> (not res!2854504) (not e!4206090))))

(assert (=> d!2180376 (= res!2854504 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587))))))))

(assert (=> d!2180376 (= (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493587))) (h!73650 s!7408)) e!4206089)))

(declare-fun call!635276 () (Set Context!12512))

(declare-fun b!6997624 () Bool)

(assert (=> b!6997624 (= e!4206089 (set.union call!635276 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))))) (h!73650 s!7408))))))

(declare-fun b!6997625 () Bool)

(assert (=> b!6997625 (= e!4206088 call!635276)))

(declare-fun b!6997626 () Bool)

(assert (=> b!6997626 (= e!4206088 (as set.empty (Set Context!12512)))))

(declare-fun bm!635271 () Bool)

(assert (=> bm!635271 (= call!635276 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587))))) (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493587)))))) (h!73650 s!7408)))))

(assert (= (and d!2180376 res!2854504) b!6997622))

(assert (= (and d!2180376 c!1298608) b!6997624))

(assert (= (and d!2180376 (not c!1298608)) b!6997623))

(assert (= (and b!6997623 c!1298607) b!6997625))

(assert (= (and b!6997623 (not c!1298607)) b!6997626))

(assert (= (or b!6997624 b!6997625) bm!635271))

(declare-fun m!7690076 () Bool)

(assert (=> b!6997622 m!7690076))

(declare-fun m!7690078 () Bool)

(assert (=> b!6997624 m!7690078))

(declare-fun m!7690080 () Bool)

(assert (=> bm!635271 m!7690080))

(assert (=> b!6996892 d!2180376))

(declare-fun d!2180378 () Bool)

(assert (=> d!2180378 (= ($colon$colon!2499 (exprs!6756 lt!2493586) (ite (or c!1298393 c!1298395) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587)))) (Cons!67201 (ite (or c!1298393 c!1298395) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (h!73649 (exprs!6756 lt!2493587))) (exprs!6756 lt!2493586)))))

(assert (=> bm!635169 d!2180378))

(declare-fun bm!635276 () Bool)

(declare-fun call!635282 () Bool)

(declare-fun c!1298611 () Bool)

(assert (=> bm!635276 (= call!635282 (nullable!7020 (ite c!1298611 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun d!2180380 () Bool)

(declare-fun res!2854517 () Bool)

(declare-fun e!4206108 () Bool)

(assert (=> d!2180380 (=> res!2854517 e!4206108)))

(assert (=> d!2180380 (= res!2854517 (is-EmptyExpr!17260 (h!73649 (exprs!6756 lt!2493587))))))

(assert (=> d!2180380 (= (nullableFct!2653 (h!73649 (exprs!6756 lt!2493587))) e!4206108)))

(declare-fun b!6997641 () Bool)

(declare-fun e!4206104 () Bool)

(declare-fun call!635281 () Bool)

(assert (=> b!6997641 (= e!4206104 call!635281)))

(declare-fun b!6997642 () Bool)

(declare-fun e!4206105 () Bool)

(declare-fun e!4206107 () Bool)

(assert (=> b!6997642 (= e!4206105 e!4206107)))

(assert (=> b!6997642 (= c!1298611 (is-Union!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun bm!635277 () Bool)

(assert (=> bm!635277 (= call!635281 (nullable!7020 (ite c!1298611 (regTwo!35033 (h!73649 (exprs!6756 lt!2493587))) (regOne!35032 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997643 () Bool)

(declare-fun e!4206106 () Bool)

(assert (=> b!6997643 (= e!4206108 e!4206106)))

(declare-fun res!2854515 () Bool)

(assert (=> b!6997643 (=> (not res!2854515) (not e!4206106))))

(assert (=> b!6997643 (= res!2854515 (and (not (is-EmptyLang!17260 (h!73649 (exprs!6756 lt!2493587)))) (not (is-ElementMatch!17260 (h!73649 (exprs!6756 lt!2493587))))))))

(declare-fun b!6997644 () Bool)

(assert (=> b!6997644 (= e!4206107 e!4206104)))

(declare-fun res!2854518 () Bool)

(assert (=> b!6997644 (= res!2854518 call!635282)))

(assert (=> b!6997644 (=> res!2854518 e!4206104)))

(declare-fun b!6997645 () Bool)

(declare-fun e!4206103 () Bool)

(assert (=> b!6997645 (= e!4206107 e!4206103)))

(declare-fun res!2854516 () Bool)

(assert (=> b!6997645 (= res!2854516 call!635281)))

(assert (=> b!6997645 (=> (not res!2854516) (not e!4206103))))

(declare-fun b!6997646 () Bool)

(assert (=> b!6997646 (= e!4206106 e!4206105)))

(declare-fun res!2854519 () Bool)

(assert (=> b!6997646 (=> res!2854519 e!4206105)))

(assert (=> b!6997646 (= res!2854519 (is-Star!17260 (h!73649 (exprs!6756 lt!2493587))))))

(declare-fun b!6997647 () Bool)

(assert (=> b!6997647 (= e!4206103 call!635282)))

(assert (= (and d!2180380 (not res!2854517)) b!6997643))

(assert (= (and b!6997643 res!2854515) b!6997646))

(assert (= (and b!6997646 (not res!2854519)) b!6997642))

(assert (= (and b!6997642 c!1298611) b!6997644))

(assert (= (and b!6997642 (not c!1298611)) b!6997645))

(assert (= (and b!6997644 (not res!2854518)) b!6997641))

(assert (= (and b!6997645 res!2854516) b!6997647))

(assert (= (or b!6997641 b!6997645) bm!635277))

(assert (= (or b!6997644 b!6997647) bm!635276))

(declare-fun m!7690082 () Bool)

(assert (=> bm!635276 m!7690082))

(declare-fun m!7690084 () Bool)

(assert (=> bm!635277 m!7690084))

(assert (=> d!2179960 d!2180380))

(declare-fun d!2180382 () Bool)

(declare-fun c!1298612 () Bool)

(assert (=> d!2180382 (= c!1298612 (is-Nil!67201 lt!2493773))))

(declare-fun e!4206109 () (Set Regex!17260))

(assert (=> d!2180382 (= (content!13295 lt!2493773) e!4206109)))

(declare-fun b!6997648 () Bool)

(assert (=> b!6997648 (= e!4206109 (as set.empty (Set Regex!17260)))))

(declare-fun b!6997649 () Bool)

(assert (=> b!6997649 (= e!4206109 (set.union (set.insert (h!73649 lt!2493773) (as set.empty (Set Regex!17260))) (content!13295 (t!381074 lt!2493773))))))

(assert (= (and d!2180382 c!1298612) b!6997648))

(assert (= (and d!2180382 (not c!1298612)) b!6997649))

(declare-fun m!7690086 () Bool)

(assert (=> b!6997649 m!7690086))

(declare-fun m!7690088 () Bool)

(assert (=> b!6997649 m!7690088))

(assert (=> d!2179890 d!2180382))

(declare-fun d!2180384 () Bool)

(declare-fun c!1298613 () Bool)

(assert (=> d!2180384 (= c!1298613 (is-Nil!67201 (exprs!6756 lt!2493587)))))

(declare-fun e!4206110 () (Set Regex!17260))

(assert (=> d!2180384 (= (content!13295 (exprs!6756 lt!2493587)) e!4206110)))

(declare-fun b!6997650 () Bool)

(assert (=> b!6997650 (= e!4206110 (as set.empty (Set Regex!17260)))))

(declare-fun b!6997651 () Bool)

(assert (=> b!6997651 (= e!4206110 (set.union (set.insert (h!73649 (exprs!6756 lt!2493587)) (as set.empty (Set Regex!17260))) (content!13295 (t!381074 (exprs!6756 lt!2493587)))))))

(assert (= (and d!2180384 c!1298613) b!6997650))

(assert (= (and d!2180384 (not c!1298613)) b!6997651))

(declare-fun m!7690090 () Bool)

(assert (=> b!6997651 m!7690090))

(assert (=> b!6997651 m!7690018))

(assert (=> d!2179890 d!2180384))

(assert (=> d!2179890 d!2180246))

(declare-fun d!2180386 () Bool)

(declare-fun c!1298614 () Bool)

(assert (=> d!2180386 (= c!1298614 (isEmpty!39226 s!7408))))

(declare-fun e!4206111 () Bool)

(assert (=> d!2180386 (= (matchZipper!2800 lt!2493591 s!7408) e!4206111)))

(declare-fun b!6997652 () Bool)

(assert (=> b!6997652 (= e!4206111 (nullableZipper!2455 lt!2493591))))

(declare-fun b!6997653 () Bool)

(assert (=> b!6997653 (= e!4206111 (matchZipper!2800 (derivationStepZipper!2740 lt!2493591 (head!14132 s!7408)) (tail!13290 s!7408)))))

(assert (= (and d!2180386 c!1298614) b!6997652))

(assert (= (and d!2180386 (not c!1298614)) b!6997653))

(assert (=> d!2180386 m!7688998))

(assert (=> b!6997652 m!7689112))

(assert (=> b!6997653 m!7689002))

(assert (=> b!6997653 m!7689002))

(declare-fun m!7690092 () Bool)

(assert (=> b!6997653 m!7690092))

(assert (=> b!6997653 m!7689006))

(assert (=> b!6997653 m!7690092))

(assert (=> b!6997653 m!7689006))

(declare-fun m!7690094 () Bool)

(assert (=> b!6997653 m!7690094))

(assert (=> b!6996942 d!2180386))

(declare-fun b!6997654 () Bool)

(declare-fun e!4206114 () Bool)

(assert (=> b!6997654 (= e!4206114 (nullable!7020 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))))))))

(declare-fun b!6997655 () Bool)

(declare-fun e!4206113 () (Set Context!12512))

(declare-fun e!4206112 () (Set Context!12512))

(assert (=> b!6997655 (= e!4206113 e!4206112)))

(declare-fun c!1298615 () Bool)

(assert (=> b!6997655 (= c!1298615 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561))))))))

(declare-fun d!2180388 () Bool)

(declare-fun c!1298616 () Bool)

(assert (=> d!2180388 (= c!1298616 e!4206114)))

(declare-fun res!2854520 () Bool)

(assert (=> d!2180388 (=> (not res!2854520) (not e!4206114))))

(assert (=> d!2180388 (= res!2854520 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561))))))))

(assert (=> d!2180388 (= (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493561))) (h!73650 s!7408)) e!4206113)))

(declare-fun call!635283 () (Set Context!12512))

(declare-fun b!6997656 () Bool)

(assert (=> b!6997656 (= e!4206113 (set.union call!635283 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))))) (h!73650 s!7408))))))

(declare-fun b!6997657 () Bool)

(assert (=> b!6997657 (= e!4206112 call!635283)))

(declare-fun b!6997658 () Bool)

(assert (=> b!6997658 (= e!4206112 (as set.empty (Set Context!12512)))))

(declare-fun bm!635278 () Bool)

(assert (=> bm!635278 (= call!635283 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561))))) (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493561)))))) (h!73650 s!7408)))))

(assert (= (and d!2180388 res!2854520) b!6997654))

(assert (= (and d!2180388 c!1298616) b!6997656))

(assert (= (and d!2180388 (not c!1298616)) b!6997655))

(assert (= (and b!6997655 c!1298615) b!6997657))

(assert (= (and b!6997655 (not c!1298615)) b!6997658))

(assert (= (or b!6997656 b!6997657) bm!635278))

(declare-fun m!7690096 () Bool)

(assert (=> b!6997654 m!7690096))

(declare-fun m!7690098 () Bool)

(assert (=> b!6997656 m!7690098))

(declare-fun m!7690100 () Bool)

(assert (=> bm!635278 m!7690100))

(assert (=> b!6996871 d!2180388))

(declare-fun d!2180390 () Bool)

(declare-fun c!1298617 () Bool)

(assert (=> d!2180390 (= c!1298617 (isEmpty!39226 (tail!13290 (_2!37236 lt!2493566))))))

(declare-fun e!4206115 () Bool)

(assert (=> d!2180390 (= (matchZipper!2800 (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 lt!2493566))) (tail!13290 (_2!37236 lt!2493566))) e!4206115)))

(declare-fun b!6997659 () Bool)

(assert (=> b!6997659 (= e!4206115 (nullableZipper!2455 (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 lt!2493566)))))))

(declare-fun b!6997660 () Bool)

(assert (=> b!6997660 (= e!4206115 (matchZipper!2800 (derivationStepZipper!2740 (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 lt!2493566))) (head!14132 (tail!13290 (_2!37236 lt!2493566)))) (tail!13290 (tail!13290 (_2!37236 lt!2493566)))))))

(assert (= (and d!2180390 c!1298617) b!6997659))

(assert (= (and d!2180390 (not c!1298617)) b!6997660))

(assert (=> d!2180390 m!7689118))

(declare-fun m!7690102 () Bool)

(assert (=> d!2180390 m!7690102))

(assert (=> b!6997659 m!7689116))

(declare-fun m!7690104 () Bool)

(assert (=> b!6997659 m!7690104))

(assert (=> b!6997660 m!7689118))

(declare-fun m!7690106 () Bool)

(assert (=> b!6997660 m!7690106))

(assert (=> b!6997660 m!7689116))

(assert (=> b!6997660 m!7690106))

(declare-fun m!7690108 () Bool)

(assert (=> b!6997660 m!7690108))

(assert (=> b!6997660 m!7689118))

(declare-fun m!7690110 () Bool)

(assert (=> b!6997660 m!7690110))

(assert (=> b!6997660 m!7690108))

(assert (=> b!6997660 m!7690110))

(declare-fun m!7690112 () Bool)

(assert (=> b!6997660 m!7690112))

(assert (=> b!6996994 d!2180390))

(declare-fun bs!1863681 () Bool)

(declare-fun d!2180392 () Bool)

(assert (= bs!1863681 (and d!2180392 d!2180210)))

(declare-fun lambda!404586 () Int)

(assert (=> bs!1863681 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404586 lambda!404572))))

(declare-fun bs!1863682 () Bool)

(assert (= bs!1863682 (and d!2180392 d!2180256)))

(assert (=> bs!1863682 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404586 lambda!404576))))

(declare-fun bs!1863683 () Bool)

(assert (= bs!1863683 (and d!2180392 d!2180220)))

(assert (=> bs!1863683 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 s!7408)) (= lambda!404586 lambda!404573))))

(declare-fun bs!1863684 () Bool)

(assert (= bs!1863684 (and d!2180392 d!2179964)))

(assert (=> bs!1863684 (= (= (head!14132 (_2!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404586 lambda!404535))))

(declare-fun bs!1863685 () Bool)

(assert (= bs!1863685 (and d!2180392 d!2180230)))

(assert (=> bs!1863685 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404586 lambda!404574))))

(declare-fun bs!1863686 () Bool)

(assert (= bs!1863686 (and d!2180392 d!2180350)))

(assert (=> bs!1863686 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 (_1!37236 lt!2493566))) (= lambda!404586 lambda!404585))))

(declare-fun bs!1863687 () Bool)

(assert (= bs!1863687 (and d!2180392 d!2180284)))

(assert (=> bs!1863687 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404586 lambda!404578))))

(declare-fun bs!1863688 () Bool)

(assert (= bs!1863688 (and d!2180392 d!2180192)))

(assert (=> bs!1863688 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404586 lambda!404570))))

(declare-fun bs!1863689 () Bool)

(assert (= bs!1863689 (and d!2180392 b!6996719)))

(assert (=> bs!1863689 (= (= (head!14132 (_2!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404586 lambda!404460))))

(declare-fun bs!1863690 () Bool)

(assert (= bs!1863690 (and d!2180392 d!2179894)))

(assert (=> bs!1863690 (= (= (head!14132 (_2!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404586 lambda!404526))))

(declare-fun bs!1863691 () Bool)

(assert (= bs!1863691 (and d!2180392 d!2179882)))

(assert (=> bs!1863691 (= (= (head!14132 (_2!37236 lt!2493566)) (h!73650 s!7408)) (= lambda!404586 lambda!404525))))

(declare-fun bs!1863692 () Bool)

(assert (= bs!1863692 (and d!2180392 d!2180346)))

(assert (=> bs!1863692 (= (= (head!14132 (_2!37236 lt!2493566)) (head!14132 (t!381075 s!7408))) (= lambda!404586 lambda!404584))))

(assert (=> d!2180392 true))

(assert (=> d!2180392 (= (derivationStepZipper!2740 lt!2493591 (head!14132 (_2!37236 lt!2493566))) (flatMap!2246 lt!2493591 lambda!404586))))

(declare-fun bs!1863693 () Bool)

(assert (= bs!1863693 d!2180392))

(declare-fun m!7690114 () Bool)

(assert (=> bs!1863693 m!7690114))

(assert (=> b!6996994 d!2180392))

(declare-fun d!2180394 () Bool)

(assert (=> d!2180394 (= (head!14132 (_2!37236 lt!2493566)) (h!73650 (_2!37236 lt!2493566)))))

(assert (=> b!6996994 d!2180394))

(declare-fun d!2180396 () Bool)

(assert (=> d!2180396 (= (tail!13290 (_2!37236 lt!2493566)) (t!381075 (_2!37236 lt!2493566)))))

(assert (=> b!6996994 d!2180396))

(declare-fun d!2180398 () Bool)

(assert (=> d!2180398 (= (isEmpty!39226 (_2!37236 lt!2493566)) (is-Nil!67202 (_2!37236 lt!2493566)))))

(assert (=> d!2179954 d!2180398))

(declare-fun e!4206117 () (Set Context!12512))

(declare-fun b!6997661 () Bool)

(assert (=> b!6997661 (= e!4206117 (set.insert (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154)) (as set.empty (Set Context!12512))))))

(declare-fun b!6997662 () Bool)

(declare-fun e!4206118 () (Set Context!12512))

(declare-fun call!635287 () (Set Context!12512))

(assert (=> b!6997662 (= e!4206118 call!635287)))

(declare-fun bm!635279 () Bool)

(declare-fun c!1298619 () Bool)

(declare-fun call!635289 () (Set Context!12512))

(declare-fun call!635284 () List!67325)

(assert (=> bm!635279 (= call!635289 (derivationStepZipperDown!1978 (ite c!1298619 (regTwo!35033 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (regOne!35032 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))) (ite c!1298619 (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154)) (Context!12513 call!635284)) (h!73650 s!7408)))))

(declare-fun bm!635280 () Bool)

(declare-fun call!635288 () (Set Context!12512))

(declare-fun call!635286 () (Set Context!12512))

(assert (=> bm!635280 (= call!635288 call!635286)))

(declare-fun bm!635281 () Bool)

(assert (=> bm!635281 (= call!635287 call!635288)))

(declare-fun bm!635282 () Bool)

(declare-fun call!635285 () List!67325)

(assert (=> bm!635282 (= call!635285 call!635284)))

(declare-fun b!6997664 () Bool)

(declare-fun e!4206116 () (Set Context!12512))

(assert (=> b!6997664 (= e!4206116 (set.union call!635289 call!635288))))

(declare-fun b!6997665 () Bool)

(declare-fun c!1298618 () Bool)

(declare-fun e!4206119 () Bool)

(assert (=> b!6997665 (= c!1298618 e!4206119)))

(declare-fun res!2854521 () Bool)

(assert (=> b!6997665 (=> (not res!2854521) (not e!4206119))))

(assert (=> b!6997665 (= res!2854521 (is-Concat!26105 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun e!4206121 () (Set Context!12512))

(assert (=> b!6997665 (= e!4206121 e!4206116)))

(declare-fun bm!635283 () Bool)

(declare-fun c!1298620 () Bool)

(assert (=> bm!635283 (= call!635284 ($colon$colon!2499 (exprs!6756 (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154))) (ite (or c!1298618 c!1298620) (regTwo!35032 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))))

(declare-fun b!6997666 () Bool)

(assert (=> b!6997666 (= e!4206119 (nullable!7020 (regOne!35032 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))))

(declare-fun c!1298622 () Bool)

(declare-fun b!6997663 () Bool)

(assert (=> b!6997663 (= c!1298622 (is-Star!17260 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun e!4206120 () (Set Context!12512))

(assert (=> b!6997663 (= e!4206120 e!4206118)))

(declare-fun d!2180400 () Bool)

(declare-fun c!1298621 () Bool)

(assert (=> d!2180400 (= c!1298621 (and (is-ElementMatch!17260 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (= (c!1298311 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (h!73650 s!7408))))))

(assert (=> d!2180400 (= (derivationStepZipperDown!1978 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))) (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154)) (h!73650 s!7408)) e!4206117)))

(declare-fun bm!635284 () Bool)

(assert (=> bm!635284 (= call!635286 (derivationStepZipperDown!1978 (ite c!1298619 (regOne!35033 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298618 (regTwo!35032 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (ite c!1298620 (regOne!35032 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))) (reg!17589 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))))) (ite (or c!1298619 c!1298618) (ite (or c!1298348 c!1298347) lt!2493561 (Context!12513 call!635154)) (Context!12513 call!635285)) (h!73650 s!7408)))))

(declare-fun b!6997667 () Bool)

(assert (=> b!6997667 (= e!4206120 call!635287)))

(declare-fun b!6997668 () Bool)

(assert (=> b!6997668 (= e!4206121 (set.union call!635286 call!635289))))

(declare-fun b!6997669 () Bool)

(assert (=> b!6997669 (= e!4206116 e!4206120)))

(assert (=> b!6997669 (= c!1298620 (is-Concat!26105 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun b!6997670 () Bool)

(assert (=> b!6997670 (= e!4206117 e!4206121)))

(assert (=> b!6997670 (= c!1298619 (is-Union!17260 (ite c!1298348 (regOne!35033 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298347 (regTwo!35032 (h!73649 (exprs!6756 lt!2493587))) (ite c!1298349 (regOne!35032 (h!73649 (exprs!6756 lt!2493587))) (reg!17589 (h!73649 (exprs!6756 lt!2493587))))))))))

(declare-fun b!6997671 () Bool)

(assert (=> b!6997671 (= e!4206118 (as set.empty (Set Context!12512)))))

(assert (= (and d!2180400 c!1298621) b!6997661))

(assert (= (and d!2180400 (not c!1298621)) b!6997670))

(assert (= (and b!6997670 c!1298619) b!6997668))

(assert (= (and b!6997670 (not c!1298619)) b!6997665))

(assert (= (and b!6997665 res!2854521) b!6997666))

(assert (= (and b!6997665 c!1298618) b!6997664))

(assert (= (and b!6997665 (not c!1298618)) b!6997669))

(assert (= (and b!6997669 c!1298620) b!6997667))

(assert (= (and b!6997669 (not c!1298620)) b!6997663))

(assert (= (and b!6997663 c!1298622) b!6997662))

(assert (= (and b!6997663 (not c!1298622)) b!6997671))

(assert (= (or b!6997667 b!6997662) bm!635282))

(assert (= (or b!6997667 b!6997662) bm!635281))

(assert (= (or b!6997664 bm!635281) bm!635280))

(assert (= (or b!6997664 bm!635282) bm!635283))

(assert (= (or b!6997668 bm!635280) bm!635284))

(assert (= (or b!6997668 b!6997664) bm!635279))

(declare-fun m!7690116 () Bool)

(assert (=> bm!635283 m!7690116))

(declare-fun m!7690118 () Bool)

(assert (=> bm!635279 m!7690118))

(declare-fun m!7690120 () Bool)

(assert (=> b!6997666 m!7690120))

(declare-fun m!7690122 () Bool)

(assert (=> bm!635284 m!7690122))

(declare-fun m!7690124 () Bool)

(assert (=> b!6997661 m!7690124))

(assert (=> bm!635153 d!2180400))

(assert (=> d!2179900 d!2179898))

(declare-fun d!2180402 () Bool)

(assert (=> d!2180402 (= (flatMap!2246 lt!2493558 lambda!404460) (dynLambda!26972 lambda!404460 lt!2493587))))

(assert (=> d!2180402 true))

(declare-fun _$13!4391 () Unit!161177)

(assert (=> d!2180402 (= (choose!52410 lt!2493558 lt!2493587 lambda!404460) _$13!4391)))

(declare-fun b_lambda!263321 () Bool)

(assert (=> (not b_lambda!263321) (not d!2180402)))

(declare-fun bs!1863694 () Bool)

(assert (= bs!1863694 d!2180402))

(assert (=> bs!1863694 m!7688678))

(assert (=> bs!1863694 m!7688948))

(assert (=> d!2179900 d!2180402))

(declare-fun d!2180404 () Bool)

(declare-fun c!1298623 () Bool)

(assert (=> d!2180404 (= c!1298623 (isEmpty!39226 (_1!37236 (get!23560 lt!2493807))))))

(declare-fun e!4206122 () Bool)

(assert (=> d!2180404 (= (matchZipper!2800 lt!2493576 (_1!37236 (get!23560 lt!2493807))) e!4206122)))

(declare-fun b!6997672 () Bool)

(assert (=> b!6997672 (= e!4206122 (nullableZipper!2455 lt!2493576))))

(declare-fun b!6997673 () Bool)

(assert (=> b!6997673 (= e!4206122 (matchZipper!2800 (derivationStepZipper!2740 lt!2493576 (head!14132 (_1!37236 (get!23560 lt!2493807)))) (tail!13290 (_1!37236 (get!23560 lt!2493807)))))))

(assert (= (and d!2180404 c!1298623) b!6997672))

(assert (= (and d!2180404 (not c!1298623)) b!6997673))

(declare-fun m!7690126 () Bool)

(assert (=> d!2180404 m!7690126))

(assert (=> b!6997672 m!7689050))

(declare-fun m!7690128 () Bool)

(assert (=> b!6997673 m!7690128))

(assert (=> b!6997673 m!7690128))

(declare-fun m!7690130 () Bool)

(assert (=> b!6997673 m!7690130))

(declare-fun m!7690132 () Bool)

(assert (=> b!6997673 m!7690132))

(assert (=> b!6997673 m!7690130))

(assert (=> b!6997673 m!7690132))

(declare-fun m!7690134 () Bool)

(assert (=> b!6997673 m!7690134))

(assert (=> b!6996946 d!2180404))

(assert (=> b!6996946 d!2180226))

(declare-fun b!6997674 () Bool)

(declare-fun e!4206125 () Bool)

(assert (=> b!6997674 (= e!4206125 (nullable!7020 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570)))))))))

(declare-fun b!6997675 () Bool)

(declare-fun e!4206124 () (Set Context!12512))

(declare-fun e!4206123 () (Set Context!12512))

(assert (=> b!6997675 (= e!4206124 e!4206123)))

(declare-fun c!1298624 () Bool)

(assert (=> b!6997675 (= c!1298624 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570))))))))

(declare-fun d!2180406 () Bool)

(declare-fun c!1298625 () Bool)

(assert (=> d!2180406 (= c!1298625 e!4206125)))

(declare-fun res!2854522 () Bool)

(assert (=> d!2180406 (=> (not res!2854522) (not e!4206125))))

(assert (=> d!2180406 (= res!2854522 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570))))))))

(assert (=> d!2180406 (= (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493570))) (h!73650 s!7408)) e!4206124)))

(declare-fun b!6997676 () Bool)

(declare-fun call!635290 () (Set Context!12512))

(assert (=> b!6997676 (= e!4206124 (set.union call!635290 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570)))))) (h!73650 s!7408))))))

(declare-fun b!6997677 () Bool)

(assert (=> b!6997677 (= e!4206123 call!635290)))

(declare-fun b!6997678 () Bool)

(assert (=> b!6997678 (= e!4206123 (as set.empty (Set Context!12512)))))

(declare-fun bm!635285 () Bool)

(assert (=> bm!635285 (= call!635290 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570))))) (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493570)))))) (h!73650 s!7408)))))

(assert (= (and d!2180406 res!2854522) b!6997674))

(assert (= (and d!2180406 c!1298625) b!6997676))

(assert (= (and d!2180406 (not c!1298625)) b!6997675))

(assert (= (and b!6997675 c!1298624) b!6997677))

(assert (= (and b!6997675 (not c!1298624)) b!6997678))

(assert (= (or b!6997676 b!6997677) bm!635285))

(declare-fun m!7690136 () Bool)

(assert (=> b!6997674 m!7690136))

(declare-fun m!7690138 () Bool)

(assert (=> b!6997676 m!7690138))

(declare-fun m!7690140 () Bool)

(assert (=> bm!635285 m!7690140))

(assert (=> b!6997008 d!2180406))

(declare-fun bs!1863695 () Bool)

(declare-fun d!2180408 () Bool)

(assert (= bs!1863695 (and d!2180408 d!2179976)))

(declare-fun lambda!404587 () Int)

(assert (=> bs!1863695 (not (= lambda!404587 lambda!404538))))

(declare-fun bs!1863696 () Bool)

(assert (= bs!1863696 (and d!2180408 d!2180202)))

(assert (=> bs!1863696 (= lambda!404587 lambda!404571)))

(declare-fun bs!1863697 () Bool)

(assert (= bs!1863697 (and d!2180408 d!2180154)))

(assert (=> bs!1863697 (= lambda!404587 lambda!404568)))

(declare-fun bs!1863698 () Bool)

(assert (= bs!1863698 (and d!2180408 d!2180306)))

(assert (=> bs!1863698 (not (= lambda!404587 lambda!404583))))

(declare-fun bs!1863699 () Bool)

(assert (= bs!1863699 (and d!2180408 d!2180140)))

(assert (=> bs!1863699 (= lambda!404587 lambda!404567)))

(declare-fun bs!1863700 () Bool)

(assert (= bs!1863700 (and d!2180408 d!2180234)))

(assert (=> bs!1863700 (= lambda!404587 lambda!404575)))

(declare-fun bs!1863701 () Bool)

(assert (= bs!1863701 (and d!2180408 b!6996717)))

(assert (=> bs!1863701 (not (= lambda!404587 lambda!404457))))

(declare-fun bs!1863702 () Bool)

(assert (= bs!1863702 (and d!2180408 d!2180132)))

(assert (=> bs!1863702 (= lambda!404587 lambda!404566)))

(declare-fun bs!1863703 () Bool)

(assert (= bs!1863703 (and d!2180408 d!2180128)))

(assert (=> bs!1863703 (= lambda!404587 lambda!404565)))

(declare-fun bs!1863704 () Bool)

(assert (= bs!1863704 (and d!2180408 d!2179978)))

(assert (=> bs!1863704 (not (= lambda!404587 lambda!404541))))

(declare-fun bs!1863705 () Bool)

(assert (= bs!1863705 (and d!2180408 d!2180298)))

(assert (=> bs!1863705 (= lambda!404587 lambda!404579)))

(declare-fun bs!1863706 () Bool)

(assert (= bs!1863706 (and d!2180408 d!2180272)))

(assert (=> bs!1863706 (= lambda!404587 lambda!404577)))

(declare-fun bs!1863707 () Bool)

(assert (= bs!1863707 (and d!2180408 d!2180304)))

(assert (=> bs!1863707 (not (= lambda!404587 lambda!404580))))

(assert (=> d!2180408 (= (nullableZipper!2455 lt!2493594) (exists!3071 lt!2493594 lambda!404587))))

(declare-fun bs!1863708 () Bool)

(assert (= bs!1863708 d!2180408))

(declare-fun m!7690142 () Bool)

(assert (=> bs!1863708 m!7690142))

(assert (=> b!6996978 d!2180408))

(declare-fun b!6997679 () Bool)

(declare-fun e!4206128 () Bool)

(assert (=> b!6997679 (= e!4206128 (nullable!7020 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586)))))))))

(declare-fun b!6997680 () Bool)

(declare-fun e!4206127 () (Set Context!12512))

(declare-fun e!4206126 () (Set Context!12512))

(assert (=> b!6997680 (= e!4206127 e!4206126)))

(declare-fun c!1298626 () Bool)

(assert (=> b!6997680 (= c!1298626 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586))))))))

(declare-fun d!2180410 () Bool)

(declare-fun c!1298627 () Bool)

(assert (=> d!2180410 (= c!1298627 e!4206128)))

(declare-fun res!2854523 () Bool)

(assert (=> d!2180410 (=> (not res!2854523) (not e!4206128))))

(assert (=> d!2180410 (= res!2854523 (is-Cons!67201 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586))))))))

(assert (=> d!2180410 (= (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 lt!2493586))) (h!73650 s!7408)) e!4206127)))

(declare-fun call!635291 () (Set Context!12512))

(declare-fun b!6997681 () Bool)

(assert (=> b!6997681 (= e!4206127 (set.union call!635291 (derivationStepZipperUp!1910 (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586)))))) (h!73650 s!7408))))))

(declare-fun b!6997682 () Bool)

(assert (=> b!6997682 (= e!4206126 call!635291)))

(declare-fun b!6997683 () Bool)

(assert (=> b!6997683 (= e!4206126 (as set.empty (Set Context!12512)))))

(declare-fun bm!635286 () Bool)

(assert (=> bm!635286 (= call!635291 (derivationStepZipperDown!1978 (h!73649 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586))))) (Context!12513 (t!381074 (exprs!6756 (Context!12513 (t!381074 (exprs!6756 lt!2493586)))))) (h!73650 s!7408)))))

(assert (= (and d!2180410 res!2854523) b!6997679))

(assert (= (and d!2180410 c!1298627) b!6997681))

(assert (= (and d!2180410 (not c!1298627)) b!6997680))

(assert (= (and b!6997680 c!1298626) b!6997682))

(assert (= (and b!6997680 (not c!1298626)) b!6997683))

(assert (= (or b!6997681 b!6997682) bm!635286))

(declare-fun m!7690144 () Bool)

(assert (=> b!6997679 m!7690144))

(declare-fun m!7690146 () Bool)

(assert (=> b!6997681 m!7690146))

(declare-fun m!7690148 () Bool)

(assert (=> bm!635286 m!7690148))

(assert (=> b!6996831 d!2180410))

(declare-fun bs!1863709 () Bool)

(declare-fun d!2180412 () Bool)

(assert (= bs!1863709 (and d!2180412 b!6996710)))

(declare-fun lambda!404588 () Int)

(assert (=> bs!1863709 (= lambda!404588 lambda!404459)))

(declare-fun bs!1863710 () Bool)

(assert (= bs!1863710 (and d!2180412 d!2179926)))

(assert (=> bs!1863710 (= lambda!404588 lambda!404534)))

(declare-fun bs!1863711 () Bool)

(assert (= bs!1863711 (and d!2180412 d!2179984)))

(assert (=> bs!1863711 (= lambda!404588 lambda!404542)))

(assert (=> d!2180412 (= (inv!86010 setElem!48020) (forall!16170 (exprs!6756 setElem!48020) lambda!404588))))

(declare-fun bs!1863712 () Bool)

(assert (= bs!1863712 d!2180412))

(declare-fun m!7690150 () Bool)

(assert (=> bs!1863712 m!7690150))

(assert (=> setNonEmpty!48020 d!2180412))

(declare-fun d!2180414 () Bool)

(assert (=> d!2180414 true))

(declare-fun setRes!48031 () Bool)

(assert (=> d!2180414 setRes!48031))

(declare-fun condSetEmpty!48031 () Bool)

(declare-fun res!2854524 () (Set Context!12512))

(assert (=> d!2180414 (= condSetEmpty!48031 (= res!2854524 (as set.empty (Set Context!12512))))))

(assert (=> d!2180414 (= (choose!52411 lt!2493576 lambda!404460) res!2854524)))

(declare-fun setIsEmpty!48031 () Bool)

(assert (=> setIsEmpty!48031 setRes!48031))

(declare-fun setElem!48031 () Context!12512)

(declare-fun setNonEmpty!48031 () Bool)

(declare-fun e!4206129 () Bool)

(declare-fun tp!1930729 () Bool)

(assert (=> setNonEmpty!48031 (= setRes!48031 (and tp!1930729 (inv!86010 setElem!48031) e!4206129))))

(declare-fun setRest!48031 () (Set Context!12512))

(assert (=> setNonEmpty!48031 (= res!2854524 (set.union (set.insert setElem!48031 (as set.empty (Set Context!12512))) setRest!48031))))

(declare-fun b!6997684 () Bool)

(declare-fun tp!1930730 () Bool)

(assert (=> b!6997684 (= e!4206129 tp!1930730)))

(assert (= (and d!2180414 condSetEmpty!48031) setIsEmpty!48031))

(assert (= (and d!2180414 (not condSetEmpty!48031)) setNonEmpty!48031))

(assert (= setNonEmpty!48031 b!6997684))

(declare-fun m!7690152 () Bool)

(assert (=> setNonEmpty!48031 m!7690152))

(assert (=> d!2179914 d!2180414))

(declare-fun d!2180416 () Bool)

(assert (=> d!2180416 true))

(declare-fun setRes!48032 () Bool)

(assert (=> d!2180416 setRes!48032))

(declare-fun condSetEmpty!48032 () Bool)

(declare-fun res!2854525 () (Set Context!12512))

(assert (=> d!2180416 (= condSetEmpty!48032 (= res!2854525 (as set.empty (Set Context!12512))))))

(assert (=> d!2180416 (= (choose!52411 lt!2493595 lambda!404460) res!2854525)))

(declare-fun setIsEmpty!48032 () Bool)

(assert (=> setIsEmpty!48032 setRes!48032))

(declare-fun tp!1930731 () Bool)

(declare-fun setElem!48032 () Context!12512)

(declare-fun e!4206130 () Bool)

(declare-fun setNonEmpty!48032 () Bool)

(assert (=> setNonEmpty!48032 (= setRes!48032 (and tp!1930731 (inv!86010 setElem!48032) e!4206130))))

(declare-fun setRest!48032 () (Set Context!12512))

(assert (=> setNonEmpty!48032 (= res!2854525 (set.union (set.insert setElem!48032 (as set.empty (Set Context!12512))) setRest!48032))))

(declare-fun b!6997685 () Bool)

(declare-fun tp!1930732 () Bool)

(assert (=> b!6997685 (= e!4206130 tp!1930732)))

(assert (= (and d!2180416 condSetEmpty!48032) setIsEmpty!48032))

(assert (= (and d!2180416 (not condSetEmpty!48032)) setNonEmpty!48032))

(assert (= setNonEmpty!48032 b!6997685))

(declare-fun m!7690154 () Bool)

(assert (=> setNonEmpty!48032 m!7690154))

(assert (=> d!2179966 d!2180416))

(declare-fun d!2180418 () Bool)

(declare-fun lt!2493942 () Int)

(assert (=> d!2180418 (>= lt!2493942 0)))

(declare-fun e!4206131 () Int)

(assert (=> d!2180418 (= lt!2493942 e!4206131)))

(declare-fun c!1298628 () Bool)

(assert (=> d!2180418 (= c!1298628 (is-Nil!67201 lt!2493773))))

(assert (=> d!2180418 (= (size!40926 lt!2493773) lt!2493942)))

(declare-fun b!6997686 () Bool)

(assert (=> b!6997686 (= e!4206131 0)))

(declare-fun b!6997687 () Bool)

(assert (=> b!6997687 (= e!4206131 (+ 1 (size!40926 (t!381074 lt!2493773))))))

(assert (= (and d!2180418 c!1298628) b!6997686))

(assert (= (and d!2180418 (not c!1298628)) b!6997687))

(declare-fun m!7690156 () Bool)

(assert (=> b!6997687 m!7690156))

(assert (=> b!6996884 d!2180418))

(declare-fun d!2180420 () Bool)

(declare-fun lt!2493943 () Int)

(assert (=> d!2180420 (>= lt!2493943 0)))

(declare-fun e!4206132 () Int)

(assert (=> d!2180420 (= lt!2493943 e!4206132)))

(declare-fun c!1298629 () Bool)

(assert (=> d!2180420 (= c!1298629 (is-Nil!67201 (exprs!6756 lt!2493587)))))

(assert (=> d!2180420 (= (size!40926 (exprs!6756 lt!2493587)) lt!2493943)))

(declare-fun b!6997688 () Bool)

(assert (=> b!6997688 (= e!4206132 0)))

(declare-fun b!6997689 () Bool)

(assert (=> b!6997689 (= e!4206132 (+ 1 (size!40926 (t!381074 (exprs!6756 lt!2493587)))))))

(assert (= (and d!2180420 c!1298629) b!6997688))

(assert (= (and d!2180420 (not c!1298629)) b!6997689))

(assert (=> b!6997689 m!7690014))

(assert (=> b!6996884 d!2180420))

(assert (=> b!6996884 d!2180374))

(declare-fun d!2180422 () Bool)

(declare-fun e!4206138 () Bool)

(assert (=> d!2180422 e!4206138))

(declare-fun res!2854528 () Bool)

(assert (=> d!2180422 (=> (not res!2854528) (not e!4206138))))

(declare-fun a!12822 () Context!12512)

(assert (=> d!2180422 (= res!2854528 (= lt!2493567 (dynLambda!26973 lambda!404458 a!12822)))))

(declare-fun e!4206137 () Bool)

(assert (=> d!2180422 (and (inv!86010 a!12822) e!4206137)))

(assert (=> d!2180422 (= (choose!52412 z1!570 lambda!404458 lt!2493567) a!12822)))

(declare-fun b!6997695 () Bool)

(declare-fun tp!1930735 () Bool)

(assert (=> b!6997695 (= e!4206137 tp!1930735)))

(declare-fun b!6997696 () Bool)

(assert (=> b!6997696 (= e!4206138 (set.member a!12822 z1!570))))

(assert (= d!2180422 b!6997695))

(assert (= (and d!2180422 res!2854528) b!6997696))

(declare-fun b_lambda!263323 () Bool)

(assert (=> (not b_lambda!263323) (not d!2180422)))

(declare-fun m!7690158 () Bool)

(assert (=> d!2180422 m!7690158))

(declare-fun m!7690160 () Bool)

(assert (=> d!2180422 m!7690160))

(declare-fun m!7690162 () Bool)

(assert (=> b!6997696 m!7690162))

(assert (=> d!2179892 d!2180422))

(declare-fun d!2180424 () Bool)

(assert (=> d!2180424 (= (map!15537 z1!570 lambda!404458) (choose!52413 z1!570 lambda!404458))))

(declare-fun bs!1863713 () Bool)

(assert (= bs!1863713 d!2180424))

(declare-fun m!7690164 () Bool)

(assert (=> bs!1863713 m!7690164))

(assert (=> d!2179892 d!2180424))

(assert (=> b!6996863 d!2180130))

(declare-fun d!2180426 () Bool)

(assert (=> d!2180426 (= (flatMap!2246 lt!2493595 lambda!404535) (choose!52411 lt!2493595 lambda!404535))))

(declare-fun bs!1863714 () Bool)

(assert (= bs!1863714 d!2180426))

(declare-fun m!7690166 () Bool)

(assert (=> bs!1863714 m!7690166))

(assert (=> d!2179964 d!2180426))

(declare-fun d!2180428 () Bool)

(assert (=> d!2180428 (= (map!15537 z1!570 lambda!404531) (choose!52413 z1!570 lambda!404531))))

(declare-fun bs!1863715 () Bool)

(assert (= bs!1863715 d!2180428))

(declare-fun m!7690168 () Bool)

(assert (=> bs!1863715 m!7690168))

(assert (=> d!2179924 d!2180428))

(declare-fun d!2180430 () Bool)

(assert (=> d!2180430 (= (nullable!7020 (reg!17589 (h!73649 (exprs!6756 lt!2493587)))) (nullableFct!2653 (reg!17589 (h!73649 (exprs!6756 lt!2493587)))))))

(declare-fun bs!1863716 () Bool)

(assert (= bs!1863716 d!2180430))

(declare-fun m!7690170 () Bool)

(assert (=> bs!1863716 m!7690170))

(assert (=> b!6996976 d!2180430))

(declare-fun b!6997709 () Bool)

(declare-fun e!4206141 () Bool)

(declare-fun tp!1930747 () Bool)

(assert (=> b!6997709 (= e!4206141 tp!1930747)))

(assert (=> b!6997041 (= tp!1930682 e!4206141)))

(declare-fun b!6997710 () Bool)

(declare-fun tp!1930750 () Bool)

(declare-fun tp!1930746 () Bool)

(assert (=> b!6997710 (= e!4206141 (and tp!1930750 tp!1930746))))

(declare-fun b!6997707 () Bool)

(assert (=> b!6997707 (= e!4206141 tp_is_empty!43745)))

(declare-fun b!6997708 () Bool)

(declare-fun tp!1930748 () Bool)

(declare-fun tp!1930749 () Bool)

(assert (=> b!6997708 (= e!4206141 (and tp!1930748 tp!1930749))))

(assert (= (and b!6997041 (is-ElementMatch!17260 (h!73649 (exprs!6756 setElem!48014)))) b!6997707))

(assert (= (and b!6997041 (is-Concat!26105 (h!73649 (exprs!6756 setElem!48014)))) b!6997708))

(assert (= (and b!6997041 (is-Star!17260 (h!73649 (exprs!6756 setElem!48014)))) b!6997709))

(assert (= (and b!6997041 (is-Union!17260 (h!73649 (exprs!6756 setElem!48014)))) b!6997710))

(declare-fun b!6997711 () Bool)

(declare-fun e!4206142 () Bool)

(declare-fun tp!1930751 () Bool)

(declare-fun tp!1930752 () Bool)

(assert (=> b!6997711 (= e!4206142 (and tp!1930751 tp!1930752))))

(assert (=> b!6997041 (= tp!1930683 e!4206142)))

(assert (= (and b!6997041 (is-Cons!67201 (t!381074 (exprs!6756 setElem!48014)))) b!6997711))

(declare-fun b!6997712 () Bool)

(declare-fun e!4206143 () Bool)

(declare-fun tp!1930753 () Bool)

(assert (=> b!6997712 (= e!4206143 (and tp_is_empty!43745 tp!1930753))))

(assert (=> b!6997035 (= tp!1930675 e!4206143)))

(assert (= (and b!6997035 (is-Cons!67202 (t!381075 (t!381075 s!7408)))) b!6997712))

(declare-fun b!6997715 () Bool)

(declare-fun e!4206144 () Bool)

(declare-fun tp!1930755 () Bool)

(assert (=> b!6997715 (= e!4206144 tp!1930755)))

(assert (=> b!6997040 (= tp!1930680 e!4206144)))

(declare-fun b!6997716 () Bool)

(declare-fun tp!1930758 () Bool)

(declare-fun tp!1930754 () Bool)

(assert (=> b!6997716 (= e!4206144 (and tp!1930758 tp!1930754))))

(declare-fun b!6997713 () Bool)

(assert (=> b!6997713 (= e!4206144 tp_is_empty!43745)))

(declare-fun b!6997714 () Bool)

(declare-fun tp!1930756 () Bool)

(declare-fun tp!1930757 () Bool)

(assert (=> b!6997714 (= e!4206144 (and tp!1930756 tp!1930757))))

(assert (= (and b!6997040 (is-ElementMatch!17260 (h!73649 (exprs!6756 ct2!306)))) b!6997713))

(assert (= (and b!6997040 (is-Concat!26105 (h!73649 (exprs!6756 ct2!306)))) b!6997714))

(assert (= (and b!6997040 (is-Star!17260 (h!73649 (exprs!6756 ct2!306)))) b!6997715))

(assert (= (and b!6997040 (is-Union!17260 (h!73649 (exprs!6756 ct2!306)))) b!6997716))

(declare-fun b!6997717 () Bool)

(declare-fun e!4206145 () Bool)

(declare-fun tp!1930759 () Bool)

(declare-fun tp!1930760 () Bool)

(assert (=> b!6997717 (= e!4206145 (and tp!1930759 tp!1930760))))

(assert (=> b!6997040 (= tp!1930681 e!4206145)))

(assert (= (and b!6997040 (is-Cons!67201 (t!381074 (exprs!6756 ct2!306)))) b!6997717))

(declare-fun condSetEmpty!48033 () Bool)

(assert (=> setNonEmpty!48020 (= condSetEmpty!48033 (= setRest!48020 (as set.empty (Set Context!12512))))))

(declare-fun setRes!48033 () Bool)

(assert (=> setNonEmpty!48020 (= tp!1930689 setRes!48033)))

(declare-fun setIsEmpty!48033 () Bool)

(assert (=> setIsEmpty!48033 setRes!48033))

(declare-fun setNonEmpty!48033 () Bool)

(declare-fun setElem!48033 () Context!12512)

(declare-fun e!4206146 () Bool)

(declare-fun tp!1930762 () Bool)

(assert (=> setNonEmpty!48033 (= setRes!48033 (and tp!1930762 (inv!86010 setElem!48033) e!4206146))))

(declare-fun setRest!48033 () (Set Context!12512))

(assert (=> setNonEmpty!48033 (= setRest!48020 (set.union (set.insert setElem!48033 (as set.empty (Set Context!12512))) setRest!48033))))

(declare-fun b!6997718 () Bool)

(declare-fun tp!1930761 () Bool)

(assert (=> b!6997718 (= e!4206146 tp!1930761)))

(assert (= (and setNonEmpty!48020 condSetEmpty!48033) setIsEmpty!48033))

(assert (= (and setNonEmpty!48020 (not condSetEmpty!48033)) setNonEmpty!48033))

(assert (= setNonEmpty!48033 b!6997718))

(declare-fun m!7690172 () Bool)

(assert (=> setNonEmpty!48033 m!7690172))

(declare-fun b!6997719 () Bool)

(declare-fun e!4206147 () Bool)

(declare-fun tp!1930763 () Bool)

(declare-fun tp!1930764 () Bool)

(assert (=> b!6997719 (= e!4206147 (and tp!1930763 tp!1930764))))

(assert (=> b!6997046 (= tp!1930688 e!4206147)))

(assert (= (and b!6997046 (is-Cons!67201 (exprs!6756 setElem!48020))) b!6997719))

(declare-fun b_lambda!263325 () Bool)

(assert (= b_lambda!263301 (or d!2179976 b_lambda!263325)))

(declare-fun bs!1863717 () Bool)

(declare-fun d!2180432 () Bool)

(assert (= bs!1863717 (and d!2180432 d!2179976)))

(assert (=> bs!1863717 (= (dynLambda!26974 lambda!404538 (h!73651 lt!2493590)) (not (dynLambda!26974 lambda!404457 (h!73651 lt!2493590))))))

(declare-fun b_lambda!263355 () Bool)

(assert (=> (not b_lambda!263355) (not bs!1863717)))

(declare-fun m!7690174 () Bool)

(assert (=> bs!1863717 m!7690174))

(assert (=> b!6997351 d!2180432))

(declare-fun b_lambda!263327 () Bool)

(assert (= b_lambda!263311 (or b!6996717 b_lambda!263327)))

(declare-fun bs!1863718 () Bool)

(declare-fun d!2180434 () Bool)

(assert (= bs!1863718 (and d!2180434 b!6996717)))

(assert (=> bs!1863718 (= (dynLambda!26974 lambda!404457 lt!2493921) (matchZipper!2800 (set.insert lt!2493921 (as set.empty (Set Context!12512))) s!7408))))

(declare-fun m!7690176 () Bool)

(assert (=> bs!1863718 m!7690176))

(assert (=> bs!1863718 m!7690176))

(declare-fun m!7690178 () Bool)

(assert (=> bs!1863718 m!7690178))

(assert (=> d!2180274 d!2180434))

(declare-fun b_lambda!263329 () Bool)

(assert (= b_lambda!263321 (or b!6996719 b_lambda!263329)))

(assert (=> d!2180402 d!2179994))

(declare-fun b_lambda!263331 () Bool)

(assert (= b_lambda!263313 (or d!2179926 b_lambda!263331)))

(declare-fun bs!1863719 () Bool)

(declare-fun d!2180436 () Bool)

(assert (= bs!1863719 (and d!2180436 d!2179926)))

(assert (=> bs!1863719 (= (dynLambda!26980 lambda!404534 (h!73649 (exprs!6756 ct2!306))) (validRegex!8870 (h!73649 (exprs!6756 ct2!306))))))

(declare-fun m!7690180 () Bool)

(assert (=> bs!1863719 m!7690180))

(assert (=> b!6997508 d!2180436))

(declare-fun b_lambda!263333 () Bool)

(assert (= b_lambda!263323 (or b!6996710 b_lambda!263333)))

(declare-fun bs!1863720 () Bool)

(declare-fun d!2180438 () Bool)

(assert (= bs!1863720 (and d!2180438 b!6996710)))

(declare-fun lt!2493944 () Unit!161177)

(assert (=> bs!1863720 (= lt!2493944 (lemmaConcatPreservesForall!596 (exprs!6756 a!12822) (exprs!6756 ct2!306) lambda!404459))))

(assert (=> bs!1863720 (= (dynLambda!26973 lambda!404458 a!12822) (Context!12513 (++!15221 (exprs!6756 a!12822) (exprs!6756 ct2!306))))))

(declare-fun m!7690182 () Bool)

(assert (=> bs!1863720 m!7690182))

(declare-fun m!7690184 () Bool)

(assert (=> bs!1863720 m!7690184))

(assert (=> d!2180422 d!2180438))

(declare-fun b_lambda!263335 () Bool)

(assert (= b_lambda!263315 (or b!6996710 b_lambda!263335)))

(declare-fun bs!1863721 () Bool)

(declare-fun d!2180440 () Bool)

(assert (= bs!1863721 (and d!2180440 b!6996710)))

(assert (=> bs!1863721 (= (dynLambda!26980 lambda!404459 (h!73649 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)))) (validRegex!8870 (h!73649 (++!15221 (exprs!6756 lt!2493587) (exprs!6756 ct2!306)))))))

(declare-fun m!7690186 () Bool)

(assert (=> bs!1863721 m!7690186))

(assert (=> b!6997551 d!2180440))

(declare-fun b_lambda!263337 () Bool)

(assert (= b_lambda!263305 (or b!6996710 b_lambda!263337)))

(declare-fun bs!1863722 () Bool)

(declare-fun d!2180442 () Bool)

(assert (= bs!1863722 (and d!2180442 b!6996710)))

(assert (=> bs!1863722 (= (dynLambda!26980 lambda!404459 (h!73649 (++!15221 lt!2493545 (exprs!6756 ct2!306)))) (validRegex!8870 (h!73649 (++!15221 lt!2493545 (exprs!6756 ct2!306)))))))

(declare-fun m!7690188 () Bool)

(assert (=> bs!1863722 m!7690188))

(assert (=> b!6997440 d!2180442))

(declare-fun b_lambda!263339 () Bool)

(assert (= b_lambda!263295 (or b!6996719 b_lambda!263339)))

(assert (=> d!2180180 d!2179988))

(declare-fun b_lambda!263341 () Bool)

(assert (= b_lambda!263299 (or b!6996719 b_lambda!263341)))

(assert (=> d!2180184 d!2179990))

(declare-fun b_lambda!263343 () Bool)

(assert (= b_lambda!263307 (or b!6996710 b_lambda!263343)))

(declare-fun bs!1863723 () Bool)

(declare-fun d!2180444 () Bool)

(assert (= bs!1863723 (and d!2180444 b!6996710)))

(assert (=> bs!1863723 (= (dynLambda!26980 lambda!404459 (h!73649 lt!2493545)) (validRegex!8870 (h!73649 lt!2493545)))))

(declare-fun m!7690190 () Bool)

(assert (=> bs!1863723 m!7690190))

(assert (=> b!6997442 d!2180444))

(declare-fun b_lambda!263345 () Bool)

(assert (= b_lambda!263309 (or b!6996717 b_lambda!263345)))

(declare-fun bs!1863724 () Bool)

(declare-fun d!2180446 () Bool)

(assert (= bs!1863724 (and d!2180446 b!6996717)))

(assert (=> bs!1863724 (= (dynLambda!26974 lambda!404457 (h!73651 (toList!10620 lt!2493564))) (matchZipper!2800 (set.insert (h!73651 (toList!10620 lt!2493564)) (as set.empty (Set Context!12512))) s!7408))))

(declare-fun m!7690192 () Bool)

(assert (=> bs!1863724 m!7690192))

(assert (=> bs!1863724 m!7690192))

(declare-fun m!7690194 () Bool)

(assert (=> bs!1863724 m!7690194))

(assert (=> b!6997459 d!2180446))

(declare-fun b_lambda!263347 () Bool)

(assert (= b_lambda!263317 (or b!6996710 b_lambda!263347)))

(declare-fun bs!1863725 () Bool)

(declare-fun d!2180448 () Bool)

(assert (= bs!1863725 (and d!2180448 b!6996710)))

(assert (=> bs!1863725 (= (dynLambda!26980 lambda!404459 (h!73649 (exprs!6756 lt!2493587))) (validRegex!8870 (h!73649 (exprs!6756 lt!2493587))))))

(assert (=> bs!1863725 m!7688626))

(assert (=> b!6997553 d!2180448))

(declare-fun b_lambda!263349 () Bool)

(assert (= b_lambda!263303 (or d!2179984 b_lambda!263349)))

(declare-fun bs!1863726 () Bool)

(declare-fun d!2180450 () Bool)

(assert (= bs!1863726 (and d!2180450 d!2179984)))

(assert (=> bs!1863726 (= (dynLambda!26980 lambda!404542 (h!73649 (exprs!6756 setElem!48014))) (validRegex!8870 (h!73649 (exprs!6756 setElem!48014))))))

(declare-fun m!7690196 () Bool)

(assert (=> bs!1863726 m!7690196))

(assert (=> b!6997438 d!2180450))

(declare-fun b_lambda!263351 () Bool)

(assert (= b_lambda!263319 (or b!6996719 b_lambda!263351)))

(assert (=> d!2180368 d!2179992))

(declare-fun b_lambda!263353 () Bool)

(assert (= b_lambda!263297 (or b!6996710 b_lambda!263353)))

(assert (=> d!2180182 d!2179986))

(push 1)

(assert (not d!2180338))

(assert (not b!6997363))

(assert (not d!2180392))

(assert (not d!2180216))

(assert (not b!6997376))

(assert (not d!2180140))

(assert (not bm!635267))

(assert (not b!6997306))

(assert (not b!6997335))

(assert (not b!6997719))

(assert (not d!2180156))

(assert (not b!6997299))

(assert (not bm!635283))

(assert (not b_lambda!263265))

(assert (not b_lambda!263327))

(assert (not d!2180172))

(assert (not b!6997534))

(assert (not b!6997499))

(assert (not d!2180298))

(assert (not d!2180200))

(assert (not b!6997384))

(assert (not d!2180344))

(assert (not bs!1863718))

(assert (not b!6997652))

(assert (not d!2180422))

(assert (not b!6997308))

(assert (not d!2180402))

(assert (not d!2180280))

(assert (not b_lambda!263345))

(assert (not b_lambda!263259))

(assert (not d!2180390))

(assert (not b!6997568))

(assert (not bm!635262))

(assert (not b_lambda!263263))

(assert (not d!2180184))

(assert (not b!6997653))

(assert (not bm!635251))

(assert (not d!2180220))

(assert (not b!6997461))

(assert (not b!6997716))

(assert (not setNonEmpty!48031))

(assert (not b!6997509))

(assert (not b!6997342))

(assert (not b!6997456))

(assert (not b_lambda!263255))

(assert (not bm!635252))

(assert (not bs!1863719))

(assert (not d!2180176))

(assert (not b!6997296))

(assert (not bm!635257))

(assert (not b!6997507))

(assert (not b!6997280))

(assert (not bm!635284))

(assert (not b_lambda!263337))

(assert (not b!6997352))

(assert (not b!6997358))

(assert (not b!6997718))

(assert (not b!6997319))

(assert (not bm!635285))

(assert (not b!6997494))

(assert (not b!6997552))

(assert (not d!2180222))

(assert (not d!2180424))

(assert (not d!2180314))

(assert (not d!2180158))

(assert (not d!2180328))

(assert (not bm!635230))

(assert (not b_lambda!263347))

(assert (not b!6997554))

(assert (not b!6997354))

(assert (not bm!635261))

(assert (not b!6997300))

(assert (not b!6997576))

(assert (not bm!635215))

(assert (not d!2180320))

(assert (not b!6997317))

(assert (not b!6997360))

(assert (not b!6997578))

(assert (not bm!635229))

(assert (not b!6997386))

(assert (not bm!635232))

(assert (not b!6997343))

(assert (not d!2180428))

(assert (not b!6997526))

(assert (not b!6997432))

(assert (not bm!635260))

(assert (not b!6997573))

(assert (not d!2180204))

(assert (not b!6997346))

(assert (not b!6997535))

(assert (not b!6997714))

(assert (not d!2180304))

(assert (not bm!635277))

(assert (not b!6997569))

(assert (not b!6997566))

(assert (not d!2180170))

(assert (not bm!635253))

(assert (not b!6997359))

(assert (not b_lambda!263333))

(assert (not d!2180300))

(assert (not b!6997326))

(assert (not b!6997574))

(assert (not b!6997305))

(assert (not b!6997590))

(assert (not b!6997467))

(assert (not b!6997364))

(assert (not b!6997656))

(assert (not b!6997654))

(assert (not b!6997293))

(assert (not d!2180256))

(assert (not bm!635278))

(assert (not d!2180254))

(assert (not setNonEmpty!48032))

(assert (not b!6997567))

(assert (not b!6997570))

(assert (not b!6997708))

(assert (not bm!635216))

(assert (not b_lambda!263325))

(assert (not d!2180348))

(assert (not d!2180210))

(assert (not b!6997579))

(assert (not d!2180368))

(assert (not b!6997366))

(assert (not b!6997681))

(assert (not b!6997617))

(assert (not b_lambda!263257))

(assert (not d!2180128))

(assert (not b!6997304))

(assert (not b!6997281))

(assert (not b!6997365))

(assert (not b!6997425))

(assert (not bm!635222))

(assert (not bs!1863721))

(assert (not d!2180430))

(assert (not b_lambda!263355))

(assert (not bm!635239))

(assert (not d!2180146))

(assert (not b_lambda!263353))

(assert (not b!6997362))

(assert (not d!2180302))

(assert (not bm!635237))

(assert (not d!2180186))

(assert (not b!6997610))

(assert (not b_lambda!263351))

(assert (not b!6997290))

(assert (not b!6997685))

(assert (not b_lambda!263329))

(assert (not b!6997443))

(assert (not b!6997577))

(assert (not b!6997619))

(assert (not setNonEmpty!48029))

(assert (not b!6997649))

(assert (not b!6997314))

(assert (not b!6997382))

(assert (not bm!635245))

(assert (not d!2180208))

(assert (not bs!1863723))

(assert (not b!6997502))

(assert (not b_lambda!263261))

(assert (not d!2180408))

(assert (not d!2180180))

(assert (not d!2180274))

(assert (not bm!635246))

(assert (not d!2180152))

(assert (not bm!635240))

(assert (not bm!635279))

(assert (not b!6997684))

(assert (not b!6997320))

(assert (not d!2180192))

(assert (not b!6997689))

(assert (not b!6997717))

(assert (not b!6997492))

(assert (not b!6997422))

(assert (not b!6997431))

(assert (not b!6997560))

(assert (not b!6997457))

(assert (not b!6997441))

(assert (not b_lambda!263339))

(assert (not bm!635247))

(assert (not d!2180412))

(assert (not b!6997504))

(assert (not setNonEmpty!48030))

(assert (not b!6997322))

(assert (not b!6997439))

(assert (not d!2180190))

(assert (not b!6997533))

(assert (not b!6997712))

(assert (not b!6997676))

(assert (not bm!635268))

(assert (not d!2180168))

(assert (not bm!635211))

(assert (not b!6997659))

(assert (not d!2180202))

(assert (not b!6997710))

(assert (not bm!635241))

(assert (not d!2180350))

(assert (not d!2180142))

(assert (not b!6997316))

(assert (not b!6997485))

(assert (not bs!1863720))

(assert (not bs!1863722))

(assert (not b_lambda!263331))

(assert (not bm!635266))

(assert (not b_lambda!263253))

(assert (not bs!1863725))

(assert (not b!6997283))

(assert (not b!6997672))

(assert (not b!6997687))

(assert (not bs!1863726))

(assert (not d!2180324))

(assert (not b!6997673))

(assert (not d!2180188))

(assert (not d!2180232))

(assert (not b!6997345))

(assert (not b!6997474))

(assert (not b!6997477))

(assert (not b!6997505))

(assert (not b!6997571))

(assert (not b!6997327))

(assert (not b_lambda!263349))

(assert (not b!6997323))

(assert (not b!6997674))

(assert (not d!2180166))

(assert (not b!6997715))

(assert (not d!2180230))

(assert (not b!6997596))

(assert (not b!6997549))

(assert (not setNonEmpty!48033))

(assert (not bm!635286))

(assert (not b!6997621))

(assert (not b!6997525))

(assert (not d!2180154))

(assert (not bm!635276))

(assert (not b!6997312))

(assert (not d!2180308))

(assert (not d!2180234))

(assert (not b_lambda!263335))

(assert (not b!6997424))

(assert (not bm!635271))

(assert (not bm!635269))

(assert (not bm!635258))

(assert (not b!6997473))

(assert (not b!6997660))

(assert (not d!2180228))

(assert (not b!6997428))

(assert (not d!2180426))

(assert (not d!2180404))

(assert (not b!6997515))

(assert (not d!2180182))

(assert (not b!6997313))

(assert (not d!2180164))

(assert (not b!6997372))

(assert (not b!6997297))

(assert (not bm!635236))

(assert (not d!2180268))

(assert (not d!2180174))

(assert (not b!6997426))

(assert (not d!2180144))

(assert (not b!6997357))

(assert (not b!6997501))

(assert (not d!2180148))

(assert (not d!2180150))

(assert (not b!6997328))

(assert (not d!2180386))

(assert (not d!2180284))

(assert (not d!2180282))

(assert (not d!2180162))

(assert (not b!6997709))

(assert (not d!2180218))

(assert (not d!2180306))

(assert (not d!2180224))

(assert (not b!6997392))

(assert (not b!6997496))

(assert (not b_lambda!263341))

(assert (not bm!635221))

(assert (not b!6997374))

(assert (not b!6997541))

(assert (not b!6997301))

(assert (not setNonEmpty!48026))

(assert tp_is_empty!43745)

(assert (not b!6997292))

(assert (not b!6997361))

(assert (not b!6997587))

(assert (not b!6997711))

(assert (not b!6997355))

(assert (not b!6997679))

(assert (not d!2180262))

(assert (not b!6997666))

(assert (not b!6997624))

(assert (not bs!1863724))

(assert (not bm!635217))

(assert (not d!2180132))

(assert (not b!6997309))

(assert (not d!2180346))

(assert (not b!6997651))

(assert (not d!2180276))

(assert (not b!6997695))

(assert (not d!2180340))

(assert (not d!2180272))

(assert (not b_lambda!263343))

(assert (not b!6997622))

(assert (not b!6997321))

(assert (not b!6997548))

(assert (not d!2180130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

