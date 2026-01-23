; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676122 () Bool)

(assert start!676122)

(declare-fun b!7015710 () Bool)

(assert (=> b!7015710 true))

(declare-fun b!7015712 () Bool)

(assert (=> b!7015712 true))

(declare-fun b!7015719 () Bool)

(assert (=> b!7015719 true))

(declare-fun b!7015708 () Bool)

(declare-fun e!4217303 () Bool)

(declare-fun tp!1933167 () Bool)

(assert (=> b!7015708 (= e!4217303 tp!1933167)))

(declare-fun b!7015709 () Bool)

(declare-fun e!4217300 () Bool)

(assert (=> b!7015709 (= e!4217300 true)))

(declare-fun lt!2507951 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34964 0))(
  ( (C!34965 (val!27184 Int)) )
))
(declare-datatypes ((Regex!17347 0))(
  ( (ElementMatch!17347 (c!1303444 C!34964)) (Concat!26192 (regOne!35206 Regex!17347) (regTwo!35206 Regex!17347)) (EmptyExpr!17347) (Star!17347 (reg!17676 Regex!17347)) (EmptyLang!17347) (Union!17347 (regOne!35207 Regex!17347) (regTwo!35207 Regex!17347)) )
))
(declare-datatypes ((List!67586 0))(
  ( (Nil!67462) (Cons!67462 (h!73910 Regex!17347) (t!381341 List!67586)) )
))
(declare-datatypes ((Context!12686 0))(
  ( (Context!12687 (exprs!6843 List!67586)) )
))
(declare-fun lt!2507950 () (InoxSet Context!12686))

(declare-datatypes ((List!67587 0))(
  ( (Nil!67463) (Cons!67463 (h!73911 C!34964) (t!381342 List!67587)) )
))
(declare-fun s!7408 () List!67587)

(declare-fun matchZipper!2887 ((InoxSet Context!12686) List!67587) Bool)

(assert (=> b!7015709 (= lt!2507951 (matchZipper!2887 lt!2507950 (t!381342 s!7408)))))

(declare-fun lt!2507942 () (InoxSet Context!12686))

(assert (=> b!7015709 (= lt!2507942 lt!2507950)))

(declare-fun lt!2507958 () Context!12686)

(declare-fun lt!2507944 () Context!12686)

(declare-fun ct2!306 () Context!12686)

(declare-fun appendTo!468 ((InoxSet Context!12686) Context!12686) (InoxSet Context!12686))

(declare-fun derivationStepZipperDown!2065 (Regex!17347 Context!12686 C!34964) (InoxSet Context!12686))

(assert (=> b!7015709 (= lt!2507950 (appendTo!468 (derivationStepZipperDown!2065 (h!73910 (exprs!6843 lt!2507958)) lt!2507944 (h!73911 s!7408)) ct2!306))))

(declare-fun lt!2507955 () List!67586)

(declare-datatypes ((Unit!161376 0))(
  ( (Unit!161377) )
))
(declare-fun lt!2507957 () Unit!161376)

(declare-fun lambda!409872 () Int)

(declare-fun lemmaConcatPreservesForall!683 (List!67586 List!67586 Int) Unit!161376)

(assert (=> b!7015709 (= lt!2507957 (lemmaConcatPreservesForall!683 lt!2507955 (exprs!6843 ct2!306) lambda!409872))))

(declare-fun lt!2507953 () Unit!161376)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!38 (Context!12686 Regex!17347 C!34964 Context!12686) Unit!161376)

(assert (=> b!7015709 (= lt!2507953 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!38 lt!2507944 (h!73910 (exprs!6843 lt!2507958)) (h!73911 s!7408) ct2!306))))

(declare-fun e!4217307 () Bool)

(declare-fun e!4217306 () Bool)

(assert (=> b!7015710 (= e!4217307 (not e!4217306))))

(declare-fun res!2863273 () Bool)

(assert (=> b!7015710 (=> res!2863273 e!4217306)))

(declare-fun lt!2507948 () (InoxSet Context!12686))

(assert (=> b!7015710 (= res!2863273 (not (matchZipper!2887 lt!2507948 s!7408)))))

(declare-fun lt!2507960 () Context!12686)

(assert (=> b!7015710 (= lt!2507948 (store ((as const (Array Context!12686 Bool)) false) lt!2507960 true))))

(declare-fun lt!2507956 () (InoxSet Context!12686))

(declare-fun lambda!409870 () Int)

(declare-fun getWitness!1302 ((InoxSet Context!12686) Int) Context!12686)

(assert (=> b!7015710 (= lt!2507960 (getWitness!1302 lt!2507956 lambda!409870))))

