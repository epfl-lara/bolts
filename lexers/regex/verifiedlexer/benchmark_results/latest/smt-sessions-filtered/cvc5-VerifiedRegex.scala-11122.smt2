; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!575168 () Bool)

(assert start!575168)

(declare-fun b!5507678 () Bool)

(assert (=> b!5507678 true))

(assert (=> b!5507678 true))

(declare-fun lambda!294957 () Int)

(declare-fun lambda!294956 () Int)

(assert (=> b!5507678 (not (= lambda!294957 lambda!294956))))

(assert (=> b!5507678 true))

(assert (=> b!5507678 true))

(declare-fun b!5507671 () Bool)

(assert (=> b!5507671 true))

(declare-fun b!5507663 () Bool)

(declare-fun e!3406358 () Bool)

(declare-fun tp_is_empty!40233 () Bool)

(declare-fun tp!1515495 () Bool)

(assert (=> b!5507663 (= e!3406358 (and tp_is_empty!40233 tp!1515495))))

(declare-fun b!5507664 () Bool)

(declare-fun e!3406360 () Bool)

(declare-fun e!3406361 () Bool)

(assert (=> b!5507664 (= e!3406360 e!3406361)))

(declare-fun res!2347106 () Bool)

(assert (=> b!5507664 (=> res!2347106 e!3406361)))

(declare-datatypes ((C!31250 0))(
  ( (C!31251 (val!25327 Int)) )
))
(declare-datatypes ((Regex!15490 0))(
  ( (ElementMatch!15490 (c!962327 C!31250)) (Concat!24335 (regOne!31492 Regex!15490) (regTwo!31492 Regex!15490)) (EmptyExpr!15490) (Star!15490 (reg!15819 Regex!15490)) (EmptyLang!15490) (Union!15490 (regOne!31493 Regex!15490) (regTwo!31493 Regex!15490)) )
))
(declare-datatypes ((List!62769 0))(
  ( (Nil!62645) (Cons!62645 (h!69093 Regex!15490) (t!376012 List!62769)) )
))
(declare-datatypes ((Context!9748 0))(
  ( (Context!9749 (exprs!5374 List!62769)) )
))
(declare-fun lt!2244497 () (Set Context!9748))

(declare-fun lt!2244499 () (Set Context!9748))

(assert (=> b!5507664 (= res!2347106 (not (= lt!2244497 lt!2244499)))))

(declare-fun r!7292 () Regex!15490)

(declare-datatypes ((List!62770 0))(
  ( (Nil!62646) (Cons!62646 (h!69094 C!31250) (t!376013 List!62770)) )
))
(declare-fun s!2326 () List!62770)

(declare-fun derivationStepZipperDown!832 (Regex!15490 Context!9748 C!31250) (Set Context!9748))

(assert (=> b!5507664 (= lt!2244499 (derivationStepZipperDown!832 r!7292 (Context!9749 Nil!62645) (h!69094 s!2326)))))

(declare-fun derivationStepZipperUp!758 (Context!9748 C!31250) (Set Context!9748))

(assert (=> b!5507664 (= lt!2244497 (derivationStepZipperUp!758 (Context!9749 (Cons!62645 r!7292 Nil!62645)) (h!69094 s!2326)))))

(declare-fun b!5507665 () Bool)

(declare-fun res!2347105 () Bool)

(declare-fun e!3406359 () Bool)

(assert (=> b!5507665 (=> res!2347105 e!3406359)))

(declare-datatypes ((List!62771 0))(
  ( (Nil!62647) (Cons!62647 (h!69095 Context!9748) (t!376014 List!62771)) )
))
(declare-fun zl!343 () List!62771)

(declare-fun generalisedConcat!1105 (List!62769) Regex!15490)

(assert (=> b!5507665 (= res!2347105 (not (= r!7292 (generalisedConcat!1105 (exprs!5374 (h!69095 zl!343))))))))

(declare-fun tp!1515496 () Bool)

(declare-fun setElem!36552 () Context!9748)

(declare-fun e!3406364 () Bool)

(declare-fun setNonEmpty!36552 () Bool)

(declare-fun setRes!36552 () Bool)

(declare-fun inv!81973 (Context!9748) Bool)

(assert (=> setNonEmpty!36552 (= setRes!36552 (and tp!1515496 (inv!81973 setElem!36552) e!3406364))))

(declare-fun z!1189 () (Set Context!9748))

(declare-fun setRest!36552 () (Set Context!9748))

(assert (=> setNonEmpty!36552 (= z!1189 (set.union (set.insert setElem!36552 (as set.empty (Set Context!9748))) setRest!36552))))

(declare-fun b!5507666 () Bool)

(declare-fun e!3406357 () Bool)

(declare-fun tp!1515490 () Bool)

(assert (=> b!5507666 (= e!3406357 tp!1515490)))

(declare-fun b!5507668 () Bool)

(declare-fun res!2347114 () Bool)

(assert (=> b!5507668 (=> res!2347114 e!3406359)))

(declare-fun isEmpty!34423 (List!62771) Bool)

(assert (=> b!5507668 (= res!2347114 (not (isEmpty!34423 (t!376014 zl!343))))))

(declare-fun b!5507669 () Bool)

(declare-fun res!2347110 () Bool)

(assert (=> b!5507669 (=> res!2347110 e!3406359)))

(assert (=> b!5507669 (= res!2347110 (or (is-EmptyExpr!15490 r!7292) (is-EmptyLang!15490 r!7292) (is-ElementMatch!15490 r!7292) (is-Union!15490 r!7292) (not (is-Concat!24335 r!7292))))))

(declare-fun b!5507670 () Bool)

(declare-fun res!2347113 () Bool)

(assert (=> b!5507670 (=> res!2347113 e!3406360)))

(declare-fun isEmpty!34424 (List!62769) Bool)

(assert (=> b!5507670 (= res!2347113 (not (isEmpty!34424 (t!376012 (exprs!5374 (h!69095 zl!343))))))))

(declare-fun derivationStepZipper!1595 ((Set Context!9748) C!31250) (Set Context!9748))

(assert (=> b!5507671 (= e!3406361 (= (derivationStepZipper!1595 z!1189 (h!69094 s!2326)) lt!2244499))))

(declare-fun lambda!294958 () Int)

(declare-fun flatMap!1103 ((Set Context!9748) Int) (Set Context!9748))

(assert (=> b!5507671 (= (flatMap!1103 z!1189 lambda!294958) (derivationStepZipperUp!758 (h!69095 zl!343) (h!69094 s!2326)))))

(declare-datatypes ((Unit!155440 0))(
  ( (Unit!155441) )
))
(declare-fun lt!2244502 () Unit!155440)

(declare-fun lemmaFlatMapOnSingletonSet!635 ((Set Context!9748) Context!9748 Int) Unit!155440)

(assert (=> b!5507671 (= lt!2244502 (lemmaFlatMapOnSingletonSet!635 z!1189 (h!69095 zl!343) lambda!294958))))

(declare-fun setIsEmpty!36552 () Bool)

(assert (=> setIsEmpty!36552 setRes!36552))

(declare-fun b!5507672 () Bool)

(declare-fun e!3406362 () Bool)

(declare-fun tp!1515488 () Bool)

(assert (=> b!5507672 (= e!3406362 tp!1515488)))

(declare-fun b!5507673 () Bool)

(declare-fun tp!1515491 () Bool)

(declare-fun tp!1515494 () Bool)

(assert (=> b!5507673 (= e!3406357 (and tp!1515491 tp!1515494))))

(declare-fun b!5507674 () Bool)

(declare-fun res!2347103 () Bool)

(assert (=> b!5507674 (=> res!2347103 e!3406359)))

(declare-fun generalisedUnion!1353 (List!62769) Regex!15490)

(declare-fun unfocusZipperList!918 (List!62771) List!62769)

(assert (=> b!5507674 (= res!2347103 (not (= r!7292 (generalisedUnion!1353 (unfocusZipperList!918 zl!343)))))))

(declare-fun b!5507667 () Bool)

(declare-fun tp!1515492 () Bool)

(declare-fun tp!1515497 () Bool)

(assert (=> b!5507667 (= e!3406357 (and tp!1515492 tp!1515497))))

(declare-fun res!2347111 () Bool)

(declare-fun e!3406365 () Bool)

(assert (=> start!575168 (=> (not res!2347111) (not e!3406365))))

(declare-fun validRegex!7226 (Regex!15490) Bool)

(assert (=> start!575168 (= res!2347111 (validRegex!7226 r!7292))))

(assert (=> start!575168 e!3406365))

(assert (=> start!575168 e!3406357))

(declare-fun condSetEmpty!36552 () Bool)

(assert (=> start!575168 (= condSetEmpty!36552 (= z!1189 (as set.empty (Set Context!9748))))))

(assert (=> start!575168 setRes!36552))

(declare-fun e!3406363 () Bool)

(assert (=> start!575168 e!3406363))

(assert (=> start!575168 e!3406358))

(declare-fun b!5507675 () Bool)

(declare-fun res!2347109 () Bool)

(assert (=> b!5507675 (=> res!2347109 e!3406359)))

(assert (=> b!5507675 (= res!2347109 (not (is-Cons!62645 (exprs!5374 (h!69095 zl!343)))))))

(declare-fun b!5507676 () Bool)

(declare-fun tp!1515493 () Bool)

(assert (=> b!5507676 (= e!3406364 tp!1515493)))

(declare-fun b!5507677 () Bool)

(declare-fun res!2347104 () Bool)

(assert (=> b!5507677 (=> (not res!2347104) (not e!3406365))))

(declare-fun toList!9274 ((Set Context!9748)) List!62771)

(assert (=> b!5507677 (= res!2347104 (= (toList!9274 z!1189) zl!343))))

(assert (=> b!5507678 (= e!3406359 e!3406360)))

(declare-fun res!2347107 () Bool)

(assert (=> b!5507678 (=> res!2347107 e!3406360)))

(declare-fun lt!2244503 () Bool)

(declare-fun lt!2244496 () Bool)

(assert (=> b!5507678 (= res!2347107 (or (not (= lt!2244496 lt!2244503)) (is-Nil!62646 s!2326)))))

(declare-fun Exists!2590 (Int) Bool)

(assert (=> b!5507678 (= (Exists!2590 lambda!294956) (Exists!2590 lambda!294957))))

(declare-fun lt!2244500 () Unit!155440)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1219 (Regex!15490 Regex!15490 List!62770) Unit!155440)

(assert (=> b!5507678 (= lt!2244500 (lemmaExistCutMatchRandMatchRSpecEquivalent!1219 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326))))

(assert (=> b!5507678 (= lt!2244503 (Exists!2590 lambda!294956))))

(declare-datatypes ((tuple2!65174 0))(
  ( (tuple2!65175 (_1!35890 List!62770) (_2!35890 List!62770)) )
))
(declare-datatypes ((Option!15499 0))(
  ( (None!15498) (Some!15498 (v!51533 tuple2!65174)) )
))
(declare-fun isDefined!12202 (Option!15499) Bool)

(declare-fun findConcatSeparation!1913 (Regex!15490 Regex!15490 List!62770 List!62770 List!62770) Option!15499)

(assert (=> b!5507678 (= lt!2244503 (isDefined!12202 (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) Nil!62646 s!2326 s!2326)))))

(declare-fun lt!2244498 () Unit!155440)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1677 (Regex!15490 Regex!15490 List!62770) Unit!155440)

(assert (=> b!5507678 (= lt!2244498 (lemmaFindConcatSeparationEquivalentToExists!1677 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326))))

(declare-fun b!5507679 () Bool)

(assert (=> b!5507679 (= e!3406365 (not e!3406359))))

(declare-fun res!2347108 () Bool)

(assert (=> b!5507679 (=> res!2347108 e!3406359)))

