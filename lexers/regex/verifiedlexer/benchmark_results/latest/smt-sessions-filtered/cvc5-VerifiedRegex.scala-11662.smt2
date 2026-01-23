; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!654090 () Bool)

(assert start!654090)

(declare-fun b!6743538 () Bool)

(assert (=> b!6743538 true))

(assert (=> b!6743538 true))

(declare-fun lambda!378913 () Int)

(declare-fun lambda!378912 () Int)

(assert (=> b!6743538 (not (= lambda!378913 lambda!378912))))

(assert (=> b!6743538 true))

(assert (=> b!6743538 true))

(declare-fun lambda!378914 () Int)

(assert (=> b!6743538 (not (= lambda!378914 lambda!378912))))

(assert (=> b!6743538 (not (= lambda!378914 lambda!378913))))

(assert (=> b!6743538 true))

(assert (=> b!6743538 true))

(declare-fun b!6743533 () Bool)

(assert (=> b!6743533 true))

(declare-fun b!6743520 () Bool)

(declare-fun e!4073104 () Bool)

(declare-fun tp!1848634 () Bool)

(assert (=> b!6743520 (= e!4073104 tp!1848634)))

(declare-fun b!6743521 () Bool)

(declare-fun e!4073107 () Bool)

(declare-fun tp!1848639 () Bool)

(assert (=> b!6743521 (= e!4073107 tp!1848639)))

(declare-fun b!6743522 () Bool)

(declare-fun e!4073113 () Bool)

(declare-fun lt!2439415 () Bool)

(assert (=> b!6743522 (= e!4073113 lt!2439415)))

(declare-fun b!6743523 () Bool)

(declare-fun e!4073111 () Bool)

(declare-datatypes ((C!33410 0))(
  ( (C!33411 (val!26407 Int)) )
))
(declare-datatypes ((Regex!16570 0))(
  ( (ElementMatch!16570 (c!1251065 C!33410)) (Concat!25415 (regOne!33652 Regex!16570) (regTwo!33652 Regex!16570)) (EmptyExpr!16570) (Star!16570 (reg!16899 Regex!16570)) (EmptyLang!16570) (Union!16570 (regOne!33653 Regex!16570) (regTwo!33653 Regex!16570)) )
))
(declare-fun lt!2439425 () Regex!16570)

(declare-fun validRegex!8306 (Regex!16570) Bool)

(assert (=> b!6743523 (= e!4073111 (validRegex!8306 lt!2439425))))

(declare-fun b!6743524 () Bool)

(declare-fun res!2758254 () Bool)

(declare-fun e!4073103 () Bool)

(assert (=> b!6743524 (=> res!2758254 e!4073103)))

(declare-fun r!7292 () Regex!16570)

(assert (=> b!6743524 (= res!2758254 (or (is-EmptyExpr!16570 r!7292) (is-EmptyLang!16570 r!7292) (is-ElementMatch!16570 r!7292) (is-Union!16570 r!7292) (is-Concat!25415 r!7292)))))

(declare-fun b!6743525 () Bool)

(declare-fun e!4073106 () Bool)

(assert (=> b!6743525 (= e!4073106 e!4073111)))

(declare-fun res!2758247 () Bool)

(assert (=> b!6743525 (=> res!2758247 e!4073111)))

(declare-datatypes ((List!66009 0))(
  ( (Nil!65885) (Cons!65885 (h!72333 C!33410) (t!379710 List!66009)) )
))
(declare-fun s!2326 () List!66009)

(declare-datatypes ((List!66010 0))(
  ( (Nil!65886) (Cons!65886 (h!72334 Regex!16570) (t!379711 List!66010)) )
))
(declare-datatypes ((Context!11908 0))(
  ( (Context!11909 (exprs!6454 List!66010)) )
))
(declare-fun lt!2439410 () (Set Context!11908))

(declare-fun lt!2439416 () (Set Context!11908))

(declare-fun derivationStepZipper!2514 ((Set Context!11908) C!33410) (Set Context!11908))

(assert (=> b!6743525 (= res!2758247 (not (= lt!2439410 (derivationStepZipper!2514 lt!2439416 (h!72333 s!2326)))))))

(declare-fun lt!2439421 () Context!11908)

(declare-fun lambda!378915 () Int)

(declare-fun flatMap!2051 ((Set Context!11908) Int) (Set Context!11908))

(declare-fun derivationStepZipperUp!1724 (Context!11908 C!33410) (Set Context!11908))

(assert (=> b!6743525 (= (flatMap!2051 lt!2439416 lambda!378915) (derivationStepZipperUp!1724 lt!2439421 (h!72333 s!2326)))))

(declare-datatypes ((Unit!159831 0))(
  ( (Unit!159832) )
))
(declare-fun lt!2439404 () Unit!159831)

(declare-fun lemmaFlatMapOnSingletonSet!1577 ((Set Context!11908) Context!11908 Int) Unit!159831)

(assert (=> b!6743525 (= lt!2439404 (lemmaFlatMapOnSingletonSet!1577 lt!2439416 lt!2439421 lambda!378915))))

(declare-fun lt!2439403 () (Set Context!11908))

(declare-fun lt!2439420 () Context!11908)

(assert (=> b!6743525 (= (flatMap!2051 lt!2439403 lambda!378915) (derivationStepZipperUp!1724 lt!2439420 (h!72333 s!2326)))))

(declare-fun lt!2439411 () Unit!159831)

(assert (=> b!6743525 (= lt!2439411 (lemmaFlatMapOnSingletonSet!1577 lt!2439403 lt!2439420 lambda!378915))))

(declare-fun lt!2439423 () (Set Context!11908))

(assert (=> b!6743525 (= lt!2439423 (derivationStepZipperUp!1724 lt!2439421 (h!72333 s!2326)))))

(declare-fun lt!2439406 () (Set Context!11908))

(assert (=> b!6743525 (= lt!2439406 (derivationStepZipperUp!1724 lt!2439420 (h!72333 s!2326)))))

(assert (=> b!6743525 (= lt!2439416 (set.insert lt!2439421 (as set.empty (Set Context!11908))))))

(assert (=> b!6743525 (= lt!2439403 (set.insert lt!2439420 (as set.empty (Set Context!11908))))))

(assert (=> b!6743525 (= lt!2439420 (Context!11909 (Cons!65886 (reg!16899 r!7292) Nil!65886)))))

(declare-fun b!6743526 () Bool)

(declare-fun res!2758248 () Bool)

(declare-fun e!4073101 () Bool)

(assert (=> b!6743526 (=> res!2758248 e!4073101)))

(assert (=> b!6743526 (= res!2758248 (is-Nil!65885 s!2326))))

(declare-fun b!6743527 () Bool)

(declare-fun res!2758252 () Bool)

(assert (=> b!6743527 (=> res!2758252 e!4073111)))

(declare-datatypes ((List!66011 0))(
  ( (Nil!65887) (Cons!65887 (h!72335 Context!11908) (t!379712 List!66011)) )
))
(declare-fun unfocusZipper!2312 (List!66011) Regex!16570)

(assert (=> b!6743527 (= res!2758252 (not (= (unfocusZipper!2312 (Cons!65887 lt!2439420 Nil!65887)) (reg!16899 r!7292))))))

(declare-fun b!6743528 () Bool)

(declare-fun e!4073110 () Bool)

(declare-fun zl!343 () List!66011)

(declare-fun tp!1848636 () Bool)

(declare-fun inv!84673 (Context!11908) Bool)

(assert (=> b!6743528 (= e!4073110 (and (inv!84673 (h!72335 zl!343)) e!4073107 tp!1848636))))

(declare-fun b!6743529 () Bool)

(declare-fun e!4073114 () Bool)

(assert (=> b!6743529 (= e!4073101 e!4073114)))

(declare-fun res!2758260 () Bool)

(assert (=> b!6743529 (=> res!2758260 e!4073114)))

(declare-fun lt!2439414 () (Set Context!11908))

(declare-fun lt!2439408 () (Set Context!11908))

(assert (=> b!6743529 (= res!2758260 (not (= lt!2439414 lt!2439408)))))

(declare-fun derivationStepZipperDown!1798 (Regex!16570 Context!11908 C!33410) (Set Context!11908))

(assert (=> b!6743529 (= lt!2439408 (derivationStepZipperDown!1798 r!7292 (Context!11909 Nil!65886) (h!72333 s!2326)))))

(assert (=> b!6743529 (= lt!2439414 (derivationStepZipperUp!1724 (Context!11909 (Cons!65886 r!7292 Nil!65886)) (h!72333 s!2326)))))

(declare-fun z!1189 () (Set Context!11908))

(assert (=> b!6743529 (= lt!2439410 (derivationStepZipper!2514 z!1189 (h!72333 s!2326)))))

(declare-fun b!6743530 () Bool)

(declare-fun res!2758253 () Bool)

(assert (=> b!6743530 (=> res!2758253 e!4073111)))

(assert (=> b!6743530 (= res!2758253 (not (= (unfocusZipper!2312 (Cons!65887 lt!2439421 Nil!65887)) r!7292)))))

(declare-fun b!6743531 () Bool)

(declare-fun res!2758250 () Bool)

(declare-fun e!4073112 () Bool)

(assert (=> b!6743531 (=> (not res!2758250) (not e!4073112))))

(declare-fun toList!10354 ((Set Context!11908)) List!66011)

(assert (=> b!6743531 (= res!2758250 (= (toList!10354 z!1189) zl!343))))

(declare-fun b!6743532 () Bool)

(declare-fun e!4073102 () Bool)

(declare-fun tp!1848642 () Bool)

(declare-fun tp!1848637 () Bool)

(assert (=> b!6743532 (= e!4073102 (and tp!1848642 tp!1848637))))

(declare-fun res!2758263 () Bool)

(assert (=> start!654090 (=> (not res!2758263) (not e!4073112))))

(assert (=> start!654090 (= res!2758263 (validRegex!8306 r!7292))))

(assert (=> start!654090 e!4073112))

(assert (=> start!654090 e!4073102))

(declare-fun condSetEmpty!46060 () Bool)

(assert (=> start!654090 (= condSetEmpty!46060 (= z!1189 (as set.empty (Set Context!11908))))))

(declare-fun setRes!46060 () Bool)

(assert (=> start!654090 setRes!46060))

(assert (=> start!654090 e!4073110))

(declare-fun e!4073105 () Bool)

(assert (=> start!654090 e!4073105))

(declare-fun tp!1848638 () Bool)

(declare-fun setNonEmpty!46060 () Bool)

(declare-fun setElem!46060 () Context!11908)

(assert (=> setNonEmpty!46060 (= setRes!46060 (and tp!1848638 (inv!84673 setElem!46060) e!4073104))))

(declare-fun setRest!46060 () (Set Context!11908))

(assert (=> setNonEmpty!46060 (= z!1189 (set.union (set.insert setElem!46060 (as set.empty (Set Context!11908))) setRest!46060))))

(declare-fun e!4073108 () Bool)

(assert (=> b!6743533 (= e!4073114 e!4073108)))

(declare-fun res!2758249 () Bool)

(assert (=> b!6743533 (=> res!2758249 e!4073108)))

(assert (=> b!6743533 (= res!2758249 (not (= lt!2439410 lt!2439408)))))

(assert (=> b!6743533 (= (flatMap!2051 z!1189 lambda!378915) (derivationStepZipperUp!1724 (h!72335 zl!343) (h!72333 s!2326)))))

(declare-fun lt!2439417 () Unit!159831)

(assert (=> b!6743533 (= lt!2439417 (lemmaFlatMapOnSingletonSet!1577 z!1189 (h!72335 zl!343) lambda!378915))))

(declare-fun b!6743534 () Bool)

(declare-fun e!4073115 () Bool)

(assert (=> b!6743534 (= e!4073115 (not e!4073103))))

(declare-fun res!2758245 () Bool)

(assert (=> b!6743534 (=> res!2758245 e!4073103)))

(assert (=> b!6743534 (= res!2758245 (not (is-Cons!65887 zl!343)))))

(declare-fun lt!2439401 () Bool)

(declare-fun matchRSpec!3671 (Regex!16570 List!66009) Bool)

(assert (=> b!6743534 (= lt!2439401 (matchRSpec!3671 r!7292 s!2326))))

(declare-fun matchR!8753 (Regex!16570 List!66009) Bool)

(assert (=> b!6743534 (= lt!2439401 (matchR!8753 r!7292 s!2326))))

(declare-fun lt!2439413 () Unit!159831)

(declare-fun mainMatchTheorem!3671 (Regex!16570 List!66009) Unit!159831)

(assert (=> b!6743534 (= lt!2439413 (mainMatchTheorem!3671 r!7292 s!2326))))

(declare-fun b!6743535 () Bool)

(assert (=> b!6743535 (= e!4073112 e!4073115)))

(declare-fun res!2758261 () Bool)

(assert (=> b!6743535 (=> (not res!2758261) (not e!4073115))))

(declare-fun lt!2439422 () Regex!16570)

(assert (=> b!6743535 (= res!2758261 (= r!7292 lt!2439422))))

(assert (=> b!6743535 (= lt!2439422 (unfocusZipper!2312 zl!343))))

(declare-fun b!6743536 () Bool)

(declare-fun tp_is_empty!42393 () Bool)

(declare-fun tp!1848641 () Bool)

(assert (=> b!6743536 (= e!4073105 (and tp_is_empty!42393 tp!1848641))))

(declare-fun b!6743537 () Bool)

(declare-fun e!4073109 () Bool)

(assert (=> b!6743537 (= e!4073109 e!4073106)))

(declare-fun res!2758262 () Bool)

(assert (=> b!6743537 (=> res!2758262 e!4073106)))

(declare-fun lt!2439409 () Context!11908)

(assert (=> b!6743537 (= res!2758262 (not (= (unfocusZipper!2312 (Cons!65887 lt!2439409 Nil!65887)) lt!2439425)))))

(assert (=> b!6743537 (= lt!2439425 (Concat!25415 (reg!16899 r!7292) r!7292))))

(assert (=> b!6743538 (= e!4073103 e!4073101)))

(declare-fun res!2758259 () Bool)

(assert (=> b!6743538 (=> res!2758259 e!4073101)))

(assert (=> b!6743538 (= res!2758259 (not (= lt!2439401 e!4073113)))))

(declare-fun res!2758256 () Bool)

(assert (=> b!6743538 (=> res!2758256 e!4073113)))

(declare-fun isEmpty!38231 (List!66009) Bool)

(assert (=> b!6743538 (= res!2758256 (isEmpty!38231 s!2326))))

(declare-fun Exists!3638 (Int) Bool)

(assert (=> b!6743538 (= (Exists!3638 lambda!378912) (Exists!3638 lambda!378914))))

(declare-fun lt!2439418 () Unit!159831)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2165 (Regex!16570 Regex!16570 List!66009) Unit!159831)

(assert (=> b!6743538 (= lt!2439418 (lemmaExistCutMatchRandMatchRSpecEquivalent!2165 (reg!16899 r!7292) r!7292 s!2326))))

(assert (=> b!6743538 (= (Exists!3638 lambda!378912) (Exists!3638 lambda!378913))))

(declare-fun lt!2439407 () Unit!159831)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!729 (Regex!16570 List!66009) Unit!159831)

(assert (=> b!6743538 (= lt!2439407 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!729 (reg!16899 r!7292) s!2326))))

(assert (=> b!6743538 (= lt!2439415 (Exists!3638 lambda!378912))))

(declare-datatypes ((tuple2!67090 0))(
  ( (tuple2!67091 (_1!36848 List!66009) (_2!36848 List!66009)) )
))
(declare-datatypes ((Option!16457 0))(
  ( (None!16456) (Some!16456 (v!52656 tuple2!67090)) )
))
(declare-fun isDefined!13160 (Option!16457) Bool)

(declare-fun findConcatSeparation!2871 (Regex!16570 Regex!16570 List!66009 List!66009 List!66009) Option!16457)

(assert (=> b!6743538 (= lt!2439415 (isDefined!13160 (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 Nil!65885 s!2326 s!2326)))))

(declare-fun lt!2439405 () Unit!159831)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2635 (Regex!16570 Regex!16570 List!66009) Unit!159831)

(assert (=> b!6743538 (= lt!2439405 (lemmaFindConcatSeparationEquivalentToExists!2635 (reg!16899 r!7292) r!7292 s!2326))))

(declare-fun b!6743539 () Bool)

(declare-fun res!2758246 () Bool)

(assert (=> b!6743539 (=> res!2758246 e!4073109)))

(declare-fun lt!2439419 () (Set Context!11908))

(declare-fun matchZipper!2556 ((Set Context!11908) List!66009) Bool)

(assert (=> b!6743539 (= res!2758246 (not (= (matchZipper!2556 lt!2439419 s!2326) (matchZipper!2556 (derivationStepZipper!2514 lt!2439419 (h!72333 s!2326)) (t!379710 s!2326)))))))

(declare-fun setIsEmpty!46060 () Bool)

(assert (=> setIsEmpty!46060 setRes!46060))

(declare-fun b!6743540 () Bool)

(declare-fun res!2758257 () Bool)

(assert (=> b!6743540 (=> res!2758257 e!4073109)))

