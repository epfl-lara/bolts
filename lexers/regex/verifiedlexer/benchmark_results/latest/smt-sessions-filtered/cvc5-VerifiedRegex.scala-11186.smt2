; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!583022 () Bool)

(assert start!583022)

(declare-fun b!5627256 () Bool)

(assert (=> b!5627256 true))

(assert (=> b!5627256 true))

(declare-fun lambda!302290 () Int)

(declare-fun lambda!302289 () Int)

(assert (=> b!5627256 (not (= lambda!302290 lambda!302289))))

(assert (=> b!5627256 true))

(assert (=> b!5627256 true))

(declare-fun b!5627247 () Bool)

(assert (=> b!5627247 true))

(declare-fun e!3468521 () Bool)

(declare-fun e!3468535 () Bool)

(assert (=> b!5627247 (= e!3468521 e!3468535)))

(declare-fun res!2383285 () Bool)

(assert (=> b!5627247 (=> res!2383285 e!3468535)))

(declare-datatypes ((C!31506 0))(
  ( (C!31507 (val!25455 Int)) )
))
(declare-datatypes ((Regex!15618 0))(
  ( (ElementMatch!15618 (c!987908 C!31506)) (Concat!24463 (regOne!31748 Regex!15618) (regTwo!31748 Regex!15618)) (EmptyExpr!15618) (Star!15618 (reg!15947 Regex!15618)) (EmptyLang!15618) (Union!15618 (regOne!31749 Regex!15618) (regTwo!31749 Regex!15618)) )
))
(declare-fun r!7292 () Regex!15618)

(declare-datatypes ((List!63153 0))(
  ( (Nil!63029) (Cons!63029 (h!69477 C!31506) (t!376445 List!63153)) )
))
(declare-fun s!2326 () List!63153)

(assert (=> b!5627247 (= res!2383285 (or (and (is-ElementMatch!15618 (regOne!31748 r!7292)) (= (c!987908 (regOne!31748 r!7292)) (h!69477 s!2326))) (is-Union!15618 (regOne!31748 r!7292)) (not (is-Concat!24463 (regOne!31748 r!7292)))))))

(declare-datatypes ((Unit!156004 0))(
  ( (Unit!156005) )
))
(declare-fun lt!2261744 () Unit!156004)

(declare-fun e!3468529 () Unit!156004)

(assert (=> b!5627247 (= lt!2261744 e!3468529)))

(declare-fun c!987907 () Bool)

(declare-datatypes ((List!63154 0))(
  ( (Nil!63030) (Cons!63030 (h!69478 Regex!15618) (t!376446 List!63154)) )
))
(declare-datatypes ((Context!10004 0))(
  ( (Context!10005 (exprs!5502 List!63154)) )
))
(declare-datatypes ((List!63155 0))(
  ( (Nil!63031) (Cons!63031 (h!69479 Context!10004) (t!376447 List!63155)) )
))
(declare-fun zl!343 () List!63155)

(declare-fun nullable!5650 (Regex!15618) Bool)

(assert (=> b!5627247 (= c!987907 (nullable!5650 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun z!1189 () (Set Context!10004))

(declare-fun lambda!302291 () Int)

(declare-fun flatMap!1231 ((Set Context!10004) Int) (Set Context!10004))

(declare-fun derivationStepZipperUp!886 (Context!10004 C!31506) (Set Context!10004))

(assert (=> b!5627247 (= (flatMap!1231 z!1189 lambda!302291) (derivationStepZipperUp!886 (h!69479 zl!343) (h!69477 s!2326)))))

(declare-fun lt!2261745 () Unit!156004)

(declare-fun lemmaFlatMapOnSingletonSet!763 ((Set Context!10004) Context!10004 Int) Unit!156004)

(assert (=> b!5627247 (= lt!2261745 (lemmaFlatMapOnSingletonSet!763 z!1189 (h!69479 zl!343) lambda!302291))))

(declare-fun lt!2261746 () (Set Context!10004))

(declare-fun lt!2261729 () Context!10004)

(assert (=> b!5627247 (= lt!2261746 (derivationStepZipperUp!886 lt!2261729 (h!69477 s!2326)))))

(declare-fun lt!2261735 () (Set Context!10004))

(declare-fun derivationStepZipperDown!960 (Regex!15618 Context!10004 C!31506) (Set Context!10004))

(assert (=> b!5627247 (= lt!2261735 (derivationStepZipperDown!960 (h!69478 (exprs!5502 (h!69479 zl!343))) lt!2261729 (h!69477 s!2326)))))

(assert (=> b!5627247 (= lt!2261729 (Context!10005 (t!376446 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun lt!2261733 () (Set Context!10004))

(assert (=> b!5627247 (= lt!2261733 (derivationStepZipperUp!886 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343))))) (h!69477 s!2326)))))

(declare-fun b!5627248 () Bool)

(declare-fun e!3468524 () Bool)

(declare-fun matchZipper!1756 ((Set Context!10004) List!63153) Bool)

(assert (=> b!5627248 (= e!3468524 (matchZipper!1756 lt!2261746 (t!376445 s!2326)))))

(declare-fun b!5627250 () Bool)

(declare-fun e!3468532 () Bool)

(declare-fun tp_is_empty!40489 () Bool)

(assert (=> b!5627250 (= e!3468532 tp_is_empty!40489)))

(declare-fun b!5627251 () Bool)

(declare-fun tp!1557908 () Bool)

(declare-fun tp!1557910 () Bool)

(assert (=> b!5627251 (= e!3468532 (and tp!1557908 tp!1557910))))

(declare-fun lt!2261743 () (Set Context!10004))

(declare-fun b!5627252 () Bool)

(declare-fun e!3468519 () Bool)

(declare-fun lt!2261738 () (Set Context!10004))

(declare-fun derivationStepZipper!1705 ((Set Context!10004) C!31506) (Set Context!10004))

(assert (=> b!5627252 (= e!3468519 (= (derivationStepZipper!1705 lt!2261743 (h!69477 s!2326)) lt!2261738))))

(declare-fun e!3468527 () Bool)

(declare-fun b!5627253 () Bool)

(declare-fun tp!1557912 () Bool)

(declare-fun e!3468526 () Bool)

(declare-fun inv!82293 (Context!10004) Bool)

(assert (=> b!5627253 (= e!3468527 (and (inv!82293 (h!69479 zl!343)) e!3468526 tp!1557912))))

(declare-fun b!5627254 () Bool)

(declare-fun res!2383287 () Bool)

(declare-fun e!3468520 () Bool)

(assert (=> b!5627254 (=> (not res!2383287) (not e!3468520))))

(declare-fun unfocusZipper!1360 (List!63155) Regex!15618)

(assert (=> b!5627254 (= res!2383287 (= r!7292 (unfocusZipper!1360 zl!343)))))

(declare-fun b!5627255 () Bool)

(declare-fun res!2383296 () Bool)

(declare-fun e!3468533 () Bool)

(assert (=> b!5627255 (=> res!2383296 e!3468533)))

(assert (=> b!5627255 (= res!2383296 (or (is-EmptyExpr!15618 r!7292) (is-EmptyLang!15618 r!7292) (is-ElementMatch!15618 r!7292) (is-Union!15618 r!7292) (not (is-Concat!24463 r!7292))))))

(assert (=> b!5627256 (= e!3468533 e!3468521)))

(declare-fun res!2383295 () Bool)

(assert (=> b!5627256 (=> res!2383295 e!3468521)))

(declare-fun lt!2261742 () Bool)

(declare-fun lt!2261734 () Bool)

(assert (=> b!5627256 (= res!2383295 (or (not (= lt!2261734 lt!2261742)) (is-Nil!63029 s!2326)))))

(declare-fun Exists!2718 (Int) Bool)

(assert (=> b!5627256 (= (Exists!2718 lambda!302289) (Exists!2718 lambda!302290))))

(declare-fun lt!2261741 () Unit!156004)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1347 (Regex!15618 Regex!15618 List!63153) Unit!156004)

(assert (=> b!5627256 (= lt!2261741 (lemmaExistCutMatchRandMatchRSpecEquivalent!1347 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326))))

(assert (=> b!5627256 (= lt!2261742 (Exists!2718 lambda!302289))))

(declare-datatypes ((tuple2!65430 0))(
  ( (tuple2!65431 (_1!36018 List!63153) (_2!36018 List!63153)) )
))
(declare-datatypes ((Option!15627 0))(
  ( (None!15626) (Some!15626 (v!51671 tuple2!65430)) )
))
(declare-fun isDefined!12330 (Option!15627) Bool)

(declare-fun findConcatSeparation!2041 (Regex!15618 Regex!15618 List!63153 List!63153 List!63153) Option!15627)

(assert (=> b!5627256 (= lt!2261742 (isDefined!12330 (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) Nil!63029 s!2326 s!2326)))))

(declare-fun lt!2261730 () Unit!156004)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1805 (Regex!15618 Regex!15618 List!63153) Unit!156004)

(assert (=> b!5627256 (= lt!2261730 (lemmaFindConcatSeparationEquivalentToExists!1805 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326))))

(declare-fun b!5627257 () Bool)

(declare-fun tp!1557909 () Bool)

(declare-fun tp!1557915 () Bool)

(assert (=> b!5627257 (= e!3468532 (and tp!1557909 tp!1557915))))

(declare-fun b!5627258 () Bool)

(declare-fun res!2383281 () Bool)

(assert (=> b!5627258 (=> res!2383281 e!3468535)))

(assert (=> b!5627258 (= res!2383281 (not (nullable!5650 (regOne!31748 (regOne!31748 r!7292)))))))

(declare-fun setIsEmpty!37573 () Bool)

(declare-fun setRes!37573 () Bool)

(assert (=> setIsEmpty!37573 setRes!37573))

(declare-fun b!5627259 () Bool)

(declare-fun res!2383280 () Bool)

(assert (=> b!5627259 (=> (not res!2383280) (not e!3468520))))

(declare-fun toList!9402 ((Set Context!10004)) List!63155)

(assert (=> b!5627259 (= res!2383280 (= (toList!9402 z!1189) zl!343))))

(declare-fun e!3468528 () Bool)

(declare-fun tp!1557914 () Bool)

(declare-fun setElem!37573 () Context!10004)

(declare-fun setNonEmpty!37573 () Bool)

(assert (=> setNonEmpty!37573 (= setRes!37573 (and tp!1557914 (inv!82293 setElem!37573) e!3468528))))

(declare-fun setRest!37573 () (Set Context!10004))

(assert (=> setNonEmpty!37573 (= z!1189 (set.union (set.insert setElem!37573 (as set.empty (Set Context!10004))) setRest!37573))))

(declare-fun b!5627260 () Bool)

(declare-fun Unit!156006 () Unit!156004)

(assert (=> b!5627260 (= e!3468529 Unit!156006)))

(declare-fun lt!2261737 () Unit!156004)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!643 ((Set Context!10004) (Set Context!10004) List!63153) Unit!156004)

(assert (=> b!5627260 (= lt!2261737 (lemmaZipperConcatMatchesSameAsBothZippers!643 lt!2261735 lt!2261746 (t!376445 s!2326)))))

(declare-fun res!2383291 () Bool)

(assert (=> b!5627260 (= res!2383291 (matchZipper!1756 lt!2261735 (t!376445 s!2326)))))

(assert (=> b!5627260 (=> res!2383291 e!3468524)))

(assert (=> b!5627260 (= (matchZipper!1756 (set.union lt!2261735 lt!2261746) (t!376445 s!2326)) e!3468524)))

(declare-fun b!5627261 () Bool)

(declare-fun res!2383293 () Bool)

(assert (=> b!5627261 (=> res!2383293 e!3468521)))

(declare-fun isEmpty!34864 (List!63154) Bool)

