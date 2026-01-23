; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!568444 () Bool)

(assert start!568444)

(declare-fun b!5413693 () Bool)

(assert (=> b!5413693 true))

(assert (=> b!5413693 true))

(declare-fun lambda!282895 () Int)

(declare-fun lambda!282894 () Int)

(assert (=> b!5413693 (not (= lambda!282895 lambda!282894))))

(assert (=> b!5413693 true))

(assert (=> b!5413693 true))

(declare-fun b!5413692 () Bool)

(assert (=> b!5413692 true))

(declare-fun b!5413671 () Bool)

(assert (=> b!5413671 true))

(declare-fun bs!1250469 () Bool)

(declare-fun b!5413685 () Bool)

(assert (= bs!1250469 (and b!5413685 b!5413693)))

(declare-datatypes ((C!30658 0))(
  ( (C!30659 (val!25031 Int)) )
))
(declare-datatypes ((Regex!15194 0))(
  ( (ElementMatch!15194 (c!943892 C!30658)) (Concat!24039 (regOne!30900 Regex!15194) (regTwo!30900 Regex!15194)) (EmptyExpr!15194) (Star!15194 (reg!15523 Regex!15194)) (EmptyLang!15194) (Union!15194 (regOne!30901 Regex!15194) (regTwo!30901 Regex!15194)) )
))
(declare-fun r!7292 () Regex!15194)

(declare-fun lt!2207723 () Regex!15194)

(declare-fun lambda!282899 () Int)

(assert (=> bs!1250469 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!282899 lambda!282894))))

(assert (=> bs!1250469 (not (= lambda!282899 lambda!282895))))

(assert (=> b!5413685 true))

(assert (=> b!5413685 true))

(assert (=> b!5413685 true))

(declare-fun lambda!282900 () Int)

(assert (=> bs!1250469 (not (= lambda!282900 lambda!282894))))

(assert (=> bs!1250469 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!282900 lambda!282895))))

(assert (=> b!5413685 (not (= lambda!282900 lambda!282899))))

(assert (=> b!5413685 true))

(assert (=> b!5413685 true))

(assert (=> b!5413685 true))

(declare-fun bs!1250470 () Bool)

(declare-fun b!5413689 () Bool)

(assert (= bs!1250470 (and b!5413689 b!5413693)))

(declare-datatypes ((List!61881 0))(
  ( (Nil!61757) (Cons!61757 (h!68205 C!30658) (t!375104 List!61881)) )
))
(declare-fun s!2326 () List!61881)

(declare-fun lambda!282901 () Int)

(declare-datatypes ((tuple2!64786 0))(
  ( (tuple2!64787 (_1!35696 List!61881) (_2!35696 List!61881)) )
))
(declare-fun lt!2207731 () tuple2!64786)

(declare-fun lt!2207765 () Regex!15194)

(assert (=> bs!1250470 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282901 lambda!282894))))

(assert (=> bs!1250470 (not (= lambda!282901 lambda!282895))))

(declare-fun bs!1250471 () Bool)

(assert (= bs!1250471 (and b!5413689 b!5413685)))

(assert (=> bs!1250471 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282901 lambda!282899))))

(assert (=> bs!1250471 (not (= lambda!282901 lambda!282900))))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(declare-fun lambda!282902 () Int)

(assert (=> bs!1250471 (not (= lambda!282902 lambda!282899))))

(assert (=> bs!1250471 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282902 lambda!282900))))

(assert (=> b!5413689 (not (= lambda!282902 lambda!282901))))

(assert (=> bs!1250470 (not (= lambda!282902 lambda!282894))))

(assert (=> bs!1250470 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282902 lambda!282895))))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(declare-fun lambda!282903 () Int)

(assert (=> b!5413689 (not (= lambda!282903 lambda!282902))))

(assert (=> bs!1250471 (not (= lambda!282903 lambda!282899))))

(assert (=> bs!1250471 (not (= lambda!282903 lambda!282900))))

(assert (=> b!5413689 (not (= lambda!282903 lambda!282901))))

(assert (=> bs!1250470 (not (= lambda!282903 lambda!282894))))

(assert (=> bs!1250470 (not (= lambda!282903 lambda!282895))))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(assert (=> b!5413689 true))

(declare-fun b!5413650 () Bool)

(declare-fun e!3355738 () Bool)

(declare-fun e!3355729 () Bool)

(assert (=> b!5413650 (= e!3355738 e!3355729)))

(declare-fun res!2302726 () Bool)

(assert (=> b!5413650 (=> res!2302726 e!3355729)))

(declare-datatypes ((List!61882 0))(
  ( (Nil!61758) (Cons!61758 (h!68206 Regex!15194) (t!375105 List!61882)) )
))
(declare-datatypes ((Context!9156 0))(
  ( (Context!9157 (exprs!5078 List!61882)) )
))
(declare-fun lt!2207745 () Context!9156)

(declare-fun lt!2207749 () Regex!15194)

(declare-datatypes ((List!61883 0))(
  ( (Nil!61759) (Cons!61759 (h!68207 Context!9156) (t!375106 List!61883)) )
))
(declare-fun unfocusZipper!936 (List!61883) Regex!15194)

(assert (=> b!5413650 (= res!2302726 (not (= (unfocusZipper!936 (Cons!61759 lt!2207745 Nil!61759)) lt!2207749)))))

(declare-fun lt!2207751 () Regex!15194)

(assert (=> b!5413650 (= lt!2207749 (Concat!24039 (reg!15523 (regOne!30900 r!7292)) lt!2207751))))

(declare-fun b!5413651 () Bool)

(declare-fun e!3355730 () Bool)

(declare-fun tp!1495991 () Bool)

(declare-fun tp!1495995 () Bool)

(assert (=> b!5413651 (= e!3355730 (and tp!1495991 tp!1495995))))

(declare-fun b!5413652 () Bool)

(declare-fun res!2302706 () Bool)

(declare-fun e!3355733 () Bool)

(assert (=> b!5413652 (=> res!2302706 e!3355733)))

(declare-fun zl!343 () List!61883)

(declare-fun isEmpty!33750 (List!61882) Bool)

(assert (=> b!5413652 (= res!2302706 (isEmpty!33750 (t!375105 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5413653 () Bool)

(declare-fun e!3355743 () Bool)

(declare-fun e!3355726 () Bool)

(assert (=> b!5413653 (= e!3355743 e!3355726)))

(declare-fun res!2302697 () Bool)

(assert (=> b!5413653 (=> res!2302697 e!3355726)))

(declare-fun lt!2207713 () (Set Context!9156))

(declare-fun lt!2207735 () Bool)

(declare-fun matchZipper!1438 ((Set Context!9156) List!61881) Bool)

(assert (=> b!5413653 (= res!2302697 (not (= lt!2207735 (matchZipper!1438 lt!2207713 (t!375104 s!2326)))))))

(declare-fun lt!2207741 () (Set Context!9156))

(assert (=> b!5413653 (= lt!2207735 (matchZipper!1438 lt!2207741 s!2326))))

(declare-fun b!5413654 () Bool)

(declare-fun res!2302700 () Bool)

(declare-fun e!3355725 () Bool)

(assert (=> b!5413654 (=> res!2302700 e!3355725)))

(declare-fun z!1189 () (Set Context!9156))

(assert (=> b!5413654 (= res!2302700 (not (matchZipper!1438 z!1189 s!2326)))))

(declare-fun b!5413655 () Bool)

(declare-fun res!2302716 () Bool)

(declare-fun e!3355721 () Bool)

(assert (=> b!5413655 (=> res!2302716 e!3355721)))

(declare-fun lt!2207766 () (Set Context!9156))

(declare-fun lt!2207774 () tuple2!64786)

(assert (=> b!5413655 (= res!2302716 (not (matchZipper!1438 lt!2207766 (_2!35696 lt!2207774))))))

(declare-fun b!5413656 () Bool)

(declare-fun e!3355745 () Bool)

(assert (=> b!5413656 (= e!3355745 e!3355743)))

(declare-fun res!2302692 () Bool)

(assert (=> b!5413656 (=> res!2302692 e!3355743)))

(declare-fun lt!2207762 () (Set Context!9156))

(assert (=> b!5413656 (= res!2302692 (not (= lt!2207713 lt!2207762)))))

(declare-fun lambda!282896 () Int)

(declare-fun flatMap!921 ((Set Context!9156) Int) (Set Context!9156))

(declare-fun derivationStepZipperUp!566 (Context!9156 C!30658) (Set Context!9156))

(assert (=> b!5413656 (= (flatMap!921 lt!2207741 lambda!282896) (derivationStepZipperUp!566 lt!2207745 (h!68205 s!2326)))))

(declare-datatypes ((Unit!154298 0))(
  ( (Unit!154299) )
))
(declare-fun lt!2207727 () Unit!154298)

(declare-fun lemmaFlatMapOnSingletonSet!453 ((Set Context!9156) Context!9156 Int) Unit!154298)

(assert (=> b!5413656 (= lt!2207727 (lemmaFlatMapOnSingletonSet!453 lt!2207741 lt!2207745 lambda!282896))))

(declare-fun lt!2207715 () (Set Context!9156))

(assert (=> b!5413656 (= lt!2207715 (derivationStepZipperUp!566 lt!2207745 (h!68205 s!2326)))))

(declare-fun derivationStepZipper!1433 ((Set Context!9156) C!30658) (Set Context!9156))

(assert (=> b!5413656 (= lt!2207713 (derivationStepZipper!1433 lt!2207741 (h!68205 s!2326)))))

(assert (=> b!5413656 (= lt!2207741 (set.insert lt!2207745 (as set.empty (Set Context!9156))))))

(declare-fun lt!2207737 () List!61882)

(assert (=> b!5413656 (= lt!2207745 (Context!9157 (Cons!61758 (reg!15523 (regOne!30900 r!7292)) lt!2207737)))))

(declare-fun b!5413657 () Bool)

(declare-fun e!3355727 () Bool)

(declare-fun ++!13561 (List!61881 List!61881) List!61881)

(assert (=> b!5413657 (= e!3355727 (= (++!13561 Nil!61757 (_1!35696 lt!2207731)) (_1!35696 lt!2207731)))))

(declare-fun b!5413658 () Bool)

(declare-fun res!2302717 () Bool)

(assert (=> b!5413658 (=> res!2302717 e!3355726)))

(declare-fun lt!2207732 () Regex!15194)

(assert (=> b!5413658 (= res!2302717 (not (= lt!2207732 r!7292)))))

(declare-fun b!5413659 () Bool)

(declare-fun e!3355720 () Bool)

(assert (=> b!5413659 (= e!3355725 e!3355720)))

(declare-fun res!2302714 () Bool)

(assert (=> b!5413659 (=> res!2302714 e!3355720)))

(declare-fun e!3355737 () Bool)

(assert (=> b!5413659 (= res!2302714 e!3355737)))

(declare-fun res!2302705 () Bool)

(assert (=> b!5413659 (=> (not res!2302705) (not e!3355737))))

(declare-fun lt!2207754 () Bool)

(assert (=> b!5413659 (= res!2302705 (not lt!2207754))))

(declare-fun lt!2207768 () (Set Context!9156))

(assert (=> b!5413659 (= lt!2207754 (matchZipper!1438 lt!2207768 (t!375104 s!2326)))))

(declare-fun b!5413660 () Bool)

(declare-fun res!2302698 () Bool)

(declare-fun e!3355724 () Bool)

(assert (=> b!5413660 (=> res!2302698 e!3355724)))

(assert (=> b!5413660 (= res!2302698 (or (is-EmptyExpr!15194 r!7292) (is-EmptyLang!15194 r!7292) (is-ElementMatch!15194 r!7292) (is-Union!15194 r!7292) (not (is-Concat!24039 r!7292))))))

(declare-fun b!5413661 () Bool)

(declare-fun e!3355746 () Unit!154298)

(declare-fun Unit!154300 () Unit!154298)

(assert (=> b!5413661 (= e!3355746 Unit!154300)))

(declare-fun b!5413662 () Bool)

(declare-fun e!3355740 () Bool)

(assert (=> b!5413662 (= e!3355729 e!3355740)))

(declare-fun res!2302699 () Bool)

(assert (=> b!5413662 (=> res!2302699 e!3355740)))

(declare-fun lt!2207734 () List!61883)

(assert (=> b!5413662 (= res!2302699 (not (= (unfocusZipper!936 lt!2207734) (reg!15523 (regOne!30900 r!7292)))))))

(declare-fun lt!2207772 () Context!9156)

(assert (=> b!5413662 (= lt!2207734 (Cons!61759 lt!2207772 Nil!61759))))

(declare-fun lt!2207720 () Context!9156)

(assert (=> b!5413662 (= (flatMap!921 lt!2207766 lambda!282896) (derivationStepZipperUp!566 lt!2207720 (h!68205 s!2326)))))

(declare-fun lt!2207757 () Unit!154298)

(assert (=> b!5413662 (= lt!2207757 (lemmaFlatMapOnSingletonSet!453 lt!2207766 lt!2207720 lambda!282896))))

(declare-fun lt!2207760 () (Set Context!9156))

(assert (=> b!5413662 (= (flatMap!921 lt!2207760 lambda!282896) (derivationStepZipperUp!566 lt!2207772 (h!68205 s!2326)))))

(declare-fun lt!2207747 () Unit!154298)

(assert (=> b!5413662 (= lt!2207747 (lemmaFlatMapOnSingletonSet!453 lt!2207760 lt!2207772 lambda!282896))))

(declare-fun lt!2207722 () (Set Context!9156))

(assert (=> b!5413662 (= lt!2207722 (derivationStepZipperUp!566 lt!2207720 (h!68205 s!2326)))))

(declare-fun lt!2207743 () (Set Context!9156))

(assert (=> b!5413662 (= lt!2207743 (derivationStepZipperUp!566 lt!2207772 (h!68205 s!2326)))))

(assert (=> b!5413662 (= lt!2207766 (set.insert lt!2207720 (as set.empty (Set Context!9156))))))

(assert (=> b!5413662 (= lt!2207760 (set.insert lt!2207772 (as set.empty (Set Context!9156))))))

(declare-fun lt!2207746 () List!61882)

(assert (=> b!5413662 (= lt!2207772 (Context!9157 lt!2207746))))

(assert (=> b!5413662 (= lt!2207746 (Cons!61758 (reg!15523 (regOne!30900 r!7292)) Nil!61758))))

(declare-fun b!5413663 () Bool)

(assert (=> b!5413663 (= e!3355726 e!3355738)))

(declare-fun res!2302723 () Bool)

(assert (=> b!5413663 (=> res!2302723 e!3355738)))

(assert (=> b!5413663 (= res!2302723 (not (= r!7292 lt!2207751)))))

(assert (=> b!5413663 (= lt!2207751 (Concat!24039 lt!2207765 (regTwo!30900 r!7292)))))

(declare-fun b!5413664 () Bool)

(declare-fun e!3355736 () Bool)

(declare-fun e!3355735 () Bool)

(assert (=> b!5413664 (= e!3355736 e!3355735)))

(declare-fun res!2302719 () Bool)

(assert (=> b!5413664 (=> (not res!2302719) (not e!3355735))))

(assert (=> b!5413664 (= res!2302719 (= r!7292 lt!2207732))))

(assert (=> b!5413664 (= lt!2207732 (unfocusZipper!936 zl!343))))

(declare-fun e!3355723 () Bool)

(declare-fun e!3355734 () Bool)

(declare-fun tp!1495990 () Bool)

(declare-fun b!5413665 () Bool)

(declare-fun inv!81233 (Context!9156) Bool)

(assert (=> b!5413665 (= e!3355723 (and (inv!81233 (h!68207 zl!343)) e!3355734 tp!1495990))))

(declare-fun b!5413666 () Bool)

(declare-fun res!2302715 () Bool)

(assert (=> b!5413666 (=> res!2302715 e!3355724)))

(assert (=> b!5413666 (= res!2302715 (not (is-Cons!61758 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5413667 () Bool)

(declare-fun Unit!154301 () Unit!154298)

(assert (=> b!5413667 (= e!3355746 Unit!154301)))

(declare-fun lt!2207771 () Unit!154298)

(declare-fun lt!2207736 () (Set Context!9156))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!431 ((Set Context!9156) (Set Context!9156) List!61881) Unit!154298)

(assert (=> b!5413667 (= lt!2207771 (lemmaZipperConcatMatchesSameAsBothZippers!431 lt!2207768 lt!2207736 (t!375104 s!2326)))))

(declare-fun res!2302720 () Bool)

(assert (=> b!5413667 (= res!2302720 (matchZipper!1438 lt!2207768 (t!375104 s!2326)))))

(declare-fun e!3355744 () Bool)

(assert (=> b!5413667 (=> res!2302720 e!3355744)))

(assert (=> b!5413667 (= (matchZipper!1438 (set.union lt!2207768 lt!2207736) (t!375104 s!2326)) e!3355744)))

(declare-fun b!5413668 () Bool)

(declare-fun e!3355728 () Bool)

(declare-fun tp!1495994 () Bool)

(assert (=> b!5413668 (= e!3355728 tp!1495994)))

(declare-fun setIsEmpty!35270 () Bool)

(declare-fun setRes!35270 () Bool)

(assert (=> setIsEmpty!35270 setRes!35270))

(declare-fun b!5413669 () Bool)

(declare-fun e!3355722 () Bool)

(assert (=> b!5413669 (= e!3355722 e!3355745)))

(declare-fun res!2302724 () Bool)

(assert (=> b!5413669 (=> res!2302724 e!3355745)))

(assert (=> b!5413669 (= res!2302724 (not (= lt!2207768 lt!2207762)))))

(declare-fun derivationStepZipperDown!642 (Regex!15194 Context!9156 C!30658) (Set Context!9156))

(assert (=> b!5413669 (= lt!2207762 (derivationStepZipperDown!642 (reg!15523 (regOne!30900 r!7292)) lt!2207720 (h!68205 s!2326)))))

(assert (=> b!5413669 (= lt!2207720 (Context!9157 lt!2207737))))

(assert (=> b!5413669 (= lt!2207737 (Cons!61758 lt!2207765 (t!375105 (exprs!5078 (h!68207 zl!343)))))))

(assert (=> b!5413669 (= lt!2207765 (Star!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5413670 () Bool)

(declare-fun e!3355739 () Bool)

(assert (=> b!5413670 (= e!3355739 e!3355725)))

(declare-fun res!2302704 () Bool)

(assert (=> b!5413670 (=> res!2302704 e!3355725)))

(declare-fun lt!2207756 () Bool)

(assert (=> b!5413670 (= res!2302704 lt!2207756)))

(declare-fun lt!2207718 () Bool)

(declare-fun matchRSpec!2297 (Regex!15194 List!61881) Bool)

(assert (=> b!5413670 (= lt!2207718 (matchRSpec!2297 lt!2207749 s!2326))))

(declare-fun matchR!7379 (Regex!15194 List!61881) Bool)

(assert (=> b!5413670 (= lt!2207718 (matchR!7379 lt!2207749 s!2326))))

(declare-fun lt!2207758 () Unit!154298)

(declare-fun mainMatchTheorem!2297 (Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413670 (= lt!2207758 (mainMatchTheorem!2297 lt!2207749 s!2326))))

(declare-fun e!3355741 () Bool)

(assert (=> b!5413671 (= e!3355720 e!3355741)))

(declare-fun res!2302707 () Bool)

(assert (=> b!5413671 (=> res!2302707 e!3355741)))

(declare-fun appendTo!53 ((Set Context!9156) Context!9156) (Set Context!9156))

(assert (=> b!5413671 (= res!2302707 (not (= (appendTo!53 lt!2207760 lt!2207720) lt!2207741)))))

(declare-fun lambda!282897 () Int)

(declare-fun map!14176 ((Set Context!9156) Int) (Set Context!9156))

(declare-fun ++!13562 (List!61882 List!61882) List!61882)

(assert (=> b!5413671 (= (map!14176 lt!2207760 lambda!282897) (set.insert (Context!9157 (++!13562 lt!2207746 lt!2207737)) (as set.empty (Set Context!9156))))))

(declare-fun lambda!282898 () Int)

(declare-fun lt!2207761 () Unit!154298)

(declare-fun lemmaConcatPreservesForall!219 (List!61882 List!61882 Int) Unit!154298)

(assert (=> b!5413671 (= lt!2207761 (lemmaConcatPreservesForall!219 lt!2207746 lt!2207737 lambda!282898))))

(declare-fun lt!2207770 () Unit!154298)

(declare-fun lemmaMapOnSingletonSet!53 ((Set Context!9156) Context!9156 Int) Unit!154298)

(assert (=> b!5413671 (= lt!2207770 (lemmaMapOnSingletonSet!53 lt!2207760 lt!2207772 lambda!282897))))

(declare-fun b!5413672 () Bool)

(assert (=> b!5413672 (= e!3355741 e!3355721)))

(declare-fun res!2302722 () Bool)

(assert (=> b!5413672 (=> res!2302722 e!3355721)))

(declare-fun lt!2207744 () List!61881)

(assert (=> b!5413672 (= res!2302722 (not (= s!2326 lt!2207744)))))

(assert (=> b!5413672 (= lt!2207744 (++!13561 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(declare-datatypes ((Option!15305 0))(
  ( (None!15304) (Some!15304 (v!51333 tuple2!64786)) )
))
(declare-fun lt!2207728 () Option!15305)

(declare-fun get!21294 (Option!15305) tuple2!64786)

(assert (=> b!5413672 (= lt!2207774 (get!21294 lt!2207728))))

(declare-fun isDefined!12008 (Option!15305) Bool)

(assert (=> b!5413672 (isDefined!12008 lt!2207728)))

(declare-fun findConcatSeparationZippers!51 ((Set Context!9156) (Set Context!9156) List!61881 List!61881 List!61881) Option!15305)

(assert (=> b!5413672 (= lt!2207728 (findConcatSeparationZippers!51 lt!2207760 lt!2207766 Nil!61757 s!2326 s!2326))))

(declare-fun lt!2207752 () Unit!154298)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!51 ((Set Context!9156) Context!9156 List!61881) Unit!154298)

(assert (=> b!5413672 (= lt!2207752 (lemmaConcatZipperMatchesStringThenFindConcatDefined!51 lt!2207760 lt!2207720 s!2326))))

(declare-fun b!5413673 () Bool)

(declare-fun res!2302713 () Bool)

(assert (=> b!5413673 (=> res!2302713 e!3355720)))

(assert (=> b!5413673 (= res!2302713 (or (not lt!2207754) (not lt!2207735)))))

(declare-fun b!5413674 () Bool)

(assert (=> b!5413674 (= e!3355740 e!3355739)))

(declare-fun res!2302703 () Bool)

(assert (=> b!5413674 (=> res!2302703 e!3355739)))

(declare-fun lt!2207773 () List!61883)

(assert (=> b!5413674 (= res!2302703 (not (= (unfocusZipper!936 lt!2207773) lt!2207751)))))

(assert (=> b!5413674 (= lt!2207773 (Cons!61759 lt!2207720 Nil!61759))))

(declare-fun b!5413675 () Bool)

(assert (=> b!5413675 (= e!3355744 (matchZipper!1438 lt!2207736 (t!375104 s!2326)))))

(declare-fun b!5413676 () Bool)

(declare-fun e!3355742 () Bool)

(assert (=> b!5413676 (= e!3355742 lt!2207718)))

(declare-fun b!5413677 () Bool)

(assert (=> b!5413677 (= e!3355737 (not (matchZipper!1438 lt!2207736 (t!375104 s!2326))))))

(declare-fun b!5413678 () Bool)

(declare-fun res!2302695 () Bool)

(assert (=> b!5413678 (=> (not res!2302695) (not e!3355736))))

(declare-fun toList!8978 ((Set Context!9156)) List!61883)

(assert (=> b!5413678 (= res!2302695 (= (toList!8978 z!1189) zl!343))))

(declare-fun b!5413679 () Bool)

(declare-fun tp!1495992 () Bool)

(assert (=> b!5413679 (= e!3355730 tp!1495992)))

(declare-fun b!5413680 () Bool)

(declare-fun tp!1495988 () Bool)

(assert (=> b!5413680 (= e!3355734 tp!1495988)))

(declare-fun b!5413681 () Bool)

(declare-fun e!3355732 () Bool)

(declare-fun tp_is_empty!39641 () Bool)

(declare-fun tp!1495986 () Bool)

(assert (=> b!5413681 (= e!3355732 (and tp_is_empty!39641 tp!1495986))))

(declare-fun res!2302702 () Bool)

(assert (=> start!568444 (=> (not res!2302702) (not e!3355736))))

(declare-fun validRegex!6930 (Regex!15194) Bool)

(assert (=> start!568444 (= res!2302702 (validRegex!6930 r!7292))))

(assert (=> start!568444 e!3355736))

(assert (=> start!568444 e!3355730))

(declare-fun condSetEmpty!35270 () Bool)

(assert (=> start!568444 (= condSetEmpty!35270 (= z!1189 (as set.empty (Set Context!9156))))))

(assert (=> start!568444 setRes!35270))

(assert (=> start!568444 e!3355723))

(assert (=> start!568444 e!3355732))

(declare-fun b!5413682 () Bool)

(declare-fun e!3355719 () Bool)

(declare-fun nullable!5363 (Regex!15194) Bool)

(assert (=> b!5413682 (= e!3355719 (nullable!5363 (regOne!30900 (regOne!30900 r!7292))))))

(declare-fun b!5413683 () Bool)

(assert (=> b!5413683 (= e!3355735 (not e!3355724))))

(declare-fun res!2302727 () Bool)

(assert (=> b!5413683 (=> res!2302727 e!3355724)))

(assert (=> b!5413683 (= res!2302727 (not (is-Cons!61759 zl!343)))))

(assert (=> b!5413683 (= lt!2207756 (matchRSpec!2297 r!7292 s!2326))))

(assert (=> b!5413683 (= lt!2207756 (matchR!7379 r!7292 s!2326))))

(declare-fun lt!2207725 () Unit!154298)

(assert (=> b!5413683 (= lt!2207725 (mainMatchTheorem!2297 r!7292 s!2326))))

(declare-fun tp!1495989 () Bool)

(declare-fun setNonEmpty!35270 () Bool)

(declare-fun setElem!35270 () Context!9156)

(assert (=> setNonEmpty!35270 (= setRes!35270 (and tp!1495989 (inv!81233 setElem!35270) e!3355728))))

(declare-fun setRest!35270 () (Set Context!9156))

(assert (=> setNonEmpty!35270 (= z!1189 (set.union (set.insert setElem!35270 (as set.empty (Set Context!9156))) setRest!35270))))

(declare-fun b!5413684 () Bool)

(declare-fun res!2302708 () Bool)

(assert (=> b!5413684 (=> res!2302708 e!3355725)))

(declare-fun lt!2207753 () Bool)

(assert (=> b!5413684 (= res!2302708 (not lt!2207753))))

(declare-fun e!3355731 () Bool)

(assert (=> b!5413685 (= e!3355721 e!3355731)))

(declare-fun res!2302711 () Bool)

(assert (=> b!5413685 (=> res!2302711 e!3355731)))

(assert (=> b!5413685 (= res!2302711 (not (matchR!7379 lt!2207723 (_1!35696 lt!2207731))))))

(declare-fun lt!2207721 () Option!15305)

(assert (=> b!5413685 (= lt!2207731 (get!21294 lt!2207721))))

(declare-fun Exists!2375 (Int) Bool)

(assert (=> b!5413685 (= (Exists!2375 lambda!282899) (Exists!2375 lambda!282900))))

(declare-fun lt!2207738 () Unit!154298)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1029 (Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207738 (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 lt!2207723 (regTwo!30900 r!7292) s!2326))))

(assert (=> b!5413685 (= (isDefined!12008 lt!2207721) (Exists!2375 lambda!282899))))

(declare-fun findConcatSeparation!1719 (Regex!15194 Regex!15194 List!61881 List!61881 List!61881) Option!15305)

(assert (=> b!5413685 (= lt!2207721 (findConcatSeparation!1719 lt!2207723 (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326))))

(declare-fun lt!2207726 () Unit!154298)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1483 (Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207726 (lemmaFindConcatSeparationEquivalentToExists!1483 lt!2207723 (regTwo!30900 r!7292) s!2326))))

(declare-fun lt!2207767 () Regex!15194)

(assert (=> b!5413685 (matchRSpec!2297 lt!2207767 s!2326)))

(declare-fun lt!2207730 () Unit!154298)

(assert (=> b!5413685 (= lt!2207730 (mainMatchTheorem!2297 lt!2207767 s!2326))))

(assert (=> b!5413685 (matchR!7379 lt!2207767 s!2326)))

(assert (=> b!5413685 (= lt!2207767 (Concat!24039 lt!2207723 (regTwo!30900 r!7292)))))

(assert (=> b!5413685 (= lt!2207723 (Concat!24039 (reg!15523 (regOne!30900 r!7292)) lt!2207765))))

(declare-fun lt!2207714 () Unit!154298)

(declare-fun lemmaConcatAssociative!47 (Regex!15194 Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207714 (lemmaConcatAssociative!47 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (regTwo!30900 r!7292) s!2326))))

(assert (=> b!5413685 e!3355742))

(declare-fun res!2302693 () Bool)

(assert (=> b!5413685 (=> (not res!2302693) (not e!3355742))))

(assert (=> b!5413685 (= res!2302693 (matchR!7379 lt!2207749 lt!2207744))))

(declare-fun lt!2207748 () Unit!154298)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!217 (Regex!15194 Regex!15194 List!61881 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207748 (lemmaTwoRegexMatchThenConcatMatchesConcatString!217 (reg!15523 (regOne!30900 r!7292)) lt!2207751 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(assert (=> b!5413685 (matchR!7379 lt!2207751 (_2!35696 lt!2207774))))

(declare-fun lt!2207717 () Unit!154298)

(declare-fun theoremZipperRegexEquiv!508 ((Set Context!9156) List!61883 Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207717 (theoremZipperRegexEquiv!508 lt!2207766 lt!2207773 lt!2207751 (_2!35696 lt!2207774)))))

(assert (=> b!5413685 (matchR!7379 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774))))

(declare-fun lt!2207764 () Unit!154298)

(assert (=> b!5413685 (= lt!2207764 (theoremZipperRegexEquiv!508 lt!2207760 lt!2207734 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774)))))

(assert (=> b!5413685 (matchZipper!1438 (set.insert (Context!9157 (++!13562 lt!2207746 lt!2207737)) (as set.empty (Set Context!9156))) lt!2207744)))

(declare-fun lt!2207740 () Unit!154298)

(assert (=> b!5413685 (= lt!2207740 (lemmaConcatPreservesForall!219 lt!2207746 lt!2207737 lambda!282898))))

(declare-fun lt!2207763 () Unit!154298)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!67 (Context!9156 Context!9156 List!61881 List!61881) Unit!154298)

(assert (=> b!5413685 (= lt!2207763 (lemmaConcatenateContextMatchesConcatOfStrings!67 lt!2207772 lt!2207720 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(declare-fun b!5413686 () Bool)

(declare-fun tp!1495987 () Bool)

(declare-fun tp!1495993 () Bool)

(assert (=> b!5413686 (= e!3355730 (and tp!1495987 tp!1495993))))

(declare-fun b!5413687 () Bool)

(declare-fun res!2302690 () Bool)

(assert (=> b!5413687 (=> res!2302690 e!3355724)))

(declare-fun generalisedUnion!1123 (List!61882) Regex!15194)

(declare-fun unfocusZipperList!636 (List!61883) List!61882)

(assert (=> b!5413687 (= res!2302690 (not (= r!7292 (generalisedUnion!1123 (unfocusZipperList!636 zl!343)))))))

(declare-fun b!5413688 () Bool)

(declare-fun res!2302709 () Bool)

(assert (=> b!5413688 (=> res!2302709 e!3355722)))

(assert (=> b!5413688 (= res!2302709 e!3355719)))

(declare-fun res!2302691 () Bool)

(assert (=> b!5413688 (=> (not res!2302691) (not e!3355719))))

(assert (=> b!5413688 (= res!2302691 (is-Concat!24039 (regOne!30900 r!7292)))))

(assert (=> b!5413689 (= e!3355731 e!3355727)))

(declare-fun res!2302712 () Bool)

(assert (=> b!5413689 (=> res!2302712 e!3355727)))

(assert (=> b!5413689 (= res!2302712 (not (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))))

(assert (=> b!5413689 (= (Exists!2375 lambda!282901) (Exists!2375 lambda!282903))))

(declare-fun lt!2207755 () Unit!154298)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!405 (Regex!15194 List!61881) Unit!154298)

(assert (=> b!5413689 (= lt!2207755 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!405 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207731)))))

(assert (=> b!5413689 (= (Exists!2375 lambda!282901) (Exists!2375 lambda!282902))))

(declare-fun lt!2207769 () Unit!154298)

(assert (=> b!5413689 (= lt!2207769 (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)))))

(assert (=> b!5413689 (= (isDefined!12008 (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 Nil!61757 (_1!35696 lt!2207731) (_1!35696 lt!2207731))) (Exists!2375 lambda!282901))))

(declare-fun lt!2207739 () Unit!154298)

(assert (=> b!5413689 (= lt!2207739 (lemmaFindConcatSeparationEquivalentToExists!1483 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)))))

(assert (=> b!5413689 (matchRSpec!2297 lt!2207723 (_1!35696 lt!2207731))))

(declare-fun lt!2207716 () Unit!154298)

(assert (=> b!5413689 (= lt!2207716 (mainMatchTheorem!2297 lt!2207723 (_1!35696 lt!2207731)))))

(declare-fun b!5413690 () Bool)

(declare-fun res!2302694 () Bool)

(assert (=> b!5413690 (=> res!2302694 e!3355721)))

(assert (=> b!5413690 (= res!2302694 (not (matchZipper!1438 lt!2207760 (_1!35696 lt!2207774))))))

(declare-fun b!5413691 () Bool)

(declare-fun res!2302718 () Bool)

(assert (=> b!5413691 (=> res!2302718 e!3355722)))

(assert (=> b!5413691 (= res!2302718 (or (is-Concat!24039 (regOne!30900 r!7292)) (not (is-Star!15194 (regOne!30900 r!7292)))))))

(assert (=> b!5413692 (= e!3355733 e!3355722)))

(declare-fun res!2302710 () Bool)

(assert (=> b!5413692 (=> res!2302710 e!3355722)))

(assert (=> b!5413692 (= res!2302710 (or (and (is-ElementMatch!15194 (regOne!30900 r!7292)) (= (c!943892 (regOne!30900 r!7292)) (h!68205 s!2326))) (is-Union!15194 (regOne!30900 r!7292))))))

(declare-fun lt!2207733 () Unit!154298)

(assert (=> b!5413692 (= lt!2207733 e!3355746)))

(declare-fun c!943891 () Bool)

(assert (=> b!5413692 (= c!943891 lt!2207753)))

(assert (=> b!5413692 (= lt!2207753 (nullable!5363 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(assert (=> b!5413692 (= (flatMap!921 z!1189 lambda!282896) (derivationStepZipperUp!566 (h!68207 zl!343) (h!68205 s!2326)))))

(declare-fun lt!2207750 () Unit!154298)

(assert (=> b!5413692 (= lt!2207750 (lemmaFlatMapOnSingletonSet!453 z!1189 (h!68207 zl!343) lambda!282896))))

(declare-fun lt!2207724 () Context!9156)

(assert (=> b!5413692 (= lt!2207736 (derivationStepZipperUp!566 lt!2207724 (h!68205 s!2326)))))

(assert (=> b!5413692 (= lt!2207768 (derivationStepZipperDown!642 (h!68206 (exprs!5078 (h!68207 zl!343))) lt!2207724 (h!68205 s!2326)))))

(assert (=> b!5413692 (= lt!2207724 (Context!9157 (t!375105 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun lt!2207719 () (Set Context!9156))

(assert (=> b!5413692 (= lt!2207719 (derivationStepZipperUp!566 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343))))) (h!68205 s!2326)))))

(assert (=> b!5413693 (= e!3355724 e!3355733)))

(declare-fun res!2302725 () Bool)

(assert (=> b!5413693 (=> res!2302725 e!3355733)))

(declare-fun lt!2207742 () Bool)

(assert (=> b!5413693 (= res!2302725 (or (not (= lt!2207756 lt!2207742)) (is-Nil!61757 s!2326)))))

(assert (=> b!5413693 (= (Exists!2375 lambda!282894) (Exists!2375 lambda!282895))))

(declare-fun lt!2207729 () Unit!154298)

(assert (=> b!5413693 (= lt!2207729 (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326))))

(assert (=> b!5413693 (= lt!2207742 (Exists!2375 lambda!282894))))

(assert (=> b!5413693 (= lt!2207742 (isDefined!12008 (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326)))))

(declare-fun lt!2207759 () Unit!154298)

(assert (=> b!5413693 (= lt!2207759 (lemmaFindConcatSeparationEquivalentToExists!1483 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326))))

(declare-fun b!5413694 () Bool)

(declare-fun res!2302696 () Bool)

(assert (=> b!5413694 (=> res!2302696 e!3355724)))

(declare-fun generalisedConcat!863 (List!61882) Regex!15194)

(assert (=> b!5413694 (= res!2302696 (not (= r!7292 (generalisedConcat!863 (exprs!5078 (h!68207 zl!343))))))))

(declare-fun b!5413695 () Bool)

(declare-fun res!2302721 () Bool)

(assert (=> b!5413695 (=> res!2302721 e!3355724)))

(declare-fun isEmpty!33751 (List!61883) Bool)

(assert (=> b!5413695 (= res!2302721 (not (isEmpty!33751 (t!375106 zl!343))))))

(declare-fun b!5413696 () Bool)

(assert (=> b!5413696 (= e!3355730 tp_is_empty!39641)))

(declare-fun b!5413697 () Bool)

(declare-fun res!2302701 () Bool)

(assert (=> b!5413697 (=> res!2302701 e!3355727)))

(assert (=> b!5413697 (= res!2302701 (not (validRegex!6930 lt!2207765)))))

(assert (= (and start!568444 res!2302702) b!5413678))

(assert (= (and b!5413678 res!2302695) b!5413664))

(assert (= (and b!5413664 res!2302719) b!5413683))

(assert (= (and b!5413683 (not res!2302727)) b!5413695))

(assert (= (and b!5413695 (not res!2302721)) b!5413694))

(assert (= (and b!5413694 (not res!2302696)) b!5413666))

(assert (= (and b!5413666 (not res!2302715)) b!5413687))

(assert (= (and b!5413687 (not res!2302690)) b!5413660))

(assert (= (and b!5413660 (not res!2302698)) b!5413693))

(assert (= (and b!5413693 (not res!2302725)) b!5413652))

(assert (= (and b!5413652 (not res!2302706)) b!5413692))

(assert (= (and b!5413692 c!943891) b!5413667))

(assert (= (and b!5413692 (not c!943891)) b!5413661))

(assert (= (and b!5413667 (not res!2302720)) b!5413675))

(assert (= (and b!5413692 (not res!2302710)) b!5413688))

(assert (= (and b!5413688 res!2302691) b!5413682))

(assert (= (and b!5413688 (not res!2302709)) b!5413691))

(assert (= (and b!5413691 (not res!2302718)) b!5413669))

(assert (= (and b!5413669 (not res!2302724)) b!5413656))

(assert (= (and b!5413656 (not res!2302692)) b!5413653))

(assert (= (and b!5413653 (not res!2302697)) b!5413658))

(assert (= (and b!5413658 (not res!2302717)) b!5413663))

(assert (= (and b!5413663 (not res!2302723)) b!5413650))

(assert (= (and b!5413650 (not res!2302726)) b!5413662))

(assert (= (and b!5413662 (not res!2302699)) b!5413674))

(assert (= (and b!5413674 (not res!2302703)) b!5413670))

(assert (= (and b!5413670 (not res!2302704)) b!5413654))

(assert (= (and b!5413654 (not res!2302700)) b!5413684))

(assert (= (and b!5413684 (not res!2302708)) b!5413659))

(assert (= (and b!5413659 res!2302705) b!5413677))

(assert (= (and b!5413659 (not res!2302714)) b!5413673))

(assert (= (and b!5413673 (not res!2302713)) b!5413671))

(assert (= (and b!5413671 (not res!2302707)) b!5413672))

(assert (= (and b!5413672 (not res!2302722)) b!5413690))

(assert (= (and b!5413690 (not res!2302694)) b!5413655))

(assert (= (and b!5413655 (not res!2302716)) b!5413685))

(assert (= (and b!5413685 res!2302693) b!5413676))

(assert (= (and b!5413685 (not res!2302711)) b!5413689))

(assert (= (and b!5413689 (not res!2302712)) b!5413697))

(assert (= (and b!5413697 (not res!2302701)) b!5413657))

(assert (= (and start!568444 (is-ElementMatch!15194 r!7292)) b!5413696))

(assert (= (and start!568444 (is-Concat!24039 r!7292)) b!5413686))

(assert (= (and start!568444 (is-Star!15194 r!7292)) b!5413679))

(assert (= (and start!568444 (is-Union!15194 r!7292)) b!5413651))

(assert (= (and start!568444 condSetEmpty!35270) setIsEmpty!35270))

(assert (= (and start!568444 (not condSetEmpty!35270)) setNonEmpty!35270))

(assert (= setNonEmpty!35270 b!5413668))

(assert (= b!5413665 b!5413680))

(assert (= (and start!568444 (is-Cons!61759 zl!343)) b!5413665))

(assert (= (and start!568444 (is-Cons!61757 s!2326)) b!5413681))

(declare-fun m!6437576 () Bool)

(assert (=> b!5413664 m!6437576))

(declare-fun m!6437578 () Bool)

(assert (=> b!5413682 m!6437578))

(declare-fun m!6437580 () Bool)

(assert (=> b!5413692 m!6437580))

(declare-fun m!6437582 () Bool)

(assert (=> b!5413692 m!6437582))

(declare-fun m!6437584 () Bool)

(assert (=> b!5413692 m!6437584))

(declare-fun m!6437586 () Bool)

(assert (=> b!5413692 m!6437586))

(declare-fun m!6437588 () Bool)

(assert (=> b!5413692 m!6437588))

(declare-fun m!6437590 () Bool)

(assert (=> b!5413692 m!6437590))

(declare-fun m!6437592 () Bool)

(assert (=> b!5413692 m!6437592))

(declare-fun m!6437594 () Bool)

(assert (=> b!5413678 m!6437594))

(declare-fun m!6437596 () Bool)

(assert (=> b!5413671 m!6437596))

(declare-fun m!6437598 () Bool)

(assert (=> b!5413671 m!6437598))

(declare-fun m!6437600 () Bool)

(assert (=> b!5413671 m!6437600))

(declare-fun m!6437602 () Bool)

(assert (=> b!5413671 m!6437602))

(declare-fun m!6437604 () Bool)

(assert (=> b!5413671 m!6437604))

(declare-fun m!6437606 () Bool)

(assert (=> b!5413671 m!6437606))

(declare-fun m!6437608 () Bool)

(assert (=> b!5413687 m!6437608))

(assert (=> b!5413687 m!6437608))

(declare-fun m!6437610 () Bool)

(assert (=> b!5413687 m!6437610))

(declare-fun m!6437612 () Bool)

(assert (=> b!5413695 m!6437612))

(declare-fun m!6437614 () Bool)

(assert (=> b!5413677 m!6437614))

(declare-fun m!6437616 () Bool)

(assert (=> b!5413672 m!6437616))

(declare-fun m!6437618 () Bool)

(assert (=> b!5413672 m!6437618))

(declare-fun m!6437620 () Bool)

(assert (=> b!5413672 m!6437620))

(declare-fun m!6437622 () Bool)

(assert (=> b!5413672 m!6437622))

(declare-fun m!6437624 () Bool)

(assert (=> b!5413672 m!6437624))

(declare-fun m!6437626 () Bool)

(assert (=> b!5413670 m!6437626))

(declare-fun m!6437628 () Bool)

(assert (=> b!5413670 m!6437628))

(declare-fun m!6437630 () Bool)

(assert (=> b!5413670 m!6437630))

(declare-fun m!6437632 () Bool)

(assert (=> b!5413685 m!6437632))

(declare-fun m!6437634 () Bool)

(assert (=> b!5413685 m!6437634))

(declare-fun m!6437636 () Bool)

(assert (=> b!5413685 m!6437636))

(declare-fun m!6437638 () Bool)

(assert (=> b!5413685 m!6437638))

(assert (=> b!5413685 m!6437602))

(declare-fun m!6437640 () Bool)

(assert (=> b!5413685 m!6437640))

(declare-fun m!6437642 () Bool)

(assert (=> b!5413685 m!6437642))

(declare-fun m!6437644 () Bool)

(assert (=> b!5413685 m!6437644))

(declare-fun m!6437646 () Bool)

(assert (=> b!5413685 m!6437646))

(assert (=> b!5413685 m!6437596))

(declare-fun m!6437648 () Bool)

(assert (=> b!5413685 m!6437648))

(declare-fun m!6437650 () Bool)

(assert (=> b!5413685 m!6437650))

(declare-fun m!6437652 () Bool)

(assert (=> b!5413685 m!6437652))

(declare-fun m!6437654 () Bool)

(assert (=> b!5413685 m!6437654))

(assert (=> b!5413685 m!6437596))

(assert (=> b!5413685 m!6437598))

(declare-fun m!6437656 () Bool)

(assert (=> b!5413685 m!6437656))

(assert (=> b!5413685 m!6437634))

(declare-fun m!6437658 () Bool)

(assert (=> b!5413685 m!6437658))

(declare-fun m!6437660 () Bool)

(assert (=> b!5413685 m!6437660))

(declare-fun m!6437662 () Bool)

(assert (=> b!5413685 m!6437662))

(declare-fun m!6437664 () Bool)

(assert (=> b!5413685 m!6437664))

(declare-fun m!6437666 () Bool)

(assert (=> b!5413685 m!6437666))

(declare-fun m!6437668 () Bool)

(assert (=> b!5413685 m!6437668))

(declare-fun m!6437670 () Bool)

(assert (=> b!5413685 m!6437670))

(declare-fun m!6437672 () Bool)

(assert (=> b!5413653 m!6437672))

(declare-fun m!6437674 () Bool)

(assert (=> b!5413653 m!6437674))

(declare-fun m!6437676 () Bool)

(assert (=> b!5413652 m!6437676))

(declare-fun m!6437678 () Bool)

(assert (=> b!5413650 m!6437678))

(declare-fun m!6437680 () Bool)

(assert (=> b!5413665 m!6437680))

(assert (=> b!5413675 m!6437614))

(declare-fun m!6437682 () Bool)

(assert (=> start!568444 m!6437682))

(declare-fun m!6437684 () Bool)

(assert (=> b!5413690 m!6437684))

(declare-fun m!6437686 () Bool)

(assert (=> b!5413659 m!6437686))

(declare-fun m!6437688 () Bool)

(assert (=> b!5413662 m!6437688))

(declare-fun m!6437690 () Bool)

(assert (=> b!5413662 m!6437690))

(declare-fun m!6437692 () Bool)

(assert (=> b!5413662 m!6437692))

(declare-fun m!6437694 () Bool)

(assert (=> b!5413662 m!6437694))

(declare-fun m!6437696 () Bool)

(assert (=> b!5413662 m!6437696))

(declare-fun m!6437698 () Bool)

(assert (=> b!5413662 m!6437698))

(declare-fun m!6437700 () Bool)

(assert (=> b!5413662 m!6437700))

(declare-fun m!6437702 () Bool)

(assert (=> b!5413662 m!6437702))

(declare-fun m!6437704 () Bool)

(assert (=> b!5413662 m!6437704))

(declare-fun m!6437706 () Bool)

(assert (=> b!5413689 m!6437706))

(declare-fun m!6437708 () Bool)

(assert (=> b!5413689 m!6437708))

(declare-fun m!6437710 () Bool)

(assert (=> b!5413689 m!6437710))

(declare-fun m!6437712 () Bool)

(assert (=> b!5413689 m!6437712))

(assert (=> b!5413689 m!6437710))

(declare-fun m!6437714 () Bool)

(assert (=> b!5413689 m!6437714))

(declare-fun m!6437716 () Bool)

(assert (=> b!5413689 m!6437716))

(declare-fun m!6437718 () Bool)

(assert (=> b!5413689 m!6437718))

(assert (=> b!5413689 m!6437710))

(assert (=> b!5413689 m!6437706))

(declare-fun m!6437720 () Bool)

(assert (=> b!5413689 m!6437720))

(declare-fun m!6437722 () Bool)

(assert (=> b!5413689 m!6437722))

(declare-fun m!6437724 () Bool)

(assert (=> b!5413689 m!6437724))

(declare-fun m!6437726 () Bool)

(assert (=> b!5413689 m!6437726))

(declare-fun m!6437728 () Bool)

(assert (=> b!5413657 m!6437728))

(declare-fun m!6437730 () Bool)

(assert (=> b!5413674 m!6437730))

(declare-fun m!6437732 () Bool)

(assert (=> b!5413655 m!6437732))

(declare-fun m!6437734 () Bool)

(assert (=> b!5413694 m!6437734))

(declare-fun m!6437736 () Bool)

(assert (=> b!5413656 m!6437736))

(declare-fun m!6437738 () Bool)

(assert (=> b!5413656 m!6437738))

(declare-fun m!6437740 () Bool)

(assert (=> b!5413656 m!6437740))

(declare-fun m!6437742 () Bool)

(assert (=> b!5413656 m!6437742))

(declare-fun m!6437744 () Bool)

(assert (=> b!5413656 m!6437744))

(declare-fun m!6437746 () Bool)

(assert (=> b!5413654 m!6437746))

(declare-fun m!6437748 () Bool)

(assert (=> b!5413697 m!6437748))

(declare-fun m!6437750 () Bool)

(assert (=> b!5413693 m!6437750))

(assert (=> b!5413693 m!6437750))

(declare-fun m!6437752 () Bool)

(assert (=> b!5413693 m!6437752))

(declare-fun m!6437754 () Bool)

(assert (=> b!5413693 m!6437754))

(declare-fun m!6437756 () Bool)

(assert (=> b!5413693 m!6437756))

(declare-fun m!6437758 () Bool)

(assert (=> b!5413693 m!6437758))

(assert (=> b!5413693 m!6437752))

(declare-fun m!6437760 () Bool)

(assert (=> b!5413693 m!6437760))

(declare-fun m!6437762 () Bool)

(assert (=> b!5413667 m!6437762))

(assert (=> b!5413667 m!6437686))

(declare-fun m!6437764 () Bool)

(assert (=> b!5413667 m!6437764))

(declare-fun m!6437766 () Bool)

(assert (=> b!5413669 m!6437766))

(declare-fun m!6437768 () Bool)

(assert (=> b!5413683 m!6437768))

(declare-fun m!6437770 () Bool)

(assert (=> b!5413683 m!6437770))

(declare-fun m!6437772 () Bool)

(assert (=> b!5413683 m!6437772))

(declare-fun m!6437774 () Bool)

(assert (=> setNonEmpty!35270 m!6437774))

(push 1)

(assert (not b!5413689))

(assert (not b!5413679))

(assert (not b!5413682))

(assert (not b!5413677))

(assert (not b!5413654))

(assert tp_is_empty!39641)

(assert (not b!5413690))

(assert (not b!5413651))

(assert (not b!5413671))

(assert (not b!5413693))

(assert (not b!5413659))

(assert (not b!5413656))

(assert (not b!5413686))

(assert (not start!568444))

(assert (not b!5413697))

(assert (not setNonEmpty!35270))

(assert (not b!5413672))

(assert (not b!5413687))

(assert (not b!5413655))

(assert (not b!5413662))

(assert (not b!5413674))

(assert (not b!5413667))

(assert (not b!5413653))

(assert (not b!5413695))

(assert (not b!5413675))

(assert (not b!5413670))

(assert (not b!5413668))

(assert (not b!5413692))

(assert (not b!5413652))

(assert (not b!5413678))

(assert (not b!5413669))

(assert (not b!5413694))

(assert (not b!5413683))

(assert (not b!5413680))

(assert (not b!5413650))

(assert (not b!5413664))

(assert (not b!5413681))

(assert (not b!5413657))

(assert (not b!5413665))

(assert (not b!5413685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1727629 () Bool)

(declare-fun c!943910 () Bool)

(declare-fun isEmpty!33754 (List!61881) Bool)

(assert (=> d!1727629 (= c!943910 (isEmpty!33754 (t!375104 s!2326)))))

(declare-fun e!3355855 () Bool)

(assert (=> d!1727629 (= (matchZipper!1438 lt!2207736 (t!375104 s!2326)) e!3355855)))

(declare-fun b!5413912 () Bool)

(declare-fun nullableZipper!1447 ((Set Context!9156)) Bool)

(assert (=> b!5413912 (= e!3355855 (nullableZipper!1447 lt!2207736))))

(declare-fun b!5413913 () Bool)

(declare-fun head!11611 (List!61881) C!30658)

(declare-fun tail!10708 (List!61881) List!61881)

(assert (=> b!5413913 (= e!3355855 (matchZipper!1438 (derivationStepZipper!1433 lt!2207736 (head!11611 (t!375104 s!2326))) (tail!10708 (t!375104 s!2326))))))

(assert (= (and d!1727629 c!943910) b!5413912))

(assert (= (and d!1727629 (not c!943910)) b!5413913))

(declare-fun m!6437976 () Bool)

(assert (=> d!1727629 m!6437976))

(declare-fun m!6437978 () Bool)

(assert (=> b!5413912 m!6437978))

(declare-fun m!6437980 () Bool)

(assert (=> b!5413913 m!6437980))

(assert (=> b!5413913 m!6437980))

(declare-fun m!6437982 () Bool)

(assert (=> b!5413913 m!6437982))

(declare-fun m!6437984 () Bool)

(assert (=> b!5413913 m!6437984))

(assert (=> b!5413913 m!6437982))

(assert (=> b!5413913 m!6437984))

(declare-fun m!6437986 () Bool)

(assert (=> b!5413913 m!6437986))

(assert (=> b!5413677 d!1727629))

(declare-fun d!1727631 () Bool)

(declare-fun e!3355860 () Bool)

(assert (=> d!1727631 e!3355860))

(declare-fun res!2302894 () Bool)

(assert (=> d!1727631 (=> (not res!2302894) (not e!3355860))))

(declare-fun lt!2207965 () List!61881)

(declare-fun content!11088 (List!61881) (Set C!30658))

(assert (=> d!1727631 (= res!2302894 (= (content!11088 lt!2207965) (set.union (content!11088 Nil!61757) (content!11088 (_1!35696 lt!2207731)))))))

(declare-fun e!3355861 () List!61881)

(assert (=> d!1727631 (= lt!2207965 e!3355861)))

(declare-fun c!943913 () Bool)

(assert (=> d!1727631 (= c!943913 (is-Nil!61757 Nil!61757))))

(assert (=> d!1727631 (= (++!13561 Nil!61757 (_1!35696 lt!2207731)) lt!2207965)))

(declare-fun b!5413925 () Bool)

(assert (=> b!5413925 (= e!3355860 (or (not (= (_1!35696 lt!2207731) Nil!61757)) (= lt!2207965 Nil!61757)))))

(declare-fun b!5413923 () Bool)

(assert (=> b!5413923 (= e!3355861 (Cons!61757 (h!68205 Nil!61757) (++!13561 (t!375104 Nil!61757) (_1!35696 lt!2207731))))))

(declare-fun b!5413922 () Bool)

(assert (=> b!5413922 (= e!3355861 (_1!35696 lt!2207731))))

(declare-fun b!5413924 () Bool)

(declare-fun res!2302893 () Bool)

(assert (=> b!5413924 (=> (not res!2302893) (not e!3355860))))

(declare-fun size!39861 (List!61881) Int)

(assert (=> b!5413924 (= res!2302893 (= (size!39861 lt!2207965) (+ (size!39861 Nil!61757) (size!39861 (_1!35696 lt!2207731)))))))

(assert (= (and d!1727631 c!943913) b!5413922))

(assert (= (and d!1727631 (not c!943913)) b!5413923))

(assert (= (and d!1727631 res!2302894) b!5413924))

(assert (= (and b!5413924 res!2302893) b!5413925))

(declare-fun m!6437988 () Bool)

(assert (=> d!1727631 m!6437988))

(declare-fun m!6437990 () Bool)

(assert (=> d!1727631 m!6437990))

(declare-fun m!6437992 () Bool)

(assert (=> d!1727631 m!6437992))

(declare-fun m!6437994 () Bool)

(assert (=> b!5413923 m!6437994))

(declare-fun m!6437996 () Bool)

(assert (=> b!5413924 m!6437996))

(declare-fun m!6437998 () Bool)

(assert (=> b!5413924 m!6437998))

(declare-fun m!6438000 () Bool)

(assert (=> b!5413924 m!6438000))

(assert (=> b!5413657 d!1727631))

(declare-fun b!5413944 () Bool)

(declare-fun e!3355881 () Bool)

(declare-fun call!387411 () Bool)

(assert (=> b!5413944 (= e!3355881 call!387411)))

(declare-fun b!5413945 () Bool)

(declare-fun e!3355879 () Bool)

(declare-fun e!3355877 () Bool)

(assert (=> b!5413945 (= e!3355879 e!3355877)))

(declare-fun c!943918 () Bool)

(assert (=> b!5413945 (= c!943918 (is-Star!15194 r!7292))))

(declare-fun b!5413946 () Bool)

(declare-fun e!3355878 () Bool)

(declare-fun call!387412 () Bool)

(assert (=> b!5413946 (= e!3355878 call!387412)))

(declare-fun bm!387406 () Bool)

(declare-fun call!387413 () Bool)

(declare-fun c!943919 () Bool)

(assert (=> bm!387406 (= call!387413 (validRegex!6930 (ite c!943919 (regOne!30901 r!7292) (regOne!30900 r!7292))))))

(declare-fun b!5413947 () Bool)

(declare-fun e!3355882 () Bool)

(assert (=> b!5413947 (= e!3355882 call!387411)))

(declare-fun b!5413948 () Bool)

(declare-fun e!3355880 () Bool)

(assert (=> b!5413948 (= e!3355880 e!3355881)))

(declare-fun res!2302908 () Bool)

(assert (=> b!5413948 (=> (not res!2302908) (not e!3355881))))

(assert (=> b!5413948 (= res!2302908 call!387413)))

(declare-fun b!5413949 () Bool)

(declare-fun res!2302907 () Bool)

(assert (=> b!5413949 (=> res!2302907 e!3355880)))

(assert (=> b!5413949 (= res!2302907 (not (is-Concat!24039 r!7292)))))

(declare-fun e!3355876 () Bool)

(assert (=> b!5413949 (= e!3355876 e!3355880)))

(declare-fun bm!387407 () Bool)

(assert (=> bm!387407 (= call!387412 (validRegex!6930 (ite c!943918 (reg!15523 r!7292) (ite c!943919 (regTwo!30901 r!7292) (regTwo!30900 r!7292)))))))

(declare-fun b!5413950 () Bool)

(assert (=> b!5413950 (= e!3355877 e!3355878)))

(declare-fun res!2302909 () Bool)

(assert (=> b!5413950 (= res!2302909 (not (nullable!5363 (reg!15523 r!7292))))))

(assert (=> b!5413950 (=> (not res!2302909) (not e!3355878))))

(declare-fun b!5413952 () Bool)

(assert (=> b!5413952 (= e!3355877 e!3355876)))

(assert (=> b!5413952 (= c!943919 (is-Union!15194 r!7292))))

(declare-fun bm!387408 () Bool)

(assert (=> bm!387408 (= call!387411 call!387412)))

(declare-fun b!5413951 () Bool)

(declare-fun res!2302905 () Bool)

(assert (=> b!5413951 (=> (not res!2302905) (not e!3355882))))

(assert (=> b!5413951 (= res!2302905 call!387413)))

(assert (=> b!5413951 (= e!3355876 e!3355882)))

(declare-fun d!1727633 () Bool)

(declare-fun res!2302906 () Bool)

(assert (=> d!1727633 (=> res!2302906 e!3355879)))

(assert (=> d!1727633 (= res!2302906 (is-ElementMatch!15194 r!7292))))

(assert (=> d!1727633 (= (validRegex!6930 r!7292) e!3355879)))

(assert (= (and d!1727633 (not res!2302906)) b!5413945))

(assert (= (and b!5413945 c!943918) b!5413950))

(assert (= (and b!5413945 (not c!943918)) b!5413952))

(assert (= (and b!5413950 res!2302909) b!5413946))

(assert (= (and b!5413952 c!943919) b!5413951))

(assert (= (and b!5413952 (not c!943919)) b!5413949))

(assert (= (and b!5413951 res!2302905) b!5413947))

(assert (= (and b!5413949 (not res!2302907)) b!5413948))

(assert (= (and b!5413948 res!2302908) b!5413944))

(assert (= (or b!5413947 b!5413944) bm!387408))

(assert (= (or b!5413951 b!5413948) bm!387406))

(assert (= (or b!5413946 bm!387408) bm!387407))

(declare-fun m!6438002 () Bool)

(assert (=> bm!387406 m!6438002))

(declare-fun m!6438004 () Bool)

(assert (=> bm!387407 m!6438004))

(declare-fun m!6438006 () Bool)

(assert (=> b!5413950 m!6438006))

(assert (=> start!568444 d!1727633))

(declare-fun d!1727635 () Bool)

(declare-fun e!3355885 () Bool)

(assert (=> d!1727635 e!3355885))

(declare-fun res!2302912 () Bool)

(assert (=> d!1727635 (=> (not res!2302912) (not e!3355885))))

(declare-fun lt!2207968 () List!61883)

(declare-fun noDuplicate!1397 (List!61883) Bool)

(assert (=> d!1727635 (= res!2302912 (noDuplicate!1397 lt!2207968))))

(declare-fun choose!40915 ((Set Context!9156)) List!61883)

(assert (=> d!1727635 (= lt!2207968 (choose!40915 z!1189))))

(assert (=> d!1727635 (= (toList!8978 z!1189) lt!2207968)))

(declare-fun b!5413955 () Bool)

(declare-fun content!11089 (List!61883) (Set Context!9156))

(assert (=> b!5413955 (= e!3355885 (= (content!11089 lt!2207968) z!1189))))

(assert (= (and d!1727635 res!2302912) b!5413955))

(declare-fun m!6438008 () Bool)

(assert (=> d!1727635 m!6438008))

(declare-fun m!6438010 () Bool)

(assert (=> d!1727635 m!6438010))

(declare-fun m!6438012 () Bool)

(assert (=> b!5413955 m!6438012))

(assert (=> b!5413678 d!1727635))

(declare-fun d!1727637 () Bool)

(declare-fun c!943920 () Bool)

(assert (=> d!1727637 (= c!943920 (isEmpty!33754 (t!375104 s!2326)))))

(declare-fun e!3355886 () Bool)

(assert (=> d!1727637 (= (matchZipper!1438 lt!2207768 (t!375104 s!2326)) e!3355886)))

(declare-fun b!5413956 () Bool)

(assert (=> b!5413956 (= e!3355886 (nullableZipper!1447 lt!2207768))))

(declare-fun b!5413957 () Bool)

(assert (=> b!5413957 (= e!3355886 (matchZipper!1438 (derivationStepZipper!1433 lt!2207768 (head!11611 (t!375104 s!2326))) (tail!10708 (t!375104 s!2326))))))

(assert (= (and d!1727637 c!943920) b!5413956))

(assert (= (and d!1727637 (not c!943920)) b!5413957))

(assert (=> d!1727637 m!6437976))

(declare-fun m!6438014 () Bool)

(assert (=> b!5413956 m!6438014))

(assert (=> b!5413957 m!6437980))

(assert (=> b!5413957 m!6437980))

(declare-fun m!6438016 () Bool)

(assert (=> b!5413957 m!6438016))

(assert (=> b!5413957 m!6437984))

(assert (=> b!5413957 m!6438016))

(assert (=> b!5413957 m!6437984))

(declare-fun m!6438018 () Bool)

(assert (=> b!5413957 m!6438018))

(assert (=> b!5413659 d!1727637))

(declare-fun d!1727639 () Bool)

(declare-fun c!943921 () Bool)

(assert (=> d!1727639 (= c!943921 (isEmpty!33754 s!2326))))

(declare-fun e!3355887 () Bool)

(assert (=> d!1727639 (= (matchZipper!1438 z!1189 s!2326) e!3355887)))

(declare-fun b!5413958 () Bool)

(assert (=> b!5413958 (= e!3355887 (nullableZipper!1447 z!1189))))

(declare-fun b!5413959 () Bool)

(assert (=> b!5413959 (= e!3355887 (matchZipper!1438 (derivationStepZipper!1433 z!1189 (head!11611 s!2326)) (tail!10708 s!2326)))))

(assert (= (and d!1727639 c!943921) b!5413958))

(assert (= (and d!1727639 (not c!943921)) b!5413959))

(declare-fun m!6438020 () Bool)

(assert (=> d!1727639 m!6438020))

(declare-fun m!6438022 () Bool)

(assert (=> b!5413958 m!6438022))

(declare-fun m!6438024 () Bool)

(assert (=> b!5413959 m!6438024))

(assert (=> b!5413959 m!6438024))

(declare-fun m!6438026 () Bool)

(assert (=> b!5413959 m!6438026))

(declare-fun m!6438028 () Bool)

(assert (=> b!5413959 m!6438028))

(assert (=> b!5413959 m!6438026))

(assert (=> b!5413959 m!6438028))

(declare-fun m!6438030 () Bool)

(assert (=> b!5413959 m!6438030))

(assert (=> b!5413654 d!1727639))

(declare-fun d!1727641 () Bool)

(assert (=> d!1727641 (= (isEmpty!33751 (t!375106 zl!343)) (is-Nil!61759 (t!375106 zl!343)))))

(assert (=> b!5413695 d!1727641))

(assert (=> b!5413675 d!1727629))

(declare-fun d!1727643 () Bool)

(declare-fun c!943922 () Bool)

(assert (=> d!1727643 (= c!943922 (isEmpty!33754 (_2!35696 lt!2207774)))))

(declare-fun e!3355888 () Bool)

(assert (=> d!1727643 (= (matchZipper!1438 lt!2207766 (_2!35696 lt!2207774)) e!3355888)))

(declare-fun b!5413960 () Bool)

(assert (=> b!5413960 (= e!3355888 (nullableZipper!1447 lt!2207766))))

(declare-fun b!5413961 () Bool)

(assert (=> b!5413961 (= e!3355888 (matchZipper!1438 (derivationStepZipper!1433 lt!2207766 (head!11611 (_2!35696 lt!2207774))) (tail!10708 (_2!35696 lt!2207774))))))

(assert (= (and d!1727643 c!943922) b!5413960))

(assert (= (and d!1727643 (not c!943922)) b!5413961))

(declare-fun m!6438032 () Bool)

(assert (=> d!1727643 m!6438032))

(declare-fun m!6438034 () Bool)

(assert (=> b!5413960 m!6438034))

(declare-fun m!6438036 () Bool)

(assert (=> b!5413961 m!6438036))

(assert (=> b!5413961 m!6438036))

(declare-fun m!6438038 () Bool)

(assert (=> b!5413961 m!6438038))

(declare-fun m!6438040 () Bool)

(assert (=> b!5413961 m!6438040))

(assert (=> b!5413961 m!6438038))

(assert (=> b!5413961 m!6438040))

(declare-fun m!6438042 () Bool)

(assert (=> b!5413961 m!6438042))

(assert (=> b!5413655 d!1727643))

(declare-fun d!1727645 () Bool)

(declare-fun choose!40916 ((Set Context!9156) Int) (Set Context!9156))

(assert (=> d!1727645 (= (flatMap!921 lt!2207741 lambda!282896) (choose!40916 lt!2207741 lambda!282896))))

(declare-fun bs!1250475 () Bool)

(assert (= bs!1250475 d!1727645))

(declare-fun m!6438044 () Bool)

(assert (=> bs!1250475 m!6438044))

(assert (=> b!5413656 d!1727645))

(declare-fun b!5413972 () Bool)

(declare-fun e!3355897 () (Set Context!9156))

(declare-fun call!387416 () (Set Context!9156))

(assert (=> b!5413972 (= e!3355897 (set.union call!387416 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 lt!2207745))) (h!68205 s!2326))))))

(declare-fun b!5413973 () Bool)

(declare-fun e!3355895 () Bool)

(assert (=> b!5413973 (= e!3355895 (nullable!5363 (h!68206 (exprs!5078 lt!2207745))))))

(declare-fun b!5413974 () Bool)

(declare-fun e!3355896 () (Set Context!9156))

(assert (=> b!5413974 (= e!3355896 call!387416)))

(declare-fun b!5413975 () Bool)

(assert (=> b!5413975 (= e!3355896 (as set.empty (Set Context!9156)))))

(declare-fun b!5413976 () Bool)

(assert (=> b!5413976 (= e!3355897 e!3355896)))

(declare-fun c!943927 () Bool)

(assert (=> b!5413976 (= c!943927 (is-Cons!61758 (exprs!5078 lt!2207745)))))

(declare-fun bm!387411 () Bool)

(assert (=> bm!387411 (= call!387416 (derivationStepZipperDown!642 (h!68206 (exprs!5078 lt!2207745)) (Context!9157 (t!375105 (exprs!5078 lt!2207745))) (h!68205 s!2326)))))

(declare-fun d!1727647 () Bool)

(declare-fun c!943928 () Bool)

(assert (=> d!1727647 (= c!943928 e!3355895)))

(declare-fun res!2302915 () Bool)

(assert (=> d!1727647 (=> (not res!2302915) (not e!3355895))))

(assert (=> d!1727647 (= res!2302915 (is-Cons!61758 (exprs!5078 lt!2207745)))))

(assert (=> d!1727647 (= (derivationStepZipperUp!566 lt!2207745 (h!68205 s!2326)) e!3355897)))

(assert (= (and d!1727647 res!2302915) b!5413973))

(assert (= (and d!1727647 c!943928) b!5413972))

(assert (= (and d!1727647 (not c!943928)) b!5413976))

(assert (= (and b!5413976 c!943927) b!5413974))

(assert (= (and b!5413976 (not c!943927)) b!5413975))

(assert (= (or b!5413972 b!5413974) bm!387411))

(declare-fun m!6438046 () Bool)

(assert (=> b!5413972 m!6438046))

(declare-fun m!6438048 () Bool)

(assert (=> b!5413973 m!6438048))

(declare-fun m!6438050 () Bool)

(assert (=> bm!387411 m!6438050))

(assert (=> b!5413656 d!1727647))

(declare-fun d!1727649 () Bool)

(declare-fun dynLambda!24333 (Int Context!9156) (Set Context!9156))

(assert (=> d!1727649 (= (flatMap!921 lt!2207741 lambda!282896) (dynLambda!24333 lambda!282896 lt!2207745))))

(declare-fun lt!2207971 () Unit!154298)

(declare-fun choose!40917 ((Set Context!9156) Context!9156 Int) Unit!154298)

(assert (=> d!1727649 (= lt!2207971 (choose!40917 lt!2207741 lt!2207745 lambda!282896))))

(assert (=> d!1727649 (= lt!2207741 (set.insert lt!2207745 (as set.empty (Set Context!9156))))))

(assert (=> d!1727649 (= (lemmaFlatMapOnSingletonSet!453 lt!2207741 lt!2207745 lambda!282896) lt!2207971)))

(declare-fun b_lambda!206749 () Bool)

(assert (=> (not b_lambda!206749) (not d!1727649)))

(declare-fun bs!1250476 () Bool)

(assert (= bs!1250476 d!1727649))

(assert (=> bs!1250476 m!6437742))

(declare-fun m!6438052 () Bool)

(assert (=> bs!1250476 m!6438052))

(declare-fun m!6438054 () Bool)

(assert (=> bs!1250476 m!6438054))

(assert (=> bs!1250476 m!6437744))

(assert (=> b!5413656 d!1727649))

(declare-fun bs!1250477 () Bool)

(declare-fun d!1727651 () Bool)

(assert (= bs!1250477 (and d!1727651 b!5413692)))

(declare-fun lambda!282954 () Int)

(assert (=> bs!1250477 (= lambda!282954 lambda!282896)))

(assert (=> d!1727651 true))

(assert (=> d!1727651 (= (derivationStepZipper!1433 lt!2207741 (h!68205 s!2326)) (flatMap!921 lt!2207741 lambda!282954))))

(declare-fun bs!1250478 () Bool)

(assert (= bs!1250478 d!1727651))

(declare-fun m!6438056 () Bool)

(assert (=> bs!1250478 m!6438056))

(assert (=> b!5413656 d!1727651))

(declare-fun b!5413979 () Bool)

(declare-fun e!3355903 () Bool)

(declare-fun call!387417 () Bool)

(assert (=> b!5413979 (= e!3355903 call!387417)))

(declare-fun b!5413980 () Bool)

(declare-fun e!3355901 () Bool)

(declare-fun e!3355899 () Bool)

(assert (=> b!5413980 (= e!3355901 e!3355899)))

(declare-fun c!943931 () Bool)

(assert (=> b!5413980 (= c!943931 (is-Star!15194 lt!2207765))))

(declare-fun b!5413981 () Bool)

(declare-fun e!3355900 () Bool)

(declare-fun call!387418 () Bool)

(assert (=> b!5413981 (= e!3355900 call!387418)))

(declare-fun bm!387412 () Bool)

(declare-fun call!387419 () Bool)

(declare-fun c!943932 () Bool)

(assert (=> bm!387412 (= call!387419 (validRegex!6930 (ite c!943932 (regOne!30901 lt!2207765) (regOne!30900 lt!2207765))))))

(declare-fun b!5413982 () Bool)

(declare-fun e!3355904 () Bool)

(assert (=> b!5413982 (= e!3355904 call!387417)))

(declare-fun b!5413983 () Bool)

(declare-fun e!3355902 () Bool)

(assert (=> b!5413983 (= e!3355902 e!3355903)))

(declare-fun res!2302919 () Bool)

(assert (=> b!5413983 (=> (not res!2302919) (not e!3355903))))

(assert (=> b!5413983 (= res!2302919 call!387419)))

(declare-fun b!5413984 () Bool)

(declare-fun res!2302918 () Bool)

(assert (=> b!5413984 (=> res!2302918 e!3355902)))

(assert (=> b!5413984 (= res!2302918 (not (is-Concat!24039 lt!2207765)))))

(declare-fun e!3355898 () Bool)

(assert (=> b!5413984 (= e!3355898 e!3355902)))

(declare-fun bm!387413 () Bool)

(assert (=> bm!387413 (= call!387418 (validRegex!6930 (ite c!943931 (reg!15523 lt!2207765) (ite c!943932 (regTwo!30901 lt!2207765) (regTwo!30900 lt!2207765)))))))

(declare-fun b!5413985 () Bool)

(assert (=> b!5413985 (= e!3355899 e!3355900)))

(declare-fun res!2302920 () Bool)

(assert (=> b!5413985 (= res!2302920 (not (nullable!5363 (reg!15523 lt!2207765))))))

(assert (=> b!5413985 (=> (not res!2302920) (not e!3355900))))

(declare-fun b!5413987 () Bool)

(assert (=> b!5413987 (= e!3355899 e!3355898)))

(assert (=> b!5413987 (= c!943932 (is-Union!15194 lt!2207765))))

(declare-fun bm!387414 () Bool)

(assert (=> bm!387414 (= call!387417 call!387418)))

(declare-fun b!5413986 () Bool)

(declare-fun res!2302916 () Bool)

(assert (=> b!5413986 (=> (not res!2302916) (not e!3355904))))

(assert (=> b!5413986 (= res!2302916 call!387419)))

(assert (=> b!5413986 (= e!3355898 e!3355904)))

(declare-fun d!1727653 () Bool)

(declare-fun res!2302917 () Bool)

(assert (=> d!1727653 (=> res!2302917 e!3355901)))

(assert (=> d!1727653 (= res!2302917 (is-ElementMatch!15194 lt!2207765))))

(assert (=> d!1727653 (= (validRegex!6930 lt!2207765) e!3355901)))

(assert (= (and d!1727653 (not res!2302917)) b!5413980))

(assert (= (and b!5413980 c!943931) b!5413985))

(assert (= (and b!5413980 (not c!943931)) b!5413987))

(assert (= (and b!5413985 res!2302920) b!5413981))

(assert (= (and b!5413987 c!943932) b!5413986))

(assert (= (and b!5413987 (not c!943932)) b!5413984))

(assert (= (and b!5413986 res!2302916) b!5413982))

(assert (= (and b!5413984 (not res!2302918)) b!5413983))

(assert (= (and b!5413983 res!2302919) b!5413979))

(assert (= (or b!5413982 b!5413979) bm!387414))

(assert (= (or b!5413986 b!5413983) bm!387412))

(assert (= (or b!5413981 bm!387414) bm!387413))

(declare-fun m!6438058 () Bool)

(assert (=> bm!387412 m!6438058))

(declare-fun m!6438060 () Bool)

(assert (=> bm!387413 m!6438060))

(declare-fun m!6438062 () Bool)

(assert (=> b!5413985 m!6438062))

(assert (=> b!5413697 d!1727653))

(declare-fun call!387420 () (Set Context!9156))

(declare-fun e!3355907 () (Set Context!9156))

(declare-fun b!5413988 () Bool)

(assert (=> b!5413988 (= e!3355907 (set.union call!387420 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 lt!2207724))) (h!68205 s!2326))))))

(declare-fun b!5413989 () Bool)

(declare-fun e!3355905 () Bool)

(assert (=> b!5413989 (= e!3355905 (nullable!5363 (h!68206 (exprs!5078 lt!2207724))))))

(declare-fun b!5413990 () Bool)

(declare-fun e!3355906 () (Set Context!9156))

(assert (=> b!5413990 (= e!3355906 call!387420)))

(declare-fun b!5413991 () Bool)

(assert (=> b!5413991 (= e!3355906 (as set.empty (Set Context!9156)))))

(declare-fun b!5413992 () Bool)

(assert (=> b!5413992 (= e!3355907 e!3355906)))

(declare-fun c!943933 () Bool)

(assert (=> b!5413992 (= c!943933 (is-Cons!61758 (exprs!5078 lt!2207724)))))

(declare-fun bm!387415 () Bool)

(assert (=> bm!387415 (= call!387420 (derivationStepZipperDown!642 (h!68206 (exprs!5078 lt!2207724)) (Context!9157 (t!375105 (exprs!5078 lt!2207724))) (h!68205 s!2326)))))

(declare-fun d!1727655 () Bool)

(declare-fun c!943934 () Bool)

(assert (=> d!1727655 (= c!943934 e!3355905)))

(declare-fun res!2302921 () Bool)

(assert (=> d!1727655 (=> (not res!2302921) (not e!3355905))))

(assert (=> d!1727655 (= res!2302921 (is-Cons!61758 (exprs!5078 lt!2207724)))))

(assert (=> d!1727655 (= (derivationStepZipperUp!566 lt!2207724 (h!68205 s!2326)) e!3355907)))

(assert (= (and d!1727655 res!2302921) b!5413989))

(assert (= (and d!1727655 c!943934) b!5413988))

(assert (= (and d!1727655 (not c!943934)) b!5413992))

(assert (= (and b!5413992 c!943933) b!5413990))

(assert (= (and b!5413992 (not c!943933)) b!5413991))

(assert (= (or b!5413988 b!5413990) bm!387415))

(declare-fun m!6438064 () Bool)

(assert (=> b!5413988 m!6438064))

(declare-fun m!6438066 () Bool)

(assert (=> b!5413989 m!6438066))

(declare-fun m!6438068 () Bool)

(assert (=> bm!387415 m!6438068))

(assert (=> b!5413692 d!1727655))

(declare-fun b!5414015 () Bool)

(declare-fun e!3355920 () (Set Context!9156))

(declare-fun call!387433 () (Set Context!9156))

(assert (=> b!5414015 (= e!3355920 call!387433)))

(declare-fun bm!387428 () Bool)

(declare-fun call!387436 () (Set Context!9156))

(declare-fun call!387437 () (Set Context!9156))

(assert (=> bm!387428 (= call!387436 call!387437)))

(declare-fun b!5414016 () Bool)

(declare-fun c!943948 () Bool)

(assert (=> b!5414016 (= c!943948 (is-Star!15194 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun e!3355923 () (Set Context!9156))

(assert (=> b!5414016 (= e!3355920 e!3355923)))

(declare-fun bm!387429 () Bool)

(declare-fun call!387435 () List!61882)

(declare-fun call!387434 () (Set Context!9156))

(declare-fun c!943947 () Bool)

(assert (=> bm!387429 (= call!387434 (derivationStepZipperDown!642 (ite c!943947 (regOne!30901 (h!68206 (exprs!5078 (h!68207 zl!343)))) (regOne!30900 (h!68206 (exprs!5078 (h!68207 zl!343))))) (ite c!943947 lt!2207724 (Context!9157 call!387435)) (h!68205 s!2326)))))

(declare-fun b!5414017 () Bool)

(declare-fun e!3355925 () (Set Context!9156))

(assert (=> b!5414017 (= e!3355925 (set.union call!387434 call!387436))))

(declare-fun bm!387430 () Bool)

(declare-fun call!387438 () List!61882)

(assert (=> bm!387430 (= call!387438 call!387435)))

(declare-fun d!1727657 () Bool)

(declare-fun c!943945 () Bool)

(assert (=> d!1727657 (= c!943945 (and (is-ElementMatch!15194 (h!68206 (exprs!5078 (h!68207 zl!343)))) (= (c!943892 (h!68206 (exprs!5078 (h!68207 zl!343)))) (h!68205 s!2326))))))

(declare-fun e!3355921 () (Set Context!9156))

(assert (=> d!1727657 (= (derivationStepZipperDown!642 (h!68206 (exprs!5078 (h!68207 zl!343))) lt!2207724 (h!68205 s!2326)) e!3355921)))

(declare-fun b!5414018 () Bool)

(assert (=> b!5414018 (= e!3355921 (set.insert lt!2207724 (as set.empty (Set Context!9156))))))

(declare-fun bm!387431 () Bool)

(assert (=> bm!387431 (= call!387433 call!387436)))

(declare-fun b!5414019 () Bool)

(declare-fun e!3355922 () (Set Context!9156))

(assert (=> b!5414019 (= e!3355921 e!3355922)))

(assert (=> b!5414019 (= c!943947 (is-Union!15194 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414020 () Bool)

(declare-fun e!3355924 () Bool)

(assert (=> b!5414020 (= e!3355924 (nullable!5363 (regOne!30900 (h!68206 (exprs!5078 (h!68207 zl!343))))))))

(declare-fun b!5414021 () Bool)

(assert (=> b!5414021 (= e!3355925 e!3355920)))

(declare-fun c!943946 () Bool)

(assert (=> b!5414021 (= c!943946 (is-Concat!24039 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414022 () Bool)

(assert (=> b!5414022 (= e!3355922 (set.union call!387434 call!387437))))

(declare-fun b!5414023 () Bool)

(assert (=> b!5414023 (= e!3355923 call!387433)))

(declare-fun c!943949 () Bool)

(declare-fun bm!387432 () Bool)

(declare-fun $colon$colon!1497 (List!61882 Regex!15194) List!61882)

(assert (=> bm!387432 (= call!387435 ($colon$colon!1497 (exprs!5078 lt!2207724) (ite (or c!943949 c!943946) (regTwo!30900 (h!68206 (exprs!5078 (h!68207 zl!343)))) (h!68206 (exprs!5078 (h!68207 zl!343))))))))

(declare-fun b!5414024 () Bool)

(assert (=> b!5414024 (= e!3355923 (as set.empty (Set Context!9156)))))

(declare-fun b!5414025 () Bool)

(assert (=> b!5414025 (= c!943949 e!3355924)))

(declare-fun res!2302924 () Bool)

(assert (=> b!5414025 (=> (not res!2302924) (not e!3355924))))

(assert (=> b!5414025 (= res!2302924 (is-Concat!24039 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(assert (=> b!5414025 (= e!3355922 e!3355925)))

(declare-fun bm!387433 () Bool)

(assert (=> bm!387433 (= call!387437 (derivationStepZipperDown!642 (ite c!943947 (regTwo!30901 (h!68206 (exprs!5078 (h!68207 zl!343)))) (ite c!943949 (regTwo!30900 (h!68206 (exprs!5078 (h!68207 zl!343)))) (ite c!943946 (regOne!30900 (h!68206 (exprs!5078 (h!68207 zl!343)))) (reg!15523 (h!68206 (exprs!5078 (h!68207 zl!343))))))) (ite (or c!943947 c!943949) lt!2207724 (Context!9157 call!387438)) (h!68205 s!2326)))))

(assert (= (and d!1727657 c!943945) b!5414018))

(assert (= (and d!1727657 (not c!943945)) b!5414019))

(assert (= (and b!5414019 c!943947) b!5414022))

(assert (= (and b!5414019 (not c!943947)) b!5414025))

(assert (= (and b!5414025 res!2302924) b!5414020))

(assert (= (and b!5414025 c!943949) b!5414017))

(assert (= (and b!5414025 (not c!943949)) b!5414021))

(assert (= (and b!5414021 c!943946) b!5414015))

(assert (= (and b!5414021 (not c!943946)) b!5414016))

(assert (= (and b!5414016 c!943948) b!5414023))

(assert (= (and b!5414016 (not c!943948)) b!5414024))

(assert (= (or b!5414015 b!5414023) bm!387430))

(assert (= (or b!5414015 b!5414023) bm!387431))

(assert (= (or b!5414017 bm!387430) bm!387432))

(assert (= (or b!5414017 bm!387431) bm!387428))

(assert (= (or b!5414022 bm!387428) bm!387433))

(assert (= (or b!5414022 b!5414017) bm!387429))

(declare-fun m!6438070 () Bool)

(assert (=> b!5414018 m!6438070))

(declare-fun m!6438072 () Bool)

(assert (=> bm!387433 m!6438072))

(declare-fun m!6438074 () Bool)

(assert (=> b!5414020 m!6438074))

(declare-fun m!6438076 () Bool)

(assert (=> bm!387432 m!6438076))

(declare-fun m!6438078 () Bool)

(assert (=> bm!387429 m!6438078))

(assert (=> b!5413692 d!1727657))

(declare-fun d!1727659 () Bool)

(declare-fun nullableFct!1598 (Regex!15194) Bool)

(assert (=> d!1727659 (= (nullable!5363 (h!68206 (exprs!5078 (h!68207 zl!343)))) (nullableFct!1598 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun bs!1250479 () Bool)

(assert (= bs!1250479 d!1727659))

(declare-fun m!6438080 () Bool)

(assert (=> bs!1250479 m!6438080))

(assert (=> b!5413692 d!1727659))

(declare-fun b!5414026 () Bool)

(declare-fun e!3355928 () (Set Context!9156))

(declare-fun call!387439 () (Set Context!9156))

(assert (=> b!5414026 (= e!3355928 (set.union call!387439 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343)))))))) (h!68205 s!2326))))))

(declare-fun b!5414027 () Bool)

(declare-fun e!3355926 () Bool)

(assert (=> b!5414027 (= e!3355926 (nullable!5363 (h!68206 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343)))))))))))

(declare-fun b!5414028 () Bool)

(declare-fun e!3355927 () (Set Context!9156))

(assert (=> b!5414028 (= e!3355927 call!387439)))

(declare-fun b!5414029 () Bool)

(assert (=> b!5414029 (= e!3355927 (as set.empty (Set Context!9156)))))

(declare-fun b!5414030 () Bool)

(assert (=> b!5414030 (= e!3355928 e!3355927)))

(declare-fun c!943950 () Bool)

(assert (=> b!5414030 (= c!943950 (is-Cons!61758 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343))))))))))

(declare-fun bm!387434 () Bool)

(assert (=> bm!387434 (= call!387439 (derivationStepZipperDown!642 (h!68206 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343))))))) (Context!9157 (t!375105 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343)))))))) (h!68205 s!2326)))))

(declare-fun d!1727661 () Bool)

(declare-fun c!943951 () Bool)

(assert (=> d!1727661 (= c!943951 e!3355926)))

(declare-fun res!2302925 () Bool)

(assert (=> d!1727661 (=> (not res!2302925) (not e!3355926))))

(assert (=> d!1727661 (= res!2302925 (is-Cons!61758 (exprs!5078 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343))))))))))

(assert (=> d!1727661 (= (derivationStepZipperUp!566 (Context!9157 (Cons!61758 (h!68206 (exprs!5078 (h!68207 zl!343))) (t!375105 (exprs!5078 (h!68207 zl!343))))) (h!68205 s!2326)) e!3355928)))

(assert (= (and d!1727661 res!2302925) b!5414027))

(assert (= (and d!1727661 c!943951) b!5414026))

(assert (= (and d!1727661 (not c!943951)) b!5414030))

(assert (= (and b!5414030 c!943950) b!5414028))

(assert (= (and b!5414030 (not c!943950)) b!5414029))

(assert (= (or b!5414026 b!5414028) bm!387434))

(declare-fun m!6438082 () Bool)

(assert (=> b!5414026 m!6438082))

(declare-fun m!6438084 () Bool)

(assert (=> b!5414027 m!6438084))

(declare-fun m!6438086 () Bool)

(assert (=> bm!387434 m!6438086))

(assert (=> b!5413692 d!1727661))

(declare-fun d!1727663 () Bool)

(assert (=> d!1727663 (= (flatMap!921 z!1189 lambda!282896) (choose!40916 z!1189 lambda!282896))))

(declare-fun bs!1250480 () Bool)

(assert (= bs!1250480 d!1727663))

(declare-fun m!6438088 () Bool)

(assert (=> bs!1250480 m!6438088))

(assert (=> b!5413692 d!1727663))

(declare-fun b!5414031 () Bool)

(declare-fun call!387440 () (Set Context!9156))

(declare-fun e!3355931 () (Set Context!9156))

(assert (=> b!5414031 (= e!3355931 (set.union call!387440 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 (h!68207 zl!343)))) (h!68205 s!2326))))))

(declare-fun b!5414032 () Bool)

(declare-fun e!3355929 () Bool)

(assert (=> b!5414032 (= e!3355929 (nullable!5363 (h!68206 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414033 () Bool)

(declare-fun e!3355930 () (Set Context!9156))

(assert (=> b!5414033 (= e!3355930 call!387440)))

(declare-fun b!5414034 () Bool)

(assert (=> b!5414034 (= e!3355930 (as set.empty (Set Context!9156)))))

(declare-fun b!5414035 () Bool)

(assert (=> b!5414035 (= e!3355931 e!3355930)))

(declare-fun c!943952 () Bool)

(assert (=> b!5414035 (= c!943952 (is-Cons!61758 (exprs!5078 (h!68207 zl!343))))))

(declare-fun bm!387435 () Bool)

(assert (=> bm!387435 (= call!387440 (derivationStepZipperDown!642 (h!68206 (exprs!5078 (h!68207 zl!343))) (Context!9157 (t!375105 (exprs!5078 (h!68207 zl!343)))) (h!68205 s!2326)))))

(declare-fun d!1727665 () Bool)

(declare-fun c!943953 () Bool)

(assert (=> d!1727665 (= c!943953 e!3355929)))

(declare-fun res!2302926 () Bool)

(assert (=> d!1727665 (=> (not res!2302926) (not e!3355929))))

(assert (=> d!1727665 (= res!2302926 (is-Cons!61758 (exprs!5078 (h!68207 zl!343))))))

(assert (=> d!1727665 (= (derivationStepZipperUp!566 (h!68207 zl!343) (h!68205 s!2326)) e!3355931)))

(assert (= (and d!1727665 res!2302926) b!5414032))

(assert (= (and d!1727665 c!943953) b!5414031))

(assert (= (and d!1727665 (not c!943953)) b!5414035))

(assert (= (and b!5414035 c!943952) b!5414033))

(assert (= (and b!5414035 (not c!943952)) b!5414034))

(assert (= (or b!5414031 b!5414033) bm!387435))

(declare-fun m!6438090 () Bool)

(assert (=> b!5414031 m!6438090))

(assert (=> b!5414032 m!6437588))

(declare-fun m!6438092 () Bool)

(assert (=> bm!387435 m!6438092))

(assert (=> b!5413692 d!1727665))

(declare-fun d!1727667 () Bool)

(assert (=> d!1727667 (= (flatMap!921 z!1189 lambda!282896) (dynLambda!24333 lambda!282896 (h!68207 zl!343)))))

(declare-fun lt!2207972 () Unit!154298)

(assert (=> d!1727667 (= lt!2207972 (choose!40917 z!1189 (h!68207 zl!343) lambda!282896))))

(assert (=> d!1727667 (= z!1189 (set.insert (h!68207 zl!343) (as set.empty (Set Context!9156))))))

(assert (=> d!1727667 (= (lemmaFlatMapOnSingletonSet!453 z!1189 (h!68207 zl!343) lambda!282896) lt!2207972)))

(declare-fun b_lambda!206751 () Bool)

(assert (=> (not b_lambda!206751) (not d!1727667)))

(declare-fun bs!1250481 () Bool)

(assert (= bs!1250481 d!1727667))

(assert (=> bs!1250481 m!6437590))

(declare-fun m!6438094 () Bool)

(assert (=> bs!1250481 m!6438094))

(declare-fun m!6438096 () Bool)

(assert (=> bs!1250481 m!6438096))

(declare-fun m!6438098 () Bool)

(assert (=> bs!1250481 m!6438098))

(assert (=> b!5413692 d!1727667))

(declare-fun d!1727669 () Bool)

(declare-fun e!3355932 () Bool)

(assert (=> d!1727669 e!3355932))

(declare-fun res!2302928 () Bool)

(assert (=> d!1727669 (=> (not res!2302928) (not e!3355932))))

(declare-fun lt!2207973 () List!61881)

(assert (=> d!1727669 (= res!2302928 (= (content!11088 lt!2207973) (set.union (content!11088 (_1!35696 lt!2207774)) (content!11088 (_2!35696 lt!2207774)))))))

(declare-fun e!3355933 () List!61881)

(assert (=> d!1727669 (= lt!2207973 e!3355933)))

(declare-fun c!943954 () Bool)

(assert (=> d!1727669 (= c!943954 (is-Nil!61757 (_1!35696 lt!2207774)))))

(assert (=> d!1727669 (= (++!13561 (_1!35696 lt!2207774) (_2!35696 lt!2207774)) lt!2207973)))

(declare-fun b!5414039 () Bool)

(assert (=> b!5414039 (= e!3355932 (or (not (= (_2!35696 lt!2207774) Nil!61757)) (= lt!2207973 (_1!35696 lt!2207774))))))

(declare-fun b!5414037 () Bool)

(assert (=> b!5414037 (= e!3355933 (Cons!61757 (h!68205 (_1!35696 lt!2207774)) (++!13561 (t!375104 (_1!35696 lt!2207774)) (_2!35696 lt!2207774))))))

(declare-fun b!5414036 () Bool)

(assert (=> b!5414036 (= e!3355933 (_2!35696 lt!2207774))))

(declare-fun b!5414038 () Bool)

(declare-fun res!2302927 () Bool)

(assert (=> b!5414038 (=> (not res!2302927) (not e!3355932))))

(assert (=> b!5414038 (= res!2302927 (= (size!39861 lt!2207973) (+ (size!39861 (_1!35696 lt!2207774)) (size!39861 (_2!35696 lt!2207774)))))))

(assert (= (and d!1727669 c!943954) b!5414036))

(assert (= (and d!1727669 (not c!943954)) b!5414037))

(assert (= (and d!1727669 res!2302928) b!5414038))

(assert (= (and b!5414038 res!2302927) b!5414039))

(declare-fun m!6438100 () Bool)

(assert (=> d!1727669 m!6438100))

(declare-fun m!6438102 () Bool)

(assert (=> d!1727669 m!6438102))

(declare-fun m!6438104 () Bool)

(assert (=> d!1727669 m!6438104))

(declare-fun m!6438106 () Bool)

(assert (=> b!5414037 m!6438106))

(declare-fun m!6438108 () Bool)

(assert (=> b!5414038 m!6438108))

(declare-fun m!6438110 () Bool)

(assert (=> b!5414038 m!6438110))

(declare-fun m!6438112 () Bool)

(assert (=> b!5414038 m!6438112))

(assert (=> b!5413672 d!1727669))

(declare-fun d!1727671 () Bool)

(declare-fun isEmpty!33755 (Option!15305) Bool)

(assert (=> d!1727671 (= (isDefined!12008 lt!2207728) (not (isEmpty!33755 lt!2207728)))))

(declare-fun bs!1250482 () Bool)

(assert (= bs!1250482 d!1727671))

(declare-fun m!6438114 () Bool)

(assert (=> bs!1250482 m!6438114))

(assert (=> b!5413672 d!1727671))

(declare-fun d!1727673 () Bool)

(assert (=> d!1727673 (= (get!21294 lt!2207728) (v!51333 lt!2207728))))

(assert (=> b!5413672 d!1727673))

(declare-fun b!5414058 () Bool)

(declare-fun e!3355947 () Bool)

(declare-fun lt!2207981 () Option!15305)

(assert (=> b!5414058 (= e!3355947 (not (isDefined!12008 lt!2207981)))))

(declare-fun b!5414059 () Bool)

(declare-fun lt!2207982 () Unit!154298)

(declare-fun lt!2207980 () Unit!154298)

(assert (=> b!5414059 (= lt!2207982 lt!2207980)))

(assert (=> b!5414059 (= (++!13561 (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1842 (List!61881 C!30658 List!61881 List!61881) Unit!154298)

(assert (=> b!5414059 (= lt!2207980 (lemmaMoveElementToOtherListKeepsConcatEq!1842 Nil!61757 (h!68205 s!2326) (t!375104 s!2326) s!2326))))

(declare-fun e!3355946 () Option!15305)

(assert (=> b!5414059 (= e!3355946 (findConcatSeparationZippers!51 lt!2207760 lt!2207766 (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326) s!2326))))

(declare-fun b!5414060 () Bool)

(declare-fun e!3355945 () Option!15305)

(assert (=> b!5414060 (= e!3355945 e!3355946)))

(declare-fun c!943959 () Bool)

(assert (=> b!5414060 (= c!943959 (is-Nil!61757 s!2326))))

(declare-fun b!5414061 () Bool)

(declare-fun e!3355944 () Bool)

(assert (=> b!5414061 (= e!3355944 (= (++!13561 (_1!35696 (get!21294 lt!2207981)) (_2!35696 (get!21294 lt!2207981))) s!2326))))

(declare-fun b!5414062 () Bool)

(declare-fun e!3355948 () Bool)

(assert (=> b!5414062 (= e!3355948 (matchZipper!1438 lt!2207766 s!2326))))

(declare-fun b!5414063 () Bool)

(declare-fun res!2302943 () Bool)

(assert (=> b!5414063 (=> (not res!2302943) (not e!3355944))))

(assert (=> b!5414063 (= res!2302943 (matchZipper!1438 lt!2207766 (_2!35696 (get!21294 lt!2207981))))))

(declare-fun d!1727675 () Bool)

(assert (=> d!1727675 e!3355947))

(declare-fun res!2302942 () Bool)

(assert (=> d!1727675 (=> res!2302942 e!3355947)))

(assert (=> d!1727675 (= res!2302942 e!3355944)))

(declare-fun res!2302941 () Bool)

(assert (=> d!1727675 (=> (not res!2302941) (not e!3355944))))

(assert (=> d!1727675 (= res!2302941 (isDefined!12008 lt!2207981))))

(assert (=> d!1727675 (= lt!2207981 e!3355945)))

(declare-fun c!943960 () Bool)

(assert (=> d!1727675 (= c!943960 e!3355948)))

(declare-fun res!2302940 () Bool)

(assert (=> d!1727675 (=> (not res!2302940) (not e!3355948))))

(assert (=> d!1727675 (= res!2302940 (matchZipper!1438 lt!2207760 Nil!61757))))

(assert (=> d!1727675 (= (++!13561 Nil!61757 s!2326) s!2326)))

(assert (=> d!1727675 (= (findConcatSeparationZippers!51 lt!2207760 lt!2207766 Nil!61757 s!2326 s!2326) lt!2207981)))

(declare-fun b!5414064 () Bool)

(assert (=> b!5414064 (= e!3355946 None!15304)))

(declare-fun b!5414065 () Bool)

(assert (=> b!5414065 (= e!3355945 (Some!15304 (tuple2!64787 Nil!61757 s!2326)))))

(declare-fun b!5414066 () Bool)

(declare-fun res!2302939 () Bool)

(assert (=> b!5414066 (=> (not res!2302939) (not e!3355944))))

(assert (=> b!5414066 (= res!2302939 (matchZipper!1438 lt!2207760 (_1!35696 (get!21294 lt!2207981))))))

(assert (= (and d!1727675 res!2302940) b!5414062))

(assert (= (and d!1727675 c!943960) b!5414065))

(assert (= (and d!1727675 (not c!943960)) b!5414060))

(assert (= (and b!5414060 c!943959) b!5414064))

(assert (= (and b!5414060 (not c!943959)) b!5414059))

(assert (= (and d!1727675 res!2302941) b!5414066))

(assert (= (and b!5414066 res!2302939) b!5414063))

(assert (= (and b!5414063 res!2302943) b!5414061))

(assert (= (and d!1727675 (not res!2302942)) b!5414058))

(declare-fun m!6438116 () Bool)

(assert (=> b!5414058 m!6438116))

(assert (=> d!1727675 m!6438116))

(declare-fun m!6438118 () Bool)

(assert (=> d!1727675 m!6438118))

(declare-fun m!6438120 () Bool)

(assert (=> d!1727675 m!6438120))

(declare-fun m!6438122 () Bool)

(assert (=> b!5414059 m!6438122))

(assert (=> b!5414059 m!6438122))

(declare-fun m!6438124 () Bool)

(assert (=> b!5414059 m!6438124))

(declare-fun m!6438126 () Bool)

(assert (=> b!5414059 m!6438126))

(assert (=> b!5414059 m!6438122))

(declare-fun m!6438128 () Bool)

(assert (=> b!5414059 m!6438128))

(declare-fun m!6438130 () Bool)

(assert (=> b!5414061 m!6438130))

(declare-fun m!6438132 () Bool)

(assert (=> b!5414061 m!6438132))

(declare-fun m!6438134 () Bool)

(assert (=> b!5414062 m!6438134))

(assert (=> b!5414063 m!6438130))

(declare-fun m!6438136 () Bool)

(assert (=> b!5414063 m!6438136))

(assert (=> b!5414066 m!6438130))

(declare-fun m!6438138 () Bool)

(assert (=> b!5414066 m!6438138))

(assert (=> b!5413672 d!1727675))

(declare-fun d!1727677 () Bool)

(assert (=> d!1727677 (isDefined!12008 (findConcatSeparationZippers!51 lt!2207760 (set.insert lt!2207720 (as set.empty (Set Context!9156))) Nil!61757 s!2326 s!2326))))

(declare-fun lt!2207985 () Unit!154298)

(declare-fun choose!40918 ((Set Context!9156) Context!9156 List!61881) Unit!154298)

(assert (=> d!1727677 (= lt!2207985 (choose!40918 lt!2207760 lt!2207720 s!2326))))

(assert (=> d!1727677 (matchZipper!1438 (appendTo!53 lt!2207760 lt!2207720) s!2326)))

(assert (=> d!1727677 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!51 lt!2207760 lt!2207720 s!2326) lt!2207985)))

(declare-fun bs!1250483 () Bool)

(assert (= bs!1250483 d!1727677))

(assert (=> bs!1250483 m!6437700))

(assert (=> bs!1250483 m!6437700))

(declare-fun m!6438140 () Bool)

(assert (=> bs!1250483 m!6438140))

(assert (=> bs!1250483 m!6437606))

(assert (=> bs!1250483 m!6438140))

(declare-fun m!6438142 () Bool)

(assert (=> bs!1250483 m!6438142))

(declare-fun m!6438144 () Bool)

(assert (=> bs!1250483 m!6438144))

(assert (=> bs!1250483 m!6437606))

(declare-fun m!6438146 () Bool)

(assert (=> bs!1250483 m!6438146))

(assert (=> b!5413672 d!1727677))

(declare-fun d!1727679 () Bool)

(assert (=> d!1727679 (= (isEmpty!33750 (t!375105 (exprs!5078 (h!68207 zl!343)))) (is-Nil!61758 (t!375105 (exprs!5078 (h!68207 zl!343)))))))

(assert (=> b!5413652 d!1727679))

(declare-fun b!5414085 () Bool)

(declare-fun res!2302957 () Bool)

(declare-fun e!3355960 () Bool)

(assert (=> b!5414085 (=> (not res!2302957) (not e!3355960))))

(declare-fun lt!2207993 () Option!15305)

(assert (=> b!5414085 (= res!2302957 (matchR!7379 (regOne!30900 r!7292) (_1!35696 (get!21294 lt!2207993))))))

(declare-fun b!5414086 () Bool)

(assert (=> b!5414086 (= e!3355960 (= (++!13561 (_1!35696 (get!21294 lt!2207993)) (_2!35696 (get!21294 lt!2207993))) s!2326))))

(declare-fun b!5414087 () Bool)

(declare-fun e!3355959 () Bool)

(assert (=> b!5414087 (= e!3355959 (not (isDefined!12008 lt!2207993)))))

(declare-fun b!5414088 () Bool)

(declare-fun e!3355963 () Option!15305)

(assert (=> b!5414088 (= e!3355963 (Some!15304 (tuple2!64787 Nil!61757 s!2326)))))

(declare-fun b!5414090 () Bool)

(declare-fun lt!2207992 () Unit!154298)

(declare-fun lt!2207994 () Unit!154298)

(assert (=> b!5414090 (= lt!2207992 lt!2207994)))

(assert (=> b!5414090 (= (++!13561 (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326)) s!2326)))

(assert (=> b!5414090 (= lt!2207994 (lemmaMoveElementToOtherListKeepsConcatEq!1842 Nil!61757 (h!68205 s!2326) (t!375104 s!2326) s!2326))))

(declare-fun e!3355962 () Option!15305)

(assert (=> b!5414090 (= e!3355962 (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326) s!2326))))

(declare-fun b!5414091 () Bool)

(assert (=> b!5414091 (= e!3355963 e!3355962)))

(declare-fun c!943965 () Bool)

(assert (=> b!5414091 (= c!943965 (is-Nil!61757 s!2326))))

(declare-fun d!1727681 () Bool)

(assert (=> d!1727681 e!3355959))

(declare-fun res!2302959 () Bool)

(assert (=> d!1727681 (=> res!2302959 e!3355959)))

(assert (=> d!1727681 (= res!2302959 e!3355960)))

(declare-fun res!2302956 () Bool)

(assert (=> d!1727681 (=> (not res!2302956) (not e!3355960))))

(assert (=> d!1727681 (= res!2302956 (isDefined!12008 lt!2207993))))

(assert (=> d!1727681 (= lt!2207993 e!3355963)))

(declare-fun c!943966 () Bool)

(declare-fun e!3355961 () Bool)

(assert (=> d!1727681 (= c!943966 e!3355961)))

(declare-fun res!2302955 () Bool)

(assert (=> d!1727681 (=> (not res!2302955) (not e!3355961))))

(assert (=> d!1727681 (= res!2302955 (matchR!7379 (regOne!30900 r!7292) Nil!61757))))

(assert (=> d!1727681 (validRegex!6930 (regOne!30900 r!7292))))

(assert (=> d!1727681 (= (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326) lt!2207993)))

(declare-fun b!5414089 () Bool)

(assert (=> b!5414089 (= e!3355962 None!15304)))

(declare-fun b!5414092 () Bool)

(declare-fun res!2302958 () Bool)

(assert (=> b!5414092 (=> (not res!2302958) (not e!3355960))))

(assert (=> b!5414092 (= res!2302958 (matchR!7379 (regTwo!30900 r!7292) (_2!35696 (get!21294 lt!2207993))))))

(declare-fun b!5414093 () Bool)

(assert (=> b!5414093 (= e!3355961 (matchR!7379 (regTwo!30900 r!7292) s!2326))))

(assert (= (and d!1727681 res!2302955) b!5414093))

(assert (= (and d!1727681 c!943966) b!5414088))

(assert (= (and d!1727681 (not c!943966)) b!5414091))

(assert (= (and b!5414091 c!943965) b!5414089))

(assert (= (and b!5414091 (not c!943965)) b!5414090))

(assert (= (and d!1727681 res!2302956) b!5414085))

(assert (= (and b!5414085 res!2302957) b!5414092))

(assert (= (and b!5414092 res!2302958) b!5414086))

(assert (= (and d!1727681 (not res!2302959)) b!5414087))

(declare-fun m!6438148 () Bool)

(assert (=> d!1727681 m!6438148))

(declare-fun m!6438150 () Bool)

(assert (=> d!1727681 m!6438150))

(declare-fun m!6438152 () Bool)

(assert (=> d!1727681 m!6438152))

(declare-fun m!6438154 () Bool)

(assert (=> b!5414086 m!6438154))

(declare-fun m!6438156 () Bool)

(assert (=> b!5414086 m!6438156))

(assert (=> b!5414092 m!6438154))

(declare-fun m!6438158 () Bool)

(assert (=> b!5414092 m!6438158))

(assert (=> b!5414087 m!6438148))

(assert (=> b!5414090 m!6438122))

(assert (=> b!5414090 m!6438122))

(assert (=> b!5414090 m!6438124))

(assert (=> b!5414090 m!6438126))

(assert (=> b!5414090 m!6438122))

(declare-fun m!6438160 () Bool)

(assert (=> b!5414090 m!6438160))

(declare-fun m!6438162 () Bool)

(assert (=> b!5414093 m!6438162))

(assert (=> b!5414085 m!6438154))

(declare-fun m!6438164 () Bool)

(assert (=> b!5414085 m!6438164))

(assert (=> b!5413693 d!1727681))

(declare-fun d!1727683 () Bool)

(declare-fun choose!40919 (Int) Bool)

(assert (=> d!1727683 (= (Exists!2375 lambda!282895) (choose!40919 lambda!282895))))

(declare-fun bs!1250484 () Bool)

(assert (= bs!1250484 d!1727683))

(declare-fun m!6438166 () Bool)

(assert (=> bs!1250484 m!6438166))

(assert (=> b!5413693 d!1727683))

(declare-fun d!1727685 () Bool)

(assert (=> d!1727685 (= (Exists!2375 lambda!282894) (choose!40919 lambda!282894))))

(declare-fun bs!1250485 () Bool)

(assert (= bs!1250485 d!1727685))

(declare-fun m!6438168 () Bool)

(assert (=> bs!1250485 m!6438168))

(assert (=> b!5413693 d!1727685))

(declare-fun bs!1250486 () Bool)

(declare-fun d!1727687 () Bool)

(assert (= bs!1250486 (and d!1727687 b!5413689)))

(declare-fun lambda!282957 () Int)

(assert (=> bs!1250486 (not (= lambda!282957 lambda!282903))))

(assert (=> bs!1250486 (not (= lambda!282957 lambda!282902))))

(declare-fun bs!1250487 () Bool)

(assert (= bs!1250487 (and d!1727687 b!5413685)))

(assert (=> bs!1250487 (= (= (regOne!30900 r!7292) lt!2207723) (= lambda!282957 lambda!282899))))

(assert (=> bs!1250487 (not (= lambda!282957 lambda!282900))))

(assert (=> bs!1250486 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!282957 lambda!282901))))

(declare-fun bs!1250488 () Bool)

(assert (= bs!1250488 (and d!1727687 b!5413693)))

(assert (=> bs!1250488 (= lambda!282957 lambda!282894)))

(assert (=> bs!1250488 (not (= lambda!282957 lambda!282895))))

(assert (=> d!1727687 true))

(assert (=> d!1727687 true))

(assert (=> d!1727687 true))

(assert (=> d!1727687 (= (isDefined!12008 (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326)) (Exists!2375 lambda!282957))))

(declare-fun lt!2207997 () Unit!154298)

(declare-fun choose!40920 (Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727687 (= lt!2207997 (choose!40920 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326))))

(assert (=> d!1727687 (validRegex!6930 (regOne!30900 r!7292))))

(assert (=> d!1727687 (= (lemmaFindConcatSeparationEquivalentToExists!1483 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326) lt!2207997)))

(declare-fun bs!1250489 () Bool)

(assert (= bs!1250489 d!1727687))

(declare-fun m!6438170 () Bool)

(assert (=> bs!1250489 m!6438170))

(assert (=> bs!1250489 m!6437752))

(assert (=> bs!1250489 m!6437752))

(assert (=> bs!1250489 m!6437754))

(assert (=> bs!1250489 m!6438152))

(declare-fun m!6438172 () Bool)

(assert (=> bs!1250489 m!6438172))

(assert (=> b!5413693 d!1727687))

(declare-fun bs!1250490 () Bool)

(declare-fun d!1727689 () Bool)

(assert (= bs!1250490 (and d!1727689 b!5413689)))

(declare-fun lambda!282962 () Int)

(assert (=> bs!1250490 (not (= lambda!282962 lambda!282903))))

(assert (=> bs!1250490 (not (= lambda!282962 lambda!282902))))

(declare-fun bs!1250491 () Bool)

(assert (= bs!1250491 (and d!1727689 b!5413685)))

(assert (=> bs!1250491 (= (= (regOne!30900 r!7292) lt!2207723) (= lambda!282962 lambda!282899))))

(assert (=> bs!1250490 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!282962 lambda!282901))))

(declare-fun bs!1250492 () Bool)

(assert (= bs!1250492 (and d!1727689 b!5413693)))

(assert (=> bs!1250492 (= lambda!282962 lambda!282894)))

(assert (=> bs!1250492 (not (= lambda!282962 lambda!282895))))

(declare-fun bs!1250493 () Bool)

(assert (= bs!1250493 (and d!1727689 d!1727687)))

(assert (=> bs!1250493 (= lambda!282962 lambda!282957)))

(assert (=> bs!1250491 (not (= lambda!282962 lambda!282900))))

(assert (=> d!1727689 true))

(assert (=> d!1727689 true))

(assert (=> d!1727689 true))

(declare-fun lambda!282963 () Int)

(assert (=> bs!1250490 (not (= lambda!282963 lambda!282903))))

(assert (=> bs!1250490 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!282963 lambda!282902))))

(assert (=> bs!1250490 (not (= lambda!282963 lambda!282901))))

(assert (=> bs!1250492 (not (= lambda!282963 lambda!282894))))

(assert (=> bs!1250492 (= lambda!282963 lambda!282895)))

(declare-fun bs!1250494 () Bool)

(assert (= bs!1250494 d!1727689))

(assert (=> bs!1250494 (not (= lambda!282963 lambda!282962))))

(assert (=> bs!1250491 (not (= lambda!282963 lambda!282899))))

(assert (=> bs!1250493 (not (= lambda!282963 lambda!282957))))

(assert (=> bs!1250491 (= (= (regOne!30900 r!7292) lt!2207723) (= lambda!282963 lambda!282900))))

(assert (=> d!1727689 true))

(assert (=> d!1727689 true))

(assert (=> d!1727689 true))

(assert (=> d!1727689 (= (Exists!2375 lambda!282962) (Exists!2375 lambda!282963))))

(declare-fun lt!2208000 () Unit!154298)

(declare-fun choose!40921 (Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727689 (= lt!2208000 (choose!40921 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326))))

(assert (=> d!1727689 (validRegex!6930 (regOne!30900 r!7292))))

(assert (=> d!1727689 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 (regOne!30900 r!7292) (regTwo!30900 r!7292) s!2326) lt!2208000)))

(declare-fun m!6438174 () Bool)

(assert (=> bs!1250494 m!6438174))

(declare-fun m!6438176 () Bool)

(assert (=> bs!1250494 m!6438176))

(declare-fun m!6438178 () Bool)

(assert (=> bs!1250494 m!6438178))

(assert (=> bs!1250494 m!6438152))

(assert (=> b!5413693 d!1727689))

(declare-fun d!1727691 () Bool)

(assert (=> d!1727691 (= (isDefined!12008 (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326)) (not (isEmpty!33755 (findConcatSeparation!1719 (regOne!30900 r!7292) (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326))))))

(declare-fun bs!1250495 () Bool)

(assert (= bs!1250495 d!1727691))

(assert (=> bs!1250495 m!6437752))

(declare-fun m!6438180 () Bool)

(assert (=> bs!1250495 m!6438180))

(assert (=> b!5413693 d!1727691))

(declare-fun d!1727693 () Bool)

(declare-fun c!943967 () Bool)

(assert (=> d!1727693 (= c!943967 (isEmpty!33754 (t!375104 s!2326)))))

(declare-fun e!3355970 () Bool)

(assert (=> d!1727693 (= (matchZipper!1438 lt!2207713 (t!375104 s!2326)) e!3355970)))

(declare-fun b!5414106 () Bool)

(assert (=> b!5414106 (= e!3355970 (nullableZipper!1447 lt!2207713))))

(declare-fun b!5414107 () Bool)

(assert (=> b!5414107 (= e!3355970 (matchZipper!1438 (derivationStepZipper!1433 lt!2207713 (head!11611 (t!375104 s!2326))) (tail!10708 (t!375104 s!2326))))))

(assert (= (and d!1727693 c!943967) b!5414106))

(assert (= (and d!1727693 (not c!943967)) b!5414107))

(assert (=> d!1727693 m!6437976))

(declare-fun m!6438182 () Bool)

(assert (=> b!5414106 m!6438182))

(assert (=> b!5414107 m!6437980))

(assert (=> b!5414107 m!6437980))

(declare-fun m!6438184 () Bool)

(assert (=> b!5414107 m!6438184))

(assert (=> b!5414107 m!6437984))

(assert (=> b!5414107 m!6438184))

(assert (=> b!5414107 m!6437984))

(declare-fun m!6438186 () Bool)

(assert (=> b!5414107 m!6438186))

(assert (=> b!5413653 d!1727693))

(declare-fun d!1727695 () Bool)

(declare-fun c!943968 () Bool)

(assert (=> d!1727695 (= c!943968 (isEmpty!33754 s!2326))))

(declare-fun e!3355971 () Bool)

(assert (=> d!1727695 (= (matchZipper!1438 lt!2207741 s!2326) e!3355971)))

(declare-fun b!5414108 () Bool)

(assert (=> b!5414108 (= e!3355971 (nullableZipper!1447 lt!2207741))))

(declare-fun b!5414109 () Bool)

(assert (=> b!5414109 (= e!3355971 (matchZipper!1438 (derivationStepZipper!1433 lt!2207741 (head!11611 s!2326)) (tail!10708 s!2326)))))

(assert (= (and d!1727695 c!943968) b!5414108))

(assert (= (and d!1727695 (not c!943968)) b!5414109))

(assert (=> d!1727695 m!6438020))

(declare-fun m!6438188 () Bool)

(assert (=> b!5414108 m!6438188))

(assert (=> b!5414109 m!6438024))

(assert (=> b!5414109 m!6438024))

(declare-fun m!6438190 () Bool)

(assert (=> b!5414109 m!6438190))

(assert (=> b!5414109 m!6438028))

(assert (=> b!5414109 m!6438190))

(assert (=> b!5414109 m!6438028))

(declare-fun m!6438192 () Bool)

(assert (=> b!5414109 m!6438192))

(assert (=> b!5413653 d!1727695))

(declare-fun bs!1250496 () Bool)

(declare-fun d!1727697 () Bool)

(assert (= bs!1250496 (and d!1727697 b!5413671)))

(declare-fun lambda!282966 () Int)

(assert (=> bs!1250496 (= lambda!282966 lambda!282898)))

(declare-fun b!5414130 () Bool)

(declare-fun e!3355989 () Bool)

(declare-fun lt!2208003 () Regex!15194)

(declare-fun head!11612 (List!61882) Regex!15194)

(assert (=> b!5414130 (= e!3355989 (= lt!2208003 (head!11612 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414131 () Bool)

(declare-fun isConcat!502 (Regex!15194) Bool)

(assert (=> b!5414131 (= e!3355989 (isConcat!502 lt!2208003))))

(declare-fun b!5414132 () Bool)

(declare-fun e!3355984 () Regex!15194)

(assert (=> b!5414132 (= e!3355984 (h!68206 (exprs!5078 (h!68207 zl!343))))))

(declare-fun b!5414133 () Bool)

(declare-fun e!3355987 () Regex!15194)

(assert (=> b!5414133 (= e!3355987 (Concat!24039 (h!68206 (exprs!5078 (h!68207 zl!343))) (generalisedConcat!863 (t!375105 (exprs!5078 (h!68207 zl!343))))))))

(declare-fun b!5414134 () Bool)

(assert (=> b!5414134 (= e!3355987 EmptyExpr!15194)))

(declare-fun b!5414135 () Bool)

(declare-fun e!3355986 () Bool)

(assert (=> b!5414135 (= e!3355986 e!3355989)))

(declare-fun c!943977 () Bool)

(declare-fun tail!10709 (List!61882) List!61882)

(assert (=> b!5414135 (= c!943977 (isEmpty!33750 (tail!10709 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414136 () Bool)

(declare-fun e!3355985 () Bool)

(assert (=> b!5414136 (= e!3355985 e!3355986)))

(declare-fun c!943978 () Bool)

(assert (=> b!5414136 (= c!943978 (isEmpty!33750 (exprs!5078 (h!68207 zl!343))))))

(assert (=> d!1727697 e!3355985))

(declare-fun res!2302976 () Bool)

(assert (=> d!1727697 (=> (not res!2302976) (not e!3355985))))

(assert (=> d!1727697 (= res!2302976 (validRegex!6930 lt!2208003))))

(assert (=> d!1727697 (= lt!2208003 e!3355984)))

(declare-fun c!943980 () Bool)

(declare-fun e!3355988 () Bool)

(assert (=> d!1727697 (= c!943980 e!3355988)))

(declare-fun res!2302977 () Bool)

(assert (=> d!1727697 (=> (not res!2302977) (not e!3355988))))

(assert (=> d!1727697 (= res!2302977 (is-Cons!61758 (exprs!5078 (h!68207 zl!343))))))

(declare-fun forall!14540 (List!61882 Int) Bool)

(assert (=> d!1727697 (forall!14540 (exprs!5078 (h!68207 zl!343)) lambda!282966)))

(assert (=> d!1727697 (= (generalisedConcat!863 (exprs!5078 (h!68207 zl!343))) lt!2208003)))

(declare-fun b!5414137 () Bool)

(assert (=> b!5414137 (= e!3355988 (isEmpty!33750 (t!375105 (exprs!5078 (h!68207 zl!343)))))))

(declare-fun b!5414138 () Bool)

(declare-fun isEmptyExpr!979 (Regex!15194) Bool)

(assert (=> b!5414138 (= e!3355986 (isEmptyExpr!979 lt!2208003))))

(declare-fun b!5414139 () Bool)

(assert (=> b!5414139 (= e!3355984 e!3355987)))

(declare-fun c!943979 () Bool)

(assert (=> b!5414139 (= c!943979 (is-Cons!61758 (exprs!5078 (h!68207 zl!343))))))

(assert (= (and d!1727697 res!2302977) b!5414137))

(assert (= (and d!1727697 c!943980) b!5414132))

(assert (= (and d!1727697 (not c!943980)) b!5414139))

(assert (= (and b!5414139 c!943979) b!5414133))

(assert (= (and b!5414139 (not c!943979)) b!5414134))

(assert (= (and d!1727697 res!2302976) b!5414136))

(assert (= (and b!5414136 c!943978) b!5414138))

(assert (= (and b!5414136 (not c!943978)) b!5414135))

(assert (= (and b!5414135 c!943977) b!5414130))

(assert (= (and b!5414135 (not c!943977)) b!5414131))

(declare-fun m!6438194 () Bool)

(assert (=> b!5414131 m!6438194))

(declare-fun m!6438196 () Bool)

(assert (=> b!5414136 m!6438196))

(declare-fun m!6438198 () Bool)

(assert (=> d!1727697 m!6438198))

(declare-fun m!6438200 () Bool)

(assert (=> d!1727697 m!6438200))

(declare-fun m!6438202 () Bool)

(assert (=> b!5414138 m!6438202))

(declare-fun m!6438204 () Bool)

(assert (=> b!5414135 m!6438204))

(assert (=> b!5414135 m!6438204))

(declare-fun m!6438206 () Bool)

(assert (=> b!5414135 m!6438206))

(declare-fun m!6438208 () Bool)

(assert (=> b!5414133 m!6438208))

(declare-fun m!6438210 () Bool)

(assert (=> b!5414130 m!6438210))

(assert (=> b!5414137 m!6437676))

(assert (=> b!5413694 d!1727697))

(declare-fun d!1727699 () Bool)

(declare-fun lt!2208006 () Regex!15194)

(assert (=> d!1727699 (validRegex!6930 lt!2208006)))

(assert (=> d!1727699 (= lt!2208006 (generalisedUnion!1123 (unfocusZipperList!636 lt!2207773)))))

(assert (=> d!1727699 (= (unfocusZipper!936 lt!2207773) lt!2208006)))

(declare-fun bs!1250497 () Bool)

(assert (= bs!1250497 d!1727699))

(declare-fun m!6438212 () Bool)

(assert (=> bs!1250497 m!6438212))

(declare-fun m!6438214 () Bool)

(assert (=> bs!1250497 m!6438214))

(assert (=> bs!1250497 m!6438214))

(declare-fun m!6438216 () Bool)

(assert (=> bs!1250497 m!6438216))

(assert (=> b!5413674 d!1727699))

(declare-fun b!5414140 () Bool)

(declare-fun e!3355990 () (Set Context!9156))

(declare-fun call!387441 () (Set Context!9156))

(assert (=> b!5414140 (= e!3355990 call!387441)))

(declare-fun bm!387436 () Bool)

(declare-fun call!387444 () (Set Context!9156))

(declare-fun call!387445 () (Set Context!9156))

(assert (=> bm!387436 (= call!387444 call!387445)))

(declare-fun b!5414141 () Bool)

(declare-fun c!943984 () Bool)

(assert (=> b!5414141 (= c!943984 (is-Star!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun e!3355993 () (Set Context!9156))

(assert (=> b!5414141 (= e!3355990 e!3355993)))

(declare-fun call!387442 () (Set Context!9156))

(declare-fun c!943983 () Bool)

(declare-fun bm!387437 () Bool)

(declare-fun call!387443 () List!61882)

(assert (=> bm!387437 (= call!387442 (derivationStepZipperDown!642 (ite c!943983 (regOne!30901 (reg!15523 (regOne!30900 r!7292))) (regOne!30900 (reg!15523 (regOne!30900 r!7292)))) (ite c!943983 lt!2207720 (Context!9157 call!387443)) (h!68205 s!2326)))))

(declare-fun b!5414142 () Bool)

(declare-fun e!3355995 () (Set Context!9156))

(assert (=> b!5414142 (= e!3355995 (set.union call!387442 call!387444))))

(declare-fun bm!387438 () Bool)

(declare-fun call!387446 () List!61882)

(assert (=> bm!387438 (= call!387446 call!387443)))

(declare-fun d!1727701 () Bool)

(declare-fun c!943981 () Bool)

(assert (=> d!1727701 (= c!943981 (and (is-ElementMatch!15194 (reg!15523 (regOne!30900 r!7292))) (= (c!943892 (reg!15523 (regOne!30900 r!7292))) (h!68205 s!2326))))))

(declare-fun e!3355991 () (Set Context!9156))

(assert (=> d!1727701 (= (derivationStepZipperDown!642 (reg!15523 (regOne!30900 r!7292)) lt!2207720 (h!68205 s!2326)) e!3355991)))

(declare-fun b!5414143 () Bool)

(assert (=> b!5414143 (= e!3355991 (set.insert lt!2207720 (as set.empty (Set Context!9156))))))

(declare-fun bm!387439 () Bool)

(assert (=> bm!387439 (= call!387441 call!387444)))

(declare-fun b!5414144 () Bool)

(declare-fun e!3355992 () (Set Context!9156))

(assert (=> b!5414144 (= e!3355991 e!3355992)))

(assert (=> b!5414144 (= c!943983 (is-Union!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5414145 () Bool)

(declare-fun e!3355994 () Bool)

(assert (=> b!5414145 (= e!3355994 (nullable!5363 (regOne!30900 (reg!15523 (regOne!30900 r!7292)))))))

(declare-fun b!5414146 () Bool)

(assert (=> b!5414146 (= e!3355995 e!3355990)))

(declare-fun c!943982 () Bool)

(assert (=> b!5414146 (= c!943982 (is-Concat!24039 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5414147 () Bool)

(assert (=> b!5414147 (= e!3355992 (set.union call!387442 call!387445))))

(declare-fun b!5414148 () Bool)

(assert (=> b!5414148 (= e!3355993 call!387441)))

(declare-fun bm!387440 () Bool)

(declare-fun c!943985 () Bool)

(assert (=> bm!387440 (= call!387443 ($colon$colon!1497 (exprs!5078 lt!2207720) (ite (or c!943985 c!943982) (regTwo!30900 (reg!15523 (regOne!30900 r!7292))) (reg!15523 (regOne!30900 r!7292)))))))

(declare-fun b!5414149 () Bool)

(assert (=> b!5414149 (= e!3355993 (as set.empty (Set Context!9156)))))

(declare-fun b!5414150 () Bool)

(assert (=> b!5414150 (= c!943985 e!3355994)))

(declare-fun res!2302978 () Bool)

(assert (=> b!5414150 (=> (not res!2302978) (not e!3355994))))

(assert (=> b!5414150 (= res!2302978 (is-Concat!24039 (reg!15523 (regOne!30900 r!7292))))))

(assert (=> b!5414150 (= e!3355992 e!3355995)))

(declare-fun bm!387441 () Bool)

(assert (=> bm!387441 (= call!387445 (derivationStepZipperDown!642 (ite c!943983 (regTwo!30901 (reg!15523 (regOne!30900 r!7292))) (ite c!943985 (regTwo!30900 (reg!15523 (regOne!30900 r!7292))) (ite c!943982 (regOne!30900 (reg!15523 (regOne!30900 r!7292))) (reg!15523 (reg!15523 (regOne!30900 r!7292)))))) (ite (or c!943983 c!943985) lt!2207720 (Context!9157 call!387446)) (h!68205 s!2326)))))

(assert (= (and d!1727701 c!943981) b!5414143))

(assert (= (and d!1727701 (not c!943981)) b!5414144))

(assert (= (and b!5414144 c!943983) b!5414147))

(assert (= (and b!5414144 (not c!943983)) b!5414150))

(assert (= (and b!5414150 res!2302978) b!5414145))

(assert (= (and b!5414150 c!943985) b!5414142))

(assert (= (and b!5414150 (not c!943985)) b!5414146))

(assert (= (and b!5414146 c!943982) b!5414140))

(assert (= (and b!5414146 (not c!943982)) b!5414141))

(assert (= (and b!5414141 c!943984) b!5414148))

(assert (= (and b!5414141 (not c!943984)) b!5414149))

(assert (= (or b!5414140 b!5414148) bm!387438))

(assert (= (or b!5414140 b!5414148) bm!387439))

(assert (= (or b!5414142 bm!387438) bm!387440))

(assert (= (or b!5414142 bm!387439) bm!387436))

(assert (= (or b!5414147 bm!387436) bm!387441))

(assert (= (or b!5414147 b!5414142) bm!387437))

(assert (=> b!5414143 m!6437700))

(declare-fun m!6438218 () Bool)

(assert (=> bm!387441 m!6438218))

(declare-fun m!6438220 () Bool)

(assert (=> b!5414145 m!6438220))

(declare-fun m!6438222 () Bool)

(assert (=> bm!387440 m!6438222))

(declare-fun m!6438224 () Bool)

(assert (=> bm!387437 m!6438224))

(assert (=> b!5413669 d!1727701))

(declare-fun d!1727703 () Bool)

(declare-fun c!943986 () Bool)

(assert (=> d!1727703 (= c!943986 (isEmpty!33754 (_1!35696 lt!2207774)))))

(declare-fun e!3355996 () Bool)

(assert (=> d!1727703 (= (matchZipper!1438 lt!2207760 (_1!35696 lt!2207774)) e!3355996)))

(declare-fun b!5414151 () Bool)

(assert (=> b!5414151 (= e!3355996 (nullableZipper!1447 lt!2207760))))

(declare-fun b!5414152 () Bool)

(assert (=> b!5414152 (= e!3355996 (matchZipper!1438 (derivationStepZipper!1433 lt!2207760 (head!11611 (_1!35696 lt!2207774))) (tail!10708 (_1!35696 lt!2207774))))))

(assert (= (and d!1727703 c!943986) b!5414151))

(assert (= (and d!1727703 (not c!943986)) b!5414152))

(declare-fun m!6438226 () Bool)

(assert (=> d!1727703 m!6438226))

(declare-fun m!6438228 () Bool)

(assert (=> b!5414151 m!6438228))

(declare-fun m!6438230 () Bool)

(assert (=> b!5414152 m!6438230))

(assert (=> b!5414152 m!6438230))

(declare-fun m!6438232 () Bool)

(assert (=> b!5414152 m!6438232))

(declare-fun m!6438234 () Bool)

(assert (=> b!5414152 m!6438234))

(assert (=> b!5414152 m!6438232))

(assert (=> b!5414152 m!6438234))

(declare-fun m!6438236 () Bool)

(assert (=> b!5414152 m!6438236))

(assert (=> b!5413690 d!1727703))

(declare-fun bs!1250498 () Bool)

(declare-fun b!5414190 () Bool)

(assert (= bs!1250498 (and b!5414190 b!5413689)))

(declare-fun lambda!282971 () Int)

(assert (=> bs!1250498 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 lt!2207749) (reg!15523 (regOne!30900 r!7292))) (= lt!2207749 lt!2207765)) (= lambda!282971 lambda!282903))))

(assert (=> bs!1250498 (not (= lambda!282971 lambda!282902))))

(assert (=> bs!1250498 (not (= lambda!282971 lambda!282901))))

(declare-fun bs!1250499 () Bool)

(assert (= bs!1250499 (and b!5414190 b!5413693)))

(assert (=> bs!1250499 (not (= lambda!282971 lambda!282894))))

(declare-fun bs!1250500 () Bool)

(assert (= bs!1250500 (and b!5414190 d!1727689)))

(assert (=> bs!1250500 (not (= lambda!282971 lambda!282963))))

(assert (=> bs!1250499 (not (= lambda!282971 lambda!282895))))

(assert (=> bs!1250500 (not (= lambda!282971 lambda!282962))))

(declare-fun bs!1250501 () Bool)

(assert (= bs!1250501 (and b!5414190 b!5413685)))

(assert (=> bs!1250501 (not (= lambda!282971 lambda!282899))))

(declare-fun bs!1250502 () Bool)

(assert (= bs!1250502 (and b!5414190 d!1727687)))

(assert (=> bs!1250502 (not (= lambda!282971 lambda!282957))))

(assert (=> bs!1250501 (not (= lambda!282971 lambda!282900))))

(assert (=> b!5414190 true))

(assert (=> b!5414190 true))

(declare-fun bs!1250503 () Bool)

(declare-fun b!5414185 () Bool)

(assert (= bs!1250503 (and b!5414185 b!5413689)))

(declare-fun lambda!282972 () Int)

(assert (=> bs!1250503 (not (= lambda!282972 lambda!282903))))

(assert (=> bs!1250503 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 lt!2207749) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 lt!2207749) lt!2207765)) (= lambda!282972 lambda!282902))))

(declare-fun bs!1250504 () Bool)

(assert (= bs!1250504 (and b!5414185 b!5414190)))

(assert (=> bs!1250504 (not (= lambda!282972 lambda!282971))))

(assert (=> bs!1250503 (not (= lambda!282972 lambda!282901))))

(declare-fun bs!1250505 () Bool)

(assert (= bs!1250505 (and b!5414185 b!5413693)))

(assert (=> bs!1250505 (not (= lambda!282972 lambda!282894))))

(declare-fun bs!1250506 () Bool)

(assert (= bs!1250506 (and b!5414185 d!1727689)))

(assert (=> bs!1250506 (= (and (= (regOne!30900 lt!2207749) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207749) (regTwo!30900 r!7292))) (= lambda!282972 lambda!282963))))

(assert (=> bs!1250505 (= (and (= (regOne!30900 lt!2207749) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207749) (regTwo!30900 r!7292))) (= lambda!282972 lambda!282895))))

(assert (=> bs!1250506 (not (= lambda!282972 lambda!282962))))

(declare-fun bs!1250507 () Bool)

(assert (= bs!1250507 (and b!5414185 b!5413685)))

(assert (=> bs!1250507 (not (= lambda!282972 lambda!282899))))

(declare-fun bs!1250508 () Bool)

(assert (= bs!1250508 (and b!5414185 d!1727687)))

(assert (=> bs!1250508 (not (= lambda!282972 lambda!282957))))

(assert (=> bs!1250507 (= (and (= (regOne!30900 lt!2207749) lt!2207723) (= (regTwo!30900 lt!2207749) (regTwo!30900 r!7292))) (= lambda!282972 lambda!282900))))

(assert (=> b!5414185 true))

(assert (=> b!5414185 true))

(declare-fun call!387451 () Bool)

(declare-fun c!943995 () Bool)

(declare-fun bm!387446 () Bool)

(assert (=> bm!387446 (= call!387451 (Exists!2375 (ite c!943995 lambda!282971 lambda!282972)))))

(declare-fun e!3356015 () Bool)

(assert (=> b!5414185 (= e!3356015 call!387451)))

(declare-fun b!5414186 () Bool)

(declare-fun c!943996 () Bool)

(assert (=> b!5414186 (= c!943996 (is-Union!15194 lt!2207749))))

(declare-fun e!3356018 () Bool)

(declare-fun e!3356016 () Bool)

(assert (=> b!5414186 (= e!3356018 e!3356016)))

(declare-fun b!5414187 () Bool)

(assert (=> b!5414187 (= e!3356016 e!3356015)))

(assert (=> b!5414187 (= c!943995 (is-Star!15194 lt!2207749))))

(declare-fun b!5414188 () Bool)

(assert (=> b!5414188 (= e!3356018 (= s!2326 (Cons!61757 (c!943892 lt!2207749) Nil!61757)))))

(declare-fun bm!387447 () Bool)

(declare-fun call!387452 () Bool)

(assert (=> bm!387447 (= call!387452 (isEmpty!33754 s!2326))))

(declare-fun b!5414189 () Bool)

(declare-fun c!943997 () Bool)

(assert (=> b!5414189 (= c!943997 (is-ElementMatch!15194 lt!2207749))))

(declare-fun e!3356020 () Bool)

(assert (=> b!5414189 (= e!3356020 e!3356018)))

(declare-fun e!3356021 () Bool)

(assert (=> b!5414190 (= e!3356021 call!387451)))

(declare-fun b!5414192 () Bool)

(declare-fun e!3356017 () Bool)

(assert (=> b!5414192 (= e!3356016 e!3356017)))

(declare-fun res!2302996 () Bool)

(assert (=> b!5414192 (= res!2302996 (matchRSpec!2297 (regOne!30901 lt!2207749) s!2326))))

(assert (=> b!5414192 (=> res!2302996 e!3356017)))

(declare-fun b!5414193 () Bool)

(declare-fun e!3356019 () Bool)

(assert (=> b!5414193 (= e!3356019 e!3356020)))

(declare-fun res!2302997 () Bool)

(assert (=> b!5414193 (= res!2302997 (not (is-EmptyLang!15194 lt!2207749)))))

(assert (=> b!5414193 (=> (not res!2302997) (not e!3356020))))

(declare-fun b!5414194 () Bool)

(assert (=> b!5414194 (= e!3356017 (matchRSpec!2297 (regTwo!30901 lt!2207749) s!2326))))

(declare-fun b!5414195 () Bool)

(declare-fun res!2302995 () Bool)

(assert (=> b!5414195 (=> res!2302995 e!3356021)))

(assert (=> b!5414195 (= res!2302995 call!387452)))

(assert (=> b!5414195 (= e!3356015 e!3356021)))

(declare-fun b!5414191 () Bool)

(assert (=> b!5414191 (= e!3356019 call!387452)))

(declare-fun d!1727705 () Bool)

(declare-fun c!943998 () Bool)

(assert (=> d!1727705 (= c!943998 (is-EmptyExpr!15194 lt!2207749))))

(assert (=> d!1727705 (= (matchRSpec!2297 lt!2207749 s!2326) e!3356019)))

(assert (= (and d!1727705 c!943998) b!5414191))

(assert (= (and d!1727705 (not c!943998)) b!5414193))

(assert (= (and b!5414193 res!2302997) b!5414189))

(assert (= (and b!5414189 c!943997) b!5414188))

(assert (= (and b!5414189 (not c!943997)) b!5414186))

(assert (= (and b!5414186 c!943996) b!5414192))

(assert (= (and b!5414186 (not c!943996)) b!5414187))

(assert (= (and b!5414192 (not res!2302996)) b!5414194))

(assert (= (and b!5414187 c!943995) b!5414195))

(assert (= (and b!5414187 (not c!943995)) b!5414185))

(assert (= (and b!5414195 (not res!2302995)) b!5414190))

(assert (= (or b!5414190 b!5414185) bm!387446))

(assert (= (or b!5414191 b!5414195) bm!387447))

(declare-fun m!6438238 () Bool)

(assert (=> bm!387446 m!6438238))

(assert (=> bm!387447 m!6438020))

(declare-fun m!6438240 () Bool)

(assert (=> b!5414192 m!6438240))

(declare-fun m!6438242 () Bool)

(assert (=> b!5414194 m!6438242))

(assert (=> b!5413670 d!1727705))

(declare-fun b!5414224 () Bool)

(declare-fun e!3356037 () Bool)

(declare-fun e!3356036 () Bool)

(assert (=> b!5414224 (= e!3356037 e!3356036)))

(declare-fun res!2303017 () Bool)

(assert (=> b!5414224 (=> (not res!2303017) (not e!3356036))))

(declare-fun lt!2208009 () Bool)

(assert (=> b!5414224 (= res!2303017 (not lt!2208009))))

(declare-fun b!5414225 () Bool)

(declare-fun res!2303020 () Bool)

(declare-fun e!3356041 () Bool)

(assert (=> b!5414225 (=> (not res!2303020) (not e!3356041))))

(declare-fun call!387455 () Bool)

(assert (=> b!5414225 (= res!2303020 (not call!387455))))

(declare-fun b!5414226 () Bool)

(declare-fun res!2303019 () Bool)

(declare-fun e!3356038 () Bool)

(assert (=> b!5414226 (=> res!2303019 e!3356038)))

(assert (=> b!5414226 (= res!2303019 (not (isEmpty!33754 (tail!10708 s!2326))))))

(declare-fun d!1727707 () Bool)

(declare-fun e!3356042 () Bool)

(assert (=> d!1727707 e!3356042))

(declare-fun c!944005 () Bool)

(assert (=> d!1727707 (= c!944005 (is-EmptyExpr!15194 lt!2207749))))

(declare-fun e!3356040 () Bool)

(assert (=> d!1727707 (= lt!2208009 e!3356040)))

(declare-fun c!944007 () Bool)

(assert (=> d!1727707 (= c!944007 (isEmpty!33754 s!2326))))

(assert (=> d!1727707 (validRegex!6930 lt!2207749)))

(assert (=> d!1727707 (= (matchR!7379 lt!2207749 s!2326) lt!2208009)))

(declare-fun b!5414227 () Bool)

(declare-fun res!2303021 () Bool)

(assert (=> b!5414227 (=> (not res!2303021) (not e!3356041))))

(assert (=> b!5414227 (= res!2303021 (isEmpty!33754 (tail!10708 s!2326)))))

(declare-fun b!5414228 () Bool)

(declare-fun e!3356039 () Bool)

(assert (=> b!5414228 (= e!3356039 (not lt!2208009))))

(declare-fun b!5414229 () Bool)

(declare-fun res!2303014 () Bool)

(assert (=> b!5414229 (=> res!2303014 e!3356037)))

(assert (=> b!5414229 (= res!2303014 (not (is-ElementMatch!15194 lt!2207749)))))

(assert (=> b!5414229 (= e!3356039 e!3356037)))

(declare-fun b!5414230 () Bool)

(assert (=> b!5414230 (= e!3356041 (= (head!11611 s!2326) (c!943892 lt!2207749)))))

(declare-fun bm!387450 () Bool)

(assert (=> bm!387450 (= call!387455 (isEmpty!33754 s!2326))))

(declare-fun b!5414231 () Bool)

(declare-fun res!2303016 () Bool)

(assert (=> b!5414231 (=> res!2303016 e!3356037)))

(assert (=> b!5414231 (= res!2303016 e!3356041)))

(declare-fun res!2303015 () Bool)

(assert (=> b!5414231 (=> (not res!2303015) (not e!3356041))))

(assert (=> b!5414231 (= res!2303015 lt!2208009)))

(declare-fun b!5414232 () Bool)

(assert (=> b!5414232 (= e!3356038 (not (= (head!11611 s!2326) (c!943892 lt!2207749))))))

(declare-fun b!5414233 () Bool)

(assert (=> b!5414233 (= e!3356036 e!3356038)))

(declare-fun res!2303018 () Bool)

(assert (=> b!5414233 (=> res!2303018 e!3356038)))

(assert (=> b!5414233 (= res!2303018 call!387455)))

(declare-fun b!5414234 () Bool)

(assert (=> b!5414234 (= e!3356042 (= lt!2208009 call!387455))))

(declare-fun b!5414235 () Bool)

(assert (=> b!5414235 (= e!3356040 (nullable!5363 lt!2207749))))

(declare-fun b!5414236 () Bool)

(assert (=> b!5414236 (= e!3356042 e!3356039)))

(declare-fun c!944006 () Bool)

(assert (=> b!5414236 (= c!944006 (is-EmptyLang!15194 lt!2207749))))

(declare-fun b!5414237 () Bool)

(declare-fun derivativeStep!4268 (Regex!15194 C!30658) Regex!15194)

(assert (=> b!5414237 (= e!3356040 (matchR!7379 (derivativeStep!4268 lt!2207749 (head!11611 s!2326)) (tail!10708 s!2326)))))

(assert (= (and d!1727707 c!944007) b!5414235))

(assert (= (and d!1727707 (not c!944007)) b!5414237))

(assert (= (and d!1727707 c!944005) b!5414234))

(assert (= (and d!1727707 (not c!944005)) b!5414236))

(assert (= (and b!5414236 c!944006) b!5414228))

(assert (= (and b!5414236 (not c!944006)) b!5414229))

(assert (= (and b!5414229 (not res!2303014)) b!5414231))

(assert (= (and b!5414231 res!2303015) b!5414225))

(assert (= (and b!5414225 res!2303020) b!5414227))

(assert (= (and b!5414227 res!2303021) b!5414230))

(assert (= (and b!5414231 (not res!2303016)) b!5414224))

(assert (= (and b!5414224 res!2303017) b!5414233))

(assert (= (and b!5414233 (not res!2303018)) b!5414226))

(assert (= (and b!5414226 (not res!2303019)) b!5414232))

(assert (= (or b!5414234 b!5414225 b!5414233) bm!387450))

(declare-fun m!6438244 () Bool)

(assert (=> b!5414235 m!6438244))

(assert (=> b!5414227 m!6438028))

(assert (=> b!5414227 m!6438028))

(declare-fun m!6438246 () Bool)

(assert (=> b!5414227 m!6438246))

(assert (=> b!5414230 m!6438024))

(assert (=> d!1727707 m!6438020))

(declare-fun m!6438248 () Bool)

(assert (=> d!1727707 m!6438248))

(assert (=> b!5414232 m!6438024))

(assert (=> b!5414237 m!6438024))

(assert (=> b!5414237 m!6438024))

(declare-fun m!6438250 () Bool)

(assert (=> b!5414237 m!6438250))

(assert (=> b!5414237 m!6438028))

(assert (=> b!5414237 m!6438250))

(assert (=> b!5414237 m!6438028))

(declare-fun m!6438252 () Bool)

(assert (=> b!5414237 m!6438252))

(assert (=> bm!387450 m!6438020))

(assert (=> b!5414226 m!6438028))

(assert (=> b!5414226 m!6438028))

(assert (=> b!5414226 m!6438246))

(assert (=> b!5413670 d!1727707))

(declare-fun d!1727709 () Bool)

(assert (=> d!1727709 (= (matchR!7379 lt!2207749 s!2326) (matchRSpec!2297 lt!2207749 s!2326))))

(declare-fun lt!2208012 () Unit!154298)

(declare-fun choose!40922 (Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727709 (= lt!2208012 (choose!40922 lt!2207749 s!2326))))

(assert (=> d!1727709 (validRegex!6930 lt!2207749)))

(assert (=> d!1727709 (= (mainMatchTheorem!2297 lt!2207749 s!2326) lt!2208012)))

(declare-fun bs!1250509 () Bool)

(assert (= bs!1250509 d!1727709))

(assert (=> bs!1250509 m!6437628))

(assert (=> bs!1250509 m!6437626))

(declare-fun m!6438254 () Bool)

(assert (=> bs!1250509 m!6438254))

(assert (=> bs!1250509 m!6438248))

(assert (=> b!5413670 d!1727709))

(declare-fun d!1727711 () Bool)

(declare-fun lt!2208013 () Regex!15194)

(assert (=> d!1727711 (validRegex!6930 lt!2208013)))

(assert (=> d!1727711 (= lt!2208013 (generalisedUnion!1123 (unfocusZipperList!636 (Cons!61759 lt!2207745 Nil!61759))))))

(assert (=> d!1727711 (= (unfocusZipper!936 (Cons!61759 lt!2207745 Nil!61759)) lt!2208013)))

(declare-fun bs!1250510 () Bool)

(assert (= bs!1250510 d!1727711))

(declare-fun m!6438256 () Bool)

(assert (=> bs!1250510 m!6438256))

(declare-fun m!6438258 () Bool)

(assert (=> bs!1250510 m!6438258))

(assert (=> bs!1250510 m!6438258))

(declare-fun m!6438260 () Bool)

(assert (=> bs!1250510 m!6438260))

(assert (=> b!5413650 d!1727711))

(declare-fun bs!1250511 () Bool)

(declare-fun d!1727713 () Bool)

(assert (= bs!1250511 (and d!1727713 b!5413671)))

(declare-fun lambda!282977 () Int)

(assert (=> bs!1250511 (= (= (exprs!5078 lt!2207720) lt!2207737) (= lambda!282977 lambda!282897))))

(assert (=> d!1727713 true))

(assert (=> d!1727713 (= (appendTo!53 lt!2207760 lt!2207720) (map!14176 lt!2207760 lambda!282977))))

(declare-fun bs!1250512 () Bool)

(assert (= bs!1250512 d!1727713))

(declare-fun m!6438262 () Bool)

(assert (=> bs!1250512 m!6438262))

(assert (=> b!5413671 d!1727713))

(declare-fun d!1727715 () Bool)

(declare-fun choose!40923 ((Set Context!9156) Int) (Set Context!9156))

(assert (=> d!1727715 (= (map!14176 lt!2207760 lambda!282897) (choose!40923 lt!2207760 lambda!282897))))

(declare-fun bs!1250513 () Bool)

(assert (= bs!1250513 d!1727715))

(declare-fun m!6438264 () Bool)

(assert (=> bs!1250513 m!6438264))

(assert (=> b!5413671 d!1727715))

(declare-fun d!1727717 () Bool)

(assert (=> d!1727717 (forall!14540 (++!13562 lt!2207746 lt!2207737) lambda!282898)))

(declare-fun lt!2208018 () Unit!154298)

(declare-fun choose!40924 (List!61882 List!61882 Int) Unit!154298)

(assert (=> d!1727717 (= lt!2208018 (choose!40924 lt!2207746 lt!2207737 lambda!282898))))

(assert (=> d!1727717 (forall!14540 lt!2207746 lambda!282898)))

(assert (=> d!1727717 (= (lemmaConcatPreservesForall!219 lt!2207746 lt!2207737 lambda!282898) lt!2208018)))

(declare-fun bs!1250514 () Bool)

(assert (= bs!1250514 d!1727717))

(assert (=> bs!1250514 m!6437598))

(assert (=> bs!1250514 m!6437598))

(declare-fun m!6438266 () Bool)

(assert (=> bs!1250514 m!6438266))

(declare-fun m!6438268 () Bool)

(assert (=> bs!1250514 m!6438268))

(declare-fun m!6438270 () Bool)

(assert (=> bs!1250514 m!6438270))

(assert (=> b!5413671 d!1727717))

(declare-fun d!1727719 () Bool)

(declare-fun dynLambda!24334 (Int Context!9156) Context!9156)

(assert (=> d!1727719 (= (map!14176 lt!2207760 lambda!282897) (set.insert (dynLambda!24334 lambda!282897 lt!2207772) (as set.empty (Set Context!9156))))))

(declare-fun lt!2208021 () Unit!154298)

(declare-fun choose!40925 ((Set Context!9156) Context!9156 Int) Unit!154298)

(assert (=> d!1727719 (= lt!2208021 (choose!40925 lt!2207760 lt!2207772 lambda!282897))))

(assert (=> d!1727719 (= lt!2207760 (set.insert lt!2207772 (as set.empty (Set Context!9156))))))

(assert (=> d!1727719 (= (lemmaMapOnSingletonSet!53 lt!2207760 lt!2207772 lambda!282897) lt!2208021)))

(declare-fun b_lambda!206753 () Bool)

(assert (=> (not b_lambda!206753) (not d!1727719)))

(declare-fun bs!1250515 () Bool)

(assert (= bs!1250515 d!1727719))

(assert (=> bs!1250515 m!6437704))

(declare-fun m!6438272 () Bool)

(assert (=> bs!1250515 m!6438272))

(declare-fun m!6438274 () Bool)

(assert (=> bs!1250515 m!6438274))

(assert (=> bs!1250515 m!6437600))

(assert (=> bs!1250515 m!6438272))

(declare-fun m!6438276 () Bool)

(assert (=> bs!1250515 m!6438276))

(assert (=> b!5413671 d!1727719))

(declare-fun e!3356048 () Bool)

(declare-fun b!5414251 () Bool)

(declare-fun lt!2208024 () List!61882)

(assert (=> b!5414251 (= e!3356048 (or (not (= lt!2207737 Nil!61758)) (= lt!2208024 lt!2207746)))))

(declare-fun b!5414250 () Bool)

(declare-fun res!2303027 () Bool)

(assert (=> b!5414250 (=> (not res!2303027) (not e!3356048))))

(declare-fun size!39862 (List!61882) Int)

(assert (=> b!5414250 (= res!2303027 (= (size!39862 lt!2208024) (+ (size!39862 lt!2207746) (size!39862 lt!2207737))))))

(declare-fun b!5414249 () Bool)

(declare-fun e!3356047 () List!61882)

(assert (=> b!5414249 (= e!3356047 (Cons!61758 (h!68206 lt!2207746) (++!13562 (t!375105 lt!2207746) lt!2207737)))))

(declare-fun d!1727721 () Bool)

(assert (=> d!1727721 e!3356048))

(declare-fun res!2303026 () Bool)

(assert (=> d!1727721 (=> (not res!2303026) (not e!3356048))))

(declare-fun content!11090 (List!61882) (Set Regex!15194))

(assert (=> d!1727721 (= res!2303026 (= (content!11090 lt!2208024) (set.union (content!11090 lt!2207746) (content!11090 lt!2207737))))))

(assert (=> d!1727721 (= lt!2208024 e!3356047)))

(declare-fun c!944011 () Bool)

(assert (=> d!1727721 (= c!944011 (is-Nil!61758 lt!2207746))))

(assert (=> d!1727721 (= (++!13562 lt!2207746 lt!2207737) lt!2208024)))

(declare-fun b!5414248 () Bool)

(assert (=> b!5414248 (= e!3356047 lt!2207737)))

(assert (= (and d!1727721 c!944011) b!5414248))

(assert (= (and d!1727721 (not c!944011)) b!5414249))

(assert (= (and d!1727721 res!2303026) b!5414250))

(assert (= (and b!5414250 res!2303027) b!5414251))

(declare-fun m!6438278 () Bool)

(assert (=> b!5414250 m!6438278))

(declare-fun m!6438280 () Bool)

(assert (=> b!5414250 m!6438280))

(declare-fun m!6438282 () Bool)

(assert (=> b!5414250 m!6438282))

(declare-fun m!6438284 () Bool)

(assert (=> b!5414249 m!6438284))

(declare-fun m!6438286 () Bool)

(assert (=> d!1727721 m!6438286))

(declare-fun m!6438288 () Bool)

(assert (=> d!1727721 m!6438288))

(declare-fun m!6438290 () Bool)

(assert (=> d!1727721 m!6438290))

(assert (=> b!5413671 d!1727721))

(declare-fun bs!1250516 () Bool)

(declare-fun d!1727723 () Bool)

(assert (= bs!1250516 (and d!1727723 b!5413671)))

(declare-fun lambda!282980 () Int)

(assert (=> bs!1250516 (= lambda!282980 lambda!282898)))

(declare-fun bs!1250517 () Bool)

(assert (= bs!1250517 (and d!1727723 d!1727697)))

(assert (=> bs!1250517 (= lambda!282980 lambda!282966)))

(declare-fun b!5414272 () Bool)

(declare-fun e!3356061 () Regex!15194)

(assert (=> b!5414272 (= e!3356061 (Union!15194 (h!68206 (unfocusZipperList!636 zl!343)) (generalisedUnion!1123 (t!375105 (unfocusZipperList!636 zl!343)))))))

(declare-fun e!3356064 () Bool)

(assert (=> d!1727723 e!3356064))

(declare-fun res!2303033 () Bool)

(assert (=> d!1727723 (=> (not res!2303033) (not e!3356064))))

(declare-fun lt!2208027 () Regex!15194)

(assert (=> d!1727723 (= res!2303033 (validRegex!6930 lt!2208027))))

(declare-fun e!3356066 () Regex!15194)

(assert (=> d!1727723 (= lt!2208027 e!3356066)))

(declare-fun c!944020 () Bool)

(declare-fun e!3356062 () Bool)

(assert (=> d!1727723 (= c!944020 e!3356062)))

(declare-fun res!2303032 () Bool)

(assert (=> d!1727723 (=> (not res!2303032) (not e!3356062))))

(assert (=> d!1727723 (= res!2303032 (is-Cons!61758 (unfocusZipperList!636 zl!343)))))

(assert (=> d!1727723 (forall!14540 (unfocusZipperList!636 zl!343) lambda!282980)))

(assert (=> d!1727723 (= (generalisedUnion!1123 (unfocusZipperList!636 zl!343)) lt!2208027)))

(declare-fun b!5414273 () Bool)

(declare-fun e!3356063 () Bool)

(assert (=> b!5414273 (= e!3356064 e!3356063)))

(declare-fun c!944023 () Bool)

(assert (=> b!5414273 (= c!944023 (isEmpty!33750 (unfocusZipperList!636 zl!343)))))

(declare-fun b!5414274 () Bool)

(assert (=> b!5414274 (= e!3356062 (isEmpty!33750 (t!375105 (unfocusZipperList!636 zl!343))))))

(declare-fun b!5414275 () Bool)

(declare-fun e!3356065 () Bool)

(declare-fun isUnion!420 (Regex!15194) Bool)

(assert (=> b!5414275 (= e!3356065 (isUnion!420 lt!2208027))))

(declare-fun b!5414276 () Bool)

(assert (=> b!5414276 (= e!3356066 (h!68206 (unfocusZipperList!636 zl!343)))))

(declare-fun b!5414277 () Bool)

(assert (=> b!5414277 (= e!3356065 (= lt!2208027 (head!11612 (unfocusZipperList!636 zl!343))))))

(declare-fun b!5414278 () Bool)

(assert (=> b!5414278 (= e!3356061 EmptyLang!15194)))

(declare-fun b!5414279 () Bool)

(declare-fun isEmptyLang!988 (Regex!15194) Bool)

(assert (=> b!5414279 (= e!3356063 (isEmptyLang!988 lt!2208027))))

(declare-fun b!5414280 () Bool)

(assert (=> b!5414280 (= e!3356063 e!3356065)))

(declare-fun c!944022 () Bool)

(assert (=> b!5414280 (= c!944022 (isEmpty!33750 (tail!10709 (unfocusZipperList!636 zl!343))))))

(declare-fun b!5414281 () Bool)

(assert (=> b!5414281 (= e!3356066 e!3356061)))

(declare-fun c!944021 () Bool)

(assert (=> b!5414281 (= c!944021 (is-Cons!61758 (unfocusZipperList!636 zl!343)))))

(assert (= (and d!1727723 res!2303032) b!5414274))

(assert (= (and d!1727723 c!944020) b!5414276))

(assert (= (and d!1727723 (not c!944020)) b!5414281))

(assert (= (and b!5414281 c!944021) b!5414272))

(assert (= (and b!5414281 (not c!944021)) b!5414278))

(assert (= (and d!1727723 res!2303033) b!5414273))

(assert (= (and b!5414273 c!944023) b!5414279))

(assert (= (and b!5414273 (not c!944023)) b!5414280))

(assert (= (and b!5414280 c!944022) b!5414277))

(assert (= (and b!5414280 (not c!944022)) b!5414275))

(assert (=> b!5414277 m!6437608))

(declare-fun m!6438292 () Bool)

(assert (=> b!5414277 m!6438292))

(assert (=> b!5414280 m!6437608))

(declare-fun m!6438294 () Bool)

(assert (=> b!5414280 m!6438294))

(assert (=> b!5414280 m!6438294))

(declare-fun m!6438296 () Bool)

(assert (=> b!5414280 m!6438296))

(declare-fun m!6438298 () Bool)

(assert (=> b!5414279 m!6438298))

(declare-fun m!6438300 () Bool)

(assert (=> b!5414275 m!6438300))

(assert (=> b!5414273 m!6437608))

(declare-fun m!6438302 () Bool)

(assert (=> b!5414273 m!6438302))

(declare-fun m!6438304 () Bool)

(assert (=> b!5414272 m!6438304))

(declare-fun m!6438306 () Bool)

(assert (=> b!5414274 m!6438306))

(declare-fun m!6438308 () Bool)

(assert (=> d!1727723 m!6438308))

(assert (=> d!1727723 m!6437608))

(declare-fun m!6438310 () Bool)

(assert (=> d!1727723 m!6438310))

(assert (=> b!5413687 d!1727723))

(declare-fun bs!1250518 () Bool)

(declare-fun d!1727725 () Bool)

(assert (= bs!1250518 (and d!1727725 b!5413671)))

(declare-fun lambda!282983 () Int)

(assert (=> bs!1250518 (= lambda!282983 lambda!282898)))

(declare-fun bs!1250519 () Bool)

(assert (= bs!1250519 (and d!1727725 d!1727697)))

(assert (=> bs!1250519 (= lambda!282983 lambda!282966)))

(declare-fun bs!1250520 () Bool)

(assert (= bs!1250520 (and d!1727725 d!1727723)))

(assert (=> bs!1250520 (= lambda!282983 lambda!282980)))

(declare-fun lt!2208030 () List!61882)

(assert (=> d!1727725 (forall!14540 lt!2208030 lambda!282983)))

(declare-fun e!3356069 () List!61882)

(assert (=> d!1727725 (= lt!2208030 e!3356069)))

(declare-fun c!944026 () Bool)

(assert (=> d!1727725 (= c!944026 (is-Cons!61759 zl!343))))

(assert (=> d!1727725 (= (unfocusZipperList!636 zl!343) lt!2208030)))

(declare-fun b!5414286 () Bool)

(assert (=> b!5414286 (= e!3356069 (Cons!61758 (generalisedConcat!863 (exprs!5078 (h!68207 zl!343))) (unfocusZipperList!636 (t!375106 zl!343))))))

(declare-fun b!5414287 () Bool)

(assert (=> b!5414287 (= e!3356069 Nil!61758)))

(assert (= (and d!1727725 c!944026) b!5414286))

(assert (= (and d!1727725 (not c!944026)) b!5414287))

(declare-fun m!6438312 () Bool)

(assert (=> d!1727725 m!6438312))

(assert (=> b!5414286 m!6437734))

(declare-fun m!6438314 () Bool)

(assert (=> b!5414286 m!6438314))

(assert (=> b!5413687 d!1727725))

(declare-fun bs!1250521 () Bool)

(declare-fun d!1727727 () Bool)

(assert (= bs!1250521 (and d!1727727 b!5413689)))

(declare-fun lambda!282988 () Int)

(assert (=> bs!1250521 (not (= lambda!282988 lambda!282903))))

(assert (=> bs!1250521 (not (= lambda!282988 lambda!282902))))

(declare-fun bs!1250522 () Bool)

(assert (= bs!1250522 (and d!1727727 b!5414190)))

(assert (=> bs!1250522 (not (= lambda!282988 lambda!282971))))

(assert (=> bs!1250521 (= (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) lt!2207765) (= lambda!282988 lambda!282901))))

(declare-fun bs!1250523 () Bool)

(assert (= bs!1250523 (and d!1727727 b!5414185)))

(assert (=> bs!1250523 (not (= lambda!282988 lambda!282972))))

(declare-fun bs!1250524 () Bool)

(assert (= bs!1250524 (and d!1727727 b!5413693)))

(assert (=> bs!1250524 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) (regTwo!30900 r!7292))) (= lambda!282988 lambda!282894))))

(declare-fun bs!1250525 () Bool)

(assert (= bs!1250525 (and d!1727727 d!1727689)))

(assert (=> bs!1250525 (not (= lambda!282988 lambda!282963))))

(assert (=> bs!1250524 (not (= lambda!282988 lambda!282895))))

(assert (=> bs!1250525 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) (regTwo!30900 r!7292))) (= lambda!282988 lambda!282962))))

(declare-fun bs!1250526 () Bool)

(assert (= bs!1250526 (and d!1727727 b!5413685)))

(assert (=> bs!1250526 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) (regTwo!30900 r!7292))) (= lambda!282988 lambda!282899))))

(declare-fun bs!1250527 () Bool)

(assert (= bs!1250527 (and d!1727727 d!1727687)))

(assert (=> bs!1250527 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) (regTwo!30900 r!7292))) (= lambda!282988 lambda!282957))))

(assert (=> bs!1250526 (not (= lambda!282988 lambda!282900))))

(assert (=> d!1727727 true))

(assert (=> d!1727727 true))

(declare-fun lambda!282989 () Int)

(assert (=> bs!1250521 (= (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) lt!2207765) (= lambda!282989 lambda!282903))))

(assert (=> bs!1250521 (not (= lambda!282989 lambda!282902))))

(assert (=> bs!1250522 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (reg!15523 lt!2207749)) (= (Star!15194 (reg!15523 (regOne!30900 r!7292))) lt!2207749)) (= lambda!282989 lambda!282971))))

(assert (=> bs!1250521 (not (= lambda!282989 lambda!282901))))

(declare-fun bs!1250528 () Bool)

(assert (= bs!1250528 d!1727727))

(assert (=> bs!1250528 (not (= lambda!282989 lambda!282988))))

(assert (=> bs!1250523 (not (= lambda!282989 lambda!282972))))

(assert (=> bs!1250524 (not (= lambda!282989 lambda!282894))))

(assert (=> bs!1250525 (not (= lambda!282989 lambda!282963))))

(assert (=> bs!1250524 (not (= lambda!282989 lambda!282895))))

(assert (=> bs!1250525 (not (= lambda!282989 lambda!282962))))

(assert (=> bs!1250526 (not (= lambda!282989 lambda!282899))))

(assert (=> bs!1250527 (not (= lambda!282989 lambda!282957))))

(assert (=> bs!1250526 (not (= lambda!282989 lambda!282900))))

(assert (=> d!1727727 true))

(assert (=> d!1727727 true))

(assert (=> d!1727727 (= (Exists!2375 lambda!282988) (Exists!2375 lambda!282989))))

(declare-fun lt!2208033 () Unit!154298)

(declare-fun choose!40926 (Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727727 (= lt!2208033 (choose!40926 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207731)))))

(assert (=> d!1727727 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727727 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!405 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207731)) lt!2208033)))

(declare-fun m!6438316 () Bool)

(assert (=> bs!1250528 m!6438316))

(declare-fun m!6438318 () Bool)

(assert (=> bs!1250528 m!6438318))

(declare-fun m!6438320 () Bool)

(assert (=> bs!1250528 m!6438320))

(assert (=> bs!1250528 m!6437708))

(assert (=> b!5413689 d!1727727))

(declare-fun d!1727729 () Bool)

(assert (=> d!1727729 (= (Exists!2375 lambda!282901) (choose!40919 lambda!282901))))

(declare-fun bs!1250529 () Bool)

(assert (= bs!1250529 d!1727729))

(declare-fun m!6438322 () Bool)

(assert (=> bs!1250529 m!6438322))

(assert (=> b!5413689 d!1727729))

(declare-fun bs!1250530 () Bool)

(declare-fun b!5414303 () Bool)

(assert (= bs!1250530 (and b!5414303 b!5413689)))

(declare-fun lambda!282990 () Int)

(assert (=> bs!1250530 (= (and (= (reg!15523 lt!2207723) (reg!15523 (regOne!30900 r!7292))) (= lt!2207723 lt!2207765)) (= lambda!282990 lambda!282903))))

(assert (=> bs!1250530 (not (= lambda!282990 lambda!282902))))

(declare-fun bs!1250531 () Bool)

(assert (= bs!1250531 (and b!5414303 b!5414190)))

(assert (=> bs!1250531 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 lt!2207723) (reg!15523 lt!2207749)) (= lt!2207723 lt!2207749)) (= lambda!282990 lambda!282971))))

(assert (=> bs!1250530 (not (= lambda!282990 lambda!282901))))

(declare-fun bs!1250532 () Bool)

(assert (= bs!1250532 (and b!5414303 d!1727727)))

(assert (=> bs!1250532 (not (= lambda!282990 lambda!282988))))

(assert (=> bs!1250532 (= (and (= (reg!15523 lt!2207723) (reg!15523 (regOne!30900 r!7292))) (= lt!2207723 (Star!15194 (reg!15523 (regOne!30900 r!7292))))) (= lambda!282990 lambda!282989))))

(declare-fun bs!1250533 () Bool)

(assert (= bs!1250533 (and b!5414303 b!5414185)))

(assert (=> bs!1250533 (not (= lambda!282990 lambda!282972))))

(declare-fun bs!1250534 () Bool)

(assert (= bs!1250534 (and b!5414303 b!5413693)))

(assert (=> bs!1250534 (not (= lambda!282990 lambda!282894))))

(declare-fun bs!1250535 () Bool)

(assert (= bs!1250535 (and b!5414303 d!1727689)))

(assert (=> bs!1250535 (not (= lambda!282990 lambda!282963))))

(assert (=> bs!1250534 (not (= lambda!282990 lambda!282895))))

(assert (=> bs!1250535 (not (= lambda!282990 lambda!282962))))

(declare-fun bs!1250536 () Bool)

(assert (= bs!1250536 (and b!5414303 b!5413685)))

(assert (=> bs!1250536 (not (= lambda!282990 lambda!282899))))

(declare-fun bs!1250537 () Bool)

(assert (= bs!1250537 (and b!5414303 d!1727687)))

(assert (=> bs!1250537 (not (= lambda!282990 lambda!282957))))

(assert (=> bs!1250536 (not (= lambda!282990 lambda!282900))))

(assert (=> b!5414303 true))

(assert (=> b!5414303 true))

(declare-fun bs!1250538 () Bool)

(declare-fun b!5414298 () Bool)

(assert (= bs!1250538 (and b!5414298 b!5413689)))

(declare-fun lambda!282991 () Int)

(assert (=> bs!1250538 (not (= lambda!282991 lambda!282903))))

(assert (=> bs!1250538 (= (and (= (regOne!30900 lt!2207723) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 lt!2207723) lt!2207765)) (= lambda!282991 lambda!282902))))

(declare-fun bs!1250539 () Bool)

(assert (= bs!1250539 (and b!5414298 b!5414190)))

(assert (=> bs!1250539 (not (= lambda!282991 lambda!282971))))

(assert (=> bs!1250538 (not (= lambda!282991 lambda!282901))))

(declare-fun bs!1250540 () Bool)

(assert (= bs!1250540 (and b!5414298 d!1727727)))

(assert (=> bs!1250540 (not (= lambda!282991 lambda!282988))))

(assert (=> bs!1250540 (not (= lambda!282991 lambda!282989))))

(declare-fun bs!1250541 () Bool)

(assert (= bs!1250541 (and b!5414298 b!5414185)))

(assert (=> bs!1250541 (= (and (= (_1!35696 lt!2207731) s!2326) (= (regOne!30900 lt!2207723) (regOne!30900 lt!2207749)) (= (regTwo!30900 lt!2207723) (regTwo!30900 lt!2207749))) (= lambda!282991 lambda!282972))))

(declare-fun bs!1250542 () Bool)

(assert (= bs!1250542 (and b!5414298 d!1727689)))

(assert (=> bs!1250542 (= (and (= (_1!35696 lt!2207731) s!2326) (= (regOne!30900 lt!2207723) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207723) (regTwo!30900 r!7292))) (= lambda!282991 lambda!282963))))

(declare-fun bs!1250543 () Bool)

(assert (= bs!1250543 (and b!5414298 b!5413693)))

(assert (=> bs!1250543 (= (and (= (_1!35696 lt!2207731) s!2326) (= (regOne!30900 lt!2207723) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207723) (regTwo!30900 r!7292))) (= lambda!282991 lambda!282895))))

(assert (=> bs!1250542 (not (= lambda!282991 lambda!282962))))

(declare-fun bs!1250544 () Bool)

(assert (= bs!1250544 (and b!5414298 b!5413685)))

(assert (=> bs!1250544 (not (= lambda!282991 lambda!282899))))

(declare-fun bs!1250545 () Bool)

(assert (= bs!1250545 (and b!5414298 d!1727687)))

(assert (=> bs!1250545 (not (= lambda!282991 lambda!282957))))

(assert (=> bs!1250544 (= (and (= (_1!35696 lt!2207731) s!2326) (= (regOne!30900 lt!2207723) lt!2207723) (= (regTwo!30900 lt!2207723) (regTwo!30900 r!7292))) (= lambda!282991 lambda!282900))))

(declare-fun bs!1250546 () Bool)

(assert (= bs!1250546 (and b!5414298 b!5414303)))

(assert (=> bs!1250546 (not (= lambda!282991 lambda!282990))))

(assert (=> bs!1250543 (not (= lambda!282991 lambda!282894))))

(assert (=> b!5414298 true))

(assert (=> b!5414298 true))

(declare-fun bm!387451 () Bool)

(declare-fun call!387456 () Bool)

(declare-fun c!944027 () Bool)

(assert (=> bm!387451 (= call!387456 (Exists!2375 (ite c!944027 lambda!282990 lambda!282991)))))

(declare-fun e!3356074 () Bool)

(assert (=> b!5414298 (= e!3356074 call!387456)))

(declare-fun b!5414299 () Bool)

(declare-fun c!944028 () Bool)

(assert (=> b!5414299 (= c!944028 (is-Union!15194 lt!2207723))))

(declare-fun e!3356077 () Bool)

(declare-fun e!3356075 () Bool)

(assert (=> b!5414299 (= e!3356077 e!3356075)))

(declare-fun b!5414300 () Bool)

(assert (=> b!5414300 (= e!3356075 e!3356074)))

(assert (=> b!5414300 (= c!944027 (is-Star!15194 lt!2207723))))

(declare-fun b!5414301 () Bool)

(assert (=> b!5414301 (= e!3356077 (= (_1!35696 lt!2207731) (Cons!61757 (c!943892 lt!2207723) Nil!61757)))))

(declare-fun bm!387452 () Bool)

(declare-fun call!387457 () Bool)

(assert (=> bm!387452 (= call!387457 (isEmpty!33754 (_1!35696 lt!2207731)))))

(declare-fun b!5414302 () Bool)

(declare-fun c!944029 () Bool)

(assert (=> b!5414302 (= c!944029 (is-ElementMatch!15194 lt!2207723))))

(declare-fun e!3356079 () Bool)

(assert (=> b!5414302 (= e!3356079 e!3356077)))

(declare-fun e!3356080 () Bool)

(assert (=> b!5414303 (= e!3356080 call!387456)))

(declare-fun b!5414305 () Bool)

(declare-fun e!3356076 () Bool)

(assert (=> b!5414305 (= e!3356075 e!3356076)))

(declare-fun res!2303045 () Bool)

(assert (=> b!5414305 (= res!2303045 (matchRSpec!2297 (regOne!30901 lt!2207723) (_1!35696 lt!2207731)))))

(assert (=> b!5414305 (=> res!2303045 e!3356076)))

(declare-fun b!5414306 () Bool)

(declare-fun e!3356078 () Bool)

(assert (=> b!5414306 (= e!3356078 e!3356079)))

(declare-fun res!2303046 () Bool)

(assert (=> b!5414306 (= res!2303046 (not (is-EmptyLang!15194 lt!2207723)))))

(assert (=> b!5414306 (=> (not res!2303046) (not e!3356079))))

(declare-fun b!5414307 () Bool)

(assert (=> b!5414307 (= e!3356076 (matchRSpec!2297 (regTwo!30901 lt!2207723) (_1!35696 lt!2207731)))))

(declare-fun b!5414308 () Bool)

(declare-fun res!2303044 () Bool)

(assert (=> b!5414308 (=> res!2303044 e!3356080)))

(assert (=> b!5414308 (= res!2303044 call!387457)))

(assert (=> b!5414308 (= e!3356074 e!3356080)))

(declare-fun b!5414304 () Bool)

(assert (=> b!5414304 (= e!3356078 call!387457)))

(declare-fun d!1727731 () Bool)

(declare-fun c!944030 () Bool)

(assert (=> d!1727731 (= c!944030 (is-EmptyExpr!15194 lt!2207723))))

(assert (=> d!1727731 (= (matchRSpec!2297 lt!2207723 (_1!35696 lt!2207731)) e!3356078)))

(assert (= (and d!1727731 c!944030) b!5414304))

(assert (= (and d!1727731 (not c!944030)) b!5414306))

(assert (= (and b!5414306 res!2303046) b!5414302))

(assert (= (and b!5414302 c!944029) b!5414301))

(assert (= (and b!5414302 (not c!944029)) b!5414299))

(assert (= (and b!5414299 c!944028) b!5414305))

(assert (= (and b!5414299 (not c!944028)) b!5414300))

(assert (= (and b!5414305 (not res!2303045)) b!5414307))

(assert (= (and b!5414300 c!944027) b!5414308))

(assert (= (and b!5414300 (not c!944027)) b!5414298))

(assert (= (and b!5414308 (not res!2303044)) b!5414303))

(assert (= (or b!5414303 b!5414298) bm!387451))

(assert (= (or b!5414304 b!5414308) bm!387452))

(declare-fun m!6438324 () Bool)

(assert (=> bm!387451 m!6438324))

(declare-fun m!6438326 () Bool)

(assert (=> bm!387452 m!6438326))

(declare-fun m!6438328 () Bool)

(assert (=> b!5414305 m!6438328))

(declare-fun m!6438330 () Bool)

(assert (=> b!5414307 m!6438330))

(assert (=> b!5413689 d!1727731))

(declare-fun bs!1250547 () Bool)

(declare-fun d!1727733 () Bool)

(assert (= bs!1250547 (and d!1727733 b!5413689)))

(declare-fun lambda!282992 () Int)

(assert (=> bs!1250547 (not (= lambda!282992 lambda!282903))))

(assert (=> bs!1250547 (not (= lambda!282992 lambda!282902))))

(declare-fun bs!1250548 () Bool)

(assert (= bs!1250548 (and d!1727733 b!5414190)))

(assert (=> bs!1250548 (not (= lambda!282992 lambda!282971))))

(assert (=> bs!1250547 (= lambda!282992 lambda!282901)))

(declare-fun bs!1250549 () Bool)

(assert (= bs!1250549 (and d!1727733 b!5414298)))

(assert (=> bs!1250549 (not (= lambda!282992 lambda!282991))))

(declare-fun bs!1250550 () Bool)

(assert (= bs!1250550 (and d!1727733 d!1727727)))

(assert (=> bs!1250550 (= (= lt!2207765 (Star!15194 (reg!15523 (regOne!30900 r!7292)))) (= lambda!282992 lambda!282988))))

(assert (=> bs!1250550 (not (= lambda!282992 lambda!282989))))

(declare-fun bs!1250551 () Bool)

(assert (= bs!1250551 (and d!1727733 b!5414185)))

(assert (=> bs!1250551 (not (= lambda!282992 lambda!282972))))

(declare-fun bs!1250552 () Bool)

(assert (= bs!1250552 (and d!1727733 d!1727689)))

(assert (=> bs!1250552 (not (= lambda!282992 lambda!282963))))

(declare-fun bs!1250553 () Bool)

(assert (= bs!1250553 (and d!1727733 b!5413693)))

(assert (=> bs!1250553 (not (= lambda!282992 lambda!282895))))

(assert (=> bs!1250552 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282992 lambda!282962))))

(declare-fun bs!1250554 () Bool)

(assert (= bs!1250554 (and d!1727733 b!5413685)))

(assert (=> bs!1250554 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282992 lambda!282899))))

(declare-fun bs!1250555 () Bool)

(assert (= bs!1250555 (and d!1727733 d!1727687)))

(assert (=> bs!1250555 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282992 lambda!282957))))

(assert (=> bs!1250554 (not (= lambda!282992 lambda!282900))))

(declare-fun bs!1250556 () Bool)

(assert (= bs!1250556 (and d!1727733 b!5414303)))

(assert (=> bs!1250556 (not (= lambda!282992 lambda!282990))))

(assert (=> bs!1250553 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282992 lambda!282894))))

(assert (=> d!1727733 true))

(assert (=> d!1727733 true))

(assert (=> d!1727733 true))

(declare-fun lambda!282993 () Int)

(assert (=> bs!1250547 (not (= lambda!282993 lambda!282903))))

(assert (=> bs!1250547 (= lambda!282993 lambda!282902)))

(assert (=> bs!1250548 (not (= lambda!282993 lambda!282971))))

(assert (=> bs!1250547 (not (= lambda!282993 lambda!282901))))

(assert (=> bs!1250549 (= (and (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 lt!2207723)) (= lt!2207765 (regTwo!30900 lt!2207723))) (= lambda!282993 lambda!282991))))

(declare-fun bs!1250557 () Bool)

(assert (= bs!1250557 d!1727733))

(assert (=> bs!1250557 (not (= lambda!282993 lambda!282992))))

(assert (=> bs!1250550 (not (= lambda!282993 lambda!282988))))

(assert (=> bs!1250550 (not (= lambda!282993 lambda!282989))))

(assert (=> bs!1250551 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 lt!2207749)) (= lt!2207765 (regTwo!30900 lt!2207749))) (= lambda!282993 lambda!282972))))

(assert (=> bs!1250552 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282993 lambda!282963))))

(assert (=> bs!1250553 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282993 lambda!282895))))

(assert (=> bs!1250552 (not (= lambda!282993 lambda!282962))))

(assert (=> bs!1250554 (not (= lambda!282993 lambda!282899))))

(assert (=> bs!1250555 (not (= lambda!282993 lambda!282957))))

(assert (=> bs!1250554 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282993 lambda!282900))))

(assert (=> bs!1250556 (not (= lambda!282993 lambda!282990))))

(assert (=> bs!1250553 (not (= lambda!282993 lambda!282894))))

(assert (=> d!1727733 true))

(assert (=> d!1727733 true))

(assert (=> d!1727733 true))

(assert (=> d!1727733 (= (Exists!2375 lambda!282992) (Exists!2375 lambda!282993))))

(declare-fun lt!2208034 () Unit!154298)

(assert (=> d!1727733 (= lt!2208034 (choose!40921 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)))))

(assert (=> d!1727733 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727733 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)) lt!2208034)))

(declare-fun m!6438332 () Bool)

(assert (=> bs!1250557 m!6438332))

(declare-fun m!6438334 () Bool)

(assert (=> bs!1250557 m!6438334))

(declare-fun m!6438336 () Bool)

(assert (=> bs!1250557 m!6438336))

(assert (=> bs!1250557 m!6437708))

(assert (=> b!5413689 d!1727733))

(declare-fun d!1727737 () Bool)

(assert (=> d!1727737 (= (Exists!2375 lambda!282903) (choose!40919 lambda!282903))))

(declare-fun bs!1250558 () Bool)

(assert (= bs!1250558 d!1727737))

(declare-fun m!6438338 () Bool)

(assert (=> bs!1250558 m!6438338))

(assert (=> b!5413689 d!1727737))

(declare-fun b!5414309 () Bool)

(declare-fun e!3356086 () Bool)

(declare-fun call!387458 () Bool)

(assert (=> b!5414309 (= e!3356086 call!387458)))

(declare-fun b!5414310 () Bool)

(declare-fun e!3356084 () Bool)

(declare-fun e!3356082 () Bool)

(assert (=> b!5414310 (= e!3356084 e!3356082)))

(declare-fun c!944031 () Bool)

(assert (=> b!5414310 (= c!944031 (is-Star!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5414311 () Bool)

(declare-fun e!3356083 () Bool)

(declare-fun call!387459 () Bool)

(assert (=> b!5414311 (= e!3356083 call!387459)))

(declare-fun bm!387453 () Bool)

(declare-fun call!387460 () Bool)

(declare-fun c!944032 () Bool)

(assert (=> bm!387453 (= call!387460 (validRegex!6930 (ite c!944032 (regOne!30901 (reg!15523 (regOne!30900 r!7292))) (regOne!30900 (reg!15523 (regOne!30900 r!7292))))))))

(declare-fun b!5414312 () Bool)

(declare-fun e!3356087 () Bool)

(assert (=> b!5414312 (= e!3356087 call!387458)))

(declare-fun b!5414313 () Bool)

(declare-fun e!3356085 () Bool)

(assert (=> b!5414313 (= e!3356085 e!3356086)))

(declare-fun res!2303050 () Bool)

(assert (=> b!5414313 (=> (not res!2303050) (not e!3356086))))

(assert (=> b!5414313 (= res!2303050 call!387460)))

(declare-fun b!5414314 () Bool)

(declare-fun res!2303049 () Bool)

(assert (=> b!5414314 (=> res!2303049 e!3356085)))

(assert (=> b!5414314 (= res!2303049 (not (is-Concat!24039 (reg!15523 (regOne!30900 r!7292)))))))

(declare-fun e!3356081 () Bool)

(assert (=> b!5414314 (= e!3356081 e!3356085)))

(declare-fun bm!387454 () Bool)

(assert (=> bm!387454 (= call!387459 (validRegex!6930 (ite c!944031 (reg!15523 (reg!15523 (regOne!30900 r!7292))) (ite c!944032 (regTwo!30901 (reg!15523 (regOne!30900 r!7292))) (regTwo!30900 (reg!15523 (regOne!30900 r!7292)))))))))

(declare-fun b!5414315 () Bool)

(assert (=> b!5414315 (= e!3356082 e!3356083)))

(declare-fun res!2303051 () Bool)

(assert (=> b!5414315 (= res!2303051 (not (nullable!5363 (reg!15523 (reg!15523 (regOne!30900 r!7292))))))))

(assert (=> b!5414315 (=> (not res!2303051) (not e!3356083))))

(declare-fun b!5414317 () Bool)

(assert (=> b!5414317 (= e!3356082 e!3356081)))

(assert (=> b!5414317 (= c!944032 (is-Union!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun bm!387455 () Bool)

(assert (=> bm!387455 (= call!387458 call!387459)))

(declare-fun b!5414316 () Bool)

(declare-fun res!2303047 () Bool)

(assert (=> b!5414316 (=> (not res!2303047) (not e!3356087))))

(assert (=> b!5414316 (= res!2303047 call!387460)))

(assert (=> b!5414316 (= e!3356081 e!3356087)))

(declare-fun d!1727739 () Bool)

(declare-fun res!2303048 () Bool)

(assert (=> d!1727739 (=> res!2303048 e!3356084)))

(assert (=> d!1727739 (= res!2303048 (is-ElementMatch!15194 (reg!15523 (regOne!30900 r!7292))))))

(assert (=> d!1727739 (= (validRegex!6930 (reg!15523 (regOne!30900 r!7292))) e!3356084)))

(assert (= (and d!1727739 (not res!2303048)) b!5414310))

(assert (= (and b!5414310 c!944031) b!5414315))

(assert (= (and b!5414310 (not c!944031)) b!5414317))

(assert (= (and b!5414315 res!2303051) b!5414311))

(assert (= (and b!5414317 c!944032) b!5414316))

(assert (= (and b!5414317 (not c!944032)) b!5414314))

(assert (= (and b!5414316 res!2303047) b!5414312))

(assert (= (and b!5414314 (not res!2303049)) b!5414313))

(assert (= (and b!5414313 res!2303050) b!5414309))

(assert (= (or b!5414312 b!5414309) bm!387455))

(assert (= (or b!5414316 b!5414313) bm!387453))

(assert (= (or b!5414311 bm!387455) bm!387454))

(declare-fun m!6438340 () Bool)

(assert (=> bm!387453 m!6438340))

(declare-fun m!6438342 () Bool)

(assert (=> bm!387454 m!6438342))

(declare-fun m!6438344 () Bool)

(assert (=> b!5414315 m!6438344))

(assert (=> b!5413689 d!1727739))

(declare-fun b!5414318 () Bool)

(declare-fun res!2303054 () Bool)

(declare-fun e!3356089 () Bool)

(assert (=> b!5414318 (=> (not res!2303054) (not e!3356089))))

(declare-fun lt!2208036 () Option!15305)

(assert (=> b!5414318 (= res!2303054 (matchR!7379 (reg!15523 (regOne!30900 r!7292)) (_1!35696 (get!21294 lt!2208036))))))

(declare-fun b!5414319 () Bool)

(assert (=> b!5414319 (= e!3356089 (= (++!13561 (_1!35696 (get!21294 lt!2208036)) (_2!35696 (get!21294 lt!2208036))) (_1!35696 lt!2207731)))))

(declare-fun b!5414320 () Bool)

(declare-fun e!3356088 () Bool)

(assert (=> b!5414320 (= e!3356088 (not (isDefined!12008 lt!2208036)))))

(declare-fun b!5414321 () Bool)

(declare-fun e!3356092 () Option!15305)

(assert (=> b!5414321 (= e!3356092 (Some!15304 (tuple2!64787 Nil!61757 (_1!35696 lt!2207731))))))

(declare-fun b!5414323 () Bool)

(declare-fun lt!2208035 () Unit!154298)

(declare-fun lt!2208037 () Unit!154298)

(assert (=> b!5414323 (= lt!2208035 lt!2208037)))

(assert (=> b!5414323 (= (++!13561 (++!13561 Nil!61757 (Cons!61757 (h!68205 (_1!35696 lt!2207731)) Nil!61757)) (t!375104 (_1!35696 lt!2207731))) (_1!35696 lt!2207731))))

(assert (=> b!5414323 (= lt!2208037 (lemmaMoveElementToOtherListKeepsConcatEq!1842 Nil!61757 (h!68205 (_1!35696 lt!2207731)) (t!375104 (_1!35696 lt!2207731)) (_1!35696 lt!2207731)))))

(declare-fun e!3356091 () Option!15305)

(assert (=> b!5414323 (= e!3356091 (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (++!13561 Nil!61757 (Cons!61757 (h!68205 (_1!35696 lt!2207731)) Nil!61757)) (t!375104 (_1!35696 lt!2207731)) (_1!35696 lt!2207731)))))

(declare-fun b!5414324 () Bool)

(assert (=> b!5414324 (= e!3356092 e!3356091)))

(declare-fun c!944033 () Bool)

(assert (=> b!5414324 (= c!944033 (is-Nil!61757 (_1!35696 lt!2207731)))))

(declare-fun d!1727741 () Bool)

(assert (=> d!1727741 e!3356088))

(declare-fun res!2303056 () Bool)

(assert (=> d!1727741 (=> res!2303056 e!3356088)))

(assert (=> d!1727741 (= res!2303056 e!3356089)))

(declare-fun res!2303053 () Bool)

(assert (=> d!1727741 (=> (not res!2303053) (not e!3356089))))

(assert (=> d!1727741 (= res!2303053 (isDefined!12008 lt!2208036))))

(assert (=> d!1727741 (= lt!2208036 e!3356092)))

(declare-fun c!944034 () Bool)

(declare-fun e!3356090 () Bool)

(assert (=> d!1727741 (= c!944034 e!3356090)))

(declare-fun res!2303052 () Bool)

(assert (=> d!1727741 (=> (not res!2303052) (not e!3356090))))

(assert (=> d!1727741 (= res!2303052 (matchR!7379 (reg!15523 (regOne!30900 r!7292)) Nil!61757))))

(assert (=> d!1727741 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727741 (= (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 Nil!61757 (_1!35696 lt!2207731) (_1!35696 lt!2207731)) lt!2208036)))

(declare-fun b!5414322 () Bool)

(assert (=> b!5414322 (= e!3356091 None!15304)))

(declare-fun b!5414325 () Bool)

(declare-fun res!2303055 () Bool)

(assert (=> b!5414325 (=> (not res!2303055) (not e!3356089))))

(assert (=> b!5414325 (= res!2303055 (matchR!7379 lt!2207765 (_2!35696 (get!21294 lt!2208036))))))

(declare-fun b!5414326 () Bool)

(assert (=> b!5414326 (= e!3356090 (matchR!7379 lt!2207765 (_1!35696 lt!2207731)))))

(assert (= (and d!1727741 res!2303052) b!5414326))

(assert (= (and d!1727741 c!944034) b!5414321))

(assert (= (and d!1727741 (not c!944034)) b!5414324))

(assert (= (and b!5414324 c!944033) b!5414322))

(assert (= (and b!5414324 (not c!944033)) b!5414323))

(assert (= (and d!1727741 res!2303053) b!5414318))

(assert (= (and b!5414318 res!2303054) b!5414325))

(assert (= (and b!5414325 res!2303055) b!5414319))

(assert (= (and d!1727741 (not res!2303056)) b!5414320))

(declare-fun m!6438346 () Bool)

(assert (=> d!1727741 m!6438346))

(declare-fun m!6438348 () Bool)

(assert (=> d!1727741 m!6438348))

(assert (=> d!1727741 m!6437708))

(declare-fun m!6438350 () Bool)

(assert (=> b!5414319 m!6438350))

(declare-fun m!6438352 () Bool)

(assert (=> b!5414319 m!6438352))

(assert (=> b!5414325 m!6438350))

(declare-fun m!6438354 () Bool)

(assert (=> b!5414325 m!6438354))

(assert (=> b!5414320 m!6438346))

(declare-fun m!6438356 () Bool)

(assert (=> b!5414323 m!6438356))

(assert (=> b!5414323 m!6438356))

(declare-fun m!6438358 () Bool)

(assert (=> b!5414323 m!6438358))

(declare-fun m!6438360 () Bool)

(assert (=> b!5414323 m!6438360))

(assert (=> b!5414323 m!6438356))

(declare-fun m!6438362 () Bool)

(assert (=> b!5414323 m!6438362))

(declare-fun m!6438364 () Bool)

(assert (=> b!5414326 m!6438364))

(assert (=> b!5414318 m!6438350))

(declare-fun m!6438366 () Bool)

(assert (=> b!5414318 m!6438366))

(assert (=> b!5413689 d!1727741))

(declare-fun d!1727743 () Bool)

(assert (=> d!1727743 (= (isDefined!12008 (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 Nil!61757 (_1!35696 lt!2207731) (_1!35696 lt!2207731))) (not (isEmpty!33755 (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 Nil!61757 (_1!35696 lt!2207731) (_1!35696 lt!2207731)))))))

(declare-fun bs!1250559 () Bool)

(assert (= bs!1250559 d!1727743))

(assert (=> bs!1250559 m!6437706))

(declare-fun m!6438368 () Bool)

(assert (=> bs!1250559 m!6438368))

(assert (=> b!5413689 d!1727743))

(declare-fun d!1727745 () Bool)

(assert (=> d!1727745 (= (Exists!2375 lambda!282902) (choose!40919 lambda!282902))))

(declare-fun bs!1250560 () Bool)

(assert (= bs!1250560 d!1727745))

(declare-fun m!6438370 () Bool)

(assert (=> bs!1250560 m!6438370))

(assert (=> b!5413689 d!1727745))

(declare-fun d!1727747 () Bool)

(assert (=> d!1727747 (= (matchR!7379 lt!2207723 (_1!35696 lt!2207731)) (matchRSpec!2297 lt!2207723 (_1!35696 lt!2207731)))))

(declare-fun lt!2208041 () Unit!154298)

(assert (=> d!1727747 (= lt!2208041 (choose!40922 lt!2207723 (_1!35696 lt!2207731)))))

(assert (=> d!1727747 (validRegex!6930 lt!2207723)))

(assert (=> d!1727747 (= (mainMatchTheorem!2297 lt!2207723 (_1!35696 lt!2207731)) lt!2208041)))

(declare-fun bs!1250562 () Bool)

(assert (= bs!1250562 d!1727747))

(assert (=> bs!1250562 m!6437636))

(assert (=> bs!1250562 m!6437716))

(declare-fun m!6438378 () Bool)

(assert (=> bs!1250562 m!6438378))

(declare-fun m!6438380 () Bool)

(assert (=> bs!1250562 m!6438380))

(assert (=> b!5413689 d!1727747))

(declare-fun bs!1250564 () Bool)

(declare-fun d!1727749 () Bool)

(assert (= bs!1250564 (and d!1727749 b!5413689)))

(declare-fun lambda!282994 () Int)

(assert (=> bs!1250564 (not (= lambda!282994 lambda!282903))))

(assert (=> bs!1250564 (not (= lambda!282994 lambda!282902))))

(declare-fun bs!1250565 () Bool)

(assert (= bs!1250565 (and d!1727749 d!1727733)))

(assert (=> bs!1250565 (not (= lambda!282994 lambda!282993))))

(declare-fun bs!1250566 () Bool)

(assert (= bs!1250566 (and d!1727749 b!5414190)))

(assert (=> bs!1250566 (not (= lambda!282994 lambda!282971))))

(assert (=> bs!1250564 (= lambda!282994 lambda!282901)))

(declare-fun bs!1250567 () Bool)

(assert (= bs!1250567 (and d!1727749 b!5414298)))

(assert (=> bs!1250567 (not (= lambda!282994 lambda!282991))))

(assert (=> bs!1250565 (= lambda!282994 lambda!282992)))

(declare-fun bs!1250568 () Bool)

(assert (= bs!1250568 (and d!1727749 d!1727727)))

(assert (=> bs!1250568 (= (= lt!2207765 (Star!15194 (reg!15523 (regOne!30900 r!7292)))) (= lambda!282994 lambda!282988))))

(assert (=> bs!1250568 (not (= lambda!282994 lambda!282989))))

(declare-fun bs!1250569 () Bool)

(assert (= bs!1250569 (and d!1727749 b!5414185)))

(assert (=> bs!1250569 (not (= lambda!282994 lambda!282972))))

(declare-fun bs!1250570 () Bool)

(assert (= bs!1250570 (and d!1727749 d!1727689)))

(assert (=> bs!1250570 (not (= lambda!282994 lambda!282963))))

(declare-fun bs!1250571 () Bool)

(assert (= bs!1250571 (and d!1727749 b!5413693)))

(assert (=> bs!1250571 (not (= lambda!282994 lambda!282895))))

(assert (=> bs!1250570 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282994 lambda!282962))))

(declare-fun bs!1250572 () Bool)

(assert (= bs!1250572 (and d!1727749 b!5413685)))

(assert (=> bs!1250572 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) lt!2207723) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282994 lambda!282899))))

(declare-fun bs!1250573 () Bool)

(assert (= bs!1250573 (and d!1727749 d!1727687)))

(assert (=> bs!1250573 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282994 lambda!282957))))

(assert (=> bs!1250572 (not (= lambda!282994 lambda!282900))))

(declare-fun bs!1250574 () Bool)

(assert (= bs!1250574 (and d!1727749 b!5414303)))

(assert (=> bs!1250574 (not (= lambda!282994 lambda!282990))))

(assert (=> bs!1250571 (= (and (= (_1!35696 lt!2207731) s!2326) (= (reg!15523 (regOne!30900 r!7292)) (regOne!30900 r!7292)) (= lt!2207765 (regTwo!30900 r!7292))) (= lambda!282994 lambda!282894))))

(assert (=> d!1727749 true))

(assert (=> d!1727749 true))

(assert (=> d!1727749 true))

(assert (=> d!1727749 (= (isDefined!12008 (findConcatSeparation!1719 (reg!15523 (regOne!30900 r!7292)) lt!2207765 Nil!61757 (_1!35696 lt!2207731) (_1!35696 lt!2207731))) (Exists!2375 lambda!282994))))

(declare-fun lt!2208042 () Unit!154298)

(assert (=> d!1727749 (= lt!2208042 (choose!40920 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)))))

(assert (=> d!1727749 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727749 (= (lemmaFindConcatSeparationEquivalentToExists!1483 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (_1!35696 lt!2207731)) lt!2208042)))

(declare-fun bs!1250575 () Bool)

(assert (= bs!1250575 d!1727749))

(declare-fun m!6438384 () Bool)

(assert (=> bs!1250575 m!6438384))

(assert (=> bs!1250575 m!6437706))

(assert (=> bs!1250575 m!6437706))

(assert (=> bs!1250575 m!6437720))

(assert (=> bs!1250575 m!6437708))

(declare-fun m!6438386 () Bool)

(assert (=> bs!1250575 m!6438386))

(assert (=> b!5413689 d!1727749))

(declare-fun bs!1250576 () Bool)

(declare-fun d!1727755 () Bool)

(assert (= bs!1250576 (and d!1727755 b!5413671)))

(declare-fun lambda!282997 () Int)

(assert (=> bs!1250576 (= lambda!282997 lambda!282898)))

(declare-fun bs!1250577 () Bool)

(assert (= bs!1250577 (and d!1727755 d!1727697)))

(assert (=> bs!1250577 (= lambda!282997 lambda!282966)))

(declare-fun bs!1250578 () Bool)

(assert (= bs!1250578 (and d!1727755 d!1727723)))

(assert (=> bs!1250578 (= lambda!282997 lambda!282980)))

(declare-fun bs!1250579 () Bool)

(assert (= bs!1250579 (and d!1727755 d!1727725)))

(assert (=> bs!1250579 (= lambda!282997 lambda!282983)))

(assert (=> d!1727755 (= (inv!81233 (h!68207 zl!343)) (forall!14540 (exprs!5078 (h!68207 zl!343)) lambda!282997))))

(declare-fun bs!1250580 () Bool)

(assert (= bs!1250580 d!1727755))

(declare-fun m!6438388 () Bool)

(assert (=> bs!1250580 m!6438388))

(assert (=> b!5413665 d!1727755))

(declare-fun bs!1250581 () Bool)

(declare-fun b!5414332 () Bool)

(assert (= bs!1250581 (and b!5414332 b!5413689)))

(declare-fun lambda!282998 () Int)

(assert (=> bs!1250581 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 lt!2207767) (reg!15523 (regOne!30900 r!7292))) (= lt!2207767 lt!2207765)) (= lambda!282998 lambda!282903))))

(assert (=> bs!1250581 (not (= lambda!282998 lambda!282902))))

(declare-fun bs!1250582 () Bool)

(assert (= bs!1250582 (and b!5414332 d!1727733)))

(assert (=> bs!1250582 (not (= lambda!282998 lambda!282993))))

(declare-fun bs!1250583 () Bool)

(assert (= bs!1250583 (and b!5414332 d!1727749)))

(assert (=> bs!1250583 (not (= lambda!282998 lambda!282994))))

(declare-fun bs!1250584 () Bool)

(assert (= bs!1250584 (and b!5414332 b!5414190)))

(assert (=> bs!1250584 (= (and (= (reg!15523 lt!2207767) (reg!15523 lt!2207749)) (= lt!2207767 lt!2207749)) (= lambda!282998 lambda!282971))))

(assert (=> bs!1250581 (not (= lambda!282998 lambda!282901))))

(declare-fun bs!1250585 () Bool)

(assert (= bs!1250585 (and b!5414332 b!5414298)))

(assert (=> bs!1250585 (not (= lambda!282998 lambda!282991))))

(assert (=> bs!1250582 (not (= lambda!282998 lambda!282992))))

(declare-fun bs!1250586 () Bool)

(assert (= bs!1250586 (and b!5414332 d!1727727)))

(assert (=> bs!1250586 (not (= lambda!282998 lambda!282988))))

(assert (=> bs!1250586 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 lt!2207767) (reg!15523 (regOne!30900 r!7292))) (= lt!2207767 (Star!15194 (reg!15523 (regOne!30900 r!7292))))) (= lambda!282998 lambda!282989))))

(declare-fun bs!1250587 () Bool)

(assert (= bs!1250587 (and b!5414332 b!5414185)))

(assert (=> bs!1250587 (not (= lambda!282998 lambda!282972))))

(declare-fun bs!1250588 () Bool)

(assert (= bs!1250588 (and b!5414332 d!1727689)))

(assert (=> bs!1250588 (not (= lambda!282998 lambda!282963))))

(declare-fun bs!1250589 () Bool)

(assert (= bs!1250589 (and b!5414332 b!5413693)))

(assert (=> bs!1250589 (not (= lambda!282998 lambda!282895))))

(assert (=> bs!1250588 (not (= lambda!282998 lambda!282962))))

(declare-fun bs!1250590 () Bool)

(assert (= bs!1250590 (and b!5414332 b!5413685)))

(assert (=> bs!1250590 (not (= lambda!282998 lambda!282899))))

(declare-fun bs!1250591 () Bool)

(assert (= bs!1250591 (and b!5414332 d!1727687)))

(assert (=> bs!1250591 (not (= lambda!282998 lambda!282957))))

(assert (=> bs!1250590 (not (= lambda!282998 lambda!282900))))

(declare-fun bs!1250592 () Bool)

(assert (= bs!1250592 (and b!5414332 b!5414303)))

(assert (=> bs!1250592 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 lt!2207767) (reg!15523 lt!2207723)) (= lt!2207767 lt!2207723)) (= lambda!282998 lambda!282990))))

(assert (=> bs!1250589 (not (= lambda!282998 lambda!282894))))

(assert (=> b!5414332 true))

(assert (=> b!5414332 true))

(declare-fun bs!1250593 () Bool)

(declare-fun b!5414327 () Bool)

(assert (= bs!1250593 (and b!5414327 b!5413689)))

(declare-fun lambda!282999 () Int)

(assert (=> bs!1250593 (not (= lambda!282999 lambda!282903))))

(assert (=> bs!1250593 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 lt!2207767) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 lt!2207767) lt!2207765)) (= lambda!282999 lambda!282902))))

(declare-fun bs!1250594 () Bool)

(assert (= bs!1250594 (and b!5414327 d!1727733)))

(assert (=> bs!1250594 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 lt!2207767) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 lt!2207767) lt!2207765)) (= lambda!282999 lambda!282993))))

(declare-fun bs!1250595 () Bool)

(assert (= bs!1250595 (and b!5414327 d!1727749)))

(assert (=> bs!1250595 (not (= lambda!282999 lambda!282994))))

(declare-fun bs!1250596 () Bool)

(assert (= bs!1250596 (and b!5414327 b!5414190)))

(assert (=> bs!1250596 (not (= lambda!282999 lambda!282971))))

(assert (=> bs!1250593 (not (= lambda!282999 lambda!282901))))

(declare-fun bs!1250597 () Bool)

(assert (= bs!1250597 (and b!5414327 b!5414298)))

(assert (=> bs!1250597 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 lt!2207767) (regOne!30900 lt!2207723)) (= (regTwo!30900 lt!2207767) (regTwo!30900 lt!2207723))) (= lambda!282999 lambda!282991))))

(assert (=> bs!1250594 (not (= lambda!282999 lambda!282992))))

(declare-fun bs!1250598 () Bool)

(assert (= bs!1250598 (and b!5414327 d!1727727)))

(assert (=> bs!1250598 (not (= lambda!282999 lambda!282988))))

(assert (=> bs!1250598 (not (= lambda!282999 lambda!282989))))

(declare-fun bs!1250599 () Bool)

(assert (= bs!1250599 (and b!5414327 b!5414185)))

(assert (=> bs!1250599 (= (and (= (regOne!30900 lt!2207767) (regOne!30900 lt!2207749)) (= (regTwo!30900 lt!2207767) (regTwo!30900 lt!2207749))) (= lambda!282999 lambda!282972))))

(declare-fun bs!1250600 () Bool)

(assert (= bs!1250600 (and b!5414327 d!1727689)))

(assert (=> bs!1250600 (= (and (= (regOne!30900 lt!2207767) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207767) (regTwo!30900 r!7292))) (= lambda!282999 lambda!282963))))

(declare-fun bs!1250601 () Bool)

(assert (= bs!1250601 (and b!5414327 b!5413693)))

(assert (=> bs!1250601 (= (and (= (regOne!30900 lt!2207767) (regOne!30900 r!7292)) (= (regTwo!30900 lt!2207767) (regTwo!30900 r!7292))) (= lambda!282999 lambda!282895))))

(assert (=> bs!1250600 (not (= lambda!282999 lambda!282962))))

(declare-fun bs!1250602 () Bool)

(assert (= bs!1250602 (and b!5414327 b!5413685)))

(assert (=> bs!1250602 (not (= lambda!282999 lambda!282899))))

(declare-fun bs!1250603 () Bool)

(assert (= bs!1250603 (and b!5414327 d!1727687)))

(assert (=> bs!1250603 (not (= lambda!282999 lambda!282957))))

(assert (=> bs!1250602 (= (and (= (regOne!30900 lt!2207767) lt!2207723) (= (regTwo!30900 lt!2207767) (regTwo!30900 r!7292))) (= lambda!282999 lambda!282900))))

(declare-fun bs!1250604 () Bool)

(assert (= bs!1250604 (and b!5414327 b!5414303)))

(assert (=> bs!1250604 (not (= lambda!282999 lambda!282990))))

(assert (=> bs!1250601 (not (= lambda!282999 lambda!282894))))

(declare-fun bs!1250605 () Bool)

(assert (= bs!1250605 (and b!5414327 b!5414332)))

(assert (=> bs!1250605 (not (= lambda!282999 lambda!282998))))

(assert (=> b!5414327 true))

(assert (=> b!5414327 true))

(declare-fun call!387461 () Bool)

(declare-fun bm!387456 () Bool)

(declare-fun c!944035 () Bool)

(assert (=> bm!387456 (= call!387461 (Exists!2375 (ite c!944035 lambda!282998 lambda!282999)))))

(declare-fun e!3356093 () Bool)

(assert (=> b!5414327 (= e!3356093 call!387461)))

(declare-fun b!5414328 () Bool)

(declare-fun c!944036 () Bool)

(assert (=> b!5414328 (= c!944036 (is-Union!15194 lt!2207767))))

(declare-fun e!3356096 () Bool)

(declare-fun e!3356094 () Bool)

(assert (=> b!5414328 (= e!3356096 e!3356094)))

(declare-fun b!5414329 () Bool)

(assert (=> b!5414329 (= e!3356094 e!3356093)))

(assert (=> b!5414329 (= c!944035 (is-Star!15194 lt!2207767))))

(declare-fun b!5414330 () Bool)

(assert (=> b!5414330 (= e!3356096 (= s!2326 (Cons!61757 (c!943892 lt!2207767) Nil!61757)))))

(declare-fun bm!387457 () Bool)

(declare-fun call!387462 () Bool)

(assert (=> bm!387457 (= call!387462 (isEmpty!33754 s!2326))))

(declare-fun b!5414331 () Bool)

(declare-fun c!944037 () Bool)

(assert (=> b!5414331 (= c!944037 (is-ElementMatch!15194 lt!2207767))))

(declare-fun e!3356098 () Bool)

(assert (=> b!5414331 (= e!3356098 e!3356096)))

(declare-fun e!3356099 () Bool)

(assert (=> b!5414332 (= e!3356099 call!387461)))

(declare-fun b!5414334 () Bool)

(declare-fun e!3356095 () Bool)

(assert (=> b!5414334 (= e!3356094 e!3356095)))

(declare-fun res!2303058 () Bool)

(assert (=> b!5414334 (= res!2303058 (matchRSpec!2297 (regOne!30901 lt!2207767) s!2326))))

(assert (=> b!5414334 (=> res!2303058 e!3356095)))

(declare-fun b!5414335 () Bool)

(declare-fun e!3356097 () Bool)

(assert (=> b!5414335 (= e!3356097 e!3356098)))

(declare-fun res!2303059 () Bool)

(assert (=> b!5414335 (= res!2303059 (not (is-EmptyLang!15194 lt!2207767)))))

(assert (=> b!5414335 (=> (not res!2303059) (not e!3356098))))

(declare-fun b!5414336 () Bool)

(assert (=> b!5414336 (= e!3356095 (matchRSpec!2297 (regTwo!30901 lt!2207767) s!2326))))

(declare-fun b!5414337 () Bool)

(declare-fun res!2303057 () Bool)

(assert (=> b!5414337 (=> res!2303057 e!3356099)))

(assert (=> b!5414337 (= res!2303057 call!387462)))

(assert (=> b!5414337 (= e!3356093 e!3356099)))

(declare-fun b!5414333 () Bool)

(assert (=> b!5414333 (= e!3356097 call!387462)))

(declare-fun d!1727757 () Bool)

(declare-fun c!944038 () Bool)

(assert (=> d!1727757 (= c!944038 (is-EmptyExpr!15194 lt!2207767))))

(assert (=> d!1727757 (= (matchRSpec!2297 lt!2207767 s!2326) e!3356097)))

(assert (= (and d!1727757 c!944038) b!5414333))

(assert (= (and d!1727757 (not c!944038)) b!5414335))

(assert (= (and b!5414335 res!2303059) b!5414331))

(assert (= (and b!5414331 c!944037) b!5414330))

(assert (= (and b!5414331 (not c!944037)) b!5414328))

(assert (= (and b!5414328 c!944036) b!5414334))

(assert (= (and b!5414328 (not c!944036)) b!5414329))

(assert (= (and b!5414334 (not res!2303058)) b!5414336))

(assert (= (and b!5414329 c!944035) b!5414337))

(assert (= (and b!5414329 (not c!944035)) b!5414327))

(assert (= (and b!5414337 (not res!2303057)) b!5414332))

(assert (= (or b!5414332 b!5414327) bm!387456))

(assert (= (or b!5414333 b!5414337) bm!387457))

(declare-fun m!6438390 () Bool)

(assert (=> bm!387456 m!6438390))

(assert (=> bm!387457 m!6438020))

(declare-fun m!6438392 () Bool)

(assert (=> b!5414334 m!6438392))

(declare-fun m!6438394 () Bool)

(assert (=> b!5414336 m!6438394))

(assert (=> b!5413685 d!1727757))

(declare-fun d!1727759 () Bool)

(declare-fun c!944039 () Bool)

(assert (=> d!1727759 (= c!944039 (isEmpty!33754 lt!2207744))))

(declare-fun e!3356102 () Bool)

(assert (=> d!1727759 (= (matchZipper!1438 (set.insert (Context!9157 (++!13562 lt!2207746 lt!2207737)) (as set.empty (Set Context!9156))) lt!2207744) e!3356102)))

(declare-fun b!5414342 () Bool)

(assert (=> b!5414342 (= e!3356102 (nullableZipper!1447 (set.insert (Context!9157 (++!13562 lt!2207746 lt!2207737)) (as set.empty (Set Context!9156)))))))

(declare-fun b!5414343 () Bool)

(assert (=> b!5414343 (= e!3356102 (matchZipper!1438 (derivationStepZipper!1433 (set.insert (Context!9157 (++!13562 lt!2207746 lt!2207737)) (as set.empty (Set Context!9156))) (head!11611 lt!2207744)) (tail!10708 lt!2207744)))))

(assert (= (and d!1727759 c!944039) b!5414342))

(assert (= (and d!1727759 (not c!944039)) b!5414343))

(declare-fun m!6438396 () Bool)

(assert (=> d!1727759 m!6438396))

(assert (=> b!5414342 m!6437596))

(declare-fun m!6438398 () Bool)

(assert (=> b!5414342 m!6438398))

(declare-fun m!6438400 () Bool)

(assert (=> b!5414343 m!6438400))

(assert (=> b!5414343 m!6437596))

(assert (=> b!5414343 m!6438400))

(declare-fun m!6438402 () Bool)

(assert (=> b!5414343 m!6438402))

(declare-fun m!6438404 () Bool)

(assert (=> b!5414343 m!6438404))

(assert (=> b!5414343 m!6438402))

(assert (=> b!5414343 m!6438404))

(declare-fun m!6438406 () Bool)

(assert (=> b!5414343 m!6438406))

(assert (=> b!5413685 d!1727759))

(declare-fun d!1727761 () Bool)

(assert (=> d!1727761 (= (matchR!7379 lt!2207767 s!2326) (matchRSpec!2297 lt!2207767 s!2326))))

(declare-fun lt!2208046 () Unit!154298)

(assert (=> d!1727761 (= lt!2208046 (choose!40922 lt!2207767 s!2326))))

(assert (=> d!1727761 (validRegex!6930 lt!2207767)))

(assert (=> d!1727761 (= (mainMatchTheorem!2297 lt!2207767 s!2326) lt!2208046)))

(declare-fun bs!1250606 () Bool)

(assert (= bs!1250606 d!1727761))

(assert (=> bs!1250606 m!6437638))

(assert (=> bs!1250606 m!6437670))

(declare-fun m!6438408 () Bool)

(assert (=> bs!1250606 m!6438408))

(declare-fun m!6438410 () Bool)

(assert (=> bs!1250606 m!6438410))

(assert (=> b!5413685 d!1727761))

(declare-fun b!5414344 () Bool)

(declare-fun e!3356104 () Bool)

(declare-fun e!3356103 () Bool)

(assert (=> b!5414344 (= e!3356104 e!3356103)))

(declare-fun res!2303067 () Bool)

(assert (=> b!5414344 (=> (not res!2303067) (not e!3356103))))

(declare-fun lt!2208047 () Bool)

(assert (=> b!5414344 (= res!2303067 (not lt!2208047))))

(declare-fun b!5414345 () Bool)

(declare-fun res!2303070 () Bool)

(declare-fun e!3356108 () Bool)

(assert (=> b!5414345 (=> (not res!2303070) (not e!3356108))))

(declare-fun call!387463 () Bool)

(assert (=> b!5414345 (= res!2303070 (not call!387463))))

(declare-fun b!5414346 () Bool)

(declare-fun res!2303069 () Bool)

(declare-fun e!3356105 () Bool)

(assert (=> b!5414346 (=> res!2303069 e!3356105)))

(assert (=> b!5414346 (= res!2303069 (not (isEmpty!33754 (tail!10708 (_1!35696 lt!2207774)))))))

(declare-fun d!1727763 () Bool)

(declare-fun e!3356109 () Bool)

(assert (=> d!1727763 e!3356109))

(declare-fun c!944040 () Bool)

(assert (=> d!1727763 (= c!944040 (is-EmptyExpr!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun e!3356107 () Bool)

(assert (=> d!1727763 (= lt!2208047 e!3356107)))

(declare-fun c!944042 () Bool)

(assert (=> d!1727763 (= c!944042 (isEmpty!33754 (_1!35696 lt!2207774)))))

(assert (=> d!1727763 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727763 (= (matchR!7379 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774)) lt!2208047)))

(declare-fun b!5414347 () Bool)

(declare-fun res!2303071 () Bool)

(assert (=> b!5414347 (=> (not res!2303071) (not e!3356108))))

(assert (=> b!5414347 (= res!2303071 (isEmpty!33754 (tail!10708 (_1!35696 lt!2207774))))))

(declare-fun b!5414348 () Bool)

(declare-fun e!3356106 () Bool)

(assert (=> b!5414348 (= e!3356106 (not lt!2208047))))

(declare-fun b!5414349 () Bool)

(declare-fun res!2303064 () Bool)

(assert (=> b!5414349 (=> res!2303064 e!3356104)))

(assert (=> b!5414349 (= res!2303064 (not (is-ElementMatch!15194 (reg!15523 (regOne!30900 r!7292)))))))

(assert (=> b!5414349 (= e!3356106 e!3356104)))

(declare-fun b!5414350 () Bool)

(assert (=> b!5414350 (= e!3356108 (= (head!11611 (_1!35696 lt!2207774)) (c!943892 (reg!15523 (regOne!30900 r!7292)))))))

(declare-fun bm!387458 () Bool)

(assert (=> bm!387458 (= call!387463 (isEmpty!33754 (_1!35696 lt!2207774)))))

(declare-fun b!5414351 () Bool)

(declare-fun res!2303066 () Bool)

(assert (=> b!5414351 (=> res!2303066 e!3356104)))

(assert (=> b!5414351 (= res!2303066 e!3356108)))

(declare-fun res!2303065 () Bool)

(assert (=> b!5414351 (=> (not res!2303065) (not e!3356108))))

(assert (=> b!5414351 (= res!2303065 lt!2208047)))

(declare-fun b!5414352 () Bool)

(assert (=> b!5414352 (= e!3356105 (not (= (head!11611 (_1!35696 lt!2207774)) (c!943892 (reg!15523 (regOne!30900 r!7292))))))))

(declare-fun b!5414353 () Bool)

(assert (=> b!5414353 (= e!3356103 e!3356105)))

(declare-fun res!2303068 () Bool)

(assert (=> b!5414353 (=> res!2303068 e!3356105)))

(assert (=> b!5414353 (= res!2303068 call!387463)))

(declare-fun b!5414354 () Bool)

(assert (=> b!5414354 (= e!3356109 (= lt!2208047 call!387463))))

(declare-fun b!5414355 () Bool)

(assert (=> b!5414355 (= e!3356107 (nullable!5363 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5414356 () Bool)

(assert (=> b!5414356 (= e!3356109 e!3356106)))

(declare-fun c!944041 () Bool)

(assert (=> b!5414356 (= c!944041 (is-EmptyLang!15194 (reg!15523 (regOne!30900 r!7292))))))

(declare-fun b!5414357 () Bool)

(assert (=> b!5414357 (= e!3356107 (matchR!7379 (derivativeStep!4268 (reg!15523 (regOne!30900 r!7292)) (head!11611 (_1!35696 lt!2207774))) (tail!10708 (_1!35696 lt!2207774))))))

(assert (= (and d!1727763 c!944042) b!5414355))

(assert (= (and d!1727763 (not c!944042)) b!5414357))

(assert (= (and d!1727763 c!944040) b!5414354))

(assert (= (and d!1727763 (not c!944040)) b!5414356))

(assert (= (and b!5414356 c!944041) b!5414348))

(assert (= (and b!5414356 (not c!944041)) b!5414349))

(assert (= (and b!5414349 (not res!2303064)) b!5414351))

(assert (= (and b!5414351 res!2303065) b!5414345))

(assert (= (and b!5414345 res!2303070) b!5414347))

(assert (= (and b!5414347 res!2303071) b!5414350))

(assert (= (and b!5414351 (not res!2303066)) b!5414344))

(assert (= (and b!5414344 res!2303067) b!5414353))

(assert (= (and b!5414353 (not res!2303068)) b!5414346))

(assert (= (and b!5414346 (not res!2303069)) b!5414352))

(assert (= (or b!5414354 b!5414345 b!5414353) bm!387458))

(declare-fun m!6438412 () Bool)

(assert (=> b!5414355 m!6438412))

(assert (=> b!5414347 m!6438234))

(assert (=> b!5414347 m!6438234))

(declare-fun m!6438414 () Bool)

(assert (=> b!5414347 m!6438414))

(assert (=> b!5414350 m!6438230))

(assert (=> d!1727763 m!6438226))

(assert (=> d!1727763 m!6437708))

(assert (=> b!5414352 m!6438230))

(assert (=> b!5414357 m!6438230))

(assert (=> b!5414357 m!6438230))

(declare-fun m!6438416 () Bool)

(assert (=> b!5414357 m!6438416))

(assert (=> b!5414357 m!6438234))

(assert (=> b!5414357 m!6438416))

(assert (=> b!5414357 m!6438234))

(declare-fun m!6438418 () Bool)

(assert (=> b!5414357 m!6438418))

(assert (=> bm!387458 m!6438226))

(assert (=> b!5414346 m!6438234))

(assert (=> b!5414346 m!6438234))

(assert (=> b!5414346 m!6438414))

(assert (=> b!5413685 d!1727763))

(declare-fun d!1727765 () Bool)

(assert (=> d!1727765 (= (matchR!7379 lt!2207751 (_2!35696 lt!2207774)) (matchZipper!1438 lt!2207766 (_2!35696 lt!2207774)))))

(declare-fun lt!2208051 () Unit!154298)

(declare-fun choose!40932 ((Set Context!9156) List!61883 Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727765 (= lt!2208051 (choose!40932 lt!2207766 lt!2207773 lt!2207751 (_2!35696 lt!2207774)))))

(assert (=> d!1727765 (validRegex!6930 lt!2207751)))

(assert (=> d!1727765 (= (theoremZipperRegexEquiv!508 lt!2207766 lt!2207773 lt!2207751 (_2!35696 lt!2207774)) lt!2208051)))

(declare-fun bs!1250607 () Bool)

(assert (= bs!1250607 d!1727765))

(assert (=> bs!1250607 m!6437666))

(assert (=> bs!1250607 m!6437732))

(declare-fun m!6438420 () Bool)

(assert (=> bs!1250607 m!6438420))

(declare-fun m!6438422 () Bool)

(assert (=> bs!1250607 m!6438422))

(assert (=> b!5413685 d!1727765))

(assert (=> b!5413685 d!1727717))

(declare-fun d!1727767 () Bool)

(assert (=> d!1727767 (= (Exists!2375 lambda!282900) (choose!40919 lambda!282900))))

(declare-fun bs!1250608 () Bool)

(assert (= bs!1250608 d!1727767))

(declare-fun m!6438424 () Bool)

(assert (=> bs!1250608 m!6438424))

(assert (=> b!5413685 d!1727767))

(declare-fun bs!1250613 () Bool)

(declare-fun d!1727769 () Bool)

(assert (= bs!1250613 (and d!1727769 b!5413671)))

(declare-fun lambda!283008 () Int)

(assert (=> bs!1250613 (= lambda!283008 lambda!282898)))

(declare-fun bs!1250614 () Bool)

(assert (= bs!1250614 (and d!1727769 d!1727697)))

(assert (=> bs!1250614 (= lambda!283008 lambda!282966)))

(declare-fun bs!1250615 () Bool)

(assert (= bs!1250615 (and d!1727769 d!1727725)))

(assert (=> bs!1250615 (= lambda!283008 lambda!282983)))

(declare-fun bs!1250616 () Bool)

(assert (= bs!1250616 (and d!1727769 d!1727755)))

(assert (=> bs!1250616 (= lambda!283008 lambda!282997)))

(declare-fun bs!1250617 () Bool)

(assert (= bs!1250617 (and d!1727769 d!1727723)))

(assert (=> bs!1250617 (= lambda!283008 lambda!282980)))

(assert (=> d!1727769 (matchZipper!1438 (set.insert (Context!9157 (++!13562 (exprs!5078 lt!2207772) (exprs!5078 lt!2207720))) (as set.empty (Set Context!9156))) (++!13561 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(declare-fun lt!2208057 () Unit!154298)

(assert (=> d!1727769 (= lt!2208057 (lemmaConcatPreservesForall!219 (exprs!5078 lt!2207772) (exprs!5078 lt!2207720) lambda!283008))))

(declare-fun lt!2208056 () Unit!154298)

(declare-fun choose!40933 (Context!9156 Context!9156 List!61881 List!61881) Unit!154298)

(assert (=> d!1727769 (= lt!2208056 (choose!40933 lt!2207772 lt!2207720 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(assert (=> d!1727769 (matchZipper!1438 (set.insert lt!2207772 (as set.empty (Set Context!9156))) (_1!35696 lt!2207774))))

(assert (=> d!1727769 (= (lemmaConcatenateContextMatchesConcatOfStrings!67 lt!2207772 lt!2207720 (_1!35696 lt!2207774) (_2!35696 lt!2207774)) lt!2208056)))

(declare-fun bs!1250618 () Bool)

(assert (= bs!1250618 d!1727769))

(declare-fun m!6438432 () Bool)

(assert (=> bs!1250618 m!6438432))

(declare-fun m!6438434 () Bool)

(assert (=> bs!1250618 m!6438434))

(assert (=> bs!1250618 m!6437704))

(declare-fun m!6438436 () Bool)

(assert (=> bs!1250618 m!6438436))

(declare-fun m!6438438 () Bool)

(assert (=> bs!1250618 m!6438438))

(declare-fun m!6438440 () Bool)

(assert (=> bs!1250618 m!6438440))

(assert (=> bs!1250618 m!6438440))

(assert (=> bs!1250618 m!6437620))

(declare-fun m!6438442 () Bool)

(assert (=> bs!1250618 m!6438442))

(assert (=> bs!1250618 m!6437704))

(assert (=> bs!1250618 m!6437620))

(assert (=> b!5413685 d!1727769))

(declare-fun b!5414362 () Bool)

(declare-fun e!3356113 () Bool)

(declare-fun e!3356112 () Bool)

(assert (=> b!5414362 (= e!3356113 e!3356112)))

(declare-fun res!2303079 () Bool)

(assert (=> b!5414362 (=> (not res!2303079) (not e!3356112))))

(declare-fun lt!2208058 () Bool)

(assert (=> b!5414362 (= res!2303079 (not lt!2208058))))

(declare-fun b!5414363 () Bool)

(declare-fun res!2303082 () Bool)

(declare-fun e!3356117 () Bool)

(assert (=> b!5414363 (=> (not res!2303082) (not e!3356117))))

(declare-fun call!387464 () Bool)

(assert (=> b!5414363 (= res!2303082 (not call!387464))))

(declare-fun b!5414364 () Bool)

(declare-fun res!2303081 () Bool)

(declare-fun e!3356114 () Bool)

(assert (=> b!5414364 (=> res!2303081 e!3356114)))

(assert (=> b!5414364 (= res!2303081 (not (isEmpty!33754 (tail!10708 s!2326))))))

(declare-fun d!1727773 () Bool)

(declare-fun e!3356118 () Bool)

(assert (=> d!1727773 e!3356118))

(declare-fun c!944043 () Bool)

(assert (=> d!1727773 (= c!944043 (is-EmptyExpr!15194 lt!2207767))))

(declare-fun e!3356116 () Bool)

(assert (=> d!1727773 (= lt!2208058 e!3356116)))

(declare-fun c!944045 () Bool)

(assert (=> d!1727773 (= c!944045 (isEmpty!33754 s!2326))))

(assert (=> d!1727773 (validRegex!6930 lt!2207767)))

(assert (=> d!1727773 (= (matchR!7379 lt!2207767 s!2326) lt!2208058)))

(declare-fun b!5414365 () Bool)

(declare-fun res!2303083 () Bool)

(assert (=> b!5414365 (=> (not res!2303083) (not e!3356117))))

(assert (=> b!5414365 (= res!2303083 (isEmpty!33754 (tail!10708 s!2326)))))

(declare-fun b!5414366 () Bool)

(declare-fun e!3356115 () Bool)

(assert (=> b!5414366 (= e!3356115 (not lt!2208058))))

(declare-fun b!5414367 () Bool)

(declare-fun res!2303076 () Bool)

(assert (=> b!5414367 (=> res!2303076 e!3356113)))

(assert (=> b!5414367 (= res!2303076 (not (is-ElementMatch!15194 lt!2207767)))))

(assert (=> b!5414367 (= e!3356115 e!3356113)))

(declare-fun b!5414368 () Bool)

(assert (=> b!5414368 (= e!3356117 (= (head!11611 s!2326) (c!943892 lt!2207767)))))

(declare-fun bm!387459 () Bool)

(assert (=> bm!387459 (= call!387464 (isEmpty!33754 s!2326))))

(declare-fun b!5414369 () Bool)

(declare-fun res!2303078 () Bool)

(assert (=> b!5414369 (=> res!2303078 e!3356113)))

(assert (=> b!5414369 (= res!2303078 e!3356117)))

(declare-fun res!2303077 () Bool)

(assert (=> b!5414369 (=> (not res!2303077) (not e!3356117))))

(assert (=> b!5414369 (= res!2303077 lt!2208058)))

(declare-fun b!5414370 () Bool)

(assert (=> b!5414370 (= e!3356114 (not (= (head!11611 s!2326) (c!943892 lt!2207767))))))

(declare-fun b!5414371 () Bool)

(assert (=> b!5414371 (= e!3356112 e!3356114)))

(declare-fun res!2303080 () Bool)

(assert (=> b!5414371 (=> res!2303080 e!3356114)))

(assert (=> b!5414371 (= res!2303080 call!387464)))

(declare-fun b!5414372 () Bool)

(assert (=> b!5414372 (= e!3356118 (= lt!2208058 call!387464))))

(declare-fun b!5414373 () Bool)

(assert (=> b!5414373 (= e!3356116 (nullable!5363 lt!2207767))))

(declare-fun b!5414374 () Bool)

(assert (=> b!5414374 (= e!3356118 e!3356115)))

(declare-fun c!944044 () Bool)

(assert (=> b!5414374 (= c!944044 (is-EmptyLang!15194 lt!2207767))))

(declare-fun b!5414375 () Bool)

(assert (=> b!5414375 (= e!3356116 (matchR!7379 (derivativeStep!4268 lt!2207767 (head!11611 s!2326)) (tail!10708 s!2326)))))

(assert (= (and d!1727773 c!944045) b!5414373))

(assert (= (and d!1727773 (not c!944045)) b!5414375))

(assert (= (and d!1727773 c!944043) b!5414372))

(assert (= (and d!1727773 (not c!944043)) b!5414374))

(assert (= (and b!5414374 c!944044) b!5414366))

(assert (= (and b!5414374 (not c!944044)) b!5414367))

(assert (= (and b!5414367 (not res!2303076)) b!5414369))

(assert (= (and b!5414369 res!2303077) b!5414363))

(assert (= (and b!5414363 res!2303082) b!5414365))

(assert (= (and b!5414365 res!2303083) b!5414368))

(assert (= (and b!5414369 (not res!2303078)) b!5414362))

(assert (= (and b!5414362 res!2303079) b!5414371))

(assert (= (and b!5414371 (not res!2303080)) b!5414364))

(assert (= (and b!5414364 (not res!2303081)) b!5414370))

(assert (= (or b!5414372 b!5414363 b!5414371) bm!387459))

(declare-fun m!6438444 () Bool)

(assert (=> b!5414373 m!6438444))

(assert (=> b!5414365 m!6438028))

(assert (=> b!5414365 m!6438028))

(assert (=> b!5414365 m!6438246))

(assert (=> b!5414368 m!6438024))

(assert (=> d!1727773 m!6438020))

(assert (=> d!1727773 m!6438410))

(assert (=> b!5414370 m!6438024))

(assert (=> b!5414375 m!6438024))

(assert (=> b!5414375 m!6438024))

(declare-fun m!6438446 () Bool)

(assert (=> b!5414375 m!6438446))

(assert (=> b!5414375 m!6438028))

(assert (=> b!5414375 m!6438446))

(assert (=> b!5414375 m!6438028))

(declare-fun m!6438448 () Bool)

(assert (=> b!5414375 m!6438448))

(assert (=> bm!387459 m!6438020))

(assert (=> b!5414364 m!6438028))

(assert (=> b!5414364 m!6438028))

(assert (=> b!5414364 m!6438246))

(assert (=> b!5413685 d!1727773))

(declare-fun d!1727775 () Bool)

(assert (=> d!1727775 (= (matchR!7379 (Concat!24039 (Concat!24039 (reg!15523 (regOne!30900 r!7292)) lt!2207765) (regTwo!30900 r!7292)) s!2326) (matchR!7379 (Concat!24039 (reg!15523 (regOne!30900 r!7292)) (Concat!24039 lt!2207765 (regTwo!30900 r!7292))) s!2326))))

(declare-fun lt!2208061 () Unit!154298)

(declare-fun choose!40934 (Regex!15194 Regex!15194 Regex!15194 List!61881) Unit!154298)

(assert (=> d!1727775 (= lt!2208061 (choose!40934 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (regTwo!30900 r!7292) s!2326))))

(declare-fun e!3356135 () Bool)

(assert (=> d!1727775 e!3356135))

(declare-fun res!2303098 () Bool)

(assert (=> d!1727775 (=> (not res!2303098) (not e!3356135))))

(assert (=> d!1727775 (= res!2303098 (validRegex!6930 (reg!15523 (regOne!30900 r!7292))))))

(assert (=> d!1727775 (= (lemmaConcatAssociative!47 (reg!15523 (regOne!30900 r!7292)) lt!2207765 (regTwo!30900 r!7292) s!2326) lt!2208061)))

(declare-fun b!5414398 () Bool)

(declare-fun res!2303099 () Bool)

(assert (=> b!5414398 (=> (not res!2303099) (not e!3356135))))

(assert (=> b!5414398 (= res!2303099 (validRegex!6930 lt!2207765))))

(declare-fun b!5414399 () Bool)

(assert (=> b!5414399 (= e!3356135 (validRegex!6930 (regTwo!30900 r!7292)))))

(assert (= (and d!1727775 res!2303098) b!5414398))

(assert (= (and b!5414398 res!2303099) b!5414399))

(declare-fun m!6438450 () Bool)

(assert (=> d!1727775 m!6438450))

(declare-fun m!6438452 () Bool)

(assert (=> d!1727775 m!6438452))

(declare-fun m!6438454 () Bool)

(assert (=> d!1727775 m!6438454))

(assert (=> d!1727775 m!6437708))

(assert (=> b!5414398 m!6437748))

(declare-fun m!6438456 () Bool)

(assert (=> b!5414399 m!6438456))

(assert (=> b!5413685 d!1727775))

(declare-fun bs!1250619 () Bool)

(declare-fun d!1727777 () Bool)

(assert (= bs!1250619 (and d!1727777 b!5413689)))

(declare-fun lambda!283009 () Int)

(assert (=> bs!1250619 (not (= lambda!283009 lambda!282903))))

(assert (=> bs!1250619 (not (= lambda!283009 lambda!282902))))

(declare-fun bs!1250620 () Bool)

(assert (= bs!1250620 (and d!1727777 d!1727733)))

(assert (=> bs!1250620 (not (= lambda!283009 lambda!282993))))

(declare-fun bs!1250621 () Bool)

(assert (= bs!1250621 (and d!1727777 d!1727749)))

(assert (=> bs!1250621 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283009 lambda!282994))))

(declare-fun bs!1250622 () Bool)

(assert (= bs!1250622 (and d!1727777 b!5414190)))

(assert (=> bs!1250622 (not (= lambda!283009 lambda!282971))))

(assert (=> bs!1250619 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283009 lambda!282901))))

(declare-fun bs!1250623 () Bool)

(assert (= bs!1250623 (and d!1727777 b!5414327)))

(assert (=> bs!1250623 (not (= lambda!283009 lambda!282999))))

(declare-fun bs!1250624 () Bool)

(assert (= bs!1250624 (and d!1727777 b!5414298)))

(assert (=> bs!1250624 (not (= lambda!283009 lambda!282991))))

(assert (=> bs!1250620 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283009 lambda!282992))))

(declare-fun bs!1250625 () Bool)

(assert (= bs!1250625 (and d!1727777 d!1727727)))

(assert (=> bs!1250625 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) (Star!15194 (reg!15523 (regOne!30900 r!7292))))) (= lambda!283009 lambda!282988))))

(assert (=> bs!1250625 (not (= lambda!283009 lambda!282989))))

(declare-fun bs!1250626 () Bool)

(assert (= bs!1250626 (and d!1727777 b!5414185)))

(assert (=> bs!1250626 (not (= lambda!283009 lambda!282972))))

(declare-fun bs!1250627 () Bool)

(assert (= bs!1250627 (and d!1727777 d!1727689)))

(assert (=> bs!1250627 (not (= lambda!283009 lambda!282963))))

(declare-fun bs!1250628 () Bool)

(assert (= bs!1250628 (and d!1727777 b!5413693)))

(assert (=> bs!1250628 (not (= lambda!283009 lambda!282895))))

(assert (=> bs!1250627 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283009 lambda!282962))))

(declare-fun bs!1250629 () Bool)

(assert (= bs!1250629 (and d!1727777 b!5413685)))

(assert (=> bs!1250629 (= lambda!283009 lambda!282899)))

(declare-fun bs!1250630 () Bool)

(assert (= bs!1250630 (and d!1727777 d!1727687)))

(assert (=> bs!1250630 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283009 lambda!282957))))

(assert (=> bs!1250629 (not (= lambda!283009 lambda!282900))))

(declare-fun bs!1250631 () Bool)

(assert (= bs!1250631 (and d!1727777 b!5414303)))

(assert (=> bs!1250631 (not (= lambda!283009 lambda!282990))))

(assert (=> bs!1250628 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283009 lambda!282894))))

(declare-fun bs!1250632 () Bool)

(assert (= bs!1250632 (and d!1727777 b!5414332)))

(assert (=> bs!1250632 (not (= lambda!283009 lambda!282998))))

(assert (=> d!1727777 true))

(assert (=> d!1727777 true))

(assert (=> d!1727777 true))

(assert (=> d!1727777 (= (isDefined!12008 (findConcatSeparation!1719 lt!2207723 (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326)) (Exists!2375 lambda!283009))))

(declare-fun lt!2208062 () Unit!154298)

(assert (=> d!1727777 (= lt!2208062 (choose!40920 lt!2207723 (regTwo!30900 r!7292) s!2326))))

(assert (=> d!1727777 (validRegex!6930 lt!2207723)))

(assert (=> d!1727777 (= (lemmaFindConcatSeparationEquivalentToExists!1483 lt!2207723 (regTwo!30900 r!7292) s!2326) lt!2208062)))

(declare-fun bs!1250633 () Bool)

(assert (= bs!1250633 d!1727777))

(declare-fun m!6438464 () Bool)

(assert (=> bs!1250633 m!6438464))

(assert (=> bs!1250633 m!6437660))

(assert (=> bs!1250633 m!6437660))

(declare-fun m!6438466 () Bool)

(assert (=> bs!1250633 m!6438466))

(assert (=> bs!1250633 m!6438380))

(declare-fun m!6438468 () Bool)

(assert (=> bs!1250633 m!6438468))

(assert (=> b!5413685 d!1727777))

(declare-fun b!5414409 () Bool)

(declare-fun e!3356144 () Bool)

(declare-fun e!3356143 () Bool)

(assert (=> b!5414409 (= e!3356144 e!3356143)))

(declare-fun res!2303108 () Bool)

(assert (=> b!5414409 (=> (not res!2303108) (not e!3356143))))

(declare-fun lt!2208063 () Bool)

(assert (=> b!5414409 (= res!2303108 (not lt!2208063))))

(declare-fun b!5414410 () Bool)

(declare-fun res!2303111 () Bool)

(declare-fun e!3356148 () Bool)

(assert (=> b!5414410 (=> (not res!2303111) (not e!3356148))))

(declare-fun call!387474 () Bool)

(assert (=> b!5414410 (= res!2303111 (not call!387474))))

(declare-fun b!5414411 () Bool)

(declare-fun res!2303110 () Bool)

(declare-fun e!3356145 () Bool)

(assert (=> b!5414411 (=> res!2303110 e!3356145)))

(assert (=> b!5414411 (= res!2303110 (not (isEmpty!33754 (tail!10708 lt!2207744))))))

(declare-fun d!1727781 () Bool)

(declare-fun e!3356149 () Bool)

(assert (=> d!1727781 e!3356149))

(declare-fun c!944052 () Bool)

(assert (=> d!1727781 (= c!944052 (is-EmptyExpr!15194 lt!2207749))))

(declare-fun e!3356147 () Bool)

(assert (=> d!1727781 (= lt!2208063 e!3356147)))

(declare-fun c!944054 () Bool)

(assert (=> d!1727781 (= c!944054 (isEmpty!33754 lt!2207744))))

(assert (=> d!1727781 (validRegex!6930 lt!2207749)))

(assert (=> d!1727781 (= (matchR!7379 lt!2207749 lt!2207744) lt!2208063)))

(declare-fun b!5414412 () Bool)

(declare-fun res!2303112 () Bool)

(assert (=> b!5414412 (=> (not res!2303112) (not e!3356148))))

(assert (=> b!5414412 (= res!2303112 (isEmpty!33754 (tail!10708 lt!2207744)))))

(declare-fun b!5414413 () Bool)

(declare-fun e!3356146 () Bool)

(assert (=> b!5414413 (= e!3356146 (not lt!2208063))))

(declare-fun b!5414414 () Bool)

(declare-fun res!2303105 () Bool)

(assert (=> b!5414414 (=> res!2303105 e!3356144)))

(assert (=> b!5414414 (= res!2303105 (not (is-ElementMatch!15194 lt!2207749)))))

(assert (=> b!5414414 (= e!3356146 e!3356144)))

(declare-fun b!5414415 () Bool)

(assert (=> b!5414415 (= e!3356148 (= (head!11611 lt!2207744) (c!943892 lt!2207749)))))

(declare-fun bm!387469 () Bool)

(assert (=> bm!387469 (= call!387474 (isEmpty!33754 lt!2207744))))

(declare-fun b!5414416 () Bool)

(declare-fun res!2303107 () Bool)

(assert (=> b!5414416 (=> res!2303107 e!3356144)))

(assert (=> b!5414416 (= res!2303107 e!3356148)))

(declare-fun res!2303106 () Bool)

(assert (=> b!5414416 (=> (not res!2303106) (not e!3356148))))

(assert (=> b!5414416 (= res!2303106 lt!2208063)))

(declare-fun b!5414417 () Bool)

(assert (=> b!5414417 (= e!3356145 (not (= (head!11611 lt!2207744) (c!943892 lt!2207749))))))

(declare-fun b!5414418 () Bool)

(assert (=> b!5414418 (= e!3356143 e!3356145)))

(declare-fun res!2303109 () Bool)

(assert (=> b!5414418 (=> res!2303109 e!3356145)))

(assert (=> b!5414418 (= res!2303109 call!387474)))

(declare-fun b!5414419 () Bool)

(assert (=> b!5414419 (= e!3356149 (= lt!2208063 call!387474))))

(declare-fun b!5414420 () Bool)

(assert (=> b!5414420 (= e!3356147 (nullable!5363 lt!2207749))))

(declare-fun b!5414421 () Bool)

(assert (=> b!5414421 (= e!3356149 e!3356146)))

(declare-fun c!944053 () Bool)

(assert (=> b!5414421 (= c!944053 (is-EmptyLang!15194 lt!2207749))))

(declare-fun b!5414422 () Bool)

(assert (=> b!5414422 (= e!3356147 (matchR!7379 (derivativeStep!4268 lt!2207749 (head!11611 lt!2207744)) (tail!10708 lt!2207744)))))

(assert (= (and d!1727781 c!944054) b!5414420))

(assert (= (and d!1727781 (not c!944054)) b!5414422))

(assert (= (and d!1727781 c!944052) b!5414419))

(assert (= (and d!1727781 (not c!944052)) b!5414421))

(assert (= (and b!5414421 c!944053) b!5414413))

(assert (= (and b!5414421 (not c!944053)) b!5414414))

(assert (= (and b!5414414 (not res!2303105)) b!5414416))

(assert (= (and b!5414416 res!2303106) b!5414410))

(assert (= (and b!5414410 res!2303111) b!5414412))

(assert (= (and b!5414412 res!2303112) b!5414415))

(assert (= (and b!5414416 (not res!2303107)) b!5414409))

(assert (= (and b!5414409 res!2303108) b!5414418))

(assert (= (and b!5414418 (not res!2303109)) b!5414411))

(assert (= (and b!5414411 (not res!2303110)) b!5414417))

(assert (= (or b!5414419 b!5414410 b!5414418) bm!387469))

(assert (=> b!5414420 m!6438244))

(assert (=> b!5414412 m!6438404))

(assert (=> b!5414412 m!6438404))

(declare-fun m!6438470 () Bool)

(assert (=> b!5414412 m!6438470))

(assert (=> b!5414415 m!6438400))

(assert (=> d!1727781 m!6438396))

(assert (=> d!1727781 m!6438248))

(assert (=> b!5414417 m!6438400))

(assert (=> b!5414422 m!6438400))

(assert (=> b!5414422 m!6438400))

(declare-fun m!6438474 () Bool)

(assert (=> b!5414422 m!6438474))

(assert (=> b!5414422 m!6438404))

(assert (=> b!5414422 m!6438474))

(assert (=> b!5414422 m!6438404))

(declare-fun m!6438476 () Bool)

(assert (=> b!5414422 m!6438476))

(assert (=> bm!387469 m!6438396))

(assert (=> b!5414411 m!6438404))

(assert (=> b!5414411 m!6438404))

(assert (=> b!5414411 m!6438470))

(assert (=> b!5413685 d!1727781))

(assert (=> b!5413685 d!1727721))

(declare-fun b!5414423 () Bool)

(declare-fun e!3356151 () Bool)

(declare-fun e!3356150 () Bool)

(assert (=> b!5414423 (= e!3356151 e!3356150)))

(declare-fun res!2303116 () Bool)

(assert (=> b!5414423 (=> (not res!2303116) (not e!3356150))))

(declare-fun lt!2208064 () Bool)

(assert (=> b!5414423 (= res!2303116 (not lt!2208064))))

(declare-fun b!5414424 () Bool)

(declare-fun res!2303119 () Bool)

(declare-fun e!3356155 () Bool)

(assert (=> b!5414424 (=> (not res!2303119) (not e!3356155))))

(declare-fun call!387475 () Bool)

(assert (=> b!5414424 (= res!2303119 (not call!387475))))

(declare-fun b!5414425 () Bool)

(declare-fun res!2303118 () Bool)

(declare-fun e!3356152 () Bool)

(assert (=> b!5414425 (=> res!2303118 e!3356152)))

(assert (=> b!5414425 (= res!2303118 (not (isEmpty!33754 (tail!10708 (_1!35696 lt!2207731)))))))

(declare-fun d!1727785 () Bool)

(declare-fun e!3356156 () Bool)

(assert (=> d!1727785 e!3356156))

(declare-fun c!944055 () Bool)

(assert (=> d!1727785 (= c!944055 (is-EmptyExpr!15194 lt!2207723))))

(declare-fun e!3356154 () Bool)

(assert (=> d!1727785 (= lt!2208064 e!3356154)))

(declare-fun c!944057 () Bool)

(assert (=> d!1727785 (= c!944057 (isEmpty!33754 (_1!35696 lt!2207731)))))

(assert (=> d!1727785 (validRegex!6930 lt!2207723)))

(assert (=> d!1727785 (= (matchR!7379 lt!2207723 (_1!35696 lt!2207731)) lt!2208064)))

(declare-fun b!5414426 () Bool)

(declare-fun res!2303120 () Bool)

(assert (=> b!5414426 (=> (not res!2303120) (not e!3356155))))

(assert (=> b!5414426 (= res!2303120 (isEmpty!33754 (tail!10708 (_1!35696 lt!2207731))))))

(declare-fun b!5414427 () Bool)

(declare-fun e!3356153 () Bool)

(assert (=> b!5414427 (= e!3356153 (not lt!2208064))))

(declare-fun b!5414428 () Bool)

(declare-fun res!2303113 () Bool)

(assert (=> b!5414428 (=> res!2303113 e!3356151)))

(assert (=> b!5414428 (= res!2303113 (not (is-ElementMatch!15194 lt!2207723)))))

(assert (=> b!5414428 (= e!3356153 e!3356151)))

(declare-fun b!5414429 () Bool)

(assert (=> b!5414429 (= e!3356155 (= (head!11611 (_1!35696 lt!2207731)) (c!943892 lt!2207723)))))

(declare-fun bm!387470 () Bool)

(assert (=> bm!387470 (= call!387475 (isEmpty!33754 (_1!35696 lt!2207731)))))

(declare-fun b!5414430 () Bool)

(declare-fun res!2303115 () Bool)

(assert (=> b!5414430 (=> res!2303115 e!3356151)))

(assert (=> b!5414430 (= res!2303115 e!3356155)))

(declare-fun res!2303114 () Bool)

(assert (=> b!5414430 (=> (not res!2303114) (not e!3356155))))

(assert (=> b!5414430 (= res!2303114 lt!2208064)))

(declare-fun b!5414431 () Bool)

(assert (=> b!5414431 (= e!3356152 (not (= (head!11611 (_1!35696 lt!2207731)) (c!943892 lt!2207723))))))

(declare-fun b!5414432 () Bool)

(assert (=> b!5414432 (= e!3356150 e!3356152)))

(declare-fun res!2303117 () Bool)

(assert (=> b!5414432 (=> res!2303117 e!3356152)))

(assert (=> b!5414432 (= res!2303117 call!387475)))

(declare-fun b!5414433 () Bool)

(assert (=> b!5414433 (= e!3356156 (= lt!2208064 call!387475))))

(declare-fun b!5414434 () Bool)

(assert (=> b!5414434 (= e!3356154 (nullable!5363 lt!2207723))))

(declare-fun b!5414435 () Bool)

(assert (=> b!5414435 (= e!3356156 e!3356153)))

(declare-fun c!944056 () Bool)

(assert (=> b!5414435 (= c!944056 (is-EmptyLang!15194 lt!2207723))))

(declare-fun b!5414436 () Bool)

(assert (=> b!5414436 (= e!3356154 (matchR!7379 (derivativeStep!4268 lt!2207723 (head!11611 (_1!35696 lt!2207731))) (tail!10708 (_1!35696 lt!2207731))))))

(assert (= (and d!1727785 c!944057) b!5414434))

(assert (= (and d!1727785 (not c!944057)) b!5414436))

(assert (= (and d!1727785 c!944055) b!5414433))

(assert (= (and d!1727785 (not c!944055)) b!5414435))

(assert (= (and b!5414435 c!944056) b!5414427))

(assert (= (and b!5414435 (not c!944056)) b!5414428))

(assert (= (and b!5414428 (not res!2303113)) b!5414430))

(assert (= (and b!5414430 res!2303114) b!5414424))

(assert (= (and b!5414424 res!2303119) b!5414426))

(assert (= (and b!5414426 res!2303120) b!5414429))

(assert (= (and b!5414430 (not res!2303115)) b!5414423))

(assert (= (and b!5414423 res!2303116) b!5414432))

(assert (= (and b!5414432 (not res!2303117)) b!5414425))

(assert (= (and b!5414425 (not res!2303118)) b!5414431))

(assert (= (or b!5414433 b!5414424 b!5414432) bm!387470))

(declare-fun m!6438478 () Bool)

(assert (=> b!5414434 m!6438478))

(declare-fun m!6438480 () Bool)

(assert (=> b!5414426 m!6438480))

(assert (=> b!5414426 m!6438480))

(declare-fun m!6438482 () Bool)

(assert (=> b!5414426 m!6438482))

(declare-fun m!6438484 () Bool)

(assert (=> b!5414429 m!6438484))

(assert (=> d!1727785 m!6438326))

(assert (=> d!1727785 m!6438380))

(assert (=> b!5414431 m!6438484))

(assert (=> b!5414436 m!6438484))

(assert (=> b!5414436 m!6438484))

(declare-fun m!6438486 () Bool)

(assert (=> b!5414436 m!6438486))

(assert (=> b!5414436 m!6438480))

(assert (=> b!5414436 m!6438486))

(assert (=> b!5414436 m!6438480))

(declare-fun m!6438488 () Bool)

(assert (=> b!5414436 m!6438488))

(assert (=> bm!387470 m!6438326))

(assert (=> b!5414425 m!6438480))

(assert (=> b!5414425 m!6438480))

(assert (=> b!5414425 m!6438482))

(assert (=> b!5413685 d!1727785))

(declare-fun d!1727787 () Bool)

(assert (=> d!1727787 (= (isDefined!12008 lt!2207721) (not (isEmpty!33755 lt!2207721)))))

(declare-fun bs!1250635 () Bool)

(assert (= bs!1250635 d!1727787))

(declare-fun m!6438490 () Bool)

(assert (=> bs!1250635 m!6438490))

(assert (=> b!5413685 d!1727787))

(declare-fun d!1727789 () Bool)

(assert (=> d!1727789 (= (get!21294 lt!2207721) (v!51333 lt!2207721))))

(assert (=> b!5413685 d!1727789))

(declare-fun bs!1250636 () Bool)

(declare-fun d!1727791 () Bool)

(assert (= bs!1250636 (and d!1727791 b!5413689)))

(declare-fun lambda!283010 () Int)

(assert (=> bs!1250636 (not (= lambda!283010 lambda!282903))))

(assert (=> bs!1250636 (not (= lambda!283010 lambda!282902))))

(declare-fun bs!1250637 () Bool)

(assert (= bs!1250637 (and d!1727791 d!1727733)))

(assert (=> bs!1250637 (not (= lambda!283010 lambda!282993))))

(declare-fun bs!1250638 () Bool)

(assert (= bs!1250638 (and d!1727791 d!1727749)))

(assert (=> bs!1250638 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283010 lambda!282994))))

(declare-fun bs!1250639 () Bool)

(assert (= bs!1250639 (and d!1727791 b!5414190)))

(assert (=> bs!1250639 (not (= lambda!283010 lambda!282971))))

(assert (=> bs!1250636 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283010 lambda!282901))))

(declare-fun bs!1250640 () Bool)

(assert (= bs!1250640 (and d!1727791 b!5414327)))

(assert (=> bs!1250640 (not (= lambda!283010 lambda!282999))))

(declare-fun bs!1250641 () Bool)

(assert (= bs!1250641 (and d!1727791 b!5414298)))

(assert (=> bs!1250641 (not (= lambda!283010 lambda!282991))))

(declare-fun bs!1250642 () Bool)

(assert (= bs!1250642 (and d!1727791 d!1727727)))

(assert (=> bs!1250642 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) (Star!15194 (reg!15523 (regOne!30900 r!7292))))) (= lambda!283010 lambda!282988))))

(assert (=> bs!1250642 (not (= lambda!283010 lambda!282989))))

(declare-fun bs!1250643 () Bool)

(assert (= bs!1250643 (and d!1727791 b!5414185)))

(assert (=> bs!1250643 (not (= lambda!283010 lambda!282972))))

(declare-fun bs!1250644 () Bool)

(assert (= bs!1250644 (and d!1727791 d!1727689)))

(assert (=> bs!1250644 (not (= lambda!283010 lambda!282963))))

(declare-fun bs!1250645 () Bool)

(assert (= bs!1250645 (and d!1727791 b!5413693)))

(assert (=> bs!1250645 (not (= lambda!283010 lambda!282895))))

(assert (=> bs!1250644 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283010 lambda!282962))))

(declare-fun bs!1250646 () Bool)

(assert (= bs!1250646 (and d!1727791 b!5413685)))

(assert (=> bs!1250646 (= lambda!283010 lambda!282899)))

(declare-fun bs!1250647 () Bool)

(assert (= bs!1250647 (and d!1727791 d!1727687)))

(assert (=> bs!1250647 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283010 lambda!282957))))

(assert (=> bs!1250646 (not (= lambda!283010 lambda!282900))))

(assert (=> bs!1250637 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283010 lambda!282992))))

(declare-fun bs!1250648 () Bool)

(assert (= bs!1250648 (and d!1727791 d!1727777)))

(assert (=> bs!1250648 (= lambda!283010 lambda!283009)))

(declare-fun bs!1250649 () Bool)

(assert (= bs!1250649 (and d!1727791 b!5414303)))

(assert (=> bs!1250649 (not (= lambda!283010 lambda!282990))))

(assert (=> bs!1250645 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283010 lambda!282894))))

(declare-fun bs!1250650 () Bool)

(assert (= bs!1250650 (and d!1727791 b!5414332)))

(assert (=> bs!1250650 (not (= lambda!283010 lambda!282998))))

(assert (=> d!1727791 true))

(assert (=> d!1727791 true))

(assert (=> d!1727791 true))

(declare-fun lambda!283011 () Int)

(assert (=> bs!1250636 (not (= lambda!283011 lambda!282903))))

(assert (=> bs!1250636 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283011 lambda!282902))))

(declare-fun bs!1250651 () Bool)

(assert (= bs!1250651 d!1727791))

(assert (=> bs!1250651 (not (= lambda!283011 lambda!283010))))

(assert (=> bs!1250637 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283011 lambda!282993))))

(assert (=> bs!1250638 (not (= lambda!283011 lambda!282994))))

(assert (=> bs!1250639 (not (= lambda!283011 lambda!282971))))

(assert (=> bs!1250636 (not (= lambda!283011 lambda!282901))))

(assert (=> bs!1250640 (= (and (= lt!2207723 (regOne!30900 lt!2207767)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207767))) (= lambda!283011 lambda!282999))))

(assert (=> bs!1250641 (= (and (= s!2326 (_1!35696 lt!2207731)) (= lt!2207723 (regOne!30900 lt!2207723)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207723))) (= lambda!283011 lambda!282991))))

(assert (=> bs!1250642 (not (= lambda!283011 lambda!282988))))

(assert (=> bs!1250642 (not (= lambda!283011 lambda!282989))))

(assert (=> bs!1250643 (= (and (= lt!2207723 (regOne!30900 lt!2207749)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207749))) (= lambda!283011 lambda!282972))))

(assert (=> bs!1250644 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283011 lambda!282963))))

(assert (=> bs!1250645 (= (= lt!2207723 (regOne!30900 r!7292)) (= lambda!283011 lambda!282895))))

(assert (=> bs!1250644 (not (= lambda!283011 lambda!282962))))

(assert (=> bs!1250646 (not (= lambda!283011 lambda!282899))))

(assert (=> bs!1250647 (not (= lambda!283011 lambda!282957))))

(assert (=> bs!1250646 (= lambda!283011 lambda!282900)))

(assert (=> bs!1250637 (not (= lambda!283011 lambda!282992))))

(assert (=> bs!1250648 (not (= lambda!283011 lambda!283009))))

(assert (=> bs!1250649 (not (= lambda!283011 lambda!282990))))

(assert (=> bs!1250645 (not (= lambda!283011 lambda!282894))))

(assert (=> bs!1250650 (not (= lambda!283011 lambda!282998))))

(assert (=> d!1727791 true))

(assert (=> d!1727791 true))

(assert (=> d!1727791 true))

(assert (=> d!1727791 (= (Exists!2375 lambda!283010) (Exists!2375 lambda!283011))))

(declare-fun lt!2208065 () Unit!154298)

(assert (=> d!1727791 (= lt!2208065 (choose!40921 lt!2207723 (regTwo!30900 r!7292) s!2326))))

(assert (=> d!1727791 (validRegex!6930 lt!2207723)))

(assert (=> d!1727791 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1029 lt!2207723 (regTwo!30900 r!7292) s!2326) lt!2208065)))

(declare-fun m!6438492 () Bool)

(assert (=> bs!1250651 m!6438492))

(declare-fun m!6438494 () Bool)

(assert (=> bs!1250651 m!6438494))

(declare-fun m!6438496 () Bool)

(assert (=> bs!1250651 m!6438496))

(assert (=> bs!1250651 m!6438380))

(assert (=> b!5413685 d!1727791))

(declare-fun b!5414441 () Bool)

(declare-fun res!2303125 () Bool)

(declare-fun e!3356160 () Bool)

(assert (=> b!5414441 (=> (not res!2303125) (not e!3356160))))

(declare-fun lt!2208069 () Option!15305)

(assert (=> b!5414441 (= res!2303125 (matchR!7379 lt!2207723 (_1!35696 (get!21294 lt!2208069))))))

(declare-fun b!5414442 () Bool)

(assert (=> b!5414442 (= e!3356160 (= (++!13561 (_1!35696 (get!21294 lt!2208069)) (_2!35696 (get!21294 lt!2208069))) s!2326))))

(declare-fun b!5414443 () Bool)

(declare-fun e!3356159 () Bool)

(assert (=> b!5414443 (= e!3356159 (not (isDefined!12008 lt!2208069)))))

(declare-fun b!5414444 () Bool)

(declare-fun e!3356163 () Option!15305)

(assert (=> b!5414444 (= e!3356163 (Some!15304 (tuple2!64787 Nil!61757 s!2326)))))

(declare-fun b!5414446 () Bool)

(declare-fun lt!2208068 () Unit!154298)

(declare-fun lt!2208070 () Unit!154298)

(assert (=> b!5414446 (= lt!2208068 lt!2208070)))

(assert (=> b!5414446 (= (++!13561 (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326)) s!2326)))

(assert (=> b!5414446 (= lt!2208070 (lemmaMoveElementToOtherListKeepsConcatEq!1842 Nil!61757 (h!68205 s!2326) (t!375104 s!2326) s!2326))))

(declare-fun e!3356162 () Option!15305)

(assert (=> b!5414446 (= e!3356162 (findConcatSeparation!1719 lt!2207723 (regTwo!30900 r!7292) (++!13561 Nil!61757 (Cons!61757 (h!68205 s!2326) Nil!61757)) (t!375104 s!2326) s!2326))))

(declare-fun b!5414447 () Bool)

(assert (=> b!5414447 (= e!3356163 e!3356162)))

(declare-fun c!944058 () Bool)

(assert (=> b!5414447 (= c!944058 (is-Nil!61757 s!2326))))

(declare-fun d!1727793 () Bool)

(assert (=> d!1727793 e!3356159))

(declare-fun res!2303129 () Bool)

(assert (=> d!1727793 (=> res!2303129 e!3356159)))

(assert (=> d!1727793 (= res!2303129 e!3356160)))

(declare-fun res!2303124 () Bool)

(assert (=> d!1727793 (=> (not res!2303124) (not e!3356160))))

(assert (=> d!1727793 (= res!2303124 (isDefined!12008 lt!2208069))))

(assert (=> d!1727793 (= lt!2208069 e!3356163)))

(declare-fun c!944059 () Bool)

(declare-fun e!3356161 () Bool)

(assert (=> d!1727793 (= c!944059 e!3356161)))

(declare-fun res!2303123 () Bool)

(assert (=> d!1727793 (=> (not res!2303123) (not e!3356161))))

(assert (=> d!1727793 (= res!2303123 (matchR!7379 lt!2207723 Nil!61757))))

(assert (=> d!1727793 (validRegex!6930 lt!2207723)))

(assert (=> d!1727793 (= (findConcatSeparation!1719 lt!2207723 (regTwo!30900 r!7292) Nil!61757 s!2326 s!2326) lt!2208069)))

(declare-fun b!5414445 () Bool)

(assert (=> b!5414445 (= e!3356162 None!15304)))

(declare-fun b!5414448 () Bool)

(declare-fun res!2303128 () Bool)

(assert (=> b!5414448 (=> (not res!2303128) (not e!3356160))))

(assert (=> b!5414448 (= res!2303128 (matchR!7379 (regTwo!30900 r!7292) (_2!35696 (get!21294 lt!2208069))))))

(declare-fun b!5414449 () Bool)

(assert (=> b!5414449 (= e!3356161 (matchR!7379 (regTwo!30900 r!7292) s!2326))))

(assert (= (and d!1727793 res!2303123) b!5414449))

(assert (= (and d!1727793 c!944059) b!5414444))

(assert (= (and d!1727793 (not c!944059)) b!5414447))

(assert (= (and b!5414447 c!944058) b!5414445))

(assert (= (and b!5414447 (not c!944058)) b!5414446))

(assert (= (and d!1727793 res!2303124) b!5414441))

(assert (= (and b!5414441 res!2303125) b!5414448))

(assert (= (and b!5414448 res!2303128) b!5414442))

(assert (= (and d!1727793 (not res!2303129)) b!5414443))

(declare-fun m!6438498 () Bool)

(assert (=> d!1727793 m!6438498))

(declare-fun m!6438500 () Bool)

(assert (=> d!1727793 m!6438500))

(assert (=> d!1727793 m!6438380))

(declare-fun m!6438502 () Bool)

(assert (=> b!5414442 m!6438502))

(declare-fun m!6438504 () Bool)

(assert (=> b!5414442 m!6438504))

(assert (=> b!5414448 m!6438502))

(declare-fun m!6438506 () Bool)

(assert (=> b!5414448 m!6438506))

(assert (=> b!5414443 m!6438498))

(assert (=> b!5414446 m!6438122))

(assert (=> b!5414446 m!6438122))

(assert (=> b!5414446 m!6438124))

(assert (=> b!5414446 m!6438126))

(assert (=> b!5414446 m!6438122))

(declare-fun m!6438508 () Bool)

(assert (=> b!5414446 m!6438508))

(assert (=> b!5414449 m!6438162))

(assert (=> b!5414441 m!6438502))

(declare-fun m!6438510 () Bool)

(assert (=> b!5414441 m!6438510))

(assert (=> b!5413685 d!1727793))

(declare-fun d!1727795 () Bool)

(assert (=> d!1727795 (= (matchR!7379 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774)) (matchZipper!1438 lt!2207760 (_1!35696 lt!2207774)))))

(declare-fun lt!2208071 () Unit!154298)

(assert (=> d!1727795 (= lt!2208071 (choose!40932 lt!2207760 lt!2207734 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774)))))

(assert (=> d!1727795 (validRegex!6930 (reg!15523 (regOne!30900 r!7292)))))

(assert (=> d!1727795 (= (theoremZipperRegexEquiv!508 lt!2207760 lt!2207734 (reg!15523 (regOne!30900 r!7292)) (_1!35696 lt!2207774)) lt!2208071)))

(declare-fun bs!1250652 () Bool)

(assert (= bs!1250652 d!1727795))

(assert (=> bs!1250652 m!6437644))

(assert (=> bs!1250652 m!6437684))

(declare-fun m!6438512 () Bool)

(assert (=> bs!1250652 m!6438512))

(assert (=> bs!1250652 m!6437708))

(assert (=> b!5413685 d!1727795))

(declare-fun d!1727797 () Bool)

(assert (=> d!1727797 (= (Exists!2375 lambda!282899) (choose!40919 lambda!282899))))

(declare-fun bs!1250653 () Bool)

(assert (= bs!1250653 d!1727797))

(declare-fun m!6438514 () Bool)

(assert (=> bs!1250653 m!6438514))

(assert (=> b!5413685 d!1727797))

(declare-fun d!1727799 () Bool)

(assert (=> d!1727799 (matchR!7379 (Concat!24039 (reg!15523 (regOne!30900 r!7292)) lt!2207751) (++!13561 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(declare-fun lt!2208075 () Unit!154298)

(declare-fun choose!40936 (Regex!15194 Regex!15194 List!61881 List!61881) Unit!154298)

(assert (=> d!1727799 (= lt!2208075 (choose!40936 (reg!15523 (regOne!30900 r!7292)) lt!2207751 (_1!35696 lt!2207774) (_2!35696 lt!2207774)))))

(declare-fun e!3356168 () Bool)

(assert (=> d!1727799 e!3356168))

(declare-fun res!2303138 () Bool)

(assert (=> d!1727799 (=> (not res!2303138) (not e!3356168))))

(assert (=> d!1727799 (= res!2303138 (validRegex!6930 (reg!15523 (regOne!30900 r!7292))))))

(assert (=> d!1727799 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!217 (reg!15523 (regOne!30900 r!7292)) lt!2207751 (_1!35696 lt!2207774) (_2!35696 lt!2207774)) lt!2208075)))

(declare-fun b!5414458 () Bool)

(assert (=> b!5414458 (= e!3356168 (validRegex!6930 lt!2207751))))

(assert (= (and d!1727799 res!2303138) b!5414458))

(assert (=> d!1727799 m!6437620))

(assert (=> d!1727799 m!6437620))

(declare-fun m!6438516 () Bool)

(assert (=> d!1727799 m!6438516))

(declare-fun m!6438518 () Bool)

(assert (=> d!1727799 m!6438518))

(assert (=> d!1727799 m!6437708))

(assert (=> b!5414458 m!6438422))

(assert (=> b!5413685 d!1727799))

(declare-fun b!5414459 () Bool)

(declare-fun e!3356170 () Bool)

(declare-fun e!3356169 () Bool)

(assert (=> b!5414459 (= e!3356170 e!3356169)))

(declare-fun res!2303142 () Bool)

(assert (=> b!5414459 (=> (not res!2303142) (not e!3356169))))

(declare-fun lt!2208076 () Bool)

(assert (=> b!5414459 (= res!2303142 (not lt!2208076))))

(declare-fun b!5414460 () Bool)

(declare-fun res!2303145 () Bool)

(declare-fun e!3356174 () Bool)

(assert (=> b!5414460 (=> (not res!2303145) (not e!3356174))))

(declare-fun call!387476 () Bool)

(assert (=> b!5414460 (= res!2303145 (not call!387476))))

(declare-fun b!5414461 () Bool)

(declare-fun res!2303144 () Bool)

(declare-fun e!3356171 () Bool)

(assert (=> b!5414461 (=> res!2303144 e!3356171)))

(assert (=> b!5414461 (= res!2303144 (not (isEmpty!33754 (tail!10708 (_2!35696 lt!2207774)))))))

(declare-fun d!1727801 () Bool)

(declare-fun e!3356175 () Bool)

(assert (=> d!1727801 e!3356175))

(declare-fun c!944060 () Bool)

(assert (=> d!1727801 (= c!944060 (is-EmptyExpr!15194 lt!2207751))))

(declare-fun e!3356173 () Bool)

(assert (=> d!1727801 (= lt!2208076 e!3356173)))

(declare-fun c!944062 () Bool)

(assert (=> d!1727801 (= c!944062 (isEmpty!33754 (_2!35696 lt!2207774)))))

(assert (=> d!1727801 (validRegex!6930 lt!2207751)))

(assert (=> d!1727801 (= (matchR!7379 lt!2207751 (_2!35696 lt!2207774)) lt!2208076)))

(declare-fun b!5414462 () Bool)

(declare-fun res!2303146 () Bool)

(assert (=> b!5414462 (=> (not res!2303146) (not e!3356174))))

(assert (=> b!5414462 (= res!2303146 (isEmpty!33754 (tail!10708 (_2!35696 lt!2207774))))))

(declare-fun b!5414463 () Bool)

(declare-fun e!3356172 () Bool)

(assert (=> b!5414463 (= e!3356172 (not lt!2208076))))

(declare-fun b!5414464 () Bool)

(declare-fun res!2303139 () Bool)

(assert (=> b!5414464 (=> res!2303139 e!3356170)))

(assert (=> b!5414464 (= res!2303139 (not (is-ElementMatch!15194 lt!2207751)))))

(assert (=> b!5414464 (= e!3356172 e!3356170)))

(declare-fun b!5414465 () Bool)

(assert (=> b!5414465 (= e!3356174 (= (head!11611 (_2!35696 lt!2207774)) (c!943892 lt!2207751)))))

(declare-fun bm!387471 () Bool)

(assert (=> bm!387471 (= call!387476 (isEmpty!33754 (_2!35696 lt!2207774)))))

(declare-fun b!5414466 () Bool)

(declare-fun res!2303141 () Bool)

(assert (=> b!5414466 (=> res!2303141 e!3356170)))

(assert (=> b!5414466 (= res!2303141 e!3356174)))

(declare-fun res!2303140 () Bool)

(assert (=> b!5414466 (=> (not res!2303140) (not e!3356174))))

(assert (=> b!5414466 (= res!2303140 lt!2208076)))

(declare-fun b!5414467 () Bool)

(assert (=> b!5414467 (= e!3356171 (not (= (head!11611 (_2!35696 lt!2207774)) (c!943892 lt!2207751))))))

(declare-fun b!5414468 () Bool)

(assert (=> b!5414468 (= e!3356169 e!3356171)))

(declare-fun res!2303143 () Bool)

(assert (=> b!5414468 (=> res!2303143 e!3356171)))

(assert (=> b!5414468 (= res!2303143 call!387476)))

(declare-fun b!5414469 () Bool)

(assert (=> b!5414469 (= e!3356175 (= lt!2208076 call!387476))))

(declare-fun b!5414470 () Bool)

(assert (=> b!5414470 (= e!3356173 (nullable!5363 lt!2207751))))

(declare-fun b!5414471 () Bool)

(assert (=> b!5414471 (= e!3356175 e!3356172)))

(declare-fun c!944061 () Bool)

(assert (=> b!5414471 (= c!944061 (is-EmptyLang!15194 lt!2207751))))

(declare-fun b!5414472 () Bool)

(assert (=> b!5414472 (= e!3356173 (matchR!7379 (derivativeStep!4268 lt!2207751 (head!11611 (_2!35696 lt!2207774))) (tail!10708 (_2!35696 lt!2207774))))))

(assert (= (and d!1727801 c!944062) b!5414470))

(assert (= (and d!1727801 (not c!944062)) b!5414472))

(assert (= (and d!1727801 c!944060) b!5414469))

(assert (= (and d!1727801 (not c!944060)) b!5414471))

(assert (= (and b!5414471 c!944061) b!5414463))

(assert (= (and b!5414471 (not c!944061)) b!5414464))

(assert (= (and b!5414464 (not res!2303139)) b!5414466))

(assert (= (and b!5414466 res!2303140) b!5414460))

(assert (= (and b!5414460 res!2303145) b!5414462))

(assert (= (and b!5414462 res!2303146) b!5414465))

(assert (= (and b!5414466 (not res!2303141)) b!5414459))

(assert (= (and b!5414459 res!2303142) b!5414468))

(assert (= (and b!5414468 (not res!2303143)) b!5414461))

(assert (= (and b!5414461 (not res!2303144)) b!5414467))

(assert (= (or b!5414469 b!5414460 b!5414468) bm!387471))

(declare-fun m!6438520 () Bool)

(assert (=> b!5414470 m!6438520))

(assert (=> b!5414462 m!6438040))

(assert (=> b!5414462 m!6438040))

(declare-fun m!6438522 () Bool)

(assert (=> b!5414462 m!6438522))

(assert (=> b!5414465 m!6438036))

(assert (=> d!1727801 m!6438032))

(assert (=> d!1727801 m!6438422))

(assert (=> b!5414467 m!6438036))

(assert (=> b!5414472 m!6438036))

(assert (=> b!5414472 m!6438036))

(declare-fun m!6438524 () Bool)

(assert (=> b!5414472 m!6438524))

(assert (=> b!5414472 m!6438040))

(assert (=> b!5414472 m!6438524))

(assert (=> b!5414472 m!6438040))

(declare-fun m!6438526 () Bool)

(assert (=> b!5414472 m!6438526))

(assert (=> bm!387471 m!6438032))

(assert (=> b!5414461 m!6438040))

(assert (=> b!5414461 m!6438040))

(assert (=> b!5414461 m!6438522))

(assert (=> b!5413685 d!1727801))

(declare-fun e!3356178 () Bool)

(declare-fun d!1727803 () Bool)

(assert (=> d!1727803 (= (matchZipper!1438 (set.union lt!2207768 lt!2207736) (t!375104 s!2326)) e!3356178)))

(declare-fun res!2303149 () Bool)

(assert (=> d!1727803 (=> res!2303149 e!3356178)))

(assert (=> d!1727803 (= res!2303149 (matchZipper!1438 lt!2207768 (t!375104 s!2326)))))

(declare-fun lt!2208082 () Unit!154298)

(declare-fun choose!40937 ((Set Context!9156) (Set Context!9156) List!61881) Unit!154298)

(assert (=> d!1727803 (= lt!2208082 (choose!40937 lt!2207768 lt!2207736 (t!375104 s!2326)))))

(assert (=> d!1727803 (= (lemmaZipperConcatMatchesSameAsBothZippers!431 lt!2207768 lt!2207736 (t!375104 s!2326)) lt!2208082)))

(declare-fun b!5414475 () Bool)

(assert (=> b!5414475 (= e!3356178 (matchZipper!1438 lt!2207736 (t!375104 s!2326)))))

(assert (= (and d!1727803 (not res!2303149)) b!5414475))

(assert (=> d!1727803 m!6437764))

(assert (=> d!1727803 m!6437686))

(declare-fun m!6438540 () Bool)

(assert (=> d!1727803 m!6438540))

(assert (=> b!5414475 m!6437614))

(assert (=> b!5413667 d!1727803))

(assert (=> b!5413667 d!1727637))

(declare-fun d!1727811 () Bool)

(declare-fun c!944063 () Bool)

(assert (=> d!1727811 (= c!944063 (isEmpty!33754 (t!375104 s!2326)))))

(declare-fun e!3356179 () Bool)

(assert (=> d!1727811 (= (matchZipper!1438 (set.union lt!2207768 lt!2207736) (t!375104 s!2326)) e!3356179)))

(declare-fun b!5414476 () Bool)

(assert (=> b!5414476 (= e!3356179 (nullableZipper!1447 (set.union lt!2207768 lt!2207736)))))

(declare-fun b!5414477 () Bool)

(assert (=> b!5414477 (= e!3356179 (matchZipper!1438 (derivationStepZipper!1433 (set.union lt!2207768 lt!2207736) (head!11611 (t!375104 s!2326))) (tail!10708 (t!375104 s!2326))))))

(assert (= (and d!1727811 c!944063) b!5414476))

(assert (= (and d!1727811 (not c!944063)) b!5414477))

(assert (=> d!1727811 m!6437976))

(declare-fun m!6438542 () Bool)

(assert (=> b!5414476 m!6438542))

(assert (=> b!5414477 m!6437980))

(assert (=> b!5414477 m!6437980))

(declare-fun m!6438544 () Bool)

(assert (=> b!5414477 m!6438544))

(assert (=> b!5414477 m!6437984))

(assert (=> b!5414477 m!6438544))

(assert (=> b!5414477 m!6437984))

(declare-fun m!6438546 () Bool)

(assert (=> b!5414477 m!6438546))

(assert (=> b!5413667 d!1727811))

(declare-fun d!1727813 () Bool)

(assert (=> d!1727813 (= (flatMap!921 lt!2207760 lambda!282896) (dynLambda!24333 lambda!282896 lt!2207772))))

(declare-fun lt!2208083 () Unit!154298)

(assert (=> d!1727813 (= lt!2208083 (choose!40917 lt!2207760 lt!2207772 lambda!282896))))

(assert (=> d!1727813 (= lt!2207760 (set.insert lt!2207772 (as set.empty (Set Context!9156))))))

(assert (=> d!1727813 (= (lemmaFlatMapOnSingletonSet!453 lt!2207760 lt!2207772 lambda!282896) lt!2208083)))

(declare-fun b_lambda!206755 () Bool)

(assert (=> (not b_lambda!206755) (not d!1727813)))

(declare-fun bs!1250661 () Bool)

(assert (= bs!1250661 d!1727813))

(assert (=> bs!1250661 m!6437694))

(declare-fun m!6438548 () Bool)

(assert (=> bs!1250661 m!6438548))

(declare-fun m!6438550 () Bool)

(assert (=> bs!1250661 m!6438550))

(assert (=> bs!1250661 m!6437704))

(assert (=> b!5413662 d!1727813))

(declare-fun d!1727815 () Bool)

(declare-fun lt!2208084 () Regex!15194)

(assert (=> d!1727815 (validRegex!6930 lt!2208084)))

(assert (=> d!1727815 (= lt!2208084 (generalisedUnion!1123 (unfocusZipperList!636 lt!2207734)))))

(assert (=> d!1727815 (= (unfocusZipper!936 lt!2207734) lt!2208084)))

(declare-fun bs!1250662 () Bool)

(assert (= bs!1250662 d!1727815))

(declare-fun m!6438552 () Bool)

(assert (=> bs!1250662 m!6438552))

(declare-fun m!6438554 () Bool)

(assert (=> bs!1250662 m!6438554))

(assert (=> bs!1250662 m!6438554))

(declare-fun m!6438556 () Bool)

(assert (=> bs!1250662 m!6438556))

(assert (=> b!5413662 d!1727815))

(declare-fun d!1727817 () Bool)

(assert (=> d!1727817 (= (flatMap!921 lt!2207760 lambda!282896) (choose!40916 lt!2207760 lambda!282896))))

(declare-fun bs!1250663 () Bool)

(assert (= bs!1250663 d!1727817))

(declare-fun m!6438558 () Bool)

(assert (=> bs!1250663 m!6438558))

(assert (=> b!5413662 d!1727817))

(declare-fun d!1727819 () Bool)

(assert (=> d!1727819 (= (flatMap!921 lt!2207766 lambda!282896) (dynLambda!24333 lambda!282896 lt!2207720))))

(declare-fun lt!2208085 () Unit!154298)

(assert (=> d!1727819 (= lt!2208085 (choose!40917 lt!2207766 lt!2207720 lambda!282896))))

(assert (=> d!1727819 (= lt!2207766 (set.insert lt!2207720 (as set.empty (Set Context!9156))))))

(assert (=> d!1727819 (= (lemmaFlatMapOnSingletonSet!453 lt!2207766 lt!2207720 lambda!282896) lt!2208085)))

(declare-fun b_lambda!206757 () Bool)

(assert (=> (not b_lambda!206757) (not d!1727819)))

(declare-fun bs!1250664 () Bool)

(assert (= bs!1250664 d!1727819))

(assert (=> bs!1250664 m!6437702))

(declare-fun m!6438560 () Bool)

(assert (=> bs!1250664 m!6438560))

(declare-fun m!6438562 () Bool)

(assert (=> bs!1250664 m!6438562))

(assert (=> bs!1250664 m!6437700))

(assert (=> b!5413662 d!1727819))

(declare-fun d!1727821 () Bool)

(assert (=> d!1727821 (= (flatMap!921 lt!2207766 lambda!282896) (choose!40916 lt!2207766 lambda!282896))))

(declare-fun bs!1250665 () Bool)

(assert (= bs!1250665 d!1727821))

(declare-fun m!6438564 () Bool)

(assert (=> bs!1250665 m!6438564))

(assert (=> b!5413662 d!1727821))

(declare-fun b!5414478 () Bool)

(declare-fun call!387477 () (Set Context!9156))

(declare-fun e!3356182 () (Set Context!9156))

(assert (=> b!5414478 (= e!3356182 (set.union call!387477 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 lt!2207772))) (h!68205 s!2326))))))

(declare-fun b!5414479 () Bool)

(declare-fun e!3356180 () Bool)

(assert (=> b!5414479 (= e!3356180 (nullable!5363 (h!68206 (exprs!5078 lt!2207772))))))

(declare-fun b!5414480 () Bool)

(declare-fun e!3356181 () (Set Context!9156))

(assert (=> b!5414480 (= e!3356181 call!387477)))

(declare-fun b!5414481 () Bool)

(assert (=> b!5414481 (= e!3356181 (as set.empty (Set Context!9156)))))

(declare-fun b!5414482 () Bool)

(assert (=> b!5414482 (= e!3356182 e!3356181)))

(declare-fun c!944064 () Bool)

(assert (=> b!5414482 (= c!944064 (is-Cons!61758 (exprs!5078 lt!2207772)))))

(declare-fun bm!387472 () Bool)

(assert (=> bm!387472 (= call!387477 (derivationStepZipperDown!642 (h!68206 (exprs!5078 lt!2207772)) (Context!9157 (t!375105 (exprs!5078 lt!2207772))) (h!68205 s!2326)))))

(declare-fun d!1727823 () Bool)

(declare-fun c!944065 () Bool)

(assert (=> d!1727823 (= c!944065 e!3356180)))

(declare-fun res!2303150 () Bool)

(assert (=> d!1727823 (=> (not res!2303150) (not e!3356180))))

(assert (=> d!1727823 (= res!2303150 (is-Cons!61758 (exprs!5078 lt!2207772)))))

(assert (=> d!1727823 (= (derivationStepZipperUp!566 lt!2207772 (h!68205 s!2326)) e!3356182)))

(assert (= (and d!1727823 res!2303150) b!5414479))

(assert (= (and d!1727823 c!944065) b!5414478))

(assert (= (and d!1727823 (not c!944065)) b!5414482))

(assert (= (and b!5414482 c!944064) b!5414480))

(assert (= (and b!5414482 (not c!944064)) b!5414481))

(assert (= (or b!5414478 b!5414480) bm!387472))

(declare-fun m!6438566 () Bool)

(assert (=> b!5414478 m!6438566))

(declare-fun m!6438568 () Bool)

(assert (=> b!5414479 m!6438568))

(declare-fun m!6438570 () Bool)

(assert (=> bm!387472 m!6438570))

(assert (=> b!5413662 d!1727823))

(declare-fun call!387478 () (Set Context!9156))

(declare-fun e!3356185 () (Set Context!9156))

(declare-fun b!5414483 () Bool)

(assert (=> b!5414483 (= e!3356185 (set.union call!387478 (derivationStepZipperUp!566 (Context!9157 (t!375105 (exprs!5078 lt!2207720))) (h!68205 s!2326))))))

(declare-fun b!5414484 () Bool)

(declare-fun e!3356183 () Bool)

(assert (=> b!5414484 (= e!3356183 (nullable!5363 (h!68206 (exprs!5078 lt!2207720))))))

(declare-fun b!5414485 () Bool)

(declare-fun e!3356184 () (Set Context!9156))

(assert (=> b!5414485 (= e!3356184 call!387478)))

(declare-fun b!5414486 () Bool)

(assert (=> b!5414486 (= e!3356184 (as set.empty (Set Context!9156)))))

(declare-fun b!5414487 () Bool)

(assert (=> b!5414487 (= e!3356185 e!3356184)))

(declare-fun c!944066 () Bool)

(assert (=> b!5414487 (= c!944066 (is-Cons!61758 (exprs!5078 lt!2207720)))))

(declare-fun bm!387473 () Bool)

(assert (=> bm!387473 (= call!387478 (derivationStepZipperDown!642 (h!68206 (exprs!5078 lt!2207720)) (Context!9157 (t!375105 (exprs!5078 lt!2207720))) (h!68205 s!2326)))))

(declare-fun d!1727825 () Bool)

(declare-fun c!944067 () Bool)

(assert (=> d!1727825 (= c!944067 e!3356183)))

(declare-fun res!2303151 () Bool)

(assert (=> d!1727825 (=> (not res!2303151) (not e!3356183))))

(assert (=> d!1727825 (= res!2303151 (is-Cons!61758 (exprs!5078 lt!2207720)))))

(assert (=> d!1727825 (= (derivationStepZipperUp!566 lt!2207720 (h!68205 s!2326)) e!3356185)))

(assert (= (and d!1727825 res!2303151) b!5414484))

(assert (= (and d!1727825 c!944067) b!5414483))

(assert (= (and d!1727825 (not c!944067)) b!5414487))

(assert (= (and b!5414487 c!944066) b!5414485))

(assert (= (and b!5414487 (not c!944066)) b!5414486))

(assert (= (or b!5414483 b!5414485) bm!387473))

(declare-fun m!6438572 () Bool)

(assert (=> b!5414483 m!6438572))

(declare-fun m!6438574 () Bool)

(assert (=> b!5414484 m!6438574))

(declare-fun m!6438576 () Bool)

(assert (=> bm!387473 m!6438576))

(assert (=> b!5413662 d!1727825))

(declare-fun bs!1250666 () Bool)

(declare-fun b!5414493 () Bool)

(assert (= bs!1250666 (and b!5414493 b!5413689)))

(declare-fun lambda!283018 () Int)

(assert (=> bs!1250666 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 r!7292) (reg!15523 (regOne!30900 r!7292))) (= r!7292 lt!2207765)) (= lambda!283018 lambda!282903))))

(assert (=> bs!1250666 (not (= lambda!283018 lambda!282902))))

(declare-fun bs!1250667 () Bool)

(assert (= bs!1250667 (and b!5414493 d!1727791)))

(assert (=> bs!1250667 (not (= lambda!283018 lambda!283011))))

(assert (=> bs!1250667 (not (= lambda!283018 lambda!283010))))

(declare-fun bs!1250668 () Bool)

(assert (= bs!1250668 (and b!5414493 d!1727733)))

(assert (=> bs!1250668 (not (= lambda!283018 lambda!282993))))

(declare-fun bs!1250669 () Bool)

(assert (= bs!1250669 (and b!5414493 d!1727749)))

(assert (=> bs!1250669 (not (= lambda!283018 lambda!282994))))

(declare-fun bs!1250670 () Bool)

(assert (= bs!1250670 (and b!5414493 b!5414190)))

(assert (=> bs!1250670 (= (and (= (reg!15523 r!7292) (reg!15523 lt!2207749)) (= r!7292 lt!2207749)) (= lambda!283018 lambda!282971))))

(assert (=> bs!1250666 (not (= lambda!283018 lambda!282901))))

(declare-fun bs!1250671 () Bool)

(assert (= bs!1250671 (and b!5414493 b!5414327)))

(assert (=> bs!1250671 (not (= lambda!283018 lambda!282999))))

(declare-fun bs!1250672 () Bool)

(assert (= bs!1250672 (and b!5414493 b!5414298)))

(assert (=> bs!1250672 (not (= lambda!283018 lambda!282991))))

(declare-fun bs!1250673 () Bool)

(assert (= bs!1250673 (and b!5414493 d!1727727)))

(assert (=> bs!1250673 (not (= lambda!283018 lambda!282988))))

(assert (=> bs!1250673 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 r!7292) (reg!15523 (regOne!30900 r!7292))) (= r!7292 (Star!15194 (reg!15523 (regOne!30900 r!7292))))) (= lambda!283018 lambda!282989))))

(declare-fun bs!1250674 () Bool)

(assert (= bs!1250674 (and b!5414493 b!5414185)))

(assert (=> bs!1250674 (not (= lambda!283018 lambda!282972))))

(declare-fun bs!1250675 () Bool)

(assert (= bs!1250675 (and b!5414493 d!1727689)))

(assert (=> bs!1250675 (not (= lambda!283018 lambda!282963))))

(declare-fun bs!1250676 () Bool)

(assert (= bs!1250676 (and b!5414493 b!5413693)))

(assert (=> bs!1250676 (not (= lambda!283018 lambda!282895))))

(assert (=> bs!1250675 (not (= lambda!283018 lambda!282962))))

(declare-fun bs!1250677 () Bool)

(assert (= bs!1250677 (and b!5414493 b!5413685)))

(assert (=> bs!1250677 (not (= lambda!283018 lambda!282899))))

(declare-fun bs!1250678 () Bool)

(assert (= bs!1250678 (and b!5414493 d!1727687)))

(assert (=> bs!1250678 (not (= lambda!283018 lambda!282957))))

(assert (=> bs!1250677 (not (= lambda!283018 lambda!282900))))

(assert (=> bs!1250668 (not (= lambda!283018 lambda!282992))))

(declare-fun bs!1250679 () Bool)

(assert (= bs!1250679 (and b!5414493 d!1727777)))

(assert (=> bs!1250679 (not (= lambda!283018 lambda!283009))))

(declare-fun bs!1250680 () Bool)

(assert (= bs!1250680 (and b!5414493 b!5414303)))

(assert (=> bs!1250680 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (reg!15523 r!7292) (reg!15523 lt!2207723)) (= r!7292 lt!2207723)) (= lambda!283018 lambda!282990))))

(assert (=> bs!1250676 (not (= lambda!283018 lambda!282894))))

(declare-fun bs!1250681 () Bool)

(assert (= bs!1250681 (and b!5414493 b!5414332)))

(assert (=> bs!1250681 (= (and (= (reg!15523 r!7292) (reg!15523 lt!2207767)) (= r!7292 lt!2207767)) (= lambda!283018 lambda!282998))))

(assert (=> b!5414493 true))

(assert (=> b!5414493 true))

(declare-fun bs!1250682 () Bool)

(declare-fun b!5414488 () Bool)

(assert (= bs!1250682 (and b!5414488 b!5413689)))

(declare-fun lambda!283019 () Int)

(assert (=> bs!1250682 (not (= lambda!283019 lambda!282903))))

(assert (=> bs!1250682 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283019 lambda!282902))))

(declare-fun bs!1250683 () Bool)

(assert (= bs!1250683 (and b!5414488 d!1727791)))

(assert (=> bs!1250683 (= (= (regOne!30900 r!7292) lt!2207723) (= lambda!283019 lambda!283011))))

(assert (=> bs!1250683 (not (= lambda!283019 lambda!283010))))

(declare-fun bs!1250684 () Bool)

(assert (= bs!1250684 (and b!5414488 d!1727733)))

(assert (=> bs!1250684 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (reg!15523 (regOne!30900 r!7292))) (= (regTwo!30900 r!7292) lt!2207765)) (= lambda!283019 lambda!282993))))

(declare-fun bs!1250685 () Bool)

(assert (= bs!1250685 (and b!5414488 d!1727749)))

(assert (=> bs!1250685 (not (= lambda!283019 lambda!282994))))

(declare-fun bs!1250686 () Bool)

(assert (= bs!1250686 (and b!5414488 b!5414190)))

(assert (=> bs!1250686 (not (= lambda!283019 lambda!282971))))

(assert (=> bs!1250682 (not (= lambda!283019 lambda!282901))))

(declare-fun bs!1250687 () Bool)

(assert (= bs!1250687 (and b!5414488 b!5414327)))

(assert (=> bs!1250687 (= (and (= (regOne!30900 r!7292) (regOne!30900 lt!2207767)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207767))) (= lambda!283019 lambda!282999))))

(declare-fun bs!1250688 () Bool)

(assert (= bs!1250688 (and b!5414488 b!5414298)))

(assert (=> bs!1250688 (= (and (= s!2326 (_1!35696 lt!2207731)) (= (regOne!30900 r!7292) (regOne!30900 lt!2207723)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207723))) (= lambda!283019 lambda!282991))))

(declare-fun bs!1250689 () Bool)

(assert (= bs!1250689 (and b!5414488 d!1727727)))

(assert (=> bs!1250689 (not (= lambda!283019 lambda!282988))))

(assert (=> bs!1250689 (not (= lambda!283019 lambda!282989))))

(declare-fun bs!1250690 () Bool)

(assert (= bs!1250690 (and b!5414488 b!5414185)))

(assert (=> bs!1250690 (= (and (= (regOne!30900 r!7292) (regOne!30900 lt!2207749)) (= (regTwo!30900 r!7292) (regTwo!30900 lt!2207749))) (= lambda!283019 lambda!282972))))

(declare-fun bs!1250691 () Bool)

(assert (= bs!1250691 (and b!5414488 d!1727689)))

(assert (=> bs!1250691 (= lambda!283019 lambda!282963)))

(declare-fun bs!1250692 () Bool)

(assert (= bs!1250692 (and b!5414488 b!5413693)))

(assert (=> bs!1250692 (= lambda!283019 lambda!282895)))

(assert (=> bs!1250691 (not (= lambda!283019 lambda!282962))))

(declare-fun bs!1250693 () Bool)

(assert (= bs!1250693 (and b!5414488 b!5413685)))

(assert (=> bs!1250693 (not (= lambda!283019 lambda!282899))))

(declare-fun bs!1250694 () Bool)

(assert (= bs!1250694 (and b!5414488 d!1727687)))

(assert (=> bs!1250694 (not (= lambda!283019 lambda!282957))))

(assert (=> bs!1250693 (= (= (regOne!30900 r!7292) lt!2207723) (= lambda!283019 lambda!282900))))

(assert (=> bs!1250684 (not (= lambda!283019 lambda!282992))))

(declare-fun bs!1250695 () Bool)

(assert (= bs!1250695 (and b!5414488 d!1727777)))

(assert (=> bs!1250695 (not (= lambda!283019 lambda!283009))))

(declare-fun bs!1250696 () Bool)

(assert (= bs!1250696 (and b!5414488 b!5414493)))

(assert (=> bs!1250696 (not (= lambda!283019 lambda!283018))))

(declare-fun bs!1250697 () Bool)

(assert (= bs!1250697 (and b!5414488 b!5414303)))

(assert (=> bs!1250697 (not (= lambda!283019 lambda!282990))))

(assert (=> bs!1250692 (not (= lambda!283019 lambda!282894))))

(declare-fun bs!1250698 () Bool)

(assert (= bs!1250698 (and b!5414488 b!5414332)))

(assert (=> bs!1250698 (not (= lambda!283019 lambda!282998))))

(assert (=> b!5414488 true))

(assert (=> b!5414488 true))

(declare-fun bm!387474 () Bool)

(declare-fun c!944068 () Bool)

(declare-fun call!387479 () Bool)

(assert (=> bm!387474 (= call!387479 (Exists!2375 (ite c!944068 lambda!283018 lambda!283019)))))

(declare-fun e!3356186 () Bool)

(assert (=> b!5414488 (= e!3356186 call!387479)))

(declare-fun b!5414489 () Bool)

(declare-fun c!944069 () Bool)

(assert (=> b!5414489 (= c!944069 (is-Union!15194 r!7292))))

(declare-fun e!3356189 () Bool)

(declare-fun e!3356187 () Bool)

(assert (=> b!5414489 (= e!3356189 e!3356187)))

(declare-fun b!5414490 () Bool)

(assert (=> b!5414490 (= e!3356187 e!3356186)))

(assert (=> b!5414490 (= c!944068 (is-Star!15194 r!7292))))

(declare-fun b!5414491 () Bool)

(assert (=> b!5414491 (= e!3356189 (= s!2326 (Cons!61757 (c!943892 r!7292) Nil!61757)))))

(declare-fun bm!387475 () Bool)

(declare-fun call!387480 () Bool)

(assert (=> bm!387475 (= call!387480 (isEmpty!33754 s!2326))))

(declare-fun b!5414492 () Bool)

(declare-fun c!944070 () Bool)

(assert (=> b!5414492 (= c!944070 (is-ElementMatch!15194 r!7292))))

(declare-fun e!3356191 () Bool)

(assert (=> b!5414492 (= e!3356191 e!3356189)))

(declare-fun e!3356192 () Bool)

(assert (=> b!5414493 (= e!3356192 call!387479)))

(declare-fun b!5414495 () Bool)

(declare-fun e!3356188 () Bool)

(assert (=> b!5414495 (= e!3356187 e!3356188)))

(declare-fun res!2303153 () Bool)

(assert (=> b!5414495 (= res!2303153 (matchRSpec!2297 (regOne!30901 r!7292) s!2326))))

(assert (=> b!5414495 (=> res!2303153 e!3356188)))

(declare-fun b!5414496 () Bool)

(declare-fun e!3356190 () Bool)

(assert (=> b!5414496 (= e!3356190 e!3356191)))

(declare-fun res!2303154 () Bool)

(assert (=> b!5414496 (= res!2303154 (not (is-EmptyLang!15194 r!7292)))))

(assert (=> b!5414496 (=> (not res!2303154) (not e!3356191))))

(declare-fun b!5414497 () Bool)

(assert (=> b!5414497 (= e!3356188 (matchRSpec!2297 (regTwo!30901 r!7292) s!2326))))

(declare-fun b!5414498 () Bool)

(declare-fun res!2303152 () Bool)

(assert (=> b!5414498 (=> res!2303152 e!3356192)))

(assert (=> b!5414498 (= res!2303152 call!387480)))

(assert (=> b!5414498 (= e!3356186 e!3356192)))

(declare-fun b!5414494 () Bool)

(assert (=> b!5414494 (= e!3356190 call!387480)))

(declare-fun d!1727827 () Bool)

(declare-fun c!944071 () Bool)

(assert (=> d!1727827 (= c!944071 (is-EmptyExpr!15194 r!7292))))

(assert (=> d!1727827 (= (matchRSpec!2297 r!7292 s!2326) e!3356190)))

(assert (= (and d!1727827 c!944071) b!5414494))

(assert (= (and d!1727827 (not c!944071)) b!5414496))

(assert (= (and b!5414496 res!2303154) b!5414492))

(assert (= (and b!5414492 c!944070) b!5414491))

(assert (= (and b!5414492 (not c!944070)) b!5414489))

(assert (= (and b!5414489 c!944069) b!5414495))

(assert (= (and b!5414489 (not c!944069)) b!5414490))

(assert (= (and b!5414495 (not res!2303153)) b!5414497))

(assert (= (and b!5414490 c!944068) b!5414498))

(assert (= (and b!5414490 (not c!944068)) b!5414488))

(assert (= (and b!5414498 (not res!2303152)) b!5414493))

(assert (= (or b!5414493 b!5414488) bm!387474))

(assert (= (or b!5414494 b!5414498) bm!387475))

(declare-fun m!6438578 () Bool)

(assert (=> bm!387474 m!6438578))

(assert (=> bm!387475 m!6438020))

(declare-fun m!6438580 () Bool)

(assert (=> b!5414495 m!6438580))

(declare-fun m!6438582 () Bool)

(assert (=> b!5414497 m!6438582))

(assert (=> b!5413683 d!1727827))

(declare-fun b!5414517 () Bool)

(declare-fun e!3356204 () Bool)

(declare-fun e!3356203 () Bool)

(assert (=> b!5414517 (= e!3356204 e!3356203)))

(declare-fun res!2303168 () Bool)

(assert (=> b!5414517 (=> (not res!2303168) (not e!3356203))))

(declare-fun lt!2208092 () Bool)

(assert (=> b!5414517 (= res!2303168 (not lt!2208092))))

(declare-fun b!5414518 () Bool)

(declare-fun res!2303171 () Bool)

(declare-fun e!3356208 () Bool)

(assert (=> b!5414518 (=> (not res!2303171) (not e!3356208))))

(declare-fun call!387481 () Bool)

(assert (=> b!5414518 (= res!2303171 (not call!387481))))

(declare-fun b!5414519 () Bool)

(declare-fun res!2303170 () Bool)

(declare-fun e!3356205 () Bool)

(assert (=> b!5414519 (=> res!2303170 e!3356205)))

(assert (=> b!5414519 (= res!2303170 (not (isEmpty!33754 (tail!10708 s!2326))))))

(declare-fun d!1727829 () Bool)

(declare-fun e!3356209 () Bool)

(assert (=> d!1727829 e!3356209))

(declare-fun c!944076 () Bool)

(assert (=> d!1727829 (= c!944076 (is-EmptyExpr!15194 r!7292))))

(declare-fun e!3356207 () Bool)

(assert (=> d!1727829 (= lt!2208092 e!3356207)))

(declare-fun c!944078 () Bool)

(assert (=> d!1727829 (= c!944078 (isEmpty!33754 s!2326))))

(assert (=> d!1727829 (validRegex!6930 r!7292)))

(assert (=> d!1727829 (= (matchR!7379 r!7292 s!2326) lt!2208092)))

(declare-fun b!5414520 () Bool)

(declare-fun res!2303172 () Bool)

(assert (=> b!5414520 (=> (not res!2303172) (not e!3356208))))

(assert (=> b!5414520 (= res!2303172 (isEmpty!33754 (tail!10708 s!2326)))))

(declare-fun b!5414521 () Bool)

(declare-fun e!3356206 () Bool)

(assert (=> b!5414521 (= e!3356206 (not lt!2208092))))

(declare-fun b!5414522 () Bool)

(declare-fun res!2303165 () Bool)

(assert (=> b!5414522 (=> res!2303165 e!3356204)))

(assert (=> b!5414522 (= res!2303165 (not (is-ElementMatch!15194 r!7292)))))

(assert (=> b!5414522 (= e!3356206 e!3356204)))

(declare-fun b!5414523 () Bool)

(assert (=> b!5414523 (= e!3356208 (= (head!11611 s!2326) (c!943892 r!7292)))))

(declare-fun bm!387476 () Bool)

(assert (=> bm!387476 (= call!387481 (isEmpty!33754 s!2326))))

(declare-fun b!5414524 () Bool)

(declare-fun res!2303167 () Bool)

(assert (=> b!5414524 (=> res!2303167 e!3356204)))

(assert (=> b!5414524 (= res!2303167 e!3356208)))

(declare-fun res!2303166 () Bool)

(assert (=> b!5414524 (=> (not res!2303166) (not e!3356208))))

(assert (=> b!5414524 (= res!2303166 lt!2208092)))

(declare-fun b!5414525 () Bool)

(assert (=> b!5414525 (= e!3356205 (not (= (head!11611 s!2326) (c!943892 r!7292))))))

(declare-fun b!5414526 () Bool)

(assert (=> b!5414526 (= e!3356203 e!3356205)))

(declare-fun res!2303169 () Bool)

(assert (=> b!5414526 (=> res!2303169 e!3356205)))

(assert (=> b!5414526 (= res!2303169 call!387481)))

(declare-fun b!5414527 () Bool)

(assert (=> b!5414527 (= e!3356209 (= lt!2208092 call!387481))))

(declare-fun b!5414528 () Bool)

(assert (=> b!5414528 (= e!3356207 (nullable!5363 r!7292))))

(declare-fun b!5414529 () Bool)

(assert (=> b!5414529 (= e!3356209 e!3356206)))

(declare-fun c!944077 () Bool)

(assert (=> b!5414529 (= c!944077 (is-EmptyLang!15194 r!7292))))

(declare-fun b!5414530 () Bool)

(assert (=> b!5414530 (= e!3356207 (matchR!7379 (derivativeStep!4268 r!7292 (head!11611 s!2326)) (tail!10708 s!2326)))))

(assert (= (and d!1727829 c!944078) b!5414528))

(assert (= (and d!1727829 (not c!944078)) b!5414530))

(assert (= (and d!1727829 c!944076) b!5414527))

(assert (= (and d!1727829 (not c!944076)) b!5414529))

(assert (= (and b!5414529 c!944077) b!5414521))

(assert (= (and b!5414529 (not c!944077)) b!5414522))

(assert (= (and b!5414522 (not res!2303165)) b!5414524))

(assert (= (and b!5414524 res!2303166) b!5414518))

(assert (= (and b!5414518 res!2303171) b!5414520))

(assert (= (and b!5414520 res!2303172) b!5414523))

(assert (= (and b!5414524 (not res!2303167)) b!5414517))

(assert (= (and b!5414517 res!2303168) b!5414526))

(assert (= (and b!5414526 (not res!2303169)) b!5414519))

(assert (= (and b!5414519 (not res!2303170)) b!5414525))

(assert (= (or b!5414527 b!5414518 b!5414526) bm!387476))

(declare-fun m!6438584 () Bool)

(assert (=> b!5414528 m!6438584))

(assert (=> b!5414520 m!6438028))

(assert (=> b!5414520 m!6438028))

(assert (=> b!5414520 m!6438246))

(assert (=> b!5414523 m!6438024))

(assert (=> d!1727829 m!6438020))

(assert (=> d!1727829 m!6437682))

(assert (=> b!5414525 m!6438024))

(assert (=> b!5414530 m!6438024))

(assert (=> b!5414530 m!6438024))

(declare-fun m!6438586 () Bool)

(assert (=> b!5414530 m!6438586))

(assert (=> b!5414530 m!6438028))

(assert (=> b!5414530 m!6438586))

(assert (=> b!5414530 m!6438028))

(declare-fun m!6438588 () Bool)

(assert (=> b!5414530 m!6438588))

(assert (=> bm!387476 m!6438020))

(assert (=> b!5414519 m!6438028))

(assert (=> b!5414519 m!6438028))

(assert (=> b!5414519 m!6438246))

(assert (=> b!5413683 d!1727829))

(declare-fun d!1727831 () Bool)

(assert (=> d!1727831 (= (matchR!7379 r!7292 s!2326) (matchRSpec!2297 r!7292 s!2326))))

(declare-fun lt!2208093 () Unit!154298)

(assert (=> d!1727831 (= lt!2208093 (choose!40922 r!7292 s!2326))))

(assert (=> d!1727831 (validRegex!6930 r!7292)))

(assert (=> d!1727831 (= (mainMatchTheorem!2297 r!7292 s!2326) lt!2208093)))

(declare-fun bs!1250699 () Bool)

(assert (= bs!1250699 d!1727831))

(assert (=> bs!1250699 m!6437770))

(assert (=> bs!1250699 m!6437768))

(declare-fun m!6438590 () Bool)

(assert (=> bs!1250699 m!6438590))

(assert (=> bs!1250699 m!6437682))

(assert (=> b!5413683 d!1727831))

(declare-fun bs!1250700 () Bool)

(declare-fun d!1727833 () Bool)

(assert (= bs!1250700 (and d!1727833 b!5413671)))

(declare-fun lambda!283020 () Int)

(assert (=> bs!1250700 (= lambda!283020 lambda!282898)))

(declare-fun bs!1250701 () Bool)

(assert (= bs!1250701 (and d!1727833 d!1727697)))

(assert (=> bs!1250701 (= lambda!283020 lambda!282966)))

(declare-fun bs!1250702 () Bool)

(assert (= bs!1250702 (and d!1727833 d!1727725)))

(assert (=> bs!1250702 (= lambda!283020 lambda!282983)))

(declare-fun bs!1250703 () Bool)

(assert (= bs!1250703 (and d!1727833 d!1727755)))

(assert (=> bs!1250703 (= lambda!283020 lambda!282997)))

(declare-fun bs!1250704 () Bool)

(assert (= bs!1250704 (and d!1727833 d!1727769)))

(assert (=> bs!1250704 (= lambda!283020 lambda!283008)))

(declare-fun bs!1250705 () Bool)

(assert (= bs!1250705 (and d!1727833 d!1727723)))

(assert (=> bs!1250705 (= lambda!283020 lambda!282980)))

(assert (=> d!1727833 (= (inv!81233 setElem!35270) (forall!14540 (exprs!5078 setElem!35270) lambda!283020))))

(declare-fun bs!1250706 () Bool)

(assert (= bs!1250706 d!1727833))

(declare-fun m!6438592 () Bool)

(assert (=> bs!1250706 m!6438592))

(assert (=> setNonEmpty!35270 d!1727833))

(declare-fun d!1727835 () Bool)

(declare-fun lt!2208094 () Regex!15194)

(assert (=> d!1727835 (validRegex!6930 lt!2208094)))

(assert (=> d!1727835 (= lt!2208094 (generalisedUnion!1123 (unfocusZipperList!636 zl!343)))))

(assert (=> d!1727835 (= (unfocusZipper!936 zl!343) lt!2208094)))

(declare-fun bs!1250707 () Bool)

(assert (= bs!1250707 d!1727835))

(declare-fun m!6438594 () Bool)

(assert (=> bs!1250707 m!6438594))

(assert (=> bs!1250707 m!6437608))

(assert (=> bs!1250707 m!6437608))

(assert (=> bs!1250707 m!6437610))

(assert (=> b!5413664 d!1727835))

(declare-fun d!1727837 () Bool)

(assert (=> d!1727837 (= (nullable!5363 (regOne!30900 (regOne!30900 r!7292))) (nullableFct!1598 (regOne!30900 (regOne!30900 r!7292))))))

(declare-fun bs!1250708 () Bool)

(assert (= bs!1250708 d!1727837))

(declare-fun m!6438596 () Bool)

(assert (=> bs!1250708 m!6438596))

(assert (=> b!5413682 d!1727837))

(declare-fun b!5414544 () Bool)

(declare-fun e!3356217 () Bool)

(declare-fun tp!1496030 () Bool)

(declare-fun tp!1496031 () Bool)

(assert (=> b!5414544 (= e!3356217 (and tp!1496030 tp!1496031))))

(assert (=> b!5413668 (= tp!1495994 e!3356217)))

(assert (= (and b!5413668 (is-Cons!61758 (exprs!5078 setElem!35270))) b!5414544))

(declare-fun condSetEmpty!35276 () Bool)

(assert (=> setNonEmpty!35270 (= condSetEmpty!35276 (= setRest!35270 (as set.empty (Set Context!9156))))))

(declare-fun setRes!35276 () Bool)

(assert (=> setNonEmpty!35270 (= tp!1495989 setRes!35276)))

(declare-fun setIsEmpty!35276 () Bool)

(assert (=> setIsEmpty!35276 setRes!35276))

(declare-fun setElem!35276 () Context!9156)

(declare-fun setNonEmpty!35276 () Bool)

(declare-fun tp!1496036 () Bool)

(declare-fun e!3356220 () Bool)

(assert (=> setNonEmpty!35276 (= setRes!35276 (and tp!1496036 (inv!81233 setElem!35276) e!3356220))))

(declare-fun setRest!35276 () (Set Context!9156))

(assert (=> setNonEmpty!35276 (= setRest!35270 (set.union (set.insert setElem!35276 (as set.empty (Set Context!9156))) setRest!35276))))

(declare-fun b!5414549 () Bool)

(declare-fun tp!1496037 () Bool)

(assert (=> b!5414549 (= e!3356220 tp!1496037)))

(assert (= (and setNonEmpty!35270 condSetEmpty!35276) setIsEmpty!35276))

(assert (= (and setNonEmpty!35270 (not condSetEmpty!35276)) setNonEmpty!35276))

(assert (= setNonEmpty!35276 b!5414549))

(declare-fun m!6438620 () Bool)

(assert (=> setNonEmpty!35276 m!6438620))

(declare-fun b!5414560 () Bool)

(declare-fun e!3356223 () Bool)

(assert (=> b!5414560 (= e!3356223 tp_is_empty!39641)))

(declare-fun b!5414563 () Bool)

(declare-fun tp!1496048 () Bool)

(declare-fun tp!1496049 () Bool)

(assert (=> b!5414563 (= e!3356223 (and tp!1496048 tp!1496049))))

(declare-fun b!5414561 () Bool)

(declare-fun tp!1496051 () Bool)

(declare-fun tp!1496050 () Bool)

(assert (=> b!5414561 (= e!3356223 (and tp!1496051 tp!1496050))))

(assert (=> b!5413679 (= tp!1495992 e!3356223)))

(declare-fun b!5414562 () Bool)

(declare-fun tp!1496052 () Bool)

(assert (=> b!5414562 (= e!3356223 tp!1496052)))

(assert (= (and b!5413679 (is-ElementMatch!15194 (reg!15523 r!7292))) b!5414560))

(assert (= (and b!5413679 (is-Concat!24039 (reg!15523 r!7292))) b!5414561))

(assert (= (and b!5413679 (is-Star!15194 (reg!15523 r!7292))) b!5414562))

(assert (= (and b!5413679 (is-Union!15194 (reg!15523 r!7292))) b!5414563))

(declare-fun b!5414564 () Bool)

(declare-fun e!3356224 () Bool)

(declare-fun tp!1496053 () Bool)

(declare-fun tp!1496054 () Bool)

(assert (=> b!5414564 (= e!3356224 (and tp!1496053 tp!1496054))))

(assert (=> b!5413680 (= tp!1495988 e!3356224)))

(assert (= (and b!5413680 (is-Cons!61758 (exprs!5078 (h!68207 zl!343)))) b!5414564))

(declare-fun b!5414572 () Bool)

(declare-fun e!3356230 () Bool)

(declare-fun tp!1496059 () Bool)

(assert (=> b!5414572 (= e!3356230 tp!1496059)))

(declare-fun b!5414571 () Bool)

(declare-fun e!3356229 () Bool)

(declare-fun tp!1496060 () Bool)

(assert (=> b!5414571 (= e!3356229 (and (inv!81233 (h!68207 (t!375106 zl!343))) e!3356230 tp!1496060))))

(assert (=> b!5413665 (= tp!1495990 e!3356229)))

(assert (= b!5414571 b!5414572))

(assert (= (and b!5413665 (is-Cons!61759 (t!375106 zl!343))) b!5414571))

(declare-fun m!6438622 () Bool)

(assert (=> b!5414571 m!6438622))

(declare-fun b!5414577 () Bool)

(declare-fun e!3356233 () Bool)

(declare-fun tp!1496063 () Bool)

(assert (=> b!5414577 (= e!3356233 (and tp_is_empty!39641 tp!1496063))))

(assert (=> b!5413681 (= tp!1495986 e!3356233)))

(assert (= (and b!5413681 (is-Cons!61757 (t!375104 s!2326))) b!5414577))

(declare-fun b!5414578 () Bool)

(declare-fun e!3356234 () Bool)

(assert (=> b!5414578 (= e!3356234 tp_is_empty!39641)))

(declare-fun b!5414581 () Bool)

(declare-fun tp!1496064 () Bool)

(declare-fun tp!1496065 () Bool)

(assert (=> b!5414581 (= e!3356234 (and tp!1496064 tp!1496065))))

(declare-fun b!5414579 () Bool)

(declare-fun tp!1496067 () Bool)

(declare-fun tp!1496066 () Bool)

(assert (=> b!5414579 (= e!3356234 (and tp!1496067 tp!1496066))))

(assert (=> b!5413686 (= tp!1495987 e!3356234)))

(declare-fun b!5414580 () Bool)

(declare-fun tp!1496068 () Bool)

(assert (=> b!5414580 (= e!3356234 tp!1496068)))

(assert (= (and b!5413686 (is-ElementMatch!15194 (regOne!30900 r!7292))) b!5414578))

(assert (= (and b!5413686 (is-Concat!24039 (regOne!30900 r!7292))) b!5414579))

(assert (= (and b!5413686 (is-Star!15194 (regOne!30900 r!7292))) b!5414580))

(assert (= (and b!5413686 (is-Union!15194 (regOne!30900 r!7292))) b!5414581))

(declare-fun b!5414582 () Bool)

(declare-fun e!3356235 () Bool)

(assert (=> b!5414582 (= e!3356235 tp_is_empty!39641)))

(declare-fun b!5414585 () Bool)

(declare-fun tp!1496069 () Bool)

(declare-fun tp!1496070 () Bool)

(assert (=> b!5414585 (= e!3356235 (and tp!1496069 tp!1496070))))

(declare-fun b!5414583 () Bool)

(declare-fun tp!1496072 () Bool)

(declare-fun tp!1496071 () Bool)

(assert (=> b!5414583 (= e!3356235 (and tp!1496072 tp!1496071))))

(assert (=> b!5413686 (= tp!1495993 e!3356235)))

(declare-fun b!5414584 () Bool)

(declare-fun tp!1496073 () Bool)

(assert (=> b!5414584 (= e!3356235 tp!1496073)))

(assert (= (and b!5413686 (is-ElementMatch!15194 (regTwo!30900 r!7292))) b!5414582))

(assert (= (and b!5413686 (is-Concat!24039 (regTwo!30900 r!7292))) b!5414583))

(assert (= (and b!5413686 (is-Star!15194 (regTwo!30900 r!7292))) b!5414584))

(assert (= (and b!5413686 (is-Union!15194 (regTwo!30900 r!7292))) b!5414585))

(declare-fun b!5414586 () Bool)

(declare-fun e!3356236 () Bool)

(assert (=> b!5414586 (= e!3356236 tp_is_empty!39641)))

(declare-fun b!5414589 () Bool)

(declare-fun tp!1496074 () Bool)

(declare-fun tp!1496075 () Bool)

(assert (=> b!5414589 (= e!3356236 (and tp!1496074 tp!1496075))))

(declare-fun b!5414587 () Bool)

(declare-fun tp!1496077 () Bool)

(declare-fun tp!1496076 () Bool)

(assert (=> b!5414587 (= e!3356236 (and tp!1496077 tp!1496076))))

(assert (=> b!5413651 (= tp!1495991 e!3356236)))

(declare-fun b!5414588 () Bool)

(declare-fun tp!1496078 () Bool)

(assert (=> b!5414588 (= e!3356236 tp!1496078)))

(assert (= (and b!5413651 (is-ElementMatch!15194 (regOne!30901 r!7292))) b!5414586))

(assert (= (and b!5413651 (is-Concat!24039 (regOne!30901 r!7292))) b!5414587))

(assert (= (and b!5413651 (is-Star!15194 (regOne!30901 r!7292))) b!5414588))

(assert (= (and b!5413651 (is-Union!15194 (regOne!30901 r!7292))) b!5414589))

(declare-fun b!5414590 () Bool)

(declare-fun e!3356237 () Bool)

(assert (=> b!5414590 (= e!3356237 tp_is_empty!39641)))

(declare-fun b!5414593 () Bool)

(declare-fun tp!1496079 () Bool)

(declare-fun tp!1496080 () Bool)

(assert (=> b!5414593 (= e!3356237 (and tp!1496079 tp!1496080))))

(declare-fun b!5414591 () Bool)

(declare-fun tp!1496082 () Bool)

(declare-fun tp!1496081 () Bool)

(assert (=> b!5414591 (= e!3356237 (and tp!1496082 tp!1496081))))

(assert (=> b!5413651 (= tp!1495995 e!3356237)))

(declare-fun b!5414592 () Bool)

(declare-fun tp!1496083 () Bool)

(assert (=> b!5414592 (= e!3356237 tp!1496083)))

(assert (= (and b!5413651 (is-ElementMatch!15194 (regTwo!30901 r!7292))) b!5414590))

(assert (= (and b!5413651 (is-Concat!24039 (regTwo!30901 r!7292))) b!5414591))

(assert (= (and b!5413651 (is-Star!15194 (regTwo!30901 r!7292))) b!5414592))

(assert (= (and b!5413651 (is-Union!15194 (regTwo!30901 r!7292))) b!5414593))

(declare-fun b_lambda!206759 () Bool)

(assert (= b_lambda!206751 (or b!5413692 b_lambda!206759)))

(declare-fun bs!1250709 () Bool)

(declare-fun d!1727841 () Bool)

(assert (= bs!1250709 (and d!1727841 b!5413692)))

(assert (=> bs!1250709 (= (dynLambda!24333 lambda!282896 (h!68207 zl!343)) (derivationStepZipperUp!566 (h!68207 zl!343) (h!68205 s!2326)))))

(assert (=> bs!1250709 m!6437592))

(assert (=> d!1727667 d!1727841))

(declare-fun b_lambda!206761 () Bool)

(assert (= b_lambda!206757 (or b!5413692 b_lambda!206761)))

(declare-fun bs!1250710 () Bool)

(declare-fun d!1727843 () Bool)

(assert (= bs!1250710 (and d!1727843 b!5413692)))

(assert (=> bs!1250710 (= (dynLambda!24333 lambda!282896 lt!2207720) (derivationStepZipperUp!566 lt!2207720 (h!68205 s!2326)))))

(assert (=> bs!1250710 m!6437688))

(assert (=> d!1727819 d!1727843))

(declare-fun b_lambda!206763 () Bool)

(assert (= b_lambda!206755 (or b!5413692 b_lambda!206763)))

(declare-fun bs!1250711 () Bool)

(declare-fun d!1727845 () Bool)

(assert (= bs!1250711 (and d!1727845 b!5413692)))

(assert (=> bs!1250711 (= (dynLambda!24333 lambda!282896 lt!2207772) (derivationStepZipperUp!566 lt!2207772 (h!68205 s!2326)))))

(assert (=> bs!1250711 m!6437692))

(assert (=> d!1727813 d!1727845))

(declare-fun b_lambda!206765 () Bool)

(assert (= b_lambda!206753 (or b!5413671 b_lambda!206765)))

(declare-fun bs!1250712 () Bool)

(declare-fun d!1727847 () Bool)

(assert (= bs!1250712 (and d!1727847 b!5413671)))

(declare-fun lt!2208098 () Unit!154298)

(assert (=> bs!1250712 (= lt!2208098 (lemmaConcatPreservesForall!219 (exprs!5078 lt!2207772) lt!2207737 lambda!282898))))

(assert (=> bs!1250712 (= (dynLambda!24334 lambda!282897 lt!2207772) (Context!9157 (++!13562 (exprs!5078 lt!2207772) lt!2207737)))))

(declare-fun m!6438624 () Bool)

(assert (=> bs!1250712 m!6438624))

(declare-fun m!6438626 () Bool)

(assert (=> bs!1250712 m!6438626))

(assert (=> d!1727719 d!1727847))

(declare-fun b_lambda!206767 () Bool)

(assert (= b_lambda!206749 (or b!5413692 b_lambda!206767)))

(declare-fun bs!1250713 () Bool)

(declare-fun d!1727849 () Bool)

(assert (= bs!1250713 (and d!1727849 b!5413692)))

(assert (=> bs!1250713 (= (dynLambda!24333 lambda!282896 lt!2207745) (derivationStepZipperUp!566 lt!2207745 (h!68205 s!2326)))))

(assert (=> bs!1250713 m!6437736))

(assert (=> d!1727649 d!1727849))

(push 1)

(assert (not d!1727785))

(assert (not b!5414580))

(assert (not d!1727649))

(assert (not d!1727791))

(assert (not b!5414235))

(assert (not d!1727781))

(assert (not b!5414152))

(assert (not b!5414461))

(assert (not b!5414581))

(assert (not bm!387435))

(assert (not b!5414420))

(assert (not b!5414286))

(assert (not b!5413924))

(assert (not d!1727687))

(assert (not bm!387440))

(assert (not d!1727743))

(assert (not setNonEmpty!35276))

(assert (not b!5414227))

(assert (not d!1727817))

(assert (not b!5414442))

(assert (not b!5414434))

(assert (not bm!387469))

(assert (not b!5414130))

(assert (not b!5414319))

(assert (not b!5414577))

(assert (not b!5414375))

(assert (not d!1727727))

(assert (not d!1727709))

(assert (not b!5414588))

(assert (not d!1727685))

(assert (not b!5414090))

(assert (not d!1727775))

(assert (not b!5414519))

(assert (not b!5414136))

(assert (not d!1727763))

(assert (not d!1727719))

(assert (not bm!387474))

(assert (not bm!387411))

(assert (not bm!387434))

(assert (not b!5414250))

(assert (not b!5414226))

(assert (not b!5414066))

(assert (not b!5414062))

(assert (not bs!1250709))

(assert (not bm!387447))

(assert (not d!1727765))

(assert (not b!5414347))

(assert (not b!5414587))

(assert (not bm!387457))

(assert (not bs!1250712))

(assert (not b_lambda!206767))

(assert (not d!1727793))

(assert (not b!5413958))

(assert (not b!5413955))

(assert (not bm!387441))

(assert (not b!5414478))

(assert (not b!5414318))

(assert (not b!5414370))

(assert (not bm!387413))

(assert (not b!5413988))

(assert (not b!5414336))

(assert (not b!5414443))

(assert (not d!1727715))

(assert (not b!5414352))

(assert (not b!5414145))

(assert (not b!5413912))

(assert (not b!5414364))

(assert (not b!5414031))

(assert (not b!5414497))

(assert (not bm!387432))

(assert (not d!1727773))

(assert (not d!1727635))

(assert (not b!5414277))

(assert (not bm!387452))

(assert (not b!5414368))

(assert (not b!5414425))

(assert (not b!5414415))

(assert (not d!1727829))

(assert (not b!5414108))

(assert (not bm!387458))

(assert (not b!5414135))

(assert (not d!1727803))

(assert (not bm!387471))

(assert (not d!1727629))

(assert (not b!5414446))

(assert (not d!1727833))

(assert (not d!1727659))

(assert (not b!5414589))

(assert (not b!5414305))

(assert (not d!1727831))

(assert (not d!1727699))

(assert (not b!5414109))

(assert (not b!5414475))

(assert (not d!1727729))

(assert (not d!1727777))

(assert (not d!1727663))

(assert (not d!1727799))

(assert (not b!5414326))

(assert (not b!5414106))

(assert (not b!5414026))

(assert (not b!5414441))

(assert (not b!5414399))

(assert (not b!5414334))

(assert (not b_lambda!206763))

(assert (not b!5414151))

(assert (not d!1727669))

(assert (not b!5414275))

(assert (not b!5414483))

(assert (not d!1727639))

(assert (not d!1727707))

(assert (not bm!387446))

(assert (not b!5414525))

(assert (not d!1727815))

(assert (not b!5414093))

(assert (not b!5414431))

(assert (not b!5414412))

(assert (not b!5414411))

(assert (not b!5413923))

(assert (not d!1727667))

(assert (not d!1727637))

(assert (not bm!387456))

(assert (not b!5414194))

(assert (not b!5414320))

(assert (not b!5414373))

(assert (not b!5413956))

(assert tp_is_empty!39641)

(assert (not b!5414323))

(assert (not bm!387429))

(assert (not b!5414544))

(assert (not b!5414063))

(assert (not d!1727741))

(assert (not b!5414343))

(assert (not d!1727737))

(assert (not b!5414422))

(assert (not b!5414307))

(assert (not b!5414325))

(assert (not b!5414562))

(assert (not b!5414572))

(assert (not b!5414133))

(assert (not d!1727767))

(assert (not d!1727821))

(assert (not d!1727671))

(assert (not d!1727725))

(assert (not d!1727819))

(assert (not b!5414061))

(assert (not b!5414249))

(assert (not b!5414476))

(assert (not bm!387433))

(assert (not b!5414472))

(assert (not b!5414058))

(assert (not b!5414032))

(assert (not d!1727835))

(assert (not bm!387412))

(assert (not d!1727761))

(assert (not d!1727723))

(assert (not bm!387451))

(assert (not b!5414563))

(assert (not b!5414274))

(assert (not b!5414131))

(assert (not b!5414350))

(assert (not bm!387470))

(assert (not b!5413985))

(assert (not bm!387406))

(assert (not b!5414038))

(assert (not b!5414272))

(assert (not d!1727787))

(assert (not d!1727713))

(assert (not b!5414107))

(assert (not b!5414436))

(assert (not b!5414592))

(assert (not d!1727797))

(assert (not b!5413973))

(assert (not d!1727651))

(assert (not bm!387476))

(assert (not b!5414192))

(assert (not b!5414528))

(assert (not b!5413957))

(assert (not d!1727645))

(assert (not b!5414232))

(assert (not b!5414357))

(assert (not d!1727689))

(assert (not b!5414448))

(assert (not b!5414449))

(assert (not d!1727691))

(assert (not bm!387475))

(assert (not d!1727755))

(assert (not bm!387459))

(assert (not b!5414417))

(assert (not d!1727837))

(assert (not d!1727813))

(assert (not d!1727681))

(assert (not bs!1250711))

(assert (not b!5414346))

(assert (not b!5413913))

(assert (not bm!387437))

(assert (not b!5414458))

(assert (not b!5413972))

(assert (not b!5414520))

(assert (not d!1727695))

(assert (not b!5414584))

(assert (not b!5414280))

(assert (not b!5414462))

(assert (not b!5414593))

(assert (not d!1727693))

(assert (not b!5414279))

(assert (not d!1727643))

(assert (not b!5414037))

(assert (not d!1727697))

(assert (not bm!387473))

(assert (not b_lambda!206761))

(assert (not b!5414470))

(assert (not b!5414355))

(assert (not d!1727711))

(assert (not b!5414092))

(assert (not b!5414398))

(assert (not b!5414273))

(assert (not bm!387454))

(assert (not bm!387472))

(assert (not d!1727675))

(assert (not b!5413959))

(assert (not b!5414579))

(assert (not b!5414342))

(assert (not b!5414495))

(assert (not b!5414465))

(assert (not b!5414549))

(assert (not d!1727703))

(assert (not b!5414571))

(assert (not b_lambda!206765))

(assert (not b!5413960))

(assert (not b!5414583))

(assert (not d!1727721))

(assert (not b!5414561))

(assert (not d!1727795))

(assert (not b!5414477))

(assert (not b!5414564))

(assert (not b!5414027))

(assert (not b!5414086))

(assert (not b!5414530))

(assert (not b!5414237))

(assert (not d!1727677))

(assert (not bm!387415))

(assert (not bs!1250710))

(assert (not b_lambda!206759))

(assert (not b!5414523))

(assert (not d!1727683))

(assert (not bm!387450))

(assert (not d!1727759))

(assert (not d!1727733))

(assert (not b!5414484))

(assert (not b!5414230))

(assert (not b!5414585))

(assert (not bs!1250713))

(assert (not d!1727717))

(assert (not d!1727811))

(assert (not b!5414429))

(assert (not b!5414426))

(assert (not b!5414365))

(assert (not b!5414315))

(assert (not b!5414467))

(assert (not b!5414137))

(assert (not bm!387453))

(assert (not d!1727749))

(assert (not d!1727745))

(assert (not d!1727801))

(assert (not b!5413989))

(assert (not b!5414085))

(assert (not b!5414479))

(assert (not b!5414138))

(assert (not b!5414087))

(assert (not bm!387407))

(assert (not b!5413950))

(assert (not b!5414591))

(assert (not b!5414059))

(assert (not d!1727747))

(assert (not d!1727631))

(assert (not d!1727769))

(assert (not b!5413961))

(assert (not b!5414020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

