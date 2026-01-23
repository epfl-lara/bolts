; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!594144 () Bool)

(assert start!594144)

(declare-fun b!5792490 () Bool)

(assert (=> b!5792490 true))

(assert (=> b!5792490 true))

(declare-fun lambda!315968 () Int)

(declare-fun lambda!315967 () Int)

(assert (=> b!5792490 (not (= lambda!315968 lambda!315967))))

(assert (=> b!5792490 true))

(assert (=> b!5792490 true))

(declare-fun lambda!315969 () Int)

(assert (=> b!5792490 (not (= lambda!315969 lambda!315967))))

(assert (=> b!5792490 (not (= lambda!315969 lambda!315968))))

(assert (=> b!5792490 true))

(assert (=> b!5792490 true))

(declare-fun b!5792497 () Bool)

(assert (=> b!5792497 true))

(declare-fun setIsEmpty!38950 () Bool)

(declare-fun setRes!38950 () Bool)

(assert (=> setIsEmpty!38950 setRes!38950))

(declare-fun b!5792485 () Bool)

(declare-fun res!2444008 () Bool)

(declare-fun e!3557153 () Bool)

(assert (=> b!5792485 (=> res!2444008 e!3557153)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31884 0))(
  ( (C!31885 (val!25644 Int)) )
))
(declare-datatypes ((Regex!15807 0))(
  ( (ElementMatch!15807 (c!1025711 C!31884)) (Concat!24652 (regOne!32126 Regex!15807) (regTwo!32126 Regex!15807)) (EmptyExpr!15807) (Star!15807 (reg!16136 Regex!15807)) (EmptyLang!15807) (Union!15807 (regOne!32127 Regex!15807) (regTwo!32127 Regex!15807)) )
))
(declare-datatypes ((List!63720 0))(
  ( (Nil!63596) (Cons!63596 (h!70044 Regex!15807) (t!377067 List!63720)) )
))
(declare-datatypes ((Context!10382 0))(
  ( (Context!10383 (exprs!5691 List!63720)) )
))
(declare-fun lt!2297338 () (InoxSet Context!10382))

(declare-datatypes ((List!63721 0))(
  ( (Nil!63597) (Cons!63597 (h!70045 C!31884) (t!377068 List!63721)) )
))
(declare-fun s!2326 () List!63721)

(declare-fun matchZipper!1935 ((InoxSet Context!10382) List!63721) Bool)

(declare-fun derivationStepZipper!1876 ((InoxSet Context!10382) C!31884) (InoxSet Context!10382))

(assert (=> b!5792485 (= res!2444008 (not (= (matchZipper!1935 lt!2297338 s!2326) (matchZipper!1935 (derivationStepZipper!1876 lt!2297338 (h!70045 s!2326)) (t!377068 s!2326)))))))

(declare-fun b!5792486 () Bool)

(declare-fun res!2444006 () Bool)

(declare-fun e!3557163 () Bool)

(assert (=> b!5792486 (=> (not res!2444006) (not e!3557163))))

(declare-fun z!1189 () (InoxSet Context!10382))

(declare-datatypes ((List!63722 0))(
  ( (Nil!63598) (Cons!63598 (h!70046 Context!10382) (t!377069 List!63722)) )
))
(declare-fun zl!343 () List!63722)

(declare-fun toList!9591 ((InoxSet Context!10382)) List!63722)

(assert (=> b!5792486 (= res!2444006 (= (toList!9591 z!1189) zl!343))))

(declare-fun b!5792487 () Bool)

(declare-fun e!3557154 () Bool)

(assert (=> b!5792487 (= e!3557163 e!3557154)))

(declare-fun res!2444014 () Bool)

(assert (=> b!5792487 (=> (not res!2444014) (not e!3557154))))

(declare-fun r!7292 () Regex!15807)

(declare-fun lt!2297335 () Regex!15807)

(assert (=> b!5792487 (= res!2444014 (= r!7292 lt!2297335))))

