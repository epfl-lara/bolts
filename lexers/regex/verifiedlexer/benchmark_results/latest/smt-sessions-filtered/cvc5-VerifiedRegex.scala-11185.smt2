; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!582918 () Bool)

(assert start!582918)

(declare-fun b!5626270 () Bool)

(assert (=> b!5626270 true))

(assert (=> b!5626270 true))

(declare-fun lambda!302196 () Int)

(declare-fun lambda!302195 () Int)

(assert (=> b!5626270 (not (= lambda!302196 lambda!302195))))

(assert (=> b!5626270 true))

(assert (=> b!5626270 true))

(declare-fun b!5626263 () Bool)

(assert (=> b!5626263 true))

(declare-fun b!5626259 () Bool)

(declare-fun e!3467976 () Bool)

(declare-fun tp!1557733 () Bool)

(assert (=> b!5626259 (= e!3467976 tp!1557733)))

(declare-fun b!5626260 () Bool)

(declare-fun tp_is_empty!40485 () Bool)

(assert (=> b!5626260 (= e!3467976 tp_is_empty!40485)))

(declare-fun b!5626261 () Bool)

(declare-fun res!2382901 () Bool)

(declare-fun e!3467985 () Bool)

(assert (=> b!5626261 (=> res!2382901 e!3467985)))

(declare-datatypes ((C!31502 0))(
  ( (C!31503 (val!25453 Int)) )
))
(declare-datatypes ((Regex!15616 0))(
  ( (ElementMatch!15616 (c!987668 C!31502)) (Concat!24461 (regOne!31744 Regex!15616) (regTwo!31744 Regex!15616)) (EmptyExpr!15616) (Star!15616 (reg!15945 Regex!15616)) (EmptyLang!15616) (Union!15616 (regOne!31745 Regex!15616) (regTwo!31745 Regex!15616)) )
))
(declare-fun r!7292 () Regex!15616)

(declare-datatypes ((List!63147 0))(
  ( (Nil!63023) (Cons!63023 (h!69471 Regex!15616) (t!376439 List!63147)) )
))
(declare-datatypes ((Context!10000 0))(
  ( (Context!10001 (exprs!5500 List!63147)) )
))
(declare-datatypes ((List!63148 0))(
  ( (Nil!63024) (Cons!63024 (h!69472 Context!10000) (t!376440 List!63148)) )
))
(declare-fun zl!343 () List!63148)

(declare-fun generalisedUnion!1479 (List!63147) Regex!15616)

(declare-fun unfocusZipperList!1044 (List!63148) List!63147)

(assert (=> b!5626261 (= res!2382901 (not (= r!7292 (generalisedUnion!1479 (unfocusZipperList!1044 zl!343)))))))

(declare-fun b!5626262 () Bool)

(declare-fun tp!1557736 () Bool)

(declare-fun tp!1557735 () Bool)

(assert (=> b!5626262 (= e!3467976 (and tp!1557736 tp!1557735))))

(declare-fun e!3467977 () Bool)

(declare-fun e!3467987 () Bool)

(assert (=> b!5626263 (= e!3467977 e!3467987)))

(declare-fun res!2382909 () Bool)

(assert (=> b!5626263 (=> res!2382909 e!3467987)))

(declare-datatypes ((List!63149 0))(
  ( (Nil!63025) (Cons!63025 (h!69473 C!31502) (t!376441 List!63149)) )
))
(declare-fun s!2326 () List!63149)

(assert (=> b!5626263 (= res!2382909 (or (and (is-ElementMatch!15616 (regOne!31744 r!7292)) (= (c!987668 (regOne!31744 r!7292)) (h!69473 s!2326))) (is-Union!15616 (regOne!31744 r!7292)) (not (is-Concat!24461 (regOne!31744 r!7292)))))))

(declare-datatypes ((Unit!155996 0))(
  ( (Unit!155997) )
))
(declare-fun lt!2261489 () Unit!155996)

(declare-fun e!3467984 () Unit!155996)

(assert (=> b!5626263 (= lt!2261489 e!3467984)))

(declare-fun c!987667 () Bool)

(declare-fun nullable!5648 (Regex!15616) Bool)

(assert (=> b!5626263 (= c!987667 (nullable!5648 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun z!1189 () (Set Context!10000))

(declare-fun lambda!302197 () Int)

(declare-fun flatMap!1229 ((Set Context!10000) Int) (Set Context!10000))

(declare-fun derivationStepZipperUp!884 (Context!10000 C!31502) (Set Context!10000))

(assert (=> b!5626263 (= (flatMap!1229 z!1189 lambda!302197) (derivationStepZipperUp!884 (h!69472 zl!343) (h!69473 s!2326)))))

(declare-fun lt!2261490 () Unit!155996)

(declare-fun lemmaFlatMapOnSingletonSet!761 ((Set Context!10000) Context!10000 Int) Unit!155996)

(assert (=> b!5626263 (= lt!2261490 (lemmaFlatMapOnSingletonSet!761 z!1189 (h!69472 zl!343) lambda!302197))))

(declare-fun lt!2261509 () (Set Context!10000))

(declare-fun lt!2261501 () Context!10000)

(assert (=> b!5626263 (= lt!2261509 (derivationStepZipperUp!884 lt!2261501 (h!69473 s!2326)))))

(declare-fun lt!2261487 () (Set Context!10000))

(declare-fun derivationStepZipperDown!958 (Regex!15616 Context!10000 C!31502) (Set Context!10000))

(assert (=> b!5626263 (= lt!2261487 (derivationStepZipperDown!958 (h!69471 (exprs!5500 (h!69472 zl!343))) lt!2261501 (h!69473 s!2326)))))

(assert (=> b!5626263 (= lt!2261501 (Context!10001 (t!376439 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun lt!2261508 () (Set Context!10000))

(assert (=> b!5626263 (= lt!2261508 (derivationStepZipperUp!884 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343))))) (h!69473 s!2326)))))

(declare-fun e!3467979 () Bool)

(declare-fun tp!1557734 () Bool)

(declare-fun e!3467988 () Bool)

(declare-fun b!5626264 () Bool)

(declare-fun inv!82288 (Context!10000) Bool)

(assert (=> b!5626264 (= e!3467988 (and (inv!82288 (h!69472 zl!343)) e!3467979 tp!1557734))))

(declare-fun setIsEmpty!37561 () Bool)

(declare-fun setRes!37561 () Bool)

(assert (=> setIsEmpty!37561 setRes!37561))

(declare-fun b!5626265 () Bool)

(declare-fun res!2382904 () Bool)

(assert (=> b!5626265 (=> res!2382904 e!3467985)))

(declare-fun generalisedConcat!1231 (List!63147) Regex!15616)

(assert (=> b!5626265 (= res!2382904 (not (= r!7292 (generalisedConcat!1231 (exprs!5500 (h!69472 zl!343))))))))

(declare-fun b!5626266 () Bool)

(declare-fun Unit!155998 () Unit!155996)

(assert (=> b!5626266 (= e!3467984 Unit!155998)))

(declare-fun b!5626267 () Bool)

(declare-fun res!2382906 () Bool)

(assert (=> b!5626267 (=> res!2382906 e!3467985)))

(assert (=> b!5626267 (= res!2382906 (or (is-EmptyExpr!15616 r!7292) (is-EmptyLang!15616 r!7292) (is-ElementMatch!15616 r!7292) (is-Union!15616 r!7292) (not (is-Concat!24461 r!7292))))))

(declare-fun b!5626268 () Bool)

(declare-fun res!2382902 () Bool)

(assert (=> b!5626268 (=> res!2382902 e!3467985)))

(declare-fun isEmpty!34856 (List!63148) Bool)

(assert (=> b!5626268 (= res!2382902 (not (isEmpty!34856 (t!376440 zl!343))))))

(declare-fun b!5626269 () Bool)

(declare-fun e!3467978 () Bool)

(declare-fun e!3467983 () Bool)

(assert (=> b!5626269 (= e!3467978 e!3467983)))

(declare-fun res!2382917 () Bool)

(assert (=> b!5626269 (=> res!2382917 e!3467983)))

(declare-fun lt!2261507 () (Set Context!10000))

(declare-fun lt!2261506 () (Set Context!10000))

(declare-fun lt!2261497 () Context!10000)

(declare-fun derivationStepZipper!1703 ((Set Context!10000) C!31502) (Set Context!10000))

(assert (=> b!5626269 (= res!2382917 (not (= (derivationStepZipper!1703 lt!2261507 (h!69473 s!2326)) (set.union lt!2261506 (derivationStepZipperUp!884 lt!2261497 (h!69473 s!2326))))))))

(declare-fun lt!2261503 () Context!10000)

(assert (=> b!5626269 (= (flatMap!1229 lt!2261507 lambda!302197) (derivationStepZipperUp!884 lt!2261503 (h!69473 s!2326)))))

(declare-fun lt!2261495 () Unit!155996)

(assert (=> b!5626269 (= lt!2261495 (lemmaFlatMapOnSingletonSet!761 lt!2261507 lt!2261503 lambda!302197))))

(declare-fun lt!2261504 () (Set Context!10000))

(assert (=> b!5626269 (= lt!2261504 (derivationStepZipperUp!884 lt!2261503 (h!69473 s!2326)))))

(declare-fun lt!2261485 () (Set Context!10000))

(assert (=> b!5626269 (= lt!2261485 (set.insert lt!2261497 (as set.empty (Set Context!10000))))))

(assert (=> b!5626269 (= lt!2261507 (set.insert lt!2261503 (as set.empty (Set Context!10000))))))

(declare-fun lt!2261498 () List!63147)

(assert (=> b!5626269 (= lt!2261503 (Context!10001 (Cons!63023 (regOne!31744 (regOne!31744 r!7292)) lt!2261498)))))

(declare-fun setNonEmpty!37561 () Bool)

(declare-fun e!3467974 () Bool)

(declare-fun setElem!37561 () Context!10000)

(declare-fun tp!1557738 () Bool)

(assert (=> setNonEmpty!37561 (= setRes!37561 (and tp!1557738 (inv!82288 setElem!37561) e!3467974))))

(declare-fun setRest!37561 () (Set Context!10000))

(assert (=> setNonEmpty!37561 (= z!1189 (set.union (set.insert setElem!37561 (as set.empty (Set Context!10000))) setRest!37561))))

(assert (=> b!5626270 (= e!3467985 e!3467977)))

(declare-fun res!2382913 () Bool)

(assert (=> b!5626270 (=> res!2382913 e!3467977)))

(declare-fun lt!2261492 () Bool)

(declare-fun lt!2261486 () Bool)

(assert (=> b!5626270 (= res!2382913 (or (not (= lt!2261486 lt!2261492)) (is-Nil!63025 s!2326)))))

(declare-fun Exists!2716 (Int) Bool)

(assert (=> b!5626270 (= (Exists!2716 lambda!302195) (Exists!2716 lambda!302196))))

(declare-fun lt!2261493 () Unit!155996)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1345 (Regex!15616 Regex!15616 List!63149) Unit!155996)

(assert (=> b!5626270 (= lt!2261493 (lemmaExistCutMatchRandMatchRSpecEquivalent!1345 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326))))

(assert (=> b!5626270 (= lt!2261492 (Exists!2716 lambda!302195))))

(declare-datatypes ((tuple2!65426 0))(
  ( (tuple2!65427 (_1!36016 List!63149) (_2!36016 List!63149)) )
))
(declare-datatypes ((Option!15625 0))(
  ( (None!15624) (Some!15624 (v!51669 tuple2!65426)) )
))
(declare-fun isDefined!12328 (Option!15625) Bool)

(declare-fun findConcatSeparation!2039 (Regex!15616 Regex!15616 List!63149 List!63149 List!63149) Option!15625)

(assert (=> b!5626270 (= lt!2261492 (isDefined!12328 (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) Nil!63025 s!2326 s!2326)))))

(declare-fun lt!2261505 () Unit!155996)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1803 (Regex!15616 Regex!15616 List!63149) Unit!155996)

(assert (=> b!5626270 (= lt!2261505 (lemmaFindConcatSeparationEquivalentToExists!1803 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326))))

(declare-fun b!5626271 () Bool)

(declare-fun e!3467973 () Bool)

(assert (=> b!5626271 (= e!3467983 e!3467973)))

(declare-fun res!2382910 () Bool)

(assert (=> b!5626271 (=> res!2382910 e!3467973)))

(assert (=> b!5626271 (= res!2382910 (not (nullable!5648 (regTwo!31744 (regOne!31744 r!7292)))))))

(assert (=> b!5626271 (= (flatMap!1229 lt!2261485 lambda!302197) (derivationStepZipperUp!884 lt!2261497 (h!69473 s!2326)))))

(declare-fun lt!2261500 () Unit!155996)

(assert (=> b!5626271 (= lt!2261500 (lemmaFlatMapOnSingletonSet!761 lt!2261485 lt!2261497 lambda!302197))))

(declare-fun b!5626272 () Bool)

(declare-fun e!3467975 () Bool)

(assert (=> b!5626272 (= e!3467975 (not e!3467985))))

(declare-fun res!2382915 () Bool)

(assert (=> b!5626272 (=> res!2382915 e!3467985)))

(assert (=> b!5626272 (= res!2382915 (not (is-Cons!63024 zl!343)))))

(declare-fun matchRSpec!2719 (Regex!15616 List!63149) Bool)

(assert (=> b!5626272 (= lt!2261486 (matchRSpec!2719 r!7292 s!2326))))

(declare-fun matchR!7801 (Regex!15616 List!63149) Bool)

(assert (=> b!5626272 (= lt!2261486 (matchR!7801 r!7292 s!2326))))

(declare-fun lt!2261496 () Unit!155996)

(declare-fun mainMatchTheorem!2719 (Regex!15616 List!63149) Unit!155996)

(assert (=> b!5626272 (= lt!2261496 (mainMatchTheorem!2719 r!7292 s!2326))))

(declare-fun b!5626273 () Bool)

(declare-fun Unit!155999 () Unit!155996)

(assert (=> b!5626273 (= e!3467984 Unit!155999)))

(declare-fun lt!2261494 () Unit!155996)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!641 ((Set Context!10000) (Set Context!10000) List!63149) Unit!155996)

(assert (=> b!5626273 (= lt!2261494 (lemmaZipperConcatMatchesSameAsBothZippers!641 lt!2261487 lt!2261509 (t!376441 s!2326)))))

(declare-fun res!2382903 () Bool)

(declare-fun matchZipper!1754 ((Set Context!10000) List!63149) Bool)

(assert (=> b!5626273 (= res!2382903 (matchZipper!1754 lt!2261487 (t!376441 s!2326)))))

(declare-fun e!3467982 () Bool)

(assert (=> b!5626273 (=> res!2382903 e!3467982)))

(assert (=> b!5626273 (= (matchZipper!1754 (set.union lt!2261487 lt!2261509) (t!376441 s!2326)) e!3467982)))

(declare-fun b!5626274 () Bool)

(declare-fun res!2382912 () Bool)

(assert (=> b!5626274 (=> res!2382912 e!3467987)))

(assert (=> b!5626274 (= res!2382912 (not (nullable!5648 (regOne!31744 (regOne!31744 r!7292)))))))

(declare-fun b!5626275 () Bool)

(declare-fun e!3467981 () Bool)

(declare-fun tp!1557739 () Bool)

(assert (=> b!5626275 (= e!3467981 (and tp_is_empty!40485 tp!1557739))))

(declare-fun b!5626276 () Bool)

(declare-fun res!2382916 () Bool)

(assert (=> b!5626276 (=> (not res!2382916) (not e!3467975))))

(declare-fun unfocusZipper!1358 (List!63148) Regex!15616)

(assert (=> b!5626276 (= res!2382916 (= r!7292 (unfocusZipper!1358 zl!343)))))

(declare-fun b!5626277 () Bool)

(declare-fun res!2382914 () Bool)

(assert (=> b!5626277 (=> res!2382914 e!3467977)))

(declare-fun isEmpty!34857 (List!63147) Bool)

