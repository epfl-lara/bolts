; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682050 () Bool)

(assert start!682050)

(declare-fun b!7046087 () Bool)

(assert (=> b!7046087 true))

(declare-fun b!7046078 () Bool)

(assert (=> b!7046078 true))

(declare-fun b!7046079 () Bool)

(assert (=> b!7046079 true))

(declare-fun b!7046076 () Bool)

(declare-fun e!4235880 () Bool)

(declare-fun tp_is_empty!44235 () Bool)

(declare-fun tp!1938045 () Bool)

(assert (=> b!7046076 (= e!4235880 (and tp_is_empty!44235 tp!1938045))))

(declare-fun b!7046077 () Bool)

(declare-fun res!2876486 () Bool)

(declare-fun e!4235886 () Bool)

(assert (=> b!7046077 (=> res!2876486 e!4235886)))

(declare-datatypes ((C!35280 0))(
  ( (C!35281 (val!27342 Int)) )
))
(declare-datatypes ((Regex!17505 0))(
  ( (ElementMatch!17505 (c!1312007 C!35280)) (Concat!26350 (regOne!35522 Regex!17505) (regTwo!35522 Regex!17505)) (EmptyExpr!17505) (Star!17505 (reg!17834 Regex!17505)) (EmptyLang!17505) (Union!17505 (regOne!35523 Regex!17505) (regTwo!35523 Regex!17505)) )
))
(declare-datatypes ((List!68043 0))(
  ( (Nil!67919) (Cons!67919 (h!74367 Regex!17505) (t!381820 List!68043)) )
))
(declare-datatypes ((Context!13002 0))(
  ( (Context!13003 (exprs!7001 List!68043)) )
))
(declare-fun lt!2526856 () Context!13002)

(get-info :version)

(assert (=> b!7046077 (= res!2876486 (not ((_ is Cons!67919) (exprs!7001 lt!2526856))))))

(declare-fun res!2876480 () Bool)

(declare-fun e!4235878 () Bool)