(assert (=> b!6743540 (= res!2758257 (or (not (= lt!2439422 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6743541 () Bool)

(assert (=> b!6743541 (= e!4073108 e!4073109)))

(declare-fun res!2758258 () Bool)

(assert (=> b!6743541 (=> res!2758258 e!4073109)))

(assert (=> b!6743541 (= res!2758258 (not (= lt!2439410 (derivationStepZipperDown!1798 (reg!16899 r!7292) lt!2439421 (h!72333 s!2326)))))))

(declare-fun lt!2439424 () List!66010)

(assert (=> b!6743541 (= lt!2439421 (Context!11909 lt!2439424))))

(assert (=> b!6743541 (= (flatMap!2051 lt!2439419 lambda!378915) (derivationStepZipperUp!1724 lt!2439409 (h!72333 s!2326)))))

(declare-fun lt!2439402 () Unit!159831)

(assert (=> b!6743541 (= lt!2439402 (lemmaFlatMapOnSingletonSet!1577 lt!2439419 lt!2439409 lambda!378915))))

(declare-fun lt!2439412 () (Set Context!11908))

(assert (=> b!6743541 (= lt!2439412 (derivationStepZipperUp!1724 lt!2439409 (h!72333 s!2326)))))

(assert (=> b!6743541 (= lt!2439419 (set.insert lt!2439409 (as set.empty (Set Context!11908))))))

(assert (=> b!6743541 (= lt!2439409 (Context!11909 (Cons!65886 (reg!16899 r!7292) lt!2439424)))))

(assert (=> b!6743541 (= lt!2439424 (Cons!65886 r!7292 Nil!65886))))

(declare-fun b!6743542 () Bool)

(declare-fun res!2758244 () Bool)

(assert (=> b!6743542 (=> res!2758244 e!4073103)))

(declare-fun generalisedUnion!2414 (List!66010) Regex!16570)

(declare-fun unfocusZipperList!1991 (List!66011) List!66010)

(assert (=> b!6743542 (= res!2758244 (not (= r!7292 (generalisedUnion!2414 (unfocusZipperList!1991 zl!343)))))))

(declare-fun b!6743543 () Bool)

(declare-fun tp!1848640 () Bool)

(assert (=> b!6743543 (= e!4073102 tp!1848640)))

(declare-fun b!6743544 () Bool)

(declare-fun res!2758255 () Bool)

(assert (=> b!6743544 (=> res!2758255 e!4073103)))

(declare-fun isEmpty!38232 (List!66011) Bool)

(assert (=> b!6743544 (= res!2758255 (not (isEmpty!38232 (t!379712 zl!343))))))

(declare-fun b!6743545 () Bool)

(declare-fun tp!1848635 () Bool)

(declare-fun tp!1848643 () Bool)

(assert (=> b!6743545 (= e!4073102 (and tp!1848635 tp!1848643))))

(declare-fun b!6743546 () Bool)

(assert (=> b!6743546 (= e!4073102 tp_is_empty!42393)))

(declare-fun b!6743547 () Bool)

(declare-fun res!2758243 () Bool)

(assert (=> b!6743547 (=> res!2758243 e!4073103)))

(declare-fun generalisedConcat!2167 (List!66010) Regex!16570)

(assert (=> b!6743547 (= res!2758243 (not (= r!7292 (generalisedConcat!2167 (exprs!6454 (h!72335 zl!343))))))))

(declare-fun b!6743548 () Bool)

(declare-fun res!2758251 () Bool)

(assert (=> b!6743548 (=> res!2758251 e!4073103)))

(assert (=> b!6743548 (= res!2758251 (not (is-Cons!65886 (exprs!6454 (h!72335 zl!343)))))))

(assert (= (and start!654090 res!2758263) b!6743531))

(assert (= (and b!6743531 res!2758250) b!6743535))

(assert (= (and b!6743535 res!2758261) b!6743534))

(assert (= (and b!6743534 (not res!2758245)) b!6743544))

(assert (= (and b!6743544 (not res!2758255)) b!6743547))

(assert (= (and b!6743547 (not res!2758243)) b!6743548))

(assert (= (and b!6743548 (not res!2758251)) b!6743542))

(assert (= (and b!6743542 (not res!2758244)) b!6743524))

(assert (= (and b!6743524 (not res!2758254)) b!6743538))

(assert (= (and b!6743538 (not res!2758256)) b!6743522))

(assert (= (and b!6743538 (not res!2758259)) b!6743526))

(assert (= (and b!6743526 (not res!2758248)) b!6743529))

(assert (= (and b!6743529 (not res!2758260)) b!6743533))

(assert (= (and b!6743533 (not res!2758249)) b!6743541))

(assert (= (and b!6743541 (not res!2758258)) b!6743539))

(assert (= (and b!6743539 (not res!2758246)) b!6743540))

(assert (= (and b!6743540 (not res!2758257)) b!6743537))

(assert (= (and b!6743537 (not res!2758262)) b!6743525))

(assert (= (and b!6743525 (not res!2758247)) b!6743527))

(assert (= (and b!6743527 (not res!2758252)) b!6743530))

(assert (= (and b!6743530 (not res!2758253)) b!6743523))

(assert (= (and start!654090 (is-ElementMatch!16570 r!7292)) b!6743546))

(assert (= (and start!654090 (is-Concat!25415 r!7292)) b!6743545))

(assert (= (and start!654090 (is-Star!16570 r!7292)) b!6743543))

(assert (= (and start!654090 (is-Union!16570 r!7292)) b!6743532))

(assert (= (and start!654090 condSetEmpty!46060) setIsEmpty!46060))

(assert (= (and start!654090 (not condSetEmpty!46060)) setNonEmpty!46060))

(assert (= setNonEmpty!46060 b!6743520))

(assert (= b!6743528 b!6743521))

(assert (= (and start!654090 (is-Cons!65887 zl!343)) b!6743528))

(assert (= (and start!654090 (is-Cons!65885 s!2326)) b!6743536))

(declare-fun m!7499576 () Bool)

(assert (=> b!6743527 m!7499576))

(declare-fun m!7499578 () Bool)

(assert (=> b!6743525 m!7499578))

(declare-fun m!7499580 () Bool)

(assert (=> b!6743525 m!7499580))

(declare-fun m!7499582 () Bool)

(assert (=> b!6743525 m!7499582))

(declare-fun m!7499584 () Bool)

(assert (=> b!6743525 m!7499584))

(declare-fun m!7499586 () Bool)

(assert (=> b!6743525 m!7499586))

(declare-fun m!7499588 () Bool)

(assert (=> b!6743525 m!7499588))

(declare-fun m!7499590 () Bool)

(assert (=> b!6743525 m!7499590))

(declare-fun m!7499592 () Bool)

(assert (=> b!6743525 m!7499592))

(declare-fun m!7499594 () Bool)

(assert (=> b!6743525 m!7499594))

(declare-fun m!7499596 () Bool)

(assert (=> b!6743529 m!7499596))

(declare-fun m!7499598 () Bool)

(assert (=> b!6743529 m!7499598))

(declare-fun m!7499600 () Bool)

(assert (=> b!6743529 m!7499600))

(declare-fun m!7499602 () Bool)

(assert (=> setNonEmpty!46060 m!7499602))

(declare-fun m!7499604 () Bool)

(assert (=> b!6743538 m!7499604))

(declare-fun m!7499606 () Bool)

(assert (=> b!6743538 m!7499606))

(assert (=> b!6743538 m!7499604))

(declare-fun m!7499608 () Bool)

(assert (=> b!6743538 m!7499608))

(declare-fun m!7499610 () Bool)

(assert (=> b!6743538 m!7499610))

(assert (=> b!6743538 m!7499604))

(declare-fun m!7499612 () Bool)

(assert (=> b!6743538 m!7499612))

(declare-fun m!7499614 () Bool)

(assert (=> b!6743538 m!7499614))

(declare-fun m!7499616 () Bool)

(assert (=> b!6743538 m!7499616))

(assert (=> b!6743538 m!7499616))

(declare-fun m!7499618 () Bool)

(assert (=> b!6743538 m!7499618))

(declare-fun m!7499620 () Bool)

(assert (=> b!6743538 m!7499620))

(declare-fun m!7499622 () Bool)

(assert (=> b!6743539 m!7499622))

(declare-fun m!7499624 () Bool)

(assert (=> b!6743539 m!7499624))

(assert (=> b!6743539 m!7499624))

(declare-fun m!7499626 () Bool)

(assert (=> b!6743539 m!7499626))

(declare-fun m!7499628 () Bool)

(assert (=> b!6743535 m!7499628))

(declare-fun m!7499630 () Bool)

(assert (=> b!6743531 m!7499630))

(declare-fun m!7499632 () Bool)

(assert (=> b!6743542 m!7499632))

(assert (=> b!6743542 m!7499632))

(declare-fun m!7499634 () Bool)

(assert (=> b!6743542 m!7499634))

(declare-fun m!7499636 () Bool)

(assert (=> b!6743541 m!7499636))

(declare-fun m!7499638 () Bool)

(assert (=> b!6743541 m!7499638))

(declare-fun m!7499640 () Bool)

(assert (=> b!6743541 m!7499640))

(declare-fun m!7499642 () Bool)

(assert (=> b!6743541 m!7499642))

(declare-fun m!7499644 () Bool)

(assert (=> b!6743541 m!7499644))

(declare-fun m!7499646 () Bool)

(assert (=> b!6743528 m!7499646))

(declare-fun m!7499648 () Bool)

(assert (=> b!6743530 m!7499648))

(declare-fun m!7499650 () Bool)

(assert (=> start!654090 m!7499650))

(declare-fun m!7499652 () Bool)

(assert (=> b!6743537 m!7499652))

(declare-fun m!7499654 () Bool)

(assert (=> b!6743534 m!7499654))

(declare-fun m!7499656 () Bool)

(assert (=> b!6743534 m!7499656))

(declare-fun m!7499658 () Bool)

(assert (=> b!6743534 m!7499658))

(declare-fun m!7499660 () Bool)

(assert (=> b!6743523 m!7499660))

(declare-fun m!7499662 () Bool)

(assert (=> b!6743547 m!7499662))

(declare-fun m!7499664 () Bool)

(assert (=> b!6743533 m!7499664))

(declare-fun m!7499666 () Bool)

(assert (=> b!6743533 m!7499666))

(declare-fun m!7499668 () Bool)

(assert (=> b!6743533 m!7499668))

(declare-fun m!7499670 () Bool)

(assert (=> b!6743544 m!7499670))

(push 1)

(assert (not b!6743542))

(assert (not b!6743534))

(assert (not b!6743531))

(assert (not b!6743523))

(assert (not b!6743547))

(assert (not b!6743528))

(assert (not b!6743527))

(assert (not b!6743544))

(assert tp_is_empty!42393)

(assert (not b!6743539))

(assert (not b!6743521))

(assert (not b!6743535))

(assert (not b!6743545))

(assert (not b!6743538))

(assert (not b!6743543))

(assert (not setNonEmpty!46060))

(assert (not b!6743533))

(assert (not b!6743520))

(assert (not b!6743537))

(assert (not start!654090))

(assert (not b!6743530))

(assert (not b!6743541))

(assert (not b!6743532))

(assert (not b!6743525))

(assert (not b!6743529))

(assert (not b!6743536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2118843 () Bool)

(declare-fun e!4073173 () Bool)

(assert (=> d!2118843 e!4073173))

(declare-fun res!2758351 () Bool)

(assert (=> d!2118843 (=> (not res!2758351) (not e!4073173))))

(declare-fun lt!2439503 () List!66011)

(declare-fun noDuplicate!2363 (List!66011) Bool)

(assert (=> d!2118843 (= res!2758351 (noDuplicate!2363 lt!2439503))))

(declare-fun choose!50270 ((Set Context!11908)) List!66011)

(assert (=> d!2118843 (= lt!2439503 (choose!50270 z!1189))))

(assert (=> d!2118843 (= (toList!10354 z!1189) lt!2439503)))

(declare-fun b!6743672 () Bool)

(declare-fun content!12810 (List!66011) (Set Context!11908))

(assert (=> b!6743672 (= e!4073173 (= (content!12810 lt!2439503) z!1189))))

(assert (= (and d!2118843 res!2758351) b!6743672))

(declare-fun m!7499768 () Bool)

(assert (=> d!2118843 m!7499768))

(declare-fun m!7499770 () Bool)

(assert (=> d!2118843 m!7499770))

(declare-fun m!7499772 () Bool)

(assert (=> b!6743672 m!7499772))

(assert (=> b!6743531 d!2118843))

(declare-fun d!2118845 () Bool)

(declare-fun c!1251078 () Bool)

(assert (=> d!2118845 (= c!1251078 (isEmpty!38231 s!2326))))

(declare-fun e!4073176 () Bool)

(assert (=> d!2118845 (= (matchZipper!2556 lt!2439419 s!2326) e!4073176)))

(declare-fun b!6743677 () Bool)

(declare-fun nullableZipper!2285 ((Set Context!11908)) Bool)

(assert (=> b!6743677 (= e!4073176 (nullableZipper!2285 lt!2439419))))

(declare-fun b!6743678 () Bool)

(declare-fun head!13567 (List!66009) C!33410)

(declare-fun tail!12652 (List!66009) List!66009)

(assert (=> b!6743678 (= e!4073176 (matchZipper!2556 (derivationStepZipper!2514 lt!2439419 (head!13567 s!2326)) (tail!12652 s!2326)))))

(assert (= (and d!2118845 c!1251078) b!6743677))

(assert (= (and d!2118845 (not c!1251078)) b!6743678))

(assert (=> d!2118845 m!7499606))

(declare-fun m!7499774 () Bool)

(assert (=> b!6743677 m!7499774))

(declare-fun m!7499776 () Bool)

(assert (=> b!6743678 m!7499776))

(assert (=> b!6743678 m!7499776))

(declare-fun m!7499778 () Bool)

(assert (=> b!6743678 m!7499778))

(declare-fun m!7499780 () Bool)

(assert (=> b!6743678 m!7499780))

(assert (=> b!6743678 m!7499778))

(assert (=> b!6743678 m!7499780))

(declare-fun m!7499782 () Bool)

(assert (=> b!6743678 m!7499782))

(assert (=> b!6743539 d!2118845))

(declare-fun d!2118847 () Bool)

(declare-fun c!1251079 () Bool)

(assert (=> d!2118847 (= c!1251079 (isEmpty!38231 (t!379710 s!2326)))))

(declare-fun e!4073177 () Bool)

(assert (=> d!2118847 (= (matchZipper!2556 (derivationStepZipper!2514 lt!2439419 (h!72333 s!2326)) (t!379710 s!2326)) e!4073177)))

(declare-fun b!6743679 () Bool)

(assert (=> b!6743679 (= e!4073177 (nullableZipper!2285 (derivationStepZipper!2514 lt!2439419 (h!72333 s!2326))))))

(declare-fun b!6743680 () Bool)

(assert (=> b!6743680 (= e!4073177 (matchZipper!2556 (derivationStepZipper!2514 (derivationStepZipper!2514 lt!2439419 (h!72333 s!2326)) (head!13567 (t!379710 s!2326))) (tail!12652 (t!379710 s!2326))))))

(assert (= (and d!2118847 c!1251079) b!6743679))

(assert (= (and d!2118847 (not c!1251079)) b!6743680))

(declare-fun m!7499784 () Bool)

(assert (=> d!2118847 m!7499784))

(assert (=> b!6743679 m!7499624))

(declare-fun m!7499786 () Bool)

(assert (=> b!6743679 m!7499786))

(declare-fun m!7499788 () Bool)

(assert (=> b!6743680 m!7499788))

(assert (=> b!6743680 m!7499624))

(assert (=> b!6743680 m!7499788))

(declare-fun m!7499790 () Bool)

(assert (=> b!6743680 m!7499790))

(declare-fun m!7499792 () Bool)

(assert (=> b!6743680 m!7499792))

(assert (=> b!6743680 m!7499790))

(assert (=> b!6743680 m!7499792))

(declare-fun m!7499794 () Bool)

(assert (=> b!6743680 m!7499794))

(assert (=> b!6743539 d!2118847))

(declare-fun bs!1793054 () Bool)

(declare-fun d!2118849 () Bool)

(assert (= bs!1793054 (and d!2118849 b!6743533)))

(declare-fun lambda!378940 () Int)

(assert (=> bs!1793054 (= lambda!378940 lambda!378915)))

(assert (=> d!2118849 true))

(assert (=> d!2118849 (= (derivationStepZipper!2514 lt!2439419 (h!72333 s!2326)) (flatMap!2051 lt!2439419 lambda!378940))))

(declare-fun bs!1793055 () Bool)

(assert (= bs!1793055 d!2118849))

(declare-fun m!7499796 () Bool)

(assert (=> bs!1793055 m!7499796))

(assert (=> b!6743539 d!2118849))

(declare-fun d!2118851 () Bool)

(declare-fun lt!2439506 () Regex!16570)

(assert (=> d!2118851 (validRegex!8306 lt!2439506)))

(assert (=> d!2118851 (= lt!2439506 (generalisedUnion!2414 (unfocusZipperList!1991 (Cons!65887 lt!2439421 Nil!65887))))))

(assert (=> d!2118851 (= (unfocusZipper!2312 (Cons!65887 lt!2439421 Nil!65887)) lt!2439506)))

(declare-fun bs!1793056 () Bool)

(assert (= bs!1793056 d!2118851))

(declare-fun m!7499798 () Bool)

(assert (=> bs!1793056 m!7499798))

(declare-fun m!7499800 () Bool)

(assert (=> bs!1793056 m!7499800))

(assert (=> bs!1793056 m!7499800))

(declare-fun m!7499802 () Bool)

(assert (=> bs!1793056 m!7499802))

(assert (=> b!6743530 d!2118851))

(declare-fun b!6743703 () Bool)

(declare-fun e!4073190 () Bool)

(declare-fun isEmpty!38235 (List!66010) Bool)

(assert (=> b!6743703 (= e!4073190 (isEmpty!38235 (t!379711 (unfocusZipperList!1991 zl!343))))))

(declare-fun b!6743704 () Bool)

(declare-fun e!4073193 () Bool)

(declare-fun lt!2439509 () Regex!16570)

(declare-fun isUnion!1374 (Regex!16570) Bool)

(assert (=> b!6743704 (= e!4073193 (isUnion!1374 lt!2439509))))

(declare-fun b!6743705 () Bool)

(declare-fun head!13568 (List!66010) Regex!16570)

(assert (=> b!6743705 (= e!4073193 (= lt!2439509 (head!13568 (unfocusZipperList!1991 zl!343))))))

(declare-fun b!6743706 () Bool)

(declare-fun e!4073192 () Regex!16570)

(assert (=> b!6743706 (= e!4073192 EmptyLang!16570)))

(declare-fun b!6743707 () Bool)

(assert (=> b!6743707 (= e!4073192 (Union!16570 (h!72334 (unfocusZipperList!1991 zl!343)) (generalisedUnion!2414 (t!379711 (unfocusZipperList!1991 zl!343)))))))

(declare-fun d!2118853 () Bool)

(declare-fun e!4073195 () Bool)

(assert (=> d!2118853 e!4073195))

(declare-fun res!2758356 () Bool)

(assert (=> d!2118853 (=> (not res!2758356) (not e!4073195))))

(assert (=> d!2118853 (= res!2758356 (validRegex!8306 lt!2439509))))

(declare-fun e!4073191 () Regex!16570)

(assert (=> d!2118853 (= lt!2439509 e!4073191)))

(declare-fun c!1251090 () Bool)

(assert (=> d!2118853 (= c!1251090 e!4073190)))

(declare-fun res!2758357 () Bool)

(assert (=> d!2118853 (=> (not res!2758357) (not e!4073190))))

(assert (=> d!2118853 (= res!2758357 (is-Cons!65886 (unfocusZipperList!1991 zl!343)))))

(declare-fun lambda!378943 () Int)

(declare-fun forall!15770 (List!66010 Int) Bool)

(assert (=> d!2118853 (forall!15770 (unfocusZipperList!1991 zl!343) lambda!378943)))

(assert (=> d!2118853 (= (generalisedUnion!2414 (unfocusZipperList!1991 zl!343)) lt!2439509)))

(declare-fun b!6743708 () Bool)

(declare-fun e!4073194 () Bool)

(assert (=> b!6743708 (= e!4073195 e!4073194)))

(declare-fun c!1251092 () Bool)

(assert (=> b!6743708 (= c!1251092 (isEmpty!38235 (unfocusZipperList!1991 zl!343)))))

(declare-fun b!6743709 () Bool)

(assert (=> b!6743709 (= e!4073191 (h!72334 (unfocusZipperList!1991 zl!343)))))

(declare-fun b!6743710 () Bool)

(assert (=> b!6743710 (= e!4073194 e!4073193)))

(declare-fun c!1251091 () Bool)

(declare-fun tail!12653 (List!66010) List!66010)

(assert (=> b!6743710 (= c!1251091 (isEmpty!38235 (tail!12653 (unfocusZipperList!1991 zl!343))))))

(declare-fun b!6743711 () Bool)

(assert (=> b!6743711 (= e!4073191 e!4073192)))

(declare-fun c!1251093 () Bool)

(assert (=> b!6743711 (= c!1251093 (is-Cons!65886 (unfocusZipperList!1991 zl!343)))))

(declare-fun b!6743712 () Bool)

(declare-fun isEmptyLang!1944 (Regex!16570) Bool)

(assert (=> b!6743712 (= e!4073194 (isEmptyLang!1944 lt!2439509))))

(assert (= (and d!2118853 res!2758357) b!6743703))

(assert (= (and d!2118853 c!1251090) b!6743709))

(assert (= (and d!2118853 (not c!1251090)) b!6743711))

(assert (= (and b!6743711 c!1251093) b!6743707))

(assert (= (and b!6743711 (not c!1251093)) b!6743706))

(assert (= (and d!2118853 res!2758356) b!6743708))

(assert (= (and b!6743708 c!1251092) b!6743712))

(assert (= (and b!6743708 (not c!1251092)) b!6743710))

(assert (= (and b!6743710 c!1251091) b!6743705))

(assert (= (and b!6743710 (not c!1251091)) b!6743704))

(assert (=> b!6743708 m!7499632))

(declare-fun m!7499804 () Bool)

(assert (=> b!6743708 m!7499804))

(assert (=> b!6743705 m!7499632))

(declare-fun m!7499806 () Bool)

(assert (=> b!6743705 m!7499806))

(declare-fun m!7499808 () Bool)

(assert (=> b!6743704 m!7499808))

(declare-fun m!7499810 () Bool)

(assert (=> b!6743707 m!7499810))

(declare-fun m!7499812 () Bool)

(assert (=> b!6743703 m!7499812))

(declare-fun m!7499814 () Bool)

(assert (=> b!6743712 m!7499814))

(declare-fun m!7499816 () Bool)

(assert (=> d!2118853 m!7499816))

(assert (=> d!2118853 m!7499632))

(declare-fun m!7499818 () Bool)

(assert (=> d!2118853 m!7499818))

(assert (=> b!6743710 m!7499632))

(declare-fun m!7499820 () Bool)

(assert (=> b!6743710 m!7499820))

(assert (=> b!6743710 m!7499820))

(declare-fun m!7499822 () Bool)

(assert (=> b!6743710 m!7499822))

(assert (=> b!6743542 d!2118853))

(declare-fun bs!1793057 () Bool)

(declare-fun d!2118855 () Bool)

(assert (= bs!1793057 (and d!2118855 d!2118853)))

(declare-fun lambda!378946 () Int)

(assert (=> bs!1793057 (= lambda!378946 lambda!378943)))

(declare-fun lt!2439512 () List!66010)

(assert (=> d!2118855 (forall!15770 lt!2439512 lambda!378946)))

(declare-fun e!4073198 () List!66010)

(assert (=> d!2118855 (= lt!2439512 e!4073198)))

(declare-fun c!1251096 () Bool)

(assert (=> d!2118855 (= c!1251096 (is-Cons!65887 zl!343))))

(assert (=> d!2118855 (= (unfocusZipperList!1991 zl!343) lt!2439512)))

(declare-fun b!6743717 () Bool)

(assert (=> b!6743717 (= e!4073198 (Cons!65886 (generalisedConcat!2167 (exprs!6454 (h!72335 zl!343))) (unfocusZipperList!1991 (t!379712 zl!343))))))

(declare-fun b!6743718 () Bool)

(assert (=> b!6743718 (= e!4073198 Nil!65886)))

(assert (= (and d!2118855 c!1251096) b!6743717))

(assert (= (and d!2118855 (not c!1251096)) b!6743718))

(declare-fun m!7499824 () Bool)

(assert (=> d!2118855 m!7499824))

(assert (=> b!6743717 m!7499662))

(declare-fun m!7499826 () Bool)

(assert (=> b!6743717 m!7499826))

(assert (=> b!6743542 d!2118855))

(declare-fun b!6743737 () Bool)

(declare-fun e!4073218 () Bool)

(declare-fun call!609750 () Bool)

(assert (=> b!6743737 (= e!4073218 call!609750)))

(declare-fun b!6743738 () Bool)

(declare-fun e!4073213 () Bool)

(declare-fun e!4073219 () Bool)

(assert (=> b!6743738 (= e!4073213 e!4073219)))

(declare-fun c!1251102 () Bool)

(assert (=> b!6743738 (= c!1251102 (is-Union!16570 lt!2439425))))

(declare-fun b!6743739 () Bool)

(declare-fun res!2758371 () Bool)

(assert (=> b!6743739 (=> (not res!2758371) (not e!4073218))))

(declare-fun call!609748 () Bool)

(assert (=> b!6743739 (= res!2758371 call!609748)))

(assert (=> b!6743739 (= e!4073219 e!4073218)))

(declare-fun b!6743740 () Bool)

(declare-fun e!4073217 () Bool)

(assert (=> b!6743740 (= e!4073217 call!609750)))

(declare-fun bm!609743 () Bool)

(assert (=> bm!609743 (= call!609750 (validRegex!8306 (ite c!1251102 (regTwo!33653 lt!2439425) (regTwo!33652 lt!2439425))))))

(declare-fun b!6743741 () Bool)

(declare-fun res!2758372 () Bool)

(declare-fun e!4073214 () Bool)

(assert (=> b!6743741 (=> res!2758372 e!4073214)))

(assert (=> b!6743741 (= res!2758372 (not (is-Concat!25415 lt!2439425)))))

(assert (=> b!6743741 (= e!4073219 e!4073214)))

(declare-fun bm!609744 () Bool)

(declare-fun call!609749 () Bool)

(assert (=> bm!609744 (= call!609748 call!609749)))

(declare-fun b!6743742 () Bool)

(declare-fun e!4073216 () Bool)

(assert (=> b!6743742 (= e!4073213 e!4073216)))

(declare-fun res!2758368 () Bool)

(declare-fun nullable!6557 (Regex!16570) Bool)

(assert (=> b!6743742 (= res!2758368 (not (nullable!6557 (reg!16899 lt!2439425))))))

(assert (=> b!6743742 (=> (not res!2758368) (not e!4073216))))

(declare-fun d!2118857 () Bool)

(declare-fun res!2758369 () Bool)

(declare-fun e!4073215 () Bool)

(assert (=> d!2118857 (=> res!2758369 e!4073215)))

(assert (=> d!2118857 (= res!2758369 (is-ElementMatch!16570 lt!2439425))))

(assert (=> d!2118857 (= (validRegex!8306 lt!2439425) e!4073215)))

(declare-fun b!6743743 () Bool)

(assert (=> b!6743743 (= e!4073216 call!609749)))

(declare-fun c!1251101 () Bool)

(declare-fun bm!609745 () Bool)

(assert (=> bm!609745 (= call!609749 (validRegex!8306 (ite c!1251101 (reg!16899 lt!2439425) (ite c!1251102 (regOne!33653 lt!2439425) (regOne!33652 lt!2439425)))))))

(declare-fun b!6743744 () Bool)

(assert (=> b!6743744 (= e!4073215 e!4073213)))

(assert (=> b!6743744 (= c!1251101 (is-Star!16570 lt!2439425))))

(declare-fun b!6743745 () Bool)

(assert (=> b!6743745 (= e!4073214 e!4073217)))

(declare-fun res!2758370 () Bool)

(assert (=> b!6743745 (=> (not res!2758370) (not e!4073217))))

(assert (=> b!6743745 (= res!2758370 call!609748)))

(assert (= (and d!2118857 (not res!2758369)) b!6743744))

(assert (= (and b!6743744 c!1251101) b!6743742))

(assert (= (and b!6743744 (not c!1251101)) b!6743738))

(assert (= (and b!6743742 res!2758368) b!6743743))

(assert (= (and b!6743738 c!1251102) b!6743739))

(assert (= (and b!6743738 (not c!1251102)) b!6743741))

(assert (= (and b!6743739 res!2758371) b!6743737))

(assert (= (and b!6743741 (not res!2758372)) b!6743745))

(assert (= (and b!6743745 res!2758370) b!6743740))

(assert (= (or b!6743737 b!6743740) bm!609743))

(assert (= (or b!6743739 b!6743745) bm!609744))

(assert (= (or b!6743743 bm!609744) bm!609745))

(declare-fun m!7499828 () Bool)

(assert (=> bm!609743 m!7499828))

(declare-fun m!7499830 () Bool)

(assert (=> b!6743742 m!7499830))

(declare-fun m!7499832 () Bool)

(assert (=> bm!609745 m!7499832))

(assert (=> b!6743523 d!2118857))

(declare-fun d!2118861 () Bool)

(declare-fun choose!50271 ((Set Context!11908) Int) (Set Context!11908))

(assert (=> d!2118861 (= (flatMap!2051 z!1189 lambda!378915) (choose!50271 z!1189 lambda!378915))))

(declare-fun bs!1793058 () Bool)

(assert (= bs!1793058 d!2118861))

(declare-fun m!7499834 () Bool)

(assert (=> bs!1793058 m!7499834))

(assert (=> b!6743533 d!2118861))

(declare-fun d!2118863 () Bool)

(declare-fun c!1251109 () Bool)

(declare-fun e!4073226 () Bool)

(assert (=> d!2118863 (= c!1251109 e!4073226)))

(declare-fun res!2758375 () Bool)

(assert (=> d!2118863 (=> (not res!2758375) (not e!4073226))))

(assert (=> d!2118863 (= res!2758375 (is-Cons!65886 (exprs!6454 (h!72335 zl!343))))))

(declare-fun e!4073228 () (Set Context!11908))

(assert (=> d!2118863 (= (derivationStepZipperUp!1724 (h!72335 zl!343) (h!72333 s!2326)) e!4073228)))

(declare-fun bm!609748 () Bool)

(declare-fun call!609753 () (Set Context!11908))

(assert (=> bm!609748 (= call!609753 (derivationStepZipperDown!1798 (h!72334 (exprs!6454 (h!72335 zl!343))) (Context!11909 (t!379711 (exprs!6454 (h!72335 zl!343)))) (h!72333 s!2326)))))

(declare-fun b!6743758 () Bool)

(assert (=> b!6743758 (= e!4073226 (nullable!6557 (h!72334 (exprs!6454 (h!72335 zl!343)))))))

(declare-fun b!6743759 () Bool)

(declare-fun e!4073227 () (Set Context!11908))

(assert (=> b!6743759 (= e!4073227 (as set.empty (Set Context!11908)))))

(declare-fun b!6743760 () Bool)

(assert (=> b!6743760 (= e!4073228 e!4073227)))

(declare-fun c!1251110 () Bool)

(assert (=> b!6743760 (= c!1251110 (is-Cons!65886 (exprs!6454 (h!72335 zl!343))))))

(declare-fun b!6743761 () Bool)

(assert (=> b!6743761 (= e!4073228 (set.union call!609753 (derivationStepZipperUp!1724 (Context!11909 (t!379711 (exprs!6454 (h!72335 zl!343)))) (h!72333 s!2326))))))

(declare-fun b!6743762 () Bool)

(assert (=> b!6743762 (= e!4073227 call!609753)))

(assert (= (and d!2118863 res!2758375) b!6743758))

(assert (= (and d!2118863 c!1251109) b!6743761))

(assert (= (and d!2118863 (not c!1251109)) b!6743760))

(assert (= (and b!6743760 c!1251110) b!6743762))

(assert (= (and b!6743760 (not c!1251110)) b!6743759))

(assert (= (or b!6743761 b!6743762) bm!609748))

(declare-fun m!7499838 () Bool)

(assert (=> bm!609748 m!7499838))

(declare-fun m!7499840 () Bool)

(assert (=> b!6743758 m!7499840))

(declare-fun m!7499842 () Bool)

(assert (=> b!6743761 m!7499842))

(assert (=> b!6743533 d!2118863))

(declare-fun d!2118867 () Bool)

(declare-fun dynLambda!26291 (Int Context!11908) (Set Context!11908))

(assert (=> d!2118867 (= (flatMap!2051 z!1189 lambda!378915) (dynLambda!26291 lambda!378915 (h!72335 zl!343)))))

(declare-fun lt!2439515 () Unit!159831)

(declare-fun choose!50272 ((Set Context!11908) Context!11908 Int) Unit!159831)

(assert (=> d!2118867 (= lt!2439515 (choose!50272 z!1189 (h!72335 zl!343) lambda!378915))))

(assert (=> d!2118867 (= z!1189 (set.insert (h!72335 zl!343) (as set.empty (Set Context!11908))))))

(assert (=> d!2118867 (= (lemmaFlatMapOnSingletonSet!1577 z!1189 (h!72335 zl!343) lambda!378915) lt!2439515)))

(declare-fun b_lambda!254011 () Bool)

(assert (=> (not b_lambda!254011) (not d!2118867)))

(declare-fun bs!1793061 () Bool)

(assert (= bs!1793061 d!2118867))

(assert (=> bs!1793061 m!7499664))

(declare-fun m!7499844 () Bool)

(assert (=> bs!1793061 m!7499844))

(declare-fun m!7499846 () Bool)

(assert (=> bs!1793061 m!7499846))

(declare-fun m!7499848 () Bool)

(assert (=> bs!1793061 m!7499848))

(assert (=> b!6743533 d!2118867))

(declare-fun bm!609765 () Bool)

(declare-fun call!609775 () (Set Context!11908))

(declare-fun call!609770 () (Set Context!11908))

(assert (=> bm!609765 (= call!609775 call!609770)))

(declare-fun bm!609766 () Bool)

(declare-fun call!609773 () (Set Context!11908))

(assert (=> bm!609766 (= call!609770 call!609773)))

(declare-fun b!6743805 () Bool)

(declare-fun e!4073254 () (Set Context!11908))

(declare-fun e!4073257 () (Set Context!11908))

(assert (=> b!6743805 (= e!4073254 e!4073257)))

(declare-fun c!1251133 () Bool)

(assert (=> b!6743805 (= c!1251133 (is-Concat!25415 (reg!16899 r!7292)))))

(declare-fun call!609771 () List!66010)

(declare-fun bm!609767 () Bool)

(declare-fun c!1251130 () Bool)

(declare-fun $colon$colon!2387 (List!66010 Regex!16570) List!66010)

(assert (=> bm!609767 (= call!609771 ($colon$colon!2387 (exprs!6454 lt!2439421) (ite (or c!1251130 c!1251133) (regTwo!33652 (reg!16899 r!7292)) (reg!16899 r!7292))))))

(declare-fun c!1251131 () Bool)

(declare-fun call!609772 () List!66010)

(declare-fun bm!609768 () Bool)

(assert (=> bm!609768 (= call!609773 (derivationStepZipperDown!1798 (ite c!1251131 (regOne!33653 (reg!16899 r!7292)) (ite c!1251130 (regTwo!33652 (reg!16899 r!7292)) (ite c!1251133 (regOne!33652 (reg!16899 r!7292)) (reg!16899 (reg!16899 r!7292))))) (ite (or c!1251131 c!1251130) lt!2439421 (Context!11909 call!609772)) (h!72333 s!2326)))))

(declare-fun b!6743806 () Bool)

(declare-fun e!4073253 () (Set Context!11908))

(declare-fun e!4073255 () (Set Context!11908))

(assert (=> b!6743806 (= e!4073253 e!4073255)))

(assert (=> b!6743806 (= c!1251131 (is-Union!16570 (reg!16899 r!7292)))))

(declare-fun b!6743807 () Bool)

(declare-fun c!1251132 () Bool)

(assert (=> b!6743807 (= c!1251132 (is-Star!16570 (reg!16899 r!7292)))))

(declare-fun e!4073258 () (Set Context!11908))

(assert (=> b!6743807 (= e!4073257 e!4073258)))

(declare-fun call!609774 () (Set Context!11908))

(declare-fun bm!609769 () Bool)

(assert (=> bm!609769 (= call!609774 (derivationStepZipperDown!1798 (ite c!1251131 (regTwo!33653 (reg!16899 r!7292)) (regOne!33652 (reg!16899 r!7292))) (ite c!1251131 lt!2439421 (Context!11909 call!609771)) (h!72333 s!2326)))))

(declare-fun d!2118869 () Bool)

(declare-fun c!1251129 () Bool)

(assert (=> d!2118869 (= c!1251129 (and (is-ElementMatch!16570 (reg!16899 r!7292)) (= (c!1251065 (reg!16899 r!7292)) (h!72333 s!2326))))))

(assert (=> d!2118869 (= (derivationStepZipperDown!1798 (reg!16899 r!7292) lt!2439421 (h!72333 s!2326)) e!4073253)))

(declare-fun b!6743808 () Bool)

(assert (=> b!6743808 (= e!4073258 call!609775)))

(declare-fun b!6743809 () Bool)

(assert (=> b!6743809 (= e!4073255 (set.union call!609773 call!609774))))

(declare-fun bm!609770 () Bool)

(assert (=> bm!609770 (= call!609772 call!609771)))

(declare-fun b!6743810 () Bool)

(declare-fun e!4073256 () Bool)

(assert (=> b!6743810 (= e!4073256 (nullable!6557 (regOne!33652 (reg!16899 r!7292))))))

(declare-fun b!6743811 () Bool)

(assert (=> b!6743811 (= c!1251130 e!4073256)))

(declare-fun res!2758382 () Bool)

(assert (=> b!6743811 (=> (not res!2758382) (not e!4073256))))

(assert (=> b!6743811 (= res!2758382 (is-Concat!25415 (reg!16899 r!7292)))))

(assert (=> b!6743811 (= e!4073255 e!4073254)))

(declare-fun b!6743812 () Bool)

(assert (=> b!6743812 (= e!4073257 call!609775)))

(declare-fun b!6743813 () Bool)

(assert (=> b!6743813 (= e!4073254 (set.union call!609774 call!609770))))

(declare-fun b!6743814 () Bool)

(assert (=> b!6743814 (= e!4073253 (set.insert lt!2439421 (as set.empty (Set Context!11908))))))

(declare-fun b!6743815 () Bool)

(assert (=> b!6743815 (= e!4073258 (as set.empty (Set Context!11908)))))

(assert (= (and d!2118869 c!1251129) b!6743814))

(assert (= (and d!2118869 (not c!1251129)) b!6743806))

(assert (= (and b!6743806 c!1251131) b!6743809))

(assert (= (and b!6743806 (not c!1251131)) b!6743811))

(assert (= (and b!6743811 res!2758382) b!6743810))

(assert (= (and b!6743811 c!1251130) b!6743813))

(assert (= (and b!6743811 (not c!1251130)) b!6743805))

(assert (= (and b!6743805 c!1251133) b!6743812))

(assert (= (and b!6743805 (not c!1251133)) b!6743807))

(assert (= (and b!6743807 c!1251132) b!6743808))

(assert (= (and b!6743807 (not c!1251132)) b!6743815))

(assert (= (or b!6743812 b!6743808) bm!609770))

(assert (= (or b!6743812 b!6743808) bm!609765))

(assert (= (or b!6743813 bm!609770) bm!609767))

(assert (= (or b!6743813 bm!609765) bm!609766))

(assert (= (or b!6743809 b!6743813) bm!609769))

(assert (= (or b!6743809 bm!609766) bm!609768))

(assert (=> b!6743814 m!7499588))

(declare-fun m!7499866 () Bool)

(assert (=> bm!609767 m!7499866))

(declare-fun m!7499868 () Bool)

(assert (=> b!6743810 m!7499868))

(declare-fun m!7499870 () Bool)

(assert (=> bm!609768 m!7499870))

(declare-fun m!7499872 () Bool)

(assert (=> bm!609769 m!7499872))

(assert (=> b!6743541 d!2118869))

(declare-fun d!2118879 () Bool)

(assert (=> d!2118879 (= (flatMap!2051 lt!2439419 lambda!378915) (choose!50271 lt!2439419 lambda!378915))))

(declare-fun bs!1793064 () Bool)

(assert (= bs!1793064 d!2118879))

(declare-fun m!7499874 () Bool)

(assert (=> bs!1793064 m!7499874))

(assert (=> b!6743541 d!2118879))

(declare-fun d!2118881 () Bool)

(declare-fun c!1251134 () Bool)

(declare-fun e!4073259 () Bool)

(assert (=> d!2118881 (= c!1251134 e!4073259)))

(declare-fun res!2758383 () Bool)

(assert (=> d!2118881 (=> (not res!2758383) (not e!4073259))))

(assert (=> d!2118881 (= res!2758383 (is-Cons!65886 (exprs!6454 lt!2439409)))))

(declare-fun e!4073261 () (Set Context!11908))

(assert (=> d!2118881 (= (derivationStepZipperUp!1724 lt!2439409 (h!72333 s!2326)) e!4073261)))

(declare-fun bm!609771 () Bool)

(declare-fun call!609776 () (Set Context!11908))

(assert (=> bm!609771 (= call!609776 (derivationStepZipperDown!1798 (h!72334 (exprs!6454 lt!2439409)) (Context!11909 (t!379711 (exprs!6454 lt!2439409))) (h!72333 s!2326)))))

(declare-fun b!6743816 () Bool)

(assert (=> b!6743816 (= e!4073259 (nullable!6557 (h!72334 (exprs!6454 lt!2439409))))))

(declare-fun b!6743817 () Bool)

(declare-fun e!4073260 () (Set Context!11908))

(assert (=> b!6743817 (= e!4073260 (as set.empty (Set Context!11908)))))

(declare-fun b!6743818 () Bool)

(assert (=> b!6743818 (= e!4073261 e!4073260)))

(declare-fun c!1251135 () Bool)

(assert (=> b!6743818 (= c!1251135 (is-Cons!65886 (exprs!6454 lt!2439409)))))

(declare-fun b!6743819 () Bool)

(assert (=> b!6743819 (= e!4073261 (set.union call!609776 (derivationStepZipperUp!1724 (Context!11909 (t!379711 (exprs!6454 lt!2439409))) (h!72333 s!2326))))))

(declare-fun b!6743820 () Bool)

(assert (=> b!6743820 (= e!4073260 call!609776)))

(assert (= (and d!2118881 res!2758383) b!6743816))

(assert (= (and d!2118881 c!1251134) b!6743819))

(assert (= (and d!2118881 (not c!1251134)) b!6743818))

(assert (= (and b!6743818 c!1251135) b!6743820))

(assert (= (and b!6743818 (not c!1251135)) b!6743817))

(assert (= (or b!6743819 b!6743820) bm!609771))

(declare-fun m!7499876 () Bool)

(assert (=> bm!609771 m!7499876))

(declare-fun m!7499878 () Bool)

(assert (=> b!6743816 m!7499878))

(declare-fun m!7499880 () Bool)

(assert (=> b!6743819 m!7499880))

(assert (=> b!6743541 d!2118881))

(declare-fun d!2118883 () Bool)

(assert (=> d!2118883 (= (flatMap!2051 lt!2439419 lambda!378915) (dynLambda!26291 lambda!378915 lt!2439409))))

(declare-fun lt!2439516 () Unit!159831)

(assert (=> d!2118883 (= lt!2439516 (choose!50272 lt!2439419 lt!2439409 lambda!378915))))

(assert (=> d!2118883 (= lt!2439419 (set.insert lt!2439409 (as set.empty (Set Context!11908))))))

(assert (=> d!2118883 (= (lemmaFlatMapOnSingletonSet!1577 lt!2439419 lt!2439409 lambda!378915) lt!2439516)))

(declare-fun b_lambda!254013 () Bool)

(assert (=> (not b_lambda!254013) (not d!2118883)))

(declare-fun bs!1793065 () Bool)

(assert (= bs!1793065 d!2118883))

(assert (=> bs!1793065 m!7499640))

(declare-fun m!7499882 () Bool)

(assert (=> bs!1793065 m!7499882))

(declare-fun m!7499884 () Bool)

(assert (=> bs!1793065 m!7499884))

(assert (=> bs!1793065 m!7499638))

(assert (=> b!6743541 d!2118883))

(declare-fun bs!1793066 () Bool)

(declare-fun d!2118885 () Bool)

(assert (= bs!1793066 (and d!2118885 d!2118853)))

(declare-fun lambda!378952 () Int)

(assert (=> bs!1793066 (= lambda!378952 lambda!378943)))

(declare-fun bs!1793067 () Bool)

(assert (= bs!1793067 (and d!2118885 d!2118855)))

(assert (=> bs!1793067 (= lambda!378952 lambda!378946)))

(assert (=> d!2118885 (= (inv!84673 setElem!46060) (forall!15770 (exprs!6454 setElem!46060) lambda!378952))))

(declare-fun bs!1793068 () Bool)

(assert (= bs!1793068 d!2118885))

(declare-fun m!7499886 () Bool)

(assert (=> bs!1793068 m!7499886))

(assert (=> setNonEmpty!46060 d!2118885))

(declare-fun d!2118887 () Bool)

(declare-fun lt!2439519 () Regex!16570)

(assert (=> d!2118887 (validRegex!8306 lt!2439519)))

(assert (=> d!2118887 (= lt!2439519 (generalisedUnion!2414 (unfocusZipperList!1991 zl!343)))))

(assert (=> d!2118887 (= (unfocusZipper!2312 zl!343) lt!2439519)))

(declare-fun bs!1793069 () Bool)

(assert (= bs!1793069 d!2118887))

(declare-fun m!7499888 () Bool)

(assert (=> bs!1793069 m!7499888))

(assert (=> bs!1793069 m!7499632))

(assert (=> bs!1793069 m!7499632))

(assert (=> bs!1793069 m!7499634))

(assert (=> b!6743535 d!2118887))

(declare-fun bs!1793073 () Bool)

(declare-fun b!6743862 () Bool)

(assert (= bs!1793073 (and b!6743862 b!6743538)))

(declare-fun lambda!378960 () Int)

(assert (=> bs!1793073 (not (= lambda!378960 lambda!378912))))

(assert (=> bs!1793073 (= lambda!378960 lambda!378913)))

(assert (=> bs!1793073 (not (= lambda!378960 lambda!378914))))

(assert (=> b!6743862 true))

(assert (=> b!6743862 true))

(declare-fun bs!1793074 () Bool)

(declare-fun b!6743853 () Bool)

(assert (= bs!1793074 (and b!6743853 b!6743538)))

(declare-fun lambda!378961 () Int)

(assert (=> bs!1793074 (not (= lambda!378961 lambda!378912))))

(assert (=> bs!1793074 (not (= lambda!378961 lambda!378913))))

(assert (=> bs!1793074 (= (and (= (regOne!33652 r!7292) (reg!16899 r!7292)) (= (regTwo!33652 r!7292) r!7292)) (= lambda!378961 lambda!378914))))

(declare-fun bs!1793075 () Bool)

(assert (= bs!1793075 (and b!6743853 b!6743862)))

(assert (=> bs!1793075 (not (= lambda!378961 lambda!378960))))

(assert (=> b!6743853 true))

(assert (=> b!6743853 true))

(declare-fun e!4073286 () Bool)

(declare-fun call!609782 () Bool)

(assert (=> b!6743853 (= e!4073286 call!609782)))

(declare-fun b!6743854 () Bool)

(declare-fun e!4073281 () Bool)

(assert (=> b!6743854 (= e!4073281 e!4073286)))

(declare-fun c!1251146 () Bool)

(assert (=> b!6743854 (= c!1251146 (is-Star!16570 r!7292))))

(declare-fun b!6743855 () Bool)

(declare-fun res!2758401 () Bool)

(declare-fun e!4073282 () Bool)

(assert (=> b!6743855 (=> res!2758401 e!4073282)))

(declare-fun call!609781 () Bool)

(assert (=> b!6743855 (= res!2758401 call!609781)))

(assert (=> b!6743855 (= e!4073286 e!4073282)))

(declare-fun bm!609776 () Bool)

(assert (=> bm!609776 (= call!609782 (Exists!3638 (ite c!1251146 lambda!378960 lambda!378961)))))

(declare-fun b!6743856 () Bool)

(declare-fun e!4073284 () Bool)

(assert (=> b!6743856 (= e!4073284 (matchRSpec!3671 (regTwo!33653 r!7292) s!2326))))

(declare-fun b!6743857 () Bool)

(declare-fun e!4073280 () Bool)

(assert (=> b!6743857 (= e!4073280 (= s!2326 (Cons!65885 (c!1251065 r!7292) Nil!65885)))))

(declare-fun b!6743858 () Bool)

(declare-fun e!4073283 () Bool)

(declare-fun e!4073285 () Bool)

(assert (=> b!6743858 (= e!4073283 e!4073285)))

(declare-fun res!2758400 () Bool)

(assert (=> b!6743858 (= res!2758400 (not (is-EmptyLang!16570 r!7292)))))

(assert (=> b!6743858 (=> (not res!2758400) (not e!4073285))))

(declare-fun b!6743859 () Bool)

(declare-fun c!1251144 () Bool)

(assert (=> b!6743859 (= c!1251144 (is-ElementMatch!16570 r!7292))))

(assert (=> b!6743859 (= e!4073285 e!4073280)))

(declare-fun b!6743860 () Bool)

(declare-fun c!1251147 () Bool)

(assert (=> b!6743860 (= c!1251147 (is-Union!16570 r!7292))))

(assert (=> b!6743860 (= e!4073280 e!4073281)))

(declare-fun bm!609777 () Bool)

(assert (=> bm!609777 (= call!609781 (isEmpty!38231 s!2326))))

(assert (=> b!6743862 (= e!4073282 call!609782)))

(declare-fun b!6743863 () Bool)

(assert (=> b!6743863 (= e!4073283 call!609781)))

(declare-fun d!2118889 () Bool)

(declare-fun c!1251145 () Bool)

(assert (=> d!2118889 (= c!1251145 (is-EmptyExpr!16570 r!7292))))

(assert (=> d!2118889 (= (matchRSpec!3671 r!7292 s!2326) e!4073283)))

(declare-fun b!6743861 () Bool)

(assert (=> b!6743861 (= e!4073281 e!4073284)))

(declare-fun res!2758402 () Bool)

(assert (=> b!6743861 (= res!2758402 (matchRSpec!3671 (regOne!33653 r!7292) s!2326))))

(assert (=> b!6743861 (=> res!2758402 e!4073284)))

(assert (= (and d!2118889 c!1251145) b!6743863))

(assert (= (and d!2118889 (not c!1251145)) b!6743858))

(assert (= (and b!6743858 res!2758400) b!6743859))

(assert (= (and b!6743859 c!1251144) b!6743857))

(assert (= (and b!6743859 (not c!1251144)) b!6743860))

(assert (= (and b!6743860 c!1251147) b!6743861))

(assert (= (and b!6743860 (not c!1251147)) b!6743854))

(assert (= (and b!6743861 (not res!2758402)) b!6743856))

(assert (= (and b!6743854 c!1251146) b!6743855))

(assert (= (and b!6743854 (not c!1251146)) b!6743853))

(assert (= (and b!6743855 (not res!2758401)) b!6743862))

(assert (= (or b!6743862 b!6743853) bm!609776))

(assert (= (or b!6743863 b!6743855) bm!609777))

(declare-fun m!7499900 () Bool)

(assert (=> bm!609776 m!7499900))

(declare-fun m!7499902 () Bool)

(assert (=> b!6743856 m!7499902))

(assert (=> bm!609777 m!7499606))

(declare-fun m!7499904 () Bool)

(assert (=> b!6743861 m!7499904))

(assert (=> b!6743534 d!2118889))

(declare-fun b!6743914 () Bool)

(declare-fun e!4073316 () Bool)

(declare-fun derivativeStep!5242 (Regex!16570 C!33410) Regex!16570)

(assert (=> b!6743914 (= e!4073316 (matchR!8753 (derivativeStep!5242 r!7292 (head!13567 s!2326)) (tail!12652 s!2326)))))

(declare-fun d!2118897 () Bool)

(declare-fun e!4073313 () Bool)

(assert (=> d!2118897 e!4073313))

(declare-fun c!1251164 () Bool)

(assert (=> d!2118897 (= c!1251164 (is-EmptyExpr!16570 r!7292))))

(declare-fun lt!2439524 () Bool)

(assert (=> d!2118897 (= lt!2439524 e!4073316)))

(declare-fun c!1251165 () Bool)

(assert (=> d!2118897 (= c!1251165 (isEmpty!38231 s!2326))))

(assert (=> d!2118897 (validRegex!8306 r!7292)))

(assert (=> d!2118897 (= (matchR!8753 r!7292 s!2326) lt!2439524)))

(declare-fun b!6743915 () Bool)

(declare-fun call!609797 () Bool)

(assert (=> b!6743915 (= e!4073313 (= lt!2439524 call!609797))))

(declare-fun b!6743916 () Bool)

(declare-fun e!4073314 () Bool)

(assert (=> b!6743916 (= e!4073314 (= (head!13567 s!2326) (c!1251065 r!7292)))))

(declare-fun b!6743917 () Bool)

(declare-fun res!2758425 () Bool)

(assert (=> b!6743917 (=> (not res!2758425) (not e!4073314))))

(assert (=> b!6743917 (= res!2758425 (isEmpty!38231 (tail!12652 s!2326)))))

(declare-fun b!6743918 () Bool)

(declare-fun res!2758421 () Bool)

(declare-fun e!4073319 () Bool)

(assert (=> b!6743918 (=> res!2758421 e!4073319)))

(assert (=> b!6743918 (= res!2758421 (not (is-ElementMatch!16570 r!7292)))))

(declare-fun e!4073315 () Bool)

(assert (=> b!6743918 (= e!4073315 e!4073319)))

(declare-fun b!6743919 () Bool)

(declare-fun res!2758428 () Bool)

(assert (=> b!6743919 (=> (not res!2758428) (not e!4073314))))

(assert (=> b!6743919 (= res!2758428 (not call!609797))))

(declare-fun b!6743920 () Bool)

(declare-fun res!2758424 () Bool)

(declare-fun e!4073318 () Bool)

(assert (=> b!6743920 (=> res!2758424 e!4073318)))

(assert (=> b!6743920 (= res!2758424 (not (isEmpty!38231 (tail!12652 s!2326))))))

(declare-fun b!6743921 () Bool)

(assert (=> b!6743921 (= e!4073316 (nullable!6557 r!7292))))

(declare-fun b!6743922 () Bool)

(assert (=> b!6743922 (= e!4073313 e!4073315)))

(declare-fun c!1251166 () Bool)

(assert (=> b!6743922 (= c!1251166 (is-EmptyLang!16570 r!7292))))

(declare-fun b!6743923 () Bool)

(declare-fun e!4073317 () Bool)

(assert (=> b!6743923 (= e!4073319 e!4073317)))

(declare-fun res!2758426 () Bool)

(assert (=> b!6743923 (=> (not res!2758426) (not e!4073317))))

(assert (=> b!6743923 (= res!2758426 (not lt!2439524))))

(declare-fun bm!609792 () Bool)

(assert (=> bm!609792 (= call!609797 (isEmpty!38231 s!2326))))

(declare-fun b!6743924 () Bool)

(assert (=> b!6743924 (= e!4073315 (not lt!2439524))))

(declare-fun b!6743925 () Bool)

(assert (=> b!6743925 (= e!4073318 (not (= (head!13567 s!2326) (c!1251065 r!7292))))))

(declare-fun b!6743926 () Bool)

(declare-fun res!2758422 () Bool)

(assert (=> b!6743926 (=> res!2758422 e!4073319)))

(assert (=> b!6743926 (= res!2758422 e!4073314)))

(declare-fun res!2758427 () Bool)

(assert (=> b!6743926 (=> (not res!2758427) (not e!4073314))))

(assert (=> b!6743926 (= res!2758427 lt!2439524)))

(declare-fun b!6743927 () Bool)

(assert (=> b!6743927 (= e!4073317 e!4073318)))

(declare-fun res!2758423 () Bool)

(assert (=> b!6743927 (=> res!2758423 e!4073318)))

(assert (=> b!6743927 (= res!2758423 call!609797)))

(assert (= (and d!2118897 c!1251165) b!6743921))

(assert (= (and d!2118897 (not c!1251165)) b!6743914))

(assert (= (and d!2118897 c!1251164) b!6743915))

(assert (= (and d!2118897 (not c!1251164)) b!6743922))

(assert (= (and b!6743922 c!1251166) b!6743924))

(assert (= (and b!6743922 (not c!1251166)) b!6743918))

(assert (= (and b!6743918 (not res!2758421)) b!6743926))

(assert (= (and b!6743926 res!2758427) b!6743919))

(assert (= (and b!6743919 res!2758428) b!6743917))

(assert (= (and b!6743917 res!2758425) b!6743916))

(assert (= (and b!6743926 (not res!2758422)) b!6743923))

(assert (= (and b!6743923 res!2758426) b!6743927))

(assert (= (and b!6743927 (not res!2758423)) b!6743920))

(assert (= (and b!6743920 (not res!2758424)) b!6743925))

(assert (= (or b!6743915 b!6743919 b!6743927) bm!609792))

(assert (=> bm!609792 m!7499606))

(assert (=> b!6743925 m!7499776))

(assert (=> b!6743917 m!7499780))

(assert (=> b!6743917 m!7499780))

(declare-fun m!7499906 () Bool)

(assert (=> b!6743917 m!7499906))

(assert (=> d!2118897 m!7499606))

(assert (=> d!2118897 m!7499650))

(assert (=> b!6743914 m!7499776))

(assert (=> b!6743914 m!7499776))

(declare-fun m!7499908 () Bool)

(assert (=> b!6743914 m!7499908))

(assert (=> b!6743914 m!7499780))

(assert (=> b!6743914 m!7499908))

(assert (=> b!6743914 m!7499780))

(declare-fun m!7499910 () Bool)

(assert (=> b!6743914 m!7499910))

(assert (=> b!6743916 m!7499776))

(declare-fun m!7499912 () Bool)

(assert (=> b!6743921 m!7499912))

(assert (=> b!6743920 m!7499780))

(assert (=> b!6743920 m!7499780))

(assert (=> b!6743920 m!7499906))

(assert (=> b!6743534 d!2118897))

(declare-fun d!2118899 () Bool)

(assert (=> d!2118899 (= (matchR!8753 r!7292 s!2326) (matchRSpec!3671 r!7292 s!2326))))

(declare-fun lt!2439527 () Unit!159831)

(declare-fun choose!50273 (Regex!16570 List!66009) Unit!159831)

(assert (=> d!2118899 (= lt!2439527 (choose!50273 r!7292 s!2326))))

(assert (=> d!2118899 (validRegex!8306 r!7292)))

(assert (=> d!2118899 (= (mainMatchTheorem!3671 r!7292 s!2326) lt!2439527)))

(declare-fun bs!1793076 () Bool)

(assert (= bs!1793076 d!2118899))

(assert (=> bs!1793076 m!7499656))

(assert (=> bs!1793076 m!7499654))

(declare-fun m!7499914 () Bool)

(assert (=> bs!1793076 m!7499914))

(assert (=> bs!1793076 m!7499650))

(assert (=> b!6743534 d!2118899))

(declare-fun d!2118901 () Bool)

(assert (=> d!2118901 (= (isEmpty!38232 (t!379712 zl!343)) (is-Nil!65887 (t!379712 zl!343)))))

(assert (=> b!6743544 d!2118901))

(declare-fun d!2118903 () Bool)

(declare-fun c!1251172 () Bool)

(declare-fun e!4073326 () Bool)

(assert (=> d!2118903 (= c!1251172 e!4073326)))

(declare-fun res!2758430 () Bool)

(assert (=> d!2118903 (=> (not res!2758430) (not e!4073326))))

(assert (=> d!2118903 (= res!2758430 (is-Cons!65886 (exprs!6454 lt!2439420)))))

(declare-fun e!4073328 () (Set Context!11908))

(assert (=> d!2118903 (= (derivationStepZipperUp!1724 lt!2439420 (h!72333 s!2326)) e!4073328)))

(declare-fun bm!609799 () Bool)

(declare-fun call!609804 () (Set Context!11908))

(assert (=> bm!609799 (= call!609804 (derivationStepZipperDown!1798 (h!72334 (exprs!6454 lt!2439420)) (Context!11909 (t!379711 (exprs!6454 lt!2439420))) (h!72333 s!2326)))))

(declare-fun b!6743939 () Bool)

(assert (=> b!6743939 (= e!4073326 (nullable!6557 (h!72334 (exprs!6454 lt!2439420))))))

(declare-fun b!6743940 () Bool)

(declare-fun e!4073327 () (Set Context!11908))

(assert (=> b!6743940 (= e!4073327 (as set.empty (Set Context!11908)))))

(declare-fun b!6743941 () Bool)

(assert (=> b!6743941 (= e!4073328 e!4073327)))

(declare-fun c!1251173 () Bool)

(assert (=> b!6743941 (= c!1251173 (is-Cons!65886 (exprs!6454 lt!2439420)))))

(declare-fun b!6743942 () Bool)

(assert (=> b!6743942 (= e!4073328 (set.union call!609804 (derivationStepZipperUp!1724 (Context!11909 (t!379711 (exprs!6454 lt!2439420))) (h!72333 s!2326))))))

(declare-fun b!6743943 () Bool)

(assert (=> b!6743943 (= e!4073327 call!609804)))

(assert (= (and d!2118903 res!2758430) b!6743939))

(assert (= (and d!2118903 c!1251172) b!6743942))

(assert (= (and d!2118903 (not c!1251172)) b!6743941))

(assert (= (and b!6743941 c!1251173) b!6743943))

(assert (= (and b!6743941 (not c!1251173)) b!6743940))

(assert (= (or b!6743942 b!6743943) bm!609799))

(declare-fun m!7499916 () Bool)

(assert (=> bm!609799 m!7499916))

(declare-fun m!7499918 () Bool)

(assert (=> b!6743939 m!7499918))

(declare-fun m!7499920 () Bool)

(assert (=> b!6743942 m!7499920))

(assert (=> b!6743525 d!2118903))

(declare-fun d!2118905 () Bool)

(declare-fun c!1251174 () Bool)

(declare-fun e!4073329 () Bool)

(assert (=> d!2118905 (= c!1251174 e!4073329)))

(declare-fun res!2758431 () Bool)

(assert (=> d!2118905 (=> (not res!2758431) (not e!4073329))))

(assert (=> d!2118905 (= res!2758431 (is-Cons!65886 (exprs!6454 lt!2439421)))))

(declare-fun e!4073331 () (Set Context!11908))

(assert (=> d!2118905 (= (derivationStepZipperUp!1724 lt!2439421 (h!72333 s!2326)) e!4073331)))

(declare-fun bm!609800 () Bool)

(declare-fun call!609805 () (Set Context!11908))

(assert (=> bm!609800 (= call!609805 (derivationStepZipperDown!1798 (h!72334 (exprs!6454 lt!2439421)) (Context!11909 (t!379711 (exprs!6454 lt!2439421))) (h!72333 s!2326)))))

(declare-fun b!6743944 () Bool)

(assert (=> b!6743944 (= e!4073329 (nullable!6557 (h!72334 (exprs!6454 lt!2439421))))))

(declare-fun b!6743945 () Bool)

(declare-fun e!4073330 () (Set Context!11908))

(assert (=> b!6743945 (= e!4073330 (as set.empty (Set Context!11908)))))

(declare-fun b!6743946 () Bool)

(assert (=> b!6743946 (= e!4073331 e!4073330)))

(declare-fun c!1251175 () Bool)

(assert (=> b!6743946 (= c!1251175 (is-Cons!65886 (exprs!6454 lt!2439421)))))

(declare-fun b!6743947 () Bool)

(assert (=> b!6743947 (= e!4073331 (set.union call!609805 (derivationStepZipperUp!1724 (Context!11909 (t!379711 (exprs!6454 lt!2439421))) (h!72333 s!2326))))))

(declare-fun b!6743948 () Bool)

(assert (=> b!6743948 (= e!4073330 call!609805)))

(assert (= (and d!2118905 res!2758431) b!6743944))

(assert (= (and d!2118905 c!1251174) b!6743947))

(assert (= (and d!2118905 (not c!1251174)) b!6743946))

(assert (= (and b!6743946 c!1251175) b!6743948))

(assert (= (and b!6743946 (not c!1251175)) b!6743945))

(assert (= (or b!6743947 b!6743948) bm!609800))

(declare-fun m!7499922 () Bool)

(assert (=> bm!609800 m!7499922))

(declare-fun m!7499924 () Bool)

(assert (=> b!6743944 m!7499924))

(declare-fun m!7499926 () Bool)

(assert (=> b!6743947 m!7499926))

(assert (=> b!6743525 d!2118905))

(declare-fun d!2118907 () Bool)

(assert (=> d!2118907 (= (flatMap!2051 lt!2439403 lambda!378915) (choose!50271 lt!2439403 lambda!378915))))

(declare-fun bs!1793077 () Bool)

(assert (= bs!1793077 d!2118907))

(declare-fun m!7499928 () Bool)

(assert (=> bs!1793077 m!7499928))

(assert (=> b!6743525 d!2118907))

(declare-fun bs!1793078 () Bool)

(declare-fun d!2118909 () Bool)

(assert (= bs!1793078 (and d!2118909 b!6743533)))

(declare-fun lambda!378962 () Int)

(assert (=> bs!1793078 (= lambda!378962 lambda!378915)))

(declare-fun bs!1793079 () Bool)

(assert (= bs!1793079 (and d!2118909 d!2118849)))

(assert (=> bs!1793079 (= lambda!378962 lambda!378940)))

(assert (=> d!2118909 true))

(assert (=> d!2118909 (= (derivationStepZipper!2514 lt!2439416 (h!72333 s!2326)) (flatMap!2051 lt!2439416 lambda!378962))))

(declare-fun bs!1793080 () Bool)

(assert (= bs!1793080 d!2118909))

(declare-fun m!7499936 () Bool)

(assert (=> bs!1793080 m!7499936))

(assert (=> b!6743525 d!2118909))

(declare-fun d!2118911 () Bool)

(assert (=> d!2118911 (= (flatMap!2051 lt!2439416 lambda!378915) (choose!50271 lt!2439416 lambda!378915))))

(declare-fun bs!1793081 () Bool)

(assert (= bs!1793081 d!2118911))

(declare-fun m!7499940 () Bool)

(assert (=> bs!1793081 m!7499940))

(assert (=> b!6743525 d!2118911))

(declare-fun d!2118913 () Bool)

(assert (=> d!2118913 (= (flatMap!2051 lt!2439403 lambda!378915) (dynLambda!26291 lambda!378915 lt!2439420))))

(declare-fun lt!2439528 () Unit!159831)

(assert (=> d!2118913 (= lt!2439528 (choose!50272 lt!2439403 lt!2439420 lambda!378915))))

(assert (=> d!2118913 (= lt!2439403 (set.insert lt!2439420 (as set.empty (Set Context!11908))))))

(assert (=> d!2118913 (= (lemmaFlatMapOnSingletonSet!1577 lt!2439403 lt!2439420 lambda!378915) lt!2439528)))

(declare-fun b_lambda!254019 () Bool)

(assert (=> (not b_lambda!254019) (not d!2118913)))

(declare-fun bs!1793082 () Bool)

(assert (= bs!1793082 d!2118913))

(assert (=> bs!1793082 m!7499584))

(declare-fun m!7499944 () Bool)

(assert (=> bs!1793082 m!7499944))

(declare-fun m!7499946 () Bool)

(assert (=> bs!1793082 m!7499946))

(assert (=> bs!1793082 m!7499582))

(assert (=> b!6743525 d!2118913))

(declare-fun d!2118919 () Bool)

(assert (=> d!2118919 (= (flatMap!2051 lt!2439416 lambda!378915) (dynLambda!26291 lambda!378915 lt!2439421))))

(declare-fun lt!2439529 () Unit!159831)

(assert (=> d!2118919 (= lt!2439529 (choose!50272 lt!2439416 lt!2439421 lambda!378915))))

(assert (=> d!2118919 (= lt!2439416 (set.insert lt!2439421 (as set.empty (Set Context!11908))))))

(assert (=> d!2118919 (= (lemmaFlatMapOnSingletonSet!1577 lt!2439416 lt!2439421 lambda!378915) lt!2439529)))

(declare-fun b_lambda!254021 () Bool)

(assert (=> (not b_lambda!254021) (not d!2118919)))

(declare-fun bs!1793084 () Bool)

(assert (= bs!1793084 d!2118919))

(assert (=> bs!1793084 m!7499580))

(declare-fun m!7499948 () Bool)

(assert (=> bs!1793084 m!7499948))

(declare-fun m!7499950 () Bool)

(assert (=> bs!1793084 m!7499950))

(assert (=> bs!1793084 m!7499588))

(assert (=> b!6743525 d!2118919))

(declare-fun bs!1793085 () Bool)

(declare-fun d!2118921 () Bool)

(assert (= bs!1793085 (and d!2118921 d!2118853)))

(declare-fun lambda!378963 () Int)

(assert (=> bs!1793085 (= lambda!378963 lambda!378943)))

(declare-fun bs!1793086 () Bool)

(assert (= bs!1793086 (and d!2118921 d!2118855)))

(assert (=> bs!1793086 (= lambda!378963 lambda!378946)))

(declare-fun bs!1793087 () Bool)

(assert (= bs!1793087 (and d!2118921 d!2118885)))

(assert (=> bs!1793087 (= lambda!378963 lambda!378952)))

(assert (=> d!2118921 (= (inv!84673 (h!72335 zl!343)) (forall!15770 (exprs!6454 (h!72335 zl!343)) lambda!378963))))

(declare-fun bs!1793088 () Bool)

(assert (= bs!1793088 d!2118921))

(declare-fun m!7499952 () Bool)

(assert (=> bs!1793088 m!7499952))

(assert (=> b!6743528 d!2118921))

(declare-fun b!6743954 () Bool)

(declare-fun e!4073340 () Bool)

(declare-fun call!609809 () Bool)

(assert (=> b!6743954 (= e!4073340 call!609809)))

(declare-fun b!6743955 () Bool)

(declare-fun e!4073335 () Bool)

(declare-fun e!4073341 () Bool)

(assert (=> b!6743955 (= e!4073335 e!4073341)))

(declare-fun c!1251179 () Bool)

(assert (=> b!6743955 (= c!1251179 (is-Union!16570 r!7292))))

(declare-fun b!6743956 () Bool)

(declare-fun res!2758436 () Bool)

(assert (=> b!6743956 (=> (not res!2758436) (not e!4073340))))

(declare-fun call!609807 () Bool)

(assert (=> b!6743956 (= res!2758436 call!609807)))

(assert (=> b!6743956 (= e!4073341 e!4073340)))

(declare-fun b!6743957 () Bool)

(declare-fun e!4073339 () Bool)

(assert (=> b!6743957 (= e!4073339 call!609809)))

(declare-fun bm!609802 () Bool)

(assert (=> bm!609802 (= call!609809 (validRegex!8306 (ite c!1251179 (regTwo!33653 r!7292) (regTwo!33652 r!7292))))))

(declare-fun b!6743958 () Bool)

(declare-fun res!2758437 () Bool)

(declare-fun e!4073336 () Bool)

(assert (=> b!6743958 (=> res!2758437 e!4073336)))

(assert (=> b!6743958 (= res!2758437 (not (is-Concat!25415 r!7292)))))

(assert (=> b!6743958 (= e!4073341 e!4073336)))

(declare-fun bm!609803 () Bool)

(declare-fun call!609808 () Bool)

(assert (=> bm!609803 (= call!609807 call!609808)))

(declare-fun b!6743959 () Bool)

(declare-fun e!4073338 () Bool)

(assert (=> b!6743959 (= e!4073335 e!4073338)))

(declare-fun res!2758433 () Bool)

(assert (=> b!6743959 (= res!2758433 (not (nullable!6557 (reg!16899 r!7292))))))

(assert (=> b!6743959 (=> (not res!2758433) (not e!4073338))))

(declare-fun d!2118923 () Bool)

(declare-fun res!2758434 () Bool)

(declare-fun e!4073337 () Bool)

(assert (=> d!2118923 (=> res!2758434 e!4073337)))

(assert (=> d!2118923 (= res!2758434 (is-ElementMatch!16570 r!7292))))

(assert (=> d!2118923 (= (validRegex!8306 r!7292) e!4073337)))

(declare-fun b!6743960 () Bool)

(assert (=> b!6743960 (= e!4073338 call!609808)))

(declare-fun c!1251178 () Bool)

(declare-fun bm!609804 () Bool)

(assert (=> bm!609804 (= call!609808 (validRegex!8306 (ite c!1251178 (reg!16899 r!7292) (ite c!1251179 (regOne!33653 r!7292) (regOne!33652 r!7292)))))))

(declare-fun b!6743961 () Bool)

(assert (=> b!6743961 (= e!4073337 e!4073335)))

(assert (=> b!6743961 (= c!1251178 (is-Star!16570 r!7292))))

(declare-fun b!6743962 () Bool)

(assert (=> b!6743962 (= e!4073336 e!4073339)))

(declare-fun res!2758435 () Bool)

(assert (=> b!6743962 (=> (not res!2758435) (not e!4073339))))

(assert (=> b!6743962 (= res!2758435 call!609807)))

(assert (= (and d!2118923 (not res!2758434)) b!6743961))

(assert (= (and b!6743961 c!1251178) b!6743959))

(assert (= (and b!6743961 (not c!1251178)) b!6743955))

(assert (= (and b!6743959 res!2758433) b!6743960))

(assert (= (and b!6743955 c!1251179) b!6743956))

(assert (= (and b!6743955 (not c!1251179)) b!6743958))

(assert (= (and b!6743956 res!2758436) b!6743954))

(assert (= (and b!6743958 (not res!2758437)) b!6743962))

(assert (= (and b!6743962 res!2758435) b!6743957))

(assert (= (or b!6743954 b!6743957) bm!609802))

(assert (= (or b!6743956 b!6743962) bm!609803))

(assert (= (or b!6743960 bm!609803) bm!609804))

(declare-fun m!7499960 () Bool)

(assert (=> bm!609802 m!7499960))

(declare-fun m!7499962 () Bool)

(assert (=> b!6743959 m!7499962))

(declare-fun m!7499964 () Bool)

(assert (=> bm!609804 m!7499964))

(assert (=> start!654090 d!2118923))

(declare-fun d!2118927 () Bool)

(declare-fun choose!50274 (Int) Bool)

(assert (=> d!2118927 (= (Exists!3638 lambda!378914) (choose!50274 lambda!378914))))

(declare-fun bs!1793090 () Bool)

(assert (= bs!1793090 d!2118927))

(declare-fun m!7499970 () Bool)

(assert (=> bs!1793090 m!7499970))

(assert (=> b!6743538 d!2118927))

(declare-fun d!2118931 () Bool)

(assert (=> d!2118931 (= (Exists!3638 lambda!378912) (choose!50274 lambda!378912))))

(declare-fun bs!1793091 () Bool)

(assert (= bs!1793091 d!2118931))

(declare-fun m!7499972 () Bool)

(assert (=> bs!1793091 m!7499972))

(assert (=> b!6743538 d!2118931))

(declare-fun d!2118933 () Bool)

(declare-fun isEmpty!38236 (Option!16457) Bool)

(assert (=> d!2118933 (= (isDefined!13160 (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 Nil!65885 s!2326 s!2326)) (not (isEmpty!38236 (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 Nil!65885 s!2326 s!2326))))))

(declare-fun bs!1793092 () Bool)

(assert (= bs!1793092 d!2118933))

(assert (=> bs!1793092 m!7499616))

(declare-fun m!7499974 () Bool)

(assert (=> bs!1793092 m!7499974))

(assert (=> b!6743538 d!2118933))

(declare-fun d!2118935 () Bool)

(assert (=> d!2118935 (= (Exists!3638 lambda!378913) (choose!50274 lambda!378913))))

(declare-fun bs!1793093 () Bool)

(assert (= bs!1793093 d!2118935))

(declare-fun m!7499976 () Bool)

(assert (=> bs!1793093 m!7499976))

(assert (=> b!6743538 d!2118935))

(declare-fun bs!1793094 () Bool)

(declare-fun d!2118937 () Bool)

(assert (= bs!1793094 (and d!2118937 b!6743538)))

(declare-fun lambda!378968 () Int)

(assert (=> bs!1793094 (not (= lambda!378968 lambda!378913))))

(declare-fun bs!1793095 () Bool)

(assert (= bs!1793095 (and d!2118937 b!6743862)))

(assert (=> bs!1793095 (not (= lambda!378968 lambda!378960))))

(assert (=> bs!1793094 (not (= lambda!378968 lambda!378914))))

(declare-fun bs!1793096 () Bool)

(assert (= bs!1793096 (and d!2118937 b!6743853)))

(assert (=> bs!1793096 (not (= lambda!378968 lambda!378961))))

(assert (=> bs!1793094 (= lambda!378968 lambda!378912)))

(assert (=> d!2118937 true))

(assert (=> d!2118937 true))

(assert (=> d!2118937 true))

(declare-fun lambda!378970 () Int)

(assert (=> bs!1793094 (not (= lambda!378970 lambda!378913))))

(assert (=> bs!1793095 (not (= lambda!378970 lambda!378960))))

(declare-fun bs!1793099 () Bool)

(assert (= bs!1793099 d!2118937))

(assert (=> bs!1793099 (not (= lambda!378970 lambda!378968))))

(assert (=> bs!1793094 (= lambda!378970 lambda!378914)))

(assert (=> bs!1793096 (= (and (= (reg!16899 r!7292) (regOne!33652 r!7292)) (= r!7292 (regTwo!33652 r!7292))) (= lambda!378970 lambda!378961))))

(assert (=> bs!1793094 (not (= lambda!378970 lambda!378912))))

(assert (=> d!2118937 true))

(assert (=> d!2118937 true))

(assert (=> d!2118937 true))

(assert (=> d!2118937 (= (Exists!3638 lambda!378968) (Exists!3638 lambda!378970))))

(declare-fun lt!2439536 () Unit!159831)

(declare-fun choose!50276 (Regex!16570 Regex!16570 List!66009) Unit!159831)

(assert (=> d!2118937 (= lt!2439536 (choose!50276 (reg!16899 r!7292) r!7292 s!2326))))

(assert (=> d!2118937 (validRegex!8306 (reg!16899 r!7292))))

(assert (=> d!2118937 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2165 (reg!16899 r!7292) r!7292 s!2326) lt!2439536)))

(declare-fun m!7500002 () Bool)

(assert (=> bs!1793099 m!7500002))

(declare-fun m!7500004 () Bool)

(assert (=> bs!1793099 m!7500004))

(declare-fun m!7500006 () Bool)

(assert (=> bs!1793099 m!7500006))

(declare-fun m!7500008 () Bool)

(assert (=> bs!1793099 m!7500008))

(assert (=> b!6743538 d!2118937))

(declare-fun bs!1793101 () Bool)

(declare-fun d!2118949 () Bool)

(assert (= bs!1793101 (and d!2118949 b!6743862)))

(declare-fun lambda!378977 () Int)

(assert (=> bs!1793101 (not (= lambda!378977 lambda!378960))))

(declare-fun bs!1793102 () Bool)

(assert (= bs!1793102 (and d!2118949 d!2118937)))

(assert (=> bs!1793102 (= (= (Star!16570 (reg!16899 r!7292)) r!7292) (= lambda!378977 lambda!378968))))

(declare-fun bs!1793103 () Bool)

(assert (= bs!1793103 (and d!2118949 b!6743538)))

(assert (=> bs!1793103 (not (= lambda!378977 lambda!378914))))

(declare-fun bs!1793104 () Bool)

(assert (= bs!1793104 (and d!2118949 b!6743853)))

(assert (=> bs!1793104 (not (= lambda!378977 lambda!378961))))

(assert (=> bs!1793103 (= (= (Star!16570 (reg!16899 r!7292)) r!7292) (= lambda!378977 lambda!378912))))

(assert (=> bs!1793103 (not (= lambda!378977 lambda!378913))))

(assert (=> bs!1793102 (not (= lambda!378977 lambda!378970))))

(assert (=> d!2118949 true))

(assert (=> d!2118949 true))

(declare-fun lambda!378978 () Int)

(assert (=> bs!1793101 (= (= (Star!16570 (reg!16899 r!7292)) r!7292) (= lambda!378978 lambda!378960))))

(assert (=> bs!1793102 (not (= lambda!378978 lambda!378968))))

(assert (=> bs!1793103 (not (= lambda!378978 lambda!378914))))

(assert (=> bs!1793104 (not (= lambda!378978 lambda!378961))))

(assert (=> bs!1793103 (not (= lambda!378978 lambda!378912))))

(declare-fun bs!1793105 () Bool)

(assert (= bs!1793105 d!2118949))

(assert (=> bs!1793105 (not (= lambda!378978 lambda!378977))))

(assert (=> bs!1793103 (= (= (Star!16570 (reg!16899 r!7292)) r!7292) (= lambda!378978 lambda!378913))))

(assert (=> bs!1793102 (not (= lambda!378978 lambda!378970))))

(assert (=> d!2118949 true))

(assert (=> d!2118949 true))

(assert (=> d!2118949 (= (Exists!3638 lambda!378977) (Exists!3638 lambda!378978))))

(declare-fun lt!2439541 () Unit!159831)

(declare-fun choose!50278 (Regex!16570 List!66009) Unit!159831)

(assert (=> d!2118949 (= lt!2439541 (choose!50278 (reg!16899 r!7292) s!2326))))

(assert (=> d!2118949 (validRegex!8306 (reg!16899 r!7292))))

(assert (=> d!2118949 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!729 (reg!16899 r!7292) s!2326) lt!2439541)))

(declare-fun m!7500010 () Bool)

(assert (=> bs!1793105 m!7500010))

(declare-fun m!7500012 () Bool)

(assert (=> bs!1793105 m!7500012))

(declare-fun m!7500014 () Bool)

(assert (=> bs!1793105 m!7500014))

(assert (=> bs!1793105 m!7500008))

(assert (=> b!6743538 d!2118949))

(declare-fun d!2118951 () Bool)

(assert (=> d!2118951 (= (isEmpty!38231 s!2326) (is-Nil!65885 s!2326))))

(assert (=> b!6743538 d!2118951))

(declare-fun d!2118953 () Bool)

(declare-fun e!4073393 () Bool)

(assert (=> d!2118953 e!4073393))

(declare-fun res!2758478 () Bool)

(assert (=> d!2118953 (=> res!2758478 e!4073393)))

(declare-fun e!4073391 () Bool)

(assert (=> d!2118953 (= res!2758478 e!4073391)))

(declare-fun res!2758477 () Bool)

(assert (=> d!2118953 (=> (not res!2758477) (not e!4073391))))

(declare-fun lt!2439551 () Option!16457)

(assert (=> d!2118953 (= res!2758477 (isDefined!13160 lt!2439551))))

(declare-fun e!4073392 () Option!16457)

(assert (=> d!2118953 (= lt!2439551 e!4073392)))

(declare-fun c!1251203 () Bool)

(declare-fun e!4073394 () Bool)

(assert (=> d!2118953 (= c!1251203 e!4073394)))

(declare-fun res!2758481 () Bool)

(assert (=> d!2118953 (=> (not res!2758481) (not e!4073394))))

(assert (=> d!2118953 (= res!2758481 (matchR!8753 (reg!16899 r!7292) Nil!65885))))

(assert (=> d!2118953 (validRegex!8306 (reg!16899 r!7292))))

(assert (=> d!2118953 (= (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 Nil!65885 s!2326 s!2326) lt!2439551)))

(declare-fun b!6744048 () Bool)

(assert (=> b!6744048 (= e!4073394 (matchR!8753 r!7292 s!2326))))

(declare-fun b!6744049 () Bool)

(declare-fun lt!2439553 () Unit!159831)

(declare-fun lt!2439552 () Unit!159831)

(assert (=> b!6744049 (= lt!2439553 lt!2439552)))

(declare-fun ++!14726 (List!66009 List!66009) List!66009)

(assert (=> b!6744049 (= (++!14726 (++!14726 Nil!65885 (Cons!65885 (h!72333 s!2326) Nil!65885)) (t!379710 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2699 (List!66009 C!33410 List!66009 List!66009) Unit!159831)

(assert (=> b!6744049 (= lt!2439552 (lemmaMoveElementToOtherListKeepsConcatEq!2699 Nil!65885 (h!72333 s!2326) (t!379710 s!2326) s!2326))))

(declare-fun e!4073390 () Option!16457)

(assert (=> b!6744049 (= e!4073390 (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 (++!14726 Nil!65885 (Cons!65885 (h!72333 s!2326) Nil!65885)) (t!379710 s!2326) s!2326))))

(declare-fun b!6744050 () Bool)

(declare-fun res!2758479 () Bool)

(assert (=> b!6744050 (=> (not res!2758479) (not e!4073391))))

(declare-fun get!22927 (Option!16457) tuple2!67090)

(assert (=> b!6744050 (= res!2758479 (matchR!8753 (reg!16899 r!7292) (_1!36848 (get!22927 lt!2439551))))))

(declare-fun b!6744051 () Bool)

(assert (=> b!6744051 (= e!4073393 (not (isDefined!13160 lt!2439551)))))

(declare-fun b!6744052 () Bool)

(assert (=> b!6744052 (= e!4073392 (Some!16456 (tuple2!67091 Nil!65885 s!2326)))))

(declare-fun b!6744053 () Bool)

(assert (=> b!6744053 (= e!4073392 e!4073390)))

(declare-fun c!1251204 () Bool)

(assert (=> b!6744053 (= c!1251204 (is-Nil!65885 s!2326))))

(declare-fun b!6744054 () Bool)

(assert (=> b!6744054 (= e!4073391 (= (++!14726 (_1!36848 (get!22927 lt!2439551)) (_2!36848 (get!22927 lt!2439551))) s!2326))))

(declare-fun b!6744055 () Bool)

(declare-fun res!2758480 () Bool)

(assert (=> b!6744055 (=> (not res!2758480) (not e!4073391))))

(assert (=> b!6744055 (= res!2758480 (matchR!8753 r!7292 (_2!36848 (get!22927 lt!2439551))))))

(declare-fun b!6744056 () Bool)

(assert (=> b!6744056 (= e!4073390 None!16456)))

(assert (= (and d!2118953 res!2758481) b!6744048))

(assert (= (and d!2118953 c!1251203) b!6744052))

(assert (= (and d!2118953 (not c!1251203)) b!6744053))

(assert (= (and b!6744053 c!1251204) b!6744056))

(assert (= (and b!6744053 (not c!1251204)) b!6744049))

(assert (= (and d!2118953 res!2758477) b!6744050))

(assert (= (and b!6744050 res!2758479) b!6744055))

(assert (= (and b!6744055 res!2758480) b!6744054))

(assert (= (and d!2118953 (not res!2758478)) b!6744051))

(declare-fun m!7500038 () Bool)

(assert (=> b!6744050 m!7500038))

(declare-fun m!7500040 () Bool)

(assert (=> b!6744050 m!7500040))

(assert (=> b!6744054 m!7500038))

(declare-fun m!7500042 () Bool)

(assert (=> b!6744054 m!7500042))

(assert (=> b!6744055 m!7500038))

(declare-fun m!7500044 () Bool)

(assert (=> b!6744055 m!7500044))

(declare-fun m!7500046 () Bool)

(assert (=> b!6744049 m!7500046))

(assert (=> b!6744049 m!7500046))

(declare-fun m!7500048 () Bool)

(assert (=> b!6744049 m!7500048))

(declare-fun m!7500050 () Bool)

(assert (=> b!6744049 m!7500050))

(assert (=> b!6744049 m!7500046))

(declare-fun m!7500052 () Bool)

(assert (=> b!6744049 m!7500052))

(declare-fun m!7500054 () Bool)

(assert (=> d!2118953 m!7500054))

(declare-fun m!7500056 () Bool)

(assert (=> d!2118953 m!7500056))

(assert (=> d!2118953 m!7500008))

(assert (=> b!6744051 m!7500054))

(assert (=> b!6744048 m!7499656))

(assert (=> b!6743538 d!2118953))

(declare-fun bs!1793109 () Bool)

(declare-fun d!2118959 () Bool)

(assert (= bs!1793109 (and d!2118959 b!6743862)))

(declare-fun lambda!378987 () Int)

(assert (=> bs!1793109 (not (= lambda!378987 lambda!378960))))

(declare-fun bs!1793110 () Bool)

(assert (= bs!1793110 (and d!2118959 d!2118937)))

(assert (=> bs!1793110 (= lambda!378987 lambda!378968)))

(declare-fun bs!1793111 () Bool)

(assert (= bs!1793111 (and d!2118959 b!6743538)))

(assert (=> bs!1793111 (not (= lambda!378987 lambda!378914))))

(declare-fun bs!1793112 () Bool)

(assert (= bs!1793112 (and d!2118959 b!6743853)))

(assert (=> bs!1793112 (not (= lambda!378987 lambda!378961))))

(assert (=> bs!1793111 (= lambda!378987 lambda!378912)))

(declare-fun bs!1793113 () Bool)

(assert (= bs!1793113 (and d!2118959 d!2118949)))

(assert (=> bs!1793113 (not (= lambda!378987 lambda!378978))))

(assert (=> bs!1793113 (= (= r!7292 (Star!16570 (reg!16899 r!7292))) (= lambda!378987 lambda!378977))))

(assert (=> bs!1793111 (not (= lambda!378987 lambda!378913))))

(assert (=> bs!1793110 (not (= lambda!378987 lambda!378970))))

(assert (=> d!2118959 true))

(assert (=> d!2118959 true))

(assert (=> d!2118959 true))

(assert (=> d!2118959 (= (isDefined!13160 (findConcatSeparation!2871 (reg!16899 r!7292) r!7292 Nil!65885 s!2326 s!2326)) (Exists!3638 lambda!378987))))

(declare-fun lt!2439557 () Unit!159831)

(declare-fun choose!50279 (Regex!16570 Regex!16570 List!66009) Unit!159831)

(assert (=> d!2118959 (= lt!2439557 (choose!50279 (reg!16899 r!7292) r!7292 s!2326))))

(assert (=> d!2118959 (validRegex!8306 (reg!16899 r!7292))))

(assert (=> d!2118959 (= (lemmaFindConcatSeparationEquivalentToExists!2635 (reg!16899 r!7292) r!7292 s!2326) lt!2439557)))

(declare-fun bs!1793115 () Bool)

(assert (= bs!1793115 d!2118959))

(declare-fun m!7500058 () Bool)

(assert (=> bs!1793115 m!7500058))

(assert (=> bs!1793115 m!7499616))

(assert (=> bs!1793115 m!7499616))

(assert (=> bs!1793115 m!7499618))

(assert (=> bs!1793115 m!7500008))

(declare-fun m!7500060 () Bool)

(assert (=> bs!1793115 m!7500060))

(assert (=> b!6743538 d!2118959))

(declare-fun bm!609812 () Bool)

(declare-fun call!609822 () (Set Context!11908))

(declare-fun call!609817 () (Set Context!11908))

(assert (=> bm!609812 (= call!609822 call!609817)))

(declare-fun bm!609813 () Bool)

(declare-fun call!609820 () (Set Context!11908))

(assert (=> bm!609813 (= call!609817 call!609820)))

(declare-fun b!6744069 () Bool)

(declare-fun e!4073402 () (Set Context!11908))

(declare-fun e!4073405 () (Set Context!11908))

(assert (=> b!6744069 (= e!4073402 e!4073405)))

(declare-fun c!1251209 () Bool)

(assert (=> b!6744069 (= c!1251209 (is-Concat!25415 r!7292))))

(declare-fun c!1251206 () Bool)

(declare-fun call!609818 () List!66010)

(declare-fun bm!609814 () Bool)

(assert (=> bm!609814 (= call!609818 ($colon$colon!2387 (exprs!6454 (Context!11909 Nil!65886)) (ite (or c!1251206 c!1251209) (regTwo!33652 r!7292) r!7292)))))

(declare-fun call!609819 () List!66010)

(declare-fun c!1251207 () Bool)

(declare-fun bm!609815 () Bool)

(assert (=> bm!609815 (= call!609820 (derivationStepZipperDown!1798 (ite c!1251207 (regOne!33653 r!7292) (ite c!1251206 (regTwo!33652 r!7292) (ite c!1251209 (regOne!33652 r!7292) (reg!16899 r!7292)))) (ite (or c!1251207 c!1251206) (Context!11909 Nil!65886) (Context!11909 call!609819)) (h!72333 s!2326)))))

(declare-fun b!6744070 () Bool)

(declare-fun e!4073401 () (Set Context!11908))

(declare-fun e!4073403 () (Set Context!11908))

(assert (=> b!6744070 (= e!4073401 e!4073403)))

(assert (=> b!6744070 (= c!1251207 (is-Union!16570 r!7292))))

(declare-fun b!6744071 () Bool)

(declare-fun c!1251208 () Bool)

(assert (=> b!6744071 (= c!1251208 (is-Star!16570 r!7292))))

(declare-fun e!4073406 () (Set Context!11908))

(assert (=> b!6744071 (= e!4073405 e!4073406)))

(declare-fun call!609821 () (Set Context!11908))

(declare-fun bm!609816 () Bool)

(assert (=> bm!609816 (= call!609821 (derivationStepZipperDown!1798 (ite c!1251207 (regTwo!33653 r!7292) (regOne!33652 r!7292)) (ite c!1251207 (Context!11909 Nil!65886) (Context!11909 call!609818)) (h!72333 s!2326)))))

(declare-fun d!2118961 () Bool)

(declare-fun c!1251205 () Bool)

(assert (=> d!2118961 (= c!1251205 (and (is-ElementMatch!16570 r!7292) (= (c!1251065 r!7292) (h!72333 s!2326))))))

(assert (=> d!2118961 (= (derivationStepZipperDown!1798 r!7292 (Context!11909 Nil!65886) (h!72333 s!2326)) e!4073401)))

(declare-fun b!6744072 () Bool)

(assert (=> b!6744072 (= e!4073406 call!609822)))

(declare-fun b!6744073 () Bool)

(assert (=> b!6744073 (= e!4073403 (set.union call!609820 call!609821))))

(declare-fun bm!609817 () Bool)

(assert (=> bm!609817 (= call!609819 call!609818)))

(declare-fun b!6744074 () Bool)

(declare-fun e!4073404 () Bool)

(assert (=> b!6744074 (= e!4073404 (nullable!6557 (regOne!33652 r!7292)))))

(declare-fun b!6744075 () Bool)

(assert (=> b!6744075 (= c!1251206 e!4073404)))

(declare-fun res!2758494 () Bool)

(assert (=> b!6744075 (=> (not res!2758494) (not e!4073404))))

(assert (=> b!6744075 (= res!2758494 (is-Concat!25415 r!7292))))

(assert (=> b!6744075 (= e!4073403 e!4073402)))

(declare-fun b!6744076 () Bool)

(assert (=> b!6744076 (= e!4073405 call!609822)))

(declare-fun b!6744077 () Bool)

(assert (=> b!6744077 (= e!4073402 (set.union call!609821 call!609817))))

(declare-fun b!6744078 () Bool)

(assert (=> b!6744078 (= e!4073401 (set.insert (Context!11909 Nil!65886) (as set.empty (Set Context!11908))))))

(declare-fun b!6744079 () Bool)

(assert (=> b!6744079 (= e!4073406 (as set.empty (Set Context!11908)))))

(assert (= (and d!2118961 c!1251205) b!6744078))

(assert (= (and d!2118961 (not c!1251205)) b!6744070))

(assert (= (and b!6744070 c!1251207) b!6744073))

(assert (= (and b!6744070 (not c!1251207)) b!6744075))

(assert (= (and b!6744075 res!2758494) b!6744074))

(assert (= (and b!6744075 c!1251206) b!6744077))

(assert (= (and b!6744075 (not c!1251206)) b!6744069))

(assert (= (and b!6744069 c!1251209) b!6744076))

(assert (= (and b!6744069 (not c!1251209)) b!6744071))

(assert (= (and b!6744071 c!1251208) b!6744072))

(assert (= (and b!6744071 (not c!1251208)) b!6744079))

(assert (= (or b!6744076 b!6744072) bm!609817))

(assert (= (or b!6744076 b!6744072) bm!609812))

(assert (= (or b!6744077 bm!609817) bm!609814))

(assert (= (or b!6744077 bm!609812) bm!609813))

(assert (= (or b!6744073 b!6744077) bm!609816))

(assert (= (or b!6744073 bm!609813) bm!609815))

(declare-fun m!7500070 () Bool)

(assert (=> b!6744078 m!7500070))

(declare-fun m!7500072 () Bool)

(assert (=> bm!609814 m!7500072))

(declare-fun m!7500074 () Bool)

(assert (=> b!6744074 m!7500074))

(declare-fun m!7500076 () Bool)

(assert (=> bm!609815 m!7500076))

(declare-fun m!7500078 () Bool)

(assert (=> bm!609816 m!7500078))

(assert (=> b!6743529 d!2118961))

(declare-fun d!2118965 () Bool)

(declare-fun c!1251210 () Bool)

(declare-fun e!4073407 () Bool)

(assert (=> d!2118965 (= c!1251210 e!4073407)))

(declare-fun res!2758495 () Bool)

(assert (=> d!2118965 (=> (not res!2758495) (not e!4073407))))

(assert (=> d!2118965 (= res!2758495 (is-Cons!65886 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886)))))))

(declare-fun e!4073409 () (Set Context!11908))

(assert (=> d!2118965 (= (derivationStepZipperUp!1724 (Context!11909 (Cons!65886 r!7292 Nil!65886)) (h!72333 s!2326)) e!4073409)))

(declare-fun bm!609818 () Bool)

(declare-fun call!609823 () (Set Context!11908))

(assert (=> bm!609818 (= call!609823 (derivationStepZipperDown!1798 (h!72334 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886)))) (Context!11909 (t!379711 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886))))) (h!72333 s!2326)))))