(declare-datatypes ((List!67588 0))(
  ( (Nil!67464) (Cons!67464 (h!73912 Context!12686) (t!381343 List!67588)) )
))
(declare-fun lt!2507952 () List!67588)

(declare-fun exists!3209 (List!67588 Int) Bool)

(assert (=> b!7015710 (exists!3209 lt!2507952 lambda!409870)))

(declare-fun lt!2507946 () Unit!161376)

(declare-fun lemmaZipperMatchesExistsMatchingContext!316 (List!67588 List!67587) Unit!161376)

(assert (=> b!7015710 (= lt!2507946 (lemmaZipperMatchesExistsMatchingContext!316 lt!2507952 s!7408))))

(declare-fun toList!10707 ((InoxSet Context!12686)) List!67588)

(assert (=> b!7015710 (= lt!2507952 (toList!10707 lt!2507956))))

(declare-fun b!7015711 () Bool)

(declare-fun e!4217302 () Bool)

(declare-fun e!4217305 () Bool)

(assert (=> b!7015711 (= e!4217302 e!4217305)))

(declare-fun res!2863275 () Bool)

(assert (=> b!7015711 (=> res!2863275 e!4217305)))

(declare-fun nullable!7107 (Regex!17347) Bool)

(assert (=> b!7015711 (= res!2863275 (nullable!7107 (h!73910 (exprs!6843 lt!2507958))))))

(assert (=> b!7015711 (= lt!2507944 (Context!12687 lt!2507955))))

(declare-fun tail!13435 (List!67586) List!67586)

(assert (=> b!7015711 (= lt!2507955 (tail!13435 (exprs!6843 lt!2507958)))))

(declare-fun e!4217299 () Bool)

(assert (=> b!7015712 (= e!4217306 e!4217299)))

(declare-fun res!2863269 () Bool)

(assert (=> b!7015712 (=> res!2863269 e!4217299)))

(declare-fun lt!2507943 () Context!12686)

(declare-fun z1!570 () (InoxSet Context!12686))

(assert (=> b!7015712 (= res!2863269 (or (not (= lt!2507943 lt!2507960)) (not (select z1!570 lt!2507958))))))

(declare-fun ++!15362 (List!67586 List!67586) List!67586)

(assert (=> b!7015712 (= lt!2507943 (Context!12687 (++!15362 (exprs!6843 lt!2507958) (exprs!6843 ct2!306))))))

(declare-fun lt!2507941 () Unit!161376)

(assert (=> b!7015712 (= lt!2507941 (lemmaConcatPreservesForall!683 (exprs!6843 lt!2507958) (exprs!6843 ct2!306) lambda!409872))))

(declare-fun lambda!409871 () Int)

(declare-fun mapPost2!202 ((InoxSet Context!12686) Int Context!12686) Context!12686)

(assert (=> b!7015712 (= lt!2507958 (mapPost2!202 z1!570 lambda!409871 lt!2507960))))

(declare-fun b!7015713 () Bool)

(declare-fun res!2863270 () Bool)

(assert (=> b!7015713 (=> res!2863270 e!4217302)))

(declare-fun isEmpty!39398 (List!67586) Bool)

(assert (=> b!7015713 (= res!2863270 (isEmpty!39398 (exprs!6843 lt!2507958)))))

(declare-fun b!7015714 () Bool)

(declare-fun res!2863271 () Bool)

(assert (=> b!7015714 (=> res!2863271 e!4217306)))

(assert (=> b!7015714 (= res!2863271 (not (select lt!2507956 lt!2507960)))))

(declare-fun b!7015715 () Bool)

(declare-fun e!4217301 () Bool)

(assert (=> b!7015715 (= e!4217299 e!4217301)))

(declare-fun res!2863268 () Bool)

(assert (=> b!7015715 (=> res!2863268 e!4217301)))

(declare-fun lt!2507947 () (InoxSet Context!12686))

(assert (=> b!7015715 (= res!2863268 (not (= lt!2507947 lt!2507948)))))

(assert (=> b!7015715 (= lt!2507947 (store ((as const (Array Context!12686 Bool)) false) lt!2507943 true))))

(declare-fun lt!2507940 () Unit!161376)

(assert (=> b!7015715 (= lt!2507940 (lemmaConcatPreservesForall!683 (exprs!6843 lt!2507958) (exprs!6843 ct2!306) lambda!409872))))

(declare-fun b!7015716 () Bool)

(declare-fun e!4217304 () Bool)

(declare-fun tp!1933169 () Bool)

(assert (=> b!7015716 (= e!4217304 tp!1933169)))

(declare-fun b!7015717 () Bool)

(declare-fun res!2863267 () Bool)

(assert (=> b!7015717 (=> res!2863267 e!4217302)))

(get-info :version)

