; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676034 () Bool)

(assert start!676034)

(declare-fun b!7015239 () Bool)

(assert (=> b!7015239 true))

(declare-fun b!7015243 () Bool)

(assert (=> b!7015243 true))

(declare-fun b!7015238 () Bool)

(assert (=> b!7015238 true))

(declare-fun b!7015232 () Bool)

(declare-fun res!2863059 () Bool)

(declare-fun e!4217013 () Bool)

(assert (=> b!7015232 (=> res!2863059 e!4217013)))

(declare-datatypes ((C!34956 0))(
  ( (C!34957 (val!27180 Int)) )
))
(declare-datatypes ((Regex!17343 0))(
  ( (ElementMatch!17343 (c!1303314 C!34956)) (Concat!26188 (regOne!35198 Regex!17343) (regTwo!35198 Regex!17343)) (EmptyExpr!17343) (Star!17343 (reg!17672 Regex!17343)) (EmptyLang!17343) (Union!17343 (regOne!35199 Regex!17343) (regTwo!35199 Regex!17343)) )
))
(declare-datatypes ((List!67574 0))(
  ( (Nil!67450) (Cons!67450 (h!73898 Regex!17343) (t!381329 List!67574)) )
))
(declare-datatypes ((Context!12678 0))(
  ( (Context!12679 (exprs!6839 List!67574)) )
))
(declare-fun lt!2507648 () Context!12678)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2507643 () (InoxSet Context!12678))

(assert (=> b!7015232 (= res!2863059 (not (select lt!2507643 lt!2507648)))))

(declare-fun setRes!48492 () Bool)

(declare-fun setElem!48492 () Context!12678)

(declare-fun tp!1933085 () Bool)

(declare-fun e!4217008 () Bool)

(declare-fun setNonEmpty!48492 () Bool)

(declare-fun inv!86216 (Context!12678) Bool)

(assert (=> setNonEmpty!48492 (= setRes!48492 (and tp!1933085 (inv!86216 setElem!48492) e!4217008))))

(declare-fun z1!570 () (InoxSet Context!12678))

(declare-fun setRest!48492 () (InoxSet Context!12678))

(assert (=> setNonEmpty!48492 (= z1!570 ((_ map or) (store ((as const (Array Context!12678 Bool)) false) setElem!48492 true) setRest!48492))))

(declare-fun setIsEmpty!48492 () Bool)

(assert (=> setIsEmpty!48492 setRes!48492))

(declare-fun b!7015233 () Bool)

(declare-fun e!4217010 () Bool)

(declare-fun e!4217016 () Bool)

(assert (=> b!7015233 (= e!4217010 e!4217016)))

(declare-fun res!2863055 () Bool)

(assert (=> b!7015233 (=> res!2863055 e!4217016)))

(declare-fun lt!2507644 () (InoxSet Context!12678))

(declare-fun lt!2507639 () (InoxSet Context!12678))

(assert (=> b!7015233 (= res!2863055 (not (= lt!2507644 lt!2507639)))))

(declare-fun lt!2507646 () Context!12678)

(assert (=> b!7015233 (= lt!2507644 (store ((as const (Array Context!12678 Bool)) false) lt!2507646 true))))

(declare-fun lt!2507647 () Context!12678)

(declare-fun lambda!409732 () Int)

(declare-datatypes ((Unit!161368 0))(
  ( (Unit!161369) )
))
(declare-fun lt!2507645 () Unit!161368)

(declare-fun ct2!306 () Context!12678)

(declare-fun lemmaConcatPreservesForall!679 (List!67574 List!67574 Int) Unit!161368)

(assert (=> b!7015233 (= lt!2507645 (lemmaConcatPreservesForall!679 (exprs!6839 lt!2507647) (exprs!6839 ct2!306) lambda!409732))))

(declare-fun b!7015234 () Bool)

(declare-fun e!4217012 () Bool)

(declare-fun e!4217007 () Bool)

(assert (=> b!7015234 (= e!4217012 e!4217007)))

(declare-fun res!2863062 () Bool)

(assert (=> b!7015234 (=> res!2863062 e!4217007)))

(declare-fun nullable!7103 (Regex!17343) Bool)

(assert (=> b!7015234 (= res!2863062 (nullable!7103 (h!73898 (exprs!6839 lt!2507647))))))

