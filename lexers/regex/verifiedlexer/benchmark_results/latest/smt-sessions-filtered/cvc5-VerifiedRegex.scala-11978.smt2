; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671120 () Bool)

(assert start!671120)

(declare-fun b!6986757 () Bool)

(assert (=> b!6986757 true))

(declare-fun b!6986755 () Bool)

(assert (=> b!6986755 true))

(declare-fun b!6986749 () Bool)

(assert (=> b!6986749 true))

(declare-fun b!6986742 () Bool)

(declare-fun res!2849103 () Bool)

(declare-fun e!4199294 () Bool)

(assert (=> b!6986742 (=> res!2849103 e!4199294)))

(declare-datatypes ((C!34674 0))(
  ( (C!34675 (val!27039 Int)) )
))
(declare-datatypes ((Regex!17202 0))(
  ( (ElementMatch!17202 (c!1295642 C!34674)) (Concat!26047 (regOne!34916 Regex!17202) (regTwo!34916 Regex!17202)) (EmptyExpr!17202) (Star!17202 (reg!17531 Regex!17202)) (EmptyLang!17202) (Union!17202 (regOne!34917 Regex!17202) (regTwo!34917 Regex!17202)) )
))
(declare-datatypes ((List!67151 0))(
  ( (Nil!67027) (Cons!67027 (h!73475 Regex!17202) (t!380898 List!67151)) )
))
(declare-datatypes ((Context!12396 0))(
  ( (Context!12397 (exprs!6698 List!67151)) )
))
(declare-fun lt!2484666 () Context!12396)

(declare-fun lt!2484671 () (Set Context!12396))

(assert (=> b!6986742 (= res!2849103 (not (set.member lt!2484666 lt!2484671)))))

(declare-fun b!6986743 () Bool)

(declare-fun e!4199300 () Bool)

(declare-fun ct2!306 () Context!12396)

(declare-fun lambda!400591 () Int)

(declare-fun forall!16111 (List!67151 Int) Bool)