(assert (=> b!7015717 (= res!2863267 (not ((_ is Cons!67462) (exprs!6843 lt!2507958))))))

(assert (=> b!7015719 (= e!4217301 e!4217302)))

(declare-fun res!2863274 () Bool)

(assert (=> b!7015719 (=> res!2863274 e!4217302)))

(declare-fun lt!2507945 () (InoxSet Context!12686))

(declare-fun derivationStepZipper!2827 ((InoxSet Context!12686) C!34964) (InoxSet Context!12686))

(assert (=> b!7015719 (= res!2863274 (not (= (derivationStepZipper!2827 lt!2507947 (h!73911 s!7408)) lt!2507945)))))

(declare-fun lambda!409873 () Int)

(declare-fun flatMap!2333 ((InoxSet Context!12686) Int) (InoxSet Context!12686))

(declare-fun derivationStepZipperUp!1997 (Context!12686 C!34964) (InoxSet Context!12686))

(assert (=> b!7015719 (= (flatMap!2333 lt!2507947 lambda!409873) (derivationStepZipperUp!1997 lt!2507943 (h!73911 s!7408)))))

(declare-fun lt!2507949 () Unit!161376)

(declare-fun lemmaFlatMapOnSingletonSet!1848 ((InoxSet Context!12686) Context!12686 Int) Unit!161376)

(assert (=> b!7015719 (= lt!2507949 (lemmaFlatMapOnSingletonSet!1848 lt!2507947 lt!2507943 lambda!409873))))

(assert (=> b!7015719 (= lt!2507945 (derivationStepZipperUp!1997 lt!2507943 (h!73911 s!7408)))))

(declare-fun lt!2507954 () Unit!161376)

(assert (=> b!7015719 (= lt!2507954 (lemmaConcatPreservesForall!683 (exprs!6843 lt!2507958) (exprs!6843 ct2!306) lambda!409872))))

(declare-fun b!7015720 () Bool)

(assert (=> b!7015720 (= e!4217305 e!4217300)))

(declare-fun res!2863265 () Bool)

(assert (=> b!7015720 (=> res!2863265 e!4217300)))

(assert (=> b!7015720 (= res!2863265 (not (matchZipper!2887 lt!2507942 (t!381342 s!7408))))))

(assert (=> b!7015720 (= lt!2507942 (derivationStepZipperDown!2065 (h!73910 (exprs!6843 lt!2507958)) (Context!12687 (++!15362 lt!2507955 (exprs!6843 ct2!306))) (h!73911 s!7408)))))

(declare-fun lt!2507959 () Unit!161376)

(assert (=> b!7015720 (= lt!2507959 (lemmaConcatPreservesForall!683 lt!2507955 (exprs!6843 ct2!306) lambda!409872))))

(declare-fun setRes!48510 () Bool)

(declare-fun setElem!48510 () Context!12686)

(declare-fun tp!1933168 () Bool)

(declare-fun setNonEmpty!48510 () Bool)

(declare-fun inv!86226 (Context!12686) Bool)

(assert (=> setNonEmpty!48510 (= setRes!48510 (and tp!1933168 (inv!86226 setElem!48510) e!4217303))))

(declare-fun setRest!48510 () (InoxSet Context!12686))

(assert (=> setNonEmpty!48510 (= z1!570 ((_ map or) (store ((as const (Array Context!12686 Bool)) false) setElem!48510 true) setRest!48510))))

(declare-fun b!7015721 () Bool)

(declare-fun res!2863266 () Bool)

(assert (=> b!7015721 (=> (not res!2863266) (not e!4217307))))

(assert (=> b!7015721 (= res!2863266 ((_ is Cons!67463) s!7408))))

(declare-fun setIsEmpty!48510 () Bool)

(assert (=> setIsEmpty!48510 setRes!48510))

(declare-fun res!2863272 () Bool)

(assert (=> start!676122 (=> (not res!2863272) (not e!4217307))))

(assert (=> start!676122 (= res!2863272 (matchZipper!2887 lt!2507956 s!7408))))

(assert (=> start!676122 (= lt!2507956 (appendTo!468 z1!570 ct2!306))))

(assert (=> start!676122 e!4217307))

(declare-fun condSetEmpty!48510 () Bool)

(assert (=> start!676122 (= condSetEmpty!48510 (= z1!570 ((as const (Array Context!12686 Bool)) false)))))

(assert (=> start!676122 setRes!48510))

(assert (=> start!676122 (and (inv!86226 ct2!306) e!4217304)))

(declare-fun e!4217308 () Bool)

(assert (=> start!676122 e!4217308))

(declare-fun b!7015718 () Bool)

(declare-fun tp_is_empty!43919 () Bool)

