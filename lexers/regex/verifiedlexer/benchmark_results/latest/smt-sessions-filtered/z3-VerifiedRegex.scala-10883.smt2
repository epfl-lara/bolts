; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562478 () Bool)

(assert start!562478)

(declare-fun b!5338334 () Bool)

(assert (=> b!5338334 true))

(assert (=> b!5338334 true))

(declare-fun lambda!273414 () Int)

(declare-fun lambda!273413 () Int)

(assert (=> b!5338334 (not (= lambda!273414 lambda!273413))))

(assert (=> b!5338334 true))

(assert (=> b!5338334 true))

(declare-fun b!5338315 () Bool)

(assert (=> b!5338315 true))

(declare-fun bs!1237944 () Bool)

(declare-fun b!5338327 () Bool)

(assert (= bs!1237944 (and b!5338327 b!5338334)))

(declare-fun lambda!273416 () Int)

(declare-datatypes ((C!30296 0))(
  ( (C!30297 (val!24850 Int)) )
))
(declare-datatypes ((Regex!15013 0))(
  ( (ElementMatch!15013 (c!928751 C!30296)) (Concat!23858 (regOne!30538 Regex!15013) (regTwo!30538 Regex!15013)) (EmptyExpr!15013) (Star!15013 (reg!15342 Regex!15013)) (EmptyLang!15013) (Union!15013 (regOne!30539 Regex!15013) (regTwo!30539 Regex!15013)) )
))
(declare-fun lt!2176910 () Regex!15013)

(declare-fun r!7292 () Regex!15013)

(assert (=> bs!1237944 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176910 (regTwo!30538 r!7292))) (= lambda!273416 lambda!273413))))

(assert (=> bs!1237944 (not (= lambda!273416 lambda!273414))))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(declare-fun lambda!273417 () Int)

(assert (=> bs!1237944 (not (= lambda!273417 lambda!273413))))

(assert (=> bs!1237944 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176910 (regTwo!30538 r!7292))) (= lambda!273417 lambda!273414))))

(assert (=> b!5338327 (not (= lambda!273417 lambda!273416))))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(declare-fun lambda!273418 () Int)

(declare-fun lt!2176921 () Regex!15013)

(assert (=> bs!1237944 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176921 (regTwo!30538 r!7292))) (= lambda!273418 lambda!273413))))

(assert (=> bs!1237944 (not (= lambda!273418 lambda!273414))))

(assert (=> b!5338327 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273418 lambda!273416))))

(assert (=> b!5338327 (not (= lambda!273418 lambda!273417))))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(declare-fun lambda!273419 () Int)

(assert (=> b!5338327 (not (= lambda!273419 lambda!273416))))

(assert (=> b!5338327 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273419 lambda!273417))))

(assert (=> bs!1237944 (not (= lambda!273419 lambda!273413))))

(assert (=> b!5338327 (not (= lambda!273419 lambda!273418))))

(assert (=> bs!1237944 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176921 (regTwo!30538 r!7292))) (= lambda!273419 lambda!273414))))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(assert (=> b!5338327 true))

(declare-fun b!5338300 () Bool)

(declare-fun e!3315026 () Bool)

(declare-fun validRegex!6749 (Regex!15013) Bool)

(assert (=> b!5338300 (= e!3315026 (validRegex!6749 (regTwo!30538 r!7292)))))

(declare-fun b!5338301 () Bool)

(declare-datatypes ((Unit!153570 0))(
  ( (Unit!153571) )
))
(declare-fun e!3315021 () Unit!153570)

(declare-fun Unit!153572 () Unit!153570)

(assert (=> b!5338301 (= e!3315021 Unit!153572)))

(declare-fun lt!2176903 () Unit!153570)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61338 0))(
  ( (Nil!61214) (Cons!61214 (h!67662 Regex!15013) (t!374555 List!61338)) )
))
(declare-datatypes ((Context!8794 0))(
  ( (Context!8795 (exprs!4897 List!61338)) )
))
(declare-fun lt!2176909 () (InoxSet Context!8794))

(declare-datatypes ((List!61339 0))(
  ( (Nil!61215) (Cons!61215 (h!67663 C!30296) (t!374556 List!61339)) )
))
(declare-fun s!2326 () List!61339)

(declare-fun lt!2176902 () (InoxSet Context!8794))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!250 ((InoxSet Context!8794) (InoxSet Context!8794) List!61339) Unit!153570)

(assert (=> b!5338301 (= lt!2176903 (lemmaZipperConcatMatchesSameAsBothZippers!250 lt!2176909 lt!2176902 (t!374556 s!2326)))))

(declare-fun res!2264460 () Bool)

(declare-fun matchZipper!1257 ((InoxSet Context!8794) List!61339) Bool)

(assert (=> b!5338301 (= res!2264460 (matchZipper!1257 lt!2176909 (t!374556 s!2326)))))

(declare-fun e!3315030 () Bool)

(assert (=> b!5338301 (=> res!2264460 e!3315030)))

(assert (=> b!5338301 (= (matchZipper!1257 ((_ map or) lt!2176909 lt!2176902) (t!374556 s!2326)) e!3315030)))

(declare-fun b!5338302 () Bool)

(assert (=> b!5338302 (= e!3315030 (matchZipper!1257 lt!2176902 (t!374556 s!2326)))))

(declare-fun b!5338303 () Bool)

(declare-fun e!3315014 () Bool)

(declare-fun e!3315028 () Bool)

(assert (=> b!5338303 (= e!3315014 e!3315028)))

(declare-fun res!2264445 () Bool)

(assert (=> b!5338303 (=> res!2264445 e!3315028)))

(declare-datatypes ((List!61340 0))(
  ( (Nil!61216) (Cons!61216 (h!67664 Context!8794) (t!374557 List!61340)) )
))
(declare-fun lt!2176924 () List!61340)

(declare-fun zl!343 () List!61340)

(declare-fun zipperDepthTotal!166 (List!61340) Int)

(assert (=> b!5338303 (= res!2264445 (>= (zipperDepthTotal!166 lt!2176924) (zipperDepthTotal!166 zl!343)))))

(declare-fun lt!2176915 () Context!8794)

(assert (=> b!5338303 (= lt!2176924 (Cons!61216 lt!2176915 Nil!61216))))

(declare-fun b!5338304 () Bool)

(declare-fun res!2264450 () Bool)

(assert (=> b!5338304 (=> res!2264450 e!3315028)))

(declare-fun zipperDepth!122 (List!61340) Int)

(assert (=> b!5338304 (= res!2264450 (> (zipperDepth!122 lt!2176924) (zipperDepth!122 zl!343)))))

(declare-fun b!5338305 () Bool)

(declare-fun res!2264440 () Bool)

(declare-fun e!3315018 () Bool)

(assert (=> b!5338305 (=> res!2264440 e!3315018)))

(get-info :version)