(assert (=> start!682050 (=> (not res!2876480) (not e!4235878))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2526859 () (InoxSet Context!13002))

(declare-datatypes ((List!68044 0))(
  ( (Nil!67920) (Cons!67920 (h!74368 C!35280) (t!381821 List!68044)) )
))
(declare-fun s!7408 () List!68044)

(declare-fun matchZipper!3045 ((InoxSet Context!13002) List!68044) Bool)

(assert (=> start!682050 (= res!2876480 (matchZipper!3045 lt!2526859 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13002))

(declare-fun ct2!306 () Context!13002)

(declare-fun appendTo!626 ((InoxSet Context!13002) Context!13002) (InoxSet Context!13002))

(assert (=> start!682050 (= lt!2526859 (appendTo!626 z1!570 ct2!306))))

(assert (=> start!682050 e!4235878))

(declare-fun condSetEmpty!49454 () Bool)

(assert (=> start!682050 (= condSetEmpty!49454 (= z1!570 ((as const (Array Context!13002 Bool)) false)))))

(declare-fun setRes!49454 () Bool)

(assert (=> start!682050 setRes!49454))

(declare-fun e!4235885 () Bool)

(declare-fun inv!86621 (Context!13002) Bool)

(assert (=> start!682050 (and (inv!86621 ct2!306) e!4235885)))

(assert (=> start!682050 e!4235880))

(declare-fun e!4235882 () Bool)

(declare-fun e!4235883 () Bool)

(assert (=> b!7046078 (= e!4235882 e!4235883)))

(declare-fun res!2876482 () Bool)

(assert (=> b!7046078 (=> res!2876482 e!4235883)))

(declare-fun lt!2526863 () Context!13002)

(declare-fun lt!2526860 () Context!13002)

(assert (=> b!7046078 (= res!2876482 (or (not (= lt!2526860 lt!2526863)) (not (select z1!570 lt!2526856))))))

(declare-fun ++!15582 (List!68043 List!68043) List!68043)

(assert (=> b!7046078 (= lt!2526860 (Context!13003 (++!15582 (exprs!7001 lt!2526856) (exprs!7001 ct2!306))))))

(declare-datatypes ((Unit!161696 0))(
  ( (Unit!161697) )
))
(declare-fun lt!2526857 () Unit!161696)

(declare-fun lambda!417783 () Int)

(declare-fun lemmaConcatPreservesForall!826 (List!68043 List!68043 Int) Unit!161696)

(assert (=> b!7046078 (= lt!2526857 (lemmaConcatPreservesForall!826 (exprs!7001 lt!2526856) (exprs!7001 ct2!306) lambda!417783))))

(declare-fun lambda!417782 () Int)

(declare-fun mapPost2!346 ((InoxSet Context!13002) Int Context!13002) Context!13002)

(assert (=> b!7046078 (= lt!2526856 (mapPost2!346 z1!570 lambda!417782 lt!2526863))))

(declare-fun e!4235879 () Bool)

(assert (=> b!7046079 (= e!4235879 e!4235886)))

(declare-fun res!2876484 () Bool)

(assert (=> b!7046079 (=> res!2876484 e!4235886)))

(declare-fun lt!2526854 () (InoxSet Context!13002))

(declare-fun lt!2526851 () (InoxSet Context!13002))

(declare-fun derivationStepZipper!2961 ((InoxSet Context!13002) C!35280) (InoxSet Context!13002))

(assert (=> b!7046079 (= res!2876484 (not (= (derivationStepZipper!2961 lt!2526854 (h!74368 s!7408)) lt!2526851)))))

(declare-fun lambda!417784 () Int)

(declare-fun flatMap!2452 ((InoxSet Context!13002) Int) (InoxSet Context!13002))

(declare-fun derivationStepZipperUp!2115 (Context!13002 C!35280) (InoxSet Context!13002))

(assert (=> b!7046079 (= (flatMap!2452 lt!2526854 lambda!417784) (derivationStepZipperUp!2115 lt!2526860 (h!74368 s!7408)))))

(declare-fun lt!2526855 () Unit!161696)

(declare-fun lemmaFlatMapOnSingletonSet!1966 ((InoxSet Context!13002) Context!13002 Int) Unit!161696)

(assert (=> b!7046079 (= lt!2526855 (lemmaFlatMapOnSingletonSet!1966 lt!2526854 lt!2526860 lambda!417784))))

(assert (=> b!7046079 (= lt!2526851 (derivationStepZipperUp!2115 lt!2526860 (h!74368 s!7408)))))

(declare-fun lt!2526849 () Unit!161696)

(assert (=> b!7046079 (= lt!2526849 (lemmaConcatPreservesForall!826 (exprs!7001 lt!2526856) (exprs!7001 ct2!306) lambda!417783))))

(declare-fun setIsEmpty!49454 () Bool)

(assert (=> setIsEmpty!49454 setRes!49454))

(declare-fun b!7046080 () Bool)

(declare-fun tp!1938043 () Bool)

(assert (=> b!7046080 (= e!4235885 tp!1938043)))

(declare-fun b!7046081 () Bool)

(declare-fun e!4235884 () Bool)

(declare-fun tp!1938042 () Bool)

(assert (=> b!7046081 (= e!4235884 tp!1938042)))

(declare-fun b!7046082 () Bool)

(declare-fun res!2876479 () Bool)

(assert (=> b!7046082 (=> res!2876479 e!4235882)))

(assert (=> b!7046082 (= res!2876479 (not (select lt!2526859 lt!2526863)))))

(declare-fun b!7046083 () Bool)

(declare-fun e!4235881 () Bool)

(declare-fun e!4235877 () Bool)

(assert (=> b!7046083 (= e!4235881 e!4235877)))

(declare-fun res!2876483 () Bool)

(assert (=> b!7046083 (=> res!2876483 e!4235877)))

(declare-fun lt!2526858 () (InoxSet Context!13002))

(assert (=> b!7046083 (= res!2876483 (not (matchZipper!3045 lt!2526858 (t!381821 s!7408))))))

(declare-fun lt!2526846 () List!68043)

(declare-fun derivationStepZipperDown!2169 (Regex!17505 Context!13002 C!35280) (InoxSet Context!13002))

(assert (=> b!7046083 (= lt!2526858 (derivationStepZipperDown!2169 (h!74367 (exprs!7001 lt!2526856)) (Context!13003 (++!15582 lt!2526846 (exprs!7001 ct2!306))) (h!74368 s!7408)))))

(declare-fun lt!2526847 () Unit!161696)

(assert (=> b!7046083 (= lt!2526847 (lemmaConcatPreservesForall!826 lt!2526846 (exprs!7001 ct2!306) lambda!417783))))

(declare-fun b!7046084 () Bool)

(declare-fun res!2876481 () Bool)

(assert (=> b!7046084 (=> res!2876481 e!4235886)))

(declare-fun isEmpty!39639 (List!68043) Bool)

(assert (=> b!7046084 (= res!2876481 (isEmpty!39639 (exprs!7001 lt!2526856)))))

(declare-fun b!7046085 () Bool)

(assert (=> b!7046085 (= e!4235877 true)))

(declare-fun lt!2526862 () Context!13002)

(assert (=> b!7046085 (= lt!2526858 (appendTo!626 (derivationStepZipperDown!2169 (h!74367 (exprs!7001 lt!2526856)) lt!2526862 (h!74368 s!7408)) ct2!306))))

(declare-fun lt!2526864 () Unit!161696)

(assert (=> b!7046085 (= lt!2526864 (lemmaConcatPreservesForall!826 lt!2526846 (exprs!7001 ct2!306) lambda!417783))))

(declare-fun lt!2526853 () Unit!161696)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!82 (Context!13002 Regex!17505 C!35280 Context!13002) Unit!161696)

(assert (=> b!7046085 (= lt!2526853 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!82 lt!2526862 (h!74367 (exprs!7001 lt!2526856)) (h!74368 s!7408) ct2!306))))

(declare-fun b!7046086 () Bool)

(assert (=> b!7046086 (= e!4235886 e!4235881)))

(declare-fun res!2876487 () Bool)

(assert (=> b!7046086 (=> res!2876487 e!4235881)))

(declare-fun nullable!7216 (Regex!17505) Bool)

(assert (=> b!7046086 (= res!2876487 (nullable!7216 (h!74367 (exprs!7001 lt!2526856))))))

(assert (=> b!7046086 (= lt!2526862 (Context!13003 lt!2526846))))

(declare-fun tail!13623 (List!68043) List!68043)

(assert (=> b!7046086 (= lt!2526846 (tail!13623 (exprs!7001 lt!2526856)))))

(assert (=> b!7046087 (= e!4235878 (not e!4235882))))

(declare-fun res!2876488 () Bool)

(assert (=> b!7046087 (=> res!2876488 e!4235882)))

(declare-fun lt!2526848 () (InoxSet Context!13002))

(assert (=> b!7046087 (= res!2876488 (not (matchZipper!3045 lt!2526848 s!7408)))))

(assert (=> b!7046087 (= lt!2526848 (store ((as const (Array Context!13002 Bool)) false) lt!2526863 true))))

(declare-fun lambda!417781 () Int)

(declare-fun getWitness!1538 ((InoxSet Context!13002) Int) Context!13002)

(assert (=> b!7046087 (= lt!2526863 (getWitness!1538 lt!2526859 lambda!417781))))

(declare-datatypes ((List!68045 0))(
  ( (Nil!67921) (Cons!67921 (h!74369 Context!13002) (t!381822 List!68045)) )
))
(declare-fun lt!2526852 () List!68045)

(declare-fun exists!3459 (List!68045 Int) Bool)

(assert (=> b!7046087 (exists!3459 lt!2526852 lambda!417781)))

(declare-fun lt!2526861 () Unit!161696)

(declare-fun lemmaZipperMatchesExistsMatchingContext!444 (List!68045 List!68044) Unit!161696)

(assert (=> b!7046087 (= lt!2526861 (lemmaZipperMatchesExistsMatchingContext!444 lt!2526852 s!7408))))

(declare-fun toList!10848 ((InoxSet Context!13002)) List!68045)

(assert (=> b!7046087 (= lt!2526852 (toList!10848 lt!2526859))))

(declare-fun b!7046088 () Bool)

(assert (=> b!7046088 (= e!4235883 e!4235879)))

(declare-fun res!2876485 () Bool)

(assert (=> b!7046088 (=> res!2876485 e!4235879)))

(assert (=> b!7046088 (= res!2876485 (not (= lt!2526854 lt!2526848)))))

(assert (=> b!7046088 (= lt!2526854 (store ((as const (Array Context!13002 Bool)) false) lt!2526860 true))))

(declare-fun lt!2526850 () Unit!161696)

(assert (=> b!7046088 (= lt!2526850 (lemmaConcatPreservesForall!826 (exprs!7001 lt!2526856) (exprs!7001 ct2!306) lambda!417783))))

(declare-fun tp!1938044 () Bool)

(declare-fun setNonEmpty!49454 () Bool)

(declare-fun setElem!49454 () Context!13002)

(assert (=> setNonEmpty!49454 (= setRes!49454 (and tp!1938044 (inv!86621 setElem!49454) e!4235884))))

(declare-fun setRest!49454 () (InoxSet Context!13002))

(assert (=> setNonEmpty!49454 (= z1!570 ((_ map or) (store ((as const (Array Context!13002 Bool)) false) setElem!49454 true) setRest!49454))))

(declare-fun b!7046089 () Bool)

(declare-fun res!2876478 () Bool)

(assert (=> b!7046089 (=> (not res!2876478) (not e!4235878))))

(assert (=> b!7046089 (= res!2876478 ((_ is Cons!67920) s!7408))))

(assert (= (and start!682050 res!2876480) b!7046089))

(assert (= (and b!7046089 res!2876478) b!7046087))

(assert (= (and b!7046087 (not res!2876488)) b!7046082))

(assert (= (and b!7046082 (not res!2876479)) b!7046078))

(assert (= (and b!7046078 (not res!2876482)) b!7046088))

(assert (= (and b!7046088 (not res!2876485)) b!7046079))

(assert (= (and b!7046079 (not res!2876484)) b!7046077))

(assert (= (and b!7046077 (not res!2876486)) b!7046084))

(assert (= (and b!7046084 (not res!2876481)) b!7046086))

(assert (= (and b!7046086 (not res!2876487)) b!7046083))

(assert (= (and b!7046083 (not res!2876483)) b!7046085))

(assert (= (and start!682050 condSetEmpty!49454) setIsEmpty!49454))

(assert (= (and start!682050 (not condSetEmpty!49454)) setNonEmpty!49454))

(assert (= setNonEmpty!49454 b!7046081))

(assert (= start!682050 b!7046080))

(assert (= (and start!682050 ((_ is Cons!67920) s!7408)) b!7046076))

(declare-fun m!7759850 () Bool)

(assert (=> start!682050 m!7759850))

(declare-fun m!7759852 () Bool)

(assert (=> start!682050 m!7759852))

(declare-fun m!7759854 () Bool)

(assert (=> start!682050 m!7759854))

(declare-fun m!7759856 () Bool)

(assert (=> setNonEmpty!49454 m!7759856))

(declare-fun m!7759858 () Bool)

(assert (=> b!7046079 m!7759858))

(declare-fun m!7759860 () Bool)

(assert (=> b!7046079 m!7759860))

(declare-fun m!7759862 () Bool)

(assert (=> b!7046079 m!7759862))

(declare-fun m!7759864 () Bool)

(assert (=> b!7046079 m!7759864))

(declare-fun m!7759866 () Bool)

(assert (=> b!7046079 m!7759866))

(declare-fun m!7759868 () Bool)

(assert (=> b!7046083 m!7759868))

(declare-fun m!7759870 () Bool)

(assert (=> b!7046083 m!7759870))

(declare-fun m!7759872 () Bool)

(assert (=> b!7046083 m!7759872))

(declare-fun m!7759874 () Bool)

(assert (=> b!7046083 m!7759874))

(declare-fun m!7759876 () Bool)

(assert (=> b!7046084 m!7759876))

(declare-fun m!7759878 () Bool)

(assert (=> b!7046078 m!7759878))

(declare-fun m!7759880 () Bool)

(assert (=> b!7046078 m!7759880))

(assert (=> b!7046078 m!7759860))

(declare-fun m!7759882 () Bool)

(assert (=> b!7046078 m!7759882))

(declare-fun m!7759884 () Bool)

(assert (=> b!7046088 m!7759884))

(assert (=> b!7046088 m!7759860))

(declare-fun m!7759886 () Bool)

(assert (=> b!7046087 m!7759886))

(declare-fun m!7759888 () Bool)

(assert (=> b!7046087 m!7759888))

(declare-fun m!7759890 () Bool)

(assert (=> b!7046087 m!7759890))

(declare-fun m!7759892 () Bool)

(assert (=> b!7046087 m!7759892))

(declare-fun m!7759894 () Bool)

(assert (=> b!7046087 m!7759894))

(declare-fun m!7759896 () Bool)

(assert (=> b!7046087 m!7759896))

(declare-fun m!7759898 () Bool)

(assert (=> b!7046086 m!7759898))

(declare-fun m!7759900 () Bool)

(assert (=> b!7046086 m!7759900))

(declare-fun m!7759902 () Bool)

(assert (=> b!7046082 m!7759902))

(declare-fun m!7759904 () Bool)

(assert (=> b!7046085 m!7759904))

(assert (=> b!7046085 m!7759904))

(declare-fun m!7759906 () Bool)

(assert (=> b!7046085 m!7759906))

(assert (=> b!7046085 m!7759874))

(declare-fun m!7759908 () Bool)

(assert (=> b!7046085 m!7759908))

(check-sat (not b!7046087) tp_is_empty!44235 (not b!7046085) (not b!7046084) (not b!7046078) (not b!7046076) (not setNonEmpty!49454) (not b!7046088) (not b!7046086) (not b!7046081) (not b!7046079) (not start!682050) (not b!7046083) (not b!7046080))
(check-sat)