(assert (=> b!5626277 (= res!2382914 (isEmpty!34857 (t!376439 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun lt!2261502 () (Set Context!10000))

(declare-fun b!5626278 () Bool)

(assert (=> b!5626278 (= e!3467973 (= (derivationStepZipper!1703 lt!2261485 (h!69473 s!2326)) (set.union lt!2261502 lt!2261509)))))

(declare-fun b!5626279 () Bool)

(declare-fun tp!1557732 () Bool)

(declare-fun tp!1557740 () Bool)

(assert (=> b!5626279 (= e!3467976 (and tp!1557732 tp!1557740))))

(declare-fun b!5626280 () Bool)

(assert (=> b!5626280 (= e!3467982 (matchZipper!1754 lt!2261509 (t!376441 s!2326)))))

(declare-fun b!5626281 () Bool)

(declare-fun e!3467986 () Bool)

(assert (=> b!5626281 (= e!3467986 (matchZipper!1754 lt!2261502 (t!376441 s!2326)))))

(declare-fun b!5626282 () Bool)

(declare-fun tp!1557737 () Bool)

(assert (=> b!5626282 (= e!3467979 tp!1557737)))

(declare-fun b!5626283 () Bool)

(declare-fun e!3467989 () Bool)

(assert (=> b!5626283 (= e!3467989 e!3467978)))

(declare-fun res!2382905 () Bool)

(assert (=> b!5626283 (=> res!2382905 e!3467978)))

(declare-fun e!3467980 () Bool)

(assert (=> b!5626283 (= res!2382905 e!3467980)))

(declare-fun res!2382918 () Bool)

(assert (=> b!5626283 (=> (not res!2382918) (not e!3467980))))

(declare-fun lt!2261488 () Bool)

(assert (=> b!5626283 (= res!2382918 (not (= (matchZipper!1754 lt!2261487 (t!376441 s!2326)) lt!2261488)))))

(declare-fun lt!2261491 () (Set Context!10000))

(assert (=> b!5626283 (= (matchZipper!1754 lt!2261491 (t!376441 s!2326)) e!3467986)))

(declare-fun res!2382920 () Bool)

(assert (=> b!5626283 (=> res!2382920 e!3467986)))

(assert (=> b!5626283 (= res!2382920 lt!2261488)))

(assert (=> b!5626283 (= lt!2261488 (matchZipper!1754 lt!2261506 (t!376441 s!2326)))))

(declare-fun lt!2261499 () Unit!155996)

(assert (=> b!5626283 (= lt!2261499 (lemmaZipperConcatMatchesSameAsBothZippers!641 lt!2261506 lt!2261502 (t!376441 s!2326)))))

(declare-fun b!5626284 () Bool)

(declare-fun tp!1557741 () Bool)

(assert (=> b!5626284 (= e!3467974 tp!1557741)))

(declare-fun res!2382907 () Bool)

(assert (=> start!582918 (=> (not res!2382907) (not e!3467975))))

(declare-fun validRegex!7352 (Regex!15616) Bool)

(assert (=> start!582918 (= res!2382907 (validRegex!7352 r!7292))))

(assert (=> start!582918 e!3467975))

(assert (=> start!582918 e!3467976))

(declare-fun condSetEmpty!37561 () Bool)

(assert (=> start!582918 (= condSetEmpty!37561 (= z!1189 (as set.empty (Set Context!10000))))))

(assert (=> start!582918 setRes!37561))

(assert (=> start!582918 e!3467988))

(assert (=> start!582918 e!3467981))

(declare-fun b!5626285 () Bool)

(assert (=> b!5626285 (= e!3467987 e!3467989)))

(declare-fun res!2382908 () Bool)

(assert (=> b!5626285 (=> res!2382908 e!3467989)))

(assert (=> b!5626285 (= res!2382908 (not (= lt!2261487 lt!2261491)))))

(assert (=> b!5626285 (= lt!2261491 (set.union lt!2261506 lt!2261502))))

(assert (=> b!5626285 (= lt!2261502 (derivationStepZipperDown!958 (regTwo!31744 (regOne!31744 r!7292)) lt!2261501 (h!69473 s!2326)))))

(assert (=> b!5626285 (= lt!2261506 (derivationStepZipperDown!958 (regOne!31744 (regOne!31744 r!7292)) lt!2261497 (h!69473 s!2326)))))

(assert (=> b!5626285 (= lt!2261497 (Context!10001 lt!2261498))))

(assert (=> b!5626285 (= lt!2261498 (Cons!63023 (regTwo!31744 (regOne!31744 r!7292)) (t!376439 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun b!5626286 () Bool)

(assert (=> b!5626286 (= e!3467980 (not (matchZipper!1754 lt!2261502 (t!376441 s!2326))))))

(declare-fun b!5626287 () Bool)

(declare-fun res!2382911 () Bool)

(assert (=> b!5626287 (=> (not res!2382911) (not e!3467975))))

(declare-fun toList!9400 ((Set Context!10000)) List!63148)

(assert (=> b!5626287 (= res!2382911 (= (toList!9400 z!1189) zl!343))))

(declare-fun b!5626288 () Bool)

(declare-fun res!2382919 () Bool)

(assert (=> b!5626288 (=> res!2382919 e!3467985)))

(assert (=> b!5626288 (= res!2382919 (not (is-Cons!63023 (exprs!5500 (h!69472 zl!343)))))))

(assert (= (and start!582918 res!2382907) b!5626287))

(assert (= (and b!5626287 res!2382911) b!5626276))

(assert (= (and b!5626276 res!2382916) b!5626272))

(assert (= (and b!5626272 (not res!2382915)) b!5626268))

(assert (= (and b!5626268 (not res!2382902)) b!5626265))

(assert (= (and b!5626265 (not res!2382904)) b!5626288))

(assert (= (and b!5626288 (not res!2382919)) b!5626261))

(assert (= (and b!5626261 (not res!2382901)) b!5626267))

(assert (= (and b!5626267 (not res!2382906)) b!5626270))

(assert (= (and b!5626270 (not res!2382913)) b!5626277))

(assert (= (and b!5626277 (not res!2382914)) b!5626263))

(assert (= (and b!5626263 c!987667) b!5626273))

(assert (= (and b!5626263 (not c!987667)) b!5626266))

(assert (= (and b!5626273 (not res!2382903)) b!5626280))

(assert (= (and b!5626263 (not res!2382909)) b!5626274))

(assert (= (and b!5626274 (not res!2382912)) b!5626285))

(assert (= (and b!5626285 (not res!2382908)) b!5626283))

(assert (= (and b!5626283 (not res!2382920)) b!5626281))

(assert (= (and b!5626283 res!2382918) b!5626286))

(assert (= (and b!5626283 (not res!2382905)) b!5626269))

(assert (= (and b!5626269 (not res!2382917)) b!5626271))

(assert (= (and b!5626271 (not res!2382910)) b!5626278))

(assert (= (and start!582918 (is-ElementMatch!15616 r!7292)) b!5626260))

(assert (= (and start!582918 (is-Concat!24461 r!7292)) b!5626262))

(assert (= (and start!582918 (is-Star!15616 r!7292)) b!5626259))

(assert (= (and start!582918 (is-Union!15616 r!7292)) b!5626279))

(assert (= (and start!582918 condSetEmpty!37561) setIsEmpty!37561))

(assert (= (and start!582918 (not condSetEmpty!37561)) setNonEmpty!37561))

(assert (= setNonEmpty!37561 b!5626284))

(assert (= b!5626264 b!5626282))

(assert (= (and start!582918 (is-Cons!63024 zl!343)) b!5626264))

(assert (= (and start!582918 (is-Cons!63025 s!2326)) b!5626275))

(declare-fun m!6598460 () Bool)

(assert (=> b!5626265 m!6598460))

(declare-fun m!6598462 () Bool)

(assert (=> b!5626280 m!6598462))

(declare-fun m!6598464 () Bool)

(assert (=> b!5626276 m!6598464))

(declare-fun m!6598466 () Bool)

(assert (=> b!5626268 m!6598466))

(declare-fun m!6598468 () Bool)

(assert (=> start!582918 m!6598468))

(declare-fun m!6598470 () Bool)

(assert (=> b!5626272 m!6598470))

(declare-fun m!6598472 () Bool)

(assert (=> b!5626272 m!6598472))

(declare-fun m!6598474 () Bool)

(assert (=> b!5626272 m!6598474))

(declare-fun m!6598476 () Bool)

(assert (=> b!5626283 m!6598476))

(declare-fun m!6598478 () Bool)

(assert (=> b!5626283 m!6598478))

(declare-fun m!6598480 () Bool)

(assert (=> b!5626283 m!6598480))

(declare-fun m!6598482 () Bool)

(assert (=> b!5626283 m!6598482))

(declare-fun m!6598484 () Bool)

(assert (=> b!5626278 m!6598484))

(declare-fun m!6598486 () Bool)

(assert (=> setNonEmpty!37561 m!6598486))

(declare-fun m!6598488 () Bool)

(assert (=> b!5626273 m!6598488))

(assert (=> b!5626273 m!6598476))

(declare-fun m!6598490 () Bool)

(assert (=> b!5626273 m!6598490))

(declare-fun m!6598492 () Bool)

(assert (=> b!5626285 m!6598492))

(declare-fun m!6598494 () Bool)

(assert (=> b!5626285 m!6598494))

(declare-fun m!6598496 () Bool)

(assert (=> b!5626264 m!6598496))

(declare-fun m!6598498 () Bool)

(assert (=> b!5626286 m!6598498))

(declare-fun m!6598500 () Bool)

(assert (=> b!5626277 m!6598500))

(declare-fun m!6598502 () Bool)

(assert (=> b!5626270 m!6598502))

(declare-fun m!6598504 () Bool)

(assert (=> b!5626270 m!6598504))

(declare-fun m!6598506 () Bool)

(assert (=> b!5626270 m!6598506))

(assert (=> b!5626270 m!6598506))

(declare-fun m!6598508 () Bool)

(assert (=> b!5626270 m!6598508))

(declare-fun m!6598510 () Bool)

(assert (=> b!5626270 m!6598510))

(assert (=> b!5626270 m!6598502))

(declare-fun m!6598512 () Bool)

(assert (=> b!5626270 m!6598512))

(assert (=> b!5626281 m!6598498))

(declare-fun m!6598514 () Bool)

(assert (=> b!5626274 m!6598514))

(declare-fun m!6598516 () Bool)

(assert (=> b!5626287 m!6598516))

(declare-fun m!6598518 () Bool)

(assert (=> b!5626263 m!6598518))

(declare-fun m!6598520 () Bool)

(assert (=> b!5626263 m!6598520))

(declare-fun m!6598522 () Bool)

(assert (=> b!5626263 m!6598522))

(declare-fun m!6598524 () Bool)

(assert (=> b!5626263 m!6598524))

(declare-fun m!6598526 () Bool)

(assert (=> b!5626263 m!6598526))

(declare-fun m!6598528 () Bool)

(assert (=> b!5626263 m!6598528))

(declare-fun m!6598530 () Bool)

(assert (=> b!5626263 m!6598530))

(declare-fun m!6598532 () Bool)

(assert (=> b!5626271 m!6598532))

(declare-fun m!6598534 () Bool)

(assert (=> b!5626271 m!6598534))

(declare-fun m!6598536 () Bool)

(assert (=> b!5626271 m!6598536))

(declare-fun m!6598538 () Bool)

(assert (=> b!5626271 m!6598538))

(declare-fun m!6598540 () Bool)

(assert (=> b!5626269 m!6598540))

(declare-fun m!6598542 () Bool)

(assert (=> b!5626269 m!6598542))

(declare-fun m!6598544 () Bool)

(assert (=> b!5626269 m!6598544))

(declare-fun m!6598546 () Bool)

(assert (=> b!5626269 m!6598546))

(declare-fun m!6598548 () Bool)

(assert (=> b!5626269 m!6598548))

(declare-fun m!6598550 () Bool)

(assert (=> b!5626269 m!6598550))

(assert (=> b!5626269 m!6598536))

(declare-fun m!6598552 () Bool)

(assert (=> b!5626261 m!6598552))

(assert (=> b!5626261 m!6598552))

(declare-fun m!6598554 () Bool)

(assert (=> b!5626261 m!6598554))

(push 1)

(assert (not b!5626283))

(assert (not b!5626268))

(assert (not b!5626279))

(assert (not b!5626284))

(assert (not b!5626273))

(assert (not b!5626278))

(assert (not b!5626269))

(assert (not b!5626276))

(assert (not b!5626265))

(assert (not b!5626280))

(assert (not b!5626264))

(assert tp_is_empty!40485)

(assert (not b!5626274))

(assert (not b!5626270))

(assert (not b!5626282))

(assert (not b!5626287))

(assert (not b!5626277))

(assert (not setNonEmpty!37561))

(assert (not b!5626272))

(assert (not b!5626259))

(assert (not b!5626281))

(assert (not b!5626261))

(assert (not b!5626286))

(assert (not b!5626262))

(assert (not start!582918))

(assert (not b!5626271))

(assert (not b!5626275))

(assert (not b!5626285))

(assert (not b!5626263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1777384 () Bool)

(declare-fun lt!2261587 () Regex!15616)

(assert (=> d!1777384 (validRegex!7352 lt!2261587)))

(assert (=> d!1777384 (= lt!2261587 (generalisedUnion!1479 (unfocusZipperList!1044 zl!343)))))

(assert (=> d!1777384 (= (unfocusZipper!1358 zl!343) lt!2261587)))

(declare-fun bs!1302348 () Bool)

(assert (= bs!1302348 d!1777384))

(declare-fun m!6598652 () Bool)

(assert (=> bs!1302348 m!6598652))

(assert (=> bs!1302348 m!6598552))

(assert (=> bs!1302348 m!6598552))

(assert (=> bs!1302348 m!6598554))

(assert (=> b!5626276 d!1777384))

(declare-fun d!1777386 () Bool)

(declare-fun e!3468049 () Bool)

(assert (=> d!1777386 e!3468049))

(declare-fun res!2382995 () Bool)

(assert (=> d!1777386 (=> (not res!2382995) (not e!3468049))))

(declare-fun lt!2261590 () List!63148)

(declare-fun noDuplicate!1580 (List!63148) Bool)

(assert (=> d!1777386 (= res!2382995 (noDuplicate!1580 lt!2261590))))

(declare-fun choose!42628 ((Set Context!10000)) List!63148)

(assert (=> d!1777386 (= lt!2261590 (choose!42628 z!1189))))

(assert (=> d!1777386 (= (toList!9400 z!1189) lt!2261590)))

(declare-fun b!5626405 () Bool)

(declare-fun content!11391 (List!63148) (Set Context!10000))

(assert (=> b!5626405 (= e!3468049 (= (content!11391 lt!2261590) z!1189))))

(assert (= (and d!1777386 res!2382995) b!5626405))

(declare-fun m!6598654 () Bool)

(assert (=> d!1777386 m!6598654))

(declare-fun m!6598656 () Bool)

(assert (=> d!1777386 m!6598656))

(declare-fun m!6598658 () Bool)

(assert (=> b!5626405 m!6598658))

(assert (=> b!5626287 d!1777386))

(declare-fun d!1777388 () Bool)

(assert (=> d!1777388 (= (isEmpty!34857 (t!376439 (exprs!5500 (h!69472 zl!343)))) (is-Nil!63023 (t!376439 (exprs!5500 (h!69472 zl!343)))))))

(assert (=> b!5626277 d!1777388))

(declare-fun bs!1302349 () Bool)

(declare-fun d!1777390 () Bool)

(assert (= bs!1302349 (and d!1777390 b!5626263)))

(declare-fun lambda!302215 () Int)

(assert (=> bs!1302349 (= lambda!302215 lambda!302197)))

(assert (=> d!1777390 true))

(assert (=> d!1777390 (= (derivationStepZipper!1703 lt!2261485 (h!69473 s!2326)) (flatMap!1229 lt!2261485 lambda!302215))))

(declare-fun bs!1302350 () Bool)

(assert (= bs!1302350 d!1777390))

(declare-fun m!6598660 () Bool)

(assert (=> bs!1302350 m!6598660))

(assert (=> b!5626278 d!1777390))

(declare-fun d!1777392 () Bool)

(assert (=> d!1777392 (= (isEmpty!34856 (t!376440 zl!343)) (is-Nil!63024 (t!376440 zl!343)))))

(assert (=> b!5626268 d!1777392))

(declare-fun bm!423845 () Bool)

(declare-fun call!423850 () Bool)

(declare-fun call!423851 () Bool)

(assert (=> bm!423845 (= call!423850 call!423851)))

(declare-fun b!5626426 () Bool)

(declare-fun e!3468070 () Bool)

(declare-fun e!3468067 () Bool)

(assert (=> b!5626426 (= e!3468070 e!3468067)))

(declare-fun res!2383008 () Bool)

(assert (=> b!5626426 (=> (not res!2383008) (not e!3468067))))

(declare-fun call!423852 () Bool)

(assert (=> b!5626426 (= res!2383008 call!423852)))

(declare-fun b!5626427 () Bool)

(declare-fun e!3468068 () Bool)

(declare-fun e!3468065 () Bool)

(assert (=> b!5626427 (= e!3468068 e!3468065)))

(declare-fun res!2383007 () Bool)

(assert (=> b!5626427 (= res!2383007 (not (nullable!5648 (reg!15945 r!7292))))))

(assert (=> b!5626427 (=> (not res!2383007) (not e!3468065))))

(declare-fun bm!423846 () Bool)

(declare-fun c!987686 () Bool)

(assert (=> bm!423846 (= call!423852 (validRegex!7352 (ite c!987686 (regOne!31745 r!7292) (regOne!31744 r!7292))))))

(declare-fun b!5626428 () Bool)

(declare-fun e!3468069 () Bool)

(assert (=> b!5626428 (= e!3468069 e!3468068)))

(declare-fun c!987687 () Bool)

(assert (=> b!5626428 (= c!987687 (is-Star!15616 r!7292))))

(declare-fun d!1777394 () Bool)

(declare-fun res!2383006 () Bool)

(assert (=> d!1777394 (=> res!2383006 e!3468069)))

(assert (=> d!1777394 (= res!2383006 (is-ElementMatch!15616 r!7292))))

(assert (=> d!1777394 (= (validRegex!7352 r!7292) e!3468069)))

(declare-fun bm!423847 () Bool)

(assert (=> bm!423847 (= call!423851 (validRegex!7352 (ite c!987687 (reg!15945 r!7292) (ite c!987686 (regTwo!31745 r!7292) (regTwo!31744 r!7292)))))))

(declare-fun b!5626429 () Bool)

(declare-fun res!2383010 () Bool)

(assert (=> b!5626429 (=> res!2383010 e!3468070)))

(assert (=> b!5626429 (= res!2383010 (not (is-Concat!24461 r!7292)))))

(declare-fun e!3468064 () Bool)

(assert (=> b!5626429 (= e!3468064 e!3468070)))

(declare-fun b!5626430 () Bool)

(assert (=> b!5626430 (= e!3468067 call!423850)))

(declare-fun b!5626431 () Bool)

(assert (=> b!5626431 (= e!3468065 call!423851)))

(declare-fun b!5626432 () Bool)

(declare-fun res!2383009 () Bool)

(declare-fun e!3468066 () Bool)

(assert (=> b!5626432 (=> (not res!2383009) (not e!3468066))))

(assert (=> b!5626432 (= res!2383009 call!423852)))

(assert (=> b!5626432 (= e!3468064 e!3468066)))

(declare-fun b!5626433 () Bool)

(assert (=> b!5626433 (= e!3468066 call!423850)))

(declare-fun b!5626434 () Bool)

(assert (=> b!5626434 (= e!3468068 e!3468064)))

(assert (=> b!5626434 (= c!987686 (is-Union!15616 r!7292))))

(assert (= (and d!1777394 (not res!2383006)) b!5626428))

(assert (= (and b!5626428 c!987687) b!5626427))

(assert (= (and b!5626428 (not c!987687)) b!5626434))

(assert (= (and b!5626427 res!2383007) b!5626431))

(assert (= (and b!5626434 c!987686) b!5626432))

(assert (= (and b!5626434 (not c!987686)) b!5626429))

(assert (= (and b!5626432 res!2383009) b!5626433))

(assert (= (and b!5626429 (not res!2383010)) b!5626426))

(assert (= (and b!5626426 res!2383008) b!5626430))

(assert (= (or b!5626433 b!5626430) bm!423845))

(assert (= (or b!5626432 b!5626426) bm!423846))

(assert (= (or b!5626431 bm!423845) bm!423847))

(declare-fun m!6598662 () Bool)

(assert (=> b!5626427 m!6598662))

(declare-fun m!6598664 () Bool)

(assert (=> bm!423846 m!6598664))

(declare-fun m!6598666 () Bool)

(assert (=> bm!423847 m!6598666))

(assert (=> start!582918 d!1777394))

(declare-fun d!1777396 () Bool)

(declare-fun choose!42629 ((Set Context!10000) Int) (Set Context!10000))

(assert (=> d!1777396 (= (flatMap!1229 lt!2261507 lambda!302197) (choose!42629 lt!2261507 lambda!302197))))

(declare-fun bs!1302351 () Bool)

(assert (= bs!1302351 d!1777396))

(declare-fun m!6598668 () Bool)

(assert (=> bs!1302351 m!6598668))

(assert (=> b!5626269 d!1777396))

(declare-fun bs!1302352 () Bool)

(declare-fun d!1777398 () Bool)

(assert (= bs!1302352 (and d!1777398 b!5626263)))

(declare-fun lambda!302216 () Int)

(assert (=> bs!1302352 (= lambda!302216 lambda!302197)))

(declare-fun bs!1302353 () Bool)

(assert (= bs!1302353 (and d!1777398 d!1777390)))

(assert (=> bs!1302353 (= lambda!302216 lambda!302215)))

(assert (=> d!1777398 true))

(assert (=> d!1777398 (= (derivationStepZipper!1703 lt!2261507 (h!69473 s!2326)) (flatMap!1229 lt!2261507 lambda!302216))))

(declare-fun bs!1302354 () Bool)

(assert (= bs!1302354 d!1777398))

(declare-fun m!6598670 () Bool)

(assert (=> bs!1302354 m!6598670))

(assert (=> b!5626269 d!1777398))

(declare-fun bm!423850 () Bool)

(declare-fun call!423855 () (Set Context!10000))

(assert (=> bm!423850 (= call!423855 (derivationStepZipperDown!958 (h!69471 (exprs!5500 lt!2261503)) (Context!10001 (t!376439 (exprs!5500 lt!2261503))) (h!69473 s!2326)))))

(declare-fun b!5626445 () Bool)

(declare-fun e!3468077 () (Set Context!10000))

(assert (=> b!5626445 (= e!3468077 call!423855)))

(declare-fun b!5626446 () Bool)

(assert (=> b!5626446 (= e!3468077 (as set.empty (Set Context!10000)))))

(declare-fun b!5626447 () Bool)

(declare-fun e!3468078 () Bool)

(assert (=> b!5626447 (= e!3468078 (nullable!5648 (h!69471 (exprs!5500 lt!2261503))))))

(declare-fun d!1777400 () Bool)

(declare-fun c!987692 () Bool)

(assert (=> d!1777400 (= c!987692 e!3468078)))

(declare-fun res!2383013 () Bool)

(assert (=> d!1777400 (=> (not res!2383013) (not e!3468078))))

(assert (=> d!1777400 (= res!2383013 (is-Cons!63023 (exprs!5500 lt!2261503)))))

(declare-fun e!3468079 () (Set Context!10000))

(assert (=> d!1777400 (= (derivationStepZipperUp!884 lt!2261503 (h!69473 s!2326)) e!3468079)))

(declare-fun b!5626448 () Bool)

(assert (=> b!5626448 (= e!3468079 (set.union call!423855 (derivationStepZipperUp!884 (Context!10001 (t!376439 (exprs!5500 lt!2261503))) (h!69473 s!2326))))))

(declare-fun b!5626449 () Bool)

(assert (=> b!5626449 (= e!3468079 e!3468077)))

(declare-fun c!987693 () Bool)

(assert (=> b!5626449 (= c!987693 (is-Cons!63023 (exprs!5500 lt!2261503)))))

(assert (= (and d!1777400 res!2383013) b!5626447))

(assert (= (and d!1777400 c!987692) b!5626448))

(assert (= (and d!1777400 (not c!987692)) b!5626449))

(assert (= (and b!5626449 c!987693) b!5626445))

(assert (= (and b!5626449 (not c!987693)) b!5626446))

(assert (= (or b!5626448 b!5626445) bm!423850))

(declare-fun m!6598672 () Bool)

(assert (=> bm!423850 m!6598672))

(declare-fun m!6598674 () Bool)

(assert (=> b!5626447 m!6598674))

(declare-fun m!6598676 () Bool)

(assert (=> b!5626448 m!6598676))

(assert (=> b!5626269 d!1777400))

(declare-fun bm!423851 () Bool)

(declare-fun call!423856 () (Set Context!10000))

(assert (=> bm!423851 (= call!423856 (derivationStepZipperDown!958 (h!69471 (exprs!5500 lt!2261497)) (Context!10001 (t!376439 (exprs!5500 lt!2261497))) (h!69473 s!2326)))))

(declare-fun b!5626450 () Bool)

(declare-fun e!3468080 () (Set Context!10000))

(assert (=> b!5626450 (= e!3468080 call!423856)))

(declare-fun b!5626451 () Bool)

(assert (=> b!5626451 (= e!3468080 (as set.empty (Set Context!10000)))))

(declare-fun b!5626452 () Bool)

(declare-fun e!3468081 () Bool)

(assert (=> b!5626452 (= e!3468081 (nullable!5648 (h!69471 (exprs!5500 lt!2261497))))))

(declare-fun d!1777402 () Bool)

(declare-fun c!987694 () Bool)

(assert (=> d!1777402 (= c!987694 e!3468081)))

(declare-fun res!2383014 () Bool)

(assert (=> d!1777402 (=> (not res!2383014) (not e!3468081))))

(assert (=> d!1777402 (= res!2383014 (is-Cons!63023 (exprs!5500 lt!2261497)))))

(declare-fun e!3468082 () (Set Context!10000))

(assert (=> d!1777402 (= (derivationStepZipperUp!884 lt!2261497 (h!69473 s!2326)) e!3468082)))

(declare-fun b!5626453 () Bool)

(assert (=> b!5626453 (= e!3468082 (set.union call!423856 (derivationStepZipperUp!884 (Context!10001 (t!376439 (exprs!5500 lt!2261497))) (h!69473 s!2326))))))

(declare-fun b!5626454 () Bool)

(assert (=> b!5626454 (= e!3468082 e!3468080)))

(declare-fun c!987695 () Bool)

(assert (=> b!5626454 (= c!987695 (is-Cons!63023 (exprs!5500 lt!2261497)))))

(assert (= (and d!1777402 res!2383014) b!5626452))

(assert (= (and d!1777402 c!987694) b!5626453))

(assert (= (and d!1777402 (not c!987694)) b!5626454))

(assert (= (and b!5626454 c!987695) b!5626450))

(assert (= (and b!5626454 (not c!987695)) b!5626451))

(assert (= (or b!5626453 b!5626450) bm!423851))

(declare-fun m!6598678 () Bool)

(assert (=> bm!423851 m!6598678))

(declare-fun m!6598680 () Bool)

(assert (=> b!5626452 m!6598680))

(declare-fun m!6598682 () Bool)

(assert (=> b!5626453 m!6598682))

(assert (=> b!5626269 d!1777402))

(declare-fun d!1777404 () Bool)

(declare-fun dynLambda!24645 (Int Context!10000) (Set Context!10000))

(assert (=> d!1777404 (= (flatMap!1229 lt!2261507 lambda!302197) (dynLambda!24645 lambda!302197 lt!2261503))))

(declare-fun lt!2261593 () Unit!155996)

(declare-fun choose!42630 ((Set Context!10000) Context!10000 Int) Unit!155996)

(assert (=> d!1777404 (= lt!2261593 (choose!42630 lt!2261507 lt!2261503 lambda!302197))))

(assert (=> d!1777404 (= lt!2261507 (set.insert lt!2261503 (as set.empty (Set Context!10000))))))

(assert (=> d!1777404 (= (lemmaFlatMapOnSingletonSet!761 lt!2261507 lt!2261503 lambda!302197) lt!2261593)))

(declare-fun b_lambda!212811 () Bool)

(assert (=> (not b_lambda!212811) (not d!1777404)))

(declare-fun bs!1302355 () Bool)

(assert (= bs!1302355 d!1777404))

(assert (=> bs!1302355 m!6598546))

(declare-fun m!6598684 () Bool)

(assert (=> bs!1302355 m!6598684))

(declare-fun m!6598686 () Bool)

(assert (=> bs!1302355 m!6598686))

(assert (=> bs!1302355 m!6598540))

(assert (=> b!5626269 d!1777404))

(declare-fun d!1777406 () Bool)

(declare-fun c!987698 () Bool)

(declare-fun isEmpty!34860 (List!63149) Bool)

(assert (=> d!1777406 (= c!987698 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468085 () Bool)

(assert (=> d!1777406 (= (matchZipper!1754 lt!2261509 (t!376441 s!2326)) e!3468085)))

(declare-fun b!5626459 () Bool)

(declare-fun nullableZipper!1599 ((Set Context!10000)) Bool)

(assert (=> b!5626459 (= e!3468085 (nullableZipper!1599 lt!2261509))))

(declare-fun b!5626460 () Bool)

(declare-fun head!11977 (List!63149) C!31502)

(declare-fun tail!11072 (List!63149) List!63149)

(assert (=> b!5626460 (= e!3468085 (matchZipper!1754 (derivationStepZipper!1703 lt!2261509 (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777406 c!987698) b!5626459))

(assert (= (and d!1777406 (not c!987698)) b!5626460))

(declare-fun m!6598688 () Bool)

(assert (=> d!1777406 m!6598688))

(declare-fun m!6598690 () Bool)

(assert (=> b!5626459 m!6598690))

(declare-fun m!6598692 () Bool)

(assert (=> b!5626460 m!6598692))

(assert (=> b!5626460 m!6598692))

(declare-fun m!6598694 () Bool)

(assert (=> b!5626460 m!6598694))

(declare-fun m!6598696 () Bool)

(assert (=> b!5626460 m!6598696))

(assert (=> b!5626460 m!6598694))

(assert (=> b!5626460 m!6598696))

(declare-fun m!6598698 () Bool)

(assert (=> b!5626460 m!6598698))

(assert (=> b!5626280 d!1777406))

(declare-fun d!1777408 () Bool)

(declare-fun lambda!302219 () Int)

(declare-fun forall!14771 (List!63147 Int) Bool)

(assert (=> d!1777408 (= (inv!82288 setElem!37561) (forall!14771 (exprs!5500 setElem!37561) lambda!302219))))

(declare-fun bs!1302356 () Bool)

(assert (= bs!1302356 d!1777408))

(declare-fun m!6598700 () Bool)

(assert (=> bs!1302356 m!6598700))

(assert (=> setNonEmpty!37561 d!1777408))

(declare-fun b!5626479 () Bool)

(declare-fun e!3468100 () Option!15625)

(declare-fun e!3468098 () Option!15625)

(assert (=> b!5626479 (= e!3468100 e!3468098)))

(declare-fun c!987703 () Bool)

(assert (=> b!5626479 (= c!987703 (is-Nil!63025 s!2326))))

(declare-fun b!5626480 () Bool)

(declare-fun lt!2261601 () Unit!155996)

(declare-fun lt!2261600 () Unit!155996)

(assert (=> b!5626480 (= lt!2261601 lt!2261600)))

(declare-fun ++!13833 (List!63149 List!63149) List!63149)

(assert (=> b!5626480 (= (++!13833 (++!13833 Nil!63025 (Cons!63025 (h!69473 s!2326) Nil!63025)) (t!376441 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2002 (List!63149 C!31502 List!63149 List!63149) Unit!155996)

(assert (=> b!5626480 (= lt!2261600 (lemmaMoveElementToOtherListKeepsConcatEq!2002 Nil!63025 (h!69473 s!2326) (t!376441 s!2326) s!2326))))

(assert (=> b!5626480 (= e!3468098 (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) (++!13833 Nil!63025 (Cons!63025 (h!69473 s!2326) Nil!63025)) (t!376441 s!2326) s!2326))))

(declare-fun b!5626481 () Bool)

(declare-fun e!3468099 () Bool)

(assert (=> b!5626481 (= e!3468099 (matchR!7801 (regTwo!31744 r!7292) s!2326))))

(declare-fun b!5626482 () Bool)

(declare-fun e!3468096 () Bool)

(declare-fun lt!2261602 () Option!15625)

(assert (=> b!5626482 (= e!3468096 (not (isDefined!12328 lt!2261602)))))

(declare-fun d!1777410 () Bool)

(assert (=> d!1777410 e!3468096))

(declare-fun res!2383029 () Bool)

(assert (=> d!1777410 (=> res!2383029 e!3468096)))

(declare-fun e!3468097 () Bool)

(assert (=> d!1777410 (= res!2383029 e!3468097)))

(declare-fun res!2383027 () Bool)

(assert (=> d!1777410 (=> (not res!2383027) (not e!3468097))))

(assert (=> d!1777410 (= res!2383027 (isDefined!12328 lt!2261602))))

(assert (=> d!1777410 (= lt!2261602 e!3468100)))

(declare-fun c!987704 () Bool)

(assert (=> d!1777410 (= c!987704 e!3468099)))

(declare-fun res!2383028 () Bool)

(assert (=> d!1777410 (=> (not res!2383028) (not e!3468099))))

(assert (=> d!1777410 (= res!2383028 (matchR!7801 (regOne!31744 r!7292) Nil!63025))))

(assert (=> d!1777410 (validRegex!7352 (regOne!31744 r!7292))))

(assert (=> d!1777410 (= (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) Nil!63025 s!2326 s!2326) lt!2261602)))

(declare-fun b!5626483 () Bool)

(assert (=> b!5626483 (= e!3468098 None!15624)))

(declare-fun b!5626484 () Bool)

(declare-fun get!21709 (Option!15625) tuple2!65426)

(assert (=> b!5626484 (= e!3468097 (= (++!13833 (_1!36016 (get!21709 lt!2261602)) (_2!36016 (get!21709 lt!2261602))) s!2326))))

(declare-fun b!5626485 () Bool)

(assert (=> b!5626485 (= e!3468100 (Some!15624 (tuple2!65427 Nil!63025 s!2326)))))

(declare-fun b!5626486 () Bool)

(declare-fun res!2383026 () Bool)

(assert (=> b!5626486 (=> (not res!2383026) (not e!3468097))))

(assert (=> b!5626486 (= res!2383026 (matchR!7801 (regTwo!31744 r!7292) (_2!36016 (get!21709 lt!2261602))))))

(declare-fun b!5626487 () Bool)

(declare-fun res!2383025 () Bool)

(assert (=> b!5626487 (=> (not res!2383025) (not e!3468097))))

(assert (=> b!5626487 (= res!2383025 (matchR!7801 (regOne!31744 r!7292) (_1!36016 (get!21709 lt!2261602))))))

(assert (= (and d!1777410 res!2383028) b!5626481))

(assert (= (and d!1777410 c!987704) b!5626485))

(assert (= (and d!1777410 (not c!987704)) b!5626479))

(assert (= (and b!5626479 c!987703) b!5626483))

(assert (= (and b!5626479 (not c!987703)) b!5626480))

(assert (= (and d!1777410 res!2383027) b!5626487))

(assert (= (and b!5626487 res!2383025) b!5626486))

(assert (= (and b!5626486 res!2383026) b!5626484))

(assert (= (and d!1777410 (not res!2383029)) b!5626482))

(declare-fun m!6598702 () Bool)

(assert (=> d!1777410 m!6598702))

(declare-fun m!6598704 () Bool)

(assert (=> d!1777410 m!6598704))

(declare-fun m!6598706 () Bool)

(assert (=> d!1777410 m!6598706))

(declare-fun m!6598708 () Bool)

(assert (=> b!5626480 m!6598708))

(assert (=> b!5626480 m!6598708))

(declare-fun m!6598710 () Bool)

(assert (=> b!5626480 m!6598710))

(declare-fun m!6598712 () Bool)

(assert (=> b!5626480 m!6598712))

(assert (=> b!5626480 m!6598708))

(declare-fun m!6598714 () Bool)

(assert (=> b!5626480 m!6598714))

(declare-fun m!6598716 () Bool)

(assert (=> b!5626487 m!6598716))

(declare-fun m!6598718 () Bool)

(assert (=> b!5626487 m!6598718))

(declare-fun m!6598720 () Bool)

(assert (=> b!5626481 m!6598720))

(assert (=> b!5626486 m!6598716))

(declare-fun m!6598722 () Bool)

(assert (=> b!5626486 m!6598722))

(assert (=> b!5626484 m!6598716))

(declare-fun m!6598724 () Bool)

(assert (=> b!5626484 m!6598724))

(assert (=> b!5626482 m!6598702))

(assert (=> b!5626270 d!1777410))

(declare-fun d!1777412 () Bool)

(declare-fun choose!42631 (Int) Bool)

(assert (=> d!1777412 (= (Exists!2716 lambda!302195) (choose!42631 lambda!302195))))

(declare-fun bs!1302357 () Bool)

(assert (= bs!1302357 d!1777412))

(declare-fun m!6598726 () Bool)

(assert (=> bs!1302357 m!6598726))

(assert (=> b!5626270 d!1777412))

(declare-fun d!1777414 () Bool)

(assert (=> d!1777414 (= (Exists!2716 lambda!302196) (choose!42631 lambda!302196))))

(declare-fun bs!1302358 () Bool)

(assert (= bs!1302358 d!1777414))

(declare-fun m!6598728 () Bool)

(assert (=> bs!1302358 m!6598728))

(assert (=> b!5626270 d!1777414))

(declare-fun bs!1302359 () Bool)

(declare-fun d!1777416 () Bool)

(assert (= bs!1302359 (and d!1777416 b!5626270)))

(declare-fun lambda!302222 () Int)

(assert (=> bs!1302359 (= lambda!302222 lambda!302195)))

(assert (=> bs!1302359 (not (= lambda!302222 lambda!302196))))

(assert (=> d!1777416 true))

(assert (=> d!1777416 true))

(assert (=> d!1777416 true))

(assert (=> d!1777416 (= (isDefined!12328 (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) Nil!63025 s!2326 s!2326)) (Exists!2716 lambda!302222))))

(declare-fun lt!2261605 () Unit!155996)

(declare-fun choose!42632 (Regex!15616 Regex!15616 List!63149) Unit!155996)

(assert (=> d!1777416 (= lt!2261605 (choose!42632 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326))))

(assert (=> d!1777416 (validRegex!7352 (regOne!31744 r!7292))))

(assert (=> d!1777416 (= (lemmaFindConcatSeparationEquivalentToExists!1803 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326) lt!2261605)))

(declare-fun bs!1302360 () Bool)

(assert (= bs!1302360 d!1777416))

(declare-fun m!6598730 () Bool)

(assert (=> bs!1302360 m!6598730))

(assert (=> bs!1302360 m!6598502))

(declare-fun m!6598732 () Bool)

(assert (=> bs!1302360 m!6598732))

(assert (=> bs!1302360 m!6598706))

(assert (=> bs!1302360 m!6598502))

(assert (=> bs!1302360 m!6598504))

(assert (=> b!5626270 d!1777416))

(declare-fun bs!1302361 () Bool)

(declare-fun d!1777418 () Bool)

(assert (= bs!1302361 (and d!1777418 b!5626270)))

(declare-fun lambda!302227 () Int)

(assert (=> bs!1302361 (= lambda!302227 lambda!302195)))

(assert (=> bs!1302361 (not (= lambda!302227 lambda!302196))))

(declare-fun bs!1302362 () Bool)

(assert (= bs!1302362 (and d!1777418 d!1777416)))

(assert (=> bs!1302362 (= lambda!302227 lambda!302222)))

(assert (=> d!1777418 true))

(assert (=> d!1777418 true))

(assert (=> d!1777418 true))

(declare-fun lambda!302228 () Int)

(assert (=> bs!1302361 (not (= lambda!302228 lambda!302195))))

(assert (=> bs!1302361 (= lambda!302228 lambda!302196)))

(assert (=> bs!1302362 (not (= lambda!302228 lambda!302222))))

(declare-fun bs!1302363 () Bool)

(assert (= bs!1302363 d!1777418))

(assert (=> bs!1302363 (not (= lambda!302228 lambda!302227))))

(assert (=> d!1777418 true))

(assert (=> d!1777418 true))

(assert (=> d!1777418 true))

(assert (=> d!1777418 (= (Exists!2716 lambda!302227) (Exists!2716 lambda!302228))))

(declare-fun lt!2261608 () Unit!155996)

(declare-fun choose!42633 (Regex!15616 Regex!15616 List!63149) Unit!155996)

(assert (=> d!1777418 (= lt!2261608 (choose!42633 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326))))

(assert (=> d!1777418 (validRegex!7352 (regOne!31744 r!7292))))

(assert (=> d!1777418 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1345 (regOne!31744 r!7292) (regTwo!31744 r!7292) s!2326) lt!2261608)))

(declare-fun m!6598734 () Bool)

(assert (=> bs!1302363 m!6598734))

(declare-fun m!6598736 () Bool)

(assert (=> bs!1302363 m!6598736))

(declare-fun m!6598738 () Bool)

(assert (=> bs!1302363 m!6598738))

(assert (=> bs!1302363 m!6598706))

(assert (=> b!5626270 d!1777418))

(declare-fun d!1777420 () Bool)

(declare-fun isEmpty!34861 (Option!15625) Bool)

(assert (=> d!1777420 (= (isDefined!12328 (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) Nil!63025 s!2326 s!2326)) (not (isEmpty!34861 (findConcatSeparation!2039 (regOne!31744 r!7292) (regTwo!31744 r!7292) Nil!63025 s!2326 s!2326))))))

(declare-fun bs!1302364 () Bool)

(assert (= bs!1302364 d!1777420))

(assert (=> bs!1302364 m!6598502))

(declare-fun m!6598740 () Bool)

(assert (=> bs!1302364 m!6598740))

(assert (=> b!5626270 d!1777420))

(declare-fun bs!1302365 () Bool)

(declare-fun d!1777422 () Bool)

(assert (= bs!1302365 (and d!1777422 d!1777408)))

(declare-fun lambda!302231 () Int)

(assert (=> bs!1302365 (= lambda!302231 lambda!302219)))

(declare-fun b!5626520 () Bool)

(declare-fun e!3468121 () Regex!15616)

(assert (=> b!5626520 (= e!3468121 (h!69471 (unfocusZipperList!1044 zl!343)))))

(declare-fun b!5626521 () Bool)

(declare-fun e!3468120 () Bool)

(declare-fun lt!2261611 () Regex!15616)

(declare-fun isUnion!598 (Regex!15616) Bool)

(assert (=> b!5626521 (= e!3468120 (isUnion!598 lt!2261611))))

(declare-fun b!5626522 () Bool)

(declare-fun e!3468123 () Bool)

(assert (=> b!5626522 (= e!3468123 e!3468120)))

(declare-fun c!987714 () Bool)

(declare-fun tail!11073 (List!63147) List!63147)

(assert (=> b!5626522 (= c!987714 (isEmpty!34857 (tail!11073 (unfocusZipperList!1044 zl!343))))))

(declare-fun e!3468124 () Bool)

(assert (=> d!1777422 e!3468124))

(declare-fun res!2383047 () Bool)

(assert (=> d!1777422 (=> (not res!2383047) (not e!3468124))))

(assert (=> d!1777422 (= res!2383047 (validRegex!7352 lt!2261611))))

(assert (=> d!1777422 (= lt!2261611 e!3468121)))

(declare-fun c!987716 () Bool)

(declare-fun e!3468119 () Bool)

(assert (=> d!1777422 (= c!987716 e!3468119)))

(declare-fun res!2383046 () Bool)

(assert (=> d!1777422 (=> (not res!2383046) (not e!3468119))))

(assert (=> d!1777422 (= res!2383046 (is-Cons!63023 (unfocusZipperList!1044 zl!343)))))

(assert (=> d!1777422 (forall!14771 (unfocusZipperList!1044 zl!343) lambda!302231)))

(assert (=> d!1777422 (= (generalisedUnion!1479 (unfocusZipperList!1044 zl!343)) lt!2261611)))

(declare-fun b!5626523 () Bool)

(declare-fun e!3468122 () Regex!15616)

(assert (=> b!5626523 (= e!3468122 EmptyLang!15616)))

(declare-fun b!5626524 () Bool)

(assert (=> b!5626524 (= e!3468122 (Union!15616 (h!69471 (unfocusZipperList!1044 zl!343)) (generalisedUnion!1479 (t!376439 (unfocusZipperList!1044 zl!343)))))))

(declare-fun b!5626525 () Bool)

(declare-fun head!11978 (List!63147) Regex!15616)

(assert (=> b!5626525 (= e!3468120 (= lt!2261611 (head!11978 (unfocusZipperList!1044 zl!343))))))

(declare-fun b!5626526 () Bool)

(assert (=> b!5626526 (= e!3468119 (isEmpty!34857 (t!376439 (unfocusZipperList!1044 zl!343))))))

(declare-fun b!5626527 () Bool)

(assert (=> b!5626527 (= e!3468124 e!3468123)))

(declare-fun c!987713 () Bool)

(assert (=> b!5626527 (= c!987713 (isEmpty!34857 (unfocusZipperList!1044 zl!343)))))

(declare-fun b!5626528 () Bool)

(declare-fun isEmptyLang!1168 (Regex!15616) Bool)

(assert (=> b!5626528 (= e!3468123 (isEmptyLang!1168 lt!2261611))))

(declare-fun b!5626529 () Bool)

(assert (=> b!5626529 (= e!3468121 e!3468122)))

(declare-fun c!987715 () Bool)

(assert (=> b!5626529 (= c!987715 (is-Cons!63023 (unfocusZipperList!1044 zl!343)))))

(assert (= (and d!1777422 res!2383046) b!5626526))

(assert (= (and d!1777422 c!987716) b!5626520))

(assert (= (and d!1777422 (not c!987716)) b!5626529))

(assert (= (and b!5626529 c!987715) b!5626524))

(assert (= (and b!5626529 (not c!987715)) b!5626523))

(assert (= (and d!1777422 res!2383047) b!5626527))

(assert (= (and b!5626527 c!987713) b!5626528))

(assert (= (and b!5626527 (not c!987713)) b!5626522))

(assert (= (and b!5626522 c!987714) b!5626525))

(assert (= (and b!5626522 (not c!987714)) b!5626521))

(declare-fun m!6598742 () Bool)

(assert (=> b!5626521 m!6598742))

(assert (=> b!5626525 m!6598552))

(declare-fun m!6598744 () Bool)

(assert (=> b!5626525 m!6598744))

(declare-fun m!6598746 () Bool)

(assert (=> d!1777422 m!6598746))

(assert (=> d!1777422 m!6598552))

(declare-fun m!6598748 () Bool)

(assert (=> d!1777422 m!6598748))

(declare-fun m!6598750 () Bool)

(assert (=> b!5626524 m!6598750))

(declare-fun m!6598752 () Bool)

(assert (=> b!5626528 m!6598752))

(assert (=> b!5626527 m!6598552))

(declare-fun m!6598754 () Bool)

(assert (=> b!5626527 m!6598754))

(declare-fun m!6598756 () Bool)

(assert (=> b!5626526 m!6598756))

(assert (=> b!5626522 m!6598552))

(declare-fun m!6598758 () Bool)

(assert (=> b!5626522 m!6598758))

(assert (=> b!5626522 m!6598758))

(declare-fun m!6598760 () Bool)

(assert (=> b!5626522 m!6598760))

(assert (=> b!5626261 d!1777422))

(declare-fun bs!1302366 () Bool)

(declare-fun d!1777424 () Bool)

(assert (= bs!1302366 (and d!1777424 d!1777408)))

(declare-fun lambda!302234 () Int)

(assert (=> bs!1302366 (= lambda!302234 lambda!302219)))

(declare-fun bs!1302367 () Bool)

(assert (= bs!1302367 (and d!1777424 d!1777422)))

(assert (=> bs!1302367 (= lambda!302234 lambda!302231)))

(declare-fun lt!2261614 () List!63147)

(assert (=> d!1777424 (forall!14771 lt!2261614 lambda!302234)))

(declare-fun e!3468127 () List!63147)

(assert (=> d!1777424 (= lt!2261614 e!3468127)))

(declare-fun c!987719 () Bool)

(assert (=> d!1777424 (= c!987719 (is-Cons!63024 zl!343))))

(assert (=> d!1777424 (= (unfocusZipperList!1044 zl!343) lt!2261614)))

(declare-fun b!5626534 () Bool)

(assert (=> b!5626534 (= e!3468127 (Cons!63023 (generalisedConcat!1231 (exprs!5500 (h!69472 zl!343))) (unfocusZipperList!1044 (t!376440 zl!343))))))

(declare-fun b!5626535 () Bool)

(assert (=> b!5626535 (= e!3468127 Nil!63023)))

(assert (= (and d!1777424 c!987719) b!5626534))

(assert (= (and d!1777424 (not c!987719)) b!5626535))

(declare-fun m!6598762 () Bool)

(assert (=> d!1777424 m!6598762))

(assert (=> b!5626534 m!6598460))

(declare-fun m!6598764 () Bool)

(assert (=> b!5626534 m!6598764))

(assert (=> b!5626261 d!1777424))

(declare-fun d!1777426 () Bool)

(declare-fun c!987720 () Bool)

(assert (=> d!1777426 (= c!987720 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468128 () Bool)

(assert (=> d!1777426 (= (matchZipper!1754 lt!2261502 (t!376441 s!2326)) e!3468128)))

(declare-fun b!5626536 () Bool)

(assert (=> b!5626536 (= e!3468128 (nullableZipper!1599 lt!2261502))))

(declare-fun b!5626537 () Bool)

(assert (=> b!5626537 (= e!3468128 (matchZipper!1754 (derivationStepZipper!1703 lt!2261502 (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777426 c!987720) b!5626536))

(assert (= (and d!1777426 (not c!987720)) b!5626537))

(assert (=> d!1777426 m!6598688))

(declare-fun m!6598766 () Bool)

(assert (=> b!5626536 m!6598766))

(assert (=> b!5626537 m!6598692))

(assert (=> b!5626537 m!6598692))

(declare-fun m!6598768 () Bool)

(assert (=> b!5626537 m!6598768))

(assert (=> b!5626537 m!6598696))

(assert (=> b!5626537 m!6598768))

(assert (=> b!5626537 m!6598696))

(declare-fun m!6598770 () Bool)

(assert (=> b!5626537 m!6598770))

(assert (=> b!5626281 d!1777426))

(declare-fun d!1777428 () Bool)

(declare-fun nullableFct!1745 (Regex!15616) Bool)

(assert (=> d!1777428 (= (nullable!5648 (regTwo!31744 (regOne!31744 r!7292))) (nullableFct!1745 (regTwo!31744 (regOne!31744 r!7292))))))

(declare-fun bs!1302368 () Bool)

(assert (= bs!1302368 d!1777428))

(declare-fun m!6598772 () Bool)

(assert (=> bs!1302368 m!6598772))

(assert (=> b!5626271 d!1777428))

(declare-fun d!1777430 () Bool)

(assert (=> d!1777430 (= (flatMap!1229 lt!2261485 lambda!302197) (choose!42629 lt!2261485 lambda!302197))))

(declare-fun bs!1302369 () Bool)

(assert (= bs!1302369 d!1777430))

(declare-fun m!6598774 () Bool)

(assert (=> bs!1302369 m!6598774))

(assert (=> b!5626271 d!1777430))

(assert (=> b!5626271 d!1777402))

(declare-fun d!1777432 () Bool)

(assert (=> d!1777432 (= (flatMap!1229 lt!2261485 lambda!302197) (dynLambda!24645 lambda!302197 lt!2261497))))

(declare-fun lt!2261615 () Unit!155996)

(assert (=> d!1777432 (= lt!2261615 (choose!42630 lt!2261485 lt!2261497 lambda!302197))))

(assert (=> d!1777432 (= lt!2261485 (set.insert lt!2261497 (as set.empty (Set Context!10000))))))

(assert (=> d!1777432 (= (lemmaFlatMapOnSingletonSet!761 lt!2261485 lt!2261497 lambda!302197) lt!2261615)))

(declare-fun b_lambda!212813 () Bool)

(assert (=> (not b_lambda!212813) (not d!1777432)))

(declare-fun bs!1302370 () Bool)

(assert (= bs!1302370 d!1777432))

(assert (=> bs!1302370 m!6598534))

(declare-fun m!6598776 () Bool)

(assert (=> bs!1302370 m!6598776))

(declare-fun m!6598778 () Bool)

(assert (=> bs!1302370 m!6598778))

(assert (=> bs!1302370 m!6598550))

(assert (=> b!5626271 d!1777432))

(declare-fun bs!1302371 () Bool)

(declare-fun b!5626579 () Bool)

(assert (= bs!1302371 (and b!5626579 b!5626270)))

(declare-fun lambda!302239 () Int)

(assert (=> bs!1302371 (not (= lambda!302239 lambda!302196))))

(declare-fun bs!1302372 () Bool)

(assert (= bs!1302372 (and b!5626579 d!1777418)))

(assert (=> bs!1302372 (not (= lambda!302239 lambda!302228))))

(assert (=> bs!1302372 (not (= lambda!302239 lambda!302227))))

(assert (=> bs!1302371 (not (= lambda!302239 lambda!302195))))

(declare-fun bs!1302373 () Bool)

(assert (= bs!1302373 (and b!5626579 d!1777416)))

(assert (=> bs!1302373 (not (= lambda!302239 lambda!302222))))

(assert (=> b!5626579 true))

(assert (=> b!5626579 true))

(declare-fun bs!1302374 () Bool)

(declare-fun b!5626571 () Bool)

(assert (= bs!1302374 (and b!5626571 b!5626270)))

(declare-fun lambda!302240 () Int)

(assert (=> bs!1302374 (= lambda!302240 lambda!302196)))

(declare-fun bs!1302375 () Bool)

(assert (= bs!1302375 (and b!5626571 d!1777418)))

(assert (=> bs!1302375 (= lambda!302240 lambda!302228)))

(assert (=> bs!1302374 (not (= lambda!302240 lambda!302195))))

(declare-fun bs!1302376 () Bool)

(assert (= bs!1302376 (and b!5626571 d!1777416)))

(assert (=> bs!1302376 (not (= lambda!302240 lambda!302222))))

(assert (=> bs!1302375 (not (= lambda!302240 lambda!302227))))

(declare-fun bs!1302377 () Bool)

(assert (= bs!1302377 (and b!5626571 b!5626579)))

(assert (=> bs!1302377 (not (= lambda!302240 lambda!302239))))

(assert (=> b!5626571 true))

(assert (=> b!5626571 true))

(declare-fun b!5626570 () Bool)

(declare-fun e!3468148 () Bool)

(assert (=> b!5626570 (= e!3468148 (= s!2326 (Cons!63025 (c!987668 r!7292) Nil!63025)))))

(declare-fun e!3468151 () Bool)

(declare-fun call!423861 () Bool)

(assert (=> b!5626571 (= e!3468151 call!423861)))

(declare-fun b!5626572 () Bool)

(declare-fun e!3468150 () Bool)

(declare-fun call!423862 () Bool)

(assert (=> b!5626572 (= e!3468150 call!423862)))

(declare-fun b!5626573 () Bool)

(declare-fun res!2383065 () Bool)

(declare-fun e!3468153 () Bool)

(assert (=> b!5626573 (=> res!2383065 e!3468153)))

(assert (=> b!5626573 (= res!2383065 call!423862)))

(assert (=> b!5626573 (= e!3468151 e!3468153)))

(declare-fun b!5626574 () Bool)

(declare-fun e!3468152 () Bool)

(assert (=> b!5626574 (= e!3468150 e!3468152)))

(declare-fun res!2383066 () Bool)

(assert (=> b!5626574 (= res!2383066 (not (is-EmptyLang!15616 r!7292)))))

(assert (=> b!5626574 (=> (not res!2383066) (not e!3468152))))

(declare-fun b!5626575 () Bool)

(declare-fun c!987730 () Bool)

(assert (=> b!5626575 (= c!987730 (is-ElementMatch!15616 r!7292))))

(assert (=> b!5626575 (= e!3468152 e!3468148)))

(declare-fun bm!423856 () Bool)

(declare-fun c!987731 () Bool)

(assert (=> bm!423856 (= call!423861 (Exists!2716 (ite c!987731 lambda!302239 lambda!302240)))))

(declare-fun b!5626576 () Bool)

(declare-fun e!3468149 () Bool)

(declare-fun e!3468147 () Bool)

(assert (=> b!5626576 (= e!3468149 e!3468147)))

(declare-fun res!2383064 () Bool)

(assert (=> b!5626576 (= res!2383064 (matchRSpec!2719 (regOne!31745 r!7292) s!2326))))

(assert (=> b!5626576 (=> res!2383064 e!3468147)))

(declare-fun b!5626577 () Bool)

(assert (=> b!5626577 (= e!3468147 (matchRSpec!2719 (regTwo!31745 r!7292) s!2326))))

(declare-fun d!1777434 () Bool)

(declare-fun c!987732 () Bool)

(assert (=> d!1777434 (= c!987732 (is-EmptyExpr!15616 r!7292))))

(assert (=> d!1777434 (= (matchRSpec!2719 r!7292 s!2326) e!3468150)))

(declare-fun b!5626578 () Bool)

(assert (=> b!5626578 (= e!3468149 e!3468151)))

(assert (=> b!5626578 (= c!987731 (is-Star!15616 r!7292))))

(assert (=> b!5626579 (= e!3468153 call!423861)))

(declare-fun b!5626580 () Bool)

(declare-fun c!987729 () Bool)

(assert (=> b!5626580 (= c!987729 (is-Union!15616 r!7292))))

(assert (=> b!5626580 (= e!3468148 e!3468149)))

(declare-fun bm!423857 () Bool)

(assert (=> bm!423857 (= call!423862 (isEmpty!34860 s!2326))))

(assert (= (and d!1777434 c!987732) b!5626572))

(assert (= (and d!1777434 (not c!987732)) b!5626574))

(assert (= (and b!5626574 res!2383066) b!5626575))

(assert (= (and b!5626575 c!987730) b!5626570))

(assert (= (and b!5626575 (not c!987730)) b!5626580))

(assert (= (and b!5626580 c!987729) b!5626576))

(assert (= (and b!5626580 (not c!987729)) b!5626578))

(assert (= (and b!5626576 (not res!2383064)) b!5626577))

(assert (= (and b!5626578 c!987731) b!5626573))

(assert (= (and b!5626578 (not c!987731)) b!5626571))

(assert (= (and b!5626573 (not res!2383065)) b!5626579))

(assert (= (or b!5626579 b!5626571) bm!423856))

(assert (= (or b!5626572 b!5626573) bm!423857))

(declare-fun m!6598780 () Bool)

(assert (=> bm!423856 m!6598780))

(declare-fun m!6598782 () Bool)

(assert (=> b!5626576 m!6598782))

(declare-fun m!6598784 () Bool)

(assert (=> b!5626577 m!6598784))

(declare-fun m!6598786 () Bool)

(assert (=> bm!423857 m!6598786))

(assert (=> b!5626272 d!1777434))

(declare-fun b!5626609 () Bool)

(declare-fun e!3468173 () Bool)

(declare-fun lt!2261618 () Bool)

(declare-fun call!423865 () Bool)

(assert (=> b!5626609 (= e!3468173 (= lt!2261618 call!423865))))

(declare-fun b!5626610 () Bool)

(declare-fun res!2383086 () Bool)

(declare-fun e!3468172 () Bool)

(assert (=> b!5626610 (=> (not res!2383086) (not e!3468172))))

(assert (=> b!5626610 (= res!2383086 (not call!423865))))

(declare-fun b!5626611 () Bool)

(declare-fun res!2383089 () Bool)

(declare-fun e!3468168 () Bool)

(assert (=> b!5626611 (=> res!2383089 e!3468168)))

(assert (=> b!5626611 (= res!2383089 (not (is-ElementMatch!15616 r!7292)))))

(declare-fun e!3468171 () Bool)

(assert (=> b!5626611 (= e!3468171 e!3468168)))

(declare-fun b!5626612 () Bool)

(assert (=> b!5626612 (= e!3468173 e!3468171)))

(declare-fun c!987740 () Bool)

(assert (=> b!5626612 (= c!987740 (is-EmptyLang!15616 r!7292))))

(declare-fun b!5626613 () Bool)

(declare-fun e!3468169 () Bool)

(declare-fun e!3468170 () Bool)

(assert (=> b!5626613 (= e!3468169 e!3468170)))

(declare-fun res!2383087 () Bool)

(assert (=> b!5626613 (=> res!2383087 e!3468170)))

(assert (=> b!5626613 (= res!2383087 call!423865)))

(declare-fun b!5626614 () Bool)

(assert (=> b!5626614 (= e!3468172 (= (head!11977 s!2326) (c!987668 r!7292)))))

(declare-fun b!5626615 () Bool)

(assert (=> b!5626615 (= e!3468170 (not (= (head!11977 s!2326) (c!987668 r!7292))))))

(declare-fun b!5626616 () Bool)

(assert (=> b!5626616 (= e!3468171 (not lt!2261618))))

(declare-fun bm!423860 () Bool)

(assert (=> bm!423860 (= call!423865 (isEmpty!34860 s!2326))))

(declare-fun b!5626617 () Bool)

(assert (=> b!5626617 (= e!3468168 e!3468169)))

(declare-fun res!2383085 () Bool)

(assert (=> b!5626617 (=> (not res!2383085) (not e!3468169))))

(assert (=> b!5626617 (= res!2383085 (not lt!2261618))))

(declare-fun b!5626618 () Bool)

(declare-fun e!3468174 () Bool)

(assert (=> b!5626618 (= e!3468174 (nullable!5648 r!7292))))

(declare-fun d!1777436 () Bool)

(assert (=> d!1777436 e!3468173))

(declare-fun c!987739 () Bool)

(assert (=> d!1777436 (= c!987739 (is-EmptyExpr!15616 r!7292))))

(assert (=> d!1777436 (= lt!2261618 e!3468174)))

(declare-fun c!987741 () Bool)

(assert (=> d!1777436 (= c!987741 (isEmpty!34860 s!2326))))

(assert (=> d!1777436 (validRegex!7352 r!7292)))

(assert (=> d!1777436 (= (matchR!7801 r!7292 s!2326) lt!2261618)))

(declare-fun b!5626619 () Bool)

(declare-fun derivativeStep!4452 (Regex!15616 C!31502) Regex!15616)

(assert (=> b!5626619 (= e!3468174 (matchR!7801 (derivativeStep!4452 r!7292 (head!11977 s!2326)) (tail!11072 s!2326)))))

(declare-fun b!5626620 () Bool)

(declare-fun res!2383084 () Bool)

(assert (=> b!5626620 (=> (not res!2383084) (not e!3468172))))

(assert (=> b!5626620 (= res!2383084 (isEmpty!34860 (tail!11072 s!2326)))))

(declare-fun b!5626621 () Bool)

(declare-fun res!2383083 () Bool)

(assert (=> b!5626621 (=> res!2383083 e!3468168)))

(assert (=> b!5626621 (= res!2383083 e!3468172)))

(declare-fun res!2383088 () Bool)

(assert (=> b!5626621 (=> (not res!2383088) (not e!3468172))))

(assert (=> b!5626621 (= res!2383088 lt!2261618)))

(declare-fun b!5626622 () Bool)

(declare-fun res!2383090 () Bool)

(assert (=> b!5626622 (=> res!2383090 e!3468170)))

(assert (=> b!5626622 (= res!2383090 (not (isEmpty!34860 (tail!11072 s!2326))))))

(assert (= (and d!1777436 c!987741) b!5626618))

(assert (= (and d!1777436 (not c!987741)) b!5626619))

(assert (= (and d!1777436 c!987739) b!5626609))

(assert (= (and d!1777436 (not c!987739)) b!5626612))

(assert (= (and b!5626612 c!987740) b!5626616))

(assert (= (and b!5626612 (not c!987740)) b!5626611))

(assert (= (and b!5626611 (not res!2383089)) b!5626621))

(assert (= (and b!5626621 res!2383088) b!5626610))

(assert (= (and b!5626610 res!2383086) b!5626620))

(assert (= (and b!5626620 res!2383084) b!5626614))

(assert (= (and b!5626621 (not res!2383083)) b!5626617))

(assert (= (and b!5626617 res!2383085) b!5626613))

(assert (= (and b!5626613 (not res!2383087)) b!5626622))

(assert (= (and b!5626622 (not res!2383090)) b!5626615))

(assert (= (or b!5626609 b!5626610 b!5626613) bm!423860))

(declare-fun m!6598788 () Bool)

(assert (=> b!5626618 m!6598788))

(declare-fun m!6598790 () Bool)

(assert (=> b!5626615 m!6598790))

(assert (=> bm!423860 m!6598786))

(declare-fun m!6598792 () Bool)

(assert (=> b!5626622 m!6598792))

(assert (=> b!5626622 m!6598792))

(declare-fun m!6598794 () Bool)

(assert (=> b!5626622 m!6598794))

(assert (=> b!5626619 m!6598790))

(assert (=> b!5626619 m!6598790))

(declare-fun m!6598796 () Bool)

(assert (=> b!5626619 m!6598796))

(assert (=> b!5626619 m!6598792))

(assert (=> b!5626619 m!6598796))

(assert (=> b!5626619 m!6598792))

(declare-fun m!6598798 () Bool)

(assert (=> b!5626619 m!6598798))

(assert (=> b!5626620 m!6598792))

(assert (=> b!5626620 m!6598792))

(assert (=> b!5626620 m!6598794))

(assert (=> d!1777436 m!6598786))

(assert (=> d!1777436 m!6598468))

(assert (=> b!5626614 m!6598790))

(assert (=> b!5626272 d!1777436))

(declare-fun d!1777438 () Bool)

(assert (=> d!1777438 (= (matchR!7801 r!7292 s!2326) (matchRSpec!2719 r!7292 s!2326))))

(declare-fun lt!2261621 () Unit!155996)

(declare-fun choose!42634 (Regex!15616 List!63149) Unit!155996)

(assert (=> d!1777438 (= lt!2261621 (choose!42634 r!7292 s!2326))))

(assert (=> d!1777438 (validRegex!7352 r!7292)))

(assert (=> d!1777438 (= (mainMatchTheorem!2719 r!7292 s!2326) lt!2261621)))

(declare-fun bs!1302378 () Bool)

(assert (= bs!1302378 d!1777438))

(assert (=> bs!1302378 m!6598472))

(assert (=> bs!1302378 m!6598470))

(declare-fun m!6598800 () Bool)

(assert (=> bs!1302378 m!6598800))

(assert (=> bs!1302378 m!6598468))

(assert (=> b!5626272 d!1777438))

(declare-fun bm!423861 () Bool)

(declare-fun call!423866 () (Set Context!10000))

(assert (=> bm!423861 (= call!423866 (derivationStepZipperDown!958 (h!69471 (exprs!5500 lt!2261501)) (Context!10001 (t!376439 (exprs!5500 lt!2261501))) (h!69473 s!2326)))))

(declare-fun b!5626623 () Bool)

(declare-fun e!3468175 () (Set Context!10000))

(assert (=> b!5626623 (= e!3468175 call!423866)))

(declare-fun b!5626624 () Bool)

(assert (=> b!5626624 (= e!3468175 (as set.empty (Set Context!10000)))))

(declare-fun b!5626625 () Bool)

(declare-fun e!3468176 () Bool)

(assert (=> b!5626625 (= e!3468176 (nullable!5648 (h!69471 (exprs!5500 lt!2261501))))))

(declare-fun d!1777440 () Bool)

(declare-fun c!987742 () Bool)

(assert (=> d!1777440 (= c!987742 e!3468176)))

(declare-fun res!2383091 () Bool)

(assert (=> d!1777440 (=> (not res!2383091) (not e!3468176))))

(assert (=> d!1777440 (= res!2383091 (is-Cons!63023 (exprs!5500 lt!2261501)))))

(declare-fun e!3468177 () (Set Context!10000))

(assert (=> d!1777440 (= (derivationStepZipperUp!884 lt!2261501 (h!69473 s!2326)) e!3468177)))

(declare-fun b!5626626 () Bool)

(assert (=> b!5626626 (= e!3468177 (set.union call!423866 (derivationStepZipperUp!884 (Context!10001 (t!376439 (exprs!5500 lt!2261501))) (h!69473 s!2326))))))

(declare-fun b!5626627 () Bool)

(assert (=> b!5626627 (= e!3468177 e!3468175)))

(declare-fun c!987743 () Bool)

(assert (=> b!5626627 (= c!987743 (is-Cons!63023 (exprs!5500 lt!2261501)))))

(assert (= (and d!1777440 res!2383091) b!5626625))

(assert (= (and d!1777440 c!987742) b!5626626))

(assert (= (and d!1777440 (not c!987742)) b!5626627))

(assert (= (and b!5626627 c!987743) b!5626623))

(assert (= (and b!5626627 (not c!987743)) b!5626624))

(assert (= (or b!5626626 b!5626623) bm!423861))

(declare-fun m!6598802 () Bool)

(assert (=> bm!423861 m!6598802))

(declare-fun m!6598804 () Bool)

(assert (=> b!5626625 m!6598804))

(declare-fun m!6598806 () Bool)

(assert (=> b!5626626 m!6598806))

(assert (=> b!5626263 d!1777440))

(declare-fun d!1777442 () Bool)

(assert (=> d!1777442 (= (flatMap!1229 z!1189 lambda!302197) (choose!42629 z!1189 lambda!302197))))

(declare-fun bs!1302379 () Bool)

(assert (= bs!1302379 d!1777442))

(declare-fun m!6598808 () Bool)

(assert (=> bs!1302379 m!6598808))

(assert (=> b!5626263 d!1777442))

(declare-fun d!1777444 () Bool)

(assert (=> d!1777444 (= (flatMap!1229 z!1189 lambda!302197) (dynLambda!24645 lambda!302197 (h!69472 zl!343)))))

(declare-fun lt!2261622 () Unit!155996)

(assert (=> d!1777444 (= lt!2261622 (choose!42630 z!1189 (h!69472 zl!343) lambda!302197))))

(assert (=> d!1777444 (= z!1189 (set.insert (h!69472 zl!343) (as set.empty (Set Context!10000))))))

(assert (=> d!1777444 (= (lemmaFlatMapOnSingletonSet!761 z!1189 (h!69472 zl!343) lambda!302197) lt!2261622)))

(declare-fun b_lambda!212815 () Bool)

(assert (=> (not b_lambda!212815) (not d!1777444)))

(declare-fun bs!1302380 () Bool)

(assert (= bs!1302380 d!1777444))

(assert (=> bs!1302380 m!6598526))

(declare-fun m!6598810 () Bool)

(assert (=> bs!1302380 m!6598810))

(declare-fun m!6598812 () Bool)

(assert (=> bs!1302380 m!6598812))

(declare-fun m!6598814 () Bool)

(assert (=> bs!1302380 m!6598814))

(assert (=> b!5626263 d!1777444))

(declare-fun d!1777446 () Bool)

(assert (=> d!1777446 (= (nullable!5648 (h!69471 (exprs!5500 (h!69472 zl!343)))) (nullableFct!1745 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun bs!1302381 () Bool)

(assert (= bs!1302381 d!1777446))

(declare-fun m!6598816 () Bool)

(assert (=> bs!1302381 m!6598816))

(assert (=> b!5626263 d!1777446))

(declare-fun bm!423862 () Bool)

(declare-fun call!423867 () (Set Context!10000))

(assert (=> bm!423862 (= call!423867 (derivationStepZipperDown!958 (h!69471 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343))))))) (Context!10001 (t!376439 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343)))))))) (h!69473 s!2326)))))

(declare-fun b!5626628 () Bool)

(declare-fun e!3468178 () (Set Context!10000))

(assert (=> b!5626628 (= e!3468178 call!423867)))

(declare-fun b!5626629 () Bool)

(assert (=> b!5626629 (= e!3468178 (as set.empty (Set Context!10000)))))

(declare-fun b!5626630 () Bool)

(declare-fun e!3468179 () Bool)

(assert (=> b!5626630 (= e!3468179 (nullable!5648 (h!69471 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343)))))))))))

(declare-fun d!1777448 () Bool)

(declare-fun c!987744 () Bool)

(assert (=> d!1777448 (= c!987744 e!3468179)))

(declare-fun res!2383092 () Bool)

(assert (=> d!1777448 (=> (not res!2383092) (not e!3468179))))

(assert (=> d!1777448 (= res!2383092 (is-Cons!63023 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343))))))))))

