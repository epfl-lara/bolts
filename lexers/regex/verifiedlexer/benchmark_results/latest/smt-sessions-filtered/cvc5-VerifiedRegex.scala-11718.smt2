; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662026 () Bool)

(assert start!662026)

(declare-fun b!6857609 () Bool)

(assert (=> b!6857609 true))

(declare-fun b!6857616 () Bool)

(assert (=> b!6857616 true))

(declare-fun bs!1832982 () Bool)

(declare-fun b!6857627 () Bool)

(assert (= bs!1832982 (and b!6857627 b!6857616)))

(declare-fun lambda!387690 () Int)

(declare-fun lambda!387689 () Int)

(assert (=> bs!1832982 (not (= lambda!387690 lambda!387689))))

(assert (=> b!6857627 true))

(declare-fun b!6857606 () Bool)

(declare-fun e!4134640 () Bool)

(declare-fun tp!1880549 () Bool)

(assert (=> b!6857606 (= e!4134640 tp!1880549)))

(declare-fun b!6857607 () Bool)

(declare-fun res!2798244 () Bool)

(declare-fun e!4134633 () Bool)

(assert (=> b!6857607 (=> res!2798244 e!4134633)))

(declare-datatypes ((C!33634 0))(
  ( (C!33635 (val!26519 Int)) )
))
(declare-datatypes ((Regex!16682 0))(
  ( (ElementMatch!16682 (c!1276492 C!33634)) (Concat!25527 (regOne!33876 Regex!16682) (regTwo!33876 Regex!16682)) (EmptyExpr!16682) (Star!16682 (reg!17011 Regex!16682)) (EmptyLang!16682) (Union!16682 (regOne!33877 Regex!16682) (regTwo!33877 Regex!16682)) )
))
(declare-datatypes ((List!66345 0))(
  ( (Nil!66221) (Cons!66221 (h!72669 Regex!16682) (t!380088 List!66345)) )
))
(declare-datatypes ((Context!12132 0))(
  ( (Context!12133 (exprs!6566 List!66345)) )
))
(declare-datatypes ((List!66346 0))(
  ( (Nil!66222) (Cons!66222 (h!72670 Context!12132) (t!380089 List!66346)) )
))
(declare-fun zl!343 () List!66346)

(declare-datatypes ((List!66347 0))(
  ( (Nil!66223) (Cons!66223 (h!72671 C!33634) (t!380090 List!66347)) )
))
(declare-fun s!2326 () List!66347)

(assert (=> b!6857607 (= res!2798244 (or (not (is-Cons!66222 zl!343)) (is-Nil!66223 s!2326) (not (= zl!343 (Cons!66222 (h!72670 zl!343) (t!380089 zl!343))))))))

(declare-fun b!6857608 () Bool)

(declare-fun e!4134641 () Bool)

(declare-fun tp!1880545 () Bool)

(declare-fun tp!1880543 () Bool)

(assert (=> b!6857608 (= e!4134641 (and tp!1880545 tp!1880543))))

(declare-fun e!4134642 () Bool)

(assert (=> b!6857609 (= e!4134633 e!4134642)))

(declare-fun res!2798253 () Bool)

(assert (=> b!6857609 (=> res!2798253 e!4134642)))

(declare-fun lt!2456845 () Bool)

(assert (=> b!6857609 (= res!2798253 (not lt!2456845))))

(declare-fun lt!2456833 () List!66345)

(declare-fun lambda!387688 () Int)

(declare-fun exists!2792 (List!66345 Int) Bool)

(assert (=> b!6857609 (= lt!2456845 (exists!2792 lt!2456833 lambda!387688))))

(declare-fun r!7292 () Regex!16682)

(declare-datatypes ((Unit!160111 0))(
  ( (Unit!160112) )
))
(declare-fun lt!2456834 () Unit!160111)

(declare-fun matchRGenUnionSpec!321 (Regex!16682 List!66345 List!66347) Unit!160111)

(assert (=> b!6857609 (= lt!2456834 (matchRGenUnionSpec!321 r!7292 lt!2456833 s!2326))))

(declare-fun unfocusZipperList!2099 (List!66346) List!66345)

(assert (=> b!6857609 (= lt!2456833 (unfocusZipperList!2099 zl!343))))

(declare-fun tp!1880540 () Bool)

(declare-fun setElem!47130 () Context!12132)

(declare-fun setNonEmpty!47130 () Bool)

(declare-fun setRes!47130 () Bool)

(declare-fun inv!84953 (Context!12132) Bool)

(assert (=> setNonEmpty!47130 (= setRes!47130 (and tp!1880540 (inv!84953 setElem!47130) e!4134640))))

(declare-fun z!1189 () (Set Context!12132))

(declare-fun setRest!47130 () (Set Context!12132))

(assert (=> setNonEmpty!47130 (= z!1189 (set.union (set.insert setElem!47130 (as set.empty (Set Context!12132))) setRest!47130))))

(declare-fun b!6857610 () Bool)

(declare-fun res!2798250 () Bool)

(declare-fun e!4134634 () Bool)

(assert (=> b!6857610 (=> (not res!2798250) (not e!4134634))))

(declare-fun unfocusZipper!2424 (List!66346) Regex!16682)

(assert (=> b!6857610 (= res!2798250 (= r!7292 (unfocusZipper!2424 zl!343)))))

(declare-fun b!6857611 () Bool)

(declare-fun res!2798252 () Bool)

(declare-fun e!4134643 () Bool)

(assert (=> b!6857611 (=> res!2798252 e!4134643)))

(declare-fun lt!2456843 () Regex!16682)

(declare-fun validRegex!8418 (Regex!16682) Bool)

(assert (=> b!6857611 (= res!2798252 (not (validRegex!8418 lt!2456843)))))

(declare-fun b!6857612 () Bool)

(declare-fun res!2798256 () Bool)

(assert (=> b!6857612 (=> (not res!2798256) (not e!4134634))))

(declare-fun toList!10466 ((Set Context!12132)) List!66346)

(assert (=> b!6857612 (= res!2798256 (= (toList!10466 z!1189) zl!343))))

(declare-fun b!6857613 () Bool)

(declare-fun res!2798247 () Bool)

(assert (=> b!6857613 (=> res!2798247 e!4134633)))

(declare-fun isEmpty!38590 (List!66346) Bool)

(assert (=> b!6857613 (= res!2798247 (isEmpty!38590 (t!380089 zl!343)))))

(declare-fun b!6857614 () Bool)

(declare-fun tp!1880548 () Bool)

(declare-fun tp!1880544 () Bool)

(assert (=> b!6857614 (= e!4134641 (and tp!1880548 tp!1880544))))

(declare-fun b!6857615 () Bool)

(declare-fun res!2798255 () Bool)

(assert (=> b!6857615 (=> res!2798255 e!4134643)))

(declare-fun matchR!8865 (Regex!16682 List!66347) Bool)

(assert (=> b!6857615 (= res!2798255 (not (matchR!8865 lt!2456843 s!2326)))))

(declare-fun e!4134636 () Bool)

(assert (=> b!6857616 (= e!4134643 e!4134636)))

(declare-fun res!2798254 () Bool)

(assert (=> b!6857616 (=> res!2798254 e!4134636)))

(declare-fun exists!2793 (List!66346 Int) Bool)

(assert (=> b!6857616 (= res!2798254 (not (exists!2793 zl!343 lambda!387689)))))

(assert (=> b!6857616 (exists!2793 zl!343 lambda!387689)))

(declare-fun lt!2456840 () Unit!160111)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!37 (List!66346 Regex!16682) Unit!160111)

(assert (=> b!6857616 (= lt!2456840 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!37 zl!343 lt!2456843))))

(declare-fun b!6857617 () Bool)

(declare-fun tp!1880546 () Bool)

(assert (=> b!6857617 (= e!4134641 tp!1880546)))

(declare-fun b!6857618 () Bool)

(declare-fun e!4134639 () Bool)

(declare-fun tp_is_empty!42617 () Bool)

(declare-fun tp!1880547 () Bool)

(assert (=> b!6857618 (= e!4134639 (and tp_is_empty!42617 tp!1880547))))

(declare-fun tp!1880541 () Bool)

(declare-fun b!6857619 () Bool)

(declare-fun e!4134638 () Bool)

(declare-fun e!4134644 () Bool)

(assert (=> b!6857619 (= e!4134644 (and (inv!84953 (h!72670 zl!343)) e!4134638 tp!1880541))))

(declare-fun b!6857620 () Bool)

(declare-fun e!4134637 () Bool)

(assert (=> b!6857620 (= e!4134637 (isEmpty!38590 (t!380089 zl!343)))))

(declare-fun setIsEmpty!47130 () Bool)

(assert (=> setIsEmpty!47130 setRes!47130))

(declare-fun b!6857621 () Bool)

(declare-fun res!2798243 () Bool)

(assert (=> b!6857621 (=> res!2798243 e!4134642)))

(assert (=> b!6857621 (= res!2798243 (not (exists!2792 lt!2456833 lambda!387688)))))

(declare-fun b!6857622 () Bool)

(assert (=> b!6857622 (= e!4134642 e!4134643)))

(declare-fun res!2798245 () Bool)

(assert (=> b!6857622 (=> res!2798245 e!4134643)))

(declare-fun contains!20338 (List!66345 Regex!16682) Bool)

(assert (=> b!6857622 (= res!2798245 (not (contains!20338 lt!2456833 lt!2456843)))))

(declare-fun getWitness!959 (List!66345 Int) Regex!16682)

(assert (=> b!6857622 (= lt!2456843 (getWitness!959 lt!2456833 lambda!387688))))

(declare-fun res!2798246 () Bool)

(assert (=> start!662026 (=> (not res!2798246) (not e!4134634))))

(assert (=> start!662026 (= res!2798246 (validRegex!8418 r!7292))))

(assert (=> start!662026 e!4134634))

(assert (=> start!662026 e!4134641))

(declare-fun condSetEmpty!47130 () Bool)

(assert (=> start!662026 (= condSetEmpty!47130 (= z!1189 (as set.empty (Set Context!12132))))))

(assert (=> start!662026 setRes!47130))

(assert (=> start!662026 e!4134644))

(assert (=> start!662026 e!4134639))

(declare-fun b!6857623 () Bool)

(assert (=> b!6857623 (= e!4134641 tp_is_empty!42617)))

(declare-fun b!6857624 () Bool)

(declare-fun tp!1880542 () Bool)

(assert (=> b!6857624 (= e!4134638 tp!1880542)))

(declare-fun b!6857625 () Bool)

(assert (=> b!6857625 (= e!4134634 (not e!4134633))))

(declare-fun res!2798251 () Bool)

(assert (=> b!6857625 (=> res!2798251 e!4134633)))

(assert (=> b!6857625 (= res!2798251 e!4134637)))

(declare-fun res!2798248 () Bool)

(assert (=> b!6857625 (=> (not res!2798248) (not e!4134637))))

(assert (=> b!6857625 (= res!2798248 (is-Cons!66222 zl!343))))

(declare-fun matchRSpec!3783 (Regex!16682 List!66347) Bool)

(assert (=> b!6857625 (= lt!2456845 (matchRSpec!3783 r!7292 s!2326))))

(assert (=> b!6857625 (= lt!2456845 (matchR!8865 r!7292 s!2326))))

(declare-fun lt!2456837 () Unit!160111)

(declare-fun mainMatchTheorem!3783 (Regex!16682 List!66347) Unit!160111)

(assert (=> b!6857625 (= lt!2456837 (mainMatchTheorem!3783 r!7292 s!2326))))

(declare-fun b!6857626 () Bool)

(declare-fun e!4134635 () Bool)

(assert (=> b!6857626 (= e!4134636 e!4134635)))

(declare-fun res!2798249 () Bool)

(assert (=> b!6857626 (=> res!2798249 e!4134635)))

(declare-fun lt!2456846 () Int)

(declare-fun lt!2456836 () List!66346)

(declare-fun zipperDepthTotal!437 (List!66346) Int)

(assert (=> b!6857626 (= res!2798249 (<= lt!2456846 (zipperDepthTotal!437 lt!2456836)))))

(declare-fun lt!2456842 () Context!12132)

(assert (=> b!6857626 (= lt!2456836 (Cons!66222 lt!2456842 Nil!66222))))

(declare-fun lt!2456835 () Int)