(declare-fun unfocusZipper!1549 (List!63722) Regex!15807)

(assert (=> b!5792487 (= lt!2297335 (unfocusZipper!1549 zl!343))))

(declare-fun b!5792488 () Bool)

(declare-fun e!3557160 () Bool)

(declare-fun tp!1598044 () Bool)

(declare-fun tp!1598043 () Bool)

(assert (=> b!5792488 (= e!3557160 (and tp!1598044 tp!1598043))))

(declare-fun b!5792489 () Bool)

(declare-fun tp!1598049 () Bool)

(assert (=> b!5792489 (= e!3557160 tp!1598049)))

(declare-fun res!2444005 () Bool)

(assert (=> start!594144 (=> (not res!2444005) (not e!3557163))))

(declare-fun validRegex!7543 (Regex!15807) Bool)

(assert (=> start!594144 (= res!2444005 (validRegex!7543 r!7292))))

(assert (=> start!594144 e!3557163))

(assert (=> start!594144 e!3557160))

(declare-fun condSetEmpty!38950 () Bool)

(assert (=> start!594144 (= condSetEmpty!38950 (= z!1189 ((as const (Array Context!10382 Bool)) false)))))

(assert (=> start!594144 setRes!38950))

(declare-fun e!3557164 () Bool)

(assert (=> start!594144 e!3557164))

(declare-fun e!3557158 () Bool)

(assert (=> start!594144 e!3557158))

(declare-fun e!3557156 () Bool)

(declare-fun e!3557157 () Bool)

(assert (=> b!5792490 (= e!3557156 e!3557157)))

(declare-fun res!2444009 () Bool)

(assert (=> b!5792490 (=> res!2444009 e!3557157)))

(declare-fun lt!2297339 () Bool)

(declare-fun e!3557161 () Bool)

(assert (=> b!5792490 (= res!2444009 (not (= lt!2297339 e!3557161)))))

(declare-fun res!2444012 () Bool)

(assert (=> b!5792490 (=> res!2444012 e!3557161)))

(declare-fun isEmpty!35503 (List!63721) Bool)

(assert (=> b!5792490 (= res!2444012 (isEmpty!35503 s!2326))))

(declare-fun Exists!2907 (Int) Bool)

(assert (=> b!5792490 (= (Exists!2907 lambda!315967) (Exists!2907 lambda!315969))))

(declare-datatypes ((Unit!156874 0))(
  ( (Unit!156875) )
))
(declare-fun lt!2297334 () Unit!156874)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1536 (Regex!15807 Regex!15807 List!63721) Unit!156874)

(assert (=> b!5792490 (= lt!2297334 (lemmaExistCutMatchRandMatchRSpecEquivalent!1536 (reg!16136 r!7292) r!7292 s!2326))))

(assert (=> b!5792490 (= (Exists!2907 lambda!315967) (Exists!2907 lambda!315968))))

(declare-fun lt!2297343 () Unit!156874)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!588 (Regex!15807 List!63721) Unit!156874)

(assert (=> b!5792490 (= lt!2297343 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!588 (reg!16136 r!7292) s!2326))))

(declare-fun lt!2297333 () Bool)

(assert (=> b!5792490 (= lt!2297333 (Exists!2907 lambda!315967))))

(declare-datatypes ((tuple2!65808 0))(
  ( (tuple2!65809 (_1!36207 List!63721) (_2!36207 List!63721)) )
))
(declare-datatypes ((Option!15816 0))(
  ( (None!15815) (Some!15815 (v!51875 tuple2!65808)) )
))
(declare-fun isDefined!12519 (Option!15816) Bool)

(declare-fun findConcatSeparation!2230 (Regex!15807 Regex!15807 List!63721 List!63721 List!63721) Option!15816)

(assert (=> b!5792490 (= lt!2297333 (isDefined!12519 (findConcatSeparation!2230 (reg!16136 r!7292) r!7292 Nil!63597 s!2326 s!2326)))))