(assert (=> b!5507679 (= res!2347108 (not (is-Cons!62647 zl!343)))))

(declare-fun matchRSpec!2593 (Regex!15490 List!62770) Bool)

(assert (=> b!5507679 (= lt!2244496 (matchRSpec!2593 r!7292 s!2326))))

(declare-fun matchR!7675 (Regex!15490 List!62770) Bool)

(assert (=> b!5507679 (= lt!2244496 (matchR!7675 r!7292 s!2326))))

(declare-fun lt!2244501 () Unit!155440)

(declare-fun mainMatchTheorem!2593 (Regex!15490 List!62770) Unit!155440)

(assert (=> b!5507679 (= lt!2244501 (mainMatchTheorem!2593 r!7292 s!2326))))

(declare-fun b!5507680 () Bool)

(declare-fun tp!1515489 () Bool)

(assert (=> b!5507680 (= e!3406363 (and (inv!81973 (h!69095 zl!343)) e!3406362 tp!1515489))))

(declare-fun b!5507681 () Bool)

(declare-fun res!2347112 () Bool)

(assert (=> b!5507681 (=> (not res!2347112) (not e!3406365))))

(declare-fun unfocusZipper!1232 (List!62771) Regex!15490)

(assert (=> b!5507681 (= res!2347112 (= r!7292 (unfocusZipper!1232 zl!343)))))

(declare-fun b!5507682 () Bool)

(assert (=> b!5507682 (= e!3406357 tp_is_empty!40233)))

(assert (= (and start!575168 res!2347111) b!5507677))

(assert (= (and b!5507677 res!2347104) b!5507681))

(assert (= (and b!5507681 res!2347112) b!5507679))

(assert (= (and b!5507679 (not res!2347108)) b!5507668))

(assert (= (and b!5507668 (not res!2347114)) b!5507665))

(assert (= (and b!5507665 (not res!2347105)) b!5507675))

(assert (= (and b!5507675 (not res!2347109)) b!5507674))

(assert (= (and b!5507674 (not res!2347103)) b!5507669))

(assert (= (and b!5507669 (not res!2347110)) b!5507678))

(assert (= (and b!5507678 (not res!2347107)) b!5507670))

(assert (= (and b!5507670 (not res!2347113)) b!5507664))

(assert (= (and b!5507664 (not res!2347106)) b!5507671))

(assert (= (and start!575168 (is-ElementMatch!15490 r!7292)) b!5507682))

(assert (= (and start!575168 (is-Concat!24335 r!7292)) b!5507667))

(assert (= (and start!575168 (is-Star!15490 r!7292)) b!5507666))

(assert (= (and start!575168 (is-Union!15490 r!7292)) b!5507673))

(assert (= (and start!575168 condSetEmpty!36552) setIsEmpty!36552))

(assert (= (and start!575168 (not condSetEmpty!36552)) setNonEmpty!36552))

(assert (= setNonEmpty!36552 b!5507676))

(assert (= b!5507680 b!5507672))

(assert (= (and start!575168 (is-Cons!62647 zl!343)) b!5507680))

(assert (= (and start!575168 (is-Cons!62646 s!2326)) b!5507663))

(declare-fun m!6513764 () Bool)

(assert (=> setNonEmpty!36552 m!6513764))

(declare-fun m!6513766 () Bool)

(assert (=> start!575168 m!6513766))

(declare-fun m!6513768 () Bool)

(assert (=> b!5507678 m!6513768))

(declare-fun m!6513770 () Bool)

(assert (=> b!5507678 m!6513770))

(declare-fun m!6513772 () Bool)

(assert (=> b!5507678 m!6513772))

(declare-fun m!6513774 () Bool)

(assert (=> b!5507678 m!6513774))

(declare-fun m!6513776 () Bool)

(assert (=> b!5507678 m!6513776))

(assert (=> b!5507678 m!6513776))

(assert (=> b!5507678 m!6513768))

(declare-fun m!6513778 () Bool)

(assert (=> b!5507678 m!6513778))

(declare-fun m!6513780 () Bool)

(assert (=> b!5507668 m!6513780))

(declare-fun m!6513782 () Bool)

(assert (=> b!5507671 m!6513782))

(declare-fun m!6513784 () Bool)

(assert (=> b!5507671 m!6513784))

(declare-fun m!6513786 () Bool)

(assert (=> b!5507671 m!6513786))

(declare-fun m!6513788 () Bool)

(assert (=> b!5507671 m!6513788))

(declare-fun m!6513790 () Bool)

(assert (=> b!5507681 m!6513790))

(declare-fun m!6513792 () Bool)

(assert (=> b!5507670 m!6513792))

(declare-fun m!6513794 () Bool)

(assert (=> b!5507679 m!6513794))

(declare-fun m!6513796 () Bool)

(assert (=> b!5507679 m!6513796))

(declare-fun m!6513798 () Bool)

(assert (=> b!5507679 m!6513798))

(declare-fun m!6513800 () Bool)

(assert (=> b!5507674 m!6513800))

(assert (=> b!5507674 m!6513800))

(declare-fun m!6513802 () Bool)

(assert (=> b!5507674 m!6513802))

(declare-fun m!6513804 () Bool)

(assert (=> b!5507680 m!6513804))

(declare-fun m!6513806 () Bool)

(assert (=> b!5507664 m!6513806))

(declare-fun m!6513808 () Bool)

(assert (=> b!5507664 m!6513808))

(declare-fun m!6513810 () Bool)

(assert (=> b!5507677 m!6513810))

(declare-fun m!6513812 () Bool)

(assert (=> b!5507665 m!6513812))

(push 1)

(assert (not b!5507668))

(assert (not b!5507677))

(assert (not b!5507680))

(assert (not b!5507663))

(assert (not b!5507670))

(assert (not b!5507671))

(assert (not b!5507679))

(assert (not b!5507681))

(assert (not b!5507676))

(assert (not b!5507665))

(assert (not b!5507666))

(assert (not setNonEmpty!36552))

(assert (not start!575168))

(assert (not b!5507674))

(assert (not b!5507678))

(assert tp_is_empty!40233)

(assert (not b!5507673))

(assert (not b!5507664))

(assert (not b!5507667))

(assert (not b!5507672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!407036 () (Set Context!9748))

(declare-fun c!962345 () Bool)

(declare-fun call!407038 () List!62769)

(declare-fun bm!407029 () Bool)

(assert (=> bm!407029 (= call!407036 (derivationStepZipperDown!832 (ite c!962345 (regTwo!31493 r!7292) (regOne!31492 r!7292)) (ite c!962345 (Context!9749 Nil!62645) (Context!9749 call!407038)) (h!69094 s!2326)))))

(declare-fun b!5507789 () Bool)

(declare-fun e!3406416 () (Set Context!9748))

(declare-fun e!3406415 () (Set Context!9748))

(assert (=> b!5507789 (= e!3406416 e!3406415)))

(declare-fun c!962346 () Bool)

(assert (=> b!5507789 (= c!962346 (is-Concat!24335 r!7292))))

(declare-fun call!407037 () (Set Context!9748))

(declare-fun c!962342 () Bool)

(declare-fun bm!407030 () Bool)

(declare-fun call!407035 () List!62769)

(assert (=> bm!407030 (= call!407037 (derivationStepZipperDown!832 (ite c!962345 (regOne!31493 r!7292) (ite c!962342 (regTwo!31492 r!7292) (ite c!962346 (regOne!31492 r!7292) (reg!15819 r!7292)))) (ite (or c!962345 c!962342) (Context!9749 Nil!62645) (Context!9749 call!407035)) (h!69094 s!2326)))))

(declare-fun b!5507790 () Bool)

(declare-fun e!3406413 () (Set Context!9748))

(declare-fun call!407039 () (Set Context!9748))

(assert (=> b!5507790 (= e!3406413 call!407039)))

(declare-fun b!5507791 () Bool)

(declare-fun e!3406412 () (Set Context!9748))

(declare-fun e!3406414 () (Set Context!9748))

(assert (=> b!5507791 (= e!3406412 e!3406414)))

(assert (=> b!5507791 (= c!962345 (is-Union!15490 r!7292))))

(declare-fun b!5507792 () Bool)

(declare-fun c!962344 () Bool)

(assert (=> b!5507792 (= c!962344 (is-Star!15490 r!7292))))

(assert (=> b!5507792 (= e!3406415 e!3406413)))

(declare-fun bm!407031 () Bool)

(assert (=> bm!407031 (= call!407035 call!407038)))

(declare-fun b!5507793 () Bool)

(declare-fun e!3406411 () Bool)

(assert (=> b!5507793 (= c!962342 e!3406411)))

(declare-fun res!2347165 () Bool)

(assert (=> b!5507793 (=> (not res!2347165) (not e!3406411))))

(assert (=> b!5507793 (= res!2347165 (is-Concat!24335 r!7292))))

(assert (=> b!5507793 (= e!3406414 e!3406416)))

(declare-fun b!5507794 () Bool)

(assert (=> b!5507794 (= e!3406415 call!407039)))

(declare-fun b!5507795 () Bool)

(assert (=> b!5507795 (= e!3406412 (set.insert (Context!9749 Nil!62645) (as set.empty (Set Context!9748))))))

(declare-fun d!1745437 () Bool)

(declare-fun c!962343 () Bool)

(assert (=> d!1745437 (= c!962343 (and (is-ElementMatch!15490 r!7292) (= (c!962327 r!7292) (h!69094 s!2326))))))

(assert (=> d!1745437 (= (derivationStepZipperDown!832 r!7292 (Context!9749 Nil!62645) (h!69094 s!2326)) e!3406412)))

(declare-fun b!5507796 () Bool)

(declare-fun nullable!5524 (Regex!15490) Bool)

(assert (=> b!5507796 (= e!3406411 (nullable!5524 (regOne!31492 r!7292)))))

(declare-fun b!5507797 () Bool)

(assert (=> b!5507797 (= e!3406414 (set.union call!407037 call!407036))))

(declare-fun bm!407032 () Bool)

(declare-fun call!407034 () (Set Context!9748))

(assert (=> bm!407032 (= call!407039 call!407034)))

(declare-fun bm!407033 () Bool)

(assert (=> bm!407033 (= call!407034 call!407037)))

(declare-fun b!5507798 () Bool)

(assert (=> b!5507798 (= e!3406416 (set.union call!407036 call!407034))))

(declare-fun b!5507799 () Bool)

(assert (=> b!5507799 (= e!3406413 (as set.empty (Set Context!9748)))))

(declare-fun bm!407034 () Bool)

(declare-fun $colon$colon!1575 (List!62769 Regex!15490) List!62769)

(assert (=> bm!407034 (= call!407038 ($colon$colon!1575 (exprs!5374 (Context!9749 Nil!62645)) (ite (or c!962342 c!962346) (regTwo!31492 r!7292) r!7292)))))

(assert (= (and d!1745437 c!962343) b!5507795))

(assert (= (and d!1745437 (not c!962343)) b!5507791))

(assert (= (and b!5507791 c!962345) b!5507797))

(assert (= (and b!5507791 (not c!962345)) b!5507793))

(assert (= (and b!5507793 res!2347165) b!5507796))

(assert (= (and b!5507793 c!962342) b!5507798))

(assert (= (and b!5507793 (not c!962342)) b!5507789))

(assert (= (and b!5507789 c!962346) b!5507794))

(assert (= (and b!5507789 (not c!962346)) b!5507792))

(assert (= (and b!5507792 c!962344) b!5507790))

(assert (= (and b!5507792 (not c!962344)) b!5507799))

(assert (= (or b!5507794 b!5507790) bm!407031))

(assert (= (or b!5507794 b!5507790) bm!407032))

(assert (= (or b!5507798 bm!407031) bm!407034))

(assert (= (or b!5507798 bm!407032) bm!407033))

(assert (= (or b!5507797 b!5507798) bm!407029))

(assert (= (or b!5507797 bm!407033) bm!407030))

(declare-fun m!6513864 () Bool)

(assert (=> b!5507796 m!6513864))

(declare-fun m!6513866 () Bool)

(assert (=> bm!407030 m!6513866))

(declare-fun m!6513868 () Bool)

(assert (=> b!5507795 m!6513868))

(declare-fun m!6513870 () Bool)

(assert (=> bm!407034 m!6513870))

(declare-fun m!6513872 () Bool)

(assert (=> bm!407029 m!6513872))

(assert (=> b!5507664 d!1745437))

(declare-fun d!1745441 () Bool)

(declare-fun c!962352 () Bool)

(declare-fun e!3406423 () Bool)

(assert (=> d!1745441 (= c!962352 e!3406423)))

(declare-fun res!2347168 () Bool)

(assert (=> d!1745441 (=> (not res!2347168) (not e!3406423))))

(assert (=> d!1745441 (= res!2347168 (is-Cons!62645 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645)))))))