(assert (=> b!6857626 (< lt!2456835 lt!2456846)))

(assert (=> b!6857626 (= lt!2456846 (zipperDepthTotal!437 zl!343))))

(declare-fun contextDepthTotal!409 (Context!12132) Int)

(assert (=> b!6857626 (= lt!2456835 (contextDepthTotal!409 lt!2456842))))

(declare-fun lt!2456841 () Unit!160111)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!41 (List!66346 Context!12132) Unit!160111)

(assert (=> b!6857626 (= lt!2456841 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!41 zl!343 lt!2456842))))

(declare-fun getWitness!960 (List!66346 Int) Context!12132)

(assert (=> b!6857626 (= lt!2456842 (getWitness!960 zl!343 lambda!387689))))

(assert (=> b!6857627 (= e!4134635 (exists!2793 zl!343 lambda!387690))))

(declare-fun exists!2794 ((Set Context!12132) Int) Bool)

(assert (=> b!6857627 (exists!2794 z!1189 lambda!387690)))

(declare-fun lt!2456838 () Unit!160111)

(declare-fun lemmaContainsThenExists!72 ((Set Context!12132) Context!12132 Int) Unit!160111)

(assert (=> b!6857627 (= lt!2456838 (lemmaContainsThenExists!72 z!1189 lt!2456842 lambda!387690))))

(declare-fun lt!2456839 () (Set Context!12132))

(declare-fun matchZipper!2648 ((Set Context!12132) List!66347) Bool)

(assert (=> b!6857627 (matchZipper!2648 lt!2456839 s!2326)))

(declare-fun lt!2456844 () Unit!160111)

(declare-fun theoremZipperRegexEquiv!958 ((Set Context!12132) List!66346 Regex!16682 List!66347) Unit!160111)

(assert (=> b!6857627 (= lt!2456844 (theoremZipperRegexEquiv!958 lt!2456839 lt!2456836 lt!2456843 s!2326))))

(assert (=> b!6857627 (= lt!2456839 (set.insert lt!2456842 (as set.empty (Set Context!12132))))))

(assert (= (and start!662026 res!2798246) b!6857612))

(assert (= (and b!6857612 res!2798256) b!6857610))

(assert (= (and b!6857610 res!2798250) b!6857625))

(assert (= (and b!6857625 res!2798248) b!6857620))

(assert (= (and b!6857625 (not res!2798251)) b!6857607))

(assert (= (and b!6857607 (not res!2798244)) b!6857613))

(assert (= (and b!6857613 (not res!2798247)) b!6857609))

(assert (= (and b!6857609 (not res!2798253)) b!6857621))

(assert (= (and b!6857621 (not res!2798243)) b!6857622))

(assert (= (and b!6857622 (not res!2798245)) b!6857611))

(assert (= (and b!6857611 (not res!2798252)) b!6857615))

(assert (= (and b!6857615 (not res!2798255)) b!6857616))

(assert (= (and b!6857616 (not res!2798254)) b!6857626))

(assert (= (and b!6857626 (not res!2798249)) b!6857627))

(assert (= (and start!662026 (is-ElementMatch!16682 r!7292)) b!6857623))

(assert (= (and start!662026 (is-Concat!25527 r!7292)) b!6857614))

(assert (= (and start!662026 (is-Star!16682 r!7292)) b!6857617))

(assert (= (and start!662026 (is-Union!16682 r!7292)) b!6857608))

(assert (= (and start!662026 condSetEmpty!47130) setIsEmpty!47130))

(assert (= (and start!662026 (not condSetEmpty!47130)) setNonEmpty!47130))

(assert (= setNonEmpty!47130 b!6857606))

(assert (= b!6857619 b!6857624))

(assert (= (and start!662026 (is-Cons!66222 zl!343)) b!6857619))

(assert (= (and start!662026 (is-Cons!66223 s!2326)) b!6857618))

(declare-fun m!7593504 () Bool)

(assert (=> b!6857610 m!7593504))

(declare-fun m!7593506 () Bool)

(assert (=> start!662026 m!7593506))

(declare-fun m!7593508 () Bool)

(assert (=> b!6857615 m!7593508))

(declare-fun m!7593510 () Bool)

(assert (=> b!6857622 m!7593510))

(declare-fun m!7593512 () Bool)

(assert (=> b!6857622 m!7593512))

(declare-fun m!7593514 () Bool)

(assert (=> b!6857611 m!7593514))

(declare-fun m!7593516 () Bool)

(assert (=> b!6857613 m!7593516))

(assert (=> b!6857620 m!7593516))

(declare-fun m!7593518 () Bool)

(assert (=> b!6857627 m!7593518))

(declare-fun m!7593520 () Bool)

(assert (=> b!6857627 m!7593520))

(declare-fun m!7593522 () Bool)

(assert (=> b!6857627 m!7593522))

(declare-fun m!7593524 () Bool)

(assert (=> b!6857627 m!7593524))

(declare-fun m!7593526 () Bool)

(assert (=> b!6857627 m!7593526))

(declare-fun m!7593528 () Bool)

(assert (=> b!6857627 m!7593528))

(declare-fun m!7593530 () Bool)

(assert (=> setNonEmpty!47130 m!7593530))

(declare-fun m!7593532 () Bool)

(assert (=> b!6857612 m!7593532))

(declare-fun m!7593534 () Bool)

(assert (=> b!6857616 m!7593534))

(assert (=> b!6857616 m!7593534))

(declare-fun m!7593536 () Bool)

(assert (=> b!6857616 m!7593536))

(declare-fun m!7593538 () Bool)

(assert (=> b!6857621 m!7593538))

(declare-fun m!7593540 () Bool)

(assert (=> b!6857619 m!7593540))

(declare-fun m!7593542 () Bool)

(assert (=> b!6857626 m!7593542))

(declare-fun m!7593544 () Bool)

(assert (=> b!6857626 m!7593544))

(declare-fun m!7593546 () Bool)

(assert (=> b!6857626 m!7593546))

(declare-fun m!7593548 () Bool)

(assert (=> b!6857626 m!7593548))

(declare-fun m!7593550 () Bool)

(assert (=> b!6857626 m!7593550))

(declare-fun m!7593552 () Bool)

(assert (=> b!6857625 m!7593552))

(declare-fun m!7593554 () Bool)

(assert (=> b!6857625 m!7593554))

(declare-fun m!7593556 () Bool)

(assert (=> b!6857625 m!7593556))

(assert (=> b!6857609 m!7593538))

(declare-fun m!7593558 () Bool)

(assert (=> b!6857609 m!7593558))

(declare-fun m!7593560 () Bool)

(assert (=> b!6857609 m!7593560))

(push 1)

(assert (not b!6857610))

(assert (not b!6857624))

(assert (not setNonEmpty!47130))

(assert (not b!6857622))

(assert (not b!6857609))

(assert (not b!6857618))

(assert (not b!6857612))

(assert (not b!6857614))

(assert (not b!6857613))

(assert (not start!662026))

(assert (not b!6857606))

(assert (not b!6857625))

(assert (not b!6857626))

(assert (not b!6857617))

(assert (not b!6857616))

(assert (not b!6857621))

(assert (not b!6857620))

(assert (not b!6857608))

(assert (not b!6857627))

(assert tp_is_empty!42617)

(assert (not b!6857619))

(assert (not b!6857611))

