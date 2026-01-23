; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!687172 () Bool)

(assert start!687172)

(declare-fun b!7072929 () Bool)

(assert (=> b!7072929 true))

(declare-fun b!7072936 () Bool)

(assert (=> b!7072936 true))

(declare-fun b!7072941 () Bool)

(assert (=> b!7072941 true))

(declare-fun bs!1880825 () Bool)

(declare-fun b!7072943 () Bool)

(assert (= bs!1880825 (and b!7072943 b!7072929)))

(declare-datatypes ((C!35568 0))(
  ( (C!35569 (val!27486 Int)) )
))
(declare-datatypes ((List!68473 0))(
  ( (Nil!68349) (Cons!68349 (h!74797 C!35568) (t!382256 List!68473)) )
))
(declare-fun lt!2546775 () List!68473)

(declare-fun lambda!425865 () Int)

(declare-fun lambda!425861 () Int)

(declare-fun s!7408 () List!68473)

(assert (=> bs!1880825 (= (= lt!2546775 s!7408) (= lambda!425865 lambda!425861))))

(assert (=> b!7072943 true))

(declare-fun b!7072921 () Bool)

(declare-fun e!4252254 () Bool)

(declare-fun tp_is_empty!44523 () Bool)

(declare-fun tp!1942408 () Bool)

(assert (=> b!7072921 (= e!4252254 (and tp_is_empty!44523 tp!1942408))))

(declare-fun b!7072922 () Bool)

(declare-fun e!4252252 () Bool)

(declare-fun e!4252255 () Bool)

(assert (=> b!7072922 (= e!4252252 e!4252255)))

(declare-fun res!2888739 () Bool)

(assert (=> b!7072922 (=> res!2888739 e!4252255)))

(declare-fun e!4252247 () Bool)

(assert (=> b!7072922 (= res!2888739 e!4252247)))

(declare-fun res!2888726 () Bool)

(assert (=> b!7072922 (=> (not res!2888726) (not e!4252247))))

(declare-fun lt!2546772 () Bool)

(declare-fun lt!2546778 () Bool)