(declare-fun e!3406424 () (Set Context!9748))

(assert (=> d!1745441 (= (derivationStepZipperUp!758 (Context!9749 (Cons!62645 r!7292 Nil!62645)) (h!69094 s!2326)) e!3406424)))

(declare-fun b!5507810 () Bool)

(assert (=> b!5507810 (= e!3406423 (nullable!5524 (h!69093 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645))))))))

(declare-fun b!5507811 () Bool)

(declare-fun call!407042 () (Set Context!9748))

(assert (=> b!5507811 (= e!3406424 (set.union call!407042 (derivationStepZipperUp!758 (Context!9749 (t!376012 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645))))) (h!69094 s!2326))))))

(declare-fun bm!407037 () Bool)

(assert (=> bm!407037 (= call!407042 (derivationStepZipperDown!832 (h!69093 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645)))) (Context!9749 (t!376012 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645))))) (h!69094 s!2326)))))

(declare-fun b!5507812 () Bool)

(declare-fun e!3406425 () (Set Context!9748))

(assert (=> b!5507812 (= e!3406425 (as set.empty (Set Context!9748)))))

(declare-fun b!5507813 () Bool)

(assert (=> b!5507813 (= e!3406424 e!3406425)))

(declare-fun c!962351 () Bool)

(assert (=> b!5507813 (= c!962351 (is-Cons!62645 (exprs!5374 (Context!9749 (Cons!62645 r!7292 Nil!62645)))))))

(declare-fun b!5507814 () Bool)

(assert (=> b!5507814 (= e!3406425 call!407042)))

(assert (= (and d!1745441 res!2347168) b!5507810))

(assert (= (and d!1745441 c!962352) b!5507811))

(assert (= (and d!1745441 (not c!962352)) b!5507813))

(assert (= (and b!5507813 c!962351) b!5507814))

(assert (= (and b!5507813 (not c!962351)) b!5507812))

(assert (= (or b!5507811 b!5507814) bm!407037))

(declare-fun m!6513874 () Bool)

(assert (=> b!5507810 m!6513874))

(declare-fun m!6513876 () Bool)

(assert (=> b!5507811 m!6513876))

(declare-fun m!6513878 () Bool)

(assert (=> bm!407037 m!6513878))

(assert (=> b!5507664 d!1745441))

(declare-fun d!1745443 () Bool)

(declare-fun lambda!294972 () Int)

(declare-fun forall!14670 (List!62769 Int) Bool)

(assert (=> d!1745443 (= (inv!81973 setElem!36552) (forall!14670 (exprs!5374 setElem!36552) lambda!294972))))

(declare-fun bs!1270063 () Bool)

(assert (= bs!1270063 d!1745443))

(declare-fun m!6513880 () Bool)

(assert (=> bs!1270063 m!6513880))

(assert (=> setNonEmpty!36552 d!1745443))

(declare-fun bs!1270064 () Bool)

(declare-fun d!1745445 () Bool)

(assert (= bs!1270064 (and d!1745445 d!1745443)))

(declare-fun lambda!294975 () Int)

(assert (=> bs!1270064 (= lambda!294975 lambda!294972)))

(declare-fun b!5507857 () Bool)

(declare-fun e!3406454 () Regex!15490)

(assert (=> b!5507857 (= e!3406454 (Concat!24335 (h!69093 (exprs!5374 (h!69095 zl!343))) (generalisedConcat!1105 (t!376012 (exprs!5374 (h!69095 zl!343))))))))

(declare-fun e!3406453 () Bool)

(assert (=> d!1745445 e!3406453))

(declare-fun res!2347175 () Bool)

(assert (=> d!1745445 (=> (not res!2347175) (not e!3406453))))

(declare-fun lt!2244530 () Regex!15490)

(assert (=> d!1745445 (= res!2347175 (validRegex!7226 lt!2244530))))

(declare-fun e!3406452 () Regex!15490)

(assert (=> d!1745445 (= lt!2244530 e!3406452)))

(declare-fun c!962372 () Bool)

(declare-fun e!3406450 () Bool)

(assert (=> d!1745445 (= c!962372 e!3406450)))

(declare-fun res!2347176 () Bool)

(assert (=> d!1745445 (=> (not res!2347176) (not e!3406450))))

(assert (=> d!1745445 (= res!2347176 (is-Cons!62645 (exprs!5374 (h!69095 zl!343))))))

(assert (=> d!1745445 (forall!14670 (exprs!5374 (h!69095 zl!343)) lambda!294975)))

(assert (=> d!1745445 (= (generalisedConcat!1105 (exprs!5374 (h!69095 zl!343))) lt!2244530)))

(declare-fun b!5507858 () Bool)

(declare-fun e!3406455 () Bool)

(declare-fun head!11795 (List!62769) Regex!15490)

(assert (=> b!5507858 (= e!3406455 (= lt!2244530 (head!11795 (exprs!5374 (h!69095 zl!343)))))))

(declare-fun b!5507859 () Bool)

(declare-fun e!3406451 () Bool)

(assert (=> b!5507859 (= e!3406451 e!3406455)))

(declare-fun c!962371 () Bool)

(declare-fun tail!10890 (List!62769) List!62769)

(assert (=> b!5507859 (= c!962371 (isEmpty!34424 (tail!10890 (exprs!5374 (h!69095 zl!343)))))))

(declare-fun b!5507860 () Bool)

(assert (=> b!5507860 (= e!3406454 EmptyExpr!15490)))

(declare-fun b!5507861 () Bool)

(assert (=> b!5507861 (= e!3406452 (h!69093 (exprs!5374 (h!69095 zl!343))))))

(declare-fun b!5507862 () Bool)

(assert (=> b!5507862 (= e!3406453 e!3406451)))

(declare-fun c!962374 () Bool)

(assert (=> b!5507862 (= c!962374 (isEmpty!34424 (exprs!5374 (h!69095 zl!343))))))

(declare-fun b!5507863 () Bool)

(declare-fun isConcat!591 (Regex!15490) Bool)

(assert (=> b!5507863 (= e!3406455 (isConcat!591 lt!2244530))))

(declare-fun b!5507864 () Bool)

(assert (=> b!5507864 (= e!3406450 (isEmpty!34424 (t!376012 (exprs!5374 (h!69095 zl!343)))))))

(declare-fun b!5507865 () Bool)

(declare-fun isEmptyExpr!1068 (Regex!15490) Bool)

(assert (=> b!5507865 (= e!3406451 (isEmptyExpr!1068 lt!2244530))))

(declare-fun b!5507866 () Bool)

(assert (=> b!5507866 (= e!3406452 e!3406454)))

(declare-fun c!962373 () Bool)

(assert (=> b!5507866 (= c!962373 (is-Cons!62645 (exprs!5374 (h!69095 zl!343))))))

(assert (= (and d!1745445 res!2347176) b!5507864))

(assert (= (and d!1745445 c!962372) b!5507861))

(assert (= (and d!1745445 (not c!962372)) b!5507866))

(assert (= (and b!5507866 c!962373) b!5507857))

(assert (= (and b!5507866 (not c!962373)) b!5507860))

(assert (= (and d!1745445 res!2347175) b!5507862))

(assert (= (and b!5507862 c!962374) b!5507865))

(assert (= (and b!5507862 (not c!962374)) b!5507859))

(assert (= (and b!5507859 c!962371) b!5507858))

(assert (= (and b!5507859 (not c!962371)) b!5507863))

(declare-fun m!6513882 () Bool)

(assert (=> b!5507858 m!6513882))

(declare-fun m!6513884 () Bool)

(assert (=> b!5507863 m!6513884))

(declare-fun m!6513886 () Bool)

(assert (=> d!1745445 m!6513886))

(declare-fun m!6513888 () Bool)

(assert (=> d!1745445 m!6513888))

(declare-fun m!6513890 () Bool)

(assert (=> b!5507862 m!6513890))

(declare-fun m!6513892 () Bool)

(assert (=> b!5507865 m!6513892))

(declare-fun m!6513894 () Bool)

(assert (=> b!5507857 m!6513894))

(assert (=> b!5507864 m!6513792))

(declare-fun m!6513896 () Bool)

(assert (=> b!5507859 m!6513896))

(assert (=> b!5507859 m!6513896))

(declare-fun m!6513898 () Bool)

(assert (=> b!5507859 m!6513898))

(assert (=> b!5507665 d!1745445))

(declare-fun bs!1270065 () Bool)

(declare-fun d!1745447 () Bool)

(assert (= bs!1270065 (and d!1745447 d!1745443)))

(declare-fun lambda!294978 () Int)

(assert (=> bs!1270065 (= lambda!294978 lambda!294972)))

(declare-fun bs!1270066 () Bool)

(assert (= bs!1270066 (and d!1745447 d!1745445)))

(assert (=> bs!1270066 (= lambda!294978 lambda!294975)))

(declare-fun b!5507887 () Bool)

(declare-fun e!3406471 () Regex!15490)

(declare-fun e!3406469 () Regex!15490)

(assert (=> b!5507887 (= e!3406471 e!3406469)))

(declare-fun c!962385 () Bool)

(assert (=> b!5507887 (= c!962385 (is-Cons!62645 (unfocusZipperList!918 zl!343)))))

(declare-fun b!5507888 () Bool)

(declare-fun e!3406472 () Bool)

(declare-fun lt!2244533 () Regex!15490)

(declare-fun isUnion!509 (Regex!15490) Bool)

(assert (=> b!5507888 (= e!3406472 (isUnion!509 lt!2244533))))

(declare-fun b!5507889 () Bool)

(assert (=> b!5507889 (= e!3406472 (= lt!2244533 (head!11795 (unfocusZipperList!918 zl!343))))))

(declare-fun b!5507890 () Bool)

(assert (=> b!5507890 (= e!3406469 (Union!15490 (h!69093 (unfocusZipperList!918 zl!343)) (generalisedUnion!1353 (t!376012 (unfocusZipperList!918 zl!343)))))))

(declare-fun b!5507891 () Bool)

(assert (=> b!5507891 (= e!3406469 EmptyLang!15490)))

(declare-fun b!5507892 () Bool)

(declare-fun e!3406470 () Bool)

(declare-fun e!3406468 () Bool)

(assert (=> b!5507892 (= e!3406470 e!3406468)))

(declare-fun c!962386 () Bool)

(assert (=> b!5507892 (= c!962386 (isEmpty!34424 (unfocusZipperList!918 zl!343)))))

(declare-fun b!5507893 () Bool)

(assert (=> b!5507893 (= e!3406471 (h!69093 (unfocusZipperList!918 zl!343)))))

(assert (=> d!1745447 e!3406470))

(declare-fun res!2347182 () Bool)