(assert (not b!6857615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1832984 () Bool)

(declare-fun d!2155005 () Bool)

(assert (= bs!1832984 (and d!2155005 b!6857609)))

(declare-fun lambda!387712 () Int)

(assert (=> bs!1832984 (not (= lambda!387712 lambda!387688))))

(assert (=> d!2155005 true))

(declare-fun order!27673 () Int)

(declare-fun dynLambda!26475 (Int Int) Int)

(assert (=> d!2155005 (< (dynLambda!26475 order!27673 lambda!387688) (dynLambda!26475 order!27673 lambda!387712))))

(declare-fun forall!15863 (List!66345 Int) Bool)

(assert (=> d!2155005 (= (exists!2792 lt!2456833 lambda!387688) (not (forall!15863 lt!2456833 lambda!387712)))))

(declare-fun bs!1832985 () Bool)

(assert (= bs!1832985 d!2155005))

(declare-fun m!7593620 () Bool)

(assert (=> bs!1832985 m!7593620))

(assert (=> b!6857609 d!2155005))

(declare-fun bs!1832987 () Bool)

(declare-fun d!2155007 () Bool)

(assert (= bs!1832987 (and d!2155007 b!6857609)))

(declare-fun lambda!387717 () Int)

(assert (=> bs!1832987 (not (= lambda!387717 lambda!387688))))

(declare-fun bs!1832988 () Bool)

(assert (= bs!1832988 (and d!2155007 d!2155005)))

(assert (=> bs!1832988 (not (= lambda!387717 lambda!387712))))

(declare-fun lambda!387718 () Int)

(assert (=> bs!1832987 (= lambda!387718 lambda!387688)))

(assert (=> bs!1832988 (not (= lambda!387718 lambda!387712))))

(declare-fun bs!1832989 () Bool)

(assert (= bs!1832989 d!2155007))

(assert (=> bs!1832989 (not (= lambda!387718 lambda!387717))))

(assert (=> d!2155007 true))

(assert (=> d!2155007 (= (matchR!8865 r!7292 s!2326) (exists!2792 lt!2456833 lambda!387718))))

(declare-fun lt!2456894 () Unit!160111)

(declare-fun choose!51080 (Regex!16682 List!66345 List!66347) Unit!160111)

(assert (=> d!2155007 (= lt!2456894 (choose!51080 r!7292 lt!2456833 s!2326))))

(assert (=> d!2155007 (forall!15863 lt!2456833 lambda!387717)))

(assert (=> d!2155007 (= (matchRGenUnionSpec!321 r!7292 lt!2456833 s!2326) lt!2456894)))

(assert (=> bs!1832989 m!7593554))

(declare-fun m!7593626 () Bool)

(assert (=> bs!1832989 m!7593626))

(declare-fun m!7593628 () Bool)

(assert (=> bs!1832989 m!7593628))

(declare-fun m!7593630 () Bool)

(assert (=> bs!1832989 m!7593630))

(assert (=> b!6857609 d!2155007))

(declare-fun bs!1832990 () Bool)

(declare-fun d!2155011 () Bool)

(assert (= bs!1832990 (and d!2155011 b!6857609)))

(declare-fun lambda!387721 () Int)

(assert (=> bs!1832990 (not (= lambda!387721 lambda!387688))))

(declare-fun bs!1832991 () Bool)

(assert (= bs!1832991 (and d!2155011 d!2155005)))

(assert (=> bs!1832991 (not (= lambda!387721 lambda!387712))))

(declare-fun bs!1832992 () Bool)

(assert (= bs!1832992 (and d!2155011 d!2155007)))

(assert (=> bs!1832992 (= lambda!387721 lambda!387717)))

(assert (=> bs!1832992 (not (= lambda!387721 lambda!387718))))

(declare-fun lt!2456900 () List!66345)

(assert (=> d!2155011 (forall!15863 lt!2456900 lambda!387721)))

(declare-fun e!4134694 () List!66345)

(assert (=> d!2155011 (= lt!2456900 e!4134694)))

(declare-fun c!1276507 () Bool)

(assert (=> d!2155011 (= c!1276507 (is-Cons!66222 zl!343))))

(assert (=> d!2155011 (= (unfocusZipperList!2099 zl!343) lt!2456900)))

(declare-fun b!6857726 () Bool)

(declare-fun generalisedConcat!2271 (List!66345) Regex!16682)

(assert (=> b!6857726 (= e!4134694 (Cons!66221 (generalisedConcat!2271 (exprs!6566 (h!72670 zl!343))) (unfocusZipperList!2099 (t!380089 zl!343))))))

(declare-fun b!6857727 () Bool)

(assert (=> b!6857727 (= e!4134694 Nil!66221)))

(assert (= (and d!2155011 c!1276507) b!6857726))

(assert (= (and d!2155011 (not c!1276507)) b!6857727))

(declare-fun m!7593636 () Bool)

(assert (=> d!2155011 m!7593636))

(declare-fun m!7593638 () Bool)

(assert (=> b!6857726 m!7593638))

(declare-fun m!7593640 () Bool)

(assert (=> b!6857726 m!7593640))

(assert (=> b!6857609 d!2155011))

(declare-fun bs!1832993 () Bool)

(declare-fun d!2155015 () Bool)

(assert (= bs!1832993 (and d!2155015 d!2155007)))

(declare-fun lambda!387724 () Int)

(assert (=> bs!1832993 (= lambda!387724 lambda!387717)))

(assert (=> bs!1832993 (not (= lambda!387724 lambda!387718))))

(declare-fun bs!1832994 () Bool)

(assert (= bs!1832994 (and d!2155015 d!2155005)))

(assert (=> bs!1832994 (not (= lambda!387724 lambda!387712))))

(declare-fun bs!1832995 () Bool)

(assert (= bs!1832995 (and d!2155015 d!2155011)))

(assert (=> bs!1832995 (= lambda!387724 lambda!387721)))

(declare-fun bs!1832996 () Bool)

(assert (= bs!1832996 (and d!2155015 b!6857609)))

(assert (=> bs!1832996 (not (= lambda!387724 lambda!387688))))

(assert (=> d!2155015 (= (inv!84953 (h!72670 zl!343)) (forall!15863 (exprs!6566 (h!72670 zl!343)) lambda!387724))))

(declare-fun bs!1832997 () Bool)

(assert (= bs!1832997 d!2155015))

(declare-fun m!7593642 () Bool)

(assert (=> bs!1832997 m!7593642))

(assert (=> b!6857619 d!2155015))

(declare-fun d!2155017 () Bool)

(declare-fun lt!2456906 () Bool)

(assert (=> d!2155017 (= lt!2456906 (exists!2793 (toList!10466 z!1189) lambda!387690))))

(declare-fun choose!51081 ((Set Context!12132) Int) Bool)

(assert (=> d!2155017 (= lt!2456906 (choose!51081 z!1189 lambda!387690))))

(assert (=> d!2155017 (= (exists!2794 z!1189 lambda!387690) lt!2456906)))

(declare-fun bs!1832998 () Bool)

(assert (= bs!1832998 d!2155017))

(assert (=> bs!1832998 m!7593532))

(assert (=> bs!1832998 m!7593532))

(declare-fun m!7593646 () Bool)

(assert (=> bs!1832998 m!7593646))

(declare-fun m!7593648 () Bool)

(assert (=> bs!1832998 m!7593648))

(assert (=> b!6857627 d!2155017))

(declare-fun d!2155019 () Bool)

(declare-fun c!1276514 () Bool)

(declare-fun isEmpty!38592 (List!66347) Bool)

(assert (=> d!2155019 (= c!1276514 (isEmpty!38592 s!2326))))

(declare-fun e!4134701 () Bool)

(assert (=> d!2155019 (= (matchZipper!2648 lt!2456839 s!2326) e!4134701)))

(declare-fun b!6857740 () Bool)

(declare-fun nullableZipper!2357 ((Set Context!12132)) Bool)

(assert (=> b!6857740 (= e!4134701 (nullableZipper!2357 lt!2456839))))

(declare-fun b!6857741 () Bool)

(declare-fun derivationStepZipper!2604 ((Set Context!12132) C!33634) (Set Context!12132))

(declare-fun head!13742 (List!66347) C!33634)

(declare-fun tail!12815 (List!66347) List!66347)

(assert (=> b!6857741 (= e!4134701 (matchZipper!2648 (derivationStepZipper!2604 lt!2456839 (head!13742 s!2326)) (tail!12815 s!2326)))))

(assert (= (and d!2155019 c!1276514) b!6857740))

(assert (= (and d!2155019 (not c!1276514)) b!6857741))

(declare-fun m!7593656 () Bool)

(assert (=> d!2155019 m!7593656))

(declare-fun m!7593658 () Bool)

(assert (=> b!6857740 m!7593658))

(declare-fun m!7593660 () Bool)

(assert (=> b!6857741 m!7593660))

(assert (=> b!6857741 m!7593660))

(declare-fun m!7593662 () Bool)

(assert (=> b!6857741 m!7593662))

(declare-fun m!7593664 () Bool)

(assert (=> b!6857741 m!7593664))

(assert (=> b!6857741 m!7593662))

(assert (=> b!6857741 m!7593664))

(declare-fun m!7593666 () Bool)

(assert (=> b!6857741 m!7593666))

(assert (=> b!6857627 d!2155019))

(declare-fun d!2155025 () Bool)

(assert (=> d!2155025 (= (matchR!8865 lt!2456843 s!2326) (matchZipper!2648 lt!2456839 s!2326))))

(declare-fun lt!2456912 () Unit!160111)

(declare-fun choose!51082 ((Set Context!12132) List!66346 Regex!16682 List!66347) Unit!160111)

(assert (=> d!2155025 (= lt!2456912 (choose!51082 lt!2456839 lt!2456836 lt!2456843 s!2326))))

(assert (=> d!2155025 (validRegex!8418 lt!2456843)))

(assert (=> d!2155025 (= (theoremZipperRegexEquiv!958 lt!2456839 lt!2456836 lt!2456843 s!2326) lt!2456912)))

(declare-fun bs!1832999 () Bool)

(assert (= bs!1832999 d!2155025))

(assert (=> bs!1832999 m!7593508))

(assert (=> bs!1832999 m!7593526))

(declare-fun m!7593668 () Bool)

(assert (=> bs!1832999 m!7593668))

(assert (=> bs!1832999 m!7593514))

(assert (=> b!6857627 d!2155025))

(declare-fun d!2155027 () Bool)

(assert (=> d!2155027 (exists!2794 z!1189 lambda!387690)))

(declare-fun lt!2456917 () Unit!160111)

(declare-fun choose!51083 ((Set Context!12132) Context!12132 Int) Unit!160111)

(assert (=> d!2155027 (= lt!2456917 (choose!51083 z!1189 lt!2456842 lambda!387690))))

(assert (=> d!2155027 (set.member lt!2456842 z!1189)))

(assert (=> d!2155027 (= (lemmaContainsThenExists!72 z!1189 lt!2456842 lambda!387690) lt!2456917)))

(declare-fun bs!1833000 () Bool)

(assert (= bs!1833000 d!2155027))

(assert (=> bs!1833000 m!7593524))

(declare-fun m!7593670 () Bool)

(assert (=> bs!1833000 m!7593670))

(declare-fun m!7593672 () Bool)

(assert (=> bs!1833000 m!7593672))

(assert (=> b!6857627 d!2155027))

(declare-fun bs!1833001 () Bool)

(declare-fun d!2155029 () Bool)

(assert (= bs!1833001 (and d!2155029 b!6857616)))

(declare-fun lambda!387727 () Int)

(assert (=> bs!1833001 (not (= lambda!387727 lambda!387689))))

(declare-fun bs!1833002 () Bool)

(assert (= bs!1833002 (and d!2155029 b!6857627)))

(assert (=> bs!1833002 (not (= lambda!387727 lambda!387690))))

(assert (=> d!2155029 true))

(declare-fun order!27675 () Int)

(declare-fun dynLambda!26476 (Int Int) Int)

(assert (=> d!2155029 (< (dynLambda!26476 order!27675 lambda!387690) (dynLambda!26476 order!27675 lambda!387727))))

(declare-fun forall!15864 (List!66346 Int) Bool)

(assert (=> d!2155029 (= (exists!2793 zl!343 lambda!387690) (not (forall!15864 zl!343 lambda!387727)))))

(declare-fun bs!1833003 () Bool)

(assert (= bs!1833003 d!2155029))

(declare-fun m!7593674 () Bool)

(assert (=> bs!1833003 m!7593674))

(assert (=> b!6857627 d!2155029))

(assert (=> b!6857621 d!2155005))

(declare-fun b!6857780 () Bool)

(declare-fun e!4134733 () Bool)

(declare-fun call!624687 () Bool)

(assert (=> b!6857780 (= e!4134733 call!624687)))

(declare-fun b!6857781 () Bool)

(declare-fun e!4134731 () Bool)

(declare-fun e!4134732 () Bool)

(assert (=> b!6857781 (= e!4134731 e!4134732)))

(declare-fun res!2798326 () Bool)

(assert (=> b!6857781 (=> (not res!2798326) (not e!4134732))))

(declare-fun call!624688 () Bool)

(assert (=> b!6857781 (= res!2798326 call!624688)))

(declare-fun b!6857782 () Bool)

(declare-fun call!624686 () Bool)

(assert (=> b!6857782 (= e!4134732 call!624686)))

(declare-fun b!6857783 () Bool)

(declare-fun e!4134730 () Bool)

(assert (=> b!6857783 (= e!4134730 e!4134733)))

(declare-fun res!2798327 () Bool)

(declare-fun nullable!6643 (Regex!16682) Bool)

(assert (=> b!6857783 (= res!2798327 (not (nullable!6643 (reg!17011 lt!2456843))))))

(assert (=> b!6857783 (=> (not res!2798327) (not e!4134733))))

(declare-fun bm!624682 () Bool)

(assert (=> bm!624682 (= call!624686 call!624687)))

(declare-fun bm!624683 () Bool)

(declare-fun c!1276526 () Bool)

(declare-fun c!1276525 () Bool)

(assert (=> bm!624683 (= call!624687 (validRegex!8418 (ite c!1276526 (reg!17011 lt!2456843) (ite c!1276525 (regTwo!33877 lt!2456843) (regTwo!33876 lt!2456843)))))))

(declare-fun b!6857784 () Bool)

(declare-fun e!4134734 () Bool)

(assert (=> b!6857784 (= e!4134730 e!4134734)))

(assert (=> b!6857784 (= c!1276525 (is-Union!16682 lt!2456843))))

(declare-fun b!6857785 () Bool)

(declare-fun e!4134729 () Bool)

(assert (=> b!6857785 (= e!4134729 e!4134730)))

(assert (=> b!6857785 (= c!1276526 (is-Star!16682 lt!2456843))))

(declare-fun b!6857786 () Bool)

(declare-fun res!2798323 () Bool)

(declare-fun e!4134735 () Bool)

(assert (=> b!6857786 (=> (not res!2798323) (not e!4134735))))

(assert (=> b!6857786 (= res!2798323 call!624688)))

(assert (=> b!6857786 (= e!4134734 e!4134735)))

(declare-fun b!6857787 () Bool)

(declare-fun res!2798325 () Bool)

(assert (=> b!6857787 (=> res!2798325 e!4134731)))

(assert (=> b!6857787 (= res!2798325 (not (is-Concat!25527 lt!2456843)))))

(assert (=> b!6857787 (= e!4134734 e!4134731)))

(declare-fun b!6857788 () Bool)

(assert (=> b!6857788 (= e!4134735 call!624686)))

(declare-fun bm!624681 () Bool)

(assert (=> bm!624681 (= call!624688 (validRegex!8418 (ite c!1276525 (regOne!33877 lt!2456843) (regOne!33876 lt!2456843))))))

(declare-fun d!2155031 () Bool)

(declare-fun res!2798324 () Bool)

(assert (=> d!2155031 (=> res!2798324 e!4134729)))

(assert (=> d!2155031 (= res!2798324 (is-ElementMatch!16682 lt!2456843))))

(assert (=> d!2155031 (= (validRegex!8418 lt!2456843) e!4134729)))

(assert (= (and d!2155031 (not res!2798324)) b!6857785))

(assert (= (and b!6857785 c!1276526) b!6857783))

(assert (= (and b!6857785 (not c!1276526)) b!6857784))

(assert (= (and b!6857783 res!2798327) b!6857780))

(assert (= (and b!6857784 c!1276525) b!6857786))

(assert (= (and b!6857784 (not c!1276525)) b!6857787))

(assert (= (and b!6857786 res!2798323) b!6857788))

(assert (= (and b!6857787 (not res!2798325)) b!6857781))

(assert (= (and b!6857781 res!2798326) b!6857782))

(assert (= (or b!6857788 b!6857782) bm!624682))

(assert (= (or b!6857786 b!6857781) bm!624681))

(assert (= (or b!6857780 bm!624682) bm!624683))

(declare-fun m!7593686 () Bool)

(assert (=> b!6857783 m!7593686))

(declare-fun m!7593688 () Bool)

(assert (=> bm!624683 m!7593688))

(declare-fun m!7593690 () Bool)

(assert (=> bm!624681 m!7593690))

(assert (=> b!6857611 d!2155031))

(declare-fun d!2155035 () Bool)

(assert (=> d!2155035 (= (isEmpty!38590 (t!380089 zl!343)) (is-Nil!66222 (t!380089 zl!343)))))

(assert (=> b!6857620 d!2155035))

(declare-fun bs!1833005 () Bool)

(declare-fun d!2155037 () Bool)

(assert (= bs!1833005 (and d!2155037 d!2155007)))

(declare-fun lambda!387731 () Int)

(assert (=> bs!1833005 (= lambda!387731 lambda!387717)))

(declare-fun bs!1833006 () Bool)

(assert (= bs!1833006 (and d!2155037 d!2155015)))

(assert (=> bs!1833006 (= lambda!387731 lambda!387724)))

(assert (=> bs!1833005 (not (= lambda!387731 lambda!387718))))

(declare-fun bs!1833007 () Bool)

(assert (= bs!1833007 (and d!2155037 d!2155005)))

(assert (=> bs!1833007 (not (= lambda!387731 lambda!387712))))

(declare-fun bs!1833009 () Bool)

(assert (= bs!1833009 (and d!2155037 d!2155011)))

(assert (=> bs!1833009 (= lambda!387731 lambda!387721)))

(declare-fun bs!1833010 () Bool)

(assert (= bs!1833010 (and d!2155037 b!6857609)))

(assert (=> bs!1833010 (not (= lambda!387731 lambda!387688))))

(assert (=> d!2155037 (= (inv!84953 setElem!47130) (forall!15863 (exprs!6566 setElem!47130) lambda!387731))))

(declare-fun bs!1833011 () Bool)

(assert (= bs!1833011 d!2155037))

(declare-fun m!7593694 () Bool)

(assert (=> bs!1833011 m!7593694))

(assert (=> setNonEmpty!47130 d!2155037))

(declare-fun d!2155041 () Bool)

(declare-fun lt!2456922 () Regex!16682)

(assert (=> d!2155041 (validRegex!8418 lt!2456922)))

(declare-fun generalisedUnion!2518 (List!66345) Regex!16682)

(assert (=> d!2155041 (= lt!2456922 (generalisedUnion!2518 (unfocusZipperList!2099 zl!343)))))

(assert (=> d!2155041 (= (unfocusZipper!2424 zl!343) lt!2456922)))

(declare-fun bs!1833012 () Bool)

(assert (= bs!1833012 d!2155041))

(declare-fun m!7593696 () Bool)

(assert (=> bs!1833012 m!7593696))

(assert (=> bs!1833012 m!7593560))

(assert (=> bs!1833012 m!7593560))

(declare-fun m!7593698 () Bool)

(assert (=> bs!1833012 m!7593698))

(assert (=> b!6857610 d!2155041))

(assert (=> b!6857613 d!2155035))

(declare-fun b!6857791 () Bool)

(declare-fun e!4134740 () Bool)

(declare-fun call!624690 () Bool)

(assert (=> b!6857791 (= e!4134740 call!624690)))

(declare-fun b!6857792 () Bool)

(declare-fun e!4134738 () Bool)

(declare-fun e!4134739 () Bool)

(assert (=> b!6857792 (= e!4134738 e!4134739)))

(declare-fun res!2798331 () Bool)

(assert (=> b!6857792 (=> (not res!2798331) (not e!4134739))))

(declare-fun call!624691 () Bool)

(assert (=> b!6857792 (= res!2798331 call!624691)))

(declare-fun b!6857793 () Bool)

(declare-fun call!624689 () Bool)

(assert (=> b!6857793 (= e!4134739 call!624689)))

(declare-fun b!6857794 () Bool)

(declare-fun e!4134737 () Bool)

(assert (=> b!6857794 (= e!4134737 e!4134740)))

(declare-fun res!2798332 () Bool)

(assert (=> b!6857794 (= res!2798332 (not (nullable!6643 (reg!17011 r!7292))))))

(assert (=> b!6857794 (=> (not res!2798332) (not e!4134740))))

(declare-fun bm!624685 () Bool)

(assert (=> bm!624685 (= call!624689 call!624690)))

(declare-fun c!1276527 () Bool)

(declare-fun bm!624686 () Bool)

(declare-fun c!1276528 () Bool)

(assert (=> bm!624686 (= call!624690 (validRegex!8418 (ite c!1276528 (reg!17011 r!7292) (ite c!1276527 (regTwo!33877 r!7292) (regTwo!33876 r!7292)))))))

(declare-fun b!6857795 () Bool)

(declare-fun e!4134741 () Bool)

(assert (=> b!6857795 (= e!4134737 e!4134741)))

(assert (=> b!6857795 (= c!1276527 (is-Union!16682 r!7292))))

(declare-fun b!6857796 () Bool)

(declare-fun e!4134736 () Bool)

(assert (=> b!6857796 (= e!4134736 e!4134737)))

(assert (=> b!6857796 (= c!1276528 (is-Star!16682 r!7292))))

(declare-fun b!6857797 () Bool)

(declare-fun res!2798328 () Bool)

(declare-fun e!4134742 () Bool)

(assert (=> b!6857797 (=> (not res!2798328) (not e!4134742))))

(assert (=> b!6857797 (= res!2798328 call!624691)))

(assert (=> b!6857797 (= e!4134741 e!4134742)))

(declare-fun b!6857798 () Bool)

(declare-fun res!2798330 () Bool)

(assert (=> b!6857798 (=> res!2798330 e!4134738)))

(assert (=> b!6857798 (= res!2798330 (not (is-Concat!25527 r!7292)))))

(assert (=> b!6857798 (= e!4134741 e!4134738)))

(declare-fun b!6857799 () Bool)

(assert (=> b!6857799 (= e!4134742 call!624689)))

(declare-fun bm!624684 () Bool)

(assert (=> bm!624684 (= call!624691 (validRegex!8418 (ite c!1276527 (regOne!33877 r!7292) (regOne!33876 r!7292))))))

(declare-fun d!2155043 () Bool)

(declare-fun res!2798329 () Bool)

(assert (=> d!2155043 (=> res!2798329 e!4134736)))

(assert (=> d!2155043 (= res!2798329 (is-ElementMatch!16682 r!7292))))

(assert (=> d!2155043 (= (validRegex!8418 r!7292) e!4134736)))

(assert (= (and d!2155043 (not res!2798329)) b!6857796))

(assert (= (and b!6857796 c!1276528) b!6857794))

(assert (= (and b!6857796 (not c!1276528)) b!6857795))

(assert (= (and b!6857794 res!2798332) b!6857791))

(assert (= (and b!6857795 c!1276527) b!6857797))

(assert (= (and b!6857795 (not c!1276527)) b!6857798))

(assert (= (and b!6857797 res!2798328) b!6857799))

(assert (= (and b!6857798 (not res!2798330)) b!6857792))

(assert (= (and b!6857792 res!2798331) b!6857793))

(assert (= (or b!6857799 b!6857793) bm!624685))

(assert (= (or b!6857797 b!6857792) bm!624684))

(assert (= (or b!6857791 bm!624685) bm!624686))

(declare-fun m!7593700 () Bool)

(assert (=> b!6857794 m!7593700))

(declare-fun m!7593702 () Bool)

(assert (=> bm!624686 m!7593702))

(declare-fun m!7593704 () Bool)

(assert (=> bm!624684 m!7593704))

(assert (=> start!662026 d!2155043))

(declare-fun d!2155045 () Bool)

(declare-fun e!4134745 () Bool)

(assert (=> d!2155045 e!4134745))

(declare-fun res!2798335 () Bool)

(assert (=> d!2155045 (=> (not res!2798335) (not e!4134745))))

(declare-fun lt!2456925 () List!66346)

(declare-fun noDuplicate!2446 (List!66346) Bool)

(assert (=> d!2155045 (= res!2798335 (noDuplicate!2446 lt!2456925))))

(declare-fun choose!51084 ((Set Context!12132)) List!66346)

(assert (=> d!2155045 (= lt!2456925 (choose!51084 z!1189))))

(assert (=> d!2155045 (= (toList!10466 z!1189) lt!2456925)))

(declare-fun b!6857802 () Bool)

(declare-fun content!12991 (List!66346) (Set Context!12132))

(assert (=> b!6857802 (= e!4134745 (= (content!12991 lt!2456925) z!1189))))

(assert (= (and d!2155045 res!2798335) b!6857802))

(declare-fun m!7593706 () Bool)

(assert (=> d!2155045 m!7593706))

(declare-fun m!7593708 () Bool)

(assert (=> d!2155045 m!7593708))

(declare-fun m!7593710 () Bool)

(assert (=> b!6857802 m!7593710))

(assert (=> b!6857612 d!2155045))

(declare-fun d!2155047 () Bool)

(declare-fun lt!2456928 () Bool)

(declare-fun content!12992 (List!66345) (Set Regex!16682))

(assert (=> d!2155047 (= lt!2456928 (set.member lt!2456843 (content!12992 lt!2456833)))))

(declare-fun e!4134751 () Bool)

(assert (=> d!2155047 (= lt!2456928 e!4134751)))

(declare-fun res!2798340 () Bool)

(assert (=> d!2155047 (=> (not res!2798340) (not e!4134751))))

(assert (=> d!2155047 (= res!2798340 (is-Cons!66221 lt!2456833))))

(assert (=> d!2155047 (= (contains!20338 lt!2456833 lt!2456843) lt!2456928)))

(declare-fun b!6857807 () Bool)

(declare-fun e!4134750 () Bool)

(assert (=> b!6857807 (= e!4134751 e!4134750)))

(declare-fun res!2798341 () Bool)

(assert (=> b!6857807 (=> res!2798341 e!4134750)))

(assert (=> b!6857807 (= res!2798341 (= (h!72669 lt!2456833) lt!2456843))))

(declare-fun b!6857808 () Bool)

(assert (=> b!6857808 (= e!4134750 (contains!20338 (t!380088 lt!2456833) lt!2456843))))

(assert (= (and d!2155047 res!2798340) b!6857807))

(assert (= (and b!6857807 (not res!2798341)) b!6857808))

(declare-fun m!7593712 () Bool)

(assert (=> d!2155047 m!7593712))

(declare-fun m!7593714 () Bool)

(assert (=> d!2155047 m!7593714))

(declare-fun m!7593716 () Bool)

(assert (=> b!6857808 m!7593716))

(assert (=> b!6857622 d!2155047))

(declare-fun b!6857821 () Bool)

(declare-fun e!4134762 () Regex!16682)

(assert (=> b!6857821 (= e!4134762 (getWitness!959 (t!380088 lt!2456833) lambda!387688))))

(declare-fun b!6857822 () Bool)

(declare-fun e!4134761 () Bool)

(declare-fun lt!2456936 () Regex!16682)

(assert (=> b!6857822 (= e!4134761 (contains!20338 lt!2456833 lt!2456936))))

(declare-fun b!6857823 () Bool)

(declare-fun e!4134760 () Regex!16682)

(assert (=> b!6857823 (= e!4134760 e!4134762)))

(declare-fun c!1276533 () Bool)

(assert (=> b!6857823 (= c!1276533 (is-Cons!66221 lt!2456833))))

(declare-fun d!2155049 () Bool)

(assert (=> d!2155049 e!4134761))

(declare-fun res!2798347 () Bool)

(assert (=> d!2155049 (=> (not res!2798347) (not e!4134761))))

(declare-fun dynLambda!26477 (Int Regex!16682) Bool)

(assert (=> d!2155049 (= res!2798347 (dynLambda!26477 lambda!387688 lt!2456936))))

(assert (=> d!2155049 (= lt!2456936 e!4134760)))

(declare-fun c!1276534 () Bool)

(declare-fun e!4134763 () Bool)

(assert (=> d!2155049 (= c!1276534 e!4134763)))

(declare-fun res!2798346 () Bool)

(assert (=> d!2155049 (=> (not res!2798346) (not e!4134763))))

(assert (=> d!2155049 (= res!2798346 (is-Cons!66221 lt!2456833))))

(assert (=> d!2155049 (exists!2792 lt!2456833 lambda!387688)))

(assert (=> d!2155049 (= (getWitness!959 lt!2456833 lambda!387688) lt!2456936)))

(declare-fun b!6857824 () Bool)

(assert (=> b!6857824 (= e!4134760 (h!72669 lt!2456833))))

(declare-fun b!6857825 () Bool)

(assert (=> b!6857825 (= e!4134763 (dynLambda!26477 lambda!387688 (h!72669 lt!2456833)))))

(declare-fun b!6857826 () Bool)

(declare-fun lt!2456937 () Unit!160111)

(declare-fun Unit!160115 () Unit!160111)

(assert (=> b!6857826 (= lt!2456937 Unit!160115)))

(assert (=> b!6857826 false))

(declare-fun head!13743 (List!66345) Regex!16682)

(assert (=> b!6857826 (= e!4134762 (head!13743 lt!2456833))))

(assert (= (and d!2155049 res!2798346) b!6857825))

(assert (= (and d!2155049 c!1276534) b!6857824))

(assert (= (and d!2155049 (not c!1276534)) b!6857823))

(assert (= (and b!6857823 c!1276533) b!6857821))

(assert (= (and b!6857823 (not c!1276533)) b!6857826))

(assert (= (and d!2155049 res!2798347) b!6857822))

(declare-fun b_lambda!259079 () Bool)

(assert (=> (not b_lambda!259079) (not d!2155049)))

(declare-fun b_lambda!259081 () Bool)

(assert (=> (not b_lambda!259081) (not b!6857825)))

(declare-fun m!7593720 () Bool)

(assert (=> d!2155049 m!7593720))

(assert (=> d!2155049 m!7593538))

(declare-fun m!7593722 () Bool)

(assert (=> b!6857826 m!7593722))

(declare-fun m!7593724 () Bool)

(assert (=> b!6857825 m!7593724))

(declare-fun m!7593726 () Bool)

(assert (=> b!6857821 m!7593726))

(declare-fun m!7593728 () Bool)

(assert (=> b!6857822 m!7593728))

(assert (=> b!6857622 d!2155049))

(declare-fun bs!1833014 () Bool)

(declare-fun d!2155053 () Bool)

(assert (= bs!1833014 (and d!2155053 b!6857616)))

(declare-fun lambda!387732 () Int)

(assert (=> bs!1833014 (not (= lambda!387732 lambda!387689))))

(declare-fun bs!1833015 () Bool)

(assert (= bs!1833015 (and d!2155053 b!6857627)))

(assert (=> bs!1833015 (not (= lambda!387732 lambda!387690))))

(declare-fun bs!1833016 () Bool)

(assert (= bs!1833016 (and d!2155053 d!2155029)))

(assert (=> bs!1833016 (= (= lambda!387689 lambda!387690) (= lambda!387732 lambda!387727))))

(assert (=> d!2155053 true))

(assert (=> d!2155053 (< (dynLambda!26476 order!27675 lambda!387689) (dynLambda!26476 order!27675 lambda!387732))))

(assert (=> d!2155053 (= (exists!2793 zl!343 lambda!387689) (not (forall!15864 zl!343 lambda!387732)))))

(declare-fun bs!1833017 () Bool)

(assert (= bs!1833017 d!2155053))

(declare-fun m!7593730 () Bool)

(assert (=> bs!1833017 m!7593730))

(assert (=> b!6857616 d!2155053))

(declare-fun bs!1833019 () Bool)

(declare-fun d!2155055 () Bool)

(assert (= bs!1833019 (and d!2155055 b!6857616)))

(declare-fun lambda!387735 () Int)

(assert (=> bs!1833019 (= lambda!387735 lambda!387689)))

(declare-fun bs!1833020 () Bool)

(assert (= bs!1833020 (and d!2155055 b!6857627)))

(assert (=> bs!1833020 (not (= lambda!387735 lambda!387690))))

(declare-fun bs!1833021 () Bool)

(assert (= bs!1833021 (and d!2155055 d!2155029)))

(assert (=> bs!1833021 (not (= lambda!387735 lambda!387727))))

(declare-fun bs!1833022 () Bool)

(assert (= bs!1833022 (and d!2155055 d!2155053)))

(assert (=> bs!1833022 (not (= lambda!387735 lambda!387732))))

(assert (=> d!2155055 true))

(assert (=> d!2155055 (exists!2793 zl!343 lambda!387735)))

(declare-fun lt!2456943 () Unit!160111)

(declare-fun choose!51085 (List!66346 Regex!16682) Unit!160111)

(assert (=> d!2155055 (= lt!2456943 (choose!51085 zl!343 lt!2456843))))

(assert (=> d!2155055 (contains!20338 (unfocusZipperList!2099 zl!343) lt!2456843)))

(assert (=> d!2155055 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!37 zl!343 lt!2456843) lt!2456943)))

