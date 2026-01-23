; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677190 () Bool)

(assert start!677190)

(declare-fun b!7021200 () Bool)

(assert (=> b!7021200 true))

(declare-fun b!7021201 () Bool)

(assert (=> b!7021201 true))

(declare-fun b!7021203 () Bool)

(assert (=> b!7021203 true))

(declare-fun b!7021197 () Bool)

(declare-fun e!4220593 () Bool)

(declare-fun tp!1934071 () Bool)

(assert (=> b!7021197 (= e!4220593 tp!1934071)))

(declare-fun b!7021198 () Bool)

(declare-fun res!2865988 () Bool)

(declare-fun e!4220597 () Bool)

(assert (=> b!7021198 (=> res!2865988 e!4220597)))

(declare-datatypes ((C!35052 0))(
  ( (C!35053 (val!27228 Int)) )
))
(declare-datatypes ((Regex!17391 0))(
  ( (ElementMatch!17391 (c!1304888 C!35052)) (Concat!26236 (regOne!35294 Regex!17391) (regTwo!35294 Regex!17391)) (EmptyExpr!17391) (Star!17391 (reg!17720 Regex!17391)) (EmptyLang!17391) (Union!17391 (regOne!35295 Regex!17391) (regTwo!35295 Regex!17391)) )
))
(declare-datatypes ((List!67718 0))(
  ( (Nil!67594) (Cons!67594 (h!74042 Regex!17391) (t!381473 List!67718)) )
))
(declare-datatypes ((Context!12774 0))(
  ( (Context!12775 (exprs!6887 List!67718)) )
))
(declare-fun lt!2512124 () Context!12774)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2512116 () (InoxSet Context!12774))

(assert (=> b!7021198 (= res!2865988 (not (select lt!2512116 lt!2512124)))))

(declare-fun b!7021199 () Bool)

(declare-fun e!4220596 () Bool)

(declare-fun tp!1934069 () Bool)

(assert (=> b!7021199 (= e!4220596 tp!1934069)))

(declare-fun e!4220595 () Bool)

(assert (=> b!7021200 (= e!4220595 (not e!4220597))))

(declare-fun res!2865987 () Bool)

(assert (=> b!7021200 (=> res!2865987 e!4220597)))

(declare-fun lt!2512118 () (InoxSet Context!12774))

(declare-datatypes ((List!67719 0))(
  ( (Nil!67595) (Cons!67595 (h!74043 C!35052) (t!381474 List!67719)) )
))
(declare-fun s!7408 () List!67719)

(declare-fun matchZipper!2931 ((InoxSet Context!12774) List!67719) Bool)

(assert (=> b!7021200 (= res!2865987 (not (matchZipper!2931 lt!2512118 s!7408)))))

(assert (=> b!7021200 (= lt!2512118 (store ((as const (Array Context!12774 Bool)) false) lt!2512124 true))))

(declare-fun lambda!411452 () Int)

(declare-fun getWitness!1362 ((InoxSet Context!12774) Int) Context!12774)

(assert (=> b!7021200 (= lt!2512124 (getWitness!1362 lt!2512116 lambda!411452))))

(declare-datatypes ((List!67720 0))(
  ( (Nil!67596) (Cons!67596 (h!74044 Context!12774) (t!381475 List!67720)) )
))
(declare-fun lt!2512126 () List!67720)

(declare-fun exists!3277 (List!67720 Int) Bool)

(assert (=> b!7021200 (exists!3277 lt!2512126 lambda!411452)))

(declare-datatypes ((Unit!161464 0))(
  ( (Unit!161465) )
))
(declare-fun lt!2512119 () Unit!161464)

(declare-fun lemmaZipperMatchesExistsMatchingContext!360 (List!67720 List!67719) Unit!161464)

(assert (=> b!7021200 (= lt!2512119 (lemmaZipperMatchesExistsMatchingContext!360 lt!2512126 s!7408))))

(declare-fun toList!10751 ((InoxSet Context!12774)) List!67720)

(assert (=> b!7021200 (= lt!2512126 (toList!10751 lt!2512116))))

(declare-fun setNonEmpty!48708 () Bool)

(declare-fun tp!1934070 () Bool)

(declare-fun setRes!48708 () Bool)

(declare-fun setElem!48708 () Context!12774)

