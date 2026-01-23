; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!616906 () Bool)

(assert start!616906)

(declare-fun b!6184183 () Bool)

(assert (=> b!6184183 true))

(assert (=> b!6184183 true))

(declare-fun lambda!337584 () Int)

(declare-fun lambda!337583 () Int)

(assert (=> b!6184183 (not (= lambda!337584 lambda!337583))))

(assert (=> b!6184183 true))

(assert (=> b!6184183 true))

(declare-fun b!6184187 () Bool)

(assert (=> b!6184187 true))

(declare-fun b!6184179 () Bool)

(declare-fun res!2558656 () Bool)

(declare-fun e!3766475 () Bool)

(assert (=> b!6184179 (=> (not res!2558656) (not e!3766475))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32512 0))(
  ( (C!32513 (val!25958 Int)) )
))
(declare-datatypes ((Regex!16121 0))(
  ( (ElementMatch!16121 (c!1115220 C!32512)) (Concat!24966 (regOne!32754 Regex!16121) (regTwo!32754 Regex!16121)) (EmptyExpr!16121) (Star!16121 (reg!16450 Regex!16121)) (EmptyLang!16121) (Union!16121 (regOne!32755 Regex!16121) (regTwo!32755 Regex!16121)) )
))
(declare-datatypes ((List!64662 0))(
  ( (Nil!64538) (Cons!64538 (h!70986 Regex!16121) (t!378170 List!64662)) )
))
(declare-datatypes ((Context!11010 0))(
  ( (Context!11011 (exprs!6005 List!64662)) )
))
(declare-fun z!1189 () (InoxSet Context!11010))

(declare-datatypes ((List!64663 0))(
  ( (Nil!64539) (Cons!64539 (h!70987 Context!11010) (t!378171 List!64663)) )
))
(declare-fun zl!343 () List!64663)

(declare-fun toList!9905 ((InoxSet Context!11010)) List!64663)

(assert (=> b!6184179 (= res!2558656 (= (toList!9905 z!1189) zl!343))))

(declare-fun b!6184180 () Bool)

(declare-datatypes ((Unit!157747 0))(
  ( (Unit!157748) )
))
(declare-fun e!3766487 () Unit!157747)

(declare-fun Unit!157749 () Unit!157747)

(assert (=> b!6184180 (= e!3766487 Unit!157749)))

(declare-datatypes ((List!64664 0))(
  ( (Nil!64540) (Cons!64540 (h!70988 C!32512) (t!378172 List!64664)) )
))
(declare-fun s!2326 () List!64664)

(declare-fun lt!2339254 () Unit!157747)

(declare-fun lt!2339233 () (InoxSet Context!11010))

(declare-fun lt!2339244 () (InoxSet Context!11010))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!952 ((InoxSet Context!11010) (InoxSet Context!11010) List!64664) Unit!157747)

(assert (=> b!6184180 (= lt!2339254 (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339233 lt!2339244 (t!378172 s!2326)))))

(declare-fun res!2558670 () Bool)

(declare-fun matchZipper!2133 ((InoxSet Context!11010) List!64664) Bool)

(assert (=> b!6184180 (= res!2558670 (matchZipper!2133 lt!2339233 (t!378172 s!2326)))))

(declare-fun e!3766480 () Bool)

(assert (=> b!6184180 (=> res!2558670 e!3766480)))

(assert (=> b!6184180 (= (matchZipper!2133 ((_ map or) lt!2339233 lt!2339244) (t!378172 s!2326)) e!3766480)))

(declare-fun tp!1726461 () Bool)

(declare-fun b!6184181 () Bool)

(declare-fun e!3766479 () Bool)

(declare-fun e!3766492 () Bool)

(declare-fun inv!83549 (Context!11010) Bool)

(assert (=> b!6184181 (= e!3766479 (and (inv!83549 (h!70987 zl!343)) e!3766492 tp!1726461))))

(declare-fun b!6184182 () Bool)

(declare-fun res!2558674 () Bool)

(declare-fun e!3766477 () Bool)

(assert (=> b!6184182 (=> res!2558674 e!3766477)))

(declare-fun isEmpty!36519 (List!64663) Bool)

(assert (=> b!6184182 (= res!2558674 (not (isEmpty!36519 (t!378171 zl!343))))))

(declare-fun tp!1726464 () Bool)

(declare-fun e!3766471 () Bool)

(declare-fun setNonEmpty!41932 () Bool)

(declare-fun setElem!41932 () Context!11010)

(declare-fun setRes!41932 () Bool)

(assert (=> setNonEmpty!41932 (= setRes!41932 (and tp!1726464 (inv!83549 setElem!41932) e!3766471))))

(declare-fun setRest!41932 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41932 (= z!1189 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41932 true) setRest!41932))))

(declare-fun e!3766495 () Bool)

(assert (=> b!6184183 (= e!3766477 e!3766495)))

(declare-fun res!2558655 () Bool)

(assert (=> b!6184183 (=> res!2558655 e!3766495)))

(declare-fun lt!2339248 () Bool)

(declare-fun lt!2339235 () Bool)

(get-info :version)

(assert (=> b!6184183 (= res!2558655 (or (not (= lt!2339248 lt!2339235)) ((_ is Nil!64540) s!2326)))))

(declare-fun Exists!3191 (Int) Bool)

(assert (=> b!6184183 (= (Exists!3191 lambda!337583) (Exists!3191 lambda!337584))))

(declare-fun lt!2339245 () Unit!157747)

(declare-fun r!7292 () Regex!16121)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1728 (Regex!16121 Regex!16121 List!64664) Unit!157747)

(assert (=> b!6184183 (= lt!2339245 (lemmaExistCutMatchRandMatchRSpecEquivalent!1728 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326))))

(assert (=> b!6184183 (= lt!2339235 (Exists!3191 lambda!337583))))

(declare-datatypes ((tuple2!66200 0))(
  ( (tuple2!66201 (_1!36403 List!64664) (_2!36403 List!64664)) )
))
(declare-datatypes ((Option!16012 0))(
  ( (None!16011) (Some!16011 (v!52154 tuple2!66200)) )
))
(declare-fun isDefined!12715 (Option!16012) Bool)

(declare-fun findConcatSeparation!2426 (Regex!16121 Regex!16121 List!64664 List!64664 List!64664) Option!16012)

(assert (=> b!6184183 (= lt!2339235 (isDefined!12715 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326)))))

(declare-fun lt!2339231 () Unit!157747)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2190 (Regex!16121 Regex!16121 List!64664) Unit!157747)

(assert (=> b!6184183 (= lt!2339231 (lemmaFindConcatSeparationEquivalentToExists!2190 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326))))

(declare-fun b!6184184 () Bool)

(declare-fun e!3766483 () Bool)

(assert (=> b!6184184 (= e!3766483 (not e!3766477))))

(declare-fun res!2558663 () Bool)

(assert (=> b!6184184 (=> res!2558663 e!3766477)))

(assert (=> b!6184184 (= res!2558663 (not ((_ is Cons!64539) zl!343)))))

(declare-fun matchRSpec!3222 (Regex!16121 List!64664) Bool)

(assert (=> b!6184184 (= lt!2339248 (matchRSpec!3222 r!7292 s!2326))))

(declare-fun matchR!8304 (Regex!16121 List!64664) Bool)

(assert (=> b!6184184 (= lt!2339248 (matchR!8304 r!7292 s!2326))))

(declare-fun lt!2339230 () Unit!157747)

(declare-fun mainMatchTheorem!3222 (Regex!16121 List!64664) Unit!157747)

(assert (=> b!6184184 (= lt!2339230 (mainMatchTheorem!3222 r!7292 s!2326))))

(declare-fun b!6184185 () Bool)

(declare-fun e!3766486 () Bool)

(declare-fun lt!2339243 () (InoxSet Context!11010))

(assert (=> b!6184185 (= e!3766486 (matchZipper!2133 lt!2339243 s!2326))))

(declare-fun b!6184186 () Bool)

(declare-fun e!3766493 () Unit!157747)

(declare-fun Unit!157750 () Unit!157747)

(assert (=> b!6184186 (= e!3766493 Unit!157750)))

(declare-fun lt!2339238 () Unit!157747)

(declare-fun lt!2339236 () (InoxSet Context!11010))

(assert (=> b!6184186 (= lt!2339238 (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339236 lt!2339244 (t!378172 s!2326)))))

(declare-fun res!2558677 () Bool)

(declare-fun lt!2339251 () Bool)

(assert (=> b!6184186 (= res!2558677 lt!2339251)))

(declare-fun e!3766473 () Bool)

(assert (=> b!6184186 (=> res!2558677 e!3766473)))

(assert (=> b!6184186 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339244) (t!378172 s!2326)) e!3766473)))

(declare-fun e!3766478 () Bool)

(assert (=> b!6184187 (= e!3766495 e!3766478)))

(declare-fun res!2558676 () Bool)

(assert (=> b!6184187 (=> res!2558676 e!3766478)))

(assert (=> b!6184187 (= res!2558676 (or (and ((_ is ElementMatch!16121) (regOne!32754 r!7292)) (= (c!1115220 (regOne!32754 r!7292)) (h!70988 s!2326))) (not ((_ is Union!16121) (regOne!32754 r!7292)))))))

(declare-fun lt!2339225 () Unit!157747)

(assert (=> b!6184187 (= lt!2339225 e!3766487)))

(declare-fun c!1115218 () Bool)

(declare-fun nullable!6114 (Regex!16121) Bool)

(assert (=> b!6184187 (= c!1115218 (nullable!6114 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun lambda!337585 () Int)

(declare-fun flatMap!1626 ((InoxSet Context!11010) Int) (InoxSet Context!11010))

(declare-fun derivationStepZipperUp!1295 (Context!11010 C!32512) (InoxSet Context!11010))

(assert (=> b!6184187 (= (flatMap!1626 z!1189 lambda!337585) (derivationStepZipperUp!1295 (h!70987 zl!343) (h!70988 s!2326)))))

(declare-fun lt!2339260 () Unit!157747)

(declare-fun lemmaFlatMapOnSingletonSet!1152 ((InoxSet Context!11010) Context!11010 Int) Unit!157747)

(assert (=> b!6184187 (= lt!2339260 (lemmaFlatMapOnSingletonSet!1152 z!1189 (h!70987 zl!343) lambda!337585))))

(declare-fun lt!2339239 () Context!11010)

(assert (=> b!6184187 (= lt!2339244 (derivationStepZipperUp!1295 lt!2339239 (h!70988 s!2326)))))

(declare-fun derivationStepZipperDown!1369 (Regex!16121 Context!11010 C!32512) (InoxSet Context!11010))

(assert (=> b!6184187 (= lt!2339233 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (h!70987 zl!343))) lt!2339239 (h!70988 s!2326)))))

(assert (=> b!6184187 (= lt!2339239 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun lt!2339261 () (InoxSet Context!11010))

(assert (=> b!6184187 (= lt!2339261 (derivationStepZipperUp!1295 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))) (h!70988 s!2326)))))

(declare-fun b!6184188 () Bool)

(declare-fun e!3766489 () Bool)

(declare-fun tp_is_empty!41495 () Bool)

(assert (=> b!6184188 (= e!3766489 tp_is_empty!41495)))

(declare-fun b!6184189 () Bool)

(declare-fun Unit!157751 () Unit!157747)

(assert (=> b!6184189 (= e!3766493 Unit!157751)))

(declare-fun b!6184190 () Bool)

(assert (=> b!6184190 (= e!3766480 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(declare-fun b!6184191 () Bool)

(declare-fun e!3766494 () Bool)

(declare-fun e!3766491 () Bool)

(assert (=> b!6184191 (= e!3766494 e!3766491)))

(declare-fun res!2558658 () Bool)

(assert (=> b!6184191 (=> res!2558658 e!3766491)))

(declare-fun lt!2339247 () Int)

(declare-fun lt!2339228 () Int)

(assert (=> b!6184191 (= res!2558658 (>= lt!2339247 lt!2339228))))

(declare-fun zipperDepthTotal!304 (List!64663) Int)

(assert (=> b!6184191 (= lt!2339228 (zipperDepthTotal!304 zl!343))))

(declare-fun lt!2339227 () List!64663)

(assert (=> b!6184191 (= lt!2339247 (zipperDepthTotal!304 lt!2339227))))

(declare-fun lt!2339232 () Context!11010)

(assert (=> b!6184191 (= lt!2339227 (Cons!64539 lt!2339232 Nil!64539))))

(declare-fun b!6184192 () Bool)

(declare-fun tp!1726463 () Bool)

(declare-fun tp!1726466 () Bool)

(assert (=> b!6184192 (= e!3766489 (and tp!1726463 tp!1726466))))

(declare-fun b!6184193 () Bool)

(declare-fun tp!1726469 () Bool)

(assert (=> b!6184193 (= e!3766471 tp!1726469)))

(declare-fun b!6184194 () Bool)

(declare-fun res!2558657 () Bool)

(assert (=> b!6184194 (=> res!2558657 e!3766477)))

(declare-fun generalisedConcat!1718 (List!64662) Regex!16121)

(assert (=> b!6184194 (= res!2558657 (not (= r!7292 (generalisedConcat!1718 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun res!2558665 () Bool)

(assert (=> start!616906 (=> (not res!2558665) (not e!3766475))))

(declare-fun validRegex!7857 (Regex!16121) Bool)

(assert (=> start!616906 (= res!2558665 (validRegex!7857 r!7292))))

(assert (=> start!616906 e!3766475))

(assert (=> start!616906 e!3766489))

(declare-fun condSetEmpty!41932 () Bool)

(assert (=> start!616906 (= condSetEmpty!41932 (= z!1189 ((as const (Array Context!11010 Bool)) false)))))

(assert (=> start!616906 setRes!41932))

(assert (=> start!616906 e!3766479))

(declare-fun e!3766472 () Bool)

(assert (=> start!616906 e!3766472))

(declare-fun b!6184195 () Bool)

(declare-fun tp!1726470 () Bool)

(declare-fun tp!1726462 () Bool)

(assert (=> b!6184195 (= e!3766489 (and tp!1726470 tp!1726462))))

(declare-fun b!6184196 () Bool)

(declare-fun e!3766476 () Bool)

(declare-fun e!3766474 () Bool)

(assert (=> b!6184196 (= e!3766476 e!3766474)))

(declare-fun res!2558669 () Bool)

(assert (=> b!6184196 (=> res!2558669 e!3766474)))

(declare-fun e!3766488 () Bool)

(assert (=> b!6184196 (= res!2558669 e!3766488)))

(declare-fun res!2558666 () Bool)

(assert (=> b!6184196 (=> (not res!2558666) (not e!3766488))))

(assert (=> b!6184196 (= res!2558666 (not (= (matchZipper!2133 lt!2339233 (t!378172 s!2326)) lt!2339251)))))

(declare-fun lt!2339240 () (InoxSet Context!11010))

(declare-fun e!3766485 () Bool)

(assert (=> b!6184196 (= (matchZipper!2133 lt!2339240 (t!378172 s!2326)) e!3766485)))

(declare-fun res!2558664 () Bool)

(assert (=> b!6184196 (=> res!2558664 e!3766485)))

(assert (=> b!6184196 (= res!2558664 lt!2339251)))

(assert (=> b!6184196 (= lt!2339251 (matchZipper!2133 lt!2339236 (t!378172 s!2326)))))

(declare-fun lt!2339229 () (InoxSet Context!11010))

(declare-fun lt!2339253 () Unit!157747)

(assert (=> b!6184196 (= lt!2339253 (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339236 lt!2339229 (t!378172 s!2326)))))

(declare-fun setIsEmpty!41932 () Bool)

(assert (=> setIsEmpty!41932 setRes!41932))

(declare-fun b!6184197 () Bool)

(declare-fun e!3766482 () Unit!157747)

(declare-fun Unit!157752 () Unit!157747)

(assert (=> b!6184197 (= e!3766482 Unit!157752)))

(declare-fun lt!2339257 () Unit!157747)

(assert (=> b!6184197 (= lt!2339257 (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339229 lt!2339244 (t!378172 s!2326)))))

(declare-fun res!2558660 () Bool)

(assert (=> b!6184197 (= res!2558660 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(declare-fun e!3766481 () Bool)

(assert (=> b!6184197 (=> res!2558660 e!3766481)))

(assert (=> b!6184197 (= (matchZipper!2133 ((_ map or) lt!2339229 lt!2339244) (t!378172 s!2326)) e!3766481)))

(declare-fun b!6184198 () Bool)

(assert (=> b!6184198 (= e!3766475 e!3766483)))

(declare-fun res!2558671 () Bool)

(assert (=> b!6184198 (=> (not res!2558671) (not e!3766483))))

(declare-fun lt!2339249 () Regex!16121)

(assert (=> b!6184198 (= res!2558671 (= r!7292 lt!2339249))))

(declare-fun unfocusZipper!1863 (List!64663) Regex!16121)

(assert (=> b!6184198 (= lt!2339249 (unfocusZipper!1863 zl!343))))

(declare-fun b!6184199 () Bool)

(declare-fun res!2558679 () Bool)

(assert (=> b!6184199 (=> res!2558679 e!3766477)))

(assert (=> b!6184199 (= res!2558679 (not ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184200 () Bool)

(assert (=> b!6184200 (= e!3766481 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(declare-fun b!6184201 () Bool)

(declare-fun Unit!157753 () Unit!157747)

(assert (=> b!6184201 (= e!3766482 Unit!157753)))

(declare-fun b!6184202 () Bool)

(declare-fun tp!1726468 () Bool)

(assert (=> b!6184202 (= e!3766489 tp!1726468)))

(declare-fun b!6184203 () Bool)

(assert (=> b!6184203 (= e!3766473 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(declare-fun b!6184204 () Bool)

(declare-fun e!3766490 () Bool)

(declare-fun e!3766484 () Bool)

(assert (=> b!6184204 (= e!3766490 e!3766484)))

(declare-fun res!2558661 () Bool)

(assert (=> b!6184204 (=> res!2558661 e!3766484)))

(declare-fun lt!2339264 () Regex!16121)

(assert (=> b!6184204 (= res!2558661 (not (validRegex!7857 lt!2339264)))))

(declare-fun lt!2339241 () List!64662)

(assert (=> b!6184204 (= lt!2339264 (generalisedConcat!1718 lt!2339241))))

(declare-fun lt!2339234 () Regex!16121)

(declare-fun lt!2339258 () Bool)

(assert (=> b!6184204 (= (matchR!8304 lt!2339234 s!2326) lt!2339258)))

(declare-fun lt!2339262 () Unit!157747)

(declare-fun lt!2339250 () (InoxSet Context!11010))

(declare-fun theoremZipperRegexEquiv!733 ((InoxSet Context!11010) List!64663 Regex!16121 List!64664) Unit!157747)

(assert (=> b!6184204 (= lt!2339262 (theoremZipperRegexEquiv!733 lt!2339250 lt!2339227 lt!2339234 s!2326))))

(declare-fun lt!2339252 () List!64662)

(assert (=> b!6184204 (= lt!2339234 (generalisedConcat!1718 lt!2339252))))

(declare-fun b!6184205 () Bool)

(declare-fun res!2558659 () Bool)

(assert (=> b!6184205 (=> res!2558659 e!3766495)))

(declare-fun isEmpty!36520 (List!64662) Bool)

(assert (=> b!6184205 (= res!2558659 (isEmpty!36520 (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184206 () Bool)

(declare-fun lt!2339263 () List!64663)

(assert (=> b!6184206 (= e!3766484 (= lt!2339264 (unfocusZipper!1863 lt!2339263)))))

(declare-fun b!6184207 () Bool)

(assert (=> b!6184207 (= e!3766485 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(declare-fun b!6184208 () Bool)

(declare-fun res!2558675 () Bool)

(assert (=> b!6184208 (=> res!2558675 e!3766494)))

(assert (=> b!6184208 (= res!2558675 (or (not (= lt!2339249 r!7292)) (not (= (exprs!6005 (h!70987 zl!343)) (Cons!64538 (regOne!32754 r!7292) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun b!6184209 () Bool)

(declare-fun tp!1726465 () Bool)

(assert (=> b!6184209 (= e!3766492 tp!1726465)))

(declare-fun b!6184210 () Bool)

(declare-fun Unit!157754 () Unit!157747)

(assert (=> b!6184210 (= e!3766487 Unit!157754)))

(declare-fun b!6184211 () Bool)

(assert (=> b!6184211 (= e!3766478 e!3766476)))

(declare-fun res!2558672 () Bool)

(assert (=> b!6184211 (=> res!2558672 e!3766476)))

(assert (=> b!6184211 (= res!2558672 (not (= lt!2339233 lt!2339240)))))

(assert (=> b!6184211 (= lt!2339240 ((_ map or) lt!2339236 lt!2339229))))

(assert (=> b!6184211 (= lt!2339229 (derivationStepZipperDown!1369 (regTwo!32755 (regOne!32754 r!7292)) lt!2339239 (h!70988 s!2326)))))

(assert (=> b!6184211 (= lt!2339236 (derivationStepZipperDown!1369 (regOne!32755 (regOne!32754 r!7292)) lt!2339239 (h!70988 s!2326)))))

(declare-fun b!6184212 () Bool)

(assert (=> b!6184212 (= e!3766474 e!3766494)))

(declare-fun res!2558662 () Bool)

(assert (=> b!6184212 (=> res!2558662 e!3766494)))

(assert (=> b!6184212 (= res!2558662 (not (= (matchZipper!2133 z!1189 s!2326) e!3766486)))))

(declare-fun res!2558678 () Bool)

(assert (=> b!6184212 (=> res!2558678 e!3766486)))

(assert (=> b!6184212 (= res!2558678 lt!2339258)))

(assert (=> b!6184212 (= lt!2339258 (matchZipper!2133 lt!2339250 s!2326))))

(declare-fun lt!2339256 () Unit!157747)

(assert (=> b!6184212 (= lt!2339256 e!3766482)))

(declare-fun c!1115217 () Bool)

(assert (=> b!6184212 (= c!1115217 (nullable!6114 (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun lt!2339237 () Context!11010)

(assert (=> b!6184212 (= (flatMap!1626 lt!2339243 lambda!337585) (derivationStepZipperUp!1295 lt!2339237 (h!70988 s!2326)))))

(declare-fun lt!2339226 () Unit!157747)

(assert (=> b!6184212 (= lt!2339226 (lemmaFlatMapOnSingletonSet!1152 lt!2339243 lt!2339237 lambda!337585))))

(declare-fun lt!2339255 () (InoxSet Context!11010))

(assert (=> b!6184212 (= lt!2339255 (derivationStepZipperUp!1295 lt!2339237 (h!70988 s!2326)))))

(declare-fun lt!2339242 () Unit!157747)

(assert (=> b!6184212 (= lt!2339242 e!3766493)))

(declare-fun c!1115219 () Bool)

(assert (=> b!6184212 (= c!1115219 (nullable!6114 (regOne!32755 (regOne!32754 r!7292))))))

(assert (=> b!6184212 (= (flatMap!1626 lt!2339250 lambda!337585) (derivationStepZipperUp!1295 lt!2339232 (h!70988 s!2326)))))

(declare-fun lt!2339259 () Unit!157747)

(assert (=> b!6184212 (= lt!2339259 (lemmaFlatMapOnSingletonSet!1152 lt!2339250 lt!2339232 lambda!337585))))

(declare-fun lt!2339246 () (InoxSet Context!11010))

(assert (=> b!6184212 (= lt!2339246 (derivationStepZipperUp!1295 lt!2339232 (h!70988 s!2326)))))

(assert (=> b!6184212 (= lt!2339243 (store ((as const (Array Context!11010 Bool)) false) lt!2339237 true))))

(assert (=> b!6184212 (= lt!2339237 (Context!11011 lt!2339241))))

(assert (=> b!6184212 (= lt!2339241 (Cons!64538 (regTwo!32755 (regOne!32754 r!7292)) (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> b!6184212 (= lt!2339250 (store ((as const (Array Context!11010 Bool)) false) lt!2339232 true))))

(assert (=> b!6184212 (= lt!2339232 (Context!11011 lt!2339252))))

(assert (=> b!6184212 (= lt!2339252 (Cons!64538 (regOne!32755 (regOne!32754 r!7292)) (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184213 () Bool)

(declare-fun res!2558668 () Bool)

(assert (=> b!6184213 (=> res!2558668 e!3766477)))

(declare-fun generalisedUnion!1965 (List!64662) Regex!16121)

(declare-fun unfocusZipperList!1542 (List!64663) List!64662)

(assert (=> b!6184213 (= res!2558668 (not (= r!7292 (generalisedUnion!1965 (unfocusZipperList!1542 zl!343)))))))

(declare-fun b!6184214 () Bool)

(assert (=> b!6184214 (= e!3766488 (not (matchZipper!2133 lt!2339229 (t!378172 s!2326))))))

(declare-fun b!6184215 () Bool)

(declare-fun res!2558654 () Bool)

(assert (=> b!6184215 (=> res!2558654 e!3766484)))

(assert (=> b!6184215 (= res!2558654 (not (= (toList!9905 lt!2339243) lt!2339263)))))

(declare-fun b!6184216 () Bool)

(declare-fun tp!1726467 () Bool)

(assert (=> b!6184216 (= e!3766472 (and tp_is_empty!41495 tp!1726467))))

(declare-fun b!6184217 () Bool)

(assert (=> b!6184217 (= e!3766491 e!3766490)))

(declare-fun res!2558673 () Bool)

(assert (=> b!6184217 (=> res!2558673 e!3766490)))

(assert (=> b!6184217 (= res!2558673 (>= (zipperDepthTotal!304 lt!2339263) lt!2339228))))

(assert (=> b!6184217 (= lt!2339263 (Cons!64539 lt!2339237 Nil!64539))))

(declare-fun b!6184218 () Bool)

(declare-fun res!2558667 () Bool)

(assert (=> b!6184218 (=> res!2558667 e!3766477)))

(assert (=> b!6184218 (= res!2558667 (or ((_ is EmptyExpr!16121) r!7292) ((_ is EmptyLang!16121) r!7292) ((_ is ElementMatch!16121) r!7292) ((_ is Union!16121) r!7292) (not ((_ is Concat!24966) r!7292))))))

(assert (= (and start!616906 res!2558665) b!6184179))

(assert (= (and b!6184179 res!2558656) b!6184198))

(assert (= (and b!6184198 res!2558671) b!6184184))

(assert (= (and b!6184184 (not res!2558663)) b!6184182))

(assert (= (and b!6184182 (not res!2558674)) b!6184194))

(assert (= (and b!6184194 (not res!2558657)) b!6184199))

(assert (= (and b!6184199 (not res!2558679)) b!6184213))

(assert (= (and b!6184213 (not res!2558668)) b!6184218))

(assert (= (and b!6184218 (not res!2558667)) b!6184183))

(assert (= (and b!6184183 (not res!2558655)) b!6184205))

(assert (= (and b!6184205 (not res!2558659)) b!6184187))

(assert (= (and b!6184187 c!1115218) b!6184180))

(assert (= (and b!6184187 (not c!1115218)) b!6184210))

(assert (= (and b!6184180 (not res!2558670)) b!6184190))

(assert (= (and b!6184187 (not res!2558676)) b!6184211))

(assert (= (and b!6184211 (not res!2558672)) b!6184196))

(assert (= (and b!6184196 (not res!2558664)) b!6184207))

(assert (= (and b!6184196 res!2558666) b!6184214))

(assert (= (and b!6184196 (not res!2558669)) b!6184212))

(assert (= (and b!6184212 c!1115219) b!6184186))

(assert (= (and b!6184212 (not c!1115219)) b!6184189))

(assert (= (and b!6184186 (not res!2558677)) b!6184203))

(assert (= (and b!6184212 c!1115217) b!6184197))

(assert (= (and b!6184212 (not c!1115217)) b!6184201))

(assert (= (and b!6184197 (not res!2558660)) b!6184200))

(assert (= (and b!6184212 (not res!2558678)) b!6184185))

(assert (= (and b!6184212 (not res!2558662)) b!6184208))

(assert (= (and b!6184208 (not res!2558675)) b!6184191))

(assert (= (and b!6184191 (not res!2558658)) b!6184217))

(assert (= (and b!6184217 (not res!2558673)) b!6184204))

(assert (= (and b!6184204 (not res!2558661)) b!6184215))

(assert (= (and b!6184215 (not res!2558654)) b!6184206))

(assert (= (and start!616906 ((_ is ElementMatch!16121) r!7292)) b!6184188))

(assert (= (and start!616906 ((_ is Concat!24966) r!7292)) b!6184192))

(assert (= (and start!616906 ((_ is Star!16121) r!7292)) b!6184202))

(assert (= (and start!616906 ((_ is Union!16121) r!7292)) b!6184195))

(assert (= (and start!616906 condSetEmpty!41932) setIsEmpty!41932))

(assert (= (and start!616906 (not condSetEmpty!41932)) setNonEmpty!41932))

(assert (= setNonEmpty!41932 b!6184193))

(assert (= b!6184181 b!6184209))

(assert (= (and start!616906 ((_ is Cons!64539) zl!343)) b!6184181))

(assert (= (and start!616906 ((_ is Cons!64540) s!2326)) b!6184216))

(declare-fun m!7019092 () Bool)

(assert (=> b!6184200 m!7019092))

(declare-fun m!7019094 () Bool)

(assert (=> b!6184204 m!7019094))

(declare-fun m!7019096 () Bool)

(assert (=> b!6184204 m!7019096))

(declare-fun m!7019098 () Bool)

(assert (=> b!6184204 m!7019098))

(declare-fun m!7019100 () Bool)

(assert (=> b!6184204 m!7019100))

(declare-fun m!7019102 () Bool)

(assert (=> b!6184204 m!7019102))

(declare-fun m!7019104 () Bool)

(assert (=> b!6184186 m!7019104))

(declare-fun m!7019106 () Bool)

(assert (=> b!6184186 m!7019106))

(declare-fun m!7019108 () Bool)

(assert (=> b!6184207 m!7019108))

(declare-fun m!7019110 () Bool)

(assert (=> b!6184183 m!7019110))

(declare-fun m!7019112 () Bool)

(assert (=> b!6184183 m!7019112))

(declare-fun m!7019114 () Bool)

(assert (=> b!6184183 m!7019114))

(declare-fun m!7019116 () Bool)

(assert (=> b!6184183 m!7019116))

(declare-fun m!7019118 () Bool)

(assert (=> b!6184183 m!7019118))

(assert (=> b!6184183 m!7019116))

(assert (=> b!6184183 m!7019110))

(declare-fun m!7019120 () Bool)

(assert (=> b!6184183 m!7019120))

(declare-fun m!7019122 () Bool)

(assert (=> b!6184212 m!7019122))

(declare-fun m!7019124 () Bool)

(assert (=> b!6184212 m!7019124))

(declare-fun m!7019126 () Bool)

(assert (=> b!6184212 m!7019126))

(declare-fun m!7019128 () Bool)

(assert (=> b!6184212 m!7019128))

(declare-fun m!7019130 () Bool)

(assert (=> b!6184212 m!7019130))

(declare-fun m!7019132 () Bool)

(assert (=> b!6184212 m!7019132))

(declare-fun m!7019134 () Bool)

(assert (=> b!6184212 m!7019134))

(declare-fun m!7019136 () Bool)

(assert (=> b!6184212 m!7019136))

(declare-fun m!7019138 () Bool)

(assert (=> b!6184212 m!7019138))

(declare-fun m!7019140 () Bool)

(assert (=> b!6184212 m!7019140))

(declare-fun m!7019142 () Bool)

(assert (=> b!6184212 m!7019142))

(declare-fun m!7019144 () Bool)

(assert (=> b!6184212 m!7019144))

(declare-fun m!7019146 () Bool)

(assert (=> start!616906 m!7019146))

(assert (=> b!6184214 m!7019108))

(declare-fun m!7019148 () Bool)

(assert (=> b!6184205 m!7019148))

(declare-fun m!7019150 () Bool)

(assert (=> b!6184182 m!7019150))

(declare-fun m!7019152 () Bool)

(assert (=> b!6184187 m!7019152))

(declare-fun m!7019154 () Bool)

(assert (=> b!6184187 m!7019154))

(declare-fun m!7019156 () Bool)

(assert (=> b!6184187 m!7019156))

(declare-fun m!7019158 () Bool)

(assert (=> b!6184187 m!7019158))

(declare-fun m!7019160 () Bool)

(assert (=> b!6184187 m!7019160))

(declare-fun m!7019162 () Bool)

(assert (=> b!6184187 m!7019162))

(declare-fun m!7019164 () Bool)

(assert (=> b!6184187 m!7019164))

(assert (=> b!6184203 m!7019092))

(declare-fun m!7019166 () Bool)

(assert (=> b!6184194 m!7019166))

(declare-fun m!7019168 () Bool)

(assert (=> b!6184197 m!7019168))

(assert (=> b!6184197 m!7019108))

(declare-fun m!7019170 () Bool)

(assert (=> b!6184197 m!7019170))

(declare-fun m!7019172 () Bool)

(assert (=> b!6184217 m!7019172))

(declare-fun m!7019174 () Bool)

(assert (=> b!6184185 m!7019174))

(declare-fun m!7019176 () Bool)

(assert (=> setNonEmpty!41932 m!7019176))

(declare-fun m!7019178 () Bool)

(assert (=> b!6184179 m!7019178))

(declare-fun m!7019180 () Bool)

(assert (=> b!6184191 m!7019180))

(declare-fun m!7019182 () Bool)

(assert (=> b!6184191 m!7019182))

(declare-fun m!7019184 () Bool)

(assert (=> b!6184196 m!7019184))

(declare-fun m!7019186 () Bool)

(assert (=> b!6184196 m!7019186))

(declare-fun m!7019188 () Bool)

(assert (=> b!6184196 m!7019188))

(declare-fun m!7019190 () Bool)

(assert (=> b!6184196 m!7019190))

(assert (=> b!6184190 m!7019092))

(declare-fun m!7019192 () Bool)

(assert (=> b!6184184 m!7019192))

(declare-fun m!7019194 () Bool)

(assert (=> b!6184184 m!7019194))

(declare-fun m!7019196 () Bool)

(assert (=> b!6184184 m!7019196))

(declare-fun m!7019198 () Bool)

(assert (=> b!6184181 m!7019198))

(declare-fun m!7019200 () Bool)

(assert (=> b!6184206 m!7019200))

(declare-fun m!7019202 () Bool)

(assert (=> b!6184213 m!7019202))

(assert (=> b!6184213 m!7019202))

(declare-fun m!7019204 () Bool)

(assert (=> b!6184213 m!7019204))

(declare-fun m!7019206 () Bool)

(assert (=> b!6184198 m!7019206))

(declare-fun m!7019208 () Bool)

(assert (=> b!6184211 m!7019208))

(declare-fun m!7019210 () Bool)

(assert (=> b!6184211 m!7019210))

(declare-fun m!7019212 () Bool)

(assert (=> b!6184215 m!7019212))

(declare-fun m!7019214 () Bool)

(assert (=> b!6184180 m!7019214))

(assert (=> b!6184180 m!7019184))

(declare-fun m!7019216 () Bool)

(assert (=> b!6184180 m!7019216))

(check-sat (not b!6184197) (not b!6184191) (not b!6184182) (not b!6184192) (not b!6184207) (not b!6184187) (not b!6184194) (not b!6184213) (not b!6184185) (not b!6184183) (not start!616906) (not b!6184198) (not b!6184205) (not b!6184202) (not b!6184215) (not b!6184206) (not b!6184217) (not b!6184179) (not b!6184204) (not b!6184184) tp_is_empty!41495 (not b!6184190) (not b!6184180) (not b!6184203) (not b!6184195) (not b!6184200) (not b!6184186) (not b!6184216) (not b!6184196) (not b!6184193) (not b!6184214) (not b!6184181) (not b!6184212) (not setNonEmpty!41932) (not b!6184211) (not b!6184209))
(check-sat)
(get-model)

(declare-fun d!1938890 () Bool)

(declare-fun e!3766684 () Bool)

(assert (=> d!1938890 (= (matchZipper!2133 ((_ map or) lt!2339233 lt!2339244) (t!378172 s!2326)) e!3766684)))

(declare-fun res!2558801 () Bool)

(assert (=> d!1938890 (=> res!2558801 e!3766684)))

(assert (=> d!1938890 (= res!2558801 (matchZipper!2133 lt!2339233 (t!378172 s!2326)))))

(declare-fun lt!2339310 () Unit!157747)

(declare-fun choose!45940 ((InoxSet Context!11010) (InoxSet Context!11010) List!64664) Unit!157747)

(assert (=> d!1938890 (= lt!2339310 (choose!45940 lt!2339233 lt!2339244 (t!378172 s!2326)))))

(assert (=> d!1938890 (= (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339233 lt!2339244 (t!378172 s!2326)) lt!2339310)))

(declare-fun b!6184548 () Bool)

(assert (=> b!6184548 (= e!3766684 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1938890 (not res!2558801)) b!6184548))

(assert (=> d!1938890 m!7019216))

(assert (=> d!1938890 m!7019184))

(declare-fun m!7019460 () Bool)

(assert (=> d!1938890 m!7019460))

(assert (=> b!6184548 m!7019092))

(assert (=> b!6184180 d!1938890))

(declare-fun d!1938894 () Bool)

(declare-fun c!1115331 () Bool)

(declare-fun isEmpty!36523 (List!64664) Bool)

(assert (=> d!1938894 (= c!1115331 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766696 () Bool)

(assert (=> d!1938894 (= (matchZipper!2133 lt!2339233 (t!378172 s!2326)) e!3766696)))

(declare-fun b!6184569 () Bool)

(declare-fun nullableZipper!1900 ((InoxSet Context!11010)) Bool)

(assert (=> b!6184569 (= e!3766696 (nullableZipper!1900 lt!2339233))))

(declare-fun b!6184570 () Bool)

(declare-fun derivationStepZipper!2092 ((InoxSet Context!11010) C!32512) (InoxSet Context!11010))

(declare-fun head!12759 (List!64664) C!32512)

(declare-fun tail!11844 (List!64664) List!64664)

(assert (=> b!6184570 (= e!3766696 (matchZipper!2133 (derivationStepZipper!2092 lt!2339233 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938894 c!1115331) b!6184569))

(assert (= (and d!1938894 (not c!1115331)) b!6184570))

(declare-fun m!7019476 () Bool)

(assert (=> d!1938894 m!7019476))

(declare-fun m!7019480 () Bool)

(assert (=> b!6184569 m!7019480))

(declare-fun m!7019482 () Bool)

(assert (=> b!6184570 m!7019482))

(assert (=> b!6184570 m!7019482))

(declare-fun m!7019486 () Bool)

(assert (=> b!6184570 m!7019486))

(declare-fun m!7019489 () Bool)

(assert (=> b!6184570 m!7019489))

(assert (=> b!6184570 m!7019486))

(assert (=> b!6184570 m!7019489))

(declare-fun m!7019494 () Bool)

(assert (=> b!6184570 m!7019494))

(assert (=> b!6184180 d!1938894))

(declare-fun d!1938900 () Bool)

(declare-fun c!1115332 () Bool)

(assert (=> d!1938900 (= c!1115332 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766697 () Bool)

(assert (=> d!1938900 (= (matchZipper!2133 ((_ map or) lt!2339233 lt!2339244) (t!378172 s!2326)) e!3766697)))

(declare-fun b!6184571 () Bool)

(assert (=> b!6184571 (= e!3766697 (nullableZipper!1900 ((_ map or) lt!2339233 lt!2339244)))))

(declare-fun b!6184572 () Bool)

(assert (=> b!6184572 (= e!3766697 (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339233 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938900 c!1115332) b!6184571))

(assert (= (and d!1938900 (not c!1115332)) b!6184572))

(assert (=> d!1938900 m!7019476))

(declare-fun m!7019496 () Bool)

(assert (=> b!6184571 m!7019496))

(assert (=> b!6184572 m!7019482))

(assert (=> b!6184572 m!7019482))

(declare-fun m!7019498 () Bool)

(assert (=> b!6184572 m!7019498))

(assert (=> b!6184572 m!7019489))

(assert (=> b!6184572 m!7019498))

(assert (=> b!6184572 m!7019489))

(declare-fun m!7019500 () Bool)

(assert (=> b!6184572 m!7019500))

(assert (=> b!6184180 d!1938900))

(declare-fun d!1938902 () Bool)

(declare-fun c!1115333 () Bool)

(assert (=> d!1938902 (= c!1115333 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766698 () Bool)

(assert (=> d!1938902 (= (matchZipper!2133 lt!2339244 (t!378172 s!2326)) e!3766698)))

(declare-fun b!6184573 () Bool)

(assert (=> b!6184573 (= e!3766698 (nullableZipper!1900 lt!2339244))))

(declare-fun b!6184574 () Bool)

(assert (=> b!6184574 (= e!3766698 (matchZipper!2133 (derivationStepZipper!2092 lt!2339244 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938902 c!1115333) b!6184573))

(assert (= (and d!1938902 (not c!1115333)) b!6184574))

(assert (=> d!1938902 m!7019476))

(declare-fun m!7019502 () Bool)

(assert (=> b!6184573 m!7019502))

(assert (=> b!6184574 m!7019482))

(assert (=> b!6184574 m!7019482))

(declare-fun m!7019504 () Bool)

(assert (=> b!6184574 m!7019504))

(assert (=> b!6184574 m!7019489))

(assert (=> b!6184574 m!7019504))

(assert (=> b!6184574 m!7019489))

(declare-fun m!7019506 () Bool)

(assert (=> b!6184574 m!7019506))

(assert (=> b!6184200 d!1938902))

(declare-fun d!1938904 () Bool)

(declare-fun lt!2339321 () Regex!16121)

(assert (=> d!1938904 (validRegex!7857 lt!2339321)))

(assert (=> d!1938904 (= lt!2339321 (generalisedUnion!1965 (unfocusZipperList!1542 zl!343)))))

(assert (=> d!1938904 (= (unfocusZipper!1863 zl!343) lt!2339321)))

(declare-fun bs!1534378 () Bool)

(assert (= bs!1534378 d!1938904))

(declare-fun m!7019520 () Bool)

(assert (=> bs!1534378 m!7019520))

(assert (=> bs!1534378 m!7019202))

(assert (=> bs!1534378 m!7019202))

(assert (=> bs!1534378 m!7019204))

(assert (=> b!6184198 d!1938904))

(declare-fun d!1938910 () Bool)

(declare-fun e!3766707 () Bool)

(assert (=> d!1938910 e!3766707))

(declare-fun res!2558809 () Bool)

(assert (=> d!1938910 (=> (not res!2558809) (not e!3766707))))

(declare-fun lt!2339327 () List!64663)

(declare-fun noDuplicate!1963 (List!64663) Bool)

(assert (=> d!1938910 (= res!2558809 (noDuplicate!1963 lt!2339327))))

(declare-fun choose!45941 ((InoxSet Context!11010)) List!64663)

(assert (=> d!1938910 (= lt!2339327 (choose!45941 z!1189))))

(assert (=> d!1938910 (= (toList!9905 z!1189) lt!2339327)))

(declare-fun b!6184586 () Bool)

(declare-fun content!12052 (List!64663) (InoxSet Context!11010))

(assert (=> b!6184586 (= e!3766707 (= (content!12052 lt!2339327) z!1189))))

(assert (= (and d!1938910 res!2558809) b!6184586))

(declare-fun m!7019528 () Bool)

(assert (=> d!1938910 m!7019528))

(declare-fun m!7019532 () Bool)

(assert (=> d!1938910 m!7019532))

(declare-fun m!7019534 () Bool)

(assert (=> b!6184586 m!7019534))

(assert (=> b!6184179 d!1938910))

(declare-fun d!1938916 () Bool)

(declare-fun e!3766716 () Bool)

(assert (=> d!1938916 (= (matchZipper!2133 ((_ map or) lt!2339229 lt!2339244) (t!378172 s!2326)) e!3766716)))

(declare-fun res!2558815 () Bool)

(assert (=> d!1938916 (=> res!2558815 e!3766716)))

(assert (=> d!1938916 (= res!2558815 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(declare-fun lt!2339329 () Unit!157747)

(assert (=> d!1938916 (= lt!2339329 (choose!45940 lt!2339229 lt!2339244 (t!378172 s!2326)))))

(assert (=> d!1938916 (= (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339229 lt!2339244 (t!378172 s!2326)) lt!2339329)))

(declare-fun b!6184598 () Bool)

(assert (=> b!6184598 (= e!3766716 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1938916 (not res!2558815)) b!6184598))

(assert (=> d!1938916 m!7019170))

(assert (=> d!1938916 m!7019108))

(declare-fun m!7019536 () Bool)

(assert (=> d!1938916 m!7019536))

(assert (=> b!6184598 m!7019092))

(assert (=> b!6184197 d!1938916))

(declare-fun d!1938918 () Bool)

(declare-fun c!1115340 () Bool)

(assert (=> d!1938918 (= c!1115340 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766717 () Bool)

(assert (=> d!1938918 (= (matchZipper!2133 lt!2339229 (t!378172 s!2326)) e!3766717)))

(declare-fun b!6184599 () Bool)

(assert (=> b!6184599 (= e!3766717 (nullableZipper!1900 lt!2339229))))

(declare-fun b!6184600 () Bool)

(assert (=> b!6184600 (= e!3766717 (matchZipper!2133 (derivationStepZipper!2092 lt!2339229 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938918 c!1115340) b!6184599))

(assert (= (and d!1938918 (not c!1115340)) b!6184600))

(assert (=> d!1938918 m!7019476))

(declare-fun m!7019544 () Bool)

(assert (=> b!6184599 m!7019544))

(assert (=> b!6184600 m!7019482))

(assert (=> b!6184600 m!7019482))

(declare-fun m!7019546 () Bool)

(assert (=> b!6184600 m!7019546))

(assert (=> b!6184600 m!7019489))

(assert (=> b!6184600 m!7019546))

(assert (=> b!6184600 m!7019489))

(declare-fun m!7019548 () Bool)

(assert (=> b!6184600 m!7019548))

(assert (=> b!6184197 d!1938918))

(declare-fun d!1938922 () Bool)

(declare-fun c!1115342 () Bool)

(assert (=> d!1938922 (= c!1115342 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766719 () Bool)

(assert (=> d!1938922 (= (matchZipper!2133 ((_ map or) lt!2339229 lt!2339244) (t!378172 s!2326)) e!3766719)))

(declare-fun b!6184603 () Bool)

(assert (=> b!6184603 (= e!3766719 (nullableZipper!1900 ((_ map or) lt!2339229 lt!2339244)))))

(declare-fun b!6184604 () Bool)

(assert (=> b!6184604 (= e!3766719 (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339229 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938922 c!1115342) b!6184603))

(assert (= (and d!1938922 (not c!1115342)) b!6184604))

(assert (=> d!1938922 m!7019476))

(declare-fun m!7019558 () Bool)

(assert (=> b!6184603 m!7019558))

(assert (=> b!6184604 m!7019482))

(assert (=> b!6184604 m!7019482))

(declare-fun m!7019562 () Bool)

(assert (=> b!6184604 m!7019562))

(assert (=> b!6184604 m!7019489))

(assert (=> b!6184604 m!7019562))

(assert (=> b!6184604 m!7019489))

(declare-fun m!7019564 () Bool)

(assert (=> b!6184604 m!7019564))

(assert (=> b!6184197 d!1938922))

(assert (=> b!6184196 d!1938894))

(declare-fun d!1938928 () Bool)

(declare-fun c!1115343 () Bool)

(assert (=> d!1938928 (= c!1115343 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766722 () Bool)

(assert (=> d!1938928 (= (matchZipper!2133 lt!2339240 (t!378172 s!2326)) e!3766722)))

(declare-fun b!6184607 () Bool)

(assert (=> b!6184607 (= e!3766722 (nullableZipper!1900 lt!2339240))))

(declare-fun b!6184608 () Bool)

(assert (=> b!6184608 (= e!3766722 (matchZipper!2133 (derivationStepZipper!2092 lt!2339240 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938928 c!1115343) b!6184607))

(assert (= (and d!1938928 (not c!1115343)) b!6184608))

(assert (=> d!1938928 m!7019476))

(declare-fun m!7019568 () Bool)

(assert (=> b!6184607 m!7019568))

(assert (=> b!6184608 m!7019482))

(assert (=> b!6184608 m!7019482))

(declare-fun m!7019570 () Bool)

(assert (=> b!6184608 m!7019570))

(assert (=> b!6184608 m!7019489))

(assert (=> b!6184608 m!7019570))

(assert (=> b!6184608 m!7019489))

(declare-fun m!7019572 () Bool)

(assert (=> b!6184608 m!7019572))

(assert (=> b!6184196 d!1938928))

(declare-fun d!1938932 () Bool)

(declare-fun c!1115345 () Bool)

(assert (=> d!1938932 (= c!1115345 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766724 () Bool)

(assert (=> d!1938932 (= (matchZipper!2133 lt!2339236 (t!378172 s!2326)) e!3766724)))

(declare-fun b!6184611 () Bool)

(assert (=> b!6184611 (= e!3766724 (nullableZipper!1900 lt!2339236))))

(declare-fun b!6184612 () Bool)

(assert (=> b!6184612 (= e!3766724 (matchZipper!2133 (derivationStepZipper!2092 lt!2339236 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1938932 c!1115345) b!6184611))

(assert (= (and d!1938932 (not c!1115345)) b!6184612))

(assert (=> d!1938932 m!7019476))

(declare-fun m!7019576 () Bool)

(assert (=> b!6184611 m!7019576))

(assert (=> b!6184612 m!7019482))

(assert (=> b!6184612 m!7019482))

(declare-fun m!7019580 () Bool)

(assert (=> b!6184612 m!7019580))

(assert (=> b!6184612 m!7019489))

(assert (=> b!6184612 m!7019580))

(assert (=> b!6184612 m!7019489))

(declare-fun m!7019584 () Bool)

(assert (=> b!6184612 m!7019584))

(assert (=> b!6184196 d!1938932))

(declare-fun e!3766726 () Bool)

(declare-fun d!1938936 () Bool)

(assert (=> d!1938936 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339229) (t!378172 s!2326)) e!3766726)))

(declare-fun res!2558818 () Bool)

(assert (=> d!1938936 (=> res!2558818 e!3766726)))

(assert (=> d!1938936 (= res!2558818 (matchZipper!2133 lt!2339236 (t!378172 s!2326)))))

(declare-fun lt!2339333 () Unit!157747)

(assert (=> d!1938936 (= lt!2339333 (choose!45940 lt!2339236 lt!2339229 (t!378172 s!2326)))))

(assert (=> d!1938936 (= (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339236 lt!2339229 (t!378172 s!2326)) lt!2339333)))

(declare-fun b!6184615 () Bool)

(assert (=> b!6184615 (= e!3766726 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(assert (= (and d!1938936 (not res!2558818)) b!6184615))

(declare-fun m!7019588 () Bool)

(assert (=> d!1938936 m!7019588))

(assert (=> d!1938936 m!7019188))

(declare-fun m!7019592 () Bool)

(assert (=> d!1938936 m!7019592))

(assert (=> b!6184615 m!7019108))

(assert (=> b!6184196 d!1938936))

(declare-fun d!1938938 () Bool)

(declare-fun lt!2339336 () Int)

(assert (=> d!1938938 (>= lt!2339336 0)))

(declare-fun e!3766744 () Int)

(assert (=> d!1938938 (= lt!2339336 e!3766744)))

(declare-fun c!1115360 () Bool)

(assert (=> d!1938938 (= c!1115360 ((_ is Cons!64539) lt!2339263))))

(assert (=> d!1938938 (= (zipperDepthTotal!304 lt!2339263) lt!2339336)))

(declare-fun b!6184646 () Bool)

(declare-fun contextDepthTotal!276 (Context!11010) Int)

(assert (=> b!6184646 (= e!3766744 (+ (contextDepthTotal!276 (h!70987 lt!2339263)) (zipperDepthTotal!304 (t!378171 lt!2339263))))))

(declare-fun b!6184647 () Bool)

(assert (=> b!6184647 (= e!3766744 0)))

(assert (= (and d!1938938 c!1115360) b!6184646))

(assert (= (and d!1938938 (not c!1115360)) b!6184647))

(declare-fun m!7019614 () Bool)

(assert (=> b!6184646 m!7019614))

(declare-fun m!7019616 () Bool)

(assert (=> b!6184646 m!7019616))

(assert (=> b!6184217 d!1938938))

(declare-fun bs!1534385 () Bool)

(declare-fun b!6184741 () Bool)

(assert (= bs!1534385 (and b!6184741 b!6184183)))

(declare-fun lambda!337620 () Int)

(assert (=> bs!1534385 (not (= lambda!337620 lambda!337583))))

(assert (=> bs!1534385 (not (= lambda!337620 lambda!337584))))

(assert (=> b!6184741 true))

(assert (=> b!6184741 true))

(declare-fun bs!1534386 () Bool)

(declare-fun b!6184740 () Bool)

(assert (= bs!1534386 (and b!6184740 b!6184183)))

(declare-fun lambda!337621 () Int)

(assert (=> bs!1534386 (not (= lambda!337621 lambda!337583))))

(assert (=> bs!1534386 (= lambda!337621 lambda!337584)))

(declare-fun bs!1534387 () Bool)

(assert (= bs!1534387 (and b!6184740 b!6184741)))

(assert (=> bs!1534387 (not (= lambda!337621 lambda!337620))))

(assert (=> b!6184740 true))

(assert (=> b!6184740 true))

(declare-fun b!6184739 () Bool)

(declare-fun c!1115374 () Bool)

(assert (=> b!6184739 (= c!1115374 ((_ is Union!16121) r!7292))))

(declare-fun e!3766794 () Bool)

(declare-fun e!3766795 () Bool)

(assert (=> b!6184739 (= e!3766794 e!3766795)))

(declare-fun e!3766791 () Bool)

(declare-fun call!516846 () Bool)

(assert (=> b!6184740 (= e!3766791 call!516846)))

(declare-fun e!3766789 () Bool)

(assert (=> b!6184741 (= e!3766789 call!516846)))

(declare-fun bm!516841 () Bool)

(declare-fun call!516847 () Bool)

(assert (=> bm!516841 (= call!516847 (isEmpty!36523 s!2326))))

(declare-fun b!6184742 () Bool)

(declare-fun res!2558841 () Bool)

(assert (=> b!6184742 (=> res!2558841 e!3766789)))

(assert (=> b!6184742 (= res!2558841 call!516847)))

(assert (=> b!6184742 (= e!3766791 e!3766789)))

(declare-fun b!6184743 () Bool)

(assert (=> b!6184743 (= e!3766794 (= s!2326 (Cons!64540 (c!1115220 r!7292) Nil!64540)))))

(declare-fun b!6184744 () Bool)

(declare-fun e!3766793 () Bool)

(assert (=> b!6184744 (= e!3766793 call!516847)))

(declare-fun bm!516842 () Bool)

(declare-fun c!1115372 () Bool)

(assert (=> bm!516842 (= call!516846 (Exists!3191 (ite c!1115372 lambda!337620 lambda!337621)))))

(declare-fun b!6184745 () Bool)

(declare-fun c!1115373 () Bool)

(assert (=> b!6184745 (= c!1115373 ((_ is ElementMatch!16121) r!7292))))

(declare-fun e!3766790 () Bool)

(assert (=> b!6184745 (= e!3766790 e!3766794)))

(declare-fun d!1938950 () Bool)

(declare-fun c!1115371 () Bool)

(assert (=> d!1938950 (= c!1115371 ((_ is EmptyExpr!16121) r!7292))))

(assert (=> d!1938950 (= (matchRSpec!3222 r!7292 s!2326) e!3766793)))

(declare-fun b!6184746 () Bool)

(declare-fun e!3766792 () Bool)

(assert (=> b!6184746 (= e!3766792 (matchRSpec!3222 (regTwo!32755 r!7292) s!2326))))

(declare-fun b!6184747 () Bool)

(assert (=> b!6184747 (= e!3766795 e!3766791)))

(assert (=> b!6184747 (= c!1115372 ((_ is Star!16121) r!7292))))

(declare-fun b!6184748 () Bool)

(assert (=> b!6184748 (= e!3766795 e!3766792)))

(declare-fun res!2558842 () Bool)

(assert (=> b!6184748 (= res!2558842 (matchRSpec!3222 (regOne!32755 r!7292) s!2326))))

(assert (=> b!6184748 (=> res!2558842 e!3766792)))

(declare-fun b!6184749 () Bool)

(assert (=> b!6184749 (= e!3766793 e!3766790)))

(declare-fun res!2558840 () Bool)

(assert (=> b!6184749 (= res!2558840 (not ((_ is EmptyLang!16121) r!7292)))))

(assert (=> b!6184749 (=> (not res!2558840) (not e!3766790))))

(assert (= (and d!1938950 c!1115371) b!6184744))

(assert (= (and d!1938950 (not c!1115371)) b!6184749))

(assert (= (and b!6184749 res!2558840) b!6184745))

(assert (= (and b!6184745 c!1115373) b!6184743))

(assert (= (and b!6184745 (not c!1115373)) b!6184739))

(assert (= (and b!6184739 c!1115374) b!6184748))

(assert (= (and b!6184739 (not c!1115374)) b!6184747))

(assert (= (and b!6184748 (not res!2558842)) b!6184746))

(assert (= (and b!6184747 c!1115372) b!6184742))

(assert (= (and b!6184747 (not c!1115372)) b!6184740))

(assert (= (and b!6184742 (not res!2558841)) b!6184741))

(assert (= (or b!6184741 b!6184740) bm!516842))

(assert (= (or b!6184744 b!6184742) bm!516841))

(declare-fun m!7019654 () Bool)

(assert (=> bm!516841 m!7019654))

(declare-fun m!7019656 () Bool)

(assert (=> bm!516842 m!7019656))

(declare-fun m!7019658 () Bool)

(assert (=> b!6184746 m!7019658))

(declare-fun m!7019660 () Bool)

(assert (=> b!6184748 m!7019660))

(assert (=> b!6184184 d!1938950))

(declare-fun b!6184778 () Bool)

(declare-fun e!3766814 () Bool)

(declare-fun e!3766812 () Bool)

(assert (=> b!6184778 (= e!3766814 e!3766812)))

(declare-fun c!1115381 () Bool)

(assert (=> b!6184778 (= c!1115381 ((_ is EmptyLang!16121) r!7292))))

(declare-fun bm!516845 () Bool)

(declare-fun call!516850 () Bool)

(assert (=> bm!516845 (= call!516850 (isEmpty!36523 s!2326))))

(declare-fun b!6184779 () Bool)

(declare-fun e!3766815 () Bool)

(assert (=> b!6184779 (= e!3766815 (not (= (head!12759 s!2326) (c!1115220 r!7292))))))

(declare-fun b!6184780 () Bool)

(declare-fun e!3766811 () Bool)

(assert (=> b!6184780 (= e!3766811 e!3766815)))

(declare-fun res!2558865 () Bool)

(assert (=> b!6184780 (=> res!2558865 e!3766815)))

(assert (=> b!6184780 (= res!2558865 call!516850)))

(declare-fun b!6184781 () Bool)

(declare-fun e!3766810 () Bool)

(assert (=> b!6184781 (= e!3766810 (= (head!12759 s!2326) (c!1115220 r!7292)))))

(declare-fun d!1938968 () Bool)

(assert (=> d!1938968 e!3766814))

(declare-fun c!1115382 () Bool)

(assert (=> d!1938968 (= c!1115382 ((_ is EmptyExpr!16121) r!7292))))

(declare-fun lt!2339341 () Bool)

(declare-fun e!3766816 () Bool)

(assert (=> d!1938968 (= lt!2339341 e!3766816)))

(declare-fun c!1115383 () Bool)

(assert (=> d!1938968 (= c!1115383 (isEmpty!36523 s!2326))))

(assert (=> d!1938968 (validRegex!7857 r!7292)))

(assert (=> d!1938968 (= (matchR!8304 r!7292 s!2326) lt!2339341)))

(declare-fun b!6184782 () Bool)

(declare-fun res!2558860 () Bool)

(declare-fun e!3766813 () Bool)

(assert (=> b!6184782 (=> res!2558860 e!3766813)))

(assert (=> b!6184782 (= res!2558860 (not ((_ is ElementMatch!16121) r!7292)))))

(assert (=> b!6184782 (= e!3766812 e!3766813)))

(declare-fun b!6184783 () Bool)

(declare-fun res!2558866 () Bool)

(assert (=> b!6184783 (=> (not res!2558866) (not e!3766810))))

(assert (=> b!6184783 (= res!2558866 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun b!6184784 () Bool)

(declare-fun res!2558863 () Bool)

(assert (=> b!6184784 (=> res!2558863 e!3766815)))

(assert (=> b!6184784 (= res!2558863 (not (isEmpty!36523 (tail!11844 s!2326))))))

(declare-fun b!6184785 () Bool)

(assert (=> b!6184785 (= e!3766814 (= lt!2339341 call!516850))))

(declare-fun b!6184786 () Bool)

(declare-fun res!2558859 () Bool)

(assert (=> b!6184786 (=> res!2558859 e!3766813)))

(assert (=> b!6184786 (= res!2558859 e!3766810)))

(declare-fun res!2558862 () Bool)

(assert (=> b!6184786 (=> (not res!2558862) (not e!3766810))))

(assert (=> b!6184786 (= res!2558862 lt!2339341)))

(declare-fun b!6184787 () Bool)

(declare-fun derivativeStep!4838 (Regex!16121 C!32512) Regex!16121)

(assert (=> b!6184787 (= e!3766816 (matchR!8304 (derivativeStep!4838 r!7292 (head!12759 s!2326)) (tail!11844 s!2326)))))

(declare-fun b!6184788 () Bool)

(assert (=> b!6184788 (= e!3766812 (not lt!2339341))))

(declare-fun b!6184789 () Bool)

(declare-fun res!2558864 () Bool)

(assert (=> b!6184789 (=> (not res!2558864) (not e!3766810))))

(assert (=> b!6184789 (= res!2558864 (not call!516850))))

(declare-fun b!6184790 () Bool)

(assert (=> b!6184790 (= e!3766813 e!3766811)))

(declare-fun res!2558861 () Bool)

(assert (=> b!6184790 (=> (not res!2558861) (not e!3766811))))

(assert (=> b!6184790 (= res!2558861 (not lt!2339341))))

(declare-fun b!6184791 () Bool)

(assert (=> b!6184791 (= e!3766816 (nullable!6114 r!7292))))

(assert (= (and d!1938968 c!1115383) b!6184791))

(assert (= (and d!1938968 (not c!1115383)) b!6184787))

(assert (= (and d!1938968 c!1115382) b!6184785))

(assert (= (and d!1938968 (not c!1115382)) b!6184778))

(assert (= (and b!6184778 c!1115381) b!6184788))

(assert (= (and b!6184778 (not c!1115381)) b!6184782))

(assert (= (and b!6184782 (not res!2558860)) b!6184786))

(assert (= (and b!6184786 res!2558862) b!6184789))

(assert (= (and b!6184789 res!2558864) b!6184783))

(assert (= (and b!6184783 res!2558866) b!6184781))

(assert (= (and b!6184786 (not res!2558859)) b!6184790))

(assert (= (and b!6184790 res!2558861) b!6184780))

(assert (= (and b!6184780 (not res!2558865)) b!6184784))

(assert (= (and b!6184784 (not res!2558863)) b!6184779))

(assert (= (or b!6184785 b!6184780 b!6184789) bm!516845))

(assert (=> d!1938968 m!7019654))

(assert (=> d!1938968 m!7019146))

(assert (=> bm!516845 m!7019654))

(declare-fun m!7019662 () Bool)

(assert (=> b!6184784 m!7019662))

(assert (=> b!6184784 m!7019662))

(declare-fun m!7019664 () Bool)

(assert (=> b!6184784 m!7019664))

(declare-fun m!7019666 () Bool)

(assert (=> b!6184787 m!7019666))

(assert (=> b!6184787 m!7019666))

(declare-fun m!7019668 () Bool)

(assert (=> b!6184787 m!7019668))

(assert (=> b!6184787 m!7019662))

(assert (=> b!6184787 m!7019668))

(assert (=> b!6184787 m!7019662))

(declare-fun m!7019670 () Bool)

(assert (=> b!6184787 m!7019670))

(declare-fun m!7019672 () Bool)

(assert (=> b!6184791 m!7019672))

(assert (=> b!6184781 m!7019666))

(assert (=> b!6184783 m!7019662))

(assert (=> b!6184783 m!7019662))

(assert (=> b!6184783 m!7019664))

(assert (=> b!6184779 m!7019666))

(assert (=> b!6184184 d!1938968))

(declare-fun d!1938970 () Bool)

(assert (=> d!1938970 (= (matchR!8304 r!7292 s!2326) (matchRSpec!3222 r!7292 s!2326))))

(declare-fun lt!2339344 () Unit!157747)

(declare-fun choose!45942 (Regex!16121 List!64664) Unit!157747)

(assert (=> d!1938970 (= lt!2339344 (choose!45942 r!7292 s!2326))))

(assert (=> d!1938970 (validRegex!7857 r!7292)))

(assert (=> d!1938970 (= (mainMatchTheorem!3222 r!7292 s!2326) lt!2339344)))

(declare-fun bs!1534388 () Bool)

(assert (= bs!1534388 d!1938970))

(assert (=> bs!1534388 m!7019194))

(assert (=> bs!1534388 m!7019192))

(declare-fun m!7019674 () Bool)

(assert (=> bs!1534388 m!7019674))

(assert (=> bs!1534388 m!7019146))

(assert (=> b!6184184 d!1938970))

(declare-fun d!1938972 () Bool)

(declare-fun c!1115384 () Bool)

(assert (=> d!1938972 (= c!1115384 (isEmpty!36523 s!2326))))

(declare-fun e!3766817 () Bool)

(assert (=> d!1938972 (= (matchZipper!2133 lt!2339243 s!2326) e!3766817)))

(declare-fun b!6184792 () Bool)

(assert (=> b!6184792 (= e!3766817 (nullableZipper!1900 lt!2339243))))

(declare-fun b!6184793 () Bool)

(assert (=> b!6184793 (= e!3766817 (matchZipper!2133 (derivationStepZipper!2092 lt!2339243 (head!12759 s!2326)) (tail!11844 s!2326)))))

(assert (= (and d!1938972 c!1115384) b!6184792))

(assert (= (and d!1938972 (not c!1115384)) b!6184793))

(assert (=> d!1938972 m!7019654))

(declare-fun m!7019676 () Bool)

(assert (=> b!6184792 m!7019676))

(assert (=> b!6184793 m!7019666))

(assert (=> b!6184793 m!7019666))

(declare-fun m!7019678 () Bool)

(assert (=> b!6184793 m!7019678))

(assert (=> b!6184793 m!7019662))

(assert (=> b!6184793 m!7019678))

(assert (=> b!6184793 m!7019662))

(declare-fun m!7019680 () Bool)

(assert (=> b!6184793 m!7019680))

(assert (=> b!6184185 d!1938972))

(declare-fun d!1938974 () Bool)

(assert (=> d!1938974 (= (isEmpty!36520 (t!378170 (exprs!6005 (h!70987 zl!343)))) ((_ is Nil!64538) (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> b!6184205 d!1938974))

(declare-fun d!1938976 () Bool)

(declare-fun choose!45943 (Int) Bool)

(assert (=> d!1938976 (= (Exists!3191 lambda!337583) (choose!45943 lambda!337583))))

(declare-fun bs!1534389 () Bool)

(assert (= bs!1534389 d!1938976))

(declare-fun m!7019682 () Bool)

(assert (=> bs!1534389 m!7019682))

(assert (=> b!6184183 d!1938976))

(declare-fun b!6184812 () Bool)

(declare-fun lt!2339351 () Unit!157747)

(declare-fun lt!2339353 () Unit!157747)

(assert (=> b!6184812 (= lt!2339351 lt!2339353)))

(declare-fun ++!14204 (List!64664 List!64664) List!64664)

(assert (=> b!6184812 (= (++!14204 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2299 (List!64664 C!32512 List!64664 List!64664) Unit!157747)

(assert (=> b!6184812 (= lt!2339353 (lemmaMoveElementToOtherListKeepsConcatEq!2299 Nil!64540 (h!70988 s!2326) (t!378172 s!2326) s!2326))))

(declare-fun e!3766830 () Option!16012)

(assert (=> b!6184812 (= e!3766830 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326) s!2326))))

(declare-fun b!6184813 () Bool)

(declare-fun res!2558880 () Bool)

(declare-fun e!3766828 () Bool)

(assert (=> b!6184813 (=> (not res!2558880) (not e!3766828))))

(declare-fun lt!2339352 () Option!16012)

(declare-fun get!22280 (Option!16012) tuple2!66200)

(assert (=> b!6184813 (= res!2558880 (matchR!8304 (regTwo!32754 r!7292) (_2!36403 (get!22280 lt!2339352))))))

(declare-fun b!6184814 () Bool)

(declare-fun e!3766832 () Option!16012)

(assert (=> b!6184814 (= e!3766832 e!3766830)))

(declare-fun c!1115390 () Bool)

(assert (=> b!6184814 (= c!1115390 ((_ is Nil!64540) s!2326))))

(declare-fun b!6184815 () Bool)

(declare-fun e!3766831 () Bool)

(assert (=> b!6184815 (= e!3766831 (matchR!8304 (regTwo!32754 r!7292) s!2326))))

(declare-fun b!6184816 () Bool)

(assert (=> b!6184816 (= e!3766832 (Some!16011 (tuple2!66201 Nil!64540 s!2326)))))

(declare-fun d!1938978 () Bool)

(declare-fun e!3766829 () Bool)

(assert (=> d!1938978 e!3766829))

(declare-fun res!2558881 () Bool)

(assert (=> d!1938978 (=> res!2558881 e!3766829)))

(assert (=> d!1938978 (= res!2558881 e!3766828)))

(declare-fun res!2558879 () Bool)

(assert (=> d!1938978 (=> (not res!2558879) (not e!3766828))))

(assert (=> d!1938978 (= res!2558879 (isDefined!12715 lt!2339352))))

(assert (=> d!1938978 (= lt!2339352 e!3766832)))

(declare-fun c!1115389 () Bool)

(assert (=> d!1938978 (= c!1115389 e!3766831)))

(declare-fun res!2558877 () Bool)

(assert (=> d!1938978 (=> (not res!2558877) (not e!3766831))))

(assert (=> d!1938978 (= res!2558877 (matchR!8304 (regOne!32754 r!7292) Nil!64540))))

(assert (=> d!1938978 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1938978 (= (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326) lt!2339352)))

(declare-fun b!6184817 () Bool)

(assert (=> b!6184817 (= e!3766829 (not (isDefined!12715 lt!2339352)))))

(declare-fun b!6184818 () Bool)

(declare-fun res!2558878 () Bool)

(assert (=> b!6184818 (=> (not res!2558878) (not e!3766828))))

(assert (=> b!6184818 (= res!2558878 (matchR!8304 (regOne!32754 r!7292) (_1!36403 (get!22280 lt!2339352))))))

(declare-fun b!6184819 () Bool)

(assert (=> b!6184819 (= e!3766828 (= (++!14204 (_1!36403 (get!22280 lt!2339352)) (_2!36403 (get!22280 lt!2339352))) s!2326))))

(declare-fun b!6184820 () Bool)

(assert (=> b!6184820 (= e!3766830 None!16011)))

(assert (= (and d!1938978 res!2558877) b!6184815))

(assert (= (and d!1938978 c!1115389) b!6184816))

(assert (= (and d!1938978 (not c!1115389)) b!6184814))

(assert (= (and b!6184814 c!1115390) b!6184820))

(assert (= (and b!6184814 (not c!1115390)) b!6184812))

(assert (= (and d!1938978 res!2558879) b!6184818))

(assert (= (and b!6184818 res!2558878) b!6184813))

(assert (= (and b!6184813 res!2558880) b!6184819))

(assert (= (and d!1938978 (not res!2558881)) b!6184817))

(declare-fun m!7019684 () Bool)

(assert (=> b!6184819 m!7019684))

(declare-fun m!7019686 () Bool)

(assert (=> b!6184819 m!7019686))

(declare-fun m!7019688 () Bool)

(assert (=> b!6184817 m!7019688))

(declare-fun m!7019690 () Bool)

(assert (=> b!6184812 m!7019690))

(assert (=> b!6184812 m!7019690))

(declare-fun m!7019692 () Bool)

(assert (=> b!6184812 m!7019692))

(declare-fun m!7019694 () Bool)

(assert (=> b!6184812 m!7019694))

(assert (=> b!6184812 m!7019690))

(declare-fun m!7019696 () Bool)

(assert (=> b!6184812 m!7019696))

(assert (=> b!6184813 m!7019684))

(declare-fun m!7019698 () Bool)

(assert (=> b!6184813 m!7019698))

(declare-fun m!7019700 () Bool)

(assert (=> b!6184815 m!7019700))

(assert (=> d!1938978 m!7019688))

(declare-fun m!7019702 () Bool)

(assert (=> d!1938978 m!7019702))

(declare-fun m!7019704 () Bool)

(assert (=> d!1938978 m!7019704))

(assert (=> b!6184818 m!7019684))

(declare-fun m!7019706 () Bool)

(assert (=> b!6184818 m!7019706))

(assert (=> b!6184183 d!1938978))

(declare-fun d!1938980 () Bool)

(assert (=> d!1938980 (= (Exists!3191 lambda!337584) (choose!45943 lambda!337584))))

(declare-fun bs!1534390 () Bool)

(assert (= bs!1534390 d!1938980))

(declare-fun m!7019708 () Bool)

(assert (=> bs!1534390 m!7019708))

(assert (=> b!6184183 d!1938980))

(declare-fun bs!1534391 () Bool)

(declare-fun d!1938982 () Bool)

(assert (= bs!1534391 (and d!1938982 b!6184183)))

(declare-fun lambda!337624 () Int)

(assert (=> bs!1534391 (= lambda!337624 lambda!337583)))

(assert (=> bs!1534391 (not (= lambda!337624 lambda!337584))))

(declare-fun bs!1534392 () Bool)

(assert (= bs!1534392 (and d!1938982 b!6184741)))

(assert (=> bs!1534392 (not (= lambda!337624 lambda!337620))))

(declare-fun bs!1534393 () Bool)

(assert (= bs!1534393 (and d!1938982 b!6184740)))

(assert (=> bs!1534393 (not (= lambda!337624 lambda!337621))))

(assert (=> d!1938982 true))

(assert (=> d!1938982 true))

(assert (=> d!1938982 true))

(assert (=> d!1938982 (= (isDefined!12715 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326)) (Exists!3191 lambda!337624))))

(declare-fun lt!2339356 () Unit!157747)

(declare-fun choose!45945 (Regex!16121 Regex!16121 List!64664) Unit!157747)

(assert (=> d!1938982 (= lt!2339356 (choose!45945 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326))))

(assert (=> d!1938982 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1938982 (= (lemmaFindConcatSeparationEquivalentToExists!2190 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326) lt!2339356)))

(declare-fun bs!1534394 () Bool)

(assert (= bs!1534394 d!1938982))

(assert (=> bs!1534394 m!7019110))

(assert (=> bs!1534394 m!7019112))

(declare-fun m!7019710 () Bool)

(assert (=> bs!1534394 m!7019710))

(declare-fun m!7019712 () Bool)

(assert (=> bs!1534394 m!7019712))

(assert (=> bs!1534394 m!7019110))

(assert (=> bs!1534394 m!7019704))

(assert (=> b!6184183 d!1938982))

(declare-fun bs!1534395 () Bool)

(declare-fun d!1938984 () Bool)

(assert (= bs!1534395 (and d!1938984 d!1938982)))

(declare-fun lambda!337629 () Int)

(assert (=> bs!1534395 (= lambda!337629 lambda!337624)))

(declare-fun bs!1534396 () Bool)

(assert (= bs!1534396 (and d!1938984 b!6184183)))

(assert (=> bs!1534396 (not (= lambda!337629 lambda!337584))))

(declare-fun bs!1534397 () Bool)

(assert (= bs!1534397 (and d!1938984 b!6184741)))

(assert (=> bs!1534397 (not (= lambda!337629 lambda!337620))))

(declare-fun bs!1534398 () Bool)

(assert (= bs!1534398 (and d!1938984 b!6184740)))

(assert (=> bs!1534398 (not (= lambda!337629 lambda!337621))))

(assert (=> bs!1534396 (= lambda!337629 lambda!337583)))

(assert (=> d!1938984 true))

(assert (=> d!1938984 true))

(assert (=> d!1938984 true))

(declare-fun lambda!337630 () Int)

(assert (=> bs!1534395 (not (= lambda!337630 lambda!337624))))

(declare-fun bs!1534399 () Bool)

(assert (= bs!1534399 d!1938984))

(assert (=> bs!1534399 (not (= lambda!337630 lambda!337629))))

(assert (=> bs!1534396 (= lambda!337630 lambda!337584)))

(assert (=> bs!1534397 (not (= lambda!337630 lambda!337620))))

(assert (=> bs!1534398 (= lambda!337630 lambda!337621)))

(assert (=> bs!1534396 (not (= lambda!337630 lambda!337583))))

(assert (=> d!1938984 true))

(assert (=> d!1938984 true))

(assert (=> d!1938984 true))

(assert (=> d!1938984 (= (Exists!3191 lambda!337629) (Exists!3191 lambda!337630))))

(declare-fun lt!2339359 () Unit!157747)

(declare-fun choose!45946 (Regex!16121 Regex!16121 List!64664) Unit!157747)

(assert (=> d!1938984 (= lt!2339359 (choose!45946 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326))))

(assert (=> d!1938984 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1938984 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1728 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326) lt!2339359)))

(declare-fun m!7019714 () Bool)

(assert (=> bs!1534399 m!7019714))

(declare-fun m!7019716 () Bool)

(assert (=> bs!1534399 m!7019716))

(declare-fun m!7019718 () Bool)

(assert (=> bs!1534399 m!7019718))

(assert (=> bs!1534399 m!7019704))

(assert (=> b!6184183 d!1938984))

(declare-fun d!1938986 () Bool)

(declare-fun isEmpty!36524 (Option!16012) Bool)

(assert (=> d!1938986 (= (isDefined!12715 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326)) (not (isEmpty!36524 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326))))))

(declare-fun bs!1534400 () Bool)

(assert (= bs!1534400 d!1938986))

(assert (=> bs!1534400 m!7019110))

(declare-fun m!7019720 () Bool)

(assert (=> bs!1534400 m!7019720))

(assert (=> b!6184183 d!1938986))

(declare-fun b!6184851 () Bool)

(declare-fun e!3766857 () Bool)

(declare-fun e!3766853 () Bool)

(assert (=> b!6184851 (= e!3766857 e!3766853)))

(declare-fun c!1115395 () Bool)

(assert (=> b!6184851 (= c!1115395 ((_ is Union!16121) r!7292))))

(declare-fun b!6184852 () Bool)

(declare-fun e!3766854 () Bool)

(assert (=> b!6184852 (= e!3766857 e!3766854)))

(declare-fun res!2558904 () Bool)

(assert (=> b!6184852 (= res!2558904 (not (nullable!6114 (reg!16450 r!7292))))))

(assert (=> b!6184852 (=> (not res!2558904) (not e!3766854))))

(declare-fun b!6184853 () Bool)

(declare-fun call!516859 () Bool)

(assert (=> b!6184853 (= e!3766854 call!516859)))

(declare-fun bm!516852 () Bool)

(declare-fun call!516857 () Bool)

(assert (=> bm!516852 (= call!516857 (validRegex!7857 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))

(declare-fun b!6184854 () Bool)

(declare-fun e!3766858 () Bool)

(declare-fun e!3766859 () Bool)

(assert (=> b!6184854 (= e!3766858 e!3766859)))

(declare-fun res!2558908 () Bool)

(assert (=> b!6184854 (=> (not res!2558908) (not e!3766859))))

(assert (=> b!6184854 (= res!2558908 call!516857)))

(declare-fun d!1938988 () Bool)

(declare-fun res!2558907 () Bool)

(declare-fun e!3766856 () Bool)

(assert (=> d!1938988 (=> res!2558907 e!3766856)))

(assert (=> d!1938988 (= res!2558907 ((_ is ElementMatch!16121) r!7292))))

(assert (=> d!1938988 (= (validRegex!7857 r!7292) e!3766856)))

(declare-fun b!6184855 () Bool)

(declare-fun call!516858 () Bool)

(assert (=> b!6184855 (= e!3766859 call!516858)))

(declare-fun bm!516853 () Bool)

(declare-fun c!1115396 () Bool)

(assert (=> bm!516853 (= call!516859 (validRegex!7857 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))

(declare-fun b!6184856 () Bool)

(declare-fun res!2558905 () Bool)

(declare-fun e!3766855 () Bool)

(assert (=> b!6184856 (=> (not res!2558905) (not e!3766855))))

(assert (=> b!6184856 (= res!2558905 call!516857)))

(assert (=> b!6184856 (= e!3766853 e!3766855)))

(declare-fun bm!516854 () Bool)

(assert (=> bm!516854 (= call!516858 call!516859)))

(declare-fun b!6184857 () Bool)

(declare-fun res!2558906 () Bool)

(assert (=> b!6184857 (=> res!2558906 e!3766858)))

(assert (=> b!6184857 (= res!2558906 (not ((_ is Concat!24966) r!7292)))))

(assert (=> b!6184857 (= e!3766853 e!3766858)))

(declare-fun b!6184858 () Bool)

(assert (=> b!6184858 (= e!3766855 call!516858)))

(declare-fun b!6184859 () Bool)

(assert (=> b!6184859 (= e!3766856 e!3766857)))

(assert (=> b!6184859 (= c!1115396 ((_ is Star!16121) r!7292))))

(assert (= (and d!1938988 (not res!2558907)) b!6184859))

(assert (= (and b!6184859 c!1115396) b!6184852))

(assert (= (and b!6184859 (not c!1115396)) b!6184851))

(assert (= (and b!6184852 res!2558904) b!6184853))

(assert (= (and b!6184851 c!1115395) b!6184856))

(assert (= (and b!6184851 (not c!1115395)) b!6184857))

(assert (= (and b!6184856 res!2558905) b!6184858))

(assert (= (and b!6184857 (not res!2558906)) b!6184854))

(assert (= (and b!6184854 res!2558908) b!6184855))

(assert (= (or b!6184858 b!6184855) bm!516854))

(assert (= (or b!6184856 b!6184854) bm!516852))

(assert (= (or b!6184853 bm!516854) bm!516853))

(declare-fun m!7019722 () Bool)

(assert (=> b!6184852 m!7019722))

(declare-fun m!7019724 () Bool)

(assert (=> bm!516852 m!7019724))

(declare-fun m!7019726 () Bool)

(assert (=> bm!516853 m!7019726))

(assert (=> start!616906 d!1938988))

(assert (=> b!6184203 d!1938902))

(declare-fun b!6184860 () Bool)

(declare-fun e!3766864 () Bool)

(declare-fun e!3766862 () Bool)

(assert (=> b!6184860 (= e!3766864 e!3766862)))

(declare-fun c!1115397 () Bool)

(assert (=> b!6184860 (= c!1115397 ((_ is EmptyLang!16121) lt!2339234))))

(declare-fun bm!516855 () Bool)

(declare-fun call!516860 () Bool)

(assert (=> bm!516855 (= call!516860 (isEmpty!36523 s!2326))))

(declare-fun b!6184861 () Bool)

(declare-fun e!3766865 () Bool)

(assert (=> b!6184861 (= e!3766865 (not (= (head!12759 s!2326) (c!1115220 lt!2339234))))))

(declare-fun b!6184862 () Bool)

(declare-fun e!3766861 () Bool)

(assert (=> b!6184862 (= e!3766861 e!3766865)))

(declare-fun res!2558915 () Bool)

(assert (=> b!6184862 (=> res!2558915 e!3766865)))

(assert (=> b!6184862 (= res!2558915 call!516860)))

(declare-fun b!6184863 () Bool)

(declare-fun e!3766860 () Bool)

(assert (=> b!6184863 (= e!3766860 (= (head!12759 s!2326) (c!1115220 lt!2339234)))))

(declare-fun d!1938990 () Bool)

(assert (=> d!1938990 e!3766864))

(declare-fun c!1115398 () Bool)

(assert (=> d!1938990 (= c!1115398 ((_ is EmptyExpr!16121) lt!2339234))))

(declare-fun lt!2339360 () Bool)

(declare-fun e!3766866 () Bool)

(assert (=> d!1938990 (= lt!2339360 e!3766866)))

(declare-fun c!1115399 () Bool)

(assert (=> d!1938990 (= c!1115399 (isEmpty!36523 s!2326))))

(assert (=> d!1938990 (validRegex!7857 lt!2339234)))

(assert (=> d!1938990 (= (matchR!8304 lt!2339234 s!2326) lt!2339360)))

(declare-fun b!6184864 () Bool)

(declare-fun res!2558910 () Bool)

(declare-fun e!3766863 () Bool)

(assert (=> b!6184864 (=> res!2558910 e!3766863)))

(assert (=> b!6184864 (= res!2558910 (not ((_ is ElementMatch!16121) lt!2339234)))))

(assert (=> b!6184864 (= e!3766862 e!3766863)))

(declare-fun b!6184865 () Bool)

(declare-fun res!2558916 () Bool)

(assert (=> b!6184865 (=> (not res!2558916) (not e!3766860))))

(assert (=> b!6184865 (= res!2558916 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun b!6184866 () Bool)

(declare-fun res!2558913 () Bool)

(assert (=> b!6184866 (=> res!2558913 e!3766865)))

(assert (=> b!6184866 (= res!2558913 (not (isEmpty!36523 (tail!11844 s!2326))))))

(declare-fun b!6184867 () Bool)

(assert (=> b!6184867 (= e!3766864 (= lt!2339360 call!516860))))

(declare-fun b!6184868 () Bool)

(declare-fun res!2558909 () Bool)

(assert (=> b!6184868 (=> res!2558909 e!3766863)))

(assert (=> b!6184868 (= res!2558909 e!3766860)))

(declare-fun res!2558912 () Bool)

(assert (=> b!6184868 (=> (not res!2558912) (not e!3766860))))

(assert (=> b!6184868 (= res!2558912 lt!2339360)))

(declare-fun b!6184869 () Bool)

(assert (=> b!6184869 (= e!3766866 (matchR!8304 (derivativeStep!4838 lt!2339234 (head!12759 s!2326)) (tail!11844 s!2326)))))

(declare-fun b!6184870 () Bool)

(assert (=> b!6184870 (= e!3766862 (not lt!2339360))))

(declare-fun b!6184871 () Bool)

(declare-fun res!2558914 () Bool)

(assert (=> b!6184871 (=> (not res!2558914) (not e!3766860))))

(assert (=> b!6184871 (= res!2558914 (not call!516860))))

(declare-fun b!6184872 () Bool)

(assert (=> b!6184872 (= e!3766863 e!3766861)))

(declare-fun res!2558911 () Bool)

(assert (=> b!6184872 (=> (not res!2558911) (not e!3766861))))

(assert (=> b!6184872 (= res!2558911 (not lt!2339360))))

(declare-fun b!6184873 () Bool)

(assert (=> b!6184873 (= e!3766866 (nullable!6114 lt!2339234))))

(assert (= (and d!1938990 c!1115399) b!6184873))

(assert (= (and d!1938990 (not c!1115399)) b!6184869))

(assert (= (and d!1938990 c!1115398) b!6184867))

(assert (= (and d!1938990 (not c!1115398)) b!6184860))

(assert (= (and b!6184860 c!1115397) b!6184870))

(assert (= (and b!6184860 (not c!1115397)) b!6184864))

(assert (= (and b!6184864 (not res!2558910)) b!6184868))

(assert (= (and b!6184868 res!2558912) b!6184871))

(assert (= (and b!6184871 res!2558914) b!6184865))

(assert (= (and b!6184865 res!2558916) b!6184863))

(assert (= (and b!6184868 (not res!2558909)) b!6184872))

(assert (= (and b!6184872 res!2558911) b!6184862))

(assert (= (and b!6184862 (not res!2558915)) b!6184866))

(assert (= (and b!6184866 (not res!2558913)) b!6184861))

(assert (= (or b!6184867 b!6184862 b!6184871) bm!516855))

(assert (=> d!1938990 m!7019654))

(declare-fun m!7019728 () Bool)

(assert (=> d!1938990 m!7019728))

(assert (=> bm!516855 m!7019654))

(assert (=> b!6184866 m!7019662))

(assert (=> b!6184866 m!7019662))

(assert (=> b!6184866 m!7019664))

(assert (=> b!6184869 m!7019666))

(assert (=> b!6184869 m!7019666))

(declare-fun m!7019730 () Bool)

(assert (=> b!6184869 m!7019730))

(assert (=> b!6184869 m!7019662))

(assert (=> b!6184869 m!7019730))

(assert (=> b!6184869 m!7019662))

(declare-fun m!7019732 () Bool)

(assert (=> b!6184869 m!7019732))

(declare-fun m!7019734 () Bool)

(assert (=> b!6184873 m!7019734))

(assert (=> b!6184863 m!7019666))

(assert (=> b!6184865 m!7019662))

(assert (=> b!6184865 m!7019662))

(assert (=> b!6184865 m!7019664))

(assert (=> b!6184861 m!7019666))

(assert (=> b!6184204 d!1938990))

(declare-fun b!6184874 () Bool)

(declare-fun e!3766871 () Bool)

(declare-fun e!3766867 () Bool)

(assert (=> b!6184874 (= e!3766871 e!3766867)))

(declare-fun c!1115400 () Bool)

(assert (=> b!6184874 (= c!1115400 ((_ is Union!16121) lt!2339264))))

(declare-fun b!6184875 () Bool)

(declare-fun e!3766868 () Bool)

(assert (=> b!6184875 (= e!3766871 e!3766868)))

(declare-fun res!2558917 () Bool)

(assert (=> b!6184875 (= res!2558917 (not (nullable!6114 (reg!16450 lt!2339264))))))

(assert (=> b!6184875 (=> (not res!2558917) (not e!3766868))))

(declare-fun b!6184876 () Bool)

(declare-fun call!516863 () Bool)

(assert (=> b!6184876 (= e!3766868 call!516863)))

(declare-fun bm!516856 () Bool)

(declare-fun call!516861 () Bool)

(assert (=> bm!516856 (= call!516861 (validRegex!7857 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))

(declare-fun b!6184877 () Bool)

(declare-fun e!3766872 () Bool)

(declare-fun e!3766873 () Bool)

(assert (=> b!6184877 (= e!3766872 e!3766873)))

(declare-fun res!2558921 () Bool)

(assert (=> b!6184877 (=> (not res!2558921) (not e!3766873))))

(assert (=> b!6184877 (= res!2558921 call!516861)))

(declare-fun d!1938992 () Bool)

(declare-fun res!2558920 () Bool)

(declare-fun e!3766870 () Bool)

(assert (=> d!1938992 (=> res!2558920 e!3766870)))

(assert (=> d!1938992 (= res!2558920 ((_ is ElementMatch!16121) lt!2339264))))

(assert (=> d!1938992 (= (validRegex!7857 lt!2339264) e!3766870)))

(declare-fun b!6184878 () Bool)

(declare-fun call!516862 () Bool)

(assert (=> b!6184878 (= e!3766873 call!516862)))

(declare-fun c!1115401 () Bool)

(declare-fun bm!516857 () Bool)

(assert (=> bm!516857 (= call!516863 (validRegex!7857 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))

(declare-fun b!6184879 () Bool)

(declare-fun res!2558918 () Bool)

(declare-fun e!3766869 () Bool)

(assert (=> b!6184879 (=> (not res!2558918) (not e!3766869))))

(assert (=> b!6184879 (= res!2558918 call!516861)))

(assert (=> b!6184879 (= e!3766867 e!3766869)))

(declare-fun bm!516858 () Bool)

(assert (=> bm!516858 (= call!516862 call!516863)))

(declare-fun b!6184880 () Bool)

(declare-fun res!2558919 () Bool)

(assert (=> b!6184880 (=> res!2558919 e!3766872)))

(assert (=> b!6184880 (= res!2558919 (not ((_ is Concat!24966) lt!2339264)))))

(assert (=> b!6184880 (= e!3766867 e!3766872)))

(declare-fun b!6184881 () Bool)

(assert (=> b!6184881 (= e!3766869 call!516862)))

(declare-fun b!6184882 () Bool)

(assert (=> b!6184882 (= e!3766870 e!3766871)))

(assert (=> b!6184882 (= c!1115401 ((_ is Star!16121) lt!2339264))))

(assert (= (and d!1938992 (not res!2558920)) b!6184882))

(assert (= (and b!6184882 c!1115401) b!6184875))

(assert (= (and b!6184882 (not c!1115401)) b!6184874))

(assert (= (and b!6184875 res!2558917) b!6184876))

(assert (= (and b!6184874 c!1115400) b!6184879))

(assert (= (and b!6184874 (not c!1115400)) b!6184880))

(assert (= (and b!6184879 res!2558918) b!6184881))

(assert (= (and b!6184880 (not res!2558919)) b!6184877))

(assert (= (and b!6184877 res!2558921) b!6184878))

(assert (= (or b!6184881 b!6184878) bm!516858))

(assert (= (or b!6184879 b!6184877) bm!516856))

(assert (= (or b!6184876 bm!516858) bm!516857))

(declare-fun m!7019736 () Bool)

(assert (=> b!6184875 m!7019736))

(declare-fun m!7019738 () Bool)

(assert (=> bm!516856 m!7019738))

(declare-fun m!7019740 () Bool)

(assert (=> bm!516857 m!7019740))

(assert (=> b!6184204 d!1938992))

(declare-fun d!1938994 () Bool)

(assert (=> d!1938994 (= (matchR!8304 lt!2339234 s!2326) (matchZipper!2133 lt!2339250 s!2326))))

(declare-fun lt!2339363 () Unit!157747)

(declare-fun choose!45948 ((InoxSet Context!11010) List!64663 Regex!16121 List!64664) Unit!157747)

(assert (=> d!1938994 (= lt!2339363 (choose!45948 lt!2339250 lt!2339227 lt!2339234 s!2326))))

(assert (=> d!1938994 (validRegex!7857 lt!2339234)))

(assert (=> d!1938994 (= (theoremZipperRegexEquiv!733 lt!2339250 lt!2339227 lt!2339234 s!2326) lt!2339363)))

(declare-fun bs!1534401 () Bool)

(assert (= bs!1534401 d!1938994))

(assert (=> bs!1534401 m!7019096))

(assert (=> bs!1534401 m!7019134))

(declare-fun m!7019742 () Bool)

(assert (=> bs!1534401 m!7019742))

(assert (=> bs!1534401 m!7019728))

(assert (=> b!6184204 d!1938994))

(declare-fun b!6184903 () Bool)

(declare-fun e!3766890 () Bool)

(declare-fun e!3766887 () Bool)

(assert (=> b!6184903 (= e!3766890 e!3766887)))

(declare-fun c!1115411 () Bool)

(declare-fun tail!11845 (List!64662) List!64662)

(assert (=> b!6184903 (= c!1115411 (isEmpty!36520 (tail!11845 lt!2339252)))))

(declare-fun b!6184904 () Bool)

(declare-fun e!3766889 () Bool)

(assert (=> b!6184904 (= e!3766889 e!3766890)))

(declare-fun c!1115412 () Bool)

(assert (=> b!6184904 (= c!1115412 (isEmpty!36520 lt!2339252))))

(declare-fun b!6184905 () Bool)

(declare-fun e!3766888 () Regex!16121)

(assert (=> b!6184905 (= e!3766888 (Concat!24966 (h!70986 lt!2339252) (generalisedConcat!1718 (t!378170 lt!2339252))))))

(declare-fun b!6184906 () Bool)

(declare-fun lt!2339366 () Regex!16121)

(declare-fun head!12760 (List!64662) Regex!16121)

(assert (=> b!6184906 (= e!3766887 (= lt!2339366 (head!12760 lt!2339252)))))

(declare-fun b!6184907 () Bool)

(assert (=> b!6184907 (= e!3766888 EmptyExpr!16121)))

(declare-fun d!1938996 () Bool)

(assert (=> d!1938996 e!3766889))

(declare-fun res!2558927 () Bool)

(assert (=> d!1938996 (=> (not res!2558927) (not e!3766889))))

(assert (=> d!1938996 (= res!2558927 (validRegex!7857 lt!2339366))))

(declare-fun e!3766886 () Regex!16121)

(assert (=> d!1938996 (= lt!2339366 e!3766886)))

(declare-fun c!1115410 () Bool)

(declare-fun e!3766891 () Bool)

(assert (=> d!1938996 (= c!1115410 e!3766891)))

(declare-fun res!2558926 () Bool)

(assert (=> d!1938996 (=> (not res!2558926) (not e!3766891))))

(assert (=> d!1938996 (= res!2558926 ((_ is Cons!64538) lt!2339252))))

(declare-fun lambda!337633 () Int)

(declare-fun forall!15240 (List!64662 Int) Bool)

(assert (=> d!1938996 (forall!15240 lt!2339252 lambda!337633)))

(assert (=> d!1938996 (= (generalisedConcat!1718 lt!2339252) lt!2339366)))

(declare-fun b!6184908 () Bool)

(declare-fun isConcat!1059 (Regex!16121) Bool)

(assert (=> b!6184908 (= e!3766887 (isConcat!1059 lt!2339366))))

(declare-fun b!6184909 () Bool)

(assert (=> b!6184909 (= e!3766891 (isEmpty!36520 (t!378170 lt!2339252)))))

(declare-fun b!6184910 () Bool)

(assert (=> b!6184910 (= e!3766886 (h!70986 lt!2339252))))

(declare-fun b!6184911 () Bool)

(assert (=> b!6184911 (= e!3766886 e!3766888)))

(declare-fun c!1115413 () Bool)

(assert (=> b!6184911 (= c!1115413 ((_ is Cons!64538) lt!2339252))))

(declare-fun b!6184912 () Bool)

(declare-fun isEmptyExpr!1536 (Regex!16121) Bool)

(assert (=> b!6184912 (= e!3766890 (isEmptyExpr!1536 lt!2339366))))

(assert (= (and d!1938996 res!2558926) b!6184909))

(assert (= (and d!1938996 c!1115410) b!6184910))

(assert (= (and d!1938996 (not c!1115410)) b!6184911))

(assert (= (and b!6184911 c!1115413) b!6184905))

(assert (= (and b!6184911 (not c!1115413)) b!6184907))

(assert (= (and d!1938996 res!2558927) b!6184904))

(assert (= (and b!6184904 c!1115412) b!6184912))

(assert (= (and b!6184904 (not c!1115412)) b!6184903))

(assert (= (and b!6184903 c!1115411) b!6184906))

(assert (= (and b!6184903 (not c!1115411)) b!6184908))

(declare-fun m!7019744 () Bool)

(assert (=> b!6184912 m!7019744))

(declare-fun m!7019746 () Bool)

(assert (=> b!6184905 m!7019746))

(declare-fun m!7019748 () Bool)

(assert (=> b!6184903 m!7019748))

(assert (=> b!6184903 m!7019748))

(declare-fun m!7019750 () Bool)

(assert (=> b!6184903 m!7019750))

(declare-fun m!7019752 () Bool)

(assert (=> b!6184909 m!7019752))

(declare-fun m!7019754 () Bool)

(assert (=> b!6184908 m!7019754))

(declare-fun m!7019756 () Bool)

(assert (=> b!6184904 m!7019756))

(declare-fun m!7019758 () Bool)

(assert (=> b!6184906 m!7019758))

(declare-fun m!7019760 () Bool)

(assert (=> d!1938996 m!7019760))

(declare-fun m!7019762 () Bool)

(assert (=> d!1938996 m!7019762))

(assert (=> b!6184204 d!1938996))

(declare-fun bs!1534402 () Bool)

(declare-fun d!1938998 () Bool)

(assert (= bs!1534402 (and d!1938998 d!1938996)))

(declare-fun lambda!337634 () Int)

(assert (=> bs!1534402 (= lambda!337634 lambda!337633)))

(declare-fun b!6184913 () Bool)

(declare-fun e!3766896 () Bool)

(declare-fun e!3766893 () Bool)

(assert (=> b!6184913 (= e!3766896 e!3766893)))

(declare-fun c!1115415 () Bool)

(assert (=> b!6184913 (= c!1115415 (isEmpty!36520 (tail!11845 lt!2339241)))))

(declare-fun b!6184914 () Bool)

(declare-fun e!3766895 () Bool)

(assert (=> b!6184914 (= e!3766895 e!3766896)))

(declare-fun c!1115416 () Bool)

(assert (=> b!6184914 (= c!1115416 (isEmpty!36520 lt!2339241))))

(declare-fun b!6184915 () Bool)

(declare-fun e!3766894 () Regex!16121)

(assert (=> b!6184915 (= e!3766894 (Concat!24966 (h!70986 lt!2339241) (generalisedConcat!1718 (t!378170 lt!2339241))))))

(declare-fun b!6184916 () Bool)

(declare-fun lt!2339367 () Regex!16121)

(assert (=> b!6184916 (= e!3766893 (= lt!2339367 (head!12760 lt!2339241)))))

(declare-fun b!6184917 () Bool)

(assert (=> b!6184917 (= e!3766894 EmptyExpr!16121)))

(assert (=> d!1938998 e!3766895))

(declare-fun res!2558929 () Bool)

(assert (=> d!1938998 (=> (not res!2558929) (not e!3766895))))

(assert (=> d!1938998 (= res!2558929 (validRegex!7857 lt!2339367))))

(declare-fun e!3766892 () Regex!16121)

(assert (=> d!1938998 (= lt!2339367 e!3766892)))

(declare-fun c!1115414 () Bool)

(declare-fun e!3766897 () Bool)

(assert (=> d!1938998 (= c!1115414 e!3766897)))

(declare-fun res!2558928 () Bool)

(assert (=> d!1938998 (=> (not res!2558928) (not e!3766897))))

(assert (=> d!1938998 (= res!2558928 ((_ is Cons!64538) lt!2339241))))

(assert (=> d!1938998 (forall!15240 lt!2339241 lambda!337634)))

(assert (=> d!1938998 (= (generalisedConcat!1718 lt!2339241) lt!2339367)))

(declare-fun b!6184918 () Bool)

(assert (=> b!6184918 (= e!3766893 (isConcat!1059 lt!2339367))))

(declare-fun b!6184919 () Bool)

(assert (=> b!6184919 (= e!3766897 (isEmpty!36520 (t!378170 lt!2339241)))))

(declare-fun b!6184920 () Bool)

(assert (=> b!6184920 (= e!3766892 (h!70986 lt!2339241))))

(declare-fun b!6184921 () Bool)

(assert (=> b!6184921 (= e!3766892 e!3766894)))

(declare-fun c!1115417 () Bool)

(assert (=> b!6184921 (= c!1115417 ((_ is Cons!64538) lt!2339241))))

(declare-fun b!6184922 () Bool)

(assert (=> b!6184922 (= e!3766896 (isEmptyExpr!1536 lt!2339367))))

(assert (= (and d!1938998 res!2558928) b!6184919))

(assert (= (and d!1938998 c!1115414) b!6184920))

(assert (= (and d!1938998 (not c!1115414)) b!6184921))

(assert (= (and b!6184921 c!1115417) b!6184915))

(assert (= (and b!6184921 (not c!1115417)) b!6184917))

(assert (= (and d!1938998 res!2558929) b!6184914))

(assert (= (and b!6184914 c!1115416) b!6184922))

(assert (= (and b!6184914 (not c!1115416)) b!6184913))

(assert (= (and b!6184913 c!1115415) b!6184916))

(assert (= (and b!6184913 (not c!1115415)) b!6184918))

(declare-fun m!7019764 () Bool)

(assert (=> b!6184922 m!7019764))

(declare-fun m!7019766 () Bool)

(assert (=> b!6184915 m!7019766))

(declare-fun m!7019768 () Bool)

(assert (=> b!6184913 m!7019768))

(assert (=> b!6184913 m!7019768))

(declare-fun m!7019770 () Bool)

(assert (=> b!6184913 m!7019770))

(declare-fun m!7019772 () Bool)

(assert (=> b!6184919 m!7019772))

(declare-fun m!7019774 () Bool)

(assert (=> b!6184918 m!7019774))

(declare-fun m!7019776 () Bool)

(assert (=> b!6184914 m!7019776))

(declare-fun m!7019778 () Bool)

(assert (=> b!6184916 m!7019778))

(declare-fun m!7019780 () Bool)

(assert (=> d!1938998 m!7019780))

(declare-fun m!7019782 () Bool)

(assert (=> d!1938998 m!7019782))

(assert (=> b!6184204 d!1938998))

(declare-fun bs!1534403 () Bool)

(declare-fun d!1939000 () Bool)

(assert (= bs!1534403 (and d!1939000 d!1938996)))

(declare-fun lambda!337637 () Int)

(assert (=> bs!1534403 (= lambda!337637 lambda!337633)))

(declare-fun bs!1534404 () Bool)

(assert (= bs!1534404 (and d!1939000 d!1938998)))

(assert (=> bs!1534404 (= lambda!337637 lambda!337634)))

(assert (=> d!1939000 (= (inv!83549 setElem!41932) (forall!15240 (exprs!6005 setElem!41932) lambda!337637))))

(declare-fun bs!1534405 () Bool)

(assert (= bs!1534405 d!1939000))

(declare-fun m!7019784 () Bool)

(assert (=> bs!1534405 m!7019784))

(assert (=> setNonEmpty!41932 d!1939000))

(declare-fun bs!1534406 () Bool)

(declare-fun d!1939002 () Bool)

(assert (= bs!1534406 (and d!1939002 d!1938996)))

(declare-fun lambda!337638 () Int)

(assert (=> bs!1534406 (= lambda!337638 lambda!337633)))

(declare-fun bs!1534407 () Bool)

(assert (= bs!1534407 (and d!1939002 d!1938998)))

(assert (=> bs!1534407 (= lambda!337638 lambda!337634)))

(declare-fun bs!1534408 () Bool)

(assert (= bs!1534408 (and d!1939002 d!1939000)))

(assert (=> bs!1534408 (= lambda!337638 lambda!337637)))

(assert (=> d!1939002 (= (inv!83549 (h!70987 zl!343)) (forall!15240 (exprs!6005 (h!70987 zl!343)) lambda!337638))))

(declare-fun bs!1534409 () Bool)

(assert (= bs!1534409 d!1939002))

(declare-fun m!7019786 () Bool)

(assert (=> bs!1534409 m!7019786))

(assert (=> b!6184181 d!1939002))

(declare-fun d!1939004 () Bool)

(assert (=> d!1939004 (= (isEmpty!36519 (t!378171 zl!343)) ((_ is Nil!64539) (t!378171 zl!343)))))

(assert (=> b!6184182 d!1939004))

(assert (=> b!6184190 d!1938902))

(declare-fun d!1939006 () Bool)

(declare-fun nullableFct!2075 (Regex!16121) Bool)

(assert (=> d!1939006 (= (nullable!6114 (h!70986 (exprs!6005 (h!70987 zl!343)))) (nullableFct!2075 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun bs!1534410 () Bool)

(assert (= bs!1534410 d!1939006))

(declare-fun m!7019788 () Bool)

(assert (=> bs!1534410 m!7019788))

(assert (=> b!6184187 d!1939006))

(declare-fun b!6184933 () Bool)

(declare-fun e!3766905 () Bool)

(assert (=> b!6184933 (= e!3766905 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun b!6184934 () Bool)

(declare-fun e!3766906 () (InoxSet Context!11010))

(assert (=> b!6184934 (= e!3766906 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516861 () Bool)

(declare-fun call!516866 () (InoxSet Context!11010))

(assert (=> bm!516861 (= call!516866 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326)))))

(declare-fun d!1939008 () Bool)

(declare-fun c!1115423 () Bool)

(assert (=> d!1939008 (= c!1115423 e!3766905)))

(declare-fun res!2558932 () Bool)

(assert (=> d!1939008 (=> (not res!2558932) (not e!3766905))))

(assert (=> d!1939008 (= res!2558932 ((_ is Cons!64538) (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun e!3766904 () (InoxSet Context!11010))

(assert (=> d!1939008 (= (derivationStepZipperUp!1295 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))) (h!70988 s!2326)) e!3766904)))

(declare-fun b!6184935 () Bool)

(assert (=> b!6184935 (= e!3766904 ((_ map or) call!516866 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326))))))

(declare-fun b!6184936 () Bool)

(assert (=> b!6184936 (= e!3766904 e!3766906)))

(declare-fun c!1115422 () Bool)

(assert (=> b!6184936 (= c!1115422 ((_ is Cons!64538) (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun b!6184937 () Bool)

(assert (=> b!6184937 (= e!3766906 call!516866)))

(assert (= (and d!1939008 res!2558932) b!6184933))

(assert (= (and d!1939008 c!1115423) b!6184935))

(assert (= (and d!1939008 (not c!1115423)) b!6184936))

(assert (= (and b!6184936 c!1115422) b!6184937))

(assert (= (and b!6184936 (not c!1115422)) b!6184934))

(assert (= (or b!6184935 b!6184937) bm!516861))

(declare-fun m!7019790 () Bool)

(assert (=> b!6184933 m!7019790))

(declare-fun m!7019792 () Bool)

(assert (=> bm!516861 m!7019792))

(declare-fun m!7019794 () Bool)

(assert (=> b!6184935 m!7019794))

(assert (=> b!6184187 d!1939008))

(declare-fun d!1939010 () Bool)

(declare-fun dynLambda!25452 (Int Context!11010) (InoxSet Context!11010))

(assert (=> d!1939010 (= (flatMap!1626 z!1189 lambda!337585) (dynLambda!25452 lambda!337585 (h!70987 zl!343)))))

(declare-fun lt!2339370 () Unit!157747)

(declare-fun choose!45949 ((InoxSet Context!11010) Context!11010 Int) Unit!157747)

(assert (=> d!1939010 (= lt!2339370 (choose!45949 z!1189 (h!70987 zl!343) lambda!337585))))

(assert (=> d!1939010 (= z!1189 (store ((as const (Array Context!11010 Bool)) false) (h!70987 zl!343) true))))

(assert (=> d!1939010 (= (lemmaFlatMapOnSingletonSet!1152 z!1189 (h!70987 zl!343) lambda!337585) lt!2339370)))

(declare-fun b_lambda!235353 () Bool)

(assert (=> (not b_lambda!235353) (not d!1939010)))

(declare-fun bs!1534411 () Bool)

(assert (= bs!1534411 d!1939010))

(assert (=> bs!1534411 m!7019162))

(declare-fun m!7019796 () Bool)

(assert (=> bs!1534411 m!7019796))

(declare-fun m!7019798 () Bool)

(assert (=> bs!1534411 m!7019798))

(declare-fun m!7019800 () Bool)

(assert (=> bs!1534411 m!7019800))

(assert (=> b!6184187 d!1939010))

(declare-fun b!6184938 () Bool)

(declare-fun e!3766908 () Bool)

(assert (=> b!6184938 (= e!3766908 (nullable!6114 (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun b!6184939 () Bool)

(declare-fun e!3766909 () (InoxSet Context!11010))

(assert (=> b!6184939 (= e!3766909 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516862 () Bool)

(declare-fun call!516867 () (InoxSet Context!11010))

(assert (=> bm!516862 (= call!516867 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339239)) (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (h!70988 s!2326)))))

(declare-fun d!1939012 () Bool)

(declare-fun c!1115425 () Bool)

(assert (=> d!1939012 (= c!1115425 e!3766908)))

(declare-fun res!2558933 () Bool)

(assert (=> d!1939012 (=> (not res!2558933) (not e!3766908))))

(assert (=> d!1939012 (= res!2558933 ((_ is Cons!64538) (exprs!6005 lt!2339239)))))

(declare-fun e!3766907 () (InoxSet Context!11010))

(assert (=> d!1939012 (= (derivationStepZipperUp!1295 lt!2339239 (h!70988 s!2326)) e!3766907)))

(declare-fun b!6184940 () Bool)

(assert (=> b!6184940 (= e!3766907 ((_ map or) call!516867 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (h!70988 s!2326))))))

(declare-fun b!6184941 () Bool)

(assert (=> b!6184941 (= e!3766907 e!3766909)))

(declare-fun c!1115424 () Bool)

(assert (=> b!6184941 (= c!1115424 ((_ is Cons!64538) (exprs!6005 lt!2339239)))))

(declare-fun b!6184942 () Bool)

(assert (=> b!6184942 (= e!3766909 call!516867)))

(assert (= (and d!1939012 res!2558933) b!6184938))

(assert (= (and d!1939012 c!1115425) b!6184940))

(assert (= (and d!1939012 (not c!1115425)) b!6184941))

(assert (= (and b!6184941 c!1115424) b!6184942))

(assert (= (and b!6184941 (not c!1115424)) b!6184939))

(assert (= (or b!6184940 b!6184942) bm!516862))

(declare-fun m!7019802 () Bool)

(assert (=> b!6184938 m!7019802))

(declare-fun m!7019804 () Bool)

(assert (=> bm!516862 m!7019804))

(declare-fun m!7019806 () Bool)

(assert (=> b!6184940 m!7019806))

(assert (=> b!6184187 d!1939012))

(declare-fun b!6184943 () Bool)

(declare-fun e!3766911 () Bool)

(assert (=> b!6184943 (= e!3766911 (nullable!6114 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184944 () Bool)

(declare-fun e!3766912 () (InoxSet Context!11010))

(assert (=> b!6184944 (= e!3766912 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516863 () Bool)

(declare-fun call!516868 () (InoxSet Context!11010))

(assert (=> bm!516863 (= call!516868 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (h!70987 zl!343))) (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326)))))

(declare-fun d!1939014 () Bool)

(declare-fun c!1115427 () Bool)

(assert (=> d!1939014 (= c!1115427 e!3766911)))

(declare-fun res!2558934 () Bool)

(assert (=> d!1939014 (=> (not res!2558934) (not e!3766911))))

(assert (=> d!1939014 (= res!2558934 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343))))))

(declare-fun e!3766910 () (InoxSet Context!11010))

(assert (=> d!1939014 (= (derivationStepZipperUp!1295 (h!70987 zl!343) (h!70988 s!2326)) e!3766910)))

(declare-fun b!6184945 () Bool)

(assert (=> b!6184945 (= e!3766910 ((_ map or) call!516868 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326))))))

(declare-fun b!6184946 () Bool)

(assert (=> b!6184946 (= e!3766910 e!3766912)))

(declare-fun c!1115426 () Bool)

(assert (=> b!6184946 (= c!1115426 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343))))))

(declare-fun b!6184947 () Bool)

(assert (=> b!6184947 (= e!3766912 call!516868)))

(assert (= (and d!1939014 res!2558934) b!6184943))

(assert (= (and d!1939014 c!1115427) b!6184945))

(assert (= (and d!1939014 (not c!1115427)) b!6184946))

(assert (= (and b!6184946 c!1115426) b!6184947))

(assert (= (and b!6184946 (not c!1115426)) b!6184944))

(assert (= (or b!6184945 b!6184947) bm!516863))

(assert (=> b!6184943 m!7019158))

(declare-fun m!7019808 () Bool)

(assert (=> bm!516863 m!7019808))

(declare-fun m!7019810 () Bool)

(assert (=> b!6184945 m!7019810))

(assert (=> b!6184187 d!1939014))

(declare-fun c!1115440 () Bool)

(declare-fun bm!516876 () Bool)

(declare-fun call!516882 () List!64662)

(declare-fun call!516885 () (InoxSet Context!11010))

(assert (=> bm!516876 (= call!516885 (derivationStepZipperDown!1369 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))) (ite c!1115440 lt!2339239 (Context!11011 call!516882)) (h!70988 s!2326)))))

(declare-fun b!6184970 () Bool)

(declare-fun e!3766927 () (InoxSet Context!11010))

(declare-fun e!3766926 () (InoxSet Context!11010))

(assert (=> b!6184970 (= e!3766927 e!3766926)))

(assert (=> b!6184970 (= c!1115440 ((_ is Union!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun c!1115442 () Bool)

(declare-fun bm!516877 () Bool)

(declare-fun c!1115438 () Bool)

(declare-fun $colon$colon!1995 (List!64662 Regex!16121) List!64662)

(assert (=> bm!516877 (= call!516882 ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115438 c!1115442) (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70986 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6184971 () Bool)

(declare-fun e!3766930 () Bool)

(assert (=> b!6184971 (= c!1115438 e!3766930)))

(declare-fun res!2558937 () Bool)

(assert (=> b!6184971 (=> (not res!2558937) (not e!3766930))))

(assert (=> b!6184971 (= res!2558937 ((_ is Concat!24966) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun e!3766929 () (InoxSet Context!11010))

(assert (=> b!6184971 (= e!3766926 e!3766929)))

(declare-fun b!6184972 () Bool)

(assert (=> b!6184972 (= e!3766930 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6184973 () Bool)

(declare-fun call!516883 () (InoxSet Context!11010))

(assert (=> b!6184973 (= e!3766929 ((_ map or) call!516885 call!516883))))

(declare-fun bm!516878 () Bool)

(declare-fun call!516886 () (InoxSet Context!11010))

(assert (=> bm!516878 (= call!516883 call!516886)))

(declare-fun b!6184974 () Bool)

(declare-fun e!3766928 () (InoxSet Context!11010))

(declare-fun call!516884 () (InoxSet Context!11010))

(assert (=> b!6184974 (= e!3766928 call!516884)))

(declare-fun b!6184975 () Bool)

(assert (=> b!6184975 (= e!3766928 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516879 () Bool)

(declare-fun call!516881 () List!64662)

(assert (=> bm!516879 (= call!516881 call!516882)))

(declare-fun b!6184976 () Bool)

(assert (=> b!6184976 (= e!3766927 (store ((as const (Array Context!11010 Bool)) false) lt!2339239 true))))

(declare-fun b!6184978 () Bool)

(declare-fun c!1115441 () Bool)

(assert (=> b!6184978 (= c!1115441 ((_ is Star!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun e!3766925 () (InoxSet Context!11010))

(assert (=> b!6184978 (= e!3766925 e!3766928)))

(declare-fun b!6184979 () Bool)

(assert (=> b!6184979 (= e!3766925 call!516884)))

(declare-fun b!6184980 () Bool)

(assert (=> b!6184980 (= e!3766926 ((_ map or) call!516885 call!516886))))

(declare-fun d!1939016 () Bool)

(declare-fun c!1115439 () Bool)

(assert (=> d!1939016 (= c!1115439 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))) (= (c!1115220 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326))))))

(assert (=> d!1939016 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (h!70987 zl!343))) lt!2339239 (h!70988 s!2326)) e!3766927)))

(declare-fun b!6184977 () Bool)

(assert (=> b!6184977 (= e!3766929 e!3766925)))

(assert (=> b!6184977 (= c!1115442 ((_ is Concat!24966) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun bm!516880 () Bool)

(assert (=> bm!516880 (= call!516884 call!516883)))

(declare-fun bm!516881 () Bool)

(assert (=> bm!516881 (= call!516886 (derivationStepZipperDown!1369 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))) (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881)) (h!70988 s!2326)))))

(assert (= (and d!1939016 c!1115439) b!6184976))

(assert (= (and d!1939016 (not c!1115439)) b!6184970))

(assert (= (and b!6184970 c!1115440) b!6184980))

(assert (= (and b!6184970 (not c!1115440)) b!6184971))

(assert (= (and b!6184971 res!2558937) b!6184972))

(assert (= (and b!6184971 c!1115438) b!6184973))

(assert (= (and b!6184971 (not c!1115438)) b!6184977))

(assert (= (and b!6184977 c!1115442) b!6184979))

(assert (= (and b!6184977 (not c!1115442)) b!6184978))

(assert (= (and b!6184978 c!1115441) b!6184974))

(assert (= (and b!6184978 (not c!1115441)) b!6184975))

(assert (= (or b!6184979 b!6184974) bm!516879))

(assert (= (or b!6184979 b!6184974) bm!516880))

(assert (= (or b!6184973 bm!516879) bm!516877))

(assert (= (or b!6184973 bm!516880) bm!516878))

(assert (= (or b!6184980 bm!516878) bm!516881))

(assert (= (or b!6184980 b!6184973) bm!516876))

(declare-fun m!7019812 () Bool)

(assert (=> b!6184976 m!7019812))

(declare-fun m!7019814 () Bool)

(assert (=> b!6184972 m!7019814))

(declare-fun m!7019816 () Bool)

(assert (=> bm!516877 m!7019816))

(declare-fun m!7019818 () Bool)

(assert (=> bm!516876 m!7019818))

(declare-fun m!7019820 () Bool)

(assert (=> bm!516881 m!7019820))

(assert (=> b!6184187 d!1939016))

(declare-fun d!1939018 () Bool)

(declare-fun choose!45950 ((InoxSet Context!11010) Int) (InoxSet Context!11010))

(assert (=> d!1939018 (= (flatMap!1626 z!1189 lambda!337585) (choose!45950 z!1189 lambda!337585))))

(declare-fun bs!1534412 () Bool)

(assert (= bs!1534412 d!1939018))

(declare-fun m!7019822 () Bool)

(assert (=> bs!1534412 m!7019822))

(assert (=> b!6184187 d!1939018))

(assert (=> b!6184207 d!1938918))

(declare-fun d!1939020 () Bool)

(declare-fun lt!2339371 () Regex!16121)

(assert (=> d!1939020 (validRegex!7857 lt!2339371)))

(assert (=> d!1939020 (= lt!2339371 (generalisedUnion!1965 (unfocusZipperList!1542 lt!2339263)))))

(assert (=> d!1939020 (= (unfocusZipper!1863 lt!2339263) lt!2339371)))

(declare-fun bs!1534413 () Bool)

(assert (= bs!1534413 d!1939020))

(declare-fun m!7019824 () Bool)

(assert (=> bs!1534413 m!7019824))

(declare-fun m!7019826 () Bool)

(assert (=> bs!1534413 m!7019826))

(assert (=> bs!1534413 m!7019826))

(declare-fun m!7019828 () Bool)

(assert (=> bs!1534413 m!7019828))

(assert (=> b!6184206 d!1939020))

(declare-fun e!3766931 () Bool)

(declare-fun d!1939022 () Bool)

(assert (=> d!1939022 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339244) (t!378172 s!2326)) e!3766931)))

(declare-fun res!2558938 () Bool)

(assert (=> d!1939022 (=> res!2558938 e!3766931)))

(assert (=> d!1939022 (= res!2558938 (matchZipper!2133 lt!2339236 (t!378172 s!2326)))))

(declare-fun lt!2339372 () Unit!157747)

(assert (=> d!1939022 (= lt!2339372 (choose!45940 lt!2339236 lt!2339244 (t!378172 s!2326)))))

(assert (=> d!1939022 (= (lemmaZipperConcatMatchesSameAsBothZippers!952 lt!2339236 lt!2339244 (t!378172 s!2326)) lt!2339372)))

(declare-fun b!6184981 () Bool)

(assert (=> b!6184981 (= e!3766931 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1939022 (not res!2558938)) b!6184981))

(assert (=> d!1939022 m!7019106))

(assert (=> d!1939022 m!7019188))

(declare-fun m!7019830 () Bool)

(assert (=> d!1939022 m!7019830))

(assert (=> b!6184981 m!7019092))

(assert (=> b!6184186 d!1939022))

(declare-fun d!1939024 () Bool)

(declare-fun c!1115443 () Bool)

(assert (=> d!1939024 (= c!1115443 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3766932 () Bool)

(assert (=> d!1939024 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339244) (t!378172 s!2326)) e!3766932)))

(declare-fun b!6184982 () Bool)

(assert (=> b!6184982 (= e!3766932 (nullableZipper!1900 ((_ map or) lt!2339236 lt!2339244)))))

(declare-fun b!6184983 () Bool)

(assert (=> b!6184983 (= e!3766932 (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1939024 c!1115443) b!6184982))

(assert (= (and d!1939024 (not c!1115443)) b!6184983))

(assert (=> d!1939024 m!7019476))

(declare-fun m!7019832 () Bool)

(assert (=> b!6184982 m!7019832))

(assert (=> b!6184983 m!7019482))

(assert (=> b!6184983 m!7019482))

(declare-fun m!7019834 () Bool)

(assert (=> b!6184983 m!7019834))

(assert (=> b!6184983 m!7019489))

(assert (=> b!6184983 m!7019834))

(assert (=> b!6184983 m!7019489))

(declare-fun m!7019836 () Bool)

(assert (=> b!6184983 m!7019836))

(assert (=> b!6184186 d!1939024))

(declare-fun d!1939026 () Bool)

(declare-fun e!3766933 () Bool)

(assert (=> d!1939026 e!3766933))

(declare-fun res!2558939 () Bool)

(assert (=> d!1939026 (=> (not res!2558939) (not e!3766933))))

(declare-fun lt!2339373 () List!64663)

(assert (=> d!1939026 (= res!2558939 (noDuplicate!1963 lt!2339373))))

(assert (=> d!1939026 (= lt!2339373 (choose!45941 lt!2339243))))

(assert (=> d!1939026 (= (toList!9905 lt!2339243) lt!2339373)))

(declare-fun b!6184984 () Bool)

(assert (=> b!6184984 (= e!3766933 (= (content!12052 lt!2339373) lt!2339243))))

(assert (= (and d!1939026 res!2558939) b!6184984))

(declare-fun m!7019838 () Bool)

(assert (=> d!1939026 m!7019838))

(declare-fun m!7019840 () Bool)

(assert (=> d!1939026 m!7019840))

(declare-fun m!7019842 () Bool)

(assert (=> b!6184984 m!7019842))

(assert (=> b!6184215 d!1939026))

(assert (=> b!6184214 d!1938918))

(declare-fun bs!1534414 () Bool)

(declare-fun d!1939028 () Bool)

(assert (= bs!1534414 (and d!1939028 d!1938996)))

(declare-fun lambda!337639 () Int)

(assert (=> bs!1534414 (= lambda!337639 lambda!337633)))

(declare-fun bs!1534415 () Bool)

(assert (= bs!1534415 (and d!1939028 d!1938998)))

(assert (=> bs!1534415 (= lambda!337639 lambda!337634)))

(declare-fun bs!1534416 () Bool)

(assert (= bs!1534416 (and d!1939028 d!1939000)))

(assert (=> bs!1534416 (= lambda!337639 lambda!337637)))

(declare-fun bs!1534417 () Bool)

(assert (= bs!1534417 (and d!1939028 d!1939002)))

(assert (=> bs!1534417 (= lambda!337639 lambda!337638)))

(declare-fun b!6184985 () Bool)

(declare-fun e!3766938 () Bool)

(declare-fun e!3766935 () Bool)

(assert (=> b!6184985 (= e!3766938 e!3766935)))

(declare-fun c!1115445 () Bool)

(assert (=> b!6184985 (= c!1115445 (isEmpty!36520 (tail!11845 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184986 () Bool)

(declare-fun e!3766937 () Bool)

(assert (=> b!6184986 (= e!3766937 e!3766938)))

(declare-fun c!1115446 () Bool)

(assert (=> b!6184986 (= c!1115446 (isEmpty!36520 (exprs!6005 (h!70987 zl!343))))))

(declare-fun b!6184987 () Bool)

(declare-fun e!3766936 () Regex!16121)

(assert (=> b!6184987 (= e!3766936 (Concat!24966 (h!70986 (exprs!6005 (h!70987 zl!343))) (generalisedConcat!1718 (t!378170 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6184988 () Bool)

(declare-fun lt!2339374 () Regex!16121)

(assert (=> b!6184988 (= e!3766935 (= lt!2339374 (head!12760 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184989 () Bool)

(assert (=> b!6184989 (= e!3766936 EmptyExpr!16121)))

(assert (=> d!1939028 e!3766937))

(declare-fun res!2558941 () Bool)

(assert (=> d!1939028 (=> (not res!2558941) (not e!3766937))))

(assert (=> d!1939028 (= res!2558941 (validRegex!7857 lt!2339374))))

(declare-fun e!3766934 () Regex!16121)

(assert (=> d!1939028 (= lt!2339374 e!3766934)))

(declare-fun c!1115444 () Bool)

(declare-fun e!3766939 () Bool)

(assert (=> d!1939028 (= c!1115444 e!3766939)))

(declare-fun res!2558940 () Bool)

(assert (=> d!1939028 (=> (not res!2558940) (not e!3766939))))

(assert (=> d!1939028 (= res!2558940 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343))))))

(assert (=> d!1939028 (forall!15240 (exprs!6005 (h!70987 zl!343)) lambda!337639)))

(assert (=> d!1939028 (= (generalisedConcat!1718 (exprs!6005 (h!70987 zl!343))) lt!2339374)))

(declare-fun b!6184990 () Bool)

(assert (=> b!6184990 (= e!3766935 (isConcat!1059 lt!2339374))))

(declare-fun b!6184991 () Bool)

(assert (=> b!6184991 (= e!3766939 (isEmpty!36520 (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6184992 () Bool)

(assert (=> b!6184992 (= e!3766934 (h!70986 (exprs!6005 (h!70987 zl!343))))))

(declare-fun b!6184993 () Bool)

(assert (=> b!6184993 (= e!3766934 e!3766936)))

(declare-fun c!1115447 () Bool)

(assert (=> b!6184993 (= c!1115447 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343))))))

(declare-fun b!6184994 () Bool)

(assert (=> b!6184994 (= e!3766938 (isEmptyExpr!1536 lt!2339374))))

(assert (= (and d!1939028 res!2558940) b!6184991))

(assert (= (and d!1939028 c!1115444) b!6184992))

(assert (= (and d!1939028 (not c!1115444)) b!6184993))

(assert (= (and b!6184993 c!1115447) b!6184987))

(assert (= (and b!6184993 (not c!1115447)) b!6184989))

(assert (= (and d!1939028 res!2558941) b!6184986))

(assert (= (and b!6184986 c!1115446) b!6184994))

(assert (= (and b!6184986 (not c!1115446)) b!6184985))

(assert (= (and b!6184985 c!1115445) b!6184988))

(assert (= (and b!6184985 (not c!1115445)) b!6184990))

(declare-fun m!7019844 () Bool)

(assert (=> b!6184994 m!7019844))

(declare-fun m!7019846 () Bool)

(assert (=> b!6184987 m!7019846))

(declare-fun m!7019848 () Bool)

(assert (=> b!6184985 m!7019848))

(assert (=> b!6184985 m!7019848))

(declare-fun m!7019850 () Bool)

(assert (=> b!6184985 m!7019850))

(assert (=> b!6184991 m!7019148))

(declare-fun m!7019852 () Bool)

(assert (=> b!6184990 m!7019852))

(declare-fun m!7019854 () Bool)

(assert (=> b!6184986 m!7019854))

(declare-fun m!7019856 () Bool)

(assert (=> b!6184988 m!7019856))

(declare-fun m!7019858 () Bool)

(assert (=> d!1939028 m!7019858))

(declare-fun m!7019860 () Bool)

(assert (=> d!1939028 m!7019860))

(assert (=> b!6184194 d!1939028))

(declare-fun bs!1534418 () Bool)

(declare-fun d!1939030 () Bool)

(assert (= bs!1534418 (and d!1939030 d!1939000)))

(declare-fun lambda!337642 () Int)

(assert (=> bs!1534418 (= lambda!337642 lambda!337637)))

(declare-fun bs!1534419 () Bool)

(assert (= bs!1534419 (and d!1939030 d!1939002)))

(assert (=> bs!1534419 (= lambda!337642 lambda!337638)))

(declare-fun bs!1534420 () Bool)

(assert (= bs!1534420 (and d!1939030 d!1939028)))

(assert (=> bs!1534420 (= lambda!337642 lambda!337639)))

(declare-fun bs!1534421 () Bool)

(assert (= bs!1534421 (and d!1939030 d!1938998)))

(assert (=> bs!1534421 (= lambda!337642 lambda!337634)))

(declare-fun bs!1534422 () Bool)

(assert (= bs!1534422 (and d!1939030 d!1938996)))

(assert (=> bs!1534422 (= lambda!337642 lambda!337633)))

(declare-fun b!6185015 () Bool)

(declare-fun e!3766952 () Regex!16121)

(assert (=> b!6185015 (= e!3766952 EmptyLang!16121)))

(declare-fun b!6185016 () Bool)

(assert (=> b!6185016 (= e!3766952 (Union!16121 (h!70986 (unfocusZipperList!1542 zl!343)) (generalisedUnion!1965 (t!378170 (unfocusZipperList!1542 zl!343)))))))

(declare-fun e!3766957 () Bool)

(assert (=> d!1939030 e!3766957))

(declare-fun res!2558946 () Bool)

(assert (=> d!1939030 (=> (not res!2558946) (not e!3766957))))

(declare-fun lt!2339377 () Regex!16121)

(assert (=> d!1939030 (= res!2558946 (validRegex!7857 lt!2339377))))

(declare-fun e!3766954 () Regex!16121)

(assert (=> d!1939030 (= lt!2339377 e!3766954)))

(declare-fun c!1115456 () Bool)

(declare-fun e!3766955 () Bool)

(assert (=> d!1939030 (= c!1115456 e!3766955)))

(declare-fun res!2558947 () Bool)

(assert (=> d!1939030 (=> (not res!2558947) (not e!3766955))))

(assert (=> d!1939030 (= res!2558947 ((_ is Cons!64538) (unfocusZipperList!1542 zl!343)))))

(assert (=> d!1939030 (forall!15240 (unfocusZipperList!1542 zl!343) lambda!337642)))

(assert (=> d!1939030 (= (generalisedUnion!1965 (unfocusZipperList!1542 zl!343)) lt!2339377)))

(declare-fun b!6185017 () Bool)

(declare-fun e!3766956 () Bool)

(declare-fun e!3766953 () Bool)

(assert (=> b!6185017 (= e!3766956 e!3766953)))

(declare-fun c!1115459 () Bool)

(assert (=> b!6185017 (= c!1115459 (isEmpty!36520 (tail!11845 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185018 () Bool)

(assert (=> b!6185018 (= e!3766954 e!3766952)))

(declare-fun c!1115458 () Bool)

(assert (=> b!6185018 (= c!1115458 ((_ is Cons!64538) (unfocusZipperList!1542 zl!343)))))

(declare-fun b!6185019 () Bool)

(assert (=> b!6185019 (= e!3766953 (= lt!2339377 (head!12760 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185020 () Bool)

(assert (=> b!6185020 (= e!3766957 e!3766956)))

(declare-fun c!1115457 () Bool)

(assert (=> b!6185020 (= c!1115457 (isEmpty!36520 (unfocusZipperList!1542 zl!343)))))

(declare-fun b!6185021 () Bool)

(assert (=> b!6185021 (= e!3766955 (isEmpty!36520 (t!378170 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185022 () Bool)

(declare-fun isEmptyLang!1545 (Regex!16121) Bool)

(assert (=> b!6185022 (= e!3766956 (isEmptyLang!1545 lt!2339377))))

(declare-fun b!6185023 () Bool)

(assert (=> b!6185023 (= e!3766954 (h!70986 (unfocusZipperList!1542 zl!343)))))

(declare-fun b!6185024 () Bool)

(declare-fun isUnion!975 (Regex!16121) Bool)

(assert (=> b!6185024 (= e!3766953 (isUnion!975 lt!2339377))))

(assert (= (and d!1939030 res!2558947) b!6185021))

(assert (= (and d!1939030 c!1115456) b!6185023))

(assert (= (and d!1939030 (not c!1115456)) b!6185018))

(assert (= (and b!6185018 c!1115458) b!6185016))

(assert (= (and b!6185018 (not c!1115458)) b!6185015))

(assert (= (and d!1939030 res!2558946) b!6185020))

(assert (= (and b!6185020 c!1115457) b!6185022))

(assert (= (and b!6185020 (not c!1115457)) b!6185017))

(assert (= (and b!6185017 c!1115459) b!6185019))

(assert (= (and b!6185017 (not c!1115459)) b!6185024))

(declare-fun m!7019862 () Bool)

(assert (=> b!6185024 m!7019862))

(assert (=> b!6185019 m!7019202))

(declare-fun m!7019864 () Bool)

(assert (=> b!6185019 m!7019864))

(assert (=> b!6185020 m!7019202))

(declare-fun m!7019866 () Bool)

(assert (=> b!6185020 m!7019866))

(declare-fun m!7019868 () Bool)

(assert (=> b!6185021 m!7019868))

(declare-fun m!7019870 () Bool)

(assert (=> b!6185016 m!7019870))

(declare-fun m!7019872 () Bool)

(assert (=> d!1939030 m!7019872))

(assert (=> d!1939030 m!7019202))

(declare-fun m!7019874 () Bool)

(assert (=> d!1939030 m!7019874))

(declare-fun m!7019876 () Bool)

(assert (=> b!6185022 m!7019876))

(assert (=> b!6185017 m!7019202))

(declare-fun m!7019878 () Bool)

(assert (=> b!6185017 m!7019878))

(assert (=> b!6185017 m!7019878))

(declare-fun m!7019880 () Bool)

(assert (=> b!6185017 m!7019880))

(assert (=> b!6184213 d!1939030))

(declare-fun bs!1534423 () Bool)

(declare-fun d!1939032 () Bool)

(assert (= bs!1534423 (and d!1939032 d!1939030)))

(declare-fun lambda!337645 () Int)

(assert (=> bs!1534423 (= lambda!337645 lambda!337642)))

(declare-fun bs!1534424 () Bool)

(assert (= bs!1534424 (and d!1939032 d!1939000)))

(assert (=> bs!1534424 (= lambda!337645 lambda!337637)))

(declare-fun bs!1534425 () Bool)

(assert (= bs!1534425 (and d!1939032 d!1939002)))

(assert (=> bs!1534425 (= lambda!337645 lambda!337638)))

(declare-fun bs!1534426 () Bool)

(assert (= bs!1534426 (and d!1939032 d!1939028)))

(assert (=> bs!1534426 (= lambda!337645 lambda!337639)))

(declare-fun bs!1534427 () Bool)

(assert (= bs!1534427 (and d!1939032 d!1938998)))

(assert (=> bs!1534427 (= lambda!337645 lambda!337634)))

(declare-fun bs!1534428 () Bool)

(assert (= bs!1534428 (and d!1939032 d!1938996)))

(assert (=> bs!1534428 (= lambda!337645 lambda!337633)))

(declare-fun lt!2339380 () List!64662)

(assert (=> d!1939032 (forall!15240 lt!2339380 lambda!337645)))

(declare-fun e!3766960 () List!64662)

(assert (=> d!1939032 (= lt!2339380 e!3766960)))

(declare-fun c!1115462 () Bool)

(assert (=> d!1939032 (= c!1115462 ((_ is Cons!64539) zl!343))))

(assert (=> d!1939032 (= (unfocusZipperList!1542 zl!343) lt!2339380)))

(declare-fun b!6185029 () Bool)

(assert (=> b!6185029 (= e!3766960 (Cons!64538 (generalisedConcat!1718 (exprs!6005 (h!70987 zl!343))) (unfocusZipperList!1542 (t!378171 zl!343))))))

(declare-fun b!6185030 () Bool)

(assert (=> b!6185030 (= e!3766960 Nil!64538)))

(assert (= (and d!1939032 c!1115462) b!6185029))

(assert (= (and d!1939032 (not c!1115462)) b!6185030))

(declare-fun m!7019882 () Bool)

(assert (=> d!1939032 m!7019882))

(assert (=> b!6185029 m!7019166))

(declare-fun m!7019884 () Bool)

(assert (=> b!6185029 m!7019884))

(assert (=> b!6184213 d!1939032))

(declare-fun d!1939034 () Bool)

(declare-fun lt!2339381 () Int)

(assert (=> d!1939034 (>= lt!2339381 0)))

(declare-fun e!3766961 () Int)

(assert (=> d!1939034 (= lt!2339381 e!3766961)))

(declare-fun c!1115463 () Bool)

(assert (=> d!1939034 (= c!1115463 ((_ is Cons!64539) zl!343))))

(assert (=> d!1939034 (= (zipperDepthTotal!304 zl!343) lt!2339381)))

(declare-fun b!6185031 () Bool)

(assert (=> b!6185031 (= e!3766961 (+ (contextDepthTotal!276 (h!70987 zl!343)) (zipperDepthTotal!304 (t!378171 zl!343))))))

(declare-fun b!6185032 () Bool)

(assert (=> b!6185032 (= e!3766961 0)))

(assert (= (and d!1939034 c!1115463) b!6185031))

(assert (= (and d!1939034 (not c!1115463)) b!6185032))

(declare-fun m!7019886 () Bool)

(assert (=> b!6185031 m!7019886))

(declare-fun m!7019888 () Bool)

(assert (=> b!6185031 m!7019888))

(assert (=> b!6184191 d!1939034))

(declare-fun d!1939036 () Bool)

(declare-fun lt!2339382 () Int)

(assert (=> d!1939036 (>= lt!2339382 0)))

(declare-fun e!3766962 () Int)

(assert (=> d!1939036 (= lt!2339382 e!3766962)))

(declare-fun c!1115464 () Bool)

(assert (=> d!1939036 (= c!1115464 ((_ is Cons!64539) lt!2339227))))

(assert (=> d!1939036 (= (zipperDepthTotal!304 lt!2339227) lt!2339382)))

(declare-fun b!6185033 () Bool)

(assert (=> b!6185033 (= e!3766962 (+ (contextDepthTotal!276 (h!70987 lt!2339227)) (zipperDepthTotal!304 (t!378171 lt!2339227))))))

(declare-fun b!6185034 () Bool)

(assert (=> b!6185034 (= e!3766962 0)))

(assert (= (and d!1939036 c!1115464) b!6185033))

(assert (= (and d!1939036 (not c!1115464)) b!6185034))

(declare-fun m!7019890 () Bool)

(assert (=> b!6185033 m!7019890))

(declare-fun m!7019892 () Bool)

(assert (=> b!6185033 m!7019892))

(assert (=> b!6184191 d!1939036))

(declare-fun bm!516882 () Bool)

(declare-fun c!1115467 () Bool)

(declare-fun call!516891 () (InoxSet Context!11010))

(declare-fun call!516888 () List!64662)

(assert (=> bm!516882 (= call!516891 (derivationStepZipperDown!1369 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))) (ite c!1115467 lt!2339239 (Context!11011 call!516888)) (h!70988 s!2326)))))

(declare-fun b!6185035 () Bool)

(declare-fun e!3766965 () (InoxSet Context!11010))

(declare-fun e!3766964 () (InoxSet Context!11010))

(assert (=> b!6185035 (= e!3766965 e!3766964)))

(assert (=> b!6185035 (= c!1115467 ((_ is Union!16121) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun bm!516883 () Bool)

(declare-fun c!1115469 () Bool)

(declare-fun c!1115465 () Bool)

(assert (=> bm!516883 (= call!516888 ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115465 c!1115469) (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (regTwo!32755 (regOne!32754 r!7292)))))))

(declare-fun b!6185036 () Bool)

(declare-fun e!3766968 () Bool)

(assert (=> b!6185036 (= c!1115465 e!3766968)))

(declare-fun res!2558948 () Bool)

(assert (=> b!6185036 (=> (not res!2558948) (not e!3766968))))

(assert (=> b!6185036 (= res!2558948 ((_ is Concat!24966) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun e!3766967 () (InoxSet Context!11010))

(assert (=> b!6185036 (= e!3766964 e!3766967)))

(declare-fun b!6185037 () Bool)

(assert (=> b!6185037 (= e!3766968 (nullable!6114 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))))

(declare-fun b!6185038 () Bool)

(declare-fun call!516889 () (InoxSet Context!11010))

(assert (=> b!6185038 (= e!3766967 ((_ map or) call!516891 call!516889))))

(declare-fun bm!516884 () Bool)

(declare-fun call!516892 () (InoxSet Context!11010))

(assert (=> bm!516884 (= call!516889 call!516892)))

(declare-fun b!6185039 () Bool)

(declare-fun e!3766966 () (InoxSet Context!11010))

(declare-fun call!516890 () (InoxSet Context!11010))

(assert (=> b!6185039 (= e!3766966 call!516890)))

(declare-fun b!6185040 () Bool)

(assert (=> b!6185040 (= e!3766966 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516885 () Bool)

(declare-fun call!516887 () List!64662)

(assert (=> bm!516885 (= call!516887 call!516888)))

(declare-fun b!6185041 () Bool)

(assert (=> b!6185041 (= e!3766965 (store ((as const (Array Context!11010 Bool)) false) lt!2339239 true))))

(declare-fun b!6185043 () Bool)

(declare-fun c!1115468 () Bool)

(assert (=> b!6185043 (= c!1115468 ((_ is Star!16121) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun e!3766963 () (InoxSet Context!11010))

(assert (=> b!6185043 (= e!3766963 e!3766966)))

(declare-fun b!6185044 () Bool)

(assert (=> b!6185044 (= e!3766963 call!516890)))

(declare-fun b!6185045 () Bool)

(assert (=> b!6185045 (= e!3766964 ((_ map or) call!516891 call!516892))))

(declare-fun d!1939038 () Bool)

(declare-fun c!1115466 () Bool)

(assert (=> d!1939038 (= c!1115466 (and ((_ is ElementMatch!16121) (regTwo!32755 (regOne!32754 r!7292))) (= (c!1115220 (regTwo!32755 (regOne!32754 r!7292))) (h!70988 s!2326))))))

(assert (=> d!1939038 (= (derivationStepZipperDown!1369 (regTwo!32755 (regOne!32754 r!7292)) lt!2339239 (h!70988 s!2326)) e!3766965)))

(declare-fun b!6185042 () Bool)

(assert (=> b!6185042 (= e!3766967 e!3766963)))

(assert (=> b!6185042 (= c!1115469 ((_ is Concat!24966) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun bm!516886 () Bool)

(assert (=> bm!516886 (= call!516890 call!516889)))

(declare-fun bm!516887 () Bool)

(assert (=> bm!516887 (= call!516892 (derivationStepZipperDown!1369 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))) (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887)) (h!70988 s!2326)))))

(assert (= (and d!1939038 c!1115466) b!6185041))

(assert (= (and d!1939038 (not c!1115466)) b!6185035))

(assert (= (and b!6185035 c!1115467) b!6185045))

(assert (= (and b!6185035 (not c!1115467)) b!6185036))

(assert (= (and b!6185036 res!2558948) b!6185037))

(assert (= (and b!6185036 c!1115465) b!6185038))

(assert (= (and b!6185036 (not c!1115465)) b!6185042))

(assert (= (and b!6185042 c!1115469) b!6185044))

(assert (= (and b!6185042 (not c!1115469)) b!6185043))

(assert (= (and b!6185043 c!1115468) b!6185039))

(assert (= (and b!6185043 (not c!1115468)) b!6185040))

(assert (= (or b!6185044 b!6185039) bm!516885))

(assert (= (or b!6185044 b!6185039) bm!516886))

(assert (= (or b!6185038 bm!516885) bm!516883))

(assert (= (or b!6185038 bm!516886) bm!516884))

(assert (= (or b!6185045 bm!516884) bm!516887))

(assert (= (or b!6185045 b!6185038) bm!516882))

(assert (=> b!6185041 m!7019812))

(declare-fun m!7019894 () Bool)

(assert (=> b!6185037 m!7019894))

(declare-fun m!7019896 () Bool)

(assert (=> bm!516883 m!7019896))

(declare-fun m!7019898 () Bool)

(assert (=> bm!516882 m!7019898))

(declare-fun m!7019900 () Bool)

(assert (=> bm!516887 m!7019900))

(assert (=> b!6184211 d!1939038))

(declare-fun c!1115472 () Bool)

(declare-fun call!516894 () List!64662)

(declare-fun call!516897 () (InoxSet Context!11010))

(declare-fun bm!516888 () Bool)

(assert (=> bm!516888 (= call!516897 (derivationStepZipperDown!1369 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))) (ite c!1115472 lt!2339239 (Context!11011 call!516894)) (h!70988 s!2326)))))

(declare-fun b!6185046 () Bool)

(declare-fun e!3766971 () (InoxSet Context!11010))

(declare-fun e!3766970 () (InoxSet Context!11010))

(assert (=> b!6185046 (= e!3766971 e!3766970)))

(assert (=> b!6185046 (= c!1115472 ((_ is Union!16121) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun c!1115470 () Bool)

(declare-fun bm!516889 () Bool)

(declare-fun c!1115474 () Bool)

(assert (=> bm!516889 (= call!516894 ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115470 c!1115474) (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (regOne!32755 (regOne!32754 r!7292)))))))

(declare-fun b!6185047 () Bool)

(declare-fun e!3766974 () Bool)

(assert (=> b!6185047 (= c!1115470 e!3766974)))

(declare-fun res!2558949 () Bool)

(assert (=> b!6185047 (=> (not res!2558949) (not e!3766974))))

(assert (=> b!6185047 (= res!2558949 ((_ is Concat!24966) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun e!3766973 () (InoxSet Context!11010))

(assert (=> b!6185047 (= e!3766970 e!3766973)))

(declare-fun b!6185048 () Bool)

(assert (=> b!6185048 (= e!3766974 (nullable!6114 (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))))

(declare-fun b!6185049 () Bool)

(declare-fun call!516895 () (InoxSet Context!11010))

(assert (=> b!6185049 (= e!3766973 ((_ map or) call!516897 call!516895))))

(declare-fun bm!516890 () Bool)

(declare-fun call!516898 () (InoxSet Context!11010))

(assert (=> bm!516890 (= call!516895 call!516898)))

(declare-fun b!6185050 () Bool)

(declare-fun e!3766972 () (InoxSet Context!11010))

(declare-fun call!516896 () (InoxSet Context!11010))

(assert (=> b!6185050 (= e!3766972 call!516896)))

(declare-fun b!6185051 () Bool)

(assert (=> b!6185051 (= e!3766972 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516891 () Bool)

(declare-fun call!516893 () List!64662)

(assert (=> bm!516891 (= call!516893 call!516894)))

(declare-fun b!6185052 () Bool)

(assert (=> b!6185052 (= e!3766971 (store ((as const (Array Context!11010 Bool)) false) lt!2339239 true))))

(declare-fun b!6185054 () Bool)

(declare-fun c!1115473 () Bool)

(assert (=> b!6185054 (= c!1115473 ((_ is Star!16121) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun e!3766969 () (InoxSet Context!11010))

(assert (=> b!6185054 (= e!3766969 e!3766972)))

(declare-fun b!6185055 () Bool)

(assert (=> b!6185055 (= e!3766969 call!516896)))

(declare-fun b!6185056 () Bool)

(assert (=> b!6185056 (= e!3766970 ((_ map or) call!516897 call!516898))))

(declare-fun d!1939040 () Bool)

(declare-fun c!1115471 () Bool)

(assert (=> d!1939040 (= c!1115471 (and ((_ is ElementMatch!16121) (regOne!32755 (regOne!32754 r!7292))) (= (c!1115220 (regOne!32755 (regOne!32754 r!7292))) (h!70988 s!2326))))))

(assert (=> d!1939040 (= (derivationStepZipperDown!1369 (regOne!32755 (regOne!32754 r!7292)) lt!2339239 (h!70988 s!2326)) e!3766971)))

(declare-fun b!6185053 () Bool)

(assert (=> b!6185053 (= e!3766973 e!3766969)))

(assert (=> b!6185053 (= c!1115474 ((_ is Concat!24966) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun bm!516892 () Bool)

(assert (=> bm!516892 (= call!516896 call!516895)))

(declare-fun bm!516893 () Bool)

(assert (=> bm!516893 (= call!516898 (derivationStepZipperDown!1369 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))) (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893)) (h!70988 s!2326)))))

(assert (= (and d!1939040 c!1115471) b!6185052))

(assert (= (and d!1939040 (not c!1115471)) b!6185046))

(assert (= (and b!6185046 c!1115472) b!6185056))

(assert (= (and b!6185046 (not c!1115472)) b!6185047))

(assert (= (and b!6185047 res!2558949) b!6185048))

(assert (= (and b!6185047 c!1115470) b!6185049))

(assert (= (and b!6185047 (not c!1115470)) b!6185053))

(assert (= (and b!6185053 c!1115474) b!6185055))

(assert (= (and b!6185053 (not c!1115474)) b!6185054))

(assert (= (and b!6185054 c!1115473) b!6185050))

(assert (= (and b!6185054 (not c!1115473)) b!6185051))

(assert (= (or b!6185055 b!6185050) bm!516891))

(assert (= (or b!6185055 b!6185050) bm!516892))

(assert (= (or b!6185049 bm!516891) bm!516889))

(assert (= (or b!6185049 bm!516892) bm!516890))

(assert (= (or b!6185056 bm!516890) bm!516893))

(assert (= (or b!6185056 b!6185049) bm!516888))

(assert (=> b!6185052 m!7019812))

(declare-fun m!7019902 () Bool)

(assert (=> b!6185048 m!7019902))

(declare-fun m!7019904 () Bool)

(assert (=> bm!516889 m!7019904))

(declare-fun m!7019906 () Bool)

(assert (=> bm!516888 m!7019906))

(declare-fun m!7019908 () Bool)

(assert (=> bm!516893 m!7019908))

(assert (=> b!6184211 d!1939040))

(declare-fun d!1939042 () Bool)

(assert (=> d!1939042 (= (flatMap!1626 lt!2339243 lambda!337585) (dynLambda!25452 lambda!337585 lt!2339237))))

(declare-fun lt!2339383 () Unit!157747)

(assert (=> d!1939042 (= lt!2339383 (choose!45949 lt!2339243 lt!2339237 lambda!337585))))

(assert (=> d!1939042 (= lt!2339243 (store ((as const (Array Context!11010 Bool)) false) lt!2339237 true))))

(assert (=> d!1939042 (= (lemmaFlatMapOnSingletonSet!1152 lt!2339243 lt!2339237 lambda!337585) lt!2339383)))

(declare-fun b_lambda!235355 () Bool)

(assert (=> (not b_lambda!235355) (not d!1939042)))

(declare-fun bs!1534429 () Bool)

(assert (= bs!1534429 d!1939042))

(assert (=> bs!1534429 m!7019136))

(declare-fun m!7019910 () Bool)

(assert (=> bs!1534429 m!7019910))

(declare-fun m!7019912 () Bool)

(assert (=> bs!1534429 m!7019912))

(assert (=> bs!1534429 m!7019140))

(assert (=> b!6184212 d!1939042))

(declare-fun d!1939044 () Bool)

(declare-fun c!1115475 () Bool)

(assert (=> d!1939044 (= c!1115475 (isEmpty!36523 s!2326))))

(declare-fun e!3766975 () Bool)

(assert (=> d!1939044 (= (matchZipper!2133 z!1189 s!2326) e!3766975)))

(declare-fun b!6185057 () Bool)

(assert (=> b!6185057 (= e!3766975 (nullableZipper!1900 z!1189))))

(declare-fun b!6185058 () Bool)

(assert (=> b!6185058 (= e!3766975 (matchZipper!2133 (derivationStepZipper!2092 z!1189 (head!12759 s!2326)) (tail!11844 s!2326)))))

(assert (= (and d!1939044 c!1115475) b!6185057))

(assert (= (and d!1939044 (not c!1115475)) b!6185058))

(assert (=> d!1939044 m!7019654))

(declare-fun m!7019914 () Bool)

(assert (=> b!6185057 m!7019914))

(assert (=> b!6185058 m!7019666))

(assert (=> b!6185058 m!7019666))

(declare-fun m!7019916 () Bool)

(assert (=> b!6185058 m!7019916))

(assert (=> b!6185058 m!7019662))

(assert (=> b!6185058 m!7019916))

(assert (=> b!6185058 m!7019662))

(declare-fun m!7019918 () Bool)

(assert (=> b!6185058 m!7019918))

(assert (=> b!6184212 d!1939044))

(declare-fun d!1939046 () Bool)

(declare-fun c!1115476 () Bool)

(assert (=> d!1939046 (= c!1115476 (isEmpty!36523 s!2326))))

(declare-fun e!3766976 () Bool)

(assert (=> d!1939046 (= (matchZipper!2133 lt!2339250 s!2326) e!3766976)))

(declare-fun b!6185059 () Bool)

(assert (=> b!6185059 (= e!3766976 (nullableZipper!1900 lt!2339250))))

(declare-fun b!6185060 () Bool)

(assert (=> b!6185060 (= e!3766976 (matchZipper!2133 (derivationStepZipper!2092 lt!2339250 (head!12759 s!2326)) (tail!11844 s!2326)))))

(assert (= (and d!1939046 c!1115476) b!6185059))

(assert (= (and d!1939046 (not c!1115476)) b!6185060))

(assert (=> d!1939046 m!7019654))

(declare-fun m!7019920 () Bool)

(assert (=> b!6185059 m!7019920))

(assert (=> b!6185060 m!7019666))

(assert (=> b!6185060 m!7019666))

(declare-fun m!7019922 () Bool)

(assert (=> b!6185060 m!7019922))

(assert (=> b!6185060 m!7019662))

(assert (=> b!6185060 m!7019922))

(assert (=> b!6185060 m!7019662))

(declare-fun m!7019924 () Bool)

(assert (=> b!6185060 m!7019924))

(assert (=> b!6184212 d!1939046))

(declare-fun d!1939048 () Bool)

(assert (=> d!1939048 (= (flatMap!1626 lt!2339243 lambda!337585) (choose!45950 lt!2339243 lambda!337585))))

(declare-fun bs!1534430 () Bool)

(assert (= bs!1534430 d!1939048))

(declare-fun m!7019926 () Bool)

(assert (=> bs!1534430 m!7019926))

(assert (=> b!6184212 d!1939048))

(declare-fun d!1939050 () Bool)

(assert (=> d!1939050 (= (nullable!6114 (regOne!32755 (regOne!32754 r!7292))) (nullableFct!2075 (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun bs!1534431 () Bool)

(assert (= bs!1534431 d!1939050))

(declare-fun m!7019928 () Bool)

(assert (=> bs!1534431 m!7019928))

(assert (=> b!6184212 d!1939050))

(declare-fun d!1939052 () Bool)

(assert (=> d!1939052 (= (flatMap!1626 lt!2339250 lambda!337585) (dynLambda!25452 lambda!337585 lt!2339232))))

(declare-fun lt!2339384 () Unit!157747)

(assert (=> d!1939052 (= lt!2339384 (choose!45949 lt!2339250 lt!2339232 lambda!337585))))

(assert (=> d!1939052 (= lt!2339250 (store ((as const (Array Context!11010 Bool)) false) lt!2339232 true))))

(assert (=> d!1939052 (= (lemmaFlatMapOnSingletonSet!1152 lt!2339250 lt!2339232 lambda!337585) lt!2339384)))

(declare-fun b_lambda!235357 () Bool)

(assert (=> (not b_lambda!235357) (not d!1939052)))

(declare-fun bs!1534432 () Bool)

(assert (= bs!1534432 d!1939052))

(assert (=> bs!1534432 m!7019128))

(declare-fun m!7019930 () Bool)

(assert (=> bs!1534432 m!7019930))

(declare-fun m!7019932 () Bool)

(assert (=> bs!1534432 m!7019932))

(assert (=> bs!1534432 m!7019126))

(assert (=> b!6184212 d!1939052))

(declare-fun d!1939054 () Bool)

(assert (=> d!1939054 (= (nullable!6114 (regTwo!32755 (regOne!32754 r!7292))) (nullableFct!2075 (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun bs!1534433 () Bool)

(assert (= bs!1534433 d!1939054))

(declare-fun m!7019934 () Bool)

(assert (=> bs!1534433 m!7019934))

(assert (=> b!6184212 d!1939054))

(declare-fun d!1939056 () Bool)

(assert (=> d!1939056 (= (flatMap!1626 lt!2339250 lambda!337585) (choose!45950 lt!2339250 lambda!337585))))

(declare-fun bs!1534434 () Bool)

(assert (= bs!1534434 d!1939056))

(declare-fun m!7019936 () Bool)

(assert (=> bs!1534434 m!7019936))

(assert (=> b!6184212 d!1939056))

(declare-fun b!6185061 () Bool)

(declare-fun e!3766978 () Bool)

(assert (=> b!6185061 (= e!3766978 (nullable!6114 (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun b!6185062 () Bool)

(declare-fun e!3766979 () (InoxSet Context!11010))

(assert (=> b!6185062 (= e!3766979 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516894 () Bool)

(declare-fun call!516899 () (InoxSet Context!11010))

(assert (=> bm!516894 (= call!516899 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339232)) (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (h!70988 s!2326)))))

(declare-fun d!1939058 () Bool)

(declare-fun c!1115478 () Bool)

(assert (=> d!1939058 (= c!1115478 e!3766978)))

(declare-fun res!2558950 () Bool)

(assert (=> d!1939058 (=> (not res!2558950) (not e!3766978))))

(assert (=> d!1939058 (= res!2558950 ((_ is Cons!64538) (exprs!6005 lt!2339232)))))

(declare-fun e!3766977 () (InoxSet Context!11010))

(assert (=> d!1939058 (= (derivationStepZipperUp!1295 lt!2339232 (h!70988 s!2326)) e!3766977)))

(declare-fun b!6185063 () Bool)

(assert (=> b!6185063 (= e!3766977 ((_ map or) call!516899 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (h!70988 s!2326))))))

(declare-fun b!6185064 () Bool)

(assert (=> b!6185064 (= e!3766977 e!3766979)))

(declare-fun c!1115477 () Bool)

(assert (=> b!6185064 (= c!1115477 ((_ is Cons!64538) (exprs!6005 lt!2339232)))))

(declare-fun b!6185065 () Bool)

(assert (=> b!6185065 (= e!3766979 call!516899)))

(assert (= (and d!1939058 res!2558950) b!6185061))

(assert (= (and d!1939058 c!1115478) b!6185063))

(assert (= (and d!1939058 (not c!1115478)) b!6185064))

(assert (= (and b!6185064 c!1115477) b!6185065))

(assert (= (and b!6185064 (not c!1115477)) b!6185062))

(assert (= (or b!6185063 b!6185065) bm!516894))

(declare-fun m!7019938 () Bool)

(assert (=> b!6185061 m!7019938))

(declare-fun m!7019940 () Bool)

(assert (=> bm!516894 m!7019940))

(declare-fun m!7019942 () Bool)

(assert (=> b!6185063 m!7019942))

(assert (=> b!6184212 d!1939058))

(declare-fun b!6185066 () Bool)

(declare-fun e!3766981 () Bool)

(assert (=> b!6185066 (= e!3766981 (nullable!6114 (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun b!6185067 () Bool)

(declare-fun e!3766982 () (InoxSet Context!11010))

(assert (=> b!6185067 (= e!3766982 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516895 () Bool)

(declare-fun call!516900 () (InoxSet Context!11010))

(assert (=> bm!516895 (= call!516900 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339237)) (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (h!70988 s!2326)))))

(declare-fun d!1939060 () Bool)

(declare-fun c!1115480 () Bool)

(assert (=> d!1939060 (= c!1115480 e!3766981)))

(declare-fun res!2558951 () Bool)

(assert (=> d!1939060 (=> (not res!2558951) (not e!3766981))))

(assert (=> d!1939060 (= res!2558951 ((_ is Cons!64538) (exprs!6005 lt!2339237)))))

(declare-fun e!3766980 () (InoxSet Context!11010))

(assert (=> d!1939060 (= (derivationStepZipperUp!1295 lt!2339237 (h!70988 s!2326)) e!3766980)))

(declare-fun b!6185068 () Bool)

(assert (=> b!6185068 (= e!3766980 ((_ map or) call!516900 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (h!70988 s!2326))))))

(declare-fun b!6185069 () Bool)

(assert (=> b!6185069 (= e!3766980 e!3766982)))

(declare-fun c!1115479 () Bool)

(assert (=> b!6185069 (= c!1115479 ((_ is Cons!64538) (exprs!6005 lt!2339237)))))

(declare-fun b!6185070 () Bool)

(assert (=> b!6185070 (= e!3766982 call!516900)))

(assert (= (and d!1939060 res!2558951) b!6185066))

(assert (= (and d!1939060 c!1115480) b!6185068))

(assert (= (and d!1939060 (not c!1115480)) b!6185069))

(assert (= (and b!6185069 c!1115479) b!6185070))

(assert (= (and b!6185069 (not c!1115479)) b!6185067))

(assert (= (or b!6185068 b!6185070) bm!516895))

(declare-fun m!7019944 () Bool)

(assert (=> b!6185066 m!7019944))

(declare-fun m!7019946 () Bool)

(assert (=> bm!516895 m!7019946))

(declare-fun m!7019948 () Bool)

(assert (=> b!6185068 m!7019948))

(assert (=> b!6184212 d!1939060))

(declare-fun b!6185083 () Bool)

(declare-fun e!3766985 () Bool)

(declare-fun tp!1726542 () Bool)

(assert (=> b!6185083 (= e!3766985 tp!1726542)))

(declare-fun b!6185084 () Bool)

(declare-fun tp!1726541 () Bool)

(declare-fun tp!1726540 () Bool)

(assert (=> b!6185084 (= e!3766985 (and tp!1726541 tp!1726540))))

(declare-fun b!6185082 () Bool)

(declare-fun tp!1726539 () Bool)

(declare-fun tp!1726543 () Bool)

(assert (=> b!6185082 (= e!3766985 (and tp!1726539 tp!1726543))))

(declare-fun b!6185081 () Bool)

(assert (=> b!6185081 (= e!3766985 tp_is_empty!41495)))

(assert (=> b!6184195 (= tp!1726470 e!3766985)))

(assert (= (and b!6184195 ((_ is ElementMatch!16121) (regOne!32755 r!7292))) b!6185081))

(assert (= (and b!6184195 ((_ is Concat!24966) (regOne!32755 r!7292))) b!6185082))

(assert (= (and b!6184195 ((_ is Star!16121) (regOne!32755 r!7292))) b!6185083))

(assert (= (and b!6184195 ((_ is Union!16121) (regOne!32755 r!7292))) b!6185084))

(declare-fun b!6185087 () Bool)

(declare-fun e!3766986 () Bool)

(declare-fun tp!1726547 () Bool)

(assert (=> b!6185087 (= e!3766986 tp!1726547)))

(declare-fun b!6185088 () Bool)

(declare-fun tp!1726546 () Bool)

(declare-fun tp!1726545 () Bool)

(assert (=> b!6185088 (= e!3766986 (and tp!1726546 tp!1726545))))

(declare-fun b!6185086 () Bool)

(declare-fun tp!1726544 () Bool)

(declare-fun tp!1726548 () Bool)

(assert (=> b!6185086 (= e!3766986 (and tp!1726544 tp!1726548))))

(declare-fun b!6185085 () Bool)

(assert (=> b!6185085 (= e!3766986 tp_is_empty!41495)))

(assert (=> b!6184195 (= tp!1726462 e!3766986)))

(assert (= (and b!6184195 ((_ is ElementMatch!16121) (regTwo!32755 r!7292))) b!6185085))

(assert (= (and b!6184195 ((_ is Concat!24966) (regTwo!32755 r!7292))) b!6185086))

(assert (= (and b!6184195 ((_ is Star!16121) (regTwo!32755 r!7292))) b!6185087))

(assert (= (and b!6184195 ((_ is Union!16121) (regTwo!32755 r!7292))) b!6185088))

(declare-fun b!6185093 () Bool)

(declare-fun e!3766989 () Bool)

(declare-fun tp!1726551 () Bool)

(assert (=> b!6185093 (= e!3766989 (and tp_is_empty!41495 tp!1726551))))

(assert (=> b!6184216 (= tp!1726467 e!3766989)))

(assert (= (and b!6184216 ((_ is Cons!64540) (t!378172 s!2326))) b!6185093))

(declare-fun b!6185098 () Bool)

(declare-fun e!3766992 () Bool)

(declare-fun tp!1726556 () Bool)

(declare-fun tp!1726557 () Bool)

(assert (=> b!6185098 (= e!3766992 (and tp!1726556 tp!1726557))))

(assert (=> b!6184209 (= tp!1726465 e!3766992)))

(assert (= (and b!6184209 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343)))) b!6185098))

(declare-fun b!6185101 () Bool)

(declare-fun e!3766993 () Bool)

(declare-fun tp!1726561 () Bool)

(assert (=> b!6185101 (= e!3766993 tp!1726561)))

(declare-fun b!6185102 () Bool)

(declare-fun tp!1726560 () Bool)

(declare-fun tp!1726559 () Bool)

(assert (=> b!6185102 (= e!3766993 (and tp!1726560 tp!1726559))))

(declare-fun b!6185100 () Bool)

(declare-fun tp!1726558 () Bool)

(declare-fun tp!1726562 () Bool)

(assert (=> b!6185100 (= e!3766993 (and tp!1726558 tp!1726562))))

(declare-fun b!6185099 () Bool)

(assert (=> b!6185099 (= e!3766993 tp_is_empty!41495)))

(assert (=> b!6184202 (= tp!1726468 e!3766993)))

(assert (= (and b!6184202 ((_ is ElementMatch!16121) (reg!16450 r!7292))) b!6185099))

(assert (= (and b!6184202 ((_ is Concat!24966) (reg!16450 r!7292))) b!6185100))

(assert (= (and b!6184202 ((_ is Star!16121) (reg!16450 r!7292))) b!6185101))

(assert (= (and b!6184202 ((_ is Union!16121) (reg!16450 r!7292))) b!6185102))

(declare-fun b!6185105 () Bool)

(declare-fun e!3766994 () Bool)

(declare-fun tp!1726566 () Bool)

(assert (=> b!6185105 (= e!3766994 tp!1726566)))

(declare-fun b!6185106 () Bool)

(declare-fun tp!1726565 () Bool)

(declare-fun tp!1726564 () Bool)

(assert (=> b!6185106 (= e!3766994 (and tp!1726565 tp!1726564))))

(declare-fun b!6185104 () Bool)

(declare-fun tp!1726563 () Bool)

(declare-fun tp!1726567 () Bool)

(assert (=> b!6185104 (= e!3766994 (and tp!1726563 tp!1726567))))

(declare-fun b!6185103 () Bool)

(assert (=> b!6185103 (= e!3766994 tp_is_empty!41495)))

(assert (=> b!6184192 (= tp!1726463 e!3766994)))

(assert (= (and b!6184192 ((_ is ElementMatch!16121) (regOne!32754 r!7292))) b!6185103))

(assert (= (and b!6184192 ((_ is Concat!24966) (regOne!32754 r!7292))) b!6185104))

(assert (= (and b!6184192 ((_ is Star!16121) (regOne!32754 r!7292))) b!6185105))

(assert (= (and b!6184192 ((_ is Union!16121) (regOne!32754 r!7292))) b!6185106))

(declare-fun b!6185109 () Bool)

(declare-fun e!3766995 () Bool)

(declare-fun tp!1726571 () Bool)

(assert (=> b!6185109 (= e!3766995 tp!1726571)))

(declare-fun b!6185110 () Bool)

(declare-fun tp!1726570 () Bool)

(declare-fun tp!1726569 () Bool)

(assert (=> b!6185110 (= e!3766995 (and tp!1726570 tp!1726569))))

(declare-fun b!6185108 () Bool)

(declare-fun tp!1726568 () Bool)

(declare-fun tp!1726572 () Bool)

(assert (=> b!6185108 (= e!3766995 (and tp!1726568 tp!1726572))))

(declare-fun b!6185107 () Bool)

(assert (=> b!6185107 (= e!3766995 tp_is_empty!41495)))

(assert (=> b!6184192 (= tp!1726466 e!3766995)))

(assert (= (and b!6184192 ((_ is ElementMatch!16121) (regTwo!32754 r!7292))) b!6185107))

(assert (= (and b!6184192 ((_ is Concat!24966) (regTwo!32754 r!7292))) b!6185108))

(assert (= (and b!6184192 ((_ is Star!16121) (regTwo!32754 r!7292))) b!6185109))

(assert (= (and b!6184192 ((_ is Union!16121) (regTwo!32754 r!7292))) b!6185110))

(declare-fun b!6185111 () Bool)

(declare-fun e!3766996 () Bool)

(declare-fun tp!1726573 () Bool)

(declare-fun tp!1726574 () Bool)

(assert (=> b!6185111 (= e!3766996 (and tp!1726573 tp!1726574))))

(assert (=> b!6184193 (= tp!1726469 e!3766996)))

(assert (= (and b!6184193 ((_ is Cons!64538) (exprs!6005 setElem!41932))) b!6185111))

(declare-fun condSetEmpty!41938 () Bool)

(assert (=> setNonEmpty!41932 (= condSetEmpty!41938 (= setRest!41932 ((as const (Array Context!11010 Bool)) false)))))

(declare-fun setRes!41938 () Bool)

(assert (=> setNonEmpty!41932 (= tp!1726464 setRes!41938)))

(declare-fun setIsEmpty!41938 () Bool)

(assert (=> setIsEmpty!41938 setRes!41938))

(declare-fun tp!1726579 () Bool)

(declare-fun setNonEmpty!41938 () Bool)

(declare-fun setElem!41938 () Context!11010)

(declare-fun e!3766999 () Bool)

(assert (=> setNonEmpty!41938 (= setRes!41938 (and tp!1726579 (inv!83549 setElem!41938) e!3766999))))

(declare-fun setRest!41938 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41938 (= setRest!41932 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41938 true) setRest!41938))))

(declare-fun b!6185116 () Bool)

(declare-fun tp!1726580 () Bool)

(assert (=> b!6185116 (= e!3766999 tp!1726580)))

(assert (= (and setNonEmpty!41932 condSetEmpty!41938) setIsEmpty!41938))

(assert (= (and setNonEmpty!41932 (not condSetEmpty!41938)) setNonEmpty!41938))

(assert (= setNonEmpty!41938 b!6185116))

(declare-fun m!7019950 () Bool)

(assert (=> setNonEmpty!41938 m!7019950))

(declare-fun b!6185124 () Bool)

(declare-fun e!3767005 () Bool)

(declare-fun tp!1726585 () Bool)

(assert (=> b!6185124 (= e!3767005 tp!1726585)))

(declare-fun e!3767004 () Bool)

(declare-fun tp!1726586 () Bool)

(declare-fun b!6185123 () Bool)

(assert (=> b!6185123 (= e!3767004 (and (inv!83549 (h!70987 (t!378171 zl!343))) e!3767005 tp!1726586))))

(assert (=> b!6184181 (= tp!1726461 e!3767004)))

(assert (= b!6185123 b!6185124))

(assert (= (and b!6184181 ((_ is Cons!64539) (t!378171 zl!343))) b!6185123))

(declare-fun m!7019952 () Bool)

(assert (=> b!6185123 m!7019952))

(declare-fun b_lambda!235359 () Bool)

(assert (= b_lambda!235353 (or b!6184187 b_lambda!235359)))

(declare-fun bs!1534435 () Bool)

(declare-fun d!1939062 () Bool)

(assert (= bs!1534435 (and d!1939062 b!6184187)))

(assert (=> bs!1534435 (= (dynLambda!25452 lambda!337585 (h!70987 zl!343)) (derivationStepZipperUp!1295 (h!70987 zl!343) (h!70988 s!2326)))))

(assert (=> bs!1534435 m!7019156))

(assert (=> d!1939010 d!1939062))

(declare-fun b_lambda!235361 () Bool)

(assert (= b_lambda!235357 (or b!6184187 b_lambda!235361)))

(declare-fun bs!1534436 () Bool)

(declare-fun d!1939064 () Bool)

(assert (= bs!1534436 (and d!1939064 b!6184187)))

(assert (=> bs!1534436 (= (dynLambda!25452 lambda!337585 lt!2339232) (derivationStepZipperUp!1295 lt!2339232 (h!70988 s!2326)))))

(assert (=> bs!1534436 m!7019142))

(assert (=> d!1939052 d!1939064))

(declare-fun b_lambda!235363 () Bool)

(assert (= b_lambda!235355 (or b!6184187 b_lambda!235363)))

(declare-fun bs!1534437 () Bool)

(declare-fun d!1939066 () Bool)

(assert (= bs!1534437 (and d!1939066 b!6184187)))

(assert (=> bs!1534437 (= (dynLambda!25452 lambda!337585 lt!2339237) (derivationStepZipperUp!1295 lt!2339237 (h!70988 s!2326)))))

(assert (=> bs!1534437 m!7019132))

(assert (=> d!1939042 d!1939066))

(check-sat (not d!1938968) (not d!1938910) (not b!6184983) (not bm!516894) (not d!1939006) (not d!1938986) (not b!6184612) (not bm!516895) (not d!1938902) (not b!6185083) (not d!1939026) (not d!1938984) (not bm!516893) (not b!6184748) (not bm!516887) (not b!6185033) (not b!6184598) (not d!1939054) (not b!6185021) (not b!6184984) (not b!6184573) (not b!6185087) (not b!6184611) (not d!1939000) (not b!6184987) (not b!6185016) (not b!6185017) (not bm!516845) (not d!1938916) (not b!6184873) (not d!1939056) (not bm!516855) (not bm!516841) (not bm!516853) (not b!6184922) (not b!6185093) (not b!6185066) (not b!6185022) (not bm!516856) (not b!6185084) (not b!6184787) (not b!6184912) (not b!6184981) (not d!1939024) (not bs!1534437) (not d!1938994) (not b!6185068) (not d!1939018) (not b!6184940) (not b!6184903) (not d!1939052) (not b!6185106) (not b!6185098) (not d!1938928) (not b!6184818) (not b!6184784) (not b!6185104) (not bs!1534435) (not b!6184746) (not bm!516876) (not b!6185100) (not d!1939030) (not d!1938972) (not b!6184982) (not b!6185116) tp_is_empty!41495 (not b!6184988) (not d!1938890) (not b!6184908) (not b!6185029) (not b!6185037) (not d!1938918) (not b!6184906) (not b!6184861) (not d!1939046) (not bm!516883) (not b!6184793) (not b!6185088) (not b!6184972) (not b!6185109) (not b!6184779) (not d!1938982) (not b!6184875) (not b!6184572) (not b!6185019) (not bm!516888) (not b!6185059) (not b!6184916) (not b!6184919) (not d!1939010) (not b!6184863) (not d!1938894) (not d!1939042) (not b!6184905) (not b!6184869) (not b!6185105) (not b!6184783) (not d!1939048) (not b!6184817) (not b!6184603) (not b!6184812) (not b!6184943) (not d!1939050) (not d!1938900) (not d!1939002) (not b!6185082) (not b!6184781) (not d!1938904) (not b!6184574) (not b!6185110) (not b!6184570) (not b!6184918) (not b!6184615) (not d!1938970) (not b!6185123) (not b!6185124) (not d!1939020) (not b!6185101) (not b!6185108) (not b!6184933) (not bm!516889) (not b!6184866) (not b_lambda!235361) (not d!1938932) (not b!6184571) (not bm!516863) (not b!6184904) (not d!1938990) (not b!6184599) (not b!6184991) (not d!1939032) (not b!6184608) (not b!6185111) (not b!6184600) (not b!6185031) (not b!6184985) (not b!6185063) (not d!1938976) (not b!6185060) (not b!6184792) (not b!6185061) (not b!6184791) (not b!6185020) (not b!6184586) (not b!6184646) (not b!6184815) (not setNonEmpty!41938) (not b!6184914) (not d!1939028) (not b!6184909) (not d!1938936) (not b!6184569) (not bm!516857) (not b!6184938) (not b!6184935) (not b!6184813) (not d!1938980) (not d!1938998) (not b!6185048) (not b!6185086) (not d!1938978) (not b!6185058) (not b!6184990) (not b_lambda!235363) (not b!6184604) (not b!6184994) (not b!6184986) (not d!1939022) (not b!6185102) (not b!6185024) (not b!6184852) (not bm!516842) (not bm!516881) (not b!6185057) (not b_lambda!235359) (not d!1938996) (not bm!516861) (not b!6184945) (not bm!516877) (not b!6184913) (not bm!516852) (not bm!516862) (not bs!1534436) (not b!6184865) (not b!6184819) (not d!1938922) (not b!6184915) (not d!1939044) (not b!6184607) (not b!6184548) (not bm!516882))
(check-sat)
(get-model)

(declare-fun b!6185125 () Bool)

(declare-fun e!3767010 () Bool)

(declare-fun e!3767006 () Bool)

(assert (=> b!6185125 (= e!3767010 e!3767006)))

(declare-fun c!1115481 () Bool)

(assert (=> b!6185125 (= c!1115481 ((_ is Union!16121) lt!2339367))))

(declare-fun b!6185126 () Bool)

(declare-fun e!3767007 () Bool)

(assert (=> b!6185126 (= e!3767010 e!3767007)))

(declare-fun res!2558952 () Bool)

(assert (=> b!6185126 (= res!2558952 (not (nullable!6114 (reg!16450 lt!2339367))))))

(assert (=> b!6185126 (=> (not res!2558952) (not e!3767007))))

(declare-fun b!6185127 () Bool)

(declare-fun call!516903 () Bool)

(assert (=> b!6185127 (= e!3767007 call!516903)))

(declare-fun bm!516896 () Bool)

(declare-fun call!516901 () Bool)

(assert (=> bm!516896 (= call!516901 (validRegex!7857 (ite c!1115481 (regOne!32755 lt!2339367) (regOne!32754 lt!2339367))))))

(declare-fun b!6185128 () Bool)

(declare-fun e!3767011 () Bool)

(declare-fun e!3767012 () Bool)

(assert (=> b!6185128 (= e!3767011 e!3767012)))

(declare-fun res!2558956 () Bool)

(assert (=> b!6185128 (=> (not res!2558956) (not e!3767012))))

(assert (=> b!6185128 (= res!2558956 call!516901)))

(declare-fun d!1939068 () Bool)

(declare-fun res!2558955 () Bool)

(declare-fun e!3767009 () Bool)

(assert (=> d!1939068 (=> res!2558955 e!3767009)))

(assert (=> d!1939068 (= res!2558955 ((_ is ElementMatch!16121) lt!2339367))))

(assert (=> d!1939068 (= (validRegex!7857 lt!2339367) e!3767009)))

(declare-fun b!6185129 () Bool)

(declare-fun call!516902 () Bool)

(assert (=> b!6185129 (= e!3767012 call!516902)))

(declare-fun c!1115482 () Bool)

(declare-fun bm!516897 () Bool)

(assert (=> bm!516897 (= call!516903 (validRegex!7857 (ite c!1115482 (reg!16450 lt!2339367) (ite c!1115481 (regTwo!32755 lt!2339367) (regTwo!32754 lt!2339367)))))))

(declare-fun b!6185130 () Bool)

(declare-fun res!2558953 () Bool)

(declare-fun e!3767008 () Bool)

(assert (=> b!6185130 (=> (not res!2558953) (not e!3767008))))

(assert (=> b!6185130 (= res!2558953 call!516901)))

(assert (=> b!6185130 (= e!3767006 e!3767008)))

(declare-fun bm!516898 () Bool)

(assert (=> bm!516898 (= call!516902 call!516903)))

(declare-fun b!6185131 () Bool)

(declare-fun res!2558954 () Bool)

(assert (=> b!6185131 (=> res!2558954 e!3767011)))

(assert (=> b!6185131 (= res!2558954 (not ((_ is Concat!24966) lt!2339367)))))

(assert (=> b!6185131 (= e!3767006 e!3767011)))

(declare-fun b!6185132 () Bool)

(assert (=> b!6185132 (= e!3767008 call!516902)))

(declare-fun b!6185133 () Bool)

(assert (=> b!6185133 (= e!3767009 e!3767010)))

(assert (=> b!6185133 (= c!1115482 ((_ is Star!16121) lt!2339367))))

(assert (= (and d!1939068 (not res!2558955)) b!6185133))

(assert (= (and b!6185133 c!1115482) b!6185126))

(assert (= (and b!6185133 (not c!1115482)) b!6185125))

(assert (= (and b!6185126 res!2558952) b!6185127))

(assert (= (and b!6185125 c!1115481) b!6185130))

(assert (= (and b!6185125 (not c!1115481)) b!6185131))

(assert (= (and b!6185130 res!2558953) b!6185132))

(assert (= (and b!6185131 (not res!2558954)) b!6185128))

(assert (= (and b!6185128 res!2558956) b!6185129))

(assert (= (or b!6185132 b!6185129) bm!516898))

(assert (= (or b!6185130 b!6185128) bm!516896))

(assert (= (or b!6185127 bm!516898) bm!516897))

(declare-fun m!7019954 () Bool)

(assert (=> b!6185126 m!7019954))

(declare-fun m!7019956 () Bool)

(assert (=> bm!516896 m!7019956))

(declare-fun m!7019958 () Bool)

(assert (=> bm!516897 m!7019958))

(assert (=> d!1938998 d!1939068))

(declare-fun d!1939070 () Bool)

(declare-fun res!2558961 () Bool)

(declare-fun e!3767017 () Bool)

(assert (=> d!1939070 (=> res!2558961 e!3767017)))

(assert (=> d!1939070 (= res!2558961 ((_ is Nil!64538) lt!2339241))))

(assert (=> d!1939070 (= (forall!15240 lt!2339241 lambda!337634) e!3767017)))

(declare-fun b!6185138 () Bool)

(declare-fun e!3767018 () Bool)

(assert (=> b!6185138 (= e!3767017 e!3767018)))

(declare-fun res!2558962 () Bool)

(assert (=> b!6185138 (=> (not res!2558962) (not e!3767018))))

(declare-fun dynLambda!25453 (Int Regex!16121) Bool)

(assert (=> b!6185138 (= res!2558962 (dynLambda!25453 lambda!337634 (h!70986 lt!2339241)))))

(declare-fun b!6185139 () Bool)

(assert (=> b!6185139 (= e!3767018 (forall!15240 (t!378170 lt!2339241) lambda!337634))))

(assert (= (and d!1939070 (not res!2558961)) b!6185138))

(assert (= (and b!6185138 res!2558962) b!6185139))

(declare-fun b_lambda!235365 () Bool)

(assert (=> (not b_lambda!235365) (not b!6185138)))

(declare-fun m!7019960 () Bool)

(assert (=> b!6185138 m!7019960))

(declare-fun m!7019962 () Bool)

(assert (=> b!6185139 m!7019962))

(assert (=> d!1938998 d!1939070))

(declare-fun d!1939072 () Bool)

(assert (=> d!1939072 (= (nullable!6114 (h!70986 (exprs!6005 lt!2339237))) (nullableFct!2075 (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun bs!1534438 () Bool)

(assert (= bs!1534438 d!1939072))

(declare-fun m!7019964 () Bool)

(assert (=> bs!1534438 m!7019964))

(assert (=> b!6185066 d!1939072))

(assert (=> b!6184615 d!1938918))

(declare-fun d!1939074 () Bool)

(assert (=> d!1939074 (= (isEmpty!36523 (tail!11844 s!2326)) ((_ is Nil!64540) (tail!11844 s!2326)))))

(assert (=> b!6184783 d!1939074))

(declare-fun d!1939076 () Bool)

(assert (=> d!1939076 (= (tail!11844 s!2326) (t!378172 s!2326))))

(assert (=> b!6184783 d!1939076))

(declare-fun bs!1534439 () Bool)

(declare-fun d!1939078 () Bool)

(assert (= bs!1534439 (and d!1939078 d!1939030)))

(declare-fun lambda!337646 () Int)

(assert (=> bs!1534439 (= lambda!337646 lambda!337642)))

(declare-fun bs!1534440 () Bool)

(assert (= bs!1534440 (and d!1939078 d!1939032)))

(assert (=> bs!1534440 (= lambda!337646 lambda!337645)))

(declare-fun bs!1534441 () Bool)

(assert (= bs!1534441 (and d!1939078 d!1939000)))

(assert (=> bs!1534441 (= lambda!337646 lambda!337637)))

(declare-fun bs!1534442 () Bool)

(assert (= bs!1534442 (and d!1939078 d!1939002)))

(assert (=> bs!1534442 (= lambda!337646 lambda!337638)))

(declare-fun bs!1534443 () Bool)

(assert (= bs!1534443 (and d!1939078 d!1939028)))

(assert (=> bs!1534443 (= lambda!337646 lambda!337639)))

(declare-fun bs!1534444 () Bool)

(assert (= bs!1534444 (and d!1939078 d!1938998)))

(assert (=> bs!1534444 (= lambda!337646 lambda!337634)))

(declare-fun bs!1534445 () Bool)

(assert (= bs!1534445 (and d!1939078 d!1938996)))

(assert (=> bs!1534445 (= lambda!337646 lambda!337633)))

(declare-fun b!6185140 () Bool)

(declare-fun e!3767019 () Regex!16121)

(assert (=> b!6185140 (= e!3767019 EmptyLang!16121)))

(declare-fun b!6185141 () Bool)

(assert (=> b!6185141 (= e!3767019 (Union!16121 (h!70986 (t!378170 (unfocusZipperList!1542 zl!343))) (generalisedUnion!1965 (t!378170 (t!378170 (unfocusZipperList!1542 zl!343))))))))

(declare-fun e!3767024 () Bool)

(assert (=> d!1939078 e!3767024))

(declare-fun res!2558963 () Bool)

(assert (=> d!1939078 (=> (not res!2558963) (not e!3767024))))

(declare-fun lt!2339385 () Regex!16121)

(assert (=> d!1939078 (= res!2558963 (validRegex!7857 lt!2339385))))

(declare-fun e!3767021 () Regex!16121)

(assert (=> d!1939078 (= lt!2339385 e!3767021)))

(declare-fun c!1115483 () Bool)

(declare-fun e!3767022 () Bool)

(assert (=> d!1939078 (= c!1115483 e!3767022)))

(declare-fun res!2558964 () Bool)

(assert (=> d!1939078 (=> (not res!2558964) (not e!3767022))))

(assert (=> d!1939078 (= res!2558964 ((_ is Cons!64538) (t!378170 (unfocusZipperList!1542 zl!343))))))

(assert (=> d!1939078 (forall!15240 (t!378170 (unfocusZipperList!1542 zl!343)) lambda!337646)))

(assert (=> d!1939078 (= (generalisedUnion!1965 (t!378170 (unfocusZipperList!1542 zl!343))) lt!2339385)))

(declare-fun b!6185142 () Bool)

(declare-fun e!3767023 () Bool)

(declare-fun e!3767020 () Bool)

(assert (=> b!6185142 (= e!3767023 e!3767020)))

(declare-fun c!1115486 () Bool)

(assert (=> b!6185142 (= c!1115486 (isEmpty!36520 (tail!11845 (t!378170 (unfocusZipperList!1542 zl!343)))))))

(declare-fun b!6185143 () Bool)

(assert (=> b!6185143 (= e!3767021 e!3767019)))

(declare-fun c!1115485 () Bool)

(assert (=> b!6185143 (= c!1115485 ((_ is Cons!64538) (t!378170 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185144 () Bool)

(assert (=> b!6185144 (= e!3767020 (= lt!2339385 (head!12760 (t!378170 (unfocusZipperList!1542 zl!343)))))))

(declare-fun b!6185145 () Bool)

(assert (=> b!6185145 (= e!3767024 e!3767023)))

(declare-fun c!1115484 () Bool)

(assert (=> b!6185145 (= c!1115484 (isEmpty!36520 (t!378170 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185146 () Bool)

(assert (=> b!6185146 (= e!3767022 (isEmpty!36520 (t!378170 (t!378170 (unfocusZipperList!1542 zl!343)))))))

(declare-fun b!6185147 () Bool)

(assert (=> b!6185147 (= e!3767023 (isEmptyLang!1545 lt!2339385))))

(declare-fun b!6185148 () Bool)

(assert (=> b!6185148 (= e!3767021 (h!70986 (t!378170 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185149 () Bool)

(assert (=> b!6185149 (= e!3767020 (isUnion!975 lt!2339385))))

(assert (= (and d!1939078 res!2558964) b!6185146))

(assert (= (and d!1939078 c!1115483) b!6185148))

(assert (= (and d!1939078 (not c!1115483)) b!6185143))

(assert (= (and b!6185143 c!1115485) b!6185141))

(assert (= (and b!6185143 (not c!1115485)) b!6185140))

(assert (= (and d!1939078 res!2558963) b!6185145))

(assert (= (and b!6185145 c!1115484) b!6185147))

(assert (= (and b!6185145 (not c!1115484)) b!6185142))

(assert (= (and b!6185142 c!1115486) b!6185144))

(assert (= (and b!6185142 (not c!1115486)) b!6185149))

(declare-fun m!7019966 () Bool)

(assert (=> b!6185149 m!7019966))

(declare-fun m!7019968 () Bool)

(assert (=> b!6185144 m!7019968))

(assert (=> b!6185145 m!7019868))

(declare-fun m!7019970 () Bool)

(assert (=> b!6185146 m!7019970))

(declare-fun m!7019972 () Bool)

(assert (=> b!6185141 m!7019972))

(declare-fun m!7019974 () Bool)

(assert (=> d!1939078 m!7019974))

(declare-fun m!7019976 () Bool)

(assert (=> d!1939078 m!7019976))

(declare-fun m!7019978 () Bool)

(assert (=> b!6185147 m!7019978))

(declare-fun m!7019980 () Bool)

(assert (=> b!6185142 m!7019980))

(assert (=> b!6185142 m!7019980))

(declare-fun m!7019982 () Bool)

(assert (=> b!6185142 m!7019982))

(assert (=> b!6185016 d!1939078))

(declare-fun d!1939080 () Bool)

(assert (=> d!1939080 (= (nullable!6114 (h!70986 (exprs!6005 lt!2339232))) (nullableFct!2075 (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun bs!1534446 () Bool)

(assert (= bs!1534446 d!1939080))

(declare-fun m!7019984 () Bool)

(assert (=> bs!1534446 m!7019984))

(assert (=> b!6185061 d!1939080))

(declare-fun d!1939082 () Bool)

(assert (=> d!1939082 (= (head!12759 s!2326) (h!70988 s!2326))))

(assert (=> b!6184779 d!1939082))

(declare-fun d!1939084 () Bool)

(declare-fun c!1115487 () Bool)

(assert (=> d!1939084 (= c!1115487 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun e!3767025 () Bool)

(assert (=> d!1939084 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339243 (head!12759 s!2326)) (tail!11844 s!2326)) e!3767025)))

(declare-fun b!6185150 () Bool)

(assert (=> b!6185150 (= e!3767025 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339243 (head!12759 s!2326))))))

(declare-fun b!6185151 () Bool)

(assert (=> b!6185151 (= e!3767025 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339243 (head!12759 s!2326)) (head!12759 (tail!11844 s!2326))) (tail!11844 (tail!11844 s!2326))))))

(assert (= (and d!1939084 c!1115487) b!6185150))

(assert (= (and d!1939084 (not c!1115487)) b!6185151))

(assert (=> d!1939084 m!7019662))

(assert (=> d!1939084 m!7019664))

(assert (=> b!6185150 m!7019678))

(declare-fun m!7019986 () Bool)

(assert (=> b!6185150 m!7019986))

(assert (=> b!6185151 m!7019662))

(declare-fun m!7019988 () Bool)

(assert (=> b!6185151 m!7019988))

(assert (=> b!6185151 m!7019678))

(assert (=> b!6185151 m!7019988))

(declare-fun m!7019990 () Bool)

(assert (=> b!6185151 m!7019990))

(assert (=> b!6185151 m!7019662))

(declare-fun m!7019992 () Bool)

(assert (=> b!6185151 m!7019992))

(assert (=> b!6185151 m!7019990))

(assert (=> b!6185151 m!7019992))

(declare-fun m!7019994 () Bool)

(assert (=> b!6185151 m!7019994))

(assert (=> b!6184793 d!1939084))

(declare-fun bs!1534447 () Bool)

(declare-fun d!1939086 () Bool)

(assert (= bs!1534447 (and d!1939086 b!6184187)))

(declare-fun lambda!337649 () Int)

(assert (=> bs!1534447 (= (= (head!12759 s!2326) (h!70988 s!2326)) (= lambda!337649 lambda!337585))))

(assert (=> d!1939086 true))

(assert (=> d!1939086 (= (derivationStepZipper!2092 lt!2339243 (head!12759 s!2326)) (flatMap!1626 lt!2339243 lambda!337649))))

(declare-fun bs!1534448 () Bool)

(assert (= bs!1534448 d!1939086))

(declare-fun m!7019996 () Bool)

(assert (=> bs!1534448 m!7019996))

(assert (=> b!6184793 d!1939086))

(assert (=> b!6184793 d!1939082))

(assert (=> b!6184793 d!1939076))

(declare-fun d!1939088 () Bool)

(declare-fun c!1115490 () Bool)

(assert (=> d!1939088 (= c!1115490 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun e!3767026 () Bool)

(assert (=> d!1939088 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339250 (head!12759 s!2326)) (tail!11844 s!2326)) e!3767026)))

(declare-fun b!6185154 () Bool)

(assert (=> b!6185154 (= e!3767026 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339250 (head!12759 s!2326))))))

(declare-fun b!6185155 () Bool)

(assert (=> b!6185155 (= e!3767026 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339250 (head!12759 s!2326)) (head!12759 (tail!11844 s!2326))) (tail!11844 (tail!11844 s!2326))))))

(assert (= (and d!1939088 c!1115490) b!6185154))

(assert (= (and d!1939088 (not c!1115490)) b!6185155))

(assert (=> d!1939088 m!7019662))

(assert (=> d!1939088 m!7019664))

(assert (=> b!6185154 m!7019922))

(declare-fun m!7019998 () Bool)

(assert (=> b!6185154 m!7019998))

(assert (=> b!6185155 m!7019662))

(assert (=> b!6185155 m!7019988))

(assert (=> b!6185155 m!7019922))

(assert (=> b!6185155 m!7019988))

(declare-fun m!7020000 () Bool)

(assert (=> b!6185155 m!7020000))

(assert (=> b!6185155 m!7019662))

(assert (=> b!6185155 m!7019992))

(assert (=> b!6185155 m!7020000))

(assert (=> b!6185155 m!7019992))

(declare-fun m!7020002 () Bool)

(assert (=> b!6185155 m!7020002))

(assert (=> b!6185060 d!1939088))

(declare-fun bs!1534449 () Bool)

(declare-fun d!1939090 () Bool)

(assert (= bs!1534449 (and d!1939090 b!6184187)))

(declare-fun lambda!337650 () Int)

(assert (=> bs!1534449 (= (= (head!12759 s!2326) (h!70988 s!2326)) (= lambda!337650 lambda!337585))))

(declare-fun bs!1534450 () Bool)

(assert (= bs!1534450 (and d!1939090 d!1939086)))

(assert (=> bs!1534450 (= lambda!337650 lambda!337649)))

(assert (=> d!1939090 true))

(assert (=> d!1939090 (= (derivationStepZipper!2092 lt!2339250 (head!12759 s!2326)) (flatMap!1626 lt!2339250 lambda!337650))))

(declare-fun bs!1534451 () Bool)

(assert (= bs!1534451 d!1939090))

(declare-fun m!7020004 () Bool)

(assert (=> bs!1534451 m!7020004))

(assert (=> b!6185060 d!1939090))

(assert (=> b!6185060 d!1939082))

(assert (=> b!6185060 d!1939076))

(declare-fun b!6185156 () Bool)

(declare-fun e!3767031 () Bool)

(declare-fun e!3767029 () Bool)

(assert (=> b!6185156 (= e!3767031 e!3767029)))

(declare-fun c!1115491 () Bool)

(assert (=> b!6185156 (= c!1115491 ((_ is EmptyLang!16121) (derivativeStep!4838 lt!2339234 (head!12759 s!2326))))))

(declare-fun bm!516899 () Bool)

(declare-fun call!516904 () Bool)

(assert (=> bm!516899 (= call!516904 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun b!6185157 () Bool)

(declare-fun e!3767032 () Bool)

(assert (=> b!6185157 (= e!3767032 (not (= (head!12759 (tail!11844 s!2326)) (c!1115220 (derivativeStep!4838 lt!2339234 (head!12759 s!2326))))))))

(declare-fun b!6185158 () Bool)

(declare-fun e!3767028 () Bool)

(assert (=> b!6185158 (= e!3767028 e!3767032)))

(declare-fun res!2558971 () Bool)

(assert (=> b!6185158 (=> res!2558971 e!3767032)))

(assert (=> b!6185158 (= res!2558971 call!516904)))

(declare-fun b!6185159 () Bool)

(declare-fun e!3767027 () Bool)

(assert (=> b!6185159 (= e!3767027 (= (head!12759 (tail!11844 s!2326)) (c!1115220 (derivativeStep!4838 lt!2339234 (head!12759 s!2326)))))))

(declare-fun d!1939092 () Bool)

(assert (=> d!1939092 e!3767031))

(declare-fun c!1115492 () Bool)

(assert (=> d!1939092 (= c!1115492 ((_ is EmptyExpr!16121) (derivativeStep!4838 lt!2339234 (head!12759 s!2326))))))

(declare-fun lt!2339386 () Bool)

(declare-fun e!3767033 () Bool)

(assert (=> d!1939092 (= lt!2339386 e!3767033)))

(declare-fun c!1115493 () Bool)

(assert (=> d!1939092 (= c!1115493 (isEmpty!36523 (tail!11844 s!2326)))))

(assert (=> d!1939092 (validRegex!7857 (derivativeStep!4838 lt!2339234 (head!12759 s!2326)))))

(assert (=> d!1939092 (= (matchR!8304 (derivativeStep!4838 lt!2339234 (head!12759 s!2326)) (tail!11844 s!2326)) lt!2339386)))

(declare-fun b!6185160 () Bool)

(declare-fun res!2558966 () Bool)

(declare-fun e!3767030 () Bool)

(assert (=> b!6185160 (=> res!2558966 e!3767030)))

(assert (=> b!6185160 (= res!2558966 (not ((_ is ElementMatch!16121) (derivativeStep!4838 lt!2339234 (head!12759 s!2326)))))))

(assert (=> b!6185160 (= e!3767029 e!3767030)))

(declare-fun b!6185161 () Bool)

(declare-fun res!2558972 () Bool)

(assert (=> b!6185161 (=> (not res!2558972) (not e!3767027))))

(assert (=> b!6185161 (= res!2558972 (isEmpty!36523 (tail!11844 (tail!11844 s!2326))))))

(declare-fun b!6185162 () Bool)

(declare-fun res!2558969 () Bool)

(assert (=> b!6185162 (=> res!2558969 e!3767032)))

(assert (=> b!6185162 (= res!2558969 (not (isEmpty!36523 (tail!11844 (tail!11844 s!2326)))))))

(declare-fun b!6185163 () Bool)

(assert (=> b!6185163 (= e!3767031 (= lt!2339386 call!516904))))

(declare-fun b!6185164 () Bool)

(declare-fun res!2558965 () Bool)

(assert (=> b!6185164 (=> res!2558965 e!3767030)))

(assert (=> b!6185164 (= res!2558965 e!3767027)))

(declare-fun res!2558968 () Bool)

(assert (=> b!6185164 (=> (not res!2558968) (not e!3767027))))

(assert (=> b!6185164 (= res!2558968 lt!2339386)))

(declare-fun b!6185165 () Bool)

(assert (=> b!6185165 (= e!3767033 (matchR!8304 (derivativeStep!4838 (derivativeStep!4838 lt!2339234 (head!12759 s!2326)) (head!12759 (tail!11844 s!2326))) (tail!11844 (tail!11844 s!2326))))))

(declare-fun b!6185166 () Bool)

(assert (=> b!6185166 (= e!3767029 (not lt!2339386))))

(declare-fun b!6185167 () Bool)

(declare-fun res!2558970 () Bool)

(assert (=> b!6185167 (=> (not res!2558970) (not e!3767027))))

(assert (=> b!6185167 (= res!2558970 (not call!516904))))

(declare-fun b!6185168 () Bool)

(assert (=> b!6185168 (= e!3767030 e!3767028)))

(declare-fun res!2558967 () Bool)

(assert (=> b!6185168 (=> (not res!2558967) (not e!3767028))))

(assert (=> b!6185168 (= res!2558967 (not lt!2339386))))

(declare-fun b!6185169 () Bool)

(assert (=> b!6185169 (= e!3767033 (nullable!6114 (derivativeStep!4838 lt!2339234 (head!12759 s!2326))))))

(assert (= (and d!1939092 c!1115493) b!6185169))

(assert (= (and d!1939092 (not c!1115493)) b!6185165))

(assert (= (and d!1939092 c!1115492) b!6185163))

(assert (= (and d!1939092 (not c!1115492)) b!6185156))

(assert (= (and b!6185156 c!1115491) b!6185166))

(assert (= (and b!6185156 (not c!1115491)) b!6185160))

(assert (= (and b!6185160 (not res!2558966)) b!6185164))

(assert (= (and b!6185164 res!2558968) b!6185167))

(assert (= (and b!6185167 res!2558970) b!6185161))

(assert (= (and b!6185161 res!2558972) b!6185159))

(assert (= (and b!6185164 (not res!2558965)) b!6185168))

(assert (= (and b!6185168 res!2558967) b!6185158))

(assert (= (and b!6185158 (not res!2558971)) b!6185162))

(assert (= (and b!6185162 (not res!2558969)) b!6185157))

(assert (= (or b!6185163 b!6185158 b!6185167) bm!516899))

(assert (=> d!1939092 m!7019662))

(assert (=> d!1939092 m!7019664))

(assert (=> d!1939092 m!7019730))

(declare-fun m!7020006 () Bool)

(assert (=> d!1939092 m!7020006))

(assert (=> bm!516899 m!7019662))

(assert (=> bm!516899 m!7019664))

(assert (=> b!6185162 m!7019662))

(assert (=> b!6185162 m!7019992))

(assert (=> b!6185162 m!7019992))

(declare-fun m!7020008 () Bool)

(assert (=> b!6185162 m!7020008))

(assert (=> b!6185165 m!7019662))

(assert (=> b!6185165 m!7019988))

(assert (=> b!6185165 m!7019730))

(assert (=> b!6185165 m!7019988))

(declare-fun m!7020010 () Bool)

(assert (=> b!6185165 m!7020010))

(assert (=> b!6185165 m!7019662))

(assert (=> b!6185165 m!7019992))

(assert (=> b!6185165 m!7020010))

(assert (=> b!6185165 m!7019992))

(declare-fun m!7020012 () Bool)

(assert (=> b!6185165 m!7020012))

(assert (=> b!6185169 m!7019730))

(declare-fun m!7020014 () Bool)

(assert (=> b!6185169 m!7020014))

(assert (=> b!6185159 m!7019662))

(assert (=> b!6185159 m!7019988))

(assert (=> b!6185161 m!7019662))

(assert (=> b!6185161 m!7019992))

(assert (=> b!6185161 m!7019992))

(assert (=> b!6185161 m!7020008))

(assert (=> b!6185157 m!7019662))

(assert (=> b!6185157 m!7019988))

(assert (=> b!6184869 d!1939092))

(declare-fun b!6185190 () Bool)

(declare-fun e!3767047 () Regex!16121)

(declare-fun call!516916 () Regex!16121)

(assert (=> b!6185190 (= e!3767047 (Concat!24966 call!516916 lt!2339234))))

(declare-fun b!6185191 () Bool)

(declare-fun e!3767045 () Regex!16121)

(assert (=> b!6185191 (= e!3767045 e!3767047)))

(declare-fun c!1115505 () Bool)

(assert (=> b!6185191 (= c!1115505 ((_ is Star!16121) lt!2339234))))

(declare-fun d!1939094 () Bool)

(declare-fun lt!2339389 () Regex!16121)

(assert (=> d!1939094 (validRegex!7857 lt!2339389)))

(declare-fun e!3767044 () Regex!16121)

(assert (=> d!1939094 (= lt!2339389 e!3767044)))

(declare-fun c!1115508 () Bool)

(assert (=> d!1939094 (= c!1115508 (or ((_ is EmptyExpr!16121) lt!2339234) ((_ is EmptyLang!16121) lt!2339234)))))

(assert (=> d!1939094 (validRegex!7857 lt!2339234)))

(assert (=> d!1939094 (= (derivativeStep!4838 lt!2339234 (head!12759 s!2326)) lt!2339389)))

(declare-fun bm!516908 () Bool)

(declare-fun call!516915 () Regex!16121)

(assert (=> bm!516908 (= call!516916 call!516915)))

(declare-fun b!6185192 () Bool)

(declare-fun e!3767048 () Regex!16121)

(assert (=> b!6185192 (= e!3767044 e!3767048)))

(declare-fun c!1115507 () Bool)

(assert (=> b!6185192 (= c!1115507 ((_ is ElementMatch!16121) lt!2339234))))

(declare-fun b!6185193 () Bool)

(declare-fun call!516914 () Regex!16121)

(assert (=> b!6185193 (= e!3767045 (Union!16121 call!516915 call!516914))))

(declare-fun b!6185194 () Bool)

(assert (=> b!6185194 (= e!3767044 EmptyLang!16121)))

(declare-fun b!6185195 () Bool)

(assert (=> b!6185195 (= e!3767048 (ite (= (head!12759 s!2326) (c!1115220 lt!2339234)) EmptyExpr!16121 EmptyLang!16121))))

(declare-fun b!6185196 () Bool)

(declare-fun c!1115504 () Bool)

(assert (=> b!6185196 (= c!1115504 (nullable!6114 (regOne!32754 lt!2339234)))))

(declare-fun e!3767046 () Regex!16121)

(assert (=> b!6185196 (= e!3767047 e!3767046)))

(declare-fun b!6185197 () Bool)

(declare-fun call!516913 () Regex!16121)

(assert (=> b!6185197 (= e!3767046 (Union!16121 (Concat!24966 call!516913 (regTwo!32754 lt!2339234)) EmptyLang!16121))))

(declare-fun b!6185198 () Bool)

(assert (=> b!6185198 (= e!3767046 (Union!16121 (Concat!24966 call!516916 (regTwo!32754 lt!2339234)) call!516913))))

(declare-fun bm!516909 () Bool)

(assert (=> bm!516909 (= call!516913 call!516914)))

(declare-fun c!1115506 () Bool)

(declare-fun bm!516910 () Bool)

(assert (=> bm!516910 (= call!516914 (derivativeStep!4838 (ite c!1115506 (regTwo!32755 lt!2339234) (ite c!1115504 (regTwo!32754 lt!2339234) (regOne!32754 lt!2339234))) (head!12759 s!2326)))))

(declare-fun b!6185199 () Bool)

(assert (=> b!6185199 (= c!1115506 ((_ is Union!16121) lt!2339234))))

(assert (=> b!6185199 (= e!3767048 e!3767045)))

(declare-fun bm!516911 () Bool)

(assert (=> bm!516911 (= call!516915 (derivativeStep!4838 (ite c!1115506 (regOne!32755 lt!2339234) (ite c!1115505 (reg!16450 lt!2339234) (regOne!32754 lt!2339234))) (head!12759 s!2326)))))

(assert (= (and d!1939094 c!1115508) b!6185194))

(assert (= (and d!1939094 (not c!1115508)) b!6185192))

(assert (= (and b!6185192 c!1115507) b!6185195))

(assert (= (and b!6185192 (not c!1115507)) b!6185199))

(assert (= (and b!6185199 c!1115506) b!6185193))

(assert (= (and b!6185199 (not c!1115506)) b!6185191))

(assert (= (and b!6185191 c!1115505) b!6185190))

(assert (= (and b!6185191 (not c!1115505)) b!6185196))

(assert (= (and b!6185196 c!1115504) b!6185198))

(assert (= (and b!6185196 (not c!1115504)) b!6185197))

(assert (= (or b!6185198 b!6185197) bm!516909))

(assert (= (or b!6185190 b!6185198) bm!516908))

(assert (= (or b!6185193 bm!516909) bm!516910))

(assert (= (or b!6185193 bm!516908) bm!516911))

(declare-fun m!7020016 () Bool)

(assert (=> d!1939094 m!7020016))

(assert (=> d!1939094 m!7019728))

(declare-fun m!7020018 () Bool)

(assert (=> b!6185196 m!7020018))

(assert (=> bm!516910 m!7019666))

(declare-fun m!7020020 () Bool)

(assert (=> bm!516910 m!7020020))

(assert (=> bm!516911 m!7019666))

(declare-fun m!7020022 () Bool)

(assert (=> bm!516911 m!7020022))

(assert (=> b!6184869 d!1939094))

(assert (=> b!6184869 d!1939082))

(assert (=> b!6184869 d!1939076))

(declare-fun b!6185200 () Bool)

(declare-fun e!3767050 () Bool)

(assert (=> b!6185200 (= e!3767050 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))))))

(declare-fun b!6185201 () Bool)

(declare-fun e!3767051 () (InoxSet Context!11010))

(assert (=> b!6185201 (= e!3767051 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516912 () Bool)

(declare-fun call!516917 () (InoxSet Context!11010))

(assert (=> bm!516912 (= call!516917 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))) (h!70988 s!2326)))))

(declare-fun d!1939096 () Bool)

(declare-fun c!1115510 () Bool)

(assert (=> d!1939096 (= c!1115510 e!3767050)))

(declare-fun res!2558973 () Bool)

(assert (=> d!1939096 (=> (not res!2558973) (not e!3767050))))

(assert (=> d!1939096 (= res!2558973 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))))

(declare-fun e!3767049 () (InoxSet Context!11010))

(assert (=> d!1939096 (= (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326)) e!3767049)))

(declare-fun b!6185202 () Bool)

(assert (=> b!6185202 (= e!3767049 ((_ map or) call!516917 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))) (h!70988 s!2326))))))

(declare-fun b!6185203 () Bool)

(assert (=> b!6185203 (= e!3767049 e!3767051)))

(declare-fun c!1115509 () Bool)

(assert (=> b!6185203 (= c!1115509 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))))

(declare-fun b!6185204 () Bool)

(assert (=> b!6185204 (= e!3767051 call!516917)))

(assert (= (and d!1939096 res!2558973) b!6185200))

(assert (= (and d!1939096 c!1115510) b!6185202))

(assert (= (and d!1939096 (not c!1115510)) b!6185203))

(assert (= (and b!6185203 c!1115509) b!6185204))

(assert (= (and b!6185203 (not c!1115509)) b!6185201))

(assert (= (or b!6185202 b!6185204) bm!516912))

(declare-fun m!7020024 () Bool)

(assert (=> b!6185200 m!7020024))

(declare-fun m!7020026 () Bool)

(assert (=> bm!516912 m!7020026))

(declare-fun m!7020028 () Bool)

(assert (=> b!6185202 m!7020028))

(assert (=> b!6184935 d!1939096))

(declare-fun b!6185205 () Bool)

(declare-fun e!3767056 () Bool)

(declare-fun e!3767054 () Bool)

(assert (=> b!6185205 (= e!3767056 e!3767054)))

(declare-fun c!1115511 () Bool)

(assert (=> b!6185205 (= c!1115511 ((_ is EmptyLang!16121) (derivativeStep!4838 r!7292 (head!12759 s!2326))))))

(declare-fun bm!516913 () Bool)

(declare-fun call!516918 () Bool)

(assert (=> bm!516913 (= call!516918 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun b!6185206 () Bool)

(declare-fun e!3767057 () Bool)

(assert (=> b!6185206 (= e!3767057 (not (= (head!12759 (tail!11844 s!2326)) (c!1115220 (derivativeStep!4838 r!7292 (head!12759 s!2326))))))))

(declare-fun b!6185207 () Bool)

(declare-fun e!3767053 () Bool)

(assert (=> b!6185207 (= e!3767053 e!3767057)))

(declare-fun res!2558980 () Bool)

(assert (=> b!6185207 (=> res!2558980 e!3767057)))

(assert (=> b!6185207 (= res!2558980 call!516918)))

(declare-fun b!6185208 () Bool)

(declare-fun e!3767052 () Bool)

(assert (=> b!6185208 (= e!3767052 (= (head!12759 (tail!11844 s!2326)) (c!1115220 (derivativeStep!4838 r!7292 (head!12759 s!2326)))))))

(declare-fun d!1939098 () Bool)

(assert (=> d!1939098 e!3767056))

(declare-fun c!1115512 () Bool)

(assert (=> d!1939098 (= c!1115512 ((_ is EmptyExpr!16121) (derivativeStep!4838 r!7292 (head!12759 s!2326))))))

(declare-fun lt!2339390 () Bool)

(declare-fun e!3767058 () Bool)

(assert (=> d!1939098 (= lt!2339390 e!3767058)))

(declare-fun c!1115513 () Bool)

(assert (=> d!1939098 (= c!1115513 (isEmpty!36523 (tail!11844 s!2326)))))

(assert (=> d!1939098 (validRegex!7857 (derivativeStep!4838 r!7292 (head!12759 s!2326)))))

(assert (=> d!1939098 (= (matchR!8304 (derivativeStep!4838 r!7292 (head!12759 s!2326)) (tail!11844 s!2326)) lt!2339390)))

(declare-fun b!6185209 () Bool)

(declare-fun res!2558975 () Bool)

(declare-fun e!3767055 () Bool)

(assert (=> b!6185209 (=> res!2558975 e!3767055)))

(assert (=> b!6185209 (= res!2558975 (not ((_ is ElementMatch!16121) (derivativeStep!4838 r!7292 (head!12759 s!2326)))))))

(assert (=> b!6185209 (= e!3767054 e!3767055)))

(declare-fun b!6185210 () Bool)

(declare-fun res!2558981 () Bool)

(assert (=> b!6185210 (=> (not res!2558981) (not e!3767052))))

(assert (=> b!6185210 (= res!2558981 (isEmpty!36523 (tail!11844 (tail!11844 s!2326))))))

(declare-fun b!6185211 () Bool)

(declare-fun res!2558978 () Bool)

(assert (=> b!6185211 (=> res!2558978 e!3767057)))

(assert (=> b!6185211 (= res!2558978 (not (isEmpty!36523 (tail!11844 (tail!11844 s!2326)))))))

(declare-fun b!6185212 () Bool)

(assert (=> b!6185212 (= e!3767056 (= lt!2339390 call!516918))))

(declare-fun b!6185213 () Bool)

(declare-fun res!2558974 () Bool)

(assert (=> b!6185213 (=> res!2558974 e!3767055)))

(assert (=> b!6185213 (= res!2558974 e!3767052)))

(declare-fun res!2558977 () Bool)

(assert (=> b!6185213 (=> (not res!2558977) (not e!3767052))))

(assert (=> b!6185213 (= res!2558977 lt!2339390)))

(declare-fun b!6185214 () Bool)

(assert (=> b!6185214 (= e!3767058 (matchR!8304 (derivativeStep!4838 (derivativeStep!4838 r!7292 (head!12759 s!2326)) (head!12759 (tail!11844 s!2326))) (tail!11844 (tail!11844 s!2326))))))

(declare-fun b!6185215 () Bool)

(assert (=> b!6185215 (= e!3767054 (not lt!2339390))))

(declare-fun b!6185216 () Bool)

(declare-fun res!2558979 () Bool)

(assert (=> b!6185216 (=> (not res!2558979) (not e!3767052))))

(assert (=> b!6185216 (= res!2558979 (not call!516918))))

(declare-fun b!6185217 () Bool)

(assert (=> b!6185217 (= e!3767055 e!3767053)))

(declare-fun res!2558976 () Bool)

(assert (=> b!6185217 (=> (not res!2558976) (not e!3767053))))

(assert (=> b!6185217 (= res!2558976 (not lt!2339390))))

(declare-fun b!6185218 () Bool)

(assert (=> b!6185218 (= e!3767058 (nullable!6114 (derivativeStep!4838 r!7292 (head!12759 s!2326))))))

(assert (= (and d!1939098 c!1115513) b!6185218))

(assert (= (and d!1939098 (not c!1115513)) b!6185214))

(assert (= (and d!1939098 c!1115512) b!6185212))

(assert (= (and d!1939098 (not c!1115512)) b!6185205))

(assert (= (and b!6185205 c!1115511) b!6185215))

(assert (= (and b!6185205 (not c!1115511)) b!6185209))

(assert (= (and b!6185209 (not res!2558975)) b!6185213))

(assert (= (and b!6185213 res!2558977) b!6185216))

(assert (= (and b!6185216 res!2558979) b!6185210))

(assert (= (and b!6185210 res!2558981) b!6185208))

(assert (= (and b!6185213 (not res!2558974)) b!6185217))

(assert (= (and b!6185217 res!2558976) b!6185207))

(assert (= (and b!6185207 (not res!2558980)) b!6185211))

(assert (= (and b!6185211 (not res!2558978)) b!6185206))

(assert (= (or b!6185212 b!6185207 b!6185216) bm!516913))

(assert (=> d!1939098 m!7019662))

(assert (=> d!1939098 m!7019664))

(assert (=> d!1939098 m!7019668))

(declare-fun m!7020030 () Bool)

(assert (=> d!1939098 m!7020030))

(assert (=> bm!516913 m!7019662))

(assert (=> bm!516913 m!7019664))

(assert (=> b!6185211 m!7019662))

(assert (=> b!6185211 m!7019992))

(assert (=> b!6185211 m!7019992))

(assert (=> b!6185211 m!7020008))

(assert (=> b!6185214 m!7019662))

(assert (=> b!6185214 m!7019988))

(assert (=> b!6185214 m!7019668))

(assert (=> b!6185214 m!7019988))

(declare-fun m!7020032 () Bool)

(assert (=> b!6185214 m!7020032))

(assert (=> b!6185214 m!7019662))

(assert (=> b!6185214 m!7019992))

(assert (=> b!6185214 m!7020032))

(assert (=> b!6185214 m!7019992))

(declare-fun m!7020034 () Bool)

(assert (=> b!6185214 m!7020034))

(assert (=> b!6185218 m!7019668))

(declare-fun m!7020036 () Bool)

(assert (=> b!6185218 m!7020036))

(assert (=> b!6185208 m!7019662))

(assert (=> b!6185208 m!7019988))

(assert (=> b!6185210 m!7019662))

(assert (=> b!6185210 m!7019992))

(assert (=> b!6185210 m!7019992))

(assert (=> b!6185210 m!7020008))

(assert (=> b!6185206 m!7019662))

(assert (=> b!6185206 m!7019988))

(assert (=> b!6184787 d!1939098))

(declare-fun b!6185219 () Bool)

(declare-fun e!3767062 () Regex!16121)

(declare-fun call!516922 () Regex!16121)

(assert (=> b!6185219 (= e!3767062 (Concat!24966 call!516922 r!7292))))

(declare-fun b!6185220 () Bool)

(declare-fun e!3767060 () Regex!16121)

(assert (=> b!6185220 (= e!3767060 e!3767062)))

(declare-fun c!1115515 () Bool)

(assert (=> b!6185220 (= c!1115515 ((_ is Star!16121) r!7292))))

(declare-fun d!1939100 () Bool)

(declare-fun lt!2339391 () Regex!16121)

(assert (=> d!1939100 (validRegex!7857 lt!2339391)))

(declare-fun e!3767059 () Regex!16121)

(assert (=> d!1939100 (= lt!2339391 e!3767059)))

(declare-fun c!1115518 () Bool)

(assert (=> d!1939100 (= c!1115518 (or ((_ is EmptyExpr!16121) r!7292) ((_ is EmptyLang!16121) r!7292)))))

(assert (=> d!1939100 (validRegex!7857 r!7292)))

(assert (=> d!1939100 (= (derivativeStep!4838 r!7292 (head!12759 s!2326)) lt!2339391)))

(declare-fun bm!516914 () Bool)

(declare-fun call!516921 () Regex!16121)

(assert (=> bm!516914 (= call!516922 call!516921)))

(declare-fun b!6185221 () Bool)

(declare-fun e!3767063 () Regex!16121)

(assert (=> b!6185221 (= e!3767059 e!3767063)))

(declare-fun c!1115517 () Bool)

(assert (=> b!6185221 (= c!1115517 ((_ is ElementMatch!16121) r!7292))))

(declare-fun b!6185222 () Bool)

(declare-fun call!516920 () Regex!16121)

(assert (=> b!6185222 (= e!3767060 (Union!16121 call!516921 call!516920))))

(declare-fun b!6185223 () Bool)

(assert (=> b!6185223 (= e!3767059 EmptyLang!16121)))

(declare-fun b!6185224 () Bool)

(assert (=> b!6185224 (= e!3767063 (ite (= (head!12759 s!2326) (c!1115220 r!7292)) EmptyExpr!16121 EmptyLang!16121))))

(declare-fun b!6185225 () Bool)

(declare-fun c!1115514 () Bool)

(assert (=> b!6185225 (= c!1115514 (nullable!6114 (regOne!32754 r!7292)))))

(declare-fun e!3767061 () Regex!16121)

(assert (=> b!6185225 (= e!3767062 e!3767061)))

(declare-fun b!6185226 () Bool)

(declare-fun call!516919 () Regex!16121)

(assert (=> b!6185226 (= e!3767061 (Union!16121 (Concat!24966 call!516919 (regTwo!32754 r!7292)) EmptyLang!16121))))

(declare-fun b!6185227 () Bool)

(assert (=> b!6185227 (= e!3767061 (Union!16121 (Concat!24966 call!516922 (regTwo!32754 r!7292)) call!516919))))

(declare-fun bm!516915 () Bool)

(assert (=> bm!516915 (= call!516919 call!516920)))

(declare-fun c!1115516 () Bool)

(declare-fun bm!516916 () Bool)

(assert (=> bm!516916 (= call!516920 (derivativeStep!4838 (ite c!1115516 (regTwo!32755 r!7292) (ite c!1115514 (regTwo!32754 r!7292) (regOne!32754 r!7292))) (head!12759 s!2326)))))

(declare-fun b!6185228 () Bool)

(assert (=> b!6185228 (= c!1115516 ((_ is Union!16121) r!7292))))

(assert (=> b!6185228 (= e!3767063 e!3767060)))

(declare-fun bm!516917 () Bool)

(assert (=> bm!516917 (= call!516921 (derivativeStep!4838 (ite c!1115516 (regOne!32755 r!7292) (ite c!1115515 (reg!16450 r!7292) (regOne!32754 r!7292))) (head!12759 s!2326)))))

(assert (= (and d!1939100 c!1115518) b!6185223))

(assert (= (and d!1939100 (not c!1115518)) b!6185221))

(assert (= (and b!6185221 c!1115517) b!6185224))

(assert (= (and b!6185221 (not c!1115517)) b!6185228))

(assert (= (and b!6185228 c!1115516) b!6185222))

(assert (= (and b!6185228 (not c!1115516)) b!6185220))

(assert (= (and b!6185220 c!1115515) b!6185219))

(assert (= (and b!6185220 (not c!1115515)) b!6185225))

(assert (= (and b!6185225 c!1115514) b!6185227))

(assert (= (and b!6185225 (not c!1115514)) b!6185226))

(assert (= (or b!6185227 b!6185226) bm!516915))

(assert (= (or b!6185219 b!6185227) bm!516914))

(assert (= (or b!6185222 bm!516915) bm!516916))

(assert (= (or b!6185222 bm!516914) bm!516917))

(declare-fun m!7020038 () Bool)

(assert (=> d!1939100 m!7020038))

(assert (=> d!1939100 m!7019146))

(declare-fun m!7020040 () Bool)

(assert (=> b!6185225 m!7020040))

(assert (=> bm!516916 m!7019666))

(declare-fun m!7020042 () Bool)

(assert (=> bm!516916 m!7020042))

(assert (=> bm!516917 m!7019666))

(declare-fun m!7020044 () Bool)

(assert (=> bm!516917 m!7020044))

(assert (=> b!6184787 d!1939100))

(assert (=> b!6184787 d!1939082))

(assert (=> b!6184787 d!1939076))

(declare-fun d!1939102 () Bool)

(assert (=> d!1939102 (= (isEmpty!36520 (unfocusZipperList!1542 zl!343)) ((_ is Nil!64538) (unfocusZipperList!1542 zl!343)))))

(assert (=> b!6185020 d!1939102))

(declare-fun d!1939104 () Bool)

(declare-fun lambda!337653 () Int)

(declare-fun exists!2463 ((InoxSet Context!11010) Int) Bool)

(assert (=> d!1939104 (= (nullableZipper!1900 z!1189) (exists!2463 z!1189 lambda!337653))))

(declare-fun bs!1534452 () Bool)

(assert (= bs!1534452 d!1939104))

(declare-fun m!7020046 () Bool)

(assert (=> bs!1534452 m!7020046))

(assert (=> b!6185057 d!1939104))

(declare-fun d!1939106 () Bool)

(assert (=> d!1939106 (= (isEmpty!36523 (t!378172 s!2326)) ((_ is Nil!64540) (t!378172 s!2326)))))

(assert (=> d!1938922 d!1939106))

(assert (=> bs!1534435 d!1939014))

(declare-fun d!1939108 () Bool)

(assert (=> d!1939108 true))

(declare-fun setRes!41941 () Bool)

(assert (=> d!1939108 setRes!41941))

(declare-fun condSetEmpty!41941 () Bool)

(declare-fun res!2558984 () (InoxSet Context!11010))

(assert (=> d!1939108 (= condSetEmpty!41941 (= res!2558984 ((as const (Array Context!11010 Bool)) false)))))

(assert (=> d!1939108 (= (choose!45950 lt!2339243 lambda!337585) res!2558984)))

(declare-fun setIsEmpty!41941 () Bool)

(assert (=> setIsEmpty!41941 setRes!41941))

(declare-fun e!3767066 () Bool)

(declare-fun tp!1726592 () Bool)

(declare-fun setNonEmpty!41941 () Bool)

(declare-fun setElem!41941 () Context!11010)

(assert (=> setNonEmpty!41941 (= setRes!41941 (and tp!1726592 (inv!83549 setElem!41941) e!3767066))))

(declare-fun setRest!41941 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41941 (= res!2558984 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41941 true) setRest!41941))))

(declare-fun b!6185231 () Bool)

(declare-fun tp!1726591 () Bool)

(assert (=> b!6185231 (= e!3767066 tp!1726591)))

(assert (= (and d!1939108 condSetEmpty!41941) setIsEmpty!41941))

(assert (= (and d!1939108 (not condSetEmpty!41941)) setNonEmpty!41941))

(assert (= setNonEmpty!41941 b!6185231))

(declare-fun m!7020048 () Bool)

(assert (=> setNonEmpty!41941 m!7020048))

(assert (=> d!1939048 d!1939108))

(declare-fun d!1939110 () Bool)

(assert (=> d!1939110 (= (isConcat!1059 lt!2339374) ((_ is Concat!24966) lt!2339374))))

(assert (=> b!6184990 d!1939110))

(declare-fun bm!516918 () Bool)

(declare-fun call!516924 () List!64662)

(declare-fun c!1115523 () Bool)

(declare-fun call!516927 () (InoxSet Context!11010))

(assert (=> bm!516918 (= call!516927 (derivationStepZipperDown!1369 (ite c!1115523 (regOne!32755 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (regOne!32754 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))) (ite c!1115523 (ite c!1115467 lt!2339239 (Context!11011 call!516888)) (Context!11011 call!516924)) (h!70988 s!2326)))))

(declare-fun b!6185232 () Bool)

(declare-fun e!3767069 () (InoxSet Context!11010))

(declare-fun e!3767068 () (InoxSet Context!11010))

(assert (=> b!6185232 (= e!3767069 e!3767068)))

(assert (=> b!6185232 (= c!1115523 ((_ is Union!16121) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun bm!516919 () Bool)

(declare-fun c!1115525 () Bool)

(declare-fun c!1115521 () Bool)

(assert (=> bm!516919 (= call!516924 ($colon$colon!1995 (exprs!6005 (ite c!1115467 lt!2339239 (Context!11011 call!516888))) (ite (or c!1115521 c!1115525) (regTwo!32754 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))))))

(declare-fun b!6185233 () Bool)

(declare-fun e!3767072 () Bool)

(assert (=> b!6185233 (= c!1115521 e!3767072)))

(declare-fun res!2558985 () Bool)

(assert (=> b!6185233 (=> (not res!2558985) (not e!3767072))))

(assert (=> b!6185233 (= res!2558985 ((_ is Concat!24966) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun e!3767071 () (InoxSet Context!11010))

(assert (=> b!6185233 (= e!3767068 e!3767071)))

(declare-fun b!6185234 () Bool)

(assert (=> b!6185234 (= e!3767072 (nullable!6114 (regOne!32754 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))))))

(declare-fun b!6185235 () Bool)

(declare-fun call!516925 () (InoxSet Context!11010))

(assert (=> b!6185235 (= e!3767071 ((_ map or) call!516927 call!516925))))

(declare-fun bm!516920 () Bool)

(declare-fun call!516928 () (InoxSet Context!11010))

(assert (=> bm!516920 (= call!516925 call!516928)))

(declare-fun b!6185236 () Bool)

(declare-fun e!3767070 () (InoxSet Context!11010))

(declare-fun call!516926 () (InoxSet Context!11010))

(assert (=> b!6185236 (= e!3767070 call!516926)))

(declare-fun b!6185237 () Bool)

(assert (=> b!6185237 (= e!3767070 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516921 () Bool)

(declare-fun call!516923 () List!64662)

(assert (=> bm!516921 (= call!516923 call!516924)))

(declare-fun b!6185238 () Bool)

(assert (=> b!6185238 (= e!3767069 (store ((as const (Array Context!11010 Bool)) false) (ite c!1115467 lt!2339239 (Context!11011 call!516888)) true))))

(declare-fun b!6185240 () Bool)

(declare-fun c!1115524 () Bool)

(assert (=> b!6185240 (= c!1115524 ((_ is Star!16121) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun e!3767067 () (InoxSet Context!11010))

(assert (=> b!6185240 (= e!3767067 e!3767070)))

(declare-fun b!6185241 () Bool)

(assert (=> b!6185241 (= e!3767067 call!516926)))

(declare-fun b!6185242 () Bool)

(assert (=> b!6185242 (= e!3767068 ((_ map or) call!516927 call!516928))))

(declare-fun c!1115522 () Bool)

(declare-fun d!1939112 () Bool)

(assert (=> d!1939112 (= c!1115522 (and ((_ is ElementMatch!16121) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (= (c!1115220 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (h!70988 s!2326))))))

(assert (=> d!1939112 (= (derivationStepZipperDown!1369 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))) (ite c!1115467 lt!2339239 (Context!11011 call!516888)) (h!70988 s!2326)) e!3767069)))

(declare-fun b!6185239 () Bool)

(assert (=> b!6185239 (= e!3767071 e!3767067)))

(assert (=> b!6185239 (= c!1115525 ((_ is Concat!24966) (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun bm!516922 () Bool)

(assert (=> bm!516922 (= call!516926 call!516925)))

(declare-fun bm!516923 () Bool)

(assert (=> bm!516923 (= call!516928 (derivationStepZipperDown!1369 (ite c!1115523 (regTwo!32755 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (ite c!1115521 (regTwo!32754 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (ite c!1115525 (regOne!32754 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))) (reg!16450 (ite c!1115467 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))))) (ite (or c!1115523 c!1115521) (ite c!1115467 lt!2339239 (Context!11011 call!516888)) (Context!11011 call!516923)) (h!70988 s!2326)))))

(assert (= (and d!1939112 c!1115522) b!6185238))

(assert (= (and d!1939112 (not c!1115522)) b!6185232))

(assert (= (and b!6185232 c!1115523) b!6185242))

(assert (= (and b!6185232 (not c!1115523)) b!6185233))

(assert (= (and b!6185233 res!2558985) b!6185234))

(assert (= (and b!6185233 c!1115521) b!6185235))

(assert (= (and b!6185233 (not c!1115521)) b!6185239))

(assert (= (and b!6185239 c!1115525) b!6185241))

(assert (= (and b!6185239 (not c!1115525)) b!6185240))

(assert (= (and b!6185240 c!1115524) b!6185236))

(assert (= (and b!6185240 (not c!1115524)) b!6185237))

(assert (= (or b!6185241 b!6185236) bm!516921))

(assert (= (or b!6185241 b!6185236) bm!516922))

(assert (= (or b!6185235 bm!516921) bm!516919))

(assert (= (or b!6185235 bm!516922) bm!516920))

(assert (= (or b!6185242 bm!516920) bm!516923))

(assert (= (or b!6185242 b!6185235) bm!516918))

(declare-fun m!7020050 () Bool)

(assert (=> b!6185238 m!7020050))

(declare-fun m!7020052 () Bool)

(assert (=> b!6185234 m!7020052))

(declare-fun m!7020054 () Bool)

(assert (=> bm!516919 m!7020054))

(declare-fun m!7020056 () Bool)

(assert (=> bm!516918 m!7020056))

(declare-fun m!7020058 () Bool)

(assert (=> bm!516923 m!7020058))

(assert (=> bm!516882 d!1939112))

(declare-fun d!1939114 () Bool)

(assert (=> d!1939114 (= (isEmpty!36520 (exprs!6005 (h!70987 zl!343))) ((_ is Nil!64538) (exprs!6005 (h!70987 zl!343))))))

(assert (=> b!6184986 d!1939114))

(declare-fun d!1939116 () Bool)

(assert (=> d!1939116 (= (nullable!6114 lt!2339234) (nullableFct!2075 lt!2339234))))

(declare-fun bs!1534453 () Bool)

(assert (= bs!1534453 d!1939116))

(declare-fun m!7020060 () Bool)

(assert (=> bs!1534453 m!7020060))

(assert (=> b!6184873 d!1939116))

(declare-fun b!6185253 () Bool)

(declare-fun res!2558990 () Bool)

(declare-fun e!3767078 () Bool)

(assert (=> b!6185253 (=> (not res!2558990) (not e!3767078))))

(declare-fun lt!2339394 () List!64664)

(declare-fun size!40257 (List!64664) Int)

(assert (=> b!6185253 (= res!2558990 (= (size!40257 lt!2339394) (+ (size!40257 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))) (size!40257 (t!378172 s!2326)))))))

(declare-fun b!6185252 () Bool)

(declare-fun e!3767077 () List!64664)

(assert (=> b!6185252 (= e!3767077 (Cons!64540 (h!70988 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))) (++!14204 (t!378172 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))) (t!378172 s!2326))))))

(declare-fun b!6185251 () Bool)

(assert (=> b!6185251 (= e!3767077 (t!378172 s!2326))))

(declare-fun b!6185254 () Bool)

(assert (=> b!6185254 (= e!3767078 (or (not (= (t!378172 s!2326) Nil!64540)) (= lt!2339394 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)))))))

(declare-fun d!1939118 () Bool)

(assert (=> d!1939118 e!3767078))

(declare-fun res!2558991 () Bool)

(assert (=> d!1939118 (=> (not res!2558991) (not e!3767078))))

(declare-fun content!12054 (List!64664) (InoxSet C!32512))

(assert (=> d!1939118 (= res!2558991 (= (content!12054 lt!2339394) ((_ map or) (content!12054 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))) (content!12054 (t!378172 s!2326)))))))

(assert (=> d!1939118 (= lt!2339394 e!3767077)))

(declare-fun c!1115528 () Bool)

(assert (=> d!1939118 (= c!1115528 ((_ is Nil!64540) (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))))))

(assert (=> d!1939118 (= (++!14204 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326)) lt!2339394)))

(assert (= (and d!1939118 c!1115528) b!6185251))

(assert (= (and d!1939118 (not c!1115528)) b!6185252))

(assert (= (and d!1939118 res!2558991) b!6185253))

(assert (= (and b!6185253 res!2558990) b!6185254))

(declare-fun m!7020062 () Bool)

(assert (=> b!6185253 m!7020062))

(assert (=> b!6185253 m!7019690))

(declare-fun m!7020064 () Bool)

(assert (=> b!6185253 m!7020064))

(declare-fun m!7020066 () Bool)

(assert (=> b!6185253 m!7020066))

(declare-fun m!7020068 () Bool)

(assert (=> b!6185252 m!7020068))

(declare-fun m!7020070 () Bool)

(assert (=> d!1939118 m!7020070))

(assert (=> d!1939118 m!7019690))

(declare-fun m!7020072 () Bool)

(assert (=> d!1939118 m!7020072))

(declare-fun m!7020074 () Bool)

(assert (=> d!1939118 m!7020074))

(assert (=> b!6184812 d!1939118))

(declare-fun b!6185257 () Bool)

(declare-fun res!2558992 () Bool)

(declare-fun e!3767080 () Bool)

(assert (=> b!6185257 (=> (not res!2558992) (not e!3767080))))

(declare-fun lt!2339395 () List!64664)

(assert (=> b!6185257 (= res!2558992 (= (size!40257 lt!2339395) (+ (size!40257 Nil!64540) (size!40257 (Cons!64540 (h!70988 s!2326) Nil!64540)))))))

(declare-fun b!6185256 () Bool)

(declare-fun e!3767079 () List!64664)

(assert (=> b!6185256 (= e!3767079 (Cons!64540 (h!70988 Nil!64540) (++!14204 (t!378172 Nil!64540) (Cons!64540 (h!70988 s!2326) Nil!64540))))))

(declare-fun b!6185255 () Bool)

(assert (=> b!6185255 (= e!3767079 (Cons!64540 (h!70988 s!2326) Nil!64540))))

(declare-fun b!6185258 () Bool)

(assert (=> b!6185258 (= e!3767080 (or (not (= (Cons!64540 (h!70988 s!2326) Nil!64540) Nil!64540)) (= lt!2339395 Nil!64540)))))

(declare-fun d!1939120 () Bool)

(assert (=> d!1939120 e!3767080))

(declare-fun res!2558993 () Bool)

(assert (=> d!1939120 (=> (not res!2558993) (not e!3767080))))

(assert (=> d!1939120 (= res!2558993 (= (content!12054 lt!2339395) ((_ map or) (content!12054 Nil!64540) (content!12054 (Cons!64540 (h!70988 s!2326) Nil!64540)))))))

(assert (=> d!1939120 (= lt!2339395 e!3767079)))

(declare-fun c!1115529 () Bool)

(assert (=> d!1939120 (= c!1115529 ((_ is Nil!64540) Nil!64540))))

(assert (=> d!1939120 (= (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) lt!2339395)))

(assert (= (and d!1939120 c!1115529) b!6185255))

(assert (= (and d!1939120 (not c!1115529)) b!6185256))

(assert (= (and d!1939120 res!2558993) b!6185257))

(assert (= (and b!6185257 res!2558992) b!6185258))

(declare-fun m!7020076 () Bool)

(assert (=> b!6185257 m!7020076))

(declare-fun m!7020078 () Bool)

(assert (=> b!6185257 m!7020078))

(declare-fun m!7020080 () Bool)

(assert (=> b!6185257 m!7020080))

(declare-fun m!7020082 () Bool)

(assert (=> b!6185256 m!7020082))

(declare-fun m!7020084 () Bool)

(assert (=> d!1939120 m!7020084))

(declare-fun m!7020086 () Bool)

(assert (=> d!1939120 m!7020086))

(declare-fun m!7020088 () Bool)

(assert (=> d!1939120 m!7020088))

(assert (=> b!6184812 d!1939120))

(declare-fun d!1939122 () Bool)

(assert (=> d!1939122 (= (++!14204 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326)) s!2326)))

(declare-fun lt!2339398 () Unit!157747)

(declare-fun choose!45951 (List!64664 C!32512 List!64664 List!64664) Unit!157747)

(assert (=> d!1939122 (= lt!2339398 (choose!45951 Nil!64540 (h!70988 s!2326) (t!378172 s!2326) s!2326))))

(assert (=> d!1939122 (= (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) (t!378172 s!2326))) s!2326)))

(assert (=> d!1939122 (= (lemmaMoveElementToOtherListKeepsConcatEq!2299 Nil!64540 (h!70988 s!2326) (t!378172 s!2326) s!2326) lt!2339398)))

(declare-fun bs!1534454 () Bool)

(assert (= bs!1534454 d!1939122))

(assert (=> bs!1534454 m!7019690))

(assert (=> bs!1534454 m!7019690))

(assert (=> bs!1534454 m!7019692))

(declare-fun m!7020090 () Bool)

(assert (=> bs!1534454 m!7020090))

(declare-fun m!7020092 () Bool)

(assert (=> bs!1534454 m!7020092))

(assert (=> b!6184812 d!1939122))

(declare-fun b!6185259 () Bool)

(declare-fun lt!2339399 () Unit!157747)

(declare-fun lt!2339401 () Unit!157747)

(assert (=> b!6185259 (= lt!2339399 lt!2339401)))

(assert (=> b!6185259 (= (++!14204 (++!14204 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (Cons!64540 (h!70988 (t!378172 s!2326)) Nil!64540)) (t!378172 (t!378172 s!2326))) s!2326)))

(assert (=> b!6185259 (= lt!2339401 (lemmaMoveElementToOtherListKeepsConcatEq!2299 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (h!70988 (t!378172 s!2326)) (t!378172 (t!378172 s!2326)) s!2326))))

(declare-fun e!3767083 () Option!16012)

(assert (=> b!6185259 (= e!3767083 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) (++!14204 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (Cons!64540 (h!70988 (t!378172 s!2326)) Nil!64540)) (t!378172 (t!378172 s!2326)) s!2326))))

(declare-fun b!6185260 () Bool)

(declare-fun res!2558997 () Bool)

(declare-fun e!3767081 () Bool)

(assert (=> b!6185260 (=> (not res!2558997) (not e!3767081))))

(declare-fun lt!2339400 () Option!16012)

(assert (=> b!6185260 (= res!2558997 (matchR!8304 (regTwo!32754 r!7292) (_2!36403 (get!22280 lt!2339400))))))

(declare-fun b!6185261 () Bool)

(declare-fun e!3767085 () Option!16012)

(assert (=> b!6185261 (= e!3767085 e!3767083)))

(declare-fun c!1115531 () Bool)

(assert (=> b!6185261 (= c!1115531 ((_ is Nil!64540) (t!378172 s!2326)))))

(declare-fun b!6185262 () Bool)

(declare-fun e!3767084 () Bool)

(assert (=> b!6185262 (= e!3767084 (matchR!8304 (regTwo!32754 r!7292) (t!378172 s!2326)))))

(declare-fun b!6185263 () Bool)

(assert (=> b!6185263 (= e!3767085 (Some!16011 (tuple2!66201 (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326))))))

(declare-fun d!1939124 () Bool)

(declare-fun e!3767082 () Bool)

(assert (=> d!1939124 e!3767082))

(declare-fun res!2558998 () Bool)

(assert (=> d!1939124 (=> res!2558998 e!3767082)))

(assert (=> d!1939124 (= res!2558998 e!3767081)))

(declare-fun res!2558996 () Bool)

(assert (=> d!1939124 (=> (not res!2558996) (not e!3767081))))

(assert (=> d!1939124 (= res!2558996 (isDefined!12715 lt!2339400))))

(assert (=> d!1939124 (= lt!2339400 e!3767085)))

(declare-fun c!1115530 () Bool)

(assert (=> d!1939124 (= c!1115530 e!3767084)))

(declare-fun res!2558994 () Bool)

(assert (=> d!1939124 (=> (not res!2558994) (not e!3767084))))

(assert (=> d!1939124 (= res!2558994 (matchR!8304 (regOne!32754 r!7292) (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540))))))

(assert (=> d!1939124 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1939124 (= (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) (++!14204 Nil!64540 (Cons!64540 (h!70988 s!2326) Nil!64540)) (t!378172 s!2326) s!2326) lt!2339400)))

(declare-fun b!6185264 () Bool)

(assert (=> b!6185264 (= e!3767082 (not (isDefined!12715 lt!2339400)))))

(declare-fun b!6185265 () Bool)

(declare-fun res!2558995 () Bool)

(assert (=> b!6185265 (=> (not res!2558995) (not e!3767081))))

(assert (=> b!6185265 (= res!2558995 (matchR!8304 (regOne!32754 r!7292) (_1!36403 (get!22280 lt!2339400))))))

(declare-fun b!6185266 () Bool)

(assert (=> b!6185266 (= e!3767081 (= (++!14204 (_1!36403 (get!22280 lt!2339400)) (_2!36403 (get!22280 lt!2339400))) s!2326))))

(declare-fun b!6185267 () Bool)

(assert (=> b!6185267 (= e!3767083 None!16011)))

(assert (= (and d!1939124 res!2558994) b!6185262))

(assert (= (and d!1939124 c!1115530) b!6185263))

(assert (= (and d!1939124 (not c!1115530)) b!6185261))

(assert (= (and b!6185261 c!1115531) b!6185267))

(assert (= (and b!6185261 (not c!1115531)) b!6185259))

(assert (= (and d!1939124 res!2558996) b!6185265))

(assert (= (and b!6185265 res!2558995) b!6185260))

(assert (= (and b!6185260 res!2558997) b!6185266))

(assert (= (and d!1939124 (not res!2558998)) b!6185264))

(declare-fun m!7020094 () Bool)

(assert (=> b!6185266 m!7020094))

(declare-fun m!7020096 () Bool)

(assert (=> b!6185266 m!7020096))

(declare-fun m!7020098 () Bool)

(assert (=> b!6185264 m!7020098))

(assert (=> b!6185259 m!7019690))

(declare-fun m!7020100 () Bool)

(assert (=> b!6185259 m!7020100))

(assert (=> b!6185259 m!7020100))

(declare-fun m!7020102 () Bool)

(assert (=> b!6185259 m!7020102))

(assert (=> b!6185259 m!7019690))

(declare-fun m!7020104 () Bool)

(assert (=> b!6185259 m!7020104))

(assert (=> b!6185259 m!7020100))

(declare-fun m!7020106 () Bool)

(assert (=> b!6185259 m!7020106))

(assert (=> b!6185260 m!7020094))

(declare-fun m!7020108 () Bool)

(assert (=> b!6185260 m!7020108))

(declare-fun m!7020110 () Bool)

(assert (=> b!6185262 m!7020110))

(assert (=> d!1939124 m!7020098))

(assert (=> d!1939124 m!7019690))

(declare-fun m!7020112 () Bool)

(assert (=> d!1939124 m!7020112))

(assert (=> d!1939124 m!7019704))

(assert (=> b!6185265 m!7020094))

(declare-fun m!7020114 () Bool)

(assert (=> b!6185265 m!7020114))

(assert (=> b!6184812 d!1939124))

(declare-fun d!1939126 () Bool)

(assert (=> d!1939126 (= (nullable!6114 (reg!16450 lt!2339264)) (nullableFct!2075 (reg!16450 lt!2339264)))))

(declare-fun bs!1534455 () Bool)

(assert (= bs!1534455 d!1939126))

(declare-fun m!7020116 () Bool)

(assert (=> bs!1534455 m!7020116))

(assert (=> b!6184875 d!1939126))

(declare-fun d!1939128 () Bool)

(assert (=> d!1939128 (= (isEmptyExpr!1536 lt!2339374) ((_ is EmptyExpr!16121) lt!2339374))))

(assert (=> b!6184994 d!1939128))

(declare-fun d!1939130 () Bool)

(declare-fun res!2559003 () Bool)

(declare-fun e!3767090 () Bool)

(assert (=> d!1939130 (=> res!2559003 e!3767090)))

(assert (=> d!1939130 (= res!2559003 ((_ is Nil!64539) lt!2339327))))

(assert (=> d!1939130 (= (noDuplicate!1963 lt!2339327) e!3767090)))

(declare-fun b!6185272 () Bool)

(declare-fun e!3767091 () Bool)

(assert (=> b!6185272 (= e!3767090 e!3767091)))

(declare-fun res!2559004 () Bool)

(assert (=> b!6185272 (=> (not res!2559004) (not e!3767091))))

(declare-fun contains!20073 (List!64663 Context!11010) Bool)

(assert (=> b!6185272 (= res!2559004 (not (contains!20073 (t!378171 lt!2339327) (h!70987 lt!2339327))))))

(declare-fun b!6185273 () Bool)

(assert (=> b!6185273 (= e!3767091 (noDuplicate!1963 (t!378171 lt!2339327)))))

(assert (= (and d!1939130 (not res!2559003)) b!6185272))

(assert (= (and b!6185272 res!2559004) b!6185273))

(declare-fun m!7020118 () Bool)

(assert (=> b!6185272 m!7020118))

(declare-fun m!7020120 () Bool)

(assert (=> b!6185273 m!7020120))

(assert (=> d!1938910 d!1939130))

(declare-fun d!1939132 () Bool)

(declare-fun e!3767099 () Bool)

(assert (=> d!1939132 e!3767099))

(declare-fun res!2559010 () Bool)

(assert (=> d!1939132 (=> (not res!2559010) (not e!3767099))))

(declare-fun res!2559009 () List!64663)

(assert (=> d!1939132 (= res!2559010 (noDuplicate!1963 res!2559009))))

(declare-fun e!3767100 () Bool)

(assert (=> d!1939132 e!3767100))

(assert (=> d!1939132 (= (choose!45941 z!1189) res!2559009)))

(declare-fun b!6185281 () Bool)

(declare-fun e!3767098 () Bool)

(declare-fun tp!1726598 () Bool)

(assert (=> b!6185281 (= e!3767098 tp!1726598)))

(declare-fun tp!1726597 () Bool)

(declare-fun b!6185280 () Bool)

(assert (=> b!6185280 (= e!3767100 (and (inv!83549 (h!70987 res!2559009)) e!3767098 tp!1726597))))

(declare-fun b!6185282 () Bool)

(assert (=> b!6185282 (= e!3767099 (= (content!12052 res!2559009) z!1189))))

(assert (= b!6185280 b!6185281))

(assert (= (and d!1939132 ((_ is Cons!64539) res!2559009)) b!6185280))

(assert (= (and d!1939132 res!2559010) b!6185282))

(declare-fun m!7020122 () Bool)

(assert (=> d!1939132 m!7020122))

(declare-fun m!7020124 () Bool)

(assert (=> b!6185280 m!7020124))

(declare-fun m!7020126 () Bool)

(assert (=> b!6185282 m!7020126))

(assert (=> d!1938910 d!1939132))

(declare-fun bs!1534456 () Bool)

(declare-fun d!1939134 () Bool)

(assert (= bs!1534456 (and d!1939134 d!1939030)))

(declare-fun lambda!337654 () Int)

(assert (=> bs!1534456 (= lambda!337654 lambda!337642)))

(declare-fun bs!1534457 () Bool)

(assert (= bs!1534457 (and d!1939134 d!1939032)))

(assert (=> bs!1534457 (= lambda!337654 lambda!337645)))

(declare-fun bs!1534458 () Bool)

(assert (= bs!1534458 (and d!1939134 d!1939000)))

(assert (=> bs!1534458 (= lambda!337654 lambda!337637)))

(declare-fun bs!1534459 () Bool)

(assert (= bs!1534459 (and d!1939134 d!1939002)))

(assert (=> bs!1534459 (= lambda!337654 lambda!337638)))

(declare-fun bs!1534460 () Bool)

(assert (= bs!1534460 (and d!1939134 d!1939028)))

(assert (=> bs!1534460 (= lambda!337654 lambda!337639)))

(declare-fun bs!1534461 () Bool)

(assert (= bs!1534461 (and d!1939134 d!1938998)))

(assert (=> bs!1534461 (= lambda!337654 lambda!337634)))

(declare-fun bs!1534462 () Bool)

(assert (= bs!1534462 (and d!1939134 d!1939078)))

(assert (=> bs!1534462 (= lambda!337654 lambda!337646)))

(declare-fun bs!1534463 () Bool)

(assert (= bs!1534463 (and d!1939134 d!1938996)))

(assert (=> bs!1534463 (= lambda!337654 lambda!337633)))

(assert (=> d!1939134 (= (inv!83549 setElem!41938) (forall!15240 (exprs!6005 setElem!41938) lambda!337654))))

(declare-fun bs!1534464 () Bool)

(assert (= bs!1534464 d!1939134))

(declare-fun m!7020128 () Bool)

(assert (=> bs!1534464 m!7020128))

(assert (=> setNonEmpty!41938 d!1939134))

(declare-fun d!1939136 () Bool)

(assert (=> d!1939136 (= (nullable!6114 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))) (nullableFct!2075 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292)))))))

(declare-fun bs!1534465 () Bool)

(assert (= bs!1534465 d!1939136))

(declare-fun m!7020130 () Bool)

(assert (=> bs!1534465 m!7020130))

(assert (=> b!6185037 d!1939136))

(declare-fun d!1939138 () Bool)

(assert (=> d!1939138 (= (isEmpty!36523 s!2326) ((_ is Nil!64540) s!2326))))

(assert (=> bm!516855 d!1939138))

(assert (=> d!1938916 d!1938922))

(assert (=> d!1938916 d!1938918))

(declare-fun e!3767103 () Bool)

(declare-fun d!1939140 () Bool)

(assert (=> d!1939140 (= (matchZipper!2133 ((_ map or) lt!2339229 lt!2339244) (t!378172 s!2326)) e!3767103)))

(declare-fun res!2559013 () Bool)

(assert (=> d!1939140 (=> res!2559013 e!3767103)))

(assert (=> d!1939140 (= res!2559013 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(assert (=> d!1939140 true))

(declare-fun _$48!1803 () Unit!157747)

(assert (=> d!1939140 (= (choose!45940 lt!2339229 lt!2339244 (t!378172 s!2326)) _$48!1803)))

(declare-fun b!6185285 () Bool)

(assert (=> b!6185285 (= e!3767103 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1939140 (not res!2559013)) b!6185285))

(assert (=> d!1939140 m!7019170))

(assert (=> d!1939140 m!7019108))

(assert (=> b!6185285 m!7019092))

(assert (=> d!1938916 d!1939140))

(declare-fun d!1939142 () Bool)

(assert (=> d!1939142 (= (nullable!6114 r!7292) (nullableFct!2075 r!7292))))

(declare-fun bs!1534466 () Bool)

(assert (= bs!1534466 d!1939142))

(declare-fun m!7020132 () Bool)

(assert (=> bs!1534466 m!7020132))

(assert (=> b!6184791 d!1939142))

(declare-fun d!1939144 () Bool)

(assert (=> d!1939144 true))

(declare-fun setRes!41942 () Bool)

(assert (=> d!1939144 setRes!41942))

(declare-fun condSetEmpty!41942 () Bool)

(declare-fun res!2559014 () (InoxSet Context!11010))

(assert (=> d!1939144 (= condSetEmpty!41942 (= res!2559014 ((as const (Array Context!11010 Bool)) false)))))

(assert (=> d!1939144 (= (choose!45950 lt!2339250 lambda!337585) res!2559014)))

(declare-fun setIsEmpty!41942 () Bool)

(assert (=> setIsEmpty!41942 setRes!41942))

(declare-fun e!3767104 () Bool)

(declare-fun setNonEmpty!41942 () Bool)

(declare-fun setElem!41942 () Context!11010)

(declare-fun tp!1726600 () Bool)

(assert (=> setNonEmpty!41942 (= setRes!41942 (and tp!1726600 (inv!83549 setElem!41942) e!3767104))))

(declare-fun setRest!41942 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41942 (= res!2559014 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41942 true) setRest!41942))))

(declare-fun b!6185286 () Bool)

(declare-fun tp!1726599 () Bool)

(assert (=> b!6185286 (= e!3767104 tp!1726599)))

(assert (= (and d!1939144 condSetEmpty!41942) setIsEmpty!41942))

(assert (= (and d!1939144 (not condSetEmpty!41942)) setNonEmpty!41942))

(assert (= setNonEmpty!41942 b!6185286))

(declare-fun m!7020134 () Bool)

(assert (=> setNonEmpty!41942 m!7020134))

(assert (=> d!1939056 d!1939144))

(declare-fun d!1939146 () Bool)

(assert (=> d!1939146 (= (isUnion!975 lt!2339377) ((_ is Union!16121) lt!2339377))))

(assert (=> b!6185024 d!1939146))

(declare-fun b!6185287 () Bool)

(declare-fun e!3767109 () Bool)

(declare-fun e!3767105 () Bool)

(assert (=> b!6185287 (= e!3767109 e!3767105)))

(declare-fun c!1115532 () Bool)

(assert (=> b!6185287 (= c!1115532 ((_ is Union!16121) (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))

(declare-fun b!6185288 () Bool)

(declare-fun e!3767106 () Bool)

(assert (=> b!6185288 (= e!3767109 e!3767106)))

(declare-fun res!2559015 () Bool)

(assert (=> b!6185288 (= res!2559015 (not (nullable!6114 (reg!16450 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))))

(assert (=> b!6185288 (=> (not res!2559015) (not e!3767106))))

(declare-fun b!6185289 () Bool)

(declare-fun call!516931 () Bool)

(assert (=> b!6185289 (= e!3767106 call!516931)))

(declare-fun call!516929 () Bool)

(declare-fun bm!516924 () Bool)

(assert (=> bm!516924 (= call!516929 (validRegex!7857 (ite c!1115532 (regOne!32755 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))) (regOne!32754 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))))

(declare-fun b!6185290 () Bool)

(declare-fun e!3767110 () Bool)

(declare-fun e!3767111 () Bool)

(assert (=> b!6185290 (= e!3767110 e!3767111)))

(declare-fun res!2559019 () Bool)

(assert (=> b!6185290 (=> (not res!2559019) (not e!3767111))))

(assert (=> b!6185290 (= res!2559019 call!516929)))

(declare-fun d!1939148 () Bool)

(declare-fun res!2559018 () Bool)

(declare-fun e!3767108 () Bool)

(assert (=> d!1939148 (=> res!2559018 e!3767108)))

(assert (=> d!1939148 (= res!2559018 ((_ is ElementMatch!16121) (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))

(assert (=> d!1939148 (= (validRegex!7857 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))) e!3767108)))

(declare-fun b!6185291 () Bool)

(declare-fun call!516930 () Bool)

(assert (=> b!6185291 (= e!3767111 call!516930)))

(declare-fun bm!516925 () Bool)

(declare-fun c!1115533 () Bool)

(assert (=> bm!516925 (= call!516931 (validRegex!7857 (ite c!1115533 (reg!16450 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))) (ite c!1115532 (regTwo!32755 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))) (regTwo!32754 (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292)))))))))

(declare-fun b!6185292 () Bool)

(declare-fun res!2559016 () Bool)

(declare-fun e!3767107 () Bool)

(assert (=> b!6185292 (=> (not res!2559016) (not e!3767107))))

(assert (=> b!6185292 (= res!2559016 call!516929)))

(assert (=> b!6185292 (= e!3767105 e!3767107)))

(declare-fun bm!516926 () Bool)

(assert (=> bm!516926 (= call!516930 call!516931)))

(declare-fun b!6185293 () Bool)

(declare-fun res!2559017 () Bool)

(assert (=> b!6185293 (=> res!2559017 e!3767110)))

(assert (=> b!6185293 (= res!2559017 (not ((_ is Concat!24966) (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292)))))))

(assert (=> b!6185293 (= e!3767105 e!3767110)))

(declare-fun b!6185294 () Bool)

(assert (=> b!6185294 (= e!3767107 call!516930)))

(declare-fun b!6185295 () Bool)

(assert (=> b!6185295 (= e!3767108 e!3767109)))

(assert (=> b!6185295 (= c!1115533 ((_ is Star!16121) (ite c!1115395 (regOne!32755 r!7292) (regOne!32754 r!7292))))))

(assert (= (and d!1939148 (not res!2559018)) b!6185295))

(assert (= (and b!6185295 c!1115533) b!6185288))

(assert (= (and b!6185295 (not c!1115533)) b!6185287))

(assert (= (and b!6185288 res!2559015) b!6185289))

(assert (= (and b!6185287 c!1115532) b!6185292))

(assert (= (and b!6185287 (not c!1115532)) b!6185293))

(assert (= (and b!6185292 res!2559016) b!6185294))

(assert (= (and b!6185293 (not res!2559017)) b!6185290))

(assert (= (and b!6185290 res!2559019) b!6185291))

(assert (= (or b!6185294 b!6185291) bm!516926))

(assert (= (or b!6185292 b!6185290) bm!516924))

(assert (= (or b!6185289 bm!516926) bm!516925))

(declare-fun m!7020136 () Bool)

(assert (=> b!6185288 m!7020136))

(declare-fun m!7020138 () Bool)

(assert (=> bm!516924 m!7020138))

(declare-fun m!7020140 () Bool)

(assert (=> bm!516925 m!7020140))

(assert (=> bm!516852 d!1939148))

(declare-fun bs!1534467 () Bool)

(declare-fun d!1939150 () Bool)

(assert (= bs!1534467 (and d!1939150 d!1939030)))

(declare-fun lambda!337655 () Int)

(assert (=> bs!1534467 (= lambda!337655 lambda!337642)))

(declare-fun bs!1534468 () Bool)

(assert (= bs!1534468 (and d!1939150 d!1939032)))

(assert (=> bs!1534468 (= lambda!337655 lambda!337645)))

(declare-fun bs!1534469 () Bool)

(assert (= bs!1534469 (and d!1939150 d!1939000)))

(assert (=> bs!1534469 (= lambda!337655 lambda!337637)))

(declare-fun bs!1534470 () Bool)

(assert (= bs!1534470 (and d!1939150 d!1939002)))

(assert (=> bs!1534470 (= lambda!337655 lambda!337638)))

(declare-fun bs!1534471 () Bool)

(assert (= bs!1534471 (and d!1939150 d!1939028)))

(assert (=> bs!1534471 (= lambda!337655 lambda!337639)))

(declare-fun bs!1534472 () Bool)

(assert (= bs!1534472 (and d!1939150 d!1939078)))

(assert (=> bs!1534472 (= lambda!337655 lambda!337646)))

(declare-fun bs!1534473 () Bool)

(assert (= bs!1534473 (and d!1939150 d!1938996)))

(assert (=> bs!1534473 (= lambda!337655 lambda!337633)))

(declare-fun bs!1534474 () Bool)

(assert (= bs!1534474 (and d!1939150 d!1939134)))

(assert (=> bs!1534474 (= lambda!337655 lambda!337654)))

(declare-fun bs!1534475 () Bool)

(assert (= bs!1534475 (and d!1939150 d!1938998)))

(assert (=> bs!1534475 (= lambda!337655 lambda!337634)))

(declare-fun b!6185296 () Bool)

(declare-fun e!3767116 () Bool)

(declare-fun e!3767113 () Bool)

(assert (=> b!6185296 (= e!3767116 e!3767113)))

(declare-fun c!1115535 () Bool)

(assert (=> b!6185296 (= c!1115535 (isEmpty!36520 (tail!11845 (t!378170 lt!2339241))))))

(declare-fun b!6185297 () Bool)

(declare-fun e!3767115 () Bool)

(assert (=> b!6185297 (= e!3767115 e!3767116)))

(declare-fun c!1115536 () Bool)

(assert (=> b!6185297 (= c!1115536 (isEmpty!36520 (t!378170 lt!2339241)))))

(declare-fun b!6185298 () Bool)

(declare-fun e!3767114 () Regex!16121)

(assert (=> b!6185298 (= e!3767114 (Concat!24966 (h!70986 (t!378170 lt!2339241)) (generalisedConcat!1718 (t!378170 (t!378170 lt!2339241)))))))

(declare-fun b!6185299 () Bool)

(declare-fun lt!2339402 () Regex!16121)

(assert (=> b!6185299 (= e!3767113 (= lt!2339402 (head!12760 (t!378170 lt!2339241))))))

(declare-fun b!6185300 () Bool)

(assert (=> b!6185300 (= e!3767114 EmptyExpr!16121)))

(assert (=> d!1939150 e!3767115))

(declare-fun res!2559021 () Bool)

(assert (=> d!1939150 (=> (not res!2559021) (not e!3767115))))

(assert (=> d!1939150 (= res!2559021 (validRegex!7857 lt!2339402))))

(declare-fun e!3767112 () Regex!16121)

(assert (=> d!1939150 (= lt!2339402 e!3767112)))

(declare-fun c!1115534 () Bool)

(declare-fun e!3767117 () Bool)

(assert (=> d!1939150 (= c!1115534 e!3767117)))

(declare-fun res!2559020 () Bool)

(assert (=> d!1939150 (=> (not res!2559020) (not e!3767117))))

(assert (=> d!1939150 (= res!2559020 ((_ is Cons!64538) (t!378170 lt!2339241)))))

(assert (=> d!1939150 (forall!15240 (t!378170 lt!2339241) lambda!337655)))

(assert (=> d!1939150 (= (generalisedConcat!1718 (t!378170 lt!2339241)) lt!2339402)))

(declare-fun b!6185301 () Bool)

(assert (=> b!6185301 (= e!3767113 (isConcat!1059 lt!2339402))))

(declare-fun b!6185302 () Bool)

(assert (=> b!6185302 (= e!3767117 (isEmpty!36520 (t!378170 (t!378170 lt!2339241))))))

(declare-fun b!6185303 () Bool)

(assert (=> b!6185303 (= e!3767112 (h!70986 (t!378170 lt!2339241)))))

(declare-fun b!6185304 () Bool)

(assert (=> b!6185304 (= e!3767112 e!3767114)))

(declare-fun c!1115537 () Bool)

(assert (=> b!6185304 (= c!1115537 ((_ is Cons!64538) (t!378170 lt!2339241)))))

(declare-fun b!6185305 () Bool)

(assert (=> b!6185305 (= e!3767116 (isEmptyExpr!1536 lt!2339402))))

(assert (= (and d!1939150 res!2559020) b!6185302))

(assert (= (and d!1939150 c!1115534) b!6185303))

(assert (= (and d!1939150 (not c!1115534)) b!6185304))

(assert (= (and b!6185304 c!1115537) b!6185298))

(assert (= (and b!6185304 (not c!1115537)) b!6185300))

(assert (= (and d!1939150 res!2559021) b!6185297))

(assert (= (and b!6185297 c!1115536) b!6185305))

(assert (= (and b!6185297 (not c!1115536)) b!6185296))

(assert (= (and b!6185296 c!1115535) b!6185299))

(assert (= (and b!6185296 (not c!1115535)) b!6185301))

(declare-fun m!7020142 () Bool)

(assert (=> b!6185305 m!7020142))

(declare-fun m!7020144 () Bool)

(assert (=> b!6185298 m!7020144))

(declare-fun m!7020146 () Bool)

(assert (=> b!6185296 m!7020146))

(assert (=> b!6185296 m!7020146))

(declare-fun m!7020148 () Bool)

(assert (=> b!6185296 m!7020148))

(declare-fun m!7020150 () Bool)

(assert (=> b!6185302 m!7020150))

(declare-fun m!7020152 () Bool)

(assert (=> b!6185301 m!7020152))

(assert (=> b!6185297 m!7019772))

(declare-fun m!7020154 () Bool)

(assert (=> b!6185299 m!7020154))

(declare-fun m!7020156 () Bool)

(assert (=> d!1939150 m!7020156))

(declare-fun m!7020158 () Bool)

(assert (=> d!1939150 m!7020158))

(assert (=> b!6184915 d!1939150))

(declare-fun d!1939152 () Bool)

(declare-fun res!2559022 () Bool)

(declare-fun e!3767118 () Bool)

(assert (=> d!1939152 (=> res!2559022 e!3767118)))

(assert (=> d!1939152 (= res!2559022 ((_ is Nil!64538) lt!2339380))))

(assert (=> d!1939152 (= (forall!15240 lt!2339380 lambda!337645) e!3767118)))

(declare-fun b!6185306 () Bool)

(declare-fun e!3767119 () Bool)

(assert (=> b!6185306 (= e!3767118 e!3767119)))

(declare-fun res!2559023 () Bool)

(assert (=> b!6185306 (=> (not res!2559023) (not e!3767119))))

(assert (=> b!6185306 (= res!2559023 (dynLambda!25453 lambda!337645 (h!70986 lt!2339380)))))

(declare-fun b!6185307 () Bool)

(assert (=> b!6185307 (= e!3767119 (forall!15240 (t!378170 lt!2339380) lambda!337645))))

(assert (= (and d!1939152 (not res!2559022)) b!6185306))

(assert (= (and b!6185306 res!2559023) b!6185307))

(declare-fun b_lambda!235367 () Bool)

(assert (=> (not b_lambda!235367) (not b!6185306)))

(declare-fun m!7020160 () Bool)

(assert (=> b!6185306 m!7020160))

(declare-fun m!7020162 () Bool)

(assert (=> b!6185307 m!7020162))

(assert (=> d!1939032 d!1939152))

(assert (=> b!6185029 d!1939028))

(declare-fun bs!1534476 () Bool)

(declare-fun d!1939154 () Bool)

(assert (= bs!1534476 (and d!1939154 d!1939030)))

(declare-fun lambda!337656 () Int)

(assert (=> bs!1534476 (= lambda!337656 lambda!337642)))

(declare-fun bs!1534477 () Bool)

(assert (= bs!1534477 (and d!1939154 d!1939032)))

(assert (=> bs!1534477 (= lambda!337656 lambda!337645)))

(declare-fun bs!1534478 () Bool)

(assert (= bs!1534478 (and d!1939154 d!1939000)))

(assert (=> bs!1534478 (= lambda!337656 lambda!337637)))

(declare-fun bs!1534479 () Bool)

(assert (= bs!1534479 (and d!1939154 d!1939002)))

(assert (=> bs!1534479 (= lambda!337656 lambda!337638)))

(declare-fun bs!1534480 () Bool)

(assert (= bs!1534480 (and d!1939154 d!1939028)))

(assert (=> bs!1534480 (= lambda!337656 lambda!337639)))

(declare-fun bs!1534481 () Bool)

(assert (= bs!1534481 (and d!1939154 d!1939150)))

(assert (=> bs!1534481 (= lambda!337656 lambda!337655)))

(declare-fun bs!1534482 () Bool)

(assert (= bs!1534482 (and d!1939154 d!1939078)))

(assert (=> bs!1534482 (= lambda!337656 lambda!337646)))

(declare-fun bs!1534483 () Bool)

(assert (= bs!1534483 (and d!1939154 d!1938996)))

(assert (=> bs!1534483 (= lambda!337656 lambda!337633)))

(declare-fun bs!1534484 () Bool)

(assert (= bs!1534484 (and d!1939154 d!1939134)))

(assert (=> bs!1534484 (= lambda!337656 lambda!337654)))

(declare-fun bs!1534485 () Bool)

(assert (= bs!1534485 (and d!1939154 d!1938998)))

(assert (=> bs!1534485 (= lambda!337656 lambda!337634)))

(declare-fun lt!2339403 () List!64662)

(assert (=> d!1939154 (forall!15240 lt!2339403 lambda!337656)))

(declare-fun e!3767120 () List!64662)

(assert (=> d!1939154 (= lt!2339403 e!3767120)))

(declare-fun c!1115538 () Bool)

(assert (=> d!1939154 (= c!1115538 ((_ is Cons!64539) (t!378171 zl!343)))))

(assert (=> d!1939154 (= (unfocusZipperList!1542 (t!378171 zl!343)) lt!2339403)))

(declare-fun b!6185308 () Bool)

(assert (=> b!6185308 (= e!3767120 (Cons!64538 (generalisedConcat!1718 (exprs!6005 (h!70987 (t!378171 zl!343)))) (unfocusZipperList!1542 (t!378171 (t!378171 zl!343)))))))

(declare-fun b!6185309 () Bool)

(assert (=> b!6185309 (= e!3767120 Nil!64538)))

(assert (= (and d!1939154 c!1115538) b!6185308))

(assert (= (and d!1939154 (not c!1115538)) b!6185309))

(declare-fun m!7020164 () Bool)

(assert (=> d!1939154 m!7020164))

(declare-fun m!7020166 () Bool)

(assert (=> b!6185308 m!7020166))

(declare-fun m!7020168 () Bool)

(assert (=> b!6185308 m!7020168))

(assert (=> b!6185029 d!1939154))

(assert (=> bm!516845 d!1939138))

(declare-fun b!6185310 () Bool)

(declare-fun e!3767122 () Bool)

(assert (=> b!6185310 (= e!3767122 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun b!6185311 () Bool)

(declare-fun e!3767123 () (InoxSet Context!11010))

(assert (=> b!6185311 (= e!3767123 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516927 () Bool)

(declare-fun call!516932 () (InoxSet Context!11010))

(assert (=> bm!516927 (= call!516932 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343))))))) (h!70988 s!2326)))))

(declare-fun d!1939156 () Bool)

(declare-fun c!1115540 () Bool)

(assert (=> d!1939156 (= c!1115540 e!3767122)))

(declare-fun res!2559024 () Bool)

(assert (=> d!1939156 (=> (not res!2559024) (not e!3767122))))

(assert (=> d!1939156 (= res!2559024 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun e!3767121 () (InoxSet Context!11010))

(assert (=> d!1939156 (= (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326)) e!3767121)))

(declare-fun b!6185312 () Bool)

(assert (=> b!6185312 (= e!3767121 ((_ map or) call!516932 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343))))))) (h!70988 s!2326))))))

(declare-fun b!6185313 () Bool)

(assert (=> b!6185313 (= e!3767121 e!3767123)))

(declare-fun c!1115539 () Bool)

(assert (=> b!6185313 (= c!1115539 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun b!6185314 () Bool)

(assert (=> b!6185314 (= e!3767123 call!516932)))

(assert (= (and d!1939156 res!2559024) b!6185310))

(assert (= (and d!1939156 c!1115540) b!6185312))

(assert (= (and d!1939156 (not c!1115540)) b!6185313))

(assert (= (and b!6185313 c!1115539) b!6185314))

(assert (= (and b!6185313 (not c!1115539)) b!6185311))

(assert (= (or b!6185312 b!6185314) bm!516927))

(declare-fun m!7020170 () Bool)

(assert (=> b!6185310 m!7020170))

(declare-fun m!7020172 () Bool)

(assert (=> bm!516927 m!7020172))

(declare-fun m!7020174 () Bool)

(assert (=> b!6185312 m!7020174))

(assert (=> b!6184945 d!1939156))

(declare-fun bs!1534486 () Bool)

(declare-fun d!1939158 () Bool)

(assert (= bs!1534486 (and d!1939158 d!1939104)))

(declare-fun lambda!337657 () Int)

(assert (=> bs!1534486 (= lambda!337657 lambda!337653)))

(assert (=> d!1939158 (= (nullableZipper!1900 lt!2339250) (exists!2463 lt!2339250 lambda!337657))))

(declare-fun bs!1534487 () Bool)

(assert (= bs!1534487 d!1939158))

(declare-fun m!7020176 () Bool)

(assert (=> bs!1534487 m!7020176))

(assert (=> b!6185059 d!1939158))

(declare-fun bs!1534488 () Bool)

(declare-fun d!1939160 () Bool)

(assert (= bs!1534488 (and d!1939160 d!1939104)))

(declare-fun lambda!337658 () Int)

(assert (=> bs!1534488 (= lambda!337658 lambda!337653)))

(declare-fun bs!1534489 () Bool)

(assert (= bs!1534489 (and d!1939160 d!1939158)))

(assert (=> bs!1534489 (= lambda!337658 lambda!337657)))

(assert (=> d!1939160 (= (nullableZipper!1900 lt!2339243) (exists!2463 lt!2339243 lambda!337658))))

(declare-fun bs!1534490 () Bool)

(assert (= bs!1534490 d!1939160))

(declare-fun m!7020178 () Bool)

(assert (=> bs!1534490 m!7020178))

(assert (=> b!6184792 d!1939160))

(declare-fun d!1939162 () Bool)

(assert (=> d!1939162 (= (isEmpty!36520 (t!378170 lt!2339252)) ((_ is Nil!64538) (t!378170 lt!2339252)))))

(assert (=> b!6184909 d!1939162))

(declare-fun d!1939164 () Bool)

(declare-fun c!1115541 () Bool)

(assert (=> d!1939164 (= c!1115541 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767124 () Bool)

(assert (=> d!1939164 (= (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339229 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767124)))

(declare-fun b!6185315 () Bool)

(assert (=> b!6185315 (= e!3767124 (nullableZipper!1900 (derivationStepZipper!2092 ((_ map or) lt!2339229 lt!2339244) (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185316 () Bool)

(assert (=> b!6185316 (= e!3767124 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 ((_ map or) lt!2339229 lt!2339244) (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939164 c!1115541) b!6185315))

(assert (= (and d!1939164 (not c!1115541)) b!6185316))

(assert (=> d!1939164 m!7019489))

(declare-fun m!7020180 () Bool)

(assert (=> d!1939164 m!7020180))

(assert (=> b!6185315 m!7019562))

(declare-fun m!7020182 () Bool)

(assert (=> b!6185315 m!7020182))

(assert (=> b!6185316 m!7019489))

(declare-fun m!7020184 () Bool)

(assert (=> b!6185316 m!7020184))

(assert (=> b!6185316 m!7019562))

(assert (=> b!6185316 m!7020184))

(declare-fun m!7020186 () Bool)

(assert (=> b!6185316 m!7020186))

(assert (=> b!6185316 m!7019489))

(declare-fun m!7020188 () Bool)

(assert (=> b!6185316 m!7020188))

(assert (=> b!6185316 m!7020186))

(assert (=> b!6185316 m!7020188))

(declare-fun m!7020190 () Bool)

(assert (=> b!6185316 m!7020190))

(assert (=> b!6184604 d!1939164))

(declare-fun bs!1534491 () Bool)

(declare-fun d!1939166 () Bool)

(assert (= bs!1534491 (and d!1939166 b!6184187)))

(declare-fun lambda!337659 () Int)

(assert (=> bs!1534491 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337659 lambda!337585))))

(declare-fun bs!1534492 () Bool)

(assert (= bs!1534492 (and d!1939166 d!1939086)))

(assert (=> bs!1534492 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337659 lambda!337649))))

(declare-fun bs!1534493 () Bool)

(assert (= bs!1534493 (and d!1939166 d!1939090)))

(assert (=> bs!1534493 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337659 lambda!337650))))

(assert (=> d!1939166 true))

(assert (=> d!1939166 (= (derivationStepZipper!2092 ((_ map or) lt!2339229 lt!2339244) (head!12759 (t!378172 s!2326))) (flatMap!1626 ((_ map or) lt!2339229 lt!2339244) lambda!337659))))

(declare-fun bs!1534494 () Bool)

(assert (= bs!1534494 d!1939166))

(declare-fun m!7020192 () Bool)

(assert (=> bs!1534494 m!7020192))

(assert (=> b!6184604 d!1939166))

(declare-fun d!1939168 () Bool)

(assert (=> d!1939168 (= (head!12759 (t!378172 s!2326)) (h!70988 (t!378172 s!2326)))))

(assert (=> b!6184604 d!1939168))

(declare-fun d!1939170 () Bool)

(assert (=> d!1939170 (= (tail!11844 (t!378172 s!2326)) (t!378172 (t!378172 s!2326)))))

(assert (=> b!6184604 d!1939170))

(declare-fun bs!1534495 () Bool)

(declare-fun d!1939172 () Bool)

(assert (= bs!1534495 (and d!1939172 d!1939030)))

(declare-fun lambda!337660 () Int)

(assert (=> bs!1534495 (= lambda!337660 lambda!337642)))

(declare-fun bs!1534496 () Bool)

(assert (= bs!1534496 (and d!1939172 d!1939154)))

(assert (=> bs!1534496 (= lambda!337660 lambda!337656)))

(declare-fun bs!1534497 () Bool)

(assert (= bs!1534497 (and d!1939172 d!1939032)))

(assert (=> bs!1534497 (= lambda!337660 lambda!337645)))

(declare-fun bs!1534498 () Bool)

(assert (= bs!1534498 (and d!1939172 d!1939000)))

(assert (=> bs!1534498 (= lambda!337660 lambda!337637)))

(declare-fun bs!1534499 () Bool)

(assert (= bs!1534499 (and d!1939172 d!1939002)))

(assert (=> bs!1534499 (= lambda!337660 lambda!337638)))

(declare-fun bs!1534500 () Bool)

(assert (= bs!1534500 (and d!1939172 d!1939028)))

(assert (=> bs!1534500 (= lambda!337660 lambda!337639)))

(declare-fun bs!1534501 () Bool)

(assert (= bs!1534501 (and d!1939172 d!1939150)))

(assert (=> bs!1534501 (= lambda!337660 lambda!337655)))

(declare-fun bs!1534502 () Bool)

(assert (= bs!1534502 (and d!1939172 d!1939078)))

(assert (=> bs!1534502 (= lambda!337660 lambda!337646)))

(declare-fun bs!1534503 () Bool)

(assert (= bs!1534503 (and d!1939172 d!1938996)))

(assert (=> bs!1534503 (= lambda!337660 lambda!337633)))

(declare-fun bs!1534504 () Bool)

(assert (= bs!1534504 (and d!1939172 d!1939134)))

(assert (=> bs!1534504 (= lambda!337660 lambda!337654)))

(declare-fun bs!1534505 () Bool)

(assert (= bs!1534505 (and d!1939172 d!1938998)))

(assert (=> bs!1534505 (= lambda!337660 lambda!337634)))

(declare-fun b!6185317 () Bool)

(declare-fun e!3767129 () Bool)

(declare-fun e!3767126 () Bool)

(assert (=> b!6185317 (= e!3767129 e!3767126)))

(declare-fun c!1115543 () Bool)

(assert (=> b!6185317 (= c!1115543 (isEmpty!36520 (tail!11845 (t!378170 lt!2339252))))))

(declare-fun b!6185318 () Bool)

(declare-fun e!3767128 () Bool)

(assert (=> b!6185318 (= e!3767128 e!3767129)))

(declare-fun c!1115544 () Bool)

(assert (=> b!6185318 (= c!1115544 (isEmpty!36520 (t!378170 lt!2339252)))))

(declare-fun b!6185319 () Bool)

(declare-fun e!3767127 () Regex!16121)

(assert (=> b!6185319 (= e!3767127 (Concat!24966 (h!70986 (t!378170 lt!2339252)) (generalisedConcat!1718 (t!378170 (t!378170 lt!2339252)))))))

(declare-fun b!6185320 () Bool)

(declare-fun lt!2339404 () Regex!16121)

(assert (=> b!6185320 (= e!3767126 (= lt!2339404 (head!12760 (t!378170 lt!2339252))))))

(declare-fun b!6185321 () Bool)

(assert (=> b!6185321 (= e!3767127 EmptyExpr!16121)))

(assert (=> d!1939172 e!3767128))

(declare-fun res!2559026 () Bool)

(assert (=> d!1939172 (=> (not res!2559026) (not e!3767128))))

(assert (=> d!1939172 (= res!2559026 (validRegex!7857 lt!2339404))))

(declare-fun e!3767125 () Regex!16121)

(assert (=> d!1939172 (= lt!2339404 e!3767125)))

(declare-fun c!1115542 () Bool)

(declare-fun e!3767130 () Bool)

(assert (=> d!1939172 (= c!1115542 e!3767130)))

(declare-fun res!2559025 () Bool)

(assert (=> d!1939172 (=> (not res!2559025) (not e!3767130))))

(assert (=> d!1939172 (= res!2559025 ((_ is Cons!64538) (t!378170 lt!2339252)))))

(assert (=> d!1939172 (forall!15240 (t!378170 lt!2339252) lambda!337660)))

(assert (=> d!1939172 (= (generalisedConcat!1718 (t!378170 lt!2339252)) lt!2339404)))

(declare-fun b!6185322 () Bool)

(assert (=> b!6185322 (= e!3767126 (isConcat!1059 lt!2339404))))

(declare-fun b!6185323 () Bool)

(assert (=> b!6185323 (= e!3767130 (isEmpty!36520 (t!378170 (t!378170 lt!2339252))))))

(declare-fun b!6185324 () Bool)

(assert (=> b!6185324 (= e!3767125 (h!70986 (t!378170 lt!2339252)))))

(declare-fun b!6185325 () Bool)

(assert (=> b!6185325 (= e!3767125 e!3767127)))

(declare-fun c!1115545 () Bool)

(assert (=> b!6185325 (= c!1115545 ((_ is Cons!64538) (t!378170 lt!2339252)))))

(declare-fun b!6185326 () Bool)

(assert (=> b!6185326 (= e!3767129 (isEmptyExpr!1536 lt!2339404))))

(assert (= (and d!1939172 res!2559025) b!6185323))

(assert (= (and d!1939172 c!1115542) b!6185324))

(assert (= (and d!1939172 (not c!1115542)) b!6185325))

(assert (= (and b!6185325 c!1115545) b!6185319))

(assert (= (and b!6185325 (not c!1115545)) b!6185321))

(assert (= (and d!1939172 res!2559026) b!6185318))

(assert (= (and b!6185318 c!1115544) b!6185326))

(assert (= (and b!6185318 (not c!1115544)) b!6185317))

(assert (= (and b!6185317 c!1115543) b!6185320))

(assert (= (and b!6185317 (not c!1115543)) b!6185322))

(declare-fun m!7020194 () Bool)

(assert (=> b!6185326 m!7020194))

(declare-fun m!7020196 () Bool)

(assert (=> b!6185319 m!7020196))

(declare-fun m!7020198 () Bool)

(assert (=> b!6185317 m!7020198))

(assert (=> b!6185317 m!7020198))

(declare-fun m!7020200 () Bool)

(assert (=> b!6185317 m!7020200))

(declare-fun m!7020202 () Bool)

(assert (=> b!6185323 m!7020202))

(declare-fun m!7020204 () Bool)

(assert (=> b!6185322 m!7020204))

(assert (=> b!6185318 m!7019752))

(declare-fun m!7020206 () Bool)

(assert (=> b!6185320 m!7020206))

(declare-fun m!7020208 () Bool)

(assert (=> d!1939172 m!7020208))

(declare-fun m!7020210 () Bool)

(assert (=> d!1939172 m!7020210))

(assert (=> b!6184905 d!1939172))

(assert (=> d!1939042 d!1939048))

(declare-fun d!1939174 () Bool)

(assert (=> d!1939174 (= (flatMap!1626 lt!2339243 lambda!337585) (dynLambda!25452 lambda!337585 lt!2339237))))

(assert (=> d!1939174 true))

(declare-fun _$13!3167 () Unit!157747)

(assert (=> d!1939174 (= (choose!45949 lt!2339243 lt!2339237 lambda!337585) _$13!3167)))

(declare-fun b_lambda!235369 () Bool)

(assert (=> (not b_lambda!235369) (not d!1939174)))

(declare-fun bs!1534506 () Bool)

(assert (= bs!1534506 d!1939174))

(assert (=> bs!1534506 m!7019136))

(assert (=> bs!1534506 m!7019910))

(assert (=> d!1939042 d!1939174))

(declare-fun bs!1534507 () Bool)

(declare-fun d!1939176 () Bool)

(assert (= bs!1534507 (and d!1939176 d!1939104)))

(declare-fun lambda!337661 () Int)

(assert (=> bs!1534507 (= lambda!337661 lambda!337653)))

(declare-fun bs!1534508 () Bool)

(assert (= bs!1534508 (and d!1939176 d!1939158)))

(assert (=> bs!1534508 (= lambda!337661 lambda!337657)))

(declare-fun bs!1534509 () Bool)

(assert (= bs!1534509 (and d!1939176 d!1939160)))

(assert (=> bs!1534509 (= lambda!337661 lambda!337658)))

(assert (=> d!1939176 (= (nullableZipper!1900 lt!2339244) (exists!2463 lt!2339244 lambda!337661))))

(declare-fun bs!1534510 () Bool)

(assert (= bs!1534510 d!1939176))

(declare-fun m!7020212 () Bool)

(assert (=> bs!1534510 m!7020212))

(assert (=> b!6184573 d!1939176))

(declare-fun d!1939178 () Bool)

(assert (=> d!1939178 true))

(declare-fun setRes!41943 () Bool)

(assert (=> d!1939178 setRes!41943))

(declare-fun condSetEmpty!41943 () Bool)

(declare-fun res!2559027 () (InoxSet Context!11010))

(assert (=> d!1939178 (= condSetEmpty!41943 (= res!2559027 ((as const (Array Context!11010 Bool)) false)))))

(assert (=> d!1939178 (= (choose!45950 z!1189 lambda!337585) res!2559027)))

(declare-fun setIsEmpty!41943 () Bool)

(assert (=> setIsEmpty!41943 setRes!41943))

(declare-fun tp!1726602 () Bool)

(declare-fun e!3767131 () Bool)

(declare-fun setNonEmpty!41943 () Bool)

(declare-fun setElem!41943 () Context!11010)

(assert (=> setNonEmpty!41943 (= setRes!41943 (and tp!1726602 (inv!83549 setElem!41943) e!3767131))))

(declare-fun setRest!41943 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41943 (= res!2559027 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41943 true) setRest!41943))))

(declare-fun b!6185327 () Bool)

(declare-fun tp!1726601 () Bool)

(assert (=> b!6185327 (= e!3767131 tp!1726601)))

(assert (= (and d!1939178 condSetEmpty!41943) setIsEmpty!41943))

(assert (= (and d!1939178 (not condSetEmpty!41943)) setNonEmpty!41943))

(assert (= setNonEmpty!41943 b!6185327))

(declare-fun m!7020214 () Bool)

(assert (=> setNonEmpty!41943 m!7020214))

(assert (=> d!1939018 d!1939178))

(assert (=> d!1938982 d!1938978))

(declare-fun d!1939180 () Bool)

(assert (=> d!1939180 (= (Exists!3191 lambda!337624) (choose!45943 lambda!337624))))

(declare-fun bs!1534511 () Bool)

(assert (= bs!1534511 d!1939180))

(declare-fun m!7020216 () Bool)

(assert (=> bs!1534511 m!7020216))

(assert (=> d!1938982 d!1939180))

(declare-fun b!6185328 () Bool)

(declare-fun e!3767136 () Bool)

(declare-fun e!3767132 () Bool)

(assert (=> b!6185328 (= e!3767136 e!3767132)))

(declare-fun c!1115546 () Bool)

(assert (=> b!6185328 (= c!1115546 ((_ is Union!16121) (regOne!32754 r!7292)))))

(declare-fun b!6185329 () Bool)

(declare-fun e!3767133 () Bool)

(assert (=> b!6185329 (= e!3767136 e!3767133)))

(declare-fun res!2559028 () Bool)

(assert (=> b!6185329 (= res!2559028 (not (nullable!6114 (reg!16450 (regOne!32754 r!7292)))))))

(assert (=> b!6185329 (=> (not res!2559028) (not e!3767133))))

(declare-fun b!6185330 () Bool)

(declare-fun call!516935 () Bool)

(assert (=> b!6185330 (= e!3767133 call!516935)))

(declare-fun bm!516928 () Bool)

(declare-fun call!516933 () Bool)

(assert (=> bm!516928 (= call!516933 (validRegex!7857 (ite c!1115546 (regOne!32755 (regOne!32754 r!7292)) (regOne!32754 (regOne!32754 r!7292)))))))

(declare-fun b!6185331 () Bool)

(declare-fun e!3767137 () Bool)

(declare-fun e!3767138 () Bool)

(assert (=> b!6185331 (= e!3767137 e!3767138)))

(declare-fun res!2559032 () Bool)

(assert (=> b!6185331 (=> (not res!2559032) (not e!3767138))))

(assert (=> b!6185331 (= res!2559032 call!516933)))

(declare-fun d!1939182 () Bool)

(declare-fun res!2559031 () Bool)

(declare-fun e!3767135 () Bool)

(assert (=> d!1939182 (=> res!2559031 e!3767135)))

(assert (=> d!1939182 (= res!2559031 ((_ is ElementMatch!16121) (regOne!32754 r!7292)))))

(assert (=> d!1939182 (= (validRegex!7857 (regOne!32754 r!7292)) e!3767135)))

(declare-fun b!6185332 () Bool)

(declare-fun call!516934 () Bool)

(assert (=> b!6185332 (= e!3767138 call!516934)))

(declare-fun bm!516929 () Bool)

(declare-fun c!1115547 () Bool)

(assert (=> bm!516929 (= call!516935 (validRegex!7857 (ite c!1115547 (reg!16450 (regOne!32754 r!7292)) (ite c!1115546 (regTwo!32755 (regOne!32754 r!7292)) (regTwo!32754 (regOne!32754 r!7292))))))))

(declare-fun b!6185333 () Bool)

(declare-fun res!2559029 () Bool)

(declare-fun e!3767134 () Bool)

(assert (=> b!6185333 (=> (not res!2559029) (not e!3767134))))

(assert (=> b!6185333 (= res!2559029 call!516933)))

(assert (=> b!6185333 (= e!3767132 e!3767134)))

(declare-fun bm!516930 () Bool)

(assert (=> bm!516930 (= call!516934 call!516935)))

(declare-fun b!6185334 () Bool)

(declare-fun res!2559030 () Bool)

(assert (=> b!6185334 (=> res!2559030 e!3767137)))

(assert (=> b!6185334 (= res!2559030 (not ((_ is Concat!24966) (regOne!32754 r!7292))))))

(assert (=> b!6185334 (= e!3767132 e!3767137)))

(declare-fun b!6185335 () Bool)

(assert (=> b!6185335 (= e!3767134 call!516934)))

(declare-fun b!6185336 () Bool)

(assert (=> b!6185336 (= e!3767135 e!3767136)))

(assert (=> b!6185336 (= c!1115547 ((_ is Star!16121) (regOne!32754 r!7292)))))

(assert (= (and d!1939182 (not res!2559031)) b!6185336))

(assert (= (and b!6185336 c!1115547) b!6185329))

(assert (= (and b!6185336 (not c!1115547)) b!6185328))

(assert (= (and b!6185329 res!2559028) b!6185330))

(assert (= (and b!6185328 c!1115546) b!6185333))

(assert (= (and b!6185328 (not c!1115546)) b!6185334))

(assert (= (and b!6185333 res!2559029) b!6185335))

(assert (= (and b!6185334 (not res!2559030)) b!6185331))

(assert (= (and b!6185331 res!2559032) b!6185332))

(assert (= (or b!6185335 b!6185332) bm!516930))

(assert (= (or b!6185333 b!6185331) bm!516928))

(assert (= (or b!6185330 bm!516930) bm!516929))

(declare-fun m!7020218 () Bool)

(assert (=> b!6185329 m!7020218))

(declare-fun m!7020220 () Bool)

(assert (=> bm!516928 m!7020220))

(declare-fun m!7020222 () Bool)

(assert (=> bm!516929 m!7020222))

(assert (=> d!1938982 d!1939182))

(assert (=> d!1938982 d!1938986))

(declare-fun bs!1534512 () Bool)

(declare-fun d!1939184 () Bool)

(assert (= bs!1534512 (and d!1939184 d!1938982)))

(declare-fun lambda!337664 () Int)

(assert (=> bs!1534512 (= lambda!337664 lambda!337624)))

(declare-fun bs!1534513 () Bool)

(assert (= bs!1534513 (and d!1939184 d!1938984)))

(assert (=> bs!1534513 (= lambda!337664 lambda!337629)))

(declare-fun bs!1534514 () Bool)

(assert (= bs!1534514 (and d!1939184 b!6184183)))

(assert (=> bs!1534514 (not (= lambda!337664 lambda!337584))))

(assert (=> bs!1534513 (not (= lambda!337664 lambda!337630))))

(declare-fun bs!1534515 () Bool)

(assert (= bs!1534515 (and d!1939184 b!6184741)))

(assert (=> bs!1534515 (not (= lambda!337664 lambda!337620))))

(declare-fun bs!1534516 () Bool)

(assert (= bs!1534516 (and d!1939184 b!6184740)))

(assert (=> bs!1534516 (not (= lambda!337664 lambda!337621))))

(assert (=> bs!1534514 (= lambda!337664 lambda!337583)))

(assert (=> d!1939184 true))

(assert (=> d!1939184 true))

(assert (=> d!1939184 true))

(assert (=> d!1939184 (= (isDefined!12715 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326)) (Exists!3191 lambda!337664))))

(assert (=> d!1939184 true))

(declare-fun _$89!2320 () Unit!157747)

(assert (=> d!1939184 (= (choose!45945 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326) _$89!2320)))

(declare-fun bs!1534517 () Bool)

(assert (= bs!1534517 d!1939184))

(assert (=> bs!1534517 m!7019110))

(assert (=> bs!1534517 m!7019110))

(assert (=> bs!1534517 m!7019112))

(declare-fun m!7020224 () Bool)

(assert (=> bs!1534517 m!7020224))

(assert (=> d!1938982 d!1939184))

(declare-fun d!1939186 () Bool)

(assert (=> d!1939186 (= (isEmpty!36520 (tail!11845 (unfocusZipperList!1542 zl!343))) ((_ is Nil!64538) (tail!11845 (unfocusZipperList!1542 zl!343))))))

(assert (=> b!6185017 d!1939186))

(declare-fun d!1939188 () Bool)

(assert (=> d!1939188 (= (tail!11845 (unfocusZipperList!1542 zl!343)) (t!378170 (unfocusZipperList!1542 zl!343)))))

(assert (=> b!6185017 d!1939188))

(declare-fun bs!1534518 () Bool)

(declare-fun d!1939190 () Bool)

(assert (= bs!1534518 (and d!1939190 d!1939104)))

(declare-fun lambda!337665 () Int)

(assert (=> bs!1534518 (= lambda!337665 lambda!337653)))

(declare-fun bs!1534519 () Bool)

(assert (= bs!1534519 (and d!1939190 d!1939158)))

(assert (=> bs!1534519 (= lambda!337665 lambda!337657)))

(declare-fun bs!1534520 () Bool)

(assert (= bs!1534520 (and d!1939190 d!1939160)))

(assert (=> bs!1534520 (= lambda!337665 lambda!337658)))

(declare-fun bs!1534521 () Bool)

(assert (= bs!1534521 (and d!1939190 d!1939176)))

(assert (=> bs!1534521 (= lambda!337665 lambda!337661)))

(assert (=> d!1939190 (= (nullableZipper!1900 lt!2339240) (exists!2463 lt!2339240 lambda!337665))))

(declare-fun bs!1534522 () Bool)

(assert (= bs!1534522 d!1939190))

(declare-fun m!7020226 () Bool)

(assert (=> bs!1534522 m!7020226))

(assert (=> b!6184607 d!1939190))

(declare-fun d!1939192 () Bool)

(declare-fun c!1115548 () Bool)

(assert (=> d!1939192 (= c!1115548 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767141 () Bool)

(assert (=> d!1939192 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339236 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767141)))

(declare-fun b!6185341 () Bool)

(assert (=> b!6185341 (= e!3767141 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339236 (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185342 () Bool)

(assert (=> b!6185342 (= e!3767141 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339236 (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939192 c!1115548) b!6185341))

(assert (= (and d!1939192 (not c!1115548)) b!6185342))

(assert (=> d!1939192 m!7019489))

(assert (=> d!1939192 m!7020180))

(assert (=> b!6185341 m!7019580))

(declare-fun m!7020228 () Bool)

(assert (=> b!6185341 m!7020228))

(assert (=> b!6185342 m!7019489))

(assert (=> b!6185342 m!7020184))

(assert (=> b!6185342 m!7019580))

(assert (=> b!6185342 m!7020184))

(declare-fun m!7020230 () Bool)

(assert (=> b!6185342 m!7020230))

(assert (=> b!6185342 m!7019489))

(assert (=> b!6185342 m!7020188))

(assert (=> b!6185342 m!7020230))

(assert (=> b!6185342 m!7020188))

(declare-fun m!7020232 () Bool)

(assert (=> b!6185342 m!7020232))

(assert (=> b!6184612 d!1939192))

(declare-fun bs!1534523 () Bool)

(declare-fun d!1939194 () Bool)

(assert (= bs!1534523 (and d!1939194 b!6184187)))

(declare-fun lambda!337666 () Int)

(assert (=> bs!1534523 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337666 lambda!337585))))

(declare-fun bs!1534524 () Bool)

(assert (= bs!1534524 (and d!1939194 d!1939086)))

(assert (=> bs!1534524 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337666 lambda!337649))))

(declare-fun bs!1534525 () Bool)

(assert (= bs!1534525 (and d!1939194 d!1939090)))

(assert (=> bs!1534525 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337666 lambda!337650))))

(declare-fun bs!1534526 () Bool)

(assert (= bs!1534526 (and d!1939194 d!1939166)))

(assert (=> bs!1534526 (= lambda!337666 lambda!337659)))

(assert (=> d!1939194 true))

(assert (=> d!1939194 (= (derivationStepZipper!2092 lt!2339236 (head!12759 (t!378172 s!2326))) (flatMap!1626 lt!2339236 lambda!337666))))

(declare-fun bs!1534527 () Bool)

(assert (= bs!1534527 d!1939194))

(declare-fun m!7020234 () Bool)

(assert (=> bs!1534527 m!7020234))

(assert (=> b!6184612 d!1939194))

(assert (=> b!6184612 d!1939168))

(assert (=> b!6184612 d!1939170))

(declare-fun d!1939196 () Bool)

(declare-fun res!2559037 () Bool)

(declare-fun e!3767142 () Bool)

(assert (=> d!1939196 (=> res!2559037 e!3767142)))

(assert (=> d!1939196 (= res!2559037 ((_ is Nil!64538) (exprs!6005 setElem!41932)))))

(assert (=> d!1939196 (= (forall!15240 (exprs!6005 setElem!41932) lambda!337637) e!3767142)))

(declare-fun b!6185343 () Bool)

(declare-fun e!3767143 () Bool)

(assert (=> b!6185343 (= e!3767142 e!3767143)))

(declare-fun res!2559038 () Bool)

(assert (=> b!6185343 (=> (not res!2559038) (not e!3767143))))

(assert (=> b!6185343 (= res!2559038 (dynLambda!25453 lambda!337637 (h!70986 (exprs!6005 setElem!41932))))))

(declare-fun b!6185344 () Bool)

(assert (=> b!6185344 (= e!3767143 (forall!15240 (t!378170 (exprs!6005 setElem!41932)) lambda!337637))))

(assert (= (and d!1939196 (not res!2559037)) b!6185343))

(assert (= (and b!6185343 res!2559038) b!6185344))

(declare-fun b_lambda!235371 () Bool)

(assert (=> (not b_lambda!235371) (not b!6185343)))

(declare-fun m!7020236 () Bool)

(assert (=> b!6185343 m!7020236))

(declare-fun m!7020238 () Bool)

(assert (=> b!6185344 m!7020238))

(assert (=> d!1939000 d!1939196))

(declare-fun d!1939198 () Bool)

(assert (=> d!1939198 (= (isEmpty!36520 (t!378170 (unfocusZipperList!1542 zl!343))) ((_ is Nil!64538) (t!378170 (unfocusZipperList!1542 zl!343))))))

(assert (=> b!6185021 d!1939198))

(declare-fun d!1939200 () Bool)

(declare-fun c!1115551 () Bool)

(assert (=> d!1939200 (= c!1115551 ((_ is Nil!64539) lt!2339327))))

(declare-fun e!3767146 () (InoxSet Context!11010))

(assert (=> d!1939200 (= (content!12052 lt!2339327) e!3767146)))

(declare-fun b!6185349 () Bool)

(assert (=> b!6185349 (= e!3767146 ((as const (Array Context!11010 Bool)) false))))

(declare-fun b!6185350 () Bool)

(assert (=> b!6185350 (= e!3767146 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) (h!70987 lt!2339327) true) (content!12052 (t!378171 lt!2339327))))))

(assert (= (and d!1939200 c!1115551) b!6185349))

(assert (= (and d!1939200 (not c!1115551)) b!6185350))

(declare-fun m!7020240 () Bool)

(assert (=> b!6185350 m!7020240))

(declare-fun m!7020242 () Bool)

(assert (=> b!6185350 m!7020242))

(assert (=> b!6184586 d!1939200))

(declare-fun d!1939202 () Bool)

(declare-fun c!1115552 () Bool)

(assert (=> d!1939202 (= c!1115552 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun e!3767147 () Bool)

(assert (=> d!1939202 (= (matchZipper!2133 (derivationStepZipper!2092 z!1189 (head!12759 s!2326)) (tail!11844 s!2326)) e!3767147)))

(declare-fun b!6185351 () Bool)

(assert (=> b!6185351 (= e!3767147 (nullableZipper!1900 (derivationStepZipper!2092 z!1189 (head!12759 s!2326))))))

(declare-fun b!6185352 () Bool)

(assert (=> b!6185352 (= e!3767147 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 z!1189 (head!12759 s!2326)) (head!12759 (tail!11844 s!2326))) (tail!11844 (tail!11844 s!2326))))))

(assert (= (and d!1939202 c!1115552) b!6185351))

(assert (= (and d!1939202 (not c!1115552)) b!6185352))

(assert (=> d!1939202 m!7019662))

(assert (=> d!1939202 m!7019664))

(assert (=> b!6185351 m!7019916))

(declare-fun m!7020244 () Bool)

(assert (=> b!6185351 m!7020244))

(assert (=> b!6185352 m!7019662))

(assert (=> b!6185352 m!7019988))

(assert (=> b!6185352 m!7019916))

(assert (=> b!6185352 m!7019988))

(declare-fun m!7020246 () Bool)

(assert (=> b!6185352 m!7020246))

(assert (=> b!6185352 m!7019662))

(assert (=> b!6185352 m!7019992))

(assert (=> b!6185352 m!7020246))

(assert (=> b!6185352 m!7019992))

(declare-fun m!7020248 () Bool)

(assert (=> b!6185352 m!7020248))

(assert (=> b!6185058 d!1939202))

(declare-fun bs!1534528 () Bool)

(declare-fun d!1939204 () Bool)

(assert (= bs!1534528 (and d!1939204 d!1939086)))

(declare-fun lambda!337667 () Int)

(assert (=> bs!1534528 (= lambda!337667 lambda!337649)))

(declare-fun bs!1534529 () Bool)

(assert (= bs!1534529 (and d!1939204 d!1939166)))

(assert (=> bs!1534529 (= (= (head!12759 s!2326) (head!12759 (t!378172 s!2326))) (= lambda!337667 lambda!337659))))

(declare-fun bs!1534530 () Bool)

(assert (= bs!1534530 (and d!1939204 d!1939090)))

(assert (=> bs!1534530 (= lambda!337667 lambda!337650)))

(declare-fun bs!1534531 () Bool)

(assert (= bs!1534531 (and d!1939204 b!6184187)))

(assert (=> bs!1534531 (= (= (head!12759 s!2326) (h!70988 s!2326)) (= lambda!337667 lambda!337585))))

(declare-fun bs!1534532 () Bool)

(assert (= bs!1534532 (and d!1939204 d!1939194)))

(assert (=> bs!1534532 (= (= (head!12759 s!2326) (head!12759 (t!378172 s!2326))) (= lambda!337667 lambda!337666))))

(assert (=> d!1939204 true))

(assert (=> d!1939204 (= (derivationStepZipper!2092 z!1189 (head!12759 s!2326)) (flatMap!1626 z!1189 lambda!337667))))

(declare-fun bs!1534533 () Bool)

(assert (= bs!1534533 d!1939204))

(declare-fun m!7020250 () Bool)

(assert (=> bs!1534533 m!7020250))

(assert (=> b!6185058 d!1939204))

(assert (=> b!6185058 d!1939082))

(assert (=> b!6185058 d!1939076))

(assert (=> d!1938970 d!1938968))

(assert (=> d!1938970 d!1938950))

(declare-fun d!1939206 () Bool)

(assert (=> d!1939206 (= (matchR!8304 r!7292 s!2326) (matchRSpec!3222 r!7292 s!2326))))

(assert (=> d!1939206 true))

(declare-fun _$88!4758 () Unit!157747)

(assert (=> d!1939206 (= (choose!45942 r!7292 s!2326) _$88!4758)))

(declare-fun bs!1534534 () Bool)

(assert (= bs!1534534 d!1939206))

(assert (=> bs!1534534 m!7019194))

(assert (=> bs!1534534 m!7019192))

(assert (=> d!1938970 d!1939206))

(assert (=> d!1938970 d!1938988))

(declare-fun bs!1534535 () Bool)

(declare-fun d!1939208 () Bool)

(assert (= bs!1534535 (and d!1939208 d!1939176)))

(declare-fun lambda!337668 () Int)

(assert (=> bs!1534535 (= lambda!337668 lambda!337661)))

(declare-fun bs!1534536 () Bool)

(assert (= bs!1534536 (and d!1939208 d!1939160)))

(assert (=> bs!1534536 (= lambda!337668 lambda!337658)))

(declare-fun bs!1534537 () Bool)

(assert (= bs!1534537 (and d!1939208 d!1939190)))

(assert (=> bs!1534537 (= lambda!337668 lambda!337665)))

(declare-fun bs!1534538 () Bool)

(assert (= bs!1534538 (and d!1939208 d!1939158)))

(assert (=> bs!1534538 (= lambda!337668 lambda!337657)))

(declare-fun bs!1534539 () Bool)

(assert (= bs!1534539 (and d!1939208 d!1939104)))

(assert (=> bs!1534539 (= lambda!337668 lambda!337653)))

(assert (=> d!1939208 (= (nullableZipper!1900 lt!2339229) (exists!2463 lt!2339229 lambda!337668))))

(declare-fun bs!1534540 () Bool)

(assert (= bs!1534540 d!1939208))

(declare-fun m!7020252 () Bool)

(assert (=> bs!1534540 m!7020252))

(assert (=> b!6184599 d!1939208))

(assert (=> b!6184784 d!1939074))

(assert (=> b!6184784 d!1939076))

(assert (=> d!1939044 d!1939138))

(declare-fun b!6185353 () Bool)

(declare-fun e!3767152 () Bool)

(declare-fun e!3767150 () Bool)

(assert (=> b!6185353 (= e!3767152 e!3767150)))

(declare-fun c!1115553 () Bool)

(assert (=> b!6185353 (= c!1115553 ((_ is EmptyLang!16121) (regTwo!32754 r!7292)))))

(declare-fun bm!516931 () Bool)

(declare-fun call!516936 () Bool)

(assert (=> bm!516931 (= call!516936 (isEmpty!36523 (_2!36403 (get!22280 lt!2339352))))))

(declare-fun b!6185354 () Bool)

(declare-fun e!3767153 () Bool)

(assert (=> b!6185354 (= e!3767153 (not (= (head!12759 (_2!36403 (get!22280 lt!2339352))) (c!1115220 (regTwo!32754 r!7292)))))))

(declare-fun b!6185355 () Bool)

(declare-fun e!3767149 () Bool)

(assert (=> b!6185355 (= e!3767149 e!3767153)))

(declare-fun res!2559045 () Bool)

(assert (=> b!6185355 (=> res!2559045 e!3767153)))

(assert (=> b!6185355 (= res!2559045 call!516936)))

(declare-fun b!6185356 () Bool)

(declare-fun e!3767148 () Bool)

(assert (=> b!6185356 (= e!3767148 (= (head!12759 (_2!36403 (get!22280 lt!2339352))) (c!1115220 (regTwo!32754 r!7292))))))

(declare-fun d!1939210 () Bool)

(assert (=> d!1939210 e!3767152))

(declare-fun c!1115554 () Bool)

(assert (=> d!1939210 (= c!1115554 ((_ is EmptyExpr!16121) (regTwo!32754 r!7292)))))

(declare-fun lt!2339405 () Bool)

(declare-fun e!3767154 () Bool)

(assert (=> d!1939210 (= lt!2339405 e!3767154)))

(declare-fun c!1115555 () Bool)

(assert (=> d!1939210 (= c!1115555 (isEmpty!36523 (_2!36403 (get!22280 lt!2339352))))))

(assert (=> d!1939210 (validRegex!7857 (regTwo!32754 r!7292))))

(assert (=> d!1939210 (= (matchR!8304 (regTwo!32754 r!7292) (_2!36403 (get!22280 lt!2339352))) lt!2339405)))

(declare-fun b!6185357 () Bool)

(declare-fun res!2559040 () Bool)

(declare-fun e!3767151 () Bool)

(assert (=> b!6185357 (=> res!2559040 e!3767151)))

(assert (=> b!6185357 (= res!2559040 (not ((_ is ElementMatch!16121) (regTwo!32754 r!7292))))))

(assert (=> b!6185357 (= e!3767150 e!3767151)))

(declare-fun b!6185358 () Bool)

(declare-fun res!2559046 () Bool)

(assert (=> b!6185358 (=> (not res!2559046) (not e!3767148))))

(assert (=> b!6185358 (= res!2559046 (isEmpty!36523 (tail!11844 (_2!36403 (get!22280 lt!2339352)))))))

(declare-fun b!6185359 () Bool)

(declare-fun res!2559043 () Bool)

(assert (=> b!6185359 (=> res!2559043 e!3767153)))

(assert (=> b!6185359 (= res!2559043 (not (isEmpty!36523 (tail!11844 (_2!36403 (get!22280 lt!2339352))))))))

(declare-fun b!6185360 () Bool)

(assert (=> b!6185360 (= e!3767152 (= lt!2339405 call!516936))))

(declare-fun b!6185361 () Bool)

(declare-fun res!2559039 () Bool)

(assert (=> b!6185361 (=> res!2559039 e!3767151)))

(assert (=> b!6185361 (= res!2559039 e!3767148)))

(declare-fun res!2559042 () Bool)

(assert (=> b!6185361 (=> (not res!2559042) (not e!3767148))))

(assert (=> b!6185361 (= res!2559042 lt!2339405)))

(declare-fun b!6185362 () Bool)

(assert (=> b!6185362 (= e!3767154 (matchR!8304 (derivativeStep!4838 (regTwo!32754 r!7292) (head!12759 (_2!36403 (get!22280 lt!2339352)))) (tail!11844 (_2!36403 (get!22280 lt!2339352)))))))

(declare-fun b!6185363 () Bool)

(assert (=> b!6185363 (= e!3767150 (not lt!2339405))))

(declare-fun b!6185364 () Bool)

(declare-fun res!2559044 () Bool)

(assert (=> b!6185364 (=> (not res!2559044) (not e!3767148))))

(assert (=> b!6185364 (= res!2559044 (not call!516936))))

(declare-fun b!6185365 () Bool)

(assert (=> b!6185365 (= e!3767151 e!3767149)))

(declare-fun res!2559041 () Bool)

(assert (=> b!6185365 (=> (not res!2559041) (not e!3767149))))

(assert (=> b!6185365 (= res!2559041 (not lt!2339405))))

(declare-fun b!6185366 () Bool)

(assert (=> b!6185366 (= e!3767154 (nullable!6114 (regTwo!32754 r!7292)))))

(assert (= (and d!1939210 c!1115555) b!6185366))

(assert (= (and d!1939210 (not c!1115555)) b!6185362))

(assert (= (and d!1939210 c!1115554) b!6185360))

(assert (= (and d!1939210 (not c!1115554)) b!6185353))

(assert (= (and b!6185353 c!1115553) b!6185363))

(assert (= (and b!6185353 (not c!1115553)) b!6185357))

(assert (= (and b!6185357 (not res!2559040)) b!6185361))

(assert (= (and b!6185361 res!2559042) b!6185364))

(assert (= (and b!6185364 res!2559044) b!6185358))

(assert (= (and b!6185358 res!2559046) b!6185356))

(assert (= (and b!6185361 (not res!2559039)) b!6185365))

(assert (= (and b!6185365 res!2559041) b!6185355))

(assert (= (and b!6185355 (not res!2559045)) b!6185359))

(assert (= (and b!6185359 (not res!2559043)) b!6185354))

(assert (= (or b!6185360 b!6185355 b!6185364) bm!516931))

(declare-fun m!7020254 () Bool)

(assert (=> d!1939210 m!7020254))

(declare-fun m!7020256 () Bool)

(assert (=> d!1939210 m!7020256))

(assert (=> bm!516931 m!7020254))

(declare-fun m!7020258 () Bool)

(assert (=> b!6185359 m!7020258))

(assert (=> b!6185359 m!7020258))

(declare-fun m!7020260 () Bool)

(assert (=> b!6185359 m!7020260))

(declare-fun m!7020262 () Bool)

(assert (=> b!6185362 m!7020262))

(assert (=> b!6185362 m!7020262))

(declare-fun m!7020264 () Bool)

(assert (=> b!6185362 m!7020264))

(assert (=> b!6185362 m!7020258))

(assert (=> b!6185362 m!7020264))

(assert (=> b!6185362 m!7020258))

(declare-fun m!7020266 () Bool)

(assert (=> b!6185362 m!7020266))

(declare-fun m!7020268 () Bool)

(assert (=> b!6185366 m!7020268))

(assert (=> b!6185356 m!7020262))

(assert (=> b!6185358 m!7020258))

(assert (=> b!6185358 m!7020258))

(assert (=> b!6185358 m!7020260))

(assert (=> b!6185354 m!7020262))

(assert (=> b!6184813 d!1939210))

(declare-fun d!1939212 () Bool)

(assert (=> d!1939212 (= (get!22280 lt!2339352) (v!52154 lt!2339352))))

(assert (=> b!6184813 d!1939212))

(declare-fun bs!1534541 () Bool)

(declare-fun d!1939214 () Bool)

(assert (= bs!1534541 (and d!1939214 d!1939154)))

(declare-fun lambda!337669 () Int)

(assert (=> bs!1534541 (= lambda!337669 lambda!337656)))

(declare-fun bs!1534542 () Bool)

(assert (= bs!1534542 (and d!1939214 d!1939032)))

(assert (=> bs!1534542 (= lambda!337669 lambda!337645)))

(declare-fun bs!1534543 () Bool)

(assert (= bs!1534543 (and d!1939214 d!1939000)))

(assert (=> bs!1534543 (= lambda!337669 lambda!337637)))

(declare-fun bs!1534544 () Bool)

(assert (= bs!1534544 (and d!1939214 d!1939002)))

(assert (=> bs!1534544 (= lambda!337669 lambda!337638)))

(declare-fun bs!1534545 () Bool)

(assert (= bs!1534545 (and d!1939214 d!1939028)))

(assert (=> bs!1534545 (= lambda!337669 lambda!337639)))

(declare-fun bs!1534546 () Bool)

(assert (= bs!1534546 (and d!1939214 d!1939150)))

(assert (=> bs!1534546 (= lambda!337669 lambda!337655)))

(declare-fun bs!1534547 () Bool)

(assert (= bs!1534547 (and d!1939214 d!1939078)))

(assert (=> bs!1534547 (= lambda!337669 lambda!337646)))

(declare-fun bs!1534548 () Bool)

(assert (= bs!1534548 (and d!1939214 d!1938996)))

(assert (=> bs!1534548 (= lambda!337669 lambda!337633)))

(declare-fun bs!1534549 () Bool)

(assert (= bs!1534549 (and d!1939214 d!1939030)))

(assert (=> bs!1534549 (= lambda!337669 lambda!337642)))

(declare-fun bs!1534550 () Bool)

(assert (= bs!1534550 (and d!1939214 d!1939172)))

(assert (=> bs!1534550 (= lambda!337669 lambda!337660)))

(declare-fun bs!1534551 () Bool)

(assert (= bs!1534551 (and d!1939214 d!1939134)))

(assert (=> bs!1534551 (= lambda!337669 lambda!337654)))

(declare-fun bs!1534552 () Bool)

(assert (= bs!1534552 (and d!1939214 d!1938998)))

(assert (=> bs!1534552 (= lambda!337669 lambda!337634)))

(declare-fun b!6185367 () Bool)

(declare-fun e!3767159 () Bool)

(declare-fun e!3767156 () Bool)

(assert (=> b!6185367 (= e!3767159 e!3767156)))

(declare-fun c!1115557 () Bool)

(assert (=> b!6185367 (= c!1115557 (isEmpty!36520 (tail!11845 (t!378170 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6185368 () Bool)

(declare-fun e!3767158 () Bool)

(assert (=> b!6185368 (= e!3767158 e!3767159)))

(declare-fun c!1115558 () Bool)

(assert (=> b!6185368 (= c!1115558 (isEmpty!36520 (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185369 () Bool)

(declare-fun e!3767157 () Regex!16121)

(assert (=> b!6185369 (= e!3767157 (Concat!24966 (h!70986 (t!378170 (exprs!6005 (h!70987 zl!343)))) (generalisedConcat!1718 (t!378170 (t!378170 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun b!6185370 () Bool)

(declare-fun lt!2339406 () Regex!16121)

(assert (=> b!6185370 (= e!3767156 (= lt!2339406 (head!12760 (t!378170 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6185371 () Bool)

(assert (=> b!6185371 (= e!3767157 EmptyExpr!16121)))

(assert (=> d!1939214 e!3767158))

(declare-fun res!2559048 () Bool)

(assert (=> d!1939214 (=> (not res!2559048) (not e!3767158))))

(assert (=> d!1939214 (= res!2559048 (validRegex!7857 lt!2339406))))

(declare-fun e!3767155 () Regex!16121)

(assert (=> d!1939214 (= lt!2339406 e!3767155)))

(declare-fun c!1115556 () Bool)

(declare-fun e!3767160 () Bool)

(assert (=> d!1939214 (= c!1115556 e!3767160)))

(declare-fun res!2559047 () Bool)

(assert (=> d!1939214 (=> (not res!2559047) (not e!3767160))))

(assert (=> d!1939214 (= res!2559047 ((_ is Cons!64538) (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> d!1939214 (forall!15240 (t!378170 (exprs!6005 (h!70987 zl!343))) lambda!337669)))

(assert (=> d!1939214 (= (generalisedConcat!1718 (t!378170 (exprs!6005 (h!70987 zl!343)))) lt!2339406)))

(declare-fun b!6185372 () Bool)

(assert (=> b!6185372 (= e!3767156 (isConcat!1059 lt!2339406))))

(declare-fun b!6185373 () Bool)

(assert (=> b!6185373 (= e!3767160 (isEmpty!36520 (t!378170 (t!378170 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6185374 () Bool)

(assert (=> b!6185374 (= e!3767155 (h!70986 (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185375 () Bool)

(assert (=> b!6185375 (= e!3767155 e!3767157)))

(declare-fun c!1115559 () Bool)

(assert (=> b!6185375 (= c!1115559 ((_ is Cons!64538) (t!378170 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185376 () Bool)

(assert (=> b!6185376 (= e!3767159 (isEmptyExpr!1536 lt!2339406))))

(assert (= (and d!1939214 res!2559047) b!6185373))

(assert (= (and d!1939214 c!1115556) b!6185374))

(assert (= (and d!1939214 (not c!1115556)) b!6185375))

(assert (= (and b!6185375 c!1115559) b!6185369))

(assert (= (and b!6185375 (not c!1115559)) b!6185371))

(assert (= (and d!1939214 res!2559048) b!6185368))

(assert (= (and b!6185368 c!1115558) b!6185376))

(assert (= (and b!6185368 (not c!1115558)) b!6185367))

(assert (= (and b!6185367 c!1115557) b!6185370))

(assert (= (and b!6185367 (not c!1115557)) b!6185372))

(declare-fun m!7020270 () Bool)

(assert (=> b!6185376 m!7020270))

(declare-fun m!7020272 () Bool)

(assert (=> b!6185369 m!7020272))

(declare-fun m!7020274 () Bool)

(assert (=> b!6185367 m!7020274))

(assert (=> b!6185367 m!7020274))

(declare-fun m!7020276 () Bool)

(assert (=> b!6185367 m!7020276))

(declare-fun m!7020278 () Bool)

(assert (=> b!6185373 m!7020278))

(declare-fun m!7020280 () Bool)

(assert (=> b!6185372 m!7020280))

(assert (=> b!6185368 m!7019148))

(declare-fun m!7020282 () Bool)

(assert (=> b!6185370 m!7020282))

(declare-fun m!7020284 () Bool)

(assert (=> d!1939214 m!7020284))

(declare-fun m!7020286 () Bool)

(assert (=> d!1939214 m!7020286))

(assert (=> b!6184987 d!1939214))

(declare-fun bm!516936 () Bool)

(declare-fun call!516942 () Bool)

(declare-fun c!1115562 () Bool)

(assert (=> bm!516936 (= call!516942 (nullable!6114 (ite c!1115562 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun d!1939216 () Bool)

(declare-fun res!2559061 () Bool)

(declare-fun e!3767176 () Bool)

(assert (=> d!1939216 (=> res!2559061 e!3767176)))

(assert (=> d!1939216 (= res!2559061 ((_ is EmptyExpr!16121) (regOne!32755 (regOne!32754 r!7292))))))

(assert (=> d!1939216 (= (nullableFct!2075 (regOne!32755 (regOne!32754 r!7292))) e!3767176)))

(declare-fun b!6185391 () Bool)

(declare-fun e!3767173 () Bool)

(declare-fun call!516941 () Bool)

(assert (=> b!6185391 (= e!3767173 call!516941)))

(declare-fun b!6185392 () Bool)

(declare-fun e!3767178 () Bool)

(assert (=> b!6185392 (= e!3767178 call!516941)))

(declare-fun b!6185393 () Bool)

(declare-fun e!3767174 () Bool)

(declare-fun e!3767175 () Bool)

(assert (=> b!6185393 (= e!3767174 e!3767175)))

(declare-fun res!2559062 () Bool)

(assert (=> b!6185393 (=> res!2559062 e!3767175)))

(assert (=> b!6185393 (= res!2559062 ((_ is Star!16121) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun bm!516937 () Bool)

(assert (=> bm!516937 (= call!516941 (nullable!6114 (ite c!1115562 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun b!6185394 () Bool)

(declare-fun e!3767177 () Bool)

(assert (=> b!6185394 (= e!3767175 e!3767177)))

(assert (=> b!6185394 (= c!1115562 ((_ is Union!16121) (regOne!32755 (regOne!32754 r!7292))))))

(declare-fun b!6185395 () Bool)

(assert (=> b!6185395 (= e!3767177 e!3767173)))

(declare-fun res!2559060 () Bool)

(assert (=> b!6185395 (= res!2559060 call!516942)))

(assert (=> b!6185395 (=> (not res!2559060) (not e!3767173))))

(declare-fun b!6185396 () Bool)

(assert (=> b!6185396 (= e!3767176 e!3767174)))

(declare-fun res!2559059 () Bool)

(assert (=> b!6185396 (=> (not res!2559059) (not e!3767174))))

(assert (=> b!6185396 (= res!2559059 (and (not ((_ is EmptyLang!16121) (regOne!32755 (regOne!32754 r!7292)))) (not ((_ is ElementMatch!16121) (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun b!6185397 () Bool)

(assert (=> b!6185397 (= e!3767177 e!3767178)))

(declare-fun res!2559063 () Bool)

(assert (=> b!6185397 (= res!2559063 call!516942)))

(assert (=> b!6185397 (=> res!2559063 e!3767178)))

(assert (= (and d!1939216 (not res!2559061)) b!6185396))

(assert (= (and b!6185396 res!2559059) b!6185393))

(assert (= (and b!6185393 (not res!2559062)) b!6185394))

(assert (= (and b!6185394 c!1115562) b!6185397))

(assert (= (and b!6185394 (not c!1115562)) b!6185395))

(assert (= (and b!6185397 (not res!2559063)) b!6185392))

(assert (= (and b!6185395 res!2559060) b!6185391))

(assert (= (or b!6185392 b!6185391) bm!516937))

(assert (= (or b!6185397 b!6185395) bm!516936))

(declare-fun m!7020288 () Bool)

(assert (=> bm!516936 m!7020288))

(declare-fun m!7020290 () Bool)

(assert (=> bm!516937 m!7020290))

(assert (=> d!1939050 d!1939216))

(declare-fun bm!516938 () Bool)

(declare-fun call!516944 () Bool)

(declare-fun c!1115563 () Bool)

(assert (=> bm!516938 (= call!516944 (nullable!6114 (ite c!1115563 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun d!1939218 () Bool)

(declare-fun res!2559066 () Bool)

(declare-fun e!3767182 () Bool)

(assert (=> d!1939218 (=> res!2559066 e!3767182)))

(assert (=> d!1939218 (= res!2559066 ((_ is EmptyExpr!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> d!1939218 (= (nullableFct!2075 (h!70986 (exprs!6005 (h!70987 zl!343)))) e!3767182)))

(declare-fun b!6185398 () Bool)

(declare-fun e!3767179 () Bool)

(declare-fun call!516943 () Bool)

(assert (=> b!6185398 (= e!3767179 call!516943)))

(declare-fun b!6185399 () Bool)

(declare-fun e!3767184 () Bool)

(assert (=> b!6185399 (= e!3767184 call!516943)))

(declare-fun b!6185400 () Bool)

(declare-fun e!3767180 () Bool)

(declare-fun e!3767181 () Bool)

(assert (=> b!6185400 (= e!3767180 e!3767181)))

(declare-fun res!2559067 () Bool)

(assert (=> b!6185400 (=> res!2559067 e!3767181)))

(assert (=> b!6185400 (= res!2559067 ((_ is Star!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun bm!516939 () Bool)

(assert (=> bm!516939 (= call!516943 (nullable!6114 (ite c!1115563 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun b!6185401 () Bool)

(declare-fun e!3767183 () Bool)

(assert (=> b!6185401 (= e!3767181 e!3767183)))

(assert (=> b!6185401 (= c!1115563 ((_ is Union!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185402 () Bool)

(assert (=> b!6185402 (= e!3767183 e!3767179)))

(declare-fun res!2559065 () Bool)

(assert (=> b!6185402 (= res!2559065 call!516944)))

(assert (=> b!6185402 (=> (not res!2559065) (not e!3767179))))

(declare-fun b!6185403 () Bool)

(assert (=> b!6185403 (= e!3767182 e!3767180)))

(declare-fun res!2559064 () Bool)

(assert (=> b!6185403 (=> (not res!2559064) (not e!3767180))))

(assert (=> b!6185403 (= res!2559064 (and (not ((_ is EmptyLang!16121) (h!70986 (exprs!6005 (h!70987 zl!343))))) (not ((_ is ElementMatch!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun b!6185404 () Bool)

(assert (=> b!6185404 (= e!3767183 e!3767184)))

(declare-fun res!2559068 () Bool)

(assert (=> b!6185404 (= res!2559068 call!516944)))

(assert (=> b!6185404 (=> res!2559068 e!3767184)))

(assert (= (and d!1939218 (not res!2559066)) b!6185403))

(assert (= (and b!6185403 res!2559064) b!6185400))

(assert (= (and b!6185400 (not res!2559067)) b!6185401))

(assert (= (and b!6185401 c!1115563) b!6185404))

(assert (= (and b!6185401 (not c!1115563)) b!6185402))

(assert (= (and b!6185404 (not res!2559068)) b!6185399))

(assert (= (and b!6185402 res!2559065) b!6185398))

(assert (= (or b!6185399 b!6185398) bm!516939))

(assert (= (or b!6185404 b!6185402) bm!516938))

(declare-fun m!7020292 () Bool)

(assert (=> bm!516938 m!7020292))

(declare-fun m!7020294 () Bool)

(assert (=> bm!516939 m!7020294))

(assert (=> d!1939006 d!1939218))

(assert (=> b!6184861 d!1939082))

(declare-fun d!1939220 () Bool)

(assert (=> d!1939220 (= ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115470 c!1115474) (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (regOne!32755 (regOne!32754 r!7292)))) (Cons!64538 (ite (or c!1115470 c!1115474) (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (regOne!32755 (regOne!32754 r!7292))) (exprs!6005 lt!2339239)))))

(assert (=> bm!516889 d!1939220))

(declare-fun d!1939222 () Bool)

(assert (=> d!1939222 (= (isDefined!12715 lt!2339352) (not (isEmpty!36524 lt!2339352)))))

(declare-fun bs!1534553 () Bool)

(assert (= bs!1534553 d!1939222))

(declare-fun m!7020296 () Bool)

(assert (=> bs!1534553 m!7020296))

(assert (=> b!6184817 d!1939222))

(declare-fun bs!1534554 () Bool)

(declare-fun b!6185407 () Bool)

(assert (= bs!1534554 (and b!6185407 d!1938982)))

(declare-fun lambda!337670 () Int)

(assert (=> bs!1534554 (not (= lambda!337670 lambda!337624))))

(declare-fun bs!1534555 () Bool)

(assert (= bs!1534555 (and b!6185407 d!1938984)))

(assert (=> bs!1534555 (not (= lambda!337670 lambda!337629))))

(declare-fun bs!1534556 () Bool)

(assert (= bs!1534556 (and b!6185407 b!6184183)))

(assert (=> bs!1534556 (not (= lambda!337670 lambda!337584))))

(assert (=> bs!1534555 (not (= lambda!337670 lambda!337630))))

(declare-fun bs!1534557 () Bool)

(assert (= bs!1534557 (and b!6185407 b!6184741)))

(assert (=> bs!1534557 (= (and (= (reg!16450 (regTwo!32755 r!7292)) (reg!16450 r!7292)) (= (regTwo!32755 r!7292) r!7292)) (= lambda!337670 lambda!337620))))

(declare-fun bs!1534558 () Bool)

(assert (= bs!1534558 (and b!6185407 b!6184740)))

(assert (=> bs!1534558 (not (= lambda!337670 lambda!337621))))

(declare-fun bs!1534559 () Bool)

(assert (= bs!1534559 (and b!6185407 d!1939184)))

(assert (=> bs!1534559 (not (= lambda!337670 lambda!337664))))

(assert (=> bs!1534556 (not (= lambda!337670 lambda!337583))))

(assert (=> b!6185407 true))

(assert (=> b!6185407 true))

(declare-fun bs!1534560 () Bool)

(declare-fun b!6185406 () Bool)

(assert (= bs!1534560 (and b!6185406 d!1938982)))

(declare-fun lambda!337671 () Int)

(assert (=> bs!1534560 (not (= lambda!337671 lambda!337624))))

(declare-fun bs!1534561 () Bool)

(assert (= bs!1534561 (and b!6185406 d!1938984)))

(assert (=> bs!1534561 (not (= lambda!337671 lambda!337629))))

(declare-fun bs!1534562 () Bool)

(assert (= bs!1534562 (and b!6185406 b!6184183)))

(assert (=> bs!1534562 (= (and (= (regOne!32754 (regTwo!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regTwo!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337671 lambda!337584))))

(declare-fun bs!1534563 () Bool)

(assert (= bs!1534563 (and b!6185406 b!6185407)))

(assert (=> bs!1534563 (not (= lambda!337671 lambda!337670))))

(assert (=> bs!1534561 (= (and (= (regOne!32754 (regTwo!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regTwo!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337671 lambda!337630))))

(declare-fun bs!1534564 () Bool)

(assert (= bs!1534564 (and b!6185406 b!6184741)))

(assert (=> bs!1534564 (not (= lambda!337671 lambda!337620))))

(declare-fun bs!1534565 () Bool)

(assert (= bs!1534565 (and b!6185406 b!6184740)))

(assert (=> bs!1534565 (= (and (= (regOne!32754 (regTwo!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regTwo!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337671 lambda!337621))))

(declare-fun bs!1534566 () Bool)

(assert (= bs!1534566 (and b!6185406 d!1939184)))

(assert (=> bs!1534566 (not (= lambda!337671 lambda!337664))))

(assert (=> bs!1534562 (not (= lambda!337671 lambda!337583))))

(assert (=> b!6185406 true))

(assert (=> b!6185406 true))

(declare-fun b!6185405 () Bool)

(declare-fun c!1115567 () Bool)

(assert (=> b!6185405 (= c!1115567 ((_ is Union!16121) (regTwo!32755 r!7292)))))

(declare-fun e!3767190 () Bool)

(declare-fun e!3767191 () Bool)

(assert (=> b!6185405 (= e!3767190 e!3767191)))

(declare-fun e!3767187 () Bool)

(declare-fun call!516945 () Bool)

(assert (=> b!6185406 (= e!3767187 call!516945)))

(declare-fun e!3767185 () Bool)

(assert (=> b!6185407 (= e!3767185 call!516945)))

(declare-fun bm!516940 () Bool)

(declare-fun call!516946 () Bool)

(assert (=> bm!516940 (= call!516946 (isEmpty!36523 s!2326))))

(declare-fun b!6185408 () Bool)

(declare-fun res!2559070 () Bool)

(assert (=> b!6185408 (=> res!2559070 e!3767185)))

(assert (=> b!6185408 (= res!2559070 call!516946)))

(assert (=> b!6185408 (= e!3767187 e!3767185)))

(declare-fun b!6185409 () Bool)

(assert (=> b!6185409 (= e!3767190 (= s!2326 (Cons!64540 (c!1115220 (regTwo!32755 r!7292)) Nil!64540)))))

(declare-fun b!6185410 () Bool)

(declare-fun e!3767189 () Bool)

(assert (=> b!6185410 (= e!3767189 call!516946)))

(declare-fun c!1115565 () Bool)

(declare-fun bm!516941 () Bool)

(assert (=> bm!516941 (= call!516945 (Exists!3191 (ite c!1115565 lambda!337670 lambda!337671)))))

(declare-fun b!6185411 () Bool)

(declare-fun c!1115566 () Bool)

(assert (=> b!6185411 (= c!1115566 ((_ is ElementMatch!16121) (regTwo!32755 r!7292)))))

(declare-fun e!3767186 () Bool)

(assert (=> b!6185411 (= e!3767186 e!3767190)))

(declare-fun d!1939224 () Bool)

(declare-fun c!1115564 () Bool)

(assert (=> d!1939224 (= c!1115564 ((_ is EmptyExpr!16121) (regTwo!32755 r!7292)))))

(assert (=> d!1939224 (= (matchRSpec!3222 (regTwo!32755 r!7292) s!2326) e!3767189)))

(declare-fun b!6185412 () Bool)

(declare-fun e!3767188 () Bool)

(assert (=> b!6185412 (= e!3767188 (matchRSpec!3222 (regTwo!32755 (regTwo!32755 r!7292)) s!2326))))

(declare-fun b!6185413 () Bool)

(assert (=> b!6185413 (= e!3767191 e!3767187)))

(assert (=> b!6185413 (= c!1115565 ((_ is Star!16121) (regTwo!32755 r!7292)))))

(declare-fun b!6185414 () Bool)

(assert (=> b!6185414 (= e!3767191 e!3767188)))

(declare-fun res!2559071 () Bool)

(assert (=> b!6185414 (= res!2559071 (matchRSpec!3222 (regOne!32755 (regTwo!32755 r!7292)) s!2326))))

(assert (=> b!6185414 (=> res!2559071 e!3767188)))

(declare-fun b!6185415 () Bool)

(assert (=> b!6185415 (= e!3767189 e!3767186)))

(declare-fun res!2559069 () Bool)

(assert (=> b!6185415 (= res!2559069 (not ((_ is EmptyLang!16121) (regTwo!32755 r!7292))))))

(assert (=> b!6185415 (=> (not res!2559069) (not e!3767186))))

(assert (= (and d!1939224 c!1115564) b!6185410))

(assert (= (and d!1939224 (not c!1115564)) b!6185415))

(assert (= (and b!6185415 res!2559069) b!6185411))

(assert (= (and b!6185411 c!1115566) b!6185409))

(assert (= (and b!6185411 (not c!1115566)) b!6185405))

(assert (= (and b!6185405 c!1115567) b!6185414))

(assert (= (and b!6185405 (not c!1115567)) b!6185413))

(assert (= (and b!6185414 (not res!2559071)) b!6185412))

(assert (= (and b!6185413 c!1115565) b!6185408))

(assert (= (and b!6185413 (not c!1115565)) b!6185406))

(assert (= (and b!6185408 (not res!2559070)) b!6185407))

(assert (= (or b!6185407 b!6185406) bm!516941))

(assert (= (or b!6185410 b!6185408) bm!516940))

(assert (=> bm!516940 m!7019654))

(declare-fun m!7020298 () Bool)

(assert (=> bm!516941 m!7020298))

(declare-fun m!7020300 () Bool)

(assert (=> b!6185412 m!7020300))

(declare-fun m!7020302 () Bool)

(assert (=> b!6185414 m!7020302))

(assert (=> b!6184746 d!1939224))

(assert (=> b!6184991 d!1938974))

(assert (=> d!1938994 d!1938990))

(assert (=> d!1938994 d!1939046))

(declare-fun d!1939226 () Bool)

(assert (=> d!1939226 (= (matchR!8304 lt!2339234 s!2326) (matchZipper!2133 lt!2339250 s!2326))))

(assert (=> d!1939226 true))

(declare-fun _$44!1557 () Unit!157747)

(assert (=> d!1939226 (= (choose!45948 lt!2339250 lt!2339227 lt!2339234 s!2326) _$44!1557)))

(declare-fun bs!1534567 () Bool)

(assert (= bs!1534567 d!1939226))

(assert (=> bs!1534567 m!7019096))

(assert (=> bs!1534567 m!7019134))

(assert (=> d!1938994 d!1939226))

(declare-fun b!6185416 () Bool)

(declare-fun e!3767196 () Bool)

(declare-fun e!3767192 () Bool)

(assert (=> b!6185416 (= e!3767196 e!3767192)))

(declare-fun c!1115568 () Bool)

(assert (=> b!6185416 (= c!1115568 ((_ is Union!16121) lt!2339234))))

(declare-fun b!6185417 () Bool)

(declare-fun e!3767193 () Bool)

(assert (=> b!6185417 (= e!3767196 e!3767193)))

(declare-fun res!2559072 () Bool)

(assert (=> b!6185417 (= res!2559072 (not (nullable!6114 (reg!16450 lt!2339234))))))

(assert (=> b!6185417 (=> (not res!2559072) (not e!3767193))))

(declare-fun b!6185418 () Bool)

(declare-fun call!516949 () Bool)

(assert (=> b!6185418 (= e!3767193 call!516949)))

(declare-fun bm!516942 () Bool)

(declare-fun call!516947 () Bool)

(assert (=> bm!516942 (= call!516947 (validRegex!7857 (ite c!1115568 (regOne!32755 lt!2339234) (regOne!32754 lt!2339234))))))

(declare-fun b!6185419 () Bool)

(declare-fun e!3767197 () Bool)

(declare-fun e!3767198 () Bool)

(assert (=> b!6185419 (= e!3767197 e!3767198)))

(declare-fun res!2559076 () Bool)

(assert (=> b!6185419 (=> (not res!2559076) (not e!3767198))))

(assert (=> b!6185419 (= res!2559076 call!516947)))

(declare-fun d!1939228 () Bool)

(declare-fun res!2559075 () Bool)

(declare-fun e!3767195 () Bool)

(assert (=> d!1939228 (=> res!2559075 e!3767195)))

(assert (=> d!1939228 (= res!2559075 ((_ is ElementMatch!16121) lt!2339234))))

(assert (=> d!1939228 (= (validRegex!7857 lt!2339234) e!3767195)))

(declare-fun b!6185420 () Bool)

(declare-fun call!516948 () Bool)

(assert (=> b!6185420 (= e!3767198 call!516948)))

(declare-fun c!1115569 () Bool)

(declare-fun bm!516943 () Bool)

(assert (=> bm!516943 (= call!516949 (validRegex!7857 (ite c!1115569 (reg!16450 lt!2339234) (ite c!1115568 (regTwo!32755 lt!2339234) (regTwo!32754 lt!2339234)))))))

(declare-fun b!6185421 () Bool)

(declare-fun res!2559073 () Bool)

(declare-fun e!3767194 () Bool)

(assert (=> b!6185421 (=> (not res!2559073) (not e!3767194))))

(assert (=> b!6185421 (= res!2559073 call!516947)))

(assert (=> b!6185421 (= e!3767192 e!3767194)))

(declare-fun bm!516944 () Bool)

(assert (=> bm!516944 (= call!516948 call!516949)))

(declare-fun b!6185422 () Bool)

(declare-fun res!2559074 () Bool)

(assert (=> b!6185422 (=> res!2559074 e!3767197)))

(assert (=> b!6185422 (= res!2559074 (not ((_ is Concat!24966) lt!2339234)))))

(assert (=> b!6185422 (= e!3767192 e!3767197)))

(declare-fun b!6185423 () Bool)

(assert (=> b!6185423 (= e!3767194 call!516948)))

(declare-fun b!6185424 () Bool)

(assert (=> b!6185424 (= e!3767195 e!3767196)))

(assert (=> b!6185424 (= c!1115569 ((_ is Star!16121) lt!2339234))))

(assert (= (and d!1939228 (not res!2559075)) b!6185424))

(assert (= (and b!6185424 c!1115569) b!6185417))

(assert (= (and b!6185424 (not c!1115569)) b!6185416))

(assert (= (and b!6185417 res!2559072) b!6185418))

(assert (= (and b!6185416 c!1115568) b!6185421))

(assert (= (and b!6185416 (not c!1115568)) b!6185422))

(assert (= (and b!6185421 res!2559073) b!6185423))

(assert (= (and b!6185422 (not res!2559074)) b!6185419))

(assert (= (and b!6185419 res!2559076) b!6185420))

(assert (= (or b!6185423 b!6185420) bm!516944))

(assert (= (or b!6185421 b!6185419) bm!516942))

(assert (= (or b!6185418 bm!516944) bm!516943))

(declare-fun m!7020304 () Bool)

(assert (=> b!6185417 m!7020304))

(declare-fun m!7020306 () Bool)

(assert (=> bm!516942 m!7020306))

(declare-fun m!7020308 () Bool)

(assert (=> bm!516943 m!7020308))

(assert (=> d!1938994 d!1939228))

(declare-fun d!1939230 () Bool)

(assert (=> d!1939230 true))

(assert (=> d!1939230 true))

(declare-fun res!2559079 () Bool)

(assert (=> d!1939230 (= (choose!45943 lambda!337583) res!2559079)))

(assert (=> d!1938976 d!1939230))

(declare-fun d!1939232 () Bool)

(assert (=> d!1939232 true))

(assert (=> d!1939232 true))

(declare-fun res!2559080 () Bool)

(assert (=> d!1939232 (= (choose!45943 lambda!337584) res!2559080)))

(assert (=> d!1938980 d!1939232))

(assert (=> b!6184865 d!1939074))

(assert (=> b!6184865 d!1939076))

(declare-fun d!1939234 () Bool)

(assert (=> d!1939234 (= (Exists!3191 lambda!337629) (choose!45943 lambda!337629))))

(declare-fun bs!1534568 () Bool)

(assert (= bs!1534568 d!1939234))

(declare-fun m!7020310 () Bool)

(assert (=> bs!1534568 m!7020310))

(assert (=> d!1938984 d!1939234))

(declare-fun d!1939236 () Bool)

(assert (=> d!1939236 (= (Exists!3191 lambda!337630) (choose!45943 lambda!337630))))

(declare-fun bs!1534569 () Bool)

(assert (= bs!1534569 d!1939236))

(declare-fun m!7020312 () Bool)

(assert (=> bs!1534569 m!7020312))

(assert (=> d!1938984 d!1939236))

(declare-fun bs!1534570 () Bool)

(declare-fun d!1939238 () Bool)

(assert (= bs!1534570 (and d!1939238 b!6185406)))

(declare-fun lambda!337676 () Int)

(assert (=> bs!1534570 (not (= lambda!337676 lambda!337671))))

(declare-fun bs!1534571 () Bool)

(assert (= bs!1534571 (and d!1939238 d!1938982)))

(assert (=> bs!1534571 (= lambda!337676 lambda!337624)))

(declare-fun bs!1534572 () Bool)

(assert (= bs!1534572 (and d!1939238 d!1938984)))

(assert (=> bs!1534572 (= lambda!337676 lambda!337629)))

(declare-fun bs!1534573 () Bool)

(assert (= bs!1534573 (and d!1939238 b!6184183)))

(assert (=> bs!1534573 (not (= lambda!337676 lambda!337584))))

(declare-fun bs!1534574 () Bool)

(assert (= bs!1534574 (and d!1939238 b!6185407)))

(assert (=> bs!1534574 (not (= lambda!337676 lambda!337670))))

(assert (=> bs!1534572 (not (= lambda!337676 lambda!337630))))

(declare-fun bs!1534575 () Bool)

(assert (= bs!1534575 (and d!1939238 b!6184741)))

(assert (=> bs!1534575 (not (= lambda!337676 lambda!337620))))

(declare-fun bs!1534576 () Bool)

(assert (= bs!1534576 (and d!1939238 b!6184740)))

(assert (=> bs!1534576 (not (= lambda!337676 lambda!337621))))

(declare-fun bs!1534577 () Bool)

(assert (= bs!1534577 (and d!1939238 d!1939184)))

(assert (=> bs!1534577 (= lambda!337676 lambda!337664)))

(assert (=> bs!1534573 (= lambda!337676 lambda!337583)))

(assert (=> d!1939238 true))

(assert (=> d!1939238 true))

(assert (=> d!1939238 true))

(declare-fun lambda!337677 () Int)

(assert (=> bs!1534570 (= (and (= (regOne!32754 r!7292) (regOne!32754 (regTwo!32755 r!7292))) (= (regTwo!32754 r!7292) (regTwo!32754 (regTwo!32755 r!7292)))) (= lambda!337677 lambda!337671))))

(assert (=> bs!1534571 (not (= lambda!337677 lambda!337624))))

(assert (=> bs!1534572 (not (= lambda!337677 lambda!337629))))

(assert (=> bs!1534573 (= lambda!337677 lambda!337584)))

(declare-fun bs!1534578 () Bool)

(assert (= bs!1534578 d!1939238))

(assert (=> bs!1534578 (not (= lambda!337677 lambda!337676))))

(assert (=> bs!1534574 (not (= lambda!337677 lambda!337670))))

(assert (=> bs!1534572 (= lambda!337677 lambda!337630)))

(assert (=> bs!1534575 (not (= lambda!337677 lambda!337620))))

(assert (=> bs!1534576 (= lambda!337677 lambda!337621)))

(assert (=> bs!1534577 (not (= lambda!337677 lambda!337664))))

(assert (=> bs!1534573 (not (= lambda!337677 lambda!337583))))

(assert (=> d!1939238 true))

(assert (=> d!1939238 true))

(assert (=> d!1939238 true))

(assert (=> d!1939238 (= (Exists!3191 lambda!337676) (Exists!3191 lambda!337677))))

(assert (=> d!1939238 true))

(declare-fun _$90!1944 () Unit!157747)

(assert (=> d!1939238 (= (choose!45946 (regOne!32754 r!7292) (regTwo!32754 r!7292) s!2326) _$90!1944)))

(declare-fun m!7020314 () Bool)

(assert (=> bs!1534578 m!7020314))

(declare-fun m!7020316 () Bool)

(assert (=> bs!1534578 m!7020316))

(assert (=> d!1938984 d!1939238))

(assert (=> d!1938984 d!1939182))

(declare-fun b!6185433 () Bool)

(declare-fun e!3767207 () Bool)

(declare-fun e!3767203 () Bool)

(assert (=> b!6185433 (= e!3767207 e!3767203)))

(declare-fun c!1115570 () Bool)

(assert (=> b!6185433 (= c!1115570 ((_ is Union!16121) (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))

(declare-fun b!6185434 () Bool)

(declare-fun e!3767204 () Bool)

(assert (=> b!6185434 (= e!3767207 e!3767204)))

(declare-fun res!2559089 () Bool)

(assert (=> b!6185434 (= res!2559089 (not (nullable!6114 (reg!16450 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))))

(assert (=> b!6185434 (=> (not res!2559089) (not e!3767204))))

(declare-fun b!6185435 () Bool)

(declare-fun call!516952 () Bool)

(assert (=> b!6185435 (= e!3767204 call!516952)))

(declare-fun bm!516945 () Bool)

(declare-fun call!516950 () Bool)

(assert (=> bm!516945 (= call!516950 (validRegex!7857 (ite c!1115570 (regOne!32755 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))) (regOne!32754 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))))

(declare-fun b!6185436 () Bool)

(declare-fun e!3767208 () Bool)

(declare-fun e!3767209 () Bool)

(assert (=> b!6185436 (= e!3767208 e!3767209)))

(declare-fun res!2559093 () Bool)

(assert (=> b!6185436 (=> (not res!2559093) (not e!3767209))))

(assert (=> b!6185436 (= res!2559093 call!516950)))

(declare-fun d!1939240 () Bool)

(declare-fun res!2559092 () Bool)

(declare-fun e!3767206 () Bool)

(assert (=> d!1939240 (=> res!2559092 e!3767206)))

(assert (=> d!1939240 (= res!2559092 ((_ is ElementMatch!16121) (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))

(assert (=> d!1939240 (= (validRegex!7857 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))) e!3767206)))

(declare-fun b!6185437 () Bool)

(declare-fun call!516951 () Bool)

(assert (=> b!6185437 (= e!3767209 call!516951)))

(declare-fun bm!516946 () Bool)

(declare-fun c!1115571 () Bool)

(assert (=> bm!516946 (= call!516952 (validRegex!7857 (ite c!1115571 (reg!16450 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))) (ite c!1115570 (regTwo!32755 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))) (regTwo!32754 (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264))))))))))

(declare-fun b!6185438 () Bool)

(declare-fun res!2559090 () Bool)

(declare-fun e!3767205 () Bool)

(assert (=> b!6185438 (=> (not res!2559090) (not e!3767205))))

(assert (=> b!6185438 (= res!2559090 call!516950)))

(assert (=> b!6185438 (= e!3767203 e!3767205)))

(declare-fun bm!516947 () Bool)

(assert (=> bm!516947 (= call!516951 call!516952)))

(declare-fun b!6185439 () Bool)

(declare-fun res!2559091 () Bool)

(assert (=> b!6185439 (=> res!2559091 e!3767208)))

(assert (=> b!6185439 (= res!2559091 (not ((_ is Concat!24966) (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264))))))))

(assert (=> b!6185439 (= e!3767203 e!3767208)))

(declare-fun b!6185440 () Bool)

(assert (=> b!6185440 (= e!3767205 call!516951)))

(declare-fun b!6185441 () Bool)

(assert (=> b!6185441 (= e!3767206 e!3767207)))

(assert (=> b!6185441 (= c!1115571 ((_ is Star!16121) (ite c!1115401 (reg!16450 lt!2339264) (ite c!1115400 (regTwo!32755 lt!2339264) (regTwo!32754 lt!2339264)))))))

(assert (= (and d!1939240 (not res!2559092)) b!6185441))

(assert (= (and b!6185441 c!1115571) b!6185434))

(assert (= (and b!6185441 (not c!1115571)) b!6185433))

(assert (= (and b!6185434 res!2559089) b!6185435))

(assert (= (and b!6185433 c!1115570) b!6185438))

(assert (= (and b!6185433 (not c!1115570)) b!6185439))

(assert (= (and b!6185438 res!2559090) b!6185440))

(assert (= (and b!6185439 (not res!2559091)) b!6185436))

(assert (= (and b!6185436 res!2559093) b!6185437))

(assert (= (or b!6185440 b!6185437) bm!516947))

(assert (= (or b!6185438 b!6185436) bm!516945))

(assert (= (or b!6185435 bm!516947) bm!516946))

(declare-fun m!7020318 () Bool)

(assert (=> b!6185434 m!7020318))

(declare-fun m!7020320 () Bool)

(assert (=> bm!516945 m!7020320))

(declare-fun m!7020322 () Bool)

(assert (=> bm!516946 m!7020322))

(assert (=> bm!516857 d!1939240))

(declare-fun d!1939242 () Bool)

(assert (=> d!1939242 (= (head!12760 lt!2339241) (h!70986 lt!2339241))))

(assert (=> b!6184916 d!1939242))

(declare-fun d!1939244 () Bool)

(assert (=> d!1939244 (= ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115438 c!1115442) (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70986 (exprs!6005 (h!70987 zl!343))))) (Cons!64538 (ite (or c!1115438 c!1115442) (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70986 (exprs!6005 (h!70987 zl!343)))) (exprs!6005 lt!2339239)))))

(assert (=> bm!516877 d!1939244))

(assert (=> d!1938978 d!1939222))

(declare-fun b!6185442 () Bool)

(declare-fun e!3767214 () Bool)

(declare-fun e!3767212 () Bool)

(assert (=> b!6185442 (= e!3767214 e!3767212)))

(declare-fun c!1115572 () Bool)

(assert (=> b!6185442 (= c!1115572 ((_ is EmptyLang!16121) (regOne!32754 r!7292)))))

(declare-fun bm!516948 () Bool)

(declare-fun call!516953 () Bool)

(assert (=> bm!516948 (= call!516953 (isEmpty!36523 Nil!64540))))

(declare-fun b!6185443 () Bool)

(declare-fun e!3767215 () Bool)

(assert (=> b!6185443 (= e!3767215 (not (= (head!12759 Nil!64540) (c!1115220 (regOne!32754 r!7292)))))))

(declare-fun b!6185444 () Bool)

(declare-fun e!3767211 () Bool)

(assert (=> b!6185444 (= e!3767211 e!3767215)))

(declare-fun res!2559100 () Bool)

(assert (=> b!6185444 (=> res!2559100 e!3767215)))

(assert (=> b!6185444 (= res!2559100 call!516953)))

(declare-fun b!6185445 () Bool)

(declare-fun e!3767210 () Bool)

(assert (=> b!6185445 (= e!3767210 (= (head!12759 Nil!64540) (c!1115220 (regOne!32754 r!7292))))))

(declare-fun d!1939246 () Bool)

(assert (=> d!1939246 e!3767214))

(declare-fun c!1115573 () Bool)

(assert (=> d!1939246 (= c!1115573 ((_ is EmptyExpr!16121) (regOne!32754 r!7292)))))

(declare-fun lt!2339407 () Bool)

(declare-fun e!3767216 () Bool)

(assert (=> d!1939246 (= lt!2339407 e!3767216)))

(declare-fun c!1115574 () Bool)

(assert (=> d!1939246 (= c!1115574 (isEmpty!36523 Nil!64540))))

(assert (=> d!1939246 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1939246 (= (matchR!8304 (regOne!32754 r!7292) Nil!64540) lt!2339407)))

(declare-fun b!6185446 () Bool)

(declare-fun res!2559095 () Bool)

(declare-fun e!3767213 () Bool)

(assert (=> b!6185446 (=> res!2559095 e!3767213)))

(assert (=> b!6185446 (= res!2559095 (not ((_ is ElementMatch!16121) (regOne!32754 r!7292))))))

(assert (=> b!6185446 (= e!3767212 e!3767213)))

(declare-fun b!6185447 () Bool)

(declare-fun res!2559101 () Bool)

(assert (=> b!6185447 (=> (not res!2559101) (not e!3767210))))

(assert (=> b!6185447 (= res!2559101 (isEmpty!36523 (tail!11844 Nil!64540)))))

(declare-fun b!6185448 () Bool)

(declare-fun res!2559098 () Bool)

(assert (=> b!6185448 (=> res!2559098 e!3767215)))

(assert (=> b!6185448 (= res!2559098 (not (isEmpty!36523 (tail!11844 Nil!64540))))))

(declare-fun b!6185449 () Bool)

(assert (=> b!6185449 (= e!3767214 (= lt!2339407 call!516953))))

(declare-fun b!6185450 () Bool)

(declare-fun res!2559094 () Bool)

(assert (=> b!6185450 (=> res!2559094 e!3767213)))

(assert (=> b!6185450 (= res!2559094 e!3767210)))

(declare-fun res!2559097 () Bool)

(assert (=> b!6185450 (=> (not res!2559097) (not e!3767210))))

(assert (=> b!6185450 (= res!2559097 lt!2339407)))

(declare-fun b!6185451 () Bool)

(assert (=> b!6185451 (= e!3767216 (matchR!8304 (derivativeStep!4838 (regOne!32754 r!7292) (head!12759 Nil!64540)) (tail!11844 Nil!64540)))))

(declare-fun b!6185452 () Bool)

(assert (=> b!6185452 (= e!3767212 (not lt!2339407))))

(declare-fun b!6185453 () Bool)

(declare-fun res!2559099 () Bool)

(assert (=> b!6185453 (=> (not res!2559099) (not e!3767210))))

(assert (=> b!6185453 (= res!2559099 (not call!516953))))

(declare-fun b!6185454 () Bool)

(assert (=> b!6185454 (= e!3767213 e!3767211)))

(declare-fun res!2559096 () Bool)

(assert (=> b!6185454 (=> (not res!2559096) (not e!3767211))))

(assert (=> b!6185454 (= res!2559096 (not lt!2339407))))

(declare-fun b!6185455 () Bool)

(assert (=> b!6185455 (= e!3767216 (nullable!6114 (regOne!32754 r!7292)))))

(assert (= (and d!1939246 c!1115574) b!6185455))

(assert (= (and d!1939246 (not c!1115574)) b!6185451))

(assert (= (and d!1939246 c!1115573) b!6185449))

(assert (= (and d!1939246 (not c!1115573)) b!6185442))

(assert (= (and b!6185442 c!1115572) b!6185452))

(assert (= (and b!6185442 (not c!1115572)) b!6185446))

(assert (= (and b!6185446 (not res!2559095)) b!6185450))

(assert (= (and b!6185450 res!2559097) b!6185453))

(assert (= (and b!6185453 res!2559099) b!6185447))

(assert (= (and b!6185447 res!2559101) b!6185445))

(assert (= (and b!6185450 (not res!2559094)) b!6185454))

(assert (= (and b!6185454 res!2559096) b!6185444))

(assert (= (and b!6185444 (not res!2559100)) b!6185448))

(assert (= (and b!6185448 (not res!2559098)) b!6185443))

(assert (= (or b!6185449 b!6185444 b!6185453) bm!516948))

(declare-fun m!7020324 () Bool)

(assert (=> d!1939246 m!7020324))

(assert (=> d!1939246 m!7019704))

(assert (=> bm!516948 m!7020324))

(declare-fun m!7020326 () Bool)

(assert (=> b!6185448 m!7020326))

(assert (=> b!6185448 m!7020326))

(declare-fun m!7020328 () Bool)

(assert (=> b!6185448 m!7020328))

(declare-fun m!7020330 () Bool)

(assert (=> b!6185451 m!7020330))

(assert (=> b!6185451 m!7020330))

(declare-fun m!7020332 () Bool)

(assert (=> b!6185451 m!7020332))

(assert (=> b!6185451 m!7020326))

(assert (=> b!6185451 m!7020332))

(assert (=> b!6185451 m!7020326))

(declare-fun m!7020334 () Bool)

(assert (=> b!6185451 m!7020334))

(assert (=> b!6185455 m!7020040))

(assert (=> b!6185445 m!7020330))

(assert (=> b!6185447 m!7020326))

(assert (=> b!6185447 m!7020326))

(assert (=> b!6185447 m!7020328))

(assert (=> b!6185443 m!7020330))

(assert (=> d!1938978 d!1939246))

(assert (=> d!1938978 d!1939182))

(declare-fun bs!1534579 () Bool)

(declare-fun d!1939248 () Bool)

(assert (= bs!1534579 (and d!1939248 d!1939176)))

(declare-fun lambda!337678 () Int)

(assert (=> bs!1534579 (= lambda!337678 lambda!337661)))

(declare-fun bs!1534580 () Bool)

(assert (= bs!1534580 (and d!1939248 d!1939160)))

(assert (=> bs!1534580 (= lambda!337678 lambda!337658)))

(declare-fun bs!1534581 () Bool)

(assert (= bs!1534581 (and d!1939248 d!1939190)))

(assert (=> bs!1534581 (= lambda!337678 lambda!337665)))

(declare-fun bs!1534582 () Bool)

(assert (= bs!1534582 (and d!1939248 d!1939158)))

(assert (=> bs!1534582 (= lambda!337678 lambda!337657)))

(declare-fun bs!1534583 () Bool)

(assert (= bs!1534583 (and d!1939248 d!1939104)))

(assert (=> bs!1534583 (= lambda!337678 lambda!337653)))

(declare-fun bs!1534584 () Bool)

(assert (= bs!1534584 (and d!1939248 d!1939208)))

(assert (=> bs!1534584 (= lambda!337678 lambda!337668)))

(assert (=> d!1939248 (= (nullableZipper!1900 lt!2339236) (exists!2463 lt!2339236 lambda!337678))))

(declare-fun bs!1534585 () Bool)

(assert (= bs!1534585 d!1939248))

(declare-fun m!7020336 () Bool)

(assert (=> bs!1534585 m!7020336))

(assert (=> b!6184611 d!1939248))

(declare-fun d!1939250 () Bool)

(declare-fun lt!2339410 () Int)

(assert (=> d!1939250 (>= lt!2339410 0)))

(declare-fun e!3767219 () Int)

(assert (=> d!1939250 (= lt!2339410 e!3767219)))

(declare-fun c!1115578 () Bool)

(assert (=> d!1939250 (= c!1115578 ((_ is Cons!64538) (exprs!6005 (h!70987 zl!343))))))

(assert (=> d!1939250 (= (contextDepthTotal!276 (h!70987 zl!343)) lt!2339410)))

(declare-fun b!6185460 () Bool)

(declare-fun regexDepthTotal!138 (Regex!16121) Int)

(assert (=> b!6185460 (= e!3767219 (+ (regexDepthTotal!138 (h!70986 (exprs!6005 (h!70987 zl!343)))) (contextDepthTotal!276 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun b!6185461 () Bool)

(assert (=> b!6185461 (= e!3767219 1)))

(assert (= (and d!1939250 c!1115578) b!6185460))

(assert (= (and d!1939250 (not c!1115578)) b!6185461))

(declare-fun m!7020338 () Bool)

(assert (=> b!6185460 m!7020338))

(declare-fun m!7020340 () Bool)

(assert (=> b!6185460 m!7020340))

(assert (=> b!6185031 d!1939250))

(declare-fun d!1939252 () Bool)

(declare-fun lt!2339411 () Int)

(assert (=> d!1939252 (>= lt!2339411 0)))

(declare-fun e!3767220 () Int)

(assert (=> d!1939252 (= lt!2339411 e!3767220)))

(declare-fun c!1115579 () Bool)

(assert (=> d!1939252 (= c!1115579 ((_ is Cons!64539) (t!378171 zl!343)))))

(assert (=> d!1939252 (= (zipperDepthTotal!304 (t!378171 zl!343)) lt!2339411)))

(declare-fun b!6185462 () Bool)

(assert (=> b!6185462 (= e!3767220 (+ (contextDepthTotal!276 (h!70987 (t!378171 zl!343))) (zipperDepthTotal!304 (t!378171 (t!378171 zl!343)))))))

(declare-fun b!6185463 () Bool)

(assert (=> b!6185463 (= e!3767220 0)))

(assert (= (and d!1939252 c!1115579) b!6185462))

(assert (= (and d!1939252 (not c!1115579)) b!6185463))

(declare-fun m!7020342 () Bool)

(assert (=> b!6185462 m!7020342))

(declare-fun m!7020344 () Bool)

(assert (=> b!6185462 m!7020344))

(assert (=> b!6185031 d!1939252))

(declare-fun d!1939254 () Bool)

(declare-fun c!1115580 () Bool)

(assert (=> d!1939254 (= c!1115580 (isEmpty!36523 (t!378172 s!2326)))))

(declare-fun e!3767221 () Bool)

(assert (=> d!1939254 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339229) (t!378172 s!2326)) e!3767221)))

(declare-fun b!6185464 () Bool)

(assert (=> b!6185464 (= e!3767221 (nullableZipper!1900 ((_ map or) lt!2339236 lt!2339229)))))

(declare-fun b!6185465 () Bool)

(assert (=> b!6185465 (= e!3767221 (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339229) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))))))

(assert (= (and d!1939254 c!1115580) b!6185464))

(assert (= (and d!1939254 (not c!1115580)) b!6185465))

(assert (=> d!1939254 m!7019476))

(declare-fun m!7020346 () Bool)

(assert (=> b!6185464 m!7020346))

(assert (=> b!6185465 m!7019482))

(assert (=> b!6185465 m!7019482))

(declare-fun m!7020348 () Bool)

(assert (=> b!6185465 m!7020348))

(assert (=> b!6185465 m!7019489))

(assert (=> b!6185465 m!7020348))

(assert (=> b!6185465 m!7019489))

(declare-fun m!7020350 () Bool)

(assert (=> b!6185465 m!7020350))

(assert (=> d!1938936 d!1939254))

(assert (=> d!1938936 d!1938932))

(declare-fun e!3767222 () Bool)

(declare-fun d!1939256 () Bool)

(assert (=> d!1939256 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339229) (t!378172 s!2326)) e!3767222)))

(declare-fun res!2559102 () Bool)

(assert (=> d!1939256 (=> res!2559102 e!3767222)))

(assert (=> d!1939256 (= res!2559102 (matchZipper!2133 lt!2339236 (t!378172 s!2326)))))

(assert (=> d!1939256 true))

(declare-fun _$48!1804 () Unit!157747)

(assert (=> d!1939256 (= (choose!45940 lt!2339236 lt!2339229 (t!378172 s!2326)) _$48!1804)))

(declare-fun b!6185466 () Bool)

(assert (=> b!6185466 (= e!3767222 (matchZipper!2133 lt!2339229 (t!378172 s!2326)))))

(assert (= (and d!1939256 (not res!2559102)) b!6185466))

(assert (=> d!1939256 m!7019588))

(assert (=> d!1939256 m!7019188))

(assert (=> b!6185466 m!7019108))

(assert (=> d!1938936 d!1939256))

(assert (=> d!1938972 d!1939138))

(declare-fun d!1939258 () Bool)

(assert (=> d!1939258 (= (head!12760 lt!2339252) (h!70986 lt!2339252))))

(assert (=> b!6184906 d!1939258))

(declare-fun b!6185467 () Bool)

(declare-fun e!3767227 () Bool)

(declare-fun e!3767223 () Bool)

(assert (=> b!6185467 (= e!3767227 e!3767223)))

(declare-fun c!1115581 () Bool)

(assert (=> b!6185467 (= c!1115581 ((_ is Union!16121) lt!2339377))))

(declare-fun b!6185468 () Bool)

(declare-fun e!3767224 () Bool)

(assert (=> b!6185468 (= e!3767227 e!3767224)))

(declare-fun res!2559103 () Bool)

(assert (=> b!6185468 (= res!2559103 (not (nullable!6114 (reg!16450 lt!2339377))))))

(assert (=> b!6185468 (=> (not res!2559103) (not e!3767224))))

(declare-fun b!6185469 () Bool)

(declare-fun call!516956 () Bool)

(assert (=> b!6185469 (= e!3767224 call!516956)))

(declare-fun bm!516949 () Bool)

(declare-fun call!516954 () Bool)

(assert (=> bm!516949 (= call!516954 (validRegex!7857 (ite c!1115581 (regOne!32755 lt!2339377) (regOne!32754 lt!2339377))))))

(declare-fun b!6185470 () Bool)

(declare-fun e!3767228 () Bool)

(declare-fun e!3767229 () Bool)

(assert (=> b!6185470 (= e!3767228 e!3767229)))

(declare-fun res!2559107 () Bool)

(assert (=> b!6185470 (=> (not res!2559107) (not e!3767229))))

(assert (=> b!6185470 (= res!2559107 call!516954)))

(declare-fun d!1939260 () Bool)

(declare-fun res!2559106 () Bool)

(declare-fun e!3767226 () Bool)

(assert (=> d!1939260 (=> res!2559106 e!3767226)))

(assert (=> d!1939260 (= res!2559106 ((_ is ElementMatch!16121) lt!2339377))))

(assert (=> d!1939260 (= (validRegex!7857 lt!2339377) e!3767226)))

(declare-fun b!6185471 () Bool)

(declare-fun call!516955 () Bool)

(assert (=> b!6185471 (= e!3767229 call!516955)))

(declare-fun c!1115582 () Bool)

(declare-fun bm!516950 () Bool)

(assert (=> bm!516950 (= call!516956 (validRegex!7857 (ite c!1115582 (reg!16450 lt!2339377) (ite c!1115581 (regTwo!32755 lt!2339377) (regTwo!32754 lt!2339377)))))))

(declare-fun b!6185472 () Bool)

(declare-fun res!2559104 () Bool)

(declare-fun e!3767225 () Bool)

(assert (=> b!6185472 (=> (not res!2559104) (not e!3767225))))

(assert (=> b!6185472 (= res!2559104 call!516954)))

(assert (=> b!6185472 (= e!3767223 e!3767225)))

(declare-fun bm!516951 () Bool)

(assert (=> bm!516951 (= call!516955 call!516956)))

(declare-fun b!6185473 () Bool)

(declare-fun res!2559105 () Bool)

(assert (=> b!6185473 (=> res!2559105 e!3767228)))

(assert (=> b!6185473 (= res!2559105 (not ((_ is Concat!24966) lt!2339377)))))

(assert (=> b!6185473 (= e!3767223 e!3767228)))

(declare-fun b!6185474 () Bool)

(assert (=> b!6185474 (= e!3767225 call!516955)))

(declare-fun b!6185475 () Bool)

(assert (=> b!6185475 (= e!3767226 e!3767227)))

(assert (=> b!6185475 (= c!1115582 ((_ is Star!16121) lt!2339377))))

(assert (= (and d!1939260 (not res!2559106)) b!6185475))

(assert (= (and b!6185475 c!1115582) b!6185468))

(assert (= (and b!6185475 (not c!1115582)) b!6185467))

(assert (= (and b!6185468 res!2559103) b!6185469))

(assert (= (and b!6185467 c!1115581) b!6185472))

(assert (= (and b!6185467 (not c!1115581)) b!6185473))

(assert (= (and b!6185472 res!2559104) b!6185474))

(assert (= (and b!6185473 (not res!2559105)) b!6185470))

(assert (= (and b!6185470 res!2559107) b!6185471))

(assert (= (or b!6185474 b!6185471) bm!516951))

(assert (= (or b!6185472 b!6185470) bm!516949))

(assert (= (or b!6185469 bm!516951) bm!516950))

(declare-fun m!7020352 () Bool)

(assert (=> b!6185468 m!7020352))

(declare-fun m!7020354 () Bool)

(assert (=> bm!516949 m!7020354))

(declare-fun m!7020356 () Bool)

(assert (=> bm!516950 m!7020356))

(assert (=> d!1939030 d!1939260))

(declare-fun d!1939262 () Bool)

(declare-fun res!2559108 () Bool)

(declare-fun e!3767230 () Bool)

(assert (=> d!1939262 (=> res!2559108 e!3767230)))

(assert (=> d!1939262 (= res!2559108 ((_ is Nil!64538) (unfocusZipperList!1542 zl!343)))))

(assert (=> d!1939262 (= (forall!15240 (unfocusZipperList!1542 zl!343) lambda!337642) e!3767230)))

(declare-fun b!6185476 () Bool)

(declare-fun e!3767231 () Bool)

(assert (=> b!6185476 (= e!3767230 e!3767231)))

(declare-fun res!2559109 () Bool)

(assert (=> b!6185476 (=> (not res!2559109) (not e!3767231))))

(assert (=> b!6185476 (= res!2559109 (dynLambda!25453 lambda!337642 (h!70986 (unfocusZipperList!1542 zl!343))))))

(declare-fun b!6185477 () Bool)

(assert (=> b!6185477 (= e!3767231 (forall!15240 (t!378170 (unfocusZipperList!1542 zl!343)) lambda!337642))))

(assert (= (and d!1939262 (not res!2559108)) b!6185476))

(assert (= (and b!6185476 res!2559109) b!6185477))

(declare-fun b_lambda!235373 () Bool)

(assert (=> (not b_lambda!235373) (not b!6185476)))

(declare-fun m!7020358 () Bool)

(assert (=> b!6185476 m!7020358))

(declare-fun m!7020360 () Bool)

(assert (=> b!6185477 m!7020360))

(assert (=> d!1939030 d!1939262))

(declare-fun d!1939264 () Bool)

(assert (=> d!1939264 (= (nullable!6114 (h!70986 (exprs!6005 lt!2339239))) (nullableFct!2075 (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun bs!1534586 () Bool)

(assert (= bs!1534586 d!1939264))

(declare-fun m!7020362 () Bool)

(assert (=> bs!1534586 m!7020362))

(assert (=> b!6184938 d!1939264))

(assert (=> b!6184943 d!1939006))

(declare-fun bs!1534587 () Bool)

(declare-fun d!1939266 () Bool)

(assert (= bs!1534587 (and d!1939266 d!1939154)))

(declare-fun lambda!337679 () Int)

(assert (=> bs!1534587 (= lambda!337679 lambda!337656)))

(declare-fun bs!1534588 () Bool)

(assert (= bs!1534588 (and d!1939266 d!1939032)))

(assert (=> bs!1534588 (= lambda!337679 lambda!337645)))

(declare-fun bs!1534589 () Bool)

(assert (= bs!1534589 (and d!1939266 d!1939000)))

(assert (=> bs!1534589 (= lambda!337679 lambda!337637)))

(declare-fun bs!1534590 () Bool)

(assert (= bs!1534590 (and d!1939266 d!1939028)))

(assert (=> bs!1534590 (= lambda!337679 lambda!337639)))

(declare-fun bs!1534591 () Bool)

(assert (= bs!1534591 (and d!1939266 d!1939150)))

(assert (=> bs!1534591 (= lambda!337679 lambda!337655)))

(declare-fun bs!1534592 () Bool)

(assert (= bs!1534592 (and d!1939266 d!1939078)))

(assert (=> bs!1534592 (= lambda!337679 lambda!337646)))

(declare-fun bs!1534593 () Bool)

(assert (= bs!1534593 (and d!1939266 d!1938996)))

(assert (=> bs!1534593 (= lambda!337679 lambda!337633)))

(declare-fun bs!1534594 () Bool)

(assert (= bs!1534594 (and d!1939266 d!1939030)))

(assert (=> bs!1534594 (= lambda!337679 lambda!337642)))

(declare-fun bs!1534595 () Bool)

(assert (= bs!1534595 (and d!1939266 d!1939172)))

(assert (=> bs!1534595 (= lambda!337679 lambda!337660)))

(declare-fun bs!1534596 () Bool)

(assert (= bs!1534596 (and d!1939266 d!1939214)))

(assert (=> bs!1534596 (= lambda!337679 lambda!337669)))

(declare-fun bs!1534597 () Bool)

(assert (= bs!1534597 (and d!1939266 d!1939002)))

(assert (=> bs!1534597 (= lambda!337679 lambda!337638)))

(declare-fun bs!1534598 () Bool)

(assert (= bs!1534598 (and d!1939266 d!1939134)))

(assert (=> bs!1534598 (= lambda!337679 lambda!337654)))

(declare-fun bs!1534599 () Bool)

(assert (= bs!1534599 (and d!1939266 d!1938998)))

(assert (=> bs!1534599 (= lambda!337679 lambda!337634)))

(assert (=> d!1939266 (= (inv!83549 (h!70987 (t!378171 zl!343))) (forall!15240 (exprs!6005 (h!70987 (t!378171 zl!343))) lambda!337679))))

(declare-fun bs!1534600 () Bool)

(assert (= bs!1534600 d!1939266))

(declare-fun m!7020364 () Bool)

(assert (=> bs!1534600 m!7020364))

(assert (=> b!6185123 d!1939266))

(assert (=> d!1939046 d!1939138))

(declare-fun b!6185478 () Bool)

(declare-fun e!3767236 () Bool)

(declare-fun e!3767232 () Bool)

(assert (=> b!6185478 (= e!3767236 e!3767232)))

(declare-fun c!1115583 () Bool)

(assert (=> b!6185478 (= c!1115583 ((_ is Union!16121) lt!2339366))))

(declare-fun b!6185479 () Bool)

(declare-fun e!3767233 () Bool)

(assert (=> b!6185479 (= e!3767236 e!3767233)))

(declare-fun res!2559110 () Bool)

(assert (=> b!6185479 (= res!2559110 (not (nullable!6114 (reg!16450 lt!2339366))))))

(assert (=> b!6185479 (=> (not res!2559110) (not e!3767233))))

(declare-fun b!6185480 () Bool)

(declare-fun call!516959 () Bool)

(assert (=> b!6185480 (= e!3767233 call!516959)))

(declare-fun bm!516952 () Bool)

(declare-fun call!516957 () Bool)

(assert (=> bm!516952 (= call!516957 (validRegex!7857 (ite c!1115583 (regOne!32755 lt!2339366) (regOne!32754 lt!2339366))))))

(declare-fun b!6185481 () Bool)

(declare-fun e!3767237 () Bool)

(declare-fun e!3767238 () Bool)

(assert (=> b!6185481 (= e!3767237 e!3767238)))

(declare-fun res!2559114 () Bool)

(assert (=> b!6185481 (=> (not res!2559114) (not e!3767238))))

(assert (=> b!6185481 (= res!2559114 call!516957)))

(declare-fun d!1939268 () Bool)

(declare-fun res!2559113 () Bool)

(declare-fun e!3767235 () Bool)

(assert (=> d!1939268 (=> res!2559113 e!3767235)))

(assert (=> d!1939268 (= res!2559113 ((_ is ElementMatch!16121) lt!2339366))))

(assert (=> d!1939268 (= (validRegex!7857 lt!2339366) e!3767235)))

(declare-fun b!6185482 () Bool)

(declare-fun call!516958 () Bool)

(assert (=> b!6185482 (= e!3767238 call!516958)))

(declare-fun bm!516953 () Bool)

(declare-fun c!1115584 () Bool)

(assert (=> bm!516953 (= call!516959 (validRegex!7857 (ite c!1115584 (reg!16450 lt!2339366) (ite c!1115583 (regTwo!32755 lt!2339366) (regTwo!32754 lt!2339366)))))))

(declare-fun b!6185483 () Bool)

(declare-fun res!2559111 () Bool)

(declare-fun e!3767234 () Bool)

(assert (=> b!6185483 (=> (not res!2559111) (not e!3767234))))

(assert (=> b!6185483 (= res!2559111 call!516957)))

(assert (=> b!6185483 (= e!3767232 e!3767234)))

(declare-fun bm!516954 () Bool)

(assert (=> bm!516954 (= call!516958 call!516959)))

(declare-fun b!6185484 () Bool)

(declare-fun res!2559112 () Bool)

(assert (=> b!6185484 (=> res!2559112 e!3767237)))

(assert (=> b!6185484 (= res!2559112 (not ((_ is Concat!24966) lt!2339366)))))

(assert (=> b!6185484 (= e!3767232 e!3767237)))

(declare-fun b!6185485 () Bool)

(assert (=> b!6185485 (= e!3767234 call!516958)))

(declare-fun b!6185486 () Bool)

(assert (=> b!6185486 (= e!3767235 e!3767236)))

(assert (=> b!6185486 (= c!1115584 ((_ is Star!16121) lt!2339366))))

(assert (= (and d!1939268 (not res!2559113)) b!6185486))

(assert (= (and b!6185486 c!1115584) b!6185479))

(assert (= (and b!6185486 (not c!1115584)) b!6185478))

(assert (= (and b!6185479 res!2559110) b!6185480))

(assert (= (and b!6185478 c!1115583) b!6185483))

(assert (= (and b!6185478 (not c!1115583)) b!6185484))

(assert (= (and b!6185483 res!2559111) b!6185485))

(assert (= (and b!6185484 (not res!2559112)) b!6185481))

(assert (= (and b!6185481 res!2559114) b!6185482))

(assert (= (or b!6185485 b!6185482) bm!516954))

(assert (= (or b!6185483 b!6185481) bm!516952))

(assert (= (or b!6185480 bm!516954) bm!516953))

(declare-fun m!7020366 () Bool)

(assert (=> b!6185479 m!7020366))

(declare-fun m!7020368 () Bool)

(assert (=> bm!516952 m!7020368))

(declare-fun m!7020370 () Bool)

(assert (=> bm!516953 m!7020370))

(assert (=> d!1938996 d!1939268))

(declare-fun d!1939270 () Bool)

(declare-fun res!2559115 () Bool)

(declare-fun e!3767239 () Bool)

(assert (=> d!1939270 (=> res!2559115 e!3767239)))

(assert (=> d!1939270 (= res!2559115 ((_ is Nil!64538) lt!2339252))))

(assert (=> d!1939270 (= (forall!15240 lt!2339252 lambda!337633) e!3767239)))

(declare-fun b!6185487 () Bool)

(declare-fun e!3767240 () Bool)

(assert (=> b!6185487 (= e!3767239 e!3767240)))

(declare-fun res!2559116 () Bool)

(assert (=> b!6185487 (=> (not res!2559116) (not e!3767240))))

(assert (=> b!6185487 (= res!2559116 (dynLambda!25453 lambda!337633 (h!70986 lt!2339252)))))

(declare-fun b!6185488 () Bool)

(assert (=> b!6185488 (= e!3767240 (forall!15240 (t!378170 lt!2339252) lambda!337633))))

(assert (= (and d!1939270 (not res!2559115)) b!6185487))

(assert (= (and b!6185487 res!2559116) b!6185488))

(declare-fun b_lambda!235375 () Bool)

(assert (=> (not b_lambda!235375) (not b!6185487)))

(declare-fun m!7020372 () Bool)

(assert (=> b!6185487 m!7020372))

(declare-fun m!7020374 () Bool)

(assert (=> b!6185488 m!7020374))

(assert (=> d!1938996 d!1939270))

(assert (=> b!6184781 d!1939082))

(assert (=> d!1938894 d!1939106))

(declare-fun d!1939272 () Bool)

(declare-fun c!1115585 () Bool)

(assert (=> d!1939272 (= c!1115585 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767241 () Bool)

(assert (=> d!1939272 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339244 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767241)))

(declare-fun b!6185489 () Bool)

(assert (=> b!6185489 (= e!3767241 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339244 (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185490 () Bool)

(assert (=> b!6185490 (= e!3767241 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339244 (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939272 c!1115585) b!6185489))

(assert (= (and d!1939272 (not c!1115585)) b!6185490))

(assert (=> d!1939272 m!7019489))

(assert (=> d!1939272 m!7020180))

(assert (=> b!6185489 m!7019504))

(declare-fun m!7020376 () Bool)

(assert (=> b!6185489 m!7020376))

(assert (=> b!6185490 m!7019489))

(assert (=> b!6185490 m!7020184))

(assert (=> b!6185490 m!7019504))

(assert (=> b!6185490 m!7020184))

(declare-fun m!7020378 () Bool)

(assert (=> b!6185490 m!7020378))

(assert (=> b!6185490 m!7019489))

(assert (=> b!6185490 m!7020188))

(assert (=> b!6185490 m!7020378))

(assert (=> b!6185490 m!7020188))

(declare-fun m!7020380 () Bool)

(assert (=> b!6185490 m!7020380))

(assert (=> b!6184574 d!1939272))

(declare-fun bs!1534601 () Bool)

(declare-fun d!1939274 () Bool)

(assert (= bs!1534601 (and d!1939274 d!1939086)))

(declare-fun lambda!337680 () Int)

(assert (=> bs!1534601 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337680 lambda!337649))))

(declare-fun bs!1534602 () Bool)

(assert (= bs!1534602 (and d!1939274 d!1939166)))

(assert (=> bs!1534602 (= lambda!337680 lambda!337659)))

(declare-fun bs!1534603 () Bool)

(assert (= bs!1534603 (and d!1939274 d!1939090)))

(assert (=> bs!1534603 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337680 lambda!337650))))

(declare-fun bs!1534604 () Bool)

(assert (= bs!1534604 (and d!1939274 b!6184187)))

(assert (=> bs!1534604 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337680 lambda!337585))))

(declare-fun bs!1534605 () Bool)

(assert (= bs!1534605 (and d!1939274 d!1939204)))

(assert (=> bs!1534605 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337680 lambda!337667))))

(declare-fun bs!1534606 () Bool)

(assert (= bs!1534606 (and d!1939274 d!1939194)))

(assert (=> bs!1534606 (= lambda!337680 lambda!337666)))

(assert (=> d!1939274 true))

(assert (=> d!1939274 (= (derivationStepZipper!2092 lt!2339244 (head!12759 (t!378172 s!2326))) (flatMap!1626 lt!2339244 lambda!337680))))

(declare-fun bs!1534607 () Bool)

(assert (= bs!1534607 d!1939274))

(declare-fun m!7020382 () Bool)

(assert (=> bs!1534607 m!7020382))

(assert (=> b!6184574 d!1939274))

(assert (=> b!6184574 d!1939168))

(assert (=> b!6184574 d!1939170))

(declare-fun d!1939276 () Bool)

(declare-fun c!1115586 () Bool)

(assert (=> d!1939276 (= c!1115586 ((_ is Nil!64539) lt!2339373))))

(declare-fun e!3767242 () (InoxSet Context!11010))

(assert (=> d!1939276 (= (content!12052 lt!2339373) e!3767242)))

(declare-fun b!6185491 () Bool)

(assert (=> b!6185491 (= e!3767242 ((as const (Array Context!11010 Bool)) false))))

(declare-fun b!6185492 () Bool)

(assert (=> b!6185492 (= e!3767242 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) (h!70987 lt!2339373) true) (content!12052 (t!378171 lt!2339373))))))

(assert (= (and d!1939276 c!1115586) b!6185491))

(assert (= (and d!1939276 (not c!1115586)) b!6185492))

(declare-fun m!7020384 () Bool)

(assert (=> b!6185492 m!7020384))

(declare-fun m!7020386 () Bool)

(assert (=> b!6185492 m!7020386))

(assert (=> b!6184984 d!1939276))

(assert (=> d!1938902 d!1939106))

(declare-fun b!6185493 () Bool)

(declare-fun e!3767247 () Bool)

(declare-fun e!3767243 () Bool)

(assert (=> b!6185493 (= e!3767247 e!3767243)))

(declare-fun c!1115587 () Bool)

(assert (=> b!6185493 (= c!1115587 ((_ is Union!16121) (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))

(declare-fun b!6185494 () Bool)

(declare-fun e!3767244 () Bool)

(assert (=> b!6185494 (= e!3767247 e!3767244)))

(declare-fun res!2559117 () Bool)

(assert (=> b!6185494 (= res!2559117 (not (nullable!6114 (reg!16450 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))))

(assert (=> b!6185494 (=> (not res!2559117) (not e!3767244))))

(declare-fun b!6185495 () Bool)

(declare-fun call!516962 () Bool)

(assert (=> b!6185495 (= e!3767244 call!516962)))

(declare-fun bm!516955 () Bool)

(declare-fun call!516960 () Bool)

(assert (=> bm!516955 (= call!516960 (validRegex!7857 (ite c!1115587 (regOne!32755 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))) (regOne!32754 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))))

(declare-fun b!6185496 () Bool)

(declare-fun e!3767248 () Bool)

(declare-fun e!3767249 () Bool)

(assert (=> b!6185496 (= e!3767248 e!3767249)))

(declare-fun res!2559121 () Bool)

(assert (=> b!6185496 (=> (not res!2559121) (not e!3767249))))

(assert (=> b!6185496 (= res!2559121 call!516960)))

(declare-fun d!1939278 () Bool)

(declare-fun res!2559120 () Bool)

(declare-fun e!3767246 () Bool)

(assert (=> d!1939278 (=> res!2559120 e!3767246)))

(assert (=> d!1939278 (= res!2559120 ((_ is ElementMatch!16121) (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))

(assert (=> d!1939278 (= (validRegex!7857 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))) e!3767246)))

(declare-fun b!6185497 () Bool)

(declare-fun call!516961 () Bool)

(assert (=> b!6185497 (= e!3767249 call!516961)))

(declare-fun c!1115588 () Bool)

(declare-fun bm!516956 () Bool)

(assert (=> bm!516956 (= call!516962 (validRegex!7857 (ite c!1115588 (reg!16450 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))) (ite c!1115587 (regTwo!32755 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))) (regTwo!32754 (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292))))))))))

(declare-fun b!6185498 () Bool)

(declare-fun res!2559118 () Bool)

(declare-fun e!3767245 () Bool)

(assert (=> b!6185498 (=> (not res!2559118) (not e!3767245))))

(assert (=> b!6185498 (= res!2559118 call!516960)))

(assert (=> b!6185498 (= e!3767243 e!3767245)))

(declare-fun bm!516957 () Bool)

(assert (=> bm!516957 (= call!516961 call!516962)))

(declare-fun b!6185499 () Bool)

(declare-fun res!2559119 () Bool)

(assert (=> b!6185499 (=> res!2559119 e!3767248)))

(assert (=> b!6185499 (= res!2559119 (not ((_ is Concat!24966) (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292))))))))

(assert (=> b!6185499 (= e!3767243 e!3767248)))

(declare-fun b!6185500 () Bool)

(assert (=> b!6185500 (= e!3767245 call!516961)))

(declare-fun b!6185501 () Bool)

(assert (=> b!6185501 (= e!3767246 e!3767247)))

(assert (=> b!6185501 (= c!1115588 ((_ is Star!16121) (ite c!1115396 (reg!16450 r!7292) (ite c!1115395 (regTwo!32755 r!7292) (regTwo!32754 r!7292)))))))

(assert (= (and d!1939278 (not res!2559120)) b!6185501))

(assert (= (and b!6185501 c!1115588) b!6185494))

(assert (= (and b!6185501 (not c!1115588)) b!6185493))

(assert (= (and b!6185494 res!2559117) b!6185495))

(assert (= (and b!6185493 c!1115587) b!6185498))

(assert (= (and b!6185493 (not c!1115587)) b!6185499))

(assert (= (and b!6185498 res!2559118) b!6185500))

(assert (= (and b!6185499 (not res!2559119)) b!6185496))

(assert (= (and b!6185496 res!2559121) b!6185497))

(assert (= (or b!6185500 b!6185497) bm!516957))

(assert (= (or b!6185498 b!6185496) bm!516955))

(assert (= (or b!6185495 bm!516957) bm!516956))

(declare-fun m!7020388 () Bool)

(assert (=> b!6185494 m!7020388))

(declare-fun m!7020390 () Bool)

(assert (=> bm!516955 m!7020390))

(declare-fun m!7020392 () Bool)

(assert (=> bm!516956 m!7020392))

(assert (=> bm!516853 d!1939278))

(declare-fun d!1939280 () Bool)

(declare-fun res!2559122 () Bool)

(declare-fun e!3767250 () Bool)

(assert (=> d!1939280 (=> res!2559122 e!3767250)))

(assert (=> d!1939280 (= res!2559122 ((_ is Nil!64539) lt!2339373))))

(assert (=> d!1939280 (= (noDuplicate!1963 lt!2339373) e!3767250)))

(declare-fun b!6185502 () Bool)

(declare-fun e!3767251 () Bool)

(assert (=> b!6185502 (= e!3767250 e!3767251)))

(declare-fun res!2559123 () Bool)

(assert (=> b!6185502 (=> (not res!2559123) (not e!3767251))))

(assert (=> b!6185502 (= res!2559123 (not (contains!20073 (t!378171 lt!2339373) (h!70987 lt!2339373))))))

(declare-fun b!6185503 () Bool)

(assert (=> b!6185503 (= e!3767251 (noDuplicate!1963 (t!378171 lt!2339373)))))

(assert (= (and d!1939280 (not res!2559122)) b!6185502))

(assert (= (and b!6185502 res!2559123) b!6185503))

(declare-fun m!7020394 () Bool)

(assert (=> b!6185502 m!7020394))

(declare-fun m!7020396 () Bool)

(assert (=> b!6185503 m!7020396))

(assert (=> d!1939026 d!1939280))

(declare-fun d!1939282 () Bool)

(declare-fun e!3767253 () Bool)

(assert (=> d!1939282 e!3767253))

(declare-fun res!2559125 () Bool)

(assert (=> d!1939282 (=> (not res!2559125) (not e!3767253))))

(declare-fun res!2559124 () List!64663)

(assert (=> d!1939282 (= res!2559125 (noDuplicate!1963 res!2559124))))

(declare-fun e!3767254 () Bool)

(assert (=> d!1939282 e!3767254))

(assert (=> d!1939282 (= (choose!45941 lt!2339243) res!2559124)))

(declare-fun b!6185505 () Bool)

(declare-fun e!3767252 () Bool)

(declare-fun tp!1726604 () Bool)

(assert (=> b!6185505 (= e!3767252 tp!1726604)))

(declare-fun b!6185504 () Bool)

(declare-fun tp!1726603 () Bool)

(assert (=> b!6185504 (= e!3767254 (and (inv!83549 (h!70987 res!2559124)) e!3767252 tp!1726603))))

(declare-fun b!6185506 () Bool)

(assert (=> b!6185506 (= e!3767253 (= (content!12052 res!2559124) lt!2339243))))

(assert (= b!6185504 b!6185505))

(assert (= (and d!1939282 ((_ is Cons!64539) res!2559124)) b!6185504))

(assert (= (and d!1939282 res!2559125) b!6185506))

(declare-fun m!7020398 () Bool)

(assert (=> d!1939282 m!7020398))

(declare-fun m!7020400 () Bool)

(assert (=> b!6185504 m!7020400))

(declare-fun m!7020402 () Bool)

(assert (=> b!6185506 m!7020402))

(assert (=> d!1939026 d!1939282))

(declare-fun d!1939284 () Bool)

(assert (=> d!1939284 (= (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))) (nullableFct!2075 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun bs!1534608 () Bool)

(assert (= bs!1534608 d!1939284))

(declare-fun m!7020404 () Bool)

(assert (=> bs!1534608 m!7020404))

(assert (=> b!6184972 d!1939284))

(assert (=> d!1938918 d!1939106))

(declare-fun d!1939286 () Bool)

(assert (=> d!1939286 (= (isEmptyExpr!1536 lt!2339366) ((_ is EmptyExpr!16121) lt!2339366))))

(assert (=> b!6184912 d!1939286))

(declare-fun d!1939288 () Bool)

(assert (=> d!1939288 (= (isConcat!1059 lt!2339367) ((_ is Concat!24966) lt!2339367))))

(assert (=> b!6184918 d!1939288))

(declare-fun d!1939290 () Bool)

(declare-fun c!1115589 () Bool)

(assert (=> d!1939290 (= c!1115589 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767255 () Bool)

(assert (=> d!1939290 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339240 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767255)))

(declare-fun b!6185507 () Bool)

(assert (=> b!6185507 (= e!3767255 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339240 (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185508 () Bool)

(assert (=> b!6185508 (= e!3767255 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339240 (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939290 c!1115589) b!6185507))

(assert (= (and d!1939290 (not c!1115589)) b!6185508))

(assert (=> d!1939290 m!7019489))

(assert (=> d!1939290 m!7020180))

(assert (=> b!6185507 m!7019570))

(declare-fun m!7020406 () Bool)

(assert (=> b!6185507 m!7020406))

(assert (=> b!6185508 m!7019489))

(assert (=> b!6185508 m!7020184))

(assert (=> b!6185508 m!7019570))

(assert (=> b!6185508 m!7020184))

(declare-fun m!7020408 () Bool)

(assert (=> b!6185508 m!7020408))

(assert (=> b!6185508 m!7019489))

(assert (=> b!6185508 m!7020188))

(assert (=> b!6185508 m!7020408))

(assert (=> b!6185508 m!7020188))

(declare-fun m!7020410 () Bool)

(assert (=> b!6185508 m!7020410))

(assert (=> b!6184608 d!1939290))

(declare-fun bs!1534609 () Bool)

(declare-fun d!1939292 () Bool)

(assert (= bs!1534609 (and d!1939292 d!1939086)))

(declare-fun lambda!337681 () Int)

(assert (=> bs!1534609 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337681 lambda!337649))))

(declare-fun bs!1534610 () Bool)

(assert (= bs!1534610 (and d!1939292 d!1939166)))

(assert (=> bs!1534610 (= lambda!337681 lambda!337659)))

(declare-fun bs!1534611 () Bool)

(assert (= bs!1534611 (and d!1939292 d!1939274)))

(assert (=> bs!1534611 (= lambda!337681 lambda!337680)))

(declare-fun bs!1534612 () Bool)

(assert (= bs!1534612 (and d!1939292 d!1939090)))

(assert (=> bs!1534612 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337681 lambda!337650))))

(declare-fun bs!1534613 () Bool)

(assert (= bs!1534613 (and d!1939292 b!6184187)))

(assert (=> bs!1534613 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337681 lambda!337585))))

(declare-fun bs!1534614 () Bool)

(assert (= bs!1534614 (and d!1939292 d!1939204)))

(assert (=> bs!1534614 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337681 lambda!337667))))

(declare-fun bs!1534615 () Bool)

(assert (= bs!1534615 (and d!1939292 d!1939194)))

(assert (=> bs!1534615 (= lambda!337681 lambda!337666)))

(assert (=> d!1939292 true))

(assert (=> d!1939292 (= (derivationStepZipper!2092 lt!2339240 (head!12759 (t!378172 s!2326))) (flatMap!1626 lt!2339240 lambda!337681))))

(declare-fun bs!1534616 () Bool)

(assert (= bs!1534616 d!1939292))

(declare-fun m!7020412 () Bool)

(assert (=> bs!1534616 m!7020412))

(assert (=> b!6184608 d!1939292))

(assert (=> b!6184608 d!1939168))

(assert (=> b!6184608 d!1939170))

(declare-fun d!1939294 () Bool)

(assert (=> d!1939294 (= (isEmptyLang!1545 lt!2339377) ((_ is EmptyLang!16121) lt!2339377))))

(assert (=> b!6185022 d!1939294))

(declare-fun d!1939296 () Bool)

(declare-fun c!1115590 () Bool)

(assert (=> d!1939296 (= c!1115590 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767256 () Bool)

(assert (=> d!1939296 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339229 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767256)))

(declare-fun b!6185509 () Bool)

(assert (=> b!6185509 (= e!3767256 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339229 (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185510 () Bool)

(assert (=> b!6185510 (= e!3767256 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339229 (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939296 c!1115590) b!6185509))

(assert (= (and d!1939296 (not c!1115590)) b!6185510))

(assert (=> d!1939296 m!7019489))

(assert (=> d!1939296 m!7020180))

(assert (=> b!6185509 m!7019546))

(declare-fun m!7020414 () Bool)

(assert (=> b!6185509 m!7020414))

(assert (=> b!6185510 m!7019489))

(assert (=> b!6185510 m!7020184))

(assert (=> b!6185510 m!7019546))

(assert (=> b!6185510 m!7020184))

(declare-fun m!7020416 () Bool)

(assert (=> b!6185510 m!7020416))

(assert (=> b!6185510 m!7019489))

(assert (=> b!6185510 m!7020188))

(assert (=> b!6185510 m!7020416))

(assert (=> b!6185510 m!7020188))

(declare-fun m!7020418 () Bool)

(assert (=> b!6185510 m!7020418))

(assert (=> b!6184600 d!1939296))

(declare-fun bs!1534617 () Bool)

(declare-fun d!1939300 () Bool)

(assert (= bs!1534617 (and d!1939300 d!1939086)))

(declare-fun lambda!337682 () Int)

(assert (=> bs!1534617 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337682 lambda!337649))))

(declare-fun bs!1534618 () Bool)

(assert (= bs!1534618 (and d!1939300 d!1939166)))

(assert (=> bs!1534618 (= lambda!337682 lambda!337659)))

(declare-fun bs!1534619 () Bool)

(assert (= bs!1534619 (and d!1939300 d!1939292)))

(assert (=> bs!1534619 (= lambda!337682 lambda!337681)))

(declare-fun bs!1534620 () Bool)

(assert (= bs!1534620 (and d!1939300 d!1939274)))

(assert (=> bs!1534620 (= lambda!337682 lambda!337680)))

(declare-fun bs!1534621 () Bool)

(assert (= bs!1534621 (and d!1939300 d!1939090)))

(assert (=> bs!1534621 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337682 lambda!337650))))

(declare-fun bs!1534622 () Bool)

(assert (= bs!1534622 (and d!1939300 b!6184187)))

(assert (=> bs!1534622 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337682 lambda!337585))))

(declare-fun bs!1534623 () Bool)

(assert (= bs!1534623 (and d!1939300 d!1939204)))

(assert (=> bs!1534623 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337682 lambda!337667))))

(declare-fun bs!1534624 () Bool)

(assert (= bs!1534624 (and d!1939300 d!1939194)))

(assert (=> bs!1534624 (= lambda!337682 lambda!337666)))

(assert (=> d!1939300 true))

(assert (=> d!1939300 (= (derivationStepZipper!2092 lt!2339229 (head!12759 (t!378172 s!2326))) (flatMap!1626 lt!2339229 lambda!337682))))

(declare-fun bs!1534625 () Bool)

(assert (= bs!1534625 d!1939300))

(declare-fun m!7020420 () Bool)

(assert (=> bs!1534625 m!7020420))

(assert (=> b!6184600 d!1939300))

(assert (=> b!6184600 d!1939168))

(assert (=> b!6184600 d!1939170))

(declare-fun bm!516958 () Bool)

(declare-fun call!516967 () (InoxSet Context!11010))

(declare-fun c!1115597 () Bool)

(declare-fun call!516964 () List!64662)

(assert (=> bm!516958 (= call!516967 (derivationStepZipperDown!1369 (ite c!1115597 (regOne!32755 (h!70986 (exprs!6005 lt!2339237))) (regOne!32754 (h!70986 (exprs!6005 lt!2339237)))) (ite c!1115597 (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (Context!11011 call!516964)) (h!70988 s!2326)))))

(declare-fun b!6185521 () Bool)

(declare-fun e!3767265 () (InoxSet Context!11010))

(declare-fun e!3767264 () (InoxSet Context!11010))

(assert (=> b!6185521 (= e!3767265 e!3767264)))

(assert (=> b!6185521 (= c!1115597 ((_ is Union!16121) (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun c!1115599 () Bool)

(declare-fun bm!516959 () Bool)

(declare-fun c!1115595 () Bool)

(assert (=> bm!516959 (= call!516964 ($colon$colon!1995 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237)))) (ite (or c!1115595 c!1115599) (regTwo!32754 (h!70986 (exprs!6005 lt!2339237))) (h!70986 (exprs!6005 lt!2339237)))))))

(declare-fun b!6185522 () Bool)

(declare-fun e!3767268 () Bool)

(assert (=> b!6185522 (= c!1115595 e!3767268)))

(declare-fun res!2559128 () Bool)

(assert (=> b!6185522 (=> (not res!2559128) (not e!3767268))))

(assert (=> b!6185522 (= res!2559128 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun e!3767267 () (InoxSet Context!11010))

(assert (=> b!6185522 (= e!3767264 e!3767267)))

(declare-fun b!6185523 () Bool)

(assert (=> b!6185523 (= e!3767268 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 lt!2339237)))))))

(declare-fun b!6185524 () Bool)

(declare-fun call!516965 () (InoxSet Context!11010))

(assert (=> b!6185524 (= e!3767267 ((_ map or) call!516967 call!516965))))

(declare-fun bm!516960 () Bool)

(declare-fun call!516968 () (InoxSet Context!11010))

(assert (=> bm!516960 (= call!516965 call!516968)))

(declare-fun b!6185525 () Bool)

(declare-fun e!3767266 () (InoxSet Context!11010))

(declare-fun call!516966 () (InoxSet Context!11010))

(assert (=> b!6185525 (= e!3767266 call!516966)))

(declare-fun b!6185526 () Bool)

(assert (=> b!6185526 (= e!3767266 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516961 () Bool)

(declare-fun call!516963 () List!64662)

(assert (=> bm!516961 (= call!516963 call!516964)))

(declare-fun b!6185527 () Bool)

(assert (=> b!6185527 (= e!3767265 (store ((as const (Array Context!11010 Bool)) false) (Context!11011 (t!378170 (exprs!6005 lt!2339237))) true))))

(declare-fun b!6185529 () Bool)

(declare-fun c!1115598 () Bool)

(assert (=> b!6185529 (= c!1115598 ((_ is Star!16121) (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun e!3767263 () (InoxSet Context!11010))

(assert (=> b!6185529 (= e!3767263 e!3767266)))

(declare-fun b!6185530 () Bool)

(assert (=> b!6185530 (= e!3767263 call!516966)))

(declare-fun b!6185531 () Bool)

(assert (=> b!6185531 (= e!3767264 ((_ map or) call!516967 call!516968))))

(declare-fun d!1939302 () Bool)

(declare-fun c!1115596 () Bool)

(assert (=> d!1939302 (= c!1115596 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 lt!2339237))) (= (c!1115220 (h!70986 (exprs!6005 lt!2339237))) (h!70988 s!2326))))))

(assert (=> d!1939302 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339237)) (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (h!70988 s!2326)) e!3767265)))

(declare-fun b!6185528 () Bool)

(assert (=> b!6185528 (= e!3767267 e!3767263)))

(assert (=> b!6185528 (= c!1115599 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339237))))))

(declare-fun bm!516962 () Bool)

(assert (=> bm!516962 (= call!516966 call!516965)))

(declare-fun bm!516963 () Bool)

(assert (=> bm!516963 (= call!516968 (derivationStepZipperDown!1369 (ite c!1115597 (regTwo!32755 (h!70986 (exprs!6005 lt!2339237))) (ite c!1115595 (regTwo!32754 (h!70986 (exprs!6005 lt!2339237))) (ite c!1115599 (regOne!32754 (h!70986 (exprs!6005 lt!2339237))) (reg!16450 (h!70986 (exprs!6005 lt!2339237)))))) (ite (or c!1115597 c!1115595) (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (Context!11011 call!516963)) (h!70988 s!2326)))))

(assert (= (and d!1939302 c!1115596) b!6185527))

(assert (= (and d!1939302 (not c!1115596)) b!6185521))

(assert (= (and b!6185521 c!1115597) b!6185531))

(assert (= (and b!6185521 (not c!1115597)) b!6185522))

(assert (= (and b!6185522 res!2559128) b!6185523))

(assert (= (and b!6185522 c!1115595) b!6185524))

(assert (= (and b!6185522 (not c!1115595)) b!6185528))

(assert (= (and b!6185528 c!1115599) b!6185530))

(assert (= (and b!6185528 (not c!1115599)) b!6185529))

(assert (= (and b!6185529 c!1115598) b!6185525))

(assert (= (and b!6185529 (not c!1115598)) b!6185526))

(assert (= (or b!6185530 b!6185525) bm!516961))

(assert (= (or b!6185530 b!6185525) bm!516962))

(assert (= (or b!6185524 bm!516961) bm!516959))

(assert (= (or b!6185524 bm!516962) bm!516960))

(assert (= (or b!6185531 bm!516960) bm!516963))

(assert (= (or b!6185531 b!6185524) bm!516958))

(declare-fun m!7020422 () Bool)

(assert (=> b!6185527 m!7020422))

(declare-fun m!7020424 () Bool)

(assert (=> b!6185523 m!7020424))

(declare-fun m!7020426 () Bool)

(assert (=> bm!516959 m!7020426))

(declare-fun m!7020428 () Bool)

(assert (=> bm!516958 m!7020428))

(declare-fun m!7020430 () Bool)

(assert (=> bm!516963 m!7020430))

(assert (=> bm!516895 d!1939302))

(declare-fun d!1939304 () Bool)

(assert (=> d!1939304 (= (isEmptyExpr!1536 lt!2339367) ((_ is EmptyExpr!16121) lt!2339367))))

(assert (=> b!6184922 d!1939304))

(declare-fun c!1115602 () Bool)

(declare-fun call!516973 () (InoxSet Context!11010))

(declare-fun call!516970 () List!64662)

(declare-fun bm!516964 () Bool)

(assert (=> bm!516964 (= call!516973 (derivationStepZipperDown!1369 (ite c!1115602 (regOne!32755 (h!70986 (exprs!6005 lt!2339232))) (regOne!32754 (h!70986 (exprs!6005 lt!2339232)))) (ite c!1115602 (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (Context!11011 call!516970)) (h!70988 s!2326)))))

(declare-fun b!6185532 () Bool)

(declare-fun e!3767271 () (InoxSet Context!11010))

(declare-fun e!3767270 () (InoxSet Context!11010))

(assert (=> b!6185532 (= e!3767271 e!3767270)))

(assert (=> b!6185532 (= c!1115602 ((_ is Union!16121) (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun bm!516965 () Bool)

(declare-fun c!1115604 () Bool)

(declare-fun c!1115600 () Bool)

(assert (=> bm!516965 (= call!516970 ($colon$colon!1995 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232)))) (ite (or c!1115600 c!1115604) (regTwo!32754 (h!70986 (exprs!6005 lt!2339232))) (h!70986 (exprs!6005 lt!2339232)))))))

(declare-fun b!6185533 () Bool)

(declare-fun e!3767274 () Bool)

(assert (=> b!6185533 (= c!1115600 e!3767274)))

(declare-fun res!2559129 () Bool)

(assert (=> b!6185533 (=> (not res!2559129) (not e!3767274))))

(assert (=> b!6185533 (= res!2559129 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun e!3767273 () (InoxSet Context!11010))

(assert (=> b!6185533 (= e!3767270 e!3767273)))

(declare-fun b!6185534 () Bool)

(assert (=> b!6185534 (= e!3767274 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 lt!2339232)))))))

(declare-fun b!6185535 () Bool)

(declare-fun call!516971 () (InoxSet Context!11010))

(assert (=> b!6185535 (= e!3767273 ((_ map or) call!516973 call!516971))))

(declare-fun bm!516966 () Bool)

(declare-fun call!516974 () (InoxSet Context!11010))

(assert (=> bm!516966 (= call!516971 call!516974)))

(declare-fun b!6185536 () Bool)

(declare-fun e!3767272 () (InoxSet Context!11010))

(declare-fun call!516972 () (InoxSet Context!11010))

(assert (=> b!6185536 (= e!3767272 call!516972)))

(declare-fun b!6185537 () Bool)

(assert (=> b!6185537 (= e!3767272 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516967 () Bool)

(declare-fun call!516969 () List!64662)

(assert (=> bm!516967 (= call!516969 call!516970)))

(declare-fun b!6185538 () Bool)

(assert (=> b!6185538 (= e!3767271 (store ((as const (Array Context!11010 Bool)) false) (Context!11011 (t!378170 (exprs!6005 lt!2339232))) true))))

(declare-fun b!6185540 () Bool)

(declare-fun c!1115603 () Bool)

(assert (=> b!6185540 (= c!1115603 ((_ is Star!16121) (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun e!3767269 () (InoxSet Context!11010))

(assert (=> b!6185540 (= e!3767269 e!3767272)))

(declare-fun b!6185541 () Bool)

(assert (=> b!6185541 (= e!3767269 call!516972)))

(declare-fun b!6185542 () Bool)

(assert (=> b!6185542 (= e!3767270 ((_ map or) call!516973 call!516974))))

(declare-fun d!1939306 () Bool)

(declare-fun c!1115601 () Bool)

(assert (=> d!1939306 (= c!1115601 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 lt!2339232))) (= (c!1115220 (h!70986 (exprs!6005 lt!2339232))) (h!70988 s!2326))))))

(assert (=> d!1939306 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339232)) (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (h!70988 s!2326)) e!3767271)))

(declare-fun b!6185539 () Bool)

(assert (=> b!6185539 (= e!3767273 e!3767269)))

(assert (=> b!6185539 (= c!1115604 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339232))))))

(declare-fun bm!516968 () Bool)

(assert (=> bm!516968 (= call!516972 call!516971)))

(declare-fun bm!516969 () Bool)

(assert (=> bm!516969 (= call!516974 (derivationStepZipperDown!1369 (ite c!1115602 (regTwo!32755 (h!70986 (exprs!6005 lt!2339232))) (ite c!1115600 (regTwo!32754 (h!70986 (exprs!6005 lt!2339232))) (ite c!1115604 (regOne!32754 (h!70986 (exprs!6005 lt!2339232))) (reg!16450 (h!70986 (exprs!6005 lt!2339232)))))) (ite (or c!1115602 c!1115600) (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (Context!11011 call!516969)) (h!70988 s!2326)))))

(assert (= (and d!1939306 c!1115601) b!6185538))

(assert (= (and d!1939306 (not c!1115601)) b!6185532))

(assert (= (and b!6185532 c!1115602) b!6185542))

(assert (= (and b!6185532 (not c!1115602)) b!6185533))

(assert (= (and b!6185533 res!2559129) b!6185534))

(assert (= (and b!6185533 c!1115600) b!6185535))

(assert (= (and b!6185533 (not c!1115600)) b!6185539))

(assert (= (and b!6185539 c!1115604) b!6185541))

(assert (= (and b!6185539 (not c!1115604)) b!6185540))

(assert (= (and b!6185540 c!1115603) b!6185536))

(assert (= (and b!6185540 (not c!1115603)) b!6185537))

(assert (= (or b!6185541 b!6185536) bm!516967))

(assert (= (or b!6185541 b!6185536) bm!516968))

(assert (= (or b!6185535 bm!516967) bm!516965))

(assert (= (or b!6185535 bm!516968) bm!516966))

(assert (= (or b!6185542 bm!516966) bm!516969))

(assert (= (or b!6185542 b!6185535) bm!516964))

(declare-fun m!7020432 () Bool)

(assert (=> b!6185538 m!7020432))

(declare-fun m!7020434 () Bool)

(assert (=> b!6185534 m!7020434))

(declare-fun m!7020436 () Bool)

(assert (=> bm!516965 m!7020436))

(declare-fun m!7020438 () Bool)

(assert (=> bm!516964 m!7020438))

(declare-fun m!7020440 () Bool)

(assert (=> bm!516969 m!7020440))

(assert (=> bm!516894 d!1939306))

(declare-fun d!1939308 () Bool)

(assert (=> d!1939308 (= (head!12760 (exprs!6005 (h!70987 zl!343))) (h!70986 (exprs!6005 (h!70987 zl!343))))))

(assert (=> b!6184988 d!1939308))

(declare-fun d!1939310 () Bool)

(declare-fun lt!2339413 () Int)

(assert (=> d!1939310 (>= lt!2339413 0)))

(declare-fun e!3767275 () Int)

(assert (=> d!1939310 (= lt!2339413 e!3767275)))

(declare-fun c!1115605 () Bool)

(assert (=> d!1939310 (= c!1115605 ((_ is Cons!64538) (exprs!6005 (h!70987 lt!2339263))))))

(assert (=> d!1939310 (= (contextDepthTotal!276 (h!70987 lt!2339263)) lt!2339413)))

(declare-fun b!6185543 () Bool)

(assert (=> b!6185543 (= e!3767275 (+ (regexDepthTotal!138 (h!70986 (exprs!6005 (h!70987 lt!2339263)))) (contextDepthTotal!276 (Context!11011 (t!378170 (exprs!6005 (h!70987 lt!2339263)))))))))

(declare-fun b!6185544 () Bool)

(assert (=> b!6185544 (= e!3767275 1)))

(assert (= (and d!1939310 c!1115605) b!6185543))

(assert (= (and d!1939310 (not c!1115605)) b!6185544))

(declare-fun m!7020448 () Bool)

(assert (=> b!6185543 m!7020448))

(declare-fun m!7020450 () Bool)

(assert (=> b!6185543 m!7020450))

(assert (=> b!6184646 d!1939310))

(declare-fun d!1939312 () Bool)

(declare-fun lt!2339414 () Int)

(assert (=> d!1939312 (>= lt!2339414 0)))

(declare-fun e!3767276 () Int)

(assert (=> d!1939312 (= lt!2339414 e!3767276)))

(declare-fun c!1115606 () Bool)

(assert (=> d!1939312 (= c!1115606 ((_ is Cons!64539) (t!378171 lt!2339263)))))

(assert (=> d!1939312 (= (zipperDepthTotal!304 (t!378171 lt!2339263)) lt!2339414)))

(declare-fun b!6185545 () Bool)

(assert (=> b!6185545 (= e!3767276 (+ (contextDepthTotal!276 (h!70987 (t!378171 lt!2339263))) (zipperDepthTotal!304 (t!378171 (t!378171 lt!2339263)))))))

(declare-fun b!6185546 () Bool)

(assert (=> b!6185546 (= e!3767276 0)))

(assert (= (and d!1939312 c!1115606) b!6185545))

(assert (= (and d!1939312 (not c!1115606)) b!6185546))

(declare-fun m!7020462 () Bool)

(assert (=> b!6185545 m!7020462))

(declare-fun m!7020464 () Bool)

(assert (=> b!6185545 m!7020464))

(assert (=> b!6184646 d!1939312))

(declare-fun call!516976 () List!64662)

(declare-fun c!1115609 () Bool)

(declare-fun call!516979 () (InoxSet Context!11010))

(declare-fun bm!516970 () Bool)

(assert (=> bm!516970 (= call!516979 (derivationStepZipperDown!1369 (ite c!1115609 (regOne!32755 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (regOne!32754 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))))) (ite c!1115609 (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893)) (Context!11011 call!516976)) (h!70988 s!2326)))))

(declare-fun b!6185547 () Bool)

(declare-fun e!3767279 () (InoxSet Context!11010))

(declare-fun e!3767278 () (InoxSet Context!11010))

(assert (=> b!6185547 (= e!3767279 e!3767278)))

(assert (=> b!6185547 (= c!1115609 ((_ is Union!16121) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))))))

(declare-fun bm!516971 () Bool)

(declare-fun c!1115607 () Bool)

(declare-fun c!1115611 () Bool)

(assert (=> bm!516971 (= call!516976 ($colon$colon!1995 (exprs!6005 (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893))) (ite (or c!1115607 c!1115611) (regTwo!32754 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))))))))

(declare-fun b!6185548 () Bool)

(declare-fun e!3767282 () Bool)

(assert (=> b!6185548 (= c!1115607 e!3767282)))

(declare-fun res!2559130 () Bool)

(assert (=> b!6185548 (=> (not res!2559130) (not e!3767282))))

(assert (=> b!6185548 (= res!2559130 ((_ is Concat!24966) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))))))

(declare-fun e!3767281 () (InoxSet Context!11010))

(assert (=> b!6185548 (= e!3767278 e!3767281)))

(declare-fun b!6185549 () Bool)

(assert (=> b!6185549 (= e!3767282 (nullable!6114 (regOne!32754 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))))))))

(declare-fun b!6185550 () Bool)

(declare-fun call!516977 () (InoxSet Context!11010))

(assert (=> b!6185550 (= e!3767281 ((_ map or) call!516979 call!516977))))

(declare-fun bm!516972 () Bool)

(declare-fun call!516980 () (InoxSet Context!11010))

(assert (=> bm!516972 (= call!516977 call!516980)))

(declare-fun b!6185551 () Bool)

(declare-fun e!3767280 () (InoxSet Context!11010))

(declare-fun call!516978 () (InoxSet Context!11010))

(assert (=> b!6185551 (= e!3767280 call!516978)))

(declare-fun b!6185552 () Bool)

(assert (=> b!6185552 (= e!3767280 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516973 () Bool)

(declare-fun call!516975 () List!64662)

(assert (=> bm!516973 (= call!516975 call!516976)))

(declare-fun b!6185553 () Bool)

(assert (=> b!6185553 (= e!3767279 (store ((as const (Array Context!11010 Bool)) false) (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893)) true))))

(declare-fun b!6185555 () Bool)

(declare-fun c!1115610 () Bool)

(assert (=> b!6185555 (= c!1115610 ((_ is Star!16121) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))))))

(declare-fun e!3767277 () (InoxSet Context!11010))

(assert (=> b!6185555 (= e!3767277 e!3767280)))

(declare-fun b!6185556 () Bool)

(assert (=> b!6185556 (= e!3767277 call!516978)))

(declare-fun b!6185557 () Bool)

(assert (=> b!6185557 (= e!3767278 ((_ map or) call!516979 call!516980))))

(declare-fun c!1115608 () Bool)

(declare-fun d!1939314 () Bool)

(assert (=> d!1939314 (= c!1115608 (and ((_ is ElementMatch!16121) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (= (c!1115220 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (h!70988 s!2326))))))

(assert (=> d!1939314 (= (derivationStepZipperDown!1369 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))) (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893)) (h!70988 s!2326)) e!3767279)))

(declare-fun b!6185554 () Bool)

(assert (=> b!6185554 (= e!3767281 e!3767277)))

(assert (=> b!6185554 (= c!1115611 ((_ is Concat!24966) (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))))))

(declare-fun bm!516974 () Bool)

(assert (=> bm!516974 (= call!516978 call!516977)))

(declare-fun bm!516975 () Bool)

(assert (=> bm!516975 (= call!516980 (derivationStepZipperDown!1369 (ite c!1115609 (regTwo!32755 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (ite c!1115607 (regTwo!32754 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (ite c!1115611 (regOne!32754 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292))))))) (reg!16450 (ite c!1115472 (regTwo!32755 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115470 (regTwo!32754 (regOne!32755 (regOne!32754 r!7292))) (ite c!1115474 (regOne!32754 (regOne!32755 (regOne!32754 r!7292))) (reg!16450 (regOne!32755 (regOne!32754 r!7292)))))))))) (ite (or c!1115609 c!1115607) (ite (or c!1115472 c!1115470) lt!2339239 (Context!11011 call!516893)) (Context!11011 call!516975)) (h!70988 s!2326)))))

(assert (= (and d!1939314 c!1115608) b!6185553))

(assert (= (and d!1939314 (not c!1115608)) b!6185547))

(assert (= (and b!6185547 c!1115609) b!6185557))

(assert (= (and b!6185547 (not c!1115609)) b!6185548))

(assert (= (and b!6185548 res!2559130) b!6185549))

(assert (= (and b!6185548 c!1115607) b!6185550))

(assert (= (and b!6185548 (not c!1115607)) b!6185554))

(assert (= (and b!6185554 c!1115611) b!6185556))

(assert (= (and b!6185554 (not c!1115611)) b!6185555))

(assert (= (and b!6185555 c!1115610) b!6185551))

(assert (= (and b!6185555 (not c!1115610)) b!6185552))

(assert (= (or b!6185556 b!6185551) bm!516973))

(assert (= (or b!6185556 b!6185551) bm!516974))

(assert (= (or b!6185550 bm!516973) bm!516971))

(assert (= (or b!6185550 bm!516974) bm!516972))

(assert (= (or b!6185557 bm!516972) bm!516975))

(assert (= (or b!6185557 b!6185550) bm!516970))

(declare-fun m!7020468 () Bool)

(assert (=> b!6185553 m!7020468))

(declare-fun m!7020470 () Bool)

(assert (=> b!6185549 m!7020470))

(declare-fun m!7020472 () Bool)

(assert (=> bm!516971 m!7020472))

(declare-fun m!7020474 () Bool)

(assert (=> bm!516970 m!7020474))

(declare-fun m!7020476 () Bool)

(assert (=> bm!516975 m!7020476))

(assert (=> bm!516893 d!1939314))

(declare-fun d!1939318 () Bool)

(assert (=> d!1939318 (= (isEmpty!36520 (tail!11845 lt!2339252)) ((_ is Nil!64538) (tail!11845 lt!2339252)))))

(assert (=> b!6184903 d!1939318))

(declare-fun d!1939322 () Bool)

(assert (=> d!1939322 (= (tail!11845 lt!2339252) (t!378170 lt!2339252))))

(assert (=> b!6184903 d!1939322))

(assert (=> bs!1534437 d!1939060))

(declare-fun d!1939324 () Bool)

(assert (=> d!1939324 (= (isEmpty!36524 (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326)) (not ((_ is Some!16011) (findConcatSeparation!2426 (regOne!32754 r!7292) (regTwo!32754 r!7292) Nil!64540 s!2326 s!2326))))))

(assert (=> d!1938986 d!1939324))

(declare-fun bs!1534633 () Bool)

(declare-fun d!1939326 () Bool)

(assert (= bs!1534633 (and d!1939326 d!1939176)))

(declare-fun lambda!337684 () Int)

(assert (=> bs!1534633 (= lambda!337684 lambda!337661)))

(declare-fun bs!1534634 () Bool)

(assert (= bs!1534634 (and d!1939326 d!1939160)))

(assert (=> bs!1534634 (= lambda!337684 lambda!337658)))

(declare-fun bs!1534635 () Bool)

(assert (= bs!1534635 (and d!1939326 d!1939190)))

(assert (=> bs!1534635 (= lambda!337684 lambda!337665)))

(declare-fun bs!1534636 () Bool)

(assert (= bs!1534636 (and d!1939326 d!1939158)))

(assert (=> bs!1534636 (= lambda!337684 lambda!337657)))

(declare-fun bs!1534637 () Bool)

(assert (= bs!1534637 (and d!1939326 d!1939208)))

(assert (=> bs!1534637 (= lambda!337684 lambda!337668)))

(declare-fun bs!1534638 () Bool)

(assert (= bs!1534638 (and d!1939326 d!1939248)))

(assert (=> bs!1534638 (= lambda!337684 lambda!337678)))

(declare-fun bs!1534639 () Bool)

(assert (= bs!1534639 (and d!1939326 d!1939104)))

(assert (=> bs!1534639 (= lambda!337684 lambda!337653)))

(assert (=> d!1939326 (= (nullableZipper!1900 ((_ map or) lt!2339233 lt!2339244)) (exists!2463 ((_ map or) lt!2339233 lt!2339244) lambda!337684))))

(declare-fun bs!1534640 () Bool)

(assert (= bs!1534640 d!1939326))

(declare-fun m!7020478 () Bool)

(assert (=> bs!1534640 m!7020478))

(assert (=> b!6184571 d!1939326))

(declare-fun b!6185560 () Bool)

(declare-fun e!3767288 () Bool)

(declare-fun e!3767286 () Bool)

(assert (=> b!6185560 (= e!3767288 e!3767286)))

(declare-fun c!1115613 () Bool)

(assert (=> b!6185560 (= c!1115613 ((_ is EmptyLang!16121) (regOne!32754 r!7292)))))

(declare-fun bm!516976 () Bool)

(declare-fun call!516981 () Bool)

(assert (=> bm!516976 (= call!516981 (isEmpty!36523 (_1!36403 (get!22280 lt!2339352))))))

(declare-fun b!6185561 () Bool)

(declare-fun e!3767289 () Bool)

(assert (=> b!6185561 (= e!3767289 (not (= (head!12759 (_1!36403 (get!22280 lt!2339352))) (c!1115220 (regOne!32754 r!7292)))))))

(declare-fun b!6185562 () Bool)

(declare-fun e!3767285 () Bool)

(assert (=> b!6185562 (= e!3767285 e!3767289)))

(declare-fun res!2559137 () Bool)

(assert (=> b!6185562 (=> res!2559137 e!3767289)))

(assert (=> b!6185562 (= res!2559137 call!516981)))

(declare-fun b!6185563 () Bool)

(declare-fun e!3767284 () Bool)

(assert (=> b!6185563 (= e!3767284 (= (head!12759 (_1!36403 (get!22280 lt!2339352))) (c!1115220 (regOne!32754 r!7292))))))

(declare-fun d!1939330 () Bool)

(assert (=> d!1939330 e!3767288))

(declare-fun c!1115614 () Bool)

(assert (=> d!1939330 (= c!1115614 ((_ is EmptyExpr!16121) (regOne!32754 r!7292)))))

(declare-fun lt!2339415 () Bool)

(declare-fun e!3767290 () Bool)

(assert (=> d!1939330 (= lt!2339415 e!3767290)))

(declare-fun c!1115615 () Bool)

(assert (=> d!1939330 (= c!1115615 (isEmpty!36523 (_1!36403 (get!22280 lt!2339352))))))

(assert (=> d!1939330 (validRegex!7857 (regOne!32754 r!7292))))

(assert (=> d!1939330 (= (matchR!8304 (regOne!32754 r!7292) (_1!36403 (get!22280 lt!2339352))) lt!2339415)))

(declare-fun b!6185564 () Bool)

(declare-fun res!2559132 () Bool)

(declare-fun e!3767287 () Bool)

(assert (=> b!6185564 (=> res!2559132 e!3767287)))

(assert (=> b!6185564 (= res!2559132 (not ((_ is ElementMatch!16121) (regOne!32754 r!7292))))))

(assert (=> b!6185564 (= e!3767286 e!3767287)))

(declare-fun b!6185565 () Bool)

(declare-fun res!2559138 () Bool)

(assert (=> b!6185565 (=> (not res!2559138) (not e!3767284))))

(assert (=> b!6185565 (= res!2559138 (isEmpty!36523 (tail!11844 (_1!36403 (get!22280 lt!2339352)))))))

(declare-fun b!6185566 () Bool)

(declare-fun res!2559135 () Bool)

(assert (=> b!6185566 (=> res!2559135 e!3767289)))

(assert (=> b!6185566 (= res!2559135 (not (isEmpty!36523 (tail!11844 (_1!36403 (get!22280 lt!2339352))))))))

(declare-fun b!6185567 () Bool)

(assert (=> b!6185567 (= e!3767288 (= lt!2339415 call!516981))))

(declare-fun b!6185568 () Bool)

(declare-fun res!2559131 () Bool)

(assert (=> b!6185568 (=> res!2559131 e!3767287)))

(assert (=> b!6185568 (= res!2559131 e!3767284)))

(declare-fun res!2559134 () Bool)

(assert (=> b!6185568 (=> (not res!2559134) (not e!3767284))))

(assert (=> b!6185568 (= res!2559134 lt!2339415)))

(declare-fun b!6185569 () Bool)

(assert (=> b!6185569 (= e!3767290 (matchR!8304 (derivativeStep!4838 (regOne!32754 r!7292) (head!12759 (_1!36403 (get!22280 lt!2339352)))) (tail!11844 (_1!36403 (get!22280 lt!2339352)))))))

(declare-fun b!6185570 () Bool)

(assert (=> b!6185570 (= e!3767286 (not lt!2339415))))

(declare-fun b!6185571 () Bool)

(declare-fun res!2559136 () Bool)

(assert (=> b!6185571 (=> (not res!2559136) (not e!3767284))))

(assert (=> b!6185571 (= res!2559136 (not call!516981))))

(declare-fun b!6185572 () Bool)

(assert (=> b!6185572 (= e!3767287 e!3767285)))

(declare-fun res!2559133 () Bool)

(assert (=> b!6185572 (=> (not res!2559133) (not e!3767285))))

(assert (=> b!6185572 (= res!2559133 (not lt!2339415))))

(declare-fun b!6185573 () Bool)

(assert (=> b!6185573 (= e!3767290 (nullable!6114 (regOne!32754 r!7292)))))

(assert (= (and d!1939330 c!1115615) b!6185573))

(assert (= (and d!1939330 (not c!1115615)) b!6185569))

(assert (= (and d!1939330 c!1115614) b!6185567))

(assert (= (and d!1939330 (not c!1115614)) b!6185560))

(assert (= (and b!6185560 c!1115613) b!6185570))

(assert (= (and b!6185560 (not c!1115613)) b!6185564))

(assert (= (and b!6185564 (not res!2559132)) b!6185568))

(assert (= (and b!6185568 res!2559134) b!6185571))

(assert (= (and b!6185571 res!2559136) b!6185565))

(assert (= (and b!6185565 res!2559138) b!6185563))

(assert (= (and b!6185568 (not res!2559131)) b!6185572))

(assert (= (and b!6185572 res!2559133) b!6185562))

(assert (= (and b!6185562 (not res!2559137)) b!6185566))

(assert (= (and b!6185566 (not res!2559135)) b!6185561))

(assert (= (or b!6185567 b!6185562 b!6185571) bm!516976))

(declare-fun m!7020492 () Bool)

(assert (=> d!1939330 m!7020492))

(assert (=> d!1939330 m!7019704))

(assert (=> bm!516976 m!7020492))

(declare-fun m!7020494 () Bool)

(assert (=> b!6185566 m!7020494))

(assert (=> b!6185566 m!7020494))

(declare-fun m!7020496 () Bool)

(assert (=> b!6185566 m!7020496))

(declare-fun m!7020498 () Bool)

(assert (=> b!6185569 m!7020498))

(assert (=> b!6185569 m!7020498))

(declare-fun m!7020500 () Bool)

(assert (=> b!6185569 m!7020500))

(assert (=> b!6185569 m!7020494))

(assert (=> b!6185569 m!7020500))

(assert (=> b!6185569 m!7020494))

(declare-fun m!7020502 () Bool)

(assert (=> b!6185569 m!7020502))

(assert (=> b!6185573 m!7020040))

(assert (=> b!6185563 m!7020498))

(assert (=> b!6185565 m!7020494))

(assert (=> b!6185565 m!7020494))

(assert (=> b!6185565 m!7020496))

(assert (=> b!6185561 m!7020498))

(assert (=> b!6184818 d!1939330))

(assert (=> b!6184818 d!1939212))

(declare-fun d!1939334 () Bool)

(assert (=> d!1939334 (= ($colon$colon!1995 (exprs!6005 lt!2339239) (ite (or c!1115465 c!1115469) (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (regTwo!32755 (regOne!32754 r!7292)))) (Cons!64538 (ite (or c!1115465 c!1115469) (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (regTwo!32755 (regOne!32754 r!7292))) (exprs!6005 lt!2339239)))))

(assert (=> bm!516883 d!1939334))

(declare-fun bs!1534641 () Bool)

(declare-fun d!1939336 () Bool)

(assert (= bs!1534641 (and d!1939336 d!1939176)))

(declare-fun lambda!337685 () Int)

(assert (=> bs!1534641 (= lambda!337685 lambda!337661)))

(declare-fun bs!1534642 () Bool)

(assert (= bs!1534642 (and d!1939336 d!1939160)))

(assert (=> bs!1534642 (= lambda!337685 lambda!337658)))

(declare-fun bs!1534643 () Bool)

(assert (= bs!1534643 (and d!1939336 d!1939326)))

(assert (=> bs!1534643 (= lambda!337685 lambda!337684)))

(declare-fun bs!1534644 () Bool)

(assert (= bs!1534644 (and d!1939336 d!1939190)))

(assert (=> bs!1534644 (= lambda!337685 lambda!337665)))

(declare-fun bs!1534645 () Bool)

(assert (= bs!1534645 (and d!1939336 d!1939158)))

(assert (=> bs!1534645 (= lambda!337685 lambda!337657)))

(declare-fun bs!1534646 () Bool)

(assert (= bs!1534646 (and d!1939336 d!1939208)))

(assert (=> bs!1534646 (= lambda!337685 lambda!337668)))

(declare-fun bs!1534647 () Bool)

(assert (= bs!1534647 (and d!1939336 d!1939248)))

(assert (=> bs!1534647 (= lambda!337685 lambda!337678)))

(declare-fun bs!1534648 () Bool)

(assert (= bs!1534648 (and d!1939336 d!1939104)))

(assert (=> bs!1534648 (= lambda!337685 lambda!337653)))

(assert (=> d!1939336 (= (nullableZipper!1900 ((_ map or) lt!2339236 lt!2339244)) (exists!2463 ((_ map or) lt!2339236 lt!2339244) lambda!337685))))

(declare-fun bs!1534649 () Bool)

(assert (= bs!1534649 d!1939336))

(declare-fun m!7020504 () Bool)

(assert (=> bs!1534649 m!7020504))

(assert (=> b!6184982 d!1939336))

(declare-fun b!6185574 () Bool)

(declare-fun e!3767295 () Bool)

(declare-fun e!3767291 () Bool)

(assert (=> b!6185574 (= e!3767295 e!3767291)))

(declare-fun c!1115616 () Bool)

(assert (=> b!6185574 (= c!1115616 ((_ is Union!16121) lt!2339321))))

(declare-fun b!6185575 () Bool)

(declare-fun e!3767292 () Bool)

(assert (=> b!6185575 (= e!3767295 e!3767292)))

(declare-fun res!2559139 () Bool)

(assert (=> b!6185575 (= res!2559139 (not (nullable!6114 (reg!16450 lt!2339321))))))

(assert (=> b!6185575 (=> (not res!2559139) (not e!3767292))))

(declare-fun b!6185576 () Bool)

(declare-fun call!516984 () Bool)

(assert (=> b!6185576 (= e!3767292 call!516984)))

(declare-fun bm!516977 () Bool)

(declare-fun call!516982 () Bool)

(assert (=> bm!516977 (= call!516982 (validRegex!7857 (ite c!1115616 (regOne!32755 lt!2339321) (regOne!32754 lt!2339321))))))

(declare-fun b!6185577 () Bool)

(declare-fun e!3767296 () Bool)

(declare-fun e!3767297 () Bool)

(assert (=> b!6185577 (= e!3767296 e!3767297)))

(declare-fun res!2559143 () Bool)

(assert (=> b!6185577 (=> (not res!2559143) (not e!3767297))))

(assert (=> b!6185577 (= res!2559143 call!516982)))

(declare-fun d!1939338 () Bool)

(declare-fun res!2559142 () Bool)

(declare-fun e!3767294 () Bool)

(assert (=> d!1939338 (=> res!2559142 e!3767294)))

(assert (=> d!1939338 (= res!2559142 ((_ is ElementMatch!16121) lt!2339321))))

(assert (=> d!1939338 (= (validRegex!7857 lt!2339321) e!3767294)))

(declare-fun b!6185578 () Bool)

(declare-fun call!516983 () Bool)

(assert (=> b!6185578 (= e!3767297 call!516983)))

(declare-fun c!1115617 () Bool)

(declare-fun bm!516978 () Bool)

(assert (=> bm!516978 (= call!516984 (validRegex!7857 (ite c!1115617 (reg!16450 lt!2339321) (ite c!1115616 (regTwo!32755 lt!2339321) (regTwo!32754 lt!2339321)))))))

(declare-fun b!6185579 () Bool)

(declare-fun res!2559140 () Bool)

(declare-fun e!3767293 () Bool)

(assert (=> b!6185579 (=> (not res!2559140) (not e!3767293))))

(assert (=> b!6185579 (= res!2559140 call!516982)))

(assert (=> b!6185579 (= e!3767291 e!3767293)))

(declare-fun bm!516979 () Bool)

(assert (=> bm!516979 (= call!516983 call!516984)))

(declare-fun b!6185580 () Bool)

(declare-fun res!2559141 () Bool)

(assert (=> b!6185580 (=> res!2559141 e!3767296)))

(assert (=> b!6185580 (= res!2559141 (not ((_ is Concat!24966) lt!2339321)))))

(assert (=> b!6185580 (= e!3767291 e!3767296)))

(declare-fun b!6185581 () Bool)

(assert (=> b!6185581 (= e!3767293 call!516983)))

(declare-fun b!6185582 () Bool)

(assert (=> b!6185582 (= e!3767294 e!3767295)))

(assert (=> b!6185582 (= c!1115617 ((_ is Star!16121) lt!2339321))))

(assert (= (and d!1939338 (not res!2559142)) b!6185582))

(assert (= (and b!6185582 c!1115617) b!6185575))

(assert (= (and b!6185582 (not c!1115617)) b!6185574))

(assert (= (and b!6185575 res!2559139) b!6185576))

(assert (= (and b!6185574 c!1115616) b!6185579))

(assert (= (and b!6185574 (not c!1115616)) b!6185580))

(assert (= (and b!6185579 res!2559140) b!6185581))

(assert (= (and b!6185580 (not res!2559141)) b!6185577))

(assert (= (and b!6185577 res!2559143) b!6185578))

(assert (= (or b!6185581 b!6185578) bm!516979))

(assert (= (or b!6185579 b!6185577) bm!516977))

(assert (= (or b!6185576 bm!516979) bm!516978))

(declare-fun m!7020506 () Bool)

(assert (=> b!6185575 m!7020506))

(declare-fun m!7020508 () Bool)

(assert (=> bm!516977 m!7020508))

(declare-fun m!7020510 () Bool)

(assert (=> bm!516978 m!7020510))

(assert (=> d!1938904 d!1939338))

(assert (=> d!1938904 d!1939030))

(assert (=> d!1938904 d!1939032))

(declare-fun b!6185583 () Bool)

(declare-fun e!3767302 () Bool)

(declare-fun e!3767298 () Bool)

(assert (=> b!6185583 (= e!3767302 e!3767298)))

(declare-fun c!1115620 () Bool)

(assert (=> b!6185583 (= c!1115620 ((_ is Union!16121) lt!2339374))))

(declare-fun b!6185584 () Bool)

(declare-fun e!3767299 () Bool)

(assert (=> b!6185584 (= e!3767302 e!3767299)))

(declare-fun res!2559144 () Bool)

(assert (=> b!6185584 (= res!2559144 (not (nullable!6114 (reg!16450 lt!2339374))))))

(assert (=> b!6185584 (=> (not res!2559144) (not e!3767299))))

(declare-fun b!6185585 () Bool)

(declare-fun call!516987 () Bool)

(assert (=> b!6185585 (= e!3767299 call!516987)))

(declare-fun bm!516980 () Bool)

(declare-fun call!516985 () Bool)

(assert (=> bm!516980 (= call!516985 (validRegex!7857 (ite c!1115620 (regOne!32755 lt!2339374) (regOne!32754 lt!2339374))))))

(declare-fun b!6185586 () Bool)

(declare-fun e!3767303 () Bool)

(declare-fun e!3767304 () Bool)

(assert (=> b!6185586 (= e!3767303 e!3767304)))

(declare-fun res!2559148 () Bool)

(assert (=> b!6185586 (=> (not res!2559148) (not e!3767304))))

(assert (=> b!6185586 (= res!2559148 call!516985)))

(declare-fun d!1939340 () Bool)

(declare-fun res!2559147 () Bool)

(declare-fun e!3767301 () Bool)

(assert (=> d!1939340 (=> res!2559147 e!3767301)))

(assert (=> d!1939340 (= res!2559147 ((_ is ElementMatch!16121) lt!2339374))))

(assert (=> d!1939340 (= (validRegex!7857 lt!2339374) e!3767301)))

(declare-fun b!6185587 () Bool)

(declare-fun call!516986 () Bool)

(assert (=> b!6185587 (= e!3767304 call!516986)))

(declare-fun bm!516981 () Bool)

(declare-fun c!1115621 () Bool)

(assert (=> bm!516981 (= call!516987 (validRegex!7857 (ite c!1115621 (reg!16450 lt!2339374) (ite c!1115620 (regTwo!32755 lt!2339374) (regTwo!32754 lt!2339374)))))))

(declare-fun b!6185588 () Bool)

(declare-fun res!2559145 () Bool)

(declare-fun e!3767300 () Bool)

(assert (=> b!6185588 (=> (not res!2559145) (not e!3767300))))

(assert (=> b!6185588 (= res!2559145 call!516985)))

(assert (=> b!6185588 (= e!3767298 e!3767300)))

(declare-fun bm!516982 () Bool)

(assert (=> bm!516982 (= call!516986 call!516987)))

(declare-fun b!6185589 () Bool)

(declare-fun res!2559146 () Bool)

(assert (=> b!6185589 (=> res!2559146 e!3767303)))

(assert (=> b!6185589 (= res!2559146 (not ((_ is Concat!24966) lt!2339374)))))

(assert (=> b!6185589 (= e!3767298 e!3767303)))

(declare-fun b!6185590 () Bool)

(assert (=> b!6185590 (= e!3767300 call!516986)))

(declare-fun b!6185591 () Bool)

(assert (=> b!6185591 (= e!3767301 e!3767302)))

(assert (=> b!6185591 (= c!1115621 ((_ is Star!16121) lt!2339374))))

(assert (= (and d!1939340 (not res!2559147)) b!6185591))

(assert (= (and b!6185591 c!1115621) b!6185584))

(assert (= (and b!6185591 (not c!1115621)) b!6185583))

(assert (= (and b!6185584 res!2559144) b!6185585))

(assert (= (and b!6185583 c!1115620) b!6185588))

(assert (= (and b!6185583 (not c!1115620)) b!6185589))

(assert (= (and b!6185588 res!2559145) b!6185590))

(assert (= (and b!6185589 (not res!2559146)) b!6185586))

(assert (= (and b!6185586 res!2559148) b!6185587))

(assert (= (or b!6185590 b!6185587) bm!516982))

(assert (= (or b!6185588 b!6185586) bm!516980))

(assert (= (or b!6185585 bm!516982) bm!516981))

(declare-fun m!7020512 () Bool)

(assert (=> b!6185584 m!7020512))

(declare-fun m!7020514 () Bool)

(assert (=> bm!516980 m!7020514))

(declare-fun m!7020516 () Bool)

(assert (=> bm!516981 m!7020516))

(assert (=> d!1939028 d!1939340))

(declare-fun d!1939342 () Bool)

(declare-fun res!2559149 () Bool)

(declare-fun e!3767305 () Bool)

(assert (=> d!1939342 (=> res!2559149 e!3767305)))

(assert (=> d!1939342 (= res!2559149 ((_ is Nil!64538) (exprs!6005 (h!70987 zl!343))))))

(assert (=> d!1939342 (= (forall!15240 (exprs!6005 (h!70987 zl!343)) lambda!337639) e!3767305)))

(declare-fun b!6185592 () Bool)

(declare-fun e!3767306 () Bool)

(assert (=> b!6185592 (= e!3767305 e!3767306)))

(declare-fun res!2559150 () Bool)

(assert (=> b!6185592 (=> (not res!2559150) (not e!3767306))))

(assert (=> b!6185592 (= res!2559150 (dynLambda!25453 lambda!337639 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185593 () Bool)

(assert (=> b!6185593 (= e!3767306 (forall!15240 (t!378170 (exprs!6005 (h!70987 zl!343))) lambda!337639))))

(assert (= (and d!1939342 (not res!2559149)) b!6185592))

(assert (= (and b!6185592 res!2559150) b!6185593))

(declare-fun b_lambda!235377 () Bool)

(assert (=> (not b_lambda!235377) (not b!6185592)))

(declare-fun m!7020518 () Bool)

(assert (=> b!6185592 m!7020518))

(declare-fun m!7020520 () Bool)

(assert (=> b!6185593 m!7020520))

(assert (=> d!1939028 d!1939342))

(declare-fun bm!516983 () Bool)

(declare-fun c!1115624 () Bool)

(declare-fun call!516989 () List!64662)

(declare-fun call!516992 () (InoxSet Context!11010))

(assert (=> bm!516983 (= call!516992 (derivationStepZipperDown!1369 (ite c!1115624 (regOne!32755 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (regOne!32754 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))))) (ite c!1115624 (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881)) (Context!11011 call!516989)) (h!70988 s!2326)))))

(declare-fun b!6185594 () Bool)

(declare-fun e!3767309 () (InoxSet Context!11010))

(declare-fun e!3767308 () (InoxSet Context!11010))

(assert (=> b!6185594 (= e!3767309 e!3767308)))

(assert (=> b!6185594 (= c!1115624 ((_ is Union!16121) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun bm!516984 () Bool)

(declare-fun c!1115626 () Bool)

(declare-fun c!1115622 () Bool)

(assert (=> bm!516984 (= call!516989 ($colon$colon!1995 (exprs!6005 (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881))) (ite (or c!1115622 c!1115626) (regTwo!32754 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))))))))

(declare-fun b!6185595 () Bool)

(declare-fun e!3767312 () Bool)

(assert (=> b!6185595 (= c!1115622 e!3767312)))

(declare-fun res!2559151 () Bool)

(assert (=> b!6185595 (=> (not res!2559151) (not e!3767312))))

(assert (=> b!6185595 (= res!2559151 ((_ is Concat!24966) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun e!3767311 () (InoxSet Context!11010))

(assert (=> b!6185595 (= e!3767308 e!3767311)))

(declare-fun b!6185596 () Bool)

(assert (=> b!6185596 (= e!3767312 (nullable!6114 (regOne!32754 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))))))))

(declare-fun b!6185597 () Bool)

(declare-fun call!516990 () (InoxSet Context!11010))

(assert (=> b!6185597 (= e!3767311 ((_ map or) call!516992 call!516990))))

(declare-fun bm!516985 () Bool)

(declare-fun call!516993 () (InoxSet Context!11010))

(assert (=> bm!516985 (= call!516990 call!516993)))

(declare-fun b!6185598 () Bool)

(declare-fun e!3767310 () (InoxSet Context!11010))

(declare-fun call!516991 () (InoxSet Context!11010))

(assert (=> b!6185598 (= e!3767310 call!516991)))

(declare-fun b!6185599 () Bool)

(assert (=> b!6185599 (= e!3767310 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!516986 () Bool)

(declare-fun call!516988 () List!64662)

(assert (=> bm!516986 (= call!516988 call!516989)))

(declare-fun b!6185600 () Bool)

(assert (=> b!6185600 (= e!3767309 (store ((as const (Array Context!11010 Bool)) false) (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881)) true))))

(declare-fun b!6185602 () Bool)

(declare-fun c!1115625 () Bool)

(assert (=> b!6185602 (= c!1115625 ((_ is Star!16121) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun e!3767307 () (InoxSet Context!11010))

(assert (=> b!6185602 (= e!3767307 e!3767310)))

(declare-fun b!6185603 () Bool)

(assert (=> b!6185603 (= e!3767307 call!516991)))

(declare-fun b!6185604 () Bool)

(assert (=> b!6185604 (= e!3767308 ((_ map or) call!516992 call!516993))))

(declare-fun d!1939344 () Bool)

(declare-fun c!1115623 () Bool)

(assert (=> d!1939344 (= c!1115623 (and ((_ is ElementMatch!16121) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (= (c!1115220 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326))))))

(assert (=> d!1939344 (= (derivationStepZipperDown!1369 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))) (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881)) (h!70988 s!2326)) e!3767309)))

(declare-fun b!6185601 () Bool)

(assert (=> b!6185601 (= e!3767311 e!3767307)))

(assert (=> b!6185601 (= c!1115626 ((_ is Concat!24966) (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun bm!516987 () Bool)

(assert (=> bm!516987 (= call!516991 call!516990)))

(declare-fun bm!516988 () Bool)

(assert (=> bm!516988 (= call!516993 (derivationStepZipperDown!1369 (ite c!1115624 (regTwo!32755 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (ite c!1115622 (regTwo!32754 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (ite c!1115626 (regOne!32754 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343)))))))) (reg!16450 (ite c!1115440 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115438 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115442 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))))))) (ite (or c!1115624 c!1115622) (ite (or c!1115440 c!1115438) lt!2339239 (Context!11011 call!516881)) (Context!11011 call!516988)) (h!70988 s!2326)))))

(assert (= (and d!1939344 c!1115623) b!6185600))

(assert (= (and d!1939344 (not c!1115623)) b!6185594))

(assert (= (and b!6185594 c!1115624) b!6185604))

(assert (= (and b!6185594 (not c!1115624)) b!6185595))

(assert (= (and b!6185595 res!2559151) b!6185596))

(assert (= (and b!6185595 c!1115622) b!6185597))

(assert (= (and b!6185595 (not c!1115622)) b!6185601))

(assert (= (and b!6185601 c!1115626) b!6185603))

(assert (= (and b!6185601 (not c!1115626)) b!6185602))

(assert (= (and b!6185602 c!1115625) b!6185598))

(assert (= (and b!6185602 (not c!1115625)) b!6185599))

(assert (= (or b!6185603 b!6185598) bm!516986))

(assert (= (or b!6185603 b!6185598) bm!516987))

(assert (= (or b!6185597 bm!516986) bm!516984))

(assert (= (or b!6185597 bm!516987) bm!516985))

(assert (= (or b!6185604 bm!516985) bm!516988))

(assert (= (or b!6185604 b!6185597) bm!516983))

(declare-fun m!7020522 () Bool)

(assert (=> b!6185600 m!7020522))

(declare-fun m!7020524 () Bool)

(assert (=> b!6185596 m!7020524))

(declare-fun m!7020526 () Bool)

(assert (=> bm!516984 m!7020526))

(declare-fun m!7020528 () Bool)

(assert (=> bm!516983 m!7020528))

(declare-fun m!7020532 () Bool)

(assert (=> bm!516988 m!7020532))

(assert (=> bm!516881 d!1939344))

(declare-fun b!6185607 () Bool)

(declare-fun e!3767317 () Bool)

(declare-fun e!3767313 () Bool)

(assert (=> b!6185607 (= e!3767317 e!3767313)))

(declare-fun c!1115627 () Bool)

(assert (=> b!6185607 (= c!1115627 ((_ is Union!16121) lt!2339371))))

(declare-fun b!6185608 () Bool)

(declare-fun e!3767314 () Bool)

(assert (=> b!6185608 (= e!3767317 e!3767314)))

(declare-fun res!2559152 () Bool)

(assert (=> b!6185608 (= res!2559152 (not (nullable!6114 (reg!16450 lt!2339371))))))

(assert (=> b!6185608 (=> (not res!2559152) (not e!3767314))))

(declare-fun b!6185609 () Bool)

(declare-fun call!516996 () Bool)

(assert (=> b!6185609 (= e!3767314 call!516996)))

(declare-fun bm!516989 () Bool)

(declare-fun call!516994 () Bool)

(assert (=> bm!516989 (= call!516994 (validRegex!7857 (ite c!1115627 (regOne!32755 lt!2339371) (regOne!32754 lt!2339371))))))

(declare-fun b!6185610 () Bool)

(declare-fun e!3767318 () Bool)

(declare-fun e!3767319 () Bool)

(assert (=> b!6185610 (= e!3767318 e!3767319)))

(declare-fun res!2559156 () Bool)

(assert (=> b!6185610 (=> (not res!2559156) (not e!3767319))))

(assert (=> b!6185610 (= res!2559156 call!516994)))

(declare-fun d!1939346 () Bool)

(declare-fun res!2559155 () Bool)

(declare-fun e!3767316 () Bool)

(assert (=> d!1939346 (=> res!2559155 e!3767316)))

(assert (=> d!1939346 (= res!2559155 ((_ is ElementMatch!16121) lt!2339371))))

(assert (=> d!1939346 (= (validRegex!7857 lt!2339371) e!3767316)))

(declare-fun b!6185611 () Bool)

(declare-fun call!516995 () Bool)

(assert (=> b!6185611 (= e!3767319 call!516995)))

(declare-fun bm!516990 () Bool)

(declare-fun c!1115628 () Bool)

(assert (=> bm!516990 (= call!516996 (validRegex!7857 (ite c!1115628 (reg!16450 lt!2339371) (ite c!1115627 (regTwo!32755 lt!2339371) (regTwo!32754 lt!2339371)))))))

(declare-fun b!6185612 () Bool)

(declare-fun res!2559153 () Bool)

(declare-fun e!3767315 () Bool)

(assert (=> b!6185612 (=> (not res!2559153) (not e!3767315))))

(assert (=> b!6185612 (= res!2559153 call!516994)))

(assert (=> b!6185612 (= e!3767313 e!3767315)))

(declare-fun bm!516991 () Bool)

(assert (=> bm!516991 (= call!516995 call!516996)))

(declare-fun b!6185613 () Bool)

(declare-fun res!2559154 () Bool)

(assert (=> b!6185613 (=> res!2559154 e!3767318)))

(assert (=> b!6185613 (= res!2559154 (not ((_ is Concat!24966) lt!2339371)))))

(assert (=> b!6185613 (= e!3767313 e!3767318)))

(declare-fun b!6185614 () Bool)

(assert (=> b!6185614 (= e!3767315 call!516995)))

(declare-fun b!6185615 () Bool)

(assert (=> b!6185615 (= e!3767316 e!3767317)))

(assert (=> b!6185615 (= c!1115628 ((_ is Star!16121) lt!2339371))))

(assert (= (and d!1939346 (not res!2559155)) b!6185615))

(assert (= (and b!6185615 c!1115628) b!6185608))

(assert (= (and b!6185615 (not c!1115628)) b!6185607))

(assert (= (and b!6185608 res!2559152) b!6185609))

(assert (= (and b!6185607 c!1115627) b!6185612))

(assert (= (and b!6185607 (not c!1115627)) b!6185613))

(assert (= (and b!6185612 res!2559153) b!6185614))

(assert (= (and b!6185613 (not res!2559154)) b!6185610))

(assert (= (and b!6185610 res!2559156) b!6185611))

(assert (= (or b!6185614 b!6185611) bm!516991))

(assert (= (or b!6185612 b!6185610) bm!516989))

(assert (= (or b!6185609 bm!516991) bm!516990))

(declare-fun m!7020534 () Bool)

(assert (=> b!6185608 m!7020534))

(declare-fun m!7020536 () Bool)

(assert (=> bm!516989 m!7020536))

(declare-fun m!7020538 () Bool)

(assert (=> bm!516990 m!7020538))

(assert (=> d!1939020 d!1939346))

(declare-fun bs!1534652 () Bool)

(declare-fun d!1939350 () Bool)

(assert (= bs!1534652 (and d!1939350 d!1939154)))

(declare-fun lambda!337689 () Int)

(assert (=> bs!1534652 (= lambda!337689 lambda!337656)))

(declare-fun bs!1534653 () Bool)

(assert (= bs!1534653 (and d!1939350 d!1939032)))

(assert (=> bs!1534653 (= lambda!337689 lambda!337645)))

(declare-fun bs!1534654 () Bool)

(assert (= bs!1534654 (and d!1939350 d!1939000)))

(assert (=> bs!1534654 (= lambda!337689 lambda!337637)))

(declare-fun bs!1534655 () Bool)

(assert (= bs!1534655 (and d!1939350 d!1939028)))

(assert (=> bs!1534655 (= lambda!337689 lambda!337639)))

(declare-fun bs!1534656 () Bool)

(assert (= bs!1534656 (and d!1939350 d!1939150)))

(assert (=> bs!1534656 (= lambda!337689 lambda!337655)))

(declare-fun bs!1534657 () Bool)

(assert (= bs!1534657 (and d!1939350 d!1939078)))

(assert (=> bs!1534657 (= lambda!337689 lambda!337646)))

(declare-fun bs!1534658 () Bool)

(assert (= bs!1534658 (and d!1939350 d!1939266)))

(assert (=> bs!1534658 (= lambda!337689 lambda!337679)))

(declare-fun bs!1534659 () Bool)

(assert (= bs!1534659 (and d!1939350 d!1938996)))

(assert (=> bs!1534659 (= lambda!337689 lambda!337633)))

(declare-fun bs!1534660 () Bool)

(assert (= bs!1534660 (and d!1939350 d!1939030)))

(assert (=> bs!1534660 (= lambda!337689 lambda!337642)))

(declare-fun bs!1534661 () Bool)

(assert (= bs!1534661 (and d!1939350 d!1939172)))

(assert (=> bs!1534661 (= lambda!337689 lambda!337660)))

(declare-fun bs!1534662 () Bool)

(assert (= bs!1534662 (and d!1939350 d!1939214)))

(assert (=> bs!1534662 (= lambda!337689 lambda!337669)))

(declare-fun bs!1534663 () Bool)

(assert (= bs!1534663 (and d!1939350 d!1939002)))

(assert (=> bs!1534663 (= lambda!337689 lambda!337638)))

(declare-fun bs!1534664 () Bool)

(assert (= bs!1534664 (and d!1939350 d!1939134)))

(assert (=> bs!1534664 (= lambda!337689 lambda!337654)))

(declare-fun bs!1534665 () Bool)

(assert (= bs!1534665 (and d!1939350 d!1938998)))

(assert (=> bs!1534665 (= lambda!337689 lambda!337634)))

(declare-fun b!6185616 () Bool)

(declare-fun e!3767320 () Regex!16121)

(assert (=> b!6185616 (= e!3767320 EmptyLang!16121)))

(declare-fun b!6185617 () Bool)

(assert (=> b!6185617 (= e!3767320 (Union!16121 (h!70986 (unfocusZipperList!1542 lt!2339263)) (generalisedUnion!1965 (t!378170 (unfocusZipperList!1542 lt!2339263)))))))

(declare-fun e!3767325 () Bool)

(assert (=> d!1939350 e!3767325))

(declare-fun res!2559157 () Bool)

(assert (=> d!1939350 (=> (not res!2559157) (not e!3767325))))

(declare-fun lt!2339416 () Regex!16121)

(assert (=> d!1939350 (= res!2559157 (validRegex!7857 lt!2339416))))

(declare-fun e!3767322 () Regex!16121)

(assert (=> d!1939350 (= lt!2339416 e!3767322)))

(declare-fun c!1115629 () Bool)

(declare-fun e!3767323 () Bool)

(assert (=> d!1939350 (= c!1115629 e!3767323)))

(declare-fun res!2559158 () Bool)

(assert (=> d!1939350 (=> (not res!2559158) (not e!3767323))))

(assert (=> d!1939350 (= res!2559158 ((_ is Cons!64538) (unfocusZipperList!1542 lt!2339263)))))

(assert (=> d!1939350 (forall!15240 (unfocusZipperList!1542 lt!2339263) lambda!337689)))

(assert (=> d!1939350 (= (generalisedUnion!1965 (unfocusZipperList!1542 lt!2339263)) lt!2339416)))

(declare-fun b!6185618 () Bool)

(declare-fun e!3767324 () Bool)

(declare-fun e!3767321 () Bool)

(assert (=> b!6185618 (= e!3767324 e!3767321)))

(declare-fun c!1115632 () Bool)

(assert (=> b!6185618 (= c!1115632 (isEmpty!36520 (tail!11845 (unfocusZipperList!1542 lt!2339263))))))

(declare-fun b!6185619 () Bool)

(assert (=> b!6185619 (= e!3767322 e!3767320)))

(declare-fun c!1115631 () Bool)

(assert (=> b!6185619 (= c!1115631 ((_ is Cons!64538) (unfocusZipperList!1542 lt!2339263)))))

(declare-fun b!6185620 () Bool)

(assert (=> b!6185620 (= e!3767321 (= lt!2339416 (head!12760 (unfocusZipperList!1542 lt!2339263))))))

(declare-fun b!6185621 () Bool)

(assert (=> b!6185621 (= e!3767325 e!3767324)))

(declare-fun c!1115630 () Bool)

(assert (=> b!6185621 (= c!1115630 (isEmpty!36520 (unfocusZipperList!1542 lt!2339263)))))

(declare-fun b!6185622 () Bool)

(assert (=> b!6185622 (= e!3767323 (isEmpty!36520 (t!378170 (unfocusZipperList!1542 lt!2339263))))))

(declare-fun b!6185623 () Bool)

(assert (=> b!6185623 (= e!3767324 (isEmptyLang!1545 lt!2339416))))

(declare-fun b!6185624 () Bool)

(assert (=> b!6185624 (= e!3767322 (h!70986 (unfocusZipperList!1542 lt!2339263)))))

(declare-fun b!6185625 () Bool)

(assert (=> b!6185625 (= e!3767321 (isUnion!975 lt!2339416))))

(assert (= (and d!1939350 res!2559158) b!6185622))

(assert (= (and d!1939350 c!1115629) b!6185624))

(assert (= (and d!1939350 (not c!1115629)) b!6185619))

(assert (= (and b!6185619 c!1115631) b!6185617))

(assert (= (and b!6185619 (not c!1115631)) b!6185616))

(assert (= (and d!1939350 res!2559157) b!6185621))

(assert (= (and b!6185621 c!1115630) b!6185623))

(assert (= (and b!6185621 (not c!1115630)) b!6185618))

(assert (= (and b!6185618 c!1115632) b!6185620))

(assert (= (and b!6185618 (not c!1115632)) b!6185625))

(declare-fun m!7020540 () Bool)

(assert (=> b!6185625 m!7020540))

(assert (=> b!6185620 m!7019826))

(declare-fun m!7020542 () Bool)

(assert (=> b!6185620 m!7020542))

(assert (=> b!6185621 m!7019826))

(declare-fun m!7020544 () Bool)

(assert (=> b!6185621 m!7020544))

(declare-fun m!7020546 () Bool)

(assert (=> b!6185622 m!7020546))

(declare-fun m!7020548 () Bool)

(assert (=> b!6185617 m!7020548))

(declare-fun m!7020550 () Bool)

(assert (=> d!1939350 m!7020550))

(assert (=> d!1939350 m!7019826))

(declare-fun m!7020552 () Bool)

(assert (=> d!1939350 m!7020552))

(declare-fun m!7020554 () Bool)

(assert (=> b!6185623 m!7020554))

(assert (=> b!6185618 m!7019826))

(declare-fun m!7020556 () Bool)

(assert (=> b!6185618 m!7020556))

(assert (=> b!6185618 m!7020556))

(declare-fun m!7020558 () Bool)

(assert (=> b!6185618 m!7020558))

(assert (=> d!1939020 d!1939350))

(declare-fun bs!1534666 () Bool)

(declare-fun d!1939356 () Bool)

(assert (= bs!1534666 (and d!1939356 d!1939154)))

(declare-fun lambda!337690 () Int)

(assert (=> bs!1534666 (= lambda!337690 lambda!337656)))

(declare-fun bs!1534667 () Bool)

(assert (= bs!1534667 (and d!1939356 d!1939032)))

(assert (=> bs!1534667 (= lambda!337690 lambda!337645)))

(declare-fun bs!1534668 () Bool)

(assert (= bs!1534668 (and d!1939356 d!1939000)))

(assert (=> bs!1534668 (= lambda!337690 lambda!337637)))

(declare-fun bs!1534669 () Bool)

(assert (= bs!1534669 (and d!1939356 d!1939028)))

(assert (=> bs!1534669 (= lambda!337690 lambda!337639)))

(declare-fun bs!1534670 () Bool)

(assert (= bs!1534670 (and d!1939356 d!1939150)))

(assert (=> bs!1534670 (= lambda!337690 lambda!337655)))

(declare-fun bs!1534671 () Bool)

(assert (= bs!1534671 (and d!1939356 d!1939078)))

(assert (=> bs!1534671 (= lambda!337690 lambda!337646)))

(declare-fun bs!1534672 () Bool)

(assert (= bs!1534672 (and d!1939356 d!1939350)))

(assert (=> bs!1534672 (= lambda!337690 lambda!337689)))

(declare-fun bs!1534673 () Bool)

(assert (= bs!1534673 (and d!1939356 d!1939266)))

(assert (=> bs!1534673 (= lambda!337690 lambda!337679)))

(declare-fun bs!1534674 () Bool)

(assert (= bs!1534674 (and d!1939356 d!1938996)))

(assert (=> bs!1534674 (= lambda!337690 lambda!337633)))

(declare-fun bs!1534675 () Bool)

(assert (= bs!1534675 (and d!1939356 d!1939030)))

(assert (=> bs!1534675 (= lambda!337690 lambda!337642)))

(declare-fun bs!1534676 () Bool)

(assert (= bs!1534676 (and d!1939356 d!1939172)))

(assert (=> bs!1534676 (= lambda!337690 lambda!337660)))

(declare-fun bs!1534677 () Bool)

(assert (= bs!1534677 (and d!1939356 d!1939214)))

(assert (=> bs!1534677 (= lambda!337690 lambda!337669)))

(declare-fun bs!1534678 () Bool)

(assert (= bs!1534678 (and d!1939356 d!1939002)))

(assert (=> bs!1534678 (= lambda!337690 lambda!337638)))

(declare-fun bs!1534679 () Bool)

(assert (= bs!1534679 (and d!1939356 d!1939134)))

(assert (=> bs!1534679 (= lambda!337690 lambda!337654)))

(declare-fun bs!1534680 () Bool)

(assert (= bs!1534680 (and d!1939356 d!1938998)))

(assert (=> bs!1534680 (= lambda!337690 lambda!337634)))

(declare-fun lt!2339418 () List!64662)

(assert (=> d!1939356 (forall!15240 lt!2339418 lambda!337690)))

(declare-fun e!3767333 () List!64662)

(assert (=> d!1939356 (= lt!2339418 e!3767333)))

(declare-fun c!1115636 () Bool)

(assert (=> d!1939356 (= c!1115636 ((_ is Cons!64539) lt!2339263))))

(assert (=> d!1939356 (= (unfocusZipperList!1542 lt!2339263) lt!2339418)))

(declare-fun b!6185640 () Bool)

(assert (=> b!6185640 (= e!3767333 (Cons!64538 (generalisedConcat!1718 (exprs!6005 (h!70987 lt!2339263))) (unfocusZipperList!1542 (t!378171 lt!2339263))))))

(declare-fun b!6185641 () Bool)

(assert (=> b!6185641 (= e!3767333 Nil!64538)))

(assert (= (and d!1939356 c!1115636) b!6185640))

(assert (= (and d!1939356 (not c!1115636)) b!6185641))

(declare-fun m!7020562 () Bool)

(assert (=> d!1939356 m!7020562))

(declare-fun m!7020566 () Bool)

(assert (=> b!6185640 m!7020566))

(declare-fun m!7020568 () Bool)

(assert (=> b!6185640 m!7020568))

(assert (=> d!1939020 d!1939356))

(assert (=> d!1939052 d!1939056))

(declare-fun d!1939358 () Bool)

(assert (=> d!1939358 (= (flatMap!1626 lt!2339250 lambda!337585) (dynLambda!25452 lambda!337585 lt!2339232))))

(assert (=> d!1939358 true))

(declare-fun _$13!3168 () Unit!157747)

(assert (=> d!1939358 (= (choose!45949 lt!2339250 lt!2339232 lambda!337585) _$13!3168)))

(declare-fun b_lambda!235379 () Bool)

(assert (=> (not b_lambda!235379) (not d!1939358)))

(declare-fun bs!1534681 () Bool)

(assert (= bs!1534681 d!1939358))

(assert (=> bs!1534681 m!7019128))

(assert (=> bs!1534681 m!7019930))

(assert (=> d!1939052 d!1939358))

(assert (=> b!6184866 d!1939074))

(assert (=> b!6184866 d!1939076))

(declare-fun d!1939360 () Bool)

(assert (=> d!1939360 (= (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (nullableFct!2075 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun bs!1534682 () Bool)

(assert (= bs!1534682 d!1939360))

(declare-fun m!7020580 () Bool)

(assert (=> bs!1534682 m!7020580))

(assert (=> b!6184933 d!1939360))

(declare-fun b!6185642 () Bool)

(declare-fun e!3767338 () Bool)

(declare-fun e!3767334 () Bool)

(assert (=> b!6185642 (= e!3767338 e!3767334)))

(declare-fun c!1115637 () Bool)

(assert (=> b!6185642 (= c!1115637 ((_ is Union!16121) (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))

(declare-fun b!6185643 () Bool)

(declare-fun e!3767335 () Bool)

(assert (=> b!6185643 (= e!3767338 e!3767335)))

(declare-fun res!2559167 () Bool)

(assert (=> b!6185643 (= res!2559167 (not (nullable!6114 (reg!16450 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))))

(assert (=> b!6185643 (=> (not res!2559167) (not e!3767335))))

(declare-fun b!6185644 () Bool)

(declare-fun call!517000 () Bool)

(assert (=> b!6185644 (= e!3767335 call!517000)))

(declare-fun bm!516993 () Bool)

(declare-fun call!516998 () Bool)

(assert (=> bm!516993 (= call!516998 (validRegex!7857 (ite c!1115637 (regOne!32755 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))) (regOne!32754 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))))

(declare-fun b!6185645 () Bool)

(declare-fun e!3767339 () Bool)

(declare-fun e!3767340 () Bool)

(assert (=> b!6185645 (= e!3767339 e!3767340)))

(declare-fun res!2559171 () Bool)

(assert (=> b!6185645 (=> (not res!2559171) (not e!3767340))))

(assert (=> b!6185645 (= res!2559171 call!516998)))

(declare-fun d!1939362 () Bool)

(declare-fun res!2559170 () Bool)

(declare-fun e!3767337 () Bool)

(assert (=> d!1939362 (=> res!2559170 e!3767337)))

(assert (=> d!1939362 (= res!2559170 ((_ is ElementMatch!16121) (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))

(assert (=> d!1939362 (= (validRegex!7857 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))) e!3767337)))

(declare-fun b!6185646 () Bool)

(declare-fun call!516999 () Bool)

(assert (=> b!6185646 (= e!3767340 call!516999)))

(declare-fun bm!516994 () Bool)

(declare-fun c!1115638 () Bool)

(assert (=> bm!516994 (= call!517000 (validRegex!7857 (ite c!1115638 (reg!16450 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))) (ite c!1115637 (regTwo!32755 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))) (regTwo!32754 (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264)))))))))

(declare-fun b!6185647 () Bool)

(declare-fun res!2559168 () Bool)

(declare-fun e!3767336 () Bool)

(assert (=> b!6185647 (=> (not res!2559168) (not e!3767336))))

(assert (=> b!6185647 (= res!2559168 call!516998)))

(assert (=> b!6185647 (= e!3767334 e!3767336)))

(declare-fun bm!516995 () Bool)

(assert (=> bm!516995 (= call!516999 call!517000)))

(declare-fun b!6185648 () Bool)

(declare-fun res!2559169 () Bool)

(assert (=> b!6185648 (=> res!2559169 e!3767339)))

(assert (=> b!6185648 (= res!2559169 (not ((_ is Concat!24966) (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264)))))))

(assert (=> b!6185648 (= e!3767334 e!3767339)))

(declare-fun b!6185649 () Bool)

(assert (=> b!6185649 (= e!3767336 call!516999)))

(declare-fun b!6185650 () Bool)

(assert (=> b!6185650 (= e!3767337 e!3767338)))

(assert (=> b!6185650 (= c!1115638 ((_ is Star!16121) (ite c!1115400 (regOne!32755 lt!2339264) (regOne!32754 lt!2339264))))))

(assert (= (and d!1939362 (not res!2559170)) b!6185650))

(assert (= (and b!6185650 c!1115638) b!6185643))

(assert (= (and b!6185650 (not c!1115638)) b!6185642))

(assert (= (and b!6185643 res!2559167) b!6185644))

(assert (= (and b!6185642 c!1115637) b!6185647))

(assert (= (and b!6185642 (not c!1115637)) b!6185648))

(assert (= (and b!6185647 res!2559168) b!6185649))

(assert (= (and b!6185648 (not res!2559169)) b!6185645))

(assert (= (and b!6185645 res!2559171) b!6185646))

(assert (= (or b!6185649 b!6185646) bm!516995))

(assert (= (or b!6185647 b!6185645) bm!516993))

(assert (= (or b!6185644 bm!516995) bm!516994))

(declare-fun m!7020584 () Bool)

(assert (=> b!6185643 m!7020584))

(declare-fun m!7020586 () Bool)

(assert (=> bm!516993 m!7020586))

(declare-fun m!7020588 () Bool)

(assert (=> bm!516994 m!7020588))

(assert (=> bm!516856 d!1939362))

(declare-fun bs!1534683 () Bool)

(declare-fun d!1939366 () Bool)

(assert (= bs!1534683 (and d!1939366 d!1939176)))

(declare-fun lambda!337691 () Int)

(assert (=> bs!1534683 (= lambda!337691 lambda!337661)))

(declare-fun bs!1534684 () Bool)

(assert (= bs!1534684 (and d!1939366 d!1939160)))

(assert (=> bs!1534684 (= lambda!337691 lambda!337658)))

(declare-fun bs!1534685 () Bool)

(assert (= bs!1534685 (and d!1939366 d!1939326)))

(assert (=> bs!1534685 (= lambda!337691 lambda!337684)))

(declare-fun bs!1534686 () Bool)

(assert (= bs!1534686 (and d!1939366 d!1939190)))

(assert (=> bs!1534686 (= lambda!337691 lambda!337665)))

(declare-fun bs!1534687 () Bool)

(assert (= bs!1534687 (and d!1939366 d!1939158)))

(assert (=> bs!1534687 (= lambda!337691 lambda!337657)))

(declare-fun bs!1534688 () Bool)

(assert (= bs!1534688 (and d!1939366 d!1939208)))

(assert (=> bs!1534688 (= lambda!337691 lambda!337668)))

(declare-fun bs!1534689 () Bool)

(assert (= bs!1534689 (and d!1939366 d!1939336)))

(assert (=> bs!1534689 (= lambda!337691 lambda!337685)))

(declare-fun bs!1534690 () Bool)

(assert (= bs!1534690 (and d!1939366 d!1939248)))

(assert (=> bs!1534690 (= lambda!337691 lambda!337678)))

(declare-fun bs!1534691 () Bool)

(assert (= bs!1534691 (and d!1939366 d!1939104)))

(assert (=> bs!1534691 (= lambda!337691 lambda!337653)))

(assert (=> d!1939366 (= (nullableZipper!1900 lt!2339233) (exists!2463 lt!2339233 lambda!337691))))

(declare-fun bs!1534692 () Bool)

(assert (= bs!1534692 d!1939366))

(declare-fun m!7020590 () Bool)

(assert (=> bs!1534692 m!7020590))

(assert (=> b!6184569 d!1939366))

(declare-fun d!1939370 () Bool)

(assert (=> d!1939370 (= (nullable!6114 (reg!16450 r!7292)) (nullableFct!2075 (reg!16450 r!7292)))))

(declare-fun bs!1534693 () Bool)

(assert (= bs!1534693 d!1939370))

(declare-fun m!7020592 () Bool)

(assert (=> bs!1534693 m!7020592))

(assert (=> b!6184852 d!1939370))

(assert (=> d!1938932 d!1939106))

(declare-fun d!1939372 () Bool)

(assert (=> d!1939372 (= (isEmpty!36520 (tail!11845 lt!2339241)) ((_ is Nil!64538) (tail!11845 lt!2339241)))))

(assert (=> b!6184913 d!1939372))

(declare-fun d!1939374 () Bool)

(assert (=> d!1939374 (= (tail!11845 lt!2339241) (t!378170 lt!2339241))))

(assert (=> b!6184913 d!1939374))

(declare-fun c!1115643 () Bool)

(declare-fun call!517008 () (InoxSet Context!11010))

(declare-fun bm!516999 () Bool)

(declare-fun call!517005 () List!64662)

(assert (=> bm!516999 (= call!517008 (derivationStepZipperDown!1369 (ite c!1115643 (regOne!32755 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (regOne!32754 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))))) (ite c!1115643 (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887)) (Context!11011 call!517005)) (h!70988 s!2326)))))

(declare-fun b!6185660 () Bool)

(declare-fun e!3767350 () (InoxSet Context!11010))

(declare-fun e!3767349 () (InoxSet Context!11010))

(assert (=> b!6185660 (= e!3767350 e!3767349)))

(assert (=> b!6185660 (= c!1115643 ((_ is Union!16121) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))))))

(declare-fun bm!517000 () Bool)

(declare-fun c!1115645 () Bool)

(declare-fun c!1115641 () Bool)

(assert (=> bm!517000 (= call!517005 ($colon$colon!1995 (exprs!6005 (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887))) (ite (or c!1115641 c!1115645) (regTwo!32754 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))))))))

(declare-fun b!6185661 () Bool)

(declare-fun e!3767353 () Bool)

(assert (=> b!6185661 (= c!1115641 e!3767353)))

(declare-fun res!2559177 () Bool)

(assert (=> b!6185661 (=> (not res!2559177) (not e!3767353))))

(assert (=> b!6185661 (= res!2559177 ((_ is Concat!24966) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))))))

(declare-fun e!3767352 () (InoxSet Context!11010))

(assert (=> b!6185661 (= e!3767349 e!3767352)))

(declare-fun b!6185662 () Bool)

(assert (=> b!6185662 (= e!3767353 (nullable!6114 (regOne!32754 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))))))))

(declare-fun b!6185663 () Bool)

(declare-fun call!517006 () (InoxSet Context!11010))

(assert (=> b!6185663 (= e!3767352 ((_ map or) call!517008 call!517006))))

(declare-fun bm!517001 () Bool)

(declare-fun call!517009 () (InoxSet Context!11010))

(assert (=> bm!517001 (= call!517006 call!517009)))

(declare-fun b!6185664 () Bool)

(declare-fun e!3767351 () (InoxSet Context!11010))

(declare-fun call!517007 () (InoxSet Context!11010))

(assert (=> b!6185664 (= e!3767351 call!517007)))

(declare-fun b!6185665 () Bool)

(assert (=> b!6185665 (= e!3767351 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517002 () Bool)

(declare-fun call!517004 () List!64662)

(assert (=> bm!517002 (= call!517004 call!517005)))

(declare-fun b!6185666 () Bool)

(assert (=> b!6185666 (= e!3767350 (store ((as const (Array Context!11010 Bool)) false) (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887)) true))))

(declare-fun c!1115644 () Bool)

(declare-fun b!6185668 () Bool)

(assert (=> b!6185668 (= c!1115644 ((_ is Star!16121) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))))))

(declare-fun e!3767348 () (InoxSet Context!11010))

(assert (=> b!6185668 (= e!3767348 e!3767351)))

(declare-fun b!6185669 () Bool)

(assert (=> b!6185669 (= e!3767348 call!517007)))

(declare-fun b!6185670 () Bool)

(assert (=> b!6185670 (= e!3767349 ((_ map or) call!517008 call!517009))))

(declare-fun d!1939376 () Bool)

(declare-fun c!1115642 () Bool)

(assert (=> d!1939376 (= c!1115642 (and ((_ is ElementMatch!16121) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (= (c!1115220 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (h!70988 s!2326))))))

(assert (=> d!1939376 (= (derivationStepZipperDown!1369 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))) (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887)) (h!70988 s!2326)) e!3767350)))

(declare-fun b!6185667 () Bool)

(assert (=> b!6185667 (= e!3767352 e!3767348)))

(assert (=> b!6185667 (= c!1115645 ((_ is Concat!24966) (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))))))

(declare-fun bm!517003 () Bool)

(assert (=> bm!517003 (= call!517007 call!517006)))

(declare-fun bm!517004 () Bool)

(assert (=> bm!517004 (= call!517009 (derivationStepZipperDown!1369 (ite c!1115643 (regTwo!32755 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (ite c!1115641 (regTwo!32754 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (ite c!1115645 (regOne!32754 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292))))))) (reg!16450 (ite c!1115467 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115465 (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))) (ite c!1115469 (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))) (reg!16450 (regTwo!32755 (regOne!32754 r!7292)))))))))) (ite (or c!1115643 c!1115641) (ite (or c!1115467 c!1115465) lt!2339239 (Context!11011 call!516887)) (Context!11011 call!517004)) (h!70988 s!2326)))))

(assert (= (and d!1939376 c!1115642) b!6185666))

(assert (= (and d!1939376 (not c!1115642)) b!6185660))

(assert (= (and b!6185660 c!1115643) b!6185670))

(assert (= (and b!6185660 (not c!1115643)) b!6185661))

(assert (= (and b!6185661 res!2559177) b!6185662))

(assert (= (and b!6185661 c!1115641) b!6185663))

(assert (= (and b!6185661 (not c!1115641)) b!6185667))

(assert (= (and b!6185667 c!1115645) b!6185669))

(assert (= (and b!6185667 (not c!1115645)) b!6185668))

(assert (= (and b!6185668 c!1115644) b!6185664))

(assert (= (and b!6185668 (not c!1115644)) b!6185665))

(assert (= (or b!6185669 b!6185664) bm!517002))

(assert (= (or b!6185669 b!6185664) bm!517003))

(assert (= (or b!6185663 bm!517002) bm!517000))

(assert (= (or b!6185663 bm!517003) bm!517001))

(assert (= (or b!6185670 bm!517001) bm!517004))

(assert (= (or b!6185670 b!6185663) bm!516999))

(declare-fun m!7020596 () Bool)

(assert (=> b!6185666 m!7020596))

(declare-fun m!7020598 () Bool)

(assert (=> b!6185662 m!7020598))

(declare-fun m!7020602 () Bool)

(assert (=> bm!517000 m!7020602))

(declare-fun m!7020606 () Bool)

(assert (=> bm!516999 m!7020606))

(declare-fun m!7020608 () Bool)

(assert (=> bm!517004 m!7020608))

(assert (=> bm!516887 d!1939376))

(declare-fun d!1939380 () Bool)

(assert (=> d!1939380 (= (isEmpty!36520 (tail!11845 (exprs!6005 (h!70987 zl!343)))) ((_ is Nil!64538) (tail!11845 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> b!6184985 d!1939380))

(declare-fun d!1939382 () Bool)

(assert (=> d!1939382 (= (tail!11845 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))

(assert (=> b!6184985 d!1939382))

(declare-fun call!517020 () (InoxSet Context!11010))

(declare-fun call!517017 () List!64662)

(declare-fun c!1115653 () Bool)

(declare-fun bm!517011 () Bool)

(assert (=> bm!517011 (= call!517020 (derivationStepZipperDown!1369 (ite c!1115653 (regOne!32755 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (regOne!32754 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))) (ite c!1115653 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (Context!11011 call!517017)) (h!70988 s!2326)))))

(declare-fun b!6185682 () Bool)

(declare-fun e!3767362 () (InoxSet Context!11010))

(declare-fun e!3767361 () (InoxSet Context!11010))

(assert (=> b!6185682 (= e!3767362 e!3767361)))

(assert (=> b!6185682 (= c!1115653 ((_ is Union!16121) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun bm!517012 () Bool)

(declare-fun c!1115655 () Bool)

(declare-fun c!1115651 () Bool)

(assert (=> bm!517012 (= call!517017 ($colon$colon!1995 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))) (ite (or c!1115651 c!1115655) (regTwo!32754 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))))

(declare-fun b!6185683 () Bool)

(declare-fun e!3767365 () Bool)

(assert (=> b!6185683 (= c!1115651 e!3767365)))

(declare-fun res!2559179 () Bool)

(assert (=> b!6185683 (=> (not res!2559179) (not e!3767365))))

(assert (=> b!6185683 (= res!2559179 ((_ is Concat!24966) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun e!3767364 () (InoxSet Context!11010))

(assert (=> b!6185683 (= e!3767361 e!3767364)))

(declare-fun b!6185684 () Bool)

(assert (=> b!6185684 (= e!3767365 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))))

(declare-fun b!6185685 () Bool)

(declare-fun call!517018 () (InoxSet Context!11010))

(assert (=> b!6185685 (= e!3767364 ((_ map or) call!517020 call!517018))))

(declare-fun bm!517013 () Bool)

(declare-fun call!517021 () (InoxSet Context!11010))

(assert (=> bm!517013 (= call!517018 call!517021)))

(declare-fun b!6185686 () Bool)

(declare-fun e!3767363 () (InoxSet Context!11010))

(declare-fun call!517019 () (InoxSet Context!11010))

(assert (=> b!6185686 (= e!3767363 call!517019)))

(declare-fun b!6185687 () Bool)

(assert (=> b!6185687 (= e!3767363 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517014 () Bool)

(declare-fun call!517016 () List!64662)

(assert (=> bm!517014 (= call!517016 call!517017)))

(declare-fun b!6185688 () Bool)

(assert (=> b!6185688 (= e!3767362 (store ((as const (Array Context!11010 Bool)) false) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) true))))

(declare-fun b!6185690 () Bool)

(declare-fun c!1115654 () Bool)

(assert (=> b!6185690 (= c!1115654 ((_ is Star!16121) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun e!3767360 () (InoxSet Context!11010))

(assert (=> b!6185690 (= e!3767360 e!3767363)))

(declare-fun b!6185691 () Bool)

(assert (=> b!6185691 (= e!3767360 call!517019)))

(declare-fun b!6185692 () Bool)

(assert (=> b!6185692 (= e!3767361 ((_ map or) call!517020 call!517021))))

(declare-fun d!1939384 () Bool)

(declare-fun c!1115652 () Bool)

(assert (=> d!1939384 (= c!1115652 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (= (c!1115220 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326))))))

(assert (=> d!1939384 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (h!70988 s!2326)) e!3767362)))

(declare-fun b!6185689 () Bool)

(assert (=> b!6185689 (= e!3767364 e!3767360)))

(assert (=> b!6185689 (= c!1115655 ((_ is Concat!24966) (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))))))

(declare-fun bm!517015 () Bool)

(assert (=> bm!517015 (= call!517019 call!517018)))

(declare-fun bm!517016 () Bool)

(assert (=> bm!517016 (= call!517021 (derivationStepZipperDown!1369 (ite c!1115653 (regTwo!32755 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (ite c!1115651 (regTwo!32754 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (ite c!1115655 (regOne!32754 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (reg!16450 (h!70986 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343))))))))))) (ite (or c!1115653 c!1115651) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (Cons!64538 (h!70986 (exprs!6005 (h!70987 zl!343))) (t!378170 (exprs!6005 (h!70987 zl!343)))))))) (Context!11011 call!517016)) (h!70988 s!2326)))))

(assert (= (and d!1939384 c!1115652) b!6185688))

(assert (= (and d!1939384 (not c!1115652)) b!6185682))

(assert (= (and b!6185682 c!1115653) b!6185692))

(assert (= (and b!6185682 (not c!1115653)) b!6185683))

(assert (= (and b!6185683 res!2559179) b!6185684))

(assert (= (and b!6185683 c!1115651) b!6185685))

(assert (= (and b!6185683 (not c!1115651)) b!6185689))

(assert (= (and b!6185689 c!1115655) b!6185691))

(assert (= (and b!6185689 (not c!1115655)) b!6185690))

(assert (= (and b!6185690 c!1115654) b!6185686))

(assert (= (and b!6185690 (not c!1115654)) b!6185687))

(assert (= (or b!6185691 b!6185686) bm!517014))

(assert (= (or b!6185691 b!6185686) bm!517015))

(assert (= (or b!6185685 bm!517014) bm!517012))

(assert (= (or b!6185685 bm!517015) bm!517013))

(assert (= (or b!6185692 bm!517013) bm!517016))

(assert (= (or b!6185692 b!6185685) bm!517011))

(declare-fun m!7020610 () Bool)

(assert (=> b!6185688 m!7020610))

(declare-fun m!7020612 () Bool)

(assert (=> b!6185684 m!7020612))

(declare-fun m!7020614 () Bool)

(assert (=> bm!517012 m!7020614))

(declare-fun m!7020616 () Bool)

(assert (=> bm!517011 m!7020616))

(declare-fun m!7020618 () Bool)

(assert (=> bm!517016 m!7020618))

(assert (=> bm!516861 d!1939384))

(declare-fun b!6185693 () Bool)

(declare-fun e!3767367 () Bool)

(assert (=> b!6185693 (= e!3767367 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239)))))))))

(declare-fun b!6185694 () Bool)

(declare-fun e!3767368 () (InoxSet Context!11010))

(assert (=> b!6185694 (= e!3767368 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517017 () Bool)

(declare-fun call!517022 () (InoxSet Context!11010))

(assert (=> bm!517017 (= call!517022 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239)))))) (h!70988 s!2326)))))

(declare-fun d!1939386 () Bool)

(declare-fun c!1115657 () Bool)

(assert (=> d!1939386 (= c!1115657 e!3767367)))

(declare-fun res!2559180 () Bool)

(assert (=> d!1939386 (=> (not res!2559180) (not e!3767367))))

(assert (=> d!1939386 (= res!2559180 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239))))))))

(declare-fun e!3767366 () (InoxSet Context!11010))

(assert (=> d!1939386 (= (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (h!70988 s!2326)) e!3767366)))

(declare-fun b!6185695 () Bool)

(assert (=> b!6185695 (= e!3767366 ((_ map or) call!517022 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239)))))) (h!70988 s!2326))))))

(declare-fun b!6185696 () Bool)

(assert (=> b!6185696 (= e!3767366 e!3767368)))

(declare-fun c!1115656 () Bool)

(assert (=> b!6185696 (= c!1115656 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239))))))))

(declare-fun b!6185697 () Bool)

(assert (=> b!6185697 (= e!3767368 call!517022)))

(assert (= (and d!1939386 res!2559180) b!6185693))

(assert (= (and d!1939386 c!1115657) b!6185695))

(assert (= (and d!1939386 (not c!1115657)) b!6185696))

(assert (= (and b!6185696 c!1115656) b!6185697))

(assert (= (and b!6185696 (not c!1115656)) b!6185694))

(assert (= (or b!6185695 b!6185697) bm!517017))

(declare-fun m!7020620 () Bool)

(assert (=> b!6185693 m!7020620))

(declare-fun m!7020622 () Bool)

(assert (=> bm!517017 m!7020622))

(declare-fun m!7020624 () Bool)

(assert (=> b!6185695 m!7020624))

(assert (=> b!6184940 d!1939386))

(declare-fun d!1939388 () Bool)

(assert (=> d!1939388 (= (isEmpty!36520 (t!378170 lt!2339241)) ((_ is Nil!64538) (t!378170 lt!2339241)))))

(assert (=> b!6184919 d!1939388))

(assert (=> d!1939022 d!1939024))

(assert (=> d!1939022 d!1938932))

(declare-fun d!1939390 () Bool)

(declare-fun e!3767369 () Bool)

(assert (=> d!1939390 (= (matchZipper!2133 ((_ map or) lt!2339236 lt!2339244) (t!378172 s!2326)) e!3767369)))

(declare-fun res!2559181 () Bool)

(assert (=> d!1939390 (=> res!2559181 e!3767369)))

(assert (=> d!1939390 (= res!2559181 (matchZipper!2133 lt!2339236 (t!378172 s!2326)))))

(assert (=> d!1939390 true))

(declare-fun _$48!1805 () Unit!157747)

(assert (=> d!1939390 (= (choose!45940 lt!2339236 lt!2339244 (t!378172 s!2326)) _$48!1805)))

(declare-fun b!6185698 () Bool)

(assert (=> b!6185698 (= e!3767369 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1939390 (not res!2559181)) b!6185698))

(assert (=> d!1939390 m!7019106))

(assert (=> d!1939390 m!7019188))

(assert (=> b!6185698 m!7019092))

(assert (=> d!1939022 d!1939390))

(declare-fun d!1939392 () Bool)

(declare-fun res!2559182 () Bool)

(declare-fun e!3767370 () Bool)

(assert (=> d!1939392 (=> res!2559182 e!3767370)))

(assert (=> d!1939392 (= res!2559182 ((_ is Nil!64538) (exprs!6005 (h!70987 zl!343))))))

(assert (=> d!1939392 (= (forall!15240 (exprs!6005 (h!70987 zl!343)) lambda!337638) e!3767370)))

(declare-fun b!6185699 () Bool)

(declare-fun e!3767371 () Bool)

(assert (=> b!6185699 (= e!3767370 e!3767371)))

(declare-fun res!2559183 () Bool)

(assert (=> b!6185699 (=> (not res!2559183) (not e!3767371))))

(assert (=> b!6185699 (= res!2559183 (dynLambda!25453 lambda!337638 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun b!6185700 () Bool)

(assert (=> b!6185700 (= e!3767371 (forall!15240 (t!378170 (exprs!6005 (h!70987 zl!343))) lambda!337638))))

(assert (= (and d!1939392 (not res!2559182)) b!6185699))

(assert (= (and b!6185699 res!2559183) b!6185700))

(declare-fun b_lambda!235381 () Bool)

(assert (=> (not b_lambda!235381) (not b!6185699)))

(declare-fun m!7020636 () Bool)

(assert (=> b!6185699 m!7020636))

(declare-fun m!7020638 () Bool)

(assert (=> b!6185700 m!7020638))

(assert (=> d!1939002 d!1939392))

(assert (=> d!1938900 d!1939106))

(assert (=> d!1939024 d!1939106))

(assert (=> d!1938968 d!1939138))

(assert (=> d!1938968 d!1938988))

(declare-fun b!6185701 () Bool)

(declare-fun e!3767376 () Bool)

(declare-fun e!3767374 () Bool)

(assert (=> b!6185701 (= e!3767376 e!3767374)))

(declare-fun c!1115658 () Bool)

(assert (=> b!6185701 (= c!1115658 ((_ is EmptyLang!16121) (regTwo!32754 r!7292)))))

(declare-fun bm!517018 () Bool)

(declare-fun call!517023 () Bool)

(assert (=> bm!517018 (= call!517023 (isEmpty!36523 s!2326))))

(declare-fun b!6185702 () Bool)

(declare-fun e!3767377 () Bool)

(assert (=> b!6185702 (= e!3767377 (not (= (head!12759 s!2326) (c!1115220 (regTwo!32754 r!7292)))))))

(declare-fun b!6185703 () Bool)

(declare-fun e!3767373 () Bool)

(assert (=> b!6185703 (= e!3767373 e!3767377)))

(declare-fun res!2559190 () Bool)

(assert (=> b!6185703 (=> res!2559190 e!3767377)))

(assert (=> b!6185703 (= res!2559190 call!517023)))

(declare-fun b!6185704 () Bool)

(declare-fun e!3767372 () Bool)

(assert (=> b!6185704 (= e!3767372 (= (head!12759 s!2326) (c!1115220 (regTwo!32754 r!7292))))))

(declare-fun d!1939396 () Bool)

(assert (=> d!1939396 e!3767376))

(declare-fun c!1115659 () Bool)

(assert (=> d!1939396 (= c!1115659 ((_ is EmptyExpr!16121) (regTwo!32754 r!7292)))))

(declare-fun lt!2339419 () Bool)

(declare-fun e!3767378 () Bool)

(assert (=> d!1939396 (= lt!2339419 e!3767378)))

(declare-fun c!1115661 () Bool)

(assert (=> d!1939396 (= c!1115661 (isEmpty!36523 s!2326))))

(assert (=> d!1939396 (validRegex!7857 (regTwo!32754 r!7292))))

(assert (=> d!1939396 (= (matchR!8304 (regTwo!32754 r!7292) s!2326) lt!2339419)))

(declare-fun b!6185705 () Bool)

(declare-fun res!2559185 () Bool)

(declare-fun e!3767375 () Bool)

(assert (=> b!6185705 (=> res!2559185 e!3767375)))

(assert (=> b!6185705 (= res!2559185 (not ((_ is ElementMatch!16121) (regTwo!32754 r!7292))))))

(assert (=> b!6185705 (= e!3767374 e!3767375)))

(declare-fun b!6185706 () Bool)

(declare-fun res!2559191 () Bool)

(assert (=> b!6185706 (=> (not res!2559191) (not e!3767372))))

(assert (=> b!6185706 (= res!2559191 (isEmpty!36523 (tail!11844 s!2326)))))

(declare-fun b!6185707 () Bool)

(declare-fun res!2559188 () Bool)

(assert (=> b!6185707 (=> res!2559188 e!3767377)))

(assert (=> b!6185707 (= res!2559188 (not (isEmpty!36523 (tail!11844 s!2326))))))

(declare-fun b!6185708 () Bool)

(assert (=> b!6185708 (= e!3767376 (= lt!2339419 call!517023))))

(declare-fun b!6185709 () Bool)

(declare-fun res!2559184 () Bool)

(assert (=> b!6185709 (=> res!2559184 e!3767375)))

(assert (=> b!6185709 (= res!2559184 e!3767372)))

(declare-fun res!2559187 () Bool)

(assert (=> b!6185709 (=> (not res!2559187) (not e!3767372))))

(assert (=> b!6185709 (= res!2559187 lt!2339419)))

(declare-fun b!6185710 () Bool)

(assert (=> b!6185710 (= e!3767378 (matchR!8304 (derivativeStep!4838 (regTwo!32754 r!7292) (head!12759 s!2326)) (tail!11844 s!2326)))))

(declare-fun b!6185711 () Bool)

(assert (=> b!6185711 (= e!3767374 (not lt!2339419))))

(declare-fun b!6185712 () Bool)

(declare-fun res!2559189 () Bool)

(assert (=> b!6185712 (=> (not res!2559189) (not e!3767372))))

(assert (=> b!6185712 (= res!2559189 (not call!517023))))

(declare-fun b!6185713 () Bool)

(assert (=> b!6185713 (= e!3767375 e!3767373)))

(declare-fun res!2559186 () Bool)

(assert (=> b!6185713 (=> (not res!2559186) (not e!3767373))))

(assert (=> b!6185713 (= res!2559186 (not lt!2339419))))

(declare-fun b!6185714 () Bool)

(assert (=> b!6185714 (= e!3767378 (nullable!6114 (regTwo!32754 r!7292)))))

(assert (= (and d!1939396 c!1115661) b!6185714))

(assert (= (and d!1939396 (not c!1115661)) b!6185710))

(assert (= (and d!1939396 c!1115659) b!6185708))

(assert (= (and d!1939396 (not c!1115659)) b!6185701))

(assert (= (and b!6185701 c!1115658) b!6185711))

(assert (= (and b!6185701 (not c!1115658)) b!6185705))

(assert (= (and b!6185705 (not res!2559185)) b!6185709))

(assert (= (and b!6185709 res!2559187) b!6185712))

(assert (= (and b!6185712 res!2559189) b!6185706))

(assert (= (and b!6185706 res!2559191) b!6185704))

(assert (= (and b!6185709 (not res!2559184)) b!6185713))

(assert (= (and b!6185713 res!2559186) b!6185703))

(assert (= (and b!6185703 (not res!2559190)) b!6185707))

(assert (= (and b!6185707 (not res!2559188)) b!6185702))

(assert (= (or b!6185708 b!6185703 b!6185712) bm!517018))

(assert (=> d!1939396 m!7019654))

(assert (=> d!1939396 m!7020256))

(assert (=> bm!517018 m!7019654))

(assert (=> b!6185707 m!7019662))

(assert (=> b!6185707 m!7019662))

(assert (=> b!6185707 m!7019664))

(assert (=> b!6185710 m!7019666))

(assert (=> b!6185710 m!7019666))

(declare-fun m!7020640 () Bool)

(assert (=> b!6185710 m!7020640))

(assert (=> b!6185710 m!7019662))

(assert (=> b!6185710 m!7020640))

(assert (=> b!6185710 m!7019662))

(declare-fun m!7020642 () Bool)

(assert (=> b!6185710 m!7020642))

(assert (=> b!6185714 m!7020268))

(assert (=> b!6185704 m!7019666))

(assert (=> b!6185706 m!7019662))

(assert (=> b!6185706 m!7019662))

(assert (=> b!6185706 m!7019664))

(assert (=> b!6185702 m!7019666))

(assert (=> b!6184815 d!1939396))

(declare-fun d!1939398 () Bool)

(assert (=> d!1939398 (= (Exists!3191 (ite c!1115372 lambda!337620 lambda!337621)) (choose!45943 (ite c!1115372 lambda!337620 lambda!337621)))))

(declare-fun bs!1534694 () Bool)

(assert (= bs!1534694 d!1939398))

(declare-fun m!7020644 () Bool)

(assert (=> bs!1534694 m!7020644))

(assert (=> bm!516842 d!1939398))

(declare-fun d!1939400 () Bool)

(declare-fun lt!2339420 () Int)

(assert (=> d!1939400 (>= lt!2339420 0)))

(declare-fun e!3767385 () Int)

(assert (=> d!1939400 (= lt!2339420 e!3767385)))

(declare-fun c!1115666 () Bool)

(assert (=> d!1939400 (= c!1115666 ((_ is Cons!64538) (exprs!6005 (h!70987 lt!2339227))))))

(assert (=> d!1939400 (= (contextDepthTotal!276 (h!70987 lt!2339227)) lt!2339420)))

(declare-fun b!6185726 () Bool)

(assert (=> b!6185726 (= e!3767385 (+ (regexDepthTotal!138 (h!70986 (exprs!6005 (h!70987 lt!2339227)))) (contextDepthTotal!276 (Context!11011 (t!378170 (exprs!6005 (h!70987 lt!2339227)))))))))

(declare-fun b!6185727 () Bool)

(assert (=> b!6185727 (= e!3767385 1)))

(assert (= (and d!1939400 c!1115666) b!6185726))

(assert (= (and d!1939400 (not c!1115666)) b!6185727))

(declare-fun m!7020646 () Bool)

(assert (=> b!6185726 m!7020646))

(declare-fun m!7020648 () Bool)

(assert (=> b!6185726 m!7020648))

(assert (=> b!6185033 d!1939400))

(declare-fun d!1939402 () Bool)

(declare-fun lt!2339421 () Int)

(assert (=> d!1939402 (>= lt!2339421 0)))

(declare-fun e!3767386 () Int)

(assert (=> d!1939402 (= lt!2339421 e!3767386)))

(declare-fun c!1115667 () Bool)

(assert (=> d!1939402 (= c!1115667 ((_ is Cons!64539) (t!378171 lt!2339227)))))

(assert (=> d!1939402 (= (zipperDepthTotal!304 (t!378171 lt!2339227)) lt!2339421)))

(declare-fun b!6185728 () Bool)

(assert (=> b!6185728 (= e!3767386 (+ (contextDepthTotal!276 (h!70987 (t!378171 lt!2339227))) (zipperDepthTotal!304 (t!378171 (t!378171 lt!2339227)))))))

(declare-fun b!6185729 () Bool)

(assert (=> b!6185729 (= e!3767386 0)))

(assert (= (and d!1939402 c!1115667) b!6185728))

(assert (= (and d!1939402 (not c!1115667)) b!6185729))

(declare-fun m!7020650 () Bool)

(assert (=> b!6185728 m!7020650))

(declare-fun m!7020652 () Bool)

(assert (=> b!6185728 m!7020652))

(assert (=> b!6185033 d!1939402))

(assert (=> b!6184981 d!1938902))

(assert (=> bm!516841 d!1939138))

(declare-fun d!1939404 () Bool)

(assert (=> d!1939404 (= (head!12760 (unfocusZipperList!1542 zl!343)) (h!70986 (unfocusZipperList!1542 zl!343)))))

(assert (=> b!6185019 d!1939404))

(declare-fun b!6185730 () Bool)

(declare-fun e!3767388 () Bool)

(assert (=> b!6185730 (= e!3767388 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232)))))))))

(declare-fun b!6185731 () Bool)

(declare-fun e!3767389 () (InoxSet Context!11010))

(assert (=> b!6185731 (= e!3767389 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517025 () Bool)

(declare-fun call!517030 () (InoxSet Context!11010))

(assert (=> bm!517025 (= call!517030 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232)))))) (h!70988 s!2326)))))

(declare-fun d!1939406 () Bool)

(declare-fun c!1115669 () Bool)

(assert (=> d!1939406 (= c!1115669 e!3767388)))

(declare-fun res!2559193 () Bool)

(assert (=> d!1939406 (=> (not res!2559193) (not e!3767388))))

(assert (=> d!1939406 (= res!2559193 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232))))))))

(declare-fun e!3767387 () (InoxSet Context!11010))

(assert (=> d!1939406 (= (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339232))) (h!70988 s!2326)) e!3767387)))

(declare-fun b!6185732 () Bool)

(assert (=> b!6185732 (= e!3767387 ((_ map or) call!517030 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232)))))) (h!70988 s!2326))))))

(declare-fun b!6185733 () Bool)

(assert (=> b!6185733 (= e!3767387 e!3767389)))

(declare-fun c!1115668 () Bool)

(assert (=> b!6185733 (= c!1115668 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339232))))))))

(declare-fun b!6185734 () Bool)

(assert (=> b!6185734 (= e!3767389 call!517030)))

(assert (= (and d!1939406 res!2559193) b!6185730))

(assert (= (and d!1939406 c!1115669) b!6185732))

(assert (= (and d!1939406 (not c!1115669)) b!6185733))

(assert (= (and b!6185733 c!1115668) b!6185734))

(assert (= (and b!6185733 (not c!1115668)) b!6185731))

(assert (= (or b!6185732 b!6185734) bm!517025))

(declare-fun m!7020656 () Bool)

(assert (=> b!6185730 m!7020656))

(declare-fun m!7020658 () Bool)

(assert (=> bm!517025 m!7020658))

(declare-fun m!7020660 () Bool)

(assert (=> b!6185732 m!7020660))

(assert (=> b!6185063 d!1939406))

(declare-fun b!6185735 () Bool)

(declare-fun e!3767391 () Bool)

(assert (=> b!6185735 (= e!3767391 (nullable!6114 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237)))))))))

(declare-fun b!6185736 () Bool)

(declare-fun e!3767392 () (InoxSet Context!11010))

(assert (=> b!6185736 (= e!3767392 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517026 () Bool)

(declare-fun call!517031 () (InoxSet Context!11010))

(assert (=> bm!517026 (= call!517031 (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237))))) (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237)))))) (h!70988 s!2326)))))

(declare-fun d!1939408 () Bool)

(declare-fun c!1115671 () Bool)

(assert (=> d!1939408 (= c!1115671 e!3767391)))

(declare-fun res!2559194 () Bool)

(assert (=> d!1939408 (=> (not res!2559194) (not e!3767391))))

(assert (=> d!1939408 (= res!2559194 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237))))))))

(declare-fun e!3767390 () (InoxSet Context!11010))

(assert (=> d!1939408 (= (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 lt!2339237))) (h!70988 s!2326)) e!3767390)))

(declare-fun b!6185737 () Bool)

(assert (=> b!6185737 (= e!3767390 ((_ map or) call!517031 (derivationStepZipperUp!1295 (Context!11011 (t!378170 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237)))))) (h!70988 s!2326))))))

(declare-fun b!6185738 () Bool)

(assert (=> b!6185738 (= e!3767390 e!3767392)))

(declare-fun c!1115670 () Bool)

(assert (=> b!6185738 (= c!1115670 ((_ is Cons!64538) (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339237))))))))

(declare-fun b!6185739 () Bool)

(assert (=> b!6185739 (= e!3767392 call!517031)))

(assert (= (and d!1939408 res!2559194) b!6185735))

(assert (= (and d!1939408 c!1115671) b!6185737))

(assert (= (and d!1939408 (not c!1115671)) b!6185738))

(assert (= (and b!6185738 c!1115670) b!6185739))

(assert (= (and b!6185738 (not c!1115670)) b!6185736))

(assert (= (or b!6185737 b!6185739) bm!517026))

(declare-fun m!7020666 () Bool)

(assert (=> b!6185735 m!7020666))

(declare-fun m!7020670 () Bool)

(assert (=> bm!517026 m!7020670))

(declare-fun m!7020674 () Bool)

(assert (=> b!6185737 m!7020674))

(assert (=> b!6185068 d!1939408))

(declare-fun bm!517027 () Bool)

(declare-fun call!517033 () Bool)

(declare-fun c!1115672 () Bool)

(assert (=> bm!517027 (= call!517033 (nullable!6114 (ite c!1115672 (regOne!32755 (regTwo!32755 (regOne!32754 r!7292))) (regOne!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun d!1939410 () Bool)

(declare-fun res!2559197 () Bool)

(declare-fun e!3767396 () Bool)

(assert (=> d!1939410 (=> res!2559197 e!3767396)))

(assert (=> d!1939410 (= res!2559197 ((_ is EmptyExpr!16121) (regTwo!32755 (regOne!32754 r!7292))))))

(assert (=> d!1939410 (= (nullableFct!2075 (regTwo!32755 (regOne!32754 r!7292))) e!3767396)))

(declare-fun b!6185740 () Bool)

(declare-fun e!3767393 () Bool)

(declare-fun call!517032 () Bool)

(assert (=> b!6185740 (= e!3767393 call!517032)))

(declare-fun b!6185741 () Bool)

(declare-fun e!3767398 () Bool)

(assert (=> b!6185741 (= e!3767398 call!517032)))

(declare-fun b!6185742 () Bool)

(declare-fun e!3767394 () Bool)

(declare-fun e!3767395 () Bool)

(assert (=> b!6185742 (= e!3767394 e!3767395)))

(declare-fun res!2559198 () Bool)

(assert (=> b!6185742 (=> res!2559198 e!3767395)))

(assert (=> b!6185742 (= res!2559198 ((_ is Star!16121) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun bm!517028 () Bool)

(assert (=> bm!517028 (= call!517032 (nullable!6114 (ite c!1115672 (regTwo!32755 (regTwo!32755 (regOne!32754 r!7292))) (regTwo!32754 (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun b!6185743 () Bool)

(declare-fun e!3767397 () Bool)

(assert (=> b!6185743 (= e!3767395 e!3767397)))

(assert (=> b!6185743 (= c!1115672 ((_ is Union!16121) (regTwo!32755 (regOne!32754 r!7292))))))

(declare-fun b!6185744 () Bool)

(assert (=> b!6185744 (= e!3767397 e!3767393)))

(declare-fun res!2559196 () Bool)

(assert (=> b!6185744 (= res!2559196 call!517033)))

(assert (=> b!6185744 (=> (not res!2559196) (not e!3767393))))

(declare-fun b!6185745 () Bool)

(assert (=> b!6185745 (= e!3767396 e!3767394)))

(declare-fun res!2559195 () Bool)

(assert (=> b!6185745 (=> (not res!2559195) (not e!3767394))))

(assert (=> b!6185745 (= res!2559195 (and (not ((_ is EmptyLang!16121) (regTwo!32755 (regOne!32754 r!7292)))) (not ((_ is ElementMatch!16121) (regTwo!32755 (regOne!32754 r!7292))))))))

(declare-fun b!6185746 () Bool)

(assert (=> b!6185746 (= e!3767397 e!3767398)))

(declare-fun res!2559199 () Bool)

(assert (=> b!6185746 (= res!2559199 call!517033)))

(assert (=> b!6185746 (=> res!2559199 e!3767398)))

(assert (= (and d!1939410 (not res!2559197)) b!6185745))

(assert (= (and b!6185745 res!2559195) b!6185742))

(assert (= (and b!6185742 (not res!2559198)) b!6185743))

(assert (= (and b!6185743 c!1115672) b!6185746))

(assert (= (and b!6185743 (not c!1115672)) b!6185744))

(assert (= (and b!6185746 (not res!2559199)) b!6185741))

(assert (= (and b!6185744 res!2559196) b!6185740))

(assert (= (or b!6185741 b!6185740) bm!517028))

(assert (= (or b!6185746 b!6185744) bm!517027))

(declare-fun m!7020676 () Bool)

(assert (=> bm!517027 m!7020676))

(declare-fun m!7020678 () Bool)

(assert (=> bm!517028 m!7020678))

(assert (=> d!1939054 d!1939410))

(assert (=> d!1938990 d!1939138))

(assert (=> d!1938990 d!1939228))

(declare-fun d!1939414 () Bool)

(declare-fun c!1115674 () Bool)

(assert (=> d!1939414 (= c!1115674 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767400 () Bool)

(assert (=> d!1939414 (= (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339233 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767400)))

(declare-fun b!6185749 () Bool)

(assert (=> b!6185749 (= e!3767400 (nullableZipper!1900 (derivationStepZipper!2092 ((_ map or) lt!2339233 lt!2339244) (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185750 () Bool)

(assert (=> b!6185750 (= e!3767400 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 ((_ map or) lt!2339233 lt!2339244) (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939414 c!1115674) b!6185749))

(assert (= (and d!1939414 (not c!1115674)) b!6185750))

(assert (=> d!1939414 m!7019489))

(assert (=> d!1939414 m!7020180))

(assert (=> b!6185749 m!7019498))

(declare-fun m!7020682 () Bool)

(assert (=> b!6185749 m!7020682))

(assert (=> b!6185750 m!7019489))

(assert (=> b!6185750 m!7020184))

(assert (=> b!6185750 m!7019498))

(assert (=> b!6185750 m!7020184))

(declare-fun m!7020684 () Bool)

(assert (=> b!6185750 m!7020684))

(assert (=> b!6185750 m!7019489))

(assert (=> b!6185750 m!7020188))

(assert (=> b!6185750 m!7020684))

(assert (=> b!6185750 m!7020188))

(declare-fun m!7020688 () Bool)

(assert (=> b!6185750 m!7020688))

(assert (=> b!6184572 d!1939414))

(declare-fun bs!1534695 () Bool)

(declare-fun d!1939416 () Bool)

(assert (= bs!1534695 (and d!1939416 d!1939086)))

(declare-fun lambda!337692 () Int)

(assert (=> bs!1534695 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337692 lambda!337649))))

(declare-fun bs!1534696 () Bool)

(assert (= bs!1534696 (and d!1939416 d!1939166)))

(assert (=> bs!1534696 (= lambda!337692 lambda!337659)))

(declare-fun bs!1534697 () Bool)

(assert (= bs!1534697 (and d!1939416 d!1939292)))

(assert (=> bs!1534697 (= lambda!337692 lambda!337681)))

(declare-fun bs!1534698 () Bool)

(assert (= bs!1534698 (and d!1939416 d!1939274)))

(assert (=> bs!1534698 (= lambda!337692 lambda!337680)))

(declare-fun bs!1534699 () Bool)

(assert (= bs!1534699 (and d!1939416 d!1939300)))

(assert (=> bs!1534699 (= lambda!337692 lambda!337682)))

(declare-fun bs!1534700 () Bool)

(assert (= bs!1534700 (and d!1939416 d!1939090)))

(assert (=> bs!1534700 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337692 lambda!337650))))

(declare-fun bs!1534701 () Bool)

(assert (= bs!1534701 (and d!1939416 b!6184187)))

(assert (=> bs!1534701 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337692 lambda!337585))))

(declare-fun bs!1534703 () Bool)

(assert (= bs!1534703 (and d!1939416 d!1939204)))

(assert (=> bs!1534703 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337692 lambda!337667))))

(declare-fun bs!1534704 () Bool)

(assert (= bs!1534704 (and d!1939416 d!1939194)))

(assert (=> bs!1534704 (= lambda!337692 lambda!337666)))

(assert (=> d!1939416 true))

(assert (=> d!1939416 (= (derivationStepZipper!2092 ((_ map or) lt!2339233 lt!2339244) (head!12759 (t!378172 s!2326))) (flatMap!1626 ((_ map or) lt!2339233 lt!2339244) lambda!337692))))

(declare-fun bs!1534705 () Bool)

(assert (= bs!1534705 d!1939416))

(declare-fun m!7020692 () Bool)

(assert (=> bs!1534705 m!7020692))

(assert (=> b!6184572 d!1939416))

(assert (=> b!6184572 d!1939168))

(assert (=> b!6184572 d!1939170))

(declare-fun d!1939420 () Bool)

(declare-fun c!1115675 () Bool)

(assert (=> d!1939420 (= c!1115675 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767401 () Bool)

(assert (=> d!1939420 (= (matchZipper!2133 (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339244) (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767401)))

(declare-fun b!6185751 () Bool)

(assert (=> b!6185751 (= e!3767401 (nullableZipper!1900 (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339244) (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185752 () Bool)

(assert (=> b!6185752 (= e!3767401 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339244) (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939420 c!1115675) b!6185751))

(assert (= (and d!1939420 (not c!1115675)) b!6185752))

(assert (=> d!1939420 m!7019489))

(assert (=> d!1939420 m!7020180))

(assert (=> b!6185751 m!7019834))

(declare-fun m!7020694 () Bool)

(assert (=> b!6185751 m!7020694))

(assert (=> b!6185752 m!7019489))

(assert (=> b!6185752 m!7020184))

(assert (=> b!6185752 m!7019834))

(assert (=> b!6185752 m!7020184))

(declare-fun m!7020698 () Bool)

(assert (=> b!6185752 m!7020698))

(assert (=> b!6185752 m!7019489))

(assert (=> b!6185752 m!7020188))

(assert (=> b!6185752 m!7020698))

(assert (=> b!6185752 m!7020188))

(declare-fun m!7020700 () Bool)

(assert (=> b!6185752 m!7020700))

(assert (=> b!6184983 d!1939420))

(declare-fun bs!1534708 () Bool)

(declare-fun d!1939424 () Bool)

(assert (= bs!1534708 (and d!1939424 d!1939086)))

(declare-fun lambda!337694 () Int)

(assert (=> bs!1534708 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337694 lambda!337649))))

(declare-fun bs!1534709 () Bool)

(assert (= bs!1534709 (and d!1939424 d!1939166)))

(assert (=> bs!1534709 (= lambda!337694 lambda!337659)))

(declare-fun bs!1534710 () Bool)

(assert (= bs!1534710 (and d!1939424 d!1939292)))

(assert (=> bs!1534710 (= lambda!337694 lambda!337681)))

(declare-fun bs!1534711 () Bool)

(assert (= bs!1534711 (and d!1939424 d!1939274)))

(assert (=> bs!1534711 (= lambda!337694 lambda!337680)))

(declare-fun bs!1534712 () Bool)

(assert (= bs!1534712 (and d!1939424 d!1939300)))

(assert (=> bs!1534712 (= lambda!337694 lambda!337682)))

(declare-fun bs!1534713 () Bool)

(assert (= bs!1534713 (and d!1939424 d!1939090)))

(assert (=> bs!1534713 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337694 lambda!337650))))

(declare-fun bs!1534714 () Bool)

(assert (= bs!1534714 (and d!1939424 d!1939416)))

(assert (=> bs!1534714 (= lambda!337694 lambda!337692)))

(declare-fun bs!1534715 () Bool)

(assert (= bs!1534715 (and d!1939424 b!6184187)))

(assert (=> bs!1534715 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337694 lambda!337585))))

(declare-fun bs!1534716 () Bool)

(assert (= bs!1534716 (and d!1939424 d!1939204)))

(assert (=> bs!1534716 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337694 lambda!337667))))

(declare-fun bs!1534717 () Bool)

(assert (= bs!1534717 (and d!1939424 d!1939194)))

(assert (=> bs!1534717 (= lambda!337694 lambda!337666)))

(assert (=> d!1939424 true))

(assert (=> d!1939424 (= (derivationStepZipper!2092 ((_ map or) lt!2339236 lt!2339244) (head!12759 (t!378172 s!2326))) (flatMap!1626 ((_ map or) lt!2339236 lt!2339244) lambda!337694))))

(declare-fun bs!1534718 () Bool)

(assert (= bs!1534718 d!1939424))

(declare-fun m!7020702 () Bool)

(assert (=> bs!1534718 m!7020702))

(assert (=> b!6184983 d!1939424))

(assert (=> b!6184983 d!1939168))

(assert (=> b!6184983 d!1939170))

(declare-fun b!6185755 () Bool)

(declare-fun res!2559200 () Bool)

(declare-fun e!3767403 () Bool)

(assert (=> b!6185755 (=> (not res!2559200) (not e!3767403))))

(declare-fun lt!2339422 () List!64664)

(assert (=> b!6185755 (= res!2559200 (= (size!40257 lt!2339422) (+ (size!40257 (_1!36403 (get!22280 lt!2339352))) (size!40257 (_2!36403 (get!22280 lt!2339352))))))))

(declare-fun b!6185754 () Bool)

(declare-fun e!3767402 () List!64664)

(assert (=> b!6185754 (= e!3767402 (Cons!64540 (h!70988 (_1!36403 (get!22280 lt!2339352))) (++!14204 (t!378172 (_1!36403 (get!22280 lt!2339352))) (_2!36403 (get!22280 lt!2339352)))))))

(declare-fun b!6185753 () Bool)

(assert (=> b!6185753 (= e!3767402 (_2!36403 (get!22280 lt!2339352)))))

(declare-fun b!6185756 () Bool)

(assert (=> b!6185756 (= e!3767403 (or (not (= (_2!36403 (get!22280 lt!2339352)) Nil!64540)) (= lt!2339422 (_1!36403 (get!22280 lt!2339352)))))))

(declare-fun d!1939426 () Bool)

(assert (=> d!1939426 e!3767403))

(declare-fun res!2559201 () Bool)

(assert (=> d!1939426 (=> (not res!2559201) (not e!3767403))))

(assert (=> d!1939426 (= res!2559201 (= (content!12054 lt!2339422) ((_ map or) (content!12054 (_1!36403 (get!22280 lt!2339352))) (content!12054 (_2!36403 (get!22280 lt!2339352))))))))

(assert (=> d!1939426 (= lt!2339422 e!3767402)))

(declare-fun c!1115676 () Bool)

(assert (=> d!1939426 (= c!1115676 ((_ is Nil!64540) (_1!36403 (get!22280 lt!2339352))))))

(assert (=> d!1939426 (= (++!14204 (_1!36403 (get!22280 lt!2339352)) (_2!36403 (get!22280 lt!2339352))) lt!2339422)))

(assert (= (and d!1939426 c!1115676) b!6185753))

(assert (= (and d!1939426 (not c!1115676)) b!6185754))

(assert (= (and d!1939426 res!2559201) b!6185755))

(assert (= (and b!6185755 res!2559200) b!6185756))

(declare-fun m!7020704 () Bool)

(assert (=> b!6185755 m!7020704))

(declare-fun m!7020706 () Bool)

(assert (=> b!6185755 m!7020706))

(declare-fun m!7020708 () Bool)

(assert (=> b!6185755 m!7020708))

(declare-fun m!7020710 () Bool)

(assert (=> b!6185754 m!7020710))

(declare-fun m!7020712 () Bool)

(assert (=> d!1939426 m!7020712))

(declare-fun m!7020714 () Bool)

(assert (=> d!1939426 m!7020714))

(declare-fun m!7020716 () Bool)

(assert (=> d!1939426 m!7020716))

(assert (=> b!6184819 d!1939426))

(assert (=> b!6184819 d!1939212))

(declare-fun bs!1534719 () Bool)

(declare-fun b!6185759 () Bool)

(assert (= bs!1534719 (and b!6185759 b!6185406)))

(declare-fun lambda!337695 () Int)

(assert (=> bs!1534719 (not (= lambda!337695 lambda!337671))))

(declare-fun bs!1534720 () Bool)

(assert (= bs!1534720 (and b!6185759 d!1938982)))

(assert (=> bs!1534720 (not (= lambda!337695 lambda!337624))))

(declare-fun bs!1534721 () Bool)

(assert (= bs!1534721 (and b!6185759 d!1938984)))

(assert (=> bs!1534721 (not (= lambda!337695 lambda!337629))))

(declare-fun bs!1534722 () Bool)

(assert (= bs!1534722 (and b!6185759 b!6184183)))

(assert (=> bs!1534722 (not (= lambda!337695 lambda!337584))))

(declare-fun bs!1534723 () Bool)

(assert (= bs!1534723 (and b!6185759 d!1939238)))

(assert (=> bs!1534723 (not (= lambda!337695 lambda!337677))))

(assert (=> bs!1534723 (not (= lambda!337695 lambda!337676))))

(declare-fun bs!1534724 () Bool)

(assert (= bs!1534724 (and b!6185759 b!6185407)))

(assert (=> bs!1534724 (= (and (= (reg!16450 (regOne!32755 r!7292)) (reg!16450 (regTwo!32755 r!7292))) (= (regOne!32755 r!7292) (regTwo!32755 r!7292))) (= lambda!337695 lambda!337670))))

(assert (=> bs!1534721 (not (= lambda!337695 lambda!337630))))

(declare-fun bs!1534725 () Bool)

(assert (= bs!1534725 (and b!6185759 b!6184741)))

(assert (=> bs!1534725 (= (and (= (reg!16450 (regOne!32755 r!7292)) (reg!16450 r!7292)) (= (regOne!32755 r!7292) r!7292)) (= lambda!337695 lambda!337620))))

(declare-fun bs!1534726 () Bool)

(assert (= bs!1534726 (and b!6185759 b!6184740)))

(assert (=> bs!1534726 (not (= lambda!337695 lambda!337621))))

(declare-fun bs!1534727 () Bool)

(assert (= bs!1534727 (and b!6185759 d!1939184)))

(assert (=> bs!1534727 (not (= lambda!337695 lambda!337664))))

(assert (=> bs!1534722 (not (= lambda!337695 lambda!337583))))

(assert (=> b!6185759 true))

(assert (=> b!6185759 true))

(declare-fun bs!1534728 () Bool)

(declare-fun b!6185758 () Bool)

(assert (= bs!1534728 (and b!6185758 b!6185406)))

(declare-fun lambda!337699 () Int)

(assert (=> bs!1534728 (= (and (= (regOne!32754 (regOne!32755 r!7292)) (regOne!32754 (regTwo!32755 r!7292))) (= (regTwo!32754 (regOne!32755 r!7292)) (regTwo!32754 (regTwo!32755 r!7292)))) (= lambda!337699 lambda!337671))))

(declare-fun bs!1534730 () Bool)

(assert (= bs!1534730 (and b!6185758 d!1938982)))

(assert (=> bs!1534730 (not (= lambda!337699 lambda!337624))))

(declare-fun bs!1534731 () Bool)

(assert (= bs!1534731 (and b!6185758 d!1938984)))

(assert (=> bs!1534731 (not (= lambda!337699 lambda!337629))))

(declare-fun bs!1534732 () Bool)

(assert (= bs!1534732 (and b!6185758 b!6184183)))

(assert (=> bs!1534732 (= (and (= (regOne!32754 (regOne!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regOne!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337699 lambda!337584))))

(declare-fun bs!1534733 () Bool)

(assert (= bs!1534733 (and b!6185758 b!6185759)))

(assert (=> bs!1534733 (not (= lambda!337699 lambda!337695))))

(declare-fun bs!1534735 () Bool)

(assert (= bs!1534735 (and b!6185758 d!1939238)))

(assert (=> bs!1534735 (= (and (= (regOne!32754 (regOne!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regOne!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337699 lambda!337677))))

(assert (=> bs!1534735 (not (= lambda!337699 lambda!337676))))

(declare-fun bs!1534736 () Bool)

(assert (= bs!1534736 (and b!6185758 b!6185407)))

(assert (=> bs!1534736 (not (= lambda!337699 lambda!337670))))

(assert (=> bs!1534731 (= (and (= (regOne!32754 (regOne!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regOne!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337699 lambda!337630))))

(declare-fun bs!1534737 () Bool)

(assert (= bs!1534737 (and b!6185758 b!6184741)))

(assert (=> bs!1534737 (not (= lambda!337699 lambda!337620))))

(declare-fun bs!1534738 () Bool)

(assert (= bs!1534738 (and b!6185758 b!6184740)))

(assert (=> bs!1534738 (= (and (= (regOne!32754 (regOne!32755 r!7292)) (regOne!32754 r!7292)) (= (regTwo!32754 (regOne!32755 r!7292)) (regTwo!32754 r!7292))) (= lambda!337699 lambda!337621))))

(declare-fun bs!1534739 () Bool)

(assert (= bs!1534739 (and b!6185758 d!1939184)))

(assert (=> bs!1534739 (not (= lambda!337699 lambda!337664))))

(assert (=> bs!1534732 (not (= lambda!337699 lambda!337583))))

(assert (=> b!6185758 true))

(assert (=> b!6185758 true))

(declare-fun b!6185757 () Bool)

(declare-fun c!1115680 () Bool)

(assert (=> b!6185757 (= c!1115680 ((_ is Union!16121) (regOne!32755 r!7292)))))

(declare-fun e!3767409 () Bool)

(declare-fun e!3767410 () Bool)

(assert (=> b!6185757 (= e!3767409 e!3767410)))

(declare-fun e!3767406 () Bool)

(declare-fun call!517034 () Bool)

(assert (=> b!6185758 (= e!3767406 call!517034)))

(declare-fun e!3767404 () Bool)

(assert (=> b!6185759 (= e!3767404 call!517034)))

(declare-fun bm!517029 () Bool)

(declare-fun call!517035 () Bool)

(assert (=> bm!517029 (= call!517035 (isEmpty!36523 s!2326))))

(declare-fun b!6185760 () Bool)

(declare-fun res!2559203 () Bool)

(assert (=> b!6185760 (=> res!2559203 e!3767404)))

(assert (=> b!6185760 (= res!2559203 call!517035)))

(assert (=> b!6185760 (= e!3767406 e!3767404)))

(declare-fun b!6185761 () Bool)

(assert (=> b!6185761 (= e!3767409 (= s!2326 (Cons!64540 (c!1115220 (regOne!32755 r!7292)) Nil!64540)))))

(declare-fun b!6185762 () Bool)

(declare-fun e!3767408 () Bool)

(assert (=> b!6185762 (= e!3767408 call!517035)))

(declare-fun c!1115678 () Bool)

(declare-fun bm!517030 () Bool)

(assert (=> bm!517030 (= call!517034 (Exists!3191 (ite c!1115678 lambda!337695 lambda!337699)))))

(declare-fun b!6185763 () Bool)

(declare-fun c!1115679 () Bool)

(assert (=> b!6185763 (= c!1115679 ((_ is ElementMatch!16121) (regOne!32755 r!7292)))))

(declare-fun e!3767405 () Bool)

(assert (=> b!6185763 (= e!3767405 e!3767409)))

(declare-fun d!1939428 () Bool)

(declare-fun c!1115677 () Bool)

(assert (=> d!1939428 (= c!1115677 ((_ is EmptyExpr!16121) (regOne!32755 r!7292)))))

(assert (=> d!1939428 (= (matchRSpec!3222 (regOne!32755 r!7292) s!2326) e!3767408)))

(declare-fun b!6185764 () Bool)

(declare-fun e!3767407 () Bool)

(assert (=> b!6185764 (= e!3767407 (matchRSpec!3222 (regTwo!32755 (regOne!32755 r!7292)) s!2326))))

(declare-fun b!6185765 () Bool)

(assert (=> b!6185765 (= e!3767410 e!3767406)))

(assert (=> b!6185765 (= c!1115678 ((_ is Star!16121) (regOne!32755 r!7292)))))

(declare-fun b!6185766 () Bool)

(assert (=> b!6185766 (= e!3767410 e!3767407)))

(declare-fun res!2559204 () Bool)

(assert (=> b!6185766 (= res!2559204 (matchRSpec!3222 (regOne!32755 (regOne!32755 r!7292)) s!2326))))

(assert (=> b!6185766 (=> res!2559204 e!3767407)))

(declare-fun b!6185767 () Bool)

(assert (=> b!6185767 (= e!3767408 e!3767405)))

(declare-fun res!2559202 () Bool)

(assert (=> b!6185767 (= res!2559202 (not ((_ is EmptyLang!16121) (regOne!32755 r!7292))))))

(assert (=> b!6185767 (=> (not res!2559202) (not e!3767405))))

(assert (= (and d!1939428 c!1115677) b!6185762))

(assert (= (and d!1939428 (not c!1115677)) b!6185767))

(assert (= (and b!6185767 res!2559202) b!6185763))

(assert (= (and b!6185763 c!1115679) b!6185761))

(assert (= (and b!6185763 (not c!1115679)) b!6185757))

(assert (= (and b!6185757 c!1115680) b!6185766))

(assert (= (and b!6185757 (not c!1115680)) b!6185765))

(assert (= (and b!6185766 (not res!2559204)) b!6185764))

(assert (= (and b!6185765 c!1115678) b!6185760))

(assert (= (and b!6185765 (not c!1115678)) b!6185758))

(assert (= (and b!6185760 (not res!2559203)) b!6185759))

(assert (= (or b!6185759 b!6185758) bm!517030))

(assert (= (or b!6185762 b!6185760) bm!517029))

(assert (=> bm!517029 m!7019654))

(declare-fun m!7020722 () Bool)

(assert (=> bm!517030 m!7020722))

(declare-fun m!7020726 () Bool)

(assert (=> b!6185764 m!7020726))

(declare-fun m!7020728 () Bool)

(assert (=> b!6185766 m!7020728))

(assert (=> b!6184748 d!1939428))

(declare-fun d!1939434 () Bool)

(assert (=> d!1939434 (= (isEmpty!36520 lt!2339252) ((_ is Nil!64538) lt!2339252))))

(assert (=> b!6184904 d!1939434))

(declare-fun bs!1534740 () Bool)

(declare-fun d!1939438 () Bool)

(assert (= bs!1534740 (and d!1939438 d!1939176)))

(declare-fun lambda!337700 () Int)

(assert (=> bs!1534740 (= lambda!337700 lambda!337661)))

(declare-fun bs!1534741 () Bool)

(assert (= bs!1534741 (and d!1939438 d!1939160)))

(assert (=> bs!1534741 (= lambda!337700 lambda!337658)))

(declare-fun bs!1534742 () Bool)

(assert (= bs!1534742 (and d!1939438 d!1939326)))

(assert (=> bs!1534742 (= lambda!337700 lambda!337684)))

(declare-fun bs!1534743 () Bool)

(assert (= bs!1534743 (and d!1939438 d!1939190)))

(assert (=> bs!1534743 (= lambda!337700 lambda!337665)))

(declare-fun bs!1534744 () Bool)

(assert (= bs!1534744 (and d!1939438 d!1939158)))

(assert (=> bs!1534744 (= lambda!337700 lambda!337657)))

(declare-fun bs!1534745 () Bool)

(assert (= bs!1534745 (and d!1939438 d!1939336)))

(assert (=> bs!1534745 (= lambda!337700 lambda!337685)))

(declare-fun bs!1534746 () Bool)

(assert (= bs!1534746 (and d!1939438 d!1939248)))

(assert (=> bs!1534746 (= lambda!337700 lambda!337678)))

(declare-fun bs!1534747 () Bool)

(assert (= bs!1534747 (and d!1939438 d!1939104)))

(assert (=> bs!1534747 (= lambda!337700 lambda!337653)))

(declare-fun bs!1534748 () Bool)

(assert (= bs!1534748 (and d!1939438 d!1939208)))

(assert (=> bs!1534748 (= lambda!337700 lambda!337668)))

(declare-fun bs!1534749 () Bool)

(assert (= bs!1534749 (and d!1939438 d!1939366)))

(assert (=> bs!1534749 (= lambda!337700 lambda!337691)))

(assert (=> d!1939438 (= (nullableZipper!1900 ((_ map or) lt!2339229 lt!2339244)) (exists!2463 ((_ map or) lt!2339229 lt!2339244) lambda!337700))))

(declare-fun bs!1534750 () Bool)

(assert (= bs!1534750 d!1939438))

(declare-fun m!7020734 () Bool)

(assert (=> bs!1534750 m!7020734))

(assert (=> b!6184603 d!1939438))

(assert (=> bs!1534436 d!1939058))

(declare-fun c!1115687 () Bool)

(declare-fun call!517040 () List!64662)

(declare-fun call!517043 () (InoxSet Context!11010))

(declare-fun bm!517034 () Bool)

(assert (=> bm!517034 (= call!517043 (derivationStepZipperDown!1369 (ite c!1115687 (regOne!32755 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (regOne!32754 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))) (ite c!1115687 (ite c!1115472 lt!2339239 (Context!11011 call!516894)) (Context!11011 call!517040)) (h!70988 s!2326)))))

(declare-fun b!6185777 () Bool)

(declare-fun e!3767420 () (InoxSet Context!11010))

(declare-fun e!3767419 () (InoxSet Context!11010))

(assert (=> b!6185777 (= e!3767420 e!3767419)))

(assert (=> b!6185777 (= c!1115687 ((_ is Union!16121) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun c!1115689 () Bool)

(declare-fun c!1115685 () Bool)

(declare-fun bm!517035 () Bool)

(assert (=> bm!517035 (= call!517040 ($colon$colon!1995 (exprs!6005 (ite c!1115472 lt!2339239 (Context!11011 call!516894))) (ite (or c!1115685 c!1115689) (regTwo!32754 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))))))

(declare-fun b!6185778 () Bool)

(declare-fun e!3767423 () Bool)

(assert (=> b!6185778 (= c!1115685 e!3767423)))

(declare-fun res!2559210 () Bool)

(assert (=> b!6185778 (=> (not res!2559210) (not e!3767423))))

(assert (=> b!6185778 (= res!2559210 ((_ is Concat!24966) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun e!3767422 () (InoxSet Context!11010))

(assert (=> b!6185778 (= e!3767419 e!3767422)))

(declare-fun b!6185779 () Bool)

(assert (=> b!6185779 (= e!3767423 (nullable!6114 (regOne!32754 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))))))

(declare-fun b!6185780 () Bool)

(declare-fun call!517041 () (InoxSet Context!11010))

(assert (=> b!6185780 (= e!3767422 ((_ map or) call!517043 call!517041))))

(declare-fun bm!517036 () Bool)

(declare-fun call!517044 () (InoxSet Context!11010))

(assert (=> bm!517036 (= call!517041 call!517044)))

(declare-fun b!6185781 () Bool)

(declare-fun e!3767421 () (InoxSet Context!11010))

(declare-fun call!517042 () (InoxSet Context!11010))

(assert (=> b!6185781 (= e!3767421 call!517042)))

(declare-fun b!6185782 () Bool)

(assert (=> b!6185782 (= e!3767421 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517037 () Bool)

(declare-fun call!517039 () List!64662)

(assert (=> bm!517037 (= call!517039 call!517040)))

(declare-fun b!6185783 () Bool)

(assert (=> b!6185783 (= e!3767420 (store ((as const (Array Context!11010 Bool)) false) (ite c!1115472 lt!2339239 (Context!11011 call!516894)) true))))

(declare-fun b!6185785 () Bool)

(declare-fun c!1115688 () Bool)

(assert (=> b!6185785 (= c!1115688 ((_ is Star!16121) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun e!3767418 () (InoxSet Context!11010))

(assert (=> b!6185785 (= e!3767418 e!3767421)))

(declare-fun b!6185786 () Bool)

(assert (=> b!6185786 (= e!3767418 call!517042)))

(declare-fun b!6185787 () Bool)

(assert (=> b!6185787 (= e!3767419 ((_ map or) call!517043 call!517044))))

(declare-fun c!1115686 () Bool)

(declare-fun d!1939440 () Bool)

(assert (=> d!1939440 (= c!1115686 (and ((_ is ElementMatch!16121) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (= (c!1115220 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (h!70988 s!2326))))))

(assert (=> d!1939440 (= (derivationStepZipperDown!1369 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))) (ite c!1115472 lt!2339239 (Context!11011 call!516894)) (h!70988 s!2326)) e!3767420)))

(declare-fun b!6185784 () Bool)

(assert (=> b!6185784 (= e!3767422 e!3767418)))

(assert (=> b!6185784 (= c!1115689 ((_ is Concat!24966) (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))))))

(declare-fun bm!517038 () Bool)

(assert (=> bm!517038 (= call!517042 call!517041)))

(declare-fun bm!517039 () Bool)

(assert (=> bm!517039 (= call!517044 (derivationStepZipperDown!1369 (ite c!1115687 (regTwo!32755 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (ite c!1115685 (regTwo!32754 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (ite c!1115689 (regOne!32754 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292))))) (reg!16450 (ite c!1115472 (regOne!32755 (regOne!32755 (regOne!32754 r!7292))) (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))))) (ite (or c!1115687 c!1115685) (ite c!1115472 lt!2339239 (Context!11011 call!516894)) (Context!11011 call!517039)) (h!70988 s!2326)))))

(assert (= (and d!1939440 c!1115686) b!6185783))

(assert (= (and d!1939440 (not c!1115686)) b!6185777))

(assert (= (and b!6185777 c!1115687) b!6185787))

(assert (= (and b!6185777 (not c!1115687)) b!6185778))

(assert (= (and b!6185778 res!2559210) b!6185779))

(assert (= (and b!6185778 c!1115685) b!6185780))

(assert (= (and b!6185778 (not c!1115685)) b!6185784))

(assert (= (and b!6185784 c!1115689) b!6185786))

(assert (= (and b!6185784 (not c!1115689)) b!6185785))

(assert (= (and b!6185785 c!1115688) b!6185781))

(assert (= (and b!6185785 (not c!1115688)) b!6185782))

(assert (= (or b!6185786 b!6185781) bm!517037))

(assert (= (or b!6185786 b!6185781) bm!517038))

(assert (= (or b!6185780 bm!517037) bm!517035))

(assert (= (or b!6185780 bm!517038) bm!517036))

(assert (= (or b!6185787 bm!517036) bm!517039))

(assert (= (or b!6185787 b!6185780) bm!517034))

(declare-fun m!7020736 () Bool)

(assert (=> b!6185783 m!7020736))

(declare-fun m!7020738 () Bool)

(assert (=> b!6185779 m!7020738))

(declare-fun m!7020740 () Bool)

(assert (=> bm!517035 m!7020740))

(declare-fun m!7020742 () Bool)

(assert (=> bm!517034 m!7020742))

(declare-fun m!7020744 () Bool)

(assert (=> bm!517039 m!7020744))

(assert (=> bm!516888 d!1939440))

(assert (=> d!1939010 d!1939018))

(declare-fun d!1939442 () Bool)

(assert (=> d!1939442 (= (flatMap!1626 z!1189 lambda!337585) (dynLambda!25452 lambda!337585 (h!70987 zl!343)))))

(assert (=> d!1939442 true))

(declare-fun _$13!3169 () Unit!157747)

(assert (=> d!1939442 (= (choose!45949 z!1189 (h!70987 zl!343) lambda!337585) _$13!3169)))

(declare-fun b_lambda!235383 () Bool)

(assert (=> (not b_lambda!235383) (not d!1939442)))

(declare-fun bs!1534751 () Bool)

(assert (= bs!1534751 d!1939442))

(assert (=> bs!1534751 m!7019162))

(assert (=> bs!1534751 m!7019796))

(assert (=> d!1939010 d!1939442))

(assert (=> b!6184598 d!1938902))

(declare-fun d!1939444 () Bool)

(assert (=> d!1939444 (= (isConcat!1059 lt!2339366) ((_ is Concat!24966) lt!2339366))))

(assert (=> b!6184908 d!1939444))

(declare-fun d!1939446 () Bool)

(assert (=> d!1939446 (= (isEmpty!36520 lt!2339241) ((_ is Nil!64538) lt!2339241))))

(assert (=> b!6184914 d!1939446))

(declare-fun d!1939448 () Bool)

(declare-fun c!1115690 () Bool)

(assert (=> d!1939448 (= c!1115690 (isEmpty!36523 (tail!11844 (t!378172 s!2326))))))

(declare-fun e!3767428 () Bool)

(assert (=> d!1939448 (= (matchZipper!2133 (derivationStepZipper!2092 lt!2339233 (head!12759 (t!378172 s!2326))) (tail!11844 (t!378172 s!2326))) e!3767428)))

(declare-fun b!6185792 () Bool)

(assert (=> b!6185792 (= e!3767428 (nullableZipper!1900 (derivationStepZipper!2092 lt!2339233 (head!12759 (t!378172 s!2326)))))))

(declare-fun b!6185793 () Bool)

(assert (=> b!6185793 (= e!3767428 (matchZipper!2133 (derivationStepZipper!2092 (derivationStepZipper!2092 lt!2339233 (head!12759 (t!378172 s!2326))) (head!12759 (tail!11844 (t!378172 s!2326)))) (tail!11844 (tail!11844 (t!378172 s!2326)))))))

(assert (= (and d!1939448 c!1115690) b!6185792))

(assert (= (and d!1939448 (not c!1115690)) b!6185793))

(assert (=> d!1939448 m!7019489))

(assert (=> d!1939448 m!7020180))

(assert (=> b!6185792 m!7019486))

(declare-fun m!7020746 () Bool)

(assert (=> b!6185792 m!7020746))

(assert (=> b!6185793 m!7019489))

(assert (=> b!6185793 m!7020184))

(assert (=> b!6185793 m!7019486))

(assert (=> b!6185793 m!7020184))

(declare-fun m!7020748 () Bool)

(assert (=> b!6185793 m!7020748))

(assert (=> b!6185793 m!7019489))

(assert (=> b!6185793 m!7020188))

(assert (=> b!6185793 m!7020748))

(assert (=> b!6185793 m!7020188))

(declare-fun m!7020750 () Bool)

(assert (=> b!6185793 m!7020750))

(assert (=> b!6184570 d!1939448))

(declare-fun bs!1534752 () Bool)

(declare-fun d!1939450 () Bool)

(assert (= bs!1534752 (and d!1939450 d!1939086)))

(declare-fun lambda!337701 () Int)

(assert (=> bs!1534752 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337701 lambda!337649))))

(declare-fun bs!1534753 () Bool)

(assert (= bs!1534753 (and d!1939450 d!1939166)))

(assert (=> bs!1534753 (= lambda!337701 lambda!337659)))

(declare-fun bs!1534754 () Bool)

(assert (= bs!1534754 (and d!1939450 d!1939292)))

(assert (=> bs!1534754 (= lambda!337701 lambda!337681)))

(declare-fun bs!1534755 () Bool)

(assert (= bs!1534755 (and d!1939450 d!1939274)))

(assert (=> bs!1534755 (= lambda!337701 lambda!337680)))

(declare-fun bs!1534756 () Bool)

(assert (= bs!1534756 (and d!1939450 d!1939300)))

(assert (=> bs!1534756 (= lambda!337701 lambda!337682)))

(declare-fun bs!1534757 () Bool)

(assert (= bs!1534757 (and d!1939450 d!1939090)))

(assert (=> bs!1534757 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337701 lambda!337650))))

(declare-fun bs!1534758 () Bool)

(assert (= bs!1534758 (and d!1939450 d!1939416)))

(assert (=> bs!1534758 (= lambda!337701 lambda!337692)))

(declare-fun bs!1534759 () Bool)

(assert (= bs!1534759 (and d!1939450 d!1939424)))

(assert (=> bs!1534759 (= lambda!337701 lambda!337694)))

(declare-fun bs!1534760 () Bool)

(assert (= bs!1534760 (and d!1939450 b!6184187)))

(assert (=> bs!1534760 (= (= (head!12759 (t!378172 s!2326)) (h!70988 s!2326)) (= lambda!337701 lambda!337585))))

(declare-fun bs!1534761 () Bool)

(assert (= bs!1534761 (and d!1939450 d!1939204)))

(assert (=> bs!1534761 (= (= (head!12759 (t!378172 s!2326)) (head!12759 s!2326)) (= lambda!337701 lambda!337667))))

(declare-fun bs!1534762 () Bool)

(assert (= bs!1534762 (and d!1939450 d!1939194)))

(assert (=> bs!1534762 (= lambda!337701 lambda!337666)))

(assert (=> d!1939450 true))

(assert (=> d!1939450 (= (derivationStepZipper!2092 lt!2339233 (head!12759 (t!378172 s!2326))) (flatMap!1626 lt!2339233 lambda!337701))))

(declare-fun bs!1534763 () Bool)

(assert (= bs!1534763 d!1939450))

(declare-fun m!7020752 () Bool)

(assert (=> bs!1534763 m!7020752))

(assert (=> b!6184570 d!1939450))

(assert (=> b!6184570 d!1939168))

(assert (=> b!6184570 d!1939170))

(assert (=> d!1938928 d!1939106))

(declare-fun c!1115693 () Bool)

(declare-fun bm!517040 () Bool)

(declare-fun call!517049 () (InoxSet Context!11010))

(declare-fun call!517046 () List!64662)

(assert (=> bm!517040 (= call!517049 (derivationStepZipperDown!1369 (ite c!1115693 (regOne!32755 (h!70986 (exprs!6005 lt!2339239))) (regOne!32754 (h!70986 (exprs!6005 lt!2339239)))) (ite c!1115693 (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (Context!11011 call!517046)) (h!70988 s!2326)))))

(declare-fun b!6185796 () Bool)

(declare-fun e!3767433 () (InoxSet Context!11010))

(declare-fun e!3767432 () (InoxSet Context!11010))

(assert (=> b!6185796 (= e!3767433 e!3767432)))

(assert (=> b!6185796 (= c!1115693 ((_ is Union!16121) (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun c!1115691 () Bool)

(declare-fun c!1115695 () Bool)

(declare-fun bm!517041 () Bool)

(assert (=> bm!517041 (= call!517046 ($colon$colon!1995 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 lt!2339239)))) (ite (or c!1115691 c!1115695) (regTwo!32754 (h!70986 (exprs!6005 lt!2339239))) (h!70986 (exprs!6005 lt!2339239)))))))

(declare-fun b!6185797 () Bool)

(declare-fun e!3767436 () Bool)

(assert (=> b!6185797 (= c!1115691 e!3767436)))

(declare-fun res!2559217 () Bool)

(assert (=> b!6185797 (=> (not res!2559217) (not e!3767436))))

(assert (=> b!6185797 (= res!2559217 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun e!3767435 () (InoxSet Context!11010))

(assert (=> b!6185797 (= e!3767432 e!3767435)))

(declare-fun b!6185798 () Bool)

(assert (=> b!6185798 (= e!3767436 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 lt!2339239)))))))

(declare-fun b!6185799 () Bool)

(declare-fun call!517047 () (InoxSet Context!11010))

(assert (=> b!6185799 (= e!3767435 ((_ map or) call!517049 call!517047))))

(declare-fun bm!517042 () Bool)

(declare-fun call!517050 () (InoxSet Context!11010))

(assert (=> bm!517042 (= call!517047 call!517050)))

(declare-fun b!6185800 () Bool)

(declare-fun e!3767434 () (InoxSet Context!11010))

(declare-fun call!517048 () (InoxSet Context!11010))

(assert (=> b!6185800 (= e!3767434 call!517048)))

(declare-fun b!6185801 () Bool)

(assert (=> b!6185801 (= e!3767434 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517043 () Bool)

(declare-fun call!517045 () List!64662)

(assert (=> bm!517043 (= call!517045 call!517046)))

(declare-fun b!6185802 () Bool)

(assert (=> b!6185802 (= e!3767433 (store ((as const (Array Context!11010 Bool)) false) (Context!11011 (t!378170 (exprs!6005 lt!2339239))) true))))

(declare-fun b!6185804 () Bool)

(declare-fun c!1115694 () Bool)

(assert (=> b!6185804 (= c!1115694 ((_ is Star!16121) (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun e!3767431 () (InoxSet Context!11010))

(assert (=> b!6185804 (= e!3767431 e!3767434)))

(declare-fun b!6185805 () Bool)

(assert (=> b!6185805 (= e!3767431 call!517048)))

(declare-fun b!6185806 () Bool)

(assert (=> b!6185806 (= e!3767432 ((_ map or) call!517049 call!517050))))

(declare-fun d!1939452 () Bool)

(declare-fun c!1115692 () Bool)

(assert (=> d!1939452 (= c!1115692 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 lt!2339239))) (= (c!1115220 (h!70986 (exprs!6005 lt!2339239))) (h!70988 s!2326))))))

(assert (=> d!1939452 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 lt!2339239)) (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (h!70988 s!2326)) e!3767433)))

(declare-fun b!6185803 () Bool)

(assert (=> b!6185803 (= e!3767435 e!3767431)))

(assert (=> b!6185803 (= c!1115695 ((_ is Concat!24966) (h!70986 (exprs!6005 lt!2339239))))))

(declare-fun bm!517044 () Bool)

(assert (=> bm!517044 (= call!517048 call!517047)))

(declare-fun bm!517045 () Bool)

(assert (=> bm!517045 (= call!517050 (derivationStepZipperDown!1369 (ite c!1115693 (regTwo!32755 (h!70986 (exprs!6005 lt!2339239))) (ite c!1115691 (regTwo!32754 (h!70986 (exprs!6005 lt!2339239))) (ite c!1115695 (regOne!32754 (h!70986 (exprs!6005 lt!2339239))) (reg!16450 (h!70986 (exprs!6005 lt!2339239)))))) (ite (or c!1115693 c!1115691) (Context!11011 (t!378170 (exprs!6005 lt!2339239))) (Context!11011 call!517045)) (h!70988 s!2326)))))

(assert (= (and d!1939452 c!1115692) b!6185802))

(assert (= (and d!1939452 (not c!1115692)) b!6185796))

(assert (= (and b!6185796 c!1115693) b!6185806))

(assert (= (and b!6185796 (not c!1115693)) b!6185797))

(assert (= (and b!6185797 res!2559217) b!6185798))

(assert (= (and b!6185797 c!1115691) b!6185799))

(assert (= (and b!6185797 (not c!1115691)) b!6185803))

(assert (= (and b!6185803 c!1115695) b!6185805))

(assert (= (and b!6185803 (not c!1115695)) b!6185804))

(assert (= (and b!6185804 c!1115694) b!6185800))

(assert (= (and b!6185804 (not c!1115694)) b!6185801))

(assert (= (or b!6185805 b!6185800) bm!517043))

(assert (= (or b!6185805 b!6185800) bm!517044))

(assert (= (or b!6185799 bm!517043) bm!517041))

(assert (= (or b!6185799 bm!517044) bm!517042))

(assert (= (or b!6185806 bm!517042) bm!517045))

(assert (= (or b!6185806 b!6185799) bm!517040))

(declare-fun m!7020758 () Bool)

(assert (=> b!6185802 m!7020758))

(declare-fun m!7020760 () Bool)

(assert (=> b!6185798 m!7020760))

(declare-fun m!7020762 () Bool)

(assert (=> bm!517041 m!7020762))

(declare-fun m!7020764 () Bool)

(assert (=> bm!517040 m!7020764))

(declare-fun m!7020766 () Bool)

(assert (=> bm!517045 m!7020766))

(assert (=> bm!516862 d!1939452))

(declare-fun call!517055 () (InoxSet Context!11010))

(declare-fun c!1115698 () Bool)

(declare-fun bm!517046 () Bool)

(declare-fun call!517052 () List!64662)

(assert (=> bm!517046 (= call!517055 (derivationStepZipperDown!1369 (ite c!1115698 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))) (ite c!1115698 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (Context!11011 call!517052)) (h!70988 s!2326)))))

(declare-fun b!6185807 () Bool)

(declare-fun e!3767439 () (InoxSet Context!11010))

(declare-fun e!3767438 () (InoxSet Context!11010))

(assert (=> b!6185807 (= e!3767439 e!3767438)))

(assert (=> b!6185807 (= c!1115698 ((_ is Union!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun c!1115696 () Bool)

(declare-fun bm!517047 () Bool)

(declare-fun c!1115700 () Bool)

(assert (=> bm!517047 (= call!517052 ($colon$colon!1995 (exprs!6005 (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343))))) (ite (or c!1115696 c!1115700) (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70986 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6185808 () Bool)

(declare-fun e!3767442 () Bool)

(assert (=> b!6185808 (= c!1115696 e!3767442)))

(declare-fun res!2559218 () Bool)

(assert (=> b!6185808 (=> (not res!2559218) (not e!3767442))))

(assert (=> b!6185808 (= res!2559218 ((_ is Concat!24966) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun e!3767441 () (InoxSet Context!11010))

(assert (=> b!6185808 (= e!3767438 e!3767441)))

(declare-fun b!6185809 () Bool)

(assert (=> b!6185809 (= e!3767442 (nullable!6114 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))

(declare-fun b!6185810 () Bool)

(declare-fun call!517053 () (InoxSet Context!11010))

(assert (=> b!6185810 (= e!3767441 ((_ map or) call!517055 call!517053))))

(declare-fun bm!517048 () Bool)

(declare-fun call!517056 () (InoxSet Context!11010))

(assert (=> bm!517048 (= call!517053 call!517056)))

(declare-fun b!6185811 () Bool)

(declare-fun e!3767440 () (InoxSet Context!11010))

(declare-fun call!517054 () (InoxSet Context!11010))

(assert (=> b!6185811 (= e!3767440 call!517054)))

(declare-fun b!6185812 () Bool)

(assert (=> b!6185812 (= e!3767440 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517049 () Bool)

(declare-fun call!517051 () List!64662)

(assert (=> bm!517049 (= call!517051 call!517052)))

(declare-fun b!6185813 () Bool)

(assert (=> b!6185813 (= e!3767439 (store ((as const (Array Context!11010 Bool)) false) (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) true))))

(declare-fun b!6185815 () Bool)

(declare-fun c!1115699 () Bool)

(assert (=> b!6185815 (= c!1115699 ((_ is Star!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun e!3767437 () (InoxSet Context!11010))

(assert (=> b!6185815 (= e!3767437 e!3767440)))

(declare-fun b!6185816 () Bool)

(assert (=> b!6185816 (= e!3767437 call!517054)))

(declare-fun b!6185817 () Bool)

(assert (=> b!6185817 (= e!3767438 ((_ map or) call!517055 call!517056))))

(declare-fun d!1939456 () Bool)

(declare-fun c!1115697 () Bool)

(assert (=> d!1939456 (= c!1115697 (and ((_ is ElementMatch!16121) (h!70986 (exprs!6005 (h!70987 zl!343)))) (= (c!1115220 (h!70986 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326))))))

(assert (=> d!1939456 (= (derivationStepZipperDown!1369 (h!70986 (exprs!6005 (h!70987 zl!343))) (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (h!70988 s!2326)) e!3767439)))

(declare-fun b!6185814 () Bool)

(assert (=> b!6185814 (= e!3767441 e!3767437)))

(assert (=> b!6185814 (= c!1115700 ((_ is Concat!24966) (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun bm!517050 () Bool)

(assert (=> bm!517050 (= call!517054 call!517053)))

(declare-fun bm!517051 () Bool)

(assert (=> bm!517051 (= call!517056 (derivationStepZipperDown!1369 (ite c!1115698 (regTwo!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115696 (regTwo!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (ite c!1115700 (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))) (reg!16450 (h!70986 (exprs!6005 (h!70987 zl!343))))))) (ite (or c!1115698 c!1115696) (Context!11011 (t!378170 (exprs!6005 (h!70987 zl!343)))) (Context!11011 call!517051)) (h!70988 s!2326)))))

(assert (= (and d!1939456 c!1115697) b!6185813))

(assert (= (and d!1939456 (not c!1115697)) b!6185807))

(assert (= (and b!6185807 c!1115698) b!6185817))

(assert (= (and b!6185807 (not c!1115698)) b!6185808))

(assert (= (and b!6185808 res!2559218) b!6185809))

(assert (= (and b!6185808 c!1115696) b!6185810))

(assert (= (and b!6185808 (not c!1115696)) b!6185814))

(assert (= (and b!6185814 c!1115700) b!6185816))

(assert (= (and b!6185814 (not c!1115700)) b!6185815))

(assert (= (and b!6185815 c!1115699) b!6185811))

(assert (= (and b!6185815 (not c!1115699)) b!6185812))

(assert (= (or b!6185816 b!6185811) bm!517049))

(assert (= (or b!6185816 b!6185811) bm!517050))

(assert (= (or b!6185810 bm!517049) bm!517047))

(assert (= (or b!6185810 bm!517050) bm!517048))

(assert (= (or b!6185817 bm!517048) bm!517051))

(assert (= (or b!6185817 b!6185810) bm!517046))

(declare-fun m!7020768 () Bool)

(assert (=> b!6185813 m!7020768))

(assert (=> b!6185809 m!7019814))

(declare-fun m!7020770 () Bool)

(assert (=> bm!517047 m!7020770))

(declare-fun m!7020772 () Bool)

(assert (=> bm!517046 m!7020772))

(declare-fun m!7020774 () Bool)

(assert (=> bm!517051 m!7020774))

(assert (=> bm!516863 d!1939456))

(assert (=> b!6184548 d!1938902))

(assert (=> d!1938890 d!1938900))

(assert (=> d!1938890 d!1938894))

(declare-fun d!1939460 () Bool)

(declare-fun e!3767450 () Bool)

(assert (=> d!1939460 (= (matchZipper!2133 ((_ map or) lt!2339233 lt!2339244) (t!378172 s!2326)) e!3767450)))

(declare-fun res!2559224 () Bool)

(assert (=> d!1939460 (=> res!2559224 e!3767450)))

(assert (=> d!1939460 (= res!2559224 (matchZipper!2133 lt!2339233 (t!378172 s!2326)))))

(assert (=> d!1939460 true))

(declare-fun _$48!1806 () Unit!157747)

(assert (=> d!1939460 (= (choose!45940 lt!2339233 lt!2339244 (t!378172 s!2326)) _$48!1806)))

(declare-fun b!6185827 () Bool)

(assert (=> b!6185827 (= e!3767450 (matchZipper!2133 lt!2339244 (t!378172 s!2326)))))

(assert (= (and d!1939460 (not res!2559224)) b!6185827))

(assert (=> d!1939460 m!7019216))

(assert (=> d!1939460 m!7019184))

(assert (=> b!6185827 m!7019092))

(assert (=> d!1938890 d!1939460))

(declare-fun d!1939462 () Bool)

(assert (=> d!1939462 (= (nullable!6114 (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))) (nullableFct!2075 (regOne!32754 (regOne!32755 (regOne!32754 r!7292)))))))

(declare-fun bs!1534764 () Bool)

(assert (= bs!1534764 d!1939462))

(declare-fun m!7020778 () Bool)

(assert (=> bs!1534764 m!7020778))

(assert (=> b!6185048 d!1939462))

(declare-fun call!517064 () (InoxSet Context!11010))

(declare-fun call!517061 () List!64662)

(declare-fun c!1115705 () Bool)

(declare-fun bm!517055 () Bool)

(assert (=> bm!517055 (= call!517064 (derivationStepZipperDown!1369 (ite c!1115705 (regOne!32755 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (regOne!32754 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))) (ite c!1115705 (ite c!1115440 lt!2339239 (Context!11011 call!516882)) (Context!11011 call!517061)) (h!70988 s!2326)))))

(declare-fun b!6185828 () Bool)

(declare-fun e!3767453 () (InoxSet Context!11010))

(declare-fun e!3767452 () (InoxSet Context!11010))

(assert (=> b!6185828 (= e!3767453 e!3767452)))

(assert (=> b!6185828 (= c!1115705 ((_ is Union!16121) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun c!1115707 () Bool)

(declare-fun bm!517056 () Bool)

(declare-fun c!1115703 () Bool)

(assert (=> bm!517056 (= call!517061 ($colon$colon!1995 (exprs!6005 (ite c!1115440 lt!2339239 (Context!11011 call!516882))) (ite (or c!1115703 c!1115707) (regTwo!32754 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun b!6185829 () Bool)

(declare-fun e!3767456 () Bool)

(assert (=> b!6185829 (= c!1115703 e!3767456)))

(declare-fun res!2559225 () Bool)

(assert (=> b!6185829 (=> (not res!2559225) (not e!3767456))))

(assert (=> b!6185829 (= res!2559225 ((_ is Concat!24966) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun e!3767455 () (InoxSet Context!11010))

(assert (=> b!6185829 (= e!3767452 e!3767455)))

(declare-fun b!6185830 () Bool)

(assert (=> b!6185830 (= e!3767456 (nullable!6114 (regOne!32754 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))))

(declare-fun b!6185831 () Bool)

(declare-fun call!517062 () (InoxSet Context!11010))

(assert (=> b!6185831 (= e!3767455 ((_ map or) call!517064 call!517062))))

(declare-fun bm!517057 () Bool)

(declare-fun call!517065 () (InoxSet Context!11010))

(assert (=> bm!517057 (= call!517062 call!517065)))

(declare-fun b!6185832 () Bool)

(declare-fun e!3767454 () (InoxSet Context!11010))

(declare-fun call!517063 () (InoxSet Context!11010))

(assert (=> b!6185832 (= e!3767454 call!517063)))

(declare-fun b!6185833 () Bool)

(assert (=> b!6185833 (= e!3767454 ((as const (Array Context!11010 Bool)) false))))

(declare-fun bm!517058 () Bool)

(declare-fun call!517060 () List!64662)

(assert (=> bm!517058 (= call!517060 call!517061)))

(declare-fun b!6185834 () Bool)

(assert (=> b!6185834 (= e!3767453 (store ((as const (Array Context!11010 Bool)) false) (ite c!1115440 lt!2339239 (Context!11011 call!516882)) true))))

(declare-fun b!6185836 () Bool)

(declare-fun c!1115706 () Bool)

(assert (=> b!6185836 (= c!1115706 ((_ is Star!16121) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun e!3767451 () (InoxSet Context!11010))

(assert (=> b!6185836 (= e!3767451 e!3767454)))

(declare-fun b!6185837 () Bool)

(assert (=> b!6185837 (= e!3767451 call!517063)))

(declare-fun b!6185838 () Bool)

(assert (=> b!6185838 (= e!3767452 ((_ map or) call!517064 call!517065))))

(declare-fun d!1939464 () Bool)

(declare-fun c!1115704 () Bool)

(assert (=> d!1939464 (= c!1115704 (and ((_ is ElementMatch!16121) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (= (c!1115220 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (h!70988 s!2326))))))

(assert (=> d!1939464 (= (derivationStepZipperDown!1369 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))) (ite c!1115440 lt!2339239 (Context!11011 call!516882)) (h!70988 s!2326)) e!3767453)))

(declare-fun b!6185835 () Bool)

(assert (=> b!6185835 (= e!3767455 e!3767451)))

(assert (=> b!6185835 (= c!1115707 ((_ is Concat!24966) (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))))))

(declare-fun bm!517059 () Bool)

(assert (=> bm!517059 (= call!517063 call!517062)))

(declare-fun bm!517060 () Bool)

(assert (=> bm!517060 (= call!517065 (derivationStepZipperDown!1369 (ite c!1115705 (regTwo!32755 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (ite c!1115703 (regTwo!32754 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (ite c!1115707 (regOne!32754 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343)))))) (reg!16450 (ite c!1115440 (regOne!32755 (h!70986 (exprs!6005 (h!70987 zl!343)))) (regOne!32754 (h!70986 (exprs!6005 (h!70987 zl!343))))))))) (ite (or c!1115705 c!1115703) (ite c!1115440 lt!2339239 (Context!11011 call!516882)) (Context!11011 call!517060)) (h!70988 s!2326)))))

(assert (= (and d!1939464 c!1115704) b!6185834))

(assert (= (and d!1939464 (not c!1115704)) b!6185828))

(assert (= (and b!6185828 c!1115705) b!6185838))

(assert (= (and b!6185828 (not c!1115705)) b!6185829))

(assert (= (and b!6185829 res!2559225) b!6185830))

(assert (= (and b!6185829 c!1115703) b!6185831))

(assert (= (and b!6185829 (not c!1115703)) b!6185835))

(assert (= (and b!6185835 c!1115707) b!6185837))

(assert (= (and b!6185835 (not c!1115707)) b!6185836))

(assert (= (and b!6185836 c!1115706) b!6185832))

(assert (= (and b!6185836 (not c!1115706)) b!6185833))

(assert (= (or b!6185837 b!6185832) bm!517058))

(assert (= (or b!6185837 b!6185832) bm!517059))

(assert (= (or b!6185831 bm!517058) bm!517056))

(assert (= (or b!6185831 bm!517059) bm!517057))

(assert (= (or b!6185838 bm!517057) bm!517060))

(assert (= (or b!6185838 b!6185831) bm!517055))

(declare-fun m!7020788 () Bool)

(assert (=> b!6185834 m!7020788))

(declare-fun m!7020790 () Bool)

(assert (=> b!6185830 m!7020790))

(declare-fun m!7020792 () Bool)

(assert (=> bm!517056 m!7020792))

(declare-fun m!7020794 () Bool)

(assert (=> bm!517055 m!7020794))

(declare-fun m!7020796 () Bool)

(assert (=> bm!517060 m!7020796))

(assert (=> bm!516876 d!1939464))

(assert (=> b!6184863 d!1939082))

(declare-fun b!6185843 () Bool)

(declare-fun e!3767459 () Bool)

(declare-fun tp!1726608 () Bool)

(assert (=> b!6185843 (= e!3767459 tp!1726608)))

(declare-fun b!6185844 () Bool)

(declare-fun tp!1726607 () Bool)

(declare-fun tp!1726606 () Bool)

(assert (=> b!6185844 (= e!3767459 (and tp!1726607 tp!1726606))))

(declare-fun b!6185842 () Bool)

(declare-fun tp!1726605 () Bool)

(declare-fun tp!1726609 () Bool)

(assert (=> b!6185842 (= e!3767459 (and tp!1726605 tp!1726609))))

(declare-fun b!6185841 () Bool)

(assert (=> b!6185841 (= e!3767459 tp_is_empty!41495)))

(assert (=> b!6185104 (= tp!1726563 e!3767459)))

(assert (= (and b!6185104 ((_ is ElementMatch!16121) (regOne!32754 (regOne!32754 r!7292)))) b!6185841))

(assert (= (and b!6185104 ((_ is Concat!24966) (regOne!32754 (regOne!32754 r!7292)))) b!6185842))

(assert (= (and b!6185104 ((_ is Star!16121) (regOne!32754 (regOne!32754 r!7292)))) b!6185843))

(assert (= (and b!6185104 ((_ is Union!16121) (regOne!32754 (regOne!32754 r!7292)))) b!6185844))

(declare-fun b!6185847 () Bool)

(declare-fun e!3767460 () Bool)

(declare-fun tp!1726613 () Bool)

(assert (=> b!6185847 (= e!3767460 tp!1726613)))

(declare-fun b!6185848 () Bool)

(declare-fun tp!1726612 () Bool)

(declare-fun tp!1726611 () Bool)

(assert (=> b!6185848 (= e!3767460 (and tp!1726612 tp!1726611))))

(declare-fun b!6185846 () Bool)

(declare-fun tp!1726610 () Bool)

(declare-fun tp!1726614 () Bool)

(assert (=> b!6185846 (= e!3767460 (and tp!1726610 tp!1726614))))

(declare-fun b!6185845 () Bool)

(assert (=> b!6185845 (= e!3767460 tp_is_empty!41495)))

(assert (=> b!6185104 (= tp!1726567 e!3767460)))

(assert (= (and b!6185104 ((_ is ElementMatch!16121) (regTwo!32754 (regOne!32754 r!7292)))) b!6185845))

(assert (= (and b!6185104 ((_ is Concat!24966) (regTwo!32754 (regOne!32754 r!7292)))) b!6185846))

(assert (= (and b!6185104 ((_ is Star!16121) (regTwo!32754 (regOne!32754 r!7292)))) b!6185847))

(assert (= (and b!6185104 ((_ is Union!16121) (regTwo!32754 (regOne!32754 r!7292)))) b!6185848))

(declare-fun b!6185855 () Bool)

(declare-fun e!3767463 () Bool)

(declare-fun tp!1726618 () Bool)

(assert (=> b!6185855 (= e!3767463 tp!1726618)))

(declare-fun b!6185856 () Bool)

(declare-fun tp!1726617 () Bool)

(declare-fun tp!1726616 () Bool)

(assert (=> b!6185856 (= e!3767463 (and tp!1726617 tp!1726616))))

(declare-fun b!6185854 () Bool)

(declare-fun tp!1726615 () Bool)

(declare-fun tp!1726619 () Bool)

(assert (=> b!6185854 (= e!3767463 (and tp!1726615 tp!1726619))))

(declare-fun b!6185853 () Bool)

(assert (=> b!6185853 (= e!3767463 tp_is_empty!41495)))

(assert (=> b!6185098 (= tp!1726556 e!3767463)))

(assert (= (and b!6185098 ((_ is ElementMatch!16121) (h!70986 (exprs!6005 (h!70987 zl!343))))) b!6185853))

(assert (= (and b!6185098 ((_ is Concat!24966) (h!70986 (exprs!6005 (h!70987 zl!343))))) b!6185854))

(assert (= (and b!6185098 ((_ is Star!16121) (h!70986 (exprs!6005 (h!70987 zl!343))))) b!6185855))

(assert (= (and b!6185098 ((_ is Union!16121) (h!70986 (exprs!6005 (h!70987 zl!343))))) b!6185856))

(declare-fun b!6185857 () Bool)

(declare-fun e!3767464 () Bool)

(declare-fun tp!1726620 () Bool)

(declare-fun tp!1726621 () Bool)

(assert (=> b!6185857 (= e!3767464 (and tp!1726620 tp!1726621))))

(assert (=> b!6185098 (= tp!1726557 e!3767464)))

(assert (= (and b!6185098 ((_ is Cons!64538) (t!378170 (exprs!6005 (h!70987 zl!343))))) b!6185857))

(declare-fun b!6185860 () Bool)

(declare-fun e!3767465 () Bool)

(declare-fun tp!1726625 () Bool)

(assert (=> b!6185860 (= e!3767465 tp!1726625)))

(declare-fun b!6185861 () Bool)

(declare-fun tp!1726624 () Bool)

(declare-fun tp!1726623 () Bool)

(assert (=> b!6185861 (= e!3767465 (and tp!1726624 tp!1726623))))

(declare-fun b!6185859 () Bool)

(declare-fun tp!1726622 () Bool)

(declare-fun tp!1726626 () Bool)

(assert (=> b!6185859 (= e!3767465 (and tp!1726622 tp!1726626))))

(declare-fun b!6185858 () Bool)

(assert (=> b!6185858 (= e!3767465 tp_is_empty!41495)))

(assert (=> b!6185084 (= tp!1726541 e!3767465)))

(assert (= (and b!6185084 ((_ is ElementMatch!16121) (regOne!32755 (regOne!32755 r!7292)))) b!6185858))

(assert (= (and b!6185084 ((_ is Concat!24966) (regOne!32755 (regOne!32755 r!7292)))) b!6185859))

(assert (= (and b!6185084 ((_ is Star!16121) (regOne!32755 (regOne!32755 r!7292)))) b!6185860))

(assert (= (and b!6185084 ((_ is Union!16121) (regOne!32755 (regOne!32755 r!7292)))) b!6185861))

(declare-fun b!6185864 () Bool)

(declare-fun e!3767466 () Bool)

(declare-fun tp!1726630 () Bool)

(assert (=> b!6185864 (= e!3767466 tp!1726630)))

(declare-fun b!6185865 () Bool)

(declare-fun tp!1726629 () Bool)

(declare-fun tp!1726628 () Bool)

(assert (=> b!6185865 (= e!3767466 (and tp!1726629 tp!1726628))))

(declare-fun b!6185863 () Bool)

(declare-fun tp!1726627 () Bool)

(declare-fun tp!1726631 () Bool)

(assert (=> b!6185863 (= e!3767466 (and tp!1726627 tp!1726631))))

(declare-fun b!6185862 () Bool)

(assert (=> b!6185862 (= e!3767466 tp_is_empty!41495)))

(assert (=> b!6185084 (= tp!1726540 e!3767466)))

(assert (= (and b!6185084 ((_ is ElementMatch!16121) (regTwo!32755 (regOne!32755 r!7292)))) b!6185862))

(assert (= (and b!6185084 ((_ is Concat!24966) (regTwo!32755 (regOne!32755 r!7292)))) b!6185863))

(assert (= (and b!6185084 ((_ is Star!16121) (regTwo!32755 (regOne!32755 r!7292)))) b!6185864))

(assert (= (and b!6185084 ((_ is Union!16121) (regTwo!32755 (regOne!32755 r!7292)))) b!6185865))

(declare-fun b!6185868 () Bool)

(declare-fun e!3767467 () Bool)

(declare-fun tp!1726635 () Bool)

(assert (=> b!6185868 (= e!3767467 tp!1726635)))

(declare-fun b!6185869 () Bool)

(declare-fun tp!1726634 () Bool)

(declare-fun tp!1726633 () Bool)

(assert (=> b!6185869 (= e!3767467 (and tp!1726634 tp!1726633))))

(declare-fun b!6185867 () Bool)

(declare-fun tp!1726632 () Bool)

(declare-fun tp!1726636 () Bool)

(assert (=> b!6185867 (= e!3767467 (and tp!1726632 tp!1726636))))

(declare-fun b!6185866 () Bool)

(assert (=> b!6185866 (= e!3767467 tp_is_empty!41495)))

(assert (=> b!6185105 (= tp!1726566 e!3767467)))

(assert (= (and b!6185105 ((_ is ElementMatch!16121) (reg!16450 (regOne!32754 r!7292)))) b!6185866))

(assert (= (and b!6185105 ((_ is Concat!24966) (reg!16450 (regOne!32754 r!7292)))) b!6185867))

(assert (= (and b!6185105 ((_ is Star!16121) (reg!16450 (regOne!32754 r!7292)))) b!6185868))

(assert (= (and b!6185105 ((_ is Union!16121) (reg!16450 (regOne!32754 r!7292)))) b!6185869))

(declare-fun b!6185872 () Bool)

(declare-fun e!3767468 () Bool)

(declare-fun tp!1726640 () Bool)

(assert (=> b!6185872 (= e!3767468 tp!1726640)))

(declare-fun b!6185873 () Bool)

(declare-fun tp!1726639 () Bool)

(declare-fun tp!1726638 () Bool)

(assert (=> b!6185873 (= e!3767468 (and tp!1726639 tp!1726638))))

(declare-fun b!6185871 () Bool)

(declare-fun tp!1726637 () Bool)

(declare-fun tp!1726641 () Bool)

(assert (=> b!6185871 (= e!3767468 (and tp!1726637 tp!1726641))))

(declare-fun b!6185870 () Bool)

(assert (=> b!6185870 (= e!3767468 tp_is_empty!41495)))

(assert (=> b!6185082 (= tp!1726539 e!3767468)))

(assert (= (and b!6185082 ((_ is ElementMatch!16121) (regOne!32754 (regOne!32755 r!7292)))) b!6185870))

(assert (= (and b!6185082 ((_ is Concat!24966) (regOne!32754 (regOne!32755 r!7292)))) b!6185871))

(assert (= (and b!6185082 ((_ is Star!16121) (regOne!32754 (regOne!32755 r!7292)))) b!6185872))

(assert (= (and b!6185082 ((_ is Union!16121) (regOne!32754 (regOne!32755 r!7292)))) b!6185873))

(declare-fun b!6185876 () Bool)

(declare-fun e!3767469 () Bool)

(declare-fun tp!1726645 () Bool)

(assert (=> b!6185876 (= e!3767469 tp!1726645)))

(declare-fun b!6185877 () Bool)

(declare-fun tp!1726644 () Bool)

(declare-fun tp!1726643 () Bool)

(assert (=> b!6185877 (= e!3767469 (and tp!1726644 tp!1726643))))

(declare-fun b!6185875 () Bool)

(declare-fun tp!1726642 () Bool)

(declare-fun tp!1726646 () Bool)

(assert (=> b!6185875 (= e!3767469 (and tp!1726642 tp!1726646))))

(declare-fun b!6185874 () Bool)

(assert (=> b!6185874 (= e!3767469 tp_is_empty!41495)))

(assert (=> b!6185082 (= tp!1726543 e!3767469)))

(assert (= (and b!6185082 ((_ is ElementMatch!16121) (regTwo!32754 (regOne!32755 r!7292)))) b!6185874))

(assert (= (and b!6185082 ((_ is Concat!24966) (regTwo!32754 (regOne!32755 r!7292)))) b!6185875))

(assert (= (and b!6185082 ((_ is Star!16121) (regTwo!32754 (regOne!32755 r!7292)))) b!6185876))

(assert (= (and b!6185082 ((_ is Union!16121) (regTwo!32754 (regOne!32755 r!7292)))) b!6185877))

(declare-fun b!6185880 () Bool)

(declare-fun e!3767470 () Bool)

(declare-fun tp!1726650 () Bool)

(assert (=> b!6185880 (= e!3767470 tp!1726650)))

(declare-fun b!6185881 () Bool)

(declare-fun tp!1726649 () Bool)

(declare-fun tp!1726648 () Bool)

(assert (=> b!6185881 (= e!3767470 (and tp!1726649 tp!1726648))))

(declare-fun b!6185879 () Bool)

(declare-fun tp!1726647 () Bool)

(declare-fun tp!1726651 () Bool)

(assert (=> b!6185879 (= e!3767470 (and tp!1726647 tp!1726651))))

(declare-fun b!6185878 () Bool)

(assert (=> b!6185878 (= e!3767470 tp_is_empty!41495)))

(assert (=> b!6185106 (= tp!1726565 e!3767470)))

(assert (= (and b!6185106 ((_ is ElementMatch!16121) (regOne!32755 (regOne!32754 r!7292)))) b!6185878))

(assert (= (and b!6185106 ((_ is Concat!24966) (regOne!32755 (regOne!32754 r!7292)))) b!6185879))

(assert (= (and b!6185106 ((_ is Star!16121) (regOne!32755 (regOne!32754 r!7292)))) b!6185880))

(assert (= (and b!6185106 ((_ is Union!16121) (regOne!32755 (regOne!32754 r!7292)))) b!6185881))

(declare-fun b!6185884 () Bool)

(declare-fun e!3767471 () Bool)

(declare-fun tp!1726655 () Bool)

(assert (=> b!6185884 (= e!3767471 tp!1726655)))

(declare-fun b!6185885 () Bool)

(declare-fun tp!1726654 () Bool)

(declare-fun tp!1726653 () Bool)

(assert (=> b!6185885 (= e!3767471 (and tp!1726654 tp!1726653))))

(declare-fun b!6185883 () Bool)

(declare-fun tp!1726652 () Bool)

(declare-fun tp!1726656 () Bool)

(assert (=> b!6185883 (= e!3767471 (and tp!1726652 tp!1726656))))

(declare-fun b!6185882 () Bool)

(assert (=> b!6185882 (= e!3767471 tp_is_empty!41495)))

(assert (=> b!6185106 (= tp!1726564 e!3767471)))

(assert (= (and b!6185106 ((_ is ElementMatch!16121) (regTwo!32755 (regOne!32754 r!7292)))) b!6185882))

(assert (= (and b!6185106 ((_ is Concat!24966) (regTwo!32755 (regOne!32754 r!7292)))) b!6185883))

(assert (= (and b!6185106 ((_ is Star!16121) (regTwo!32755 (regOne!32754 r!7292)))) b!6185884))

(assert (= (and b!6185106 ((_ is Union!16121) (regTwo!32755 (regOne!32754 r!7292)))) b!6185885))

(declare-fun b!6185888 () Bool)

(declare-fun e!3767472 () Bool)

(declare-fun tp!1726660 () Bool)

(assert (=> b!6185888 (= e!3767472 tp!1726660)))

(declare-fun b!6185889 () Bool)

(declare-fun tp!1726659 () Bool)

(declare-fun tp!1726658 () Bool)

(assert (=> b!6185889 (= e!3767472 (and tp!1726659 tp!1726658))))

(declare-fun b!6185887 () Bool)

(declare-fun tp!1726657 () Bool)

(declare-fun tp!1726661 () Bool)

(assert (=> b!6185887 (= e!3767472 (and tp!1726657 tp!1726661))))

(declare-fun b!6185886 () Bool)

(assert (=> b!6185886 (= e!3767472 tp_is_empty!41495)))

(assert (=> b!6185083 (= tp!1726542 e!3767472)))

(assert (= (and b!6185083 ((_ is ElementMatch!16121) (reg!16450 (regOne!32755 r!7292)))) b!6185886))

(assert (= (and b!6185083 ((_ is Concat!24966) (reg!16450 (regOne!32755 r!7292)))) b!6185887))

(assert (= (and b!6185083 ((_ is Star!16121) (reg!16450 (regOne!32755 r!7292)))) b!6185888))

(assert (= (and b!6185083 ((_ is Union!16121) (reg!16450 (regOne!32755 r!7292)))) b!6185889))

(declare-fun condSetEmpty!41944 () Bool)

(assert (=> setNonEmpty!41938 (= condSetEmpty!41944 (= setRest!41938 ((as const (Array Context!11010 Bool)) false)))))

(declare-fun setRes!41944 () Bool)

(assert (=> setNonEmpty!41938 (= tp!1726579 setRes!41944)))

(declare-fun setIsEmpty!41944 () Bool)

(assert (=> setIsEmpty!41944 setRes!41944))

(declare-fun e!3767474 () Bool)

(declare-fun tp!1726662 () Bool)

(declare-fun setNonEmpty!41944 () Bool)

(declare-fun setElem!41944 () Context!11010)

(assert (=> setNonEmpty!41944 (= setRes!41944 (and tp!1726662 (inv!83549 setElem!41944) e!3767474))))

(declare-fun setRest!41944 () (InoxSet Context!11010))

(assert (=> setNonEmpty!41944 (= setRest!41938 ((_ map or) (store ((as const (Array Context!11010 Bool)) false) setElem!41944 true) setRest!41944))))

(declare-fun b!6185892 () Bool)

(declare-fun tp!1726663 () Bool)

(assert (=> b!6185892 (= e!3767474 tp!1726663)))

(assert (= (and setNonEmpty!41938 condSetEmpty!41944) setIsEmpty!41944))

(assert (= (and setNonEmpty!41938 (not condSetEmpty!41944)) setNonEmpty!41944))

(assert (= setNonEmpty!41944 b!6185892))

(declare-fun m!7020800 () Bool)

(assert (=> setNonEmpty!41944 m!7020800))

(declare-fun b!6185893 () Bool)

(declare-fun e!3767475 () Bool)

(declare-fun tp!1726664 () Bool)

(declare-fun tp!1726665 () Bool)

(assert (=> b!6185893 (= e!3767475 (and tp!1726664 tp!1726665))))

(assert (=> b!6185116 (= tp!1726580 e!3767475)))

(assert (= (and b!6185116 ((_ is Cons!64538) (exprs!6005 setElem!41938))) b!6185893))

(declare-fun b!6185896 () Bool)

(declare-fun e!3767476 () Bool)

(declare-fun tp!1726669 () Bool)

(assert (=> b!6185896 (= e!3767476 tp!1726669)))

(declare-fun b!6185897 () Bool)

(declare-fun tp!1726668 () Bool)

(declare-fun tp!1726667 () Bool)

(assert (=> b!6185897 (= e!3767476 (and tp!1726668 tp!1726667))))

(declare-fun b!6185895 () Bool)

(declare-fun tp!1726666 () Bool)

(declare-fun tp!1726670 () Bool)

(assert (=> b!6185895 (= e!3767476 (and tp!1726666 tp!1726670))))

(declare-fun b!6185894 () Bool)

(assert (=> b!6185894 (= e!3767476 tp_is_empty!41495)))

(assert (=> b!6185108 (= tp!1726568 e!3767476)))

(assert (= (and b!6185108 ((_ is ElementMatch!16121) (regOne!32754 (regTwo!32754 r!7292)))) b!6185894))

(assert (= (and b!6185108 ((_ is Concat!24966) (regOne!32754 (regTwo!32754 r!7292)))) b!6185895))

(assert (= (and b!6185108 ((_ is Star!16121) (regOne!32754 (regTwo!32754 r!7292)))) b!6185896))

(assert (= (and b!6185108 ((_ is Union!16121) (regOne!32754 (regTwo!32754 r!7292)))) b!6185897))

(declare-fun b!6185900 () Bool)

(declare-fun e!3767477 () Bool)

(declare-fun tp!1726674 () Bool)

(assert (=> b!6185900 (= e!3767477 tp!1726674)))

(declare-fun b!6185901 () Bool)

(declare-fun tp!1726673 () Bool)

(declare-fun tp!1726672 () Bool)

(assert (=> b!6185901 (= e!3767477 (and tp!1726673 tp!1726672))))

(declare-fun b!6185899 () Bool)

(declare-fun tp!1726671 () Bool)

(declare-fun tp!1726675 () Bool)

(assert (=> b!6185899 (= e!3767477 (and tp!1726671 tp!1726675))))

(declare-fun b!6185898 () Bool)

(assert (=> b!6185898 (= e!3767477 tp_is_empty!41495)))

(assert (=> b!6185108 (= tp!1726572 e!3767477)))

(assert (= (and b!6185108 ((_ is ElementMatch!16121) (regTwo!32754 (regTwo!32754 r!7292)))) b!6185898))

(assert (= (and b!6185108 ((_ is Concat!24966) (regTwo!32754 (regTwo!32754 r!7292)))) b!6185899))

(assert (= (and b!6185108 ((_ is Star!16121) (regTwo!32754 (regTwo!32754 r!7292)))) b!6185900))

(assert (= (and b!6185108 ((_ is Union!16121) (regTwo!32754 (regTwo!32754 r!7292)))) b!6185901))

(declare-fun b!6185902 () Bool)

(declare-fun e!3767478 () Bool)

(declare-fun tp!1726676 () Bool)

(assert (=> b!6185902 (= e!3767478 (and tp_is_empty!41495 tp!1726676))))

(assert (=> b!6185093 (= tp!1726551 e!3767478)))

(assert (= (and b!6185093 ((_ is Cons!64540) (t!378172 (t!378172 s!2326)))) b!6185902))

(declare-fun b!6185903 () Bool)

(declare-fun e!3767479 () Bool)

(declare-fun tp!1726677 () Bool)

(declare-fun tp!1726678 () Bool)

(assert (=> b!6185903 (= e!3767479 (and tp!1726677 tp!1726678))))

(assert (=> b!6185124 (= tp!1726585 e!3767479)))

(assert (= (and b!6185124 ((_ is Cons!64538) (exprs!6005 (h!70987 (t!378171 zl!343))))) b!6185903))

(declare-fun b!6185906 () Bool)

(declare-fun e!3767480 () Bool)

(declare-fun tp!1726682 () Bool)

(assert (=> b!6185906 (= e!3767480 tp!1726682)))

(declare-fun b!6185907 () Bool)

(declare-fun tp!1726681 () Bool)

(declare-fun tp!1726680 () Bool)

(assert (=> b!6185907 (= e!3767480 (and tp!1726681 tp!1726680))))

(declare-fun b!6185905 () Bool)

(declare-fun tp!1726679 () Bool)

(declare-fun tp!1726683 () Bool)

(assert (=> b!6185905 (= e!3767480 (and tp!1726679 tp!1726683))))

(declare-fun b!6185904 () Bool)

(assert (=> b!6185904 (= e!3767480 tp_is_empty!41495)))

(assert (=> b!6185111 (= tp!1726573 e!3767480)))

(assert (= (and b!6185111 ((_ is ElementMatch!16121) (h!70986 (exprs!6005 setElem!41932)))) b!6185904))

(assert (= (and b!6185111 ((_ is Concat!24966) (h!70986 (exprs!6005 setElem!41932)))) b!6185905))

(assert (= (and b!6185111 ((_ is Star!16121) (h!70986 (exprs!6005 setElem!41932)))) b!6185906))

(assert (= (and b!6185111 ((_ is Union!16121) (h!70986 (exprs!6005 setElem!41932)))) b!6185907))

(declare-fun b!6185908 () Bool)

(declare-fun e!3767481 () Bool)

(declare-fun tp!1726684 () Bool)

(declare-fun tp!1726685 () Bool)

(assert (=> b!6185908 (= e!3767481 (and tp!1726684 tp!1726685))))

(assert (=> b!6185111 (= tp!1726574 e!3767481)))

(assert (= (and b!6185111 ((_ is Cons!64538) (t!378170 (exprs!6005 setElem!41932)))) b!6185908))

(declare-fun b!6185911 () Bool)

(declare-fun e!3767482 () Bool)

(declare-fun tp!1726689 () Bool)

(assert (=> b!6185911 (= e!3767482 tp!1726689)))

(declare-fun b!6185912 () Bool)

(declare-fun tp!1726688 () Bool)

(declare-fun tp!1726687 () Bool)

(assert (=> b!6185912 (= e!3767482 (and tp!1726688 tp!1726687))))

(declare-fun b!6185910 () Bool)

(declare-fun tp!1726686 () Bool)

(declare-fun tp!1726690 () Bool)

(assert (=> b!6185910 (= e!3767482 (and tp!1726686 tp!1726690))))

(declare-fun b!6185909 () Bool)

(assert (=> b!6185909 (= e!3767482 tp_is_empty!41495)))

(assert (=> b!6185100 (= tp!1726558 e!3767482)))

(assert (= (and b!6185100 ((_ is ElementMatch!16121) (regOne!32754 (reg!16450 r!7292)))) b!6185909))

(assert (= (and b!6185100 ((_ is Concat!24966) (regOne!32754 (reg!16450 r!7292)))) b!6185910))

(assert (= (and b!6185100 ((_ is Star!16121) (regOne!32754 (reg!16450 r!7292)))) b!6185911))

(assert (= (and b!6185100 ((_ is Union!16121) (regOne!32754 (reg!16450 r!7292)))) b!6185912))

(declare-fun b!6185915 () Bool)

(declare-fun e!3767483 () Bool)

(declare-fun tp!1726694 () Bool)

(assert (=> b!6185915 (= e!3767483 tp!1726694)))

(declare-fun b!6185916 () Bool)

(declare-fun tp!1726693 () Bool)

(declare-fun tp!1726692 () Bool)

(assert (=> b!6185916 (= e!3767483 (and tp!1726693 tp!1726692))))

(declare-fun b!6185914 () Bool)

(declare-fun tp!1726691 () Bool)

(declare-fun tp!1726695 () Bool)

(assert (=> b!6185914 (= e!3767483 (and tp!1726691 tp!1726695))))

(declare-fun b!6185913 () Bool)

(assert (=> b!6185913 (= e!3767483 tp_is_empty!41495)))

(assert (=> b!6185100 (= tp!1726562 e!3767483)))

(assert (= (and b!6185100 ((_ is ElementMatch!16121) (regTwo!32754 (reg!16450 r!7292)))) b!6185913))

(assert (= (and b!6185100 ((_ is Concat!24966) (regTwo!32754 (reg!16450 r!7292)))) b!6185914))

(assert (= (and b!6185100 ((_ is Star!16121) (regTwo!32754 (reg!16450 r!7292)))) b!6185915))

(assert (= (and b!6185100 ((_ is Union!16121) (regTwo!32754 (reg!16450 r!7292)))) b!6185916))

(declare-fun b!6185928 () Bool)

(declare-fun e!3767491 () Bool)

(declare-fun tp!1726699 () Bool)

(assert (=> b!6185928 (= e!3767491 tp!1726699)))

(declare-fun b!6185929 () Bool)

(declare-fun tp!1726698 () Bool)

(declare-fun tp!1726697 () Bool)

(assert (=> b!6185929 (= e!3767491 (and tp!1726698 tp!1726697))))

(declare-fun b!6185927 () Bool)

(declare-fun tp!1726696 () Bool)

(declare-fun tp!1726700 () Bool)

(assert (=> b!6185927 (= e!3767491 (and tp!1726696 tp!1726700))))

(declare-fun b!6185926 () Bool)

(assert (=> b!6185926 (= e!3767491 tp_is_empty!41495)))

(assert (=> b!6185109 (= tp!1726571 e!3767491)))

(assert (= (and b!6185109 ((_ is ElementMatch!16121) (reg!16450 (regTwo!32754 r!7292)))) b!6185926))

(assert (= (and b!6185109 ((_ is Concat!24966) (reg!16450 (regTwo!32754 r!7292)))) b!6185927))

(assert (= (and b!6185109 ((_ is Star!16121) (reg!16450 (regTwo!32754 r!7292)))) b!6185928))

(assert (= (and b!6185109 ((_ is Union!16121) (reg!16450 (regTwo!32754 r!7292)))) b!6185929))

(declare-fun b!6185932 () Bool)

(declare-fun e!3767492 () Bool)

(declare-fun tp!1726704 () Bool)

(assert (=> b!6185932 (= e!3767492 tp!1726704)))

(declare-fun b!6185933 () Bool)

(declare-fun tp!1726703 () Bool)

(declare-fun tp!1726702 () Bool)

(assert (=> b!6185933 (= e!3767492 (and tp!1726703 tp!1726702))))

(declare-fun b!6185931 () Bool)

(declare-fun tp!1726701 () Bool)

(declare-fun tp!1726705 () Bool)

(assert (=> b!6185931 (= e!3767492 (and tp!1726701 tp!1726705))))

(declare-fun b!6185930 () Bool)

(assert (=> b!6185930 (= e!3767492 tp_is_empty!41495)))

(assert (=> b!6185086 (= tp!1726544 e!3767492)))

(assert (= (and b!6185086 ((_ is ElementMatch!16121) (regOne!32754 (regTwo!32755 r!7292)))) b!6185930))

(assert (= (and b!6185086 ((_ is Concat!24966) (regOne!32754 (regTwo!32755 r!7292)))) b!6185931))

(assert (= (and b!6185086 ((_ is Star!16121) (regOne!32754 (regTwo!32755 r!7292)))) b!6185932))

(assert (= (and b!6185086 ((_ is Union!16121) (regOne!32754 (regTwo!32755 r!7292)))) b!6185933))

(declare-fun b!6185936 () Bool)

(declare-fun e!3767493 () Bool)

(declare-fun tp!1726709 () Bool)

(assert (=> b!6185936 (= e!3767493 tp!1726709)))

(declare-fun b!6185937 () Bool)

(declare-fun tp!1726708 () Bool)

(declare-fun tp!1726707 () Bool)

(assert (=> b!6185937 (= e!3767493 (and tp!1726708 tp!1726707))))

(declare-fun b!6185935 () Bool)

(declare-fun tp!1726706 () Bool)

(declare-fun tp!1726710 () Bool)

(assert (=> b!6185935 (= e!3767493 (and tp!1726706 tp!1726710))))

(declare-fun b!6185934 () Bool)

(assert (=> b!6185934 (= e!3767493 tp_is_empty!41495)))

(assert (=> b!6185086 (= tp!1726548 e!3767493)))

(assert (= (and b!6185086 ((_ is ElementMatch!16121) (regTwo!32754 (regTwo!32755 r!7292)))) b!6185934))

(assert (= (and b!6185086 ((_ is Concat!24966) (regTwo!32754 (regTwo!32755 r!7292)))) b!6185935))

(assert (= (and b!6185086 ((_ is Star!16121) (regTwo!32754 (regTwo!32755 r!7292)))) b!6185936))

(assert (= (and b!6185086 ((_ is Union!16121) (regTwo!32754 (regTwo!32755 r!7292)))) b!6185937))

(declare-fun b!6185940 () Bool)

(declare-fun e!3767494 () Bool)

(declare-fun tp!1726714 () Bool)

(assert (=> b!6185940 (= e!3767494 tp!1726714)))

(declare-fun b!6185941 () Bool)

(declare-fun tp!1726713 () Bool)

(declare-fun tp!1726712 () Bool)

(assert (=> b!6185941 (= e!3767494 (and tp!1726713 tp!1726712))))

(declare-fun b!6185939 () Bool)

(declare-fun tp!1726711 () Bool)

(declare-fun tp!1726715 () Bool)

(assert (=> b!6185939 (= e!3767494 (and tp!1726711 tp!1726715))))

(declare-fun b!6185938 () Bool)

(assert (=> b!6185938 (= e!3767494 tp_is_empty!41495)))

(assert (=> b!6185110 (= tp!1726570 e!3767494)))

(assert (= (and b!6185110 ((_ is ElementMatch!16121) (regOne!32755 (regTwo!32754 r!7292)))) b!6185938))

(assert (= (and b!6185110 ((_ is Concat!24966) (regOne!32755 (regTwo!32754 r!7292)))) b!6185939))

(assert (= (and b!6185110 ((_ is Star!16121) (regOne!32755 (regTwo!32754 r!7292)))) b!6185940))

(assert (= (and b!6185110 ((_ is Union!16121) (regOne!32755 (regTwo!32754 r!7292)))) b!6185941))

(declare-fun b!6185944 () Bool)

(declare-fun e!3767495 () Bool)

(declare-fun tp!1726719 () Bool)

(assert (=> b!6185944 (= e!3767495 tp!1726719)))

(declare-fun b!6185945 () Bool)

(declare-fun tp!1726718 () Bool)

(declare-fun tp!1726717 () Bool)

(assert (=> b!6185945 (= e!3767495 (and tp!1726718 tp!1726717))))

(declare-fun b!6185943 () Bool)

(declare-fun tp!1726716 () Bool)

(declare-fun tp!1726720 () Bool)

(assert (=> b!6185943 (= e!3767495 (and tp!1726716 tp!1726720))))

(declare-fun b!6185942 () Bool)

(assert (=> b!6185942 (= e!3767495 tp_is_empty!41495)))

(assert (=> b!6185110 (= tp!1726569 e!3767495)))

(assert (= (and b!6185110 ((_ is ElementMatch!16121) (regTwo!32755 (regTwo!32754 r!7292)))) b!6185942))

(assert (= (and b!6185110 ((_ is Concat!24966) (regTwo!32755 (regTwo!32754 r!7292)))) b!6185943))

(assert (= (and b!6185110 ((_ is Star!16121) (regTwo!32755 (regTwo!32754 r!7292)))) b!6185944))

(assert (= (and b!6185110 ((_ is Union!16121) (regTwo!32755 (regTwo!32754 r!7292)))) b!6185945))

(declare-fun b!6185948 () Bool)

(declare-fun e!3767496 () Bool)

(declare-fun tp!1726724 () Bool)

(assert (=> b!6185948 (= e!3767496 tp!1726724)))

(declare-fun b!6185949 () Bool)

(declare-fun tp!1726723 () Bool)

(declare-fun tp!1726722 () Bool)

(assert (=> b!6185949 (= e!3767496 (and tp!1726723 tp!1726722))))

(declare-fun b!6185947 () Bool)

(declare-fun tp!1726721 () Bool)

(declare-fun tp!1726725 () Bool)

(assert (=> b!6185947 (= e!3767496 (and tp!1726721 tp!1726725))))

(declare-fun b!6185946 () Bool)

(assert (=> b!6185946 (= e!3767496 tp_is_empty!41495)))

(assert (=> b!6185087 (= tp!1726547 e!3767496)))

(assert (= (and b!6185087 ((_ is ElementMatch!16121) (reg!16450 (regTwo!32755 r!7292)))) b!6185946))

(assert (= (and b!6185087 ((_ is Concat!24966) (reg!16450 (regTwo!32755 r!7292)))) b!6185947))

(assert (= (and b!6185087 ((_ is Star!16121) (reg!16450 (regTwo!32755 r!7292)))) b!6185948))

(assert (= (and b!6185087 ((_ is Union!16121) (reg!16450 (regTwo!32755 r!7292)))) b!6185949))

(declare-fun b!6185952 () Bool)

(declare-fun e!3767497 () Bool)

(declare-fun tp!1726729 () Bool)

(assert (=> b!6185952 (= e!3767497 tp!1726729)))

(declare-fun b!6185953 () Bool)

(declare-fun tp!1726728 () Bool)

(declare-fun tp!1726727 () Bool)

(assert (=> b!6185953 (= e!3767497 (and tp!1726728 tp!1726727))))

(declare-fun b!6185951 () Bool)

(declare-fun tp!1726726 () Bool)

(declare-fun tp!1726730 () Bool)

(assert (=> b!6185951 (= e!3767497 (and tp!1726726 tp!1726730))))

(declare-fun b!6185950 () Bool)

(assert (=> b!6185950 (= e!3767497 tp_is_empty!41495)))

(assert (=> b!6185101 (= tp!1726561 e!3767497)))

(assert (= (and b!6185101 ((_ is ElementMatch!16121) (reg!16450 (reg!16450 r!7292)))) b!6185950))

(assert (= (and b!6185101 ((_ is Concat!24966) (reg!16450 (reg!16450 r!7292)))) b!6185951))

(assert (= (and b!6185101 ((_ is Star!16121) (reg!16450 (reg!16450 r!7292)))) b!6185952))

(assert (= (and b!6185101 ((_ is Union!16121) (reg!16450 (reg!16450 r!7292)))) b!6185953))

(declare-fun b!6185966 () Bool)

(declare-fun e!3767504 () Bool)

(declare-fun tp!1726734 () Bool)

(assert (=> b!6185966 (= e!3767504 tp!1726734)))

(declare-fun b!6185967 () Bool)

(declare-fun tp!1726733 () Bool)

(declare-fun tp!1726732 () Bool)

(assert (=> b!6185967 (= e!3767504 (and tp!1726733 tp!1726732))))

(declare-fun b!6185965 () Bool)

(declare-fun tp!1726731 () Bool)

(declare-fun tp!1726735 () Bool)

(assert (=> b!6185965 (= e!3767504 (and tp!1726731 tp!1726735))))

(declare-fun b!6185964 () Bool)

(assert (=> b!6185964 (= e!3767504 tp_is_empty!41495)))

(assert (=> b!6185102 (= tp!1726560 e!3767504)))

(assert (= (and b!6185102 ((_ is ElementMatch!16121) (regOne!32755 (reg!16450 r!7292)))) b!6185964))

(assert (= (and b!6185102 ((_ is Concat!24966) (regOne!32755 (reg!16450 r!7292)))) b!6185965))

(assert (= (and b!6185102 ((_ is Star!16121) (regOne!32755 (reg!16450 r!7292)))) b!6185966))

(assert (= (and b!6185102 ((_ is Union!16121) (regOne!32755 (reg!16450 r!7292)))) b!6185967))

(declare-fun b!6185970 () Bool)

(declare-fun e!3767505 () Bool)

(declare-fun tp!1726739 () Bool)

(assert (=> b!6185970 (= e!3767505 tp!1726739)))

(declare-fun b!6185971 () Bool)

(declare-fun tp!1726738 () Bool)

(declare-fun tp!1726737 () Bool)

(assert (=> b!6185971 (= e!3767505 (and tp!1726738 tp!1726737))))

(declare-fun b!6185969 () Bool)

(declare-fun tp!1726736 () Bool)

(declare-fun tp!1726740 () Bool)

(assert (=> b!6185969 (= e!3767505 (and tp!1726736 tp!1726740))))

(declare-fun b!6185968 () Bool)

(assert (=> b!6185968 (= e!3767505 tp_is_empty!41495)))

(assert (=> b!6185102 (= tp!1726559 e!3767505)))

(assert (= (and b!6185102 ((_ is ElementMatch!16121) (regTwo!32755 (reg!16450 r!7292)))) b!6185968))

(assert (= (and b!6185102 ((_ is Concat!24966) (regTwo!32755 (reg!16450 r!7292)))) b!6185969))

(assert (= (and b!6185102 ((_ is Star!16121) (regTwo!32755 (reg!16450 r!7292)))) b!6185970))

(assert (= (and b!6185102 ((_ is Union!16121) (regTwo!32755 (reg!16450 r!7292)))) b!6185971))

(declare-fun b!6185973 () Bool)

(declare-fun e!3767507 () Bool)

(declare-fun tp!1726741 () Bool)

(assert (=> b!6185973 (= e!3767507 tp!1726741)))

(declare-fun e!3767506 () Bool)

(declare-fun tp!1726742 () Bool)

(declare-fun b!6185972 () Bool)

(assert (=> b!6185972 (= e!3767506 (and (inv!83549 (h!70987 (t!378171 (t!378171 zl!343)))) e!3767507 tp!1726742))))

(assert (=> b!6185123 (= tp!1726586 e!3767506)))

(assert (= b!6185972 b!6185973))

(assert (= (and b!6185123 ((_ is Cons!64539) (t!378171 (t!378171 zl!343)))) b!6185972))

(declare-fun m!7020810 () Bool)

(assert (=> b!6185972 m!7020810))

(declare-fun b!6185976 () Bool)

(declare-fun e!3767508 () Bool)

(declare-fun tp!1726746 () Bool)

(assert (=> b!6185976 (= e!3767508 tp!1726746)))

(declare-fun b!6185977 () Bool)

(declare-fun tp!1726745 () Bool)

(declare-fun tp!1726744 () Bool)

(assert (=> b!6185977 (= e!3767508 (and tp!1726745 tp!1726744))))

(declare-fun b!6185975 () Bool)

(declare-fun tp!1726743 () Bool)

(declare-fun tp!1726747 () Bool)

(assert (=> b!6185975 (= e!3767508 (and tp!1726743 tp!1726747))))

(declare-fun b!6185974 () Bool)

(assert (=> b!6185974 (= e!3767508 tp_is_empty!41495)))

(assert (=> b!6185088 (= tp!1726546 e!3767508)))

(assert (= (and b!6185088 ((_ is ElementMatch!16121) (regOne!32755 (regTwo!32755 r!7292)))) b!6185974))

(assert (= (and b!6185088 ((_ is Concat!24966) (regOne!32755 (regTwo!32755 r!7292)))) b!6185975))

(assert (= (and b!6185088 ((_ is Star!16121) (regOne!32755 (regTwo!32755 r!7292)))) b!6185976))

(assert (= (and b!6185088 ((_ is Union!16121) (regOne!32755 (regTwo!32755 r!7292)))) b!6185977))

(declare-fun b!6185980 () Bool)

(declare-fun e!3767509 () Bool)

(declare-fun tp!1726751 () Bool)

(assert (=> b!6185980 (= e!3767509 tp!1726751)))

(declare-fun b!6185981 () Bool)

(declare-fun tp!1726750 () Bool)

(declare-fun tp!1726749 () Bool)

(assert (=> b!6185981 (= e!3767509 (and tp!1726750 tp!1726749))))

(declare-fun b!6185979 () Bool)

(declare-fun tp!1726748 () Bool)

(declare-fun tp!1726752 () Bool)

(assert (=> b!6185979 (= e!3767509 (and tp!1726748 tp!1726752))))

(declare-fun b!6185978 () Bool)

(assert (=> b!6185978 (= e!3767509 tp_is_empty!41495)))

(assert (=> b!6185088 (= tp!1726545 e!3767509)))

(assert (= (and b!6185088 ((_ is ElementMatch!16121) (regTwo!32755 (regTwo!32755 r!7292)))) b!6185978))

(assert (= (and b!6185088 ((_ is Concat!24966) (regTwo!32755 (regTwo!32755 r!7292)))) b!6185979))

(assert (= (and b!6185088 ((_ is Star!16121) (regTwo!32755 (regTwo!32755 r!7292)))) b!6185980))

(assert (= (and b!6185088 ((_ is Union!16121) (regTwo!32755 (regTwo!32755 r!7292)))) b!6185981))

(declare-fun b_lambda!235389 () Bool)

(assert (= b_lambda!235371 (or d!1939000 b_lambda!235389)))

(declare-fun bs!1534773 () Bool)

(declare-fun d!1939478 () Bool)

(assert (= bs!1534773 (and d!1939478 d!1939000)))

(assert (=> bs!1534773 (= (dynLambda!25453 lambda!337637 (h!70986 (exprs!6005 setElem!41932))) (validRegex!7857 (h!70986 (exprs!6005 setElem!41932))))))

(declare-fun m!7020812 () Bool)

(assert (=> bs!1534773 m!7020812))

(assert (=> b!6185343 d!1939478))

(declare-fun b_lambda!235391 () Bool)

(assert (= b_lambda!235379 (or b!6184187 b_lambda!235391)))

(assert (=> d!1939358 d!1939064))

(declare-fun b_lambda!235393 () Bool)

(assert (= b_lambda!235377 (or d!1939028 b_lambda!235393)))

(declare-fun bs!1534774 () Bool)

(declare-fun d!1939480 () Bool)

(assert (= bs!1534774 (and d!1939480 d!1939028)))

(assert (=> bs!1534774 (= (dynLambda!25453 lambda!337639 (h!70986 (exprs!6005 (h!70987 zl!343)))) (validRegex!7857 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(declare-fun m!7020814 () Bool)

(assert (=> bs!1534774 m!7020814))

(assert (=> b!6185592 d!1939480))

(declare-fun b_lambda!235395 () Bool)

(assert (= b_lambda!235369 (or b!6184187 b_lambda!235395)))

(assert (=> d!1939174 d!1939066))

(declare-fun b_lambda!235397 () Bool)

(assert (= b_lambda!235373 (or d!1939030 b_lambda!235397)))

(declare-fun bs!1534775 () Bool)

(declare-fun d!1939482 () Bool)

(assert (= bs!1534775 (and d!1939482 d!1939030)))

(assert (=> bs!1534775 (= (dynLambda!25453 lambda!337642 (h!70986 (unfocusZipperList!1542 zl!343))) (validRegex!7857 (h!70986 (unfocusZipperList!1542 zl!343))))))

(declare-fun m!7020816 () Bool)

(assert (=> bs!1534775 m!7020816))

(assert (=> b!6185476 d!1939482))

(declare-fun b_lambda!235399 () Bool)

(assert (= b_lambda!235383 (or b!6184187 b_lambda!235399)))

(assert (=> d!1939442 d!1939062))

(declare-fun b_lambda!235401 () Bool)

(assert (= b_lambda!235375 (or d!1938996 b_lambda!235401)))

(declare-fun bs!1534776 () Bool)

(declare-fun d!1939484 () Bool)

(assert (= bs!1534776 (and d!1939484 d!1938996)))

(assert (=> bs!1534776 (= (dynLambda!25453 lambda!337633 (h!70986 lt!2339252)) (validRegex!7857 (h!70986 lt!2339252)))))

(declare-fun m!7020818 () Bool)

(assert (=> bs!1534776 m!7020818))

(assert (=> b!6185487 d!1939484))

(declare-fun b_lambda!235403 () Bool)

(assert (= b_lambda!235365 (or d!1938998 b_lambda!235403)))

(declare-fun bs!1534777 () Bool)

(declare-fun d!1939486 () Bool)

(assert (= bs!1534777 (and d!1939486 d!1938998)))

(assert (=> bs!1534777 (= (dynLambda!25453 lambda!337634 (h!70986 lt!2339241)) (validRegex!7857 (h!70986 lt!2339241)))))

(declare-fun m!7020820 () Bool)

(assert (=> bs!1534777 m!7020820))

(assert (=> b!6185138 d!1939486))

(declare-fun b_lambda!235405 () Bool)

(assert (= b_lambda!235381 (or d!1939002 b_lambda!235405)))

(declare-fun bs!1534778 () Bool)

(declare-fun d!1939488 () Bool)

(assert (= bs!1534778 (and d!1939488 d!1939002)))

(assert (=> bs!1534778 (= (dynLambda!25453 lambda!337638 (h!70986 (exprs!6005 (h!70987 zl!343)))) (validRegex!7857 (h!70986 (exprs!6005 (h!70987 zl!343)))))))

(assert (=> bs!1534778 m!7020814))

(assert (=> b!6185699 d!1939488))

(declare-fun b_lambda!235407 () Bool)

(assert (= b_lambda!235367 (or d!1939032 b_lambda!235407)))

(declare-fun bs!1534779 () Bool)

(declare-fun d!1939490 () Bool)

(assert (= bs!1534779 (and d!1939490 d!1939032)))

(assert (=> bs!1534779 (= (dynLambda!25453 lambda!337645 (h!70986 lt!2339380)) (validRegex!7857 (h!70986 lt!2339380)))))

(declare-fun m!7020822 () Bool)

(assert (=> bs!1534779 m!7020822))

(assert (=> b!6185306 d!1939490))

(check-sat (not bm!517029) (not d!1939300) (not b!6185368) (not b!6185412) (not b!6185945) (not d!1939222) (not bm!516931) (not bm!516983) (not b!6185933) (not b!6185272) (not bm!516924) (not b!6185754) (not bm!516910) (not b!6185262) (not b!6185154) (not b!6185443) (not bm!517060) (not b!6185141) (not b!6185144) (not b!6185298) (not b!6185305) (not d!1939132) (not b!6185793) (not b!6185342) (not b!6185932) (not b!6185766) (not d!1939226) (not d!1939154) (not b!6185307) (not bm!516897) (not b!6185566) (not d!1939084) (not bm!516936) (not d!1939420) (not b!6185730) (not b!6185981) (not b!6185370) (not b!6185608) (not bm!516977) (not b!6185155) (not d!1939264) (not b!6185161) (not b!6185366) (not b!6185157) (not d!1939438) (not b!6185875) (not bm!516912) (not b!6185264) (not b!6185376) (not b!6185684) (not b!6185549) (not b!6185584) (not b_lambda!235407) (not d!1939136) (not b!6185596) (not bm!517055) (not b!6185373) (not b!6185693) (not bm!517051) (not d!1939210) (not b!6185977) (not b_lambda!235389) (not d!1939356) (not b!6185322) (not bm!516942) (not b!6185372) (not b!6185492) (not b!6185864) (not b!6185301) (not b!6185880) (not d!1939234) (not b!6185707) (not b!6185695) (not b!6185477) (not b_lambda!235395) (not b!6185949) (not b!6185899) (not bm!517011) (not b!6185356) (not d!1939326) (not bm!516993) (not b!6185750) (not b!6185868) (not b!6185445) (not b!6185844) (not bm!516939) (not bm!516941) (not b!6185488) (not d!1939296) (not bm!516981) (not b!6185265) (not d!1939414) (not d!1939272) (not b!6185940) (not b!6185617) (not d!1939214) (not b!6185202) (not d!1939450) (not bm!517056) (not b!6185573) (not b!6185951) (not d!1939180) (not bm!517028) (not d!1939100) (not bm!517035) (not d!1939202) (not d!1939094) (not b!6185196) (not b!6185210) (not d!1939238) (not b!6185967) (not b!6185231) (not b!6185369) (not b!6185927) (not b!6185640) (not b!6185510) (not b!6185710) (not b!6185931) (not b!6185451) (not d!1939426) (not d!1939448) (not b_lambda!235399) (not bm!516928) (not b!6185462) (not b!6185569) (not b!6185698) (not b!6185970) (not b!6185151) (not b!6185358) (not d!1939254) (not b!6185912) (not b!6185139) tp_is_empty!41495 (not b!6185965) (not bm!517040) (not b!6185460) (not d!1939080) (not b!6185150) (not b!6185329) (not b!6185901) (not b!6185286) (not b!6185643) (not bm!516918) (not b!6185296) (not b!6185297) (not b!6185855) (not b!6185465) (not bm!516946) (not b!6185326) (not bm!516969) (not b!6185847) (not b!6185883) (not b!6185504) (not b!6185876) (not bm!517046) (not bm!517027) (not b!6185367) (not bm!516948) (not b!6185316) (not b!6185507) (not b!6185464) (not bm!516937) (not b!6185928) (not bm!516965) (not bm!516943) (not b!6185857) (not b_lambda!235405) (not b!6185779) (not d!1939072) (not b!6185257) (not b!6185489) (not d!1939134) (not d!1939086) (not bm!516929) (not b!6185916) (not b!6185914) (not b!6185225) (not b!6185900) (not b!6185479) (not d!1939460) (not b!6185506) (not bm!516952) (not b!6185700) (not bm!516963) (not bm!516917) (not bm!516896) (not b!6185214) (not b!6185621) (not bm!516945) (not b!6185728) (not d!1939088) (not b!6185911) (not bm!516988) (not b!6185935) (not b!6185362) (not b_lambda!235403) (not b!6185941) (not d!1939116) (not bm!516927) (not b!6185285) (not b!6185563) (not bm!516923) (not b!6185872) (not b!6185792) (not bm!516958) (not b!6185737) (not setNonEmpty!41941) (not b!6185288) (not b!6185856) (not b!6185505) (not b!6185902) (not b!6185944) (not b!6185350) (not b!6185879) (not b!6185873) (not b!6185915) (not b_lambda!235391) (not bs!1534775) (not b!6185895) (not d!1939424) (not b!6185749) (not bm!516911) (not bm!516980) (not b!6185447) (not b!6185755) (not d!1939208) (not bm!516919) (not b!6185732) (not b!6185704) (not b!6185256) (not d!1939462) (not d!1939350) (not d!1939266) (not b!6185943) (not d!1939442) (not d!1939206) (not bm!516899) (not b!6185302) (not d!1939174) (not d!1939398) (not b!6185145) (not b!6185299) (not bm!517018) (not bm!517026) (not bm!516959) (not d!1939248) (not b!6185319) (not d!1939098) (not b!6185208) (not b!6185848) (not b!6185846) (not b!6185466) (not d!1939330) (not b!6185971) (not bm!517039) (not b!6185973) (not bm!516949) (not d!1939236) (not b!6185253) (not d!1939396) (not bm!516994) (not b!6185871) (not d!1939370) (not bm!516956) (not b!6185315) (not bm!516976) (not b!6185863) (not bm!516964) (not b!6185888) (not d!1939150) (not b!6185273) (not b!6185351) (not bm!516989) (not b!6185887) (not b!6185726) (not setNonEmpty!41944) (not b!6185344) (not d!1939164) (not b!6185162) (not b!6185282) (not b!6185979) (not b!6185266) (not bm!517017) (not b!6185593) (not d!1939284) (not b!6185259) (not bs!1534773) (not b!6185908) (not b!6185947) (not b!6185218) (not d!1939126) (not bs!1534779) (not b_lambda!235361) (not bm!516984) (not bs!1534778) (not b!6185706) (not b!6185502) (not b!6185169) (not b!6185625) (not b!6185969) (not b!6185327) (not b!6185764) (not bm!516978) (not b!6185975) (not b_lambda!235393) (not bm!516953) (not b!6185494) (not bm!517000) (not b!6185618) (not bs!1534777) (not d!1939078) (not d!1939194) (not b!6185147) (not b!6185434) (not b!6185884) (not b!6185972) (not bm!517025) (not bm!517045) (not bm!516913) (not bm!517012) (not b!6185893) (not d!1939090) (not b!6185352) (not bm!517041) (not b!6185575) (not b!6185854) (not b!6185860) (not d!1939172) (not b!6185490) (not d!1939204) (not bm!516916) (not bm!517004) (not b!6185752) (not d!1939184) (not b!6185455) (not d!1939160) (not b!6185869) (not d!1939124) (not setNonEmpty!41943) (not b!6185827) (not b!6185308) (not bm!516999) (not b!6185142) (not bm!517034) (not b!6185714) (not d!1939176) (not b!6185861) (not b!6185149) (not d!1939246) (not b!6185523) (not b!6185865) (not b!6185843) (not d!1939360) (not b!6185897) (not b!6185830) (not b!6185448) (not bm!516971) (not b!6185318) (not b!6185323) (not b!6185543) (not d!1939166) (not b!6185414) (not b!6185341) (not b!6185809) (not b_lambda!235397) (not b!6185896) (not b!6185751) (not b!6185320) (not d!1939092) (not b!6185545) (not d!1939390) (not bm!517016) (not d!1939366) (not b!6185867) (not d!1939416) (not b!6185623) (not d!1939122) (not d!1939292) (not b!6185310) (not setNonEmpty!41942) (not bm!516940) (not d!1939142) (not d!1939358) (not bm!516975) (not b!6185929) (not b_lambda!235363) (not b!6185508) (not b!6185953) (not b!6185200) (not b!6185509) (not b!6185980) (not d!1939192) (not b!6185565) (not d!1939118) (not b!6185206) (not b!6185937) (not bs!1534776) (not b!6185534) (not bm!517047) (not bm!516970) (not bs!1534774) (not b!6185889) (not b!6185906) (not b!6185354) (not b!6185260) (not b!6185561) (not b!6185910) (not b!6185877) (not b!6185905) (not b!6185702) (not b!6185798) (not d!1939140) (not b!6185317) (not b_lambda!235359) (not b!6185468) (not b!6185948) (not b!6185281) (not b!6185234) (not b!6185620) (not b!6185976) (not b!6185662) (not d!1939190) (not b!6185885) (not b!6185417) (not b!6185842) (not d!1939256) (not b!6185165) (not b!6185359) (not bm!516955) (not b!6185939) (not b!6185503) (not b!6185252) (not b!6185936) (not b!6185735) (not b!6185952) (not d!1939336) (not b!6185622) (not b!6185966) (not b!6185903) (not b!6185892) (not b!6185881) (not b!6185312) (not b!6185146) (not d!1939158) (not d!1939290) (not bm!516990) (not b!6185907) (not bm!516925) (not b!6185859) (not d!1939120) (not b!6185159) (not b!6185126) (not b!6185280) (not d!1939274) (not bm!516950) (not b_lambda!235401) (not bm!516938) (not b!6185211) (not bm!517030) (not d!1939104) (not d!1939282))
(check-sat)
