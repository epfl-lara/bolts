; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688032 () Bool)

(assert start!688032)

(declare-fun b!7077363 () Bool)

(assert (=> b!7077363 true))

(declare-fun b!7077371 () Bool)

(assert (=> b!7077371 true))

(declare-fun b!7077366 () Bool)

(assert (=> b!7077366 true))

(declare-fun b!7077356 () Bool)

(declare-fun e!4254933 () Bool)

(declare-fun tp!1943033 () Bool)

(assert (=> b!7077356 (= e!4254933 tp!1943033)))

(declare-fun b!7077357 () Bool)

(declare-fun res!2890839 () Bool)

(declare-fun e!4254927 () Bool)

(assert (=> b!7077357 (=> res!2890839 e!4254927)))

(declare-datatypes ((C!35612 0))(
  ( (C!35613 (val!27508 Int)) )
))
(declare-datatypes ((Regex!17671 0))(
  ( (ElementMatch!17671 (c!1320580 C!35612)) (Concat!26516 (regOne!35854 Regex!17671) (regTwo!35854 Regex!17671)) (EmptyExpr!17671) (Star!17671 (reg!18000 Regex!17671)) (EmptyLang!17671) (Union!17671 (regOne!35855 Regex!17671) (regTwo!35855 Regex!17671)) )
))
(declare-datatypes ((List!68539 0))(
  ( (Nil!68415) (Cons!68415 (h!74863 Regex!17671) (t!382324 List!68539)) )
))
(declare-datatypes ((Context!13334 0))(
  ( (Context!13335 (exprs!7167 List!68539)) )
))
(declare-fun lt!2549855 () Context!13334)

(declare-fun isEmpty!39934 (List!68539) Bool)

(assert (=> b!7077357 (= res!2890839 (isEmpty!39934 (exprs!7167 lt!2549855)))))

(declare-fun b!7077358 () Bool)

(declare-fun e!4254936 () Bool)

(declare-fun e!4254934 () Bool)

(assert (=> b!7077358 (= e!4254936 e!4254934)))

(declare-fun res!2890824 () Bool)

(assert (=> b!7077358 (=> res!2890824 e!4254934)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2549862 () (InoxSet Context!13334))

(declare-fun lt!2549841 () (InoxSet Context!13334))

(assert (=> b!7077358 (= res!2890824 (not (= lt!2549862 lt!2549841)))))

(declare-fun lt!2549852 () Context!13334)

(assert (=> b!7077358 (= lt!2549862 (store ((as const (Array Context!13334 Bool)) false) lt!2549852 true))))

(declare-fun ct2!306 () Context!13334)

(declare-datatypes ((Unit!162053 0))(
  ( (Unit!162054) )
))
(declare-fun lt!2549850 () Unit!162053)

(declare-fun lambda!426950 () Int)

(declare-fun lemmaConcatPreservesForall!982 (List!68539 List!68539 Int) Unit!162053)

(assert (=> b!7077358 (= lt!2549850 (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549855) (exprs!7167 ct2!306) lambda!426950))))

(declare-fun b!7077359 () Bool)

(declare-fun res!2890833 () Bool)

(declare-fun e!4254931 () Bool)

(assert (=> b!7077359 (=> res!2890833 e!4254931)))

(declare-datatypes ((List!68540 0))(
  ( (Nil!68416) (Cons!68416 (h!74864 C!35612) (t!382325 List!68540)) )
))
(declare-datatypes ((tuple2!68300 0))(
  ( (tuple2!68301 (_1!37453 List!68540) (_2!37453 List!68540)) )
))
(declare-fun lt!2549839 () tuple2!68300)

(declare-fun lt!2549846 () List!68540)

(declare-fun s!7408 () List!68540)

(declare-fun ++!15817 (List!68540 List!68540) List!68540)

(assert (=> b!7077359 (= res!2890833 (not (= (++!15817 lt!2549846 (_2!37453 lt!2549839)) s!7408)))))

(declare-fun b!7077360 () Bool)

(declare-fun e!4254925 () Bool)

(declare-fun tp!1943032 () Bool)

(assert (=> b!7077360 (= e!4254925 tp!1943032)))

(declare-fun b!7077361 () Bool)

(declare-fun res!2890834 () Bool)

(declare-fun e!4254926 () Bool)

(assert (=> b!7077361 (=> res!2890834 e!4254926)))

(declare-fun lt!2549837 () (InoxSet Context!13334))

(declare-fun matchZipper!3211 ((InoxSet Context!13334) List!68540) Bool)

(assert (=> b!7077361 (= res!2890834 (not (matchZipper!3211 lt!2549837 (_2!37453 lt!2549839))))))

(declare-fun setNonEmpty!50401 () Bool)

(declare-fun setRes!50401 () Bool)

(declare-fun tp!1943031 () Bool)

(declare-fun setElem!50401 () Context!13334)

(declare-fun inv!87036 (Context!13334) Bool)

(assert (=> setNonEmpty!50401 (= setRes!50401 (and tp!1943031 (inv!87036 setElem!50401) e!4254933))))

(declare-fun z1!570 () (InoxSet Context!13334))

(declare-fun setRest!50401 () (InoxSet Context!13334))

(assert (=> setNonEmpty!50401 (= z1!570 ((_ map or) (store ((as const (Array Context!13334 Bool)) false) setElem!50401 true) setRest!50401))))

(declare-fun b!7077362 () Bool)

(declare-fun e!4254929 () Bool)

(assert (=> b!7077362 (= e!4254926 e!4254929)))

(declare-fun res!2890830 () Bool)

(assert (=> b!7077362 (=> res!2890830 e!4254929)))

(declare-fun lt!2549840 () (InoxSet Context!13334))

(declare-fun lt!2549859 () (InoxSet Context!13334))

(declare-fun lt!2549848 () (InoxSet Context!13334))

(assert (=> b!7077362 (= res!2890830 (or (not (= lt!2549840 lt!2549848)) (not (= lt!2549840 lt!2549859))))))

(declare-fun lt!2549845 () (InoxSet Context!13334))

(declare-fun lambda!426951 () Int)

(declare-fun flatMap!2597 ((InoxSet Context!13334) Int) (InoxSet Context!13334))

(declare-fun derivationStepZipperUp!2255 (Context!13334 C!35612) (InoxSet Context!13334))

(assert (=> b!7077362 (= (flatMap!2597 lt!2549845 lambda!426951) (derivationStepZipperUp!2255 lt!2549855 (h!74864 s!7408)))))

(declare-fun lt!2549863 () Unit!162053)

(declare-fun lemmaFlatMapOnSingletonSet!2106 ((InoxSet Context!13334) Context!13334 Int) Unit!162053)

(assert (=> b!7077362 (= lt!2549863 (lemmaFlatMapOnSingletonSet!2106 lt!2549845 lt!2549855 lambda!426951))))

(assert (=> b!7077362 (= lt!2549848 (derivationStepZipperUp!2255 lt!2549855 (h!74864 s!7408)))))

(declare-fun derivationStepZipper!3121 ((InoxSet Context!13334) C!35612) (InoxSet Context!13334))

(assert (=> b!7077362 (= lt!2549840 (derivationStepZipper!3121 lt!2549845 (h!74864 s!7408)))))

(assert (=> b!7077362 (= lt!2549845 (store ((as const (Array Context!13334 Bool)) false) lt!2549855 true))))

(declare-fun e!4254935 () Bool)

(declare-fun e!4254930 () Bool)

(assert (=> b!7077363 (= e!4254935 (not e!4254930))))

(declare-fun res!2890840 () Bool)

(assert (=> b!7077363 (=> res!2890840 e!4254930)))

(assert (=> b!7077363 (= res!2890840 (not (matchZipper!3211 lt!2549841 s!7408)))))

(declare-fun lt!2549836 () Context!13334)

(assert (=> b!7077363 (= lt!2549841 (store ((as const (Array Context!13334 Bool)) false) lt!2549836 true))))

(declare-fun lt!2549849 () (InoxSet Context!13334))

(declare-fun lambda!426948 () Int)

(declare-fun getWitness!1788 ((InoxSet Context!13334) Int) Context!13334)

(assert (=> b!7077363 (= lt!2549836 (getWitness!1788 lt!2549849 lambda!426948))))

(declare-datatypes ((List!68541 0))(
  ( (Nil!68417) (Cons!68417 (h!74865 Context!13334) (t!382326 List!68541)) )
))
(declare-fun lt!2549864 () List!68541)

(declare-fun exists!3738 (List!68541 Int) Bool)

(assert (=> b!7077363 (exists!3738 lt!2549864 lambda!426948)))

(declare-fun lt!2549844 () Unit!162053)

(declare-fun lemmaZipperMatchesExistsMatchingContext!592 (List!68541 List!68540) Unit!162053)

(assert (=> b!7077363 (= lt!2549844 (lemmaZipperMatchesExistsMatchingContext!592 lt!2549864 s!7408))))

(declare-fun toList!11012 ((InoxSet Context!13334)) List!68541)

(assert (=> b!7077363 (= lt!2549864 (toList!11012 lt!2549849))))

(declare-fun b!7077365 () Bool)

(declare-fun res!2890826 () Bool)

(assert (=> b!7077365 (=> res!2890826 e!4254927)))

(get-info :version)

(assert (=> b!7077365 (= res!2890826 (not ((_ is Cons!68415) (exprs!7167 lt!2549855))))))

(assert (=> b!7077366 (= e!4254934 e!4254927)))

(declare-fun res!2890835 () Bool)

(assert (=> b!7077366 (=> res!2890835 e!4254927)))

(declare-fun lt!2549842 () (InoxSet Context!13334))

(assert (=> b!7077366 (= res!2890835 (not (= (derivationStepZipper!3121 lt!2549862 (h!74864 s!7408)) lt!2549842)))))

(assert (=> b!7077366 (= (flatMap!2597 lt!2549862 lambda!426951) (derivationStepZipperUp!2255 lt!2549852 (h!74864 s!7408)))))

(declare-fun lt!2549847 () Unit!162053)

(assert (=> b!7077366 (= lt!2549847 (lemmaFlatMapOnSingletonSet!2106 lt!2549862 lt!2549852 lambda!426951))))

(assert (=> b!7077366 (= lt!2549842 (derivationStepZipperUp!2255 lt!2549852 (h!74864 s!7408)))))

(declare-fun lt!2549854 () Unit!162053)

(assert (=> b!7077366 (= lt!2549854 (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549855) (exprs!7167 ct2!306) lambda!426950))))

(declare-fun b!7077367 () Bool)

(declare-fun res!2890823 () Bool)

(assert (=> b!7077367 (=> res!2890823 e!4254931)))

(declare-fun isPrefix!5862 (List!68540 List!68540) Bool)

(assert (=> b!7077367 (= res!2890823 (not (isPrefix!5862 Nil!68416 lt!2549846)))))

(declare-fun b!7077368 () Bool)

(declare-fun e!4254924 () Bool)

(assert (=> b!7077368 (= e!4254927 e!4254924)))

(declare-fun res!2890827 () Bool)

(assert (=> b!7077368 (=> res!2890827 e!4254924)))

(declare-fun nullable!7354 (Regex!17671) Bool)

(assert (=> b!7077368 (= res!2890827 (nullable!7354 (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun lt!2549851 () Context!13334)

(declare-fun lt!2549838 () List!68539)

(assert (=> b!7077368 (= lt!2549851 (Context!13335 lt!2549838))))

(declare-fun tail!13871 (List!68539) List!68539)

(assert (=> b!7077368 (= lt!2549838 (tail!13871 (exprs!7167 lt!2549855)))))

(declare-fun b!7077369 () Bool)

(assert (=> b!7077369 (= e!4254929 e!4254931)))

(declare-fun res!2890829 () Bool)

(assert (=> b!7077369 (=> res!2890829 e!4254931)))

(assert (=> b!7077369 (= res!2890829 (not (matchZipper!3211 lt!2549845 lt!2549846)))))

(assert (=> b!7077369 (= lt!2549846 (Cons!68416 (h!74864 s!7408) (_1!37453 lt!2549839)))))

(declare-fun setIsEmpty!50401 () Bool)

(assert (=> setIsEmpty!50401 setRes!50401))

(declare-fun b!7077370 () Bool)

(declare-fun res!2890837 () Bool)

(assert (=> b!7077370 (=> res!2890837 e!4254926)))

(assert (=> b!7077370 (= res!2890837 (not (= (++!15817 (_1!37453 lt!2549839) (_2!37453 lt!2549839)) (t!382325 s!7408))))))

(declare-fun res!2890831 () Bool)

(assert (=> start!688032 (=> (not res!2890831) (not e!4254935))))

(assert (=> start!688032 (= res!2890831 (matchZipper!3211 lt!2549849 s!7408))))

(declare-fun appendTo!792 ((InoxSet Context!13334) Context!13334) (InoxSet Context!13334))

(assert (=> start!688032 (= lt!2549849 (appendTo!792 z1!570 ct2!306))))

(assert (=> start!688032 e!4254935))

(declare-fun condSetEmpty!50401 () Bool)

(assert (=> start!688032 (= condSetEmpty!50401 (= z1!570 ((as const (Array Context!13334 Bool)) false)))))

(assert (=> start!688032 setRes!50401))

(assert (=> start!688032 (and (inv!87036 ct2!306) e!4254925)))

(declare-fun e!4254928 () Bool)

(assert (=> start!688032 e!4254928))

(declare-fun b!7077364 () Bool)

(declare-fun e!4254932 () Bool)

(assert (=> b!7077364 (= e!4254924 e!4254932)))

(declare-fun res!2890836 () Bool)

(assert (=> b!7077364 (=> res!2890836 e!4254932)))

(declare-fun lt!2549853 () (InoxSet Context!13334))

(assert (=> b!7077364 (= res!2890836 (not (matchZipper!3211 lt!2549853 (t!382325 s!7408))))))

(declare-fun derivationStepZipperDown!2305 (Regex!17671 Context!13334 C!35612) (InoxSet Context!13334))

(declare-fun ++!15818 (List!68539 List!68539) List!68539)

(assert (=> b!7077364 (= lt!2549853 (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306))) (h!74864 s!7408)))))

(declare-fun lt!2549843 () Unit!162053)

(assert (=> b!7077364 (= lt!2549843 (lemmaConcatPreservesForall!982 lt!2549838 (exprs!7167 ct2!306) lambda!426950))))

(assert (=> b!7077371 (= e!4254930 e!4254936)))

(declare-fun res!2890838 () Bool)

(assert (=> b!7077371 (=> res!2890838 e!4254936)))

(assert (=> b!7077371 (= res!2890838 (or (not (= lt!2549852 lt!2549836)) (not (select z1!570 lt!2549855))))))

(assert (=> b!7077371 (= lt!2549852 (Context!13335 (++!15818 (exprs!7167 lt!2549855) (exprs!7167 ct2!306))))))

(declare-fun lt!2549860 () Unit!162053)

(assert (=> b!7077371 (= lt!2549860 (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549855) (exprs!7167 ct2!306) lambda!426950))))