(declare-fun inv!86336 (Context!12774) Bool)

(assert (=> setNonEmpty!48708 (= setRes!48708 (and tp!1934070 (inv!86336 setElem!48708) e!4220593))))

(declare-fun z1!570 () (InoxSet Context!12774))

(declare-fun setRest!48708 () (InoxSet Context!12774))

(assert (=> setNonEmpty!48708 (= z1!570 ((_ map or) (store ((as const (Array Context!12774 Bool)) false) setElem!48708 true) setRest!48708))))

(declare-fun b!7021202 () Bool)

(declare-fun e!4220598 () Bool)

(declare-fun tp_is_empty!44007 () Bool)

(declare-fun tp!1934068 () Bool)

(assert (=> b!7021202 (= e!4220598 (and tp_is_empty!44007 tp!1934068))))

(declare-fun setIsEmpty!48708 () Bool)

(assert (=> setIsEmpty!48708 setRes!48708))

(declare-fun e!4220594 () Bool)

(assert (=> b!7021203 (= e!4220594 true)))

(declare-fun lt!2512125 () Context!12774)

(declare-fun lambda!411455 () Int)

(declare-fun lt!2512117 () (InoxSet Context!12774))

(declare-fun flatMap!2377 ((InoxSet Context!12774) Int) (InoxSet Context!12774))

(declare-fun derivationStepZipperUp!2041 (Context!12774 C!35052) (InoxSet Context!12774))

(assert (=> b!7021203 (= (flatMap!2377 lt!2512117 lambda!411455) (derivationStepZipperUp!2041 lt!2512125 (h!74043 s!7408)))))

(declare-fun lt!2512123 () Unit!161464)

(declare-fun lemmaFlatMapOnSingletonSet!1892 ((InoxSet Context!12774) Context!12774 Int) Unit!161464)

(assert (=> b!7021203 (= lt!2512123 (lemmaFlatMapOnSingletonSet!1892 lt!2512117 lt!2512125 lambda!411455))))

(declare-fun lt!2512121 () (InoxSet Context!12774))

(assert (=> b!7021203 (= lt!2512121 (derivationStepZipperUp!2041 lt!2512125 (h!74043 s!7408)))))

(declare-fun lt!2512122 () Unit!161464)

(declare-fun ct2!306 () Context!12774)

(declare-fun lambda!411454 () Int)

(declare-fun lt!2512115 () Context!12774)

(declare-fun lemmaConcatPreservesForall!727 (List!67718 List!67718 Int) Unit!161464)

(assert (=> b!7021203 (= lt!2512122 (lemmaConcatPreservesForall!727 (exprs!6887 lt!2512115) (exprs!6887 ct2!306) lambda!411454))))

(declare-fun b!7021204 () Bool)

(declare-fun res!2865986 () Bool)

(assert (=> b!7021204 (=> (not res!2865986) (not e!4220595))))

(get-info :version)

(assert (=> b!7021204 (= res!2865986 ((_ is Cons!67595) s!7408))))

(declare-fun b!7021205 () Bool)

(declare-fun e!4220592 () Bool)

(assert (=> b!7021205 (= e!4220592 e!4220594)))

(declare-fun res!2865991 () Bool)

(assert (=> b!7021205 (=> res!2865991 e!4220594)))

(assert (=> b!7021205 (= res!2865991 (not (= lt!2512117 lt!2512118)))))

(assert (=> b!7021205 (= lt!2512117 (store ((as const (Array Context!12774 Bool)) false) lt!2512125 true))))

(declare-fun lt!2512114 () Unit!161464)

(assert (=> b!7021205 (= lt!2512114 (lemmaConcatPreservesForall!727 (exprs!6887 lt!2512115) (exprs!6887 ct2!306) lambda!411454))))

(declare-fun res!2865990 () Bool)

(assert (=> start!677190 (=> (not res!2865990) (not e!4220595))))

(assert (=> start!677190 (= res!2865990 (matchZipper!2931 lt!2512116 s!7408))))

(declare-fun appendTo!512 ((InoxSet Context!12774) Context!12774) (InoxSet Context!12774))

(assert (=> start!677190 (= lt!2512116 (appendTo!512 z1!570 ct2!306))))

(assert (=> start!677190 e!4220595))

(declare-fun condSetEmpty!48708 () Bool)

