; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682762 () Bool)

(assert start!682762)

(declare-fun b!7049586 () Bool)

(assert (=> b!7049586 true))

(declare-fun b!7049584 () Bool)

(assert (=> b!7049584 true))

(declare-fun b!7049579 () Bool)

(assert (=> b!7049579 true))

(declare-fun b!7049570 () Bool)

(declare-fun e!4237930 () Bool)

(declare-fun e!4237920 () Bool)

(assert (=> b!7049570 (= e!4237930 e!4237920)))

(declare-fun res!2877909 () Bool)

(assert (=> b!7049570 (=> res!2877909 e!4237920)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35312 0))(
  ( (C!35313 (val!27358 Int)) )
))
(declare-datatypes ((Regex!17521 0))(
  ( (ElementMatch!17521 (c!1313021 C!35312)) (Concat!26366 (regOne!35554 Regex!17521) (regTwo!35554 Regex!17521)) (EmptyExpr!17521) (Star!17521 (reg!17850 Regex!17521)) (EmptyLang!17521) (Union!17521 (regOne!35555 Regex!17521) (regTwo!35555 Regex!17521)) )
))
(declare-datatypes ((List!68091 0))(
  ( (Nil!67967) (Cons!67967 (h!74415 Regex!17521) (t!381870 List!68091)) )
))
(declare-datatypes ((Context!13034 0))(
  ( (Context!13035 (exprs!7017 List!68091)) )
))
(declare-fun lt!2528806 () (InoxSet Context!13034))

(declare-fun lt!2528810 () (InoxSet Context!13034))

(assert (=> b!7049570 (= res!2877909 (not (= lt!2528806 lt!2528810)))))

(declare-fun lt!2528787 () Context!13034)

(assert (=> b!7049570 (= lt!2528806 (store ((as const (Array Context!13034 Bool)) false) lt!2528787 true))))

(declare-datatypes ((Unit!161730 0))(
  ( (Unit!161731) )
))
(declare-fun lt!2528798 () Unit!161730)

(declare-fun lt!2528786 () Context!13034)

(declare-fun lambda!418503 () Int)

(declare-fun ct2!306 () Context!13034)

(declare-fun lemmaConcatPreservesForall!842 (List!68091 List!68091 Int) Unit!161730)

(assert (=> b!7049570 (= lt!2528798 (lemmaConcatPreservesForall!842 (exprs!7017 lt!2528786) (exprs!7017 ct2!306) lambda!418503))))

(declare-fun setRes!49548 () Bool)

(declare-fun e!4237923 () Bool)

(declare-fun setNonEmpty!49548 () Bool)

(declare-fun setElem!49548 () Context!13034)

(declare-fun tp!1938530 () Bool)

(declare-fun inv!86661 (Context!13034) Bool)

(assert (=> setNonEmpty!49548 (= setRes!49548 (and tp!1938530 (inv!86661 setElem!49548) e!4237923))))

(declare-fun z1!570 () (InoxSet Context!13034))

(declare-fun setRest!49548 () (InoxSet Context!13034))

(assert (=> setNonEmpty!49548 (= z1!570 ((_ map or) (store ((as const (Array Context!13034 Bool)) false) setElem!49548 true) setRest!49548))))

(declare-fun b!7049571 () Bool)

(declare-fun res!2877901 () Bool)

(declare-fun e!4237924 () Bool)

(assert (=> b!7049571 (=> res!2877901 e!4237924)))

(get-info :version)

(assert (=> b!7049571 (= res!2877901 (not ((_ is Cons!67967) (exprs!7017 lt!2528786))))))

(declare-fun b!7049572 () Bool)

(declare-fun e!4237929 () Bool)

(assert (=> b!7049572 (= e!4237924 e!4237929)))

(declare-fun res!2877897 () Bool)

(assert (=> b!7049572 (=> res!2877897 e!4237929)))

(declare-fun nullable!7232 (Regex!17521) Bool)

(assert (=> b!7049572 (= res!2877897 (nullable!7232 (h!74415 (exprs!7017 lt!2528786))))))

(declare-fun lt!2528793 () Context!13034)

(declare-fun lt!2528799 () List!68091)

(assert (=> b!7049572 (= lt!2528793 (Context!13035 lt!2528799))))

(declare-fun tail!13650 (List!68091) List!68091)