(declare-fun lambda!426949 () Int)

(declare-fun mapPost2!500 ((InoxSet Context!13334) Int Context!13334) Context!13334)

(assert (=> b!7077371 (= lt!2549855 (mapPost2!500 z1!570 lambda!426949 lt!2549836))))

(declare-fun b!7077372 () Bool)

(assert (=> b!7077372 (= e!4254931 (= (++!15817 Nil!68416 s!7408) s!7408))))

(declare-fun b!7077373 () Bool)

(assert (=> b!7077373 (= e!4254932 e!4254926)))

(declare-fun res!2890825 () Bool)

(assert (=> b!7077373 (=> res!2890825 e!4254926)))

(assert (=> b!7077373 (= res!2890825 (not (matchZipper!3211 lt!2549859 (_1!37453 lt!2549839))))))

(declare-datatypes ((Option!16982 0))(
  ( (None!16981) (Some!16981 (v!53275 tuple2!68300)) )
))
(declare-fun lt!2549861 () Option!16982)

(declare-fun get!23968 (Option!16982) tuple2!68300)

(assert (=> b!7077373 (= lt!2549839 (get!23968 lt!2549861))))

(declare-fun isDefined!13683 (Option!16982) Bool)

(assert (=> b!7077373 (isDefined!13683 lt!2549861)))

(declare-fun findConcatSeparationZippers!498 ((InoxSet Context!13334) (InoxSet Context!13334) List!68540 List!68540 List!68540) Option!16982)

(assert (=> b!7077373 (= lt!2549861 (findConcatSeparationZippers!498 lt!2549859 lt!2549837 Nil!68416 (t!382325 s!7408) (t!382325 s!7408)))))

(assert (=> b!7077373 (= lt!2549837 (store ((as const (Array Context!13334 Bool)) false) ct2!306 true))))

(declare-fun lt!2549856 () Unit!162053)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!486 ((InoxSet Context!13334) Context!13334 List!68540) Unit!162053)

(assert (=> b!7077373 (= lt!2549856 (lemmaConcatZipperMatchesStringThenFindConcatDefined!486 lt!2549859 ct2!306 (t!382325 s!7408)))))

(assert (=> b!7077373 (= lt!2549853 (appendTo!792 lt!2549859 ct2!306))))

(assert (=> b!7077373 (= lt!2549859 (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) lt!2549851 (h!74864 s!7408)))))

(declare-fun lt!2549858 () Unit!162053)

(assert (=> b!7077373 (= lt!2549858 (lemmaConcatPreservesForall!982 lt!2549838 (exprs!7167 ct2!306) lambda!426950))))

(declare-fun lt!2549857 () Unit!162053)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!138 (Context!13334 Regex!17671 C!35612 Context!13334) Unit!162053)

(assert (=> b!7077373 (= lt!2549857 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!138 lt!2549851 (h!74863 (exprs!7167 lt!2549855)) (h!74864 s!7408) ct2!306))))

(declare-fun b!7077374 () Bool)

(declare-fun res!2890832 () Bool)

(assert (=> b!7077374 (=> (not res!2890832) (not e!4254935))))

(assert (=> b!7077374 (= res!2890832 ((_ is Cons!68416) s!7408))))

(declare-fun b!7077375 () Bool)

(declare-fun tp_is_empty!44567 () Bool)

(declare-fun tp!1943034 () Bool)

(assert (=> b!7077375 (= e!4254928 (and tp_is_empty!44567 tp!1943034))))

(declare-fun b!7077376 () Bool)

(declare-fun res!2890828 () Bool)

(assert (=> b!7077376 (=> res!2890828 e!4254930)))

(assert (=> b!7077376 (= res!2890828 (not (select lt!2549849 lt!2549836)))))

(assert (= (and start!688032 res!2890831) b!7077374))

(assert (= (and b!7077374 res!2890832) b!7077363))

(assert (= (and b!7077363 (not res!2890840)) b!7077376))

(assert (= (and b!7077376 (not res!2890828)) b!7077371))

(assert (= (and b!7077371 (not res!2890838)) b!7077358))

(assert (= (and b!7077358 (not res!2890824)) b!7077366))

(assert (= (and b!7077366 (not res!2890835)) b!7077365))

(assert (= (and b!7077365 (not res!2890826)) b!7077357))

(assert (= (and b!7077357 (not res!2890839)) b!7077368))

(assert (= (and b!7077368 (not res!2890827)) b!7077364))

(assert (= (and b!7077364 (not res!2890836)) b!7077373))

(assert (= (and b!7077373 (not res!2890825)) b!7077361))

(assert (= (and b!7077361 (not res!2890834)) b!7077370))

(assert (= (and b!7077370 (not res!2890837)) b!7077362))

(assert (= (and b!7077362 (not res!2890830)) b!7077369))

(assert (= (and b!7077369 (not res!2890829)) b!7077359))

(assert (= (and b!7077359 (not res!2890833)) b!7077367))

(assert (= (and b!7077367 (not res!2890823)) b!7077372))

(assert (= (and start!688032 condSetEmpty!50401) setIsEmpty!50401))

(assert (= (and start!688032 (not condSetEmpty!50401)) setNonEmpty!50401))

(assert (= setNonEmpty!50401 b!7077356))

(assert (= start!688032 b!7077360))

(assert (= (and start!688032 ((_ is Cons!68416) s!7408)) b!7077375))

(declare-fun m!7805910 () Bool)

(assert (=> b!7077359 m!7805910))

(declare-fun m!7805912 () Bool)

(assert (=> start!688032 m!7805912))

(declare-fun m!7805914 () Bool)

(assert (=> start!688032 m!7805914))

(declare-fun m!7805916 () Bool)

(assert (=> start!688032 m!7805916))

(declare-fun m!7805918 () Bool)

(assert (=> b!7077373 m!7805918))

(declare-fun m!7805920 () Bool)

(assert (=> b!7077373 m!7805920))

(declare-fun m!7805922 () Bool)

(assert (=> b!7077373 m!7805922))

(declare-fun m!7805924 () Bool)

(assert (=> b!7077373 m!7805924))

(declare-fun m!7805926 () Bool)

(assert (=> b!7077373 m!7805926))

(declare-fun m!7805928 () Bool)

(assert (=> b!7077373 m!7805928))

(declare-fun m!7805930 () Bool)

(assert (=> b!7077373 m!7805930))

(declare-fun m!7805932 () Bool)

(assert (=> b!7077373 m!7805932))

(declare-fun m!7805934 () Bool)

(assert (=> b!7077373 m!7805934))

(declare-fun m!7805936 () Bool)

(assert (=> b!7077373 m!7805936))

(declare-fun m!7805938 () Bool)

(assert (=> b!7077369 m!7805938))

(declare-fun m!7805940 () Bool)

(assert (=> b!7077370 m!7805940))

(declare-fun m!7805942 () Bool)

(assert (=> b!7077367 m!7805942))

(declare-fun m!7805944 () Bool)

(assert (=> b!7077372 m!7805944))

(declare-fun m!7805946 () Bool)

(assert (=> b!7077371 m!7805946))

(declare-fun m!7805948 () Bool)

(assert (=> b!7077371 m!7805948))

(declare-fun m!7805950 () Bool)

(assert (=> b!7077371 m!7805950))

(declare-fun m!7805952 () Bool)

(assert (=> b!7077371 m!7805952))

(declare-fun m!7805954 () Bool)

(assert (=> setNonEmpty!50401 m!7805954))

(declare-fun m!7805956 () Bool)

(assert (=> b!7077361 m!7805956))

(declare-fun m!7805958 () Bool)

(assert (=> b!7077362 m!7805958))

(declare-fun m!7805960 () Bool)

(assert (=> b!7077362 m!7805960))

(declare-fun m!7805962 () Bool)

(assert (=> b!7077362 m!7805962))

(declare-fun m!7805964 () Bool)

(assert (=> b!7077362 m!7805964))

(declare-fun m!7805966 () Bool)

(assert (=> b!7077362 m!7805966))

(declare-fun m!7805968 () Bool)

(assert (=> b!7077358 m!7805968))

(assert (=> b!7077358 m!7805950))

(declare-fun m!7805970 () Bool)

(assert (=> b!7077357 m!7805970))

(declare-fun m!7805972 () Bool)

(assert (=> b!7077363 m!7805972))

(declare-fun m!7805974 () Bool)

(assert (=> b!7077363 m!7805974))

(declare-fun m!7805976 () Bool)

(assert (=> b!7077363 m!7805976))

(declare-fun m!7805978 () Bool)

(assert (=> b!7077363 m!7805978))

(declare-fun m!7805980 () Bool)

(assert (=> b!7077363 m!7805980))

(declare-fun m!7805982 () Bool)

(assert (=> b!7077363 m!7805982))

(declare-fun m!7805984 () Bool)

(assert (=> b!7077376 m!7805984))

(assert (=> b!7077366 m!7805950))

(declare-fun m!7805986 () Bool)

(assert (=> b!7077366 m!7805986))

(declare-fun m!7805988 () Bool)

(assert (=> b!7077366 m!7805988))

(declare-fun m!7805990 () Bool)

(assert (=> b!7077366 m!7805990))

(declare-fun m!7805992 () Bool)

(assert (=> b!7077366 m!7805992))

(declare-fun m!7805994 () Bool)

(assert (=> b!7077364 m!7805994))

(declare-fun m!7805996 () Bool)

(assert (=> b!7077364 m!7805996))

(declare-fun m!7805998 () Bool)

(assert (=> b!7077364 m!7805998))

(assert (=> b!7077364 m!7805934))

(declare-fun m!7806000 () Bool)

(assert (=> b!7077368 m!7806000))

(declare-fun m!7806002 () Bool)

(assert (=> b!7077368 m!7806002))

(check-sat (not b!7077361) (not b!7077368) (not b!7077363) (not b!7077370) (not b!7077358) (not start!688032) (not b!7077366) (not b!7077357) (not setNonEmpty!50401) (not b!7077372) (not b!7077360) (not b!7077359) (not b!7077364) (not b!7077362) (not b!7077356) (not b!7077367) (not b!7077373) (not b!7077371) tp_is_empty!44567 (not b!7077369) (not b!7077375))
(check-sat)
(get-model)

(declare-fun d!2213511 () Bool)

(declare-fun c!1320617 () Bool)

(declare-fun isEmpty!39936 (List!68540) Bool)

(assert (=> d!2213511 (= c!1320617 (isEmpty!39936 lt!2549846))))

(declare-fun e!4254990 () Bool)

(assert (=> d!2213511 (= (matchZipper!3211 lt!2549845 lt!2549846) e!4254990)))

(declare-fun b!7077478 () Bool)

(declare-fun nullableZipper!2717 ((InoxSet Context!13334)) Bool)

(assert (=> b!7077478 (= e!4254990 (nullableZipper!2717 lt!2549845))))

(declare-fun b!7077479 () Bool)

(declare-fun head!14426 (List!68540) C!35612)

(declare-fun tail!13873 (List!68540) List!68540)

(assert (=> b!7077479 (= e!4254990 (matchZipper!3211 (derivationStepZipper!3121 lt!2549845 (head!14426 lt!2549846)) (tail!13873 lt!2549846)))))

(assert (= (and d!2213511 c!1320617) b!7077478))

(assert (= (and d!2213511 (not c!1320617)) b!7077479))

(declare-fun m!7806100 () Bool)

(assert (=> d!2213511 m!7806100))

(declare-fun m!7806102 () Bool)

(assert (=> b!7077478 m!7806102))

(declare-fun m!7806104 () Bool)

(assert (=> b!7077479 m!7806104))

(assert (=> b!7077479 m!7806104))

(declare-fun m!7806106 () Bool)

(assert (=> b!7077479 m!7806106))

(declare-fun m!7806110 () Bool)

(assert (=> b!7077479 m!7806110))

(assert (=> b!7077479 m!7806106))

(assert (=> b!7077479 m!7806110))

(declare-fun m!7806116 () Bool)

(assert (=> b!7077479 m!7806116))

(assert (=> b!7077369 d!2213511))

(declare-fun e!4255004 () Bool)

(declare-fun b!7077508 () Bool)

(declare-fun lt!2549888 () List!68540)

(assert (=> b!7077508 (= e!4255004 (or (not (= (_2!37453 lt!2549839) Nil!68416)) (= lt!2549888 lt!2549846)))))