(declare-fun b!6744080 () Bool)

(assert (=> b!6744080 (= e!4073407 (nullable!6557 (h!72334 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886))))))))

(declare-fun b!6744081 () Bool)

(declare-fun e!4073408 () (Set Context!11908))

(assert (=> b!6744081 (= e!4073408 (as set.empty (Set Context!11908)))))

(declare-fun b!6744082 () Bool)

(assert (=> b!6744082 (= e!4073409 e!4073408)))

(declare-fun c!1251211 () Bool)

(assert (=> b!6744082 (= c!1251211 (is-Cons!65886 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886)))))))

(declare-fun b!6744083 () Bool)

(assert (=> b!6744083 (= e!4073409 (set.union call!609823 (derivationStepZipperUp!1724 (Context!11909 (t!379711 (exprs!6454 (Context!11909 (Cons!65886 r!7292 Nil!65886))))) (h!72333 s!2326))))))

(declare-fun b!6744084 () Bool)

(assert (=> b!6744084 (= e!4073408 call!609823)))

(assert (= (and d!2118965 res!2758495) b!6744080))

(assert (= (and d!2118965 c!1251210) b!6744083))

(assert (= (and d!2118965 (not c!1251210)) b!6744082))

(assert (= (and b!6744082 c!1251211) b!6744084))