(declare-fun lt!2297331 () Unit!156874)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1994 (Regex!15807 Regex!15807 List!63721) Unit!156874)

(assert (=> b!5792490 (= lt!2297331 (lemmaFindConcatSeparationEquivalentToExists!1994 (reg!16136 r!7292) r!7292 s!2326))))

(declare-fun b!5792491 () Bool)

(declare-fun res!2444003 () Bool)

(assert (=> b!5792491 (=> res!2444003 e!3557156)))

(declare-fun generalisedUnion!1670 (List!63720) Regex!15807)

(declare-fun unfocusZipperList!1235 (List!63722) List!63720)

(assert (=> b!5792491 (= res!2444003 (not (= r!7292 (generalisedUnion!1670 (unfocusZipperList!1235 zl!343)))))))

(declare-fun b!5792492 () Bool)

(declare-fun res!2444013 () Bool)

(assert (=> b!5792492 (=> res!2444013 e!3557156)))

(declare-fun isEmpty!35504 (List!63722) Bool)

(assert (=> b!5792492 (= res!2444013 (not (isEmpty!35504 (t!377069 zl!343))))))

(declare-fun b!5792493 () Bool)

(declare-fun res!2444002 () Bool)

(assert (=> b!5792493 (=> res!2444002 e!3557156)))

(declare-fun generalisedConcat!1422 (List!63720) Regex!15807)

(assert (=> b!5792493 (= res!2444002 (not (= r!7292 (generalisedConcat!1422 (exprs!5691 (h!70046 zl!343))))))))

(declare-fun tp!1598046 () Bool)

(declare-fun setNonEmpty!38950 () Bool)

(declare-fun e!3557159 () Bool)

(declare-fun setElem!38950 () Context!10382)

(declare-fun inv!82764 (Context!10382) Bool)

(assert (=> setNonEmpty!38950 (= setRes!38950 (and tp!1598046 (inv!82764 setElem!38950) e!3557159))))

(declare-fun setRest!38950 () (InoxSet Context!10382))

(assert (=> setNonEmpty!38950 (= z!1189 ((_ map or) (store ((as const (Array Context!10382 Bool)) false) setElem!38950 true) setRest!38950))))

(declare-fun b!5792494 () Bool)

(declare-fun res!2444010 () Bool)

(assert (=> b!5792494 (=> res!2444010 e!3557156)))

(get-info :version)

(assert (=> b!5792494 (= res!2444010 (or ((_ is EmptyExpr!15807) r!7292) ((_ is EmptyLang!15807) r!7292) ((_ is ElementMatch!15807) r!7292) ((_ is Union!15807) r!7292) ((_ is Concat!24652) r!7292)))))

(declare-fun b!5792495 () Bool)

(assert (=> b!5792495 (= e!3557161 lt!2297333)))

(declare-fun b!5792496 () Bool)

(declare-fun res!2444001 () Bool)

(assert (=> b!5792496 (=> res!2444001 e!3557157)))

(assert (=> b!5792496 (= res!2444001 ((_ is Nil!63597) s!2326))))

(declare-fun e!3557165 () Bool)

(declare-fun e!3557155 () Bool)

(assert (=> b!5792497 (= e!3557165 e!3557155)))

(declare-fun res!2444007 () Bool)

(assert (=> b!5792497 (=> res!2444007 e!3557155)))

(declare-fun lt!2297342 () (InoxSet Context!10382))

(declare-fun lt!2297337 () (InoxSet Context!10382))

(assert (=> b!5792497 (= res!2444007 (not (= lt!2297342 lt!2297337)))))

(declare-fun lambda!315970 () Int)

(declare-fun flatMap!1414 ((InoxSet Context!10382) Int) (InoxSet Context!10382))

(declare-fun derivationStepZipperUp!1071 (Context!10382 C!31884) (InoxSet Context!10382))

