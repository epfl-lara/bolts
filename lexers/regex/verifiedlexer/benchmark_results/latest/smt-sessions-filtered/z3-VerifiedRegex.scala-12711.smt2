; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702832 () Bool)

(assert start!702832)

(declare-fun b!7237431 () Bool)

(assert (=> b!7237431 true))

(declare-fun b!7237424 () Bool)

(assert (=> b!7237424 true))

(declare-fun b!7237423 () Bool)

(declare-fun e!4338993 () Bool)

(declare-fun e!4338985 () Bool)

(assert (=> b!7237423 (= e!4338993 e!4338985)))

(declare-fun res!2936142 () Bool)

(assert (=> b!7237423 (=> res!2936142 e!4338985)))

(declare-datatypes ((C!37336 0))(
  ( (C!37337 (val!28616 Int)) )
))
(declare-datatypes ((Regex!18531 0))(
  ( (ElementMatch!18531 (c!1343463 C!37336)) (Concat!27376 (regOne!37574 Regex!18531) (regTwo!37574 Regex!18531)) (EmptyExpr!18531) (Star!18531 (reg!18860 Regex!18531)) (EmptyLang!18531) (Union!18531 (regOne!37575 Regex!18531) (regTwo!37575 Regex!18531)) )
))
(declare-datatypes ((List!70201 0))(
  ( (Nil!70077) (Cons!70077 (h!76525 Regex!18531) (t!384252 List!70201)) )
))
(declare-datatypes ((Context!14942 0))(
  ( (Context!14943 (exprs!7971 List!70201)) )
))
(declare-fun ct1!232 () Context!14942)

(declare-fun isEmpty!40388 (List!70201) Bool)