(assert (= (and b!6744082 (not c!1251211)) b!6744081))

(assert (= (or b!6744083 b!6744084) bm!609818))

(declare-fun m!7500080 () Bool)

(assert (=> bm!609818 m!7500080))

(declare-fun m!7500082 () Bool)

(assert (=> b!6744080 m!7500082))

(declare-fun m!7500084 () Bool)

(assert (=> b!6744083 m!7500084))

(assert (=> b!6743529 d!2118965))

(declare-fun bs!1793116 () Bool)

(declare-fun d!2118967 () Bool)

(assert (= bs!1793116 (and d!2118967 b!6743533)))

(declare-fun lambda!378989 () Int)

(assert (=> bs!1793116 (= lambda!378989 lambda!378915)))

(declare-fun bs!1793117 () Bool)

(assert (= bs!1793117 (and d!2118967 d!2118849)))

(assert (=> bs!1793117 (= lambda!378989 lambda!378940)))

(declare-fun bs!1793118 () Bool)

(assert (= bs!1793118 (and d!2118967 d!2118909)))

(assert (=> bs!1793118 (= lambda!378989 lambda!378962)))

(assert (=> d!2118967 true))

(assert (=> d!2118967 (= (derivationStepZipper!2514 z!1189 (h!72333 s!2326)) (flatMap!2051 z!1189 lambda!378989))))

