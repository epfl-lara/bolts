; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686474 () Bool)

(assert start!686474)

(declare-fun b!7068776 () Bool)

(assert (=> b!7068776 true))

(declare-fun b!7068788 () Bool)

(assert (=> b!7068788 true))

(declare-fun b!7068783 () Bool)

(assert (=> b!7068783 true))

(declare-fun b!7068770 () Bool)

(declare-fun e!4249710 () Bool)

(declare-datatypes ((C!35526 0))(
  ( (C!35527 (val!27465 Int)) )
))
(declare-datatypes ((Regex!17628 0))(
  ( (ElementMatch!17628 (c!1318367 C!35526)) (Concat!26473 (regOne!35768 Regex!17628) (regTwo!35768 Regex!17628)) (EmptyExpr!17628) (Star!17628 (reg!17957 Regex!17628)) (EmptyLang!17628) (Union!17628 (regOne!35769 Regex!17628) (regTwo!35769 Regex!17628)) )
))
(declare-datatypes ((List!68410 0))(
  ( (Nil!68286) (Cons!68286 (h!74734 Regex!17628) (t!382193 List!68410)) )
))
(declare-datatypes ((Context!13248 0))(
  ( (Context!13249 (exprs!7124 List!68410)) )
))
(declare-fun lt!2543137 () (Set Context!13248))

(declare-datatypes ((List!68411 0))(
  ( (Nil!68287) (Cons!68287 (h!74735 C!35526) (t!382194 List!68411)) )
))
(declare-fun s!7408 () List!68411)

(declare-fun matchZipper!3168 ((Set Context!13248) List!68411) Bool)

(assert (=> b!7068770 (= e!4249710 (not (matchZipper!3168 lt!2543137 (t!382194 s!7408))))))

(declare-fun lambda!424607 () Int)

(declare-datatypes ((Unit!161966 0))(
  ( (Unit!161967) )
))
(declare-fun lt!2543143 () Unit!161966)

(declare-fun ct2!306 () Context!13248)

(declare-fun lt!2543134 () List!68410)

(declare-fun lemmaConcatPreservesForall!939 (List!68410 List!68410 Int) Unit!161966)