(assert (=> b!5627261 (= res!2383293 (isEmpty!34864 (t!376446 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun res!2383294 () Bool)

(assert (=> start!583022 (=> (not res!2383294) (not e!3468520))))

(declare-fun validRegex!7354 (Regex!15618) Bool)

(assert (=> start!583022 (= res!2383294 (validRegex!7354 r!7292))))

(assert (=> start!583022 e!3468520))

(assert (=> start!583022 e!3468532))

(declare-fun condSetEmpty!37573 () Bool)

(assert (=> start!583022 (= condSetEmpty!37573 (= z!1189 (as set.empty (Set Context!10004))))))

(assert (=> start!583022 setRes!37573))

(assert (=> start!583022 e!3468527))

(declare-fun e!3468523 () Bool)

(assert (=> start!583022 e!3468523))

(declare-fun b!5627249 () Bool)

(declare-fun e!3468534 () Bool)

(assert (=> b!5627249 (= e!3468534 (not (matchZipper!1756 lt!2261738 (t!376445 s!2326))))))

(declare-fun b!5627262 () Bool)

(declare-fun e!3468531 () Bool)

(declare-fun e!3468522 () Bool)

(assert (=> b!5627262 (= e!3468531 e!3468522)))

(declare-fun res!2383289 () Bool)

(assert (=> b!5627262 (=> res!2383289 e!3468522)))

(declare-fun lt!2261732 () Context!10004)

(declare-fun lt!2261731 () (Set Context!10004))

(declare-fun lt!2261740 () (Set Context!10004))

(assert (=> b!5627262 (= res!2383289 (not (= (derivationStepZipper!1705 lt!2261740 (h!69477 s!2326)) (set.union lt!2261731 (derivationStepZipperUp!886 lt!2261732 (h!69477 s!2326))))))))

(declare-fun lt!2261728 () Context!10004)

(assert (=> b!5627262 (= (flatMap!1231 lt!2261740 lambda!302291) (derivationStepZipperUp!886 lt!2261728 (h!69477 s!2326)))))

(declare-fun lt!2261736 () Unit!156004)

(assert (=> b!5627262 (= lt!2261736 (lemmaFlatMapOnSingletonSet!763 lt!2261740 lt!2261728 lambda!302291))))

(declare-fun lt!2261749 () (Set Context!10004))

(assert (=> b!5627262 (= lt!2261749 (derivationStepZipperUp!886 lt!2261728 (h!69477 s!2326)))))

(assert (=> b!5627262 (= lt!2261743 (set.insert lt!2261732 (as set.empty (Set Context!10004))))))

(assert (=> b!5627262 (= lt!2261740 (set.insert lt!2261728 (as set.empty (Set Context!10004))))))

(declare-fun lt!2261726 () List!63154)

(assert (=> b!5627262 (= lt!2261728 (Context!10005 (Cons!63030 (regOne!31748 (regOne!31748 r!7292)) lt!2261726)))))

(declare-fun b!5627263 () Bool)

(assert (=> b!5627263 (= e!3468522 e!3468519)))

(declare-fun res!2383286 () Bool)

(assert (=> b!5627263 (=> res!2383286 e!3468519)))

(assert (=> b!5627263 (= res!2383286 (nullable!5650 (regTwo!31748 (regOne!31748 r!7292))))))

(assert (=> b!5627263 (= (flatMap!1231 lt!2261743 lambda!302291) (derivationStepZipperUp!886 lt!2261732 (h!69477 s!2326)))))

(declare-fun lt!2261747 () Unit!156004)

(assert (=> b!5627263 (= lt!2261747 (lemmaFlatMapOnSingletonSet!763 lt!2261743 lt!2261732 lambda!302291))))

(declare-fun b!5627264 () Bool)

(declare-fun res!2383283 () Bool)

(assert (=> b!5627264 (=> res!2383283 e!3468533)))

(declare-fun generalisedUnion!1481 (List!63154) Regex!15618)

(declare-fun unfocusZipperList!1046 (List!63155) List!63154)

(assert (=> b!5627264 (= res!2383283 (not (= r!7292 (generalisedUnion!1481 (unfocusZipperList!1046 zl!343)))))))

(declare-fun b!5627265 () Bool)

(declare-fun e!3468530 () Bool)

(assert (=> b!5627265 (= e!3468535 e!3468530)))

(declare-fun res!2383288 () Bool)

(assert (=> b!5627265 (=> res!2383288 e!3468530)))

(declare-fun lt!2261739 () (Set Context!10004))

(assert (=> b!5627265 (= res!2383288 (not (= lt!2261735 lt!2261739)))))

(assert (=> b!5627265 (= lt!2261739 (set.union lt!2261731 lt!2261738))))

(assert (=> b!5627265 (= lt!2261738 (derivationStepZipperDown!960 (regTwo!31748 (regOne!31748 r!7292)) lt!2261729 (h!69477 s!2326)))))

(assert (=> b!5627265 (= lt!2261731 (derivationStepZipperDown!960 (regOne!31748 (regOne!31748 r!7292)) lt!2261732 (h!69477 s!2326)))))

(assert (=> b!5627265 (= lt!2261732 (Context!10005 lt!2261726))))

(assert (=> b!5627265 (= lt!2261726 (Cons!63030 (regTwo!31748 (regOne!31748 r!7292)) (t!376446 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun b!5627266 () Bool)

(declare-fun tp!1557916 () Bool)

(assert (=> b!5627266 (= e!3468532 tp!1557916)))

(declare-fun b!5627267 () Bool)

(assert (=> b!5627267 (= e!3468530 e!3468531)))

(declare-fun res!2383284 () Bool)

(assert (=> b!5627267 (=> res!2383284 e!3468531)))

(assert (=> b!5627267 (= res!2383284 e!3468534)))

(declare-fun res!2383290 () Bool)

(assert (=> b!5627267 (=> (not res!2383290) (not e!3468534))))

(declare-fun lt!2261725 () Bool)

(assert (=> b!5627267 (= res!2383290 (not (= (matchZipper!1756 lt!2261735 (t!376445 s!2326)) lt!2261725)))))

(declare-fun e!3468525 () Bool)

(assert (=> b!5627267 (= (matchZipper!1756 lt!2261739 (t!376445 s!2326)) e!3468525)))

(declare-fun res!2383279 () Bool)

(assert (=> b!5627267 (=> res!2383279 e!3468525)))

(assert (=> b!5627267 (= res!2383279 lt!2261725)))

(assert (=> b!5627267 (= lt!2261725 (matchZipper!1756 lt!2261731 (t!376445 s!2326)))))

(declare-fun lt!2261727 () Unit!156004)

(assert (=> b!5627267 (= lt!2261727 (lemmaZipperConcatMatchesSameAsBothZippers!643 lt!2261731 lt!2261738 (t!376445 s!2326)))))

(declare-fun b!5627268 () Bool)

(declare-fun res!2383277 () Bool)

(assert (=> b!5627268 (=> res!2383277 e!3468533)))

(assert (=> b!5627268 (= res!2383277 (not (is-Cons!63030 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun b!5627269 () Bool)

(declare-fun tp!1557911 () Bool)

(assert (=> b!5627269 (= e!3468526 tp!1557911)))

(declare-fun b!5627270 () Bool)

(declare-fun Unit!156007 () Unit!156004)

(assert (=> b!5627270 (= e!3468529 Unit!156007)))

(declare-fun b!5627271 () Bool)

(assert (=> b!5627271 (= e!3468520 (not e!3468533))))

(declare-fun res!2383278 () Bool)

(assert (=> b!5627271 (=> res!2383278 e!3468533)))

(assert (=> b!5627271 (= res!2383278 (not (is-Cons!63031 zl!343)))))

(declare-fun matchRSpec!2721 (Regex!15618 List!63153) Bool)

(assert (=> b!5627271 (= lt!2261734 (matchRSpec!2721 r!7292 s!2326))))

(declare-fun matchR!7803 (Regex!15618 List!63153) Bool)

(assert (=> b!5627271 (= lt!2261734 (matchR!7803 r!7292 s!2326))))

(declare-fun lt!2261748 () Unit!156004)

(declare-fun mainMatchTheorem!2721 (Regex!15618 List!63153) Unit!156004)

(assert (=> b!5627271 (= lt!2261748 (mainMatchTheorem!2721 r!7292 s!2326))))

(declare-fun b!5627272 () Bool)

(declare-fun tp!1557913 () Bool)

(assert (=> b!5627272 (= e!3468523 (and tp_is_empty!40489 tp!1557913))))

(declare-fun b!5627273 () Bool)

(declare-fun res!2383292 () Bool)

(assert (=> b!5627273 (=> res!2383292 e!3468533)))

(declare-fun isEmpty!34865 (List!63155) Bool)

(assert (=> b!5627273 (= res!2383292 (not (isEmpty!34865 (t!376447 zl!343))))))

(declare-fun b!5627274 () Bool)

(declare-fun tp!1557917 () Bool)

(assert (=> b!5627274 (= e!3468528 tp!1557917)))

(declare-fun b!5627275 () Bool)

(assert (=> b!5627275 (= e!3468525 (matchZipper!1756 lt!2261738 (t!376445 s!2326)))))

(declare-fun b!5627276 () Bool)

(declare-fun res!2383282 () Bool)

(assert (=> b!5627276 (=> res!2383282 e!3468533)))

(declare-fun generalisedConcat!1233 (List!63154) Regex!15618)

(assert (=> b!5627276 (= res!2383282 (not (= r!7292 (generalisedConcat!1233 (exprs!5502 (h!69479 zl!343))))))))

(assert (= (and start!583022 res!2383294) b!5627259))

(assert (= (and b!5627259 res!2383280) b!5627254))

(assert (= (and b!5627254 res!2383287) b!5627271))

(assert (= (and b!5627271 (not res!2383278)) b!5627273))

(assert (= (and b!5627273 (not res!2383292)) b!5627276))

(assert (= (and b!5627276 (not res!2383282)) b!5627268))

(assert (= (and b!5627268 (not res!2383277)) b!5627264))

(assert (= (and b!5627264 (not res!2383283)) b!5627255))

(assert (= (and b!5627255 (not res!2383296)) b!5627256))

(assert (= (and b!5627256 (not res!2383295)) b!5627261))

(assert (= (and b!5627261 (not res!2383293)) b!5627247))

(assert (= (and b!5627247 c!987907) b!5627260))

(assert (= (and b!5627247 (not c!987907)) b!5627270))

(assert (= (and b!5627260 (not res!2383291)) b!5627248))

(assert (= (and b!5627247 (not res!2383285)) b!5627258))

(assert (= (and b!5627258 (not res!2383281)) b!5627265))

(assert (= (and b!5627265 (not res!2383288)) b!5627267))

(assert (= (and b!5627267 (not res!2383279)) b!5627275))

(assert (= (and b!5627267 res!2383290) b!5627249))

(assert (= (and b!5627267 (not res!2383284)) b!5627262))

(assert (= (and b!5627262 (not res!2383289)) b!5627263))

(assert (= (and b!5627263 (not res!2383286)) b!5627252))

(assert (= (and start!583022 (is-ElementMatch!15618 r!7292)) b!5627250))

(assert (= (and start!583022 (is-Concat!24463 r!7292)) b!5627257))

(assert (= (and start!583022 (is-Star!15618 r!7292)) b!5627266))

(assert (= (and start!583022 (is-Union!15618 r!7292)) b!5627251))

(assert (= (and start!583022 condSetEmpty!37573) setIsEmpty!37573))

(assert (= (and start!583022 (not condSetEmpty!37573)) setNonEmpty!37573))

(assert (= setNonEmpty!37573 b!5627274))

(assert (= b!5627253 b!5627269))

(assert (= (and start!583022 (is-Cons!63031 zl!343)) b!5627253))

(assert (= (and start!583022 (is-Cons!63029 s!2326)) b!5627272))

(declare-fun m!6599168 () Bool)

(assert (=> start!583022 m!6599168))

(declare-fun m!6599170 () Bool)

(assert (=> b!5627265 m!6599170))

(declare-fun m!6599172 () Bool)

(assert (=> b!5627265 m!6599172))

(declare-fun m!6599174 () Bool)

(assert (=> b!5627247 m!6599174))

(declare-fun m!6599176 () Bool)

(assert (=> b!5627247 m!6599176))

(declare-fun m!6599178 () Bool)

(assert (=> b!5627247 m!6599178))

(declare-fun m!6599180 () Bool)

(assert (=> b!5627247 m!6599180))

(declare-fun m!6599182 () Bool)

(assert (=> b!5627247 m!6599182))

(declare-fun m!6599184 () Bool)

(assert (=> b!5627247 m!6599184))

(declare-fun m!6599186 () Bool)

(assert (=> b!5627247 m!6599186))

(declare-fun m!6599188 () Bool)

(assert (=> b!5627263 m!6599188))

(declare-fun m!6599190 () Bool)

(assert (=> b!5627263 m!6599190))

(declare-fun m!6599192 () Bool)

(assert (=> b!5627263 m!6599192))

(declare-fun m!6599194 () Bool)

(assert (=> b!5627263 m!6599194))

(declare-fun m!6599196 () Bool)

(assert (=> b!5627262 m!6599196))

(assert (=> b!5627262 m!6599192))

(declare-fun m!6599198 () Bool)

(assert (=> b!5627262 m!6599198))

(declare-fun m!6599200 () Bool)

(assert (=> b!5627262 m!6599200))

(declare-fun m!6599202 () Bool)

(assert (=> b!5627262 m!6599202))

(declare-fun m!6599204 () Bool)

(assert (=> b!5627262 m!6599204))

(declare-fun m!6599206 () Bool)

(assert (=> b!5627262 m!6599206))

(declare-fun m!6599208 () Bool)

(assert (=> b!5627261 m!6599208))

(declare-fun m!6599210 () Bool)

(assert (=> b!5627252 m!6599210))

(declare-fun m!6599212 () Bool)

(assert (=> b!5627260 m!6599212))

(declare-fun m!6599214 () Bool)

(assert (=> b!5627260 m!6599214))

(declare-fun m!6599216 () Bool)

(assert (=> b!5627260 m!6599216))

(assert (=> b!5627267 m!6599214))

(declare-fun m!6599218 () Bool)

(assert (=> b!5627267 m!6599218))

(declare-fun m!6599220 () Bool)

(assert (=> b!5627267 m!6599220))

(declare-fun m!6599222 () Bool)

(assert (=> b!5627267 m!6599222))

(declare-fun m!6599224 () Bool)

(assert (=> b!5627256 m!6599224))

(assert (=> b!5627256 m!6599224))

(declare-fun m!6599226 () Bool)

(assert (=> b!5627256 m!6599226))

(declare-fun m!6599228 () Bool)

(assert (=> b!5627256 m!6599228))

(declare-fun m!6599230 () Bool)

(assert (=> b!5627256 m!6599230))

(declare-fun m!6599232 () Bool)

(assert (=> b!5627256 m!6599232))

(assert (=> b!5627256 m!6599226))

(declare-fun m!6599234 () Bool)

(assert (=> b!5627256 m!6599234))

(declare-fun m!6599236 () Bool)

(assert (=> b!5627259 m!6599236))

(declare-fun m!6599238 () Bool)

(assert (=> b!5627248 m!6599238))

(declare-fun m!6599240 () Bool)

(assert (=> b!5627271 m!6599240))

(declare-fun m!6599242 () Bool)

(assert (=> b!5627271 m!6599242))

(declare-fun m!6599244 () Bool)

(assert (=> b!5627271 m!6599244))

(declare-fun m!6599246 () Bool)

(assert (=> b!5627254 m!6599246))

(declare-fun m!6599248 () Bool)

(assert (=> b!5627253 m!6599248))

(declare-fun m!6599250 () Bool)

(assert (=> b!5627264 m!6599250))

(assert (=> b!5627264 m!6599250))

(declare-fun m!6599252 () Bool)

(assert (=> b!5627264 m!6599252))

(declare-fun m!6599254 () Bool)

(assert (=> b!5627275 m!6599254))

(declare-fun m!6599256 () Bool)

(assert (=> b!5627258 m!6599256))

(assert (=> b!5627249 m!6599254))

(declare-fun m!6599258 () Bool)

(assert (=> b!5627276 m!6599258))

(declare-fun m!6599260 () Bool)

(assert (=> b!5627273 m!6599260))

(declare-fun m!6599262 () Bool)

(assert (=> setNonEmpty!37573 m!6599262))

(push 1)

(assert (not b!5627247))

(assert (not b!5627260))

(assert (not setNonEmpty!37573))

(assert (not b!5627251))

(assert (not b!5627273))

(assert (not b!5627267))

(assert (not b!5627261))

(assert (not b!5627263))

(assert (not b!5627264))

(assert (not b!5627248))

(assert (not b!5627269))

(assert (not b!5627271))

(assert (not b!5627276))

(assert tp_is_empty!40489)

(assert (not b!5627254))

(assert (not b!5627262))

(assert (not b!5627252))

(assert (not b!5627258))

(assert (not b!5627274))

(assert (not b!5627249))

(assert (not b!5627275))

(assert (not b!5627259))

(assert (not b!5627253))

(assert (not start!583022))

(assert (not b!5627257))

(assert (not b!5627272))

(assert (not b!5627265))

(assert (not b!5627256))

(assert (not b!5627266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!3468595 () Bool)

(declare-fun d!1777581 () Bool)

(assert (=> d!1777581 (= (matchZipper!1756 (set.union lt!2261735 lt!2261746) (t!376445 s!2326)) e!3468595)))

(declare-fun res!2383371 () Bool)

(assert (=> d!1777581 (=> res!2383371 e!3468595)))

(assert (=> d!1777581 (= res!2383371 (matchZipper!1756 lt!2261735 (t!376445 s!2326)))))

(declare-fun lt!2261827 () Unit!156004)

(declare-fun choose!42644 ((Set Context!10004) (Set Context!10004) List!63153) Unit!156004)

(assert (=> d!1777581 (= lt!2261827 (choose!42644 lt!2261735 lt!2261746 (t!376445 s!2326)))))

(assert (=> d!1777581 (= (lemmaZipperConcatMatchesSameAsBothZippers!643 lt!2261735 lt!2261746 (t!376445 s!2326)) lt!2261827)))

(declare-fun b!5627393 () Bool)

(assert (=> b!5627393 (= e!3468595 (matchZipper!1756 lt!2261746 (t!376445 s!2326)))))

(assert (= (and d!1777581 (not res!2383371)) b!5627393))

(assert (=> d!1777581 m!6599216))

(assert (=> d!1777581 m!6599214))

(declare-fun m!6599360 () Bool)

(assert (=> d!1777581 m!6599360))

(assert (=> b!5627393 m!6599238))

(assert (=> b!5627260 d!1777581))

(declare-fun d!1777583 () Bool)

(declare-fun c!987922 () Bool)

(declare-fun isEmpty!34868 (List!63153) Bool)

(assert (=> d!1777583 (= c!987922 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468598 () Bool)

(assert (=> d!1777583 (= (matchZipper!1756 lt!2261735 (t!376445 s!2326)) e!3468598)))

(declare-fun b!5627398 () Bool)

(declare-fun nullableZipper!1601 ((Set Context!10004)) Bool)

(assert (=> b!5627398 (= e!3468598 (nullableZipper!1601 lt!2261735))))

(declare-fun b!5627399 () Bool)

(declare-fun head!11981 (List!63153) C!31506)

(declare-fun tail!11076 (List!63153) List!63153)

(assert (=> b!5627399 (= e!3468598 (matchZipper!1756 (derivationStepZipper!1705 lt!2261735 (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777583 c!987922) b!5627398))

(assert (= (and d!1777583 (not c!987922)) b!5627399))

(declare-fun m!6599362 () Bool)

(assert (=> d!1777583 m!6599362))

(declare-fun m!6599364 () Bool)

(assert (=> b!5627398 m!6599364))

(declare-fun m!6599366 () Bool)

(assert (=> b!5627399 m!6599366))

(assert (=> b!5627399 m!6599366))

(declare-fun m!6599368 () Bool)

(assert (=> b!5627399 m!6599368))

(declare-fun m!6599370 () Bool)

(assert (=> b!5627399 m!6599370))

(assert (=> b!5627399 m!6599368))

(assert (=> b!5627399 m!6599370))

(declare-fun m!6599372 () Bool)

(assert (=> b!5627399 m!6599372))

(assert (=> b!5627260 d!1777583))

(declare-fun d!1777585 () Bool)

(declare-fun c!987923 () Bool)

(assert (=> d!1777585 (= c!987923 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468599 () Bool)

(assert (=> d!1777585 (= (matchZipper!1756 (set.union lt!2261735 lt!2261746) (t!376445 s!2326)) e!3468599)))

(declare-fun b!5627400 () Bool)

(assert (=> b!5627400 (= e!3468599 (nullableZipper!1601 (set.union lt!2261735 lt!2261746)))))

(declare-fun b!5627401 () Bool)

(assert (=> b!5627401 (= e!3468599 (matchZipper!1756 (derivationStepZipper!1705 (set.union lt!2261735 lt!2261746) (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777585 c!987923) b!5627400))

(assert (= (and d!1777585 (not c!987923)) b!5627401))

(assert (=> d!1777585 m!6599362))

(declare-fun m!6599374 () Bool)

(assert (=> b!5627400 m!6599374))

(assert (=> b!5627401 m!6599366))

(assert (=> b!5627401 m!6599366))

(declare-fun m!6599376 () Bool)

(assert (=> b!5627401 m!6599376))

(assert (=> b!5627401 m!6599370))

(assert (=> b!5627401 m!6599376))

(assert (=> b!5627401 m!6599370))

(declare-fun m!6599378 () Bool)

(assert (=> b!5627401 m!6599378))

(assert (=> b!5627260 d!1777585))

(declare-fun bs!1302442 () Bool)

(declare-fun b!5627440 () Bool)

(assert (= bs!1302442 (and b!5627440 b!5627256)))

(declare-fun lambda!302311 () Int)

(assert (=> bs!1302442 (not (= lambda!302311 lambda!302289))))

(assert (=> bs!1302442 (not (= lambda!302311 lambda!302290))))

(assert (=> b!5627440 true))

(assert (=> b!5627440 true))

(declare-fun bs!1302443 () Bool)

(declare-fun b!5627444 () Bool)

(assert (= bs!1302443 (and b!5627444 b!5627256)))

(declare-fun lambda!302312 () Int)

(assert (=> bs!1302443 (not (= lambda!302312 lambda!302289))))

(assert (=> bs!1302443 (= lambda!302312 lambda!302290)))

(declare-fun bs!1302444 () Bool)

(assert (= bs!1302444 (and b!5627444 b!5627440)))

(assert (=> bs!1302444 (not (= lambda!302312 lambda!302311))))

(assert (=> b!5627444 true))

(assert (=> b!5627444 true))

(declare-fun call!423958 () Bool)

(declare-fun bm!423953 () Bool)

(declare-fun c!987935 () Bool)

(assert (=> bm!423953 (= call!423958 (Exists!2718 (ite c!987935 lambda!302311 lambda!302312)))))

(declare-fun d!1777587 () Bool)

(declare-fun c!987933 () Bool)

(assert (=> d!1777587 (= c!987933 (is-EmptyExpr!15618 r!7292))))

(declare-fun e!3468620 () Bool)

(assert (=> d!1777587 (= (matchRSpec!2721 r!7292 s!2326) e!3468620)))

(declare-fun b!5627434 () Bool)

(declare-fun e!3468621 () Bool)

(declare-fun e!3468623 () Bool)

(assert (=> b!5627434 (= e!3468621 e!3468623)))

(declare-fun res!2383389 () Bool)

(assert (=> b!5627434 (= res!2383389 (matchRSpec!2721 (regOne!31749 r!7292) s!2326))))

(assert (=> b!5627434 (=> res!2383389 e!3468623)))

(declare-fun b!5627435 () Bool)

(declare-fun e!3468622 () Bool)

(assert (=> b!5627435 (= e!3468620 e!3468622)))

(declare-fun res!2383388 () Bool)

(assert (=> b!5627435 (= res!2383388 (not (is-EmptyLang!15618 r!7292)))))

(assert (=> b!5627435 (=> (not res!2383388) (not e!3468622))))

(declare-fun b!5627436 () Bool)

(declare-fun c!987934 () Bool)

(assert (=> b!5627436 (= c!987934 (is-ElementMatch!15618 r!7292))))

(declare-fun e!3468624 () Bool)

(assert (=> b!5627436 (= e!3468622 e!3468624)))

(declare-fun b!5627437 () Bool)

(declare-fun c!987932 () Bool)

(assert (=> b!5627437 (= c!987932 (is-Union!15618 r!7292))))

(assert (=> b!5627437 (= e!3468624 e!3468621)))

(declare-fun bm!423954 () Bool)

(declare-fun call!423959 () Bool)

(assert (=> bm!423954 (= call!423959 (isEmpty!34868 s!2326))))

(declare-fun b!5627438 () Bool)

(declare-fun res!2383390 () Bool)

(declare-fun e!3468618 () Bool)

(assert (=> b!5627438 (=> res!2383390 e!3468618)))

(assert (=> b!5627438 (= res!2383390 call!423959)))

(declare-fun e!3468619 () Bool)

(assert (=> b!5627438 (= e!3468619 e!3468618)))

(declare-fun b!5627439 () Bool)

(assert (=> b!5627439 (= e!3468621 e!3468619)))

(assert (=> b!5627439 (= c!987935 (is-Star!15618 r!7292))))

(assert (=> b!5627440 (= e!3468618 call!423958)))

(declare-fun b!5627441 () Bool)

(assert (=> b!5627441 (= e!3468623 (matchRSpec!2721 (regTwo!31749 r!7292) s!2326))))

(declare-fun b!5627442 () Bool)

(assert (=> b!5627442 (= e!3468624 (= s!2326 (Cons!63029 (c!987908 r!7292) Nil!63029)))))

(declare-fun b!5627443 () Bool)

(assert (=> b!5627443 (= e!3468620 call!423959)))

(assert (=> b!5627444 (= e!3468619 call!423958)))

(assert (= (and d!1777587 c!987933) b!5627443))

(assert (= (and d!1777587 (not c!987933)) b!5627435))

(assert (= (and b!5627435 res!2383388) b!5627436))

(assert (= (and b!5627436 c!987934) b!5627442))

(assert (= (and b!5627436 (not c!987934)) b!5627437))

(assert (= (and b!5627437 c!987932) b!5627434))

(assert (= (and b!5627437 (not c!987932)) b!5627439))

(assert (= (and b!5627434 (not res!2383389)) b!5627441))

(assert (= (and b!5627439 c!987935) b!5627438))

(assert (= (and b!5627439 (not c!987935)) b!5627444))

(assert (= (and b!5627438 (not res!2383390)) b!5627440))

(assert (= (or b!5627440 b!5627444) bm!423953))

(assert (= (or b!5627443 b!5627438) bm!423954))

(declare-fun m!6599380 () Bool)

(assert (=> bm!423953 m!6599380))

(declare-fun m!6599382 () Bool)

(assert (=> b!5627434 m!6599382))

(declare-fun m!6599384 () Bool)

(assert (=> bm!423954 m!6599384))

(declare-fun m!6599386 () Bool)

(assert (=> b!5627441 m!6599386))

(assert (=> b!5627271 d!1777587))

(declare-fun b!5627474 () Bool)

(declare-fun e!3468641 () Bool)

(assert (=> b!5627474 (= e!3468641 (not (= (head!11981 s!2326) (c!987908 r!7292))))))

(declare-fun b!5627475 () Bool)

(declare-fun e!3468645 () Bool)

(assert (=> b!5627475 (= e!3468645 (= (head!11981 s!2326) (c!987908 r!7292)))))

(declare-fun b!5627476 () Bool)

(declare-fun e!3468643 () Bool)

(declare-fun e!3468642 () Bool)

(assert (=> b!5627476 (= e!3468643 e!3468642)))

(declare-fun res!2383412 () Bool)

(assert (=> b!5627476 (=> (not res!2383412) (not e!3468642))))

(declare-fun lt!2261830 () Bool)

(assert (=> b!5627476 (= res!2383412 (not lt!2261830))))

(declare-fun b!5627477 () Bool)

(declare-fun e!3468644 () Bool)

(assert (=> b!5627477 (= e!3468644 (not lt!2261830))))

(declare-fun b!5627478 () Bool)

(declare-fun res!2383411 () Bool)

(assert (=> b!5627478 (=> (not res!2383411) (not e!3468645))))

(assert (=> b!5627478 (= res!2383411 (isEmpty!34868 (tail!11076 s!2326)))))

(declare-fun b!5627479 () Bool)

(declare-fun e!3468640 () Bool)

(assert (=> b!5627479 (= e!3468640 e!3468644)))

(declare-fun c!987944 () Bool)

(assert (=> b!5627479 (= c!987944 (is-EmptyLang!15618 r!7292))))

(declare-fun d!1777589 () Bool)

(assert (=> d!1777589 e!3468640))

(declare-fun c!987943 () Bool)

(assert (=> d!1777589 (= c!987943 (is-EmptyExpr!15618 r!7292))))

(declare-fun e!3468639 () Bool)

(assert (=> d!1777589 (= lt!2261830 e!3468639)))

(declare-fun c!987942 () Bool)

(assert (=> d!1777589 (= c!987942 (isEmpty!34868 s!2326))))

(assert (=> d!1777589 (validRegex!7354 r!7292)))

(assert (=> d!1777589 (= (matchR!7803 r!7292 s!2326) lt!2261830)))

(declare-fun b!5627473 () Bool)

(declare-fun derivativeStep!4454 (Regex!15618 C!31506) Regex!15618)

(assert (=> b!5627473 (= e!3468639 (matchR!7803 (derivativeStep!4454 r!7292 (head!11981 s!2326)) (tail!11076 s!2326)))))

(declare-fun b!5627480 () Bool)

(assert (=> b!5627480 (= e!3468639 (nullable!5650 r!7292))))

(declare-fun b!5627481 () Bool)

(declare-fun res!2383414 () Bool)

(assert (=> b!5627481 (=> res!2383414 e!3468643)))

(assert (=> b!5627481 (= res!2383414 (not (is-ElementMatch!15618 r!7292)))))

(assert (=> b!5627481 (= e!3468644 e!3468643)))

(declare-fun b!5627482 () Bool)

(declare-fun res!2383408 () Bool)

(assert (=> b!5627482 (=> res!2383408 e!3468641)))

(assert (=> b!5627482 (= res!2383408 (not (isEmpty!34868 (tail!11076 s!2326))))))

(declare-fun b!5627483 () Bool)

(assert (=> b!5627483 (= e!3468642 e!3468641)))

(declare-fun res!2383409 () Bool)

(assert (=> b!5627483 (=> res!2383409 e!3468641)))

(declare-fun call!423962 () Bool)

(assert (=> b!5627483 (= res!2383409 call!423962)))

(declare-fun bm!423957 () Bool)

(assert (=> bm!423957 (= call!423962 (isEmpty!34868 s!2326))))

(declare-fun b!5627484 () Bool)

(declare-fun res!2383407 () Bool)

(assert (=> b!5627484 (=> (not res!2383407) (not e!3468645))))

(assert (=> b!5627484 (= res!2383407 (not call!423962))))

(declare-fun b!5627485 () Bool)

(assert (=> b!5627485 (= e!3468640 (= lt!2261830 call!423962))))

(declare-fun b!5627486 () Bool)

(declare-fun res!2383413 () Bool)

(assert (=> b!5627486 (=> res!2383413 e!3468643)))

(assert (=> b!5627486 (= res!2383413 e!3468645)))

(declare-fun res!2383410 () Bool)

(assert (=> b!5627486 (=> (not res!2383410) (not e!3468645))))

(assert (=> b!5627486 (= res!2383410 lt!2261830)))

(assert (= (and d!1777589 c!987942) b!5627480))

(assert (= (and d!1777589 (not c!987942)) b!5627473))

(assert (= (and d!1777589 c!987943) b!5627485))

(assert (= (and d!1777589 (not c!987943)) b!5627479))

(assert (= (and b!5627479 c!987944) b!5627477))

(assert (= (and b!5627479 (not c!987944)) b!5627481))

(assert (= (and b!5627481 (not res!2383414)) b!5627486))

(assert (= (and b!5627486 res!2383410) b!5627484))

(assert (= (and b!5627484 res!2383407) b!5627478))

(assert (= (and b!5627478 res!2383411) b!5627475))

(assert (= (and b!5627486 (not res!2383413)) b!5627476))

(assert (= (and b!5627476 res!2383412) b!5627483))

(assert (= (and b!5627483 (not res!2383409)) b!5627482))

(assert (= (and b!5627482 (not res!2383408)) b!5627474))

(assert (= (or b!5627485 b!5627484 b!5627483) bm!423957))

(declare-fun m!6599388 () Bool)

(assert (=> b!5627475 m!6599388))

(assert (=> b!5627474 m!6599388))

(declare-fun m!6599390 () Bool)

(assert (=> b!5627480 m!6599390))

(assert (=> bm!423957 m!6599384))

(assert (=> d!1777589 m!6599384))

(assert (=> d!1777589 m!6599168))

(declare-fun m!6599392 () Bool)

(assert (=> b!5627478 m!6599392))

(assert (=> b!5627478 m!6599392))

(declare-fun m!6599394 () Bool)

(assert (=> b!5627478 m!6599394))

(assert (=> b!5627482 m!6599392))

(assert (=> b!5627482 m!6599392))

(assert (=> b!5627482 m!6599394))

(assert (=> b!5627473 m!6599388))

(assert (=> b!5627473 m!6599388))

(declare-fun m!6599396 () Bool)

(assert (=> b!5627473 m!6599396))

(assert (=> b!5627473 m!6599392))

(assert (=> b!5627473 m!6599396))

(assert (=> b!5627473 m!6599392))

(declare-fun m!6599398 () Bool)

(assert (=> b!5627473 m!6599398))

(assert (=> b!5627271 d!1777589))

(declare-fun d!1777591 () Bool)

(assert (=> d!1777591 (= (matchR!7803 r!7292 s!2326) (matchRSpec!2721 r!7292 s!2326))))

(declare-fun lt!2261833 () Unit!156004)

(declare-fun choose!42645 (Regex!15618 List!63153) Unit!156004)

(assert (=> d!1777591 (= lt!2261833 (choose!42645 r!7292 s!2326))))

(assert (=> d!1777591 (validRegex!7354 r!7292)))

(assert (=> d!1777591 (= (mainMatchTheorem!2721 r!7292 s!2326) lt!2261833)))

(declare-fun bs!1302445 () Bool)

(assert (= bs!1302445 d!1777591))

(assert (=> bs!1302445 m!6599242))

(assert (=> bs!1302445 m!6599240))

(declare-fun m!6599400 () Bool)

(assert (=> bs!1302445 m!6599400))

(assert (=> bs!1302445 m!6599168))

(assert (=> b!5627271 d!1777591))

(declare-fun bs!1302446 () Bool)

(declare-fun d!1777593 () Bool)

(assert (= bs!1302446 (and d!1777593 b!5627247)))

(declare-fun lambda!302315 () Int)

(assert (=> bs!1302446 (= lambda!302315 lambda!302291)))

(assert (=> d!1777593 true))

(assert (=> d!1777593 (= (derivationStepZipper!1705 lt!2261743 (h!69477 s!2326)) (flatMap!1231 lt!2261743 lambda!302315))))

(declare-fun bs!1302447 () Bool)

(assert (= bs!1302447 d!1777593))

(declare-fun m!6599402 () Bool)

(assert (=> bs!1302447 m!6599402))

(assert (=> b!5627252 d!1777593))

(declare-fun d!1777595 () Bool)

(assert (=> d!1777595 (= (isEmpty!34864 (t!376446 (exprs!5502 (h!69479 zl!343)))) (is-Nil!63030 (t!376446 (exprs!5502 (h!69479 zl!343)))))))

(assert (=> b!5627261 d!1777595))

(declare-fun d!1777597 () Bool)

(declare-fun lambda!302318 () Int)

(declare-fun forall!14773 (List!63154 Int) Bool)

(assert (=> d!1777597 (= (inv!82293 setElem!37573) (forall!14773 (exprs!5502 setElem!37573) lambda!302318))))

(declare-fun bs!1302448 () Bool)

(assert (= bs!1302448 d!1777597))

(declare-fun m!6599404 () Bool)

(assert (=> bs!1302448 m!6599404))

(assert (=> setNonEmpty!37573 d!1777597))

(declare-fun d!1777599 () Bool)

(declare-fun c!987947 () Bool)

(assert (=> d!1777599 (= c!987947 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468646 () Bool)

(assert (=> d!1777599 (= (matchZipper!1756 lt!2261738 (t!376445 s!2326)) e!3468646)))

(declare-fun b!5627489 () Bool)

(assert (=> b!5627489 (= e!3468646 (nullableZipper!1601 lt!2261738))))

(declare-fun b!5627490 () Bool)

(assert (=> b!5627490 (= e!3468646 (matchZipper!1756 (derivationStepZipper!1705 lt!2261738 (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777599 c!987947) b!5627489))

(assert (= (and d!1777599 (not c!987947)) b!5627490))

(assert (=> d!1777599 m!6599362))

(declare-fun m!6599406 () Bool)

(assert (=> b!5627489 m!6599406))

(assert (=> b!5627490 m!6599366))

(assert (=> b!5627490 m!6599366))

(declare-fun m!6599408 () Bool)

(assert (=> b!5627490 m!6599408))

(assert (=> b!5627490 m!6599370))

(assert (=> b!5627490 m!6599408))

(assert (=> b!5627490 m!6599370))

(declare-fun m!6599410 () Bool)

(assert (=> b!5627490 m!6599410))

(assert (=> b!5627249 d!1777599))

(declare-fun d!1777601 () Bool)

(declare-fun e!3468649 () Bool)

(assert (=> d!1777601 e!3468649))

(declare-fun res!2383417 () Bool)

(assert (=> d!1777601 (=> (not res!2383417) (not e!3468649))))

(declare-fun lt!2261836 () List!63155)

(declare-fun noDuplicate!1582 (List!63155) Bool)

(assert (=> d!1777601 (= res!2383417 (noDuplicate!1582 lt!2261836))))

(declare-fun choose!42646 ((Set Context!10004)) List!63155)

(assert (=> d!1777601 (= lt!2261836 (choose!42646 z!1189))))

(assert (=> d!1777601 (= (toList!9402 z!1189) lt!2261836)))

(declare-fun b!5627493 () Bool)

(declare-fun content!11393 (List!63155) (Set Context!10004))

(assert (=> b!5627493 (= e!3468649 (= (content!11393 lt!2261836) z!1189))))

(assert (= (and d!1777601 res!2383417) b!5627493))

(declare-fun m!6599412 () Bool)

(assert (=> d!1777601 m!6599412))

(declare-fun m!6599414 () Bool)

(assert (=> d!1777601 m!6599414))

(declare-fun m!6599416 () Bool)

(assert (=> b!5627493 m!6599416))

(assert (=> b!5627259 d!1777601))

(declare-fun d!1777603 () Bool)

(declare-fun nullableFct!1747 (Regex!15618) Bool)

(assert (=> d!1777603 (= (nullable!5650 (regOne!31748 (regOne!31748 r!7292))) (nullableFct!1747 (regOne!31748 (regOne!31748 r!7292))))))

(declare-fun bs!1302449 () Bool)

(assert (= bs!1302449 d!1777603))

(declare-fun m!6599418 () Bool)

(assert (=> bs!1302449 m!6599418))

(assert (=> b!5627258 d!1777603))

(declare-fun c!987952 () Bool)

(declare-fun bm!423964 () Bool)

(declare-fun c!987953 () Bool)

(declare-fun call!423970 () Bool)

(assert (=> bm!423964 (= call!423970 (validRegex!7354 (ite c!987952 (reg!15947 r!7292) (ite c!987953 (regOne!31749 r!7292) (regOne!31748 r!7292)))))))

(declare-fun d!1777605 () Bool)

(declare-fun res!2383431 () Bool)

(declare-fun e!3468666 () Bool)

(assert (=> d!1777605 (=> res!2383431 e!3468666)))

(assert (=> d!1777605 (= res!2383431 (is-ElementMatch!15618 r!7292))))

(assert (=> d!1777605 (= (validRegex!7354 r!7292) e!3468666)))

(declare-fun b!5627512 () Bool)

(declare-fun e!3468664 () Bool)

(declare-fun call!423971 () Bool)

(assert (=> b!5627512 (= e!3468664 call!423971)))

(declare-fun b!5627513 () Bool)

(declare-fun e!3468665 () Bool)

(assert (=> b!5627513 (= e!3468666 e!3468665)))

(assert (=> b!5627513 (= c!987952 (is-Star!15618 r!7292))))

(declare-fun b!5627514 () Bool)

(declare-fun res!2383430 () Bool)

(declare-fun e!3468668 () Bool)

(assert (=> b!5627514 (=> res!2383430 e!3468668)))

(assert (=> b!5627514 (= res!2383430 (not (is-Concat!24463 r!7292)))))

(declare-fun e!3468669 () Bool)

(assert (=> b!5627514 (= e!3468669 e!3468668)))

(declare-fun b!5627515 () Bool)

(assert (=> b!5627515 (= e!3468668 e!3468664)))

(declare-fun res!2383428 () Bool)

(assert (=> b!5627515 (=> (not res!2383428) (not e!3468664))))

(declare-fun call!423969 () Bool)

(assert (=> b!5627515 (= res!2383428 call!423969)))

(declare-fun b!5627516 () Bool)

(declare-fun res!2383429 () Bool)

(declare-fun e!3468667 () Bool)

(assert (=> b!5627516 (=> (not res!2383429) (not e!3468667))))

(assert (=> b!5627516 (= res!2383429 call!423969)))

(assert (=> b!5627516 (= e!3468669 e!3468667)))

(declare-fun bm!423965 () Bool)

(assert (=> bm!423965 (= call!423969 call!423970)))

(declare-fun b!5627517 () Bool)

(declare-fun e!3468670 () Bool)

(assert (=> b!5627517 (= e!3468670 call!423970)))

(declare-fun b!5627518 () Bool)

(assert (=> b!5627518 (= e!3468665 e!3468670)))

(declare-fun res!2383432 () Bool)

(assert (=> b!5627518 (= res!2383432 (not (nullable!5650 (reg!15947 r!7292))))))

(assert (=> b!5627518 (=> (not res!2383432) (not e!3468670))))

(declare-fun b!5627519 () Bool)

(assert (=> b!5627519 (= e!3468667 call!423971)))

(declare-fun b!5627520 () Bool)

(assert (=> b!5627520 (= e!3468665 e!3468669)))

(assert (=> b!5627520 (= c!987953 (is-Union!15618 r!7292))))

(declare-fun bm!423966 () Bool)

(assert (=> bm!423966 (= call!423971 (validRegex!7354 (ite c!987953 (regTwo!31749 r!7292) (regTwo!31748 r!7292))))))

(assert (= (and d!1777605 (not res!2383431)) b!5627513))

(assert (= (and b!5627513 c!987952) b!5627518))

(assert (= (and b!5627513 (not c!987952)) b!5627520))

(assert (= (and b!5627518 res!2383432) b!5627517))

(assert (= (and b!5627520 c!987953) b!5627516))

(assert (= (and b!5627520 (not c!987953)) b!5627514))

(assert (= (and b!5627516 res!2383429) b!5627519))

(assert (= (and b!5627514 (not res!2383430)) b!5627515))

(assert (= (and b!5627515 res!2383428) b!5627512))

(assert (= (or b!5627519 b!5627512) bm!423966))

(assert (= (or b!5627516 b!5627515) bm!423965))

(assert (= (or b!5627517 bm!423965) bm!423964))

(declare-fun m!6599420 () Bool)

(assert (=> bm!423964 m!6599420))

(declare-fun m!6599422 () Bool)

(assert (=> b!5627518 m!6599422))

(declare-fun m!6599424 () Bool)

(assert (=> bm!423966 m!6599424))

(assert (=> start!583022 d!1777605))

(assert (=> b!5627267 d!1777583))

(declare-fun d!1777607 () Bool)

(declare-fun c!987954 () Bool)

(assert (=> d!1777607 (= c!987954 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468671 () Bool)

(assert (=> d!1777607 (= (matchZipper!1756 lt!2261739 (t!376445 s!2326)) e!3468671)))

(declare-fun b!5627521 () Bool)

(assert (=> b!5627521 (= e!3468671 (nullableZipper!1601 lt!2261739))))

(declare-fun b!5627522 () Bool)

(assert (=> b!5627522 (= e!3468671 (matchZipper!1756 (derivationStepZipper!1705 lt!2261739 (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777607 c!987954) b!5627521))

(assert (= (and d!1777607 (not c!987954)) b!5627522))

(assert (=> d!1777607 m!6599362))

(declare-fun m!6599426 () Bool)

(assert (=> b!5627521 m!6599426))

(assert (=> b!5627522 m!6599366))

(assert (=> b!5627522 m!6599366))

(declare-fun m!6599428 () Bool)

(assert (=> b!5627522 m!6599428))

(assert (=> b!5627522 m!6599370))

(assert (=> b!5627522 m!6599428))

(assert (=> b!5627522 m!6599370))

(declare-fun m!6599430 () Bool)

(assert (=> b!5627522 m!6599430))

(assert (=> b!5627267 d!1777607))

(declare-fun d!1777609 () Bool)

(declare-fun c!987955 () Bool)

(assert (=> d!1777609 (= c!987955 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468672 () Bool)

(assert (=> d!1777609 (= (matchZipper!1756 lt!2261731 (t!376445 s!2326)) e!3468672)))

(declare-fun b!5627523 () Bool)

(assert (=> b!5627523 (= e!3468672 (nullableZipper!1601 lt!2261731))))

(declare-fun b!5627524 () Bool)

(assert (=> b!5627524 (= e!3468672 (matchZipper!1756 (derivationStepZipper!1705 lt!2261731 (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777609 c!987955) b!5627523))

(assert (= (and d!1777609 (not c!987955)) b!5627524))

(assert (=> d!1777609 m!6599362))

(declare-fun m!6599432 () Bool)

(assert (=> b!5627523 m!6599432))

(assert (=> b!5627524 m!6599366))

(assert (=> b!5627524 m!6599366))

(declare-fun m!6599434 () Bool)

(assert (=> b!5627524 m!6599434))

(assert (=> b!5627524 m!6599370))

(assert (=> b!5627524 m!6599434))

(assert (=> b!5627524 m!6599370))

(declare-fun m!6599436 () Bool)

(assert (=> b!5627524 m!6599436))

(assert (=> b!5627267 d!1777609))

(declare-fun d!1777611 () Bool)

(declare-fun e!3468673 () Bool)

(assert (=> d!1777611 (= (matchZipper!1756 (set.union lt!2261731 lt!2261738) (t!376445 s!2326)) e!3468673)))

(declare-fun res!2383433 () Bool)

(assert (=> d!1777611 (=> res!2383433 e!3468673)))

(assert (=> d!1777611 (= res!2383433 (matchZipper!1756 lt!2261731 (t!376445 s!2326)))))

(declare-fun lt!2261837 () Unit!156004)

(assert (=> d!1777611 (= lt!2261837 (choose!42644 lt!2261731 lt!2261738 (t!376445 s!2326)))))

(assert (=> d!1777611 (= (lemmaZipperConcatMatchesSameAsBothZippers!643 lt!2261731 lt!2261738 (t!376445 s!2326)) lt!2261837)))

(declare-fun b!5627525 () Bool)

(assert (=> b!5627525 (= e!3468673 (matchZipper!1756 lt!2261738 (t!376445 s!2326)))))

(assert (= (and d!1777611 (not res!2383433)) b!5627525))

(declare-fun m!6599438 () Bool)

(assert (=> d!1777611 m!6599438))

(assert (=> d!1777611 m!6599220))

(declare-fun m!6599440 () Bool)

(assert (=> d!1777611 m!6599440))

(assert (=> b!5627525 m!6599254))

(assert (=> b!5627267 d!1777611))

(declare-fun d!1777613 () Bool)

(declare-fun c!987956 () Bool)

(assert (=> d!1777613 (= c!987956 (isEmpty!34868 (t!376445 s!2326)))))

(declare-fun e!3468674 () Bool)

(assert (=> d!1777613 (= (matchZipper!1756 lt!2261746 (t!376445 s!2326)) e!3468674)))

(declare-fun b!5627526 () Bool)

(assert (=> b!5627526 (= e!3468674 (nullableZipper!1601 lt!2261746))))

(declare-fun b!5627527 () Bool)

(assert (=> b!5627527 (= e!3468674 (matchZipper!1756 (derivationStepZipper!1705 lt!2261746 (head!11981 (t!376445 s!2326))) (tail!11076 (t!376445 s!2326))))))

(assert (= (and d!1777613 c!987956) b!5627526))

(assert (= (and d!1777613 (not c!987956)) b!5627527))

(assert (=> d!1777613 m!6599362))

(declare-fun m!6599442 () Bool)

(assert (=> b!5627526 m!6599442))

(assert (=> b!5627527 m!6599366))

(assert (=> b!5627527 m!6599366))

(declare-fun m!6599444 () Bool)

(assert (=> b!5627527 m!6599444))

(assert (=> b!5627527 m!6599370))

(assert (=> b!5627527 m!6599444))

(assert (=> b!5627527 m!6599370))

(declare-fun m!6599446 () Bool)

(assert (=> b!5627527 m!6599446))

(assert (=> b!5627248 d!1777613))

(declare-fun bs!1302450 () Bool)

(declare-fun d!1777615 () Bool)

(assert (= bs!1302450 (and d!1777615 d!1777597)))

(declare-fun lambda!302321 () Int)

(assert (=> bs!1302450 (= lambda!302321 lambda!302318)))

(declare-fun b!5627548 () Bool)

(declare-fun e!3468688 () Bool)

(declare-fun e!3468691 () Bool)

(assert (=> b!5627548 (= e!3468688 e!3468691)))

(declare-fun c!987966 () Bool)

(assert (=> b!5627548 (= c!987966 (isEmpty!34864 (exprs!5502 (h!69479 zl!343))))))

(declare-fun b!5627549 () Bool)

(declare-fun lt!2261840 () Regex!15618)

(declare-fun isEmptyExpr!1160 (Regex!15618) Bool)

(assert (=> b!5627549 (= e!3468691 (isEmptyExpr!1160 lt!2261840))))

(declare-fun b!5627550 () Bool)

(declare-fun e!3468687 () Bool)

(assert (=> b!5627550 (= e!3468687 (isEmpty!34864 (t!376446 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun b!5627551 () Bool)

(declare-fun e!3468689 () Regex!15618)

(assert (=> b!5627551 (= e!3468689 (Concat!24463 (h!69478 (exprs!5502 (h!69479 zl!343))) (generalisedConcat!1233 (t!376446 (exprs!5502 (h!69479 zl!343))))))))

(declare-fun b!5627552 () Bool)

(declare-fun e!3468692 () Bool)

(declare-fun isConcat!683 (Regex!15618) Bool)

(assert (=> b!5627552 (= e!3468692 (isConcat!683 lt!2261840))))

(declare-fun b!5627553 () Bool)

(declare-fun e!3468690 () Regex!15618)

(assert (=> b!5627553 (= e!3468690 e!3468689)))

(declare-fun c!987967 () Bool)

(assert (=> b!5627553 (= c!987967 (is-Cons!63030 (exprs!5502 (h!69479 zl!343))))))

(declare-fun b!5627554 () Bool)

(assert (=> b!5627554 (= e!3468691 e!3468692)))

(declare-fun c!987968 () Bool)

(declare-fun tail!11077 (List!63154) List!63154)

(assert (=> b!5627554 (= c!987968 (isEmpty!34864 (tail!11077 (exprs!5502 (h!69479 zl!343)))))))

(assert (=> d!1777615 e!3468688))

(declare-fun res!2383438 () Bool)

(assert (=> d!1777615 (=> (not res!2383438) (not e!3468688))))

(assert (=> d!1777615 (= res!2383438 (validRegex!7354 lt!2261840))))

(assert (=> d!1777615 (= lt!2261840 e!3468690)))

(declare-fun c!987965 () Bool)

(assert (=> d!1777615 (= c!987965 e!3468687)))

(declare-fun res!2383439 () Bool)

(assert (=> d!1777615 (=> (not res!2383439) (not e!3468687))))

(assert (=> d!1777615 (= res!2383439 (is-Cons!63030 (exprs!5502 (h!69479 zl!343))))))

(assert (=> d!1777615 (forall!14773 (exprs!5502 (h!69479 zl!343)) lambda!302321)))

(assert (=> d!1777615 (= (generalisedConcat!1233 (exprs!5502 (h!69479 zl!343))) lt!2261840)))

(declare-fun b!5627555 () Bool)

(assert (=> b!5627555 (= e!3468690 (h!69478 (exprs!5502 (h!69479 zl!343))))))

(declare-fun b!5627556 () Bool)

(assert (=> b!5627556 (= e!3468689 EmptyExpr!15618)))

(declare-fun b!5627557 () Bool)

(declare-fun head!11982 (List!63154) Regex!15618)

(assert (=> b!5627557 (= e!3468692 (= lt!2261840 (head!11982 (exprs!5502 (h!69479 zl!343)))))))

(assert (= (and d!1777615 res!2383439) b!5627550))

(assert (= (and d!1777615 c!987965) b!5627555))

(assert (= (and d!1777615 (not c!987965)) b!5627553))

(assert (= (and b!5627553 c!987967) b!5627551))

(assert (= (and b!5627553 (not c!987967)) b!5627556))

(assert (= (and d!1777615 res!2383438) b!5627548))

(assert (= (and b!5627548 c!987966) b!5627549))

(assert (= (and b!5627548 (not c!987966)) b!5627554))

(assert (= (and b!5627554 c!987968) b!5627557))

(assert (= (and b!5627554 (not c!987968)) b!5627552))

(assert (=> b!5627550 m!6599208))

(declare-fun m!6599448 () Bool)

(assert (=> b!5627557 m!6599448))

(declare-fun m!6599450 () Bool)

(assert (=> d!1777615 m!6599450))

(declare-fun m!6599452 () Bool)

(assert (=> d!1777615 m!6599452))

(declare-fun m!6599454 () Bool)

(assert (=> b!5627551 m!6599454))

(declare-fun m!6599456 () Bool)

(assert (=> b!5627552 m!6599456))

(declare-fun m!6599458 () Bool)

(assert (=> b!5627548 m!6599458))

(declare-fun m!6599460 () Bool)

(assert (=> b!5627549 m!6599460))

(declare-fun m!6599462 () Bool)

(assert (=> b!5627554 m!6599462))

(assert (=> b!5627554 m!6599462))

(declare-fun m!6599464 () Bool)

(assert (=> b!5627554 m!6599464))

(assert (=> b!5627276 d!1777615))

(declare-fun b!5627580 () Bool)

(declare-fun e!3468708 () (Set Context!10004))

(declare-fun e!3468705 () (Set Context!10004))

(assert (=> b!5627580 (= e!3468708 e!3468705)))

(declare-fun c!987983 () Bool)

(assert (=> b!5627580 (= c!987983 (is-Union!15618 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun b!5627581 () Bool)

(declare-fun e!3468709 () (Set Context!10004))

(declare-fun e!3468707 () (Set Context!10004))

(assert (=> b!5627581 (= e!3468709 e!3468707)))

(declare-fun c!987980 () Bool)

(assert (=> b!5627581 (= c!987980 (is-Concat!24463 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun call!423984 () (Set Context!10004))

(declare-fun call!423985 () List!63154)

(declare-fun bm!423979 () Bool)

(assert (=> bm!423979 (= call!423984 (derivationStepZipperDown!960 (ite c!987983 (regOne!31749 (h!69478 (exprs!5502 (h!69479 zl!343)))) (regOne!31748 (h!69478 (exprs!5502 (h!69479 zl!343))))) (ite c!987983 lt!2261729 (Context!10005 call!423985)) (h!69477 s!2326)))))

(declare-fun bm!423980 () Bool)

(declare-fun call!423987 () (Set Context!10004))

(declare-fun call!423988 () (Set Context!10004))

(assert (=> bm!423980 (= call!423987 call!423988)))

(declare-fun b!5627582 () Bool)

(declare-fun c!987979 () Bool)

(assert (=> b!5627582 (= c!987979 (is-Star!15618 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun e!3468706 () (Set Context!10004))

(assert (=> b!5627582 (= e!3468707 e!3468706)))

(declare-fun b!5627583 () Bool)

(declare-fun e!3468710 () Bool)

(assert (=> b!5627583 (= e!3468710 (nullable!5650 (regOne!31748 (h!69478 (exprs!5502 (h!69479 zl!343))))))))

(declare-fun b!5627584 () Bool)

(declare-fun call!423989 () (Set Context!10004))

(assert (=> b!5627584 (= e!3468705 (set.union call!423984 call!423989))))

(declare-fun c!987981 () Bool)

(declare-fun bm!423981 () Bool)

(declare-fun call!423986 () List!63154)

(assert (=> bm!423981 (= call!423989 (derivationStepZipperDown!960 (ite c!987983 (regTwo!31749 (h!69478 (exprs!5502 (h!69479 zl!343)))) (ite c!987981 (regTwo!31748 (h!69478 (exprs!5502 (h!69479 zl!343)))) (ite c!987980 (regOne!31748 (h!69478 (exprs!5502 (h!69479 zl!343)))) (reg!15947 (h!69478 (exprs!5502 (h!69479 zl!343))))))) (ite (or c!987983 c!987981) lt!2261729 (Context!10005 call!423986)) (h!69477 s!2326)))))

(declare-fun bm!423982 () Bool)

(assert (=> bm!423982 (= call!423988 call!423989)))

(declare-fun b!5627585 () Bool)

(assert (=> b!5627585 (= c!987981 e!3468710)))

(declare-fun res!2383442 () Bool)

(assert (=> b!5627585 (=> (not res!2383442) (not e!3468710))))

(assert (=> b!5627585 (= res!2383442 (is-Concat!24463 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(assert (=> b!5627585 (= e!3468705 e!3468709)))

(declare-fun b!5627586 () Bool)

(assert (=> b!5627586 (= e!3468706 (as set.empty (Set Context!10004)))))

(declare-fun b!5627587 () Bool)

(assert (=> b!5627587 (= e!3468706 call!423987)))

(declare-fun d!1777617 () Bool)

(declare-fun c!987982 () Bool)

(assert (=> d!1777617 (= c!987982 (and (is-ElementMatch!15618 (h!69478 (exprs!5502 (h!69479 zl!343)))) (= (c!987908 (h!69478 (exprs!5502 (h!69479 zl!343)))) (h!69477 s!2326))))))

(assert (=> d!1777617 (= (derivationStepZipperDown!960 (h!69478 (exprs!5502 (h!69479 zl!343))) lt!2261729 (h!69477 s!2326)) e!3468708)))

(declare-fun bm!423983 () Bool)

(assert (=> bm!423983 (= call!423986 call!423985)))

(declare-fun b!5627588 () Bool)

(assert (=> b!5627588 (= e!3468707 call!423987)))

(declare-fun bm!423984 () Bool)

(declare-fun $colon$colon!1669 (List!63154 Regex!15618) List!63154)

(assert (=> bm!423984 (= call!423985 ($colon$colon!1669 (exprs!5502 lt!2261729) (ite (or c!987981 c!987980) (regTwo!31748 (h!69478 (exprs!5502 (h!69479 zl!343)))) (h!69478 (exprs!5502 (h!69479 zl!343))))))))

(declare-fun b!5627589 () Bool)

(assert (=> b!5627589 (= e!3468709 (set.union call!423984 call!423988))))

(declare-fun b!5627590 () Bool)

(assert (=> b!5627590 (= e!3468708 (set.insert lt!2261729 (as set.empty (Set Context!10004))))))

(assert (= (and d!1777617 c!987982) b!5627590))

(assert (= (and d!1777617 (not c!987982)) b!5627580))

(assert (= (and b!5627580 c!987983) b!5627584))

(assert (= (and b!5627580 (not c!987983)) b!5627585))

(assert (= (and b!5627585 res!2383442) b!5627583))

(assert (= (and b!5627585 c!987981) b!5627589))

(assert (= (and b!5627585 (not c!987981)) b!5627581))

(assert (= (and b!5627581 c!987980) b!5627588))

(assert (= (and b!5627581 (not c!987980)) b!5627582))

(assert (= (and b!5627582 c!987979) b!5627587))

(assert (= (and b!5627582 (not c!987979)) b!5627586))

(assert (= (or b!5627588 b!5627587) bm!423983))

(assert (= (or b!5627588 b!5627587) bm!423980))

(assert (= (or b!5627589 bm!423983) bm!423984))

(assert (= (or b!5627589 bm!423980) bm!423982))

(assert (= (or b!5627584 bm!423982) bm!423981))

(assert (= (or b!5627584 b!5627589) bm!423979))

(declare-fun m!6599466 () Bool)

(assert (=> bm!423979 m!6599466))

(declare-fun m!6599468 () Bool)

(assert (=> b!5627590 m!6599468))

(declare-fun m!6599470 () Bool)

(assert (=> b!5627583 m!6599470))

(declare-fun m!6599472 () Bool)

(assert (=> bm!423984 m!6599472))

(declare-fun m!6599474 () Bool)

(assert (=> bm!423981 m!6599474))

(assert (=> b!5627247 d!1777617))

(declare-fun d!1777619 () Bool)

(declare-fun dynLambda!24647 (Int Context!10004) (Set Context!10004))

(assert (=> d!1777619 (= (flatMap!1231 z!1189 lambda!302291) (dynLambda!24647 lambda!302291 (h!69479 zl!343)))))

(declare-fun lt!2261843 () Unit!156004)

(declare-fun choose!42647 ((Set Context!10004) Context!10004 Int) Unit!156004)

(assert (=> d!1777619 (= lt!2261843 (choose!42647 z!1189 (h!69479 zl!343) lambda!302291))))

(assert (=> d!1777619 (= z!1189 (set.insert (h!69479 zl!343) (as set.empty (Set Context!10004))))))

(assert (=> d!1777619 (= (lemmaFlatMapOnSingletonSet!763 z!1189 (h!69479 zl!343) lambda!302291) lt!2261843)))

(declare-fun b_lambda!212835 () Bool)

(assert (=> (not b_lambda!212835) (not d!1777619)))

(declare-fun bs!1302451 () Bool)

(assert (= bs!1302451 d!1777619))

(assert (=> bs!1302451 m!6599186))

(declare-fun m!6599476 () Bool)

(assert (=> bs!1302451 m!6599476))

(declare-fun m!6599478 () Bool)

(assert (=> bs!1302451 m!6599478))

(declare-fun m!6599480 () Bool)

(assert (=> bs!1302451 m!6599480))

(assert (=> b!5627247 d!1777619))

(declare-fun d!1777621 () Bool)

(assert (=> d!1777621 (= (nullable!5650 (h!69478 (exprs!5502 (h!69479 zl!343)))) (nullableFct!1747 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun bs!1302452 () Bool)

(assert (= bs!1302452 d!1777621))

(declare-fun m!6599482 () Bool)

(assert (=> bs!1302452 m!6599482))

(assert (=> b!5627247 d!1777621))

(declare-fun bm!423987 () Bool)

(declare-fun call!423992 () (Set Context!10004))

(assert (=> bm!423987 (= call!423992 (derivationStepZipperDown!960 (h!69478 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343))))))) (Context!10005 (t!376446 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343)))))))) (h!69477 s!2326)))))

(declare-fun b!5627601 () Bool)

(declare-fun e!3468719 () Bool)

(assert (=> b!5627601 (= e!3468719 (nullable!5650 (h!69478 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343)))))))))))

(declare-fun d!1777623 () Bool)

(declare-fun c!987988 () Bool)

(assert (=> d!1777623 (= c!987988 e!3468719)))

(declare-fun res!2383445 () Bool)

(assert (=> d!1777623 (=> (not res!2383445) (not e!3468719))))

(assert (=> d!1777623 (= res!2383445 (is-Cons!63030 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343))))))))))

(declare-fun e!3468717 () (Set Context!10004))

(assert (=> d!1777623 (= (derivationStepZipperUp!886 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343))))) (h!69477 s!2326)) e!3468717)))

(declare-fun b!5627602 () Bool)

(assert (=> b!5627602 (= e!3468717 (set.union call!423992 (derivationStepZipperUp!886 (Context!10005 (t!376446 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343)))))))) (h!69477 s!2326))))))

(declare-fun b!5627603 () Bool)

(declare-fun e!3468718 () (Set Context!10004))

(assert (=> b!5627603 (= e!3468718 call!423992)))

(declare-fun b!5627604 () Bool)

(assert (=> b!5627604 (= e!3468718 (as set.empty (Set Context!10004)))))

(declare-fun b!5627605 () Bool)

(assert (=> b!5627605 (= e!3468717 e!3468718)))

(declare-fun c!987989 () Bool)

(assert (=> b!5627605 (= c!987989 (is-Cons!63030 (exprs!5502 (Context!10005 (Cons!63030 (h!69478 (exprs!5502 (h!69479 zl!343))) (t!376446 (exprs!5502 (h!69479 zl!343))))))))))

(assert (= (and d!1777623 res!2383445) b!5627601))

(assert (= (and d!1777623 c!987988) b!5627602))

(assert (= (and d!1777623 (not c!987988)) b!5627605))

(assert (= (and b!5627605 c!987989) b!5627603))

(assert (= (and b!5627605 (not c!987989)) b!5627604))

(assert (= (or b!5627602 b!5627603) bm!423987))

(declare-fun m!6599484 () Bool)

(assert (=> bm!423987 m!6599484))

(declare-fun m!6599486 () Bool)

(assert (=> b!5627601 m!6599486))

(declare-fun m!6599488 () Bool)

(assert (=> b!5627602 m!6599488))

(assert (=> b!5627247 d!1777623))

(declare-fun bm!423988 () Bool)

(declare-fun call!423993 () (Set Context!10004))

(assert (=> bm!423988 (= call!423993 (derivationStepZipperDown!960 (h!69478 (exprs!5502 lt!2261729)) (Context!10005 (t!376446 (exprs!5502 lt!2261729))) (h!69477 s!2326)))))

(declare-fun b!5627606 () Bool)

(declare-fun e!3468722 () Bool)

(assert (=> b!5627606 (= e!3468722 (nullable!5650 (h!69478 (exprs!5502 lt!2261729))))))

(declare-fun d!1777625 () Bool)

(declare-fun c!987990 () Bool)

(assert (=> d!1777625 (= c!987990 e!3468722)))

(declare-fun res!2383446 () Bool)

(assert (=> d!1777625 (=> (not res!2383446) (not e!3468722))))

(assert (=> d!1777625 (= res!2383446 (is-Cons!63030 (exprs!5502 lt!2261729)))))

(declare-fun e!3468720 () (Set Context!10004))

(assert (=> d!1777625 (= (derivationStepZipperUp!886 lt!2261729 (h!69477 s!2326)) e!3468720)))

(declare-fun b!5627607 () Bool)

(assert (=> b!5627607 (= e!3468720 (set.union call!423993 (derivationStepZipperUp!886 (Context!10005 (t!376446 (exprs!5502 lt!2261729))) (h!69477 s!2326))))))

(declare-fun b!5627608 () Bool)

(declare-fun e!3468721 () (Set Context!10004))

(assert (=> b!5627608 (= e!3468721 call!423993)))

(declare-fun b!5627609 () Bool)

(assert (=> b!5627609 (= e!3468721 (as set.empty (Set Context!10004)))))

(declare-fun b!5627610 () Bool)

(assert (=> b!5627610 (= e!3468720 e!3468721)))

(declare-fun c!987991 () Bool)

(assert (=> b!5627610 (= c!987991 (is-Cons!63030 (exprs!5502 lt!2261729)))))

(assert (= (and d!1777625 res!2383446) b!5627606))

(assert (= (and d!1777625 c!987990) b!5627607))

(assert (= (and d!1777625 (not c!987990)) b!5627610))

(assert (= (and b!5627610 c!987991) b!5627608))

(assert (= (and b!5627610 (not c!987991)) b!5627609))

(assert (= (or b!5627607 b!5627608) bm!423988))

(declare-fun m!6599490 () Bool)

(assert (=> bm!423988 m!6599490))

(declare-fun m!6599492 () Bool)

(assert (=> b!5627606 m!6599492))

(declare-fun m!6599494 () Bool)

(assert (=> b!5627607 m!6599494))

(assert (=> b!5627247 d!1777625))

(declare-fun bm!423989 () Bool)

(declare-fun call!423994 () (Set Context!10004))

(assert (=> bm!423989 (= call!423994 (derivationStepZipperDown!960 (h!69478 (exprs!5502 (h!69479 zl!343))) (Context!10005 (t!376446 (exprs!5502 (h!69479 zl!343)))) (h!69477 s!2326)))))

(declare-fun b!5627611 () Bool)

(declare-fun e!3468725 () Bool)

(assert (=> b!5627611 (= e!3468725 (nullable!5650 (h!69478 (exprs!5502 (h!69479 zl!343)))))))

(declare-fun d!1777627 () Bool)

(declare-fun c!987992 () Bool)

(assert (=> d!1777627 (= c!987992 e!3468725)))

(declare-fun res!2383447 () Bool)

(assert (=> d!1777627 (=> (not res!2383447) (not e!3468725))))

(assert (=> d!1777627 (= res!2383447 (is-Cons!63030 (exprs!5502 (h!69479 zl!343))))))

(declare-fun e!3468723 () (Set Context!10004))

(assert (=> d!1777627 (= (derivationStepZipperUp!886 (h!69479 zl!343) (h!69477 s!2326)) e!3468723)))

(declare-fun b!5627612 () Bool)

(assert (=> b!5627612 (= e!3468723 (set.union call!423994 (derivationStepZipperUp!886 (Context!10005 (t!376446 (exprs!5502 (h!69479 zl!343)))) (h!69477 s!2326))))))

(declare-fun b!5627613 () Bool)

(declare-fun e!3468724 () (Set Context!10004))

(assert (=> b!5627613 (= e!3468724 call!423994)))

(declare-fun b!5627614 () Bool)

(assert (=> b!5627614 (= e!3468724 (as set.empty (Set Context!10004)))))

(declare-fun b!5627615 () Bool)

(assert (=> b!5627615 (= e!3468723 e!3468724)))

(declare-fun c!987993 () Bool)

(assert (=> b!5627615 (= c!987993 (is-Cons!63030 (exprs!5502 (h!69479 zl!343))))))

(assert (= (and d!1777627 res!2383447) b!5627611))

(assert (= (and d!1777627 c!987992) b!5627612))

(assert (= (and d!1777627 (not c!987992)) b!5627615))

(assert (= (and b!5627615 c!987993) b!5627613))

(assert (= (and b!5627615 (not c!987993)) b!5627614))

(assert (= (or b!5627612 b!5627613) bm!423989))

(declare-fun m!6599496 () Bool)

(assert (=> bm!423989 m!6599496))

(assert (=> b!5627611 m!6599184))

(declare-fun m!6599498 () Bool)

(assert (=> b!5627612 m!6599498))

(assert (=> b!5627247 d!1777627))

(declare-fun d!1777629 () Bool)

(declare-fun choose!42648 ((Set Context!10004) Int) (Set Context!10004))

(assert (=> d!1777629 (= (flatMap!1231 z!1189 lambda!302291) (choose!42648 z!1189 lambda!302291))))

(declare-fun bs!1302453 () Bool)

(assert (= bs!1302453 d!1777629))

(declare-fun m!6599500 () Bool)

(assert (=> bs!1302453 m!6599500))

(assert (=> b!5627247 d!1777629))

(declare-fun bs!1302454 () Bool)

(declare-fun d!1777631 () Bool)

(assert (= bs!1302454 (and d!1777631 d!1777597)))

(declare-fun lambda!302324 () Int)

(assert (=> bs!1302454 (= lambda!302324 lambda!302318)))

(declare-fun bs!1302455 () Bool)

(assert (= bs!1302455 (and d!1777631 d!1777615)))

(assert (=> bs!1302455 (= lambda!302324 lambda!302321)))

(declare-fun b!5627636 () Bool)

(declare-fun e!3468740 () Regex!15618)

(assert (=> b!5627636 (= e!3468740 (h!69478 (unfocusZipperList!1046 zl!343)))))

(declare-fun b!5627637 () Bool)

(declare-fun e!3468738 () Bool)

(declare-fun lt!2261846 () Regex!15618)

(declare-fun isUnion!600 (Regex!15618) Bool)

(assert (=> b!5627637 (= e!3468738 (isUnion!600 lt!2261846))))

(declare-fun b!5627638 () Bool)

(declare-fun e!3468743 () Bool)

(assert (=> b!5627638 (= e!3468743 e!3468738)))

(declare-fun c!988005 () Bool)

(assert (=> b!5627638 (= c!988005 (isEmpty!34864 (tail!11077 (unfocusZipperList!1046 zl!343))))))

(declare-fun b!5627639 () Bool)

(declare-fun e!3468741 () Regex!15618)

(assert (=> b!5627639 (= e!3468741 (Union!15618 (h!69478 (unfocusZipperList!1046 zl!343)) (generalisedUnion!1481 (t!376446 (unfocusZipperList!1046 zl!343)))))))

(declare-fun b!5627640 () Bool)

(declare-fun e!3468739 () Bool)

(assert (=> b!5627640 (= e!3468739 e!3468743)))

(declare-fun c!988004 () Bool)

(assert (=> b!5627640 (= c!988004 (isEmpty!34864 (unfocusZipperList!1046 zl!343)))))

(declare-fun b!5627641 () Bool)

(assert (=> b!5627641 (= e!3468741 EmptyLang!15618)))

(declare-fun b!5627642 () Bool)

(assert (=> b!5627642 (= e!3468738 (= lt!2261846 (head!11982 (unfocusZipperList!1046 zl!343))))))

(declare-fun b!5627643 () Bool)

(declare-fun e!3468742 () Bool)

(assert (=> b!5627643 (= e!3468742 (isEmpty!34864 (t!376446 (unfocusZipperList!1046 zl!343))))))

(assert (=> d!1777631 e!3468739))

(declare-fun res!2383453 () Bool)

(assert (=> d!1777631 (=> (not res!2383453) (not e!3468739))))

(assert (=> d!1777631 (= res!2383453 (validRegex!7354 lt!2261846))))

(assert (=> d!1777631 (= lt!2261846 e!3468740)))

(declare-fun c!988003 () Bool)

(assert (=> d!1777631 (= c!988003 e!3468742)))

(declare-fun res!2383452 () Bool)

(assert (=> d!1777631 (=> (not res!2383452) (not e!3468742))))

(assert (=> d!1777631 (= res!2383452 (is-Cons!63030 (unfocusZipperList!1046 zl!343)))))

(assert (=> d!1777631 (forall!14773 (unfocusZipperList!1046 zl!343) lambda!302324)))

(assert (=> d!1777631 (= (generalisedUnion!1481 (unfocusZipperList!1046 zl!343)) lt!2261846)))

(declare-fun b!5627644 () Bool)

(assert (=> b!5627644 (= e!3468740 e!3468741)))

(declare-fun c!988002 () Bool)

(assert (=> b!5627644 (= c!988002 (is-Cons!63030 (unfocusZipperList!1046 zl!343)))))

(declare-fun b!5627645 () Bool)

(declare-fun isEmptyLang!1170 (Regex!15618) Bool)

(assert (=> b!5627645 (= e!3468743 (isEmptyLang!1170 lt!2261846))))

(assert (= (and d!1777631 res!2383452) b!5627643))

(assert (= (and d!1777631 c!988003) b!5627636))

(assert (= (and d!1777631 (not c!988003)) b!5627644))

(assert (= (and b!5627644 c!988002) b!5627639))

(assert (= (and b!5627644 (not c!988002)) b!5627641))

(assert (= (and d!1777631 res!2383453) b!5627640))

(assert (= (and b!5627640 c!988004) b!5627645))

(assert (= (and b!5627640 (not c!988004)) b!5627638))

(assert (= (and b!5627638 c!988005) b!5627642))

(assert (= (and b!5627638 (not c!988005)) b!5627637))

(assert (=> b!5627638 m!6599250))

(declare-fun m!6599502 () Bool)

(assert (=> b!5627638 m!6599502))

(assert (=> b!5627638 m!6599502))

(declare-fun m!6599504 () Bool)

(assert (=> b!5627638 m!6599504))

(declare-fun m!6599506 () Bool)

(assert (=> d!1777631 m!6599506))

(assert (=> d!1777631 m!6599250))

(declare-fun m!6599508 () Bool)

(assert (=> d!1777631 m!6599508))

(declare-fun m!6599510 () Bool)

(assert (=> b!5627643 m!6599510))

(declare-fun m!6599512 () Bool)

(assert (=> b!5627639 m!6599512))

(assert (=> b!5627640 m!6599250))

(declare-fun m!6599514 () Bool)

(assert (=> b!5627640 m!6599514))

(declare-fun m!6599516 () Bool)

(assert (=> b!5627645 m!6599516))

(assert (=> b!5627642 m!6599250))

(declare-fun m!6599518 () Bool)

(assert (=> b!5627642 m!6599518))

(declare-fun m!6599520 () Bool)

(assert (=> b!5627637 m!6599520))

(assert (=> b!5627264 d!1777631))

(declare-fun bs!1302456 () Bool)

(declare-fun d!1777633 () Bool)

(assert (= bs!1302456 (and d!1777633 d!1777597)))

(declare-fun lambda!302327 () Int)

(assert (=> bs!1302456 (= lambda!302327 lambda!302318)))

(declare-fun bs!1302457 () Bool)

(assert (= bs!1302457 (and d!1777633 d!1777615)))

(assert (=> bs!1302457 (= lambda!302327 lambda!302321)))

(declare-fun bs!1302458 () Bool)

(assert (= bs!1302458 (and d!1777633 d!1777631)))

(assert (=> bs!1302458 (= lambda!302327 lambda!302324)))

(declare-fun lt!2261849 () List!63154)

(assert (=> d!1777633 (forall!14773 lt!2261849 lambda!302327)))

(declare-fun e!3468746 () List!63154)

(assert (=> d!1777633 (= lt!2261849 e!3468746)))

(declare-fun c!988008 () Bool)

(assert (=> d!1777633 (= c!988008 (is-Cons!63031 zl!343))))

(assert (=> d!1777633 (= (unfocusZipperList!1046 zl!343) lt!2261849)))

(declare-fun b!5627650 () Bool)

(assert (=> b!5627650 (= e!3468746 (Cons!63030 (generalisedConcat!1233 (exprs!5502 (h!69479 zl!343))) (unfocusZipperList!1046 (t!376447 zl!343))))))

(declare-fun b!5627651 () Bool)

(assert (=> b!5627651 (= e!3468746 Nil!63030)))

(assert (= (and d!1777633 c!988008) b!5627650))

(assert (= (and d!1777633 (not c!988008)) b!5627651))

(declare-fun m!6599522 () Bool)

(assert (=> d!1777633 m!6599522))

(assert (=> b!5627650 m!6599258))

(declare-fun m!6599524 () Bool)

(assert (=> b!5627650 m!6599524))

(assert (=> b!5627264 d!1777633))

(assert (=> b!5627275 d!1777599))

(declare-fun b!5627670 () Bool)

(declare-fun e!3468759 () Option!15627)

(assert (=> b!5627670 (= e!3468759 None!15626)))

(declare-fun b!5627671 () Bool)

(declare-fun e!3468761 () Bool)

(declare-fun lt!2261856 () Option!15627)

(assert (=> b!5627671 (= e!3468761 (not (isDefined!12330 lt!2261856)))))

(declare-fun b!5627672 () Bool)

(declare-fun lt!2261857 () Unit!156004)

(declare-fun lt!2261858 () Unit!156004)

(assert (=> b!5627672 (= lt!2261857 lt!2261858)))

(declare-fun ++!13835 (List!63153 List!63153) List!63153)

(assert (=> b!5627672 (= (++!13835 (++!13835 Nil!63029 (Cons!63029 (h!69477 s!2326) Nil!63029)) (t!376445 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2004 (List!63153 C!31506 List!63153 List!63153) Unit!156004)

(assert (=> b!5627672 (= lt!2261858 (lemmaMoveElementToOtherListKeepsConcatEq!2004 Nil!63029 (h!69477 s!2326) (t!376445 s!2326) s!2326))))

(assert (=> b!5627672 (= e!3468759 (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) (++!13835 Nil!63029 (Cons!63029 (h!69477 s!2326) Nil!63029)) (t!376445 s!2326) s!2326))))

(declare-fun b!5627673 () Bool)

(declare-fun e!3468758 () Bool)

(assert (=> b!5627673 (= e!3468758 (matchR!7803 (regTwo!31748 r!7292) s!2326))))

(declare-fun b!5627674 () Bool)

(declare-fun e!3468757 () Bool)

(declare-fun get!21712 (Option!15627) tuple2!65430)

(assert (=> b!5627674 (= e!3468757 (= (++!13835 (_1!36018 (get!21712 lt!2261856)) (_2!36018 (get!21712 lt!2261856))) s!2326))))

(declare-fun b!5627675 () Bool)

(declare-fun res!2383466 () Bool)

(assert (=> b!5627675 (=> (not res!2383466) (not e!3468757))))

(assert (=> b!5627675 (= res!2383466 (matchR!7803 (regTwo!31748 r!7292) (_2!36018 (get!21712 lt!2261856))))))

(declare-fun b!5627676 () Bool)

(declare-fun res!2383464 () Bool)

(assert (=> b!5627676 (=> (not res!2383464) (not e!3468757))))

(assert (=> b!5627676 (= res!2383464 (matchR!7803 (regOne!31748 r!7292) (_1!36018 (get!21712 lt!2261856))))))

(declare-fun b!5627677 () Bool)

(declare-fun e!3468760 () Option!15627)

(assert (=> b!5627677 (= e!3468760 (Some!15626 (tuple2!65431 Nil!63029 s!2326)))))

(declare-fun d!1777635 () Bool)

(assert (=> d!1777635 e!3468761))

(declare-fun res!2383465 () Bool)

(assert (=> d!1777635 (=> res!2383465 e!3468761)))

(assert (=> d!1777635 (= res!2383465 e!3468757)))

(declare-fun res!2383467 () Bool)

(assert (=> d!1777635 (=> (not res!2383467) (not e!3468757))))

(assert (=> d!1777635 (= res!2383467 (isDefined!12330 lt!2261856))))

(assert (=> d!1777635 (= lt!2261856 e!3468760)))

(declare-fun c!988014 () Bool)

(assert (=> d!1777635 (= c!988014 e!3468758)))

(declare-fun res!2383468 () Bool)

(assert (=> d!1777635 (=> (not res!2383468) (not e!3468758))))

(assert (=> d!1777635 (= res!2383468 (matchR!7803 (regOne!31748 r!7292) Nil!63029))))

(assert (=> d!1777635 (validRegex!7354 (regOne!31748 r!7292))))

(assert (=> d!1777635 (= (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) Nil!63029 s!2326 s!2326) lt!2261856)))

(declare-fun b!5627678 () Bool)

(assert (=> b!5627678 (= e!3468760 e!3468759)))

(declare-fun c!988013 () Bool)

(assert (=> b!5627678 (= c!988013 (is-Nil!63029 s!2326))))

(assert (= (and d!1777635 res!2383468) b!5627673))

(assert (= (and d!1777635 c!988014) b!5627677))

(assert (= (and d!1777635 (not c!988014)) b!5627678))

(assert (= (and b!5627678 c!988013) b!5627670))

(assert (= (and b!5627678 (not c!988013)) b!5627672))

(assert (= (and d!1777635 res!2383467) b!5627676))

(assert (= (and b!5627676 res!2383464) b!5627675))

(assert (= (and b!5627675 res!2383466) b!5627674))

(assert (= (and d!1777635 (not res!2383465)) b!5627671))

(declare-fun m!6599526 () Bool)

(assert (=> b!5627676 m!6599526))

(declare-fun m!6599528 () Bool)

(assert (=> b!5627676 m!6599528))

(declare-fun m!6599530 () Bool)

(assert (=> b!5627671 m!6599530))

(assert (=> b!5627675 m!6599526))

(declare-fun m!6599532 () Bool)

(assert (=> b!5627675 m!6599532))

(assert (=> b!5627674 m!6599526))

(declare-fun m!6599534 () Bool)

(assert (=> b!5627674 m!6599534))

(declare-fun m!6599536 () Bool)

(assert (=> b!5627673 m!6599536))

(assert (=> d!1777635 m!6599530))

(declare-fun m!6599538 () Bool)

(assert (=> d!1777635 m!6599538))

(declare-fun m!6599540 () Bool)

(assert (=> d!1777635 m!6599540))

(declare-fun m!6599542 () Bool)

(assert (=> b!5627672 m!6599542))

(assert (=> b!5627672 m!6599542))

(declare-fun m!6599544 () Bool)

(assert (=> b!5627672 m!6599544))

(declare-fun m!6599546 () Bool)

(assert (=> b!5627672 m!6599546))

(assert (=> b!5627672 m!6599542))

(declare-fun m!6599548 () Bool)

(assert (=> b!5627672 m!6599548))

(assert (=> b!5627256 d!1777635))

(declare-fun d!1777637 () Bool)

(declare-fun choose!42649 (Int) Bool)

(assert (=> d!1777637 (= (Exists!2718 lambda!302289) (choose!42649 lambda!302289))))

(declare-fun bs!1302459 () Bool)

(assert (= bs!1302459 d!1777637))

(declare-fun m!6599550 () Bool)

(assert (=> bs!1302459 m!6599550))

(assert (=> b!5627256 d!1777637))

(declare-fun bs!1302460 () Bool)

(declare-fun d!1777639 () Bool)

(assert (= bs!1302460 (and d!1777639 b!5627256)))

(declare-fun lambda!302330 () Int)

(assert (=> bs!1302460 (= lambda!302330 lambda!302289)))

(assert (=> bs!1302460 (not (= lambda!302330 lambda!302290))))

(declare-fun bs!1302461 () Bool)

(assert (= bs!1302461 (and d!1777639 b!5627440)))

(assert (=> bs!1302461 (not (= lambda!302330 lambda!302311))))

(declare-fun bs!1302462 () Bool)

(assert (= bs!1302462 (and d!1777639 b!5627444)))

(assert (=> bs!1302462 (not (= lambda!302330 lambda!302312))))

(assert (=> d!1777639 true))

(assert (=> d!1777639 true))

(assert (=> d!1777639 true))

(assert (=> d!1777639 (= (isDefined!12330 (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) Nil!63029 s!2326 s!2326)) (Exists!2718 lambda!302330))))

(declare-fun lt!2261861 () Unit!156004)

(declare-fun choose!42650 (Regex!15618 Regex!15618 List!63153) Unit!156004)

(assert (=> d!1777639 (= lt!2261861 (choose!42650 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326))))

(assert (=> d!1777639 (validRegex!7354 (regOne!31748 r!7292))))

(assert (=> d!1777639 (= (lemmaFindConcatSeparationEquivalentToExists!1805 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326) lt!2261861)))

(declare-fun bs!1302463 () Bool)

(assert (= bs!1302463 d!1777639))

(assert (=> bs!1302463 m!6599226))

(assert (=> bs!1302463 m!6599228))

(assert (=> bs!1302463 m!6599226))

(assert (=> bs!1302463 m!6599540))

(declare-fun m!6599552 () Bool)

(assert (=> bs!1302463 m!6599552))

(declare-fun m!6599554 () Bool)

(assert (=> bs!1302463 m!6599554))

(assert (=> b!5627256 d!1777639))

(declare-fun bs!1302464 () Bool)

(declare-fun d!1777641 () Bool)

(assert (= bs!1302464 (and d!1777641 d!1777639)))

(declare-fun lambda!302335 () Int)

(assert (=> bs!1302464 (= lambda!302335 lambda!302330)))

(declare-fun bs!1302465 () Bool)

(assert (= bs!1302465 (and d!1777641 b!5627256)))

(assert (=> bs!1302465 (= lambda!302335 lambda!302289)))

(declare-fun bs!1302466 () Bool)

(assert (= bs!1302466 (and d!1777641 b!5627444)))

(assert (=> bs!1302466 (not (= lambda!302335 lambda!302312))))

(declare-fun bs!1302467 () Bool)

(assert (= bs!1302467 (and d!1777641 b!5627440)))

(assert (=> bs!1302467 (not (= lambda!302335 lambda!302311))))

(assert (=> bs!1302465 (not (= lambda!302335 lambda!302290))))

(assert (=> d!1777641 true))

(assert (=> d!1777641 true))

(assert (=> d!1777641 true))

(declare-fun lambda!302336 () Int)

(assert (=> bs!1302464 (not (= lambda!302336 lambda!302330))))

(declare-fun bs!1302468 () Bool)

(assert (= bs!1302468 d!1777641))

(assert (=> bs!1302468 (not (= lambda!302336 lambda!302335))))

(assert (=> bs!1302465 (not (= lambda!302336 lambda!302289))))

(assert (=> bs!1302466 (= lambda!302336 lambda!302312)))

(assert (=> bs!1302467 (not (= lambda!302336 lambda!302311))))

(assert (=> bs!1302465 (= lambda!302336 lambda!302290)))

(assert (=> d!1777641 true))

(assert (=> d!1777641 true))

(assert (=> d!1777641 true))

(assert (=> d!1777641 (= (Exists!2718 lambda!302335) (Exists!2718 lambda!302336))))

(declare-fun lt!2261864 () Unit!156004)

(declare-fun choose!42651 (Regex!15618 Regex!15618 List!63153) Unit!156004)

(assert (=> d!1777641 (= lt!2261864 (choose!42651 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326))))

(assert (=> d!1777641 (validRegex!7354 (regOne!31748 r!7292))))

(assert (=> d!1777641 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1347 (regOne!31748 r!7292) (regTwo!31748 r!7292) s!2326) lt!2261864)))

(declare-fun m!6599556 () Bool)

(assert (=> bs!1302468 m!6599556))

(declare-fun m!6599558 () Bool)

(assert (=> bs!1302468 m!6599558))

(declare-fun m!6599560 () Bool)

(assert (=> bs!1302468 m!6599560))

(assert (=> bs!1302468 m!6599540))

(assert (=> b!5627256 d!1777641))

(declare-fun d!1777643 () Bool)

(assert (=> d!1777643 (= (Exists!2718 lambda!302290) (choose!42649 lambda!302290))))

(declare-fun bs!1302469 () Bool)

(assert (= bs!1302469 d!1777643))

(declare-fun m!6599562 () Bool)

(assert (=> bs!1302469 m!6599562))

(assert (=> b!5627256 d!1777643))

(declare-fun d!1777645 () Bool)

(declare-fun isEmpty!34869 (Option!15627) Bool)

(assert (=> d!1777645 (= (isDefined!12330 (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) Nil!63029 s!2326 s!2326)) (not (isEmpty!34869 (findConcatSeparation!2041 (regOne!31748 r!7292) (regTwo!31748 r!7292) Nil!63029 s!2326 s!2326))))))

(declare-fun bs!1302470 () Bool)

(assert (= bs!1302470 d!1777645))

(assert (=> bs!1302470 m!6599226))

(declare-fun m!6599564 () Bool)

(assert (=> bs!1302470 m!6599564))

(assert (=> b!5627256 d!1777645))

(declare-fun b!5627691 () Bool)

(declare-fun e!3468771 () (Set Context!10004))

(declare-fun e!3468768 () (Set Context!10004))

(assert (=> b!5627691 (= e!3468771 e!3468768)))

(declare-fun c!988019 () Bool)

(assert (=> b!5627691 (= c!988019 (is-Union!15618 (regTwo!31748 (regOne!31748 r!7292))))))

(declare-fun b!5627692 () Bool)

(declare-fun e!3468772 () (Set Context!10004))

(declare-fun e!3468770 () (Set Context!10004))

(assert (=> b!5627692 (= e!3468772 e!3468770)))

(declare-fun c!988016 () Bool)

(assert (=> b!5627692 (= c!988016 (is-Concat!24463 (regTwo!31748 (regOne!31748 r!7292))))))

(declare-fun call!423995 () (Set Context!10004))

(declare-fun call!423996 () List!63154)

(declare-fun bm!423990 () Bool)

(assert (=> bm!423990 (= call!423995 (derivationStepZipperDown!960 (ite c!988019 (regOne!31749 (regTwo!31748 (regOne!31748 r!7292))) (regOne!31748 (regTwo!31748 (regOne!31748 r!7292)))) (ite c!988019 lt!2261729 (Context!10005 call!423996)) (h!69477 s!2326)))))

(declare-fun bm!423991 () Bool)

(declare-fun call!423998 () (Set Context!10004))

(declare-fun call!423999 () (Set Context!10004))

(assert (=> bm!423991 (= call!423998 call!423999)))

(declare-fun b!5627693 () Bool)

(declare-fun c!988015 () Bool)

(assert (=> b!5627693 (= c!988015 (is-Star!15618 (regTwo!31748 (regOne!31748 r!7292))))))

(declare-fun e!3468769 () (Set Context!10004))

(assert (=> b!5627693 (= e!3468770 e!3468769)))

(declare-fun b!5627694 () Bool)

(declare-fun e!3468773 () Bool)

(assert (=> b!5627694 (= e!3468773 (nullable!5650 (regOne!31748 (regTwo!31748 (regOne!31748 r!7292)))))))

(declare-fun b!5627695 () Bool)

(declare-fun call!424000 () (Set Context!10004))

(assert (=> b!5627695 (= e!3468768 (set.union call!423995 call!424000))))

(declare-fun call!423997 () List!63154)

(declare-fun c!988017 () Bool)

(declare-fun bm!423992 () Bool)

(assert (=> bm!423992 (= call!424000 (derivationStepZipperDown!960 (ite c!988019 (regTwo!31749 (regTwo!31748 (regOne!31748 r!7292))) (ite c!988017 (regTwo!31748 (regTwo!31748 (regOne!31748 r!7292))) (ite c!988016 (regOne!31748 (regTwo!31748 (regOne!31748 r!7292))) (reg!15947 (regTwo!31748 (regOne!31748 r!7292)))))) (ite (or c!988019 c!988017) lt!2261729 (Context!10005 call!423997)) (h!69477 s!2326)))))

(declare-fun bm!423993 () Bool)

(assert (=> bm!423993 (= call!423999 call!424000)))

(declare-fun b!5627696 () Bool)

(assert (=> b!5627696 (= c!988017 e!3468773)))

(declare-fun res!2383481 () Bool)

(assert (=> b!5627696 (=> (not res!2383481) (not e!3468773))))

(assert (=> b!5627696 (= res!2383481 (is-Concat!24463 (regTwo!31748 (regOne!31748 r!7292))))))

(assert (=> b!5627696 (= e!3468768 e!3468772)))

(declare-fun b!5627697 () Bool)

(assert (=> b!5627697 (= e!3468769 (as set.empty (Set Context!10004)))))

(declare-fun b!5627698 () Bool)

(assert (=> b!5627698 (= e!3468769 call!423998)))

(declare-fun d!1777647 () Bool)

(declare-fun c!988018 () Bool)

(assert (=> d!1777647 (= c!988018 (and (is-ElementMatch!15618 (regTwo!31748 (regOne!31748 r!7292))) (= (c!987908 (regTwo!31748 (regOne!31748 r!7292))) (h!69477 s!2326))))))

(assert (=> d!1777647 (= (derivationStepZipperDown!960 (regTwo!31748 (regOne!31748 r!7292)) lt!2261729 (h!69477 s!2326)) e!3468771)))

(declare-fun bm!423994 () Bool)

(assert (=> bm!423994 (= call!423997 call!423996)))

(declare-fun b!5627699 () Bool)

(assert (=> b!5627699 (= e!3468770 call!423998)))

(declare-fun bm!423995 () Bool)

(assert (=> bm!423995 (= call!423996 ($colon$colon!1669 (exprs!5502 lt!2261729) (ite (or c!988017 c!988016) (regTwo!31748 (regTwo!31748 (regOne!31748 r!7292))) (regTwo!31748 (regOne!31748 r!7292)))))))

(declare-fun b!5627700 () Bool)

(assert (=> b!5627700 (= e!3468772 (set.union call!423995 call!423999))))

(declare-fun b!5627701 () Bool)

(assert (=> b!5627701 (= e!3468771 (set.insert lt!2261729 (as set.empty (Set Context!10004))))))

(assert (= (and d!1777647 c!988018) b!5627701))

(assert (= (and d!1777647 (not c!988018)) b!5627691))

(assert (= (and b!5627691 c!988019) b!5627695))

(assert (= (and b!5627691 (not c!988019)) b!5627696))

(assert (= (and b!5627696 res!2383481) b!5627694))

(assert (= (and b!5627696 c!988017) b!5627700))

(assert (= (and b!5627696 (not c!988017)) b!5627692))

(assert (= (and b!5627692 c!988016) b!5627699))

(assert (= (and b!5627692 (not c!988016)) b!5627693))

(assert (= (and b!5627693 c!988015) b!5627698))

(assert (= (and b!5627693 (not c!988015)) b!5627697))

(assert (= (or b!5627699 b!5627698) bm!423994))

(assert (= (or b!5627699 b!5627698) bm!423991))

(assert (= (or b!5627700 bm!423994) bm!423995))

(assert (= (or b!5627700 bm!423991) bm!423993))

(assert (= (or b!5627695 bm!423993) bm!423992))

(assert (= (or b!5627695 b!5627700) bm!423990))

(declare-fun m!6599566 () Bool)

(assert (=> bm!423990 m!6599566))

(assert (=> b!5627701 m!6599468))

(declare-fun m!6599568 () Bool)

(assert (=> b!5627694 m!6599568))

(declare-fun m!6599570 () Bool)

(assert (=> bm!423995 m!6599570))

(declare-fun m!6599572 () Bool)

(assert (=> bm!423992 m!6599572))

(assert (=> b!5627265 d!1777647))

(declare-fun b!5627702 () Bool)

(declare-fun e!3468777 () (Set Context!10004))

(declare-fun e!3468774 () (Set Context!10004))

(assert (=> b!5627702 (= e!3468777 e!3468774)))

(declare-fun c!988024 () Bool)

(assert (=> b!5627702 (= c!988024 (is-Union!15618 (regOne!31748 (regOne!31748 r!7292))))))

(declare-fun b!5627703 () Bool)

(declare-fun e!3468778 () (Set Context!10004))

(declare-fun e!3468776 () (Set Context!10004))

(assert (=> b!5627703 (= e!3468778 e!3468776)))

(declare-fun c!988021 () Bool)

(assert (=> b!5627703 (= c!988021 (is-Concat!24463 (regOne!31748 (regOne!31748 r!7292))))))

(declare-fun call!424002 () List!63154)

(declare-fun call!424001 () (Set Context!10004))

(declare-fun bm!423996 () Bool)

(assert (=> bm!423996 (= call!424001 (derivationStepZipperDown!960 (ite c!988024 (regOne!31749 (regOne!31748 (regOne!31748 r!7292))) (regOne!31748 (regOne!31748 (regOne!31748 r!7292)))) (ite c!988024 lt!2261732 (Context!10005 call!424002)) (h!69477 s!2326)))))

(declare-fun bm!423997 () Bool)

(declare-fun call!424004 () (Set Context!10004))

(declare-fun call!424005 () (Set Context!10004))

(assert (=> bm!423997 (= call!424004 call!424005)))

(declare-fun b!5627704 () Bool)

(declare-fun c!988020 () Bool)

(assert (=> b!5627704 (= c!988020 (is-Star!15618 (regOne!31748 (regOne!31748 r!7292))))))

(declare-fun e!3468775 () (Set Context!10004))

(assert (=> b!5627704 (= e!3468776 e!3468775)))

(declare-fun b!5627705 () Bool)

(declare-fun e!3468779 () Bool)

(assert (=> b!5627705 (= e!3468779 (nullable!5650 (regOne!31748 (regOne!31748 (regOne!31748 r!7292)))))))

(declare-fun b!5627706 () Bool)

(declare-fun call!424006 () (Set Context!10004))

(assert (=> b!5627706 (= e!3468774 (set.union call!424001 call!424006))))

(declare-fun call!424003 () List!63154)

(declare-fun bm!423998 () Bool)

(declare-fun c!988022 () Bool)

(assert (=> bm!423998 (= call!424006 (derivationStepZipperDown!960 (ite c!988024 (regTwo!31749 (regOne!31748 (regOne!31748 r!7292))) (ite c!988022 (regTwo!31748 (regOne!31748 (regOne!31748 r!7292))) (ite c!988021 (regOne!31748 (regOne!31748 (regOne!31748 r!7292))) (reg!15947 (regOne!31748 (regOne!31748 r!7292)))))) (ite (or c!988024 c!988022) lt!2261732 (Context!10005 call!424003)) (h!69477 s!2326)))))

(declare-fun bm!423999 () Bool)

(assert (=> bm!423999 (= call!424005 call!424006)))

(declare-fun b!5627707 () Bool)

(assert (=> b!5627707 (= c!988022 e!3468779)))

(declare-fun res!2383482 () Bool)

(assert (=> b!5627707 (=> (not res!2383482) (not e!3468779))))

(assert (=> b!5627707 (= res!2383482 (is-Concat!24463 (regOne!31748 (regOne!31748 r!7292))))))

(assert (=> b!5627707 (= e!3468774 e!3468778)))

(declare-fun b!5627708 () Bool)

(assert (=> b!5627708 (= e!3468775 (as set.empty (Set Context!10004)))))

(declare-fun b!5627709 () Bool)

(assert (=> b!5627709 (= e!3468775 call!424004)))

(declare-fun d!1777649 () Bool)

(declare-fun c!988023 () Bool)

(assert (=> d!1777649 (= c!988023 (and (is-ElementMatch!15618 (regOne!31748 (regOne!31748 r!7292))) (= (c!987908 (regOne!31748 (regOne!31748 r!7292))) (h!69477 s!2326))))))

(assert (=> d!1777649 (= (derivationStepZipperDown!960 (regOne!31748 (regOne!31748 r!7292)) lt!2261732 (h!69477 s!2326)) e!3468777)))

(declare-fun bm!424000 () Bool)

(assert (=> bm!424000 (= call!424003 call!424002)))

(declare-fun b!5627710 () Bool)

(assert (=> b!5627710 (= e!3468776 call!424004)))

(declare-fun bm!424001 () Bool)

(assert (=> bm!424001 (= call!424002 ($colon$colon!1669 (exprs!5502 lt!2261732) (ite (or c!988022 c!988021) (regTwo!31748 (regOne!31748 (regOne!31748 r!7292))) (regOne!31748 (regOne!31748 r!7292)))))))

(declare-fun b!5627711 () Bool)

(assert (=> b!5627711 (= e!3468778 (set.union call!424001 call!424005))))

(declare-fun b!5627712 () Bool)

(assert (=> b!5627712 (= e!3468777 (set.insert lt!2261732 (as set.empty (Set Context!10004))))))

(assert (= (and d!1777649 c!988023) b!5627712))

(assert (= (and d!1777649 (not c!988023)) b!5627702))

(assert (= (and b!5627702 c!988024) b!5627706))

(assert (= (and b!5627702 (not c!988024)) b!5627707))

(assert (= (and b!5627707 res!2383482) b!5627705))

(assert (= (and b!5627707 c!988022) b!5627711))

(assert (= (and b!5627707 (not c!988022)) b!5627703))

(assert (= (and b!5627703 c!988021) b!5627710))

(assert (= (and b!5627703 (not c!988021)) b!5627704))

(assert (= (and b!5627704 c!988020) b!5627709))

(assert (= (and b!5627704 (not c!988020)) b!5627708))

(assert (= (or b!5627710 b!5627709) bm!424000))

(assert (= (or b!5627710 b!5627709) bm!423997))

(assert (= (or b!5627711 bm!424000) bm!424001))

(assert (= (or b!5627711 bm!423997) bm!423999))

(assert (= (or b!5627706 bm!423999) bm!423998))

(assert (= (or b!5627706 b!5627711) bm!423996))

(declare-fun m!6599574 () Bool)

(assert (=> bm!423996 m!6599574))

(assert (=> b!5627712 m!6599202))

(declare-fun m!6599576 () Bool)

(assert (=> b!5627705 m!6599576))

(declare-fun m!6599578 () Bool)

(assert (=> bm!424001 m!6599578))

(declare-fun m!6599580 () Bool)

(assert (=> bm!423998 m!6599580))

(assert (=> b!5627265 d!1777649))

(declare-fun d!1777651 () Bool)

(declare-fun lt!2261867 () Regex!15618)

(assert (=> d!1777651 (validRegex!7354 lt!2261867)))

(assert (=> d!1777651 (= lt!2261867 (generalisedUnion!1481 (unfocusZipperList!1046 zl!343)))))

(assert (=> d!1777651 (= (unfocusZipper!1360 zl!343) lt!2261867)))

(declare-fun bs!1302471 () Bool)

(assert (= bs!1302471 d!1777651))

(declare-fun m!6599582 () Bool)

(assert (=> bs!1302471 m!6599582))

(assert (=> bs!1302471 m!6599250))

(assert (=> bs!1302471 m!6599250))

(assert (=> bs!1302471 m!6599252))

(assert (=> b!5627254 d!1777651))

(declare-fun d!1777653 () Bool)

(assert (=> d!1777653 (= (nullable!5650 (regTwo!31748 (regOne!31748 r!7292))) (nullableFct!1747 (regTwo!31748 (regOne!31748 r!7292))))))

(declare-fun bs!1302472 () Bool)

(assert (= bs!1302472 d!1777653))

(declare-fun m!6599584 () Bool)

(assert (=> bs!1302472 m!6599584))

(assert (=> b!5627263 d!1777653))

(declare-fun d!1777655 () Bool)

(assert (=> d!1777655 (= (flatMap!1231 lt!2261743 lambda!302291) (choose!42648 lt!2261743 lambda!302291))))

(declare-fun bs!1302473 () Bool)

(assert (= bs!1302473 d!1777655))

(declare-fun m!6599586 () Bool)

(assert (=> bs!1302473 m!6599586))

(assert (=> b!5627263 d!1777655))

(declare-fun bm!424002 () Bool)

(declare-fun call!424007 () (Set Context!10004))

(assert (=> bm!424002 (= call!424007 (derivationStepZipperDown!960 (h!69478 (exprs!5502 lt!2261732)) (Context!10005 (t!376446 (exprs!5502 lt!2261732))) (h!69477 s!2326)))))

(declare-fun b!5627713 () Bool)

(declare-fun e!3468782 () Bool)

(assert (=> b!5627713 (= e!3468782 (nullable!5650 (h!69478 (exprs!5502 lt!2261732))))))

(declare-fun d!1777657 () Bool)

(declare-fun c!988025 () Bool)

(assert (=> d!1777657 (= c!988025 e!3468782)))

(declare-fun res!2383483 () Bool)

(assert (=> d!1777657 (=> (not res!2383483) (not e!3468782))))

(assert (=> d!1777657 (= res!2383483 (is-Cons!63030 (exprs!5502 lt!2261732)))))

(declare-fun e!3468780 () (Set Context!10004))

(assert (=> d!1777657 (= (derivationStepZipperUp!886 lt!2261732 (h!69477 s!2326)) e!3468780)))

(declare-fun b!5627714 () Bool)

(assert (=> b!5627714 (= e!3468780 (set.union call!424007 (derivationStepZipperUp!886 (Context!10005 (t!376446 (exprs!5502 lt!2261732))) (h!69477 s!2326))))))

(declare-fun b!5627715 () Bool)

(declare-fun e!3468781 () (Set Context!10004))

(assert (=> b!5627715 (= e!3468781 call!424007)))

(declare-fun b!5627716 () Bool)

(assert (=> b!5627716 (= e!3468781 (as set.empty (Set Context!10004)))))

(declare-fun b!5627717 () Bool)

(assert (=> b!5627717 (= e!3468780 e!3468781)))

(declare-fun c!988026 () Bool)

(assert (=> b!5627717 (= c!988026 (is-Cons!63030 (exprs!5502 lt!2261732)))))

(assert (= (and d!1777657 res!2383483) b!5627713))

(assert (= (and d!1777657 c!988025) b!5627714))

(assert (= (and d!1777657 (not c!988025)) b!5627717))

(assert (= (and b!5627717 c!988026) b!5627715))

(assert (= (and b!5627717 (not c!988026)) b!5627716))

(assert (= (or b!5627714 b!5627715) bm!424002))

(declare-fun m!6599588 () Bool)

(assert (=> bm!424002 m!6599588))

(declare-fun m!6599590 () Bool)

(assert (=> b!5627713 m!6599590))

(declare-fun m!6599592 () Bool)

(assert (=> b!5627714 m!6599592))

(assert (=> b!5627263 d!1777657))

(declare-fun d!1777659 () Bool)

(assert (=> d!1777659 (= (flatMap!1231 lt!2261743 lambda!302291) (dynLambda!24647 lambda!302291 lt!2261732))))

(declare-fun lt!2261868 () Unit!156004)

(assert (=> d!1777659 (= lt!2261868 (choose!42647 lt!2261743 lt!2261732 lambda!302291))))

(assert (=> d!1777659 (= lt!2261743 (set.insert lt!2261732 (as set.empty (Set Context!10004))))))

(assert (=> d!1777659 (= (lemmaFlatMapOnSingletonSet!763 lt!2261743 lt!2261732 lambda!302291) lt!2261868)))

(declare-fun b_lambda!212837 () Bool)

(assert (=> (not b_lambda!212837) (not d!1777659)))

(declare-fun bs!1302474 () Bool)

(assert (= bs!1302474 d!1777659))

(assert (=> bs!1302474 m!6599190))

(declare-fun m!6599594 () Bool)

(assert (=> bs!1302474 m!6599594))

(declare-fun m!6599596 () Bool)

(assert (=> bs!1302474 m!6599596))

(assert (=> bs!1302474 m!6599202))

(assert (=> b!5627263 d!1777659))

(declare-fun bs!1302475 () Bool)

(declare-fun d!1777661 () Bool)

(assert (= bs!1302475 (and d!1777661 d!1777597)))

(declare-fun lambda!302337 () Int)

(assert (=> bs!1302475 (= lambda!302337 lambda!302318)))

(declare-fun bs!1302476 () Bool)

(assert (= bs!1302476 (and d!1777661 d!1777615)))

(assert (=> bs!1302476 (= lambda!302337 lambda!302321)))

(declare-fun bs!1302477 () Bool)

(assert (= bs!1302477 (and d!1777661 d!1777631)))

(assert (=> bs!1302477 (= lambda!302337 lambda!302324)))

(declare-fun bs!1302478 () Bool)

(assert (= bs!1302478 (and d!1777661 d!1777633)))

(assert (=> bs!1302478 (= lambda!302337 lambda!302327)))

(assert (=> d!1777661 (= (inv!82293 (h!69479 zl!343)) (forall!14773 (exprs!5502 (h!69479 zl!343)) lambda!302337))))

(declare-fun bs!1302479 () Bool)

(assert (= bs!1302479 d!1777661))

(declare-fun m!6599598 () Bool)

(assert (=> bs!1302479 m!6599598))

(assert (=> b!5627253 d!1777661))

(declare-fun bm!424003 () Bool)

(declare-fun call!424008 () (Set Context!10004))

(assert (=> bm!424003 (= call!424008 (derivationStepZipperDown!960 (h!69478 (exprs!5502 lt!2261728)) (Context!10005 (t!376446 (exprs!5502 lt!2261728))) (h!69477 s!2326)))))

(declare-fun b!5627718 () Bool)

(declare-fun e!3468785 () Bool)

(assert (=> b!5627718 (= e!3468785 (nullable!5650 (h!69478 (exprs!5502 lt!2261728))))))

(declare-fun d!1777663 () Bool)

(declare-fun c!988027 () Bool)

(assert (=> d!1777663 (= c!988027 e!3468785)))

(declare-fun res!2383484 () Bool)

(assert (=> d!1777663 (=> (not res!2383484) (not e!3468785))))

(assert (=> d!1777663 (= res!2383484 (is-Cons!63030 (exprs!5502 lt!2261728)))))

(declare-fun e!3468783 () (Set Context!10004))

(assert (=> d!1777663 (= (derivationStepZipperUp!886 lt!2261728 (h!69477 s!2326)) e!3468783)))

(declare-fun b!5627719 () Bool)

(assert (=> b!5627719 (= e!3468783 (set.union call!424008 (derivationStepZipperUp!886 (Context!10005 (t!376446 (exprs!5502 lt!2261728))) (h!69477 s!2326))))))

(declare-fun b!5627720 () Bool)

(declare-fun e!3468784 () (Set Context!10004))

(assert (=> b!5627720 (= e!3468784 call!424008)))

(declare-fun b!5627721 () Bool)

(assert (=> b!5627721 (= e!3468784 (as set.empty (Set Context!10004)))))

(declare-fun b!5627722 () Bool)

(assert (=> b!5627722 (= e!3468783 e!3468784)))

(declare-fun c!988028 () Bool)

(assert (=> b!5627722 (= c!988028 (is-Cons!63030 (exprs!5502 lt!2261728)))))

(assert (= (and d!1777663 res!2383484) b!5627718))

(assert (= (and d!1777663 c!988027) b!5627719))

(assert (= (and d!1777663 (not c!988027)) b!5627722))

(assert (= (and b!5627722 c!988028) b!5627720))

(assert (= (and b!5627722 (not c!988028)) b!5627721))

(assert (= (or b!5627719 b!5627720) bm!424003))

(declare-fun m!6599600 () Bool)

(assert (=> bm!424003 m!6599600))

(declare-fun m!6599602 () Bool)

(assert (=> b!5627718 m!6599602))

(declare-fun m!6599604 () Bool)

(assert (=> b!5627719 m!6599604))

(assert (=> b!5627262 d!1777663))

(declare-fun bs!1302480 () Bool)

(declare-fun d!1777665 () Bool)

(assert (= bs!1302480 (and d!1777665 b!5627247)))

(declare-fun lambda!302338 () Int)

(assert (=> bs!1302480 (= lambda!302338 lambda!302291)))

(declare-fun bs!1302481 () Bool)

(assert (= bs!1302481 (and d!1777665 d!1777593)))

(assert (=> bs!1302481 (= lambda!302338 lambda!302315)))

(assert (=> d!1777665 true))

(assert (=> d!1777665 (= (derivationStepZipper!1705 lt!2261740 (h!69477 s!2326)) (flatMap!1231 lt!2261740 lambda!302338))))

(declare-fun bs!1302482 () Bool)

(assert (= bs!1302482 d!1777665))

(declare-fun m!6599606 () Bool)

(assert (=> bs!1302482 m!6599606))

(assert (=> b!5627262 d!1777665))

(assert (=> b!5627262 d!1777657))

(declare-fun d!1777667 () Bool)

(assert (=> d!1777667 (= (flatMap!1231 lt!2261740 lambda!302291) (dynLambda!24647 lambda!302291 lt!2261728))))

(declare-fun lt!2261869 () Unit!156004)

(assert (=> d!1777667 (= lt!2261869 (choose!42647 lt!2261740 lt!2261728 lambda!302291))))

(assert (=> d!1777667 (= lt!2261740 (set.insert lt!2261728 (as set.empty (Set Context!10004))))))

(assert (=> d!1777667 (= (lemmaFlatMapOnSingletonSet!763 lt!2261740 lt!2261728 lambda!302291) lt!2261869)))

(declare-fun b_lambda!212839 () Bool)

(assert (=> (not b_lambda!212839) (not d!1777667)))

(declare-fun bs!1302483 () Bool)

(assert (= bs!1302483 d!1777667))

(assert (=> bs!1302483 m!6599196))

(declare-fun m!6599608 () Bool)

(assert (=> bs!1302483 m!6599608))

(declare-fun m!6599610 () Bool)

(assert (=> bs!1302483 m!6599610))

(assert (=> bs!1302483 m!6599200))

(assert (=> b!5627262 d!1777667))

(declare-fun d!1777669 () Bool)

(assert (=> d!1777669 (= (flatMap!1231 lt!2261740 lambda!302291) (choose!42648 lt!2261740 lambda!302291))))

(declare-fun bs!1302484 () Bool)

(assert (= bs!1302484 d!1777669))

(declare-fun m!6599612 () Bool)

(assert (=> bs!1302484 m!6599612))

(assert (=> b!5627262 d!1777669))

(declare-fun d!1777671 () Bool)

(assert (=> d!1777671 (= (isEmpty!34865 (t!376447 zl!343)) (is-Nil!63031 (t!376447 zl!343)))))

(assert (=> b!5627273 d!1777671))

(declare-fun b!5627736 () Bool)

(declare-fun e!3468788 () Bool)

(declare-fun tp!1557962 () Bool)

(declare-fun tp!1557960 () Bool)

(assert (=> b!5627736 (= e!3468788 (and tp!1557962 tp!1557960))))

(assert (=> b!5627257 (= tp!1557909 e!3468788)))

(declare-fun b!5627735 () Bool)

(declare-fun tp!1557958 () Bool)

(assert (=> b!5627735 (= e!3468788 tp!1557958)))

(declare-fun b!5627734 () Bool)

(declare-fun tp!1557961 () Bool)

(declare-fun tp!1557959 () Bool)

(assert (=> b!5627734 (= e!3468788 (and tp!1557961 tp!1557959))))

(declare-fun b!5627733 () Bool)

(assert (=> b!5627733 (= e!3468788 tp_is_empty!40489)))

(assert (= (and b!5627257 (is-ElementMatch!15618 (regOne!31748 r!7292))) b!5627733))

(assert (= (and b!5627257 (is-Concat!24463 (regOne!31748 r!7292))) b!5627734))

(assert (= (and b!5627257 (is-Star!15618 (regOne!31748 r!7292))) b!5627735))

(assert (= (and b!5627257 (is-Union!15618 (regOne!31748 r!7292))) b!5627736))

(declare-fun b!5627740 () Bool)

(declare-fun e!3468789 () Bool)

(declare-fun tp!1557967 () Bool)

(declare-fun tp!1557965 () Bool)

(assert (=> b!5627740 (= e!3468789 (and tp!1557967 tp!1557965))))

(assert (=> b!5627257 (= tp!1557915 e!3468789)))

(declare-fun b!5627739 () Bool)

(declare-fun tp!1557963 () Bool)

(assert (=> b!5627739 (= e!3468789 tp!1557963)))

(declare-fun b!5627738 () Bool)

(declare-fun tp!1557966 () Bool)

(declare-fun tp!1557964 () Bool)

(assert (=> b!5627738 (= e!3468789 (and tp!1557966 tp!1557964))))

(declare-fun b!5627737 () Bool)

(assert (=> b!5627737 (= e!3468789 tp_is_empty!40489)))

(assert (= (and b!5627257 (is-ElementMatch!15618 (regTwo!31748 r!7292))) b!5627737))

(assert (= (and b!5627257 (is-Concat!24463 (regTwo!31748 r!7292))) b!5627738))

(assert (= (and b!5627257 (is-Star!15618 (regTwo!31748 r!7292))) b!5627739))

(assert (= (and b!5627257 (is-Union!15618 (regTwo!31748 r!7292))) b!5627740))

(declare-fun b!5627744 () Bool)

(declare-fun e!3468790 () Bool)

(declare-fun tp!1557972 () Bool)

(declare-fun tp!1557970 () Bool)

(assert (=> b!5627744 (= e!3468790 (and tp!1557972 tp!1557970))))

(assert (=> b!5627266 (= tp!1557916 e!3468790)))

(declare-fun b!5627743 () Bool)

(declare-fun tp!1557968 () Bool)

(assert (=> b!5627743 (= e!3468790 tp!1557968)))

(declare-fun b!5627742 () Bool)

(declare-fun tp!1557971 () Bool)

(declare-fun tp!1557969 () Bool)

(assert (=> b!5627742 (= e!3468790 (and tp!1557971 tp!1557969))))

(declare-fun b!5627741 () Bool)

(assert (=> b!5627741 (= e!3468790 tp_is_empty!40489)))

(assert (= (and b!5627266 (is-ElementMatch!15618 (reg!15947 r!7292))) b!5627741))

(assert (= (and b!5627266 (is-Concat!24463 (reg!15947 r!7292))) b!5627742))

(assert (= (and b!5627266 (is-Star!15618 (reg!15947 r!7292))) b!5627743))

(assert (= (and b!5627266 (is-Union!15618 (reg!15947 r!7292))) b!5627744))

(declare-fun condSetEmpty!37579 () Bool)

(assert (=> setNonEmpty!37573 (= condSetEmpty!37579 (= setRest!37573 (as set.empty (Set Context!10004))))))

(declare-fun setRes!37579 () Bool)

(assert (=> setNonEmpty!37573 (= tp!1557914 setRes!37579)))

(declare-fun setIsEmpty!37579 () Bool)

(assert (=> setIsEmpty!37579 setRes!37579))

(declare-fun e!3468793 () Bool)

(declare-fun setNonEmpty!37579 () Bool)

(declare-fun tp!1557977 () Bool)

(declare-fun setElem!37579 () Context!10004)

(assert (=> setNonEmpty!37579 (= setRes!37579 (and tp!1557977 (inv!82293 setElem!37579) e!3468793))))

(declare-fun setRest!37579 () (Set Context!10004))

(assert (=> setNonEmpty!37579 (= setRest!37573 (set.union (set.insert setElem!37579 (as set.empty (Set Context!10004))) setRest!37579))))

(declare-fun b!5627749 () Bool)

(declare-fun tp!1557978 () Bool)

(assert (=> b!5627749 (= e!3468793 tp!1557978)))

(assert (= (and setNonEmpty!37573 condSetEmpty!37579) setIsEmpty!37579))

(assert (= (and setNonEmpty!37573 (not condSetEmpty!37579)) setNonEmpty!37579))

(assert (= setNonEmpty!37579 b!5627749))

(declare-fun m!6599614 () Bool)

(assert (=> setNonEmpty!37579 m!6599614))

(declare-fun b!5627753 () Bool)

(declare-fun e!3468794 () Bool)

(declare-fun tp!1557983 () Bool)

(declare-fun tp!1557981 () Bool)

(assert (=> b!5627753 (= e!3468794 (and tp!1557983 tp!1557981))))

(assert (=> b!5627251 (= tp!1557908 e!3468794)))

(declare-fun b!5627752 () Bool)

(declare-fun tp!1557979 () Bool)

(assert (=> b!5627752 (= e!3468794 tp!1557979)))

(declare-fun b!5627751 () Bool)

(declare-fun tp!1557982 () Bool)

(declare-fun tp!1557980 () Bool)

(assert (=> b!5627751 (= e!3468794 (and tp!1557982 tp!1557980))))

(declare-fun b!5627750 () Bool)

(assert (=> b!5627750 (= e!3468794 tp_is_empty!40489)))

(assert (= (and b!5627251 (is-ElementMatch!15618 (regOne!31749 r!7292))) b!5627750))

(assert (= (and b!5627251 (is-Concat!24463 (regOne!31749 r!7292))) b!5627751))

(assert (= (and b!5627251 (is-Star!15618 (regOne!31749 r!7292))) b!5627752))

(assert (= (and b!5627251 (is-Union!15618 (regOne!31749 r!7292))) b!5627753))

(declare-fun b!5627757 () Bool)

(declare-fun e!3468795 () Bool)

(declare-fun tp!1557988 () Bool)

(declare-fun tp!1557986 () Bool)

(assert (=> b!5627757 (= e!3468795 (and tp!1557988 tp!1557986))))

(assert (=> b!5627251 (= tp!1557910 e!3468795)))

(declare-fun b!5627756 () Bool)

(declare-fun tp!1557984 () Bool)

(assert (=> b!5627756 (= e!3468795 tp!1557984)))

(declare-fun b!5627755 () Bool)

(declare-fun tp!1557987 () Bool)

(declare-fun tp!1557985 () Bool)

(assert (=> b!5627755 (= e!3468795 (and tp!1557987 tp!1557985))))

(declare-fun b!5627754 () Bool)

(assert (=> b!5627754 (= e!3468795 tp_is_empty!40489)))

(assert (= (and b!5627251 (is-ElementMatch!15618 (regTwo!31749 r!7292))) b!5627754))

(assert (= (and b!5627251 (is-Concat!24463 (regTwo!31749 r!7292))) b!5627755))

(assert (= (and b!5627251 (is-Star!15618 (regTwo!31749 r!7292))) b!5627756))

(assert (= (and b!5627251 (is-Union!15618 (regTwo!31749 r!7292))) b!5627757))

(declare-fun b!5627762 () Bool)

(declare-fun e!3468798 () Bool)

(declare-fun tp!1557993 () Bool)

(declare-fun tp!1557994 () Bool)

(assert (=> b!5627762 (= e!3468798 (and tp!1557993 tp!1557994))))

(assert (=> b!5627274 (= tp!1557917 e!3468798)))

(assert (= (and b!5627274 (is-Cons!63030 (exprs!5502 setElem!37573))) b!5627762))

(declare-fun b!5627763 () Bool)

(declare-fun e!3468799 () Bool)

(declare-fun tp!1557995 () Bool)

(declare-fun tp!1557996 () Bool)

(assert (=> b!5627763 (= e!3468799 (and tp!1557995 tp!1557996))))

(assert (=> b!5627269 (= tp!1557911 e!3468799)))

(assert (= (and b!5627269 (is-Cons!63030 (exprs!5502 (h!69479 zl!343)))) b!5627763))

(declare-fun b!5627768 () Bool)

(declare-fun e!3468802 () Bool)

(declare-fun tp!1557999 () Bool)

(assert (=> b!5627768 (= e!3468802 (and tp_is_empty!40489 tp!1557999))))

(assert (=> b!5627272 (= tp!1557913 e!3468802)))

(assert (= (and b!5627272 (is-Cons!63029 (t!376445 s!2326))) b!5627768))

(declare-fun b!5627776 () Bool)

(declare-fun e!3468808 () Bool)

(declare-fun tp!1558004 () Bool)

(assert (=> b!5627776 (= e!3468808 tp!1558004)))

(declare-fun e!3468807 () Bool)

(declare-fun tp!1558005 () Bool)

(declare-fun b!5627775 () Bool)

(assert (=> b!5627775 (= e!3468807 (and (inv!82293 (h!69479 (t!376447 zl!343))) e!3468808 tp!1558005))))

(assert (=> b!5627253 (= tp!1557912 e!3468807)))

(assert (= b!5627775 b!5627776))

(assert (= (and b!5627253 (is-Cons!63031 (t!376447 zl!343))) b!5627775))

(declare-fun m!6599616 () Bool)

(assert (=> b!5627775 m!6599616))

(declare-fun b_lambda!212841 () Bool)

(assert (= b_lambda!212835 (or b!5627247 b_lambda!212841)))

(declare-fun bs!1302485 () Bool)

(declare-fun d!1777673 () Bool)

(assert (= bs!1302485 (and d!1777673 b!5627247)))

(assert (=> bs!1302485 (= (dynLambda!24647 lambda!302291 (h!69479 zl!343)) (derivationStepZipperUp!886 (h!69479 zl!343) (h!69477 s!2326)))))

(assert (=> bs!1302485 m!6599178))

(assert (=> d!1777619 d!1777673))

(declare-fun b_lambda!212843 () Bool)

(assert (= b_lambda!212837 (or b!5627247 b_lambda!212843)))

(declare-fun bs!1302486 () Bool)

(declare-fun d!1777675 () Bool)

(assert (= bs!1302486 (and d!1777675 b!5627247)))

(assert (=> bs!1302486 (= (dynLambda!24647 lambda!302291 lt!2261732) (derivationStepZipperUp!886 lt!2261732 (h!69477 s!2326)))))

(assert (=> bs!1302486 m!6599192))

(assert (=> d!1777659 d!1777675))

(declare-fun b_lambda!212845 () Bool)

(assert (= b_lambda!212839 (or b!5627247 b_lambda!212845)))

(declare-fun bs!1302487 () Bool)

(declare-fun d!1777677 () Bool)

(assert (= bs!1302487 (and d!1777677 b!5627247)))

(assert (=> bs!1302487 (= (dynLambda!24647 lambda!302291 lt!2261728) (derivationStepZipperUp!886 lt!2261728 (h!69477 s!2326)))))

(assert (=> bs!1302487 m!6599198))

(assert (=> d!1777667 d!1777677))

(push 1)

(assert (not bm!424003))

(assert (not b!5627637))

(assert (not b!5627755))

(assert (not bm!423979))

(assert (not d!1777645))

(assert (not b!5627640))

(assert (not d!1777599))

(assert (not d!1777621))

(assert (not bm!424001))

(assert tp_is_empty!40489)

(assert (not b_lambda!212845))

(assert (not b!5627552))

(assert (not bm!423981))

(assert (not d!1777591))

(assert (not b!5627676))

(assert (not d!1777609))

(assert (not b!5627638))

(assert (not b!5627526))

(assert (not d!1777583))

(assert (not b!5627739))

(assert (not b!5627714))

(assert (not b!5627749))

(assert (not d!1777631))

(assert (not b!5627744))

(assert (not b!5627399))

(assert (not b!5627551))

(assert (not b!5627775))

(assert (not d!1777601))

(assert (not b!5627713))

(assert (not b_lambda!212841))

(assert (not bm!423954))

(assert (not b!5627756))

(assert (not bm!423953))

(assert (not b!5627602))

(assert (not bs!1302487))

(assert (not b!5627650))

(assert (not b!5627768))

(assert (not b!5627645))

(assert (not b_lambda!212843))

(assert (not b!5627763))

(assert (not d!1777611))

(assert (not bm!423996))

(assert (not b!5627482))

(assert (not bm!423992))

(assert (not b!5627607))

(assert (not b!5627671))

(assert (not b!5627478))

(assert (not bs!1302486))

(assert (not d!1777593))

(assert (not d!1777639))

(assert (not b!5627674))

(assert (not d!1777585))

(assert (not b!5627705))

(assert (not b!5627643))

(assert (not b!5627743))

(assert (not b!5627776))

(assert (not d!1777637))

(assert (not b!5627398))

(assert (not b!5627393))

(assert (not bs!1302485))

(assert (not bm!423964))

(assert (not d!1777651))

(assert (not b!5627762))

(assert (not b!5627524))

(assert (not b!5627475))

(assert (not bm!423988))

(assert (not b!5627518))

(assert (not d!1777603))

(assert (not b!5627752))

(assert (not b!5627557))

(assert (not b!5627753))

(assert (not d!1777615))

(assert (not b!5627400))

(assert (not b!5627493))

(assert (not b!5627639))

(assert (not b!5627757))

(assert (not d!1777641))

(assert (not b!5627751))

(assert (not b!5627736))

(assert (not b!5627601))

(assert (not b!5627490))

(assert (not d!1777613))

(assert (not b!5627554))

(assert (not b!5627522))

(assert (not d!1777597))

(assert (not bm!423995))

(assert (not d!1777607))

(assert (not b!5627548))

(assert (not setNonEmpty!37579))

(assert (not b!5627527))

(assert (not d!1777661))

(assert (not b!5627521))

(assert (not b!5627583))

(assert (not b!5627550))

(assert (not d!1777655))

(assert (not d!1777653))

(assert (not bm!423989))

(assert (not d!1777635))

(assert (not bm!423998))

(assert (not b!5627434))

(assert (not d!1777629))

(assert (not b!5627719))

(assert (not b!5627480))

(assert (not bm!423990))

(assert (not b!5627606))

(assert (not b!5627401))

(assert (not bm!423957))

(assert (not d!1777667))

(assert (not b!5627734))

(assert (not d!1777633))

(assert (not b!5627740))

(assert (not b!5627742))

(assert (not b!5627612))

(assert (not d!1777581))

(assert (not b!5627611))

(assert (not bm!423966))

(assert (not b!5627525))

(assert (not b!5627473))

(assert (not bm!423984))

(assert (not b!5627489))

(assert (not d!1777669))

(assert (not b!5627735))

(assert (not b!5627718))

(assert (not b!5627523))

(assert (not d!1777659))

(assert (not b!5627441))

(assert (not b!5627673))

(assert (not b!5627675))

(assert (not b!5627549))

(assert (not d!1777589))

(assert (not b!5627474))

(assert (not d!1777643))

(assert (not bm!423987))

(assert (not bm!424002))

(assert (not b!5627738))

(assert (not b!5627694))

(assert (not b!5627672))

(assert (not d!1777665))

(assert (not d!1777619))

(assert (not b!5627642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