(assert (=> b!5338305 (= res!2264440 (not ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5338306 () Bool)

(declare-fun res!2264459 () Bool)

(assert (=> b!5338306 (=> res!2264459 e!3315018)))

(declare-fun generalisedConcat!682 (List!61338) Regex!15013)

(assert (=> b!5338306 (= res!2264459 (not (= r!7292 (generalisedConcat!682 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun setIsEmpty!34441 () Bool)

(declare-fun setRes!34441 () Bool)

(assert (=> setIsEmpty!34441 setRes!34441))

(declare-fun b!5338307 () Bool)

(declare-fun res!2264437 () Bool)

(assert (=> b!5338307 (=> res!2264437 e!3315014)))

(declare-fun contextDepthTotal!146 (Context!8794) Int)

(assert (=> b!5338307 (= res!2264437 (>= (contextDepthTotal!146 lt!2176915) (contextDepthTotal!146 (h!67664 zl!343))))))

(declare-fun b!5338308 () Bool)

(declare-fun res!2264451 () Bool)

(assert (=> b!5338308 (=> res!2264451 e!3315018)))

(declare-fun generalisedUnion!942 (List!61338) Regex!15013)

(declare-fun unfocusZipperList!455 (List!61340) List!61338)

(assert (=> b!5338308 (= res!2264451 (not (= r!7292 (generalisedUnion!942 (unfocusZipperList!455 zl!343)))))))

(declare-fun b!5338309 () Bool)

(declare-fun res!2264436 () Bool)

(assert (=> b!5338309 (=> res!2264436 e!3315018)))

(assert (=> b!5338309 (= res!2264436 (or ((_ is EmptyExpr!15013) r!7292) ((_ is EmptyLang!15013) r!7292) ((_ is ElementMatch!15013) r!7292) ((_ is Union!15013) r!7292) (not ((_ is Concat!23858) r!7292))))))

(declare-fun b!5338310 () Bool)

(declare-fun e!3315027 () Bool)

(declare-fun e!3315024 () Bool)

(assert (=> b!5338310 (= e!3315027 e!3315024)))

(declare-fun res!2264456 () Bool)

(assert (=> b!5338310 (=> res!2264456 e!3315024)))

(declare-fun lt!2176899 () Bool)

(declare-fun lt!2176898 () (InoxSet Context!8794))

(assert (=> b!5338310 (= res!2264456 (not (= lt!2176899 (matchZipper!1257 lt!2176898 (t!374556 s!2326)))))))

(assert (=> b!5338310 (= lt!2176899 (matchZipper!1257 lt!2176909 (t!374556 s!2326)))))

(declare-fun res!2264438 () Bool)

(declare-fun e!3315029 () Bool)

(assert (=> start!562478 (=> (not res!2264438) (not e!3315029))))

(assert (=> start!562478 (= res!2264438 (validRegex!6749 r!7292))))

(assert (=> start!562478 e!3315029))

(declare-fun e!3315022 () Bool)

(assert (=> start!562478 e!3315022))

(declare-fun condSetEmpty!34441 () Bool)

(declare-fun z!1189 () (InoxSet Context!8794))

(assert (=> start!562478 (= condSetEmpty!34441 (= z!1189 ((as const (Array Context!8794 Bool)) false)))))

(assert (=> start!562478 setRes!34441))

(declare-fun e!3315017 () Bool)

(assert (=> start!562478 e!3315017))

(declare-fun e!3315025 () Bool)

(assert (=> start!562478 e!3315025))

(declare-fun b!5338311 () Bool)

(assert (=> b!5338311 (= e!3315029 (not e!3315018))))

(declare-fun res!2264454 () Bool)

(assert (=> b!5338311 (=> res!2264454 e!3315018)))

(assert (=> b!5338311 (= res!2264454 (not ((_ is Cons!61216) zl!343)))))

(declare-fun lt!2176917 () Bool)

(declare-fun matchRSpec!2116 (Regex!15013 List!61339) Bool)

(assert (=> b!5338311 (= lt!2176917 (matchRSpec!2116 r!7292 s!2326))))

(declare-fun matchR!7198 (Regex!15013 List!61339) Bool)

(assert (=> b!5338311 (= lt!2176917 (matchR!7198 r!7292 s!2326))))

(declare-fun lt!2176920 () Unit!153570)

(declare-fun mainMatchTheorem!2116 (Regex!15013 List!61339) Unit!153570)

(assert (=> b!5338311 (= lt!2176920 (mainMatchTheorem!2116 r!7292 s!2326))))

(declare-fun b!5338312 () Bool)

(declare-fun tp_is_empty!39279 () Bool)

(assert (=> b!5338312 (= e!3315022 tp_is_empty!39279)))

(declare-fun b!5338313 () Bool)

(declare-fun res!2264446 () Bool)

(declare-fun e!3315023 () Bool)

(assert (=> b!5338313 (=> res!2264446 e!3315023)))

(assert (=> b!5338313 (= res!2264446 (not ((_ is Concat!23858) (regOne!30538 r!7292))))))

(declare-fun b!5338314 () Bool)

(declare-fun e!3315019 () Bool)

(declare-fun tp!1484689 () Bool)

(declare-fun inv!80779 (Context!8794) Bool)

(assert (=> b!5338314 (= e!3315017 (and (inv!80779 (h!67664 zl!343)) e!3315019 tp!1484689))))

(declare-fun e!3315016 () Bool)

(assert (=> b!5338315 (= e!3315016 e!3315023)))

(declare-fun res!2264444 () Bool)

(assert (=> b!5338315 (=> res!2264444 e!3315023)))

(assert (=> b!5338315 (= res!2264444 (or (and ((_ is ElementMatch!15013) (regOne!30538 r!7292)) (= (c!928751 (regOne!30538 r!7292)) (h!67663 s!2326))) ((_ is Union!15013) (regOne!30538 r!7292))))))

(declare-fun lt!2176919 () Unit!153570)

(assert (=> b!5338315 (= lt!2176919 e!3315021)))

(declare-fun c!928750 () Bool)

(declare-fun nullable!5182 (Regex!15013) Bool)

(assert (=> b!5338315 (= c!928750 (nullable!5182 (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun lambda!273415 () Int)

(declare-fun flatMap!740 ((InoxSet Context!8794) Int) (InoxSet Context!8794))

(declare-fun derivationStepZipperUp!385 (Context!8794 C!30296) (InoxSet Context!8794))

(assert (=> b!5338315 (= (flatMap!740 z!1189 lambda!273415) (derivationStepZipperUp!385 (h!67664 zl!343) (h!67663 s!2326)))))

(declare-fun lt!2176932 () Unit!153570)

(declare-fun lemmaFlatMapOnSingletonSet!272 ((InoxSet Context!8794) Context!8794 Int) Unit!153570)

(assert (=> b!5338315 (= lt!2176932 (lemmaFlatMapOnSingletonSet!272 z!1189 (h!67664 zl!343) lambda!273415))))

(declare-fun lt!2176908 () Context!8794)

(assert (=> b!5338315 (= lt!2176902 (derivationStepZipperUp!385 lt!2176908 (h!67663 s!2326)))))

(declare-fun derivationStepZipperDown!461 (Regex!15013 Context!8794 C!30296) (InoxSet Context!8794))

(assert (=> b!5338315 (= lt!2176909 (derivationStepZipperDown!461 (h!67662 (exprs!4897 (h!67664 zl!343))) lt!2176908 (h!67663 s!2326)))))

(assert (=> b!5338315 (= lt!2176908 (Context!8795 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun lt!2176929 () (InoxSet Context!8794))

(assert (=> b!5338315 (= lt!2176929 (derivationStepZipperUp!385 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343))))) (h!67663 s!2326)))))

(declare-fun b!5338316 () Bool)

(declare-fun e!3315015 () Bool)

(declare-fun tp!1484691 () Bool)

(assert (=> b!5338316 (= e!3315015 tp!1484691)))

(declare-fun b!5338317 () Bool)

(declare-fun tp!1484693 () Bool)

(assert (=> b!5338317 (= e!3315022 tp!1484693)))

(declare-fun b!5338318 () Bool)

(declare-fun res!2264455 () Bool)

(assert (=> b!5338318 (=> (not res!2264455) (not e!3315029))))

(declare-fun unfocusZipper!755 (List!61340) Regex!15013)

(assert (=> b!5338318 (= res!2264455 (= r!7292 (unfocusZipper!755 zl!343)))))

(declare-fun b!5338319 () Bool)

(declare-fun tp!1484688 () Bool)

(declare-fun tp!1484685 () Bool)

(assert (=> b!5338319 (= e!3315022 (and tp!1484688 tp!1484685))))

(declare-fun b!5338320 () Bool)

(declare-fun res!2264449 () Bool)

(assert (=> b!5338320 (=> (not res!2264449) (not e!3315029))))

(declare-fun toList!8797 ((InoxSet Context!8794)) List!61340)

(assert (=> b!5338320 (= res!2264449 (= (toList!8797 z!1189) zl!343))))

(declare-fun b!5338321 () Bool)

(declare-fun res!2264458 () Bool)

(assert (=> b!5338321 (=> res!2264458 e!3315023)))

(declare-fun e!3315020 () Bool)

(assert (=> b!5338321 (= res!2264458 e!3315020)))

(declare-fun res!2264439 () Bool)

(assert (=> b!5338321 (=> (not res!2264439) (not e!3315020))))

(assert (=> b!5338321 (= res!2264439 ((_ is Concat!23858) (regOne!30538 r!7292)))))

(declare-fun b!5338322 () Bool)

(assert (=> b!5338322 (= e!3315024 e!3315014)))

(declare-fun res!2264441 () Bool)

(assert (=> b!5338322 (=> res!2264441 e!3315014)))

(declare-fun lt!2176911 () (InoxSet Context!8794))

(assert (=> b!5338322 (= res!2264441 (not (= lt!2176911 lt!2176898)))))

(declare-fun lt!2176906 () (InoxSet Context!8794))

(assert (=> b!5338322 (= (flatMap!740 lt!2176906 lambda!273415) (derivationStepZipperUp!385 lt!2176915 (h!67663 s!2326)))))

(declare-fun lt!2176926 () Unit!153570)

(assert (=> b!5338322 (= lt!2176926 (lemmaFlatMapOnSingletonSet!272 lt!2176906 lt!2176915 lambda!273415))))

(declare-fun lt!2176907 () (InoxSet Context!8794))

(assert (=> b!5338322 (= lt!2176907 (derivationStepZipperUp!385 lt!2176915 (h!67663 s!2326)))))

(declare-fun derivationStepZipper!1254 ((InoxSet Context!8794) C!30296) (InoxSet Context!8794))

(assert (=> b!5338322 (= lt!2176911 (derivationStepZipper!1254 lt!2176906 (h!67663 s!2326)))))

(assert (=> b!5338322 (= lt!2176906 (store ((as const (Array Context!8794 Bool)) false) lt!2176915 true))))

(declare-fun lt!2176916 () List!61338)

(assert (=> b!5338322 (= lt!2176915 (Context!8795 lt!2176916))))

(declare-fun lt!2176914 () List!61338)

(assert (=> b!5338322 (= lt!2176916 (Cons!61214 (regOne!30538 (regOne!30538 r!7292)) lt!2176914))))

(declare-fun b!5338323 () Bool)

(declare-fun res!2264461 () Bool)

(assert (=> b!5338323 (=> res!2264461 e!3315018)))

(declare-fun isEmpty!33187 (List!61340) Bool)

(assert (=> b!5338323 (= res!2264461 (not (isEmpty!33187 (t!374557 zl!343))))))

(declare-fun b!5338324 () Bool)

(declare-fun tp!1484687 () Bool)

(declare-fun tp!1484684 () Bool)

(assert (=> b!5338324 (= e!3315022 (and tp!1484687 tp!1484684))))

(declare-fun b!5338325 () Bool)

(declare-fun tp!1484690 () Bool)

(assert (=> b!5338325 (= e!3315019 tp!1484690)))

(declare-fun b!5338326 () Bool)

(declare-fun Unit!153573 () Unit!153570)

(assert (=> b!5338326 (= e!3315021 Unit!153573)))

(assert (=> b!5338327 (= e!3315028 e!3315026)))

(declare-fun res!2264448 () Bool)

(assert (=> b!5338327 (=> res!2264448 e!3315026)))

(declare-fun lt!2176930 () Bool)

(declare-fun lt!2176904 () Bool)

(declare-fun lt!2176927 () Bool)

(assert (=> b!5338327 (= res!2264448 (or (not (= lt!2176927 lt!2176930)) (not (= lt!2176927 lt!2176904))))))

(assert (=> b!5338327 (= lt!2176927 (matchZipper!1257 z!1189 s!2326))))

(declare-fun Exists!2194 (Int) Bool)

(assert (=> b!5338327 (= (Exists!2194 lambda!273418) (Exists!2194 lambda!273419))))

(declare-fun lt!2176918 () Unit!153570)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!848 (Regex!15013 Regex!15013 List!61339) Unit!153570)

(assert (=> b!5338327 (= lt!2176918 (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326))))

(declare-datatypes ((tuple2!64424 0))(
  ( (tuple2!64425 (_1!35515 List!61339) (_2!35515 List!61339)) )
))
(declare-datatypes ((Option!15124 0))(
  ( (None!15123) (Some!15123 (v!51152 tuple2!64424)) )
))
(declare-fun isDefined!11827 (Option!15124) Bool)

(declare-fun findConcatSeparation!1538 (Regex!15013 Regex!15013 List!61339 List!61339 List!61339) Option!15124)

(assert (=> b!5338327 (= (isDefined!11827 (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 Nil!61215 s!2326 s!2326)) (Exists!2194 lambda!273418))))

(declare-fun lt!2176901 () Unit!153570)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1302 (Regex!15013 Regex!15013 List!61339) Unit!153570)

(assert (=> b!5338327 (= lt!2176901 (lemmaFindConcatSeparationEquivalentToExists!1302 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326))))

(assert (=> b!5338327 (= lt!2176921 (generalisedConcat!682 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(assert (=> b!5338327 (= (matchR!7198 lt!2176910 s!2326) (matchRSpec!2116 lt!2176910 s!2326))))

(declare-fun lt!2176923 () Unit!153570)

(assert (=> b!5338327 (= lt!2176923 (mainMatchTheorem!2116 lt!2176910 s!2326))))

(assert (=> b!5338327 (= (Exists!2194 lambda!273416) (Exists!2194 lambda!273417))))

(declare-fun lt!2176931 () Unit!153570)

(assert (=> b!5338327 (= lt!2176931 (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326))))

(assert (=> b!5338327 (= (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 Nil!61215 s!2326 s!2326)) (Exists!2194 lambda!273416))))

(declare-fun lt!2176905 () Unit!153570)

(assert (=> b!5338327 (= lt!2176905 (lemmaFindConcatSeparationEquivalentToExists!1302 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326))))

(assert (=> b!5338327 (= lt!2176910 (generalisedConcat!682 lt!2176914))))

(declare-fun lt!2176900 () Regex!15013)

(assert (=> b!5338327 (= lt!2176904 (matchRSpec!2116 lt!2176900 s!2326))))

(declare-fun lt!2176925 () Unit!153570)

(assert (=> b!5338327 (= lt!2176925 (mainMatchTheorem!2116 lt!2176900 s!2326))))

(assert (=> b!5338327 (= lt!2176904 lt!2176930)))

(assert (=> b!5338327 (= lt!2176930 (matchZipper!1257 lt!2176906 s!2326))))

(assert (=> b!5338327 (= lt!2176904 (matchR!7198 lt!2176900 s!2326))))

(declare-fun lt!2176928 () Unit!153570)

(declare-fun theoremZipperRegexEquiv!411 ((InoxSet Context!8794) List!61340 Regex!15013 List!61339) Unit!153570)

(assert (=> b!5338327 (= lt!2176928 (theoremZipperRegexEquiv!411 lt!2176906 lt!2176924 lt!2176900 s!2326))))

(assert (=> b!5338327 (= lt!2176900 (generalisedConcat!682 lt!2176916))))

(declare-fun b!5338328 () Bool)

(assert (=> b!5338328 (= e!3315020 (nullable!5182 (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun b!5338329 () Bool)

(declare-fun res!2264457 () Bool)

(assert (=> b!5338329 (=> res!2264457 e!3315014)))

(assert (=> b!5338329 (= res!2264457 (not (= lt!2176899 (matchZipper!1257 lt!2176911 (t!374556 s!2326)))))))

(declare-fun b!5338330 () Bool)

(declare-fun res!2264447 () Bool)

(assert (=> b!5338330 (=> res!2264447 e!3315014)))

(assert (=> b!5338330 (= res!2264447 (not (= (exprs!4897 (h!67664 zl!343)) (Cons!61214 (Concat!23858 (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (t!374555 (exprs!4897 (h!67664 zl!343)))))))))

(declare-fun b!5338331 () Bool)

(declare-fun res!2264443 () Bool)

(assert (=> b!5338331 (=> res!2264443 e!3315026)))

(assert (=> b!5338331 (= res!2264443 (not (validRegex!6749 (regOne!30538 r!7292))))))

(declare-fun b!5338332 () Bool)

(declare-fun res!2264442 () Bool)

(assert (=> b!5338332 (=> res!2264442 e!3315016)))

(declare-fun isEmpty!33188 (List!61338) Bool)

(assert (=> b!5338332 (= res!2264442 (isEmpty!33188 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5338333 () Bool)

(declare-fun tp!1484686 () Bool)

(assert (=> b!5338333 (= e!3315025 (and tp_is_empty!39279 tp!1484686))))

(assert (=> b!5338334 (= e!3315018 e!3315016)))

(declare-fun res!2264452 () Bool)

(assert (=> b!5338334 (=> res!2264452 e!3315016)))

(declare-fun lt!2176913 () Bool)

(assert (=> b!5338334 (= res!2264452 (or (not (= lt!2176917 lt!2176913)) ((_ is Nil!61215) s!2326)))))

(assert (=> b!5338334 (= (Exists!2194 lambda!273413) (Exists!2194 lambda!273414))))

(declare-fun lt!2176922 () Unit!153570)

(assert (=> b!5338334 (= lt!2176922 (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326))))

(assert (=> b!5338334 (= lt!2176913 (Exists!2194 lambda!273413))))

(assert (=> b!5338334 (= lt!2176913 (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) Nil!61215 s!2326 s!2326)))))

(declare-fun lt!2176912 () Unit!153570)

(assert (=> b!5338334 (= lt!2176912 (lemmaFindConcatSeparationEquivalentToExists!1302 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326))))

(declare-fun b!5338335 () Bool)

(assert (=> b!5338335 (= e!3315023 e!3315027)))

(declare-fun res!2264453 () Bool)

(assert (=> b!5338335 (=> res!2264453 e!3315027)))

(assert (=> b!5338335 (= res!2264453 (not (= lt!2176909 lt!2176898)))))

(assert (=> b!5338335 (= lt!2176898 (derivationStepZipperDown!461 (regOne!30538 (regOne!30538 r!7292)) (Context!8795 lt!2176914) (h!67663 s!2326)))))

(assert (=> b!5338335 (= lt!2176914 (Cons!61214 (regTwo!30538 (regOne!30538 r!7292)) (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun setElem!34441 () Context!8794)

(declare-fun setNonEmpty!34441 () Bool)

(declare-fun tp!1484692 () Bool)

(assert (=> setNonEmpty!34441 (= setRes!34441 (and tp!1484692 (inv!80779 setElem!34441) e!3315015))))

(declare-fun setRest!34441 () (InoxSet Context!8794))

(assert (=> setNonEmpty!34441 (= z!1189 ((_ map or) (store ((as const (Array Context!8794 Bool)) false) setElem!34441 true) setRest!34441))))

(assert (= (and start!562478 res!2264438) b!5338320))

(assert (= (and b!5338320 res!2264449) b!5338318))

(assert (= (and b!5338318 res!2264455) b!5338311))

(assert (= (and b!5338311 (not res!2264454)) b!5338323))

(assert (= (and b!5338323 (not res!2264461)) b!5338306))

(assert (= (and b!5338306 (not res!2264459)) b!5338305))

(assert (= (and b!5338305 (not res!2264440)) b!5338308))

(assert (= (and b!5338308 (not res!2264451)) b!5338309))

(assert (= (and b!5338309 (not res!2264436)) b!5338334))

(assert (= (and b!5338334 (not res!2264452)) b!5338332))

(assert (= (and b!5338332 (not res!2264442)) b!5338315))

(assert (= (and b!5338315 c!928750) b!5338301))

(assert (= (and b!5338315 (not c!928750)) b!5338326))

(assert (= (and b!5338301 (not res!2264460)) b!5338302))

(assert (= (and b!5338315 (not res!2264444)) b!5338321))

(assert (= (and b!5338321 res!2264439) b!5338328))

(assert (= (and b!5338321 (not res!2264458)) b!5338313))

(assert (= (and b!5338313 (not res!2264446)) b!5338335))

(assert (= (and b!5338335 (not res!2264453)) b!5338310))

(assert (= (and b!5338310 (not res!2264456)) b!5338322))

(assert (= (and b!5338322 (not res!2264441)) b!5338329))

(assert (= (and b!5338329 (not res!2264457)) b!5338330))

(assert (= (and b!5338330 (not res!2264447)) b!5338307))

(assert (= (and b!5338307 (not res!2264437)) b!5338303))

(assert (= (and b!5338303 (not res!2264445)) b!5338304))

(assert (= (and b!5338304 (not res!2264450)) b!5338327))

(assert (= (and b!5338327 (not res!2264448)) b!5338331))

(assert (= (and b!5338331 (not res!2264443)) b!5338300))

(assert (= (and start!562478 ((_ is ElementMatch!15013) r!7292)) b!5338312))

(assert (= (and start!562478 ((_ is Concat!23858) r!7292)) b!5338319))

(assert (= (and start!562478 ((_ is Star!15013) r!7292)) b!5338317))

(assert (= (and start!562478 ((_ is Union!15013) r!7292)) b!5338324))

(assert (= (and start!562478 condSetEmpty!34441) setIsEmpty!34441))

(assert (= (and start!562478 (not condSetEmpty!34441)) setNonEmpty!34441))

(assert (= setNonEmpty!34441 b!5338316))

(assert (= b!5338314 b!5338325))

(assert (= (and start!562478 ((_ is Cons!61216) zl!343)) b!5338314))

(assert (= (and start!562478 ((_ is Cons!61215) s!2326)) b!5338333))

(declare-fun m!6370894 () Bool)

(assert (=> b!5338322 m!6370894))

(declare-fun m!6370896 () Bool)

(assert (=> b!5338322 m!6370896))

(declare-fun m!6370898 () Bool)

(assert (=> b!5338322 m!6370898))

(declare-fun m!6370900 () Bool)

(assert (=> b!5338322 m!6370900))

(declare-fun m!6370902 () Bool)

(assert (=> b!5338322 m!6370902))

(declare-fun m!6370904 () Bool)

(assert (=> b!5338303 m!6370904))

(declare-fun m!6370906 () Bool)

(assert (=> b!5338303 m!6370906))

(declare-fun m!6370908 () Bool)

(assert (=> b!5338315 m!6370908))

(declare-fun m!6370910 () Bool)

(assert (=> b!5338315 m!6370910))

(declare-fun m!6370912 () Bool)

(assert (=> b!5338315 m!6370912))

(declare-fun m!6370914 () Bool)

(assert (=> b!5338315 m!6370914))

(declare-fun m!6370916 () Bool)

(assert (=> b!5338315 m!6370916))

(declare-fun m!6370918 () Bool)

(assert (=> b!5338315 m!6370918))

(declare-fun m!6370920 () Bool)

(assert (=> b!5338315 m!6370920))

(declare-fun m!6370922 () Bool)

(assert (=> start!562478 m!6370922))

(declare-fun m!6370924 () Bool)

(assert (=> b!5338335 m!6370924))

(declare-fun m!6370926 () Bool)

(assert (=> b!5338314 m!6370926))

(declare-fun m!6370928 () Bool)

(assert (=> b!5338307 m!6370928))

(declare-fun m!6370930 () Bool)

(assert (=> b!5338307 m!6370930))

(declare-fun m!6370932 () Bool)

(assert (=> b!5338308 m!6370932))

(assert (=> b!5338308 m!6370932))

(declare-fun m!6370934 () Bool)

(assert (=> b!5338308 m!6370934))

(declare-fun m!6370936 () Bool)

(assert (=> b!5338331 m!6370936))

(declare-fun m!6370938 () Bool)

(assert (=> b!5338327 m!6370938))

(declare-fun m!6370940 () Bool)

(assert (=> b!5338327 m!6370940))

(declare-fun m!6370942 () Bool)

(assert (=> b!5338327 m!6370942))

(declare-fun m!6370944 () Bool)

(assert (=> b!5338327 m!6370944))

(declare-fun m!6370946 () Bool)

(assert (=> b!5338327 m!6370946))

(declare-fun m!6370948 () Bool)

(assert (=> b!5338327 m!6370948))

(declare-fun m!6370950 () Bool)

(assert (=> b!5338327 m!6370950))

(declare-fun m!6370952 () Bool)

(assert (=> b!5338327 m!6370952))

(declare-fun m!6370954 () Bool)

(assert (=> b!5338327 m!6370954))

(declare-fun m!6370956 () Bool)

(assert (=> b!5338327 m!6370956))

(declare-fun m!6370958 () Bool)

(assert (=> b!5338327 m!6370958))

(assert (=> b!5338327 m!6370940))

(declare-fun m!6370960 () Bool)

(assert (=> b!5338327 m!6370960))

(declare-fun m!6370962 () Bool)

(assert (=> b!5338327 m!6370962))

(declare-fun m!6370964 () Bool)

(assert (=> b!5338327 m!6370964))

(declare-fun m!6370966 () Bool)

(assert (=> b!5338327 m!6370966))

(declare-fun m!6370968 () Bool)

(assert (=> b!5338327 m!6370968))

(assert (=> b!5338327 m!6370948))

(assert (=> b!5338327 m!6370950))

(declare-fun m!6370970 () Bool)

(assert (=> b!5338327 m!6370970))

(declare-fun m!6370972 () Bool)

(assert (=> b!5338327 m!6370972))

(declare-fun m!6370974 () Bool)

(assert (=> b!5338327 m!6370974))

(declare-fun m!6370976 () Bool)

(assert (=> b!5338327 m!6370976))

(declare-fun m!6370978 () Bool)

(assert (=> b!5338327 m!6370978))

(declare-fun m!6370980 () Bool)

(assert (=> b!5338327 m!6370980))

(assert (=> b!5338327 m!6370966))

(declare-fun m!6370982 () Bool)

(assert (=> b!5338327 m!6370982))

(declare-fun m!6370984 () Bool)

(assert (=> b!5338327 m!6370984))

(declare-fun m!6370986 () Bool)

(assert (=> b!5338311 m!6370986))

(declare-fun m!6370988 () Bool)

(assert (=> b!5338311 m!6370988))

(declare-fun m!6370990 () Bool)

(assert (=> b!5338311 m!6370990))

(declare-fun m!6370992 () Bool)

(assert (=> b!5338301 m!6370992))

(declare-fun m!6370994 () Bool)

(assert (=> b!5338301 m!6370994))

(declare-fun m!6370996 () Bool)

(assert (=> b!5338301 m!6370996))

(declare-fun m!6370998 () Bool)

(assert (=> b!5338304 m!6370998))

(declare-fun m!6371000 () Bool)

(assert (=> b!5338304 m!6371000))

(declare-fun m!6371002 () Bool)

(assert (=> b!5338306 m!6371002))

(declare-fun m!6371004 () Bool)

(assert (=> b!5338320 m!6371004))

(declare-fun m!6371006 () Bool)

(assert (=> setNonEmpty!34441 m!6371006))

(declare-fun m!6371008 () Bool)

(assert (=> b!5338334 m!6371008))

(declare-fun m!6371010 () Bool)

(assert (=> b!5338334 m!6371010))

(declare-fun m!6371012 () Bool)

(assert (=> b!5338334 m!6371012))

(assert (=> b!5338334 m!6371008))

(declare-fun m!6371014 () Bool)

(assert (=> b!5338334 m!6371014))

(declare-fun m!6371016 () Bool)

(assert (=> b!5338334 m!6371016))

(assert (=> b!5338334 m!6371010))

(declare-fun m!6371018 () Bool)

(assert (=> b!5338334 m!6371018))

(declare-fun m!6371020 () Bool)

(assert (=> b!5338318 m!6371020))

(declare-fun m!6371022 () Bool)

(assert (=> b!5338302 m!6371022))

(declare-fun m!6371024 () Bool)

(assert (=> b!5338332 m!6371024))

(declare-fun m!6371026 () Bool)

(assert (=> b!5338323 m!6371026))

(declare-fun m!6371028 () Bool)

(assert (=> b!5338328 m!6371028))

(declare-fun m!6371030 () Bool)

(assert (=> b!5338310 m!6371030))

(assert (=> b!5338310 m!6370994))

(declare-fun m!6371032 () Bool)

(assert (=> b!5338300 m!6371032))

(declare-fun m!6371034 () Bool)

(assert (=> b!5338329 m!6371034))

(check-sat (not b!5338317) (not b!5338328) (not b!5338320) (not b!5338332) (not b!5338303) (not start!562478) (not b!5338334) tp_is_empty!39279 (not b!5338315) (not b!5338310) (not b!5338304) (not b!5338327) (not b!5338322) (not b!5338333) (not b!5338335) (not setNonEmpty!34441) (not b!5338307) (not b!5338316) (not b!5338325) (not b!5338308) (not b!5338300) (not b!5338302) (not b!5338301) (not b!5338324) (not b!5338319) (not b!5338318) (not b!5338329) (not b!5338306) (not b!5338331) (not b!5338323) (not b!5338314) (not b!5338311))
(check-sat)
(get-model)

(declare-fun d!1713346 () Bool)

(declare-fun c!928792 () Bool)

(declare-fun isEmpty!33190 (List!61339) Bool)

(assert (=> d!1713346 (= c!928792 (isEmpty!33190 (t!374556 s!2326)))))

(declare-fun e!3315082 () Bool)

(assert (=> d!1713346 (= (matchZipper!1257 lt!2176898 (t!374556 s!2326)) e!3315082)))

(declare-fun b!5338433 () Bool)

(declare-fun nullableZipper!1364 ((InoxSet Context!8794)) Bool)

(assert (=> b!5338433 (= e!3315082 (nullableZipper!1364 lt!2176898))))

(declare-fun b!5338434 () Bool)

(declare-fun head!11446 (List!61339) C!30296)

(declare-fun tail!10543 (List!61339) List!61339)

(assert (=> b!5338434 (= e!3315082 (matchZipper!1257 (derivationStepZipper!1254 lt!2176898 (head!11446 (t!374556 s!2326))) (tail!10543 (t!374556 s!2326))))))

(assert (= (and d!1713346 c!928792) b!5338433))

(assert (= (and d!1713346 (not c!928792)) b!5338434))

(declare-fun m!6371084 () Bool)

(assert (=> d!1713346 m!6371084))

(declare-fun m!6371086 () Bool)

(assert (=> b!5338433 m!6371086))

(declare-fun m!6371088 () Bool)

(assert (=> b!5338434 m!6371088))

(assert (=> b!5338434 m!6371088))

(declare-fun m!6371090 () Bool)

(assert (=> b!5338434 m!6371090))

(declare-fun m!6371092 () Bool)

(assert (=> b!5338434 m!6371092))

(assert (=> b!5338434 m!6371090))

(assert (=> b!5338434 m!6371092))

(declare-fun m!6371094 () Bool)

(assert (=> b!5338434 m!6371094))

(assert (=> b!5338310 d!1713346))

(declare-fun d!1713350 () Bool)

(declare-fun c!928797 () Bool)

(assert (=> d!1713350 (= c!928797 (isEmpty!33190 (t!374556 s!2326)))))

(declare-fun e!3315089 () Bool)

(assert (=> d!1713350 (= (matchZipper!1257 lt!2176909 (t!374556 s!2326)) e!3315089)))

(declare-fun b!5338445 () Bool)

(assert (=> b!5338445 (= e!3315089 (nullableZipper!1364 lt!2176909))))

(declare-fun b!5338446 () Bool)

(assert (=> b!5338446 (= e!3315089 (matchZipper!1257 (derivationStepZipper!1254 lt!2176909 (head!11446 (t!374556 s!2326))) (tail!10543 (t!374556 s!2326))))))

(assert (= (and d!1713350 c!928797) b!5338445))

(assert (= (and d!1713350 (not c!928797)) b!5338446))

(assert (=> d!1713350 m!6371084))

(declare-fun m!6371116 () Bool)

(assert (=> b!5338445 m!6371116))

(assert (=> b!5338446 m!6371088))

(assert (=> b!5338446 m!6371088))

(declare-fun m!6371118 () Bool)

(assert (=> b!5338446 m!6371118))

(assert (=> b!5338446 m!6371092))

(assert (=> b!5338446 m!6371118))

(assert (=> b!5338446 m!6371092))

(declare-fun m!6371120 () Bool)

(assert (=> b!5338446 m!6371120))

(assert (=> b!5338310 d!1713350))

(declare-fun b!5338501 () Bool)

(declare-fun e!3315125 () Bool)

(declare-fun e!3315127 () Bool)

(assert (=> b!5338501 (= e!3315125 e!3315127)))

(declare-fun res!2264497 () Bool)

(assert (=> b!5338501 (= res!2264497 (not (nullable!5182 (reg!15342 (regOne!30538 r!7292)))))))

(assert (=> b!5338501 (=> (not res!2264497) (not e!3315127))))

(declare-fun b!5338502 () Bool)

(declare-fun res!2264493 () Bool)

(declare-fun e!3315131 () Bool)

(assert (=> b!5338502 (=> (not res!2264493) (not e!3315131))))

(declare-fun call!381603 () Bool)

(assert (=> b!5338502 (= res!2264493 call!381603)))

(declare-fun e!3315129 () Bool)

(assert (=> b!5338502 (= e!3315129 e!3315131)))

(declare-fun d!1713354 () Bool)

(declare-fun res!2264494 () Bool)

(declare-fun e!3315128 () Bool)

(assert (=> d!1713354 (=> res!2264494 e!3315128)))

(assert (=> d!1713354 (= res!2264494 ((_ is ElementMatch!15013) (regOne!30538 r!7292)))))

(assert (=> d!1713354 (= (validRegex!6749 (regOne!30538 r!7292)) e!3315128)))

(declare-fun b!5338503 () Bool)

(assert (=> b!5338503 (= e!3315125 e!3315129)))

(declare-fun c!928817 () Bool)

(assert (=> b!5338503 (= c!928817 ((_ is Union!15013) (regOne!30538 r!7292)))))

(declare-fun b!5338504 () Bool)

(declare-fun call!381604 () Bool)

(assert (=> b!5338504 (= e!3315127 call!381604)))

(declare-fun bm!381597 () Bool)

(declare-fun c!928818 () Bool)

(assert (=> bm!381597 (= call!381604 (validRegex!6749 (ite c!928818 (reg!15342 (regOne!30538 r!7292)) (ite c!928817 (regTwo!30539 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))))))))

(declare-fun b!5338505 () Bool)

(declare-fun res!2264495 () Bool)

(declare-fun e!3315126 () Bool)

(assert (=> b!5338505 (=> res!2264495 e!3315126)))

(assert (=> b!5338505 (= res!2264495 (not ((_ is Concat!23858) (regOne!30538 r!7292))))))

(assert (=> b!5338505 (= e!3315129 e!3315126)))

(declare-fun b!5338506 () Bool)

(declare-fun call!381602 () Bool)

(assert (=> b!5338506 (= e!3315131 call!381602)))

(declare-fun b!5338507 () Bool)

(declare-fun e!3315130 () Bool)

(assert (=> b!5338507 (= e!3315126 e!3315130)))

(declare-fun res!2264496 () Bool)

(assert (=> b!5338507 (=> (not res!2264496) (not e!3315130))))

(assert (=> b!5338507 (= res!2264496 call!381603)))

(declare-fun bm!381598 () Bool)

(assert (=> bm!381598 (= call!381602 call!381604)))

(declare-fun bm!381599 () Bool)

(assert (=> bm!381599 (= call!381603 (validRegex!6749 (ite c!928817 (regOne!30539 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292)))))))

(declare-fun b!5338508 () Bool)

(assert (=> b!5338508 (= e!3315130 call!381602)))

(declare-fun b!5338509 () Bool)

(assert (=> b!5338509 (= e!3315128 e!3315125)))

(assert (=> b!5338509 (= c!928818 ((_ is Star!15013) (regOne!30538 r!7292)))))

(assert (= (and d!1713354 (not res!2264494)) b!5338509))

(assert (= (and b!5338509 c!928818) b!5338501))

(assert (= (and b!5338509 (not c!928818)) b!5338503))

(assert (= (and b!5338501 res!2264497) b!5338504))

(assert (= (and b!5338503 c!928817) b!5338502))

(assert (= (and b!5338503 (not c!928817)) b!5338505))

(assert (= (and b!5338502 res!2264493) b!5338506))

(assert (= (and b!5338505 (not res!2264495)) b!5338507))

(assert (= (and b!5338507 res!2264496) b!5338508))

(assert (= (or b!5338506 b!5338508) bm!381598))

(assert (= (or b!5338502 b!5338507) bm!381599))

(assert (= (or b!5338504 bm!381598) bm!381597))

(declare-fun m!6371142 () Bool)

(assert (=> b!5338501 m!6371142))

(declare-fun m!6371144 () Bool)

(assert (=> bm!381597 m!6371144))

(declare-fun m!6371146 () Bool)

(assert (=> bm!381599 m!6371146))

(assert (=> b!5338331 d!1713354))

(declare-fun d!1713360 () Bool)

(assert (=> d!1713360 (= (isEmpty!33188 (t!374555 (exprs!4897 (h!67664 zl!343)))) ((_ is Nil!61214) (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(assert (=> b!5338332 d!1713360))

(declare-fun bs!1237963 () Bool)

(declare-fun b!5338597 () Bool)

(assert (= bs!1237963 (and b!5338597 b!5338327)))

(declare-fun lambda!273450 () Int)

(assert (=> bs!1237963 (not (= lambda!273450 lambda!273419))))

(assert (=> bs!1237963 (not (= lambda!273450 lambda!273416))))

(assert (=> bs!1237963 (not (= lambda!273450 lambda!273417))))

(declare-fun bs!1237965 () Bool)

(assert (= bs!1237965 (and b!5338597 b!5338334)))

(assert (=> bs!1237965 (not (= lambda!273450 lambda!273413))))

(assert (=> bs!1237963 (not (= lambda!273450 lambda!273418))))

(assert (=> bs!1237965 (not (= lambda!273450 lambda!273414))))

(assert (=> b!5338597 true))

(assert (=> b!5338597 true))

(declare-fun bs!1237969 () Bool)

(declare-fun b!5338603 () Bool)

(assert (= bs!1237969 (and b!5338603 b!5338327)))

(declare-fun lambda!273452 () Int)

(assert (=> bs!1237969 (= (and (= (regOne!30538 lt!2176910) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 lt!2176910) lt!2176921)) (= lambda!273452 lambda!273419))))

(assert (=> bs!1237969 (not (= lambda!273452 lambda!273416))))

(assert (=> bs!1237969 (= (and (= (regOne!30538 lt!2176910) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 lt!2176910) lt!2176910)) (= lambda!273452 lambda!273417))))

(declare-fun bs!1237973 () Bool)

(assert (= bs!1237973 (and b!5338603 b!5338597)))

(assert (=> bs!1237973 (not (= lambda!273452 lambda!273450))))

(declare-fun bs!1237975 () Bool)

(assert (= bs!1237975 (and b!5338603 b!5338334)))

(assert (=> bs!1237975 (not (= lambda!273452 lambda!273413))))

(assert (=> bs!1237969 (not (= lambda!273452 lambda!273418))))

(assert (=> bs!1237975 (= (and (= (regOne!30538 lt!2176910) (regOne!30538 r!7292)) (= (regTwo!30538 lt!2176910) (regTwo!30538 r!7292))) (= lambda!273452 lambda!273414))))

(assert (=> b!5338603 true))

(assert (=> b!5338603 true))

(declare-fun e!3315184 () Bool)

(declare-fun call!381613 () Bool)

(assert (=> b!5338597 (= e!3315184 call!381613)))

(declare-fun c!928842 () Bool)

(declare-fun bm!381608 () Bool)

(assert (=> bm!381608 (= call!381613 (Exists!2194 (ite c!928842 lambda!273450 lambda!273452)))))

(declare-fun d!1713366 () Bool)

(declare-fun c!928844 () Bool)

(assert (=> d!1713366 (= c!928844 ((_ is EmptyExpr!15013) lt!2176910))))

(declare-fun e!3315183 () Bool)

(assert (=> d!1713366 (= (matchRSpec!2116 lt!2176910 s!2326) e!3315183)))

(declare-fun b!5338598 () Bool)

(declare-fun e!3315181 () Bool)

(assert (=> b!5338598 (= e!3315183 e!3315181)))

(declare-fun res!2264542 () Bool)

(assert (=> b!5338598 (= res!2264542 (not ((_ is EmptyLang!15013) lt!2176910)))))

(assert (=> b!5338598 (=> (not res!2264542) (not e!3315181))))

(declare-fun b!5338599 () Bool)

(declare-fun e!3315186 () Bool)

(declare-fun e!3315187 () Bool)

(assert (=> b!5338599 (= e!3315186 e!3315187)))

(declare-fun res!2264541 () Bool)

(assert (=> b!5338599 (= res!2264541 (matchRSpec!2116 (regOne!30539 lt!2176910) s!2326))))

(assert (=> b!5338599 (=> res!2264541 e!3315187)))

(declare-fun b!5338600 () Bool)

(declare-fun e!3315185 () Bool)

(assert (=> b!5338600 (= e!3315185 (= s!2326 (Cons!61215 (c!928751 lt!2176910) Nil!61215)))))

(declare-fun b!5338601 () Bool)

(declare-fun res!2264543 () Bool)

(assert (=> b!5338601 (=> res!2264543 e!3315184)))

(declare-fun call!381614 () Bool)

(assert (=> b!5338601 (= res!2264543 call!381614)))

(declare-fun e!3315182 () Bool)

(assert (=> b!5338601 (= e!3315182 e!3315184)))

(declare-fun b!5338602 () Bool)

(assert (=> b!5338602 (= e!3315186 e!3315182)))

(assert (=> b!5338602 (= c!928842 ((_ is Star!15013) lt!2176910))))

(assert (=> b!5338603 (= e!3315182 call!381613)))

(declare-fun b!5338604 () Bool)

(declare-fun c!928843 () Bool)

(assert (=> b!5338604 (= c!928843 ((_ is Union!15013) lt!2176910))))

(assert (=> b!5338604 (= e!3315185 e!3315186)))

(declare-fun b!5338605 () Bool)

(assert (=> b!5338605 (= e!3315183 call!381614)))

(declare-fun bm!381609 () Bool)

(assert (=> bm!381609 (= call!381614 (isEmpty!33190 s!2326))))

(declare-fun b!5338606 () Bool)

(declare-fun c!928845 () Bool)

(assert (=> b!5338606 (= c!928845 ((_ is ElementMatch!15013) lt!2176910))))

(assert (=> b!5338606 (= e!3315181 e!3315185)))

(declare-fun b!5338607 () Bool)

(assert (=> b!5338607 (= e!3315187 (matchRSpec!2116 (regTwo!30539 lt!2176910) s!2326))))

(assert (= (and d!1713366 c!928844) b!5338605))

(assert (= (and d!1713366 (not c!928844)) b!5338598))

(assert (= (and b!5338598 res!2264542) b!5338606))

(assert (= (and b!5338606 c!928845) b!5338600))

(assert (= (and b!5338606 (not c!928845)) b!5338604))

(assert (= (and b!5338604 c!928843) b!5338599))

(assert (= (and b!5338604 (not c!928843)) b!5338602))

(assert (= (and b!5338599 (not res!2264541)) b!5338607))

(assert (= (and b!5338602 c!928842) b!5338601))

(assert (= (and b!5338602 (not c!928842)) b!5338603))

(assert (= (and b!5338601 (not res!2264543)) b!5338597))

(assert (= (or b!5338597 b!5338603) bm!381608))

(assert (= (or b!5338605 b!5338601) bm!381609))

(declare-fun m!6371200 () Bool)

(assert (=> bm!381608 m!6371200))

(declare-fun m!6371202 () Bool)

(assert (=> b!5338599 m!6371202))

(declare-fun m!6371204 () Bool)

(assert (=> bm!381609 m!6371204))

(declare-fun m!6371208 () Bool)

(assert (=> b!5338607 m!6371208))

(assert (=> b!5338327 d!1713366))

(declare-fun d!1713384 () Bool)

(declare-fun c!928851 () Bool)

(assert (=> d!1713384 (= c!928851 (isEmpty!33190 s!2326))))

(declare-fun e!3315196 () Bool)

(assert (=> d!1713384 (= (matchZipper!1257 z!1189 s!2326) e!3315196)))

(declare-fun b!5338621 () Bool)

(assert (=> b!5338621 (= e!3315196 (nullableZipper!1364 z!1189))))

(declare-fun b!5338622 () Bool)

(assert (=> b!5338622 (= e!3315196 (matchZipper!1257 (derivationStepZipper!1254 z!1189 (head!11446 s!2326)) (tail!10543 s!2326)))))

(assert (= (and d!1713384 c!928851) b!5338621))

(assert (= (and d!1713384 (not c!928851)) b!5338622))

(assert (=> d!1713384 m!6371204))

(declare-fun m!6371216 () Bool)

(assert (=> b!5338621 m!6371216))

(declare-fun m!6371218 () Bool)

(assert (=> b!5338622 m!6371218))

(assert (=> b!5338622 m!6371218))

(declare-fun m!6371222 () Bool)

(assert (=> b!5338622 m!6371222))

(declare-fun m!6371224 () Bool)

(assert (=> b!5338622 m!6371224))

(assert (=> b!5338622 m!6371222))

(assert (=> b!5338622 m!6371224))

(declare-fun m!6371226 () Bool)

(assert (=> b!5338622 m!6371226))

(assert (=> b!5338327 d!1713384))

(declare-fun bs!1237986 () Bool)

(declare-fun b!5338623 () Bool)

(assert (= bs!1237986 (and b!5338623 b!5338327)))

(declare-fun lambda!273456 () Int)

(assert (=> bs!1237986 (not (= lambda!273456 lambda!273419))))

(assert (=> bs!1237986 (not (= lambda!273456 lambda!273416))))

(declare-fun bs!1237987 () Bool)

(assert (= bs!1237987 (and b!5338623 b!5338603)))

(assert (=> bs!1237987 (not (= lambda!273456 lambda!273452))))

(assert (=> bs!1237986 (not (= lambda!273456 lambda!273417))))

(declare-fun bs!1237988 () Bool)

(assert (= bs!1237988 (and b!5338623 b!5338597)))

(assert (=> bs!1237988 (= (and (= (reg!15342 lt!2176900) (reg!15342 lt!2176910)) (= lt!2176900 lt!2176910)) (= lambda!273456 lambda!273450))))

(declare-fun bs!1237989 () Bool)

(assert (= bs!1237989 (and b!5338623 b!5338334)))

(assert (=> bs!1237989 (not (= lambda!273456 lambda!273413))))

(assert (=> bs!1237986 (not (= lambda!273456 lambda!273418))))

(assert (=> bs!1237989 (not (= lambda!273456 lambda!273414))))

(assert (=> b!5338623 true))

(assert (=> b!5338623 true))

(declare-fun bs!1237990 () Bool)

(declare-fun b!5338629 () Bool)

(assert (= bs!1237990 (and b!5338629 b!5338327)))

(declare-fun lambda!273457 () Int)

(assert (=> bs!1237990 (= (and (= (regOne!30538 lt!2176900) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 lt!2176900) lt!2176921)) (= lambda!273457 lambda!273419))))

(assert (=> bs!1237990 (not (= lambda!273457 lambda!273416))))

(declare-fun bs!1237991 () Bool)

(assert (= bs!1237991 (and b!5338629 b!5338603)))

(assert (=> bs!1237991 (= (and (= (regOne!30538 lt!2176900) (regOne!30538 lt!2176910)) (= (regTwo!30538 lt!2176900) (regTwo!30538 lt!2176910))) (= lambda!273457 lambda!273452))))

(assert (=> bs!1237990 (= (and (= (regOne!30538 lt!2176900) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 lt!2176900) lt!2176910)) (= lambda!273457 lambda!273417))))

(declare-fun bs!1237992 () Bool)

(assert (= bs!1237992 (and b!5338629 b!5338597)))

(assert (=> bs!1237992 (not (= lambda!273457 lambda!273450))))

(declare-fun bs!1237993 () Bool)

(assert (= bs!1237993 (and b!5338629 b!5338334)))

(assert (=> bs!1237993 (not (= lambda!273457 lambda!273413))))

(declare-fun bs!1237994 () Bool)

(assert (= bs!1237994 (and b!5338629 b!5338623)))

(assert (=> bs!1237994 (not (= lambda!273457 lambda!273456))))

(assert (=> bs!1237990 (not (= lambda!273457 lambda!273418))))

(assert (=> bs!1237993 (= (and (= (regOne!30538 lt!2176900) (regOne!30538 r!7292)) (= (regTwo!30538 lt!2176900) (regTwo!30538 r!7292))) (= lambda!273457 lambda!273414))))

(assert (=> b!5338629 true))

(assert (=> b!5338629 true))

(declare-fun e!3315200 () Bool)

(declare-fun call!381617 () Bool)

(assert (=> b!5338623 (= e!3315200 call!381617)))

(declare-fun c!928852 () Bool)

(declare-fun bm!381612 () Bool)

(assert (=> bm!381612 (= call!381617 (Exists!2194 (ite c!928852 lambda!273456 lambda!273457)))))

(declare-fun d!1713390 () Bool)

(declare-fun c!928854 () Bool)

(assert (=> d!1713390 (= c!928854 ((_ is EmptyExpr!15013) lt!2176900))))

(declare-fun e!3315199 () Bool)

(assert (=> d!1713390 (= (matchRSpec!2116 lt!2176900 s!2326) e!3315199)))

(declare-fun b!5338624 () Bool)

(declare-fun e!3315197 () Bool)

(assert (=> b!5338624 (= e!3315199 e!3315197)))

(declare-fun res!2264548 () Bool)

(assert (=> b!5338624 (= res!2264548 (not ((_ is EmptyLang!15013) lt!2176900)))))

(assert (=> b!5338624 (=> (not res!2264548) (not e!3315197))))

(declare-fun b!5338625 () Bool)

(declare-fun e!3315202 () Bool)

(declare-fun e!3315203 () Bool)

(assert (=> b!5338625 (= e!3315202 e!3315203)))

(declare-fun res!2264547 () Bool)

(assert (=> b!5338625 (= res!2264547 (matchRSpec!2116 (regOne!30539 lt!2176900) s!2326))))

(assert (=> b!5338625 (=> res!2264547 e!3315203)))

(declare-fun b!5338626 () Bool)

(declare-fun e!3315201 () Bool)

(assert (=> b!5338626 (= e!3315201 (= s!2326 (Cons!61215 (c!928751 lt!2176900) Nil!61215)))))

(declare-fun b!5338627 () Bool)

(declare-fun res!2264549 () Bool)

(assert (=> b!5338627 (=> res!2264549 e!3315200)))

(declare-fun call!381618 () Bool)

(assert (=> b!5338627 (= res!2264549 call!381618)))

(declare-fun e!3315198 () Bool)

(assert (=> b!5338627 (= e!3315198 e!3315200)))

(declare-fun b!5338628 () Bool)

(assert (=> b!5338628 (= e!3315202 e!3315198)))

(assert (=> b!5338628 (= c!928852 ((_ is Star!15013) lt!2176900))))

(assert (=> b!5338629 (= e!3315198 call!381617)))

(declare-fun b!5338630 () Bool)

(declare-fun c!928853 () Bool)

(assert (=> b!5338630 (= c!928853 ((_ is Union!15013) lt!2176900))))

(assert (=> b!5338630 (= e!3315201 e!3315202)))

(declare-fun b!5338631 () Bool)

(assert (=> b!5338631 (= e!3315199 call!381618)))

(declare-fun bm!381613 () Bool)

(assert (=> bm!381613 (= call!381618 (isEmpty!33190 s!2326))))

(declare-fun b!5338632 () Bool)

(declare-fun c!928855 () Bool)

(assert (=> b!5338632 (= c!928855 ((_ is ElementMatch!15013) lt!2176900))))

(assert (=> b!5338632 (= e!3315197 e!3315201)))

(declare-fun b!5338633 () Bool)

(assert (=> b!5338633 (= e!3315203 (matchRSpec!2116 (regTwo!30539 lt!2176900) s!2326))))

(assert (= (and d!1713390 c!928854) b!5338631))

(assert (= (and d!1713390 (not c!928854)) b!5338624))

(assert (= (and b!5338624 res!2264548) b!5338632))

(assert (= (and b!5338632 c!928855) b!5338626))

(assert (= (and b!5338632 (not c!928855)) b!5338630))

(assert (= (and b!5338630 c!928853) b!5338625))

(assert (= (and b!5338630 (not c!928853)) b!5338628))

(assert (= (and b!5338625 (not res!2264547)) b!5338633))

(assert (= (and b!5338628 c!928852) b!5338627))

(assert (= (and b!5338628 (not c!928852)) b!5338629))

(assert (= (and b!5338627 (not res!2264549)) b!5338623))

(assert (= (or b!5338623 b!5338629) bm!381612))

(assert (= (or b!5338631 b!5338627) bm!381613))

(declare-fun m!6371254 () Bool)

(assert (=> bm!381612 m!6371254))

(declare-fun m!6371256 () Bool)

(assert (=> b!5338625 m!6371256))

(assert (=> bm!381613 m!6371204))

(declare-fun m!6371258 () Bool)

(assert (=> b!5338633 m!6371258))

(assert (=> b!5338327 d!1713390))

(declare-fun d!1713400 () Bool)

(declare-fun choose!40008 (Int) Bool)

(assert (=> d!1713400 (= (Exists!2194 lambda!273419) (choose!40008 lambda!273419))))

(declare-fun bs!1237995 () Bool)

(assert (= bs!1237995 d!1713400))

(declare-fun m!6371260 () Bool)

(assert (=> bs!1237995 m!6371260))

(assert (=> b!5338327 d!1713400))

(declare-fun b!5338747 () Bool)

(declare-fun e!3315268 () Option!15124)

(assert (=> b!5338747 (= e!3315268 (Some!15123 (tuple2!64425 Nil!61215 s!2326)))))

(declare-fun b!5338748 () Bool)

(declare-fun lt!2176988 () Unit!153570)

(declare-fun lt!2176987 () Unit!153570)

(assert (=> b!5338748 (= lt!2176988 lt!2176987)))

(declare-fun ++!13344 (List!61339 List!61339) List!61339)

(assert (=> b!5338748 (= (++!13344 (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1759 (List!61339 C!30296 List!61339 List!61339) Unit!153570)

(assert (=> b!5338748 (= lt!2176987 (lemmaMoveElementToOtherListKeepsConcatEq!1759 Nil!61215 (h!67663 s!2326) (t!374556 s!2326) s!2326))))

(declare-fun e!3315267 () Option!15124)

(assert (=> b!5338748 (= e!3315267 (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326) s!2326))))

(declare-fun b!5338749 () Bool)

(assert (=> b!5338749 (= e!3315267 None!15123)))

(declare-fun b!5338750 () Bool)

(assert (=> b!5338750 (= e!3315268 e!3315267)))

(declare-fun c!928883 () Bool)

(assert (=> b!5338750 (= c!928883 ((_ is Nil!61215) s!2326))))

(declare-fun d!1713402 () Bool)

(declare-fun e!3315266 () Bool)

(assert (=> d!1713402 e!3315266))

(declare-fun res!2264609 () Bool)

(assert (=> d!1713402 (=> res!2264609 e!3315266)))

(declare-fun e!3315264 () Bool)

(assert (=> d!1713402 (= res!2264609 e!3315264)))

(declare-fun res!2264611 () Bool)

(assert (=> d!1713402 (=> (not res!2264611) (not e!3315264))))

(declare-fun lt!2176986 () Option!15124)

(assert (=> d!1713402 (= res!2264611 (isDefined!11827 lt!2176986))))

(assert (=> d!1713402 (= lt!2176986 e!3315268)))

(declare-fun c!928884 () Bool)

(declare-fun e!3315265 () Bool)

(assert (=> d!1713402 (= c!928884 e!3315265)))

(declare-fun res!2264610 () Bool)

(assert (=> d!1713402 (=> (not res!2264610) (not e!3315265))))

(assert (=> d!1713402 (= res!2264610 (matchR!7198 (regTwo!30538 (regOne!30538 r!7292)) Nil!61215))))

(assert (=> d!1713402 (validRegex!6749 (regTwo!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713402 (= (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 Nil!61215 s!2326 s!2326) lt!2176986)))

(declare-fun b!5338751 () Bool)

(assert (=> b!5338751 (= e!3315266 (not (isDefined!11827 lt!2176986)))))

(declare-fun b!5338752 () Bool)

(assert (=> b!5338752 (= e!3315265 (matchR!7198 lt!2176921 s!2326))))

(declare-fun b!5338753 () Bool)

(declare-fun res!2264613 () Bool)

(assert (=> b!5338753 (=> (not res!2264613) (not e!3315264))))

(declare-fun get!21056 (Option!15124) tuple2!64424)

(assert (=> b!5338753 (= res!2264613 (matchR!7198 lt!2176921 (_2!35515 (get!21056 lt!2176986))))))

(declare-fun b!5338754 () Bool)

(assert (=> b!5338754 (= e!3315264 (= (++!13344 (_1!35515 (get!21056 lt!2176986)) (_2!35515 (get!21056 lt!2176986))) s!2326))))

(declare-fun b!5338755 () Bool)

(declare-fun res!2264612 () Bool)

(assert (=> b!5338755 (=> (not res!2264612) (not e!3315264))))

(assert (=> b!5338755 (= res!2264612 (matchR!7198 (regTwo!30538 (regOne!30538 r!7292)) (_1!35515 (get!21056 lt!2176986))))))

(assert (= (and d!1713402 res!2264610) b!5338752))

(assert (= (and d!1713402 c!928884) b!5338747))

(assert (= (and d!1713402 (not c!928884)) b!5338750))

(assert (= (and b!5338750 c!928883) b!5338749))

(assert (= (and b!5338750 (not c!928883)) b!5338748))

(assert (= (and d!1713402 res!2264611) b!5338755))

(assert (= (and b!5338755 res!2264612) b!5338753))

(assert (= (and b!5338753 res!2264613) b!5338754))

(assert (= (and d!1713402 (not res!2264609)) b!5338751))

(declare-fun m!6371312 () Bool)

(assert (=> b!5338748 m!6371312))

(assert (=> b!5338748 m!6371312))

(declare-fun m!6371314 () Bool)

(assert (=> b!5338748 m!6371314))

(declare-fun m!6371316 () Bool)

(assert (=> b!5338748 m!6371316))

(assert (=> b!5338748 m!6371312))

(declare-fun m!6371318 () Bool)

(assert (=> b!5338748 m!6371318))

(declare-fun m!6371320 () Bool)

(assert (=> b!5338754 m!6371320))

(declare-fun m!6371322 () Bool)

(assert (=> b!5338754 m!6371322))

(assert (=> b!5338755 m!6371320))

(declare-fun m!6371324 () Bool)

(assert (=> b!5338755 m!6371324))

(declare-fun m!6371326 () Bool)

(assert (=> d!1713402 m!6371326))

(declare-fun m!6371328 () Bool)

(assert (=> d!1713402 m!6371328))

(declare-fun m!6371330 () Bool)

(assert (=> d!1713402 m!6371330))

(assert (=> b!5338753 m!6371320))

(declare-fun m!6371332 () Bool)

(assert (=> b!5338753 m!6371332))

(declare-fun m!6371334 () Bool)

(assert (=> b!5338752 m!6371334))

(assert (=> b!5338751 m!6371326))

(assert (=> b!5338327 d!1713402))

(declare-fun bs!1238021 () Bool)

(declare-fun d!1713416 () Bool)

(assert (= bs!1238021 (and d!1713416 b!5338327)))

(declare-fun lambda!273465 () Int)

(assert (=> bs!1238021 (not (= lambda!273465 lambda!273419))))

(assert (=> bs!1238021 (= lambda!273465 lambda!273416)))

(declare-fun bs!1238022 () Bool)

(assert (= bs!1238022 (and d!1713416 b!5338603)))

(assert (=> bs!1238022 (not (= lambda!273465 lambda!273452))))

(assert (=> bs!1238021 (not (= lambda!273465 lambda!273417))))

(declare-fun bs!1238023 () Bool)

(assert (= bs!1238023 (and d!1713416 b!5338334)))

(assert (=> bs!1238023 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176910 (regTwo!30538 r!7292))) (= lambda!273465 lambda!273413))))

(declare-fun bs!1238026 () Bool)

(assert (= bs!1238026 (and d!1713416 b!5338623)))

(assert (=> bs!1238026 (not (= lambda!273465 lambda!273456))))

(assert (=> bs!1238021 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273465 lambda!273418))))

(assert (=> bs!1238023 (not (= lambda!273465 lambda!273414))))

(declare-fun bs!1238030 () Bool)

(assert (= bs!1238030 (and d!1713416 b!5338629)))

(assert (=> bs!1238030 (not (= lambda!273465 lambda!273457))))

(declare-fun bs!1238032 () Bool)

(assert (= bs!1238032 (and d!1713416 b!5338597)))

(assert (=> bs!1238032 (not (= lambda!273465 lambda!273450))))

(assert (=> d!1713416 true))

(assert (=> d!1713416 true))

(assert (=> d!1713416 true))

(assert (=> d!1713416 (= (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 Nil!61215 s!2326 s!2326)) (Exists!2194 lambda!273465))))

(declare-fun lt!2177003 () Unit!153570)

(declare-fun choose!40010 (Regex!15013 Regex!15013 List!61339) Unit!153570)

(assert (=> d!1713416 (= lt!2177003 (choose!40010 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326))))

(assert (=> d!1713416 (validRegex!6749 (regOne!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713416 (= (lemmaFindConcatSeparationEquivalentToExists!1302 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326) lt!2177003)))

(declare-fun bs!1238035 () Bool)

(assert (= bs!1238035 d!1713416))

(assert (=> bs!1238035 m!6370950))

(assert (=> bs!1238035 m!6370970))

(assert (=> bs!1238035 m!6370950))

(declare-fun m!6371382 () Bool)

(assert (=> bs!1238035 m!6371382))

(declare-fun m!6371384 () Bool)

(assert (=> bs!1238035 m!6371384))

(declare-fun m!6371386 () Bool)

(assert (=> bs!1238035 m!6371386))

(assert (=> b!5338327 d!1713416))

(declare-fun b!5338860 () Bool)

(declare-fun e!3315336 () Regex!15013)

(declare-fun e!3315337 () Regex!15013)

(assert (=> b!5338860 (= e!3315336 e!3315337)))

(declare-fun c!928917 () Bool)

(assert (=> b!5338860 (= c!928917 ((_ is Cons!61214) lt!2176916))))

(declare-fun b!5338861 () Bool)

(assert (=> b!5338861 (= e!3315336 (h!67662 lt!2176916))))

(declare-fun b!5338862 () Bool)

(declare-fun e!3315335 () Bool)

(declare-fun lt!2177011 () Regex!15013)

(declare-fun head!11447 (List!61338) Regex!15013)

(assert (=> b!5338862 (= e!3315335 (= lt!2177011 (head!11447 lt!2176916)))))

(declare-fun b!5338863 () Bool)

(declare-fun e!3315340 () Bool)

(declare-fun isEmptyExpr!899 (Regex!15013) Bool)

(assert (=> b!5338863 (= e!3315340 (isEmptyExpr!899 lt!2177011))))

(declare-fun d!1713432 () Bool)

(declare-fun e!3315338 () Bool)

(assert (=> d!1713432 e!3315338))

(declare-fun res!2264659 () Bool)

(assert (=> d!1713432 (=> (not res!2264659) (not e!3315338))))

(assert (=> d!1713432 (= res!2264659 (validRegex!6749 lt!2177011))))

(assert (=> d!1713432 (= lt!2177011 e!3315336)))

(declare-fun c!928915 () Bool)

(declare-fun e!3315339 () Bool)

(assert (=> d!1713432 (= c!928915 e!3315339)))

(declare-fun res!2264658 () Bool)

(assert (=> d!1713432 (=> (not res!2264658) (not e!3315339))))

(assert (=> d!1713432 (= res!2264658 ((_ is Cons!61214) lt!2176916))))

(declare-fun lambda!273472 () Int)

(declare-fun forall!14435 (List!61338 Int) Bool)

(assert (=> d!1713432 (forall!14435 lt!2176916 lambda!273472)))

(assert (=> d!1713432 (= (generalisedConcat!682 lt!2176916) lt!2177011)))

(declare-fun b!5338864 () Bool)

(assert (=> b!5338864 (= e!3315337 EmptyExpr!15013)))

(declare-fun b!5338865 () Bool)

(assert (=> b!5338865 (= e!3315340 e!3315335)))

(declare-fun c!928918 () Bool)

(declare-fun tail!10544 (List!61338) List!61338)

(assert (=> b!5338865 (= c!928918 (isEmpty!33188 (tail!10544 lt!2176916)))))

(declare-fun b!5338866 () Bool)

(assert (=> b!5338866 (= e!3315338 e!3315340)))

(declare-fun c!928916 () Bool)

(assert (=> b!5338866 (= c!928916 (isEmpty!33188 lt!2176916))))

(declare-fun b!5338867 () Bool)

(assert (=> b!5338867 (= e!3315339 (isEmpty!33188 (t!374555 lt!2176916)))))

(declare-fun b!5338868 () Bool)

(assert (=> b!5338868 (= e!3315337 (Concat!23858 (h!67662 lt!2176916) (generalisedConcat!682 (t!374555 lt!2176916))))))

(declare-fun b!5338869 () Bool)

(declare-fun isConcat!422 (Regex!15013) Bool)

(assert (=> b!5338869 (= e!3315335 (isConcat!422 lt!2177011))))

(assert (= (and d!1713432 res!2264658) b!5338867))

(assert (= (and d!1713432 c!928915) b!5338861))

(assert (= (and d!1713432 (not c!928915)) b!5338860))

(assert (= (and b!5338860 c!928917) b!5338868))

(assert (= (and b!5338860 (not c!928917)) b!5338864))

(assert (= (and d!1713432 res!2264659) b!5338866))

(assert (= (and b!5338866 c!928916) b!5338863))

(assert (= (and b!5338866 (not c!928916)) b!5338865))

(assert (= (and b!5338865 c!928918) b!5338862))

(assert (= (and b!5338865 (not c!928918)) b!5338869))

(declare-fun m!6371444 () Bool)

(assert (=> b!5338865 m!6371444))

(assert (=> b!5338865 m!6371444))

(declare-fun m!6371446 () Bool)

(assert (=> b!5338865 m!6371446))

(declare-fun m!6371448 () Bool)

(assert (=> b!5338863 m!6371448))

(declare-fun m!6371450 () Bool)

(assert (=> d!1713432 m!6371450))

(declare-fun m!6371452 () Bool)

(assert (=> d!1713432 m!6371452))

(declare-fun m!6371454 () Bool)

(assert (=> b!5338868 m!6371454))

(declare-fun m!6371456 () Bool)

(assert (=> b!5338862 m!6371456))

(declare-fun m!6371458 () Bool)

(assert (=> b!5338869 m!6371458))

(declare-fun m!6371460 () Bool)

(assert (=> b!5338866 m!6371460))

(declare-fun m!6371462 () Bool)

(assert (=> b!5338867 m!6371462))

(assert (=> b!5338327 d!1713432))

(declare-fun d!1713450 () Bool)

(declare-fun isEmpty!33192 (Option!15124) Bool)

(assert (=> d!1713450 (= (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 Nil!61215 s!2326 s!2326)) (not (isEmpty!33192 (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 Nil!61215 s!2326 s!2326))))))

(declare-fun bs!1238075 () Bool)

(assert (= bs!1238075 d!1713450))

(assert (=> bs!1238075 m!6370950))

(declare-fun m!6371464 () Bool)

(assert (=> bs!1238075 m!6371464))

(assert (=> b!5338327 d!1713450))

(declare-fun bs!1238077 () Bool)

(declare-fun d!1713452 () Bool)

(assert (= bs!1238077 (and d!1713452 d!1713432)))

(declare-fun lambda!273475 () Int)

(assert (=> bs!1238077 (= lambda!273475 lambda!273472)))

(declare-fun b!5338870 () Bool)

(declare-fun e!3315342 () Regex!15013)

(declare-fun e!3315343 () Regex!15013)

(assert (=> b!5338870 (= e!3315342 e!3315343)))

(declare-fun c!928921 () Bool)

(assert (=> b!5338870 (= c!928921 ((_ is Cons!61214) lt!2176914))))

(declare-fun b!5338871 () Bool)

(assert (=> b!5338871 (= e!3315342 (h!67662 lt!2176914))))

(declare-fun b!5338872 () Bool)

(declare-fun e!3315341 () Bool)

(declare-fun lt!2177013 () Regex!15013)

(assert (=> b!5338872 (= e!3315341 (= lt!2177013 (head!11447 lt!2176914)))))

(declare-fun b!5338873 () Bool)

(declare-fun e!3315346 () Bool)

(assert (=> b!5338873 (= e!3315346 (isEmptyExpr!899 lt!2177013))))

(declare-fun e!3315344 () Bool)

(assert (=> d!1713452 e!3315344))

(declare-fun res!2264661 () Bool)

(assert (=> d!1713452 (=> (not res!2264661) (not e!3315344))))

(assert (=> d!1713452 (= res!2264661 (validRegex!6749 lt!2177013))))

(assert (=> d!1713452 (= lt!2177013 e!3315342)))

(declare-fun c!928919 () Bool)

(declare-fun e!3315345 () Bool)

(assert (=> d!1713452 (= c!928919 e!3315345)))

(declare-fun res!2264660 () Bool)

(assert (=> d!1713452 (=> (not res!2264660) (not e!3315345))))

(assert (=> d!1713452 (= res!2264660 ((_ is Cons!61214) lt!2176914))))

(assert (=> d!1713452 (forall!14435 lt!2176914 lambda!273475)))

(assert (=> d!1713452 (= (generalisedConcat!682 lt!2176914) lt!2177013)))

(declare-fun b!5338874 () Bool)

(assert (=> b!5338874 (= e!3315343 EmptyExpr!15013)))

(declare-fun b!5338875 () Bool)

(assert (=> b!5338875 (= e!3315346 e!3315341)))

(declare-fun c!928922 () Bool)

(assert (=> b!5338875 (= c!928922 (isEmpty!33188 (tail!10544 lt!2176914)))))

(declare-fun b!5338876 () Bool)

(assert (=> b!5338876 (= e!3315344 e!3315346)))

(declare-fun c!928920 () Bool)

(assert (=> b!5338876 (= c!928920 (isEmpty!33188 lt!2176914))))

(declare-fun b!5338877 () Bool)

(assert (=> b!5338877 (= e!3315345 (isEmpty!33188 (t!374555 lt!2176914)))))

(declare-fun b!5338878 () Bool)

(assert (=> b!5338878 (= e!3315343 (Concat!23858 (h!67662 lt!2176914) (generalisedConcat!682 (t!374555 lt!2176914))))))

(declare-fun b!5338879 () Bool)

(assert (=> b!5338879 (= e!3315341 (isConcat!422 lt!2177013))))

(assert (= (and d!1713452 res!2264660) b!5338877))

(assert (= (and d!1713452 c!928919) b!5338871))

(assert (= (and d!1713452 (not c!928919)) b!5338870))

(assert (= (and b!5338870 c!928921) b!5338878))

(assert (= (and b!5338870 (not c!928921)) b!5338874))

(assert (= (and d!1713452 res!2264661) b!5338876))

(assert (= (and b!5338876 c!928920) b!5338873))

(assert (= (and b!5338876 (not c!928920)) b!5338875))

(assert (= (and b!5338875 c!928922) b!5338872))

(assert (= (and b!5338875 (not c!928922)) b!5338879))

(declare-fun m!6371466 () Bool)

(assert (=> b!5338875 m!6371466))

(assert (=> b!5338875 m!6371466))

(declare-fun m!6371468 () Bool)

(assert (=> b!5338875 m!6371468))

(declare-fun m!6371470 () Bool)

(assert (=> b!5338873 m!6371470))

(declare-fun m!6371472 () Bool)

(assert (=> d!1713452 m!6371472))

(declare-fun m!6371474 () Bool)

(assert (=> d!1713452 m!6371474))

(declare-fun m!6371476 () Bool)

(assert (=> b!5338878 m!6371476))

(declare-fun m!6371480 () Bool)

(assert (=> b!5338872 m!6371480))

(declare-fun m!6371484 () Bool)

(assert (=> b!5338879 m!6371484))

(declare-fun m!6371488 () Bool)

(assert (=> b!5338876 m!6371488))

(declare-fun m!6371490 () Bool)

(assert (=> b!5338877 m!6371490))

(assert (=> b!5338327 d!1713452))

(declare-fun d!1713456 () Bool)

(assert (=> d!1713456 (= (matchR!7198 lt!2176900 s!2326) (matchZipper!1257 lt!2176906 s!2326))))

(declare-fun lt!2177016 () Unit!153570)

(declare-fun choose!40012 ((InoxSet Context!8794) List!61340 Regex!15013 List!61339) Unit!153570)

(assert (=> d!1713456 (= lt!2177016 (choose!40012 lt!2176906 lt!2176924 lt!2176900 s!2326))))

(assert (=> d!1713456 (validRegex!6749 lt!2176900)))

(assert (=> d!1713456 (= (theoremZipperRegexEquiv!411 lt!2176906 lt!2176924 lt!2176900 s!2326) lt!2177016)))

(declare-fun bs!1238099 () Bool)

(assert (= bs!1238099 d!1713456))

(assert (=> bs!1238099 m!6370962))

(assert (=> bs!1238099 m!6370972))

(declare-fun m!6371500 () Bool)

(assert (=> bs!1238099 m!6371500))

(declare-fun m!6371502 () Bool)

(assert (=> bs!1238099 m!6371502))

(assert (=> b!5338327 d!1713456))

(declare-fun d!1713462 () Bool)

(assert (=> d!1713462 (= (Exists!2194 lambda!273418) (choose!40008 lambda!273418))))

(declare-fun bs!1238102 () Bool)

(assert (= bs!1238102 d!1713462))

(declare-fun m!6371504 () Bool)

(assert (=> bs!1238102 m!6371504))

(assert (=> b!5338327 d!1713462))

(declare-fun b!5338968 () Bool)

(declare-fun e!3315398 () Bool)

(declare-fun e!3315400 () Bool)

(assert (=> b!5338968 (= e!3315398 e!3315400)))

(declare-fun c!928951 () Bool)

(assert (=> b!5338968 (= c!928951 ((_ is EmptyLang!15013) lt!2176900))))

(declare-fun bm!381646 () Bool)

(declare-fun call!381651 () Bool)

(assert (=> bm!381646 (= call!381651 (isEmpty!33190 s!2326))))

(declare-fun b!5338969 () Bool)

(declare-fun lt!2177025 () Bool)

(assert (=> b!5338969 (= e!3315400 (not lt!2177025))))

(declare-fun b!5338970 () Bool)

(assert (=> b!5338970 (= e!3315398 (= lt!2177025 call!381651))))

(declare-fun b!5338971 () Bool)

(declare-fun res!2264698 () Bool)

(declare-fun e!3315397 () Bool)

(assert (=> b!5338971 (=> (not res!2264698) (not e!3315397))))

(assert (=> b!5338971 (= res!2264698 (isEmpty!33190 (tail!10543 s!2326)))))

(declare-fun b!5338972 () Bool)

(declare-fun e!3315402 () Bool)

(assert (=> b!5338972 (= e!3315402 (not (= (head!11446 s!2326) (c!928751 lt!2176900))))))

(declare-fun b!5338973 () Bool)

(declare-fun e!3315401 () Bool)

(declare-fun e!3315403 () Bool)

(assert (=> b!5338973 (= e!3315401 e!3315403)))

(declare-fun res!2264702 () Bool)

(assert (=> b!5338973 (=> (not res!2264702) (not e!3315403))))

(assert (=> b!5338973 (= res!2264702 (not lt!2177025))))

(declare-fun b!5338974 () Bool)

(declare-fun res!2264704 () Bool)

(assert (=> b!5338974 (=> res!2264704 e!3315401)))

(assert (=> b!5338974 (= res!2264704 (not ((_ is ElementMatch!15013) lt!2176900)))))

(assert (=> b!5338974 (= e!3315400 e!3315401)))

(declare-fun b!5338976 () Bool)

(declare-fun res!2264703 () Bool)

(assert (=> b!5338976 (=> res!2264703 e!3315401)))

(assert (=> b!5338976 (= res!2264703 e!3315397)))

(declare-fun res!2264699 () Bool)

(assert (=> b!5338976 (=> (not res!2264699) (not e!3315397))))

(assert (=> b!5338976 (= res!2264699 lt!2177025)))

(declare-fun b!5338977 () Bool)

(assert (=> b!5338977 (= e!3315397 (= (head!11446 s!2326) (c!928751 lt!2176900)))))

(declare-fun b!5338978 () Bool)

(assert (=> b!5338978 (= e!3315403 e!3315402)))

(declare-fun res!2264700 () Bool)

(assert (=> b!5338978 (=> res!2264700 e!3315402)))

(assert (=> b!5338978 (= res!2264700 call!381651)))

(declare-fun b!5338979 () Bool)

(declare-fun res!2264701 () Bool)

(assert (=> b!5338979 (=> res!2264701 e!3315402)))

(assert (=> b!5338979 (= res!2264701 (not (isEmpty!33190 (tail!10543 s!2326))))))

(declare-fun b!5338980 () Bool)

(declare-fun res!2264705 () Bool)

(assert (=> b!5338980 (=> (not res!2264705) (not e!3315397))))

(assert (=> b!5338980 (= res!2264705 (not call!381651))))

(declare-fun b!5338981 () Bool)

(declare-fun e!3315399 () Bool)

(assert (=> b!5338981 (= e!3315399 (nullable!5182 lt!2176900))))

(declare-fun d!1713464 () Bool)

(assert (=> d!1713464 e!3315398))

(declare-fun c!928950 () Bool)

(assert (=> d!1713464 (= c!928950 ((_ is EmptyExpr!15013) lt!2176900))))

(assert (=> d!1713464 (= lt!2177025 e!3315399)))

(declare-fun c!928949 () Bool)

(assert (=> d!1713464 (= c!928949 (isEmpty!33190 s!2326))))

(assert (=> d!1713464 (validRegex!6749 lt!2176900)))

(assert (=> d!1713464 (= (matchR!7198 lt!2176900 s!2326) lt!2177025)))

(declare-fun b!5338975 () Bool)

(declare-fun derivativeStep!4185 (Regex!15013 C!30296) Regex!15013)

(assert (=> b!5338975 (= e!3315399 (matchR!7198 (derivativeStep!4185 lt!2176900 (head!11446 s!2326)) (tail!10543 s!2326)))))

(assert (= (and d!1713464 c!928949) b!5338981))

(assert (= (and d!1713464 (not c!928949)) b!5338975))

(assert (= (and d!1713464 c!928950) b!5338970))

(assert (= (and d!1713464 (not c!928950)) b!5338968))

(assert (= (and b!5338968 c!928951) b!5338969))

(assert (= (and b!5338968 (not c!928951)) b!5338974))

(assert (= (and b!5338974 (not res!2264704)) b!5338976))

(assert (= (and b!5338976 res!2264699) b!5338980))

(assert (= (and b!5338980 res!2264705) b!5338971))

(assert (= (and b!5338971 res!2264698) b!5338977))

(assert (= (and b!5338976 (not res!2264703)) b!5338973))

(assert (= (and b!5338973 res!2264702) b!5338978))

(assert (= (and b!5338978 (not res!2264700)) b!5338979))

(assert (= (and b!5338979 (not res!2264701)) b!5338972))

(assert (= (or b!5338970 b!5338980 b!5338978) bm!381646))

(assert (=> d!1713464 m!6371204))

(assert (=> d!1713464 m!6371502))

(assert (=> b!5338977 m!6371218))

(assert (=> b!5338972 m!6371218))

(assert (=> b!5338975 m!6371218))

(assert (=> b!5338975 m!6371218))

(declare-fun m!6371558 () Bool)

(assert (=> b!5338975 m!6371558))

(assert (=> b!5338975 m!6371224))

(assert (=> b!5338975 m!6371558))

(assert (=> b!5338975 m!6371224))

(declare-fun m!6371560 () Bool)

(assert (=> b!5338975 m!6371560))

(assert (=> b!5338971 m!6371224))

(assert (=> b!5338971 m!6371224))

(declare-fun m!6371562 () Bool)

(assert (=> b!5338971 m!6371562))

(assert (=> bm!381646 m!6371204))

(assert (=> b!5338979 m!6371224))

(assert (=> b!5338979 m!6371224))

(assert (=> b!5338979 m!6371562))

(declare-fun m!6371564 () Bool)

(assert (=> b!5338981 m!6371564))

(assert (=> b!5338327 d!1713464))

(declare-fun bs!1238111 () Bool)

(declare-fun d!1713488 () Bool)

(assert (= bs!1238111 (and d!1713488 b!5338327)))

(declare-fun lambda!273478 () Int)

(assert (=> bs!1238111 (not (= lambda!273478 lambda!273419))))

(assert (=> bs!1238111 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273478 lambda!273416))))

(declare-fun bs!1238112 () Bool)

(assert (= bs!1238112 (and d!1713488 b!5338603)))

(assert (=> bs!1238112 (not (= lambda!273478 lambda!273452))))

(assert (=> bs!1238111 (not (= lambda!273478 lambda!273417))))

(declare-fun bs!1238113 () Bool)

(assert (= bs!1238113 (and d!1713488 b!5338334)))

(assert (=> bs!1238113 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176921 (regTwo!30538 r!7292))) (= lambda!273478 lambda!273413))))

(declare-fun bs!1238114 () Bool)

(assert (= bs!1238114 (and d!1713488 b!5338623)))

(assert (=> bs!1238114 (not (= lambda!273478 lambda!273456))))

(assert (=> bs!1238111 (= lambda!273478 lambda!273418)))

(assert (=> bs!1238113 (not (= lambda!273478 lambda!273414))))

(declare-fun bs!1238115 () Bool)

(assert (= bs!1238115 (and d!1713488 b!5338629)))

(assert (=> bs!1238115 (not (= lambda!273478 lambda!273457))))

(declare-fun bs!1238116 () Bool)

(assert (= bs!1238116 (and d!1713488 b!5338597)))

(assert (=> bs!1238116 (not (= lambda!273478 lambda!273450))))

(declare-fun bs!1238117 () Bool)

(assert (= bs!1238117 (and d!1713488 d!1713416)))

(assert (=> bs!1238117 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273478 lambda!273465))))

(assert (=> d!1713488 true))

(assert (=> d!1713488 true))

(assert (=> d!1713488 true))

(assert (=> d!1713488 (= (isDefined!11827 (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 Nil!61215 s!2326 s!2326)) (Exists!2194 lambda!273478))))

(declare-fun lt!2177026 () Unit!153570)

(assert (=> d!1713488 (= lt!2177026 (choose!40010 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326))))

(assert (=> d!1713488 (validRegex!6749 (regTwo!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713488 (= (lemmaFindConcatSeparationEquivalentToExists!1302 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326) lt!2177026)))

(declare-fun bs!1238118 () Bool)

(assert (= bs!1238118 d!1713488))

(assert (=> bs!1238118 m!6370966))

(assert (=> bs!1238118 m!6370968))

(assert (=> bs!1238118 m!6370966))

(declare-fun m!6371566 () Bool)

(assert (=> bs!1238118 m!6371566))

(assert (=> bs!1238118 m!6371330))

(declare-fun m!6371568 () Bool)

(assert (=> bs!1238118 m!6371568))

(assert (=> b!5338327 d!1713488))

(declare-fun bs!1238133 () Bool)

(declare-fun d!1713490 () Bool)

(assert (= bs!1238133 (and d!1713490 b!5338327)))

(declare-fun lambda!273496 () Int)

(assert (=> bs!1238133 (not (= lambda!273496 lambda!273419))))

(assert (=> bs!1238133 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273496 lambda!273416))))

(declare-fun bs!1238134 () Bool)

(assert (= bs!1238134 (and d!1713490 b!5338603)))

(assert (=> bs!1238134 (not (= lambda!273496 lambda!273452))))

(assert (=> bs!1238133 (not (= lambda!273496 lambda!273417))))

(declare-fun bs!1238135 () Bool)

(assert (= bs!1238135 (and d!1713490 b!5338334)))

(assert (=> bs!1238135 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176921 (regTwo!30538 r!7292))) (= lambda!273496 lambda!273413))))

(declare-fun bs!1238136 () Bool)

(assert (= bs!1238136 (and d!1713490 b!5338623)))

(assert (=> bs!1238136 (not (= lambda!273496 lambda!273456))))

(assert (=> bs!1238133 (= lambda!273496 lambda!273418)))

(declare-fun bs!1238137 () Bool)

(assert (= bs!1238137 (and d!1713490 b!5338629)))

(assert (=> bs!1238137 (not (= lambda!273496 lambda!273457))))

(declare-fun bs!1238138 () Bool)

(assert (= bs!1238138 (and d!1713490 b!5338597)))

(assert (=> bs!1238138 (not (= lambda!273496 lambda!273450))))

(declare-fun bs!1238139 () Bool)

(assert (= bs!1238139 (and d!1713490 d!1713416)))

(assert (=> bs!1238139 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273496 lambda!273465))))

(assert (=> bs!1238135 (not (= lambda!273496 lambda!273414))))

(declare-fun bs!1238140 () Bool)

(assert (= bs!1238140 (and d!1713490 d!1713488)))

(assert (=> bs!1238140 (= lambda!273496 lambda!273478)))

(assert (=> d!1713490 true))

(assert (=> d!1713490 true))

(assert (=> d!1713490 true))

(declare-fun lambda!273497 () Int)

(assert (=> bs!1238133 (= lambda!273497 lambda!273419)))

(assert (=> bs!1238133 (not (= lambda!273497 lambda!273416))))

(assert (=> bs!1238134 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 lt!2176910)) (= lt!2176921 (regTwo!30538 lt!2176910))) (= lambda!273497 lambda!273452))))

(assert (=> bs!1238133 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 (regOne!30538 r!7292))) (= lt!2176921 lt!2176910)) (= lambda!273497 lambda!273417))))

(assert (=> bs!1238135 (not (= lambda!273497 lambda!273413))))

(assert (=> bs!1238136 (not (= lambda!273497 lambda!273456))))

(assert (=> bs!1238137 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 lt!2176900)) (= lt!2176921 (regTwo!30538 lt!2176900))) (= lambda!273497 lambda!273457))))