(declare-fun bs!1833023 () Bool)

(assert (= bs!1833023 d!2155055))

(declare-fun m!7593736 () Bool)

(assert (=> bs!1833023 m!7593736))

(declare-fun m!7593738 () Bool)

(assert (=> bs!1833023 m!7593738))

(assert (=> bs!1833023 m!7593560))

(assert (=> bs!1833023 m!7593560))

(declare-fun m!7593740 () Bool)

(assert (=> bs!1833023 m!7593740))

(assert (=> b!6857616 d!2155055))

(declare-fun d!2155059 () Bool)

(declare-fun lt!2456946 () Int)

(assert (=> d!2155059 (>= lt!2456946 0)))

(declare-fun e!4134767 () Int)

(assert (=> d!2155059 (= lt!2456946 e!4134767)))

(declare-fun c!1276539 () Bool)

(assert (=> d!2155059 (= c!1276539 (is-Cons!66222 zl!343))))

(assert (=> d!2155059 (= (zipperDepthTotal!437 zl!343) lt!2456946)))

(declare-fun b!6857833 () Bool)

(assert (=> b!6857833 (= e!4134767 (+ (contextDepthTotal!409 (h!72670 zl!343)) (zipperDepthTotal!437 (t!380089 zl!343))))))

(declare-fun b!6857834 () Bool)