(declare-fun b!7077506 () Bool)

(declare-fun e!4255003 () List!68540)

(assert (=> b!7077506 (= e!4255003 (Cons!68416 (h!74864 lt!2549846) (++!15817 (t!382325 lt!2549846) (_2!37453 lt!2549839))))))

(declare-fun b!7077507 () Bool)

(declare-fun res!2890883 () Bool)

(assert (=> b!7077507 (=> (not res!2890883) (not e!4255004))))

(declare-fun size!41240 (List!68540) Int)

(assert (=> b!7077507 (= res!2890883 (= (size!41240 lt!2549888) (+ (size!41240 lt!2549846) (size!41240 (_2!37453 lt!2549839)))))))

(declare-fun b!7077504 () Bool)

(assert (=> b!7077504 (= e!4255003 (_2!37453 lt!2549839))))

(declare-fun d!2213513 () Bool)

(assert (=> d!2213513 e!4255004))

(declare-fun res!2890882 () Bool)

(assert (=> d!2213513 (=> (not res!2890882) (not e!4255004))))

(declare-fun content!13840 (List!68540) (InoxSet C!35612))

(assert (=> d!2213513 (= res!2890882 (= (content!13840 lt!2549888) ((_ map or) (content!13840 lt!2549846) (content!13840 (_2!37453 lt!2549839)))))))

(assert (=> d!2213513 (= lt!2549888 e!4255003)))

(declare-fun c!1320624 () Bool)

(assert (=> d!2213513 (= c!1320624 ((_ is Nil!68416) lt!2549846))))

(assert (=> d!2213513 (= (++!15817 lt!2549846 (_2!37453 lt!2549839)) lt!2549888)))

(assert (= (and d!2213513 c!1320624) b!7077504))

(assert (= (and d!2213513 (not c!1320624)) b!7077506))

(assert (= (and d!2213513 res!2890882) b!7077507))

(assert (= (and b!7077507 res!2890883) b!7077508))

(declare-fun m!7806154 () Bool)

(assert (=> b!7077506 m!7806154))

(declare-fun m!7806156 () Bool)

(assert (=> b!7077507 m!7806156))

(declare-fun m!7806158 () Bool)

(assert (=> b!7077507 m!7806158))

(declare-fun m!7806160 () Bool)

(assert (=> b!7077507 m!7806160))

(declare-fun m!7806162 () Bool)

(assert (=> d!2213513 m!7806162))

(declare-fun m!7806164 () Bool)

(assert (=> d!2213513 m!7806164))

(declare-fun m!7806166 () Bool)

(assert (=> d!2213513 m!7806166))

(assert (=> b!7077359 d!2213513))

(declare-fun b!7077515 () Bool)

(declare-fun e!4255009 () Bool)

(declare-fun lt!2549892 () List!68540)

(assert (=> b!7077515 (= e!4255009 (or (not (= (_2!37453 lt!2549839) Nil!68416)) (= lt!2549892 (_1!37453 lt!2549839))))))

(declare-fun b!7077513 () Bool)

(declare-fun e!4255008 () List!68540)

(assert (=> b!7077513 (= e!4255008 (Cons!68416 (h!74864 (_1!37453 lt!2549839)) (++!15817 (t!382325 (_1!37453 lt!2549839)) (_2!37453 lt!2549839))))))

(declare-fun b!7077514 () Bool)

(declare-fun res!2890888 () Bool)

(assert (=> b!7077514 (=> (not res!2890888) (not e!4255009))))

(assert (=> b!7077514 (= res!2890888 (= (size!41240 lt!2549892) (+ (size!41240 (_1!37453 lt!2549839)) (size!41240 (_2!37453 lt!2549839)))))))

(declare-fun b!7077512 () Bool)

(assert (=> b!7077512 (= e!4255008 (_2!37453 lt!2549839))))

(declare-fun d!2213527 () Bool)

(assert (=> d!2213527 e!4255009))

(declare-fun res!2890887 () Bool)

(assert (=> d!2213527 (=> (not res!2890887) (not e!4255009))))

(assert (=> d!2213527 (= res!2890887 (= (content!13840 lt!2549892) ((_ map or) (content!13840 (_1!37453 lt!2549839)) (content!13840 (_2!37453 lt!2549839)))))))

(assert (=> d!2213527 (= lt!2549892 e!4255008)))

(declare-fun c!1320625 () Bool)

(assert (=> d!2213527 (= c!1320625 ((_ is Nil!68416) (_1!37453 lt!2549839)))))

(assert (=> d!2213527 (= (++!15817 (_1!37453 lt!2549839) (_2!37453 lt!2549839)) lt!2549892)))

(assert (= (and d!2213527 c!1320625) b!7077512))

(assert (= (and d!2213527 (not c!1320625)) b!7077513))

(assert (= (and d!2213527 res!2890887) b!7077514))

(assert (= (and b!7077514 res!2890888) b!7077515))

(declare-fun m!7806178 () Bool)

(assert (=> b!7077513 m!7806178))

(declare-fun m!7806180 () Bool)

(assert (=> b!7077514 m!7806180))

(declare-fun m!7806182 () Bool)

(assert (=> b!7077514 m!7806182))

(assert (=> b!7077514 m!7806160))

(declare-fun m!7806184 () Bool)

(assert (=> d!2213527 m!7806184))

(declare-fun m!7806186 () Bool)

(assert (=> d!2213527 m!7806186))

(assert (=> d!2213527 m!7806166))

(assert (=> b!7077370 d!2213527))

(declare-fun d!2213531 () Bool)

(declare-fun c!1320631 () Bool)

(assert (=> d!2213531 (= c!1320631 (isEmpty!39936 (_2!37453 lt!2549839)))))

(declare-fun e!4255016 () Bool)

(assert (=> d!2213531 (= (matchZipper!3211 lt!2549837 (_2!37453 lt!2549839)) e!4255016)))

(declare-fun b!7077527 () Bool)

(assert (=> b!7077527 (= e!4255016 (nullableZipper!2717 lt!2549837))))

(declare-fun b!7077528 () Bool)

(assert (=> b!7077528 (= e!4255016 (matchZipper!3211 (derivationStepZipper!3121 lt!2549837 (head!14426 (_2!37453 lt!2549839))) (tail!13873 (_2!37453 lt!2549839))))))

(assert (= (and d!2213531 c!1320631) b!7077527))

(assert (= (and d!2213531 (not c!1320631)) b!7077528))

(declare-fun m!7806188 () Bool)

(assert (=> d!2213531 m!7806188))

(declare-fun m!7806190 () Bool)

(assert (=> b!7077527 m!7806190))

(declare-fun m!7806192 () Bool)

(assert (=> b!7077528 m!7806192))

(assert (=> b!7077528 m!7806192))

(declare-fun m!7806194 () Bool)

(assert (=> b!7077528 m!7806194))

(declare-fun m!7806196 () Bool)

(assert (=> b!7077528 m!7806196))

(assert (=> b!7077528 m!7806194))

(assert (=> b!7077528 m!7806196))

(declare-fun m!7806202 () Bool)

(assert (=> b!7077528 m!7806202))

(assert (=> b!7077361 d!2213531))

(declare-fun d!2213533 () Bool)

(declare-fun choose!54355 ((InoxSet Context!13334) Int) (InoxSet Context!13334))

(assert (=> d!2213533 (= (flatMap!2597 lt!2549862 lambda!426951) (choose!54355 lt!2549862 lambda!426951))))

(declare-fun bs!1881523 () Bool)

(assert (= bs!1881523 d!2213533))

(declare-fun m!7806220 () Bool)

(assert (=> bs!1881523 m!7806220))

(assert (=> b!7077366 d!2213533))

(declare-fun b!7077541 () Bool)

(declare-fun e!4255026 () (InoxSet Context!13334))

(assert (=> b!7077541 (= e!4255026 ((as const (Array Context!13334 Bool)) false))))

(declare-fun b!7077542 () Bool)

(declare-fun e!4255024 () (InoxSet Context!13334))

(assert (=> b!7077542 (= e!4255024 e!4255026)))

(declare-fun c!1320637 () Bool)

(assert (=> b!7077542 (= c!1320637 ((_ is Cons!68415) (exprs!7167 lt!2549852)))))

(declare-fun bm!643279 () Bool)

(declare-fun call!643284 () (InoxSet Context!13334))

(assert (=> bm!643279 (= call!643284 (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549852)) (Context!13335 (t!382324 (exprs!7167 lt!2549852))) (h!74864 s!7408)))))

(declare-fun b!7077543 () Bool)

(assert (=> b!7077543 (= e!4255024 ((_ map or) call!643284 (derivationStepZipperUp!2255 (Context!13335 (t!382324 (exprs!7167 lt!2549852))) (h!74864 s!7408))))))

(declare-fun b!7077545 () Bool)

(assert (=> b!7077545 (= e!4255026 call!643284)))

(declare-fun d!2213539 () Bool)

(declare-fun c!1320638 () Bool)

(declare-fun e!4255025 () Bool)

(assert (=> d!2213539 (= c!1320638 e!4255025)))

(declare-fun res!2890892 () Bool)

(assert (=> d!2213539 (=> (not res!2890892) (not e!4255025))))

(assert (=> d!2213539 (= res!2890892 ((_ is Cons!68415) (exprs!7167 lt!2549852)))))

(assert (=> d!2213539 (= (derivationStepZipperUp!2255 lt!2549852 (h!74864 s!7408)) e!4255024)))

(declare-fun b!7077544 () Bool)

(assert (=> b!7077544 (= e!4255025 (nullable!7354 (h!74863 (exprs!7167 lt!2549852))))))

(assert (= (and d!2213539 res!2890892) b!7077544))

(assert (= (and d!2213539 c!1320638) b!7077543))

(assert (= (and d!2213539 (not c!1320638)) b!7077542))

(assert (= (and b!7077542 c!1320637) b!7077545))

(assert (= (and b!7077542 (not c!1320637)) b!7077541))

(assert (= (or b!7077543 b!7077545) bm!643279))

(declare-fun m!7806222 () Bool)

(assert (=> bm!643279 m!7806222))

(declare-fun m!7806224 () Bool)

(assert (=> b!7077543 m!7806224))

(declare-fun m!7806226 () Bool)

(assert (=> b!7077544 m!7806226))

(assert (=> b!7077366 d!2213539))

(declare-fun bs!1881524 () Bool)

(declare-fun d!2213541 () Bool)

(assert (= bs!1881524 (and d!2213541 b!7077366)))

(declare-fun lambda!426966 () Int)

(assert (=> bs!1881524 (= lambda!426966 lambda!426951)))

(assert (=> d!2213541 true))

(assert (=> d!2213541 (= (derivationStepZipper!3121 lt!2549862 (h!74864 s!7408)) (flatMap!2597 lt!2549862 lambda!426966))))

(declare-fun bs!1881525 () Bool)

(assert (= bs!1881525 d!2213541))

(declare-fun m!7806228 () Bool)

(assert (=> bs!1881525 m!7806228))

(assert (=> b!7077366 d!2213541))

(declare-fun d!2213543 () Bool)

(declare-fun dynLambda!27864 (Int Context!13334) (InoxSet Context!13334))

(assert (=> d!2213543 (= (flatMap!2597 lt!2549862 lambda!426951) (dynLambda!27864 lambda!426951 lt!2549852))))

(declare-fun lt!2549904 () Unit!162053)

(declare-fun choose!54356 ((InoxSet Context!13334) Context!13334 Int) Unit!162053)

(assert (=> d!2213543 (= lt!2549904 (choose!54356 lt!2549862 lt!2549852 lambda!426951))))

(assert (=> d!2213543 (= lt!2549862 (store ((as const (Array Context!13334 Bool)) false) lt!2549852 true))))

(assert (=> d!2213543 (= (lemmaFlatMapOnSingletonSet!2106 lt!2549862 lt!2549852 lambda!426951) lt!2549904)))

(declare-fun b_lambda!270351 () Bool)

(assert (=> (not b_lambda!270351) (not d!2213543)))

(declare-fun bs!1881526 () Bool)

(assert (= bs!1881526 d!2213543))

(assert (=> bs!1881526 m!7805990))

(declare-fun m!7806254 () Bool)

(assert (=> bs!1881526 m!7806254))

(declare-fun m!7806258 () Bool)

(assert (=> bs!1881526 m!7806258))

(assert (=> bs!1881526 m!7805968))

(assert (=> b!7077366 d!2213543))

(declare-fun d!2213551 () Bool)

(declare-fun forall!16630 (List!68539 Int) Bool)

(assert (=> d!2213551 (forall!16630 (++!15818 (exprs!7167 lt!2549855) (exprs!7167 ct2!306)) lambda!426950)))

(declare-fun lt!2549907 () Unit!162053)

(declare-fun choose!54357 (List!68539 List!68539 Int) Unit!162053)

(assert (=> d!2213551 (= lt!2549907 (choose!54357 (exprs!7167 lt!2549855) (exprs!7167 ct2!306) lambda!426950))))

(assert (=> d!2213551 (forall!16630 (exprs!7167 lt!2549855) lambda!426950)))

(assert (=> d!2213551 (= (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549855) (exprs!7167 ct2!306) lambda!426950) lt!2549907)))

(declare-fun bs!1881528 () Bool)

(assert (= bs!1881528 d!2213551))

(assert (=> bs!1881528 m!7805948))

(assert (=> bs!1881528 m!7805948))

(declare-fun m!7806260 () Bool)

(assert (=> bs!1881528 m!7806260))

(declare-fun m!7806262 () Bool)

(assert (=> bs!1881528 m!7806262))