(assert (=> b!5792497 (= (flatMap!1414 z!1189 lambda!315970) (derivationStepZipperUp!1071 (h!70046 zl!343) (h!70045 s!2326)))))

(declare-fun lt!2297340 () Unit!156874)

(declare-fun lemmaFlatMapOnSingletonSet!946 ((InoxSet Context!10382) Context!10382 Int) Unit!156874)

(assert (=> b!5792497 (= lt!2297340 (lemmaFlatMapOnSingletonSet!946 z!1189 (h!70046 zl!343) lambda!315970))))

(declare-fun b!5792498 () Bool)

(assert (=> b!5792498 (= e!3557154 (not e!3557156))))

(declare-fun res!2444004 () Bool)

(assert (=> b!5792498 (=> res!2444004 e!3557156)))

(assert (=> b!5792498 (= res!2444004 (not ((_ is Cons!63598) zl!343)))))

(declare-fun matchRSpec!2910 (Regex!15807 List!63721) Bool)

(assert (=> b!5792498 (= lt!2297339 (matchRSpec!2910 r!7292 s!2326))))

(declare-fun matchR!7992 (Regex!15807 List!63721) Bool)

(assert (=> b!5792498 (= lt!2297339 (matchR!7992 r!7292 s!2326))))

(declare-fun lt!2297344 () Unit!156874)

(declare-fun mainMatchTheorem!2910 (Regex!15807 List!63721) Unit!156874)

(assert (=> b!5792498 (= lt!2297344 (mainMatchTheorem!2910 r!7292 s!2326))))

(declare-fun e!3557162 () Bool)

(declare-fun tp!1598047 () Bool)

(declare-fun b!5792499 () Bool)

(assert (=> b!5792499 (= e!3557164 (and (inv!82764 (h!70046 zl!343)) e!3557162 tp!1598047))))

(declare-fun b!5792500 () Bool)

(assert (=> b!5792500 (= e!3557153 (= lt!2297335 r!7292))))

(declare-fun b!5792501 () Bool)

(declare-fun tp_is_empty!40867 () Bool)

(assert (=> b!5792501 (= e!3557160 tp_is_empty!40867)))

(declare-fun b!5792502 () Bool)

(assert (=> b!5792502 (= e!3557155 e!3557153)))

(declare-fun res!2443999 () Bool)

(assert (=> b!5792502 (=> res!2443999 e!3557153)))

(declare-fun lt!2297330 () List!63720)

(declare-fun derivationStepZipperDown!1145 (Regex!15807 Context!10382 C!31884) (InoxSet Context!10382))

(assert (=> b!5792502 (= res!2443999 (not (= lt!2297342 (derivationStepZipperDown!1145 (reg!16136 r!7292) (Context!10383 lt!2297330) (h!70045 s!2326)))))))

(declare-fun lt!2297329 () Context!10382)

(assert (=> b!5792502 (= (flatMap!1414 lt!2297338 lambda!315970) (derivationStepZipperUp!1071 lt!2297329 (h!70045 s!2326)))))

(declare-fun lt!2297341 () Unit!156874)

(assert (=> b!5792502 (= lt!2297341 (lemmaFlatMapOnSingletonSet!946 lt!2297338 lt!2297329 lambda!315970))))

(declare-fun lt!2297332 () (InoxSet Context!10382))

(assert (=> b!5792502 (= lt!2297332 (derivationStepZipperUp!1071 lt!2297329 (h!70045 s!2326)))))

(assert (=> b!5792502 (= lt!2297338 (store ((as const (Array Context!10382 Bool)) false) lt!2297329 true))))

(assert (=> b!5792502 (= lt!2297329 (Context!10383 (Cons!63596 (reg!16136 r!7292) lt!2297330)))))

(assert (=> b!5792502 (= lt!2297330 (Cons!63596 r!7292 Nil!63596))))

(declare-fun b!5792503 () Bool)

(declare-fun tp!1598052 () Bool)