(declare-fun bs!1793119 () Bool)

(assert (= bs!1793119 d!2118967))

(declare-fun m!7500086 () Bool)

(assert (=> bs!1793119 m!7500086))

(assert (=> b!6743529 d!2118967))

(declare-fun d!2118969 () Bool)

(declare-fun lt!2439558 () Regex!16570)

(assert (=> d!2118969 (validRegex!8306 lt!2439558)))

(assert (=> d!2118969 (= lt!2439558 (generalisedUnion!2414 (unfocusZipperList!1991 (Cons!65887 lt!2439420 Nil!65887))))))

(assert (=> d!2118969 (= (unfocusZipper!2312 (Cons!65887 lt!2439420 Nil!65887)) lt!2439558)))

(declare-fun bs!1793120 () Bool)

(assert (= bs!1793120 d!2118969))

(declare-fun m!7500088 () Bool)

(assert (=> bs!1793120 m!7500088))

(declare-fun m!7500090 () Bool)

(assert (=> bs!1793120 m!7500090))

(assert (=> bs!1793120 m!7500090))

(declare-fun m!7500092 () Bool)

(assert (=> bs!1793120 m!7500092))

(assert (=> b!6743527 d!2118969))

(declare-fun d!2118971 () Bool)

(declare-fun lt!2439559 () Regex!16570)