(assert (=> bs!1238138 (not (= lambda!273497 lambda!273450))))

(assert (=> bs!1238139 (not (= lambda!273497 lambda!273465))))

(declare-fun bs!1238141 () Bool)

(assert (= bs!1238141 d!1713490))

(assert (=> bs!1238141 (not (= lambda!273497 lambda!273496))))

(assert (=> bs!1238133 (not (= lambda!273497 lambda!273418))))

(assert (=> bs!1238135 (= (and (= (regTwo!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176921 (regTwo!30538 r!7292))) (= lambda!273497 lambda!273414))))

(assert (=> bs!1238140 (not (= lambda!273497 lambda!273478))))

(assert (=> d!1713490 true))

(assert (=> d!1713490 true))

(assert (=> d!1713490 true))

(assert (=> d!1713490 (= (Exists!2194 lambda!273496) (Exists!2194 lambda!273497))))

(declare-fun lt!2177045 () Unit!153570)

(declare-fun choose!40014 (Regex!15013 Regex!15013 List!61339) Unit!153570)

(assert (=> d!1713490 (= lt!2177045 (choose!40014 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326))))

(assert (=> d!1713490 (validRegex!6749 (regTwo!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713490 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 s!2326) lt!2177045)))

(declare-fun m!6371614 () Bool)

(assert (=> bs!1238141 m!6371614))

(declare-fun m!6371616 () Bool)

(assert (=> bs!1238141 m!6371616))

(declare-fun m!6371618 () Bool)

(assert (=> bs!1238141 m!6371618))

(assert (=> bs!1238141 m!6371330))

(assert (=> b!5338327 d!1713490))

(declare-fun d!1713502 () Bool)

(assert (=> d!1713502 (= (matchR!7198 lt!2176910 s!2326) (matchRSpec!2116 lt!2176910 s!2326))))

(declare-fun lt!2177048 () Unit!153570)

(declare-fun choose!40015 (Regex!15013 List!61339) Unit!153570)

(assert (=> d!1713502 (= lt!2177048 (choose!40015 lt!2176910 s!2326))))

(assert (=> d!1713502 (validRegex!6749 lt!2176910)))

(assert (=> d!1713502 (= (mainMatchTheorem!2116 lt!2176910 s!2326) lt!2177048)))

(declare-fun bs!1238144 () Bool)

(assert (= bs!1238144 d!1713502))

(assert (=> bs!1238144 m!6370956))

(assert (=> bs!1238144 m!6370946))

(declare-fun m!6371624 () Bool)

(assert (=> bs!1238144 m!6371624))

(declare-fun m!6371626 () Bool)

(assert (=> bs!1238144 m!6371626))

(assert (=> b!5338327 d!1713502))

(declare-fun bs!1238145 () Bool)

(declare-fun d!1713508 () Bool)

(assert (= bs!1238145 (and d!1713508 d!1713432)))

(declare-fun lambda!273498 () Int)

(assert (=> bs!1238145 (= lambda!273498 lambda!273472)))

(declare-fun bs!1238146 () Bool)

(assert (= bs!1238146 (and d!1713508 d!1713452)))

(assert (=> bs!1238146 (= lambda!273498 lambda!273475)))

(declare-fun b!5339071 () Bool)

(declare-fun e!3315449 () Regex!15013)

(declare-fun e!3315450 () Regex!15013)

(assert (=> b!5339071 (= e!3315449 e!3315450)))

(declare-fun c!928968 () Bool)

(assert (=> b!5339071 (= c!928968 ((_ is Cons!61214) (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339072 () Bool)

(assert (=> b!5339072 (= e!3315449 (h!67662 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339073 () Bool)

(declare-fun e!3315448 () Bool)

(declare-fun lt!2177049 () Regex!15013)

(assert (=> b!5339073 (= e!3315448 (= lt!2177049 (head!11447 (t!374555 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun b!5339074 () Bool)

(declare-fun e!3315453 () Bool)

(assert (=> b!5339074 (= e!3315453 (isEmptyExpr!899 lt!2177049))))

(declare-fun e!3315451 () Bool)

(assert (=> d!1713508 e!3315451))

(declare-fun res!2264724 () Bool)

(assert (=> d!1713508 (=> (not res!2264724) (not e!3315451))))

(assert (=> d!1713508 (= res!2264724 (validRegex!6749 lt!2177049))))

(assert (=> d!1713508 (= lt!2177049 e!3315449)))

(declare-fun c!928966 () Bool)

(declare-fun e!3315452 () Bool)

(assert (=> d!1713508 (= c!928966 e!3315452)))

(declare-fun res!2264723 () Bool)

(assert (=> d!1713508 (=> (not res!2264723) (not e!3315452))))

(assert (=> d!1713508 (= res!2264723 ((_ is Cons!61214) (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(assert (=> d!1713508 (forall!14435 (t!374555 (exprs!4897 (h!67664 zl!343))) lambda!273498)))

(assert (=> d!1713508 (= (generalisedConcat!682 (t!374555 (exprs!4897 (h!67664 zl!343)))) lt!2177049)))

(declare-fun b!5339075 () Bool)

(assert (=> b!5339075 (= e!3315450 EmptyExpr!15013)))

(declare-fun b!5339076 () Bool)

(assert (=> b!5339076 (= e!3315453 e!3315448)))

(declare-fun c!928969 () Bool)

(assert (=> b!5339076 (= c!928969 (isEmpty!33188 (tail!10544 (t!374555 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun b!5339077 () Bool)

(assert (=> b!5339077 (= e!3315451 e!3315453)))

(declare-fun c!928967 () Bool)

(assert (=> b!5339077 (= c!928967 (isEmpty!33188 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339078 () Bool)

(assert (=> b!5339078 (= e!3315452 (isEmpty!33188 (t!374555 (t!374555 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun b!5339079 () Bool)

(assert (=> b!5339079 (= e!3315450 (Concat!23858 (h!67662 (t!374555 (exprs!4897 (h!67664 zl!343)))) (generalisedConcat!682 (t!374555 (t!374555 (exprs!4897 (h!67664 zl!343)))))))))

(declare-fun b!5339080 () Bool)

(assert (=> b!5339080 (= e!3315448 (isConcat!422 lt!2177049))))

(assert (= (and d!1713508 res!2264723) b!5339078))

(assert (= (and d!1713508 c!928966) b!5339072))

(assert (= (and d!1713508 (not c!928966)) b!5339071))

(assert (= (and b!5339071 c!928968) b!5339079))

(assert (= (and b!5339071 (not c!928968)) b!5339075))

(assert (= (and d!1713508 res!2264724) b!5339077))

(assert (= (and b!5339077 c!928967) b!5339074))

(assert (= (and b!5339077 (not c!928967)) b!5339076))

(assert (= (and b!5339076 c!928969) b!5339073))

(assert (= (and b!5339076 (not c!928969)) b!5339080))

(declare-fun m!6371628 () Bool)

(assert (=> b!5339076 m!6371628))

(assert (=> b!5339076 m!6371628))

(declare-fun m!6371630 () Bool)

(assert (=> b!5339076 m!6371630))

(declare-fun m!6371632 () Bool)

(assert (=> b!5339074 m!6371632))

(declare-fun m!6371634 () Bool)

(assert (=> d!1713508 m!6371634))

(declare-fun m!6371636 () Bool)

(assert (=> d!1713508 m!6371636))

(declare-fun m!6371638 () Bool)

(assert (=> b!5339079 m!6371638))

(declare-fun m!6371640 () Bool)

(assert (=> b!5339073 m!6371640))

(declare-fun m!6371642 () Bool)

(assert (=> b!5339080 m!6371642))

(assert (=> b!5339077 m!6371024))

(declare-fun m!6371644 () Bool)

(assert (=> b!5339078 m!6371644))

(assert (=> b!5338327 d!1713508))

(declare-fun d!1713510 () Bool)

(assert (=> d!1713510 (= (isDefined!11827 (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 Nil!61215 s!2326 s!2326)) (not (isEmpty!33192 (findConcatSeparation!1538 (regTwo!30538 (regOne!30538 r!7292)) lt!2176921 Nil!61215 s!2326 s!2326))))))

(declare-fun bs!1238147 () Bool)

(assert (= bs!1238147 d!1713510))

(assert (=> bs!1238147 m!6370966))

(declare-fun m!6371646 () Bool)

(assert (=> bs!1238147 m!6371646))

(assert (=> b!5338327 d!1713510))

(declare-fun d!1713512 () Bool)

(assert (=> d!1713512 (= (Exists!2194 lambda!273417) (choose!40008 lambda!273417))))

(declare-fun bs!1238148 () Bool)

(assert (= bs!1238148 d!1713512))

(declare-fun m!6371648 () Bool)

(assert (=> bs!1238148 m!6371648))

(assert (=> b!5338327 d!1713512))

(declare-fun b!5339081 () Bool)

(declare-fun e!3315458 () Option!15124)

(assert (=> b!5339081 (= e!3315458 (Some!15123 (tuple2!64425 Nil!61215 s!2326)))))

(declare-fun b!5339082 () Bool)

(declare-fun lt!2177052 () Unit!153570)

(declare-fun lt!2177051 () Unit!153570)

(assert (=> b!5339082 (= lt!2177052 lt!2177051)))

(assert (=> b!5339082 (= (++!13344 (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326)) s!2326)))

(assert (=> b!5339082 (= lt!2177051 (lemmaMoveElementToOtherListKeepsConcatEq!1759 Nil!61215 (h!67663 s!2326) (t!374556 s!2326) s!2326))))

(declare-fun e!3315457 () Option!15124)

(assert (=> b!5339082 (= e!3315457 (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326) s!2326))))

(declare-fun b!5339083 () Bool)

(assert (=> b!5339083 (= e!3315457 None!15123)))

(declare-fun b!5339084 () Bool)

(assert (=> b!5339084 (= e!3315458 e!3315457)))

(declare-fun c!928970 () Bool)

(assert (=> b!5339084 (= c!928970 ((_ is Nil!61215) s!2326))))

(declare-fun d!1713514 () Bool)

(declare-fun e!3315456 () Bool)

(assert (=> d!1713514 e!3315456))

(declare-fun res!2264725 () Bool)

(assert (=> d!1713514 (=> res!2264725 e!3315456)))

(declare-fun e!3315454 () Bool)

(assert (=> d!1713514 (= res!2264725 e!3315454)))

(declare-fun res!2264727 () Bool)

(assert (=> d!1713514 (=> (not res!2264727) (not e!3315454))))

(declare-fun lt!2177050 () Option!15124)

(assert (=> d!1713514 (= res!2264727 (isDefined!11827 lt!2177050))))

(assert (=> d!1713514 (= lt!2177050 e!3315458)))

(declare-fun c!928971 () Bool)

(declare-fun e!3315455 () Bool)

(assert (=> d!1713514 (= c!928971 e!3315455)))

(declare-fun res!2264726 () Bool)

(assert (=> d!1713514 (=> (not res!2264726) (not e!3315455))))

(assert (=> d!1713514 (= res!2264726 (matchR!7198 (regOne!30538 (regOne!30538 r!7292)) Nil!61215))))

(assert (=> d!1713514 (validRegex!6749 (regOne!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713514 (= (findConcatSeparation!1538 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 Nil!61215 s!2326 s!2326) lt!2177050)))

(declare-fun b!5339085 () Bool)

(assert (=> b!5339085 (= e!3315456 (not (isDefined!11827 lt!2177050)))))

(declare-fun b!5339086 () Bool)

(assert (=> b!5339086 (= e!3315455 (matchR!7198 lt!2176910 s!2326))))

(declare-fun b!5339087 () Bool)

(declare-fun res!2264729 () Bool)

(assert (=> b!5339087 (=> (not res!2264729) (not e!3315454))))

(assert (=> b!5339087 (= res!2264729 (matchR!7198 lt!2176910 (_2!35515 (get!21056 lt!2177050))))))

(declare-fun b!5339088 () Bool)

(assert (=> b!5339088 (= e!3315454 (= (++!13344 (_1!35515 (get!21056 lt!2177050)) (_2!35515 (get!21056 lt!2177050))) s!2326))))

(declare-fun b!5339089 () Bool)

(declare-fun res!2264728 () Bool)

(assert (=> b!5339089 (=> (not res!2264728) (not e!3315454))))

(assert (=> b!5339089 (= res!2264728 (matchR!7198 (regOne!30538 (regOne!30538 r!7292)) (_1!35515 (get!21056 lt!2177050))))))

(assert (= (and d!1713514 res!2264726) b!5339086))

(assert (= (and d!1713514 c!928971) b!5339081))

(assert (= (and d!1713514 (not c!928971)) b!5339084))

(assert (= (and b!5339084 c!928970) b!5339083))

(assert (= (and b!5339084 (not c!928970)) b!5339082))

(assert (= (and d!1713514 res!2264727) b!5339089))

(assert (= (and b!5339089 res!2264728) b!5339087))

(assert (= (and b!5339087 res!2264729) b!5339088))

(assert (= (and d!1713514 (not res!2264725)) b!5339085))

(assert (=> b!5339082 m!6371312))

(assert (=> b!5339082 m!6371312))

(assert (=> b!5339082 m!6371314))

(assert (=> b!5339082 m!6371316))

(assert (=> b!5339082 m!6371312))

(declare-fun m!6371650 () Bool)

(assert (=> b!5339082 m!6371650))

(declare-fun m!6371652 () Bool)

(assert (=> b!5339088 m!6371652))

(declare-fun m!6371654 () Bool)

(assert (=> b!5339088 m!6371654))

(assert (=> b!5339089 m!6371652))

(declare-fun m!6371656 () Bool)

(assert (=> b!5339089 m!6371656))

(declare-fun m!6371658 () Bool)

(assert (=> d!1713514 m!6371658))

(declare-fun m!6371660 () Bool)

(assert (=> d!1713514 m!6371660))

(assert (=> d!1713514 m!6371384))

(assert (=> b!5339087 m!6371652))

(declare-fun m!6371662 () Bool)

(assert (=> b!5339087 m!6371662))

(assert (=> b!5339086 m!6370956))

(assert (=> b!5339085 m!6371658))

(assert (=> b!5338327 d!1713514))

(declare-fun bs!1238149 () Bool)

(declare-fun d!1713516 () Bool)

(assert (= bs!1238149 (and d!1713516 d!1713490)))

(declare-fun lambda!273499 () Int)

(assert (=> bs!1238149 (not (= lambda!273499 lambda!273497))))

(declare-fun bs!1238150 () Bool)

(assert (= bs!1238150 (and d!1713516 b!5338327)))

(assert (=> bs!1238150 (not (= lambda!273499 lambda!273419))))

(assert (=> bs!1238150 (= lambda!273499 lambda!273416)))

(declare-fun bs!1238151 () Bool)

(assert (= bs!1238151 (and d!1713516 b!5338603)))

(assert (=> bs!1238151 (not (= lambda!273499 lambda!273452))))

(assert (=> bs!1238150 (not (= lambda!273499 lambda!273417))))

(declare-fun bs!1238152 () Bool)

(assert (= bs!1238152 (and d!1713516 b!5338334)))

(assert (=> bs!1238152 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176910 (regTwo!30538 r!7292))) (= lambda!273499 lambda!273413))))

(declare-fun bs!1238153 () Bool)

(assert (= bs!1238153 (and d!1713516 b!5338623)))

(assert (=> bs!1238153 (not (= lambda!273499 lambda!273456))))

(declare-fun bs!1238154 () Bool)

(assert (= bs!1238154 (and d!1713516 b!5338629)))

(assert (=> bs!1238154 (not (= lambda!273499 lambda!273457))))

(declare-fun bs!1238155 () Bool)

(assert (= bs!1238155 (and d!1713516 b!5338597)))

(assert (=> bs!1238155 (not (= lambda!273499 lambda!273450))))

(declare-fun bs!1238156 () Bool)

(assert (= bs!1238156 (and d!1713516 d!1713416)))

(assert (=> bs!1238156 (= lambda!273499 lambda!273465)))

(assert (=> bs!1238149 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273499 lambda!273496))))

(assert (=> bs!1238150 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273499 lambda!273418))))

(assert (=> bs!1238152 (not (= lambda!273499 lambda!273414))))

(declare-fun bs!1238157 () Bool)

(assert (= bs!1238157 (and d!1713516 d!1713488)))

(assert (=> bs!1238157 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273499 lambda!273478))))

(assert (=> d!1713516 true))

(assert (=> d!1713516 true))

(assert (=> d!1713516 true))

(declare-fun lambda!273500 () Int)

(assert (=> bs!1238149 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273500 lambda!273497))))

(assert (=> bs!1238150 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regTwo!30538 (regOne!30538 r!7292))) (= lt!2176910 lt!2176921)) (= lambda!273500 lambda!273419))))

(assert (=> bs!1238150 (not (= lambda!273500 lambda!273416))))

(assert (=> bs!1238151 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 lt!2176910)) (= lt!2176910 (regTwo!30538 lt!2176910))) (= lambda!273500 lambda!273452))))

(assert (=> bs!1238150 (= lambda!273500 lambda!273417)))

(declare-fun bs!1238158 () Bool)

(assert (= bs!1238158 d!1713516))

(assert (=> bs!1238158 (not (= lambda!273500 lambda!273499))))

(assert (=> bs!1238152 (not (= lambda!273500 lambda!273413))))

(assert (=> bs!1238153 (not (= lambda!273500 lambda!273456))))

(assert (=> bs!1238154 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 lt!2176900)) (= lt!2176910 (regTwo!30538 lt!2176900))) (= lambda!273500 lambda!273457))))

(assert (=> bs!1238155 (not (= lambda!273500 lambda!273450))))

(assert (=> bs!1238156 (not (= lambda!273500 lambda!273465))))

(assert (=> bs!1238149 (not (= lambda!273500 lambda!273496))))

(assert (=> bs!1238150 (not (= lambda!273500 lambda!273418))))

(assert (=> bs!1238152 (= (and (= (regOne!30538 (regOne!30538 r!7292)) (regOne!30538 r!7292)) (= lt!2176910 (regTwo!30538 r!7292))) (= lambda!273500 lambda!273414))))

(assert (=> bs!1238157 (not (= lambda!273500 lambda!273478))))

(assert (=> d!1713516 true))

(assert (=> d!1713516 true))

(assert (=> d!1713516 true))

(assert (=> d!1713516 (= (Exists!2194 lambda!273499) (Exists!2194 lambda!273500))))

(declare-fun lt!2177053 () Unit!153570)

(assert (=> d!1713516 (= lt!2177053 (choose!40014 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326))))

(assert (=> d!1713516 (validRegex!6749 (regOne!30538 (regOne!30538 r!7292)))))

(assert (=> d!1713516 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regOne!30538 (regOne!30538 r!7292)) lt!2176910 s!2326) lt!2177053)))

(declare-fun m!6371664 () Bool)

(assert (=> bs!1238158 m!6371664))

(declare-fun m!6371666 () Bool)

(assert (=> bs!1238158 m!6371666))

(declare-fun m!6371668 () Bool)

(assert (=> bs!1238158 m!6371668))

(assert (=> bs!1238158 m!6371384))

(assert (=> b!5338327 d!1713516))

(declare-fun b!5339090 () Bool)

(declare-fun e!3315460 () Bool)

(declare-fun e!3315462 () Bool)

(assert (=> b!5339090 (= e!3315460 e!3315462)))

(declare-fun c!928974 () Bool)

(assert (=> b!5339090 (= c!928974 ((_ is EmptyLang!15013) lt!2176910))))

(declare-fun bm!381650 () Bool)

(declare-fun call!381655 () Bool)

(assert (=> bm!381650 (= call!381655 (isEmpty!33190 s!2326))))

(declare-fun b!5339091 () Bool)

(declare-fun lt!2177054 () Bool)

(assert (=> b!5339091 (= e!3315462 (not lt!2177054))))

(declare-fun b!5339092 () Bool)

(assert (=> b!5339092 (= e!3315460 (= lt!2177054 call!381655))))

(declare-fun b!5339093 () Bool)

(declare-fun res!2264730 () Bool)

(declare-fun e!3315459 () Bool)

(assert (=> b!5339093 (=> (not res!2264730) (not e!3315459))))

(assert (=> b!5339093 (= res!2264730 (isEmpty!33190 (tail!10543 s!2326)))))

(declare-fun b!5339094 () Bool)

(declare-fun e!3315464 () Bool)

(assert (=> b!5339094 (= e!3315464 (not (= (head!11446 s!2326) (c!928751 lt!2176910))))))

(declare-fun b!5339095 () Bool)

(declare-fun e!3315463 () Bool)

(declare-fun e!3315465 () Bool)

(assert (=> b!5339095 (= e!3315463 e!3315465)))

(declare-fun res!2264734 () Bool)

(assert (=> b!5339095 (=> (not res!2264734) (not e!3315465))))

(assert (=> b!5339095 (= res!2264734 (not lt!2177054))))

(declare-fun b!5339096 () Bool)

(declare-fun res!2264736 () Bool)

(assert (=> b!5339096 (=> res!2264736 e!3315463)))

(assert (=> b!5339096 (= res!2264736 (not ((_ is ElementMatch!15013) lt!2176910)))))

(assert (=> b!5339096 (= e!3315462 e!3315463)))

(declare-fun b!5339098 () Bool)

(declare-fun res!2264735 () Bool)

(assert (=> b!5339098 (=> res!2264735 e!3315463)))

(assert (=> b!5339098 (= res!2264735 e!3315459)))

(declare-fun res!2264731 () Bool)

(assert (=> b!5339098 (=> (not res!2264731) (not e!3315459))))

(assert (=> b!5339098 (= res!2264731 lt!2177054)))

(declare-fun b!5339099 () Bool)

(assert (=> b!5339099 (= e!3315459 (= (head!11446 s!2326) (c!928751 lt!2176910)))))

(declare-fun b!5339100 () Bool)

(assert (=> b!5339100 (= e!3315465 e!3315464)))

(declare-fun res!2264732 () Bool)

(assert (=> b!5339100 (=> res!2264732 e!3315464)))

(assert (=> b!5339100 (= res!2264732 call!381655)))

(declare-fun b!5339101 () Bool)

(declare-fun res!2264733 () Bool)

(assert (=> b!5339101 (=> res!2264733 e!3315464)))

(assert (=> b!5339101 (= res!2264733 (not (isEmpty!33190 (tail!10543 s!2326))))))

(declare-fun b!5339102 () Bool)

(declare-fun res!2264737 () Bool)

(assert (=> b!5339102 (=> (not res!2264737) (not e!3315459))))

(assert (=> b!5339102 (= res!2264737 (not call!381655))))

(declare-fun b!5339103 () Bool)

(declare-fun e!3315461 () Bool)

(assert (=> b!5339103 (= e!3315461 (nullable!5182 lt!2176910))))

(declare-fun d!1713518 () Bool)

(assert (=> d!1713518 e!3315460))

(declare-fun c!928973 () Bool)

(assert (=> d!1713518 (= c!928973 ((_ is EmptyExpr!15013) lt!2176910))))

(assert (=> d!1713518 (= lt!2177054 e!3315461)))

(declare-fun c!928972 () Bool)

(assert (=> d!1713518 (= c!928972 (isEmpty!33190 s!2326))))

(assert (=> d!1713518 (validRegex!6749 lt!2176910)))

(assert (=> d!1713518 (= (matchR!7198 lt!2176910 s!2326) lt!2177054)))

(declare-fun b!5339097 () Bool)

(assert (=> b!5339097 (= e!3315461 (matchR!7198 (derivativeStep!4185 lt!2176910 (head!11446 s!2326)) (tail!10543 s!2326)))))

(assert (= (and d!1713518 c!928972) b!5339103))

(assert (= (and d!1713518 (not c!928972)) b!5339097))

(assert (= (and d!1713518 c!928973) b!5339092))

(assert (= (and d!1713518 (not c!928973)) b!5339090))

(assert (= (and b!5339090 c!928974) b!5339091))

(assert (= (and b!5339090 (not c!928974)) b!5339096))

(assert (= (and b!5339096 (not res!2264736)) b!5339098))

(assert (= (and b!5339098 res!2264731) b!5339102))

(assert (= (and b!5339102 res!2264737) b!5339093))

(assert (= (and b!5339093 res!2264730) b!5339099))

(assert (= (and b!5339098 (not res!2264735)) b!5339095))

(assert (= (and b!5339095 res!2264734) b!5339100))

(assert (= (and b!5339100 (not res!2264732)) b!5339101))

(assert (= (and b!5339101 (not res!2264733)) b!5339094))

(assert (= (or b!5339092 b!5339102 b!5339100) bm!381650))

(assert (=> d!1713518 m!6371204))

(assert (=> d!1713518 m!6371626))

(assert (=> b!5339099 m!6371218))

(assert (=> b!5339094 m!6371218))

(assert (=> b!5339097 m!6371218))

(assert (=> b!5339097 m!6371218))

(declare-fun m!6371670 () Bool)

(assert (=> b!5339097 m!6371670))

(assert (=> b!5339097 m!6371224))

(assert (=> b!5339097 m!6371670))

(assert (=> b!5339097 m!6371224))

(declare-fun m!6371672 () Bool)

(assert (=> b!5339097 m!6371672))

(assert (=> b!5339093 m!6371224))

(assert (=> b!5339093 m!6371224))

(assert (=> b!5339093 m!6371562))

(assert (=> bm!381650 m!6371204))

(assert (=> b!5339101 m!6371224))

(assert (=> b!5339101 m!6371224))

(assert (=> b!5339101 m!6371562))

(declare-fun m!6371674 () Bool)

(assert (=> b!5339103 m!6371674))

(assert (=> b!5338327 d!1713518))

(declare-fun d!1713520 () Bool)

(assert (=> d!1713520 (= (matchR!7198 lt!2176900 s!2326) (matchRSpec!2116 lt!2176900 s!2326))))

(declare-fun lt!2177055 () Unit!153570)

(assert (=> d!1713520 (= lt!2177055 (choose!40015 lt!2176900 s!2326))))

(assert (=> d!1713520 (validRegex!6749 lt!2176900)))

(assert (=> d!1713520 (= (mainMatchTheorem!2116 lt!2176900 s!2326) lt!2177055)))

(declare-fun bs!1238159 () Bool)

(assert (= bs!1238159 d!1713520))

(assert (=> bs!1238159 m!6370962))

(assert (=> bs!1238159 m!6370984))

(declare-fun m!6371676 () Bool)

(assert (=> bs!1238159 m!6371676))

(assert (=> bs!1238159 m!6371502))

(assert (=> b!5338327 d!1713520))

(declare-fun d!1713522 () Bool)

(assert (=> d!1713522 (= (Exists!2194 lambda!273416) (choose!40008 lambda!273416))))

(declare-fun bs!1238160 () Bool)

(assert (= bs!1238160 d!1713522))

(declare-fun m!6371678 () Bool)

(assert (=> bs!1238160 m!6371678))

(assert (=> b!5338327 d!1713522))

(declare-fun d!1713524 () Bool)

(declare-fun c!928975 () Bool)

(assert (=> d!1713524 (= c!928975 (isEmpty!33190 s!2326))))

(declare-fun e!3315466 () Bool)

(assert (=> d!1713524 (= (matchZipper!1257 lt!2176906 s!2326) e!3315466)))

(declare-fun b!5339104 () Bool)

(assert (=> b!5339104 (= e!3315466 (nullableZipper!1364 lt!2176906))))

(declare-fun b!5339105 () Bool)

(assert (=> b!5339105 (= e!3315466 (matchZipper!1257 (derivationStepZipper!1254 lt!2176906 (head!11446 s!2326)) (tail!10543 s!2326)))))

(assert (= (and d!1713524 c!928975) b!5339104))

(assert (= (and d!1713524 (not c!928975)) b!5339105))

(assert (=> d!1713524 m!6371204))

(declare-fun m!6371680 () Bool)

(assert (=> b!5339104 m!6371680))

(assert (=> b!5339105 m!6371218))

(assert (=> b!5339105 m!6371218))

(declare-fun m!6371682 () Bool)

(assert (=> b!5339105 m!6371682))

(assert (=> b!5339105 m!6371224))

(assert (=> b!5339105 m!6371682))

(assert (=> b!5339105 m!6371224))

(declare-fun m!6371684 () Bool)

(assert (=> b!5339105 m!6371684))

(assert (=> b!5338327 d!1713524))

(declare-fun d!1713526 () Bool)

(declare-fun nullableFct!1516 (Regex!15013) Bool)

(assert (=> d!1713526 (= (nullable!5182 (regOne!30538 (regOne!30538 r!7292))) (nullableFct!1516 (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun bs!1238161 () Bool)

(assert (= bs!1238161 d!1713526))

(declare-fun m!6371686 () Bool)

(assert (=> bs!1238161 m!6371686))

(assert (=> b!5338328 d!1713526))

(declare-fun d!1713528 () Bool)

(declare-fun lt!2177058 () Int)

(assert (=> d!1713528 (>= lt!2177058 0)))

(declare-fun e!3315469 () Int)

(assert (=> d!1713528 (= lt!2177058 e!3315469)))

(declare-fun c!928979 () Bool)

(assert (=> d!1713528 (= c!928979 ((_ is Cons!61214) (exprs!4897 lt!2176915)))))

(assert (=> d!1713528 (= (contextDepthTotal!146 lt!2176915) lt!2177058)))

(declare-fun b!5339110 () Bool)

(declare-fun regexDepthTotal!69 (Regex!15013) Int)

(assert (=> b!5339110 (= e!3315469 (+ (regexDepthTotal!69 (h!67662 (exprs!4897 lt!2176915))) (contextDepthTotal!146 (Context!8795 (t!374555 (exprs!4897 lt!2176915))))))))

(declare-fun b!5339111 () Bool)

(assert (=> b!5339111 (= e!3315469 1)))

(assert (= (and d!1713528 c!928979) b!5339110))

(assert (= (and d!1713528 (not c!928979)) b!5339111))

(declare-fun m!6371688 () Bool)

(assert (=> b!5339110 m!6371688))

(declare-fun m!6371690 () Bool)

(assert (=> b!5339110 m!6371690))

(assert (=> b!5338307 d!1713528))

(declare-fun d!1713530 () Bool)

(declare-fun lt!2177059 () Int)

(assert (=> d!1713530 (>= lt!2177059 0)))

(declare-fun e!3315470 () Int)

(assert (=> d!1713530 (= lt!2177059 e!3315470)))

(declare-fun c!928980 () Bool)

(assert (=> d!1713530 (= c!928980 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343))))))

(assert (=> d!1713530 (= (contextDepthTotal!146 (h!67664 zl!343)) lt!2177059)))

(declare-fun b!5339112 () Bool)

(assert (=> b!5339112 (= e!3315470 (+ (regexDepthTotal!69 (h!67662 (exprs!4897 (h!67664 zl!343)))) (contextDepthTotal!146 (Context!8795 (t!374555 (exprs!4897 (h!67664 zl!343)))))))))

(declare-fun b!5339113 () Bool)

(assert (=> b!5339113 (= e!3315470 1)))

(assert (= (and d!1713530 c!928980) b!5339112))

(assert (= (and d!1713530 (not c!928980)) b!5339113))

(declare-fun m!6371692 () Bool)

(assert (=> b!5339112 m!6371692))

(declare-fun m!6371694 () Bool)

(assert (=> b!5339112 m!6371694))

(assert (=> b!5338307 d!1713530))

(declare-fun bs!1238162 () Bool)

(declare-fun d!1713532 () Bool)

(assert (= bs!1238162 (and d!1713532 d!1713432)))

(declare-fun lambda!273503 () Int)

(assert (=> bs!1238162 (= lambda!273503 lambda!273472)))

(declare-fun bs!1238163 () Bool)

(assert (= bs!1238163 (and d!1713532 d!1713452)))

(assert (=> bs!1238163 (= lambda!273503 lambda!273475)))

(declare-fun bs!1238164 () Bool)

(assert (= bs!1238164 (and d!1713532 d!1713508)))

(assert (=> bs!1238164 (= lambda!273503 lambda!273498)))

(declare-fun b!5339134 () Bool)

(declare-fun e!3315488 () Bool)

(declare-fun lt!2177062 () Regex!15013)

(assert (=> b!5339134 (= e!3315488 (= lt!2177062 (head!11447 (unfocusZipperList!455 zl!343))))))

(declare-fun b!5339135 () Bool)

(declare-fun e!3315485 () Bool)

(declare-fun isEmptyLang!907 (Regex!15013) Bool)

(assert (=> b!5339135 (= e!3315485 (isEmptyLang!907 lt!2177062))))

(declare-fun b!5339136 () Bool)

(declare-fun e!3315484 () Regex!15013)

(declare-fun e!3315487 () Regex!15013)

(assert (=> b!5339136 (= e!3315484 e!3315487)))

(declare-fun c!928990 () Bool)

(assert (=> b!5339136 (= c!928990 ((_ is Cons!61214) (unfocusZipperList!455 zl!343)))))

(declare-fun e!3315486 () Bool)

(assert (=> d!1713532 e!3315486))

(declare-fun res!2264743 () Bool)

(assert (=> d!1713532 (=> (not res!2264743) (not e!3315486))))

(assert (=> d!1713532 (= res!2264743 (validRegex!6749 lt!2177062))))

(assert (=> d!1713532 (= lt!2177062 e!3315484)))

(declare-fun c!928989 () Bool)

(declare-fun e!3315483 () Bool)

(assert (=> d!1713532 (= c!928989 e!3315483)))

(declare-fun res!2264742 () Bool)

(assert (=> d!1713532 (=> (not res!2264742) (not e!3315483))))

(assert (=> d!1713532 (= res!2264742 ((_ is Cons!61214) (unfocusZipperList!455 zl!343)))))

(assert (=> d!1713532 (forall!14435 (unfocusZipperList!455 zl!343) lambda!273503)))

(assert (=> d!1713532 (= (generalisedUnion!942 (unfocusZipperList!455 zl!343)) lt!2177062)))

(declare-fun b!5339137 () Bool)

(assert (=> b!5339137 (= e!3315487 (Union!15013 (h!67662 (unfocusZipperList!455 zl!343)) (generalisedUnion!942 (t!374555 (unfocusZipperList!455 zl!343)))))))

(declare-fun b!5339138 () Bool)

(assert (=> b!5339138 (= e!3315485 e!3315488)))

(declare-fun c!928991 () Bool)

(assert (=> b!5339138 (= c!928991 (isEmpty!33188 (tail!10544 (unfocusZipperList!455 zl!343))))))

(declare-fun b!5339139 () Bool)

(assert (=> b!5339139 (= e!3315483 (isEmpty!33188 (t!374555 (unfocusZipperList!455 zl!343))))))

(declare-fun b!5339140 () Bool)

(assert (=> b!5339140 (= e!3315487 EmptyLang!15013)))

(declare-fun b!5339141 () Bool)

(assert (=> b!5339141 (= e!3315484 (h!67662 (unfocusZipperList!455 zl!343)))))

(declare-fun b!5339142 () Bool)

(assert (=> b!5339142 (= e!3315486 e!3315485)))

(declare-fun c!928992 () Bool)

(assert (=> b!5339142 (= c!928992 (isEmpty!33188 (unfocusZipperList!455 zl!343)))))

(declare-fun b!5339143 () Bool)

(declare-fun isUnion!339 (Regex!15013) Bool)

(assert (=> b!5339143 (= e!3315488 (isUnion!339 lt!2177062))))

(assert (= (and d!1713532 res!2264742) b!5339139))

(assert (= (and d!1713532 c!928989) b!5339141))

(assert (= (and d!1713532 (not c!928989)) b!5339136))

(assert (= (and b!5339136 c!928990) b!5339137))

(assert (= (and b!5339136 (not c!928990)) b!5339140))

(assert (= (and d!1713532 res!2264743) b!5339142))

(assert (= (and b!5339142 c!928992) b!5339135))

(assert (= (and b!5339142 (not c!928992)) b!5339138))

(assert (= (and b!5339138 c!928991) b!5339134))

(assert (= (and b!5339138 (not c!928991)) b!5339143))

(declare-fun m!6371696 () Bool)

(assert (=> b!5339139 m!6371696))

(declare-fun m!6371698 () Bool)

(assert (=> b!5339143 m!6371698))

(assert (=> b!5339138 m!6370932))

(declare-fun m!6371700 () Bool)

(assert (=> b!5339138 m!6371700))

(assert (=> b!5339138 m!6371700))

(declare-fun m!6371702 () Bool)

(assert (=> b!5339138 m!6371702))

(declare-fun m!6371704 () Bool)

(assert (=> b!5339137 m!6371704))

(declare-fun m!6371706 () Bool)

(assert (=> d!1713532 m!6371706))

(assert (=> d!1713532 m!6370932))

(declare-fun m!6371708 () Bool)

(assert (=> d!1713532 m!6371708))

(declare-fun m!6371710 () Bool)

(assert (=> b!5339135 m!6371710))

(assert (=> b!5339142 m!6370932))

(declare-fun m!6371712 () Bool)

(assert (=> b!5339142 m!6371712))

(assert (=> b!5339134 m!6370932))

(declare-fun m!6371714 () Bool)

(assert (=> b!5339134 m!6371714))

(assert (=> b!5338308 d!1713532))

(declare-fun bs!1238165 () Bool)

(declare-fun d!1713534 () Bool)

(assert (= bs!1238165 (and d!1713534 d!1713432)))

(declare-fun lambda!273506 () Int)

(assert (=> bs!1238165 (= lambda!273506 lambda!273472)))

(declare-fun bs!1238166 () Bool)

(assert (= bs!1238166 (and d!1713534 d!1713452)))

(assert (=> bs!1238166 (= lambda!273506 lambda!273475)))

(declare-fun bs!1238167 () Bool)

(assert (= bs!1238167 (and d!1713534 d!1713508)))

(assert (=> bs!1238167 (= lambda!273506 lambda!273498)))

(declare-fun bs!1238168 () Bool)

(assert (= bs!1238168 (and d!1713534 d!1713532)))

(assert (=> bs!1238168 (= lambda!273506 lambda!273503)))

(declare-fun lt!2177065 () List!61338)

(assert (=> d!1713534 (forall!14435 lt!2177065 lambda!273506)))

(declare-fun e!3315491 () List!61338)

(assert (=> d!1713534 (= lt!2177065 e!3315491)))

(declare-fun c!928995 () Bool)

(assert (=> d!1713534 (= c!928995 ((_ is Cons!61216) zl!343))))

(assert (=> d!1713534 (= (unfocusZipperList!455 zl!343) lt!2177065)))

(declare-fun b!5339148 () Bool)

(assert (=> b!5339148 (= e!3315491 (Cons!61214 (generalisedConcat!682 (exprs!4897 (h!67664 zl!343))) (unfocusZipperList!455 (t!374557 zl!343))))))

(declare-fun b!5339149 () Bool)

(assert (=> b!5339149 (= e!3315491 Nil!61214)))

(assert (= (and d!1713534 c!928995) b!5339148))

(assert (= (and d!1713534 (not c!928995)) b!5339149))

(declare-fun m!6371716 () Bool)

(assert (=> d!1713534 m!6371716))

(assert (=> b!5339148 m!6371002))

(declare-fun m!6371718 () Bool)

(assert (=> b!5339148 m!6371718))

(assert (=> b!5338308 d!1713534))

(declare-fun d!1713536 () Bool)

(declare-fun c!928996 () Bool)

(assert (=> d!1713536 (= c!928996 (isEmpty!33190 (t!374556 s!2326)))))

(declare-fun e!3315492 () Bool)

(assert (=> d!1713536 (= (matchZipper!1257 lt!2176911 (t!374556 s!2326)) e!3315492)))

(declare-fun b!5339150 () Bool)

(assert (=> b!5339150 (= e!3315492 (nullableZipper!1364 lt!2176911))))

(declare-fun b!5339151 () Bool)

(assert (=> b!5339151 (= e!3315492 (matchZipper!1257 (derivationStepZipper!1254 lt!2176911 (head!11446 (t!374556 s!2326))) (tail!10543 (t!374556 s!2326))))))

(assert (= (and d!1713536 c!928996) b!5339150))

(assert (= (and d!1713536 (not c!928996)) b!5339151))

(assert (=> d!1713536 m!6371084))

(declare-fun m!6371720 () Bool)

(assert (=> b!5339150 m!6371720))

(assert (=> b!5339151 m!6371088))

(assert (=> b!5339151 m!6371088))

(declare-fun m!6371722 () Bool)

(assert (=> b!5339151 m!6371722))

(assert (=> b!5339151 m!6371092))

(assert (=> b!5339151 m!6371722))

(assert (=> b!5339151 m!6371092))

(declare-fun m!6371724 () Bool)

(assert (=> b!5339151 m!6371724))

(assert (=> b!5338329 d!1713536))

(declare-fun bs!1238169 () Bool)

(declare-fun d!1713538 () Bool)

(assert (= bs!1238169 (and d!1713538 d!1713432)))

(declare-fun lambda!273509 () Int)

(assert (=> bs!1238169 (= lambda!273509 lambda!273472)))

(declare-fun bs!1238170 () Bool)

(assert (= bs!1238170 (and d!1713538 d!1713508)))

(assert (=> bs!1238170 (= lambda!273509 lambda!273498)))

(declare-fun bs!1238171 () Bool)

(assert (= bs!1238171 (and d!1713538 d!1713532)))

(assert (=> bs!1238171 (= lambda!273509 lambda!273503)))

(declare-fun bs!1238172 () Bool)

(assert (= bs!1238172 (and d!1713538 d!1713452)))

(assert (=> bs!1238172 (= lambda!273509 lambda!273475)))

(declare-fun bs!1238173 () Bool)

(assert (= bs!1238173 (and d!1713538 d!1713534)))

(assert (=> bs!1238173 (= lambda!273509 lambda!273506)))

(assert (=> d!1713538 (= (inv!80779 (h!67664 zl!343)) (forall!14435 (exprs!4897 (h!67664 zl!343)) lambda!273509))))

(declare-fun bs!1238174 () Bool)

(assert (= bs!1238174 d!1713538))

(declare-fun m!6371726 () Bool)

(assert (=> bs!1238174 m!6371726))

(assert (=> b!5338314 d!1713538))

(declare-fun b!5339174 () Bool)

(declare-fun c!929010 () Bool)

(assert (=> b!5339174 (= c!929010 ((_ is Star!15013) (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun e!3315510 () (InoxSet Context!8794))

(declare-fun e!3315506 () (InoxSet Context!8794))

(assert (=> b!5339174 (= e!3315510 e!3315506)))

(declare-fun bm!381663 () Bool)

(declare-fun call!381668 () (InoxSet Context!8794))

(declare-fun call!381672 () (InoxSet Context!8794))

(assert (=> bm!381663 (= call!381668 call!381672)))

(declare-fun b!5339175 () Bool)

(declare-fun e!3315507 () Bool)

(assert (=> b!5339175 (= e!3315507 (nullable!5182 (regOne!30538 (regOne!30538 (regOne!30538 r!7292)))))))

(declare-fun b!5339176 () Bool)

(declare-fun e!3315505 () (InoxSet Context!8794))

(assert (=> b!5339176 (= e!3315505 e!3315510)))

(declare-fun c!929009 () Bool)

(assert (=> b!5339176 (= c!929009 ((_ is Concat!23858) (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun b!5339177 () Bool)

(declare-fun call!381670 () (InoxSet Context!8794))

(assert (=> b!5339177 (= e!3315510 call!381670)))

(declare-fun b!5339178 () Bool)

(declare-fun c!929011 () Bool)

(assert (=> b!5339178 (= c!929011 e!3315507)))

(declare-fun res!2264746 () Bool)

(assert (=> b!5339178 (=> (not res!2264746) (not e!3315507))))

(assert (=> b!5339178 (= res!2264746 ((_ is Concat!23858) (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun e!3315509 () (InoxSet Context!8794))

(assert (=> b!5339178 (= e!3315509 e!3315505)))

(declare-fun b!5339179 () Bool)

(declare-fun e!3315508 () (InoxSet Context!8794))

(assert (=> b!5339179 (= e!3315508 (store ((as const (Array Context!8794 Bool)) false) (Context!8795 lt!2176914) true))))

(declare-fun bm!381664 () Bool)

(declare-fun c!929008 () Bool)

(declare-fun call!381669 () List!61338)

(assert (=> bm!381664 (= call!381672 (derivationStepZipperDown!461 (ite c!929008 (regTwo!30539 (regOne!30538 (regOne!30538 r!7292))) (ite c!929011 (regTwo!30538 (regOne!30538 (regOne!30538 r!7292))) (ite c!929009 (regOne!30538 (regOne!30538 (regOne!30538 r!7292))) (reg!15342 (regOne!30538 (regOne!30538 r!7292)))))) (ite (or c!929008 c!929011) (Context!8795 lt!2176914) (Context!8795 call!381669)) (h!67663 s!2326)))))

(declare-fun bm!381666 () Bool)

(assert (=> bm!381666 (= call!381670 call!381668)))

(declare-fun b!5339180 () Bool)

(assert (=> b!5339180 (= e!3315508 e!3315509)))

(assert (=> b!5339180 (= c!929008 ((_ is Union!15013) (regOne!30538 (regOne!30538 r!7292))))))

(declare-fun call!381671 () List!61338)

(declare-fun call!381673 () (InoxSet Context!8794))

(declare-fun bm!381667 () Bool)

(assert (=> bm!381667 (= call!381673 (derivationStepZipperDown!461 (ite c!929008 (regOne!30539 (regOne!30538 (regOne!30538 r!7292))) (regOne!30538 (regOne!30538 (regOne!30538 r!7292)))) (ite c!929008 (Context!8795 lt!2176914) (Context!8795 call!381671)) (h!67663 s!2326)))))

(declare-fun b!5339181 () Bool)

(assert (=> b!5339181 (= e!3315506 ((as const (Array Context!8794 Bool)) false))))

(declare-fun b!5339182 () Bool)

(assert (=> b!5339182 (= e!3315505 ((_ map or) call!381673 call!381668))))

(declare-fun bm!381668 () Bool)

(assert (=> bm!381668 (= call!381669 call!381671)))

(declare-fun b!5339183 () Bool)

(assert (=> b!5339183 (= e!3315506 call!381670)))

(declare-fun b!5339184 () Bool)

(assert (=> b!5339184 (= e!3315509 ((_ map or) call!381673 call!381672))))

(declare-fun bm!381665 () Bool)

(declare-fun $colon$colon!1414 (List!61338 Regex!15013) List!61338)

(assert (=> bm!381665 (= call!381671 ($colon$colon!1414 (exprs!4897 (Context!8795 lt!2176914)) (ite (or c!929011 c!929009) (regTwo!30538 (regOne!30538 (regOne!30538 r!7292))) (regOne!30538 (regOne!30538 r!7292)))))))

(declare-fun d!1713540 () Bool)

(declare-fun c!929007 () Bool)

(assert (=> d!1713540 (= c!929007 (and ((_ is ElementMatch!15013) (regOne!30538 (regOne!30538 r!7292))) (= (c!928751 (regOne!30538 (regOne!30538 r!7292))) (h!67663 s!2326))))))

(assert (=> d!1713540 (= (derivationStepZipperDown!461 (regOne!30538 (regOne!30538 r!7292)) (Context!8795 lt!2176914) (h!67663 s!2326)) e!3315508)))

(assert (= (and d!1713540 c!929007) b!5339179))

(assert (= (and d!1713540 (not c!929007)) b!5339180))

(assert (= (and b!5339180 c!929008) b!5339184))

(assert (= (and b!5339180 (not c!929008)) b!5339178))

(assert (= (and b!5339178 res!2264746) b!5339175))

(assert (= (and b!5339178 c!929011) b!5339182))

(assert (= (and b!5339178 (not c!929011)) b!5339176))

(assert (= (and b!5339176 c!929009) b!5339177))

(assert (= (and b!5339176 (not c!929009)) b!5339174))

(assert (= (and b!5339174 c!929010) b!5339183))

(assert (= (and b!5339174 (not c!929010)) b!5339181))

(assert (= (or b!5339177 b!5339183) bm!381668))

(assert (= (or b!5339177 b!5339183) bm!381666))

(assert (= (or b!5339182 bm!381668) bm!381665))

(assert (= (or b!5339182 bm!381666) bm!381663))

(assert (= (or b!5339184 bm!381663) bm!381664))

(assert (= (or b!5339184 b!5339182) bm!381667))

(declare-fun m!6371728 () Bool)

(assert (=> bm!381667 m!6371728))

(declare-fun m!6371730 () Bool)

(assert (=> b!5339175 m!6371730))

(declare-fun m!6371732 () Bool)

(assert (=> bm!381664 m!6371732))

(declare-fun m!6371734 () Bool)

(assert (=> b!5339179 m!6371734))

(declare-fun m!6371736 () Bool)

(assert (=> bm!381665 m!6371736))

(assert (=> b!5338335 d!1713540))

(declare-fun bs!1238175 () Bool)

(declare-fun d!1713542 () Bool)

(assert (= bs!1238175 (and d!1713542 d!1713508)))

(declare-fun lambda!273510 () Int)

(assert (=> bs!1238175 (= lambda!273510 lambda!273498)))

(declare-fun bs!1238176 () Bool)

(assert (= bs!1238176 (and d!1713542 d!1713532)))

(assert (=> bs!1238176 (= lambda!273510 lambda!273503)))

(declare-fun bs!1238177 () Bool)

(assert (= bs!1238177 (and d!1713542 d!1713452)))

(assert (=> bs!1238177 (= lambda!273510 lambda!273475)))

(declare-fun bs!1238178 () Bool)

(assert (= bs!1238178 (and d!1713542 d!1713534)))

(assert (=> bs!1238178 (= lambda!273510 lambda!273506)))

(declare-fun bs!1238179 () Bool)

(assert (= bs!1238179 (and d!1713542 d!1713538)))

(assert (=> bs!1238179 (= lambda!273510 lambda!273509)))

(declare-fun bs!1238180 () Bool)

(assert (= bs!1238180 (and d!1713542 d!1713432)))

(assert (=> bs!1238180 (= lambda!273510 lambda!273472)))

(assert (=> d!1713542 (= (inv!80779 setElem!34441) (forall!14435 (exprs!4897 setElem!34441) lambda!273510))))

(declare-fun bs!1238181 () Bool)

(assert (= bs!1238181 d!1713542))

(declare-fun m!6371738 () Bool)

(assert (=> bs!1238181 m!6371738))

(assert (=> setNonEmpty!34441 d!1713542))

(declare-fun b!5339185 () Bool)

(declare-fun c!929015 () Bool)

(assert (=> b!5339185 (= c!929015 ((_ is Star!15013) (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun e!3315516 () (InoxSet Context!8794))

(declare-fun e!3315512 () (InoxSet Context!8794))

(assert (=> b!5339185 (= e!3315516 e!3315512)))

(declare-fun bm!381669 () Bool)

(declare-fun call!381674 () (InoxSet Context!8794))

(declare-fun call!381678 () (InoxSet Context!8794))

(assert (=> bm!381669 (= call!381674 call!381678)))

(declare-fun b!5339186 () Bool)

(declare-fun e!3315513 () Bool)

(assert (=> b!5339186 (= e!3315513 (nullable!5182 (regOne!30538 (h!67662 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun b!5339187 () Bool)

(declare-fun e!3315511 () (InoxSet Context!8794))

(assert (=> b!5339187 (= e!3315511 e!3315516)))

(declare-fun c!929014 () Bool)

(assert (=> b!5339187 (= c!929014 ((_ is Concat!23858) (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339188 () Bool)

(declare-fun call!381676 () (InoxSet Context!8794))

(assert (=> b!5339188 (= e!3315516 call!381676)))

(declare-fun b!5339189 () Bool)

(declare-fun c!929016 () Bool)

(assert (=> b!5339189 (= c!929016 e!3315513)))

(declare-fun res!2264747 () Bool)

(assert (=> b!5339189 (=> (not res!2264747) (not e!3315513))))

(assert (=> b!5339189 (= res!2264747 ((_ is Concat!23858) (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun e!3315515 () (InoxSet Context!8794))

(assert (=> b!5339189 (= e!3315515 e!3315511)))

(declare-fun b!5339190 () Bool)

(declare-fun e!3315514 () (InoxSet Context!8794))

(assert (=> b!5339190 (= e!3315514 (store ((as const (Array Context!8794 Bool)) false) lt!2176908 true))))

(declare-fun call!381675 () List!61338)

(declare-fun bm!381670 () Bool)

(declare-fun c!929013 () Bool)

(assert (=> bm!381670 (= call!381678 (derivationStepZipperDown!461 (ite c!929013 (regTwo!30539 (h!67662 (exprs!4897 (h!67664 zl!343)))) (ite c!929016 (regTwo!30538 (h!67662 (exprs!4897 (h!67664 zl!343)))) (ite c!929014 (regOne!30538 (h!67662 (exprs!4897 (h!67664 zl!343)))) (reg!15342 (h!67662 (exprs!4897 (h!67664 zl!343))))))) (ite (or c!929013 c!929016) lt!2176908 (Context!8795 call!381675)) (h!67663 s!2326)))))

(declare-fun bm!381672 () Bool)

(assert (=> bm!381672 (= call!381676 call!381674)))

(declare-fun b!5339191 () Bool)

(assert (=> b!5339191 (= e!3315514 e!3315515)))

(assert (=> b!5339191 (= c!929013 ((_ is Union!15013) (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun call!381679 () (InoxSet Context!8794))

(declare-fun call!381677 () List!61338)

(declare-fun bm!381673 () Bool)

(assert (=> bm!381673 (= call!381679 (derivationStepZipperDown!461 (ite c!929013 (regOne!30539 (h!67662 (exprs!4897 (h!67664 zl!343)))) (regOne!30538 (h!67662 (exprs!4897 (h!67664 zl!343))))) (ite c!929013 lt!2176908 (Context!8795 call!381677)) (h!67663 s!2326)))))

(declare-fun b!5339192 () Bool)

(assert (=> b!5339192 (= e!3315512 ((as const (Array Context!8794 Bool)) false))))

(declare-fun b!5339193 () Bool)

(assert (=> b!5339193 (= e!3315511 ((_ map or) call!381679 call!381674))))

(declare-fun bm!381674 () Bool)

(assert (=> bm!381674 (= call!381675 call!381677)))

(declare-fun b!5339194 () Bool)

(assert (=> b!5339194 (= e!3315512 call!381676)))

(declare-fun b!5339195 () Bool)

(assert (=> b!5339195 (= e!3315515 ((_ map or) call!381679 call!381678))))

(declare-fun bm!381671 () Bool)

(assert (=> bm!381671 (= call!381677 ($colon$colon!1414 (exprs!4897 lt!2176908) (ite (or c!929016 c!929014) (regTwo!30538 (h!67662 (exprs!4897 (h!67664 zl!343)))) (h!67662 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun d!1713544 () Bool)

(declare-fun c!929012 () Bool)

(assert (=> d!1713544 (= c!929012 (and ((_ is ElementMatch!15013) (h!67662 (exprs!4897 (h!67664 zl!343)))) (= (c!928751 (h!67662 (exprs!4897 (h!67664 zl!343)))) (h!67663 s!2326))))))

(assert (=> d!1713544 (= (derivationStepZipperDown!461 (h!67662 (exprs!4897 (h!67664 zl!343))) lt!2176908 (h!67663 s!2326)) e!3315514)))

(assert (= (and d!1713544 c!929012) b!5339190))

(assert (= (and d!1713544 (not c!929012)) b!5339191))

(assert (= (and b!5339191 c!929013) b!5339195))

(assert (= (and b!5339191 (not c!929013)) b!5339189))

(assert (= (and b!5339189 res!2264747) b!5339186))

(assert (= (and b!5339189 c!929016) b!5339193))

(assert (= (and b!5339189 (not c!929016)) b!5339187))

(assert (= (and b!5339187 c!929014) b!5339188))

(assert (= (and b!5339187 (not c!929014)) b!5339185))

(assert (= (and b!5339185 c!929015) b!5339194))

(assert (= (and b!5339185 (not c!929015)) b!5339192))

(assert (= (or b!5339188 b!5339194) bm!381674))

(assert (= (or b!5339188 b!5339194) bm!381672))

(assert (= (or b!5339193 bm!381674) bm!381671))

(assert (= (or b!5339193 bm!381672) bm!381669))

(assert (= (or b!5339195 bm!381669) bm!381670))

(assert (= (or b!5339195 b!5339193) bm!381673))

(declare-fun m!6371740 () Bool)

(assert (=> bm!381673 m!6371740))

(declare-fun m!6371742 () Bool)

(assert (=> b!5339186 m!6371742))

(declare-fun m!6371744 () Bool)

(assert (=> bm!381670 m!6371744))

(declare-fun m!6371746 () Bool)

(assert (=> b!5339190 m!6371746))

(declare-fun m!6371748 () Bool)

(assert (=> bm!381671 m!6371748))

(assert (=> b!5338315 d!1713544))

(declare-fun b!5339206 () Bool)

(declare-fun e!3315523 () Bool)

(assert (=> b!5339206 (= e!3315523 (nullable!5182 (h!67662 (exprs!4897 lt!2176908))))))

(declare-fun e!3315524 () (InoxSet Context!8794))

(declare-fun b!5339207 () Bool)

(declare-fun call!381682 () (InoxSet Context!8794))

(assert (=> b!5339207 (= e!3315524 ((_ map or) call!381682 (derivationStepZipperUp!385 (Context!8795 (t!374555 (exprs!4897 lt!2176908))) (h!67663 s!2326))))))

(declare-fun b!5339208 () Bool)

(declare-fun e!3315525 () (InoxSet Context!8794))

(assert (=> b!5339208 (= e!3315524 e!3315525)))

(declare-fun c!929021 () Bool)

(assert (=> b!5339208 (= c!929021 ((_ is Cons!61214) (exprs!4897 lt!2176908)))))

(declare-fun bm!381677 () Bool)

(assert (=> bm!381677 (= call!381682 (derivationStepZipperDown!461 (h!67662 (exprs!4897 lt!2176908)) (Context!8795 (t!374555 (exprs!4897 lt!2176908))) (h!67663 s!2326)))))

(declare-fun d!1713546 () Bool)

(declare-fun c!929022 () Bool)

(assert (=> d!1713546 (= c!929022 e!3315523)))

(declare-fun res!2264750 () Bool)

(assert (=> d!1713546 (=> (not res!2264750) (not e!3315523))))

(assert (=> d!1713546 (= res!2264750 ((_ is Cons!61214) (exprs!4897 lt!2176908)))))

(assert (=> d!1713546 (= (derivationStepZipperUp!385 lt!2176908 (h!67663 s!2326)) e!3315524)))

(declare-fun b!5339209 () Bool)

(assert (=> b!5339209 (= e!3315525 call!381682)))

(declare-fun b!5339210 () Bool)

(assert (=> b!5339210 (= e!3315525 ((as const (Array Context!8794 Bool)) false))))

(assert (= (and d!1713546 res!2264750) b!5339206))

(assert (= (and d!1713546 c!929022) b!5339207))

(assert (= (and d!1713546 (not c!929022)) b!5339208))

(assert (= (and b!5339208 c!929021) b!5339209))

(assert (= (and b!5339208 (not c!929021)) b!5339210))

(assert (= (or b!5339207 b!5339209) bm!381677))

(declare-fun m!6371750 () Bool)

(assert (=> b!5339206 m!6371750))

(declare-fun m!6371752 () Bool)

(assert (=> b!5339207 m!6371752))

(declare-fun m!6371754 () Bool)

(assert (=> bm!381677 m!6371754))

(assert (=> b!5338315 d!1713546))

(declare-fun d!1713548 () Bool)

(declare-fun choose!40016 ((InoxSet Context!8794) Int) (InoxSet Context!8794))

(assert (=> d!1713548 (= (flatMap!740 z!1189 lambda!273415) (choose!40016 z!1189 lambda!273415))))

(declare-fun bs!1238182 () Bool)

(assert (= bs!1238182 d!1713548))

(declare-fun m!6371756 () Bool)

(assert (=> bs!1238182 m!6371756))

(assert (=> b!5338315 d!1713548))

(declare-fun d!1713550 () Bool)

(assert (=> d!1713550 (= (nullable!5182 (h!67662 (exprs!4897 (h!67664 zl!343)))) (nullableFct!1516 (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun bs!1238183 () Bool)

(assert (= bs!1238183 d!1713550))

(declare-fun m!6371758 () Bool)

(assert (=> bs!1238183 m!6371758))

(assert (=> b!5338315 d!1713550))

(declare-fun b!5339211 () Bool)

(declare-fun e!3315526 () Bool)

(assert (=> b!5339211 (= e!3315526 (nullable!5182 (h!67662 (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343)))))))))))

(declare-fun call!381683 () (InoxSet Context!8794))

(declare-fun b!5339212 () Bool)

(declare-fun e!3315527 () (InoxSet Context!8794))

(assert (=> b!5339212 (= e!3315527 ((_ map or) call!381683 (derivationStepZipperUp!385 (Context!8795 (t!374555 (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343)))))))) (h!67663 s!2326))))))

(declare-fun b!5339213 () Bool)

(declare-fun e!3315528 () (InoxSet Context!8794))

(assert (=> b!5339213 (= e!3315527 e!3315528)))

(declare-fun c!929023 () Bool)

(assert (=> b!5339213 (= c!929023 ((_ is Cons!61214) (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343))))))))))

(declare-fun bm!381678 () Bool)

(assert (=> bm!381678 (= call!381683 (derivationStepZipperDown!461 (h!67662 (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343))))))) (Context!8795 (t!374555 (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343)))))))) (h!67663 s!2326)))))

(declare-fun d!1713552 () Bool)

(declare-fun c!929024 () Bool)

(assert (=> d!1713552 (= c!929024 e!3315526)))

(declare-fun res!2264751 () Bool)

(assert (=> d!1713552 (=> (not res!2264751) (not e!3315526))))

(assert (=> d!1713552 (= res!2264751 ((_ is Cons!61214) (exprs!4897 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343))))))))))

(assert (=> d!1713552 (= (derivationStepZipperUp!385 (Context!8795 (Cons!61214 (h!67662 (exprs!4897 (h!67664 zl!343))) (t!374555 (exprs!4897 (h!67664 zl!343))))) (h!67663 s!2326)) e!3315527)))

(declare-fun b!5339214 () Bool)

(assert (=> b!5339214 (= e!3315528 call!381683)))

(declare-fun b!5339215 () Bool)

(assert (=> b!5339215 (= e!3315528 ((as const (Array Context!8794 Bool)) false))))

(assert (= (and d!1713552 res!2264751) b!5339211))

(assert (= (and d!1713552 c!929024) b!5339212))

(assert (= (and d!1713552 (not c!929024)) b!5339213))

(assert (= (and b!5339213 c!929023) b!5339214))

(assert (= (and b!5339213 (not c!929023)) b!5339215))

(assert (= (or b!5339212 b!5339214) bm!381678))

(declare-fun m!6371760 () Bool)

(assert (=> b!5339211 m!6371760))

(declare-fun m!6371762 () Bool)

(assert (=> b!5339212 m!6371762))

(declare-fun m!6371764 () Bool)

(assert (=> bm!381678 m!6371764))

(assert (=> b!5338315 d!1713552))

(declare-fun b!5339216 () Bool)

(declare-fun e!3315529 () Bool)

(assert (=> b!5339216 (= e!3315529 (nullable!5182 (h!67662 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun call!381684 () (InoxSet Context!8794))

(declare-fun b!5339217 () Bool)

(declare-fun e!3315530 () (InoxSet Context!8794))

(assert (=> b!5339217 (= e!3315530 ((_ map or) call!381684 (derivationStepZipperUp!385 (Context!8795 (t!374555 (exprs!4897 (h!67664 zl!343)))) (h!67663 s!2326))))))

(declare-fun b!5339218 () Bool)

(declare-fun e!3315531 () (InoxSet Context!8794))

(assert (=> b!5339218 (= e!3315530 e!3315531)))

(declare-fun c!929025 () Bool)

(assert (=> b!5339218 (= c!929025 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343))))))

(declare-fun bm!381679 () Bool)

(assert (=> bm!381679 (= call!381684 (derivationStepZipperDown!461 (h!67662 (exprs!4897 (h!67664 zl!343))) (Context!8795 (t!374555 (exprs!4897 (h!67664 zl!343)))) (h!67663 s!2326)))))

(declare-fun d!1713554 () Bool)

(declare-fun c!929026 () Bool)

(assert (=> d!1713554 (= c!929026 e!3315529)))

(declare-fun res!2264752 () Bool)

(assert (=> d!1713554 (=> (not res!2264752) (not e!3315529))))

(assert (=> d!1713554 (= res!2264752 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343))))))

(assert (=> d!1713554 (= (derivationStepZipperUp!385 (h!67664 zl!343) (h!67663 s!2326)) e!3315530)))

(declare-fun b!5339219 () Bool)

(assert (=> b!5339219 (= e!3315531 call!381684)))

(declare-fun b!5339220 () Bool)

(assert (=> b!5339220 (= e!3315531 ((as const (Array Context!8794 Bool)) false))))

(assert (= (and d!1713554 res!2264752) b!5339216))

(assert (= (and d!1713554 c!929026) b!5339217))

(assert (= (and d!1713554 (not c!929026)) b!5339218))

(assert (= (and b!5339218 c!929025) b!5339219))

(assert (= (and b!5339218 (not c!929025)) b!5339220))

(assert (= (or b!5339217 b!5339219) bm!381679))

(assert (=> b!5339216 m!6370914))

(declare-fun m!6371766 () Bool)

(assert (=> b!5339217 m!6371766))

(declare-fun m!6371768 () Bool)

(assert (=> bm!381679 m!6371768))

(assert (=> b!5338315 d!1713554))

(declare-fun d!1713556 () Bool)

(declare-fun dynLambda!24207 (Int Context!8794) (InoxSet Context!8794))

(assert (=> d!1713556 (= (flatMap!740 z!1189 lambda!273415) (dynLambda!24207 lambda!273415 (h!67664 zl!343)))))

(declare-fun lt!2177068 () Unit!153570)

(declare-fun choose!40017 ((InoxSet Context!8794) Context!8794 Int) Unit!153570)

(assert (=> d!1713556 (= lt!2177068 (choose!40017 z!1189 (h!67664 zl!343) lambda!273415))))

(assert (=> d!1713556 (= z!1189 (store ((as const (Array Context!8794 Bool)) false) (h!67664 zl!343) true))))

(assert (=> d!1713556 (= (lemmaFlatMapOnSingletonSet!272 z!1189 (h!67664 zl!343) lambda!273415) lt!2177068)))

(declare-fun b_lambda!205181 () Bool)

(assert (=> (not b_lambda!205181) (not d!1713556)))

(declare-fun bs!1238184 () Bool)

(assert (= bs!1238184 d!1713556))

(assert (=> bs!1238184 m!6370916))

(declare-fun m!6371770 () Bool)

(assert (=> bs!1238184 m!6371770))

(declare-fun m!6371772 () Bool)

(assert (=> bs!1238184 m!6371772))

(declare-fun m!6371774 () Bool)

(assert (=> bs!1238184 m!6371774))

(assert (=> b!5338315 d!1713556))

(declare-fun bs!1238185 () Bool)

(declare-fun b!5339221 () Bool)

(assert (= bs!1238185 (and b!5339221 d!1713490)))

(declare-fun lambda!273511 () Int)

(assert (=> bs!1238185 (not (= lambda!273511 lambda!273497))))

(declare-fun bs!1238186 () Bool)

(assert (= bs!1238186 (and b!5339221 b!5338327)))

(assert (=> bs!1238186 (not (= lambda!273511 lambda!273419))))

(assert (=> bs!1238186 (not (= lambda!273511 lambda!273416))))

(declare-fun bs!1238187 () Bool)

(assert (= bs!1238187 (and b!5339221 b!5338603)))

(assert (=> bs!1238187 (not (= lambda!273511 lambda!273452))))

(assert (=> bs!1238186 (not (= lambda!273511 lambda!273417))))

(declare-fun bs!1238188 () Bool)

(assert (= bs!1238188 (and b!5339221 d!1713516)))

(assert (=> bs!1238188 (not (= lambda!273511 lambda!273499))))

(declare-fun bs!1238189 () Bool)

(assert (= bs!1238189 (and b!5339221 b!5338334)))

(assert (=> bs!1238189 (not (= lambda!273511 lambda!273413))))

(declare-fun bs!1238190 () Bool)

(assert (= bs!1238190 (and b!5339221 b!5338623)))

(assert (=> bs!1238190 (= (and (= (reg!15342 r!7292) (reg!15342 lt!2176900)) (= r!7292 lt!2176900)) (= lambda!273511 lambda!273456))))

(assert (=> bs!1238188 (not (= lambda!273511 lambda!273500))))

(declare-fun bs!1238191 () Bool)

(assert (= bs!1238191 (and b!5339221 b!5338629)))

(assert (=> bs!1238191 (not (= lambda!273511 lambda!273457))))

(declare-fun bs!1238192 () Bool)

(assert (= bs!1238192 (and b!5339221 b!5338597)))

(assert (=> bs!1238192 (= (and (= (reg!15342 r!7292) (reg!15342 lt!2176910)) (= r!7292 lt!2176910)) (= lambda!273511 lambda!273450))))

(declare-fun bs!1238193 () Bool)

(assert (= bs!1238193 (and b!5339221 d!1713416)))

(assert (=> bs!1238193 (not (= lambda!273511 lambda!273465))))

(assert (=> bs!1238185 (not (= lambda!273511 lambda!273496))))

(assert (=> bs!1238186 (not (= lambda!273511 lambda!273418))))

(assert (=> bs!1238189 (not (= lambda!273511 lambda!273414))))

(declare-fun bs!1238194 () Bool)

(assert (= bs!1238194 (and b!5339221 d!1713488)))

(assert (=> bs!1238194 (not (= lambda!273511 lambda!273478))))

(assert (=> b!5339221 true))

(assert (=> b!5339221 true))

(declare-fun bs!1238195 () Bool)

(declare-fun b!5339227 () Bool)

(assert (= bs!1238195 (and b!5339227 d!1713490)))

(declare-fun lambda!273512 () Int)

(assert (=> bs!1238195 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273512 lambda!273497))))

(declare-fun bs!1238196 () Bool)

(assert (= bs!1238196 (and b!5339227 b!5338327)))

(assert (=> bs!1238196 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273512 lambda!273419))))

(assert (=> bs!1238196 (not (= lambda!273512 lambda!273416))))

(declare-fun bs!1238197 () Bool)

(assert (= bs!1238197 (and b!5339227 b!5338603)))

(assert (=> bs!1238197 (= (and (= (regOne!30538 r!7292) (regOne!30538 lt!2176910)) (= (regTwo!30538 r!7292) (regTwo!30538 lt!2176910))) (= lambda!273512 lambda!273452))))

(declare-fun bs!1238198 () Bool)

(assert (= bs!1238198 (and b!5339227 b!5339221)))

(assert (=> bs!1238198 (not (= lambda!273512 lambda!273511))))

(assert (=> bs!1238196 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273512 lambda!273417))))

(declare-fun bs!1238199 () Bool)

(assert (= bs!1238199 (and b!5339227 d!1713516)))

(assert (=> bs!1238199 (not (= lambda!273512 lambda!273499))))

(declare-fun bs!1238200 () Bool)

(assert (= bs!1238200 (and b!5339227 b!5338334)))

(assert (=> bs!1238200 (not (= lambda!273512 lambda!273413))))

(declare-fun bs!1238201 () Bool)

(assert (= bs!1238201 (and b!5339227 b!5338623)))

(assert (=> bs!1238201 (not (= lambda!273512 lambda!273456))))

(assert (=> bs!1238199 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273512 lambda!273500))))

(declare-fun bs!1238202 () Bool)

(assert (= bs!1238202 (and b!5339227 b!5338629)))

(assert (=> bs!1238202 (= (and (= (regOne!30538 r!7292) (regOne!30538 lt!2176900)) (= (regTwo!30538 r!7292) (regTwo!30538 lt!2176900))) (= lambda!273512 lambda!273457))))

(declare-fun bs!1238203 () Bool)

(assert (= bs!1238203 (and b!5339227 b!5338597)))

(assert (=> bs!1238203 (not (= lambda!273512 lambda!273450))))

(declare-fun bs!1238204 () Bool)

(assert (= bs!1238204 (and b!5339227 d!1713416)))

(assert (=> bs!1238204 (not (= lambda!273512 lambda!273465))))

(assert (=> bs!1238195 (not (= lambda!273512 lambda!273496))))

(assert (=> bs!1238196 (not (= lambda!273512 lambda!273418))))

(assert (=> bs!1238200 (= lambda!273512 lambda!273414)))

(declare-fun bs!1238205 () Bool)

(assert (= bs!1238205 (and b!5339227 d!1713488)))

(assert (=> bs!1238205 (not (= lambda!273512 lambda!273478))))

(assert (=> b!5339227 true))

(assert (=> b!5339227 true))

(declare-fun e!3315535 () Bool)

(declare-fun call!381685 () Bool)

(assert (=> b!5339221 (= e!3315535 call!381685)))

(declare-fun bm!381680 () Bool)

(declare-fun c!929027 () Bool)

(assert (=> bm!381680 (= call!381685 (Exists!2194 (ite c!929027 lambda!273511 lambda!273512)))))

(declare-fun d!1713558 () Bool)

(declare-fun c!929029 () Bool)

(assert (=> d!1713558 (= c!929029 ((_ is EmptyExpr!15013) r!7292))))

(declare-fun e!3315534 () Bool)

(assert (=> d!1713558 (= (matchRSpec!2116 r!7292 s!2326) e!3315534)))

(declare-fun b!5339222 () Bool)

(declare-fun e!3315532 () Bool)

(assert (=> b!5339222 (= e!3315534 e!3315532)))

(declare-fun res!2264754 () Bool)

(assert (=> b!5339222 (= res!2264754 (not ((_ is EmptyLang!15013) r!7292)))))

(assert (=> b!5339222 (=> (not res!2264754) (not e!3315532))))

(declare-fun b!5339223 () Bool)

(declare-fun e!3315537 () Bool)

(declare-fun e!3315538 () Bool)

(assert (=> b!5339223 (= e!3315537 e!3315538)))

(declare-fun res!2264753 () Bool)

(assert (=> b!5339223 (= res!2264753 (matchRSpec!2116 (regOne!30539 r!7292) s!2326))))

(assert (=> b!5339223 (=> res!2264753 e!3315538)))

(declare-fun b!5339224 () Bool)

(declare-fun e!3315536 () Bool)

(assert (=> b!5339224 (= e!3315536 (= s!2326 (Cons!61215 (c!928751 r!7292) Nil!61215)))))

(declare-fun b!5339225 () Bool)

(declare-fun res!2264755 () Bool)

(assert (=> b!5339225 (=> res!2264755 e!3315535)))

(declare-fun call!381686 () Bool)

(assert (=> b!5339225 (= res!2264755 call!381686)))

(declare-fun e!3315533 () Bool)

(assert (=> b!5339225 (= e!3315533 e!3315535)))

(declare-fun b!5339226 () Bool)

(assert (=> b!5339226 (= e!3315537 e!3315533)))

(assert (=> b!5339226 (= c!929027 ((_ is Star!15013) r!7292))))

(assert (=> b!5339227 (= e!3315533 call!381685)))

(declare-fun b!5339228 () Bool)

(declare-fun c!929028 () Bool)

(assert (=> b!5339228 (= c!929028 ((_ is Union!15013) r!7292))))

(assert (=> b!5339228 (= e!3315536 e!3315537)))

(declare-fun b!5339229 () Bool)

(assert (=> b!5339229 (= e!3315534 call!381686)))

(declare-fun bm!381681 () Bool)

(assert (=> bm!381681 (= call!381686 (isEmpty!33190 s!2326))))

(declare-fun b!5339230 () Bool)

(declare-fun c!929030 () Bool)

(assert (=> b!5339230 (= c!929030 ((_ is ElementMatch!15013) r!7292))))

(assert (=> b!5339230 (= e!3315532 e!3315536)))

(declare-fun b!5339231 () Bool)

(assert (=> b!5339231 (= e!3315538 (matchRSpec!2116 (regTwo!30539 r!7292) s!2326))))

(assert (= (and d!1713558 c!929029) b!5339229))

(assert (= (and d!1713558 (not c!929029)) b!5339222))

(assert (= (and b!5339222 res!2264754) b!5339230))

(assert (= (and b!5339230 c!929030) b!5339224))

(assert (= (and b!5339230 (not c!929030)) b!5339228))

(assert (= (and b!5339228 c!929028) b!5339223))

(assert (= (and b!5339228 (not c!929028)) b!5339226))

(assert (= (and b!5339223 (not res!2264753)) b!5339231))

(assert (= (and b!5339226 c!929027) b!5339225))

(assert (= (and b!5339226 (not c!929027)) b!5339227))

(assert (= (and b!5339225 (not res!2264755)) b!5339221))

(assert (= (or b!5339221 b!5339227) bm!381680))

(assert (= (or b!5339229 b!5339225) bm!381681))

(declare-fun m!6371776 () Bool)

(assert (=> bm!381680 m!6371776))

(declare-fun m!6371778 () Bool)

(assert (=> b!5339223 m!6371778))

(assert (=> bm!381681 m!6371204))

(declare-fun m!6371780 () Bool)

(assert (=> b!5339231 m!6371780))

(assert (=> b!5338311 d!1713558))

(declare-fun b!5339232 () Bool)

(declare-fun e!3315540 () Bool)

(declare-fun e!3315542 () Bool)

(assert (=> b!5339232 (= e!3315540 e!3315542)))

(declare-fun c!929033 () Bool)

(assert (=> b!5339232 (= c!929033 ((_ is EmptyLang!15013) r!7292))))

(declare-fun bm!381682 () Bool)

(declare-fun call!381687 () Bool)

(assert (=> bm!381682 (= call!381687 (isEmpty!33190 s!2326))))

(declare-fun b!5339233 () Bool)

(declare-fun lt!2177069 () Bool)

(assert (=> b!5339233 (= e!3315542 (not lt!2177069))))

(declare-fun b!5339234 () Bool)

(assert (=> b!5339234 (= e!3315540 (= lt!2177069 call!381687))))

(declare-fun b!5339235 () Bool)

(declare-fun res!2264756 () Bool)

(declare-fun e!3315539 () Bool)

(assert (=> b!5339235 (=> (not res!2264756) (not e!3315539))))

(assert (=> b!5339235 (= res!2264756 (isEmpty!33190 (tail!10543 s!2326)))))

(declare-fun b!5339236 () Bool)

(declare-fun e!3315544 () Bool)

(assert (=> b!5339236 (= e!3315544 (not (= (head!11446 s!2326) (c!928751 r!7292))))))

(declare-fun b!5339237 () Bool)

(declare-fun e!3315543 () Bool)

(declare-fun e!3315545 () Bool)

(assert (=> b!5339237 (= e!3315543 e!3315545)))

(declare-fun res!2264760 () Bool)

(assert (=> b!5339237 (=> (not res!2264760) (not e!3315545))))

(assert (=> b!5339237 (= res!2264760 (not lt!2177069))))

(declare-fun b!5339238 () Bool)

(declare-fun res!2264762 () Bool)

(assert (=> b!5339238 (=> res!2264762 e!3315543)))

(assert (=> b!5339238 (= res!2264762 (not ((_ is ElementMatch!15013) r!7292)))))

(assert (=> b!5339238 (= e!3315542 e!3315543)))

(declare-fun b!5339240 () Bool)

(declare-fun res!2264761 () Bool)

(assert (=> b!5339240 (=> res!2264761 e!3315543)))

(assert (=> b!5339240 (= res!2264761 e!3315539)))

(declare-fun res!2264757 () Bool)

(assert (=> b!5339240 (=> (not res!2264757) (not e!3315539))))

(assert (=> b!5339240 (= res!2264757 lt!2177069)))

(declare-fun b!5339241 () Bool)

(assert (=> b!5339241 (= e!3315539 (= (head!11446 s!2326) (c!928751 r!7292)))))

(declare-fun b!5339242 () Bool)

(assert (=> b!5339242 (= e!3315545 e!3315544)))

(declare-fun res!2264758 () Bool)

(assert (=> b!5339242 (=> res!2264758 e!3315544)))

(assert (=> b!5339242 (= res!2264758 call!381687)))

(declare-fun b!5339243 () Bool)

(declare-fun res!2264759 () Bool)

(assert (=> b!5339243 (=> res!2264759 e!3315544)))

(assert (=> b!5339243 (= res!2264759 (not (isEmpty!33190 (tail!10543 s!2326))))))

(declare-fun b!5339244 () Bool)

(declare-fun res!2264763 () Bool)

(assert (=> b!5339244 (=> (not res!2264763) (not e!3315539))))

(assert (=> b!5339244 (= res!2264763 (not call!381687))))

(declare-fun b!5339245 () Bool)

(declare-fun e!3315541 () Bool)

(assert (=> b!5339245 (= e!3315541 (nullable!5182 r!7292))))

(declare-fun d!1713560 () Bool)

(assert (=> d!1713560 e!3315540))

(declare-fun c!929032 () Bool)

(assert (=> d!1713560 (= c!929032 ((_ is EmptyExpr!15013) r!7292))))

(assert (=> d!1713560 (= lt!2177069 e!3315541)))

(declare-fun c!929031 () Bool)

(assert (=> d!1713560 (= c!929031 (isEmpty!33190 s!2326))))

(assert (=> d!1713560 (validRegex!6749 r!7292)))

(assert (=> d!1713560 (= (matchR!7198 r!7292 s!2326) lt!2177069)))

(declare-fun b!5339239 () Bool)

(assert (=> b!5339239 (= e!3315541 (matchR!7198 (derivativeStep!4185 r!7292 (head!11446 s!2326)) (tail!10543 s!2326)))))

(assert (= (and d!1713560 c!929031) b!5339245))

(assert (= (and d!1713560 (not c!929031)) b!5339239))

(assert (= (and d!1713560 c!929032) b!5339234))

(assert (= (and d!1713560 (not c!929032)) b!5339232))

(assert (= (and b!5339232 c!929033) b!5339233))

(assert (= (and b!5339232 (not c!929033)) b!5339238))

(assert (= (and b!5339238 (not res!2264762)) b!5339240))

(assert (= (and b!5339240 res!2264757) b!5339244))

(assert (= (and b!5339244 res!2264763) b!5339235))

(assert (= (and b!5339235 res!2264756) b!5339241))

(assert (= (and b!5339240 (not res!2264761)) b!5339237))

(assert (= (and b!5339237 res!2264760) b!5339242))

(assert (= (and b!5339242 (not res!2264758)) b!5339243))

(assert (= (and b!5339243 (not res!2264759)) b!5339236))

(assert (= (or b!5339234 b!5339244 b!5339242) bm!381682))

(assert (=> d!1713560 m!6371204))

(assert (=> d!1713560 m!6370922))

(assert (=> b!5339241 m!6371218))

(assert (=> b!5339236 m!6371218))

(assert (=> b!5339239 m!6371218))

(assert (=> b!5339239 m!6371218))

(declare-fun m!6371782 () Bool)

(assert (=> b!5339239 m!6371782))

(assert (=> b!5339239 m!6371224))

(assert (=> b!5339239 m!6371782))

(assert (=> b!5339239 m!6371224))

(declare-fun m!6371784 () Bool)

(assert (=> b!5339239 m!6371784))

(assert (=> b!5339235 m!6371224))

(assert (=> b!5339235 m!6371224))

(assert (=> b!5339235 m!6371562))

(assert (=> bm!381682 m!6371204))

(assert (=> b!5339243 m!6371224))

(assert (=> b!5339243 m!6371224))

(assert (=> b!5339243 m!6371562))

(declare-fun m!6371786 () Bool)

(assert (=> b!5339245 m!6371786))

(assert (=> b!5338311 d!1713560))

(declare-fun d!1713562 () Bool)

(assert (=> d!1713562 (= (matchR!7198 r!7292 s!2326) (matchRSpec!2116 r!7292 s!2326))))

(declare-fun lt!2177070 () Unit!153570)

(assert (=> d!1713562 (= lt!2177070 (choose!40015 r!7292 s!2326))))

(assert (=> d!1713562 (validRegex!6749 r!7292)))

(assert (=> d!1713562 (= (mainMatchTheorem!2116 r!7292 s!2326) lt!2177070)))

(declare-fun bs!1238206 () Bool)

(assert (= bs!1238206 d!1713562))

(assert (=> bs!1238206 m!6370988))

(assert (=> bs!1238206 m!6370986))

(declare-fun m!6371788 () Bool)

(assert (=> bs!1238206 m!6371788))

(assert (=> bs!1238206 m!6370922))

(assert (=> b!5338311 d!1713562))

(declare-fun d!1713564 () Bool)

(assert (=> d!1713564 (= (Exists!2194 lambda!273414) (choose!40008 lambda!273414))))

(declare-fun bs!1238207 () Bool)

(assert (= bs!1238207 d!1713564))

(declare-fun m!6371790 () Bool)

(assert (=> bs!1238207 m!6371790))

(assert (=> b!5338334 d!1713564))

(declare-fun b!5339246 () Bool)

(declare-fun e!3315550 () Option!15124)

(assert (=> b!5339246 (= e!3315550 (Some!15123 (tuple2!64425 Nil!61215 s!2326)))))

(declare-fun b!5339247 () Bool)

(declare-fun lt!2177073 () Unit!153570)

(declare-fun lt!2177072 () Unit!153570)

(assert (=> b!5339247 (= lt!2177073 lt!2177072)))

(assert (=> b!5339247 (= (++!13344 (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326)) s!2326)))

(assert (=> b!5339247 (= lt!2177072 (lemmaMoveElementToOtherListKeepsConcatEq!1759 Nil!61215 (h!67663 s!2326) (t!374556 s!2326) s!2326))))

(declare-fun e!3315549 () Option!15124)

(assert (=> b!5339247 (= e!3315549 (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) (++!13344 Nil!61215 (Cons!61215 (h!67663 s!2326) Nil!61215)) (t!374556 s!2326) s!2326))))

(declare-fun b!5339248 () Bool)

(assert (=> b!5339248 (= e!3315549 None!15123)))

(declare-fun b!5339249 () Bool)

(assert (=> b!5339249 (= e!3315550 e!3315549)))

(declare-fun c!929034 () Bool)

(assert (=> b!5339249 (= c!929034 ((_ is Nil!61215) s!2326))))

(declare-fun d!1713566 () Bool)

(declare-fun e!3315548 () Bool)

(assert (=> d!1713566 e!3315548))

(declare-fun res!2264764 () Bool)

(assert (=> d!1713566 (=> res!2264764 e!3315548)))

(declare-fun e!3315546 () Bool)

(assert (=> d!1713566 (= res!2264764 e!3315546)))

(declare-fun res!2264766 () Bool)

(assert (=> d!1713566 (=> (not res!2264766) (not e!3315546))))

(declare-fun lt!2177071 () Option!15124)

(assert (=> d!1713566 (= res!2264766 (isDefined!11827 lt!2177071))))

(assert (=> d!1713566 (= lt!2177071 e!3315550)))

(declare-fun c!929035 () Bool)

(declare-fun e!3315547 () Bool)

(assert (=> d!1713566 (= c!929035 e!3315547)))

(declare-fun res!2264765 () Bool)

(assert (=> d!1713566 (=> (not res!2264765) (not e!3315547))))

(assert (=> d!1713566 (= res!2264765 (matchR!7198 (regOne!30538 r!7292) Nil!61215))))

(assert (=> d!1713566 (validRegex!6749 (regOne!30538 r!7292))))

(assert (=> d!1713566 (= (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) Nil!61215 s!2326 s!2326) lt!2177071)))

(declare-fun b!5339250 () Bool)

(assert (=> b!5339250 (= e!3315548 (not (isDefined!11827 lt!2177071)))))

(declare-fun b!5339251 () Bool)

(assert (=> b!5339251 (= e!3315547 (matchR!7198 (regTwo!30538 r!7292) s!2326))))

(declare-fun b!5339252 () Bool)

(declare-fun res!2264768 () Bool)

(assert (=> b!5339252 (=> (not res!2264768) (not e!3315546))))

(assert (=> b!5339252 (= res!2264768 (matchR!7198 (regTwo!30538 r!7292) (_2!35515 (get!21056 lt!2177071))))))

(declare-fun b!5339253 () Bool)

(assert (=> b!5339253 (= e!3315546 (= (++!13344 (_1!35515 (get!21056 lt!2177071)) (_2!35515 (get!21056 lt!2177071))) s!2326))))

(declare-fun b!5339254 () Bool)

(declare-fun res!2264767 () Bool)

(assert (=> b!5339254 (=> (not res!2264767) (not e!3315546))))

(assert (=> b!5339254 (= res!2264767 (matchR!7198 (regOne!30538 r!7292) (_1!35515 (get!21056 lt!2177071))))))

(assert (= (and d!1713566 res!2264765) b!5339251))

(assert (= (and d!1713566 c!929035) b!5339246))

(assert (= (and d!1713566 (not c!929035)) b!5339249))

(assert (= (and b!5339249 c!929034) b!5339248))

(assert (= (and b!5339249 (not c!929034)) b!5339247))

(assert (= (and d!1713566 res!2264766) b!5339254))

(assert (= (and b!5339254 res!2264767) b!5339252))

(assert (= (and b!5339252 res!2264768) b!5339253))

(assert (= (and d!1713566 (not res!2264764)) b!5339250))

(assert (=> b!5339247 m!6371312))

(assert (=> b!5339247 m!6371312))

(assert (=> b!5339247 m!6371314))

(assert (=> b!5339247 m!6371316))

(assert (=> b!5339247 m!6371312))

(declare-fun m!6371792 () Bool)

(assert (=> b!5339247 m!6371792))

(declare-fun m!6371794 () Bool)

(assert (=> b!5339253 m!6371794))

(declare-fun m!6371796 () Bool)

(assert (=> b!5339253 m!6371796))

(assert (=> b!5339254 m!6371794))

(declare-fun m!6371798 () Bool)

(assert (=> b!5339254 m!6371798))

(declare-fun m!6371800 () Bool)

(assert (=> d!1713566 m!6371800))

(declare-fun m!6371802 () Bool)

(assert (=> d!1713566 m!6371802))

(assert (=> d!1713566 m!6370936))

(assert (=> b!5339252 m!6371794))

(declare-fun m!6371804 () Bool)

(assert (=> b!5339252 m!6371804))

(declare-fun m!6371806 () Bool)

(assert (=> b!5339251 m!6371806))

(assert (=> b!5339250 m!6371800))

(assert (=> b!5338334 d!1713566))

(declare-fun d!1713568 () Bool)

(assert (=> d!1713568 (= (Exists!2194 lambda!273413) (choose!40008 lambda!273413))))

(declare-fun bs!1238208 () Bool)

(assert (= bs!1238208 d!1713568))

(declare-fun m!6371808 () Bool)

(assert (=> bs!1238208 m!6371808))

(assert (=> b!5338334 d!1713568))

(declare-fun bs!1238209 () Bool)

(declare-fun d!1713570 () Bool)

(assert (= bs!1238209 (and d!1713570 d!1713490)))

(declare-fun lambda!273513 () Int)

(assert (=> bs!1238209 (not (= lambda!273513 lambda!273497))))

(declare-fun bs!1238210 () Bool)

(assert (= bs!1238210 (and d!1713570 b!5338327)))

(assert (=> bs!1238210 (not (= lambda!273513 lambda!273419))))

(declare-fun bs!1238211 () Bool)

(assert (= bs!1238211 (and d!1713570 b!5339227)))

(assert (=> bs!1238211 (not (= lambda!273513 lambda!273512))))

(assert (=> bs!1238210 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273513 lambda!273416))))

(declare-fun bs!1238212 () Bool)

(assert (= bs!1238212 (and d!1713570 b!5338603)))

(assert (=> bs!1238212 (not (= lambda!273513 lambda!273452))))

(declare-fun bs!1238213 () Bool)

(assert (= bs!1238213 (and d!1713570 b!5339221)))

(assert (=> bs!1238213 (not (= lambda!273513 lambda!273511))))

(assert (=> bs!1238210 (not (= lambda!273513 lambda!273417))))

(declare-fun bs!1238214 () Bool)

(assert (= bs!1238214 (and d!1713570 d!1713516)))

(assert (=> bs!1238214 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273513 lambda!273499))))

(declare-fun bs!1238215 () Bool)

(assert (= bs!1238215 (and d!1713570 b!5338334)))

(assert (=> bs!1238215 (= lambda!273513 lambda!273413)))

(declare-fun bs!1238216 () Bool)

(assert (= bs!1238216 (and d!1713570 b!5338623)))

(assert (=> bs!1238216 (not (= lambda!273513 lambda!273456))))

(assert (=> bs!1238214 (not (= lambda!273513 lambda!273500))))

(declare-fun bs!1238217 () Bool)

(assert (= bs!1238217 (and d!1713570 b!5338629)))

(assert (=> bs!1238217 (not (= lambda!273513 lambda!273457))))

(declare-fun bs!1238218 () Bool)

(assert (= bs!1238218 (and d!1713570 b!5338597)))

(assert (=> bs!1238218 (not (= lambda!273513 lambda!273450))))

(declare-fun bs!1238219 () Bool)

(assert (= bs!1238219 (and d!1713570 d!1713416)))

(assert (=> bs!1238219 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273513 lambda!273465))))

(assert (=> bs!1238209 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273513 lambda!273496))))