(declare-fun tp!1598051 () Bool)

(assert (=> b!5792503 (= e!3557160 (and tp!1598052 tp!1598051))))

(declare-fun b!5792504 () Bool)

(declare-fun tp!1598050 () Bool)

(assert (=> b!5792504 (= e!3557162 tp!1598050)))

(declare-fun b!5792505 () Bool)

(declare-fun res!2444000 () Bool)

(assert (=> b!5792505 (=> res!2444000 e!3557156)))

(assert (=> b!5792505 (= res!2444000 (not ((_ is Cons!63596) (exprs!5691 (h!70046 zl!343)))))))

(declare-fun b!5792506 () Bool)

(declare-fun tp!1598048 () Bool)

(assert (=> b!5792506 (= e!3557159 tp!1598048)))

(declare-fun b!5792507 () Bool)

(assert (=> b!5792507 (= e!3557157 e!3557165)))

(declare-fun res!2444011 () Bool)

(assert (=> b!5792507 (=> res!2444011 e!3557165)))

(declare-fun lt!2297336 () (InoxSet Context!10382))

(assert (=> b!5792507 (= res!2444011 (not (= lt!2297336 lt!2297337)))))

(assert (=> b!5792507 (= lt!2297337 (derivationStepZipperDown!1145 r!7292 (Context!10383 Nil!63596) (h!70045 s!2326)))))

(assert (=> b!5792507 (= lt!2297336 (derivationStepZipperUp!1071 (Context!10383 (Cons!63596 r!7292 Nil!63596)) (h!70045 s!2326)))))

(assert (=> b!5792507 (= lt!2297342 (derivationStepZipper!1876 z!1189 (h!70045 s!2326)))))

(declare-fun b!5792508 () Bool)

(declare-fun tp!1598045 () Bool)

(assert (=> b!5792508 (= e!3557158 (and tp_is_empty!40867 tp!1598045))))

(assert (= (and start!594144 res!2444005) b!5792486))

(assert (= (and b!5792486 res!2444006) b!5792487))

(assert (= (and b!5792487 res!2444014) b!5792498))

(assert (= (and b!5792498 (not res!2444004)) b!5792492))

(assert (= (and b!5792492 (not res!2444013)) b!5792493))

(assert (= (and b!5792493 (not res!2444002)) b!5792505))

(assert (= (and b!5792505 (not res!2444000)) b!5792491))

(assert (= (and b!5792491 (not res!2444003)) b!5792494))

(assert (= (and b!5792494 (not res!2444010)) b!5792490))

(assert (= (and b!5792490 (not res!2444012)) b!5792495))

(assert (= (and b!5792490 (not res!2444009)) b!5792496))

(assert (= (and b!5792496 (not res!2444001)) b!5792507))

(assert (= (and b!5792507 (not res!2444011)) b!5792497))

(assert (= (and b!5792497 (not res!2444007)) b!5792502))

(assert (= (and b!5792502 (not res!2443999)) b!5792485))

(assert (= (and b!5792485 (not res!2444008)) b!5792500))

(assert (= (and start!594144 ((_ is ElementMatch!15807) r!7292)) b!5792501))

(assert (= (and start!594144 ((_ is Concat!24652) r!7292)) b!5792503))

(assert (= (and start!594144 ((_ is Star!15807) r!7292)) b!5792489))

(assert (= (and start!594144 ((_ is Union!15807) r!7292)) b!5792488))

(assert (= (and start!594144 condSetEmpty!38950) setIsEmpty!38950))

(assert (= (and start!594144 (not condSetEmpty!38950)) setNonEmpty!38950))

(assert (= setNonEmpty!38950 b!5792506))

(assert (= b!5792499 b!5792504))

(assert (= (and start!594144 ((_ is Cons!63598) zl!343)) b!5792499))

(assert (= (and start!594144 ((_ is Cons!63597) s!2326)) b!5792508))

(declare-fun m!6735410 () Bool)