(assert (=> d!1745447 (=> (not res!2347182) (not e!3406470))))

(assert (=> d!1745447 (= res!2347182 (validRegex!7226 lt!2244533))))

(assert (=> d!1745447 (= lt!2244533 e!3406471)))

(declare-fun c!962383 () Bool)

(declare-fun e!3406473 () Bool)

(assert (=> d!1745447 (= c!962383 e!3406473)))

(declare-fun res!2347181 () Bool)

(assert (=> d!1745447 (=> (not res!2347181) (not e!3406473))))

(assert (=> d!1745447 (= res!2347181 (is-Cons!62645 (unfocusZipperList!918 zl!343)))))

(assert (=> d!1745447 (forall!14670 (unfocusZipperList!918 zl!343) lambda!294978)))

(assert (=> d!1745447 (= (generalisedUnion!1353 (unfocusZipperList!918 zl!343)) lt!2244533)))

(declare-fun b!5507894 () Bool)

(assert (=> b!5507894 (= e!3406468 e!3406472)))

(declare-fun c!962384 () Bool)

(assert (=> b!5507894 (= c!962384 (isEmpty!34424 (tail!10890 (unfocusZipperList!918 zl!343))))))

(declare-fun b!5507895 () Bool)

(declare-fun isEmptyLang!1079 (Regex!15490) Bool)

(assert (=> b!5507895 (= e!3406468 (isEmptyLang!1079 lt!2244533))))

(declare-fun b!5507896 () Bool)

(assert (=> b!5507896 (= e!3406473 (isEmpty!34424 (t!376012 (unfocusZipperList!918 zl!343))))))

(assert (= (and d!1745447 res!2347181) b!5507896))

(assert (= (and d!1745447 c!962383) b!5507893))

(assert (= (and d!1745447 (not c!962383)) b!5507887))

(assert (= (and b!5507887 c!962385) b!5507890))

(assert (= (and b!5507887 (not c!962385)) b!5507891))

(assert (= (and d!1745447 res!2347182) b!5507892))

(assert (= (and b!5507892 c!962386) b!5507895))

(assert (= (and b!5507892 (not c!962386)) b!5507894))

(assert (= (and b!5507894 c!962384) b!5507889))

(assert (= (and b!5507894 (not c!962384)) b!5507888))

(assert (=> b!5507889 m!6513800))

(declare-fun m!6513900 () Bool)

(assert (=> b!5507889 m!6513900))

(declare-fun m!6513902 () Bool)

(assert (=> b!5507895 m!6513902))

(declare-fun m!6513904 () Bool)

(assert (=> d!1745447 m!6513904))

(assert (=> d!1745447 m!6513800))

(declare-fun m!6513906 () Bool)

(assert (=> d!1745447 m!6513906))

(declare-fun m!6513908 () Bool)

(assert (=> b!5507896 m!6513908))

(declare-fun m!6513910 () Bool)

(assert (=> b!5507888 m!6513910))

(declare-fun m!6513912 () Bool)

(assert (=> b!5507890 m!6513912))

(assert (=> b!5507892 m!6513800))

(declare-fun m!6513914 () Bool)

(assert (=> b!5507892 m!6513914))

(assert (=> b!5507894 m!6513800))

(declare-fun m!6513916 () Bool)

(assert (=> b!5507894 m!6513916))

(assert (=> b!5507894 m!6513916))

(declare-fun m!6513918 () Bool)

(assert (=> b!5507894 m!6513918))

(assert (=> b!5507674 d!1745447))

(declare-fun bs!1270067 () Bool)

(declare-fun d!1745449 () Bool)

(assert (= bs!1270067 (and d!1745449 d!1745443)))

(declare-fun lambda!294981 () Int)

(assert (=> bs!1270067 (= lambda!294981 lambda!294972)))

(declare-fun bs!1270068 () Bool)

(assert (= bs!1270068 (and d!1745449 d!1745445)))

(assert (=> bs!1270068 (= lambda!294981 lambda!294975)))

(declare-fun bs!1270069 () Bool)

(assert (= bs!1270069 (and d!1745449 d!1745447)))

(assert (=> bs!1270069 (= lambda!294981 lambda!294978)))

(declare-fun lt!2244536 () List!62769)

(assert (=> d!1745449 (forall!14670 lt!2244536 lambda!294981)))

(declare-fun e!3406482 () List!62769)

(assert (=> d!1745449 (= lt!2244536 e!3406482)))

(declare-fun c!962394 () Bool)

(assert (=> d!1745449 (= c!962394 (is-Cons!62647 zl!343))))

(assert (=> d!1745449 (= (unfocusZipperList!918 zl!343) lt!2244536)))

(declare-fun b!5507912 () Bool)

(assert (=> b!5507912 (= e!3406482 (Cons!62645 (generalisedConcat!1105 (exprs!5374 (h!69095 zl!343))) (unfocusZipperList!918 (t!376014 zl!343))))))

(declare-fun b!5507913 () Bool)

(assert (=> b!5507913 (= e!3406482 Nil!62645)))

(assert (= (and d!1745449 c!962394) b!5507912))

(assert (= (and d!1745449 (not c!962394)) b!5507913))

(declare-fun m!6513920 () Bool)

(assert (=> d!1745449 m!6513920))

(assert (=> b!5507912 m!6513812))

(declare-fun m!6513922 () Bool)

(assert (=> b!5507912 m!6513922))

(assert (=> b!5507674 d!1745449))

(declare-fun d!1745451 () Bool)

(assert (=> d!1745451 (= (isEmpty!34423 (t!376014 zl!343)) (is-Nil!62647 (t!376014 zl!343)))))

(assert (=> b!5507668 d!1745451))

(declare-fun b!5507947 () Bool)

(declare-fun res!2347197 () Bool)

(declare-fun e!3406502 () Bool)

(assert (=> b!5507947 (=> (not res!2347197) (not e!3406502))))

(declare-fun lt!2244544 () Option!15499)

(declare-fun get!21557 (Option!15499) tuple2!65174)

(assert (=> b!5507947 (= res!2347197 (matchR!7675 (regOne!31492 r!7292) (_1!35890 (get!21557 lt!2244544))))))

(declare-fun b!5507948 () Bool)

(declare-fun e!3406506 () Bool)

(assert (=> b!5507948 (= e!3406506 (matchR!7675 (regTwo!31492 r!7292) s!2326))))

(declare-fun b!5507949 () Bool)

(declare-fun lt!2244545 () Unit!155440)

(declare-fun lt!2244543 () Unit!155440)

(assert (=> b!5507949 (= lt!2244545 lt!2244543)))

(declare-fun ++!13744 (List!62770 List!62770) List!62770)

(assert (=> b!5507949 (= (++!13744 (++!13744 Nil!62646 (Cons!62646 (h!69094 s!2326) Nil!62646)) (t!376013 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1913 (List!62770 C!31250 List!62770 List!62770) Unit!155440)

(assert (=> b!5507949 (= lt!2244543 (lemmaMoveElementToOtherListKeepsConcatEq!1913 Nil!62646 (h!69094 s!2326) (t!376013 s!2326) s!2326))))

(declare-fun e!3406504 () Option!15499)

(assert (=> b!5507949 (= e!3406504 (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) (++!13744 Nil!62646 (Cons!62646 (h!69094 s!2326) Nil!62646)) (t!376013 s!2326) s!2326))))

(declare-fun b!5507950 () Bool)

(declare-fun e!3406503 () Bool)

(assert (=> b!5507950 (= e!3406503 (not (isDefined!12202 lt!2244544)))))

(declare-fun b!5507951 () Bool)

(declare-fun e!3406505 () Option!15499)

(assert (=> b!5507951 (= e!3406505 (Some!15498 (tuple2!65175 Nil!62646 s!2326)))))

(declare-fun b!5507952 () Bool)

(assert (=> b!5507952 (= e!3406504 None!15498)))

(declare-fun b!5507953 () Bool)

(assert (=> b!5507953 (= e!3406502 (= (++!13744 (_1!35890 (get!21557 lt!2244544)) (_2!35890 (get!21557 lt!2244544))) s!2326))))

(declare-fun d!1745453 () Bool)

(assert (=> d!1745453 e!3406503))

(declare-fun res!2347201 () Bool)

(assert (=> d!1745453 (=> res!2347201 e!3406503)))

(assert (=> d!1745453 (= res!2347201 e!3406502)))

(declare-fun res!2347199 () Bool)

(assert (=> d!1745453 (=> (not res!2347199) (not e!3406502))))

(assert (=> d!1745453 (= res!2347199 (isDefined!12202 lt!2244544))))

(assert (=> d!1745453 (= lt!2244544 e!3406505)))

(declare-fun c!962406 () Bool)

(assert (=> d!1745453 (= c!962406 e!3406506)))

(declare-fun res!2347198 () Bool)

(assert (=> d!1745453 (=> (not res!2347198) (not e!3406506))))

(assert (=> d!1745453 (= res!2347198 (matchR!7675 (regOne!31492 r!7292) Nil!62646))))

(assert (=> d!1745453 (validRegex!7226 (regOne!31492 r!7292))))

(assert (=> d!1745453 (= (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) Nil!62646 s!2326 s!2326) lt!2244544)))

(declare-fun b!5507954 () Bool)

(assert (=> b!5507954 (= e!3406505 e!3406504)))

(declare-fun c!962405 () Bool)

(assert (=> b!5507954 (= c!962405 (is-Nil!62646 s!2326))))

(declare-fun b!5507955 () Bool)

(declare-fun res!2347200 () Bool)

(assert (=> b!5507955 (=> (not res!2347200) (not e!3406502))))

(assert (=> b!5507955 (= res!2347200 (matchR!7675 (regTwo!31492 r!7292) (_2!35890 (get!21557 lt!2244544))))))

(assert (= (and d!1745453 res!2347198) b!5507948))

(assert (= (and d!1745453 c!962406) b!5507951))

(assert (= (and d!1745453 (not c!962406)) b!5507954))

(assert (= (and b!5507954 c!962405) b!5507952))

(assert (= (and b!5507954 (not c!962405)) b!5507949))

(assert (= (and d!1745453 res!2347199) b!5507947))

(assert (= (and b!5507947 res!2347197) b!5507955))

(assert (= (and b!5507955 res!2347200) b!5507953))

(assert (= (and d!1745453 (not res!2347201)) b!5507950))

(declare-fun m!6513940 () Bool)

(assert (=> b!5507949 m!6513940))

(assert (=> b!5507949 m!6513940))

(declare-fun m!6513942 () Bool)

(assert (=> b!5507949 m!6513942))

(declare-fun m!6513944 () Bool)

(assert (=> b!5507949 m!6513944))

(assert (=> b!5507949 m!6513940))

(declare-fun m!6513946 () Bool)

(assert (=> b!5507949 m!6513946))

(declare-fun m!6513948 () Bool)

(assert (=> b!5507955 m!6513948))

(declare-fun m!6513950 () Bool)

(assert (=> b!5507955 m!6513950))

(declare-fun m!6513952 () Bool)

(assert (=> b!5507948 m!6513952))

(assert (=> b!5507947 m!6513948))

(declare-fun m!6513954 () Bool)

(assert (=> b!5507947 m!6513954))

(assert (=> b!5507953 m!6513948))

(declare-fun m!6513956 () Bool)

(assert (=> b!5507953 m!6513956))

(declare-fun m!6513958 () Bool)

(assert (=> b!5507950 m!6513958))

(assert (=> d!1745453 m!6513958))

(declare-fun m!6513960 () Bool)

(assert (=> d!1745453 m!6513960))

(declare-fun m!6513962 () Bool)

(assert (=> d!1745453 m!6513962))

(assert (=> b!5507678 d!1745453))

(declare-fun d!1745459 () Bool)

(declare-fun choose!41842 (Int) Bool)

(assert (=> d!1745459 (= (Exists!2590 lambda!294957) (choose!41842 lambda!294957))))

(declare-fun bs!1270070 () Bool)

(assert (= bs!1270070 d!1745459))

(declare-fun m!6513964 () Bool)

(assert (=> bs!1270070 m!6513964))

(assert (=> b!5507678 d!1745459))

(declare-fun d!1745463 () Bool)

(assert (=> d!1745463 (= (Exists!2590 lambda!294956) (choose!41842 lambda!294956))))

(declare-fun bs!1270071 () Bool)

(assert (= bs!1270071 d!1745463))

(declare-fun m!6513966 () Bool)

(assert (=> bs!1270071 m!6513966))

(assert (=> b!5507678 d!1745463))

(declare-fun bs!1270073 () Bool)

(declare-fun d!1745465 () Bool)

(assert (= bs!1270073 (and d!1745465 b!5507678)))

(declare-fun lambda!294987 () Int)

(assert (=> bs!1270073 (= lambda!294987 lambda!294956)))

(assert (=> bs!1270073 (not (= lambda!294987 lambda!294957))))

(assert (=> d!1745465 true))

(assert (=> d!1745465 true))

(assert (=> d!1745465 true))

(assert (=> d!1745465 (= (isDefined!12202 (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) Nil!62646 s!2326 s!2326)) (Exists!2590 lambda!294987))))

(declare-fun lt!2244548 () Unit!155440)

(declare-fun choose!41843 (Regex!15490 Regex!15490 List!62770) Unit!155440)

(assert (=> d!1745465 (= lt!2244548 (choose!41843 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326))))

(assert (=> d!1745465 (validRegex!7226 (regOne!31492 r!7292))))

(assert (=> d!1745465 (= (lemmaFindConcatSeparationEquivalentToExists!1677 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326) lt!2244548)))

(declare-fun bs!1270074 () Bool)

(assert (= bs!1270074 d!1745465))

(assert (=> bs!1270074 m!6513962))

(assert (=> bs!1270074 m!6513768))

(declare-fun m!6513970 () Bool)

(assert (=> bs!1270074 m!6513970))

(assert (=> bs!1270074 m!6513768))

(assert (=> bs!1270074 m!6513770))

(declare-fun m!6513972 () Bool)

(assert (=> bs!1270074 m!6513972))

(assert (=> b!5507678 d!1745465))

(declare-fun bs!1270075 () Bool)

(declare-fun d!1745469 () Bool)

(assert (= bs!1270075 (and d!1745469 b!5507678)))

(declare-fun lambda!294994 () Int)

(assert (=> bs!1270075 (= lambda!294994 lambda!294956)))

(assert (=> bs!1270075 (not (= lambda!294994 lambda!294957))))

(declare-fun bs!1270076 () Bool)

(assert (= bs!1270076 (and d!1745469 d!1745465)))

(assert (=> bs!1270076 (= lambda!294994 lambda!294987)))

(assert (=> d!1745469 true))

(assert (=> d!1745469 true))

(assert (=> d!1745469 true))

(declare-fun lambda!294995 () Int)

(assert (=> bs!1270075 (not (= lambda!294995 lambda!294956))))

(assert (=> bs!1270075 (= lambda!294995 lambda!294957)))

(assert (=> bs!1270076 (not (= lambda!294995 lambda!294987))))

(declare-fun bs!1270077 () Bool)

(assert (= bs!1270077 d!1745469))

(assert (=> bs!1270077 (not (= lambda!294995 lambda!294994))))

(assert (=> d!1745469 true))

(assert (=> d!1745469 true))

(assert (=> d!1745469 true))

(assert (=> d!1745469 (= (Exists!2590 lambda!294994) (Exists!2590 lambda!294995))))

(declare-fun lt!2244553 () Unit!155440)

(declare-fun choose!41844 (Regex!15490 Regex!15490 List!62770) Unit!155440)

(assert (=> d!1745469 (= lt!2244553 (choose!41844 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326))))

(assert (=> d!1745469 (validRegex!7226 (regOne!31492 r!7292))))

(assert (=> d!1745469 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1219 (regOne!31492 r!7292) (regTwo!31492 r!7292) s!2326) lt!2244553)))