(assert (=> bs!1238210 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273513 lambda!273418))))

(assert (=> bs!1238215 (not (= lambda!273513 lambda!273414))))

(declare-fun bs!1238220 () Bool)

(assert (= bs!1238220 (and d!1713570 d!1713488)))

(assert (=> bs!1238220 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273513 lambda!273478))))

(assert (=> d!1713570 true))

(assert (=> d!1713570 true))

(assert (=> d!1713570 true))

(assert (=> d!1713570 (= (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) Nil!61215 s!2326 s!2326)) (Exists!2194 lambda!273513))))

(declare-fun lt!2177074 () Unit!153570)

(assert (=> d!1713570 (= lt!2177074 (choose!40010 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326))))

(assert (=> d!1713570 (validRegex!6749 (regOne!30538 r!7292))))

(assert (=> d!1713570 (= (lemmaFindConcatSeparationEquivalentToExists!1302 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326) lt!2177074)))

(declare-fun bs!1238221 () Bool)

(assert (= bs!1238221 d!1713570))

(assert (=> bs!1238221 m!6371010))

(assert (=> bs!1238221 m!6371012))

(assert (=> bs!1238221 m!6371010))

(declare-fun m!6371810 () Bool)

(assert (=> bs!1238221 m!6371810))

(assert (=> bs!1238221 m!6370936))