(assert (=> d!2118971 (validRegex!8306 lt!2439559)))

(assert (=> d!2118971 (= lt!2439559 (generalisedUnion!2414 (unfocusZipperList!1991 (Cons!65887 lt!2439409 Nil!65887))))))

(assert (=> d!2118971 (= (unfocusZipper!2312 (Cons!65887 lt!2439409 Nil!65887)) lt!2439559)))

(declare-fun bs!1793121 () Bool)

(assert (= bs!1793121 d!2118971))

(declare-fun m!7500094 () Bool)

(assert (=> bs!1793121 m!7500094))

(declare-fun m!7500096 () Bool)

(assert (=> bs!1793121 m!7500096))

(assert (=> bs!1793121 m!7500096))

(declare-fun m!7500098 () Bool)

(assert (=> bs!1793121 m!7500098))

(assert (=> b!6743537 d!2118971))

(declare-fun bs!1793122 () Bool)

(declare-fun d!2118973 () Bool)

(assert (= bs!1793122 (and d!2118973 d!2118853)))

(declare-fun lambda!378993 () Int)

(assert (=> bs!1793122 (= lambda!378993 lambda!378943)))

(declare-fun bs!1793123 () Bool)

(assert (= bs!1793123 (and d!2118973 d!2118855)))

(assert (=> bs!1793123 (= lambda!378993 lambda!378946)))