(declare-fun m!6513974 () Bool)

(assert (=> bs!1270077 m!6513974))

(declare-fun m!6513976 () Bool)

(assert (=> bs!1270077 m!6513976))

(declare-fun m!6513978 () Bool)

(assert (=> bs!1270077 m!6513978))

(assert (=> bs!1270077 m!6513962))

(assert (=> b!5507678 d!1745469))

(declare-fun d!1745471 () Bool)

(declare-fun isEmpty!34427 (Option!15499) Bool)

(assert (=> d!1745471 (= (isDefined!12202 (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) Nil!62646 s!2326 s!2326)) (not (isEmpty!34427 (findConcatSeparation!1913 (regOne!31492 r!7292) (regTwo!31492 r!7292) Nil!62646 s!2326 s!2326))))))

(declare-fun bs!1270078 () Bool)

(assert (= bs!1270078 d!1745471))

(assert (=> bs!1270078 m!6513768))

(declare-fun m!6513980 () Bool)

(assert (=> bs!1270078 m!6513980))

(assert (=> b!5507678 d!1745471))

(declare-fun b!5508016 () Bool)

(declare-fun e!3406550 () Bool)

(declare-fun e!3406546 () Bool)

(assert (=> b!5508016 (= e!3406550 e!3406546)))

(declare-fun res!2347234 () Bool)

(assert (=> b!5508016 (=> (not res!2347234) (not e!3406546))))

(declare-fun call!407071 () Bool)

(assert (=> b!5508016 (= res!2347234 call!407071)))

(declare-fun b!5508017 () Bool)

(declare-fun e!3406545 () Bool)

(declare-fun call!407072 () Bool)

(assert (=> b!5508017 (= e!3406545 call!407072)))

(declare-fun b!5508018 () Bool)

(declare-fun e!3406551 () Bool)

(declare-fun call!407070 () Bool)

(assert (=> b!5508018 (= e!3406551 call!407070)))

(declare-fun b!5508019 () Bool)

(declare-fun e!3406547 () Bool)

(declare-fun e!3406549 () Bool)

(assert (=> b!5508019 (= e!3406547 e!3406549)))

(declare-fun c!962423 () Bool)

(assert (=> b!5508019 (= c!962423 (is-Union!15490 r!7292))))

(declare-fun b!5508020 () Bool)

(assert (=> b!5508020 (= e!3406547 e!3406551)))

(declare-fun res!2347233 () Bool)

(assert (=> b!5508020 (= res!2347233 (not (nullable!5524 (reg!15819 r!7292))))))

(assert (=> b!5508020 (=> (not res!2347233) (not e!3406551))))

(declare-fun d!1745473 () Bool)

(declare-fun res!2347232 () Bool)

(declare-fun e!3406548 () Bool)

(assert (=> d!1745473 (=> res!2347232 e!3406548)))

(assert (=> d!1745473 (= res!2347232 (is-ElementMatch!15490 r!7292))))

(assert (=> d!1745473 (= (validRegex!7226 r!7292) e!3406548)))

(declare-fun b!5508021 () Bool)

(assert (=> b!5508021 (= e!3406548 e!3406547)))

(declare-fun c!962424 () Bool)

(assert (=> b!5508021 (= c!962424 (is-Star!15490 r!7292))))

(declare-fun b!5508022 () Bool)

(assert (=> b!5508022 (= e!3406546 call!407072)))

(declare-fun b!5508023 () Bool)

(declare-fun res!2347230 () Bool)

(assert (=> b!5508023 (=> res!2347230 e!3406550)))

(assert (=> b!5508023 (= res!2347230 (not (is-Concat!24335 r!7292)))))

(assert (=> b!5508023 (= e!3406549 e!3406550)))

(declare-fun bm!407065 () Bool)

(assert (=> bm!407065 (= call!407070 (validRegex!7226 (ite c!962424 (reg!15819 r!7292) (ite c!962423 (regOne!31493 r!7292) (regOne!31492 r!7292)))))))

(declare-fun b!5508024 () Bool)

(declare-fun res!2347231 () Bool)

(assert (=> b!5508024 (=> (not res!2347231) (not e!3406545))))

(assert (=> b!5508024 (= res!2347231 call!407071)))

(assert (=> b!5508024 (= e!3406549 e!3406545)))

(declare-fun bm!407066 () Bool)

(assert (=> bm!407066 (= call!407071 call!407070)))

(declare-fun bm!407067 () Bool)

(assert (=> bm!407067 (= call!407072 (validRegex!7226 (ite c!962423 (regTwo!31493 r!7292) (regTwo!31492 r!7292))))))

(assert (= (and d!1745473 (not res!2347232)) b!5508021))

(assert (= (and b!5508021 c!962424) b!5508020))

(assert (= (and b!5508021 (not c!962424)) b!5508019))

(assert (= (and b!5508020 res!2347233) b!5508018))

(assert (= (and b!5508019 c!962423) b!5508024))

(assert (= (and b!5508019 (not c!962423)) b!5508023))

(assert (= (and b!5508024 res!2347231) b!5508017))

(assert (= (and b!5508023 (not res!2347230)) b!5508016))

(assert (= (and b!5508016 res!2347234) b!5508022))

(assert (= (or b!5508017 b!5508022) bm!407067))

(assert (= (or b!5508024 b!5508016) bm!407066))

(assert (= (or b!5508018 bm!407066) bm!407065))

(declare-fun m!6513982 () Bool)

(assert (=> b!5508020 m!6513982))

(declare-fun m!6513984 () Bool)

(assert (=> bm!407065 m!6513984))

(declare-fun m!6513986 () Bool)

(assert (=> bm!407067 m!6513986))

(assert (=> start!575168 d!1745473))

(declare-fun d!1745475 () Bool)

(declare-fun e!3406554 () Bool)

(assert (=> d!1745475 e!3406554))

(declare-fun res!2347237 () Bool)

(assert (=> d!1745475 (=> (not res!2347237) (not e!3406554))))

(declare-fun lt!2244557 () List!62771)

(declare-fun noDuplicate!1489 (List!62771) Bool)

(assert (=> d!1745475 (= res!2347237 (noDuplicate!1489 lt!2244557))))

(declare-fun choose!41845 ((Set Context!9748)) List!62771)

(assert (=> d!1745475 (= lt!2244557 (choose!41845 z!1189))))

(assert (=> d!1745475 (= (toList!9274 z!1189) lt!2244557)))

(declare-fun b!5508027 () Bool)

(declare-fun content!11252 (List!62771) (Set Context!9748))

(assert (=> b!5508027 (= e!3406554 (= (content!11252 lt!2244557) z!1189))))

(assert (= (and d!1745475 res!2347237) b!5508027))

(declare-fun m!6514008 () Bool)

(assert (=> d!1745475 m!6514008))

(declare-fun m!6514010 () Bool)

(assert (=> d!1745475 m!6514010))

(declare-fun m!6514012 () Bool)

(assert (=> b!5508027 m!6514012))

(assert (=> b!5507677 d!1745475))

(declare-fun bs!1270080 () Bool)

(declare-fun d!1745479 () Bool)

(assert (= bs!1270080 (and d!1745479 d!1745443)))

(declare-fun lambda!294997 () Int)

(assert (=> bs!1270080 (= lambda!294997 lambda!294972)))

(declare-fun bs!1270081 () Bool)

(assert (= bs!1270081 (and d!1745479 d!1745445)))

(assert (=> bs!1270081 (= lambda!294997 lambda!294975)))

(declare-fun bs!1270082 () Bool)

(assert (= bs!1270082 (and d!1745479 d!1745447)))