(declare-fun m!7806264 () Bool)

(assert (=> bs!1881528 m!7806264))

(assert (=> b!7077366 d!2213551))

(declare-fun b!7077583 () Bool)

(declare-fun e!4255049 () Bool)

(declare-fun e!4255050 () Bool)

(assert (=> b!7077583 (= e!4255049 e!4255050)))

(declare-fun res!2890918 () Bool)

(assert (=> b!7077583 (=> (not res!2890918) (not e!4255050))))

(assert (=> b!7077583 (= res!2890918 (not ((_ is Nil!68416) lt!2549846)))))

(declare-fun b!7077586 () Bool)

(declare-fun e!4255048 () Bool)

(assert (=> b!7077586 (= e!4255048 (>= (size!41240 lt!2549846) (size!41240 Nil!68416)))))

(declare-fun b!7077585 () Bool)

(assert (=> b!7077585 (= e!4255050 (isPrefix!5862 (tail!13873 Nil!68416) (tail!13873 lt!2549846)))))

(declare-fun d!2213553 () Bool)

(assert (=> d!2213553 e!4255048))

(declare-fun res!2890917 () Bool)

(assert (=> d!2213553 (=> res!2890917 e!4255048)))

(declare-fun lt!2549917 () Bool)

(assert (=> d!2213553 (= res!2890917 (not lt!2549917))))

(assert (=> d!2213553 (= lt!2549917 e!4255049)))

(declare-fun res!2890919 () Bool)

(assert (=> d!2213553 (=> res!2890919 e!4255049)))

(assert (=> d!2213553 (= res!2890919 ((_ is Nil!68416) Nil!68416))))

(assert (=> d!2213553 (= (isPrefix!5862 Nil!68416 lt!2549846) lt!2549917)))

(declare-fun b!7077584 () Bool)

(declare-fun res!2890916 () Bool)

(assert (=> b!7077584 (=> (not res!2890916) (not e!4255050))))

(assert (=> b!7077584 (= res!2890916 (= (head!14426 Nil!68416) (head!14426 lt!2549846)))))

(assert (= (and d!2213553 (not res!2890919)) b!7077583))

(assert (= (and b!7077583 res!2890918) b!7077584))

(assert (= (and b!7077584 res!2890916) b!7077585))

(assert (= (and d!2213553 (not res!2890917)) b!7077586))

(assert (=> b!7077586 m!7806158))

(declare-fun m!7806274 () Bool)

(assert (=> b!7077586 m!7806274))

(declare-fun m!7806276 () Bool)

(assert (=> b!7077585 m!7806276))

(assert (=> b!7077585 m!7806110))

(assert (=> b!7077585 m!7806276))

(assert (=> b!7077585 m!7806110))

(declare-fun m!7806278 () Bool)

(assert (=> b!7077585 m!7806278))

(declare-fun m!7806280 () Bool)

(assert (=> b!7077584 m!7806280))

(assert (=> b!7077584 m!7806104))

(assert (=> b!7077367 d!2213553))

(declare-fun d!2213557 () Bool)

(assert (=> d!2213557 (= (isEmpty!39934 (exprs!7167 lt!2549855)) ((_ is Nil!68415) (exprs!7167 lt!2549855)))))

(assert (=> b!7077357 d!2213557))

(assert (=> b!7077358 d!2213551))

(declare-fun d!2213561 () Bool)

(declare-fun nullableFct!2829 (Regex!17671) Bool)