(declare-fun lt!2507636 () List!67574)

(declare-fun tail!13429 (List!67574) List!67574)

(assert (=> b!7015234 (= lt!2507636 (tail!13429 (exprs!6839 lt!2507647)))))

(declare-fun res!2863061 () Bool)

(declare-fun e!4217011 () Bool)

(assert (=> start!676034 (=> (not res!2863061) (not e!4217011))))

(declare-datatypes ((List!67575 0))(
  ( (Nil!67451) (Cons!67451 (h!73899 C!34956) (t!381330 List!67575)) )
))
(declare-fun s!7408 () List!67575)

(declare-fun matchZipper!2883 ((InoxSet Context!12678) List!67575) Bool)

(assert (=> start!676034 (= res!2863061 (matchZipper!2883 lt!2507643 s!7408))))

(declare-fun appendTo!464 ((InoxSet Context!12678) Context!12678) (InoxSet Context!12678))

(assert (=> start!676034 (= lt!2507643 (appendTo!464 z1!570 ct2!306))))

(assert (=> start!676034 e!4217011))

(declare-fun condSetEmpty!48492 () Bool)

(assert (=> start!676034 (= condSetEmpty!48492 (= z1!570 ((as const (Array Context!12678 Bool)) false)))))

(assert (=> start!676034 setRes!48492))

(declare-fun e!4217009 () Bool)

(assert (=> start!676034 (and (inv!86216 ct2!306) e!4217009)))

(declare-fun e!4217014 () Bool)

(assert (=> start!676034 e!4217014))

(declare-fun b!7015235 () Bool)

(declare-fun e!4217015 () Bool)

(assert (=> b!7015235 (= e!4217015 true)))

(declare-fun b!7015236 () Bool)

(declare-fun res!2863056 () Bool)

(assert (=> b!7015236 (=> (not res!2863056) (not e!4217011))))

(get-info :version)

(assert (=> b!7015236 (= res!2863056 ((_ is Cons!67451) s!7408))))

(declare-fun b!7015237 () Bool)

(declare-fun tp!1933084 () Bool)

(assert (=> b!7015237 (= e!4217009 tp!1933084)))

(assert (=> b!7015238 (= e!4217016 e!4217012)))

(declare-fun res!2863063 () Bool)

(assert (=> b!7015238 (=> res!2863063 e!4217012)))

(declare-fun lt!2507642 () (InoxSet Context!12678))

(declare-fun derivationStepZipper!2823 ((InoxSet Context!12678) C!34956) (InoxSet Context!12678))

(assert (=> b!7015238 (= res!2863063 (not (= (derivationStepZipper!2823 lt!2507644 (h!73899 s!7408)) lt!2507642)))))

(declare-fun lambda!409733 () Int)

(declare-fun flatMap!2329 ((InoxSet Context!12678) Int) (InoxSet Context!12678))

(declare-fun derivationStepZipperUp!1993 (Context!12678 C!34956) (InoxSet Context!12678))

(assert (=> b!7015238 (= (flatMap!2329 lt!2507644 lambda!409733) (derivationStepZipperUp!1993 lt!2507646 (h!73899 s!7408)))))

(declare-fun lt!2507640 () Unit!161368)

(declare-fun lemmaFlatMapOnSingletonSet!1844 ((InoxSet Context!12678) Context!12678 Int) Unit!161368)

(assert (=> b!7015238 (= lt!2507640 (lemmaFlatMapOnSingletonSet!1844 lt!2507644 lt!2507646 lambda!409733))))

(assert (=> b!7015238 (= lt!2507642 (derivationStepZipperUp!1993 lt!2507646 (h!73899 s!7408)))))

(declare-fun lt!2507634 () Unit!161368)

(assert (=> b!7015238 (= lt!2507634 (lemmaConcatPreservesForall!679 (exprs!6839 lt!2507647) (exprs!6839 ct2!306) lambda!409732))))

(assert (=> b!7015239 (= e!4217011 (not e!4217013))))

(declare-fun res!2863060 () Bool)

(assert (=> b!7015239 (=> res!2863060 e!4217013)))

(assert (=> b!7015239 (= res!2863060 (not (matchZipper!2883 lt!2507639 s!7408)))))