(assert (=> b!6857834 (= e!4134767 0)))

(assert (= (and d!2155059 c!1276539) b!6857833))

(assert (= (and d!2155059 (not c!1276539)) b!6857834))

(declare-fun m!7593742 () Bool)

(assert (=> b!6857833 m!7593742))

(declare-fun m!7593744 () Bool)

(assert (=> b!6857833 m!7593744))

(assert (=> b!6857626 d!2155059))

(declare-fun d!2155061 () Bool)

(declare-fun lt!2456951 () Int)

(assert (=> d!2155061 (>= lt!2456951 0)))

(declare-fun e!4134770 () Int)

(assert (=> d!2155061 (= lt!2456951 e!4134770)))

(declare-fun c!1276543 () Bool)

(assert (=> d!2155061 (= c!1276543 (is-Cons!66221 (exprs!6566 lt!2456842)))))

(assert (=> d!2155061 (= (contextDepthTotal!409 lt!2456842) lt!2456951)))

(declare-fun b!6857839 () Bool)

(declare-fun regexDepthTotal!254 (Regex!16682) Int)

(assert (=> b!6857839 (= e!4134770 (+ (regexDepthTotal!254 (h!72669 (exprs!6566 lt!2456842))) (contextDepthTotal!409 (Context!12133 (t!380088 (exprs!6566 lt!2456842))))))))

(declare-fun b!6857840 () Bool)

(assert (=> b!6857840 (= e!4134770 1)))

(assert (= (and d!2155061 c!1276543) b!6857839))

(assert (= (and d!2155061 (not c!1276543)) b!6857840))

(declare-fun m!7593748 () Bool)

(assert (=> b!6857839 m!7593748))

(declare-fun m!7593750 () Bool)

(assert (=> b!6857839 m!7593750))

(assert (=> b!6857626 d!2155061))

(declare-fun d!2155065 () Bool)

(declare-fun lt!2456952 () Int)

(assert (=> d!2155065 (>= lt!2456952 0)))

(declare-fun e!4134771 () Int)

(assert (=> d!2155065 (= lt!2456952 e!4134771)))

(declare-fun c!1276544 () Bool)

(assert (=> d!2155065 (= c!1276544 (is-Cons!66222 lt!2456836))))

(assert (=> d!2155065 (= (zipperDepthTotal!437 lt!2456836) lt!2456952)))

(declare-fun b!6857841 () Bool)

(assert (=> b!6857841 (= e!4134771 (+ (contextDepthTotal!409 (h!72670 lt!2456836)) (zipperDepthTotal!437 (t!380089 lt!2456836))))))

(declare-fun b!6857842 () Bool)

(assert (=> b!6857842 (= e!4134771 0)))

(assert (= (and d!2155065 c!1276544) b!6857841))

(assert (= (and d!2155065 (not c!1276544)) b!6857842))

(declare-fun m!7593752 () Bool)

(assert (=> b!6857841 m!7593752))

(declare-fun m!7593754 () Bool)

(assert (=> b!6857841 m!7593754))

(assert (=> b!6857626 d!2155065))

(declare-fun b!6857855 () Bool)

(declare-fun e!4134783 () Bool)

(declare-fun lt!2456959 () Context!12132)

(declare-fun contains!20340 (List!66346 Context!12132) Bool)

(assert (=> b!6857855 (= e!4134783 (contains!20340 zl!343 lt!2456959))))

(declare-fun b!6857856 () Bool)

(declare-fun e!4134782 () Context!12132)

(declare-fun e!4134781 () Context!12132)

(assert (=> b!6857856 (= e!4134782 e!4134781)))

(declare-fun c!1276549 () Bool)

(assert (=> b!6857856 (= c!1276549 (is-Cons!66222 zl!343))))

(declare-fun d!2155067 () Bool)

(assert (=> d!2155067 e!4134783))

(declare-fun res!2798352 () Bool)

(assert (=> d!2155067 (=> (not res!2798352) (not e!4134783))))

(declare-fun dynLambda!26478 (Int Context!12132) Bool)

(assert (=> d!2155067 (= res!2798352 (dynLambda!26478 lambda!387689 lt!2456959))))

(assert (=> d!2155067 (= lt!2456959 e!4134782)))

(declare-fun c!1276550 () Bool)

(declare-fun e!4134780 () Bool)

(assert (=> d!2155067 (= c!1276550 e!4134780)))

(declare-fun res!2798353 () Bool)

(assert (=> d!2155067 (=> (not res!2798353) (not e!4134780))))

(assert (=> d!2155067 (= res!2798353 (is-Cons!66222 zl!343))))

(assert (=> d!2155067 (exists!2793 zl!343 lambda!387689)))

(assert (=> d!2155067 (= (getWitness!960 zl!343 lambda!387689) lt!2456959)))

(declare-fun b!6857857 () Bool)

(assert (=> b!6857857 (= e!4134782 (h!72670 zl!343))))

(declare-fun b!6857858 () Bool)

(assert (=> b!6857858 (= e!4134780 (dynLambda!26478 lambda!387689 (h!72670 zl!343)))))

(declare-fun b!6857859 () Bool)

(declare-fun lt!2456958 () Unit!160111)

(declare-fun Unit!160116 () Unit!160111)

(assert (=> b!6857859 (= lt!2456958 Unit!160116)))

(assert (=> b!6857859 false))

(declare-fun head!13744 (List!66346) Context!12132)

(assert (=> b!6857859 (= e!4134781 (head!13744 zl!343))))

(declare-fun b!6857860 () Bool)

(assert (=> b!6857860 (= e!4134781 (getWitness!960 (t!380089 zl!343) lambda!387689))))

(assert (= (and d!2155067 res!2798353) b!6857858))

(assert (= (and d!2155067 c!1276550) b!6857857))

(assert (= (and d!2155067 (not c!1276550)) b!6857856))

(assert (= (and b!6857856 c!1276549) b!6857860))

(assert (= (and b!6857856 (not c!1276549)) b!6857859))

(assert (= (and d!2155067 res!2798352) b!6857855))

(declare-fun b_lambda!259083 () Bool)

(assert (=> (not b_lambda!259083) (not d!2155067)))

(declare-fun b_lambda!259085 () Bool)

(assert (=> (not b_lambda!259085) (not b!6857858)))

(declare-fun m!7593760 () Bool)

(assert (=> b!6857859 m!7593760))

(declare-fun m!7593762 () Bool)

(assert (=> b!6857858 m!7593762))

(declare-fun m!7593764 () Bool)

(assert (=> d!2155067 m!7593764))

(assert (=> d!2155067 m!7593534))

(declare-fun m!7593766 () Bool)

(assert (=> b!6857860 m!7593766))

(declare-fun m!7593768 () Bool)

(assert (=> b!6857855 m!7593768))

(assert (=> b!6857626 d!2155067))