(assert (=> b!7049572 (= lt!2528799 (tail!13650 (exprs!7017 lt!2528786)))))

(declare-fun b!7049573 () Bool)

(declare-fun res!2877905 () Bool)

(declare-fun e!4237927 () Bool)

(assert (=> b!7049573 (=> (not res!2877905) (not e!4237927))))

(declare-datatypes ((List!68092 0))(
  ( (Nil!67968) (Cons!67968 (h!74416 C!35312) (t!381871 List!68092)) )
))
(declare-fun s!7408 () List!68092)

(assert (=> b!7049573 (= res!2877905 ((_ is Cons!67968) s!7408))))

(declare-fun b!7049574 () Bool)

(declare-fun e!4237918 () Bool)

(declare-fun tp!1938532 () Bool)

(assert (=> b!7049574 (= e!4237918 tp!1938532)))

(declare-fun setIsEmpty!49548 () Bool)

(assert (=> setIsEmpty!49548 setRes!49548))

(declare-fun b!7049575 () Bool)

(declare-fun res!2877907 () Bool)

(declare-fun e!4237928 () Bool)

(assert (=> b!7049575 (=> res!2877907 e!4237928)))

(declare-fun lt!2528795 () (InoxSet Context!13034))

(declare-datatypes ((tuple2!68172 0))(
  ( (tuple2!68173 (_1!37389 List!68092) (_2!37389 List!68092)) )
))
(declare-fun lt!2528791 () tuple2!68172)

(declare-fun matchZipper!3061 ((InoxSet Context!13034) List!68092) Bool)

(assert (=> b!7049575 (= res!2877907 (not (matchZipper!3061 lt!2528795 (_2!37389 lt!2528791))))))

(declare-fun b!7049576 () Bool)

(declare-fun tp!1938531 () Bool)

(assert (=> b!7049576 (= e!4237923 tp!1938531)))

(declare-fun b!7049577 () Bool)

(declare-fun e!4237921 () Bool)

(declare-fun tp_is_empty!44267 () Bool)

(declare-fun tp!1938533 () Bool)

(assert (=> b!7049577 (= e!4237921 (and tp_is_empty!44267 tp!1938533))))

(declare-fun b!7049578 () Bool)

(declare-fun e!4237925 () Bool)

(assert (=> b!7049578 (= e!4237925 e!4237928)))

(declare-fun res!2877906 () Bool)

(assert (=> b!7049578 (=> res!2877906 e!4237928)))

(declare-fun lt!2528807 () (InoxSet Context!13034))

(assert (=> b!7049578 (= res!2877906 (not (matchZipper!3061 lt!2528807 (_1!37389 lt!2528791))))))

(declare-datatypes ((Option!16918 0))(
  ( (None!16917) (Some!16917 (v!53207 tuple2!68172)) )
))
(declare-fun lt!2528781 () Option!16918)

(declare-fun get!23829 (Option!16918) tuple2!68172)

(assert (=> b!7049578 (= lt!2528791 (get!23829 lt!2528781))))

(declare-fun isDefined!13619 (Option!16918) Bool)

(assert (=> b!7049578 (isDefined!13619 lt!2528781)))

(declare-fun findConcatSeparationZippers!434 ((InoxSet Context!13034) (InoxSet Context!13034) List!68092 List!68092 List!68092) Option!16918)

(assert (=> b!7049578 (= lt!2528781 (findConcatSeparationZippers!434 lt!2528807 lt!2528795 Nil!67968 (t!381871 s!7408) (t!381871 s!7408)))))

(assert (=> b!7049578 (= lt!2528795 (store ((as const (Array Context!13034 Bool)) false) ct2!306 true))))

(declare-fun lt!2528790 () Unit!161730)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!422 ((InoxSet Context!13034) Context!13034 List!68092) Unit!161730)

(assert (=> b!7049578 (= lt!2528790 (lemmaConcatZipperMatchesStringThenFindConcatDefined!422 lt!2528807 ct2!306 (t!381871 s!7408)))))

(declare-fun lt!2528788 () (InoxSet Context!13034))

(declare-fun appendTo!642 ((InoxSet Context!13034) Context!13034) (InoxSet Context!13034))

(assert (=> b!7049578 (= lt!2528788 (appendTo!642 lt!2528807 ct2!306))))

(declare-fun derivationStepZipperDown!2185 (Regex!17521 Context!13034 C!35312) (InoxSet Context!13034))

