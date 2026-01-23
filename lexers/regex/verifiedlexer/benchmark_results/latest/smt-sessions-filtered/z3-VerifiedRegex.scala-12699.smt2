; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702148 () Bool)

(assert start!702148)

(declare-fun b!7234066 () Bool)

(assert (=> b!7234066 true))

(declare-fun b!7234065 () Bool)

(declare-fun e!4336823 () Bool)

(declare-fun e!4336821 () Bool)

(assert (=> b!7234065 (= e!4336823 e!4336821)))

(declare-fun res!2934842 () Bool)

(assert (=> b!7234065 (=> res!2934842 e!4336821)))

(declare-datatypes ((C!37288 0))(
  ( (C!37289 (val!28592 Int)) )
))
(declare-datatypes ((Regex!18507 0))(
  ( (ElementMatch!18507 (c!1342437 C!37288)) (Concat!27352 (regOne!37526 Regex!18507) (regTwo!37526 Regex!18507)) (EmptyExpr!18507) (Star!18507 (reg!18836 Regex!18507)) (EmptyLang!18507) (Union!18507 (regOne!37527 Regex!18507) (regTwo!37527 Regex!18507)) )
))
(declare-datatypes ((List!70129 0))(
  ( (Nil!70005) (Cons!70005 (h!76453 Regex!18507) (t!384180 List!70129)) )
))
(declare-datatypes ((Context!14894 0))(
  ( (Context!14895 (exprs!7947 List!70129)) )
))
(declare-fun ct1!232 () Context!14894)

(declare-fun isEmpty!40348 (List!70129) Bool)