(assert (=> bs!1270082 (= lambda!294997 lambda!294978)))

(declare-fun bs!1270083 () Bool)

(assert (= bs!1270083 (and d!1745479 d!1745449)))

(assert (=> bs!1270083 (= lambda!294997 lambda!294981)))

(assert (=> d!1745479 (= (inv!81973 (h!69095 zl!343)) (forall!14670 (exprs!5374 (h!69095 zl!343)) lambda!294997))))

(declare-fun bs!1270084 () Bool)

(assert (= bs!1270084 d!1745479))

(declare-fun m!6514014 () Bool)

(assert (=> bs!1270084 m!6514014))

(assert (=> b!5507680 d!1745479))

(declare-fun bs!1270085 () Bool)

(declare-fun d!1745481 () Bool)

(assert (= bs!1270085 (and d!1745481 b!5507671)))

(declare-fun lambda!295000 () Int)

(assert (=> bs!1270085 (= lambda!295000 lambda!294958)))

(assert (=> d!1745481 true))

(assert (=> d!1745481 (= (derivationStepZipper!1595 z!1189 (h!69094 s!2326)) (flatMap!1103 z!1189 lambda!295000))))

(declare-fun bs!1270086 () Bool)

(assert (= bs!1270086 d!1745481))

(declare-fun m!6514016 () Bool)

(assert (=> bs!1270086 m!6514016))

(assert (=> b!5507671 d!1745481))

(declare-fun d!1745483 () Bool)

(declare-fun choose!41846 ((Set Context!9748) Int) (Set Context!9748))

(assert (=> d!1745483 (= (flatMap!1103 z!1189 lambda!294958) (choose!41846 z!1189 lambda!294958))))

(declare-fun bs!1270087 () Bool)

(assert (= bs!1270087 d!1745483))

(declare-fun m!6514018 () Bool)

(assert (=> bs!1270087 m!6514018))

(assert (=> b!5507671 d!1745483))

(declare-fun d!1745485 () Bool)

(declare-fun c!962428 () Bool)

(declare-fun e!3406555 () Bool)

(assert (=> d!1745485 (= c!962428 e!3406555)))

(declare-fun res!2347238 () Bool)

(assert (=> d!1745485 (=> (not res!2347238) (not e!3406555))))

(assert (=> d!1745485 (= res!2347238 (is-Cons!62645 (exprs!5374 (h!69095 zl!343))))))

(declare-fun e!3406556 () (Set Context!9748))

(assert (=> d!1745485 (= (derivationStepZipperUp!758 (h!69095 zl!343) (h!69094 s!2326)) e!3406556)))

(declare-fun b!5508032 () Bool)

(assert (=> b!5508032 (= e!3406555 (nullable!5524 (h!69093 (exprs!5374 (h!69095 zl!343)))))))

(declare-fun call!407073 () (Set Context!9748))

(declare-fun b!5508033 () Bool)

(assert (=> b!5508033 (= e!3406556 (set.union call!407073 (derivationStepZipperUp!758 (Context!9749 (t!376012 (exprs!5374 (h!69095 zl!343)))) (h!69094 s!2326))))))

(declare-fun bm!407068 () Bool)

(assert (=> bm!407068 (= call!407073 (derivationStepZipperDown!832 (h!69093 (exprs!5374 (h!69095 zl!343))) (Context!9749 (t!376012 (exprs!5374 (h!69095 zl!343)))) (h!69094 s!2326)))))

(declare-fun b!5508034 () Bool)

(declare-fun e!3406557 () (Set Context!9748))

(assert (=> b!5508034 (= e!3406557 (as set.empty (Set Context!9748)))))

(declare-fun b!5508035 () Bool)

(assert (=> b!5508035 (= e!3406556 e!3406557)))

(declare-fun c!962427 () Bool)

(assert (=> b!5508035 (= c!962427 (is-Cons!62645 (exprs!5374 (h!69095 zl!343))))))

(declare-fun b!5508036 () Bool)

(assert (=> b!5508036 (= e!3406557 call!407073)))

(assert (= (and d!1745485 res!2347238) b!5508032))

(assert (= (and d!1745485 c!962428) b!5508033))

(assert (= (and d!1745485 (not c!962428)) b!5508035))

(assert (= (and b!5508035 c!962427) b!5508036))

(assert (= (and b!5508035 (not c!962427)) b!5508034))

(assert (= (or b!5508033 b!5508036) bm!407068))

(declare-fun m!6514020 () Bool)

(assert (=> b!5508032 m!6514020))

(declare-fun m!6514022 () Bool)

(assert (=> b!5508033 m!6514022))

(declare-fun m!6514024 () Bool)

(assert (=> bm!407068 m!6514024))

(assert (=> b!5507671 d!1745485))

(declare-fun d!1745487 () Bool)

(declare-fun dynLambda!24477 (Int Context!9748) (Set Context!9748))

(assert (=> d!1745487 (= (flatMap!1103 z!1189 lambda!294958) (dynLambda!24477 lambda!294958 (h!69095 zl!343)))))

(declare-fun lt!2244562 () Unit!155440)

(declare-fun choose!41847 ((Set Context!9748) Context!9748 Int) Unit!155440)

(assert (=> d!1745487 (= lt!2244562 (choose!41847 z!1189 (h!69095 zl!343) lambda!294958))))

(assert (=> d!1745487 (= z!1189 (set.insert (h!69095 zl!343) (as set.empty (Set Context!9748))))))

(assert (=> d!1745487 (= (lemmaFlatMapOnSingletonSet!635 z!1189 (h!69095 zl!343) lambda!294958) lt!2244562)))

(declare-fun b_lambda!208843 () Bool)

(assert (=> (not b_lambda!208843) (not d!1745487)))

(declare-fun bs!1270088 () Bool)

(assert (= bs!1270088 d!1745487))

(assert (=> bs!1270088 m!6513784))

(declare-fun m!6514026 () Bool)

(assert (=> bs!1270088 m!6514026))

(declare-fun m!6514028 () Bool)

(assert (=> bs!1270088 m!6514028))

(declare-fun m!6514030 () Bool)

(assert (=> bs!1270088 m!6514030))

(assert (=> b!5507671 d!1745487))

(declare-fun d!1745489 () Bool)

(declare-fun lt!2244566 () Regex!15490)

(assert (=> d!1745489 (validRegex!7226 lt!2244566)))

(assert (=> d!1745489 (= lt!2244566 (generalisedUnion!1353 (unfocusZipperList!918 zl!343)))))

(assert (=> d!1745489 (= (unfocusZipper!1232 zl!343) lt!2244566)))

(declare-fun bs!1270091 () Bool)

(assert (= bs!1270091 d!1745489))

(declare-fun m!6514032 () Bool)

(assert (=> bs!1270091 m!6514032))

(assert (=> bs!1270091 m!6513800))

(assert (=> bs!1270091 m!6513800))

(assert (=> bs!1270091 m!6513802))

(assert (=> b!5507681 d!1745489))

(declare-fun bs!1270092 () Bool)

(declare-fun b!5508098 () Bool)

(assert (= bs!1270092 (and b!5508098 b!5507678)))

(declare-fun lambda!295008 () Int)

(assert (=> bs!1270092 (not (= lambda!295008 lambda!294957))))

(assert (=> bs!1270092 (not (= lambda!295008 lambda!294956))))

(declare-fun bs!1270093 () Bool)

(assert (= bs!1270093 (and b!5508098 d!1745469)))

(assert (=> bs!1270093 (not (= lambda!295008 lambda!294995))))

(assert (=> bs!1270093 (not (= lambda!295008 lambda!294994))))

(declare-fun bs!1270094 () Bool)

(assert (= bs!1270094 (and b!5508098 d!1745465)))

(assert (=> bs!1270094 (not (= lambda!295008 lambda!294987))))

(assert (=> b!5508098 true))

(assert (=> b!5508098 true))

(declare-fun bs!1270095 () Bool)

(declare-fun b!5508101 () Bool)

(assert (= bs!1270095 (and b!5508101 b!5507678)))

(declare-fun lambda!295009 () Int)

(assert (=> bs!1270095 (not (= lambda!295009 lambda!294956))))

(declare-fun bs!1270096 () Bool)

(assert (= bs!1270096 (and b!5508101 d!1745469)))

(assert (=> bs!1270096 (= lambda!295009 lambda!294995)))

(assert (=> bs!1270096 (not (= lambda!295009 lambda!294994))))

(declare-fun bs!1270097 () Bool)

(assert (= bs!1270097 (and b!5508101 d!1745465)))

(assert (=> bs!1270097 (not (= lambda!295009 lambda!294987))))

(declare-fun bs!1270098 () Bool)

(assert (= bs!1270098 (and b!5508101 b!5508098)))

(assert (=> bs!1270098 (not (= lambda!295009 lambda!295008))))

(assert (=> bs!1270095 (= lambda!295009 lambda!294957)))

(assert (=> b!5508101 true))

(assert (=> b!5508101 true))

(declare-fun call!407084 () Bool)

(declare-fun bm!407079 () Bool)

(declare-fun c!962447 () Bool)

(assert (=> bm!407079 (= call!407084 (Exists!2590 (ite c!962447 lambda!295008 lambda!295009)))))

(declare-fun d!1745491 () Bool)

(declare-fun c!962446 () Bool)

(assert (=> d!1745491 (= c!962446 (is-EmptyExpr!15490 r!7292))))

(declare-fun e!3406594 () Bool)

(assert (=> d!1745491 (= (matchRSpec!2593 r!7292 s!2326) e!3406594)))

(declare-fun b!5508091 () Bool)

(declare-fun e!3406597 () Bool)

(assert (=> b!5508091 (= e!3406594 e!3406597)))

(declare-fun res!2347267 () Bool)

(assert (=> b!5508091 (= res!2347267 (not (is-EmptyLang!15490 r!7292)))))

(assert (=> b!5508091 (=> (not res!2347267) (not e!3406597))))

(declare-fun b!5508092 () Bool)

(declare-fun c!962445 () Bool)

(assert (=> b!5508092 (= c!962445 (is-ElementMatch!15490 r!7292))))

(declare-fun e!3406598 () Bool)

(assert (=> b!5508092 (= e!3406597 e!3406598)))

(declare-fun b!5508093 () Bool)

(declare-fun call!407085 () Bool)

(assert (=> b!5508093 (= e!3406594 call!407085)))

(declare-fun b!5508094 () Bool)

(declare-fun e!3406595 () Bool)

(declare-fun e!3406599 () Bool)

(assert (=> b!5508094 (= e!3406595 e!3406599)))

(assert (=> b!5508094 (= c!962447 (is-Star!15490 r!7292))))

(declare-fun b!5508095 () Bool)

(declare-fun e!3406596 () Bool)

(assert (=> b!5508095 (= e!3406595 e!3406596)))

(declare-fun res!2347266 () Bool)

(assert (=> b!5508095 (= res!2347266 (matchRSpec!2593 (regOne!31493 r!7292) s!2326))))

(assert (=> b!5508095 (=> res!2347266 e!3406596)))

(declare-fun b!5508096 () Bool)

(assert (=> b!5508096 (= e!3406596 (matchRSpec!2593 (regTwo!31493 r!7292) s!2326))))

(declare-fun b!5508097 () Bool)

(declare-fun res!2347265 () Bool)

(declare-fun e!3406593 () Bool)

(assert (=> b!5508097 (=> res!2347265 e!3406593)))

(assert (=> b!5508097 (= res!2347265 call!407085)))

(assert (=> b!5508097 (= e!3406599 e!3406593)))

(assert (=> b!5508098 (= e!3406593 call!407084)))

(declare-fun bm!407080 () Bool)

(declare-fun isEmpty!34428 (List!62770) Bool)