(assert (=> b!7049578 (= lt!2528807 (derivationStepZipperDown!2185 (h!74415 (exprs!7017 lt!2528786)) lt!2528793 (h!74416 s!7408)))))

(declare-fun lt!2528802 () Unit!161730)

(assert (=> b!7049578 (= lt!2528802 (lemmaConcatPreservesForall!842 lt!2528799 (exprs!7017 ct2!306) lambda!418503))))

(declare-fun lt!2528808 () Unit!161730)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!98 (Context!13034 Regex!17521 C!35312 Context!13034) Unit!161730)

(assert (=> b!7049578 (= lt!2528808 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!98 lt!2528793 (h!74415 (exprs!7017 lt!2528786)) (h!74416 s!7408) ct2!306))))

(assert (=> b!7049579 (= e!4237920 e!4237924)))

(declare-fun res!2877898 () Bool)

(assert (=> b!7049579 (=> res!2877898 e!4237924)))

(declare-fun lt!2528796 () (InoxSet Context!13034))

(declare-fun derivationStepZipper!2977 ((InoxSet Context!13034) C!35312) (InoxSet Context!13034))

(assert (=> b!7049579 (= res!2877898 (not (= (derivationStepZipper!2977 lt!2528806 (h!74416 s!7408)) lt!2528796)))))

(declare-fun lambda!418504 () Int)

(declare-fun flatMap!2468 ((InoxSet Context!13034) Int) (InoxSet Context!13034))

(declare-fun derivationStepZipperUp!2131 (Context!13034 C!35312) (InoxSet Context!13034))

(assert (=> b!7049579 (= (flatMap!2468 lt!2528806 lambda!418504) (derivationStepZipperUp!2131 lt!2528787 (h!74416 s!7408)))))

(declare-fun lt!2528783 () Unit!161730)

(declare-fun lemmaFlatMapOnSingletonSet!1982 ((InoxSet Context!13034) Context!13034 Int) Unit!161730)

(assert (=> b!7049579 (= lt!2528783 (lemmaFlatMapOnSingletonSet!1982 lt!2528806 lt!2528787 lambda!418504))))

(assert (=> b!7049579 (= lt!2528796 (derivationStepZipperUp!2131 lt!2528787 (h!74416 s!7408)))))

(declare-fun lt!2528785 () Unit!161730)

(assert (=> b!7049579 (= lt!2528785 (lemmaConcatPreservesForall!842 (exprs!7017 lt!2528786) (exprs!7017 ct2!306) lambda!418503))))

(declare-fun b!7049580 () Bool)

(declare-fun res!2877904 () Bool)

(assert (=> b!7049580 (=> res!2877904 e!4237924)))

(declare-fun isEmpty!39676 (List!68091) Bool)

(assert (=> b!7049580 (= res!2877904 (isEmpty!39676 (exprs!7017 lt!2528786)))))

(declare-fun res!2877895 () Bool)

(assert (=> start!682762 (=> (not res!2877895) (not e!4237927))))

(declare-fun lt!2528800 () (InoxSet Context!13034))

(assert (=> start!682762 (= res!2877895 (matchZipper!3061 lt!2528800 s!7408))))

(assert (=> start!682762 (= lt!2528800 (appendTo!642 z1!570 ct2!306))))

(assert (=> start!682762 e!4237927))

(declare-fun condSetEmpty!49548 () Bool)

(assert (=> start!682762 (= condSetEmpty!49548 (= z1!570 ((as const (Array Context!13034 Bool)) false)))))

(assert (=> start!682762 setRes!49548))

(assert (=> start!682762 (and (inv!86661 ct2!306) e!4237918)))

(assert (=> start!682762 e!4237921))

(declare-fun b!7049569 () Bool)

(declare-fun e!4237926 () Bool)

(declare-fun e!4237919 () Bool)

(assert (=> b!7049569 (= e!4237926 e!4237919)))

(declare-fun res!2877903 () Bool)

(assert (=> b!7049569 (=> res!2877903 e!4237919)))

(declare-fun lt!2528804 () (InoxSet Context!13034))

(declare-fun lt!2528794 () List!68092)

(assert (=> b!7049569 (= res!2877903 (not (matchZipper!3061 lt!2528804 lt!2528794)))))