(declare-fun e!3468180 () (Set Context!10000))

(assert (=> d!1777448 (= (derivationStepZipperUp!884 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343))))) (h!69473 s!2326)) e!3468180)))

(declare-fun b!5626631 () Bool)

(assert (=> b!5626631 (= e!3468180 (set.union call!423867 (derivationStepZipperUp!884 (Context!10001 (t!376439 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343)))))))) (h!69473 s!2326))))))

(declare-fun b!5626632 () Bool)

(assert (=> b!5626632 (= e!3468180 e!3468178)))

(declare-fun c!987745 () Bool)

(assert (=> b!5626632 (= c!987745 (is-Cons!63023 (exprs!5500 (Context!10001 (Cons!63023 (h!69471 (exprs!5500 (h!69472 zl!343))) (t!376439 (exprs!5500 (h!69472 zl!343))))))))))

(assert (= (and d!1777448 res!2383092) b!5626630))

(assert (= (and d!1777448 c!987744) b!5626631))

(assert (= (and d!1777448 (not c!987744)) b!5626632))

(assert (= (and b!5626632 c!987745) b!5626628))

(assert (= (and b!5626632 (not c!987745)) b!5626629))

(assert (= (or b!5626631 b!5626628) bm!423862))

(declare-fun m!6598818 () Bool)