(assert (=> d!2213561 (= (nullable!7354 (h!74863 (exprs!7167 lt!2549855))) (nullableFct!2829 (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun bs!1881539 () Bool)

(assert (= bs!1881539 d!2213561))

(declare-fun m!7806308 () Bool)

(assert (=> bs!1881539 m!7806308))

(assert (=> b!7077368 d!2213561))

(declare-fun d!2213567 () Bool)

(assert (=> d!2213567 (= (tail!13871 (exprs!7167 lt!2549855)) (t!382324 (exprs!7167 lt!2549855)))))

(assert (=> b!7077368 d!2213567))

(declare-fun d!2213573 () Bool)

(assert (=> d!2213573 (= (get!23968 lt!2549861) (v!53275 lt!2549861))))

(assert (=> b!7077373 d!2213573))

(declare-fun bm!643292 () Bool)

(declare-fun call!643298 () (InoxSet Context!13334))

(declare-fun call!643301 () (InoxSet Context!13334))

(assert (=> bm!643292 (= call!643298 call!643301)))

(declare-fun b!7077643 () Bool)

(declare-fun e!4255084 () (InoxSet Context!13334))

(assert (=> b!7077643 (= e!4255084 call!643298)))

(declare-fun b!7077644 () Bool)

(declare-fun e!4255085 () (InoxSet Context!13334))

(assert (=> b!7077644 (= e!4255085 e!4255084)))

(declare-fun c!1320664 () Bool)

(assert (=> b!7077644 (= c!1320664 ((_ is Concat!26516) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun b!7077645 () Bool)

(declare-fun e!4255086 () (InoxSet Context!13334))

(declare-fun e!4255087 () (InoxSet Context!13334))

(assert (=> b!7077645 (= e!4255086 e!4255087)))

(declare-fun c!1320666 () Bool)

(assert (=> b!7077645 (= c!1320666 ((_ is Union!17671) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun b!7077646 () Bool)

(declare-fun e!4255088 () Bool)

(assert (=> b!7077646 (= e!4255088 (nullable!7354 (regOne!35854 (h!74863 (exprs!7167 lt!2549855)))))))

(declare-fun c!1320668 () Bool)

(declare-fun bm!643293 () Bool)

(declare-fun call!643297 () List!68539)

(declare-fun $colon$colon!2674 (List!68539 Regex!17671) List!68539)

(assert (=> bm!643293 (= call!643297 ($colon$colon!2674 (exprs!7167 lt!2549851) (ite (or c!1320668 c!1320664) (regTwo!35854 (h!74863 (exprs!7167 lt!2549855))) (h!74863 (exprs!7167 lt!2549855)))))))

(declare-fun b!7077647 () Bool)

(assert (=> b!7077647 (= e!4255086 (store ((as const (Array Context!13334 Bool)) false) lt!2549851 true))))

(declare-fun call!643299 () (InoxSet Context!13334))

(declare-fun bm!643294 () Bool)

(assert (=> bm!643294 (= call!643299 (derivationStepZipperDown!2305 (ite c!1320666 (regOne!35855 (h!74863 (exprs!7167 lt!2549855))) (regOne!35854 (h!74863 (exprs!7167 lt!2549855)))) (ite c!1320666 lt!2549851 (Context!13335 call!643297)) (h!74864 s!7408)))))

(declare-fun bm!643295 () Bool)

(declare-fun call!643300 () (InoxSet Context!13334))

(declare-fun call!643302 () List!68539)

(assert (=> bm!643295 (= call!643300 (derivationStepZipperDown!2305 (ite c!1320666 (regTwo!35855 (h!74863 (exprs!7167 lt!2549855))) (ite c!1320668 (regTwo!35854 (h!74863 (exprs!7167 lt!2549855))) (ite c!1320664 (regOne!35854 (h!74863 (exprs!7167 lt!2549855))) (reg!18000 (h!74863 (exprs!7167 lt!2549855)))))) (ite (or c!1320666 c!1320668) lt!2549851 (Context!13335 call!643302)) (h!74864 s!7408)))))

(declare-fun bm!643296 () Bool)

(assert (=> bm!643296 (= call!643302 call!643297)))

(declare-fun b!7077648 () Bool)

(assert (=> b!7077648 (= e!4255087 ((_ map or) call!643299 call!643300))))

(declare-fun b!7077649 () Bool)

(assert (=> b!7077649 (= e!4255085 ((_ map or) call!643299 call!643301))))

(declare-fun bm!643297 () Bool)

(assert (=> bm!643297 (= call!643301 call!643300)))

(declare-fun b!7077650 () Bool)

(declare-fun c!1320667 () Bool)

(assert (=> b!7077650 (= c!1320667 ((_ is Star!17671) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun e!4255089 () (InoxSet Context!13334))

(assert (=> b!7077650 (= e!4255084 e!4255089)))

(declare-fun b!7077651 () Bool)

(assert (=> b!7077651 (= e!4255089 call!643298)))

(declare-fun b!7077652 () Bool)

(assert (=> b!7077652 (= c!1320668 e!4255088)))

(declare-fun res!2890930 () Bool)

(assert (=> b!7077652 (=> (not res!2890930) (not e!4255088))))

(assert (=> b!7077652 (= res!2890930 ((_ is Concat!26516) (h!74863 (exprs!7167 lt!2549855))))))

(assert (=> b!7077652 (= e!4255087 e!4255085)))

(declare-fun b!7077653 () Bool)

(assert (=> b!7077653 (= e!4255089 ((as const (Array Context!13334 Bool)) false))))

(declare-fun d!2213577 () Bool)

(declare-fun c!1320665 () Bool)

(assert (=> d!2213577 (= c!1320665 (and ((_ is ElementMatch!17671) (h!74863 (exprs!7167 lt!2549855))) (= (c!1320580 (h!74863 (exprs!7167 lt!2549855))) (h!74864 s!7408))))))

(assert (=> d!2213577 (= (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) lt!2549851 (h!74864 s!7408)) e!4255086)))

(assert (= (and d!2213577 c!1320665) b!7077647))

(assert (= (and d!2213577 (not c!1320665)) b!7077645))

(assert (= (and b!7077645 c!1320666) b!7077648))

(assert (= (and b!7077645 (not c!1320666)) b!7077652))

(assert (= (and b!7077652 res!2890930) b!7077646))

(assert (= (and b!7077652 c!1320668) b!7077649))

(assert (= (and b!7077652 (not c!1320668)) b!7077644))

(assert (= (and b!7077644 c!1320664) b!7077643))

(assert (= (and b!7077644 (not c!1320664)) b!7077650))

(assert (= (and b!7077650 c!1320667) b!7077651))

(assert (= (and b!7077650 (not c!1320667)) b!7077653))

(assert (= (or b!7077643 b!7077651) bm!643296))

(assert (= (or b!7077643 b!7077651) bm!643292))

(assert (= (or b!7077649 bm!643292) bm!643297))

(assert (= (or b!7077649 bm!643296) bm!643293))

(assert (= (or b!7077648 b!7077649) bm!643294))

(assert (= (or b!7077648 bm!643297) bm!643295))

(declare-fun m!7806372 () Bool)

(assert (=> bm!643295 m!7806372))

(declare-fun m!7806374 () Bool)

(assert (=> b!7077647 m!7806374))

(declare-fun m!7806376 () Bool)

(assert (=> bm!643294 m!7806376))

(declare-fun m!7806378 () Bool)

(assert (=> b!7077646 m!7806378))

(declare-fun m!7806380 () Bool)

(assert (=> bm!643293 m!7806380))

(assert (=> b!7077373 d!2213577))

(declare-fun d!2213595 () Bool)

(declare-fun c!1320669 () Bool)

(assert (=> d!2213595 (= c!1320669 (isEmpty!39936 (_1!37453 lt!2549839)))))

(declare-fun e!4255090 () Bool)

(assert (=> d!2213595 (= (matchZipper!3211 lt!2549859 (_1!37453 lt!2549839)) e!4255090)))

(declare-fun b!7077654 () Bool)

(assert (=> b!7077654 (= e!4255090 (nullableZipper!2717 lt!2549859))))

(declare-fun b!7077655 () Bool)

(assert (=> b!7077655 (= e!4255090 (matchZipper!3211 (derivationStepZipper!3121 lt!2549859 (head!14426 (_1!37453 lt!2549839))) (tail!13873 (_1!37453 lt!2549839))))))

(assert (= (and d!2213595 c!1320669) b!7077654))

(assert (= (and d!2213595 (not c!1320669)) b!7077655))

(declare-fun m!7806382 () Bool)

(assert (=> d!2213595 m!7806382))

(declare-fun m!7806384 () Bool)

(assert (=> b!7077654 m!7806384))

(declare-fun m!7806386 () Bool)

(assert (=> b!7077655 m!7806386))

(assert (=> b!7077655 m!7806386))

(declare-fun m!7806388 () Bool)

(assert (=> b!7077655 m!7806388))

(declare-fun m!7806390 () Bool)

(assert (=> b!7077655 m!7806390))

(assert (=> b!7077655 m!7806388))

(assert (=> b!7077655 m!7806390))

(declare-fun m!7806392 () Bool)

(assert (=> b!7077655 m!7806392))

(assert (=> b!7077373 d!2213595))

(declare-fun d!2213597 () Bool)

(declare-fun isEmpty!39938 (Option!16982) Bool)

(assert (=> d!2213597 (= (isDefined!13683 lt!2549861) (not (isEmpty!39938 lt!2549861)))))

(declare-fun bs!1881550 () Bool)

(assert (= bs!1881550 d!2213597))

(declare-fun m!7806394 () Bool)

(assert (=> bs!1881550 m!7806394))

(assert (=> b!7077373 d!2213597))

(declare-fun d!2213599 () Bool)

(assert (=> d!2213599 (isDefined!13683 (findConcatSeparationZippers!498 lt!2549859 (store ((as const (Array Context!13334 Bool)) false) ct2!306 true) Nil!68416 (t!382325 s!7408) (t!382325 s!7408)))))

(declare-fun lt!2549933 () Unit!162053)

(declare-fun choose!54360 ((InoxSet Context!13334) Context!13334 List!68540) Unit!162053)

(assert (=> d!2213599 (= lt!2549933 (choose!54360 lt!2549859 ct2!306 (t!382325 s!7408)))))

(assert (=> d!2213599 (matchZipper!3211 (appendTo!792 lt!2549859 ct2!306) (t!382325 s!7408))))

(assert (=> d!2213599 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!486 lt!2549859 ct2!306 (t!382325 s!7408)) lt!2549933)))

(declare-fun bs!1881551 () Bool)

(assert (= bs!1881551 d!2213599))

(declare-fun m!7806396 () Bool)

(assert (=> bs!1881551 m!7806396))

(declare-fun m!7806398 () Bool)

(assert (=> bs!1881551 m!7806398))

(assert (=> bs!1881551 m!7805922))

(assert (=> bs!1881551 m!7806396))

(assert (=> bs!1881551 m!7805922))

(assert (=> bs!1881551 m!7805918))

(declare-fun m!7806400 () Bool)

(assert (=> bs!1881551 m!7806400))

(assert (=> bs!1881551 m!7805918))

(declare-fun m!7806402 () Bool)

(assert (=> bs!1881551 m!7806402))

(assert (=> b!7077373 d!2213599))

(declare-fun d!2213601 () Bool)

(assert (=> d!2213601 (forall!16630 (++!15818 lt!2549838 (exprs!7167 ct2!306)) lambda!426950)))

(declare-fun lt!2549934 () Unit!162053)

(assert (=> d!2213601 (= lt!2549934 (choose!54357 lt!2549838 (exprs!7167 ct2!306) lambda!426950))))

(assert (=> d!2213601 (forall!16630 lt!2549838 lambda!426950)))

(assert (=> d!2213601 (= (lemmaConcatPreservesForall!982 lt!2549838 (exprs!7167 ct2!306) lambda!426950) lt!2549934)))

(declare-fun bs!1881552 () Bool)

(assert (= bs!1881552 d!2213601))

(assert (=> bs!1881552 m!7805996))

(assert (=> bs!1881552 m!7805996))

(declare-fun m!7806404 () Bool)

(assert (=> bs!1881552 m!7806404))

(declare-fun m!7806406 () Bool)

(assert (=> bs!1881552 m!7806406))

(declare-fun m!7806408 () Bool)

(assert (=> bs!1881552 m!7806408))

(assert (=> b!7077373 d!2213601))

(declare-fun bs!1881553 () Bool)

(declare-fun d!2213603 () Bool)

(assert (= bs!1881553 (and d!2213603 b!7077371)))

(declare-fun lambda!426980 () Int)

(assert (=> bs!1881553 (= lambda!426980 lambda!426950)))

(assert (=> d!2213603 (= (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) (Context!13335 (++!15818 (exprs!7167 lt!2549851) (exprs!7167 ct2!306))) (h!74864 s!7408)) (appendTo!792 (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) lt!2549851 (h!74864 s!7408)) ct2!306))))

(declare-fun lt!2549940 () Unit!162053)

(assert (=> d!2213603 (= lt!2549940 (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549851) (exprs!7167 ct2!306) lambda!426980))))

(declare-fun lt!2549939 () Unit!162053)

(declare-fun choose!54361 (Context!13334 Regex!17671 C!35612 Context!13334) Unit!162053)

(assert (=> d!2213603 (= lt!2549939 (choose!54361 lt!2549851 (h!74863 (exprs!7167 lt!2549855)) (h!74864 s!7408) ct2!306))))

(declare-fun validRegex!8985 (Regex!17671) Bool)

(assert (=> d!2213603 (validRegex!8985 (h!74863 (exprs!7167 lt!2549855)))))

(assert (=> d!2213603 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!138 lt!2549851 (h!74863 (exprs!7167 lt!2549855)) (h!74864 s!7408) ct2!306) lt!2549939)))

(declare-fun bs!1881554 () Bool)

(assert (= bs!1881554 d!2213603))

(declare-fun m!7806410 () Bool)

(assert (=> bs!1881554 m!7806410))

(declare-fun m!7806412 () Bool)

(assert (=> bs!1881554 m!7806412))

(declare-fun m!7806414 () Bool)

(assert (=> bs!1881554 m!7806414))

(declare-fun m!7806416 () Bool)

(assert (=> bs!1881554 m!7806416))

(declare-fun m!7806418 () Bool)

(assert (=> bs!1881554 m!7806418))

(assert (=> bs!1881554 m!7805920))

(assert (=> bs!1881554 m!7805920))

(declare-fun m!7806420 () Bool)

(assert (=> bs!1881554 m!7806420))

(assert (=> b!7077373 d!2213603))

(declare-fun bs!1881555 () Bool)

(declare-fun d!2213605 () Bool)

(assert (= bs!1881555 (and d!2213605 b!7077371)))

(declare-fun lambda!426985 () Int)

(assert (=> bs!1881555 (= lambda!426985 lambda!426949)))

(assert (=> d!2213605 true))

(declare-fun map!16021 ((InoxSet Context!13334) Int) (InoxSet Context!13334))

(assert (=> d!2213605 (= (appendTo!792 lt!2549859 ct2!306) (map!16021 lt!2549859 lambda!426985))))

(declare-fun bs!1881556 () Bool)

(assert (= bs!1881556 d!2213605))

(declare-fun m!7806422 () Bool)

(assert (=> bs!1881556 m!7806422))

(assert (=> b!7077373 d!2213605))

(declare-fun b!7077674 () Bool)

(declare-fun e!4255104 () Option!16982)

(assert (=> b!7077674 (= e!4255104 None!16981)))

(declare-fun d!2213607 () Bool)

(declare-fun e!4255103 () Bool)

(assert (=> d!2213607 e!4255103))

(declare-fun res!2890942 () Bool)

(assert (=> d!2213607 (=> res!2890942 e!4255103)))

(declare-fun e!4255102 () Bool)

(assert (=> d!2213607 (= res!2890942 e!4255102)))

(declare-fun res!2890943 () Bool)

(assert (=> d!2213607 (=> (not res!2890943) (not e!4255102))))

(declare-fun lt!2549950 () Option!16982)

(assert (=> d!2213607 (= res!2890943 (isDefined!13683 lt!2549950))))

(declare-fun e!4255101 () Option!16982)

(assert (=> d!2213607 (= lt!2549950 e!4255101)))

(declare-fun c!1320676 () Bool)

(declare-fun e!4255105 () Bool)

(assert (=> d!2213607 (= c!1320676 e!4255105)))

(declare-fun res!2890941 () Bool)

(assert (=> d!2213607 (=> (not res!2890941) (not e!4255105))))

(assert (=> d!2213607 (= res!2890941 (matchZipper!3211 lt!2549859 Nil!68416))))

(assert (=> d!2213607 (= (++!15817 Nil!68416 (t!382325 s!7408)) (t!382325 s!7408))))

(assert (=> d!2213607 (= (findConcatSeparationZippers!498 lt!2549859 lt!2549837 Nil!68416 (t!382325 s!7408) (t!382325 s!7408)) lt!2549950)))

(declare-fun b!7077675 () Bool)

(assert (=> b!7077675 (= e!4255103 (not (isDefined!13683 lt!2549950)))))

(declare-fun b!7077676 () Bool)

(declare-fun lt!2549949 () Unit!162053)

(declare-fun lt!2549951 () Unit!162053)

(assert (=> b!7077676 (= lt!2549949 lt!2549951)))

(assert (=> b!7077676 (= (++!15817 (++!15817 Nil!68416 (Cons!68416 (h!74864 (t!382325 s!7408)) Nil!68416)) (t!382325 (t!382325 s!7408))) (t!382325 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2985 (List!68540 C!35612 List!68540 List!68540) Unit!162053)

(assert (=> b!7077676 (= lt!2549951 (lemmaMoveElementToOtherListKeepsConcatEq!2985 Nil!68416 (h!74864 (t!382325 s!7408)) (t!382325 (t!382325 s!7408)) (t!382325 s!7408)))))

(assert (=> b!7077676 (= e!4255104 (findConcatSeparationZippers!498 lt!2549859 lt!2549837 (++!15817 Nil!68416 (Cons!68416 (h!74864 (t!382325 s!7408)) Nil!68416)) (t!382325 (t!382325 s!7408)) (t!382325 s!7408)))))

(declare-fun b!7077677 () Bool)

(assert (=> b!7077677 (= e!4255101 (Some!16981 (tuple2!68301 Nil!68416 (t!382325 s!7408))))))

(declare-fun b!7077678 () Bool)

(declare-fun res!2890944 () Bool)

(assert (=> b!7077678 (=> (not res!2890944) (not e!4255102))))

(assert (=> b!7077678 (= res!2890944 (matchZipper!3211 lt!2549837 (_2!37453 (get!23968 lt!2549950))))))

(declare-fun b!7077679 () Bool)

(assert (=> b!7077679 (= e!4255105 (matchZipper!3211 lt!2549837 (t!382325 s!7408)))))

(declare-fun b!7077680 () Bool)

(assert (=> b!7077680 (= e!4255102 (= (++!15817 (_1!37453 (get!23968 lt!2549950)) (_2!37453 (get!23968 lt!2549950))) (t!382325 s!7408)))))

(declare-fun b!7077681 () Bool)

(declare-fun res!2890945 () Bool)

(assert (=> b!7077681 (=> (not res!2890945) (not e!4255102))))

(assert (=> b!7077681 (= res!2890945 (matchZipper!3211 lt!2549859 (_1!37453 (get!23968 lt!2549950))))))

(declare-fun b!7077682 () Bool)

(assert (=> b!7077682 (= e!4255101 e!4255104)))

(declare-fun c!1320677 () Bool)

(assert (=> b!7077682 (= c!1320677 ((_ is Nil!68416) (t!382325 s!7408)))))

(assert (= (and d!2213607 res!2890941) b!7077679))

(assert (= (and d!2213607 c!1320676) b!7077677))

(assert (= (and d!2213607 (not c!1320676)) b!7077682))

(assert (= (and b!7077682 c!1320677) b!7077674))

(assert (= (and b!7077682 (not c!1320677)) b!7077676))

(assert (= (and d!2213607 res!2890943) b!7077681))

(assert (= (and b!7077681 res!2890945) b!7077678))

(assert (= (and b!7077678 res!2890944) b!7077680))

(assert (= (and d!2213607 (not res!2890942)) b!7077675))

(declare-fun m!7806424 () Bool)

(assert (=> b!7077679 m!7806424))

(declare-fun m!7806426 () Bool)

(assert (=> b!7077676 m!7806426))

(assert (=> b!7077676 m!7806426))

(declare-fun m!7806428 () Bool)

(assert (=> b!7077676 m!7806428))

(declare-fun m!7806430 () Bool)

(assert (=> b!7077676 m!7806430))

(assert (=> b!7077676 m!7806426))

(declare-fun m!7806432 () Bool)

(assert (=> b!7077676 m!7806432))

(declare-fun m!7806434 () Bool)

(assert (=> d!2213607 m!7806434))

(declare-fun m!7806436 () Bool)

(assert (=> d!2213607 m!7806436))

(declare-fun m!7806438 () Bool)

(assert (=> d!2213607 m!7806438))

(declare-fun m!7806440 () Bool)

(assert (=> b!7077681 m!7806440))

(declare-fun m!7806442 () Bool)

(assert (=> b!7077681 m!7806442))

(assert (=> b!7077675 m!7806434))

(assert (=> b!7077678 m!7806440))

(declare-fun m!7806444 () Bool)

(assert (=> b!7077678 m!7806444))

(assert (=> b!7077680 m!7806440))

(declare-fun m!7806446 () Bool)

(assert (=> b!7077680 m!7806446))

(assert (=> b!7077373 d!2213607))

(declare-fun d!2213609 () Bool)

(declare-fun c!1320678 () Bool)

(assert (=> d!2213609 (= c!1320678 (isEmpty!39936 (t!382325 s!7408)))))

(declare-fun e!4255106 () Bool)

(assert (=> d!2213609 (= (matchZipper!3211 lt!2549853 (t!382325 s!7408)) e!4255106)))

(declare-fun b!7077683 () Bool)

(assert (=> b!7077683 (= e!4255106 (nullableZipper!2717 lt!2549853))))

(declare-fun b!7077684 () Bool)

(assert (=> b!7077684 (= e!4255106 (matchZipper!3211 (derivationStepZipper!3121 lt!2549853 (head!14426 (t!382325 s!7408))) (tail!13873 (t!382325 s!7408))))))

(assert (= (and d!2213609 c!1320678) b!7077683))

(assert (= (and d!2213609 (not c!1320678)) b!7077684))

(declare-fun m!7806448 () Bool)

(assert (=> d!2213609 m!7806448))

(declare-fun m!7806450 () Bool)

(assert (=> b!7077683 m!7806450))

(declare-fun m!7806452 () Bool)

(assert (=> b!7077684 m!7806452))

(assert (=> b!7077684 m!7806452))

(declare-fun m!7806454 () Bool)

(assert (=> b!7077684 m!7806454))

(declare-fun m!7806456 () Bool)

(assert (=> b!7077684 m!7806456))

(assert (=> b!7077684 m!7806454))

(assert (=> b!7077684 m!7806456))

(declare-fun m!7806458 () Bool)

(assert (=> b!7077684 m!7806458))

(assert (=> b!7077364 d!2213609))

(declare-fun bm!643298 () Bool)

(declare-fun call!643304 () (InoxSet Context!13334))

(declare-fun call!643307 () (InoxSet Context!13334))

(assert (=> bm!643298 (= call!643304 call!643307)))

(declare-fun b!7077685 () Bool)

(declare-fun e!4255107 () (InoxSet Context!13334))

(assert (=> b!7077685 (= e!4255107 call!643304)))

(declare-fun b!7077686 () Bool)

(declare-fun e!4255108 () (InoxSet Context!13334))

(assert (=> b!7077686 (= e!4255108 e!4255107)))

(declare-fun c!1320679 () Bool)

(assert (=> b!7077686 (= c!1320679 ((_ is Concat!26516) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun b!7077687 () Bool)

(declare-fun e!4255109 () (InoxSet Context!13334))

(declare-fun e!4255110 () (InoxSet Context!13334))

(assert (=> b!7077687 (= e!4255109 e!4255110)))

(declare-fun c!1320681 () Bool)

(assert (=> b!7077687 (= c!1320681 ((_ is Union!17671) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun b!7077688 () Bool)

(declare-fun e!4255111 () Bool)

(assert (=> b!7077688 (= e!4255111 (nullable!7354 (regOne!35854 (h!74863 (exprs!7167 lt!2549855)))))))

(declare-fun bm!643299 () Bool)

(declare-fun c!1320683 () Bool)

(declare-fun call!643303 () List!68539)

(assert (=> bm!643299 (= call!643303 ($colon$colon!2674 (exprs!7167 (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306)))) (ite (or c!1320683 c!1320679) (regTwo!35854 (h!74863 (exprs!7167 lt!2549855))) (h!74863 (exprs!7167 lt!2549855)))))))

(declare-fun b!7077689 () Bool)

(assert (=> b!7077689 (= e!4255109 (store ((as const (Array Context!13334 Bool)) false) (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306))) true))))

(declare-fun bm!643300 () Bool)

(declare-fun call!643305 () (InoxSet Context!13334))

(assert (=> bm!643300 (= call!643305 (derivationStepZipperDown!2305 (ite c!1320681 (regOne!35855 (h!74863 (exprs!7167 lt!2549855))) (regOne!35854 (h!74863 (exprs!7167 lt!2549855)))) (ite c!1320681 (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306))) (Context!13335 call!643303)) (h!74864 s!7408)))))

(declare-fun call!643306 () (InoxSet Context!13334))

(declare-fun call!643308 () List!68539)

(declare-fun bm!643301 () Bool)

(assert (=> bm!643301 (= call!643306 (derivationStepZipperDown!2305 (ite c!1320681 (regTwo!35855 (h!74863 (exprs!7167 lt!2549855))) (ite c!1320683 (regTwo!35854 (h!74863 (exprs!7167 lt!2549855))) (ite c!1320679 (regOne!35854 (h!74863 (exprs!7167 lt!2549855))) (reg!18000 (h!74863 (exprs!7167 lt!2549855)))))) (ite (or c!1320681 c!1320683) (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306))) (Context!13335 call!643308)) (h!74864 s!7408)))))

(declare-fun bm!643302 () Bool)

(assert (=> bm!643302 (= call!643308 call!643303)))

(declare-fun b!7077690 () Bool)

(assert (=> b!7077690 (= e!4255110 ((_ map or) call!643305 call!643306))))

(declare-fun b!7077691 () Bool)

(assert (=> b!7077691 (= e!4255108 ((_ map or) call!643305 call!643307))))

(declare-fun bm!643303 () Bool)

(assert (=> bm!643303 (= call!643307 call!643306)))

(declare-fun b!7077692 () Bool)

(declare-fun c!1320682 () Bool)

(assert (=> b!7077692 (= c!1320682 ((_ is Star!17671) (h!74863 (exprs!7167 lt!2549855))))))

(declare-fun e!4255112 () (InoxSet Context!13334))

(assert (=> b!7077692 (= e!4255107 e!4255112)))

(declare-fun b!7077693 () Bool)

(assert (=> b!7077693 (= e!4255112 call!643304)))

(declare-fun b!7077694 () Bool)

(assert (=> b!7077694 (= c!1320683 e!4255111)))

(declare-fun res!2890946 () Bool)

(assert (=> b!7077694 (=> (not res!2890946) (not e!4255111))))

(assert (=> b!7077694 (= res!2890946 ((_ is Concat!26516) (h!74863 (exprs!7167 lt!2549855))))))

(assert (=> b!7077694 (= e!4255110 e!4255108)))

(declare-fun b!7077695 () Bool)

(assert (=> b!7077695 (= e!4255112 ((as const (Array Context!13334 Bool)) false))))

(declare-fun d!2213611 () Bool)

(declare-fun c!1320680 () Bool)

(assert (=> d!2213611 (= c!1320680 (and ((_ is ElementMatch!17671) (h!74863 (exprs!7167 lt!2549855))) (= (c!1320580 (h!74863 (exprs!7167 lt!2549855))) (h!74864 s!7408))))))

(assert (=> d!2213611 (= (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) (Context!13335 (++!15818 lt!2549838 (exprs!7167 ct2!306))) (h!74864 s!7408)) e!4255109)))

(assert (= (and d!2213611 c!1320680) b!7077689))

(assert (= (and d!2213611 (not c!1320680)) b!7077687))

(assert (= (and b!7077687 c!1320681) b!7077690))

(assert (= (and b!7077687 (not c!1320681)) b!7077694))

(assert (= (and b!7077694 res!2890946) b!7077688))

(assert (= (and b!7077694 c!1320683) b!7077691))

(assert (= (and b!7077694 (not c!1320683)) b!7077686))

(assert (= (and b!7077686 c!1320679) b!7077685))

(assert (= (and b!7077686 (not c!1320679)) b!7077692))

(assert (= (and b!7077692 c!1320682) b!7077693))

(assert (= (and b!7077692 (not c!1320682)) b!7077695))

(assert (= (or b!7077685 b!7077693) bm!643302))

(assert (= (or b!7077685 b!7077693) bm!643298))

(assert (= (or b!7077691 bm!643298) bm!643303))

(assert (= (or b!7077691 bm!643302) bm!643299))

(assert (= (or b!7077690 b!7077691) bm!643300))

(assert (= (or b!7077690 bm!643303) bm!643301))

(declare-fun m!7806460 () Bool)

(assert (=> bm!643301 m!7806460))

(declare-fun m!7806462 () Bool)

(assert (=> b!7077689 m!7806462))

(declare-fun m!7806464 () Bool)

(assert (=> bm!643300 m!7806464))

(assert (=> b!7077688 m!7806378))

(declare-fun m!7806466 () Bool)

(assert (=> bm!643299 m!7806466))

(assert (=> b!7077364 d!2213611))

(declare-fun b!7077705 () Bool)

(declare-fun e!4255117 () List!68539)

(assert (=> b!7077705 (= e!4255117 (Cons!68415 (h!74863 lt!2549838) (++!15818 (t!382324 lt!2549838) (exprs!7167 ct2!306))))))

(declare-fun b!7077706 () Bool)

(declare-fun res!2890952 () Bool)

(declare-fun e!4255118 () Bool)

(assert (=> b!7077706 (=> (not res!2890952) (not e!4255118))))

(declare-fun lt!2549954 () List!68539)

(declare-fun size!41241 (List!68539) Int)

(assert (=> b!7077706 (= res!2890952 (= (size!41241 lt!2549954) (+ (size!41241 lt!2549838) (size!41241 (exprs!7167 ct2!306)))))))

(declare-fun b!7077704 () Bool)

(assert (=> b!7077704 (= e!4255117 (exprs!7167 ct2!306))))

(declare-fun b!7077707 () Bool)

(assert (=> b!7077707 (= e!4255118 (or (not (= (exprs!7167 ct2!306) Nil!68415)) (= lt!2549954 lt!2549838)))))

(declare-fun d!2213613 () Bool)

(assert (=> d!2213613 e!4255118))

(declare-fun res!2890951 () Bool)

(assert (=> d!2213613 (=> (not res!2890951) (not e!4255118))))

(declare-fun content!13842 (List!68539) (InoxSet Regex!17671))

(assert (=> d!2213613 (= res!2890951 (= (content!13842 lt!2549954) ((_ map or) (content!13842 lt!2549838) (content!13842 (exprs!7167 ct2!306)))))))

(assert (=> d!2213613 (= lt!2549954 e!4255117)))

(declare-fun c!1320686 () Bool)

(assert (=> d!2213613 (= c!1320686 ((_ is Nil!68415) lt!2549838))))

(assert (=> d!2213613 (= (++!15818 lt!2549838 (exprs!7167 ct2!306)) lt!2549954)))

(assert (= (and d!2213613 c!1320686) b!7077704))

(assert (= (and d!2213613 (not c!1320686)) b!7077705))

(assert (= (and d!2213613 res!2890951) b!7077706))

(assert (= (and b!7077706 res!2890952) b!7077707))

(declare-fun m!7806468 () Bool)

(assert (=> b!7077705 m!7806468))

(declare-fun m!7806470 () Bool)

(assert (=> b!7077706 m!7806470))

(declare-fun m!7806472 () Bool)

(assert (=> b!7077706 m!7806472))

(declare-fun m!7806474 () Bool)

(assert (=> b!7077706 m!7806474))

(declare-fun m!7806476 () Bool)

(assert (=> d!2213613 m!7806476))

(declare-fun m!7806478 () Bool)

(assert (=> d!2213613 m!7806478))

(declare-fun m!7806480 () Bool)

(assert (=> d!2213613 m!7806480))

(assert (=> b!7077364 d!2213613))

(assert (=> b!7077364 d!2213601))

(declare-fun bs!1881557 () Bool)

(declare-fun d!2213615 () Bool)

(assert (= bs!1881557 (and d!2213615 b!7077371)))

(declare-fun lambda!426988 () Int)

(assert (=> bs!1881557 (= lambda!426988 lambda!426950)))

(declare-fun bs!1881558 () Bool)

(assert (= bs!1881558 (and d!2213615 d!2213603)))

(assert (=> bs!1881558 (= lambda!426988 lambda!426980)))

(assert (=> d!2213615 (= (inv!87036 setElem!50401) (forall!16630 (exprs!7167 setElem!50401) lambda!426988))))

(declare-fun bs!1881559 () Bool)

(assert (= bs!1881559 d!2213615))

(declare-fun m!7806482 () Bool)

(assert (=> bs!1881559 m!7806482))

(assert (=> setNonEmpty!50401 d!2213615))

(declare-fun d!2213617 () Bool)

(declare-fun c!1320687 () Bool)

(assert (=> d!2213617 (= c!1320687 (isEmpty!39936 s!7408))))

(declare-fun e!4255119 () Bool)

(assert (=> d!2213617 (= (matchZipper!3211 lt!2549849 s!7408) e!4255119)))

(declare-fun b!7077708 () Bool)

(assert (=> b!7077708 (= e!4255119 (nullableZipper!2717 lt!2549849))))

(declare-fun b!7077709 () Bool)

(assert (=> b!7077709 (= e!4255119 (matchZipper!3211 (derivationStepZipper!3121 lt!2549849 (head!14426 s!7408)) (tail!13873 s!7408)))))

(assert (= (and d!2213617 c!1320687) b!7077708))

(assert (= (and d!2213617 (not c!1320687)) b!7077709))

(declare-fun m!7806484 () Bool)

(assert (=> d!2213617 m!7806484))

(declare-fun m!7806486 () Bool)

(assert (=> b!7077708 m!7806486))

(declare-fun m!7806488 () Bool)

(assert (=> b!7077709 m!7806488))

(assert (=> b!7077709 m!7806488))

(declare-fun m!7806490 () Bool)

(assert (=> b!7077709 m!7806490))

(declare-fun m!7806492 () Bool)

(assert (=> b!7077709 m!7806492))

(assert (=> b!7077709 m!7806490))

(assert (=> b!7077709 m!7806492))

(declare-fun m!7806494 () Bool)

(assert (=> b!7077709 m!7806494))

(assert (=> start!688032 d!2213617))

(declare-fun bs!1881560 () Bool)

(declare-fun d!2213619 () Bool)

(assert (= bs!1881560 (and d!2213619 b!7077371)))

(declare-fun lambda!426989 () Int)

(assert (=> bs!1881560 (= lambda!426989 lambda!426949)))

(declare-fun bs!1881561 () Bool)

(assert (= bs!1881561 (and d!2213619 d!2213605)))

(assert (=> bs!1881561 (= lambda!426989 lambda!426985)))

(assert (=> d!2213619 true))

(assert (=> d!2213619 (= (appendTo!792 z1!570 ct2!306) (map!16021 z1!570 lambda!426989))))

(declare-fun bs!1881562 () Bool)

(assert (= bs!1881562 d!2213619))

(declare-fun m!7806496 () Bool)

(assert (=> bs!1881562 m!7806496))

(assert (=> start!688032 d!2213619))

(declare-fun bs!1881563 () Bool)

(declare-fun d!2213621 () Bool)

(assert (= bs!1881563 (and d!2213621 b!7077371)))

(declare-fun lambda!426990 () Int)

(assert (=> bs!1881563 (= lambda!426990 lambda!426950)))

(declare-fun bs!1881564 () Bool)

(assert (= bs!1881564 (and d!2213621 d!2213603)))

(assert (=> bs!1881564 (= lambda!426990 lambda!426980)))

(declare-fun bs!1881565 () Bool)

(assert (= bs!1881565 (and d!2213621 d!2213615)))

(assert (=> bs!1881565 (= lambda!426990 lambda!426988)))

(assert (=> d!2213621 (= (inv!87036 ct2!306) (forall!16630 (exprs!7167 ct2!306) lambda!426990))))

(declare-fun bs!1881566 () Bool)

(assert (= bs!1881566 d!2213621))

(declare-fun m!7806498 () Bool)

(assert (=> bs!1881566 m!7806498))

(assert (=> start!688032 d!2213621))

(declare-fun b!7077711 () Bool)

(declare-fun e!4255120 () List!68539)

(assert (=> b!7077711 (= e!4255120 (Cons!68415 (h!74863 (exprs!7167 lt!2549855)) (++!15818 (t!382324 (exprs!7167 lt!2549855)) (exprs!7167 ct2!306))))))

(declare-fun b!7077712 () Bool)

(declare-fun res!2890954 () Bool)

(declare-fun e!4255121 () Bool)

(assert (=> b!7077712 (=> (not res!2890954) (not e!4255121))))

(declare-fun lt!2549955 () List!68539)

(assert (=> b!7077712 (= res!2890954 (= (size!41241 lt!2549955) (+ (size!41241 (exprs!7167 lt!2549855)) (size!41241 (exprs!7167 ct2!306)))))))

(declare-fun b!7077710 () Bool)

(assert (=> b!7077710 (= e!4255120 (exprs!7167 ct2!306))))

(declare-fun b!7077713 () Bool)

(assert (=> b!7077713 (= e!4255121 (or (not (= (exprs!7167 ct2!306) Nil!68415)) (= lt!2549955 (exprs!7167 lt!2549855))))))

(declare-fun d!2213623 () Bool)

(assert (=> d!2213623 e!4255121))

(declare-fun res!2890953 () Bool)

(assert (=> d!2213623 (=> (not res!2890953) (not e!4255121))))

(assert (=> d!2213623 (= res!2890953 (= (content!13842 lt!2549955) ((_ map or) (content!13842 (exprs!7167 lt!2549855)) (content!13842 (exprs!7167 ct2!306)))))))

(assert (=> d!2213623 (= lt!2549955 e!4255120)))

(declare-fun c!1320688 () Bool)

(assert (=> d!2213623 (= c!1320688 ((_ is Nil!68415) (exprs!7167 lt!2549855)))))

(assert (=> d!2213623 (= (++!15818 (exprs!7167 lt!2549855) (exprs!7167 ct2!306)) lt!2549955)))

(assert (= (and d!2213623 c!1320688) b!7077710))

(assert (= (and d!2213623 (not c!1320688)) b!7077711))

(assert (= (and d!2213623 res!2890953) b!7077712))

(assert (= (and b!7077712 res!2890954) b!7077713))

(declare-fun m!7806500 () Bool)

(assert (=> b!7077711 m!7806500))

(declare-fun m!7806502 () Bool)

(assert (=> b!7077712 m!7806502))

(declare-fun m!7806504 () Bool)

(assert (=> b!7077712 m!7806504))

(assert (=> b!7077712 m!7806474))

(declare-fun m!7806506 () Bool)

(assert (=> d!2213623 m!7806506))

(declare-fun m!7806508 () Bool)

(assert (=> d!2213623 m!7806508))

(assert (=> d!2213623 m!7806480))

(assert (=> b!7077371 d!2213623))

(assert (=> b!7077371 d!2213551))

(declare-fun d!2213625 () Bool)

(declare-fun e!4255124 () Bool)

(assert (=> d!2213625 e!4255124))

(declare-fun res!2890957 () Bool)

(assert (=> d!2213625 (=> (not res!2890957) (not e!4255124))))

(declare-fun lt!2549958 () Context!13334)

(declare-fun dynLambda!27867 (Int Context!13334) Context!13334)

(assert (=> d!2213625 (= res!2890957 (= lt!2549836 (dynLambda!27867 lambda!426949 lt!2549958)))))

(declare-fun choose!54362 ((InoxSet Context!13334) Int Context!13334) Context!13334)

(assert (=> d!2213625 (= lt!2549958 (choose!54362 z1!570 lambda!426949 lt!2549836))))

(assert (=> d!2213625 (select (map!16021 z1!570 lambda!426949) lt!2549836)))

(assert (=> d!2213625 (= (mapPost2!500 z1!570 lambda!426949 lt!2549836) lt!2549958)))

(declare-fun b!7077717 () Bool)

(assert (=> b!7077717 (= e!4255124 (select z1!570 lt!2549958))))

(assert (= (and d!2213625 res!2890957) b!7077717))

(declare-fun b_lambda!270363 () Bool)

(assert (=> (not b_lambda!270363) (not d!2213625)))

(declare-fun m!7806510 () Bool)

(assert (=> d!2213625 m!7806510))

(declare-fun m!7806512 () Bool)

(assert (=> d!2213625 m!7806512))

(declare-fun m!7806514 () Bool)

(assert (=> d!2213625 m!7806514))

(declare-fun m!7806516 () Bool)

(assert (=> d!2213625 m!7806516))

(declare-fun m!7806518 () Bool)

(assert (=> b!7077717 m!7806518))

(assert (=> b!7077371 d!2213625))

(declare-fun b!7077721 () Bool)

(declare-fun e!4255126 () Bool)

(declare-fun lt!2549959 () List!68540)

(assert (=> b!7077721 (= e!4255126 (or (not (= s!7408 Nil!68416)) (= lt!2549959 Nil!68416)))))

(declare-fun b!7077719 () Bool)

(declare-fun e!4255125 () List!68540)

(assert (=> b!7077719 (= e!4255125 (Cons!68416 (h!74864 Nil!68416) (++!15817 (t!382325 Nil!68416) s!7408)))))

(declare-fun b!7077720 () Bool)

(declare-fun res!2890959 () Bool)

(assert (=> b!7077720 (=> (not res!2890959) (not e!4255126))))

(assert (=> b!7077720 (= res!2890959 (= (size!41240 lt!2549959) (+ (size!41240 Nil!68416) (size!41240 s!7408))))))

(declare-fun b!7077718 () Bool)

(assert (=> b!7077718 (= e!4255125 s!7408)))

(declare-fun d!2213627 () Bool)

(assert (=> d!2213627 e!4255126))

(declare-fun res!2890958 () Bool)

(assert (=> d!2213627 (=> (not res!2890958) (not e!4255126))))

(assert (=> d!2213627 (= res!2890958 (= (content!13840 lt!2549959) ((_ map or) (content!13840 Nil!68416) (content!13840 s!7408))))))

(assert (=> d!2213627 (= lt!2549959 e!4255125)))

(declare-fun c!1320689 () Bool)

(assert (=> d!2213627 (= c!1320689 ((_ is Nil!68416) Nil!68416))))

(assert (=> d!2213627 (= (++!15817 Nil!68416 s!7408) lt!2549959)))

(assert (= (and d!2213627 c!1320689) b!7077718))

(assert (= (and d!2213627 (not c!1320689)) b!7077719))

(assert (= (and d!2213627 res!2890958) b!7077720))

(assert (= (and b!7077720 res!2890959) b!7077721))

(declare-fun m!7806520 () Bool)

(assert (=> b!7077719 m!7806520))

(declare-fun m!7806522 () Bool)

(assert (=> b!7077720 m!7806522))

(assert (=> b!7077720 m!7806274))

(declare-fun m!7806524 () Bool)

(assert (=> b!7077720 m!7806524))

(declare-fun m!7806526 () Bool)

(assert (=> d!2213627 m!7806526))

(declare-fun m!7806528 () Bool)

(assert (=> d!2213627 m!7806528))

(declare-fun m!7806530 () Bool)

(assert (=> d!2213627 m!7806530))

(assert (=> b!7077372 d!2213627))

(declare-fun d!2213629 () Bool)

(assert (=> d!2213629 (= (flatMap!2597 lt!2549845 lambda!426951) (choose!54355 lt!2549845 lambda!426951))))

(declare-fun bs!1881567 () Bool)

(assert (= bs!1881567 d!2213629))

(declare-fun m!7806532 () Bool)

(assert (=> bs!1881567 m!7806532))

(assert (=> b!7077362 d!2213629))

(declare-fun b!7077722 () Bool)

(declare-fun e!4255129 () (InoxSet Context!13334))

(assert (=> b!7077722 (= e!4255129 ((as const (Array Context!13334 Bool)) false))))

(declare-fun b!7077723 () Bool)

(declare-fun e!4255127 () (InoxSet Context!13334))

(assert (=> b!7077723 (= e!4255127 e!4255129)))

(declare-fun c!1320690 () Bool)

(assert (=> b!7077723 (= c!1320690 ((_ is Cons!68415) (exprs!7167 lt!2549855)))))

(declare-fun bm!643304 () Bool)

(declare-fun call!643309 () (InoxSet Context!13334))

(assert (=> bm!643304 (= call!643309 (derivationStepZipperDown!2305 (h!74863 (exprs!7167 lt!2549855)) (Context!13335 (t!382324 (exprs!7167 lt!2549855))) (h!74864 s!7408)))))

(declare-fun b!7077724 () Bool)

(assert (=> b!7077724 (= e!4255127 ((_ map or) call!643309 (derivationStepZipperUp!2255 (Context!13335 (t!382324 (exprs!7167 lt!2549855))) (h!74864 s!7408))))))

(declare-fun b!7077726 () Bool)

(assert (=> b!7077726 (= e!4255129 call!643309)))

(declare-fun d!2213631 () Bool)

(declare-fun c!1320691 () Bool)

(declare-fun e!4255128 () Bool)

(assert (=> d!2213631 (= c!1320691 e!4255128)))

(declare-fun res!2890960 () Bool)

(assert (=> d!2213631 (=> (not res!2890960) (not e!4255128))))

(assert (=> d!2213631 (= res!2890960 ((_ is Cons!68415) (exprs!7167 lt!2549855)))))

(assert (=> d!2213631 (= (derivationStepZipperUp!2255 lt!2549855 (h!74864 s!7408)) e!4255127)))

(declare-fun b!7077725 () Bool)

(assert (=> b!7077725 (= e!4255128 (nullable!7354 (h!74863 (exprs!7167 lt!2549855))))))

(assert (= (and d!2213631 res!2890960) b!7077725))

(assert (= (and d!2213631 c!1320691) b!7077724))

(assert (= (and d!2213631 (not c!1320691)) b!7077723))

(assert (= (and b!7077723 c!1320690) b!7077726))

(assert (= (and b!7077723 (not c!1320690)) b!7077722))

(assert (= (or b!7077724 b!7077726) bm!643304))

(declare-fun m!7806534 () Bool)

(assert (=> bm!643304 m!7806534))

(declare-fun m!7806536 () Bool)

(assert (=> b!7077724 m!7806536))

(assert (=> b!7077725 m!7806000))

(assert (=> b!7077362 d!2213631))

(declare-fun d!2213633 () Bool)

(assert (=> d!2213633 (= (flatMap!2597 lt!2549845 lambda!426951) (dynLambda!27864 lambda!426951 lt!2549855))))

(declare-fun lt!2549960 () Unit!162053)

(assert (=> d!2213633 (= lt!2549960 (choose!54356 lt!2549845 lt!2549855 lambda!426951))))

(assert (=> d!2213633 (= lt!2549845 (store ((as const (Array Context!13334 Bool)) false) lt!2549855 true))))

(assert (=> d!2213633 (= (lemmaFlatMapOnSingletonSet!2106 lt!2549845 lt!2549855 lambda!426951) lt!2549960)))

(declare-fun b_lambda!270365 () Bool)

(assert (=> (not b_lambda!270365) (not d!2213633)))

(declare-fun bs!1881568 () Bool)

(assert (= bs!1881568 d!2213633))

(assert (=> bs!1881568 m!7805958))

(declare-fun m!7806538 () Bool)

(assert (=> bs!1881568 m!7806538))

(declare-fun m!7806540 () Bool)

(assert (=> bs!1881568 m!7806540))

(assert (=> bs!1881568 m!7805960))

(assert (=> b!7077362 d!2213633))

(declare-fun bs!1881569 () Bool)

(declare-fun d!2213635 () Bool)

(assert (= bs!1881569 (and d!2213635 b!7077366)))

(declare-fun lambda!426991 () Int)

(assert (=> bs!1881569 (= lambda!426991 lambda!426951)))

(declare-fun bs!1881570 () Bool)

(assert (= bs!1881570 (and d!2213635 d!2213541)))

(assert (=> bs!1881570 (= lambda!426991 lambda!426966)))

(assert (=> d!2213635 true))

(assert (=> d!2213635 (= (derivationStepZipper!3121 lt!2549845 (h!74864 s!7408)) (flatMap!2597 lt!2549845 lambda!426991))))

(declare-fun bs!1881571 () Bool)

(assert (= bs!1881571 d!2213635))

(declare-fun m!7806542 () Bool)

(assert (=> bs!1881571 m!7806542))

(assert (=> b!7077362 d!2213635))

(declare-fun d!2213637 () Bool)

(declare-fun c!1320692 () Bool)

(assert (=> d!2213637 (= c!1320692 (isEmpty!39936 s!7408))))

(declare-fun e!4255130 () Bool)

(assert (=> d!2213637 (= (matchZipper!3211 lt!2549841 s!7408) e!4255130)))

(declare-fun b!7077727 () Bool)

(assert (=> b!7077727 (= e!4255130 (nullableZipper!2717 lt!2549841))))

(declare-fun b!7077728 () Bool)

(assert (=> b!7077728 (= e!4255130 (matchZipper!3211 (derivationStepZipper!3121 lt!2549841 (head!14426 s!7408)) (tail!13873 s!7408)))))

(assert (= (and d!2213637 c!1320692) b!7077727))

(assert (= (and d!2213637 (not c!1320692)) b!7077728))

(assert (=> d!2213637 m!7806484))

(declare-fun m!7806544 () Bool)

(assert (=> b!7077727 m!7806544))

(assert (=> b!7077728 m!7806488))

(assert (=> b!7077728 m!7806488))

(declare-fun m!7806546 () Bool)

(assert (=> b!7077728 m!7806546))

(assert (=> b!7077728 m!7806492))

(assert (=> b!7077728 m!7806546))

(assert (=> b!7077728 m!7806492))

(declare-fun m!7806548 () Bool)

(assert (=> b!7077728 m!7806548))

(assert (=> b!7077363 d!2213637))

(declare-fun d!2213639 () Bool)

(declare-fun e!4255133 () Bool)

(assert (=> d!2213639 e!4255133))

(declare-fun res!2890963 () Bool)

(assert (=> d!2213639 (=> (not res!2890963) (not e!4255133))))

(declare-fun lt!2549963 () Context!13334)

(declare-fun dynLambda!27868 (Int Context!13334) Bool)

(assert (=> d!2213639 (= res!2890963 (dynLambda!27868 lambda!426948 lt!2549963))))

(declare-fun getWitness!1790 (List!68541 Int) Context!13334)

(assert (=> d!2213639 (= lt!2549963 (getWitness!1790 (toList!11012 lt!2549849) lambda!426948))))

(declare-fun exists!3740 ((InoxSet Context!13334) Int) Bool)

(assert (=> d!2213639 (exists!3740 lt!2549849 lambda!426948)))

(assert (=> d!2213639 (= (getWitness!1788 lt!2549849 lambda!426948) lt!2549963)))

(declare-fun b!7077731 () Bool)

(assert (=> b!7077731 (= e!4255133 (select lt!2549849 lt!2549963))))

(assert (= (and d!2213639 res!2890963) b!7077731))

(declare-fun b_lambda!270367 () Bool)

(assert (=> (not b_lambda!270367) (not d!2213639)))

(declare-fun m!7806550 () Bool)

(assert (=> d!2213639 m!7806550))

(assert (=> d!2213639 m!7805982))

(assert (=> d!2213639 m!7805982))

(declare-fun m!7806552 () Bool)

(assert (=> d!2213639 m!7806552))

(declare-fun m!7806554 () Bool)

(assert (=> d!2213639 m!7806554))

(declare-fun m!7806556 () Bool)

(assert (=> b!7077731 m!7806556))

(assert (=> b!7077363 d!2213639))

(declare-fun d!2213641 () Bool)

(declare-fun e!4255136 () Bool)

(assert (=> d!2213641 e!4255136))

(declare-fun res!2890966 () Bool)

(assert (=> d!2213641 (=> (not res!2890966) (not e!4255136))))

(declare-fun lt!2549966 () List!68541)

(declare-fun noDuplicate!2744 (List!68541) Bool)

(assert (=> d!2213641 (= res!2890966 (noDuplicate!2744 lt!2549966))))

(declare-fun choose!54363 ((InoxSet Context!13334)) List!68541)

(assert (=> d!2213641 (= lt!2549966 (choose!54363 lt!2549849))))

(assert (=> d!2213641 (= (toList!11012 lt!2549849) lt!2549966)))

(declare-fun b!7077734 () Bool)

(declare-fun content!13843 (List!68541) (InoxSet Context!13334))

(assert (=> b!7077734 (= e!4255136 (= (content!13843 lt!2549966) lt!2549849))))

(assert (= (and d!2213641 res!2890966) b!7077734))

(declare-fun m!7806558 () Bool)

(assert (=> d!2213641 m!7806558))

(declare-fun m!7806560 () Bool)

(assert (=> d!2213641 m!7806560))

(declare-fun m!7806562 () Bool)

(assert (=> b!7077734 m!7806562))

(assert (=> b!7077363 d!2213641))

(declare-fun bs!1881572 () Bool)

(declare-fun d!2213643 () Bool)

(assert (= bs!1881572 (and d!2213643 b!7077363)))

(declare-fun lambda!426994 () Int)

(assert (=> bs!1881572 (not (= lambda!426994 lambda!426948))))

(assert (=> d!2213643 true))

(declare-fun order!28445 () Int)

(declare-fun dynLambda!27869 (Int Int) Int)

(assert (=> d!2213643 (< (dynLambda!27869 order!28445 lambda!426948) (dynLambda!27869 order!28445 lambda!426994))))

(declare-fun forall!16632 (List!68541 Int) Bool)

(assert (=> d!2213643 (= (exists!3738 lt!2549864 lambda!426948) (not (forall!16632 lt!2549864 lambda!426994)))))

(declare-fun bs!1881573 () Bool)

(assert (= bs!1881573 d!2213643))

(declare-fun m!7806564 () Bool)

(assert (=> bs!1881573 m!7806564))

(assert (=> b!7077363 d!2213643))

(declare-fun bs!1881574 () Bool)

(declare-fun d!2213645 () Bool)

(assert (= bs!1881574 (and d!2213645 b!7077363)))

(declare-fun lambda!426997 () Int)

(assert (=> bs!1881574 (= lambda!426997 lambda!426948)))

(declare-fun bs!1881575 () Bool)

(assert (= bs!1881575 (and d!2213645 d!2213643)))

(assert (=> bs!1881575 (not (= lambda!426997 lambda!426994))))

(assert (=> d!2213645 true))

(assert (=> d!2213645 (exists!3738 lt!2549864 lambda!426997)))

(declare-fun lt!2549969 () Unit!162053)

(declare-fun choose!54364 (List!68541 List!68540) Unit!162053)

(assert (=> d!2213645 (= lt!2549969 (choose!54364 lt!2549864 s!7408))))

(assert (=> d!2213645 (matchZipper!3211 (content!13843 lt!2549864) s!7408)))

(assert (=> d!2213645 (= (lemmaZipperMatchesExistsMatchingContext!592 lt!2549864 s!7408) lt!2549969)))

(declare-fun bs!1881576 () Bool)

(assert (= bs!1881576 d!2213645))

(declare-fun m!7806566 () Bool)

(assert (=> bs!1881576 m!7806566))

(declare-fun m!7806568 () Bool)

(assert (=> bs!1881576 m!7806568))

(declare-fun m!7806570 () Bool)

(assert (=> bs!1881576 m!7806570))

(assert (=> bs!1881576 m!7806570))

(declare-fun m!7806572 () Bool)

(assert (=> bs!1881576 m!7806572))

(assert (=> b!7077363 d!2213645))

(declare-fun b!7077741 () Bool)

(declare-fun e!4255139 () Bool)

(declare-fun tp!1943056 () Bool)

(declare-fun tp!1943057 () Bool)

(assert (=> b!7077741 (= e!4255139 (and tp!1943056 tp!1943057))))

(assert (=> b!7077360 (= tp!1943032 e!4255139)))

(assert (= (and b!7077360 ((_ is Cons!68415) (exprs!7167 ct2!306))) b!7077741))

(declare-fun b!7077742 () Bool)

(declare-fun e!4255140 () Bool)

(declare-fun tp!1943058 () Bool)

(declare-fun tp!1943059 () Bool)

(assert (=> b!7077742 (= e!4255140 (and tp!1943058 tp!1943059))))

(assert (=> b!7077356 (= tp!1943033 e!4255140)))

(assert (= (and b!7077356 ((_ is Cons!68415) (exprs!7167 setElem!50401))) b!7077742))

(declare-fun b!7077747 () Bool)

(declare-fun e!4255143 () Bool)

(declare-fun tp!1943062 () Bool)

(assert (=> b!7077747 (= e!4255143 (and tp_is_empty!44567 tp!1943062))))

(assert (=> b!7077375 (= tp!1943034 e!4255143)))

(assert (= (and b!7077375 ((_ is Cons!68416) (t!382325 s!7408))) b!7077747))

(declare-fun condSetEmpty!50407 () Bool)

(assert (=> setNonEmpty!50401 (= condSetEmpty!50407 (= setRest!50401 ((as const (Array Context!13334 Bool)) false)))))

(declare-fun setRes!50407 () Bool)

(assert (=> setNonEmpty!50401 (= tp!1943031 setRes!50407)))

(declare-fun setIsEmpty!50407 () Bool)

(assert (=> setIsEmpty!50407 setRes!50407))

(declare-fun setNonEmpty!50407 () Bool)

(declare-fun setElem!50407 () Context!13334)

(declare-fun tp!1943068 () Bool)

(declare-fun e!4255146 () Bool)

(assert (=> setNonEmpty!50407 (= setRes!50407 (and tp!1943068 (inv!87036 setElem!50407) e!4255146))))

(declare-fun setRest!50407 () (InoxSet Context!13334))

(assert (=> setNonEmpty!50407 (= setRest!50401 ((_ map or) (store ((as const (Array Context!13334 Bool)) false) setElem!50407 true) setRest!50407))))

(declare-fun b!7077752 () Bool)

(declare-fun tp!1943067 () Bool)

(assert (=> b!7077752 (= e!4255146 tp!1943067)))

(assert (= (and setNonEmpty!50401 condSetEmpty!50407) setIsEmpty!50407))

(assert (= (and setNonEmpty!50401 (not condSetEmpty!50407)) setNonEmpty!50407))

(assert (= setNonEmpty!50407 b!7077752))

(declare-fun m!7806574 () Bool)

(assert (=> setNonEmpty!50407 m!7806574))

(declare-fun b_lambda!270369 () Bool)

(assert (= b_lambda!270351 (or b!7077366 b_lambda!270369)))

(declare-fun bs!1881577 () Bool)

(declare-fun d!2213647 () Bool)

(assert (= bs!1881577 (and d!2213647 b!7077366)))

(assert (=> bs!1881577 (= (dynLambda!27864 lambda!426951 lt!2549852) (derivationStepZipperUp!2255 lt!2549852 (h!74864 s!7408)))))

(assert (=> bs!1881577 m!7805986))

(assert (=> d!2213543 d!2213647))

(declare-fun b_lambda!270371 () Bool)

(assert (= b_lambda!270367 (or b!7077363 b_lambda!270371)))

(declare-fun bs!1881578 () Bool)

(declare-fun d!2213649 () Bool)

(assert (= bs!1881578 (and d!2213649 b!7077363)))

(assert (=> bs!1881578 (= (dynLambda!27868 lambda!426948 lt!2549963) (matchZipper!3211 (store ((as const (Array Context!13334 Bool)) false) lt!2549963 true) s!7408))))

(declare-fun m!7806576 () Bool)

(assert (=> bs!1881578 m!7806576))

(assert (=> bs!1881578 m!7806576))

(declare-fun m!7806578 () Bool)

(assert (=> bs!1881578 m!7806578))

(assert (=> d!2213639 d!2213649))

(declare-fun b_lambda!270373 () Bool)

(assert (= b_lambda!270365 (or b!7077366 b_lambda!270373)))

(declare-fun bs!1881579 () Bool)

(declare-fun d!2213651 () Bool)

(assert (= bs!1881579 (and d!2213651 b!7077366)))

(assert (=> bs!1881579 (= (dynLambda!27864 lambda!426951 lt!2549855) (derivationStepZipperUp!2255 lt!2549855 (h!74864 s!7408)))))

(assert (=> bs!1881579 m!7805964))

(assert (=> d!2213633 d!2213651))

(declare-fun b_lambda!270375 () Bool)

(assert (= b_lambda!270363 (or b!7077371 b_lambda!270375)))

(declare-fun bs!1881580 () Bool)

(declare-fun d!2213653 () Bool)

(assert (= bs!1881580 (and d!2213653 b!7077371)))

(declare-fun lt!2549970 () Unit!162053)

(assert (=> bs!1881580 (= lt!2549970 (lemmaConcatPreservesForall!982 (exprs!7167 lt!2549958) (exprs!7167 ct2!306) lambda!426950))))

(assert (=> bs!1881580 (= (dynLambda!27867 lambda!426949 lt!2549958) (Context!13335 (++!15818 (exprs!7167 lt!2549958) (exprs!7167 ct2!306))))))

(declare-fun m!7806580 () Bool)

(assert (=> bs!1881580 m!7806580))

(declare-fun m!7806582 () Bool)

(assert (=> bs!1881580 m!7806582))

(assert (=> d!2213625 d!2213653))

(check-sat (not d!2213527) (not b!7077747) (not b!7077728) (not b!7077676) (not b!7077681) (not b!7077705) (not b!7077734) (not b!7077479) (not d!2213633) (not b!7077544) (not d!2213561) (not d!2213615) (not b!7077683) (not b_lambda!270373) (not bm!643295) (not bm!643304) (not d!2213625) (not d!2213637) (not b!7077725) (not b!7077586) (not b!7077680) (not b!7077679) (not bs!1881578) (not bs!1881577) (not b!7077507) (not d!2213543) (not b!7077709) (not b!7077688) (not d!2213597) (not b!7077585) (not d!2213641) (not d!2213541) (not b!7077675) (not b!7077514) (not d!2213621) (not d!2213595) (not b!7077655) (not d!2213643) (not bs!1881579) (not b!7077678) (not b!7077528) (not d!2213513) (not b!7077727) (not d!2213531) (not b!7077708) (not bm!643293) (not b!7077584) (not b!7077724) (not d!2213599) (not bm!643301) (not d!2213609) (not b!7077712) (not b!7077654) (not d!2213551) (not b!7077711) (not d!2213613) (not b!7077742) (not d!2213533) (not bm!643279) (not b!7077478) (not b!7077527) (not b!7077506) (not d!2213645) (not b!7077752) (not d!2213511) (not b!7077543) (not d!2213603) (not b_lambda!270369) (not setNonEmpty!50407) (not b!7077719) (not b!7077741) (not b!7077684) (not d!2213639) (not b!7077720) (not bs!1881580) tp_is_empty!44567 (not b_lambda!270371) (not d!2213635) (not b!7077513) (not d!2213617) (not d!2213629) (not b!7077646) (not d!2213607) (not b!7077706) (not d!2213627) (not bm!643299) (not bm!643294) (not d!2213623) (not d!2213601) (not b_lambda!270375) (not bm!643300) (not d!2213605) (not d!2213619))
(check-sat)