(declare-fun d!2155071 () Bool)

(assert (=> d!2155071 (< (contextDepthTotal!409 lt!2456842) (zipperDepthTotal!437 zl!343))))

(declare-fun lt!2456962 () Unit!160111)

(declare-fun choose!51086 (List!66346 Context!12132) Unit!160111)

(assert (=> d!2155071 (= lt!2456962 (choose!51086 zl!343 lt!2456842))))

(assert (=> d!2155071 (contains!20340 zl!343 lt!2456842)))

(assert (=> d!2155071 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!41 zl!343 lt!2456842) lt!2456962)))

(declare-fun bs!1833028 () Bool)

(assert (= bs!1833028 d!2155071))

(assert (=> bs!1833028 m!7593550))

(assert (=> bs!1833028 m!7593542))

(declare-fun m!7593770 () Bool)

(assert (=> bs!1833028 m!7593770))

(declare-fun m!7593772 () Bool)

(assert (=> bs!1833028 m!7593772))

(assert (=> b!6857626 d!2155071))

(declare-fun b!6857901 () Bool)

(assert (=> b!6857901 true))

(assert (=> b!6857901 true))

(declare-fun bs!1833032 () Bool)

(declare-fun b!6857906 () Bool)

(assert (= bs!1833032 (and b!6857906 b!6857901)))

(declare-fun lambda!387750 () Int)

(declare-fun lambda!387749 () Int)

(assert (=> bs!1833032 (not (= lambda!387750 lambda!387749))))

(assert (=> b!6857906 true))

(assert (=> b!6857906 true))

(declare-fun e!4134807 () Bool)

(declare-fun call!624696 () Bool)

(assert (=> b!6857901 (= e!4134807 call!624696)))

(declare-fun b!6857902 () Bool)

(declare-fun e!4134809 () Bool)

(declare-fun e!4134810 () Bool)

(assert (=> b!6857902 (= e!4134809 e!4134810)))

(declare-fun c!1276563 () Bool)

(assert (=> b!6857902 (= c!1276563 (is-Star!16682 r!7292))))

(declare-fun b!6857903 () Bool)

(declare-fun res!2798374 () Bool)

(assert (=> b!6857903 (=> res!2798374 e!4134807)))

(declare-fun call!624697 () Bool)

(assert (=> b!6857903 (= res!2798374 call!624697)))

(assert (=> b!6857903 (= e!4134810 e!4134807)))

(declare-fun b!6857904 () Bool)

(declare-fun e!4134813 () Bool)

(assert (=> b!6857904 (= e!4134813 call!624697)))

(declare-fun d!2155073 () Bool)

(declare-fun c!1276564 () Bool)

(assert (=> d!2155073 (= c!1276564 (is-EmptyExpr!16682 r!7292))))

(assert (=> d!2155073 (= (matchRSpec!3783 r!7292 s!2326) e!4134813)))

(declare-fun b!6857905 () Bool)

(declare-fun c!1276566 () Bool)

(assert (=> b!6857905 (= c!1276566 (is-Union!16682 r!7292))))

(declare-fun e!4134812 () Bool)

(assert (=> b!6857905 (= e!4134812 e!4134809)))

(assert (=> b!6857906 (= e!4134810 call!624696)))

(declare-fun b!6857907 () Bool)

(declare-fun e!4134811 () Bool)

(assert (=> b!6857907 (= e!4134809 e!4134811)))

(declare-fun res!2798372 () Bool)

(assert (=> b!6857907 (= res!2798372 (matchRSpec!3783 (regOne!33877 r!7292) s!2326))))

(assert (=> b!6857907 (=> res!2798372 e!4134811)))

(declare-fun b!6857908 () Bool)

(declare-fun e!4134808 () Bool)

(assert (=> b!6857908 (= e!4134813 e!4134808)))

(declare-fun res!2798373 () Bool)

(assert (=> b!6857908 (= res!2798373 (not (is-EmptyLang!16682 r!7292)))))

(assert (=> b!6857908 (=> (not res!2798373) (not e!4134808))))

(declare-fun b!6857909 () Bool)

(assert (=> b!6857909 (= e!4134812 (= s!2326 (Cons!66223 (c!1276492 r!7292) Nil!66223)))))

(declare-fun b!6857910 () Bool)

(declare-fun c!1276565 () Bool)

(assert (=> b!6857910 (= c!1276565 (is-ElementMatch!16682 r!7292))))

(assert (=> b!6857910 (= e!4134808 e!4134812)))

(declare-fun bm!624691 () Bool)

(assert (=> bm!624691 (= call!624697 (isEmpty!38592 s!2326))))

(declare-fun b!6857911 () Bool)

(assert (=> b!6857911 (= e!4134811 (matchRSpec!3783 (regTwo!33877 r!7292) s!2326))))

(declare-fun bm!624692 () Bool)

(declare-fun Exists!3742 (Int) Bool)

(assert (=> bm!624692 (= call!624696 (Exists!3742 (ite c!1276563 lambda!387749 lambda!387750)))))

(assert (= (and d!2155073 c!1276564) b!6857904))

(assert (= (and d!2155073 (not c!1276564)) b!6857908))

(assert (= (and b!6857908 res!2798373) b!6857910))

(assert (= (and b!6857910 c!1276565) b!6857909))

(assert (= (and b!6857910 (not c!1276565)) b!6857905))

(assert (= (and b!6857905 c!1276566) b!6857907))

(assert (= (and b!6857905 (not c!1276566)) b!6857902))

(assert (= (and b!6857907 (not res!2798372)) b!6857911))

(assert (= (and b!6857902 c!1276563) b!6857903))

(assert (= (and b!6857902 (not c!1276563)) b!6857906))

(assert (= (and b!6857903 (not res!2798374)) b!6857901))

(assert (= (or b!6857901 b!6857906) bm!624692))

(assert (= (or b!6857904 b!6857903) bm!624691))

(declare-fun m!7593792 () Bool)

(assert (=> b!6857907 m!7593792))

(assert (=> bm!624691 m!7593656))

(declare-fun m!7593794 () Bool)

(assert (=> b!6857911 m!7593794))

(declare-fun m!7593796 () Bool)

(assert (=> bm!624692 m!7593796))

(assert (=> b!6857625 d!2155073))

(declare-fun b!6857950 () Bool)

(declare-fun e!4134831 () Bool)

(declare-fun e!4134834 () Bool)

(assert (=> b!6857950 (= e!4134831 e!4134834)))

(declare-fun c!1276578 () Bool)

(assert (=> b!6857950 (= c!1276578 (is-EmptyLang!16682 r!7292))))

(declare-fun b!6857951 () Bool)

(declare-fun res!2798397 () Bool)

(declare-fun e!4134835 () Bool)

(assert (=> b!6857951 (=> res!2798397 e!4134835)))

(assert (=> b!6857951 (= res!2798397 (not (isEmpty!38592 (tail!12815 s!2326))))))

(declare-fun b!6857952 () Bool)

(declare-fun res!2798391 () Bool)

(declare-fun e!4134833 () Bool)

(assert (=> b!6857952 (=> (not res!2798391) (not e!4134833))))

(assert (=> b!6857952 (= res!2798391 (isEmpty!38592 (tail!12815 s!2326)))))

(declare-fun d!2155079 () Bool)

(assert (=> d!2155079 e!4134831))

(declare-fun c!1276577 () Bool)

(assert (=> d!2155079 (= c!1276577 (is-EmptyExpr!16682 r!7292))))

(declare-fun lt!2456971 () Bool)

(declare-fun e!4134837 () Bool)

(assert (=> d!2155079 (= lt!2456971 e!4134837)))

(declare-fun c!1276576 () Bool)

(assert (=> d!2155079 (= c!1276576 (isEmpty!38592 s!2326))))

(assert (=> d!2155079 (validRegex!8418 r!7292)))

(assert (=> d!2155079 (= (matchR!8865 r!7292 s!2326) lt!2456971)))

(declare-fun b!6857953 () Bool)

(assert (=> b!6857953 (= e!4134837 (nullable!6643 r!7292))))

(declare-fun b!6857954 () Bool)

(declare-fun res!2798396 () Bool)

(declare-fun e!4134832 () Bool)

(assert (=> b!6857954 (=> res!2798396 e!4134832)))

(assert (=> b!6857954 (= res!2798396 (not (is-ElementMatch!16682 r!7292)))))

(assert (=> b!6857954 (= e!4134834 e!4134832)))

(declare-fun b!6857955 () Bool)

(declare-fun res!2798398 () Bool)

(assert (=> b!6857955 (=> res!2798398 e!4134832)))

(assert (=> b!6857955 (= res!2798398 e!4134833)))

(declare-fun res!2798394 () Bool)

(assert (=> b!6857955 (=> (not res!2798394) (not e!4134833))))

(assert (=> b!6857955 (= res!2798394 lt!2456971)))

(declare-fun b!6857956 () Bool)

(declare-fun call!624700 () Bool)

(assert (=> b!6857956 (= e!4134831 (= lt!2456971 call!624700))))

(declare-fun b!6857957 () Bool)

(assert (=> b!6857957 (= e!4134834 (not lt!2456971))))

(declare-fun b!6857958 () Bool)

(declare-fun derivativeStep!5326 (Regex!16682 C!33634) Regex!16682)

(assert (=> b!6857958 (= e!4134837 (matchR!8865 (derivativeStep!5326 r!7292 (head!13742 s!2326)) (tail!12815 s!2326)))))

(declare-fun b!6857959 () Bool)

(declare-fun e!4134836 () Bool)

(assert (=> b!6857959 (= e!4134836 e!4134835)))

(declare-fun res!2798392 () Bool)

(assert (=> b!6857959 (=> res!2798392 e!4134835)))

(assert (=> b!6857959 (= res!2798392 call!624700)))

(declare-fun b!6857960 () Bool)

(assert (=> b!6857960 (= e!4134833 (= (head!13742 s!2326) (c!1276492 r!7292)))))

(declare-fun b!6857961 () Bool)

(declare-fun res!2798393 () Bool)

(assert (=> b!6857961 (=> (not res!2798393) (not e!4134833))))

(assert (=> b!6857961 (= res!2798393 (not call!624700))))

(declare-fun bm!624695 () Bool)

(assert (=> bm!624695 (= call!624700 (isEmpty!38592 s!2326))))

(declare-fun b!6857962 () Bool)

(assert (=> b!6857962 (= e!4134835 (not (= (head!13742 s!2326) (c!1276492 r!7292))))))

(declare-fun b!6857963 () Bool)

(assert (=> b!6857963 (= e!4134832 e!4134836)))

(declare-fun res!2798395 () Bool)

(assert (=> b!6857963 (=> (not res!2798395) (not e!4134836))))

(assert (=> b!6857963 (= res!2798395 (not lt!2456971))))

(assert (= (and d!2155079 c!1276576) b!6857953))

(assert (= (and d!2155079 (not c!1276576)) b!6857958))

(assert (= (and d!2155079 c!1276577) b!6857956))

(assert (= (and d!2155079 (not c!1276577)) b!6857950))

(assert (= (and b!6857950 c!1276578) b!6857957))

(assert (= (and b!6857950 (not c!1276578)) b!6857954))

(assert (= (and b!6857954 (not res!2798396)) b!6857955))

(assert (= (and b!6857955 res!2798394) b!6857961))

(assert (= (and b!6857961 res!2798393) b!6857952))

(assert (= (and b!6857952 res!2798391) b!6857960))

(assert (= (and b!6857955 (not res!2798398)) b!6857963))

(assert (= (and b!6857963 res!2798395) b!6857959))

(assert (= (and b!6857959 (not res!2798392)) b!6857951))

(assert (= (and b!6857951 (not res!2798397)) b!6857962))

(assert (= (or b!6857956 b!6857961 b!6857959) bm!624695))

(assert (=> b!6857960 m!7593660))

(assert (=> b!6857962 m!7593660))

(assert (=> b!6857952 m!7593664))

(assert (=> b!6857952 m!7593664))

(declare-fun m!7593804 () Bool)

(assert (=> b!6857952 m!7593804))

(assert (=> b!6857951 m!7593664))

(assert (=> b!6857951 m!7593664))

(assert (=> b!6857951 m!7593804))

(declare-fun m!7593806 () Bool)

(assert (=> b!6857953 m!7593806))

(assert (=> bm!624695 m!7593656))

