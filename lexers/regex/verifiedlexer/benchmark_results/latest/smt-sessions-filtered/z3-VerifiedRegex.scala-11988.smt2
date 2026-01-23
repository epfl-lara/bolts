; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!671770 () Bool)

(assert start!671770)

(declare-fun b!6990115 () Bool)

(assert (=> b!6990115 true))

(declare-fun b!6990110 () Bool)

(assert (=> b!6990110 true))

(declare-fun b!6990107 () Bool)

(assert (=> b!6990107 true))

(declare-fun b!6990105 () Bool)

(declare-fun e!4201426 () Bool)

(declare-fun e!4201429 () Bool)

(assert (=> b!6990105 (= e!4201426 e!4201429)))

(declare-fun res!2850720 () Bool)

(assert (=> b!6990105 (=> res!2850720 e!4201429)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34716 0))(
  ( (C!34717 (val!27060 Int)) )
))
(declare-datatypes ((Regex!17223 0))(
  ( (ElementMatch!17223 (c!1296498 C!34716)) (Concat!26068 (regOne!34958 Regex!17223) (regTwo!34958 Regex!17223)) (EmptyExpr!17223) (Star!17223 (reg!17552 Regex!17223)) (EmptyLang!17223) (Union!17223 (regOne!34959 Regex!17223) (regTwo!34959 Regex!17223)) )
))
(declare-datatypes ((List!67214 0))(
  ( (Nil!67090) (Cons!67090 (h!73538 Regex!17223) (t!380961 List!67214)) )
))
(declare-datatypes ((Context!12438 0))(
  ( (Context!12439 (exprs!6719 List!67214)) )
))
(declare-fun lt!2487257 () (InoxSet Context!12438))

(declare-fun lt!2487252 () (InoxSet Context!12438))

(assert (=> b!6990105 (= res!2850720 (not (= lt!2487257 lt!2487252)))))

(declare-fun lt!2487266 () (InoxSet Context!12438))

(declare-fun lt!2487236 () (InoxSet Context!12438))

(assert (=> b!6990105 (= lt!2487252 ((_ map or) lt!2487266 lt!2487236))))

(declare-fun lt!2487246 () Context!12438)

(declare-datatypes ((List!67215 0))(
  ( (Nil!67091) (Cons!67091 (h!73539 C!34716) (t!380962 List!67215)) )
))
(declare-fun s!7408 () List!67215)

(declare-fun derivationStepZipperUp!1873 (Context!12438 C!34716) (InoxSet Context!12438))

(assert (=> b!6990105 (= lt!2487236 (derivationStepZipperUp!1873 lt!2487246 (h!73539 s!7408)))))

(declare-fun lt!2487256 () Context!12438)

(declare-fun derivationStepZipperDown!1941 (Regex!17223 Context!12438 C!34716) (InoxSet Context!12438))

(assert (=> b!6990105 (= lt!2487266 (derivationStepZipperDown!1941 (h!73538 (exprs!6719 lt!2487256)) lt!2487246 (h!73539 s!7408)))))

(declare-fun lt!2487264 () List!67214)

(declare-fun ct2!306 () Context!12438)

(declare-fun ++!15168 (List!67214 List!67214) List!67214)

(assert (=> b!6990105 (= lt!2487246 (Context!12439 (++!15168 lt!2487264 (exprs!6719 ct2!306))))))

(declare-fun lambda!401799 () Int)

(declare-datatypes ((Unit!161101 0))(
  ( (Unit!161102) )
))
(declare-fun lt!2487248 () Unit!161101)

(declare-fun lemmaConcatPreservesForall!559 (List!67214 List!67214 Int) Unit!161101)