(declare-fun m!6371812 () Bool)

(assert (=> bs!1238221 m!6371812))

(assert (=> b!5338334 d!1713570))

(declare-fun bs!1238222 () Bool)

(declare-fun d!1713572 () Bool)

(assert (= bs!1238222 (and d!1713572 d!1713490)))

(declare-fun lambda!273514 () Int)

(assert (=> bs!1238222 (not (= lambda!273514 lambda!273497))))

(declare-fun bs!1238223 () Bool)

(assert (= bs!1238223 (and d!1713572 b!5338327)))

(assert (=> bs!1238223 (not (= lambda!273514 lambda!273419))))

(declare-fun bs!1238224 () Bool)

(assert (= bs!1238224 (and d!1713572 b!5339227)))

(assert (=> bs!1238224 (not (= lambda!273514 lambda!273512))))

(assert (=> bs!1238223 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273514 lambda!273416))))

(declare-fun bs!1238225 () Bool)

(assert (= bs!1238225 (and d!1713572 b!5338603)))

(assert (=> bs!1238225 (not (= lambda!273514 lambda!273452))))

(declare-fun bs!1238226 () Bool)

(assert (= bs!1238226 (and d!1713572 b!5339221)))

(assert (=> bs!1238226 (not (= lambda!273514 lambda!273511))))