(assert (=> d!2155079 m!7593656))

(assert (=> d!2155079 m!7593506))

(assert (=> b!6857958 m!7593660))

(assert (=> b!6857958 m!7593660))

(declare-fun m!7593808 () Bool)

(assert (=> b!6857958 m!7593808))

(assert (=> b!6857958 m!7593664))

(assert (=> b!6857958 m!7593808))

(assert (=> b!6857958 m!7593664))

(declare-fun m!7593810 () Bool)

(assert (=> b!6857958 m!7593810))

(assert (=> b!6857625 d!2155079))

(declare-fun d!2155083 () Bool)

(assert (=> d!2155083 (= (matchR!8865 r!7292 s!2326) (matchRSpec!3783 r!7292 s!2326))))

(declare-fun lt!2456974 () Unit!160111)

(declare-fun choose!51088 (Regex!16682 List!66347) Unit!160111)

(assert (=> d!2155083 (= lt!2456974 (choose!51088 r!7292 s!2326))))

(assert (=> d!2155083 (validRegex!8418 r!7292)))

(assert (=> d!2155083 (= (mainMatchTheorem!3783 r!7292 s!2326) lt!2456974)))

(declare-fun bs!1833036 () Bool)

(assert (= bs!1833036 d!2155083))

(assert (=> bs!1833036 m!7593554))

(assert (=> bs!1833036 m!7593552))

(declare-fun m!7593812 () Bool)

(assert (=> bs!1833036 m!7593812))

(assert (=> bs!1833036 m!7593506))

(assert (=> b!6857625 d!2155083))

(declare-fun b!6857964 () Bool)

(declare-fun e!4134838 () Bool)

(declare-fun e!4134841 () Bool)

(assert (=> b!6857964 (= e!4134838 e!4134841)))

(declare-fun c!1276581 () Bool)

(assert (=> b!6857964 (= c!1276581 (is-EmptyLang!16682 lt!2456843))))

(declare-fun b!6857965 () Bool)

(declare-fun res!2798405 () Bool)

(declare-fun e!4134842 () Bool)

(assert (=> b!6857965 (=> res!2798405 e!4134842)))

(assert (=> b!6857965 (= res!2798405 (not (isEmpty!38592 (tail!12815 s!2326))))))

(declare-fun b!6857966 () Bool)

(declare-fun res!2798399 () Bool)

(declare-fun e!4134840 () Bool)

(assert (=> b!6857966 (=> (not res!2798399) (not e!4134840))))

(assert (=> b!6857966 (= res!2798399 (isEmpty!38592 (tail!12815 s!2326)))))

(declare-fun d!2155085 () Bool)

(assert (=> d!2155085 e!4134838))

(declare-fun c!1276580 () Bool)

(assert (=> d!2155085 (= c!1276580 (is-EmptyExpr!16682 lt!2456843))))

(declare-fun lt!2456975 () Bool)

(declare-fun e!4134844 () Bool)

(assert (=> d!2155085 (= lt!2456975 e!4134844)))

(declare-fun c!1276579 () Bool)

(assert (=> d!2155085 (= c!1276579 (isEmpty!38592 s!2326))))

(assert (=> d!2155085 (validRegex!8418 lt!2456843)))

(assert (=> d!2155085 (= (matchR!8865 lt!2456843 s!2326) lt!2456975)))

(declare-fun b!6857967 () Bool)

(assert (=> b!6857967 (= e!4134844 (nullable!6643 lt!2456843))))

(declare-fun b!6857968 () Bool)

(declare-fun res!2798404 () Bool)

(declare-fun e!4134839 () Bool)

(assert (=> b!6857968 (=> res!2798404 e!4134839)))

(assert (=> b!6857968 (= res!2798404 (not (is-ElementMatch!16682 lt!2456843)))))

(assert (=> b!6857968 (= e!4134841 e!4134839)))

(declare-fun b!6857969 () Bool)

(declare-fun res!2798406 () Bool)

(assert (=> b!6857969 (=> res!2798406 e!4134839)))

(assert (=> b!6857969 (= res!2798406 e!4134840)))

(declare-fun res!2798402 () Bool)

(assert (=> b!6857969 (=> (not res!2798402) (not e!4134840))))

(assert (=> b!6857969 (= res!2798402 lt!2456975)))

(declare-fun b!6857970 () Bool)

(declare-fun call!624701 () Bool)

(assert (=> b!6857970 (= e!4134838 (= lt!2456975 call!624701))))

(declare-fun b!6857971 () Bool)

(assert (=> b!6857971 (= e!4134841 (not lt!2456975))))

(declare-fun b!6857972 () Bool)

(assert (=> b!6857972 (= e!4134844 (matchR!8865 (derivativeStep!5326 lt!2456843 (head!13742 s!2326)) (tail!12815 s!2326)))))

(declare-fun b!6857973 () Bool)

(declare-fun e!4134843 () Bool)

(assert (=> b!6857973 (= e!4134843 e!4134842)))

(declare-fun res!2798400 () Bool)

(assert (=> b!6857973 (=> res!2798400 e!4134842)))

(assert (=> b!6857973 (= res!2798400 call!624701)))

(declare-fun b!6857974 () Bool)

(assert (=> b!6857974 (= e!4134840 (= (head!13742 s!2326) (c!1276492 lt!2456843)))))

(declare-fun b!6857975 () Bool)

(declare-fun res!2798401 () Bool)

(assert (=> b!6857975 (=> (not res!2798401) (not e!4134840))))

(assert (=> b!6857975 (= res!2798401 (not call!624701))))

(declare-fun bm!624696 () Bool)

(assert (=> bm!624696 (= call!624701 (isEmpty!38592 s!2326))))

(declare-fun b!6857976 () Bool)

(assert (=> b!6857976 (= e!4134842 (not (= (head!13742 s!2326) (c!1276492 lt!2456843))))))

(declare-fun b!6857977 () Bool)

(assert (=> b!6857977 (= e!4134839 e!4134843)))

(declare-fun res!2798403 () Bool)

(assert (=> b!6857977 (=> (not res!2798403) (not e!4134843))))

(assert (=> b!6857977 (= res!2798403 (not lt!2456975))))

(assert (= (and d!2155085 c!1276579) b!6857967))

(assert (= (and d!2155085 (not c!1276579)) b!6857972))

(assert (= (and d!2155085 c!1276580) b!6857970))

(assert (= (and d!2155085 (not c!1276580)) b!6857964))

(assert (= (and b!6857964 c!1276581) b!6857971))

(assert (= (and b!6857964 (not c!1276581)) b!6857968))

(assert (= (and b!6857968 (not res!2798404)) b!6857969))

(assert (= (and b!6857969 res!2798402) b!6857975))

(assert (= (and b!6857975 res!2798401) b!6857966))

(assert (= (and b!6857966 res!2798399) b!6857974))

(assert (= (and b!6857969 (not res!2798406)) b!6857977))

(assert (= (and b!6857977 res!2798403) b!6857973))

(assert (= (and b!6857973 (not res!2798400)) b!6857965))

(assert (= (and b!6857965 (not res!2798405)) b!6857976))

(assert (= (or b!6857970 b!6857975 b!6857973) bm!624696))

(assert (=> b!6857974 m!7593660))

(assert (=> b!6857976 m!7593660))

(assert (=> b!6857966 m!7593664))

(assert (=> b!6857966 m!7593664))

(assert (=> b!6857966 m!7593804))

(assert (=> b!6857965 m!7593664))

(assert (=> b!6857965 m!7593664))

(assert (=> b!6857965 m!7593804))

(declare-fun m!7593814 () Bool)

(assert (=> b!6857967 m!7593814))

(assert (=> bm!624696 m!7593656))

(assert (=> d!2155085 m!7593656))

(assert (=> d!2155085 m!7593514))

(assert (=> b!6857972 m!7593660))

(assert (=> b!6857972 m!7593660))

(declare-fun m!7593816 () Bool)

(assert (=> b!6857972 m!7593816))

(assert (=> b!6857972 m!7593664))

(assert (=> b!6857972 m!7593816))

(assert (=> b!6857972 m!7593664))

(declare-fun m!7593818 () Bool)

(assert (=> b!6857972 m!7593818))

(assert (=> b!6857615 d!2155085))

(declare-fun b!6857991 () Bool)

(declare-fun e!4134847 () Bool)

(declare-fun tp!1880590 () Bool)

(declare-fun tp!1880591 () Bool)

(assert (=> b!6857991 (= e!4134847 (and tp!1880590 tp!1880591))))

(declare-fun b!6857988 () Bool)

(assert (=> b!6857988 (= e!4134847 tp_is_empty!42617)))

(declare-fun b!6857990 () Bool)

(declare-fun tp!1880593 () Bool)

(assert (=> b!6857990 (= e!4134847 tp!1880593)))

(assert (=> b!6857614 (= tp!1880548 e!4134847)))

(declare-fun b!6857989 () Bool)

(declare-fun tp!1880592 () Bool)

(declare-fun tp!1880594 () Bool)

(assert (=> b!6857989 (= e!4134847 (and tp!1880592 tp!1880594))))

(assert (= (and b!6857614 (is-ElementMatch!16682 (regOne!33876 r!7292))) b!6857988))

(assert (= (and b!6857614 (is-Concat!25527 (regOne!33876 r!7292))) b!6857989))

(assert (= (and b!6857614 (is-Star!16682 (regOne!33876 r!7292))) b!6857990))

(assert (= (and b!6857614 (is-Union!16682 (regOne!33876 r!7292))) b!6857991))

(declare-fun b!6857995 () Bool)

(declare-fun e!4134848 () Bool)

(declare-fun tp!1880595 () Bool)

(declare-fun tp!1880596 () Bool)

(assert (=> b!6857995 (= e!4134848 (and tp!1880595 tp!1880596))))

(declare-fun b!6857992 () Bool)

(assert (=> b!6857992 (= e!4134848 tp_is_empty!42617)))

(declare-fun b!6857994 () Bool)

(declare-fun tp!1880598 () Bool)

(assert (=> b!6857994 (= e!4134848 tp!1880598)))

(assert (=> b!6857614 (= tp!1880544 e!4134848)))

(declare-fun b!6857993 () Bool)

(declare-fun tp!1880597 () Bool)

(declare-fun tp!1880599 () Bool)

(assert (=> b!6857993 (= e!4134848 (and tp!1880597 tp!1880599))))

(assert (= (and b!6857614 (is-ElementMatch!16682 (regTwo!33876 r!7292))) b!6857992))

(assert (= (and b!6857614 (is-Concat!25527 (regTwo!33876 r!7292))) b!6857993))

(assert (= (and b!6857614 (is-Star!16682 (regTwo!33876 r!7292))) b!6857994))

(assert (= (and b!6857614 (is-Union!16682 (regTwo!33876 r!7292))) b!6857995))

(declare-fun b!6858003 () Bool)

(declare-fun e!4134854 () Bool)

(declare-fun tp!1880604 () Bool)

(assert (=> b!6858003 (= e!4134854 tp!1880604)))

(declare-fun tp!1880605 () Bool)

(declare-fun b!6858002 () Bool)

(declare-fun e!4134853 () Bool)

(assert (=> b!6858002 (= e!4134853 (and (inv!84953 (h!72670 (t!380089 zl!343))) e!4134854 tp!1880605))))

(assert (=> b!6857619 (= tp!1880541 e!4134853)))

(assert (= b!6858002 b!6858003))

(assert (= (and b!6857619 (is-Cons!66222 (t!380089 zl!343))) b!6858002))

(declare-fun m!7593820 () Bool)

(assert (=> b!6858002 m!7593820))

(declare-fun b!6858007 () Bool)

(declare-fun e!4134855 () Bool)

(declare-fun tp!1880606 () Bool)

(declare-fun tp!1880607 () Bool)

(assert (=> b!6858007 (= e!4134855 (and tp!1880606 tp!1880607))))

(declare-fun b!6858004 () Bool)

(assert (=> b!6858004 (= e!4134855 tp_is_empty!42617)))

(declare-fun b!6858006 () Bool)

(declare-fun tp!1880609 () Bool)

(assert (=> b!6858006 (= e!4134855 tp!1880609)))

(assert (=> b!6857617 (= tp!1880546 e!4134855)))

(declare-fun b!6858005 () Bool)

(declare-fun tp!1880608 () Bool)

(declare-fun tp!1880610 () Bool)