(assert (=> bm!423862 m!6598818))

(declare-fun m!6598820 () Bool)

(assert (=> b!5626630 m!6598820))

(declare-fun m!6598822 () Bool)

(assert (=> b!5626631 m!6598822))

(assert (=> b!5626263 d!1777448))

(declare-fun b!5626655 () Bool)

(declare-fun e!3468198 () (Set Context!10000))

(assert (=> b!5626655 (= e!3468198 (set.insert lt!2261501 (as set.empty (Set Context!10000))))))

(declare-fun d!1777450 () Bool)

(declare-fun c!987756 () Bool)

(assert (=> d!1777450 (= c!987756 (and (is-ElementMatch!15616 (h!69471 (exprs!5500 (h!69472 zl!343)))) (= (c!987668 (h!69471 (exprs!5500 (h!69472 zl!343)))) (h!69473 s!2326))))))

(assert (=> d!1777450 (= (derivationStepZipperDown!958 (h!69471 (exprs!5500 (h!69472 zl!343))) lt!2261501 (h!69473 s!2326)) e!3468198)))

(declare-fun bm!423875 () Bool)

(declare-fun call!423882 () (Set Context!10000))

(declare-fun call!423883 () (Set Context!10000))

(assert (=> bm!423875 (= call!423882 call!423883)))