(assert (=> b!7049569 (= lt!2528794 (Cons!67968 (h!74416 s!7408) (_1!37389 lt!2528791)))))

(declare-fun b!7049581 () Bool)

(declare-fun res!2877908 () Bool)

(declare-fun e!4237922 () Bool)

(assert (=> b!7049581 (=> res!2877908 e!4237922)))

(declare-fun lt!2528801 () Context!13034)

(assert (=> b!7049581 (= res!2877908 (not (select lt!2528800 lt!2528801)))))

(declare-fun b!7049582 () Bool)

(assert (=> b!7049582 (= e!4237928 e!4237926)))

(declare-fun res!2877896 () Bool)

(assert (=> b!7049582 (=> res!2877896 e!4237926)))

(declare-fun lt!2528789 () (InoxSet Context!13034))

(declare-fun lt!2528805 () (InoxSet Context!13034))

(assert (=> b!7049582 (= res!2877896 (or (not (= lt!2528805 lt!2528789)) (not (= lt!2528805 lt!2528807))))))

(assert (=> b!7049582 (= (flatMap!2468 lt!2528804 lambda!418504) (derivationStepZipperUp!2131 lt!2528786 (h!74416 s!7408)))))

(declare-fun lt!2528792 () Unit!161730)

(assert (=> b!7049582 (= lt!2528792 (lemmaFlatMapOnSingletonSet!1982 lt!2528804 lt!2528786 lambda!418504))))

(assert (=> b!7049582 (= lt!2528789 (derivationStepZipperUp!2131 lt!2528786 (h!74416 s!7408)))))

(assert (=> b!7049582 (= lt!2528805 (derivationStepZipper!2977 lt!2528804 (h!74416 s!7408)))))

(assert (=> b!7049582 (= lt!2528804 (store ((as const (Array Context!13034 Bool)) false) lt!2528786 true))))

(declare-fun b!7049583 () Bool)

(assert (=> b!7049583 (= e!4237929 e!4237925)))

(declare-fun res!2877910 () Bool)

(assert (=> b!7049583 (=> res!2877910 e!4237925)))

(assert (=> b!7049583 (= res!2877910 (not (matchZipper!3061 lt!2528788 (t!381871 s!7408))))))

(declare-fun ++!15613 (List!68091 List!68091) List!68091)

(assert (=> b!7049583 (= lt!2528788 (derivationStepZipperDown!2185 (h!74415 (exprs!7017 lt!2528786)) (Context!13035 (++!15613 lt!2528799 (exprs!7017 ct2!306))) (h!74416 s!7408)))))

(declare-fun lt!2528803 () Unit!161730)

(assert (=> b!7049583 (= lt!2528803 (lemmaConcatPreservesForall!842 lt!2528799 (exprs!7017 ct2!306) lambda!418503))))

(assert (=> b!7049584 (= e!4237922 e!4237930)))

(declare-fun res!2877900 () Bool)

(assert (=> b!7049584 (=> res!2877900 e!4237930)))

(assert (=> b!7049584 (= res!2877900 (or (not (= lt!2528787 lt!2528801)) (not (select z1!570 lt!2528786))))))

(assert (=> b!7049584 (= lt!2528787 (Context!13035 (++!15613 (exprs!7017 lt!2528786) (exprs!7017 ct2!306))))))

(declare-fun lt!2528797 () Unit!161730)

(assert (=> b!7049584 (= lt!2528797 (lemmaConcatPreservesForall!842 (exprs!7017 lt!2528786) (exprs!7017 ct2!306) lambda!418503))))

(declare-fun lambda!418502 () Int)

(declare-fun mapPost2!362 ((InoxSet Context!13034) Int Context!13034) Context!13034)

(assert (=> b!7049584 (= lt!2528786 (mapPost2!362 z1!570 lambda!418502 lt!2528801))))

(declare-fun b!7049585 () Bool)

(declare-fun res!2877902 () Bool)

(assert (=> b!7049585 (=> res!2877902 e!4237928)))

(declare-fun ++!15614 (List!68092 List!68092) List!68092)

(assert (=> b!7049585 (= res!2877902 (not (= (++!15614 (_1!37389 lt!2528791) (_2!37389 lt!2528791)) (t!381871 s!7408))))))

(assert (=> b!7049586 (= e!4237927 (not e!4237922))))

(declare-fun res!2877899 () Bool)