(assert (=> start!677190 (= condSetEmpty!48708 (= z1!570 ((as const (Array Context!12774 Bool)) false)))))

(assert (=> start!677190 setRes!48708))

(assert (=> start!677190 (and (inv!86336 ct2!306) e!4220596)))

(assert (=> start!677190 e!4220598))

(assert (=> b!7021201 (= e!4220597 e!4220592)))

(declare-fun res!2865989 () Bool)

(assert (=> b!7021201 (=> res!2865989 e!4220592)))

(assert (=> b!7021201 (= res!2865989 (or (not (= lt!2512125 lt!2512124)) (not (select z1!570 lt!2512115))))))

(declare-fun ++!15435 (List!67718 List!67718) List!67718)

(assert (=> b!7021201 (= lt!2512125 (Context!12775 (++!15435 (exprs!6887 lt!2512115) (exprs!6887 ct2!306))))))

(declare-fun lt!2512120 () Unit!161464)

(assert (=> b!7021201 (= lt!2512120 (lemmaConcatPreservesForall!727 (exprs!6887 lt!2512115) (exprs!6887 ct2!306) lambda!411454))))

(declare-fun lambda!411453 () Int)

(declare-fun mapPost2!246 ((InoxSet Context!12774) Int Context!12774) Context!12774)

(assert (=> b!7021201 (= lt!2512115 (mapPost2!246 z1!570 lambda!411453 lt!2512124))))

(assert (= (and start!677190 res!2865990) b!7021204))

(assert (= (and b!7021204 res!2865986) b!7021200))

(assert (= (and b!7021200 (not res!2865987)) b!7021198))

(assert (= (and b!7021198 (not res!2865988)) b!7021201))

(assert (= (and b!7021201 (not res!2865989)) b!7021205))

(assert (= (and b!7021205 (not res!2865991)) b!7021203))

(assert (= (and start!677190 condSetEmpty!48708) setIsEmpty!48708))

(assert (= (and start!677190 (not condSetEmpty!48708)) setNonEmpty!48708))

(assert (= setNonEmpty!48708 b!7021197))

(assert (= start!677190 b!7021199))

(assert (= (and start!677190 ((_ is Cons!67595) s!7408)) b!7021202))

(declare-fun m!7723114 () Bool)

(assert (=> b!7021201 m!7723114))

(declare-fun m!7723116 () Bool)

(assert (=> b!7021201 m!7723116))

(declare-fun m!7723118 () Bool)

(assert (=> b!7021201 m!7723118))

(declare-fun m!7723120 () Bool)

(assert (=> b!7021201 m!7723120))

(declare-fun m!7723122 () Bool)

(assert (=> b!7021205 m!7723122))

(assert (=> b!7021205 m!7723118))

(declare-fun m!7723124 () Bool)

(assert (=> setNonEmpty!48708 m!7723124))

(declare-fun m!7723126 () Bool)

(assert (=> start!677190 m!7723126))

(declare-fun m!7723128 () Bool)

(assert (=> start!677190 m!7723128))

(declare-fun m!7723130 () Bool)

(assert (=> start!677190 m!7723130))

(declare-fun m!7723132 () Bool)

(assert (=> b!7021203 m!7723132))

(declare-fun m!7723134 () Bool)

(assert (=> b!7021203 m!7723134))

(declare-fun m!7723136 () Bool)

(assert (=> b!7021203 m!7723136))

(assert (=> b!7021203 m!7723118))

(declare-fun m!7723138 () Bool)

(assert (=> b!7021200 m!7723138))

(declare-fun m!7723140 () Bool)

(assert (=> b!7021200 m!7723140))

(declare-fun m!7723142 () Bool)

(assert (=> b!7021200 m!7723142))

(declare-fun m!7723144 () Bool)

(assert (=> b!7021200 m!7723144))

(declare-fun m!7723146 () Bool)

(assert (=> b!7021200 m!7723146))

(declare-fun m!7723148 () Bool)

(assert (=> b!7021200 m!7723148))

(declare-fun m!7723150 () Bool)

(assert (=> b!7021198 m!7723150))

(check-sat (not b!7021203) (not b!7021199) (not b!7021205) (not b!7021201) (not start!677190) (not setNonEmpty!48708) (not b!7021197) tp_is_empty!44007 (not b!7021200) (not b!7021202))
(check-sat)