(declare-fun b!5626656 () Bool)

(declare-fun c!987758 () Bool)

(declare-fun e!3468197 () Bool)

(assert (=> b!5626656 (= c!987758 e!3468197)))

(declare-fun res!2383095 () Bool)

(assert (=> b!5626656 (=> (not res!2383095) (not e!3468197))))

(assert (=> b!5626656 (= res!2383095 (is-Concat!24461 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun e!3468194 () (Set Context!10000))

(declare-fun e!3468195 () (Set Context!10000))

(assert (=> b!5626656 (= e!3468194 e!3468195)))

(declare-fun b!5626657 () Bool)

(declare-fun call!423884 () (Set Context!10000))

(assert (=> b!5626657 (= e!3468194 (set.union call!423884 call!423883))))

(declare-fun b!5626658 () Bool)

(declare-fun e!3468196 () (Set Context!10000))

(declare-fun call!423881 () (Set Context!10000))

(assert (=> b!5626658 (= e!3468196 call!423881)))

(declare-fun b!5626659 () Bool)

(assert (=> b!5626659 (= e!3468195 (set.union call!423884 call!423882))))

(declare-fun b!5626660 () Bool)

(assert (=> b!5626660 (= e!3468197 (nullable!5648 (regOne!31744 (h!69471 (exprs!5500 (h!69472 zl!343))))))))

(declare-fun b!5626661 () Bool)

(declare-fun e!3468193 () (Set Context!10000))

(assert (=> b!5626661 (= e!3468195 e!3468193)))

(declare-fun c!987759 () Bool)

(assert (=> b!5626661 (= c!987759 (is-Concat!24461 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun b!5626662 () Bool)

(assert (=> b!5626662 (= e!3468196 (as set.empty (Set Context!10000)))))

(declare-fun b!5626663 () Bool)

(assert (=> b!5626663 (= e!3468193 call!423881)))

(declare-fun call!423880 () List!63147)

(declare-fun c!987760 () Bool)

(declare-fun bm!423876 () Bool)

(assert (=> bm!423876 (= call!423883 (derivationStepZipperDown!958 (ite c!987760 (regTwo!31745 (h!69471 (exprs!5500 (h!69472 zl!343)))) (ite c!987758 (regTwo!31744 (h!69471 (exprs!5500 (h!69472 zl!343)))) (ite c!987759 (regOne!31744 (h!69471 (exprs!5500 (h!69472 zl!343)))) (reg!15945 (h!69471 (exprs!5500 (h!69472 zl!343))))))) (ite (or c!987760 c!987758) lt!2261501 (Context!10001 call!423880)) (h!69473 s!2326)))))

(declare-fun bm!423877 () Bool)

(declare-fun call!423885 () List!63147)

(assert (=> bm!423877 (= call!423884 (derivationStepZipperDown!958 (ite c!987760 (regOne!31745 (h!69471 (exprs!5500 (h!69472 zl!343)))) (regOne!31744 (h!69471 (exprs!5500 (h!69472 zl!343))))) (ite c!987760 lt!2261501 (Context!10001 call!423885)) (h!69473 s!2326)))))

(declare-fun bm!423878 () Bool)

(assert (=> bm!423878 (= call!423881 call!423882)))

(declare-fun b!5626664 () Bool)

(declare-fun c!987757 () Bool)

(assert (=> b!5626664 (= c!987757 (is-Star!15616 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(assert (=> b!5626664 (= e!3468193 e!3468196)))

(declare-fun bm!423879 () Bool)

(declare-fun $colon$colon!1667 (List!63147 Regex!15616) List!63147)

(assert (=> bm!423879 (= call!423885 ($colon$colon!1667 (exprs!5500 lt!2261501) (ite (or c!987758 c!987759) (regTwo!31744 (h!69471 (exprs!5500 (h!69472 zl!343)))) (h!69471 (exprs!5500 (h!69472 zl!343))))))))

(declare-fun b!5626665 () Bool)

(assert (=> b!5626665 (= e!3468198 e!3468194)))

(assert (=> b!5626665 (= c!987760 (is-Union!15616 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun bm!423880 () Bool)

(assert (=> bm!423880 (= call!423880 call!423885)))

(assert (= (and d!1777450 c!987756) b!5626655))

(assert (= (and d!1777450 (not c!987756)) b!5626665))

(assert (= (and b!5626665 c!987760) b!5626657))

(assert (= (and b!5626665 (not c!987760)) b!5626656))

(assert (= (and b!5626656 res!2383095) b!5626660))

(assert (= (and b!5626656 c!987758) b!5626659))

(assert (= (and b!5626656 (not c!987758)) b!5626661))

(assert (= (and b!5626661 c!987759) b!5626663))

(assert (= (and b!5626661 (not c!987759)) b!5626664))

(assert (= (and b!5626664 c!987757) b!5626658))

(assert (= (and b!5626664 (not c!987757)) b!5626662))

(assert (= (or b!5626663 b!5626658) bm!423880))

(assert (= (or b!5626663 b!5626658) bm!423878))

(assert (= (or b!5626659 bm!423880) bm!423879))

(assert (= (or b!5626659 bm!423878) bm!423875))

(assert (= (or b!5626657 bm!423875) bm!423876))

(assert (= (or b!5626657 b!5626659) bm!423877))

(declare-fun m!6598824 () Bool)

(assert (=> bm!423879 m!6598824))

(declare-fun m!6598826 () Bool)

(assert (=> b!5626660 m!6598826))

(declare-fun m!6598828 () Bool)

(assert (=> bm!423876 m!6598828))

(declare-fun m!6598830 () Bool)

(assert (=> b!5626655 m!6598830))

(declare-fun m!6598832 () Bool)

(assert (=> bm!423877 m!6598832))

(assert (=> b!5626263 d!1777450))

(declare-fun bm!423881 () Bool)

(declare-fun call!423886 () (Set Context!10000))

(assert (=> bm!423881 (= call!423886 (derivationStepZipperDown!958 (h!69471 (exprs!5500 (h!69472 zl!343))) (Context!10001 (t!376439 (exprs!5500 (h!69472 zl!343)))) (h!69473 s!2326)))))

(declare-fun b!5626666 () Bool)

(declare-fun e!3468199 () (Set Context!10000))

(assert (=> b!5626666 (= e!3468199 call!423886)))

(declare-fun b!5626667 () Bool)

(assert (=> b!5626667 (= e!3468199 (as set.empty (Set Context!10000)))))

(declare-fun b!5626668 () Bool)

(declare-fun e!3468200 () Bool)

(assert (=> b!5626668 (= e!3468200 (nullable!5648 (h!69471 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun d!1777452 () Bool)

(declare-fun c!987761 () Bool)

(assert (=> d!1777452 (= c!987761 e!3468200)))

(declare-fun res!2383096 () Bool)

(assert (=> d!1777452 (=> (not res!2383096) (not e!3468200))))

(assert (=> d!1777452 (= res!2383096 (is-Cons!63023 (exprs!5500 (h!69472 zl!343))))))

(declare-fun e!3468201 () (Set Context!10000))

(assert (=> d!1777452 (= (derivationStepZipperUp!884 (h!69472 zl!343) (h!69473 s!2326)) e!3468201)))

(declare-fun b!5626669 () Bool)

(assert (=> b!5626669 (= e!3468201 (set.union call!423886 (derivationStepZipperUp!884 (Context!10001 (t!376439 (exprs!5500 (h!69472 zl!343)))) (h!69473 s!2326))))))

(declare-fun b!5626670 () Bool)

(assert (=> b!5626670 (= e!3468201 e!3468199)))

(declare-fun c!987762 () Bool)

(assert (=> b!5626670 (= c!987762 (is-Cons!63023 (exprs!5500 (h!69472 zl!343))))))

(assert (= (and d!1777452 res!2383096) b!5626668))

(assert (= (and d!1777452 c!987761) b!5626669))

(assert (= (and d!1777452 (not c!987761)) b!5626670))

(assert (= (and b!5626670 c!987762) b!5626666))

(assert (= (and b!5626670 (not c!987762)) b!5626667))

(assert (= (or b!5626669 b!5626666) bm!423881))

(declare-fun m!6598834 () Bool)

(assert (=> bm!423881 m!6598834))

(assert (=> b!5626668 m!6598528))

(declare-fun m!6598836 () Bool)

(assert (=> b!5626669 m!6598836))

(assert (=> b!5626263 d!1777452))

(declare-fun bs!1302382 () Bool)

(declare-fun d!1777454 () Bool)

(assert (= bs!1302382 (and d!1777454 d!1777408)))

(declare-fun lambda!302241 () Int)

(assert (=> bs!1302382 (= lambda!302241 lambda!302219)))

(declare-fun bs!1302383 () Bool)

(assert (= bs!1302383 (and d!1777454 d!1777422)))

(assert (=> bs!1302383 (= lambda!302241 lambda!302231)))

(declare-fun bs!1302384 () Bool)

(assert (= bs!1302384 (and d!1777454 d!1777424)))

(assert (=> bs!1302384 (= lambda!302241 lambda!302234)))

(assert (=> d!1777454 (= (inv!82288 (h!69472 zl!343)) (forall!14771 (exprs!5500 (h!69472 zl!343)) lambda!302241))))

(declare-fun bs!1302385 () Bool)

(assert (= bs!1302385 d!1777454))

(declare-fun m!6598838 () Bool)

(assert (=> bs!1302385 m!6598838))

(assert (=> b!5626264 d!1777454))

(declare-fun d!1777456 () Bool)

(declare-fun c!987763 () Bool)

(assert (=> d!1777456 (= c!987763 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468202 () Bool)

(assert (=> d!1777456 (= (matchZipper!1754 lt!2261487 (t!376441 s!2326)) e!3468202)))

(declare-fun b!5626671 () Bool)

(assert (=> b!5626671 (= e!3468202 (nullableZipper!1599 lt!2261487))))

(declare-fun b!5626672 () Bool)

(assert (=> b!5626672 (= e!3468202 (matchZipper!1754 (derivationStepZipper!1703 lt!2261487 (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777456 c!987763) b!5626671))

(assert (= (and d!1777456 (not c!987763)) b!5626672))

(assert (=> d!1777456 m!6598688))

(declare-fun m!6598840 () Bool)

(assert (=> b!5626671 m!6598840))

(assert (=> b!5626672 m!6598692))

(assert (=> b!5626672 m!6598692))

(declare-fun m!6598842 () Bool)

(assert (=> b!5626672 m!6598842))

(assert (=> b!5626672 m!6598696))

(assert (=> b!5626672 m!6598842))

(assert (=> b!5626672 m!6598696))

(declare-fun m!6598844 () Bool)

(assert (=> b!5626672 m!6598844))

(assert (=> b!5626283 d!1777456))

(declare-fun d!1777458 () Bool)

(declare-fun c!987764 () Bool)

(assert (=> d!1777458 (= c!987764 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468203 () Bool)

(assert (=> d!1777458 (= (matchZipper!1754 lt!2261491 (t!376441 s!2326)) e!3468203)))

(declare-fun b!5626673 () Bool)

(assert (=> b!5626673 (= e!3468203 (nullableZipper!1599 lt!2261491))))

(declare-fun b!5626674 () Bool)

(assert (=> b!5626674 (= e!3468203 (matchZipper!1754 (derivationStepZipper!1703 lt!2261491 (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777458 c!987764) b!5626673))

(assert (= (and d!1777458 (not c!987764)) b!5626674))

(assert (=> d!1777458 m!6598688))

(declare-fun m!6598846 () Bool)

(assert (=> b!5626673 m!6598846))

(assert (=> b!5626674 m!6598692))

(assert (=> b!5626674 m!6598692))

(declare-fun m!6598848 () Bool)

(assert (=> b!5626674 m!6598848))

(assert (=> b!5626674 m!6598696))

(assert (=> b!5626674 m!6598848))

(assert (=> b!5626674 m!6598696))

(declare-fun m!6598850 () Bool)

(assert (=> b!5626674 m!6598850))

(assert (=> b!5626283 d!1777458))

(declare-fun d!1777460 () Bool)

(declare-fun c!987765 () Bool)

(assert (=> d!1777460 (= c!987765 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468204 () Bool)

(assert (=> d!1777460 (= (matchZipper!1754 lt!2261506 (t!376441 s!2326)) e!3468204)))

(declare-fun b!5626675 () Bool)

(assert (=> b!5626675 (= e!3468204 (nullableZipper!1599 lt!2261506))))

(declare-fun b!5626676 () Bool)

(assert (=> b!5626676 (= e!3468204 (matchZipper!1754 (derivationStepZipper!1703 lt!2261506 (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777460 c!987765) b!5626675))

(assert (= (and d!1777460 (not c!987765)) b!5626676))

(assert (=> d!1777460 m!6598688))

(declare-fun m!6598852 () Bool)

(assert (=> b!5626675 m!6598852))

(assert (=> b!5626676 m!6598692))

(assert (=> b!5626676 m!6598692))

(declare-fun m!6598854 () Bool)

(assert (=> b!5626676 m!6598854))

(assert (=> b!5626676 m!6598696))

(assert (=> b!5626676 m!6598854))

(assert (=> b!5626676 m!6598696))

(declare-fun m!6598856 () Bool)

(assert (=> b!5626676 m!6598856))

(assert (=> b!5626283 d!1777460))

(declare-fun d!1777462 () Bool)

(declare-fun e!3468207 () Bool)

(assert (=> d!1777462 (= (matchZipper!1754 (set.union lt!2261506 lt!2261502) (t!376441 s!2326)) e!3468207)))

(declare-fun res!2383099 () Bool)

(assert (=> d!1777462 (=> res!2383099 e!3468207)))

(assert (=> d!1777462 (= res!2383099 (matchZipper!1754 lt!2261506 (t!376441 s!2326)))))

(declare-fun lt!2261625 () Unit!155996)

(declare-fun choose!42635 ((Set Context!10000) (Set Context!10000) List!63149) Unit!155996)

(assert (=> d!1777462 (= lt!2261625 (choose!42635 lt!2261506 lt!2261502 (t!376441 s!2326)))))

(assert (=> d!1777462 (= (lemmaZipperConcatMatchesSameAsBothZippers!641 lt!2261506 lt!2261502 (t!376441 s!2326)) lt!2261625)))

(declare-fun b!5626679 () Bool)

(assert (=> b!5626679 (= e!3468207 (matchZipper!1754 lt!2261502 (t!376441 s!2326)))))

(assert (= (and d!1777462 (not res!2383099)) b!5626679))

(declare-fun m!6598858 () Bool)

(assert (=> d!1777462 m!6598858))

(assert (=> d!1777462 m!6598480))

(declare-fun m!6598860 () Bool)

(assert (=> d!1777462 m!6598860))

(assert (=> b!5626679 m!6598498))

(assert (=> b!5626283 d!1777462))

(declare-fun d!1777464 () Bool)

(declare-fun e!3468208 () Bool)

(assert (=> d!1777464 (= (matchZipper!1754 (set.union lt!2261487 lt!2261509) (t!376441 s!2326)) e!3468208)))

(declare-fun res!2383100 () Bool)

(assert (=> d!1777464 (=> res!2383100 e!3468208)))

(assert (=> d!1777464 (= res!2383100 (matchZipper!1754 lt!2261487 (t!376441 s!2326)))))

(declare-fun lt!2261626 () Unit!155996)

(assert (=> d!1777464 (= lt!2261626 (choose!42635 lt!2261487 lt!2261509 (t!376441 s!2326)))))

(assert (=> d!1777464 (= (lemmaZipperConcatMatchesSameAsBothZippers!641 lt!2261487 lt!2261509 (t!376441 s!2326)) lt!2261626)))

(declare-fun b!5626680 () Bool)

(assert (=> b!5626680 (= e!3468208 (matchZipper!1754 lt!2261509 (t!376441 s!2326)))))

(assert (= (and d!1777464 (not res!2383100)) b!5626680))

(assert (=> d!1777464 m!6598490))

(assert (=> d!1777464 m!6598476))

(declare-fun m!6598862 () Bool)

(assert (=> d!1777464 m!6598862))

(assert (=> b!5626680 m!6598462))

(assert (=> b!5626273 d!1777464))

(assert (=> b!5626273 d!1777456))

(declare-fun d!1777466 () Bool)

(declare-fun c!987766 () Bool)

(assert (=> d!1777466 (= c!987766 (isEmpty!34860 (t!376441 s!2326)))))

(declare-fun e!3468209 () Bool)

(assert (=> d!1777466 (= (matchZipper!1754 (set.union lt!2261487 lt!2261509) (t!376441 s!2326)) e!3468209)))

(declare-fun b!5626681 () Bool)

(assert (=> b!5626681 (= e!3468209 (nullableZipper!1599 (set.union lt!2261487 lt!2261509)))))

(declare-fun b!5626682 () Bool)

(assert (=> b!5626682 (= e!3468209 (matchZipper!1754 (derivationStepZipper!1703 (set.union lt!2261487 lt!2261509) (head!11977 (t!376441 s!2326))) (tail!11072 (t!376441 s!2326))))))

(assert (= (and d!1777466 c!987766) b!5626681))

(assert (= (and d!1777466 (not c!987766)) b!5626682))

(assert (=> d!1777466 m!6598688))

(declare-fun m!6598864 () Bool)

(assert (=> b!5626681 m!6598864))

(assert (=> b!5626682 m!6598692))

(assert (=> b!5626682 m!6598692))

(declare-fun m!6598866 () Bool)

(assert (=> b!5626682 m!6598866))

(assert (=> b!5626682 m!6598696))

(assert (=> b!5626682 m!6598866))

(assert (=> b!5626682 m!6598696))

(declare-fun m!6598868 () Bool)

(assert (=> b!5626682 m!6598868))

(assert (=> b!5626273 d!1777466))

(declare-fun d!1777468 () Bool)

(assert (=> d!1777468 (= (nullable!5648 (regOne!31744 (regOne!31744 r!7292))) (nullableFct!1745 (regOne!31744 (regOne!31744 r!7292))))))

(declare-fun bs!1302386 () Bool)

(assert (= bs!1302386 d!1777468))

(declare-fun m!6598870 () Bool)

(assert (=> bs!1302386 m!6598870))

(assert (=> b!5626274 d!1777468))

(declare-fun bs!1302387 () Bool)

(declare-fun d!1777470 () Bool)

(assert (= bs!1302387 (and d!1777470 d!1777408)))

(declare-fun lambda!302244 () Int)

(assert (=> bs!1302387 (= lambda!302244 lambda!302219)))

(declare-fun bs!1302388 () Bool)

(assert (= bs!1302388 (and d!1777470 d!1777422)))

(assert (=> bs!1302388 (= lambda!302244 lambda!302231)))

(declare-fun bs!1302389 () Bool)

(assert (= bs!1302389 (and d!1777470 d!1777424)))

(assert (=> bs!1302389 (= lambda!302244 lambda!302234)))

(declare-fun bs!1302390 () Bool)

(assert (= bs!1302390 (and d!1777470 d!1777454)))

(assert (=> bs!1302390 (= lambda!302244 lambda!302241)))

(declare-fun b!5626703 () Bool)

(declare-fun e!3468222 () Regex!15616)

(assert (=> b!5626703 (= e!3468222 (Concat!24461 (h!69471 (exprs!5500 (h!69472 zl!343))) (generalisedConcat!1231 (t!376439 (exprs!5500 (h!69472 zl!343))))))))

(declare-fun e!3468223 () Bool)

(assert (=> d!1777470 e!3468223))

(declare-fun res!2383106 () Bool)

(assert (=> d!1777470 (=> (not res!2383106) (not e!3468223))))

(declare-fun lt!2261629 () Regex!15616)

(assert (=> d!1777470 (= res!2383106 (validRegex!7352 lt!2261629))))

(declare-fun e!3468225 () Regex!15616)

(assert (=> d!1777470 (= lt!2261629 e!3468225)))

(declare-fun c!987778 () Bool)

(declare-fun e!3468227 () Bool)

(assert (=> d!1777470 (= c!987778 e!3468227)))

(declare-fun res!2383105 () Bool)

(assert (=> d!1777470 (=> (not res!2383105) (not e!3468227))))

(assert (=> d!1777470 (= res!2383105 (is-Cons!63023 (exprs!5500 (h!69472 zl!343))))))

(assert (=> d!1777470 (forall!14771 (exprs!5500 (h!69472 zl!343)) lambda!302244)))

(assert (=> d!1777470 (= (generalisedConcat!1231 (exprs!5500 (h!69472 zl!343))) lt!2261629)))

(declare-fun b!5626704 () Bool)

(assert (=> b!5626704 (= e!3468225 (h!69471 (exprs!5500 (h!69472 zl!343))))))

(declare-fun b!5626705 () Bool)

(declare-fun e!3468226 () Bool)

(assert (=> b!5626705 (= e!3468226 (= lt!2261629 (head!11978 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun b!5626706 () Bool)

(assert (=> b!5626706 (= e!3468225 e!3468222)))

(declare-fun c!987776 () Bool)

(assert (=> b!5626706 (= c!987776 (is-Cons!63023 (exprs!5500 (h!69472 zl!343))))))

(declare-fun b!5626707 () Bool)

(declare-fun e!3468224 () Bool)

(declare-fun isEmptyExpr!1158 (Regex!15616) Bool)

(assert (=> b!5626707 (= e!3468224 (isEmptyExpr!1158 lt!2261629))))

(declare-fun b!5626708 () Bool)

(assert (=> b!5626708 (= e!3468222 EmptyExpr!15616)))

(declare-fun b!5626709 () Bool)

(assert (=> b!5626709 (= e!3468227 (isEmpty!34857 (t!376439 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun b!5626710 () Bool)

(assert (=> b!5626710 (= e!3468224 e!3468226)))

(declare-fun c!987775 () Bool)

(assert (=> b!5626710 (= c!987775 (isEmpty!34857 (tail!11073 (exprs!5500 (h!69472 zl!343)))))))

(declare-fun b!5626711 () Bool)

(assert (=> b!5626711 (= e!3468223 e!3468224)))

(declare-fun c!987777 () Bool)

(assert (=> b!5626711 (= c!987777 (isEmpty!34857 (exprs!5500 (h!69472 zl!343))))))

(declare-fun b!5626712 () Bool)

(declare-fun isConcat!681 (Regex!15616) Bool)

(assert (=> b!5626712 (= e!3468226 (isConcat!681 lt!2261629))))

(assert (= (and d!1777470 res!2383105) b!5626709))

(assert (= (and d!1777470 c!987778) b!5626704))

(assert (= (and d!1777470 (not c!987778)) b!5626706))

(assert (= (and b!5626706 c!987776) b!5626703))

(assert (= (and b!5626706 (not c!987776)) b!5626708))

(assert (= (and d!1777470 res!2383106) b!5626711))

(assert (= (and b!5626711 c!987777) b!5626707))

(assert (= (and b!5626711 (not c!987777)) b!5626710))

(assert (= (and b!5626710 c!987775) b!5626705))

(assert (= (and b!5626710 (not c!987775)) b!5626712))

(declare-fun m!6598872 () Bool)

(assert (=> b!5626712 m!6598872))

(assert (=> b!5626709 m!6598500))

(declare-fun m!6598874 () Bool)

(assert (=> b!5626710 m!6598874))

(assert (=> b!5626710 m!6598874))

(declare-fun m!6598876 () Bool)

(assert (=> b!5626710 m!6598876))

(declare-fun m!6598878 () Bool)

(assert (=> b!5626707 m!6598878))

(declare-fun m!6598880 () Bool)

(assert (=> b!5626711 m!6598880))

(declare-fun m!6598882 () Bool)

(assert (=> b!5626703 m!6598882))

(declare-fun m!6598884 () Bool)

(assert (=> d!1777470 m!6598884))

(declare-fun m!6598886 () Bool)

(assert (=> d!1777470 m!6598886))

(declare-fun m!6598888 () Bool)

(assert (=> b!5626705 m!6598888))

(assert (=> b!5626265 d!1777470))

(declare-fun b!5626713 () Bool)

(declare-fun e!3468233 () (Set Context!10000))

(assert (=> b!5626713 (= e!3468233 (set.insert lt!2261501 (as set.empty (Set Context!10000))))))

(declare-fun d!1777472 () Bool)

(declare-fun c!987779 () Bool)

(assert (=> d!1777472 (= c!987779 (and (is-ElementMatch!15616 (regTwo!31744 (regOne!31744 r!7292))) (= (c!987668 (regTwo!31744 (regOne!31744 r!7292))) (h!69473 s!2326))))))

(assert (=> d!1777472 (= (derivationStepZipperDown!958 (regTwo!31744 (regOne!31744 r!7292)) lt!2261501 (h!69473 s!2326)) e!3468233)))

(declare-fun bm!423882 () Bool)

(declare-fun call!423889 () (Set Context!10000))

(declare-fun call!423890 () (Set Context!10000))

(assert (=> bm!423882 (= call!423889 call!423890)))

(declare-fun b!5626714 () Bool)

(declare-fun c!987781 () Bool)

(declare-fun e!3468232 () Bool)

(assert (=> b!5626714 (= c!987781 e!3468232)))

(declare-fun res!2383107 () Bool)

(assert (=> b!5626714 (=> (not res!2383107) (not e!3468232))))

(assert (=> b!5626714 (= res!2383107 (is-Concat!24461 (regTwo!31744 (regOne!31744 r!7292))))))

(declare-fun e!3468229 () (Set Context!10000))

(declare-fun e!3468230 () (Set Context!10000))

(assert (=> b!5626714 (= e!3468229 e!3468230)))

(declare-fun b!5626715 () Bool)

(declare-fun call!423891 () (Set Context!10000))

(assert (=> b!5626715 (= e!3468229 (set.union call!423891 call!423890))))

(declare-fun b!5626716 () Bool)

(declare-fun e!3468231 () (Set Context!10000))

(declare-fun call!423888 () (Set Context!10000))

(assert (=> b!5626716 (= e!3468231 call!423888)))

(declare-fun b!5626717 () Bool)

(assert (=> b!5626717 (= e!3468230 (set.union call!423891 call!423889))))

(declare-fun b!5626718 () Bool)

(assert (=> b!5626718 (= e!3468232 (nullable!5648 (regOne!31744 (regTwo!31744 (regOne!31744 r!7292)))))))

(declare-fun b!5626719 () Bool)

(declare-fun e!3468228 () (Set Context!10000))

(assert (=> b!5626719 (= e!3468230 e!3468228)))

(declare-fun c!987782 () Bool)

(assert (=> b!5626719 (= c!987782 (is-Concat!24461 (regTwo!31744 (regOne!31744 r!7292))))))

(declare-fun b!5626720 () Bool)

(assert (=> b!5626720 (= e!3468231 (as set.empty (Set Context!10000)))))

(declare-fun b!5626721 () Bool)

(assert (=> b!5626721 (= e!3468228 call!423888)))

(declare-fun c!987783 () Bool)

(declare-fun call!423887 () List!63147)

(declare-fun bm!423883 () Bool)

(assert (=> bm!423883 (= call!423890 (derivationStepZipperDown!958 (ite c!987783 (regTwo!31745 (regTwo!31744 (regOne!31744 r!7292))) (ite c!987781 (regTwo!31744 (regTwo!31744 (regOne!31744 r!7292))) (ite c!987782 (regOne!31744 (regTwo!31744 (regOne!31744 r!7292))) (reg!15945 (regTwo!31744 (regOne!31744 r!7292)))))) (ite (or c!987783 c!987781) lt!2261501 (Context!10001 call!423887)) (h!69473 s!2326)))))

(declare-fun bm!423884 () Bool)

(declare-fun call!423892 () List!63147)

(assert (=> bm!423884 (= call!423891 (derivationStepZipperDown!958 (ite c!987783 (regOne!31745 (regTwo!31744 (regOne!31744 r!7292))) (regOne!31744 (regTwo!31744 (regOne!31744 r!7292)))) (ite c!987783 lt!2261501 (Context!10001 call!423892)) (h!69473 s!2326)))))

(declare-fun bm!423885 () Bool)

(assert (=> bm!423885 (= call!423888 call!423889)))

(declare-fun b!5626722 () Bool)

(declare-fun c!987780 () Bool)

(assert (=> b!5626722 (= c!987780 (is-Star!15616 (regTwo!31744 (regOne!31744 r!7292))))))

(assert (=> b!5626722 (= e!3468228 e!3468231)))

(declare-fun bm!423886 () Bool)

(assert (=> bm!423886 (= call!423892 ($colon$colon!1667 (exprs!5500 lt!2261501) (ite (or c!987781 c!987782) (regTwo!31744 (regTwo!31744 (regOne!31744 r!7292))) (regTwo!31744 (regOne!31744 r!7292)))))))

(declare-fun b!5626723 () Bool)

(assert (=> b!5626723 (= e!3468233 e!3468229)))

(assert (=> b!5626723 (= c!987783 (is-Union!15616 (regTwo!31744 (regOne!31744 r!7292))))))

(declare-fun bm!423887 () Bool)

(assert (=> bm!423887 (= call!423887 call!423892)))

(assert (= (and d!1777472 c!987779) b!5626713))

(assert (= (and d!1777472 (not c!987779)) b!5626723))

(assert (= (and b!5626723 c!987783) b!5626715))

(assert (= (and b!5626723 (not c!987783)) b!5626714))

(assert (= (and b!5626714 res!2383107) b!5626718))

(assert (= (and b!5626714 c!987781) b!5626717))

(assert (= (and b!5626714 (not c!987781)) b!5626719))

(assert (= (and b!5626719 c!987782) b!5626721))

(assert (= (and b!5626719 (not c!987782)) b!5626722))

(assert (= (and b!5626722 c!987780) b!5626716))

(assert (= (and b!5626722 (not c!987780)) b!5626720))

(assert (= (or b!5626721 b!5626716) bm!423887))

(assert (= (or b!5626721 b!5626716) bm!423885))

(assert (= (or b!5626717 bm!423887) bm!423886))

(assert (= (or b!5626717 bm!423885) bm!423882))

(assert (= (or b!5626715 bm!423882) bm!423883))

(assert (= (or b!5626715 b!5626717) bm!423884))

(declare-fun m!6598890 () Bool)

(assert (=> bm!423886 m!6598890))

(declare-fun m!6598892 () Bool)

(assert (=> b!5626718 m!6598892))

(declare-fun m!6598894 () Bool)

(assert (=> bm!423883 m!6598894))

(assert (=> b!5626713 m!6598830))

(declare-fun m!6598896 () Bool)

(assert (=> bm!423884 m!6598896))

(assert (=> b!5626285 d!1777472))

(declare-fun b!5626724 () Bool)

(declare-fun e!3468239 () (Set Context!10000))

(assert (=> b!5626724 (= e!3468239 (set.insert lt!2261497 (as set.empty (Set Context!10000))))))

(declare-fun d!1777474 () Bool)

(declare-fun c!987784 () Bool)

(assert (=> d!1777474 (= c!987784 (and (is-ElementMatch!15616 (regOne!31744 (regOne!31744 r!7292))) (= (c!987668 (regOne!31744 (regOne!31744 r!7292))) (h!69473 s!2326))))))

(assert (=> d!1777474 (= (derivationStepZipperDown!958 (regOne!31744 (regOne!31744 r!7292)) lt!2261497 (h!69473 s!2326)) e!3468239)))

(declare-fun bm!423888 () Bool)

(declare-fun call!423895 () (Set Context!10000))

(declare-fun call!423896 () (Set Context!10000))

(assert (=> bm!423888 (= call!423895 call!423896)))

(declare-fun b!5626725 () Bool)

(declare-fun c!987786 () Bool)

(declare-fun e!3468238 () Bool)

(assert (=> b!5626725 (= c!987786 e!3468238)))

(declare-fun res!2383108 () Bool)

(assert (=> b!5626725 (=> (not res!2383108) (not e!3468238))))

(assert (=> b!5626725 (= res!2383108 (is-Concat!24461 (regOne!31744 (regOne!31744 r!7292))))))

(declare-fun e!3468235 () (Set Context!10000))

(declare-fun e!3468236 () (Set Context!10000))

(assert (=> b!5626725 (= e!3468235 e!3468236)))

(declare-fun b!5626726 () Bool)

(declare-fun call!423897 () (Set Context!10000))

(assert (=> b!5626726 (= e!3468235 (set.union call!423897 call!423896))))

(declare-fun b!5626727 () Bool)

(declare-fun e!3468237 () (Set Context!10000))

(declare-fun call!423894 () (Set Context!10000))

(assert (=> b!5626727 (= e!3468237 call!423894)))

(declare-fun b!5626728 () Bool)

(assert (=> b!5626728 (= e!3468236 (set.union call!423897 call!423895))))

(declare-fun b!5626729 () Bool)

(assert (=> b!5626729 (= e!3468238 (nullable!5648 (regOne!31744 (regOne!31744 (regOne!31744 r!7292)))))))

(declare-fun b!5626730 () Bool)

(declare-fun e!3468234 () (Set Context!10000))

(assert (=> b!5626730 (= e!3468236 e!3468234)))

(declare-fun c!987787 () Bool)

(assert (=> b!5626730 (= c!987787 (is-Concat!24461 (regOne!31744 (regOne!31744 r!7292))))))

(declare-fun b!5626731 () Bool)

(assert (=> b!5626731 (= e!3468237 (as set.empty (Set Context!10000)))))

(declare-fun b!5626732 () Bool)

(assert (=> b!5626732 (= e!3468234 call!423894)))

(declare-fun call!423893 () List!63147)

(declare-fun c!987788 () Bool)

(declare-fun bm!423889 () Bool)

(assert (=> bm!423889 (= call!423896 (derivationStepZipperDown!958 (ite c!987788 (regTwo!31745 (regOne!31744 (regOne!31744 r!7292))) (ite c!987786 (regTwo!31744 (regOne!31744 (regOne!31744 r!7292))) (ite c!987787 (regOne!31744 (regOne!31744 (regOne!31744 r!7292))) (reg!15945 (regOne!31744 (regOne!31744 r!7292)))))) (ite (or c!987788 c!987786) lt!2261497 (Context!10001 call!423893)) (h!69473 s!2326)))))

(declare-fun bm!423890 () Bool)

(declare-fun call!423898 () List!63147)

(assert (=> bm!423890 (= call!423897 (derivationStepZipperDown!958 (ite c!987788 (regOne!31745 (regOne!31744 (regOne!31744 r!7292))) (regOne!31744 (regOne!31744 (regOne!31744 r!7292)))) (ite c!987788 lt!2261497 (Context!10001 call!423898)) (h!69473 s!2326)))))

(declare-fun bm!423891 () Bool)

(assert (=> bm!423891 (= call!423894 call!423895)))

(declare-fun b!5626733 () Bool)

(declare-fun c!987785 () Bool)

(assert (=> b!5626733 (= c!987785 (is-Star!15616 (regOne!31744 (regOne!31744 r!7292))))))

(assert (=> b!5626733 (= e!3468234 e!3468237)))

(declare-fun bm!423892 () Bool)

(assert (=> bm!423892 (= call!423898 ($colon$colon!1667 (exprs!5500 lt!2261497) (ite (or c!987786 c!987787) (regTwo!31744 (regOne!31744 (regOne!31744 r!7292))) (regOne!31744 (regOne!31744 r!7292)))))))

(declare-fun b!5626734 () Bool)

(assert (=> b!5626734 (= e!3468239 e!3468235)))

(assert (=> b!5626734 (= c!987788 (is-Union!15616 (regOne!31744 (regOne!31744 r!7292))))))

(declare-fun bm!423893 () Bool)

(assert (=> bm!423893 (= call!423893 call!423898)))

(assert (= (and d!1777474 c!987784) b!5626724))

(assert (= (and d!1777474 (not c!987784)) b!5626734))

(assert (= (and b!5626734 c!987788) b!5626726))

(assert (= (and b!5626734 (not c!987788)) b!5626725))

(assert (= (and b!5626725 res!2383108) b!5626729))

(assert (= (and b!5626725 c!987786) b!5626728))

(assert (= (and b!5626725 (not c!987786)) b!5626730))

(assert (= (and b!5626730 c!987787) b!5626732))

(assert (= (and b!5626730 (not c!987787)) b!5626733))

(assert (= (and b!5626733 c!987785) b!5626727))

(assert (= (and b!5626733 (not c!987785)) b!5626731))

(assert (= (or b!5626732 b!5626727) bm!423893))

(assert (= (or b!5626732 b!5626727) bm!423891))

(assert (= (or b!5626728 bm!423893) bm!423892))

(assert (= (or b!5626728 bm!423891) bm!423888))

(assert (= (or b!5626726 bm!423888) bm!423889))

(assert (= (or b!5626726 b!5626728) bm!423890))

(declare-fun m!6598898 () Bool)

(assert (=> bm!423892 m!6598898))

(declare-fun m!6598900 () Bool)

(assert (=> b!5626729 m!6598900))

(declare-fun m!6598902 () Bool)

(assert (=> bm!423889 m!6598902))

(assert (=> b!5626724 m!6598550))

(declare-fun m!6598904 () Bool)

(assert (=> bm!423890 m!6598904))

(assert (=> b!5626285 d!1777474))

(assert (=> b!5626286 d!1777426))

(declare-fun b!5626746 () Bool)

(declare-fun e!3468242 () Bool)

(declare-fun tp!1557784 () Bool)

(declare-fun tp!1557782 () Bool)

(assert (=> b!5626746 (= e!3468242 (and tp!1557784 tp!1557782))))

(declare-fun b!5626748 () Bool)

(declare-fun tp!1557783 () Bool)

(declare-fun tp!1557785 () Bool)

(assert (=> b!5626748 (= e!3468242 (and tp!1557783 tp!1557785))))

(declare-fun b!5626745 () Bool)

(assert (=> b!5626745 (= e!3468242 tp_is_empty!40485)))

(assert (=> b!5626262 (= tp!1557736 e!3468242)))

(declare-fun b!5626747 () Bool)

(declare-fun tp!1557786 () Bool)

(assert (=> b!5626747 (= e!3468242 tp!1557786)))

(assert (= (and b!5626262 (is-ElementMatch!15616 (regOne!31744 r!7292))) b!5626745))

(assert (= (and b!5626262 (is-Concat!24461 (regOne!31744 r!7292))) b!5626746))

(assert (= (and b!5626262 (is-Star!15616 (regOne!31744 r!7292))) b!5626747))

(assert (= (and b!5626262 (is-Union!15616 (regOne!31744 r!7292))) b!5626748))

(declare-fun b!5626750 () Bool)

(declare-fun e!3468243 () Bool)

(declare-fun tp!1557789 () Bool)

(declare-fun tp!1557787 () Bool)

(assert (=> b!5626750 (= e!3468243 (and tp!1557789 tp!1557787))))

(declare-fun b!5626752 () Bool)

(declare-fun tp!1557788 () Bool)

(declare-fun tp!1557790 () Bool)

(assert (=> b!5626752 (= e!3468243 (and tp!1557788 tp!1557790))))

(declare-fun b!5626749 () Bool)

(assert (=> b!5626749 (= e!3468243 tp_is_empty!40485)))

(assert (=> b!5626262 (= tp!1557735 e!3468243)))

(declare-fun b!5626751 () Bool)

(declare-fun tp!1557791 () Bool)

(assert (=> b!5626751 (= e!3468243 tp!1557791)))

(assert (= (and b!5626262 (is-ElementMatch!15616 (regTwo!31744 r!7292))) b!5626749))

(assert (= (and b!5626262 (is-Concat!24461 (regTwo!31744 r!7292))) b!5626750))

(assert (= (and b!5626262 (is-Star!15616 (regTwo!31744 r!7292))) b!5626751))

(assert (= (and b!5626262 (is-Union!15616 (regTwo!31744 r!7292))) b!5626752))

(declare-fun b!5626757 () Bool)

(declare-fun e!3468246 () Bool)

(declare-fun tp!1557796 () Bool)

(declare-fun tp!1557797 () Bool)

(assert (=> b!5626757 (= e!3468246 (and tp!1557796 tp!1557797))))

(assert (=> b!5626282 (= tp!1557737 e!3468246)))

(assert (= (and b!5626282 (is-Cons!63023 (exprs!5500 (h!69472 zl!343)))) b!5626757))

(declare-fun b!5626765 () Bool)

(declare-fun e!3468252 () Bool)

(declare-fun tp!1557802 () Bool)

(assert (=> b!5626765 (= e!3468252 tp!1557802)))

(declare-fun b!5626764 () Bool)

(declare-fun e!3468251 () Bool)

(declare-fun tp!1557803 () Bool)

(assert (=> b!5626764 (= e!3468251 (and (inv!82288 (h!69472 (t!376440 zl!343))) e!3468252 tp!1557803))))

(assert (=> b!5626264 (= tp!1557734 e!3468251)))

(assert (= b!5626764 b!5626765))

(assert (= (and b!5626264 (is-Cons!63024 (t!376440 zl!343))) b!5626764))

(declare-fun m!6598906 () Bool)

(assert (=> b!5626764 m!6598906))

(declare-fun b!5626766 () Bool)

(declare-fun e!3468253 () Bool)

(declare-fun tp!1557804 () Bool)

(declare-fun tp!1557805 () Bool)

(assert (=> b!5626766 (= e!3468253 (and tp!1557804 tp!1557805))))

(assert (=> b!5626284 (= tp!1557741 e!3468253)))

(assert (= (and b!5626284 (is-Cons!63023 (exprs!5500 setElem!37561))) b!5626766))

(declare-fun b!5626768 () Bool)

(declare-fun e!3468254 () Bool)

(declare-fun tp!1557808 () Bool)

(declare-fun tp!1557806 () Bool)

(assert (=> b!5626768 (= e!3468254 (and tp!1557808 tp!1557806))))

(declare-fun b!5626770 () Bool)

(declare-fun tp!1557807 () Bool)

(declare-fun tp!1557809 () Bool)

(assert (=> b!5626770 (= e!3468254 (and tp!1557807 tp!1557809))))

(declare-fun b!5626767 () Bool)

(assert (=> b!5626767 (= e!3468254 tp_is_empty!40485)))

(assert (=> b!5626259 (= tp!1557733 e!3468254)))

(declare-fun b!5626769 () Bool)

(declare-fun tp!1557810 () Bool)

(assert (=> b!5626769 (= e!3468254 tp!1557810)))

(assert (= (and b!5626259 (is-ElementMatch!15616 (reg!15945 r!7292))) b!5626767))

(assert (= (and b!5626259 (is-Concat!24461 (reg!15945 r!7292))) b!5626768))

(assert (= (and b!5626259 (is-Star!15616 (reg!15945 r!7292))) b!5626769))

(assert (= (and b!5626259 (is-Union!15616 (reg!15945 r!7292))) b!5626770))

(declare-fun b!5626772 () Bool)

(declare-fun e!3468255 () Bool)

(declare-fun tp!1557813 () Bool)

(declare-fun tp!1557811 () Bool)

(assert (=> b!5626772 (= e!3468255 (and tp!1557813 tp!1557811))))

(declare-fun b!5626774 () Bool)

(declare-fun tp!1557812 () Bool)

(declare-fun tp!1557814 () Bool)

(assert (=> b!5626774 (= e!3468255 (and tp!1557812 tp!1557814))))

(declare-fun b!5626771 () Bool)

(assert (=> b!5626771 (= e!3468255 tp_is_empty!40485)))

(assert (=> b!5626279 (= tp!1557732 e!3468255)))

(declare-fun b!5626773 () Bool)

(declare-fun tp!1557815 () Bool)

(assert (=> b!5626773 (= e!3468255 tp!1557815)))

(assert (= (and b!5626279 (is-ElementMatch!15616 (regOne!31745 r!7292))) b!5626771))

(assert (= (and b!5626279 (is-Concat!24461 (regOne!31745 r!7292))) b!5626772))

(assert (= (and b!5626279 (is-Star!15616 (regOne!31745 r!7292))) b!5626773))

(assert (= (and b!5626279 (is-Union!15616 (regOne!31745 r!7292))) b!5626774))

(declare-fun b!5626776 () Bool)

(declare-fun e!3468256 () Bool)

(declare-fun tp!1557818 () Bool)

(declare-fun tp!1557816 () Bool)

(assert (=> b!5626776 (= e!3468256 (and tp!1557818 tp!1557816))))

(declare-fun b!5626778 () Bool)

(declare-fun tp!1557817 () Bool)

(declare-fun tp!1557819 () Bool)

(assert (=> b!5626778 (= e!3468256 (and tp!1557817 tp!1557819))))

(declare-fun b!5626775 () Bool)

(assert (=> b!5626775 (= e!3468256 tp_is_empty!40485)))

(assert (=> b!5626279 (= tp!1557740 e!3468256)))

(declare-fun b!5626777 () Bool)

(declare-fun tp!1557820 () Bool)

(assert (=> b!5626777 (= e!3468256 tp!1557820)))

(assert (= (and b!5626279 (is-ElementMatch!15616 (regTwo!31745 r!7292))) b!5626775))

(assert (= (and b!5626279 (is-Concat!24461 (regTwo!31745 r!7292))) b!5626776))

(assert (= (and b!5626279 (is-Star!15616 (regTwo!31745 r!7292))) b!5626777))

(assert (= (and b!5626279 (is-Union!15616 (regTwo!31745 r!7292))) b!5626778))

(declare-fun condSetEmpty!37567 () Bool)

(assert (=> setNonEmpty!37561 (= condSetEmpty!37567 (= setRest!37561 (as set.empty (Set Context!10000))))))

(declare-fun setRes!37567 () Bool)

(assert (=> setNonEmpty!37561 (= tp!1557738 setRes!37567)))

(declare-fun setIsEmpty!37567 () Bool)

(assert (=> setIsEmpty!37567 setRes!37567))

(declare-fun setElem!37567 () Context!10000)

(declare-fun tp!1557826 () Bool)

(declare-fun setNonEmpty!37567 () Bool)

(declare-fun e!3468259 () Bool)

(assert (=> setNonEmpty!37567 (= setRes!37567 (and tp!1557826 (inv!82288 setElem!37567) e!3468259))))

(declare-fun setRest!37567 () (Set Context!10000))

(assert (=> setNonEmpty!37567 (= setRest!37561 (set.union (set.insert setElem!37567 (as set.empty (Set Context!10000))) setRest!37567))))

(declare-fun b!5626783 () Bool)

(declare-fun tp!1557825 () Bool)

(assert (=> b!5626783 (= e!3468259 tp!1557825)))

(assert (= (and setNonEmpty!37561 condSetEmpty!37567) setIsEmpty!37567))

(assert (= (and setNonEmpty!37561 (not condSetEmpty!37567)) setNonEmpty!37567))

(assert (= setNonEmpty!37567 b!5626783))

(declare-fun m!6598908 () Bool)

(assert (=> setNonEmpty!37567 m!6598908))

(declare-fun b!5626788 () Bool)

(declare-fun e!3468262 () Bool)

(declare-fun tp!1557829 () Bool)

(assert (=> b!5626788 (= e!3468262 (and tp_is_empty!40485 tp!1557829))))

(assert (=> b!5626275 (= tp!1557739 e!3468262)))

(assert (= (and b!5626275 (is-Cons!63025 (t!376441 s!2326))) b!5626788))

(declare-fun b_lambda!212817 () Bool)

(assert (= b_lambda!212813 (or b!5626263 b_lambda!212817)))

(declare-fun bs!1302391 () Bool)

(declare-fun d!1777476 () Bool)

(assert (= bs!1302391 (and d!1777476 b!5626263)))

(assert (=> bs!1302391 (= (dynLambda!24645 lambda!302197 lt!2261497) (derivationStepZipperUp!884 lt!2261497 (h!69473 s!2326)))))

(assert (=> bs!1302391 m!6598536))

(assert (=> d!1777432 d!1777476))

(declare-fun b_lambda!212819 () Bool)

(assert (= b_lambda!212815 (or b!5626263 b_lambda!212819)))

(declare-fun bs!1302392 () Bool)

(declare-fun d!1777478 () Bool)

(assert (= bs!1302392 (and d!1777478 b!5626263)))

(assert (=> bs!1302392 (= (dynLambda!24645 lambda!302197 (h!69472 zl!343)) (derivationStepZipperUp!884 (h!69472 zl!343) (h!69473 s!2326)))))

(assert (=> bs!1302392 m!6598520))

(assert (=> d!1777444 d!1777478))

(declare-fun b_lambda!212821 () Bool)

(assert (= b_lambda!212811 (or b!5626263 b_lambda!212821)))

(declare-fun bs!1302393 () Bool)

(declare-fun d!1777480 () Bool)

(assert (= bs!1302393 (and d!1777480 b!5626263)))

(assert (=> bs!1302393 (= (dynLambda!24645 lambda!302197 lt!2261503) (derivationStepZipperUp!884 lt!2261503 (h!69473 s!2326)))))

(assert (=> bs!1302393 m!6598548))

(assert (=> d!1777404 d!1777480))

(push 1)

(assert (not bm!423879))

(assert (not b!5626631))

(assert (not d!1777432))

(assert (not b!5626788))

(assert (not d!1777428))

(assert (not b!5626707))

(assert (not bs!1302392))

(assert (not d!1777404))

(assert (not b!5626620))

(assert (not bm!423857))

(assert (not bm!423890))

(assert (not d!1777466))

(assert tp_is_empty!40485)

(assert (not b_lambda!212819))

(assert (not b!5626480))

(assert (not b!5626764))

(assert (not bs!1302391))

(assert (not b!5626748))

(assert (not b!5626626))

(assert (not b!5626752))

(assert (not b!5626484))

(assert (not b!5626682))

(assert (not b!5626676))

(assert (not b!5626746))

(assert (not bm!423876))

(assert (not b!5626481))

(assert (not b!5626770))

(assert (not b!5626672))

(assert (not bm!423860))

(assert (not b!5626522))

(assert (not b!5626447))

(assert (not b!5626526))

(assert (not d!1777464))

(assert (not b!5626710))

(assert (not d!1777454))

(assert (not bm!423847))

(assert (not bm!423881))

(assert (not d!1777456))

(assert (not b!5626778))

(assert (not b!5626673))

(assert (not b!5626675))

(assert (not b!5626718))

(assert (not b!5626528))

(assert (not b!5626774))

(assert (not d!1777424))

(assert (not bm!423883))

(assert (not b!5626460))

(assert (not b!5626459))

(assert (not bm!423851))

(assert (not b!5626534))

(assert (not b!5626772))

(assert (not bm!423856))

(assert (not b!5626482))

(assert (not b!5626751))

(assert (not d!1777386))

(assert (not b!5626669))

(assert (not b!5626729))

(assert (not b!5626660))

(assert (not setNonEmpty!37567))

(assert (not d!1777408))

(assert (not b!5626619))

(assert (not bs!1302393))

(assert (not b!5626777))

(assert (not b!5626448))

(assert (not b!5626747))

(assert (not b!5626486))

(assert (not b!5626768))

(assert (not d!1777412))

(assert (not b!5626773))

(assert (not d!1777458))

(assert (not d!1777416))

(assert (not b!5626536))

(assert (not d!1777426))

(assert (not b!5626576))

(assert (not b!5626427))

(assert (not d!1777470))

(assert (not b!5626537))

(assert (not b_lambda!212821))

(assert (not bm!423889))

(assert (not b!5626622))

(assert (not bm!423892))

(assert (not d!1777418))

(assert (not d!1777442))

(assert (not d!1777396))

(assert (not d!1777460))

(assert (not b!5626680))

(assert (not b!5626614))

(assert (not b!5626453))

(assert (not b!5626405))

(assert (not bm!423861))

(assert (not b!5626668))

(assert (not b!5626615))

(assert (not bm!423884))

(assert (not bm!423886))

(assert (not b_lambda!212817))

(assert (not d!1777410))

(assert (not b!5626618))

(assert (not d!1777398))

(assert (not b!5626712))

(assert (not d!1777390))

(assert (not d!1777446))

(assert (not b!5626577))

(assert (not b!5626630))

(assert (not b!5626452))

(assert (not bm!423850))

(assert (not b!5626525))

(assert (not d!1777462))

(assert (not d!1777436))

(assert (not b!5626750))

(assert (not b!5626671))

(assert (not b!5626679))

(assert (not b!5626765))

(assert (not bm!423877))

(assert (not b!5626711))

(assert (not b!5626783))

(assert (not b!5626625))

(assert (not d!1777468))

(assert (not d!1777430))

(assert (not b!5626681))

(assert (not bm!423862))

(assert (not d!1777438))

(assert (not d!1777414))

(assert (not b!5626776))

(assert (not b!5626674))

(assert (not b!5626766))

(assert (not b!5626705))

(assert (not d!1777384))

(assert (not b!5626524))

(assert (not b!5626527))

(assert (not b!5626703))

(assert (not b!5626757))

(assert (not d!1777444))

(assert (not d!1777420))

(assert (not d!1777422))

(assert (not b!5626769))

(assert (not d!1777406))

(assert (not bm!423846))

(assert (not b!5626521))

(assert (not b!5626709))

(assert (not b!5626487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