(assert (=> bs!1238223 (not (= lambda!273514 lambda!273417))))

(declare-fun bs!1238227 () Bool)

(assert (= bs!1238227 (and d!1713572 d!1713516)))

(assert (=> bs!1238227 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273514 lambda!273499))))

(declare-fun bs!1238228 () Bool)

(assert (= bs!1238228 (and d!1713572 b!5338334)))

(assert (=> bs!1238228 (= lambda!273514 lambda!273413)))

(declare-fun bs!1238229 () Bool)

(assert (= bs!1238229 (and d!1713572 b!5338623)))

(assert (=> bs!1238229 (not (= lambda!273514 lambda!273456))))

(assert (=> bs!1238227 (not (= lambda!273514 lambda!273500))))

(declare-fun bs!1238230 () Bool)

(assert (= bs!1238230 (and d!1713572 b!5338629)))

(assert (=> bs!1238230 (not (= lambda!273514 lambda!273457))))

(declare-fun bs!1238231 () Bool)

(assert (= bs!1238231 (and d!1713572 b!5338597)))

(assert (=> bs!1238231 (not (= lambda!273514 lambda!273450))))

(declare-fun bs!1238232 () Bool)

(assert (= bs!1238232 (and d!1713572 d!1713416)))

(assert (=> bs!1238232 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273514 lambda!273465))))