(declare-fun bs!1793124 () Bool)

(assert (= bs!1793124 (and d!2118973 d!2118885)))

(assert (=> bs!1793124 (= lambda!378993 lambda!378952)))

(declare-fun bs!1793125 () Bool)

(assert (= bs!1793125 (and d!2118973 d!2118921)))

(assert (=> bs!1793125 (= lambda!378993 lambda!378963)))

(declare-fun b!6744105 () Bool)

(declare-fun e!4073426 () Regex!16570)

(declare-fun e!4073427 () Regex!16570)

(assert (=> b!6744105 (= e!4073426 e!4073427)))

(declare-fun c!1251222 () Bool)

(assert (=> b!6744105 (= c!1251222 (is-Cons!65886 (exprs!6454 (h!72335 zl!343))))))

(declare-fun b!6744106 () Bool)

(assert (=> b!6744106 (= e!4073426 (h!72334 (exprs!6454 (h!72335 zl!343))))))

(declare-fun b!6744107 () Bool)

(declare-fun e!4073424 () Bool)

(declare-fun e!4073425 () Bool)

(assert (=> b!6744107 (= e!4073424 e!4073425)))

(declare-fun c!1251221 () Bool)

(assert (=> b!6744107 (= c!1251221 (isEmpty!38235 (tail!12653 (exprs!6454 (h!72335 zl!343)))))))

(declare-fun b!6744108 () Bool)

(declare-fun e!4073423 () Bool)

(assert (=> b!6744108 (= e!4073423 e!4073424)))

(declare-fun c!1251220 () Bool)

(assert (=> b!6744108 (= c!1251220 (isEmpty!38235 (exprs!6454 (h!72335 zl!343))))))

(declare-fun b!6744109 () Bool)

(declare-fun e!4073422 () Bool)

(assert (=> b!6744109 (= e!4073422 (isEmpty!38235 (t!379711 (exprs!6454 (h!72335 zl!343)))))))

(declare-fun b!6744110 () Bool)

(declare-fun lt!2439564 () Regex!16570)

(assert (=> b!6744110 (= e!4073425 (= lt!2439564 (head!13568 (exprs!6454 (h!72335 zl!343)))))))

(declare-fun b!6744111 () Bool)

(declare-fun isEmptyExpr!1936 (Regex!16570) Bool)

(assert (=> b!6744111 (= e!4073424 (isEmptyExpr!1936 lt!2439564))))

(declare-fun b!6744112 () Bool)

(declare-fun isConcat!1459 (Regex!16570) Bool)

(assert (=> b!6744112 (= e!4073425 (isConcat!1459 lt!2439564))))

(declare-fun b!6744113 () Bool)

(assert (=> b!6744113 (= e!4073427 (Concat!25415 (h!72334 (exprs!6454 (h!72335 zl!343))) (generalisedConcat!2167 (t!379711 (exprs!6454 (h!72335 zl!343))))))))

(assert (=> d!2118973 e!4073423))

(declare-fun res!2758501 () Bool)

(assert (=> d!2118973 (=> (not res!2758501) (not e!4073423))))

(assert (=> d!2118973 (= res!2758501 (validRegex!8306 lt!2439564))))

(assert (=> d!2118973 (= lt!2439564 e!4073426)))

(declare-fun c!1251223 () Bool)

(assert (=> d!2118973 (= c!1251223 e!4073422)))

(declare-fun res!2758500 () Bool)

(assert (=> d!2118973 (=> (not res!2758500) (not e!4073422))))

(assert (=> d!2118973 (= res!2758500 (is-Cons!65886 (exprs!6454 (h!72335 zl!343))))))

(assert (=> d!2118973 (forall!15770 (exprs!6454 (h!72335 zl!343)) lambda!378993)))

(assert (=> d!2118973 (= (generalisedConcat!2167 (exprs!6454 (h!72335 zl!343))) lt!2439564)))

(declare-fun b!6744114 () Bool)

(assert (=> b!6744114 (= e!4073427 EmptyExpr!16570)))