(assert (=> b!6990105 (= lt!2487248 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun lt!2487240 () Unit!161101)

(assert (=> b!6990105 (= lt!2487240 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun b!6990106 () Bool)

(declare-fun res!2850719 () Bool)

(declare-fun e!4201428 () Bool)

(assert (=> b!6990106 (=> res!2850719 e!4201428)))

(declare-fun lt!2487269 () Context!12438)

(declare-fun lt!2487255 () (InoxSet Context!12438))

(assert (=> b!6990106 (= res!2850719 (not (select lt!2487255 lt!2487269)))))

(declare-fun e!4201436 () Bool)

(declare-fun e!4201434 () Bool)

(assert (=> b!6990107 (= e!4201436 e!4201434)))

(declare-fun res!2850718 () Bool)

(assert (=> b!6990107 (=> res!2850718 e!4201434)))

(declare-fun lt!2487245 () (InoxSet Context!12438))

(declare-fun derivationStepZipper!2703 ((InoxSet Context!12438) C!34716) (InoxSet Context!12438))

(assert (=> b!6990107 (= res!2850718 (not (= (derivationStepZipper!2703 lt!2487245 (h!73539 s!7408)) lt!2487257)))))

(declare-fun lambda!401800 () Int)

(declare-fun lt!2487265 () Context!12438)

(declare-fun flatMap!2209 ((InoxSet Context!12438) Int) (InoxSet Context!12438))

(assert (=> b!6990107 (= (flatMap!2209 lt!2487245 lambda!401800) (derivationStepZipperUp!1873 lt!2487265 (h!73539 s!7408)))))

(declare-fun lt!2487234 () Unit!161101)

(declare-fun lemmaFlatMapOnSingletonSet!1724 ((InoxSet Context!12438) Context!12438 Int) Unit!161101)

(assert (=> b!6990107 (= lt!2487234 (lemmaFlatMapOnSingletonSet!1724 lt!2487245 lt!2487265 lambda!401800))))

(assert (=> b!6990107 (= lt!2487257 (derivationStepZipperUp!1873 lt!2487265 (h!73539 s!7408)))))

(declare-fun lt!2487238 () Unit!161101)

(assert (=> b!6990107 (= lt!2487238 (lemmaConcatPreservesForall!559 (exprs!6719 lt!2487256) (exprs!6719 ct2!306) lambda!401799))))

(declare-fun b!6990108 () Bool)

(declare-fun res!2850723 () Bool)

(assert (=> b!6990108 (=> res!2850723 e!4201434)))

(get-info :version)

(assert (=> b!6990108 (= res!2850723 (not ((_ is Cons!67090) (exprs!6719 lt!2487256))))))

(declare-fun b!6990109 () Bool)

(declare-fun e!4201433 () Bool)

(assert (=> b!6990109 (= e!4201433 e!4201436)))

(declare-fun res!2850729 () Bool)

(assert (=> b!6990109 (=> res!2850729 e!4201436)))

(declare-fun lt!2487262 () (InoxSet Context!12438))

(assert (=> b!6990109 (= res!2850729 (not (= lt!2487245 lt!2487262)))))

(assert (=> b!6990109 (= lt!2487245 (store ((as const (Array Context!12438 Bool)) false) lt!2487265 true))))

(declare-fun lt!2487263 () Unit!161101)

(assert (=> b!6990109 (= lt!2487263 (lemmaConcatPreservesForall!559 (exprs!6719 lt!2487256) (exprs!6719 ct2!306) lambda!401799))))

(assert (=> b!6990110 (= e!4201428 e!4201433)))

(declare-fun res!2850716 () Bool)

(assert (=> b!6990110 (=> res!2850716 e!4201433)))

(declare-fun z1!570 () (InoxSet Context!12438))

(assert (=> b!6990110 (= res!2850716 (or (not (= lt!2487265 lt!2487269)) (not (select z1!570 lt!2487256))))))

(assert (=> b!6990110 (= lt!2487265 (Context!12439 (++!15168 (exprs!6719 lt!2487256) (exprs!6719 ct2!306))))))

(declare-fun lt!2487243 () Unit!161101)

(assert (=> b!6990110 (= lt!2487243 (lemmaConcatPreservesForall!559 (exprs!6719 lt!2487256) (exprs!6719 ct2!306) lambda!401799))))

(declare-fun lambda!401798 () Int)

(declare-fun mapPost2!78 ((InoxSet Context!12438) Int Context!12438) Context!12438)

(assert (=> b!6990110 (= lt!2487256 (mapPost2!78 z1!570 lambda!401798 lt!2487269))))

(declare-fun res!2850727 () Bool)

(declare-fun e!4201424 () Bool)

(assert (=> start!671770 (=> (not res!2850727) (not e!4201424))))

(declare-fun matchZipper!2763 ((InoxSet Context!12438) List!67215) Bool)

(assert (=> start!671770 (= res!2850727 (matchZipper!2763 lt!2487255 s!7408))))

(declare-fun appendTo!344 ((InoxSet Context!12438) Context!12438) (InoxSet Context!12438))

(assert (=> start!671770 (= lt!2487255 (appendTo!344 z1!570 ct2!306))))

(assert (=> start!671770 e!4201424))

(declare-fun condSetEmpty!47829 () Bool)

(assert (=> start!671770 (= condSetEmpty!47829 (= z1!570 ((as const (Array Context!12438 Bool)) false)))))

(declare-fun setRes!47829 () Bool)

(assert (=> start!671770 setRes!47829))

(declare-fun e!4201425 () Bool)

(declare-fun inv!85916 (Context!12438) Bool)

(assert (=> start!671770 (and (inv!85916 ct2!306) e!4201425)))

(declare-fun e!4201437 () Bool)

(assert (=> start!671770 e!4201437))

(declare-fun b!6990111 () Bool)

(declare-fun tp_is_empty!43671 () Bool)

(declare-fun tp!1929791 () Bool)

(assert (=> b!6990111 (= e!4201437 (and tp_is_empty!43671 tp!1929791))))

(declare-fun b!6990112 () Bool)

(declare-fun e!4201435 () Bool)

(declare-fun e!4201431 () Bool)

(assert (=> b!6990112 (= e!4201435 e!4201431)))

(declare-fun res!2850725 () Bool)

(assert (=> b!6990112 (=> res!2850725 e!4201431)))

(assert (=> b!6990112 (= res!2850725 (not (matchZipper!2763 lt!2487236 (t!380962 s!7408))))))

(declare-fun lt!2487254 () Unit!161101)

(assert (=> b!6990112 (= lt!2487254 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun b!6990113 () Bool)

(declare-fun e!4201432 () Bool)

(assert (=> b!6990113 (= e!4201432 true)))

(declare-fun lt!2487249 () Bool)

(declare-fun lt!2487237 () (InoxSet Context!12438))

(assert (=> b!6990113 (= lt!2487249 (matchZipper!2763 lt!2487237 s!7408))))

(declare-fun lt!2487267 () Unit!161101)

(assert (=> b!6990113 (= lt!2487267 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun setElem!47829 () Context!12438)

(declare-fun setNonEmpty!47829 () Bool)

(declare-fun e!4201427 () Bool)

(declare-fun tp!1929794 () Bool)

(assert (=> setNonEmpty!47829 (= setRes!47829 (and tp!1929794 (inv!85916 setElem!47829) e!4201427))))

(declare-fun setRest!47829 () (InoxSet Context!12438))

(assert (=> setNonEmpty!47829 (= z1!570 ((_ map or) (store ((as const (Array Context!12438 Bool)) false) setElem!47829 true) setRest!47829))))

(declare-fun b!6990114 () Bool)

(assert (=> b!6990114 (= e!4201431 e!4201432)))

(declare-fun res!2850724 () Bool)

(assert (=> b!6990114 (=> res!2850724 e!4201432)))

(assert (=> b!6990114 (= res!2850724 (not (= (derivationStepZipper!2703 lt!2487237 (h!73539 s!7408)) lt!2487236)))))

(declare-fun lt!2487241 () Unit!161101)

(assert (=> b!6990114 (= lt!2487241 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun lt!2487239 () Unit!161101)

(assert (=> b!6990114 (= lt!2487239 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(assert (=> b!6990114 (= (flatMap!2209 lt!2487237 lambda!401800) (derivationStepZipperUp!1873 lt!2487246 (h!73539 s!7408)))))

(declare-fun lt!2487268 () Unit!161101)

(assert (=> b!6990114 (= lt!2487268 (lemmaFlatMapOnSingletonSet!1724 lt!2487237 lt!2487246 lambda!401800))))

(assert (=> b!6990114 (= lt!2487237 (store ((as const (Array Context!12438 Bool)) false) lt!2487246 true))))

(declare-fun lt!2487260 () Unit!161101)

(assert (=> b!6990114 (= lt!2487260 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun lt!2487253 () Unit!161101)

(assert (=> b!6990114 (= lt!2487253 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun setIsEmpty!47829 () Bool)

(assert (=> setIsEmpty!47829 setRes!47829))

(assert (=> b!6990115 (= e!4201424 (not e!4201428))))

(declare-fun res!2850730 () Bool)

(assert (=> b!6990115 (=> res!2850730 e!4201428)))

(assert (=> b!6990115 (= res!2850730 (not (matchZipper!2763 lt!2487262 s!7408)))))

(assert (=> b!6990115 (= lt!2487262 (store ((as const (Array Context!12438 Bool)) false) lt!2487269 true))))

(declare-fun lambda!401797 () Int)

(declare-fun getWitness!1123 ((InoxSet Context!12438) Int) Context!12438)

(assert (=> b!6990115 (= lt!2487269 (getWitness!1123 lt!2487255 lambda!401797))))

(declare-datatypes ((List!67216 0))(
  ( (Nil!67092) (Cons!67092 (h!73540 Context!12438) (t!380963 List!67216)) )
))
(declare-fun lt!2487244 () List!67216)

(declare-fun exists!3012 (List!67216 Int) Bool)

(assert (=> b!6990115 (exists!3012 lt!2487244 lambda!401797)))

(declare-fun lt!2487242 () Unit!161101)

(declare-fun lemmaZipperMatchesExistsMatchingContext!192 (List!67216 List!67215) Unit!161101)

(assert (=> b!6990115 (= lt!2487242 (lemmaZipperMatchesExistsMatchingContext!192 lt!2487244 s!7408))))

(declare-fun toList!10583 ((InoxSet Context!12438)) List!67216)

(assert (=> b!6990115 (= lt!2487244 (toList!10583 lt!2487255))))

(declare-fun b!6990116 () Bool)

(declare-fun e!4201430 () Bool)

(assert (=> b!6990116 (= e!4201430 (matchZipper!2763 lt!2487236 (t!380962 s!7408)))))

(declare-fun b!6990117 () Bool)

(assert (=> b!6990117 (= e!4201429 e!4201435)))

(declare-fun res!2850722 () Bool)

(assert (=> b!6990117 (=> res!2850722 e!4201435)))

(declare-fun e!4201438 () Bool)

(assert (=> b!6990117 (= res!2850722 e!4201438)))

(declare-fun res!2850715 () Bool)

(assert (=> b!6990117 (=> (not res!2850715) (not e!4201438))))

(declare-fun lt!2487250 () Bool)

(declare-fun lt!2487235 () Bool)

(assert (=> b!6990117 (= res!2850715 (not (= lt!2487250 lt!2487235)))))

(assert (=> b!6990117 (= lt!2487250 (matchZipper!2763 lt!2487257 (t!380962 s!7408)))))

(declare-fun lt!2487261 () Unit!161101)

(assert (=> b!6990117 (= lt!2487261 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(assert (=> b!6990117 (= (matchZipper!2763 lt!2487252 (t!380962 s!7408)) e!4201430)))

(declare-fun res!2850728 () Bool)

(assert (=> b!6990117 (=> res!2850728 e!4201430)))

(assert (=> b!6990117 (= res!2850728 lt!2487235)))

(assert (=> b!6990117 (= lt!2487235 (matchZipper!2763 lt!2487266 (t!380962 s!7408)))))

(declare-fun lt!2487258 () Unit!161101)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1396 ((InoxSet Context!12438) (InoxSet Context!12438) List!67215) Unit!161101)

(assert (=> b!6990117 (= lt!2487258 (lemmaZipperConcatMatchesSameAsBothZippers!1396 lt!2487266 lt!2487236 (t!380962 s!7408)))))

(declare-fun lt!2487247 () Unit!161101)

(assert (=> b!6990117 (= lt!2487247 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun lt!2487251 () Unit!161101)

(assert (=> b!6990117 (= lt!2487251 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun b!6990118 () Bool)

(declare-fun res!2850717 () Bool)

(assert (=> b!6990118 (=> res!2850717 e!4201435)))

(assert (=> b!6990118 (= res!2850717 (not lt!2487250))))

(declare-fun b!6990119 () Bool)

(declare-fun tp!1929793 () Bool)

(assert (=> b!6990119 (= e!4201425 tp!1929793)))

(declare-fun b!6990120 () Bool)

(declare-fun res!2850726 () Bool)

(assert (=> b!6990120 (=> (not res!2850726) (not e!4201424))))

(assert (=> b!6990120 (= res!2850726 ((_ is Cons!67091) s!7408))))

(declare-fun b!6990121 () Bool)

(declare-fun tp!1929792 () Bool)

(assert (=> b!6990121 (= e!4201427 tp!1929792)))

(declare-fun b!6990122 () Bool)

(declare-fun res!2850721 () Bool)

(assert (=> b!6990122 (=> res!2850721 e!4201434)))

(declare-fun isEmpty!39158 (List!67214) Bool)

(assert (=> b!6990122 (= res!2850721 (isEmpty!39158 (exprs!6719 lt!2487256)))))

(declare-fun b!6990123 () Bool)

(assert (=> b!6990123 (= e!4201438 (not (matchZipper!2763 lt!2487236 (t!380962 s!7408))))))

(declare-fun lt!2487259 () Unit!161101)

(assert (=> b!6990123 (= lt!2487259 (lemmaConcatPreservesForall!559 lt!2487264 (exprs!6719 ct2!306) lambda!401799))))

(declare-fun b!6990124 () Bool)

(assert (=> b!6990124 (= e!4201434 e!4201426)))

(declare-fun res!2850714 () Bool)

(assert (=> b!6990124 (=> res!2850714 e!4201426)))

(declare-fun nullable!6983 (Regex!17223) Bool)

(assert (=> b!6990124 (= res!2850714 (not (nullable!6983 (h!73538 (exprs!6719 lt!2487256)))))))

(declare-fun tail!13234 (List!67214) List!67214)

(assert (=> b!6990124 (= lt!2487264 (tail!13234 (exprs!6719 lt!2487256)))))

(assert (= (and start!671770 res!2850727) b!6990120))

(assert (= (and b!6990120 res!2850726) b!6990115))

(assert (= (and b!6990115 (not res!2850730)) b!6990106))

(assert (= (and b!6990106 (not res!2850719)) b!6990110))

(assert (= (and b!6990110 (not res!2850716)) b!6990109))

(assert (= (and b!6990109 (not res!2850729)) b!6990107))

(assert (= (and b!6990107 (not res!2850718)) b!6990108))

(assert (= (and b!6990108 (not res!2850723)) b!6990122))

(assert (= (and b!6990122 (not res!2850721)) b!6990124))

(assert (= (and b!6990124 (not res!2850714)) b!6990105))

(assert (= (and b!6990105 (not res!2850720)) b!6990117))

(assert (= (and b!6990117 (not res!2850728)) b!6990116))

(assert (= (and b!6990117 res!2850715) b!6990123))

(assert (= (and b!6990117 (not res!2850722)) b!6990118))

(assert (= (and b!6990118 (not res!2850717)) b!6990112))

(assert (= (and b!6990112 (not res!2850725)) b!6990114))

(assert (= (and b!6990114 (not res!2850724)) b!6990113))

(assert (= (and start!671770 condSetEmpty!47829) setIsEmpty!47829))

(assert (= (and start!671770 (not condSetEmpty!47829)) setNonEmpty!47829))

(assert (= setNonEmpty!47829 b!6990121))

(assert (= start!671770 b!6990119))

(assert (= (and start!671770 ((_ is Cons!67091) s!7408)) b!6990111))

(declare-fun m!7678858 () Bool)

(assert (=> setNonEmpty!47829 m!7678858))

(declare-fun m!7678860 () Bool)

(assert (=> b!6990107 m!7678860))

(declare-fun m!7678862 () Bool)

(assert (=> b!6990107 m!7678862))

(declare-fun m!7678864 () Bool)

(assert (=> b!6990107 m!7678864))

(declare-fun m!7678866 () Bool)

(assert (=> b!6990107 m!7678866))

(declare-fun m!7678868 () Bool)

(assert (=> b!6990107 m!7678868))

(declare-fun m!7678870 () Bool)

(assert (=> b!6990106 m!7678870))

(declare-fun m!7678872 () Bool)

(assert (=> b!6990112 m!7678872))

(declare-fun m!7678874 () Bool)

(assert (=> b!6990112 m!7678874))

(declare-fun m!7678876 () Bool)

(assert (=> b!6990109 m!7678876))

(assert (=> b!6990109 m!7678860))

(declare-fun m!7678878 () Bool)

(assert (=> start!671770 m!7678878))

(declare-fun m!7678880 () Bool)

(assert (=> start!671770 m!7678880))

(declare-fun m!7678882 () Bool)

(assert (=> start!671770 m!7678882))

(declare-fun m!7678884 () Bool)

(assert (=> b!6990122 m!7678884))

(assert (=> b!6990114 m!7678874))

(declare-fun m!7678886 () Bool)

(assert (=> b!6990114 m!7678886))

(declare-fun m!7678888 () Bool)

(assert (=> b!6990114 m!7678888))

(assert (=> b!6990114 m!7678874))

(declare-fun m!7678890 () Bool)

(assert (=> b!6990114 m!7678890))

(declare-fun m!7678892 () Bool)

(assert (=> b!6990114 m!7678892))

(assert (=> b!6990114 m!7678874))

(assert (=> b!6990114 m!7678874))

(declare-fun m!7678894 () Bool)

(assert (=> b!6990114 m!7678894))

(assert (=> b!6990116 m!7678872))

(declare-fun m!7678896 () Bool)

(assert (=> b!6990110 m!7678896))

(declare-fun m!7678898 () Bool)

(assert (=> b!6990110 m!7678898))

(assert (=> b!6990110 m!7678860))

(declare-fun m!7678900 () Bool)

(assert (=> b!6990110 m!7678900))

(declare-fun m!7678902 () Bool)

(assert (=> b!6990113 m!7678902))

(assert (=> b!6990113 m!7678874))

(assert (=> b!6990123 m!7678872))

(assert (=> b!6990123 m!7678874))

(declare-fun m!7678904 () Bool)

(assert (=> b!6990124 m!7678904))

(declare-fun m!7678906 () Bool)

(assert (=> b!6990124 m!7678906))

(declare-fun m!7678908 () Bool)

(assert (=> b!6990105 m!7678908))

(assert (=> b!6990105 m!7678874))

(assert (=> b!6990105 m!7678874))

(assert (=> b!6990105 m!7678890))

(declare-fun m!7678910 () Bool)

(assert (=> b!6990105 m!7678910))

(declare-fun m!7678912 () Bool)

(assert (=> b!6990115 m!7678912))

(declare-fun m!7678914 () Bool)

(assert (=> b!6990115 m!7678914))

(declare-fun m!7678916 () Bool)

(assert (=> b!6990115 m!7678916))

(declare-fun m!7678918 () Bool)

(assert (=> b!6990115 m!7678918))

(declare-fun m!7678920 () Bool)

(assert (=> b!6990115 m!7678920))

(declare-fun m!7678922 () Bool)

(assert (=> b!6990115 m!7678922))

(declare-fun m!7678924 () Bool)

(assert (=> b!6990117 m!7678924))

(assert (=> b!6990117 m!7678874))

(declare-fun m!7678926 () Bool)

(assert (=> b!6990117 m!7678926))

(declare-fun m!7678928 () Bool)

(assert (=> b!6990117 m!7678928))

(assert (=> b!6990117 m!7678874))

(assert (=> b!6990117 m!7678874))

(declare-fun m!7678930 () Bool)

(assert (=> b!6990117 m!7678930))

(check-sat (not b!6990110) (not setNonEmpty!47829) (not b!6990113) (not b!6990107) (not b!6990111) (not b!6990119) (not b!6990109) tp_is_empty!43671 (not b!6990105) (not b!6990122) (not b!6990114) (not b!6990121) (not b!6990116) (not b!6990124) (not start!671770) (not b!6990115) (not b!6990112) (not b!6990117) (not b!6990123))
(check-sat)