(assert (=> b!7068770 (= lt!2543143 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun b!7068771 () Bool)

(declare-fun e!4249720 () Bool)

(declare-fun e!4249715 () Bool)

(assert (=> b!7068771 (= e!4249720 e!4249715)))

(declare-fun res!2886603 () Bool)

(assert (=> b!7068771 (=> res!2886603 e!4249715)))

(declare-fun lt!2543126 () Bool)

(assert (=> b!7068771 (= res!2886603 (not lt!2543126))))

(declare-fun lt!2543132 () Unit!161966)

(assert (=> b!7068771 (= lt!2543132 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lt!2543139 () Unit!161966)

(assert (=> b!7068771 (= lt!2543139 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun b!7068772 () Bool)

(declare-fun res!2886594 () Bool)

(declare-fun e!4249712 () Bool)

(assert (=> b!7068772 (=> res!2886594 e!4249712)))

(declare-fun lt!2543136 () Context!13248)

(declare-fun lt!2543119 () (Set Context!13248))

(assert (=> b!7068772 (= res!2886594 (not (set.member lt!2543136 lt!2543119)))))

(declare-fun b!7068773 () Bool)

(declare-fun e!4249706 () Bool)

(declare-fun tp_is_empty!44481 () Bool)

(declare-fun tp!1941936 () Bool)

(assert (=> b!7068773 (= e!4249706 (and tp_is_empty!44481 tp!1941936))))

(declare-fun b!7068774 () Bool)

(declare-fun res!2886598 () Bool)

(declare-fun e!4249707 () Bool)

(assert (=> b!7068774 (=> (not res!2886598) (not e!4249707))))

(assert (=> b!7068774 (= res!2886598 (is-Cons!68287 s!7408))))

(declare-fun b!7068775 () Bool)

(declare-fun e!4249718 () Bool)

(declare-fun e!4249716 () Bool)

(assert (=> b!7068775 (= e!4249718 e!4249716)))

(declare-fun res!2886610 () Bool)

(assert (=> b!7068775 (=> res!2886610 e!4249716)))

(declare-fun lt!2543133 () (Set Context!13248))

(declare-fun lt!2543129 () (Set Context!13248))

(assert (=> b!7068775 (= res!2886610 (not (= lt!2543133 lt!2543129)))))

(declare-fun lt!2543114 () Context!13248)

(assert (=> b!7068775 (= lt!2543133 (set.insert lt!2543114 (as set.empty (Set Context!13248))))))

(declare-fun lt!2543125 () Context!13248)

(declare-fun lt!2543128 () Unit!161966)

(assert (=> b!7068775 (= lt!2543128 (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543125) (exprs!7124 ct2!306) lambda!424607))))

(assert (=> b!7068776 (= e!4249707 (not e!4249712))))

(declare-fun res!2886601 () Bool)

(assert (=> b!7068776 (=> res!2886601 e!4249712)))

(assert (=> b!7068776 (= res!2886601 (not (matchZipper!3168 lt!2543129 s!7408)))))

(assert (=> b!7068776 (= lt!2543129 (set.insert lt!2543136 (as set.empty (Set Context!13248))))))

(declare-fun lambda!424605 () Int)

(declare-fun getWitness!1720 ((Set Context!13248) Int) Context!13248)

(assert (=> b!7068776 (= lt!2543136 (getWitness!1720 lt!2543119 lambda!424605))))

(declare-datatypes ((List!68412 0))(
  ( (Nil!68288) (Cons!68288 (h!74736 Context!13248) (t!382195 List!68412)) )
))
(declare-fun lt!2543116 () List!68412)

(declare-fun exists!3663 (List!68412 Int) Bool)

(assert (=> b!7068776 (exists!3663 lt!2543116 lambda!424605)))

(declare-fun lt!2543118 () Unit!161966)

(declare-fun lemmaZipperMatchesExistsMatchingContext!549 (List!68412 List!68411) Unit!161966)

(assert (=> b!7068776 (= lt!2543118 (lemmaZipperMatchesExistsMatchingContext!549 lt!2543116 s!7408))))

(declare-fun toList!10969 ((Set Context!13248)) List!68412)

(assert (=> b!7068776 (= lt!2543116 (toList!10969 lt!2543119))))

(declare-fun b!7068777 () Bool)

(declare-fun e!4249719 () Bool)

(declare-fun e!4249709 () Bool)

(assert (=> b!7068777 (= e!4249719 e!4249709)))

(declare-fun res!2886595 () Bool)

(assert (=> b!7068777 (=> res!2886595 e!4249709)))

(assert (=> b!7068777 (= res!2886595 e!4249710)))

(declare-fun res!2886608 () Bool)

(assert (=> b!7068777 (=> (not res!2886608) (not e!4249710))))

(declare-fun lt!2543142 () Bool)

(assert (=> b!7068777 (= res!2886608 (not (= lt!2543142 lt!2543126)))))

(declare-fun lt!2543131 () (Set Context!13248))

(assert (=> b!7068777 (= lt!2543142 (matchZipper!3168 lt!2543131 (t!382194 s!7408)))))

(declare-fun lt!2543127 () Unit!161966)

(assert (=> b!7068777 (= lt!2543127 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lt!2543145 () (Set Context!13248))

(declare-fun e!4249713 () Bool)

(assert (=> b!7068777 (= (matchZipper!3168 lt!2543145 (t!382194 s!7408)) e!4249713)))

(declare-fun res!2886604 () Bool)

(assert (=> b!7068777 (=> res!2886604 e!4249713)))

(assert (=> b!7068777 (= res!2886604 lt!2543126)))

(declare-fun lt!2543135 () (Set Context!13248))

(assert (=> b!7068777 (= lt!2543126 (matchZipper!3168 lt!2543135 (t!382194 s!7408)))))

(declare-fun lt!2543140 () Unit!161966)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1641 ((Set Context!13248) (Set Context!13248) List!68411) Unit!161966)

(assert (=> b!7068777 (= lt!2543140 (lemmaZipperConcatMatchesSameAsBothZippers!1641 lt!2543135 lt!2543137 (t!382194 s!7408)))))

(declare-fun lt!2543120 () Unit!161966)

(assert (=> b!7068777 (= lt!2543120 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lt!2543141 () Unit!161966)

(assert (=> b!7068777 (= lt!2543141 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun b!7068778 () Bool)

(declare-fun e!4249717 () Bool)

(declare-fun e!4249708 () Bool)

(assert (=> b!7068778 (= e!4249717 e!4249708)))

(declare-fun res!2886596 () Bool)

(assert (=> b!7068778 (=> res!2886596 e!4249708)))

(declare-fun nullable!7311 (Regex!17628) Bool)

(assert (=> b!7068778 (= res!2886596 (not (nullable!7311 (h!74734 (exprs!7124 lt!2543125)))))))

(declare-fun lt!2543124 () Context!13248)

(assert (=> b!7068778 (= lt!2543124 (Context!13249 lt!2543134))))

(declare-fun tail!13801 (List!68410) List!68410)

(assert (=> b!7068778 (= lt!2543134 (tail!13801 (exprs!7124 lt!2543125)))))

(declare-fun b!7068779 () Bool)

(assert (=> b!7068779 (= e!4249713 (matchZipper!3168 lt!2543137 (t!382194 s!7408)))))

(declare-fun b!7068780 () Bool)

(declare-fun res!2886599 () Bool)

(assert (=> b!7068780 (=> res!2886599 e!4249717)))

(declare-fun isEmpty!39851 (List!68410) Bool)

(assert (=> b!7068780 (= res!2886599 (isEmpty!39851 (exprs!7124 lt!2543125)))))

(declare-fun res!2886597 () Bool)

(assert (=> start!686474 (=> (not res!2886597) (not e!4249707))))

(assert (=> start!686474 (= res!2886597 (matchZipper!3168 lt!2543119 s!7408))))

(declare-fun z1!570 () (Set Context!13248))

(declare-fun appendTo!749 ((Set Context!13248) Context!13248) (Set Context!13248))

(assert (=> start!686474 (= lt!2543119 (appendTo!749 z1!570 ct2!306))))

(assert (=> start!686474 e!4249707))

(declare-fun condSetEmpty!50177 () Bool)

(assert (=> start!686474 (= condSetEmpty!50177 (= z1!570 (as set.empty (Set Context!13248))))))

(declare-fun setRes!50177 () Bool)

(assert (=> start!686474 setRes!50177))

(declare-fun e!4249714 () Bool)

(declare-fun inv!86930 (Context!13248) Bool)

(assert (=> start!686474 (and (inv!86930 ct2!306) e!4249714)))

(assert (=> start!686474 e!4249706))

(declare-fun b!7068781 () Bool)

(declare-fun tp!1941937 () Bool)

(assert (=> b!7068781 (= e!4249714 tp!1941937)))

(declare-fun b!7068782 () Bool)

(declare-fun res!2886600 () Bool)

(assert (=> b!7068782 (=> res!2886600 e!4249717)))

(assert (=> b!7068782 (= res!2886600 (not (is-Cons!68286 (exprs!7124 lt!2543125))))))

(assert (=> b!7068783 (= e!4249716 e!4249717)))

(declare-fun res!2886602 () Bool)

(assert (=> b!7068783 (=> res!2886602 e!4249717)))

(declare-fun derivationStepZipper!3078 ((Set Context!13248) C!35526) (Set Context!13248))

(assert (=> b!7068783 (= res!2886602 (not (= (derivationStepZipper!3078 lt!2543133 (h!74735 s!7408)) lt!2543131)))))

(declare-fun lambda!424608 () Int)

(declare-fun flatMap!2554 ((Set Context!13248) Int) (Set Context!13248))

(declare-fun derivationStepZipperUp!2212 (Context!13248 C!35526) (Set Context!13248))

(assert (=> b!7068783 (= (flatMap!2554 lt!2543133 lambda!424608) (derivationStepZipperUp!2212 lt!2543114 (h!74735 s!7408)))))

(declare-fun lt!2543115 () Unit!161966)

(declare-fun lemmaFlatMapOnSingletonSet!2063 ((Set Context!13248) Context!13248 Int) Unit!161966)

(assert (=> b!7068783 (= lt!2543115 (lemmaFlatMapOnSingletonSet!2063 lt!2543133 lt!2543114 lambda!424608))))

(assert (=> b!7068783 (= lt!2543131 (derivationStepZipperUp!2212 lt!2543114 (h!74735 s!7408)))))

(declare-fun lt!2543117 () Unit!161966)

(assert (=> b!7068783 (= lt!2543117 (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543125) (exprs!7124 ct2!306) lambda!424607))))

(declare-fun b!7068784 () Bool)

(assert (=> b!7068784 (= e!4249708 e!4249719)))

(declare-fun res!2886606 () Bool)

(assert (=> b!7068784 (=> res!2886606 e!4249719)))

(assert (=> b!7068784 (= res!2886606 (not (= lt!2543131 lt!2543145)))))

(assert (=> b!7068784 (= lt!2543145 (set.union lt!2543135 lt!2543137))))

(declare-fun lt!2543123 () Context!13248)

(assert (=> b!7068784 (= lt!2543137 (derivationStepZipperUp!2212 lt!2543123 (h!74735 s!7408)))))

(declare-fun derivationStepZipperDown!2262 (Regex!17628 Context!13248 C!35526) (Set Context!13248))

(assert (=> b!7068784 (= lt!2543135 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543123 (h!74735 s!7408)))))

(declare-fun ++!15745 (List!68410 List!68410) List!68410)

(assert (=> b!7068784 (= lt!2543123 (Context!13249 (++!15745 lt!2543134 (exprs!7124 ct2!306))))))

(declare-fun lt!2543146 () Unit!161966)

(assert (=> b!7068784 (= lt!2543146 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lt!2543113 () Unit!161966)

(assert (=> b!7068784 (= lt!2543113 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun tp!1941934 () Bool)

(declare-fun e!4249711 () Bool)

(declare-fun setNonEmpty!50177 () Bool)

(declare-fun setElem!50177 () Context!13248)

(assert (=> setNonEmpty!50177 (= setRes!50177 (and tp!1941934 (inv!86930 setElem!50177) e!4249711))))

(declare-fun setRest!50177 () (Set Context!13248))

(assert (=> setNonEmpty!50177 (= z1!570 (set.union (set.insert setElem!50177 (as set.empty (Set Context!13248))) setRest!50177))))

(declare-fun setIsEmpty!50177 () Bool)

(assert (=> setIsEmpty!50177 setRes!50177))

(declare-fun b!7068785 () Bool)

(assert (=> b!7068785 (= e!4249715 (inv!86930 lt!2543123))))

(declare-fun lt!2543121 () Unit!161966)

(assert (=> b!7068785 (= lt!2543121 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(assert (=> b!7068785 (= lt!2543135 (appendTo!749 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543124 (h!74735 s!7408)) ct2!306))))

(declare-fun lt!2543130 () Unit!161966)

(assert (=> b!7068785 (= lt!2543130 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lt!2543144 () Unit!161966)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!99 (Context!13248 Regex!17628 C!35526 Context!13248) Unit!161966)

(assert (=> b!7068785 (= lt!2543144 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!99 lt!2543124 (h!74734 (exprs!7124 lt!2543125)) (h!74735 s!7408) ct2!306))))

(declare-fun b!7068786 () Bool)

(declare-fun tp!1941935 () Bool)

(assert (=> b!7068786 (= e!4249711 tp!1941935)))

(declare-fun b!7068787 () Bool)

(assert (=> b!7068787 (= e!4249709 e!4249720)))

(declare-fun res!2886609 () Bool)

(assert (=> b!7068787 (=> res!2886609 e!4249720)))

(assert (=> b!7068787 (= res!2886609 (matchZipper!3168 lt!2543137 (t!382194 s!7408)))))

(declare-fun lt!2543122 () Unit!161966)

(assert (=> b!7068787 (= lt!2543122 (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(assert (=> b!7068788 (= e!4249712 e!4249718)))

(declare-fun res!2886605 () Bool)

(assert (=> b!7068788 (=> res!2886605 e!4249718)))

(assert (=> b!7068788 (= res!2886605 (or (not (= lt!2543114 lt!2543136)) (not (set.member lt!2543125 z1!570))))))

(assert (=> b!7068788 (= lt!2543114 (Context!13249 (++!15745 (exprs!7124 lt!2543125) (exprs!7124 ct2!306))))))

(declare-fun lt!2543138 () Unit!161966)

(assert (=> b!7068788 (= lt!2543138 (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543125) (exprs!7124 ct2!306) lambda!424607))))

(declare-fun lambda!424606 () Int)

(declare-fun mapPost2!457 ((Set Context!13248) Int Context!13248) Context!13248)

(assert (=> b!7068788 (= lt!2543125 (mapPost2!457 z1!570 lambda!424606 lt!2543136))))

(declare-fun b!7068789 () Bool)

(declare-fun res!2886607 () Bool)

(assert (=> b!7068789 (=> res!2886607 e!4249709)))

(assert (=> b!7068789 (= res!2886607 (not lt!2543142))))

(assert (= (and start!686474 res!2886597) b!7068774))

(assert (= (and b!7068774 res!2886598) b!7068776))

(assert (= (and b!7068776 (not res!2886601)) b!7068772))

(assert (= (and b!7068772 (not res!2886594)) b!7068788))

(assert (= (and b!7068788 (not res!2886605)) b!7068775))

(assert (= (and b!7068775 (not res!2886610)) b!7068783))

(assert (= (and b!7068783 (not res!2886602)) b!7068782))

(assert (= (and b!7068782 (not res!2886600)) b!7068780))

(assert (= (and b!7068780 (not res!2886599)) b!7068778))

(assert (= (and b!7068778 (not res!2886596)) b!7068784))

(assert (= (and b!7068784 (not res!2886606)) b!7068777))

(assert (= (and b!7068777 (not res!2886604)) b!7068779))

(assert (= (and b!7068777 res!2886608) b!7068770))

(assert (= (and b!7068777 (not res!2886595)) b!7068789))

(assert (= (and b!7068789 (not res!2886607)) b!7068787))

(assert (= (and b!7068787 (not res!2886609)) b!7068771))

(assert (= (and b!7068771 (not res!2886603)) b!7068785))

(assert (= (and start!686474 condSetEmpty!50177) setIsEmpty!50177))

(assert (= (and start!686474 (not condSetEmpty!50177)) setNonEmpty!50177))

(assert (= setNonEmpty!50177 b!7068786))

(assert (= start!686474 b!7068781))

(assert (= (and start!686474 (is-Cons!68287 s!7408)) b!7068773))

(declare-fun m!7793322 () Bool)

(assert (=> b!7068772 m!7793322))

(declare-fun m!7793324 () Bool)

(assert (=> b!7068784 m!7793324))

(assert (=> b!7068784 m!7793324))

(declare-fun m!7793326 () Bool)

(assert (=> b!7068784 m!7793326))

(declare-fun m!7793328 () Bool)

(assert (=> b!7068784 m!7793328))

(declare-fun m!7793330 () Bool)

(assert (=> b!7068784 m!7793330))

(declare-fun m!7793332 () Bool)

(assert (=> b!7068787 m!7793332))

(assert (=> b!7068787 m!7793324))

(declare-fun m!7793334 () Bool)

(assert (=> b!7068788 m!7793334))

(declare-fun m!7793336 () Bool)

(assert (=> b!7068788 m!7793336))

(declare-fun m!7793338 () Bool)

(assert (=> b!7068788 m!7793338))

(declare-fun m!7793340 () Bool)

(assert (=> b!7068788 m!7793340))

(declare-fun m!7793342 () Bool)

(assert (=> setNonEmpty!50177 m!7793342))

(declare-fun m!7793344 () Bool)

(assert (=> b!7068780 m!7793344))

(declare-fun m!7793346 () Bool)

(assert (=> b!7068776 m!7793346))

(declare-fun m!7793348 () Bool)

(assert (=> b!7068776 m!7793348))

(declare-fun m!7793350 () Bool)

(assert (=> b!7068776 m!7793350))

(declare-fun m!7793352 () Bool)

(assert (=> b!7068776 m!7793352))

(declare-fun m!7793354 () Bool)

(assert (=> b!7068776 m!7793354))

(declare-fun m!7793356 () Bool)

(assert (=> b!7068776 m!7793356))

(declare-fun m!7793358 () Bool)

(assert (=> b!7068778 m!7793358))

(declare-fun m!7793360 () Bool)

(assert (=> b!7068778 m!7793360))

(assert (=> b!7068777 m!7793324))

(assert (=> b!7068777 m!7793324))

(declare-fun m!7793362 () Bool)

(assert (=> b!7068777 m!7793362))

(assert (=> b!7068777 m!7793324))

(declare-fun m!7793364 () Bool)

(assert (=> b!7068777 m!7793364))

(declare-fun m!7793366 () Bool)

(assert (=> b!7068777 m!7793366))

(declare-fun m!7793368 () Bool)

(assert (=> b!7068777 m!7793368))

(assert (=> b!7068771 m!7793324))

(assert (=> b!7068771 m!7793324))

(assert (=> b!7068779 m!7793332))

(declare-fun m!7793370 () Bool)

(assert (=> b!7068775 m!7793370))

(assert (=> b!7068775 m!7793338))

(declare-fun m!7793372 () Bool)

(assert (=> b!7068785 m!7793372))

(declare-fun m!7793374 () Bool)

(assert (=> b!7068785 m!7793374))

(assert (=> b!7068785 m!7793324))

(declare-fun m!7793376 () Bool)

(assert (=> b!7068785 m!7793376))

(declare-fun m!7793378 () Bool)

(assert (=> b!7068785 m!7793378))

(assert (=> b!7068785 m!7793324))

(assert (=> b!7068785 m!7793376))

(declare-fun m!7793380 () Bool)

(assert (=> b!7068783 m!7793380))

(assert (=> b!7068783 m!7793338))

(declare-fun m!7793382 () Bool)

(assert (=> b!7068783 m!7793382))

(declare-fun m!7793384 () Bool)

(assert (=> b!7068783 m!7793384))

(declare-fun m!7793386 () Bool)

(assert (=> b!7068783 m!7793386))

(assert (=> b!7068770 m!7793332))

(assert (=> b!7068770 m!7793324))

(declare-fun m!7793388 () Bool)

(assert (=> start!686474 m!7793388))

(declare-fun m!7793390 () Bool)

(assert (=> start!686474 m!7793390))

(declare-fun m!7793392 () Bool)

(assert (=> start!686474 m!7793392))

(push 1)

(assert (not b!7068783))

(assert tp_is_empty!44481)

(assert (not b!7068775))

(assert (not b!7068788))

(assert (not b!7068776))

(assert (not b!7068786))

(assert (not b!7068780))

(assert (not start!686474))

(assert (not b!7068770))

(assert (not b!7068777))

(assert (not b!7068781))

(assert (not b!7068771))

(assert (not setNonEmpty!50177))

(assert (not b!7068773))

(assert (not b!7068787))

(assert (not b!7068779))

(assert (not b!7068785))

(assert (not b!7068778))

(assert (not b!7068784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2210568 () Bool)

(declare-fun forall!16577 (List!68410 Int) Bool)

(assert (=> d!2210568 (forall!16577 (++!15745 lt!2543134 (exprs!7124 ct2!306)) lambda!424607)))

(declare-fun lt!2543253 () Unit!161966)

(declare-fun choose!54126 (List!68410 List!68410 Int) Unit!161966)

(assert (=> d!2210568 (= lt!2543253 (choose!54126 lt!2543134 (exprs!7124 ct2!306) lambda!424607))))

(assert (=> d!2210568 (forall!16577 lt!2543134 lambda!424607)))

(assert (=> d!2210568 (= (lemmaConcatPreservesForall!939 lt!2543134 (exprs!7124 ct2!306) lambda!424607) lt!2543253)))

(declare-fun bs!1880297 () Bool)

(assert (= bs!1880297 d!2210568))

(assert (=> bs!1880297 m!7793326))

(assert (=> bs!1880297 m!7793326))

(declare-fun m!7793466 () Bool)

(assert (=> bs!1880297 m!7793466))

(declare-fun m!7793468 () Bool)

(assert (=> bs!1880297 m!7793468))

(declare-fun m!7793470 () Bool)

(assert (=> bs!1880297 m!7793470))

(assert (=> b!7068771 d!2210568))

(declare-fun d!2210570 () Bool)

(declare-fun c!1318379 () Bool)

(declare-fun isEmpty!39853 (List!68411) Bool)

(assert (=> d!2210570 (= c!1318379 (isEmpty!39853 (t!382194 s!7408)))))

(declare-fun e!4249768 () Bool)

(assert (=> d!2210570 (= (matchZipper!3168 lt!2543137 (t!382194 s!7408)) e!4249768)))

(declare-fun b!7068866 () Bool)

(declare-fun nullableZipper!2689 ((Set Context!13248)) Bool)

(assert (=> b!7068866 (= e!4249768 (nullableZipper!2689 lt!2543137))))

(declare-fun b!7068867 () Bool)

(declare-fun head!14397 (List!68411) C!35526)

(declare-fun tail!13803 (List!68411) List!68411)

(assert (=> b!7068867 (= e!4249768 (matchZipper!3168 (derivationStepZipper!3078 lt!2543137 (head!14397 (t!382194 s!7408))) (tail!13803 (t!382194 s!7408))))))

(assert (= (and d!2210570 c!1318379) b!7068866))

(assert (= (and d!2210570 (not c!1318379)) b!7068867))

(declare-fun m!7793472 () Bool)

(assert (=> d!2210570 m!7793472))

(declare-fun m!7793474 () Bool)

(assert (=> b!7068866 m!7793474))

(declare-fun m!7793476 () Bool)

(assert (=> b!7068867 m!7793476))

(assert (=> b!7068867 m!7793476))

(declare-fun m!7793478 () Bool)

(assert (=> b!7068867 m!7793478))

(declare-fun m!7793480 () Bool)

(assert (=> b!7068867 m!7793480))

(assert (=> b!7068867 m!7793478))

(assert (=> b!7068867 m!7793480))

(declare-fun m!7793482 () Bool)

(assert (=> b!7068867 m!7793482))

(assert (=> b!7068770 d!2210570))

(assert (=> b!7068770 d!2210568))

(declare-fun d!2210572 () Bool)

(assert (=> d!2210572 (= (isEmpty!39851 (exprs!7124 lt!2543125)) (is-Nil!68286 (exprs!7124 lt!2543125)))))

(assert (=> b!7068780 d!2210572))

(declare-fun b!7068876 () Bool)

(declare-fun e!4249774 () List!68410)

(assert (=> b!7068876 (= e!4249774 (exprs!7124 ct2!306))))

(declare-fun b!7068879 () Bool)

(declare-fun e!4249773 () Bool)

(declare-fun lt!2543256 () List!68410)

(assert (=> b!7068879 (= e!4249773 (or (not (= (exprs!7124 ct2!306) Nil!68286)) (= lt!2543256 (exprs!7124 lt!2543125))))))

(declare-fun d!2210574 () Bool)

(assert (=> d!2210574 e!4249773))

(declare-fun res!2886667 () Bool)

(assert (=> d!2210574 (=> (not res!2886667) (not e!4249773))))

(declare-fun content!13765 (List!68410) (Set Regex!17628))

(assert (=> d!2210574 (= res!2886667 (= (content!13765 lt!2543256) (set.union (content!13765 (exprs!7124 lt!2543125)) (content!13765 (exprs!7124 ct2!306)))))))

(assert (=> d!2210574 (= lt!2543256 e!4249774)))

(declare-fun c!1318382 () Bool)

(assert (=> d!2210574 (= c!1318382 (is-Nil!68286 (exprs!7124 lt!2543125)))))

(assert (=> d!2210574 (= (++!15745 (exprs!7124 lt!2543125) (exprs!7124 ct2!306)) lt!2543256)))

(declare-fun b!7068877 () Bool)

(assert (=> b!7068877 (= e!4249774 (Cons!68286 (h!74734 (exprs!7124 lt!2543125)) (++!15745 (t!382193 (exprs!7124 lt!2543125)) (exprs!7124 ct2!306))))))

(declare-fun b!7068878 () Bool)

(declare-fun res!2886668 () Bool)

(assert (=> b!7068878 (=> (not res!2886668) (not e!4249773))))

(declare-fun size!41198 (List!68410) Int)

(assert (=> b!7068878 (= res!2886668 (= (size!41198 lt!2543256) (+ (size!41198 (exprs!7124 lt!2543125)) (size!41198 (exprs!7124 ct2!306)))))))

(assert (= (and d!2210574 c!1318382) b!7068876))

(assert (= (and d!2210574 (not c!1318382)) b!7068877))

(assert (= (and d!2210574 res!2886667) b!7068878))

(assert (= (and b!7068878 res!2886668) b!7068879))

(declare-fun m!7793484 () Bool)

(assert (=> d!2210574 m!7793484))

(declare-fun m!7793486 () Bool)

(assert (=> d!2210574 m!7793486))

(declare-fun m!7793488 () Bool)

(assert (=> d!2210574 m!7793488))

(declare-fun m!7793490 () Bool)

(assert (=> b!7068877 m!7793490))

(declare-fun m!7793492 () Bool)

(assert (=> b!7068878 m!7793492))

(declare-fun m!7793494 () Bool)

(assert (=> b!7068878 m!7793494))

(declare-fun m!7793496 () Bool)

(assert (=> b!7068878 m!7793496))

(assert (=> b!7068788 d!2210574))

(declare-fun d!2210576 () Bool)

(assert (=> d!2210576 (forall!16577 (++!15745 (exprs!7124 lt!2543125) (exprs!7124 ct2!306)) lambda!424607)))

(declare-fun lt!2543257 () Unit!161966)

(assert (=> d!2210576 (= lt!2543257 (choose!54126 (exprs!7124 lt!2543125) (exprs!7124 ct2!306) lambda!424607))))

(assert (=> d!2210576 (forall!16577 (exprs!7124 lt!2543125) lambda!424607)))

(assert (=> d!2210576 (= (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543125) (exprs!7124 ct2!306) lambda!424607) lt!2543257)))

(declare-fun bs!1880298 () Bool)

(assert (= bs!1880298 d!2210576))

(assert (=> bs!1880298 m!7793336))

(assert (=> bs!1880298 m!7793336))

(declare-fun m!7793498 () Bool)

(assert (=> bs!1880298 m!7793498))

(declare-fun m!7793500 () Bool)

(assert (=> bs!1880298 m!7793500))

(declare-fun m!7793502 () Bool)

(assert (=> bs!1880298 m!7793502))

(assert (=> b!7068788 d!2210576))

(declare-fun d!2210578 () Bool)

(declare-fun e!4249777 () Bool)

(assert (=> d!2210578 e!4249777))

(declare-fun res!2886671 () Bool)

(assert (=> d!2210578 (=> (not res!2886671) (not e!4249777))))

(declare-fun lt!2543260 () Context!13248)

(declare-fun dynLambda!27759 (Int Context!13248) Context!13248)

(assert (=> d!2210578 (= res!2886671 (= lt!2543136 (dynLambda!27759 lambda!424606 lt!2543260)))))

(declare-fun choose!54127 ((Set Context!13248) Int Context!13248) Context!13248)

(assert (=> d!2210578 (= lt!2543260 (choose!54127 z1!570 lambda!424606 lt!2543136))))

(declare-fun map!15972 ((Set Context!13248) Int) (Set Context!13248))

(assert (=> d!2210578 (set.member lt!2543136 (map!15972 z1!570 lambda!424606))))

(assert (=> d!2210578 (= (mapPost2!457 z1!570 lambda!424606 lt!2543136) lt!2543260)))

(declare-fun b!7068883 () Bool)

(assert (=> b!7068883 (= e!4249777 (set.member lt!2543260 z1!570))))

(assert (= (and d!2210578 res!2886671) b!7068883))

(declare-fun b_lambda!269847 () Bool)

(assert (=> (not b_lambda!269847) (not d!2210578)))

(declare-fun m!7793504 () Bool)

(assert (=> d!2210578 m!7793504))

(declare-fun m!7793506 () Bool)

(assert (=> d!2210578 m!7793506))

(declare-fun m!7793508 () Bool)

(assert (=> d!2210578 m!7793508))

(declare-fun m!7793510 () Bool)

(assert (=> d!2210578 m!7793510))

(declare-fun m!7793512 () Bool)

(assert (=> b!7068883 m!7793512))

(assert (=> b!7068788 d!2210578))

(declare-fun b!7068894 () Bool)

(declare-fun call!642443 () (Set Context!13248))

(declare-fun e!4249784 () (Set Context!13248))

(assert (=> b!7068894 (= e!4249784 (set.union call!642443 (derivationStepZipperUp!2212 (Context!13249 (t!382193 (exprs!7124 lt!2543123))) (h!74735 s!7408))))))

(declare-fun b!7068895 () Bool)

(declare-fun e!4249786 () (Set Context!13248))

(assert (=> b!7068895 (= e!4249786 call!642443)))

(declare-fun b!7068896 () Bool)

(assert (=> b!7068896 (= e!4249784 e!4249786)))

(declare-fun c!1318387 () Bool)

(assert (=> b!7068896 (= c!1318387 (is-Cons!68286 (exprs!7124 lt!2543123)))))

(declare-fun d!2210580 () Bool)

(declare-fun c!1318388 () Bool)

(declare-fun e!4249785 () Bool)

(assert (=> d!2210580 (= c!1318388 e!4249785)))

(declare-fun res!2886674 () Bool)

(assert (=> d!2210580 (=> (not res!2886674) (not e!4249785))))

(assert (=> d!2210580 (= res!2886674 (is-Cons!68286 (exprs!7124 lt!2543123)))))

(assert (=> d!2210580 (= (derivationStepZipperUp!2212 lt!2543123 (h!74735 s!7408)) e!4249784)))

(declare-fun b!7068897 () Bool)

(assert (=> b!7068897 (= e!4249786 (as set.empty (Set Context!13248)))))

(declare-fun b!7068898 () Bool)

(assert (=> b!7068898 (= e!4249785 (nullable!7311 (h!74734 (exprs!7124 lt!2543123))))))

(declare-fun bm!642438 () Bool)

(assert (=> bm!642438 (= call!642443 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543123)) (Context!13249 (t!382193 (exprs!7124 lt!2543123))) (h!74735 s!7408)))))

(assert (= (and d!2210580 res!2886674) b!7068898))

(assert (= (and d!2210580 c!1318388) b!7068894))

(assert (= (and d!2210580 (not c!1318388)) b!7068896))

(assert (= (and b!7068896 c!1318387) b!7068895))

(assert (= (and b!7068896 (not c!1318387)) b!7068897))

(assert (= (or b!7068894 b!7068895) bm!642438))

(declare-fun m!7793514 () Bool)

(assert (=> b!7068894 m!7793514))

(declare-fun m!7793516 () Bool)

(assert (=> b!7068898 m!7793516))

(declare-fun m!7793518 () Bool)

(assert (=> bm!642438 m!7793518))

(assert (=> b!7068784 d!2210580))

(declare-fun b!7068921 () Bool)

(declare-fun e!4249804 () (Set Context!13248))

(declare-fun call!642456 () (Set Context!13248))

(assert (=> b!7068921 (= e!4249804 call!642456)))

(declare-fun bm!642451 () Bool)

(declare-fun call!642457 () List!68410)

(declare-fun call!642458 () List!68410)

(assert (=> bm!642451 (= call!642457 call!642458)))

(declare-fun b!7068922 () Bool)

(declare-fun c!1318403 () Bool)

(assert (=> b!7068922 (= c!1318403 (is-Star!17628 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun e!4249802 () (Set Context!13248))

(assert (=> b!7068922 (= e!4249802 e!4249804)))

(declare-fun b!7068923 () Bool)

(declare-fun e!4249799 () (Set Context!13248))

(declare-fun call!642459 () (Set Context!13248))

(declare-fun call!642461 () (Set Context!13248))

(assert (=> b!7068923 (= e!4249799 (set.union call!642459 call!642461))))

(declare-fun b!7068924 () Bool)

(assert (=> b!7068924 (= e!4249799 e!4249802)))

(declare-fun c!1318401 () Bool)

(assert (=> b!7068924 (= c!1318401 (is-Concat!26473 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun b!7068925 () Bool)

(declare-fun e!4249800 () (Set Context!13248))

(assert (=> b!7068925 (= e!4249800 (set.insert lt!2543123 (as set.empty (Set Context!13248))))))

(declare-fun bm!642453 () Bool)

(declare-fun c!1318402 () Bool)

(assert (=> bm!642453 (= call!642459 (derivationStepZipperDown!2262 (ite c!1318402 (regTwo!35769 (h!74734 (exprs!7124 lt!2543125))) (regOne!35768 (h!74734 (exprs!7124 lt!2543125)))) (ite c!1318402 lt!2543123 (Context!13249 call!642458)) (h!74735 s!7408)))))

(declare-fun call!642460 () (Set Context!13248))

(declare-fun bm!642454 () Bool)

(declare-fun c!1318400 () Bool)

(assert (=> bm!642454 (= call!642460 (derivationStepZipperDown!2262 (ite c!1318402 (regOne!35769 (h!74734 (exprs!7124 lt!2543125))) (ite c!1318400 (regTwo!35768 (h!74734 (exprs!7124 lt!2543125))) (ite c!1318401 (regOne!35768 (h!74734 (exprs!7124 lt!2543125))) (reg!17957 (h!74734 (exprs!7124 lt!2543125)))))) (ite (or c!1318402 c!1318400) lt!2543123 (Context!13249 call!642457)) (h!74735 s!7408)))))

(declare-fun bm!642455 () Bool)

(assert (=> bm!642455 (= call!642461 call!642460)))

(declare-fun b!7068926 () Bool)

(assert (=> b!7068926 (= e!4249802 call!642456)))

(declare-fun b!7068927 () Bool)

(declare-fun e!4249803 () Bool)

(assert (=> b!7068927 (= c!1318400 e!4249803)))

(declare-fun res!2886677 () Bool)

(assert (=> b!7068927 (=> (not res!2886677) (not e!4249803))))

(assert (=> b!7068927 (= res!2886677 (is-Concat!26473 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun e!4249801 () (Set Context!13248))

(assert (=> b!7068927 (= e!4249801 e!4249799)))

(declare-fun b!7068928 () Bool)

(assert (=> b!7068928 (= e!4249803 (nullable!7311 (regOne!35768 (h!74734 (exprs!7124 lt!2543125)))))))

(declare-fun bm!642456 () Bool)

(declare-fun $colon$colon!2650 (List!68410 Regex!17628) List!68410)

(assert (=> bm!642456 (= call!642458 ($colon$colon!2650 (exprs!7124 lt!2543123) (ite (or c!1318400 c!1318401) (regTwo!35768 (h!74734 (exprs!7124 lt!2543125))) (h!74734 (exprs!7124 lt!2543125)))))))

(declare-fun d!2210582 () Bool)

(declare-fun c!1318399 () Bool)

(assert (=> d!2210582 (= c!1318399 (and (is-ElementMatch!17628 (h!74734 (exprs!7124 lt!2543125))) (= (c!1318367 (h!74734 (exprs!7124 lt!2543125))) (h!74735 s!7408))))))

(assert (=> d!2210582 (= (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543123 (h!74735 s!7408)) e!4249800)))

(declare-fun bm!642452 () Bool)

(assert (=> bm!642452 (= call!642456 call!642461)))

(declare-fun b!7068929 () Bool)

(assert (=> b!7068929 (= e!4249804 (as set.empty (Set Context!13248)))))

(declare-fun b!7068930 () Bool)

(assert (=> b!7068930 (= e!4249800 e!4249801)))

(assert (=> b!7068930 (= c!1318402 (is-Union!17628 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun b!7068931 () Bool)

(assert (=> b!7068931 (= e!4249801 (set.union call!642460 call!642459))))

(assert (= (and d!2210582 c!1318399) b!7068925))

(assert (= (and d!2210582 (not c!1318399)) b!7068930))

(assert (= (and b!7068930 c!1318402) b!7068931))

(assert (= (and b!7068930 (not c!1318402)) b!7068927))

(assert (= (and b!7068927 res!2886677) b!7068928))

(assert (= (and b!7068927 c!1318400) b!7068923))

(assert (= (and b!7068927 (not c!1318400)) b!7068924))

(assert (= (and b!7068924 c!1318401) b!7068926))

(assert (= (and b!7068924 (not c!1318401)) b!7068922))

(assert (= (and b!7068922 c!1318403) b!7068921))

(assert (= (and b!7068922 (not c!1318403)) b!7068929))

(assert (= (or b!7068926 b!7068921) bm!642451))

(assert (= (or b!7068926 b!7068921) bm!642452))

(assert (= (or b!7068923 bm!642452) bm!642455))

(assert (= (or b!7068923 bm!642451) bm!642456))

(assert (= (or b!7068931 bm!642455) bm!642454))

(assert (= (or b!7068931 b!7068923) bm!642453))

(declare-fun m!7793520 () Bool)

(assert (=> bm!642453 m!7793520))

(declare-fun m!7793522 () Bool)

(assert (=> b!7068928 m!7793522))

(declare-fun m!7793524 () Bool)

(assert (=> bm!642454 m!7793524))

(declare-fun m!7793526 () Bool)

(assert (=> b!7068925 m!7793526))

(declare-fun m!7793528 () Bool)

(assert (=> bm!642456 m!7793528))

(assert (=> b!7068784 d!2210582))

(assert (=> b!7068784 d!2210568))

(declare-fun b!7068932 () Bool)

(declare-fun e!4249806 () List!68410)

(assert (=> b!7068932 (= e!4249806 (exprs!7124 ct2!306))))

(declare-fun e!4249805 () Bool)

(declare-fun lt!2543261 () List!68410)

(declare-fun b!7068935 () Bool)

(assert (=> b!7068935 (= e!4249805 (or (not (= (exprs!7124 ct2!306) Nil!68286)) (= lt!2543261 lt!2543134)))))

(declare-fun d!2210584 () Bool)

(assert (=> d!2210584 e!4249805))

(declare-fun res!2886678 () Bool)

(assert (=> d!2210584 (=> (not res!2886678) (not e!4249805))))

(assert (=> d!2210584 (= res!2886678 (= (content!13765 lt!2543261) (set.union (content!13765 lt!2543134) (content!13765 (exprs!7124 ct2!306)))))))

(assert (=> d!2210584 (= lt!2543261 e!4249806)))

(declare-fun c!1318404 () Bool)

(assert (=> d!2210584 (= c!1318404 (is-Nil!68286 lt!2543134))))

(assert (=> d!2210584 (= (++!15745 lt!2543134 (exprs!7124 ct2!306)) lt!2543261)))

(declare-fun b!7068933 () Bool)

(assert (=> b!7068933 (= e!4249806 (Cons!68286 (h!74734 lt!2543134) (++!15745 (t!382193 lt!2543134) (exprs!7124 ct2!306))))))

(declare-fun b!7068934 () Bool)

(declare-fun res!2886679 () Bool)

(assert (=> b!7068934 (=> (not res!2886679) (not e!4249805))))

(assert (=> b!7068934 (= res!2886679 (= (size!41198 lt!2543261) (+ (size!41198 lt!2543134) (size!41198 (exprs!7124 ct2!306)))))))

(assert (= (and d!2210584 c!1318404) b!7068932))

(assert (= (and d!2210584 (not c!1318404)) b!7068933))

(assert (= (and d!2210584 res!2886678) b!7068934))

(assert (= (and b!7068934 res!2886679) b!7068935))

(declare-fun m!7793530 () Bool)

(assert (=> d!2210584 m!7793530))

(declare-fun m!7793532 () Bool)

(assert (=> d!2210584 m!7793532))

(assert (=> d!2210584 m!7793488))

(declare-fun m!7793534 () Bool)

(assert (=> b!7068933 m!7793534))

(declare-fun m!7793536 () Bool)

(assert (=> b!7068934 m!7793536))

(declare-fun m!7793538 () Bool)

(assert (=> b!7068934 m!7793538))

(assert (=> b!7068934 m!7793496))

(assert (=> b!7068784 d!2210584))

(declare-fun d!2210586 () Bool)

(declare-fun choose!54128 ((Set Context!13248) Int) (Set Context!13248))

(assert (=> d!2210586 (= (flatMap!2554 lt!2543133 lambda!424608) (choose!54128 lt!2543133 lambda!424608))))

(declare-fun bs!1880299 () Bool)

(assert (= bs!1880299 d!2210586))

(declare-fun m!7793540 () Bool)

(assert (=> bs!1880299 m!7793540))

(assert (=> b!7068783 d!2210586))

(declare-fun e!4249807 () (Set Context!13248))

(declare-fun b!7068936 () Bool)

(declare-fun call!642462 () (Set Context!13248))

(assert (=> b!7068936 (= e!4249807 (set.union call!642462 (derivationStepZipperUp!2212 (Context!13249 (t!382193 (exprs!7124 lt!2543114))) (h!74735 s!7408))))))

(declare-fun b!7068937 () Bool)

(declare-fun e!4249809 () (Set Context!13248))

(assert (=> b!7068937 (= e!4249809 call!642462)))

(declare-fun b!7068938 () Bool)

(assert (=> b!7068938 (= e!4249807 e!4249809)))

(declare-fun c!1318405 () Bool)

(assert (=> b!7068938 (= c!1318405 (is-Cons!68286 (exprs!7124 lt!2543114)))))

(declare-fun d!2210588 () Bool)

(declare-fun c!1318406 () Bool)

(declare-fun e!4249808 () Bool)

(assert (=> d!2210588 (= c!1318406 e!4249808)))

(declare-fun res!2886680 () Bool)

(assert (=> d!2210588 (=> (not res!2886680) (not e!4249808))))

(assert (=> d!2210588 (= res!2886680 (is-Cons!68286 (exprs!7124 lt!2543114)))))

(assert (=> d!2210588 (= (derivationStepZipperUp!2212 lt!2543114 (h!74735 s!7408)) e!4249807)))

(declare-fun b!7068939 () Bool)

(assert (=> b!7068939 (= e!4249809 (as set.empty (Set Context!13248)))))

(declare-fun b!7068940 () Bool)

(assert (=> b!7068940 (= e!4249808 (nullable!7311 (h!74734 (exprs!7124 lt!2543114))))))

(declare-fun bm!642457 () Bool)

(assert (=> bm!642457 (= call!642462 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543114)) (Context!13249 (t!382193 (exprs!7124 lt!2543114))) (h!74735 s!7408)))))

(assert (= (and d!2210588 res!2886680) b!7068940))

(assert (= (and d!2210588 c!1318406) b!7068936))

(assert (= (and d!2210588 (not c!1318406)) b!7068938))

(assert (= (and b!7068938 c!1318405) b!7068937))

(assert (= (and b!7068938 (not c!1318405)) b!7068939))

(assert (= (or b!7068936 b!7068937) bm!642457))

(declare-fun m!7793542 () Bool)

(assert (=> b!7068936 m!7793542))

(declare-fun m!7793544 () Bool)

(assert (=> b!7068940 m!7793544))

(declare-fun m!7793546 () Bool)

(assert (=> bm!642457 m!7793546))

(assert (=> b!7068783 d!2210588))

(declare-fun d!2210590 () Bool)

(declare-fun dynLambda!27760 (Int Context!13248) (Set Context!13248))

(assert (=> d!2210590 (= (flatMap!2554 lt!2543133 lambda!424608) (dynLambda!27760 lambda!424608 lt!2543114))))

(declare-fun lt!2543264 () Unit!161966)

(declare-fun choose!54129 ((Set Context!13248) Context!13248 Int) Unit!161966)

(assert (=> d!2210590 (= lt!2543264 (choose!54129 lt!2543133 lt!2543114 lambda!424608))))

(assert (=> d!2210590 (= lt!2543133 (set.insert lt!2543114 (as set.empty (Set Context!13248))))))

(assert (=> d!2210590 (= (lemmaFlatMapOnSingletonSet!2063 lt!2543133 lt!2543114 lambda!424608) lt!2543264)))

(declare-fun b_lambda!269849 () Bool)

(assert (=> (not b_lambda!269849) (not d!2210590)))

(declare-fun bs!1880300 () Bool)

(assert (= bs!1880300 d!2210590))

(assert (=> bs!1880300 m!7793386))

(declare-fun m!7793548 () Bool)

(assert (=> bs!1880300 m!7793548))

(declare-fun m!7793550 () Bool)

(assert (=> bs!1880300 m!7793550))

(assert (=> bs!1880300 m!7793370))

(assert (=> b!7068783 d!2210590))

(declare-fun bs!1880301 () Bool)

(declare-fun d!2210592 () Bool)

(assert (= bs!1880301 (and d!2210592 b!7068783)))

(declare-fun lambda!424653 () Int)

(assert (=> bs!1880301 (= lambda!424653 lambda!424608)))

(assert (=> d!2210592 true))

(assert (=> d!2210592 (= (derivationStepZipper!3078 lt!2543133 (h!74735 s!7408)) (flatMap!2554 lt!2543133 lambda!424653))))

(declare-fun bs!1880302 () Bool)

(assert (= bs!1880302 d!2210592))

(declare-fun m!7793552 () Bool)

(assert (=> bs!1880302 m!7793552))

(assert (=> b!7068783 d!2210592))

(assert (=> b!7068783 d!2210576))

(declare-fun d!2210594 () Bool)

(declare-fun c!1318409 () Bool)

(assert (=> d!2210594 (= c!1318409 (isEmpty!39853 s!7408))))

(declare-fun e!4249810 () Bool)

(assert (=> d!2210594 (= (matchZipper!3168 lt!2543119 s!7408) e!4249810)))

(declare-fun b!7068943 () Bool)

(assert (=> b!7068943 (= e!4249810 (nullableZipper!2689 lt!2543119))))

(declare-fun b!7068944 () Bool)

(assert (=> b!7068944 (= e!4249810 (matchZipper!3168 (derivationStepZipper!3078 lt!2543119 (head!14397 s!7408)) (tail!13803 s!7408)))))

(assert (= (and d!2210594 c!1318409) b!7068943))

(assert (= (and d!2210594 (not c!1318409)) b!7068944))

(declare-fun m!7793554 () Bool)

(assert (=> d!2210594 m!7793554))

(declare-fun m!7793556 () Bool)

(assert (=> b!7068943 m!7793556))

(declare-fun m!7793558 () Bool)

(assert (=> b!7068944 m!7793558))

(assert (=> b!7068944 m!7793558))

(declare-fun m!7793560 () Bool)

(assert (=> b!7068944 m!7793560))

(declare-fun m!7793562 () Bool)

(assert (=> b!7068944 m!7793562))

(assert (=> b!7068944 m!7793560))

(assert (=> b!7068944 m!7793562))

(declare-fun m!7793564 () Bool)

(assert (=> b!7068944 m!7793564))

(assert (=> start!686474 d!2210594))

(declare-fun bs!1880303 () Bool)

(declare-fun d!2210596 () Bool)

(assert (= bs!1880303 (and d!2210596 b!7068788)))

(declare-fun lambda!424658 () Int)

(assert (=> bs!1880303 (= lambda!424658 lambda!424606)))

(assert (=> d!2210596 true))

(assert (=> d!2210596 (= (appendTo!749 z1!570 ct2!306) (map!15972 z1!570 lambda!424658))))

(declare-fun bs!1880304 () Bool)

(assert (= bs!1880304 d!2210596))

(declare-fun m!7793566 () Bool)

(assert (=> bs!1880304 m!7793566))

(assert (=> start!686474 d!2210596))

(declare-fun bs!1880305 () Bool)

(declare-fun d!2210598 () Bool)

(assert (= bs!1880305 (and d!2210598 b!7068788)))

(declare-fun lambda!424661 () Int)

(assert (=> bs!1880305 (= lambda!424661 lambda!424607)))

(assert (=> d!2210598 (= (inv!86930 ct2!306) (forall!16577 (exprs!7124 ct2!306) lambda!424661))))

(declare-fun bs!1880306 () Bool)

(assert (= bs!1880306 d!2210598))

(declare-fun m!7793568 () Bool)

(assert (=> bs!1880306 m!7793568))

(assert (=> start!686474 d!2210598))

(declare-fun bs!1880307 () Bool)

(declare-fun d!2210600 () Bool)

(assert (= bs!1880307 (and d!2210600 b!7068776)))

(declare-fun lambda!424664 () Int)

(assert (=> bs!1880307 (not (= lambda!424664 lambda!424605))))

(assert (=> d!2210600 true))

(declare-fun order!28387 () Int)

(declare-fun dynLambda!27761 (Int Int) Int)

(assert (=> d!2210600 (< (dynLambda!27761 order!28387 lambda!424605) (dynLambda!27761 order!28387 lambda!424664))))

(declare-fun forall!16578 (List!68412 Int) Bool)

(assert (=> d!2210600 (= (exists!3663 lt!2543116 lambda!424605) (not (forall!16578 lt!2543116 lambda!424664)))))

(declare-fun bs!1880308 () Bool)

(assert (= bs!1880308 d!2210600))

(declare-fun m!7793570 () Bool)

(assert (=> bs!1880308 m!7793570))

(assert (=> b!7068776 d!2210600))

(declare-fun d!2210602 () Bool)

(declare-fun e!4249813 () Bool)

(assert (=> d!2210602 e!4249813))

(declare-fun res!2886684 () Bool)

(assert (=> d!2210602 (=> (not res!2886684) (not e!4249813))))

(declare-fun lt!2543269 () Context!13248)

(declare-fun dynLambda!27762 (Int Context!13248) Bool)

(assert (=> d!2210602 (= res!2886684 (dynLambda!27762 lambda!424605 lt!2543269))))

(declare-fun getWitness!1722 (List!68412 Int) Context!13248)

(assert (=> d!2210602 (= lt!2543269 (getWitness!1722 (toList!10969 lt!2543119) lambda!424605))))

(declare-fun exists!3665 ((Set Context!13248) Int) Bool)

(assert (=> d!2210602 (exists!3665 lt!2543119 lambda!424605)))

(assert (=> d!2210602 (= (getWitness!1720 lt!2543119 lambda!424605) lt!2543269)))

(declare-fun b!7068949 () Bool)

(assert (=> b!7068949 (= e!4249813 (set.member lt!2543269 lt!2543119))))

(assert (= (and d!2210602 res!2886684) b!7068949))

(declare-fun b_lambda!269851 () Bool)

(assert (=> (not b_lambda!269851) (not d!2210602)))

(declare-fun m!7793572 () Bool)

(assert (=> d!2210602 m!7793572))

(assert (=> d!2210602 m!7793354))

(assert (=> d!2210602 m!7793354))

(declare-fun m!7793574 () Bool)

(assert (=> d!2210602 m!7793574))

(declare-fun m!7793576 () Bool)

(assert (=> d!2210602 m!7793576))

(declare-fun m!7793578 () Bool)

(assert (=> b!7068949 m!7793578))

(assert (=> b!7068776 d!2210602))

(declare-fun d!2210604 () Bool)

(declare-fun e!4249816 () Bool)

(assert (=> d!2210604 e!4249816))

(declare-fun res!2886687 () Bool)

(assert (=> d!2210604 (=> (not res!2886687) (not e!4249816))))

(declare-fun lt!2543272 () List!68412)

(declare-fun noDuplicate!2718 (List!68412) Bool)

(assert (=> d!2210604 (= res!2886687 (noDuplicate!2718 lt!2543272))))

(declare-fun choose!54130 ((Set Context!13248)) List!68412)

(assert (=> d!2210604 (= lt!2543272 (choose!54130 lt!2543119))))

(assert (=> d!2210604 (= (toList!10969 lt!2543119) lt!2543272)))

(declare-fun b!7068952 () Bool)

(declare-fun content!13766 (List!68412) (Set Context!13248))

(assert (=> b!7068952 (= e!4249816 (= (content!13766 lt!2543272) lt!2543119))))

(assert (= (and d!2210604 res!2886687) b!7068952))

(declare-fun m!7793580 () Bool)

(assert (=> d!2210604 m!7793580))

(declare-fun m!7793582 () Bool)

(assert (=> d!2210604 m!7793582))

(declare-fun m!7793584 () Bool)

(assert (=> b!7068952 m!7793584))

(assert (=> b!7068776 d!2210604))

(declare-fun d!2210606 () Bool)

(declare-fun c!1318411 () Bool)

(assert (=> d!2210606 (= c!1318411 (isEmpty!39853 s!7408))))

(declare-fun e!4249817 () Bool)

(assert (=> d!2210606 (= (matchZipper!3168 lt!2543129 s!7408) e!4249817)))

(declare-fun b!7068953 () Bool)

(assert (=> b!7068953 (= e!4249817 (nullableZipper!2689 lt!2543129))))

(declare-fun b!7068954 () Bool)

(assert (=> b!7068954 (= e!4249817 (matchZipper!3168 (derivationStepZipper!3078 lt!2543129 (head!14397 s!7408)) (tail!13803 s!7408)))))

(assert (= (and d!2210606 c!1318411) b!7068953))

(assert (= (and d!2210606 (not c!1318411)) b!7068954))

(assert (=> d!2210606 m!7793554))

(declare-fun m!7793586 () Bool)

(assert (=> b!7068953 m!7793586))

(assert (=> b!7068954 m!7793558))

(assert (=> b!7068954 m!7793558))

(declare-fun m!7793588 () Bool)

(assert (=> b!7068954 m!7793588))

(assert (=> b!7068954 m!7793562))

(assert (=> b!7068954 m!7793588))

(assert (=> b!7068954 m!7793562))

(declare-fun m!7793590 () Bool)

(assert (=> b!7068954 m!7793590))

(assert (=> b!7068776 d!2210606))

(declare-fun bs!1880309 () Bool)

(declare-fun d!2210608 () Bool)

(assert (= bs!1880309 (and d!2210608 b!7068776)))

(declare-fun lambda!424667 () Int)

(assert (=> bs!1880309 (= lambda!424667 lambda!424605)))

(declare-fun bs!1880310 () Bool)

(assert (= bs!1880310 (and d!2210608 d!2210600)))

(assert (=> bs!1880310 (not (= lambda!424667 lambda!424664))))

(assert (=> d!2210608 true))

(assert (=> d!2210608 (exists!3663 lt!2543116 lambda!424667)))

(declare-fun lt!2543275 () Unit!161966)

(declare-fun choose!54131 (List!68412 List!68411) Unit!161966)

(assert (=> d!2210608 (= lt!2543275 (choose!54131 lt!2543116 s!7408))))

(assert (=> d!2210608 (matchZipper!3168 (content!13766 lt!2543116) s!7408)))

(assert (=> d!2210608 (= (lemmaZipperMatchesExistsMatchingContext!549 lt!2543116 s!7408) lt!2543275)))

(declare-fun bs!1880311 () Bool)

(assert (= bs!1880311 d!2210608))

(declare-fun m!7793592 () Bool)

(assert (=> bs!1880311 m!7793592))

(declare-fun m!7793594 () Bool)

(assert (=> bs!1880311 m!7793594))

(declare-fun m!7793596 () Bool)

(assert (=> bs!1880311 m!7793596))

(assert (=> bs!1880311 m!7793596))

(declare-fun m!7793598 () Bool)

(assert (=> bs!1880311 m!7793598))

(assert (=> b!7068776 d!2210608))

(declare-fun bs!1880312 () Bool)

(declare-fun d!2210610 () Bool)

(assert (= bs!1880312 (and d!2210610 b!7068788)))

(declare-fun lambda!424668 () Int)

(assert (=> bs!1880312 (= lambda!424668 lambda!424606)))

(declare-fun bs!1880313 () Bool)

(assert (= bs!1880313 (and d!2210610 d!2210596)))

(assert (=> bs!1880313 (= lambda!424668 lambda!424658)))

(assert (=> d!2210610 true))

(assert (=> d!2210610 (= (appendTo!749 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543124 (h!74735 s!7408)) ct2!306) (map!15972 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543124 (h!74735 s!7408)) lambda!424668))))

(declare-fun bs!1880314 () Bool)

(assert (= bs!1880314 d!2210610))

(assert (=> bs!1880314 m!7793376))

(declare-fun m!7793600 () Bool)

(assert (=> bs!1880314 m!7793600))

(assert (=> b!7068785 d!2210610))

(declare-fun bs!1880315 () Bool)

(declare-fun d!2210612 () Bool)

(assert (= bs!1880315 (and d!2210612 b!7068788)))

(declare-fun lambda!424671 () Int)

(assert (=> bs!1880315 (= lambda!424671 lambda!424607)))

(declare-fun bs!1880316 () Bool)

(assert (= bs!1880316 (and d!2210612 d!2210598)))

(assert (=> bs!1880316 (= lambda!424671 lambda!424661)))

(assert (=> d!2210612 (= (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) (Context!13249 (++!15745 (exprs!7124 lt!2543124) (exprs!7124 ct2!306))) (h!74735 s!7408)) (appendTo!749 (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543124 (h!74735 s!7408)) ct2!306))))

(declare-fun lt!2543281 () Unit!161966)

(assert (=> d!2210612 (= lt!2543281 (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543124) (exprs!7124 ct2!306) lambda!424671))))

(declare-fun lt!2543280 () Unit!161966)

(declare-fun choose!54132 (Context!13248 Regex!17628 C!35526 Context!13248) Unit!161966)

(assert (=> d!2210612 (= lt!2543280 (choose!54132 lt!2543124 (h!74734 (exprs!7124 lt!2543125)) (h!74735 s!7408) ct2!306))))

(declare-fun validRegex!8964 (Regex!17628) Bool)

(assert (=> d!2210612 (validRegex!8964 (h!74734 (exprs!7124 lt!2543125)))))

(assert (=> d!2210612 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!99 lt!2543124 (h!74734 (exprs!7124 lt!2543125)) (h!74735 s!7408) ct2!306) lt!2543280)))

(declare-fun bs!1880317 () Bool)

(assert (= bs!1880317 d!2210612))

(assert (=> bs!1880317 m!7793376))

(declare-fun m!7793602 () Bool)

(assert (=> bs!1880317 m!7793602))

(declare-fun m!7793604 () Bool)

(assert (=> bs!1880317 m!7793604))

(assert (=> bs!1880317 m!7793376))

(assert (=> bs!1880317 m!7793378))

(declare-fun m!7793606 () Bool)

(assert (=> bs!1880317 m!7793606))

(declare-fun m!7793608 () Bool)

(assert (=> bs!1880317 m!7793608))

(declare-fun m!7793610 () Bool)

(assert (=> bs!1880317 m!7793610))

(assert (=> b!7068785 d!2210612))

(declare-fun b!7068955 () Bool)

(declare-fun e!4249823 () (Set Context!13248))

(declare-fun call!642463 () (Set Context!13248))

(assert (=> b!7068955 (= e!4249823 call!642463)))

(declare-fun bm!642458 () Bool)

(declare-fun call!642464 () List!68410)

(declare-fun call!642465 () List!68410)

(assert (=> bm!642458 (= call!642464 call!642465)))

(declare-fun b!7068956 () Bool)

(declare-fun c!1318419 () Bool)

(assert (=> b!7068956 (= c!1318419 (is-Star!17628 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun e!4249821 () (Set Context!13248))

(assert (=> b!7068956 (= e!4249821 e!4249823)))

(declare-fun b!7068957 () Bool)

(declare-fun e!4249818 () (Set Context!13248))

(declare-fun call!642466 () (Set Context!13248))

(declare-fun call!642468 () (Set Context!13248))

(assert (=> b!7068957 (= e!4249818 (set.union call!642466 call!642468))))

(declare-fun b!7068958 () Bool)

(assert (=> b!7068958 (= e!4249818 e!4249821)))

(declare-fun c!1318417 () Bool)

(assert (=> b!7068958 (= c!1318417 (is-Concat!26473 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun b!7068959 () Bool)

(declare-fun e!4249819 () (Set Context!13248))

(assert (=> b!7068959 (= e!4249819 (set.insert lt!2543124 (as set.empty (Set Context!13248))))))

(declare-fun bm!642460 () Bool)

(declare-fun c!1318418 () Bool)

(assert (=> bm!642460 (= call!642466 (derivationStepZipperDown!2262 (ite c!1318418 (regTwo!35769 (h!74734 (exprs!7124 lt!2543125))) (regOne!35768 (h!74734 (exprs!7124 lt!2543125)))) (ite c!1318418 lt!2543124 (Context!13249 call!642465)) (h!74735 s!7408)))))

(declare-fun bm!642461 () Bool)

(declare-fun call!642467 () (Set Context!13248))

(declare-fun c!1318416 () Bool)

(assert (=> bm!642461 (= call!642467 (derivationStepZipperDown!2262 (ite c!1318418 (regOne!35769 (h!74734 (exprs!7124 lt!2543125))) (ite c!1318416 (regTwo!35768 (h!74734 (exprs!7124 lt!2543125))) (ite c!1318417 (regOne!35768 (h!74734 (exprs!7124 lt!2543125))) (reg!17957 (h!74734 (exprs!7124 lt!2543125)))))) (ite (or c!1318418 c!1318416) lt!2543124 (Context!13249 call!642464)) (h!74735 s!7408)))))

(declare-fun bm!642462 () Bool)

(assert (=> bm!642462 (= call!642468 call!642467)))

(declare-fun b!7068960 () Bool)

(assert (=> b!7068960 (= e!4249821 call!642463)))

(declare-fun b!7068961 () Bool)

(declare-fun e!4249822 () Bool)

(assert (=> b!7068961 (= c!1318416 e!4249822)))

(declare-fun res!2886688 () Bool)

(assert (=> b!7068961 (=> (not res!2886688) (not e!4249822))))

(assert (=> b!7068961 (= res!2886688 (is-Concat!26473 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun e!4249820 () (Set Context!13248))

(assert (=> b!7068961 (= e!4249820 e!4249818)))

(declare-fun b!7068962 () Bool)

(assert (=> b!7068962 (= e!4249822 (nullable!7311 (regOne!35768 (h!74734 (exprs!7124 lt!2543125)))))))

(declare-fun bm!642463 () Bool)

(assert (=> bm!642463 (= call!642465 ($colon$colon!2650 (exprs!7124 lt!2543124) (ite (or c!1318416 c!1318417) (regTwo!35768 (h!74734 (exprs!7124 lt!2543125))) (h!74734 (exprs!7124 lt!2543125)))))))

(declare-fun d!2210614 () Bool)

(declare-fun c!1318415 () Bool)

(assert (=> d!2210614 (= c!1318415 (and (is-ElementMatch!17628 (h!74734 (exprs!7124 lt!2543125))) (= (c!1318367 (h!74734 (exprs!7124 lt!2543125))) (h!74735 s!7408))))))

(assert (=> d!2210614 (= (derivationStepZipperDown!2262 (h!74734 (exprs!7124 lt!2543125)) lt!2543124 (h!74735 s!7408)) e!4249819)))

(declare-fun bm!642459 () Bool)

(assert (=> bm!642459 (= call!642463 call!642468)))

(declare-fun b!7068963 () Bool)

(assert (=> b!7068963 (= e!4249823 (as set.empty (Set Context!13248)))))

(declare-fun b!7068964 () Bool)

(assert (=> b!7068964 (= e!4249819 e!4249820)))

(assert (=> b!7068964 (= c!1318418 (is-Union!17628 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun b!7068965 () Bool)

(assert (=> b!7068965 (= e!4249820 (set.union call!642467 call!642466))))

(assert (= (and d!2210614 c!1318415) b!7068959))

(assert (= (and d!2210614 (not c!1318415)) b!7068964))

(assert (= (and b!7068964 c!1318418) b!7068965))

(assert (= (and b!7068964 (not c!1318418)) b!7068961))

(assert (= (and b!7068961 res!2886688) b!7068962))

(assert (= (and b!7068961 c!1318416) b!7068957))

(assert (= (and b!7068961 (not c!1318416)) b!7068958))

(assert (= (and b!7068958 c!1318417) b!7068960))

(assert (= (and b!7068958 (not c!1318417)) b!7068956))

(assert (= (and b!7068956 c!1318419) b!7068955))

(assert (= (and b!7068956 (not c!1318419)) b!7068963))

(assert (= (or b!7068960 b!7068955) bm!642458))

(assert (= (or b!7068960 b!7068955) bm!642459))

(assert (= (or b!7068957 bm!642459) bm!642462))

(assert (= (or b!7068957 bm!642458) bm!642463))

(assert (= (or b!7068965 bm!642462) bm!642461))

(assert (= (or b!7068965 b!7068957) bm!642460))

(declare-fun m!7793612 () Bool)

(assert (=> bm!642460 m!7793612))

(assert (=> b!7068962 m!7793522))

(declare-fun m!7793614 () Bool)

(assert (=> bm!642461 m!7793614))

(declare-fun m!7793616 () Bool)

(assert (=> b!7068959 m!7793616))

(declare-fun m!7793618 () Bool)

(assert (=> bm!642463 m!7793618))

(assert (=> b!7068785 d!2210614))

(assert (=> b!7068785 d!2210568))

(declare-fun bs!1880318 () Bool)

(declare-fun d!2210616 () Bool)

(assert (= bs!1880318 (and d!2210616 b!7068788)))

(declare-fun lambda!424672 () Int)

(assert (=> bs!1880318 (= lambda!424672 lambda!424607)))

(declare-fun bs!1880319 () Bool)

(assert (= bs!1880319 (and d!2210616 d!2210598)))

(assert (=> bs!1880319 (= lambda!424672 lambda!424661)))

(declare-fun bs!1880320 () Bool)

(assert (= bs!1880320 (and d!2210616 d!2210612)))

(assert (=> bs!1880320 (= lambda!424672 lambda!424671)))

(assert (=> d!2210616 (= (inv!86930 lt!2543123) (forall!16577 (exprs!7124 lt!2543123) lambda!424672))))

(declare-fun bs!1880321 () Bool)

(assert (= bs!1880321 d!2210616))

(declare-fun m!7793620 () Bool)

(assert (=> bs!1880321 m!7793620))

(assert (=> b!7068785 d!2210616))

(assert (=> b!7068775 d!2210576))

(declare-fun bs!1880322 () Bool)

(declare-fun d!2210618 () Bool)

(assert (= bs!1880322 (and d!2210618 b!7068788)))

(declare-fun lambda!424673 () Int)

(assert (=> bs!1880322 (= lambda!424673 lambda!424607)))

(declare-fun bs!1880323 () Bool)

(assert (= bs!1880323 (and d!2210618 d!2210598)))

(assert (=> bs!1880323 (= lambda!424673 lambda!424661)))

(declare-fun bs!1880324 () Bool)

(assert (= bs!1880324 (and d!2210618 d!2210612)))

(assert (=> bs!1880324 (= lambda!424673 lambda!424671)))

(declare-fun bs!1880325 () Bool)

(assert (= bs!1880325 (and d!2210618 d!2210616)))

(assert (=> bs!1880325 (= lambda!424673 lambda!424672)))

(assert (=> d!2210618 (= (inv!86930 setElem!50177) (forall!16577 (exprs!7124 setElem!50177) lambda!424673))))

(declare-fun bs!1880326 () Bool)

(assert (= bs!1880326 d!2210618))

(declare-fun m!7793622 () Bool)

(assert (=> bs!1880326 m!7793622))

(assert (=> setNonEmpty!50177 d!2210618))

(assert (=> b!7068779 d!2210570))

(declare-fun d!2210620 () Bool)

(declare-fun nullableFct!2804 (Regex!17628) Bool)

(assert (=> d!2210620 (= (nullable!7311 (h!74734 (exprs!7124 lt!2543125))) (nullableFct!2804 (h!74734 (exprs!7124 lt!2543125))))))

(declare-fun bs!1880327 () Bool)

(assert (= bs!1880327 d!2210620))

(declare-fun m!7793624 () Bool)

(assert (=> bs!1880327 m!7793624))

(assert (=> b!7068778 d!2210620))

(declare-fun d!2210622 () Bool)

(assert (=> d!2210622 (= (tail!13801 (exprs!7124 lt!2543125)) (t!382193 (exprs!7124 lt!2543125)))))

(assert (=> b!7068778 d!2210622))

(assert (=> b!7068787 d!2210570))

(assert (=> b!7068787 d!2210568))

(declare-fun d!2210624 () Bool)

(declare-fun c!1318420 () Bool)

(assert (=> d!2210624 (= c!1318420 (isEmpty!39853 (t!382194 s!7408)))))

(declare-fun e!4249824 () Bool)

(assert (=> d!2210624 (= (matchZipper!3168 lt!2543145 (t!382194 s!7408)) e!4249824)))

(declare-fun b!7068966 () Bool)

(assert (=> b!7068966 (= e!4249824 (nullableZipper!2689 lt!2543145))))

(declare-fun b!7068967 () Bool)

(assert (=> b!7068967 (= e!4249824 (matchZipper!3168 (derivationStepZipper!3078 lt!2543145 (head!14397 (t!382194 s!7408))) (tail!13803 (t!382194 s!7408))))))

(assert (= (and d!2210624 c!1318420) b!7068966))

(assert (= (and d!2210624 (not c!1318420)) b!7068967))

(assert (=> d!2210624 m!7793472))

(declare-fun m!7793626 () Bool)

(assert (=> b!7068966 m!7793626))

(assert (=> b!7068967 m!7793476))

(assert (=> b!7068967 m!7793476))

(declare-fun m!7793628 () Bool)

(assert (=> b!7068967 m!7793628))

(assert (=> b!7068967 m!7793480))

(assert (=> b!7068967 m!7793628))

(assert (=> b!7068967 m!7793480))

(declare-fun m!7793630 () Bool)

(assert (=> b!7068967 m!7793630))

(assert (=> b!7068777 d!2210624))

(declare-fun d!2210626 () Bool)

(declare-fun e!4249827 () Bool)

(assert (=> d!2210626 (= (matchZipper!3168 (set.union lt!2543135 lt!2543137) (t!382194 s!7408)) e!4249827)))

(declare-fun res!2886691 () Bool)

(assert (=> d!2210626 (=> res!2886691 e!4249827)))

(assert (=> d!2210626 (= res!2886691 (matchZipper!3168 lt!2543135 (t!382194 s!7408)))))

(declare-fun lt!2543284 () Unit!161966)

(declare-fun choose!54133 ((Set Context!13248) (Set Context!13248) List!68411) Unit!161966)

(assert (=> d!2210626 (= lt!2543284 (choose!54133 lt!2543135 lt!2543137 (t!382194 s!7408)))))

(assert (=> d!2210626 (= (lemmaZipperConcatMatchesSameAsBothZippers!1641 lt!2543135 lt!2543137 (t!382194 s!7408)) lt!2543284)))

(declare-fun b!7068970 () Bool)

(assert (=> b!7068970 (= e!4249827 (matchZipper!3168 lt!2543137 (t!382194 s!7408)))))

(assert (= (and d!2210626 (not res!2886691)) b!7068970))

(declare-fun m!7793632 () Bool)

(assert (=> d!2210626 m!7793632))

(assert (=> d!2210626 m!7793364))

(declare-fun m!7793634 () Bool)

(assert (=> d!2210626 m!7793634))

(assert (=> b!7068970 m!7793332))

(assert (=> b!7068777 d!2210626))

(declare-fun d!2210628 () Bool)

(declare-fun c!1318421 () Bool)

(assert (=> d!2210628 (= c!1318421 (isEmpty!39853 (t!382194 s!7408)))))

(declare-fun e!4249828 () Bool)

(assert (=> d!2210628 (= (matchZipper!3168 lt!2543135 (t!382194 s!7408)) e!4249828)))

(declare-fun b!7068971 () Bool)

(assert (=> b!7068971 (= e!4249828 (nullableZipper!2689 lt!2543135))))

(declare-fun b!7068972 () Bool)

(assert (=> b!7068972 (= e!4249828 (matchZipper!3168 (derivationStepZipper!3078 lt!2543135 (head!14397 (t!382194 s!7408))) (tail!13803 (t!382194 s!7408))))))

(assert (= (and d!2210628 c!1318421) b!7068971))

(assert (= (and d!2210628 (not c!1318421)) b!7068972))

(assert (=> d!2210628 m!7793472))

(declare-fun m!7793636 () Bool)

(assert (=> b!7068971 m!7793636))

(assert (=> b!7068972 m!7793476))

(assert (=> b!7068972 m!7793476))

(declare-fun m!7793638 () Bool)

(assert (=> b!7068972 m!7793638))

(assert (=> b!7068972 m!7793480))

(assert (=> b!7068972 m!7793638))

(assert (=> b!7068972 m!7793480))

(declare-fun m!7793640 () Bool)

(assert (=> b!7068972 m!7793640))

(assert (=> b!7068777 d!2210628))

(declare-fun d!2210630 () Bool)

(declare-fun c!1318422 () Bool)

(assert (=> d!2210630 (= c!1318422 (isEmpty!39853 (t!382194 s!7408)))))

(declare-fun e!4249829 () Bool)

(assert (=> d!2210630 (= (matchZipper!3168 lt!2543131 (t!382194 s!7408)) e!4249829)))

(declare-fun b!7068973 () Bool)

(assert (=> b!7068973 (= e!4249829 (nullableZipper!2689 lt!2543131))))

(declare-fun b!7068974 () Bool)

(assert (=> b!7068974 (= e!4249829 (matchZipper!3168 (derivationStepZipper!3078 lt!2543131 (head!14397 (t!382194 s!7408))) (tail!13803 (t!382194 s!7408))))))

(assert (= (and d!2210630 c!1318422) b!7068973))

(assert (= (and d!2210630 (not c!1318422)) b!7068974))

(assert (=> d!2210630 m!7793472))

(declare-fun m!7793642 () Bool)

(assert (=> b!7068973 m!7793642))

(assert (=> b!7068974 m!7793476))

(assert (=> b!7068974 m!7793476))

(declare-fun m!7793644 () Bool)

(assert (=> b!7068974 m!7793644))

(assert (=> b!7068974 m!7793480))

(assert (=> b!7068974 m!7793644))

(assert (=> b!7068974 m!7793480))

(declare-fun m!7793646 () Bool)

(assert (=> b!7068974 m!7793646))

(assert (=> b!7068777 d!2210630))

(assert (=> b!7068777 d!2210568))

(declare-fun b!7068979 () Bool)

(declare-fun e!4249832 () Bool)

(declare-fun tp!1941954 () Bool)

(declare-fun tp!1941955 () Bool)

(assert (=> b!7068979 (= e!4249832 (and tp!1941954 tp!1941955))))

(assert (=> b!7068781 (= tp!1941937 e!4249832)))

(assert (= (and b!7068781 (is-Cons!68286 (exprs!7124 ct2!306))) b!7068979))

(declare-fun condSetEmpty!50183 () Bool)

(assert (=> setNonEmpty!50177 (= condSetEmpty!50183 (= setRest!50177 (as set.empty (Set Context!13248))))))

(declare-fun setRes!50183 () Bool)

(assert (=> setNonEmpty!50177 (= tp!1941934 setRes!50183)))

(declare-fun setIsEmpty!50183 () Bool)

(assert (=> setIsEmpty!50183 setRes!50183))

(declare-fun tp!1941961 () Bool)

(declare-fun setNonEmpty!50183 () Bool)

(declare-fun e!4249835 () Bool)

(declare-fun setElem!50183 () Context!13248)

(assert (=> setNonEmpty!50183 (= setRes!50183 (and tp!1941961 (inv!86930 setElem!50183) e!4249835))))

(declare-fun setRest!50183 () (Set Context!13248))

(assert (=> setNonEmpty!50183 (= setRest!50177 (set.union (set.insert setElem!50183 (as set.empty (Set Context!13248))) setRest!50183))))

(declare-fun b!7068984 () Bool)

(declare-fun tp!1941960 () Bool)

(assert (=> b!7068984 (= e!4249835 tp!1941960)))

(assert (= (and setNonEmpty!50177 condSetEmpty!50183) setIsEmpty!50183))

(assert (= (and setNonEmpty!50177 (not condSetEmpty!50183)) setNonEmpty!50183))

(assert (= setNonEmpty!50183 b!7068984))

(declare-fun m!7793648 () Bool)

(assert (=> setNonEmpty!50183 m!7793648))

(declare-fun b!7068989 () Bool)

(declare-fun e!4249838 () Bool)

(declare-fun tp!1941964 () Bool)

(assert (=> b!7068989 (= e!4249838 (and tp_is_empty!44481 tp!1941964))))

(assert (=> b!7068773 (= tp!1941936 e!4249838)))

(assert (= (and b!7068773 (is-Cons!68287 (t!382194 s!7408))) b!7068989))

(declare-fun b!7068990 () Bool)

(declare-fun e!4249839 () Bool)

(declare-fun tp!1941965 () Bool)

(declare-fun tp!1941966 () Bool)

(assert (=> b!7068990 (= e!4249839 (and tp!1941965 tp!1941966))))

(assert (=> b!7068786 (= tp!1941935 e!4249839)))

(assert (= (and b!7068786 (is-Cons!68286 (exprs!7124 setElem!50177))) b!7068990))

(declare-fun b_lambda!269853 () Bool)

(assert (= b_lambda!269851 (or b!7068776 b_lambda!269853)))

(declare-fun bs!1880328 () Bool)

(declare-fun d!2210632 () Bool)

(assert (= bs!1880328 (and d!2210632 b!7068776)))

(assert (=> bs!1880328 (= (dynLambda!27762 lambda!424605 lt!2543269) (matchZipper!3168 (set.insert lt!2543269 (as set.empty (Set Context!13248))) s!7408))))

(declare-fun m!7793650 () Bool)

(assert (=> bs!1880328 m!7793650))

(assert (=> bs!1880328 m!7793650))

(declare-fun m!7793652 () Bool)

(assert (=> bs!1880328 m!7793652))

(assert (=> d!2210602 d!2210632))

(declare-fun b_lambda!269855 () Bool)

(assert (= b_lambda!269849 (or b!7068783 b_lambda!269855)))

(declare-fun bs!1880329 () Bool)

(declare-fun d!2210634 () Bool)

(assert (= bs!1880329 (and d!2210634 b!7068783)))

(assert (=> bs!1880329 (= (dynLambda!27760 lambda!424608 lt!2543114) (derivationStepZipperUp!2212 lt!2543114 (h!74735 s!7408)))))

(assert (=> bs!1880329 m!7793380))

(assert (=> d!2210590 d!2210634))

(declare-fun b_lambda!269857 () Bool)

(assert (= b_lambda!269847 (or b!7068788 b_lambda!269857)))

(declare-fun bs!1880330 () Bool)

(declare-fun d!2210636 () Bool)

(assert (= bs!1880330 (and d!2210636 b!7068788)))

(declare-fun lt!2543285 () Unit!161966)

(assert (=> bs!1880330 (= lt!2543285 (lemmaConcatPreservesForall!939 (exprs!7124 lt!2543260) (exprs!7124 ct2!306) lambda!424607))))

(assert (=> bs!1880330 (= (dynLambda!27759 lambda!424606 lt!2543260) (Context!13249 (++!15745 (exprs!7124 lt!2543260) (exprs!7124 ct2!306))))))

(declare-fun m!7793654 () Bool)

(assert (=> bs!1880330 m!7793654))

(declare-fun m!7793656 () Bool)

(assert (=> bs!1880330 m!7793656))

(assert (=> d!2210578 d!2210636))

(push 1)

(assert (not d!2210612))

(assert (not d!2210596))

(assert (not d!2210624))

(assert (not d!2210600))

(assert (not d!2210604))

(assert (not bm!642438))

(assert (not d!2210568))

(assert (not b!7068984))

(assert (not b_lambda!269857))

(assert (not bs!1880328))

(assert (not b!7068953))

(assert (not b_lambda!269853))

(assert (not bm!642454))

(assert (not b!7068962))

(assert (not bm!642460))

(assert (not b!7068967))

(assert (not b!7068952))

(assert tp_is_empty!44481)

(assert (not d!2210586))

(assert (not b!7068928))

(assert (not b!7068877))

(assert (not d!2210598))

(assert (not d!2210592))

(assert (not b!7068972))

(assert (not d!2210608))

(assert (not b!7068990))

(assert (not d!2210602))

(assert (not b!7068934))

(assert (not b!7068943))

(assert (not b_lambda!269855))

(assert (not bm!642453))

(assert (not b!7068878))

(assert (not bm!642461))

(assert (not b!7068971))

(assert (not d!2210590))

(assert (not bm!642463))

(assert (not d!2210628))

(assert (not setNonEmpty!50183))

(assert (not d!2210620))

(assert (not d!2210630))

(assert (not d!2210606))

(assert (not bm!642457))

(assert (not b!7068979))

(assert (not bm!642456))

(assert (not d!2210570))

(assert (not d!2210584))

(assert (not b!7068866))

(assert (not b!7068970))

(assert (not d!2210618))

(assert (not d!2210578))

(assert (not b!7068966))

(assert (not d!2210626))

(assert (not b!7068954))

(assert (not b!7068989))

(assert (not bs!1880329))

(assert (not d!2210574))

(assert (not b!7068933))

(assert (not b!7068944))

(assert (not b!7068974))

(assert (not d!2210610))

(assert (not d!2210576))

(assert (not b!7068898))

(assert (not bs!1880330))

(assert (not b!7068867))

(assert (not b!7068973))

(assert (not d!2210594))

(assert (not b!7068940))

(assert (not d!2210616))

(assert (not b!7068894))

(assert (not b!7068936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