(assert (= (and d!2118973 res!2758500) b!6744109))

(assert (= (and d!2118973 c!1251223) b!6744106))

(assert (= (and d!2118973 (not c!1251223)) b!6744105))

(assert (= (and b!6744105 c!1251222) b!6744113))

(assert (= (and b!6744105 (not c!1251222)) b!6744114))

(assert (= (and d!2118973 res!2758501) b!6744108))

(assert (= (and b!6744108 c!1251220) b!6744111))

(assert (= (and b!6744108 (not c!1251220)) b!6744107))

(assert (= (and b!6744107 c!1251221) b!6744110))

(assert (= (and b!6744107 (not c!1251221)) b!6744112))

(declare-fun m!7500100 () Bool)

(assert (=> b!6744112 m!7500100))

(declare-fun m!7500102 () Bool)

(assert (=> b!6744109 m!7500102))

(declare-fun m!7500104 () Bool)

(assert (=> b!6744113 m!7500104))

(declare-fun m!7500106 () Bool)

(assert (=> b!6744107 m!7500106))

(assert (=> b!6744107 m!7500106))

(declare-fun m!7500108 () Bool)

(assert (=> b!6744107 m!7500108))

(declare-fun m!7500110 () Bool)

(assert (=> b!6744111 m!7500110))

(declare-fun m!7500112 () Bool)

(assert (=> d!2118973 m!7500112))

(declare-fun m!7500114 () Bool)

(assert (=> d!2118973 m!7500114))

(declare-fun m!7500116 () Bool)

(assert (=> b!6744110 m!7500116))

(declare-fun m!7500118 () Bool)

(assert (=> b!6744108 m!7500118))

(assert (=> b!6743547 d!2118973))

(declare-fun b!6744123 () Bool)

(declare-fun e!4073432 () Bool)

(declare-fun tp!1848678 () Bool)

(declare-fun tp!1848679 () Bool)

(assert (=> b!6744123 (= e!4073432 (and tp!1848678 tp!1848679))))

(assert (=> b!6743520 (= tp!1848634 e!4073432)))

(assert (= (and b!6743520 (is-Cons!65886 (exprs!6454 setElem!46060))) b!6744123))

(declare-fun b!6744136 () Bool)

(declare-fun e!4073435 () Bool)

(declare-fun tp!1848691 () Bool)

(assert (=> b!6744136 (= e!4073435 tp!1848691)))

(declare-fun b!6744134 () Bool)

(assert (=> b!6744134 (= e!4073435 tp_is_empty!42393)))

(assert (=> b!6743545 (= tp!1848635 e!4073435)))

(declare-fun b!6744135 () Bool)

(declare-fun tp!1848693 () Bool)

(declare-fun tp!1848692 () Bool)

(assert (=> b!6744135 (= e!4073435 (and tp!1848693 tp!1848692))))

(declare-fun b!6744137 () Bool)

(declare-fun tp!1848694 () Bool)

(declare-fun tp!1848690 () Bool)

(assert (=> b!6744137 (= e!4073435 (and tp!1848694 tp!1848690))))

(assert (= (and b!6743545 (is-ElementMatch!16570 (regOne!33652 r!7292))) b!6744134))

(assert (= (and b!6743545 (is-Concat!25415 (regOne!33652 r!7292))) b!6744135))

(assert (= (and b!6743545 (is-Star!16570 (regOne!33652 r!7292))) b!6744136))

(assert (= (and b!6743545 (is-Union!16570 (regOne!33652 r!7292))) b!6744137))

(declare-fun b!6744140 () Bool)

(declare-fun e!4073436 () Bool)

(declare-fun tp!1848696 () Bool)

(assert (=> b!6744140 (= e!4073436 tp!1848696)))

(declare-fun b!6744138 () Bool)

(assert (=> b!6744138 (= e!4073436 tp_is_empty!42393)))

(assert (=> b!6743545 (= tp!1848643 e!4073436)))

(declare-fun b!6744139 () Bool)

(declare-fun tp!1848698 () Bool)

(declare-fun tp!1848697 () Bool)

(assert (=> b!6744139 (= e!4073436 (and tp!1848698 tp!1848697))))

(declare-fun b!6744141 () Bool)

(declare-fun tp!1848699 () Bool)

(declare-fun tp!1848695 () Bool)

(assert (=> b!6744141 (= e!4073436 (and tp!1848699 tp!1848695))))

(assert (= (and b!6743545 (is-ElementMatch!16570 (regTwo!33652 r!7292))) b!6744138))

(assert (= (and b!6743545 (is-Concat!25415 (regTwo!33652 r!7292))) b!6744139))

(assert (= (and b!6743545 (is-Star!16570 (regTwo!33652 r!7292))) b!6744140))

(assert (= (and b!6743545 (is-Union!16570 (regTwo!33652 r!7292))) b!6744141))

(declare-fun b!6744142 () Bool)

(declare-fun e!4073437 () Bool)

(declare-fun tp!1848700 () Bool)

(declare-fun tp!1848701 () Bool)

(assert (=> b!6744142 (= e!4073437 (and tp!1848700 tp!1848701))))

(assert (=> b!6743521 (= tp!1848639 e!4073437)))

(assert (= (and b!6743521 (is-Cons!65886 (exprs!6454 (h!72335 zl!343)))) b!6744142))

(declare-fun b!6744147 () Bool)

(declare-fun e!4073440 () Bool)

(declare-fun tp!1848704 () Bool)

(assert (=> b!6744147 (= e!4073440 (and tp_is_empty!42393 tp!1848704))))

(assert (=> b!6743536 (= tp!1848641 e!4073440)))

(assert (= (and b!6743536 (is-Cons!65885 (t!379710 s!2326))) b!6744147))

(declare-fun b!6744161 () Bool)

(declare-fun e!4073448 () Bool)

(declare-fun tp!1848709 () Bool)

(assert (=> b!6744161 (= e!4073448 tp!1848709)))

(declare-fun tp!1848710 () Bool)

(declare-fun e!4073447 () Bool)

(declare-fun b!6744160 () Bool)

(assert (=> b!6744160 (= e!4073447 (and (inv!84673 (h!72335 (t!379712 zl!343))) e!4073448 tp!1848710))))

(assert (=> b!6743528 (= tp!1848636 e!4073447)))

(assert (= b!6744160 b!6744161))

(assert (= (and b!6743528 (is-Cons!65887 (t!379712 zl!343))) b!6744160))

(declare-fun m!7500120 () Bool)

(assert (=> b!6744160 m!7500120))

(declare-fun b!6744164 () Bool)

(declare-fun e!4073449 () Bool)

(declare-fun tp!1848712 () Bool)

(assert (=> b!6744164 (= e!4073449 tp!1848712)))

(declare-fun b!6744162 () Bool)

(assert (=> b!6744162 (= e!4073449 tp_is_empty!42393)))

(assert (=> b!6743543 (= tp!1848640 e!4073449)))

(declare-fun b!6744163 () Bool)

(declare-fun tp!1848714 () Bool)

(declare-fun tp!1848713 () Bool)

(assert (=> b!6744163 (= e!4073449 (and tp!1848714 tp!1848713))))

(declare-fun b!6744165 () Bool)

(declare-fun tp!1848715 () Bool)

(declare-fun tp!1848711 () Bool)

(assert (=> b!6744165 (= e!4073449 (and tp!1848715 tp!1848711))))

(assert (= (and b!6743543 (is-ElementMatch!16570 (reg!16899 r!7292))) b!6744162))

(assert (= (and b!6743543 (is-Concat!25415 (reg!16899 r!7292))) b!6744163))

(assert (= (and b!6743543 (is-Star!16570 (reg!16899 r!7292))) b!6744164))

(assert (= (and b!6743543 (is-Union!16570 (reg!16899 r!7292))) b!6744165))

(declare-fun b!6744168 () Bool)

(declare-fun e!4073450 () Bool)

(declare-fun tp!1848717 () Bool)

(assert (=> b!6744168 (= e!4073450 tp!1848717)))

(declare-fun b!6744166 () Bool)

(assert (=> b!6744166 (= e!4073450 tp_is_empty!42393)))

(assert (=> b!6743532 (= tp!1848642 e!4073450)))

(declare-fun b!6744167 () Bool)

(declare-fun tp!1848719 () Bool)

(declare-fun tp!1848718 () Bool)

(assert (=> b!6744167 (= e!4073450 (and tp!1848719 tp!1848718))))

(declare-fun b!6744169 () Bool)

(declare-fun tp!1848720 () Bool)

(declare-fun tp!1848716 () Bool)

(assert (=> b!6744169 (= e!4073450 (and tp!1848720 tp!1848716))))

(assert (= (and b!6743532 (is-ElementMatch!16570 (regOne!33653 r!7292))) b!6744166))

(assert (= (and b!6743532 (is-Concat!25415 (regOne!33653 r!7292))) b!6744167))

(assert (= (and b!6743532 (is-Star!16570 (regOne!33653 r!7292))) b!6744168))

(assert (= (and b!6743532 (is-Union!16570 (regOne!33653 r!7292))) b!6744169))

(declare-fun b!6744172 () Bool)

(declare-fun e!4073451 () Bool)

(declare-fun tp!1848722 () Bool)

(assert (=> b!6744172 (= e!4073451 tp!1848722)))

(declare-fun b!6744170 () Bool)

(assert (=> b!6744170 (= e!4073451 tp_is_empty!42393)))

(assert (=> b!6743532 (= tp!1848637 e!4073451)))

(declare-fun b!6744171 () Bool)

(declare-fun tp!1848724 () Bool)

(declare-fun tp!1848723 () Bool)

(assert (=> b!6744171 (= e!4073451 (and tp!1848724 tp!1848723))))

(declare-fun b!6744173 () Bool)

(declare-fun tp!1848725 () Bool)

(declare-fun tp!1848721 () Bool)

(assert (=> b!6744173 (= e!4073451 (and tp!1848725 tp!1848721))))

(assert (= (and b!6743532 (is-ElementMatch!16570 (regTwo!33653 r!7292))) b!6744170))

(assert (= (and b!6743532 (is-Concat!25415 (regTwo!33653 r!7292))) b!6744171))

(assert (= (and b!6743532 (is-Star!16570 (regTwo!33653 r!7292))) b!6744172))

(assert (= (and b!6743532 (is-Union!16570 (regTwo!33653 r!7292))) b!6744173))

(declare-fun condSetEmpty!46066 () Bool)

(assert (=> setNonEmpty!46060 (= condSetEmpty!46066 (= setRest!46060 (as set.empty (Set Context!11908))))))

(declare-fun setRes!46066 () Bool)

(assert (=> setNonEmpty!46060 (= tp!1848638 setRes!46066)))

(declare-fun setIsEmpty!46066 () Bool)

(assert (=> setIsEmpty!46066 setRes!46066))

(declare-fun setNonEmpty!46066 () Bool)

(declare-fun setElem!46066 () Context!11908)

(declare-fun tp!1848730 () Bool)

(declare-fun e!4073454 () Bool)

(assert (=> setNonEmpty!46066 (= setRes!46066 (and tp!1848730 (inv!84673 setElem!46066) e!4073454))))

(declare-fun setRest!46066 () (Set Context!11908))

(assert (=> setNonEmpty!46066 (= setRest!46060 (set.union (set.insert setElem!46066 (as set.empty (Set Context!11908))) setRest!46066))))

(declare-fun b!6744178 () Bool)

(declare-fun tp!1848731 () Bool)

(assert (=> b!6744178 (= e!4073454 tp!1848731)))

(assert (= (and setNonEmpty!46060 condSetEmpty!46066) setIsEmpty!46066))

(assert (= (and setNonEmpty!46060 (not condSetEmpty!46066)) setNonEmpty!46066))

(assert (= setNonEmpty!46066 b!6744178))

(declare-fun m!7500122 () Bool)

(assert (=> setNonEmpty!46066 m!7500122))

(declare-fun b_lambda!254025 () Bool)

(assert (= b_lambda!254021 (or b!6743533 b_lambda!254025)))

(declare-fun bs!1793128 () Bool)

(declare-fun d!2118975 () Bool)

(assert (= bs!1793128 (and d!2118975 b!6743533)))

(assert (=> bs!1793128 (= (dynLambda!26291 lambda!378915 lt!2439421) (derivationStepZipperUp!1724 lt!2439421 (h!72333 s!2326)))))

(assert (=> bs!1793128 m!7499578))

(assert (=> d!2118919 d!2118975))

(declare-fun b_lambda!254027 () Bool)

(assert (= b_lambda!254011 (or b!6743533 b_lambda!254027)))

(declare-fun bs!1793129 () Bool)

(declare-fun d!2118977 () Bool)

(assert (= bs!1793129 (and d!2118977 b!6743533)))

(assert (=> bs!1793129 (= (dynLambda!26291 lambda!378915 (h!72335 zl!343)) (derivationStepZipperUp!1724 (h!72335 zl!343) (h!72333 s!2326)))))

(assert (=> bs!1793129 m!7499666))

(assert (=> d!2118867 d!2118977))

(declare-fun b_lambda!254029 () Bool)

(assert (= b_lambda!254019 (or b!6743533 b_lambda!254029)))

(declare-fun bs!1793130 () Bool)

(declare-fun d!2118979 () Bool)

(assert (= bs!1793130 (and d!2118979 b!6743533)))

(assert (=> bs!1793130 (= (dynLambda!26291 lambda!378915 lt!2439420) (derivationStepZipperUp!1724 lt!2439420 (h!72333 s!2326)))))

(assert (=> bs!1793130 m!7499590))

(assert (=> d!2118913 d!2118979))

(declare-fun b_lambda!254031 () Bool)

(assert (= b_lambda!254013 (or b!6743533 b_lambda!254031)))

(declare-fun bs!1793131 () Bool)

(declare-fun d!2118981 () Bool)

(assert (= bs!1793131 (and d!2118981 b!6743533)))

(assert (=> bs!1793131 (= (dynLambda!26291 lambda!378915 lt!2439409) (derivationStepZipperUp!1724 lt!2439409 (h!72333 s!2326)))))

(assert (=> bs!1793131 m!7499644))

(assert (=> d!2118883 d!2118981))

(push 1)

(assert (not b!6743678))

(assert (not d!2118921))

(assert (not b!6744163))

(assert (not b!6743758))

(assert (not b!6744107))

(assert (not d!2118843))

(assert (not b!6744164))

(assert (not bm!609799))

(assert (not d!2118967))

(assert (not d!2118867))

(assert (not d!2118973))

(assert (not b!6744051))

(assert (not d!2118935))

(assert (not bm!609743))

(assert (not b!6743704))

(assert (not b_lambda!254025))

(assert (not b!6744139))

(assert (not bm!609776))

(assert (not d!2118919))

(assert (not d!2118851))

(assert (not b!6743677))

(assert (not b!6744113))

(assert (not b!6743819))

(assert (not b!6744147))

(assert (not d!2118847))

(assert (not d!2118879))

(assert (not d!2118885))

(assert (not bm!609792))

(assert (not b!6744161))

(assert (not bs!1793128))

(assert (not b!6743925))

(assert (not d!2118861))

(assert (not b!6743672))

(assert (not b!6744172))

(assert (not b!6743742))

(assert (not d!2118887))

(assert (not b!6744178))

(assert (not b!6743942))

(assert (not b!6744160))

(assert (not b!6744108))

(assert (not bs!1793130))

(assert (not b!6743761))

(assert (not b!6744136))

(assert (not b!6743921))

(assert (not setNonEmpty!46066))

(assert (not b!6744083))

(assert (not d!2118845))

(assert (not d!2118849))

(assert (not b!6744054))

(assert (not d!2118949))

(assert (not b!6743707))

(assert (not d!2118899))

(assert (not b!6743705))

(assert (not b!6744123))

(assert (not b!6743914))

(assert (not b!6743816))

(assert (not b!6744169))

(assert (not bm!609804))

(assert (not b!6744137))

(assert (not b!6744173))

(assert (not b!6744171))

(assert (not d!2118937))

(assert (not b!6743703))

(assert (not b!6743947))

(assert (not b!6744109))

(assert (not b!6743917))

(assert (not b!6744142))

(assert (not b!6744080))

(assert (not d!2118931))

(assert (not b_lambda!254031))

(assert (not d!2118969))

(assert (not d!2118959))

(assert (not b!6743916))

(assert (not d!2118933))

(assert (not b!6743939))

(assert (not b!6743717))

(assert (not d!2118913))

(assert (not d!2118971))

(assert (not d!2118907))

(assert (not b!6743944))

(assert tp_is_empty!42393)

(assert (not b!6744135))

(assert (not b!6743920))

(assert (not bm!609745))

(assert (not bm!609816))

(assert (not d!2118897))

(assert (not bm!609748))

(assert (not b!6744165))

(assert (not d!2118927))

(assert (not bm!609768))

(assert (not bm!609815))

(assert (not bm!609802))

(assert (not d!2118853))

(assert (not b!6743959))

(assert (not d!2118883))

(assert (not bm!609767))

(assert (not b!6743861))

(assert (not b!6744050))

(assert (not b_lambda!254027))

(assert (not d!2118911))

(assert (not b!6744111))

(assert (not b!6743708))

(assert (not b!6743856))

(assert (not bm!609800))

(assert (not d!2118909))

(assert (not b!6743712))

(assert (not bm!609777))

(assert (not b!6743680))

(assert (not bm!609818))

(assert (not d!2118953))

(assert (not b!6744049))

(assert (not b!6744048))

(assert (not b!6743710))

(assert (not d!2118855))

(assert (not b!6744110))

(assert (not b!6744141))

(assert (not bm!609814))

(assert (not bm!609771))

(assert (not b!6744168))

(assert (not b!6744074))

(assert (not b_lambda!254029))

(assert (not b!6744112))

(assert (not bs!1793131))

(assert (not bs!1793129))

(assert (not b!6743810))

(assert (not b!6744140))

(assert (not b!6743679))

(assert (not bm!609769))

(assert (not b!6744167))

(assert (not b!6744055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