(assert (=> b!7237423 (= res!2936142 (isEmpty!40388 (exprs!7971 ct1!232)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2576627 () (InoxSet Context!14942))

(declare-datatypes ((List!70202 0))(
  ( (Nil!70078) (Cons!70078 (h!76526 C!37336) (t!384253 List!70202)) )
))
(declare-fun s1!1971 () List!70202)

(declare-fun derivationStepZipperUp!2405 (Context!14942 C!37336) (InoxSet Context!14942))

(assert (=> b!7237423 (= lt!2576627 (derivationStepZipperUp!2405 ct1!232 (h!76526 s1!1971)))))

(declare-fun lt!2576637 () Context!14942)

(declare-fun lambda!440725 () Int)

(declare-fun ct2!328 () Context!14942)

(declare-datatypes ((Unit!163600 0))(
  ( (Unit!163601) )
))
(declare-fun lt!2576631 () Unit!163600)

(declare-fun lemmaConcatPreservesForall!1340 (List!70201 List!70201 Int) Unit!163600)

(assert (=> b!7237423 (= lt!2576631 (lemmaConcatPreservesForall!1340 (exprs!7971 lt!2576637) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun lt!2576644 () List!70201)

(declare-fun lt!2576647 () List!70202)

(declare-fun matchZipper!3441 ((InoxSet Context!14942) List!70202) Bool)

(assert (=> b!7237423 (matchZipper!3441 (store ((as const (Array Context!14942 Bool)) false) (Context!14943 lt!2576644) true) lt!2576647)))

(declare-fun s2!1849 () List!70202)

(declare-fun ++!16362 (List!70202 List!70202) List!70202)

(assert (=> b!7237423 (= lt!2576647 (++!16362 (t!384253 s1!1971) s2!1849))))

(declare-fun ++!16363 (List!70201 List!70201) List!70201)

(assert (=> b!7237423 (= lt!2576644 (++!16363 (exprs!7971 lt!2576637) (exprs!7971 ct2!328)))))

(declare-fun lt!2576646 () Unit!163600)

(assert (=> b!7237423 (= lt!2576646 (lemmaConcatPreservesForall!1340 (exprs!7971 lt!2576637) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun lt!2576648 () Unit!163600)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!322 (Context!14942 Context!14942 List!70202 List!70202) Unit!163600)

(assert (=> b!7237423 (= lt!2576648 (lemmaConcatenateContextMatchesConcatOfStrings!322 lt!2576637 ct2!328 (t!384253 s1!1971) s2!1849))))

(declare-fun lt!2576623 () (InoxSet Context!14942))

(declare-fun lambda!440726 () Int)

(declare-fun getWitness!2072 ((InoxSet Context!14942) Int) Context!14942)

(assert (=> b!7237423 (= lt!2576637 (getWitness!2072 lt!2576623 lambda!440726))))

(declare-fun e!4338997 () Bool)

(declare-fun e!4338984 () Bool)

(assert (=> b!7237424 (= e!4338997 e!4338984)))

(declare-fun res!2936152 () Bool)

(assert (=> b!7237424 (=> res!2936152 e!4338984)))

(declare-fun nullable!7844 (Regex!18531) Bool)

(assert (=> b!7237424 (= res!2936152 (not (nullable!7844 (h!76525 (exprs!7971 ct1!232)))))))

(declare-fun lambda!440727 () Int)

(declare-fun lt!2576639 () (InoxSet Context!14942))

(declare-fun lt!2576632 () Context!14942)

(declare-fun flatMap!2735 ((InoxSet Context!14942) Int) (InoxSet Context!14942))

(assert (=> b!7237424 (= (flatMap!2735 lt!2576639 lambda!440727) (derivationStepZipperUp!2405 lt!2576632 (h!76526 s1!1971)))))

(declare-fun lt!2576621 () Unit!163600)

(declare-fun lemmaFlatMapOnSingletonSet!2162 ((InoxSet Context!14942) Context!14942 Int) Unit!163600)

(assert (=> b!7237424 (= lt!2576621 (lemmaFlatMapOnSingletonSet!2162 lt!2576639 lt!2576632 lambda!440727))))

(declare-fun lt!2576634 () Unit!163600)

(assert (=> b!7237424 (= lt!2576634 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun lt!2576618 () (InoxSet Context!14942))

(assert (=> b!7237424 (= (flatMap!2735 lt!2576618 lambda!440727) (derivationStepZipperUp!2405 ct1!232 (h!76526 s1!1971)))))

(declare-fun lt!2576640 () Unit!163600)

(assert (=> b!7237424 (= lt!2576640 (lemmaFlatMapOnSingletonSet!2162 lt!2576618 ct1!232 lambda!440727))))

(declare-fun lt!2576649 () (InoxSet Context!14942))

(declare-fun lt!2576626 () Context!14942)

(declare-fun derivationStepZipperDown!2575 (Regex!18531 Context!14942 C!37336) (InoxSet Context!14942))

(assert (=> b!7237424 (= lt!2576649 (derivationStepZipperDown!2575 (h!76525 (exprs!7971 ct1!232)) lt!2576626 (h!76526 s1!1971)))))

(declare-fun lt!2576636 () List!70201)

(declare-fun tail!14174 (List!70201) List!70201)

(assert (=> b!7237424 (= lt!2576626 (Context!14943 (tail!14174 lt!2576636)))))

(declare-fun b!7237425 () Bool)

(declare-fun e!4338995 () Bool)

(declare-fun lt!2576638 () (InoxSet Context!14942))

(assert (=> b!7237425 (= e!4338995 (matchZipper!3441 lt!2576638 (t!384253 s1!1971)))))

(declare-fun b!7237426 () Bool)

(declare-fun e!4338994 () Bool)

(declare-fun e!4338987 () Bool)

(assert (=> b!7237426 (= e!4338994 e!4338987)))

(declare-fun res!2936149 () Bool)

(assert (=> b!7237426 (=> (not res!2936149) (not e!4338987))))

(assert (=> b!7237426 (= res!2936149 (matchZipper!3441 lt!2576623 (t!384253 s1!1971)))))

(declare-fun derivationStepZipper!3323 ((InoxSet Context!14942) C!37336) (InoxSet Context!14942))

(assert (=> b!7237426 (= lt!2576623 (derivationStepZipper!3323 lt!2576618 (h!76526 s1!1971)))))

(declare-fun b!7237427 () Bool)

(declare-fun e!4338996 () Bool)

(declare-fun tp!2034766 () Bool)

(assert (=> b!7237427 (= e!4338996 tp!2034766)))

(declare-fun b!7237428 () Bool)

(declare-fun e!4338991 () Bool)

(declare-fun e!4338989 () Bool)

(assert (=> b!7237428 (= e!4338991 e!4338989)))

(declare-fun res!2936151 () Bool)

(assert (=> b!7237428 (=> res!2936151 e!4338989)))

(declare-fun lt!2576641 () (InoxSet Context!14942))

(declare-fun lt!2576624 () (InoxSet Context!14942))

(assert (=> b!7237428 (= res!2936151 (not (= lt!2576641 lt!2576624)))))

(declare-fun lt!2576651 () (InoxSet Context!14942))

(assert (=> b!7237428 (= lt!2576624 ((_ map or) lt!2576649 lt!2576651))))

(assert (=> b!7237428 (= lt!2576651 (derivationStepZipperUp!2405 lt!2576626 (h!76526 s1!1971)))))

(declare-fun lt!2576635 () Unit!163600)

(assert (=> b!7237428 (= lt!2576635 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun b!7237429 () Bool)

(declare-fun e!4338992 () Bool)

(declare-fun tp_is_empty!46527 () Bool)

(declare-fun tp!2034767 () Bool)

(assert (=> b!7237429 (= e!4338992 (and tp_is_empty!46527 tp!2034767))))

(declare-fun b!7237430 () Bool)

(assert (=> b!7237430 (= e!4338985 e!4338997)))

(declare-fun res!2936141 () Bool)

(assert (=> b!7237430 (=> res!2936141 e!4338997)))

(assert (=> b!7237430 (= res!2936141 (isEmpty!40388 lt!2576636))))

(declare-fun lt!2576643 () Unit!163600)

(assert (=> b!7237430 (= lt!2576643 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(assert (=> b!7237430 (= lt!2576641 (derivationStepZipperUp!2405 lt!2576632 (h!76526 s1!1971)))))

(declare-fun lt!2576630 () Unit!163600)

(assert (=> b!7237430 (= lt!2576630 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun lt!2576620 () Context!14942)

(declare-fun lt!2576628 () (InoxSet Context!14942))

(assert (=> b!7237430 (= lt!2576628 (derivationStepZipperDown!2575 (h!76525 (exprs!7971 ct1!232)) lt!2576620 (h!76526 s1!1971)))))

(assert (=> b!7237430 (= lt!2576620 (Context!14943 (tail!14174 (exprs!7971 ct1!232))))))

(assert (=> b!7237431 (= e!4338987 (not e!4338993))))

(declare-fun res!2936140 () Bool)

(assert (=> b!7237431 (=> res!2936140 e!4338993)))

(declare-fun exists!4205 ((InoxSet Context!14942) Int) Bool)

(assert (=> b!7237431 (= res!2936140 (not (exists!4205 lt!2576623 lambda!440726)))))

(declare-datatypes ((List!70203 0))(
  ( (Nil!70079) (Cons!70079 (h!76527 Context!14942) (t!384254 List!70203)) )
))
(declare-fun lt!2576629 () List!70203)

(declare-fun exists!4206 (List!70203 Int) Bool)

(assert (=> b!7237431 (exists!4206 lt!2576629 lambda!440726)))

(declare-fun lt!2576622 () Unit!163600)

(declare-fun lemmaZipperMatchesExistsMatchingContext!674 (List!70203 List!70202) Unit!163600)

(assert (=> b!7237431 (= lt!2576622 (lemmaZipperMatchesExistsMatchingContext!674 lt!2576629 (t!384253 s1!1971)))))

(declare-fun toList!11388 ((InoxSet Context!14942)) List!70203)

(assert (=> b!7237431 (= lt!2576629 (toList!11388 lt!2576623))))

(declare-fun b!7237432 () Bool)

(declare-fun e!4338998 () Bool)

(assert (=> b!7237432 (= e!4338998 e!4338994)))

(declare-fun res!2936144 () Bool)

(assert (=> b!7237432 (=> (not res!2936144) (not e!4338994))))

(get-info :version)

(assert (=> b!7237432 (= res!2936144 (and (not ((_ is Nil!70077) (exprs!7971 ct1!232))) ((_ is Cons!70078) s1!1971)))))

(assert (=> b!7237432 (= lt!2576639 (store ((as const (Array Context!14942 Bool)) false) lt!2576632 true))))

(assert (=> b!7237432 (= lt!2576632 (Context!14943 lt!2576636))))

(assert (=> b!7237432 (= lt!2576636 (++!16363 (exprs!7971 ct1!232) (exprs!7971 ct2!328)))))

(declare-fun lt!2576642 () Unit!163600)

(assert (=> b!7237432 (= lt!2576642 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(declare-fun b!7237433 () Bool)

(assert (=> b!7237433 (= e!4338984 e!4338991)))

(declare-fun res!2936150 () Bool)

(assert (=> b!7237433 (=> res!2936150 e!4338991)))

(declare-fun lt!2576645 () (InoxSet Context!14942))

(assert (=> b!7237433 (= res!2936150 (or (not (= lt!2576627 lt!2576645)) (not (= lt!2576623 lt!2576627))))))

(assert (=> b!7237433 (= lt!2576645 ((_ map or) lt!2576628 lt!2576638))))

(assert (=> b!7237433 (= lt!2576638 (derivationStepZipperUp!2405 lt!2576620 (h!76526 s1!1971)))))

(declare-fun b!7237434 () Bool)

(declare-fun lt!2576650 () Bool)

(assert (=> b!7237434 (= e!4338989 (or lt!2576650 (not (= (exprs!7971 ct1!232) Nil!70077))))))

(declare-fun e!4338986 () Bool)

(assert (=> b!7237434 (= (matchZipper!3441 lt!2576624 lt!2576647) e!4338986)))

(declare-fun res!2936148 () Bool)

(assert (=> b!7237434 (=> res!2936148 e!4338986)))

(assert (=> b!7237434 (= res!2936148 (matchZipper!3441 lt!2576649 lt!2576647))))

(declare-fun lt!2576633 () Unit!163600)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1678 ((InoxSet Context!14942) (InoxSet Context!14942) List!70202) Unit!163600)

(assert (=> b!7237434 (= lt!2576633 (lemmaZipperConcatMatchesSameAsBothZippers!1678 lt!2576649 lt!2576651 lt!2576647))))

(declare-fun lt!2576625 () Unit!163600)

(assert (=> b!7237434 (= lt!2576625 (lemmaConcatPreservesForall!1340 (exprs!7971 ct1!232) (exprs!7971 ct2!328) lambda!440725))))

(assert (=> b!7237434 (= (matchZipper!3441 lt!2576645 (t!384253 s1!1971)) e!4338995)))

(declare-fun res!2936147 () Bool)

(assert (=> b!7237434 (=> res!2936147 e!4338995)))

(assert (=> b!7237434 (= res!2936147 lt!2576650)))

(assert (=> b!7237434 (= lt!2576650 (matchZipper!3441 lt!2576628 (t!384253 s1!1971)))))

(declare-fun lt!2576619 () Unit!163600)

(assert (=> b!7237434 (= lt!2576619 (lemmaZipperConcatMatchesSameAsBothZippers!1678 lt!2576628 lt!2576638 (t!384253 s1!1971)))))

(declare-fun b!7237435 () Bool)

(declare-fun res!2936146 () Bool)

(assert (=> b!7237435 (=> (not res!2936146) (not e!4338998))))

(assert (=> b!7237435 (= res!2936146 (matchZipper!3441 (store ((as const (Array Context!14942 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7237436 () Bool)

(assert (=> b!7237436 (= e!4338986 (matchZipper!3441 lt!2576651 lt!2576647))))

(declare-fun b!7237437 () Bool)

(declare-fun res!2936143 () Bool)

(assert (=> b!7237437 (=> res!2936143 e!4338989)))

(assert (=> b!7237437 (= res!2936143 (not (= (derivationStepZipper!3323 lt!2576639 (h!76526 s1!1971)) lt!2576641)))))

(declare-fun res!2936145 () Bool)

(assert (=> start!702832 (=> (not res!2936145) (not e!4338998))))

(assert (=> start!702832 (= res!2936145 (matchZipper!3441 lt!2576618 s1!1971))))

(assert (=> start!702832 (= lt!2576618 (store ((as const (Array Context!14942 Bool)) false) ct1!232 true))))

(assert (=> start!702832 e!4338998))

(declare-fun e!4338990 () Bool)

(declare-fun inv!89337 (Context!14942) Bool)

(assert (=> start!702832 (and (inv!89337 ct1!232) e!4338990)))

(declare-fun e!4338988 () Bool)

(assert (=> start!702832 e!4338988))

(assert (=> start!702832 e!4338992))

(assert (=> start!702832 (and (inv!89337 ct2!328) e!4338996)))

(declare-fun b!7237438 () Bool)

(declare-fun tp!2034768 () Bool)

(assert (=> b!7237438 (= e!4338990 tp!2034768)))

(declare-fun b!7237439 () Bool)

(declare-fun tp!2034765 () Bool)

(assert (=> b!7237439 (= e!4338988 (and tp_is_empty!46527 tp!2034765))))

(assert (= (and start!702832 res!2936145) b!7237435))

(assert (= (and b!7237435 res!2936146) b!7237432))

(assert (= (and b!7237432 res!2936144) b!7237426))

(assert (= (and b!7237426 res!2936149) b!7237431))

(assert (= (and b!7237431 (not res!2936140)) b!7237423))

(assert (= (and b!7237423 (not res!2936142)) b!7237430))

(assert (= (and b!7237430 (not res!2936141)) b!7237424))

(assert (= (and b!7237424 (not res!2936152)) b!7237433))

(assert (= (and b!7237433 (not res!2936150)) b!7237428))

(assert (= (and b!7237428 (not res!2936151)) b!7237437))

(assert (= (and b!7237437 (not res!2936143)) b!7237434))

(assert (= (and b!7237434 (not res!2936147)) b!7237425))

(assert (= (and b!7237434 (not res!2936148)) b!7237436))

(assert (= start!702832 b!7237438))

(assert (= (and start!702832 ((_ is Cons!70078) s1!1971)) b!7237439))

(assert (= (and start!702832 ((_ is Cons!70078) s2!1849)) b!7237429))

(assert (= start!702832 b!7237427))

(declare-fun m!7908972 () Bool)

(assert (=> b!7237424 m!7908972))

(declare-fun m!7908974 () Bool)

(assert (=> b!7237424 m!7908974))

(declare-fun m!7908976 () Bool)

(assert (=> b!7237424 m!7908976))

(declare-fun m!7908978 () Bool)

(assert (=> b!7237424 m!7908978))

(declare-fun m!7908980 () Bool)

(assert (=> b!7237424 m!7908980))

(declare-fun m!7908982 () Bool)

(assert (=> b!7237424 m!7908982))

(declare-fun m!7908984 () Bool)

(assert (=> b!7237424 m!7908984))

(declare-fun m!7908986 () Bool)

(assert (=> b!7237424 m!7908986))

(declare-fun m!7908988 () Bool)

(assert (=> b!7237424 m!7908988))

(declare-fun m!7908990 () Bool)

(assert (=> b!7237424 m!7908990))

(declare-fun m!7908992 () Bool)

(assert (=> b!7237435 m!7908992))

(assert (=> b!7237435 m!7908992))

(declare-fun m!7908994 () Bool)

(assert (=> b!7237435 m!7908994))

(declare-fun m!7908996 () Bool)

(assert (=> b!7237433 m!7908996))

(declare-fun m!7908998 () Bool)

(assert (=> b!7237425 m!7908998))

(declare-fun m!7909000 () Bool)

(assert (=> b!7237426 m!7909000))

(declare-fun m!7909002 () Bool)

(assert (=> b!7237426 m!7909002))

(declare-fun m!7909004 () Bool)

(assert (=> b!7237430 m!7909004))

(assert (=> b!7237430 m!7908984))

(declare-fun m!7909006 () Bool)

(assert (=> b!7237430 m!7909006))

(assert (=> b!7237430 m!7908984))

(declare-fun m!7909008 () Bool)

(assert (=> b!7237430 m!7909008))

(assert (=> b!7237430 m!7908990))

(declare-fun m!7909010 () Bool)

(assert (=> start!702832 m!7909010))

(declare-fun m!7909012 () Bool)

(assert (=> start!702832 m!7909012))

(declare-fun m!7909014 () Bool)

(assert (=> start!702832 m!7909014))

(declare-fun m!7909016 () Bool)

(assert (=> start!702832 m!7909016))

(declare-fun m!7909018 () Bool)

(assert (=> b!7237436 m!7909018))

(declare-fun m!7909020 () Bool)

(assert (=> b!7237423 m!7909020))

(declare-fun m!7909022 () Bool)

(assert (=> b!7237423 m!7909022))

(declare-fun m!7909024 () Bool)

(assert (=> b!7237423 m!7909024))

(declare-fun m!7909026 () Bool)

(assert (=> b!7237423 m!7909026))

(declare-fun m!7909028 () Bool)

(assert (=> b!7237423 m!7909028))

(declare-fun m!7909030 () Bool)

(assert (=> b!7237423 m!7909030))

(declare-fun m!7909032 () Bool)

(assert (=> b!7237423 m!7909032))

(declare-fun m!7909034 () Bool)

(assert (=> b!7237423 m!7909034))

(assert (=> b!7237423 m!7909034))

(assert (=> b!7237423 m!7909026))

(assert (=> b!7237423 m!7908982))

(declare-fun m!7909036 () Bool)

(assert (=> b!7237432 m!7909036))

(declare-fun m!7909038 () Bool)

(assert (=> b!7237432 m!7909038))

(assert (=> b!7237432 m!7908984))

(declare-fun m!7909040 () Bool)

(assert (=> b!7237431 m!7909040))

(declare-fun m!7909042 () Bool)

(assert (=> b!7237431 m!7909042))

(declare-fun m!7909044 () Bool)

(assert (=> b!7237431 m!7909044))

(declare-fun m!7909046 () Bool)

(assert (=> b!7237431 m!7909046))

(declare-fun m!7909048 () Bool)

(assert (=> b!7237428 m!7909048))

(assert (=> b!7237428 m!7908984))

(declare-fun m!7909050 () Bool)

(assert (=> b!7237437 m!7909050))

(declare-fun m!7909052 () Bool)

(assert (=> b!7237434 m!7909052))

(declare-fun m!7909054 () Bool)

(assert (=> b!7237434 m!7909054))

(declare-fun m!7909056 () Bool)

(assert (=> b!7237434 m!7909056))

(declare-fun m!7909058 () Bool)

(assert (=> b!7237434 m!7909058))

(assert (=> b!7237434 m!7908984))

(declare-fun m!7909060 () Bool)

(assert (=> b!7237434 m!7909060))

(declare-fun m!7909062 () Bool)

(assert (=> b!7237434 m!7909062))

(check-sat (not b!7237426) (not b!7237427) (not b!7237430) (not b!7237433) (not b!7237435) (not b!7237434) (not b!7237436) (not b!7237432) (not b!7237423) (not b!7237437) (not b!7237439) tp_is_empty!46527 (not b!7237424) (not b!7237425) (not start!702832) (not b!7237438) (not b!7237428) (not b!7237431) (not b!7237429))
(check-sat)