(assert (=> b!6858005 (= e!4134855 (and tp!1880608 tp!1880610))))

(assert (= (and b!6857617 (is-ElementMatch!16682 (reg!17011 r!7292))) b!6858004))

(assert (= (and b!6857617 (is-Concat!25527 (reg!17011 r!7292))) b!6858005))

(assert (= (and b!6857617 (is-Star!16682 (reg!17011 r!7292))) b!6858006))

(assert (= (and b!6857617 (is-Union!16682 (reg!17011 r!7292))) b!6858007))

(declare-fun b!6858012 () Bool)

(declare-fun e!4134858 () Bool)

(declare-fun tp!1880613 () Bool)

(assert (=> b!6858012 (= e!4134858 (and tp_is_empty!42617 tp!1880613))))

(assert (=> b!6857618 (= tp!1880547 e!4134858)))

(assert (= (and b!6857618 (is-Cons!66223 (t!380090 s!2326))) b!6858012))

(declare-fun b!6858016 () Bool)

(declare-fun e!4134859 () Bool)

(declare-fun tp!1880614 () Bool)

(declare-fun tp!1880615 () Bool)

(assert (=> b!6858016 (= e!4134859 (and tp!1880614 tp!1880615))))

(declare-fun b!6858013 () Bool)

(assert (=> b!6858013 (= e!4134859 tp_is_empty!42617)))

(declare-fun b!6858015 () Bool)

(declare-fun tp!1880617 () Bool)

(assert (=> b!6858015 (= e!4134859 tp!1880617)))

(assert (=> b!6857608 (= tp!1880545 e!4134859)))

(declare-fun b!6858014 () Bool)

(declare-fun tp!1880616 () Bool)

(declare-fun tp!1880618 () Bool)

(assert (=> b!6858014 (= e!4134859 (and tp!1880616 tp!1880618))))

(assert (= (and b!6857608 (is-ElementMatch!16682 (regOne!33877 r!7292))) b!6858013))

(assert (= (and b!6857608 (is-Concat!25527 (regOne!33877 r!7292))) b!6858014))

(assert (= (and b!6857608 (is-Star!16682 (regOne!33877 r!7292))) b!6858015))

(assert (= (and b!6857608 (is-Union!16682 (regOne!33877 r!7292))) b!6858016))

(declare-fun b!6858020 () Bool)

(declare-fun e!4134860 () Bool)

(declare-fun tp!1880619 () Bool)

(declare-fun tp!1880620 () Bool)

(assert (=> b!6858020 (= e!4134860 (and tp!1880619 tp!1880620))))

(declare-fun b!6858017 () Bool)

(assert (=> b!6858017 (= e!4134860 tp_is_empty!42617)))

(declare-fun b!6858019 () Bool)

(declare-fun tp!1880622 () Bool)

(assert (=> b!6858019 (= e!4134860 tp!1880622)))

(assert (=> b!6857608 (= tp!1880543 e!4134860)))

(declare-fun b!6858018 () Bool)

(declare-fun tp!1880621 () Bool)

(declare-fun tp!1880623 () Bool)

(assert (=> b!6858018 (= e!4134860 (and tp!1880621 tp!1880623))))

(assert (= (and b!6857608 (is-ElementMatch!16682 (regTwo!33877 r!7292))) b!6858017))

(assert (= (and b!6857608 (is-Concat!25527 (regTwo!33877 r!7292))) b!6858018))

(assert (= (and b!6857608 (is-Star!16682 (regTwo!33877 r!7292))) b!6858019))

(assert (= (and b!6857608 (is-Union!16682 (regTwo!33877 r!7292))) b!6858020))

(declare-fun b!6858027 () Bool)

(declare-fun e!4134863 () Bool)

(declare-fun tp!1880628 () Bool)

(declare-fun tp!1880629 () Bool)

(assert (=> b!6858027 (= e!4134863 (and tp!1880628 tp!1880629))))

(assert (=> b!6857606 (= tp!1880549 e!4134863)))

(assert (= (and b!6857606 (is-Cons!66221 (exprs!6566 setElem!47130))) b!6858027))

(declare-fun condSetEmpty!47136 () Bool)

(assert (=> setNonEmpty!47130 (= condSetEmpty!47136 (= setRest!47130 (as set.empty (Set Context!12132))))))

(declare-fun setRes!47136 () Bool)

(assert (=> setNonEmpty!47130 (= tp!1880540 setRes!47136)))

(declare-fun setIsEmpty!47136 () Bool)

(assert (=> setIsEmpty!47136 setRes!47136))

(declare-fun setNonEmpty!47136 () Bool)

(declare-fun tp!1880635 () Bool)

(declare-fun setElem!47136 () Context!12132)

(declare-fun e!4134874 () Bool)

(assert (=> setNonEmpty!47136 (= setRes!47136 (and tp!1880635 (inv!84953 setElem!47136) e!4134874))))

(declare-fun setRest!47136 () (Set Context!12132))

(assert (=> setNonEmpty!47136 (= setRest!47130 (set.union (set.insert setElem!47136 (as set.empty (Set Context!12132))) setRest!47136))))

(declare-fun b!6858044 () Bool)

(declare-fun tp!1880634 () Bool)

(assert (=> b!6858044 (= e!4134874 tp!1880634)))

(assert (= (and setNonEmpty!47130 condSetEmpty!47136) setIsEmpty!47136))

(assert (= (and setNonEmpty!47130 (not condSetEmpty!47136)) setNonEmpty!47136))

(assert (= setNonEmpty!47136 b!6858044))

(declare-fun m!7593822 () Bool)

(assert (=> setNonEmpty!47136 m!7593822))

(declare-fun b!6858051 () Bool)

(declare-fun e!4134878 () Bool)

(declare-fun tp!1880636 () Bool)

(declare-fun tp!1880637 () Bool)

(assert (=> b!6858051 (= e!4134878 (and tp!1880636 tp!1880637))))

(assert (=> b!6857624 (= tp!1880542 e!4134878)))

(assert (= (and b!6857624 (is-Cons!66221 (exprs!6566 (h!72670 zl!343)))) b!6858051))

(declare-fun b_lambda!259087 () Bool)

(assert (= b_lambda!259083 (or b!6857616 b_lambda!259087)))

(declare-fun bs!1833037 () Bool)

(declare-fun d!2155087 () Bool)

(assert (= bs!1833037 (and d!2155087 b!6857616)))

(assert (=> bs!1833037 (= (dynLambda!26478 lambda!387689 lt!2456959) (= (generalisedConcat!2271 (exprs!6566 lt!2456959)) lt!2456843))))

(declare-fun m!7593824 () Bool)

(assert (=> bs!1833037 m!7593824))

(assert (=> d!2155067 d!2155087))

(declare-fun b_lambda!259089 () Bool)

(assert (= b_lambda!259081 (or b!6857609 b_lambda!259089)))

(declare-fun bs!1833038 () Bool)

(declare-fun d!2155089 () Bool)

(assert (= bs!1833038 (and d!2155089 b!6857609)))

(declare-fun res!2798413 () Bool)

(declare-fun e!4134882 () Bool)

(assert (=> bs!1833038 (=> (not res!2798413) (not e!4134882))))

(assert (=> bs!1833038 (= res!2798413 (validRegex!8418 (h!72669 lt!2456833)))))

(assert (=> bs!1833038 (= (dynLambda!26477 lambda!387688 (h!72669 lt!2456833)) e!4134882)))

(declare-fun b!6858054 () Bool)

(assert (=> b!6858054 (= e!4134882 (matchR!8865 (h!72669 lt!2456833) s!2326))))

(assert (= (and bs!1833038 res!2798413) b!6858054))

(declare-fun m!7593826 () Bool)

(assert (=> bs!1833038 m!7593826))

(declare-fun m!7593828 () Bool)

(assert (=> b!6858054 m!7593828))

(assert (=> b!6857825 d!2155089))

(declare-fun b_lambda!259091 () Bool)

(assert (= b_lambda!259079 (or b!6857609 b_lambda!259091)))

(declare-fun bs!1833039 () Bool)

(declare-fun d!2155091 () Bool)

(assert (= bs!1833039 (and d!2155091 b!6857609)))

(declare-fun res!2798414 () Bool)

(declare-fun e!4134883 () Bool)

(assert (=> bs!1833039 (=> (not res!2798414) (not e!4134883))))

(assert (=> bs!1833039 (= res!2798414 (validRegex!8418 lt!2456936))))

(assert (=> bs!1833039 (= (dynLambda!26477 lambda!387688 lt!2456936) e!4134883)))

(declare-fun b!6858055 () Bool)

(assert (=> b!6858055 (= e!4134883 (matchR!8865 lt!2456936 s!2326))))

(assert (= (and bs!1833039 res!2798414) b!6858055))

(declare-fun m!7593830 () Bool)

(assert (=> bs!1833039 m!7593830))

(declare-fun m!7593832 () Bool)

(assert (=> b!6858055 m!7593832))

(assert (=> d!2155049 d!2155091))

(declare-fun b_lambda!259093 () Bool)

(assert (= b_lambda!259085 (or b!6857616 b_lambda!259093)))

(declare-fun bs!1833040 () Bool)

(declare-fun d!2155093 () Bool)

(assert (= bs!1833040 (and d!2155093 b!6857616)))

(assert (=> bs!1833040 (= (dynLambda!26478 lambda!387689 (h!72670 zl!343)) (= (generalisedConcat!2271 (exprs!6566 (h!72670 zl!343))) lt!2456843))))

(assert (=> bs!1833040 m!7593638))

(assert (=> b!6857858 d!2155093))

(push 1)

(assert (not b_lambda!259091))

(assert (not b!6857993))

(assert (not bm!624684))

(assert (not d!2155045))

(assert (not d!2155037))

(assert (not b!6857974))

(assert (not b_lambda!259089))

(assert (not b!6858019))

(assert (not d!2155019))

(assert (not b!6857821))

(assert (not b!6858014))

(assert (not b!6857989))

(assert (not d!2155055))

(assert (not d!2155083))

(assert (not b!6858044))

(assert (not b!6858018))

(assert (not b!6857794))

(assert (not b!6858055))

(assert (not b!6857990))

(assert (not b!6857822))

(assert (not bm!624695))

(assert (not b!6858006))

(assert (not b!6858002))

(assert (not bm!624691))

(assert (not b!6858005))

(assert (not d!2155017))

(assert (not b!6857991))

(assert (not b!6857841))

(assert (not b_lambda!259093))

(assert (not b!6857826))

(assert (not d!2155071))

(assert (not b!6857859))

(assert (not b!6857783))

(assert (not d!2155029))

(assert (not b!6858054))

(assert (not b!6857907))

(assert (not d!2155047))

(assert (not b!6857911))

(assert (not b!6857965))

(assert (not b!6857995))

(assert (not d!2155027))

(assert (not d!2155011))

(assert (not b!6857953))

(assert (not b!6857958))

(assert (not b!6858015))

(assert (not bm!624696))

(assert (not b!6857839))

(assert (not b_lambda!259087))

(assert (not d!2155085))

(assert (not setNonEmpty!47136))

(assert (not bs!1833039))

(assert (not b!6858003))

(assert (not b!6858027))

(assert (not b!6857855))

(assert (not b!6857833))

(assert (not d!2155041))

(assert (not b!6857962))

(assert (not d!2155053))

(assert (not bm!624681))

(assert (not b!6857972))

(assert (not b!6857952))

(assert (not bs!1833040))

(assert (not b!6857994))

(assert (not b!6857808))

(assert (not d!2155015))

(assert (not bs!1833037))

(assert (not b!6858016))

(assert tp_is_empty!42617)

(assert (not b!6858012))

(assert (not b!6857960))

(assert (not d!2155079))

(assert (not bm!624692))

(assert (not b!6857802))

(assert (not d!2155025))

(assert (not bm!624683))

(assert (not b!6857966))

(assert (not d!2155049))

(assert (not b!6857860))

(assert (not b!6857726))

(assert (not b!6857951))

(assert (not b!6857740))

(assert (not b!6857967))

(assert (not b!6858007))

(assert (not b!6858051))

(assert (not b!6858020))

(assert (not d!2155005))

(assert (not d!2155007))

(assert (not d!2155067))

(assert (not b!6857976))

(assert (not bs!1833038))

(assert (not bm!624686))

(assert (not b!6857741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