(assert (=> b!7049586 (=> res!2877899 e!4237922)))

(assert (=> b!7049586 (= res!2877899 (not (matchZipper!3061 lt!2528810 s!7408)))))

(assert (=> b!7049586 (= lt!2528810 (store ((as const (Array Context!13034 Bool)) false) lt!2528801 true))))

(declare-fun lambda!418501 () Int)

(declare-fun getWitness!1564 ((InoxSet Context!13034) Int) Context!13034)

(assert (=> b!7049586 (= lt!2528801 (getWitness!1564 lt!2528800 lambda!418501))))

(declare-datatypes ((List!68093 0))(
  ( (Nil!67969) (Cons!67969 (h!74417 Context!13034) (t!381872 List!68093)) )
))
(declare-fun lt!2528809 () List!68093)

(declare-fun exists!3485 (List!68093 Int) Bool)

(assert (=> b!7049586 (exists!3485 lt!2528809 lambda!418501)))

(declare-fun lt!2528782 () Unit!161730)

(declare-fun lemmaZipperMatchesExistsMatchingContext!460 (List!68093 List!68092) Unit!161730)

(assert (=> b!7049586 (= lt!2528782 (lemmaZipperMatchesExistsMatchingContext!460 lt!2528809 s!7408))))

(declare-fun toList!10864 ((InoxSet Context!13034)) List!68093)

(assert (=> b!7049586 (= lt!2528809 (toList!10864 lt!2528800))))

(declare-fun b!7049587 () Bool)

(assert (=> b!7049587 (= e!4237919 true)))

(assert (=> b!7049587 (isDefined!13619 (findConcatSeparationZippers!434 lt!2528804 lt!2528795 Nil!67968 s!7408 s!7408))))

(declare-fun lt!2528784 () Unit!161730)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!48 ((InoxSet Context!13034) (InoxSet Context!13034) List!68092 List!68092 List!68092 List!68092 List!68092) Unit!161730)

(assert (=> b!7049587 (= lt!2528784 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!48 lt!2528804 lt!2528795 lt!2528794 (_2!37389 lt!2528791) s!7408 Nil!67968 s!7408))))

(assert (= (and start!682762 res!2877895) b!7049573))

(assert (= (and b!7049573 res!2877905) b!7049586))

(assert (= (and b!7049586 (not res!2877899)) b!7049581))

(assert (= (and b!7049581 (not res!2877908)) b!7049584))

(assert (= (and b!7049584 (not res!2877900)) b!7049570))

(assert (= (and b!7049570 (not res!2877909)) b!7049579))

(assert (= (and b!7049579 (not res!2877898)) b!7049571))

(assert (= (and b!7049571 (not res!2877901)) b!7049580))

(assert (= (and b!7049580 (not res!2877904)) b!7049572))

(assert (= (and b!7049572 (not res!2877897)) b!7049583))

(assert (= (and b!7049583 (not res!2877910)) b!7049578))

(assert (= (and b!7049578 (not res!2877906)) b!7049575))

(assert (= (and b!7049575 (not res!2877907)) b!7049585))

(assert (= (and b!7049585 (not res!2877902)) b!7049582))

(assert (= (and b!7049582 (not res!2877896)) b!7049569))

(assert (= (and b!7049569 (not res!2877903)) b!7049587))

(assert (= (and start!682762 condSetEmpty!49548) setIsEmpty!49548))

(assert (= (and start!682762 (not condSetEmpty!49548)) setNonEmpty!49548))

(assert (= setNonEmpty!49548 b!7049576))

(assert (= start!682762 b!7049574))

(assert (= (and start!682762 ((_ is Cons!67968) s!7408)) b!7049577))

(declare-fun m!7765076 () Bool)

(assert (=> b!7049569 m!7765076))

(declare-fun m!7765078 () Bool)

(assert (=> start!682762 m!7765078))

(declare-fun m!7765080 () Bool)

(assert (=> start!682762 m!7765080))

(declare-fun m!7765082 () Bool)

(assert (=> start!682762 m!7765082))

(declare-fun m!7765084 () Bool)

(assert (=> b!7049583 m!7765084))

(declare-fun m!7765086 () Bool)

(assert (=> b!7049583 m!7765086))

(declare-fun m!7765088 () Bool)

(assert (=> b!7049583 m!7765088))

(declare-fun m!7765090 () Bool)

