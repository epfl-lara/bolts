; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568930 () Bool)

(assert start!568930)

(declare-fun b!5418677 () Bool)

(assert (=> b!5418677 true))

(assert (=> b!5418677 true))

(declare-fun lambda!283573 () Int)

(declare-fun lambda!283572 () Int)

(assert (=> b!5418677 (not (= lambda!283573 lambda!283572))))

(assert (=> b!5418677 true))

(assert (=> b!5418677 true))

(declare-fun b!5418685 () Bool)

(assert (=> b!5418685 true))

(declare-fun b!5418711 () Bool)

(assert (=> b!5418711 true))

(declare-fun bs!1251848 () Bool)

(declare-fun b!5418695 () Bool)

(assert (= bs!1251848 (and b!5418695 b!5418677)))

(declare-datatypes ((C!30672 0))(
  ( (C!30673 (val!25038 Int)) )
))
(declare-datatypes ((Regex!15201 0))(
  ( (ElementMatch!15201 (c!944955 C!30672)) (Concat!24046 (regOne!30914 Regex!15201) (regTwo!30914 Regex!15201)) (EmptyExpr!15201) (Star!15201 (reg!15530 Regex!15201)) (EmptyLang!15201) (Union!15201 (regOne!30915 Regex!15201) (regTwo!30915 Regex!15201)) )
))
(declare-fun r!7292 () Regex!15201)

(declare-fun lambda!283577 () Int)

(declare-fun lt!2209814 () Regex!15201)

(assert (=> bs!1251848 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283577 lambda!283572))))

(assert (=> bs!1251848 (not (= lambda!283577 lambda!283573))))

(assert (=> b!5418695 true))

(assert (=> b!5418695 true))

(assert (=> b!5418695 true))

(declare-fun lambda!283578 () Int)

(assert (=> bs!1251848 (not (= lambda!283578 lambda!283572))))

(assert (=> bs!1251848 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283578 lambda!283573))))

(assert (=> b!5418695 (not (= lambda!283578 lambda!283577))))

(assert (=> b!5418695 true))

(assert (=> b!5418695 true))

(assert (=> b!5418695 true))

(declare-fun bs!1251849 () Bool)

(declare-fun b!5418682 () Bool)

(assert (= bs!1251849 (and b!5418682 b!5418677)))

(declare-fun lt!2209771 () Regex!15201)

(declare-fun lambda!283579 () Int)

(declare-datatypes ((List!61902 0))(
  ( (Nil!61778) (Cons!61778 (h!68226 C!30672) (t!375125 List!61902)) )
))
(declare-fun s!2326 () List!61902)

(declare-datatypes ((tuple2!64800 0))(
  ( (tuple2!64801 (_1!35703 List!61902) (_2!35703 List!61902)) )
))
(declare-fun lt!2209762 () tuple2!64800)

(assert (=> bs!1251849 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283579 lambda!283572))))

(assert (=> bs!1251849 (not (= lambda!283579 lambda!283573))))

(declare-fun bs!1251850 () Bool)

(assert (= bs!1251850 (and b!5418682 b!5418695)))

(assert (=> bs!1251850 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283579 lambda!283577))))

(assert (=> bs!1251850 (not (= lambda!283579 lambda!283578))))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(declare-fun lambda!283580 () Int)

(assert (=> b!5418682 (not (= lambda!283580 lambda!283579))))

(assert (=> bs!1251850 (not (= lambda!283580 lambda!283577))))

(assert (=> bs!1251849 (not (= lambda!283580 lambda!283572))))

(assert (=> bs!1251850 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283580 lambda!283578))))

(assert (=> bs!1251849 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283580 lambda!283573))))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(declare-fun lambda!283581 () Int)

(assert (=> b!5418682 (not (= lambda!283581 lambda!283580))))

(assert (=> b!5418682 (not (= lambda!283581 lambda!283579))))

(assert (=> bs!1251850 (not (= lambda!283581 lambda!283577))))

(assert (=> bs!1251849 (not (= lambda!283581 lambda!283572))))

(assert (=> bs!1251850 (not (= lambda!283581 lambda!283578))))

(assert (=> bs!1251849 (not (= lambda!283581 lambda!283573))))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(assert (=> b!5418682 true))

(declare-fun b!5418667 () Bool)

(declare-fun res!2305206 () Bool)

(declare-fun e!3358471 () Bool)

(assert (=> b!5418667 (=> res!2305206 e!3358471)))

(get-info :version)

(assert (=> b!5418667 (= res!2305206 (or ((_ is Concat!24046) (regOne!30914 r!7292)) (not ((_ is Star!15201) (regOne!30914 r!7292)))))))

(declare-fun b!5418668 () Bool)

(declare-fun e!3358487 () Bool)

(declare-fun e!3358472 () Bool)

(assert (=> b!5418668 (= e!3358487 e!3358472)))

(declare-fun res!2305230 () Bool)

(assert (=> b!5418668 (=> res!2305230 e!3358472)))

(declare-fun e!3358475 () Bool)

(assert (=> b!5418668 (= res!2305230 e!3358475)))

(declare-fun res!2305240 () Bool)

(assert (=> b!5418668 (=> (not res!2305240) (not e!3358475))))

(declare-fun lt!2209790 () Bool)

(assert (=> b!5418668 (= res!2305240 (not lt!2209790))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61903 0))(
  ( (Nil!61779) (Cons!61779 (h!68227 Regex!15201) (t!375126 List!61903)) )
))
(declare-datatypes ((Context!9170 0))(
  ( (Context!9171 (exprs!5085 List!61903)) )
))
(declare-fun lt!2209800 () (InoxSet Context!9170))

(declare-fun matchZipper!1445 ((InoxSet Context!9170) List!61902) Bool)

(assert (=> b!5418668 (= lt!2209790 (matchZipper!1445 lt!2209800 (t!375125 s!2326)))))

(declare-fun b!5418669 () Bool)

(declare-fun e!3358462 () Bool)

(declare-fun e!3358488 () Bool)

(assert (=> b!5418669 (= e!3358462 e!3358488)))

(declare-fun res!2305228 () Bool)

(assert (=> b!5418669 (=> res!2305228 e!3358488)))

(declare-datatypes ((List!61904 0))(
  ( (Nil!61780) (Cons!61780 (h!68228 Context!9170) (t!375127 List!61904)) )
))
(declare-fun lt!2209802 () List!61904)

(declare-fun unfocusZipper!943 (List!61904) Regex!15201)

(assert (=> b!5418669 (= res!2305228 (not (= (unfocusZipper!943 lt!2209802) (reg!15530 (regOne!30914 r!7292)))))))

(declare-fun lt!2209826 () Context!9170)

(assert (=> b!5418669 (= lt!2209802 (Cons!61780 lt!2209826 Nil!61780))))

(declare-fun lt!2209781 () Context!9170)

(declare-fun lambda!283574 () Int)

(declare-fun lt!2209779 () (InoxSet Context!9170))

(declare-fun flatMap!928 ((InoxSet Context!9170) Int) (InoxSet Context!9170))

(declare-fun derivationStepZipperUp!573 (Context!9170 C!30672) (InoxSet Context!9170))

(assert (=> b!5418669 (= (flatMap!928 lt!2209779 lambda!283574) (derivationStepZipperUp!573 lt!2209781 (h!68226 s!2326)))))

(declare-datatypes ((Unit!154326 0))(
  ( (Unit!154327) )
))
(declare-fun lt!2209767 () Unit!154326)

(declare-fun lemmaFlatMapOnSingletonSet!460 ((InoxSet Context!9170) Context!9170 Int) Unit!154326)

(assert (=> b!5418669 (= lt!2209767 (lemmaFlatMapOnSingletonSet!460 lt!2209779 lt!2209781 lambda!283574))))

(declare-fun lt!2209787 () (InoxSet Context!9170))

(assert (=> b!5418669 (= (flatMap!928 lt!2209787 lambda!283574) (derivationStepZipperUp!573 lt!2209826 (h!68226 s!2326)))))

(declare-fun lt!2209792 () Unit!154326)

(assert (=> b!5418669 (= lt!2209792 (lemmaFlatMapOnSingletonSet!460 lt!2209787 lt!2209826 lambda!283574))))

(declare-fun lt!2209797 () (InoxSet Context!9170))

(assert (=> b!5418669 (= lt!2209797 (derivationStepZipperUp!573 lt!2209781 (h!68226 s!2326)))))

(declare-fun lt!2209764 () (InoxSet Context!9170))

(assert (=> b!5418669 (= lt!2209764 (derivationStepZipperUp!573 lt!2209826 (h!68226 s!2326)))))

(assert (=> b!5418669 (= lt!2209779 (store ((as const (Array Context!9170 Bool)) false) lt!2209781 true))))

(assert (=> b!5418669 (= lt!2209787 (store ((as const (Array Context!9170 Bool)) false) lt!2209826 true))))

(declare-fun lt!2209806 () List!61903)

(assert (=> b!5418669 (= lt!2209826 (Context!9171 lt!2209806))))

(assert (=> b!5418669 (= lt!2209806 (Cons!61779 (reg!15530 (regOne!30914 r!7292)) Nil!61779))))

(declare-fun res!2305234 () Bool)

(declare-fun e!3358461 () Bool)

(assert (=> start!568930 (=> (not res!2305234) (not e!3358461))))

(declare-fun validRegex!6937 (Regex!15201) Bool)

(assert (=> start!568930 (= res!2305234 (validRegex!6937 r!7292))))

(assert (=> start!568930 e!3358461))

(declare-fun e!3358469 () Bool)

(assert (=> start!568930 e!3358469))

(declare-fun condSetEmpty!35309 () Bool)

(declare-fun z!1189 () (InoxSet Context!9170))

(assert (=> start!568930 (= condSetEmpty!35309 (= z!1189 ((as const (Array Context!9170 Bool)) false)))))

(declare-fun setRes!35309 () Bool)

(assert (=> start!568930 setRes!35309))

(declare-fun e!3358486 () Bool)

(assert (=> start!568930 e!3358486))

(declare-fun e!3358468 () Bool)

(assert (=> start!568930 e!3358468))

(declare-fun b!5418670 () Bool)

(declare-fun res!2305233 () Bool)

(assert (=> b!5418670 (=> res!2305233 e!3358472)))

(declare-fun lt!2209766 () Bool)

(assert (=> b!5418670 (= res!2305233 (or (not lt!2209790) (not lt!2209766)))))

(declare-fun b!5418671 () Bool)

(declare-fun tp_is_empty!39655 () Bool)

(declare-fun tp!1496552 () Bool)

(assert (=> b!5418671 (= e!3358468 (and tp_is_empty!39655 tp!1496552))))

(declare-fun b!5418672 () Bool)

(declare-fun e!3358478 () Bool)

(assert (=> b!5418672 (= e!3358461 e!3358478)))

(declare-fun res!2305239 () Bool)

(assert (=> b!5418672 (=> (not res!2305239) (not e!3358478))))

(declare-fun lt!2209817 () Regex!15201)

(assert (=> b!5418672 (= res!2305239 (= r!7292 lt!2209817))))

(declare-fun zl!343 () List!61904)

(assert (=> b!5418672 (= lt!2209817 (unfocusZipper!943 zl!343))))

(declare-fun b!5418673 () Bool)

(declare-fun e!3358465 () Bool)

(assert (=> b!5418673 (= e!3358471 e!3358465)))

(declare-fun res!2305235 () Bool)

(assert (=> b!5418673 (=> res!2305235 e!3358465)))

(declare-fun lt!2209791 () (InoxSet Context!9170))

(assert (=> b!5418673 (= res!2305235 (not (= lt!2209800 lt!2209791)))))

(declare-fun derivationStepZipperDown!649 (Regex!15201 Context!9170 C!30672) (InoxSet Context!9170))

(assert (=> b!5418673 (= lt!2209791 (derivationStepZipperDown!649 (reg!15530 (regOne!30914 r!7292)) lt!2209781 (h!68226 s!2326)))))

(declare-fun lt!2209776 () List!61903)

(assert (=> b!5418673 (= lt!2209781 (Context!9171 lt!2209776))))

(assert (=> b!5418673 (= lt!2209776 (Cons!61779 lt!2209771 (t!375126 (exprs!5085 (h!68228 zl!343)))))))

(assert (=> b!5418673 (= lt!2209771 (Star!15201 (reg!15530 (regOne!30914 r!7292))))))

(declare-fun b!5418674 () Bool)

(declare-fun tp!1496544 () Bool)

(declare-fun tp!1496545 () Bool)

(assert (=> b!5418674 (= e!3358469 (and tp!1496544 tp!1496545))))

(declare-fun b!5418675 () Bool)

(declare-fun lt!2209798 () (InoxSet Context!9170))

(assert (=> b!5418675 (= e!3358475 (not (matchZipper!1445 lt!2209798 (t!375125 s!2326))))))

(declare-fun setElem!35309 () Context!9170)

(declare-fun e!3358484 () Bool)

(declare-fun tp!1496548 () Bool)

(declare-fun setNonEmpty!35309 () Bool)

(declare-fun inv!81249 (Context!9170) Bool)

(assert (=> setNonEmpty!35309 (= setRes!35309 (and tp!1496548 (inv!81249 setElem!35309) e!3358484))))

(declare-fun setRest!35309 () (InoxSet Context!9170))

(assert (=> setNonEmpty!35309 (= z!1189 ((_ map or) (store ((as const (Array Context!9170 Bool)) false) setElem!35309 true) setRest!35309))))

(declare-fun b!5418676 () Bool)

(declare-fun e!3358470 () Bool)

(assert (=> b!5418676 (= e!3358488 e!3358470)))

(declare-fun res!2305225 () Bool)

(assert (=> b!5418676 (=> res!2305225 e!3358470)))

(declare-fun lt!2209784 () List!61904)

(declare-fun lt!2209822 () Regex!15201)

(assert (=> b!5418676 (= res!2305225 (not (= (unfocusZipper!943 lt!2209784) lt!2209822)))))

(assert (=> b!5418676 (= lt!2209784 (Cons!61780 lt!2209781 Nil!61780))))

(declare-fun e!3358479 () Bool)

(declare-fun e!3358482 () Bool)

(assert (=> b!5418677 (= e!3358479 e!3358482)))

(declare-fun res!2305208 () Bool)

(assert (=> b!5418677 (=> res!2305208 e!3358482)))

(declare-fun lt!2209821 () Bool)

(declare-fun lt!2209786 () Bool)

(assert (=> b!5418677 (= res!2305208 (or (not (= lt!2209786 lt!2209821)) ((_ is Nil!61778) s!2326)))))

(declare-fun Exists!2382 (Int) Bool)

(assert (=> b!5418677 (= (Exists!2382 lambda!283572) (Exists!2382 lambda!283573))))

(declare-fun lt!2209793 () Unit!154326)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1036 (Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418677 (= lt!2209793 (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326))))

(assert (=> b!5418677 (= lt!2209821 (Exists!2382 lambda!283572))))

(declare-datatypes ((Option!15312 0))(
  ( (None!15311) (Some!15311 (v!51340 tuple2!64800)) )
))
(declare-fun isDefined!12015 (Option!15312) Bool)

(declare-fun findConcatSeparation!1726 (Regex!15201 Regex!15201 List!61902 List!61902 List!61902) Option!15312)

(assert (=> b!5418677 (= lt!2209821 (isDefined!12015 (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326)))))

(declare-fun lt!2209780 () Unit!154326)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1490 (Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418677 (= lt!2209780 (lemmaFindConcatSeparationEquivalentToExists!1490 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326))))

(declare-fun b!5418678 () Bool)

(declare-fun res!2305227 () Bool)

(assert (=> b!5418678 (=> res!2305227 e!3358471)))

(declare-fun e!3358473 () Bool)

(assert (=> b!5418678 (= res!2305227 e!3358473)))

(declare-fun res!2305229 () Bool)

(assert (=> b!5418678 (=> (not res!2305229) (not e!3358473))))

(assert (=> b!5418678 (= res!2305229 ((_ is Concat!24046) (regOne!30914 r!7292)))))

(declare-fun b!5418679 () Bool)

(declare-fun res!2305207 () Bool)

(assert (=> b!5418679 (=> res!2305207 e!3358479)))

(declare-fun generalisedUnion!1130 (List!61903) Regex!15201)

(declare-fun unfocusZipperList!643 (List!61904) List!61903)

(assert (=> b!5418679 (= res!2305207 (not (= r!7292 (generalisedUnion!1130 (unfocusZipperList!643 zl!343)))))))

(declare-fun b!5418680 () Bool)

(declare-fun e!3358466 () Bool)

(declare-fun lt!2209823 () Bool)

(assert (=> b!5418680 (= e!3358466 lt!2209823)))

(declare-fun b!5418681 () Bool)

(declare-fun e!3358476 () Bool)

(assert (=> b!5418681 (= e!3358476 (matchZipper!1445 lt!2209798 (t!375125 s!2326)))))

(declare-fun e!3358485 () Bool)

(declare-fun e!3358480 () Bool)

(assert (=> b!5418682 (= e!3358485 e!3358480)))

(declare-fun res!2305220 () Bool)

(assert (=> b!5418682 (=> res!2305220 e!3358480)))

(declare-fun lt!2209799 () tuple2!64800)

(declare-fun matchR!7386 (Regex!15201 List!61902) Bool)

(assert (=> b!5418682 (= res!2305220 (not (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209799))))))

(declare-fun ++!13575 (List!61902 List!61902) List!61902)

(assert (=> b!5418682 (= (++!13575 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799)) (_2!35703 lt!2209762)) (++!13575 (_1!35703 lt!2209799) (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762))))))

(declare-fun lt!2209768 () Unit!154326)

(declare-fun lemmaConcatAssociativity!2836 (List!61902 List!61902 List!61902) Unit!154326)

(assert (=> b!5418682 (= lt!2209768 (lemmaConcatAssociativity!2836 (_1!35703 lt!2209799) (_2!35703 lt!2209799) (_2!35703 lt!2209762)))))

(declare-fun lt!2209796 () Option!15312)

(declare-fun get!21304 (Option!15312) tuple2!64800)

(assert (=> b!5418682 (= lt!2209799 (get!21304 lt!2209796))))

(assert (=> b!5418682 (= (Exists!2382 lambda!283579) (Exists!2382 lambda!283581))))

(declare-fun lt!2209804 () Unit!154326)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!412 (Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418682 (= lt!2209804 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!412 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209762)))))

(assert (=> b!5418682 (= (Exists!2382 lambda!283579) (Exists!2382 lambda!283580))))

(declare-fun lt!2209772 () Unit!154326)

(assert (=> b!5418682 (= lt!2209772 (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)))))

(assert (=> b!5418682 (= (isDefined!12015 lt!2209796) (Exists!2382 lambda!283579))))

(assert (=> b!5418682 (= lt!2209796 (findConcatSeparation!1726 (reg!15530 (regOne!30914 r!7292)) lt!2209771 Nil!61778 (_1!35703 lt!2209762) (_1!35703 lt!2209762)))))

(declare-fun lt!2209782 () Unit!154326)

(assert (=> b!5418682 (= lt!2209782 (lemmaFindConcatSeparationEquivalentToExists!1490 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)))))

(declare-fun matchRSpec!2304 (Regex!15201 List!61902) Bool)

(assert (=> b!5418682 (matchRSpec!2304 lt!2209814 (_1!35703 lt!2209762))))

(declare-fun lt!2209763 () Unit!154326)

(declare-fun mainMatchTheorem!2304 (Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418682 (= lt!2209763 (mainMatchTheorem!2304 lt!2209814 (_1!35703 lt!2209762)))))

(declare-fun b!5418683 () Bool)

(declare-fun res!2305211 () Bool)

(declare-fun e!3358474 () Bool)

(assert (=> b!5418683 (=> res!2305211 e!3358474)))

(declare-fun lt!2209778 () tuple2!64800)

(assert (=> b!5418683 (= res!2305211 (not (matchZipper!1445 lt!2209779 (_2!35703 lt!2209778))))))

(declare-fun b!5418684 () Bool)

(declare-fun res!2305212 () Bool)

(assert (=> b!5418684 (=> res!2305212 e!3358479)))

(assert (=> b!5418684 (= res!2305212 (not ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343)))))))

(assert (=> b!5418685 (= e!3358482 e!3358471)))

(declare-fun res!2305218 () Bool)

(assert (=> b!5418685 (=> res!2305218 e!3358471)))

(assert (=> b!5418685 (= res!2305218 (or (and ((_ is ElementMatch!15201) (regOne!30914 r!7292)) (= (c!944955 (regOne!30914 r!7292)) (h!68226 s!2326))) ((_ is Union!15201) (regOne!30914 r!7292))))))

(declare-fun lt!2209818 () Unit!154326)

(declare-fun e!3358467 () Unit!154326)

(assert (=> b!5418685 (= lt!2209818 e!3358467)))

(declare-fun c!944954 () Bool)

(declare-fun lt!2209774 () Bool)

(assert (=> b!5418685 (= c!944954 lt!2209774)))

(declare-fun nullable!5370 (Regex!15201) Bool)

(assert (=> b!5418685 (= lt!2209774 (nullable!5370 (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(assert (=> b!5418685 (= (flatMap!928 z!1189 lambda!283574) (derivationStepZipperUp!573 (h!68228 zl!343) (h!68226 s!2326)))))

(declare-fun lt!2209805 () Unit!154326)

(assert (=> b!5418685 (= lt!2209805 (lemmaFlatMapOnSingletonSet!460 z!1189 (h!68228 zl!343) lambda!283574))))

(declare-fun lt!2209820 () Context!9170)

(assert (=> b!5418685 (= lt!2209798 (derivationStepZipperUp!573 lt!2209820 (h!68226 s!2326)))))

(assert (=> b!5418685 (= lt!2209800 (derivationStepZipperDown!649 (h!68227 (exprs!5085 (h!68228 zl!343))) lt!2209820 (h!68226 s!2326)))))

(assert (=> b!5418685 (= lt!2209820 (Context!9171 (t!375126 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun lt!2209815 () (InoxSet Context!9170))

(assert (=> b!5418685 (= lt!2209815 (derivationStepZipperUp!573 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343))))) (h!68226 s!2326)))))

(declare-fun b!5418686 () Bool)

(declare-fun tp!1496547 () Bool)

(declare-fun tp!1496551 () Bool)

(assert (=> b!5418686 (= e!3358469 (and tp!1496547 tp!1496551))))

(declare-fun b!5418687 () Bool)

(declare-fun e!3358464 () Bool)

(assert (=> b!5418687 (= e!3358464 e!3358462)))

(declare-fun res!2305232 () Bool)

(assert (=> b!5418687 (=> res!2305232 e!3358462)))

(declare-fun lt!2209825 () Context!9170)

(declare-fun lt!2209783 () Regex!15201)

(assert (=> b!5418687 (= res!2305232 (not (= (unfocusZipper!943 (Cons!61780 lt!2209825 Nil!61780)) lt!2209783)))))

(assert (=> b!5418687 (= lt!2209783 (Concat!24046 (reg!15530 (regOne!30914 r!7292)) lt!2209822))))

(declare-fun b!5418688 () Bool)

(declare-fun res!2305236 () Bool)

(declare-fun e!3358477 () Bool)

(assert (=> b!5418688 (=> res!2305236 e!3358477)))

(assert (=> b!5418688 (= res!2305236 (not (= lt!2209817 r!7292)))))

(declare-fun b!5418689 () Bool)

(declare-fun e!3358481 () Bool)

(assert (=> b!5418689 (= e!3358481 e!3358474)))

(declare-fun res!2305219 () Bool)

(assert (=> b!5418689 (=> res!2305219 e!3358474)))

(declare-fun lt!2209816 () List!61902)

(assert (=> b!5418689 (= res!2305219 (not (= s!2326 lt!2209816)))))

(assert (=> b!5418689 (= lt!2209816 (++!13575 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(declare-fun lt!2209801 () Option!15312)

(assert (=> b!5418689 (= lt!2209778 (get!21304 lt!2209801))))

(assert (=> b!5418689 (isDefined!12015 lt!2209801)))

(declare-fun findConcatSeparationZippers!58 ((InoxSet Context!9170) (InoxSet Context!9170) List!61902 List!61902 List!61902) Option!15312)

(assert (=> b!5418689 (= lt!2209801 (findConcatSeparationZippers!58 lt!2209787 lt!2209779 Nil!61778 s!2326 s!2326))))

(declare-fun lt!2209773 () Unit!154326)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!58 ((InoxSet Context!9170) Context!9170 List!61902) Unit!154326)

(assert (=> b!5418689 (= lt!2209773 (lemmaConcatZipperMatchesStringThenFindConcatDefined!58 lt!2209787 lt!2209781 s!2326))))

(declare-fun b!5418690 () Bool)

(declare-fun res!2305223 () Bool)

(assert (=> b!5418690 (=> res!2305223 e!3358487)))

(assert (=> b!5418690 (= res!2305223 (not lt!2209774))))

(declare-fun b!5418691 () Bool)

(declare-fun Unit!154328 () Unit!154326)

(assert (=> b!5418691 (= e!3358467 Unit!154328)))

(declare-fun lt!2209812 () Unit!154326)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!438 ((InoxSet Context!9170) (InoxSet Context!9170) List!61902) Unit!154326)

(assert (=> b!5418691 (= lt!2209812 (lemmaZipperConcatMatchesSameAsBothZippers!438 lt!2209800 lt!2209798 (t!375125 s!2326)))))

(declare-fun res!2305231 () Bool)

(assert (=> b!5418691 (= res!2305231 (matchZipper!1445 lt!2209800 (t!375125 s!2326)))))

(assert (=> b!5418691 (=> res!2305231 e!3358476)))

(assert (=> b!5418691 (= (matchZipper!1445 ((_ map or) lt!2209800 lt!2209798) (t!375125 s!2326)) e!3358476)))

(declare-fun b!5418692 () Bool)

(declare-fun tp!1496549 () Bool)

(assert (=> b!5418692 (= e!3358484 tp!1496549)))

(declare-fun b!5418693 () Bool)

(assert (=> b!5418693 (= e!3358473 (nullable!5370 (regOne!30914 (regOne!30914 r!7292))))))

(declare-fun b!5418694 () Bool)

(declare-fun e!3358483 () Bool)

(declare-fun tp!1496550 () Bool)

(assert (=> b!5418694 (= e!3358483 tp!1496550)))

(assert (=> b!5418695 (= e!3358474 e!3358485)))

(declare-fun res!2305224 () Bool)

(assert (=> b!5418695 (=> res!2305224 e!3358485)))

(assert (=> b!5418695 (= res!2305224 (not (matchR!7386 lt!2209814 (_1!35703 lt!2209762))))))

(declare-fun lt!2209795 () Option!15312)

(assert (=> b!5418695 (= lt!2209762 (get!21304 lt!2209795))))

(assert (=> b!5418695 (= (Exists!2382 lambda!283577) (Exists!2382 lambda!283578))))

(declare-fun lt!2209794 () Unit!154326)

(assert (=> b!5418695 (= lt!2209794 (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 lt!2209814 (regTwo!30914 r!7292) s!2326))))

(assert (=> b!5418695 (= (isDefined!12015 lt!2209795) (Exists!2382 lambda!283577))))

(assert (=> b!5418695 (= lt!2209795 (findConcatSeparation!1726 lt!2209814 (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326))))

(declare-fun lt!2209765 () Unit!154326)

(assert (=> b!5418695 (= lt!2209765 (lemmaFindConcatSeparationEquivalentToExists!1490 lt!2209814 (regTwo!30914 r!7292) s!2326))))

(declare-fun lt!2209819 () Regex!15201)

(assert (=> b!5418695 (matchRSpec!2304 lt!2209819 s!2326)))

(declare-fun lt!2209770 () Unit!154326)

(assert (=> b!5418695 (= lt!2209770 (mainMatchTheorem!2304 lt!2209819 s!2326))))

(assert (=> b!5418695 (matchR!7386 lt!2209819 s!2326)))

(assert (=> b!5418695 (= lt!2209819 (Concat!24046 lt!2209814 (regTwo!30914 r!7292)))))

(assert (=> b!5418695 (= lt!2209814 (Concat!24046 (reg!15530 (regOne!30914 r!7292)) lt!2209771))))

(declare-fun lt!2209788 () Unit!154326)

(declare-fun lemmaConcatAssociative!54 (Regex!15201 Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418695 (= lt!2209788 (lemmaConcatAssociative!54 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (regTwo!30914 r!7292) s!2326))))

(assert (=> b!5418695 e!3358466))

(declare-fun res!2305216 () Bool)

(assert (=> b!5418695 (=> (not res!2305216) (not e!3358466))))

(assert (=> b!5418695 (= res!2305216 (matchR!7386 lt!2209783 lt!2209816))))

(declare-fun lt!2209807 () Unit!154326)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!224 (Regex!15201 Regex!15201 List!61902 List!61902) Unit!154326)

(assert (=> b!5418695 (= lt!2209807 (lemmaTwoRegexMatchThenConcatMatchesConcatString!224 (reg!15530 (regOne!30914 r!7292)) lt!2209822 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(assert (=> b!5418695 (matchR!7386 lt!2209822 (_2!35703 lt!2209778))))

(declare-fun lt!2209789 () Unit!154326)

(declare-fun theoremZipperRegexEquiv!515 ((InoxSet Context!9170) List!61904 Regex!15201 List!61902) Unit!154326)

(assert (=> b!5418695 (= lt!2209789 (theoremZipperRegexEquiv!515 lt!2209779 lt!2209784 lt!2209822 (_2!35703 lt!2209778)))))

(assert (=> b!5418695 (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778))))

(declare-fun lt!2209810 () Unit!154326)

(assert (=> b!5418695 (= lt!2209810 (theoremZipperRegexEquiv!515 lt!2209787 lt!2209802 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778)))))

(declare-fun ++!13576 (List!61903 List!61903) List!61903)

(assert (=> b!5418695 (matchZipper!1445 (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 lt!2209806 lt!2209776)) true) lt!2209816)))

(declare-fun lambda!283576 () Int)

(declare-fun lt!2209809 () Unit!154326)

(declare-fun lemmaConcatPreservesForall!226 (List!61903 List!61903 Int) Unit!154326)

(assert (=> b!5418695 (= lt!2209809 (lemmaConcatPreservesForall!226 lt!2209806 lt!2209776 lambda!283576))))

(declare-fun lt!2209811 () Unit!154326)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!74 (Context!9170 Context!9170 List!61902 List!61902) Unit!154326)

(assert (=> b!5418695 (= lt!2209811 (lemmaConcatenateContextMatchesConcatOfStrings!74 lt!2209826 lt!2209781 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(declare-fun b!5418696 () Bool)

(declare-fun res!2305213 () Bool)

(assert (=> b!5418696 (=> (not res!2305213) (not e!3358461))))

(declare-fun toList!8985 ((InoxSet Context!9170)) List!61904)

(assert (=> b!5418696 (= res!2305213 (= (toList!8985 z!1189) zl!343))))

(declare-fun b!5418697 () Bool)

(declare-fun Unit!154329 () Unit!154326)

(assert (=> b!5418697 (= e!3358467 Unit!154329)))

(declare-fun b!5418698 () Bool)

(declare-fun e!3358463 () Bool)

(assert (=> b!5418698 (= e!3358465 e!3358463)))

(declare-fun res!2305222 () Bool)

(assert (=> b!5418698 (=> res!2305222 e!3358463)))

(declare-fun lt!2209808 () (InoxSet Context!9170))

(assert (=> b!5418698 (= res!2305222 (not (= lt!2209808 lt!2209791)))))

(declare-fun lt!2209769 () (InoxSet Context!9170))

(assert (=> b!5418698 (= (flatMap!928 lt!2209769 lambda!283574) (derivationStepZipperUp!573 lt!2209825 (h!68226 s!2326)))))

(declare-fun lt!2209813 () Unit!154326)

(assert (=> b!5418698 (= lt!2209813 (lemmaFlatMapOnSingletonSet!460 lt!2209769 lt!2209825 lambda!283574))))

(declare-fun lt!2209803 () (InoxSet Context!9170))

(assert (=> b!5418698 (= lt!2209803 (derivationStepZipperUp!573 lt!2209825 (h!68226 s!2326)))))

(declare-fun derivationStepZipper!1440 ((InoxSet Context!9170) C!30672) (InoxSet Context!9170))

(assert (=> b!5418698 (= lt!2209808 (derivationStepZipper!1440 lt!2209769 (h!68226 s!2326)))))

(assert (=> b!5418698 (= lt!2209769 (store ((as const (Array Context!9170 Bool)) false) lt!2209825 true))))

(assert (=> b!5418698 (= lt!2209825 (Context!9171 (Cons!61779 (reg!15530 (regOne!30914 r!7292)) lt!2209776)))))

(declare-fun b!5418699 () Bool)

(declare-fun res!2305210 () Bool)

(assert (=> b!5418699 (=> res!2305210 e!3358474)))

(assert (=> b!5418699 (= res!2305210 (not (matchZipper!1445 lt!2209787 (_1!35703 lt!2209778))))))

(declare-fun b!5418700 () Bool)

(declare-fun tp!1496546 () Bool)

(assert (=> b!5418700 (= e!3358486 (and (inv!81249 (h!68228 zl!343)) e!3358483 tp!1496546))))

(declare-fun b!5418701 () Bool)

(declare-fun res!2305205 () Bool)

(assert (=> b!5418701 (=> res!2305205 e!3358487)))

(assert (=> b!5418701 (= res!2305205 (not (matchZipper!1445 z!1189 s!2326)))))

(declare-fun b!5418702 () Bool)

(declare-fun tp!1496553 () Bool)

(assert (=> b!5418702 (= e!3358469 tp!1496553)))

(declare-fun b!5418703 () Bool)

(assert (=> b!5418703 (= e!3358480 (validRegex!6937 lt!2209771))))

(declare-fun b!5418704 () Bool)

(declare-fun res!2305237 () Bool)

(assert (=> b!5418704 (=> res!2305237 e!3358479)))

(declare-fun isEmpty!33776 (List!61904) Bool)

(assert (=> b!5418704 (= res!2305237 (not (isEmpty!33776 (t!375127 zl!343))))))

(declare-fun b!5418705 () Bool)

(assert (=> b!5418705 (= e!3358463 e!3358477)))

(declare-fun res!2305241 () Bool)

(assert (=> b!5418705 (=> res!2305241 e!3358477)))

(assert (=> b!5418705 (= res!2305241 (not (= lt!2209766 (matchZipper!1445 lt!2209808 (t!375125 s!2326)))))))

(assert (=> b!5418705 (= lt!2209766 (matchZipper!1445 lt!2209769 s!2326))))

(declare-fun b!5418706 () Bool)

(declare-fun res!2305214 () Bool)

(assert (=> b!5418706 (=> res!2305214 e!3358479)))

(declare-fun generalisedConcat!870 (List!61903) Regex!15201)

(assert (=> b!5418706 (= res!2305214 (not (= r!7292 (generalisedConcat!870 (exprs!5085 (h!68228 zl!343))))))))

(declare-fun b!5418707 () Bool)

(assert (=> b!5418707 (= e!3358478 (not e!3358479))))

(declare-fun res!2305238 () Bool)

(assert (=> b!5418707 (=> res!2305238 e!3358479)))

(assert (=> b!5418707 (= res!2305238 (not ((_ is Cons!61780) zl!343)))))

(assert (=> b!5418707 (= lt!2209786 (matchRSpec!2304 r!7292 s!2326))))

(assert (=> b!5418707 (= lt!2209786 (matchR!7386 r!7292 s!2326))))

(declare-fun lt!2209775 () Unit!154326)

(assert (=> b!5418707 (= lt!2209775 (mainMatchTheorem!2304 r!7292 s!2326))))

(declare-fun b!5418708 () Bool)

(assert (=> b!5418708 (= e!3358477 e!3358464)))

(declare-fun res!2305221 () Bool)

(assert (=> b!5418708 (=> res!2305221 e!3358464)))

(assert (=> b!5418708 (= res!2305221 (not (= r!7292 lt!2209822)))))

(assert (=> b!5418708 (= lt!2209822 (Concat!24046 lt!2209771 (regTwo!30914 r!7292)))))

(declare-fun b!5418709 () Bool)

(declare-fun res!2305215 () Bool)

(assert (=> b!5418709 (=> res!2305215 e!3358482)))

(declare-fun isEmpty!33777 (List!61903) Bool)

(assert (=> b!5418709 (= res!2305215 (isEmpty!33777 (t!375126 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun b!5418710 () Bool)

(declare-fun res!2305217 () Bool)

(assert (=> b!5418710 (=> res!2305217 e!3358479)))

(assert (=> b!5418710 (= res!2305217 (or ((_ is EmptyExpr!15201) r!7292) ((_ is EmptyLang!15201) r!7292) ((_ is ElementMatch!15201) r!7292) ((_ is Union!15201) r!7292) (not ((_ is Concat!24046) r!7292))))))

(assert (=> b!5418711 (= e!3358472 e!3358481)))

(declare-fun res!2305226 () Bool)

(assert (=> b!5418711 (=> res!2305226 e!3358481)))

(declare-fun appendTo!60 ((InoxSet Context!9170) Context!9170) (InoxSet Context!9170))

(assert (=> b!5418711 (= res!2305226 (not (= (appendTo!60 lt!2209787 lt!2209781) lt!2209769)))))

(declare-fun lambda!283575 () Int)

(declare-fun map!14186 ((InoxSet Context!9170) Int) (InoxSet Context!9170))

(assert (=> b!5418711 (= (map!14186 lt!2209787 lambda!283575) (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 lt!2209806 lt!2209776)) true))))

(declare-fun lt!2209777 () Unit!154326)

(assert (=> b!5418711 (= lt!2209777 (lemmaConcatPreservesForall!226 lt!2209806 lt!2209776 lambda!283576))))

(declare-fun lt!2209824 () Unit!154326)

(declare-fun lemmaMapOnSingletonSet!60 ((InoxSet Context!9170) Context!9170 Int) Unit!154326)

(assert (=> b!5418711 (= lt!2209824 (lemmaMapOnSingletonSet!60 lt!2209787 lt!2209826 lambda!283575))))

(declare-fun b!5418712 () Bool)

(assert (=> b!5418712 (= e!3358470 e!3358487)))

(declare-fun res!2305209 () Bool)

(assert (=> b!5418712 (=> res!2305209 e!3358487)))

(assert (=> b!5418712 (= res!2305209 lt!2209786)))

(assert (=> b!5418712 (= lt!2209823 (matchRSpec!2304 lt!2209783 s!2326))))

(assert (=> b!5418712 (= lt!2209823 (matchR!7386 lt!2209783 s!2326))))

(declare-fun lt!2209785 () Unit!154326)

(assert (=> b!5418712 (= lt!2209785 (mainMatchTheorem!2304 lt!2209783 s!2326))))

(declare-fun b!5418713 () Bool)

(assert (=> b!5418713 (= e!3358469 tp_is_empty!39655)))

(declare-fun setIsEmpty!35309 () Bool)

(assert (=> setIsEmpty!35309 setRes!35309))

(assert (= (and start!568930 res!2305234) b!5418696))

(assert (= (and b!5418696 res!2305213) b!5418672))

(assert (= (and b!5418672 res!2305239) b!5418707))

(assert (= (and b!5418707 (not res!2305238)) b!5418704))

(assert (= (and b!5418704 (not res!2305237)) b!5418706))

(assert (= (and b!5418706 (not res!2305214)) b!5418684))

(assert (= (and b!5418684 (not res!2305212)) b!5418679))

(assert (= (and b!5418679 (not res!2305207)) b!5418710))

(assert (= (and b!5418710 (not res!2305217)) b!5418677))

(assert (= (and b!5418677 (not res!2305208)) b!5418709))

(assert (= (and b!5418709 (not res!2305215)) b!5418685))

(assert (= (and b!5418685 c!944954) b!5418691))

(assert (= (and b!5418685 (not c!944954)) b!5418697))

(assert (= (and b!5418691 (not res!2305231)) b!5418681))

(assert (= (and b!5418685 (not res!2305218)) b!5418678))

(assert (= (and b!5418678 res!2305229) b!5418693))

(assert (= (and b!5418678 (not res!2305227)) b!5418667))

(assert (= (and b!5418667 (not res!2305206)) b!5418673))

(assert (= (and b!5418673 (not res!2305235)) b!5418698))

(assert (= (and b!5418698 (not res!2305222)) b!5418705))

(assert (= (and b!5418705 (not res!2305241)) b!5418688))

(assert (= (and b!5418688 (not res!2305236)) b!5418708))

(assert (= (and b!5418708 (not res!2305221)) b!5418687))

(assert (= (and b!5418687 (not res!2305232)) b!5418669))

(assert (= (and b!5418669 (not res!2305228)) b!5418676))

(assert (= (and b!5418676 (not res!2305225)) b!5418712))

(assert (= (and b!5418712 (not res!2305209)) b!5418701))

(assert (= (and b!5418701 (not res!2305205)) b!5418690))

(assert (= (and b!5418690 (not res!2305223)) b!5418668))

(assert (= (and b!5418668 res!2305240) b!5418675))

(assert (= (and b!5418668 (not res!2305230)) b!5418670))

(assert (= (and b!5418670 (not res!2305233)) b!5418711))

(assert (= (and b!5418711 (not res!2305226)) b!5418689))

(assert (= (and b!5418689 (not res!2305219)) b!5418699))

(assert (= (and b!5418699 (not res!2305210)) b!5418683))

(assert (= (and b!5418683 (not res!2305211)) b!5418695))

(assert (= (and b!5418695 res!2305216) b!5418680))

(assert (= (and b!5418695 (not res!2305224)) b!5418682))

(assert (= (and b!5418682 (not res!2305220)) b!5418703))

(assert (= (and start!568930 ((_ is ElementMatch!15201) r!7292)) b!5418713))

(assert (= (and start!568930 ((_ is Concat!24046) r!7292)) b!5418686))

(assert (= (and start!568930 ((_ is Star!15201) r!7292)) b!5418702))

(assert (= (and start!568930 ((_ is Union!15201) r!7292)) b!5418674))

(assert (= (and start!568930 condSetEmpty!35309) setIsEmpty!35309))

(assert (= (and start!568930 (not condSetEmpty!35309)) setNonEmpty!35309))

(assert (= setNonEmpty!35309 b!5418692))

(assert (= b!5418700 b!5418694))

(assert (= (and start!568930 ((_ is Cons!61780) zl!343)) b!5418700))

(assert (= (and start!568930 ((_ is Cons!61778) s!2326)) b!5418671))

(declare-fun m!6442582 () Bool)

(assert (=> b!5418669 m!6442582))

(declare-fun m!6442584 () Bool)

(assert (=> b!5418669 m!6442584))

(declare-fun m!6442586 () Bool)

(assert (=> b!5418669 m!6442586))

(declare-fun m!6442588 () Bool)

(assert (=> b!5418669 m!6442588))

(declare-fun m!6442590 () Bool)

(assert (=> b!5418669 m!6442590))

(declare-fun m!6442592 () Bool)

(assert (=> b!5418669 m!6442592))

(declare-fun m!6442594 () Bool)

(assert (=> b!5418669 m!6442594))

(declare-fun m!6442596 () Bool)

(assert (=> b!5418669 m!6442596))

(declare-fun m!6442598 () Bool)

(assert (=> b!5418669 m!6442598))

(declare-fun m!6442600 () Bool)

(assert (=> b!5418687 m!6442600))

(declare-fun m!6442602 () Bool)

(assert (=> b!5418695 m!6442602))

(declare-fun m!6442604 () Bool)

(assert (=> b!5418695 m!6442604))

(declare-fun m!6442606 () Bool)

(assert (=> b!5418695 m!6442606))

(declare-fun m!6442608 () Bool)

(assert (=> b!5418695 m!6442608))

(declare-fun m!6442610 () Bool)

(assert (=> b!5418695 m!6442610))

(declare-fun m!6442612 () Bool)

(assert (=> b!5418695 m!6442612))

(declare-fun m!6442614 () Bool)

(assert (=> b!5418695 m!6442614))

(declare-fun m!6442616 () Bool)

(assert (=> b!5418695 m!6442616))

(declare-fun m!6442618 () Bool)

(assert (=> b!5418695 m!6442618))

(declare-fun m!6442620 () Bool)

(assert (=> b!5418695 m!6442620))

(assert (=> b!5418695 m!6442602))

(declare-fun m!6442622 () Bool)

(assert (=> b!5418695 m!6442622))

(declare-fun m!6442624 () Bool)

(assert (=> b!5418695 m!6442624))

(declare-fun m!6442626 () Bool)

(assert (=> b!5418695 m!6442626))

(declare-fun m!6442628 () Bool)

(assert (=> b!5418695 m!6442628))

(declare-fun m!6442630 () Bool)

(assert (=> b!5418695 m!6442630))

(declare-fun m!6442632 () Bool)

(assert (=> b!5418695 m!6442632))

(declare-fun m!6442634 () Bool)

(assert (=> b!5418695 m!6442634))

(declare-fun m!6442636 () Bool)

(assert (=> b!5418695 m!6442636))

(declare-fun m!6442638 () Bool)

(assert (=> b!5418695 m!6442638))

(declare-fun m!6442640 () Bool)

(assert (=> b!5418695 m!6442640))

(declare-fun m!6442642 () Bool)

(assert (=> b!5418695 m!6442642))

(declare-fun m!6442644 () Bool)

(assert (=> b!5418695 m!6442644))

(declare-fun m!6442646 () Bool)

(assert (=> b!5418695 m!6442646))

(assert (=> b!5418695 m!6442614))

(declare-fun m!6442648 () Bool)

(assert (=> b!5418672 m!6442648))

(declare-fun m!6442650 () Bool)

(assert (=> b!5418706 m!6442650))

(declare-fun m!6442652 () Bool)

(assert (=> b!5418681 m!6442652))

(declare-fun m!6442654 () Bool)

(assert (=> b!5418685 m!6442654))

(declare-fun m!6442656 () Bool)

(assert (=> b!5418685 m!6442656))

(declare-fun m!6442658 () Bool)

(assert (=> b!5418685 m!6442658))

(declare-fun m!6442660 () Bool)

(assert (=> b!5418685 m!6442660))

(declare-fun m!6442662 () Bool)

(assert (=> b!5418685 m!6442662))

(declare-fun m!6442664 () Bool)

(assert (=> b!5418685 m!6442664))

(declare-fun m!6442666 () Bool)

(assert (=> b!5418685 m!6442666))

(declare-fun m!6442668 () Bool)

(assert (=> b!5418683 m!6442668))

(declare-fun m!6442670 () Bool)

(assert (=> b!5418701 m!6442670))

(declare-fun m!6442672 () Bool)

(assert (=> b!5418707 m!6442672))

(declare-fun m!6442674 () Bool)

(assert (=> b!5418707 m!6442674))

(declare-fun m!6442676 () Bool)

(assert (=> b!5418707 m!6442676))

(declare-fun m!6442678 () Bool)

(assert (=> b!5418673 m!6442678))

(declare-fun m!6442680 () Bool)

(assert (=> b!5418689 m!6442680))

(declare-fun m!6442682 () Bool)

(assert (=> b!5418689 m!6442682))

(declare-fun m!6442684 () Bool)

(assert (=> b!5418689 m!6442684))

(declare-fun m!6442686 () Bool)

(assert (=> b!5418689 m!6442686))

(declare-fun m!6442688 () Bool)

(assert (=> b!5418689 m!6442688))

(declare-fun m!6442690 () Bool)

(assert (=> b!5418677 m!6442690))

(assert (=> b!5418677 m!6442690))

(declare-fun m!6442692 () Bool)

(assert (=> b!5418677 m!6442692))

(declare-fun m!6442694 () Bool)

(assert (=> b!5418677 m!6442694))

(declare-fun m!6442696 () Bool)

(assert (=> b!5418677 m!6442696))

(declare-fun m!6442698 () Bool)

(assert (=> b!5418677 m!6442698))

(assert (=> b!5418677 m!6442692))

(declare-fun m!6442700 () Bool)

(assert (=> b!5418677 m!6442700))

(declare-fun m!6442702 () Bool)

(assert (=> b!5418703 m!6442702))

(declare-fun m!6442704 () Bool)

(assert (=> b!5418682 m!6442704))

(declare-fun m!6442706 () Bool)

(assert (=> b!5418682 m!6442706))

(declare-fun m!6442708 () Bool)

(assert (=> b!5418682 m!6442708))

(declare-fun m!6442710 () Bool)

(assert (=> b!5418682 m!6442710))

(declare-fun m!6442712 () Bool)

(assert (=> b!5418682 m!6442712))

(declare-fun m!6442714 () Bool)

(assert (=> b!5418682 m!6442714))

(declare-fun m!6442716 () Bool)

(assert (=> b!5418682 m!6442716))

(declare-fun m!6442718 () Bool)

(assert (=> b!5418682 m!6442718))

(assert (=> b!5418682 m!6442716))

(declare-fun m!6442720 () Bool)

(assert (=> b!5418682 m!6442720))

(assert (=> b!5418682 m!6442716))

(declare-fun m!6442722 () Bool)

(assert (=> b!5418682 m!6442722))

(declare-fun m!6442724 () Bool)

(assert (=> b!5418682 m!6442724))

(declare-fun m!6442726 () Bool)

(assert (=> b!5418682 m!6442726))

(declare-fun m!6442728 () Bool)

(assert (=> b!5418682 m!6442728))

(declare-fun m!6442730 () Bool)

(assert (=> b!5418682 m!6442730))

(assert (=> b!5418682 m!6442710))

(declare-fun m!6442732 () Bool)

(assert (=> b!5418682 m!6442732))

(declare-fun m!6442734 () Bool)

(assert (=> b!5418682 m!6442734))

(declare-fun m!6442736 () Bool)

(assert (=> b!5418682 m!6442736))

(assert (=> b!5418682 m!6442726))

(declare-fun m!6442738 () Bool)

(assert (=> b!5418709 m!6442738))

(declare-fun m!6442740 () Bool)

(assert (=> b!5418691 m!6442740))

(declare-fun m!6442742 () Bool)

(assert (=> b!5418691 m!6442742))

(declare-fun m!6442744 () Bool)

(assert (=> b!5418691 m!6442744))

(declare-fun m!6442746 () Bool)

(assert (=> b!5418693 m!6442746))

(declare-fun m!6442748 () Bool)

(assert (=> start!568930 m!6442748))

(declare-fun m!6442750 () Bool)

(assert (=> b!5418704 m!6442750))

(assert (=> b!5418668 m!6442742))

(declare-fun m!6442752 () Bool)

(assert (=> b!5418711 m!6442752))

(assert (=> b!5418711 m!6442602))

(declare-fun m!6442754 () Bool)

(assert (=> b!5418711 m!6442754))

(declare-fun m!6442756 () Bool)

(assert (=> b!5418711 m!6442756))

(assert (=> b!5418711 m!6442644))

(assert (=> b!5418711 m!6442604))

(declare-fun m!6442758 () Bool)

(assert (=> b!5418676 m!6442758))

(declare-fun m!6442760 () Bool)

(assert (=> setNonEmpty!35309 m!6442760))

(declare-fun m!6442762 () Bool)

(assert (=> b!5418705 m!6442762))

(declare-fun m!6442764 () Bool)

(assert (=> b!5418705 m!6442764))

(declare-fun m!6442766 () Bool)

(assert (=> b!5418679 m!6442766))

(assert (=> b!5418679 m!6442766))

(declare-fun m!6442768 () Bool)

(assert (=> b!5418679 m!6442768))

(declare-fun m!6442770 () Bool)

(assert (=> b!5418698 m!6442770))

(declare-fun m!6442772 () Bool)

(assert (=> b!5418698 m!6442772))

(declare-fun m!6442774 () Bool)

(assert (=> b!5418698 m!6442774))

(declare-fun m!6442776 () Bool)

(assert (=> b!5418698 m!6442776))

(declare-fun m!6442778 () Bool)

(assert (=> b!5418698 m!6442778))

(declare-fun m!6442780 () Bool)

(assert (=> b!5418696 m!6442780))

(declare-fun m!6442782 () Bool)

(assert (=> b!5418712 m!6442782))

(declare-fun m!6442784 () Bool)

(assert (=> b!5418712 m!6442784))

(declare-fun m!6442786 () Bool)

(assert (=> b!5418712 m!6442786))

(assert (=> b!5418675 m!6442652))

(declare-fun m!6442788 () Bool)

(assert (=> b!5418699 m!6442788))

(declare-fun m!6442790 () Bool)

(assert (=> b!5418700 m!6442790))

(check-sat (not b!5418696) (not b!5418695) (not b!5418711) (not b!5418704) (not b!5418709) (not start!568930) (not b!5418668) (not b!5418699) (not b!5418674) (not b!5418679) (not b!5418693) (not b!5418705) (not b!5418689) (not b!5418706) (not b!5418683) (not b!5418681) (not b!5418703) (not b!5418675) (not b!5418707) (not b!5418698) (not b!5418712) (not b!5418702) (not b!5418672) (not b!5418701) (not b!5418691) (not b!5418687) (not b!5418671) (not b!5418692) (not b!5418700) (not b!5418677) (not b!5418682) (not b!5418673) (not setNonEmpty!35309) (not b!5418686) (not b!5418694) (not b!5418685) (not b!5418669) tp_is_empty!39655 (not b!5418676))
(check-sat)
(get-model)

(declare-fun d!1728878 () Bool)

(declare-fun c!944991 () Bool)

(declare-fun isEmpty!33780 (List!61902) Bool)

(assert (=> d!1728878 (= c!944991 (isEmpty!33780 s!2326))))

(declare-fun e!3358570 () Bool)

(assert (=> d!1728878 (= (matchZipper!1445 z!1189 s!2326) e!3358570)))

(declare-fun b!5418878 () Bool)

(declare-fun nullableZipper!1453 ((InoxSet Context!9170)) Bool)

(assert (=> b!5418878 (= e!3358570 (nullableZipper!1453 z!1189))))

(declare-fun b!5418879 () Bool)

(declare-fun head!11624 (List!61902) C!30672)

(declare-fun tail!10721 (List!61902) List!61902)

(assert (=> b!5418879 (= e!3358570 (matchZipper!1445 (derivationStepZipper!1440 z!1189 (head!11624 s!2326)) (tail!10721 s!2326)))))

(assert (= (and d!1728878 c!944991) b!5418878))

(assert (= (and d!1728878 (not c!944991)) b!5418879))

(declare-fun m!6442904 () Bool)

(assert (=> d!1728878 m!6442904))

(declare-fun m!6442906 () Bool)

(assert (=> b!5418878 m!6442906))

(declare-fun m!6442908 () Bool)

(assert (=> b!5418879 m!6442908))

(assert (=> b!5418879 m!6442908))

(declare-fun m!6442910 () Bool)

(assert (=> b!5418879 m!6442910))

(declare-fun m!6442912 () Bool)

(assert (=> b!5418879 m!6442912))

(assert (=> b!5418879 m!6442910))

(assert (=> b!5418879 m!6442912))

(declare-fun m!6442914 () Bool)

(assert (=> b!5418879 m!6442914))

(assert (=> b!5418701 d!1728878))

(declare-fun bs!1251885 () Bool)

(declare-fun d!1728882 () Bool)

(assert (= bs!1251885 (and d!1728882 b!5418711)))

(declare-fun lambda!283605 () Int)

(assert (=> bs!1251885 (= lambda!283605 lambda!283576)))

(declare-fun b!5418908 () Bool)

(declare-fun e!3358591 () Bool)

(declare-fun e!3358590 () Bool)

(assert (=> b!5418908 (= e!3358591 e!3358590)))

(declare-fun c!945003 () Bool)

(declare-fun tail!10722 (List!61903) List!61903)

(assert (=> b!5418908 (= c!945003 (isEmpty!33777 (tail!10722 (unfocusZipperList!643 zl!343))))))

(declare-fun b!5418909 () Bool)

(declare-fun e!3358589 () Regex!15201)

(assert (=> b!5418909 (= e!3358589 (Union!15201 (h!68227 (unfocusZipperList!643 zl!343)) (generalisedUnion!1130 (t!375126 (unfocusZipperList!643 zl!343)))))))

(declare-fun b!5418910 () Bool)

(declare-fun e!3358587 () Bool)

(assert (=> b!5418910 (= e!3358587 (isEmpty!33777 (t!375126 (unfocusZipperList!643 zl!343))))))

(declare-fun b!5418912 () Bool)

(declare-fun e!3358588 () Bool)

(assert (=> b!5418912 (= e!3358588 e!3358591)))

(declare-fun c!945001 () Bool)

(assert (=> b!5418912 (= c!945001 (isEmpty!33777 (unfocusZipperList!643 zl!343)))))

(declare-fun b!5418913 () Bool)

(declare-fun lt!2209862 () Regex!15201)

(declare-fun head!11625 (List!61903) Regex!15201)

(assert (=> b!5418913 (= e!3358590 (= lt!2209862 (head!11625 (unfocusZipperList!643 zl!343))))))

(declare-fun b!5418914 () Bool)

(declare-fun isUnion!426 (Regex!15201) Bool)

(assert (=> b!5418914 (= e!3358590 (isUnion!426 lt!2209862))))

(declare-fun b!5418915 () Bool)

(assert (=> b!5418915 (= e!3358589 EmptyLang!15201)))

(assert (=> d!1728882 e!3358588))

(declare-fun res!2305341 () Bool)

(assert (=> d!1728882 (=> (not res!2305341) (not e!3358588))))

(assert (=> d!1728882 (= res!2305341 (validRegex!6937 lt!2209862))))

(declare-fun e!3358592 () Regex!15201)

(assert (=> d!1728882 (= lt!2209862 e!3358592)))

(declare-fun c!945002 () Bool)

(assert (=> d!1728882 (= c!945002 e!3358587)))

(declare-fun res!2305340 () Bool)

(assert (=> d!1728882 (=> (not res!2305340) (not e!3358587))))

(assert (=> d!1728882 (= res!2305340 ((_ is Cons!61779) (unfocusZipperList!643 zl!343)))))

(declare-fun forall!14546 (List!61903 Int) Bool)

(assert (=> d!1728882 (forall!14546 (unfocusZipperList!643 zl!343) lambda!283605)))

(assert (=> d!1728882 (= (generalisedUnion!1130 (unfocusZipperList!643 zl!343)) lt!2209862)))

(declare-fun b!5418911 () Bool)

(assert (=> b!5418911 (= e!3358592 (h!68227 (unfocusZipperList!643 zl!343)))))

(declare-fun b!5418916 () Bool)

(assert (=> b!5418916 (= e!3358592 e!3358589)))

(declare-fun c!945000 () Bool)

(assert (=> b!5418916 (= c!945000 ((_ is Cons!61779) (unfocusZipperList!643 zl!343)))))

(declare-fun b!5418917 () Bool)

(declare-fun isEmptyLang!994 (Regex!15201) Bool)

(assert (=> b!5418917 (= e!3358591 (isEmptyLang!994 lt!2209862))))

(assert (= (and d!1728882 res!2305340) b!5418910))

(assert (= (and d!1728882 c!945002) b!5418911))

(assert (= (and d!1728882 (not c!945002)) b!5418916))

(assert (= (and b!5418916 c!945000) b!5418909))

(assert (= (and b!5418916 (not c!945000)) b!5418915))

(assert (= (and d!1728882 res!2305341) b!5418912))

(assert (= (and b!5418912 c!945001) b!5418917))

(assert (= (and b!5418912 (not c!945001)) b!5418908))

(assert (= (and b!5418908 c!945003) b!5418913))

(assert (= (and b!5418908 (not c!945003)) b!5418914))

(declare-fun m!6442926 () Bool)

(assert (=> b!5418909 m!6442926))

(assert (=> b!5418912 m!6442766))

(declare-fun m!6442928 () Bool)

(assert (=> b!5418912 m!6442928))

(declare-fun m!6442930 () Bool)

(assert (=> d!1728882 m!6442930))

(assert (=> d!1728882 m!6442766))

(declare-fun m!6442932 () Bool)

(assert (=> d!1728882 m!6442932))

(assert (=> b!5418913 m!6442766))

(declare-fun m!6442934 () Bool)

(assert (=> b!5418913 m!6442934))

(assert (=> b!5418908 m!6442766))

(declare-fun m!6442936 () Bool)

(assert (=> b!5418908 m!6442936))

(assert (=> b!5418908 m!6442936))

(declare-fun m!6442938 () Bool)

(assert (=> b!5418908 m!6442938))

(declare-fun m!6442940 () Bool)

(assert (=> b!5418917 m!6442940))

(declare-fun m!6442942 () Bool)

(assert (=> b!5418910 m!6442942))

(declare-fun m!6442944 () Bool)

(assert (=> b!5418914 m!6442944))

(assert (=> b!5418679 d!1728882))

(declare-fun bs!1251887 () Bool)

(declare-fun d!1728888 () Bool)

(assert (= bs!1251887 (and d!1728888 b!5418711)))

(declare-fun lambda!283611 () Int)

(assert (=> bs!1251887 (= lambda!283611 lambda!283576)))

(declare-fun bs!1251888 () Bool)

(assert (= bs!1251888 (and d!1728888 d!1728882)))

(assert (=> bs!1251888 (= lambda!283611 lambda!283605)))

(declare-fun lt!2209868 () List!61903)

(assert (=> d!1728888 (forall!14546 lt!2209868 lambda!283611)))

(declare-fun e!3358613 () List!61903)

(assert (=> d!1728888 (= lt!2209868 e!3358613)))

(declare-fun c!945018 () Bool)

(assert (=> d!1728888 (= c!945018 ((_ is Cons!61780) zl!343))))

(assert (=> d!1728888 (= (unfocusZipperList!643 zl!343) lt!2209868)))

(declare-fun b!5418952 () Bool)

(assert (=> b!5418952 (= e!3358613 (Cons!61779 (generalisedConcat!870 (exprs!5085 (h!68228 zl!343))) (unfocusZipperList!643 (t!375127 zl!343))))))

(declare-fun b!5418953 () Bool)

(assert (=> b!5418953 (= e!3358613 Nil!61779)))

(assert (= (and d!1728888 c!945018) b!5418952))

(assert (= (and d!1728888 (not c!945018)) b!5418953))

(declare-fun m!6442966 () Bool)

(assert (=> d!1728888 m!6442966))

(assert (=> b!5418952 m!6442650))

(declare-fun m!6442968 () Bool)

(assert (=> b!5418952 m!6442968))

(assert (=> b!5418679 d!1728888))

(declare-fun bs!1251889 () Bool)

(declare-fun d!1728892 () Bool)

(assert (= bs!1251889 (and d!1728892 b!5418711)))

(declare-fun lambda!283616 () Int)

(assert (=> bs!1251889 (= lambda!283616 lambda!283576)))

(declare-fun bs!1251890 () Bool)

(assert (= bs!1251890 (and d!1728892 d!1728882)))

(assert (=> bs!1251890 (= lambda!283616 lambda!283605)))

(declare-fun bs!1251891 () Bool)

(assert (= bs!1251891 (and d!1728892 d!1728888)))

(assert (=> bs!1251891 (= lambda!283616 lambda!283611)))

(assert (=> d!1728892 (= (inv!81249 (h!68228 zl!343)) (forall!14546 (exprs!5085 (h!68228 zl!343)) lambda!283616))))

(declare-fun bs!1251892 () Bool)

(assert (= bs!1251892 d!1728892))

(declare-fun m!6442970 () Bool)

(assert (=> bs!1251892 m!6442970))

(assert (=> b!5418700 d!1728892))

(declare-fun d!1728894 () Bool)

(declare-fun c!945021 () Bool)

(assert (=> d!1728894 (= c!945021 (isEmpty!33780 (_1!35703 lt!2209778)))))

(declare-fun e!3358616 () Bool)

(assert (=> d!1728894 (= (matchZipper!1445 lt!2209787 (_1!35703 lt!2209778)) e!3358616)))

(declare-fun b!5418958 () Bool)

(assert (=> b!5418958 (= e!3358616 (nullableZipper!1453 lt!2209787))))

(declare-fun b!5418959 () Bool)

(assert (=> b!5418959 (= e!3358616 (matchZipper!1445 (derivationStepZipper!1440 lt!2209787 (head!11624 (_1!35703 lt!2209778))) (tail!10721 (_1!35703 lt!2209778))))))

(assert (= (and d!1728894 c!945021) b!5418958))

(assert (= (and d!1728894 (not c!945021)) b!5418959))

(declare-fun m!6442972 () Bool)

(assert (=> d!1728894 m!6442972))

(declare-fun m!6442974 () Bool)

(assert (=> b!5418958 m!6442974))

(declare-fun m!6442976 () Bool)

(assert (=> b!5418959 m!6442976))

(assert (=> b!5418959 m!6442976))

(declare-fun m!6442978 () Bool)

(assert (=> b!5418959 m!6442978))

(declare-fun m!6442980 () Bool)

(assert (=> b!5418959 m!6442980))

(assert (=> b!5418959 m!6442978))

(assert (=> b!5418959 m!6442980))

(declare-fun m!6442982 () Bool)

(assert (=> b!5418959 m!6442982))

(assert (=> b!5418699 d!1728894))

(declare-fun b!5419003 () Bool)

(declare-fun res!2305364 () Bool)

(declare-fun e!3358644 () Bool)

(assert (=> b!5419003 (=> (not res!2305364) (not e!3358644))))

(declare-fun lt!2209882 () Option!15312)

(assert (=> b!5419003 (= res!2305364 (matchR!7386 (regTwo!30914 r!7292) (_2!35703 (get!21304 lt!2209882))))))

(declare-fun b!5419004 () Bool)

(assert (=> b!5419004 (= e!3358644 (= (++!13575 (_1!35703 (get!21304 lt!2209882)) (_2!35703 (get!21304 lt!2209882))) s!2326))))

(declare-fun b!5419005 () Bool)

(declare-fun e!3358641 () Option!15312)

(declare-fun e!3358645 () Option!15312)

(assert (=> b!5419005 (= e!3358641 e!3358645)))

(declare-fun c!945037 () Bool)

(assert (=> b!5419005 (= c!945037 ((_ is Nil!61778) s!2326))))

(declare-fun b!5419006 () Bool)

(assert (=> b!5419006 (= e!3358641 (Some!15311 (tuple2!64801 Nil!61778 s!2326)))))

(declare-fun b!5419007 () Bool)

(declare-fun e!3358642 () Bool)

(assert (=> b!5419007 (= e!3358642 (matchR!7386 (regTwo!30914 r!7292) s!2326))))

(declare-fun b!5419008 () Bool)

(declare-fun res!2305365 () Bool)

(assert (=> b!5419008 (=> (not res!2305365) (not e!3358644))))

(assert (=> b!5419008 (= res!2305365 (matchR!7386 (regOne!30914 r!7292) (_1!35703 (get!21304 lt!2209882))))))

(declare-fun d!1728896 () Bool)

(declare-fun e!3358643 () Bool)

(assert (=> d!1728896 e!3358643))

(declare-fun res!2305362 () Bool)

(assert (=> d!1728896 (=> res!2305362 e!3358643)))

(assert (=> d!1728896 (= res!2305362 e!3358644)))

(declare-fun res!2305361 () Bool)

(assert (=> d!1728896 (=> (not res!2305361) (not e!3358644))))

(assert (=> d!1728896 (= res!2305361 (isDefined!12015 lt!2209882))))

(assert (=> d!1728896 (= lt!2209882 e!3358641)))

(declare-fun c!945038 () Bool)

(assert (=> d!1728896 (= c!945038 e!3358642)))

(declare-fun res!2305363 () Bool)

(assert (=> d!1728896 (=> (not res!2305363) (not e!3358642))))

(assert (=> d!1728896 (= res!2305363 (matchR!7386 (regOne!30914 r!7292) Nil!61778))))

(assert (=> d!1728896 (validRegex!6937 (regOne!30914 r!7292))))

(assert (=> d!1728896 (= (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326) lt!2209882)))

(declare-fun b!5419009 () Bool)

(assert (=> b!5419009 (= e!3358645 None!15311)))

(declare-fun b!5419010 () Bool)

(assert (=> b!5419010 (= e!3358643 (not (isDefined!12015 lt!2209882)))))

(declare-fun b!5419011 () Bool)

(declare-fun lt!2209883 () Unit!154326)

(declare-fun lt!2209881 () Unit!154326)

(assert (=> b!5419011 (= lt!2209883 lt!2209881)))

(assert (=> b!5419011 (= (++!13575 (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1849 (List!61902 C!30672 List!61902 List!61902) Unit!154326)

(assert (=> b!5419011 (= lt!2209881 (lemmaMoveElementToOtherListKeepsConcatEq!1849 Nil!61778 (h!68226 s!2326) (t!375125 s!2326) s!2326))))

(assert (=> b!5419011 (= e!3358645 (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326) s!2326))))

(assert (= (and d!1728896 res!2305363) b!5419007))

(assert (= (and d!1728896 c!945038) b!5419006))

(assert (= (and d!1728896 (not c!945038)) b!5419005))

(assert (= (and b!5419005 c!945037) b!5419009))

(assert (= (and b!5419005 (not c!945037)) b!5419011))

(assert (= (and d!1728896 res!2305361) b!5419008))

(assert (= (and b!5419008 res!2305365) b!5419003))

(assert (= (and b!5419003 res!2305364) b!5419004))

(assert (= (and d!1728896 (not res!2305362)) b!5419010))

(declare-fun m!6443036 () Bool)

(assert (=> b!5419011 m!6443036))

(assert (=> b!5419011 m!6443036))

(declare-fun m!6443040 () Bool)

(assert (=> b!5419011 m!6443040))

(declare-fun m!6443044 () Bool)

(assert (=> b!5419011 m!6443044))

(assert (=> b!5419011 m!6443036))

(declare-fun m!6443048 () Bool)

(assert (=> b!5419011 m!6443048))

(declare-fun m!6443050 () Bool)

(assert (=> b!5419004 m!6443050))

(declare-fun m!6443052 () Bool)

(assert (=> b!5419004 m!6443052))

(assert (=> b!5419003 m!6443050))

(declare-fun m!6443054 () Bool)

(assert (=> b!5419003 m!6443054))

(assert (=> b!5419008 m!6443050))

(declare-fun m!6443056 () Bool)

(assert (=> b!5419008 m!6443056))

(declare-fun m!6443058 () Bool)

(assert (=> d!1728896 m!6443058))

(declare-fun m!6443060 () Bool)

(assert (=> d!1728896 m!6443060))

(declare-fun m!6443062 () Bool)

(assert (=> d!1728896 m!6443062))

(declare-fun m!6443064 () Bool)

(assert (=> b!5419007 m!6443064))

(assert (=> b!5419010 m!6443058))

(assert (=> b!5418677 d!1728896))

(declare-fun d!1728916 () Bool)

(declare-fun choose!41025 (Int) Bool)

(assert (=> d!1728916 (= (Exists!2382 lambda!283573) (choose!41025 lambda!283573))))

(declare-fun bs!1251918 () Bool)

(assert (= bs!1251918 d!1728916))

(declare-fun m!6443068 () Bool)

(assert (=> bs!1251918 m!6443068))

(assert (=> b!5418677 d!1728916))

(declare-fun d!1728918 () Bool)

(assert (=> d!1728918 (= (Exists!2382 lambda!283572) (choose!41025 lambda!283572))))

(declare-fun bs!1251919 () Bool)

(assert (= bs!1251919 d!1728918))

(declare-fun m!6443074 () Bool)

(assert (=> bs!1251919 m!6443074))

(assert (=> b!5418677 d!1728918))

(declare-fun bs!1251921 () Bool)

(declare-fun d!1728920 () Bool)

(assert (= bs!1251921 (and d!1728920 b!5418682)))

(declare-fun lambda!283625 () Int)

(assert (=> bs!1251921 (not (= lambda!283625 lambda!283580))))

(assert (=> bs!1251921 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 r!7292) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283625 lambda!283579))))

(assert (=> bs!1251921 (not (= lambda!283625 lambda!283581))))

(declare-fun bs!1251922 () Bool)

(assert (= bs!1251922 (and d!1728920 b!5418695)))

(assert (=> bs!1251922 (= (= (regOne!30914 r!7292) lt!2209814) (= lambda!283625 lambda!283577))))

(declare-fun bs!1251923 () Bool)

(assert (= bs!1251923 (and d!1728920 b!5418677)))

(assert (=> bs!1251923 (= lambda!283625 lambda!283572)))

(assert (=> bs!1251922 (not (= lambda!283625 lambda!283578))))

(assert (=> bs!1251923 (not (= lambda!283625 lambda!283573))))

(assert (=> d!1728920 true))

(assert (=> d!1728920 true))

(assert (=> d!1728920 true))

(assert (=> d!1728920 (= (isDefined!12015 (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326)) (Exists!2382 lambda!283625))))

(declare-fun lt!2209888 () Unit!154326)

(declare-fun choose!41026 (Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> d!1728920 (= lt!2209888 (choose!41026 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326))))

(assert (=> d!1728920 (validRegex!6937 (regOne!30914 r!7292))))

(assert (=> d!1728920 (= (lemmaFindConcatSeparationEquivalentToExists!1490 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326) lt!2209888)))

(declare-fun bs!1251924 () Bool)

(assert (= bs!1251924 d!1728920))

(assert (=> bs!1251924 m!6442692))

(assert (=> bs!1251924 m!6442694))

(declare-fun m!6443086 () Bool)

(assert (=> bs!1251924 m!6443086))

(assert (=> bs!1251924 m!6443062))

(assert (=> bs!1251924 m!6442692))

(declare-fun m!6443088 () Bool)

(assert (=> bs!1251924 m!6443088))

(assert (=> b!5418677 d!1728920))

(declare-fun bs!1251946 () Bool)

(declare-fun d!1728930 () Bool)

(assert (= bs!1251946 (and d!1728930 b!5418682)))

(declare-fun lambda!283632 () Int)

(assert (=> bs!1251946 (not (= lambda!283632 lambda!283580))))

(assert (=> bs!1251946 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 r!7292) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283632 lambda!283579))))

(assert (=> bs!1251946 (not (= lambda!283632 lambda!283581))))

(declare-fun bs!1251947 () Bool)

(assert (= bs!1251947 (and d!1728930 d!1728920)))

(assert (=> bs!1251947 (= lambda!283632 lambda!283625)))

(declare-fun bs!1251948 () Bool)

(assert (= bs!1251948 (and d!1728930 b!5418695)))

(assert (=> bs!1251948 (= (= (regOne!30914 r!7292) lt!2209814) (= lambda!283632 lambda!283577))))

(declare-fun bs!1251949 () Bool)

(assert (= bs!1251949 (and d!1728930 b!5418677)))

(assert (=> bs!1251949 (= lambda!283632 lambda!283572)))

(assert (=> bs!1251948 (not (= lambda!283632 lambda!283578))))

(assert (=> bs!1251949 (not (= lambda!283632 lambda!283573))))

(assert (=> d!1728930 true))

(assert (=> d!1728930 true))

(assert (=> d!1728930 true))

(declare-fun bs!1251951 () Bool)

(assert (= bs!1251951 d!1728930))

(declare-fun lambda!283633 () Int)

(assert (=> bs!1251951 (not (= lambda!283633 lambda!283632))))

(assert (=> bs!1251946 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 r!7292) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283633 lambda!283580))))

(assert (=> bs!1251946 (not (= lambda!283633 lambda!283579))))

(assert (=> bs!1251946 (not (= lambda!283633 lambda!283581))))

(assert (=> bs!1251947 (not (= lambda!283633 lambda!283625))))

(assert (=> bs!1251948 (not (= lambda!283633 lambda!283577))))

(assert (=> bs!1251949 (not (= lambda!283633 lambda!283572))))

(assert (=> bs!1251948 (= (= (regOne!30914 r!7292) lt!2209814) (= lambda!283633 lambda!283578))))

(assert (=> bs!1251949 (= lambda!283633 lambda!283573)))

(assert (=> d!1728930 true))

(assert (=> d!1728930 true))

(assert (=> d!1728930 true))

(assert (=> d!1728930 (= (Exists!2382 lambda!283632) (Exists!2382 lambda!283633))))

(declare-fun lt!2209894 () Unit!154326)

(declare-fun choose!41027 (Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> d!1728930 (= lt!2209894 (choose!41027 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326))))

(assert (=> d!1728930 (validRegex!6937 (regOne!30914 r!7292))))

(assert (=> d!1728930 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 (regOne!30914 r!7292) (regTwo!30914 r!7292) s!2326) lt!2209894)))

(declare-fun m!6443138 () Bool)

(assert (=> bs!1251951 m!6443138))

(declare-fun m!6443140 () Bool)

(assert (=> bs!1251951 m!6443140))

(declare-fun m!6443142 () Bool)

(assert (=> bs!1251951 m!6443142))

(assert (=> bs!1251951 m!6443062))

(assert (=> b!5418677 d!1728930))

(declare-fun d!1728950 () Bool)

(declare-fun isEmpty!33781 (Option!15312) Bool)

(assert (=> d!1728950 (= (isDefined!12015 (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326)) (not (isEmpty!33781 (findConcatSeparation!1726 (regOne!30914 r!7292) (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326))))))

(declare-fun bs!1251953 () Bool)

(assert (= bs!1251953 d!1728950))

(assert (=> bs!1251953 m!6442692))

(declare-fun m!6443144 () Bool)

(assert (=> bs!1251953 m!6443144))

(assert (=> b!5418677 d!1728950))

(declare-fun d!1728952 () Bool)

(declare-fun choose!41028 ((InoxSet Context!9170) Int) (InoxSet Context!9170))

(assert (=> d!1728952 (= (flatMap!928 lt!2209769 lambda!283574) (choose!41028 lt!2209769 lambda!283574))))

(declare-fun bs!1251954 () Bool)

(assert (= bs!1251954 d!1728952))

(declare-fun m!6443146 () Bool)

(assert (=> bs!1251954 m!6443146))

(assert (=> b!5418698 d!1728952))

(declare-fun b!5419131 () Bool)

(declare-fun e!3358718 () (InoxSet Context!9170))

(declare-fun e!3358719 () (InoxSet Context!9170))

(assert (=> b!5419131 (= e!3358718 e!3358719)))

(declare-fun c!945073 () Bool)

(assert (=> b!5419131 (= c!945073 ((_ is Cons!61779) (exprs!5085 lt!2209825)))))

(declare-fun bm!387826 () Bool)

(declare-fun call!387833 () (InoxSet Context!9170))

(assert (=> bm!387826 (= call!387833 (derivationStepZipperDown!649 (h!68227 (exprs!5085 lt!2209825)) (Context!9171 (t!375126 (exprs!5085 lt!2209825))) (h!68226 s!2326)))))

(declare-fun d!1728954 () Bool)

(declare-fun c!945072 () Bool)

(declare-fun e!3358720 () Bool)

(assert (=> d!1728954 (= c!945072 e!3358720)))

(declare-fun res!2305419 () Bool)

(assert (=> d!1728954 (=> (not res!2305419) (not e!3358720))))

(assert (=> d!1728954 (= res!2305419 ((_ is Cons!61779) (exprs!5085 lt!2209825)))))

(assert (=> d!1728954 (= (derivationStepZipperUp!573 lt!2209825 (h!68226 s!2326)) e!3358718)))

(declare-fun b!5419132 () Bool)

(assert (=> b!5419132 (= e!3358720 (nullable!5370 (h!68227 (exprs!5085 lt!2209825))))))

(declare-fun b!5419133 () Bool)

(assert (=> b!5419133 (= e!3358719 call!387833)))

(declare-fun b!5419134 () Bool)

(assert (=> b!5419134 (= e!3358719 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419135 () Bool)

(assert (=> b!5419135 (= e!3358718 ((_ map or) call!387833 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 lt!2209825))) (h!68226 s!2326))))))

(assert (= (and d!1728954 res!2305419) b!5419132))

(assert (= (and d!1728954 c!945072) b!5419135))

(assert (= (and d!1728954 (not c!945072)) b!5419131))

(assert (= (and b!5419131 c!945073) b!5419133))

(assert (= (and b!5419131 (not c!945073)) b!5419134))

(assert (= (or b!5419135 b!5419133) bm!387826))

(declare-fun m!6443148 () Bool)

(assert (=> bm!387826 m!6443148))

(declare-fun m!6443150 () Bool)

(assert (=> b!5419132 m!6443150))

(declare-fun m!6443152 () Bool)

(assert (=> b!5419135 m!6443152))

(assert (=> b!5418698 d!1728954))

(declare-fun d!1728956 () Bool)

(declare-fun dynLambda!24345 (Int Context!9170) (InoxSet Context!9170))

(assert (=> d!1728956 (= (flatMap!928 lt!2209769 lambda!283574) (dynLambda!24345 lambda!283574 lt!2209825))))

(declare-fun lt!2209900 () Unit!154326)

(declare-fun choose!41029 ((InoxSet Context!9170) Context!9170 Int) Unit!154326)

(assert (=> d!1728956 (= lt!2209900 (choose!41029 lt!2209769 lt!2209825 lambda!283574))))

(assert (=> d!1728956 (= lt!2209769 (store ((as const (Array Context!9170 Bool)) false) lt!2209825 true))))

(assert (=> d!1728956 (= (lemmaFlatMapOnSingletonSet!460 lt!2209769 lt!2209825 lambda!283574) lt!2209900)))

(declare-fun b_lambda!206869 () Bool)

(assert (=> (not b_lambda!206869) (not d!1728956)))

(declare-fun bs!1251955 () Bool)

(assert (= bs!1251955 d!1728956))

(assert (=> bs!1251955 m!6442772))

(declare-fun m!6443154 () Bool)

(assert (=> bs!1251955 m!6443154))

(declare-fun m!6443156 () Bool)

(assert (=> bs!1251955 m!6443156))

(assert (=> bs!1251955 m!6442776))

(assert (=> b!5418698 d!1728956))

(declare-fun bs!1251956 () Bool)

(declare-fun d!1728958 () Bool)

(assert (= bs!1251956 (and d!1728958 b!5418685)))

(declare-fun lambda!283636 () Int)

(assert (=> bs!1251956 (= lambda!283636 lambda!283574)))

(assert (=> d!1728958 true))

(assert (=> d!1728958 (= (derivationStepZipper!1440 lt!2209769 (h!68226 s!2326)) (flatMap!928 lt!2209769 lambda!283636))))

(declare-fun bs!1251957 () Bool)

(assert (= bs!1251957 d!1728958))

(declare-fun m!6443158 () Bool)

(assert (=> bs!1251957 m!6443158))

(assert (=> b!5418698 d!1728958))

(declare-fun d!1728960 () Bool)

(declare-fun lt!2209903 () Regex!15201)

(assert (=> d!1728960 (validRegex!6937 lt!2209903)))

(assert (=> d!1728960 (= lt!2209903 (generalisedUnion!1130 (unfocusZipperList!643 lt!2209784)))))

(assert (=> d!1728960 (= (unfocusZipper!943 lt!2209784) lt!2209903)))

(declare-fun bs!1251963 () Bool)

(assert (= bs!1251963 d!1728960))

(declare-fun m!6443176 () Bool)

(assert (=> bs!1251963 m!6443176))

(declare-fun m!6443178 () Bool)

(assert (=> bs!1251963 m!6443178))

(assert (=> bs!1251963 m!6443178))

(declare-fun m!6443180 () Bool)

(assert (=> bs!1251963 m!6443180))

(assert (=> b!5418676 d!1728960))

(declare-fun bs!1251964 () Bool)

(declare-fun d!1728968 () Bool)

(assert (= bs!1251964 (and d!1728968 b!5418711)))

(declare-fun lambda!283638 () Int)

(assert (=> bs!1251964 (= lambda!283638 lambda!283576)))

(declare-fun bs!1251965 () Bool)

(assert (= bs!1251965 (and d!1728968 d!1728882)))

(assert (=> bs!1251965 (= lambda!283638 lambda!283605)))

(declare-fun bs!1251966 () Bool)

(assert (= bs!1251966 (and d!1728968 d!1728888)))

(assert (=> bs!1251966 (= lambda!283638 lambda!283611)))

(declare-fun bs!1251967 () Bool)

(assert (= bs!1251967 (and d!1728968 d!1728892)))

(assert (=> bs!1251967 (= lambda!283638 lambda!283616)))

(assert (=> d!1728968 (= (inv!81249 setElem!35309) (forall!14546 (exprs!5085 setElem!35309) lambda!283638))))

(declare-fun bs!1251968 () Bool)

(assert (= bs!1251968 d!1728968))

(declare-fun m!6443182 () Bool)

(assert (=> bs!1251968 m!6443182))

(assert (=> setNonEmpty!35309 d!1728968))

(declare-fun d!1728970 () Bool)

(declare-fun e!3358730 () Bool)

(assert (=> d!1728970 e!3358730))

(declare-fun res!2305423 () Bool)

(assert (=> d!1728970 (=> (not res!2305423) (not e!3358730))))

(declare-fun lt!2209906 () List!61904)

(declare-fun noDuplicate!1403 (List!61904) Bool)

(assert (=> d!1728970 (= res!2305423 (noDuplicate!1403 lt!2209906))))

(declare-fun choose!41030 ((InoxSet Context!9170)) List!61904)

(assert (=> d!1728970 (= lt!2209906 (choose!41030 z!1189))))

(assert (=> d!1728970 (= (toList!8985 z!1189) lt!2209906)))

(declare-fun b!5419153 () Bool)

(declare-fun content!11107 (List!61904) (InoxSet Context!9170))

(assert (=> b!5419153 (= e!3358730 (= (content!11107 lt!2209906) z!1189))))

(assert (= (and d!1728970 res!2305423) b!5419153))

(declare-fun m!6443184 () Bool)

(assert (=> d!1728970 m!6443184))

(declare-fun m!6443186 () Bool)

(assert (=> d!1728970 m!6443186))

(declare-fun m!6443188 () Bool)

(assert (=> b!5419153 m!6443188))

(assert (=> b!5418696 d!1728970))

(declare-fun d!1728972 () Bool)

(declare-fun c!945082 () Bool)

(assert (=> d!1728972 (= c!945082 (isEmpty!33780 (t!375125 s!2326)))))

(declare-fun e!3358731 () Bool)

(assert (=> d!1728972 (= (matchZipper!1445 lt!2209798 (t!375125 s!2326)) e!3358731)))

(declare-fun b!5419154 () Bool)

(assert (=> b!5419154 (= e!3358731 (nullableZipper!1453 lt!2209798))))

(declare-fun b!5419155 () Bool)

(assert (=> b!5419155 (= e!3358731 (matchZipper!1445 (derivationStepZipper!1440 lt!2209798 (head!11624 (t!375125 s!2326))) (tail!10721 (t!375125 s!2326))))))

(assert (= (and d!1728972 c!945082) b!5419154))

(assert (= (and d!1728972 (not c!945082)) b!5419155))

(declare-fun m!6443190 () Bool)

(assert (=> d!1728972 m!6443190))

(declare-fun m!6443192 () Bool)

(assert (=> b!5419154 m!6443192))

(declare-fun m!6443194 () Bool)

(assert (=> b!5419155 m!6443194))

(assert (=> b!5419155 m!6443194))

(declare-fun m!6443196 () Bool)

(assert (=> b!5419155 m!6443196))

(declare-fun m!6443198 () Bool)

(assert (=> b!5419155 m!6443198))

(assert (=> b!5419155 m!6443196))

(assert (=> b!5419155 m!6443198))

(declare-fun m!6443200 () Bool)

(assert (=> b!5419155 m!6443200))

(assert (=> b!5418675 d!1728972))

(declare-fun bs!1251969 () Bool)

(declare-fun d!1728974 () Bool)

(assert (= bs!1251969 (and d!1728974 d!1728930)))

(declare-fun lambda!283639 () Int)

(assert (=> bs!1251969 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283639 lambda!283632))))

(declare-fun bs!1251970 () Bool)

(assert (= bs!1251970 (and d!1728974 b!5418682)))

(assert (=> bs!1251970 (not (= lambda!283639 lambda!283580))))

(assert (=> bs!1251969 (not (= lambda!283639 lambda!283633))))

(assert (=> bs!1251970 (= (and (= s!2326 (_1!35703 lt!2209762)) (= lt!2209814 (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283639 lambda!283579))))

(assert (=> bs!1251970 (not (= lambda!283639 lambda!283581))))

(declare-fun bs!1251971 () Bool)

(assert (= bs!1251971 (and d!1728974 d!1728920)))

(assert (=> bs!1251971 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283639 lambda!283625))))

(declare-fun bs!1251972 () Bool)

(assert (= bs!1251972 (and d!1728974 b!5418695)))

(assert (=> bs!1251972 (= lambda!283639 lambda!283577)))

(declare-fun bs!1251973 () Bool)

(assert (= bs!1251973 (and d!1728974 b!5418677)))

(assert (=> bs!1251973 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283639 lambda!283572))))

(assert (=> bs!1251972 (not (= lambda!283639 lambda!283578))))

(assert (=> bs!1251973 (not (= lambda!283639 lambda!283573))))

(assert (=> d!1728974 true))

(assert (=> d!1728974 true))

(assert (=> d!1728974 true))

(assert (=> d!1728974 (= (isDefined!12015 (findConcatSeparation!1726 lt!2209814 (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326)) (Exists!2382 lambda!283639))))

(declare-fun lt!2209907 () Unit!154326)

(assert (=> d!1728974 (= lt!2209907 (choose!41026 lt!2209814 (regTwo!30914 r!7292) s!2326))))

(assert (=> d!1728974 (validRegex!6937 lt!2209814)))

(assert (=> d!1728974 (= (lemmaFindConcatSeparationEquivalentToExists!1490 lt!2209814 (regTwo!30914 r!7292) s!2326) lt!2209907)))

(declare-fun bs!1251974 () Bool)

(assert (= bs!1251974 d!1728974))

(assert (=> bs!1251974 m!6442646))

(declare-fun m!6443202 () Bool)

(assert (=> bs!1251974 m!6443202))

(declare-fun m!6443204 () Bool)

(assert (=> bs!1251974 m!6443204))

(declare-fun m!6443206 () Bool)

(assert (=> bs!1251974 m!6443206))

(assert (=> bs!1251974 m!6442646))

(declare-fun m!6443208 () Bool)

(assert (=> bs!1251974 m!6443208))

(assert (=> b!5418695 d!1728974))

(declare-fun d!1728976 () Bool)

(assert (=> d!1728976 (= (isDefined!12015 lt!2209795) (not (isEmpty!33781 lt!2209795)))))

(declare-fun bs!1251975 () Bool)

(assert (= bs!1251975 d!1728976))

(declare-fun m!6443210 () Bool)

(assert (=> bs!1251975 m!6443210))

(assert (=> b!5418695 d!1728976))

(declare-fun d!1728978 () Bool)

(assert (=> d!1728978 (= (matchR!7386 lt!2209822 (_2!35703 lt!2209778)) (matchZipper!1445 lt!2209779 (_2!35703 lt!2209778)))))

(declare-fun lt!2209918 () Unit!154326)

(declare-fun choose!41031 ((InoxSet Context!9170) List!61904 Regex!15201 List!61902) Unit!154326)

(assert (=> d!1728978 (= lt!2209918 (choose!41031 lt!2209779 lt!2209784 lt!2209822 (_2!35703 lt!2209778)))))

(assert (=> d!1728978 (validRegex!6937 lt!2209822)))

(assert (=> d!1728978 (= (theoremZipperRegexEquiv!515 lt!2209779 lt!2209784 lt!2209822 (_2!35703 lt!2209778)) lt!2209918)))

(declare-fun bs!1251982 () Bool)

(assert (= bs!1251982 d!1728978))

(assert (=> bs!1251982 m!6442610))

(assert (=> bs!1251982 m!6442668))

(declare-fun m!6443248 () Bool)

(assert (=> bs!1251982 m!6443248))

(declare-fun m!6443250 () Bool)

(assert (=> bs!1251982 m!6443250))

(assert (=> b!5418695 d!1728978))

(declare-fun d!1728986 () Bool)

(assert (=> d!1728986 (= (Exists!2382 lambda!283578) (choose!41025 lambda!283578))))

(declare-fun bs!1251983 () Bool)

(assert (= bs!1251983 d!1728986))

(declare-fun m!6443252 () Bool)

(assert (=> bs!1251983 m!6443252))

(assert (=> b!5418695 d!1728986))

(declare-fun d!1728988 () Bool)

(assert (=> d!1728988 (= (matchR!7386 (Concat!24046 (Concat!24046 (reg!15530 (regOne!30914 r!7292)) lt!2209771) (regTwo!30914 r!7292)) s!2326) (matchR!7386 (Concat!24046 (reg!15530 (regOne!30914 r!7292)) (Concat!24046 lt!2209771 (regTwo!30914 r!7292))) s!2326))))

(declare-fun lt!2209924 () Unit!154326)

(declare-fun choose!41032 (Regex!15201 Regex!15201 Regex!15201 List!61902) Unit!154326)

(assert (=> d!1728988 (= lt!2209924 (choose!41032 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (regTwo!30914 r!7292) s!2326))))

(declare-fun e!3358752 () Bool)

(assert (=> d!1728988 e!3358752))

(declare-fun res!2305447 () Bool)

(assert (=> d!1728988 (=> (not res!2305447) (not e!3358752))))

(assert (=> d!1728988 (= res!2305447 (validRegex!6937 (reg!15530 (regOne!30914 r!7292))))))

(assert (=> d!1728988 (= (lemmaConcatAssociative!54 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (regTwo!30914 r!7292) s!2326) lt!2209924)))

(declare-fun b!5419193 () Bool)

(declare-fun res!2305448 () Bool)

(assert (=> b!5419193 (=> (not res!2305448) (not e!3358752))))

(assert (=> b!5419193 (= res!2305448 (validRegex!6937 lt!2209771))))

(declare-fun b!5419194 () Bool)

(assert (=> b!5419194 (= e!3358752 (validRegex!6937 (regTwo!30914 r!7292)))))

(assert (= (and d!1728988 res!2305447) b!5419193))

(assert (= (and b!5419193 res!2305448) b!5419194))

(declare-fun m!6443266 () Bool)

(assert (=> d!1728988 m!6443266))

(declare-fun m!6443268 () Bool)

(assert (=> d!1728988 m!6443268))

(declare-fun m!6443270 () Bool)

(assert (=> d!1728988 m!6443270))

(declare-fun m!6443272 () Bool)

(assert (=> d!1728988 m!6443272))

(assert (=> b!5419193 m!6442702))

(declare-fun m!6443274 () Bool)

(assert (=> b!5419194 m!6443274))

(assert (=> b!5418695 d!1728988))

(declare-fun b!5419237 () Bool)

(declare-fun e!3358779 () Bool)

(assert (=> b!5419237 (= e!3358779 (= (head!11624 s!2326) (c!944955 lt!2209819)))))

(declare-fun b!5419238 () Bool)

(declare-fun res!2305473 () Bool)

(declare-fun e!3358776 () Bool)

(assert (=> b!5419238 (=> res!2305473 e!3358776)))

(assert (=> b!5419238 (= res!2305473 e!3358779)))

(declare-fun res!2305474 () Bool)

(assert (=> b!5419238 (=> (not res!2305474) (not e!3358779))))

(declare-fun lt!2209933 () Bool)

(assert (=> b!5419238 (= res!2305474 lt!2209933)))

(declare-fun b!5419239 () Bool)

(declare-fun e!3358780 () Bool)

(declare-fun call!387845 () Bool)

(assert (=> b!5419239 (= e!3358780 (= lt!2209933 call!387845))))

(declare-fun b!5419240 () Bool)

(declare-fun e!3358778 () Bool)

(assert (=> b!5419240 (= e!3358776 e!3358778)))

(declare-fun res!2305480 () Bool)

(assert (=> b!5419240 (=> (not res!2305480) (not e!3358778))))

(assert (=> b!5419240 (= res!2305480 (not lt!2209933))))

(declare-fun b!5419242 () Bool)

(declare-fun e!3358774 () Bool)

(assert (=> b!5419242 (= e!3358774 (not lt!2209933))))

(declare-fun b!5419243 () Bool)

(declare-fun e!3358775 () Bool)

(declare-fun derivativeStep!4275 (Regex!15201 C!30672) Regex!15201)

(assert (=> b!5419243 (= e!3358775 (matchR!7386 (derivativeStep!4275 lt!2209819 (head!11624 s!2326)) (tail!10721 s!2326)))))

(declare-fun b!5419244 () Bool)

(declare-fun e!3358777 () Bool)

(assert (=> b!5419244 (= e!3358777 (not (= (head!11624 s!2326) (c!944955 lt!2209819))))))

(declare-fun bm!387840 () Bool)

(assert (=> bm!387840 (= call!387845 (isEmpty!33780 s!2326))))

(declare-fun b!5419241 () Bool)

(declare-fun res!2305476 () Bool)

(assert (=> b!5419241 (=> res!2305476 e!3358776)))

(assert (=> b!5419241 (= res!2305476 (not ((_ is ElementMatch!15201) lt!2209819)))))

(assert (=> b!5419241 (= e!3358774 e!3358776)))

(declare-fun d!1728994 () Bool)

(assert (=> d!1728994 e!3358780))

(declare-fun c!945101 () Bool)

(assert (=> d!1728994 (= c!945101 ((_ is EmptyExpr!15201) lt!2209819))))

(assert (=> d!1728994 (= lt!2209933 e!3358775)))

(declare-fun c!945100 () Bool)

(assert (=> d!1728994 (= c!945100 (isEmpty!33780 s!2326))))

(assert (=> d!1728994 (validRegex!6937 lt!2209819)))

(assert (=> d!1728994 (= (matchR!7386 lt!2209819 s!2326) lt!2209933)))

(declare-fun b!5419245 () Bool)

(declare-fun res!2305475 () Bool)

(assert (=> b!5419245 (=> res!2305475 e!3358777)))

(assert (=> b!5419245 (= res!2305475 (not (isEmpty!33780 (tail!10721 s!2326))))))

(declare-fun b!5419246 () Bool)

(assert (=> b!5419246 (= e!3358780 e!3358774)))

(declare-fun c!945099 () Bool)

(assert (=> b!5419246 (= c!945099 ((_ is EmptyLang!15201) lt!2209819))))

(declare-fun b!5419247 () Bool)

(declare-fun res!2305478 () Bool)

(assert (=> b!5419247 (=> (not res!2305478) (not e!3358779))))

(assert (=> b!5419247 (= res!2305478 (isEmpty!33780 (tail!10721 s!2326)))))

(declare-fun b!5419248 () Bool)

(assert (=> b!5419248 (= e!3358778 e!3358777)))

(declare-fun res!2305477 () Bool)

(assert (=> b!5419248 (=> res!2305477 e!3358777)))

(assert (=> b!5419248 (= res!2305477 call!387845)))

(declare-fun b!5419249 () Bool)

(declare-fun res!2305479 () Bool)

(assert (=> b!5419249 (=> (not res!2305479) (not e!3358779))))

(assert (=> b!5419249 (= res!2305479 (not call!387845))))

(declare-fun b!5419250 () Bool)

(assert (=> b!5419250 (= e!3358775 (nullable!5370 lt!2209819))))

(assert (= (and d!1728994 c!945100) b!5419250))

(assert (= (and d!1728994 (not c!945100)) b!5419243))

(assert (= (and d!1728994 c!945101) b!5419239))

(assert (= (and d!1728994 (not c!945101)) b!5419246))

(assert (= (and b!5419246 c!945099) b!5419242))

(assert (= (and b!5419246 (not c!945099)) b!5419241))

(assert (= (and b!5419241 (not res!2305476)) b!5419238))

(assert (= (and b!5419238 res!2305474) b!5419249))

(assert (= (and b!5419249 res!2305479) b!5419247))

(assert (= (and b!5419247 res!2305478) b!5419237))

(assert (= (and b!5419238 (not res!2305473)) b!5419240))

(assert (= (and b!5419240 res!2305480) b!5419248))

(assert (= (and b!5419248 (not res!2305477)) b!5419245))

(assert (= (and b!5419245 (not res!2305475)) b!5419244))

(assert (= (or b!5419239 b!5419248 b!5419249) bm!387840))

(assert (=> b!5419243 m!6442908))

(assert (=> b!5419243 m!6442908))

(declare-fun m!6443294 () Bool)

(assert (=> b!5419243 m!6443294))

(assert (=> b!5419243 m!6442912))

(assert (=> b!5419243 m!6443294))

(assert (=> b!5419243 m!6442912))

(declare-fun m!6443296 () Bool)

(assert (=> b!5419243 m!6443296))

(assert (=> d!1728994 m!6442904))

(declare-fun m!6443298 () Bool)

(assert (=> d!1728994 m!6443298))

(assert (=> bm!387840 m!6442904))

(assert (=> b!5419244 m!6442908))

(assert (=> b!5419247 m!6442912))

(assert (=> b!5419247 m!6442912))

(declare-fun m!6443300 () Bool)

(assert (=> b!5419247 m!6443300))

(declare-fun m!6443302 () Bool)

(assert (=> b!5419250 m!6443302))

(assert (=> b!5419237 m!6442908))

(assert (=> b!5419245 m!6442912))

(assert (=> b!5419245 m!6442912))

(assert (=> b!5419245 m!6443300))

(assert (=> b!5418695 d!1728994))

(declare-fun b!5419251 () Bool)

(declare-fun e!3358786 () Bool)

(assert (=> b!5419251 (= e!3358786 (= (head!11624 lt!2209816) (c!944955 lt!2209783)))))

(declare-fun b!5419252 () Bool)

(declare-fun res!2305481 () Bool)

(declare-fun e!3358783 () Bool)

(assert (=> b!5419252 (=> res!2305481 e!3358783)))

(assert (=> b!5419252 (= res!2305481 e!3358786)))

(declare-fun res!2305482 () Bool)

(assert (=> b!5419252 (=> (not res!2305482) (not e!3358786))))

(declare-fun lt!2209936 () Bool)

(assert (=> b!5419252 (= res!2305482 lt!2209936)))

(declare-fun b!5419253 () Bool)

(declare-fun e!3358787 () Bool)

(declare-fun call!387846 () Bool)

(assert (=> b!5419253 (= e!3358787 (= lt!2209936 call!387846))))

(declare-fun b!5419254 () Bool)

(declare-fun e!3358785 () Bool)

(assert (=> b!5419254 (= e!3358783 e!3358785)))

(declare-fun res!2305488 () Bool)

(assert (=> b!5419254 (=> (not res!2305488) (not e!3358785))))

(assert (=> b!5419254 (= res!2305488 (not lt!2209936))))

(declare-fun b!5419256 () Bool)

(declare-fun e!3358781 () Bool)

(assert (=> b!5419256 (= e!3358781 (not lt!2209936))))

(declare-fun b!5419257 () Bool)

(declare-fun e!3358782 () Bool)

(assert (=> b!5419257 (= e!3358782 (matchR!7386 (derivativeStep!4275 lt!2209783 (head!11624 lt!2209816)) (tail!10721 lt!2209816)))))

(declare-fun b!5419258 () Bool)

(declare-fun e!3358784 () Bool)

(assert (=> b!5419258 (= e!3358784 (not (= (head!11624 lt!2209816) (c!944955 lt!2209783))))))

(declare-fun bm!387841 () Bool)

(assert (=> bm!387841 (= call!387846 (isEmpty!33780 lt!2209816))))

(declare-fun b!5419255 () Bool)

(declare-fun res!2305484 () Bool)

(assert (=> b!5419255 (=> res!2305484 e!3358783)))

(assert (=> b!5419255 (= res!2305484 (not ((_ is ElementMatch!15201) lt!2209783)))))

(assert (=> b!5419255 (= e!3358781 e!3358783)))

(declare-fun d!1729004 () Bool)

(assert (=> d!1729004 e!3358787))

(declare-fun c!945104 () Bool)

(assert (=> d!1729004 (= c!945104 ((_ is EmptyExpr!15201) lt!2209783))))

(assert (=> d!1729004 (= lt!2209936 e!3358782)))

(declare-fun c!945103 () Bool)

(assert (=> d!1729004 (= c!945103 (isEmpty!33780 lt!2209816))))

(assert (=> d!1729004 (validRegex!6937 lt!2209783)))

(assert (=> d!1729004 (= (matchR!7386 lt!2209783 lt!2209816) lt!2209936)))

(declare-fun b!5419259 () Bool)

(declare-fun res!2305483 () Bool)

(assert (=> b!5419259 (=> res!2305483 e!3358784)))

(assert (=> b!5419259 (= res!2305483 (not (isEmpty!33780 (tail!10721 lt!2209816))))))

(declare-fun b!5419260 () Bool)

(assert (=> b!5419260 (= e!3358787 e!3358781)))

(declare-fun c!945102 () Bool)

(assert (=> b!5419260 (= c!945102 ((_ is EmptyLang!15201) lt!2209783))))

(declare-fun b!5419261 () Bool)

(declare-fun res!2305486 () Bool)

(assert (=> b!5419261 (=> (not res!2305486) (not e!3358786))))

(assert (=> b!5419261 (= res!2305486 (isEmpty!33780 (tail!10721 lt!2209816)))))

(declare-fun b!5419262 () Bool)

(assert (=> b!5419262 (= e!3358785 e!3358784)))

(declare-fun res!2305485 () Bool)

(assert (=> b!5419262 (=> res!2305485 e!3358784)))

(assert (=> b!5419262 (= res!2305485 call!387846)))

(declare-fun b!5419263 () Bool)

(declare-fun res!2305487 () Bool)

(assert (=> b!5419263 (=> (not res!2305487) (not e!3358786))))

(assert (=> b!5419263 (= res!2305487 (not call!387846))))

(declare-fun b!5419264 () Bool)

(assert (=> b!5419264 (= e!3358782 (nullable!5370 lt!2209783))))

(assert (= (and d!1729004 c!945103) b!5419264))

(assert (= (and d!1729004 (not c!945103)) b!5419257))

(assert (= (and d!1729004 c!945104) b!5419253))

(assert (= (and d!1729004 (not c!945104)) b!5419260))

(assert (= (and b!5419260 c!945102) b!5419256))

(assert (= (and b!5419260 (not c!945102)) b!5419255))

(assert (= (and b!5419255 (not res!2305484)) b!5419252))

(assert (= (and b!5419252 res!2305482) b!5419263))

(assert (= (and b!5419263 res!2305487) b!5419261))

(assert (= (and b!5419261 res!2305486) b!5419251))

(assert (= (and b!5419252 (not res!2305481)) b!5419254))

(assert (= (and b!5419254 res!2305488) b!5419262))

(assert (= (and b!5419262 (not res!2305485)) b!5419259))

(assert (= (and b!5419259 (not res!2305483)) b!5419258))

(assert (= (or b!5419253 b!5419262 b!5419263) bm!387841))

(declare-fun m!6443310 () Bool)

(assert (=> b!5419257 m!6443310))

(assert (=> b!5419257 m!6443310))

(declare-fun m!6443312 () Bool)

(assert (=> b!5419257 m!6443312))

(declare-fun m!6443314 () Bool)

(assert (=> b!5419257 m!6443314))

(assert (=> b!5419257 m!6443312))

(assert (=> b!5419257 m!6443314))

(declare-fun m!6443316 () Bool)

(assert (=> b!5419257 m!6443316))

(declare-fun m!6443318 () Bool)

(assert (=> d!1729004 m!6443318))

(declare-fun m!6443320 () Bool)

(assert (=> d!1729004 m!6443320))

(assert (=> bm!387841 m!6443318))

(assert (=> b!5419258 m!6443310))

(assert (=> b!5419261 m!6443314))

(assert (=> b!5419261 m!6443314))

(declare-fun m!6443322 () Bool)

(assert (=> b!5419261 m!6443322))

(declare-fun m!6443324 () Bool)

(assert (=> b!5419264 m!6443324))

(assert (=> b!5419251 m!6443310))

(assert (=> b!5419259 m!6443314))

(assert (=> b!5419259 m!6443314))

(assert (=> b!5419259 m!6443322))

(assert (=> b!5418695 d!1729004))

(declare-fun d!1729008 () Bool)

(assert (=> d!1729008 (= (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778)) (matchZipper!1445 lt!2209787 (_1!35703 lt!2209778)))))

(declare-fun lt!2209939 () Unit!154326)

(assert (=> d!1729008 (= lt!2209939 (choose!41031 lt!2209787 lt!2209802 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778)))))

(assert (=> d!1729008 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729008 (= (theoremZipperRegexEquiv!515 lt!2209787 lt!2209802 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778)) lt!2209939)))

(declare-fun bs!1252000 () Bool)

(assert (= bs!1252000 d!1729008))

(assert (=> bs!1252000 m!6442606))

(assert (=> bs!1252000 m!6442788))

(declare-fun m!6443328 () Bool)

(assert (=> bs!1252000 m!6443328))

(assert (=> bs!1252000 m!6443272))

(assert (=> b!5418695 d!1729008))

(declare-fun d!1729010 () Bool)

(declare-fun c!945108 () Bool)

(assert (=> d!1729010 (= c!945108 (isEmpty!33780 lt!2209816))))

(declare-fun e!3358795 () Bool)

(assert (=> d!1729010 (= (matchZipper!1445 (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 lt!2209806 lt!2209776)) true) lt!2209816) e!3358795)))

(declare-fun b!5419279 () Bool)

(assert (=> b!5419279 (= e!3358795 (nullableZipper!1453 (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 lt!2209806 lt!2209776)) true)))))

(declare-fun b!5419280 () Bool)

(assert (=> b!5419280 (= e!3358795 (matchZipper!1445 (derivationStepZipper!1440 (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 lt!2209806 lt!2209776)) true) (head!11624 lt!2209816)) (tail!10721 lt!2209816)))))

(assert (= (and d!1729010 c!945108) b!5419279))

(assert (= (and d!1729010 (not c!945108)) b!5419280))

(assert (=> d!1729010 m!6443318))

(assert (=> b!5419279 m!6442602))

(declare-fun m!6443336 () Bool)

(assert (=> b!5419279 m!6443336))

(assert (=> b!5419280 m!6443310))

(assert (=> b!5419280 m!6442602))

(assert (=> b!5419280 m!6443310))

(declare-fun m!6443338 () Bool)

(assert (=> b!5419280 m!6443338))

(assert (=> b!5419280 m!6443314))

(assert (=> b!5419280 m!6443338))

(assert (=> b!5419280 m!6443314))

(declare-fun m!6443340 () Bool)

(assert (=> b!5419280 m!6443340))

(assert (=> b!5418695 d!1729010))

(declare-fun b!5419281 () Bool)

(declare-fun e!3358801 () Bool)

(assert (=> b!5419281 (= e!3358801 (= (head!11624 (_1!35703 lt!2209762)) (c!944955 lt!2209814)))))

(declare-fun b!5419282 () Bool)

(declare-fun res!2305497 () Bool)

(declare-fun e!3358798 () Bool)

(assert (=> b!5419282 (=> res!2305497 e!3358798)))

(assert (=> b!5419282 (= res!2305497 e!3358801)))

(declare-fun res!2305498 () Bool)

(assert (=> b!5419282 (=> (not res!2305498) (not e!3358801))))

(declare-fun lt!2209940 () Bool)

(assert (=> b!5419282 (= res!2305498 lt!2209940)))

(declare-fun b!5419283 () Bool)

(declare-fun e!3358802 () Bool)

(declare-fun call!387848 () Bool)

(assert (=> b!5419283 (= e!3358802 (= lt!2209940 call!387848))))

(declare-fun b!5419284 () Bool)

(declare-fun e!3358800 () Bool)

(assert (=> b!5419284 (= e!3358798 e!3358800)))

(declare-fun res!2305504 () Bool)

(assert (=> b!5419284 (=> (not res!2305504) (not e!3358800))))

(assert (=> b!5419284 (= res!2305504 (not lt!2209940))))

(declare-fun b!5419286 () Bool)

(declare-fun e!3358796 () Bool)

(assert (=> b!5419286 (= e!3358796 (not lt!2209940))))

(declare-fun b!5419287 () Bool)

(declare-fun e!3358797 () Bool)

(assert (=> b!5419287 (= e!3358797 (matchR!7386 (derivativeStep!4275 lt!2209814 (head!11624 (_1!35703 lt!2209762))) (tail!10721 (_1!35703 lt!2209762))))))

(declare-fun b!5419288 () Bool)

(declare-fun e!3358799 () Bool)

(assert (=> b!5419288 (= e!3358799 (not (= (head!11624 (_1!35703 lt!2209762)) (c!944955 lt!2209814))))))

(declare-fun bm!387843 () Bool)

(assert (=> bm!387843 (= call!387848 (isEmpty!33780 (_1!35703 lt!2209762)))))

(declare-fun b!5419285 () Bool)

(declare-fun res!2305500 () Bool)

(assert (=> b!5419285 (=> res!2305500 e!3358798)))

(assert (=> b!5419285 (= res!2305500 (not ((_ is ElementMatch!15201) lt!2209814)))))

(assert (=> b!5419285 (= e!3358796 e!3358798)))

(declare-fun d!1729014 () Bool)

(assert (=> d!1729014 e!3358802))

(declare-fun c!945111 () Bool)

(assert (=> d!1729014 (= c!945111 ((_ is EmptyExpr!15201) lt!2209814))))

(assert (=> d!1729014 (= lt!2209940 e!3358797)))

(declare-fun c!945110 () Bool)

(assert (=> d!1729014 (= c!945110 (isEmpty!33780 (_1!35703 lt!2209762)))))

(assert (=> d!1729014 (validRegex!6937 lt!2209814)))

(assert (=> d!1729014 (= (matchR!7386 lt!2209814 (_1!35703 lt!2209762)) lt!2209940)))

(declare-fun b!5419289 () Bool)

(declare-fun res!2305499 () Bool)

(assert (=> b!5419289 (=> res!2305499 e!3358799)))

(assert (=> b!5419289 (= res!2305499 (not (isEmpty!33780 (tail!10721 (_1!35703 lt!2209762)))))))

(declare-fun b!5419290 () Bool)

(assert (=> b!5419290 (= e!3358802 e!3358796)))

(declare-fun c!945109 () Bool)

(assert (=> b!5419290 (= c!945109 ((_ is EmptyLang!15201) lt!2209814))))

(declare-fun b!5419291 () Bool)

(declare-fun res!2305502 () Bool)

(assert (=> b!5419291 (=> (not res!2305502) (not e!3358801))))

(assert (=> b!5419291 (= res!2305502 (isEmpty!33780 (tail!10721 (_1!35703 lt!2209762))))))

(declare-fun b!5419292 () Bool)

(assert (=> b!5419292 (= e!3358800 e!3358799)))

(declare-fun res!2305501 () Bool)

(assert (=> b!5419292 (=> res!2305501 e!3358799)))

(assert (=> b!5419292 (= res!2305501 call!387848)))

(declare-fun b!5419293 () Bool)

(declare-fun res!2305503 () Bool)

(assert (=> b!5419293 (=> (not res!2305503) (not e!3358801))))

(assert (=> b!5419293 (= res!2305503 (not call!387848))))

(declare-fun b!5419294 () Bool)

(assert (=> b!5419294 (= e!3358797 (nullable!5370 lt!2209814))))

(assert (= (and d!1729014 c!945110) b!5419294))

(assert (= (and d!1729014 (not c!945110)) b!5419287))

(assert (= (and d!1729014 c!945111) b!5419283))

(assert (= (and d!1729014 (not c!945111)) b!5419290))

(assert (= (and b!5419290 c!945109) b!5419286))

(assert (= (and b!5419290 (not c!945109)) b!5419285))

(assert (= (and b!5419285 (not res!2305500)) b!5419282))

(assert (= (and b!5419282 res!2305498) b!5419293))

(assert (= (and b!5419293 res!2305503) b!5419291))

(assert (= (and b!5419291 res!2305502) b!5419281))

(assert (= (and b!5419282 (not res!2305497)) b!5419284))

(assert (= (and b!5419284 res!2305504) b!5419292))

(assert (= (and b!5419292 (not res!2305501)) b!5419289))

(assert (= (and b!5419289 (not res!2305499)) b!5419288))

(assert (= (or b!5419283 b!5419292 b!5419293) bm!387843))

(declare-fun m!6443342 () Bool)

(assert (=> b!5419287 m!6443342))

(assert (=> b!5419287 m!6443342))

(declare-fun m!6443344 () Bool)

(assert (=> b!5419287 m!6443344))

(declare-fun m!6443346 () Bool)

(assert (=> b!5419287 m!6443346))

(assert (=> b!5419287 m!6443344))

(assert (=> b!5419287 m!6443346))

(declare-fun m!6443348 () Bool)

(assert (=> b!5419287 m!6443348))

(declare-fun m!6443350 () Bool)

(assert (=> d!1729014 m!6443350))

(assert (=> d!1729014 m!6443206))

(assert (=> bm!387843 m!6443350))

(assert (=> b!5419288 m!6443342))

(assert (=> b!5419291 m!6443346))

(assert (=> b!5419291 m!6443346))

(declare-fun m!6443352 () Bool)

(assert (=> b!5419291 m!6443352))

(declare-fun m!6443354 () Bool)

(assert (=> b!5419294 m!6443354))

(assert (=> b!5419281 m!6443342))

(assert (=> b!5419289 m!6443346))

(assert (=> b!5419289 m!6443346))

(assert (=> b!5419289 m!6443352))

(assert (=> b!5418695 d!1729014))

(declare-fun b!5419295 () Bool)

(declare-fun e!3358808 () Bool)

(assert (=> b!5419295 (= e!3358808 (= (head!11624 (_1!35703 lt!2209778)) (c!944955 (reg!15530 (regOne!30914 r!7292)))))))

(declare-fun b!5419296 () Bool)

(declare-fun res!2305505 () Bool)

(declare-fun e!3358805 () Bool)

(assert (=> b!5419296 (=> res!2305505 e!3358805)))

(assert (=> b!5419296 (= res!2305505 e!3358808)))

(declare-fun res!2305506 () Bool)

(assert (=> b!5419296 (=> (not res!2305506) (not e!3358808))))

(declare-fun lt!2209941 () Bool)

(assert (=> b!5419296 (= res!2305506 lt!2209941)))

(declare-fun b!5419297 () Bool)

(declare-fun e!3358809 () Bool)

(declare-fun call!387849 () Bool)

(assert (=> b!5419297 (= e!3358809 (= lt!2209941 call!387849))))

(declare-fun b!5419298 () Bool)

(declare-fun e!3358807 () Bool)

(assert (=> b!5419298 (= e!3358805 e!3358807)))

(declare-fun res!2305512 () Bool)

(assert (=> b!5419298 (=> (not res!2305512) (not e!3358807))))

(assert (=> b!5419298 (= res!2305512 (not lt!2209941))))

(declare-fun b!5419300 () Bool)

(declare-fun e!3358803 () Bool)

(assert (=> b!5419300 (= e!3358803 (not lt!2209941))))

(declare-fun b!5419301 () Bool)

(declare-fun e!3358804 () Bool)

(assert (=> b!5419301 (= e!3358804 (matchR!7386 (derivativeStep!4275 (reg!15530 (regOne!30914 r!7292)) (head!11624 (_1!35703 lt!2209778))) (tail!10721 (_1!35703 lt!2209778))))))

(declare-fun b!5419302 () Bool)

(declare-fun e!3358806 () Bool)

(assert (=> b!5419302 (= e!3358806 (not (= (head!11624 (_1!35703 lt!2209778)) (c!944955 (reg!15530 (regOne!30914 r!7292))))))))

(declare-fun bm!387844 () Bool)

(assert (=> bm!387844 (= call!387849 (isEmpty!33780 (_1!35703 lt!2209778)))))

(declare-fun b!5419299 () Bool)

(declare-fun res!2305508 () Bool)

(assert (=> b!5419299 (=> res!2305508 e!3358805)))

(assert (=> b!5419299 (= res!2305508 (not ((_ is ElementMatch!15201) (reg!15530 (regOne!30914 r!7292)))))))

(assert (=> b!5419299 (= e!3358803 e!3358805)))

(declare-fun d!1729016 () Bool)

(assert (=> d!1729016 e!3358809))

(declare-fun c!945114 () Bool)

(assert (=> d!1729016 (= c!945114 ((_ is EmptyExpr!15201) (reg!15530 (regOne!30914 r!7292))))))

(assert (=> d!1729016 (= lt!2209941 e!3358804)))

(declare-fun c!945113 () Bool)

(assert (=> d!1729016 (= c!945113 (isEmpty!33780 (_1!35703 lt!2209778)))))

(assert (=> d!1729016 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729016 (= (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209778)) lt!2209941)))

(declare-fun b!5419303 () Bool)

(declare-fun res!2305507 () Bool)

(assert (=> b!5419303 (=> res!2305507 e!3358806)))

(assert (=> b!5419303 (= res!2305507 (not (isEmpty!33780 (tail!10721 (_1!35703 lt!2209778)))))))

(declare-fun b!5419304 () Bool)

(assert (=> b!5419304 (= e!3358809 e!3358803)))

(declare-fun c!945112 () Bool)

(assert (=> b!5419304 (= c!945112 ((_ is EmptyLang!15201) (reg!15530 (regOne!30914 r!7292))))))

(declare-fun b!5419305 () Bool)

(declare-fun res!2305510 () Bool)

(assert (=> b!5419305 (=> (not res!2305510) (not e!3358808))))

(assert (=> b!5419305 (= res!2305510 (isEmpty!33780 (tail!10721 (_1!35703 lt!2209778))))))

(declare-fun b!5419306 () Bool)

(assert (=> b!5419306 (= e!3358807 e!3358806)))

(declare-fun res!2305509 () Bool)

(assert (=> b!5419306 (=> res!2305509 e!3358806)))

(assert (=> b!5419306 (= res!2305509 call!387849)))

(declare-fun b!5419307 () Bool)

(declare-fun res!2305511 () Bool)

(assert (=> b!5419307 (=> (not res!2305511) (not e!3358808))))

(assert (=> b!5419307 (= res!2305511 (not call!387849))))

(declare-fun b!5419308 () Bool)

(assert (=> b!5419308 (= e!3358804 (nullable!5370 (reg!15530 (regOne!30914 r!7292))))))

(assert (= (and d!1729016 c!945113) b!5419308))

(assert (= (and d!1729016 (not c!945113)) b!5419301))

(assert (= (and d!1729016 c!945114) b!5419297))

(assert (= (and d!1729016 (not c!945114)) b!5419304))

(assert (= (and b!5419304 c!945112) b!5419300))

(assert (= (and b!5419304 (not c!945112)) b!5419299))

(assert (= (and b!5419299 (not res!2305508)) b!5419296))

(assert (= (and b!5419296 res!2305506) b!5419307))

(assert (= (and b!5419307 res!2305511) b!5419305))

(assert (= (and b!5419305 res!2305510) b!5419295))

(assert (= (and b!5419296 (not res!2305505)) b!5419298))

(assert (= (and b!5419298 res!2305512) b!5419306))

(assert (= (and b!5419306 (not res!2305509)) b!5419303))

(assert (= (and b!5419303 (not res!2305507)) b!5419302))

(assert (= (or b!5419297 b!5419306 b!5419307) bm!387844))

(assert (=> b!5419301 m!6442976))

(assert (=> b!5419301 m!6442976))

(declare-fun m!6443356 () Bool)

(assert (=> b!5419301 m!6443356))

(assert (=> b!5419301 m!6442980))

(assert (=> b!5419301 m!6443356))

(assert (=> b!5419301 m!6442980))

(declare-fun m!6443358 () Bool)

(assert (=> b!5419301 m!6443358))

(assert (=> d!1729016 m!6442972))

(assert (=> d!1729016 m!6443272))

(assert (=> bm!387844 m!6442972))

(assert (=> b!5419302 m!6442976))

(assert (=> b!5419305 m!6442980))

(assert (=> b!5419305 m!6442980))

(declare-fun m!6443360 () Bool)

(assert (=> b!5419305 m!6443360))

(declare-fun m!6443362 () Bool)

(assert (=> b!5419308 m!6443362))

(assert (=> b!5419295 m!6442976))

(assert (=> b!5419303 m!6442980))

(assert (=> b!5419303 m!6442980))

(assert (=> b!5419303 m!6443360))

(assert (=> b!5418695 d!1729016))

(declare-fun d!1729018 () Bool)

(assert (=> d!1729018 (= (matchR!7386 lt!2209819 s!2326) (matchRSpec!2304 lt!2209819 s!2326))))

(declare-fun lt!2209948 () Unit!154326)

(declare-fun choose!41034 (Regex!15201 List!61902) Unit!154326)

(assert (=> d!1729018 (= lt!2209948 (choose!41034 lt!2209819 s!2326))))

(assert (=> d!1729018 (validRegex!6937 lt!2209819)))

(assert (=> d!1729018 (= (mainMatchTheorem!2304 lt!2209819 s!2326) lt!2209948)))

(declare-fun bs!1252001 () Bool)

(assert (= bs!1252001 d!1729018))

(assert (=> bs!1252001 m!6442618))

(assert (=> bs!1252001 m!6442636))

(declare-fun m!6443376 () Bool)

(assert (=> bs!1252001 m!6443376))

(assert (=> bs!1252001 m!6443298))

(assert (=> b!5418695 d!1729018))

(declare-fun b!5419329 () Bool)

(declare-fun res!2305530 () Bool)

(declare-fun e!3358823 () Bool)

(assert (=> b!5419329 (=> (not res!2305530) (not e!3358823))))

(declare-fun lt!2209950 () Option!15312)

(assert (=> b!5419329 (= res!2305530 (matchR!7386 (regTwo!30914 r!7292) (_2!35703 (get!21304 lt!2209950))))))

(declare-fun b!5419330 () Bool)

(assert (=> b!5419330 (= e!3358823 (= (++!13575 (_1!35703 (get!21304 lt!2209950)) (_2!35703 (get!21304 lt!2209950))) s!2326))))

(declare-fun b!5419331 () Bool)

(declare-fun e!3358820 () Option!15312)

(declare-fun e!3358824 () Option!15312)

(assert (=> b!5419331 (= e!3358820 e!3358824)))

(declare-fun c!945118 () Bool)

(assert (=> b!5419331 (= c!945118 ((_ is Nil!61778) s!2326))))

(declare-fun b!5419332 () Bool)

(assert (=> b!5419332 (= e!3358820 (Some!15311 (tuple2!64801 Nil!61778 s!2326)))))

(declare-fun b!5419333 () Bool)

(declare-fun e!3358821 () Bool)

(assert (=> b!5419333 (= e!3358821 (matchR!7386 (regTwo!30914 r!7292) s!2326))))

(declare-fun b!5419334 () Bool)

(declare-fun res!2305531 () Bool)

(assert (=> b!5419334 (=> (not res!2305531) (not e!3358823))))

(assert (=> b!5419334 (= res!2305531 (matchR!7386 lt!2209814 (_1!35703 (get!21304 lt!2209950))))))

(declare-fun d!1729022 () Bool)

(declare-fun e!3358822 () Bool)

(assert (=> d!1729022 e!3358822))

(declare-fun res!2305528 () Bool)

(assert (=> d!1729022 (=> res!2305528 e!3358822)))

(assert (=> d!1729022 (= res!2305528 e!3358823)))

(declare-fun res!2305527 () Bool)

(assert (=> d!1729022 (=> (not res!2305527) (not e!3358823))))

(assert (=> d!1729022 (= res!2305527 (isDefined!12015 lt!2209950))))

(assert (=> d!1729022 (= lt!2209950 e!3358820)))

(declare-fun c!945119 () Bool)

(assert (=> d!1729022 (= c!945119 e!3358821)))

(declare-fun res!2305529 () Bool)

(assert (=> d!1729022 (=> (not res!2305529) (not e!3358821))))

(assert (=> d!1729022 (= res!2305529 (matchR!7386 lt!2209814 Nil!61778))))

(assert (=> d!1729022 (validRegex!6937 lt!2209814)))

(assert (=> d!1729022 (= (findConcatSeparation!1726 lt!2209814 (regTwo!30914 r!7292) Nil!61778 s!2326 s!2326) lt!2209950)))

(declare-fun b!5419335 () Bool)

(assert (=> b!5419335 (= e!3358824 None!15311)))

(declare-fun b!5419336 () Bool)

(assert (=> b!5419336 (= e!3358822 (not (isDefined!12015 lt!2209950)))))

(declare-fun b!5419337 () Bool)

(declare-fun lt!2209951 () Unit!154326)

(declare-fun lt!2209949 () Unit!154326)

(assert (=> b!5419337 (= lt!2209951 lt!2209949)))

(assert (=> b!5419337 (= (++!13575 (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326)) s!2326)))

(assert (=> b!5419337 (= lt!2209949 (lemmaMoveElementToOtherListKeepsConcatEq!1849 Nil!61778 (h!68226 s!2326) (t!375125 s!2326) s!2326))))

(assert (=> b!5419337 (= e!3358824 (findConcatSeparation!1726 lt!2209814 (regTwo!30914 r!7292) (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326) s!2326))))

(assert (= (and d!1729022 res!2305529) b!5419333))

(assert (= (and d!1729022 c!945119) b!5419332))

(assert (= (and d!1729022 (not c!945119)) b!5419331))

(assert (= (and b!5419331 c!945118) b!5419335))

(assert (= (and b!5419331 (not c!945118)) b!5419337))

(assert (= (and d!1729022 res!2305527) b!5419334))

(assert (= (and b!5419334 res!2305531) b!5419329))

(assert (= (and b!5419329 res!2305530) b!5419330))

(assert (= (and d!1729022 (not res!2305528)) b!5419336))

(assert (=> b!5419337 m!6443036))

(assert (=> b!5419337 m!6443036))

(assert (=> b!5419337 m!6443040))

(assert (=> b!5419337 m!6443044))

(assert (=> b!5419337 m!6443036))

(declare-fun m!6443380 () Bool)

(assert (=> b!5419337 m!6443380))

(declare-fun m!6443382 () Bool)

(assert (=> b!5419330 m!6443382))

(declare-fun m!6443384 () Bool)

(assert (=> b!5419330 m!6443384))

(assert (=> b!5419329 m!6443382))

(declare-fun m!6443386 () Bool)

(assert (=> b!5419329 m!6443386))

(assert (=> b!5419334 m!6443382))

(declare-fun m!6443388 () Bool)

(assert (=> b!5419334 m!6443388))

(declare-fun m!6443390 () Bool)

(assert (=> d!1729022 m!6443390))

(declare-fun m!6443392 () Bool)

(assert (=> d!1729022 m!6443392))

(assert (=> d!1729022 m!6443206))

(assert (=> b!5419333 m!6443064))

(assert (=> b!5419336 m!6443390))

(assert (=> b!5418695 d!1729022))

(declare-fun bs!1252002 () Bool)

(declare-fun d!1729026 () Bool)

(assert (= bs!1252002 (and d!1729026 d!1728930)))

(declare-fun lambda!283644 () Int)

(assert (=> bs!1252002 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283644 lambda!283632))))

(declare-fun bs!1252003 () Bool)

(assert (= bs!1252003 (and d!1729026 d!1728974)))

(assert (=> bs!1252003 (= lambda!283644 lambda!283639)))

(declare-fun bs!1252004 () Bool)

(assert (= bs!1252004 (and d!1729026 b!5418682)))

(assert (=> bs!1252004 (not (= lambda!283644 lambda!283580))))

(assert (=> bs!1252002 (not (= lambda!283644 lambda!283633))))

(assert (=> bs!1252004 (= (and (= s!2326 (_1!35703 lt!2209762)) (= lt!2209814 (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283644 lambda!283579))))

(assert (=> bs!1252004 (not (= lambda!283644 lambda!283581))))

(declare-fun bs!1252005 () Bool)

(assert (= bs!1252005 (and d!1729026 d!1728920)))

(assert (=> bs!1252005 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283644 lambda!283625))))

(declare-fun bs!1252006 () Bool)

(assert (= bs!1252006 (and d!1729026 b!5418695)))

(assert (=> bs!1252006 (= lambda!283644 lambda!283577)))

(declare-fun bs!1252007 () Bool)

(assert (= bs!1252007 (and d!1729026 b!5418677)))

(assert (=> bs!1252007 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283644 lambda!283572))))

(assert (=> bs!1252006 (not (= lambda!283644 lambda!283578))))

(assert (=> bs!1252007 (not (= lambda!283644 lambda!283573))))

(assert (=> d!1729026 true))

(assert (=> d!1729026 true))

(assert (=> d!1729026 true))

(declare-fun lambda!283645 () Int)

(assert (=> bs!1252002 (not (= lambda!283645 lambda!283632))))

(assert (=> bs!1252003 (not (= lambda!283645 lambda!283639))))

(assert (=> bs!1252004 (= (and (= s!2326 (_1!35703 lt!2209762)) (= lt!2209814 (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283645 lambda!283580))))

(assert (=> bs!1252002 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283645 lambda!283633))))

(assert (=> bs!1252004 (not (= lambda!283645 lambda!283579))))

(assert (=> bs!1252004 (not (= lambda!283645 lambda!283581))))

(declare-fun bs!1252008 () Bool)

(assert (= bs!1252008 d!1729026))

(assert (=> bs!1252008 (not (= lambda!283645 lambda!283644))))

(assert (=> bs!1252005 (not (= lambda!283645 lambda!283625))))

(assert (=> bs!1252006 (not (= lambda!283645 lambda!283577))))

(assert (=> bs!1252007 (not (= lambda!283645 lambda!283572))))

(assert (=> bs!1252006 (= lambda!283645 lambda!283578)))

(assert (=> bs!1252007 (= (= lt!2209814 (regOne!30914 r!7292)) (= lambda!283645 lambda!283573))))

(assert (=> d!1729026 true))

(assert (=> d!1729026 true))

(assert (=> d!1729026 true))

(assert (=> d!1729026 (= (Exists!2382 lambda!283644) (Exists!2382 lambda!283645))))

(declare-fun lt!2209952 () Unit!154326)

(assert (=> d!1729026 (= lt!2209952 (choose!41027 lt!2209814 (regTwo!30914 r!7292) s!2326))))

(assert (=> d!1729026 (validRegex!6937 lt!2209814)))

(assert (=> d!1729026 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 lt!2209814 (regTwo!30914 r!7292) s!2326) lt!2209952)))

(declare-fun m!6443410 () Bool)

(assert (=> bs!1252008 m!6443410))

(declare-fun m!6443412 () Bool)

(assert (=> bs!1252008 m!6443412))

(declare-fun m!6443414 () Bool)

(assert (=> bs!1252008 m!6443414))

(assert (=> bs!1252008 m!6443206))

(assert (=> b!5418695 d!1729026))

(declare-fun d!1729032 () Bool)

(assert (=> d!1729032 (forall!14546 (++!13576 lt!2209806 lt!2209776) lambda!283576)))

(declare-fun lt!2209959 () Unit!154326)

(declare-fun choose!41035 (List!61903 List!61903 Int) Unit!154326)

(assert (=> d!1729032 (= lt!2209959 (choose!41035 lt!2209806 lt!2209776 lambda!283576))))

(assert (=> d!1729032 (forall!14546 lt!2209806 lambda!283576)))

(assert (=> d!1729032 (= (lemmaConcatPreservesForall!226 lt!2209806 lt!2209776 lambda!283576) lt!2209959)))

(declare-fun bs!1252023 () Bool)

(assert (= bs!1252023 d!1729032))

(assert (=> bs!1252023 m!6442644))

(assert (=> bs!1252023 m!6442644))

(declare-fun m!6443416 () Bool)

(assert (=> bs!1252023 m!6443416))

(declare-fun m!6443418 () Bool)

(assert (=> bs!1252023 m!6443418))

(declare-fun m!6443420 () Bool)

(assert (=> bs!1252023 m!6443420))

(assert (=> b!5418695 d!1729032))

(declare-fun d!1729034 () Bool)

(assert (=> d!1729034 (= (Exists!2382 lambda!283577) (choose!41025 lambda!283577))))

(declare-fun bs!1252024 () Bool)

(assert (= bs!1252024 d!1729034))

(declare-fun m!6443422 () Bool)

(assert (=> bs!1252024 m!6443422))

(assert (=> b!5418695 d!1729034))

(declare-fun bs!1252038 () Bool)

(declare-fun d!1729036 () Bool)

(assert (= bs!1252038 (and d!1729036 d!1728892)))

(declare-fun lambda!283651 () Int)

(assert (=> bs!1252038 (= lambda!283651 lambda!283616)))

(declare-fun bs!1252039 () Bool)

(assert (= bs!1252039 (and d!1729036 d!1728968)))

(assert (=> bs!1252039 (= lambda!283651 lambda!283638)))

(declare-fun bs!1252040 () Bool)

(assert (= bs!1252040 (and d!1729036 d!1728882)))

(assert (=> bs!1252040 (= lambda!283651 lambda!283605)))

(declare-fun bs!1252041 () Bool)

(assert (= bs!1252041 (and d!1729036 b!5418711)))

(assert (=> bs!1252041 (= lambda!283651 lambda!283576)))

(declare-fun bs!1252043 () Bool)

(assert (= bs!1252043 (and d!1729036 d!1728888)))

(assert (=> bs!1252043 (= lambda!283651 lambda!283611)))

(assert (=> d!1729036 (matchZipper!1445 (store ((as const (Array Context!9170 Bool)) false) (Context!9171 (++!13576 (exprs!5085 lt!2209826) (exprs!5085 lt!2209781))) true) (++!13575 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(declare-fun lt!2209969 () Unit!154326)

(assert (=> d!1729036 (= lt!2209969 (lemmaConcatPreservesForall!226 (exprs!5085 lt!2209826) (exprs!5085 lt!2209781) lambda!283651))))

(declare-fun lt!2209968 () Unit!154326)

(declare-fun choose!41036 (Context!9170 Context!9170 List!61902 List!61902) Unit!154326)

(assert (=> d!1729036 (= lt!2209968 (choose!41036 lt!2209826 lt!2209781 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(assert (=> d!1729036 (matchZipper!1445 (store ((as const (Array Context!9170 Bool)) false) lt!2209826 true) (_1!35703 lt!2209778))))

(assert (=> d!1729036 (= (lemmaConcatenateContextMatchesConcatOfStrings!74 lt!2209826 lt!2209781 (_1!35703 lt!2209778) (_2!35703 lt!2209778)) lt!2209968)))

(declare-fun bs!1252047 () Bool)

(assert (= bs!1252047 d!1729036))

(assert (=> bs!1252047 m!6442688))

(declare-fun m!6443458 () Bool)

(assert (=> bs!1252047 m!6443458))

(declare-fun m!6443460 () Bool)

(assert (=> bs!1252047 m!6443460))

(assert (=> bs!1252047 m!6442688))

(declare-fun m!6443462 () Bool)

(assert (=> bs!1252047 m!6443462))

(declare-fun m!6443464 () Bool)

(assert (=> bs!1252047 m!6443464))

(assert (=> bs!1252047 m!6442590))

(declare-fun m!6443466 () Bool)

(assert (=> bs!1252047 m!6443466))

(assert (=> bs!1252047 m!6442590))

(declare-fun m!6443468 () Bool)

(assert (=> bs!1252047 m!6443468))

(assert (=> bs!1252047 m!6443460))

(assert (=> b!5418695 d!1729036))

(declare-fun d!1729048 () Bool)

(assert (=> d!1729048 (matchR!7386 (Concat!24046 (reg!15530 (regOne!30914 r!7292)) lt!2209822) (++!13575 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(declare-fun lt!2209972 () Unit!154326)

(declare-fun choose!41037 (Regex!15201 Regex!15201 List!61902 List!61902) Unit!154326)

(assert (=> d!1729048 (= lt!2209972 (choose!41037 (reg!15530 (regOne!30914 r!7292)) lt!2209822 (_1!35703 lt!2209778) (_2!35703 lt!2209778)))))

(declare-fun e!3358845 () Bool)

(assert (=> d!1729048 e!3358845))

(declare-fun res!2305548 () Bool)

(assert (=> d!1729048 (=> (not res!2305548) (not e!3358845))))

(assert (=> d!1729048 (= res!2305548 (validRegex!6937 (reg!15530 (regOne!30914 r!7292))))))

(assert (=> d!1729048 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!224 (reg!15530 (regOne!30914 r!7292)) lt!2209822 (_1!35703 lt!2209778) (_2!35703 lt!2209778)) lt!2209972)))

(declare-fun b!5419372 () Bool)

(assert (=> b!5419372 (= e!3358845 (validRegex!6937 lt!2209822))))

(assert (= (and d!1729048 res!2305548) b!5419372))

(assert (=> d!1729048 m!6442688))

(assert (=> d!1729048 m!6442688))

(declare-fun m!6443476 () Bool)

(assert (=> d!1729048 m!6443476))

(declare-fun m!6443478 () Bool)

(assert (=> d!1729048 m!6443478))

(assert (=> d!1729048 m!6443272))

(assert (=> b!5419372 m!6443250))

(assert (=> b!5418695 d!1729048))

(declare-fun bs!1252064 () Bool)

(declare-fun b!5419424 () Bool)

(assert (= bs!1252064 (and b!5419424 d!1728930)))

(declare-fun lambda!283657 () Int)

(assert (=> bs!1252064 (not (= lambda!283657 lambda!283632))))

(declare-fun bs!1252065 () Bool)

(assert (= bs!1252065 (and b!5419424 d!1728974)))

(assert (=> bs!1252065 (not (= lambda!283657 lambda!283639))))

(declare-fun bs!1252066 () Bool)

(assert (= bs!1252066 (and b!5419424 b!5418682)))

(assert (=> bs!1252066 (not (= lambda!283657 lambda!283580))))

(assert (=> bs!1252064 (not (= lambda!283657 lambda!283633))))

(assert (=> bs!1252066 (not (= lambda!283657 lambda!283579))))

(assert (=> bs!1252066 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (reg!15530 lt!2209819) (reg!15530 (regOne!30914 r!7292))) (= lt!2209819 lt!2209771)) (= lambda!283657 lambda!283581))))

(declare-fun bs!1252067 () Bool)

(assert (= bs!1252067 (and b!5419424 d!1729026)))

(assert (=> bs!1252067 (not (= lambda!283657 lambda!283645))))

(assert (=> bs!1252067 (not (= lambda!283657 lambda!283644))))

(declare-fun bs!1252068 () Bool)

(assert (= bs!1252068 (and b!5419424 d!1728920)))

(assert (=> bs!1252068 (not (= lambda!283657 lambda!283625))))

(declare-fun bs!1252069 () Bool)

(assert (= bs!1252069 (and b!5419424 b!5418695)))

(assert (=> bs!1252069 (not (= lambda!283657 lambda!283577))))

(declare-fun bs!1252070 () Bool)

(assert (= bs!1252070 (and b!5419424 b!5418677)))

(assert (=> bs!1252070 (not (= lambda!283657 lambda!283572))))

(assert (=> bs!1252069 (not (= lambda!283657 lambda!283578))))

(assert (=> bs!1252070 (not (= lambda!283657 lambda!283573))))

(assert (=> b!5419424 true))

(assert (=> b!5419424 true))

(declare-fun bs!1252071 () Bool)

(declare-fun b!5419426 () Bool)

(assert (= bs!1252071 (and b!5419426 d!1728930)))

(declare-fun lambda!283658 () Int)

(assert (=> bs!1252071 (not (= lambda!283658 lambda!283632))))

(declare-fun bs!1252072 () Bool)

(assert (= bs!1252072 (and b!5419426 d!1728974)))

(assert (=> bs!1252072 (not (= lambda!283658 lambda!283639))))

(declare-fun bs!1252073 () Bool)

(assert (= bs!1252073 (and b!5419426 b!5419424)))

(assert (=> bs!1252073 (not (= lambda!283658 lambda!283657))))

(declare-fun bs!1252074 () Bool)

(assert (= bs!1252074 (and b!5419426 b!5418682)))

(assert (=> bs!1252074 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 lt!2209819) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 lt!2209819) lt!2209771)) (= lambda!283658 lambda!283580))))

(assert (=> bs!1252071 (= (and (= (regOne!30914 lt!2209819) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209819) (regTwo!30914 r!7292))) (= lambda!283658 lambda!283633))))

(assert (=> bs!1252074 (not (= lambda!283658 lambda!283579))))

(assert (=> bs!1252074 (not (= lambda!283658 lambda!283581))))

(declare-fun bs!1252075 () Bool)

(assert (= bs!1252075 (and b!5419426 d!1729026)))

(assert (=> bs!1252075 (= (and (= (regOne!30914 lt!2209819) lt!2209814) (= (regTwo!30914 lt!2209819) (regTwo!30914 r!7292))) (= lambda!283658 lambda!283645))))

(assert (=> bs!1252075 (not (= lambda!283658 lambda!283644))))

(declare-fun bs!1252076 () Bool)

(assert (= bs!1252076 (and b!5419426 d!1728920)))

(assert (=> bs!1252076 (not (= lambda!283658 lambda!283625))))

(declare-fun bs!1252077 () Bool)

(assert (= bs!1252077 (and b!5419426 b!5418695)))

(assert (=> bs!1252077 (not (= lambda!283658 lambda!283577))))

(declare-fun bs!1252078 () Bool)

(assert (= bs!1252078 (and b!5419426 b!5418677)))

(assert (=> bs!1252078 (not (= lambda!283658 lambda!283572))))

(assert (=> bs!1252077 (= (and (= (regOne!30914 lt!2209819) lt!2209814) (= (regTwo!30914 lt!2209819) (regTwo!30914 r!7292))) (= lambda!283658 lambda!283578))))

(assert (=> bs!1252078 (= (and (= (regOne!30914 lt!2209819) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209819) (regTwo!30914 r!7292))) (= lambda!283658 lambda!283573))))

(assert (=> b!5419426 true))

(assert (=> b!5419426 true))

(declare-fun b!5419423 () Bool)

(declare-fun e!3358877 () Bool)

(declare-fun e!3358880 () Bool)

(assert (=> b!5419423 (= e!3358877 e!3358880)))

(declare-fun c!945144 () Bool)

(assert (=> b!5419423 (= c!945144 ((_ is Star!15201) lt!2209819))))

(declare-fun e!3358876 () Bool)

(declare-fun call!387858 () Bool)

(assert (=> b!5419424 (= e!3358876 call!387858)))

(declare-fun b!5419425 () Bool)

(declare-fun c!945142 () Bool)

(assert (=> b!5419425 (= c!945142 ((_ is ElementMatch!15201) lt!2209819))))

(declare-fun e!3358878 () Bool)

(declare-fun e!3358875 () Bool)

(assert (=> b!5419425 (= e!3358878 e!3358875)))

(assert (=> b!5419426 (= e!3358880 call!387858)))

(declare-fun bm!387852 () Bool)

(declare-fun call!387857 () Bool)

(assert (=> bm!387852 (= call!387857 (isEmpty!33780 s!2326))))

(declare-fun b!5419427 () Bool)

(declare-fun e!3358879 () Bool)

(assert (=> b!5419427 (= e!3358877 e!3358879)))

(declare-fun res!2305577 () Bool)

(assert (=> b!5419427 (= res!2305577 (matchRSpec!2304 (regOne!30915 lt!2209819) s!2326))))

(assert (=> b!5419427 (=> res!2305577 e!3358879)))

(declare-fun bm!387853 () Bool)

(assert (=> bm!387853 (= call!387858 (Exists!2382 (ite c!945144 lambda!283657 lambda!283658)))))

(declare-fun d!1729054 () Bool)

(declare-fun c!945143 () Bool)

(assert (=> d!1729054 (= c!945143 ((_ is EmptyExpr!15201) lt!2209819))))

(declare-fun e!3358874 () Bool)

(assert (=> d!1729054 (= (matchRSpec!2304 lt!2209819 s!2326) e!3358874)))

(declare-fun b!5419428 () Bool)

(assert (=> b!5419428 (= e!3358875 (= s!2326 (Cons!61778 (c!944955 lt!2209819) Nil!61778)))))

(declare-fun b!5419429 () Bool)

(declare-fun res!2305576 () Bool)

(assert (=> b!5419429 (=> res!2305576 e!3358876)))

(assert (=> b!5419429 (= res!2305576 call!387857)))

(assert (=> b!5419429 (= e!3358880 e!3358876)))

(declare-fun b!5419430 () Bool)

(declare-fun c!945141 () Bool)

(assert (=> b!5419430 (= c!945141 ((_ is Union!15201) lt!2209819))))

(assert (=> b!5419430 (= e!3358875 e!3358877)))

(declare-fun b!5419431 () Bool)

(assert (=> b!5419431 (= e!3358879 (matchRSpec!2304 (regTwo!30915 lt!2209819) s!2326))))

(declare-fun b!5419432 () Bool)

(assert (=> b!5419432 (= e!3358874 e!3358878)))

(declare-fun res!2305575 () Bool)

(assert (=> b!5419432 (= res!2305575 (not ((_ is EmptyLang!15201) lt!2209819)))))

(assert (=> b!5419432 (=> (not res!2305575) (not e!3358878))))

(declare-fun b!5419433 () Bool)

(assert (=> b!5419433 (= e!3358874 call!387857)))

(assert (= (and d!1729054 c!945143) b!5419433))

(assert (= (and d!1729054 (not c!945143)) b!5419432))

(assert (= (and b!5419432 res!2305575) b!5419425))

(assert (= (and b!5419425 c!945142) b!5419428))

(assert (= (and b!5419425 (not c!945142)) b!5419430))

(assert (= (and b!5419430 c!945141) b!5419427))

(assert (= (and b!5419430 (not c!945141)) b!5419423))

(assert (= (and b!5419427 (not res!2305577)) b!5419431))

(assert (= (and b!5419423 c!945144) b!5419429))

(assert (= (and b!5419423 (not c!945144)) b!5419426))

(assert (= (and b!5419429 (not res!2305576)) b!5419424))

(assert (= (or b!5419424 b!5419426) bm!387853))

(assert (= (or b!5419433 b!5419429) bm!387852))

(assert (=> bm!387852 m!6442904))

(declare-fun m!6443498 () Bool)

(assert (=> b!5419427 m!6443498))

(declare-fun m!6443500 () Bool)

(assert (=> bm!387853 m!6443500))

(declare-fun m!6443502 () Bool)

(assert (=> b!5419431 m!6443502))

(assert (=> b!5418695 d!1729054))

(declare-fun d!1729058 () Bool)

(assert (=> d!1729058 (= (get!21304 lt!2209795) (v!51340 lt!2209795))))

(assert (=> b!5418695 d!1729058))

(declare-fun b!5419458 () Bool)

(declare-fun e!3358893 () Bool)

(declare-fun lt!2209988 () List!61903)

(assert (=> b!5419458 (= e!3358893 (or (not (= lt!2209776 Nil!61779)) (= lt!2209988 lt!2209806)))))

(declare-fun b!5419455 () Bool)

(declare-fun e!3358892 () List!61903)

(assert (=> b!5419455 (= e!3358892 lt!2209776)))

(declare-fun b!5419457 () Bool)

(declare-fun res!2305590 () Bool)

(assert (=> b!5419457 (=> (not res!2305590) (not e!3358893))))

(declare-fun size!39874 (List!61903) Int)

(assert (=> b!5419457 (= res!2305590 (= (size!39874 lt!2209988) (+ (size!39874 lt!2209806) (size!39874 lt!2209776))))))

(declare-fun d!1729060 () Bool)

(assert (=> d!1729060 e!3358893))

(declare-fun res!2305589 () Bool)

(assert (=> d!1729060 (=> (not res!2305589) (not e!3358893))))

(declare-fun content!11108 (List!61903) (InoxSet Regex!15201))

(assert (=> d!1729060 (= res!2305589 (= (content!11108 lt!2209988) ((_ map or) (content!11108 lt!2209806) (content!11108 lt!2209776))))))

(assert (=> d!1729060 (= lt!2209988 e!3358892)))

(declare-fun c!945150 () Bool)

(assert (=> d!1729060 (= c!945150 ((_ is Nil!61779) lt!2209806))))

(assert (=> d!1729060 (= (++!13576 lt!2209806 lt!2209776) lt!2209988)))

(declare-fun b!5419456 () Bool)

(assert (=> b!5419456 (= e!3358892 (Cons!61779 (h!68227 lt!2209806) (++!13576 (t!375126 lt!2209806) lt!2209776)))))

(assert (= (and d!1729060 c!945150) b!5419455))

(assert (= (and d!1729060 (not c!945150)) b!5419456))

(assert (= (and d!1729060 res!2305589) b!5419457))

(assert (= (and b!5419457 res!2305590) b!5419458))

(declare-fun m!6443528 () Bool)

(assert (=> b!5419457 m!6443528))

(declare-fun m!6443530 () Bool)

(assert (=> b!5419457 m!6443530))

(declare-fun m!6443532 () Bool)

(assert (=> b!5419457 m!6443532))

(declare-fun m!6443534 () Bool)

(assert (=> d!1729060 m!6443534))

(declare-fun m!6443536 () Bool)

(assert (=> d!1729060 m!6443536))

(declare-fun m!6443538 () Bool)

(assert (=> d!1729060 m!6443538))

(declare-fun m!6443540 () Bool)

(assert (=> b!5419456 m!6443540))

(assert (=> b!5418695 d!1729060))

(declare-fun b!5419459 () Bool)

(declare-fun e!3358899 () Bool)

(assert (=> b!5419459 (= e!3358899 (= (head!11624 (_2!35703 lt!2209778)) (c!944955 lt!2209822)))))

(declare-fun b!5419460 () Bool)

(declare-fun res!2305591 () Bool)

(declare-fun e!3358896 () Bool)

(assert (=> b!5419460 (=> res!2305591 e!3358896)))

(assert (=> b!5419460 (= res!2305591 e!3358899)))

(declare-fun res!2305592 () Bool)

(assert (=> b!5419460 (=> (not res!2305592) (not e!3358899))))

(declare-fun lt!2209989 () Bool)

(assert (=> b!5419460 (= res!2305592 lt!2209989)))

(declare-fun b!5419461 () Bool)

(declare-fun e!3358900 () Bool)

(declare-fun call!387859 () Bool)

(assert (=> b!5419461 (= e!3358900 (= lt!2209989 call!387859))))

(declare-fun b!5419462 () Bool)

(declare-fun e!3358898 () Bool)

(assert (=> b!5419462 (= e!3358896 e!3358898)))

(declare-fun res!2305598 () Bool)

(assert (=> b!5419462 (=> (not res!2305598) (not e!3358898))))

(assert (=> b!5419462 (= res!2305598 (not lt!2209989))))

(declare-fun b!5419464 () Bool)

(declare-fun e!3358894 () Bool)

(assert (=> b!5419464 (= e!3358894 (not lt!2209989))))

(declare-fun b!5419465 () Bool)

(declare-fun e!3358895 () Bool)

(assert (=> b!5419465 (= e!3358895 (matchR!7386 (derivativeStep!4275 lt!2209822 (head!11624 (_2!35703 lt!2209778))) (tail!10721 (_2!35703 lt!2209778))))))

(declare-fun b!5419466 () Bool)

(declare-fun e!3358897 () Bool)

(assert (=> b!5419466 (= e!3358897 (not (= (head!11624 (_2!35703 lt!2209778)) (c!944955 lt!2209822))))))

(declare-fun bm!387854 () Bool)

(assert (=> bm!387854 (= call!387859 (isEmpty!33780 (_2!35703 lt!2209778)))))

(declare-fun b!5419463 () Bool)

(declare-fun res!2305594 () Bool)

(assert (=> b!5419463 (=> res!2305594 e!3358896)))

(assert (=> b!5419463 (= res!2305594 (not ((_ is ElementMatch!15201) lt!2209822)))))

(assert (=> b!5419463 (= e!3358894 e!3358896)))

(declare-fun d!1729070 () Bool)

(assert (=> d!1729070 e!3358900))

(declare-fun c!945153 () Bool)

(assert (=> d!1729070 (= c!945153 ((_ is EmptyExpr!15201) lt!2209822))))

(assert (=> d!1729070 (= lt!2209989 e!3358895)))

(declare-fun c!945152 () Bool)

(assert (=> d!1729070 (= c!945152 (isEmpty!33780 (_2!35703 lt!2209778)))))

(assert (=> d!1729070 (validRegex!6937 lt!2209822)))

(assert (=> d!1729070 (= (matchR!7386 lt!2209822 (_2!35703 lt!2209778)) lt!2209989)))

(declare-fun b!5419467 () Bool)

(declare-fun res!2305593 () Bool)

(assert (=> b!5419467 (=> res!2305593 e!3358897)))

(assert (=> b!5419467 (= res!2305593 (not (isEmpty!33780 (tail!10721 (_2!35703 lt!2209778)))))))

(declare-fun b!5419468 () Bool)

(assert (=> b!5419468 (= e!3358900 e!3358894)))

(declare-fun c!945151 () Bool)

(assert (=> b!5419468 (= c!945151 ((_ is EmptyLang!15201) lt!2209822))))

(declare-fun b!5419469 () Bool)

(declare-fun res!2305596 () Bool)

(assert (=> b!5419469 (=> (not res!2305596) (not e!3358899))))

(assert (=> b!5419469 (= res!2305596 (isEmpty!33780 (tail!10721 (_2!35703 lt!2209778))))))

(declare-fun b!5419470 () Bool)

(assert (=> b!5419470 (= e!3358898 e!3358897)))

(declare-fun res!2305595 () Bool)

(assert (=> b!5419470 (=> res!2305595 e!3358897)))

(assert (=> b!5419470 (= res!2305595 call!387859)))

(declare-fun b!5419471 () Bool)

(declare-fun res!2305597 () Bool)

(assert (=> b!5419471 (=> (not res!2305597) (not e!3358899))))

(assert (=> b!5419471 (= res!2305597 (not call!387859))))

(declare-fun b!5419472 () Bool)

(assert (=> b!5419472 (= e!3358895 (nullable!5370 lt!2209822))))

(assert (= (and d!1729070 c!945152) b!5419472))

(assert (= (and d!1729070 (not c!945152)) b!5419465))

(assert (= (and d!1729070 c!945153) b!5419461))

(assert (= (and d!1729070 (not c!945153)) b!5419468))

(assert (= (and b!5419468 c!945151) b!5419464))

(assert (= (and b!5419468 (not c!945151)) b!5419463))

(assert (= (and b!5419463 (not res!2305594)) b!5419460))

(assert (= (and b!5419460 res!2305592) b!5419471))

(assert (= (and b!5419471 res!2305597) b!5419469))

(assert (= (and b!5419469 res!2305596) b!5419459))

(assert (= (and b!5419460 (not res!2305591)) b!5419462))

(assert (= (and b!5419462 res!2305598) b!5419470))

(assert (= (and b!5419470 (not res!2305595)) b!5419467))

(assert (= (and b!5419467 (not res!2305593)) b!5419466))

(assert (= (or b!5419461 b!5419470 b!5419471) bm!387854))

(declare-fun m!6443544 () Bool)

(assert (=> b!5419465 m!6443544))

(assert (=> b!5419465 m!6443544))

(declare-fun m!6443546 () Bool)

(assert (=> b!5419465 m!6443546))

(declare-fun m!6443548 () Bool)

(assert (=> b!5419465 m!6443548))

(assert (=> b!5419465 m!6443546))

(assert (=> b!5419465 m!6443548))

(declare-fun m!6443550 () Bool)

(assert (=> b!5419465 m!6443550))

(declare-fun m!6443552 () Bool)

(assert (=> d!1729070 m!6443552))

(assert (=> d!1729070 m!6443250))

(assert (=> bm!387854 m!6443552))

(assert (=> b!5419466 m!6443544))

(assert (=> b!5419469 m!6443548))

(assert (=> b!5419469 m!6443548))

(declare-fun m!6443554 () Bool)

(assert (=> b!5419469 m!6443554))

(declare-fun m!6443556 () Bool)

(assert (=> b!5419472 m!6443556))

(assert (=> b!5419459 m!6443544))

(assert (=> b!5419467 m!6443548))

(assert (=> b!5419467 m!6443548))

(assert (=> b!5419467 m!6443554))

(assert (=> b!5418695 d!1729070))

(declare-fun b!5419512 () Bool)

(declare-fun e!3358926 () (InoxSet Context!9170))

(assert (=> b!5419512 (= e!3358926 (store ((as const (Array Context!9170 Bool)) false) lt!2209781 true))))

(declare-fun b!5419513 () Bool)

(declare-fun e!3358923 () (InoxSet Context!9170))

(assert (=> b!5419513 (= e!3358923 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419514 () Bool)

(declare-fun e!3358924 () (InoxSet Context!9170))

(declare-fun call!387876 () (InoxSet Context!9170))

(declare-fun call!387880 () (InoxSet Context!9170))

(assert (=> b!5419514 (= e!3358924 ((_ map or) call!387876 call!387880))))

(declare-fun bm!387870 () Bool)

(declare-fun call!387875 () (InoxSet Context!9170))

(assert (=> bm!387870 (= call!387875 call!387876)))

(declare-fun bm!387871 () Bool)

(declare-fun call!387877 () (InoxSet Context!9170))

(assert (=> bm!387871 (= call!387877 call!387875)))

(declare-fun b!5419515 () Bool)

(declare-fun c!945172 () Bool)

(declare-fun e!3358927 () Bool)

(assert (=> b!5419515 (= c!945172 e!3358927)))

(declare-fun res!2305604 () Bool)

(assert (=> b!5419515 (=> (not res!2305604) (not e!3358927))))

(assert (=> b!5419515 (= res!2305604 ((_ is Concat!24046) (reg!15530 (regOne!30914 r!7292))))))

(declare-fun e!3358922 () (InoxSet Context!9170))

(assert (=> b!5419515 (= e!3358924 e!3358922)))

(declare-fun bm!387872 () Bool)

(declare-fun call!387878 () List!61903)

(declare-fun call!387879 () List!61903)

(assert (=> bm!387872 (= call!387878 call!387879)))

(declare-fun b!5419516 () Bool)

(assert (=> b!5419516 (= e!3358922 ((_ map or) call!387880 call!387875))))

(declare-fun bm!387873 () Bool)

(declare-fun c!945176 () Bool)

(assert (=> bm!387873 (= call!387880 (derivationStepZipperDown!649 (ite c!945176 (regTwo!30915 (reg!15530 (regOne!30914 r!7292))) (regOne!30914 (reg!15530 (regOne!30914 r!7292)))) (ite c!945176 lt!2209781 (Context!9171 call!387879)) (h!68226 s!2326)))))

(declare-fun b!5419517 () Bool)

(assert (=> b!5419517 (= e!3358926 e!3358924)))

(assert (=> b!5419517 (= c!945176 ((_ is Union!15201) (reg!15530 (regOne!30914 r!7292))))))

(declare-fun c!945174 () Bool)

(declare-fun bm!387874 () Bool)

(declare-fun $colon$colon!1504 (List!61903 Regex!15201) List!61903)

(assert (=> bm!387874 (= call!387879 ($colon$colon!1504 (exprs!5085 lt!2209781) (ite (or c!945172 c!945174) (regTwo!30914 (reg!15530 (regOne!30914 r!7292))) (reg!15530 (regOne!30914 r!7292)))))))

(declare-fun d!1729074 () Bool)

(declare-fun c!945173 () Bool)

(assert (=> d!1729074 (= c!945173 (and ((_ is ElementMatch!15201) (reg!15530 (regOne!30914 r!7292))) (= (c!944955 (reg!15530 (regOne!30914 r!7292))) (h!68226 s!2326))))))

(assert (=> d!1729074 (= (derivationStepZipperDown!649 (reg!15530 (regOne!30914 r!7292)) lt!2209781 (h!68226 s!2326)) e!3358926)))

(declare-fun b!5419518 () Bool)

(assert (=> b!5419518 (= e!3358923 call!387877)))

(declare-fun b!5419519 () Bool)

(declare-fun e!3358925 () (InoxSet Context!9170))

(assert (=> b!5419519 (= e!3358925 call!387877)))

(declare-fun b!5419520 () Bool)

(assert (=> b!5419520 (= e!3358927 (nullable!5370 (regOne!30914 (reg!15530 (regOne!30914 r!7292)))))))

(declare-fun b!5419521 () Bool)

(declare-fun c!945175 () Bool)

(assert (=> b!5419521 (= c!945175 ((_ is Star!15201) (reg!15530 (regOne!30914 r!7292))))))

(assert (=> b!5419521 (= e!3358925 e!3358923)))

(declare-fun bm!387875 () Bool)

(assert (=> bm!387875 (= call!387876 (derivationStepZipperDown!649 (ite c!945176 (regOne!30915 (reg!15530 (regOne!30914 r!7292))) (ite c!945172 (regTwo!30914 (reg!15530 (regOne!30914 r!7292))) (ite c!945174 (regOne!30914 (reg!15530 (regOne!30914 r!7292))) (reg!15530 (reg!15530 (regOne!30914 r!7292)))))) (ite (or c!945176 c!945172) lt!2209781 (Context!9171 call!387878)) (h!68226 s!2326)))))

(declare-fun b!5419522 () Bool)

(assert (=> b!5419522 (= e!3358922 e!3358925)))

(assert (=> b!5419522 (= c!945174 ((_ is Concat!24046) (reg!15530 (regOne!30914 r!7292))))))

(assert (= (and d!1729074 c!945173) b!5419512))

(assert (= (and d!1729074 (not c!945173)) b!5419517))

(assert (= (and b!5419517 c!945176) b!5419514))

(assert (= (and b!5419517 (not c!945176)) b!5419515))

(assert (= (and b!5419515 res!2305604) b!5419520))

(assert (= (and b!5419515 c!945172) b!5419516))

(assert (= (and b!5419515 (not c!945172)) b!5419522))

(assert (= (and b!5419522 c!945174) b!5419519))

(assert (= (and b!5419522 (not c!945174)) b!5419521))

(assert (= (and b!5419521 c!945175) b!5419518))

(assert (= (and b!5419521 (not c!945175)) b!5419513))

(assert (= (or b!5419519 b!5419518) bm!387872))

(assert (= (or b!5419519 b!5419518) bm!387871))

(assert (= (or b!5419516 bm!387872) bm!387874))

(assert (= (or b!5419516 bm!387871) bm!387870))

(assert (= (or b!5419514 b!5419516) bm!387873))

(assert (= (or b!5419514 bm!387870) bm!387875))

(declare-fun m!6443578 () Bool)

(assert (=> bm!387874 m!6443578))

(declare-fun m!6443580 () Bool)

(assert (=> b!5419520 m!6443580))

(assert (=> b!5419512 m!6442584))

(declare-fun m!6443582 () Bool)

(assert (=> bm!387875 m!6443582))

(declare-fun m!6443584 () Bool)

(assert (=> bm!387873 m!6443584))

(assert (=> b!5418673 d!1729074))

(declare-fun d!1729086 () Bool)

(declare-fun nullableFct!1605 (Regex!15201) Bool)

(assert (=> d!1729086 (= (nullable!5370 (regOne!30914 (regOne!30914 r!7292))) (nullableFct!1605 (regOne!30914 (regOne!30914 r!7292))))))

(declare-fun bs!1252104 () Bool)

(assert (= bs!1252104 d!1729086))

(declare-fun m!6443592 () Bool)

(assert (=> bs!1252104 m!6443592))

(assert (=> b!5418693 d!1729086))

(declare-fun d!1729088 () Bool)

(declare-fun lt!2209995 () Regex!15201)

(assert (=> d!1729088 (validRegex!6937 lt!2209995)))

(assert (=> d!1729088 (= lt!2209995 (generalisedUnion!1130 (unfocusZipperList!643 zl!343)))))

(assert (=> d!1729088 (= (unfocusZipper!943 zl!343) lt!2209995)))

(declare-fun bs!1252105 () Bool)

(assert (= bs!1252105 d!1729088))

(declare-fun m!6443594 () Bool)

(assert (=> bs!1252105 m!6443594))

(assert (=> bs!1252105 m!6442766))

(assert (=> bs!1252105 m!6442766))

(assert (=> bs!1252105 m!6442768))

(assert (=> b!5418672 d!1729088))

(declare-fun d!1729092 () Bool)

(declare-fun e!3358935 () Bool)

(assert (=> d!1729092 (= (matchZipper!1445 ((_ map or) lt!2209800 lt!2209798) (t!375125 s!2326)) e!3358935)))

(declare-fun res!2305612 () Bool)

(assert (=> d!1729092 (=> res!2305612 e!3358935)))

(assert (=> d!1729092 (= res!2305612 (matchZipper!1445 lt!2209800 (t!375125 s!2326)))))

(declare-fun lt!2210002 () Unit!154326)

(declare-fun choose!41041 ((InoxSet Context!9170) (InoxSet Context!9170) List!61902) Unit!154326)

(assert (=> d!1729092 (= lt!2210002 (choose!41041 lt!2209800 lt!2209798 (t!375125 s!2326)))))

(assert (=> d!1729092 (= (lemmaZipperConcatMatchesSameAsBothZippers!438 lt!2209800 lt!2209798 (t!375125 s!2326)) lt!2210002)))

(declare-fun b!5419534 () Bool)

(assert (=> b!5419534 (= e!3358935 (matchZipper!1445 lt!2209798 (t!375125 s!2326)))))

(assert (= (and d!1729092 (not res!2305612)) b!5419534))

(assert (=> d!1729092 m!6442744))

(assert (=> d!1729092 m!6442742))

(declare-fun m!6443612 () Bool)

(assert (=> d!1729092 m!6443612))

(assert (=> b!5419534 m!6442652))

(assert (=> b!5418691 d!1729092))

(declare-fun d!1729098 () Bool)

(declare-fun c!945179 () Bool)

(assert (=> d!1729098 (= c!945179 (isEmpty!33780 (t!375125 s!2326)))))

(declare-fun e!3358936 () Bool)

(assert (=> d!1729098 (= (matchZipper!1445 lt!2209800 (t!375125 s!2326)) e!3358936)))

(declare-fun b!5419535 () Bool)

(assert (=> b!5419535 (= e!3358936 (nullableZipper!1453 lt!2209800))))

(declare-fun b!5419536 () Bool)

(assert (=> b!5419536 (= e!3358936 (matchZipper!1445 (derivationStepZipper!1440 lt!2209800 (head!11624 (t!375125 s!2326))) (tail!10721 (t!375125 s!2326))))))

(assert (= (and d!1729098 c!945179) b!5419535))

(assert (= (and d!1729098 (not c!945179)) b!5419536))

(assert (=> d!1729098 m!6443190))

(declare-fun m!6443614 () Bool)

(assert (=> b!5419535 m!6443614))

(assert (=> b!5419536 m!6443194))

(assert (=> b!5419536 m!6443194))

(declare-fun m!6443616 () Bool)

(assert (=> b!5419536 m!6443616))

(assert (=> b!5419536 m!6443198))

(assert (=> b!5419536 m!6443616))

(assert (=> b!5419536 m!6443198))

(declare-fun m!6443618 () Bool)

(assert (=> b!5419536 m!6443618))

(assert (=> b!5418691 d!1729098))

(declare-fun d!1729100 () Bool)

(declare-fun c!945180 () Bool)

(assert (=> d!1729100 (= c!945180 (isEmpty!33780 (t!375125 s!2326)))))

(declare-fun e!3358937 () Bool)

(assert (=> d!1729100 (= (matchZipper!1445 ((_ map or) lt!2209800 lt!2209798) (t!375125 s!2326)) e!3358937)))

(declare-fun b!5419537 () Bool)

(assert (=> b!5419537 (= e!3358937 (nullableZipper!1453 ((_ map or) lt!2209800 lt!2209798)))))

(declare-fun b!5419538 () Bool)

(assert (=> b!5419538 (= e!3358937 (matchZipper!1445 (derivationStepZipper!1440 ((_ map or) lt!2209800 lt!2209798) (head!11624 (t!375125 s!2326))) (tail!10721 (t!375125 s!2326))))))

(assert (= (and d!1729100 c!945180) b!5419537))

(assert (= (and d!1729100 (not c!945180)) b!5419538))

(assert (=> d!1729100 m!6443190))

(declare-fun m!6443620 () Bool)

(assert (=> b!5419537 m!6443620))

(assert (=> b!5419538 m!6443194))

(assert (=> b!5419538 m!6443194))

(declare-fun m!6443622 () Bool)

(assert (=> b!5419538 m!6443622))

(assert (=> b!5419538 m!6443198))

(assert (=> b!5419538 m!6443622))

(assert (=> b!5419538 m!6443198))

(declare-fun m!6443624 () Bool)

(assert (=> b!5419538 m!6443624))

(assert (=> b!5418691 d!1729100))

(declare-fun bs!1252124 () Bool)

(declare-fun b!5419540 () Bool)

(assert (= bs!1252124 (and b!5419540 d!1728930)))

(declare-fun lambda!283665 () Int)

(assert (=> bs!1252124 (not (= lambda!283665 lambda!283632))))

(declare-fun bs!1252125 () Bool)

(assert (= bs!1252125 (and b!5419540 d!1728974)))

(assert (=> bs!1252125 (not (= lambda!283665 lambda!283639))))

(declare-fun bs!1252126 () Bool)

(assert (= bs!1252126 (and b!5419540 b!5419424)))

(assert (=> bs!1252126 (= (and (= (reg!15530 lt!2209783) (reg!15530 lt!2209819)) (= lt!2209783 lt!2209819)) (= lambda!283665 lambda!283657))))

(declare-fun bs!1252127 () Bool)

(assert (= bs!1252127 (and b!5419540 b!5418682)))

(assert (=> bs!1252127 (not (= lambda!283665 lambda!283580))))

(assert (=> bs!1252124 (not (= lambda!283665 lambda!283633))))

(assert (=> bs!1252127 (not (= lambda!283665 lambda!283579))))

(declare-fun bs!1252128 () Bool)

(assert (= bs!1252128 (and b!5419540 b!5419426)))

(assert (=> bs!1252128 (not (= lambda!283665 lambda!283658))))

(assert (=> bs!1252127 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (reg!15530 lt!2209783) (reg!15530 (regOne!30914 r!7292))) (= lt!2209783 lt!2209771)) (= lambda!283665 lambda!283581))))

(declare-fun bs!1252129 () Bool)

(assert (= bs!1252129 (and b!5419540 d!1729026)))

(assert (=> bs!1252129 (not (= lambda!283665 lambda!283645))))

(assert (=> bs!1252129 (not (= lambda!283665 lambda!283644))))

(declare-fun bs!1252131 () Bool)

(assert (= bs!1252131 (and b!5419540 d!1728920)))

(assert (=> bs!1252131 (not (= lambda!283665 lambda!283625))))

(declare-fun bs!1252132 () Bool)

(assert (= bs!1252132 (and b!5419540 b!5418695)))

(assert (=> bs!1252132 (not (= lambda!283665 lambda!283577))))

(declare-fun bs!1252133 () Bool)

(assert (= bs!1252133 (and b!5419540 b!5418677)))

(assert (=> bs!1252133 (not (= lambda!283665 lambda!283572))))

(assert (=> bs!1252132 (not (= lambda!283665 lambda!283578))))

(assert (=> bs!1252133 (not (= lambda!283665 lambda!283573))))

(assert (=> b!5419540 true))

(assert (=> b!5419540 true))

(declare-fun bs!1252134 () Bool)

(declare-fun b!5419542 () Bool)

(assert (= bs!1252134 (and b!5419542 d!1728930)))

(declare-fun lambda!283666 () Int)

(assert (=> bs!1252134 (not (= lambda!283666 lambda!283632))))

(declare-fun bs!1252135 () Bool)

(assert (= bs!1252135 (and b!5419542 d!1728974)))

(assert (=> bs!1252135 (not (= lambda!283666 lambda!283639))))

(declare-fun bs!1252136 () Bool)

(assert (= bs!1252136 (and b!5419542 b!5419540)))

(assert (=> bs!1252136 (not (= lambda!283666 lambda!283665))))

(declare-fun bs!1252137 () Bool)

(assert (= bs!1252137 (and b!5419542 b!5419424)))

(assert (=> bs!1252137 (not (= lambda!283666 lambda!283657))))

(declare-fun bs!1252139 () Bool)

(assert (= bs!1252139 (and b!5419542 b!5418682)))

(assert (=> bs!1252139 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 lt!2209783) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 lt!2209783) lt!2209771)) (= lambda!283666 lambda!283580))))

(assert (=> bs!1252134 (= (and (= (regOne!30914 lt!2209783) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209783) (regTwo!30914 r!7292))) (= lambda!283666 lambda!283633))))

(assert (=> bs!1252139 (not (= lambda!283666 lambda!283579))))

(declare-fun bs!1252140 () Bool)

(assert (= bs!1252140 (and b!5419542 b!5419426)))

(assert (=> bs!1252140 (= (and (= (regOne!30914 lt!2209783) (regOne!30914 lt!2209819)) (= (regTwo!30914 lt!2209783) (regTwo!30914 lt!2209819))) (= lambda!283666 lambda!283658))))

(assert (=> bs!1252139 (not (= lambda!283666 lambda!283581))))

(declare-fun bs!1252141 () Bool)

(assert (= bs!1252141 (and b!5419542 d!1729026)))

(assert (=> bs!1252141 (= (and (= (regOne!30914 lt!2209783) lt!2209814) (= (regTwo!30914 lt!2209783) (regTwo!30914 r!7292))) (= lambda!283666 lambda!283645))))

(assert (=> bs!1252141 (not (= lambda!283666 lambda!283644))))

(declare-fun bs!1252142 () Bool)

(assert (= bs!1252142 (and b!5419542 d!1728920)))

(assert (=> bs!1252142 (not (= lambda!283666 lambda!283625))))

(declare-fun bs!1252144 () Bool)

(assert (= bs!1252144 (and b!5419542 b!5418695)))

(assert (=> bs!1252144 (not (= lambda!283666 lambda!283577))))

(declare-fun bs!1252145 () Bool)

(assert (= bs!1252145 (and b!5419542 b!5418677)))

(assert (=> bs!1252145 (not (= lambda!283666 lambda!283572))))

(assert (=> bs!1252144 (= (and (= (regOne!30914 lt!2209783) lt!2209814) (= (regTwo!30914 lt!2209783) (regTwo!30914 r!7292))) (= lambda!283666 lambda!283578))))

(assert (=> bs!1252145 (= (and (= (regOne!30914 lt!2209783) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209783) (regTwo!30914 r!7292))) (= lambda!283666 lambda!283573))))

(assert (=> b!5419542 true))

(assert (=> b!5419542 true))

(declare-fun b!5419539 () Bool)

(declare-fun e!3358941 () Bool)

(declare-fun e!3358944 () Bool)

(assert (=> b!5419539 (= e!3358941 e!3358944)))

(declare-fun c!945184 () Bool)

(assert (=> b!5419539 (= c!945184 ((_ is Star!15201) lt!2209783))))

(declare-fun e!3358940 () Bool)

(declare-fun call!387882 () Bool)

(assert (=> b!5419540 (= e!3358940 call!387882)))

(declare-fun b!5419541 () Bool)

(declare-fun c!945182 () Bool)

(assert (=> b!5419541 (= c!945182 ((_ is ElementMatch!15201) lt!2209783))))

(declare-fun e!3358942 () Bool)

(declare-fun e!3358939 () Bool)

(assert (=> b!5419541 (= e!3358942 e!3358939)))

(assert (=> b!5419542 (= e!3358944 call!387882)))

(declare-fun bm!387876 () Bool)

(declare-fun call!387881 () Bool)

(assert (=> bm!387876 (= call!387881 (isEmpty!33780 s!2326))))

(declare-fun b!5419543 () Bool)

(declare-fun e!3358943 () Bool)

(assert (=> b!5419543 (= e!3358941 e!3358943)))

(declare-fun res!2305615 () Bool)

(assert (=> b!5419543 (= res!2305615 (matchRSpec!2304 (regOne!30915 lt!2209783) s!2326))))

(assert (=> b!5419543 (=> res!2305615 e!3358943)))

(declare-fun bm!387877 () Bool)

(assert (=> bm!387877 (= call!387882 (Exists!2382 (ite c!945184 lambda!283665 lambda!283666)))))

(declare-fun d!1729102 () Bool)

(declare-fun c!945183 () Bool)

(assert (=> d!1729102 (= c!945183 ((_ is EmptyExpr!15201) lt!2209783))))

(declare-fun e!3358938 () Bool)

(assert (=> d!1729102 (= (matchRSpec!2304 lt!2209783 s!2326) e!3358938)))

(declare-fun b!5419544 () Bool)

(assert (=> b!5419544 (= e!3358939 (= s!2326 (Cons!61778 (c!944955 lt!2209783) Nil!61778)))))

(declare-fun b!5419545 () Bool)

(declare-fun res!2305614 () Bool)

(assert (=> b!5419545 (=> res!2305614 e!3358940)))

(assert (=> b!5419545 (= res!2305614 call!387881)))

(assert (=> b!5419545 (= e!3358944 e!3358940)))

(declare-fun b!5419546 () Bool)

(declare-fun c!945181 () Bool)

(assert (=> b!5419546 (= c!945181 ((_ is Union!15201) lt!2209783))))

(assert (=> b!5419546 (= e!3358939 e!3358941)))

(declare-fun b!5419547 () Bool)

(assert (=> b!5419547 (= e!3358943 (matchRSpec!2304 (regTwo!30915 lt!2209783) s!2326))))

(declare-fun b!5419548 () Bool)

(assert (=> b!5419548 (= e!3358938 e!3358942)))

(declare-fun res!2305613 () Bool)

(assert (=> b!5419548 (= res!2305613 (not ((_ is EmptyLang!15201) lt!2209783)))))

(assert (=> b!5419548 (=> (not res!2305613) (not e!3358942))))

(declare-fun b!5419549 () Bool)

(assert (=> b!5419549 (= e!3358938 call!387881)))

(assert (= (and d!1729102 c!945183) b!5419549))

(assert (= (and d!1729102 (not c!945183)) b!5419548))

(assert (= (and b!5419548 res!2305613) b!5419541))

(assert (= (and b!5419541 c!945182) b!5419544))

(assert (= (and b!5419541 (not c!945182)) b!5419546))

(assert (= (and b!5419546 c!945181) b!5419543))

(assert (= (and b!5419546 (not c!945181)) b!5419539))

(assert (= (and b!5419543 (not res!2305615)) b!5419547))

(assert (= (and b!5419539 c!945184) b!5419545))

(assert (= (and b!5419539 (not c!945184)) b!5419542))

(assert (= (and b!5419545 (not res!2305614)) b!5419540))

(assert (= (or b!5419540 b!5419542) bm!387877))

(assert (= (or b!5419549 b!5419545) bm!387876))

(assert (=> bm!387876 m!6442904))

(declare-fun m!6443658 () Bool)

(assert (=> b!5419543 m!6443658))

(declare-fun m!6443660 () Bool)

(assert (=> bm!387877 m!6443660))

(declare-fun m!6443662 () Bool)

(assert (=> b!5419547 m!6443662))

(assert (=> b!5418712 d!1729102))

(declare-fun b!5419560 () Bool)

(declare-fun e!3358956 () Bool)

(assert (=> b!5419560 (= e!3358956 (= (head!11624 s!2326) (c!944955 lt!2209783)))))

(declare-fun b!5419561 () Bool)

(declare-fun res!2305618 () Bool)

(declare-fun e!3358953 () Bool)

(assert (=> b!5419561 (=> res!2305618 e!3358953)))

(assert (=> b!5419561 (= res!2305618 e!3358956)))

(declare-fun res!2305619 () Bool)

(assert (=> b!5419561 (=> (not res!2305619) (not e!3358956))))

(declare-fun lt!2210006 () Bool)

(assert (=> b!5419561 (= res!2305619 lt!2210006)))

(declare-fun b!5419562 () Bool)

(declare-fun e!3358957 () Bool)

(declare-fun call!387885 () Bool)

(assert (=> b!5419562 (= e!3358957 (= lt!2210006 call!387885))))

(declare-fun b!5419563 () Bool)

(declare-fun e!3358955 () Bool)

(assert (=> b!5419563 (= e!3358953 e!3358955)))

(declare-fun res!2305625 () Bool)

(assert (=> b!5419563 (=> (not res!2305625) (not e!3358955))))

(assert (=> b!5419563 (= res!2305625 (not lt!2210006))))

(declare-fun b!5419565 () Bool)

(declare-fun e!3358951 () Bool)

(assert (=> b!5419565 (= e!3358951 (not lt!2210006))))

(declare-fun b!5419566 () Bool)

(declare-fun e!3358952 () Bool)

(assert (=> b!5419566 (= e!3358952 (matchR!7386 (derivativeStep!4275 lt!2209783 (head!11624 s!2326)) (tail!10721 s!2326)))))

(declare-fun b!5419567 () Bool)

(declare-fun e!3358954 () Bool)

(assert (=> b!5419567 (= e!3358954 (not (= (head!11624 s!2326) (c!944955 lt!2209783))))))

(declare-fun bm!387880 () Bool)

(assert (=> bm!387880 (= call!387885 (isEmpty!33780 s!2326))))

(declare-fun b!5419564 () Bool)

(declare-fun res!2305621 () Bool)

(assert (=> b!5419564 (=> res!2305621 e!3358953)))

(assert (=> b!5419564 (= res!2305621 (not ((_ is ElementMatch!15201) lt!2209783)))))

(assert (=> b!5419564 (= e!3358951 e!3358953)))

(declare-fun d!1729118 () Bool)

(assert (=> d!1729118 e!3358957))

(declare-fun c!945191 () Bool)

(assert (=> d!1729118 (= c!945191 ((_ is EmptyExpr!15201) lt!2209783))))

(assert (=> d!1729118 (= lt!2210006 e!3358952)))

(declare-fun c!945190 () Bool)

(assert (=> d!1729118 (= c!945190 (isEmpty!33780 s!2326))))

(assert (=> d!1729118 (validRegex!6937 lt!2209783)))

(assert (=> d!1729118 (= (matchR!7386 lt!2209783 s!2326) lt!2210006)))

(declare-fun b!5419568 () Bool)

(declare-fun res!2305620 () Bool)

(assert (=> b!5419568 (=> res!2305620 e!3358954)))

(assert (=> b!5419568 (= res!2305620 (not (isEmpty!33780 (tail!10721 s!2326))))))

(declare-fun b!5419569 () Bool)

(assert (=> b!5419569 (= e!3358957 e!3358951)))

(declare-fun c!945189 () Bool)

(assert (=> b!5419569 (= c!945189 ((_ is EmptyLang!15201) lt!2209783))))

(declare-fun b!5419570 () Bool)

(declare-fun res!2305623 () Bool)

(assert (=> b!5419570 (=> (not res!2305623) (not e!3358956))))

(assert (=> b!5419570 (= res!2305623 (isEmpty!33780 (tail!10721 s!2326)))))

(declare-fun b!5419571 () Bool)

(assert (=> b!5419571 (= e!3358955 e!3358954)))

(declare-fun res!2305622 () Bool)

(assert (=> b!5419571 (=> res!2305622 e!3358954)))

(assert (=> b!5419571 (= res!2305622 call!387885)))

(declare-fun b!5419572 () Bool)

(declare-fun res!2305624 () Bool)

(assert (=> b!5419572 (=> (not res!2305624) (not e!3358956))))

(assert (=> b!5419572 (= res!2305624 (not call!387885))))

(declare-fun b!5419573 () Bool)

(assert (=> b!5419573 (= e!3358952 (nullable!5370 lt!2209783))))

(assert (= (and d!1729118 c!945190) b!5419573))

(assert (= (and d!1729118 (not c!945190)) b!5419566))

(assert (= (and d!1729118 c!945191) b!5419562))

(assert (= (and d!1729118 (not c!945191)) b!5419569))

(assert (= (and b!5419569 c!945189) b!5419565))

(assert (= (and b!5419569 (not c!945189)) b!5419564))

(assert (= (and b!5419564 (not res!2305621)) b!5419561))

(assert (= (and b!5419561 res!2305619) b!5419572))

(assert (= (and b!5419572 res!2305624) b!5419570))

(assert (= (and b!5419570 res!2305623) b!5419560))

(assert (= (and b!5419561 (not res!2305618)) b!5419563))

(assert (= (and b!5419563 res!2305625) b!5419571))

(assert (= (and b!5419571 (not res!2305622)) b!5419568))

(assert (= (and b!5419568 (not res!2305620)) b!5419567))

(assert (= (or b!5419562 b!5419571 b!5419572) bm!387880))

(assert (=> b!5419566 m!6442908))

(assert (=> b!5419566 m!6442908))

(declare-fun m!6443670 () Bool)

(assert (=> b!5419566 m!6443670))

(assert (=> b!5419566 m!6442912))

(assert (=> b!5419566 m!6443670))

(assert (=> b!5419566 m!6442912))

(declare-fun m!6443672 () Bool)

(assert (=> b!5419566 m!6443672))

(assert (=> d!1729118 m!6442904))

(assert (=> d!1729118 m!6443320))

(assert (=> bm!387880 m!6442904))

(assert (=> b!5419567 m!6442908))

(assert (=> b!5419570 m!6442912))

(assert (=> b!5419570 m!6442912))

(assert (=> b!5419570 m!6443300))

(assert (=> b!5419573 m!6443324))

(assert (=> b!5419560 m!6442908))

(assert (=> b!5419568 m!6442912))

(assert (=> b!5419568 m!6442912))

(assert (=> b!5419568 m!6443300))

(assert (=> b!5418712 d!1729118))

(declare-fun d!1729124 () Bool)

(assert (=> d!1729124 (= (matchR!7386 lt!2209783 s!2326) (matchRSpec!2304 lt!2209783 s!2326))))

(declare-fun lt!2210007 () Unit!154326)

(assert (=> d!1729124 (= lt!2210007 (choose!41034 lt!2209783 s!2326))))

(assert (=> d!1729124 (validRegex!6937 lt!2209783)))

(assert (=> d!1729124 (= (mainMatchTheorem!2304 lt!2209783 s!2326) lt!2210007)))

(declare-fun bs!1252150 () Bool)

(assert (= bs!1252150 d!1729124))

(assert (=> bs!1252150 m!6442784))

(assert (=> bs!1252150 m!6442782))

(declare-fun m!6443674 () Bool)

(assert (=> bs!1252150 m!6443674))

(assert (=> bs!1252150 m!6443320))

(assert (=> b!5418712 d!1729124))

(declare-fun bm!387887 () Bool)

(declare-fun call!387893 () Bool)

(declare-fun call!387894 () Bool)

(assert (=> bm!387887 (= call!387893 call!387894)))

(declare-fun b!5419598 () Bool)

(declare-fun e!3358979 () Bool)

(declare-fun e!3358981 () Bool)

(assert (=> b!5419598 (= e!3358979 e!3358981)))

(declare-fun c!945197 () Bool)

(assert (=> b!5419598 (= c!945197 ((_ is Star!15201) r!7292))))

(declare-fun bm!387888 () Bool)

(declare-fun c!945198 () Bool)

(assert (=> bm!387888 (= call!387894 (validRegex!6937 (ite c!945197 (reg!15530 r!7292) (ite c!945198 (regTwo!30915 r!7292) (regTwo!30914 r!7292)))))))

(declare-fun b!5419599 () Bool)

(declare-fun res!2305641 () Bool)

(declare-fun e!3358980 () Bool)

(assert (=> b!5419599 (=> (not res!2305641) (not e!3358980))))

(declare-fun call!387892 () Bool)

(assert (=> b!5419599 (= res!2305641 call!387892)))

(declare-fun e!3358975 () Bool)

(assert (=> b!5419599 (= e!3358975 e!3358980)))

(declare-fun b!5419600 () Bool)

(assert (=> b!5419600 (= e!3358981 e!3358975)))

(assert (=> b!5419600 (= c!945198 ((_ is Union!15201) r!7292))))

(declare-fun b!5419601 () Bool)

(declare-fun res!2305642 () Bool)

(declare-fun e!3358976 () Bool)

(assert (=> b!5419601 (=> res!2305642 e!3358976)))

(assert (=> b!5419601 (= res!2305642 (not ((_ is Concat!24046) r!7292)))))

(assert (=> b!5419601 (= e!3358975 e!3358976)))

(declare-fun b!5419602 () Bool)

(declare-fun e!3358977 () Bool)

(assert (=> b!5419602 (= e!3358976 e!3358977)))

(declare-fun res!2305643 () Bool)

(assert (=> b!5419602 (=> (not res!2305643) (not e!3358977))))

(assert (=> b!5419602 (= res!2305643 call!387892)))

(declare-fun b!5419603 () Bool)

(assert (=> b!5419603 (= e!3358980 call!387893)))

(declare-fun b!5419604 () Bool)

(declare-fun e!3358978 () Bool)

(assert (=> b!5419604 (= e!3358978 call!387894)))

(declare-fun d!1729126 () Bool)

(declare-fun res!2305640 () Bool)

(assert (=> d!1729126 (=> res!2305640 e!3358979)))

(assert (=> d!1729126 (= res!2305640 ((_ is ElementMatch!15201) r!7292))))

(assert (=> d!1729126 (= (validRegex!6937 r!7292) e!3358979)))

(declare-fun b!5419597 () Bool)

(assert (=> b!5419597 (= e!3358977 call!387893)))

(declare-fun b!5419605 () Bool)

(assert (=> b!5419605 (= e!3358981 e!3358978)))

(declare-fun res!2305639 () Bool)

(assert (=> b!5419605 (= res!2305639 (not (nullable!5370 (reg!15530 r!7292))))))

(assert (=> b!5419605 (=> (not res!2305639) (not e!3358978))))

(declare-fun bm!387889 () Bool)

(assert (=> bm!387889 (= call!387892 (validRegex!6937 (ite c!945198 (regOne!30915 r!7292) (regOne!30914 r!7292))))))

(assert (= (and d!1729126 (not res!2305640)) b!5419598))

(assert (= (and b!5419598 c!945197) b!5419605))

(assert (= (and b!5419598 (not c!945197)) b!5419600))

(assert (= (and b!5419605 res!2305639) b!5419604))

(assert (= (and b!5419600 c!945198) b!5419599))

(assert (= (and b!5419600 (not c!945198)) b!5419601))

(assert (= (and b!5419599 res!2305641) b!5419603))

(assert (= (and b!5419601 (not res!2305642)) b!5419602))

(assert (= (and b!5419602 res!2305643) b!5419597))

(assert (= (or b!5419603 b!5419597) bm!387887))

(assert (= (or b!5419599 b!5419602) bm!387889))

(assert (= (or b!5419604 bm!387887) bm!387888))

(declare-fun m!6443684 () Bool)

(assert (=> bm!387888 m!6443684))

(declare-fun m!6443686 () Bool)

(assert (=> b!5419605 m!6443686))

(declare-fun m!6443688 () Bool)

(assert (=> bm!387889 m!6443688))

(assert (=> start!568930 d!1729126))

(declare-fun bs!1252155 () Bool)

(declare-fun d!1729132 () Bool)

(assert (= bs!1252155 (and d!1729132 b!5418711)))

(declare-fun lambda!283676 () Int)

(assert (=> bs!1252155 (= (= (exprs!5085 lt!2209781) lt!2209776) (= lambda!283676 lambda!283575))))

(assert (=> d!1729132 true))

(assert (=> d!1729132 (= (appendTo!60 lt!2209787 lt!2209781) (map!14186 lt!2209787 lambda!283676))))

(declare-fun bs!1252156 () Bool)

(assert (= bs!1252156 d!1729132))

(declare-fun m!6443698 () Bool)

(assert (=> bs!1252156 m!6443698))

(assert (=> b!5418711 d!1729132))

(declare-fun d!1729138 () Bool)

(declare-fun choose!41044 ((InoxSet Context!9170) Int) (InoxSet Context!9170))

(assert (=> d!1729138 (= (map!14186 lt!2209787 lambda!283575) (choose!41044 lt!2209787 lambda!283575))))

(declare-fun bs!1252157 () Bool)

(assert (= bs!1252157 d!1729138))

(declare-fun m!6443700 () Bool)

(assert (=> bs!1252157 m!6443700))

(assert (=> b!5418711 d!1729138))

(assert (=> b!5418711 d!1729032))

(declare-fun d!1729140 () Bool)

(declare-fun dynLambda!24346 (Int Context!9170) Context!9170)

(assert (=> d!1729140 (= (map!14186 lt!2209787 lambda!283575) (store ((as const (Array Context!9170 Bool)) false) (dynLambda!24346 lambda!283575 lt!2209826) true))))

(declare-fun lt!2210022 () Unit!154326)

(declare-fun choose!41045 ((InoxSet Context!9170) Context!9170 Int) Unit!154326)

(assert (=> d!1729140 (= lt!2210022 (choose!41045 lt!2209787 lt!2209826 lambda!283575))))

(assert (=> d!1729140 (= lt!2209787 (store ((as const (Array Context!9170 Bool)) false) lt!2209826 true))))

(assert (=> d!1729140 (= (lemmaMapOnSingletonSet!60 lt!2209787 lt!2209826 lambda!283575) lt!2210022)))

(declare-fun b_lambda!206879 () Bool)

(assert (=> (not b_lambda!206879) (not d!1729140)))

(declare-fun bs!1252158 () Bool)

(assert (= bs!1252158 d!1729140))

(declare-fun m!6443702 () Bool)

(assert (=> bs!1252158 m!6443702))

(assert (=> bs!1252158 m!6443702))

(declare-fun m!6443704 () Bool)

(assert (=> bs!1252158 m!6443704))

(declare-fun m!6443706 () Bool)

(assert (=> bs!1252158 m!6443706))

(assert (=> bs!1252158 m!6442754))

(assert (=> bs!1252158 m!6442590))

(assert (=> b!5418711 d!1729140))

(assert (=> b!5418711 d!1729060))

(declare-fun d!1729142 () Bool)

(declare-fun lt!2210023 () Regex!15201)

(assert (=> d!1729142 (validRegex!6937 lt!2210023)))

(assert (=> d!1729142 (= lt!2210023 (generalisedUnion!1130 (unfocusZipperList!643 lt!2209802)))))

(assert (=> d!1729142 (= (unfocusZipper!943 lt!2209802) lt!2210023)))

(declare-fun bs!1252159 () Bool)

(assert (= bs!1252159 d!1729142))

(declare-fun m!6443708 () Bool)

(assert (=> bs!1252159 m!6443708))

(declare-fun m!6443710 () Bool)

(assert (=> bs!1252159 m!6443710))

(assert (=> bs!1252159 m!6443710))

(declare-fun m!6443712 () Bool)

(assert (=> bs!1252159 m!6443712))

(assert (=> b!5418669 d!1729142))

(declare-fun d!1729144 () Bool)

(assert (=> d!1729144 (= (flatMap!928 lt!2209779 lambda!283574) (choose!41028 lt!2209779 lambda!283574))))

(declare-fun bs!1252160 () Bool)

(assert (= bs!1252160 d!1729144))

(declare-fun m!6443714 () Bool)

(assert (=> bs!1252160 m!6443714))

(assert (=> b!5418669 d!1729144))

(declare-fun d!1729146 () Bool)

(assert (=> d!1729146 (= (flatMap!928 lt!2209787 lambda!283574) (choose!41028 lt!2209787 lambda!283574))))

(declare-fun bs!1252161 () Bool)

(assert (= bs!1252161 d!1729146))

(declare-fun m!6443716 () Bool)

(assert (=> bs!1252161 m!6443716))

(assert (=> b!5418669 d!1729146))

(declare-fun b!5419628 () Bool)

(declare-fun e!3358994 () (InoxSet Context!9170))

(declare-fun e!3358995 () (InoxSet Context!9170))

(assert (=> b!5419628 (= e!3358994 e!3358995)))

(declare-fun c!945209 () Bool)

(assert (=> b!5419628 (= c!945209 ((_ is Cons!61779) (exprs!5085 lt!2209826)))))

(declare-fun bm!387890 () Bool)

(declare-fun call!387895 () (InoxSet Context!9170))

(assert (=> bm!387890 (= call!387895 (derivationStepZipperDown!649 (h!68227 (exprs!5085 lt!2209826)) (Context!9171 (t!375126 (exprs!5085 lt!2209826))) (h!68226 s!2326)))))

(declare-fun d!1729148 () Bool)

(declare-fun c!945208 () Bool)

(declare-fun e!3358996 () Bool)

(assert (=> d!1729148 (= c!945208 e!3358996)))

(declare-fun res!2305648 () Bool)

(assert (=> d!1729148 (=> (not res!2305648) (not e!3358996))))

(assert (=> d!1729148 (= res!2305648 ((_ is Cons!61779) (exprs!5085 lt!2209826)))))

(assert (=> d!1729148 (= (derivationStepZipperUp!573 lt!2209826 (h!68226 s!2326)) e!3358994)))

(declare-fun b!5419629 () Bool)

(assert (=> b!5419629 (= e!3358996 (nullable!5370 (h!68227 (exprs!5085 lt!2209826))))))

(declare-fun b!5419630 () Bool)

(assert (=> b!5419630 (= e!3358995 call!387895)))

(declare-fun b!5419631 () Bool)

(assert (=> b!5419631 (= e!3358995 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419632 () Bool)

(assert (=> b!5419632 (= e!3358994 ((_ map or) call!387895 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 lt!2209826))) (h!68226 s!2326))))))

(assert (= (and d!1729148 res!2305648) b!5419629))

(assert (= (and d!1729148 c!945208) b!5419632))

(assert (= (and d!1729148 (not c!945208)) b!5419628))

(assert (= (and b!5419628 c!945209) b!5419630))

(assert (= (and b!5419628 (not c!945209)) b!5419631))

(assert (= (or b!5419632 b!5419630) bm!387890))

(declare-fun m!6443718 () Bool)

(assert (=> bm!387890 m!6443718))

(declare-fun m!6443720 () Bool)

(assert (=> b!5419629 m!6443720))

(declare-fun m!6443722 () Bool)

(assert (=> b!5419632 m!6443722))

(assert (=> b!5418669 d!1729148))

(declare-fun d!1729150 () Bool)

(assert (=> d!1729150 (= (flatMap!928 lt!2209787 lambda!283574) (dynLambda!24345 lambda!283574 lt!2209826))))

(declare-fun lt!2210024 () Unit!154326)

(assert (=> d!1729150 (= lt!2210024 (choose!41029 lt!2209787 lt!2209826 lambda!283574))))

(assert (=> d!1729150 (= lt!2209787 (store ((as const (Array Context!9170 Bool)) false) lt!2209826 true))))

(assert (=> d!1729150 (= (lemmaFlatMapOnSingletonSet!460 lt!2209787 lt!2209826 lambda!283574) lt!2210024)))

(declare-fun b_lambda!206881 () Bool)

(assert (=> (not b_lambda!206881) (not d!1729150)))

(declare-fun bs!1252162 () Bool)

(assert (= bs!1252162 d!1729150))

(assert (=> bs!1252162 m!6442596))

(declare-fun m!6443724 () Bool)

(assert (=> bs!1252162 m!6443724))

(declare-fun m!6443726 () Bool)

(assert (=> bs!1252162 m!6443726))

(assert (=> bs!1252162 m!6442590))

(assert (=> b!5418669 d!1729150))

(declare-fun b!5419633 () Bool)

(declare-fun e!3358997 () (InoxSet Context!9170))

(declare-fun e!3358998 () (InoxSet Context!9170))

(assert (=> b!5419633 (= e!3358997 e!3358998)))

(declare-fun c!945211 () Bool)

(assert (=> b!5419633 (= c!945211 ((_ is Cons!61779) (exprs!5085 lt!2209781)))))

(declare-fun bm!387891 () Bool)

(declare-fun call!387896 () (InoxSet Context!9170))

(assert (=> bm!387891 (= call!387896 (derivationStepZipperDown!649 (h!68227 (exprs!5085 lt!2209781)) (Context!9171 (t!375126 (exprs!5085 lt!2209781))) (h!68226 s!2326)))))

(declare-fun d!1729152 () Bool)

(declare-fun c!945210 () Bool)

(declare-fun e!3358999 () Bool)

(assert (=> d!1729152 (= c!945210 e!3358999)))

(declare-fun res!2305649 () Bool)

(assert (=> d!1729152 (=> (not res!2305649) (not e!3358999))))

(assert (=> d!1729152 (= res!2305649 ((_ is Cons!61779) (exprs!5085 lt!2209781)))))

(assert (=> d!1729152 (= (derivationStepZipperUp!573 lt!2209781 (h!68226 s!2326)) e!3358997)))

(declare-fun b!5419634 () Bool)

(assert (=> b!5419634 (= e!3358999 (nullable!5370 (h!68227 (exprs!5085 lt!2209781))))))

(declare-fun b!5419635 () Bool)

(assert (=> b!5419635 (= e!3358998 call!387896)))

(declare-fun b!5419636 () Bool)

(assert (=> b!5419636 (= e!3358998 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419637 () Bool)

(assert (=> b!5419637 (= e!3358997 ((_ map or) call!387896 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 lt!2209781))) (h!68226 s!2326))))))

(assert (= (and d!1729152 res!2305649) b!5419634))

(assert (= (and d!1729152 c!945210) b!5419637))

(assert (= (and d!1729152 (not c!945210)) b!5419633))

(assert (= (and b!5419633 c!945211) b!5419635))

(assert (= (and b!5419633 (not c!945211)) b!5419636))

(assert (= (or b!5419637 b!5419635) bm!387891))

(declare-fun m!6443728 () Bool)

(assert (=> bm!387891 m!6443728))

(declare-fun m!6443730 () Bool)

(assert (=> b!5419634 m!6443730))

(declare-fun m!6443732 () Bool)

(assert (=> b!5419637 m!6443732))

(assert (=> b!5418669 d!1729152))

(declare-fun d!1729154 () Bool)

(assert (=> d!1729154 (= (flatMap!928 lt!2209779 lambda!283574) (dynLambda!24345 lambda!283574 lt!2209781))))

(declare-fun lt!2210025 () Unit!154326)

(assert (=> d!1729154 (= lt!2210025 (choose!41029 lt!2209779 lt!2209781 lambda!283574))))

(assert (=> d!1729154 (= lt!2209779 (store ((as const (Array Context!9170 Bool)) false) lt!2209781 true))))

(assert (=> d!1729154 (= (lemmaFlatMapOnSingletonSet!460 lt!2209779 lt!2209781 lambda!283574) lt!2210025)))

(declare-fun b_lambda!206883 () Bool)

(assert (=> (not b_lambda!206883) (not d!1729154)))

(declare-fun bs!1252163 () Bool)

(assert (= bs!1252163 d!1729154))

(assert (=> bs!1252163 m!6442592))

(declare-fun m!6443734 () Bool)

(assert (=> bs!1252163 m!6443734))

(declare-fun m!6443736 () Bool)

(assert (=> bs!1252163 m!6443736))

(assert (=> bs!1252163 m!6442584))

(assert (=> b!5418669 d!1729154))

(declare-fun d!1729156 () Bool)

(assert (=> d!1729156 (isDefined!12015 (findConcatSeparationZippers!58 lt!2209787 (store ((as const (Array Context!9170 Bool)) false) lt!2209781 true) Nil!61778 s!2326 s!2326))))

(declare-fun lt!2210030 () Unit!154326)

(declare-fun choose!41046 ((InoxSet Context!9170) Context!9170 List!61902) Unit!154326)

(assert (=> d!1729156 (= lt!2210030 (choose!41046 lt!2209787 lt!2209781 s!2326))))

(assert (=> d!1729156 (matchZipper!1445 (appendTo!60 lt!2209787 lt!2209781) s!2326)))

(assert (=> d!1729156 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!58 lt!2209787 lt!2209781 s!2326) lt!2210030)))

(declare-fun bs!1252173 () Bool)

(assert (= bs!1252173 d!1729156))

(assert (=> bs!1252173 m!6442584))

(declare-fun m!6443798 () Bool)

(assert (=> bs!1252173 m!6443798))

(assert (=> bs!1252173 m!6442756))

(declare-fun m!6443800 () Bool)

(assert (=> bs!1252173 m!6443800))

(assert (=> bs!1252173 m!6443798))

(declare-fun m!6443802 () Bool)

(assert (=> bs!1252173 m!6443802))

(assert (=> bs!1252173 m!6442584))

(assert (=> bs!1252173 m!6442756))

(declare-fun m!6443804 () Bool)

(assert (=> bs!1252173 m!6443804))

(assert (=> b!5418689 d!1729156))

(declare-fun d!1729174 () Bool)

(declare-fun e!3359063 () Bool)

(assert (=> d!1729174 e!3359063))

(declare-fun res!2305672 () Bool)

(assert (=> d!1729174 (=> res!2305672 e!3359063)))

(declare-fun e!3359061 () Bool)

(assert (=> d!1729174 (= res!2305672 e!3359061)))

(declare-fun res!2305675 () Bool)

(assert (=> d!1729174 (=> (not res!2305675) (not e!3359061))))

(declare-fun lt!2210038 () Option!15312)

(assert (=> d!1729174 (= res!2305675 (isDefined!12015 lt!2210038))))

(declare-fun e!3359062 () Option!15312)

(assert (=> d!1729174 (= lt!2210038 e!3359062)))

(declare-fun c!945234 () Bool)

(declare-fun e!3359064 () Bool)

(assert (=> d!1729174 (= c!945234 e!3359064)))

(declare-fun res!2305674 () Bool)

(assert (=> d!1729174 (=> (not res!2305674) (not e!3359064))))

(assert (=> d!1729174 (= res!2305674 (matchZipper!1445 lt!2209787 Nil!61778))))

(assert (=> d!1729174 (= (++!13575 Nil!61778 s!2326) s!2326)))

(assert (=> d!1729174 (= (findConcatSeparationZippers!58 lt!2209787 lt!2209779 Nil!61778 s!2326 s!2326) lt!2210038)))

(declare-fun b!5419755 () Bool)

(declare-fun res!2305671 () Bool)

(assert (=> b!5419755 (=> (not res!2305671) (not e!3359061))))

(assert (=> b!5419755 (= res!2305671 (matchZipper!1445 lt!2209787 (_1!35703 (get!21304 lt!2210038))))))

(declare-fun b!5419756 () Bool)

(declare-fun res!2305673 () Bool)

(assert (=> b!5419756 (=> (not res!2305673) (not e!3359061))))

(assert (=> b!5419756 (= res!2305673 (matchZipper!1445 lt!2209779 (_2!35703 (get!21304 lt!2210038))))))

(declare-fun b!5419757 () Bool)

(declare-fun e!3359065 () Option!15312)

(assert (=> b!5419757 (= e!3359062 e!3359065)))

(declare-fun c!945233 () Bool)

(assert (=> b!5419757 (= c!945233 ((_ is Nil!61778) s!2326))))

(declare-fun b!5419758 () Bool)

(assert (=> b!5419758 (= e!3359061 (= (++!13575 (_1!35703 (get!21304 lt!2210038)) (_2!35703 (get!21304 lt!2210038))) s!2326))))

(declare-fun b!5419759 () Bool)

(assert (=> b!5419759 (= e!3359062 (Some!15311 (tuple2!64801 Nil!61778 s!2326)))))

(declare-fun b!5419760 () Bool)

(assert (=> b!5419760 (= e!3359065 None!15311)))

(declare-fun b!5419761 () Bool)

(declare-fun lt!2210040 () Unit!154326)

(declare-fun lt!2210039 () Unit!154326)

(assert (=> b!5419761 (= lt!2210040 lt!2210039)))

(assert (=> b!5419761 (= (++!13575 (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326)) s!2326)))

(assert (=> b!5419761 (= lt!2210039 (lemmaMoveElementToOtherListKeepsConcatEq!1849 Nil!61778 (h!68226 s!2326) (t!375125 s!2326) s!2326))))

(assert (=> b!5419761 (= e!3359065 (findConcatSeparationZippers!58 lt!2209787 lt!2209779 (++!13575 Nil!61778 (Cons!61778 (h!68226 s!2326) Nil!61778)) (t!375125 s!2326) s!2326))))

(declare-fun b!5419762 () Bool)

(assert (=> b!5419762 (= e!3359064 (matchZipper!1445 lt!2209779 s!2326))))

(declare-fun b!5419763 () Bool)

(assert (=> b!5419763 (= e!3359063 (not (isDefined!12015 lt!2210038)))))

(assert (= (and d!1729174 res!2305674) b!5419762))

(assert (= (and d!1729174 c!945234) b!5419759))

(assert (= (and d!1729174 (not c!945234)) b!5419757))

(assert (= (and b!5419757 c!945233) b!5419760))

(assert (= (and b!5419757 (not c!945233)) b!5419761))

(assert (= (and d!1729174 res!2305675) b!5419755))

(assert (= (and b!5419755 res!2305671) b!5419756))

(assert (= (and b!5419756 res!2305673) b!5419758))

(assert (= (and d!1729174 (not res!2305672)) b!5419763))

(declare-fun m!6443814 () Bool)

(assert (=> b!5419758 m!6443814))

(declare-fun m!6443816 () Bool)

(assert (=> b!5419758 m!6443816))

(declare-fun m!6443818 () Bool)

(assert (=> b!5419762 m!6443818))

(declare-fun m!6443820 () Bool)

(assert (=> d!1729174 m!6443820))

(declare-fun m!6443822 () Bool)

(assert (=> d!1729174 m!6443822))

(declare-fun m!6443824 () Bool)

(assert (=> d!1729174 m!6443824))

(assert (=> b!5419763 m!6443820))

(assert (=> b!5419756 m!6443814))

(declare-fun m!6443826 () Bool)

(assert (=> b!5419756 m!6443826))

(assert (=> b!5419761 m!6443036))

(assert (=> b!5419761 m!6443036))

(assert (=> b!5419761 m!6443040))

(assert (=> b!5419761 m!6443044))

(assert (=> b!5419761 m!6443036))

(declare-fun m!6443828 () Bool)

(assert (=> b!5419761 m!6443828))

(assert (=> b!5419755 m!6443814))

(declare-fun m!6443830 () Bool)

(assert (=> b!5419755 m!6443830))

(assert (=> b!5418689 d!1729174))

(declare-fun d!1729186 () Bool)

(assert (=> d!1729186 (= (get!21304 lt!2209801) (v!51340 lt!2209801))))

(assert (=> b!5418689 d!1729186))

(declare-fun b!5419775 () Bool)

(declare-fun e!3359071 () Bool)

(declare-fun lt!2210043 () List!61902)

(assert (=> b!5419775 (= e!3359071 (or (not (= (_2!35703 lt!2209778) Nil!61778)) (= lt!2210043 (_1!35703 lt!2209778))))))

(declare-fun b!5419774 () Bool)

(declare-fun res!2305680 () Bool)

(assert (=> b!5419774 (=> (not res!2305680) (not e!3359071))))

(declare-fun size!39876 (List!61902) Int)

(assert (=> b!5419774 (= res!2305680 (= (size!39876 lt!2210043) (+ (size!39876 (_1!35703 lt!2209778)) (size!39876 (_2!35703 lt!2209778)))))))

(declare-fun b!5419773 () Bool)

(declare-fun e!3359070 () List!61902)

(assert (=> b!5419773 (= e!3359070 (Cons!61778 (h!68226 (_1!35703 lt!2209778)) (++!13575 (t!375125 (_1!35703 lt!2209778)) (_2!35703 lt!2209778))))))

(declare-fun b!5419772 () Bool)

(assert (=> b!5419772 (= e!3359070 (_2!35703 lt!2209778))))

(declare-fun d!1729188 () Bool)

(assert (=> d!1729188 e!3359071))

(declare-fun res!2305681 () Bool)

(assert (=> d!1729188 (=> (not res!2305681) (not e!3359071))))

(declare-fun content!11110 (List!61902) (InoxSet C!30672))

(assert (=> d!1729188 (= res!2305681 (= (content!11110 lt!2210043) ((_ map or) (content!11110 (_1!35703 lt!2209778)) (content!11110 (_2!35703 lt!2209778)))))))

(assert (=> d!1729188 (= lt!2210043 e!3359070)))

(declare-fun c!945237 () Bool)

(assert (=> d!1729188 (= c!945237 ((_ is Nil!61778) (_1!35703 lt!2209778)))))

(assert (=> d!1729188 (= (++!13575 (_1!35703 lt!2209778) (_2!35703 lt!2209778)) lt!2210043)))

(assert (= (and d!1729188 c!945237) b!5419772))

(assert (= (and d!1729188 (not c!945237)) b!5419773))

(assert (= (and d!1729188 res!2305681) b!5419774))

(assert (= (and b!5419774 res!2305680) b!5419775))

(declare-fun m!6443832 () Bool)

(assert (=> b!5419774 m!6443832))

(declare-fun m!6443834 () Bool)

(assert (=> b!5419774 m!6443834))

(declare-fun m!6443836 () Bool)

(assert (=> b!5419774 m!6443836))

(declare-fun m!6443838 () Bool)

(assert (=> b!5419773 m!6443838))

(declare-fun m!6443840 () Bool)

(assert (=> d!1729188 m!6443840))

(declare-fun m!6443842 () Bool)

(assert (=> d!1729188 m!6443842))

(declare-fun m!6443844 () Bool)

(assert (=> d!1729188 m!6443844))

(assert (=> b!5418689 d!1729188))

(declare-fun d!1729190 () Bool)

(assert (=> d!1729190 (= (isDefined!12015 lt!2209801) (not (isEmpty!33781 lt!2209801)))))

(declare-fun bs!1252179 () Bool)

(assert (= bs!1252179 d!1729190))

(declare-fun m!6443846 () Bool)

(assert (=> bs!1252179 m!6443846))

(assert (=> b!5418689 d!1729190))

(assert (=> b!5418668 d!1729098))

(declare-fun d!1729192 () Bool)

(assert (=> d!1729192 (= (isEmpty!33777 (t!375126 (exprs!5085 (h!68228 zl!343)))) ((_ is Nil!61779) (t!375126 (exprs!5085 (h!68228 zl!343)))))))

(assert (=> b!5418709 d!1729192))

(declare-fun d!1729194 () Bool)

(declare-fun lt!2210044 () Regex!15201)

(assert (=> d!1729194 (validRegex!6937 lt!2210044)))

(assert (=> d!1729194 (= lt!2210044 (generalisedUnion!1130 (unfocusZipperList!643 (Cons!61780 lt!2209825 Nil!61780))))))

(assert (=> d!1729194 (= (unfocusZipper!943 (Cons!61780 lt!2209825 Nil!61780)) lt!2210044)))

(declare-fun bs!1252180 () Bool)

(assert (= bs!1252180 d!1729194))

(declare-fun m!6443848 () Bool)

(assert (=> bs!1252180 m!6443848))

(declare-fun m!6443850 () Bool)

(assert (=> bs!1252180 m!6443850))

(assert (=> bs!1252180 m!6443850))

(declare-fun m!6443852 () Bool)

(assert (=> bs!1252180 m!6443852))

(assert (=> b!5418687 d!1729194))

(declare-fun bs!1252181 () Bool)

(declare-fun b!5419777 () Bool)

(assert (= bs!1252181 (and b!5419777 d!1728930)))

(declare-fun lambda!283680 () Int)

(assert (=> bs!1252181 (not (= lambda!283680 lambda!283632))))

(declare-fun bs!1252182 () Bool)

(assert (= bs!1252182 (and b!5419777 d!1728974)))

(assert (=> bs!1252182 (not (= lambda!283680 lambda!283639))))

(declare-fun bs!1252183 () Bool)

(assert (= bs!1252183 (and b!5419777 b!5419540)))

(assert (=> bs!1252183 (= (and (= (reg!15530 r!7292) (reg!15530 lt!2209783)) (= r!7292 lt!2209783)) (= lambda!283680 lambda!283665))))

(declare-fun bs!1252184 () Bool)

(assert (= bs!1252184 (and b!5419777 b!5419424)))

(assert (=> bs!1252184 (= (and (= (reg!15530 r!7292) (reg!15530 lt!2209819)) (= r!7292 lt!2209819)) (= lambda!283680 lambda!283657))))

(declare-fun bs!1252185 () Bool)

(assert (= bs!1252185 (and b!5419777 b!5418682)))

(assert (=> bs!1252185 (not (= lambda!283680 lambda!283580))))

(assert (=> bs!1252181 (not (= lambda!283680 lambda!283633))))

(assert (=> bs!1252185 (not (= lambda!283680 lambda!283579))))

(declare-fun bs!1252186 () Bool)

(assert (= bs!1252186 (and b!5419777 b!5419426)))

(assert (=> bs!1252186 (not (= lambda!283680 lambda!283658))))

(assert (=> bs!1252185 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (reg!15530 r!7292) (reg!15530 (regOne!30914 r!7292))) (= r!7292 lt!2209771)) (= lambda!283680 lambda!283581))))

(declare-fun bs!1252187 () Bool)

(assert (= bs!1252187 (and b!5419777 d!1729026)))

(assert (=> bs!1252187 (not (= lambda!283680 lambda!283645))))

(assert (=> bs!1252187 (not (= lambda!283680 lambda!283644))))

(declare-fun bs!1252188 () Bool)

(assert (= bs!1252188 (and b!5419777 d!1728920)))

(assert (=> bs!1252188 (not (= lambda!283680 lambda!283625))))

(declare-fun bs!1252189 () Bool)

(assert (= bs!1252189 (and b!5419777 b!5418695)))

(assert (=> bs!1252189 (not (= lambda!283680 lambda!283577))))

(declare-fun bs!1252190 () Bool)

(assert (= bs!1252190 (and b!5419777 b!5418677)))

(assert (=> bs!1252190 (not (= lambda!283680 lambda!283572))))

(assert (=> bs!1252189 (not (= lambda!283680 lambda!283578))))

(assert (=> bs!1252190 (not (= lambda!283680 lambda!283573))))

(declare-fun bs!1252191 () Bool)

(assert (= bs!1252191 (and b!5419777 b!5419542)))

(assert (=> bs!1252191 (not (= lambda!283680 lambda!283666))))

(assert (=> b!5419777 true))

(assert (=> b!5419777 true))

(declare-fun bs!1252192 () Bool)

(declare-fun b!5419779 () Bool)

(assert (= bs!1252192 (and b!5419779 d!1728930)))

(declare-fun lambda!283681 () Int)

(assert (=> bs!1252192 (not (= lambda!283681 lambda!283632))))

(declare-fun bs!1252193 () Bool)

(assert (= bs!1252193 (and b!5419779 d!1728974)))

(assert (=> bs!1252193 (not (= lambda!283681 lambda!283639))))

(declare-fun bs!1252194 () Bool)

(assert (= bs!1252194 (and b!5419779 b!5419540)))

(assert (=> bs!1252194 (not (= lambda!283681 lambda!283665))))

(declare-fun bs!1252195 () Bool)

(assert (= bs!1252195 (and b!5419779 b!5419424)))

(assert (=> bs!1252195 (not (= lambda!283681 lambda!283657))))

(declare-fun bs!1252196 () Bool)

(assert (= bs!1252196 (and b!5419779 b!5418682)))

(assert (=> bs!1252196 (= (and (= s!2326 (_1!35703 lt!2209762)) (= (regOne!30914 r!7292) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 r!7292) lt!2209771)) (= lambda!283681 lambda!283580))))

(assert (=> bs!1252192 (= lambda!283681 lambda!283633)))

(assert (=> bs!1252196 (not (= lambda!283681 lambda!283579))))

(declare-fun bs!1252197 () Bool)

(assert (= bs!1252197 (and b!5419779 b!5419426)))

(assert (=> bs!1252197 (= (and (= (regOne!30914 r!7292) (regOne!30914 lt!2209819)) (= (regTwo!30914 r!7292) (regTwo!30914 lt!2209819))) (= lambda!283681 lambda!283658))))

(assert (=> bs!1252196 (not (= lambda!283681 lambda!283581))))

(declare-fun bs!1252198 () Bool)

(assert (= bs!1252198 (and b!5419779 d!1729026)))

(assert (=> bs!1252198 (= (= (regOne!30914 r!7292) lt!2209814) (= lambda!283681 lambda!283645))))

(declare-fun bs!1252199 () Bool)

(assert (= bs!1252199 (and b!5419779 b!5419777)))

(assert (=> bs!1252199 (not (= lambda!283681 lambda!283680))))

(assert (=> bs!1252198 (not (= lambda!283681 lambda!283644))))

(declare-fun bs!1252200 () Bool)

(assert (= bs!1252200 (and b!5419779 d!1728920)))

(assert (=> bs!1252200 (not (= lambda!283681 lambda!283625))))

(declare-fun bs!1252201 () Bool)

(assert (= bs!1252201 (and b!5419779 b!5418695)))

(assert (=> bs!1252201 (not (= lambda!283681 lambda!283577))))

(declare-fun bs!1252202 () Bool)

(assert (= bs!1252202 (and b!5419779 b!5418677)))

(assert (=> bs!1252202 (not (= lambda!283681 lambda!283572))))

(assert (=> bs!1252201 (= (= (regOne!30914 r!7292) lt!2209814) (= lambda!283681 lambda!283578))))

(assert (=> bs!1252202 (= lambda!283681 lambda!283573)))

(declare-fun bs!1252203 () Bool)

(assert (= bs!1252203 (and b!5419779 b!5419542)))

(assert (=> bs!1252203 (= (and (= (regOne!30914 r!7292) (regOne!30914 lt!2209783)) (= (regTwo!30914 r!7292) (regTwo!30914 lt!2209783))) (= lambda!283681 lambda!283666))))

(assert (=> b!5419779 true))

(assert (=> b!5419779 true))

(declare-fun b!5419776 () Bool)

(declare-fun e!3359075 () Bool)

(declare-fun e!3359078 () Bool)

(assert (=> b!5419776 (= e!3359075 e!3359078)))

(declare-fun c!945241 () Bool)

(assert (=> b!5419776 (= c!945241 ((_ is Star!15201) r!7292))))

(declare-fun e!3359074 () Bool)

(declare-fun call!387910 () Bool)

(assert (=> b!5419777 (= e!3359074 call!387910)))

(declare-fun b!5419778 () Bool)

(declare-fun c!945239 () Bool)

(assert (=> b!5419778 (= c!945239 ((_ is ElementMatch!15201) r!7292))))

(declare-fun e!3359076 () Bool)

(declare-fun e!3359073 () Bool)

(assert (=> b!5419778 (= e!3359076 e!3359073)))

(assert (=> b!5419779 (= e!3359078 call!387910)))

(declare-fun bm!387904 () Bool)

(declare-fun call!387909 () Bool)

(assert (=> bm!387904 (= call!387909 (isEmpty!33780 s!2326))))

(declare-fun b!5419780 () Bool)

(declare-fun e!3359077 () Bool)

(assert (=> b!5419780 (= e!3359075 e!3359077)))

(declare-fun res!2305684 () Bool)

(assert (=> b!5419780 (= res!2305684 (matchRSpec!2304 (regOne!30915 r!7292) s!2326))))

(assert (=> b!5419780 (=> res!2305684 e!3359077)))

(declare-fun bm!387905 () Bool)

(assert (=> bm!387905 (= call!387910 (Exists!2382 (ite c!945241 lambda!283680 lambda!283681)))))

(declare-fun d!1729196 () Bool)

(declare-fun c!945240 () Bool)

(assert (=> d!1729196 (= c!945240 ((_ is EmptyExpr!15201) r!7292))))

(declare-fun e!3359072 () Bool)

(assert (=> d!1729196 (= (matchRSpec!2304 r!7292 s!2326) e!3359072)))

(declare-fun b!5419781 () Bool)

(assert (=> b!5419781 (= e!3359073 (= s!2326 (Cons!61778 (c!944955 r!7292) Nil!61778)))))

(declare-fun b!5419782 () Bool)

(declare-fun res!2305683 () Bool)

(assert (=> b!5419782 (=> res!2305683 e!3359074)))

(assert (=> b!5419782 (= res!2305683 call!387909)))

(assert (=> b!5419782 (= e!3359078 e!3359074)))

(declare-fun b!5419783 () Bool)

(declare-fun c!945238 () Bool)

(assert (=> b!5419783 (= c!945238 ((_ is Union!15201) r!7292))))

(assert (=> b!5419783 (= e!3359073 e!3359075)))

(declare-fun b!5419784 () Bool)

(assert (=> b!5419784 (= e!3359077 (matchRSpec!2304 (regTwo!30915 r!7292) s!2326))))

(declare-fun b!5419785 () Bool)

(assert (=> b!5419785 (= e!3359072 e!3359076)))

(declare-fun res!2305682 () Bool)

(assert (=> b!5419785 (= res!2305682 (not ((_ is EmptyLang!15201) r!7292)))))

(assert (=> b!5419785 (=> (not res!2305682) (not e!3359076))))

(declare-fun b!5419786 () Bool)

(assert (=> b!5419786 (= e!3359072 call!387909)))

(assert (= (and d!1729196 c!945240) b!5419786))

(assert (= (and d!1729196 (not c!945240)) b!5419785))

(assert (= (and b!5419785 res!2305682) b!5419778))

(assert (= (and b!5419778 c!945239) b!5419781))

(assert (= (and b!5419778 (not c!945239)) b!5419783))

(assert (= (and b!5419783 c!945238) b!5419780))

(assert (= (and b!5419783 (not c!945238)) b!5419776))

(assert (= (and b!5419780 (not res!2305684)) b!5419784))

(assert (= (and b!5419776 c!945241) b!5419782))

(assert (= (and b!5419776 (not c!945241)) b!5419779))

(assert (= (and b!5419782 (not res!2305683)) b!5419777))

(assert (= (or b!5419777 b!5419779) bm!387905))

(assert (= (or b!5419786 b!5419782) bm!387904))

(assert (=> bm!387904 m!6442904))

(declare-fun m!6443854 () Bool)

(assert (=> b!5419780 m!6443854))

(declare-fun m!6443856 () Bool)

(assert (=> bm!387905 m!6443856))

(declare-fun m!6443858 () Bool)

(assert (=> b!5419784 m!6443858))

(assert (=> b!5418707 d!1729196))

(declare-fun b!5419787 () Bool)

(declare-fun e!3359084 () Bool)

(assert (=> b!5419787 (= e!3359084 (= (head!11624 s!2326) (c!944955 r!7292)))))

(declare-fun b!5419788 () Bool)

(declare-fun res!2305685 () Bool)

(declare-fun e!3359081 () Bool)

(assert (=> b!5419788 (=> res!2305685 e!3359081)))

(assert (=> b!5419788 (= res!2305685 e!3359084)))

(declare-fun res!2305686 () Bool)

(assert (=> b!5419788 (=> (not res!2305686) (not e!3359084))))

(declare-fun lt!2210045 () Bool)

(assert (=> b!5419788 (= res!2305686 lt!2210045)))

(declare-fun b!5419789 () Bool)

(declare-fun e!3359085 () Bool)

(declare-fun call!387911 () Bool)

(assert (=> b!5419789 (= e!3359085 (= lt!2210045 call!387911))))

(declare-fun b!5419790 () Bool)

(declare-fun e!3359083 () Bool)

(assert (=> b!5419790 (= e!3359081 e!3359083)))

(declare-fun res!2305692 () Bool)

(assert (=> b!5419790 (=> (not res!2305692) (not e!3359083))))

(assert (=> b!5419790 (= res!2305692 (not lt!2210045))))

(declare-fun b!5419792 () Bool)

(declare-fun e!3359079 () Bool)

(assert (=> b!5419792 (= e!3359079 (not lt!2210045))))

(declare-fun b!5419793 () Bool)

(declare-fun e!3359080 () Bool)

(assert (=> b!5419793 (= e!3359080 (matchR!7386 (derivativeStep!4275 r!7292 (head!11624 s!2326)) (tail!10721 s!2326)))))

(declare-fun b!5419794 () Bool)

(declare-fun e!3359082 () Bool)

(assert (=> b!5419794 (= e!3359082 (not (= (head!11624 s!2326) (c!944955 r!7292))))))

(declare-fun bm!387906 () Bool)

(assert (=> bm!387906 (= call!387911 (isEmpty!33780 s!2326))))

(declare-fun b!5419791 () Bool)

(declare-fun res!2305688 () Bool)

(assert (=> b!5419791 (=> res!2305688 e!3359081)))

(assert (=> b!5419791 (= res!2305688 (not ((_ is ElementMatch!15201) r!7292)))))

(assert (=> b!5419791 (= e!3359079 e!3359081)))

(declare-fun d!1729198 () Bool)

(assert (=> d!1729198 e!3359085))

(declare-fun c!945244 () Bool)

(assert (=> d!1729198 (= c!945244 ((_ is EmptyExpr!15201) r!7292))))

(assert (=> d!1729198 (= lt!2210045 e!3359080)))

(declare-fun c!945243 () Bool)

(assert (=> d!1729198 (= c!945243 (isEmpty!33780 s!2326))))

(assert (=> d!1729198 (validRegex!6937 r!7292)))

(assert (=> d!1729198 (= (matchR!7386 r!7292 s!2326) lt!2210045)))

(declare-fun b!5419795 () Bool)

(declare-fun res!2305687 () Bool)

(assert (=> b!5419795 (=> res!2305687 e!3359082)))

(assert (=> b!5419795 (= res!2305687 (not (isEmpty!33780 (tail!10721 s!2326))))))

(declare-fun b!5419796 () Bool)

(assert (=> b!5419796 (= e!3359085 e!3359079)))

(declare-fun c!945242 () Bool)

(assert (=> b!5419796 (= c!945242 ((_ is EmptyLang!15201) r!7292))))

(declare-fun b!5419797 () Bool)

(declare-fun res!2305690 () Bool)

(assert (=> b!5419797 (=> (not res!2305690) (not e!3359084))))

(assert (=> b!5419797 (= res!2305690 (isEmpty!33780 (tail!10721 s!2326)))))

(declare-fun b!5419798 () Bool)

(assert (=> b!5419798 (= e!3359083 e!3359082)))

(declare-fun res!2305689 () Bool)

(assert (=> b!5419798 (=> res!2305689 e!3359082)))

(assert (=> b!5419798 (= res!2305689 call!387911)))

(declare-fun b!5419799 () Bool)

(declare-fun res!2305691 () Bool)

(assert (=> b!5419799 (=> (not res!2305691) (not e!3359084))))

(assert (=> b!5419799 (= res!2305691 (not call!387911))))

(declare-fun b!5419800 () Bool)

(assert (=> b!5419800 (= e!3359080 (nullable!5370 r!7292))))

(assert (= (and d!1729198 c!945243) b!5419800))

(assert (= (and d!1729198 (not c!945243)) b!5419793))

(assert (= (and d!1729198 c!945244) b!5419789))

(assert (= (and d!1729198 (not c!945244)) b!5419796))

(assert (= (and b!5419796 c!945242) b!5419792))

(assert (= (and b!5419796 (not c!945242)) b!5419791))

(assert (= (and b!5419791 (not res!2305688)) b!5419788))

(assert (= (and b!5419788 res!2305686) b!5419799))

(assert (= (and b!5419799 res!2305691) b!5419797))

(assert (= (and b!5419797 res!2305690) b!5419787))

(assert (= (and b!5419788 (not res!2305685)) b!5419790))

(assert (= (and b!5419790 res!2305692) b!5419798))

(assert (= (and b!5419798 (not res!2305689)) b!5419795))

(assert (= (and b!5419795 (not res!2305687)) b!5419794))

(assert (= (or b!5419789 b!5419798 b!5419799) bm!387906))

(assert (=> b!5419793 m!6442908))

(assert (=> b!5419793 m!6442908))

(declare-fun m!6443860 () Bool)

(assert (=> b!5419793 m!6443860))

(assert (=> b!5419793 m!6442912))

(assert (=> b!5419793 m!6443860))

(assert (=> b!5419793 m!6442912))

(declare-fun m!6443862 () Bool)

(assert (=> b!5419793 m!6443862))

(assert (=> d!1729198 m!6442904))

(assert (=> d!1729198 m!6442748))

(assert (=> bm!387906 m!6442904))

(assert (=> b!5419794 m!6442908))

(assert (=> b!5419797 m!6442912))

(assert (=> b!5419797 m!6442912))

(assert (=> b!5419797 m!6443300))

(declare-fun m!6443864 () Bool)

(assert (=> b!5419800 m!6443864))

(assert (=> b!5419787 m!6442908))

(assert (=> b!5419795 m!6442912))

(assert (=> b!5419795 m!6442912))

(assert (=> b!5419795 m!6443300))

(assert (=> b!5418707 d!1729198))

(declare-fun d!1729200 () Bool)

(assert (=> d!1729200 (= (matchR!7386 r!7292 s!2326) (matchRSpec!2304 r!7292 s!2326))))

(declare-fun lt!2210046 () Unit!154326)

(assert (=> d!1729200 (= lt!2210046 (choose!41034 r!7292 s!2326))))

(assert (=> d!1729200 (validRegex!6937 r!7292)))

(assert (=> d!1729200 (= (mainMatchTheorem!2304 r!7292 s!2326) lt!2210046)))

(declare-fun bs!1252204 () Bool)

(assert (= bs!1252204 d!1729200))

(assert (=> bs!1252204 m!6442674))

(assert (=> bs!1252204 m!6442672))

(declare-fun m!6443866 () Bool)

(assert (=> bs!1252204 m!6443866))

(assert (=> bs!1252204 m!6442748))

(assert (=> b!5418707 d!1729200))

(declare-fun d!1729202 () Bool)

(assert (=> d!1729202 (= (flatMap!928 z!1189 lambda!283574) (choose!41028 z!1189 lambda!283574))))

(declare-fun bs!1252205 () Bool)

(assert (= bs!1252205 d!1729202))

(declare-fun m!6443868 () Bool)

(assert (=> bs!1252205 m!6443868))

(assert (=> b!5418685 d!1729202))

(declare-fun b!5419801 () Bool)

(declare-fun e!3359086 () (InoxSet Context!9170))

(declare-fun e!3359087 () (InoxSet Context!9170))

(assert (=> b!5419801 (= e!3359086 e!3359087)))

(declare-fun c!945246 () Bool)

(assert (=> b!5419801 (= c!945246 ((_ is Cons!61779) (exprs!5085 lt!2209820)))))

(declare-fun bm!387907 () Bool)

(declare-fun call!387912 () (InoxSet Context!9170))

(assert (=> bm!387907 (= call!387912 (derivationStepZipperDown!649 (h!68227 (exprs!5085 lt!2209820)) (Context!9171 (t!375126 (exprs!5085 lt!2209820))) (h!68226 s!2326)))))

(declare-fun d!1729204 () Bool)

(declare-fun c!945245 () Bool)

(declare-fun e!3359088 () Bool)

(assert (=> d!1729204 (= c!945245 e!3359088)))

(declare-fun res!2305693 () Bool)

(assert (=> d!1729204 (=> (not res!2305693) (not e!3359088))))

(assert (=> d!1729204 (= res!2305693 ((_ is Cons!61779) (exprs!5085 lt!2209820)))))

(assert (=> d!1729204 (= (derivationStepZipperUp!573 lt!2209820 (h!68226 s!2326)) e!3359086)))

(declare-fun b!5419802 () Bool)

(assert (=> b!5419802 (= e!3359088 (nullable!5370 (h!68227 (exprs!5085 lt!2209820))))))

(declare-fun b!5419803 () Bool)

(assert (=> b!5419803 (= e!3359087 call!387912)))

(declare-fun b!5419804 () Bool)

(assert (=> b!5419804 (= e!3359087 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419805 () Bool)

(assert (=> b!5419805 (= e!3359086 ((_ map or) call!387912 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 lt!2209820))) (h!68226 s!2326))))))

(assert (= (and d!1729204 res!2305693) b!5419802))

(assert (= (and d!1729204 c!945245) b!5419805))

(assert (= (and d!1729204 (not c!945245)) b!5419801))

(assert (= (and b!5419801 c!945246) b!5419803))

(assert (= (and b!5419801 (not c!945246)) b!5419804))

(assert (= (or b!5419805 b!5419803) bm!387907))

(declare-fun m!6443870 () Bool)

(assert (=> bm!387907 m!6443870))

(declare-fun m!6443872 () Bool)

(assert (=> b!5419802 m!6443872))

(declare-fun m!6443874 () Bool)

(assert (=> b!5419805 m!6443874))

(assert (=> b!5418685 d!1729204))

(declare-fun d!1729206 () Bool)

(assert (=> d!1729206 (= (nullable!5370 (h!68227 (exprs!5085 (h!68228 zl!343)))) (nullableFct!1605 (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun bs!1252206 () Bool)

(assert (= bs!1252206 d!1729206))

(declare-fun m!6443876 () Bool)

(assert (=> bs!1252206 m!6443876))

(assert (=> b!5418685 d!1729206))

(declare-fun b!5419806 () Bool)

(declare-fun e!3359089 () (InoxSet Context!9170))

(declare-fun e!3359090 () (InoxSet Context!9170))

(assert (=> b!5419806 (= e!3359089 e!3359090)))

(declare-fun c!945248 () Bool)

(assert (=> b!5419806 (= c!945248 ((_ is Cons!61779) (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343))))))))))

(declare-fun bm!387908 () Bool)

(declare-fun call!387913 () (InoxSet Context!9170))

(assert (=> bm!387908 (= call!387913 (derivationStepZipperDown!649 (h!68227 (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343))))))) (Context!9171 (t!375126 (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343)))))))) (h!68226 s!2326)))))

(declare-fun d!1729208 () Bool)

(declare-fun c!945247 () Bool)

(declare-fun e!3359091 () Bool)

(assert (=> d!1729208 (= c!945247 e!3359091)))

(declare-fun res!2305694 () Bool)

(assert (=> d!1729208 (=> (not res!2305694) (not e!3359091))))

(assert (=> d!1729208 (= res!2305694 ((_ is Cons!61779) (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343))))))))))

(assert (=> d!1729208 (= (derivationStepZipperUp!573 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343))))) (h!68226 s!2326)) e!3359089)))

(declare-fun b!5419807 () Bool)

(assert (=> b!5419807 (= e!3359091 (nullable!5370 (h!68227 (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343)))))))))))

(declare-fun b!5419808 () Bool)

(assert (=> b!5419808 (= e!3359090 call!387913)))

(declare-fun b!5419809 () Bool)

(assert (=> b!5419809 (= e!3359090 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419810 () Bool)

(assert (=> b!5419810 (= e!3359089 ((_ map or) call!387913 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 (Context!9171 (Cons!61779 (h!68227 (exprs!5085 (h!68228 zl!343))) (t!375126 (exprs!5085 (h!68228 zl!343)))))))) (h!68226 s!2326))))))

(assert (= (and d!1729208 res!2305694) b!5419807))

(assert (= (and d!1729208 c!945247) b!5419810))

(assert (= (and d!1729208 (not c!945247)) b!5419806))

(assert (= (and b!5419806 c!945248) b!5419808))

(assert (= (and b!5419806 (not c!945248)) b!5419809))

(assert (= (or b!5419810 b!5419808) bm!387908))

(declare-fun m!6443878 () Bool)

(assert (=> bm!387908 m!6443878))

(declare-fun m!6443880 () Bool)

(assert (=> b!5419807 m!6443880))

(declare-fun m!6443882 () Bool)

(assert (=> b!5419810 m!6443882))

(assert (=> b!5418685 d!1729208))

(declare-fun d!1729210 () Bool)

(assert (=> d!1729210 (= (flatMap!928 z!1189 lambda!283574) (dynLambda!24345 lambda!283574 (h!68228 zl!343)))))

(declare-fun lt!2210047 () Unit!154326)

(assert (=> d!1729210 (= lt!2210047 (choose!41029 z!1189 (h!68228 zl!343) lambda!283574))))

(assert (=> d!1729210 (= z!1189 (store ((as const (Array Context!9170 Bool)) false) (h!68228 zl!343) true))))

(assert (=> d!1729210 (= (lemmaFlatMapOnSingletonSet!460 z!1189 (h!68228 zl!343) lambda!283574) lt!2210047)))

(declare-fun b_lambda!206897 () Bool)

(assert (=> (not b_lambda!206897) (not d!1729210)))

(declare-fun bs!1252207 () Bool)

(assert (= bs!1252207 d!1729210))

(assert (=> bs!1252207 m!6442666))

(declare-fun m!6443884 () Bool)

(assert (=> bs!1252207 m!6443884))

(declare-fun m!6443886 () Bool)

(assert (=> bs!1252207 m!6443886))

(declare-fun m!6443888 () Bool)

(assert (=> bs!1252207 m!6443888))

(assert (=> b!5418685 d!1729210))

(declare-fun b!5419811 () Bool)

(declare-fun e!3359092 () (InoxSet Context!9170))

(declare-fun e!3359093 () (InoxSet Context!9170))

(assert (=> b!5419811 (= e!3359092 e!3359093)))

(declare-fun c!945250 () Bool)

(assert (=> b!5419811 (= c!945250 ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343))))))

(declare-fun bm!387909 () Bool)

(declare-fun call!387914 () (InoxSet Context!9170))

(assert (=> bm!387909 (= call!387914 (derivationStepZipperDown!649 (h!68227 (exprs!5085 (h!68228 zl!343))) (Context!9171 (t!375126 (exprs!5085 (h!68228 zl!343)))) (h!68226 s!2326)))))

(declare-fun d!1729212 () Bool)

(declare-fun c!945249 () Bool)

(declare-fun e!3359094 () Bool)

(assert (=> d!1729212 (= c!945249 e!3359094)))

(declare-fun res!2305695 () Bool)

(assert (=> d!1729212 (=> (not res!2305695) (not e!3359094))))

(assert (=> d!1729212 (= res!2305695 ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343))))))

(assert (=> d!1729212 (= (derivationStepZipperUp!573 (h!68228 zl!343) (h!68226 s!2326)) e!3359092)))

(declare-fun b!5419812 () Bool)

(assert (=> b!5419812 (= e!3359094 (nullable!5370 (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun b!5419813 () Bool)

(assert (=> b!5419813 (= e!3359093 call!387914)))

(declare-fun b!5419814 () Bool)

(assert (=> b!5419814 (= e!3359093 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419815 () Bool)

(assert (=> b!5419815 (= e!3359092 ((_ map or) call!387914 (derivationStepZipperUp!573 (Context!9171 (t!375126 (exprs!5085 (h!68228 zl!343)))) (h!68226 s!2326))))))

(assert (= (and d!1729212 res!2305695) b!5419812))

(assert (= (and d!1729212 c!945249) b!5419815))

(assert (= (and d!1729212 (not c!945249)) b!5419811))

(assert (= (and b!5419811 c!945250) b!5419813))

(assert (= (and b!5419811 (not c!945250)) b!5419814))

(assert (= (or b!5419815 b!5419813) bm!387909))

(declare-fun m!6443890 () Bool)

(assert (=> bm!387909 m!6443890))

(assert (=> b!5419812 m!6442656))

(declare-fun m!6443892 () Bool)

(assert (=> b!5419815 m!6443892))

(assert (=> b!5418685 d!1729212))

(declare-fun b!5419816 () Bool)

(declare-fun e!3359099 () (InoxSet Context!9170))

(assert (=> b!5419816 (= e!3359099 (store ((as const (Array Context!9170 Bool)) false) lt!2209820 true))))

(declare-fun b!5419817 () Bool)

(declare-fun e!3359096 () (InoxSet Context!9170))

(assert (=> b!5419817 (= e!3359096 ((as const (Array Context!9170 Bool)) false))))

(declare-fun b!5419818 () Bool)

(declare-fun e!3359097 () (InoxSet Context!9170))

(declare-fun call!387916 () (InoxSet Context!9170))

(declare-fun call!387920 () (InoxSet Context!9170))

(assert (=> b!5419818 (= e!3359097 ((_ map or) call!387916 call!387920))))

(declare-fun bm!387910 () Bool)

(declare-fun call!387915 () (InoxSet Context!9170))

(assert (=> bm!387910 (= call!387915 call!387916)))

(declare-fun bm!387911 () Bool)

(declare-fun call!387917 () (InoxSet Context!9170))

(assert (=> bm!387911 (= call!387917 call!387915)))

(declare-fun b!5419819 () Bool)

(declare-fun c!945251 () Bool)

(declare-fun e!3359100 () Bool)

(assert (=> b!5419819 (= c!945251 e!3359100)))

(declare-fun res!2305696 () Bool)

(assert (=> b!5419819 (=> (not res!2305696) (not e!3359100))))

(assert (=> b!5419819 (= res!2305696 ((_ is Concat!24046) (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun e!3359095 () (InoxSet Context!9170))

(assert (=> b!5419819 (= e!3359097 e!3359095)))

(declare-fun bm!387912 () Bool)

(declare-fun call!387918 () List!61903)

(declare-fun call!387919 () List!61903)

(assert (=> bm!387912 (= call!387918 call!387919)))

(declare-fun b!5419820 () Bool)

(assert (=> b!5419820 (= e!3359095 ((_ map or) call!387920 call!387915))))

(declare-fun bm!387913 () Bool)

(declare-fun c!945255 () Bool)

(assert (=> bm!387913 (= call!387920 (derivationStepZipperDown!649 (ite c!945255 (regTwo!30915 (h!68227 (exprs!5085 (h!68228 zl!343)))) (regOne!30914 (h!68227 (exprs!5085 (h!68228 zl!343))))) (ite c!945255 lt!2209820 (Context!9171 call!387919)) (h!68226 s!2326)))))

(declare-fun b!5419821 () Bool)

(assert (=> b!5419821 (= e!3359099 e!3359097)))

(assert (=> b!5419821 (= c!945255 ((_ is Union!15201) (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun bm!387914 () Bool)

(declare-fun c!945253 () Bool)

(assert (=> bm!387914 (= call!387919 ($colon$colon!1504 (exprs!5085 lt!2209820) (ite (or c!945251 c!945253) (regTwo!30914 (h!68227 (exprs!5085 (h!68228 zl!343)))) (h!68227 (exprs!5085 (h!68228 zl!343))))))))

(declare-fun d!1729214 () Bool)

(declare-fun c!945252 () Bool)

(assert (=> d!1729214 (= c!945252 (and ((_ is ElementMatch!15201) (h!68227 (exprs!5085 (h!68228 zl!343)))) (= (c!944955 (h!68227 (exprs!5085 (h!68228 zl!343)))) (h!68226 s!2326))))))

(assert (=> d!1729214 (= (derivationStepZipperDown!649 (h!68227 (exprs!5085 (h!68228 zl!343))) lt!2209820 (h!68226 s!2326)) e!3359099)))

(declare-fun b!5419822 () Bool)

(assert (=> b!5419822 (= e!3359096 call!387917)))

(declare-fun b!5419823 () Bool)

(declare-fun e!3359098 () (InoxSet Context!9170))

(assert (=> b!5419823 (= e!3359098 call!387917)))

(declare-fun b!5419824 () Bool)

(assert (=> b!5419824 (= e!3359100 (nullable!5370 (regOne!30914 (h!68227 (exprs!5085 (h!68228 zl!343))))))))

(declare-fun b!5419825 () Bool)

(declare-fun c!945254 () Bool)

(assert (=> b!5419825 (= c!945254 ((_ is Star!15201) (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(assert (=> b!5419825 (= e!3359098 e!3359096)))

(declare-fun bm!387915 () Bool)

(assert (=> bm!387915 (= call!387916 (derivationStepZipperDown!649 (ite c!945255 (regOne!30915 (h!68227 (exprs!5085 (h!68228 zl!343)))) (ite c!945251 (regTwo!30914 (h!68227 (exprs!5085 (h!68228 zl!343)))) (ite c!945253 (regOne!30914 (h!68227 (exprs!5085 (h!68228 zl!343)))) (reg!15530 (h!68227 (exprs!5085 (h!68228 zl!343))))))) (ite (or c!945255 c!945251) lt!2209820 (Context!9171 call!387918)) (h!68226 s!2326)))))

(declare-fun b!5419826 () Bool)

(assert (=> b!5419826 (= e!3359095 e!3359098)))

(assert (=> b!5419826 (= c!945253 ((_ is Concat!24046) (h!68227 (exprs!5085 (h!68228 zl!343)))))))

(assert (= (and d!1729214 c!945252) b!5419816))

(assert (= (and d!1729214 (not c!945252)) b!5419821))

(assert (= (and b!5419821 c!945255) b!5419818))

(assert (= (and b!5419821 (not c!945255)) b!5419819))

(assert (= (and b!5419819 res!2305696) b!5419824))

(assert (= (and b!5419819 c!945251) b!5419820))

(assert (= (and b!5419819 (not c!945251)) b!5419826))

(assert (= (and b!5419826 c!945253) b!5419823))

(assert (= (and b!5419826 (not c!945253)) b!5419825))

(assert (= (and b!5419825 c!945254) b!5419822))

(assert (= (and b!5419825 (not c!945254)) b!5419817))

(assert (= (or b!5419823 b!5419822) bm!387912))

(assert (= (or b!5419823 b!5419822) bm!387911))

(assert (= (or b!5419820 bm!387912) bm!387914))

(assert (= (or b!5419820 bm!387911) bm!387910))

(assert (= (or b!5419818 b!5419820) bm!387913))

(assert (= (or b!5419818 bm!387910) bm!387915))

(declare-fun m!6443894 () Bool)

(assert (=> bm!387914 m!6443894))

(declare-fun m!6443896 () Bool)

(assert (=> b!5419824 m!6443896))

(declare-fun m!6443898 () Bool)

(assert (=> b!5419816 m!6443898))

(declare-fun m!6443900 () Bool)

(assert (=> bm!387915 m!6443900))

(declare-fun m!6443902 () Bool)

(assert (=> bm!387913 m!6443902))

(assert (=> b!5418685 d!1729214))

(declare-fun bs!1252208 () Bool)

(declare-fun d!1729216 () Bool)

(assert (= bs!1252208 (and d!1729216 d!1728892)))

(declare-fun lambda!283684 () Int)

(assert (=> bs!1252208 (= lambda!283684 lambda!283616)))

(declare-fun bs!1252209 () Bool)

(assert (= bs!1252209 (and d!1729216 d!1728968)))

(assert (=> bs!1252209 (= lambda!283684 lambda!283638)))

(declare-fun bs!1252210 () Bool)

(assert (= bs!1252210 (and d!1729216 d!1728882)))

(assert (=> bs!1252210 (= lambda!283684 lambda!283605)))

(declare-fun bs!1252211 () Bool)

(assert (= bs!1252211 (and d!1729216 b!5418711)))

(assert (=> bs!1252211 (= lambda!283684 lambda!283576)))

(declare-fun bs!1252212 () Bool)

(assert (= bs!1252212 (and d!1729216 d!1729036)))

(assert (=> bs!1252212 (= lambda!283684 lambda!283651)))

(declare-fun bs!1252213 () Bool)

(assert (= bs!1252213 (and d!1729216 d!1728888)))

(assert (=> bs!1252213 (= lambda!283684 lambda!283611)))

(declare-fun b!5419847 () Bool)

(declare-fun e!3359118 () Regex!15201)

(assert (=> b!5419847 (= e!3359118 (Concat!24046 (h!68227 (exprs!5085 (h!68228 zl!343))) (generalisedConcat!870 (t!375126 (exprs!5085 (h!68228 zl!343))))))))

(declare-fun b!5419848 () Bool)

(declare-fun e!3359113 () Regex!15201)

(assert (=> b!5419848 (= e!3359113 (h!68227 (exprs!5085 (h!68228 zl!343))))))

(declare-fun b!5419849 () Bool)

(assert (=> b!5419849 (= e!3359118 EmptyExpr!15201)))

(declare-fun e!3359115 () Bool)

(assert (=> d!1729216 e!3359115))

(declare-fun res!2305701 () Bool)

(assert (=> d!1729216 (=> (not res!2305701) (not e!3359115))))

(declare-fun lt!2210050 () Regex!15201)

(assert (=> d!1729216 (= res!2305701 (validRegex!6937 lt!2210050))))

(assert (=> d!1729216 (= lt!2210050 e!3359113)))

(declare-fun c!945265 () Bool)

(declare-fun e!3359114 () Bool)

(assert (=> d!1729216 (= c!945265 e!3359114)))

(declare-fun res!2305702 () Bool)

(assert (=> d!1729216 (=> (not res!2305702) (not e!3359114))))

(assert (=> d!1729216 (= res!2305702 ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343))))))

(assert (=> d!1729216 (forall!14546 (exprs!5085 (h!68228 zl!343)) lambda!283684)))

(assert (=> d!1729216 (= (generalisedConcat!870 (exprs!5085 (h!68228 zl!343))) lt!2210050)))

(declare-fun b!5419850 () Bool)

(declare-fun e!3359116 () Bool)

(declare-fun isEmptyExpr!985 (Regex!15201) Bool)

(assert (=> b!5419850 (= e!3359116 (isEmptyExpr!985 lt!2210050))))

(declare-fun b!5419851 () Bool)

(declare-fun e!3359117 () Bool)

(declare-fun isConcat!508 (Regex!15201) Bool)

(assert (=> b!5419851 (= e!3359117 (isConcat!508 lt!2210050))))

(declare-fun b!5419852 () Bool)

(assert (=> b!5419852 (= e!3359113 e!3359118)))

(declare-fun c!945266 () Bool)

(assert (=> b!5419852 (= c!945266 ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343))))))

(declare-fun b!5419853 () Bool)

(assert (=> b!5419853 (= e!3359117 (= lt!2210050 (head!11625 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun b!5419854 () Bool)

(assert (=> b!5419854 (= e!3359115 e!3359116)))

(declare-fun c!945267 () Bool)

(assert (=> b!5419854 (= c!945267 (isEmpty!33777 (exprs!5085 (h!68228 zl!343))))))

(declare-fun b!5419855 () Bool)

(assert (=> b!5419855 (= e!3359116 e!3359117)))

(declare-fun c!945264 () Bool)

(assert (=> b!5419855 (= c!945264 (isEmpty!33777 (tail!10722 (exprs!5085 (h!68228 zl!343)))))))

(declare-fun b!5419856 () Bool)

(assert (=> b!5419856 (= e!3359114 (isEmpty!33777 (t!375126 (exprs!5085 (h!68228 zl!343)))))))

(assert (= (and d!1729216 res!2305702) b!5419856))

(assert (= (and d!1729216 c!945265) b!5419848))

(assert (= (and d!1729216 (not c!945265)) b!5419852))

(assert (= (and b!5419852 c!945266) b!5419847))

(assert (= (and b!5419852 (not c!945266)) b!5419849))

(assert (= (and d!1729216 res!2305701) b!5419854))

(assert (= (and b!5419854 c!945267) b!5419850))

(assert (= (and b!5419854 (not c!945267)) b!5419855))

(assert (= (and b!5419855 c!945264) b!5419853))

(assert (= (and b!5419855 (not c!945264)) b!5419851))

(declare-fun m!6443904 () Bool)

(assert (=> b!5419853 m!6443904))

(declare-fun m!6443906 () Bool)

(assert (=> b!5419855 m!6443906))

(assert (=> b!5419855 m!6443906))

(declare-fun m!6443908 () Bool)

(assert (=> b!5419855 m!6443908))

(declare-fun m!6443910 () Bool)

(assert (=> b!5419847 m!6443910))

(assert (=> b!5419856 m!6442738))

(declare-fun m!6443912 () Bool)

(assert (=> b!5419851 m!6443912))

(declare-fun m!6443914 () Bool)

(assert (=> d!1729216 m!6443914))

(declare-fun m!6443916 () Bool)

(assert (=> d!1729216 m!6443916))

(declare-fun m!6443918 () Bool)

(assert (=> b!5419850 m!6443918))

(declare-fun m!6443920 () Bool)

(assert (=> b!5419854 m!6443920))

(assert (=> b!5418706 d!1729216))

(declare-fun d!1729218 () Bool)

(declare-fun c!945268 () Bool)

(assert (=> d!1729218 (= c!945268 (isEmpty!33780 (t!375125 s!2326)))))

(declare-fun e!3359119 () Bool)

(assert (=> d!1729218 (= (matchZipper!1445 lt!2209808 (t!375125 s!2326)) e!3359119)))

(declare-fun b!5419857 () Bool)

(assert (=> b!5419857 (= e!3359119 (nullableZipper!1453 lt!2209808))))

(declare-fun b!5419858 () Bool)

(assert (=> b!5419858 (= e!3359119 (matchZipper!1445 (derivationStepZipper!1440 lt!2209808 (head!11624 (t!375125 s!2326))) (tail!10721 (t!375125 s!2326))))))

(assert (= (and d!1729218 c!945268) b!5419857))

(assert (= (and d!1729218 (not c!945268)) b!5419858))

(assert (=> d!1729218 m!6443190))

(declare-fun m!6443922 () Bool)

(assert (=> b!5419857 m!6443922))

(assert (=> b!5419858 m!6443194))

(assert (=> b!5419858 m!6443194))

(declare-fun m!6443924 () Bool)

(assert (=> b!5419858 m!6443924))

(assert (=> b!5419858 m!6443198))

(assert (=> b!5419858 m!6443924))

(assert (=> b!5419858 m!6443198))

(declare-fun m!6443926 () Bool)

(assert (=> b!5419858 m!6443926))

(assert (=> b!5418705 d!1729218))

(declare-fun d!1729220 () Bool)

(declare-fun c!945269 () Bool)

(assert (=> d!1729220 (= c!945269 (isEmpty!33780 s!2326))))

(declare-fun e!3359120 () Bool)

(assert (=> d!1729220 (= (matchZipper!1445 lt!2209769 s!2326) e!3359120)))

(declare-fun b!5419859 () Bool)

(assert (=> b!5419859 (= e!3359120 (nullableZipper!1453 lt!2209769))))

(declare-fun b!5419860 () Bool)

(assert (=> b!5419860 (= e!3359120 (matchZipper!1445 (derivationStepZipper!1440 lt!2209769 (head!11624 s!2326)) (tail!10721 s!2326)))))

(assert (= (and d!1729220 c!945269) b!5419859))

(assert (= (and d!1729220 (not c!945269)) b!5419860))

(assert (=> d!1729220 m!6442904))

(declare-fun m!6443928 () Bool)

(assert (=> b!5419859 m!6443928))

(assert (=> b!5419860 m!6442908))

(assert (=> b!5419860 m!6442908))

(declare-fun m!6443930 () Bool)

(assert (=> b!5419860 m!6443930))

(assert (=> b!5419860 m!6442912))

(assert (=> b!5419860 m!6443930))

(assert (=> b!5419860 m!6442912))

(declare-fun m!6443932 () Bool)

(assert (=> b!5419860 m!6443932))

(assert (=> b!5418705 d!1729220))

(declare-fun d!1729222 () Bool)

(declare-fun c!945270 () Bool)

(assert (=> d!1729222 (= c!945270 (isEmpty!33780 (_2!35703 lt!2209778)))))

(declare-fun e!3359121 () Bool)

(assert (=> d!1729222 (= (matchZipper!1445 lt!2209779 (_2!35703 lt!2209778)) e!3359121)))

(declare-fun b!5419861 () Bool)

(assert (=> b!5419861 (= e!3359121 (nullableZipper!1453 lt!2209779))))

(declare-fun b!5419862 () Bool)

(assert (=> b!5419862 (= e!3359121 (matchZipper!1445 (derivationStepZipper!1440 lt!2209779 (head!11624 (_2!35703 lt!2209778))) (tail!10721 (_2!35703 lt!2209778))))))

(assert (= (and d!1729222 c!945270) b!5419861))

(assert (= (and d!1729222 (not c!945270)) b!5419862))

(assert (=> d!1729222 m!6443552))

(declare-fun m!6443934 () Bool)

(assert (=> b!5419861 m!6443934))

(assert (=> b!5419862 m!6443544))

(assert (=> b!5419862 m!6443544))

(declare-fun m!6443936 () Bool)

(assert (=> b!5419862 m!6443936))

(assert (=> b!5419862 m!6443548))

(assert (=> b!5419862 m!6443936))

(assert (=> b!5419862 m!6443548))

(declare-fun m!6443938 () Bool)

(assert (=> b!5419862 m!6443938))

(assert (=> b!5418683 d!1729222))

(declare-fun d!1729224 () Bool)

(assert (=> d!1729224 (= (isEmpty!33776 (t!375127 zl!343)) ((_ is Nil!61780) (t!375127 zl!343)))))

(assert (=> b!5418704 d!1729224))

(declare-fun d!1729226 () Bool)

(assert (=> d!1729226 (= (++!13575 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799)) (_2!35703 lt!2209762)) (++!13575 (_1!35703 lt!2209799) (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762))))))

(declare-fun lt!2210053 () Unit!154326)

(declare-fun choose!41050 (List!61902 List!61902 List!61902) Unit!154326)

(assert (=> d!1729226 (= lt!2210053 (choose!41050 (_1!35703 lt!2209799) (_2!35703 lt!2209799) (_2!35703 lt!2209762)))))

(assert (=> d!1729226 (= (lemmaConcatAssociativity!2836 (_1!35703 lt!2209799) (_2!35703 lt!2209799) (_2!35703 lt!2209762)) lt!2210053)))

(declare-fun bs!1252214 () Bool)

(assert (= bs!1252214 d!1729226))

(assert (=> bs!1252214 m!6442710))

(assert (=> bs!1252214 m!6442712))

(assert (=> bs!1252214 m!6442726))

(declare-fun m!6443940 () Bool)

(assert (=> bs!1252214 m!6443940))

(assert (=> bs!1252214 m!6442726))

(assert (=> bs!1252214 m!6442728))

(assert (=> bs!1252214 m!6442710))

(assert (=> b!5418682 d!1729226))

(declare-fun b!5419863 () Bool)

(declare-fun res!2305706 () Bool)

(declare-fun e!3359125 () Bool)

(assert (=> b!5419863 (=> (not res!2305706) (not e!3359125))))

(declare-fun lt!2210055 () Option!15312)

(assert (=> b!5419863 (= res!2305706 (matchR!7386 lt!2209771 (_2!35703 (get!21304 lt!2210055))))))

(declare-fun b!5419864 () Bool)

(assert (=> b!5419864 (= e!3359125 (= (++!13575 (_1!35703 (get!21304 lt!2210055)) (_2!35703 (get!21304 lt!2210055))) (_1!35703 lt!2209762)))))

(declare-fun b!5419865 () Bool)

(declare-fun e!3359122 () Option!15312)

(declare-fun e!3359126 () Option!15312)

(assert (=> b!5419865 (= e!3359122 e!3359126)))

(declare-fun c!945271 () Bool)

(assert (=> b!5419865 (= c!945271 ((_ is Nil!61778) (_1!35703 lt!2209762)))))

(declare-fun b!5419866 () Bool)

(assert (=> b!5419866 (= e!3359122 (Some!15311 (tuple2!64801 Nil!61778 (_1!35703 lt!2209762))))))

(declare-fun b!5419867 () Bool)

(declare-fun e!3359123 () Bool)

(assert (=> b!5419867 (= e!3359123 (matchR!7386 lt!2209771 (_1!35703 lt!2209762)))))

(declare-fun b!5419868 () Bool)

(declare-fun res!2305707 () Bool)

(assert (=> b!5419868 (=> (not res!2305707) (not e!3359125))))

(assert (=> b!5419868 (= res!2305707 (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 (get!21304 lt!2210055))))))

(declare-fun d!1729228 () Bool)

(declare-fun e!3359124 () Bool)

(assert (=> d!1729228 e!3359124))

(declare-fun res!2305704 () Bool)

(assert (=> d!1729228 (=> res!2305704 e!3359124)))

(assert (=> d!1729228 (= res!2305704 e!3359125)))

(declare-fun res!2305703 () Bool)

(assert (=> d!1729228 (=> (not res!2305703) (not e!3359125))))

(assert (=> d!1729228 (= res!2305703 (isDefined!12015 lt!2210055))))

(assert (=> d!1729228 (= lt!2210055 e!3359122)))

(declare-fun c!945272 () Bool)

(assert (=> d!1729228 (= c!945272 e!3359123)))

(declare-fun res!2305705 () Bool)

(assert (=> d!1729228 (=> (not res!2305705) (not e!3359123))))

(assert (=> d!1729228 (= res!2305705 (matchR!7386 (reg!15530 (regOne!30914 r!7292)) Nil!61778))))

(assert (=> d!1729228 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729228 (= (findConcatSeparation!1726 (reg!15530 (regOne!30914 r!7292)) lt!2209771 Nil!61778 (_1!35703 lt!2209762) (_1!35703 lt!2209762)) lt!2210055)))

(declare-fun b!5419869 () Bool)

(assert (=> b!5419869 (= e!3359126 None!15311)))

(declare-fun b!5419870 () Bool)

(assert (=> b!5419870 (= e!3359124 (not (isDefined!12015 lt!2210055)))))

(declare-fun b!5419871 () Bool)

(declare-fun lt!2210056 () Unit!154326)

(declare-fun lt!2210054 () Unit!154326)

(assert (=> b!5419871 (= lt!2210056 lt!2210054)))

(assert (=> b!5419871 (= (++!13575 (++!13575 Nil!61778 (Cons!61778 (h!68226 (_1!35703 lt!2209762)) Nil!61778)) (t!375125 (_1!35703 lt!2209762))) (_1!35703 lt!2209762))))

(assert (=> b!5419871 (= lt!2210054 (lemmaMoveElementToOtherListKeepsConcatEq!1849 Nil!61778 (h!68226 (_1!35703 lt!2209762)) (t!375125 (_1!35703 lt!2209762)) (_1!35703 lt!2209762)))))

(assert (=> b!5419871 (= e!3359126 (findConcatSeparation!1726 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (++!13575 Nil!61778 (Cons!61778 (h!68226 (_1!35703 lt!2209762)) Nil!61778)) (t!375125 (_1!35703 lt!2209762)) (_1!35703 lt!2209762)))))

(assert (= (and d!1729228 res!2305705) b!5419867))

(assert (= (and d!1729228 c!945272) b!5419866))

(assert (= (and d!1729228 (not c!945272)) b!5419865))

(assert (= (and b!5419865 c!945271) b!5419869))

(assert (= (and b!5419865 (not c!945271)) b!5419871))

(assert (= (and d!1729228 res!2305703) b!5419868))

(assert (= (and b!5419868 res!2305707) b!5419863))

(assert (= (and b!5419863 res!2305706) b!5419864))

(assert (= (and d!1729228 (not res!2305704)) b!5419870))

(declare-fun m!6443942 () Bool)

(assert (=> b!5419871 m!6443942))

(assert (=> b!5419871 m!6443942))

(declare-fun m!6443944 () Bool)

(assert (=> b!5419871 m!6443944))

(declare-fun m!6443946 () Bool)

(assert (=> b!5419871 m!6443946))

(assert (=> b!5419871 m!6443942))

(declare-fun m!6443948 () Bool)

(assert (=> b!5419871 m!6443948))

(declare-fun m!6443950 () Bool)

(assert (=> b!5419864 m!6443950))

(declare-fun m!6443952 () Bool)

(assert (=> b!5419864 m!6443952))

(assert (=> b!5419863 m!6443950))

(declare-fun m!6443954 () Bool)

(assert (=> b!5419863 m!6443954))

(assert (=> b!5419868 m!6443950))

(declare-fun m!6443956 () Bool)

(assert (=> b!5419868 m!6443956))

(declare-fun m!6443958 () Bool)

(assert (=> d!1729228 m!6443958))

(declare-fun m!6443960 () Bool)

(assert (=> d!1729228 m!6443960))

(assert (=> d!1729228 m!6443272))

(declare-fun m!6443962 () Bool)

(assert (=> b!5419867 m!6443962))

(assert (=> b!5419870 m!6443958))

(assert (=> b!5418682 d!1729228))

(declare-fun d!1729230 () Bool)

(assert (=> d!1729230 (= (matchR!7386 lt!2209814 (_1!35703 lt!2209762)) (matchRSpec!2304 lt!2209814 (_1!35703 lt!2209762)))))

(declare-fun lt!2210057 () Unit!154326)

(assert (=> d!1729230 (= lt!2210057 (choose!41034 lt!2209814 (_1!35703 lt!2209762)))))

(assert (=> d!1729230 (validRegex!6937 lt!2209814)))

(assert (=> d!1729230 (= (mainMatchTheorem!2304 lt!2209814 (_1!35703 lt!2209762)) lt!2210057)))

(declare-fun bs!1252215 () Bool)

(assert (= bs!1252215 d!1729230))

(assert (=> bs!1252215 m!6442630))

(assert (=> bs!1252215 m!6442718))

(declare-fun m!6443964 () Bool)

(assert (=> bs!1252215 m!6443964))

(assert (=> bs!1252215 m!6443206))

(assert (=> b!5418682 d!1729230))

(declare-fun lt!2210058 () List!61902)

(declare-fun e!3359128 () Bool)

(declare-fun b!5419875 () Bool)

(assert (=> b!5419875 (= e!3359128 (or (not (= (_2!35703 lt!2209762) Nil!61778)) (= lt!2210058 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799)))))))

(declare-fun b!5419874 () Bool)

(declare-fun res!2305708 () Bool)

(assert (=> b!5419874 (=> (not res!2305708) (not e!3359128))))

(assert (=> b!5419874 (= res!2305708 (= (size!39876 lt!2210058) (+ (size!39876 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799))) (size!39876 (_2!35703 lt!2209762)))))))

(declare-fun b!5419873 () Bool)

(declare-fun e!3359127 () List!61902)

(assert (=> b!5419873 (= e!3359127 (Cons!61778 (h!68226 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799))) (++!13575 (t!375125 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799))) (_2!35703 lt!2209762))))))

(declare-fun b!5419872 () Bool)

(assert (=> b!5419872 (= e!3359127 (_2!35703 lt!2209762))))

(declare-fun d!1729232 () Bool)

(assert (=> d!1729232 e!3359128))

(declare-fun res!2305709 () Bool)

(assert (=> d!1729232 (=> (not res!2305709) (not e!3359128))))

(assert (=> d!1729232 (= res!2305709 (= (content!11110 lt!2210058) ((_ map or) (content!11110 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799))) (content!11110 (_2!35703 lt!2209762)))))))

(assert (=> d!1729232 (= lt!2210058 e!3359127)))

(declare-fun c!945273 () Bool)

(assert (=> d!1729232 (= c!945273 ((_ is Nil!61778) (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799))))))

(assert (=> d!1729232 (= (++!13575 (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799)) (_2!35703 lt!2209762)) lt!2210058)))

(assert (= (and d!1729232 c!945273) b!5419872))

(assert (= (and d!1729232 (not c!945273)) b!5419873))

(assert (= (and d!1729232 res!2305709) b!5419874))

(assert (= (and b!5419874 res!2305708) b!5419875))

(declare-fun m!6443966 () Bool)

(assert (=> b!5419874 m!6443966))

(assert (=> b!5419874 m!6442710))

(declare-fun m!6443968 () Bool)

(assert (=> b!5419874 m!6443968))

(declare-fun m!6443970 () Bool)

(assert (=> b!5419874 m!6443970))

(declare-fun m!6443972 () Bool)

(assert (=> b!5419873 m!6443972))

(declare-fun m!6443974 () Bool)

(assert (=> d!1729232 m!6443974))

(assert (=> d!1729232 m!6442710))

(declare-fun m!6443976 () Bool)

(assert (=> d!1729232 m!6443976))

(declare-fun m!6443978 () Bool)

(assert (=> d!1729232 m!6443978))

(assert (=> b!5418682 d!1729232))

(declare-fun bs!1252216 () Bool)

(declare-fun d!1729234 () Bool)

(assert (= bs!1252216 (and d!1729234 d!1728930)))

(declare-fun lambda!283689 () Int)

(assert (=> bs!1252216 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283632))))

(declare-fun bs!1252217 () Bool)

(assert (= bs!1252217 (and d!1729234 d!1728974)))

(assert (=> bs!1252217 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283639))))

(declare-fun bs!1252218 () Bool)

(assert (= bs!1252218 (and d!1729234 b!5419540)))

(assert (=> bs!1252218 (not (= lambda!283689 lambda!283665))))

(declare-fun bs!1252219 () Bool)

(assert (= bs!1252219 (and d!1729234 b!5419424)))

(assert (=> bs!1252219 (not (= lambda!283689 lambda!283657))))

(declare-fun bs!1252220 () Bool)

(assert (= bs!1252220 (and d!1729234 b!5418682)))

(assert (=> bs!1252220 (not (= lambda!283689 lambda!283580))))

(assert (=> bs!1252216 (not (= lambda!283689 lambda!283633))))

(assert (=> bs!1252220 (= (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) lt!2209771) (= lambda!283689 lambda!283579))))

(declare-fun bs!1252221 () Bool)

(assert (= bs!1252221 (and d!1729234 b!5419426)))

(assert (=> bs!1252221 (not (= lambda!283689 lambda!283658))))

(declare-fun bs!1252222 () Bool)

(assert (= bs!1252222 (and d!1729234 d!1729026)))

(assert (=> bs!1252222 (not (= lambda!283689 lambda!283645))))

(declare-fun bs!1252223 () Bool)

(assert (= bs!1252223 (and d!1729234 b!5419777)))

(assert (=> bs!1252223 (not (= lambda!283689 lambda!283680))))

(assert (=> bs!1252222 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283644))))

(declare-fun bs!1252224 () Bool)

(assert (= bs!1252224 (and d!1729234 d!1728920)))

(assert (=> bs!1252224 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283625))))

(declare-fun bs!1252225 () Bool)

(assert (= bs!1252225 (and d!1729234 b!5418695)))

(assert (=> bs!1252225 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283577))))

(declare-fun bs!1252226 () Bool)

(assert (= bs!1252226 (and d!1729234 b!5418677)))

(assert (=> bs!1252226 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) (regTwo!30914 r!7292))) (= lambda!283689 lambda!283572))))

(declare-fun bs!1252227 () Bool)

(assert (= bs!1252227 (and d!1729234 b!5419779)))

(assert (=> bs!1252227 (not (= lambda!283689 lambda!283681))))

(assert (=> bs!1252220 (not (= lambda!283689 lambda!283581))))

(assert (=> bs!1252225 (not (= lambda!283689 lambda!283578))))

(assert (=> bs!1252226 (not (= lambda!283689 lambda!283573))))

(declare-fun bs!1252228 () Bool)

(assert (= bs!1252228 (and d!1729234 b!5419542)))

(assert (=> bs!1252228 (not (= lambda!283689 lambda!283666))))

(assert (=> d!1729234 true))

(assert (=> d!1729234 true))

(declare-fun lambda!283690 () Int)

(assert (=> bs!1252216 (not (= lambda!283690 lambda!283632))))

(assert (=> bs!1252217 (not (= lambda!283690 lambda!283639))))

(assert (=> bs!1252218 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (reg!15530 lt!2209783)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) lt!2209783)) (= lambda!283690 lambda!283665))))

(assert (=> bs!1252219 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (reg!15530 lt!2209819)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) lt!2209819)) (= lambda!283690 lambda!283657))))

(assert (=> bs!1252220 (not (= lambda!283690 lambda!283580))))

(assert (=> bs!1252216 (not (= lambda!283690 lambda!283633))))

(assert (=> bs!1252220 (not (= lambda!283690 lambda!283579))))

(assert (=> bs!1252221 (not (= lambda!283690 lambda!283658))))

(declare-fun bs!1252229 () Bool)

(assert (= bs!1252229 d!1729234))

(assert (=> bs!1252229 (not (= lambda!283690 lambda!283689))))

(assert (=> bs!1252222 (not (= lambda!283690 lambda!283645))))

(assert (=> bs!1252223 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (reg!15530 r!7292)) (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) r!7292)) (= lambda!283690 lambda!283680))))

(assert (=> bs!1252222 (not (= lambda!283690 lambda!283644))))

(assert (=> bs!1252224 (not (= lambda!283690 lambda!283625))))

(assert (=> bs!1252225 (not (= lambda!283690 lambda!283577))))

(assert (=> bs!1252226 (not (= lambda!283690 lambda!283572))))

(assert (=> bs!1252227 (not (= lambda!283690 lambda!283681))))

(assert (=> bs!1252220 (= (= (Star!15201 (reg!15530 (regOne!30914 r!7292))) lt!2209771) (= lambda!283690 lambda!283581))))

(assert (=> bs!1252225 (not (= lambda!283690 lambda!283578))))

(assert (=> bs!1252226 (not (= lambda!283690 lambda!283573))))

(assert (=> bs!1252228 (not (= lambda!283690 lambda!283666))))

(assert (=> d!1729234 true))

(assert (=> d!1729234 true))

(assert (=> d!1729234 (= (Exists!2382 lambda!283689) (Exists!2382 lambda!283690))))

(declare-fun lt!2210061 () Unit!154326)

(declare-fun choose!41052 (Regex!15201 List!61902) Unit!154326)

(assert (=> d!1729234 (= lt!2210061 (choose!41052 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209762)))))

(assert (=> d!1729234 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729234 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!412 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209762)) lt!2210061)))

(declare-fun m!6443980 () Bool)

(assert (=> bs!1252229 m!6443980))

(declare-fun m!6443982 () Bool)

(assert (=> bs!1252229 m!6443982))

(declare-fun m!6443984 () Bool)

(assert (=> bs!1252229 m!6443984))

(assert (=> bs!1252229 m!6443272))

(assert (=> b!5418682 d!1729234))

(declare-fun d!1729236 () Bool)

(assert (=> d!1729236 (= (Exists!2382 lambda!283579) (choose!41025 lambda!283579))))

(declare-fun bs!1252230 () Bool)

(assert (= bs!1252230 d!1729236))

(declare-fun m!6443986 () Bool)

(assert (=> bs!1252230 m!6443986))

(assert (=> b!5418682 d!1729236))

(declare-fun d!1729238 () Bool)

(assert (=> d!1729238 (= (Exists!2382 lambda!283580) (choose!41025 lambda!283580))))

(declare-fun bs!1252231 () Bool)

(assert (= bs!1252231 d!1729238))

(declare-fun m!6443988 () Bool)

(assert (=> bs!1252231 m!6443988))

(assert (=> b!5418682 d!1729238))

(declare-fun d!1729240 () Bool)

(assert (=> d!1729240 (= (get!21304 lt!2209796) (v!51340 lt!2209796))))

(assert (=> b!5418682 d!1729240))

(declare-fun lt!2210062 () List!61902)

(declare-fun b!5419889 () Bool)

(declare-fun e!3359134 () Bool)

(assert (=> b!5419889 (= e!3359134 (or (not (= (_2!35703 lt!2209762) Nil!61778)) (= lt!2210062 (_2!35703 lt!2209799))))))

(declare-fun b!5419888 () Bool)

(declare-fun res!2305720 () Bool)

(assert (=> b!5419888 (=> (not res!2305720) (not e!3359134))))

(assert (=> b!5419888 (= res!2305720 (= (size!39876 lt!2210062) (+ (size!39876 (_2!35703 lt!2209799)) (size!39876 (_2!35703 lt!2209762)))))))

(declare-fun b!5419887 () Bool)

(declare-fun e!3359133 () List!61902)

(assert (=> b!5419887 (= e!3359133 (Cons!61778 (h!68226 (_2!35703 lt!2209799)) (++!13575 (t!375125 (_2!35703 lt!2209799)) (_2!35703 lt!2209762))))))

(declare-fun b!5419886 () Bool)

(assert (=> b!5419886 (= e!3359133 (_2!35703 lt!2209762))))

(declare-fun d!1729242 () Bool)

(assert (=> d!1729242 e!3359134))

(declare-fun res!2305721 () Bool)

(assert (=> d!1729242 (=> (not res!2305721) (not e!3359134))))

(assert (=> d!1729242 (= res!2305721 (= (content!11110 lt!2210062) ((_ map or) (content!11110 (_2!35703 lt!2209799)) (content!11110 (_2!35703 lt!2209762)))))))

(assert (=> d!1729242 (= lt!2210062 e!3359133)))

(declare-fun c!945274 () Bool)

(assert (=> d!1729242 (= c!945274 ((_ is Nil!61778) (_2!35703 lt!2209799)))))

(assert (=> d!1729242 (= (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762)) lt!2210062)))

(assert (= (and d!1729242 c!945274) b!5419886))

(assert (= (and d!1729242 (not c!945274)) b!5419887))

(assert (= (and d!1729242 res!2305721) b!5419888))

(assert (= (and b!5419888 res!2305720) b!5419889))

(declare-fun m!6443990 () Bool)

(assert (=> b!5419888 m!6443990))

(declare-fun m!6443992 () Bool)

(assert (=> b!5419888 m!6443992))

(assert (=> b!5419888 m!6443970))

(declare-fun m!6443994 () Bool)

(assert (=> b!5419887 m!6443994))

(declare-fun m!6443996 () Bool)

(assert (=> d!1729242 m!6443996))

(declare-fun m!6443998 () Bool)

(assert (=> d!1729242 m!6443998))

(assert (=> d!1729242 m!6443978))

(assert (=> b!5418682 d!1729242))

(declare-fun b!5419893 () Bool)

(declare-fun e!3359136 () Bool)

(declare-fun lt!2210063 () List!61902)

(assert (=> b!5419893 (= e!3359136 (or (not (= (_2!35703 lt!2209799) Nil!61778)) (= lt!2210063 (_1!35703 lt!2209799))))))

(declare-fun b!5419892 () Bool)

(declare-fun res!2305722 () Bool)

(assert (=> b!5419892 (=> (not res!2305722) (not e!3359136))))

(assert (=> b!5419892 (= res!2305722 (= (size!39876 lt!2210063) (+ (size!39876 (_1!35703 lt!2209799)) (size!39876 (_2!35703 lt!2209799)))))))

(declare-fun b!5419891 () Bool)

(declare-fun e!3359135 () List!61902)

(assert (=> b!5419891 (= e!3359135 (Cons!61778 (h!68226 (_1!35703 lt!2209799)) (++!13575 (t!375125 (_1!35703 lt!2209799)) (_2!35703 lt!2209799))))))

(declare-fun b!5419890 () Bool)

(assert (=> b!5419890 (= e!3359135 (_2!35703 lt!2209799))))

(declare-fun d!1729244 () Bool)

(assert (=> d!1729244 e!3359136))

(declare-fun res!2305723 () Bool)

(assert (=> d!1729244 (=> (not res!2305723) (not e!3359136))))

(assert (=> d!1729244 (= res!2305723 (= (content!11110 lt!2210063) ((_ map or) (content!11110 (_1!35703 lt!2209799)) (content!11110 (_2!35703 lt!2209799)))))))

(assert (=> d!1729244 (= lt!2210063 e!3359135)))

(declare-fun c!945275 () Bool)

(assert (=> d!1729244 (= c!945275 ((_ is Nil!61778) (_1!35703 lt!2209799)))))

(assert (=> d!1729244 (= (++!13575 (_1!35703 lt!2209799) (_2!35703 lt!2209799)) lt!2210063)))

(assert (= (and d!1729244 c!945275) b!5419890))

(assert (= (and d!1729244 (not c!945275)) b!5419891))

(assert (= (and d!1729244 res!2305723) b!5419892))

(assert (= (and b!5419892 res!2305722) b!5419893))

(declare-fun m!6444000 () Bool)

(assert (=> b!5419892 m!6444000))

(declare-fun m!6444002 () Bool)

(assert (=> b!5419892 m!6444002))

(assert (=> b!5419892 m!6443992))

(declare-fun m!6444004 () Bool)

(assert (=> b!5419891 m!6444004))

(declare-fun m!6444006 () Bool)

(assert (=> d!1729244 m!6444006))

(declare-fun m!6444008 () Bool)

(assert (=> d!1729244 m!6444008))

(assert (=> d!1729244 m!6443998))

(assert (=> b!5418682 d!1729244))

(declare-fun d!1729246 () Bool)

(assert (=> d!1729246 (= (isDefined!12015 lt!2209796) (not (isEmpty!33781 lt!2209796)))))

(declare-fun bs!1252232 () Bool)

(assert (= bs!1252232 d!1729246))

(declare-fun m!6444010 () Bool)

(assert (=> bs!1252232 m!6444010))

(assert (=> b!5418682 d!1729246))

(declare-fun bs!1252233 () Bool)

(declare-fun d!1729248 () Bool)

(assert (= bs!1252233 (and d!1729248 d!1728930)))

(declare-fun lambda!283691 () Int)

(assert (=> bs!1252233 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283632))))

(declare-fun bs!1252234 () Bool)

(assert (= bs!1252234 (and d!1729248 d!1728974)))

(assert (=> bs!1252234 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283639))))

(declare-fun bs!1252235 () Bool)

(assert (= bs!1252235 (and d!1729248 b!5419540)))

(assert (=> bs!1252235 (not (= lambda!283691 lambda!283665))))

(declare-fun bs!1252236 () Bool)

(assert (= bs!1252236 (and d!1729248 b!5419424)))

(assert (=> bs!1252236 (not (= lambda!283691 lambda!283657))))

(declare-fun bs!1252237 () Bool)

(assert (= bs!1252237 (and d!1729248 b!5418682)))

(assert (=> bs!1252237 (not (= lambda!283691 lambda!283580))))

(assert (=> bs!1252233 (not (= lambda!283691 lambda!283633))))

(assert (=> bs!1252237 (= lambda!283691 lambda!283579)))

(declare-fun bs!1252238 () Bool)

(assert (= bs!1252238 (and d!1729248 b!5419426)))

(assert (=> bs!1252238 (not (= lambda!283691 lambda!283658))))

(declare-fun bs!1252239 () Bool)

(assert (= bs!1252239 (and d!1729248 d!1729026)))

(assert (=> bs!1252239 (not (= lambda!283691 lambda!283645))))

(declare-fun bs!1252240 () Bool)

(assert (= bs!1252240 (and d!1729248 b!5419777)))

(assert (=> bs!1252240 (not (= lambda!283691 lambda!283680))))

(assert (=> bs!1252239 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283644))))

(declare-fun bs!1252241 () Bool)

(assert (= bs!1252241 (and d!1729248 d!1728920)))

(assert (=> bs!1252241 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283625))))

(declare-fun bs!1252242 () Bool)

(assert (= bs!1252242 (and d!1729248 b!5418695)))

(assert (=> bs!1252242 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283577))))

(declare-fun bs!1252243 () Bool)

(assert (= bs!1252243 (and d!1729248 b!5418677)))

(assert (=> bs!1252243 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283691 lambda!283572))))

(declare-fun bs!1252244 () Bool)

(assert (= bs!1252244 (and d!1729248 b!5419779)))

(assert (=> bs!1252244 (not (= lambda!283691 lambda!283681))))

(assert (=> bs!1252237 (not (= lambda!283691 lambda!283581))))

(declare-fun bs!1252245 () Bool)

(assert (= bs!1252245 (and d!1729248 d!1729234)))

(assert (=> bs!1252245 (= (= lt!2209771 (Star!15201 (reg!15530 (regOne!30914 r!7292)))) (= lambda!283691 lambda!283689))))

(assert (=> bs!1252245 (not (= lambda!283691 lambda!283690))))

(assert (=> bs!1252242 (not (= lambda!283691 lambda!283578))))

(assert (=> bs!1252243 (not (= lambda!283691 lambda!283573))))

(declare-fun bs!1252246 () Bool)

(assert (= bs!1252246 (and d!1729248 b!5419542)))

(assert (=> bs!1252246 (not (= lambda!283691 lambda!283666))))

(assert (=> d!1729248 true))

(assert (=> d!1729248 true))

(assert (=> d!1729248 true))

(assert (=> d!1729248 (= (isDefined!12015 (findConcatSeparation!1726 (reg!15530 (regOne!30914 r!7292)) lt!2209771 Nil!61778 (_1!35703 lt!2209762) (_1!35703 lt!2209762))) (Exists!2382 lambda!283691))))

(declare-fun lt!2210064 () Unit!154326)

(assert (=> d!1729248 (= lt!2210064 (choose!41026 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)))))

(assert (=> d!1729248 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729248 (= (lemmaFindConcatSeparationEquivalentToExists!1490 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)) lt!2210064)))

(declare-fun bs!1252247 () Bool)

(assert (= bs!1252247 d!1729248))

(assert (=> bs!1252247 m!6442730))

(declare-fun m!6444012 () Bool)

(assert (=> bs!1252247 m!6444012))

(declare-fun m!6444014 () Bool)

(assert (=> bs!1252247 m!6444014))

(assert (=> bs!1252247 m!6443272))

(assert (=> bs!1252247 m!6442730))

(declare-fun m!6444016 () Bool)

(assert (=> bs!1252247 m!6444016))

(assert (=> b!5418682 d!1729248))

(declare-fun d!1729250 () Bool)

(assert (=> d!1729250 (= (Exists!2382 lambda!283581) (choose!41025 lambda!283581))))

(declare-fun bs!1252248 () Bool)

(assert (= bs!1252248 d!1729250))

(declare-fun m!6444018 () Bool)

(assert (=> bs!1252248 m!6444018))

(assert (=> b!5418682 d!1729250))

(declare-fun bs!1252249 () Bool)

(declare-fun d!1729252 () Bool)

(assert (= bs!1252249 (and d!1729252 d!1728930)))

(declare-fun lambda!283692 () Int)

(assert (=> bs!1252249 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283632))))

(declare-fun bs!1252250 () Bool)

(assert (= bs!1252250 (and d!1729252 d!1728974)))

(assert (=> bs!1252250 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283639))))

(declare-fun bs!1252251 () Bool)

(assert (= bs!1252251 (and d!1729252 b!5419540)))

(assert (=> bs!1252251 (not (= lambda!283692 lambda!283665))))

(declare-fun bs!1252252 () Bool)

(assert (= bs!1252252 (and d!1729252 d!1729248)))

(assert (=> bs!1252252 (= lambda!283692 lambda!283691)))

(declare-fun bs!1252253 () Bool)

(assert (= bs!1252253 (and d!1729252 b!5419424)))

(assert (=> bs!1252253 (not (= lambda!283692 lambda!283657))))

(declare-fun bs!1252254 () Bool)

(assert (= bs!1252254 (and d!1729252 b!5418682)))

(assert (=> bs!1252254 (not (= lambda!283692 lambda!283580))))

(assert (=> bs!1252249 (not (= lambda!283692 lambda!283633))))

(assert (=> bs!1252254 (= lambda!283692 lambda!283579)))

(declare-fun bs!1252255 () Bool)

(assert (= bs!1252255 (and d!1729252 b!5419426)))

(assert (=> bs!1252255 (not (= lambda!283692 lambda!283658))))

(declare-fun bs!1252256 () Bool)

(assert (= bs!1252256 (and d!1729252 d!1729026)))

(assert (=> bs!1252256 (not (= lambda!283692 lambda!283645))))

(declare-fun bs!1252257 () Bool)

(assert (= bs!1252257 (and d!1729252 b!5419777)))

(assert (=> bs!1252257 (not (= lambda!283692 lambda!283680))))

(assert (=> bs!1252256 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283644))))

(declare-fun bs!1252258 () Bool)

(assert (= bs!1252258 (and d!1729252 d!1728920)))

(assert (=> bs!1252258 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283625))))

(declare-fun bs!1252259 () Bool)

(assert (= bs!1252259 (and d!1729252 b!5418695)))

(assert (=> bs!1252259 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283577))))

(declare-fun bs!1252260 () Bool)

(assert (= bs!1252260 (and d!1729252 b!5418677)))

(assert (=> bs!1252260 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283692 lambda!283572))))

(declare-fun bs!1252261 () Bool)

(assert (= bs!1252261 (and d!1729252 b!5419779)))

(assert (=> bs!1252261 (not (= lambda!283692 lambda!283681))))

(assert (=> bs!1252254 (not (= lambda!283692 lambda!283581))))

(declare-fun bs!1252262 () Bool)

(assert (= bs!1252262 (and d!1729252 d!1729234)))

(assert (=> bs!1252262 (= (= lt!2209771 (Star!15201 (reg!15530 (regOne!30914 r!7292)))) (= lambda!283692 lambda!283689))))

(assert (=> bs!1252262 (not (= lambda!283692 lambda!283690))))

(assert (=> bs!1252259 (not (= lambda!283692 lambda!283578))))

(assert (=> bs!1252260 (not (= lambda!283692 lambda!283573))))

(declare-fun bs!1252263 () Bool)

(assert (= bs!1252263 (and d!1729252 b!5419542)))

(assert (=> bs!1252263 (not (= lambda!283692 lambda!283666))))

(assert (=> d!1729252 true))

(assert (=> d!1729252 true))

(assert (=> d!1729252 true))

(declare-fun lambda!283693 () Int)

(assert (=> bs!1252249 (not (= lambda!283693 lambda!283632))))

(declare-fun bs!1252264 () Bool)

(assert (= bs!1252264 d!1729252))

(assert (=> bs!1252264 (not (= lambda!283693 lambda!283692))))

(assert (=> bs!1252250 (not (= lambda!283693 lambda!283639))))

(assert (=> bs!1252251 (not (= lambda!283693 lambda!283665))))

(assert (=> bs!1252252 (not (= lambda!283693 lambda!283691))))

(assert (=> bs!1252253 (not (= lambda!283693 lambda!283657))))

(assert (=> bs!1252254 (= lambda!283693 lambda!283580)))

(assert (=> bs!1252249 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283693 lambda!283633))))

(assert (=> bs!1252254 (not (= lambda!283693 lambda!283579))))

(assert (=> bs!1252255 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 lt!2209819)) (= lt!2209771 (regTwo!30914 lt!2209819))) (= lambda!283693 lambda!283658))))

(assert (=> bs!1252256 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283693 lambda!283645))))

(assert (=> bs!1252257 (not (= lambda!283693 lambda!283680))))

(assert (=> bs!1252256 (not (= lambda!283693 lambda!283644))))

(assert (=> bs!1252258 (not (= lambda!283693 lambda!283625))))

(assert (=> bs!1252259 (not (= lambda!283693 lambda!283577))))

(assert (=> bs!1252260 (not (= lambda!283693 lambda!283572))))

(assert (=> bs!1252261 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283693 lambda!283681))))

(assert (=> bs!1252254 (not (= lambda!283693 lambda!283581))))

(assert (=> bs!1252262 (not (= lambda!283693 lambda!283689))))

(assert (=> bs!1252262 (not (= lambda!283693 lambda!283690))))

(assert (=> bs!1252259 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) lt!2209814) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283693 lambda!283578))))

(assert (=> bs!1252260 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 r!7292)) (= lt!2209771 (regTwo!30914 r!7292))) (= lambda!283693 lambda!283573))))

(assert (=> bs!1252263 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 (regOne!30914 r!7292)) (regOne!30914 lt!2209783)) (= lt!2209771 (regTwo!30914 lt!2209783))) (= lambda!283693 lambda!283666))))

(assert (=> d!1729252 true))

(assert (=> d!1729252 true))

(assert (=> d!1729252 true))

(assert (=> d!1729252 (= (Exists!2382 lambda!283692) (Exists!2382 lambda!283693))))

(declare-fun lt!2210065 () Unit!154326)

(assert (=> d!1729252 (= lt!2210065 (choose!41027 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)))))

(assert (=> d!1729252 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729252 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1036 (reg!15530 (regOne!30914 r!7292)) lt!2209771 (_1!35703 lt!2209762)) lt!2210065)))

(declare-fun m!6444020 () Bool)

(assert (=> bs!1252264 m!6444020))

(declare-fun m!6444022 () Bool)

(assert (=> bs!1252264 m!6444022))

(declare-fun m!6444024 () Bool)

(assert (=> bs!1252264 m!6444024))

(assert (=> bs!1252264 m!6443272))

(assert (=> b!5418682 d!1729252))

(declare-fun b!5419894 () Bool)

(declare-fun e!3359142 () Bool)

(assert (=> b!5419894 (= e!3359142 (= (head!11624 (_1!35703 lt!2209799)) (c!944955 (reg!15530 (regOne!30914 r!7292)))))))

(declare-fun b!5419895 () Bool)

(declare-fun res!2305724 () Bool)

(declare-fun e!3359139 () Bool)

(assert (=> b!5419895 (=> res!2305724 e!3359139)))

(assert (=> b!5419895 (= res!2305724 e!3359142)))

(declare-fun res!2305725 () Bool)

(assert (=> b!5419895 (=> (not res!2305725) (not e!3359142))))

(declare-fun lt!2210066 () Bool)

(assert (=> b!5419895 (= res!2305725 lt!2210066)))

(declare-fun b!5419896 () Bool)

(declare-fun e!3359143 () Bool)

(declare-fun call!387921 () Bool)

(assert (=> b!5419896 (= e!3359143 (= lt!2210066 call!387921))))

(declare-fun b!5419897 () Bool)

(declare-fun e!3359141 () Bool)

(assert (=> b!5419897 (= e!3359139 e!3359141)))

(declare-fun res!2305731 () Bool)

(assert (=> b!5419897 (=> (not res!2305731) (not e!3359141))))

(assert (=> b!5419897 (= res!2305731 (not lt!2210066))))

(declare-fun b!5419899 () Bool)

(declare-fun e!3359137 () Bool)

(assert (=> b!5419899 (= e!3359137 (not lt!2210066))))

(declare-fun b!5419900 () Bool)

(declare-fun e!3359138 () Bool)

(assert (=> b!5419900 (= e!3359138 (matchR!7386 (derivativeStep!4275 (reg!15530 (regOne!30914 r!7292)) (head!11624 (_1!35703 lt!2209799))) (tail!10721 (_1!35703 lt!2209799))))))

(declare-fun b!5419901 () Bool)

(declare-fun e!3359140 () Bool)

(assert (=> b!5419901 (= e!3359140 (not (= (head!11624 (_1!35703 lt!2209799)) (c!944955 (reg!15530 (regOne!30914 r!7292))))))))

(declare-fun bm!387916 () Bool)

(assert (=> bm!387916 (= call!387921 (isEmpty!33780 (_1!35703 lt!2209799)))))

(declare-fun b!5419898 () Bool)

(declare-fun res!2305727 () Bool)

(assert (=> b!5419898 (=> res!2305727 e!3359139)))

(assert (=> b!5419898 (= res!2305727 (not ((_ is ElementMatch!15201) (reg!15530 (regOne!30914 r!7292)))))))

(assert (=> b!5419898 (= e!3359137 e!3359139)))

(declare-fun d!1729254 () Bool)

(assert (=> d!1729254 e!3359143))

(declare-fun c!945278 () Bool)

(assert (=> d!1729254 (= c!945278 ((_ is EmptyExpr!15201) (reg!15530 (regOne!30914 r!7292))))))

(assert (=> d!1729254 (= lt!2210066 e!3359138)))

(declare-fun c!945277 () Bool)

(assert (=> d!1729254 (= c!945277 (isEmpty!33780 (_1!35703 lt!2209799)))))

(assert (=> d!1729254 (validRegex!6937 (reg!15530 (regOne!30914 r!7292)))))

(assert (=> d!1729254 (= (matchR!7386 (reg!15530 (regOne!30914 r!7292)) (_1!35703 lt!2209799)) lt!2210066)))

(declare-fun b!5419902 () Bool)

(declare-fun res!2305726 () Bool)

(assert (=> b!5419902 (=> res!2305726 e!3359140)))

(assert (=> b!5419902 (= res!2305726 (not (isEmpty!33780 (tail!10721 (_1!35703 lt!2209799)))))))

(declare-fun b!5419903 () Bool)

(assert (=> b!5419903 (= e!3359143 e!3359137)))

(declare-fun c!945276 () Bool)

(assert (=> b!5419903 (= c!945276 ((_ is EmptyLang!15201) (reg!15530 (regOne!30914 r!7292))))))

(declare-fun b!5419904 () Bool)

(declare-fun res!2305729 () Bool)

(assert (=> b!5419904 (=> (not res!2305729) (not e!3359142))))

(assert (=> b!5419904 (= res!2305729 (isEmpty!33780 (tail!10721 (_1!35703 lt!2209799))))))

(declare-fun b!5419905 () Bool)

(assert (=> b!5419905 (= e!3359141 e!3359140)))

(declare-fun res!2305728 () Bool)

(assert (=> b!5419905 (=> res!2305728 e!3359140)))

(assert (=> b!5419905 (= res!2305728 call!387921)))

(declare-fun b!5419906 () Bool)

(declare-fun res!2305730 () Bool)

(assert (=> b!5419906 (=> (not res!2305730) (not e!3359142))))

(assert (=> b!5419906 (= res!2305730 (not call!387921))))

(declare-fun b!5419907 () Bool)

(assert (=> b!5419907 (= e!3359138 (nullable!5370 (reg!15530 (regOne!30914 r!7292))))))

(assert (= (and d!1729254 c!945277) b!5419907))

(assert (= (and d!1729254 (not c!945277)) b!5419900))

(assert (= (and d!1729254 c!945278) b!5419896))

(assert (= (and d!1729254 (not c!945278)) b!5419903))

(assert (= (and b!5419903 c!945276) b!5419899))

(assert (= (and b!5419903 (not c!945276)) b!5419898))

(assert (= (and b!5419898 (not res!2305727)) b!5419895))

(assert (= (and b!5419895 res!2305725) b!5419906))

(assert (= (and b!5419906 res!2305730) b!5419904))

(assert (= (and b!5419904 res!2305729) b!5419894))

(assert (= (and b!5419895 (not res!2305724)) b!5419897))

(assert (= (and b!5419897 res!2305731) b!5419905))

(assert (= (and b!5419905 (not res!2305728)) b!5419902))

(assert (= (and b!5419902 (not res!2305726)) b!5419901))

(assert (= (or b!5419896 b!5419905 b!5419906) bm!387916))

(declare-fun m!6444026 () Bool)

(assert (=> b!5419900 m!6444026))

(assert (=> b!5419900 m!6444026))

(declare-fun m!6444028 () Bool)

(assert (=> b!5419900 m!6444028))

(declare-fun m!6444030 () Bool)

(assert (=> b!5419900 m!6444030))

(assert (=> b!5419900 m!6444028))

(assert (=> b!5419900 m!6444030))

(declare-fun m!6444032 () Bool)

(assert (=> b!5419900 m!6444032))

(declare-fun m!6444034 () Bool)

(assert (=> d!1729254 m!6444034))

(assert (=> d!1729254 m!6443272))

(assert (=> bm!387916 m!6444034))

(assert (=> b!5419901 m!6444026))

(assert (=> b!5419904 m!6444030))

(assert (=> b!5419904 m!6444030))

(declare-fun m!6444036 () Bool)

(assert (=> b!5419904 m!6444036))

(assert (=> b!5419907 m!6443362))

(assert (=> b!5419894 m!6444026))

(assert (=> b!5419902 m!6444030))

(assert (=> b!5419902 m!6444030))

(assert (=> b!5419902 m!6444036))

(assert (=> b!5418682 d!1729254))

(declare-fun bs!1252265 () Bool)

(declare-fun b!5419909 () Bool)

(assert (= bs!1252265 (and b!5419909 d!1728930)))

(declare-fun lambda!283694 () Int)

(assert (=> bs!1252265 (not (= lambda!283694 lambda!283632))))

(declare-fun bs!1252266 () Bool)

(assert (= bs!1252266 (and b!5419909 d!1729252)))

(assert (=> bs!1252266 (not (= lambda!283694 lambda!283692))))

(declare-fun bs!1252267 () Bool)

(assert (= bs!1252267 (and b!5419909 d!1728974)))

(assert (=> bs!1252267 (not (= lambda!283694 lambda!283639))))

(declare-fun bs!1252268 () Bool)

(assert (= bs!1252268 (and b!5419909 b!5419540)))

(assert (=> bs!1252268 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 lt!2209814) (reg!15530 lt!2209783)) (= lt!2209814 lt!2209783)) (= lambda!283694 lambda!283665))))

(declare-fun bs!1252269 () Bool)

(assert (= bs!1252269 (and b!5419909 d!1729248)))

(assert (=> bs!1252269 (not (= lambda!283694 lambda!283691))))

(declare-fun bs!1252270 () Bool)

(assert (= bs!1252270 (and b!5419909 b!5419424)))

(assert (=> bs!1252270 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 lt!2209814) (reg!15530 lt!2209819)) (= lt!2209814 lt!2209819)) (= lambda!283694 lambda!283657))))

(declare-fun bs!1252271 () Bool)

(assert (= bs!1252271 (and b!5419909 b!5418682)))

(assert (=> bs!1252271 (not (= lambda!283694 lambda!283580))))

(assert (=> bs!1252265 (not (= lambda!283694 lambda!283633))))

(assert (=> bs!1252271 (not (= lambda!283694 lambda!283579))))

(assert (=> bs!1252266 (not (= lambda!283694 lambda!283693))))

(declare-fun bs!1252272 () Bool)

(assert (= bs!1252272 (and b!5419909 b!5419426)))

(assert (=> bs!1252272 (not (= lambda!283694 lambda!283658))))

(declare-fun bs!1252273 () Bool)

(assert (= bs!1252273 (and b!5419909 d!1729026)))

(assert (=> bs!1252273 (not (= lambda!283694 lambda!283645))))

(declare-fun bs!1252274 () Bool)

(assert (= bs!1252274 (and b!5419909 b!5419777)))

(assert (=> bs!1252274 (= (and (= (_1!35703 lt!2209762) s!2326) (= (reg!15530 lt!2209814) (reg!15530 r!7292)) (= lt!2209814 r!7292)) (= lambda!283694 lambda!283680))))

(assert (=> bs!1252273 (not (= lambda!283694 lambda!283644))))

(declare-fun bs!1252275 () Bool)

(assert (= bs!1252275 (and b!5419909 d!1728920)))

(assert (=> bs!1252275 (not (= lambda!283694 lambda!283625))))

(declare-fun bs!1252276 () Bool)

(assert (= bs!1252276 (and b!5419909 b!5418695)))

(assert (=> bs!1252276 (not (= lambda!283694 lambda!283577))))

(declare-fun bs!1252277 () Bool)

(assert (= bs!1252277 (and b!5419909 b!5418677)))

(assert (=> bs!1252277 (not (= lambda!283694 lambda!283572))))

(declare-fun bs!1252278 () Bool)

(assert (= bs!1252278 (and b!5419909 b!5419779)))

(assert (=> bs!1252278 (not (= lambda!283694 lambda!283681))))

(assert (=> bs!1252271 (= (and (= (reg!15530 lt!2209814) (reg!15530 (regOne!30914 r!7292))) (= lt!2209814 lt!2209771)) (= lambda!283694 lambda!283581))))

(declare-fun bs!1252279 () Bool)

(assert (= bs!1252279 (and b!5419909 d!1729234)))

(assert (=> bs!1252279 (not (= lambda!283694 lambda!283689))))

(assert (=> bs!1252279 (= (and (= (reg!15530 lt!2209814) (reg!15530 (regOne!30914 r!7292))) (= lt!2209814 (Star!15201 (reg!15530 (regOne!30914 r!7292))))) (= lambda!283694 lambda!283690))))

(assert (=> bs!1252276 (not (= lambda!283694 lambda!283578))))

(assert (=> bs!1252277 (not (= lambda!283694 lambda!283573))))

(declare-fun bs!1252280 () Bool)

(assert (= bs!1252280 (and b!5419909 b!5419542)))

(assert (=> bs!1252280 (not (= lambda!283694 lambda!283666))))

(assert (=> b!5419909 true))

(assert (=> b!5419909 true))

(declare-fun bs!1252281 () Bool)

(declare-fun b!5419911 () Bool)

(assert (= bs!1252281 (and b!5419911 d!1728930)))

(declare-fun lambda!283695 () Int)

(assert (=> bs!1252281 (not (= lambda!283695 lambda!283632))))

(declare-fun bs!1252282 () Bool)

(assert (= bs!1252282 (and b!5419911 d!1729252)))

(assert (=> bs!1252282 (not (= lambda!283695 lambda!283692))))

(declare-fun bs!1252283 () Bool)

(assert (= bs!1252283 (and b!5419911 d!1728974)))

(assert (=> bs!1252283 (not (= lambda!283695 lambda!283639))))

(declare-fun bs!1252284 () Bool)

(assert (= bs!1252284 (and b!5419911 b!5419540)))

(assert (=> bs!1252284 (not (= lambda!283695 lambda!283665))))

(declare-fun bs!1252285 () Bool)

(assert (= bs!1252285 (and b!5419911 d!1729248)))

(assert (=> bs!1252285 (not (= lambda!283695 lambda!283691))))

(declare-fun bs!1252286 () Bool)

(assert (= bs!1252286 (and b!5419911 b!5419424)))

(assert (=> bs!1252286 (not (= lambda!283695 lambda!283657))))

(assert (=> bs!1252281 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209814) (regTwo!30914 r!7292))) (= lambda!283695 lambda!283633))))

(declare-fun bs!1252287 () Bool)

(assert (= bs!1252287 (and b!5419911 b!5418682)))

(assert (=> bs!1252287 (not (= lambda!283695 lambda!283579))))

(assert (=> bs!1252282 (= (and (= (regOne!30914 lt!2209814) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 lt!2209814) lt!2209771)) (= lambda!283695 lambda!283693))))

(declare-fun bs!1252288 () Bool)

(assert (= bs!1252288 (and b!5419911 b!5419426)))

(assert (=> bs!1252288 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) (regOne!30914 lt!2209819)) (= (regTwo!30914 lt!2209814) (regTwo!30914 lt!2209819))) (= lambda!283695 lambda!283658))))

(declare-fun bs!1252289 () Bool)

(assert (= bs!1252289 (and b!5419911 d!1729026)))

(assert (=> bs!1252289 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) lt!2209814) (= (regTwo!30914 lt!2209814) (regTwo!30914 r!7292))) (= lambda!283695 lambda!283645))))

(declare-fun bs!1252290 () Bool)

(assert (= bs!1252290 (and b!5419911 b!5419777)))

(assert (=> bs!1252290 (not (= lambda!283695 lambda!283680))))

(assert (=> bs!1252289 (not (= lambda!283695 lambda!283644))))

(declare-fun bs!1252291 () Bool)

(assert (= bs!1252291 (and b!5419911 d!1728920)))

(assert (=> bs!1252291 (not (= lambda!283695 lambda!283625))))

(declare-fun bs!1252292 () Bool)

(assert (= bs!1252292 (and b!5419911 b!5418695)))

(assert (=> bs!1252292 (not (= lambda!283695 lambda!283577))))

(declare-fun bs!1252293 () Bool)

(assert (= bs!1252293 (and b!5419911 b!5418677)))

(assert (=> bs!1252293 (not (= lambda!283695 lambda!283572))))

(declare-fun bs!1252294 () Bool)

(assert (= bs!1252294 (and b!5419911 b!5419909)))

(assert (=> bs!1252294 (not (= lambda!283695 lambda!283694))))

(assert (=> bs!1252287 (= (and (= (regOne!30914 lt!2209814) (reg!15530 (regOne!30914 r!7292))) (= (regTwo!30914 lt!2209814) lt!2209771)) (= lambda!283695 lambda!283580))))

(declare-fun bs!1252295 () Bool)

(assert (= bs!1252295 (and b!5419911 b!5419779)))

(assert (=> bs!1252295 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209814) (regTwo!30914 r!7292))) (= lambda!283695 lambda!283681))))

(assert (=> bs!1252287 (not (= lambda!283695 lambda!283581))))

(declare-fun bs!1252296 () Bool)

(assert (= bs!1252296 (and b!5419911 d!1729234)))

(assert (=> bs!1252296 (not (= lambda!283695 lambda!283689))))

(assert (=> bs!1252296 (not (= lambda!283695 lambda!283690))))

(assert (=> bs!1252292 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) lt!2209814) (= (regTwo!30914 lt!2209814) (regTwo!30914 r!7292))) (= lambda!283695 lambda!283578))))

(assert (=> bs!1252293 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) (regOne!30914 r!7292)) (= (regTwo!30914 lt!2209814) (regTwo!30914 r!7292))) (= lambda!283695 lambda!283573))))

(declare-fun bs!1252297 () Bool)

(assert (= bs!1252297 (and b!5419911 b!5419542)))

(assert (=> bs!1252297 (= (and (= (_1!35703 lt!2209762) s!2326) (= (regOne!30914 lt!2209814) (regOne!30914 lt!2209783)) (= (regTwo!30914 lt!2209814) (regTwo!30914 lt!2209783))) (= lambda!283695 lambda!283666))))

(assert (=> b!5419911 true))

(assert (=> b!5419911 true))

(declare-fun b!5419908 () Bool)

(declare-fun e!3359147 () Bool)

(declare-fun e!3359150 () Bool)

(assert (=> b!5419908 (= e!3359147 e!3359150)))

(declare-fun c!945282 () Bool)

(assert (=> b!5419908 (= c!945282 ((_ is Star!15201) lt!2209814))))

(declare-fun e!3359146 () Bool)

(declare-fun call!387923 () Bool)

(assert (=> b!5419909 (= e!3359146 call!387923)))

(declare-fun b!5419910 () Bool)

(declare-fun c!945280 () Bool)

(assert (=> b!5419910 (= c!945280 ((_ is ElementMatch!15201) lt!2209814))))

(declare-fun e!3359148 () Bool)

(declare-fun e!3359145 () Bool)

(assert (=> b!5419910 (= e!3359148 e!3359145)))

(assert (=> b!5419911 (= e!3359150 call!387923)))

(declare-fun bm!387917 () Bool)

(declare-fun call!387922 () Bool)

(assert (=> bm!387917 (= call!387922 (isEmpty!33780 (_1!35703 lt!2209762)))))

(declare-fun b!5419912 () Bool)

(declare-fun e!3359149 () Bool)

(assert (=> b!5419912 (= e!3359147 e!3359149)))

(declare-fun res!2305734 () Bool)

(assert (=> b!5419912 (= res!2305734 (matchRSpec!2304 (regOne!30915 lt!2209814) (_1!35703 lt!2209762)))))

(assert (=> b!5419912 (=> res!2305734 e!3359149)))

(declare-fun bm!387918 () Bool)

(assert (=> bm!387918 (= call!387923 (Exists!2382 (ite c!945282 lambda!283694 lambda!283695)))))

(declare-fun d!1729256 () Bool)

(declare-fun c!945281 () Bool)

(assert (=> d!1729256 (= c!945281 ((_ is EmptyExpr!15201) lt!2209814))))

(declare-fun e!3359144 () Bool)

(assert (=> d!1729256 (= (matchRSpec!2304 lt!2209814 (_1!35703 lt!2209762)) e!3359144)))

(declare-fun b!5419913 () Bool)

(assert (=> b!5419913 (= e!3359145 (= (_1!35703 lt!2209762) (Cons!61778 (c!944955 lt!2209814) Nil!61778)))))

(declare-fun b!5419914 () Bool)

(declare-fun res!2305733 () Bool)

(assert (=> b!5419914 (=> res!2305733 e!3359146)))

(assert (=> b!5419914 (= res!2305733 call!387922)))

(assert (=> b!5419914 (= e!3359150 e!3359146)))

(declare-fun b!5419915 () Bool)

(declare-fun c!945279 () Bool)

(assert (=> b!5419915 (= c!945279 ((_ is Union!15201) lt!2209814))))

(assert (=> b!5419915 (= e!3359145 e!3359147)))

(declare-fun b!5419916 () Bool)

(assert (=> b!5419916 (= e!3359149 (matchRSpec!2304 (regTwo!30915 lt!2209814) (_1!35703 lt!2209762)))))

(declare-fun b!5419917 () Bool)

(assert (=> b!5419917 (= e!3359144 e!3359148)))

(declare-fun res!2305732 () Bool)

(assert (=> b!5419917 (= res!2305732 (not ((_ is EmptyLang!15201) lt!2209814)))))

(assert (=> b!5419917 (=> (not res!2305732) (not e!3359148))))

(declare-fun b!5419918 () Bool)

(assert (=> b!5419918 (= e!3359144 call!387922)))

(assert (= (and d!1729256 c!945281) b!5419918))

(assert (= (and d!1729256 (not c!945281)) b!5419917))

(assert (= (and b!5419917 res!2305732) b!5419910))

(assert (= (and b!5419910 c!945280) b!5419913))

(assert (= (and b!5419910 (not c!945280)) b!5419915))

(assert (= (and b!5419915 c!945279) b!5419912))

(assert (= (and b!5419915 (not c!945279)) b!5419908))

(assert (= (and b!5419912 (not res!2305734)) b!5419916))

(assert (= (and b!5419908 c!945282) b!5419914))

(assert (= (and b!5419908 (not c!945282)) b!5419911))

(assert (= (and b!5419914 (not res!2305733)) b!5419909))

(assert (= (or b!5419909 b!5419911) bm!387918))

(assert (= (or b!5419918 b!5419914) bm!387917))

(assert (=> bm!387917 m!6443350))

(declare-fun m!6444038 () Bool)

(assert (=> b!5419912 m!6444038))

(declare-fun m!6444040 () Bool)

(assert (=> bm!387918 m!6444040))

(declare-fun m!6444042 () Bool)

(assert (=> b!5419916 m!6444042))

(assert (=> b!5418682 d!1729256))

(declare-fun e!3359152 () Bool)

(declare-fun b!5419922 () Bool)

(declare-fun lt!2210067 () List!61902)

(assert (=> b!5419922 (= e!3359152 (or (not (= (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762)) Nil!61778)) (= lt!2210067 (_1!35703 lt!2209799))))))

(declare-fun b!5419921 () Bool)

(declare-fun res!2305735 () Bool)

(assert (=> b!5419921 (=> (not res!2305735) (not e!3359152))))

(assert (=> b!5419921 (= res!2305735 (= (size!39876 lt!2210067) (+ (size!39876 (_1!35703 lt!2209799)) (size!39876 (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762))))))))

(declare-fun b!5419920 () Bool)

(declare-fun e!3359151 () List!61902)

(assert (=> b!5419920 (= e!3359151 (Cons!61778 (h!68226 (_1!35703 lt!2209799)) (++!13575 (t!375125 (_1!35703 lt!2209799)) (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762)))))))

(declare-fun b!5419919 () Bool)

(assert (=> b!5419919 (= e!3359151 (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762)))))

(declare-fun d!1729258 () Bool)

(assert (=> d!1729258 e!3359152))

(declare-fun res!2305736 () Bool)

(assert (=> d!1729258 (=> (not res!2305736) (not e!3359152))))

(assert (=> d!1729258 (= res!2305736 (= (content!11110 lt!2210067) ((_ map or) (content!11110 (_1!35703 lt!2209799)) (content!11110 (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762))))))))

(assert (=> d!1729258 (= lt!2210067 e!3359151)))

(declare-fun c!945283 () Bool)

(assert (=> d!1729258 (= c!945283 ((_ is Nil!61778) (_1!35703 lt!2209799)))))

(assert (=> d!1729258 (= (++!13575 (_1!35703 lt!2209799) (++!13575 (_2!35703 lt!2209799) (_2!35703 lt!2209762))) lt!2210067)))

(assert (= (and d!1729258 c!945283) b!5419919))

(assert (= (and d!1729258 (not c!945283)) b!5419920))

(assert (= (and d!1729258 res!2305736) b!5419921))

(assert (= (and b!5419921 res!2305735) b!5419922))

(declare-fun m!6444044 () Bool)

(assert (=> b!5419921 m!6444044))

(assert (=> b!5419921 m!6444002))

(assert (=> b!5419921 m!6442726))

(declare-fun m!6444046 () Bool)

(assert (=> b!5419921 m!6444046))

(assert (=> b!5419920 m!6442726))

(declare-fun m!6444048 () Bool)

(assert (=> b!5419920 m!6444048))

(declare-fun m!6444050 () Bool)

(assert (=> d!1729258 m!6444050))

(assert (=> d!1729258 m!6444008))

(assert (=> d!1729258 m!6442726))

(declare-fun m!6444052 () Bool)

(assert (=> d!1729258 m!6444052))

(assert (=> b!5418682 d!1729258))

(declare-fun bm!387919 () Bool)

(declare-fun call!387925 () Bool)

(declare-fun call!387926 () Bool)

(assert (=> bm!387919 (= call!387925 call!387926)))

(declare-fun b!5419924 () Bool)

(declare-fun e!3359157 () Bool)

(declare-fun e!3359159 () Bool)

(assert (=> b!5419924 (= e!3359157 e!3359159)))

(declare-fun c!945284 () Bool)

(assert (=> b!5419924 (= c!945284 ((_ is Star!15201) lt!2209771))))

(declare-fun bm!387920 () Bool)

(declare-fun c!945285 () Bool)

(assert (=> bm!387920 (= call!387926 (validRegex!6937 (ite c!945284 (reg!15530 lt!2209771) (ite c!945285 (regTwo!30915 lt!2209771) (regTwo!30914 lt!2209771)))))))

(declare-fun b!5419925 () Bool)

(declare-fun res!2305739 () Bool)

(declare-fun e!3359158 () Bool)

(assert (=> b!5419925 (=> (not res!2305739) (not e!3359158))))

(declare-fun call!387924 () Bool)

(assert (=> b!5419925 (= res!2305739 call!387924)))

(declare-fun e!3359153 () Bool)

(assert (=> b!5419925 (= e!3359153 e!3359158)))

(declare-fun b!5419926 () Bool)

(assert (=> b!5419926 (= e!3359159 e!3359153)))

(assert (=> b!5419926 (= c!945285 ((_ is Union!15201) lt!2209771))))

(declare-fun b!5419927 () Bool)

(declare-fun res!2305740 () Bool)

(declare-fun e!3359154 () Bool)

(assert (=> b!5419927 (=> res!2305740 e!3359154)))

(assert (=> b!5419927 (= res!2305740 (not ((_ is Concat!24046) lt!2209771)))))

(assert (=> b!5419927 (= e!3359153 e!3359154)))

(declare-fun b!5419928 () Bool)

(declare-fun e!3359155 () Bool)

(assert (=> b!5419928 (= e!3359154 e!3359155)))

(declare-fun res!2305741 () Bool)

(assert (=> b!5419928 (=> (not res!2305741) (not e!3359155))))

(assert (=> b!5419928 (= res!2305741 call!387924)))

(declare-fun b!5419929 () Bool)

(assert (=> b!5419929 (= e!3359158 call!387925)))

(declare-fun b!5419930 () Bool)

(declare-fun e!3359156 () Bool)

(assert (=> b!5419930 (= e!3359156 call!387926)))

(declare-fun d!1729260 () Bool)

(declare-fun res!2305738 () Bool)

(assert (=> d!1729260 (=> res!2305738 e!3359157)))

(assert (=> d!1729260 (= res!2305738 ((_ is ElementMatch!15201) lt!2209771))))

(assert (=> d!1729260 (= (validRegex!6937 lt!2209771) e!3359157)))

(declare-fun b!5419923 () Bool)

(assert (=> b!5419923 (= e!3359155 call!387925)))

(declare-fun b!5419931 () Bool)

(assert (=> b!5419931 (= e!3359159 e!3359156)))

(declare-fun res!2305737 () Bool)

(assert (=> b!5419931 (= res!2305737 (not (nullable!5370 (reg!15530 lt!2209771))))))

(assert (=> b!5419931 (=> (not res!2305737) (not e!3359156))))

(declare-fun bm!387921 () Bool)

(assert (=> bm!387921 (= call!387924 (validRegex!6937 (ite c!945285 (regOne!30915 lt!2209771) (regOne!30914 lt!2209771))))))

(assert (= (and d!1729260 (not res!2305738)) b!5419924))

(assert (= (and b!5419924 c!945284) b!5419931))

(assert (= (and b!5419924 (not c!945284)) b!5419926))

(assert (= (and b!5419931 res!2305737) b!5419930))

(assert (= (and b!5419926 c!945285) b!5419925))

(assert (= (and b!5419926 (not c!945285)) b!5419927))

(assert (= (and b!5419925 res!2305739) b!5419929))

(assert (= (and b!5419927 (not res!2305740)) b!5419928))

(assert (= (and b!5419928 res!2305741) b!5419923))

(assert (= (or b!5419929 b!5419923) bm!387919))

(assert (= (or b!5419925 b!5419928) bm!387921))

(assert (= (or b!5419930 bm!387919) bm!387920))

(declare-fun m!6444054 () Bool)

(assert (=> bm!387920 m!6444054))

(declare-fun m!6444056 () Bool)

(assert (=> b!5419931 m!6444056))

(declare-fun m!6444058 () Bool)

(assert (=> bm!387921 m!6444058))

(assert (=> b!5418703 d!1729260))

(assert (=> b!5418681 d!1728972))

(declare-fun b!5419939 () Bool)

(declare-fun e!3359165 () Bool)

(declare-fun tp!1496616 () Bool)

(assert (=> b!5419939 (= e!3359165 tp!1496616)))

(declare-fun b!5419938 () Bool)

(declare-fun tp!1496617 () Bool)

(declare-fun e!3359164 () Bool)

(assert (=> b!5419938 (= e!3359164 (and (inv!81249 (h!68228 (t!375127 zl!343))) e!3359165 tp!1496617))))

(assert (=> b!5418700 (= tp!1496546 e!3359164)))

(assert (= b!5419938 b!5419939))

(assert (= (and b!5418700 ((_ is Cons!61780) (t!375127 zl!343))) b!5419938))

(declare-fun m!6444060 () Bool)

(assert (=> b!5419938 m!6444060))

(declare-fun b!5419952 () Bool)

(declare-fun e!3359168 () Bool)

(declare-fun tp!1496630 () Bool)

(assert (=> b!5419952 (= e!3359168 tp!1496630)))

(assert (=> b!5418674 (= tp!1496544 e!3359168)))

(declare-fun b!5419950 () Bool)

(assert (=> b!5419950 (= e!3359168 tp_is_empty!39655)))

(declare-fun b!5419953 () Bool)

(declare-fun tp!1496632 () Bool)

(declare-fun tp!1496628 () Bool)

(assert (=> b!5419953 (= e!3359168 (and tp!1496632 tp!1496628))))

(declare-fun b!5419951 () Bool)

(declare-fun tp!1496629 () Bool)

(declare-fun tp!1496631 () Bool)

(assert (=> b!5419951 (= e!3359168 (and tp!1496629 tp!1496631))))

(assert (= (and b!5418674 ((_ is ElementMatch!15201) (regOne!30915 r!7292))) b!5419950))

(assert (= (and b!5418674 ((_ is Concat!24046) (regOne!30915 r!7292))) b!5419951))

(assert (= (and b!5418674 ((_ is Star!15201) (regOne!30915 r!7292))) b!5419952))

(assert (= (and b!5418674 ((_ is Union!15201) (regOne!30915 r!7292))) b!5419953))

(declare-fun b!5419956 () Bool)

(declare-fun e!3359169 () Bool)

(declare-fun tp!1496635 () Bool)

(assert (=> b!5419956 (= e!3359169 tp!1496635)))

(assert (=> b!5418674 (= tp!1496545 e!3359169)))

(declare-fun b!5419954 () Bool)

(assert (=> b!5419954 (= e!3359169 tp_is_empty!39655)))

(declare-fun b!5419957 () Bool)

(declare-fun tp!1496637 () Bool)

(declare-fun tp!1496633 () Bool)

(assert (=> b!5419957 (= e!3359169 (and tp!1496637 tp!1496633))))

(declare-fun b!5419955 () Bool)

(declare-fun tp!1496634 () Bool)

(declare-fun tp!1496636 () Bool)

(assert (=> b!5419955 (= e!3359169 (and tp!1496634 tp!1496636))))

(assert (= (and b!5418674 ((_ is ElementMatch!15201) (regTwo!30915 r!7292))) b!5419954))

(assert (= (and b!5418674 ((_ is Concat!24046) (regTwo!30915 r!7292))) b!5419955))

(assert (= (and b!5418674 ((_ is Star!15201) (regTwo!30915 r!7292))) b!5419956))

(assert (= (and b!5418674 ((_ is Union!15201) (regTwo!30915 r!7292))) b!5419957))

(declare-fun b!5419962 () Bool)

(declare-fun e!3359172 () Bool)

(declare-fun tp!1496642 () Bool)

(declare-fun tp!1496643 () Bool)

(assert (=> b!5419962 (= e!3359172 (and tp!1496642 tp!1496643))))

(assert (=> b!5418694 (= tp!1496550 e!3359172)))

(assert (= (and b!5418694 ((_ is Cons!61779) (exprs!5085 (h!68228 zl!343)))) b!5419962))

(declare-fun b!5419963 () Bool)

(declare-fun e!3359173 () Bool)

(declare-fun tp!1496644 () Bool)

(declare-fun tp!1496645 () Bool)

(assert (=> b!5419963 (= e!3359173 (and tp!1496644 tp!1496645))))

(assert (=> b!5418692 (= tp!1496549 e!3359173)))

(assert (= (and b!5418692 ((_ is Cons!61779) (exprs!5085 setElem!35309))) b!5419963))

(declare-fun b!5419966 () Bool)

(declare-fun e!3359174 () Bool)

(declare-fun tp!1496648 () Bool)

(assert (=> b!5419966 (= e!3359174 tp!1496648)))

(assert (=> b!5418686 (= tp!1496547 e!3359174)))

(declare-fun b!5419964 () Bool)

(assert (=> b!5419964 (= e!3359174 tp_is_empty!39655)))

(declare-fun b!5419967 () Bool)

(declare-fun tp!1496650 () Bool)

(declare-fun tp!1496646 () Bool)

(assert (=> b!5419967 (= e!3359174 (and tp!1496650 tp!1496646))))

(declare-fun b!5419965 () Bool)

(declare-fun tp!1496647 () Bool)

(declare-fun tp!1496649 () Bool)

(assert (=> b!5419965 (= e!3359174 (and tp!1496647 tp!1496649))))

(assert (= (and b!5418686 ((_ is ElementMatch!15201) (regOne!30914 r!7292))) b!5419964))

(assert (= (and b!5418686 ((_ is Concat!24046) (regOne!30914 r!7292))) b!5419965))

(assert (= (and b!5418686 ((_ is Star!15201) (regOne!30914 r!7292))) b!5419966))

(assert (= (and b!5418686 ((_ is Union!15201) (regOne!30914 r!7292))) b!5419967))

(declare-fun b!5419970 () Bool)

(declare-fun e!3359175 () Bool)

(declare-fun tp!1496653 () Bool)

(assert (=> b!5419970 (= e!3359175 tp!1496653)))

(assert (=> b!5418686 (= tp!1496551 e!3359175)))

(declare-fun b!5419968 () Bool)

(assert (=> b!5419968 (= e!3359175 tp_is_empty!39655)))

(declare-fun b!5419971 () Bool)

(declare-fun tp!1496655 () Bool)

(declare-fun tp!1496651 () Bool)

(assert (=> b!5419971 (= e!3359175 (and tp!1496655 tp!1496651))))

(declare-fun b!5419969 () Bool)

(declare-fun tp!1496652 () Bool)

(declare-fun tp!1496654 () Bool)

(assert (=> b!5419969 (= e!3359175 (and tp!1496652 tp!1496654))))

(assert (= (and b!5418686 ((_ is ElementMatch!15201) (regTwo!30914 r!7292))) b!5419968))

(assert (= (and b!5418686 ((_ is Concat!24046) (regTwo!30914 r!7292))) b!5419969))

(assert (= (and b!5418686 ((_ is Star!15201) (regTwo!30914 r!7292))) b!5419970))

(assert (= (and b!5418686 ((_ is Union!15201) (regTwo!30914 r!7292))) b!5419971))

(declare-fun b!5419974 () Bool)

(declare-fun e!3359176 () Bool)

(declare-fun tp!1496658 () Bool)

(assert (=> b!5419974 (= e!3359176 tp!1496658)))

(assert (=> b!5418702 (= tp!1496553 e!3359176)))

(declare-fun b!5419972 () Bool)

(assert (=> b!5419972 (= e!3359176 tp_is_empty!39655)))

(declare-fun b!5419975 () Bool)

(declare-fun tp!1496660 () Bool)

(declare-fun tp!1496656 () Bool)

(assert (=> b!5419975 (= e!3359176 (and tp!1496660 tp!1496656))))

(declare-fun b!5419973 () Bool)

(declare-fun tp!1496657 () Bool)

(declare-fun tp!1496659 () Bool)

(assert (=> b!5419973 (= e!3359176 (and tp!1496657 tp!1496659))))

(assert (= (and b!5418702 ((_ is ElementMatch!15201) (reg!15530 r!7292))) b!5419972))

(assert (= (and b!5418702 ((_ is Concat!24046) (reg!15530 r!7292))) b!5419973))

(assert (= (and b!5418702 ((_ is Star!15201) (reg!15530 r!7292))) b!5419974))

(assert (= (and b!5418702 ((_ is Union!15201) (reg!15530 r!7292))) b!5419975))

(declare-fun b!5419980 () Bool)

(declare-fun e!3359179 () Bool)

(declare-fun tp!1496663 () Bool)

(assert (=> b!5419980 (= e!3359179 (and tp_is_empty!39655 tp!1496663))))

(assert (=> b!5418671 (= tp!1496552 e!3359179)))

(assert (= (and b!5418671 ((_ is Cons!61778) (t!375125 s!2326))) b!5419980))

(declare-fun condSetEmpty!35315 () Bool)

(assert (=> setNonEmpty!35309 (= condSetEmpty!35315 (= setRest!35309 ((as const (Array Context!9170 Bool)) false)))))

(declare-fun setRes!35315 () Bool)

(assert (=> setNonEmpty!35309 (= tp!1496548 setRes!35315)))

(declare-fun setIsEmpty!35315 () Bool)

(assert (=> setIsEmpty!35315 setRes!35315))

(declare-fun setElem!35315 () Context!9170)

(declare-fun e!3359182 () Bool)

(declare-fun tp!1496668 () Bool)

(declare-fun setNonEmpty!35315 () Bool)

(assert (=> setNonEmpty!35315 (= setRes!35315 (and tp!1496668 (inv!81249 setElem!35315) e!3359182))))

(declare-fun setRest!35315 () (InoxSet Context!9170))

(assert (=> setNonEmpty!35315 (= setRest!35309 ((_ map or) (store ((as const (Array Context!9170 Bool)) false) setElem!35315 true) setRest!35315))))

(declare-fun b!5419985 () Bool)

(declare-fun tp!1496669 () Bool)

(assert (=> b!5419985 (= e!3359182 tp!1496669)))

(assert (= (and setNonEmpty!35309 condSetEmpty!35315) setIsEmpty!35315))

(assert (= (and setNonEmpty!35309 (not condSetEmpty!35315)) setNonEmpty!35315))

(assert (= setNonEmpty!35315 b!5419985))

(declare-fun m!6444062 () Bool)

(assert (=> setNonEmpty!35315 m!6444062))

(declare-fun b_lambda!206899 () Bool)

(assert (= b_lambda!206883 (or b!5418685 b_lambda!206899)))

(declare-fun bs!1252298 () Bool)

(declare-fun d!1729262 () Bool)

(assert (= bs!1252298 (and d!1729262 b!5418685)))

(assert (=> bs!1252298 (= (dynLambda!24345 lambda!283574 lt!2209781) (derivationStepZipperUp!573 lt!2209781 (h!68226 s!2326)))))

(assert (=> bs!1252298 m!6442598))

(assert (=> d!1729154 d!1729262))

(declare-fun b_lambda!206901 () Bool)

(assert (= b_lambda!206869 (or b!5418685 b_lambda!206901)))

(declare-fun bs!1252299 () Bool)

(declare-fun d!1729264 () Bool)

(assert (= bs!1252299 (and d!1729264 b!5418685)))

(assert (=> bs!1252299 (= (dynLambda!24345 lambda!283574 lt!2209825) (derivationStepZipperUp!573 lt!2209825 (h!68226 s!2326)))))

(assert (=> bs!1252299 m!6442770))

(assert (=> d!1728956 d!1729264))

(declare-fun b_lambda!206903 () Bool)

(assert (= b_lambda!206897 (or b!5418685 b_lambda!206903)))

(declare-fun bs!1252300 () Bool)

(declare-fun d!1729266 () Bool)

(assert (= bs!1252300 (and d!1729266 b!5418685)))

(assert (=> bs!1252300 (= (dynLambda!24345 lambda!283574 (h!68228 zl!343)) (derivationStepZipperUp!573 (h!68228 zl!343) (h!68226 s!2326)))))

(assert (=> bs!1252300 m!6442654))

(assert (=> d!1729210 d!1729266))

(declare-fun b_lambda!206905 () Bool)

(assert (= b_lambda!206881 (or b!5418685 b_lambda!206905)))

(declare-fun bs!1252301 () Bool)

(declare-fun d!1729268 () Bool)

(assert (= bs!1252301 (and d!1729268 b!5418685)))

(assert (=> bs!1252301 (= (dynLambda!24345 lambda!283574 lt!2209826) (derivationStepZipperUp!573 lt!2209826 (h!68226 s!2326)))))

(assert (=> bs!1252301 m!6442594))

(assert (=> d!1729150 d!1729268))

(declare-fun b_lambda!206907 () Bool)

(assert (= b_lambda!206879 (or b!5418711 b_lambda!206907)))

(declare-fun bs!1252302 () Bool)

(declare-fun d!1729270 () Bool)

(assert (= bs!1252302 (and d!1729270 b!5418711)))

(declare-fun lt!2210068 () Unit!154326)

(assert (=> bs!1252302 (= lt!2210068 (lemmaConcatPreservesForall!226 (exprs!5085 lt!2209826) lt!2209776 lambda!283576))))

(assert (=> bs!1252302 (= (dynLambda!24346 lambda!283575 lt!2209826) (Context!9171 (++!13576 (exprs!5085 lt!2209826) lt!2209776)))))

(declare-fun m!6444064 () Bool)

(assert (=> bs!1252302 m!6444064))

(declare-fun m!6444066 () Bool)

(assert (=> bs!1252302 m!6444066))

(assert (=> d!1729140 d!1729270))

(check-sat (not bm!387920) (not d!1729174) (not b!5419951) (not d!1729132) (not b!5419469) (not b!5419543) (not b!5419985) (not bm!387905) (not b!5418908) (not b!5419900) (not bm!387907) (not d!1728974) (not d!1729250) (not b!5419330) (not b!5419971) (not b!5419303) (not b!5419372) (not b!5419887) (not b!5418952) (not d!1729254) (not b!5419851) (not bm!387914) (not d!1729156) (not b!5419259) (not b!5419289) (not d!1729246) (not b!5419279) (not bs!1252302) (not d!1728986) (not b!5419939) (not b!5419194) (not b!5419566) (not b!5419250) (not d!1729218) (not d!1729216) (not d!1729222) (not bm!387891) (not bs!1252299) (not b!5419966) (not b!5419534) (not b!5419154) (not b!5419857) (not b!5419862) (not d!1729234) (not b!5419456) (not d!1729244) (not d!1728894) (not b_lambda!206903) (not b!5418910) (not b!5419334) (not b!5419784) (not d!1729190) (not d!1729022) (not bm!387853) (not bm!387874) (not b!5419867) (not b!5419800) (not bm!387889) (not d!1728960) (not d!1729048) (not b!5419333) (not b!5419855) (not bm!387915) (not b!5419264) (not d!1728968) (not d!1728896) (not d!1729150) (not b!5419288) (not b!5419632) (not b!5419193) (not b!5419916) (not b!5419302) (not d!1729258) (not b!5419762) (not bm!387876) (not d!1728958) (not b!5419637) (not d!1729036) (not b!5419850) (not d!1729060) (not d!1728972) (not b!5419975) (not b!5419904) (not bm!387826) (not b!5419280) (not b!5419245) (not b!5419336) (not d!1729228) (not d!1728916) (not b!5419459) (not d!1729144) (not b!5419871) (not b!5419810) (not b!5419467) (not b!5419902) (not d!1729124) (not b!5419568) (not b!5419761) (not d!1729198) (not b!5419537) (not b!5419854) (not bm!387904) (not b!5419237) (not b!5419755) (not b!5419774) (not b!5419536) (not b!5419011) (not d!1728970) (not b!5419970) (not d!1729088) (not b!5419243) (not b!5419863) (not b!5419802) (not b!5419965) (not d!1729004) (not b!5419132) (not b!5419873) (not b!5419295) (not b!5419337) (not bm!387877) (not b!5419629) (not bm!387909) (not d!1729248) (not b!5419824) (not b!5419153) (not d!1729236) (not d!1729086) (not bm!387921) (not b!5419008) (not d!1729252) (not b!5419301) (not d!1729070) (not d!1728950) (not b!5419953) (not d!1729016) (not b!5419907) (not b!5419004) (not b!5419787) (not b!5419856) (not d!1729140) (not bm!387888) (not b!5419888) (not b!5419535) (not b!5419969) (not b!5419891) (not b!5419815) (not d!1729010) (not b_lambda!206907) (not b!5419135) (not b!5419870) (not b!5419305) (not d!1729220) (not b!5419258) (not d!1729098) (not b!5419957) (not setNonEmpty!35315) (not b!5419797) (not d!1729032) (not b!5419427) (not d!1728978) (not d!1728882) (not d!1729014) (not b!5418879) (not b!5419780) (not b!5419892) (not b!5419901) (not d!1729146) (not b!5419807) (not b!5419155) (not d!1729034) (not b!5419251) (not b!5419570) (not d!1728988) (not bm!387844) (not b!5419805) (not b!5419003) (not b!5419853) (not b!5419431) (not b!5419962) (not b!5419847) (not bm!387913) (not b!5419794) (not b!5419812) (not b!5419294) (not b!5419952) (not b!5419956) (not d!1729194) (not b!5418878) (not d!1728952) (not b!5419466) (not b!5419634) (not b!5419291) (not b!5419538) (not b!5419758) (not b!5419465) (not b_lambda!206899) (not bs!1252301) (not b!5419864) (not b!5419861) (not b!5419247) (not b!5419281) (not b!5419244) (not d!1729238) (not b!5419980) (not b!5418959) (not b!5419931) (not d!1728878) (not b!5419547) (not d!1729202) (not b!5419567) (not b!5419010) (not b!5419955) (not b!5419257) (not b!5419308) (not b!5419261) (not d!1729200) (not d!1729138) (not b!5419520) (not b!5418917) (not b!5419793) (not b!5419605) (not b!5419938) (not b!5419007) (not bm!387875) (not b!5419457) (not b!5419763) (not b!5418914) (not d!1728994) (not bm!387840) (not b!5418909) (not bm!387918) (not d!1729206) (not bm!387854) (not b!5419287) (not b!5419795) (not b!5419921) (not d!1728920) (not d!1729118) (not b!5419773) (not d!1729188) (not d!1729232) (not b!5419868) (not b!5419859) (not d!1728892) (not bs!1252298) (not d!1729018) (not bm!387880) (not bm!387873) (not bm!387908) (not bm!387852) (not d!1729230) (not b!5419912) (not b!5419973) (not b!5419963) (not d!1729100) (not b!5419858) (not bm!387906) (not bm!387917) (not d!1729242) (not bm!387843) (not bm!387916) (not b!5419756) (not b_lambda!206905) (not d!1728956) tp_is_empty!39655 (not d!1728918) (not b!5419472) (not bm!387841) (not bm!387890) (not bs!1252300) (not d!1728976) (not b!5419967) (not b!5419560) (not d!1728888) (not b!5419974) (not b!5419894) (not b!5418912) (not b_lambda!206901) (not d!1729008) (not b!5419920) (not d!1729026) (not b!5419874) (not d!1729092) (not b!5418958) (not b!5419860) (not d!1729154) (not b!5419573) (not b!5418913) (not d!1729226) (not d!1729142) (not d!1728930) (not b!5419329) (not d!1729210))
(check-sat)