(assert (=> bm!407080 (= call!407085 (isEmpty!34428 s!2326))))

(declare-fun b!5508099 () Bool)

(declare-fun c!962444 () Bool)

(assert (=> b!5508099 (= c!962444 (is-Union!15490 r!7292))))

(assert (=> b!5508099 (= e!3406598 e!3406595)))

(declare-fun b!5508100 () Bool)

(assert (=> b!5508100 (= e!3406598 (= s!2326 (Cons!62646 (c!962327 r!7292) Nil!62646)))))

(assert (=> b!5508101 (= e!3406599 call!407084)))

(assert (= (and d!1745491 c!962446) b!5508093))

(assert (= (and d!1745491 (not c!962446)) b!5508091))

(assert (= (and b!5508091 res!2347267) b!5508092))

(assert (= (and b!5508092 c!962445) b!5508100))

(assert (= (and b!5508092 (not c!962445)) b!5508099))

(assert (= (and b!5508099 c!962444) b!5508095))

(assert (= (and b!5508099 (not c!962444)) b!5508094))

(assert (= (and b!5508095 (not res!2347266)) b!5508096))

(assert (= (and b!5508094 c!962447) b!5508097))

(assert (= (and b!5508094 (not c!962447)) b!5508101))

(assert (= (and b!5508097 (not res!2347265)) b!5508098))

(assert (= (or b!5508098 b!5508101) bm!407079))

(assert (= (or b!5508093 b!5508097) bm!407080))

(declare-fun m!6514044 () Bool)

(assert (=> bm!407079 m!6514044))

(declare-fun m!6514046 () Bool)

(assert (=> b!5508095 m!6514046))

(declare-fun m!6514048 () Bool)

(assert (=> b!5508096 m!6514048))

(declare-fun m!6514050 () Bool)

(assert (=> bm!407080 m!6514050))

(assert (=> b!5507679 d!1745491))

(declare-fun b!5508139 () Bool)

(declare-fun e!3406621 () Bool)

(declare-fun e!3406627 () Bool)

(assert (=> b!5508139 (= e!3406621 e!3406627)))

(declare-fun res!2347293 () Bool)

(assert (=> b!5508139 (=> res!2347293 e!3406627)))

(declare-fun call!407091 () Bool)

(assert (=> b!5508139 (= res!2347293 call!407091)))

(declare-fun b!5508140 () Bool)

(declare-fun head!11796 (List!62770) C!31250)

(assert (=> b!5508140 (= e!3406627 (not (= (head!11796 s!2326) (c!962327 r!7292))))))

(declare-fun b!5508141 () Bool)

(declare-fun e!3406624 () Bool)

(declare-fun lt!2244572 () Bool)

(assert (=> b!5508141 (= e!3406624 (= lt!2244572 call!407091))))

(declare-fun b!5508142 () Bool)

(declare-fun e!3406626 () Bool)

(assert (=> b!5508142 (= e!3406624 e!3406626)))

(declare-fun c!962457 () Bool)

(assert (=> b!5508142 (= c!962457 (is-EmptyLang!15490 r!7292))))

(declare-fun b!5508143 () Bool)

(declare-fun res!2347289 () Bool)

(declare-fun e!3406623 () Bool)

(assert (=> b!5508143 (=> (not res!2347289) (not e!3406623))))

(assert (=> b!5508143 (= res!2347289 (not call!407091))))

(declare-fun bm!407086 () Bool)

(assert (=> bm!407086 (= call!407091 (isEmpty!34428 s!2326))))

(declare-fun b!5508144 () Bool)

(declare-fun e!3406625 () Bool)

(declare-fun derivativeStep!4361 (Regex!15490 C!31250) Regex!15490)

(declare-fun tail!10891 (List!62770) List!62770)

(assert (=> b!5508144 (= e!3406625 (matchR!7675 (derivativeStep!4361 r!7292 (head!11796 s!2326)) (tail!10891 s!2326)))))

(declare-fun b!5508145 () Bool)

(declare-fun res!2347295 () Bool)

(declare-fun e!3406622 () Bool)

(assert (=> b!5508145 (=> res!2347295 e!3406622)))

(assert (=> b!5508145 (= res!2347295 e!3406623)))

(declare-fun res!2347290 () Bool)

(assert (=> b!5508145 (=> (not res!2347290) (not e!3406623))))

(assert (=> b!5508145 (= res!2347290 lt!2244572)))

(declare-fun d!1745497 () Bool)

(assert (=> d!1745497 e!3406624))

(declare-fun c!962458 () Bool)

(assert (=> d!1745497 (= c!962458 (is-EmptyExpr!15490 r!7292))))

(assert (=> d!1745497 (= lt!2244572 e!3406625)))

(declare-fun c!962456 () Bool)

(assert (=> d!1745497 (= c!962456 (isEmpty!34428 s!2326))))

(assert (=> d!1745497 (validRegex!7226 r!7292)))

(assert (=> d!1745497 (= (matchR!7675 r!7292 s!2326) lt!2244572)))

(declare-fun b!5508146 () Bool)

(assert (=> b!5508146 (= e!3406625 (nullable!5524 r!7292))))

(declare-fun b!5508147 () Bool)

(assert (=> b!5508147 (= e!3406622 e!3406621)))

(declare-fun res!2347294 () Bool)

(assert (=> b!5508147 (=> (not res!2347294) (not e!3406621))))

(assert (=> b!5508147 (= res!2347294 (not lt!2244572))))

(declare-fun b!5508148 () Bool)

(assert (=> b!5508148 (= e!3406626 (not lt!2244572))))

(declare-fun b!5508149 () Bool)

(declare-fun res!2347291 () Bool)

(assert (=> b!5508149 (=> res!2347291 e!3406627)))

(assert (=> b!5508149 (= res!2347291 (not (isEmpty!34428 (tail!10891 s!2326))))))

(declare-fun b!5508150 () Bool)

(assert (=> b!5508150 (= e!3406623 (= (head!11796 s!2326) (c!962327 r!7292)))))

(declare-fun b!5508151 () Bool)

(declare-fun res!2347296 () Bool)

(assert (=> b!5508151 (=> (not res!2347296) (not e!3406623))))

(assert (=> b!5508151 (= res!2347296 (isEmpty!34428 (tail!10891 s!2326)))))

(declare-fun b!5508152 () Bool)

(declare-fun res!2347292 () Bool)

(assert (=> b!5508152 (=> res!2347292 e!3406622)))

(assert (=> b!5508152 (= res!2347292 (not (is-ElementMatch!15490 r!7292)))))

(assert (=> b!5508152 (= e!3406626 e!3406622)))

(assert (= (and d!1745497 c!962456) b!5508146))

(assert (= (and d!1745497 (not c!962456)) b!5508144))

(assert (= (and d!1745497 c!962458) b!5508141))

(assert (= (and d!1745497 (not c!962458)) b!5508142))

(assert (= (and b!5508142 c!962457) b!5508148))

(assert (= (and b!5508142 (not c!962457)) b!5508152))

(assert (= (and b!5508152 (not res!2347292)) b!5508145))

(assert (= (and b!5508145 res!2347290) b!5508143))

(assert (= (and b!5508143 res!2347289) b!5508151))

(assert (= (and b!5508151 res!2347296) b!5508150))

(assert (= (and b!5508145 (not res!2347295)) b!5508147))

(assert (= (and b!5508147 res!2347294) b!5508139))

(assert (= (and b!5508139 (not res!2347293)) b!5508149))

(assert (= (and b!5508149 (not res!2347291)) b!5508140))

(assert (= (or b!5508141 b!5508139 b!5508143) bm!407086))

(declare-fun m!6514054 () Bool)

(assert (=> b!5508149 m!6514054))

(assert (=> b!5508149 m!6514054))

(declare-fun m!6514056 () Bool)

(assert (=> b!5508149 m!6514056))

(assert (=> d!1745497 m!6514050))

(assert (=> d!1745497 m!6513766))

(assert (=> b!5508151 m!6514054))

(assert (=> b!5508151 m!6514054))

(assert (=> b!5508151 m!6514056))

(declare-fun m!6514058 () Bool)

(assert (=> b!5508140 m!6514058))

(declare-fun m!6514060 () Bool)

(assert (=> b!5508146 m!6514060))

(assert (=> bm!407086 m!6514050))

(assert (=> b!5508144 m!6514058))

(assert (=> b!5508144 m!6514058))

(declare-fun m!6514062 () Bool)

(assert (=> b!5508144 m!6514062))

(assert (=> b!5508144 m!6514054))

(assert (=> b!5508144 m!6514062))

(assert (=> b!5508144 m!6514054))

(declare-fun m!6514064 () Bool)

(assert (=> b!5508144 m!6514064))

(assert (=> b!5508150 m!6514058))

(assert (=> b!5507679 d!1745497))

(declare-fun d!1745501 () Bool)

(assert (=> d!1745501 (= (matchR!7675 r!7292 s!2326) (matchRSpec!2593 r!7292 s!2326))))

(declare-fun lt!2244575 () Unit!155440)

(declare-fun choose!41848 (Regex!15490 List!62770) Unit!155440)

(assert (=> d!1745501 (= lt!2244575 (choose!41848 r!7292 s!2326))))

(assert (=> d!1745501 (validRegex!7226 r!7292)))

(assert (=> d!1745501 (= (mainMatchTheorem!2593 r!7292 s!2326) lt!2244575)))

(declare-fun bs!1270100 () Bool)

(assert (= bs!1270100 d!1745501))

(assert (=> bs!1270100 m!6513796))

(assert (=> bs!1270100 m!6513794))

(declare-fun m!6514066 () Bool)

(assert (=> bs!1270100 m!6514066))

(assert (=> bs!1270100 m!6513766))

(assert (=> b!5507679 d!1745501))

(declare-fun d!1745503 () Bool)

(assert (=> d!1745503 (= (isEmpty!34424 (t!376012 (exprs!5374 (h!69095 zl!343)))) (is-Nil!62645 (t!376012 (exprs!5374 (h!69095 zl!343)))))))

(assert (=> b!5507670 d!1745503))

(declare-fun b!5508157 () Bool)

(declare-fun e!3406630 () Bool)

(declare-fun tp!1515532 () Bool)

(declare-fun tp!1515533 () Bool)

(assert (=> b!5508157 (= e!3406630 (and tp!1515532 tp!1515533))))

(assert (=> b!5507672 (= tp!1515488 e!3406630)))

(assert (= (and b!5507672 (is-Cons!62645 (exprs!5374 (h!69095 zl!343)))) b!5508157))

(declare-fun b!5508170 () Bool)

(declare-fun e!3406633 () Bool)

(declare-fun tp!1515547 () Bool)

(assert (=> b!5508170 (= e!3406633 tp!1515547)))

(declare-fun b!5508168 () Bool)

(assert (=> b!5508168 (= e!3406633 tp_is_empty!40233)))

(declare-fun b!5508171 () Bool)

(declare-fun tp!1515548 () Bool)

(declare-fun tp!1515546 () Bool)

(assert (=> b!5508171 (= e!3406633 (and tp!1515548 tp!1515546))))

(declare-fun b!5508169 () Bool)

(declare-fun tp!1515544 () Bool)

(declare-fun tp!1515545 () Bool)

(assert (=> b!5508169 (= e!3406633 (and tp!1515544 tp!1515545))))

(assert (=> b!5507673 (= tp!1515491 e!3406633)))

(assert (= (and b!5507673 (is-ElementMatch!15490 (regOne!31493 r!7292))) b!5508168))

(assert (= (and b!5507673 (is-Concat!24335 (regOne!31493 r!7292))) b!5508169))

(assert (= (and b!5507673 (is-Star!15490 (regOne!31493 r!7292))) b!5508170))

(assert (= (and b!5507673 (is-Union!15490 (regOne!31493 r!7292))) b!5508171))