(assert (=> b!7049583 m!7765090))

(declare-fun m!7765092 () Bool)

(assert (=> b!7049578 m!7765092))

(assert (=> b!7049578 m!7765090))

(declare-fun m!7765094 () Bool)

(assert (=> b!7049578 m!7765094))

(declare-fun m!7765096 () Bool)

(assert (=> b!7049578 m!7765096))

(declare-fun m!7765098 () Bool)

(assert (=> b!7049578 m!7765098))

(declare-fun m!7765100 () Bool)

(assert (=> b!7049578 m!7765100))

(declare-fun m!7765102 () Bool)

(assert (=> b!7049578 m!7765102))

(declare-fun m!7765104 () Bool)

(assert (=> b!7049578 m!7765104))

(declare-fun m!7765106 () Bool)

(assert (=> b!7049578 m!7765106))

(declare-fun m!7765108 () Bool)

(assert (=> b!7049578 m!7765108))

(declare-fun m!7765110 () Bool)

(assert (=> b!7049585 m!7765110))

(declare-fun m!7765112 () Bool)

(assert (=> b!7049572 m!7765112))

(declare-fun m!7765114 () Bool)

(assert (=> b!7049572 m!7765114))

(declare-fun m!7765116 () Bool)

(assert (=> b!7049582 m!7765116))

(declare-fun m!7765118 () Bool)

(assert (=> b!7049582 m!7765118))

(declare-fun m!7765120 () Bool)

(assert (=> b!7049582 m!7765120))

(declare-fun m!7765122 () Bool)

(assert (=> b!7049582 m!7765122))

(declare-fun m!7765124 () Bool)

(assert (=> b!7049582 m!7765124))

(declare-fun m!7765126 () Bool)

(assert (=> b!7049570 m!7765126))

(declare-fun m!7765128 () Bool)

(assert (=> b!7049570 m!7765128))

(declare-fun m!7765130 () Bool)

(assert (=> b!7049580 m!7765130))

(declare-fun m!7765132 () Bool)

(assert (=> setNonEmpty!49548 m!7765132))

(declare-fun m!7765134 () Bool)

(assert (=> b!7049579 m!7765134))

(declare-fun m!7765136 () Bool)

(assert (=> b!7049579 m!7765136))

(declare-fun m!7765138 () Bool)

(assert (=> b!7049579 m!7765138))

(declare-fun m!7765140 () Bool)

(assert (=> b!7049579 m!7765140))

(assert (=> b!7049579 m!7765128))

(declare-fun m!7765142 () Bool)

(assert (=> b!7049586 m!7765142))

(declare-fun m!7765144 () Bool)

(assert (=> b!7049586 m!7765144))

(declare-fun m!7765146 () Bool)

(assert (=> b!7049586 m!7765146))

(declare-fun m!7765148 () Bool)

(assert (=> b!7049586 m!7765148))

(declare-fun m!7765150 () Bool)

(assert (=> b!7049586 m!7765150))

(declare-fun m!7765152 () Bool)

(assert (=> b!7049586 m!7765152))

(declare-fun m!7765154 () Bool)

(assert (=> b!7049587 m!7765154))

(assert (=> b!7049587 m!7765154))

(declare-fun m!7765156 () Bool)

(assert (=> b!7049587 m!7765156))

(declare-fun m!7765158 () Bool)

(assert (=> b!7049587 m!7765158))

(declare-fun m!7765160 () Bool)

(assert (=> b!7049584 m!7765160))

(declare-fun m!7765162 () Bool)

(assert (=> b!7049584 m!7765162))

(assert (=> b!7049584 m!7765128))

(declare-fun m!7765164 () Bool)

(assert (=> b!7049584 m!7765164))

(declare-fun m!7765166 () Bool)

(assert (=> b!7049581 m!7765166))

(declare-fun m!7765168 () Bool)

(assert (=> b!7049575 m!7765168))

(check-sat (not b!7049580) (not b!7049582) (not b!7049574) (not b!7049579) tp_is_empty!44267 (not b!7049577) (not b!7049584) (not setNonEmpty!49548) (not b!7049575) (not b!7049587) (not b!7049583) (not b!7049570) (not b!7049585) (not b!7049572) (not start!682762) (not b!7049576) (not b!7049569) (not b!7049578) (not b!7049586))
(check-sat)
