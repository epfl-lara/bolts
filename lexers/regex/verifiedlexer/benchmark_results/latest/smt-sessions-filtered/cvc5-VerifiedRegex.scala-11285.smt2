; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!594722 () Bool)

(assert start!594722)

(declare-fun b!5803746 () Bool)

(assert (=> b!5803746 true))

(assert (=> b!5803746 true))

(declare-fun lambda!316620 () Int)

(declare-fun lambda!316619 () Int)

(assert (=> b!5803746 (not (= lambda!316620 lambda!316619))))

(assert (=> b!5803746 true))

(assert (=> b!5803746 true))

(declare-fun lambda!316621 () Int)

(assert (=> b!5803746 (not (= lambda!316621 lambda!316619))))

(assert (=> b!5803746 (not (= lambda!316621 lambda!316620))))

(assert (=> b!5803746 true))

(assert (=> b!5803746 true))

(declare-fun b!5803740 () Bool)

(assert (=> b!5803740 true))

(declare-fun res!2447434 () Bool)

(declare-fun e!3562975 () Bool)

(assert (=> start!594722 (=> (not res!2447434) (not e!3562975))))

(declare-datatypes ((C!31902 0))(
  ( (C!31903 (val!25653 Int)) )
))
(declare-datatypes ((Regex!15816 0))(
  ( (ElementMatch!15816 (c!1028045 C!31902)) (Concat!24661 (regOne!32144 Regex!15816) (regTwo!32144 Regex!15816)) (EmptyExpr!15816) (Star!15816 (reg!16145 Regex!15816)) (EmptyLang!15816) (Union!15816 (regOne!32145 Regex!15816) (regTwo!32145 Regex!15816)) )
))
(declare-fun r!7292 () Regex!15816)

(declare-fun validRegex!7552 (Regex!15816) Bool)

(assert (=> start!594722 (= res!2447434 (validRegex!7552 r!7292))))

(assert (=> start!594722 e!3562975))

(declare-fun e!3562977 () Bool)

(assert (=> start!594722 e!3562977))

(declare-fun condSetEmpty!39045 () Bool)

(declare-datatypes ((List!63747 0))(
  ( (Nil!63623) (Cons!63623 (h!70071 Regex!15816) (t!377098 List!63747)) )
))
(declare-datatypes ((Context!10400 0))(
  ( (Context!10401 (exprs!5700 List!63747)) )
))
(declare-fun z!1189 () (Set Context!10400))

(assert (=> start!594722 (= condSetEmpty!39045 (= z!1189 (as set.empty (Set Context!10400))))))

(declare-fun setRes!39045 () Bool)

(assert (=> start!594722 setRes!39045))

(declare-fun e!3562973 () Bool)

(assert (=> start!594722 e!3562973))

(declare-fun e!3562964 () Bool)

(assert (=> start!594722 e!3562964))

(declare-fun b!5803721 () Bool)

(declare-fun res!2447430 () Bool)

(declare-fun e!3562976 () Bool)

(assert (=> b!5803721 (=> res!2447430 e!3562976)))

(declare-fun lt!2298451 () Context!10400)

(declare-datatypes ((List!63748 0))(
  ( (Nil!63624) (Cons!63624 (h!70072 Context!10400) (t!377099 List!63748)) )
))
(declare-fun unfocusZipper!1558 (List!63748) Regex!15816)

(assert (=> b!5803721 (= res!2447430 (not (= (unfocusZipper!1558 (Cons!63624 lt!2298451 Nil!63624)) (reg!16145 r!7292))))))

(declare-fun b!5803722 () Bool)

(declare-fun res!2447436 () Bool)

(declare-fun e!3562970 () Bool)

(assert (=> b!5803722 (=> res!2447436 e!3562970)))

(declare-datatypes ((List!63749 0))(
  ( (Nil!63625) (Cons!63625 (h!70073 C!31902) (t!377100 List!63749)) )
))
(declare-fun s!2326 () List!63749)

(assert (=> b!5803722 (= res!2447436 (is-Nil!63625 s!2326))))

(declare-fun tp!1602255 () Bool)

(declare-fun setNonEmpty!39045 () Bool)

(declare-fun setElem!39045 () Context!10400)

(declare-fun e!3562971 () Bool)

(declare-fun inv!82788 (Context!10400) Bool)

(assert (=> setNonEmpty!39045 (= setRes!39045 (and tp!1602255 (inv!82788 setElem!39045) e!3562971))))

(declare-fun setRest!39045 () (Set Context!10400))

(assert (=> setNonEmpty!39045 (= z!1189 (set.union (set.insert setElem!39045 (as set.empty (Set Context!10400))) setRest!39045))))

(declare-fun b!5803723 () Bool)

(declare-fun e!3562972 () Bool)

(declare-fun tp!1602258 () Bool)

(assert (=> b!5803723 (= e!3562972 tp!1602258)))

(declare-fun b!5803724 () Bool)

(declare-fun e!3562974 () Bool)

(assert (=> b!5803724 (= e!3562970 e!3562974)))

(declare-fun res!2447431 () Bool)

(assert (=> b!5803724 (=> res!2447431 e!3562974)))

(declare-fun lt!2298447 () (Set Context!10400))

(declare-fun lt!2298460 () (Set Context!10400))

(assert (=> b!5803724 (= res!2447431 (not (= lt!2298447 lt!2298460)))))

(declare-fun derivationStepZipperDown!1154 (Regex!15816 Context!10400 C!31902) (Set Context!10400))

(assert (=> b!5803724 (= lt!2298460 (derivationStepZipperDown!1154 r!7292 (Context!10401 Nil!63623) (h!70073 s!2326)))))

(declare-fun derivationStepZipperUp!1080 (Context!10400 C!31902) (Set Context!10400))

(assert (=> b!5803724 (= lt!2298447 (derivationStepZipperUp!1080 (Context!10401 (Cons!63623 r!7292 Nil!63623)) (h!70073 s!2326)))))

(declare-fun lt!2298458 () (Set Context!10400))

(declare-fun derivationStepZipper!1885 ((Set Context!10400) C!31902) (Set Context!10400))

(assert (=> b!5803724 (= lt!2298458 (derivationStepZipper!1885 z!1189 (h!70073 s!2326)))))

(declare-fun b!5803725 () Bool)

(declare-fun tp!1602257 () Bool)

(declare-fun tp!1602249 () Bool)

(assert (=> b!5803725 (= e!3562977 (and tp!1602257 tp!1602249))))

(declare-fun b!5803726 () Bool)

(declare-fun e!3562969 () Bool)

(declare-fun lt!2298454 () Bool)

(assert (=> b!5803726 (= e!3562969 lt!2298454)))

(declare-fun b!5803727 () Bool)

(declare-fun tp_is_empty!40885 () Bool)

(declare-fun tp!1602254 () Bool)

(assert (=> b!5803727 (= e!3562964 (and tp_is_empty!40885 tp!1602254))))

(declare-fun b!5803728 () Bool)

(declare-fun res!2447433 () Bool)

(declare-fun e!3562965 () Bool)

(assert (=> b!5803728 (=> res!2447433 e!3562965)))

(declare-fun lt!2298453 () Regex!15816)

(assert (=> b!5803728 (= res!2447433 (or (not (= lt!2298453 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5803729 () Bool)

(declare-fun res!2447425 () Bool)

(assert (=> b!5803729 (=> res!2447425 e!3562965)))

(declare-fun lt!2298446 () (Set Context!10400))

(declare-fun matchZipper!1944 ((Set Context!10400) List!63749) Bool)

(assert (=> b!5803729 (= res!2447425 (not (= (matchZipper!1944 lt!2298446 s!2326) (matchZipper!1944 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (t!377100 s!2326)))))))

(declare-fun b!5803730 () Bool)

(declare-fun e!3562967 () Bool)

(declare-fun e!3562966 () Bool)

(assert (=> b!5803730 (= e!3562967 (not e!3562966))))

(declare-fun res!2447419 () Bool)

(assert (=> b!5803730 (=> res!2447419 e!3562966)))

(declare-fun zl!343 () List!63748)

(assert (=> b!5803730 (= res!2447419 (not (is-Cons!63624 zl!343)))))

(declare-fun lt!2298450 () Bool)

(declare-fun matchRSpec!2919 (Regex!15816 List!63749) Bool)

(assert (=> b!5803730 (= lt!2298450 (matchRSpec!2919 r!7292 s!2326))))

(declare-fun matchR!8001 (Regex!15816 List!63749) Bool)

(assert (=> b!5803730 (= lt!2298450 (matchR!8001 r!7292 s!2326))))

(declare-datatypes ((Unit!156892 0))(
  ( (Unit!156893) )
))
(declare-fun lt!2298448 () Unit!156892)

(declare-fun mainMatchTheorem!2919 (Regex!15816 List!63749) Unit!156892)

(assert (=> b!5803730 (= lt!2298448 (mainMatchTheorem!2919 r!7292 s!2326))))

(declare-fun b!5803731 () Bool)

(declare-fun res!2447424 () Bool)

(assert (=> b!5803731 (=> res!2447424 e!3562966)))

(declare-fun generalisedConcat!1431 (List!63747) Regex!15816)

(assert (=> b!5803731 (= res!2447424 (not (= r!7292 (generalisedConcat!1431 (exprs!5700 (h!70072 zl!343))))))))

(declare-fun b!5803732 () Bool)

(assert (=> b!5803732 (= e!3562975 e!3562967)))

(declare-fun res!2447428 () Bool)

(assert (=> b!5803732 (=> (not res!2447428) (not e!3562967))))

(assert (=> b!5803732 (= res!2447428 (= r!7292 lt!2298453))))

(assert (=> b!5803732 (= lt!2298453 (unfocusZipper!1558 zl!343))))

(declare-fun b!5803733 () Bool)

(declare-fun res!2447420 () Bool)

(assert (=> b!5803733 (=> res!2447420 e!3562965)))

(declare-fun lt!2298442 () Context!10400)

(assert (=> b!5803733 (= res!2447420 (not (= (unfocusZipper!1558 (Cons!63624 lt!2298442 Nil!63624)) (Concat!24661 (reg!16145 r!7292) r!7292))))))

(declare-fun b!5803734 () Bool)

(declare-fun res!2447422 () Bool)

(assert (=> b!5803734 (=> (not res!2447422) (not e!3562975))))

(declare-fun toList!9600 ((Set Context!10400)) List!63748)

(assert (=> b!5803734 (= res!2447422 (= (toList!9600 z!1189) zl!343))))

(declare-fun setIsEmpty!39045 () Bool)

(assert (=> setIsEmpty!39045 setRes!39045))

(declare-fun b!5803735 () Bool)

(declare-fun res!2447426 () Bool)

(assert (=> b!5803735 (=> res!2447426 e!3562966)))

(assert (=> b!5803735 (= res!2447426 (not (is-Cons!63623 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun tp!1602250 () Bool)

(declare-fun b!5803736 () Bool)

(assert (=> b!5803736 (= e!3562973 (and (inv!82788 (h!70072 zl!343)) e!3562972 tp!1602250))))

(declare-fun b!5803737 () Bool)

(declare-fun tp!1602253 () Bool)

(assert (=> b!5803737 (= e!3562977 tp!1602253)))

(declare-fun b!5803738 () Bool)

(declare-fun tp!1602252 () Bool)

(assert (=> b!5803738 (= e!3562971 tp!1602252)))

(declare-fun b!5803739 () Bool)

(declare-fun tp!1602251 () Bool)

(declare-fun tp!1602256 () Bool)

(assert (=> b!5803739 (= e!3562977 (and tp!1602251 tp!1602256))))

(declare-fun e!3562968 () Bool)

(assert (=> b!5803740 (= e!3562974 e!3562968)))

(declare-fun res!2447423 () Bool)

(assert (=> b!5803740 (=> res!2447423 e!3562968)))

(assert (=> b!5803740 (= res!2447423 (not (= lt!2298458 lt!2298460)))))

(declare-fun lambda!316622 () Int)

(declare-fun flatMap!1423 ((Set Context!10400) Int) (Set Context!10400))

(assert (=> b!5803740 (= (flatMap!1423 z!1189 lambda!316622) (derivationStepZipperUp!1080 (h!70072 zl!343) (h!70073 s!2326)))))

(declare-fun lt!2298441 () Unit!156892)

(declare-fun lemmaFlatMapOnSingletonSet!955 ((Set Context!10400) Context!10400 Int) Unit!156892)

(assert (=> b!5803740 (= lt!2298441 (lemmaFlatMapOnSingletonSet!955 z!1189 (h!70072 zl!343) lambda!316622))))

(declare-fun b!5803741 () Bool)

(assert (=> b!5803741 (= e!3562977 tp_is_empty!40885)))

(declare-fun b!5803742 () Bool)

(assert (=> b!5803742 (= e!3562965 e!3562976)))

(declare-fun res!2447429 () Bool)

(assert (=> b!5803742 (=> res!2447429 e!3562976)))

(declare-fun lt!2298444 () (Set Context!10400))

(assert (=> b!5803742 (= res!2447429 (not (= lt!2298458 (derivationStepZipper!1885 lt!2298444 (h!70073 s!2326)))))))

(declare-fun lt!2298456 () Context!10400)

(assert (=> b!5803742 (= (flatMap!1423 lt!2298444 lambda!316622) (derivationStepZipperUp!1080 lt!2298456 (h!70073 s!2326)))))

(declare-fun lt!2298443 () Unit!156892)

(assert (=> b!5803742 (= lt!2298443 (lemmaFlatMapOnSingletonSet!955 lt!2298444 lt!2298456 lambda!316622))))

(declare-fun lt!2298457 () (Set Context!10400))

(assert (=> b!5803742 (= (flatMap!1423 lt!2298457 lambda!316622) (derivationStepZipperUp!1080 lt!2298451 (h!70073 s!2326)))))

(declare-fun lt!2298437 () Unit!156892)

(assert (=> b!5803742 (= lt!2298437 (lemmaFlatMapOnSingletonSet!955 lt!2298457 lt!2298451 lambda!316622))))

(declare-fun lt!2298449 () (Set Context!10400))

(assert (=> b!5803742 (= lt!2298449 (derivationStepZipperUp!1080 lt!2298456 (h!70073 s!2326)))))

(declare-fun lt!2298459 () (Set Context!10400))

(assert (=> b!5803742 (= lt!2298459 (derivationStepZipperUp!1080 lt!2298451 (h!70073 s!2326)))))

(assert (=> b!5803742 (= lt!2298444 (set.insert lt!2298456 (as set.empty (Set Context!10400))))))

(assert (=> b!5803742 (= lt!2298457 (set.insert lt!2298451 (as set.empty (Set Context!10400))))))

(assert (=> b!5803742 (= lt!2298451 (Context!10401 (Cons!63623 (reg!16145 r!7292) Nil!63623)))))

(declare-fun b!5803743 () Bool)

(assert (=> b!5803743 (= e!3562976 (= (unfocusZipper!1558 (Cons!63624 lt!2298456 Nil!63624)) r!7292))))

(declare-fun b!5803744 () Bool)

(declare-fun res!2447432 () Bool)

(assert (=> b!5803744 (=> res!2447432 e!3562966)))

(assert (=> b!5803744 (= res!2447432 (or (is-EmptyExpr!15816 r!7292) (is-EmptyLang!15816 r!7292) (is-ElementMatch!15816 r!7292) (is-Union!15816 r!7292) (is-Concat!24661 r!7292)))))

(declare-fun b!5803745 () Bool)

(declare-fun res!2447427 () Bool)

(assert (=> b!5803745 (=> res!2447427 e!3562966)))

(declare-fun isEmpty!35533 (List!63748) Bool)

(assert (=> b!5803745 (= res!2447427 (not (isEmpty!35533 (t!377099 zl!343))))))

(assert (=> b!5803746 (= e!3562966 e!3562970)))

(declare-fun res!2447417 () Bool)

(assert (=> b!5803746 (=> res!2447417 e!3562970)))

(assert (=> b!5803746 (= res!2447417 (not (= lt!2298450 e!3562969)))))

(declare-fun res!2447418 () Bool)

(assert (=> b!5803746 (=> res!2447418 e!3562969)))

(declare-fun isEmpty!35534 (List!63749) Bool)

(assert (=> b!5803746 (= res!2447418 (isEmpty!35534 s!2326))))

(declare-fun Exists!2916 (Int) Bool)

(assert (=> b!5803746 (= (Exists!2916 lambda!316619) (Exists!2916 lambda!316621))))

(declare-fun lt!2298455 () Unit!156892)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1545 (Regex!15816 Regex!15816 List!63749) Unit!156892)

(assert (=> b!5803746 (= lt!2298455 (lemmaExistCutMatchRandMatchRSpecEquivalent!1545 (reg!16145 r!7292) r!7292 s!2326))))

(assert (=> b!5803746 (= (Exists!2916 lambda!316619) (Exists!2916 lambda!316620))))

(declare-fun lt!2298445 () Unit!156892)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!597 (Regex!15816 List!63749) Unit!156892)

(assert (=> b!5803746 (= lt!2298445 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!597 (reg!16145 r!7292) s!2326))))

(assert (=> b!5803746 (= lt!2298454 (Exists!2916 lambda!316619))))

(declare-datatypes ((tuple2!65826 0))(
  ( (tuple2!65827 (_1!36216 List!63749) (_2!36216 List!63749)) )
))
(declare-datatypes ((Option!15825 0))(
  ( (None!15824) (Some!15824 (v!51888 tuple2!65826)) )
))
(declare-fun isDefined!12528 (Option!15825) Bool)

(declare-fun findConcatSeparation!2239 (Regex!15816 Regex!15816 List!63749 List!63749 List!63749) Option!15825)

(assert (=> b!5803746 (= lt!2298454 (isDefined!12528 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326)))))

(declare-fun lt!2298439 () Unit!156892)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2003 (Regex!15816 Regex!15816 List!63749) Unit!156892)

(assert (=> b!5803746 (= lt!2298439 (lemmaFindConcatSeparationEquivalentToExists!2003 (reg!16145 r!7292) r!7292 s!2326))))

(declare-fun b!5803747 () Bool)

(declare-fun res!2447435 () Bool)

(assert (=> b!5803747 (=> res!2447435 e!3562966)))

(declare-fun generalisedUnion!1679 (List!63747) Regex!15816)

(declare-fun unfocusZipperList!1244 (List!63748) List!63747)

(assert (=> b!5803747 (= res!2447435 (not (= r!7292 (generalisedUnion!1679 (unfocusZipperList!1244 zl!343)))))))

(declare-fun b!5803748 () Bool)

(assert (=> b!5803748 (= e!3562968 e!3562965)))

(declare-fun res!2447421 () Bool)

(assert (=> b!5803748 (=> res!2447421 e!3562965)))

(assert (=> b!5803748 (= res!2447421 (not (= lt!2298458 (derivationStepZipperDown!1154 (reg!16145 r!7292) lt!2298456 (h!70073 s!2326)))))))

(declare-fun lt!2298452 () List!63747)

(assert (=> b!5803748 (= lt!2298456 (Context!10401 lt!2298452))))

(assert (=> b!5803748 (= (flatMap!1423 lt!2298446 lambda!316622) (derivationStepZipperUp!1080 lt!2298442 (h!70073 s!2326)))))

(declare-fun lt!2298438 () Unit!156892)

(assert (=> b!5803748 (= lt!2298438 (lemmaFlatMapOnSingletonSet!955 lt!2298446 lt!2298442 lambda!316622))))

(declare-fun lt!2298440 () (Set Context!10400))

(assert (=> b!5803748 (= lt!2298440 (derivationStepZipperUp!1080 lt!2298442 (h!70073 s!2326)))))

(assert (=> b!5803748 (= lt!2298446 (set.insert lt!2298442 (as set.empty (Set Context!10400))))))

(assert (=> b!5803748 (= lt!2298442 (Context!10401 (Cons!63623 (reg!16145 r!7292) lt!2298452)))))

(assert (=> b!5803748 (= lt!2298452 (Cons!63623 r!7292 Nil!63623))))

(assert (= (and start!594722 res!2447434) b!5803734))

(assert (= (and b!5803734 res!2447422) b!5803732))

(assert (= (and b!5803732 res!2447428) b!5803730))

(assert (= (and b!5803730 (not res!2447419)) b!5803745))

(assert (= (and b!5803745 (not res!2447427)) b!5803731))

(assert (= (and b!5803731 (not res!2447424)) b!5803735))

(assert (= (and b!5803735 (not res!2447426)) b!5803747))

(assert (= (and b!5803747 (not res!2447435)) b!5803744))

(assert (= (and b!5803744 (not res!2447432)) b!5803746))

(assert (= (and b!5803746 (not res!2447418)) b!5803726))

(assert (= (and b!5803746 (not res!2447417)) b!5803722))

(assert (= (and b!5803722 (not res!2447436)) b!5803724))

(assert (= (and b!5803724 (not res!2447431)) b!5803740))

(assert (= (and b!5803740 (not res!2447423)) b!5803748))

(assert (= (and b!5803748 (not res!2447421)) b!5803729))

(assert (= (and b!5803729 (not res!2447425)) b!5803728))

(assert (= (and b!5803728 (not res!2447433)) b!5803733))

(assert (= (and b!5803733 (not res!2447420)) b!5803742))

(assert (= (and b!5803742 (not res!2447429)) b!5803721))

(assert (= (and b!5803721 (not res!2447430)) b!5803743))

(assert (= (and start!594722 (is-ElementMatch!15816 r!7292)) b!5803741))

(assert (= (and start!594722 (is-Concat!24661 r!7292)) b!5803739))

(assert (= (and start!594722 (is-Star!15816 r!7292)) b!5803737))

(assert (= (and start!594722 (is-Union!15816 r!7292)) b!5803725))

(assert (= (and start!594722 condSetEmpty!39045) setIsEmpty!39045))

(assert (= (and start!594722 (not condSetEmpty!39045)) setNonEmpty!39045))

(assert (= setNonEmpty!39045 b!5803738))

(assert (= b!5803736 b!5803723))

(assert (= (and start!594722 (is-Cons!63624 zl!343)) b!5803736))

(assert (= (and start!594722 (is-Cons!63625 s!2326)) b!5803727))

(declare-fun m!6743596 () Bool)

(assert (=> b!5803736 m!6743596))

(declare-fun m!6743598 () Bool)

(assert (=> b!5803730 m!6743598))

(declare-fun m!6743600 () Bool)

(assert (=> b!5803730 m!6743600))

(declare-fun m!6743602 () Bool)

(assert (=> b!5803730 m!6743602))

(declare-fun m!6743604 () Bool)

(assert (=> b!5803733 m!6743604))

(declare-fun m!6743606 () Bool)

(assert (=> b!5803740 m!6743606))

(declare-fun m!6743608 () Bool)

(assert (=> b!5803740 m!6743608))

(declare-fun m!6743610 () Bool)

(assert (=> b!5803740 m!6743610))

(declare-fun m!6743612 () Bool)

(assert (=> b!5803729 m!6743612))

(declare-fun m!6743614 () Bool)

(assert (=> b!5803729 m!6743614))

(assert (=> b!5803729 m!6743614))

(declare-fun m!6743616 () Bool)

(assert (=> b!5803729 m!6743616))

(declare-fun m!6743618 () Bool)

(assert (=> b!5803734 m!6743618))

(declare-fun m!6743620 () Bool)

(assert (=> b!5803731 m!6743620))

(declare-fun m!6743622 () Bool)

(assert (=> b!5803721 m!6743622))

(declare-fun m!6743624 () Bool)

(assert (=> b!5803748 m!6743624))

(declare-fun m!6743626 () Bool)

(assert (=> b!5803748 m!6743626))

(declare-fun m!6743628 () Bool)

(assert (=> b!5803748 m!6743628))

(declare-fun m!6743630 () Bool)

(assert (=> b!5803748 m!6743630))

(declare-fun m!6743632 () Bool)

(assert (=> b!5803748 m!6743632))

(declare-fun m!6743634 () Bool)

(assert (=> b!5803747 m!6743634))

(assert (=> b!5803747 m!6743634))

(declare-fun m!6743636 () Bool)

(assert (=> b!5803747 m!6743636))

(declare-fun m!6743638 () Bool)

(assert (=> b!5803746 m!6743638))

(declare-fun m!6743640 () Bool)

(assert (=> b!5803746 m!6743640))

(declare-fun m!6743642 () Bool)

(assert (=> b!5803746 m!6743642))

(assert (=> b!5803746 m!6743642))

(declare-fun m!6743644 () Bool)

(assert (=> b!5803746 m!6743644))

(declare-fun m!6743646 () Bool)

(assert (=> b!5803746 m!6743646))

(declare-fun m!6743648 () Bool)

(assert (=> b!5803746 m!6743648))

(assert (=> b!5803746 m!6743638))

(declare-fun m!6743650 () Bool)

(assert (=> b!5803746 m!6743650))

(declare-fun m!6743652 () Bool)

(assert (=> b!5803746 m!6743652))

(assert (=> b!5803746 m!6743638))

(declare-fun m!6743654 () Bool)

(assert (=> b!5803746 m!6743654))

(declare-fun m!6743656 () Bool)

(assert (=> start!594722 m!6743656))

(declare-fun m!6743658 () Bool)

(assert (=> b!5803742 m!6743658))

(declare-fun m!6743660 () Bool)

(assert (=> b!5803742 m!6743660))

(declare-fun m!6743662 () Bool)

(assert (=> b!5803742 m!6743662))

(declare-fun m!6743664 () Bool)

(assert (=> b!5803742 m!6743664))

(declare-fun m!6743666 () Bool)

(assert (=> b!5803742 m!6743666))

(declare-fun m!6743668 () Bool)

(assert (=> b!5803742 m!6743668))

(declare-fun m!6743670 () Bool)

(assert (=> b!5803742 m!6743670))

(declare-fun m!6743672 () Bool)

(assert (=> b!5803742 m!6743672))

(declare-fun m!6743674 () Bool)

(assert (=> b!5803742 m!6743674))

(declare-fun m!6743676 () Bool)

(assert (=> setNonEmpty!39045 m!6743676))

(declare-fun m!6743678 () Bool)

(assert (=> b!5803724 m!6743678))

(declare-fun m!6743680 () Bool)

(assert (=> b!5803724 m!6743680))

(declare-fun m!6743682 () Bool)

(assert (=> b!5803724 m!6743682))

(declare-fun m!6743684 () Bool)

(assert (=> b!5803743 m!6743684))

(declare-fun m!6743686 () Bool)

(assert (=> b!5803732 m!6743686))

(declare-fun m!6743688 () Bool)

(assert (=> b!5803745 m!6743688))

(push 1)

(assert (not b!5803743))

(assert (not start!594722))

(assert (not b!5803738))

(assert (not b!5803725))

(assert tp_is_empty!40885)

(assert (not b!5803731))

(assert (not b!5803729))

(assert (not b!5803740))

(assert (not b!5803746))

(assert (not b!5803747))

(assert (not b!5803721))

(assert (not b!5803727))

(assert (not b!5803723))

(assert (not b!5803733))

(assert (not b!5803742))

(assert (not b!5803724))

(assert (not b!5803737))

(assert (not b!5803739))

(assert (not b!5803748))

(assert (not setNonEmpty!39045))

(assert (not b!5803734))

(assert (not b!5803745))

(assert (not b!5803736))

(assert (not b!5803730))

(assert (not b!5803732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5803887 () Bool)

(declare-fun e!3563042 () Regex!15816)

(assert (=> b!5803887 (= e!3563042 EmptyExpr!15816)))

(declare-fun b!5803888 () Bool)

(declare-fun e!3563044 () Bool)

(declare-fun lt!2298535 () Regex!15816)

(declare-fun head!12244 (List!63747) Regex!15816)

(assert (=> b!5803888 (= e!3563044 (= lt!2298535 (head!12244 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5803889 () Bool)

(declare-fun e!3563045 () Bool)

(assert (=> b!5803889 (= e!3563045 e!3563044)))

(declare-fun c!1028065 () Bool)

(declare-fun isEmpty!35537 (List!63747) Bool)

(declare-fun tail!11339 (List!63747) List!63747)

(assert (=> b!5803889 (= c!1028065 (isEmpty!35537 (tail!11339 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5803890 () Bool)

(declare-fun isEmptyExpr!1290 (Regex!15816) Bool)

(assert (=> b!5803890 (= e!3563045 (isEmptyExpr!1290 lt!2298535))))

(declare-fun b!5803891 () Bool)

(declare-fun e!3563046 () Bool)

(assert (=> b!5803891 (= e!3563046 e!3563045)))

(declare-fun c!1028067 () Bool)

(assert (=> b!5803891 (= c!1028067 (isEmpty!35537 (exprs!5700 (h!70072 zl!343))))))

(declare-fun b!5803892 () Bool)

(declare-fun e!3563043 () Regex!15816)

(assert (=> b!5803892 (= e!3563043 e!3563042)))

(declare-fun c!1028066 () Bool)

(assert (=> b!5803892 (= c!1028066 (is-Cons!63623 (exprs!5700 (h!70072 zl!343))))))

(declare-fun b!5803893 () Bool)

(declare-fun isConcat!813 (Regex!15816) Bool)

(assert (=> b!5803893 (= e!3563044 (isConcat!813 lt!2298535))))

(declare-fun b!5803894 () Bool)

(declare-fun e!3563047 () Bool)

(assert (=> b!5803894 (= e!3563047 (isEmpty!35537 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun d!1828112 () Bool)

(assert (=> d!1828112 e!3563046))

(declare-fun res!2447523 () Bool)

(assert (=> d!1828112 (=> (not res!2447523) (not e!3563046))))

(assert (=> d!1828112 (= res!2447523 (validRegex!7552 lt!2298535))))

(assert (=> d!1828112 (= lt!2298535 e!3563043)))

(declare-fun c!1028064 () Bool)

(assert (=> d!1828112 (= c!1028064 e!3563047)))

(declare-fun res!2447524 () Bool)

(assert (=> d!1828112 (=> (not res!2447524) (not e!3563047))))

(assert (=> d!1828112 (= res!2447524 (is-Cons!63623 (exprs!5700 (h!70072 zl!343))))))

(declare-fun lambda!316647 () Int)

(declare-fun forall!14924 (List!63747 Int) Bool)

(assert (=> d!1828112 (forall!14924 (exprs!5700 (h!70072 zl!343)) lambda!316647)))

(assert (=> d!1828112 (= (generalisedConcat!1431 (exprs!5700 (h!70072 zl!343))) lt!2298535)))

(declare-fun b!5803895 () Bool)

(assert (=> b!5803895 (= e!3563043 (h!70071 (exprs!5700 (h!70072 zl!343))))))

(declare-fun b!5803896 () Bool)

(assert (=> b!5803896 (= e!3563042 (Concat!24661 (h!70071 (exprs!5700 (h!70072 zl!343))) (generalisedConcat!1431 (t!377098 (exprs!5700 (h!70072 zl!343))))))))

(assert (= (and d!1828112 res!2447524) b!5803894))

(assert (= (and d!1828112 c!1028064) b!5803895))

(assert (= (and d!1828112 (not c!1028064)) b!5803892))

(assert (= (and b!5803892 c!1028066) b!5803896))

(assert (= (and b!5803892 (not c!1028066)) b!5803887))

(assert (= (and d!1828112 res!2447523) b!5803891))

(assert (= (and b!5803891 c!1028067) b!5803890))

(assert (= (and b!5803891 (not c!1028067)) b!5803889))

(assert (= (and b!5803889 c!1028065) b!5803888))

(assert (= (and b!5803889 (not c!1028065)) b!5803893))

(declare-fun m!6743784 () Bool)

(assert (=> b!5803893 m!6743784))

(declare-fun m!6743786 () Bool)

(assert (=> b!5803896 m!6743786))

(declare-fun m!6743788 () Bool)

(assert (=> b!5803889 m!6743788))

(assert (=> b!5803889 m!6743788))

(declare-fun m!6743790 () Bool)

(assert (=> b!5803889 m!6743790))

(declare-fun m!6743792 () Bool)

(assert (=> b!5803894 m!6743792))

(declare-fun m!6743794 () Bool)

(assert (=> b!5803890 m!6743794))

(declare-fun m!6743796 () Bool)

(assert (=> d!1828112 m!6743796))

(declare-fun m!6743798 () Bool)

(assert (=> d!1828112 m!6743798))

(declare-fun m!6743800 () Bool)

(assert (=> b!5803891 m!6743800))

(declare-fun m!6743802 () Bool)

(assert (=> b!5803888 m!6743802))

(assert (=> b!5803731 d!1828112))

(declare-fun d!1828114 () Bool)

(declare-fun choose!44041 ((Set Context!10400) Int) (Set Context!10400))

(assert (=> d!1828114 (= (flatMap!1423 z!1189 lambda!316622) (choose!44041 z!1189 lambda!316622))))

(declare-fun bs!1370360 () Bool)

(assert (= bs!1370360 d!1828114))

(declare-fun m!6743804 () Bool)

(assert (=> bs!1370360 m!6743804))

(assert (=> b!5803740 d!1828114))

(declare-fun bm!452942 () Bool)

(declare-fun call!452947 () (Set Context!10400))

(assert (=> bm!452942 (= call!452947 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (h!70072 zl!343))) (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (h!70073 s!2326)))))

(declare-fun b!5803907 () Bool)

(declare-fun e!3563054 () (Set Context!10400))

(assert (=> b!5803907 (= e!3563054 call!452947)))

(declare-fun b!5803908 () Bool)

(declare-fun e!3563055 () (Set Context!10400))

(assert (=> b!5803908 (= e!3563055 e!3563054)))

(declare-fun c!1028072 () Bool)

(assert (=> b!5803908 (= c!1028072 (is-Cons!63623 (exprs!5700 (h!70072 zl!343))))))

(declare-fun b!5803909 () Bool)

(declare-fun e!3563056 () Bool)

(declare-fun nullable!5842 (Regex!15816) Bool)

(assert (=> b!5803909 (= e!3563056 (nullable!5842 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5803910 () Bool)

(assert (=> b!5803910 (= e!3563054 (as set.empty (Set Context!10400)))))

(declare-fun d!1828116 () Bool)

(declare-fun c!1028073 () Bool)

(assert (=> d!1828116 (= c!1028073 e!3563056)))

(declare-fun res!2447527 () Bool)

(assert (=> d!1828116 (=> (not res!2447527) (not e!3563056))))

(assert (=> d!1828116 (= res!2447527 (is-Cons!63623 (exprs!5700 (h!70072 zl!343))))))

(assert (=> d!1828116 (= (derivationStepZipperUp!1080 (h!70072 zl!343) (h!70073 s!2326)) e!3563055)))

(declare-fun b!5803911 () Bool)

(assert (=> b!5803911 (= e!3563055 (set.union call!452947 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (h!70073 s!2326))))))

(assert (= (and d!1828116 res!2447527) b!5803909))

(assert (= (and d!1828116 c!1028073) b!5803911))

(assert (= (and d!1828116 (not c!1028073)) b!5803908))

(assert (= (and b!5803908 c!1028072) b!5803907))

(assert (= (and b!5803908 (not c!1028072)) b!5803910))

(assert (= (or b!5803911 b!5803907) bm!452942))

(declare-fun m!6743806 () Bool)

(assert (=> bm!452942 m!6743806))

(declare-fun m!6743808 () Bool)

(assert (=> b!5803909 m!6743808))

(declare-fun m!6743810 () Bool)

(assert (=> b!5803911 m!6743810))

(assert (=> b!5803740 d!1828116))

(declare-fun d!1828118 () Bool)

(declare-fun dynLambda!24909 (Int Context!10400) (Set Context!10400))

(assert (=> d!1828118 (= (flatMap!1423 z!1189 lambda!316622) (dynLambda!24909 lambda!316622 (h!70072 zl!343)))))

(declare-fun lt!2298538 () Unit!156892)

(declare-fun choose!44042 ((Set Context!10400) Context!10400 Int) Unit!156892)

(assert (=> d!1828118 (= lt!2298538 (choose!44042 z!1189 (h!70072 zl!343) lambda!316622))))

(assert (=> d!1828118 (= z!1189 (set.insert (h!70072 zl!343) (as set.empty (Set Context!10400))))))

(assert (=> d!1828118 (= (lemmaFlatMapOnSingletonSet!955 z!1189 (h!70072 zl!343) lambda!316622) lt!2298538)))

(declare-fun b_lambda!218781 () Bool)

(assert (=> (not b_lambda!218781) (not d!1828118)))

(declare-fun bs!1370361 () Bool)

(assert (= bs!1370361 d!1828118))

(assert (=> bs!1370361 m!6743606))

(declare-fun m!6743812 () Bool)

(assert (=> bs!1370361 m!6743812))

(declare-fun m!6743814 () Bool)

(assert (=> bs!1370361 m!6743814))

(declare-fun m!6743816 () Bool)

(assert (=> bs!1370361 m!6743816))

(assert (=> b!5803740 d!1828118))

(declare-fun d!1828120 () Bool)

(declare-fun lt!2298541 () Regex!15816)

(assert (=> d!1828120 (validRegex!7552 lt!2298541)))

(assert (=> d!1828120 (= lt!2298541 (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))

(assert (=> d!1828120 (= (unfocusZipper!1558 (Cons!63624 lt!2298451 Nil!63624)) lt!2298541)))

(declare-fun bs!1370362 () Bool)

(assert (= bs!1370362 d!1828120))

(declare-fun m!6743818 () Bool)

(assert (=> bs!1370362 m!6743818))

(declare-fun m!6743820 () Bool)

(assert (=> bs!1370362 m!6743820))

(assert (=> bs!1370362 m!6743820))

(declare-fun m!6743822 () Bool)

(assert (=> bs!1370362 m!6743822))

(assert (=> b!5803721 d!1828120))

(declare-fun d!1828122 () Bool)

(assert (=> d!1828122 (= (flatMap!1423 lt!2298457 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298451))))

(declare-fun lt!2298542 () Unit!156892)

(assert (=> d!1828122 (= lt!2298542 (choose!44042 lt!2298457 lt!2298451 lambda!316622))))

(assert (=> d!1828122 (= lt!2298457 (set.insert lt!2298451 (as set.empty (Set Context!10400))))))

(assert (=> d!1828122 (= (lemmaFlatMapOnSingletonSet!955 lt!2298457 lt!2298451 lambda!316622) lt!2298542)))

(declare-fun b_lambda!218783 () Bool)

(assert (=> (not b_lambda!218783) (not d!1828122)))

(declare-fun bs!1370363 () Bool)

(assert (= bs!1370363 d!1828122))

(assert (=> bs!1370363 m!6743674))

(declare-fun m!6743824 () Bool)

(assert (=> bs!1370363 m!6743824))

(declare-fun m!6743826 () Bool)

(assert (=> bs!1370363 m!6743826))

(assert (=> bs!1370363 m!6743664))

(assert (=> b!5803742 d!1828122))

(declare-fun d!1828124 () Bool)

(assert (=> d!1828124 (= (flatMap!1423 lt!2298444 lambda!316622) (choose!44041 lt!2298444 lambda!316622))))

(declare-fun bs!1370364 () Bool)

(assert (= bs!1370364 d!1828124))

(declare-fun m!6743828 () Bool)

(assert (=> bs!1370364 m!6743828))

(assert (=> b!5803742 d!1828124))

(declare-fun d!1828126 () Bool)

(assert (=> d!1828126 (= (flatMap!1423 lt!2298457 lambda!316622) (choose!44041 lt!2298457 lambda!316622))))

(declare-fun bs!1370365 () Bool)

(assert (= bs!1370365 d!1828126))

(declare-fun m!6743830 () Bool)

(assert (=> bs!1370365 m!6743830))

(assert (=> b!5803742 d!1828126))

(declare-fun d!1828128 () Bool)

(assert (=> d!1828128 (= (flatMap!1423 lt!2298444 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298456))))

(declare-fun lt!2298543 () Unit!156892)

(assert (=> d!1828128 (= lt!2298543 (choose!44042 lt!2298444 lt!2298456 lambda!316622))))

(assert (=> d!1828128 (= lt!2298444 (set.insert lt!2298456 (as set.empty (Set Context!10400))))))

(assert (=> d!1828128 (= (lemmaFlatMapOnSingletonSet!955 lt!2298444 lt!2298456 lambda!316622) lt!2298543)))

(declare-fun b_lambda!218785 () Bool)

(assert (=> (not b_lambda!218785) (not d!1828128)))

(declare-fun bs!1370366 () Bool)

(assert (= bs!1370366 d!1828128))

(assert (=> bs!1370366 m!6743672))

(declare-fun m!6743832 () Bool)

(assert (=> bs!1370366 m!6743832))

(declare-fun m!6743834 () Bool)

(assert (=> bs!1370366 m!6743834))

(assert (=> bs!1370366 m!6743670))

(assert (=> b!5803742 d!1828128))

(declare-fun bs!1370367 () Bool)

(declare-fun d!1828130 () Bool)

(assert (= bs!1370367 (and d!1828130 b!5803740)))

(declare-fun lambda!316650 () Int)

(assert (=> bs!1370367 (= lambda!316650 lambda!316622)))

(assert (=> d!1828130 true))

(assert (=> d!1828130 (= (derivationStepZipper!1885 lt!2298444 (h!70073 s!2326)) (flatMap!1423 lt!2298444 lambda!316650))))

(declare-fun bs!1370368 () Bool)

(assert (= bs!1370368 d!1828130))

(declare-fun m!6743836 () Bool)

(assert (=> bs!1370368 m!6743836))

(assert (=> b!5803742 d!1828130))

(declare-fun bm!452943 () Bool)

(declare-fun call!452948 () (Set Context!10400))

(assert (=> bm!452943 (= call!452948 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298451)) (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (h!70073 s!2326)))))

(declare-fun b!5803914 () Bool)

(declare-fun e!3563057 () (Set Context!10400))

(assert (=> b!5803914 (= e!3563057 call!452948)))

(declare-fun b!5803915 () Bool)

(declare-fun e!3563058 () (Set Context!10400))

(assert (=> b!5803915 (= e!3563058 e!3563057)))

(declare-fun c!1028076 () Bool)

(assert (=> b!5803915 (= c!1028076 (is-Cons!63623 (exprs!5700 lt!2298451)))))

(declare-fun b!5803916 () Bool)

(declare-fun e!3563059 () Bool)

(assert (=> b!5803916 (= e!3563059 (nullable!5842 (h!70071 (exprs!5700 lt!2298451))))))

(declare-fun b!5803917 () Bool)

(assert (=> b!5803917 (= e!3563057 (as set.empty (Set Context!10400)))))

(declare-fun d!1828132 () Bool)

(declare-fun c!1028077 () Bool)

(assert (=> d!1828132 (= c!1028077 e!3563059)))

(declare-fun res!2447528 () Bool)

(assert (=> d!1828132 (=> (not res!2447528) (not e!3563059))))

(assert (=> d!1828132 (= res!2447528 (is-Cons!63623 (exprs!5700 lt!2298451)))))

(assert (=> d!1828132 (= (derivationStepZipperUp!1080 lt!2298451 (h!70073 s!2326)) e!3563058)))

(declare-fun b!5803918 () Bool)

(assert (=> b!5803918 (= e!3563058 (set.union call!452948 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (h!70073 s!2326))))))

(assert (= (and d!1828132 res!2447528) b!5803916))

(assert (= (and d!1828132 c!1028077) b!5803918))

(assert (= (and d!1828132 (not c!1028077)) b!5803915))

(assert (= (and b!5803915 c!1028076) b!5803914))

(assert (= (and b!5803915 (not c!1028076)) b!5803917))

(assert (= (or b!5803918 b!5803914) bm!452943))

(declare-fun m!6743838 () Bool)

(assert (=> bm!452943 m!6743838))

(declare-fun m!6743840 () Bool)

(assert (=> b!5803916 m!6743840))

(declare-fun m!6743842 () Bool)

(assert (=> b!5803918 m!6743842))

(assert (=> b!5803742 d!1828132))

(declare-fun bm!452944 () Bool)

(declare-fun call!452949 () (Set Context!10400))

(assert (=> bm!452944 (= call!452949 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298456)) (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (h!70073 s!2326)))))

(declare-fun b!5803919 () Bool)

(declare-fun e!3563060 () (Set Context!10400))

(assert (=> b!5803919 (= e!3563060 call!452949)))

(declare-fun b!5803920 () Bool)

(declare-fun e!3563061 () (Set Context!10400))

(assert (=> b!5803920 (= e!3563061 e!3563060)))

(declare-fun c!1028078 () Bool)

(assert (=> b!5803920 (= c!1028078 (is-Cons!63623 (exprs!5700 lt!2298456)))))

(declare-fun b!5803921 () Bool)

(declare-fun e!3563062 () Bool)

(assert (=> b!5803921 (= e!3563062 (nullable!5842 (h!70071 (exprs!5700 lt!2298456))))))

(declare-fun b!5803922 () Bool)

(assert (=> b!5803922 (= e!3563060 (as set.empty (Set Context!10400)))))

(declare-fun d!1828134 () Bool)

(declare-fun c!1028079 () Bool)

(assert (=> d!1828134 (= c!1028079 e!3563062)))

(declare-fun res!2447529 () Bool)

(assert (=> d!1828134 (=> (not res!2447529) (not e!3563062))))

(assert (=> d!1828134 (= res!2447529 (is-Cons!63623 (exprs!5700 lt!2298456)))))

(assert (=> d!1828134 (= (derivationStepZipperUp!1080 lt!2298456 (h!70073 s!2326)) e!3563061)))

(declare-fun b!5803923 () Bool)

(assert (=> b!5803923 (= e!3563061 (set.union call!452949 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (h!70073 s!2326))))))

(assert (= (and d!1828134 res!2447529) b!5803921))

(assert (= (and d!1828134 c!1028079) b!5803923))

(assert (= (and d!1828134 (not c!1028079)) b!5803920))

(assert (= (and b!5803920 c!1028078) b!5803919))

(assert (= (and b!5803920 (not c!1028078)) b!5803922))

(assert (= (or b!5803923 b!5803919) bm!452944))

(declare-fun m!6743844 () Bool)

(assert (=> bm!452944 m!6743844))

(declare-fun m!6743846 () Bool)

(assert (=> b!5803921 m!6743846))

(declare-fun m!6743848 () Bool)

(assert (=> b!5803923 m!6743848))

(assert (=> b!5803742 d!1828134))

(declare-fun bs!1370369 () Bool)

(declare-fun d!1828136 () Bool)

(assert (= bs!1370369 (and d!1828136 d!1828112)))

(declare-fun lambda!316653 () Int)

(assert (=> bs!1370369 (= lambda!316653 lambda!316647)))

(assert (=> d!1828136 (= (inv!82788 setElem!39045) (forall!14924 (exprs!5700 setElem!39045) lambda!316653))))

(declare-fun bs!1370370 () Bool)

(assert (= bs!1370370 d!1828136))

(declare-fun m!6743850 () Bool)

(assert (=> bs!1370370 m!6743850))

(assert (=> setNonEmpty!39045 d!1828136))

(declare-fun d!1828138 () Bool)

(declare-fun lt!2298544 () Regex!15816)

(assert (=> d!1828138 (validRegex!7552 lt!2298544)))

(assert (=> d!1828138 (= lt!2298544 (generalisedUnion!1679 (unfocusZipperList!1244 zl!343)))))

(assert (=> d!1828138 (= (unfocusZipper!1558 zl!343) lt!2298544)))

(declare-fun bs!1370371 () Bool)

(assert (= bs!1370371 d!1828138))

(declare-fun m!6743852 () Bool)

(assert (=> bs!1370371 m!6743852))

(assert (=> bs!1370371 m!6743634))

(assert (=> bs!1370371 m!6743634))

(assert (=> bs!1370371 m!6743636))

(assert (=> b!5803732 d!1828138))

(declare-fun b!5803942 () Bool)

(declare-fun e!3563077 () Bool)

(declare-fun call!452957 () Bool)

(assert (=> b!5803942 (= e!3563077 call!452957)))

(declare-fun b!5803943 () Bool)

(declare-fun e!3563078 () Bool)

(assert (=> b!5803943 (= e!3563078 e!3563077)))

(declare-fun res!2447543 () Bool)

(assert (=> b!5803943 (= res!2447543 (not (nullable!5842 (reg!16145 r!7292))))))

(assert (=> b!5803943 (=> (not res!2447543) (not e!3563077))))

(declare-fun b!5803944 () Bool)

(declare-fun e!3563079 () Bool)

(declare-fun e!3563081 () Bool)

(assert (=> b!5803944 (= e!3563079 e!3563081)))

(declare-fun res!2447542 () Bool)

(assert (=> b!5803944 (=> (not res!2447542) (not e!3563081))))

(declare-fun call!452958 () Bool)

(assert (=> b!5803944 (= res!2447542 call!452958)))

(declare-fun bm!452952 () Bool)

(declare-fun call!452956 () Bool)

(declare-fun c!1028084 () Bool)

(assert (=> bm!452952 (= call!452956 (validRegex!7552 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))

(declare-fun b!5803945 () Bool)

(declare-fun e!3563083 () Bool)

(assert (=> b!5803945 (= e!3563078 e!3563083)))

(assert (=> b!5803945 (= c!1028084 (is-Union!15816 r!7292))))

(declare-fun bm!452953 () Bool)

(assert (=> bm!452953 (= call!452958 call!452957)))

(declare-fun b!5803946 () Bool)

(declare-fun res!2447541 () Bool)

(assert (=> b!5803946 (=> res!2447541 e!3563079)))

(assert (=> b!5803946 (= res!2447541 (not (is-Concat!24661 r!7292)))))

(assert (=> b!5803946 (= e!3563083 e!3563079)))

(declare-fun b!5803947 () Bool)

(declare-fun e!3563082 () Bool)

(assert (=> b!5803947 (= e!3563082 call!452956)))

(declare-fun b!5803948 () Bool)

(assert (=> b!5803948 (= e!3563081 call!452956)))

(declare-fun d!1828140 () Bool)

(declare-fun res!2447540 () Bool)

(declare-fun e!3563080 () Bool)

(assert (=> d!1828140 (=> res!2447540 e!3563080)))

(assert (=> d!1828140 (= res!2447540 (is-ElementMatch!15816 r!7292))))

(assert (=> d!1828140 (= (validRegex!7552 r!7292) e!3563080)))

(declare-fun c!1028085 () Bool)

(declare-fun bm!452951 () Bool)

(assert (=> bm!452951 (= call!452957 (validRegex!7552 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))

(declare-fun b!5803949 () Bool)

(declare-fun res!2447544 () Bool)

(assert (=> b!5803949 (=> (not res!2447544) (not e!3563082))))

(assert (=> b!5803949 (= res!2447544 call!452958)))

(assert (=> b!5803949 (= e!3563083 e!3563082)))

(declare-fun b!5803950 () Bool)

(assert (=> b!5803950 (= e!3563080 e!3563078)))

(assert (=> b!5803950 (= c!1028085 (is-Star!15816 r!7292))))

(assert (= (and d!1828140 (not res!2447540)) b!5803950))

(assert (= (and b!5803950 c!1028085) b!5803943))

(assert (= (and b!5803950 (not c!1028085)) b!5803945))

(assert (= (and b!5803943 res!2447543) b!5803942))

(assert (= (and b!5803945 c!1028084) b!5803949))

(assert (= (and b!5803945 (not c!1028084)) b!5803946))

(assert (= (and b!5803949 res!2447544) b!5803947))

(assert (= (and b!5803946 (not res!2447541)) b!5803944))

(assert (= (and b!5803944 res!2447542) b!5803948))

(assert (= (or b!5803947 b!5803948) bm!452952))

(assert (= (or b!5803949 b!5803944) bm!452953))

(assert (= (or b!5803942 bm!452953) bm!452951))

(declare-fun m!6743854 () Bool)

(assert (=> b!5803943 m!6743854))

(declare-fun m!6743856 () Bool)

(assert (=> bm!452952 m!6743856))

(declare-fun m!6743858 () Bool)

(assert (=> bm!452951 m!6743858))

(assert (=> start!594722 d!1828140))

(declare-fun d!1828142 () Bool)

(declare-fun c!1028097 () Bool)

(assert (=> d!1828142 (= c!1028097 (and (is-ElementMatch!15816 (reg!16145 r!7292)) (= (c!1028045 (reg!16145 r!7292)) (h!70073 s!2326))))))

(declare-fun e!3563099 () (Set Context!10400))

(assert (=> d!1828142 (= (derivationStepZipperDown!1154 (reg!16145 r!7292) lt!2298456 (h!70073 s!2326)) e!3563099)))

(declare-fun bm!452966 () Bool)

(declare-fun call!452975 () List!63747)

(declare-fun call!452972 () List!63747)

(assert (=> bm!452966 (= call!452975 call!452972)))

(declare-fun bm!452967 () Bool)

(declare-fun c!1028100 () Bool)

(declare-fun c!1028099 () Bool)

(declare-fun $colon$colon!1797 (List!63747 Regex!15816) List!63747)

(assert (=> bm!452967 (= call!452972 ($colon$colon!1797 (exprs!5700 lt!2298456) (ite (or c!1028100 c!1028099) (regTwo!32144 (reg!16145 r!7292)) (reg!16145 r!7292))))))

(declare-fun b!5803973 () Bool)

(declare-fun e!3563100 () (Set Context!10400))

(declare-fun call!452976 () (Set Context!10400))

(assert (=> b!5803973 (= e!3563100 call!452976)))

(declare-fun b!5803974 () Bool)

(declare-fun e!3563098 () Bool)

(assert (=> b!5803974 (= e!3563098 (nullable!5842 (regOne!32144 (reg!16145 r!7292))))))

(declare-fun b!5803975 () Bool)

(declare-fun e!3563096 () (Set Context!10400))

(assert (=> b!5803975 (= e!3563096 e!3563100)))

(assert (=> b!5803975 (= c!1028099 (is-Concat!24661 (reg!16145 r!7292)))))

(declare-fun c!1028098 () Bool)

(declare-fun call!452971 () (Set Context!10400))

(declare-fun bm!452968 () Bool)

(assert (=> bm!452968 (= call!452971 (derivationStepZipperDown!1154 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))) (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975)) (h!70073 s!2326)))))

(declare-fun b!5803976 () Bool)

(assert (=> b!5803976 (= e!3563099 (set.insert lt!2298456 (as set.empty (Set Context!10400))))))

(declare-fun b!5803977 () Bool)

(declare-fun e!3563097 () (Set Context!10400))

(declare-fun call!452974 () (Set Context!10400))

(assert (=> b!5803977 (= e!3563097 (set.union call!452971 call!452974))))

(declare-fun bm!452969 () Bool)

(declare-fun call!452973 () (Set Context!10400))

(assert (=> bm!452969 (= call!452976 call!452973)))

(declare-fun b!5803978 () Bool)

(assert (=> b!5803978 (= e!3563099 e!3563097)))

(assert (=> b!5803978 (= c!1028098 (is-Union!15816 (reg!16145 r!7292)))))

(declare-fun bm!452970 () Bool)

(assert (=> bm!452970 (= call!452973 call!452971)))

(declare-fun bm!452971 () Bool)

(assert (=> bm!452971 (= call!452974 (derivationStepZipperDown!1154 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))) (ite c!1028098 lt!2298456 (Context!10401 call!452972)) (h!70073 s!2326)))))

(declare-fun b!5803979 () Bool)

(declare-fun e!3563101 () (Set Context!10400))

(assert (=> b!5803979 (= e!3563101 call!452976)))

(declare-fun b!5803980 () Bool)

(declare-fun c!1028096 () Bool)

(assert (=> b!5803980 (= c!1028096 (is-Star!15816 (reg!16145 r!7292)))))

(assert (=> b!5803980 (= e!3563100 e!3563101)))

(declare-fun b!5803981 () Bool)

(assert (=> b!5803981 (= e!3563096 (set.union call!452974 call!452973))))

(declare-fun b!5803982 () Bool)

(assert (=> b!5803982 (= c!1028100 e!3563098)))

(declare-fun res!2447547 () Bool)

(assert (=> b!5803982 (=> (not res!2447547) (not e!3563098))))

(assert (=> b!5803982 (= res!2447547 (is-Concat!24661 (reg!16145 r!7292)))))

(assert (=> b!5803982 (= e!3563097 e!3563096)))

(declare-fun b!5803983 () Bool)

(assert (=> b!5803983 (= e!3563101 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828142 c!1028097) b!5803976))

(assert (= (and d!1828142 (not c!1028097)) b!5803978))

(assert (= (and b!5803978 c!1028098) b!5803977))

(assert (= (and b!5803978 (not c!1028098)) b!5803982))

(assert (= (and b!5803982 res!2447547) b!5803974))

(assert (= (and b!5803982 c!1028100) b!5803981))

(assert (= (and b!5803982 (not c!1028100)) b!5803975))

(assert (= (and b!5803975 c!1028099) b!5803973))

(assert (= (and b!5803975 (not c!1028099)) b!5803980))

(assert (= (and b!5803980 c!1028096) b!5803979))

(assert (= (and b!5803980 (not c!1028096)) b!5803983))

(assert (= (or b!5803973 b!5803979) bm!452966))

(assert (= (or b!5803973 b!5803979) bm!452969))

(assert (= (or b!5803981 bm!452966) bm!452967))

(assert (= (or b!5803981 bm!452969) bm!452970))

(assert (= (or b!5803977 b!5803981) bm!452971))

(assert (= (or b!5803977 bm!452970) bm!452968))

(declare-fun m!6743860 () Bool)

(assert (=> bm!452967 m!6743860))

(declare-fun m!6743862 () Bool)

(assert (=> bm!452968 m!6743862))

(assert (=> b!5803976 m!6743670))

(declare-fun m!6743864 () Bool)

(assert (=> b!5803974 m!6743864))

(declare-fun m!6743866 () Bool)

(assert (=> bm!452971 m!6743866))

(assert (=> b!5803748 d!1828142))

(declare-fun d!1828146 () Bool)

(assert (=> d!1828146 (= (flatMap!1423 lt!2298446 lambda!316622) (choose!44041 lt!2298446 lambda!316622))))

(declare-fun bs!1370372 () Bool)

(assert (= bs!1370372 d!1828146))

(declare-fun m!6743868 () Bool)

(assert (=> bs!1370372 m!6743868))

(assert (=> b!5803748 d!1828146))

(declare-fun bm!452972 () Bool)

(declare-fun call!452977 () (Set Context!10400))

(assert (=> bm!452972 (= call!452977 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298442)) (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (h!70073 s!2326)))))

(declare-fun b!5803984 () Bool)

(declare-fun e!3563102 () (Set Context!10400))

(assert (=> b!5803984 (= e!3563102 call!452977)))

(declare-fun b!5803985 () Bool)

(declare-fun e!3563103 () (Set Context!10400))

(assert (=> b!5803985 (= e!3563103 e!3563102)))

(declare-fun c!1028101 () Bool)

(assert (=> b!5803985 (= c!1028101 (is-Cons!63623 (exprs!5700 lt!2298442)))))

(declare-fun b!5803986 () Bool)

(declare-fun e!3563104 () Bool)

(assert (=> b!5803986 (= e!3563104 (nullable!5842 (h!70071 (exprs!5700 lt!2298442))))))

(declare-fun b!5803987 () Bool)

(assert (=> b!5803987 (= e!3563102 (as set.empty (Set Context!10400)))))

(declare-fun d!1828148 () Bool)

(declare-fun c!1028102 () Bool)

(assert (=> d!1828148 (= c!1028102 e!3563104)))

(declare-fun res!2447548 () Bool)

(assert (=> d!1828148 (=> (not res!2447548) (not e!3563104))))

(assert (=> d!1828148 (= res!2447548 (is-Cons!63623 (exprs!5700 lt!2298442)))))

(assert (=> d!1828148 (= (derivationStepZipperUp!1080 lt!2298442 (h!70073 s!2326)) e!3563103)))

(declare-fun b!5803988 () Bool)

(assert (=> b!5803988 (= e!3563103 (set.union call!452977 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (h!70073 s!2326))))))

(assert (= (and d!1828148 res!2447548) b!5803986))

(assert (= (and d!1828148 c!1028102) b!5803988))

(assert (= (and d!1828148 (not c!1028102)) b!5803985))

(assert (= (and b!5803985 c!1028101) b!5803984))

(assert (= (and b!5803985 (not c!1028101)) b!5803987))

(assert (= (or b!5803988 b!5803984) bm!452972))

(declare-fun m!6743870 () Bool)

(assert (=> bm!452972 m!6743870))

(declare-fun m!6743872 () Bool)

(assert (=> b!5803986 m!6743872))

(declare-fun m!6743874 () Bool)

(assert (=> b!5803988 m!6743874))

(assert (=> b!5803748 d!1828148))

(declare-fun d!1828150 () Bool)

(assert (=> d!1828150 (= (flatMap!1423 lt!2298446 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298442))))

(declare-fun lt!2298547 () Unit!156892)

(assert (=> d!1828150 (= lt!2298547 (choose!44042 lt!2298446 lt!2298442 lambda!316622))))

(assert (=> d!1828150 (= lt!2298446 (set.insert lt!2298442 (as set.empty (Set Context!10400))))))

(assert (=> d!1828150 (= (lemmaFlatMapOnSingletonSet!955 lt!2298446 lt!2298442 lambda!316622) lt!2298547)))

(declare-fun b_lambda!218787 () Bool)

(assert (=> (not b_lambda!218787) (not d!1828150)))

(declare-fun bs!1370373 () Bool)

(assert (= bs!1370373 d!1828150))

(assert (=> bs!1370373 m!6743626))

(declare-fun m!6743876 () Bool)

(assert (=> bs!1370373 m!6743876))

(declare-fun m!6743878 () Bool)

(assert (=> bs!1370373 m!6743878))

(assert (=> bs!1370373 m!6743630))

(assert (=> b!5803748 d!1828150))

(declare-fun bs!1370376 () Bool)

(declare-fun b!5804039 () Bool)

(assert (= bs!1370376 (and b!5804039 b!5803746)))

(declare-fun lambda!316658 () Int)

(assert (=> bs!1370376 (not (= lambda!316658 lambda!316619))))

(assert (=> bs!1370376 (= lambda!316658 lambda!316620)))

(assert (=> bs!1370376 (not (= lambda!316658 lambda!316621))))

(assert (=> b!5804039 true))

(assert (=> b!5804039 true))

(declare-fun bs!1370377 () Bool)

(declare-fun b!5804034 () Bool)

(assert (= bs!1370377 (and b!5804034 b!5803746)))

(declare-fun lambda!316659 () Int)

(assert (=> bs!1370377 (not (= lambda!316659 lambda!316619))))

(assert (=> bs!1370377 (not (= lambda!316659 lambda!316620))))

(assert (=> bs!1370377 (= (and (= (regOne!32144 r!7292) (reg!16145 r!7292)) (= (regTwo!32144 r!7292) r!7292)) (= lambda!316659 lambda!316621))))

(declare-fun bs!1370378 () Bool)

(assert (= bs!1370378 (and b!5804034 b!5804039)))

(assert (=> bs!1370378 (not (= lambda!316659 lambda!316658))))

(assert (=> b!5804034 true))

(assert (=> b!5804034 true))

(declare-fun b!5804031 () Bool)

(declare-fun c!1028118 () Bool)

(assert (=> b!5804031 (= c!1028118 (is-ElementMatch!15816 r!7292))))

(declare-fun e!3563129 () Bool)

(declare-fun e!3563130 () Bool)

(assert (=> b!5804031 (= e!3563129 e!3563130)))

(declare-fun call!452985 () Bool)

(declare-fun bm!452979 () Bool)

(declare-fun c!1028116 () Bool)

(assert (=> bm!452979 (= call!452985 (Exists!2916 (ite c!1028116 lambda!316658 lambda!316659)))))

(declare-fun b!5804032 () Bool)

(declare-fun e!3563132 () Bool)

(declare-fun e!3563131 () Bool)

(assert (=> b!5804032 (= e!3563132 e!3563131)))

(declare-fun res!2447567 () Bool)

(assert (=> b!5804032 (= res!2447567 (matchRSpec!2919 (regOne!32145 r!7292) s!2326))))

(assert (=> b!5804032 (=> res!2447567 e!3563131)))

(declare-fun b!5804033 () Bool)

(declare-fun e!3563133 () Bool)

(declare-fun call!452984 () Bool)

(assert (=> b!5804033 (= e!3563133 call!452984)))

(declare-fun b!5804035 () Bool)

(assert (=> b!5804035 (= e!3563133 e!3563129)))

(declare-fun res!2447568 () Bool)

(assert (=> b!5804035 (= res!2447568 (not (is-EmptyLang!15816 r!7292)))))

(assert (=> b!5804035 (=> (not res!2447568) (not e!3563129))))

(declare-fun b!5804036 () Bool)

(declare-fun c!1028117 () Bool)

(assert (=> b!5804036 (= c!1028117 (is-Union!15816 r!7292))))

(assert (=> b!5804036 (= e!3563130 e!3563132)))

(declare-fun b!5804037 () Bool)

(declare-fun e!3563134 () Bool)

(assert (=> b!5804037 (= e!3563132 e!3563134)))

(assert (=> b!5804037 (= c!1028116 (is-Star!15816 r!7292))))

(declare-fun b!5804038 () Bool)

(declare-fun res!2447569 () Bool)

(declare-fun e!3563135 () Bool)

(assert (=> b!5804038 (=> res!2447569 e!3563135)))

(assert (=> b!5804038 (= res!2447569 call!452984)))

(assert (=> b!5804038 (= e!3563134 e!3563135)))

(assert (=> b!5804039 (= e!3563135 call!452985)))

(declare-fun b!5804040 () Bool)

(assert (=> b!5804040 (= e!3563130 (= s!2326 (Cons!63625 (c!1028045 r!7292) Nil!63625)))))

(declare-fun d!1828152 () Bool)

(declare-fun c!1028115 () Bool)

(assert (=> d!1828152 (= c!1028115 (is-EmptyExpr!15816 r!7292))))

(assert (=> d!1828152 (= (matchRSpec!2919 r!7292 s!2326) e!3563133)))

(assert (=> b!5804034 (= e!3563134 call!452985)))

(declare-fun bm!452980 () Bool)

(assert (=> bm!452980 (= call!452984 (isEmpty!35534 s!2326))))

(declare-fun b!5804041 () Bool)

(assert (=> b!5804041 (= e!3563131 (matchRSpec!2919 (regTwo!32145 r!7292) s!2326))))

(assert (= (and d!1828152 c!1028115) b!5804033))

(assert (= (and d!1828152 (not c!1028115)) b!5804035))

(assert (= (and b!5804035 res!2447568) b!5804031))

(assert (= (and b!5804031 c!1028118) b!5804040))

(assert (= (and b!5804031 (not c!1028118)) b!5804036))

(assert (= (and b!5804036 c!1028117) b!5804032))

(assert (= (and b!5804036 (not c!1028117)) b!5804037))

(assert (= (and b!5804032 (not res!2447567)) b!5804041))

(assert (= (and b!5804037 c!1028116) b!5804038))

(assert (= (and b!5804037 (not c!1028116)) b!5804034))

(assert (= (and b!5804038 (not res!2447569)) b!5804039))

(assert (= (or b!5804039 b!5804034) bm!452979))

(assert (= (or b!5804033 b!5804038) bm!452980))

(declare-fun m!6743890 () Bool)

(assert (=> bm!452979 m!6743890))

(declare-fun m!6743892 () Bool)

(assert (=> b!5804032 m!6743892))

(assert (=> bm!452980 m!6743648))

(declare-fun m!6743894 () Bool)

(assert (=> b!5804041 m!6743894))

(assert (=> b!5803730 d!1828152))

(declare-fun b!5804075 () Bool)

(declare-fun e!3563158 () Bool)

(declare-fun e!3563154 () Bool)

(assert (=> b!5804075 (= e!3563158 e!3563154)))

(declare-fun res!2447593 () Bool)

(assert (=> b!5804075 (=> res!2447593 e!3563154)))

(declare-fun call!452989 () Bool)

(assert (=> b!5804075 (= res!2447593 call!452989)))

(declare-fun d!1828160 () Bool)

(declare-fun e!3563157 () Bool)

(assert (=> d!1828160 e!3563157))

(declare-fun c!1028129 () Bool)

(assert (=> d!1828160 (= c!1028129 (is-EmptyExpr!15816 r!7292))))

(declare-fun lt!2298554 () Bool)

(declare-fun e!3563156 () Bool)

(assert (=> d!1828160 (= lt!2298554 e!3563156)))

(declare-fun c!1028128 () Bool)

(assert (=> d!1828160 (= c!1028128 (isEmpty!35534 s!2326))))

(assert (=> d!1828160 (validRegex!7552 r!7292)))

(assert (=> d!1828160 (= (matchR!8001 r!7292 s!2326) lt!2298554)))

(declare-fun b!5804076 () Bool)

(assert (=> b!5804076 (= e!3563157 (= lt!2298554 call!452989))))

(declare-fun b!5804077 () Bool)

(declare-fun res!2447589 () Bool)

(declare-fun e!3563159 () Bool)

(assert (=> b!5804077 (=> res!2447589 e!3563159)))

(declare-fun e!3563153 () Bool)

(assert (=> b!5804077 (= res!2447589 e!3563153)))

(declare-fun res!2447592 () Bool)

(assert (=> b!5804077 (=> (not res!2447592) (not e!3563153))))

(assert (=> b!5804077 (= res!2447592 lt!2298554)))

(declare-fun b!5804078 () Bool)

(declare-fun head!12245 (List!63749) C!31902)

(assert (=> b!5804078 (= e!3563154 (not (= (head!12245 s!2326) (c!1028045 r!7292))))))

(declare-fun bm!452984 () Bool)

(assert (=> bm!452984 (= call!452989 (isEmpty!35534 s!2326))))

(declare-fun b!5804079 () Bool)

(assert (=> b!5804079 (= e!3563153 (= (head!12245 s!2326) (c!1028045 r!7292)))))

(declare-fun b!5804080 () Bool)

(assert (=> b!5804080 (= e!3563156 (nullable!5842 r!7292))))

(declare-fun b!5804081 () Bool)

(declare-fun derivativeStep!4585 (Regex!15816 C!31902) Regex!15816)

(declare-fun tail!11340 (List!63749) List!63749)

(assert (=> b!5804081 (= e!3563156 (matchR!8001 (derivativeStep!4585 r!7292 (head!12245 s!2326)) (tail!11340 s!2326)))))

(declare-fun b!5804082 () Bool)

(declare-fun res!2447587 () Bool)

(assert (=> b!5804082 (=> (not res!2447587) (not e!3563153))))

(assert (=> b!5804082 (= res!2447587 (isEmpty!35534 (tail!11340 s!2326)))))

(declare-fun b!5804083 () Bool)

(assert (=> b!5804083 (= e!3563159 e!3563158)))

(declare-fun res!2447594 () Bool)

(assert (=> b!5804083 (=> (not res!2447594) (not e!3563158))))

(assert (=> b!5804083 (= res!2447594 (not lt!2298554))))

(declare-fun b!5804084 () Bool)

(declare-fun e!3563155 () Bool)

(assert (=> b!5804084 (= e!3563155 (not lt!2298554))))

(declare-fun b!5804085 () Bool)

(declare-fun res!2447591 () Bool)

(assert (=> b!5804085 (=> res!2447591 e!3563159)))

(assert (=> b!5804085 (= res!2447591 (not (is-ElementMatch!15816 r!7292)))))

(assert (=> b!5804085 (= e!3563155 e!3563159)))

(declare-fun b!5804086 () Bool)

(declare-fun res!2447590 () Bool)

(assert (=> b!5804086 (=> (not res!2447590) (not e!3563153))))

(assert (=> b!5804086 (= res!2447590 (not call!452989))))

(declare-fun b!5804087 () Bool)

(assert (=> b!5804087 (= e!3563157 e!3563155)))

(declare-fun c!1028127 () Bool)

(assert (=> b!5804087 (= c!1028127 (is-EmptyLang!15816 r!7292))))

(declare-fun b!5804088 () Bool)

(declare-fun res!2447588 () Bool)

(assert (=> b!5804088 (=> res!2447588 e!3563154)))

(assert (=> b!5804088 (= res!2447588 (not (isEmpty!35534 (tail!11340 s!2326))))))

(assert (= (and d!1828160 c!1028128) b!5804080))

(assert (= (and d!1828160 (not c!1028128)) b!5804081))

(assert (= (and d!1828160 c!1028129) b!5804076))

(assert (= (and d!1828160 (not c!1028129)) b!5804087))

(assert (= (and b!5804087 c!1028127) b!5804084))

(assert (= (and b!5804087 (not c!1028127)) b!5804085))

(assert (= (and b!5804085 (not res!2447591)) b!5804077))

(assert (= (and b!5804077 res!2447592) b!5804086))

(assert (= (and b!5804086 res!2447590) b!5804082))

(assert (= (and b!5804082 res!2447587) b!5804079))

(assert (= (and b!5804077 (not res!2447589)) b!5804083))

(assert (= (and b!5804083 res!2447594) b!5804075))

(assert (= (and b!5804075 (not res!2447593)) b!5804088))

(assert (= (and b!5804088 (not res!2447588)) b!5804078))

(assert (= (or b!5804076 b!5804075 b!5804086) bm!452984))

(declare-fun m!6743902 () Bool)

(assert (=> b!5804081 m!6743902))

(assert (=> b!5804081 m!6743902))

(declare-fun m!6743904 () Bool)

(assert (=> b!5804081 m!6743904))

(declare-fun m!6743906 () Bool)

(assert (=> b!5804081 m!6743906))

(assert (=> b!5804081 m!6743904))

(assert (=> b!5804081 m!6743906))

(declare-fun m!6743908 () Bool)

(assert (=> b!5804081 m!6743908))

(assert (=> b!5804088 m!6743906))

(assert (=> b!5804088 m!6743906))

(declare-fun m!6743910 () Bool)

(assert (=> b!5804088 m!6743910))

(assert (=> b!5804078 m!6743902))

(assert (=> b!5804079 m!6743902))

(assert (=> bm!452984 m!6743648))

(assert (=> d!1828160 m!6743648))

(assert (=> d!1828160 m!6743656))

(assert (=> b!5804082 m!6743906))

(assert (=> b!5804082 m!6743906))

(assert (=> b!5804082 m!6743910))

(declare-fun m!6743912 () Bool)

(assert (=> b!5804080 m!6743912))

(assert (=> b!5803730 d!1828160))

(declare-fun d!1828164 () Bool)

(assert (=> d!1828164 (= (matchR!8001 r!7292 s!2326) (matchRSpec!2919 r!7292 s!2326))))

(declare-fun lt!2298557 () Unit!156892)

(declare-fun choose!44043 (Regex!15816 List!63749) Unit!156892)

(assert (=> d!1828164 (= lt!2298557 (choose!44043 r!7292 s!2326))))

(assert (=> d!1828164 (validRegex!7552 r!7292)))

(assert (=> d!1828164 (= (mainMatchTheorem!2919 r!7292 s!2326) lt!2298557)))

(declare-fun bs!1370380 () Bool)

(assert (= bs!1370380 d!1828164))

(assert (=> bs!1370380 m!6743600))

(assert (=> bs!1370380 m!6743598))

(declare-fun m!6743914 () Bool)

(assert (=> bs!1370380 m!6743914))

(assert (=> bs!1370380 m!6743656))

(assert (=> b!5803730 d!1828164))

(declare-fun d!1828166 () Bool)

(declare-fun c!1028142 () Bool)

(assert (=> d!1828166 (= c!1028142 (isEmpty!35534 s!2326))))

(declare-fun e!3563174 () Bool)

(assert (=> d!1828166 (= (matchZipper!1944 lt!2298446 s!2326) e!3563174)))

(declare-fun b!5804115 () Bool)

(declare-fun nullableZipper!1725 ((Set Context!10400)) Bool)

(assert (=> b!5804115 (= e!3563174 (nullableZipper!1725 lt!2298446))))

(declare-fun b!5804116 () Bool)

(assert (=> b!5804116 (= e!3563174 (matchZipper!1944 (derivationStepZipper!1885 lt!2298446 (head!12245 s!2326)) (tail!11340 s!2326)))))

(assert (= (and d!1828166 c!1028142) b!5804115))

(assert (= (and d!1828166 (not c!1028142)) b!5804116))

(assert (=> d!1828166 m!6743648))

(declare-fun m!6743916 () Bool)

(assert (=> b!5804115 m!6743916))

(assert (=> b!5804116 m!6743902))

(assert (=> b!5804116 m!6743902))

(declare-fun m!6743918 () Bool)

(assert (=> b!5804116 m!6743918))

(assert (=> b!5804116 m!6743906))

(assert (=> b!5804116 m!6743918))

(assert (=> b!5804116 m!6743906))

(declare-fun m!6743920 () Bool)

(assert (=> b!5804116 m!6743920))

(assert (=> b!5803729 d!1828166))

(declare-fun d!1828168 () Bool)

(declare-fun c!1028143 () Bool)

(assert (=> d!1828168 (= c!1028143 (isEmpty!35534 (t!377100 s!2326)))))

(declare-fun e!3563175 () Bool)

(assert (=> d!1828168 (= (matchZipper!1944 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (t!377100 s!2326)) e!3563175)))

(declare-fun b!5804117 () Bool)

(assert (=> b!5804117 (= e!3563175 (nullableZipper!1725 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326))))))

(declare-fun b!5804118 () Bool)

(assert (=> b!5804118 (= e!3563175 (matchZipper!1944 (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (head!12245 (t!377100 s!2326))) (tail!11340 (t!377100 s!2326))))))

(assert (= (and d!1828168 c!1028143) b!5804117))

(assert (= (and d!1828168 (not c!1028143)) b!5804118))

(declare-fun m!6743922 () Bool)

(assert (=> d!1828168 m!6743922))

(assert (=> b!5804117 m!6743614))

(declare-fun m!6743924 () Bool)

(assert (=> b!5804117 m!6743924))

(declare-fun m!6743926 () Bool)

(assert (=> b!5804118 m!6743926))

(assert (=> b!5804118 m!6743614))

(assert (=> b!5804118 m!6743926))

(declare-fun m!6743928 () Bool)

(assert (=> b!5804118 m!6743928))

(declare-fun m!6743930 () Bool)

(assert (=> b!5804118 m!6743930))

(assert (=> b!5804118 m!6743928))

(assert (=> b!5804118 m!6743930))

(declare-fun m!6743932 () Bool)

(assert (=> b!5804118 m!6743932))

(assert (=> b!5803729 d!1828168))

(declare-fun bs!1370381 () Bool)

(declare-fun d!1828170 () Bool)

(assert (= bs!1370381 (and d!1828170 b!5803740)))

(declare-fun lambda!316660 () Int)

(assert (=> bs!1370381 (= lambda!316660 lambda!316622)))

(declare-fun bs!1370382 () Bool)

(assert (= bs!1370382 (and d!1828170 d!1828130)))

(assert (=> bs!1370382 (= lambda!316660 lambda!316650)))

(assert (=> d!1828170 true))

(assert (=> d!1828170 (= (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (flatMap!1423 lt!2298446 lambda!316660))))

(declare-fun bs!1370383 () Bool)

(assert (= bs!1370383 d!1828170))

(declare-fun m!6743934 () Bool)

(assert (=> bs!1370383 m!6743934))

(assert (=> b!5803729 d!1828170))

(declare-fun d!1828172 () Bool)

(declare-fun isEmpty!35538 (Option!15825) Bool)

(assert (=> d!1828172 (= (isDefined!12528 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326)) (not (isEmpty!35538 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326))))))

(declare-fun bs!1370384 () Bool)

(assert (= bs!1370384 d!1828172))

(assert (=> bs!1370384 m!6743642))

(declare-fun m!6743936 () Bool)

(assert (=> bs!1370384 m!6743936))

(assert (=> b!5803746 d!1828172))

(declare-fun bs!1370385 () Bool)

(declare-fun d!1828174 () Bool)

(assert (= bs!1370385 (and d!1828174 b!5803746)))

(declare-fun lambda!316665 () Int)

(assert (=> bs!1370385 (not (= lambda!316665 lambda!316620))))

(declare-fun bs!1370386 () Bool)

(assert (= bs!1370386 (and d!1828174 b!5804034)))

(assert (=> bs!1370386 (not (= lambda!316665 lambda!316659))))

(declare-fun bs!1370387 () Bool)

(assert (= bs!1370387 (and d!1828174 b!5804039)))

(assert (=> bs!1370387 (not (= lambda!316665 lambda!316658))))

(assert (=> bs!1370385 (= lambda!316665 lambda!316619)))

(assert (=> bs!1370385 (not (= lambda!316665 lambda!316621))))

(assert (=> d!1828174 true))

(assert (=> d!1828174 true))

(assert (=> d!1828174 true))

(declare-fun bs!1370388 () Bool)

(assert (= bs!1370388 d!1828174))

(declare-fun lambda!316666 () Int)

(assert (=> bs!1370388 (not (= lambda!316666 lambda!316665))))

(assert (=> bs!1370385 (not (= lambda!316666 lambda!316620))))

(assert (=> bs!1370386 (= (and (= (reg!16145 r!7292) (regOne!32144 r!7292)) (= r!7292 (regTwo!32144 r!7292))) (= lambda!316666 lambda!316659))))

(assert (=> bs!1370387 (not (= lambda!316666 lambda!316658))))

(assert (=> bs!1370385 (not (= lambda!316666 lambda!316619))))

(assert (=> bs!1370385 (= lambda!316666 lambda!316621)))

(assert (=> d!1828174 true))

(assert (=> d!1828174 true))

(assert (=> d!1828174 true))

(assert (=> d!1828174 (= (Exists!2916 lambda!316665) (Exists!2916 lambda!316666))))

(declare-fun lt!2298560 () Unit!156892)

(declare-fun choose!44044 (Regex!15816 Regex!15816 List!63749) Unit!156892)

(assert (=> d!1828174 (= lt!2298560 (choose!44044 (reg!16145 r!7292) r!7292 s!2326))))

(assert (=> d!1828174 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828174 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1545 (reg!16145 r!7292) r!7292 s!2326) lt!2298560)))

(declare-fun m!6743938 () Bool)

(assert (=> bs!1370388 m!6743938))

(declare-fun m!6743940 () Bool)

(assert (=> bs!1370388 m!6743940))

(declare-fun m!6743942 () Bool)

(assert (=> bs!1370388 m!6743942))

(declare-fun m!6743944 () Bool)

(assert (=> bs!1370388 m!6743944))

(assert (=> b!5803746 d!1828174))

(declare-fun bs!1370391 () Bool)

(declare-fun d!1828176 () Bool)

(assert (= bs!1370391 (and d!1828176 d!1828174)))

(declare-fun lambda!316671 () Int)

(assert (=> bs!1370391 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316671 lambda!316665))))

(declare-fun bs!1370392 () Bool)

(assert (= bs!1370392 (and d!1828176 b!5803746)))

(assert (=> bs!1370392 (not (= lambda!316671 lambda!316620))))

(declare-fun bs!1370393 () Bool)

(assert (= bs!1370393 (and d!1828176 b!5804034)))

(assert (=> bs!1370393 (not (= lambda!316671 lambda!316659))))

(assert (=> bs!1370391 (not (= lambda!316671 lambda!316666))))

(declare-fun bs!1370394 () Bool)

(assert (= bs!1370394 (and d!1828176 b!5804039)))

(assert (=> bs!1370394 (not (= lambda!316671 lambda!316658))))

(assert (=> bs!1370392 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316671 lambda!316619))))

(assert (=> bs!1370392 (not (= lambda!316671 lambda!316621))))

(assert (=> d!1828176 true))

(assert (=> d!1828176 true))

(declare-fun bs!1370395 () Bool)

(assert (= bs!1370395 d!1828176))

(declare-fun lambda!316672 () Int)

(assert (=> bs!1370395 (not (= lambda!316672 lambda!316671))))

(assert (=> bs!1370391 (not (= lambda!316672 lambda!316665))))

(assert (=> bs!1370392 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316672 lambda!316620))))

(assert (=> bs!1370393 (not (= lambda!316672 lambda!316659))))

(assert (=> bs!1370391 (not (= lambda!316672 lambda!316666))))

(assert (=> bs!1370394 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316672 lambda!316658))))

(assert (=> bs!1370392 (not (= lambda!316672 lambda!316619))))

(assert (=> bs!1370392 (not (= lambda!316672 lambda!316621))))

(assert (=> d!1828176 true))

(assert (=> d!1828176 true))

(assert (=> d!1828176 (= (Exists!2916 lambda!316671) (Exists!2916 lambda!316672))))

(declare-fun lt!2298564 () Unit!156892)

(declare-fun choose!44045 (Regex!15816 List!63749) Unit!156892)

(assert (=> d!1828176 (= lt!2298564 (choose!44045 (reg!16145 r!7292) s!2326))))

(assert (=> d!1828176 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828176 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!597 (reg!16145 r!7292) s!2326) lt!2298564)))

(declare-fun m!6743966 () Bool)

(assert (=> bs!1370395 m!6743966))

(declare-fun m!6743968 () Bool)

(assert (=> bs!1370395 m!6743968))

(declare-fun m!6743970 () Bool)

(assert (=> bs!1370395 m!6743970))

(assert (=> bs!1370395 m!6743944))

(assert (=> b!5803746 d!1828176))

(declare-fun d!1828186 () Bool)

(declare-fun choose!44046 (Int) Bool)

(assert (=> d!1828186 (= (Exists!2916 lambda!316620) (choose!44046 lambda!316620))))

(declare-fun bs!1370396 () Bool)

(assert (= bs!1370396 d!1828186))

(declare-fun m!6743972 () Bool)

(assert (=> bs!1370396 m!6743972))

(assert (=> b!5803746 d!1828186))

(declare-fun d!1828188 () Bool)

(assert (=> d!1828188 (= (isEmpty!35534 s!2326) (is-Nil!63625 s!2326))))

(assert (=> b!5803746 d!1828188))

(declare-fun d!1828190 () Bool)

(assert (=> d!1828190 (= (Exists!2916 lambda!316619) (choose!44046 lambda!316619))))

(declare-fun bs!1370397 () Bool)

(assert (= bs!1370397 d!1828190))

(declare-fun m!6743974 () Bool)

(assert (=> bs!1370397 m!6743974))

(assert (=> b!5803746 d!1828190))

(declare-fun d!1828192 () Bool)

(assert (=> d!1828192 (= (Exists!2916 lambda!316621) (choose!44046 lambda!316621))))

(declare-fun bs!1370398 () Bool)

(assert (= bs!1370398 d!1828192))

(declare-fun m!6743976 () Bool)

(assert (=> bs!1370398 m!6743976))

(assert (=> b!5803746 d!1828192))

(declare-fun b!5804199 () Bool)

(declare-fun res!2447641 () Bool)

(declare-fun e!3563220 () Bool)

(assert (=> b!5804199 (=> (not res!2447641) (not e!3563220))))

(declare-fun lt!2298571 () Option!15825)

(declare-fun get!21962 (Option!15825) tuple2!65826)

(assert (=> b!5804199 (= res!2447641 (matchR!8001 (reg!16145 r!7292) (_1!36216 (get!21962 lt!2298571))))))

(declare-fun b!5804200 () Bool)

(declare-fun ++!14028 (List!63749 List!63749) List!63749)

(assert (=> b!5804200 (= e!3563220 (= (++!14028 (_1!36216 (get!21962 lt!2298571)) (_2!36216 (get!21962 lt!2298571))) s!2326))))

(declare-fun b!5804201 () Bool)

(declare-fun res!2447640 () Bool)

(assert (=> b!5804201 (=> (not res!2447640) (not e!3563220))))

(assert (=> b!5804201 (= res!2447640 (matchR!8001 r!7292 (_2!36216 (get!21962 lt!2298571))))))

(declare-fun b!5804202 () Bool)

(declare-fun e!3563222 () Bool)

(assert (=> b!5804202 (= e!3563222 (matchR!8001 r!7292 s!2326))))

(declare-fun d!1828194 () Bool)

(declare-fun e!3563221 () Bool)

(assert (=> d!1828194 e!3563221))

(declare-fun res!2447642 () Bool)

(assert (=> d!1828194 (=> res!2447642 e!3563221)))

(assert (=> d!1828194 (= res!2447642 e!3563220)))

(declare-fun res!2447639 () Bool)

(assert (=> d!1828194 (=> (not res!2447639) (not e!3563220))))

(assert (=> d!1828194 (= res!2447639 (isDefined!12528 lt!2298571))))

(declare-fun e!3563223 () Option!15825)

(assert (=> d!1828194 (= lt!2298571 e!3563223)))

(declare-fun c!1028163 () Bool)

(assert (=> d!1828194 (= c!1028163 e!3563222)))

(declare-fun res!2447643 () Bool)

(assert (=> d!1828194 (=> (not res!2447643) (not e!3563222))))

(assert (=> d!1828194 (= res!2447643 (matchR!8001 (reg!16145 r!7292) Nil!63625))))

(assert (=> d!1828194 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828194 (= (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326) lt!2298571)))

(declare-fun b!5804203 () Bool)

(assert (=> b!5804203 (= e!3563223 (Some!15824 (tuple2!65827 Nil!63625 s!2326)))))

(declare-fun b!5804204 () Bool)

(declare-fun e!3563219 () Option!15825)

(assert (=> b!5804204 (= e!3563219 None!15824)))

(declare-fun b!5804205 () Bool)

(declare-fun lt!2298573 () Unit!156892)

(declare-fun lt!2298572 () Unit!156892)

(assert (=> b!5804205 (= lt!2298573 lt!2298572)))

(assert (=> b!5804205 (= (++!14028 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2135 (List!63749 C!31902 List!63749 List!63749) Unit!156892)

(assert (=> b!5804205 (= lt!2298572 (lemmaMoveElementToOtherListKeepsConcatEq!2135 Nil!63625 (h!70073 s!2326) (t!377100 s!2326) s!2326))))

(assert (=> b!5804205 (= e!3563219 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326) s!2326))))

(declare-fun b!5804206 () Bool)

(assert (=> b!5804206 (= e!3563221 (not (isDefined!12528 lt!2298571)))))

(declare-fun b!5804207 () Bool)

(assert (=> b!5804207 (= e!3563223 e!3563219)))

(declare-fun c!1028164 () Bool)

(assert (=> b!5804207 (= c!1028164 (is-Nil!63625 s!2326))))

(assert (= (and d!1828194 res!2447643) b!5804202))

(assert (= (and d!1828194 c!1028163) b!5804203))

(assert (= (and d!1828194 (not c!1028163)) b!5804207))

(assert (= (and b!5804207 c!1028164) b!5804204))

(assert (= (and b!5804207 (not c!1028164)) b!5804205))

(assert (= (and d!1828194 res!2447639) b!5804199))

(assert (= (and b!5804199 res!2447641) b!5804201))

(assert (= (and b!5804201 res!2447640) b!5804200))

(assert (= (and d!1828194 (not res!2447642)) b!5804206))

(declare-fun m!6743978 () Bool)

(assert (=> b!5804205 m!6743978))

(assert (=> b!5804205 m!6743978))

(declare-fun m!6743980 () Bool)

(assert (=> b!5804205 m!6743980))

(declare-fun m!6743982 () Bool)

(assert (=> b!5804205 m!6743982))

(assert (=> b!5804205 m!6743978))

(declare-fun m!6743984 () Bool)

(assert (=> b!5804205 m!6743984))

(declare-fun m!6743986 () Bool)

(assert (=> d!1828194 m!6743986))

(declare-fun m!6743988 () Bool)

(assert (=> d!1828194 m!6743988))

(assert (=> d!1828194 m!6743944))

(assert (=> b!5804206 m!6743986))

(declare-fun m!6743990 () Bool)

(assert (=> b!5804200 m!6743990))

(declare-fun m!6743992 () Bool)

(assert (=> b!5804200 m!6743992))

(assert (=> b!5804202 m!6743600))

(assert (=> b!5804201 m!6743990))

(declare-fun m!6743994 () Bool)

(assert (=> b!5804201 m!6743994))

(assert (=> b!5804199 m!6743990))

(declare-fun m!6743996 () Bool)

(assert (=> b!5804199 m!6743996))

(assert (=> b!5803746 d!1828194))

(declare-fun bs!1370399 () Bool)

(declare-fun d!1828196 () Bool)

(assert (= bs!1370399 (and d!1828196 d!1828176)))

(declare-fun lambda!316679 () Int)

(assert (=> bs!1370399 (= (= r!7292 (Star!15816 (reg!16145 r!7292))) (= lambda!316679 lambda!316671))))

(declare-fun bs!1370400 () Bool)

(assert (= bs!1370400 (and d!1828196 d!1828174)))

(assert (=> bs!1370400 (= lambda!316679 lambda!316665)))

(declare-fun bs!1370401 () Bool)

(assert (= bs!1370401 (and d!1828196 b!5803746)))

(assert (=> bs!1370401 (not (= lambda!316679 lambda!316620))))

(declare-fun bs!1370402 () Bool)

(assert (= bs!1370402 (and d!1828196 b!5804034)))

(assert (=> bs!1370402 (not (= lambda!316679 lambda!316659))))

(assert (=> bs!1370400 (not (= lambda!316679 lambda!316666))))

(declare-fun bs!1370403 () Bool)

(assert (= bs!1370403 (and d!1828196 b!5804039)))

(assert (=> bs!1370403 (not (= lambda!316679 lambda!316658))))

(assert (=> bs!1370401 (= lambda!316679 lambda!316619)))

(assert (=> bs!1370399 (not (= lambda!316679 lambda!316672))))

(assert (=> bs!1370401 (not (= lambda!316679 lambda!316621))))

(assert (=> d!1828196 true))

(assert (=> d!1828196 true))

(assert (=> d!1828196 true))

(assert (=> d!1828196 (= (isDefined!12528 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326)) (Exists!2916 lambda!316679))))

(declare-fun lt!2298576 () Unit!156892)

(declare-fun choose!44047 (Regex!15816 Regex!15816 List!63749) Unit!156892)

(assert (=> d!1828196 (= lt!2298576 (choose!44047 (reg!16145 r!7292) r!7292 s!2326))))

(assert (=> d!1828196 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828196 (= (lemmaFindConcatSeparationEquivalentToExists!2003 (reg!16145 r!7292) r!7292 s!2326) lt!2298576)))

(declare-fun bs!1370404 () Bool)

(assert (= bs!1370404 d!1828196))

(assert (=> bs!1370404 m!6743642))

(assert (=> bs!1370404 m!6743642))

(assert (=> bs!1370404 m!6743644))

(declare-fun m!6743998 () Bool)

(assert (=> bs!1370404 m!6743998))

(assert (=> bs!1370404 m!6743944))

(declare-fun m!6744000 () Bool)

(assert (=> bs!1370404 m!6744000))

(assert (=> b!5803746 d!1828196))

(declare-fun bs!1370405 () Bool)

(declare-fun d!1828198 () Bool)

(assert (= bs!1370405 (and d!1828198 d!1828112)))

(declare-fun lambda!316680 () Int)

(assert (=> bs!1370405 (= lambda!316680 lambda!316647)))

(declare-fun bs!1370406 () Bool)

(assert (= bs!1370406 (and d!1828198 d!1828136)))

(assert (=> bs!1370406 (= lambda!316680 lambda!316653)))

(assert (=> d!1828198 (= (inv!82788 (h!70072 zl!343)) (forall!14924 (exprs!5700 (h!70072 zl!343)) lambda!316680))))

(declare-fun bs!1370407 () Bool)

(assert (= bs!1370407 d!1828198))

(declare-fun m!6744002 () Bool)

(assert (=> bs!1370407 m!6744002))

(assert (=> b!5803736 d!1828198))

(declare-fun bs!1370409 () Bool)

(declare-fun d!1828200 () Bool)

(assert (= bs!1370409 (and d!1828200 d!1828112)))

(declare-fun lambda!316685 () Int)

(assert (=> bs!1370409 (= lambda!316685 lambda!316647)))

(declare-fun bs!1370410 () Bool)

(assert (= bs!1370410 (and d!1828200 d!1828136)))

(assert (=> bs!1370410 (= lambda!316685 lambda!316653)))

(declare-fun bs!1370411 () Bool)

(assert (= bs!1370411 (and d!1828200 d!1828198)))

(assert (=> bs!1370411 (= lambda!316685 lambda!316680)))

(declare-fun b!5804247 () Bool)

(declare-fun e!3563250 () Bool)

(declare-fun lt!2298579 () Regex!15816)

(assert (=> b!5804247 (= e!3563250 (= lt!2298579 (head!12244 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5804249 () Bool)

(declare-fun e!3563249 () Regex!15816)

(assert (=> b!5804249 (= e!3563249 (Union!15816 (h!70071 (unfocusZipperList!1244 zl!343)) (generalisedUnion!1679 (t!377098 (unfocusZipperList!1244 zl!343)))))))

(declare-fun b!5804250 () Bool)

(declare-fun e!3563251 () Regex!15816)

(assert (=> b!5804250 (= e!3563251 e!3563249)))

(declare-fun c!1028179 () Bool)

(assert (=> b!5804250 (= c!1028179 (is-Cons!63623 (unfocusZipperList!1244 zl!343)))))

(declare-fun b!5804251 () Bool)

(assert (=> b!5804251 (= e!3563249 EmptyLang!15816)))

(declare-fun b!5804252 () Bool)

(assert (=> b!5804252 (= e!3563251 (h!70071 (unfocusZipperList!1244 zl!343)))))

(declare-fun b!5804253 () Bool)

(declare-fun isUnion!729 (Regex!15816) Bool)

(assert (=> b!5804253 (= e!3563250 (isUnion!729 lt!2298579))))

(declare-fun e!3563247 () Bool)

(assert (=> d!1828200 e!3563247))

(declare-fun res!2447660 () Bool)

(assert (=> d!1828200 (=> (not res!2447660) (not e!3563247))))

(assert (=> d!1828200 (= res!2447660 (validRegex!7552 lt!2298579))))

(assert (=> d!1828200 (= lt!2298579 e!3563251)))

(declare-fun c!1028177 () Bool)

(declare-fun e!3563248 () Bool)

(assert (=> d!1828200 (= c!1028177 e!3563248)))

(declare-fun res!2447659 () Bool)

(assert (=> d!1828200 (=> (not res!2447659) (not e!3563248))))

(assert (=> d!1828200 (= res!2447659 (is-Cons!63623 (unfocusZipperList!1244 zl!343)))))

(assert (=> d!1828200 (forall!14924 (unfocusZipperList!1244 zl!343) lambda!316685)))

(assert (=> d!1828200 (= (generalisedUnion!1679 (unfocusZipperList!1244 zl!343)) lt!2298579)))

(declare-fun b!5804248 () Bool)

(declare-fun e!3563252 () Bool)

(assert (=> b!5804248 (= e!3563247 e!3563252)))

(declare-fun c!1028178 () Bool)

(assert (=> b!5804248 (= c!1028178 (isEmpty!35537 (unfocusZipperList!1244 zl!343)))))

(declare-fun b!5804254 () Bool)

(declare-fun isEmptyLang!1299 (Regex!15816) Bool)

(assert (=> b!5804254 (= e!3563252 (isEmptyLang!1299 lt!2298579))))

(declare-fun b!5804255 () Bool)

(assert (=> b!5804255 (= e!3563252 e!3563250)))

(declare-fun c!1028180 () Bool)

(assert (=> b!5804255 (= c!1028180 (isEmpty!35537 (tail!11339 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5804256 () Bool)

(assert (=> b!5804256 (= e!3563248 (isEmpty!35537 (t!377098 (unfocusZipperList!1244 zl!343))))))

(assert (= (and d!1828200 res!2447659) b!5804256))

(assert (= (and d!1828200 c!1028177) b!5804252))

(assert (= (and d!1828200 (not c!1028177)) b!5804250))

(assert (= (and b!5804250 c!1028179) b!5804249))

(assert (= (and b!5804250 (not c!1028179)) b!5804251))

(assert (= (and d!1828200 res!2447660) b!5804248))

(assert (= (and b!5804248 c!1028178) b!5804254))

(assert (= (and b!5804248 (not c!1028178)) b!5804255))

(assert (= (and b!5804255 c!1028180) b!5804247))

(assert (= (and b!5804255 (not c!1028180)) b!5804253))

(declare-fun m!6744004 () Bool)

(assert (=> d!1828200 m!6744004))

(assert (=> d!1828200 m!6743634))

(declare-fun m!6744006 () Bool)

(assert (=> d!1828200 m!6744006))

(assert (=> b!5804247 m!6743634))

(declare-fun m!6744008 () Bool)

(assert (=> b!5804247 m!6744008))

(assert (=> b!5804248 m!6743634))

(declare-fun m!6744010 () Bool)

(assert (=> b!5804248 m!6744010))

(declare-fun m!6744012 () Bool)

(assert (=> b!5804256 m!6744012))

(declare-fun m!6744014 () Bool)

(assert (=> b!5804254 m!6744014))

(declare-fun m!6744016 () Bool)

(assert (=> b!5804253 m!6744016))

(assert (=> b!5804255 m!6743634))

(declare-fun m!6744018 () Bool)

(assert (=> b!5804255 m!6744018))

(assert (=> b!5804255 m!6744018))

(declare-fun m!6744020 () Bool)

(assert (=> b!5804255 m!6744020))

(declare-fun m!6744022 () Bool)

(assert (=> b!5804249 m!6744022))

(assert (=> b!5803747 d!1828200))

(declare-fun bs!1370414 () Bool)

(declare-fun d!1828202 () Bool)

(assert (= bs!1370414 (and d!1828202 d!1828112)))

(declare-fun lambda!316688 () Int)

(assert (=> bs!1370414 (= lambda!316688 lambda!316647)))

(declare-fun bs!1370415 () Bool)

(assert (= bs!1370415 (and d!1828202 d!1828136)))

(assert (=> bs!1370415 (= lambda!316688 lambda!316653)))

(declare-fun bs!1370416 () Bool)

(assert (= bs!1370416 (and d!1828202 d!1828198)))

(assert (=> bs!1370416 (= lambda!316688 lambda!316680)))

(declare-fun bs!1370417 () Bool)

(assert (= bs!1370417 (and d!1828202 d!1828200)))

(assert (=> bs!1370417 (= lambda!316688 lambda!316685)))

(declare-fun lt!2298582 () List!63747)

(assert (=> d!1828202 (forall!14924 lt!2298582 lambda!316688)))

(declare-fun e!3563255 () List!63747)

(assert (=> d!1828202 (= lt!2298582 e!3563255)))

(declare-fun c!1028183 () Bool)

(assert (=> d!1828202 (= c!1028183 (is-Cons!63624 zl!343))))

(assert (=> d!1828202 (= (unfocusZipperList!1244 zl!343) lt!2298582)))

(declare-fun b!5804261 () Bool)

(assert (=> b!5804261 (= e!3563255 (Cons!63623 (generalisedConcat!1431 (exprs!5700 (h!70072 zl!343))) (unfocusZipperList!1244 (t!377099 zl!343))))))

(declare-fun b!5804262 () Bool)

(assert (=> b!5804262 (= e!3563255 Nil!63623)))

(assert (= (and d!1828202 c!1028183) b!5804261))

(assert (= (and d!1828202 (not c!1028183)) b!5804262))

(declare-fun m!6744030 () Bool)

(assert (=> d!1828202 m!6744030))

(assert (=> b!5804261 m!6743620))

(declare-fun m!6744032 () Bool)

(assert (=> b!5804261 m!6744032))

(assert (=> b!5803747 d!1828202))

(declare-fun d!1828206 () Bool)

(declare-fun e!3563258 () Bool)

(assert (=> d!1828206 e!3563258))

(declare-fun res!2447663 () Bool)

(assert (=> d!1828206 (=> (not res!2447663) (not e!3563258))))

(declare-fun lt!2298585 () List!63748)

(declare-fun noDuplicate!1711 (List!63748) Bool)

(assert (=> d!1828206 (= res!2447663 (noDuplicate!1711 lt!2298585))))

(declare-fun choose!44048 ((Set Context!10400)) List!63748)

(assert (=> d!1828206 (= lt!2298585 (choose!44048 z!1189))))

(assert (=> d!1828206 (= (toList!9600 z!1189) lt!2298585)))

(declare-fun b!5804265 () Bool)

(declare-fun content!11645 (List!63748) (Set Context!10400))

(assert (=> b!5804265 (= e!3563258 (= (content!11645 lt!2298585) z!1189))))

(assert (= (and d!1828206 res!2447663) b!5804265))

(declare-fun m!6744034 () Bool)

(assert (=> d!1828206 m!6744034))

(declare-fun m!6744036 () Bool)

(assert (=> d!1828206 m!6744036))

(declare-fun m!6744038 () Bool)

(assert (=> b!5804265 m!6744038))

(assert (=> b!5803734 d!1828206))

(declare-fun d!1828208 () Bool)

(declare-fun lt!2298586 () Regex!15816)

(assert (=> d!1828208 (validRegex!7552 lt!2298586)))

(assert (=> d!1828208 (= lt!2298586 (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))

(assert (=> d!1828208 (= (unfocusZipper!1558 (Cons!63624 lt!2298442 Nil!63624)) lt!2298586)))

(declare-fun bs!1370418 () Bool)

(assert (= bs!1370418 d!1828208))

(declare-fun m!6744040 () Bool)

(assert (=> bs!1370418 m!6744040))

(declare-fun m!6744042 () Bool)

(assert (=> bs!1370418 m!6744042))

(assert (=> bs!1370418 m!6744042))

(declare-fun m!6744044 () Bool)

(assert (=> bs!1370418 m!6744044))

(assert (=> b!5803733 d!1828208))

(declare-fun d!1828210 () Bool)

(declare-fun lt!2298587 () Regex!15816)

(assert (=> d!1828210 (validRegex!7552 lt!2298587)))

(assert (=> d!1828210 (= lt!2298587 (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))

(assert (=> d!1828210 (= (unfocusZipper!1558 (Cons!63624 lt!2298456 Nil!63624)) lt!2298587)))

(declare-fun bs!1370419 () Bool)

(assert (= bs!1370419 d!1828210))

(declare-fun m!6744046 () Bool)

(assert (=> bs!1370419 m!6744046))

(declare-fun m!6744048 () Bool)

(assert (=> bs!1370419 m!6744048))

(assert (=> bs!1370419 m!6744048))

(declare-fun m!6744050 () Bool)

(assert (=> bs!1370419 m!6744050))

(assert (=> b!5803743 d!1828210))

(declare-fun d!1828212 () Bool)

(assert (=> d!1828212 (= (isEmpty!35533 (t!377099 zl!343)) (is-Nil!63624 (t!377099 zl!343)))))

(assert (=> b!5803745 d!1828212))

(declare-fun d!1828214 () Bool)

(declare-fun c!1028185 () Bool)

(assert (=> d!1828214 (= c!1028185 (and (is-ElementMatch!15816 r!7292) (= (c!1028045 r!7292) (h!70073 s!2326))))))

(declare-fun e!3563262 () (Set Context!10400))

(assert (=> d!1828214 (= (derivationStepZipperDown!1154 r!7292 (Context!10401 Nil!63623) (h!70073 s!2326)) e!3563262)))

(declare-fun bm!453010 () Bool)

(declare-fun call!453019 () List!63747)

(declare-fun call!453016 () List!63747)

(assert (=> bm!453010 (= call!453019 call!453016)))

(declare-fun c!1028188 () Bool)

(declare-fun bm!453011 () Bool)

(declare-fun c!1028187 () Bool)

(assert (=> bm!453011 (= call!453016 ($colon$colon!1797 (exprs!5700 (Context!10401 Nil!63623)) (ite (or c!1028188 c!1028187) (regTwo!32144 r!7292) r!7292)))))

(declare-fun b!5804266 () Bool)

(declare-fun e!3563263 () (Set Context!10400))

(declare-fun call!453020 () (Set Context!10400))

(assert (=> b!5804266 (= e!3563263 call!453020)))

(declare-fun b!5804267 () Bool)

(declare-fun e!3563261 () Bool)

(assert (=> b!5804267 (= e!3563261 (nullable!5842 (regOne!32144 r!7292)))))

(declare-fun b!5804268 () Bool)

(declare-fun e!3563259 () (Set Context!10400))

(assert (=> b!5804268 (= e!3563259 e!3563263)))

(assert (=> b!5804268 (= c!1028187 (is-Concat!24661 r!7292))))

(declare-fun bm!453012 () Bool)

(declare-fun c!1028186 () Bool)

(declare-fun call!453015 () (Set Context!10400))

(assert (=> bm!453012 (= call!453015 (derivationStepZipperDown!1154 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))) (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019)) (h!70073 s!2326)))))

(declare-fun b!5804269 () Bool)

(assert (=> b!5804269 (= e!3563262 (set.insert (Context!10401 Nil!63623) (as set.empty (Set Context!10400))))))

(declare-fun b!5804270 () Bool)

(declare-fun e!3563260 () (Set Context!10400))

(declare-fun call!453018 () (Set Context!10400))

(assert (=> b!5804270 (= e!3563260 (set.union call!453015 call!453018))))

(declare-fun bm!453013 () Bool)

(declare-fun call!453017 () (Set Context!10400))

(assert (=> bm!453013 (= call!453020 call!453017)))

(declare-fun b!5804271 () Bool)

(assert (=> b!5804271 (= e!3563262 e!3563260)))

(assert (=> b!5804271 (= c!1028186 (is-Union!15816 r!7292))))

(declare-fun bm!453014 () Bool)

(assert (=> bm!453014 (= call!453017 call!453015)))

(declare-fun bm!453015 () Bool)

(assert (=> bm!453015 (= call!453018 (derivationStepZipperDown!1154 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)) (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016)) (h!70073 s!2326)))))

(declare-fun b!5804272 () Bool)

(declare-fun e!3563264 () (Set Context!10400))

(assert (=> b!5804272 (= e!3563264 call!453020)))

(declare-fun b!5804273 () Bool)

(declare-fun c!1028184 () Bool)

(assert (=> b!5804273 (= c!1028184 (is-Star!15816 r!7292))))

(assert (=> b!5804273 (= e!3563263 e!3563264)))

(declare-fun b!5804274 () Bool)

(assert (=> b!5804274 (= e!3563259 (set.union call!453018 call!453017))))

(declare-fun b!5804275 () Bool)

(assert (=> b!5804275 (= c!1028188 e!3563261)))

(declare-fun res!2447664 () Bool)

(assert (=> b!5804275 (=> (not res!2447664) (not e!3563261))))

(assert (=> b!5804275 (= res!2447664 (is-Concat!24661 r!7292))))

(assert (=> b!5804275 (= e!3563260 e!3563259)))

(declare-fun b!5804276 () Bool)

(assert (=> b!5804276 (= e!3563264 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828214 c!1028185) b!5804269))

(assert (= (and d!1828214 (not c!1028185)) b!5804271))

(assert (= (and b!5804271 c!1028186) b!5804270))

(assert (= (and b!5804271 (not c!1028186)) b!5804275))

(assert (= (and b!5804275 res!2447664) b!5804267))

(assert (= (and b!5804275 c!1028188) b!5804274))

(assert (= (and b!5804275 (not c!1028188)) b!5804268))

(assert (= (and b!5804268 c!1028187) b!5804266))

(assert (= (and b!5804268 (not c!1028187)) b!5804273))

(assert (= (and b!5804273 c!1028184) b!5804272))

(assert (= (and b!5804273 (not c!1028184)) b!5804276))

(assert (= (or b!5804266 b!5804272) bm!453010))

(assert (= (or b!5804266 b!5804272) bm!453013))

(assert (= (or b!5804274 bm!453010) bm!453011))

(assert (= (or b!5804274 bm!453013) bm!453014))

(assert (= (or b!5804270 b!5804274) bm!453015))

(assert (= (or b!5804270 bm!453014) bm!453012))

(declare-fun m!6744052 () Bool)

(assert (=> bm!453011 m!6744052))

(declare-fun m!6744054 () Bool)

(assert (=> bm!453012 m!6744054))

(declare-fun m!6744056 () Bool)

(assert (=> b!5804269 m!6744056))

(declare-fun m!6744058 () Bool)

(assert (=> b!5804267 m!6744058))

(declare-fun m!6744060 () Bool)

(assert (=> bm!453015 m!6744060))

(assert (=> b!5803724 d!1828214))

(declare-fun bm!453016 () Bool)

(declare-fun call!453021 () (Set Context!10400))

(assert (=> bm!453016 (= call!453021 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70073 s!2326)))))

(declare-fun b!5804277 () Bool)

(declare-fun e!3563265 () (Set Context!10400))

(assert (=> b!5804277 (= e!3563265 call!453021)))

(declare-fun b!5804278 () Bool)

(declare-fun e!3563266 () (Set Context!10400))

(assert (=> b!5804278 (= e!3563266 e!3563265)))

(declare-fun c!1028189 () Bool)

(assert (=> b!5804278 (= c!1028189 (is-Cons!63623 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))

(declare-fun b!5804279 () Bool)

(declare-fun e!3563267 () Bool)

(assert (=> b!5804279 (= e!3563267 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(declare-fun b!5804280 () Bool)

(assert (=> b!5804280 (= e!3563265 (as set.empty (Set Context!10400)))))

(declare-fun d!1828216 () Bool)

(declare-fun c!1028190 () Bool)

(assert (=> d!1828216 (= c!1028190 e!3563267)))

(declare-fun res!2447665 () Bool)

(assert (=> d!1828216 (=> (not res!2447665) (not e!3563267))))

(assert (=> d!1828216 (= res!2447665 (is-Cons!63623 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))

(assert (=> d!1828216 (= (derivationStepZipperUp!1080 (Context!10401 (Cons!63623 r!7292 Nil!63623)) (h!70073 s!2326)) e!3563266)))

(declare-fun b!5804281 () Bool)

(assert (=> b!5804281 (= e!3563266 (set.union call!453021 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70073 s!2326))))))

(assert (= (and d!1828216 res!2447665) b!5804279))

(assert (= (and d!1828216 c!1028190) b!5804281))

(assert (= (and d!1828216 (not c!1028190)) b!5804278))

(assert (= (and b!5804278 c!1028189) b!5804277))

(assert (= (and b!5804278 (not c!1028189)) b!5804280))

(assert (= (or b!5804281 b!5804277) bm!453016))

(declare-fun m!6744062 () Bool)

(assert (=> bm!453016 m!6744062))

(declare-fun m!6744064 () Bool)

(assert (=> b!5804279 m!6744064))

(declare-fun m!6744066 () Bool)

(assert (=> b!5804281 m!6744066))

(assert (=> b!5803724 d!1828216))

(declare-fun bs!1370420 () Bool)

(declare-fun d!1828218 () Bool)

(assert (= bs!1370420 (and d!1828218 b!5803740)))

(declare-fun lambda!316689 () Int)

(assert (=> bs!1370420 (= lambda!316689 lambda!316622)))

(declare-fun bs!1370421 () Bool)

(assert (= bs!1370421 (and d!1828218 d!1828130)))

(assert (=> bs!1370421 (= lambda!316689 lambda!316650)))

(declare-fun bs!1370422 () Bool)

(assert (= bs!1370422 (and d!1828218 d!1828170)))

(assert (=> bs!1370422 (= lambda!316689 lambda!316660)))

(assert (=> d!1828218 true))

(assert (=> d!1828218 (= (derivationStepZipper!1885 z!1189 (h!70073 s!2326)) (flatMap!1423 z!1189 lambda!316689))))

(declare-fun bs!1370423 () Bool)

(assert (= bs!1370423 d!1828218))

(declare-fun m!6744068 () Bool)

(assert (=> bs!1370423 m!6744068))

(assert (=> b!5803724 d!1828218))

(declare-fun b!5804293 () Bool)

(declare-fun e!3563270 () Bool)

(declare-fun tp!1602303 () Bool)

(declare-fun tp!1602302 () Bool)

(assert (=> b!5804293 (= e!3563270 (and tp!1602303 tp!1602302))))

(declare-fun b!5804294 () Bool)

(declare-fun tp!1602300 () Bool)

(assert (=> b!5804294 (= e!3563270 tp!1602300)))

(declare-fun b!5804295 () Bool)

(declare-fun tp!1602301 () Bool)

(declare-fun tp!1602299 () Bool)

(assert (=> b!5804295 (= e!3563270 (and tp!1602301 tp!1602299))))

(assert (=> b!5803725 (= tp!1602257 e!3563270)))

(declare-fun b!5804292 () Bool)

(assert (=> b!5804292 (= e!3563270 tp_is_empty!40885)))

(assert (= (and b!5803725 (is-ElementMatch!15816 (regOne!32145 r!7292))) b!5804292))

(assert (= (and b!5803725 (is-Concat!24661 (regOne!32145 r!7292))) b!5804293))

(assert (= (and b!5803725 (is-Star!15816 (regOne!32145 r!7292))) b!5804294))

(assert (= (and b!5803725 (is-Union!15816 (regOne!32145 r!7292))) b!5804295))

(declare-fun b!5804301 () Bool)

(declare-fun e!3563273 () Bool)

(declare-fun tp!1602308 () Bool)

(declare-fun tp!1602307 () Bool)

(assert (=> b!5804301 (= e!3563273 (and tp!1602308 tp!1602307))))

(declare-fun b!5804302 () Bool)

(declare-fun tp!1602305 () Bool)

(assert (=> b!5804302 (= e!3563273 tp!1602305)))

(declare-fun b!5804303 () Bool)

(declare-fun tp!1602306 () Bool)

(declare-fun tp!1602304 () Bool)

(assert (=> b!5804303 (= e!3563273 (and tp!1602306 tp!1602304))))

(assert (=> b!5803725 (= tp!1602249 e!3563273)))

(declare-fun b!5804300 () Bool)

(assert (=> b!5804300 (= e!3563273 tp_is_empty!40885)))

(assert (= (and b!5803725 (is-ElementMatch!15816 (regTwo!32145 r!7292))) b!5804300))

(assert (= (and b!5803725 (is-Concat!24661 (regTwo!32145 r!7292))) b!5804301))

(assert (= (and b!5803725 (is-Star!15816 (regTwo!32145 r!7292))) b!5804302))

(assert (= (and b!5803725 (is-Union!15816 (regTwo!32145 r!7292))) b!5804303))

(declare-fun b!5804310 () Bool)

(declare-fun e!3563276 () Bool)

(declare-fun tp!1602311 () Bool)

(assert (=> b!5804310 (= e!3563276 (and tp_is_empty!40885 tp!1602311))))

(assert (=> b!5803727 (= tp!1602254 e!3563276)))

(assert (= (and b!5803727 (is-Cons!63625 (t!377100 s!2326))) b!5804310))

(declare-fun b!5804314 () Bool)

(declare-fun e!3563279 () Bool)

(declare-fun tp!1602316 () Bool)

(declare-fun tp!1602315 () Bool)

(assert (=> b!5804314 (= e!3563279 (and tp!1602316 tp!1602315))))

(declare-fun b!5804315 () Bool)

(declare-fun tp!1602313 () Bool)

(assert (=> b!5804315 (= e!3563279 tp!1602313)))

(declare-fun b!5804316 () Bool)

(declare-fun tp!1602314 () Bool)

(declare-fun tp!1602312 () Bool)

(assert (=> b!5804316 (= e!3563279 (and tp!1602314 tp!1602312))))

(assert (=> b!5803737 (= tp!1602253 e!3563279)))

(declare-fun b!5804313 () Bool)

(assert (=> b!5804313 (= e!3563279 tp_is_empty!40885)))

(assert (= (and b!5803737 (is-ElementMatch!15816 (reg!16145 r!7292))) b!5804313))

(assert (= (and b!5803737 (is-Concat!24661 (reg!16145 r!7292))) b!5804314))

(assert (= (and b!5803737 (is-Star!15816 (reg!16145 r!7292))) b!5804315))

(assert (= (and b!5803737 (is-Union!15816 (reg!16145 r!7292))) b!5804316))

(declare-fun condSetEmpty!39051 () Bool)

(assert (=> setNonEmpty!39045 (= condSetEmpty!39051 (= setRest!39045 (as set.empty (Set Context!10400))))))

(declare-fun setRes!39051 () Bool)

(assert (=> setNonEmpty!39045 (= tp!1602255 setRes!39051)))

(declare-fun setIsEmpty!39051 () Bool)

(assert (=> setIsEmpty!39051 setRes!39051))

(declare-fun tp!1602321 () Bool)

(declare-fun e!3563292 () Bool)

(declare-fun setNonEmpty!39051 () Bool)

(declare-fun setElem!39051 () Context!10400)

(assert (=> setNonEmpty!39051 (= setRes!39051 (and tp!1602321 (inv!82788 setElem!39051) e!3563292))))

(declare-fun setRest!39051 () (Set Context!10400))

(assert (=> setNonEmpty!39051 (= setRest!39045 (set.union (set.insert setElem!39051 (as set.empty (Set Context!10400))) setRest!39051))))

(declare-fun b!5804341 () Bool)

(declare-fun tp!1602322 () Bool)

(assert (=> b!5804341 (= e!3563292 tp!1602322)))

(assert (= (and setNonEmpty!39045 condSetEmpty!39051) setIsEmpty!39051))

(assert (= (and setNonEmpty!39045 (not condSetEmpty!39051)) setNonEmpty!39051))

(assert (= setNonEmpty!39051 b!5804341))

(declare-fun m!6744070 () Bool)

(assert (=> setNonEmpty!39051 m!6744070))

(declare-fun b!5804349 () Bool)

(declare-fun e!3563298 () Bool)

(declare-fun tp!1602327 () Bool)

(assert (=> b!5804349 (= e!3563298 tp!1602327)))

(declare-fun tp!1602328 () Bool)

(declare-fun e!3563297 () Bool)

(declare-fun b!5804348 () Bool)

(assert (=> b!5804348 (= e!3563297 (and (inv!82788 (h!70072 (t!377099 zl!343))) e!3563298 tp!1602328))))

(assert (=> b!5803736 (= tp!1602250 e!3563297)))

(assert (= b!5804348 b!5804349))

(assert (= (and b!5803736 (is-Cons!63624 (t!377099 zl!343))) b!5804348))

(declare-fun m!6744072 () Bool)

(assert (=> b!5804348 m!6744072))

(declare-fun b!5804354 () Bool)

(declare-fun e!3563301 () Bool)

(declare-fun tp!1602333 () Bool)

(declare-fun tp!1602334 () Bool)

(assert (=> b!5804354 (= e!3563301 (and tp!1602333 tp!1602334))))

(assert (=> b!5803738 (= tp!1602252 e!3563301)))

(assert (= (and b!5803738 (is-Cons!63623 (exprs!5700 setElem!39045))) b!5804354))

(declare-fun b!5804355 () Bool)

(declare-fun e!3563302 () Bool)

(declare-fun tp!1602335 () Bool)

(declare-fun tp!1602336 () Bool)

(assert (=> b!5804355 (= e!3563302 (and tp!1602335 tp!1602336))))

(assert (=> b!5803723 (= tp!1602258 e!3563302)))

(assert (= (and b!5803723 (is-Cons!63623 (exprs!5700 (h!70072 zl!343)))) b!5804355))

(declare-fun b!5804357 () Bool)

(declare-fun e!3563303 () Bool)

(declare-fun tp!1602341 () Bool)

(declare-fun tp!1602340 () Bool)

(assert (=> b!5804357 (= e!3563303 (and tp!1602341 tp!1602340))))

(declare-fun b!5804358 () Bool)

(declare-fun tp!1602338 () Bool)

(assert (=> b!5804358 (= e!3563303 tp!1602338)))

(declare-fun b!5804359 () Bool)

(declare-fun tp!1602339 () Bool)

(declare-fun tp!1602337 () Bool)

(assert (=> b!5804359 (= e!3563303 (and tp!1602339 tp!1602337))))

(assert (=> b!5803739 (= tp!1602251 e!3563303)))

(declare-fun b!5804356 () Bool)

(assert (=> b!5804356 (= e!3563303 tp_is_empty!40885)))

(assert (= (and b!5803739 (is-ElementMatch!15816 (regOne!32144 r!7292))) b!5804356))

(assert (= (and b!5803739 (is-Concat!24661 (regOne!32144 r!7292))) b!5804357))

(assert (= (and b!5803739 (is-Star!15816 (regOne!32144 r!7292))) b!5804358))

(assert (= (and b!5803739 (is-Union!15816 (regOne!32144 r!7292))) b!5804359))

(declare-fun b!5804361 () Bool)

(declare-fun e!3563304 () Bool)

(declare-fun tp!1602346 () Bool)

(declare-fun tp!1602345 () Bool)

(assert (=> b!5804361 (= e!3563304 (and tp!1602346 tp!1602345))))

(declare-fun b!5804362 () Bool)

(declare-fun tp!1602343 () Bool)

(assert (=> b!5804362 (= e!3563304 tp!1602343)))

(declare-fun b!5804363 () Bool)

(declare-fun tp!1602344 () Bool)

(declare-fun tp!1602342 () Bool)

(assert (=> b!5804363 (= e!3563304 (and tp!1602344 tp!1602342))))

(assert (=> b!5803739 (= tp!1602256 e!3563304)))

(declare-fun b!5804360 () Bool)

(assert (=> b!5804360 (= e!3563304 tp_is_empty!40885)))

(assert (= (and b!5803739 (is-ElementMatch!15816 (regTwo!32144 r!7292))) b!5804360))

(assert (= (and b!5803739 (is-Concat!24661 (regTwo!32144 r!7292))) b!5804361))

(assert (= (and b!5803739 (is-Star!15816 (regTwo!32144 r!7292))) b!5804362))

(assert (= (and b!5803739 (is-Union!15816 (regTwo!32144 r!7292))) b!5804363))

(declare-fun b_lambda!218793 () Bool)

(assert (= b_lambda!218787 (or b!5803740 b_lambda!218793)))

(declare-fun bs!1370424 () Bool)

(declare-fun d!1828220 () Bool)

(assert (= bs!1370424 (and d!1828220 b!5803740)))

(assert (=> bs!1370424 (= (dynLambda!24909 lambda!316622 lt!2298442) (derivationStepZipperUp!1080 lt!2298442 (h!70073 s!2326)))))

(assert (=> bs!1370424 m!6743628))

(assert (=> d!1828150 d!1828220))

(declare-fun b_lambda!218795 () Bool)

(assert (= b_lambda!218785 (or b!5803740 b_lambda!218795)))

(declare-fun bs!1370425 () Bool)

(declare-fun d!1828222 () Bool)

(assert (= bs!1370425 (and d!1828222 b!5803740)))

(assert (=> bs!1370425 (= (dynLambda!24909 lambda!316622 lt!2298456) (derivationStepZipperUp!1080 lt!2298456 (h!70073 s!2326)))))

(assert (=> bs!1370425 m!6743666))

(assert (=> d!1828128 d!1828222))

(declare-fun b_lambda!218797 () Bool)

(assert (= b_lambda!218783 (or b!5803740 b_lambda!218797)))

(declare-fun bs!1370426 () Bool)

(declare-fun d!1828224 () Bool)

(assert (= bs!1370426 (and d!1828224 b!5803740)))

(assert (=> bs!1370426 (= (dynLambda!24909 lambda!316622 lt!2298451) (derivationStepZipperUp!1080 lt!2298451 (h!70073 s!2326)))))

(assert (=> bs!1370426 m!6743662))

(assert (=> d!1828122 d!1828224))

(declare-fun b_lambda!218799 () Bool)

(assert (= b_lambda!218781 (or b!5803740 b_lambda!218799)))

(declare-fun bs!1370427 () Bool)

(declare-fun d!1828226 () Bool)

(assert (= bs!1370427 (and d!1828226 b!5803740)))

(assert (=> bs!1370427 (= (dynLambda!24909 lambda!316622 (h!70072 zl!343)) (derivationStepZipperUp!1080 (h!70072 zl!343) (h!70073 s!2326)))))

(assert (=> bs!1370427 m!6743608))

(assert (=> d!1828118 d!1828226))

(push 1)

(assert (not b_lambda!218795))

(assert (not d!1828198))

(assert (not bm!452951))

(assert (not b!5804281))

(assert (not b!5804253))

(assert (not b!5803893))

(assert (not bm!452942))

(assert (not d!1828218))

(assert (not d!1828206))

(assert (not bs!1370424))

(assert (not b!5803888))

(assert (not b!5804279))

(assert (not d!1828166))

(assert (not setNonEmpty!39051))

(assert (not b!5804295))

(assert (not bm!452952))

(assert (not b!5803974))

(assert (not d!1828138))

(assert (not b!5803894))

(assert (not b!5804302))

(assert (not d!1828146))

(assert (not b!5804354))

(assert (not d!1828186))

(assert (not b!5804041))

(assert (not bm!452972))

(assert (not b!5804080))

(assert (not b_lambda!218799))

(assert (not bm!452968))

(assert (not bs!1370427))

(assert (not b!5804201))

(assert (not b_lambda!218793))

(assert (not b!5803909))

(assert (not d!1828174))

(assert (not b!5804361))

(assert (not b!5804301))

(assert (not b!5804357))

(assert (not d!1828208))

(assert (not b!5804315))

(assert (not bm!452944))

(assert (not bm!452943))

(assert (not b!5803918))

(assert (not b_lambda!218797))

(assert (not d!1828124))

(assert (not d!1828128))

(assert (not b!5804200))

(assert (not d!1828172))

(assert (not b!5804032))

(assert (not b!5804205))

(assert (not b!5804265))

(assert (not b!5804267))

(assert (not d!1828130))

(assert (not b!5803891))

(assert (not b!5803896))

(assert (not b!5804293))

(assert (not b!5804349))

(assert (not d!1828118))

(assert (not d!1828176))

(assert (not d!1828168))

(assert (not d!1828136))

(assert (not b!5803911))

(assert (not b!5804081))

(assert (not b!5804341))

(assert (not d!1828120))

(assert (not d!1828196))

(assert (not bm!452980))

(assert (not b!5803988))

(assert (not d!1828160))

(assert (not b!5804310))

(assert (not b!5804303))

(assert (not bm!452971))

(assert (not b!5804359))

(assert (not b!5804079))

(assert (not b!5804316))

(assert (not d!1828122))

(assert (not bm!452979))

(assert (not b!5804082))

(assert (not d!1828150))

(assert (not d!1828114))

(assert (not b!5803943))

(assert (not b!5803923))

(assert (not bm!453011))

(assert (not b!5804362))

(assert (not b!5804355))

(assert (not b!5804117))

(assert (not b!5804314))

(assert (not b!5803921))

(assert (not b!5803986))

(assert (not d!1828112))

(assert (not d!1828192))

(assert (not b!5804358))

(assert (not bm!453016))

(assert (not b!5803889))

(assert tp_is_empty!40885)

(assert (not b!5804078))

(assert (not d!1828164))

(assert (not b!5804202))

(assert (not d!1828194))

(assert (not b!5804116))

(assert (not bm!453012))

(assert (not d!1828202))

(assert (not d!1828190))

(assert (not b!5804254))

(assert (not b!5804256))

(assert (not d!1828170))

(assert (not b!5804255))

(assert (not bs!1370426))

(assert (not b!5804294))

(assert (not b!5804115))

(assert (not b!5804248))

(assert (not b!5804206))

(assert (not b!5804261))

(assert (not bs!1370425))

(assert (not d!1828210))

(assert (not b!5803916))

(assert (not b!5804088))

(assert (not b!5804247))

(assert (not b!5803890))

(assert (not b!5804348))

(assert (not bm!452967))

(assert (not bm!453015))

(assert (not b!5804199))

(assert (not b!5804118))

(assert (not d!1828200))

(assert (not b!5804249))

(assert (not b!5804363))

(assert (not bm!452984))

(assert (not d!1828126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5804613 () Bool)

(declare-fun e!3563442 () Bool)

(declare-fun call!453044 () Bool)

(assert (=> b!5804613 (= e!3563442 call!453044)))

(declare-fun b!5804614 () Bool)

(declare-fun e!3563443 () Bool)

(assert (=> b!5804614 (= e!3563443 e!3563442)))

(declare-fun res!2447764 () Bool)

(assert (=> b!5804614 (= res!2447764 (not (nullable!5842 (reg!16145 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))))

(assert (=> b!5804614 (=> (not res!2447764) (not e!3563442))))

(declare-fun b!5804615 () Bool)

(declare-fun e!3563444 () Bool)

(declare-fun e!3563446 () Bool)

(assert (=> b!5804615 (= e!3563444 e!3563446)))

(declare-fun res!2447763 () Bool)

(assert (=> b!5804615 (=> (not res!2447763) (not e!3563446))))

(declare-fun call!453045 () Bool)

(assert (=> b!5804615 (= res!2447763 call!453045)))

(declare-fun call!453043 () Bool)

(declare-fun bm!453039 () Bool)

(declare-fun c!1028256 () Bool)

(assert (=> bm!453039 (= call!453043 (validRegex!7552 (ite c!1028256 (regTwo!32145 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))) (regTwo!32144 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))))

(declare-fun b!5804616 () Bool)

(declare-fun e!3563448 () Bool)

(assert (=> b!5804616 (= e!3563443 e!3563448)))

(assert (=> b!5804616 (= c!1028256 (is-Union!15816 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))

(declare-fun bm!453040 () Bool)

(assert (=> bm!453040 (= call!453045 call!453044)))

(declare-fun b!5804617 () Bool)

(declare-fun res!2447762 () Bool)

(assert (=> b!5804617 (=> res!2447762 e!3563444)))

(assert (=> b!5804617 (= res!2447762 (not (is-Concat!24661 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292)))))))

(assert (=> b!5804617 (= e!3563448 e!3563444)))

(declare-fun b!5804618 () Bool)

(declare-fun e!3563447 () Bool)

(assert (=> b!5804618 (= e!3563447 call!453043)))

(declare-fun b!5804619 () Bool)

(assert (=> b!5804619 (= e!3563446 call!453043)))

(declare-fun d!1828304 () Bool)

(declare-fun res!2447761 () Bool)

(declare-fun e!3563445 () Bool)

(assert (=> d!1828304 (=> res!2447761 e!3563445)))

(assert (=> d!1828304 (= res!2447761 (is-ElementMatch!15816 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))

(assert (=> d!1828304 (= (validRegex!7552 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))) e!3563445)))

(declare-fun bm!453038 () Bool)

(declare-fun c!1028257 () Bool)

(assert (=> bm!453038 (= call!453044 (validRegex!7552 (ite c!1028257 (reg!16145 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))) (ite c!1028256 (regOne!32145 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))) (regOne!32144 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292)))))))))

(declare-fun b!5804620 () Bool)

(declare-fun res!2447765 () Bool)

(assert (=> b!5804620 (=> (not res!2447765) (not e!3563447))))

(assert (=> b!5804620 (= res!2447765 call!453045)))

(assert (=> b!5804620 (= e!3563448 e!3563447)))

(declare-fun b!5804621 () Bool)

(assert (=> b!5804621 (= e!3563445 e!3563443)))

(assert (=> b!5804621 (= c!1028257 (is-Star!15816 (ite c!1028084 (regTwo!32145 r!7292) (regTwo!32144 r!7292))))))

(assert (= (and d!1828304 (not res!2447761)) b!5804621))

(assert (= (and b!5804621 c!1028257) b!5804614))

(assert (= (and b!5804621 (not c!1028257)) b!5804616))

(assert (= (and b!5804614 res!2447764) b!5804613))

(assert (= (and b!5804616 c!1028256) b!5804620))

(assert (= (and b!5804616 (not c!1028256)) b!5804617))

(assert (= (and b!5804620 res!2447765) b!5804618))

(assert (= (and b!5804617 (not res!2447762)) b!5804615))

(assert (= (and b!5804615 res!2447763) b!5804619))

(assert (= (or b!5804618 b!5804619) bm!453039))

(assert (= (or b!5804620 b!5804615) bm!453040))

(assert (= (or b!5804613 bm!453040) bm!453038))

(declare-fun m!6744280 () Bool)

(assert (=> b!5804614 m!6744280))

(declare-fun m!6744282 () Bool)

(assert (=> bm!453039 m!6744282))

(declare-fun m!6744284 () Bool)

(assert (=> bm!453038 m!6744284))

(assert (=> bm!452952 d!1828304))

(declare-fun d!1828306 () Bool)

(declare-fun c!1028259 () Bool)

(assert (=> d!1828306 (= c!1028259 (and (is-ElementMatch!15816 (h!70071 (exprs!5700 (h!70072 zl!343)))) (= (c!1028045 (h!70071 (exprs!5700 (h!70072 zl!343)))) (h!70073 s!2326))))))

(declare-fun e!3563452 () (Set Context!10400))

(assert (=> d!1828306 (= (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (h!70072 zl!343))) (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (h!70073 s!2326)) e!3563452)))

(declare-fun bm!453041 () Bool)

(declare-fun call!453050 () List!63747)

(declare-fun call!453047 () List!63747)

(assert (=> bm!453041 (= call!453050 call!453047)))

(declare-fun c!1028261 () Bool)

(declare-fun bm!453042 () Bool)

(declare-fun c!1028262 () Bool)

(assert (=> bm!453042 (= call!453047 ($colon$colon!1797 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343))))) (ite (or c!1028262 c!1028261) (regTwo!32144 (h!70071 (exprs!5700 (h!70072 zl!343)))) (h!70071 (exprs!5700 (h!70072 zl!343))))))))

(declare-fun b!5804622 () Bool)

(declare-fun e!3563453 () (Set Context!10400))

(declare-fun call!453051 () (Set Context!10400))

(assert (=> b!5804622 (= e!3563453 call!453051)))

(declare-fun b!5804623 () Bool)

(declare-fun e!3563451 () Bool)

(assert (=> b!5804623 (= e!3563451 (nullable!5842 (regOne!32144 (h!70071 (exprs!5700 (h!70072 zl!343))))))))

(declare-fun b!5804624 () Bool)

(declare-fun e!3563449 () (Set Context!10400))

(assert (=> b!5804624 (= e!3563449 e!3563453)))

(assert (=> b!5804624 (= c!1028261 (is-Concat!24661 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun call!453046 () (Set Context!10400))

(declare-fun bm!453043 () Bool)

(declare-fun c!1028260 () Bool)

(assert (=> bm!453043 (= call!453046 (derivationStepZipperDown!1154 (ite c!1028260 (regOne!32145 (h!70071 (exprs!5700 (h!70072 zl!343)))) (ite c!1028262 (regTwo!32144 (h!70071 (exprs!5700 (h!70072 zl!343)))) (ite c!1028261 (regOne!32144 (h!70071 (exprs!5700 (h!70072 zl!343)))) (reg!16145 (h!70071 (exprs!5700 (h!70072 zl!343))))))) (ite (or c!1028260 c!1028262) (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (Context!10401 call!453050)) (h!70073 s!2326)))))

(declare-fun b!5804625 () Bool)

(assert (=> b!5804625 (= e!3563452 (set.insert (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (as set.empty (Set Context!10400))))))

(declare-fun b!5804626 () Bool)

(declare-fun e!3563450 () (Set Context!10400))

(declare-fun call!453049 () (Set Context!10400))

(assert (=> b!5804626 (= e!3563450 (set.union call!453046 call!453049))))

(declare-fun bm!453044 () Bool)

(declare-fun call!453048 () (Set Context!10400))

(assert (=> bm!453044 (= call!453051 call!453048)))

(declare-fun b!5804627 () Bool)

(assert (=> b!5804627 (= e!3563452 e!3563450)))

(assert (=> b!5804627 (= c!1028260 (is-Union!15816 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun bm!453045 () Bool)

(assert (=> bm!453045 (= call!453048 call!453046)))

(declare-fun bm!453046 () Bool)

(assert (=> bm!453046 (= call!453049 (derivationStepZipperDown!1154 (ite c!1028260 (regTwo!32145 (h!70071 (exprs!5700 (h!70072 zl!343)))) (regOne!32144 (h!70071 (exprs!5700 (h!70072 zl!343))))) (ite c!1028260 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (Context!10401 call!453047)) (h!70073 s!2326)))))

(declare-fun b!5804628 () Bool)

(declare-fun e!3563454 () (Set Context!10400))

(assert (=> b!5804628 (= e!3563454 call!453051)))

(declare-fun b!5804629 () Bool)

(declare-fun c!1028258 () Bool)

(assert (=> b!5804629 (= c!1028258 (is-Star!15816 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> b!5804629 (= e!3563453 e!3563454)))

(declare-fun b!5804630 () Bool)

(assert (=> b!5804630 (= e!3563449 (set.union call!453049 call!453048))))

(declare-fun b!5804631 () Bool)

(assert (=> b!5804631 (= c!1028262 e!3563451)))

(declare-fun res!2447766 () Bool)

(assert (=> b!5804631 (=> (not res!2447766) (not e!3563451))))

(assert (=> b!5804631 (= res!2447766 (is-Concat!24661 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> b!5804631 (= e!3563450 e!3563449)))

(declare-fun b!5804632 () Bool)

(assert (=> b!5804632 (= e!3563454 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828306 c!1028259) b!5804625))

(assert (= (and d!1828306 (not c!1028259)) b!5804627))

(assert (= (and b!5804627 c!1028260) b!5804626))

(assert (= (and b!5804627 (not c!1028260)) b!5804631))

(assert (= (and b!5804631 res!2447766) b!5804623))

(assert (= (and b!5804631 c!1028262) b!5804630))

(assert (= (and b!5804631 (not c!1028262)) b!5804624))

(assert (= (and b!5804624 c!1028261) b!5804622))

(assert (= (and b!5804624 (not c!1028261)) b!5804629))

(assert (= (and b!5804629 c!1028258) b!5804628))

(assert (= (and b!5804629 (not c!1028258)) b!5804632))

(assert (= (or b!5804622 b!5804628) bm!453041))

(assert (= (or b!5804622 b!5804628) bm!453044))

(assert (= (or b!5804630 bm!453041) bm!453042))

(assert (= (or b!5804630 bm!453044) bm!453045))

(assert (= (or b!5804626 b!5804630) bm!453046))

(assert (= (or b!5804626 bm!453045) bm!453043))

(declare-fun m!6744286 () Bool)

(assert (=> bm!453042 m!6744286))

(declare-fun m!6744288 () Bool)

(assert (=> bm!453043 m!6744288))

(declare-fun m!6744290 () Bool)

(assert (=> b!5804625 m!6744290))

(declare-fun m!6744292 () Bool)

(assert (=> b!5804623 m!6744292))

(declare-fun m!6744294 () Bool)

(assert (=> bm!453046 m!6744294))

(assert (=> bm!452942 d!1828306))

(assert (=> bm!452984 d!1828188))

(declare-fun d!1828308 () Bool)

(assert (=> d!1828308 (= (isEmptyExpr!1290 lt!2298535) (is-EmptyExpr!15816 lt!2298535))))

(assert (=> b!5803890 d!1828308))

(declare-fun d!1828310 () Bool)

(assert (=> d!1828310 true))

(assert (=> d!1828310 true))

(declare-fun res!2447769 () Bool)

(assert (=> d!1828310 (= (choose!44046 lambda!316621) res!2447769)))

(assert (=> d!1828192 d!1828310))

(declare-fun c!1028264 () Bool)

(declare-fun d!1828312 () Bool)

(assert (=> d!1828312 (= c!1028264 (and (is-ElementMatch!15816 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (= (c!1028045 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (h!70073 s!2326))))))

(declare-fun e!3563458 () (Set Context!10400))

(assert (=> d!1828312 (= (derivationStepZipperDown!1154 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))) (ite c!1028098 lt!2298456 (Context!10401 call!452972)) (h!70073 s!2326)) e!3563458)))

(declare-fun bm!453047 () Bool)

(declare-fun call!453056 () List!63747)

(declare-fun call!453053 () List!63747)

(assert (=> bm!453047 (= call!453056 call!453053)))

(declare-fun c!1028266 () Bool)

(declare-fun c!1028267 () Bool)

(declare-fun bm!453048 () Bool)

(assert (=> bm!453048 (= call!453053 ($colon$colon!1797 (exprs!5700 (ite c!1028098 lt!2298456 (Context!10401 call!452972))) (ite (or c!1028267 c!1028266) (regTwo!32144 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))))))))

(declare-fun b!5804633 () Bool)

(declare-fun e!3563459 () (Set Context!10400))

(declare-fun call!453057 () (Set Context!10400))

(assert (=> b!5804633 (= e!3563459 call!453057)))

(declare-fun b!5804634 () Bool)

(declare-fun e!3563457 () Bool)

(assert (=> b!5804634 (= e!3563457 (nullable!5842 (regOne!32144 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))))))))

(declare-fun b!5804635 () Bool)

(declare-fun e!3563455 () (Set Context!10400))

(assert (=> b!5804635 (= e!3563455 e!3563459)))

(assert (=> b!5804635 (= c!1028266 (is-Concat!24661 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))))))

(declare-fun bm!453049 () Bool)

(declare-fun c!1028265 () Bool)

(declare-fun call!453052 () (Set Context!10400))

(assert (=> bm!453049 (= call!453052 (derivationStepZipperDown!1154 (ite c!1028265 (regOne!32145 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (ite c!1028267 (regTwo!32144 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (ite c!1028266 (regOne!32144 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (reg!16145 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))))))) (ite (or c!1028265 c!1028267) (ite c!1028098 lt!2298456 (Context!10401 call!452972)) (Context!10401 call!453056)) (h!70073 s!2326)))))

(declare-fun b!5804636 () Bool)

(assert (=> b!5804636 (= e!3563458 (set.insert (ite c!1028098 lt!2298456 (Context!10401 call!452972)) (as set.empty (Set Context!10400))))))

(declare-fun b!5804637 () Bool)

(declare-fun e!3563456 () (Set Context!10400))

(declare-fun call!453055 () (Set Context!10400))

(assert (=> b!5804637 (= e!3563456 (set.union call!453052 call!453055))))

(declare-fun bm!453050 () Bool)

(declare-fun call!453054 () (Set Context!10400))

(assert (=> bm!453050 (= call!453057 call!453054)))

(declare-fun b!5804638 () Bool)

(assert (=> b!5804638 (= e!3563458 e!3563456)))

(assert (=> b!5804638 (= c!1028265 (is-Union!15816 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))))))

(declare-fun bm!453051 () Bool)

(assert (=> bm!453051 (= call!453054 call!453052)))

(declare-fun bm!453052 () Bool)

(assert (=> bm!453052 (= call!453055 (derivationStepZipperDown!1154 (ite c!1028265 (regTwo!32145 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))) (regOne!32144 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))))) (ite c!1028265 (ite c!1028098 lt!2298456 (Context!10401 call!452972)) (Context!10401 call!453053)) (h!70073 s!2326)))))

(declare-fun b!5804639 () Bool)

(declare-fun e!3563460 () (Set Context!10400))

(assert (=> b!5804639 (= e!3563460 call!453057)))

(declare-fun b!5804640 () Bool)

(declare-fun c!1028263 () Bool)

(assert (=> b!5804640 (= c!1028263 (is-Star!15816 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))))))

(assert (=> b!5804640 (= e!3563459 e!3563460)))

(declare-fun b!5804641 () Bool)

(assert (=> b!5804641 (= e!3563455 (set.union call!453055 call!453054))))

(declare-fun b!5804642 () Bool)

(assert (=> b!5804642 (= c!1028267 e!3563457)))

(declare-fun res!2447770 () Bool)

(assert (=> b!5804642 (=> (not res!2447770) (not e!3563457))))

(assert (=> b!5804642 (= res!2447770 (is-Concat!24661 (ite c!1028098 (regTwo!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292)))))))

(assert (=> b!5804642 (= e!3563456 e!3563455)))

(declare-fun b!5804643 () Bool)

(assert (=> b!5804643 (= e!3563460 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828312 c!1028264) b!5804636))

(assert (= (and d!1828312 (not c!1028264)) b!5804638))

(assert (= (and b!5804638 c!1028265) b!5804637))

(assert (= (and b!5804638 (not c!1028265)) b!5804642))

(assert (= (and b!5804642 res!2447770) b!5804634))

(assert (= (and b!5804642 c!1028267) b!5804641))

(assert (= (and b!5804642 (not c!1028267)) b!5804635))

(assert (= (and b!5804635 c!1028266) b!5804633))

(assert (= (and b!5804635 (not c!1028266)) b!5804640))

(assert (= (and b!5804640 c!1028263) b!5804639))

(assert (= (and b!5804640 (not c!1028263)) b!5804643))

(assert (= (or b!5804633 b!5804639) bm!453047))

(assert (= (or b!5804633 b!5804639) bm!453050))

(assert (= (or b!5804641 bm!453047) bm!453048))

(assert (= (or b!5804641 bm!453050) bm!453051))

(assert (= (or b!5804637 b!5804641) bm!453052))

(assert (= (or b!5804637 bm!453051) bm!453049))

(declare-fun m!6744296 () Bool)

(assert (=> bm!453048 m!6744296))

(declare-fun m!6744298 () Bool)

(assert (=> bm!453049 m!6744298))

(declare-fun m!6744300 () Bool)

(assert (=> b!5804636 m!6744300))

(declare-fun m!6744302 () Bool)

(assert (=> b!5804634 m!6744302))

(declare-fun m!6744304 () Bool)

(assert (=> bm!453052 m!6744304))

(assert (=> bm!452971 d!1828312))

(declare-fun bm!453053 () Bool)

(declare-fun call!453058 () (Set Context!10400))

(assert (=> bm!453053 (= call!453058 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442))))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442)))))) (h!70073 s!2326)))))

(declare-fun b!5804644 () Bool)

(declare-fun e!3563461 () (Set Context!10400))

(assert (=> b!5804644 (= e!3563461 call!453058)))

(declare-fun b!5804645 () Bool)

(declare-fun e!3563462 () (Set Context!10400))

(assert (=> b!5804645 (= e!3563462 e!3563461)))

(declare-fun c!1028268 () Bool)

(assert (=> b!5804645 (= c!1028268 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442))))))))

(declare-fun b!5804646 () Bool)

(declare-fun e!3563463 () Bool)

(assert (=> b!5804646 (= e!3563463 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442)))))))))

(declare-fun b!5804647 () Bool)

(assert (=> b!5804647 (= e!3563461 (as set.empty (Set Context!10400)))))

(declare-fun d!1828314 () Bool)

(declare-fun c!1028269 () Bool)

(assert (=> d!1828314 (= c!1028269 e!3563463)))

(declare-fun res!2447771 () Bool)

(assert (=> d!1828314 (=> (not res!2447771) (not e!3563463))))

(assert (=> d!1828314 (= res!2447771 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442))))))))

(assert (=> d!1828314 (= (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (h!70073 s!2326)) e!3563462)))

(declare-fun b!5804648 () Bool)

(assert (=> b!5804648 (= e!3563462 (set.union call!453058 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442)))))) (h!70073 s!2326))))))

(assert (= (and d!1828314 res!2447771) b!5804646))

(assert (= (and d!1828314 c!1028269) b!5804648))

(assert (= (and d!1828314 (not c!1028269)) b!5804645))

(assert (= (and b!5804645 c!1028268) b!5804644))

(assert (= (and b!5804645 (not c!1028268)) b!5804647))

(assert (= (or b!5804648 b!5804644) bm!453053))

(declare-fun m!6744306 () Bool)

(assert (=> bm!453053 m!6744306))

(declare-fun m!6744308 () Bool)

(assert (=> b!5804646 m!6744308))

(declare-fun m!6744310 () Bool)

(assert (=> b!5804648 m!6744310))

(assert (=> b!5803988 d!1828314))

(declare-fun b!5804649 () Bool)

(declare-fun e!3563464 () Bool)

(declare-fun call!453060 () Bool)

(assert (=> b!5804649 (= e!3563464 call!453060)))

(declare-fun b!5804650 () Bool)

(declare-fun e!3563465 () Bool)

(assert (=> b!5804650 (= e!3563465 e!3563464)))

(declare-fun res!2447775 () Bool)

(assert (=> b!5804650 (= res!2447775 (not (nullable!5842 (reg!16145 lt!2298579))))))

(assert (=> b!5804650 (=> (not res!2447775) (not e!3563464))))

(declare-fun b!5804651 () Bool)

(declare-fun e!3563466 () Bool)

(declare-fun e!3563468 () Bool)

(assert (=> b!5804651 (= e!3563466 e!3563468)))

(declare-fun res!2447774 () Bool)

(assert (=> b!5804651 (=> (not res!2447774) (not e!3563468))))

(declare-fun call!453061 () Bool)

(assert (=> b!5804651 (= res!2447774 call!453061)))

(declare-fun bm!453055 () Bool)

(declare-fun call!453059 () Bool)

(declare-fun c!1028270 () Bool)

(assert (=> bm!453055 (= call!453059 (validRegex!7552 (ite c!1028270 (regTwo!32145 lt!2298579) (regTwo!32144 lt!2298579))))))

(declare-fun b!5804652 () Bool)

(declare-fun e!3563470 () Bool)

(assert (=> b!5804652 (= e!3563465 e!3563470)))

(assert (=> b!5804652 (= c!1028270 (is-Union!15816 lt!2298579))))

(declare-fun bm!453056 () Bool)

(assert (=> bm!453056 (= call!453061 call!453060)))

(declare-fun b!5804653 () Bool)

(declare-fun res!2447773 () Bool)

(assert (=> b!5804653 (=> res!2447773 e!3563466)))

(assert (=> b!5804653 (= res!2447773 (not (is-Concat!24661 lt!2298579)))))

(assert (=> b!5804653 (= e!3563470 e!3563466)))

(declare-fun b!5804654 () Bool)

(declare-fun e!3563469 () Bool)

(assert (=> b!5804654 (= e!3563469 call!453059)))

(declare-fun b!5804655 () Bool)

(assert (=> b!5804655 (= e!3563468 call!453059)))

(declare-fun d!1828316 () Bool)

(declare-fun res!2447772 () Bool)

(declare-fun e!3563467 () Bool)

(assert (=> d!1828316 (=> res!2447772 e!3563467)))

(assert (=> d!1828316 (= res!2447772 (is-ElementMatch!15816 lt!2298579))))

(assert (=> d!1828316 (= (validRegex!7552 lt!2298579) e!3563467)))

(declare-fun bm!453054 () Bool)

(declare-fun c!1028271 () Bool)

(assert (=> bm!453054 (= call!453060 (validRegex!7552 (ite c!1028271 (reg!16145 lt!2298579) (ite c!1028270 (regOne!32145 lt!2298579) (regOne!32144 lt!2298579)))))))

(declare-fun b!5804656 () Bool)

(declare-fun res!2447776 () Bool)

(assert (=> b!5804656 (=> (not res!2447776) (not e!3563469))))

(assert (=> b!5804656 (= res!2447776 call!453061)))

(assert (=> b!5804656 (= e!3563470 e!3563469)))

(declare-fun b!5804657 () Bool)

(assert (=> b!5804657 (= e!3563467 e!3563465)))

(assert (=> b!5804657 (= c!1028271 (is-Star!15816 lt!2298579))))

(assert (= (and d!1828316 (not res!2447772)) b!5804657))

(assert (= (and b!5804657 c!1028271) b!5804650))

(assert (= (and b!5804657 (not c!1028271)) b!5804652))

(assert (= (and b!5804650 res!2447775) b!5804649))

(assert (= (and b!5804652 c!1028270) b!5804656))

(assert (= (and b!5804652 (not c!1028270)) b!5804653))

(assert (= (and b!5804656 res!2447776) b!5804654))

(assert (= (and b!5804653 (not res!2447773)) b!5804651))

(assert (= (and b!5804651 res!2447774) b!5804655))

(assert (= (or b!5804654 b!5804655) bm!453055))

(assert (= (or b!5804656 b!5804651) bm!453056))

(assert (= (or b!5804649 bm!453056) bm!453054))

(declare-fun m!6744312 () Bool)

(assert (=> b!5804650 m!6744312))

(declare-fun m!6744314 () Bool)

(assert (=> bm!453055 m!6744314))

(declare-fun m!6744316 () Bool)

(assert (=> bm!453054 m!6744316))

(assert (=> d!1828200 d!1828316))

(declare-fun d!1828318 () Bool)

(declare-fun res!2447781 () Bool)

(declare-fun e!3563475 () Bool)

(assert (=> d!1828318 (=> res!2447781 e!3563475)))

(assert (=> d!1828318 (= res!2447781 (is-Nil!63623 (unfocusZipperList!1244 zl!343)))))

(assert (=> d!1828318 (= (forall!14924 (unfocusZipperList!1244 zl!343) lambda!316685) e!3563475)))

(declare-fun b!5804662 () Bool)

(declare-fun e!3563476 () Bool)

(assert (=> b!5804662 (= e!3563475 e!3563476)))

(declare-fun res!2447782 () Bool)

(assert (=> b!5804662 (=> (not res!2447782) (not e!3563476))))

(declare-fun dynLambda!24911 (Int Regex!15816) Bool)

(assert (=> b!5804662 (= res!2447782 (dynLambda!24911 lambda!316685 (h!70071 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5804663 () Bool)

(assert (=> b!5804663 (= e!3563476 (forall!14924 (t!377098 (unfocusZipperList!1244 zl!343)) lambda!316685))))

(assert (= (and d!1828318 (not res!2447781)) b!5804662))

(assert (= (and b!5804662 res!2447782) b!5804663))

(declare-fun b_lambda!218813 () Bool)

(assert (=> (not b_lambda!218813) (not b!5804662)))

(declare-fun m!6744318 () Bool)

(assert (=> b!5804662 m!6744318))

(declare-fun m!6744320 () Bool)

(assert (=> b!5804663 m!6744320))

(assert (=> d!1828200 d!1828318))

(assert (=> d!1828150 d!1828146))

(declare-fun d!1828320 () Bool)

(assert (=> d!1828320 (= (flatMap!1423 lt!2298446 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298442))))

(assert (=> d!1828320 true))

(declare-fun _$13!2526 () Unit!156892)

(assert (=> d!1828320 (= (choose!44042 lt!2298446 lt!2298442 lambda!316622) _$13!2526)))

(declare-fun b_lambda!218815 () Bool)

(assert (=> (not b_lambda!218815) (not d!1828320)))

(declare-fun bs!1370480 () Bool)

(assert (= bs!1370480 d!1828320))

(assert (=> bs!1370480 m!6743626))

(assert (=> bs!1370480 m!6743876))

(assert (=> d!1828150 d!1828320))

(declare-fun d!1828322 () Bool)

(assert (=> d!1828322 (= (isEmpty!35537 (t!377098 (exprs!5700 (h!70072 zl!343)))) (is-Nil!63623 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> b!5803894 d!1828322))

(assert (=> d!1828128 d!1828124))

(declare-fun d!1828324 () Bool)

(assert (=> d!1828324 (= (flatMap!1423 lt!2298444 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298456))))

(assert (=> d!1828324 true))

(declare-fun _$13!2527 () Unit!156892)

(assert (=> d!1828324 (= (choose!44042 lt!2298444 lt!2298456 lambda!316622) _$13!2527)))

(declare-fun b_lambda!218817 () Bool)

(assert (=> (not b_lambda!218817) (not d!1828324)))

(declare-fun bs!1370481 () Bool)

(assert (= bs!1370481 d!1828324))

(assert (=> bs!1370481 m!6743672))

(assert (=> bs!1370481 m!6743832))

(assert (=> d!1828128 d!1828324))

(declare-fun b!5804664 () Bool)

(declare-fun e!3563482 () Bool)

(declare-fun e!3563478 () Bool)

(assert (=> b!5804664 (= e!3563482 e!3563478)))

(declare-fun res!2447789 () Bool)

(assert (=> b!5804664 (=> res!2447789 e!3563478)))

(declare-fun call!453062 () Bool)

(assert (=> b!5804664 (= res!2447789 call!453062)))

(declare-fun d!1828326 () Bool)

(declare-fun e!3563481 () Bool)

(assert (=> d!1828326 e!3563481))

(declare-fun c!1028274 () Bool)

(assert (=> d!1828326 (= c!1028274 (is-EmptyExpr!15816 r!7292))))

(declare-fun lt!2298629 () Bool)

(declare-fun e!3563480 () Bool)

(assert (=> d!1828326 (= lt!2298629 e!3563480)))

(declare-fun c!1028273 () Bool)

(assert (=> d!1828326 (= c!1028273 (isEmpty!35534 (_2!36216 (get!21962 lt!2298571))))))

(assert (=> d!1828326 (validRegex!7552 r!7292)))

(assert (=> d!1828326 (= (matchR!8001 r!7292 (_2!36216 (get!21962 lt!2298571))) lt!2298629)))

(declare-fun b!5804665 () Bool)

(assert (=> b!5804665 (= e!3563481 (= lt!2298629 call!453062))))

(declare-fun b!5804666 () Bool)

(declare-fun res!2447785 () Bool)

(declare-fun e!3563483 () Bool)

(assert (=> b!5804666 (=> res!2447785 e!3563483)))

(declare-fun e!3563477 () Bool)

(assert (=> b!5804666 (= res!2447785 e!3563477)))

(declare-fun res!2447788 () Bool)

(assert (=> b!5804666 (=> (not res!2447788) (not e!3563477))))

(assert (=> b!5804666 (= res!2447788 lt!2298629)))

(declare-fun b!5804667 () Bool)

(assert (=> b!5804667 (= e!3563478 (not (= (head!12245 (_2!36216 (get!21962 lt!2298571))) (c!1028045 r!7292))))))

(declare-fun bm!453057 () Bool)

(assert (=> bm!453057 (= call!453062 (isEmpty!35534 (_2!36216 (get!21962 lt!2298571))))))

(declare-fun b!5804668 () Bool)

(assert (=> b!5804668 (= e!3563477 (= (head!12245 (_2!36216 (get!21962 lt!2298571))) (c!1028045 r!7292)))))

(declare-fun b!5804669 () Bool)

(assert (=> b!5804669 (= e!3563480 (nullable!5842 r!7292))))

(declare-fun b!5804670 () Bool)

(assert (=> b!5804670 (= e!3563480 (matchR!8001 (derivativeStep!4585 r!7292 (head!12245 (_2!36216 (get!21962 lt!2298571)))) (tail!11340 (_2!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804671 () Bool)

(declare-fun res!2447783 () Bool)

(assert (=> b!5804671 (=> (not res!2447783) (not e!3563477))))

(assert (=> b!5804671 (= res!2447783 (isEmpty!35534 (tail!11340 (_2!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804672 () Bool)

(assert (=> b!5804672 (= e!3563483 e!3563482)))

(declare-fun res!2447790 () Bool)

(assert (=> b!5804672 (=> (not res!2447790) (not e!3563482))))

(assert (=> b!5804672 (= res!2447790 (not lt!2298629))))

(declare-fun b!5804673 () Bool)

(declare-fun e!3563479 () Bool)

(assert (=> b!5804673 (= e!3563479 (not lt!2298629))))

(declare-fun b!5804674 () Bool)

(declare-fun res!2447787 () Bool)

(assert (=> b!5804674 (=> res!2447787 e!3563483)))

(assert (=> b!5804674 (= res!2447787 (not (is-ElementMatch!15816 r!7292)))))

(assert (=> b!5804674 (= e!3563479 e!3563483)))

(declare-fun b!5804675 () Bool)

(declare-fun res!2447786 () Bool)

(assert (=> b!5804675 (=> (not res!2447786) (not e!3563477))))

(assert (=> b!5804675 (= res!2447786 (not call!453062))))

(declare-fun b!5804676 () Bool)

(assert (=> b!5804676 (= e!3563481 e!3563479)))

(declare-fun c!1028272 () Bool)

(assert (=> b!5804676 (= c!1028272 (is-EmptyLang!15816 r!7292))))

(declare-fun b!5804677 () Bool)

(declare-fun res!2447784 () Bool)

(assert (=> b!5804677 (=> res!2447784 e!3563478)))

(assert (=> b!5804677 (= res!2447784 (not (isEmpty!35534 (tail!11340 (_2!36216 (get!21962 lt!2298571))))))))

(assert (= (and d!1828326 c!1028273) b!5804669))

(assert (= (and d!1828326 (not c!1028273)) b!5804670))

(assert (= (and d!1828326 c!1028274) b!5804665))

(assert (= (and d!1828326 (not c!1028274)) b!5804676))

(assert (= (and b!5804676 c!1028272) b!5804673))

(assert (= (and b!5804676 (not c!1028272)) b!5804674))

(assert (= (and b!5804674 (not res!2447787)) b!5804666))

(assert (= (and b!5804666 res!2447788) b!5804675))

(assert (= (and b!5804675 res!2447786) b!5804671))

(assert (= (and b!5804671 res!2447783) b!5804668))

(assert (= (and b!5804666 (not res!2447785)) b!5804672))

(assert (= (and b!5804672 res!2447790) b!5804664))

(assert (= (and b!5804664 (not res!2447789)) b!5804677))

(assert (= (and b!5804677 (not res!2447784)) b!5804667))

(assert (= (or b!5804665 b!5804664 b!5804675) bm!453057))

(declare-fun m!6744322 () Bool)

(assert (=> b!5804670 m!6744322))

(assert (=> b!5804670 m!6744322))

(declare-fun m!6744324 () Bool)

(assert (=> b!5804670 m!6744324))

(declare-fun m!6744326 () Bool)

(assert (=> b!5804670 m!6744326))

(assert (=> b!5804670 m!6744324))

(assert (=> b!5804670 m!6744326))

(declare-fun m!6744328 () Bool)

(assert (=> b!5804670 m!6744328))

(assert (=> b!5804677 m!6744326))

(assert (=> b!5804677 m!6744326))

(declare-fun m!6744330 () Bool)

(assert (=> b!5804677 m!6744330))

(assert (=> b!5804667 m!6744322))

(assert (=> b!5804668 m!6744322))

(declare-fun m!6744332 () Bool)

(assert (=> bm!453057 m!6744332))

(assert (=> d!1828326 m!6744332))

(assert (=> d!1828326 m!6743656))

(assert (=> b!5804671 m!6744326))

(assert (=> b!5804671 m!6744326))

(assert (=> b!5804671 m!6744330))

(assert (=> b!5804669 m!6743912))

(assert (=> b!5804201 d!1828326))

(declare-fun d!1828328 () Bool)

(assert (=> d!1828328 (= (get!21962 lt!2298571) (v!51888 lt!2298571))))

(assert (=> b!5804201 d!1828328))

(declare-fun d!1828330 () Bool)

(assert (=> d!1828330 (= (isEmpty!35534 (tail!11340 s!2326)) (is-Nil!63625 (tail!11340 s!2326)))))

(assert (=> b!5804082 d!1828330))

(declare-fun d!1828332 () Bool)

(assert (=> d!1828332 (= (tail!11340 s!2326) (t!377100 s!2326))))

(assert (=> b!5804082 d!1828332))

(declare-fun d!1828334 () Bool)

(declare-fun res!2447791 () Bool)

(declare-fun e!3563484 () Bool)

(assert (=> d!1828334 (=> res!2447791 e!3563484)))

(assert (=> d!1828334 (= res!2447791 (is-Nil!63623 (exprs!5700 (h!70072 zl!343))))))

(assert (=> d!1828334 (= (forall!14924 (exprs!5700 (h!70072 zl!343)) lambda!316680) e!3563484)))

(declare-fun b!5804678 () Bool)

(declare-fun e!3563485 () Bool)

(assert (=> b!5804678 (= e!3563484 e!3563485)))

(declare-fun res!2447792 () Bool)

(assert (=> b!5804678 (=> (not res!2447792) (not e!3563485))))

(assert (=> b!5804678 (= res!2447792 (dynLambda!24911 lambda!316680 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5804679 () Bool)

(assert (=> b!5804679 (= e!3563485 (forall!14924 (t!377098 (exprs!5700 (h!70072 zl!343))) lambda!316680))))

(assert (= (and d!1828334 (not res!2447791)) b!5804678))

(assert (= (and b!5804678 res!2447792) b!5804679))

(declare-fun b_lambda!218819 () Bool)

(assert (=> (not b_lambda!218819) (not b!5804678)))

(declare-fun m!6744334 () Bool)

(assert (=> b!5804678 m!6744334))

(declare-fun m!6744336 () Bool)

(assert (=> b!5804679 m!6744336))

(assert (=> d!1828198 d!1828334))

(declare-fun d!1828336 () Bool)

(assert (=> d!1828336 (= ($colon$colon!1797 (exprs!5700 (Context!10401 Nil!63623)) (ite (or c!1028188 c!1028187) (regTwo!32144 r!7292) r!7292)) (Cons!63623 (ite (or c!1028188 c!1028187) (regTwo!32144 r!7292) r!7292) (exprs!5700 (Context!10401 Nil!63623))))))

(assert (=> bm!453011 d!1828336))

(assert (=> d!1828118 d!1828114))

(declare-fun d!1828338 () Bool)

(assert (=> d!1828338 (= (flatMap!1423 z!1189 lambda!316622) (dynLambda!24909 lambda!316622 (h!70072 zl!343)))))

(assert (=> d!1828338 true))

(declare-fun _$13!2528 () Unit!156892)

(assert (=> d!1828338 (= (choose!44042 z!1189 (h!70072 zl!343) lambda!316622) _$13!2528)))

(declare-fun b_lambda!218821 () Bool)

(assert (=> (not b_lambda!218821) (not d!1828338)))

(declare-fun bs!1370482 () Bool)

(assert (= bs!1370482 d!1828338))

(assert (=> bs!1370482 m!6743606))

(assert (=> bs!1370482 m!6743812))

(assert (=> d!1828118 d!1828338))

(declare-fun d!1828340 () Bool)

(assert (=> d!1828340 (= (isDefined!12528 lt!2298571) (not (isEmpty!35538 lt!2298571)))))

(declare-fun bs!1370483 () Bool)

(assert (= bs!1370483 d!1828340))

(declare-fun m!6744338 () Bool)

(assert (=> bs!1370483 m!6744338))

(assert (=> b!5804206 d!1828340))

(assert (=> d!1828122 d!1828126))

(declare-fun d!1828342 () Bool)

(assert (=> d!1828342 (= (flatMap!1423 lt!2298457 lambda!316622) (dynLambda!24909 lambda!316622 lt!2298451))))

(assert (=> d!1828342 true))

(declare-fun _$13!2529 () Unit!156892)

(assert (=> d!1828342 (= (choose!44042 lt!2298457 lt!2298451 lambda!316622) _$13!2529)))

(declare-fun b_lambda!218823 () Bool)

(assert (=> (not b_lambda!218823) (not d!1828342)))

(declare-fun bs!1370484 () Bool)

(assert (= bs!1370484 d!1828342))

(assert (=> bs!1370484 m!6743674))

(assert (=> bs!1370484 m!6743824))

(assert (=> d!1828122 d!1828342))

(assert (=> b!5804202 d!1828160))

(declare-fun b!5804680 () Bool)

(declare-fun e!3563486 () Bool)

(declare-fun call!453064 () Bool)

(assert (=> b!5804680 (= e!3563486 call!453064)))

(declare-fun b!5804681 () Bool)

(declare-fun e!3563487 () Bool)

(assert (=> b!5804681 (= e!3563487 e!3563486)))

(declare-fun res!2447796 () Bool)

(assert (=> b!5804681 (= res!2447796 (not (nullable!5842 (reg!16145 lt!2298587))))))

(assert (=> b!5804681 (=> (not res!2447796) (not e!3563486))))

(declare-fun b!5804682 () Bool)

(declare-fun e!3563488 () Bool)

(declare-fun e!3563490 () Bool)

(assert (=> b!5804682 (= e!3563488 e!3563490)))

(declare-fun res!2447795 () Bool)

(assert (=> b!5804682 (=> (not res!2447795) (not e!3563490))))

(declare-fun call!453065 () Bool)

(assert (=> b!5804682 (= res!2447795 call!453065)))

(declare-fun bm!453059 () Bool)

(declare-fun call!453063 () Bool)

(declare-fun c!1028275 () Bool)

(assert (=> bm!453059 (= call!453063 (validRegex!7552 (ite c!1028275 (regTwo!32145 lt!2298587) (regTwo!32144 lt!2298587))))))

(declare-fun b!5804683 () Bool)

(declare-fun e!3563492 () Bool)

(assert (=> b!5804683 (= e!3563487 e!3563492)))

(assert (=> b!5804683 (= c!1028275 (is-Union!15816 lt!2298587))))

(declare-fun bm!453060 () Bool)

(assert (=> bm!453060 (= call!453065 call!453064)))

(declare-fun b!5804684 () Bool)

(declare-fun res!2447794 () Bool)

(assert (=> b!5804684 (=> res!2447794 e!3563488)))

(assert (=> b!5804684 (= res!2447794 (not (is-Concat!24661 lt!2298587)))))

(assert (=> b!5804684 (= e!3563492 e!3563488)))

(declare-fun b!5804685 () Bool)

(declare-fun e!3563491 () Bool)

(assert (=> b!5804685 (= e!3563491 call!453063)))

(declare-fun b!5804686 () Bool)

(assert (=> b!5804686 (= e!3563490 call!453063)))

(declare-fun d!1828344 () Bool)

(declare-fun res!2447793 () Bool)

(declare-fun e!3563489 () Bool)

(assert (=> d!1828344 (=> res!2447793 e!3563489)))

(assert (=> d!1828344 (= res!2447793 (is-ElementMatch!15816 lt!2298587))))

(assert (=> d!1828344 (= (validRegex!7552 lt!2298587) e!3563489)))

(declare-fun bm!453058 () Bool)

(declare-fun c!1028276 () Bool)

(assert (=> bm!453058 (= call!453064 (validRegex!7552 (ite c!1028276 (reg!16145 lt!2298587) (ite c!1028275 (regOne!32145 lt!2298587) (regOne!32144 lt!2298587)))))))

(declare-fun b!5804687 () Bool)

(declare-fun res!2447797 () Bool)

(assert (=> b!5804687 (=> (not res!2447797) (not e!3563491))))

(assert (=> b!5804687 (= res!2447797 call!453065)))

(assert (=> b!5804687 (= e!3563492 e!3563491)))

(declare-fun b!5804688 () Bool)

(assert (=> b!5804688 (= e!3563489 e!3563487)))

(assert (=> b!5804688 (= c!1028276 (is-Star!15816 lt!2298587))))

(assert (= (and d!1828344 (not res!2447793)) b!5804688))

(assert (= (and b!5804688 c!1028276) b!5804681))

(assert (= (and b!5804688 (not c!1028276)) b!5804683))

(assert (= (and b!5804681 res!2447796) b!5804680))

(assert (= (and b!5804683 c!1028275) b!5804687))

(assert (= (and b!5804683 (not c!1028275)) b!5804684))

(assert (= (and b!5804687 res!2447797) b!5804685))

(assert (= (and b!5804684 (not res!2447794)) b!5804682))

(assert (= (and b!5804682 res!2447795) b!5804686))

(assert (= (or b!5804685 b!5804686) bm!453059))

(assert (= (or b!5804687 b!5804682) bm!453060))

(assert (= (or b!5804680 bm!453060) bm!453058))

(declare-fun m!6744340 () Bool)

(assert (=> b!5804681 m!6744340))

(declare-fun m!6744342 () Bool)

(assert (=> bm!453059 m!6744342))

(declare-fun m!6744344 () Bool)

(assert (=> bm!453058 m!6744344))

(assert (=> d!1828210 d!1828344))

(declare-fun bs!1370485 () Bool)

(declare-fun d!1828346 () Bool)

(assert (= bs!1370485 (and d!1828346 d!1828112)))

(declare-fun lambda!316723 () Int)

(assert (=> bs!1370485 (= lambda!316723 lambda!316647)))

(declare-fun bs!1370486 () Bool)

(assert (= bs!1370486 (and d!1828346 d!1828202)))

(assert (=> bs!1370486 (= lambda!316723 lambda!316688)))

(declare-fun bs!1370487 () Bool)

(assert (= bs!1370487 (and d!1828346 d!1828200)))

(assert (=> bs!1370487 (= lambda!316723 lambda!316685)))

(declare-fun bs!1370488 () Bool)

(assert (= bs!1370488 (and d!1828346 d!1828198)))

(assert (=> bs!1370488 (= lambda!316723 lambda!316680)))

(declare-fun bs!1370489 () Bool)

(assert (= bs!1370489 (and d!1828346 d!1828136)))

(assert (=> bs!1370489 (= lambda!316723 lambda!316653)))

(declare-fun b!5804689 () Bool)

(declare-fun e!3563496 () Bool)

(declare-fun lt!2298630 () Regex!15816)

(assert (=> b!5804689 (= e!3563496 (= lt!2298630 (head!12244 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624)))))))

(declare-fun b!5804691 () Bool)

(declare-fun e!3563495 () Regex!15816)

(assert (=> b!5804691 (= e!3563495 (Union!15816 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))) (generalisedUnion!1679 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))))

(declare-fun b!5804692 () Bool)

(declare-fun e!3563497 () Regex!15816)

(assert (=> b!5804692 (= e!3563497 e!3563495)))

(declare-fun c!1028279 () Bool)

(assert (=> b!5804692 (= c!1028279 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))

(declare-fun b!5804693 () Bool)

(assert (=> b!5804693 (= e!3563495 EmptyLang!15816)))

(declare-fun b!5804694 () Bool)

(assert (=> b!5804694 (= e!3563497 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))

(declare-fun b!5804695 () Bool)

(assert (=> b!5804695 (= e!3563496 (isUnion!729 lt!2298630))))

(declare-fun e!3563493 () Bool)

(assert (=> d!1828346 e!3563493))

(declare-fun res!2447799 () Bool)

(assert (=> d!1828346 (=> (not res!2447799) (not e!3563493))))

(assert (=> d!1828346 (= res!2447799 (validRegex!7552 lt!2298630))))

(assert (=> d!1828346 (= lt!2298630 e!3563497)))

(declare-fun c!1028277 () Bool)

(declare-fun e!3563494 () Bool)

(assert (=> d!1828346 (= c!1028277 e!3563494)))

(declare-fun res!2447798 () Bool)

(assert (=> d!1828346 (=> (not res!2447798) (not e!3563494))))

(assert (=> d!1828346 (= res!2447798 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))

(assert (=> d!1828346 (forall!14924 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624)) lambda!316723)))

(assert (=> d!1828346 (= (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))) lt!2298630)))

(declare-fun b!5804690 () Bool)

(declare-fun e!3563498 () Bool)

(assert (=> b!5804690 (= e!3563493 e!3563498)))

(declare-fun c!1028278 () Bool)

(assert (=> b!5804690 (= c!1028278 (isEmpty!35537 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624))))))

(declare-fun b!5804696 () Bool)

(assert (=> b!5804696 (= e!3563498 (isEmptyLang!1299 lt!2298630))))

(declare-fun b!5804697 () Bool)

(assert (=> b!5804697 (= e!3563498 e!3563496)))

(declare-fun c!1028280 () Bool)

(assert (=> b!5804697 (= c!1028280 (isEmpty!35537 (tail!11339 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624)))))))

(declare-fun b!5804698 () Bool)

(assert (=> b!5804698 (= e!3563494 (isEmpty!35537 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624)))))))

(assert (= (and d!1828346 res!2447798) b!5804698))

(assert (= (and d!1828346 c!1028277) b!5804694))

(assert (= (and d!1828346 (not c!1028277)) b!5804692))

(assert (= (and b!5804692 c!1028279) b!5804691))

(assert (= (and b!5804692 (not c!1028279)) b!5804693))

(assert (= (and d!1828346 res!2447799) b!5804690))

(assert (= (and b!5804690 c!1028278) b!5804696))

(assert (= (and b!5804690 (not c!1028278)) b!5804697))

(assert (= (and b!5804697 c!1028280) b!5804689))

(assert (= (and b!5804697 (not c!1028280)) b!5804695))

(declare-fun m!6744346 () Bool)

(assert (=> d!1828346 m!6744346))

(assert (=> d!1828346 m!6744048))

(declare-fun m!6744348 () Bool)

(assert (=> d!1828346 m!6744348))

(assert (=> b!5804689 m!6744048))

(declare-fun m!6744350 () Bool)

(assert (=> b!5804689 m!6744350))

(assert (=> b!5804690 m!6744048))

(declare-fun m!6744352 () Bool)

(assert (=> b!5804690 m!6744352))

(declare-fun m!6744354 () Bool)

(assert (=> b!5804698 m!6744354))

(declare-fun m!6744356 () Bool)

(assert (=> b!5804696 m!6744356))

(declare-fun m!6744358 () Bool)

(assert (=> b!5804695 m!6744358))

(assert (=> b!5804697 m!6744048))

(declare-fun m!6744360 () Bool)

(assert (=> b!5804697 m!6744360))

(assert (=> b!5804697 m!6744360))

(declare-fun m!6744362 () Bool)

(assert (=> b!5804697 m!6744362))

(declare-fun m!6744364 () Bool)

(assert (=> b!5804691 m!6744364))

(assert (=> d!1828210 d!1828346))

(declare-fun bs!1370490 () Bool)

(declare-fun d!1828348 () Bool)

(assert (= bs!1370490 (and d!1828348 d!1828112)))

(declare-fun lambda!316724 () Int)

(assert (=> bs!1370490 (= lambda!316724 lambda!316647)))

(declare-fun bs!1370491 () Bool)

(assert (= bs!1370491 (and d!1828348 d!1828346)))

(assert (=> bs!1370491 (= lambda!316724 lambda!316723)))

(declare-fun bs!1370492 () Bool)

(assert (= bs!1370492 (and d!1828348 d!1828202)))

(assert (=> bs!1370492 (= lambda!316724 lambda!316688)))

(declare-fun bs!1370493 () Bool)

(assert (= bs!1370493 (and d!1828348 d!1828200)))

(assert (=> bs!1370493 (= lambda!316724 lambda!316685)))

(declare-fun bs!1370494 () Bool)

(assert (= bs!1370494 (and d!1828348 d!1828198)))

(assert (=> bs!1370494 (= lambda!316724 lambda!316680)))

(declare-fun bs!1370495 () Bool)

(assert (= bs!1370495 (and d!1828348 d!1828136)))

(assert (=> bs!1370495 (= lambda!316724 lambda!316653)))

(declare-fun lt!2298631 () List!63747)

(assert (=> d!1828348 (forall!14924 lt!2298631 lambda!316724)))

(declare-fun e!3563499 () List!63747)

(assert (=> d!1828348 (= lt!2298631 e!3563499)))

(declare-fun c!1028281 () Bool)

(assert (=> d!1828348 (= c!1028281 (is-Cons!63624 (Cons!63624 lt!2298456 Nil!63624)))))

(assert (=> d!1828348 (= (unfocusZipperList!1244 (Cons!63624 lt!2298456 Nil!63624)) lt!2298631)))

(declare-fun b!5804699 () Bool)

(assert (=> b!5804699 (= e!3563499 (Cons!63623 (generalisedConcat!1431 (exprs!5700 (h!70072 (Cons!63624 lt!2298456 Nil!63624)))) (unfocusZipperList!1244 (t!377099 (Cons!63624 lt!2298456 Nil!63624)))))))

(declare-fun b!5804700 () Bool)

(assert (=> b!5804700 (= e!3563499 Nil!63623)))

(assert (= (and d!1828348 c!1028281) b!5804699))

(assert (= (and d!1828348 (not c!1028281)) b!5804700))

(declare-fun m!6744366 () Bool)

(assert (=> d!1828348 m!6744366))

(declare-fun m!6744368 () Bool)

(assert (=> b!5804699 m!6744368))

(declare-fun m!6744370 () Bool)

(assert (=> b!5804699 m!6744370))

(assert (=> d!1828210 d!1828348))

(declare-fun d!1828350 () Bool)

(assert (=> d!1828350 (= (isEmptyLang!1299 lt!2298579) (is-EmptyLang!15816 lt!2298579))))

(assert (=> b!5804254 d!1828350))

(declare-fun d!1828352 () Bool)

(assert (=> d!1828352 (= (Exists!2916 lambda!316671) (choose!44046 lambda!316671))))

(declare-fun bs!1370496 () Bool)

(assert (= bs!1370496 d!1828352))

(declare-fun m!6744372 () Bool)

(assert (=> bs!1370496 m!6744372))

(assert (=> d!1828176 d!1828352))

(declare-fun d!1828354 () Bool)

(assert (=> d!1828354 (= (Exists!2916 lambda!316672) (choose!44046 lambda!316672))))

(declare-fun bs!1370497 () Bool)

(assert (= bs!1370497 d!1828354))

(declare-fun m!6744374 () Bool)

(assert (=> bs!1370497 m!6744374))

(assert (=> d!1828176 d!1828354))

(declare-fun bs!1370498 () Bool)

(declare-fun d!1828356 () Bool)

(assert (= bs!1370498 (and d!1828356 d!1828176)))

(declare-fun lambda!316729 () Int)

(assert (=> bs!1370498 (= lambda!316729 lambda!316671)))

(declare-fun bs!1370499 () Bool)

(assert (= bs!1370499 (and d!1828356 d!1828174)))

(assert (=> bs!1370499 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316729 lambda!316665))))

(declare-fun bs!1370500 () Bool)

(assert (= bs!1370500 (and d!1828356 d!1828196)))

(assert (=> bs!1370500 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316729 lambda!316679))))

(declare-fun bs!1370501 () Bool)

(assert (= bs!1370501 (and d!1828356 b!5803746)))

(assert (=> bs!1370501 (not (= lambda!316729 lambda!316620))))

(declare-fun bs!1370502 () Bool)

(assert (= bs!1370502 (and d!1828356 b!5804034)))

(assert (=> bs!1370502 (not (= lambda!316729 lambda!316659))))

(assert (=> bs!1370499 (not (= lambda!316729 lambda!316666))))

(declare-fun bs!1370503 () Bool)

(assert (= bs!1370503 (and d!1828356 b!5804039)))

(assert (=> bs!1370503 (not (= lambda!316729 lambda!316658))))

(assert (=> bs!1370501 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316729 lambda!316619))))

(assert (=> bs!1370498 (not (= lambda!316729 lambda!316672))))

(assert (=> bs!1370501 (not (= lambda!316729 lambda!316621))))

(assert (=> d!1828356 true))

(assert (=> d!1828356 true))

(declare-fun lambda!316730 () Int)

(assert (=> bs!1370498 (not (= lambda!316730 lambda!316671))))

(assert (=> bs!1370499 (not (= lambda!316730 lambda!316665))))

(assert (=> bs!1370500 (not (= lambda!316730 lambda!316679))))

(assert (=> bs!1370501 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316730 lambda!316620))))

(assert (=> bs!1370502 (not (= lambda!316730 lambda!316659))))

(assert (=> bs!1370499 (not (= lambda!316730 lambda!316666))))

(assert (=> bs!1370503 (= (= (Star!15816 (reg!16145 r!7292)) r!7292) (= lambda!316730 lambda!316658))))

(assert (=> bs!1370501 (not (= lambda!316730 lambda!316619))))

(assert (=> bs!1370498 (= lambda!316730 lambda!316672)))

(declare-fun bs!1370504 () Bool)

(assert (= bs!1370504 d!1828356))

(assert (=> bs!1370504 (not (= lambda!316730 lambda!316729))))

(assert (=> bs!1370501 (not (= lambda!316730 lambda!316621))))

(assert (=> d!1828356 true))

(assert (=> d!1828356 true))

(assert (=> d!1828356 (= (Exists!2916 lambda!316729) (Exists!2916 lambda!316730))))

(assert (=> d!1828356 true))

(declare-fun _$91!560 () Unit!156892)

(assert (=> d!1828356 (= (choose!44045 (reg!16145 r!7292) s!2326) _$91!560)))

(declare-fun m!6744376 () Bool)

(assert (=> bs!1370504 m!6744376))

(declare-fun m!6744378 () Bool)

(assert (=> bs!1370504 m!6744378))

(assert (=> d!1828176 d!1828356))

(declare-fun b!5804711 () Bool)

(declare-fun e!3563504 () Bool)

(declare-fun call!453067 () Bool)

(assert (=> b!5804711 (= e!3563504 call!453067)))

(declare-fun b!5804712 () Bool)

(declare-fun e!3563505 () Bool)

(assert (=> b!5804712 (= e!3563505 e!3563504)))

(declare-fun res!2447813 () Bool)

(assert (=> b!5804712 (= res!2447813 (not (nullable!5842 (reg!16145 (reg!16145 r!7292)))))))

(assert (=> b!5804712 (=> (not res!2447813) (not e!3563504))))

(declare-fun b!5804713 () Bool)

(declare-fun e!3563506 () Bool)

(declare-fun e!3563508 () Bool)

(assert (=> b!5804713 (= e!3563506 e!3563508)))

(declare-fun res!2447812 () Bool)

(assert (=> b!5804713 (=> (not res!2447812) (not e!3563508))))

(declare-fun call!453068 () Bool)

(assert (=> b!5804713 (= res!2447812 call!453068)))

(declare-fun bm!453062 () Bool)

(declare-fun call!453066 () Bool)

(declare-fun c!1028282 () Bool)

(assert (=> bm!453062 (= call!453066 (validRegex!7552 (ite c!1028282 (regTwo!32145 (reg!16145 r!7292)) (regTwo!32144 (reg!16145 r!7292)))))))

(declare-fun b!5804714 () Bool)

(declare-fun e!3563510 () Bool)

(assert (=> b!5804714 (= e!3563505 e!3563510)))

(assert (=> b!5804714 (= c!1028282 (is-Union!15816 (reg!16145 r!7292)))))

(declare-fun bm!453063 () Bool)

(assert (=> bm!453063 (= call!453068 call!453067)))

(declare-fun b!5804715 () Bool)

(declare-fun res!2447811 () Bool)

(assert (=> b!5804715 (=> res!2447811 e!3563506)))

(assert (=> b!5804715 (= res!2447811 (not (is-Concat!24661 (reg!16145 r!7292))))))

(assert (=> b!5804715 (= e!3563510 e!3563506)))

(declare-fun b!5804716 () Bool)

(declare-fun e!3563509 () Bool)

(assert (=> b!5804716 (= e!3563509 call!453066)))

(declare-fun b!5804717 () Bool)

(assert (=> b!5804717 (= e!3563508 call!453066)))

(declare-fun d!1828358 () Bool)

(declare-fun res!2447810 () Bool)

(declare-fun e!3563507 () Bool)

(assert (=> d!1828358 (=> res!2447810 e!3563507)))

(assert (=> d!1828358 (= res!2447810 (is-ElementMatch!15816 (reg!16145 r!7292)))))

(assert (=> d!1828358 (= (validRegex!7552 (reg!16145 r!7292)) e!3563507)))

(declare-fun c!1028283 () Bool)

(declare-fun bm!453061 () Bool)

(assert (=> bm!453061 (= call!453067 (validRegex!7552 (ite c!1028283 (reg!16145 (reg!16145 r!7292)) (ite c!1028282 (regOne!32145 (reg!16145 r!7292)) (regOne!32144 (reg!16145 r!7292))))))))

(declare-fun b!5804718 () Bool)

(declare-fun res!2447814 () Bool)

(assert (=> b!5804718 (=> (not res!2447814) (not e!3563509))))

(assert (=> b!5804718 (= res!2447814 call!453068)))

(assert (=> b!5804718 (= e!3563510 e!3563509)))

(declare-fun b!5804719 () Bool)

(assert (=> b!5804719 (= e!3563507 e!3563505)))

(assert (=> b!5804719 (= c!1028283 (is-Star!15816 (reg!16145 r!7292)))))

(assert (= (and d!1828358 (not res!2447810)) b!5804719))

(assert (= (and b!5804719 c!1028283) b!5804712))

(assert (= (and b!5804719 (not c!1028283)) b!5804714))

(assert (= (and b!5804712 res!2447813) b!5804711))

(assert (= (and b!5804714 c!1028282) b!5804718))

(assert (= (and b!5804714 (not c!1028282)) b!5804715))

(assert (= (and b!5804718 res!2447814) b!5804716))

(assert (= (and b!5804715 (not res!2447811)) b!5804713))

(assert (= (and b!5804713 res!2447812) b!5804717))

(assert (= (or b!5804716 b!5804717) bm!453062))

(assert (= (or b!5804718 b!5804713) bm!453063))

(assert (= (or b!5804711 bm!453063) bm!453061))

(declare-fun m!6744380 () Bool)

(assert (=> b!5804712 m!6744380))

(declare-fun m!6744382 () Bool)

(assert (=> bm!453062 m!6744382))

(declare-fun m!6744384 () Bool)

(assert (=> bm!453061 m!6744384))

(assert (=> d!1828176 d!1828358))

(assert (=> bs!1370426 d!1828132))

(declare-fun c!1028285 () Bool)

(declare-fun d!1828360 () Bool)

(assert (=> d!1828360 (= c!1028285 (and (is-ElementMatch!15816 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (= (c!1028045 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (h!70073 s!2326))))))

(declare-fun e!3563514 () (Set Context!10400))

(assert (=> d!1828360 (= (derivationStepZipperDown!1154 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))) (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019)) (h!70073 s!2326)) e!3563514)))

(declare-fun bm!453064 () Bool)

(declare-fun call!453073 () List!63747)

(declare-fun call!453070 () List!63747)

(assert (=> bm!453064 (= call!453073 call!453070)))

(declare-fun c!1028287 () Bool)

(declare-fun bm!453065 () Bool)

(declare-fun c!1028288 () Bool)

(assert (=> bm!453065 (= call!453070 ($colon$colon!1797 (exprs!5700 (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019))) (ite (or c!1028288 c!1028287) (regTwo!32144 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))))))))

(declare-fun b!5804720 () Bool)

(declare-fun e!3563515 () (Set Context!10400))

(declare-fun call!453074 () (Set Context!10400))

(assert (=> b!5804720 (= e!3563515 call!453074)))

(declare-fun e!3563513 () Bool)

(declare-fun b!5804721 () Bool)

(assert (=> b!5804721 (= e!3563513 (nullable!5842 (regOne!32144 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))))))))

(declare-fun b!5804722 () Bool)

(declare-fun e!3563511 () (Set Context!10400))

(assert (=> b!5804722 (= e!3563511 e!3563515)))

(assert (=> b!5804722 (= c!1028287 (is-Concat!24661 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))))))

(declare-fun c!1028286 () Bool)

(declare-fun bm!453066 () Bool)

(declare-fun call!453069 () (Set Context!10400))

(assert (=> bm!453066 (= call!453069 (derivationStepZipperDown!1154 (ite c!1028286 (regOne!32145 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (ite c!1028288 (regTwo!32144 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (ite c!1028287 (regOne!32144 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (reg!16145 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))))))) (ite (or c!1028286 c!1028288) (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019)) (Context!10401 call!453073)) (h!70073 s!2326)))))

(declare-fun b!5804723 () Bool)

(assert (=> b!5804723 (= e!3563514 (set.insert (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019)) (as set.empty (Set Context!10400))))))

(declare-fun b!5804724 () Bool)

(declare-fun e!3563512 () (Set Context!10400))

(declare-fun call!453072 () (Set Context!10400))

(assert (=> b!5804724 (= e!3563512 (set.union call!453069 call!453072))))

(declare-fun bm!453067 () Bool)

(declare-fun call!453071 () (Set Context!10400))

(assert (=> bm!453067 (= call!453074 call!453071)))

(declare-fun b!5804725 () Bool)

(assert (=> b!5804725 (= e!3563514 e!3563512)))

(assert (=> b!5804725 (= c!1028286 (is-Union!15816 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))))))

(declare-fun bm!453068 () Bool)

(assert (=> bm!453068 (= call!453071 call!453069)))

(declare-fun bm!453069 () Bool)

(assert (=> bm!453069 (= call!453072 (derivationStepZipperDown!1154 (ite c!1028286 (regTwo!32145 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))) (regOne!32144 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292)))))) (ite c!1028286 (ite (or c!1028186 c!1028188) (Context!10401 Nil!63623) (Context!10401 call!453019)) (Context!10401 call!453070)) (h!70073 s!2326)))))

(declare-fun b!5804726 () Bool)

(declare-fun e!3563516 () (Set Context!10400))

(assert (=> b!5804726 (= e!3563516 call!453074)))

(declare-fun b!5804727 () Bool)

(declare-fun c!1028284 () Bool)

(assert (=> b!5804727 (= c!1028284 (is-Star!15816 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))))))

(assert (=> b!5804727 (= e!3563515 e!3563516)))

(declare-fun b!5804728 () Bool)

(assert (=> b!5804728 (= e!3563511 (set.union call!453072 call!453071))))

(declare-fun b!5804729 () Bool)

(assert (=> b!5804729 (= c!1028288 e!3563513)))

(declare-fun res!2447815 () Bool)

(assert (=> b!5804729 (=> (not res!2447815) (not e!3563513))))

(assert (=> b!5804729 (= res!2447815 (is-Concat!24661 (ite c!1028186 (regOne!32145 r!7292) (ite c!1028188 (regTwo!32144 r!7292) (ite c!1028187 (regOne!32144 r!7292) (reg!16145 r!7292))))))))

(assert (=> b!5804729 (= e!3563512 e!3563511)))

(declare-fun b!5804730 () Bool)

(assert (=> b!5804730 (= e!3563516 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828360 c!1028285) b!5804723))

(assert (= (and d!1828360 (not c!1028285)) b!5804725))

(assert (= (and b!5804725 c!1028286) b!5804724))

(assert (= (and b!5804725 (not c!1028286)) b!5804729))

(assert (= (and b!5804729 res!2447815) b!5804721))

(assert (= (and b!5804729 c!1028288) b!5804728))

(assert (= (and b!5804729 (not c!1028288)) b!5804722))

(assert (= (and b!5804722 c!1028287) b!5804720))

(assert (= (and b!5804722 (not c!1028287)) b!5804727))

(assert (= (and b!5804727 c!1028284) b!5804726))

(assert (= (and b!5804727 (not c!1028284)) b!5804730))

(assert (= (or b!5804720 b!5804726) bm!453064))

(assert (= (or b!5804720 b!5804726) bm!453067))

(assert (= (or b!5804728 bm!453064) bm!453065))

(assert (= (or b!5804728 bm!453067) bm!453068))

(assert (= (or b!5804724 b!5804728) bm!453069))

(assert (= (or b!5804724 bm!453068) bm!453066))

(declare-fun m!6744386 () Bool)

(assert (=> bm!453065 m!6744386))

(declare-fun m!6744388 () Bool)

(assert (=> bm!453066 m!6744388))

(declare-fun m!6744390 () Bool)

(assert (=> b!5804723 m!6744390))

(declare-fun m!6744392 () Bool)

(assert (=> b!5804721 m!6744392))

(declare-fun m!6744394 () Bool)

(assert (=> bm!453069 m!6744394))

(assert (=> bm!453012 d!1828360))

(declare-fun d!1828362 () Bool)

(declare-fun nullableFct!1873 (Regex!15816) Bool)

(assert (=> d!1828362 (= (nullable!5842 (regOne!32144 (reg!16145 r!7292))) (nullableFct!1873 (regOne!32144 (reg!16145 r!7292))))))

(declare-fun bs!1370505 () Bool)

(assert (= bs!1370505 d!1828362))

(declare-fun m!6744396 () Bool)

(assert (=> bs!1370505 m!6744396))

(assert (=> b!5803974 d!1828362))

(declare-fun d!1828364 () Bool)

(declare-fun lambda!316733 () Int)

(declare-fun exists!2256 ((Set Context!10400) Int) Bool)

(assert (=> d!1828364 (= (nullableZipper!1725 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326))) (exists!2256 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) lambda!316733))))

(declare-fun bs!1370506 () Bool)

(assert (= bs!1370506 d!1828364))

(assert (=> bs!1370506 m!6743614))

(declare-fun m!6744398 () Bool)

(assert (=> bs!1370506 m!6744398))

(assert (=> b!5804117 d!1828364))

(declare-fun d!1828366 () Bool)

(assert (=> d!1828366 (= (head!12245 s!2326) (h!70073 s!2326))))

(assert (=> b!5804079 d!1828366))

(declare-fun d!1828368 () Bool)

(assert (=> d!1828368 (= (isEmpty!35537 (exprs!5700 (h!70072 zl!343))) (is-Nil!63623 (exprs!5700 (h!70072 zl!343))))))

(assert (=> b!5803891 d!1828368))

(declare-fun d!1828370 () Bool)

(assert (=> d!1828370 (= (isEmpty!35537 (tail!11339 (unfocusZipperList!1244 zl!343))) (is-Nil!63623 (tail!11339 (unfocusZipperList!1244 zl!343))))))

(assert (=> b!5804255 d!1828370))

(declare-fun d!1828372 () Bool)

(assert (=> d!1828372 (= (tail!11339 (unfocusZipperList!1244 zl!343)) (t!377098 (unfocusZipperList!1244 zl!343)))))

(assert (=> b!5804255 d!1828372))

(declare-fun bs!1370507 () Bool)

(declare-fun d!1828374 () Bool)

(assert (= bs!1370507 (and d!1828374 d!1828364)))

(declare-fun lambda!316734 () Int)

(assert (=> bs!1370507 (= lambda!316734 lambda!316733)))

(assert (=> d!1828374 (= (nullableZipper!1725 lt!2298446) (exists!2256 lt!2298446 lambda!316734))))

(declare-fun bs!1370508 () Bool)

(assert (= bs!1370508 d!1828374))

(declare-fun m!6744400 () Bool)

(assert (=> bs!1370508 m!6744400))

(assert (=> b!5804115 d!1828374))

(declare-fun d!1828376 () Bool)

(assert (=> d!1828376 (= (nullable!5842 (h!70071 (exprs!5700 lt!2298456))) (nullableFct!1873 (h!70071 (exprs!5700 lt!2298456))))))

(declare-fun bs!1370509 () Bool)

(assert (= bs!1370509 d!1828376))

(declare-fun m!6744402 () Bool)

(assert (=> bs!1370509 m!6744402))

(assert (=> b!5803921 d!1828376))

(declare-fun d!1828378 () Bool)

(assert (=> d!1828378 (= (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (nullableFct!1873 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(declare-fun bs!1370510 () Bool)

(assert (= bs!1370510 d!1828378))

(declare-fun m!6744404 () Bool)

(assert (=> bs!1370510 m!6744404))

(assert (=> b!5804279 d!1828378))

(assert (=> d!1828194 d!1828340))

(declare-fun b!5804731 () Bool)

(declare-fun e!3563522 () Bool)

(declare-fun e!3563518 () Bool)

(assert (=> b!5804731 (= e!3563522 e!3563518)))

(declare-fun res!2447822 () Bool)

(assert (=> b!5804731 (=> res!2447822 e!3563518)))

(declare-fun call!453075 () Bool)

(assert (=> b!5804731 (= res!2447822 call!453075)))

(declare-fun d!1828380 () Bool)

(declare-fun e!3563521 () Bool)

(assert (=> d!1828380 e!3563521))

(declare-fun c!1028293 () Bool)

(assert (=> d!1828380 (= c!1028293 (is-EmptyExpr!15816 (reg!16145 r!7292)))))

(declare-fun lt!2298632 () Bool)

(declare-fun e!3563520 () Bool)

(assert (=> d!1828380 (= lt!2298632 e!3563520)))

(declare-fun c!1028292 () Bool)

(assert (=> d!1828380 (= c!1028292 (isEmpty!35534 Nil!63625))))

(assert (=> d!1828380 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828380 (= (matchR!8001 (reg!16145 r!7292) Nil!63625) lt!2298632)))

(declare-fun b!5804732 () Bool)

(assert (=> b!5804732 (= e!3563521 (= lt!2298632 call!453075))))

(declare-fun b!5804733 () Bool)

(declare-fun res!2447818 () Bool)

(declare-fun e!3563523 () Bool)

(assert (=> b!5804733 (=> res!2447818 e!3563523)))

(declare-fun e!3563517 () Bool)

(assert (=> b!5804733 (= res!2447818 e!3563517)))

(declare-fun res!2447821 () Bool)

(assert (=> b!5804733 (=> (not res!2447821) (not e!3563517))))

(assert (=> b!5804733 (= res!2447821 lt!2298632)))

(declare-fun b!5804734 () Bool)

(assert (=> b!5804734 (= e!3563518 (not (= (head!12245 Nil!63625) (c!1028045 (reg!16145 r!7292)))))))

(declare-fun bm!453070 () Bool)

(assert (=> bm!453070 (= call!453075 (isEmpty!35534 Nil!63625))))

(declare-fun b!5804735 () Bool)

(assert (=> b!5804735 (= e!3563517 (= (head!12245 Nil!63625) (c!1028045 (reg!16145 r!7292))))))

(declare-fun b!5804736 () Bool)

(assert (=> b!5804736 (= e!3563520 (nullable!5842 (reg!16145 r!7292)))))

(declare-fun b!5804737 () Bool)

(assert (=> b!5804737 (= e!3563520 (matchR!8001 (derivativeStep!4585 (reg!16145 r!7292) (head!12245 Nil!63625)) (tail!11340 Nil!63625)))))

(declare-fun b!5804738 () Bool)

(declare-fun res!2447816 () Bool)

(assert (=> b!5804738 (=> (not res!2447816) (not e!3563517))))

(assert (=> b!5804738 (= res!2447816 (isEmpty!35534 (tail!11340 Nil!63625)))))

(declare-fun b!5804739 () Bool)

(assert (=> b!5804739 (= e!3563523 e!3563522)))

(declare-fun res!2447823 () Bool)

(assert (=> b!5804739 (=> (not res!2447823) (not e!3563522))))

(assert (=> b!5804739 (= res!2447823 (not lt!2298632))))

(declare-fun b!5804740 () Bool)

(declare-fun e!3563519 () Bool)

(assert (=> b!5804740 (= e!3563519 (not lt!2298632))))

(declare-fun b!5804741 () Bool)

(declare-fun res!2447820 () Bool)

(assert (=> b!5804741 (=> res!2447820 e!3563523)))

(assert (=> b!5804741 (= res!2447820 (not (is-ElementMatch!15816 (reg!16145 r!7292))))))

(assert (=> b!5804741 (= e!3563519 e!3563523)))

(declare-fun b!5804742 () Bool)

(declare-fun res!2447819 () Bool)

(assert (=> b!5804742 (=> (not res!2447819) (not e!3563517))))

(assert (=> b!5804742 (= res!2447819 (not call!453075))))

(declare-fun b!5804743 () Bool)

(assert (=> b!5804743 (= e!3563521 e!3563519)))

(declare-fun c!1028291 () Bool)

(assert (=> b!5804743 (= c!1028291 (is-EmptyLang!15816 (reg!16145 r!7292)))))

(declare-fun b!5804744 () Bool)

(declare-fun res!2447817 () Bool)

(assert (=> b!5804744 (=> res!2447817 e!3563518)))

(assert (=> b!5804744 (= res!2447817 (not (isEmpty!35534 (tail!11340 Nil!63625))))))

(assert (= (and d!1828380 c!1028292) b!5804736))

(assert (= (and d!1828380 (not c!1028292)) b!5804737))

(assert (= (and d!1828380 c!1028293) b!5804732))

(assert (= (and d!1828380 (not c!1028293)) b!5804743))

(assert (= (and b!5804743 c!1028291) b!5804740))

(assert (= (and b!5804743 (not c!1028291)) b!5804741))

(assert (= (and b!5804741 (not res!2447820)) b!5804733))

(assert (= (and b!5804733 res!2447821) b!5804742))

(assert (= (and b!5804742 res!2447819) b!5804738))

(assert (= (and b!5804738 res!2447816) b!5804735))

(assert (= (and b!5804733 (not res!2447818)) b!5804739))

(assert (= (and b!5804739 res!2447823) b!5804731))

(assert (= (and b!5804731 (not res!2447822)) b!5804744))

(assert (= (and b!5804744 (not res!2447817)) b!5804734))

(assert (= (or b!5804732 b!5804731 b!5804742) bm!453070))

(declare-fun m!6744406 () Bool)

(assert (=> b!5804737 m!6744406))

(assert (=> b!5804737 m!6744406))

(declare-fun m!6744408 () Bool)

(assert (=> b!5804737 m!6744408))

(declare-fun m!6744410 () Bool)

(assert (=> b!5804737 m!6744410))

(assert (=> b!5804737 m!6744408))

(assert (=> b!5804737 m!6744410))

(declare-fun m!6744412 () Bool)

(assert (=> b!5804737 m!6744412))

(assert (=> b!5804744 m!6744410))

(assert (=> b!5804744 m!6744410))

(declare-fun m!6744414 () Bool)

(assert (=> b!5804744 m!6744414))

(assert (=> b!5804734 m!6744406))

(assert (=> b!5804735 m!6744406))

(declare-fun m!6744416 () Bool)

(assert (=> bm!453070 m!6744416))

(assert (=> d!1828380 m!6744416))

(assert (=> d!1828380 m!6743944))

(assert (=> b!5804738 m!6744410))

(assert (=> b!5804738 m!6744410))

(assert (=> b!5804738 m!6744414))

(assert (=> b!5804736 m!6743854))

(assert (=> d!1828194 d!1828380))

(assert (=> d!1828194 d!1828358))

(declare-fun d!1828382 () Bool)

(assert (=> d!1828382 (= (Exists!2916 (ite c!1028116 lambda!316658 lambda!316659)) (choose!44046 (ite c!1028116 lambda!316658 lambda!316659)))))

(declare-fun bs!1370511 () Bool)

(assert (= bs!1370511 d!1828382))

(declare-fun m!6744418 () Bool)

(assert (=> bs!1370511 m!6744418))

(assert (=> bm!452979 d!1828382))

(declare-fun d!1828384 () Bool)

(assert (=> d!1828384 (= (nullable!5842 (h!70071 (exprs!5700 lt!2298451))) (nullableFct!1873 (h!70071 (exprs!5700 lt!2298451))))))

(declare-fun bs!1370512 () Bool)

(assert (= bs!1370512 d!1828384))

(declare-fun m!6744420 () Bool)

(assert (=> bs!1370512 m!6744420))

(assert (=> b!5803916 d!1828384))

(declare-fun bs!1370513 () Bool)

(declare-fun d!1828386 () Bool)

(assert (= bs!1370513 (and d!1828386 d!1828112)))

(declare-fun lambda!316735 () Int)

(assert (=> bs!1370513 (= lambda!316735 lambda!316647)))

(declare-fun bs!1370514 () Bool)

(assert (= bs!1370514 (and d!1828386 d!1828346)))

(assert (=> bs!1370514 (= lambda!316735 lambda!316723)))

(declare-fun bs!1370515 () Bool)

(assert (= bs!1370515 (and d!1828386 d!1828202)))

(assert (=> bs!1370515 (= lambda!316735 lambda!316688)))

(declare-fun bs!1370516 () Bool)

(assert (= bs!1370516 (and d!1828386 d!1828348)))

(assert (=> bs!1370516 (= lambda!316735 lambda!316724)))

(declare-fun bs!1370517 () Bool)

(assert (= bs!1370517 (and d!1828386 d!1828200)))

(assert (=> bs!1370517 (= lambda!316735 lambda!316685)))

(declare-fun bs!1370518 () Bool)

(assert (= bs!1370518 (and d!1828386 d!1828198)))

(assert (=> bs!1370518 (= lambda!316735 lambda!316680)))

(declare-fun bs!1370519 () Bool)

(assert (= bs!1370519 (and d!1828386 d!1828136)))

(assert (=> bs!1370519 (= lambda!316735 lambda!316653)))

(assert (=> d!1828386 (= (inv!82788 setElem!39051) (forall!14924 (exprs!5700 setElem!39051) lambda!316735))))

(declare-fun bs!1370520 () Bool)

(assert (= bs!1370520 d!1828386))

(declare-fun m!6744422 () Bool)

(assert (=> bs!1370520 m!6744422))

(assert (=> setNonEmpty!39051 d!1828386))

(declare-fun d!1828388 () Bool)

(declare-fun res!2447828 () Bool)

(declare-fun e!3563528 () Bool)

(assert (=> d!1828388 (=> res!2447828 e!3563528)))

(assert (=> d!1828388 (= res!2447828 (is-Nil!63624 lt!2298585))))

(assert (=> d!1828388 (= (noDuplicate!1711 lt!2298585) e!3563528)))

(declare-fun b!5804749 () Bool)

(declare-fun e!3563529 () Bool)

(assert (=> b!5804749 (= e!3563528 e!3563529)))

(declare-fun res!2447829 () Bool)

(assert (=> b!5804749 (=> (not res!2447829) (not e!3563529))))

(declare-fun contains!19882 (List!63748 Context!10400) Bool)

(assert (=> b!5804749 (= res!2447829 (not (contains!19882 (t!377099 lt!2298585) (h!70072 lt!2298585))))))

(declare-fun b!5804750 () Bool)

(assert (=> b!5804750 (= e!3563529 (noDuplicate!1711 (t!377099 lt!2298585)))))

(assert (= (and d!1828388 (not res!2447828)) b!5804749))

(assert (= (and b!5804749 res!2447829) b!5804750))

(declare-fun m!6744424 () Bool)

(assert (=> b!5804749 m!6744424))

(declare-fun m!6744426 () Bool)

(assert (=> b!5804750 m!6744426))

(assert (=> d!1828206 d!1828388))

(declare-fun d!1828390 () Bool)

(declare-fun e!3563538 () Bool)

(assert (=> d!1828390 e!3563538))

(declare-fun res!2447835 () Bool)

(assert (=> d!1828390 (=> (not res!2447835) (not e!3563538))))

(declare-fun res!2447834 () List!63748)

(assert (=> d!1828390 (= res!2447835 (noDuplicate!1711 res!2447834))))

(declare-fun e!3563536 () Bool)

(assert (=> d!1828390 e!3563536))

(assert (=> d!1828390 (= (choose!44048 z!1189) res!2447834)))

(declare-fun b!5804758 () Bool)

(declare-fun e!3563537 () Bool)

(declare-fun tp!1602409 () Bool)

(assert (=> b!5804758 (= e!3563537 tp!1602409)))

(declare-fun tp!1602410 () Bool)

(declare-fun b!5804757 () Bool)

(assert (=> b!5804757 (= e!3563536 (and (inv!82788 (h!70072 res!2447834)) e!3563537 tp!1602410))))

(declare-fun b!5804759 () Bool)

(assert (=> b!5804759 (= e!3563538 (= (content!11645 res!2447834) z!1189))))

(assert (= b!5804757 b!5804758))

(assert (= (and d!1828390 (is-Cons!63624 res!2447834)) b!5804757))

(assert (= (and d!1828390 res!2447835) b!5804759))

(declare-fun m!6744428 () Bool)

(assert (=> d!1828390 m!6744428))

(declare-fun m!6744430 () Bool)

(assert (=> b!5804757 m!6744430))

(declare-fun m!6744432 () Bool)

(assert (=> b!5804759 m!6744432))

(assert (=> d!1828206 d!1828390))

(declare-fun bm!453071 () Bool)

(declare-fun call!453076 () (Set Context!10400))

(assert (=> bm!453071 (= call!453076 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343))))))) (h!70073 s!2326)))))

(declare-fun b!5804760 () Bool)

(declare-fun e!3563539 () (Set Context!10400))

(assert (=> b!5804760 (= e!3563539 call!453076)))

(declare-fun b!5804761 () Bool)

(declare-fun e!3563540 () (Set Context!10400))

(assert (=> b!5804761 (= e!3563540 e!3563539)))

(declare-fun c!1028294 () Bool)

(assert (=> b!5804761 (= c!1028294 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))))))))

(declare-fun b!5804762 () Bool)

(declare-fun e!3563541 () Bool)

(assert (=> b!5804762 (= e!3563541 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343))))))))))

(declare-fun b!5804763 () Bool)

(assert (=> b!5804763 (= e!3563539 (as set.empty (Set Context!10400)))))

(declare-fun d!1828392 () Bool)

(declare-fun c!1028295 () Bool)

(assert (=> d!1828392 (= c!1028295 e!3563541)))

(declare-fun res!2447836 () Bool)

(assert (=> d!1828392 (=> (not res!2447836) (not e!3563541))))

(assert (=> d!1828392 (= res!2447836 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))))))))

(assert (=> d!1828392 (= (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343)))) (h!70073 s!2326)) e!3563540)))

(declare-fun b!5804764 () Bool)

(assert (=> b!5804764 (= e!3563540 (set.union call!453076 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (h!70072 zl!343))))))) (h!70073 s!2326))))))

(assert (= (and d!1828392 res!2447836) b!5804762))

(assert (= (and d!1828392 c!1028295) b!5804764))

(assert (= (and d!1828392 (not c!1028295)) b!5804761))

(assert (= (and b!5804761 c!1028294) b!5804760))

(assert (= (and b!5804761 (not c!1028294)) b!5804763))

(assert (= (or b!5804764 b!5804760) bm!453071))

(declare-fun m!6744434 () Bool)

(assert (=> bm!453071 m!6744434))

(declare-fun m!6744436 () Bool)

(assert (=> b!5804762 m!6744436))

(declare-fun m!6744438 () Bool)

(assert (=> b!5804764 m!6744438))

(assert (=> b!5803911 d!1828392))

(declare-fun d!1828394 () Bool)

(declare-fun res!2447837 () Bool)

(declare-fun e!3563542 () Bool)

(assert (=> d!1828394 (=> res!2447837 e!3563542)))

(assert (=> d!1828394 (= res!2447837 (is-Nil!63623 lt!2298582))))

(assert (=> d!1828394 (= (forall!14924 lt!2298582 lambda!316688) e!3563542)))

(declare-fun b!5804765 () Bool)

(declare-fun e!3563543 () Bool)

(assert (=> b!5804765 (= e!3563542 e!3563543)))

(declare-fun res!2447838 () Bool)

(assert (=> b!5804765 (=> (not res!2447838) (not e!3563543))))

(assert (=> b!5804765 (= res!2447838 (dynLambda!24911 lambda!316688 (h!70071 lt!2298582)))))

(declare-fun b!5804766 () Bool)

(assert (=> b!5804766 (= e!3563543 (forall!14924 (t!377098 lt!2298582) lambda!316688))))

(assert (= (and d!1828394 (not res!2447837)) b!5804765))

(assert (= (and b!5804765 res!2447838) b!5804766))

(declare-fun b_lambda!218825 () Bool)

(assert (=> (not b_lambda!218825) (not b!5804765)))

(declare-fun m!6744440 () Bool)

(assert (=> b!5804765 m!6744440))

(declare-fun m!6744442 () Bool)

(assert (=> b!5804766 m!6744442))

(assert (=> d!1828202 d!1828394))

(declare-fun d!1828396 () Bool)

(assert (=> d!1828396 (= (head!12244 (unfocusZipperList!1244 zl!343)) (h!70071 (unfocusZipperList!1244 zl!343)))))

(assert (=> b!5804247 d!1828396))

(assert (=> bs!1370425 d!1828134))

(declare-fun d!1828398 () Bool)

(assert (=> d!1828398 (= (isEmpty!35534 (t!377100 s!2326)) (is-Nil!63625 (t!377100 s!2326)))))

(assert (=> d!1828168 d!1828398))

(declare-fun bs!1370521 () Bool)

(declare-fun d!1828400 () Bool)

(assert (= bs!1370521 (and d!1828400 d!1828386)))

(declare-fun lambda!316736 () Int)

(assert (=> bs!1370521 (= lambda!316736 lambda!316735)))

(declare-fun bs!1370522 () Bool)

(assert (= bs!1370522 (and d!1828400 d!1828112)))

(assert (=> bs!1370522 (= lambda!316736 lambda!316647)))

(declare-fun bs!1370523 () Bool)

(assert (= bs!1370523 (and d!1828400 d!1828346)))

(assert (=> bs!1370523 (= lambda!316736 lambda!316723)))

(declare-fun bs!1370524 () Bool)

(assert (= bs!1370524 (and d!1828400 d!1828202)))

(assert (=> bs!1370524 (= lambda!316736 lambda!316688)))

(declare-fun bs!1370525 () Bool)

(assert (= bs!1370525 (and d!1828400 d!1828348)))

(assert (=> bs!1370525 (= lambda!316736 lambda!316724)))

(declare-fun bs!1370526 () Bool)

(assert (= bs!1370526 (and d!1828400 d!1828200)))

(assert (=> bs!1370526 (= lambda!316736 lambda!316685)))

(declare-fun bs!1370527 () Bool)

(assert (= bs!1370527 (and d!1828400 d!1828198)))

(assert (=> bs!1370527 (= lambda!316736 lambda!316680)))

(declare-fun bs!1370528 () Bool)

(assert (= bs!1370528 (and d!1828400 d!1828136)))

(assert (=> bs!1370528 (= lambda!316736 lambda!316653)))

(assert (=> d!1828400 (= (inv!82788 (h!70072 (t!377099 zl!343))) (forall!14924 (exprs!5700 (h!70072 (t!377099 zl!343))) lambda!316736))))

(declare-fun bs!1370529 () Bool)

(assert (= bs!1370529 d!1828400))

(declare-fun m!6744444 () Bool)

(assert (=> bs!1370529 m!6744444))

(assert (=> b!5804348 d!1828400))

(declare-fun b!5804767 () Bool)

(declare-fun e!3563544 () Bool)

(declare-fun call!453078 () Bool)

(assert (=> b!5804767 (= e!3563544 call!453078)))

(declare-fun b!5804768 () Bool)

(declare-fun e!3563545 () Bool)

(assert (=> b!5804768 (= e!3563545 e!3563544)))

(declare-fun res!2447842 () Bool)

(assert (=> b!5804768 (= res!2447842 (not (nullable!5842 (reg!16145 lt!2298535))))))

(assert (=> b!5804768 (=> (not res!2447842) (not e!3563544))))

(declare-fun b!5804769 () Bool)

(declare-fun e!3563546 () Bool)

(declare-fun e!3563548 () Bool)

(assert (=> b!5804769 (= e!3563546 e!3563548)))

(declare-fun res!2447841 () Bool)

(assert (=> b!5804769 (=> (not res!2447841) (not e!3563548))))

(declare-fun call!453079 () Bool)

(assert (=> b!5804769 (= res!2447841 call!453079)))

(declare-fun bm!453073 () Bool)

(declare-fun call!453077 () Bool)

(declare-fun c!1028296 () Bool)

(assert (=> bm!453073 (= call!453077 (validRegex!7552 (ite c!1028296 (regTwo!32145 lt!2298535) (regTwo!32144 lt!2298535))))))

(declare-fun b!5804770 () Bool)

(declare-fun e!3563550 () Bool)

(assert (=> b!5804770 (= e!3563545 e!3563550)))

(assert (=> b!5804770 (= c!1028296 (is-Union!15816 lt!2298535))))

(declare-fun bm!453074 () Bool)

(assert (=> bm!453074 (= call!453079 call!453078)))

(declare-fun b!5804771 () Bool)

(declare-fun res!2447840 () Bool)

(assert (=> b!5804771 (=> res!2447840 e!3563546)))

(assert (=> b!5804771 (= res!2447840 (not (is-Concat!24661 lt!2298535)))))

(assert (=> b!5804771 (= e!3563550 e!3563546)))

(declare-fun b!5804772 () Bool)

(declare-fun e!3563549 () Bool)

(assert (=> b!5804772 (= e!3563549 call!453077)))

(declare-fun b!5804773 () Bool)

(assert (=> b!5804773 (= e!3563548 call!453077)))

(declare-fun d!1828402 () Bool)

(declare-fun res!2447839 () Bool)

(declare-fun e!3563547 () Bool)

(assert (=> d!1828402 (=> res!2447839 e!3563547)))

(assert (=> d!1828402 (= res!2447839 (is-ElementMatch!15816 lt!2298535))))

(assert (=> d!1828402 (= (validRegex!7552 lt!2298535) e!3563547)))

(declare-fun bm!453072 () Bool)

(declare-fun c!1028297 () Bool)

(assert (=> bm!453072 (= call!453078 (validRegex!7552 (ite c!1028297 (reg!16145 lt!2298535) (ite c!1028296 (regOne!32145 lt!2298535) (regOne!32144 lt!2298535)))))))

(declare-fun b!5804774 () Bool)

(declare-fun res!2447843 () Bool)

(assert (=> b!5804774 (=> (not res!2447843) (not e!3563549))))

(assert (=> b!5804774 (= res!2447843 call!453079)))

(assert (=> b!5804774 (= e!3563550 e!3563549)))

(declare-fun b!5804775 () Bool)

(assert (=> b!5804775 (= e!3563547 e!3563545)))

(assert (=> b!5804775 (= c!1028297 (is-Star!15816 lt!2298535))))

(assert (= (and d!1828402 (not res!2447839)) b!5804775))

(assert (= (and b!5804775 c!1028297) b!5804768))

(assert (= (and b!5804775 (not c!1028297)) b!5804770))

(assert (= (and b!5804768 res!2447842) b!5804767))

(assert (= (and b!5804770 c!1028296) b!5804774))

(assert (= (and b!5804770 (not c!1028296)) b!5804771))

(assert (= (and b!5804774 res!2447843) b!5804772))

(assert (= (and b!5804771 (not res!2447840)) b!5804769))

(assert (= (and b!5804769 res!2447841) b!5804773))

(assert (= (or b!5804772 b!5804773) bm!453073))

(assert (= (or b!5804774 b!5804769) bm!453074))

(assert (= (or b!5804767 bm!453074) bm!453072))

(declare-fun m!6744446 () Bool)

(assert (=> b!5804768 m!6744446))

(declare-fun m!6744448 () Bool)

(assert (=> bm!453073 m!6744448))

(declare-fun m!6744450 () Bool)

(assert (=> bm!453072 m!6744450))

(assert (=> d!1828112 d!1828402))

(declare-fun d!1828404 () Bool)

(declare-fun res!2447844 () Bool)

(declare-fun e!3563551 () Bool)

(assert (=> d!1828404 (=> res!2447844 e!3563551)))

(assert (=> d!1828404 (= res!2447844 (is-Nil!63623 (exprs!5700 (h!70072 zl!343))))))

(assert (=> d!1828404 (= (forall!14924 (exprs!5700 (h!70072 zl!343)) lambda!316647) e!3563551)))

(declare-fun b!5804776 () Bool)

(declare-fun e!3563552 () Bool)

(assert (=> b!5804776 (= e!3563551 e!3563552)))

(declare-fun res!2447845 () Bool)

(assert (=> b!5804776 (=> (not res!2447845) (not e!3563552))))

(assert (=> b!5804776 (= res!2447845 (dynLambda!24911 lambda!316647 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5804777 () Bool)

(assert (=> b!5804777 (= e!3563552 (forall!14924 (t!377098 (exprs!5700 (h!70072 zl!343))) lambda!316647))))

(assert (= (and d!1828404 (not res!2447844)) b!5804776))

(assert (= (and b!5804776 res!2447845) b!5804777))

(declare-fun b_lambda!218827 () Bool)

(assert (=> (not b_lambda!218827) (not b!5804776)))

(declare-fun m!6744452 () Bool)

(assert (=> b!5804776 m!6744452))

(declare-fun m!6744454 () Bool)

(assert (=> b!5804777 m!6744454))

(assert (=> d!1828112 d!1828404))

(declare-fun bs!1370530 () Bool)

(declare-fun b!5804786 () Bool)

(assert (= bs!1370530 (and b!5804786 d!1828176)))

(declare-fun lambda!316737 () Int)

(assert (=> bs!1370530 (not (= lambda!316737 lambda!316671))))

(declare-fun bs!1370531 () Bool)

(assert (= bs!1370531 (and b!5804786 d!1828174)))

(assert (=> bs!1370531 (not (= lambda!316737 lambda!316665))))

(declare-fun bs!1370532 () Bool)

(assert (= bs!1370532 (and b!5804786 d!1828196)))

(assert (=> bs!1370532 (not (= lambda!316737 lambda!316679))))

(declare-fun bs!1370533 () Bool)

(assert (= bs!1370533 (and b!5804786 b!5803746)))

(assert (=> bs!1370533 (= (and (= (reg!16145 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regOne!32145 r!7292) r!7292)) (= lambda!316737 lambda!316620))))

(declare-fun bs!1370534 () Bool)

(assert (= bs!1370534 (and b!5804786 b!5804034)))

(assert (=> bs!1370534 (not (= lambda!316737 lambda!316659))))

(assert (=> bs!1370531 (not (= lambda!316737 lambda!316666))))

(declare-fun bs!1370535 () Bool)

(assert (= bs!1370535 (and b!5804786 b!5804039)))

(assert (=> bs!1370535 (= (and (= (reg!16145 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regOne!32145 r!7292) r!7292)) (= lambda!316737 lambda!316658))))

(assert (=> bs!1370533 (not (= lambda!316737 lambda!316619))))

(assert (=> bs!1370530 (= (and (= (reg!16145 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regOne!32145 r!7292) (Star!15816 (reg!16145 r!7292)))) (= lambda!316737 lambda!316672))))

(declare-fun bs!1370536 () Bool)

(assert (= bs!1370536 (and b!5804786 d!1828356)))

(assert (=> bs!1370536 (= (and (= (reg!16145 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regOne!32145 r!7292) (Star!15816 (reg!16145 r!7292)))) (= lambda!316737 lambda!316730))))

(assert (=> bs!1370536 (not (= lambda!316737 lambda!316729))))

(assert (=> bs!1370533 (not (= lambda!316737 lambda!316621))))

(assert (=> b!5804786 true))

(assert (=> b!5804786 true))

(declare-fun bs!1370537 () Bool)

(declare-fun b!5804781 () Bool)

(assert (= bs!1370537 (and b!5804781 d!1828176)))

(declare-fun lambda!316738 () Int)

(assert (=> bs!1370537 (not (= lambda!316738 lambda!316671))))

(declare-fun bs!1370538 () Bool)

(assert (= bs!1370538 (and b!5804781 d!1828196)))

(assert (=> bs!1370538 (not (= lambda!316738 lambda!316679))))

(declare-fun bs!1370539 () Bool)

(assert (= bs!1370539 (and b!5804781 b!5803746)))

(assert (=> bs!1370539 (not (= lambda!316738 lambda!316620))))

(declare-fun bs!1370540 () Bool)

(assert (= bs!1370540 (and b!5804781 b!5804034)))

(assert (=> bs!1370540 (= (and (= (regOne!32144 (regOne!32145 r!7292)) (regOne!32144 r!7292)) (= (regTwo!32144 (regOne!32145 r!7292)) (regTwo!32144 r!7292))) (= lambda!316738 lambda!316659))))

(declare-fun bs!1370541 () Bool)

(assert (= bs!1370541 (and b!5804781 d!1828174)))

(assert (=> bs!1370541 (= (and (= (regOne!32144 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32144 (regOne!32145 r!7292)) r!7292)) (= lambda!316738 lambda!316666))))

(declare-fun bs!1370542 () Bool)

(assert (= bs!1370542 (and b!5804781 b!5804039)))

(assert (=> bs!1370542 (not (= lambda!316738 lambda!316658))))

(assert (=> bs!1370539 (not (= lambda!316738 lambda!316619))))

(assert (=> bs!1370537 (not (= lambda!316738 lambda!316672))))

(declare-fun bs!1370543 () Bool)

(assert (= bs!1370543 (and b!5804781 d!1828356)))

(assert (=> bs!1370543 (not (= lambda!316738 lambda!316730))))

(declare-fun bs!1370544 () Bool)

(assert (= bs!1370544 (and b!5804781 b!5804786)))

(assert (=> bs!1370544 (not (= lambda!316738 lambda!316737))))

(assert (=> bs!1370541 (not (= lambda!316738 lambda!316665))))

(assert (=> bs!1370543 (not (= lambda!316738 lambda!316729))))

(assert (=> bs!1370539 (= (and (= (regOne!32144 (regOne!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32144 (regOne!32145 r!7292)) r!7292)) (= lambda!316738 lambda!316621))))

(assert (=> b!5804781 true))

(assert (=> b!5804781 true))

(declare-fun b!5804778 () Bool)

(declare-fun c!1028301 () Bool)

(assert (=> b!5804778 (= c!1028301 (is-ElementMatch!15816 (regOne!32145 r!7292)))))

(declare-fun e!3563553 () Bool)

(declare-fun e!3563554 () Bool)

(assert (=> b!5804778 (= e!3563553 e!3563554)))

(declare-fun call!453081 () Bool)

(declare-fun bm!453075 () Bool)

(declare-fun c!1028299 () Bool)

(assert (=> bm!453075 (= call!453081 (Exists!2916 (ite c!1028299 lambda!316737 lambda!316738)))))

(declare-fun b!5804779 () Bool)

(declare-fun e!3563556 () Bool)

(declare-fun e!3563555 () Bool)

(assert (=> b!5804779 (= e!3563556 e!3563555)))

(declare-fun res!2447846 () Bool)

(assert (=> b!5804779 (= res!2447846 (matchRSpec!2919 (regOne!32145 (regOne!32145 r!7292)) s!2326))))

(assert (=> b!5804779 (=> res!2447846 e!3563555)))

(declare-fun b!5804780 () Bool)

(declare-fun e!3563557 () Bool)

(declare-fun call!453080 () Bool)

(assert (=> b!5804780 (= e!3563557 call!453080)))

(declare-fun b!5804782 () Bool)

(assert (=> b!5804782 (= e!3563557 e!3563553)))

(declare-fun res!2447847 () Bool)

(assert (=> b!5804782 (= res!2447847 (not (is-EmptyLang!15816 (regOne!32145 r!7292))))))

(assert (=> b!5804782 (=> (not res!2447847) (not e!3563553))))

(declare-fun b!5804783 () Bool)

(declare-fun c!1028300 () Bool)

(assert (=> b!5804783 (= c!1028300 (is-Union!15816 (regOne!32145 r!7292)))))

(assert (=> b!5804783 (= e!3563554 e!3563556)))

(declare-fun b!5804784 () Bool)

(declare-fun e!3563558 () Bool)

(assert (=> b!5804784 (= e!3563556 e!3563558)))

(assert (=> b!5804784 (= c!1028299 (is-Star!15816 (regOne!32145 r!7292)))))

(declare-fun b!5804785 () Bool)

(declare-fun res!2447848 () Bool)

(declare-fun e!3563559 () Bool)

(assert (=> b!5804785 (=> res!2447848 e!3563559)))

(assert (=> b!5804785 (= res!2447848 call!453080)))

(assert (=> b!5804785 (= e!3563558 e!3563559)))

(assert (=> b!5804786 (= e!3563559 call!453081)))

(declare-fun b!5804787 () Bool)

(assert (=> b!5804787 (= e!3563554 (= s!2326 (Cons!63625 (c!1028045 (regOne!32145 r!7292)) Nil!63625)))))

(declare-fun d!1828406 () Bool)

(declare-fun c!1028298 () Bool)

(assert (=> d!1828406 (= c!1028298 (is-EmptyExpr!15816 (regOne!32145 r!7292)))))

(assert (=> d!1828406 (= (matchRSpec!2919 (regOne!32145 r!7292) s!2326) e!3563557)))

(assert (=> b!5804781 (= e!3563558 call!453081)))

(declare-fun bm!453076 () Bool)

(assert (=> bm!453076 (= call!453080 (isEmpty!35534 s!2326))))

(declare-fun b!5804788 () Bool)

(assert (=> b!5804788 (= e!3563555 (matchRSpec!2919 (regTwo!32145 (regOne!32145 r!7292)) s!2326))))

(assert (= (and d!1828406 c!1028298) b!5804780))

(assert (= (and d!1828406 (not c!1028298)) b!5804782))

(assert (= (and b!5804782 res!2447847) b!5804778))

(assert (= (and b!5804778 c!1028301) b!5804787))

(assert (= (and b!5804778 (not c!1028301)) b!5804783))

(assert (= (and b!5804783 c!1028300) b!5804779))

(assert (= (and b!5804783 (not c!1028300)) b!5804784))

(assert (= (and b!5804779 (not res!2447846)) b!5804788))

(assert (= (and b!5804784 c!1028299) b!5804785))

(assert (= (and b!5804784 (not c!1028299)) b!5804781))

(assert (= (and b!5804785 (not res!2447848)) b!5804786))

(assert (= (or b!5804786 b!5804781) bm!453075))

(assert (= (or b!5804780 b!5804785) bm!453076))

(declare-fun m!6744456 () Bool)

(assert (=> bm!453075 m!6744456))

(declare-fun m!6744458 () Bool)

(assert (=> b!5804779 m!6744458))

(assert (=> bm!453076 m!6743648))

(declare-fun m!6744460 () Bool)

(assert (=> b!5804788 m!6744460))

(assert (=> b!5804032 d!1828406))

(assert (=> b!5804088 d!1828330))

(assert (=> b!5804088 d!1828332))

(declare-fun d!1828408 () Bool)

(declare-fun c!1028302 () Bool)

(assert (=> d!1828408 (= c!1028302 (isEmpty!35534 (tail!11340 (t!377100 s!2326))))))

(declare-fun e!3563560 () Bool)

(assert (=> d!1828408 (= (matchZipper!1944 (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (head!12245 (t!377100 s!2326))) (tail!11340 (t!377100 s!2326))) e!3563560)))

(declare-fun b!5804789 () Bool)

(assert (=> b!5804789 (= e!3563560 (nullableZipper!1725 (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (head!12245 (t!377100 s!2326)))))))

(declare-fun b!5804790 () Bool)

(assert (=> b!5804790 (= e!3563560 (matchZipper!1944 (derivationStepZipper!1885 (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (head!12245 (t!377100 s!2326))) (head!12245 (tail!11340 (t!377100 s!2326)))) (tail!11340 (tail!11340 (t!377100 s!2326)))))))

(assert (= (and d!1828408 c!1028302) b!5804789))

(assert (= (and d!1828408 (not c!1028302)) b!5804790))

(assert (=> d!1828408 m!6743930))

(declare-fun m!6744462 () Bool)

(assert (=> d!1828408 m!6744462))

(assert (=> b!5804789 m!6743928))

(declare-fun m!6744464 () Bool)

(assert (=> b!5804789 m!6744464))

(assert (=> b!5804790 m!6743930))

(declare-fun m!6744466 () Bool)

(assert (=> b!5804790 m!6744466))

(assert (=> b!5804790 m!6743928))

(assert (=> b!5804790 m!6744466))

(declare-fun m!6744468 () Bool)

(assert (=> b!5804790 m!6744468))

(assert (=> b!5804790 m!6743930))

(declare-fun m!6744470 () Bool)

(assert (=> b!5804790 m!6744470))

(assert (=> b!5804790 m!6744468))

(assert (=> b!5804790 m!6744470))

(declare-fun m!6744472 () Bool)

(assert (=> b!5804790 m!6744472))

(assert (=> b!5804118 d!1828408))

(declare-fun bs!1370545 () Bool)

(declare-fun d!1828410 () Bool)

(assert (= bs!1370545 (and d!1828410 b!5803740)))

(declare-fun lambda!316739 () Int)

(assert (=> bs!1370545 (= (= (head!12245 (t!377100 s!2326)) (h!70073 s!2326)) (= lambda!316739 lambda!316622))))

(declare-fun bs!1370546 () Bool)

(assert (= bs!1370546 (and d!1828410 d!1828130)))

(assert (=> bs!1370546 (= (= (head!12245 (t!377100 s!2326)) (h!70073 s!2326)) (= lambda!316739 lambda!316650))))

(declare-fun bs!1370547 () Bool)

(assert (= bs!1370547 (and d!1828410 d!1828170)))

(assert (=> bs!1370547 (= (= (head!12245 (t!377100 s!2326)) (h!70073 s!2326)) (= lambda!316739 lambda!316660))))

(declare-fun bs!1370548 () Bool)

(assert (= bs!1370548 (and d!1828410 d!1828218)))

(assert (=> bs!1370548 (= (= (head!12245 (t!377100 s!2326)) (h!70073 s!2326)) (= lambda!316739 lambda!316689))))

(assert (=> d!1828410 true))

(assert (=> d!1828410 (= (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) (head!12245 (t!377100 s!2326))) (flatMap!1423 (derivationStepZipper!1885 lt!2298446 (h!70073 s!2326)) lambda!316739))))

(declare-fun bs!1370549 () Bool)

(assert (= bs!1370549 d!1828410))

(assert (=> bs!1370549 m!6743614))

(declare-fun m!6744474 () Bool)

(assert (=> bs!1370549 m!6744474))

(assert (=> b!5804118 d!1828410))

(declare-fun d!1828412 () Bool)

(assert (=> d!1828412 (= (head!12245 (t!377100 s!2326)) (h!70073 (t!377100 s!2326)))))

(assert (=> b!5804118 d!1828412))

(declare-fun d!1828414 () Bool)

(assert (=> d!1828414 (= (tail!11340 (t!377100 s!2326)) (t!377100 (t!377100 s!2326)))))

(assert (=> b!5804118 d!1828414))

(declare-fun d!1828416 () Bool)

(assert (=> d!1828416 (= (flatMap!1423 lt!2298444 lambda!316650) (choose!44041 lt!2298444 lambda!316650))))

(declare-fun bs!1370550 () Bool)

(assert (= bs!1370550 d!1828416))

(declare-fun m!6744476 () Bool)

(assert (=> bs!1370550 m!6744476))

(assert (=> d!1828130 d!1828416))

(declare-fun d!1828418 () Bool)

(assert (=> d!1828418 (= (nullable!5842 (reg!16145 r!7292)) (nullableFct!1873 (reg!16145 r!7292)))))

(declare-fun bs!1370551 () Bool)

(assert (= bs!1370551 d!1828418))

(declare-fun m!6744478 () Bool)

(assert (=> bs!1370551 m!6744478))

(assert (=> b!5803943 d!1828418))

(assert (=> b!5804261 d!1828112))

(declare-fun bs!1370552 () Bool)

(declare-fun d!1828420 () Bool)

(assert (= bs!1370552 (and d!1828420 d!1828386)))

(declare-fun lambda!316740 () Int)

(assert (=> bs!1370552 (= lambda!316740 lambda!316735)))

(declare-fun bs!1370553 () Bool)

(assert (= bs!1370553 (and d!1828420 d!1828346)))

(assert (=> bs!1370553 (= lambda!316740 lambda!316723)))

(declare-fun bs!1370554 () Bool)

(assert (= bs!1370554 (and d!1828420 d!1828202)))

(assert (=> bs!1370554 (= lambda!316740 lambda!316688)))

(declare-fun bs!1370555 () Bool)

(assert (= bs!1370555 (and d!1828420 d!1828348)))

(assert (=> bs!1370555 (= lambda!316740 lambda!316724)))

(declare-fun bs!1370556 () Bool)

(assert (= bs!1370556 (and d!1828420 d!1828200)))

(assert (=> bs!1370556 (= lambda!316740 lambda!316685)))

(declare-fun bs!1370557 () Bool)

(assert (= bs!1370557 (and d!1828420 d!1828112)))

(assert (=> bs!1370557 (= lambda!316740 lambda!316647)))

(declare-fun bs!1370558 () Bool)

(assert (= bs!1370558 (and d!1828420 d!1828400)))

(assert (=> bs!1370558 (= lambda!316740 lambda!316736)))

(declare-fun bs!1370559 () Bool)

(assert (= bs!1370559 (and d!1828420 d!1828198)))

(assert (=> bs!1370559 (= lambda!316740 lambda!316680)))

(declare-fun bs!1370560 () Bool)

(assert (= bs!1370560 (and d!1828420 d!1828136)))

(assert (=> bs!1370560 (= lambda!316740 lambda!316653)))

(declare-fun lt!2298633 () List!63747)

(assert (=> d!1828420 (forall!14924 lt!2298633 lambda!316740)))

(declare-fun e!3563561 () List!63747)

(assert (=> d!1828420 (= lt!2298633 e!3563561)))

(declare-fun c!1028303 () Bool)

(assert (=> d!1828420 (= c!1028303 (is-Cons!63624 (t!377099 zl!343)))))

(assert (=> d!1828420 (= (unfocusZipperList!1244 (t!377099 zl!343)) lt!2298633)))

(declare-fun b!5804791 () Bool)

(assert (=> b!5804791 (= e!3563561 (Cons!63623 (generalisedConcat!1431 (exprs!5700 (h!70072 (t!377099 zl!343)))) (unfocusZipperList!1244 (t!377099 (t!377099 zl!343)))))))

(declare-fun b!5804792 () Bool)

(assert (=> b!5804792 (= e!3563561 Nil!63623)))

(assert (= (and d!1828420 c!1028303) b!5804791))

(assert (= (and d!1828420 (not c!1028303)) b!5804792))

(declare-fun m!6744480 () Bool)

(assert (=> d!1828420 m!6744480))

(declare-fun m!6744482 () Bool)

(assert (=> b!5804791 m!6744482))

(declare-fun m!6744484 () Bool)

(assert (=> b!5804791 m!6744484))

(assert (=> b!5804261 d!1828420))

(declare-fun d!1828422 () Bool)

(declare-fun c!1028304 () Bool)

(assert (=> d!1828422 (= c!1028304 (isEmpty!35534 (tail!11340 s!2326)))))

(declare-fun e!3563562 () Bool)

(assert (=> d!1828422 (= (matchZipper!1944 (derivationStepZipper!1885 lt!2298446 (head!12245 s!2326)) (tail!11340 s!2326)) e!3563562)))

(declare-fun b!5804793 () Bool)

(assert (=> b!5804793 (= e!3563562 (nullableZipper!1725 (derivationStepZipper!1885 lt!2298446 (head!12245 s!2326))))))

(declare-fun b!5804794 () Bool)

(assert (=> b!5804794 (= e!3563562 (matchZipper!1944 (derivationStepZipper!1885 (derivationStepZipper!1885 lt!2298446 (head!12245 s!2326)) (head!12245 (tail!11340 s!2326))) (tail!11340 (tail!11340 s!2326))))))

(assert (= (and d!1828422 c!1028304) b!5804793))

(assert (= (and d!1828422 (not c!1028304)) b!5804794))

(assert (=> d!1828422 m!6743906))

(assert (=> d!1828422 m!6743910))

(assert (=> b!5804793 m!6743918))

(declare-fun m!6744486 () Bool)

(assert (=> b!5804793 m!6744486))

(assert (=> b!5804794 m!6743906))

(declare-fun m!6744488 () Bool)

(assert (=> b!5804794 m!6744488))

(assert (=> b!5804794 m!6743918))

(assert (=> b!5804794 m!6744488))

(declare-fun m!6744490 () Bool)

(assert (=> b!5804794 m!6744490))

(assert (=> b!5804794 m!6743906))

(declare-fun m!6744492 () Bool)

(assert (=> b!5804794 m!6744492))

(assert (=> b!5804794 m!6744490))

(assert (=> b!5804794 m!6744492))

(declare-fun m!6744494 () Bool)

(assert (=> b!5804794 m!6744494))

(assert (=> b!5804116 d!1828422))

(declare-fun bs!1370561 () Bool)

(declare-fun d!1828424 () Bool)

(assert (= bs!1370561 (and d!1828424 d!1828130)))

(declare-fun lambda!316741 () Int)

(assert (=> bs!1370561 (= (= (head!12245 s!2326) (h!70073 s!2326)) (= lambda!316741 lambda!316650))))

(declare-fun bs!1370562 () Bool)

(assert (= bs!1370562 (and d!1828424 d!1828410)))

(assert (=> bs!1370562 (= (= (head!12245 s!2326) (head!12245 (t!377100 s!2326))) (= lambda!316741 lambda!316739))))

(declare-fun bs!1370563 () Bool)

(assert (= bs!1370563 (and d!1828424 d!1828170)))

(assert (=> bs!1370563 (= (= (head!12245 s!2326) (h!70073 s!2326)) (= lambda!316741 lambda!316660))))

(declare-fun bs!1370564 () Bool)

(assert (= bs!1370564 (and d!1828424 d!1828218)))

(assert (=> bs!1370564 (= (= (head!12245 s!2326) (h!70073 s!2326)) (= lambda!316741 lambda!316689))))

(declare-fun bs!1370565 () Bool)

(assert (= bs!1370565 (and d!1828424 b!5803740)))

(assert (=> bs!1370565 (= (= (head!12245 s!2326) (h!70073 s!2326)) (= lambda!316741 lambda!316622))))

(assert (=> d!1828424 true))

(assert (=> d!1828424 (= (derivationStepZipper!1885 lt!2298446 (head!12245 s!2326)) (flatMap!1423 lt!2298446 lambda!316741))))

(declare-fun bs!1370566 () Bool)

(assert (= bs!1370566 d!1828424))

(declare-fun m!6744496 () Bool)

(assert (=> bs!1370566 m!6744496))

(assert (=> b!5804116 d!1828424))

(assert (=> b!5804116 d!1828366))

(assert (=> b!5804116 d!1828332))

(declare-fun d!1828426 () Bool)

(declare-fun c!1028306 () Bool)

(assert (=> d!1828426 (= c!1028306 (and (is-ElementMatch!15816 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (= (c!1028045 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (h!70073 s!2326))))))

(declare-fun e!3563566 () (Set Context!10400))

(assert (=> d!1828426 (= (derivationStepZipperDown!1154 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)) (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016)) (h!70073 s!2326)) e!3563566)))

(declare-fun bm!453077 () Bool)

(declare-fun call!453086 () List!63747)

(declare-fun call!453083 () List!63747)

(assert (=> bm!453077 (= call!453086 call!453083)))

(declare-fun bm!453078 () Bool)

(declare-fun c!1028309 () Bool)

(declare-fun c!1028308 () Bool)

(assert (=> bm!453078 (= call!453083 ($colon$colon!1797 (exprs!5700 (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016))) (ite (or c!1028309 c!1028308) (regTwo!32144 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)))))))

(declare-fun b!5804795 () Bool)

(declare-fun e!3563567 () (Set Context!10400))

(declare-fun call!453087 () (Set Context!10400))

(assert (=> b!5804795 (= e!3563567 call!453087)))

(declare-fun b!5804796 () Bool)

(declare-fun e!3563565 () Bool)

(assert (=> b!5804796 (= e!3563565 (nullable!5842 (regOne!32144 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)))))))

(declare-fun b!5804797 () Bool)

(declare-fun e!3563563 () (Set Context!10400))

(assert (=> b!5804797 (= e!3563563 e!3563567)))

(assert (=> b!5804797 (= c!1028308 (is-Concat!24661 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))))))

(declare-fun bm!453079 () Bool)

(declare-fun c!1028307 () Bool)

(declare-fun call!453082 () (Set Context!10400))

(assert (=> bm!453079 (= call!453082 (derivationStepZipperDown!1154 (ite c!1028307 (regOne!32145 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (ite c!1028309 (regTwo!32144 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (ite c!1028308 (regOne!32144 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (reg!16145 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)))))) (ite (or c!1028307 c!1028309) (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016)) (Context!10401 call!453086)) (h!70073 s!2326)))))

(declare-fun b!5804798 () Bool)

(assert (=> b!5804798 (= e!3563566 (set.insert (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016)) (as set.empty (Set Context!10400))))))

(declare-fun b!5804799 () Bool)

(declare-fun e!3563564 () (Set Context!10400))

(declare-fun call!453085 () (Set Context!10400))

(assert (=> b!5804799 (= e!3563564 (set.union call!453082 call!453085))))

(declare-fun bm!453080 () Bool)

(declare-fun call!453084 () (Set Context!10400))

(assert (=> bm!453080 (= call!453087 call!453084)))

(declare-fun b!5804800 () Bool)

(assert (=> b!5804800 (= e!3563566 e!3563564)))

(assert (=> b!5804800 (= c!1028307 (is-Union!15816 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))))))

(declare-fun bm!453081 () Bool)

(assert (=> bm!453081 (= call!453084 call!453082)))

(declare-fun bm!453082 () Bool)

(assert (=> bm!453082 (= call!453085 (derivationStepZipperDown!1154 (ite c!1028307 (regTwo!32145 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))) (regOne!32144 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292)))) (ite c!1028307 (ite c!1028186 (Context!10401 Nil!63623) (Context!10401 call!453016)) (Context!10401 call!453083)) (h!70073 s!2326)))))

(declare-fun b!5804801 () Bool)

(declare-fun e!3563568 () (Set Context!10400))

(assert (=> b!5804801 (= e!3563568 call!453087)))

(declare-fun b!5804802 () Bool)

(declare-fun c!1028305 () Bool)

(assert (=> b!5804802 (= c!1028305 (is-Star!15816 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))))))

(assert (=> b!5804802 (= e!3563567 e!3563568)))

(declare-fun b!5804803 () Bool)

(assert (=> b!5804803 (= e!3563563 (set.union call!453085 call!453084))))

(declare-fun b!5804804 () Bool)

(assert (=> b!5804804 (= c!1028309 e!3563565)))

(declare-fun res!2447849 () Bool)

(assert (=> b!5804804 (=> (not res!2447849) (not e!3563565))))

(assert (=> b!5804804 (= res!2447849 (is-Concat!24661 (ite c!1028186 (regTwo!32145 r!7292) (regOne!32144 r!7292))))))

(assert (=> b!5804804 (= e!3563564 e!3563563)))

(declare-fun b!5804805 () Bool)

(assert (=> b!5804805 (= e!3563568 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828426 c!1028306) b!5804798))

(assert (= (and d!1828426 (not c!1028306)) b!5804800))

(assert (= (and b!5804800 c!1028307) b!5804799))

(assert (= (and b!5804800 (not c!1028307)) b!5804804))

(assert (= (and b!5804804 res!2447849) b!5804796))

(assert (= (and b!5804804 c!1028309) b!5804803))

(assert (= (and b!5804804 (not c!1028309)) b!5804797))

(assert (= (and b!5804797 c!1028308) b!5804795))

(assert (= (and b!5804797 (not c!1028308)) b!5804802))

(assert (= (and b!5804802 c!1028305) b!5804801))

(assert (= (and b!5804802 (not c!1028305)) b!5804805))

(assert (= (or b!5804795 b!5804801) bm!453077))

(assert (= (or b!5804795 b!5804801) bm!453080))

(assert (= (or b!5804803 bm!453077) bm!453078))

(assert (= (or b!5804803 bm!453080) bm!453081))

(assert (= (or b!5804799 b!5804803) bm!453082))

(assert (= (or b!5804799 bm!453081) bm!453079))

(declare-fun m!6744498 () Bool)

(assert (=> bm!453078 m!6744498))

(declare-fun m!6744500 () Bool)

(assert (=> bm!453079 m!6744500))

(declare-fun m!6744502 () Bool)

(assert (=> b!5804798 m!6744502))

(declare-fun m!6744504 () Bool)

(assert (=> b!5804796 m!6744504))

(declare-fun m!6744506 () Bool)

(assert (=> bm!453082 m!6744506))

(assert (=> bm!453015 d!1828426))

(declare-fun d!1828428 () Bool)

(assert (=> d!1828428 (= (nullable!5842 r!7292) (nullableFct!1873 r!7292))))

(declare-fun bs!1370567 () Bool)

(assert (= bs!1370567 d!1828428))

(declare-fun m!6744508 () Bool)

(assert (=> bs!1370567 m!6744508))

(assert (=> b!5804080 d!1828428))

(declare-fun b!5804806 () Bool)

(declare-fun e!3563569 () Bool)

(declare-fun call!453089 () Bool)

(assert (=> b!5804806 (= e!3563569 call!453089)))

(declare-fun b!5804807 () Bool)

(declare-fun e!3563570 () Bool)

(assert (=> b!5804807 (= e!3563570 e!3563569)))

(declare-fun res!2447853 () Bool)

(assert (=> b!5804807 (= res!2447853 (not (nullable!5842 (reg!16145 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))))

(assert (=> b!5804807 (=> (not res!2447853) (not e!3563569))))

(declare-fun b!5804808 () Bool)

(declare-fun e!3563571 () Bool)

(declare-fun e!3563573 () Bool)

(assert (=> b!5804808 (= e!3563571 e!3563573)))

(declare-fun res!2447852 () Bool)

(assert (=> b!5804808 (=> (not res!2447852) (not e!3563573))))

(declare-fun call!453090 () Bool)

(assert (=> b!5804808 (= res!2447852 call!453090)))

(declare-fun c!1028310 () Bool)

(declare-fun call!453088 () Bool)

(declare-fun bm!453084 () Bool)

(assert (=> bm!453084 (= call!453088 (validRegex!7552 (ite c!1028310 (regTwo!32145 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))) (regTwo!32144 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))))

(declare-fun b!5804809 () Bool)

(declare-fun e!3563575 () Bool)

(assert (=> b!5804809 (= e!3563570 e!3563575)))

(assert (=> b!5804809 (= c!1028310 (is-Union!15816 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))

(declare-fun bm!453085 () Bool)

(assert (=> bm!453085 (= call!453090 call!453089)))

(declare-fun b!5804810 () Bool)

(declare-fun res!2447851 () Bool)

(assert (=> b!5804810 (=> res!2447851 e!3563571)))

(assert (=> b!5804810 (= res!2447851 (not (is-Concat!24661 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292))))))))

(assert (=> b!5804810 (= e!3563575 e!3563571)))

(declare-fun b!5804811 () Bool)

(declare-fun e!3563574 () Bool)

(assert (=> b!5804811 (= e!3563574 call!453088)))

(declare-fun b!5804812 () Bool)

(assert (=> b!5804812 (= e!3563573 call!453088)))

(declare-fun d!1828430 () Bool)

(declare-fun res!2447850 () Bool)

(declare-fun e!3563572 () Bool)

(assert (=> d!1828430 (=> res!2447850 e!3563572)))

(assert (=> d!1828430 (= res!2447850 (is-ElementMatch!15816 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))

(assert (=> d!1828430 (= (validRegex!7552 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))) e!3563572)))

(declare-fun bm!453083 () Bool)

(declare-fun c!1028311 () Bool)

(assert (=> bm!453083 (= call!453089 (validRegex!7552 (ite c!1028311 (reg!16145 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))) (ite c!1028310 (regOne!32145 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))) (regOne!32144 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292))))))))))

(declare-fun b!5804813 () Bool)

(declare-fun res!2447854 () Bool)

(assert (=> b!5804813 (=> (not res!2447854) (not e!3563574))))

(assert (=> b!5804813 (= res!2447854 call!453090)))

(assert (=> b!5804813 (= e!3563575 e!3563574)))

(declare-fun b!5804814 () Bool)

(assert (=> b!5804814 (= e!3563572 e!3563570)))

(assert (=> b!5804814 (= c!1028311 (is-Star!15816 (ite c!1028085 (reg!16145 r!7292) (ite c!1028084 (regOne!32145 r!7292) (regOne!32144 r!7292)))))))

(assert (= (and d!1828430 (not res!2447850)) b!5804814))

(assert (= (and b!5804814 c!1028311) b!5804807))

(assert (= (and b!5804814 (not c!1028311)) b!5804809))

(assert (= (and b!5804807 res!2447853) b!5804806))

(assert (= (and b!5804809 c!1028310) b!5804813))

(assert (= (and b!5804809 (not c!1028310)) b!5804810))

(assert (= (and b!5804813 res!2447854) b!5804811))

(assert (= (and b!5804810 (not res!2447851)) b!5804808))

(assert (= (and b!5804808 res!2447852) b!5804812))

(assert (= (or b!5804811 b!5804812) bm!453084))

(assert (= (or b!5804813 b!5804808) bm!453085))

(assert (= (or b!5804806 bm!453085) bm!453083))

(declare-fun m!6744510 () Bool)

(assert (=> b!5804807 m!6744510))

(declare-fun m!6744512 () Bool)

(assert (=> bm!453084 m!6744512))

(declare-fun m!6744514 () Bool)

(assert (=> bm!453083 m!6744514))

(assert (=> bm!452951 d!1828430))

(declare-fun d!1828432 () Bool)

(assert (=> d!1828432 (= (isEmpty!35537 (t!377098 (unfocusZipperList!1244 zl!343))) (is-Nil!63623 (t!377098 (unfocusZipperList!1244 zl!343))))))

(assert (=> b!5804256 d!1828432))

(declare-fun d!1828434 () Bool)

(assert (=> d!1828434 (= (head!12244 (exprs!5700 (h!70072 zl!343))) (h!70071 (exprs!5700 (h!70072 zl!343))))))

(assert (=> b!5803888 d!1828434))

(declare-fun b!5804815 () Bool)

(declare-fun e!3563581 () Bool)

(declare-fun e!3563577 () Bool)

(assert (=> b!5804815 (= e!3563581 e!3563577)))

(declare-fun res!2447861 () Bool)

(assert (=> b!5804815 (=> res!2447861 e!3563577)))

(declare-fun call!453091 () Bool)

(assert (=> b!5804815 (= res!2447861 call!453091)))

(declare-fun d!1828436 () Bool)

(declare-fun e!3563580 () Bool)

(assert (=> d!1828436 e!3563580))

(declare-fun c!1028314 () Bool)

(assert (=> d!1828436 (= c!1028314 (is-EmptyExpr!15816 (reg!16145 r!7292)))))

(declare-fun lt!2298634 () Bool)

(declare-fun e!3563579 () Bool)

(assert (=> d!1828436 (= lt!2298634 e!3563579)))

(declare-fun c!1028313 () Bool)

(assert (=> d!1828436 (= c!1028313 (isEmpty!35534 (_1!36216 (get!21962 lt!2298571))))))

(assert (=> d!1828436 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828436 (= (matchR!8001 (reg!16145 r!7292) (_1!36216 (get!21962 lt!2298571))) lt!2298634)))

(declare-fun b!5804816 () Bool)

(assert (=> b!5804816 (= e!3563580 (= lt!2298634 call!453091))))

(declare-fun b!5804817 () Bool)

(declare-fun res!2447857 () Bool)

(declare-fun e!3563582 () Bool)

(assert (=> b!5804817 (=> res!2447857 e!3563582)))

(declare-fun e!3563576 () Bool)

(assert (=> b!5804817 (= res!2447857 e!3563576)))

(declare-fun res!2447860 () Bool)

(assert (=> b!5804817 (=> (not res!2447860) (not e!3563576))))

(assert (=> b!5804817 (= res!2447860 lt!2298634)))

(declare-fun b!5804818 () Bool)

(assert (=> b!5804818 (= e!3563577 (not (= (head!12245 (_1!36216 (get!21962 lt!2298571))) (c!1028045 (reg!16145 r!7292)))))))

(declare-fun bm!453086 () Bool)

(assert (=> bm!453086 (= call!453091 (isEmpty!35534 (_1!36216 (get!21962 lt!2298571))))))

(declare-fun b!5804819 () Bool)

(assert (=> b!5804819 (= e!3563576 (= (head!12245 (_1!36216 (get!21962 lt!2298571))) (c!1028045 (reg!16145 r!7292))))))

(declare-fun b!5804820 () Bool)

(assert (=> b!5804820 (= e!3563579 (nullable!5842 (reg!16145 r!7292)))))

(declare-fun b!5804821 () Bool)

(assert (=> b!5804821 (= e!3563579 (matchR!8001 (derivativeStep!4585 (reg!16145 r!7292) (head!12245 (_1!36216 (get!21962 lt!2298571)))) (tail!11340 (_1!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804822 () Bool)

(declare-fun res!2447855 () Bool)

(assert (=> b!5804822 (=> (not res!2447855) (not e!3563576))))

(assert (=> b!5804822 (= res!2447855 (isEmpty!35534 (tail!11340 (_1!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804823 () Bool)

(assert (=> b!5804823 (= e!3563582 e!3563581)))

(declare-fun res!2447862 () Bool)

(assert (=> b!5804823 (=> (not res!2447862) (not e!3563581))))

(assert (=> b!5804823 (= res!2447862 (not lt!2298634))))

(declare-fun b!5804824 () Bool)

(declare-fun e!3563578 () Bool)

(assert (=> b!5804824 (= e!3563578 (not lt!2298634))))

(declare-fun b!5804825 () Bool)

(declare-fun res!2447859 () Bool)

(assert (=> b!5804825 (=> res!2447859 e!3563582)))

(assert (=> b!5804825 (= res!2447859 (not (is-ElementMatch!15816 (reg!16145 r!7292))))))

(assert (=> b!5804825 (= e!3563578 e!3563582)))

(declare-fun b!5804826 () Bool)

(declare-fun res!2447858 () Bool)

(assert (=> b!5804826 (=> (not res!2447858) (not e!3563576))))

(assert (=> b!5804826 (= res!2447858 (not call!453091))))

(declare-fun b!5804827 () Bool)

(assert (=> b!5804827 (= e!3563580 e!3563578)))

(declare-fun c!1028312 () Bool)

(assert (=> b!5804827 (= c!1028312 (is-EmptyLang!15816 (reg!16145 r!7292)))))

(declare-fun b!5804828 () Bool)

(declare-fun res!2447856 () Bool)

(assert (=> b!5804828 (=> res!2447856 e!3563577)))

(assert (=> b!5804828 (= res!2447856 (not (isEmpty!35534 (tail!11340 (_1!36216 (get!21962 lt!2298571))))))))

(assert (= (and d!1828436 c!1028313) b!5804820))

(assert (= (and d!1828436 (not c!1028313)) b!5804821))

(assert (= (and d!1828436 c!1028314) b!5804816))

(assert (= (and d!1828436 (not c!1028314)) b!5804827))

(assert (= (and b!5804827 c!1028312) b!5804824))

(assert (= (and b!5804827 (not c!1028312)) b!5804825))

(assert (= (and b!5804825 (not res!2447859)) b!5804817))

(assert (= (and b!5804817 res!2447860) b!5804826))

(assert (= (and b!5804826 res!2447858) b!5804822))

(assert (= (and b!5804822 res!2447855) b!5804819))

(assert (= (and b!5804817 (not res!2447857)) b!5804823))

(assert (= (and b!5804823 res!2447862) b!5804815))

(assert (= (and b!5804815 (not res!2447861)) b!5804828))

(assert (= (and b!5804828 (not res!2447856)) b!5804818))

(assert (= (or b!5804816 b!5804815 b!5804826) bm!453086))

(declare-fun m!6744516 () Bool)

(assert (=> b!5804821 m!6744516))

(assert (=> b!5804821 m!6744516))

(declare-fun m!6744518 () Bool)

(assert (=> b!5804821 m!6744518))

(declare-fun m!6744520 () Bool)

(assert (=> b!5804821 m!6744520))

(assert (=> b!5804821 m!6744518))

(assert (=> b!5804821 m!6744520))

(declare-fun m!6744522 () Bool)

(assert (=> b!5804821 m!6744522))

(assert (=> b!5804828 m!6744520))

(assert (=> b!5804828 m!6744520))

(declare-fun m!6744524 () Bool)

(assert (=> b!5804828 m!6744524))

(assert (=> b!5804818 m!6744516))

(assert (=> b!5804819 m!6744516))

(declare-fun m!6744526 () Bool)

(assert (=> bm!453086 m!6744526))

(assert (=> d!1828436 m!6744526))

(assert (=> d!1828436 m!6743944))

(assert (=> b!5804822 m!6744520))

(assert (=> b!5804822 m!6744520))

(assert (=> b!5804822 m!6744524))

(assert (=> b!5804820 m!6743854))

(assert (=> b!5804199 d!1828436))

(assert (=> b!5804199 d!1828328))

(declare-fun bs!1370568 () Bool)

(declare-fun d!1828438 () Bool)

(assert (= bs!1370568 (and d!1828438 d!1828386)))

(declare-fun lambda!316742 () Int)

(assert (=> bs!1370568 (= lambda!316742 lambda!316735)))

(declare-fun bs!1370569 () Bool)

(assert (= bs!1370569 (and d!1828438 d!1828346)))

(assert (=> bs!1370569 (= lambda!316742 lambda!316723)))

(declare-fun bs!1370570 () Bool)

(assert (= bs!1370570 (and d!1828438 d!1828202)))

(assert (=> bs!1370570 (= lambda!316742 lambda!316688)))

(declare-fun bs!1370571 () Bool)

(assert (= bs!1370571 (and d!1828438 d!1828348)))

(assert (=> bs!1370571 (= lambda!316742 lambda!316724)))

(declare-fun bs!1370572 () Bool)

(assert (= bs!1370572 (and d!1828438 d!1828200)))

(assert (=> bs!1370572 (= lambda!316742 lambda!316685)))

(declare-fun bs!1370573 () Bool)

(assert (= bs!1370573 (and d!1828438 d!1828112)))

(assert (=> bs!1370573 (= lambda!316742 lambda!316647)))

(declare-fun bs!1370574 () Bool)

(assert (= bs!1370574 (and d!1828438 d!1828400)))

(assert (=> bs!1370574 (= lambda!316742 lambda!316736)))

(declare-fun bs!1370575 () Bool)

(assert (= bs!1370575 (and d!1828438 d!1828198)))

(assert (=> bs!1370575 (= lambda!316742 lambda!316680)))

(declare-fun bs!1370576 () Bool)

(assert (= bs!1370576 (and d!1828438 d!1828420)))

(assert (=> bs!1370576 (= lambda!316742 lambda!316740)))

(declare-fun bs!1370577 () Bool)

(assert (= bs!1370577 (and d!1828438 d!1828136)))

(assert (=> bs!1370577 (= lambda!316742 lambda!316653)))

(declare-fun b!5804829 () Bool)

(declare-fun e!3563583 () Regex!15816)

(assert (=> b!5804829 (= e!3563583 EmptyExpr!15816)))

(declare-fun b!5804830 () Bool)

(declare-fun e!3563585 () Bool)

(declare-fun lt!2298635 () Regex!15816)

(assert (=> b!5804830 (= e!3563585 (= lt!2298635 (head!12244 (t!377098 (exprs!5700 (h!70072 zl!343))))))))

(declare-fun b!5804831 () Bool)

(declare-fun e!3563586 () Bool)

(assert (=> b!5804831 (= e!3563586 e!3563585)))

(declare-fun c!1028316 () Bool)

(assert (=> b!5804831 (= c!1028316 (isEmpty!35537 (tail!11339 (t!377098 (exprs!5700 (h!70072 zl!343))))))))

(declare-fun b!5804832 () Bool)

(assert (=> b!5804832 (= e!3563586 (isEmptyExpr!1290 lt!2298635))))

(declare-fun b!5804833 () Bool)

(declare-fun e!3563587 () Bool)

(assert (=> b!5804833 (= e!3563587 e!3563586)))

(declare-fun c!1028318 () Bool)

(assert (=> b!5804833 (= c!1028318 (isEmpty!35537 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5804834 () Bool)

(declare-fun e!3563584 () Regex!15816)

(assert (=> b!5804834 (= e!3563584 e!3563583)))

(declare-fun c!1028317 () Bool)

(assert (=> b!5804834 (= c!1028317 (is-Cons!63623 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5804835 () Bool)

(assert (=> b!5804835 (= e!3563585 (isConcat!813 lt!2298635))))

(declare-fun b!5804836 () Bool)

(declare-fun e!3563588 () Bool)

(assert (=> b!5804836 (= e!3563588 (isEmpty!35537 (t!377098 (t!377098 (exprs!5700 (h!70072 zl!343))))))))

(assert (=> d!1828438 e!3563587))

(declare-fun res!2447863 () Bool)

(assert (=> d!1828438 (=> (not res!2447863) (not e!3563587))))

(assert (=> d!1828438 (= res!2447863 (validRegex!7552 lt!2298635))))

(assert (=> d!1828438 (= lt!2298635 e!3563584)))

(declare-fun c!1028315 () Bool)

(assert (=> d!1828438 (= c!1028315 e!3563588)))

(declare-fun res!2447864 () Bool)

(assert (=> d!1828438 (=> (not res!2447864) (not e!3563588))))

(assert (=> d!1828438 (= res!2447864 (is-Cons!63623 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> d!1828438 (forall!14924 (t!377098 (exprs!5700 (h!70072 zl!343))) lambda!316742)))

(assert (=> d!1828438 (= (generalisedConcat!1431 (t!377098 (exprs!5700 (h!70072 zl!343)))) lt!2298635)))

(declare-fun b!5804837 () Bool)

(assert (=> b!5804837 (= e!3563584 (h!70071 (t!377098 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun b!5804838 () Bool)

(assert (=> b!5804838 (= e!3563583 (Concat!24661 (h!70071 (t!377098 (exprs!5700 (h!70072 zl!343)))) (generalisedConcat!1431 (t!377098 (t!377098 (exprs!5700 (h!70072 zl!343)))))))))

(assert (= (and d!1828438 res!2447864) b!5804836))

(assert (= (and d!1828438 c!1028315) b!5804837))

(assert (= (and d!1828438 (not c!1028315)) b!5804834))

(assert (= (and b!5804834 c!1028317) b!5804838))

(assert (= (and b!5804834 (not c!1028317)) b!5804829))

(assert (= (and d!1828438 res!2447863) b!5804833))

(assert (= (and b!5804833 c!1028318) b!5804832))

(assert (= (and b!5804833 (not c!1028318)) b!5804831))

(assert (= (and b!5804831 c!1028316) b!5804830))

(assert (= (and b!5804831 (not c!1028316)) b!5804835))

(declare-fun m!6744528 () Bool)

(assert (=> b!5804835 m!6744528))

(declare-fun m!6744530 () Bool)

(assert (=> b!5804838 m!6744530))

(declare-fun m!6744532 () Bool)

(assert (=> b!5804831 m!6744532))

(assert (=> b!5804831 m!6744532))

(declare-fun m!6744534 () Bool)

(assert (=> b!5804831 m!6744534))

(declare-fun m!6744536 () Bool)

(assert (=> b!5804836 m!6744536))

(declare-fun m!6744538 () Bool)

(assert (=> b!5804832 m!6744538))

(declare-fun m!6744540 () Bool)

(assert (=> d!1828438 m!6744540))

(declare-fun m!6744542 () Bool)

(assert (=> d!1828438 m!6744542))

(assert (=> b!5804833 m!6743792))

(declare-fun m!6744544 () Bool)

(assert (=> b!5804830 m!6744544))

(assert (=> b!5803896 d!1828438))

(declare-fun d!1828440 () Bool)

(assert (=> d!1828440 (= (Exists!2916 lambda!316665) (choose!44046 lambda!316665))))

(declare-fun bs!1370578 () Bool)

(assert (= bs!1370578 d!1828440))

(declare-fun m!6744546 () Bool)

(assert (=> bs!1370578 m!6744546))

(assert (=> d!1828174 d!1828440))

(declare-fun d!1828442 () Bool)

(assert (=> d!1828442 (= (Exists!2916 lambda!316666) (choose!44046 lambda!316666))))

(declare-fun bs!1370579 () Bool)

(assert (= bs!1370579 d!1828442))

(declare-fun m!6744548 () Bool)

(assert (=> bs!1370579 m!6744548))

(assert (=> d!1828174 d!1828442))

(declare-fun bs!1370580 () Bool)

(declare-fun d!1828444 () Bool)

(assert (= bs!1370580 (and d!1828444 d!1828176)))

(declare-fun lambda!316747 () Int)

(assert (=> bs!1370580 (= (= r!7292 (Star!15816 (reg!16145 r!7292))) (= lambda!316747 lambda!316671))))

(declare-fun bs!1370581 () Bool)

(assert (= bs!1370581 (and d!1828444 d!1828196)))

(assert (=> bs!1370581 (= lambda!316747 lambda!316679)))

(declare-fun bs!1370582 () Bool)

(assert (= bs!1370582 (and d!1828444 b!5803746)))

(assert (=> bs!1370582 (not (= lambda!316747 lambda!316620))))

(declare-fun bs!1370583 () Bool)

(assert (= bs!1370583 (and d!1828444 b!5804034)))

(assert (=> bs!1370583 (not (= lambda!316747 lambda!316659))))

(declare-fun bs!1370584 () Bool)

(assert (= bs!1370584 (and d!1828444 d!1828174)))

(assert (=> bs!1370584 (not (= lambda!316747 lambda!316666))))

(declare-fun bs!1370585 () Bool)

(assert (= bs!1370585 (and d!1828444 b!5804039)))

(assert (=> bs!1370585 (not (= lambda!316747 lambda!316658))))

(assert (=> bs!1370582 (= lambda!316747 lambda!316619)))

(assert (=> bs!1370580 (not (= lambda!316747 lambda!316672))))

(declare-fun bs!1370586 () Bool)

(assert (= bs!1370586 (and d!1828444 d!1828356)))

(assert (=> bs!1370586 (not (= lambda!316747 lambda!316730))))

(declare-fun bs!1370587 () Bool)

(assert (= bs!1370587 (and d!1828444 b!5804781)))

(assert (=> bs!1370587 (not (= lambda!316747 lambda!316738))))

(declare-fun bs!1370588 () Bool)

(assert (= bs!1370588 (and d!1828444 b!5804786)))

(assert (=> bs!1370588 (not (= lambda!316747 lambda!316737))))

(assert (=> bs!1370584 (= lambda!316747 lambda!316665)))

(assert (=> bs!1370586 (= (= r!7292 (Star!15816 (reg!16145 r!7292))) (= lambda!316747 lambda!316729))))

(assert (=> bs!1370582 (not (= lambda!316747 lambda!316621))))

(assert (=> d!1828444 true))

(assert (=> d!1828444 true))

(assert (=> d!1828444 true))

(declare-fun lambda!316748 () Int)

(assert (=> bs!1370580 (not (= lambda!316748 lambda!316671))))

(assert (=> bs!1370581 (not (= lambda!316748 lambda!316679))))

(assert (=> bs!1370582 (not (= lambda!316748 lambda!316620))))

(assert (=> bs!1370583 (= (and (= (reg!16145 r!7292) (regOne!32144 r!7292)) (= r!7292 (regTwo!32144 r!7292))) (= lambda!316748 lambda!316659))))

(assert (=> bs!1370584 (= lambda!316748 lambda!316666)))

(assert (=> bs!1370582 (not (= lambda!316748 lambda!316619))))

(assert (=> bs!1370580 (not (= lambda!316748 lambda!316672))))

(assert (=> bs!1370586 (not (= lambda!316748 lambda!316730))))

(assert (=> bs!1370587 (= (and (= (reg!16145 r!7292) (regOne!32144 (regOne!32145 r!7292))) (= r!7292 (regTwo!32144 (regOne!32145 r!7292)))) (= lambda!316748 lambda!316738))))

(assert (=> bs!1370588 (not (= lambda!316748 lambda!316737))))

(assert (=> bs!1370584 (not (= lambda!316748 lambda!316665))))

(assert (=> bs!1370585 (not (= lambda!316748 lambda!316658))))

(declare-fun bs!1370589 () Bool)

(assert (= bs!1370589 d!1828444))

(assert (=> bs!1370589 (not (= lambda!316748 lambda!316747))))

(assert (=> bs!1370586 (not (= lambda!316748 lambda!316729))))

(assert (=> bs!1370582 (= lambda!316748 lambda!316621)))

(assert (=> d!1828444 true))

(assert (=> d!1828444 true))

(assert (=> d!1828444 true))

(assert (=> d!1828444 (= (Exists!2916 lambda!316747) (Exists!2916 lambda!316748))))

(assert (=> d!1828444 true))

(declare-fun _$90!1557 () Unit!156892)

(assert (=> d!1828444 (= (choose!44044 (reg!16145 r!7292) r!7292 s!2326) _$90!1557)))

(declare-fun m!6744550 () Bool)

(assert (=> bs!1370589 m!6744550))

(declare-fun m!6744552 () Bool)

(assert (=> bs!1370589 m!6744552))

(assert (=> d!1828174 d!1828444))

(assert (=> d!1828174 d!1828358))

(declare-fun d!1828446 () Bool)

(declare-fun c!1028320 () Bool)

(assert (=> d!1828446 (= c!1028320 (and (is-ElementMatch!15816 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (= (c!1028045 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70073 s!2326))))))

(declare-fun e!3563596 () (Set Context!10400))

(assert (=> d!1828446 (= (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70073 s!2326)) e!3563596)))

(declare-fun bm!453087 () Bool)

(declare-fun call!453096 () List!63747)

(declare-fun call!453093 () List!63747)

(assert (=> bm!453087 (= call!453096 call!453093)))

(declare-fun c!1028323 () Bool)

(declare-fun c!1028322 () Bool)

(declare-fun bm!453088 () Bool)

(assert (=> bm!453088 (= call!453093 ($colon$colon!1797 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))) (ite (or c!1028323 c!1028322) (regTwo!32144 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))))

(declare-fun b!5804847 () Bool)

(declare-fun e!3563597 () (Set Context!10400))

(declare-fun call!453097 () (Set Context!10400))

(assert (=> b!5804847 (= e!3563597 call!453097)))

(declare-fun b!5804848 () Bool)

(declare-fun e!3563595 () Bool)

(assert (=> b!5804848 (= e!3563595 (nullable!5842 (regOne!32144 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))))

(declare-fun b!5804849 () Bool)

(declare-fun e!3563593 () (Set Context!10400))

(assert (=> b!5804849 (= e!3563593 e!3563597)))

(assert (=> b!5804849 (= c!1028322 (is-Concat!24661 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(declare-fun bm!453089 () Bool)

(declare-fun call!453092 () (Set Context!10400))

(declare-fun c!1028321 () Bool)

(assert (=> bm!453089 (= call!453092 (derivationStepZipperDown!1154 (ite c!1028321 (regOne!32145 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (ite c!1028323 (regTwo!32144 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (ite c!1028322 (regOne!32144 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (reg!16145 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))) (ite (or c!1028321 c!1028323) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (Context!10401 call!453096)) (h!70073 s!2326)))))

(declare-fun b!5804850 () Bool)

(assert (=> b!5804850 (= e!3563596 (set.insert (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (as set.empty (Set Context!10400))))))

(declare-fun b!5804851 () Bool)

(declare-fun e!3563594 () (Set Context!10400))

(declare-fun call!453095 () (Set Context!10400))

(assert (=> b!5804851 (= e!3563594 (set.union call!453092 call!453095))))

(declare-fun bm!453090 () Bool)

(declare-fun call!453094 () (Set Context!10400))

(assert (=> bm!453090 (= call!453097 call!453094)))

(declare-fun b!5804852 () Bool)

(assert (=> b!5804852 (= e!3563596 e!3563594)))

(assert (=> b!5804852 (= c!1028321 (is-Union!15816 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(declare-fun bm!453091 () Bool)

(assert (=> bm!453091 (= call!453094 call!453092)))

(declare-fun bm!453092 () Bool)

(assert (=> bm!453092 (= call!453095 (derivationStepZipperDown!1154 (ite c!1028321 (regTwo!32145 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (regOne!32144 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))) (ite c!1028321 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (Context!10401 call!453093)) (h!70073 s!2326)))))

(declare-fun b!5804853 () Bool)

(declare-fun e!3563598 () (Set Context!10400))

(assert (=> b!5804853 (= e!3563598 call!453097)))

(declare-fun b!5804854 () Bool)

(declare-fun c!1028319 () Bool)

(assert (=> b!5804854 (= c!1028319 (is-Star!15816 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(assert (=> b!5804854 (= e!3563597 e!3563598)))

(declare-fun b!5804855 () Bool)

(assert (=> b!5804855 (= e!3563593 (set.union call!453095 call!453094))))

(declare-fun b!5804856 () Bool)

(assert (=> b!5804856 (= c!1028323 e!3563595)))

(declare-fun res!2447873 () Bool)

(assert (=> b!5804856 (=> (not res!2447873) (not e!3563595))))

(assert (=> b!5804856 (= res!2447873 (is-Concat!24661 (h!70071 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))

(assert (=> b!5804856 (= e!3563594 e!3563593)))

(declare-fun b!5804857 () Bool)

(assert (=> b!5804857 (= e!3563598 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828446 c!1028320) b!5804850))

(assert (= (and d!1828446 (not c!1028320)) b!5804852))

(assert (= (and b!5804852 c!1028321) b!5804851))

(assert (= (and b!5804852 (not c!1028321)) b!5804856))

(assert (= (and b!5804856 res!2447873) b!5804848))

(assert (= (and b!5804856 c!1028323) b!5804855))

(assert (= (and b!5804856 (not c!1028323)) b!5804849))

(assert (= (and b!5804849 c!1028322) b!5804847))

(assert (= (and b!5804849 (not c!1028322)) b!5804854))

(assert (= (and b!5804854 c!1028319) b!5804853))

(assert (= (and b!5804854 (not c!1028319)) b!5804857))

(assert (= (or b!5804847 b!5804853) bm!453087))

(assert (= (or b!5804847 b!5804853) bm!453090))

(assert (= (or b!5804855 bm!453087) bm!453088))

(assert (= (or b!5804855 bm!453090) bm!453091))

(assert (= (or b!5804851 b!5804855) bm!453092))

(assert (= (or b!5804851 bm!453091) bm!453089))

(declare-fun m!6744554 () Bool)

(assert (=> bm!453088 m!6744554))

(declare-fun m!6744556 () Bool)

(assert (=> bm!453089 m!6744556))

(declare-fun m!6744558 () Bool)

(assert (=> b!5804850 m!6744558))

(declare-fun m!6744560 () Bool)

(assert (=> b!5804848 m!6744560))

(declare-fun m!6744562 () Bool)

(assert (=> bm!453092 m!6744562))

(assert (=> bm!453016 d!1828446))

(declare-fun d!1828448 () Bool)

(declare-fun c!1028325 () Bool)

(assert (=> d!1828448 (= c!1028325 (and (is-ElementMatch!15816 (h!70071 (exprs!5700 lt!2298451))) (= (c!1028045 (h!70071 (exprs!5700 lt!2298451))) (h!70073 s!2326))))))

(declare-fun e!3563602 () (Set Context!10400))

(assert (=> d!1828448 (= (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298451)) (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (h!70073 s!2326)) e!3563602)))

(declare-fun bm!453093 () Bool)

(declare-fun call!453102 () List!63747)

(declare-fun call!453099 () List!63747)

(assert (=> bm!453093 (= call!453102 call!453099)))

(declare-fun bm!453094 () Bool)

(declare-fun c!1028327 () Bool)

(declare-fun c!1028328 () Bool)

(assert (=> bm!453094 (= call!453099 ($colon$colon!1797 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451)))) (ite (or c!1028328 c!1028327) (regTwo!32144 (h!70071 (exprs!5700 lt!2298451))) (h!70071 (exprs!5700 lt!2298451)))))))

(declare-fun b!5804858 () Bool)

(declare-fun e!3563603 () (Set Context!10400))

(declare-fun call!453103 () (Set Context!10400))

(assert (=> b!5804858 (= e!3563603 call!453103)))

(declare-fun b!5804859 () Bool)

(declare-fun e!3563601 () Bool)

(assert (=> b!5804859 (= e!3563601 (nullable!5842 (regOne!32144 (h!70071 (exprs!5700 lt!2298451)))))))

(declare-fun b!5804860 () Bool)

(declare-fun e!3563599 () (Set Context!10400))

(assert (=> b!5804860 (= e!3563599 e!3563603)))

(assert (=> b!5804860 (= c!1028327 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298451))))))

(declare-fun bm!453095 () Bool)

(declare-fun c!1028326 () Bool)

(declare-fun call!453098 () (Set Context!10400))

(assert (=> bm!453095 (= call!453098 (derivationStepZipperDown!1154 (ite c!1028326 (regOne!32145 (h!70071 (exprs!5700 lt!2298451))) (ite c!1028328 (regTwo!32144 (h!70071 (exprs!5700 lt!2298451))) (ite c!1028327 (regOne!32144 (h!70071 (exprs!5700 lt!2298451))) (reg!16145 (h!70071 (exprs!5700 lt!2298451)))))) (ite (or c!1028326 c!1028328) (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (Context!10401 call!453102)) (h!70073 s!2326)))))

(declare-fun b!5804861 () Bool)

(assert (=> b!5804861 (= e!3563602 (set.insert (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (as set.empty (Set Context!10400))))))

(declare-fun b!5804862 () Bool)

(declare-fun e!3563600 () (Set Context!10400))

(declare-fun call!453101 () (Set Context!10400))

(assert (=> b!5804862 (= e!3563600 (set.union call!453098 call!453101))))

(declare-fun bm!453096 () Bool)

(declare-fun call!453100 () (Set Context!10400))

(assert (=> bm!453096 (= call!453103 call!453100)))

(declare-fun b!5804863 () Bool)

(assert (=> b!5804863 (= e!3563602 e!3563600)))

(assert (=> b!5804863 (= c!1028326 (is-Union!15816 (h!70071 (exprs!5700 lt!2298451))))))

(declare-fun bm!453097 () Bool)

(assert (=> bm!453097 (= call!453100 call!453098)))

(declare-fun bm!453098 () Bool)

(assert (=> bm!453098 (= call!453101 (derivationStepZipperDown!1154 (ite c!1028326 (regTwo!32145 (h!70071 (exprs!5700 lt!2298451))) (regOne!32144 (h!70071 (exprs!5700 lt!2298451)))) (ite c!1028326 (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (Context!10401 call!453099)) (h!70073 s!2326)))))

(declare-fun b!5804864 () Bool)

(declare-fun e!3563604 () (Set Context!10400))

(assert (=> b!5804864 (= e!3563604 call!453103)))

(declare-fun b!5804865 () Bool)

(declare-fun c!1028324 () Bool)

(assert (=> b!5804865 (= c!1028324 (is-Star!15816 (h!70071 (exprs!5700 lt!2298451))))))

(assert (=> b!5804865 (= e!3563603 e!3563604)))

(declare-fun b!5804866 () Bool)

(assert (=> b!5804866 (= e!3563599 (set.union call!453101 call!453100))))

(declare-fun b!5804867 () Bool)

(assert (=> b!5804867 (= c!1028328 e!3563601)))

(declare-fun res!2447874 () Bool)

(assert (=> b!5804867 (=> (not res!2447874) (not e!3563601))))

(assert (=> b!5804867 (= res!2447874 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298451))))))

(assert (=> b!5804867 (= e!3563600 e!3563599)))

(declare-fun b!5804868 () Bool)

(assert (=> b!5804868 (= e!3563604 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828448 c!1028325) b!5804861))

(assert (= (and d!1828448 (not c!1028325)) b!5804863))

(assert (= (and b!5804863 c!1028326) b!5804862))

(assert (= (and b!5804863 (not c!1028326)) b!5804867))

(assert (= (and b!5804867 res!2447874) b!5804859))

(assert (= (and b!5804867 c!1028328) b!5804866))

(assert (= (and b!5804867 (not c!1028328)) b!5804860))

(assert (= (and b!5804860 c!1028327) b!5804858))

(assert (= (and b!5804860 (not c!1028327)) b!5804865))

(assert (= (and b!5804865 c!1028324) b!5804864))

(assert (= (and b!5804865 (not c!1028324)) b!5804868))

(assert (= (or b!5804858 b!5804864) bm!453093))

(assert (= (or b!5804858 b!5804864) bm!453096))

(assert (= (or b!5804866 bm!453093) bm!453094))

(assert (= (or b!5804866 bm!453096) bm!453097))

(assert (= (or b!5804862 b!5804866) bm!453098))

(assert (= (or b!5804862 bm!453097) bm!453095))

(declare-fun m!6744564 () Bool)

(assert (=> bm!453094 m!6744564))

(declare-fun m!6744566 () Bool)

(assert (=> bm!453095 m!6744566))

(declare-fun m!6744568 () Bool)

(assert (=> b!5804861 m!6744568))

(declare-fun m!6744570 () Bool)

(assert (=> b!5804859 m!6744570))

(declare-fun m!6744572 () Bool)

(assert (=> bm!453098 m!6744572))

(assert (=> bm!452943 d!1828448))

(declare-fun d!1828450 () Bool)

(declare-fun c!1028330 () Bool)

(assert (=> d!1828450 (= c!1028330 (and (is-ElementMatch!15816 (h!70071 (exprs!5700 lt!2298456))) (= (c!1028045 (h!70071 (exprs!5700 lt!2298456))) (h!70073 s!2326))))))

(declare-fun e!3563608 () (Set Context!10400))

(assert (=> d!1828450 (= (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298456)) (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (h!70073 s!2326)) e!3563608)))

(declare-fun bm!453099 () Bool)

(declare-fun call!453108 () List!63747)

(declare-fun call!453105 () List!63747)

(assert (=> bm!453099 (= call!453108 call!453105)))

(declare-fun c!1028332 () Bool)

(declare-fun c!1028333 () Bool)

(declare-fun bm!453100 () Bool)

(assert (=> bm!453100 (= call!453105 ($colon$colon!1797 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456)))) (ite (or c!1028333 c!1028332) (regTwo!32144 (h!70071 (exprs!5700 lt!2298456))) (h!70071 (exprs!5700 lt!2298456)))))))

(declare-fun b!5804869 () Bool)

(declare-fun e!3563609 () (Set Context!10400))

(declare-fun call!453109 () (Set Context!10400))

(assert (=> b!5804869 (= e!3563609 call!453109)))

(declare-fun b!5804870 () Bool)

(declare-fun e!3563607 () Bool)

(assert (=> b!5804870 (= e!3563607 (nullable!5842 (regOne!32144 (h!70071 (exprs!5700 lt!2298456)))))))

(declare-fun b!5804871 () Bool)

(declare-fun e!3563605 () (Set Context!10400))

(assert (=> b!5804871 (= e!3563605 e!3563609)))

(assert (=> b!5804871 (= c!1028332 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298456))))))

(declare-fun call!453104 () (Set Context!10400))

(declare-fun bm!453101 () Bool)

(declare-fun c!1028331 () Bool)

(assert (=> bm!453101 (= call!453104 (derivationStepZipperDown!1154 (ite c!1028331 (regOne!32145 (h!70071 (exprs!5700 lt!2298456))) (ite c!1028333 (regTwo!32144 (h!70071 (exprs!5700 lt!2298456))) (ite c!1028332 (regOne!32144 (h!70071 (exprs!5700 lt!2298456))) (reg!16145 (h!70071 (exprs!5700 lt!2298456)))))) (ite (or c!1028331 c!1028333) (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (Context!10401 call!453108)) (h!70073 s!2326)))))

(declare-fun b!5804872 () Bool)

(assert (=> b!5804872 (= e!3563608 (set.insert (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (as set.empty (Set Context!10400))))))

(declare-fun b!5804873 () Bool)

(declare-fun e!3563606 () (Set Context!10400))

(declare-fun call!453107 () (Set Context!10400))

(assert (=> b!5804873 (= e!3563606 (set.union call!453104 call!453107))))

(declare-fun bm!453102 () Bool)

(declare-fun call!453106 () (Set Context!10400))

(assert (=> bm!453102 (= call!453109 call!453106)))

(declare-fun b!5804874 () Bool)

(assert (=> b!5804874 (= e!3563608 e!3563606)))

(assert (=> b!5804874 (= c!1028331 (is-Union!15816 (h!70071 (exprs!5700 lt!2298456))))))

(declare-fun bm!453103 () Bool)

(assert (=> bm!453103 (= call!453106 call!453104)))

(declare-fun bm!453104 () Bool)

(assert (=> bm!453104 (= call!453107 (derivationStepZipperDown!1154 (ite c!1028331 (regTwo!32145 (h!70071 (exprs!5700 lt!2298456))) (regOne!32144 (h!70071 (exprs!5700 lt!2298456)))) (ite c!1028331 (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (Context!10401 call!453105)) (h!70073 s!2326)))))

(declare-fun b!5804875 () Bool)

(declare-fun e!3563610 () (Set Context!10400))

(assert (=> b!5804875 (= e!3563610 call!453109)))

(declare-fun b!5804876 () Bool)

(declare-fun c!1028329 () Bool)

(assert (=> b!5804876 (= c!1028329 (is-Star!15816 (h!70071 (exprs!5700 lt!2298456))))))

(assert (=> b!5804876 (= e!3563609 e!3563610)))

(declare-fun b!5804877 () Bool)

(assert (=> b!5804877 (= e!3563605 (set.union call!453107 call!453106))))

(declare-fun b!5804878 () Bool)

(assert (=> b!5804878 (= c!1028333 e!3563607)))

(declare-fun res!2447875 () Bool)

(assert (=> b!5804878 (=> (not res!2447875) (not e!3563607))))

(assert (=> b!5804878 (= res!2447875 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298456))))))

(assert (=> b!5804878 (= e!3563606 e!3563605)))

(declare-fun b!5804879 () Bool)

(assert (=> b!5804879 (= e!3563610 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828450 c!1028330) b!5804872))

(assert (= (and d!1828450 (not c!1028330)) b!5804874))

(assert (= (and b!5804874 c!1028331) b!5804873))

(assert (= (and b!5804874 (not c!1028331)) b!5804878))

(assert (= (and b!5804878 res!2447875) b!5804870))

(assert (= (and b!5804878 c!1028333) b!5804877))

(assert (= (and b!5804878 (not c!1028333)) b!5804871))

(assert (= (and b!5804871 c!1028332) b!5804869))

(assert (= (and b!5804871 (not c!1028332)) b!5804876))

(assert (= (and b!5804876 c!1028329) b!5804875))

(assert (= (and b!5804876 (not c!1028329)) b!5804879))

(assert (= (or b!5804869 b!5804875) bm!453099))

(assert (= (or b!5804869 b!5804875) bm!453102))

(assert (= (or b!5804877 bm!453099) bm!453100))

(assert (= (or b!5804877 bm!453102) bm!453103))

(assert (= (or b!5804873 b!5804877) bm!453104))

(assert (= (or b!5804873 bm!453103) bm!453101))

(declare-fun m!6744574 () Bool)

(assert (=> bm!453100 m!6744574))

(declare-fun m!6744576 () Bool)

(assert (=> bm!453101 m!6744576))

(declare-fun m!6744578 () Bool)

(assert (=> b!5804872 m!6744578))

(declare-fun m!6744580 () Bool)

(assert (=> b!5804870 m!6744580))

(declare-fun m!6744582 () Bool)

(assert (=> bm!453104 m!6744582))

(assert (=> bm!452944 d!1828450))

(declare-fun d!1828452 () Bool)

(assert (=> d!1828452 (= (isEmpty!35537 (unfocusZipperList!1244 zl!343)) (is-Nil!63623 (unfocusZipperList!1244 zl!343)))))

(assert (=> b!5804248 d!1828452))

(assert (=> bs!1370424 d!1828148))

(declare-fun bm!453105 () Bool)

(declare-fun call!453110 () (Set Context!10400))

(assert (=> bm!453105 (= call!453110 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456))))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456)))))) (h!70073 s!2326)))))

(declare-fun b!5804880 () Bool)

(declare-fun e!3563611 () (Set Context!10400))

(assert (=> b!5804880 (= e!3563611 call!453110)))

(declare-fun b!5804881 () Bool)

(declare-fun e!3563612 () (Set Context!10400))

(assert (=> b!5804881 (= e!3563612 e!3563611)))

(declare-fun c!1028334 () Bool)

(assert (=> b!5804881 (= c!1028334 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456))))))))

(declare-fun b!5804882 () Bool)

(declare-fun e!3563613 () Bool)

(assert (=> b!5804882 (= e!3563613 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456)))))))))

(declare-fun b!5804883 () Bool)

(assert (=> b!5804883 (= e!3563611 (as set.empty (Set Context!10400)))))

(declare-fun d!1828454 () Bool)

(declare-fun c!1028335 () Bool)

(assert (=> d!1828454 (= c!1028335 e!3563613)))

(declare-fun res!2447876 () Bool)

(assert (=> d!1828454 (=> (not res!2447876) (not e!3563613))))

(assert (=> d!1828454 (= res!2447876 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456))))))))

(assert (=> d!1828454 (= (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298456))) (h!70073 s!2326)) e!3563612)))

(declare-fun b!5804884 () Bool)

(assert (=> b!5804884 (= e!3563612 (set.union call!453110 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298456)))))) (h!70073 s!2326))))))

(assert (= (and d!1828454 res!2447876) b!5804882))

(assert (= (and d!1828454 c!1028335) b!5804884))

(assert (= (and d!1828454 (not c!1028335)) b!5804881))

(assert (= (and b!5804881 c!1028334) b!5804880))

(assert (= (and b!5804881 (not c!1028334)) b!5804883))

(assert (= (or b!5804884 b!5804880) bm!453105))

(declare-fun m!6744584 () Bool)

(assert (=> bm!453105 m!6744584))

(declare-fun m!6744586 () Bool)

(assert (=> b!5804882 m!6744586))

(declare-fun m!6744588 () Bool)

(assert (=> b!5804884 m!6744588))

(assert (=> b!5803923 d!1828454))

(declare-fun d!1828456 () Bool)

(assert (=> d!1828456 (= (flatMap!1423 lt!2298446 lambda!316660) (choose!44041 lt!2298446 lambda!316660))))

(declare-fun bs!1370590 () Bool)

(assert (= bs!1370590 d!1828456))

(declare-fun m!6744590 () Bool)

(assert (=> bs!1370590 m!6744590))

(assert (=> d!1828170 d!1828456))

(declare-fun bm!453106 () Bool)

(declare-fun call!453111 () (Set Context!10400))

(assert (=> bm!453106 (= call!453111 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))) (h!70073 s!2326)))))

(declare-fun b!5804885 () Bool)

(declare-fun e!3563614 () (Set Context!10400))

(assert (=> b!5804885 (= e!3563614 call!453111)))

(declare-fun b!5804886 () Bool)

(declare-fun e!3563615 () (Set Context!10400))

(assert (=> b!5804886 (= e!3563615 e!3563614)))

(declare-fun c!1028336 () Bool)

(assert (=> b!5804886 (= c!1028336 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))))

(declare-fun b!5804887 () Bool)

(declare-fun e!3563616 () Bool)

(assert (=> b!5804887 (= e!3563616 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))))))

(declare-fun b!5804888 () Bool)

(assert (=> b!5804888 (= e!3563614 (as set.empty (Set Context!10400)))))

(declare-fun d!1828458 () Bool)

(declare-fun c!1028337 () Bool)

(assert (=> d!1828458 (= c!1028337 e!3563616)))

(declare-fun res!2447877 () Bool)

(assert (=> d!1828458 (=> (not res!2447877) (not e!3563616))))

(assert (=> d!1828458 (= res!2447877 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))))))))

(assert (=> d!1828458 (= (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623))))) (h!70073 s!2326)) e!3563615)))

(declare-fun b!5804889 () Bool)

(assert (=> b!5804889 (= e!3563615 (set.union call!453111 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (Cons!63623 r!7292 Nil!63623)))))))) (h!70073 s!2326))))))

(assert (= (and d!1828458 res!2447877) b!5804887))

(assert (= (and d!1828458 c!1028337) b!5804889))

(assert (= (and d!1828458 (not c!1028337)) b!5804886))

(assert (= (and b!5804886 c!1028336) b!5804885))

(assert (= (and b!5804886 (not c!1028336)) b!5804888))

(assert (= (or b!5804889 b!5804885) bm!453106))

(declare-fun m!6744592 () Bool)

(assert (=> bm!453106 m!6744592))

(declare-fun m!6744594 () Bool)

(assert (=> b!5804887 m!6744594))

(declare-fun m!6744596 () Bool)

(assert (=> b!5804889 m!6744596))

(assert (=> b!5804281 d!1828458))

(declare-fun bm!453107 () Bool)

(declare-fun call!453112 () (Set Context!10400))

(assert (=> bm!453107 (= call!453112 (derivationStepZipperDown!1154 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451))))) (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451)))))) (h!70073 s!2326)))))

(declare-fun b!5804890 () Bool)

(declare-fun e!3563617 () (Set Context!10400))

(assert (=> b!5804890 (= e!3563617 call!453112)))

(declare-fun b!5804891 () Bool)

(declare-fun e!3563618 () (Set Context!10400))

(assert (=> b!5804891 (= e!3563618 e!3563617)))

(declare-fun c!1028338 () Bool)

(assert (=> b!5804891 (= c!1028338 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451))))))))

(declare-fun b!5804892 () Bool)

(declare-fun e!3563619 () Bool)

(assert (=> b!5804892 (= e!3563619 (nullable!5842 (h!70071 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451)))))))))

(declare-fun b!5804893 () Bool)

(assert (=> b!5804893 (= e!3563617 (as set.empty (Set Context!10400)))))

(declare-fun d!1828460 () Bool)

(declare-fun c!1028339 () Bool)

(assert (=> d!1828460 (= c!1028339 e!3563619)))

(declare-fun res!2447878 () Bool)

(assert (=> d!1828460 (=> (not res!2447878) (not e!3563619))))

(assert (=> d!1828460 (= res!2447878 (is-Cons!63623 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451))))))))

(assert (=> d!1828460 (= (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 lt!2298451))) (h!70073 s!2326)) e!3563618)))

(declare-fun b!5804894 () Bool)

(assert (=> b!5804894 (= e!3563618 (set.union call!453112 (derivationStepZipperUp!1080 (Context!10401 (t!377098 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298451)))))) (h!70073 s!2326))))))

(assert (= (and d!1828460 res!2447878) b!5804892))

(assert (= (and d!1828460 c!1028339) b!5804894))

(assert (= (and d!1828460 (not c!1028339)) b!5804891))

(assert (= (and b!5804891 c!1028338) b!5804890))

(assert (= (and b!5804891 (not c!1028338)) b!5804893))

(assert (= (or b!5804894 b!5804890) bm!453107))

(declare-fun m!6744598 () Bool)

(assert (=> bm!453107 m!6744598))

(declare-fun m!6744600 () Bool)

(assert (=> b!5804892 m!6744600))

(declare-fun m!6744602 () Bool)

(assert (=> b!5804894 m!6744602))

(assert (=> b!5803918 d!1828460))

(declare-fun d!1828462 () Bool)

(assert (=> d!1828462 true))

(declare-fun setRes!39057 () Bool)

(assert (=> d!1828462 setRes!39057))

(declare-fun condSetEmpty!39057 () Bool)

(declare-fun res!2447881 () (Set Context!10400))

(assert (=> d!1828462 (= condSetEmpty!39057 (= res!2447881 (as set.empty (Set Context!10400))))))

(assert (=> d!1828462 (= (choose!44041 lt!2298446 lambda!316622) res!2447881)))

(declare-fun setIsEmpty!39057 () Bool)

(assert (=> setIsEmpty!39057 setRes!39057))

(declare-fun setNonEmpty!39057 () Bool)

(declare-fun e!3563622 () Bool)

(declare-fun setElem!39057 () Context!10400)

(declare-fun tp!1602415 () Bool)

(assert (=> setNonEmpty!39057 (= setRes!39057 (and tp!1602415 (inv!82788 setElem!39057) e!3563622))))

(declare-fun setRest!39057 () (Set Context!10400))

(assert (=> setNonEmpty!39057 (= res!2447881 (set.union (set.insert setElem!39057 (as set.empty (Set Context!10400))) setRest!39057))))

(declare-fun b!5804897 () Bool)

(declare-fun tp!1602416 () Bool)

(assert (=> b!5804897 (= e!3563622 tp!1602416)))

(assert (= (and d!1828462 condSetEmpty!39057) setIsEmpty!39057))

(assert (= (and d!1828462 (not condSetEmpty!39057)) setNonEmpty!39057))

(assert (= setNonEmpty!39057 b!5804897))

(declare-fun m!6744604 () Bool)

(assert (=> setNonEmpty!39057 m!6744604))

(assert (=> d!1828146 d!1828462))

(declare-fun d!1828464 () Bool)

(declare-fun res!2447882 () Bool)

(declare-fun e!3563623 () Bool)

(assert (=> d!1828464 (=> res!2447882 e!3563623)))

(assert (=> d!1828464 (= res!2447882 (is-Nil!63623 (exprs!5700 setElem!39045)))))

(assert (=> d!1828464 (= (forall!14924 (exprs!5700 setElem!39045) lambda!316653) e!3563623)))

(declare-fun b!5804898 () Bool)

(declare-fun e!3563624 () Bool)

(assert (=> b!5804898 (= e!3563623 e!3563624)))

(declare-fun res!2447883 () Bool)

(assert (=> b!5804898 (=> (not res!2447883) (not e!3563624))))

(assert (=> b!5804898 (= res!2447883 (dynLambda!24911 lambda!316653 (h!70071 (exprs!5700 setElem!39045))))))

(declare-fun b!5804899 () Bool)

(assert (=> b!5804899 (= e!3563624 (forall!14924 (t!377098 (exprs!5700 setElem!39045)) lambda!316653))))

(assert (= (and d!1828464 (not res!2447882)) b!5804898))

(assert (= (and b!5804898 res!2447883) b!5804899))

(declare-fun b_lambda!218829 () Bool)

(assert (=> (not b_lambda!218829) (not b!5804898)))

(declare-fun m!6744606 () Bool)

(assert (=> b!5804898 m!6744606))

(declare-fun m!6744608 () Bool)

(assert (=> b!5804899 m!6744608))

(assert (=> d!1828136 d!1828464))

(declare-fun d!1828466 () Bool)

(assert (=> d!1828466 (= (isEmpty!35538 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326)) (not (is-Some!15824 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326))))))

(assert (=> d!1828172 d!1828466))

(declare-fun d!1828468 () Bool)

(assert (=> d!1828468 (= (flatMap!1423 z!1189 lambda!316689) (choose!44041 z!1189 lambda!316689))))

(declare-fun bs!1370591 () Bool)

(assert (= bs!1370591 d!1828468))

(declare-fun m!6744610 () Bool)

(assert (=> bs!1370591 m!6744610))

(assert (=> d!1828218 d!1828468))

(declare-fun d!1828470 () Bool)

(assert (=> d!1828470 (= (nullable!5842 (h!70071 (exprs!5700 lt!2298442))) (nullableFct!1873 (h!70071 (exprs!5700 lt!2298442))))))

(declare-fun bs!1370592 () Bool)

(assert (= bs!1370592 d!1828470))

(declare-fun m!6744612 () Bool)

(assert (=> bs!1370592 m!6744612))

(assert (=> b!5803986 d!1828470))

(assert (=> bm!452980 d!1828188))

(declare-fun d!1828472 () Bool)

(declare-fun c!1028341 () Bool)

(assert (=> d!1828472 (= c!1028341 (and (is-ElementMatch!15816 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (= (c!1028045 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (h!70073 s!2326))))))

(declare-fun e!3563628 () (Set Context!10400))

(assert (=> d!1828472 (= (derivationStepZipperDown!1154 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))) (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975)) (h!70073 s!2326)) e!3563628)))

(declare-fun bm!453108 () Bool)

(declare-fun call!453117 () List!63747)

(declare-fun call!453114 () List!63747)

(assert (=> bm!453108 (= call!453117 call!453114)))

(declare-fun c!1028343 () Bool)

(declare-fun bm!453109 () Bool)

(declare-fun c!1028344 () Bool)

(assert (=> bm!453109 (= call!453114 ($colon$colon!1797 (exprs!5700 (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975))) (ite (or c!1028344 c!1028343) (regTwo!32144 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))))))))

(declare-fun b!5804900 () Bool)

(declare-fun e!3563629 () (Set Context!10400))

(declare-fun call!453118 () (Set Context!10400))

(assert (=> b!5804900 (= e!3563629 call!453118)))

(declare-fun e!3563627 () Bool)

(declare-fun b!5804901 () Bool)

(assert (=> b!5804901 (= e!3563627 (nullable!5842 (regOne!32144 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))))))))

(declare-fun b!5804902 () Bool)

(declare-fun e!3563625 () (Set Context!10400))

(assert (=> b!5804902 (= e!3563625 e!3563629)))

(assert (=> b!5804902 (= c!1028343 (is-Concat!24661 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))))))

(declare-fun call!453113 () (Set Context!10400))

(declare-fun bm!453110 () Bool)

(declare-fun c!1028342 () Bool)

(assert (=> bm!453110 (= call!453113 (derivationStepZipperDown!1154 (ite c!1028342 (regOne!32145 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (ite c!1028344 (regTwo!32144 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (ite c!1028343 (regOne!32144 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (reg!16145 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))))))) (ite (or c!1028342 c!1028344) (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975)) (Context!10401 call!453117)) (h!70073 s!2326)))))

(declare-fun b!5804903 () Bool)

(assert (=> b!5804903 (= e!3563628 (set.insert (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975)) (as set.empty (Set Context!10400))))))

(declare-fun b!5804904 () Bool)

(declare-fun e!3563626 () (Set Context!10400))

(declare-fun call!453116 () (Set Context!10400))

(assert (=> b!5804904 (= e!3563626 (set.union call!453113 call!453116))))

(declare-fun bm!453111 () Bool)

(declare-fun call!453115 () (Set Context!10400))

(assert (=> bm!453111 (= call!453118 call!453115)))

(declare-fun b!5804905 () Bool)

(assert (=> b!5804905 (= e!3563628 e!3563626)))

(assert (=> b!5804905 (= c!1028342 (is-Union!15816 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))))))

(declare-fun bm!453112 () Bool)

(assert (=> bm!453112 (= call!453115 call!453113)))

(declare-fun bm!453113 () Bool)

(assert (=> bm!453113 (= call!453116 (derivationStepZipperDown!1154 (ite c!1028342 (regTwo!32145 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))) (regOne!32144 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292))))))) (ite c!1028342 (ite (or c!1028098 c!1028100) lt!2298456 (Context!10401 call!452975)) (Context!10401 call!453114)) (h!70073 s!2326)))))

(declare-fun b!5804906 () Bool)

(declare-fun e!3563630 () (Set Context!10400))

(assert (=> b!5804906 (= e!3563630 call!453118)))

(declare-fun c!1028340 () Bool)

(declare-fun b!5804907 () Bool)

(assert (=> b!5804907 (= c!1028340 (is-Star!15816 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))))))

(assert (=> b!5804907 (= e!3563629 e!3563630)))

(declare-fun b!5804908 () Bool)

(assert (=> b!5804908 (= e!3563625 (set.union call!453116 call!453115))))

(declare-fun b!5804909 () Bool)

(assert (=> b!5804909 (= c!1028344 e!3563627)))

(declare-fun res!2447884 () Bool)

(assert (=> b!5804909 (=> (not res!2447884) (not e!3563627))))

(assert (=> b!5804909 (= res!2447884 (is-Concat!24661 (ite c!1028098 (regOne!32145 (reg!16145 r!7292)) (ite c!1028100 (regTwo!32144 (reg!16145 r!7292)) (ite c!1028099 (regOne!32144 (reg!16145 r!7292)) (reg!16145 (reg!16145 r!7292)))))))))

(assert (=> b!5804909 (= e!3563626 e!3563625)))

(declare-fun b!5804910 () Bool)

(assert (=> b!5804910 (= e!3563630 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828472 c!1028341) b!5804903))

(assert (= (and d!1828472 (not c!1028341)) b!5804905))

(assert (= (and b!5804905 c!1028342) b!5804904))

(assert (= (and b!5804905 (not c!1028342)) b!5804909))

(assert (= (and b!5804909 res!2447884) b!5804901))

(assert (= (and b!5804909 c!1028344) b!5804908))

(assert (= (and b!5804909 (not c!1028344)) b!5804902))

(assert (= (and b!5804902 c!1028343) b!5804900))

(assert (= (and b!5804902 (not c!1028343)) b!5804907))

(assert (= (and b!5804907 c!1028340) b!5804906))

(assert (= (and b!5804907 (not c!1028340)) b!5804910))

(assert (= (or b!5804900 b!5804906) bm!453108))

(assert (= (or b!5804900 b!5804906) bm!453111))

(assert (= (or b!5804908 bm!453108) bm!453109))

(assert (= (or b!5804908 bm!453111) bm!453112))

(assert (= (or b!5804904 b!5804908) bm!453113))

(assert (= (or b!5804904 bm!453112) bm!453110))

(declare-fun m!6744614 () Bool)

(assert (=> bm!453109 m!6744614))

(declare-fun m!6744616 () Bool)

(assert (=> bm!453110 m!6744616))

(declare-fun m!6744618 () Bool)

(assert (=> b!5804903 m!6744618))

(declare-fun m!6744620 () Bool)

(assert (=> b!5804901 m!6744620))

(declare-fun m!6744622 () Bool)

(assert (=> bm!453113 m!6744622))

(assert (=> bm!452968 d!1828472))

(declare-fun d!1828474 () Bool)

(assert (=> d!1828474 true))

(declare-fun setRes!39058 () Bool)

(assert (=> d!1828474 setRes!39058))

(declare-fun condSetEmpty!39058 () Bool)

(declare-fun res!2447885 () (Set Context!10400))

(assert (=> d!1828474 (= condSetEmpty!39058 (= res!2447885 (as set.empty (Set Context!10400))))))

(assert (=> d!1828474 (= (choose!44041 lt!2298444 lambda!316622) res!2447885)))

(declare-fun setIsEmpty!39058 () Bool)

(assert (=> setIsEmpty!39058 setRes!39058))

(declare-fun tp!1602417 () Bool)

(declare-fun e!3563631 () Bool)

(declare-fun setNonEmpty!39058 () Bool)

(declare-fun setElem!39058 () Context!10400)

(assert (=> setNonEmpty!39058 (= setRes!39058 (and tp!1602417 (inv!82788 setElem!39058) e!3563631))))

(declare-fun setRest!39058 () (Set Context!10400))

(assert (=> setNonEmpty!39058 (= res!2447885 (set.union (set.insert setElem!39058 (as set.empty (Set Context!10400))) setRest!39058))))

(declare-fun b!5804911 () Bool)

(declare-fun tp!1602418 () Bool)

(assert (=> b!5804911 (= e!3563631 tp!1602418)))

(assert (= (and d!1828474 condSetEmpty!39058) setIsEmpty!39058))

(assert (= (and d!1828474 (not condSetEmpty!39058)) setNonEmpty!39058))

(assert (= setNonEmpty!39058 b!5804911))

(declare-fun m!6744624 () Bool)

(assert (=> setNonEmpty!39058 m!6744624))

(assert (=> d!1828124 d!1828474))

(declare-fun d!1828476 () Bool)

(assert (=> d!1828476 (= (nullable!5842 (regOne!32144 r!7292)) (nullableFct!1873 (regOne!32144 r!7292)))))

(declare-fun bs!1370593 () Bool)

(assert (= bs!1370593 d!1828476))

(declare-fun m!6744626 () Bool)

(assert (=> bs!1370593 m!6744626))

(assert (=> b!5804267 d!1828476))

(declare-fun d!1828478 () Bool)

(assert (=> d!1828478 (= ($colon$colon!1797 (exprs!5700 lt!2298456) (ite (or c!1028100 c!1028099) (regTwo!32144 (reg!16145 r!7292)) (reg!16145 r!7292))) (Cons!63623 (ite (or c!1028100 c!1028099) (regTwo!32144 (reg!16145 r!7292)) (reg!16145 r!7292)) (exprs!5700 lt!2298456)))))

(assert (=> bm!452967 d!1828478))

(declare-fun bs!1370594 () Bool)

(declare-fun d!1828480 () Bool)

(assert (= bs!1370594 (and d!1828480 d!1828176)))

(declare-fun lambda!316751 () Int)

(assert (=> bs!1370594 (= (= r!7292 (Star!15816 (reg!16145 r!7292))) (= lambda!316751 lambda!316671))))

(declare-fun bs!1370595 () Bool)

(assert (= bs!1370595 (and d!1828480 d!1828196)))

(assert (=> bs!1370595 (= lambda!316751 lambda!316679)))

(declare-fun bs!1370596 () Bool)

(assert (= bs!1370596 (and d!1828480 d!1828444)))

(assert (=> bs!1370596 (not (= lambda!316751 lambda!316748))))

(declare-fun bs!1370597 () Bool)

(assert (= bs!1370597 (and d!1828480 b!5803746)))

(assert (=> bs!1370597 (not (= lambda!316751 lambda!316620))))

(declare-fun bs!1370598 () Bool)

(assert (= bs!1370598 (and d!1828480 b!5804034)))

(assert (=> bs!1370598 (not (= lambda!316751 lambda!316659))))

(declare-fun bs!1370599 () Bool)

(assert (= bs!1370599 (and d!1828480 d!1828174)))

(assert (=> bs!1370599 (not (= lambda!316751 lambda!316666))))

(assert (=> bs!1370597 (= lambda!316751 lambda!316619)))

(assert (=> bs!1370594 (not (= lambda!316751 lambda!316672))))

(declare-fun bs!1370600 () Bool)

(assert (= bs!1370600 (and d!1828480 d!1828356)))

(assert (=> bs!1370600 (not (= lambda!316751 lambda!316730))))

(declare-fun bs!1370601 () Bool)

(assert (= bs!1370601 (and d!1828480 b!5804781)))

(assert (=> bs!1370601 (not (= lambda!316751 lambda!316738))))

(declare-fun bs!1370602 () Bool)

(assert (= bs!1370602 (and d!1828480 b!5804786)))

(assert (=> bs!1370602 (not (= lambda!316751 lambda!316737))))

(assert (=> bs!1370599 (= lambda!316751 lambda!316665)))

(declare-fun bs!1370603 () Bool)

(assert (= bs!1370603 (and d!1828480 b!5804039)))

(assert (=> bs!1370603 (not (= lambda!316751 lambda!316658))))

(assert (=> bs!1370596 (= lambda!316751 lambda!316747)))

(assert (=> bs!1370600 (= (= r!7292 (Star!15816 (reg!16145 r!7292))) (= lambda!316751 lambda!316729))))

(assert (=> bs!1370597 (not (= lambda!316751 lambda!316621))))

(assert (=> d!1828480 true))

(assert (=> d!1828480 true))

(assert (=> d!1828480 true))

(assert (=> d!1828480 (= (isDefined!12528 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 Nil!63625 s!2326 s!2326)) (Exists!2916 lambda!316751))))

(assert (=> d!1828480 true))

(declare-fun _$89!1933 () Unit!156892)

(assert (=> d!1828480 (= (choose!44047 (reg!16145 r!7292) r!7292 s!2326) _$89!1933)))

(declare-fun bs!1370604 () Bool)

(assert (= bs!1370604 d!1828480))

(assert (=> bs!1370604 m!6743642))

(assert (=> bs!1370604 m!6743642))

(assert (=> bs!1370604 m!6743644))

(declare-fun m!6744628 () Bool)

(assert (=> bs!1370604 m!6744628))

(assert (=> d!1828196 d!1828480))

(assert (=> d!1828196 d!1828194))

(assert (=> d!1828196 d!1828358))

(declare-fun d!1828482 () Bool)

(assert (=> d!1828482 (= (Exists!2916 lambda!316679) (choose!44046 lambda!316679))))

(declare-fun bs!1370605 () Bool)

(assert (= bs!1370605 d!1828482))

(declare-fun m!6744630 () Bool)

(assert (=> bs!1370605 m!6744630))

(assert (=> d!1828196 d!1828482))

(assert (=> d!1828196 d!1828172))

(declare-fun b!5804916 () Bool)

(declare-fun e!3563634 () Bool)

(declare-fun call!453120 () Bool)

(assert (=> b!5804916 (= e!3563634 call!453120)))

(declare-fun b!5804917 () Bool)

(declare-fun e!3563635 () Bool)

(assert (=> b!5804917 (= e!3563635 e!3563634)))

(declare-fun res!2447893 () Bool)

(assert (=> b!5804917 (= res!2447893 (not (nullable!5842 (reg!16145 lt!2298541))))))

(assert (=> b!5804917 (=> (not res!2447893) (not e!3563634))))

(declare-fun b!5804918 () Bool)

(declare-fun e!3563636 () Bool)

(declare-fun e!3563638 () Bool)

(assert (=> b!5804918 (= e!3563636 e!3563638)))

(declare-fun res!2447892 () Bool)

(assert (=> b!5804918 (=> (not res!2447892) (not e!3563638))))

(declare-fun call!453121 () Bool)

(assert (=> b!5804918 (= res!2447892 call!453121)))

(declare-fun bm!453115 () Bool)

(declare-fun call!453119 () Bool)

(declare-fun c!1028345 () Bool)

(assert (=> bm!453115 (= call!453119 (validRegex!7552 (ite c!1028345 (regTwo!32145 lt!2298541) (regTwo!32144 lt!2298541))))))

(declare-fun b!5804919 () Bool)

(declare-fun e!3563640 () Bool)

(assert (=> b!5804919 (= e!3563635 e!3563640)))

(assert (=> b!5804919 (= c!1028345 (is-Union!15816 lt!2298541))))

(declare-fun bm!453116 () Bool)

(assert (=> bm!453116 (= call!453121 call!453120)))

(declare-fun b!5804920 () Bool)

(declare-fun res!2447891 () Bool)

(assert (=> b!5804920 (=> res!2447891 e!3563636)))

(assert (=> b!5804920 (= res!2447891 (not (is-Concat!24661 lt!2298541)))))

(assert (=> b!5804920 (= e!3563640 e!3563636)))

(declare-fun b!5804921 () Bool)

(declare-fun e!3563639 () Bool)

(assert (=> b!5804921 (= e!3563639 call!453119)))

(declare-fun b!5804922 () Bool)

(assert (=> b!5804922 (= e!3563638 call!453119)))

(declare-fun d!1828484 () Bool)

(declare-fun res!2447890 () Bool)

(declare-fun e!3563637 () Bool)

(assert (=> d!1828484 (=> res!2447890 e!3563637)))

(assert (=> d!1828484 (= res!2447890 (is-ElementMatch!15816 lt!2298541))))

(assert (=> d!1828484 (= (validRegex!7552 lt!2298541) e!3563637)))

(declare-fun c!1028346 () Bool)

(declare-fun bm!453114 () Bool)

(assert (=> bm!453114 (= call!453120 (validRegex!7552 (ite c!1028346 (reg!16145 lt!2298541) (ite c!1028345 (regOne!32145 lt!2298541) (regOne!32144 lt!2298541)))))))

(declare-fun b!5804923 () Bool)

(declare-fun res!2447894 () Bool)

(assert (=> b!5804923 (=> (not res!2447894) (not e!3563639))))

(assert (=> b!5804923 (= res!2447894 call!453121)))

(assert (=> b!5804923 (= e!3563640 e!3563639)))

(declare-fun b!5804924 () Bool)

(assert (=> b!5804924 (= e!3563637 e!3563635)))

(assert (=> b!5804924 (= c!1028346 (is-Star!15816 lt!2298541))))

(assert (= (and d!1828484 (not res!2447890)) b!5804924))

(assert (= (and b!5804924 c!1028346) b!5804917))

(assert (= (and b!5804924 (not c!1028346)) b!5804919))

(assert (= (and b!5804917 res!2447893) b!5804916))

(assert (= (and b!5804919 c!1028345) b!5804923))

(assert (= (and b!5804919 (not c!1028345)) b!5804920))

(assert (= (and b!5804923 res!2447894) b!5804921))

(assert (= (and b!5804920 (not res!2447891)) b!5804918))

(assert (= (and b!5804918 res!2447892) b!5804922))

(assert (= (or b!5804921 b!5804922) bm!453115))

(assert (= (or b!5804923 b!5804918) bm!453116))

(assert (= (or b!5804916 bm!453116) bm!453114))

(declare-fun m!6744632 () Bool)

(assert (=> b!5804917 m!6744632))

(declare-fun m!6744634 () Bool)

(assert (=> bm!453115 m!6744634))

(declare-fun m!6744636 () Bool)

(assert (=> bm!453114 m!6744636))

(assert (=> d!1828120 d!1828484))

(declare-fun bs!1370606 () Bool)

(declare-fun d!1828486 () Bool)

(assert (= bs!1370606 (and d!1828486 d!1828346)))

(declare-fun lambda!316752 () Int)

(assert (=> bs!1370606 (= lambda!316752 lambda!316723)))

(declare-fun bs!1370607 () Bool)

(assert (= bs!1370607 (and d!1828486 d!1828202)))

(assert (=> bs!1370607 (= lambda!316752 lambda!316688)))

(declare-fun bs!1370608 () Bool)

(assert (= bs!1370608 (and d!1828486 d!1828348)))

(assert (=> bs!1370608 (= lambda!316752 lambda!316724)))

(declare-fun bs!1370609 () Bool)

(assert (= bs!1370609 (and d!1828486 d!1828200)))

(assert (=> bs!1370609 (= lambda!316752 lambda!316685)))

(declare-fun bs!1370610 () Bool)

(assert (= bs!1370610 (and d!1828486 d!1828438)))

(assert (=> bs!1370610 (= lambda!316752 lambda!316742)))

(declare-fun bs!1370611 () Bool)

(assert (= bs!1370611 (and d!1828486 d!1828386)))

(assert (=> bs!1370611 (= lambda!316752 lambda!316735)))

(declare-fun bs!1370612 () Bool)

(assert (= bs!1370612 (and d!1828486 d!1828112)))

(assert (=> bs!1370612 (= lambda!316752 lambda!316647)))

(declare-fun bs!1370613 () Bool)

(assert (= bs!1370613 (and d!1828486 d!1828400)))

(assert (=> bs!1370613 (= lambda!316752 lambda!316736)))

(declare-fun bs!1370614 () Bool)

(assert (= bs!1370614 (and d!1828486 d!1828198)))

(assert (=> bs!1370614 (= lambda!316752 lambda!316680)))

(declare-fun bs!1370615 () Bool)

(assert (= bs!1370615 (and d!1828486 d!1828420)))

(assert (=> bs!1370615 (= lambda!316752 lambda!316740)))

(declare-fun bs!1370616 () Bool)

(assert (= bs!1370616 (and d!1828486 d!1828136)))

(assert (=> bs!1370616 (= lambda!316752 lambda!316653)))

(declare-fun b!5804925 () Bool)

(declare-fun e!3563644 () Bool)

(declare-fun lt!2298636 () Regex!15816)

(assert (=> b!5804925 (= e!3563644 (= lt!2298636 (head!12244 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624)))))))

(declare-fun b!5804927 () Bool)

(declare-fun e!3563643 () Regex!15816)

(assert (=> b!5804927 (= e!3563643 (Union!15816 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))) (generalisedUnion!1679 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))))

(declare-fun b!5804928 () Bool)

(declare-fun e!3563645 () Regex!15816)

(assert (=> b!5804928 (= e!3563645 e!3563643)))

(declare-fun c!1028349 () Bool)

(assert (=> b!5804928 (= c!1028349 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))

(declare-fun b!5804929 () Bool)

(assert (=> b!5804929 (= e!3563643 EmptyLang!15816)))

(declare-fun b!5804930 () Bool)

(assert (=> b!5804930 (= e!3563645 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))

(declare-fun b!5804931 () Bool)

(assert (=> b!5804931 (= e!3563644 (isUnion!729 lt!2298636))))

(declare-fun e!3563641 () Bool)

(assert (=> d!1828486 e!3563641))

(declare-fun res!2447896 () Bool)

(assert (=> d!1828486 (=> (not res!2447896) (not e!3563641))))

(assert (=> d!1828486 (= res!2447896 (validRegex!7552 lt!2298636))))

(assert (=> d!1828486 (= lt!2298636 e!3563645)))

(declare-fun c!1028347 () Bool)

(declare-fun e!3563642 () Bool)

(assert (=> d!1828486 (= c!1028347 e!3563642)))

(declare-fun res!2447895 () Bool)

(assert (=> d!1828486 (=> (not res!2447895) (not e!3563642))))

(assert (=> d!1828486 (= res!2447895 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))

(assert (=> d!1828486 (forall!14924 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624)) lambda!316752)))

(assert (=> d!1828486 (= (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))) lt!2298636)))

(declare-fun b!5804926 () Bool)

(declare-fun e!3563646 () Bool)

(assert (=> b!5804926 (= e!3563641 e!3563646)))

(declare-fun c!1028348 () Bool)

(assert (=> b!5804926 (= c!1028348 (isEmpty!35537 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624))))))

(declare-fun b!5804932 () Bool)

(assert (=> b!5804932 (= e!3563646 (isEmptyLang!1299 lt!2298636))))

(declare-fun b!5804933 () Bool)

(assert (=> b!5804933 (= e!3563646 e!3563644)))

(declare-fun c!1028350 () Bool)

(assert (=> b!5804933 (= c!1028350 (isEmpty!35537 (tail!11339 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624)))))))

(declare-fun b!5804934 () Bool)

(assert (=> b!5804934 (= e!3563642 (isEmpty!35537 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624)))))))

(assert (= (and d!1828486 res!2447895) b!5804934))

(assert (= (and d!1828486 c!1028347) b!5804930))

(assert (= (and d!1828486 (not c!1028347)) b!5804928))

(assert (= (and b!5804928 c!1028349) b!5804927))

(assert (= (and b!5804928 (not c!1028349)) b!5804929))

(assert (= (and d!1828486 res!2447896) b!5804926))

(assert (= (and b!5804926 c!1028348) b!5804932))

(assert (= (and b!5804926 (not c!1028348)) b!5804933))

(assert (= (and b!5804933 c!1028350) b!5804925))

(assert (= (and b!5804933 (not c!1028350)) b!5804931))

(declare-fun m!6744638 () Bool)

(assert (=> d!1828486 m!6744638))

(assert (=> d!1828486 m!6743820))

(declare-fun m!6744640 () Bool)

(assert (=> d!1828486 m!6744640))

(assert (=> b!5804925 m!6743820))

(declare-fun m!6744642 () Bool)

(assert (=> b!5804925 m!6744642))

(assert (=> b!5804926 m!6743820))

(declare-fun m!6744644 () Bool)

(assert (=> b!5804926 m!6744644))

(declare-fun m!6744646 () Bool)

(assert (=> b!5804934 m!6744646))

(declare-fun m!6744648 () Bool)

(assert (=> b!5804932 m!6744648))

(declare-fun m!6744650 () Bool)

(assert (=> b!5804931 m!6744650))

(assert (=> b!5804933 m!6743820))

(declare-fun m!6744652 () Bool)

(assert (=> b!5804933 m!6744652))

(assert (=> b!5804933 m!6744652))

(declare-fun m!6744654 () Bool)

(assert (=> b!5804933 m!6744654))

(declare-fun m!6744656 () Bool)

(assert (=> b!5804927 m!6744656))

(assert (=> d!1828120 d!1828486))

(declare-fun bs!1370617 () Bool)

(declare-fun d!1828488 () Bool)

(assert (= bs!1370617 (and d!1828488 d!1828346)))

(declare-fun lambda!316753 () Int)

(assert (=> bs!1370617 (= lambda!316753 lambda!316723)))

(declare-fun bs!1370618 () Bool)

(assert (= bs!1370618 (and d!1828488 d!1828202)))

(assert (=> bs!1370618 (= lambda!316753 lambda!316688)))

(declare-fun bs!1370619 () Bool)

(assert (= bs!1370619 (and d!1828488 d!1828200)))

(assert (=> bs!1370619 (= lambda!316753 lambda!316685)))

(declare-fun bs!1370620 () Bool)

(assert (= bs!1370620 (and d!1828488 d!1828438)))

(assert (=> bs!1370620 (= lambda!316753 lambda!316742)))

(declare-fun bs!1370621 () Bool)

(assert (= bs!1370621 (and d!1828488 d!1828386)))

(assert (=> bs!1370621 (= lambda!316753 lambda!316735)))

(declare-fun bs!1370622 () Bool)

(assert (= bs!1370622 (and d!1828488 d!1828112)))

(assert (=> bs!1370622 (= lambda!316753 lambda!316647)))

(declare-fun bs!1370623 () Bool)

(assert (= bs!1370623 (and d!1828488 d!1828400)))

(assert (=> bs!1370623 (= lambda!316753 lambda!316736)))

(declare-fun bs!1370624 () Bool)

(assert (= bs!1370624 (and d!1828488 d!1828198)))

(assert (=> bs!1370624 (= lambda!316753 lambda!316680)))

(declare-fun bs!1370625 () Bool)

(assert (= bs!1370625 (and d!1828488 d!1828420)))

(assert (=> bs!1370625 (= lambda!316753 lambda!316740)))

(declare-fun bs!1370626 () Bool)

(assert (= bs!1370626 (and d!1828488 d!1828136)))

(assert (=> bs!1370626 (= lambda!316753 lambda!316653)))

(declare-fun bs!1370627 () Bool)

(assert (= bs!1370627 (and d!1828488 d!1828486)))

(assert (=> bs!1370627 (= lambda!316753 lambda!316752)))

(declare-fun bs!1370628 () Bool)

(assert (= bs!1370628 (and d!1828488 d!1828348)))

(assert (=> bs!1370628 (= lambda!316753 lambda!316724)))

(declare-fun lt!2298637 () List!63747)

(assert (=> d!1828488 (forall!14924 lt!2298637 lambda!316753)))

(declare-fun e!3563647 () List!63747)

(assert (=> d!1828488 (= lt!2298637 e!3563647)))

(declare-fun c!1028351 () Bool)

(assert (=> d!1828488 (= c!1028351 (is-Cons!63624 (Cons!63624 lt!2298451 Nil!63624)))))

(assert (=> d!1828488 (= (unfocusZipperList!1244 (Cons!63624 lt!2298451 Nil!63624)) lt!2298637)))

(declare-fun b!5804935 () Bool)

(assert (=> b!5804935 (= e!3563647 (Cons!63623 (generalisedConcat!1431 (exprs!5700 (h!70072 (Cons!63624 lt!2298451 Nil!63624)))) (unfocusZipperList!1244 (t!377099 (Cons!63624 lt!2298451 Nil!63624)))))))

(declare-fun b!5804936 () Bool)

(assert (=> b!5804936 (= e!3563647 Nil!63623)))

(assert (= (and d!1828488 c!1028351) b!5804935))

(assert (= (and d!1828488 (not c!1028351)) b!5804936))

(declare-fun m!6744658 () Bool)

(assert (=> d!1828488 m!6744658))

(declare-fun m!6744660 () Bool)

(assert (=> b!5804935 m!6744660))

(declare-fun m!6744662 () Bool)

(assert (=> b!5804935 m!6744662))

(assert (=> d!1828120 d!1828488))

(assert (=> d!1828166 d!1828188))

(declare-fun d!1828490 () Bool)

(assert (=> d!1828490 (= (isEmpty!35537 (tail!11339 (exprs!5700 (h!70072 zl!343)))) (is-Nil!63623 (tail!11339 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> b!5803889 d!1828490))

(declare-fun d!1828492 () Bool)

(assert (=> d!1828492 (= (tail!11339 (exprs!5700 (h!70072 zl!343))) (t!377098 (exprs!5700 (h!70072 zl!343))))))

(assert (=> b!5803889 d!1828492))

(declare-fun d!1828494 () Bool)

(assert (=> d!1828494 true))

(declare-fun setRes!39059 () Bool)

(assert (=> d!1828494 setRes!39059))

(declare-fun condSetEmpty!39059 () Bool)

(declare-fun res!2447897 () (Set Context!10400))

(assert (=> d!1828494 (= condSetEmpty!39059 (= res!2447897 (as set.empty (Set Context!10400))))))

(assert (=> d!1828494 (= (choose!44041 lt!2298457 lambda!316622) res!2447897)))

(declare-fun setIsEmpty!39059 () Bool)

(assert (=> setIsEmpty!39059 setRes!39059))

(declare-fun tp!1602419 () Bool)

(declare-fun setElem!39059 () Context!10400)

(declare-fun setNonEmpty!39059 () Bool)

(declare-fun e!3563648 () Bool)

(assert (=> setNonEmpty!39059 (= setRes!39059 (and tp!1602419 (inv!82788 setElem!39059) e!3563648))))

(declare-fun setRest!39059 () (Set Context!10400))

(assert (=> setNonEmpty!39059 (= res!2447897 (set.union (set.insert setElem!39059 (as set.empty (Set Context!10400))) setRest!39059))))

(declare-fun b!5804937 () Bool)

(declare-fun tp!1602420 () Bool)

(assert (=> b!5804937 (= e!3563648 tp!1602420)))

(assert (= (and d!1828494 condSetEmpty!39059) setIsEmpty!39059))

(assert (= (and d!1828494 (not condSetEmpty!39059)) setNonEmpty!39059))

(assert (= setNonEmpty!39059 b!5804937))

(declare-fun m!6744664 () Bool)

(assert (=> setNonEmpty!39059 m!6744664))

(assert (=> d!1828126 d!1828494))

(declare-fun bs!1370629 () Bool)

(declare-fun b!5804946 () Bool)

(assert (= bs!1370629 (and b!5804946 d!1828176)))

(declare-fun lambda!316754 () Int)

(assert (=> bs!1370629 (not (= lambda!316754 lambda!316671))))

(declare-fun bs!1370630 () Bool)

(assert (= bs!1370630 (and b!5804946 d!1828196)))

(assert (=> bs!1370630 (not (= lambda!316754 lambda!316679))))

(declare-fun bs!1370631 () Bool)

(assert (= bs!1370631 (and b!5804946 b!5803746)))

(assert (=> bs!1370631 (= (and (= (reg!16145 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32145 r!7292) r!7292)) (= lambda!316754 lambda!316620))))

(declare-fun bs!1370632 () Bool)

(assert (= bs!1370632 (and b!5804946 b!5804034)))

(assert (=> bs!1370632 (not (= lambda!316754 lambda!316659))))

(declare-fun bs!1370633 () Bool)

(assert (= bs!1370633 (and b!5804946 d!1828174)))

(assert (=> bs!1370633 (not (= lambda!316754 lambda!316666))))

(assert (=> bs!1370631 (not (= lambda!316754 lambda!316619))))

(assert (=> bs!1370629 (= (and (= (reg!16145 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32145 r!7292) (Star!15816 (reg!16145 r!7292)))) (= lambda!316754 lambda!316672))))

(declare-fun bs!1370634 () Bool)

(assert (= bs!1370634 (and b!5804946 d!1828356)))

(assert (=> bs!1370634 (= (and (= (reg!16145 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32145 r!7292) (Star!15816 (reg!16145 r!7292)))) (= lambda!316754 lambda!316730))))

(declare-fun bs!1370635 () Bool)

(assert (= bs!1370635 (and b!5804946 b!5804781)))

(assert (=> bs!1370635 (not (= lambda!316754 lambda!316738))))

(declare-fun bs!1370636 () Bool)

(assert (= bs!1370636 (and b!5804946 b!5804786)))

(assert (=> bs!1370636 (= (and (= (reg!16145 (regTwo!32145 r!7292)) (reg!16145 (regOne!32145 r!7292))) (= (regTwo!32145 r!7292) (regOne!32145 r!7292))) (= lambda!316754 lambda!316737))))

(assert (=> bs!1370633 (not (= lambda!316754 lambda!316665))))

(declare-fun bs!1370637 () Bool)

(assert (= bs!1370637 (and b!5804946 d!1828444)))

(assert (=> bs!1370637 (not (= lambda!316754 lambda!316748))))

(declare-fun bs!1370638 () Bool)

(assert (= bs!1370638 (and b!5804946 d!1828480)))

(assert (=> bs!1370638 (not (= lambda!316754 lambda!316751))))

(declare-fun bs!1370639 () Bool)

(assert (= bs!1370639 (and b!5804946 b!5804039)))

(assert (=> bs!1370639 (= (and (= (reg!16145 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32145 r!7292) r!7292)) (= lambda!316754 lambda!316658))))

(assert (=> bs!1370637 (not (= lambda!316754 lambda!316747))))

(assert (=> bs!1370634 (not (= lambda!316754 lambda!316729))))

(assert (=> bs!1370631 (not (= lambda!316754 lambda!316621))))

(assert (=> b!5804946 true))

(assert (=> b!5804946 true))

(declare-fun bs!1370640 () Bool)

(declare-fun b!5804941 () Bool)

(assert (= bs!1370640 (and b!5804941 d!1828176)))

(declare-fun lambda!316755 () Int)

(assert (=> bs!1370640 (not (= lambda!316755 lambda!316671))))

(declare-fun bs!1370641 () Bool)

(assert (= bs!1370641 (and b!5804941 d!1828196)))

(assert (=> bs!1370641 (not (= lambda!316755 lambda!316679))))

(declare-fun bs!1370642 () Bool)

(assert (= bs!1370642 (and b!5804941 b!5803746)))

(assert (=> bs!1370642 (not (= lambda!316755 lambda!316620))))

(declare-fun bs!1370643 () Bool)

(assert (= bs!1370643 (and b!5804941 b!5804034)))

(assert (=> bs!1370643 (= (and (= (regOne!32144 (regTwo!32145 r!7292)) (regOne!32144 r!7292)) (= (regTwo!32144 (regTwo!32145 r!7292)) (regTwo!32144 r!7292))) (= lambda!316755 lambda!316659))))

(declare-fun bs!1370644 () Bool)

(assert (= bs!1370644 (and b!5804941 d!1828174)))

(assert (=> bs!1370644 (= (and (= (regOne!32144 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32144 (regTwo!32145 r!7292)) r!7292)) (= lambda!316755 lambda!316666))))

(declare-fun bs!1370645 () Bool)

(assert (= bs!1370645 (and b!5804941 b!5804946)))

(assert (=> bs!1370645 (not (= lambda!316755 lambda!316754))))

(assert (=> bs!1370642 (not (= lambda!316755 lambda!316619))))

(assert (=> bs!1370640 (not (= lambda!316755 lambda!316672))))

(declare-fun bs!1370646 () Bool)

(assert (= bs!1370646 (and b!5804941 d!1828356)))

(assert (=> bs!1370646 (not (= lambda!316755 lambda!316730))))

(declare-fun bs!1370647 () Bool)

(assert (= bs!1370647 (and b!5804941 b!5804781)))

(assert (=> bs!1370647 (= (and (= (regOne!32144 (regTwo!32145 r!7292)) (regOne!32144 (regOne!32145 r!7292))) (= (regTwo!32144 (regTwo!32145 r!7292)) (regTwo!32144 (regOne!32145 r!7292)))) (= lambda!316755 lambda!316738))))

(declare-fun bs!1370648 () Bool)

(assert (= bs!1370648 (and b!5804941 b!5804786)))

(assert (=> bs!1370648 (not (= lambda!316755 lambda!316737))))

(assert (=> bs!1370644 (not (= lambda!316755 lambda!316665))))

(declare-fun bs!1370649 () Bool)

(assert (= bs!1370649 (and b!5804941 d!1828444)))

(assert (=> bs!1370649 (= (and (= (regOne!32144 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32144 (regTwo!32145 r!7292)) r!7292)) (= lambda!316755 lambda!316748))))

(declare-fun bs!1370650 () Bool)

(assert (= bs!1370650 (and b!5804941 d!1828480)))

(assert (=> bs!1370650 (not (= lambda!316755 lambda!316751))))

(declare-fun bs!1370651 () Bool)

(assert (= bs!1370651 (and b!5804941 b!5804039)))

(assert (=> bs!1370651 (not (= lambda!316755 lambda!316658))))

(assert (=> bs!1370649 (not (= lambda!316755 lambda!316747))))

(assert (=> bs!1370646 (not (= lambda!316755 lambda!316729))))

(assert (=> bs!1370642 (= (and (= (regOne!32144 (regTwo!32145 r!7292)) (reg!16145 r!7292)) (= (regTwo!32144 (regTwo!32145 r!7292)) r!7292)) (= lambda!316755 lambda!316621))))

(assert (=> b!5804941 true))

(assert (=> b!5804941 true))

(declare-fun b!5804938 () Bool)

(declare-fun c!1028355 () Bool)

(assert (=> b!5804938 (= c!1028355 (is-ElementMatch!15816 (regTwo!32145 r!7292)))))

(declare-fun e!3563649 () Bool)

(declare-fun e!3563650 () Bool)

(assert (=> b!5804938 (= e!3563649 e!3563650)))

(declare-fun call!453123 () Bool)

(declare-fun bm!453117 () Bool)

(declare-fun c!1028353 () Bool)

(assert (=> bm!453117 (= call!453123 (Exists!2916 (ite c!1028353 lambda!316754 lambda!316755)))))

(declare-fun b!5804939 () Bool)

(declare-fun e!3563652 () Bool)

(declare-fun e!3563651 () Bool)

(assert (=> b!5804939 (= e!3563652 e!3563651)))

(declare-fun res!2447898 () Bool)

(assert (=> b!5804939 (= res!2447898 (matchRSpec!2919 (regOne!32145 (regTwo!32145 r!7292)) s!2326))))

(assert (=> b!5804939 (=> res!2447898 e!3563651)))

(declare-fun b!5804940 () Bool)

(declare-fun e!3563653 () Bool)

(declare-fun call!453122 () Bool)

(assert (=> b!5804940 (= e!3563653 call!453122)))

(declare-fun b!5804942 () Bool)

(assert (=> b!5804942 (= e!3563653 e!3563649)))

(declare-fun res!2447899 () Bool)

(assert (=> b!5804942 (= res!2447899 (not (is-EmptyLang!15816 (regTwo!32145 r!7292))))))

(assert (=> b!5804942 (=> (not res!2447899) (not e!3563649))))

(declare-fun b!5804943 () Bool)

(declare-fun c!1028354 () Bool)

(assert (=> b!5804943 (= c!1028354 (is-Union!15816 (regTwo!32145 r!7292)))))

(assert (=> b!5804943 (= e!3563650 e!3563652)))

(declare-fun b!5804944 () Bool)

(declare-fun e!3563654 () Bool)

(assert (=> b!5804944 (= e!3563652 e!3563654)))

(assert (=> b!5804944 (= c!1028353 (is-Star!15816 (regTwo!32145 r!7292)))))

(declare-fun b!5804945 () Bool)

(declare-fun res!2447900 () Bool)

(declare-fun e!3563655 () Bool)

(assert (=> b!5804945 (=> res!2447900 e!3563655)))

(assert (=> b!5804945 (= res!2447900 call!453122)))

(assert (=> b!5804945 (= e!3563654 e!3563655)))

(assert (=> b!5804946 (= e!3563655 call!453123)))

(declare-fun b!5804947 () Bool)

(assert (=> b!5804947 (= e!3563650 (= s!2326 (Cons!63625 (c!1028045 (regTwo!32145 r!7292)) Nil!63625)))))

(declare-fun d!1828496 () Bool)

(declare-fun c!1028352 () Bool)

(assert (=> d!1828496 (= c!1028352 (is-EmptyExpr!15816 (regTwo!32145 r!7292)))))

(assert (=> d!1828496 (= (matchRSpec!2919 (regTwo!32145 r!7292) s!2326) e!3563653)))

(assert (=> b!5804941 (= e!3563654 call!453123)))

(declare-fun bm!453118 () Bool)

(assert (=> bm!453118 (= call!453122 (isEmpty!35534 s!2326))))

(declare-fun b!5804948 () Bool)

(assert (=> b!5804948 (= e!3563651 (matchRSpec!2919 (regTwo!32145 (regTwo!32145 r!7292)) s!2326))))

(assert (= (and d!1828496 c!1028352) b!5804940))

(assert (= (and d!1828496 (not c!1028352)) b!5804942))

(assert (= (and b!5804942 res!2447899) b!5804938))

(assert (= (and b!5804938 c!1028355) b!5804947))

(assert (= (and b!5804938 (not c!1028355)) b!5804943))

(assert (= (and b!5804943 c!1028354) b!5804939))

(assert (= (and b!5804943 (not c!1028354)) b!5804944))

(assert (= (and b!5804939 (not res!2447898)) b!5804948))

(assert (= (and b!5804944 c!1028353) b!5804945))

(assert (= (and b!5804944 (not c!1028353)) b!5804941))

(assert (= (and b!5804945 (not res!2447900)) b!5804946))

(assert (= (or b!5804946 b!5804941) bm!453117))

(assert (= (or b!5804940 b!5804945) bm!453118))

(declare-fun m!6744666 () Bool)

(assert (=> bm!453117 m!6744666))

(declare-fun m!6744668 () Bool)

(assert (=> b!5804939 m!6744668))

(assert (=> bm!453118 m!6743648))

(declare-fun m!6744670 () Bool)

(assert (=> b!5804948 m!6744670))

(assert (=> b!5804041 d!1828496))

(declare-fun d!1828498 () Bool)

(declare-fun c!1028358 () Bool)

(assert (=> d!1828498 (= c!1028358 (is-Nil!63624 lt!2298585))))

(declare-fun e!3563658 () (Set Context!10400))

(assert (=> d!1828498 (= (content!11645 lt!2298585) e!3563658)))

(declare-fun b!5804953 () Bool)

(assert (=> b!5804953 (= e!3563658 (as set.empty (Set Context!10400)))))

(declare-fun b!5804954 () Bool)

(assert (=> b!5804954 (= e!3563658 (set.union (set.insert (h!70072 lt!2298585) (as set.empty (Set Context!10400))) (content!11645 (t!377099 lt!2298585))))))

(assert (= (and d!1828498 c!1028358) b!5804953))

(assert (= (and d!1828498 (not c!1028358)) b!5804954))

(declare-fun m!6744672 () Bool)

(assert (=> b!5804954 m!6744672))

(declare-fun m!6744674 () Bool)

(assert (=> b!5804954 m!6744674))

(assert (=> b!5804265 d!1828498))

(assert (=> b!5804078 d!1828366))

(declare-fun d!1828500 () Bool)

(assert (=> d!1828500 true))

(assert (=> d!1828500 true))

(declare-fun res!2447901 () Bool)

(assert (=> d!1828500 (= (choose!44046 lambda!316620) res!2447901)))

(assert (=> d!1828186 d!1828500))

(declare-fun b!5804955 () Bool)

(declare-fun e!3563659 () Bool)

(declare-fun call!453125 () Bool)

(assert (=> b!5804955 (= e!3563659 call!453125)))

(declare-fun b!5804956 () Bool)

(declare-fun e!3563660 () Bool)

(assert (=> b!5804956 (= e!3563660 e!3563659)))

(declare-fun res!2447905 () Bool)

(assert (=> b!5804956 (= res!2447905 (not (nullable!5842 (reg!16145 lt!2298586))))))

(assert (=> b!5804956 (=> (not res!2447905) (not e!3563659))))

(declare-fun b!5804957 () Bool)

(declare-fun e!3563661 () Bool)

(declare-fun e!3563663 () Bool)

(assert (=> b!5804957 (= e!3563661 e!3563663)))

(declare-fun res!2447904 () Bool)

(assert (=> b!5804957 (=> (not res!2447904) (not e!3563663))))

(declare-fun call!453126 () Bool)

(assert (=> b!5804957 (= res!2447904 call!453126)))

(declare-fun bm!453120 () Bool)

(declare-fun call!453124 () Bool)

(declare-fun c!1028359 () Bool)

(assert (=> bm!453120 (= call!453124 (validRegex!7552 (ite c!1028359 (regTwo!32145 lt!2298586) (regTwo!32144 lt!2298586))))))

(declare-fun b!5804958 () Bool)

(declare-fun e!3563665 () Bool)

(assert (=> b!5804958 (= e!3563660 e!3563665)))

(assert (=> b!5804958 (= c!1028359 (is-Union!15816 lt!2298586))))

(declare-fun bm!453121 () Bool)

(assert (=> bm!453121 (= call!453126 call!453125)))

(declare-fun b!5804959 () Bool)

(declare-fun res!2447903 () Bool)

(assert (=> b!5804959 (=> res!2447903 e!3563661)))

(assert (=> b!5804959 (= res!2447903 (not (is-Concat!24661 lt!2298586)))))

(assert (=> b!5804959 (= e!3563665 e!3563661)))

(declare-fun b!5804960 () Bool)

(declare-fun e!3563664 () Bool)

(assert (=> b!5804960 (= e!3563664 call!453124)))

(declare-fun b!5804961 () Bool)

(assert (=> b!5804961 (= e!3563663 call!453124)))

(declare-fun d!1828502 () Bool)

(declare-fun res!2447902 () Bool)

(declare-fun e!3563662 () Bool)

(assert (=> d!1828502 (=> res!2447902 e!3563662)))

(assert (=> d!1828502 (= res!2447902 (is-ElementMatch!15816 lt!2298586))))

(assert (=> d!1828502 (= (validRegex!7552 lt!2298586) e!3563662)))

(declare-fun bm!453119 () Bool)

(declare-fun c!1028360 () Bool)

(assert (=> bm!453119 (= call!453125 (validRegex!7552 (ite c!1028360 (reg!16145 lt!2298586) (ite c!1028359 (regOne!32145 lt!2298586) (regOne!32144 lt!2298586)))))))

(declare-fun b!5804962 () Bool)

(declare-fun res!2447906 () Bool)

(assert (=> b!5804962 (=> (not res!2447906) (not e!3563664))))

(assert (=> b!5804962 (= res!2447906 call!453126)))

(assert (=> b!5804962 (= e!3563665 e!3563664)))

(declare-fun b!5804963 () Bool)

(assert (=> b!5804963 (= e!3563662 e!3563660)))

(assert (=> b!5804963 (= c!1028360 (is-Star!15816 lt!2298586))))

(assert (= (and d!1828502 (not res!2447902)) b!5804963))

(assert (= (and b!5804963 c!1028360) b!5804956))

(assert (= (and b!5804963 (not c!1028360)) b!5804958))

(assert (= (and b!5804956 res!2447905) b!5804955))

(assert (= (and b!5804958 c!1028359) b!5804962))

(assert (= (and b!5804958 (not c!1028359)) b!5804959))

(assert (= (and b!5804962 res!2447906) b!5804960))

(assert (= (and b!5804959 (not res!2447903)) b!5804957))

(assert (= (and b!5804957 res!2447904) b!5804961))

(assert (= (or b!5804960 b!5804961) bm!453120))

(assert (= (or b!5804962 b!5804957) bm!453121))

(assert (= (or b!5804955 bm!453121) bm!453119))

(declare-fun m!6744676 () Bool)

(assert (=> b!5804956 m!6744676))

(declare-fun m!6744678 () Bool)

(assert (=> bm!453120 m!6744678))

(declare-fun m!6744680 () Bool)

(assert (=> bm!453119 m!6744680))

(assert (=> d!1828208 d!1828502))

(declare-fun bs!1370652 () Bool)

(declare-fun d!1828504 () Bool)

(assert (= bs!1370652 (and d!1828504 d!1828346)))

(declare-fun lambda!316756 () Int)

(assert (=> bs!1370652 (= lambda!316756 lambda!316723)))

(declare-fun bs!1370653 () Bool)

(assert (= bs!1370653 (and d!1828504 d!1828202)))

(assert (=> bs!1370653 (= lambda!316756 lambda!316688)))

(declare-fun bs!1370654 () Bool)

(assert (= bs!1370654 (and d!1828504 d!1828488)))

(assert (=> bs!1370654 (= lambda!316756 lambda!316753)))

(declare-fun bs!1370655 () Bool)

(assert (= bs!1370655 (and d!1828504 d!1828200)))

(assert (=> bs!1370655 (= lambda!316756 lambda!316685)))

(declare-fun bs!1370656 () Bool)

(assert (= bs!1370656 (and d!1828504 d!1828438)))

(assert (=> bs!1370656 (= lambda!316756 lambda!316742)))

(declare-fun bs!1370657 () Bool)

(assert (= bs!1370657 (and d!1828504 d!1828386)))

(assert (=> bs!1370657 (= lambda!316756 lambda!316735)))

(declare-fun bs!1370658 () Bool)

(assert (= bs!1370658 (and d!1828504 d!1828112)))

(assert (=> bs!1370658 (= lambda!316756 lambda!316647)))

(declare-fun bs!1370659 () Bool)

(assert (= bs!1370659 (and d!1828504 d!1828400)))

(assert (=> bs!1370659 (= lambda!316756 lambda!316736)))

(declare-fun bs!1370660 () Bool)

(assert (= bs!1370660 (and d!1828504 d!1828198)))

(assert (=> bs!1370660 (= lambda!316756 lambda!316680)))

(declare-fun bs!1370661 () Bool)

(assert (= bs!1370661 (and d!1828504 d!1828420)))

(assert (=> bs!1370661 (= lambda!316756 lambda!316740)))

(declare-fun bs!1370662 () Bool)

(assert (= bs!1370662 (and d!1828504 d!1828136)))

(assert (=> bs!1370662 (= lambda!316756 lambda!316653)))

(declare-fun bs!1370663 () Bool)

(assert (= bs!1370663 (and d!1828504 d!1828486)))

(assert (=> bs!1370663 (= lambda!316756 lambda!316752)))

(declare-fun bs!1370664 () Bool)

(assert (= bs!1370664 (and d!1828504 d!1828348)))

(assert (=> bs!1370664 (= lambda!316756 lambda!316724)))

(declare-fun b!5804964 () Bool)

(declare-fun e!3563669 () Bool)

(declare-fun lt!2298638 () Regex!15816)

(assert (=> b!5804964 (= e!3563669 (= lt!2298638 (head!12244 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624)))))))

(declare-fun b!5804966 () Bool)

(declare-fun e!3563668 () Regex!15816)

(assert (=> b!5804966 (= e!3563668 (Union!15816 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))) (generalisedUnion!1679 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))))

(declare-fun b!5804967 () Bool)

(declare-fun e!3563670 () Regex!15816)

(assert (=> b!5804967 (= e!3563670 e!3563668)))

(declare-fun c!1028363 () Bool)

(assert (=> b!5804967 (= c!1028363 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))

(declare-fun b!5804968 () Bool)

(assert (=> b!5804968 (= e!3563668 EmptyLang!15816)))

(declare-fun b!5804969 () Bool)

(assert (=> b!5804969 (= e!3563670 (h!70071 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))

(declare-fun b!5804970 () Bool)

(assert (=> b!5804970 (= e!3563669 (isUnion!729 lt!2298638))))

(declare-fun e!3563666 () Bool)

(assert (=> d!1828504 e!3563666))

(declare-fun res!2447908 () Bool)

(assert (=> d!1828504 (=> (not res!2447908) (not e!3563666))))

(assert (=> d!1828504 (= res!2447908 (validRegex!7552 lt!2298638))))

(assert (=> d!1828504 (= lt!2298638 e!3563670)))

(declare-fun c!1028361 () Bool)

(declare-fun e!3563667 () Bool)

(assert (=> d!1828504 (= c!1028361 e!3563667)))

(declare-fun res!2447907 () Bool)

(assert (=> d!1828504 (=> (not res!2447907) (not e!3563667))))

(assert (=> d!1828504 (= res!2447907 (is-Cons!63623 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))

(assert (=> d!1828504 (forall!14924 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624)) lambda!316756)))

(assert (=> d!1828504 (= (generalisedUnion!1679 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))) lt!2298638)))

(declare-fun b!5804965 () Bool)

(declare-fun e!3563671 () Bool)

(assert (=> b!5804965 (= e!3563666 e!3563671)))

(declare-fun c!1028362 () Bool)

(assert (=> b!5804965 (= c!1028362 (isEmpty!35537 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624))))))

(declare-fun b!5804971 () Bool)

(assert (=> b!5804971 (= e!3563671 (isEmptyLang!1299 lt!2298638))))

(declare-fun b!5804972 () Bool)

(assert (=> b!5804972 (= e!3563671 e!3563669)))

(declare-fun c!1028364 () Bool)

(assert (=> b!5804972 (= c!1028364 (isEmpty!35537 (tail!11339 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624)))))))

(declare-fun b!5804973 () Bool)

(assert (=> b!5804973 (= e!3563667 (isEmpty!35537 (t!377098 (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624)))))))

(assert (= (and d!1828504 res!2447907) b!5804973))

(assert (= (and d!1828504 c!1028361) b!5804969))

(assert (= (and d!1828504 (not c!1028361)) b!5804967))

(assert (= (and b!5804967 c!1028363) b!5804966))

(assert (= (and b!5804967 (not c!1028363)) b!5804968))

(assert (= (and d!1828504 res!2447908) b!5804965))

(assert (= (and b!5804965 c!1028362) b!5804971))

(assert (= (and b!5804965 (not c!1028362)) b!5804972))

(assert (= (and b!5804972 c!1028364) b!5804964))

(assert (= (and b!5804972 (not c!1028364)) b!5804970))

(declare-fun m!6744682 () Bool)

(assert (=> d!1828504 m!6744682))

(assert (=> d!1828504 m!6744042))

(declare-fun m!6744684 () Bool)

(assert (=> d!1828504 m!6744684))

(assert (=> b!5804964 m!6744042))

(declare-fun m!6744686 () Bool)

(assert (=> b!5804964 m!6744686))

(assert (=> b!5804965 m!6744042))

(declare-fun m!6744688 () Bool)

(assert (=> b!5804965 m!6744688))

(declare-fun m!6744690 () Bool)

(assert (=> b!5804973 m!6744690))

(declare-fun m!6744692 () Bool)

(assert (=> b!5804971 m!6744692))

(declare-fun m!6744694 () Bool)

(assert (=> b!5804970 m!6744694))

(assert (=> b!5804972 m!6744042))

(declare-fun m!6744696 () Bool)

(assert (=> b!5804972 m!6744696))

(assert (=> b!5804972 m!6744696))

(declare-fun m!6744698 () Bool)

(assert (=> b!5804972 m!6744698))

(declare-fun m!6744700 () Bool)

(assert (=> b!5804966 m!6744700))

(assert (=> d!1828208 d!1828504))

(declare-fun bs!1370665 () Bool)

(declare-fun d!1828506 () Bool)

(assert (= bs!1370665 (and d!1828506 d!1828346)))

(declare-fun lambda!316757 () Int)

(assert (=> bs!1370665 (= lambda!316757 lambda!316723)))

(declare-fun bs!1370666 () Bool)

(assert (= bs!1370666 (and d!1828506 d!1828202)))

(assert (=> bs!1370666 (= lambda!316757 lambda!316688)))

(declare-fun bs!1370667 () Bool)

(assert (= bs!1370667 (and d!1828506 d!1828488)))

(assert (=> bs!1370667 (= lambda!316757 lambda!316753)))

(declare-fun bs!1370668 () Bool)

(assert (= bs!1370668 (and d!1828506 d!1828200)))

(assert (=> bs!1370668 (= lambda!316757 lambda!316685)))

(declare-fun bs!1370669 () Bool)

(assert (= bs!1370669 (and d!1828506 d!1828504)))

(assert (=> bs!1370669 (= lambda!316757 lambda!316756)))

(declare-fun bs!1370670 () Bool)

(assert (= bs!1370670 (and d!1828506 d!1828438)))

(assert (=> bs!1370670 (= lambda!316757 lambda!316742)))

(declare-fun bs!1370671 () Bool)

(assert (= bs!1370671 (and d!1828506 d!1828386)))

(assert (=> bs!1370671 (= lambda!316757 lambda!316735)))

(declare-fun bs!1370672 () Bool)

(assert (= bs!1370672 (and d!1828506 d!1828112)))

(assert (=> bs!1370672 (= lambda!316757 lambda!316647)))

(declare-fun bs!1370673 () Bool)

(assert (= bs!1370673 (and d!1828506 d!1828400)))

(assert (=> bs!1370673 (= lambda!316757 lambda!316736)))

(declare-fun bs!1370674 () Bool)

(assert (= bs!1370674 (and d!1828506 d!1828198)))

(assert (=> bs!1370674 (= lambda!316757 lambda!316680)))

(declare-fun bs!1370675 () Bool)

(assert (= bs!1370675 (and d!1828506 d!1828420)))

(assert (=> bs!1370675 (= lambda!316757 lambda!316740)))

(declare-fun bs!1370676 () Bool)

(assert (= bs!1370676 (and d!1828506 d!1828136)))

(assert (=> bs!1370676 (= lambda!316757 lambda!316653)))

(declare-fun bs!1370677 () Bool)

(assert (= bs!1370677 (and d!1828506 d!1828486)))

(assert (=> bs!1370677 (= lambda!316757 lambda!316752)))

(declare-fun bs!1370678 () Bool)

(assert (= bs!1370678 (and d!1828506 d!1828348)))

(assert (=> bs!1370678 (= lambda!316757 lambda!316724)))

(declare-fun lt!2298639 () List!63747)

(assert (=> d!1828506 (forall!14924 lt!2298639 lambda!316757)))

(declare-fun e!3563672 () List!63747)

(assert (=> d!1828506 (= lt!2298639 e!3563672)))

(declare-fun c!1028365 () Bool)

(assert (=> d!1828506 (= c!1028365 (is-Cons!63624 (Cons!63624 lt!2298442 Nil!63624)))))

(assert (=> d!1828506 (= (unfocusZipperList!1244 (Cons!63624 lt!2298442 Nil!63624)) lt!2298639)))

(declare-fun b!5804974 () Bool)

(assert (=> b!5804974 (= e!3563672 (Cons!63623 (generalisedConcat!1431 (exprs!5700 (h!70072 (Cons!63624 lt!2298442 Nil!63624)))) (unfocusZipperList!1244 (t!377099 (Cons!63624 lt!2298442 Nil!63624)))))))

(declare-fun b!5804975 () Bool)

(assert (=> b!5804975 (= e!3563672 Nil!63623)))

(assert (= (and d!1828506 c!1028365) b!5804974))

(assert (= (and d!1828506 (not c!1028365)) b!5804975))

(declare-fun m!6744702 () Bool)

(assert (=> d!1828506 m!6744702))

(declare-fun m!6744704 () Bool)

(assert (=> b!5804974 m!6744704))

(declare-fun m!6744706 () Bool)

(assert (=> b!5804974 m!6744706))

(assert (=> d!1828208 d!1828506))

(declare-fun b!5804985 () Bool)

(declare-fun e!3563677 () List!63749)

(assert (=> b!5804985 (= e!3563677 (Cons!63625 (h!70073 (_1!36216 (get!21962 lt!2298571))) (++!14028 (t!377100 (_1!36216 (get!21962 lt!2298571))) (_2!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804986 () Bool)

(declare-fun res!2447913 () Bool)

(declare-fun e!3563678 () Bool)

(assert (=> b!5804986 (=> (not res!2447913) (not e!3563678))))

(declare-fun lt!2298642 () List!63749)

(declare-fun size!40101 (List!63749) Int)

(assert (=> b!5804986 (= res!2447913 (= (size!40101 lt!2298642) (+ (size!40101 (_1!36216 (get!21962 lt!2298571))) (size!40101 (_2!36216 (get!21962 lt!2298571))))))))

(declare-fun d!1828508 () Bool)

(assert (=> d!1828508 e!3563678))

(declare-fun res!2447914 () Bool)

(assert (=> d!1828508 (=> (not res!2447914) (not e!3563678))))

(declare-fun content!11647 (List!63749) (Set C!31902))

(assert (=> d!1828508 (= res!2447914 (= (content!11647 lt!2298642) (set.union (content!11647 (_1!36216 (get!21962 lt!2298571))) (content!11647 (_2!36216 (get!21962 lt!2298571))))))))

(assert (=> d!1828508 (= lt!2298642 e!3563677)))

(declare-fun c!1028368 () Bool)

(assert (=> d!1828508 (= c!1028368 (is-Nil!63625 (_1!36216 (get!21962 lt!2298571))))))

(assert (=> d!1828508 (= (++!14028 (_1!36216 (get!21962 lt!2298571)) (_2!36216 (get!21962 lt!2298571))) lt!2298642)))

(declare-fun b!5804987 () Bool)

(assert (=> b!5804987 (= e!3563678 (or (not (= (_2!36216 (get!21962 lt!2298571)) Nil!63625)) (= lt!2298642 (_1!36216 (get!21962 lt!2298571)))))))

(declare-fun b!5804984 () Bool)

(assert (=> b!5804984 (= e!3563677 (_2!36216 (get!21962 lt!2298571)))))

(assert (= (and d!1828508 c!1028368) b!5804984))

(assert (= (and d!1828508 (not c!1028368)) b!5804985))

(assert (= (and d!1828508 res!2447914) b!5804986))

(assert (= (and b!5804986 res!2447913) b!5804987))

(declare-fun m!6744708 () Bool)

(assert (=> b!5804985 m!6744708))

(declare-fun m!6744710 () Bool)

(assert (=> b!5804986 m!6744710))

(declare-fun m!6744712 () Bool)

(assert (=> b!5804986 m!6744712))

(declare-fun m!6744714 () Bool)

(assert (=> b!5804986 m!6744714))

(declare-fun m!6744716 () Bool)

(assert (=> d!1828508 m!6744716))

(declare-fun m!6744718 () Bool)

(assert (=> d!1828508 m!6744718))

(declare-fun m!6744720 () Bool)

(assert (=> d!1828508 m!6744720))

(assert (=> b!5804200 d!1828508))

(assert (=> b!5804200 d!1828328))

(declare-fun d!1828510 () Bool)

(assert (=> d!1828510 (= (nullable!5842 (h!70071 (exprs!5700 (h!70072 zl!343)))) (nullableFct!1873 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun bs!1370679 () Bool)

(assert (= bs!1370679 d!1828510))

(declare-fun m!6744722 () Bool)

(assert (=> bs!1370679 m!6744722))

(assert (=> b!5803909 d!1828510))

(declare-fun b!5804988 () Bool)

(declare-fun e!3563684 () Bool)

(declare-fun e!3563680 () Bool)

(assert (=> b!5804988 (= e!3563684 e!3563680)))

(declare-fun res!2447921 () Bool)

(assert (=> b!5804988 (=> res!2447921 e!3563680)))

(declare-fun call!453127 () Bool)

(assert (=> b!5804988 (= res!2447921 call!453127)))

(declare-fun d!1828512 () Bool)

(declare-fun e!3563683 () Bool)

(assert (=> d!1828512 e!3563683))

(declare-fun c!1028371 () Bool)

(assert (=> d!1828512 (= c!1028371 (is-EmptyExpr!15816 (derivativeStep!4585 r!7292 (head!12245 s!2326))))))

(declare-fun lt!2298643 () Bool)

(declare-fun e!3563682 () Bool)

(assert (=> d!1828512 (= lt!2298643 e!3563682)))

(declare-fun c!1028370 () Bool)

(assert (=> d!1828512 (= c!1028370 (isEmpty!35534 (tail!11340 s!2326)))))

(assert (=> d!1828512 (validRegex!7552 (derivativeStep!4585 r!7292 (head!12245 s!2326)))))

(assert (=> d!1828512 (= (matchR!8001 (derivativeStep!4585 r!7292 (head!12245 s!2326)) (tail!11340 s!2326)) lt!2298643)))

(declare-fun b!5804989 () Bool)

(assert (=> b!5804989 (= e!3563683 (= lt!2298643 call!453127))))

(declare-fun b!5804990 () Bool)

(declare-fun res!2447917 () Bool)

(declare-fun e!3563685 () Bool)

(assert (=> b!5804990 (=> res!2447917 e!3563685)))

(declare-fun e!3563679 () Bool)

(assert (=> b!5804990 (= res!2447917 e!3563679)))

(declare-fun res!2447920 () Bool)

(assert (=> b!5804990 (=> (not res!2447920) (not e!3563679))))

(assert (=> b!5804990 (= res!2447920 lt!2298643)))

(declare-fun b!5804991 () Bool)

(assert (=> b!5804991 (= e!3563680 (not (= (head!12245 (tail!11340 s!2326)) (c!1028045 (derivativeStep!4585 r!7292 (head!12245 s!2326))))))))

(declare-fun bm!453122 () Bool)

(assert (=> bm!453122 (= call!453127 (isEmpty!35534 (tail!11340 s!2326)))))

(declare-fun b!5804992 () Bool)

(assert (=> b!5804992 (= e!3563679 (= (head!12245 (tail!11340 s!2326)) (c!1028045 (derivativeStep!4585 r!7292 (head!12245 s!2326)))))))

(declare-fun b!5804993 () Bool)

(assert (=> b!5804993 (= e!3563682 (nullable!5842 (derivativeStep!4585 r!7292 (head!12245 s!2326))))))

(declare-fun b!5804994 () Bool)

(assert (=> b!5804994 (= e!3563682 (matchR!8001 (derivativeStep!4585 (derivativeStep!4585 r!7292 (head!12245 s!2326)) (head!12245 (tail!11340 s!2326))) (tail!11340 (tail!11340 s!2326))))))

(declare-fun b!5804995 () Bool)

(declare-fun res!2447915 () Bool)

(assert (=> b!5804995 (=> (not res!2447915) (not e!3563679))))

(assert (=> b!5804995 (= res!2447915 (isEmpty!35534 (tail!11340 (tail!11340 s!2326))))))

(declare-fun b!5804996 () Bool)

(assert (=> b!5804996 (= e!3563685 e!3563684)))

(declare-fun res!2447922 () Bool)

(assert (=> b!5804996 (=> (not res!2447922) (not e!3563684))))

(assert (=> b!5804996 (= res!2447922 (not lt!2298643))))

(declare-fun b!5804997 () Bool)

(declare-fun e!3563681 () Bool)

(assert (=> b!5804997 (= e!3563681 (not lt!2298643))))

(declare-fun b!5804998 () Bool)

(declare-fun res!2447919 () Bool)

(assert (=> b!5804998 (=> res!2447919 e!3563685)))

(assert (=> b!5804998 (= res!2447919 (not (is-ElementMatch!15816 (derivativeStep!4585 r!7292 (head!12245 s!2326)))))))

(assert (=> b!5804998 (= e!3563681 e!3563685)))

(declare-fun b!5804999 () Bool)

(declare-fun res!2447918 () Bool)

(assert (=> b!5804999 (=> (not res!2447918) (not e!3563679))))

(assert (=> b!5804999 (= res!2447918 (not call!453127))))

(declare-fun b!5805000 () Bool)

(assert (=> b!5805000 (= e!3563683 e!3563681)))

(declare-fun c!1028369 () Bool)

(assert (=> b!5805000 (= c!1028369 (is-EmptyLang!15816 (derivativeStep!4585 r!7292 (head!12245 s!2326))))))

(declare-fun b!5805001 () Bool)

(declare-fun res!2447916 () Bool)

(assert (=> b!5805001 (=> res!2447916 e!3563680)))

(assert (=> b!5805001 (= res!2447916 (not (isEmpty!35534 (tail!11340 (tail!11340 s!2326)))))))

(assert (= (and d!1828512 c!1028370) b!5804993))

(assert (= (and d!1828512 (not c!1028370)) b!5804994))

(assert (= (and d!1828512 c!1028371) b!5804989))

(assert (= (and d!1828512 (not c!1028371)) b!5805000))

(assert (= (and b!5805000 c!1028369) b!5804997))

(assert (= (and b!5805000 (not c!1028369)) b!5804998))

(assert (= (and b!5804998 (not res!2447919)) b!5804990))

(assert (= (and b!5804990 res!2447920) b!5804999))

(assert (= (and b!5804999 res!2447918) b!5804995))

(assert (= (and b!5804995 res!2447915) b!5804992))

(assert (= (and b!5804990 (not res!2447917)) b!5804996))

(assert (= (and b!5804996 res!2447922) b!5804988))

(assert (= (and b!5804988 (not res!2447921)) b!5805001))

(assert (= (and b!5805001 (not res!2447916)) b!5804991))

(assert (= (or b!5804989 b!5804988 b!5804999) bm!453122))

(assert (=> b!5804994 m!6743906))

(assert (=> b!5804994 m!6744488))

(assert (=> b!5804994 m!6743904))

(assert (=> b!5804994 m!6744488))

(declare-fun m!6744724 () Bool)

(assert (=> b!5804994 m!6744724))

(assert (=> b!5804994 m!6743906))

(assert (=> b!5804994 m!6744492))

(assert (=> b!5804994 m!6744724))

(assert (=> b!5804994 m!6744492))

(declare-fun m!6744726 () Bool)

(assert (=> b!5804994 m!6744726))

(assert (=> b!5805001 m!6743906))

(assert (=> b!5805001 m!6744492))

(assert (=> b!5805001 m!6744492))

(declare-fun m!6744728 () Bool)

(assert (=> b!5805001 m!6744728))

(assert (=> b!5804991 m!6743906))

(assert (=> b!5804991 m!6744488))

(assert (=> b!5804992 m!6743906))

(assert (=> b!5804992 m!6744488))

(assert (=> bm!453122 m!6743906))

(assert (=> bm!453122 m!6743910))

(assert (=> d!1828512 m!6743906))

(assert (=> d!1828512 m!6743910))

(assert (=> d!1828512 m!6743904))

(declare-fun m!6744730 () Bool)

(assert (=> d!1828512 m!6744730))

(assert (=> b!5804995 m!6743906))

(assert (=> b!5804995 m!6744492))

(assert (=> b!5804995 m!6744492))

(assert (=> b!5804995 m!6744728))

(assert (=> b!5804993 m!6743904))

(declare-fun m!6744732 () Bool)

(assert (=> b!5804993 m!6744732))

(assert (=> b!5804081 d!1828512))

(declare-fun c!1028383 () Bool)

(declare-fun call!453138 () Regex!15816)

(declare-fun bm!453131 () Bool)

(assert (=> bm!453131 (= call!453138 (derivativeStep!4585 (ite c!1028383 (regOne!32145 r!7292) (regOne!32144 r!7292)) (head!12245 s!2326)))))

(declare-fun bm!453132 () Bool)

(declare-fun call!453137 () Regex!15816)

(declare-fun call!453139 () Regex!15816)

(assert (=> bm!453132 (= call!453137 call!453139)))

(declare-fun b!5805022 () Bool)

(declare-fun c!1028382 () Bool)

(assert (=> b!5805022 (= c!1028382 (nullable!5842 (regOne!32144 r!7292)))))

(declare-fun e!3563699 () Regex!15816)

(declare-fun e!3563697 () Regex!15816)

(assert (=> b!5805022 (= e!3563699 e!3563697)))

(declare-fun b!5805023 () Bool)

(assert (=> b!5805023 (= e!3563697 (Union!15816 (Concat!24661 call!453138 (regTwo!32144 r!7292)) call!453137))))

(declare-fun b!5805024 () Bool)

(declare-fun e!3563696 () Regex!15816)

(declare-fun call!453136 () Regex!15816)

(assert (=> b!5805024 (= e!3563696 (Union!15816 call!453138 call!453136))))

(declare-fun b!5805025 () Bool)

(declare-fun e!3563700 () Regex!15816)

(assert (=> b!5805025 (= e!3563700 (ite (= (head!12245 s!2326) (c!1028045 r!7292)) EmptyExpr!15816 EmptyLang!15816))))

(declare-fun b!5805026 () Bool)

(declare-fun e!3563698 () Regex!15816)

(assert (=> b!5805026 (= e!3563698 e!3563700)))

(declare-fun c!1028384 () Bool)

(assert (=> b!5805026 (= c!1028384 (is-ElementMatch!15816 r!7292))))

(declare-fun b!5805027 () Bool)

(assert (=> b!5805027 (= e!3563698 EmptyLang!15816)))

(declare-fun b!5805028 () Bool)

(assert (=> b!5805028 (= c!1028383 (is-Union!15816 r!7292))))

(assert (=> b!5805028 (= e!3563700 e!3563696)))

(declare-fun b!5805029 () Bool)

(assert (=> b!5805029 (= e!3563699 (Concat!24661 call!453139 r!7292))))

(declare-fun b!5805030 () Bool)

(assert (=> b!5805030 (= e!3563696 e!3563699)))

(declare-fun c!1028386 () Bool)

(assert (=> b!5805030 (= c!1028386 (is-Star!15816 r!7292))))

(declare-fun b!5805031 () Bool)

(assert (=> b!5805031 (= e!3563697 (Union!15816 (Concat!24661 call!453137 (regTwo!32144 r!7292)) EmptyLang!15816))))

(declare-fun bm!453134 () Bool)

(assert (=> bm!453134 (= call!453139 call!453136)))

(declare-fun bm!453133 () Bool)

(assert (=> bm!453133 (= call!453136 (derivativeStep!4585 (ite c!1028383 (regTwo!32145 r!7292) (ite c!1028386 (reg!16145 r!7292) (ite c!1028382 (regTwo!32144 r!7292) (regOne!32144 r!7292)))) (head!12245 s!2326)))))

(declare-fun d!1828514 () Bool)

(declare-fun lt!2298646 () Regex!15816)

(assert (=> d!1828514 (validRegex!7552 lt!2298646)))

(assert (=> d!1828514 (= lt!2298646 e!3563698)))

(declare-fun c!1028385 () Bool)

(assert (=> d!1828514 (= c!1028385 (or (is-EmptyExpr!15816 r!7292) (is-EmptyLang!15816 r!7292)))))

(assert (=> d!1828514 (validRegex!7552 r!7292)))

(assert (=> d!1828514 (= (derivativeStep!4585 r!7292 (head!12245 s!2326)) lt!2298646)))

(assert (= (and d!1828514 c!1028385) b!5805027))

(assert (= (and d!1828514 (not c!1028385)) b!5805026))

(assert (= (and b!5805026 c!1028384) b!5805025))

(assert (= (and b!5805026 (not c!1028384)) b!5805028))

(assert (= (and b!5805028 c!1028383) b!5805024))

(assert (= (and b!5805028 (not c!1028383)) b!5805030))

(assert (= (and b!5805030 c!1028386) b!5805029))

(assert (= (and b!5805030 (not c!1028386)) b!5805022))

(assert (= (and b!5805022 c!1028382) b!5805023))

(assert (= (and b!5805022 (not c!1028382)) b!5805031))

(assert (= (or b!5805023 b!5805031) bm!453132))

(assert (= (or b!5805029 bm!453132) bm!453134))

(assert (= (or b!5805024 bm!453134) bm!453133))

(assert (= (or b!5805024 b!5805023) bm!453131))

(assert (=> bm!453131 m!6743902))

(declare-fun m!6744734 () Bool)

(assert (=> bm!453131 m!6744734))

(assert (=> b!5805022 m!6744058))

(assert (=> bm!453133 m!6743902))

(declare-fun m!6744736 () Bool)

(assert (=> bm!453133 m!6744736))

(declare-fun m!6744738 () Bool)

(assert (=> d!1828514 m!6744738))

(assert (=> d!1828514 m!6743656))

(assert (=> b!5804081 d!1828514))

(assert (=> b!5804081 d!1828366))

(assert (=> b!5804081 d!1828332))

(assert (=> d!1828164 d!1828160))

(assert (=> d!1828164 d!1828152))

(declare-fun d!1828516 () Bool)

(assert (=> d!1828516 (= (matchR!8001 r!7292 s!2326) (matchRSpec!2919 r!7292 s!2326))))

(assert (=> d!1828516 true))

(declare-fun _$88!4127 () Unit!156892)

(assert (=> d!1828516 (= (choose!44043 r!7292 s!2326) _$88!4127)))

(declare-fun bs!1370680 () Bool)

(assert (= bs!1370680 d!1828516))

(assert (=> bs!1370680 m!6743600))

(assert (=> bs!1370680 m!6743598))

(assert (=> d!1828164 d!1828516))

(assert (=> d!1828164 d!1828140))

(declare-fun d!1828518 () Bool)

(assert (=> d!1828518 (= (isConcat!813 lt!2298535) (is-Concat!24661 lt!2298535))))

(assert (=> b!5803893 d!1828518))

(declare-fun b!5805033 () Bool)

(declare-fun e!3563701 () List!63749)

(assert (=> b!5805033 (= e!3563701 (Cons!63625 (h!70073 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))) (++!14028 (t!377100 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))) (t!377100 s!2326))))))

(declare-fun b!5805034 () Bool)

(declare-fun res!2447923 () Bool)

(declare-fun e!3563702 () Bool)

(assert (=> b!5805034 (=> (not res!2447923) (not e!3563702))))

(declare-fun lt!2298647 () List!63749)

(assert (=> b!5805034 (= res!2447923 (= (size!40101 lt!2298647) (+ (size!40101 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))) (size!40101 (t!377100 s!2326)))))))

(declare-fun d!1828520 () Bool)

(assert (=> d!1828520 e!3563702))

(declare-fun res!2447924 () Bool)

(assert (=> d!1828520 (=> (not res!2447924) (not e!3563702))))

(assert (=> d!1828520 (= res!2447924 (= (content!11647 lt!2298647) (set.union (content!11647 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))) (content!11647 (t!377100 s!2326)))))))

(assert (=> d!1828520 (= lt!2298647 e!3563701)))

(declare-fun c!1028387 () Bool)

(assert (=> d!1828520 (= c!1028387 (is-Nil!63625 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))))))

(assert (=> d!1828520 (= (++!14028 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326)) lt!2298647)))

(declare-fun b!5805035 () Bool)

(assert (=> b!5805035 (= e!3563702 (or (not (= (t!377100 s!2326) Nil!63625)) (= lt!2298647 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)))))))

(declare-fun b!5805032 () Bool)

(assert (=> b!5805032 (= e!3563701 (t!377100 s!2326))))

(assert (= (and d!1828520 c!1028387) b!5805032))

(assert (= (and d!1828520 (not c!1028387)) b!5805033))

(assert (= (and d!1828520 res!2447924) b!5805034))

(assert (= (and b!5805034 res!2447923) b!5805035))

(declare-fun m!6744740 () Bool)

(assert (=> b!5805033 m!6744740))

(declare-fun m!6744742 () Bool)

(assert (=> b!5805034 m!6744742))

(assert (=> b!5805034 m!6743978))

(declare-fun m!6744744 () Bool)

(assert (=> b!5805034 m!6744744))

(declare-fun m!6744746 () Bool)

(assert (=> b!5805034 m!6744746))

(declare-fun m!6744748 () Bool)

(assert (=> d!1828520 m!6744748))

(assert (=> d!1828520 m!6743978))

(declare-fun m!6744750 () Bool)

(assert (=> d!1828520 m!6744750))

(declare-fun m!6744752 () Bool)

(assert (=> d!1828520 m!6744752))

(assert (=> b!5804205 d!1828520))

(declare-fun b!5805037 () Bool)

(declare-fun e!3563703 () List!63749)

(assert (=> b!5805037 (= e!3563703 (Cons!63625 (h!70073 Nil!63625) (++!14028 (t!377100 Nil!63625) (Cons!63625 (h!70073 s!2326) Nil!63625))))))

(declare-fun b!5805038 () Bool)

(declare-fun res!2447925 () Bool)

(declare-fun e!3563704 () Bool)

(assert (=> b!5805038 (=> (not res!2447925) (not e!3563704))))

(declare-fun lt!2298648 () List!63749)

(assert (=> b!5805038 (= res!2447925 (= (size!40101 lt!2298648) (+ (size!40101 Nil!63625) (size!40101 (Cons!63625 (h!70073 s!2326) Nil!63625)))))))

(declare-fun d!1828522 () Bool)

(assert (=> d!1828522 e!3563704))

(declare-fun res!2447926 () Bool)

(assert (=> d!1828522 (=> (not res!2447926) (not e!3563704))))

(assert (=> d!1828522 (= res!2447926 (= (content!11647 lt!2298648) (set.union (content!11647 Nil!63625) (content!11647 (Cons!63625 (h!70073 s!2326) Nil!63625)))))))

(assert (=> d!1828522 (= lt!2298648 e!3563703)))

(declare-fun c!1028388 () Bool)

(assert (=> d!1828522 (= c!1028388 (is-Nil!63625 Nil!63625))))

(assert (=> d!1828522 (= (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) lt!2298648)))

(declare-fun b!5805039 () Bool)

(assert (=> b!5805039 (= e!3563704 (or (not (= (Cons!63625 (h!70073 s!2326) Nil!63625) Nil!63625)) (= lt!2298648 Nil!63625)))))

(declare-fun b!5805036 () Bool)

(assert (=> b!5805036 (= e!3563703 (Cons!63625 (h!70073 s!2326) Nil!63625))))

(assert (= (and d!1828522 c!1028388) b!5805036))

(assert (= (and d!1828522 (not c!1028388)) b!5805037))

(assert (= (and d!1828522 res!2447926) b!5805038))

(assert (= (and b!5805038 res!2447925) b!5805039))

(declare-fun m!6744754 () Bool)

(assert (=> b!5805037 m!6744754))

(declare-fun m!6744756 () Bool)

(assert (=> b!5805038 m!6744756))

(declare-fun m!6744758 () Bool)

(assert (=> b!5805038 m!6744758))

(declare-fun m!6744760 () Bool)

(assert (=> b!5805038 m!6744760))

(declare-fun m!6744762 () Bool)

(assert (=> d!1828522 m!6744762))

(declare-fun m!6744764 () Bool)

(assert (=> d!1828522 m!6744764))

(declare-fun m!6744766 () Bool)

(assert (=> d!1828522 m!6744766))

(assert (=> b!5804205 d!1828522))

(declare-fun d!1828524 () Bool)

(assert (=> d!1828524 (= (++!14028 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326)) s!2326)))

(declare-fun lt!2298651 () Unit!156892)

(declare-fun choose!44057 (List!63749 C!31902 List!63749 List!63749) Unit!156892)

(assert (=> d!1828524 (= lt!2298651 (choose!44057 Nil!63625 (h!70073 s!2326) (t!377100 s!2326) s!2326))))

(assert (=> d!1828524 (= (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) (t!377100 s!2326))) s!2326)))

(assert (=> d!1828524 (= (lemmaMoveElementToOtherListKeepsConcatEq!2135 Nil!63625 (h!70073 s!2326) (t!377100 s!2326) s!2326) lt!2298651)))

(declare-fun bs!1370681 () Bool)

(assert (= bs!1370681 d!1828524))

(assert (=> bs!1370681 m!6743978))

(assert (=> bs!1370681 m!6743978))

(assert (=> bs!1370681 m!6743980))

(declare-fun m!6744768 () Bool)

(assert (=> bs!1370681 m!6744768))

(declare-fun m!6744770 () Bool)

(assert (=> bs!1370681 m!6744770))

(assert (=> b!5804205 d!1828524))

(declare-fun b!5805040 () Bool)

(declare-fun res!2447929 () Bool)

(declare-fun e!3563706 () Bool)

(assert (=> b!5805040 (=> (not res!2447929) (not e!3563706))))

(declare-fun lt!2298652 () Option!15825)

(assert (=> b!5805040 (= res!2447929 (matchR!8001 (reg!16145 r!7292) (_1!36216 (get!21962 lt!2298652))))))

(declare-fun b!5805041 () Bool)

(assert (=> b!5805041 (= e!3563706 (= (++!14028 (_1!36216 (get!21962 lt!2298652)) (_2!36216 (get!21962 lt!2298652))) s!2326))))

(declare-fun b!5805042 () Bool)

(declare-fun res!2447928 () Bool)

(assert (=> b!5805042 (=> (not res!2447928) (not e!3563706))))

(assert (=> b!5805042 (= res!2447928 (matchR!8001 r!7292 (_2!36216 (get!21962 lt!2298652))))))

(declare-fun b!5805043 () Bool)

(declare-fun e!3563708 () Bool)

(assert (=> b!5805043 (= e!3563708 (matchR!8001 r!7292 (t!377100 s!2326)))))

(declare-fun d!1828526 () Bool)

(declare-fun e!3563707 () Bool)

(assert (=> d!1828526 e!3563707))

(declare-fun res!2447930 () Bool)

(assert (=> d!1828526 (=> res!2447930 e!3563707)))

(assert (=> d!1828526 (= res!2447930 e!3563706)))

(declare-fun res!2447927 () Bool)

(assert (=> d!1828526 (=> (not res!2447927) (not e!3563706))))

(assert (=> d!1828526 (= res!2447927 (isDefined!12528 lt!2298652))))

(declare-fun e!3563709 () Option!15825)

(assert (=> d!1828526 (= lt!2298652 e!3563709)))

(declare-fun c!1028389 () Bool)

(assert (=> d!1828526 (= c!1028389 e!3563708)))

(declare-fun res!2447931 () Bool)

(assert (=> d!1828526 (=> (not res!2447931) (not e!3563708))))

(assert (=> d!1828526 (= res!2447931 (matchR!8001 (reg!16145 r!7292) (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625))))))

(assert (=> d!1828526 (validRegex!7552 (reg!16145 r!7292))))

(assert (=> d!1828526 (= (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326) s!2326) lt!2298652)))

(declare-fun b!5805044 () Bool)

(assert (=> b!5805044 (= e!3563709 (Some!15824 (tuple2!65827 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (t!377100 s!2326))))))

(declare-fun b!5805045 () Bool)

(declare-fun e!3563705 () Option!15825)

(assert (=> b!5805045 (= e!3563705 None!15824)))

(declare-fun b!5805046 () Bool)

(declare-fun lt!2298654 () Unit!156892)

(declare-fun lt!2298653 () Unit!156892)

(assert (=> b!5805046 (= lt!2298654 lt!2298653)))

(assert (=> b!5805046 (= (++!14028 (++!14028 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (Cons!63625 (h!70073 (t!377100 s!2326)) Nil!63625)) (t!377100 (t!377100 s!2326))) s!2326)))

(assert (=> b!5805046 (= lt!2298653 (lemmaMoveElementToOtherListKeepsConcatEq!2135 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (h!70073 (t!377100 s!2326)) (t!377100 (t!377100 s!2326)) s!2326))))

(assert (=> b!5805046 (= e!3563705 (findConcatSeparation!2239 (reg!16145 r!7292) r!7292 (++!14028 (++!14028 Nil!63625 (Cons!63625 (h!70073 s!2326) Nil!63625)) (Cons!63625 (h!70073 (t!377100 s!2326)) Nil!63625)) (t!377100 (t!377100 s!2326)) s!2326))))

(declare-fun b!5805047 () Bool)

(assert (=> b!5805047 (= e!3563707 (not (isDefined!12528 lt!2298652)))))

(declare-fun b!5805048 () Bool)

(assert (=> b!5805048 (= e!3563709 e!3563705)))

(declare-fun c!1028390 () Bool)

(assert (=> b!5805048 (= c!1028390 (is-Nil!63625 (t!377100 s!2326)))))

(assert (= (and d!1828526 res!2447931) b!5805043))

(assert (= (and d!1828526 c!1028389) b!5805044))

(assert (= (and d!1828526 (not c!1028389)) b!5805048))

(assert (= (and b!5805048 c!1028390) b!5805045))

(assert (= (and b!5805048 (not c!1028390)) b!5805046))

(assert (= (and d!1828526 res!2447927) b!5805040))

(assert (= (and b!5805040 res!2447929) b!5805042))

(assert (= (and b!5805042 res!2447928) b!5805041))

(assert (= (and d!1828526 (not res!2447930)) b!5805047))

(assert (=> b!5805046 m!6743978))

(declare-fun m!6744772 () Bool)

(assert (=> b!5805046 m!6744772))

(assert (=> b!5805046 m!6744772))

(declare-fun m!6744774 () Bool)

(assert (=> b!5805046 m!6744774))

(assert (=> b!5805046 m!6743978))

(declare-fun m!6744776 () Bool)

(assert (=> b!5805046 m!6744776))

(assert (=> b!5805046 m!6744772))

(declare-fun m!6744778 () Bool)

(assert (=> b!5805046 m!6744778))

(declare-fun m!6744780 () Bool)

(assert (=> d!1828526 m!6744780))

(assert (=> d!1828526 m!6743978))

(declare-fun m!6744782 () Bool)

(assert (=> d!1828526 m!6744782))

(assert (=> d!1828526 m!6743944))

(assert (=> b!5805047 m!6744780))

(declare-fun m!6744784 () Bool)

(assert (=> b!5805041 m!6744784))

(declare-fun m!6744786 () Bool)

(assert (=> b!5805041 m!6744786))

(declare-fun m!6744788 () Bool)

(assert (=> b!5805043 m!6744788))

(assert (=> b!5805042 m!6744784))

(declare-fun m!6744790 () Bool)

(assert (=> b!5805042 m!6744790))

(assert (=> b!5805040 m!6744784))

(declare-fun m!6744792 () Bool)

(assert (=> b!5805040 m!6744792))

(assert (=> b!5804205 d!1828526))

(declare-fun bs!1370682 () Bool)

(declare-fun d!1828528 () Bool)

(assert (= bs!1370682 (and d!1828528 d!1828346)))

(declare-fun lambda!316758 () Int)

(assert (=> bs!1370682 (= lambda!316758 lambda!316723)))

(declare-fun bs!1370683 () Bool)

(assert (= bs!1370683 (and d!1828528 d!1828506)))

(assert (=> bs!1370683 (= lambda!316758 lambda!316757)))

(declare-fun bs!1370684 () Bool)

(assert (= bs!1370684 (and d!1828528 d!1828202)))

(assert (=> bs!1370684 (= lambda!316758 lambda!316688)))

(declare-fun bs!1370685 () Bool)

(assert (= bs!1370685 (and d!1828528 d!1828488)))

(assert (=> bs!1370685 (= lambda!316758 lambda!316753)))

(declare-fun bs!1370686 () Bool)

(assert (= bs!1370686 (and d!1828528 d!1828200)))

(assert (=> bs!1370686 (= lambda!316758 lambda!316685)))

(declare-fun bs!1370687 () Bool)

(assert (= bs!1370687 (and d!1828528 d!1828504)))

(assert (=> bs!1370687 (= lambda!316758 lambda!316756)))

(declare-fun bs!1370688 () Bool)

(assert (= bs!1370688 (and d!1828528 d!1828438)))

(assert (=> bs!1370688 (= lambda!316758 lambda!316742)))

(declare-fun bs!1370689 () Bool)

(assert (= bs!1370689 (and d!1828528 d!1828386)))

(assert (=> bs!1370689 (= lambda!316758 lambda!316735)))

(declare-fun bs!1370690 () Bool)

(assert (= bs!1370690 (and d!1828528 d!1828112)))

(assert (=> bs!1370690 (= lambda!316758 lambda!316647)))

(declare-fun bs!1370691 () Bool)

(assert (= bs!1370691 (and d!1828528 d!1828400)))

(assert (=> bs!1370691 (= lambda!316758 lambda!316736)))

(declare-fun bs!1370692 () Bool)

(assert (= bs!1370692 (and d!1828528 d!1828198)))

(assert (=> bs!1370692 (= lambda!316758 lambda!316680)))

(declare-fun bs!1370693 () Bool)

(assert (= bs!1370693 (and d!1828528 d!1828420)))

(assert (=> bs!1370693 (= lambda!316758 lambda!316740)))

(declare-fun bs!1370694 () Bool)

(assert (= bs!1370694 (and d!1828528 d!1828136)))

(assert (=> bs!1370694 (= lambda!316758 lambda!316653)))

(declare-fun bs!1370695 () Bool)

(assert (= bs!1370695 (and d!1828528 d!1828486)))

(assert (=> bs!1370695 (= lambda!316758 lambda!316752)))

(declare-fun bs!1370696 () Bool)

(assert (= bs!1370696 (and d!1828528 d!1828348)))

(assert (=> bs!1370696 (= lambda!316758 lambda!316724)))

(declare-fun b!5805049 () Bool)

(declare-fun e!3563713 () Bool)

(declare-fun lt!2298655 () Regex!15816)

(assert (=> b!5805049 (= e!3563713 (= lt!2298655 (head!12244 (t!377098 (unfocusZipperList!1244 zl!343)))))))

(declare-fun b!5805051 () Bool)

(declare-fun e!3563712 () Regex!15816)

(assert (=> b!5805051 (= e!3563712 (Union!15816 (h!70071 (t!377098 (unfocusZipperList!1244 zl!343))) (generalisedUnion!1679 (t!377098 (t!377098 (unfocusZipperList!1244 zl!343))))))))

(declare-fun b!5805052 () Bool)

(declare-fun e!3563714 () Regex!15816)

(assert (=> b!5805052 (= e!3563714 e!3563712)))

(declare-fun c!1028393 () Bool)

(assert (=> b!5805052 (= c!1028393 (is-Cons!63623 (t!377098 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5805053 () Bool)

(assert (=> b!5805053 (= e!3563712 EmptyLang!15816)))

(declare-fun b!5805054 () Bool)

(assert (=> b!5805054 (= e!3563714 (h!70071 (t!377098 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5805055 () Bool)

(assert (=> b!5805055 (= e!3563713 (isUnion!729 lt!2298655))))

(declare-fun e!3563710 () Bool)

(assert (=> d!1828528 e!3563710))

(declare-fun res!2447933 () Bool)

(assert (=> d!1828528 (=> (not res!2447933) (not e!3563710))))

(assert (=> d!1828528 (= res!2447933 (validRegex!7552 lt!2298655))))

(assert (=> d!1828528 (= lt!2298655 e!3563714)))

(declare-fun c!1028391 () Bool)

(declare-fun e!3563711 () Bool)

(assert (=> d!1828528 (= c!1028391 e!3563711)))

(declare-fun res!2447932 () Bool)

(assert (=> d!1828528 (=> (not res!2447932) (not e!3563711))))

(assert (=> d!1828528 (= res!2447932 (is-Cons!63623 (t!377098 (unfocusZipperList!1244 zl!343))))))

(assert (=> d!1828528 (forall!14924 (t!377098 (unfocusZipperList!1244 zl!343)) lambda!316758)))

(assert (=> d!1828528 (= (generalisedUnion!1679 (t!377098 (unfocusZipperList!1244 zl!343))) lt!2298655)))

(declare-fun b!5805050 () Bool)

(declare-fun e!3563715 () Bool)

(assert (=> b!5805050 (= e!3563710 e!3563715)))

(declare-fun c!1028392 () Bool)

(assert (=> b!5805050 (= c!1028392 (isEmpty!35537 (t!377098 (unfocusZipperList!1244 zl!343))))))

(declare-fun b!5805056 () Bool)

(assert (=> b!5805056 (= e!3563715 (isEmptyLang!1299 lt!2298655))))

(declare-fun b!5805057 () Bool)

(assert (=> b!5805057 (= e!3563715 e!3563713)))

(declare-fun c!1028394 () Bool)

(assert (=> b!5805057 (= c!1028394 (isEmpty!35537 (tail!11339 (t!377098 (unfocusZipperList!1244 zl!343)))))))

(declare-fun b!5805058 () Bool)

(assert (=> b!5805058 (= e!3563711 (isEmpty!35537 (t!377098 (t!377098 (unfocusZipperList!1244 zl!343)))))))

(assert (= (and d!1828528 res!2447932) b!5805058))

(assert (= (and d!1828528 c!1028391) b!5805054))

(assert (= (and d!1828528 (not c!1028391)) b!5805052))

(assert (= (and b!5805052 c!1028393) b!5805051))

(assert (= (and b!5805052 (not c!1028393)) b!5805053))

(assert (= (and d!1828528 res!2447933) b!5805050))

(assert (= (and b!5805050 c!1028392) b!5805056))

(assert (= (and b!5805050 (not c!1028392)) b!5805057))

(assert (= (and b!5805057 c!1028394) b!5805049))

(assert (= (and b!5805057 (not c!1028394)) b!5805055))

(declare-fun m!6744794 () Bool)

(assert (=> d!1828528 m!6744794))

(declare-fun m!6744796 () Bool)

(assert (=> d!1828528 m!6744796))

(declare-fun m!6744798 () Bool)

(assert (=> b!5805049 m!6744798))

(assert (=> b!5805050 m!6744012))

(declare-fun m!6744800 () Bool)

(assert (=> b!5805058 m!6744800))

(declare-fun m!6744802 () Bool)

(assert (=> b!5805056 m!6744802))

(declare-fun m!6744804 () Bool)

(assert (=> b!5805055 m!6744804))

(declare-fun m!6744806 () Bool)

(assert (=> b!5805057 m!6744806))

(assert (=> b!5805057 m!6744806))

(declare-fun m!6744808 () Bool)

(assert (=> b!5805057 m!6744808))

(declare-fun m!6744810 () Bool)

(assert (=> b!5805051 m!6744810))

(assert (=> b!5804249 d!1828528))

(declare-fun d!1828530 () Bool)

(assert (=> d!1828530 true))

(declare-fun setRes!39060 () Bool)

(assert (=> d!1828530 setRes!39060))

(declare-fun condSetEmpty!39060 () Bool)

(declare-fun res!2447934 () (Set Context!10400))

(assert (=> d!1828530 (= condSetEmpty!39060 (= res!2447934 (as set.empty (Set Context!10400))))))

(assert (=> d!1828530 (= (choose!44041 z!1189 lambda!316622) res!2447934)))

(declare-fun setIsEmpty!39060 () Bool)

(assert (=> setIsEmpty!39060 setRes!39060))

(declare-fun e!3563716 () Bool)

(declare-fun setNonEmpty!39060 () Bool)

(declare-fun setElem!39060 () Context!10400)

(declare-fun tp!1602421 () Bool)

(assert (=> setNonEmpty!39060 (= setRes!39060 (and tp!1602421 (inv!82788 setElem!39060) e!3563716))))

(declare-fun setRest!39060 () (Set Context!10400))

(assert (=> setNonEmpty!39060 (= res!2447934 (set.union (set.insert setElem!39060 (as set.empty (Set Context!10400))) setRest!39060))))

(declare-fun b!5805059 () Bool)

(declare-fun tp!1602422 () Bool)

(assert (=> b!5805059 (= e!3563716 tp!1602422)))

(assert (= (and d!1828530 condSetEmpty!39060) setIsEmpty!39060))

(assert (= (and d!1828530 (not condSetEmpty!39060)) setNonEmpty!39060))

(assert (= setNonEmpty!39060 b!5805059))

(declare-fun m!6744812 () Bool)

(assert (=> setNonEmpty!39060 m!6744812))

(assert (=> d!1828114 d!1828530))

(declare-fun b!5805060 () Bool)

(declare-fun e!3563717 () Bool)

(declare-fun call!453141 () Bool)

(assert (=> b!5805060 (= e!3563717 call!453141)))

(declare-fun b!5805061 () Bool)

(declare-fun e!3563718 () Bool)

(assert (=> b!5805061 (= e!3563718 e!3563717)))

(declare-fun res!2447938 () Bool)

(assert (=> b!5805061 (= res!2447938 (not (nullable!5842 (reg!16145 lt!2298544))))))

(assert (=> b!5805061 (=> (not res!2447938) (not e!3563717))))

(declare-fun b!5805062 () Bool)

(declare-fun e!3563719 () Bool)

(declare-fun e!3563721 () Bool)

(assert (=> b!5805062 (= e!3563719 e!3563721)))

(declare-fun res!2447937 () Bool)

(assert (=> b!5805062 (=> (not res!2447937) (not e!3563721))))

(declare-fun call!453142 () Bool)

(assert (=> b!5805062 (= res!2447937 call!453142)))

(declare-fun bm!453136 () Bool)

(declare-fun call!453140 () Bool)

(declare-fun c!1028395 () Bool)

(assert (=> bm!453136 (= call!453140 (validRegex!7552 (ite c!1028395 (regTwo!32145 lt!2298544) (regTwo!32144 lt!2298544))))))

(declare-fun b!5805063 () Bool)

(declare-fun e!3563723 () Bool)

(assert (=> b!5805063 (= e!3563718 e!3563723)))

(assert (=> b!5805063 (= c!1028395 (is-Union!15816 lt!2298544))))

(declare-fun bm!453137 () Bool)

(assert (=> bm!453137 (= call!453142 call!453141)))

(declare-fun b!5805064 () Bool)

(declare-fun res!2447936 () Bool)

(assert (=> b!5805064 (=> res!2447936 e!3563719)))

(assert (=> b!5805064 (= res!2447936 (not (is-Concat!24661 lt!2298544)))))

(assert (=> b!5805064 (= e!3563723 e!3563719)))

(declare-fun b!5805065 () Bool)

(declare-fun e!3563722 () Bool)

(assert (=> b!5805065 (= e!3563722 call!453140)))

(declare-fun b!5805066 () Bool)

(assert (=> b!5805066 (= e!3563721 call!453140)))

(declare-fun d!1828532 () Bool)

(declare-fun res!2447935 () Bool)

(declare-fun e!3563720 () Bool)

(assert (=> d!1828532 (=> res!2447935 e!3563720)))

(assert (=> d!1828532 (= res!2447935 (is-ElementMatch!15816 lt!2298544))))

(assert (=> d!1828532 (= (validRegex!7552 lt!2298544) e!3563720)))

(declare-fun c!1028396 () Bool)

(declare-fun bm!453135 () Bool)

(assert (=> bm!453135 (= call!453141 (validRegex!7552 (ite c!1028396 (reg!16145 lt!2298544) (ite c!1028395 (regOne!32145 lt!2298544) (regOne!32144 lt!2298544)))))))

(declare-fun b!5805067 () Bool)

(declare-fun res!2447939 () Bool)

(assert (=> b!5805067 (=> (not res!2447939) (not e!3563722))))

(assert (=> b!5805067 (= res!2447939 call!453142)))

(assert (=> b!5805067 (= e!3563723 e!3563722)))

(declare-fun b!5805068 () Bool)

(assert (=> b!5805068 (= e!3563720 e!3563718)))

(assert (=> b!5805068 (= c!1028396 (is-Star!15816 lt!2298544))))

(assert (= (and d!1828532 (not res!2447935)) b!5805068))

(assert (= (and b!5805068 c!1028396) b!5805061))

(assert (= (and b!5805068 (not c!1028396)) b!5805063))

(assert (= (and b!5805061 res!2447938) b!5805060))

(assert (= (and b!5805063 c!1028395) b!5805067))

(assert (= (and b!5805063 (not c!1028395)) b!5805064))

(assert (= (and b!5805067 res!2447939) b!5805065))

(assert (= (and b!5805064 (not res!2447936)) b!5805062))

(assert (= (and b!5805062 res!2447937) b!5805066))

(assert (= (or b!5805065 b!5805066) bm!453136))

(assert (= (or b!5805067 b!5805062) bm!453137))

(assert (= (or b!5805060 bm!453137) bm!453135))

(declare-fun m!6744814 () Bool)

(assert (=> b!5805061 m!6744814))

(declare-fun m!6744816 () Bool)

(assert (=> bm!453136 m!6744816))

(declare-fun m!6744818 () Bool)

(assert (=> bm!453135 m!6744818))

(assert (=> d!1828138 d!1828532))

(assert (=> d!1828138 d!1828200))

(assert (=> d!1828138 d!1828202))

(assert (=> d!1828160 d!1828188))

(assert (=> d!1828160 d!1828140))

(declare-fun d!1828534 () Bool)

(assert (=> d!1828534 (= (isUnion!729 lt!2298579) (is-Union!15816 lt!2298579))))

(assert (=> b!5804253 d!1828534))

(assert (=> bs!1370427 d!1828116))

(declare-fun d!1828536 () Bool)

(assert (=> d!1828536 true))

(assert (=> d!1828536 true))

(declare-fun res!2447940 () Bool)

(assert (=> d!1828536 (= (choose!44046 lambda!316619) res!2447940)))

(assert (=> d!1828190 d!1828536))

(declare-fun d!1828538 () Bool)

(declare-fun c!1028398 () Bool)

(assert (=> d!1828538 (= c!1028398 (and (is-ElementMatch!15816 (h!70071 (exprs!5700 lt!2298442))) (= (c!1028045 (h!70071 (exprs!5700 lt!2298442))) (h!70073 s!2326))))))

(declare-fun e!3563727 () (Set Context!10400))

(assert (=> d!1828538 (= (derivationStepZipperDown!1154 (h!70071 (exprs!5700 lt!2298442)) (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (h!70073 s!2326)) e!3563727)))

(declare-fun bm!453138 () Bool)

(declare-fun call!453147 () List!63747)

(declare-fun call!453144 () List!63747)

(assert (=> bm!453138 (= call!453147 call!453144)))

(declare-fun bm!453139 () Bool)

(declare-fun c!1028401 () Bool)

(declare-fun c!1028400 () Bool)

(assert (=> bm!453139 (= call!453144 ($colon$colon!1797 (exprs!5700 (Context!10401 (t!377098 (exprs!5700 lt!2298442)))) (ite (or c!1028401 c!1028400) (regTwo!32144 (h!70071 (exprs!5700 lt!2298442))) (h!70071 (exprs!5700 lt!2298442)))))))

(declare-fun b!5805069 () Bool)

(declare-fun e!3563728 () (Set Context!10400))

(declare-fun call!453148 () (Set Context!10400))

(assert (=> b!5805069 (= e!3563728 call!453148)))

(declare-fun b!5805070 () Bool)

(declare-fun e!3563726 () Bool)

(assert (=> b!5805070 (= e!3563726 (nullable!5842 (regOne!32144 (h!70071 (exprs!5700 lt!2298442)))))))

(declare-fun b!5805071 () Bool)

(declare-fun e!3563724 () (Set Context!10400))

(assert (=> b!5805071 (= e!3563724 e!3563728)))

(assert (=> b!5805071 (= c!1028400 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298442))))))

(declare-fun bm!453140 () Bool)

(declare-fun call!453143 () (Set Context!10400))

(declare-fun c!1028399 () Bool)

(assert (=> bm!453140 (= call!453143 (derivationStepZipperDown!1154 (ite c!1028399 (regOne!32145 (h!70071 (exprs!5700 lt!2298442))) (ite c!1028401 (regTwo!32144 (h!70071 (exprs!5700 lt!2298442))) (ite c!1028400 (regOne!32144 (h!70071 (exprs!5700 lt!2298442))) (reg!16145 (h!70071 (exprs!5700 lt!2298442)))))) (ite (or c!1028399 c!1028401) (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (Context!10401 call!453147)) (h!70073 s!2326)))))

(declare-fun b!5805072 () Bool)

(assert (=> b!5805072 (= e!3563727 (set.insert (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (as set.empty (Set Context!10400))))))

(declare-fun b!5805073 () Bool)

(declare-fun e!3563725 () (Set Context!10400))

(declare-fun call!453146 () (Set Context!10400))

(assert (=> b!5805073 (= e!3563725 (set.union call!453143 call!453146))))

(declare-fun bm!453141 () Bool)

(declare-fun call!453145 () (Set Context!10400))

(assert (=> bm!453141 (= call!453148 call!453145)))

(declare-fun b!5805074 () Bool)

(assert (=> b!5805074 (= e!3563727 e!3563725)))

(assert (=> b!5805074 (= c!1028399 (is-Union!15816 (h!70071 (exprs!5700 lt!2298442))))))

(declare-fun bm!453142 () Bool)

(assert (=> bm!453142 (= call!453145 call!453143)))

(declare-fun bm!453143 () Bool)

(assert (=> bm!453143 (= call!453146 (derivationStepZipperDown!1154 (ite c!1028399 (regTwo!32145 (h!70071 (exprs!5700 lt!2298442))) (regOne!32144 (h!70071 (exprs!5700 lt!2298442)))) (ite c!1028399 (Context!10401 (t!377098 (exprs!5700 lt!2298442))) (Context!10401 call!453144)) (h!70073 s!2326)))))

(declare-fun b!5805075 () Bool)

(declare-fun e!3563729 () (Set Context!10400))

(assert (=> b!5805075 (= e!3563729 call!453148)))

(declare-fun b!5805076 () Bool)

(declare-fun c!1028397 () Bool)

(assert (=> b!5805076 (= c!1028397 (is-Star!15816 (h!70071 (exprs!5700 lt!2298442))))))

(assert (=> b!5805076 (= e!3563728 e!3563729)))

(declare-fun b!5805077 () Bool)

(assert (=> b!5805077 (= e!3563724 (set.union call!453146 call!453145))))

(declare-fun b!5805078 () Bool)

(assert (=> b!5805078 (= c!1028401 e!3563726)))

(declare-fun res!2447941 () Bool)

(assert (=> b!5805078 (=> (not res!2447941) (not e!3563726))))

(assert (=> b!5805078 (= res!2447941 (is-Concat!24661 (h!70071 (exprs!5700 lt!2298442))))))

(assert (=> b!5805078 (= e!3563725 e!3563724)))

(declare-fun b!5805079 () Bool)

(assert (=> b!5805079 (= e!3563729 (as set.empty (Set Context!10400)))))

(assert (= (and d!1828538 c!1028398) b!5805072))

(assert (= (and d!1828538 (not c!1028398)) b!5805074))

(assert (= (and b!5805074 c!1028399) b!5805073))

(assert (= (and b!5805074 (not c!1028399)) b!5805078))

(assert (= (and b!5805078 res!2447941) b!5805070))

(assert (= (and b!5805078 c!1028401) b!5805077))

(assert (= (and b!5805078 (not c!1028401)) b!5805071))

(assert (= (and b!5805071 c!1028400) b!5805069))

(assert (= (and b!5805071 (not c!1028400)) b!5805076))

(assert (= (and b!5805076 c!1028397) b!5805075))

(assert (= (and b!5805076 (not c!1028397)) b!5805079))

(assert (= (or b!5805069 b!5805075) bm!453138))

(assert (= (or b!5805069 b!5805075) bm!453141))

(assert (= (or b!5805077 bm!453138) bm!453139))

(assert (= (or b!5805077 bm!453141) bm!453142))

(assert (= (or b!5805073 b!5805077) bm!453143))

(assert (= (or b!5805073 bm!453142) bm!453140))

(declare-fun m!6744820 () Bool)

(assert (=> bm!453139 m!6744820))

(declare-fun m!6744822 () Bool)

(assert (=> bm!453140 m!6744822))

(declare-fun m!6744824 () Bool)

(assert (=> b!5805072 m!6744824))

(declare-fun m!6744826 () Bool)

(assert (=> b!5805070 m!6744826))

(declare-fun m!6744828 () Bool)

(assert (=> bm!453143 m!6744828))

(assert (=> bm!452972 d!1828538))

(declare-fun b!5805081 () Bool)

(declare-fun e!3563730 () Bool)

(declare-fun tp!1602427 () Bool)

(declare-fun tp!1602426 () Bool)

(assert (=> b!5805081 (= e!3563730 (and tp!1602427 tp!1602426))))

(declare-fun b!5805082 () Bool)

(declare-fun tp!1602424 () Bool)

(assert (=> b!5805082 (= e!3563730 tp!1602424)))

(declare-fun b!5805083 () Bool)

(declare-fun tp!1602425 () Bool)

(declare-fun tp!1602423 () Bool)

(assert (=> b!5805083 (= e!3563730 (and tp!1602425 tp!1602423))))

(assert (=> b!5804363 (= tp!1602344 e!3563730)))

(declare-fun b!5805080 () Bool)

(assert (=> b!5805080 (= e!3563730 tp_is_empty!40885)))

(assert (= (and b!5804363 (is-ElementMatch!15816 (regOne!32145 (regTwo!32144 r!7292)))) b!5805080))

(assert (= (and b!5804363 (is-Concat!24661 (regOne!32145 (regTwo!32144 r!7292)))) b!5805081))

(assert (= (and b!5804363 (is-Star!15816 (regOne!32145 (regTwo!32144 r!7292)))) b!5805082))

(assert (= (and b!5804363 (is-Union!15816 (regOne!32145 (regTwo!32144 r!7292)))) b!5805083))

(declare-fun b!5805085 () Bool)

(declare-fun e!3563731 () Bool)

(declare-fun tp!1602432 () Bool)

(declare-fun tp!1602431 () Bool)

(assert (=> b!5805085 (= e!3563731 (and tp!1602432 tp!1602431))))

(declare-fun b!5805086 () Bool)

(declare-fun tp!1602429 () Bool)

(assert (=> b!5805086 (= e!3563731 tp!1602429)))

(declare-fun b!5805087 () Bool)

(declare-fun tp!1602430 () Bool)

(declare-fun tp!1602428 () Bool)

(assert (=> b!5805087 (= e!3563731 (and tp!1602430 tp!1602428))))

(assert (=> b!5804363 (= tp!1602342 e!3563731)))

(declare-fun b!5805084 () Bool)

(assert (=> b!5805084 (= e!3563731 tp_is_empty!40885)))

(assert (= (and b!5804363 (is-ElementMatch!15816 (regTwo!32145 (regTwo!32144 r!7292)))) b!5805084))

(assert (= (and b!5804363 (is-Concat!24661 (regTwo!32145 (regTwo!32144 r!7292)))) b!5805085))

(assert (= (and b!5804363 (is-Star!15816 (regTwo!32145 (regTwo!32144 r!7292)))) b!5805086))

(assert (= (and b!5804363 (is-Union!15816 (regTwo!32145 (regTwo!32144 r!7292)))) b!5805087))

(declare-fun b!5805089 () Bool)

(declare-fun e!3563732 () Bool)

(declare-fun tp!1602437 () Bool)

(declare-fun tp!1602436 () Bool)

(assert (=> b!5805089 (= e!3563732 (and tp!1602437 tp!1602436))))

(declare-fun b!5805090 () Bool)

(declare-fun tp!1602434 () Bool)

(assert (=> b!5805090 (= e!3563732 tp!1602434)))

(declare-fun b!5805091 () Bool)

(declare-fun tp!1602435 () Bool)

(declare-fun tp!1602433 () Bool)

(assert (=> b!5805091 (= e!3563732 (and tp!1602435 tp!1602433))))

(assert (=> b!5804302 (= tp!1602305 e!3563732)))

(declare-fun b!5805088 () Bool)

(assert (=> b!5805088 (= e!3563732 tp_is_empty!40885)))

(assert (= (and b!5804302 (is-ElementMatch!15816 (reg!16145 (regTwo!32145 r!7292)))) b!5805088))

(assert (= (and b!5804302 (is-Concat!24661 (reg!16145 (regTwo!32145 r!7292)))) b!5805089))

(assert (= (and b!5804302 (is-Star!15816 (reg!16145 (regTwo!32145 r!7292)))) b!5805090))

(assert (= (and b!5804302 (is-Union!15816 (reg!16145 (regTwo!32145 r!7292)))) b!5805091))

(declare-fun b!5805093 () Bool)

(declare-fun e!3563733 () Bool)

(declare-fun tp!1602442 () Bool)

(declare-fun tp!1602441 () Bool)

(assert (=> b!5805093 (= e!3563733 (and tp!1602442 tp!1602441))))

(declare-fun b!5805094 () Bool)

(declare-fun tp!1602439 () Bool)

(assert (=> b!5805094 (= e!3563733 tp!1602439)))

(declare-fun b!5805095 () Bool)

(declare-fun tp!1602440 () Bool)

(declare-fun tp!1602438 () Bool)

(assert (=> b!5805095 (= e!3563733 (and tp!1602440 tp!1602438))))

(assert (=> b!5804293 (= tp!1602303 e!3563733)))

(declare-fun b!5805092 () Bool)

(assert (=> b!5805092 (= e!3563733 tp_is_empty!40885)))

(assert (= (and b!5804293 (is-ElementMatch!15816 (regOne!32144 (regOne!32145 r!7292)))) b!5805092))

(assert (= (and b!5804293 (is-Concat!24661 (regOne!32144 (regOne!32145 r!7292)))) b!5805093))

(assert (= (and b!5804293 (is-Star!15816 (regOne!32144 (regOne!32145 r!7292)))) b!5805094))

(assert (= (and b!5804293 (is-Union!15816 (regOne!32144 (regOne!32145 r!7292)))) b!5805095))

(declare-fun b!5805097 () Bool)

(declare-fun e!3563734 () Bool)

(declare-fun tp!1602447 () Bool)

(declare-fun tp!1602446 () Bool)

(assert (=> b!5805097 (= e!3563734 (and tp!1602447 tp!1602446))))

(declare-fun b!5805098 () Bool)

(declare-fun tp!1602444 () Bool)

(assert (=> b!5805098 (= e!3563734 tp!1602444)))

(declare-fun b!5805099 () Bool)

(declare-fun tp!1602445 () Bool)

(declare-fun tp!1602443 () Bool)

(assert (=> b!5805099 (= e!3563734 (and tp!1602445 tp!1602443))))

(assert (=> b!5804293 (= tp!1602302 e!3563734)))

(declare-fun b!5805096 () Bool)

(assert (=> b!5805096 (= e!3563734 tp_is_empty!40885)))

(assert (= (and b!5804293 (is-ElementMatch!15816 (regTwo!32144 (regOne!32145 r!7292)))) b!5805096))

(assert (= (and b!5804293 (is-Concat!24661 (regTwo!32144 (regOne!32145 r!7292)))) b!5805097))

(assert (= (and b!5804293 (is-Star!15816 (regTwo!32144 (regOne!32145 r!7292)))) b!5805098))

(assert (= (and b!5804293 (is-Union!15816 (regTwo!32144 (regOne!32145 r!7292)))) b!5805099))

(declare-fun b!5805101 () Bool)

(declare-fun e!3563735 () Bool)

(declare-fun tp!1602452 () Bool)

(declare-fun tp!1602451 () Bool)

(assert (=> b!5805101 (= e!3563735 (and tp!1602452 tp!1602451))))

(declare-fun b!5805102 () Bool)

(declare-fun tp!1602449 () Bool)

(assert (=> b!5805102 (= e!3563735 tp!1602449)))

(declare-fun b!5805103 () Bool)

(declare-fun tp!1602450 () Bool)

(declare-fun tp!1602448 () Bool)

(assert (=> b!5805103 (= e!3563735 (and tp!1602450 tp!1602448))))

(assert (=> b!5804303 (= tp!1602306 e!3563735)))

(declare-fun b!5805100 () Bool)

(assert (=> b!5805100 (= e!3563735 tp_is_empty!40885)))

(assert (= (and b!5804303 (is-ElementMatch!15816 (regOne!32145 (regTwo!32145 r!7292)))) b!5805100))

(assert (= (and b!5804303 (is-Concat!24661 (regOne!32145 (regTwo!32145 r!7292)))) b!5805101))

(assert (= (and b!5804303 (is-Star!15816 (regOne!32145 (regTwo!32145 r!7292)))) b!5805102))

(assert (= (and b!5804303 (is-Union!15816 (regOne!32145 (regTwo!32145 r!7292)))) b!5805103))

(declare-fun b!5805105 () Bool)

(declare-fun e!3563736 () Bool)

(declare-fun tp!1602457 () Bool)

(declare-fun tp!1602456 () Bool)

(assert (=> b!5805105 (= e!3563736 (and tp!1602457 tp!1602456))))

(declare-fun b!5805106 () Bool)

(declare-fun tp!1602454 () Bool)

(assert (=> b!5805106 (= e!3563736 tp!1602454)))

(declare-fun b!5805107 () Bool)

(declare-fun tp!1602455 () Bool)

(declare-fun tp!1602453 () Bool)

(assert (=> b!5805107 (= e!3563736 (and tp!1602455 tp!1602453))))

(assert (=> b!5804303 (= tp!1602304 e!3563736)))

(declare-fun b!5805104 () Bool)

(assert (=> b!5805104 (= e!3563736 tp_is_empty!40885)))

(assert (= (and b!5804303 (is-ElementMatch!15816 (regTwo!32145 (regTwo!32145 r!7292)))) b!5805104))

(assert (= (and b!5804303 (is-Concat!24661 (regTwo!32145 (regTwo!32145 r!7292)))) b!5805105))

(assert (= (and b!5804303 (is-Star!15816 (regTwo!32145 (regTwo!32145 r!7292)))) b!5805106))

(assert (= (and b!5804303 (is-Union!15816 (regTwo!32145 (regTwo!32145 r!7292)))) b!5805107))

(declare-fun b!5805109 () Bool)

(declare-fun e!3563737 () Bool)

(declare-fun tp!1602462 () Bool)

(declare-fun tp!1602461 () Bool)

(assert (=> b!5805109 (= e!3563737 (and tp!1602462 tp!1602461))))

(declare-fun b!5805110 () Bool)

(declare-fun tp!1602459 () Bool)

(assert (=> b!5805110 (= e!3563737 tp!1602459)))

(declare-fun b!5805111 () Bool)

(declare-fun tp!1602460 () Bool)

(declare-fun tp!1602458 () Bool)

(assert (=> b!5805111 (= e!3563737 (and tp!1602460 tp!1602458))))

(assert (=> b!5804355 (= tp!1602335 e!3563737)))

(declare-fun b!5805108 () Bool)

(assert (=> b!5805108 (= e!3563737 tp_is_empty!40885)))

(assert (= (and b!5804355 (is-ElementMatch!15816 (h!70071 (exprs!5700 (h!70072 zl!343))))) b!5805108))

(assert (= (and b!5804355 (is-Concat!24661 (h!70071 (exprs!5700 (h!70072 zl!343))))) b!5805109))

(assert (= (and b!5804355 (is-Star!15816 (h!70071 (exprs!5700 (h!70072 zl!343))))) b!5805110))

(assert (= (and b!5804355 (is-Union!15816 (h!70071 (exprs!5700 (h!70072 zl!343))))) b!5805111))

(declare-fun b!5805112 () Bool)

(declare-fun e!3563738 () Bool)

(declare-fun tp!1602463 () Bool)

(declare-fun tp!1602464 () Bool)

(assert (=> b!5805112 (= e!3563738 (and tp!1602463 tp!1602464))))

(assert (=> b!5804355 (= tp!1602336 e!3563738)))

(assert (= (and b!5804355 (is-Cons!63623 (t!377098 (exprs!5700 (h!70072 zl!343))))) b!5805112))

(declare-fun b!5805114 () Bool)

(declare-fun e!3563739 () Bool)

(declare-fun tp!1602469 () Bool)

(declare-fun tp!1602468 () Bool)

(assert (=> b!5805114 (= e!3563739 (and tp!1602469 tp!1602468))))

(declare-fun b!5805115 () Bool)

(declare-fun tp!1602466 () Bool)

(assert (=> b!5805115 (= e!3563739 tp!1602466)))

(declare-fun b!5805116 () Bool)

(declare-fun tp!1602467 () Bool)

(declare-fun tp!1602465 () Bool)

(assert (=> b!5805116 (= e!3563739 (and tp!1602467 tp!1602465))))

(assert (=> b!5804294 (= tp!1602300 e!3563739)))

(declare-fun b!5805113 () Bool)

(assert (=> b!5805113 (= e!3563739 tp_is_empty!40885)))

(assert (= (and b!5804294 (is-ElementMatch!15816 (reg!16145 (regOne!32145 r!7292)))) b!5805113))

(assert (= (and b!5804294 (is-Concat!24661 (reg!16145 (regOne!32145 r!7292)))) b!5805114))

(assert (= (and b!5804294 (is-Star!15816 (reg!16145 (regOne!32145 r!7292)))) b!5805115))

(assert (= (and b!5804294 (is-Union!15816 (reg!16145 (regOne!32145 r!7292)))) b!5805116))

(declare-fun b!5805118 () Bool)

(declare-fun e!3563740 () Bool)

(declare-fun tp!1602474 () Bool)

(declare-fun tp!1602473 () Bool)

(assert (=> b!5805118 (= e!3563740 (and tp!1602474 tp!1602473))))

(declare-fun b!5805119 () Bool)

(declare-fun tp!1602471 () Bool)

(assert (=> b!5805119 (= e!3563740 tp!1602471)))

(declare-fun b!5805120 () Bool)

(declare-fun tp!1602472 () Bool)

(declare-fun tp!1602470 () Bool)

(assert (=> b!5805120 (= e!3563740 (and tp!1602472 tp!1602470))))

(assert (=> b!5804295 (= tp!1602301 e!3563740)))

(declare-fun b!5805117 () Bool)

(assert (=> b!5805117 (= e!3563740 tp_is_empty!40885)))

(assert (= (and b!5804295 (is-ElementMatch!15816 (regOne!32145 (regOne!32145 r!7292)))) b!5805117))

(assert (= (and b!5804295 (is-Concat!24661 (regOne!32145 (regOne!32145 r!7292)))) b!5805118))

(assert (= (and b!5804295 (is-Star!15816 (regOne!32145 (regOne!32145 r!7292)))) b!5805119))

(assert (= (and b!5804295 (is-Union!15816 (regOne!32145 (regOne!32145 r!7292)))) b!5805120))

(declare-fun b!5805122 () Bool)

(declare-fun e!3563741 () Bool)

(declare-fun tp!1602479 () Bool)

(declare-fun tp!1602478 () Bool)

(assert (=> b!5805122 (= e!3563741 (and tp!1602479 tp!1602478))))

(declare-fun b!5805123 () Bool)

(declare-fun tp!1602476 () Bool)

(assert (=> b!5805123 (= e!3563741 tp!1602476)))

(declare-fun b!5805124 () Bool)

(declare-fun tp!1602477 () Bool)

(declare-fun tp!1602475 () Bool)

(assert (=> b!5805124 (= e!3563741 (and tp!1602477 tp!1602475))))

(assert (=> b!5804295 (= tp!1602299 e!3563741)))

(declare-fun b!5805121 () Bool)

(assert (=> b!5805121 (= e!3563741 tp_is_empty!40885)))

(assert (= (and b!5804295 (is-ElementMatch!15816 (regTwo!32145 (regOne!32145 r!7292)))) b!5805121))

(assert (= (and b!5804295 (is-Concat!24661 (regTwo!32145 (regOne!32145 r!7292)))) b!5805122))

(assert (= (and b!5804295 (is-Star!15816 (regTwo!32145 (regOne!32145 r!7292)))) b!5805123))

(assert (= (and b!5804295 (is-Union!15816 (regTwo!32145 (regOne!32145 r!7292)))) b!5805124))

(declare-fun b!5805126 () Bool)

(declare-fun e!3563742 () Bool)

(declare-fun tp!1602484 () Bool)

(declare-fun tp!1602483 () Bool)

(assert (=> b!5805126 (= e!3563742 (and tp!1602484 tp!1602483))))

(declare-fun b!5805127 () Bool)

(declare-fun tp!1602481 () Bool)

(assert (=> b!5805127 (= e!3563742 tp!1602481)))

(declare-fun b!5805128 () Bool)

(declare-fun tp!1602482 () Bool)

(declare-fun tp!1602480 () Bool)

(assert (=> b!5805128 (= e!3563742 (and tp!1602482 tp!1602480))))

(assert (=> b!5804357 (= tp!1602341 e!3563742)))

(declare-fun b!5805125 () Bool)

(assert (=> b!5805125 (= e!3563742 tp_is_empty!40885)))

(assert (= (and b!5804357 (is-ElementMatch!15816 (regOne!32144 (regOne!32144 r!7292)))) b!5805125))

(assert (= (and b!5804357 (is-Concat!24661 (regOne!32144 (regOne!32144 r!7292)))) b!5805126))

(assert (= (and b!5804357 (is-Star!15816 (regOne!32144 (regOne!32144 r!7292)))) b!5805127))

(assert (= (and b!5804357 (is-Union!15816 (regOne!32144 (regOne!32144 r!7292)))) b!5805128))

(declare-fun b!5805130 () Bool)

(declare-fun e!3563743 () Bool)

(declare-fun tp!1602489 () Bool)

(declare-fun tp!1602488 () Bool)

(assert (=> b!5805130 (= e!3563743 (and tp!1602489 tp!1602488))))

(declare-fun b!5805131 () Bool)

(declare-fun tp!1602486 () Bool)

(assert (=> b!5805131 (= e!3563743 tp!1602486)))

(declare-fun b!5805132 () Bool)

(declare-fun tp!1602487 () Bool)

(declare-fun tp!1602485 () Bool)

(assert (=> b!5805132 (= e!3563743 (and tp!1602487 tp!1602485))))

(assert (=> b!5804357 (= tp!1602340 e!3563743)))

(declare-fun b!5805129 () Bool)

(assert (=> b!5805129 (= e!3563743 tp_is_empty!40885)))

(assert (= (and b!5804357 (is-ElementMatch!15816 (regTwo!32144 (regOne!32144 r!7292)))) b!5805129))

(assert (= (and b!5804357 (is-Concat!24661 (regTwo!32144 (regOne!32144 r!7292)))) b!5805130))

(assert (= (and b!5804357 (is-Star!15816 (regTwo!32144 (regOne!32144 r!7292)))) b!5805131))

(assert (= (and b!5804357 (is-Union!15816 (regTwo!32144 (regOne!32144 r!7292)))) b!5805132))

(declare-fun b!5805134 () Bool)

(declare-fun e!3563744 () Bool)

(declare-fun tp!1602494 () Bool)

(declare-fun tp!1602493 () Bool)

(assert (=> b!5805134 (= e!3563744 (and tp!1602494 tp!1602493))))

(declare-fun b!5805135 () Bool)

(declare-fun tp!1602491 () Bool)

(assert (=> b!5805135 (= e!3563744 tp!1602491)))

(declare-fun b!5805136 () Bool)

(declare-fun tp!1602492 () Bool)

(declare-fun tp!1602490 () Bool)

(assert (=> b!5805136 (= e!3563744 (and tp!1602492 tp!1602490))))

(assert (=> b!5804358 (= tp!1602338 e!3563744)))

(declare-fun b!5805133 () Bool)

(assert (=> b!5805133 (= e!3563744 tp_is_empty!40885)))

(assert (= (and b!5804358 (is-ElementMatch!15816 (reg!16145 (regOne!32144 r!7292)))) b!5805133))

(assert (= (and b!5804358 (is-Concat!24661 (reg!16145 (regOne!32144 r!7292)))) b!5805134))

(assert (= (and b!5804358 (is-Star!15816 (reg!16145 (regOne!32144 r!7292)))) b!5805135))

(assert (= (and b!5804358 (is-Union!15816 (reg!16145 (regOne!32144 r!7292)))) b!5805136))

(declare-fun condSetEmpty!39061 () Bool)

(assert (=> setNonEmpty!39051 (= condSetEmpty!39061 (= setRest!39051 (as set.empty (Set Context!10400))))))

(declare-fun setRes!39061 () Bool)

(assert (=> setNonEmpty!39051 (= tp!1602321 setRes!39061)))

(declare-fun setIsEmpty!39061 () Bool)

(assert (=> setIsEmpty!39061 setRes!39061))

(declare-fun tp!1602495 () Bool)

(declare-fun setNonEmpty!39061 () Bool)

(declare-fun e!3563745 () Bool)

(declare-fun setElem!39061 () Context!10400)

(assert (=> setNonEmpty!39061 (= setRes!39061 (and tp!1602495 (inv!82788 setElem!39061) e!3563745))))

(declare-fun setRest!39061 () (Set Context!10400))

(assert (=> setNonEmpty!39061 (= setRest!39051 (set.union (set.insert setElem!39061 (as set.empty (Set Context!10400))) setRest!39061))))

(declare-fun b!5805137 () Bool)

(declare-fun tp!1602496 () Bool)

(assert (=> b!5805137 (= e!3563745 tp!1602496)))

(assert (= (and setNonEmpty!39051 condSetEmpty!39061) setIsEmpty!39061))

(assert (= (and setNonEmpty!39051 (not condSetEmpty!39061)) setNonEmpty!39061))

(assert (= setNonEmpty!39061 b!5805137))

(declare-fun m!6744830 () Bool)

(assert (=> setNonEmpty!39061 m!6744830))

(declare-fun b!5805139 () Bool)

(declare-fun e!3563747 () Bool)

(declare-fun tp!1602497 () Bool)

(assert (=> b!5805139 (= e!3563747 tp!1602497)))

(declare-fun tp!1602498 () Bool)

(declare-fun b!5805138 () Bool)

(declare-fun e!3563746 () Bool)

(assert (=> b!5805138 (= e!3563746 (and (inv!82788 (h!70072 (t!377099 (t!377099 zl!343)))) e!3563747 tp!1602498))))

(assert (=> b!5804348 (= tp!1602328 e!3563746)))

(assert (= b!5805138 b!5805139))

(assert (= (and b!5804348 (is-Cons!63624 (t!377099 (t!377099 zl!343)))) b!5805138))

(declare-fun m!6744832 () Bool)

(assert (=> b!5805138 m!6744832))

(declare-fun b!5805141 () Bool)

(declare-fun e!3563748 () Bool)

(declare-fun tp!1602503 () Bool)

(declare-fun tp!1602502 () Bool)

(assert (=> b!5805141 (= e!3563748 (and tp!1602503 tp!1602502))))

(declare-fun b!5805142 () Bool)

(declare-fun tp!1602500 () Bool)

(assert (=> b!5805142 (= e!3563748 tp!1602500)))

(declare-fun b!5805143 () Bool)

(declare-fun tp!1602501 () Bool)

(declare-fun tp!1602499 () Bool)

(assert (=> b!5805143 (= e!3563748 (and tp!1602501 tp!1602499))))

(assert (=> b!5804314 (= tp!1602316 e!3563748)))

(declare-fun b!5805140 () Bool)

(assert (=> b!5805140 (= e!3563748 tp_is_empty!40885)))

(assert (= (and b!5804314 (is-ElementMatch!15816 (regOne!32144 (reg!16145 r!7292)))) b!5805140))

(assert (= (and b!5804314 (is-Concat!24661 (regOne!32144 (reg!16145 r!7292)))) b!5805141))

(assert (= (and b!5804314 (is-Star!15816 (regOne!32144 (reg!16145 r!7292)))) b!5805142))

(assert (= (and b!5804314 (is-Union!15816 (regOne!32144 (reg!16145 r!7292)))) b!5805143))

(declare-fun b!5805145 () Bool)

(declare-fun e!3563749 () Bool)

(declare-fun tp!1602508 () Bool)

(declare-fun tp!1602507 () Bool)

(assert (=> b!5805145 (= e!3563749 (and tp!1602508 tp!1602507))))

(declare-fun b!5805146 () Bool)

(declare-fun tp!1602505 () Bool)

(assert (=> b!5805146 (= e!3563749 tp!1602505)))

(declare-fun b!5805147 () Bool)

(declare-fun tp!1602506 () Bool)

(declare-fun tp!1602504 () Bool)

(assert (=> b!5805147 (= e!3563749 (and tp!1602506 tp!1602504))))

(assert (=> b!5804314 (= tp!1602315 e!3563749)))

(declare-fun b!5805144 () Bool)

(assert (=> b!5805144 (= e!3563749 tp_is_empty!40885)))

(assert (= (and b!5804314 (is-ElementMatch!15816 (regTwo!32144 (reg!16145 r!7292)))) b!5805144))

(assert (= (and b!5804314 (is-Concat!24661 (regTwo!32144 (reg!16145 r!7292)))) b!5805145))

(assert (= (and b!5804314 (is-Star!15816 (regTwo!32144 (reg!16145 r!7292)))) b!5805146))

(assert (= (and b!5804314 (is-Union!15816 (regTwo!32144 (reg!16145 r!7292)))) b!5805147))

(declare-fun b!5805149 () Bool)

(declare-fun e!3563750 () Bool)

(declare-fun tp!1602513 () Bool)

(declare-fun tp!1602512 () Bool)

(assert (=> b!5805149 (= e!3563750 (and tp!1602513 tp!1602512))))

(declare-fun b!5805150 () Bool)

(declare-fun tp!1602510 () Bool)

(assert (=> b!5805150 (= e!3563750 tp!1602510)))

(declare-fun b!5805151 () Bool)

(declare-fun tp!1602511 () Bool)

(declare-fun tp!1602509 () Bool)

(assert (=> b!5805151 (= e!3563750 (and tp!1602511 tp!1602509))))

(assert (=> b!5804359 (= tp!1602339 e!3563750)))

(declare-fun b!5805148 () Bool)

(assert (=> b!5805148 (= e!3563750 tp_is_empty!40885)))

(assert (= (and b!5804359 (is-ElementMatch!15816 (regOne!32145 (regOne!32144 r!7292)))) b!5805148))

(assert (= (and b!5804359 (is-Concat!24661 (regOne!32145 (regOne!32144 r!7292)))) b!5805149))

(assert (= (and b!5804359 (is-Star!15816 (regOne!32145 (regOne!32144 r!7292)))) b!5805150))

(assert (= (and b!5804359 (is-Union!15816 (regOne!32145 (regOne!32144 r!7292)))) b!5805151))

(declare-fun b!5805153 () Bool)

(declare-fun e!3563751 () Bool)

(declare-fun tp!1602518 () Bool)

(declare-fun tp!1602517 () Bool)

(assert (=> b!5805153 (= e!3563751 (and tp!1602518 tp!1602517))))

(declare-fun b!5805154 () Bool)

(declare-fun tp!1602515 () Bool)

(assert (=> b!5805154 (= e!3563751 tp!1602515)))

(declare-fun b!5805155 () Bool)

(declare-fun tp!1602516 () Bool)

(declare-fun tp!1602514 () Bool)

(assert (=> b!5805155 (= e!3563751 (and tp!1602516 tp!1602514))))

(assert (=> b!5804359 (= tp!1602337 e!3563751)))

(declare-fun b!5805152 () Bool)

(assert (=> b!5805152 (= e!3563751 tp_is_empty!40885)))

(assert (= (and b!5804359 (is-ElementMatch!15816 (regTwo!32145 (regOne!32144 r!7292)))) b!5805152))

(assert (= (and b!5804359 (is-Concat!24661 (regTwo!32145 (regOne!32144 r!7292)))) b!5805153))

(assert (= (and b!5804359 (is-Star!15816 (regTwo!32145 (regOne!32144 r!7292)))) b!5805154))

(assert (= (and b!5804359 (is-Union!15816 (regTwo!32145 (regOne!32144 r!7292)))) b!5805155))

(declare-fun b!5805156 () Bool)

(declare-fun e!3563752 () Bool)

(declare-fun tp!1602519 () Bool)

(declare-fun tp!1602520 () Bool)

(assert (=> b!5805156 (= e!3563752 (and tp!1602519 tp!1602520))))

(assert (=> b!5804341 (= tp!1602322 e!3563752)))

(assert (= (and b!5804341 (is-Cons!63623 (exprs!5700 setElem!39051))) b!5805156))

(declare-fun b!5805158 () Bool)

(declare-fun e!3563753 () Bool)

(declare-fun tp!1602525 () Bool)

(declare-fun tp!1602524 () Bool)

(assert (=> b!5805158 (= e!3563753 (and tp!1602525 tp!1602524))))

(declare-fun b!5805159 () Bool)

(declare-fun tp!1602522 () Bool)

(assert (=> b!5805159 (= e!3563753 tp!1602522)))

(declare-fun b!5805160 () Bool)

(declare-fun tp!1602523 () Bool)

(declare-fun tp!1602521 () Bool)

(assert (=> b!5805160 (= e!3563753 (and tp!1602523 tp!1602521))))

(assert (=> b!5804315 (= tp!1602313 e!3563753)))

(declare-fun b!5805157 () Bool)

(assert (=> b!5805157 (= e!3563753 tp_is_empty!40885)))

(assert (= (and b!5804315 (is-ElementMatch!15816 (reg!16145 (reg!16145 r!7292)))) b!5805157))

(assert (= (and b!5804315 (is-Concat!24661 (reg!16145 (reg!16145 r!7292)))) b!5805158))

(assert (= (and b!5804315 (is-Star!15816 (reg!16145 (reg!16145 r!7292)))) b!5805159))

(assert (= (and b!5804315 (is-Union!15816 (reg!16145 (reg!16145 r!7292)))) b!5805160))

(declare-fun b!5805162 () Bool)

(declare-fun e!3563754 () Bool)

(declare-fun tp!1602530 () Bool)

(declare-fun tp!1602529 () Bool)

(assert (=> b!5805162 (= e!3563754 (and tp!1602530 tp!1602529))))

(declare-fun b!5805163 () Bool)

(declare-fun tp!1602527 () Bool)

(assert (=> b!5805163 (= e!3563754 tp!1602527)))

(declare-fun b!5805164 () Bool)

(declare-fun tp!1602528 () Bool)

(declare-fun tp!1602526 () Bool)

(assert (=> b!5805164 (= e!3563754 (and tp!1602528 tp!1602526))))

(assert (=> b!5804316 (= tp!1602314 e!3563754)))

(declare-fun b!5805161 () Bool)

(assert (=> b!5805161 (= e!3563754 tp_is_empty!40885)))

(assert (= (and b!5804316 (is-ElementMatch!15816 (regOne!32145 (reg!16145 r!7292)))) b!5805161))

(assert (= (and b!5804316 (is-Concat!24661 (regOne!32145 (reg!16145 r!7292)))) b!5805162))

(assert (= (and b!5804316 (is-Star!15816 (regOne!32145 (reg!16145 r!7292)))) b!5805163))

(assert (= (and b!5804316 (is-Union!15816 (regOne!32145 (reg!16145 r!7292)))) b!5805164))

(declare-fun b!5805166 () Bool)

(declare-fun e!3563755 () Bool)

(declare-fun tp!1602535 () Bool)

(declare-fun tp!1602534 () Bool)

(assert (=> b!5805166 (= e!3563755 (and tp!1602535 tp!1602534))))

(declare-fun b!5805167 () Bool)

(declare-fun tp!1602532 () Bool)

(assert (=> b!5805167 (= e!3563755 tp!1602532)))

(declare-fun b!5805168 () Bool)

(declare-fun tp!1602533 () Bool)

(declare-fun tp!1602531 () Bool)

(assert (=> b!5805168 (= e!3563755 (and tp!1602533 tp!1602531))))

(assert (=> b!5804316 (= tp!1602312 e!3563755)))

(declare-fun b!5805165 () Bool)

(assert (=> b!5805165 (= e!3563755 tp_is_empty!40885)))

(assert (= (and b!5804316 (is-ElementMatch!15816 (regTwo!32145 (reg!16145 r!7292)))) b!5805165))

(assert (= (and b!5804316 (is-Concat!24661 (regTwo!32145 (reg!16145 r!7292)))) b!5805166))

(assert (= (and b!5804316 (is-Star!15816 (regTwo!32145 (reg!16145 r!7292)))) b!5805167))

(assert (= (and b!5804316 (is-Union!15816 (regTwo!32145 (reg!16145 r!7292)))) b!5805168))

(declare-fun b!5805170 () Bool)

(declare-fun e!3563756 () Bool)

(declare-fun tp!1602540 () Bool)

(declare-fun tp!1602539 () Bool)

(assert (=> b!5805170 (= e!3563756 (and tp!1602540 tp!1602539))))

(declare-fun b!5805171 () Bool)

(declare-fun tp!1602537 () Bool)

(assert (=> b!5805171 (= e!3563756 tp!1602537)))

(declare-fun b!5805172 () Bool)

(declare-fun tp!1602538 () Bool)

(declare-fun tp!1602536 () Bool)

(assert (=> b!5805172 (= e!3563756 (and tp!1602538 tp!1602536))))

(assert (=> b!5804354 (= tp!1602333 e!3563756)))

(declare-fun b!5805169 () Bool)

(assert (=> b!5805169 (= e!3563756 tp_is_empty!40885)))

(assert (= (and b!5804354 (is-ElementMatch!15816 (h!70071 (exprs!5700 setElem!39045)))) b!5805169))

(assert (= (and b!5804354 (is-Concat!24661 (h!70071 (exprs!5700 setElem!39045)))) b!5805170))

(assert (= (and b!5804354 (is-Star!15816 (h!70071 (exprs!5700 setElem!39045)))) b!5805171))

(assert (= (and b!5804354 (is-Union!15816 (h!70071 (exprs!5700 setElem!39045)))) b!5805172))

(declare-fun b!5805173 () Bool)

(declare-fun e!3563757 () Bool)

(declare-fun tp!1602541 () Bool)

(declare-fun tp!1602542 () Bool)

(assert (=> b!5805173 (= e!3563757 (and tp!1602541 tp!1602542))))

(assert (=> b!5804354 (= tp!1602334 e!3563757)))

(assert (= (and b!5804354 (is-Cons!63623 (t!377098 (exprs!5700 setElem!39045)))) b!5805173))

(declare-fun b!5805175 () Bool)

(declare-fun e!3563758 () Bool)

(declare-fun tp!1602547 () Bool)

(declare-fun tp!1602546 () Bool)

(assert (=> b!5805175 (= e!3563758 (and tp!1602547 tp!1602546))))

(declare-fun b!5805176 () Bool)

(declare-fun tp!1602544 () Bool)

(assert (=> b!5805176 (= e!3563758 tp!1602544)))

(declare-fun b!5805177 () Bool)

(declare-fun tp!1602545 () Bool)

(declare-fun tp!1602543 () Bool)

(assert (=> b!5805177 (= e!3563758 (and tp!1602545 tp!1602543))))

(assert (=> b!5804361 (= tp!1602346 e!3563758)))

(declare-fun b!5805174 () Bool)

(assert (=> b!5805174 (= e!3563758 tp_is_empty!40885)))

(assert (= (and b!5804361 (is-ElementMatch!15816 (regOne!32144 (regTwo!32144 r!7292)))) b!5805174))

(assert (= (and b!5804361 (is-Concat!24661 (regOne!32144 (regTwo!32144 r!7292)))) b!5805175))

(assert (= (and b!5804361 (is-Star!15816 (regOne!32144 (regTwo!32144 r!7292)))) b!5805176))

(assert (= (and b!5804361 (is-Union!15816 (regOne!32144 (regTwo!32144 r!7292)))) b!5805177))

(declare-fun b!5805179 () Bool)

(declare-fun e!3563759 () Bool)

(declare-fun tp!1602552 () Bool)

(declare-fun tp!1602551 () Bool)

(assert (=> b!5805179 (= e!3563759 (and tp!1602552 tp!1602551))))

(declare-fun b!5805180 () Bool)

(declare-fun tp!1602549 () Bool)

(assert (=> b!5805180 (= e!3563759 tp!1602549)))

(declare-fun b!5805181 () Bool)

(declare-fun tp!1602550 () Bool)

(declare-fun tp!1602548 () Bool)

(assert (=> b!5805181 (= e!3563759 (and tp!1602550 tp!1602548))))

(assert (=> b!5804361 (= tp!1602345 e!3563759)))

(declare-fun b!5805178 () Bool)

(assert (=> b!5805178 (= e!3563759 tp_is_empty!40885)))

(assert (= (and b!5804361 (is-ElementMatch!15816 (regTwo!32144 (regTwo!32144 r!7292)))) b!5805178))

(assert (= (and b!5804361 (is-Concat!24661 (regTwo!32144 (regTwo!32144 r!7292)))) b!5805179))

(assert (= (and b!5804361 (is-Star!15816 (regTwo!32144 (regTwo!32144 r!7292)))) b!5805180))

(assert (= (and b!5804361 (is-Union!15816 (regTwo!32144 (regTwo!32144 r!7292)))) b!5805181))

(declare-fun b!5805183 () Bool)

(declare-fun e!3563760 () Bool)

(declare-fun tp!1602557 () Bool)

(declare-fun tp!1602556 () Bool)

(assert (=> b!5805183 (= e!3563760 (and tp!1602557 tp!1602556))))

(declare-fun b!5805184 () Bool)

(declare-fun tp!1602554 () Bool)

(assert (=> b!5805184 (= e!3563760 tp!1602554)))

(declare-fun b!5805185 () Bool)

(declare-fun tp!1602555 () Bool)

(declare-fun tp!1602553 () Bool)

(assert (=> b!5805185 (= e!3563760 (and tp!1602555 tp!1602553))))

(assert (=> b!5804362 (= tp!1602343 e!3563760)))

(declare-fun b!5805182 () Bool)

(assert (=> b!5805182 (= e!3563760 tp_is_empty!40885)))

(assert (= (and b!5804362 (is-ElementMatch!15816 (reg!16145 (regTwo!32144 r!7292)))) b!5805182))

(assert (= (and b!5804362 (is-Concat!24661 (reg!16145 (regTwo!32144 r!7292)))) b!5805183))

(assert (= (and b!5804362 (is-Star!15816 (reg!16145 (regTwo!32144 r!7292)))) b!5805184))

(assert (= (and b!5804362 (is-Union!15816 (reg!16145 (regTwo!32144 r!7292)))) b!5805185))

(declare-fun b!5805187 () Bool)

(declare-fun e!3563761 () Bool)

(declare-fun tp!1602562 () Bool)

(declare-fun tp!1602561 () Bool)

(assert (=> b!5805187 (= e!3563761 (and tp!1602562 tp!1602561))))

(declare-fun b!5805188 () Bool)

(declare-fun tp!1602559 () Bool)

(assert (=> b!5805188 (= e!3563761 tp!1602559)))

(declare-fun b!5805189 () Bool)

(declare-fun tp!1602560 () Bool)

(declare-fun tp!1602558 () Bool)

(assert (=> b!5805189 (= e!3563761 (and tp!1602560 tp!1602558))))

(assert (=> b!5804301 (= tp!1602308 e!3563761)))

(declare-fun b!5805186 () Bool)

(assert (=> b!5805186 (= e!3563761 tp_is_empty!40885)))

(assert (= (and b!5804301 (is-ElementMatch!15816 (regOne!32144 (regTwo!32145 r!7292)))) b!5805186))

(assert (= (and b!5804301 (is-Concat!24661 (regOne!32144 (regTwo!32145 r!7292)))) b!5805187))

(assert (= (and b!5804301 (is-Star!15816 (regOne!32144 (regTwo!32145 r!7292)))) b!5805188))

(assert (= (and b!5804301 (is-Union!15816 (regOne!32144 (regTwo!32145 r!7292)))) b!5805189))

(declare-fun b!5805191 () Bool)

(declare-fun e!3563762 () Bool)

(declare-fun tp!1602567 () Bool)

(declare-fun tp!1602566 () Bool)

(assert (=> b!5805191 (= e!3563762 (and tp!1602567 tp!1602566))))

(declare-fun b!5805192 () Bool)

(declare-fun tp!1602564 () Bool)

(assert (=> b!5805192 (= e!3563762 tp!1602564)))

(declare-fun b!5805193 () Bool)

(declare-fun tp!1602565 () Bool)

(declare-fun tp!1602563 () Bool)

(assert (=> b!5805193 (= e!3563762 (and tp!1602565 tp!1602563))))

(assert (=> b!5804301 (= tp!1602307 e!3563762)))

(declare-fun b!5805190 () Bool)

(assert (=> b!5805190 (= e!3563762 tp_is_empty!40885)))

(assert (= (and b!5804301 (is-ElementMatch!15816 (regTwo!32144 (regTwo!32145 r!7292)))) b!5805190))

(assert (= (and b!5804301 (is-Concat!24661 (regTwo!32144 (regTwo!32145 r!7292)))) b!5805191))

(assert (= (and b!5804301 (is-Star!15816 (regTwo!32144 (regTwo!32145 r!7292)))) b!5805192))

(assert (= (and b!5804301 (is-Union!15816 (regTwo!32144 (regTwo!32145 r!7292)))) b!5805193))

(declare-fun b!5805194 () Bool)

(declare-fun e!3563763 () Bool)

(declare-fun tp!1602568 () Bool)

(declare-fun tp!1602569 () Bool)

(assert (=> b!5805194 (= e!3563763 (and tp!1602568 tp!1602569))))

(assert (=> b!5804349 (= tp!1602327 e!3563763)))

(assert (= (and b!5804349 (is-Cons!63623 (exprs!5700 (h!70072 (t!377099 zl!343))))) b!5805194))

(declare-fun b!5805195 () Bool)

(declare-fun e!3563764 () Bool)

(declare-fun tp!1602570 () Bool)

(assert (=> b!5805195 (= e!3563764 (and tp_is_empty!40885 tp!1602570))))

(assert (=> b!5804310 (= tp!1602311 e!3563764)))

(assert (= (and b!5804310 (is-Cons!63625 (t!377100 (t!377100 s!2326)))) b!5805195))

(declare-fun b_lambda!218831 () Bool)

(assert (= b_lambda!218813 (or d!1828200 b_lambda!218831)))

(declare-fun bs!1370697 () Bool)

(declare-fun d!1828540 () Bool)

(assert (= bs!1370697 (and d!1828540 d!1828200)))

(assert (=> bs!1370697 (= (dynLambda!24911 lambda!316685 (h!70071 (unfocusZipperList!1244 zl!343))) (validRegex!7552 (h!70071 (unfocusZipperList!1244 zl!343))))))

(declare-fun m!6744834 () Bool)

(assert (=> bs!1370697 m!6744834))

(assert (=> b!5804662 d!1828540))

(declare-fun b_lambda!218833 () Bool)

(assert (= b_lambda!218823 (or b!5803740 b_lambda!218833)))

(assert (=> d!1828342 d!1828224))

(declare-fun b_lambda!218835 () Bool)

(assert (= b_lambda!218817 (or b!5803740 b_lambda!218835)))

(assert (=> d!1828324 d!1828222))

(declare-fun b_lambda!218837 () Bool)

(assert (= b_lambda!218815 (or b!5803740 b_lambda!218837)))

(assert (=> d!1828320 d!1828220))

(declare-fun b_lambda!218839 () Bool)

(assert (= b_lambda!218825 (or d!1828202 b_lambda!218839)))

(declare-fun bs!1370698 () Bool)

(declare-fun d!1828542 () Bool)

(assert (= bs!1370698 (and d!1828542 d!1828202)))

(assert (=> bs!1370698 (= (dynLambda!24911 lambda!316688 (h!70071 lt!2298582)) (validRegex!7552 (h!70071 lt!2298582)))))

(declare-fun m!6744836 () Bool)

(assert (=> bs!1370698 m!6744836))

(assert (=> b!5804765 d!1828542))

(declare-fun b_lambda!218841 () Bool)

(assert (= b_lambda!218821 (or b!5803740 b_lambda!218841)))

(assert (=> d!1828338 d!1828226))

(declare-fun b_lambda!218843 () Bool)

(assert (= b_lambda!218829 (or d!1828136 b_lambda!218843)))

(declare-fun bs!1370699 () Bool)

(declare-fun d!1828544 () Bool)

(assert (= bs!1370699 (and d!1828544 d!1828136)))

(assert (=> bs!1370699 (= (dynLambda!24911 lambda!316653 (h!70071 (exprs!5700 setElem!39045))) (validRegex!7552 (h!70071 (exprs!5700 setElem!39045))))))

(declare-fun m!6744838 () Bool)

(assert (=> bs!1370699 m!6744838))

(assert (=> b!5804898 d!1828544))

(declare-fun b_lambda!218845 () Bool)

(assert (= b_lambda!218819 (or d!1828198 b_lambda!218845)))

(declare-fun bs!1370700 () Bool)

(declare-fun d!1828546 () Bool)

(assert (= bs!1370700 (and d!1828546 d!1828198)))

(assert (=> bs!1370700 (= (dynLambda!24911 lambda!316680 (h!70071 (exprs!5700 (h!70072 zl!343)))) (validRegex!7552 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(declare-fun m!6744840 () Bool)

(assert (=> bs!1370700 m!6744840))

(assert (=> b!5804678 d!1828546))

(declare-fun b_lambda!218847 () Bool)

(assert (= b_lambda!218827 (or d!1828112 b_lambda!218847)))

(declare-fun bs!1370701 () Bool)

(declare-fun d!1828548 () Bool)

(assert (= bs!1370701 (and d!1828548 d!1828112)))

(assert (=> bs!1370701 (= (dynLambda!24911 lambda!316647 (h!70071 (exprs!5700 (h!70072 zl!343)))) (validRegex!7552 (h!70071 (exprs!5700 (h!70072 zl!343)))))))

(assert (=> bs!1370701 m!6744840))

(assert (=> b!5804776 d!1828548))

(push 1)

(assert (not b!5804646))

(assert (not b!5804899))

(assert (not bm!453078))

(assert (not b!5805047))

(assert (not b!5804932))

(assert (not b!5805089))

(assert (not b!5804819))

(assert (not b!5805123))

(assert (not bs!1370699))

(assert (not b!5805043))

(assert (not b!5805195))

(assert (not b!5804735))

(assert (not bm!453082))

(assert (not b!5804670))

(assert (not b!5805193))

(assert (not d!1828506))

(assert (not b!5805049))

(assert (not bm!453109))

(assert (not bm!453070))

(assert (not d!1828348))

(assert (not b!5805164))

(assert (not bm!453039))

(assert (not setNonEmpty!39061))

(assert (not b!5805093))

(assert (not b!5805155))

(assert (not setNonEmpty!39058))

(assert (not b!5805184))

(assert (not setNonEmpty!39060))

(assert (not d!1828442))

(assert (not b!5805098))

(assert (not b!5805050))

(assert (not b!5805188))

(assert (not bm!453057))

(assert (not b!5805128))

(assert (not b!5805147))

(assert (not bm!453084))

(assert (not b!5804758))

(assert (not b!5805187))

(assert (not bs!1370697))

(assert (not b!5805022))

(assert (not d!1828340))

(assert (not b!5805099))

(assert (not b!5805091))

(assert (not b!5804935))

(assert (not b!5804848))

(assert (not b!5805192))

(assert (not b!5804796))

(assert (not b!5805177))

(assert (not b!5805181))

(assert (not b!5804791))

(assert (not b!5804828))

(assert (not b!5805083))

(assert (not b!5805086))

(assert (not bm!453139))

(assert (not d!1828410))

(assert (not b!5805119))

(assert (not bm!453104))

(assert (not b!5805150))

(assert (not b!5805107))

(assert (not b!5805057))

(assert (not b_lambda!218799))

(assert (not b!5804870))

(assert (not b!5804691))

(assert (not b!5805142))

(assert (not b_lambda!218793))

(assert (not bm!453071))

(assert (not b!5804965))

(assert (not b!5804901))

(assert (not b!5804762))

(assert (not bm!453061))

(assert (not bs!1370701))

(assert (not d!1828386))

(assert (not b!5805059))

(assert (not d!1828476))

(assert (not d!1828390))

(assert (not b!5804820))

(assert (not b!5804818))

(assert (not bm!453107))

(assert (not bm!453098))

(assert (not bm!453131))

(assert (not b!5804759))

(assert (not b_lambda!218847))

(assert (not b!5805185))

(assert (not b!5805055))

(assert (not bm!453052))

(assert (not b!5804833))

(assert (not d!1828418))

(assert (not b!5804757))

(assert (not d!1828436))

(assert (not b!5805135))

(assert (not b!5804634))

(assert (not b_lambda!218797))

(assert (not d!1828440))

(assert (not bm!453135))

(assert (not b!5805102))

(assert (not d!1828482))

(assert (not b!5805038))

(assert (not b!5804927))

(assert (not bm!453101))

(assert (not b!5805042))

(assert (not b!5804766))

(assert (not d!1828528))

(assert (not d!1828522))

(assert (not bm!453088))

(assert (not b!5805156))

(assert (not bm!453075))

(assert (not d!1828422))

(assert (not d!1828438))

(assert (not b!5805090))

(assert (not b!5804648))

(assert (not bm!453092))

(assert (not d!1828510))

(assert (not b!5805061))

(assert (not bm!453049))

(assert (not b!5805162))

(assert (not b!5804696))

(assert (not d!1828508))

(assert (not b!5805103))

(assert (not b!5805122))

(assert (not b!5805134))

(assert (not b!5804832))

(assert (not b_lambda!218795))

(assert (not d!1828342))

(assert (not d!1828524))

(assert (not bm!453143))

(assert (not b!5805170))

(assert (not b!5804995))

(assert (not bm!453089))

(assert (not b!5805056))

(assert (not d!1828514))

(assert (not b!5805034))

(assert (not bm!453100))

(assert (not b!5805115))

(assert (not b!5805160))

(assert (not b!5805138))

(assert (not b!5804650))

(assert (not bm!453114))

(assert (not b!5805094))

(assert (not b!5804749))

(assert (not b!5804882))

(assert (not b!5804777))

(assert (not b!5804712))

(assert (not b!5805097))

(assert (not bm!453069))

(assert (not d!1828320))

(assert (not d!1828362))

(assert (not bm!453119))

(assert (not b!5804937))

(assert (not d!1828504))

(assert (not b!5805143))

(assert (not bs!1370700))

(assert (not bm!453105))

(assert (not b!5805111))

(assert (not bm!453065))

(assert (not bm!453066))

(assert (not b!5805118))

(assert (not b!5805153))

(assert (not b!5804677))

(assert (not b!5804736))

(assert (not b!5804788))

(assert (not bm!453117))

(assert (not b!5804966))

(assert (not b!5805085))

(assert (not b!5804925))

(assert (not b!5804838))

(assert (not b!5805120))

(assert (not bm!453054))

(assert (not b!5805145))

(assert (not b!5804671))

(assert (not b!5805082))

(assert (not b!5805070))

(assert (not b!5805087))

(assert (not bm!453042))

(assert (not d!1828486))

(assert (not bm!453055))

(assert (not b!5805191))

(assert (not b!5805037))

(assert (not b!5804807))

(assert (not b!5805179))

(assert (not bm!453062))

(assert (not b!5804721))

(assert (not d!1828356))

(assert (not b!5804956))

(assert (not bm!453046))

(assert (not b!5804744))

(assert (not b_lambda!218841))

(assert (not b!5804892))

(assert (not b!5805163))

(assert (not b!5804993))

(assert (not b!5804790))

(assert (not b!5804667))

(assert (not b!5805175))

(assert (not b!5805137))

(assert (not b!5804889))

(assert (not d!1828428))

(assert (not d!1828382))

(assert (not d!1828516))

(assert (not b!5805180))

(assert (not b_lambda!218839))

(assert (not b!5804934))

(assert (not b_lambda!218831))

(assert (not bm!453113))

(assert (not b!5804695))

(assert (not b!5805131))

(assert (not bm!453115))

(assert (not b!5804697))

(assert (not b!5804884))

(assert (not d!1828352))

(assert (not b!5805194))

(assert (not b!5804973))

(assert (not b!5804623))

(assert (not b!5805136))

(assert (not d!1828400))

(assert (not b_lambda!218835))

(assert (not b!5804974))

(assert (not bm!453095))

(assert (not b!5805127))

(assert (not d!1828326))

(assert (not bm!453086))

(assert (not b!5805041))

(assert (not d!1828512))

(assert (not b!5804926))

(assert (not d!1828374))

(assert (not b!5805166))

(assert (not b!5805040))

(assert (not b!5804681))

(assert (not b!5805051))

(assert (not b!5805130))

(assert (not bm!453106))

(assert (not b!5804964))

(assert (not d!1828384))

(assert (not b!5805158))

(assert (not b!5805046))

(assert (not b!5805149))

(assert (not b!5804750))

(assert (not d!1828324))

(assert (not b!5804821))

(assert (not b!5804994))

(assert (not b!5804835))

(assert (not b!5805110))

(assert (not bm!453118))

(assert (not b!5804954))

(assert (not b!5804859))

(assert (not b!5805176))

(assert (not b!5804614))

(assert (not b!5804972))

(assert (not b!5805151))

(assert (not b!5804836))

(assert (not bm!453073))

(assert (not d!1828470))

(assert (not d!1828520))

(assert (not b!5805105))

(assert (not b!5804793))

(assert (not b!5805126))

(assert (not b_lambda!218845))

(assert (not setNonEmpty!39059))

(assert tp_is_empty!40885)

(assert (not bm!453058))

(assert (not b!5804917))

(assert (not b!5804669))

(assert (not d!1828408))

(assert (not b!5805106))

(assert (not d!1828416))

(assert (not b!5804939))

(assert (not bm!453122))

(assert (not b!5805159))

(assert (not bm!453120))

(assert (not bm!453072))

(assert (not bm!453140))

(assert (not d!1828424))

(assert (not d!1828488))

(assert (not b!5804970))

(assert (not b!5804897))

(assert (not b_lambda!218843))

(assert (not b!5804911))

(assert (not b!5804738))

(assert (not b!5804768))

(assert (not b!5804737))

(assert (not d!1828354))

(assert (not b!5805167))

(assert (not bm!453094))

(assert (not bm!453043))

(assert (not b!5805183))

(assert (not d!1828444))

(assert (not d!1828420))

(assert (not b!5804948))

(assert (not b!5805171))

(assert (not b_lambda!218837))

(assert (not b!5805081))

(assert (not b!5804991))

(assert (not b!5805172))

(assert (not b!5805033))

(assert (not bm!453059))

(assert (not b!5804822))

(assert (not b!5804986))

(assert (not b!5804779))

(assert (not bm!453083))

(assert (not b!5804830))

(assert (not b!5804971))

(assert (not b!5804985))

(assert (not b!5804794))

(assert (not b!5805146))

(assert (not bm!453048))

(assert (not d!1828526))

(assert (not b!5804668))

(assert (not b!5804831))

(assert (not b_lambda!218833))

(assert (not d!1828456))

(assert (not d!1828364))

(assert (not d!1828380))

(assert (not b!5805001))

(assert (not b!5805101))

(assert (not d!1828378))

(assert (not b!5805058))

(assert (not b!5805116))

(assert (not b!5805173))

(assert (not b!5804933))

(assert (not b!5804690))

(assert (not b!5804789))

(assert (not b!5805139))

(assert (not bm!453133))

(assert (not d!1828346))

(assert (not b!5805132))

(assert (not b!5804894))

(assert (not bm!453110))

(assert (not b!5804931))

(assert (not b!5805114))

(assert (not b!5804887))

(assert (not b!5804698))

(assert (not b!5805168))

(assert (not b!5804734))

(assert (not b!5805141))

(assert (not d!1828338))

(assert (not b!5805124))

(assert (not b!5805095))

(assert (not bm!453079))

(assert (not bm!453038))

(assert (not b!5805154))

(assert (not bm!453136))

(assert (not b!5804764))

(assert (not setNonEmpty!39057))

(assert (not b!5805112))

(assert (not b!5804689))

(assert (not b!5805109))

(assert (not d!1828376))

(assert (not b!5805189))

(assert (not b!5804699))

(assert (not d!1828468))

(assert (not d!1828480))

(assert (not bm!453076))

(assert (not bs!1370698))

(assert (not b!5804663))

(assert (not b!5804679))

(assert (not b!5804992))

(assert (not bm!453053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