(assert (=> b!7234065 (= res!2934842 (isEmpty!40348 (exprs!7947 ct1!232)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2574427 () (InoxSet Context!14894))

(declare-datatypes ((List!70130 0))(
  ( (Nil!70006) (Cons!70006 (h!76454 C!37288) (t!384181 List!70130)) )
))
(declare-fun s1!1971 () List!70130)

(declare-fun derivationStepZipperUp!2381 (Context!14894 C!37288) (InoxSet Context!14894))

(assert (=> b!7234065 (= lt!2574427 (derivationStepZipperUp!2381 ct1!232 (h!76454 s1!1971)))))

(declare-fun lambda!439828 () Int)

(declare-datatypes ((Unit!163552 0))(
  ( (Unit!163553) )
))
(declare-fun lt!2574426 () Unit!163552)

(declare-fun ct2!328 () Context!14894)

(declare-fun lt!2574422 () Context!14894)

(declare-fun lemmaConcatPreservesForall!1316 (List!70129 List!70129 Int) Unit!163552)

(assert (=> b!7234065 (= lt!2574426 (lemmaConcatPreservesForall!1316 (exprs!7947 lt!2574422) (exprs!7947 ct2!328) lambda!439828))))

(declare-fun s2!1849 () List!70130)

(declare-fun matchZipper!3417 ((InoxSet Context!14894) List!70130) Bool)

(declare-fun ++!16314 (List!70129 List!70129) List!70129)

(declare-fun ++!16315 (List!70130 List!70130) List!70130)

(assert (=> b!7234065 (matchZipper!3417 (store ((as const (Array Context!14894 Bool)) false) (Context!14895 (++!16314 (exprs!7947 lt!2574422) (exprs!7947 ct2!328))) true) (++!16315 (t!384181 s1!1971) s2!1849))))

(declare-fun lt!2574424 () Unit!163552)

(assert (=> b!7234065 (= lt!2574424 (lemmaConcatPreservesForall!1316 (exprs!7947 lt!2574422) (exprs!7947 ct2!328) lambda!439828))))

(declare-fun lt!2574428 () Unit!163552)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!298 (Context!14894 Context!14894 List!70130 List!70130) Unit!163552)

(assert (=> b!7234065 (= lt!2574428 (lemmaConcatenateContextMatchesConcatOfStrings!298 lt!2574422 ct2!328 (t!384181 s1!1971) s2!1849))))

(declare-fun lt!2574425 () (InoxSet Context!14894))

(declare-fun lambda!439829 () Int)

(declare-fun getWitness!2032 ((InoxSet Context!14894) Int) Context!14894)

(assert (=> b!7234065 (= lt!2574422 (getWitness!2032 lt!2574425 lambda!439829))))

(declare-fun res!2934841 () Bool)

(declare-fun e!4336819 () Bool)

(assert (=> start!702148 (=> (not res!2934841) (not e!4336819))))

(declare-fun lt!2574421 () (InoxSet Context!14894))

(assert (=> start!702148 (= res!2934841 (matchZipper!3417 lt!2574421 s1!1971))))

(assert (=> start!702148 (= lt!2574421 (store ((as const (Array Context!14894 Bool)) false) ct1!232 true))))

(assert (=> start!702148 e!4336819))

(declare-fun e!4336828 () Bool)

(declare-fun inv!89277 (Context!14894) Bool)

(assert (=> start!702148 (and (inv!89277 ct1!232) e!4336828)))

(declare-fun e!4336824 () Bool)

(assert (=> start!702148 e!4336824))

(declare-fun e!4336827 () Bool)

(assert (=> start!702148 e!4336827))

(declare-fun e!4336825 () Bool)

(assert (=> start!702148 (and (inv!89277 ct2!328) e!4336825)))

(declare-fun e!4336826 () Bool)

(assert (=> b!7234066 (= e!4336826 (not e!4336823))))

(declare-fun res!2934846 () Bool)

(assert (=> b!7234066 (=> res!2934846 e!4336823)))

(declare-fun exists!4157 ((InoxSet Context!14894) Int) Bool)

(assert (=> b!7234066 (= res!2934846 (not (exists!4157 lt!2574425 lambda!439829)))))

(declare-datatypes ((List!70131 0))(
  ( (Nil!70007) (Cons!70007 (h!76455 Context!14894) (t!384182 List!70131)) )
))
(declare-fun lt!2574417 () List!70131)

(declare-fun exists!4158 (List!70131 Int) Bool)

(assert (=> b!7234066 (exists!4158 lt!2574417 lambda!439829)))

(declare-fun lt!2574420 () Unit!163552)

(declare-fun lemmaZipperMatchesExistsMatchingContext!650 (List!70131 List!70130) Unit!163552)

(assert (=> b!7234066 (= lt!2574420 (lemmaZipperMatchesExistsMatchingContext!650 lt!2574417 (t!384181 s1!1971)))))

(declare-fun toList!11364 ((InoxSet Context!14894)) List!70131)

(assert (=> b!7234066 (= lt!2574417 (toList!11364 lt!2574425))))

(declare-fun b!7234067 () Bool)

(declare-fun e!4336822 () Bool)

(assert (=> b!7234067 (= e!4336822 true)))

(declare-fun lt!2574429 () List!70129)

(declare-fun lt!2574419 () (InoxSet Context!14894))

(declare-fun derivationStepZipperDown!2551 (Regex!18507 Context!14894 C!37288) (InoxSet Context!14894))

(declare-fun tail!14134 (List!70129) List!70129)

(assert (=> b!7234067 (= lt!2574419 (derivationStepZipperDown!2551 (h!76453 (exprs!7947 ct1!232)) (Context!14895 (tail!14134 lt!2574429)) (h!76454 s1!1971)))))

(declare-fun b!7234068 () Bool)

(assert (=> b!7234068 (= e!4336821 e!4336822)))

(declare-fun res!2934844 () Bool)

(assert (=> b!7234068 (=> res!2934844 e!4336822)))

(assert (=> b!7234068 (= res!2934844 (isEmpty!40348 lt!2574429))))

(declare-fun lt!2574423 () Unit!163552)

(assert (=> b!7234068 (= lt!2574423 (lemmaConcatPreservesForall!1316 (exprs!7947 ct1!232) (exprs!7947 ct2!328) lambda!439828))))

(declare-fun lt!2574414 () (InoxSet Context!14894))

(assert (=> b!7234068 (= lt!2574414 (derivationStepZipperUp!2381 (Context!14895 lt!2574429) (h!76454 s1!1971)))))

(declare-fun lt!2574418 () Unit!163552)

(assert (=> b!7234068 (= lt!2574418 (lemmaConcatPreservesForall!1316 (exprs!7947 ct1!232) (exprs!7947 ct2!328) lambda!439828))))

(declare-fun lt!2574415 () (InoxSet Context!14894))

(assert (=> b!7234068 (= lt!2574415 (derivationStepZipperDown!2551 (h!76453 (exprs!7947 ct1!232)) (Context!14895 (tail!14134 (exprs!7947 ct1!232))) (h!76454 s1!1971)))))

(declare-fun b!7234069 () Bool)

(declare-fun tp_is_empty!46479 () Bool)

(declare-fun tp!2034287 () Bool)

(assert (=> b!7234069 (= e!4336827 (and tp_is_empty!46479 tp!2034287))))

(declare-fun b!7234070 () Bool)

(declare-fun res!2934845 () Bool)

(assert (=> b!7234070 (=> (not res!2934845) (not e!4336819))))

(assert (=> b!7234070 (= res!2934845 (matchZipper!3417 (store ((as const (Array Context!14894 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7234071 () Bool)

(declare-fun e!4336820 () Bool)

(assert (=> b!7234071 (= e!4336819 e!4336820)))

(declare-fun res!2934840 () Bool)

(assert (=> b!7234071 (=> (not res!2934840) (not e!4336820))))

(get-info :version)

(assert (=> b!7234071 (= res!2934840 (and (not ((_ is Nil!70005) (exprs!7947 ct1!232))) ((_ is Cons!70006) s1!1971)))))

(assert (=> b!7234071 (= lt!2574429 (++!16314 (exprs!7947 ct1!232) (exprs!7947 ct2!328)))))

(declare-fun lt!2574416 () Unit!163552)

(assert (=> b!7234071 (= lt!2574416 (lemmaConcatPreservesForall!1316 (exprs!7947 ct1!232) (exprs!7947 ct2!328) lambda!439828))))

(declare-fun b!7234072 () Bool)

(assert (=> b!7234072 (= e!4336820 e!4336826)))

(declare-fun res!2934843 () Bool)

(assert (=> b!7234072 (=> (not res!2934843) (not e!4336826))))

(assert (=> b!7234072 (= res!2934843 (matchZipper!3417 lt!2574425 (t!384181 s1!1971)))))

(declare-fun derivationStepZipper!3299 ((InoxSet Context!14894) C!37288) (InoxSet Context!14894))

(assert (=> b!7234072 (= lt!2574425 (derivationStepZipper!3299 lt!2574421 (h!76454 s1!1971)))))

(declare-fun b!7234073 () Bool)

(declare-fun tp!2034286 () Bool)

(assert (=> b!7234073 (= e!4336825 tp!2034286)))

(declare-fun b!7234074 () Bool)

(declare-fun tp!2034288 () Bool)

(assert (=> b!7234074 (= e!4336824 (and tp_is_empty!46479 tp!2034288))))

(declare-fun b!7234075 () Bool)

(declare-fun tp!2034285 () Bool)

(assert (=> b!7234075 (= e!4336828 tp!2034285)))

(assert (= (and start!702148 res!2934841) b!7234070))

(assert (= (and b!7234070 res!2934845) b!7234071))

(assert (= (and b!7234071 res!2934840) b!7234072))

(assert (= (and b!7234072 res!2934843) b!7234066))

(assert (= (and b!7234066 (not res!2934846)) b!7234065))

(assert (= (and b!7234065 (not res!2934842)) b!7234068))

(assert (= (and b!7234068 (not res!2934844)) b!7234067))

(assert (= start!702148 b!7234075))

(assert (= (and start!702148 ((_ is Cons!70006) s1!1971)) b!7234074))

(assert (= (and start!702148 ((_ is Cons!70006) s2!1849)) b!7234069))

(assert (= start!702148 b!7234073))

(declare-fun m!7903930 () Bool)

(assert (=> start!702148 m!7903930))

(declare-fun m!7903932 () Bool)

(assert (=> start!702148 m!7903932))

(declare-fun m!7903934 () Bool)

(assert (=> start!702148 m!7903934))

(declare-fun m!7903936 () Bool)

(assert (=> start!702148 m!7903936))

(declare-fun m!7903938 () Bool)

(assert (=> b!7234068 m!7903938))

(declare-fun m!7903940 () Bool)

(assert (=> b!7234068 m!7903940))

(declare-fun m!7903942 () Bool)

(assert (=> b!7234068 m!7903942))

(declare-fun m!7903944 () Bool)

(assert (=> b!7234068 m!7903944))

(declare-fun m!7903946 () Bool)

(assert (=> b!7234068 m!7903946))

(assert (=> b!7234068 m!7903938))

(declare-fun m!7903948 () Bool)

(assert (=> b!7234066 m!7903948))

(declare-fun m!7903950 () Bool)

(assert (=> b!7234066 m!7903950))

(declare-fun m!7903952 () Bool)

(assert (=> b!7234066 m!7903952))

(declare-fun m!7903954 () Bool)

(assert (=> b!7234066 m!7903954))

(declare-fun m!7903956 () Bool)

(assert (=> b!7234071 m!7903956))

(assert (=> b!7234071 m!7903938))

(declare-fun m!7903958 () Bool)

(assert (=> b!7234065 m!7903958))

(declare-fun m!7903960 () Bool)

(assert (=> b!7234065 m!7903960))

(declare-fun m!7903962 () Bool)

(assert (=> b!7234065 m!7903962))

(declare-fun m!7903964 () Bool)

(assert (=> b!7234065 m!7903964))

(declare-fun m!7903966 () Bool)

(assert (=> b!7234065 m!7903966))

(assert (=> b!7234065 m!7903958))

(assert (=> b!7234065 m!7903964))

(declare-fun m!7903968 () Bool)

(assert (=> b!7234065 m!7903968))

(declare-fun m!7903970 () Bool)

(assert (=> b!7234065 m!7903970))

(declare-fun m!7903972 () Bool)

(assert (=> b!7234065 m!7903972))

(assert (=> b!7234065 m!7903972))

(declare-fun m!7903974 () Bool)

(assert (=> b!7234065 m!7903974))

(declare-fun m!7903976 () Bool)

(assert (=> b!7234072 m!7903976))

(declare-fun m!7903978 () Bool)

(assert (=> b!7234072 m!7903978))

(declare-fun m!7903980 () Bool)

(assert (=> b!7234070 m!7903980))

(assert (=> b!7234070 m!7903980))

(declare-fun m!7903982 () Bool)

(assert (=> b!7234070 m!7903982))

(declare-fun m!7903984 () Bool)

(assert (=> b!7234067 m!7903984))

(declare-fun m!7903986 () Bool)

(assert (=> b!7234067 m!7903986))

(check-sat (not b!7234070) (not b!7234071) (not b!7234069) (not b!7234068) tp_is_empty!46479 (not b!7234072) (not b!7234065) (not b!7234066) (not b!7234067) (not b!7234073) (not b!7234074) (not b!7234075) (not start!702148))
(check-sat)
