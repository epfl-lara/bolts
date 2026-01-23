; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!553456 () Bool)

(assert start!553456)

(declare-fun b!5234453 () Bool)

(assert (=> b!5234453 true))

(assert (=> b!5234453 true))

(declare-fun lambda!263049 () Int)

(declare-fun lambda!263048 () Int)

(assert (=> b!5234453 (not (= lambda!263049 lambda!263048))))

(assert (=> b!5234453 true))

(assert (=> b!5234453 true))

(declare-fun b!5234468 () Bool)

(assert (=> b!5234468 true))

(declare-fun b!5234448 () Bool)

(declare-fun e!3257308 () Bool)

(declare-fun e!3257320 () Bool)

(assert (=> b!5234448 (= e!3257308 e!3257320)))

(declare-fun res!2221796 () Bool)

(assert (=> b!5234448 (=> res!2221796 e!3257320)))

(declare-datatypes ((C!29926 0))(
  ( (C!29927 (val!24665 Int)) )
))
(declare-datatypes ((List!60783 0))(
  ( (Nil!60659) (Cons!60659 (h!67107 C!29926) (t!373964 List!60783)) )
))
(declare-fun s!2326 () List!60783)

(declare-fun e!3257312 () Bool)

(declare-datatypes ((Regex!14828 0))(
  ( (ElementMatch!14828 (c!904264 C!29926)) (Concat!23673 (regOne!30168 Regex!14828) (regTwo!30168 Regex!14828)) (EmptyExpr!14828) (Star!14828 (reg!15157 Regex!14828)) (EmptyLang!14828) (Union!14828 (regOne!30169 Regex!14828) (regTwo!30169 Regex!14828)) )
))
(declare-datatypes ((List!60784 0))(
  ( (Nil!60660) (Cons!60660 (h!67108 Regex!14828) (t!373965 List!60784)) )
))
(declare-datatypes ((Context!8424 0))(
  ( (Context!8425 (exprs!4712 List!60784)) )
))
(declare-fun z!1189 () (Set Context!8424))

(declare-fun matchZipper!1072 ((Set Context!8424) List!60783) Bool)

(assert (=> b!5234448 (= res!2221796 (not (= (matchZipper!1072 z!1189 s!2326) e!3257312)))))

(declare-fun res!2221800 () Bool)

(assert (=> b!5234448 (=> res!2221800 e!3257312)))

(declare-fun lt!2146108 () Bool)

(assert (=> b!5234448 (= res!2221800 lt!2146108)))

(declare-fun lt!2146133 () (Set Context!8424))

(assert (=> b!5234448 (= lt!2146108 (matchZipper!1072 lt!2146133 s!2326))))

(declare-datatypes ((Unit!152638 0))(
  ( (Unit!152639) )
))
(declare-fun lt!2146118 () Unit!152638)

(declare-fun e!3257322 () Unit!152638)

(assert (=> b!5234448 (= lt!2146118 e!3257322)))

(declare-fun c!904262 () Bool)

(declare-fun r!7292 () Regex!14828)

(declare-fun nullable!4997 (Regex!14828) Bool)