(assert (=> bs!1238222 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273514 lambda!273496))))

(assert (=> bs!1238223 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273514 lambda!273418))))

(assert (=> bs!1238228 (not (= lambda!273514 lambda!273414))))

(declare-fun bs!1238233 () Bool)

(assert (= bs!1238233 (and d!1713572 d!1713488)))

(assert (=> bs!1238233 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273514 lambda!273478))))

(declare-fun bs!1238234 () Bool)

(assert (= bs!1238234 (and d!1713572 d!1713570)))

(assert (=> bs!1238234 (= lambda!273514 lambda!273513)))

(assert (=> d!1713572 true))

(assert (=> d!1713572 true))

(assert (=> d!1713572 true))

(declare-fun lambda!273515 () Int)

(assert (=> bs!1238222 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273515 lambda!273497))))

(assert (=> bs!1238223 (= (and (= (regOne!30538 r!7292) (regTwo!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176921)) (= lambda!273515 lambda!273419))))

(assert (=> bs!1238224 (= lambda!273515 lambda!273512)))

(assert (=> bs!1238223 (not (= lambda!273515 lambda!273416))))

(assert (=> bs!1238225 (= (and (= (regOne!30538 r!7292) (regOne!30538 lt!2176910)) (= (regTwo!30538 r!7292) (regTwo!30538 lt!2176910))) (= lambda!273515 lambda!273452))))

(assert (=> bs!1238226 (not (= lambda!273515 lambda!273511))))

(assert (=> bs!1238223 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273515 lambda!273417))))

(assert (=> bs!1238227 (not (= lambda!273515 lambda!273499))))

(assert (=> bs!1238228 (not (= lambda!273515 lambda!273413))))

(assert (=> bs!1238229 (not (= lambda!273515 lambda!273456))))

(declare-fun bs!1238235 () Bool)

(assert (= bs!1238235 d!1713572))

(assert (=> bs!1238235 (not (= lambda!273515 lambda!273514))))

(assert (=> bs!1238227 (= (and (= (regOne!30538 r!7292) (regOne!30538 (regOne!30538 r!7292))) (= (regTwo!30538 r!7292) lt!2176910)) (= lambda!273515 lambda!273500))))

(assert (=> bs!1238230 (= (and (= (regOne!30538 r!7292) (regOne!30538 lt!2176900)) (= (regTwo!30538 r!7292) (regTwo!30538 lt!2176900))) (= lambda!273515 lambda!273457))))

(assert (=> bs!1238231 (not (= lambda!273515 lambda!273450))))

(assert (=> bs!1238232 (not (= lambda!273515 lambda!273465))))

(assert (=> bs!1238222 (not (= lambda!273515 lambda!273496))))

(assert (=> bs!1238223 (not (= lambda!273515 lambda!273418))))

(assert (=> bs!1238228 (= lambda!273515 lambda!273414)))

(assert (=> bs!1238233 (not (= lambda!273515 lambda!273478))))

(assert (=> bs!1238234 (not (= lambda!273515 lambda!273513))))

(assert (=> d!1713572 true))

(assert (=> d!1713572 true))

(assert (=> d!1713572 true))

(assert (=> d!1713572 (= (Exists!2194 lambda!273514) (Exists!2194 lambda!273515))))

(declare-fun lt!2177075 () Unit!153570)

(assert (=> d!1713572 (= lt!2177075 (choose!40014 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326))))

(assert (=> d!1713572 (validRegex!6749 (regOne!30538 r!7292))))

(assert (=> d!1713572 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!848 (regOne!30538 r!7292) (regTwo!30538 r!7292) s!2326) lt!2177075)))

(declare-fun m!6371814 () Bool)

(assert (=> bs!1238235 m!6371814))

(declare-fun m!6371816 () Bool)

(assert (=> bs!1238235 m!6371816))

(declare-fun m!6371818 () Bool)

(assert (=> bs!1238235 m!6371818))

(assert (=> bs!1238235 m!6370936))

(assert (=> b!5338334 d!1713572))

(declare-fun d!1713574 () Bool)

(assert (=> d!1713574 (= (isDefined!11827 (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) Nil!61215 s!2326 s!2326)) (not (isEmpty!33192 (findConcatSeparation!1538 (regOne!30538 r!7292) (regTwo!30538 r!7292) Nil!61215 s!2326 s!2326))))))

(declare-fun bs!1238236 () Bool)

(assert (= bs!1238236 d!1713574))

(assert (=> bs!1238236 m!6371010))

(declare-fun m!6371820 () Bool)

(assert (=> bs!1238236 m!6371820))

(assert (=> b!5338334 d!1713574))

(declare-fun d!1713576 () Bool)

(declare-fun e!3315553 () Bool)

(assert (=> d!1713576 e!3315553))

(declare-fun res!2264771 () Bool)

(assert (=> d!1713576 (=> (not res!2264771) (not e!3315553))))

(declare-fun lt!2177078 () List!61340)

(declare-fun noDuplicate!1319 (List!61340) Bool)

(assert (=> d!1713576 (= res!2264771 (noDuplicate!1319 lt!2177078))))

(declare-fun choose!40018 ((InoxSet Context!8794)) List!61340)

(assert (=> d!1713576 (= lt!2177078 (choose!40018 z!1189))))

(assert (=> d!1713576 (= (toList!8797 z!1189) lt!2177078)))

(declare-fun b!5339257 () Bool)

(declare-fun content!10921 (List!61340) (InoxSet Context!8794))

(assert (=> b!5339257 (= e!3315553 (= (content!10921 lt!2177078) z!1189))))

(assert (= (and d!1713576 res!2264771) b!5339257))

(declare-fun m!6371822 () Bool)

(assert (=> d!1713576 m!6371822))

(declare-fun m!6371824 () Bool)

(assert (=> d!1713576 m!6371824))

(declare-fun m!6371826 () Bool)

(assert (=> b!5339257 m!6371826))

(assert (=> b!5338320 d!1713576))

(declare-fun b!5339258 () Bool)

(declare-fun e!3315554 () Bool)

(declare-fun e!3315556 () Bool)

(assert (=> b!5339258 (= e!3315554 e!3315556)))

(declare-fun res!2264776 () Bool)

(assert (=> b!5339258 (= res!2264776 (not (nullable!5182 (reg!15342 (regTwo!30538 r!7292)))))))

(assert (=> b!5339258 (=> (not res!2264776) (not e!3315556))))

(declare-fun b!5339259 () Bool)

(declare-fun res!2264772 () Bool)

(declare-fun e!3315560 () Bool)

(assert (=> b!5339259 (=> (not res!2264772) (not e!3315560))))

(declare-fun call!381689 () Bool)

(assert (=> b!5339259 (= res!2264772 call!381689)))

(declare-fun e!3315558 () Bool)

(assert (=> b!5339259 (= e!3315558 e!3315560)))

(declare-fun d!1713578 () Bool)

(declare-fun res!2264773 () Bool)

(declare-fun e!3315557 () Bool)

(assert (=> d!1713578 (=> res!2264773 e!3315557)))

(assert (=> d!1713578 (= res!2264773 ((_ is ElementMatch!15013) (regTwo!30538 r!7292)))))

(assert (=> d!1713578 (= (validRegex!6749 (regTwo!30538 r!7292)) e!3315557)))

(declare-fun b!5339260 () Bool)

(assert (=> b!5339260 (= e!3315554 e!3315558)))

(declare-fun c!929036 () Bool)

(assert (=> b!5339260 (= c!929036 ((_ is Union!15013) (regTwo!30538 r!7292)))))

(declare-fun b!5339261 () Bool)

(declare-fun call!381690 () Bool)

(assert (=> b!5339261 (= e!3315556 call!381690)))

(declare-fun bm!381683 () Bool)

(declare-fun c!929037 () Bool)

(assert (=> bm!381683 (= call!381690 (validRegex!6749 (ite c!929037 (reg!15342 (regTwo!30538 r!7292)) (ite c!929036 (regTwo!30539 (regTwo!30538 r!7292)) (regTwo!30538 (regTwo!30538 r!7292))))))))

(declare-fun b!5339262 () Bool)

(declare-fun res!2264774 () Bool)

(declare-fun e!3315555 () Bool)

(assert (=> b!5339262 (=> res!2264774 e!3315555)))

(assert (=> b!5339262 (= res!2264774 (not ((_ is Concat!23858) (regTwo!30538 r!7292))))))

(assert (=> b!5339262 (= e!3315558 e!3315555)))

(declare-fun b!5339263 () Bool)

(declare-fun call!381688 () Bool)

(assert (=> b!5339263 (= e!3315560 call!381688)))

(declare-fun b!5339264 () Bool)

(declare-fun e!3315559 () Bool)

(assert (=> b!5339264 (= e!3315555 e!3315559)))

(declare-fun res!2264775 () Bool)

(assert (=> b!5339264 (=> (not res!2264775) (not e!3315559))))

(assert (=> b!5339264 (= res!2264775 call!381689)))

(declare-fun bm!381684 () Bool)

(assert (=> bm!381684 (= call!381688 call!381690)))

(declare-fun bm!381685 () Bool)

(assert (=> bm!381685 (= call!381689 (validRegex!6749 (ite c!929036 (regOne!30539 (regTwo!30538 r!7292)) (regOne!30538 (regTwo!30538 r!7292)))))))

(declare-fun b!5339265 () Bool)

(assert (=> b!5339265 (= e!3315559 call!381688)))

(declare-fun b!5339266 () Bool)

(assert (=> b!5339266 (= e!3315557 e!3315554)))

(assert (=> b!5339266 (= c!929037 ((_ is Star!15013) (regTwo!30538 r!7292)))))

(assert (= (and d!1713578 (not res!2264773)) b!5339266))

(assert (= (and b!5339266 c!929037) b!5339258))

(assert (= (and b!5339266 (not c!929037)) b!5339260))

(assert (= (and b!5339258 res!2264776) b!5339261))

(assert (= (and b!5339260 c!929036) b!5339259))

(assert (= (and b!5339260 (not c!929036)) b!5339262))

(assert (= (and b!5339259 res!2264772) b!5339263))

(assert (= (and b!5339262 (not res!2264774)) b!5339264))

(assert (= (and b!5339264 res!2264775) b!5339265))

(assert (= (or b!5339263 b!5339265) bm!381684))

(assert (= (or b!5339259 b!5339264) bm!381685))

(assert (= (or b!5339261 bm!381684) bm!381683))

(declare-fun m!6371828 () Bool)

(assert (=> b!5339258 m!6371828))

(declare-fun m!6371830 () Bool)

(assert (=> bm!381683 m!6371830))

(declare-fun m!6371832 () Bool)

(assert (=> bm!381685 m!6371832))

(assert (=> b!5338300 d!1713578))

(declare-fun d!1713580 () Bool)

(declare-fun e!3315563 () Bool)

(assert (=> d!1713580 (= (matchZipper!1257 ((_ map or) lt!2176909 lt!2176902) (t!374556 s!2326)) e!3315563)))

(declare-fun res!2264779 () Bool)

(assert (=> d!1713580 (=> res!2264779 e!3315563)))

(assert (=> d!1713580 (= res!2264779 (matchZipper!1257 lt!2176909 (t!374556 s!2326)))))

(declare-fun lt!2177081 () Unit!153570)

(declare-fun choose!40019 ((InoxSet Context!8794) (InoxSet Context!8794) List!61339) Unit!153570)

(assert (=> d!1713580 (= lt!2177081 (choose!40019 lt!2176909 lt!2176902 (t!374556 s!2326)))))

(assert (=> d!1713580 (= (lemmaZipperConcatMatchesSameAsBothZippers!250 lt!2176909 lt!2176902 (t!374556 s!2326)) lt!2177081)))

(declare-fun b!5339269 () Bool)

(assert (=> b!5339269 (= e!3315563 (matchZipper!1257 lt!2176902 (t!374556 s!2326)))))

(assert (= (and d!1713580 (not res!2264779)) b!5339269))

(assert (=> d!1713580 m!6370996))

(assert (=> d!1713580 m!6370994))

(declare-fun m!6371834 () Bool)

(assert (=> d!1713580 m!6371834))

(assert (=> b!5339269 m!6371022))

(assert (=> b!5338301 d!1713580))

(assert (=> b!5338301 d!1713350))

(declare-fun d!1713582 () Bool)

(declare-fun c!929038 () Bool)

(assert (=> d!1713582 (= c!929038 (isEmpty!33190 (t!374556 s!2326)))))

(declare-fun e!3315564 () Bool)

(assert (=> d!1713582 (= (matchZipper!1257 ((_ map or) lt!2176909 lt!2176902) (t!374556 s!2326)) e!3315564)))

(declare-fun b!5339270 () Bool)

(assert (=> b!5339270 (= e!3315564 (nullableZipper!1364 ((_ map or) lt!2176909 lt!2176902)))))

(declare-fun b!5339271 () Bool)

(assert (=> b!5339271 (= e!3315564 (matchZipper!1257 (derivationStepZipper!1254 ((_ map or) lt!2176909 lt!2176902) (head!11446 (t!374556 s!2326))) (tail!10543 (t!374556 s!2326))))))

(assert (= (and d!1713582 c!929038) b!5339270))

(assert (= (and d!1713582 (not c!929038)) b!5339271))

(assert (=> d!1713582 m!6371084))

(declare-fun m!6371836 () Bool)

(assert (=> b!5339270 m!6371836))

(assert (=> b!5339271 m!6371088))

(assert (=> b!5339271 m!6371088))

(declare-fun m!6371838 () Bool)

(assert (=> b!5339271 m!6371838))

(assert (=> b!5339271 m!6371092))

(assert (=> b!5339271 m!6371838))

(assert (=> b!5339271 m!6371092))

(declare-fun m!6371840 () Bool)

(assert (=> b!5339271 m!6371840))

(assert (=> b!5338301 d!1713582))

(declare-fun d!1713584 () Bool)

(declare-fun lt!2177084 () Regex!15013)

(assert (=> d!1713584 (validRegex!6749 lt!2177084)))

(assert (=> d!1713584 (= lt!2177084 (generalisedUnion!942 (unfocusZipperList!455 zl!343)))))

(assert (=> d!1713584 (= (unfocusZipper!755 zl!343) lt!2177084)))

(declare-fun bs!1238237 () Bool)

(assert (= bs!1238237 d!1713584))

(declare-fun m!6371842 () Bool)

(assert (=> bs!1238237 m!6371842))

(assert (=> bs!1238237 m!6370932))

(assert (=> bs!1238237 m!6370932))

(assert (=> bs!1238237 m!6370934))

(assert (=> b!5338318 d!1713584))

(declare-fun b!5339278 () Bool)

(assert (=> b!5339278 true))

(declare-fun bs!1238238 () Bool)

(declare-fun b!5339280 () Bool)

(assert (= bs!1238238 (and b!5339280 b!5339278)))

(declare-fun lambda!273524 () Int)

(declare-fun lt!2177094 () Int)

(declare-fun lambda!273523 () Int)

(declare-fun lt!2177096 () Int)

(assert (=> bs!1238238 (= (= lt!2177094 lt!2177096) (= lambda!273524 lambda!273523))))

(assert (=> b!5339280 true))

(declare-fun d!1713586 () Bool)

(declare-fun e!3315570 () Bool)

(assert (=> d!1713586 e!3315570))

(declare-fun res!2264782 () Bool)

(assert (=> d!1713586 (=> (not res!2264782) (not e!3315570))))

(assert (=> d!1713586 (= res!2264782 (>= lt!2177094 0))))

(declare-fun e!3315569 () Int)

(assert (=> d!1713586 (= lt!2177094 e!3315569)))

(declare-fun c!929047 () Bool)

(assert (=> d!1713586 (= c!929047 ((_ is Cons!61216) lt!2176924))))

(assert (=> d!1713586 (= (zipperDepth!122 lt!2176924) lt!2177094)))

(assert (=> b!5339278 (= e!3315569 lt!2177096)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!70 (Context!8794) Int)

(assert (=> b!5339278 (= lt!2177096 (maxBigInt!0 (contextDepth!70 (h!67664 lt!2176924)) (zipperDepth!122 (t!374557 lt!2176924))))))

(declare-fun lambda!273522 () Int)

(declare-fun lt!2177095 () Unit!153570)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!64 (List!61340 Int Int Int) Unit!153570)

(assert (=> b!5339278 (= lt!2177095 (lemmaForallContextDepthBiggerThanTransitive!64 (t!374557 lt!2176924) lt!2177096 (zipperDepth!122 (t!374557 lt!2176924)) lambda!273522))))

(declare-fun forall!14437 (List!61340 Int) Bool)

(assert (=> b!5339278 (forall!14437 (t!374557 lt!2176924) lambda!273523)))

(declare-fun lt!2177093 () Unit!153570)

(assert (=> b!5339278 (= lt!2177093 lt!2177095)))

(declare-fun b!5339279 () Bool)

(assert (=> b!5339279 (= e!3315569 0)))

(assert (=> b!5339280 (= e!3315570 (forall!14437 lt!2176924 lambda!273524))))

(assert (= (and d!1713586 c!929047) b!5339278))

(assert (= (and d!1713586 (not c!929047)) b!5339279))

(assert (= (and d!1713586 res!2264782) b!5339280))

(declare-fun m!6371844 () Bool)

(assert (=> b!5339278 m!6371844))

(declare-fun m!6371846 () Bool)

(assert (=> b!5339278 m!6371846))

(assert (=> b!5339278 m!6371844))

(declare-fun m!6371848 () Bool)

(assert (=> b!5339278 m!6371848))

(assert (=> b!5339278 m!6371846))

(declare-fun m!6371850 () Bool)

(assert (=> b!5339278 m!6371850))

(assert (=> b!5339278 m!6371844))

(declare-fun m!6371852 () Bool)

(assert (=> b!5339278 m!6371852))

(declare-fun m!6371854 () Bool)

(assert (=> b!5339280 m!6371854))

(assert (=> b!5338304 d!1713586))

(declare-fun bs!1238239 () Bool)

(declare-fun b!5339283 () Bool)

(assert (= bs!1238239 (and b!5339283 b!5339278)))

(declare-fun lambda!273525 () Int)

(assert (=> bs!1238239 (= lambda!273525 lambda!273522)))

(declare-fun lt!2177100 () Int)

(declare-fun lambda!273526 () Int)

(assert (=> bs!1238239 (= (= lt!2177100 lt!2177096) (= lambda!273526 lambda!273523))))

(declare-fun bs!1238240 () Bool)

(assert (= bs!1238240 (and b!5339283 b!5339280)))

(assert (=> bs!1238240 (= (= lt!2177100 lt!2177094) (= lambda!273526 lambda!273524))))

(assert (=> b!5339283 true))

(declare-fun bs!1238241 () Bool)

(declare-fun b!5339285 () Bool)

(assert (= bs!1238241 (and b!5339285 b!5339278)))

(declare-fun lambda!273527 () Int)

(declare-fun lt!2177098 () Int)

(assert (=> bs!1238241 (= (= lt!2177098 lt!2177096) (= lambda!273527 lambda!273523))))

(declare-fun bs!1238242 () Bool)

(assert (= bs!1238242 (and b!5339285 b!5339280)))

(assert (=> bs!1238242 (= (= lt!2177098 lt!2177094) (= lambda!273527 lambda!273524))))

(declare-fun bs!1238243 () Bool)

(assert (= bs!1238243 (and b!5339285 b!5339283)))

(assert (=> bs!1238243 (= (= lt!2177098 lt!2177100) (= lambda!273527 lambda!273526))))

(assert (=> b!5339285 true))

(declare-fun d!1713588 () Bool)

(declare-fun e!3315572 () Bool)

(assert (=> d!1713588 e!3315572))

(declare-fun res!2264783 () Bool)

(assert (=> d!1713588 (=> (not res!2264783) (not e!3315572))))

(assert (=> d!1713588 (= res!2264783 (>= lt!2177098 0))))

(declare-fun e!3315571 () Int)

(assert (=> d!1713588 (= lt!2177098 e!3315571)))

(declare-fun c!929048 () Bool)

(assert (=> d!1713588 (= c!929048 ((_ is Cons!61216) zl!343))))

(assert (=> d!1713588 (= (zipperDepth!122 zl!343) lt!2177098)))

(assert (=> b!5339283 (= e!3315571 lt!2177100)))

(assert (=> b!5339283 (= lt!2177100 (maxBigInt!0 (contextDepth!70 (h!67664 zl!343)) (zipperDepth!122 (t!374557 zl!343))))))

(declare-fun lt!2177099 () Unit!153570)

(assert (=> b!5339283 (= lt!2177099 (lemmaForallContextDepthBiggerThanTransitive!64 (t!374557 zl!343) lt!2177100 (zipperDepth!122 (t!374557 zl!343)) lambda!273525))))

(assert (=> b!5339283 (forall!14437 (t!374557 zl!343) lambda!273526)))

(declare-fun lt!2177097 () Unit!153570)

(assert (=> b!5339283 (= lt!2177097 lt!2177099)))

(declare-fun b!5339284 () Bool)

(assert (=> b!5339284 (= e!3315571 0)))

(assert (=> b!5339285 (= e!3315572 (forall!14437 zl!343 lambda!273527))))

(assert (= (and d!1713588 c!929048) b!5339283))

(assert (= (and d!1713588 (not c!929048)) b!5339284))

(assert (= (and d!1713588 res!2264783) b!5339285))

(declare-fun m!6371856 () Bool)

(assert (=> b!5339283 m!6371856))

(declare-fun m!6371858 () Bool)

(assert (=> b!5339283 m!6371858))

(assert (=> b!5339283 m!6371856))

(declare-fun m!6371860 () Bool)

(assert (=> b!5339283 m!6371860))

(assert (=> b!5339283 m!6371858))

(declare-fun m!6371862 () Bool)

(assert (=> b!5339283 m!6371862))

(assert (=> b!5339283 m!6371856))

(declare-fun m!6371864 () Bool)

(assert (=> b!5339283 m!6371864))

(declare-fun m!6371866 () Bool)

(assert (=> b!5339285 m!6371866))

(assert (=> b!5338304 d!1713588))

(declare-fun bs!1238244 () Bool)

(declare-fun d!1713590 () Bool)

(assert (= bs!1238244 (and d!1713590 d!1713508)))

(declare-fun lambda!273528 () Int)

(assert (=> bs!1238244 (= lambda!273528 lambda!273498)))

(declare-fun bs!1238245 () Bool)

(assert (= bs!1238245 (and d!1713590 d!1713532)))

(assert (=> bs!1238245 (= lambda!273528 lambda!273503)))

(declare-fun bs!1238246 () Bool)

(assert (= bs!1238246 (and d!1713590 d!1713452)))

(assert (=> bs!1238246 (= lambda!273528 lambda!273475)))

(declare-fun bs!1238247 () Bool)

(assert (= bs!1238247 (and d!1713590 d!1713534)))

(assert (=> bs!1238247 (= lambda!273528 lambda!273506)))

(declare-fun bs!1238248 () Bool)

(assert (= bs!1238248 (and d!1713590 d!1713542)))

(assert (=> bs!1238248 (= lambda!273528 lambda!273510)))

(declare-fun bs!1238249 () Bool)

(assert (= bs!1238249 (and d!1713590 d!1713538)))

(assert (=> bs!1238249 (= lambda!273528 lambda!273509)))

(declare-fun bs!1238250 () Bool)

(assert (= bs!1238250 (and d!1713590 d!1713432)))

(assert (=> bs!1238250 (= lambda!273528 lambda!273472)))

(declare-fun b!5339286 () Bool)

(declare-fun e!3315574 () Regex!15013)

(declare-fun e!3315575 () Regex!15013)

(assert (=> b!5339286 (= e!3315574 e!3315575)))

(declare-fun c!929051 () Bool)

(assert (=> b!5339286 (= c!929051 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343))))))

(declare-fun b!5339287 () Bool)

(assert (=> b!5339287 (= e!3315574 (h!67662 (exprs!4897 (h!67664 zl!343))))))

(declare-fun b!5339288 () Bool)

(declare-fun e!3315573 () Bool)

(declare-fun lt!2177101 () Regex!15013)