(declare-fun tp!1933166 () Bool)

(assert (=> b!7015718 (= e!4217308 (and tp_is_empty!43919 tp!1933166))))

(assert (= (and start!676122 res!2863272) b!7015721))

(assert (= (and b!7015721 res!2863266) b!7015710))

(assert (= (and b!7015710 (not res!2863273)) b!7015714))

(assert (= (and b!7015714 (not res!2863271)) b!7015712))

(assert (= (and b!7015712 (not res!2863269)) b!7015715))

(assert (= (and b!7015715 (not res!2863268)) b!7015719))

(assert (= (and b!7015719 (not res!2863274)) b!7015717))

(assert (= (and b!7015717 (not res!2863267)) b!7015713))

(assert (= (and b!7015713 (not res!2863270)) b!7015711))

(assert (= (and b!7015711 (not res!2863275)) b!7015720))

(assert (= (and b!7015720 (not res!2863265)) b!7015709))

(assert (= (and start!676122 condSetEmpty!48510) setIsEmpty!48510))

(assert (= (and start!676122 (not condSetEmpty!48510)) setNonEmpty!48510))

(assert (= setNonEmpty!48510 b!7015708))

(assert (= start!676122 b!7015716))

(assert (= (and start!676122 ((_ is Cons!67463) s!7408)) b!7015718))

(declare-fun m!7715202 () Bool)

(assert (=> b!7015711 m!7715202))

(declare-fun m!7715204 () Bool)

(assert (=> b!7015711 m!7715204))

(declare-fun m!7715206 () Bool)

(assert (=> b!7015713 m!7715206))

(declare-fun m!7715208 () Bool)

(assert (=> b!7015709 m!7715208))

(declare-fun m!7715210 () Bool)

(assert (=> b!7015709 m!7715210))

(declare-fun m!7715212 () Bool)

(assert (=> b!7015709 m!7715212))

(declare-fun m!7715214 () Bool)

(assert (=> b!7015709 m!7715214))

(assert (=> b!7015709 m!7715212))

(declare-fun m!7715216 () Bool)

(assert (=> b!7015709 m!7715216))

(declare-fun m!7715218 () Bool)

(assert (=> start!676122 m!7715218))

(declare-fun m!7715220 () Bool)

(assert (=> start!676122 m!7715220))

(declare-fun m!7715222 () Bool)

(assert (=> start!676122 m!7715222))

(declare-fun m!7715224 () Bool)

(assert (=> b!7015719 m!7715224))

(declare-fun m!7715226 () Bool)

(assert (=> b!7015719 m!7715226))

(declare-fun m!7715228 () Bool)

(assert (=> b!7015719 m!7715228))

(declare-fun m!7715230 () Bool)

(assert (=> b!7015719 m!7715230))

(declare-fun m!7715232 () Bool)

(assert (=> b!7015719 m!7715232))

(declare-fun m!7715234 () Bool)

(assert (=> b!7015714 m!7715234))

(declare-fun m!7715236 () Bool)

(assert (=> setNonEmpty!48510 m!7715236))

(declare-fun m!7715238 () Bool)

(assert (=> b!7015720 m!7715238))

(declare-fun m!7715240 () Bool)

(assert (=> b!7015720 m!7715240))

(declare-fun m!7715242 () Bool)

(assert (=> b!7015720 m!7715242))

(assert (=> b!7015720 m!7715208))

(declare-fun m!7715244 () Bool)

(assert (=> b!7015710 m!7715244))

(declare-fun m!7715246 () Bool)

(assert (=> b!7015710 m!7715246))

(declare-fun m!7715248 () Bool)

(assert (=> b!7015710 m!7715248))

(declare-fun m!7715250 () Bool)

(assert (=> b!7015710 m!7715250))

(declare-fun m!7715252 () Bool)

(assert (=> b!7015710 m!7715252))

(declare-fun m!7715254 () Bool)

(assert (=> b!7015710 m!7715254))

(declare-fun m!7715256 () Bool)

(assert (=> b!7015712 m!7715256))

(declare-fun m!7715258 () Bool)

(assert (=> b!7015712 m!7715258))

(assert (=> b!7015712 m!7715228))

(declare-fun m!7715260 () Bool)

(assert (=> b!7015712 m!7715260))

(declare-fun m!7715262 () Bool)

(assert (=> b!7015715 m!7715262))

(assert (=> b!7015715 m!7715228))

(check-sat (not b!7015710) (not b!7015708) (not b!7015715) (not b!7015713) (not b!7015709) (not setNonEmpty!48510) (not b!7015720) (not start!676122) tp_is_empty!43919 (not b!7015712) (not b!7015716) (not b!7015718) (not b!7015711) (not b!7015719))
(check-sat)