(assert (=> b!7072922 (= res!2888726 (not (= lt!2546772 lt!2546778)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17649 0))(
  ( (ElementMatch!17649 (c!1319418 C!35568)) (Concat!26494 (regOne!35810 Regex!17649) (regTwo!35810 Regex!17649)) (EmptyExpr!17649) (Star!17649 (reg!17978 Regex!17649)) (EmptyLang!17649) (Union!17649 (regOne!35811 Regex!17649) (regTwo!35811 Regex!17649)) )
))
(declare-datatypes ((List!68474 0))(
  ( (Nil!68350) (Cons!68350 (h!74798 Regex!17649) (t!382257 List!68474)) )
))
(declare-datatypes ((Context!13290 0))(
  ( (Context!13291 (exprs!7145 List!68474)) )
))
(declare-fun lt!2546769 () (InoxSet Context!13290))

(declare-fun matchZipper!3189 ((InoxSet Context!13290) List!68473) Bool)

(assert (=> b!7072922 (= lt!2546772 (matchZipper!3189 lt!2546769 (t!382256 s!7408)))))

(declare-datatypes ((Unit!162008 0))(
  ( (Unit!162009) )
))
(declare-fun lt!2546819 () Unit!162008)

(declare-fun lt!2546812 () List!68474)

(declare-fun lambda!425863 () Int)

(declare-fun ct2!306 () Context!13290)

(declare-fun lemmaConcatPreservesForall!960 (List!68474 List!68474 Int) Unit!162008)

(assert (=> b!7072922 (= lt!2546819 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lt!2546816 () (InoxSet Context!13290))

(declare-fun e!4252245 () Bool)

(assert (=> b!7072922 (= (matchZipper!3189 lt!2546816 (t!382256 s!7408)) e!4252245)))

(declare-fun res!2888745 () Bool)

(assert (=> b!7072922 (=> res!2888745 e!4252245)))

(assert (=> b!7072922 (= res!2888745 lt!2546778)))

(declare-fun lt!2546771 () (InoxSet Context!13290))

(assert (=> b!7072922 (= lt!2546778 (matchZipper!3189 lt!2546771 (t!382256 s!7408)))))

(declare-fun lt!2546786 () (InoxSet Context!13290))

(declare-fun lt!2546789 () Unit!162008)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1662 ((InoxSet Context!13290) (InoxSet Context!13290) List!68473) Unit!162008)

(assert (=> b!7072922 (= lt!2546789 (lemmaZipperConcatMatchesSameAsBothZippers!1662 lt!2546771 lt!2546786 (t!382256 s!7408)))))

(declare-fun lt!2546792 () Unit!162008)

(assert (=> b!7072922 (= lt!2546792 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lt!2546790 () Unit!162008)

(assert (=> b!7072922 (= lt!2546790 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072923 () Bool)

(declare-fun res!2888738 () Bool)

(declare-fun e!4252262 () Bool)

(assert (=> b!7072923 (=> res!2888738 e!4252262)))

(declare-datatypes ((tuple2!68272 0))(
  ( (tuple2!68273 (_1!37439 List!68473) (_2!37439 List!68473)) )
))
(declare-fun lt!2546793 () tuple2!68272)

(declare-fun ++!15781 (List!68473 List!68473) List!68473)

(assert (=> b!7072923 (= res!2888738 (not (= (++!15781 (_1!37439 lt!2546793) (_2!37439 lt!2546793)) (t!382256 s!7408))))))

(declare-fun b!7072924 () Bool)

(declare-fun res!2888730 () Bool)

(declare-fun e!4252263 () Bool)

(assert (=> b!7072924 (=> res!2888730 e!4252263)))

(declare-fun lt!2546781 () Context!13290)

(declare-fun isEmpty!39891 (List!68474) Bool)

(assert (=> b!7072924 (= res!2888730 (isEmpty!39891 (exprs!7145 lt!2546781)))))

(declare-fun b!7072925 () Bool)

(declare-fun res!2888747 () Bool)

(declare-fun e!4252261 () Bool)

(assert (=> b!7072925 (=> res!2888747 e!4252261)))

(declare-fun lt!2546795 () Bool)

(assert (=> b!7072925 (= res!2888747 (not lt!2546795))))

(declare-fun b!7072926 () Bool)

(declare-fun e!4252258 () Bool)

(assert (=> b!7072926 (= e!4252255 e!4252258)))

(declare-fun res!2888729 () Bool)

(assert (=> b!7072926 (=> res!2888729 e!4252258)))

(assert (=> b!7072926 (= res!2888729 (matchZipper!3189 lt!2546786 (t!382256 s!7408)))))

(declare-fun lt!2546814 () Unit!162008)

(assert (=> b!7072926 (= lt!2546814 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072927 () Bool)

(declare-fun res!2888725 () Bool)

(assert (=> b!7072927 (=> res!2888725 e!4252263)))

(get-info :version)

(assert (=> b!7072927 (= res!2888725 (not ((_ is Cons!68350) (exprs!7145 lt!2546781))))))

(declare-fun b!7072928 () Bool)

(declare-fun res!2888736 () Bool)

(assert (=> b!7072928 (=> res!2888736 e!4252262)))

(declare-fun lt!2546801 () (InoxSet Context!13290))

(assert (=> b!7072928 (= res!2888736 (not (matchZipper!3189 lt!2546801 (_2!37439 lt!2546793))))))

(declare-fun e!4252259 () Bool)

(declare-fun e!4252244 () Bool)

(assert (=> b!7072929 (= e!4252259 (not e!4252244))))

(declare-fun res!2888743 () Bool)

(assert (=> b!7072929 (=> res!2888743 e!4252244)))

(declare-fun lt!2546788 () (InoxSet Context!13290))

(assert (=> b!7072929 (= res!2888743 (not (matchZipper!3189 lt!2546788 s!7408)))))

(declare-fun lt!2546799 () Context!13290)

(assert (=> b!7072929 (= lt!2546788 (store ((as const (Array Context!13290 Bool)) false) lt!2546799 true))))

(declare-fun lt!2546796 () (InoxSet Context!13290))

(declare-fun getWitness!1754 ((InoxSet Context!13290) Int) Context!13290)

(assert (=> b!7072929 (= lt!2546799 (getWitness!1754 lt!2546796 lambda!425861))))

(declare-datatypes ((List!68475 0))(
  ( (Nil!68351) (Cons!68351 (h!74799 Context!13290) (t!382258 List!68475)) )
))
(declare-fun lt!2546787 () List!68475)

(declare-fun exists!3698 (List!68475 Int) Bool)

(assert (=> b!7072929 (exists!3698 lt!2546787 lambda!425861)))

(declare-fun lt!2546810 () Unit!162008)

(declare-fun lemmaZipperMatchesExistsMatchingContext!570 (List!68475 List!68473) Unit!162008)

(assert (=> b!7072929 (= lt!2546810 (lemmaZipperMatchesExistsMatchingContext!570 lt!2546787 s!7408))))

(declare-fun toList!10990 ((InoxSet Context!13290)) List!68475)

(assert (=> b!7072929 (= lt!2546787 (toList!10990 lt!2546796))))

(declare-fun tp!1942410 () Bool)

(declare-fun setNonEmpty!50279 () Bool)

(declare-fun e!4252253 () Bool)

(declare-fun setRes!50279 () Bool)

(declare-fun setElem!50279 () Context!13290)

(declare-fun inv!86981 (Context!13290) Bool)

(assert (=> setNonEmpty!50279 (= setRes!50279 (and tp!1942410 (inv!86981 setElem!50279) e!4252253))))

(declare-fun z1!570 () (InoxSet Context!13290))

(declare-fun setRest!50279 () (InoxSet Context!13290))

(assert (=> setNonEmpty!50279 (= z1!570 ((_ map or) (store ((as const (Array Context!13290 Bool)) false) setElem!50279 true) setRest!50279))))

(declare-fun b!7072930 () Bool)

(declare-fun e!4252257 () Bool)

(declare-fun e!4252250 () Bool)

(assert (=> b!7072930 (= e!4252257 e!4252250)))

(declare-fun res!2888737 () Bool)

(assert (=> b!7072930 (=> res!2888737 e!4252250)))

(declare-fun lt!2546776 () (InoxSet Context!13290))

(assert (=> b!7072930 (= res!2888737 (not (= lt!2546776 lt!2546788)))))

(declare-fun lt!2546770 () Context!13290)

(assert (=> b!7072930 (= lt!2546776 (store ((as const (Array Context!13290 Bool)) false) lt!2546770 true))))

(declare-fun lt!2546813 () Unit!162008)

(assert (=> b!7072930 (= lt!2546813 (lemmaConcatPreservesForall!960 (exprs!7145 lt!2546781) (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072931 () Bool)

(declare-fun e!4252260 () Bool)

(assert (=> b!7072931 (= e!4252260 e!4252261)))

(declare-fun res!2888735 () Bool)

(assert (=> b!7072931 (=> res!2888735 e!4252261)))

(declare-fun e!4252246 () Bool)

(assert (=> b!7072931 (= res!2888735 e!4252246)))

(declare-fun res!2888744 () Bool)

(assert (=> b!7072931 (=> (not res!2888744) (not e!4252246))))

(assert (=> b!7072931 (= res!2888744 (not lt!2546795))))

(declare-fun lt!2546808 () (InoxSet Context!13290))

(assert (=> b!7072931 (= lt!2546795 (matchZipper!3189 lt!2546808 lt!2546775))))

(assert (=> b!7072931 (= lt!2546775 (Cons!68349 (h!74797 s!7408) (_1!37439 lt!2546793)))))

(declare-fun lt!2546809 () (InoxSet Context!13290))

(assert (=> b!7072931 (matchZipper!3189 lt!2546809 (_1!37439 lt!2546793))))

(declare-fun lt!2546803 () (InoxSet Context!13290))

(declare-fun lt!2546818 () (InoxSet Context!13290))

(declare-fun lt!2546768 () Unit!162008)

(assert (=> b!7072931 (= lt!2546768 (lemmaZipperConcatMatchesSameAsBothZippers!1662 lt!2546803 lt!2546818 (_1!37439 lt!2546793)))))

(declare-fun b!7072932 () Bool)

(declare-fun e!4252251 () Bool)

(assert (=> b!7072932 (= e!4252263 e!4252251)))

(declare-fun res!2888741 () Bool)

(assert (=> b!7072932 (=> res!2888741 e!4252251)))

(declare-fun nullable!7332 (Regex!17649) Bool)

(assert (=> b!7072932 (= res!2888741 (not (nullable!7332 (h!74798 (exprs!7145 lt!2546781)))))))

(declare-fun lt!2546791 () Context!13290)

(assert (=> b!7072932 (= lt!2546791 (Context!13291 lt!2546812))))

(declare-fun tail!13835 (List!68474) List!68474)

(assert (=> b!7072932 (= lt!2546812 (tail!13835 (exprs!7145 lt!2546781)))))

(declare-fun b!7072933 () Bool)

(assert (=> b!7072933 (= e!4252251 e!4252252)))

(declare-fun res!2888742 () Bool)

(assert (=> b!7072933 (=> res!2888742 e!4252252)))

(assert (=> b!7072933 (= res!2888742 (not (= lt!2546769 lt!2546816)))))

(assert (=> b!7072933 (= lt!2546816 ((_ map or) lt!2546771 lt!2546786))))

(declare-fun lt!2546774 () Context!13290)

(declare-fun derivationStepZipperUp!2233 (Context!13290 C!35568) (InoxSet Context!13290))

(assert (=> b!7072933 (= lt!2546786 (derivationStepZipperUp!2233 lt!2546774 (h!74797 s!7408)))))

(declare-fun derivationStepZipperDown!2283 (Regex!17649 Context!13290 C!35568) (InoxSet Context!13290))

(assert (=> b!7072933 (= lt!2546771 (derivationStepZipperDown!2283 (h!74798 (exprs!7145 lt!2546781)) lt!2546774 (h!74797 s!7408)))))

(declare-fun ++!15782 (List!68474 List!68474) List!68474)

(assert (=> b!7072933 (= lt!2546774 (Context!13291 (++!15782 lt!2546812 (exprs!7145 ct2!306))))))

(declare-fun lt!2546780 () Unit!162008)

(assert (=> b!7072933 (= lt!2546780 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lt!2546777 () Unit!162008)

(assert (=> b!7072933 (= lt!2546777 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072934 () Bool)

(assert (=> b!7072934 (= e!4252246 (not (matchZipper!3189 lt!2546818 (_1!37439 lt!2546793))))))

(declare-fun b!7072935 () Bool)

(declare-fun e!4252249 () Bool)

(declare-fun tp!1942409 () Bool)

(assert (=> b!7072935 (= e!4252249 tp!1942409)))

(assert (=> b!7072936 (= e!4252244 e!4252257)))

(declare-fun res!2888733 () Bool)

(assert (=> b!7072936 (=> res!2888733 e!4252257)))

(assert (=> b!7072936 (= res!2888733 (or (not (= lt!2546770 lt!2546799)) (not (select z1!570 lt!2546781))))))

(assert (=> b!7072936 (= lt!2546770 (Context!13291 (++!15782 (exprs!7145 lt!2546781) (exprs!7145 ct2!306))))))

(declare-fun lt!2546815 () Unit!162008)

(assert (=> b!7072936 (= lt!2546815 (lemmaConcatPreservesForall!960 (exprs!7145 lt!2546781) (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lambda!425862 () Int)

(declare-fun mapPost2!478 ((InoxSet Context!13290) Int Context!13290) Context!13290)

(assert (=> b!7072936 (= lt!2546781 (mapPost2!478 z1!570 lambda!425862 lt!2546799))))

(declare-fun b!7072937 () Bool)

(declare-fun e!4252248 () Bool)

(assert (=> b!7072937 (= e!4252262 e!4252248)))

(declare-fun res!2888728 () Bool)

(assert (=> b!7072937 (=> res!2888728 e!4252248)))

(declare-fun lt!2546773 () (InoxSet Context!13290))

(declare-fun lt!2546806 () (InoxSet Context!13290))

(assert (=> b!7072937 (= res!2888728 (not (= lt!2546773 lt!2546806)))))

(declare-fun lambda!425864 () Int)

(declare-fun flatMap!2575 ((InoxSet Context!13290) Int) (InoxSet Context!13290))

(assert (=> b!7072937 (= (flatMap!2575 lt!2546808 lambda!425864) (derivationStepZipperUp!2233 lt!2546781 (h!74797 s!7408)))))

(declare-fun lt!2546785 () Unit!162008)

(declare-fun lemmaFlatMapOnSingletonSet!2084 ((InoxSet Context!13290) Context!13290 Int) Unit!162008)

(assert (=> b!7072937 (= lt!2546785 (lemmaFlatMapOnSingletonSet!2084 lt!2546808 lt!2546781 lambda!425864))))

(assert (=> b!7072937 (= lt!2546806 (derivationStepZipperUp!2233 lt!2546781 (h!74797 s!7408)))))

(declare-fun derivationStepZipper!3099 ((InoxSet Context!13290) C!35568) (InoxSet Context!13290))

(assert (=> b!7072937 (= lt!2546773 (derivationStepZipper!3099 lt!2546808 (h!74797 s!7408)))))

(assert (=> b!7072937 (= lt!2546808 (store ((as const (Array Context!13290 Bool)) false) lt!2546781 true))))

(declare-fun b!7072938 () Bool)

(declare-fun e!4252256 () Bool)

(assert (=> b!7072938 (= e!4252256 e!4252262)))

(declare-fun res!2888723 () Bool)

(assert (=> b!7072938 (=> res!2888723 e!4252262)))

(assert (=> b!7072938 (= res!2888723 (not (matchZipper!3189 lt!2546803 (_1!37439 lt!2546793))))))

(declare-datatypes ((Option!16968 0))(
  ( (None!16967) (Some!16967 (v!53261 tuple2!68272)) )
))
(declare-fun lt!2546811 () Option!16968)

(declare-fun get!23943 (Option!16968) tuple2!68272)

(assert (=> b!7072938 (= lt!2546793 (get!23943 lt!2546811))))

(declare-fun isDefined!13669 (Option!16968) Bool)

(assert (=> b!7072938 (isDefined!13669 lt!2546811)))

(declare-fun findConcatSeparationZippers!484 ((InoxSet Context!13290) (InoxSet Context!13290) List!68473 List!68473 List!68473) Option!16968)

(assert (=> b!7072938 (= lt!2546811 (findConcatSeparationZippers!484 lt!2546803 lt!2546801 Nil!68349 (t!382256 s!7408) (t!382256 s!7408)))))

(assert (=> b!7072938 (= lt!2546801 (store ((as const (Array Context!13290 Bool)) false) ct2!306 true))))

(declare-fun lt!2546794 () Unit!162008)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!472 ((InoxSet Context!13290) Context!13290 List!68473) Unit!162008)

(assert (=> b!7072938 (= lt!2546794 (lemmaConcatZipperMatchesStringThenFindConcatDefined!472 lt!2546803 ct2!306 (t!382256 s!7408)))))

(declare-fun lt!2546767 () Unit!162008)

(assert (=> b!7072938 (= lt!2546767 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun appendTo!770 ((InoxSet Context!13290) Context!13290) (InoxSet Context!13290))

(assert (=> b!7072938 (= lt!2546771 (appendTo!770 lt!2546803 ct2!306))))

(assert (=> b!7072938 (= lt!2546803 (derivationStepZipperDown!2283 (h!74798 (exprs!7145 lt!2546781)) lt!2546791 (h!74797 s!7408)))))

(declare-fun lt!2546805 () Unit!162008)

(assert (=> b!7072938 (= lt!2546805 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lt!2546784 () Unit!162008)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!120 (Context!13290 Regex!17649 C!35568 Context!13290) Unit!162008)

(assert (=> b!7072938 (= lt!2546784 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!120 lt!2546791 (h!74798 (exprs!7145 lt!2546781)) (h!74797 s!7408) ct2!306))))

(declare-fun b!7072939 () Bool)

(assert (=> b!7072939 (= e!4252247 (not (matchZipper!3189 lt!2546786 (t!382256 s!7408))))))

(declare-fun lt!2546804 () Unit!162008)

(assert (=> b!7072939 (= lt!2546804 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072940 () Bool)

(assert (=> b!7072940 (= e!4252245 (matchZipper!3189 lt!2546786 (t!382256 s!7408)))))

(declare-fun res!2888746 () Bool)

(assert (=> start!687172 (=> (not res!2888746) (not e!4252259))))

(assert (=> start!687172 (= res!2888746 (matchZipper!3189 lt!2546796 s!7408))))

(assert (=> start!687172 (= lt!2546796 (appendTo!770 z1!570 ct2!306))))

(assert (=> start!687172 e!4252259))

(declare-fun condSetEmpty!50279 () Bool)

(assert (=> start!687172 (= condSetEmpty!50279 (= z1!570 ((as const (Array Context!13290 Bool)) false)))))

(assert (=> start!687172 setRes!50279))

(assert (=> start!687172 (and (inv!86981 ct2!306) e!4252249)))

(assert (=> start!687172 e!4252254))

(assert (=> b!7072941 (= e!4252250 e!4252263)))

(declare-fun res!2888724 () Bool)

(assert (=> b!7072941 (=> res!2888724 e!4252263)))

(assert (=> b!7072941 (= res!2888724 (not (= (derivationStepZipper!3099 lt!2546776 (h!74797 s!7408)) lt!2546769)))))

(assert (=> b!7072941 (= (flatMap!2575 lt!2546776 lambda!425864) (derivationStepZipperUp!2233 lt!2546770 (h!74797 s!7408)))))

(declare-fun lt!2546802 () Unit!162008)

(assert (=> b!7072941 (= lt!2546802 (lemmaFlatMapOnSingletonSet!2084 lt!2546776 lt!2546770 lambda!425864))))

(assert (=> b!7072941 (= lt!2546769 (derivationStepZipperUp!2233 lt!2546770 (h!74797 s!7408)))))

(declare-fun lt!2546779 () Unit!162008)

(assert (=> b!7072941 (= lt!2546779 (lemmaConcatPreservesForall!960 (exprs!7145 lt!2546781) (exprs!7145 ct2!306) lambda!425863))))

(declare-fun b!7072942 () Bool)

(assert (=> b!7072942 (= e!4252258 e!4252256)))

(declare-fun res!2888727 () Bool)

(assert (=> b!7072942 (=> res!2888727 e!4252256)))

(assert (=> b!7072942 (= res!2888727 (not lt!2546778))))

(declare-fun lt!2546782 () Unit!162008)

(assert (=> b!7072942 (= lt!2546782 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(declare-fun lt!2546797 () Unit!162008)

(assert (=> b!7072942 (= lt!2546797 (lemmaConcatPreservesForall!960 lt!2546812 (exprs!7145 ct2!306) lambda!425863))))

(assert (=> b!7072943 (= e!4252261 true)))

(declare-fun lt!2546817 () Bool)

(assert (=> b!7072943 (= lt!2546817 (matchZipper!3189 z1!570 lt!2546775))))

(declare-fun lt!2546807 () List!68475)

(declare-fun content!13799 (List!68475) (InoxSet Context!13290))

(assert (=> b!7072943 (matchZipper!3189 (content!13799 lt!2546807) lt!2546775)))

(declare-fun lt!2546800 () Unit!162008)

(declare-fun lemmaExistsMatchingContextThenMatchingString!52 (List!68475 List!68473) Unit!162008)

(assert (=> b!7072943 (= lt!2546800 (lemmaExistsMatchingContextThenMatchingString!52 lt!2546807 lt!2546775))))

(assert (=> b!7072943 (= lt!2546807 (toList!10990 z1!570))))

(declare-fun exists!3699 ((InoxSet Context!13290) Int) Bool)

(assert (=> b!7072943 (exists!3699 z1!570 lambda!425865)))

(declare-fun lt!2546798 () Unit!162008)

(declare-fun lemmaContainsThenExists!157 ((InoxSet Context!13290) Context!13290 Int) Unit!162008)

(assert (=> b!7072943 (= lt!2546798 (lemmaContainsThenExists!157 z1!570 lt!2546781 lambda!425865))))

(assert (=> b!7072943 (isDefined!13669 (findConcatSeparationZippers!484 lt!2546808 lt!2546801 Nil!68349 s!7408 s!7408))))

(declare-fun lt!2546783 () Unit!162008)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!76 ((InoxSet Context!13290) (InoxSet Context!13290) List!68473 List!68473 List!68473 List!68473 List!68473) Unit!162008)

(assert (=> b!7072943 (= lt!2546783 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!76 lt!2546808 lt!2546801 lt!2546775 (_2!37439 lt!2546793) s!7408 Nil!68349 s!7408))))

(declare-fun b!7072944 () Bool)

(declare-fun res!2888732 () Bool)

(assert (=> b!7072944 (=> res!2888732 e!4252244)))

(assert (=> b!7072944 (= res!2888732 (not (select lt!2546796 lt!2546799)))))

(declare-fun b!7072945 () Bool)

(declare-fun res!2888740 () Bool)

(assert (=> b!7072945 (=> (not res!2888740) (not e!4252259))))

(assert (=> b!7072945 (= res!2888740 ((_ is Cons!68349) s!7408))))

(declare-fun b!7072946 () Bool)

(declare-fun res!2888731 () Bool)

(assert (=> b!7072946 (=> res!2888731 e!4252255)))

(assert (=> b!7072946 (= res!2888731 (not lt!2546772))))

(declare-fun setIsEmpty!50279 () Bool)

(assert (=> setIsEmpty!50279 setRes!50279))

(declare-fun b!7072947 () Bool)

(assert (=> b!7072947 (= e!4252248 e!4252260)))

(declare-fun res!2888734 () Bool)

(assert (=> b!7072947 (=> res!2888734 e!4252260)))

(assert (=> b!7072947 (= res!2888734 (not (= lt!2546773 lt!2546809)))))

(assert (=> b!7072947 (= lt!2546809 ((_ map or) lt!2546803 lt!2546818))))

(assert (=> b!7072947 (= lt!2546818 (derivationStepZipperUp!2233 lt!2546791 (h!74797 s!7408)))))

(declare-fun b!7072948 () Bool)

(declare-fun tp!1942407 () Bool)

(assert (=> b!7072948 (= e!4252253 tp!1942407)))

(assert (= (and start!687172 res!2888746) b!7072945))

(assert (= (and b!7072945 res!2888740) b!7072929))

(assert (= (and b!7072929 (not res!2888743)) b!7072944))

(assert (= (and b!7072944 (not res!2888732)) b!7072936))

(assert (= (and b!7072936 (not res!2888733)) b!7072930))

(assert (= (and b!7072930 (not res!2888737)) b!7072941))

(assert (= (and b!7072941 (not res!2888724)) b!7072927))

(assert (= (and b!7072927 (not res!2888725)) b!7072924))

(assert (= (and b!7072924 (not res!2888730)) b!7072932))

(assert (= (and b!7072932 (not res!2888741)) b!7072933))

(assert (= (and b!7072933 (not res!2888742)) b!7072922))

(assert (= (and b!7072922 (not res!2888745)) b!7072940))

(assert (= (and b!7072922 res!2888726) b!7072939))

(assert (= (and b!7072922 (not res!2888739)) b!7072946))

(assert (= (and b!7072946 (not res!2888731)) b!7072926))

(assert (= (and b!7072926 (not res!2888729)) b!7072942))

(assert (= (and b!7072942 (not res!2888727)) b!7072938))

(assert (= (and b!7072938 (not res!2888723)) b!7072928))

(assert (= (and b!7072928 (not res!2888736)) b!7072923))

(assert (= (and b!7072923 (not res!2888738)) b!7072937))

(assert (= (and b!7072937 (not res!2888728)) b!7072947))

(assert (= (and b!7072947 (not res!2888734)) b!7072931))

(assert (= (and b!7072931 res!2888744) b!7072934))

(assert (= (and b!7072931 (not res!2888735)) b!7072925))

(assert (= (and b!7072925 (not res!2888747)) b!7072943))

(assert (= (and start!687172 condSetEmpty!50279) setIsEmpty!50279))

(assert (= (and start!687172 (not condSetEmpty!50279)) setNonEmpty!50279))

(assert (= setNonEmpty!50279 b!7072948))

(assert (= start!687172 b!7072935))

(assert (= (and start!687172 ((_ is Cons!68349) s!7408)) b!7072921))

(declare-fun m!7799412 () Bool)

(assert (=> b!7072942 m!7799412))

(assert (=> b!7072942 m!7799412))

(declare-fun m!7799414 () Bool)

(assert (=> b!7072931 m!7799414))

(declare-fun m!7799416 () Bool)

(assert (=> b!7072931 m!7799416))

(declare-fun m!7799418 () Bool)

(assert (=> b!7072931 m!7799418))

(declare-fun m!7799420 () Bool)

(assert (=> b!7072936 m!7799420))

(declare-fun m!7799422 () Bool)

(assert (=> b!7072936 m!7799422))

(declare-fun m!7799424 () Bool)

(assert (=> b!7072936 m!7799424))

(declare-fun m!7799426 () Bool)

(assert (=> b!7072936 m!7799426))

(declare-fun m!7799428 () Bool)

(assert (=> b!7072930 m!7799428))

(assert (=> b!7072930 m!7799424))

(assert (=> b!7072933 m!7799412))

(declare-fun m!7799430 () Bool)

(assert (=> b!7072933 m!7799430))

(declare-fun m!7799432 () Bool)

(assert (=> b!7072933 m!7799432))

(declare-fun m!7799434 () Bool)

(assert (=> b!7072933 m!7799434))

(assert (=> b!7072933 m!7799412))

(declare-fun m!7799436 () Bool)

(assert (=> b!7072928 m!7799436))

(declare-fun m!7799438 () Bool)

(assert (=> b!7072929 m!7799438))

(declare-fun m!7799440 () Bool)

(assert (=> b!7072929 m!7799440))

(declare-fun m!7799442 () Bool)

(assert (=> b!7072929 m!7799442))

(declare-fun m!7799444 () Bool)

(assert (=> b!7072929 m!7799444))

(declare-fun m!7799446 () Bool)

(assert (=> b!7072929 m!7799446))

(declare-fun m!7799448 () Bool)

(assert (=> b!7072929 m!7799448))

(declare-fun m!7799450 () Bool)

(assert (=> b!7072947 m!7799450))

(declare-fun m!7799452 () Bool)

(assert (=> setNonEmpty!50279 m!7799452))

(declare-fun m!7799454 () Bool)

(assert (=> b!7072938 m!7799454))

(declare-fun m!7799456 () Bool)

(assert (=> b!7072938 m!7799456))

(declare-fun m!7799458 () Bool)

(assert (=> b!7072938 m!7799458))

(assert (=> b!7072938 m!7799412))

(declare-fun m!7799460 () Bool)

(assert (=> b!7072938 m!7799460))

(assert (=> b!7072938 m!7799412))

(declare-fun m!7799462 () Bool)

(assert (=> b!7072938 m!7799462))

(declare-fun m!7799464 () Bool)

(assert (=> b!7072938 m!7799464))

(declare-fun m!7799466 () Bool)

(assert (=> b!7072938 m!7799466))

(declare-fun m!7799468 () Bool)

(assert (=> b!7072938 m!7799468))

(declare-fun m!7799470 () Bool)

(assert (=> b!7072938 m!7799470))

(declare-fun m!7799472 () Bool)

(assert (=> b!7072940 m!7799472))

(assert (=> b!7072939 m!7799472))

(assert (=> b!7072939 m!7799412))

(declare-fun m!7799474 () Bool)

(assert (=> b!7072924 m!7799474))

(assert (=> b!7072941 m!7799424))

(declare-fun m!7799476 () Bool)

(assert (=> b!7072941 m!7799476))

(declare-fun m!7799478 () Bool)

(assert (=> b!7072941 m!7799478))

(declare-fun m!7799480 () Bool)

(assert (=> b!7072941 m!7799480))

(declare-fun m!7799482 () Bool)

(assert (=> b!7072941 m!7799482))

(declare-fun m!7799484 () Bool)

(assert (=> b!7072923 m!7799484))

(declare-fun m!7799486 () Bool)

(assert (=> b!7072922 m!7799486))

(assert (=> b!7072922 m!7799412))

(assert (=> b!7072922 m!7799412))

(declare-fun m!7799488 () Bool)

(assert (=> b!7072922 m!7799488))

(declare-fun m!7799490 () Bool)

(assert (=> b!7072922 m!7799490))

(assert (=> b!7072922 m!7799412))

(declare-fun m!7799492 () Bool)

(assert (=> b!7072922 m!7799492))

(declare-fun m!7799494 () Bool)

(assert (=> b!7072943 m!7799494))

(declare-fun m!7799496 () Bool)

(assert (=> b!7072943 m!7799496))

(declare-fun m!7799498 () Bool)

(assert (=> b!7072943 m!7799498))

(declare-fun m!7799500 () Bool)

(assert (=> b!7072943 m!7799500))

(declare-fun m!7799502 () Bool)

(assert (=> b!7072943 m!7799502))

(declare-fun m!7799504 () Bool)

(assert (=> b!7072943 m!7799504))

(declare-fun m!7799506 () Bool)

(assert (=> b!7072943 m!7799506))

(assert (=> b!7072943 m!7799504))

(declare-fun m!7799508 () Bool)

(assert (=> b!7072943 m!7799508))

(declare-fun m!7799510 () Bool)

(assert (=> b!7072943 m!7799510))

(assert (=> b!7072943 m!7799500))

(declare-fun m!7799512 () Bool)

(assert (=> b!7072943 m!7799512))

(declare-fun m!7799514 () Bool)

(assert (=> b!7072944 m!7799514))

(declare-fun m!7799516 () Bool)

(assert (=> b!7072934 m!7799516))

(declare-fun m!7799518 () Bool)

(assert (=> b!7072932 m!7799518))

(declare-fun m!7799520 () Bool)

(assert (=> b!7072932 m!7799520))

(assert (=> b!7072926 m!7799472))

(assert (=> b!7072926 m!7799412))

(declare-fun m!7799522 () Bool)

(assert (=> start!687172 m!7799522))

(declare-fun m!7799524 () Bool)

(assert (=> start!687172 m!7799524))

(declare-fun m!7799526 () Bool)

(assert (=> start!687172 m!7799526))

(declare-fun m!7799528 () Bool)

(assert (=> b!7072937 m!7799528))

(declare-fun m!7799530 () Bool)

(assert (=> b!7072937 m!7799530))

(declare-fun m!7799532 () Bool)

(assert (=> b!7072937 m!7799532))

(declare-fun m!7799534 () Bool)

(assert (=> b!7072937 m!7799534))

(declare-fun m!7799536 () Bool)

(assert (=> b!7072937 m!7799536))

(check-sat (not b!7072924) (not b!7072931) (not b!7072921) (not b!7072934) (not b!7072943) (not b!7072933) (not b!7072940) (not b!7072932) (not b!7072938) (not b!7072948) (not start!687172) (not b!7072928) (not b!7072939) (not b!7072922) tp_is_empty!44523 (not b!7072935) (not b!7072941) (not b!7072936) (not setNonEmpty!50279) (not b!7072930) (not b!7072926) (not b!7072923) (not b!7072937) (not b!7072947) (not b!7072942) (not b!7072929))
(check-sat)