(declare-fun b!5508174 () Bool)

(declare-fun e!3406634 () Bool)

(declare-fun tp!1515552 () Bool)

(assert (=> b!5508174 (= e!3406634 tp!1515552)))

(declare-fun b!5508172 () Bool)

(assert (=> b!5508172 (= e!3406634 tp_is_empty!40233)))

(declare-fun b!5508175 () Bool)

(declare-fun tp!1515553 () Bool)

(declare-fun tp!1515551 () Bool)

(assert (=> b!5508175 (= e!3406634 (and tp!1515553 tp!1515551))))

(declare-fun b!5508173 () Bool)

(declare-fun tp!1515549 () Bool)

(declare-fun tp!1515550 () Bool)

(assert (=> b!5508173 (= e!3406634 (and tp!1515549 tp!1515550))))

(assert (=> b!5507673 (= tp!1515494 e!3406634)))

(assert (= (and b!5507673 (is-ElementMatch!15490 (regTwo!31493 r!7292))) b!5508172))

(assert (= (and b!5507673 (is-Concat!24335 (regTwo!31493 r!7292))) b!5508173))

(assert (= (and b!5507673 (is-Star!15490 (regTwo!31493 r!7292))) b!5508174))

(assert (= (and b!5507673 (is-Union!15490 (regTwo!31493 r!7292))) b!5508175))

(declare-fun b!5508176 () Bool)

(declare-fun e!3406635 () Bool)

(declare-fun tp!1515554 () Bool)

(declare-fun tp!1515555 () Bool)

(assert (=> b!5508176 (= e!3406635 (and tp!1515554 tp!1515555))))

(assert (=> b!5507676 (= tp!1515493 e!3406635)))

(assert (= (and b!5507676 (is-Cons!62645 (exprs!5374 setElem!36552))) b!5508176))

(declare-fun b!5508179 () Bool)

(declare-fun e!3406636 () Bool)

(declare-fun tp!1515559 () Bool)

(assert (=> b!5508179 (= e!3406636 tp!1515559)))

(declare-fun b!5508177 () Bool)

(assert (=> b!5508177 (= e!3406636 tp_is_empty!40233)))

(declare-fun b!5508180 () Bool)

(declare-fun tp!1515560 () Bool)

(declare-fun tp!1515558 () Bool)

(assert (=> b!5508180 (= e!3406636 (and tp!1515560 tp!1515558))))

(declare-fun b!5508178 () Bool)

(declare-fun tp!1515556 () Bool)

(declare-fun tp!1515557 () Bool)

(assert (=> b!5508178 (= e!3406636 (and tp!1515556 tp!1515557))))

(assert (=> b!5507667 (= tp!1515492 e!3406636)))

(assert (= (and b!5507667 (is-ElementMatch!15490 (regOne!31492 r!7292))) b!5508177))

(assert (= (and b!5507667 (is-Concat!24335 (regOne!31492 r!7292))) b!5508178))

(assert (= (and b!5507667 (is-Star!15490 (regOne!31492 r!7292))) b!5508179))

(assert (= (and b!5507667 (is-Union!15490 (regOne!31492 r!7292))) b!5508180))

(declare-fun b!5508183 () Bool)

(declare-fun e!3406637 () Bool)

(declare-fun tp!1515564 () Bool)

(assert (=> b!5508183 (= e!3406637 tp!1515564)))

(declare-fun b!5508181 () Bool)

(assert (=> b!5508181 (= e!3406637 tp_is_empty!40233)))

(declare-fun b!5508184 () Bool)

(declare-fun tp!1515565 () Bool)

(declare-fun tp!1515563 () Bool)

(assert (=> b!5508184 (= e!3406637 (and tp!1515565 tp!1515563))))

(declare-fun b!5508182 () Bool)

(declare-fun tp!1515561 () Bool)

(declare-fun tp!1515562 () Bool)

(assert (=> b!5508182 (= e!3406637 (and tp!1515561 tp!1515562))))

(assert (=> b!5507667 (= tp!1515497 e!3406637)))

(assert (= (and b!5507667 (is-ElementMatch!15490 (regTwo!31492 r!7292))) b!5508181))

(assert (= (and b!5507667 (is-Concat!24335 (regTwo!31492 r!7292))) b!5508182))

(assert (= (and b!5507667 (is-Star!15490 (regTwo!31492 r!7292))) b!5508183))

(assert (= (and b!5507667 (is-Union!15490 (regTwo!31492 r!7292))) b!5508184))

(declare-fun b!5508189 () Bool)

(declare-fun e!3406640 () Bool)

(declare-fun tp!1515568 () Bool)

(assert (=> b!5508189 (= e!3406640 (and tp_is_empty!40233 tp!1515568))))

(assert (=> b!5507663 (= tp!1515495 e!3406640)))

(assert (= (and b!5507663 (is-Cons!62646 (t!376013 s!2326))) b!5508189))

(declare-fun b!5508197 () Bool)

(declare-fun e!3406646 () Bool)

(declare-fun tp!1515573 () Bool)

(assert (=> b!5508197 (= e!3406646 tp!1515573)))

(declare-fun tp!1515574 () Bool)

(declare-fun b!5508196 () Bool)

(declare-fun e!3406645 () Bool)

(assert (=> b!5508196 (= e!3406645 (and (inv!81973 (h!69095 (t!376014 zl!343))) e!3406646 tp!1515574))))

(assert (=> b!5507680 (= tp!1515489 e!3406645)))

(assert (= b!5508196 b!5508197))

(assert (= (and b!5507680 (is-Cons!62647 (t!376014 zl!343))) b!5508196))

(declare-fun m!6514068 () Bool)

(assert (=> b!5508196 m!6514068))

(declare-fun condSetEmpty!36558 () Bool)

(assert (=> setNonEmpty!36552 (= condSetEmpty!36558 (= setRest!36552 (as set.empty (Set Context!9748))))))

(declare-fun setRes!36558 () Bool)

(assert (=> setNonEmpty!36552 (= tp!1515496 setRes!36558)))

(declare-fun setIsEmpty!36558 () Bool)

(assert (=> setIsEmpty!36558 setRes!36558))

(declare-fun setNonEmpty!36558 () Bool)

(declare-fun setElem!36558 () Context!9748)

(declare-fun tp!1515579 () Bool)

(declare-fun e!3406649 () Bool)

(assert (=> setNonEmpty!36558 (= setRes!36558 (and tp!1515579 (inv!81973 setElem!36558) e!3406649))))

(declare-fun setRest!36558 () (Set Context!9748))

(assert (=> setNonEmpty!36558 (= setRest!36552 (set.union (set.insert setElem!36558 (as set.empty (Set Context!9748))) setRest!36558))))

(declare-fun b!5508202 () Bool)

(declare-fun tp!1515580 () Bool)

(assert (=> b!5508202 (= e!3406649 tp!1515580)))

(assert (= (and setNonEmpty!36552 condSetEmpty!36558) setIsEmpty!36558))

(assert (= (and setNonEmpty!36552 (not condSetEmpty!36558)) setNonEmpty!36558))

(assert (= setNonEmpty!36558 b!5508202))

(declare-fun m!6514070 () Bool)

(assert (=> setNonEmpty!36558 m!6514070))

(declare-fun b!5508205 () Bool)

(declare-fun e!3406650 () Bool)

(declare-fun tp!1515584 () Bool)

(assert (=> b!5508205 (= e!3406650 tp!1515584)))

(declare-fun b!5508203 () Bool)

(assert (=> b!5508203 (= e!3406650 tp_is_empty!40233)))

(declare-fun b!5508206 () Bool)

(declare-fun tp!1515585 () Bool)

(declare-fun tp!1515583 () Bool)

(assert (=> b!5508206 (= e!3406650 (and tp!1515585 tp!1515583))))

(declare-fun b!5508204 () Bool)

(declare-fun tp!1515581 () Bool)

(declare-fun tp!1515582 () Bool)

(assert (=> b!5508204 (= e!3406650 (and tp!1515581 tp!1515582))))

(assert (=> b!5507666 (= tp!1515490 e!3406650)))

(assert (= (and b!5507666 (is-ElementMatch!15490 (reg!15819 r!7292))) b!5508203))

(assert (= (and b!5507666 (is-Concat!24335 (reg!15819 r!7292))) b!5508204))

(assert (= (and b!5507666 (is-Star!15490 (reg!15819 r!7292))) b!5508205))

(assert (= (and b!5507666 (is-Union!15490 (reg!15819 r!7292))) b!5508206))

(declare-fun b_lambda!208845 () Bool)

(assert (= b_lambda!208843 (or b!5507671 b_lambda!208845)))

(declare-fun bs!1270101 () Bool)

(declare-fun d!1745505 () Bool)

(assert (= bs!1270101 (and d!1745505 b!5507671)))

(assert (=> bs!1270101 (= (dynLambda!24477 lambda!294958 (h!69095 zl!343)) (derivationStepZipperUp!758 (h!69095 zl!343) (h!69094 s!2326)))))

(assert (=> bs!1270101 m!6513786))

(assert (=> d!1745487 d!1745505))

(push 1)

(assert (not b!5508149))

(assert (not b!5508178))

(assert (not b!5507810))

(assert (not d!1745465))

(assert (not b!5508180))

(assert (not b!5508197))

(assert (not b!5508179))

(assert (not d!1745501))

(assert (not d!1745445))

(assert (not b!5508175))

(assert (not b!5508196))

(assert (not d!1745447))

(assert (not b!5508176))

(assert (not b!5508140))

(assert (not bm!407086))

(assert (not b!5508096))

(assert (not b!5508202))

(assert (not b!5508095))

(assert (not setNonEmpty!36558))

(assert (not b!5508184))

(assert (not b!5507888))

(assert (not b!5508027))

(assert (not b!5507955))

(assert (not b!5508189))

(assert (not b!5507892))

(assert (not b!5507947))

(assert (not bm!407068))

(assert (not b!5507865))

(assert (not d!1745483))

(assert (not d!1745497))

(assert (not b!5508151))

(assert (not bs!1270101))

(assert (not d!1745453))

(assert (not b!5507912))

(assert (not b_lambda!208845))

(assert (not bm!407029))

(assert (not bm!407065))

(assert (not b!5507953))

(assert (not b!5508182))

(assert (not b!5508205))

(assert (not b!5508174))

(assert (not b!5508206))

(assert (not b!5508157))

(assert (not d!1745463))

(assert (not b!5507796))

(assert (not b!5507863))

(assert (not b!5507895))

(assert (not b!5508204))

(assert (not b!5508032))

(assert (not d!1745481))

(assert (not b!5507890))

(assert (not b!5508020))

(assert (not d!1745489))

(assert (not b!5508169))

(assert (not b!5508183))

(assert (not b!5508173))

(assert (not b!5507896))

(assert (not bm!407034))

(assert tp_is_empty!40233)

(assert (not d!1745475))

(assert (not b!5507948))

(assert (not b!5508170))

(assert (not bm!407030))

(assert (not b!5507858))

(assert (not b!5508033))

(assert (not d!1745487))

(assert (not b!5507811))

(assert (not b!5508150))

(assert (not b!5507862))

(assert (not d!1745471))

(assert (not d!1745469))

(assert (not d!1745449))

(assert (not d!1745443))

(assert (not b!5507950))

(assert (not d!1745479))

(assert (not b!5507949))

(assert (not b!5507894))

(assert (not bm!407067))

(assert (not b!5507864))

(assert (not d!1745459))

(assert (not bm!407080))

(assert (not b!5507859))

(assert (not bm!407037))

(assert (not b!5507889))

(assert (not b!5508144))

(assert (not b!5507857))

(assert (not bm!407079))

(assert (not b!5508171))

(assert (not b!5508146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