(assert (=> b!5792497 m!6735410))

(declare-fun m!6735412 () Bool)

(assert (=> b!5792497 m!6735412))

(declare-fun m!6735414 () Bool)

(assert (=> b!5792497 m!6735414))

(declare-fun m!6735416 () Bool)

(assert (=> b!5792502 m!6735416))

(declare-fun m!6735418 () Bool)

(assert (=> b!5792502 m!6735418))

(declare-fun m!6735420 () Bool)

(assert (=> b!5792502 m!6735420))

(declare-fun m!6735422 () Bool)

(assert (=> b!5792502 m!6735422))

(declare-fun m!6735424 () Bool)

(assert (=> b!5792502 m!6735424))

(declare-fun m!6735426 () Bool)

(assert (=> b!5792507 m!6735426))

(declare-fun m!6735428 () Bool)

(assert (=> b!5792507 m!6735428))

(declare-fun m!6735430 () Bool)

(assert (=> b!5792507 m!6735430))

(declare-fun m!6735432 () Bool)

(assert (=> b!5792492 m!6735432))

(declare-fun m!6735434 () Bool)

(assert (=> b!5792499 m!6735434))

(declare-fun m!6735436 () Bool)

(assert (=> b!5792487 m!6735436))

(declare-fun m!6735438 () Bool)

(assert (=> b!5792490 m!6735438))

(declare-fun m!6735440 () Bool)

(assert (=> b!5792490 m!6735440))

(declare-fun m!6735442 () Bool)

(assert (=> b!5792490 m!6735442))

(declare-fun m!6735444 () Bool)

(assert (=> b!5792490 m!6735444))

(declare-fun m!6735446 () Bool)

(assert (=> b!5792490 m!6735446))

(assert (=> b!5792490 m!6735440))

(declare-fun m!6735448 () Bool)

(assert (=> b!5792490 m!6735448))

(declare-fun m!6735450 () Bool)

(assert (=> b!5792490 m!6735450))

(declare-fun m!6735452 () Bool)

(assert (=> b!5792490 m!6735452))

(assert (=> b!5792490 m!6735448))

(assert (=> b!5792490 m!6735440))

(declare-fun m!6735454 () Bool)

(assert (=> b!5792490 m!6735454))

(declare-fun m!6735456 () Bool)

(assert (=> b!5792498 m!6735456))

(declare-fun m!6735458 () Bool)

(assert (=> b!5792498 m!6735458))

(declare-fun m!6735460 () Bool)

(assert (=> b!5792498 m!6735460))

(declare-fun m!6735462 () Bool)

(assert (=> setNonEmpty!38950 m!6735462))

(declare-fun m!6735464 () Bool)

(assert (=> b!5792485 m!6735464))

(declare-fun m!6735466 () Bool)

(assert (=> b!5792485 m!6735466))

(assert (=> b!5792485 m!6735466))

(declare-fun m!6735468 () Bool)

(assert (=> b!5792485 m!6735468))

(declare-fun m!6735470 () Bool)

(assert (=> b!5792493 m!6735470))

(declare-fun m!6735472 () Bool)

(assert (=> b!5792486 m!6735472))

(declare-fun m!6735474 () Bool)

(assert (=> b!5792491 m!6735474))

(assert (=> b!5792491 m!6735474))

(declare-fun m!6735476 () Bool)

(assert (=> b!5792491 m!6735476))

(declare-fun m!6735478 () Bool)

(assert (=> start!594144 m!6735478))

(check-sat (not b!5792493) (not b!5792486) (not b!5792488) (not b!5792506) (not start!594144) (not b!5792491) (not b!5792490) (not b!5792487) (not b!5792508) (not b!5792502) (not b!5792489) (not b!5792503) (not b!5792499) (not b!5792498) tp_is_empty!40867 (not b!5792504) (not b!5792497) (not setNonEmpty!38950) (not b!5792507) (not b!5792492) (not b!5792485))
(check-sat)