(assert (=> b!5339288 (= e!3315573 (= lt!2177101 (head!11447 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339289 () Bool)

(declare-fun e!3315578 () Bool)

(assert (=> b!5339289 (= e!3315578 (isEmptyExpr!899 lt!2177101))))

(declare-fun e!3315576 () Bool)

(assert (=> d!1713590 e!3315576))

(declare-fun res!2264785 () Bool)

(assert (=> d!1713590 (=> (not res!2264785) (not e!3315576))))

(assert (=> d!1713590 (= res!2264785 (validRegex!6749 lt!2177101))))

(assert (=> d!1713590 (= lt!2177101 e!3315574)))

(declare-fun c!929049 () Bool)

(declare-fun e!3315577 () Bool)

(assert (=> d!1713590 (= c!929049 e!3315577)))

(declare-fun res!2264784 () Bool)

(assert (=> d!1713590 (=> (not res!2264784) (not e!3315577))))

(assert (=> d!1713590 (= res!2264784 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343))))))

(assert (=> d!1713590 (forall!14435 (exprs!4897 (h!67664 zl!343)) lambda!273528)))

(assert (=> d!1713590 (= (generalisedConcat!682 (exprs!4897 (h!67664 zl!343))) lt!2177101)))

(declare-fun b!5339290 () Bool)

(assert (=> b!5339290 (= e!3315575 EmptyExpr!15013)))

(declare-fun b!5339291 () Bool)

(assert (=> b!5339291 (= e!3315578 e!3315573)))

(declare-fun c!929052 () Bool)

(assert (=> b!5339291 (= c!929052 (isEmpty!33188 (tail!10544 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339292 () Bool)

(assert (=> b!5339292 (= e!3315576 e!3315578)))

(declare-fun c!929050 () Bool)

(assert (=> b!5339292 (= c!929050 (isEmpty!33188 (exprs!4897 (h!67664 zl!343))))))

(declare-fun b!5339293 () Bool)

(assert (=> b!5339293 (= e!3315577 (isEmpty!33188 (t!374555 (exprs!4897 (h!67664 zl!343)))))))

(declare-fun b!5339294 () Bool)

(assert (=> b!5339294 (= e!3315575 (Concat!23858 (h!67662 (exprs!4897 (h!67664 zl!343))) (generalisedConcat!682 (t!374555 (exprs!4897 (h!67664 zl!343))))))))

(declare-fun b!5339295 () Bool)

(assert (=> b!5339295 (= e!3315573 (isConcat!422 lt!2177101))))

(assert (= (and d!1713590 res!2264784) b!5339293))

(assert (= (and d!1713590 c!929049) b!5339287))

(assert (= (and d!1713590 (not c!929049)) b!5339286))

(assert (= (and b!5339286 c!929051) b!5339294))

(assert (= (and b!5339286 (not c!929051)) b!5339290))

(assert (= (and d!1713590 res!2264785) b!5339292))

(assert (= (and b!5339292 c!929050) b!5339289))

(assert (= (and b!5339292 (not c!929050)) b!5339291))

(assert (= (and b!5339291 c!929052) b!5339288))

(assert (= (and b!5339291 (not c!929052)) b!5339295))

(declare-fun m!6371868 () Bool)

(assert (=> b!5339291 m!6371868))

(assert (=> b!5339291 m!6371868))

(declare-fun m!6371870 () Bool)

(assert (=> b!5339291 m!6371870))

(declare-fun m!6371872 () Bool)

(assert (=> b!5339289 m!6371872))

(declare-fun m!6371874 () Bool)

(assert (=> d!1713590 m!6371874))

(declare-fun m!6371876 () Bool)

(assert (=> d!1713590 m!6371876))

(assert (=> b!5339294 m!6370978))

(declare-fun m!6371878 () Bool)

(assert (=> b!5339288 m!6371878))

(declare-fun m!6371880 () Bool)

(assert (=> b!5339295 m!6371880))

(declare-fun m!6371882 () Bool)

(assert (=> b!5339292 m!6371882))

(assert (=> b!5339293 m!6371024))

(assert (=> b!5338306 d!1713590))

(declare-fun d!1713592 () Bool)

(assert (=> d!1713592 (= (flatMap!740 lt!2176906 lambda!273415) (choose!40016 lt!2176906 lambda!273415))))

(declare-fun bs!1238251 () Bool)

(assert (= bs!1238251 d!1713592))

(declare-fun m!6371884 () Bool)

(assert (=> bs!1238251 m!6371884))

(assert (=> b!5338322 d!1713592))

(declare-fun b!5339296 () Bool)

(declare-fun e!3315579 () Bool)

(assert (=> b!5339296 (= e!3315579 (nullable!5182 (h!67662 (exprs!4897 lt!2176915))))))

(declare-fun b!5339297 () Bool)

(declare-fun e!3315580 () (InoxSet Context!8794))

(declare-fun call!381691 () (InoxSet Context!8794))

(assert (=> b!5339297 (= e!3315580 ((_ map or) call!381691 (derivationStepZipperUp!385 (Context!8795 (t!374555 (exprs!4897 lt!2176915))) (h!67663 s!2326))))))

(declare-fun b!5339298 () Bool)

(declare-fun e!3315581 () (InoxSet Context!8794))

(assert (=> b!5339298 (= e!3315580 e!3315581)))

(declare-fun c!929053 () Bool)

(assert (=> b!5339298 (= c!929053 ((_ is Cons!61214) (exprs!4897 lt!2176915)))))

(declare-fun bm!381686 () Bool)

(assert (=> bm!381686 (= call!381691 (derivationStepZipperDown!461 (h!67662 (exprs!4897 lt!2176915)) (Context!8795 (t!374555 (exprs!4897 lt!2176915))) (h!67663 s!2326)))))

(declare-fun d!1713594 () Bool)

(declare-fun c!929054 () Bool)

(assert (=> d!1713594 (= c!929054 e!3315579)))

(declare-fun res!2264786 () Bool)

(assert (=> d!1713594 (=> (not res!2264786) (not e!3315579))))

(assert (=> d!1713594 (= res!2264786 ((_ is Cons!61214) (exprs!4897 lt!2176915)))))

(assert (=> d!1713594 (= (derivationStepZipperUp!385 lt!2176915 (h!67663 s!2326)) e!3315580)))

(declare-fun b!5339299 () Bool)

(assert (=> b!5339299 (= e!3315581 call!381691)))

(declare-fun b!5339300 () Bool)

(assert (=> b!5339300 (= e!3315581 ((as const (Array Context!8794 Bool)) false))))

(assert (= (and d!1713594 res!2264786) b!5339296))

(assert (= (and d!1713594 c!929054) b!5339297))

(assert (= (and d!1713594 (not c!929054)) b!5339298))

(assert (= (and b!5339298 c!929053) b!5339299))

(assert (= (and b!5339298 (not c!929053)) b!5339300))

(assert (= (or b!5339297 b!5339299) bm!381686))

(declare-fun m!6371886 () Bool)

(assert (=> b!5339296 m!6371886))

(declare-fun m!6371888 () Bool)

(assert (=> b!5339297 m!6371888))

(declare-fun m!6371890 () Bool)

(assert (=> bm!381686 m!6371890))

(assert (=> b!5338322 d!1713594))

(declare-fun d!1713596 () Bool)

(assert (=> d!1713596 (= (flatMap!740 lt!2176906 lambda!273415) (dynLambda!24207 lambda!273415 lt!2176915))))

(declare-fun lt!2177102 () Unit!153570)

(assert (=> d!1713596 (= lt!2177102 (choose!40017 lt!2176906 lt!2176915 lambda!273415))))

(assert (=> d!1713596 (= lt!2176906 (store ((as const (Array Context!8794 Bool)) false) lt!2176915 true))))

(assert (=> d!1713596 (= (lemmaFlatMapOnSingletonSet!272 lt!2176906 lt!2176915 lambda!273415) lt!2177102)))

(declare-fun b_lambda!205183 () Bool)

(assert (=> (not b_lambda!205183) (not d!1713596)))

(declare-fun bs!1238252 () Bool)

(assert (= bs!1238252 d!1713596))

(assert (=> bs!1238252 m!6370900))

(declare-fun m!6371892 () Bool)

(assert (=> bs!1238252 m!6371892))

(declare-fun m!6371894 () Bool)

(assert (=> bs!1238252 m!6371894))

(assert (=> bs!1238252 m!6370896))

(assert (=> b!5338322 d!1713596))

(declare-fun bs!1238253 () Bool)

(declare-fun d!1713598 () Bool)

(assert (= bs!1238253 (and d!1713598 b!5338315)))

(declare-fun lambda!273531 () Int)

(assert (=> bs!1238253 (= lambda!273531 lambda!273415)))

(assert (=> d!1713598 true))

(assert (=> d!1713598 (= (derivationStepZipper!1254 lt!2176906 (h!67663 s!2326)) (flatMap!740 lt!2176906 lambda!273531))))

(declare-fun bs!1238254 () Bool)

(assert (= bs!1238254 d!1713598))

(declare-fun m!6371896 () Bool)

(assert (=> bs!1238254 m!6371896))

(assert (=> b!5338322 d!1713598))

(declare-fun d!1713600 () Bool)

(declare-fun c!929057 () Bool)

(assert (=> d!1713600 (= c!929057 (isEmpty!33190 (t!374556 s!2326)))))

(declare-fun e!3315582 () Bool)

(assert (=> d!1713600 (= (matchZipper!1257 lt!2176902 (t!374556 s!2326)) e!3315582)))

(declare-fun b!5339303 () Bool)

(assert (=> b!5339303 (= e!3315582 (nullableZipper!1364 lt!2176902))))

(declare-fun b!5339304 () Bool)

(assert (=> b!5339304 (= e!3315582 (matchZipper!1257 (derivationStepZipper!1254 lt!2176902 (head!11446 (t!374556 s!2326))) (tail!10543 (t!374556 s!2326))))))

(assert (= (and d!1713600 c!929057) b!5339303))

(assert (= (and d!1713600 (not c!929057)) b!5339304))

(assert (=> d!1713600 m!6371084))

(declare-fun m!6371898 () Bool)

(assert (=> b!5339303 m!6371898))

(assert (=> b!5339304 m!6371088))

(assert (=> b!5339304 m!6371088))

(declare-fun m!6371900 () Bool)

(assert (=> b!5339304 m!6371900))

(assert (=> b!5339304 m!6371092))

(assert (=> b!5339304 m!6371900))

(assert (=> b!5339304 m!6371092))

(declare-fun m!6371902 () Bool)

(assert (=> b!5339304 m!6371902))

(assert (=> b!5338302 d!1713600))

(declare-fun d!1713602 () Bool)

(declare-fun lt!2177105 () Int)

(assert (=> d!1713602 (>= lt!2177105 0)))

(declare-fun e!3315585 () Int)

(assert (=> d!1713602 (= lt!2177105 e!3315585)))

(declare-fun c!929060 () Bool)

(assert (=> d!1713602 (= c!929060 ((_ is Cons!61216) lt!2176924))))

(assert (=> d!1713602 (= (zipperDepthTotal!166 lt!2176924) lt!2177105)))

(declare-fun b!5339309 () Bool)

(assert (=> b!5339309 (= e!3315585 (+ (contextDepthTotal!146 (h!67664 lt!2176924)) (zipperDepthTotal!166 (t!374557 lt!2176924))))))

(declare-fun b!5339310 () Bool)

(assert (=> b!5339310 (= e!3315585 0)))

(assert (= (and d!1713602 c!929060) b!5339309))

(assert (= (and d!1713602 (not c!929060)) b!5339310))

(declare-fun m!6371904 () Bool)

(assert (=> b!5339309 m!6371904))

(declare-fun m!6371906 () Bool)

(assert (=> b!5339309 m!6371906))

(assert (=> b!5338303 d!1713602))

(declare-fun d!1713604 () Bool)

(declare-fun lt!2177106 () Int)

(assert (=> d!1713604 (>= lt!2177106 0)))

(declare-fun e!3315586 () Int)

(assert (=> d!1713604 (= lt!2177106 e!3315586)))

(declare-fun c!929061 () Bool)

(assert (=> d!1713604 (= c!929061 ((_ is Cons!61216) zl!343))))

(assert (=> d!1713604 (= (zipperDepthTotal!166 zl!343) lt!2177106)))

(declare-fun b!5339311 () Bool)

(assert (=> b!5339311 (= e!3315586 (+ (contextDepthTotal!146 (h!67664 zl!343)) (zipperDepthTotal!166 (t!374557 zl!343))))))

(declare-fun b!5339312 () Bool)

(assert (=> b!5339312 (= e!3315586 0)))

(assert (= (and d!1713604 c!929061) b!5339311))

(assert (= (and d!1713604 (not c!929061)) b!5339312))

(assert (=> b!5339311 m!6370930))

(declare-fun m!6371908 () Bool)

(assert (=> b!5339311 m!6371908))

(assert (=> b!5338303 d!1713604))

(declare-fun d!1713606 () Bool)

(assert (=> d!1713606 (= (isEmpty!33187 (t!374557 zl!343)) ((_ is Nil!61216) (t!374557 zl!343)))))

(assert (=> b!5338323 d!1713606))

(declare-fun b!5339313 () Bool)

(declare-fun e!3315587 () Bool)

(declare-fun e!3315589 () Bool)

(assert (=> b!5339313 (= e!3315587 e!3315589)))

(declare-fun res!2264791 () Bool)

(assert (=> b!5339313 (= res!2264791 (not (nullable!5182 (reg!15342 r!7292))))))

(assert (=> b!5339313 (=> (not res!2264791) (not e!3315589))))

(declare-fun b!5339314 () Bool)

(declare-fun res!2264787 () Bool)

(declare-fun e!3315593 () Bool)

(assert (=> b!5339314 (=> (not res!2264787) (not e!3315593))))

(declare-fun call!381693 () Bool)

(assert (=> b!5339314 (= res!2264787 call!381693)))

(declare-fun e!3315591 () Bool)

(assert (=> b!5339314 (= e!3315591 e!3315593)))

(declare-fun d!1713608 () Bool)

(declare-fun res!2264788 () Bool)

(declare-fun e!3315590 () Bool)

(assert (=> d!1713608 (=> res!2264788 e!3315590)))

(assert (=> d!1713608 (= res!2264788 ((_ is ElementMatch!15013) r!7292))))

(assert (=> d!1713608 (= (validRegex!6749 r!7292) e!3315590)))

(declare-fun b!5339315 () Bool)

(assert (=> b!5339315 (= e!3315587 e!3315591)))

(declare-fun c!929062 () Bool)

(assert (=> b!5339315 (= c!929062 ((_ is Union!15013) r!7292))))

(declare-fun b!5339316 () Bool)

(declare-fun call!381694 () Bool)

(assert (=> b!5339316 (= e!3315589 call!381694)))

(declare-fun bm!381687 () Bool)

(declare-fun c!929063 () Bool)

(assert (=> bm!381687 (= call!381694 (validRegex!6749 (ite c!929063 (reg!15342 r!7292) (ite c!929062 (regTwo!30539 r!7292) (regTwo!30538 r!7292)))))))

(declare-fun b!5339317 () Bool)

(declare-fun res!2264789 () Bool)

(declare-fun e!3315588 () Bool)

(assert (=> b!5339317 (=> res!2264789 e!3315588)))

(assert (=> b!5339317 (= res!2264789 (not ((_ is Concat!23858) r!7292)))))

(assert (=> b!5339317 (= e!3315591 e!3315588)))

(declare-fun b!5339318 () Bool)

(declare-fun call!381692 () Bool)

(assert (=> b!5339318 (= e!3315593 call!381692)))

(declare-fun b!5339319 () Bool)

(declare-fun e!3315592 () Bool)

(assert (=> b!5339319 (= e!3315588 e!3315592)))

(declare-fun res!2264790 () Bool)

(assert (=> b!5339319 (=> (not res!2264790) (not e!3315592))))

(assert (=> b!5339319 (= res!2264790 call!381693)))

(declare-fun bm!381688 () Bool)

(assert (=> bm!381688 (= call!381692 call!381694)))

(declare-fun bm!381689 () Bool)

(assert (=> bm!381689 (= call!381693 (validRegex!6749 (ite c!929062 (regOne!30539 r!7292) (regOne!30538 r!7292))))))

(declare-fun b!5339320 () Bool)

(assert (=> b!5339320 (= e!3315592 call!381692)))

(declare-fun b!5339321 () Bool)

(assert (=> b!5339321 (= e!3315590 e!3315587)))

(assert (=> b!5339321 (= c!929063 ((_ is Star!15013) r!7292))))

(assert (= (and d!1713608 (not res!2264788)) b!5339321))

(assert (= (and b!5339321 c!929063) b!5339313))

(assert (= (and b!5339321 (not c!929063)) b!5339315))

(assert (= (and b!5339313 res!2264791) b!5339316))

(assert (= (and b!5339315 c!929062) b!5339314))

(assert (= (and b!5339315 (not c!929062)) b!5339317))

(assert (= (and b!5339314 res!2264787) b!5339318))

(assert (= (and b!5339317 (not res!2264789)) b!5339319))

(assert (= (and b!5339319 res!2264790) b!5339320))

(assert (= (or b!5339318 b!5339320) bm!381688))

(assert (= (or b!5339314 b!5339319) bm!381689))

(assert (= (or b!5339316 bm!381688) bm!381687))

(declare-fun m!6371910 () Bool)

(assert (=> b!5339313 m!6371910))

(declare-fun m!6371912 () Bool)

(assert (=> bm!381687 m!6371912))

(declare-fun m!6371914 () Bool)

(assert (=> bm!381689 m!6371914))

(assert (=> start!562478 d!1713608))

(declare-fun b!5339329 () Bool)

(declare-fun e!3315599 () Bool)

(declare-fun tp!1484756 () Bool)

(assert (=> b!5339329 (= e!3315599 tp!1484756)))

(declare-fun b!5339328 () Bool)

(declare-fun e!3315598 () Bool)

(declare-fun tp!1484757 () Bool)

(assert (=> b!5339328 (= e!3315598 (and (inv!80779 (h!67664 (t!374557 zl!343))) e!3315599 tp!1484757))))

(assert (=> b!5338314 (= tp!1484689 e!3315598)))

(assert (= b!5339328 b!5339329))

(assert (= (and b!5338314 ((_ is Cons!61216) (t!374557 zl!343))) b!5339328))

(declare-fun m!6371916 () Bool)

(assert (=> b!5339328 m!6371916))

(declare-fun e!3315602 () Bool)

(assert (=> b!5338319 (= tp!1484688 e!3315602)))

(declare-fun b!5339341 () Bool)

(declare-fun tp!1484772 () Bool)

(declare-fun tp!1484771 () Bool)

(assert (=> b!5339341 (= e!3315602 (and tp!1484772 tp!1484771))))

(declare-fun b!5339343 () Bool)

(declare-fun tp!1484770 () Bool)

(declare-fun tp!1484768 () Bool)

(assert (=> b!5339343 (= e!3315602 (and tp!1484770 tp!1484768))))

(declare-fun b!5339342 () Bool)

(declare-fun tp!1484769 () Bool)

(assert (=> b!5339342 (= e!3315602 tp!1484769)))

(declare-fun b!5339340 () Bool)

(assert (=> b!5339340 (= e!3315602 tp_is_empty!39279)))

(assert (= (and b!5338319 ((_ is ElementMatch!15013) (regOne!30538 r!7292))) b!5339340))

(assert (= (and b!5338319 ((_ is Concat!23858) (regOne!30538 r!7292))) b!5339341))

(assert (= (and b!5338319 ((_ is Star!15013) (regOne!30538 r!7292))) b!5339342))

(assert (= (and b!5338319 ((_ is Union!15013) (regOne!30538 r!7292))) b!5339343))

(declare-fun e!3315603 () Bool)

(assert (=> b!5338319 (= tp!1484685 e!3315603)))

(declare-fun b!5339345 () Bool)

(declare-fun tp!1484777 () Bool)

(declare-fun tp!1484776 () Bool)

(assert (=> b!5339345 (= e!3315603 (and tp!1484777 tp!1484776))))

(declare-fun b!5339347 () Bool)

(declare-fun tp!1484775 () Bool)

(declare-fun tp!1484773 () Bool)

(assert (=> b!5339347 (= e!3315603 (and tp!1484775 tp!1484773))))

(declare-fun b!5339346 () Bool)

(declare-fun tp!1484774 () Bool)

(assert (=> b!5339346 (= e!3315603 tp!1484774)))

(declare-fun b!5339344 () Bool)

(assert (=> b!5339344 (= e!3315603 tp_is_empty!39279)))

(assert (= (and b!5338319 ((_ is ElementMatch!15013) (regTwo!30538 r!7292))) b!5339344))

(assert (= (and b!5338319 ((_ is Concat!23858) (regTwo!30538 r!7292))) b!5339345))

(assert (= (and b!5338319 ((_ is Star!15013) (regTwo!30538 r!7292))) b!5339346))

(assert (= (and b!5338319 ((_ is Union!15013) (regTwo!30538 r!7292))) b!5339347))

(declare-fun condSetEmpty!34447 () Bool)

(assert (=> setNonEmpty!34441 (= condSetEmpty!34447 (= setRest!34441 ((as const (Array Context!8794 Bool)) false)))))

(declare-fun setRes!34447 () Bool)

(assert (=> setNonEmpty!34441 (= tp!1484692 setRes!34447)))

(declare-fun setIsEmpty!34447 () Bool)

(assert (=> setIsEmpty!34447 setRes!34447))

(declare-fun tp!1484782 () Bool)

(declare-fun setNonEmpty!34447 () Bool)

(declare-fun e!3315606 () Bool)

(declare-fun setElem!34447 () Context!8794)

(assert (=> setNonEmpty!34447 (= setRes!34447 (and tp!1484782 (inv!80779 setElem!34447) e!3315606))))

(declare-fun setRest!34447 () (InoxSet Context!8794))

(assert (=> setNonEmpty!34447 (= setRest!34441 ((_ map or) (store ((as const (Array Context!8794 Bool)) false) setElem!34447 true) setRest!34447))))

(declare-fun b!5339352 () Bool)

(declare-fun tp!1484783 () Bool)

(assert (=> b!5339352 (= e!3315606 tp!1484783)))

(assert (= (and setNonEmpty!34441 condSetEmpty!34447) setIsEmpty!34447))

(assert (= (and setNonEmpty!34441 (not condSetEmpty!34447)) setNonEmpty!34447))

(assert (= setNonEmpty!34447 b!5339352))

(declare-fun m!6371918 () Bool)

(assert (=> setNonEmpty!34447 m!6371918))

(declare-fun b!5339357 () Bool)

(declare-fun e!3315609 () Bool)

(declare-fun tp!1484788 () Bool)

(declare-fun tp!1484789 () Bool)

(assert (=> b!5339357 (= e!3315609 (and tp!1484788 tp!1484789))))

(assert (=> b!5338325 (= tp!1484690 e!3315609)))

(assert (= (and b!5338325 ((_ is Cons!61214) (exprs!4897 (h!67664 zl!343)))) b!5339357))

(declare-fun b!5339358 () Bool)

(declare-fun e!3315610 () Bool)

(declare-fun tp!1484790 () Bool)

(declare-fun tp!1484791 () Bool)

(assert (=> b!5339358 (= e!3315610 (and tp!1484790 tp!1484791))))

(assert (=> b!5338316 (= tp!1484691 e!3315610)))

(assert (= (and b!5338316 ((_ is Cons!61214) (exprs!4897 setElem!34441))) b!5339358))

(declare-fun e!3315611 () Bool)

(assert (=> b!5338317 (= tp!1484693 e!3315611)))

(declare-fun b!5339360 () Bool)

(declare-fun tp!1484796 () Bool)

(declare-fun tp!1484795 () Bool)

(assert (=> b!5339360 (= e!3315611 (and tp!1484796 tp!1484795))))

(declare-fun b!5339362 () Bool)

(declare-fun tp!1484794 () Bool)

(declare-fun tp!1484792 () Bool)

(assert (=> b!5339362 (= e!3315611 (and tp!1484794 tp!1484792))))

(declare-fun b!5339361 () Bool)

(declare-fun tp!1484793 () Bool)

(assert (=> b!5339361 (= e!3315611 tp!1484793)))

(declare-fun b!5339359 () Bool)

(assert (=> b!5339359 (= e!3315611 tp_is_empty!39279)))

(assert (= (and b!5338317 ((_ is ElementMatch!15013) (reg!15342 r!7292))) b!5339359))

(assert (= (and b!5338317 ((_ is Concat!23858) (reg!15342 r!7292))) b!5339360))

(assert (= (and b!5338317 ((_ is Star!15013) (reg!15342 r!7292))) b!5339361))

(assert (= (and b!5338317 ((_ is Union!15013) (reg!15342 r!7292))) b!5339362))

(declare-fun b!5339367 () Bool)

(declare-fun e!3315614 () Bool)

(declare-fun tp!1484799 () Bool)

(assert (=> b!5339367 (= e!3315614 (and tp_is_empty!39279 tp!1484799))))

(assert (=> b!5338333 (= tp!1484686 e!3315614)))

(assert (= (and b!5338333 ((_ is Cons!61215) (t!374556 s!2326))) b!5339367))

(declare-fun e!3315615 () Bool)

(assert (=> b!5338324 (= tp!1484687 e!3315615)))

(declare-fun b!5339369 () Bool)

(declare-fun tp!1484804 () Bool)

(declare-fun tp!1484803 () Bool)

(assert (=> b!5339369 (= e!3315615 (and tp!1484804 tp!1484803))))

(declare-fun b!5339371 () Bool)

(declare-fun tp!1484802 () Bool)

(declare-fun tp!1484800 () Bool)

(assert (=> b!5339371 (= e!3315615 (and tp!1484802 tp!1484800))))

(declare-fun b!5339370 () Bool)

(declare-fun tp!1484801 () Bool)

(assert (=> b!5339370 (= e!3315615 tp!1484801)))

(declare-fun b!5339368 () Bool)

(assert (=> b!5339368 (= e!3315615 tp_is_empty!39279)))

(assert (= (and b!5338324 ((_ is ElementMatch!15013) (regOne!30539 r!7292))) b!5339368))

(assert (= (and b!5338324 ((_ is Concat!23858) (regOne!30539 r!7292))) b!5339369))

(assert (= (and b!5338324 ((_ is Star!15013) (regOne!30539 r!7292))) b!5339370))

(assert (= (and b!5338324 ((_ is Union!15013) (regOne!30539 r!7292))) b!5339371))

(declare-fun e!3315616 () Bool)

(assert (=> b!5338324 (= tp!1484684 e!3315616)))

(declare-fun b!5339373 () Bool)

(declare-fun tp!1484809 () Bool)

(declare-fun tp!1484808 () Bool)

(assert (=> b!5339373 (= e!3315616 (and tp!1484809 tp!1484808))))

(declare-fun b!5339375 () Bool)

(declare-fun tp!1484807 () Bool)

(declare-fun tp!1484805 () Bool)

(assert (=> b!5339375 (= e!3315616 (and tp!1484807 tp!1484805))))

(declare-fun b!5339374 () Bool)

(declare-fun tp!1484806 () Bool)

(assert (=> b!5339374 (= e!3315616 tp!1484806)))

(declare-fun b!5339372 () Bool)

(assert (=> b!5339372 (= e!3315616 tp_is_empty!39279)))

(assert (= (and b!5338324 ((_ is ElementMatch!15013) (regTwo!30539 r!7292))) b!5339372))

(assert (= (and b!5338324 ((_ is Concat!23858) (regTwo!30539 r!7292))) b!5339373))

(assert (= (and b!5338324 ((_ is Star!15013) (regTwo!30539 r!7292))) b!5339374))

(assert (= (and b!5338324 ((_ is Union!15013) (regTwo!30539 r!7292))) b!5339375))

(declare-fun b_lambda!205185 () Bool)

(assert (= b_lambda!205183 (or b!5338315 b_lambda!205185)))

(declare-fun bs!1238255 () Bool)

(declare-fun d!1713610 () Bool)

(assert (= bs!1238255 (and d!1713610 b!5338315)))

(assert (=> bs!1238255 (= (dynLambda!24207 lambda!273415 lt!2176915) (derivationStepZipperUp!385 lt!2176915 (h!67663 s!2326)))))

(assert (=> bs!1238255 m!6370902))

(assert (=> d!1713596 d!1713610))

(declare-fun b_lambda!205187 () Bool)

(assert (= b_lambda!205181 (or b!5338315 b_lambda!205187)))

(declare-fun bs!1238256 () Bool)

(declare-fun d!1713612 () Bool)

(assert (= bs!1238256 (and d!1713612 b!5338315)))

(assert (=> bs!1238256 (= (dynLambda!24207 lambda!273415 (h!67664 zl!343)) (derivationStepZipperUp!385 (h!67664 zl!343) (h!67663 s!2326)))))

(assert (=> bs!1238256 m!6370908))

(assert (=> d!1713556 d!1713612))

(check-sat (not d!1713534) (not b!5339329) (not b!5338433) (not b!5339375) (not b!5339086) (not d!1713532) (not b!5339076) (not b!5339239) (not b!5338445) (not bm!381609) (not b!5339369) (not bm!381673) (not d!1713556) (not b!5339137) tp_is_empty!39279 (not bm!381686) (not d!1713462) (not b!5338753) (not bm!381680) (not b!5339252) (not b!5339373) (not b!5339093) (not d!1713490) (not b!5339254) (not b!5339087) (not b!5338971) (not b!5339346) (not d!1713516) (not b!5338755) (not bm!381650) (not b!5339235) (not b!5338872) (not d!1713584) (not b!5339088) (not d!1713590) (not b!5339311) (not b!5339278) (not b_lambda!205185) (not b!5338873) (not b!5339134) (not b!5338975) (not d!1713542) (not b!5339138) (not b!5338875) (not b!5338625) (not b!5339283) (not d!1713574) (not b!5339288) (not b!5339345) (not b!5338754) (not d!1713452) (not b!5339370) (not b!5339374) (not b!5339293) (not b!5338868) (not b!5339271) (not d!1713464) (not b!5339309) (not b!5338869) (not bm!381679) (not d!1713400) (not b!5338877) (not b!5339078) (not bm!381683) (not d!1713592) (not d!1713524) (not d!1713350) (not bm!381613) (not b!5339289) (not b!5339175) (not d!1713520) (not b!5339245) (not d!1713432) (not b!5339073) (not b!5339142) (not b!5339143) (not b!5338972) (not b!5338867) (not b!5339303) (not b!5339112) (not d!1713568) (not b!5339080) (not b!5339074) (not b!5338977) (not b!5339212) (not b!5338979) (not b!5339101) (not b!5339077) (not b!5339342) (not b!5339105) (not b!5339148) (not b!5339253) (not b!5338622) (not setNonEmpty!34447) (not b!5339295) (not bm!381612) (not b!5338607) (not b!5339285) (not b!5339361) (not b!5339151) (not b!5339250) (not bm!381665) (not b!5338862) (not bm!381682) (not d!1713600) (not d!1713510) (not b!5339257) (not b!5338633) (not b!5339207) (not b!5339236) (not b!5339357) (not b!5338876) (not d!1713518) (not d!1713566) (not d!1713346) (not b!5339294) (not b!5339296) (not d!1713514) (not bm!381671) (not d!1713580) (not b!5339206) (not b!5339362) (not b!5339079) (not bm!381681) (not b!5339139) (not bs!1238256) (not d!1713582) (not b!5339085) (not b!5339135) (not b!5339280) (not bm!381667) (not d!1713522) (not b!5339291) (not b!5339292) (not d!1713570) (not bm!381677) (not b!5338981) (not d!1713488) (not b!5339341) (not d!1713456) (not bm!381646) (not d!1713512) (not b!5339360) (not b!5339297) (not b!5339352) (not b!5339089) (not bm!381597) (not b!5339258) (not b!5338751) (not b!5339150) (not d!1713536) (not d!1713402) (not d!1713538) (not b!5339313) (not b!5339097) (not b!5338748) (not d!1713560) (not bs!1238255) (not b!5339103) (not b!5338866) (not bm!381685) (not d!1713596) (not d!1713598) (not b!5339099) (not b!5339104) (not b!5339216) (not b!5339269) (not b!5339241) (not d!1713526) (not b!5339367) (not d!1713550) (not b!5338879) (not b!5339328) (not d!1713508) (not b!5339211) (not b!5339231) (not d!1713548) (not b!5338599) (not d!1713562) (not bm!381664) (not d!1713502) (not d!1713384) (not b!5339110) (not b!5338878) (not d!1713572) (not b!5338446) (not bm!381608) (not d!1713564) (not b!5338863) (not b!5339251) (not bm!381678) (not b!5339343) (not bm!381670) (not b_lambda!205187) (not b!5338501) (not b!5339371) (not b!5339304) (not d!1713450) (not d!1713416) (not d!1713576) (not bm!381689) (not b!5338752) (not b!5339217) (not b!5339082) (not b!5339094) (not b!5339247) (not b!5339243) (not b!5339270) (not b!5339347) (not bm!381687) (not b!5338865) (not b!5339223) (not bm!381599) (not b!5339186) (not b!5338621) (not b!5339358) (not b!5338434))
(check-sat)