(assert (=> b!7015239 (= lt!2507639 (store ((as const (Array Context!12678 Bool)) false) lt!2507648 true))))

(declare-fun lambda!409730 () Int)

(declare-fun getWitness!1296 ((InoxSet Context!12678) Int) Context!12678)

(assert (=> b!7015239 (= lt!2507648 (getWitness!1296 lt!2507643 lambda!409730))))

(declare-datatypes ((List!67576 0))(
  ( (Nil!67452) (Cons!67452 (h!73900 Context!12678) (t!381331 List!67576)) )
))
(declare-fun lt!2507637 () List!67576)

(declare-fun exists!3203 (List!67576 Int) Bool)

(assert (=> b!7015239 (exists!3203 lt!2507637 lambda!409730)))

(declare-fun lt!2507641 () Unit!161368)

(declare-fun lemmaZipperMatchesExistsMatchingContext!312 (List!67576 List!67575) Unit!161368)

(assert (=> b!7015239 (= lt!2507641 (lemmaZipperMatchesExistsMatchingContext!312 lt!2507637 s!7408))))

(declare-fun toList!10703 ((InoxSet Context!12678)) List!67576)

(assert (=> b!7015239 (= lt!2507637 (toList!10703 lt!2507643))))

(declare-fun b!7015240 () Bool)

(declare-fun res!2863053 () Bool)

(assert (=> b!7015240 (=> res!2863053 e!4217012)))

(assert (=> b!7015240 (= res!2863053 (not ((_ is Cons!67450) (exprs!6839 lt!2507647))))))

(declare-fun b!7015241 () Bool)

(declare-fun res!2863054 () Bool)

(assert (=> b!7015241 (=> res!2863054 e!4217012)))

(declare-fun isEmpty!39392 (List!67574) Bool)

(assert (=> b!7015241 (= res!2863054 (isEmpty!39392 (exprs!6839 lt!2507647)))))

(declare-fun b!7015242 () Bool)

(assert (=> b!7015242 (= e!4217007 e!4217015)))

(declare-fun res!2863058 () Bool)

(assert (=> b!7015242 (=> res!2863058 e!4217015)))

(declare-fun derivationStepZipperDown!2061 (Regex!17343 Context!12678 C!34956) (InoxSet Context!12678))

(declare-fun ++!15358 (List!67574 List!67574) List!67574)

(assert (=> b!7015242 (= res!2863058 (not (matchZipper!2883 (derivationStepZipperDown!2061 (h!73898 (exprs!6839 lt!2507647)) (Context!12679 (++!15358 lt!2507636 (exprs!6839 ct2!306))) (h!73899 s!7408)) (t!381330 s!7408))))))

(declare-fun lt!2507635 () Unit!161368)

(assert (=> b!7015242 (= lt!2507635 (lemmaConcatPreservesForall!679 lt!2507636 (exprs!6839 ct2!306) lambda!409732))))

(assert (=> b!7015243 (= e!4217013 e!4217010)))

(declare-fun res!2863057 () Bool)

(assert (=> b!7015243 (=> res!2863057 e!4217010)))

(assert (=> b!7015243 (= res!2863057 (or (not (= lt!2507646 lt!2507648)) (not (select z1!570 lt!2507647))))))

(assert (=> b!7015243 (= lt!2507646 (Context!12679 (++!15358 (exprs!6839 lt!2507647) (exprs!6839 ct2!306))))))

(declare-fun lt!2507638 () Unit!161368)

(assert (=> b!7015243 (= lt!2507638 (lemmaConcatPreservesForall!679 (exprs!6839 lt!2507647) (exprs!6839 ct2!306) lambda!409732))))

(declare-fun lambda!409731 () Int)

(declare-fun mapPost2!198 ((InoxSet Context!12678) Int Context!12678) Context!12678)

(assert (=> b!7015243 (= lt!2507647 (mapPost2!198 z1!570 lambda!409731 lt!2507648))))

(declare-fun b!7015244 () Bool)

(declare-fun tp_is_empty!43911 () Bool)

(declare-fun tp!1933087 () Bool)

(assert (=> b!7015244 (= e!4217014 (and tp_is_empty!43911 tp!1933087))))

(declare-fun b!7015245 () Bool)