(assert (=> b!6986743 (= e!4199300 (forall!16111 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986744 () Bool)

(declare-fun e!4199288 () Bool)

(declare-fun tp!1929250 () Bool)

(assert (=> b!6986744 (= e!4199288 tp!1929250)))

(declare-fun b!6986745 () Bool)

(declare-fun e!4199296 () Bool)

(declare-fun tp_is_empty!43629 () Bool)

(declare-fun tp!1929247 () Bool)

(assert (=> b!6986745 (= e!4199296 (and tp_is_empty!43629 tp!1929247))))

(declare-fun b!6986746 () Bool)

(declare-fun e!4199290 () Bool)

(declare-fun e!4199299 () Bool)

(assert (=> b!6986746 (= e!4199290 e!4199299)))

(declare-fun res!2849108 () Bool)

(assert (=> b!6986746 (=> res!2849108 e!4199299)))

(declare-fun lt!2484656 () (Set Context!12396))

(declare-fun lt!2484654 () (Set Context!12396))

(assert (=> b!6986746 (= res!2849108 (not (= lt!2484656 lt!2484654)))))

(declare-fun lt!2484660 () Context!12396)

(assert (=> b!6986746 (= lt!2484656 (set.insert lt!2484660 (as set.empty (Set Context!12396))))))

(declare-datatypes ((Unit!161059 0))(
  ( (Unit!161060) )
))
(declare-fun lt!2484659 () Unit!161059)

(declare-fun lt!2484662 () Context!12396)

(declare-fun lemmaConcatPreservesForall!538 (List!67151 List!67151 Int) Unit!161059)

(assert (=> b!6986746 (= lt!2484659 (lemmaConcatPreservesForall!538 (exprs!6698 lt!2484662) (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986747 () Bool)

(declare-fun e!4199297 () Bool)

(declare-fun lt!2484665 () (Set Context!12396))

(declare-datatypes ((List!67152 0))(
  ( (Nil!67028) (Cons!67028 (h!73476 C!34674) (t!380899 List!67152)) )
))
(declare-fun s!7408 () List!67152)

(declare-fun matchZipper!2742 ((Set Context!12396) List!67152) Bool)

(assert (=> b!6986747 (= e!4199297 (matchZipper!2742 lt!2484665 (t!380899 s!7408)))))

(declare-fun b!6986748 () Bool)

(declare-fun e!4199302 () Bool)

(assert (=> b!6986748 (= e!4199302 e!4199300)))

(declare-fun res!2849116 () Bool)

(assert (=> b!6986748 (=> res!2849116 e!4199300)))

(declare-fun lt!2484657 () List!67151)

(assert (=> b!6986748 (= res!2849116 (not (forall!16111 lt!2484657 lambda!400591)))))

(declare-fun lt!2484680 () Unit!161059)

(assert (=> b!6986748 (= lt!2484680 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun e!4199291 () Bool)

(assert (=> b!6986749 (= e!4199299 e!4199291)))

(declare-fun res!2849102 () Bool)

(assert (=> b!6986749 (=> res!2849102 e!4199291)))

(declare-fun lt!2484668 () (Set Context!12396))

(declare-fun derivationStepZipper!2682 ((Set Context!12396) C!34674) (Set Context!12396))

(assert (=> b!6986749 (= res!2849102 (not (= (derivationStepZipper!2682 lt!2484656 (h!73476 s!7408)) lt!2484668)))))

(declare-fun lambda!400592 () Int)

(declare-fun flatMap!2188 ((Set Context!12396) Int) (Set Context!12396))

(declare-fun derivationStepZipperUp!1852 (Context!12396 C!34674) (Set Context!12396))

(assert (=> b!6986749 (= (flatMap!2188 lt!2484656 lambda!400592) (derivationStepZipperUp!1852 lt!2484660 (h!73476 s!7408)))))

(declare-fun lt!2484663 () Unit!161059)

(declare-fun lemmaFlatMapOnSingletonSet!1703 ((Set Context!12396) Context!12396 Int) Unit!161059)

(assert (=> b!6986749 (= lt!2484663 (lemmaFlatMapOnSingletonSet!1703 lt!2484656 lt!2484660 lambda!400592))))

(assert (=> b!6986749 (= lt!2484668 (derivationStepZipperUp!1852 lt!2484660 (h!73476 s!7408)))))

(declare-fun lt!2484672 () Unit!161059)

(assert (=> b!6986749 (= lt!2484672 (lemmaConcatPreservesForall!538 (exprs!6698 lt!2484662) (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986750 () Bool)

(declare-fun e!4199289 () Bool)

(assert (=> b!6986750 (= e!4199291 e!4199289)))

(declare-fun res!2849113 () Bool)

(assert (=> b!6986750 (=> res!2849113 e!4199289)))

(declare-fun nullable!6962 (Regex!17202) Bool)

(assert (=> b!6986750 (= res!2849113 (not (nullable!6962 (h!73475 (exprs!6698 lt!2484662)))))))

(declare-fun tail!13201 (List!67151) List!67151)

(assert (=> b!6986750 (= lt!2484657 (tail!13201 (exprs!6698 lt!2484662)))))

(declare-fun b!6986751 () Bool)

(declare-fun res!2849111 () Bool)

(assert (=> b!6986751 (=> res!2849111 e!4199291)))

(declare-fun isEmpty!39125 (List!67151) Bool)

(assert (=> b!6986751 (= res!2849111 (isEmpty!39125 (exprs!6698 lt!2484662)))))

(declare-fun b!6986752 () Bool)

(declare-fun e!4199292 () Bool)

(assert (=> b!6986752 (= e!4199292 e!4199302)))

(declare-fun res!2849112 () Bool)

(assert (=> b!6986752 (=> res!2849112 e!4199302)))

(assert (=> b!6986752 (= res!2849112 (not (matchZipper!2742 lt!2484665 (t!380899 s!7408))))))

(declare-fun lt!2484674 () Unit!161059)

(assert (=> b!6986752 (= lt!2484674 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986753 () Bool)

(declare-fun res!2849106 () Bool)

(assert (=> b!6986753 (=> res!2849106 e!4199292)))

(declare-fun lt!2484655 () Bool)

(assert (=> b!6986753 (= res!2849106 (not lt!2484655))))

(declare-fun b!6986754 () Bool)

(declare-fun e!4199298 () Bool)

(declare-fun tp!1929249 () Bool)

(assert (=> b!6986754 (= e!4199298 tp!1929249)))

(declare-fun setRes!47718 () Bool)

(declare-fun tp!1929248 () Bool)

(declare-fun setNonEmpty!47718 () Bool)

(declare-fun setElem!47718 () Context!12396)

(declare-fun inv!85865 (Context!12396) Bool)

(assert (=> setNonEmpty!47718 (= setRes!47718 (and tp!1929248 (inv!85865 setElem!47718) e!4199288))))

(declare-fun z1!570 () (Set Context!12396))

(declare-fun setRest!47718 () (Set Context!12396))

(assert (=> setNonEmpty!47718 (= z1!570 (set.union (set.insert setElem!47718 (as set.empty (Set Context!12396))) setRest!47718))))

(declare-fun res!2849118 () Bool)

(declare-fun e!4199293 () Bool)

(assert (=> start!671120 (=> (not res!2849118) (not e!4199293))))

(assert (=> start!671120 (= res!2849118 (matchZipper!2742 lt!2484671 s!7408))))

(declare-fun appendTo!323 ((Set Context!12396) Context!12396) (Set Context!12396))

(assert (=> start!671120 (= lt!2484671 (appendTo!323 z1!570 ct2!306))))

(assert (=> start!671120 e!4199293))

(declare-fun condSetEmpty!47718 () Bool)

(assert (=> start!671120 (= condSetEmpty!47718 (= z1!570 (as set.empty (Set Context!12396))))))

(assert (=> start!671120 setRes!47718))

(assert (=> start!671120 (and (inv!85865 ct2!306) e!4199298)))

(assert (=> start!671120 e!4199296))

(declare-fun setIsEmpty!47718 () Bool)

(assert (=> setIsEmpty!47718 setRes!47718))

(assert (=> b!6986755 (= e!4199294 e!4199290)))

(declare-fun res!2849117 () Bool)

(assert (=> b!6986755 (=> res!2849117 e!4199290)))

(assert (=> b!6986755 (= res!2849117 (or (not (= lt!2484660 lt!2484666)) (not (set.member lt!2484662 z1!570))))))

(declare-fun ++!15147 (List!67151 List!67151) List!67151)

(assert (=> b!6986755 (= lt!2484660 (Context!12397 (++!15147 (exprs!6698 lt!2484662) (exprs!6698 ct2!306))))))

(declare-fun lt!2484664 () Unit!161059)

(assert (=> b!6986755 (= lt!2484664 (lemmaConcatPreservesForall!538 (exprs!6698 lt!2484662) (exprs!6698 ct2!306) lambda!400591))))

(declare-fun lambda!400590 () Int)

(declare-fun mapPost2!57 ((Set Context!12396) Int Context!12396) Context!12396)

(assert (=> b!6986755 (= lt!2484662 (mapPost2!57 z1!570 lambda!400590 lt!2484666))))

(declare-fun b!6986756 () Bool)

(declare-fun e!4199295 () Bool)

(assert (=> b!6986756 (= e!4199295 e!4199292)))

(declare-fun res!2849105 () Bool)

(assert (=> b!6986756 (=> res!2849105 e!4199292)))

(declare-fun e!4199301 () Bool)

(assert (=> b!6986756 (= res!2849105 e!4199301)))

(declare-fun res!2849109 () Bool)

(assert (=> b!6986756 (=> (not res!2849109) (not e!4199301))))

(declare-fun lt!2484667 () Bool)

(assert (=> b!6986756 (= res!2849109 (not (= lt!2484655 lt!2484667)))))

(assert (=> b!6986756 (= lt!2484655 (matchZipper!2742 lt!2484668 (t!380899 s!7408)))))

(declare-fun lt!2484661 () Unit!161059)

(assert (=> b!6986756 (= lt!2484661 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun lt!2484676 () (Set Context!12396))

(assert (=> b!6986756 (= (matchZipper!2742 lt!2484676 (t!380899 s!7408)) e!4199297)))

(declare-fun res!2849115 () Bool)

(assert (=> b!6986756 (=> res!2849115 e!4199297)))

(assert (=> b!6986756 (= res!2849115 lt!2484667)))

(declare-fun lt!2484673 () (Set Context!12396))

(assert (=> b!6986756 (= lt!2484667 (matchZipper!2742 lt!2484673 (t!380899 s!7408)))))

(declare-fun lt!2484681 () Unit!161059)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1375 ((Set Context!12396) (Set Context!12396) List!67152) Unit!161059)

(assert (=> b!6986756 (= lt!2484681 (lemmaZipperConcatMatchesSameAsBothZippers!1375 lt!2484673 lt!2484665 (t!380899 s!7408)))))

(declare-fun lt!2484670 () Unit!161059)

(assert (=> b!6986756 (= lt!2484670 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun lt!2484658 () Unit!161059)

(assert (=> b!6986756 (= lt!2484658 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(assert (=> b!6986757 (= e!4199293 (not e!4199294))))

(declare-fun res!2849110 () Bool)

(assert (=> b!6986757 (=> res!2849110 e!4199294)))

(assert (=> b!6986757 (= res!2849110 (not (matchZipper!2742 lt!2484654 s!7408)))))

(assert (=> b!6986757 (= lt!2484654 (set.insert lt!2484666 (as set.empty (Set Context!12396))))))

(declare-fun lambda!400589 () Int)

(declare-fun getWitness!1092 ((Set Context!12396) Int) Context!12396)

(assert (=> b!6986757 (= lt!2484666 (getWitness!1092 lt!2484671 lambda!400589))))

(declare-datatypes ((List!67153 0))(
  ( (Nil!67029) (Cons!67029 (h!73477 Context!12396) (t!380900 List!67153)) )
))
(declare-fun lt!2484678 () List!67153)

(declare-fun exists!2981 (List!67153 Int) Bool)

(assert (=> b!6986757 (exists!2981 lt!2484678 lambda!400589)))

(declare-fun lt!2484677 () Unit!161059)

(declare-fun lemmaZipperMatchesExistsMatchingContext!171 (List!67153 List!67152) Unit!161059)

(assert (=> b!6986757 (= lt!2484677 (lemmaZipperMatchesExistsMatchingContext!171 lt!2484678 s!7408))))

(declare-fun toList!10562 ((Set Context!12396)) List!67153)

(assert (=> b!6986757 (= lt!2484678 (toList!10562 lt!2484671))))

(declare-fun b!6986758 () Bool)

(assert (=> b!6986758 (= e!4199289 e!4199295)))

(declare-fun res!2849114 () Bool)

(assert (=> b!6986758 (=> res!2849114 e!4199295)))

(assert (=> b!6986758 (= res!2849114 (not (= lt!2484668 lt!2484676)))))

(assert (=> b!6986758 (= lt!2484676 (set.union lt!2484673 lt!2484665))))

(declare-fun lt!2484679 () Context!12396)

(assert (=> b!6986758 (= lt!2484665 (derivationStepZipperUp!1852 lt!2484679 (h!73476 s!7408)))))

(declare-fun derivationStepZipperDown!1920 (Regex!17202 Context!12396 C!34674) (Set Context!12396))

(assert (=> b!6986758 (= lt!2484673 (derivationStepZipperDown!1920 (h!73475 (exprs!6698 lt!2484662)) lt!2484679 (h!73476 s!7408)))))

(assert (=> b!6986758 (= lt!2484679 (Context!12397 (++!15147 lt!2484657 (exprs!6698 ct2!306))))))

(declare-fun lt!2484682 () Unit!161059)

(assert (=> b!6986758 (= lt!2484682 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun lt!2484675 () Unit!161059)

(assert (=> b!6986758 (= lt!2484675 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986759 () Bool)

(assert (=> b!6986759 (= e!4199301 (not (matchZipper!2742 lt!2484665 (t!380899 s!7408))))))

(declare-fun lt!2484669 () Unit!161059)

(assert (=> b!6986759 (= lt!2484669 (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(declare-fun b!6986760 () Bool)

(declare-fun res!2849107 () Bool)

(assert (=> b!6986760 (=> res!2849107 e!4199291)))

(assert (=> b!6986760 (= res!2849107 (not (is-Cons!67027 (exprs!6698 lt!2484662))))))

(declare-fun b!6986761 () Bool)

(declare-fun res!2849104 () Bool)

(assert (=> b!6986761 (=> (not res!2849104) (not e!4199293))))

(assert (=> b!6986761 (= res!2849104 (is-Cons!67028 s!7408))))

(assert (= (and start!671120 res!2849118) b!6986761))

(assert (= (and b!6986761 res!2849104) b!6986757))

(assert (= (and b!6986757 (not res!2849110)) b!6986742))

(assert (= (and b!6986742 (not res!2849103)) b!6986755))

(assert (= (and b!6986755 (not res!2849117)) b!6986746))

(assert (= (and b!6986746 (not res!2849108)) b!6986749))

(assert (= (and b!6986749 (not res!2849102)) b!6986760))

(assert (= (and b!6986760 (not res!2849107)) b!6986751))

(assert (= (and b!6986751 (not res!2849111)) b!6986750))

(assert (= (and b!6986750 (not res!2849113)) b!6986758))

(assert (= (and b!6986758 (not res!2849114)) b!6986756))

(assert (= (and b!6986756 (not res!2849115)) b!6986747))

(assert (= (and b!6986756 res!2849109) b!6986759))

(assert (= (and b!6986756 (not res!2849105)) b!6986753))

(assert (= (and b!6986753 (not res!2849106)) b!6986752))

(assert (= (and b!6986752 (not res!2849112)) b!6986748))

(assert (= (and b!6986748 (not res!2849116)) b!6986743))

(assert (= (and start!671120 condSetEmpty!47718) setIsEmpty!47718))

(assert (= (and start!671120 (not condSetEmpty!47718)) setNonEmpty!47718))

(assert (= setNonEmpty!47718 b!6986744))

(assert (= start!671120 b!6986754))

(assert (= (and start!671120 (is-Cons!67028 s!7408)) b!6986745))

(declare-fun m!7674566 () Bool)

(assert (=> b!6986758 m!7674566))

(assert (=> b!6986758 m!7674566))

(declare-fun m!7674568 () Bool)

(assert (=> b!6986758 m!7674568))

(declare-fun m!7674570 () Bool)

(assert (=> b!6986758 m!7674570))

(declare-fun m!7674572 () Bool)

(assert (=> b!6986758 m!7674572))

(declare-fun m!7674574 () Bool)

(assert (=> b!6986750 m!7674574))

(declare-fun m!7674576 () Bool)

(assert (=> b!6986750 m!7674576))

(declare-fun m!7674578 () Bool)

(assert (=> setNonEmpty!47718 m!7674578))

(declare-fun m!7674580 () Bool)

(assert (=> b!6986751 m!7674580))

(declare-fun m!7674582 () Bool)

(assert (=> b!6986747 m!7674582))

(declare-fun m!7674584 () Bool)

(assert (=> b!6986755 m!7674584))

(declare-fun m!7674586 () Bool)

(assert (=> b!6986755 m!7674586))

(declare-fun m!7674588 () Bool)

(assert (=> b!6986755 m!7674588))

(declare-fun m!7674590 () Bool)

(assert (=> b!6986755 m!7674590))

(assert (=> b!6986752 m!7674582))

(assert (=> b!6986752 m!7674566))

(declare-fun m!7674592 () Bool)

(assert (=> b!6986749 m!7674592))

(declare-fun m!7674594 () Bool)

(assert (=> b!6986749 m!7674594))

(assert (=> b!6986749 m!7674588))

(declare-fun m!7674596 () Bool)

(assert (=> b!6986749 m!7674596))

(declare-fun m!7674598 () Bool)

(assert (=> b!6986749 m!7674598))

(declare-fun m!7674600 () Bool)

(assert (=> b!6986746 m!7674600))

(assert (=> b!6986746 m!7674588))

(declare-fun m!7674602 () Bool)

(assert (=> b!6986743 m!7674602))

(assert (=> b!6986759 m!7674582))

(assert (=> b!6986759 m!7674566))

(declare-fun m!7674604 () Bool)

(assert (=> b!6986756 m!7674604))

(assert (=> b!6986756 m!7674566))

(declare-fun m!7674606 () Bool)

(assert (=> b!6986756 m!7674606))

(assert (=> b!6986756 m!7674566))

(declare-fun m!7674608 () Bool)

(assert (=> b!6986756 m!7674608))

(declare-fun m!7674610 () Bool)

(assert (=> b!6986756 m!7674610))

(assert (=> b!6986756 m!7674566))

(declare-fun m!7674612 () Bool)

(assert (=> b!6986748 m!7674612))

(assert (=> b!6986748 m!7674566))

(declare-fun m!7674614 () Bool)

(assert (=> b!6986742 m!7674614))

(declare-fun m!7674616 () Bool)

(assert (=> b!6986757 m!7674616))

(declare-fun m!7674618 () Bool)

(assert (=> b!6986757 m!7674618))

(declare-fun m!7674620 () Bool)

(assert (=> b!6986757 m!7674620))

(declare-fun m!7674622 () Bool)

(assert (=> b!6986757 m!7674622))

(declare-fun m!7674624 () Bool)

(assert (=> b!6986757 m!7674624))

(declare-fun m!7674626 () Bool)

(assert (=> b!6986757 m!7674626))

(declare-fun m!7674628 () Bool)

(assert (=> start!671120 m!7674628))

(declare-fun m!7674630 () Bool)

(assert (=> start!671120 m!7674630))

(declare-fun m!7674632 () Bool)

(assert (=> start!671120 m!7674632))

(push 1)

(assert (not b!6986751))

(assert (not b!6986758))

(assert (not b!6986752))

(assert (not b!6986750))

(assert (not b!6986743))

(assert (not b!6986747))

(assert (not b!6986759))

(assert (not b!6986748))

(assert (not b!6986749))

(assert (not start!671120))

(assert tp_is_empty!43629)

(assert (not b!6986756))

(assert (not b!6986755))

(assert (not b!6986757))

(assert (not b!6986754))

(assert (not b!6986746))

(assert (not setNonEmpty!47718))

(assert (not b!6986744))

(assert (not b!6986745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176247 () Bool)

(declare-fun res!2849175 () Bool)

(declare-fun e!4199352 () Bool)

(assert (=> d!2176247 (=> res!2849175 e!4199352)))

(assert (=> d!2176247 (= res!2849175 (is-Nil!67027 lt!2484657))))

(assert (=> d!2176247 (= (forall!16111 lt!2484657 lambda!400591) e!4199352)))

(declare-fun b!6986838 () Bool)

(declare-fun e!4199353 () Bool)

(assert (=> b!6986838 (= e!4199352 e!4199353)))

(declare-fun res!2849176 () Bool)

(assert (=> b!6986838 (=> (not res!2849176) (not e!4199353))))

(declare-fun dynLambda!26854 (Int Regex!17202) Bool)

(assert (=> b!6986838 (= res!2849176 (dynLambda!26854 lambda!400591 (h!73475 lt!2484657)))))

(declare-fun b!6986839 () Bool)

(assert (=> b!6986839 (= e!4199353 (forall!16111 (t!380898 lt!2484657) lambda!400591))))

(assert (= (and d!2176247 (not res!2849175)) b!6986838))

(assert (= (and b!6986838 res!2849176) b!6986839))

(declare-fun b_lambda!262275 () Bool)

(assert (=> (not b_lambda!262275) (not b!6986838)))

(declare-fun m!7674702 () Bool)

(assert (=> b!6986838 m!7674702))

(declare-fun m!7674704 () Bool)

(assert (=> b!6986839 m!7674704))

(assert (=> b!6986748 d!2176247))

(declare-fun d!2176249 () Bool)

(assert (=> d!2176249 (forall!16111 (++!15147 lt!2484657 (exprs!6698 ct2!306)) lambda!400591)))

(declare-fun lt!2484774 () Unit!161059)

(declare-fun choose!52189 (List!67151 List!67151 Int) Unit!161059)

(assert (=> d!2176249 (= lt!2484774 (choose!52189 lt!2484657 (exprs!6698 ct2!306) lambda!400591))))

(assert (=> d!2176249 (forall!16111 lt!2484657 lambda!400591)))

(assert (=> d!2176249 (= (lemmaConcatPreservesForall!538 lt!2484657 (exprs!6698 ct2!306) lambda!400591) lt!2484774)))

(declare-fun bs!1861792 () Bool)

(assert (= bs!1861792 d!2176249))

(assert (=> bs!1861792 m!7674572))

(assert (=> bs!1861792 m!7674572))

(declare-fun m!7674706 () Bool)

(assert (=> bs!1861792 m!7674706))

(declare-fun m!7674708 () Bool)

(assert (=> bs!1861792 m!7674708))

(assert (=> bs!1861792 m!7674612))

(assert (=> b!6986748 d!2176249))

(declare-fun bs!1861793 () Bool)

(declare-fun d!2176251 () Bool)

(assert (= bs!1861793 (and d!2176251 b!6986757)))

(declare-fun lambda!400633 () Int)

(assert (=> bs!1861793 (not (= lambda!400633 lambda!400589))))

(assert (=> d!2176251 true))

(declare-fun order!27895 () Int)

(declare-fun dynLambda!26855 (Int Int) Int)

(assert (=> d!2176251 (< (dynLambda!26855 order!27895 lambda!400589) (dynLambda!26855 order!27895 lambda!400633))))

(declare-fun forall!16113 (List!67153 Int) Bool)

(assert (=> d!2176251 (= (exists!2981 lt!2484678 lambda!400589) (not (forall!16113 lt!2484678 lambda!400633)))))

(declare-fun bs!1861794 () Bool)

(assert (= bs!1861794 d!2176251))

(declare-fun m!7674710 () Bool)

(assert (=> bs!1861794 m!7674710))

(assert (=> b!6986757 d!2176251))

(declare-fun d!2176253 () Bool)

(declare-fun e!4199356 () Bool)

(assert (=> d!2176253 e!4199356))

(declare-fun res!2849179 () Bool)

(assert (=> d!2176253 (=> (not res!2849179) (not e!4199356))))

(declare-fun lt!2484777 () List!67153)

(declare-fun noDuplicate!2514 (List!67153) Bool)

(assert (=> d!2176253 (= res!2849179 (noDuplicate!2514 lt!2484777))))

(declare-fun choose!52190 ((Set Context!12396)) List!67153)

(assert (=> d!2176253 (= lt!2484777 (choose!52190 lt!2484671))))

(assert (=> d!2176253 (= (toList!10562 lt!2484671) lt!2484777)))

(declare-fun b!6986844 () Bool)

(declare-fun content!13241 (List!67153) (Set Context!12396))

(assert (=> b!6986844 (= e!4199356 (= (content!13241 lt!2484777) lt!2484671))))

(assert (= (and d!2176253 res!2849179) b!6986844))

(declare-fun m!7674712 () Bool)

(assert (=> d!2176253 m!7674712))

(declare-fun m!7674714 () Bool)

(assert (=> d!2176253 m!7674714))

(declare-fun m!7674716 () Bool)

(assert (=> b!6986844 m!7674716))

(assert (=> b!6986757 d!2176253))

(declare-fun bs!1861795 () Bool)

(declare-fun d!2176255 () Bool)

(assert (= bs!1861795 (and d!2176255 b!6986757)))

(declare-fun lambda!400636 () Int)

(assert (=> bs!1861795 (= lambda!400636 lambda!400589)))

(declare-fun bs!1861796 () Bool)

(assert (= bs!1861796 (and d!2176255 d!2176251)))

(assert (=> bs!1861796 (not (= lambda!400636 lambda!400633))))

(assert (=> d!2176255 true))

(assert (=> d!2176255 (exists!2981 lt!2484678 lambda!400636)))

(declare-fun lt!2484780 () Unit!161059)

(declare-fun choose!52191 (List!67153 List!67152) Unit!161059)

(assert (=> d!2176255 (= lt!2484780 (choose!52191 lt!2484678 s!7408))))

(assert (=> d!2176255 (matchZipper!2742 (content!13241 lt!2484678) s!7408)))

(assert (=> d!2176255 (= (lemmaZipperMatchesExistsMatchingContext!171 lt!2484678 s!7408) lt!2484780)))

(declare-fun bs!1861797 () Bool)

(assert (= bs!1861797 d!2176255))

(declare-fun m!7674718 () Bool)

(assert (=> bs!1861797 m!7674718))

(declare-fun m!7674720 () Bool)

(assert (=> bs!1861797 m!7674720))

(declare-fun m!7674722 () Bool)

(assert (=> bs!1861797 m!7674722))

(assert (=> bs!1861797 m!7674722))

(declare-fun m!7674724 () Bool)

(assert (=> bs!1861797 m!7674724))

(assert (=> b!6986757 d!2176255))

(declare-fun d!2176257 () Bool)

(declare-fun e!4199359 () Bool)

(assert (=> d!2176257 e!4199359))

(declare-fun res!2849182 () Bool)

(assert (=> d!2176257 (=> (not res!2849182) (not e!4199359))))

(declare-fun lt!2484783 () Context!12396)

(declare-fun dynLambda!26856 (Int Context!12396) Bool)

(assert (=> d!2176257 (= res!2849182 (dynLambda!26856 lambda!400589 lt!2484783))))

(declare-fun getWitness!1094 (List!67153 Int) Context!12396)

(assert (=> d!2176257 (= lt!2484783 (getWitness!1094 (toList!10562 lt!2484671) lambda!400589))))

(declare-fun exists!2983 ((Set Context!12396) Int) Bool)

(assert (=> d!2176257 (exists!2983 lt!2484671 lambda!400589)))

(assert (=> d!2176257 (= (getWitness!1092 lt!2484671 lambda!400589) lt!2484783)))

(declare-fun b!6986847 () Bool)

(assert (=> b!6986847 (= e!4199359 (set.member lt!2484783 lt!2484671))))

(assert (= (and d!2176257 res!2849182) b!6986847))

(declare-fun b_lambda!262277 () Bool)

(assert (=> (not b_lambda!262277) (not d!2176257)))

(declare-fun m!7674726 () Bool)

(assert (=> d!2176257 m!7674726))

(assert (=> d!2176257 m!7674616))

(assert (=> d!2176257 m!7674616))

(declare-fun m!7674728 () Bool)

(assert (=> d!2176257 m!7674728))

(declare-fun m!7674730 () Bool)

(assert (=> d!2176257 m!7674730))

(declare-fun m!7674732 () Bool)

(assert (=> b!6986847 m!7674732))

(assert (=> b!6986757 d!2176257))

(declare-fun d!2176259 () Bool)

(declare-fun c!1295656 () Bool)

(declare-fun isEmpty!39127 (List!67152) Bool)

(assert (=> d!2176259 (= c!1295656 (isEmpty!39127 s!7408))))

(declare-fun e!4199362 () Bool)

(assert (=> d!2176259 (= (matchZipper!2742 lt!2484654 s!7408) e!4199362)))

(declare-fun b!6986852 () Bool)

(declare-fun nullableZipper!2426 ((Set Context!12396)) Bool)

(assert (=> b!6986852 (= e!4199362 (nullableZipper!2426 lt!2484654))))

(declare-fun b!6986853 () Bool)

(declare-fun head!14101 (List!67152) C!34674)

(declare-fun tail!13203 (List!67152) List!67152)

(assert (=> b!6986853 (= e!4199362 (matchZipper!2742 (derivationStepZipper!2682 lt!2484654 (head!14101 s!7408)) (tail!13203 s!7408)))))

(assert (= (and d!2176259 c!1295656) b!6986852))

(assert (= (and d!2176259 (not c!1295656)) b!6986853))

(declare-fun m!7674734 () Bool)

(assert (=> d!2176259 m!7674734))

(declare-fun m!7674736 () Bool)

(assert (=> b!6986852 m!7674736))

(declare-fun m!7674738 () Bool)

(assert (=> b!6986853 m!7674738))

(assert (=> b!6986853 m!7674738))

(declare-fun m!7674740 () Bool)

(assert (=> b!6986853 m!7674740))

(declare-fun m!7674742 () Bool)

(assert (=> b!6986853 m!7674742))

(assert (=> b!6986853 m!7674740))

(assert (=> b!6986853 m!7674742))

(declare-fun m!7674744 () Bool)

(assert (=> b!6986853 m!7674744))

(assert (=> b!6986757 d!2176259))

(declare-fun bs!1861798 () Bool)

(declare-fun d!2176261 () Bool)

(assert (= bs!1861798 (and d!2176261 b!6986749)))

(declare-fun lambda!400639 () Int)

(assert (=> bs!1861798 (= lambda!400639 lambda!400592)))

(assert (=> d!2176261 true))

(assert (=> d!2176261 (= (derivationStepZipper!2682 lt!2484656 (h!73476 s!7408)) (flatMap!2188 lt!2484656 lambda!400639))))

(declare-fun bs!1861799 () Bool)

(assert (= bs!1861799 d!2176261))

(declare-fun m!7674746 () Bool)

(assert (=> bs!1861799 m!7674746))

(assert (=> b!6986749 d!2176261))

(declare-fun e!4199370 () (Set Context!12396))

(declare-fun b!6986866 () Bool)

(declare-fun call!634227 () (Set Context!12396))

(assert (=> b!6986866 (= e!4199370 (set.union call!634227 (derivationStepZipperUp!1852 (Context!12397 (t!380898 (exprs!6698 lt!2484660))) (h!73476 s!7408))))))

(declare-fun b!6986867 () Bool)

(declare-fun e!4199369 () Bool)

(assert (=> b!6986867 (= e!4199369 (nullable!6962 (h!73475 (exprs!6698 lt!2484660))))))

(declare-fun bm!634222 () Bool)

(assert (=> bm!634222 (= call!634227 (derivationStepZipperDown!1920 (h!73475 (exprs!6698 lt!2484660)) (Context!12397 (t!380898 (exprs!6698 lt!2484660))) (h!73476 s!7408)))))

(declare-fun d!2176263 () Bool)

(declare-fun c!1295663 () Bool)

(assert (=> d!2176263 (= c!1295663 e!4199369)))

(declare-fun res!2849185 () Bool)

(assert (=> d!2176263 (=> (not res!2849185) (not e!4199369))))

(assert (=> d!2176263 (= res!2849185 (is-Cons!67027 (exprs!6698 lt!2484660)))))

(assert (=> d!2176263 (= (derivationStepZipperUp!1852 lt!2484660 (h!73476 s!7408)) e!4199370)))

(declare-fun b!6986868 () Bool)

(declare-fun e!4199371 () (Set Context!12396))

(assert (=> b!6986868 (= e!4199370 e!4199371)))

(declare-fun c!1295664 () Bool)

(assert (=> b!6986868 (= c!1295664 (is-Cons!67027 (exprs!6698 lt!2484660)))))

(declare-fun b!6986869 () Bool)

(assert (=> b!6986869 (= e!4199371 call!634227)))

(declare-fun b!6986870 () Bool)

(assert (=> b!6986870 (= e!4199371 (as set.empty (Set Context!12396)))))

(assert (= (and d!2176263 res!2849185) b!6986867))

(assert (= (and d!2176263 c!1295663) b!6986866))

(assert (= (and d!2176263 (not c!1295663)) b!6986868))

(assert (= (and b!6986868 c!1295664) b!6986869))

(assert (= (and b!6986868 (not c!1295664)) b!6986870))

(assert (= (or b!6986866 b!6986869) bm!634222))

(declare-fun m!7674748 () Bool)

(assert (=> b!6986866 m!7674748))

(declare-fun m!7674750 () Bool)

(assert (=> b!6986867 m!7674750))

(declare-fun m!7674752 () Bool)

(assert (=> bm!634222 m!7674752))

(assert (=> b!6986749 d!2176263))

(declare-fun d!2176265 () Bool)

(declare-fun choose!52192 ((Set Context!12396) Int) (Set Context!12396))

(assert (=> d!2176265 (= (flatMap!2188 lt!2484656 lambda!400592) (choose!52192 lt!2484656 lambda!400592))))

(declare-fun bs!1861800 () Bool)

(assert (= bs!1861800 d!2176265))

(declare-fun m!7674754 () Bool)

(assert (=> bs!1861800 m!7674754))

(assert (=> b!6986749 d!2176265))

(declare-fun d!2176267 () Bool)

(declare-fun dynLambda!26857 (Int Context!12396) (Set Context!12396))

(assert (=> d!2176267 (= (flatMap!2188 lt!2484656 lambda!400592) (dynLambda!26857 lambda!400592 lt!2484660))))

(declare-fun lt!2484786 () Unit!161059)

(declare-fun choose!52193 ((Set Context!12396) Context!12396 Int) Unit!161059)

(assert (=> d!2176267 (= lt!2484786 (choose!52193 lt!2484656 lt!2484660 lambda!400592))))

(assert (=> d!2176267 (= lt!2484656 (set.insert lt!2484660 (as set.empty (Set Context!12396))))))

(assert (=> d!2176267 (= (lemmaFlatMapOnSingletonSet!1703 lt!2484656 lt!2484660 lambda!400592) lt!2484786)))

(declare-fun b_lambda!262279 () Bool)

(assert (=> (not b_lambda!262279) (not d!2176267)))

(declare-fun bs!1861801 () Bool)

(assert (= bs!1861801 d!2176267))

(assert (=> bs!1861801 m!7674594))

(declare-fun m!7674756 () Bool)

(assert (=> bs!1861801 m!7674756))

(declare-fun m!7674758 () Bool)

(assert (=> bs!1861801 m!7674758))

(assert (=> bs!1861801 m!7674600))

(assert (=> b!6986749 d!2176267))

(declare-fun d!2176269 () Bool)

(assert (=> d!2176269 (forall!16111 (++!15147 (exprs!6698 lt!2484662) (exprs!6698 ct2!306)) lambda!400591)))

(declare-fun lt!2484787 () Unit!161059)

(assert (=> d!2176269 (= lt!2484787 (choose!52189 (exprs!6698 lt!2484662) (exprs!6698 ct2!306) lambda!400591))))

(assert (=> d!2176269 (forall!16111 (exprs!6698 lt!2484662) lambda!400591)))

(assert (=> d!2176269 (= (lemmaConcatPreservesForall!538 (exprs!6698 lt!2484662) (exprs!6698 ct2!306) lambda!400591) lt!2484787)))

(declare-fun bs!1861802 () Bool)

(assert (= bs!1861802 d!2176269))

(assert (=> bs!1861802 m!7674586))

(assert (=> bs!1861802 m!7674586))

(declare-fun m!7674760 () Bool)

(assert (=> bs!1861802 m!7674760))

(declare-fun m!7674762 () Bool)

(assert (=> bs!1861802 m!7674762))

(declare-fun m!7674764 () Bool)

(assert (=> bs!1861802 m!7674764))

(assert (=> b!6986749 d!2176269))

(assert (=> b!6986758 d!2176249))

(declare-fun b!6986871 () Bool)

(declare-fun e!4199373 () (Set Context!12396))

(declare-fun call!634228 () (Set Context!12396))

(assert (=> b!6986871 (= e!4199373 (set.union call!634228 (derivationStepZipperUp!1852 (Context!12397 (t!380898 (exprs!6698 lt!2484679))) (h!73476 s!7408))))))

(declare-fun b!6986872 () Bool)

(declare-fun e!4199372 () Bool)

(assert (=> b!6986872 (= e!4199372 (nullable!6962 (h!73475 (exprs!6698 lt!2484679))))))

(declare-fun bm!634223 () Bool)

(assert (=> bm!634223 (= call!634228 (derivationStepZipperDown!1920 (h!73475 (exprs!6698 lt!2484679)) (Context!12397 (t!380898 (exprs!6698 lt!2484679))) (h!73476 s!7408)))))

(declare-fun d!2176271 () Bool)

(declare-fun c!1295665 () Bool)

(assert (=> d!2176271 (= c!1295665 e!4199372)))

(declare-fun res!2849186 () Bool)

(assert (=> d!2176271 (=> (not res!2849186) (not e!4199372))))

(assert (=> d!2176271 (= res!2849186 (is-Cons!67027 (exprs!6698 lt!2484679)))))

(assert (=> d!2176271 (= (derivationStepZipperUp!1852 lt!2484679 (h!73476 s!7408)) e!4199373)))

(declare-fun b!6986873 () Bool)

(declare-fun e!4199374 () (Set Context!12396))

(assert (=> b!6986873 (= e!4199373 e!4199374)))

(declare-fun c!1295666 () Bool)

(assert (=> b!6986873 (= c!1295666 (is-Cons!67027 (exprs!6698 lt!2484679)))))

(declare-fun b!6986874 () Bool)

(assert (=> b!6986874 (= e!4199374 call!634228)))

(declare-fun b!6986875 () Bool)

(assert (=> b!6986875 (= e!4199374 (as set.empty (Set Context!12396)))))

(assert (= (and d!2176271 res!2849186) b!6986872))

(assert (= (and d!2176271 c!1295665) b!6986871))

(assert (= (and d!2176271 (not c!1295665)) b!6986873))

(assert (= (and b!6986873 c!1295666) b!6986874))

(assert (= (and b!6986873 (not c!1295666)) b!6986875))

(assert (= (or b!6986871 b!6986874) bm!634223))

(declare-fun m!7674766 () Bool)

(assert (=> b!6986871 m!7674766))

(declare-fun m!7674768 () Bool)

(assert (=> b!6986872 m!7674768))

(declare-fun m!7674770 () Bool)

(assert (=> bm!634223 m!7674770))

(assert (=> b!6986758 d!2176271))

(declare-fun b!6986898 () Bool)

(declare-fun c!1295680 () Bool)

(assert (=> b!6986898 (= c!1295680 (is-Star!17202 (h!73475 (exprs!6698 lt!2484662))))))

(declare-fun e!4199390 () (Set Context!12396))

(declare-fun e!4199392 () (Set Context!12396))

(assert (=> b!6986898 (= e!4199390 e!4199392)))

(declare-fun b!6986899 () Bool)

(declare-fun call!634242 () (Set Context!12396))

(assert (=> b!6986899 (= e!4199392 call!634242)))

(declare-fun bm!634236 () Bool)

(declare-fun call!634246 () (Set Context!12396))

(declare-fun call!634245 () (Set Context!12396))

(assert (=> bm!634236 (= call!634246 call!634245)))

(declare-fun bm!634237 () Bool)

(declare-fun call!634244 () List!67151)

(declare-fun call!634243 () List!67151)

(assert (=> bm!634237 (= call!634244 call!634243)))

(declare-fun b!6986901 () Bool)

(assert (=> b!6986901 (= e!4199390 call!634242)))

(declare-fun b!6986902 () Bool)

(declare-fun e!4199389 () (Set Context!12396))

(assert (=> b!6986902 (= e!4199389 e!4199390)))

(declare-fun c!1295678 () Bool)

(assert (=> b!6986902 (= c!1295678 (is-Concat!26047 (h!73475 (exprs!6698 lt!2484662))))))

(declare-fun b!6986903 () Bool)

(declare-fun e!4199391 () Bool)

(assert (=> b!6986903 (= e!4199391 (nullable!6962 (regOne!34916 (h!73475 (exprs!6698 lt!2484662)))))))

(declare-fun b!6986904 () Bool)

(declare-fun call!634241 () (Set Context!12396))

(assert (=> b!6986904 (= e!4199389 (set.union call!634241 call!634246))))

(declare-fun b!6986905 () Bool)

(declare-fun e!4199388 () (Set Context!12396))

(declare-fun e!4199387 () (Set Context!12396))

(assert (=> b!6986905 (= e!4199388 e!4199387)))

(declare-fun c!1295681 () Bool)

(assert (=> b!6986905 (= c!1295681 (is-Union!17202 (h!73475 (exprs!6698 lt!2484662))))))

(declare-fun c!1295677 () Bool)

(declare-fun bm!634238 () Bool)

(declare-fun $colon$colon!2475 (List!67151 Regex!17202) List!67151)

(assert (=> bm!634238 (= call!634243 ($colon$colon!2475 (exprs!6698 lt!2484679) (ite (or c!1295677 c!1295678) (regTwo!34916 (h!73475 (exprs!6698 lt!2484662))) (h!73475 (exprs!6698 lt!2484662)))))))

(declare-fun d!2176273 () Bool)

(declare-fun c!1295679 () Bool)

(assert (=> d!2176273 (= c!1295679 (and (is-ElementMatch!17202 (h!73475 (exprs!6698 lt!2484662))) (= (c!1295642 (h!73475 (exprs!6698 lt!2484662))) (h!73476 s!7408))))))

(assert (=> d!2176273 (= (derivationStepZipperDown!1920 (h!73475 (exprs!6698 lt!2484662)) lt!2484679 (h!73476 s!7408)) e!4199388)))

(declare-fun b!6986900 () Bool)

(assert (=> b!6986900 (= e!4199388 (set.insert lt!2484679 (as set.empty (Set Context!12396))))))

(declare-fun bm!634239 () Bool)

(assert (=> bm!634239 (= call!634245 (derivationStepZipperDown!1920 (ite c!1295681 (regTwo!34917 (h!73475 (exprs!6698 lt!2484662))) (ite c!1295677 (regTwo!34916 (h!73475 (exprs!6698 lt!2484662))) (ite c!1295678 (regOne!34916 (h!73475 (exprs!6698 lt!2484662))) (reg!17531 (h!73475 (exprs!6698 lt!2484662)))))) (ite (or c!1295681 c!1295677) lt!2484679 (Context!12397 call!634244)) (h!73476 s!7408)))))

(declare-fun bm!634240 () Bool)

(assert (=> bm!634240 (= call!634241 (derivationStepZipperDown!1920 (ite c!1295681 (regOne!34917 (h!73475 (exprs!6698 lt!2484662))) (regOne!34916 (h!73475 (exprs!6698 lt!2484662)))) (ite c!1295681 lt!2484679 (Context!12397 call!634243)) (h!73476 s!7408)))))

(declare-fun b!6986906 () Bool)

(assert (=> b!6986906 (= c!1295677 e!4199391)))

(declare-fun res!2849189 () Bool)

(assert (=> b!6986906 (=> (not res!2849189) (not e!4199391))))

(assert (=> b!6986906 (= res!2849189 (is-Concat!26047 (h!73475 (exprs!6698 lt!2484662))))))

(assert (=> b!6986906 (= e!4199387 e!4199389)))

(declare-fun b!6986907 () Bool)

(assert (=> b!6986907 (= e!4199387 (set.union call!634241 call!634245))))

(declare-fun bm!634241 () Bool)

(assert (=> bm!634241 (= call!634242 call!634246)))

(declare-fun b!6986908 () Bool)

(assert (=> b!6986908 (= e!4199392 (as set.empty (Set Context!12396)))))

(assert (= (and d!2176273 c!1295679) b!6986900))

(assert (= (and d!2176273 (not c!1295679)) b!6986905))

(assert (= (and b!6986905 c!1295681) b!6986907))

(assert (= (and b!6986905 (not c!1295681)) b!6986906))

(assert (= (and b!6986906 res!2849189) b!6986903))

(assert (= (and b!6986906 c!1295677) b!6986904))

(assert (= (and b!6986906 (not c!1295677)) b!6986902))

(assert (= (and b!6986902 c!1295678) b!6986901))

(assert (= (and b!6986902 (not c!1295678)) b!6986898))

(assert (= (and b!6986898 c!1295680) b!6986899))

(assert (= (and b!6986898 (not c!1295680)) b!6986908))

(assert (= (or b!6986901 b!6986899) bm!634237))

(assert (= (or b!6986901 b!6986899) bm!634241))

(assert (= (or b!6986904 bm!634241) bm!634236))

(assert (= (or b!6986904 bm!634237) bm!634238))

(assert (= (or b!6986907 b!6986904) bm!634240))

(assert (= (or b!6986907 bm!634236) bm!634239))

(declare-fun m!7674772 () Bool)

(assert (=> bm!634240 m!7674772))

(declare-fun m!7674774 () Bool)

(assert (=> bm!634238 m!7674774))

(declare-fun m!7674776 () Bool)

(assert (=> b!6986903 m!7674776))

(declare-fun m!7674778 () Bool)

(assert (=> bm!634239 m!7674778))

(declare-fun m!7674780 () Bool)

(assert (=> b!6986900 m!7674780))

(assert (=> b!6986758 d!2176273))

(declare-fun d!2176275 () Bool)

(declare-fun e!4199397 () Bool)

(assert (=> d!2176275 e!4199397))

(declare-fun res!2849196 () Bool)

(assert (=> d!2176275 (=> (not res!2849196) (not e!4199397))))

(declare-fun lt!2484790 () List!67151)

(declare-fun content!13242 (List!67151) (Set Regex!17202))

(assert (=> d!2176275 (= res!2849196 (= (content!13242 lt!2484790) (set.union (content!13242 lt!2484657) (content!13242 (exprs!6698 ct2!306)))))))

(declare-fun e!4199398 () List!67151)

(assert (=> d!2176275 (= lt!2484790 e!4199398)))

(declare-fun c!1295684 () Bool)

(assert (=> d!2176275 (= c!1295684 (is-Nil!67027 lt!2484657))))

(assert (=> d!2176275 (= (++!15147 lt!2484657 (exprs!6698 ct2!306)) lt!2484790)))

(declare-fun b!6986917 () Bool)

(assert (=> b!6986917 (= e!4199398 (exprs!6698 ct2!306))))

(declare-fun b!6986920 () Bool)

(assert (=> b!6986920 (= e!4199397 (or (not (= (exprs!6698 ct2!306) Nil!67027)) (= lt!2484790 lt!2484657)))))

(declare-fun b!6986918 () Bool)

(assert (=> b!6986918 (= e!4199398 (Cons!67027 (h!73475 lt!2484657) (++!15147 (t!380898 lt!2484657) (exprs!6698 ct2!306))))))

(declare-fun b!6986919 () Bool)

(declare-fun res!2849195 () Bool)

(assert (=> b!6986919 (=> (not res!2849195) (not e!4199397))))

(declare-fun size!40896 (List!67151) Int)

(assert (=> b!6986919 (= res!2849195 (= (size!40896 lt!2484790) (+ (size!40896 lt!2484657) (size!40896 (exprs!6698 ct2!306)))))))

(assert (= (and d!2176275 c!1295684) b!6986917))

(assert (= (and d!2176275 (not c!1295684)) b!6986918))

(assert (= (and d!2176275 res!2849196) b!6986919))

(assert (= (and b!6986919 res!2849195) b!6986920))

(declare-fun m!7674782 () Bool)

(assert (=> d!2176275 m!7674782))

(declare-fun m!7674784 () Bool)

(assert (=> d!2176275 m!7674784))

(declare-fun m!7674786 () Bool)

(assert (=> d!2176275 m!7674786))

(declare-fun m!7674788 () Bool)

(assert (=> b!6986918 m!7674788))

(declare-fun m!7674790 () Bool)

(assert (=> b!6986919 m!7674790))

(declare-fun m!7674792 () Bool)

(assert (=> b!6986919 m!7674792))

(declare-fun m!7674794 () Bool)

(assert (=> b!6986919 m!7674794))

(assert (=> b!6986758 d!2176275))

(declare-fun d!2176277 () Bool)

(declare-fun nullableFct!2627 (Regex!17202) Bool)

(assert (=> d!2176277 (= (nullable!6962 (h!73475 (exprs!6698 lt!2484662))) (nullableFct!2627 (h!73475 (exprs!6698 lt!2484662))))))

(declare-fun bs!1861803 () Bool)

(assert (= bs!1861803 d!2176277))

(declare-fun m!7674796 () Bool)

(assert (=> bs!1861803 m!7674796))

(assert (=> b!6986750 d!2176277))

(declare-fun d!2176279 () Bool)

(assert (=> d!2176279 (= (tail!13201 (exprs!6698 lt!2484662)) (t!380898 (exprs!6698 lt!2484662)))))

(assert (=> b!6986750 d!2176279))

(declare-fun d!2176281 () Bool)

(declare-fun c!1295685 () Bool)

(assert (=> d!2176281 (= c!1295685 (isEmpty!39127 s!7408))))

(declare-fun e!4199399 () Bool)

(assert (=> d!2176281 (= (matchZipper!2742 lt!2484671 s!7408) e!4199399)))

(declare-fun b!6986921 () Bool)

(assert (=> b!6986921 (= e!4199399 (nullableZipper!2426 lt!2484671))))

(declare-fun b!6986922 () Bool)

(assert (=> b!6986922 (= e!4199399 (matchZipper!2742 (derivationStepZipper!2682 lt!2484671 (head!14101 s!7408)) (tail!13203 s!7408)))))

(assert (= (and d!2176281 c!1295685) b!6986921))

(assert (= (and d!2176281 (not c!1295685)) b!6986922))

(assert (=> d!2176281 m!7674734))

(declare-fun m!7674798 () Bool)

(assert (=> b!6986921 m!7674798))

(assert (=> b!6986922 m!7674738))

(assert (=> b!6986922 m!7674738))

(declare-fun m!7674800 () Bool)

(assert (=> b!6986922 m!7674800))

(assert (=> b!6986922 m!7674742))

(assert (=> b!6986922 m!7674800))

(assert (=> b!6986922 m!7674742))

(declare-fun m!7674802 () Bool)

(assert (=> b!6986922 m!7674802))

(assert (=> start!671120 d!2176281))

(declare-fun bs!1861804 () Bool)

(declare-fun d!2176283 () Bool)

(assert (= bs!1861804 (and d!2176283 b!6986755)))

(declare-fun lambda!400644 () Int)

(assert (=> bs!1861804 (= lambda!400644 lambda!400590)))

(assert (=> d!2176283 true))

(declare-fun map!15461 ((Set Context!12396) Int) (Set Context!12396))

(assert (=> d!2176283 (= (appendTo!323 z1!570 ct2!306) (map!15461 z1!570 lambda!400644))))

(declare-fun bs!1861805 () Bool)

(assert (= bs!1861805 d!2176283))

(declare-fun m!7674804 () Bool)

(assert (=> bs!1861805 m!7674804))

(assert (=> start!671120 d!2176283))

(declare-fun bs!1861806 () Bool)

(declare-fun d!2176285 () Bool)

(assert (= bs!1861806 (and d!2176285 b!6986755)))

(declare-fun lambda!400647 () Int)

(assert (=> bs!1861806 (= lambda!400647 lambda!400591)))

(assert (=> d!2176285 (= (inv!85865 ct2!306) (forall!16111 (exprs!6698 ct2!306) lambda!400647))))

(declare-fun bs!1861807 () Bool)

(assert (= bs!1861807 d!2176285))

(declare-fun m!7674806 () Bool)

(assert (=> bs!1861807 m!7674806))

(assert (=> start!671120 d!2176285))

(assert (=> b!6986746 d!2176269))

(declare-fun d!2176287 () Bool)

(declare-fun e!4199400 () Bool)

(assert (=> d!2176287 e!4199400))

(declare-fun res!2849198 () Bool)

(assert (=> d!2176287 (=> (not res!2849198) (not e!4199400))))

(declare-fun lt!2484793 () List!67151)

(assert (=> d!2176287 (= res!2849198 (= (content!13242 lt!2484793) (set.union (content!13242 (exprs!6698 lt!2484662)) (content!13242 (exprs!6698 ct2!306)))))))

(declare-fun e!4199401 () List!67151)

(assert (=> d!2176287 (= lt!2484793 e!4199401)))

(declare-fun c!1295687 () Bool)

(assert (=> d!2176287 (= c!1295687 (is-Nil!67027 (exprs!6698 lt!2484662)))))

(assert (=> d!2176287 (= (++!15147 (exprs!6698 lt!2484662) (exprs!6698 ct2!306)) lt!2484793)))

(declare-fun b!6986923 () Bool)

(assert (=> b!6986923 (= e!4199401 (exprs!6698 ct2!306))))

(declare-fun b!6986926 () Bool)

(assert (=> b!6986926 (= e!4199400 (or (not (= (exprs!6698 ct2!306) Nil!67027)) (= lt!2484793 (exprs!6698 lt!2484662))))))

(declare-fun b!6986924 () Bool)

(assert (=> b!6986924 (= e!4199401 (Cons!67027 (h!73475 (exprs!6698 lt!2484662)) (++!15147 (t!380898 (exprs!6698 lt!2484662)) (exprs!6698 ct2!306))))))

(declare-fun b!6986925 () Bool)

(declare-fun res!2849197 () Bool)

(assert (=> b!6986925 (=> (not res!2849197) (not e!4199400))))

(assert (=> b!6986925 (= res!2849197 (= (size!40896 lt!2484793) (+ (size!40896 (exprs!6698 lt!2484662)) (size!40896 (exprs!6698 ct2!306)))))))

(assert (= (and d!2176287 c!1295687) b!6986923))

(assert (= (and d!2176287 (not c!1295687)) b!6986924))

(assert (= (and d!2176287 res!2849198) b!6986925))

(assert (= (and b!6986925 res!2849197) b!6986926))

(declare-fun m!7674808 () Bool)

(assert (=> d!2176287 m!7674808))

(declare-fun m!7674810 () Bool)

(assert (=> d!2176287 m!7674810))

(assert (=> d!2176287 m!7674786))

(declare-fun m!7674812 () Bool)

(assert (=> b!6986924 m!7674812))

(declare-fun m!7674814 () Bool)

(assert (=> b!6986925 m!7674814))

(declare-fun m!7674816 () Bool)

(assert (=> b!6986925 m!7674816))

(assert (=> b!6986925 m!7674794))

(assert (=> b!6986755 d!2176287))

(assert (=> b!6986755 d!2176269))

(declare-fun d!2176289 () Bool)

(declare-fun e!4199404 () Bool)

(assert (=> d!2176289 e!4199404))

(declare-fun res!2849201 () Bool)

(assert (=> d!2176289 (=> (not res!2849201) (not e!4199404))))

(declare-fun lt!2484796 () Context!12396)

(declare-fun dynLambda!26858 (Int Context!12396) Context!12396)

(assert (=> d!2176289 (= res!2849201 (= lt!2484666 (dynLambda!26858 lambda!400590 lt!2484796)))))

(declare-fun choose!52194 ((Set Context!12396) Int Context!12396) Context!12396)

(assert (=> d!2176289 (= lt!2484796 (choose!52194 z1!570 lambda!400590 lt!2484666))))

(assert (=> d!2176289 (set.member lt!2484666 (map!15461 z1!570 lambda!400590))))

(assert (=> d!2176289 (= (mapPost2!57 z1!570 lambda!400590 lt!2484666) lt!2484796)))

(declare-fun b!6986930 () Bool)

(assert (=> b!6986930 (= e!4199404 (set.member lt!2484796 z1!570))))

(assert (= (and d!2176289 res!2849201) b!6986930))

(declare-fun b_lambda!262281 () Bool)

(assert (=> (not b_lambda!262281) (not d!2176289)))

(declare-fun m!7674818 () Bool)

(assert (=> d!2176289 m!7674818))

(declare-fun m!7674820 () Bool)

(assert (=> d!2176289 m!7674820))

(declare-fun m!7674822 () Bool)

(assert (=> d!2176289 m!7674822))

(declare-fun m!7674824 () Bool)

(assert (=> d!2176289 m!7674824))

(declare-fun m!7674826 () Bool)

(assert (=> b!6986930 m!7674826))

(assert (=> b!6986755 d!2176289))

(declare-fun d!2176291 () Bool)

(declare-fun c!1295688 () Bool)

(assert (=> d!2176291 (= c!1295688 (isEmpty!39127 (t!380899 s!7408)))))

(declare-fun e!4199405 () Bool)

(assert (=> d!2176291 (= (matchZipper!2742 lt!2484665 (t!380899 s!7408)) e!4199405)))

(declare-fun b!6986931 () Bool)

(assert (=> b!6986931 (= e!4199405 (nullableZipper!2426 lt!2484665))))

(declare-fun b!6986932 () Bool)

(assert (=> b!6986932 (= e!4199405 (matchZipper!2742 (derivationStepZipper!2682 lt!2484665 (head!14101 (t!380899 s!7408))) (tail!13203 (t!380899 s!7408))))))

(assert (= (and d!2176291 c!1295688) b!6986931))

(assert (= (and d!2176291 (not c!1295688)) b!6986932))

(declare-fun m!7674828 () Bool)

(assert (=> d!2176291 m!7674828))

(declare-fun m!7674830 () Bool)

(assert (=> b!6986931 m!7674830))

(declare-fun m!7674832 () Bool)

(assert (=> b!6986932 m!7674832))

(assert (=> b!6986932 m!7674832))

(declare-fun m!7674834 () Bool)

(assert (=> b!6986932 m!7674834))

(declare-fun m!7674836 () Bool)

(assert (=> b!6986932 m!7674836))

(assert (=> b!6986932 m!7674834))

(assert (=> b!6986932 m!7674836))

(declare-fun m!7674838 () Bool)

(assert (=> b!6986932 m!7674838))

(assert (=> b!6986747 d!2176291))

(declare-fun d!2176293 () Bool)

(declare-fun c!1295689 () Bool)

(assert (=> d!2176293 (= c!1295689 (isEmpty!39127 (t!380899 s!7408)))))

(declare-fun e!4199406 () Bool)

(assert (=> d!2176293 (= (matchZipper!2742 lt!2484673 (t!380899 s!7408)) e!4199406)))

(declare-fun b!6986933 () Bool)

(assert (=> b!6986933 (= e!4199406 (nullableZipper!2426 lt!2484673))))

(declare-fun b!6986934 () Bool)

(assert (=> b!6986934 (= e!4199406 (matchZipper!2742 (derivationStepZipper!2682 lt!2484673 (head!14101 (t!380899 s!7408))) (tail!13203 (t!380899 s!7408))))))

(assert (= (and d!2176293 c!1295689) b!6986933))

(assert (= (and d!2176293 (not c!1295689)) b!6986934))

(assert (=> d!2176293 m!7674828))

(declare-fun m!7674840 () Bool)

(assert (=> b!6986933 m!7674840))

(assert (=> b!6986934 m!7674832))

(assert (=> b!6986934 m!7674832))

(declare-fun m!7674842 () Bool)

(assert (=> b!6986934 m!7674842))

(assert (=> b!6986934 m!7674836))

(assert (=> b!6986934 m!7674842))

(assert (=> b!6986934 m!7674836))

(declare-fun m!7674844 () Bool)

(assert (=> b!6986934 m!7674844))

(assert (=> b!6986756 d!2176293))

(declare-fun e!4199409 () Bool)

(declare-fun d!2176295 () Bool)

(assert (=> d!2176295 (= (matchZipper!2742 (set.union lt!2484673 lt!2484665) (t!380899 s!7408)) e!4199409)))

(declare-fun res!2849204 () Bool)

(assert (=> d!2176295 (=> res!2849204 e!4199409)))

(assert (=> d!2176295 (= res!2849204 (matchZipper!2742 lt!2484673 (t!380899 s!7408)))))

(declare-fun lt!2484799 () Unit!161059)

(declare-fun choose!52195 ((Set Context!12396) (Set Context!12396) List!67152) Unit!161059)

(assert (=> d!2176295 (= lt!2484799 (choose!52195 lt!2484673 lt!2484665 (t!380899 s!7408)))))

(assert (=> d!2176295 (= (lemmaZipperConcatMatchesSameAsBothZippers!1375 lt!2484673 lt!2484665 (t!380899 s!7408)) lt!2484799)))

(declare-fun b!6986937 () Bool)

(assert (=> b!6986937 (= e!4199409 (matchZipper!2742 lt!2484665 (t!380899 s!7408)))))

(assert (= (and d!2176295 (not res!2849204)) b!6986937))

(declare-fun m!7674846 () Bool)

(assert (=> d!2176295 m!7674846))

(assert (=> d!2176295 m!7674606))

(declare-fun m!7674848 () Bool)

(assert (=> d!2176295 m!7674848))

(assert (=> b!6986937 m!7674582))

(assert (=> b!6986756 d!2176295))

(assert (=> b!6986756 d!2176249))

(declare-fun d!2176297 () Bool)

(declare-fun c!1295690 () Bool)

(assert (=> d!2176297 (= c!1295690 (isEmpty!39127 (t!380899 s!7408)))))

(declare-fun e!4199410 () Bool)

(assert (=> d!2176297 (= (matchZipper!2742 lt!2484676 (t!380899 s!7408)) e!4199410)))

(declare-fun b!6986938 () Bool)

(assert (=> b!6986938 (= e!4199410 (nullableZipper!2426 lt!2484676))))

(declare-fun b!6986939 () Bool)

(assert (=> b!6986939 (= e!4199410 (matchZipper!2742 (derivationStepZipper!2682 lt!2484676 (head!14101 (t!380899 s!7408))) (tail!13203 (t!380899 s!7408))))))

(assert (= (and d!2176297 c!1295690) b!6986938))

(assert (= (and d!2176297 (not c!1295690)) b!6986939))

(assert (=> d!2176297 m!7674828))

(declare-fun m!7674850 () Bool)

(assert (=> b!6986938 m!7674850))

(assert (=> b!6986939 m!7674832))

(assert (=> b!6986939 m!7674832))

(declare-fun m!7674852 () Bool)

(assert (=> b!6986939 m!7674852))

(assert (=> b!6986939 m!7674836))

(assert (=> b!6986939 m!7674852))

(assert (=> b!6986939 m!7674836))

(declare-fun m!7674854 () Bool)

(assert (=> b!6986939 m!7674854))

(assert (=> b!6986756 d!2176297))

(declare-fun d!2176299 () Bool)

(declare-fun c!1295691 () Bool)

(assert (=> d!2176299 (= c!1295691 (isEmpty!39127 (t!380899 s!7408)))))

(declare-fun e!4199411 () Bool)

(assert (=> d!2176299 (= (matchZipper!2742 lt!2484668 (t!380899 s!7408)) e!4199411)))

(declare-fun b!6986940 () Bool)

(assert (=> b!6986940 (= e!4199411 (nullableZipper!2426 lt!2484668))))

(declare-fun b!6986941 () Bool)

(assert (=> b!6986941 (= e!4199411 (matchZipper!2742 (derivationStepZipper!2682 lt!2484668 (head!14101 (t!380899 s!7408))) (tail!13203 (t!380899 s!7408))))))

(assert (= (and d!2176299 c!1295691) b!6986940))

(assert (= (and d!2176299 (not c!1295691)) b!6986941))

(assert (=> d!2176299 m!7674828))

(declare-fun m!7674856 () Bool)

(assert (=> b!6986940 m!7674856))

(assert (=> b!6986941 m!7674832))

(assert (=> b!6986941 m!7674832))

(declare-fun m!7674858 () Bool)

(assert (=> b!6986941 m!7674858))

(assert (=> b!6986941 m!7674836))

(assert (=> b!6986941 m!7674858))

(assert (=> b!6986941 m!7674836))

(declare-fun m!7674860 () Bool)

(assert (=> b!6986941 m!7674860))

(assert (=> b!6986756 d!2176299))

(declare-fun d!2176301 () Bool)

(declare-fun res!2849205 () Bool)

(declare-fun e!4199412 () Bool)

(assert (=> d!2176301 (=> res!2849205 e!4199412)))

(assert (=> d!2176301 (= res!2849205 (is-Nil!67027 (exprs!6698 ct2!306)))))

(assert (=> d!2176301 (= (forall!16111 (exprs!6698 ct2!306) lambda!400591) e!4199412)))

(declare-fun b!6986942 () Bool)

(declare-fun e!4199413 () Bool)

(assert (=> b!6986942 (= e!4199412 e!4199413)))

(declare-fun res!2849206 () Bool)

(assert (=> b!6986942 (=> (not res!2849206) (not e!4199413))))

(assert (=> b!6986942 (= res!2849206 (dynLambda!26854 lambda!400591 (h!73475 (exprs!6698 ct2!306))))))

(declare-fun b!6986943 () Bool)

(assert (=> b!6986943 (= e!4199413 (forall!16111 (t!380898 (exprs!6698 ct2!306)) lambda!400591))))

(assert (= (and d!2176301 (not res!2849205)) b!6986942))

(assert (= (and b!6986942 res!2849206) b!6986943))

(declare-fun b_lambda!262283 () Bool)

(assert (=> (not b_lambda!262283) (not b!6986942)))

(declare-fun m!7674862 () Bool)

(assert (=> b!6986942 m!7674862))

(declare-fun m!7674864 () Bool)

(assert (=> b!6986943 m!7674864))

(assert (=> b!6986743 d!2176301))

(declare-fun bs!1861808 () Bool)

(declare-fun d!2176303 () Bool)

(assert (= bs!1861808 (and d!2176303 b!6986755)))

(declare-fun lambda!400648 () Int)

(assert (=> bs!1861808 (= lambda!400648 lambda!400591)))

(declare-fun bs!1861809 () Bool)

(assert (= bs!1861809 (and d!2176303 d!2176285)))

(assert (=> bs!1861809 (= lambda!400648 lambda!400647)))

(assert (=> d!2176303 (= (inv!85865 setElem!47718) (forall!16111 (exprs!6698 setElem!47718) lambda!400648))))

(declare-fun bs!1861810 () Bool)

(assert (= bs!1861810 d!2176303))

(declare-fun m!7674866 () Bool)

(assert (=> bs!1861810 m!7674866))

(assert (=> setNonEmpty!47718 d!2176303))

(assert (=> b!6986759 d!2176291))

(assert (=> b!6986759 d!2176249))

(declare-fun d!2176305 () Bool)

(assert (=> d!2176305 (= (isEmpty!39125 (exprs!6698 lt!2484662)) (is-Nil!67027 (exprs!6698 lt!2484662)))))

(assert (=> b!6986751 d!2176305))

(assert (=> b!6986752 d!2176291))

(assert (=> b!6986752 d!2176249))

(declare-fun condSetEmpty!47724 () Bool)

(assert (=> setNonEmpty!47718 (= condSetEmpty!47724 (= setRest!47718 (as set.empty (Set Context!12396))))))

(declare-fun setRes!47724 () Bool)

(assert (=> setNonEmpty!47718 (= tp!1929248 setRes!47724)))

(declare-fun setIsEmpty!47724 () Bool)

(assert (=> setIsEmpty!47724 setRes!47724))

(declare-fun e!4199416 () Bool)

(declare-fun tp!1929267 () Bool)

(declare-fun setElem!47724 () Context!12396)

(declare-fun setNonEmpty!47724 () Bool)

(assert (=> setNonEmpty!47724 (= setRes!47724 (and tp!1929267 (inv!85865 setElem!47724) e!4199416))))

(declare-fun setRest!47724 () (Set Context!12396))

(assert (=> setNonEmpty!47724 (= setRest!47718 (set.union (set.insert setElem!47724 (as set.empty (Set Context!12396))) setRest!47724))))

(declare-fun b!6986948 () Bool)

(declare-fun tp!1929268 () Bool)

(assert (=> b!6986948 (= e!4199416 tp!1929268)))

(assert (= (and setNonEmpty!47718 condSetEmpty!47724) setIsEmpty!47724))

(assert (= (and setNonEmpty!47718 (not condSetEmpty!47724)) setNonEmpty!47724))

(assert (= setNonEmpty!47724 b!6986948))

(declare-fun m!7674868 () Bool)

(assert (=> setNonEmpty!47724 m!7674868))

(declare-fun b!6986953 () Bool)

(declare-fun e!4199419 () Bool)

(declare-fun tp!1929273 () Bool)

(declare-fun tp!1929274 () Bool)

(assert (=> b!6986953 (= e!4199419 (and tp!1929273 tp!1929274))))

(assert (=> b!6986744 (= tp!1929250 e!4199419)))

(assert (= (and b!6986744 (is-Cons!67027 (exprs!6698 setElem!47718))) b!6986953))

(declare-fun b!6986954 () Bool)

(declare-fun e!4199420 () Bool)

(declare-fun tp!1929275 () Bool)

(declare-fun tp!1929276 () Bool)

(assert (=> b!6986954 (= e!4199420 (and tp!1929275 tp!1929276))))

(assert (=> b!6986754 (= tp!1929249 e!4199420)))

(assert (= (and b!6986754 (is-Cons!67027 (exprs!6698 ct2!306))) b!6986954))

(declare-fun b!6986959 () Bool)

(declare-fun e!4199423 () Bool)

(declare-fun tp!1929279 () Bool)

(assert (=> b!6986959 (= e!4199423 (and tp_is_empty!43629 tp!1929279))))

(assert (=> b!6986745 (= tp!1929247 e!4199423)))

(assert (= (and b!6986745 (is-Cons!67028 (t!380899 s!7408))) b!6986959))

(declare-fun b_lambda!262285 () Bool)

(assert (= b_lambda!262277 (or b!6986757 b_lambda!262285)))

(declare-fun bs!1861811 () Bool)

(declare-fun d!2176307 () Bool)

(assert (= bs!1861811 (and d!2176307 b!6986757)))

(assert (=> bs!1861811 (= (dynLambda!26856 lambda!400589 lt!2484783) (matchZipper!2742 (set.insert lt!2484783 (as set.empty (Set Context!12396))) s!7408))))

(declare-fun m!7674870 () Bool)

(assert (=> bs!1861811 m!7674870))

(assert (=> bs!1861811 m!7674870))

(declare-fun m!7674872 () Bool)

(assert (=> bs!1861811 m!7674872))

(assert (=> d!2176257 d!2176307))

(declare-fun b_lambda!262287 () Bool)

(assert (= b_lambda!262279 (or b!6986749 b_lambda!262287)))

(declare-fun bs!1861812 () Bool)

(declare-fun d!2176309 () Bool)

(assert (= bs!1861812 (and d!2176309 b!6986749)))

(assert (=> bs!1861812 (= (dynLambda!26857 lambda!400592 lt!2484660) (derivationStepZipperUp!1852 lt!2484660 (h!73476 s!7408)))))

(assert (=> bs!1861812 m!7674592))

(assert (=> d!2176267 d!2176309))

(declare-fun b_lambda!262289 () Bool)

(assert (= b_lambda!262283 (or b!6986755 b_lambda!262289)))

(declare-fun bs!1861813 () Bool)

(declare-fun d!2176311 () Bool)

(assert (= bs!1861813 (and d!2176311 b!6986755)))

(declare-fun validRegex!8853 (Regex!17202) Bool)

(assert (=> bs!1861813 (= (dynLambda!26854 lambda!400591 (h!73475 (exprs!6698 ct2!306))) (validRegex!8853 (h!73475 (exprs!6698 ct2!306))))))

(declare-fun m!7674874 () Bool)

(assert (=> bs!1861813 m!7674874))

(assert (=> b!6986942 d!2176311))

(declare-fun b_lambda!262291 () Bool)

(assert (= b_lambda!262275 (or b!6986755 b_lambda!262291)))

(declare-fun bs!1861814 () Bool)

(declare-fun d!2176313 () Bool)

(assert (= bs!1861814 (and d!2176313 b!6986755)))

(assert (=> bs!1861814 (= (dynLambda!26854 lambda!400591 (h!73475 lt!2484657)) (validRegex!8853 (h!73475 lt!2484657)))))

(declare-fun m!7674876 () Bool)

(assert (=> bs!1861814 m!7674876))

(assert (=> b!6986838 d!2176313))

(declare-fun b_lambda!262293 () Bool)

(assert (= b_lambda!262281 (or b!6986755 b_lambda!262293)))

(declare-fun bs!1861815 () Bool)

(declare-fun d!2176315 () Bool)

(assert (= bs!1861815 (and d!2176315 b!6986755)))

(declare-fun lt!2484800 () Unit!161059)

(assert (=> bs!1861815 (= lt!2484800 (lemmaConcatPreservesForall!538 (exprs!6698 lt!2484796) (exprs!6698 ct2!306) lambda!400591))))

(assert (=> bs!1861815 (= (dynLambda!26858 lambda!400590 lt!2484796) (Context!12397 (++!15147 (exprs!6698 lt!2484796) (exprs!6698 ct2!306))))))

(declare-fun m!7674878 () Bool)

(assert (=> bs!1861815 m!7674878))

(declare-fun m!7674880 () Bool)

(assert (=> bs!1861815 m!7674880))

(assert (=> d!2176289 d!2176315))

(push 1)

(assert (not d!2176249))

(assert (not bs!1861811))

(assert (not d!2176303))

(assert (not d!2176291))

(assert (not d!2176299))

(assert (not b!6986933))

(assert (not bm!634238))

(assert (not d!2176297))

(assert (not b!6986866))

(assert (not b!6986839))

(assert (not b!6986853))

(assert (not b!6986948))

(assert (not b!6986939))

(assert (not d!2176255))

(assert (not d!2176269))

(assert (not b!6986924))

(assert (not b!6986941))

(assert (not b!6986938))

(assert (not b_lambda!262293))

(assert (not d!2176287))

(assert (not b!6986934))

(assert (not d!2176285))

(assert (not d!2176251))

(assert (not bm!634222))

(assert (not d!2176293))

(assert (not b!6986937))

(assert (not d!2176261))

(assert (not bs!1861815))

(assert tp_is_empty!43629)

(assert (not b!6986922))

(assert (not b!6986871))

(assert (not d!2176289))

(assert (not b!6986921))

(assert (not d!2176275))

(assert (not bs!1861814))

(assert (not d!2176295))

(assert (not b!6986954))

(assert (not d!2176265))

(assert (not b!6986932))

(assert (not b_lambda!262289))

(assert (not b!6986940))

(assert (not b!6986953))

(assert (not d!2176277))

(assert (not d!2176257))

(assert (not b!6986943))

(assert (not bs!1861813))

(assert (not bm!634240))

(assert (not b_lambda!262285))

(assert (not bm!634223))

(assert (not b!6986872))

(assert (not b!6986918))

(assert (not d!2176283))

(assert (not b!6986844))

(assert (not d!2176259))

(assert (not b_lambda!262291))

(assert (not b!6986959))

(assert (not setNonEmpty!47724))

(assert (not b!6986925))

(assert (not bm!634239))

(assert (not d!2176253))

(assert (not b_lambda!262287))

(assert (not b!6986852))

(assert (not b!6986931))

(assert (not d!2176281))

(assert (not d!2176267))

(assert (not bs!1861812))

(assert (not b!6986903))

(assert (not b!6986867))

(assert (not b!6986919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