(assert (=> b!5234448 (= c!904262 (nullable!4997 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun lt!2146120 () (Set Context!8424))

(declare-fun lambda!263050 () Int)

(declare-fun lt!2146136 () Context!8424)

(declare-fun flatMap!555 ((Set Context!8424) Int) (Set Context!8424))

(declare-fun derivationStepZipperUp!200 (Context!8424 C!29926) (Set Context!8424))

(assert (=> b!5234448 (= (flatMap!555 lt!2146120 lambda!263050) (derivationStepZipperUp!200 lt!2146136 (h!67107 s!2326)))))

(declare-fun lt!2146119 () Unit!152638)

(declare-fun lemmaFlatMapOnSingletonSet!87 ((Set Context!8424) Context!8424 Int) Unit!152638)

(assert (=> b!5234448 (= lt!2146119 (lemmaFlatMapOnSingletonSet!87 lt!2146120 lt!2146136 lambda!263050))))

(declare-fun lt!2146131 () (Set Context!8424))

(assert (=> b!5234448 (= lt!2146131 (derivationStepZipperUp!200 lt!2146136 (h!67107 s!2326)))))

(declare-fun lt!2146114 () Unit!152638)

(declare-fun e!3257307 () Unit!152638)

(assert (=> b!5234448 (= lt!2146114 e!3257307)))

(declare-fun c!904263 () Bool)

(assert (=> b!5234448 (= c!904263 (nullable!4997 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun lt!2146109 () Context!8424)

(assert (=> b!5234448 (= (flatMap!555 lt!2146133 lambda!263050) (derivationStepZipperUp!200 lt!2146109 (h!67107 s!2326)))))

(declare-fun lt!2146125 () Unit!152638)

(assert (=> b!5234448 (= lt!2146125 (lemmaFlatMapOnSingletonSet!87 lt!2146133 lt!2146109 lambda!263050))))

(declare-fun lt!2146124 () (Set Context!8424))

(assert (=> b!5234448 (= lt!2146124 (derivationStepZipperUp!200 lt!2146109 (h!67107 s!2326)))))

(assert (=> b!5234448 (= lt!2146120 (set.insert lt!2146136 (as set.empty (Set Context!8424))))))

(declare-fun lt!2146126 () List!60784)

(assert (=> b!5234448 (= lt!2146136 (Context!8425 lt!2146126))))

(declare-datatypes ((List!60785 0))(
  ( (Nil!60661) (Cons!60661 (h!67109 Context!8424) (t!373966 List!60785)) )
))
(declare-fun zl!343 () List!60785)

(assert (=> b!5234448 (= lt!2146126 (Cons!60660 (regTwo!30169 (regOne!30168 r!7292)) (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(assert (=> b!5234448 (= lt!2146133 (set.insert lt!2146109 (as set.empty (Set Context!8424))))))

(declare-fun lt!2146130 () List!60784)

(assert (=> b!5234448 (= lt!2146109 (Context!8425 lt!2146130))))

(assert (=> b!5234448 (= lt!2146130 (Cons!60660 (regOne!30169 (regOne!30168 r!7292)) (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun e!3257302 () Bool)

(declare-fun tp!1466571 () Bool)

(declare-fun e!3257311 () Bool)

(declare-fun b!5234449 () Bool)

(declare-fun inv!80318 (Context!8424) Bool)

(assert (=> b!5234449 (= e!3257302 (and (inv!80318 (h!67109 zl!343)) e!3257311 tp!1466571))))

(declare-fun b!5234450 () Bool)

(declare-fun res!2221805 () Bool)

(declare-fun e!3257316 () Bool)

(assert (=> b!5234450 (=> res!2221805 e!3257316)))

(assert (=> b!5234450 (= res!2221805 (or (is-EmptyExpr!14828 r!7292) (is-EmptyLang!14828 r!7292) (is-ElementMatch!14828 r!7292) (is-Union!14828 r!7292) (not (is-Concat!23673 r!7292))))))

(declare-fun b!5234451 () Bool)

(declare-fun e!3257301 () Bool)

(declare-fun lt!2146139 () (Set Context!8424))

(assert (=> b!5234451 (= e!3257301 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(declare-fun b!5234452 () Bool)

(declare-fun e!3257317 () Bool)

(declare-fun e!3257310 () Bool)

(assert (=> b!5234452 (= e!3257317 e!3257310)))

(declare-fun res!2221788 () Bool)

(assert (=> b!5234452 (=> res!2221788 e!3257310)))

(declare-fun lt!2146106 () List!60785)

(declare-fun lt!2146135 () Int)

(declare-fun zipperDepthTotal!9 (List!60785) Int)

(assert (=> b!5234452 (= res!2221788 (>= (zipperDepthTotal!9 lt!2146106) lt!2146135))))

(assert (=> b!5234452 (= lt!2146106 (Cons!60661 lt!2146136 Nil!60661))))

(declare-fun b!5234454 () Bool)

(declare-fun e!3257318 () Bool)

(assert (=> b!5234454 (= e!3257318 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(declare-fun b!5234455 () Bool)

(declare-fun res!2221809 () Bool)

(assert (=> b!5234455 (=> res!2221809 e!3257316)))

(declare-fun generalisedUnion!757 (List!60784) Regex!14828)

(declare-fun unfocusZipperList!270 (List!60785) List!60784)

(assert (=> b!5234455 (= res!2221809 (not (= r!7292 (generalisedUnion!757 (unfocusZipperList!270 zl!343)))))))

(declare-fun b!5234456 () Bool)

(declare-fun e!3257321 () Unit!152638)

(declare-fun Unit!152640 () Unit!152638)

(assert (=> b!5234456 (= e!3257321 Unit!152640)))

(declare-fun lt!2146100 () Unit!152638)

(declare-fun lt!2146115 () (Set Context!8424))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!65 ((Set Context!8424) (Set Context!8424) List!60783) Unit!152638)

(assert (=> b!5234456 (= lt!2146100 (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146115 lt!2146139 (t!373964 s!2326)))))

(declare-fun res!2221797 () Bool)

(assert (=> b!5234456 (= res!2221797 (matchZipper!1072 lt!2146115 (t!373964 s!2326)))))

(assert (=> b!5234456 (=> res!2221797 e!3257301)))

(assert (=> b!5234456 (= (matchZipper!1072 (set.union lt!2146115 lt!2146139) (t!373964 s!2326)) e!3257301)))

(declare-fun b!5234457 () Bool)

(declare-fun res!2221810 () Bool)

(assert (=> b!5234457 (=> res!2221810 e!3257316)))

(declare-fun isEmpty!32585 (List!60785) Bool)

(assert (=> b!5234457 (= res!2221810 (not (isEmpty!32585 (t!373966 zl!343))))))

(declare-fun b!5234458 () Bool)

(declare-fun e!3257324 () Bool)

(declare-fun tp_is_empty!38909 () Bool)

(assert (=> b!5234458 (= e!3257324 tp_is_empty!38909)))

(declare-fun b!5234459 () Bool)

(declare-fun e!3257319 () Bool)

(declare-fun tp!1466572 () Bool)

(assert (=> b!5234459 (= e!3257319 tp!1466572)))

(declare-fun b!5234460 () Bool)

(declare-fun e!3257313 () Bool)

(declare-fun e!3257306 () Bool)

(assert (=> b!5234460 (= e!3257313 e!3257306)))

(declare-fun res!2221792 () Bool)

(assert (=> b!5234460 (=> (not res!2221792) (not e!3257306))))

(declare-fun lt!2146127 () Regex!14828)

(assert (=> b!5234460 (= res!2221792 (= r!7292 lt!2146127))))

(declare-fun unfocusZipper!570 (List!60785) Regex!14828)

(assert (=> b!5234460 (= lt!2146127 (unfocusZipper!570 zl!343))))

(declare-fun b!5234461 () Bool)

(declare-fun e!3257314 () Bool)

(declare-fun tp!1466573 () Bool)

(assert (=> b!5234461 (= e!3257314 (and tp_is_empty!38909 tp!1466573))))

(declare-fun b!5234462 () Bool)

(assert (=> b!5234462 (= e!3257320 e!3257317)))

(declare-fun res!2221811 () Bool)

(assert (=> b!5234462 (=> res!2221811 e!3257317)))

(declare-fun lt!2146138 () Int)

(assert (=> b!5234462 (= res!2221811 (>= lt!2146138 lt!2146135))))

(assert (=> b!5234462 (= lt!2146135 (zipperDepthTotal!9 zl!343))))

(declare-fun lt!2146132 () List!60785)

(assert (=> b!5234462 (= lt!2146138 (zipperDepthTotal!9 lt!2146132))))

(assert (=> b!5234462 (= lt!2146132 (Cons!60661 lt!2146109 Nil!60661))))

(declare-fun b!5234463 () Bool)

(declare-fun tp!1466578 () Bool)

(declare-fun tp!1466570 () Bool)

(assert (=> b!5234463 (= e!3257324 (and tp!1466578 tp!1466570))))

(declare-fun b!5234464 () Bool)

(declare-fun tp!1466575 () Bool)

(assert (=> b!5234464 (= e!3257324 tp!1466575)))

(declare-fun b!5234465 () Bool)

(declare-fun res!2221794 () Bool)

(declare-fun e!3257305 () Bool)

(assert (=> b!5234465 (=> res!2221794 e!3257305)))

(declare-fun isEmpty!32586 (List!60784) Bool)

(assert (=> b!5234465 (= res!2221794 (isEmpty!32586 (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun tp!1466574 () Bool)

(declare-fun setElem!33356 () Context!8424)

(declare-fun setRes!33356 () Bool)

(declare-fun setNonEmpty!33356 () Bool)

(assert (=> setNonEmpty!33356 (= setRes!33356 (and tp!1466574 (inv!80318 setElem!33356) e!3257319))))

(declare-fun setRest!33356 () (Set Context!8424))

(assert (=> setNonEmpty!33356 (= z!1189 (set.union (set.insert setElem!33356 (as set.empty (Set Context!8424))) setRest!33356))))

(declare-fun b!5234466 () Bool)

(declare-fun e!3257323 () Bool)

(declare-fun e!3257315 () Bool)

(assert (=> b!5234466 (= e!3257323 e!3257315)))

(declare-fun res!2221802 () Bool)

(assert (=> b!5234466 (=> res!2221802 e!3257315)))

(declare-fun lt!2146121 () (Set Context!8424))

(assert (=> b!5234466 (= res!2221802 (not (= lt!2146115 lt!2146121)))))

(declare-fun lt!2146107 () (Set Context!8424))

(declare-fun lt!2146099 () (Set Context!8424))

(assert (=> b!5234466 (= lt!2146121 (set.union lt!2146107 lt!2146099))))

(declare-fun lt!2146134 () Context!8424)

(declare-fun derivationStepZipperDown!276 (Regex!14828 Context!8424 C!29926) (Set Context!8424))

(assert (=> b!5234466 (= lt!2146099 (derivationStepZipperDown!276 (regTwo!30169 (regOne!30168 r!7292)) lt!2146134 (h!67107 s!2326)))))

(assert (=> b!5234466 (= lt!2146107 (derivationStepZipperDown!276 (regOne!30169 (regOne!30168 r!7292)) lt!2146134 (h!67107 s!2326)))))

(declare-fun b!5234467 () Bool)

(declare-fun tp!1466579 () Bool)

(declare-fun tp!1466577 () Bool)

(assert (=> b!5234467 (= e!3257324 (and tp!1466579 tp!1466577))))

(declare-fun setIsEmpty!33356 () Bool)

(assert (=> setIsEmpty!33356 setRes!33356))

(assert (=> b!5234468 (= e!3257305 e!3257323)))

(declare-fun res!2221790 () Bool)

(assert (=> b!5234468 (=> res!2221790 e!3257323)))

(assert (=> b!5234468 (= res!2221790 (or (and (is-ElementMatch!14828 (regOne!30168 r!7292)) (= (c!904264 (regOne!30168 r!7292)) (h!67107 s!2326))) (not (is-Union!14828 (regOne!30168 r!7292)))))))

(declare-fun lt!2146116 () Unit!152638)

(assert (=> b!5234468 (= lt!2146116 e!3257321)))

(declare-fun c!904261 () Bool)

(assert (=> b!5234468 (= c!904261 (nullable!4997 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(assert (=> b!5234468 (= (flatMap!555 z!1189 lambda!263050) (derivationStepZipperUp!200 (h!67109 zl!343) (h!67107 s!2326)))))

(declare-fun lt!2146102 () Unit!152638)

(assert (=> b!5234468 (= lt!2146102 (lemmaFlatMapOnSingletonSet!87 z!1189 (h!67109 zl!343) lambda!263050))))

(assert (=> b!5234468 (= lt!2146139 (derivationStepZipperUp!200 lt!2146134 (h!67107 s!2326)))))

(assert (=> b!5234468 (= lt!2146115 (derivationStepZipperDown!276 (h!67108 (exprs!4712 (h!67109 zl!343))) lt!2146134 (h!67107 s!2326)))))

(assert (=> b!5234468 (= lt!2146134 (Context!8425 (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun lt!2146104 () (Set Context!8424))

(assert (=> b!5234468 (= lt!2146104 (derivationStepZipperUp!200 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343))))) (h!67107 s!2326)))))

(declare-fun b!5234469 () Bool)

(declare-fun e!3257303 () Bool)

(assert (=> b!5234469 (= e!3257303 (not (matchZipper!1072 lt!2146099 (t!373964 s!2326))))))

(declare-fun b!5234470 () Bool)

(declare-fun e!3257309 () Bool)

(assert (=> b!5234470 (= e!3257309 (matchZipper!1072 lt!2146099 (t!373964 s!2326)))))

(declare-fun b!5234471 () Bool)

(assert (=> b!5234471 (= e!3257312 (matchZipper!1072 lt!2146120 s!2326))))

(declare-fun b!5234472 () Bool)

(declare-fun res!2221806 () Bool)

(assert (=> b!5234472 (=> res!2221806 e!3257316)))

(declare-fun generalisedConcat!497 (List!60784) Regex!14828)

(assert (=> b!5234472 (= res!2221806 (not (= r!7292 (generalisedConcat!497 (exprs!4712 (h!67109 zl!343))))))))

(declare-fun b!5234473 () Bool)

(declare-fun res!2221808 () Bool)

(assert (=> b!5234473 (=> res!2221808 e!3257316)))

(assert (=> b!5234473 (= res!2221808 (not (is-Cons!60660 (exprs!4712 (h!67109 zl!343)))))))

(assert (=> b!5234453 (= e!3257316 e!3257305)))

(declare-fun res!2221791 () Bool)

(assert (=> b!5234453 (=> res!2221791 e!3257305)))

(declare-fun lt!2146117 () Bool)

(declare-fun lt!2146110 () Bool)

(assert (=> b!5234453 (= res!2221791 (or (not (= lt!2146110 lt!2146117)) (is-Nil!60659 s!2326)))))

(declare-fun Exists!2009 (Int) Bool)

(assert (=> b!5234453 (= (Exists!2009 lambda!263048) (Exists!2009 lambda!263049))))

(declare-fun lt!2146105 () Unit!152638)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!663 (Regex!14828 Regex!14828 List!60783) Unit!152638)

(assert (=> b!5234453 (= lt!2146105 (lemmaExistCutMatchRandMatchRSpecEquivalent!663 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326))))

(assert (=> b!5234453 (= lt!2146117 (Exists!2009 lambda!263048))))

(declare-datatypes ((tuple2!64054 0))(
  ( (tuple2!64055 (_1!35330 List!60783) (_2!35330 List!60783)) )
))
(declare-datatypes ((Option!14939 0))(
  ( (None!14938) (Some!14938 (v!50967 tuple2!64054)) )
))
(declare-fun isDefined!11642 (Option!14939) Bool)

(declare-fun findConcatSeparation!1353 (Regex!14828 Regex!14828 List!60783 List!60783 List!60783) Option!14939)

(assert (=> b!5234453 (= lt!2146117 (isDefined!11642 (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) Nil!60659 s!2326 s!2326)))))

(declare-fun lt!2146137 () Unit!152638)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1117 (Regex!14828 Regex!14828 List!60783) Unit!152638)

(assert (=> b!5234453 (= lt!2146137 (lemmaFindConcatSeparationEquivalentToExists!1117 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326))))

(declare-fun res!2221795 () Bool)

(assert (=> start!553456 (=> (not res!2221795) (not e!3257313))))

(declare-fun validRegex!6564 (Regex!14828) Bool)

(assert (=> start!553456 (= res!2221795 (validRegex!6564 r!7292))))

(assert (=> start!553456 e!3257313))

(assert (=> start!553456 e!3257324))

(declare-fun condSetEmpty!33356 () Bool)

(assert (=> start!553456 (= condSetEmpty!33356 (= z!1189 (as set.empty (Set Context!8424))))))

(assert (=> start!553456 setRes!33356))

(assert (=> start!553456 e!3257302))

(assert (=> start!553456 e!3257314))

(declare-fun b!5234474 () Bool)

(declare-fun Unit!152641 () Unit!152638)

(assert (=> b!5234474 (= e!3257322 Unit!152641)))

(declare-fun lt!2146101 () Unit!152638)

(assert (=> b!5234474 (= lt!2146101 (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146099 lt!2146139 (t!373964 s!2326)))))

(declare-fun res!2221789 () Bool)

(assert (=> b!5234474 (= res!2221789 (matchZipper!1072 lt!2146099 (t!373964 s!2326)))))

(declare-fun e!3257304 () Bool)

(assert (=> b!5234474 (=> res!2221789 e!3257304)))

(assert (=> b!5234474 (= (matchZipper!1072 (set.union lt!2146099 lt!2146139) (t!373964 s!2326)) e!3257304)))

(declare-fun b!5234475 () Bool)

(declare-fun Unit!152642 () Unit!152638)

(assert (=> b!5234475 (= e!3257307 Unit!152642)))

(declare-fun lt!2146111 () Unit!152638)

(assert (=> b!5234475 (= lt!2146111 (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146107 lt!2146139 (t!373964 s!2326)))))

(declare-fun res!2221799 () Bool)

(declare-fun lt!2146103 () Bool)

(assert (=> b!5234475 (= res!2221799 lt!2146103)))

(assert (=> b!5234475 (=> res!2221799 e!3257318)))

(assert (=> b!5234475 (= (matchZipper!1072 (set.union lt!2146107 lt!2146139) (t!373964 s!2326)) e!3257318)))

(declare-fun b!5234476 () Bool)

(assert (=> b!5234476 (= e!3257315 e!3257308)))

(declare-fun res!2221804 () Bool)

(assert (=> b!5234476 (=> res!2221804 e!3257308)))

(assert (=> b!5234476 (= res!2221804 e!3257303)))

(declare-fun res!2221801 () Bool)

(assert (=> b!5234476 (=> (not res!2221801) (not e!3257303))))

(assert (=> b!5234476 (= res!2221801 (not (= (matchZipper!1072 lt!2146115 (t!373964 s!2326)) lt!2146103)))))

(assert (=> b!5234476 (= (matchZipper!1072 lt!2146121 (t!373964 s!2326)) e!3257309)))

(declare-fun res!2221798 () Bool)

(assert (=> b!5234476 (=> res!2221798 e!3257309)))

(assert (=> b!5234476 (= res!2221798 lt!2146103)))

(assert (=> b!5234476 (= lt!2146103 (matchZipper!1072 lt!2146107 (t!373964 s!2326)))))

(declare-fun lt!2146129 () Unit!152638)

(assert (=> b!5234476 (= lt!2146129 (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146107 lt!2146099 (t!373964 s!2326)))))

(declare-fun b!5234477 () Bool)

(declare-fun Unit!152643 () Unit!152638)

(assert (=> b!5234477 (= e!3257322 Unit!152643)))

(declare-fun b!5234478 () Bool)

(declare-fun res!2221807 () Bool)

(assert (=> b!5234478 (=> res!2221807 e!3257320)))

(assert (=> b!5234478 (= res!2221807 (or (not (= lt!2146127 r!7292)) (not (= (exprs!4712 (h!67109 zl!343)) (Cons!60660 (regOne!30168 r!7292) (t!373965 (exprs!4712 (h!67109 zl!343))))))))))

(declare-fun b!5234479 () Bool)

(declare-fun lambda!263051 () Int)

(declare-fun forall!14256 (List!60784 Int) Bool)

(assert (=> b!5234479 (= e!3257310 (forall!14256 lt!2146130 lambda!263051))))

(declare-fun lt!2146113 () Regex!14828)

(declare-fun matchR!7013 (Regex!14828 List!60783) Bool)

(assert (=> b!5234479 (= (matchR!7013 lt!2146113 s!2326) (matchZipper!1072 lt!2146120 s!2326))))

(declare-fun lt!2146112 () Unit!152638)

(declare-fun theoremZipperRegexEquiv!262 ((Set Context!8424) List!60785 Regex!14828 List!60783) Unit!152638)

(assert (=> b!5234479 (= lt!2146112 (theoremZipperRegexEquiv!262 lt!2146120 lt!2146106 lt!2146113 s!2326))))

(assert (=> b!5234479 (= lt!2146113 (generalisedConcat!497 lt!2146126))))

(declare-fun lt!2146128 () Regex!14828)

(assert (=> b!5234479 (= (matchR!7013 lt!2146128 s!2326) lt!2146108)))

(declare-fun lt!2146123 () Unit!152638)

(assert (=> b!5234479 (= lt!2146123 (theoremZipperRegexEquiv!262 lt!2146133 lt!2146132 lt!2146128 s!2326))))

(assert (=> b!5234479 (= lt!2146128 (generalisedConcat!497 lt!2146130))))

(declare-fun b!5234480 () Bool)

(declare-fun Unit!152644 () Unit!152638)

(assert (=> b!5234480 (= e!3257321 Unit!152644)))

(declare-fun b!5234481 () Bool)

(declare-fun res!2221803 () Bool)

(assert (=> b!5234481 (=> (not res!2221803) (not e!3257313))))

(declare-fun toList!8612 ((Set Context!8424)) List!60785)

(assert (=> b!5234481 (= res!2221803 (= (toList!8612 z!1189) zl!343))))

(declare-fun b!5234482 () Bool)

(assert (=> b!5234482 (= e!3257306 (not e!3257316))))

(declare-fun res!2221793 () Bool)

(assert (=> b!5234482 (=> res!2221793 e!3257316)))

(assert (=> b!5234482 (= res!2221793 (not (is-Cons!60661 zl!343)))))

(declare-fun matchRSpec!1931 (Regex!14828 List!60783) Bool)

(assert (=> b!5234482 (= lt!2146110 (matchRSpec!1931 r!7292 s!2326))))

(assert (=> b!5234482 (= lt!2146110 (matchR!7013 r!7292 s!2326))))

(declare-fun lt!2146122 () Unit!152638)

(declare-fun mainMatchTheorem!1931 (Regex!14828 List!60783) Unit!152638)

(assert (=> b!5234482 (= lt!2146122 (mainMatchTheorem!1931 r!7292 s!2326))))

(declare-fun b!5234483 () Bool)

(declare-fun tp!1466576 () Bool)

(assert (=> b!5234483 (= e!3257311 tp!1466576)))

(declare-fun b!5234484 () Bool)

(declare-fun Unit!152645 () Unit!152638)

(assert (=> b!5234484 (= e!3257307 Unit!152645)))

(declare-fun b!5234485 () Bool)

(assert (=> b!5234485 (= e!3257304 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(assert (= (and start!553456 res!2221795) b!5234481))

(assert (= (and b!5234481 res!2221803) b!5234460))

(assert (= (and b!5234460 res!2221792) b!5234482))

(assert (= (and b!5234482 (not res!2221793)) b!5234457))

(assert (= (and b!5234457 (not res!2221810)) b!5234472))

(assert (= (and b!5234472 (not res!2221806)) b!5234473))

(assert (= (and b!5234473 (not res!2221808)) b!5234455))

(assert (= (and b!5234455 (not res!2221809)) b!5234450))

(assert (= (and b!5234450 (not res!2221805)) b!5234453))

(assert (= (and b!5234453 (not res!2221791)) b!5234465))

(assert (= (and b!5234465 (not res!2221794)) b!5234468))

(assert (= (and b!5234468 c!904261) b!5234456))

(assert (= (and b!5234468 (not c!904261)) b!5234480))

(assert (= (and b!5234456 (not res!2221797)) b!5234451))

(assert (= (and b!5234468 (not res!2221790)) b!5234466))

(assert (= (and b!5234466 (not res!2221802)) b!5234476))

(assert (= (and b!5234476 (not res!2221798)) b!5234470))

(assert (= (and b!5234476 res!2221801) b!5234469))

(assert (= (and b!5234476 (not res!2221804)) b!5234448))

(assert (= (and b!5234448 c!904263) b!5234475))

(assert (= (and b!5234448 (not c!904263)) b!5234484))

(assert (= (and b!5234475 (not res!2221799)) b!5234454))

(assert (= (and b!5234448 c!904262) b!5234474))

(assert (= (and b!5234448 (not c!904262)) b!5234477))

(assert (= (and b!5234474 (not res!2221789)) b!5234485))

(assert (= (and b!5234448 (not res!2221800)) b!5234471))

(assert (= (and b!5234448 (not res!2221796)) b!5234478))

(assert (= (and b!5234478 (not res!2221807)) b!5234462))

(assert (= (and b!5234462 (not res!2221811)) b!5234452))

(assert (= (and b!5234452 (not res!2221788)) b!5234479))

(assert (= (and start!553456 (is-ElementMatch!14828 r!7292)) b!5234458))

(assert (= (and start!553456 (is-Concat!23673 r!7292)) b!5234467))

(assert (= (and start!553456 (is-Star!14828 r!7292)) b!5234464))

(assert (= (and start!553456 (is-Union!14828 r!7292)) b!5234463))

(assert (= (and start!553456 condSetEmpty!33356) setIsEmpty!33356))

(assert (= (and start!553456 (not condSetEmpty!33356)) setNonEmpty!33356))

(assert (= setNonEmpty!33356 b!5234459))

(assert (= b!5234449 b!5234483))

(assert (= (and start!553456 (is-Cons!60661 zl!343)) b!5234449))

(assert (= (and start!553456 (is-Cons!60659 s!2326)) b!5234461))

(declare-fun m!6279920 () Bool)

(assert (=> b!5234454 m!6279920))

(declare-fun m!6279922 () Bool)

(assert (=> b!5234466 m!6279922))

(declare-fun m!6279924 () Bool)

(assert (=> b!5234466 m!6279924))

(declare-fun m!6279926 () Bool)

(assert (=> b!5234482 m!6279926))

(declare-fun m!6279928 () Bool)

(assert (=> b!5234482 m!6279928))

(declare-fun m!6279930 () Bool)

(assert (=> b!5234482 m!6279930))

(declare-fun m!6279932 () Bool)

(assert (=> b!5234475 m!6279932))

(declare-fun m!6279934 () Bool)

(assert (=> b!5234475 m!6279934))

(declare-fun m!6279936 () Bool)

(assert (=> b!5234453 m!6279936))

(declare-fun m!6279938 () Bool)

(assert (=> b!5234453 m!6279938))

(declare-fun m!6279940 () Bool)

(assert (=> b!5234453 m!6279940))

(declare-fun m!6279942 () Bool)

(assert (=> b!5234453 m!6279942))

(assert (=> b!5234453 m!6279938))

(declare-fun m!6279944 () Bool)

(assert (=> b!5234453 m!6279944))

(assert (=> b!5234453 m!6279936))

(declare-fun m!6279946 () Bool)

(assert (=> b!5234453 m!6279946))

(declare-fun m!6279948 () Bool)

(assert (=> b!5234452 m!6279948))

(declare-fun m!6279950 () Bool)

(assert (=> b!5234481 m!6279950))

(assert (=> b!5234451 m!6279920))

(declare-fun m!6279952 () Bool)

(assert (=> b!5234468 m!6279952))

(declare-fun m!6279954 () Bool)

(assert (=> b!5234468 m!6279954))

(declare-fun m!6279956 () Bool)

(assert (=> b!5234468 m!6279956))

(declare-fun m!6279958 () Bool)

(assert (=> b!5234468 m!6279958))

(declare-fun m!6279960 () Bool)

(assert (=> b!5234468 m!6279960))

(declare-fun m!6279962 () Bool)

(assert (=> b!5234468 m!6279962))

(declare-fun m!6279964 () Bool)

(assert (=> b!5234468 m!6279964))

(declare-fun m!6279966 () Bool)

(assert (=> b!5234472 m!6279966))

(declare-fun m!6279968 () Bool)

(assert (=> b!5234460 m!6279968))

(declare-fun m!6279970 () Bool)

(assert (=> b!5234474 m!6279970))

(declare-fun m!6279972 () Bool)

(assert (=> b!5234474 m!6279972))

(declare-fun m!6279974 () Bool)

(assert (=> b!5234474 m!6279974))

(declare-fun m!6279976 () Bool)

(assert (=> b!5234479 m!6279976))

(declare-fun m!6279978 () Bool)

(assert (=> b!5234479 m!6279978))

(declare-fun m!6279980 () Bool)

(assert (=> b!5234479 m!6279980))

(declare-fun m!6279982 () Bool)

(assert (=> b!5234479 m!6279982))

(declare-fun m!6279984 () Bool)

(assert (=> b!5234479 m!6279984))

(declare-fun m!6279986 () Bool)

(assert (=> b!5234479 m!6279986))

(declare-fun m!6279988 () Bool)

(assert (=> b!5234479 m!6279988))

(declare-fun m!6279990 () Bool)

(assert (=> b!5234479 m!6279990))

(declare-fun m!6279992 () Bool)

(assert (=> b!5234449 m!6279992))

(declare-fun m!6279994 () Bool)

(assert (=> b!5234455 m!6279994))

(assert (=> b!5234455 m!6279994))

(declare-fun m!6279996 () Bool)

(assert (=> b!5234455 m!6279996))

(declare-fun m!6279998 () Bool)

(assert (=> b!5234456 m!6279998))

(declare-fun m!6280000 () Bool)

(assert (=> b!5234456 m!6280000))

(declare-fun m!6280002 () Bool)

(assert (=> b!5234456 m!6280002))

(declare-fun m!6280004 () Bool)

(assert (=> b!5234448 m!6280004))

(declare-fun m!6280006 () Bool)

(assert (=> b!5234448 m!6280006))

(declare-fun m!6280008 () Bool)

(assert (=> b!5234448 m!6280008))

(declare-fun m!6280010 () Bool)

(assert (=> b!5234448 m!6280010))

(declare-fun m!6280012 () Bool)

(assert (=> b!5234448 m!6280012))

(declare-fun m!6280014 () Bool)

(assert (=> b!5234448 m!6280014))

(declare-fun m!6280016 () Bool)

(assert (=> b!5234448 m!6280016))

(declare-fun m!6280018 () Bool)

(assert (=> b!5234448 m!6280018))

(declare-fun m!6280020 () Bool)

(assert (=> b!5234448 m!6280020))

(declare-fun m!6280022 () Bool)

(assert (=> b!5234448 m!6280022))

(declare-fun m!6280024 () Bool)

(assert (=> b!5234448 m!6280024))

(declare-fun m!6280026 () Bool)

(assert (=> b!5234448 m!6280026))

(assert (=> b!5234469 m!6279972))

(declare-fun m!6280028 () Bool)

(assert (=> b!5234457 m!6280028))

(assert (=> b!5234476 m!6280000))

(declare-fun m!6280030 () Bool)

(assert (=> b!5234476 m!6280030))

(declare-fun m!6280032 () Bool)

(assert (=> b!5234476 m!6280032))

(declare-fun m!6280034 () Bool)

(assert (=> b!5234476 m!6280034))

(assert (=> b!5234485 m!6279920))

(declare-fun m!6280036 () Bool)

(assert (=> start!553456 m!6280036))

(declare-fun m!6280038 () Bool)

(assert (=> b!5234462 m!6280038))

(declare-fun m!6280040 () Bool)

(assert (=> b!5234462 m!6280040))

(assert (=> b!5234471 m!6279990))

(assert (=> b!5234470 m!6279972))

(declare-fun m!6280042 () Bool)

(assert (=> setNonEmpty!33356 m!6280042))

(declare-fun m!6280044 () Bool)

(assert (=> b!5234465 m!6280044))

(push 1)

(assert (not b!5234459))

(assert (not b!5234483))

(assert (not b!5234479))

(assert (not b!5234463))

(assert (not b!5234471))

(assert (not b!5234449))

(assert (not b!5234475))

(assert (not b!5234470))

(assert (not b!5234452))

(assert (not b!5234469))

(assert (not b!5234461))

(assert (not setNonEmpty!33356))

(assert (not b!5234481))

(assert (not b!5234462))

(assert (not b!5234465))

(assert (not b!5234467))

(assert (not b!5234476))

(assert tp_is_empty!38909)

(assert (not b!5234453))

(assert (not b!5234482))

(assert (not b!5234455))

(assert (not b!5234456))

(assert (not b!5234457))

(assert (not b!5234451))

(assert (not b!5234454))

(assert (not b!5234468))

(assert (not b!5234448))

(assert (not b!5234485))

(assert (not start!553456))

(assert (not b!5234466))

(assert (not b!5234474))

(assert (not b!5234460))

(assert (not b!5234472))

(assert (not b!5234464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1687486 () Bool)

(declare-fun e!3257405 () Bool)

(assert (=> d!1687486 (= (matchZipper!1072 (set.union lt!2146107 lt!2146139) (t!373964 s!2326)) e!3257405)))

(declare-fun res!2221898 () Bool)

(assert (=> d!1687486 (=> res!2221898 e!3257405)))

(assert (=> d!1687486 (= res!2221898 (matchZipper!1072 lt!2146107 (t!373964 s!2326)))))

(declare-fun lt!2146265 () Unit!152638)

(declare-fun choose!38928 ((Set Context!8424) (Set Context!8424) List!60783) Unit!152638)

(assert (=> d!1687486 (= lt!2146265 (choose!38928 lt!2146107 lt!2146139 (t!373964 s!2326)))))

(assert (=> d!1687486 (= (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146107 lt!2146139 (t!373964 s!2326)) lt!2146265)))

(declare-fun b!5234626 () Bool)

(assert (=> b!5234626 (= e!3257405 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(assert (= (and d!1687486 (not res!2221898)) b!5234626))

(assert (=> d!1687486 m!6279934))

(assert (=> d!1687486 m!6280032))

(declare-fun m!6280172 () Bool)

(assert (=> d!1687486 m!6280172))

(assert (=> b!5234626 m!6279920))

(assert (=> b!5234475 d!1687486))

(declare-fun d!1687488 () Bool)

(declare-fun c!904284 () Bool)

(declare-fun isEmpty!32589 (List!60783) Bool)

(assert (=> d!1687488 (= c!904284 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257408 () Bool)

(assert (=> d!1687488 (= (matchZipper!1072 (set.union lt!2146107 lt!2146139) (t!373964 s!2326)) e!3257408)))

(declare-fun b!5234631 () Bool)

(declare-fun nullableZipper!1247 ((Set Context!8424)) Bool)

(assert (=> b!5234631 (= e!3257408 (nullableZipper!1247 (set.union lt!2146107 lt!2146139)))))

(declare-fun b!5234632 () Bool)

(declare-fun derivationStepZipper!1091 ((Set Context!8424) C!29926) (Set Context!8424))

(declare-fun head!11213 (List!60783) C!29926)

(declare-fun tail!10310 (List!60783) List!60783)

(assert (=> b!5234632 (= e!3257408 (matchZipper!1072 (derivationStepZipper!1091 (set.union lt!2146107 lt!2146139) (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687488 c!904284) b!5234631))

(assert (= (and d!1687488 (not c!904284)) b!5234632))

(declare-fun m!6280174 () Bool)

(assert (=> d!1687488 m!6280174))

(declare-fun m!6280176 () Bool)

(assert (=> b!5234631 m!6280176))

(declare-fun m!6280178 () Bool)

(assert (=> b!5234632 m!6280178))

(assert (=> b!5234632 m!6280178))

(declare-fun m!6280180 () Bool)

(assert (=> b!5234632 m!6280180))

(declare-fun m!6280182 () Bool)

(assert (=> b!5234632 m!6280182))

(assert (=> b!5234632 m!6280180))

(assert (=> b!5234632 m!6280182))

(declare-fun m!6280184 () Bool)

(assert (=> b!5234632 m!6280184))

(assert (=> b!5234475 d!1687488))

(declare-fun d!1687490 () Bool)

(declare-fun res!2221913 () Bool)

(declare-fun e!3257429 () Bool)

(assert (=> d!1687490 (=> res!2221913 e!3257429)))

(assert (=> d!1687490 (= res!2221913 (is-ElementMatch!14828 r!7292))))

(assert (=> d!1687490 (= (validRegex!6564 r!7292) e!3257429)))

(declare-fun c!904289 () Bool)

(declare-fun c!904290 () Bool)

(declare-fun call!370405 () Bool)

(declare-fun bm!370400 () Bool)

(assert (=> bm!370400 (= call!370405 (validRegex!6564 (ite c!904289 (reg!15157 r!7292) (ite c!904290 (regTwo!30169 r!7292) (regTwo!30168 r!7292)))))))

(declare-fun b!5234651 () Bool)

(declare-fun e!3257424 () Bool)

(declare-fun e!3257423 () Bool)

(assert (=> b!5234651 (= e!3257424 e!3257423)))

(declare-fun res!2221910 () Bool)

(assert (=> b!5234651 (= res!2221910 (not (nullable!4997 (reg!15157 r!7292))))))

(assert (=> b!5234651 (=> (not res!2221910) (not e!3257423))))

(declare-fun b!5234652 () Bool)

(declare-fun res!2221909 () Bool)

(declare-fun e!3257425 () Bool)

(assert (=> b!5234652 (=> res!2221909 e!3257425)))

(assert (=> b!5234652 (= res!2221909 (not (is-Concat!23673 r!7292)))))

(declare-fun e!3257426 () Bool)

(assert (=> b!5234652 (= e!3257426 e!3257425)))

(declare-fun bm!370401 () Bool)

(declare-fun call!370406 () Bool)

(assert (=> bm!370401 (= call!370406 call!370405)))

(declare-fun bm!370402 () Bool)

(declare-fun call!370407 () Bool)

(assert (=> bm!370402 (= call!370407 (validRegex!6564 (ite c!904290 (regOne!30169 r!7292) (regOne!30168 r!7292))))))

(declare-fun b!5234653 () Bool)

(declare-fun res!2221911 () Bool)

(declare-fun e!3257427 () Bool)

(assert (=> b!5234653 (=> (not res!2221911) (not e!3257427))))

(assert (=> b!5234653 (= res!2221911 call!370407)))

(assert (=> b!5234653 (= e!3257426 e!3257427)))

(declare-fun b!5234654 () Bool)

(declare-fun e!3257428 () Bool)

(assert (=> b!5234654 (= e!3257425 e!3257428)))

(declare-fun res!2221912 () Bool)

(assert (=> b!5234654 (=> (not res!2221912) (not e!3257428))))

(assert (=> b!5234654 (= res!2221912 call!370407)))

(declare-fun b!5234655 () Bool)

(assert (=> b!5234655 (= e!3257428 call!370406)))

(declare-fun b!5234656 () Bool)

(assert (=> b!5234656 (= e!3257427 call!370406)))

(declare-fun b!5234657 () Bool)

(assert (=> b!5234657 (= e!3257424 e!3257426)))

(assert (=> b!5234657 (= c!904290 (is-Union!14828 r!7292))))

(declare-fun b!5234658 () Bool)

(assert (=> b!5234658 (= e!3257423 call!370405)))

(declare-fun b!5234659 () Bool)

(assert (=> b!5234659 (= e!3257429 e!3257424)))

(assert (=> b!5234659 (= c!904289 (is-Star!14828 r!7292))))

(assert (= (and d!1687490 (not res!2221913)) b!5234659))

(assert (= (and b!5234659 c!904289) b!5234651))

(assert (= (and b!5234659 (not c!904289)) b!5234657))

(assert (= (and b!5234651 res!2221910) b!5234658))

(assert (= (and b!5234657 c!904290) b!5234653))

(assert (= (and b!5234657 (not c!904290)) b!5234652))

(assert (= (and b!5234653 res!2221911) b!5234656))

(assert (= (and b!5234652 (not res!2221909)) b!5234654))

(assert (= (and b!5234654 res!2221912) b!5234655))

(assert (= (or b!5234656 b!5234655) bm!370401))

(assert (= (or b!5234653 b!5234654) bm!370402))

(assert (= (or b!5234658 bm!370401) bm!370400))

(declare-fun m!6280186 () Bool)

(assert (=> bm!370400 m!6280186))

(declare-fun m!6280188 () Bool)

(assert (=> b!5234651 m!6280188))

(declare-fun m!6280190 () Bool)

(assert (=> bm!370402 m!6280190))

(assert (=> start!553456 d!1687490))

(declare-fun e!3257430 () Bool)

(declare-fun d!1687492 () Bool)

(assert (=> d!1687492 (= (matchZipper!1072 (set.union lt!2146099 lt!2146139) (t!373964 s!2326)) e!3257430)))

(declare-fun res!2221914 () Bool)

(assert (=> d!1687492 (=> res!2221914 e!3257430)))

(assert (=> d!1687492 (= res!2221914 (matchZipper!1072 lt!2146099 (t!373964 s!2326)))))

(declare-fun lt!2146266 () Unit!152638)

(assert (=> d!1687492 (= lt!2146266 (choose!38928 lt!2146099 lt!2146139 (t!373964 s!2326)))))

(assert (=> d!1687492 (= (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146099 lt!2146139 (t!373964 s!2326)) lt!2146266)))

(declare-fun b!5234660 () Bool)

(assert (=> b!5234660 (= e!3257430 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(assert (= (and d!1687492 (not res!2221914)) b!5234660))

(assert (=> d!1687492 m!6279974))

(assert (=> d!1687492 m!6279972))

(declare-fun m!6280192 () Bool)

(assert (=> d!1687492 m!6280192))

(assert (=> b!5234660 m!6279920))

(assert (=> b!5234474 d!1687492))

(declare-fun d!1687494 () Bool)

(declare-fun c!904291 () Bool)

(assert (=> d!1687494 (= c!904291 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257431 () Bool)

(assert (=> d!1687494 (= (matchZipper!1072 lt!2146099 (t!373964 s!2326)) e!3257431)))

(declare-fun b!5234661 () Bool)

(assert (=> b!5234661 (= e!3257431 (nullableZipper!1247 lt!2146099))))

(declare-fun b!5234662 () Bool)

(assert (=> b!5234662 (= e!3257431 (matchZipper!1072 (derivationStepZipper!1091 lt!2146099 (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687494 c!904291) b!5234661))

(assert (= (and d!1687494 (not c!904291)) b!5234662))

(assert (=> d!1687494 m!6280174))

(declare-fun m!6280194 () Bool)

(assert (=> b!5234661 m!6280194))

(assert (=> b!5234662 m!6280178))

(assert (=> b!5234662 m!6280178))

(declare-fun m!6280196 () Bool)

(assert (=> b!5234662 m!6280196))

(assert (=> b!5234662 m!6280182))

(assert (=> b!5234662 m!6280196))

(assert (=> b!5234662 m!6280182))

(declare-fun m!6280198 () Bool)

(assert (=> b!5234662 m!6280198))

(assert (=> b!5234474 d!1687494))

(declare-fun d!1687496 () Bool)

(declare-fun c!904292 () Bool)

(assert (=> d!1687496 (= c!904292 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257432 () Bool)

(assert (=> d!1687496 (= (matchZipper!1072 (set.union lt!2146099 lt!2146139) (t!373964 s!2326)) e!3257432)))

(declare-fun b!5234663 () Bool)

(assert (=> b!5234663 (= e!3257432 (nullableZipper!1247 (set.union lt!2146099 lt!2146139)))))

(declare-fun b!5234664 () Bool)

(assert (=> b!5234664 (= e!3257432 (matchZipper!1072 (derivationStepZipper!1091 (set.union lt!2146099 lt!2146139) (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687496 c!904292) b!5234663))

(assert (= (and d!1687496 (not c!904292)) b!5234664))

(assert (=> d!1687496 m!6280174))

(declare-fun m!6280200 () Bool)

(assert (=> b!5234663 m!6280200))

(assert (=> b!5234664 m!6280178))

(assert (=> b!5234664 m!6280178))

(declare-fun m!6280202 () Bool)

(assert (=> b!5234664 m!6280202))

(assert (=> b!5234664 m!6280182))

(assert (=> b!5234664 m!6280202))

(assert (=> b!5234664 m!6280182))

(declare-fun m!6280204 () Bool)

(assert (=> b!5234664 m!6280204))

(assert (=> b!5234474 d!1687496))

(declare-fun bs!1215189 () Bool)

(declare-fun d!1687498 () Bool)

(assert (= bs!1215189 (and d!1687498 b!5234479)))

(declare-fun lambda!263072 () Int)

(assert (=> bs!1215189 (= lambda!263072 lambda!263051)))

(declare-fun b!5234685 () Bool)

(declare-fun e!3257445 () Bool)

(assert (=> b!5234685 (= e!3257445 (isEmpty!32586 (t!373965 (unfocusZipperList!270 zl!343))))))

(declare-fun b!5234686 () Bool)

(declare-fun e!3257447 () Bool)

(declare-fun lt!2146269 () Regex!14828)

(declare-fun isUnion!224 (Regex!14828) Bool)

(assert (=> b!5234686 (= e!3257447 (isUnion!224 lt!2146269))))

(declare-fun b!5234687 () Bool)

(declare-fun e!3257446 () Bool)

(declare-fun e!3257449 () Bool)

(assert (=> b!5234687 (= e!3257446 e!3257449)))

(declare-fun c!904301 () Bool)

(assert (=> b!5234687 (= c!904301 (isEmpty!32586 (unfocusZipperList!270 zl!343)))))

(declare-fun b!5234688 () Bool)

(assert (=> b!5234688 (= e!3257449 e!3257447)))

(declare-fun c!904303 () Bool)

(declare-fun tail!10311 (List!60784) List!60784)

(assert (=> b!5234688 (= c!904303 (isEmpty!32586 (tail!10311 (unfocusZipperList!270 zl!343))))))

(declare-fun b!5234689 () Bool)

(declare-fun head!11214 (List!60784) Regex!14828)

(assert (=> b!5234689 (= e!3257447 (= lt!2146269 (head!11214 (unfocusZipperList!270 zl!343))))))

(declare-fun b!5234690 () Bool)

(declare-fun e!3257448 () Regex!14828)

(declare-fun e!3257450 () Regex!14828)

(assert (=> b!5234690 (= e!3257448 e!3257450)))

(declare-fun c!904302 () Bool)

(assert (=> b!5234690 (= c!904302 (is-Cons!60660 (unfocusZipperList!270 zl!343)))))

(declare-fun b!5234691 () Bool)

(assert (=> b!5234691 (= e!3257448 (h!67108 (unfocusZipperList!270 zl!343)))))

(declare-fun b!5234692 () Bool)

(assert (=> b!5234692 (= e!3257450 (Union!14828 (h!67108 (unfocusZipperList!270 zl!343)) (generalisedUnion!757 (t!373965 (unfocusZipperList!270 zl!343)))))))

(assert (=> d!1687498 e!3257446))

(declare-fun res!2221919 () Bool)

(assert (=> d!1687498 (=> (not res!2221919) (not e!3257446))))

(assert (=> d!1687498 (= res!2221919 (validRegex!6564 lt!2146269))))

(assert (=> d!1687498 (= lt!2146269 e!3257448)))

(declare-fun c!904304 () Bool)

(assert (=> d!1687498 (= c!904304 e!3257445)))

(declare-fun res!2221920 () Bool)

(assert (=> d!1687498 (=> (not res!2221920) (not e!3257445))))

(assert (=> d!1687498 (= res!2221920 (is-Cons!60660 (unfocusZipperList!270 zl!343)))))

(assert (=> d!1687498 (forall!14256 (unfocusZipperList!270 zl!343) lambda!263072)))

(assert (=> d!1687498 (= (generalisedUnion!757 (unfocusZipperList!270 zl!343)) lt!2146269)))

(declare-fun b!5234693 () Bool)

(assert (=> b!5234693 (= e!3257450 EmptyLang!14828)))

(declare-fun b!5234694 () Bool)

(declare-fun isEmptyLang!792 (Regex!14828) Bool)

(assert (=> b!5234694 (= e!3257449 (isEmptyLang!792 lt!2146269))))

(assert (= (and d!1687498 res!2221920) b!5234685))

(assert (= (and d!1687498 c!904304) b!5234691))

(assert (= (and d!1687498 (not c!904304)) b!5234690))

(assert (= (and b!5234690 c!904302) b!5234692))

(assert (= (and b!5234690 (not c!904302)) b!5234693))

(assert (= (and d!1687498 res!2221919) b!5234687))

(assert (= (and b!5234687 c!904301) b!5234694))

(assert (= (and b!5234687 (not c!904301)) b!5234688))

(assert (= (and b!5234688 c!904303) b!5234689))

(assert (= (and b!5234688 (not c!904303)) b!5234686))

(assert (=> b!5234687 m!6279994))

(declare-fun m!6280206 () Bool)

(assert (=> b!5234687 m!6280206))

(declare-fun m!6280208 () Bool)

(assert (=> d!1687498 m!6280208))

(assert (=> d!1687498 m!6279994))

(declare-fun m!6280210 () Bool)

(assert (=> d!1687498 m!6280210))

(declare-fun m!6280212 () Bool)

(assert (=> b!5234694 m!6280212))

(declare-fun m!6280214 () Bool)

(assert (=> b!5234692 m!6280214))

(declare-fun m!6280216 () Bool)

(assert (=> b!5234685 m!6280216))

(assert (=> b!5234689 m!6279994))

(declare-fun m!6280218 () Bool)

(assert (=> b!5234689 m!6280218))

(declare-fun m!6280220 () Bool)

(assert (=> b!5234686 m!6280220))

(assert (=> b!5234688 m!6279994))

(declare-fun m!6280222 () Bool)

(assert (=> b!5234688 m!6280222))

(assert (=> b!5234688 m!6280222))

(declare-fun m!6280224 () Bool)

(assert (=> b!5234688 m!6280224))

(assert (=> b!5234455 d!1687498))

(declare-fun bs!1215190 () Bool)

(declare-fun d!1687500 () Bool)

(assert (= bs!1215190 (and d!1687500 b!5234479)))

(declare-fun lambda!263075 () Int)

(assert (=> bs!1215190 (= lambda!263075 lambda!263051)))

(declare-fun bs!1215191 () Bool)

(assert (= bs!1215191 (and d!1687500 d!1687498)))

(assert (=> bs!1215191 (= lambda!263075 lambda!263072)))

(declare-fun lt!2146272 () List!60784)

(assert (=> d!1687500 (forall!14256 lt!2146272 lambda!263075)))

(declare-fun e!3257453 () List!60784)

(assert (=> d!1687500 (= lt!2146272 e!3257453)))

(declare-fun c!904307 () Bool)

(assert (=> d!1687500 (= c!904307 (is-Cons!60661 zl!343))))

(assert (=> d!1687500 (= (unfocusZipperList!270 zl!343) lt!2146272)))

(declare-fun b!5234699 () Bool)

(assert (=> b!5234699 (= e!3257453 (Cons!60660 (generalisedConcat!497 (exprs!4712 (h!67109 zl!343))) (unfocusZipperList!270 (t!373966 zl!343))))))

(declare-fun b!5234700 () Bool)

(assert (=> b!5234700 (= e!3257453 Nil!60660)))

(assert (= (and d!1687500 c!904307) b!5234699))

(assert (= (and d!1687500 (not c!904307)) b!5234700))

(declare-fun m!6280226 () Bool)

(assert (=> d!1687500 m!6280226))

(assert (=> b!5234699 m!6279966))

(declare-fun m!6280228 () Bool)

(assert (=> b!5234699 m!6280228))

(assert (=> b!5234455 d!1687500))

(declare-fun d!1687502 () Bool)

(declare-fun c!904308 () Bool)

(assert (=> d!1687502 (= c!904308 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257454 () Bool)

(assert (=> d!1687502 (= (matchZipper!1072 lt!2146139 (t!373964 s!2326)) e!3257454)))

(declare-fun b!5234701 () Bool)

(assert (=> b!5234701 (= e!3257454 (nullableZipper!1247 lt!2146139))))

(declare-fun b!5234702 () Bool)

(assert (=> b!5234702 (= e!3257454 (matchZipper!1072 (derivationStepZipper!1091 lt!2146139 (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687502 c!904308) b!5234701))

(assert (= (and d!1687502 (not c!904308)) b!5234702))

(assert (=> d!1687502 m!6280174))

(declare-fun m!6280230 () Bool)

(assert (=> b!5234701 m!6280230))

(assert (=> b!5234702 m!6280178))

(assert (=> b!5234702 m!6280178))

(declare-fun m!6280232 () Bool)

(assert (=> b!5234702 m!6280232))

(assert (=> b!5234702 m!6280182))

(assert (=> b!5234702 m!6280232))

(assert (=> b!5234702 m!6280182))

(declare-fun m!6280234 () Bool)

(assert (=> b!5234702 m!6280234))

(assert (=> b!5234454 d!1687502))

(declare-fun d!1687504 () Bool)

(declare-fun c!904309 () Bool)

(assert (=> d!1687504 (= c!904309 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257455 () Bool)

(assert (=> d!1687504 (= (matchZipper!1072 lt!2146115 (t!373964 s!2326)) e!3257455)))

(declare-fun b!5234703 () Bool)

(assert (=> b!5234703 (= e!3257455 (nullableZipper!1247 lt!2146115))))

(declare-fun b!5234704 () Bool)

(assert (=> b!5234704 (= e!3257455 (matchZipper!1072 (derivationStepZipper!1091 lt!2146115 (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687504 c!904309) b!5234703))

(assert (= (and d!1687504 (not c!904309)) b!5234704))

(assert (=> d!1687504 m!6280174))

(declare-fun m!6280236 () Bool)

(assert (=> b!5234703 m!6280236))

(assert (=> b!5234704 m!6280178))

(assert (=> b!5234704 m!6280178))

(declare-fun m!6280238 () Bool)

(assert (=> b!5234704 m!6280238))

(assert (=> b!5234704 m!6280182))

(assert (=> b!5234704 m!6280238))

(assert (=> b!5234704 m!6280182))

(declare-fun m!6280240 () Bool)

(assert (=> b!5234704 m!6280240))

(assert (=> b!5234476 d!1687504))

(declare-fun d!1687506 () Bool)

(declare-fun c!904310 () Bool)

(assert (=> d!1687506 (= c!904310 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257456 () Bool)

(assert (=> d!1687506 (= (matchZipper!1072 lt!2146121 (t!373964 s!2326)) e!3257456)))

(declare-fun b!5234705 () Bool)

(assert (=> b!5234705 (= e!3257456 (nullableZipper!1247 lt!2146121))))

(declare-fun b!5234706 () Bool)

(assert (=> b!5234706 (= e!3257456 (matchZipper!1072 (derivationStepZipper!1091 lt!2146121 (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687506 c!904310) b!5234705))

(assert (= (and d!1687506 (not c!904310)) b!5234706))

(assert (=> d!1687506 m!6280174))

(declare-fun m!6280242 () Bool)

(assert (=> b!5234705 m!6280242))

(assert (=> b!5234706 m!6280178))

(assert (=> b!5234706 m!6280178))

(declare-fun m!6280244 () Bool)

(assert (=> b!5234706 m!6280244))

(assert (=> b!5234706 m!6280182))

(assert (=> b!5234706 m!6280244))

(assert (=> b!5234706 m!6280182))

(declare-fun m!6280246 () Bool)

(assert (=> b!5234706 m!6280246))

(assert (=> b!5234476 d!1687506))

(declare-fun d!1687508 () Bool)

(declare-fun c!904311 () Bool)

(assert (=> d!1687508 (= c!904311 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257457 () Bool)

(assert (=> d!1687508 (= (matchZipper!1072 lt!2146107 (t!373964 s!2326)) e!3257457)))

(declare-fun b!5234707 () Bool)

(assert (=> b!5234707 (= e!3257457 (nullableZipper!1247 lt!2146107))))

(declare-fun b!5234708 () Bool)

(assert (=> b!5234708 (= e!3257457 (matchZipper!1072 (derivationStepZipper!1091 lt!2146107 (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687508 c!904311) b!5234707))

(assert (= (and d!1687508 (not c!904311)) b!5234708))

(assert (=> d!1687508 m!6280174))

(declare-fun m!6280248 () Bool)

(assert (=> b!5234707 m!6280248))

(assert (=> b!5234708 m!6280178))

(assert (=> b!5234708 m!6280178))

(declare-fun m!6280250 () Bool)

(assert (=> b!5234708 m!6280250))

(assert (=> b!5234708 m!6280182))

(assert (=> b!5234708 m!6280250))

(assert (=> b!5234708 m!6280182))

(declare-fun m!6280252 () Bool)

(assert (=> b!5234708 m!6280252))

(assert (=> b!5234476 d!1687508))

(declare-fun e!3257458 () Bool)

(declare-fun d!1687510 () Bool)

(assert (=> d!1687510 (= (matchZipper!1072 (set.union lt!2146107 lt!2146099) (t!373964 s!2326)) e!3257458)))

(declare-fun res!2221921 () Bool)

(assert (=> d!1687510 (=> res!2221921 e!3257458)))

(assert (=> d!1687510 (= res!2221921 (matchZipper!1072 lt!2146107 (t!373964 s!2326)))))

(declare-fun lt!2146273 () Unit!152638)

(assert (=> d!1687510 (= lt!2146273 (choose!38928 lt!2146107 lt!2146099 (t!373964 s!2326)))))

(assert (=> d!1687510 (= (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146107 lt!2146099 (t!373964 s!2326)) lt!2146273)))

(declare-fun b!5234709 () Bool)

(assert (=> b!5234709 (= e!3257458 (matchZipper!1072 lt!2146099 (t!373964 s!2326)))))

(assert (= (and d!1687510 (not res!2221921)) b!5234709))

(declare-fun m!6280254 () Bool)

(assert (=> d!1687510 m!6280254))

(assert (=> d!1687510 m!6280032))

(declare-fun m!6280256 () Bool)

(assert (=> d!1687510 m!6280256))

(assert (=> b!5234709 m!6279972))

(assert (=> b!5234476 d!1687510))

(declare-fun d!1687512 () Bool)

(assert (=> d!1687512 (= (isEmpty!32585 (t!373966 zl!343)) (is-Nil!60661 (t!373966 zl!343)))))

(assert (=> b!5234457 d!1687512))

(declare-fun e!3257459 () Bool)

(declare-fun d!1687514 () Bool)

(assert (=> d!1687514 (= (matchZipper!1072 (set.union lt!2146115 lt!2146139) (t!373964 s!2326)) e!3257459)))

(declare-fun res!2221922 () Bool)

(assert (=> d!1687514 (=> res!2221922 e!3257459)))

(assert (=> d!1687514 (= res!2221922 (matchZipper!1072 lt!2146115 (t!373964 s!2326)))))

(declare-fun lt!2146274 () Unit!152638)

(assert (=> d!1687514 (= lt!2146274 (choose!38928 lt!2146115 lt!2146139 (t!373964 s!2326)))))

(assert (=> d!1687514 (= (lemmaZipperConcatMatchesSameAsBothZippers!65 lt!2146115 lt!2146139 (t!373964 s!2326)) lt!2146274)))

(declare-fun b!5234710 () Bool)

(assert (=> b!5234710 (= e!3257459 (matchZipper!1072 lt!2146139 (t!373964 s!2326)))))

(assert (= (and d!1687514 (not res!2221922)) b!5234710))

(assert (=> d!1687514 m!6280002))

(assert (=> d!1687514 m!6280000))

(declare-fun m!6280258 () Bool)

(assert (=> d!1687514 m!6280258))

(assert (=> b!5234710 m!6279920))

(assert (=> b!5234456 d!1687514))

(assert (=> b!5234456 d!1687504))

(declare-fun d!1687516 () Bool)

(declare-fun c!904312 () Bool)

(assert (=> d!1687516 (= c!904312 (isEmpty!32589 (t!373964 s!2326)))))

(declare-fun e!3257460 () Bool)

(assert (=> d!1687516 (= (matchZipper!1072 (set.union lt!2146115 lt!2146139) (t!373964 s!2326)) e!3257460)))

(declare-fun b!5234711 () Bool)

(assert (=> b!5234711 (= e!3257460 (nullableZipper!1247 (set.union lt!2146115 lt!2146139)))))

(declare-fun b!5234712 () Bool)

(assert (=> b!5234712 (= e!3257460 (matchZipper!1072 (derivationStepZipper!1091 (set.union lt!2146115 lt!2146139) (head!11213 (t!373964 s!2326))) (tail!10310 (t!373964 s!2326))))))

(assert (= (and d!1687516 c!904312) b!5234711))

(assert (= (and d!1687516 (not c!904312)) b!5234712))

(assert (=> d!1687516 m!6280174))

(declare-fun m!6280260 () Bool)

(assert (=> b!5234711 m!6280260))

(assert (=> b!5234712 m!6280178))

(assert (=> b!5234712 m!6280178))

(declare-fun m!6280262 () Bool)

(assert (=> b!5234712 m!6280262))

(assert (=> b!5234712 m!6280182))

(assert (=> b!5234712 m!6280262))

(assert (=> b!5234712 m!6280182))

(declare-fun m!6280264 () Bool)

(assert (=> b!5234712 m!6280264))

(assert (=> b!5234456 d!1687516))

(assert (=> b!5234469 d!1687494))

(declare-fun d!1687518 () Bool)

(declare-fun choose!38929 ((Set Context!8424) Int) (Set Context!8424))

(assert (=> d!1687518 (= (flatMap!555 z!1189 lambda!263050) (choose!38929 z!1189 lambda!263050))))

(declare-fun bs!1215192 () Bool)

(assert (= bs!1215192 d!1687518))

(declare-fun m!6280266 () Bool)

(assert (=> bs!1215192 m!6280266))

(assert (=> b!5234468 d!1687518))

(declare-fun bm!370405 () Bool)

(declare-fun call!370410 () (Set Context!8424))

(assert (=> bm!370405 (= call!370410 (derivationStepZipperDown!276 (h!67108 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343))))))) (Context!8425 (t!373965 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343)))))))) (h!67107 s!2326)))))

(declare-fun b!5234723 () Bool)

(declare-fun e!3257467 () (Set Context!8424))

(declare-fun e!3257468 () (Set Context!8424))

(assert (=> b!5234723 (= e!3257467 e!3257468)))

(declare-fun c!904317 () Bool)

(assert (=> b!5234723 (= c!904317 (is-Cons!60660 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343))))))))))

(declare-fun b!5234724 () Bool)

(declare-fun e!3257469 () Bool)

(assert (=> b!5234724 (= e!3257469 (nullable!4997 (h!67108 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343)))))))))))

(declare-fun b!5234725 () Bool)

(assert (=> b!5234725 (= e!3257468 (as set.empty (Set Context!8424)))))

(declare-fun b!5234726 () Bool)

(assert (=> b!5234726 (= e!3257468 call!370410)))

(declare-fun b!5234727 () Bool)

(assert (=> b!5234727 (= e!3257467 (set.union call!370410 (derivationStepZipperUp!200 (Context!8425 (t!373965 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343)))))))) (h!67107 s!2326))))))

(declare-fun d!1687520 () Bool)

(declare-fun c!904318 () Bool)

(assert (=> d!1687520 (= c!904318 e!3257469)))

(declare-fun res!2221925 () Bool)

(assert (=> d!1687520 (=> (not res!2221925) (not e!3257469))))

(assert (=> d!1687520 (= res!2221925 (is-Cons!60660 (exprs!4712 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343))))))))))

(assert (=> d!1687520 (= (derivationStepZipperUp!200 (Context!8425 (Cons!60660 (h!67108 (exprs!4712 (h!67109 zl!343))) (t!373965 (exprs!4712 (h!67109 zl!343))))) (h!67107 s!2326)) e!3257467)))

(assert (= (and d!1687520 res!2221925) b!5234724))

(assert (= (and d!1687520 c!904318) b!5234727))

(assert (= (and d!1687520 (not c!904318)) b!5234723))

(assert (= (and b!5234723 c!904317) b!5234726))

(assert (= (and b!5234723 (not c!904317)) b!5234725))

(assert (= (or b!5234727 b!5234726) bm!370405))

(declare-fun m!6280268 () Bool)

(assert (=> bm!370405 m!6280268))

(declare-fun m!6280270 () Bool)

(assert (=> b!5234724 m!6280270))

(declare-fun m!6280272 () Bool)

(assert (=> b!5234727 m!6280272))

(assert (=> b!5234468 d!1687520))

(declare-fun bm!370406 () Bool)

(declare-fun call!370411 () (Set Context!8424))

(assert (=> bm!370406 (= call!370411 (derivationStepZipperDown!276 (h!67108 (exprs!4712 lt!2146134)) (Context!8425 (t!373965 (exprs!4712 lt!2146134))) (h!67107 s!2326)))))

(declare-fun b!5234728 () Bool)

(declare-fun e!3257470 () (Set Context!8424))

(declare-fun e!3257471 () (Set Context!8424))

(assert (=> b!5234728 (= e!3257470 e!3257471)))

(declare-fun c!904319 () Bool)

(assert (=> b!5234728 (= c!904319 (is-Cons!60660 (exprs!4712 lt!2146134)))))

(declare-fun b!5234729 () Bool)

(declare-fun e!3257472 () Bool)

(assert (=> b!5234729 (= e!3257472 (nullable!4997 (h!67108 (exprs!4712 lt!2146134))))))

(declare-fun b!5234730 () Bool)

(assert (=> b!5234730 (= e!3257471 (as set.empty (Set Context!8424)))))

(declare-fun b!5234731 () Bool)

(assert (=> b!5234731 (= e!3257471 call!370411)))

(declare-fun b!5234732 () Bool)

(assert (=> b!5234732 (= e!3257470 (set.union call!370411 (derivationStepZipperUp!200 (Context!8425 (t!373965 (exprs!4712 lt!2146134))) (h!67107 s!2326))))))

(declare-fun d!1687522 () Bool)

(declare-fun c!904320 () Bool)

(assert (=> d!1687522 (= c!904320 e!3257472)))

(declare-fun res!2221926 () Bool)

(assert (=> d!1687522 (=> (not res!2221926) (not e!3257472))))

(assert (=> d!1687522 (= res!2221926 (is-Cons!60660 (exprs!4712 lt!2146134)))))

(assert (=> d!1687522 (= (derivationStepZipperUp!200 lt!2146134 (h!67107 s!2326)) e!3257470)))

(assert (= (and d!1687522 res!2221926) b!5234729))

(assert (= (and d!1687522 c!904320) b!5234732))

(assert (= (and d!1687522 (not c!904320)) b!5234728))

(assert (= (and b!5234728 c!904319) b!5234731))

(assert (= (and b!5234728 (not c!904319)) b!5234730))

(assert (= (or b!5234732 b!5234731) bm!370406))

(declare-fun m!6280274 () Bool)

(assert (=> bm!370406 m!6280274))

(declare-fun m!6280276 () Bool)

(assert (=> b!5234729 m!6280276))

(declare-fun m!6280278 () Bool)

(assert (=> b!5234732 m!6280278))

(assert (=> b!5234468 d!1687522))

(declare-fun d!1687524 () Bool)

(declare-fun nullableFct!1399 (Regex!14828) Bool)

(assert (=> d!1687524 (= (nullable!4997 (h!67108 (exprs!4712 (h!67109 zl!343)))) (nullableFct!1399 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun bs!1215193 () Bool)

(assert (= bs!1215193 d!1687524))

(declare-fun m!6280280 () Bool)

(assert (=> bs!1215193 m!6280280))

(assert (=> b!5234468 d!1687524))

(declare-fun d!1687526 () Bool)

(declare-fun dynLambda!23969 (Int Context!8424) (Set Context!8424))

(assert (=> d!1687526 (= (flatMap!555 z!1189 lambda!263050) (dynLambda!23969 lambda!263050 (h!67109 zl!343)))))

(declare-fun lt!2146277 () Unit!152638)

(declare-fun choose!38930 ((Set Context!8424) Context!8424 Int) Unit!152638)

(assert (=> d!1687526 (= lt!2146277 (choose!38930 z!1189 (h!67109 zl!343) lambda!263050))))

(assert (=> d!1687526 (= z!1189 (set.insert (h!67109 zl!343) (as set.empty (Set Context!8424))))))

(assert (=> d!1687526 (= (lemmaFlatMapOnSingletonSet!87 z!1189 (h!67109 zl!343) lambda!263050) lt!2146277)))

(declare-fun b_lambda!202389 () Bool)

(assert (=> (not b_lambda!202389) (not d!1687526)))

(declare-fun bs!1215194 () Bool)

(assert (= bs!1215194 d!1687526))

(assert (=> bs!1215194 m!6279958))

(declare-fun m!6280282 () Bool)

(assert (=> bs!1215194 m!6280282))

(declare-fun m!6280284 () Bool)

(assert (=> bs!1215194 m!6280284))

(declare-fun m!6280286 () Bool)

(assert (=> bs!1215194 m!6280286))

(assert (=> b!5234468 d!1687526))

(declare-fun b!5234755 () Bool)

(declare-fun c!904331 () Bool)

(declare-fun e!3257487 () Bool)

(assert (=> b!5234755 (= c!904331 e!3257487)))

(declare-fun res!2221929 () Bool)

(assert (=> b!5234755 (=> (not res!2221929) (not e!3257487))))

(assert (=> b!5234755 (= res!2221929 (is-Concat!23673 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun e!3257490 () (Set Context!8424))

(declare-fun e!3257488 () (Set Context!8424))

(assert (=> b!5234755 (= e!3257490 e!3257488)))

(declare-fun b!5234756 () Bool)

(declare-fun e!3257486 () (Set Context!8424))

(assert (=> b!5234756 (= e!3257486 (as set.empty (Set Context!8424)))))

(declare-fun b!5234757 () Bool)

(declare-fun c!904332 () Bool)

(assert (=> b!5234757 (= c!904332 (is-Star!14828 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun e!3257485 () (Set Context!8424))

(assert (=> b!5234757 (= e!3257485 e!3257486)))

(declare-fun b!5234758 () Bool)

(declare-fun call!370426 () (Set Context!8424))

(declare-fun call!370429 () (Set Context!8424))

(assert (=> b!5234758 (= e!3257488 (set.union call!370426 call!370429))))

(declare-fun bm!370419 () Bool)

(declare-fun call!370425 () (Set Context!8424))

(assert (=> bm!370419 (= call!370429 call!370425)))

(declare-fun bm!370420 () Bool)

(declare-fun call!370427 () (Set Context!8424))

(assert (=> bm!370420 (= call!370427 call!370429)))

(declare-fun c!904333 () Bool)

(declare-fun call!370428 () List!60784)

(declare-fun bm!370421 () Bool)

(declare-fun $colon$colon!1297 (List!60784 Regex!14828) List!60784)

(assert (=> bm!370421 (= call!370428 ($colon$colon!1297 (exprs!4712 lt!2146134) (ite (or c!904331 c!904333) (regTwo!30168 (h!67108 (exprs!4712 (h!67109 zl!343)))) (h!67108 (exprs!4712 (h!67109 zl!343))))))))

(declare-fun d!1687528 () Bool)

(declare-fun c!904335 () Bool)

(assert (=> d!1687528 (= c!904335 (and (is-ElementMatch!14828 (h!67108 (exprs!4712 (h!67109 zl!343)))) (= (c!904264 (h!67108 (exprs!4712 (h!67109 zl!343)))) (h!67107 s!2326))))))

(declare-fun e!3257489 () (Set Context!8424))

(assert (=> d!1687528 (= (derivationStepZipperDown!276 (h!67108 (exprs!4712 (h!67109 zl!343))) lt!2146134 (h!67107 s!2326)) e!3257489)))

(declare-fun b!5234759 () Bool)

(assert (=> b!5234759 (= e!3257487 (nullable!4997 (regOne!30168 (h!67108 (exprs!4712 (h!67109 zl!343))))))))

(declare-fun b!5234760 () Bool)

(assert (=> b!5234760 (= e!3257486 call!370427)))

(declare-fun c!904334 () Bool)

(declare-fun call!370424 () List!60784)

(declare-fun bm!370422 () Bool)

(assert (=> bm!370422 (= call!370425 (derivationStepZipperDown!276 (ite c!904334 (regOne!30169 (h!67108 (exprs!4712 (h!67109 zl!343)))) (ite c!904331 (regTwo!30168 (h!67108 (exprs!4712 (h!67109 zl!343)))) (ite c!904333 (regOne!30168 (h!67108 (exprs!4712 (h!67109 zl!343)))) (reg!15157 (h!67108 (exprs!4712 (h!67109 zl!343))))))) (ite (or c!904334 c!904331) lt!2146134 (Context!8425 call!370424)) (h!67107 s!2326)))))

(declare-fun b!5234761 () Bool)

(assert (=> b!5234761 (= e!3257488 e!3257485)))

(assert (=> b!5234761 (= c!904333 (is-Concat!23673 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun b!5234762 () Bool)

(assert (=> b!5234762 (= e!3257489 (set.insert lt!2146134 (as set.empty (Set Context!8424))))))

(declare-fun bm!370423 () Bool)

(assert (=> bm!370423 (= call!370424 call!370428)))

(declare-fun b!5234763 () Bool)

(assert (=> b!5234763 (= e!3257490 (set.union call!370425 call!370426))))

(declare-fun b!5234764 () Bool)

(assert (=> b!5234764 (= e!3257489 e!3257490)))

(assert (=> b!5234764 (= c!904334 (is-Union!14828 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun bm!370424 () Bool)

(assert (=> bm!370424 (= call!370426 (derivationStepZipperDown!276 (ite c!904334 (regTwo!30169 (h!67108 (exprs!4712 (h!67109 zl!343)))) (regOne!30168 (h!67108 (exprs!4712 (h!67109 zl!343))))) (ite c!904334 lt!2146134 (Context!8425 call!370428)) (h!67107 s!2326)))))

(declare-fun b!5234765 () Bool)

(assert (=> b!5234765 (= e!3257485 call!370427)))

(assert (= (and d!1687528 c!904335) b!5234762))

(assert (= (and d!1687528 (not c!904335)) b!5234764))

(assert (= (and b!5234764 c!904334) b!5234763))

(assert (= (and b!5234764 (not c!904334)) b!5234755))

(assert (= (and b!5234755 res!2221929) b!5234759))

(assert (= (and b!5234755 c!904331) b!5234758))

(assert (= (and b!5234755 (not c!904331)) b!5234761))

(assert (= (and b!5234761 c!904333) b!5234765))

(assert (= (and b!5234761 (not c!904333)) b!5234757))

(assert (= (and b!5234757 c!904332) b!5234760))

(assert (= (and b!5234757 (not c!904332)) b!5234756))

(assert (= (or b!5234765 b!5234760) bm!370423))

(assert (= (or b!5234765 b!5234760) bm!370420))

(assert (= (or b!5234758 bm!370423) bm!370421))

(assert (= (or b!5234758 bm!370420) bm!370419))

(assert (= (or b!5234763 b!5234758) bm!370424))

(assert (= (or b!5234763 bm!370419) bm!370422))

(declare-fun m!6280288 () Bool)

(assert (=> bm!370422 m!6280288))

(declare-fun m!6280290 () Bool)

(assert (=> bm!370424 m!6280290))

(declare-fun m!6280292 () Bool)

(assert (=> b!5234759 m!6280292))

(declare-fun m!6280294 () Bool)

(assert (=> b!5234762 m!6280294))

(declare-fun m!6280296 () Bool)

(assert (=> bm!370421 m!6280296))

(assert (=> b!5234468 d!1687528))

(declare-fun bm!370425 () Bool)

(declare-fun call!370430 () (Set Context!8424))

(assert (=> bm!370425 (= call!370430 (derivationStepZipperDown!276 (h!67108 (exprs!4712 (h!67109 zl!343))) (Context!8425 (t!373965 (exprs!4712 (h!67109 zl!343)))) (h!67107 s!2326)))))

(declare-fun b!5234766 () Bool)

(declare-fun e!3257491 () (Set Context!8424))

(declare-fun e!3257492 () (Set Context!8424))

(assert (=> b!5234766 (= e!3257491 e!3257492)))

(declare-fun c!904336 () Bool)

(assert (=> b!5234766 (= c!904336 (is-Cons!60660 (exprs!4712 (h!67109 zl!343))))))

(declare-fun b!5234767 () Bool)

(declare-fun e!3257493 () Bool)

(assert (=> b!5234767 (= e!3257493 (nullable!4997 (h!67108 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun b!5234768 () Bool)

(assert (=> b!5234768 (= e!3257492 (as set.empty (Set Context!8424)))))

(declare-fun b!5234769 () Bool)

(assert (=> b!5234769 (= e!3257492 call!370430)))

(declare-fun b!5234770 () Bool)

(assert (=> b!5234770 (= e!3257491 (set.union call!370430 (derivationStepZipperUp!200 (Context!8425 (t!373965 (exprs!4712 (h!67109 zl!343)))) (h!67107 s!2326))))))

(declare-fun d!1687530 () Bool)

(declare-fun c!904337 () Bool)

(assert (=> d!1687530 (= c!904337 e!3257493)))

(declare-fun res!2221930 () Bool)

(assert (=> d!1687530 (=> (not res!2221930) (not e!3257493))))

(assert (=> d!1687530 (= res!2221930 (is-Cons!60660 (exprs!4712 (h!67109 zl!343))))))

(assert (=> d!1687530 (= (derivationStepZipperUp!200 (h!67109 zl!343) (h!67107 s!2326)) e!3257491)))

(assert (= (and d!1687530 res!2221930) b!5234767))

(assert (= (and d!1687530 c!904337) b!5234770))

(assert (= (and d!1687530 (not c!904337)) b!5234766))

(assert (= (and b!5234766 c!904336) b!5234769))

(assert (= (and b!5234766 (not c!904336)) b!5234768))

(assert (= (or b!5234770 b!5234769) bm!370425))

(declare-fun m!6280298 () Bool)

(assert (=> bm!370425 m!6280298))

(assert (=> b!5234767 m!6279964))

(declare-fun m!6280300 () Bool)

(assert (=> b!5234770 m!6280300))

(assert (=> b!5234468 d!1687530))

(declare-fun bs!1215195 () Bool)

(declare-fun d!1687532 () Bool)

(assert (= bs!1215195 (and d!1687532 b!5234479)))

(declare-fun lambda!263078 () Int)

(assert (=> bs!1215195 (= lambda!263078 lambda!263051)))

(declare-fun bs!1215196 () Bool)

(assert (= bs!1215196 (and d!1687532 d!1687498)))

(assert (=> bs!1215196 (= lambda!263078 lambda!263072)))

(declare-fun bs!1215197 () Bool)

(assert (= bs!1215197 (and d!1687532 d!1687500)))

(assert (=> bs!1215197 (= lambda!263078 lambda!263075)))

(assert (=> d!1687532 (= (inv!80318 (h!67109 zl!343)) (forall!14256 (exprs!4712 (h!67109 zl!343)) lambda!263078))))

(declare-fun bs!1215198 () Bool)

(assert (= bs!1215198 d!1687532))

(declare-fun m!6280302 () Bool)

(assert (=> bs!1215198 m!6280302))

(assert (=> b!5234449 d!1687532))

(declare-fun d!1687534 () Bool)

(assert (=> d!1687534 (= (flatMap!555 lt!2146133 lambda!263050) (choose!38929 lt!2146133 lambda!263050))))

(declare-fun bs!1215199 () Bool)

(assert (= bs!1215199 d!1687534))

(declare-fun m!6280304 () Bool)

(assert (=> bs!1215199 m!6280304))

(assert (=> b!5234448 d!1687534))

(declare-fun d!1687536 () Bool)

(assert (=> d!1687536 (= (nullable!4997 (regTwo!30169 (regOne!30168 r!7292))) (nullableFct!1399 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun bs!1215200 () Bool)

(assert (= bs!1215200 d!1687536))

(declare-fun m!6280306 () Bool)

(assert (=> bs!1215200 m!6280306))

(assert (=> b!5234448 d!1687536))

(declare-fun bm!370426 () Bool)

(declare-fun call!370431 () (Set Context!8424))

(assert (=> bm!370426 (= call!370431 (derivationStepZipperDown!276 (h!67108 (exprs!4712 lt!2146136)) (Context!8425 (t!373965 (exprs!4712 lt!2146136))) (h!67107 s!2326)))))

(declare-fun b!5234771 () Bool)

(declare-fun e!3257494 () (Set Context!8424))

(declare-fun e!3257495 () (Set Context!8424))

(assert (=> b!5234771 (= e!3257494 e!3257495)))

(declare-fun c!904338 () Bool)

(assert (=> b!5234771 (= c!904338 (is-Cons!60660 (exprs!4712 lt!2146136)))))

(declare-fun b!5234772 () Bool)

(declare-fun e!3257496 () Bool)

(assert (=> b!5234772 (= e!3257496 (nullable!4997 (h!67108 (exprs!4712 lt!2146136))))))

(declare-fun b!5234773 () Bool)

(assert (=> b!5234773 (= e!3257495 (as set.empty (Set Context!8424)))))

(declare-fun b!5234774 () Bool)

(assert (=> b!5234774 (= e!3257495 call!370431)))

(declare-fun b!5234775 () Bool)

(assert (=> b!5234775 (= e!3257494 (set.union call!370431 (derivationStepZipperUp!200 (Context!8425 (t!373965 (exprs!4712 lt!2146136))) (h!67107 s!2326))))))

(declare-fun d!1687538 () Bool)

(declare-fun c!904339 () Bool)

(assert (=> d!1687538 (= c!904339 e!3257496)))

(declare-fun res!2221931 () Bool)

(assert (=> d!1687538 (=> (not res!2221931) (not e!3257496))))

(assert (=> d!1687538 (= res!2221931 (is-Cons!60660 (exprs!4712 lt!2146136)))))

(assert (=> d!1687538 (= (derivationStepZipperUp!200 lt!2146136 (h!67107 s!2326)) e!3257494)))

(assert (= (and d!1687538 res!2221931) b!5234772))

(assert (= (and d!1687538 c!904339) b!5234775))

(assert (= (and d!1687538 (not c!904339)) b!5234771))

(assert (= (and b!5234771 c!904338) b!5234774))

(assert (= (and b!5234771 (not c!904338)) b!5234773))

(assert (= (or b!5234775 b!5234774) bm!370426))

(declare-fun m!6280308 () Bool)

(assert (=> bm!370426 m!6280308))

(declare-fun m!6280310 () Bool)

(assert (=> b!5234772 m!6280310))

(declare-fun m!6280312 () Bool)

(assert (=> b!5234775 m!6280312))

(assert (=> b!5234448 d!1687538))

(declare-fun bm!370427 () Bool)

(declare-fun call!370432 () (Set Context!8424))

(assert (=> bm!370427 (= call!370432 (derivationStepZipperDown!276 (h!67108 (exprs!4712 lt!2146109)) (Context!8425 (t!373965 (exprs!4712 lt!2146109))) (h!67107 s!2326)))))

(declare-fun b!5234776 () Bool)

(declare-fun e!3257497 () (Set Context!8424))

(declare-fun e!3257498 () (Set Context!8424))

(assert (=> b!5234776 (= e!3257497 e!3257498)))

(declare-fun c!904340 () Bool)

(assert (=> b!5234776 (= c!904340 (is-Cons!60660 (exprs!4712 lt!2146109)))))

(declare-fun b!5234777 () Bool)

(declare-fun e!3257499 () Bool)

(assert (=> b!5234777 (= e!3257499 (nullable!4997 (h!67108 (exprs!4712 lt!2146109))))))

(declare-fun b!5234778 () Bool)

(assert (=> b!5234778 (= e!3257498 (as set.empty (Set Context!8424)))))

(declare-fun b!5234779 () Bool)

(assert (=> b!5234779 (= e!3257498 call!370432)))

(declare-fun b!5234780 () Bool)

(assert (=> b!5234780 (= e!3257497 (set.union call!370432 (derivationStepZipperUp!200 (Context!8425 (t!373965 (exprs!4712 lt!2146109))) (h!67107 s!2326))))))

(declare-fun d!1687540 () Bool)

(declare-fun c!904341 () Bool)

(assert (=> d!1687540 (= c!904341 e!3257499)))

(declare-fun res!2221932 () Bool)

(assert (=> d!1687540 (=> (not res!2221932) (not e!3257499))))

(assert (=> d!1687540 (= res!2221932 (is-Cons!60660 (exprs!4712 lt!2146109)))))

(assert (=> d!1687540 (= (derivationStepZipperUp!200 lt!2146109 (h!67107 s!2326)) e!3257497)))

(assert (= (and d!1687540 res!2221932) b!5234777))

(assert (= (and d!1687540 c!904341) b!5234780))

(assert (= (and d!1687540 (not c!904341)) b!5234776))

(assert (= (and b!5234776 c!904340) b!5234779))

(assert (= (and b!5234776 (not c!904340)) b!5234778))

(assert (= (or b!5234780 b!5234779) bm!370427))

(declare-fun m!6280314 () Bool)

(assert (=> bm!370427 m!6280314))

(declare-fun m!6280316 () Bool)

(assert (=> b!5234777 m!6280316))

(declare-fun m!6280318 () Bool)

(assert (=> b!5234780 m!6280318))

(assert (=> b!5234448 d!1687540))

(declare-fun d!1687542 () Bool)

(declare-fun c!904342 () Bool)

(assert (=> d!1687542 (= c!904342 (isEmpty!32589 s!2326))))

(declare-fun e!3257500 () Bool)

(assert (=> d!1687542 (= (matchZipper!1072 z!1189 s!2326) e!3257500)))

(declare-fun b!5234781 () Bool)

(assert (=> b!5234781 (= e!3257500 (nullableZipper!1247 z!1189))))

(declare-fun b!5234782 () Bool)

(assert (=> b!5234782 (= e!3257500 (matchZipper!1072 (derivationStepZipper!1091 z!1189 (head!11213 s!2326)) (tail!10310 s!2326)))))

(assert (= (and d!1687542 c!904342) b!5234781))

(assert (= (and d!1687542 (not c!904342)) b!5234782))

(declare-fun m!6280320 () Bool)

(assert (=> d!1687542 m!6280320))

(declare-fun m!6280322 () Bool)

(assert (=> b!5234781 m!6280322))

(declare-fun m!6280324 () Bool)

(assert (=> b!5234782 m!6280324))

(assert (=> b!5234782 m!6280324))

(declare-fun m!6280326 () Bool)

(assert (=> b!5234782 m!6280326))

(declare-fun m!6280328 () Bool)

(assert (=> b!5234782 m!6280328))

(assert (=> b!5234782 m!6280326))

(assert (=> b!5234782 m!6280328))

(declare-fun m!6280330 () Bool)

(assert (=> b!5234782 m!6280330))

(assert (=> b!5234448 d!1687542))

(declare-fun d!1687544 () Bool)

(assert (=> d!1687544 (= (flatMap!555 lt!2146120 lambda!263050) (dynLambda!23969 lambda!263050 lt!2146136))))

(declare-fun lt!2146278 () Unit!152638)

(assert (=> d!1687544 (= lt!2146278 (choose!38930 lt!2146120 lt!2146136 lambda!263050))))

(assert (=> d!1687544 (= lt!2146120 (set.insert lt!2146136 (as set.empty (Set Context!8424))))))

(assert (=> d!1687544 (= (lemmaFlatMapOnSingletonSet!87 lt!2146120 lt!2146136 lambda!263050) lt!2146278)))

(declare-fun b_lambda!202391 () Bool)

(assert (=> (not b_lambda!202391) (not d!1687544)))

(declare-fun bs!1215201 () Bool)

(assert (= bs!1215201 d!1687544))

(assert (=> bs!1215201 m!6280004))

(declare-fun m!6280332 () Bool)

(assert (=> bs!1215201 m!6280332))

(declare-fun m!6280334 () Bool)

(assert (=> bs!1215201 m!6280334))

(assert (=> bs!1215201 m!6280024))

(assert (=> b!5234448 d!1687544))

(declare-fun d!1687546 () Bool)

(declare-fun c!904343 () Bool)

(assert (=> d!1687546 (= c!904343 (isEmpty!32589 s!2326))))

(declare-fun e!3257501 () Bool)

(assert (=> d!1687546 (= (matchZipper!1072 lt!2146133 s!2326) e!3257501)))

(declare-fun b!5234783 () Bool)

(assert (=> b!5234783 (= e!3257501 (nullableZipper!1247 lt!2146133))))

(declare-fun b!5234784 () Bool)

(assert (=> b!5234784 (= e!3257501 (matchZipper!1072 (derivationStepZipper!1091 lt!2146133 (head!11213 s!2326)) (tail!10310 s!2326)))))

(assert (= (and d!1687546 c!904343) b!5234783))

(assert (= (and d!1687546 (not c!904343)) b!5234784))

(assert (=> d!1687546 m!6280320))

(declare-fun m!6280336 () Bool)

(assert (=> b!5234783 m!6280336))

(assert (=> b!5234784 m!6280324))

(assert (=> b!5234784 m!6280324))

(declare-fun m!6280338 () Bool)

(assert (=> b!5234784 m!6280338))

(assert (=> b!5234784 m!6280328))

(assert (=> b!5234784 m!6280338))

(assert (=> b!5234784 m!6280328))

(declare-fun m!6280340 () Bool)

(assert (=> b!5234784 m!6280340))

(assert (=> b!5234448 d!1687546))

(declare-fun d!1687548 () Bool)

(assert (=> d!1687548 (= (flatMap!555 lt!2146133 lambda!263050) (dynLambda!23969 lambda!263050 lt!2146109))))

(declare-fun lt!2146279 () Unit!152638)

(assert (=> d!1687548 (= lt!2146279 (choose!38930 lt!2146133 lt!2146109 lambda!263050))))

(assert (=> d!1687548 (= lt!2146133 (set.insert lt!2146109 (as set.empty (Set Context!8424))))))

(assert (=> d!1687548 (= (lemmaFlatMapOnSingletonSet!87 lt!2146133 lt!2146109 lambda!263050) lt!2146279)))

(declare-fun b_lambda!202393 () Bool)

(assert (=> (not b_lambda!202393) (not d!1687548)))

(declare-fun bs!1215202 () Bool)

(assert (= bs!1215202 d!1687548))

(assert (=> bs!1215202 m!6280012))

(declare-fun m!6280342 () Bool)

(assert (=> bs!1215202 m!6280342))

(declare-fun m!6280344 () Bool)

(assert (=> bs!1215202 m!6280344))

(assert (=> bs!1215202 m!6280010))

(assert (=> b!5234448 d!1687548))

(declare-fun d!1687550 () Bool)

(assert (=> d!1687550 (= (nullable!4997 (regOne!30169 (regOne!30168 r!7292))) (nullableFct!1399 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun bs!1215203 () Bool)

(assert (= bs!1215203 d!1687550))

(declare-fun m!6280346 () Bool)

(assert (=> bs!1215203 m!6280346))

(assert (=> b!5234448 d!1687550))

(declare-fun d!1687552 () Bool)

(assert (=> d!1687552 (= (flatMap!555 lt!2146120 lambda!263050) (choose!38929 lt!2146120 lambda!263050))))

(declare-fun bs!1215204 () Bool)

(assert (= bs!1215204 d!1687552))

(declare-fun m!6280348 () Bool)

(assert (=> bs!1215204 m!6280348))

(assert (=> b!5234448 d!1687552))

(declare-fun bs!1215205 () Bool)

(declare-fun d!1687554 () Bool)

(assert (= bs!1215205 (and d!1687554 b!5234479)))

(declare-fun lambda!263081 () Int)

(assert (=> bs!1215205 (= lambda!263081 lambda!263051)))

(declare-fun bs!1215206 () Bool)

(assert (= bs!1215206 (and d!1687554 d!1687498)))

(assert (=> bs!1215206 (= lambda!263081 lambda!263072)))

(declare-fun bs!1215207 () Bool)

(assert (= bs!1215207 (and d!1687554 d!1687500)))

(assert (=> bs!1215207 (= lambda!263081 lambda!263075)))

(declare-fun bs!1215208 () Bool)

(assert (= bs!1215208 (and d!1687554 d!1687532)))

(assert (=> bs!1215208 (= lambda!263081 lambda!263078)))

(declare-fun b!5234805 () Bool)

(declare-fun e!3257515 () Bool)

(declare-fun e!3257516 () Bool)

(assert (=> b!5234805 (= e!3257515 e!3257516)))

(declare-fun c!904354 () Bool)

(assert (=> b!5234805 (= c!904354 (isEmpty!32586 (exprs!4712 (h!67109 zl!343))))))

(assert (=> d!1687554 e!3257515))

(declare-fun res!2221938 () Bool)

(assert (=> d!1687554 (=> (not res!2221938) (not e!3257515))))

(declare-fun lt!2146282 () Regex!14828)

(assert (=> d!1687554 (= res!2221938 (validRegex!6564 lt!2146282))))

(declare-fun e!3257519 () Regex!14828)

(assert (=> d!1687554 (= lt!2146282 e!3257519)))

(declare-fun c!904355 () Bool)

(declare-fun e!3257517 () Bool)

(assert (=> d!1687554 (= c!904355 e!3257517)))

(declare-fun res!2221937 () Bool)

(assert (=> d!1687554 (=> (not res!2221937) (not e!3257517))))

(assert (=> d!1687554 (= res!2221937 (is-Cons!60660 (exprs!4712 (h!67109 zl!343))))))

(assert (=> d!1687554 (forall!14256 (exprs!4712 (h!67109 zl!343)) lambda!263081)))

(assert (=> d!1687554 (= (generalisedConcat!497 (exprs!4712 (h!67109 zl!343))) lt!2146282)))

(declare-fun b!5234806 () Bool)

(assert (=> b!5234806 (= e!3257517 (isEmpty!32586 (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun b!5234807 () Bool)

(declare-fun e!3257514 () Bool)

(assert (=> b!5234807 (= e!3257514 (= lt!2146282 (head!11214 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun b!5234808 () Bool)

(declare-fun e!3257518 () Regex!14828)

(assert (=> b!5234808 (= e!3257518 EmptyExpr!14828)))

(declare-fun b!5234809 () Bool)

(assert (=> b!5234809 (= e!3257519 e!3257518)))

(declare-fun c!904353 () Bool)

(assert (=> b!5234809 (= c!904353 (is-Cons!60660 (exprs!4712 (h!67109 zl!343))))))

(declare-fun b!5234810 () Bool)

(declare-fun isEmptyExpr!783 (Regex!14828) Bool)

(assert (=> b!5234810 (= e!3257516 (isEmptyExpr!783 lt!2146282))))

(declare-fun b!5234811 () Bool)

(assert (=> b!5234811 (= e!3257519 (h!67108 (exprs!4712 (h!67109 zl!343))))))

(declare-fun b!5234812 () Bool)

(assert (=> b!5234812 (= e!3257518 (Concat!23673 (h!67108 (exprs!4712 (h!67109 zl!343))) (generalisedConcat!497 (t!373965 (exprs!4712 (h!67109 zl!343))))))))

(declare-fun b!5234813 () Bool)

(assert (=> b!5234813 (= e!3257516 e!3257514)))

(declare-fun c!904352 () Bool)

(assert (=> b!5234813 (= c!904352 (isEmpty!32586 (tail!10311 (exprs!4712 (h!67109 zl!343)))))))

(declare-fun b!5234814 () Bool)

(declare-fun isConcat!306 (Regex!14828) Bool)

(assert (=> b!5234814 (= e!3257514 (isConcat!306 lt!2146282))))

(assert (= (and d!1687554 res!2221937) b!5234806))

(assert (= (and d!1687554 c!904355) b!5234811))

(assert (= (and d!1687554 (not c!904355)) b!5234809))

(assert (= (and b!5234809 c!904353) b!5234812))

(assert (= (and b!5234809 (not c!904353)) b!5234808))

(assert (= (and d!1687554 res!2221938) b!5234805))

(assert (= (and b!5234805 c!904354) b!5234810))

(assert (= (and b!5234805 (not c!904354)) b!5234813))

(assert (= (and b!5234813 c!904352) b!5234807))

(assert (= (and b!5234813 (not c!904352)) b!5234814))

(declare-fun m!6280350 () Bool)

(assert (=> b!5234805 m!6280350))

(declare-fun m!6280352 () Bool)

(assert (=> b!5234810 m!6280352))

(assert (=> b!5234806 m!6280044))

(declare-fun m!6280354 () Bool)

(assert (=> b!5234813 m!6280354))

(assert (=> b!5234813 m!6280354))

(declare-fun m!6280356 () Bool)

(assert (=> b!5234813 m!6280356))

(declare-fun m!6280358 () Bool)

(assert (=> d!1687554 m!6280358))

(declare-fun m!6280360 () Bool)

(assert (=> d!1687554 m!6280360))

(declare-fun m!6280362 () Bool)

(assert (=> b!5234812 m!6280362))

(declare-fun m!6280364 () Bool)

(assert (=> b!5234807 m!6280364))

(declare-fun m!6280366 () Bool)

(assert (=> b!5234814 m!6280366))

(assert (=> b!5234472 d!1687554))

(declare-fun b!5234833 () Bool)

(declare-fun e!3257533 () Bool)

(declare-fun lt!2146289 () Option!14939)

(assert (=> b!5234833 (= e!3257533 (not (isDefined!11642 lt!2146289)))))

(declare-fun b!5234834 () Bool)

(declare-fun res!2221952 () Bool)

(declare-fun e!3257534 () Bool)

(assert (=> b!5234834 (=> (not res!2221952) (not e!3257534))))

(declare-fun get!20847 (Option!14939) tuple2!64054)

(assert (=> b!5234834 (= res!2221952 (matchR!7013 (regOne!30168 r!7292) (_1!35330 (get!20847 lt!2146289))))))

(declare-fun b!5234835 () Bool)

(declare-fun e!3257530 () Option!14939)

(assert (=> b!5234835 (= e!3257530 (Some!14938 (tuple2!64055 Nil!60659 s!2326)))))

(declare-fun b!5234836 () Bool)

(declare-fun lt!2146290 () Unit!152638)

(declare-fun lt!2146291 () Unit!152638)

(assert (=> b!5234836 (= lt!2146290 lt!2146291)))

(declare-fun ++!13227 (List!60783 List!60783) List!60783)

(assert (=> b!5234836 (= (++!13227 (++!13227 Nil!60659 (Cons!60659 (h!67107 s!2326) Nil!60659)) (t!373964 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1642 (List!60783 C!29926 List!60783 List!60783) Unit!152638)

(assert (=> b!5234836 (= lt!2146291 (lemmaMoveElementToOtherListKeepsConcatEq!1642 Nil!60659 (h!67107 s!2326) (t!373964 s!2326) s!2326))))

(declare-fun e!3257532 () Option!14939)

(assert (=> b!5234836 (= e!3257532 (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) (++!13227 Nil!60659 (Cons!60659 (h!67107 s!2326) Nil!60659)) (t!373964 s!2326) s!2326))))

(declare-fun b!5234837 () Bool)

(assert (=> b!5234837 (= e!3257534 (= (++!13227 (_1!35330 (get!20847 lt!2146289)) (_2!35330 (get!20847 lt!2146289))) s!2326))))

(declare-fun d!1687556 () Bool)

(assert (=> d!1687556 e!3257533))

(declare-fun res!2221950 () Bool)

(assert (=> d!1687556 (=> res!2221950 e!3257533)))

(assert (=> d!1687556 (= res!2221950 e!3257534)))

(declare-fun res!2221953 () Bool)

(assert (=> d!1687556 (=> (not res!2221953) (not e!3257534))))

(assert (=> d!1687556 (= res!2221953 (isDefined!11642 lt!2146289))))

(assert (=> d!1687556 (= lt!2146289 e!3257530)))

(declare-fun c!904361 () Bool)

(declare-fun e!3257531 () Bool)

(assert (=> d!1687556 (= c!904361 e!3257531)))

(declare-fun res!2221949 () Bool)

(assert (=> d!1687556 (=> (not res!2221949) (not e!3257531))))

(assert (=> d!1687556 (= res!2221949 (matchR!7013 (regOne!30168 r!7292) Nil!60659))))

(assert (=> d!1687556 (validRegex!6564 (regOne!30168 r!7292))))

(assert (=> d!1687556 (= (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) Nil!60659 s!2326 s!2326) lt!2146289)))

(declare-fun b!5234838 () Bool)

(declare-fun res!2221951 () Bool)

(assert (=> b!5234838 (=> (not res!2221951) (not e!3257534))))

(assert (=> b!5234838 (= res!2221951 (matchR!7013 (regTwo!30168 r!7292) (_2!35330 (get!20847 lt!2146289))))))

(declare-fun b!5234839 () Bool)

(assert (=> b!5234839 (= e!3257531 (matchR!7013 (regTwo!30168 r!7292) s!2326))))

(declare-fun b!5234840 () Bool)

(assert (=> b!5234840 (= e!3257532 None!14938)))

(declare-fun b!5234841 () Bool)

(assert (=> b!5234841 (= e!3257530 e!3257532)))

(declare-fun c!904360 () Bool)

(assert (=> b!5234841 (= c!904360 (is-Nil!60659 s!2326))))

(assert (= (and d!1687556 res!2221949) b!5234839))

(assert (= (and d!1687556 c!904361) b!5234835))

(assert (= (and d!1687556 (not c!904361)) b!5234841))

(assert (= (and b!5234841 c!904360) b!5234840))

(assert (= (and b!5234841 (not c!904360)) b!5234836))

(assert (= (and d!1687556 res!2221953) b!5234834))

(assert (= (and b!5234834 res!2221952) b!5234838))

(assert (= (and b!5234838 res!2221951) b!5234837))

(assert (= (and d!1687556 (not res!2221950)) b!5234833))

(declare-fun m!6280368 () Bool)

(assert (=> b!5234838 m!6280368))

(declare-fun m!6280370 () Bool)

(assert (=> b!5234838 m!6280370))

(declare-fun m!6280372 () Bool)

(assert (=> b!5234833 m!6280372))

(declare-fun m!6280374 () Bool)

(assert (=> b!5234836 m!6280374))

(assert (=> b!5234836 m!6280374))

(declare-fun m!6280376 () Bool)

(assert (=> b!5234836 m!6280376))

(declare-fun m!6280378 () Bool)

(assert (=> b!5234836 m!6280378))

(assert (=> b!5234836 m!6280374))

(declare-fun m!6280380 () Bool)

(assert (=> b!5234836 m!6280380))

(assert (=> d!1687556 m!6280372))

(declare-fun m!6280382 () Bool)

(assert (=> d!1687556 m!6280382))

(declare-fun m!6280384 () Bool)

(assert (=> d!1687556 m!6280384))

(assert (=> b!5234834 m!6280368))

(declare-fun m!6280386 () Bool)

(assert (=> b!5234834 m!6280386))

(assert (=> b!5234837 m!6280368))

(declare-fun m!6280388 () Bool)

(assert (=> b!5234837 m!6280388))

(declare-fun m!6280390 () Bool)

(assert (=> b!5234839 m!6280390))

(assert (=> b!5234453 d!1687556))

(declare-fun d!1687558 () Bool)

(declare-fun choose!38931 (Int) Bool)

(assert (=> d!1687558 (= (Exists!2009 lambda!263048) (choose!38931 lambda!263048))))

(declare-fun bs!1215209 () Bool)

(assert (= bs!1215209 d!1687558))

(declare-fun m!6280392 () Bool)

(assert (=> bs!1215209 m!6280392))

(assert (=> b!5234453 d!1687558))

(declare-fun d!1687560 () Bool)

(assert (=> d!1687560 (= (Exists!2009 lambda!263049) (choose!38931 lambda!263049))))

(declare-fun bs!1215210 () Bool)

(assert (= bs!1215210 d!1687560))

(declare-fun m!6280394 () Bool)

(assert (=> bs!1215210 m!6280394))

(assert (=> b!5234453 d!1687560))

(declare-fun bs!1215211 () Bool)

(declare-fun d!1687562 () Bool)

(assert (= bs!1215211 (and d!1687562 b!5234453)))

(declare-fun lambda!263084 () Int)

(assert (=> bs!1215211 (= lambda!263084 lambda!263048)))

(assert (=> bs!1215211 (not (= lambda!263084 lambda!263049))))

(assert (=> d!1687562 true))

(assert (=> d!1687562 true))

(assert (=> d!1687562 true))

(assert (=> d!1687562 (= (isDefined!11642 (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) Nil!60659 s!2326 s!2326)) (Exists!2009 lambda!263084))))

(declare-fun lt!2146294 () Unit!152638)

(declare-fun choose!38932 (Regex!14828 Regex!14828 List!60783) Unit!152638)

(assert (=> d!1687562 (= lt!2146294 (choose!38932 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326))))

(assert (=> d!1687562 (validRegex!6564 (regOne!30168 r!7292))))

(assert (=> d!1687562 (= (lemmaFindConcatSeparationEquivalentToExists!1117 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326) lt!2146294)))

(declare-fun bs!1215212 () Bool)

(assert (= bs!1215212 d!1687562))

(declare-fun m!6280396 () Bool)

(assert (=> bs!1215212 m!6280396))

(assert (=> bs!1215212 m!6279938))

(assert (=> bs!1215212 m!6279940))

(declare-fun m!6280398 () Bool)

(assert (=> bs!1215212 m!6280398))

(assert (=> bs!1215212 m!6280384))

(assert (=> bs!1215212 m!6279938))

(assert (=> b!5234453 d!1687562))

(declare-fun bs!1215213 () Bool)

(declare-fun d!1687564 () Bool)

(assert (= bs!1215213 (and d!1687564 b!5234453)))

(declare-fun lambda!263089 () Int)

(assert (=> bs!1215213 (= lambda!263089 lambda!263048)))

(assert (=> bs!1215213 (not (= lambda!263089 lambda!263049))))

(declare-fun bs!1215214 () Bool)

(assert (= bs!1215214 (and d!1687564 d!1687562)))

(assert (=> bs!1215214 (= lambda!263089 lambda!263084)))

(assert (=> d!1687564 true))

(assert (=> d!1687564 true))

(assert (=> d!1687564 true))

(declare-fun lambda!263090 () Int)

(assert (=> bs!1215213 (not (= lambda!263090 lambda!263048))))

(assert (=> bs!1215213 (= lambda!263090 lambda!263049)))

(assert (=> bs!1215214 (not (= lambda!263090 lambda!263084))))

(declare-fun bs!1215215 () Bool)

(assert (= bs!1215215 d!1687564))

(assert (=> bs!1215215 (not (= lambda!263090 lambda!263089))))

(assert (=> d!1687564 true))

(assert (=> d!1687564 true))

(assert (=> d!1687564 true))

(assert (=> d!1687564 (= (Exists!2009 lambda!263089) (Exists!2009 lambda!263090))))

(declare-fun lt!2146297 () Unit!152638)

(declare-fun choose!38933 (Regex!14828 Regex!14828 List!60783) Unit!152638)

(assert (=> d!1687564 (= lt!2146297 (choose!38933 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326))))

(assert (=> d!1687564 (validRegex!6564 (regOne!30168 r!7292))))

(assert (=> d!1687564 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!663 (regOne!30168 r!7292) (regTwo!30168 r!7292) s!2326) lt!2146297)))

(declare-fun m!6280412 () Bool)

(assert (=> bs!1215215 m!6280412))

(declare-fun m!6280414 () Bool)

(assert (=> bs!1215215 m!6280414))

(declare-fun m!6280416 () Bool)

(assert (=> bs!1215215 m!6280416))

(assert (=> bs!1215215 m!6280384))

(assert (=> b!5234453 d!1687564))

(declare-fun d!1687570 () Bool)

(declare-fun isEmpty!32590 (Option!14939) Bool)

(assert (=> d!1687570 (= (isDefined!11642 (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) Nil!60659 s!2326 s!2326)) (not (isEmpty!32590 (findConcatSeparation!1353 (regOne!30168 r!7292) (regTwo!30168 r!7292) Nil!60659 s!2326 s!2326))))))

(declare-fun bs!1215216 () Bool)

(assert (= bs!1215216 d!1687570))

(assert (=> bs!1215216 m!6279938))

(declare-fun m!6280422 () Bool)

(assert (=> bs!1215216 m!6280422))

(assert (=> b!5234453 d!1687570))

(declare-fun d!1687574 () Bool)

(declare-fun lt!2146300 () Int)

(assert (=> d!1687574 (>= lt!2146300 0)))

(declare-fun e!3257547 () Int)

(assert (=> d!1687574 (= lt!2146300 e!3257547)))

(declare-fun c!904368 () Bool)

(assert (=> d!1687574 (= c!904368 (is-Cons!60661 lt!2146106))))

(assert (=> d!1687574 (= (zipperDepthTotal!9 lt!2146106) lt!2146300)))

(declare-fun b!5234866 () Bool)

(declare-fun contextDepthTotal!5 (Context!8424) Int)

(assert (=> b!5234866 (= e!3257547 (+ (contextDepthTotal!5 (h!67109 lt!2146106)) (zipperDepthTotal!9 (t!373966 lt!2146106))))))

(declare-fun b!5234867 () Bool)

(assert (=> b!5234867 (= e!3257547 0)))

(assert (= (and d!1687574 c!904368) b!5234866))

(assert (= (and d!1687574 (not c!904368)) b!5234867))

(declare-fun m!6280432 () Bool)

(assert (=> b!5234866 m!6280432))

(declare-fun m!6280434 () Bool)

(assert (=> b!5234866 m!6280434))

(assert (=> b!5234452 d!1687574))

(declare-fun d!1687578 () Bool)

(declare-fun c!904369 () Bool)

(assert (=> d!1687578 (= c!904369 (isEmpty!32589 s!2326))))

(declare-fun e!3257548 () Bool)

(assert (=> d!1687578 (= (matchZipper!1072 lt!2146120 s!2326) e!3257548)))

(declare-fun b!5234868 () Bool)

(assert (=> b!5234868 (= e!3257548 (nullableZipper!1247 lt!2146120))))

(declare-fun b!5234869 () Bool)

(assert (=> b!5234869 (= e!3257548 (matchZipper!1072 (derivationStepZipper!1091 lt!2146120 (head!11213 s!2326)) (tail!10310 s!2326)))))

(assert (= (and d!1687578 c!904369) b!5234868))

(assert (= (and d!1687578 (not c!904369)) b!5234869))

(assert (=> d!1687578 m!6280320))

(declare-fun m!6280436 () Bool)

(assert (=> b!5234868 m!6280436))

(assert (=> b!5234869 m!6280324))

(assert (=> b!5234869 m!6280324))

(declare-fun m!6280438 () Bool)

(assert (=> b!5234869 m!6280438))

(assert (=> b!5234869 m!6280328))

(assert (=> b!5234869 m!6280438))

(assert (=> b!5234869 m!6280328))

(declare-fun m!6280440 () Bool)

(assert (=> b!5234869 m!6280440))

(assert (=> b!5234471 d!1687578))

(assert (=> b!5234470 d!1687494))

(assert (=> b!5234451 d!1687502))

(declare-fun bs!1215217 () Bool)

(declare-fun d!1687580 () Bool)

(assert (= bs!1215217 (and d!1687580 d!1687500)))

(declare-fun lambda!263091 () Int)

(assert (=> bs!1215217 (= lambda!263091 lambda!263075)))

(declare-fun bs!1215218 () Bool)

(assert (= bs!1215218 (and d!1687580 d!1687554)))

(assert (=> bs!1215218 (= lambda!263091 lambda!263081)))

(declare-fun bs!1215219 () Bool)

(assert (= bs!1215219 (and d!1687580 d!1687532)))

(assert (=> bs!1215219 (= lambda!263091 lambda!263078)))

(declare-fun bs!1215220 () Bool)

(assert (= bs!1215220 (and d!1687580 d!1687498)))

(assert (=> bs!1215220 (= lambda!263091 lambda!263072)))

(declare-fun bs!1215221 () Bool)

(assert (= bs!1215221 (and d!1687580 b!5234479)))

(assert (=> bs!1215221 (= lambda!263091 lambda!263051)))

(assert (=> d!1687580 (= (inv!80318 setElem!33356) (forall!14256 (exprs!4712 setElem!33356) lambda!263091))))

(declare-fun bs!1215222 () Bool)

(assert (= bs!1215222 d!1687580))

(declare-fun m!6280442 () Bool)

(assert (=> bs!1215222 m!6280442))

(assert (=> setNonEmpty!33356 d!1687580))

(assert (=> b!5234485 d!1687502))

(declare-fun d!1687582 () Bool)

(assert (=> d!1687582 (= (isEmpty!32586 (t!373965 (exprs!4712 (h!67109 zl!343)))) (is-Nil!60660 (t!373965 (exprs!4712 (h!67109 zl!343)))))))

(assert (=> b!5234465 d!1687582))

(declare-fun b!5234870 () Bool)

(declare-fun c!904370 () Bool)

(declare-fun e!3257551 () Bool)

(assert (=> b!5234870 (= c!904370 e!3257551)))

(declare-fun res!2221966 () Bool)

(assert (=> b!5234870 (=> (not res!2221966) (not e!3257551))))

(assert (=> b!5234870 (= res!2221966 (is-Concat!23673 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun e!3257554 () (Set Context!8424))

(declare-fun e!3257552 () (Set Context!8424))

(assert (=> b!5234870 (= e!3257554 e!3257552)))

(declare-fun b!5234871 () Bool)

(declare-fun e!3257550 () (Set Context!8424))

(assert (=> b!5234871 (= e!3257550 (as set.empty (Set Context!8424)))))

(declare-fun b!5234872 () Bool)

(declare-fun c!904371 () Bool)

(assert (=> b!5234872 (= c!904371 (is-Star!14828 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun e!3257549 () (Set Context!8424))

(assert (=> b!5234872 (= e!3257549 e!3257550)))

(declare-fun b!5234873 () Bool)

(declare-fun call!370435 () (Set Context!8424))

(declare-fun call!370438 () (Set Context!8424))

(assert (=> b!5234873 (= e!3257552 (set.union call!370435 call!370438))))

(declare-fun bm!370428 () Bool)

(declare-fun call!370434 () (Set Context!8424))

(assert (=> bm!370428 (= call!370438 call!370434)))

(declare-fun bm!370429 () Bool)

(declare-fun call!370436 () (Set Context!8424))

(assert (=> bm!370429 (= call!370436 call!370438)))

(declare-fun call!370437 () List!60784)

(declare-fun bm!370430 () Bool)

(declare-fun c!904372 () Bool)

(assert (=> bm!370430 (= call!370437 ($colon$colon!1297 (exprs!4712 lt!2146134) (ite (or c!904370 c!904372) (regTwo!30168 (regTwo!30169 (regOne!30168 r!7292))) (regTwo!30169 (regOne!30168 r!7292)))))))

(declare-fun d!1687584 () Bool)

(declare-fun c!904374 () Bool)

(assert (=> d!1687584 (= c!904374 (and (is-ElementMatch!14828 (regTwo!30169 (regOne!30168 r!7292))) (= (c!904264 (regTwo!30169 (regOne!30168 r!7292))) (h!67107 s!2326))))))

(declare-fun e!3257553 () (Set Context!8424))

(assert (=> d!1687584 (= (derivationStepZipperDown!276 (regTwo!30169 (regOne!30168 r!7292)) lt!2146134 (h!67107 s!2326)) e!3257553)))

(declare-fun b!5234874 () Bool)

(assert (=> b!5234874 (= e!3257551 (nullable!4997 (regOne!30168 (regTwo!30169 (regOne!30168 r!7292)))))))

(declare-fun b!5234875 () Bool)

(assert (=> b!5234875 (= e!3257550 call!370436)))

(declare-fun c!904373 () Bool)

(declare-fun call!370433 () List!60784)

(declare-fun bm!370431 () Bool)

(assert (=> bm!370431 (= call!370434 (derivationStepZipperDown!276 (ite c!904373 (regOne!30169 (regTwo!30169 (regOne!30168 r!7292))) (ite c!904370 (regTwo!30168 (regTwo!30169 (regOne!30168 r!7292))) (ite c!904372 (regOne!30168 (regTwo!30169 (regOne!30168 r!7292))) (reg!15157 (regTwo!30169 (regOne!30168 r!7292)))))) (ite (or c!904373 c!904370) lt!2146134 (Context!8425 call!370433)) (h!67107 s!2326)))))

(declare-fun b!5234876 () Bool)

(assert (=> b!5234876 (= e!3257552 e!3257549)))

(assert (=> b!5234876 (= c!904372 (is-Concat!23673 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun b!5234877 () Bool)

(assert (=> b!5234877 (= e!3257553 (set.insert lt!2146134 (as set.empty (Set Context!8424))))))

(declare-fun bm!370432 () Bool)

(assert (=> bm!370432 (= call!370433 call!370437)))

(declare-fun b!5234878 () Bool)

(assert (=> b!5234878 (= e!3257554 (set.union call!370434 call!370435))))

(declare-fun b!5234879 () Bool)

(assert (=> b!5234879 (= e!3257553 e!3257554)))

(assert (=> b!5234879 (= c!904373 (is-Union!14828 (regTwo!30169 (regOne!30168 r!7292))))))

(declare-fun bm!370433 () Bool)

(assert (=> bm!370433 (= call!370435 (derivationStepZipperDown!276 (ite c!904373 (regTwo!30169 (regTwo!30169 (regOne!30168 r!7292))) (regOne!30168 (regTwo!30169 (regOne!30168 r!7292)))) (ite c!904373 lt!2146134 (Context!8425 call!370437)) (h!67107 s!2326)))))

(declare-fun b!5234880 () Bool)

(assert (=> b!5234880 (= e!3257549 call!370436)))

(assert (= (and d!1687584 c!904374) b!5234877))

(assert (= (and d!1687584 (not c!904374)) b!5234879))

(assert (= (and b!5234879 c!904373) b!5234878))

(assert (= (and b!5234879 (not c!904373)) b!5234870))

(assert (= (and b!5234870 res!2221966) b!5234874))

(assert (= (and b!5234870 c!904370) b!5234873))

(assert (= (and b!5234870 (not c!904370)) b!5234876))

(assert (= (and b!5234876 c!904372) b!5234880))

(assert (= (and b!5234876 (not c!904372)) b!5234872))

(assert (= (and b!5234872 c!904371) b!5234875))

(assert (= (and b!5234872 (not c!904371)) b!5234871))

(assert (= (or b!5234880 b!5234875) bm!370432))

(assert (= (or b!5234880 b!5234875) bm!370429))

(assert (= (or b!5234873 bm!370432) bm!370430))

(assert (= (or b!5234873 bm!370429) bm!370428))

(assert (= (or b!5234878 b!5234873) bm!370433))

(assert (= (or b!5234878 bm!370428) bm!370431))

(declare-fun m!6280444 () Bool)

(assert (=> bm!370431 m!6280444))

(declare-fun m!6280446 () Bool)

(assert (=> bm!370433 m!6280446))

(declare-fun m!6280448 () Bool)

(assert (=> b!5234874 m!6280448))

(assert (=> b!5234877 m!6280294))

(declare-fun m!6280450 () Bool)

(assert (=> bm!370430 m!6280450))

(assert (=> b!5234466 d!1687584))

(declare-fun b!5234881 () Bool)

(declare-fun c!904375 () Bool)

(declare-fun e!3257557 () Bool)

(assert (=> b!5234881 (= c!904375 e!3257557)))

(declare-fun res!2221967 () Bool)

(assert (=> b!5234881 (=> (not res!2221967) (not e!3257557))))

(assert (=> b!5234881 (= res!2221967 (is-Concat!23673 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun e!3257560 () (Set Context!8424))

(declare-fun e!3257558 () (Set Context!8424))

(assert (=> b!5234881 (= e!3257560 e!3257558)))

(declare-fun b!5234882 () Bool)

(declare-fun e!3257556 () (Set Context!8424))

(assert (=> b!5234882 (= e!3257556 (as set.empty (Set Context!8424)))))

(declare-fun b!5234883 () Bool)

(declare-fun c!904376 () Bool)

(assert (=> b!5234883 (= c!904376 (is-Star!14828 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun e!3257555 () (Set Context!8424))

(assert (=> b!5234883 (= e!3257555 e!3257556)))

(declare-fun b!5234884 () Bool)

(declare-fun call!370441 () (Set Context!8424))

(declare-fun call!370444 () (Set Context!8424))

(assert (=> b!5234884 (= e!3257558 (set.union call!370441 call!370444))))

(declare-fun bm!370434 () Bool)

(declare-fun call!370440 () (Set Context!8424))

(assert (=> bm!370434 (= call!370444 call!370440)))

(declare-fun bm!370435 () Bool)

(declare-fun call!370442 () (Set Context!8424))

(assert (=> bm!370435 (= call!370442 call!370444)))

(declare-fun bm!370436 () Bool)

(declare-fun call!370443 () List!60784)

(declare-fun c!904377 () Bool)

(assert (=> bm!370436 (= call!370443 ($colon$colon!1297 (exprs!4712 lt!2146134) (ite (or c!904375 c!904377) (regTwo!30168 (regOne!30169 (regOne!30168 r!7292))) (regOne!30169 (regOne!30168 r!7292)))))))

(declare-fun d!1687586 () Bool)

(declare-fun c!904379 () Bool)

(assert (=> d!1687586 (= c!904379 (and (is-ElementMatch!14828 (regOne!30169 (regOne!30168 r!7292))) (= (c!904264 (regOne!30169 (regOne!30168 r!7292))) (h!67107 s!2326))))))

(declare-fun e!3257559 () (Set Context!8424))

(assert (=> d!1687586 (= (derivationStepZipperDown!276 (regOne!30169 (regOne!30168 r!7292)) lt!2146134 (h!67107 s!2326)) e!3257559)))

(declare-fun b!5234885 () Bool)

(assert (=> b!5234885 (= e!3257557 (nullable!4997 (regOne!30168 (regOne!30169 (regOne!30168 r!7292)))))))

(declare-fun b!5234886 () Bool)

(assert (=> b!5234886 (= e!3257556 call!370442)))

(declare-fun c!904378 () Bool)

(declare-fun call!370439 () List!60784)

(declare-fun bm!370437 () Bool)

(assert (=> bm!370437 (= call!370440 (derivationStepZipperDown!276 (ite c!904378 (regOne!30169 (regOne!30169 (regOne!30168 r!7292))) (ite c!904375 (regTwo!30168 (regOne!30169 (regOne!30168 r!7292))) (ite c!904377 (regOne!30168 (regOne!30169 (regOne!30168 r!7292))) (reg!15157 (regOne!30169 (regOne!30168 r!7292)))))) (ite (or c!904378 c!904375) lt!2146134 (Context!8425 call!370439)) (h!67107 s!2326)))))

(declare-fun b!5234887 () Bool)

(assert (=> b!5234887 (= e!3257558 e!3257555)))

(assert (=> b!5234887 (= c!904377 (is-Concat!23673 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun b!5234888 () Bool)

(assert (=> b!5234888 (= e!3257559 (set.insert lt!2146134 (as set.empty (Set Context!8424))))))

(declare-fun bm!370438 () Bool)

(assert (=> bm!370438 (= call!370439 call!370443)))

(declare-fun b!5234889 () Bool)

(assert (=> b!5234889 (= e!3257560 (set.union call!370440 call!370441))))

(declare-fun b!5234890 () Bool)

(assert (=> b!5234890 (= e!3257559 e!3257560)))

(assert (=> b!5234890 (= c!904378 (is-Union!14828 (regOne!30169 (regOne!30168 r!7292))))))

(declare-fun bm!370439 () Bool)

(assert (=> bm!370439 (= call!370441 (derivationStepZipperDown!276 (ite c!904378 (regTwo!30169 (regOne!30169 (regOne!30168 r!7292))) (regOne!30168 (regOne!30169 (regOne!30168 r!7292)))) (ite c!904378 lt!2146134 (Context!8425 call!370443)) (h!67107 s!2326)))))

(declare-fun b!5234891 () Bool)

(assert (=> b!5234891 (= e!3257555 call!370442)))

(assert (= (and d!1687586 c!904379) b!5234888))

(assert (= (and d!1687586 (not c!904379)) b!5234890))

(assert (= (and b!5234890 c!904378) b!5234889))

(assert (= (and b!5234890 (not c!904378)) b!5234881))

(assert (= (and b!5234881 res!2221967) b!5234885))

(assert (= (and b!5234881 c!904375) b!5234884))

(assert (= (and b!5234881 (not c!904375)) b!5234887))

(assert (= (and b!5234887 c!904377) b!5234891))

(assert (= (and b!5234887 (not c!904377)) b!5234883))

(assert (= (and b!5234883 c!904376) b!5234886))

(assert (= (and b!5234883 (not c!904376)) b!5234882))

(assert (= (or b!5234891 b!5234886) bm!370438))

(assert (= (or b!5234891 b!5234886) bm!370435))

(assert (= (or b!5234884 bm!370438) bm!370436))

(assert (= (or b!5234884 bm!370435) bm!370434))

(assert (= (or b!5234889 b!5234884) bm!370439))

(assert (= (or b!5234889 bm!370434) bm!370437))

(declare-fun m!6280452 () Bool)

(assert (=> bm!370437 m!6280452))

(declare-fun m!6280454 () Bool)

(assert (=> bm!370439 m!6280454))

(declare-fun m!6280456 () Bool)

(assert (=> b!5234885 m!6280456))

(assert (=> b!5234888 m!6280294))

(declare-fun m!6280458 () Bool)

(assert (=> bm!370436 m!6280458))

(assert (=> b!5234466 d!1687586))

(declare-fun d!1687588 () Bool)

(declare-fun lt!2146303 () Regex!14828)

(assert (=> d!1687588 (validRegex!6564 lt!2146303)))

(assert (=> d!1687588 (= lt!2146303 (generalisedUnion!757 (unfocusZipperList!270 zl!343)))))

(assert (=> d!1687588 (= (unfocusZipper!570 zl!343) lt!2146303)))

(declare-fun bs!1215223 () Bool)

(assert (= bs!1215223 d!1687588))

(declare-fun m!6280460 () Bool)

(assert (=> bs!1215223 m!6280460))

(assert (=> bs!1215223 m!6279994))

(assert (=> bs!1215223 m!6279994))

(assert (=> bs!1215223 m!6279996))

(assert (=> b!5234460 d!1687588))

(declare-fun d!1687590 () Bool)

(declare-fun res!2221972 () Bool)

(declare-fun e!3257565 () Bool)

(assert (=> d!1687590 (=> res!2221972 e!3257565)))

(assert (=> d!1687590 (= res!2221972 (is-Nil!60660 lt!2146130))))

(assert (=> d!1687590 (= (forall!14256 lt!2146130 lambda!263051) e!3257565)))

(declare-fun b!5234896 () Bool)

(declare-fun e!3257566 () Bool)

(assert (=> b!5234896 (= e!3257565 e!3257566)))

(declare-fun res!2221973 () Bool)

(assert (=> b!5234896 (=> (not res!2221973) (not e!3257566))))

(declare-fun dynLambda!23970 (Int Regex!14828) Bool)

(assert (=> b!5234896 (= res!2221973 (dynLambda!23970 lambda!263051 (h!67108 lt!2146130)))))

(declare-fun b!5234897 () Bool)

(assert (=> b!5234897 (= e!3257566 (forall!14256 (t!373965 lt!2146130) lambda!263051))))

(assert (= (and d!1687590 (not res!2221972)) b!5234896))

(assert (= (and b!5234896 res!2221973) b!5234897))

(declare-fun b_lambda!202395 () Bool)

(assert (=> (not b_lambda!202395) (not b!5234896)))

(declare-fun m!6280462 () Bool)

(assert (=> b!5234896 m!6280462))

(declare-fun m!6280464 () Bool)

(assert (=> b!5234897 m!6280464))

(assert (=> b!5234479 d!1687590))

(declare-fun b!5234954 () Bool)

(declare-fun e!3257599 () Bool)

(assert (=> b!5234954 (= e!3257599 (= (head!11213 s!2326) (c!904264 lt!2146113)))))

(declare-fun b!5234955 () Bool)

(declare-fun res!2222005 () Bool)

(assert (=> b!5234955 (=> (not res!2222005) (not e!3257599))))

(declare-fun call!370447 () Bool)

(assert (=> b!5234955 (= res!2222005 (not call!370447))))

(declare-fun b!5234956 () Bool)

(declare-fun e!3257601 () Bool)

(assert (=> b!5234956 (= e!3257601 (nullable!4997 lt!2146113))))

(declare-fun b!5234957 () Bool)

(declare-fun res!2222002 () Bool)

(declare-fun e!3257597 () Bool)

(assert (=> b!5234957 (=> res!2222002 e!3257597)))

(assert (=> b!5234957 (= res!2222002 (not (isEmpty!32589 (tail!10310 s!2326))))))

(declare-fun b!5234958 () Bool)

(declare-fun e!3257602 () Bool)

(assert (=> b!5234958 (= e!3257602 e!3257597)))

(declare-fun res!2222006 () Bool)

(assert (=> b!5234958 (=> res!2222006 e!3257597)))

(assert (=> b!5234958 (= res!2222006 call!370447)))

(declare-fun b!5234959 () Bool)

(declare-fun e!3257600 () Bool)

(assert (=> b!5234959 (= e!3257600 e!3257602)))

(declare-fun res!2222003 () Bool)

(assert (=> b!5234959 (=> (not res!2222003) (not e!3257602))))

(declare-fun lt!2146306 () Bool)

(assert (=> b!5234959 (= res!2222003 (not lt!2146306))))

(declare-fun b!5234960 () Bool)

(assert (=> b!5234960 (= e!3257597 (not (= (head!11213 s!2326) (c!904264 lt!2146113))))))

(declare-fun b!5234961 () Bool)

(declare-fun res!2222009 () Bool)

(assert (=> b!5234961 (=> (not res!2222009) (not e!3257599))))

(assert (=> b!5234961 (= res!2222009 (isEmpty!32589 (tail!10310 s!2326)))))

(declare-fun b!5234962 () Bool)

(declare-fun e!3257603 () Bool)

(declare-fun e!3257598 () Bool)

(assert (=> b!5234962 (= e!3257603 e!3257598)))

(declare-fun c!904396 () Bool)

(assert (=> b!5234962 (= c!904396 (is-EmptyLang!14828 lt!2146113))))

(declare-fun bm!370442 () Bool)

(assert (=> bm!370442 (= call!370447 (isEmpty!32589 s!2326))))

(declare-fun b!5234964 () Bool)

(declare-fun derivativeStep!4069 (Regex!14828 C!29926) Regex!14828)

(assert (=> b!5234964 (= e!3257601 (matchR!7013 (derivativeStep!4069 lt!2146113 (head!11213 s!2326)) (tail!10310 s!2326)))))

(declare-fun b!5234965 () Bool)

(assert (=> b!5234965 (= e!3257603 (= lt!2146306 call!370447))))

(declare-fun b!5234966 () Bool)

(declare-fun res!2222004 () Bool)

(assert (=> b!5234966 (=> res!2222004 e!3257600)))

(assert (=> b!5234966 (= res!2222004 e!3257599)))

(declare-fun res!2222007 () Bool)

(assert (=> b!5234966 (=> (not res!2222007) (not e!3257599))))

(assert (=> b!5234966 (= res!2222007 lt!2146306)))

(declare-fun b!5234967 () Bool)

(assert (=> b!5234967 (= e!3257598 (not lt!2146306))))

(declare-fun d!1687592 () Bool)

(assert (=> d!1687592 e!3257603))

(declare-fun c!904394 () Bool)

(assert (=> d!1687592 (= c!904394 (is-EmptyExpr!14828 lt!2146113))))

(assert (=> d!1687592 (= lt!2146306 e!3257601)))

(declare-fun c!904395 () Bool)

(assert (=> d!1687592 (= c!904395 (isEmpty!32589 s!2326))))

(assert (=> d!1687592 (validRegex!6564 lt!2146113)))

(assert (=> d!1687592 (= (matchR!7013 lt!2146113 s!2326) lt!2146306)))

(declare-fun b!5234963 () Bool)

(declare-fun res!2222008 () Bool)

(assert (=> b!5234963 (=> res!2222008 e!3257600)))

(assert (=> b!5234963 (= res!2222008 (not (is-ElementMatch!14828 lt!2146113)))))

(assert (=> b!5234963 (= e!3257598 e!3257600)))

(assert (= (and d!1687592 c!904395) b!5234956))

(assert (= (and d!1687592 (not c!904395)) b!5234964))

(assert (= (and d!1687592 c!904394) b!5234965))

(assert (= (and d!1687592 (not c!904394)) b!5234962))

(assert (= (and b!5234962 c!904396) b!5234967))

(assert (= (and b!5234962 (not c!904396)) b!5234963))

(assert (= (and b!5234963 (not res!2222008)) b!5234966))

(assert (= (and b!5234966 res!2222007) b!5234955))

(assert (= (and b!5234955 res!2222005) b!5234961))

(assert (= (and b!5234961 res!2222009) b!5234954))

(assert (= (and b!5234966 (not res!2222004)) b!5234959))

(assert (= (and b!5234959 res!2222003) b!5234958))

(assert (= (and b!5234958 (not res!2222006)) b!5234957))

(assert (= (and b!5234957 (not res!2222002)) b!5234960))

(assert (= (or b!5234965 b!5234955 b!5234958) bm!370442))

(assert (=> b!5234954 m!6280324))

(assert (=> b!5234961 m!6280328))

(assert (=> b!5234961 m!6280328))

(declare-fun m!6280466 () Bool)

(assert (=> b!5234961 m!6280466))

(assert (=> b!5234957 m!6280328))

(assert (=> b!5234957 m!6280328))

(assert (=> b!5234957 m!6280466))

(assert (=> d!1687592 m!6280320))

(declare-fun m!6280468 () Bool)

(assert (=> d!1687592 m!6280468))

(assert (=> bm!370442 m!6280320))

(declare-fun m!6280470 () Bool)

(assert (=> b!5234956 m!6280470))

(assert (=> b!5234964 m!6280324))

(assert (=> b!5234964 m!6280324))

(declare-fun m!6280472 () Bool)

(assert (=> b!5234964 m!6280472))

(assert (=> b!5234964 m!6280328))

(assert (=> b!5234964 m!6280472))

(assert (=> b!5234964 m!6280328))

(declare-fun m!6280474 () Bool)

(assert (=> b!5234964 m!6280474))

(assert (=> b!5234960 m!6280324))

(assert (=> b!5234479 d!1687592))

(declare-fun b!5234972 () Bool)

(declare-fun e!3257608 () Bool)

(assert (=> b!5234972 (= e!3257608 (= (head!11213 s!2326) (c!904264 lt!2146128)))))

(declare-fun b!5234973 () Bool)

(declare-fun res!2222017 () Bool)

(assert (=> b!5234973 (=> (not res!2222017) (not e!3257608))))

(declare-fun call!370448 () Bool)

(assert (=> b!5234973 (= res!2222017 (not call!370448))))

(declare-fun b!5234974 () Bool)

(declare-fun e!3257610 () Bool)

(assert (=> b!5234974 (= e!3257610 (nullable!4997 lt!2146128))))

(declare-fun b!5234975 () Bool)

(declare-fun res!2222014 () Bool)

(declare-fun e!3257606 () Bool)

(assert (=> b!5234975 (=> res!2222014 e!3257606)))

(assert (=> b!5234975 (= res!2222014 (not (isEmpty!32589 (tail!10310 s!2326))))))

(declare-fun b!5234976 () Bool)

(declare-fun e!3257611 () Bool)

(assert (=> b!5234976 (= e!3257611 e!3257606)))

(declare-fun res!2222018 () Bool)

(assert (=> b!5234976 (=> res!2222018 e!3257606)))

(assert (=> b!5234976 (= res!2222018 call!370448)))

(declare-fun b!5234977 () Bool)

(declare-fun e!3257609 () Bool)

(assert (=> b!5234977 (= e!3257609 e!3257611)))

(declare-fun res!2222015 () Bool)

(assert (=> b!5234977 (=> (not res!2222015) (not e!3257611))))

(declare-fun lt!2146307 () Bool)

(assert (=> b!5234977 (= res!2222015 (not lt!2146307))))

(declare-fun b!5234978 () Bool)

(assert (=> b!5234978 (= e!3257606 (not (= (head!11213 s!2326) (c!904264 lt!2146128))))))

(declare-fun b!5234979 () Bool)

(declare-fun res!2222021 () Bool)

(assert (=> b!5234979 (=> (not res!2222021) (not e!3257608))))

(assert (=> b!5234979 (= res!2222021 (isEmpty!32589 (tail!10310 s!2326)))))

(declare-fun b!5234980 () Bool)

(declare-fun e!3257612 () Bool)

(declare-fun e!3257607 () Bool)

(assert (=> b!5234980 (= e!3257612 e!3257607)))

(declare-fun c!904399 () Bool)

(assert (=> b!5234980 (= c!904399 (is-EmptyLang!14828 lt!2146128))))

(declare-fun bm!370443 () Bool)

(assert (=> bm!370443 (= call!370448 (isEmpty!32589 s!2326))))

(declare-fun b!5234982 () Bool)

(assert (=> b!5234982 (= e!3257610 (matchR!7013 (derivativeStep!4069 lt!2146128 (head!11213 s!2326)) (tail!10310 s!2326)))))

(declare-fun b!5234983 () Bool)

(assert (=> b!5234983 (= e!3257612 (= lt!2146307 call!370448))))

(declare-fun b!5234984 () Bool)

(declare-fun res!2222016 () Bool)

(assert (=> b!5234984 (=> res!2222016 e!3257609)))

(assert (=> b!5234984 (= res!2222016 e!3257608)))

(declare-fun res!2222019 () Bool)

(assert (=> b!5234984 (=> (not res!2222019) (not e!3257608))))

(assert (=> b!5234984 (= res!2222019 lt!2146307)))

(declare-fun b!5234985 () Bool)

(assert (=> b!5234985 (= e!3257607 (not lt!2146307))))

(declare-fun d!1687594 () Bool)

(assert (=> d!1687594 e!3257612))

(declare-fun c!904397 () Bool)

(assert (=> d!1687594 (= c!904397 (is-EmptyExpr!14828 lt!2146128))))

(assert (=> d!1687594 (= lt!2146307 e!3257610)))

(declare-fun c!904398 () Bool)

(assert (=> d!1687594 (= c!904398 (isEmpty!32589 s!2326))))

(assert (=> d!1687594 (validRegex!6564 lt!2146128)))

(assert (=> d!1687594 (= (matchR!7013 lt!2146128 s!2326) lt!2146307)))

(declare-fun b!5234981 () Bool)

(declare-fun res!2222020 () Bool)

(assert (=> b!5234981 (=> res!2222020 e!3257609)))

(assert (=> b!5234981 (= res!2222020 (not (is-ElementMatch!14828 lt!2146128)))))

(assert (=> b!5234981 (= e!3257607 e!3257609)))

(assert (= (and d!1687594 c!904398) b!5234974))

(assert (= (and d!1687594 (not c!904398)) b!5234982))

(assert (= (and d!1687594 c!904397) b!5234983))

(assert (= (and d!1687594 (not c!904397)) b!5234980))

(assert (= (and b!5234980 c!904399) b!5234985))

(assert (= (and b!5234980 (not c!904399)) b!5234981))

(assert (= (and b!5234981 (not res!2222020)) b!5234984))

(assert (= (and b!5234984 res!2222019) b!5234973))

(assert (= (and b!5234973 res!2222017) b!5234979))

(assert (= (and b!5234979 res!2222021) b!5234972))

(assert (= (and b!5234984 (not res!2222016)) b!5234977))

(assert (= (and b!5234977 res!2222015) b!5234976))

(assert (= (and b!5234976 (not res!2222018)) b!5234975))

(assert (= (and b!5234975 (not res!2222014)) b!5234978))

(assert (= (or b!5234983 b!5234973 b!5234976) bm!370443))

(assert (=> b!5234972 m!6280324))

(assert (=> b!5234979 m!6280328))

(assert (=> b!5234979 m!6280328))

(assert (=> b!5234979 m!6280466))

(assert (=> b!5234975 m!6280328))

(assert (=> b!5234975 m!6280328))

(assert (=> b!5234975 m!6280466))

(assert (=> d!1687594 m!6280320))

(declare-fun m!6280476 () Bool)

(assert (=> d!1687594 m!6280476))

(assert (=> bm!370443 m!6280320))

(declare-fun m!6280478 () Bool)

(assert (=> b!5234974 m!6280478))

(assert (=> b!5234982 m!6280324))

(assert (=> b!5234982 m!6280324))

(declare-fun m!6280480 () Bool)

(assert (=> b!5234982 m!6280480))

(assert (=> b!5234982 m!6280328))

(assert (=> b!5234982 m!6280480))

(assert (=> b!5234982 m!6280328))

(declare-fun m!6280482 () Bool)

(assert (=> b!5234982 m!6280482))

(assert (=> b!5234978 m!6280324))

(assert (=> b!5234479 d!1687594))

(declare-fun bs!1215224 () Bool)

(declare-fun d!1687596 () Bool)

(assert (= bs!1215224 (and d!1687596 d!1687500)))

(declare-fun lambda!263096 () Int)

(assert (=> bs!1215224 (= lambda!263096 lambda!263075)))

(declare-fun bs!1215225 () Bool)

(assert (= bs!1215225 (and d!1687596 d!1687554)))

(assert (=> bs!1215225 (= lambda!263096 lambda!263081)))

(declare-fun bs!1215226 () Bool)

(assert (= bs!1215226 (and d!1687596 d!1687532)))

(assert (=> bs!1215226 (= lambda!263096 lambda!263078)))

(declare-fun bs!1215227 () Bool)

(assert (= bs!1215227 (and d!1687596 d!1687498)))

(assert (=> bs!1215227 (= lambda!263096 lambda!263072)))

(declare-fun bs!1215228 () Bool)

(assert (= bs!1215228 (and d!1687596 b!5234479)))

(assert (=> bs!1215228 (= lambda!263096 lambda!263051)))

(declare-fun bs!1215229 () Bool)

(assert (= bs!1215229 (and d!1687596 d!1687580)))

(assert (=> bs!1215229 (= lambda!263096 lambda!263091)))

(declare-fun b!5234986 () Bool)

(declare-fun e!3257614 () Bool)

(declare-fun e!3257615 () Bool)

(assert (=> b!5234986 (= e!3257614 e!3257615)))

(declare-fun c!904402 () Bool)

(assert (=> b!5234986 (= c!904402 (isEmpty!32586 lt!2146126))))

(assert (=> d!1687596 e!3257614))

(declare-fun res!2222023 () Bool)

(assert (=> d!1687596 (=> (not res!2222023) (not e!3257614))))

(declare-fun lt!2146308 () Regex!14828)

(assert (=> d!1687596 (= res!2222023 (validRegex!6564 lt!2146308))))

(declare-fun e!3257618 () Regex!14828)

(assert (=> d!1687596 (= lt!2146308 e!3257618)))

(declare-fun c!904403 () Bool)

(declare-fun e!3257616 () Bool)

(assert (=> d!1687596 (= c!904403 e!3257616)))

(declare-fun res!2222022 () Bool)

(assert (=> d!1687596 (=> (not res!2222022) (not e!3257616))))

(assert (=> d!1687596 (= res!2222022 (is-Cons!60660 lt!2146126))))

(assert (=> d!1687596 (forall!14256 lt!2146126 lambda!263096)))

(assert (=> d!1687596 (= (generalisedConcat!497 lt!2146126) lt!2146308)))

(declare-fun b!5234987 () Bool)

(assert (=> b!5234987 (= e!3257616 (isEmpty!32586 (t!373965 lt!2146126)))))

(declare-fun b!5234988 () Bool)

(declare-fun e!3257613 () Bool)

(assert (=> b!5234988 (= e!3257613 (= lt!2146308 (head!11214 lt!2146126)))))

(declare-fun b!5234989 () Bool)

(declare-fun e!3257617 () Regex!14828)

(assert (=> b!5234989 (= e!3257617 EmptyExpr!14828)))

(declare-fun b!5234990 () Bool)

(assert (=> b!5234990 (= e!3257618 e!3257617)))

(declare-fun c!904401 () Bool)

(assert (=> b!5234990 (= c!904401 (is-Cons!60660 lt!2146126))))

(declare-fun b!5234991 () Bool)

(assert (=> b!5234991 (= e!3257615 (isEmptyExpr!783 lt!2146308))))

(declare-fun b!5234992 () Bool)

(assert (=> b!5234992 (= e!3257618 (h!67108 lt!2146126))))

(declare-fun b!5234993 () Bool)

(assert (=> b!5234993 (= e!3257617 (Concat!23673 (h!67108 lt!2146126) (generalisedConcat!497 (t!373965 lt!2146126))))))

(declare-fun b!5234994 () Bool)

(assert (=> b!5234994 (= e!3257615 e!3257613)))

(declare-fun c!904400 () Bool)

(assert (=> b!5234994 (= c!904400 (isEmpty!32586 (tail!10311 lt!2146126)))))

(declare-fun b!5234995 () Bool)

(assert (=> b!5234995 (= e!3257613 (isConcat!306 lt!2146308))))

(assert (= (and d!1687596 res!2222022) b!5234987))

(assert (= (and d!1687596 c!904403) b!5234992))

(assert (= (and d!1687596 (not c!904403)) b!5234990))

(assert (= (and b!5234990 c!904401) b!5234993))

(assert (= (and b!5234990 (not c!904401)) b!5234989))

(assert (= (and d!1687596 res!2222023) b!5234986))

(assert (= (and b!5234986 c!904402) b!5234991))

(assert (= (and b!5234986 (not c!904402)) b!5234994))

(assert (= (and b!5234994 c!904400) b!5234988))

(assert (= (and b!5234994 (not c!904400)) b!5234995))

(declare-fun m!6280484 () Bool)

(assert (=> b!5234986 m!6280484))

(declare-fun m!6280486 () Bool)

(assert (=> b!5234991 m!6280486))

(declare-fun m!6280488 () Bool)

(assert (=> b!5234987 m!6280488))

(declare-fun m!6280490 () Bool)

(assert (=> b!5234994 m!6280490))

(assert (=> b!5234994 m!6280490))

(declare-fun m!6280492 () Bool)

(assert (=> b!5234994 m!6280492))

(declare-fun m!6280494 () Bool)

(assert (=> d!1687596 m!6280494))

(declare-fun m!6280496 () Bool)

(assert (=> d!1687596 m!6280496))

(declare-fun m!6280498 () Bool)

(assert (=> b!5234993 m!6280498))

(declare-fun m!6280500 () Bool)

(assert (=> b!5234988 m!6280500))

(declare-fun m!6280502 () Bool)

(assert (=> b!5234995 m!6280502))

(assert (=> b!5234479 d!1687596))

(assert (=> b!5234479 d!1687578))

(declare-fun d!1687598 () Bool)

(assert (=> d!1687598 (= (matchR!7013 lt!2146128 s!2326) (matchZipper!1072 lt!2146133 s!2326))))

(declare-fun lt!2146311 () Unit!152638)

(declare-fun choose!38937 ((Set Context!8424) List!60785 Regex!14828 List!60783) Unit!152638)

(assert (=> d!1687598 (= lt!2146311 (choose!38937 lt!2146133 lt!2146132 lt!2146128 s!2326))))

(assert (=> d!1687598 (validRegex!6564 lt!2146128)))

(assert (=> d!1687598 (= (theoremZipperRegexEquiv!262 lt!2146133 lt!2146132 lt!2146128 s!2326) lt!2146311)))

(declare-fun bs!1215230 () Bool)

(assert (= bs!1215230 d!1687598))

(assert (=> bs!1215230 m!6279986))

(assert (=> bs!1215230 m!6280008))

(declare-fun m!6280504 () Bool)

(assert (=> bs!1215230 m!6280504))

(assert (=> bs!1215230 m!6280476))

(assert (=> b!5234479 d!1687598))

(declare-fun bs!1215231 () Bool)

(declare-fun d!1687600 () Bool)

(assert (= bs!1215231 (and d!1687600 d!1687500)))

(declare-fun lambda!263097 () Int)

(assert (=> bs!1215231 (= lambda!263097 lambda!263075)))

(declare-fun bs!1215232 () Bool)

(assert (= bs!1215232 (and d!1687600 d!1687554)))

(assert (=> bs!1215232 (= lambda!263097 lambda!263081)))

(declare-fun bs!1215233 () Bool)

(assert (= bs!1215233 (and d!1687600 d!1687532)))

(assert (=> bs!1215233 (= lambda!263097 lambda!263078)))

(declare-fun bs!1215234 () Bool)

(assert (= bs!1215234 (and d!1687600 d!1687596)))

(assert (=> bs!1215234 (= lambda!263097 lambda!263096)))

(declare-fun bs!1215235 () Bool)

(assert (= bs!1215235 (and d!1687600 d!1687498)))

(assert (=> bs!1215235 (= lambda!263097 lambda!263072)))

(declare-fun bs!1215236 () Bool)

(assert (= bs!1215236 (and d!1687600 b!5234479)))

(assert (=> bs!1215236 (= lambda!263097 lambda!263051)))

(declare-fun bs!1215237 () Bool)

(assert (= bs!1215237 (and d!1687600 d!1687580)))

(assert (=> bs!1215237 (= lambda!263097 lambda!263091)))

(declare-fun b!5234996 () Bool)

(declare-fun e!3257620 () Bool)

(declare-fun e!3257621 () Bool)

(assert (=> b!5234996 (= e!3257620 e!3257621)))

(declare-fun c!904406 () Bool)

(assert (=> b!5234996 (= c!904406 (isEmpty!32586 lt!2146130))))

(assert (=> d!1687600 e!3257620))

(declare-fun res!2222025 () Bool)

(assert (=> d!1687600 (=> (not res!2222025) (not e!3257620))))

(declare-fun lt!2146312 () Regex!14828)

(assert (=> d!1687600 (= res!2222025 (validRegex!6564 lt!2146312))))

(declare-fun e!3257624 () Regex!14828)

(assert (=> d!1687600 (= lt!2146312 e!3257624)))

(declare-fun c!904407 () Bool)

(declare-fun e!3257622 () Bool)

(assert (=> d!1687600 (= c!904407 e!3257622)))

(declare-fun res!2222024 () Bool)

(assert (=> d!1687600 (=> (not res!2222024) (not e!3257622))))

(assert (=> d!1687600 (= res!2222024 (is-Cons!60660 lt!2146130))))

(assert (=> d!1687600 (forall!14256 lt!2146130 lambda!263097)))

(assert (=> d!1687600 (= (generalisedConcat!497 lt!2146130) lt!2146312)))

(declare-fun b!5234997 () Bool)

(assert (=> b!5234997 (= e!3257622 (isEmpty!32586 (t!373965 lt!2146130)))))

(declare-fun b!5234998 () Bool)

(declare-fun e!3257619 () Bool)

(assert (=> b!5234998 (= e!3257619 (= lt!2146312 (head!11214 lt!2146130)))))

(declare-fun b!5234999 () Bool)

(declare-fun e!3257623 () Regex!14828)

(assert (=> b!5234999 (= e!3257623 EmptyExpr!14828)))

(declare-fun b!5235000 () Bool)

(assert (=> b!5235000 (= e!3257624 e!3257623)))

(declare-fun c!904405 () Bool)

(assert (=> b!5235000 (= c!904405 (is-Cons!60660 lt!2146130))))

(declare-fun b!5235001 () Bool)

(assert (=> b!5235001 (= e!3257621 (isEmptyExpr!783 lt!2146312))))

(declare-fun b!5235002 () Bool)

(assert (=> b!5235002 (= e!3257624 (h!67108 lt!2146130))))

(declare-fun b!5235003 () Bool)

(assert (=> b!5235003 (= e!3257623 (Concat!23673 (h!67108 lt!2146130) (generalisedConcat!497 (t!373965 lt!2146130))))))

(declare-fun b!5235004 () Bool)

(assert (=> b!5235004 (= e!3257621 e!3257619)))

(declare-fun c!904404 () Bool)

(assert (=> b!5235004 (= c!904404 (isEmpty!32586 (tail!10311 lt!2146130)))))

(declare-fun b!5235005 () Bool)

(assert (=> b!5235005 (= e!3257619 (isConcat!306 lt!2146312))))

(assert (= (and d!1687600 res!2222024) b!5234997))

(assert (= (and d!1687600 c!904407) b!5235002))

(assert (= (and d!1687600 (not c!904407)) b!5235000))

(assert (= (and b!5235000 c!904405) b!5235003))

(assert (= (and b!5235000 (not c!904405)) b!5234999))

(assert (= (and d!1687600 res!2222025) b!5234996))

(assert (= (and b!5234996 c!904406) b!5235001))

(assert (= (and b!5234996 (not c!904406)) b!5235004))

(assert (= (and b!5235004 c!904404) b!5234998))

(assert (= (and b!5235004 (not c!904404)) b!5235005))

(declare-fun m!6280506 () Bool)

(assert (=> b!5234996 m!6280506))

(declare-fun m!6280508 () Bool)

(assert (=> b!5235001 m!6280508))

(declare-fun m!6280510 () Bool)

(assert (=> b!5234997 m!6280510))

(declare-fun m!6280512 () Bool)

(assert (=> b!5235004 m!6280512))

(assert (=> b!5235004 m!6280512))

(declare-fun m!6280514 () Bool)

(assert (=> b!5235004 m!6280514))

(declare-fun m!6280516 () Bool)

(assert (=> d!1687600 m!6280516))

(declare-fun m!6280518 () Bool)

(assert (=> d!1687600 m!6280518))

(declare-fun m!6280520 () Bool)

(assert (=> b!5235003 m!6280520))

(declare-fun m!6280522 () Bool)

(assert (=> b!5234998 m!6280522))

(declare-fun m!6280524 () Bool)

(assert (=> b!5235005 m!6280524))

(assert (=> b!5234479 d!1687600))

(declare-fun d!1687602 () Bool)

(assert (=> d!1687602 (= (matchR!7013 lt!2146113 s!2326) (matchZipper!1072 lt!2146120 s!2326))))

(declare-fun lt!2146313 () Unit!152638)

(assert (=> d!1687602 (= lt!2146313 (choose!38937 lt!2146120 lt!2146106 lt!2146113 s!2326))))

(assert (=> d!1687602 (validRegex!6564 lt!2146113)))

(assert (=> d!1687602 (= (theoremZipperRegexEquiv!262 lt!2146120 lt!2146106 lt!2146113 s!2326) lt!2146313)))

(declare-fun bs!1215238 () Bool)

(assert (= bs!1215238 d!1687602))

(assert (=> bs!1215238 m!6279982))

(assert (=> bs!1215238 m!6279990))

(declare-fun m!6280526 () Bool)

(assert (=> bs!1215238 m!6280526))

(assert (=> bs!1215238 m!6280468))

(assert (=> b!5234479 d!1687602))

(declare-fun bs!1215242 () Bool)

(declare-fun b!5235054 () Bool)

(assert (= bs!1215242 (and b!5235054 b!5234453)))

(declare-fun lambda!263104 () Int)

(assert (=> bs!1215242 (not (= lambda!263104 lambda!263049))))

(declare-fun bs!1215243 () Bool)

(assert (= bs!1215243 (and b!5235054 d!1687562)))

(assert (=> bs!1215243 (not (= lambda!263104 lambda!263084))))

(declare-fun bs!1215244 () Bool)

(assert (= bs!1215244 (and b!5235054 d!1687564)))

(assert (=> bs!1215244 (not (= lambda!263104 lambda!263090))))

(assert (=> bs!1215242 (not (= lambda!263104 lambda!263048))))

(assert (=> bs!1215244 (not (= lambda!263104 lambda!263089))))

(assert (=> b!5235054 true))

(assert (=> b!5235054 true))

(declare-fun bs!1215245 () Bool)

(declare-fun b!5235057 () Bool)

(assert (= bs!1215245 (and b!5235057 b!5234453)))

(declare-fun lambda!263105 () Int)

(assert (=> bs!1215245 (= lambda!263105 lambda!263049)))

(declare-fun bs!1215246 () Bool)

(assert (= bs!1215246 (and b!5235057 d!1687562)))

(assert (=> bs!1215246 (not (= lambda!263105 lambda!263084))))

(declare-fun bs!1215247 () Bool)

(assert (= bs!1215247 (and b!5235057 d!1687564)))

(assert (=> bs!1215247 (= lambda!263105 lambda!263090)))

(declare-fun bs!1215248 () Bool)

(assert (= bs!1215248 (and b!5235057 b!5235054)))

(assert (=> bs!1215248 (not (= lambda!263105 lambda!263104))))

(assert (=> bs!1215245 (not (= lambda!263105 lambda!263048))))

(assert (=> bs!1215247 (not (= lambda!263105 lambda!263089))))

(assert (=> b!5235057 true))

(assert (=> b!5235057 true))

(declare-fun b!5235049 () Bool)

(declare-fun res!2222047 () Bool)

(declare-fun e!3257650 () Bool)

(assert (=> b!5235049 (=> res!2222047 e!3257650)))

(declare-fun call!370460 () Bool)

(assert (=> b!5235049 (= res!2222047 call!370460)))

(declare-fun e!3257651 () Bool)

(assert (=> b!5235049 (= e!3257651 e!3257650)))

(declare-fun bm!370454 () Bool)

(assert (=> bm!370454 (= call!370460 (isEmpty!32589 s!2326))))

(declare-fun b!5235050 () Bool)

(declare-fun e!3257654 () Bool)

(declare-fun e!3257656 () Bool)

(assert (=> b!5235050 (= e!3257654 e!3257656)))

(declare-fun res!2222045 () Bool)

(assert (=> b!5235050 (= res!2222045 (not (is-EmptyLang!14828 r!7292)))))

(assert (=> b!5235050 (=> (not res!2222045) (not e!3257656))))

(declare-fun b!5235051 () Bool)

(assert (=> b!5235051 (= e!3257654 call!370460)))

(declare-fun b!5235052 () Bool)

(declare-fun c!904422 () Bool)

(assert (=> b!5235052 (= c!904422 (is-ElementMatch!14828 r!7292))))

(declare-fun e!3257653 () Bool)

(assert (=> b!5235052 (= e!3257656 e!3257653)))

(declare-fun b!5235053 () Bool)

(declare-fun c!904421 () Bool)

(assert (=> b!5235053 (= c!904421 (is-Union!14828 r!7292))))

(declare-fun e!3257655 () Bool)

(assert (=> b!5235053 (= e!3257653 e!3257655)))

(declare-fun d!1687604 () Bool)

(declare-fun c!904420 () Bool)

(assert (=> d!1687604 (= c!904420 (is-EmptyExpr!14828 r!7292))))

(assert (=> d!1687604 (= (matchRSpec!1931 r!7292 s!2326) e!3257654)))

(declare-fun call!370459 () Bool)

(assert (=> b!5235054 (= e!3257650 call!370459)))

(declare-fun b!5235055 () Bool)

(assert (=> b!5235055 (= e!3257655 e!3257651)))

(declare-fun c!904423 () Bool)

(assert (=> b!5235055 (= c!904423 (is-Star!14828 r!7292))))

(declare-fun b!5235056 () Bool)

(declare-fun e!3257652 () Bool)

(assert (=> b!5235056 (= e!3257652 (matchRSpec!1931 (regTwo!30169 r!7292) s!2326))))

(assert (=> b!5235057 (= e!3257651 call!370459)))

(declare-fun b!5235058 () Bool)

(assert (=> b!5235058 (= e!3257655 e!3257652)))

(declare-fun res!2222046 () Bool)

(assert (=> b!5235058 (= res!2222046 (matchRSpec!1931 (regOne!30169 r!7292) s!2326))))

(assert (=> b!5235058 (=> res!2222046 e!3257652)))

(declare-fun bm!370455 () Bool)

(assert (=> bm!370455 (= call!370459 (Exists!2009 (ite c!904423 lambda!263104 lambda!263105)))))

(declare-fun b!5235059 () Bool)

(assert (=> b!5235059 (= e!3257653 (= s!2326 (Cons!60659 (c!904264 r!7292) Nil!60659)))))

(assert (= (and d!1687604 c!904420) b!5235051))

(assert (= (and d!1687604 (not c!904420)) b!5235050))

(assert (= (and b!5235050 res!2222045) b!5235052))

(assert (= (and b!5235052 c!904422) b!5235059))

(assert (= (and b!5235052 (not c!904422)) b!5235053))

(assert (= (and b!5235053 c!904421) b!5235058))

(assert (= (and b!5235053 (not c!904421)) b!5235055))

(assert (= (and b!5235058 (not res!2222046)) b!5235056))

(assert (= (and b!5235055 c!904423) b!5235049))

(assert (= (and b!5235055 (not c!904423)) b!5235057))

(assert (= (and b!5235049 (not res!2222047)) b!5235054))

(assert (= (or b!5235054 b!5235057) bm!370455))

(assert (= (or b!5235051 b!5235049) bm!370454))

(assert (=> bm!370454 m!6280320))

(declare-fun m!6280534 () Bool)

(assert (=> b!5235056 m!6280534))

(declare-fun m!6280536 () Bool)

(assert (=> b!5235058 m!6280536))

(declare-fun m!6280538 () Bool)

(assert (=> bm!370455 m!6280538))

(assert (=> b!5234482 d!1687604))

(declare-fun b!5235060 () Bool)

(declare-fun e!3257659 () Bool)

(assert (=> b!5235060 (= e!3257659 (= (head!11213 s!2326) (c!904264 r!7292)))))

(declare-fun b!5235061 () Bool)

(declare-fun res!2222051 () Bool)

(assert (=> b!5235061 (=> (not res!2222051) (not e!3257659))))

(declare-fun call!370461 () Bool)

(assert (=> b!5235061 (= res!2222051 (not call!370461))))

(declare-fun b!5235062 () Bool)

(declare-fun e!3257661 () Bool)

(assert (=> b!5235062 (= e!3257661 (nullable!4997 r!7292))))

(declare-fun b!5235063 () Bool)

(declare-fun res!2222048 () Bool)

(declare-fun e!3257657 () Bool)

(assert (=> b!5235063 (=> res!2222048 e!3257657)))

(assert (=> b!5235063 (= res!2222048 (not (isEmpty!32589 (tail!10310 s!2326))))))

(declare-fun b!5235064 () Bool)

(declare-fun e!3257662 () Bool)

(assert (=> b!5235064 (= e!3257662 e!3257657)))

(declare-fun res!2222052 () Bool)

(assert (=> b!5235064 (=> res!2222052 e!3257657)))

(assert (=> b!5235064 (= res!2222052 call!370461)))

(declare-fun b!5235065 () Bool)

(declare-fun e!3257660 () Bool)

(assert (=> b!5235065 (= e!3257660 e!3257662)))

(declare-fun res!2222049 () Bool)

(assert (=> b!5235065 (=> (not res!2222049) (not e!3257662))))

(declare-fun lt!2146314 () Bool)

(assert (=> b!5235065 (= res!2222049 (not lt!2146314))))

(declare-fun b!5235066 () Bool)

(assert (=> b!5235066 (= e!3257657 (not (= (head!11213 s!2326) (c!904264 r!7292))))))

(declare-fun b!5235067 () Bool)

(declare-fun res!2222055 () Bool)

(assert (=> b!5235067 (=> (not res!2222055) (not e!3257659))))

(assert (=> b!5235067 (= res!2222055 (isEmpty!32589 (tail!10310 s!2326)))))

(declare-fun b!5235068 () Bool)

(declare-fun e!3257663 () Bool)

(declare-fun e!3257658 () Bool)

(assert (=> b!5235068 (= e!3257663 e!3257658)))

(declare-fun c!904426 () Bool)

(assert (=> b!5235068 (= c!904426 (is-EmptyLang!14828 r!7292))))

(declare-fun bm!370456 () Bool)

(assert (=> bm!370456 (= call!370461 (isEmpty!32589 s!2326))))

(declare-fun b!5235070 () Bool)

(assert (=> b!5235070 (= e!3257661 (matchR!7013 (derivativeStep!4069 r!7292 (head!11213 s!2326)) (tail!10310 s!2326)))))

(declare-fun b!5235071 () Bool)

(assert (=> b!5235071 (= e!3257663 (= lt!2146314 call!370461))))

(declare-fun b!5235072 () Bool)

(declare-fun res!2222050 () Bool)

(assert (=> b!5235072 (=> res!2222050 e!3257660)))

(assert (=> b!5235072 (= res!2222050 e!3257659)))

(declare-fun res!2222053 () Bool)

(assert (=> b!5235072 (=> (not res!2222053) (not e!3257659))))

(assert (=> b!5235072 (= res!2222053 lt!2146314)))

(declare-fun b!5235073 () Bool)

(assert (=> b!5235073 (= e!3257658 (not lt!2146314))))

(declare-fun d!1687608 () Bool)

(assert (=> d!1687608 e!3257663))

(declare-fun c!904424 () Bool)

(assert (=> d!1687608 (= c!904424 (is-EmptyExpr!14828 r!7292))))

(assert (=> d!1687608 (= lt!2146314 e!3257661)))

(declare-fun c!904425 () Bool)

(assert (=> d!1687608 (= c!904425 (isEmpty!32589 s!2326))))

(assert (=> d!1687608 (validRegex!6564 r!7292)))

(assert (=> d!1687608 (= (matchR!7013 r!7292 s!2326) lt!2146314)))

(declare-fun b!5235069 () Bool)

(declare-fun res!2222054 () Bool)

(assert (=> b!5235069 (=> res!2222054 e!3257660)))

(assert (=> b!5235069 (= res!2222054 (not (is-ElementMatch!14828 r!7292)))))

(assert (=> b!5235069 (= e!3257658 e!3257660)))

(assert (= (and d!1687608 c!904425) b!5235062))

(assert (= (and d!1687608 (not c!904425)) b!5235070))

(assert (= (and d!1687608 c!904424) b!5235071))

(assert (= (and d!1687608 (not c!904424)) b!5235068))

(assert (= (and b!5235068 c!904426) b!5235073))

(assert (= (and b!5235068 (not c!904426)) b!5235069))

(assert (= (and b!5235069 (not res!2222054)) b!5235072))

(assert (= (and b!5235072 res!2222053) b!5235061))

(assert (= (and b!5235061 res!2222051) b!5235067))

(assert (= (and b!5235067 res!2222055) b!5235060))

(assert (= (and b!5235072 (not res!2222050)) b!5235065))

(assert (= (and b!5235065 res!2222049) b!5235064))

(assert (= (and b!5235064 (not res!2222052)) b!5235063))

(assert (= (and b!5235063 (not res!2222048)) b!5235066))

(assert (= (or b!5235071 b!5235061 b!5235064) bm!370456))

(assert (=> b!5235060 m!6280324))

(assert (=> b!5235067 m!6280328))

(assert (=> b!5235067 m!6280328))

(assert (=> b!5235067 m!6280466))

(assert (=> b!5235063 m!6280328))

(assert (=> b!5235063 m!6280328))

(assert (=> b!5235063 m!6280466))

(assert (=> d!1687608 m!6280320))

(assert (=> d!1687608 m!6280036))

(assert (=> bm!370456 m!6280320))

(declare-fun m!6280540 () Bool)

(assert (=> b!5235062 m!6280540))

(assert (=> b!5235070 m!6280324))

(assert (=> b!5235070 m!6280324))

(declare-fun m!6280542 () Bool)

(assert (=> b!5235070 m!6280542))

(assert (=> b!5235070 m!6280328))

(assert (=> b!5235070 m!6280542))

(assert (=> b!5235070 m!6280328))

(declare-fun m!6280544 () Bool)

(assert (=> b!5235070 m!6280544))

(assert (=> b!5235066 m!6280324))

(assert (=> b!5234482 d!1687608))

(declare-fun d!1687610 () Bool)

(assert (=> d!1687610 (= (matchR!7013 r!7292 s!2326) (matchRSpec!1931 r!7292 s!2326))))

(declare-fun lt!2146319 () Unit!152638)

(declare-fun choose!38942 (Regex!14828 List!60783) Unit!152638)

(assert (=> d!1687610 (= lt!2146319 (choose!38942 r!7292 s!2326))))

(assert (=> d!1687610 (validRegex!6564 r!7292)))

(assert (=> d!1687610 (= (mainMatchTheorem!1931 r!7292 s!2326) lt!2146319)))

(declare-fun bs!1215249 () Bool)

(assert (= bs!1215249 d!1687610))

(assert (=> bs!1215249 m!6279928))

(assert (=> bs!1215249 m!6279926))

(declare-fun m!6280546 () Bool)

(assert (=> bs!1215249 m!6280546))

(assert (=> bs!1215249 m!6280036))

(assert (=> b!5234482 d!1687610))

(declare-fun d!1687612 () Bool)

(declare-fun lt!2146320 () Int)

(assert (=> d!1687612 (>= lt!2146320 0)))

(declare-fun e!3257674 () Int)

(assert (=> d!1687612 (= lt!2146320 e!3257674)))

(declare-fun c!904433 () Bool)

(assert (=> d!1687612 (= c!904433 (is-Cons!60661 zl!343))))

(assert (=> d!1687612 (= (zipperDepthTotal!9 zl!343) lt!2146320)))

(declare-fun b!5235092 () Bool)

(assert (=> b!5235092 (= e!3257674 (+ (contextDepthTotal!5 (h!67109 zl!343)) (zipperDepthTotal!9 (t!373966 zl!343))))))

(declare-fun b!5235093 () Bool)

(assert (=> b!5235093 (= e!3257674 0)))

(assert (= (and d!1687612 c!904433) b!5235092))

(assert (= (and d!1687612 (not c!904433)) b!5235093))

(declare-fun m!6280548 () Bool)

(assert (=> b!5235092 m!6280548))

(declare-fun m!6280550 () Bool)

(assert (=> b!5235092 m!6280550))

(assert (=> b!5234462 d!1687612))

(declare-fun d!1687614 () Bool)

(declare-fun lt!2146321 () Int)

(assert (=> d!1687614 (>= lt!2146321 0)))

(declare-fun e!3257677 () Int)

(assert (=> d!1687614 (= lt!2146321 e!3257677)))

(declare-fun c!904434 () Bool)

(assert (=> d!1687614 (= c!904434 (is-Cons!60661 lt!2146132))))

(assert (=> d!1687614 (= (zipperDepthTotal!9 lt!2146132) lt!2146321)))

(declare-fun b!5235100 () Bool)

(assert (=> b!5235100 (= e!3257677 (+ (contextDepthTotal!5 (h!67109 lt!2146132)) (zipperDepthTotal!9 (t!373966 lt!2146132))))))

(declare-fun b!5235101 () Bool)

(assert (=> b!5235101 (= e!3257677 0)))

(assert (= (and d!1687614 c!904434) b!5235100))

(assert (= (and d!1687614 (not c!904434)) b!5235101))

(declare-fun m!6280552 () Bool)

(assert (=> b!5235100 m!6280552))

(declare-fun m!6280554 () Bool)

(assert (=> b!5235100 m!6280554))

(assert (=> b!5234462 d!1687614))

(declare-fun d!1687616 () Bool)

(declare-fun e!3257682 () Bool)

(assert (=> d!1687616 e!3257682))

(declare-fun res!2222074 () Bool)

(assert (=> d!1687616 (=> (not res!2222074) (not e!3257682))))

(declare-fun lt!2146324 () List!60785)

(declare-fun noDuplicate!1204 (List!60785) Bool)

(assert (=> d!1687616 (= res!2222074 (noDuplicate!1204 lt!2146324))))

(declare-fun choose!38944 ((Set Context!8424)) List!60785)

(assert (=> d!1687616 (= lt!2146324 (choose!38944 z!1189))))

(assert (=> d!1687616 (= (toList!8612 z!1189) lt!2146324)))

(declare-fun b!5235108 () Bool)

(declare-fun content!10769 (List!60785) (Set Context!8424))

(assert (=> b!5235108 (= e!3257682 (= (content!10769 lt!2146324) z!1189))))

(assert (= (and d!1687616 res!2222074) b!5235108))

(declare-fun m!6280556 () Bool)

(assert (=> d!1687616 m!6280556))

(declare-fun m!6280558 () Bool)

(assert (=> d!1687616 m!6280558))

(declare-fun m!6280560 () Bool)

(assert (=> b!5235108 m!6280560))

(assert (=> b!5234481 d!1687616))

(declare-fun condSetEmpty!33362 () Bool)

(assert (=> setNonEmpty!33356 (= condSetEmpty!33362 (= setRest!33356 (as set.empty (Set Context!8424))))))

(declare-fun setRes!33362 () Bool)

(assert (=> setNonEmpty!33356 (= tp!1466574 setRes!33362)))

(declare-fun setIsEmpty!33362 () Bool)

(assert (=> setIsEmpty!33362 setRes!33362))

(declare-fun tp!1466614 () Bool)

(declare-fun setNonEmpty!33362 () Bool)

(declare-fun e!3257685 () Bool)

(declare-fun setElem!33362 () Context!8424)

(assert (=> setNonEmpty!33362 (= setRes!33362 (and tp!1466614 (inv!80318 setElem!33362) e!3257685))))

(declare-fun setRest!33362 () (Set Context!8424))

(assert (=> setNonEmpty!33362 (= setRest!33356 (set.union (set.insert setElem!33362 (as set.empty (Set Context!8424))) setRest!33362))))

(declare-fun b!5235113 () Bool)

(declare-fun tp!1466615 () Bool)

(assert (=> b!5235113 (= e!3257685 tp!1466615)))

(assert (= (and setNonEmpty!33356 condSetEmpty!33362) setIsEmpty!33362))

(assert (= (and setNonEmpty!33356 (not condSetEmpty!33362)) setNonEmpty!33362))

(assert (= setNonEmpty!33362 b!5235113))

(declare-fun m!6280562 () Bool)

(assert (=> setNonEmpty!33362 m!6280562))

(declare-fun b!5235118 () Bool)

(declare-fun e!3257688 () Bool)

(declare-fun tp!1466618 () Bool)

(assert (=> b!5235118 (= e!3257688 (and tp_is_empty!38909 tp!1466618))))

(assert (=> b!5234461 (= tp!1466573 e!3257688)))

(assert (= (and b!5234461 (is-Cons!60659 (t!373964 s!2326))) b!5235118))

(declare-fun b!5235126 () Bool)

(declare-fun e!3257694 () Bool)

(declare-fun tp!1466623 () Bool)

(assert (=> b!5235126 (= e!3257694 tp!1466623)))

(declare-fun tp!1466624 () Bool)

(declare-fun e!3257693 () Bool)

(declare-fun b!5235125 () Bool)

(assert (=> b!5235125 (= e!3257693 (and (inv!80318 (h!67109 (t!373966 zl!343))) e!3257694 tp!1466624))))

(assert (=> b!5234449 (= tp!1466571 e!3257693)))

(assert (= b!5235125 b!5235126))

(assert (= (and b!5234449 (is-Cons!60661 (t!373966 zl!343))) b!5235125))

(declare-fun m!6280564 () Bool)

(assert (=> b!5235125 m!6280564))

(declare-fun e!3257697 () Bool)

(assert (=> b!5234464 (= tp!1466575 e!3257697)))

(declare-fun b!5235140 () Bool)

(declare-fun tp!1466637 () Bool)

(declare-fun tp!1466638 () Bool)

(assert (=> b!5235140 (= e!3257697 (and tp!1466637 tp!1466638))))

(declare-fun b!5235138 () Bool)

(declare-fun tp!1466639 () Bool)

(declare-fun tp!1466636 () Bool)

(assert (=> b!5235138 (= e!3257697 (and tp!1466639 tp!1466636))))

(declare-fun b!5235139 () Bool)

(declare-fun tp!1466635 () Bool)

(assert (=> b!5235139 (= e!3257697 tp!1466635)))

(declare-fun b!5235137 () Bool)

(assert (=> b!5235137 (= e!3257697 tp_is_empty!38909)))

(assert (= (and b!5234464 (is-ElementMatch!14828 (reg!15157 r!7292))) b!5235137))

(assert (= (and b!5234464 (is-Concat!23673 (reg!15157 r!7292))) b!5235138))

(assert (= (and b!5234464 (is-Star!14828 (reg!15157 r!7292))) b!5235139))

(assert (= (and b!5234464 (is-Union!14828 (reg!15157 r!7292))) b!5235140))

(declare-fun b!5235145 () Bool)

(declare-fun e!3257700 () Bool)

(declare-fun tp!1466644 () Bool)

(declare-fun tp!1466645 () Bool)

(assert (=> b!5235145 (= e!3257700 (and tp!1466644 tp!1466645))))

(assert (=> b!5234459 (= tp!1466572 e!3257700)))

(assert (= (and b!5234459 (is-Cons!60660 (exprs!4712 setElem!33356))) b!5235145))

(declare-fun b!5235146 () Bool)

(declare-fun e!3257701 () Bool)

(declare-fun tp!1466646 () Bool)

(declare-fun tp!1466647 () Bool)

(assert (=> b!5235146 (= e!3257701 (and tp!1466646 tp!1466647))))

(assert (=> b!5234483 (= tp!1466576 e!3257701)))

(assert (= (and b!5234483 (is-Cons!60660 (exprs!4712 (h!67109 zl!343)))) b!5235146))

(declare-fun e!3257702 () Bool)

(assert (=> b!5234467 (= tp!1466579 e!3257702)))

(declare-fun b!5235150 () Bool)

(declare-fun tp!1466650 () Bool)

(declare-fun tp!1466651 () Bool)

(assert (=> b!5235150 (= e!3257702 (and tp!1466650 tp!1466651))))

(declare-fun b!5235148 () Bool)

(declare-fun tp!1466652 () Bool)

(declare-fun tp!1466649 () Bool)

(assert (=> b!5235148 (= e!3257702 (and tp!1466652 tp!1466649))))

(declare-fun b!5235149 () Bool)

(declare-fun tp!1466648 () Bool)

(assert (=> b!5235149 (= e!3257702 tp!1466648)))

(declare-fun b!5235147 () Bool)

(assert (=> b!5235147 (= e!3257702 tp_is_empty!38909)))

(assert (= (and b!5234467 (is-ElementMatch!14828 (regOne!30168 r!7292))) b!5235147))

(assert (= (and b!5234467 (is-Concat!23673 (regOne!30168 r!7292))) b!5235148))

(assert (= (and b!5234467 (is-Star!14828 (regOne!30168 r!7292))) b!5235149))

(assert (= (and b!5234467 (is-Union!14828 (regOne!30168 r!7292))) b!5235150))

(declare-fun e!3257703 () Bool)

(assert (=> b!5234467 (= tp!1466577 e!3257703)))

(declare-fun b!5235154 () Bool)

(declare-fun tp!1466655 () Bool)

(declare-fun tp!1466656 () Bool)

(assert (=> b!5235154 (= e!3257703 (and tp!1466655 tp!1466656))))

(declare-fun b!5235152 () Bool)

(declare-fun tp!1466657 () Bool)

(declare-fun tp!1466654 () Bool)

(assert (=> b!5235152 (= e!3257703 (and tp!1466657 tp!1466654))))

(declare-fun b!5235153 () Bool)

(declare-fun tp!1466653 () Bool)

(assert (=> b!5235153 (= e!3257703 tp!1466653)))

(declare-fun b!5235151 () Bool)

(assert (=> b!5235151 (= e!3257703 tp_is_empty!38909)))

(assert (= (and b!5234467 (is-ElementMatch!14828 (regTwo!30168 r!7292))) b!5235151))

(assert (= (and b!5234467 (is-Concat!23673 (regTwo!30168 r!7292))) b!5235152))

(assert (= (and b!5234467 (is-Star!14828 (regTwo!30168 r!7292))) b!5235153))

(assert (= (and b!5234467 (is-Union!14828 (regTwo!30168 r!7292))) b!5235154))

(declare-fun e!3257704 () Bool)

(assert (=> b!5234463 (= tp!1466578 e!3257704)))

(declare-fun b!5235158 () Bool)

(declare-fun tp!1466660 () Bool)

(declare-fun tp!1466661 () Bool)

(assert (=> b!5235158 (= e!3257704 (and tp!1466660 tp!1466661))))

(declare-fun b!5235156 () Bool)

(declare-fun tp!1466662 () Bool)

(declare-fun tp!1466659 () Bool)

(assert (=> b!5235156 (= e!3257704 (and tp!1466662 tp!1466659))))

(declare-fun b!5235157 () Bool)

(declare-fun tp!1466658 () Bool)

(assert (=> b!5235157 (= e!3257704 tp!1466658)))

(declare-fun b!5235155 () Bool)

(assert (=> b!5235155 (= e!3257704 tp_is_empty!38909)))

(assert (= (and b!5234463 (is-ElementMatch!14828 (regOne!30169 r!7292))) b!5235155))

(assert (= (and b!5234463 (is-Concat!23673 (regOne!30169 r!7292))) b!5235156))

(assert (= (and b!5234463 (is-Star!14828 (regOne!30169 r!7292))) b!5235157))

(assert (= (and b!5234463 (is-Union!14828 (regOne!30169 r!7292))) b!5235158))

(declare-fun e!3257705 () Bool)

(assert (=> b!5234463 (= tp!1466570 e!3257705)))

(declare-fun b!5235162 () Bool)

(declare-fun tp!1466665 () Bool)

(declare-fun tp!1466666 () Bool)

(assert (=> b!5235162 (= e!3257705 (and tp!1466665 tp!1466666))))

(declare-fun b!5235160 () Bool)

(declare-fun tp!1466667 () Bool)

(declare-fun tp!1466664 () Bool)

(assert (=> b!5235160 (= e!3257705 (and tp!1466667 tp!1466664))))

(declare-fun b!5235161 () Bool)

(declare-fun tp!1466663 () Bool)

(assert (=> b!5235161 (= e!3257705 tp!1466663)))

(declare-fun b!5235159 () Bool)

(assert (=> b!5235159 (= e!3257705 tp_is_empty!38909)))

(assert (= (and b!5234463 (is-ElementMatch!14828 (regTwo!30169 r!7292))) b!5235159))

(assert (= (and b!5234463 (is-Concat!23673 (regTwo!30169 r!7292))) b!5235160))

(assert (= (and b!5234463 (is-Star!14828 (regTwo!30169 r!7292))) b!5235161))

(assert (= (and b!5234463 (is-Union!14828 (regTwo!30169 r!7292))) b!5235162))

(declare-fun b_lambda!202397 () Bool)

(assert (= b_lambda!202389 (or b!5234468 b_lambda!202397)))

(declare-fun bs!1215250 () Bool)

(declare-fun d!1687618 () Bool)

(assert (= bs!1215250 (and d!1687618 b!5234468)))

(assert (=> bs!1215250 (= (dynLambda!23969 lambda!263050 (h!67109 zl!343)) (derivationStepZipperUp!200 (h!67109 zl!343) (h!67107 s!2326)))))

(assert (=> bs!1215250 m!6279960))

(assert (=> d!1687526 d!1687618))

(declare-fun b_lambda!202399 () Bool)

(assert (= b_lambda!202391 (or b!5234468 b_lambda!202399)))

(declare-fun bs!1215251 () Bool)

(declare-fun d!1687620 () Bool)

(assert (= bs!1215251 (and d!1687620 b!5234468)))

(assert (=> bs!1215251 (= (dynLambda!23969 lambda!263050 lt!2146136) (derivationStepZipperUp!200 lt!2146136 (h!67107 s!2326)))))

(assert (=> bs!1215251 m!6280022))

(assert (=> d!1687544 d!1687620))

(declare-fun b_lambda!202401 () Bool)

(assert (= b_lambda!202393 (or b!5234468 b_lambda!202401)))

(declare-fun bs!1215252 () Bool)

(declare-fun d!1687622 () Bool)

(assert (= bs!1215252 (and d!1687622 b!5234468)))

(assert (=> bs!1215252 (= (dynLambda!23969 lambda!263050 lt!2146109) (derivationStepZipperUp!200 lt!2146109 (h!67107 s!2326)))))

(assert (=> bs!1215252 m!6280026))

(assert (=> d!1687548 d!1687622))

(declare-fun b_lambda!202403 () Bool)

(assert (= b_lambda!202395 (or b!5234479 b_lambda!202403)))

(declare-fun bs!1215253 () Bool)

(declare-fun d!1687624 () Bool)

(assert (= bs!1215253 (and d!1687624 b!5234479)))

(assert (=> bs!1215253 (= (dynLambda!23970 lambda!263051 (h!67108 lt!2146130)) (validRegex!6564 (h!67108 lt!2146130)))))

(declare-fun m!6280566 () Bool)

(assert (=> bs!1215253 m!6280566))

(assert (=> b!5234896 d!1687624))

(push 1)

(assert (not bm!370406))

(assert (not d!1687494))

(assert (not b!5234974))

(assert (not d!1687600))

(assert (not b!5234782))

(assert (not b!5234837))

(assert (not b!5234957))

(assert (not b!5234694))

(assert (not b!5235066))

(assert (not b!5235118))

(assert (not b!5234706))

(assert (not bm!370431))

(assert (not d!1687548))

(assert (not b!5234833))

(assert (not b!5234686))

(assert (not d!1687570))

(assert (not b!5234784))

(assert (not b!5235062))

(assert (not d!1687616))

(assert (not b!5235154))

(assert (not bm!370427))

(assert (not b!5235140))

(assert (not b!5234663))

(assert (not bm!370442))

(assert (not d!1687518))

(assert (not b!5234704))

(assert (not bm!370425))

(assert (not d!1687508))

(assert (not b!5234777))

(assert (not b!5234885))

(assert (not d!1687610))

(assert (not b!5234712))

(assert (not d!1687580))

(assert (not b!5234699))

(assert (not b!5234770))

(assert (not d!1687500))

(assert (not b!5234991))

(assert (not b!5234866))

(assert (not d!1687558))

(assert (not b!5234632))

(assert (not b!5235058))

(assert (not bm!370454))

(assert (not d!1687560))

(assert (not b!5234975))

(assert (not b!5234995))

(assert (not b!5234780))

(assert (not d!1687592))

(assert (not d!1687598))

(assert (not b!5235138))

(assert (not b!5235003))

(assert (not b!5234729))

(assert (not b!5234705))

(assert (not d!1687504))

(assert (not b!5234874))

(assert (not b!5234688))

(assert (not b!5235092))

(assert (not b!5234979))

(assert (not b!5234998))

(assert (not b!5234701))

(assert (not b!5234685))

(assert (not bm!370443))

(assert (not d!1687526))

(assert (not b!5234982))

(assert (not d!1687596))

(assert (not bm!370439))

(assert (not b!5234781))

(assert (not b!5234711))

(assert (not b!5234689))

(assert (not b!5234964))

(assert (not b!5234834))

(assert (not b!5235056))

(assert tp_is_empty!38909)

(assert (not b!5234631))

(assert (not bs!1215252))

(assert (not b!5234662))

(assert (not b!5234986))

(assert (not b!5234838))

(assert (not b!5235004))

(assert (not b!5235001))

(assert (not b!5234805))

(assert (not bm!370422))

(assert (not b!5234703))

(assert (not d!1687506))

(assert (not b!5235150))

(assert (not d!1687514))

(assert (not b!5234897))

(assert (not d!1687588))

(assert (not b!5234702))

(assert (not bm!370400))

(assert (not d!1687578))

(assert (not b!5235156))

(assert (not b_lambda!202399))

(assert (not b!5234988))

(assert (not d!1687532))

(assert (not b!5234775))

(assert (not d!1687516))

(assert (not b!5234869))

(assert (not b!5234767))

(assert (not b!5234961))

(assert (not bm!370437))

(assert (not b!5235108))

(assert (not d!1687488))

(assert (not d!1687550))

(assert (not b!5234707))

(assert (not b!5235152))

(assert (not d!1687542))

(assert (not b!5234783))

(assert (not b!5235005))

(assert (not b!5234661))

(assert (not b!5234660))

(assert (not d!1687486))

(assert (not b!5235139))

(assert (not b!5235153))

(assert (not b!5235161))

(assert (not b!5234626))

(assert (not b!5234710))

(assert (not bm!370433))

(assert (not bm!370405))

(assert (not d!1687546))

(assert (not b_lambda!202403))

(assert (not b!5234996))

(assert (not b!5234993))

(assert (not b_lambda!202401))

(assert (not b!5235158))

(assert (not b!5235126))

(assert (not b!5234664))

(assert (not d!1687602))

(assert (not d!1687496))

(assert (not d!1687544))

(assert (not bs!1215253))

(assert (not b!5234839))

(assert (not b!5234868))

(assert (not b!5235067))

(assert (not d!1687536))

(assert (not b!5235113))

(assert (not bm!370402))

(assert (not bs!1215251))

(assert (not d!1687534))

(assert (not b_lambda!202397))

(assert (not d!1687594))

(assert (not d!1687562))

(assert (not d!1687498))

(assert (not b!5234727))

(assert (not d!1687524))

(assert (not b!5234954))

(assert (not b!5235100))

(assert (not d!1687502))

(assert (not b!5235160))

(assert (not b!5234972))

(assert (not b!5234978))

(assert (not d!1687556))

(assert (not b!5234812))

(assert (not b!5234724))

(assert (not bm!370430))

(assert (not d!1687492))

(assert (not b!5234836))

(assert (not bm!370455))

(assert (not b!5234732))

(assert (not bs!1215250))

(assert (not b!5234987))

(assert (not d!1687564))

(assert (not setNonEmpty!33362))

(assert (not bm!370456))

(assert (not b!5235063))

(assert (not b!5234810))

(assert (not d!1687554))

(assert (not b!5234692))

(assert (not b!5234807))

(assert (not b!5235157))

(assert (not b!5234759))

(assert (not bm!370424))

(assert (not b!5235125))

(assert (not b!5234814))

(assert (not b!5234772))

(assert (not b!5234813))

(assert (not b!5234687))

(assert (not b!5235162))

(assert (not bm!370436))

(assert (not b!5234708))

(assert (not b!5235148))

(assert (not b!5234960))

(assert (not b!5234994))

(assert (not b!5235060))

(assert (not b!5235146))

(assert (not bm!370426))

(assert (not b!5235149))

(assert (not b!5235070))

(assert (not b!5234709))

(assert (not d!1687510))

(assert (not b!5234956))

(assert (not d!1687608))

(assert (not b!5234806))

(assert (not b!5234651))

(assert (not b!5235145))

(assert (not bm!370421))

(assert (not d!1687552))

(assert (not b!5234997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