(declare-fun tp!1933086 () Bool)

(assert (=> b!7015245 (= e!4217008 tp!1933086)))

(assert (= (and start!676034 res!2863061) b!7015236))

(assert (= (and b!7015236 res!2863056) b!7015239))

(assert (= (and b!7015239 (not res!2863060)) b!7015232))

(assert (= (and b!7015232 (not res!2863059)) b!7015243))

(assert (= (and b!7015243 (not res!2863057)) b!7015233))

(assert (= (and b!7015233 (not res!2863055)) b!7015238))

(assert (= (and b!7015238 (not res!2863063)) b!7015240))

(assert (= (and b!7015240 (not res!2863053)) b!7015241))

(assert (= (and b!7015241 (not res!2863054)) b!7015234))

(assert (= (and b!7015234 (not res!2863062)) b!7015242))

(assert (= (and b!7015242 (not res!2863058)) b!7015235))

(assert (= (and start!676034 condSetEmpty!48492) setIsEmpty!48492))

(assert (= (and start!676034 (not condSetEmpty!48492)) setNonEmpty!48492))

(assert (= setNonEmpty!48492 b!7015245))

(assert (= start!676034 b!7015237))

(assert (= (and start!676034 ((_ is Cons!67451) s!7408)) b!7015244))

(declare-fun m!7714630 () Bool)

(assert (=> b!7015234 m!7714630))

(declare-fun m!7714632 () Bool)

(assert (=> b!7015234 m!7714632))

(declare-fun m!7714634 () Bool)

(assert (=> b!7015233 m!7714634))

(declare-fun m!7714636 () Bool)

(assert (=> b!7015233 m!7714636))

(declare-fun m!7714638 () Bool)

(assert (=> start!676034 m!7714638))

(declare-fun m!7714640 () Bool)

(assert (=> start!676034 m!7714640))

(declare-fun m!7714642 () Bool)

(assert (=> start!676034 m!7714642))

(declare-fun m!7714644 () Bool)

(assert (=> b!7015232 m!7714644))

(assert (=> b!7015238 m!7714636))

(declare-fun m!7714646 () Bool)

(assert (=> b!7015238 m!7714646))

(declare-fun m!7714648 () Bool)

(assert (=> b!7015238 m!7714648))

(declare-fun m!7714650 () Bool)

(assert (=> b!7015238 m!7714650))

(declare-fun m!7714652 () Bool)

(assert (=> b!7015238 m!7714652))

(declare-fun m!7714654 () Bool)

(assert (=> b!7015241 m!7714654))

(declare-fun m!7714656 () Bool)

(assert (=> b!7015239 m!7714656))

(declare-fun m!7714658 () Bool)

(assert (=> b!7015239 m!7714658))

(declare-fun m!7714660 () Bool)

(assert (=> b!7015239 m!7714660))

(declare-fun m!7714662 () Bool)

(assert (=> b!7015239 m!7714662))

(declare-fun m!7714664 () Bool)

(assert (=> b!7015239 m!7714664))

(declare-fun m!7714666 () Bool)

(assert (=> b!7015239 m!7714666))

(declare-fun m!7714668 () Bool)

(assert (=> b!7015242 m!7714668))

(declare-fun m!7714670 () Bool)

(assert (=> b!7015242 m!7714670))

(assert (=> b!7015242 m!7714670))

(declare-fun m!7714672 () Bool)

(assert (=> b!7015242 m!7714672))

(declare-fun m!7714674 () Bool)

(assert (=> b!7015242 m!7714674))

(declare-fun m!7714676 () Bool)

(assert (=> b!7015243 m!7714676))

(declare-fun m!7714678 () Bool)

(assert (=> b!7015243 m!7714678))

(assert (=> b!7015243 m!7714636))

(declare-fun m!7714680 () Bool)

(assert (=> b!7015243 m!7714680))

(declare-fun m!7714682 () Bool)

(assert (=> setNonEmpty!48492 m!7714682))

(check-sat (not b!7015244) (not setNonEmpty!48492) tp_is_empty!43911 (not b!7015234) (not b!7015242) (not b!7015245) (not b!7015239) (not start!676034) (not b!7015241) (not b!7015238) (not b!7015233) (not b!7015243) (not b!7015237))
(check-sat)
