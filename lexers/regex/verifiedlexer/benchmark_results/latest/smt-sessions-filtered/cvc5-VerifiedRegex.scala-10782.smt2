; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!552096 () Bool)

(assert start!552096)

(declare-fun b!5219795 () Bool)

(assert (=> b!5219795 true))

(assert (=> b!5219795 true))

(declare-fun lambda!261933 () Int)

(declare-fun lambda!261932 () Int)

(assert (=> b!5219795 (not (= lambda!261933 lambda!261932))))

(assert (=> b!5219795 true))

(assert (=> b!5219795 true))

(declare-fun b!5219789 () Bool)

(assert (=> b!5219789 true))

(declare-fun res!2216484 () Bool)

(declare-fun e!3249018 () Bool)

(assert (=> start!552096 (=> (not res!2216484) (not e!3249018))))

(declare-datatypes ((C!29890 0))(
  ( (C!29891 (val!24647 Int)) )
))
(declare-datatypes ((Regex!14810 0))(
  ( (ElementMatch!14810 (c!900678 C!29890)) (Concat!23655 (regOne!30132 Regex!14810) (regTwo!30132 Regex!14810)) (EmptyExpr!14810) (Star!14810 (reg!15139 Regex!14810)) (EmptyLang!14810) (Union!14810 (regOne!30133 Regex!14810) (regTwo!30133 Regex!14810)) )
))
(declare-fun r!7292 () Regex!14810)

(declare-fun validRegex!6546 (Regex!14810) Bool)

(assert (=> start!552096 (= res!2216484 (validRegex!6546 r!7292))))

(assert (=> start!552096 e!3249018))

(declare-fun e!3249032 () Bool)

(assert (=> start!552096 e!3249032))

(declare-fun condSetEmpty!33196 () Bool)

(declare-datatypes ((List!60729 0))(
  ( (Nil!60605) (Cons!60605 (h!67053 Regex!14810) (t!373899 List!60729)) )
))
(declare-datatypes ((Context!8388 0))(
  ( (Context!8389 (exprs!4694 List!60729)) )
))
(declare-fun z!1189 () (Set Context!8388))

(assert (=> start!552096 (= condSetEmpty!33196 (= z!1189 (as set.empty (Set Context!8388))))))

(declare-fun setRes!33196 () Bool)

(assert (=> start!552096 setRes!33196))

(declare-fun e!3249025 () Bool)

(assert (=> start!552096 e!3249025))

(declare-fun e!3249023 () Bool)

(assert (=> start!552096 e!3249023))

(declare-fun b!5219772 () Bool)

(declare-fun e!3249026 () Bool)

(declare-fun e!3249027 () Bool)

(assert (=> b!5219772 (= e!3249026 e!3249027)))

(declare-fun res!2216495 () Bool)

(assert (=> b!5219772 (=> res!2216495 e!3249027)))

(declare-fun nullable!4979 (Regex!14810) Bool)

(assert (=> b!5219772 (= res!2216495 (not (nullable!4979 (regTwo!30133 (regOne!30132 r!7292)))))))

(declare-fun lt!2143405 () Context!8388)

(declare-datatypes ((List!60730 0))(
  ( (Nil!60606) (Cons!60606 (h!67054 C!29890) (t!373900 List!60730)) )
))
(declare-fun s!2326 () List!60730)

(declare-fun lambda!261934 () Int)

(declare-fun lt!2143420 () (Set Context!8388))

(declare-fun flatMap!537 ((Set Context!8388) Int) (Set Context!8388))

(declare-fun derivationStepZipperUp!182 (Context!8388 C!29890) (Set Context!8388))

(assert (=> b!5219772 (= (flatMap!537 lt!2143420 lambda!261934) (derivationStepZipperUp!182 lt!2143405 (h!67054 s!2326)))))

(declare-datatypes ((Unit!152510 0))(
  ( (Unit!152511) )
))
(declare-fun lt!2143403 () Unit!152510)

(declare-fun lemmaFlatMapOnSingletonSet!69 ((Set Context!8388) Context!8388 Int) Unit!152510)

(assert (=> b!5219772 (= lt!2143403 (lemmaFlatMapOnSingletonSet!69 lt!2143420 lt!2143405 lambda!261934))))

(declare-fun lt!2143404 () (Set Context!8388))

(assert (=> b!5219772 (= lt!2143404 (derivationStepZipperUp!182 lt!2143405 (h!67054 s!2326)))))

(declare-fun lt!2143400 () Unit!152510)

(declare-fun e!3249030 () Unit!152510)

(assert (=> b!5219772 (= lt!2143400 e!3249030)))

(declare-fun c!900677 () Bool)

(assert (=> b!5219772 (= c!900677 (nullable!4979 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun lt!2143409 () (Set Context!8388))

(declare-fun lt!2143417 () Context!8388)

(assert (=> b!5219772 (= (flatMap!537 lt!2143409 lambda!261934) (derivationStepZipperUp!182 lt!2143417 (h!67054 s!2326)))))

(declare-fun lt!2143425 () Unit!152510)

(assert (=> b!5219772 (= lt!2143425 (lemmaFlatMapOnSingletonSet!69 lt!2143409 lt!2143417 lambda!261934))))

(declare-fun lt!2143406 () (Set Context!8388))

(assert (=> b!5219772 (= lt!2143406 (derivationStepZipperUp!182 lt!2143417 (h!67054 s!2326)))))

(assert (=> b!5219772 (= lt!2143420 (set.insert lt!2143405 (as set.empty (Set Context!8388))))))

(declare-datatypes ((List!60731 0))(
  ( (Nil!60607) (Cons!60607 (h!67055 Context!8388) (t!373901 List!60731)) )
))
(declare-fun zl!343 () List!60731)

(assert (=> b!5219772 (= lt!2143405 (Context!8389 (Cons!60605 (regTwo!30133 (regOne!30132 r!7292)) (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(assert (=> b!5219772 (= lt!2143409 (set.insert lt!2143417 (as set.empty (Set Context!8388))))))

(assert (=> b!5219772 (= lt!2143417 (Context!8389 (Cons!60605 (regOne!30133 (regOne!30132 r!7292)) (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5219773 () Bool)

(declare-fun e!3249019 () Bool)

(declare-fun tp!1463429 () Bool)

(assert (=> b!5219773 (= e!3249019 tp!1463429)))

(declare-fun setIsEmpty!33196 () Bool)

(assert (=> setIsEmpty!33196 setRes!33196))

(declare-fun b!5219774 () Bool)

(declare-fun res!2216483 () Bool)

(declare-fun e!3249035 () Bool)

(assert (=> b!5219774 (=> res!2216483 e!3249035)))

(declare-fun generalisedConcat!479 (List!60729) Regex!14810)

(assert (=> b!5219774 (= res!2216483 (not (= r!7292 (generalisedConcat!479 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5219775 () Bool)

(declare-fun e!3249024 () Bool)

(declare-fun lt!2143401 () (Set Context!8388))

(declare-fun matchZipper!1054 ((Set Context!8388) List!60730) Bool)

(assert (=> b!5219775 (= e!3249024 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(declare-fun b!5219776 () Bool)

(declare-fun e!3249021 () Unit!152510)

(declare-fun Unit!152512 () Unit!152510)

(assert (=> b!5219776 (= e!3249021 Unit!152512)))

(declare-fun b!5219777 () Bool)

(declare-fun tp!1463431 () Bool)

(declare-fun tp!1463428 () Bool)

(assert (=> b!5219777 (= e!3249032 (and tp!1463431 tp!1463428))))

(declare-fun b!5219778 () Bool)

(declare-fun res!2216488 () Bool)

(assert (=> b!5219778 (=> res!2216488 e!3249035)))

(declare-fun generalisedUnion!739 (List!60729) Regex!14810)

(declare-fun unfocusZipperList!252 (List!60731) List!60729)

(assert (=> b!5219778 (= res!2216488 (not (= r!7292 (generalisedUnion!739 (unfocusZipperList!252 zl!343)))))))

(declare-fun b!5219779 () Bool)

(declare-fun res!2216486 () Bool)

(assert (=> b!5219779 (=> res!2216486 e!3249035)))

(declare-fun isEmpty!32523 (List!60731) Bool)

(assert (=> b!5219779 (= res!2216486 (not (isEmpty!32523 (t!373901 zl!343))))))

(declare-fun b!5219780 () Bool)

(declare-fun tp!1463432 () Bool)

(assert (=> b!5219780 (= e!3249032 tp!1463432)))

(declare-fun b!5219781 () Bool)

(declare-fun res!2216480 () Bool)

(assert (=> b!5219781 (=> res!2216480 e!3249035)))

(assert (=> b!5219781 (= res!2216480 (or (is-EmptyExpr!14810 r!7292) (is-EmptyLang!14810 r!7292) (is-ElementMatch!14810 r!7292) (is-Union!14810 r!7292) (not (is-Concat!23655 r!7292))))))

(declare-fun b!5219782 () Bool)

(declare-fun e!3249031 () Bool)

(assert (=> b!5219782 (= e!3249031 e!3249026)))

(declare-fun res!2216491 () Bool)

(assert (=> b!5219782 (=> res!2216491 e!3249026)))

(declare-fun e!3249033 () Bool)

(assert (=> b!5219782 (= res!2216491 e!3249033)))

(declare-fun res!2216478 () Bool)

(assert (=> b!5219782 (=> (not res!2216478) (not e!3249033))))

(declare-fun lt!2143412 () Bool)

(declare-fun lt!2143418 () (Set Context!8388))

(assert (=> b!5219782 (= res!2216478 (not (= (matchZipper!1054 lt!2143418 (t!373900 s!2326)) lt!2143412)))))

(declare-fun lt!2143411 () (Set Context!8388))

(declare-fun e!3249028 () Bool)

(assert (=> b!5219782 (= (matchZipper!1054 lt!2143411 (t!373900 s!2326)) e!3249028)))

(declare-fun res!2216489 () Bool)

(assert (=> b!5219782 (=> res!2216489 e!3249028)))

(assert (=> b!5219782 (= res!2216489 lt!2143412)))

(declare-fun lt!2143415 () (Set Context!8388))

(assert (=> b!5219782 (= lt!2143412 (matchZipper!1054 lt!2143415 (t!373900 s!2326)))))

(declare-fun lt!2143402 () Unit!152510)

(declare-fun lt!2143413 () (Set Context!8388))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!47 ((Set Context!8388) (Set Context!8388) List!60730) Unit!152510)

(assert (=> b!5219782 (= lt!2143402 (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143415 lt!2143413 (t!373900 s!2326)))))

(declare-fun e!3249029 () Bool)

(declare-fun setElem!33196 () Context!8388)

(declare-fun setNonEmpty!33196 () Bool)

(declare-fun tp!1463426 () Bool)

(declare-fun inv!80273 (Context!8388) Bool)

(assert (=> setNonEmpty!33196 (= setRes!33196 (and tp!1463426 (inv!80273 setElem!33196) e!3249029))))

(declare-fun setRest!33196 () (Set Context!8388))

(assert (=> setNonEmpty!33196 (= z!1189 (set.union (set.insert setElem!33196 (as set.empty (Set Context!8388))) setRest!33196))))

(declare-fun b!5219783 () Bool)

(assert (=> b!5219783 (= e!3249033 (not (matchZipper!1054 lt!2143413 (t!373900 s!2326))))))

(declare-fun b!5219784 () Bool)

(declare-fun Unit!152513 () Unit!152510)

(assert (=> b!5219784 (= e!3249021 Unit!152513)))

(declare-fun lt!2143423 () Unit!152510)

(assert (=> b!5219784 (= lt!2143423 (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143418 lt!2143401 (t!373900 s!2326)))))

(declare-fun res!2216479 () Bool)

(assert (=> b!5219784 (= res!2216479 (matchZipper!1054 lt!2143418 (t!373900 s!2326)))))

(declare-fun e!3249034 () Bool)

(assert (=> b!5219784 (=> res!2216479 e!3249034)))

(assert (=> b!5219784 (= (matchZipper!1054 (set.union lt!2143418 lt!2143401) (t!373900 s!2326)) e!3249034)))

(declare-fun b!5219785 () Bool)

(declare-fun res!2216490 () Bool)

(assert (=> b!5219785 (=> res!2216490 e!3249035)))

(assert (=> b!5219785 (= res!2216490 (not (is-Cons!60605 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5219786 () Bool)

(declare-fun res!2216485 () Bool)

(declare-fun e!3249020 () Bool)

(assert (=> b!5219786 (=> res!2216485 e!3249020)))

(declare-fun isEmpty!32524 (List!60729) Bool)

(assert (=> b!5219786 (= res!2216485 (isEmpty!32524 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5219787 () Bool)

(assert (=> b!5219787 (= e!3249034 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(declare-fun b!5219788 () Bool)

(declare-fun Unit!152514 () Unit!152510)

(assert (=> b!5219788 (= e!3249030 Unit!152514)))

(declare-fun lt!2143422 () Unit!152510)

(assert (=> b!5219788 (= lt!2143422 (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143415 lt!2143401 (t!373900 s!2326)))))

(declare-fun res!2216493 () Bool)

(assert (=> b!5219788 (= res!2216493 lt!2143412)))

(assert (=> b!5219788 (=> res!2216493 e!3249024)))

(assert (=> b!5219788 (= (matchZipper!1054 (set.union lt!2143415 lt!2143401) (t!373900 s!2326)) e!3249024)))

(declare-fun e!3249022 () Bool)

(assert (=> b!5219789 (= e!3249020 e!3249022)))

(declare-fun res!2216494 () Bool)

(assert (=> b!5219789 (=> res!2216494 e!3249022)))

(assert (=> b!5219789 (= res!2216494 (or (and (is-ElementMatch!14810 (regOne!30132 r!7292)) (= (c!900678 (regOne!30132 r!7292)) (h!67054 s!2326))) (not (is-Union!14810 (regOne!30132 r!7292)))))))

(declare-fun lt!2143424 () Unit!152510)

(assert (=> b!5219789 (= lt!2143424 e!3249021)))

(declare-fun c!900676 () Bool)

(assert (=> b!5219789 (= c!900676 (nullable!4979 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5219789 (= (flatMap!537 z!1189 lambda!261934) (derivationStepZipperUp!182 (h!67055 zl!343) (h!67054 s!2326)))))

(declare-fun lt!2143421 () Unit!152510)

(assert (=> b!5219789 (= lt!2143421 (lemmaFlatMapOnSingletonSet!69 z!1189 (h!67055 zl!343) lambda!261934))))

(declare-fun lt!2143408 () Context!8388)

(assert (=> b!5219789 (= lt!2143401 (derivationStepZipperUp!182 lt!2143408 (h!67054 s!2326)))))

(declare-fun derivationStepZipperDown!258 (Regex!14810 Context!8388 C!29890) (Set Context!8388))

(assert (=> b!5219789 (= lt!2143418 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (h!67055 zl!343))) lt!2143408 (h!67054 s!2326)))))

(assert (=> b!5219789 (= lt!2143408 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun lt!2143419 () (Set Context!8388))

(assert (=> b!5219789 (= lt!2143419 (derivationStepZipperUp!182 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))) (h!67054 s!2326)))))

(declare-fun b!5219790 () Bool)

(declare-fun res!2216492 () Bool)

(assert (=> b!5219790 (=> (not res!2216492) (not e!3249018))))

(declare-fun unfocusZipper!552 (List!60731) Regex!14810)

(assert (=> b!5219790 (= res!2216492 (= r!7292 (unfocusZipper!552 zl!343)))))

(declare-fun tp!1463425 () Bool)

(declare-fun b!5219791 () Bool)

(assert (=> b!5219791 (= e!3249025 (and (inv!80273 (h!67055 zl!343)) e!3249019 tp!1463425))))

(declare-fun b!5219792 () Bool)

(assert (=> b!5219792 (= e!3249022 e!3249031)))

(declare-fun res!2216496 () Bool)

(assert (=> b!5219792 (=> res!2216496 e!3249031)))

(assert (=> b!5219792 (= res!2216496 (not (= lt!2143418 lt!2143411)))))

(assert (=> b!5219792 (= lt!2143411 (set.union lt!2143415 lt!2143413))))

(assert (=> b!5219792 (= lt!2143413 (derivationStepZipperDown!258 (regTwo!30133 (regOne!30132 r!7292)) lt!2143408 (h!67054 s!2326)))))

(assert (=> b!5219792 (= lt!2143415 (derivationStepZipperDown!258 (regOne!30133 (regOne!30132 r!7292)) lt!2143408 (h!67054 s!2326)))))

(declare-fun b!5219793 () Bool)

(declare-fun tp!1463427 () Bool)

(assert (=> b!5219793 (= e!3249029 tp!1463427)))

(declare-fun b!5219794 () Bool)

(declare-fun tp_is_empty!38873 () Bool)

(assert (=> b!5219794 (= e!3249032 tp_is_empty!38873)))

(assert (=> b!5219795 (= e!3249035 e!3249020)))

(declare-fun res!2216487 () Bool)

(assert (=> b!5219795 (=> res!2216487 e!3249020)))

(declare-fun lt!2143407 () Bool)

(declare-fun lt!2143414 () Bool)

(assert (=> b!5219795 (= res!2216487 (or (not (= lt!2143414 lt!2143407)) (is-Nil!60606 s!2326)))))

(declare-fun Exists!1991 (Int) Bool)

(assert (=> b!5219795 (= (Exists!1991 lambda!261932) (Exists!1991 lambda!261933))))

(declare-fun lt!2143410 () Unit!152510)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!645 (Regex!14810 Regex!14810 List!60730) Unit!152510)

(assert (=> b!5219795 (= lt!2143410 (lemmaExistCutMatchRandMatchRSpecEquivalent!645 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326))))

(assert (=> b!5219795 (= lt!2143407 (Exists!1991 lambda!261932))))

(declare-datatypes ((tuple2!64018 0))(
  ( (tuple2!64019 (_1!35312 List!60730) (_2!35312 List!60730)) )
))
(declare-datatypes ((Option!14921 0))(
  ( (None!14920) (Some!14920 (v!50949 tuple2!64018)) )
))
(declare-fun isDefined!11624 (Option!14921) Bool)

(declare-fun findConcatSeparation!1335 (Regex!14810 Regex!14810 List!60730 List!60730 List!60730) Option!14921)

(assert (=> b!5219795 (= lt!2143407 (isDefined!11624 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326)))))

(declare-fun lt!2143416 () Unit!152510)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1099 (Regex!14810 Regex!14810 List!60730) Unit!152510)

(assert (=> b!5219795 (= lt!2143416 (lemmaFindConcatSeparationEquivalentToExists!1099 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326))))

(declare-fun b!5219796 () Bool)

(declare-fun tp!1463433 () Bool)

(assert (=> b!5219796 (= e!3249023 (and tp_is_empty!38873 tp!1463433))))

(declare-fun b!5219797 () Bool)

(declare-fun res!2216481 () Bool)

(assert (=> b!5219797 (=> (not res!2216481) (not e!3249018))))

(declare-fun toList!8594 ((Set Context!8388)) List!60731)

(assert (=> b!5219797 (= res!2216481 (= (toList!8594 z!1189) zl!343))))

(declare-fun b!5219798 () Bool)

(declare-fun Unit!152515 () Unit!152510)

(assert (=> b!5219798 (= e!3249030 Unit!152515)))

(declare-fun b!5219799 () Bool)

(assert (=> b!5219799 (= e!3249018 (not e!3249035))))

(declare-fun res!2216482 () Bool)

(assert (=> b!5219799 (=> res!2216482 e!3249035)))

(assert (=> b!5219799 (= res!2216482 (not (is-Cons!60607 zl!343)))))

(declare-fun matchRSpec!1913 (Regex!14810 List!60730) Bool)

(assert (=> b!5219799 (= lt!2143414 (matchRSpec!1913 r!7292 s!2326))))

(declare-fun matchR!6995 (Regex!14810 List!60730) Bool)

(assert (=> b!5219799 (= lt!2143414 (matchR!6995 r!7292 s!2326))))

(declare-fun lt!2143426 () Unit!152510)

(declare-fun mainMatchTheorem!1913 (Regex!14810 List!60730) Unit!152510)

(assert (=> b!5219799 (= lt!2143426 (mainMatchTheorem!1913 r!7292 s!2326))))

(declare-fun b!5219800 () Bool)

(declare-fun tp!1463430 () Bool)

(declare-fun tp!1463424 () Bool)

(assert (=> b!5219800 (= e!3249032 (and tp!1463430 tp!1463424))))

(declare-fun b!5219801 () Bool)

(assert (=> b!5219801 (= e!3249027 (validRegex!6546 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun b!5219802 () Bool)

(assert (=> b!5219802 (= e!3249028 (matchZipper!1054 lt!2143413 (t!373900 s!2326)))))

(assert (= (and start!552096 res!2216484) b!5219797))

(assert (= (and b!5219797 res!2216481) b!5219790))

(assert (= (and b!5219790 res!2216492) b!5219799))

(assert (= (and b!5219799 (not res!2216482)) b!5219779))

(assert (= (and b!5219779 (not res!2216486)) b!5219774))

(assert (= (and b!5219774 (not res!2216483)) b!5219785))

(assert (= (and b!5219785 (not res!2216490)) b!5219778))

(assert (= (and b!5219778 (not res!2216488)) b!5219781))

(assert (= (and b!5219781 (not res!2216480)) b!5219795))

(assert (= (and b!5219795 (not res!2216487)) b!5219786))

(assert (= (and b!5219786 (not res!2216485)) b!5219789))

(assert (= (and b!5219789 c!900676) b!5219784))

(assert (= (and b!5219789 (not c!900676)) b!5219776))

(assert (= (and b!5219784 (not res!2216479)) b!5219787))

(assert (= (and b!5219789 (not res!2216494)) b!5219792))

(assert (= (and b!5219792 (not res!2216496)) b!5219782))

(assert (= (and b!5219782 (not res!2216489)) b!5219802))

(assert (= (and b!5219782 res!2216478) b!5219783))

(assert (= (and b!5219782 (not res!2216491)) b!5219772))

(assert (= (and b!5219772 c!900677) b!5219788))

(assert (= (and b!5219772 (not c!900677)) b!5219798))

(assert (= (and b!5219788 (not res!2216493)) b!5219775))

(assert (= (and b!5219772 (not res!2216495)) b!5219801))

(assert (= (and start!552096 (is-ElementMatch!14810 r!7292)) b!5219794))

(assert (= (and start!552096 (is-Concat!23655 r!7292)) b!5219777))

(assert (= (and start!552096 (is-Star!14810 r!7292)) b!5219780))

(assert (= (and start!552096 (is-Union!14810 r!7292)) b!5219800))

(assert (= (and start!552096 condSetEmpty!33196) setIsEmpty!33196))

(assert (= (and start!552096 (not condSetEmpty!33196)) setNonEmpty!33196))

(assert (= setNonEmpty!33196 b!5219793))

(assert (= b!5219791 b!5219773))

(assert (= (and start!552096 (is-Cons!60607 zl!343)) b!5219791))

(assert (= (and start!552096 (is-Cons!60606 s!2326)) b!5219796))

(declare-fun m!6267574 () Bool)

(assert (=> b!5219797 m!6267574))

(declare-fun m!6267576 () Bool)

(assert (=> b!5219792 m!6267576))

(declare-fun m!6267578 () Bool)

(assert (=> b!5219792 m!6267578))

(declare-fun m!6267580 () Bool)

(assert (=> b!5219786 m!6267580))

(declare-fun m!6267582 () Bool)

(assert (=> b!5219789 m!6267582))

(declare-fun m!6267584 () Bool)

(assert (=> b!5219789 m!6267584))

(declare-fun m!6267586 () Bool)

(assert (=> b!5219789 m!6267586))

(declare-fun m!6267588 () Bool)

(assert (=> b!5219789 m!6267588))

(declare-fun m!6267590 () Bool)

(assert (=> b!5219789 m!6267590))

(declare-fun m!6267592 () Bool)

(assert (=> b!5219789 m!6267592))

(declare-fun m!6267594 () Bool)

(assert (=> b!5219789 m!6267594))

(declare-fun m!6267596 () Bool)

(assert (=> b!5219779 m!6267596))

(declare-fun m!6267598 () Bool)

(assert (=> b!5219790 m!6267598))

(declare-fun m!6267600 () Bool)

(assert (=> b!5219799 m!6267600))

(declare-fun m!6267602 () Bool)

(assert (=> b!5219799 m!6267602))

(declare-fun m!6267604 () Bool)

(assert (=> b!5219799 m!6267604))

(declare-fun m!6267606 () Bool)

(assert (=> b!5219775 m!6267606))

(assert (=> b!5219787 m!6267606))

(declare-fun m!6267608 () Bool)

(assert (=> start!552096 m!6267608))

(declare-fun m!6267610 () Bool)

(assert (=> b!5219772 m!6267610))

(declare-fun m!6267612 () Bool)

(assert (=> b!5219772 m!6267612))

(declare-fun m!6267614 () Bool)

(assert (=> b!5219772 m!6267614))

(declare-fun m!6267616 () Bool)

(assert (=> b!5219772 m!6267616))

(declare-fun m!6267618 () Bool)

(assert (=> b!5219772 m!6267618))

(declare-fun m!6267620 () Bool)

(assert (=> b!5219772 m!6267620))

(declare-fun m!6267622 () Bool)

(assert (=> b!5219772 m!6267622))

(declare-fun m!6267624 () Bool)

(assert (=> b!5219772 m!6267624))

(declare-fun m!6267626 () Bool)

(assert (=> b!5219772 m!6267626))

(declare-fun m!6267628 () Bool)

(assert (=> b!5219772 m!6267628))

(declare-fun m!6267630 () Bool)

(assert (=> b!5219791 m!6267630))

(declare-fun m!6267632 () Bool)

(assert (=> b!5219802 m!6267632))

(declare-fun m!6267634 () Bool)

(assert (=> b!5219795 m!6267634))

(declare-fun m!6267636 () Bool)

(assert (=> b!5219795 m!6267636))

(declare-fun m!6267638 () Bool)

(assert (=> b!5219795 m!6267638))

(declare-fun m!6267640 () Bool)

(assert (=> b!5219795 m!6267640))

(declare-fun m!6267642 () Bool)

(assert (=> b!5219795 m!6267642))

(assert (=> b!5219795 m!6267634))

(assert (=> b!5219795 m!6267636))

(declare-fun m!6267644 () Bool)

(assert (=> b!5219795 m!6267644))

(declare-fun m!6267646 () Bool)

(assert (=> b!5219801 m!6267646))

(declare-fun m!6267648 () Bool)

(assert (=> b!5219788 m!6267648))

(declare-fun m!6267650 () Bool)

(assert (=> b!5219788 m!6267650))

(declare-fun m!6267652 () Bool)

(assert (=> b!5219782 m!6267652))

(declare-fun m!6267654 () Bool)

(assert (=> b!5219782 m!6267654))

(declare-fun m!6267656 () Bool)

(assert (=> b!5219782 m!6267656))

(declare-fun m!6267658 () Bool)

(assert (=> b!5219782 m!6267658))

(declare-fun m!6267660 () Bool)

(assert (=> b!5219774 m!6267660))

(assert (=> b!5219783 m!6267632))

(declare-fun m!6267662 () Bool)

(assert (=> b!5219784 m!6267662))

(assert (=> b!5219784 m!6267652))

(declare-fun m!6267664 () Bool)

(assert (=> b!5219784 m!6267664))

(declare-fun m!6267666 () Bool)

(assert (=> setNonEmpty!33196 m!6267666))

(declare-fun m!6267668 () Bool)

(assert (=> b!5219778 m!6267668))

(assert (=> b!5219778 m!6267668))

(declare-fun m!6267670 () Bool)

(assert (=> b!5219778 m!6267670))

(push 1)

(assert (not start!552096))

(assert (not b!5219777))

(assert (not b!5219783))

(assert (not b!5219788))

(assert (not b!5219786))

(assert (not b!5219791))

(assert (not b!5219779))

(assert (not b!5219775))

(assert (not b!5219793))

(assert (not b!5219792))

(assert (not b!5219789))

(assert (not b!5219795))

(assert (not b!5219802))

(assert (not b!5219799))

(assert (not b!5219778))

(assert (not b!5219773))

(assert (not b!5219784))

(assert (not b!5219796))

(assert (not b!5219800))

(assert tp_is_empty!38873)

(assert (not b!5219797))

(assert (not b!5219774))

(assert (not b!5219790))

(assert (not b!5219782))

(assert (not b!5219780))

(assert (not b!5219772))

(assert (not b!5219801))

(assert (not b!5219787))

(assert (not setNonEmpty!33196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5219940 () Bool)

(declare-fun e!3249109 () Bool)

(declare-fun e!3249113 () Bool)

(assert (=> b!5219940 (= e!3249109 e!3249113)))

(declare-fun c!900701 () Bool)

(assert (=> b!5219940 (= c!900701 (isEmpty!32524 (exprs!4694 (h!67055 zl!343))))))

(declare-fun b!5219941 () Bool)

(declare-fun e!3249111 () Bool)

(assert (=> b!5219941 (= e!3249111 (isEmpty!32524 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5219942 () Bool)

(declare-fun lt!2143510 () Regex!14810)

(declare-fun isEmptyExpr!770 (Regex!14810) Bool)

(assert (=> b!5219942 (= e!3249113 (isEmptyExpr!770 lt!2143510))))

(declare-fun b!5219943 () Bool)

(declare-fun e!3249108 () Regex!14810)

(assert (=> b!5219943 (= e!3249108 (h!67053 (exprs!4694 (h!67055 zl!343))))))

(declare-fun b!5219944 () Bool)

(declare-fun e!3249110 () Regex!14810)

(assert (=> b!5219944 (= e!3249110 EmptyExpr!14810)))

(declare-fun b!5219945 () Bool)

(declare-fun e!3249112 () Bool)

(declare-fun isConcat!293 (Regex!14810) Bool)

(assert (=> b!5219945 (= e!3249112 (isConcat!293 lt!2143510))))

(declare-fun b!5219946 () Bool)

(assert (=> b!5219946 (= e!3249108 e!3249110)))

(declare-fun c!900702 () Bool)

(assert (=> b!5219946 (= c!900702 (is-Cons!60605 (exprs!4694 (h!67055 zl!343))))))

(declare-fun b!5219947 () Bool)

(declare-fun head!11187 (List!60729) Regex!14810)

(assert (=> b!5219947 (= e!3249112 (= lt!2143510 (head!11187 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun d!1682879 () Bool)

(assert (=> d!1682879 e!3249109))

(declare-fun res!2216570 () Bool)

(assert (=> d!1682879 (=> (not res!2216570) (not e!3249109))))

(assert (=> d!1682879 (= res!2216570 (validRegex!6546 lt!2143510))))

(assert (=> d!1682879 (= lt!2143510 e!3249108)))

(declare-fun c!900703 () Bool)

(assert (=> d!1682879 (= c!900703 e!3249111)))

(declare-fun res!2216571 () Bool)

(assert (=> d!1682879 (=> (not res!2216571) (not e!3249111))))

(assert (=> d!1682879 (= res!2216571 (is-Cons!60605 (exprs!4694 (h!67055 zl!343))))))

(declare-fun lambda!261952 () Int)

(declare-fun forall!14242 (List!60729 Int) Bool)

(assert (=> d!1682879 (forall!14242 (exprs!4694 (h!67055 zl!343)) lambda!261952)))

(assert (=> d!1682879 (= (generalisedConcat!479 (exprs!4694 (h!67055 zl!343))) lt!2143510)))

(declare-fun b!5219948 () Bool)

(assert (=> b!5219948 (= e!3249113 e!3249112)))

(declare-fun c!900704 () Bool)

(declare-fun tail!10284 (List!60729) List!60729)

(assert (=> b!5219948 (= c!900704 (isEmpty!32524 (tail!10284 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5219949 () Bool)

(assert (=> b!5219949 (= e!3249110 (Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343))) (generalisedConcat!479 (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(assert (= (and d!1682879 res!2216571) b!5219941))

(assert (= (and d!1682879 c!900703) b!5219943))

(assert (= (and d!1682879 (not c!900703)) b!5219946))

(assert (= (and b!5219946 c!900702) b!5219949))

(assert (= (and b!5219946 (not c!900702)) b!5219944))

(assert (= (and d!1682879 res!2216570) b!5219940))

(assert (= (and b!5219940 c!900701) b!5219942))

(assert (= (and b!5219940 (not c!900701)) b!5219948))

(assert (= (and b!5219948 c!900704) b!5219947))

(assert (= (and b!5219948 (not c!900704)) b!5219945))

(declare-fun m!6267770 () Bool)

(assert (=> b!5219945 m!6267770))

(declare-fun m!6267772 () Bool)

(assert (=> b!5219949 m!6267772))

(declare-fun m!6267774 () Bool)

(assert (=> b!5219948 m!6267774))

(assert (=> b!5219948 m!6267774))

(declare-fun m!6267776 () Bool)

(assert (=> b!5219948 m!6267776))

(declare-fun m!6267778 () Bool)

(assert (=> b!5219942 m!6267778))

(declare-fun m!6267780 () Bool)

(assert (=> b!5219947 m!6267780))

(declare-fun m!6267782 () Bool)

(assert (=> d!1682879 m!6267782))

(declare-fun m!6267784 () Bool)

(assert (=> d!1682879 m!6267784))

(declare-fun m!6267786 () Bool)

(assert (=> b!5219940 m!6267786))

(assert (=> b!5219941 m!6267580))

(assert (=> b!5219774 d!1682879))

(declare-fun e!3249116 () Bool)

(declare-fun d!1682881 () Bool)

(assert (=> d!1682881 (= (matchZipper!1054 (set.union lt!2143418 lt!2143401) (t!373900 s!2326)) e!3249116)))

(declare-fun res!2216574 () Bool)

(assert (=> d!1682881 (=> res!2216574 e!3249116)))

(assert (=> d!1682881 (= res!2216574 (matchZipper!1054 lt!2143418 (t!373900 s!2326)))))

(declare-fun lt!2143513 () Unit!152510)

(declare-fun choose!38812 ((Set Context!8388) (Set Context!8388) List!60730) Unit!152510)

(assert (=> d!1682881 (= lt!2143513 (choose!38812 lt!2143418 lt!2143401 (t!373900 s!2326)))))

(assert (=> d!1682881 (= (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143418 lt!2143401 (t!373900 s!2326)) lt!2143513)))

(declare-fun b!5219952 () Bool)

(assert (=> b!5219952 (= e!3249116 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(assert (= (and d!1682881 (not res!2216574)) b!5219952))

(assert (=> d!1682881 m!6267664))

(assert (=> d!1682881 m!6267652))

(declare-fun m!6267788 () Bool)

(assert (=> d!1682881 m!6267788))

(assert (=> b!5219952 m!6267606))

(assert (=> b!5219784 d!1682881))

(declare-fun d!1682883 () Bool)

(declare-fun c!900707 () Bool)

(declare-fun isEmpty!32527 (List!60730) Bool)

(assert (=> d!1682883 (= c!900707 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249119 () Bool)

(assert (=> d!1682883 (= (matchZipper!1054 lt!2143418 (t!373900 s!2326)) e!3249119)))

(declare-fun b!5219957 () Bool)

(declare-fun nullableZipper!1234 ((Set Context!8388)) Bool)

(assert (=> b!5219957 (= e!3249119 (nullableZipper!1234 lt!2143418))))

(declare-fun b!5219958 () Bool)

(declare-fun derivationStepZipper!1078 ((Set Context!8388) C!29890) (Set Context!8388))

(declare-fun head!11188 (List!60730) C!29890)

(declare-fun tail!10285 (List!60730) List!60730)

(assert (=> b!5219958 (= e!3249119 (matchZipper!1054 (derivationStepZipper!1078 lt!2143418 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682883 c!900707) b!5219957))

(assert (= (and d!1682883 (not c!900707)) b!5219958))

(declare-fun m!6267790 () Bool)

(assert (=> d!1682883 m!6267790))

(declare-fun m!6267792 () Bool)

(assert (=> b!5219957 m!6267792))

(declare-fun m!6267794 () Bool)

(assert (=> b!5219958 m!6267794))

(assert (=> b!5219958 m!6267794))

(declare-fun m!6267796 () Bool)

(assert (=> b!5219958 m!6267796))

(declare-fun m!6267798 () Bool)

(assert (=> b!5219958 m!6267798))

(assert (=> b!5219958 m!6267796))

(assert (=> b!5219958 m!6267798))

(declare-fun m!6267800 () Bool)

(assert (=> b!5219958 m!6267800))

(assert (=> b!5219784 d!1682883))

(declare-fun d!1682885 () Bool)

(declare-fun c!900708 () Bool)

(assert (=> d!1682885 (= c!900708 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249120 () Bool)

(assert (=> d!1682885 (= (matchZipper!1054 (set.union lt!2143418 lt!2143401) (t!373900 s!2326)) e!3249120)))

(declare-fun b!5219959 () Bool)

(assert (=> b!5219959 (= e!3249120 (nullableZipper!1234 (set.union lt!2143418 lt!2143401)))))

(declare-fun b!5219960 () Bool)

(assert (=> b!5219960 (= e!3249120 (matchZipper!1054 (derivationStepZipper!1078 (set.union lt!2143418 lt!2143401) (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682885 c!900708) b!5219959))

(assert (= (and d!1682885 (not c!900708)) b!5219960))

(assert (=> d!1682885 m!6267790))

(declare-fun m!6267802 () Bool)

(assert (=> b!5219959 m!6267802))

(assert (=> b!5219960 m!6267794))

(assert (=> b!5219960 m!6267794))

(declare-fun m!6267804 () Bool)

(assert (=> b!5219960 m!6267804))

(assert (=> b!5219960 m!6267798))

(assert (=> b!5219960 m!6267804))

(assert (=> b!5219960 m!6267798))

(declare-fun m!6267806 () Bool)

(assert (=> b!5219960 m!6267806))

(assert (=> b!5219784 d!1682885))

(declare-fun d!1682887 () Bool)

(declare-fun c!900709 () Bool)

(assert (=> d!1682887 (= c!900709 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249121 () Bool)

(assert (=> d!1682887 (= (matchZipper!1054 lt!2143413 (t!373900 s!2326)) e!3249121)))

(declare-fun b!5219961 () Bool)

(assert (=> b!5219961 (= e!3249121 (nullableZipper!1234 lt!2143413))))

(declare-fun b!5219962 () Bool)

(assert (=> b!5219962 (= e!3249121 (matchZipper!1054 (derivationStepZipper!1078 lt!2143413 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682887 c!900709) b!5219961))

(assert (= (and d!1682887 (not c!900709)) b!5219962))

(assert (=> d!1682887 m!6267790))

(declare-fun m!6267808 () Bool)

(assert (=> b!5219961 m!6267808))

(assert (=> b!5219962 m!6267794))

(assert (=> b!5219962 m!6267794))

(declare-fun m!6267810 () Bool)

(assert (=> b!5219962 m!6267810))

(assert (=> b!5219962 m!6267798))

(assert (=> b!5219962 m!6267810))

(assert (=> b!5219962 m!6267798))

(declare-fun m!6267812 () Bool)

(assert (=> b!5219962 m!6267812))

(assert (=> b!5219783 d!1682887))

(declare-fun b!5219981 () Bool)

(declare-fun e!3249135 () Option!14921)

(assert (=> b!5219981 (= e!3249135 None!14920)))

(declare-fun b!5219982 () Bool)

(declare-fun e!3249132 () Option!14921)

(assert (=> b!5219982 (= e!3249132 (Some!14920 (tuple2!64019 Nil!60606 s!2326)))))

(declare-fun b!5219983 () Bool)

(declare-fun res!2216589 () Bool)

(declare-fun e!3249136 () Bool)

(assert (=> b!5219983 (=> (not res!2216589) (not e!3249136))))

(declare-fun lt!2143520 () Option!14921)

(declare-fun get!20825 (Option!14921) tuple2!64018)

(assert (=> b!5219983 (= res!2216589 (matchR!6995 (regOne!30132 r!7292) (_1!35312 (get!20825 lt!2143520))))))

(declare-fun b!5219984 () Bool)

(declare-fun lt!2143522 () Unit!152510)

(declare-fun lt!2143521 () Unit!152510)

(assert (=> b!5219984 (= lt!2143522 lt!2143521)))

(declare-fun ++!13214 (List!60730 List!60730) List!60730)

(assert (=> b!5219984 (= (++!13214 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1629 (List!60730 C!29890 List!60730 List!60730) Unit!152510)

(assert (=> b!5219984 (= lt!2143521 (lemmaMoveElementToOtherListKeepsConcatEq!1629 Nil!60606 (h!67054 s!2326) (t!373900 s!2326) s!2326))))

(assert (=> b!5219984 (= e!3249135 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326) s!2326))))

(declare-fun d!1682889 () Bool)

(declare-fun e!3249133 () Bool)

(assert (=> d!1682889 e!3249133))

(declare-fun res!2216587 () Bool)

(assert (=> d!1682889 (=> res!2216587 e!3249133)))

(assert (=> d!1682889 (= res!2216587 e!3249136)))

(declare-fun res!2216588 () Bool)

(assert (=> d!1682889 (=> (not res!2216588) (not e!3249136))))

(assert (=> d!1682889 (= res!2216588 (isDefined!11624 lt!2143520))))

(assert (=> d!1682889 (= lt!2143520 e!3249132)))

(declare-fun c!900714 () Bool)

(declare-fun e!3249134 () Bool)

(assert (=> d!1682889 (= c!900714 e!3249134)))

(declare-fun res!2216585 () Bool)

(assert (=> d!1682889 (=> (not res!2216585) (not e!3249134))))

(assert (=> d!1682889 (= res!2216585 (matchR!6995 (regOne!30132 r!7292) Nil!60606))))

(assert (=> d!1682889 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1682889 (= (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326) lt!2143520)))

(declare-fun b!5219985 () Bool)

(assert (=> b!5219985 (= e!3249134 (matchR!6995 (regTwo!30132 r!7292) s!2326))))

(declare-fun b!5219986 () Bool)

(assert (=> b!5219986 (= e!3249133 (not (isDefined!11624 lt!2143520)))))

(declare-fun b!5219987 () Bool)

(assert (=> b!5219987 (= e!3249136 (= (++!13214 (_1!35312 (get!20825 lt!2143520)) (_2!35312 (get!20825 lt!2143520))) s!2326))))

(declare-fun b!5219988 () Bool)

(declare-fun res!2216586 () Bool)

(assert (=> b!5219988 (=> (not res!2216586) (not e!3249136))))

(assert (=> b!5219988 (= res!2216586 (matchR!6995 (regTwo!30132 r!7292) (_2!35312 (get!20825 lt!2143520))))))

(declare-fun b!5219989 () Bool)

(assert (=> b!5219989 (= e!3249132 e!3249135)))

(declare-fun c!900715 () Bool)

(assert (=> b!5219989 (= c!900715 (is-Nil!60606 s!2326))))

(assert (= (and d!1682889 res!2216585) b!5219985))

(assert (= (and d!1682889 c!900714) b!5219982))

(assert (= (and d!1682889 (not c!900714)) b!5219989))

(assert (= (and b!5219989 c!900715) b!5219981))

(assert (= (and b!5219989 (not c!900715)) b!5219984))

(assert (= (and d!1682889 res!2216588) b!5219983))

(assert (= (and b!5219983 res!2216589) b!5219988))

(assert (= (and b!5219988 res!2216586) b!5219987))

(assert (= (and d!1682889 (not res!2216587)) b!5219986))

(declare-fun m!6267814 () Bool)

(assert (=> b!5219988 m!6267814))

(declare-fun m!6267816 () Bool)

(assert (=> b!5219988 m!6267816))

(declare-fun m!6267818 () Bool)

(assert (=> b!5219985 m!6267818))

(assert (=> b!5219983 m!6267814))

(declare-fun m!6267820 () Bool)

(assert (=> b!5219983 m!6267820))

(assert (=> b!5219987 m!6267814))

(declare-fun m!6267822 () Bool)

(assert (=> b!5219987 m!6267822))

(declare-fun m!6267824 () Bool)

(assert (=> b!5219986 m!6267824))

(assert (=> d!1682889 m!6267824))

(declare-fun m!6267826 () Bool)

(assert (=> d!1682889 m!6267826))

(declare-fun m!6267828 () Bool)

(assert (=> d!1682889 m!6267828))

(declare-fun m!6267830 () Bool)

(assert (=> b!5219984 m!6267830))

(assert (=> b!5219984 m!6267830))

(declare-fun m!6267832 () Bool)

(assert (=> b!5219984 m!6267832))

(declare-fun m!6267834 () Bool)

(assert (=> b!5219984 m!6267834))

(assert (=> b!5219984 m!6267830))

(declare-fun m!6267836 () Bool)

(assert (=> b!5219984 m!6267836))

(assert (=> b!5219795 d!1682889))

(declare-fun d!1682891 () Bool)

(declare-fun choose!38813 (Int) Bool)

(assert (=> d!1682891 (= (Exists!1991 lambda!261933) (choose!38813 lambda!261933))))

(declare-fun bs!1212250 () Bool)

(assert (= bs!1212250 d!1682891))

(declare-fun m!6267838 () Bool)

(assert (=> bs!1212250 m!6267838))

(assert (=> b!5219795 d!1682891))

(declare-fun bs!1212251 () Bool)

(declare-fun d!1682893 () Bool)

(assert (= bs!1212251 (and d!1682893 b!5219795)))

(declare-fun lambda!261957 () Int)

(assert (=> bs!1212251 (= lambda!261957 lambda!261932)))

(assert (=> bs!1212251 (not (= lambda!261957 lambda!261933))))

(assert (=> d!1682893 true))

(assert (=> d!1682893 true))

(assert (=> d!1682893 true))

(declare-fun lambda!261958 () Int)

(assert (=> bs!1212251 (not (= lambda!261958 lambda!261932))))

(assert (=> bs!1212251 (= lambda!261958 lambda!261933)))

(declare-fun bs!1212252 () Bool)

(assert (= bs!1212252 d!1682893))

(assert (=> bs!1212252 (not (= lambda!261958 lambda!261957))))

(assert (=> d!1682893 true))

(assert (=> d!1682893 true))

(assert (=> d!1682893 true))

(assert (=> d!1682893 (= (Exists!1991 lambda!261957) (Exists!1991 lambda!261958))))

(declare-fun lt!2143525 () Unit!152510)

(declare-fun choose!38814 (Regex!14810 Regex!14810 List!60730) Unit!152510)

(assert (=> d!1682893 (= lt!2143525 (choose!38814 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326))))

(assert (=> d!1682893 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1682893 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!645 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326) lt!2143525)))

(declare-fun m!6267840 () Bool)

(assert (=> bs!1212252 m!6267840))

(declare-fun m!6267842 () Bool)

(assert (=> bs!1212252 m!6267842))

(declare-fun m!6267844 () Bool)

(assert (=> bs!1212252 m!6267844))

(assert (=> bs!1212252 m!6267828))

(assert (=> b!5219795 d!1682893))

(declare-fun d!1682895 () Bool)

(declare-fun isEmpty!32528 (Option!14921) Bool)

(assert (=> d!1682895 (= (isDefined!11624 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326)) (not (isEmpty!32528 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326))))))

(declare-fun bs!1212253 () Bool)

(assert (= bs!1212253 d!1682895))

(assert (=> bs!1212253 m!6267636))

(declare-fun m!6267846 () Bool)

(assert (=> bs!1212253 m!6267846))

(assert (=> b!5219795 d!1682895))

(declare-fun bs!1212254 () Bool)

(declare-fun d!1682897 () Bool)

(assert (= bs!1212254 (and d!1682897 b!5219795)))

(declare-fun lambda!261961 () Int)

(assert (=> bs!1212254 (= lambda!261961 lambda!261932)))

(assert (=> bs!1212254 (not (= lambda!261961 lambda!261933))))

(declare-fun bs!1212255 () Bool)

(assert (= bs!1212255 (and d!1682897 d!1682893)))

(assert (=> bs!1212255 (= lambda!261961 lambda!261957)))

(assert (=> bs!1212255 (not (= lambda!261961 lambda!261958))))

(assert (=> d!1682897 true))

(assert (=> d!1682897 true))

(assert (=> d!1682897 true))

(assert (=> d!1682897 (= (isDefined!11624 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326)) (Exists!1991 lambda!261961))))

(declare-fun lt!2143528 () Unit!152510)

(declare-fun choose!38815 (Regex!14810 Regex!14810 List!60730) Unit!152510)

(assert (=> d!1682897 (= lt!2143528 (choose!38815 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326))))

(assert (=> d!1682897 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1682897 (= (lemmaFindConcatSeparationEquivalentToExists!1099 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326) lt!2143528)))

(declare-fun bs!1212256 () Bool)

(assert (= bs!1212256 d!1682897))

(assert (=> bs!1212256 m!6267636))

(assert (=> bs!1212256 m!6267638))

(declare-fun m!6267848 () Bool)

(assert (=> bs!1212256 m!6267848))

(declare-fun m!6267850 () Bool)

(assert (=> bs!1212256 m!6267850))

(assert (=> bs!1212256 m!6267636))

(assert (=> bs!1212256 m!6267828))

(assert (=> b!5219795 d!1682897))

(declare-fun d!1682899 () Bool)

(assert (=> d!1682899 (= (Exists!1991 lambda!261932) (choose!38813 lambda!261932))))

(declare-fun bs!1212257 () Bool)

(assert (= bs!1212257 d!1682899))

(declare-fun m!6267852 () Bool)

(assert (=> bs!1212257 m!6267852))

(assert (=> b!5219795 d!1682899))

(declare-fun d!1682901 () Bool)

(declare-fun c!900716 () Bool)

(assert (=> d!1682901 (= c!900716 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249143 () Bool)

(assert (=> d!1682901 (= (matchZipper!1054 lt!2143401 (t!373900 s!2326)) e!3249143)))

(declare-fun b!5220002 () Bool)

(assert (=> b!5220002 (= e!3249143 (nullableZipper!1234 lt!2143401))))

(declare-fun b!5220003 () Bool)

(assert (=> b!5220003 (= e!3249143 (matchZipper!1054 (derivationStepZipper!1078 lt!2143401 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682901 c!900716) b!5220002))

(assert (= (and d!1682901 (not c!900716)) b!5220003))

(assert (=> d!1682901 m!6267790))

(declare-fun m!6267854 () Bool)

(assert (=> b!5220002 m!6267854))

(assert (=> b!5220003 m!6267794))

(assert (=> b!5220003 m!6267794))

(declare-fun m!6267856 () Bool)

(assert (=> b!5220003 m!6267856))

(assert (=> b!5220003 m!6267798))

(assert (=> b!5220003 m!6267856))

(assert (=> b!5220003 m!6267798))

(declare-fun m!6267858 () Bool)

(assert (=> b!5220003 m!6267858))

(assert (=> b!5219775 d!1682901))

(assert (=> b!5219782 d!1682883))

(declare-fun d!1682903 () Bool)

(declare-fun c!900717 () Bool)

(assert (=> d!1682903 (= c!900717 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249144 () Bool)

(assert (=> d!1682903 (= (matchZipper!1054 lt!2143411 (t!373900 s!2326)) e!3249144)))

(declare-fun b!5220004 () Bool)

(assert (=> b!5220004 (= e!3249144 (nullableZipper!1234 lt!2143411))))

(declare-fun b!5220005 () Bool)

(assert (=> b!5220005 (= e!3249144 (matchZipper!1054 (derivationStepZipper!1078 lt!2143411 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682903 c!900717) b!5220004))

(assert (= (and d!1682903 (not c!900717)) b!5220005))

(assert (=> d!1682903 m!6267790))

(declare-fun m!6267860 () Bool)

(assert (=> b!5220004 m!6267860))

(assert (=> b!5220005 m!6267794))

(assert (=> b!5220005 m!6267794))

(declare-fun m!6267862 () Bool)

(assert (=> b!5220005 m!6267862))

(assert (=> b!5220005 m!6267798))

(assert (=> b!5220005 m!6267862))

(assert (=> b!5220005 m!6267798))

(declare-fun m!6267864 () Bool)

(assert (=> b!5220005 m!6267864))

(assert (=> b!5219782 d!1682903))

(declare-fun d!1682905 () Bool)

(declare-fun c!900718 () Bool)

(assert (=> d!1682905 (= c!900718 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249145 () Bool)

(assert (=> d!1682905 (= (matchZipper!1054 lt!2143415 (t!373900 s!2326)) e!3249145)))

(declare-fun b!5220006 () Bool)

(assert (=> b!5220006 (= e!3249145 (nullableZipper!1234 lt!2143415))))

(declare-fun b!5220007 () Bool)

(assert (=> b!5220007 (= e!3249145 (matchZipper!1054 (derivationStepZipper!1078 lt!2143415 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682905 c!900718) b!5220006))

(assert (= (and d!1682905 (not c!900718)) b!5220007))

(assert (=> d!1682905 m!6267790))

(declare-fun m!6267866 () Bool)

(assert (=> b!5220006 m!6267866))

(assert (=> b!5220007 m!6267794))

(assert (=> b!5220007 m!6267794))

(declare-fun m!6267868 () Bool)

(assert (=> b!5220007 m!6267868))

(assert (=> b!5220007 m!6267798))

(assert (=> b!5220007 m!6267868))

(assert (=> b!5220007 m!6267798))

(declare-fun m!6267870 () Bool)

(assert (=> b!5220007 m!6267870))

(assert (=> b!5219782 d!1682905))

(declare-fun d!1682907 () Bool)

(declare-fun e!3249146 () Bool)

(assert (=> d!1682907 (= (matchZipper!1054 (set.union lt!2143415 lt!2143413) (t!373900 s!2326)) e!3249146)))

(declare-fun res!2216602 () Bool)

(assert (=> d!1682907 (=> res!2216602 e!3249146)))

(assert (=> d!1682907 (= res!2216602 (matchZipper!1054 lt!2143415 (t!373900 s!2326)))))

(declare-fun lt!2143529 () Unit!152510)

(assert (=> d!1682907 (= lt!2143529 (choose!38812 lt!2143415 lt!2143413 (t!373900 s!2326)))))

(assert (=> d!1682907 (= (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143415 lt!2143413 (t!373900 s!2326)) lt!2143529)))

(declare-fun b!5220008 () Bool)

(assert (=> b!5220008 (= e!3249146 (matchZipper!1054 lt!2143413 (t!373900 s!2326)))))

(assert (= (and d!1682907 (not res!2216602)) b!5220008))

(declare-fun m!6267872 () Bool)

(assert (=> d!1682907 m!6267872))

(assert (=> d!1682907 m!6267656))

(declare-fun m!6267874 () Bool)

(assert (=> d!1682907 m!6267874))

(assert (=> b!5220008 m!6267632))

(assert (=> b!5219782 d!1682907))

(declare-fun b!5220031 () Bool)

(declare-fun e!3249159 () (Set Context!8388))

(declare-fun call!368290 () (Set Context!8388))

(assert (=> b!5220031 (= e!3249159 call!368290)))

(declare-fun bm!368280 () Bool)

(declare-fun call!368285 () (Set Context!8388))

(assert (=> bm!368280 (= call!368290 call!368285)))

(declare-fun b!5220032 () Bool)

(declare-fun e!3249164 () (Set Context!8388))

(assert (=> b!5220032 (= e!3249164 call!368290)))

(declare-fun b!5220033 () Bool)

(declare-fun e!3249160 () Bool)

(assert (=> b!5220033 (= e!3249160 (nullable!4979 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))

(declare-fun b!5220034 () Bool)

(declare-fun e!3249163 () (Set Context!8388))

(assert (=> b!5220034 (= e!3249163 (set.insert lt!2143408 (as set.empty (Set Context!8388))))))

(declare-fun bm!368281 () Bool)

(declare-fun call!368289 () List!60729)

(declare-fun call!368288 () List!60729)

(assert (=> bm!368281 (= call!368289 call!368288)))

(declare-fun b!5220035 () Bool)

(declare-fun e!3249161 () (Set Context!8388))

(declare-fun call!368287 () (Set Context!8388))

(assert (=> b!5220035 (= e!3249161 (set.union call!368287 call!368285))))

(declare-fun c!900733 () Bool)

(declare-fun bm!368282 () Bool)

(declare-fun c!900732 () Bool)

(declare-fun $colon$colon!1284 (List!60729 Regex!14810) List!60729)

(assert (=> bm!368282 (= call!368288 ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900732 c!900733) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30133 (regOne!30132 r!7292)))))))

(declare-fun b!5220036 () Bool)

(declare-fun e!3249162 () (Set Context!8388))

(declare-fun call!368286 () (Set Context!8388))

(assert (=> b!5220036 (= e!3249162 (set.union call!368287 call!368286))))

(declare-fun c!900729 () Bool)

(declare-fun bm!368283 () Bool)

(assert (=> bm!368283 (= call!368287 (derivationStepZipperDown!258 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))) (ite c!900729 lt!2143408 (Context!8389 call!368288)) (h!67054 s!2326)))))

(declare-fun b!5220037 () Bool)

(assert (=> b!5220037 (= e!3249159 (as set.empty (Set Context!8388)))))

(declare-fun b!5220038 () Bool)

(assert (=> b!5220038 (= e!3249163 e!3249162)))

(assert (=> b!5220038 (= c!900729 (is-Union!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun b!5220039 () Bool)

(declare-fun c!900731 () Bool)

(assert (=> b!5220039 (= c!900731 (is-Star!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(assert (=> b!5220039 (= e!3249164 e!3249159)))

(declare-fun b!5220040 () Bool)

(assert (=> b!5220040 (= c!900732 e!3249160)))

(declare-fun res!2216605 () Bool)

(assert (=> b!5220040 (=> (not res!2216605) (not e!3249160))))

(assert (=> b!5220040 (= res!2216605 (is-Concat!23655 (regTwo!30133 (regOne!30132 r!7292))))))

(assert (=> b!5220040 (= e!3249162 e!3249161)))

(declare-fun d!1682909 () Bool)

(declare-fun c!900730 () Bool)

(assert (=> d!1682909 (= c!900730 (and (is-ElementMatch!14810 (regTwo!30133 (regOne!30132 r!7292))) (= (c!900678 (regTwo!30133 (regOne!30132 r!7292))) (h!67054 s!2326))))))

(assert (=> d!1682909 (= (derivationStepZipperDown!258 (regTwo!30133 (regOne!30132 r!7292)) lt!2143408 (h!67054 s!2326)) e!3249163)))

(declare-fun bm!368284 () Bool)

(assert (=> bm!368284 (= call!368285 call!368286)))

(declare-fun b!5220041 () Bool)

(assert (=> b!5220041 (= e!3249161 e!3249164)))

(assert (=> b!5220041 (= c!900733 (is-Concat!23655 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun bm!368285 () Bool)

(assert (=> bm!368285 (= call!368286 (derivationStepZipperDown!258 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))) (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289)) (h!67054 s!2326)))))

(assert (= (and d!1682909 c!900730) b!5220034))

(assert (= (and d!1682909 (not c!900730)) b!5220038))

(assert (= (and b!5220038 c!900729) b!5220036))

(assert (= (and b!5220038 (not c!900729)) b!5220040))

(assert (= (and b!5220040 res!2216605) b!5220033))

(assert (= (and b!5220040 c!900732) b!5220035))

(assert (= (and b!5220040 (not c!900732)) b!5220041))

(assert (= (and b!5220041 c!900733) b!5220032))

(assert (= (and b!5220041 (not c!900733)) b!5220039))

(assert (= (and b!5220039 c!900731) b!5220031))

(assert (= (and b!5220039 (not c!900731)) b!5220037))

(assert (= (or b!5220032 b!5220031) bm!368281))

(assert (= (or b!5220032 b!5220031) bm!368280))

(assert (= (or b!5220035 bm!368281) bm!368282))

(assert (= (or b!5220035 bm!368280) bm!368284))

(assert (= (or b!5220036 bm!368284) bm!368285))

(assert (= (or b!5220036 b!5220035) bm!368283))

(declare-fun m!6267876 () Bool)

(assert (=> b!5220034 m!6267876))

(declare-fun m!6267878 () Bool)

(assert (=> b!5220033 m!6267878))

(declare-fun m!6267880 () Bool)

(assert (=> bm!368285 m!6267880))

(declare-fun m!6267882 () Bool)

(assert (=> bm!368282 m!6267882))

(declare-fun m!6267884 () Bool)

(assert (=> bm!368283 m!6267884))

(assert (=> b!5219792 d!1682909))

(declare-fun b!5220042 () Bool)

(declare-fun e!3249165 () (Set Context!8388))

(declare-fun call!368296 () (Set Context!8388))

(assert (=> b!5220042 (= e!3249165 call!368296)))

(declare-fun bm!368286 () Bool)

(declare-fun call!368291 () (Set Context!8388))

(assert (=> bm!368286 (= call!368296 call!368291)))

(declare-fun b!5220043 () Bool)

(declare-fun e!3249170 () (Set Context!8388))

(assert (=> b!5220043 (= e!3249170 call!368296)))

(declare-fun b!5220044 () Bool)

(declare-fun e!3249166 () Bool)

(assert (=> b!5220044 (= e!3249166 (nullable!4979 (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))))

(declare-fun b!5220045 () Bool)

(declare-fun e!3249169 () (Set Context!8388))

(assert (=> b!5220045 (= e!3249169 (set.insert lt!2143408 (as set.empty (Set Context!8388))))))

(declare-fun bm!368287 () Bool)

(declare-fun call!368295 () List!60729)

(declare-fun call!368294 () List!60729)

(assert (=> bm!368287 (= call!368295 call!368294)))

(declare-fun b!5220046 () Bool)

(declare-fun e!3249167 () (Set Context!8388))

(declare-fun call!368293 () (Set Context!8388))

(assert (=> b!5220046 (= e!3249167 (set.union call!368293 call!368291))))

(declare-fun bm!368288 () Bool)

(declare-fun c!900737 () Bool)

(declare-fun c!900738 () Bool)

(assert (=> bm!368288 (= call!368294 ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900737 c!900738) (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (regOne!30133 (regOne!30132 r!7292)))))))

(declare-fun b!5220047 () Bool)

(declare-fun e!3249168 () (Set Context!8388))

(declare-fun call!368292 () (Set Context!8388))

(assert (=> b!5220047 (= e!3249168 (set.union call!368293 call!368292))))

(declare-fun c!900734 () Bool)

(declare-fun bm!368289 () Bool)

(assert (=> bm!368289 (= call!368293 (derivationStepZipperDown!258 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))) (ite c!900734 lt!2143408 (Context!8389 call!368294)) (h!67054 s!2326)))))

(declare-fun b!5220048 () Bool)

(assert (=> b!5220048 (= e!3249165 (as set.empty (Set Context!8388)))))

(declare-fun b!5220049 () Bool)

(assert (=> b!5220049 (= e!3249169 e!3249168)))

(assert (=> b!5220049 (= c!900734 (is-Union!14810 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun b!5220050 () Bool)

(declare-fun c!900736 () Bool)

(assert (=> b!5220050 (= c!900736 (is-Star!14810 (regOne!30133 (regOne!30132 r!7292))))))

(assert (=> b!5220050 (= e!3249170 e!3249165)))

(declare-fun b!5220051 () Bool)

(assert (=> b!5220051 (= c!900737 e!3249166)))

(declare-fun res!2216606 () Bool)

(assert (=> b!5220051 (=> (not res!2216606) (not e!3249166))))

(assert (=> b!5220051 (= res!2216606 (is-Concat!23655 (regOne!30133 (regOne!30132 r!7292))))))

(assert (=> b!5220051 (= e!3249168 e!3249167)))

(declare-fun d!1682911 () Bool)

(declare-fun c!900735 () Bool)

(assert (=> d!1682911 (= c!900735 (and (is-ElementMatch!14810 (regOne!30133 (regOne!30132 r!7292))) (= (c!900678 (regOne!30133 (regOne!30132 r!7292))) (h!67054 s!2326))))))

(assert (=> d!1682911 (= (derivationStepZipperDown!258 (regOne!30133 (regOne!30132 r!7292)) lt!2143408 (h!67054 s!2326)) e!3249169)))

(declare-fun bm!368290 () Bool)

(assert (=> bm!368290 (= call!368291 call!368292)))

(declare-fun b!5220052 () Bool)

(assert (=> b!5220052 (= e!3249167 e!3249170)))

(assert (=> b!5220052 (= c!900738 (is-Concat!23655 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun bm!368291 () Bool)

(assert (=> bm!368291 (= call!368292 (derivationStepZipperDown!258 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))) (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295)) (h!67054 s!2326)))))

(assert (= (and d!1682911 c!900735) b!5220045))

(assert (= (and d!1682911 (not c!900735)) b!5220049))

(assert (= (and b!5220049 c!900734) b!5220047))

(assert (= (and b!5220049 (not c!900734)) b!5220051))

(assert (= (and b!5220051 res!2216606) b!5220044))

(assert (= (and b!5220051 c!900737) b!5220046))

(assert (= (and b!5220051 (not c!900737)) b!5220052))

(assert (= (and b!5220052 c!900738) b!5220043))

(assert (= (and b!5220052 (not c!900738)) b!5220050))

(assert (= (and b!5220050 c!900736) b!5220042))

(assert (= (and b!5220050 (not c!900736)) b!5220048))

(assert (= (or b!5220043 b!5220042) bm!368287))

(assert (= (or b!5220043 b!5220042) bm!368286))

(assert (= (or b!5220046 bm!368287) bm!368288))

(assert (= (or b!5220046 bm!368286) bm!368290))

(assert (= (or b!5220047 bm!368290) bm!368291))

(assert (= (or b!5220047 b!5220046) bm!368289))

(assert (=> b!5220045 m!6267876))

(declare-fun m!6267886 () Bool)

(assert (=> b!5220044 m!6267886))

(declare-fun m!6267888 () Bool)

(assert (=> bm!368291 m!6267888))

(declare-fun m!6267890 () Bool)

(assert (=> bm!368288 m!6267890))

(declare-fun m!6267892 () Bool)

(assert (=> bm!368289 m!6267892))

(assert (=> b!5219792 d!1682911))

(declare-fun bs!1212258 () Bool)

(declare-fun d!1682913 () Bool)

(assert (= bs!1212258 (and d!1682913 d!1682879)))

(declare-fun lambda!261964 () Int)

(assert (=> bs!1212258 (= lambda!261964 lambda!261952)))

(assert (=> d!1682913 (= (inv!80273 (h!67055 zl!343)) (forall!14242 (exprs!4694 (h!67055 zl!343)) lambda!261964))))

(declare-fun bs!1212259 () Bool)

(assert (= bs!1212259 d!1682913))

(declare-fun m!6267894 () Bool)

(assert (=> bs!1212259 m!6267894))

(assert (=> b!5219791 d!1682913))

(declare-fun b!5220071 () Bool)

(declare-fun e!3249190 () Bool)

(declare-fun call!368305 () Bool)

(assert (=> b!5220071 (= e!3249190 call!368305)))

(declare-fun bm!368298 () Bool)

(declare-fun call!368303 () Bool)

(declare-fun c!900744 () Bool)

(assert (=> bm!368298 (= call!368303 (validRegex!6546 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))

(declare-fun b!5220072 () Bool)

(declare-fun e!3249185 () Bool)

(declare-fun e!3249186 () Bool)

(assert (=> b!5220072 (= e!3249185 e!3249186)))

(assert (=> b!5220072 (= c!900744 (is-Union!14810 r!7292))))

(declare-fun bm!368299 () Bool)

(declare-fun call!368304 () Bool)

(assert (=> bm!368299 (= call!368305 call!368304)))

(declare-fun d!1682915 () Bool)

(declare-fun res!2216621 () Bool)

(declare-fun e!3249187 () Bool)

(assert (=> d!1682915 (=> res!2216621 e!3249187)))

(assert (=> d!1682915 (= res!2216621 (is-ElementMatch!14810 r!7292))))

(assert (=> d!1682915 (= (validRegex!6546 r!7292) e!3249187)))

(declare-fun b!5220073 () Bool)

(assert (=> b!5220073 (= e!3249187 e!3249185)))

(declare-fun c!900743 () Bool)

(assert (=> b!5220073 (= c!900743 (is-Star!14810 r!7292))))

(declare-fun b!5220074 () Bool)

(declare-fun e!3249188 () Bool)

(assert (=> b!5220074 (= e!3249188 call!368304)))

(declare-fun b!5220075 () Bool)

(declare-fun e!3249191 () Bool)

(assert (=> b!5220075 (= e!3249191 call!368305)))

(declare-fun b!5220076 () Bool)

(assert (=> b!5220076 (= e!3249185 e!3249188)))

(declare-fun res!2216620 () Bool)

(assert (=> b!5220076 (= res!2216620 (not (nullable!4979 (reg!15139 r!7292))))))

(assert (=> b!5220076 (=> (not res!2216620) (not e!3249188))))

(declare-fun bm!368300 () Bool)

(assert (=> bm!368300 (= call!368304 (validRegex!6546 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))

(declare-fun b!5220077 () Bool)

(declare-fun res!2216618 () Bool)

(declare-fun e!3249189 () Bool)

(assert (=> b!5220077 (=> res!2216618 e!3249189)))

(assert (=> b!5220077 (= res!2216618 (not (is-Concat!23655 r!7292)))))

(assert (=> b!5220077 (= e!3249186 e!3249189)))

(declare-fun b!5220078 () Bool)

(assert (=> b!5220078 (= e!3249189 e!3249190)))

(declare-fun res!2216619 () Bool)

(assert (=> b!5220078 (=> (not res!2216619) (not e!3249190))))

(assert (=> b!5220078 (= res!2216619 call!368303)))

(declare-fun b!5220079 () Bool)

(declare-fun res!2216617 () Bool)

(assert (=> b!5220079 (=> (not res!2216617) (not e!3249191))))

(assert (=> b!5220079 (= res!2216617 call!368303)))

(assert (=> b!5220079 (= e!3249186 e!3249191)))

(assert (= (and d!1682915 (not res!2216621)) b!5220073))

(assert (= (and b!5220073 c!900743) b!5220076))

(assert (= (and b!5220073 (not c!900743)) b!5220072))

(assert (= (and b!5220076 res!2216620) b!5220074))

(assert (= (and b!5220072 c!900744) b!5220079))

(assert (= (and b!5220072 (not c!900744)) b!5220077))

(assert (= (and b!5220079 res!2216617) b!5220075))

(assert (= (and b!5220077 (not res!2216618)) b!5220078))

(assert (= (and b!5220078 res!2216619) b!5220071))

(assert (= (or b!5220075 b!5220071) bm!368299))

(assert (= (or b!5220079 b!5220078) bm!368298))

(assert (= (or b!5220074 bm!368299) bm!368300))

(declare-fun m!6267896 () Bool)

(assert (=> bm!368298 m!6267896))

(declare-fun m!6267898 () Bool)

(assert (=> b!5220076 m!6267898))

(declare-fun m!6267900 () Bool)

(assert (=> bm!368300 m!6267900))

(assert (=> start!552096 d!1682915))

(assert (=> b!5219802 d!1682887))

(declare-fun call!368308 () (Set Context!8388))

(declare-fun b!5220090 () Bool)

(declare-fun e!3249200 () (Set Context!8388))

(assert (=> b!5220090 (= e!3249200 (set.union call!368308 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (h!67054 s!2326))))))

(declare-fun b!5220091 () Bool)

(declare-fun e!3249199 () (Set Context!8388))

(assert (=> b!5220091 (= e!3249199 (as set.empty (Set Context!8388)))))

(declare-fun bm!368303 () Bool)

(assert (=> bm!368303 (= call!368308 (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143417)) (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (h!67054 s!2326)))))

(declare-fun b!5220092 () Bool)

(assert (=> b!5220092 (= e!3249200 e!3249199)))

(declare-fun c!900749 () Bool)

(assert (=> b!5220092 (= c!900749 (is-Cons!60605 (exprs!4694 lt!2143417)))))

(declare-fun b!5220094 () Bool)

(assert (=> b!5220094 (= e!3249199 call!368308)))

(declare-fun d!1682917 () Bool)

(declare-fun c!900750 () Bool)

(declare-fun e!3249198 () Bool)

(assert (=> d!1682917 (= c!900750 e!3249198)))

(declare-fun res!2216624 () Bool)

(assert (=> d!1682917 (=> (not res!2216624) (not e!3249198))))

(assert (=> d!1682917 (= res!2216624 (is-Cons!60605 (exprs!4694 lt!2143417)))))

(assert (=> d!1682917 (= (derivationStepZipperUp!182 lt!2143417 (h!67054 s!2326)) e!3249200)))

(declare-fun b!5220093 () Bool)

(assert (=> b!5220093 (= e!3249198 (nullable!4979 (h!67053 (exprs!4694 lt!2143417))))))

(assert (= (and d!1682917 res!2216624) b!5220093))

(assert (= (and d!1682917 c!900750) b!5220090))

(assert (= (and d!1682917 (not c!900750)) b!5220092))

(assert (= (and b!5220092 c!900749) b!5220094))

(assert (= (and b!5220092 (not c!900749)) b!5220091))

(assert (= (or b!5220090 b!5220094) bm!368303))

(declare-fun m!6267902 () Bool)

(assert (=> b!5220090 m!6267902))

(declare-fun m!6267904 () Bool)

(assert (=> bm!368303 m!6267904))

(declare-fun m!6267906 () Bool)

(assert (=> b!5220093 m!6267906))

(assert (=> b!5219772 d!1682917))

(declare-fun d!1682919 () Bool)

(declare-fun nullableFct!1386 (Regex!14810) Bool)

(assert (=> d!1682919 (= (nullable!4979 (regTwo!30133 (regOne!30132 r!7292))) (nullableFct!1386 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun bs!1212260 () Bool)

(assert (= bs!1212260 d!1682919))

(declare-fun m!6267908 () Bool)

(assert (=> bs!1212260 m!6267908))

(assert (=> b!5219772 d!1682919))

(declare-fun d!1682921 () Bool)

(declare-fun choose!38816 ((Set Context!8388) Int) (Set Context!8388))

(assert (=> d!1682921 (= (flatMap!537 lt!2143420 lambda!261934) (choose!38816 lt!2143420 lambda!261934))))

(declare-fun bs!1212261 () Bool)

(assert (= bs!1212261 d!1682921))

(declare-fun m!6267910 () Bool)

(assert (=> bs!1212261 m!6267910))

(assert (=> b!5219772 d!1682921))

(declare-fun d!1682923 () Bool)

(assert (=> d!1682923 (= (flatMap!537 lt!2143409 lambda!261934) (choose!38816 lt!2143409 lambda!261934))))

(declare-fun bs!1212262 () Bool)

(assert (= bs!1212262 d!1682923))

(declare-fun m!6267912 () Bool)

(assert (=> bs!1212262 m!6267912))

(assert (=> b!5219772 d!1682923))

(declare-fun d!1682925 () Bool)

(declare-fun dynLambda!23945 (Int Context!8388) (Set Context!8388))

(assert (=> d!1682925 (= (flatMap!537 lt!2143409 lambda!261934) (dynLambda!23945 lambda!261934 lt!2143417))))

(declare-fun lt!2143532 () Unit!152510)

(declare-fun choose!38817 ((Set Context!8388) Context!8388 Int) Unit!152510)

(assert (=> d!1682925 (= lt!2143532 (choose!38817 lt!2143409 lt!2143417 lambda!261934))))

(assert (=> d!1682925 (= lt!2143409 (set.insert lt!2143417 (as set.empty (Set Context!8388))))))

(assert (=> d!1682925 (= (lemmaFlatMapOnSingletonSet!69 lt!2143409 lt!2143417 lambda!261934) lt!2143532)))

(declare-fun b_lambda!201841 () Bool)

(assert (=> (not b_lambda!201841) (not d!1682925)))

(declare-fun bs!1212263 () Bool)

(assert (= bs!1212263 d!1682925))

(assert (=> bs!1212263 m!6267624))

(declare-fun m!6267914 () Bool)

(assert (=> bs!1212263 m!6267914))

(declare-fun m!6267916 () Bool)

(assert (=> bs!1212263 m!6267916))

(assert (=> bs!1212263 m!6267620))

(assert (=> b!5219772 d!1682925))

(declare-fun b!5220095 () Bool)

(declare-fun call!368309 () (Set Context!8388))

(declare-fun e!3249203 () (Set Context!8388))

(assert (=> b!5220095 (= e!3249203 (set.union call!368309 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (h!67054 s!2326))))))

(declare-fun b!5220096 () Bool)

(declare-fun e!3249202 () (Set Context!8388))

(assert (=> b!5220096 (= e!3249202 (as set.empty (Set Context!8388)))))

(declare-fun bm!368304 () Bool)

(assert (=> bm!368304 (= call!368309 (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143405)) (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (h!67054 s!2326)))))

(declare-fun b!5220097 () Bool)

(assert (=> b!5220097 (= e!3249203 e!3249202)))

(declare-fun c!900751 () Bool)

(assert (=> b!5220097 (= c!900751 (is-Cons!60605 (exprs!4694 lt!2143405)))))

(declare-fun b!5220099 () Bool)

(assert (=> b!5220099 (= e!3249202 call!368309)))

(declare-fun d!1682927 () Bool)

(declare-fun c!900752 () Bool)

(declare-fun e!3249201 () Bool)

(assert (=> d!1682927 (= c!900752 e!3249201)))

(declare-fun res!2216625 () Bool)

(assert (=> d!1682927 (=> (not res!2216625) (not e!3249201))))

(assert (=> d!1682927 (= res!2216625 (is-Cons!60605 (exprs!4694 lt!2143405)))))

(assert (=> d!1682927 (= (derivationStepZipperUp!182 lt!2143405 (h!67054 s!2326)) e!3249203)))

(declare-fun b!5220098 () Bool)

(assert (=> b!5220098 (= e!3249201 (nullable!4979 (h!67053 (exprs!4694 lt!2143405))))))

(assert (= (and d!1682927 res!2216625) b!5220098))

(assert (= (and d!1682927 c!900752) b!5220095))

(assert (= (and d!1682927 (not c!900752)) b!5220097))

(assert (= (and b!5220097 c!900751) b!5220099))

(assert (= (and b!5220097 (not c!900751)) b!5220096))

(assert (= (or b!5220095 b!5220099) bm!368304))

(declare-fun m!6267918 () Bool)

(assert (=> b!5220095 m!6267918))

(declare-fun m!6267920 () Bool)

(assert (=> bm!368304 m!6267920))

(declare-fun m!6267922 () Bool)

(assert (=> b!5220098 m!6267922))

(assert (=> b!5219772 d!1682927))

(declare-fun d!1682929 () Bool)

(assert (=> d!1682929 (= (nullable!4979 (regOne!30133 (regOne!30132 r!7292))) (nullableFct!1386 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun bs!1212264 () Bool)

(assert (= bs!1212264 d!1682929))

(declare-fun m!6267924 () Bool)

(assert (=> bs!1212264 m!6267924))

(assert (=> b!5219772 d!1682929))

(declare-fun d!1682931 () Bool)

(assert (=> d!1682931 (= (flatMap!537 lt!2143420 lambda!261934) (dynLambda!23945 lambda!261934 lt!2143405))))

(declare-fun lt!2143533 () Unit!152510)

(assert (=> d!1682931 (= lt!2143533 (choose!38817 lt!2143420 lt!2143405 lambda!261934))))

(assert (=> d!1682931 (= lt!2143420 (set.insert lt!2143405 (as set.empty (Set Context!8388))))))

(assert (=> d!1682931 (= (lemmaFlatMapOnSingletonSet!69 lt!2143420 lt!2143405 lambda!261934) lt!2143533)))

(declare-fun b_lambda!201843 () Bool)

(assert (=> (not b_lambda!201843) (not d!1682931)))

(declare-fun bs!1212265 () Bool)

(assert (= bs!1212265 d!1682931))

(assert (=> bs!1212265 m!6267614))

(declare-fun m!6267926 () Bool)

(assert (=> bs!1212265 m!6267926))

(declare-fun m!6267928 () Bool)

(assert (=> bs!1212265 m!6267928))

(assert (=> bs!1212265 m!6267612))

(assert (=> b!5219772 d!1682931))

(declare-fun bs!1212266 () Bool)

(declare-fun d!1682933 () Bool)

(assert (= bs!1212266 (and d!1682933 d!1682879)))

(declare-fun lambda!261965 () Int)

(assert (=> bs!1212266 (= lambda!261965 lambda!261952)))

(declare-fun bs!1212267 () Bool)

(assert (= bs!1212267 (and d!1682933 d!1682913)))

(assert (=> bs!1212267 (= lambda!261965 lambda!261964)))

(assert (=> d!1682933 (= (inv!80273 setElem!33196) (forall!14242 (exprs!4694 setElem!33196) lambda!261965))))

(declare-fun bs!1212268 () Bool)

(assert (= bs!1212268 d!1682933))

(declare-fun m!6267930 () Bool)

(assert (=> bs!1212268 m!6267930))

(assert (=> setNonEmpty!33196 d!1682933))

(declare-fun d!1682935 () Bool)

(assert (=> d!1682935 (= (flatMap!537 z!1189 lambda!261934) (dynLambda!23945 lambda!261934 (h!67055 zl!343)))))

(declare-fun lt!2143534 () Unit!152510)

(assert (=> d!1682935 (= lt!2143534 (choose!38817 z!1189 (h!67055 zl!343) lambda!261934))))

(assert (=> d!1682935 (= z!1189 (set.insert (h!67055 zl!343) (as set.empty (Set Context!8388))))))

(assert (=> d!1682935 (= (lemmaFlatMapOnSingletonSet!69 z!1189 (h!67055 zl!343) lambda!261934) lt!2143534)))

(declare-fun b_lambda!201845 () Bool)

(assert (=> (not b_lambda!201845) (not d!1682935)))

(declare-fun bs!1212269 () Bool)

(assert (= bs!1212269 d!1682935))

(assert (=> bs!1212269 m!6267588))

(declare-fun m!6267932 () Bool)

(assert (=> bs!1212269 m!6267932))

(declare-fun m!6267934 () Bool)

(assert (=> bs!1212269 m!6267934))

(declare-fun m!6267936 () Bool)

(assert (=> bs!1212269 m!6267936))

(assert (=> b!5219789 d!1682935))

(declare-fun d!1682937 () Bool)

(assert (=> d!1682937 (= (nullable!4979 (h!67053 (exprs!4694 (h!67055 zl!343)))) (nullableFct!1386 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun bs!1212270 () Bool)

(assert (= bs!1212270 d!1682937))

(declare-fun m!6267938 () Bool)

(assert (=> bs!1212270 m!6267938))

(assert (=> b!5219789 d!1682937))

(declare-fun b!5220100 () Bool)

(declare-fun e!3249206 () (Set Context!8388))

(declare-fun call!368310 () (Set Context!8388))

(assert (=> b!5220100 (= e!3249206 (set.union call!368310 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326))))))

(declare-fun b!5220101 () Bool)

(declare-fun e!3249205 () (Set Context!8388))

(assert (=> b!5220101 (= e!3249205 (as set.empty (Set Context!8388)))))

(declare-fun bm!368305 () Bool)

(assert (=> bm!368305 (= call!368310 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326)))))

(declare-fun b!5220102 () Bool)

(assert (=> b!5220102 (= e!3249206 e!3249205)))

(declare-fun c!900753 () Bool)

(assert (=> b!5220102 (= c!900753 (is-Cons!60605 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))

(declare-fun b!5220104 () Bool)

(assert (=> b!5220104 (= e!3249205 call!368310)))

(declare-fun d!1682939 () Bool)

(declare-fun c!900754 () Bool)

(declare-fun e!3249204 () Bool)

(assert (=> d!1682939 (= c!900754 e!3249204)))

(declare-fun res!2216626 () Bool)

(assert (=> d!1682939 (=> (not res!2216626) (not e!3249204))))

(assert (=> d!1682939 (= res!2216626 (is-Cons!60605 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))

(assert (=> d!1682939 (= (derivationStepZipperUp!182 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))) (h!67054 s!2326)) e!3249206)))

(declare-fun b!5220103 () Bool)

(assert (=> b!5220103 (= e!3249204 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(assert (= (and d!1682939 res!2216626) b!5220103))

(assert (= (and d!1682939 c!900754) b!5220100))

(assert (= (and d!1682939 (not c!900754)) b!5220102))

(assert (= (and b!5220102 c!900753) b!5220104))

(assert (= (and b!5220102 (not c!900753)) b!5220101))

(assert (= (or b!5220100 b!5220104) bm!368305))

(declare-fun m!6267940 () Bool)

(assert (=> b!5220100 m!6267940))

(declare-fun m!6267942 () Bool)

(assert (=> bm!368305 m!6267942))

(declare-fun m!6267944 () Bool)

(assert (=> b!5220103 m!6267944))

(assert (=> b!5219789 d!1682939))

(declare-fun b!5220105 () Bool)

(declare-fun e!3249207 () (Set Context!8388))

(declare-fun call!368316 () (Set Context!8388))

(assert (=> b!5220105 (= e!3249207 call!368316)))

(declare-fun bm!368306 () Bool)

(declare-fun call!368311 () (Set Context!8388))

(assert (=> bm!368306 (= call!368316 call!368311)))

(declare-fun b!5220106 () Bool)

(declare-fun e!3249212 () (Set Context!8388))

(assert (=> b!5220106 (= e!3249212 call!368316)))

(declare-fun b!5220107 () Bool)

(declare-fun e!3249208 () Bool)

(assert (=> b!5220107 (= e!3249208 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5220108 () Bool)

(declare-fun e!3249211 () (Set Context!8388))

(assert (=> b!5220108 (= e!3249211 (set.insert lt!2143408 (as set.empty (Set Context!8388))))))

(declare-fun bm!368307 () Bool)

(declare-fun call!368315 () List!60729)

(declare-fun call!368314 () List!60729)

(assert (=> bm!368307 (= call!368315 call!368314)))

(declare-fun b!5220109 () Bool)

(declare-fun e!3249209 () (Set Context!8388))

(declare-fun call!368313 () (Set Context!8388))

(assert (=> b!5220109 (= e!3249209 (set.union call!368313 call!368311))))

(declare-fun c!900759 () Bool)

(declare-fun c!900758 () Bool)

(declare-fun bm!368308 () Bool)

(assert (=> bm!368308 (= call!368314 ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900758 c!900759) (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67053 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5220110 () Bool)

(declare-fun e!3249210 () (Set Context!8388))

(declare-fun call!368312 () (Set Context!8388))

(assert (=> b!5220110 (= e!3249210 (set.union call!368313 call!368312))))

(declare-fun bm!368309 () Bool)

(declare-fun c!900755 () Bool)

(assert (=> bm!368309 (= call!368313 (derivationStepZipperDown!258 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))) (ite c!900755 lt!2143408 (Context!8389 call!368314)) (h!67054 s!2326)))))

(declare-fun b!5220111 () Bool)

(assert (=> b!5220111 (= e!3249207 (as set.empty (Set Context!8388)))))

(declare-fun b!5220112 () Bool)

(assert (=> b!5220112 (= e!3249211 e!3249210)))

(assert (=> b!5220112 (= c!900755 (is-Union!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220113 () Bool)

(declare-fun c!900757 () Bool)

(assert (=> b!5220113 (= c!900757 (is-Star!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5220113 (= e!3249212 e!3249207)))

(declare-fun b!5220114 () Bool)

(assert (=> b!5220114 (= c!900758 e!3249208)))

(declare-fun res!2216627 () Bool)

(assert (=> b!5220114 (=> (not res!2216627) (not e!3249208))))

(assert (=> b!5220114 (= res!2216627 (is-Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5220114 (= e!3249210 e!3249209)))

(declare-fun d!1682941 () Bool)

(declare-fun c!900756 () Bool)

(assert (=> d!1682941 (= c!900756 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))) (= (c!900678 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326))))))

(assert (=> d!1682941 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 (h!67055 zl!343))) lt!2143408 (h!67054 s!2326)) e!3249211)))

(declare-fun bm!368310 () Bool)

(assert (=> bm!368310 (= call!368311 call!368312)))

(declare-fun b!5220115 () Bool)

(assert (=> b!5220115 (= e!3249209 e!3249212)))

(assert (=> b!5220115 (= c!900759 (is-Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun bm!368311 () Bool)

(assert (=> bm!368311 (= call!368312 (derivationStepZipperDown!258 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))) (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315)) (h!67054 s!2326)))))

(assert (= (and d!1682941 c!900756) b!5220108))

(assert (= (and d!1682941 (not c!900756)) b!5220112))

(assert (= (and b!5220112 c!900755) b!5220110))

(assert (= (and b!5220112 (not c!900755)) b!5220114))

(assert (= (and b!5220114 res!2216627) b!5220107))

(assert (= (and b!5220114 c!900758) b!5220109))

(assert (= (and b!5220114 (not c!900758)) b!5220115))

(assert (= (and b!5220115 c!900759) b!5220106))

(assert (= (and b!5220115 (not c!900759)) b!5220113))

(assert (= (and b!5220113 c!900757) b!5220105))

(assert (= (and b!5220113 (not c!900757)) b!5220111))

(assert (= (or b!5220106 b!5220105) bm!368307))

(assert (= (or b!5220106 b!5220105) bm!368306))

(assert (= (or b!5220109 bm!368307) bm!368308))

(assert (= (or b!5220109 bm!368306) bm!368310))

(assert (= (or b!5220110 bm!368310) bm!368311))

(assert (= (or b!5220110 b!5220109) bm!368309))

(assert (=> b!5220108 m!6267876))

(declare-fun m!6267946 () Bool)

(assert (=> b!5220107 m!6267946))

(declare-fun m!6267948 () Bool)

(assert (=> bm!368311 m!6267948))

(declare-fun m!6267950 () Bool)

(assert (=> bm!368308 m!6267950))

(declare-fun m!6267952 () Bool)

(assert (=> bm!368309 m!6267952))

(assert (=> b!5219789 d!1682941))

(declare-fun call!368317 () (Set Context!8388))

(declare-fun b!5220116 () Bool)

(declare-fun e!3249215 () (Set Context!8388))

(assert (=> b!5220116 (= e!3249215 (set.union call!368317 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (h!67054 s!2326))))))

(declare-fun b!5220117 () Bool)

(declare-fun e!3249214 () (Set Context!8388))

(assert (=> b!5220117 (= e!3249214 (as set.empty (Set Context!8388)))))

(declare-fun bm!368312 () Bool)

(assert (=> bm!368312 (= call!368317 (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143408)) (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (h!67054 s!2326)))))

(declare-fun b!5220118 () Bool)

(assert (=> b!5220118 (= e!3249215 e!3249214)))

(declare-fun c!900760 () Bool)

(assert (=> b!5220118 (= c!900760 (is-Cons!60605 (exprs!4694 lt!2143408)))))

(declare-fun b!5220120 () Bool)

(assert (=> b!5220120 (= e!3249214 call!368317)))

(declare-fun d!1682943 () Bool)

(declare-fun c!900761 () Bool)

(declare-fun e!3249213 () Bool)

(assert (=> d!1682943 (= c!900761 e!3249213)))

(declare-fun res!2216628 () Bool)

(assert (=> d!1682943 (=> (not res!2216628) (not e!3249213))))

(assert (=> d!1682943 (= res!2216628 (is-Cons!60605 (exprs!4694 lt!2143408)))))

(assert (=> d!1682943 (= (derivationStepZipperUp!182 lt!2143408 (h!67054 s!2326)) e!3249215)))

(declare-fun b!5220119 () Bool)

(assert (=> b!5220119 (= e!3249213 (nullable!4979 (h!67053 (exprs!4694 lt!2143408))))))

(assert (= (and d!1682943 res!2216628) b!5220119))

(assert (= (and d!1682943 c!900761) b!5220116))

(assert (= (and d!1682943 (not c!900761)) b!5220118))

(assert (= (and b!5220118 c!900760) b!5220120))

(assert (= (and b!5220118 (not c!900760)) b!5220117))

(assert (= (or b!5220116 b!5220120) bm!368312))

(declare-fun m!6267954 () Bool)

(assert (=> b!5220116 m!6267954))

(declare-fun m!6267956 () Bool)

(assert (=> bm!368312 m!6267956))

(declare-fun m!6267958 () Bool)

(assert (=> b!5220119 m!6267958))

(assert (=> b!5219789 d!1682943))

(declare-fun d!1682945 () Bool)

(assert (=> d!1682945 (= (flatMap!537 z!1189 lambda!261934) (choose!38816 z!1189 lambda!261934))))

(declare-fun bs!1212271 () Bool)

(assert (= bs!1212271 d!1682945))

(declare-fun m!6267960 () Bool)

(assert (=> bs!1212271 m!6267960))

(assert (=> b!5219789 d!1682945))

(declare-fun b!5220121 () Bool)

(declare-fun e!3249218 () (Set Context!8388))

(declare-fun call!368318 () (Set Context!8388))

(assert (=> b!5220121 (= e!3249218 (set.union call!368318 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326))))))

(declare-fun b!5220122 () Bool)

(declare-fun e!3249217 () (Set Context!8388))

(assert (=> b!5220122 (= e!3249217 (as set.empty (Set Context!8388)))))

(declare-fun bm!368313 () Bool)

(assert (=> bm!368313 (= call!368318 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (h!67055 zl!343))) (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326)))))

(declare-fun b!5220123 () Bool)

(assert (=> b!5220123 (= e!3249218 e!3249217)))

(declare-fun c!900762 () Bool)

(assert (=> b!5220123 (= c!900762 (is-Cons!60605 (exprs!4694 (h!67055 zl!343))))))

(declare-fun b!5220125 () Bool)

(assert (=> b!5220125 (= e!3249217 call!368318)))

(declare-fun d!1682947 () Bool)

(declare-fun c!900763 () Bool)

(declare-fun e!3249216 () Bool)

(assert (=> d!1682947 (= c!900763 e!3249216)))

(declare-fun res!2216629 () Bool)

(assert (=> d!1682947 (=> (not res!2216629) (not e!3249216))))

(assert (=> d!1682947 (= res!2216629 (is-Cons!60605 (exprs!4694 (h!67055 zl!343))))))

(assert (=> d!1682947 (= (derivationStepZipperUp!182 (h!67055 zl!343) (h!67054 s!2326)) e!3249218)))

(declare-fun b!5220124 () Bool)

(assert (=> b!5220124 (= e!3249216 (nullable!4979 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (= (and d!1682947 res!2216629) b!5220124))

(assert (= (and d!1682947 c!900763) b!5220121))

(assert (= (and d!1682947 (not c!900763)) b!5220123))

(assert (= (and b!5220123 c!900762) b!5220125))

(assert (= (and b!5220123 (not c!900762)) b!5220122))

(assert (= (or b!5220121 b!5220125) bm!368313))

(declare-fun m!6267962 () Bool)

(assert (=> b!5220121 m!6267962))

(declare-fun m!6267964 () Bool)

(assert (=> bm!368313 m!6267964))

(assert (=> b!5220124 m!6267592))

(assert (=> b!5219789 d!1682947))

(declare-fun bs!1212272 () Bool)

(declare-fun b!5220162 () Bool)

(assert (= bs!1212272 (and b!5220162 b!5219795)))

(declare-fun lambda!261970 () Int)

(assert (=> bs!1212272 (not (= lambda!261970 lambda!261933))))

(declare-fun bs!1212273 () Bool)

(assert (= bs!1212273 (and b!5220162 d!1682897)))

(assert (=> bs!1212273 (not (= lambda!261970 lambda!261961))))

(declare-fun bs!1212274 () Bool)

(assert (= bs!1212274 (and b!5220162 d!1682893)))

(assert (=> bs!1212274 (not (= lambda!261970 lambda!261957))))

(assert (=> bs!1212272 (not (= lambda!261970 lambda!261932))))

(assert (=> bs!1212274 (not (= lambda!261970 lambda!261958))))

(assert (=> b!5220162 true))

(assert (=> b!5220162 true))

(declare-fun bs!1212275 () Bool)

(declare-fun b!5220165 () Bool)

(assert (= bs!1212275 (and b!5220165 b!5219795)))

(declare-fun lambda!261971 () Int)

(assert (=> bs!1212275 (= lambda!261971 lambda!261933)))

(declare-fun bs!1212276 () Bool)

(assert (= bs!1212276 (and b!5220165 d!1682897)))

(assert (=> bs!1212276 (not (= lambda!261971 lambda!261961))))

(assert (=> bs!1212275 (not (= lambda!261971 lambda!261932))))

(declare-fun bs!1212277 () Bool)

(assert (= bs!1212277 (and b!5220165 d!1682893)))

(assert (=> bs!1212277 (= lambda!261971 lambda!261958)))

(declare-fun bs!1212278 () Bool)

(assert (= bs!1212278 (and b!5220165 b!5220162)))

(assert (=> bs!1212278 (not (= lambda!261971 lambda!261970))))

(assert (=> bs!1212277 (not (= lambda!261971 lambda!261957))))

(assert (=> b!5220165 true))

(assert (=> b!5220165 true))

(declare-fun b!5220158 () Bool)

(declare-fun e!3249243 () Bool)

(declare-fun call!368323 () Bool)

(assert (=> b!5220158 (= e!3249243 call!368323)))

(declare-fun b!5220159 () Bool)

(declare-fun e!3249242 () Bool)

(declare-fun e!3249241 () Bool)

(assert (=> b!5220159 (= e!3249242 e!3249241)))

(declare-fun res!2216646 () Bool)

(assert (=> b!5220159 (= res!2216646 (matchRSpec!1913 (regOne!30133 r!7292) s!2326))))

(assert (=> b!5220159 (=> res!2216646 e!3249241)))

(declare-fun b!5220161 () Bool)

(declare-fun c!900773 () Bool)

(assert (=> b!5220161 (= c!900773 (is-ElementMatch!14810 r!7292))))

(declare-fun e!3249239 () Bool)

(declare-fun e!3249238 () Bool)

(assert (=> b!5220161 (= e!3249239 e!3249238)))

(declare-fun e!3249240 () Bool)

(declare-fun call!368324 () Bool)

(assert (=> b!5220162 (= e!3249240 call!368324)))

(declare-fun b!5220163 () Bool)

(assert (=> b!5220163 (= e!3249243 e!3249239)))

(declare-fun res!2216648 () Bool)

(assert (=> b!5220163 (= res!2216648 (not (is-EmptyLang!14810 r!7292)))))

(assert (=> b!5220163 (=> (not res!2216648) (not e!3249239))))

(declare-fun bm!368318 () Bool)

(declare-fun c!900775 () Bool)

(assert (=> bm!368318 (= call!368324 (Exists!1991 (ite c!900775 lambda!261970 lambda!261971)))))

(declare-fun b!5220164 () Bool)

(declare-fun c!900772 () Bool)

(assert (=> b!5220164 (= c!900772 (is-Union!14810 r!7292))))

(assert (=> b!5220164 (= e!3249238 e!3249242)))

(declare-fun e!3249237 () Bool)

(assert (=> b!5220165 (= e!3249237 call!368324)))

(declare-fun d!1682949 () Bool)

(declare-fun c!900774 () Bool)

(assert (=> d!1682949 (= c!900774 (is-EmptyExpr!14810 r!7292))))

(assert (=> d!1682949 (= (matchRSpec!1913 r!7292 s!2326) e!3249243)))

(declare-fun b!5220160 () Bool)

(declare-fun res!2216647 () Bool)

(assert (=> b!5220160 (=> res!2216647 e!3249240)))

(assert (=> b!5220160 (= res!2216647 call!368323)))

(assert (=> b!5220160 (= e!3249237 e!3249240)))

(declare-fun b!5220166 () Bool)

(assert (=> b!5220166 (= e!3249241 (matchRSpec!1913 (regTwo!30133 r!7292) s!2326))))

(declare-fun b!5220167 () Bool)

(assert (=> b!5220167 (= e!3249238 (= s!2326 (Cons!60606 (c!900678 r!7292) Nil!60606)))))

(declare-fun b!5220168 () Bool)

(assert (=> b!5220168 (= e!3249242 e!3249237)))

(assert (=> b!5220168 (= c!900775 (is-Star!14810 r!7292))))

(declare-fun bm!368319 () Bool)

(assert (=> bm!368319 (= call!368323 (isEmpty!32527 s!2326))))

(assert (= (and d!1682949 c!900774) b!5220158))

(assert (= (and d!1682949 (not c!900774)) b!5220163))

(assert (= (and b!5220163 res!2216648) b!5220161))

(assert (= (and b!5220161 c!900773) b!5220167))

(assert (= (and b!5220161 (not c!900773)) b!5220164))

(assert (= (and b!5220164 c!900772) b!5220159))

(assert (= (and b!5220164 (not c!900772)) b!5220168))

(assert (= (and b!5220159 (not res!2216646)) b!5220166))

(assert (= (and b!5220168 c!900775) b!5220160))

(assert (= (and b!5220168 (not c!900775)) b!5220165))

(assert (= (and b!5220160 (not res!2216647)) b!5220162))

(assert (= (or b!5220162 b!5220165) bm!368318))

(assert (= (or b!5220158 b!5220160) bm!368319))

(declare-fun m!6267966 () Bool)

(assert (=> b!5220159 m!6267966))

(declare-fun m!6267968 () Bool)

(assert (=> bm!368318 m!6267968))

(declare-fun m!6267970 () Bool)

(assert (=> b!5220166 m!6267970))

(declare-fun m!6267972 () Bool)

(assert (=> bm!368319 m!6267972))

(assert (=> b!5219799 d!1682949))

(declare-fun b!5220197 () Bool)

(declare-fun e!3249260 () Bool)

(assert (=> b!5220197 (= e!3249260 (nullable!4979 r!7292))))

(declare-fun d!1682951 () Bool)

(declare-fun e!3249259 () Bool)

(assert (=> d!1682951 e!3249259))

(declare-fun c!900783 () Bool)

(assert (=> d!1682951 (= c!900783 (is-EmptyExpr!14810 r!7292))))

(declare-fun lt!2143537 () Bool)

(assert (=> d!1682951 (= lt!2143537 e!3249260)))

(declare-fun c!900784 () Bool)

(assert (=> d!1682951 (= c!900784 (isEmpty!32527 s!2326))))

(assert (=> d!1682951 (validRegex!6546 r!7292)))

(assert (=> d!1682951 (= (matchR!6995 r!7292 s!2326) lt!2143537)))

(declare-fun b!5220198 () Bool)

(declare-fun res!2216672 () Bool)

(declare-fun e!3249262 () Bool)

(assert (=> b!5220198 (=> res!2216672 e!3249262)))

(assert (=> b!5220198 (= res!2216672 (not (isEmpty!32527 (tail!10285 s!2326))))))

(declare-fun b!5220199 () Bool)

(declare-fun res!2216666 () Bool)

(declare-fun e!3249263 () Bool)

(assert (=> b!5220199 (=> (not res!2216666) (not e!3249263))))

(declare-fun call!368327 () Bool)

(assert (=> b!5220199 (= res!2216666 (not call!368327))))

(declare-fun b!5220200 () Bool)

(declare-fun res!2216665 () Bool)

(declare-fun e!3249264 () Bool)

(assert (=> b!5220200 (=> res!2216665 e!3249264)))

(assert (=> b!5220200 (= res!2216665 e!3249263)))

(declare-fun res!2216670 () Bool)

(assert (=> b!5220200 (=> (not res!2216670) (not e!3249263))))

(assert (=> b!5220200 (= res!2216670 lt!2143537)))

(declare-fun b!5220201 () Bool)

(declare-fun res!2216667 () Bool)

(assert (=> b!5220201 (=> res!2216667 e!3249264)))

(assert (=> b!5220201 (= res!2216667 (not (is-ElementMatch!14810 r!7292)))))

(declare-fun e!3249258 () Bool)

(assert (=> b!5220201 (= e!3249258 e!3249264)))

(declare-fun b!5220202 () Bool)

(declare-fun e!3249261 () Bool)

(assert (=> b!5220202 (= e!3249264 e!3249261)))

(declare-fun res!2216669 () Bool)

(assert (=> b!5220202 (=> (not res!2216669) (not e!3249261))))

(assert (=> b!5220202 (= res!2216669 (not lt!2143537))))

(declare-fun b!5220203 () Bool)

(assert (=> b!5220203 (= e!3249259 e!3249258)))

(declare-fun c!900782 () Bool)

(assert (=> b!5220203 (= c!900782 (is-EmptyLang!14810 r!7292))))

(declare-fun b!5220204 () Bool)

(assert (=> b!5220204 (= e!3249258 (not lt!2143537))))

(declare-fun b!5220205 () Bool)

(assert (=> b!5220205 (= e!3249261 e!3249262)))

(declare-fun res!2216671 () Bool)

(assert (=> b!5220205 (=> res!2216671 e!3249262)))

(assert (=> b!5220205 (= res!2216671 call!368327)))

(declare-fun b!5220206 () Bool)

(declare-fun derivativeStep!4056 (Regex!14810 C!29890) Regex!14810)

(assert (=> b!5220206 (= e!3249260 (matchR!6995 (derivativeStep!4056 r!7292 (head!11188 s!2326)) (tail!10285 s!2326)))))

(declare-fun bm!368322 () Bool)

(assert (=> bm!368322 (= call!368327 (isEmpty!32527 s!2326))))

(declare-fun b!5220207 () Bool)

(assert (=> b!5220207 (= e!3249259 (= lt!2143537 call!368327))))

(declare-fun b!5220208 () Bool)

(assert (=> b!5220208 (= e!3249262 (not (= (head!11188 s!2326) (c!900678 r!7292))))))

(declare-fun b!5220209 () Bool)

(declare-fun res!2216668 () Bool)

(assert (=> b!5220209 (=> (not res!2216668) (not e!3249263))))

(assert (=> b!5220209 (= res!2216668 (isEmpty!32527 (tail!10285 s!2326)))))

(declare-fun b!5220210 () Bool)

(assert (=> b!5220210 (= e!3249263 (= (head!11188 s!2326) (c!900678 r!7292)))))

(assert (= (and d!1682951 c!900784) b!5220197))

(assert (= (and d!1682951 (not c!900784)) b!5220206))

(assert (= (and d!1682951 c!900783) b!5220207))

(assert (= (and d!1682951 (not c!900783)) b!5220203))

(assert (= (and b!5220203 c!900782) b!5220204))

(assert (= (and b!5220203 (not c!900782)) b!5220201))

(assert (= (and b!5220201 (not res!2216667)) b!5220200))

(assert (= (and b!5220200 res!2216670) b!5220199))

(assert (= (and b!5220199 res!2216666) b!5220209))

(assert (= (and b!5220209 res!2216668) b!5220210))

(assert (= (and b!5220200 (not res!2216665)) b!5220202))

(assert (= (and b!5220202 res!2216669) b!5220205))

(assert (= (and b!5220205 (not res!2216671)) b!5220198))

(assert (= (and b!5220198 (not res!2216672)) b!5220208))

(assert (= (or b!5220207 b!5220199 b!5220205) bm!368322))

(declare-fun m!6267974 () Bool)

(assert (=> b!5220198 m!6267974))

(assert (=> b!5220198 m!6267974))

(declare-fun m!6267976 () Bool)

(assert (=> b!5220198 m!6267976))

(declare-fun m!6267978 () Bool)

(assert (=> b!5220210 m!6267978))

(assert (=> b!5220206 m!6267978))

(assert (=> b!5220206 m!6267978))

(declare-fun m!6267980 () Bool)

(assert (=> b!5220206 m!6267980))

(assert (=> b!5220206 m!6267974))

(assert (=> b!5220206 m!6267980))

(assert (=> b!5220206 m!6267974))

(declare-fun m!6267982 () Bool)

(assert (=> b!5220206 m!6267982))

(assert (=> b!5220208 m!6267978))

(assert (=> b!5220209 m!6267974))

(assert (=> b!5220209 m!6267974))

(assert (=> b!5220209 m!6267976))

(declare-fun m!6267984 () Bool)

(assert (=> b!5220197 m!6267984))

(assert (=> d!1682951 m!6267972))

(assert (=> d!1682951 m!6267608))

(assert (=> bm!368322 m!6267972))

(assert (=> b!5219799 d!1682951))

(declare-fun d!1682953 () Bool)

(assert (=> d!1682953 (= (matchR!6995 r!7292 s!2326) (matchRSpec!1913 r!7292 s!2326))))

(declare-fun lt!2143540 () Unit!152510)

(declare-fun choose!38818 (Regex!14810 List!60730) Unit!152510)

(assert (=> d!1682953 (= lt!2143540 (choose!38818 r!7292 s!2326))))

(assert (=> d!1682953 (validRegex!6546 r!7292)))

(assert (=> d!1682953 (= (mainMatchTheorem!1913 r!7292 s!2326) lt!2143540)))

(declare-fun bs!1212279 () Bool)

(assert (= bs!1212279 d!1682953))

(assert (=> bs!1212279 m!6267602))

(assert (=> bs!1212279 m!6267600))

(declare-fun m!6267986 () Bool)

(assert (=> bs!1212279 m!6267986))

(assert (=> bs!1212279 m!6267608))

(assert (=> b!5219799 d!1682953))

(declare-fun d!1682955 () Bool)

(assert (=> d!1682955 (= (isEmpty!32523 (t!373901 zl!343)) (is-Nil!60607 (t!373901 zl!343)))))

(assert (=> b!5219779 d!1682955))

(declare-fun b!5220211 () Bool)

(declare-fun e!3249270 () Bool)

(declare-fun call!368330 () Bool)

(assert (=> b!5220211 (= e!3249270 call!368330)))

(declare-fun bm!368323 () Bool)

(declare-fun call!368328 () Bool)

(declare-fun c!900786 () Bool)

(assert (=> bm!368323 (= call!368328 (validRegex!6546 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5220212 () Bool)

(declare-fun e!3249265 () Bool)

(declare-fun e!3249266 () Bool)

(assert (=> b!5220212 (= e!3249265 e!3249266)))

(assert (=> b!5220212 (= c!900786 (is-Union!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun bm!368324 () Bool)

(declare-fun call!368329 () Bool)

(assert (=> bm!368324 (= call!368330 call!368329)))

(declare-fun d!1682957 () Bool)

(declare-fun res!2216677 () Bool)

(declare-fun e!3249267 () Bool)

(assert (=> d!1682957 (=> res!2216677 e!3249267)))

(assert (=> d!1682957 (= res!2216677 (is-ElementMatch!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(assert (=> d!1682957 (= (validRegex!6546 (regTwo!30133 (regOne!30132 r!7292))) e!3249267)))

(declare-fun b!5220213 () Bool)

(assert (=> b!5220213 (= e!3249267 e!3249265)))

(declare-fun c!900785 () Bool)

(assert (=> b!5220213 (= c!900785 (is-Star!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun b!5220214 () Bool)

(declare-fun e!3249268 () Bool)

(assert (=> b!5220214 (= e!3249268 call!368329)))

(declare-fun b!5220215 () Bool)

(declare-fun e!3249271 () Bool)

(assert (=> b!5220215 (= e!3249271 call!368330)))

(declare-fun b!5220216 () Bool)

(assert (=> b!5220216 (= e!3249265 e!3249268)))

(declare-fun res!2216676 () Bool)

(assert (=> b!5220216 (= res!2216676 (not (nullable!4979 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))))

(assert (=> b!5220216 (=> (not res!2216676) (not e!3249268))))

(declare-fun bm!368325 () Bool)

(assert (=> bm!368325 (= call!368329 (validRegex!6546 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5220217 () Bool)

(declare-fun res!2216674 () Bool)

(declare-fun e!3249269 () Bool)

(assert (=> b!5220217 (=> res!2216674 e!3249269)))

(assert (=> b!5220217 (= res!2216674 (not (is-Concat!23655 (regTwo!30133 (regOne!30132 r!7292)))))))

(assert (=> b!5220217 (= e!3249266 e!3249269)))

(declare-fun b!5220218 () Bool)

(assert (=> b!5220218 (= e!3249269 e!3249270)))

(declare-fun res!2216675 () Bool)

(assert (=> b!5220218 (=> (not res!2216675) (not e!3249270))))

(assert (=> b!5220218 (= res!2216675 call!368328)))

(declare-fun b!5220219 () Bool)

(declare-fun res!2216673 () Bool)

(assert (=> b!5220219 (=> (not res!2216673) (not e!3249271))))

(assert (=> b!5220219 (= res!2216673 call!368328)))

(assert (=> b!5220219 (= e!3249266 e!3249271)))

(assert (= (and d!1682957 (not res!2216677)) b!5220213))

(assert (= (and b!5220213 c!900785) b!5220216))

(assert (= (and b!5220213 (not c!900785)) b!5220212))

(assert (= (and b!5220216 res!2216676) b!5220214))

(assert (= (and b!5220212 c!900786) b!5220219))

(assert (= (and b!5220212 (not c!900786)) b!5220217))

(assert (= (and b!5220219 res!2216673) b!5220215))

(assert (= (and b!5220217 (not res!2216674)) b!5220218))

(assert (= (and b!5220218 res!2216675) b!5220211))

(assert (= (or b!5220215 b!5220211) bm!368324))

(assert (= (or b!5220219 b!5220218) bm!368323))

(assert (= (or b!5220214 bm!368324) bm!368325))

(declare-fun m!6267988 () Bool)

(assert (=> bm!368323 m!6267988))

(declare-fun m!6267990 () Bool)

(assert (=> b!5220216 m!6267990))

(declare-fun m!6267992 () Bool)

(assert (=> bm!368325 m!6267992))

(assert (=> b!5219801 d!1682957))

(declare-fun d!1682959 () Bool)

(declare-fun lt!2143543 () Regex!14810)

(assert (=> d!1682959 (validRegex!6546 lt!2143543)))

(assert (=> d!1682959 (= lt!2143543 (generalisedUnion!739 (unfocusZipperList!252 zl!343)))))

(assert (=> d!1682959 (= (unfocusZipper!552 zl!343) lt!2143543)))

(declare-fun bs!1212280 () Bool)

(assert (= bs!1212280 d!1682959))

(declare-fun m!6267994 () Bool)

(assert (=> bs!1212280 m!6267994))

(assert (=> bs!1212280 m!6267668))

(assert (=> bs!1212280 m!6267668))

(assert (=> bs!1212280 m!6267670))

(assert (=> b!5219790 d!1682959))

(declare-fun d!1682961 () Bool)

(declare-fun e!3249274 () Bool)

(assert (=> d!1682961 e!3249274))

(declare-fun res!2216680 () Bool)

(assert (=> d!1682961 (=> (not res!2216680) (not e!3249274))))

(declare-fun lt!2143546 () List!60731)

(declare-fun noDuplicate!1190 (List!60731) Bool)

(assert (=> d!1682961 (= res!2216680 (noDuplicate!1190 lt!2143546))))

(declare-fun choose!38819 ((Set Context!8388)) List!60731)

(assert (=> d!1682961 (= lt!2143546 (choose!38819 z!1189))))

(assert (=> d!1682961 (= (toList!8594 z!1189) lt!2143546)))

(declare-fun b!5220222 () Bool)

(declare-fun content!10745 (List!60731) (Set Context!8388))

(assert (=> b!5220222 (= e!3249274 (= (content!10745 lt!2143546) z!1189))))

(assert (= (and d!1682961 res!2216680) b!5220222))

(declare-fun m!6267996 () Bool)

(assert (=> d!1682961 m!6267996))

(declare-fun m!6267998 () Bool)

(assert (=> d!1682961 m!6267998))

(declare-fun m!6268000 () Bool)

(assert (=> b!5220222 m!6268000))

(assert (=> b!5219797 d!1682961))

(declare-fun d!1682963 () Bool)

(assert (=> d!1682963 (= (isEmpty!32524 (t!373899 (exprs!4694 (h!67055 zl!343)))) (is-Nil!60605 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5219786 d!1682963))

(declare-fun bs!1212281 () Bool)

(declare-fun d!1682965 () Bool)

(assert (= bs!1212281 (and d!1682965 d!1682879)))

(declare-fun lambda!261974 () Int)

(assert (=> bs!1212281 (= lambda!261974 lambda!261952)))

(declare-fun bs!1212282 () Bool)

(assert (= bs!1212282 (and d!1682965 d!1682913)))

(assert (=> bs!1212282 (= lambda!261974 lambda!261964)))

(declare-fun bs!1212283 () Bool)

(assert (= bs!1212283 (and d!1682965 d!1682933)))

(assert (=> bs!1212283 (= lambda!261974 lambda!261965)))

(declare-fun b!5220243 () Bool)

(declare-fun e!3249288 () Bool)

(declare-fun lt!2143549 () Regex!14810)

(declare-fun isUnion!211 (Regex!14810) Bool)

(assert (=> b!5220243 (= e!3249288 (isUnion!211 lt!2143549))))

(declare-fun b!5220244 () Bool)

(assert (=> b!5220244 (= e!3249288 (= lt!2143549 (head!11187 (unfocusZipperList!252 zl!343))))))

(declare-fun b!5220245 () Bool)

(declare-fun e!3249287 () Regex!14810)

(assert (=> b!5220245 (= e!3249287 (h!67053 (unfocusZipperList!252 zl!343)))))

(declare-fun b!5220246 () Bool)

(declare-fun e!3249291 () Regex!14810)

(assert (=> b!5220246 (= e!3249291 (Union!14810 (h!67053 (unfocusZipperList!252 zl!343)) (generalisedUnion!739 (t!373899 (unfocusZipperList!252 zl!343)))))))

(declare-fun b!5220247 () Bool)

(declare-fun e!3249290 () Bool)

(assert (=> b!5220247 (= e!3249290 (isEmpty!32524 (t!373899 (unfocusZipperList!252 zl!343))))))

(declare-fun b!5220248 () Bool)

(declare-fun e!3249289 () Bool)

(assert (=> b!5220248 (= e!3249289 e!3249288)))

(declare-fun c!900795 () Bool)

(assert (=> b!5220248 (= c!900795 (isEmpty!32524 (tail!10284 (unfocusZipperList!252 zl!343))))))

(declare-fun b!5220249 () Bool)

(assert (=> b!5220249 (= e!3249287 e!3249291)))

(declare-fun c!900796 () Bool)

(assert (=> b!5220249 (= c!900796 (is-Cons!60605 (unfocusZipperList!252 zl!343)))))

(declare-fun e!3249292 () Bool)

(assert (=> d!1682965 e!3249292))

(declare-fun res!2216686 () Bool)

(assert (=> d!1682965 (=> (not res!2216686) (not e!3249292))))

(assert (=> d!1682965 (= res!2216686 (validRegex!6546 lt!2143549))))

(assert (=> d!1682965 (= lt!2143549 e!3249287)))

(declare-fun c!900797 () Bool)

(assert (=> d!1682965 (= c!900797 e!3249290)))

(declare-fun res!2216685 () Bool)

(assert (=> d!1682965 (=> (not res!2216685) (not e!3249290))))

(assert (=> d!1682965 (= res!2216685 (is-Cons!60605 (unfocusZipperList!252 zl!343)))))

(assert (=> d!1682965 (forall!14242 (unfocusZipperList!252 zl!343) lambda!261974)))

(assert (=> d!1682965 (= (generalisedUnion!739 (unfocusZipperList!252 zl!343)) lt!2143549)))

(declare-fun b!5220250 () Bool)

(declare-fun isEmptyLang!779 (Regex!14810) Bool)

(assert (=> b!5220250 (= e!3249289 (isEmptyLang!779 lt!2143549))))

(declare-fun b!5220251 () Bool)

(assert (=> b!5220251 (= e!3249291 EmptyLang!14810)))

(declare-fun b!5220252 () Bool)

(assert (=> b!5220252 (= e!3249292 e!3249289)))

(declare-fun c!900798 () Bool)

(assert (=> b!5220252 (= c!900798 (isEmpty!32524 (unfocusZipperList!252 zl!343)))))

(assert (= (and d!1682965 res!2216685) b!5220247))

(assert (= (and d!1682965 c!900797) b!5220245))

(assert (= (and d!1682965 (not c!900797)) b!5220249))

(assert (= (and b!5220249 c!900796) b!5220246))

(assert (= (and b!5220249 (not c!900796)) b!5220251))

(assert (= (and d!1682965 res!2216686) b!5220252))

(assert (= (and b!5220252 c!900798) b!5220250))

(assert (= (and b!5220252 (not c!900798)) b!5220248))

(assert (= (and b!5220248 c!900795) b!5220244))

(assert (= (and b!5220248 (not c!900795)) b!5220243))

(declare-fun m!6268002 () Bool)

(assert (=> b!5220243 m!6268002))

(assert (=> b!5220244 m!6267668))

(declare-fun m!6268004 () Bool)

(assert (=> b!5220244 m!6268004))

(declare-fun m!6268006 () Bool)

(assert (=> b!5220250 m!6268006))

(assert (=> b!5220248 m!6267668))

(declare-fun m!6268008 () Bool)

(assert (=> b!5220248 m!6268008))

(assert (=> b!5220248 m!6268008))

(declare-fun m!6268010 () Bool)

(assert (=> b!5220248 m!6268010))

(declare-fun m!6268012 () Bool)

(assert (=> b!5220246 m!6268012))

(declare-fun m!6268014 () Bool)

(assert (=> d!1682965 m!6268014))

(assert (=> d!1682965 m!6267668))

(declare-fun m!6268016 () Bool)

(assert (=> d!1682965 m!6268016))

(declare-fun m!6268018 () Bool)

(assert (=> b!5220247 m!6268018))

(assert (=> b!5220252 m!6267668))

(declare-fun m!6268020 () Bool)

(assert (=> b!5220252 m!6268020))

(assert (=> b!5219778 d!1682965))

(declare-fun bs!1212284 () Bool)

(declare-fun d!1682967 () Bool)

(assert (= bs!1212284 (and d!1682967 d!1682879)))

(declare-fun lambda!261977 () Int)

(assert (=> bs!1212284 (= lambda!261977 lambda!261952)))

(declare-fun bs!1212285 () Bool)

(assert (= bs!1212285 (and d!1682967 d!1682913)))

(assert (=> bs!1212285 (= lambda!261977 lambda!261964)))

(declare-fun bs!1212286 () Bool)

(assert (= bs!1212286 (and d!1682967 d!1682933)))

(assert (=> bs!1212286 (= lambda!261977 lambda!261965)))

(declare-fun bs!1212287 () Bool)

(assert (= bs!1212287 (and d!1682967 d!1682965)))

(assert (=> bs!1212287 (= lambda!261977 lambda!261974)))

(declare-fun lt!2143552 () List!60729)

(assert (=> d!1682967 (forall!14242 lt!2143552 lambda!261977)))

(declare-fun e!3249295 () List!60729)

(assert (=> d!1682967 (= lt!2143552 e!3249295)))

(declare-fun c!900801 () Bool)

(assert (=> d!1682967 (= c!900801 (is-Cons!60607 zl!343))))

(assert (=> d!1682967 (= (unfocusZipperList!252 zl!343) lt!2143552)))

(declare-fun b!5220257 () Bool)

(assert (=> b!5220257 (= e!3249295 (Cons!60605 (generalisedConcat!479 (exprs!4694 (h!67055 zl!343))) (unfocusZipperList!252 (t!373901 zl!343))))))

(declare-fun b!5220258 () Bool)

(assert (=> b!5220258 (= e!3249295 Nil!60605)))

(assert (= (and d!1682967 c!900801) b!5220257))

(assert (= (and d!1682967 (not c!900801)) b!5220258))

(declare-fun m!6268022 () Bool)

(assert (=> d!1682967 m!6268022))

(assert (=> b!5220257 m!6267660))

(declare-fun m!6268024 () Bool)

(assert (=> b!5220257 m!6268024))

(assert (=> b!5219778 d!1682967))

(declare-fun d!1682969 () Bool)

(declare-fun e!3249296 () Bool)

(assert (=> d!1682969 (= (matchZipper!1054 (set.union lt!2143415 lt!2143401) (t!373900 s!2326)) e!3249296)))

(declare-fun res!2216687 () Bool)

(assert (=> d!1682969 (=> res!2216687 e!3249296)))

(assert (=> d!1682969 (= res!2216687 (matchZipper!1054 lt!2143415 (t!373900 s!2326)))))

(declare-fun lt!2143553 () Unit!152510)

(assert (=> d!1682969 (= lt!2143553 (choose!38812 lt!2143415 lt!2143401 (t!373900 s!2326)))))

(assert (=> d!1682969 (= (lemmaZipperConcatMatchesSameAsBothZippers!47 lt!2143415 lt!2143401 (t!373900 s!2326)) lt!2143553)))

(declare-fun b!5220259 () Bool)

(assert (=> b!5220259 (= e!3249296 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(assert (= (and d!1682969 (not res!2216687)) b!5220259))

(assert (=> d!1682969 m!6267650))

(assert (=> d!1682969 m!6267656))

(declare-fun m!6268026 () Bool)

(assert (=> d!1682969 m!6268026))

(assert (=> b!5220259 m!6267606))

(assert (=> b!5219788 d!1682969))

(declare-fun d!1682971 () Bool)

(declare-fun c!900802 () Bool)

(assert (=> d!1682971 (= c!900802 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249297 () Bool)

(assert (=> d!1682971 (= (matchZipper!1054 (set.union lt!2143415 lt!2143401) (t!373900 s!2326)) e!3249297)))

(declare-fun b!5220260 () Bool)

(assert (=> b!5220260 (= e!3249297 (nullableZipper!1234 (set.union lt!2143415 lt!2143401)))))

(declare-fun b!5220261 () Bool)

(assert (=> b!5220261 (= e!3249297 (matchZipper!1054 (derivationStepZipper!1078 (set.union lt!2143415 lt!2143401) (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1682971 c!900802) b!5220260))

(assert (= (and d!1682971 (not c!900802)) b!5220261))

(assert (=> d!1682971 m!6267790))

(declare-fun m!6268028 () Bool)

(assert (=> b!5220260 m!6268028))

(assert (=> b!5220261 m!6267794))

(assert (=> b!5220261 m!6267794))

(declare-fun m!6268030 () Bool)

(assert (=> b!5220261 m!6268030))

(assert (=> b!5220261 m!6267798))

(assert (=> b!5220261 m!6268030))

(assert (=> b!5220261 m!6267798))

(declare-fun m!6268032 () Bool)

(assert (=> b!5220261 m!6268032))

(assert (=> b!5219788 d!1682971))

(assert (=> b!5219787 d!1682901))

(declare-fun b!5220273 () Bool)

(declare-fun e!3249300 () Bool)

(declare-fun tp!1463475 () Bool)

(declare-fun tp!1463478 () Bool)

(assert (=> b!5220273 (= e!3249300 (and tp!1463475 tp!1463478))))

(declare-fun b!5220275 () Bool)

(declare-fun tp!1463476 () Bool)

(declare-fun tp!1463474 () Bool)

(assert (=> b!5220275 (= e!3249300 (and tp!1463476 tp!1463474))))

(assert (=> b!5219800 (= tp!1463430 e!3249300)))

(declare-fun b!5220274 () Bool)

(declare-fun tp!1463477 () Bool)

(assert (=> b!5220274 (= e!3249300 tp!1463477)))

(declare-fun b!5220272 () Bool)

(assert (=> b!5220272 (= e!3249300 tp_is_empty!38873)))

(assert (= (and b!5219800 (is-ElementMatch!14810 (regOne!30133 r!7292))) b!5220272))

(assert (= (and b!5219800 (is-Concat!23655 (regOne!30133 r!7292))) b!5220273))

(assert (= (and b!5219800 (is-Star!14810 (regOne!30133 r!7292))) b!5220274))

(assert (= (and b!5219800 (is-Union!14810 (regOne!30133 r!7292))) b!5220275))

(declare-fun b!5220277 () Bool)

(declare-fun e!3249301 () Bool)

(declare-fun tp!1463480 () Bool)

(declare-fun tp!1463483 () Bool)

(assert (=> b!5220277 (= e!3249301 (and tp!1463480 tp!1463483))))

(declare-fun b!5220279 () Bool)

(declare-fun tp!1463481 () Bool)

(declare-fun tp!1463479 () Bool)

(assert (=> b!5220279 (= e!3249301 (and tp!1463481 tp!1463479))))

(assert (=> b!5219800 (= tp!1463424 e!3249301)))

(declare-fun b!5220278 () Bool)

(declare-fun tp!1463482 () Bool)

(assert (=> b!5220278 (= e!3249301 tp!1463482)))

(declare-fun b!5220276 () Bool)

(assert (=> b!5220276 (= e!3249301 tp_is_empty!38873)))

(assert (= (and b!5219800 (is-ElementMatch!14810 (regTwo!30133 r!7292))) b!5220276))

(assert (= (and b!5219800 (is-Concat!23655 (regTwo!30133 r!7292))) b!5220277))

(assert (= (and b!5219800 (is-Star!14810 (regTwo!30133 r!7292))) b!5220278))

(assert (= (and b!5219800 (is-Union!14810 (regTwo!30133 r!7292))) b!5220279))

(declare-fun b!5220284 () Bool)

(declare-fun e!3249304 () Bool)

(declare-fun tp!1463486 () Bool)

(assert (=> b!5220284 (= e!3249304 (and tp_is_empty!38873 tp!1463486))))

(assert (=> b!5219796 (= tp!1463433 e!3249304)))

(assert (= (and b!5219796 (is-Cons!60606 (t!373900 s!2326))) b!5220284))

(declare-fun b!5220286 () Bool)

(declare-fun e!3249305 () Bool)

(declare-fun tp!1463488 () Bool)

(declare-fun tp!1463491 () Bool)

(assert (=> b!5220286 (= e!3249305 (and tp!1463488 tp!1463491))))

(declare-fun b!5220288 () Bool)

(declare-fun tp!1463489 () Bool)

(declare-fun tp!1463487 () Bool)

(assert (=> b!5220288 (= e!3249305 (and tp!1463489 tp!1463487))))

(assert (=> b!5219780 (= tp!1463432 e!3249305)))

(declare-fun b!5220287 () Bool)

(declare-fun tp!1463490 () Bool)

(assert (=> b!5220287 (= e!3249305 tp!1463490)))

(declare-fun b!5220285 () Bool)

(assert (=> b!5220285 (= e!3249305 tp_is_empty!38873)))

(assert (= (and b!5219780 (is-ElementMatch!14810 (reg!15139 r!7292))) b!5220285))

(assert (= (and b!5219780 (is-Concat!23655 (reg!15139 r!7292))) b!5220286))

(assert (= (and b!5219780 (is-Star!14810 (reg!15139 r!7292))) b!5220287))

(assert (= (and b!5219780 (is-Union!14810 (reg!15139 r!7292))) b!5220288))

(declare-fun b!5220290 () Bool)

(declare-fun e!3249306 () Bool)

(declare-fun tp!1463493 () Bool)

(declare-fun tp!1463496 () Bool)

(assert (=> b!5220290 (= e!3249306 (and tp!1463493 tp!1463496))))

(declare-fun b!5220292 () Bool)

(declare-fun tp!1463494 () Bool)

(declare-fun tp!1463492 () Bool)

(assert (=> b!5220292 (= e!3249306 (and tp!1463494 tp!1463492))))

(assert (=> b!5219777 (= tp!1463431 e!3249306)))

(declare-fun b!5220291 () Bool)

(declare-fun tp!1463495 () Bool)

(assert (=> b!5220291 (= e!3249306 tp!1463495)))

(declare-fun b!5220289 () Bool)

(assert (=> b!5220289 (= e!3249306 tp_is_empty!38873)))

(assert (= (and b!5219777 (is-ElementMatch!14810 (regOne!30132 r!7292))) b!5220289))

(assert (= (and b!5219777 (is-Concat!23655 (regOne!30132 r!7292))) b!5220290))

(assert (= (and b!5219777 (is-Star!14810 (regOne!30132 r!7292))) b!5220291))

(assert (= (and b!5219777 (is-Union!14810 (regOne!30132 r!7292))) b!5220292))

(declare-fun b!5220294 () Bool)

(declare-fun e!3249307 () Bool)

(declare-fun tp!1463498 () Bool)

(declare-fun tp!1463501 () Bool)

(assert (=> b!5220294 (= e!3249307 (and tp!1463498 tp!1463501))))

(declare-fun b!5220296 () Bool)

(declare-fun tp!1463499 () Bool)

(declare-fun tp!1463497 () Bool)

(assert (=> b!5220296 (= e!3249307 (and tp!1463499 tp!1463497))))

(assert (=> b!5219777 (= tp!1463428 e!3249307)))

(declare-fun b!5220295 () Bool)

(declare-fun tp!1463500 () Bool)

(assert (=> b!5220295 (= e!3249307 tp!1463500)))

(declare-fun b!5220293 () Bool)

(assert (=> b!5220293 (= e!3249307 tp_is_empty!38873)))

(assert (= (and b!5219777 (is-ElementMatch!14810 (regTwo!30132 r!7292))) b!5220293))

(assert (= (and b!5219777 (is-Concat!23655 (regTwo!30132 r!7292))) b!5220294))

(assert (= (and b!5219777 (is-Star!14810 (regTwo!30132 r!7292))) b!5220295))

(assert (= (and b!5219777 (is-Union!14810 (regTwo!30132 r!7292))) b!5220296))

(declare-fun b!5220304 () Bool)

(declare-fun e!3249313 () Bool)

(declare-fun tp!1463506 () Bool)

(assert (=> b!5220304 (= e!3249313 tp!1463506)))

(declare-fun b!5220303 () Bool)

(declare-fun e!3249312 () Bool)

(declare-fun tp!1463507 () Bool)

(assert (=> b!5220303 (= e!3249312 (and (inv!80273 (h!67055 (t!373901 zl!343))) e!3249313 tp!1463507))))

(assert (=> b!5219791 (= tp!1463425 e!3249312)))

(assert (= b!5220303 b!5220304))

(assert (= (and b!5219791 (is-Cons!60607 (t!373901 zl!343))) b!5220303))

(declare-fun m!6268034 () Bool)

(assert (=> b!5220303 m!6268034))

(declare-fun b!5220309 () Bool)

(declare-fun e!3249316 () Bool)

(declare-fun tp!1463512 () Bool)

(declare-fun tp!1463513 () Bool)

(assert (=> b!5220309 (= e!3249316 (and tp!1463512 tp!1463513))))

(assert (=> b!5219793 (= tp!1463427 e!3249316)))

(assert (= (and b!5219793 (is-Cons!60605 (exprs!4694 setElem!33196))) b!5220309))

(declare-fun b!5220310 () Bool)

(declare-fun e!3249317 () Bool)

(declare-fun tp!1463514 () Bool)

(declare-fun tp!1463515 () Bool)

(assert (=> b!5220310 (= e!3249317 (and tp!1463514 tp!1463515))))

(assert (=> b!5219773 (= tp!1463429 e!3249317)))

(assert (= (and b!5219773 (is-Cons!60605 (exprs!4694 (h!67055 zl!343)))) b!5220310))

(declare-fun condSetEmpty!33202 () Bool)

(assert (=> setNonEmpty!33196 (= condSetEmpty!33202 (= setRest!33196 (as set.empty (Set Context!8388))))))

(declare-fun setRes!33202 () Bool)

(assert (=> setNonEmpty!33196 (= tp!1463426 setRes!33202)))

(declare-fun setIsEmpty!33202 () Bool)

(assert (=> setIsEmpty!33202 setRes!33202))

(declare-fun tp!1463521 () Bool)

(declare-fun setElem!33202 () Context!8388)

(declare-fun setNonEmpty!33202 () Bool)

(declare-fun e!3249320 () Bool)

(assert (=> setNonEmpty!33202 (= setRes!33202 (and tp!1463521 (inv!80273 setElem!33202) e!3249320))))

(declare-fun setRest!33202 () (Set Context!8388))

(assert (=> setNonEmpty!33202 (= setRest!33196 (set.union (set.insert setElem!33202 (as set.empty (Set Context!8388))) setRest!33202))))

(declare-fun b!5220315 () Bool)

(declare-fun tp!1463520 () Bool)

(assert (=> b!5220315 (= e!3249320 tp!1463520)))

(assert (= (and setNonEmpty!33196 condSetEmpty!33202) setIsEmpty!33202))

(assert (= (and setNonEmpty!33196 (not condSetEmpty!33202)) setNonEmpty!33202))

(assert (= setNonEmpty!33202 b!5220315))

(declare-fun m!6268036 () Bool)

(assert (=> setNonEmpty!33202 m!6268036))

(declare-fun b_lambda!201847 () Bool)

(assert (= b_lambda!201841 (or b!5219789 b_lambda!201847)))

(declare-fun bs!1212288 () Bool)

(declare-fun d!1682973 () Bool)

(assert (= bs!1212288 (and d!1682973 b!5219789)))

(assert (=> bs!1212288 (= (dynLambda!23945 lambda!261934 lt!2143417) (derivationStepZipperUp!182 lt!2143417 (h!67054 s!2326)))))

(assert (=> bs!1212288 m!6267622))

(assert (=> d!1682925 d!1682973))

(declare-fun b_lambda!201849 () Bool)

(assert (= b_lambda!201843 (or b!5219789 b_lambda!201849)))

(declare-fun bs!1212289 () Bool)

(declare-fun d!1682975 () Bool)

(assert (= bs!1212289 (and d!1682975 b!5219789)))

(assert (=> bs!1212289 (= (dynLambda!23945 lambda!261934 lt!2143405) (derivationStepZipperUp!182 lt!2143405 (h!67054 s!2326)))))

(assert (=> bs!1212289 m!6267618))

(assert (=> d!1682931 d!1682975))

(declare-fun b_lambda!201851 () Bool)

(assert (= b_lambda!201845 (or b!5219789 b_lambda!201851)))

(declare-fun bs!1212290 () Bool)

(declare-fun d!1682977 () Bool)

(assert (= bs!1212290 (and d!1682977 b!5219789)))

(assert (=> bs!1212290 (= (dynLambda!23945 lambda!261934 (h!67055 zl!343)) (derivationStepZipperUp!182 (h!67055 zl!343) (h!67054 s!2326)))))

(assert (=> bs!1212290 m!6267590))

(assert (=> d!1682935 d!1682977))

(push 1)

(assert (not b!5220005))

(assert (not b!5219983))

(assert (not d!1682937))

(assert (not b!5219942))

(assert (not b!5220292))

(assert (not b!5220278))

(assert (not b!5220044))

(assert (not bm!368289))

(assert (not b!5220286))

(assert (not d!1682887))

(assert (not b_lambda!201849))

(assert (not d!1682899))

(assert (not b!5220208))

(assert (not b!5220159))

(assert (not b!5220006))

(assert (not b!5220121))

(assert (not b!5220033))

(assert (not b!5219984))

(assert (not bm!368304))

(assert (not d!1682959))

(assert (not b!5220260))

(assert (not b!5219958))

(assert (not b_lambda!201847))

(assert (not bm!368311))

(assert (not b!5219948))

(assert (not b!5220290))

(assert (not setNonEmpty!33202))

(assert (not b!5219941))

(assert (not d!1682907))

(assert (not b!5220003))

(assert (not d!1682953))

(assert (not b!5220310))

(assert (not bm!368303))

(assert (not bm!368312))

(assert (not b!5220222))

(assert tp_is_empty!38873)

(assert (not bm!368313))

(assert (not d!1682933))

(assert (not b!5219957))

(assert (not b!5220273))

(assert (not b!5220166))

(assert (not d!1682931))

(assert (not b!5220095))

(assert (not b!5219985))

(assert (not d!1682879))

(assert (not d!1682901))

(assert (not b!5220291))

(assert (not d!1682895))

(assert (not d!1682945))

(assert (not bm!368291))

(assert (not d!1682921))

(assert (not d!1682893))

(assert (not bm!368298))

(assert (not b!5220259))

(assert (not b!5219940))

(assert (not b!5220279))

(assert (not b!5220294))

(assert (not d!1682903))

(assert (not d!1682919))

(assert (not bm!368285))

(assert (not b!5220287))

(assert (not b!5219959))

(assert (not d!1682923))

(assert (not d!1682897))

(assert (not d!1682905))

(assert (not d!1682967))

(assert (not bm!368322))

(assert (not d!1682913))

(assert (not b!5220274))

(assert (not bm!368323))

(assert (not b!5220008))

(assert (not bm!368282))

(assert (not b!5219952))

(assert (not b!5220315))

(assert (not b!5220296))

(assert (not b!5220246))

(assert (not b!5220243))

(assert (not d!1682925))

(assert (not b!5220093))

(assert (not bm!368283))

(assert (not b!5220277))

(assert (not b!5220284))

(assert (not b!5219945))

(assert (not b!5220309))

(assert (not b!5220210))

(assert (not b!5220090))

(assert (not bm!368308))

(assert (not b!5220247))

(assert (not d!1682961))

(assert (not b!5219947))

(assert (not b!5219988))

(assert (not d!1682889))

(assert (not b!5220119))

(assert (not b!5220098))

(assert (not b!5220250))

(assert (not b!5220206))

(assert (not b!5220116))

(assert (not d!1682965))

(assert (not b!5220209))

(assert (not bm!368300))

(assert (not b!5220002))

(assert (not d!1682885))

(assert (not b!5220100))

(assert (not b!5220076))

(assert (not b!5220288))

(assert (not b!5220197))

(assert (not b!5220252))

(assert (not b!5220275))

(assert (not d!1682891))

(assert (not bm!368319))

(assert (not b!5220244))

(assert (not b!5220103))

(assert (not b!5219962))

(assert (not bs!1212290))

(assert (not b!5220198))

(assert (not b!5219961))

(assert (not bm!368309))

(assert (not b!5220007))

(assert (not b!5220107))

(assert (not b!5220248))

(assert (not bs!1212289))

(assert (not b_lambda!201851))

(assert (not b!5220004))

(assert (not b!5220216))

(assert (not bm!368318))

(assert (not d!1682969))

(assert (not d!1682881))

(assert (not b!5219960))

(assert (not b!5220261))

(assert (not d!1682971))

(assert (not bm!368288))

(assert (not b!5220295))

(assert (not b!5220257))

(assert (not d!1682883))

(assert (not b!5220124))

(assert (not bm!368325))

(assert (not bs!1212288))

(assert (not d!1682935))

(assert (not bm!368305))

(assert (not b!5219987))

(assert (not d!1682951))

(assert (not d!1682929))

(assert (not b!5220303))

(assert (not b!5220304))

(assert (not b!5219986))

(assert (not b!5219949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5220712 () Bool)

(declare-fun e!3249551 () Bool)

(declare-fun call!368391 () Bool)

(assert (=> b!5220712 (= e!3249551 call!368391)))

(declare-fun bm!368384 () Bool)

(declare-fun call!368389 () Bool)

(declare-fun c!900914 () Bool)

(assert (=> bm!368384 (= call!368389 (validRegex!6546 (ite c!900914 (regOne!30133 lt!2143543) (regOne!30132 lt!2143543))))))

(declare-fun b!5220713 () Bool)

(declare-fun e!3249546 () Bool)

(declare-fun e!3249547 () Bool)

(assert (=> b!5220713 (= e!3249546 e!3249547)))

(assert (=> b!5220713 (= c!900914 (is-Union!14810 lt!2143543))))

(declare-fun bm!368385 () Bool)

(declare-fun call!368390 () Bool)

(assert (=> bm!368385 (= call!368391 call!368390)))

(declare-fun d!1683079 () Bool)

(declare-fun res!2216814 () Bool)

(declare-fun e!3249548 () Bool)

(assert (=> d!1683079 (=> res!2216814 e!3249548)))

(assert (=> d!1683079 (= res!2216814 (is-ElementMatch!14810 lt!2143543))))

(assert (=> d!1683079 (= (validRegex!6546 lt!2143543) e!3249548)))

(declare-fun b!5220714 () Bool)

(assert (=> b!5220714 (= e!3249548 e!3249546)))

(declare-fun c!900913 () Bool)

(assert (=> b!5220714 (= c!900913 (is-Star!14810 lt!2143543))))

(declare-fun b!5220715 () Bool)

(declare-fun e!3249549 () Bool)

(assert (=> b!5220715 (= e!3249549 call!368390)))

(declare-fun b!5220716 () Bool)

(declare-fun e!3249552 () Bool)

(assert (=> b!5220716 (= e!3249552 call!368391)))

(declare-fun b!5220717 () Bool)

(assert (=> b!5220717 (= e!3249546 e!3249549)))

(declare-fun res!2216813 () Bool)

(assert (=> b!5220717 (= res!2216813 (not (nullable!4979 (reg!15139 lt!2143543))))))

(assert (=> b!5220717 (=> (not res!2216813) (not e!3249549))))

(declare-fun bm!368386 () Bool)

(assert (=> bm!368386 (= call!368390 (validRegex!6546 (ite c!900913 (reg!15139 lt!2143543) (ite c!900914 (regTwo!30133 lt!2143543) (regTwo!30132 lt!2143543)))))))

(declare-fun b!5220718 () Bool)

(declare-fun res!2216811 () Bool)

(declare-fun e!3249550 () Bool)

(assert (=> b!5220718 (=> res!2216811 e!3249550)))

(assert (=> b!5220718 (= res!2216811 (not (is-Concat!23655 lt!2143543)))))

(assert (=> b!5220718 (= e!3249547 e!3249550)))

(declare-fun b!5220719 () Bool)

(assert (=> b!5220719 (= e!3249550 e!3249551)))

(declare-fun res!2216812 () Bool)

(assert (=> b!5220719 (=> (not res!2216812) (not e!3249551))))

(assert (=> b!5220719 (= res!2216812 call!368389)))

(declare-fun b!5220720 () Bool)

(declare-fun res!2216810 () Bool)

(assert (=> b!5220720 (=> (not res!2216810) (not e!3249552))))

(assert (=> b!5220720 (= res!2216810 call!368389)))

(assert (=> b!5220720 (= e!3249547 e!3249552)))

(assert (= (and d!1683079 (not res!2216814)) b!5220714))

(assert (= (and b!5220714 c!900913) b!5220717))

(assert (= (and b!5220714 (not c!900913)) b!5220713))

(assert (= (and b!5220717 res!2216813) b!5220715))

(assert (= (and b!5220713 c!900914) b!5220720))

(assert (= (and b!5220713 (not c!900914)) b!5220718))

(assert (= (and b!5220720 res!2216810) b!5220716))

(assert (= (and b!5220718 (not res!2216811)) b!5220719))

(assert (= (and b!5220719 res!2216812) b!5220712))

(assert (= (or b!5220716 b!5220712) bm!368385))

(assert (= (or b!5220720 b!5220719) bm!368384))

(assert (= (or b!5220715 bm!368385) bm!368386))

(declare-fun m!6268306 () Bool)

(assert (=> bm!368384 m!6268306))

(declare-fun m!6268308 () Bool)

(assert (=> b!5220717 m!6268308))

(declare-fun m!6268310 () Bool)

(assert (=> bm!368386 m!6268310))

(assert (=> d!1682959 d!1683079))

(assert (=> d!1682959 d!1682965))

(assert (=> d!1682959 d!1682967))

(declare-fun bs!1212332 () Bool)

(declare-fun d!1683081 () Bool)

(assert (= bs!1212332 (and d!1683081 d!1682965)))

(declare-fun lambda!262006 () Int)

(assert (=> bs!1212332 (= lambda!262006 lambda!261974)))

(declare-fun bs!1212333 () Bool)

(assert (= bs!1212333 (and d!1683081 d!1682967)))

(assert (=> bs!1212333 (= lambda!262006 lambda!261977)))

(declare-fun bs!1212334 () Bool)

(assert (= bs!1212334 (and d!1683081 d!1682933)))

(assert (=> bs!1212334 (= lambda!262006 lambda!261965)))

(declare-fun bs!1212335 () Bool)

(assert (= bs!1212335 (and d!1683081 d!1682879)))

(assert (=> bs!1212335 (= lambda!262006 lambda!261952)))

(declare-fun bs!1212336 () Bool)

(assert (= bs!1212336 (and d!1683081 d!1682913)))

(assert (=> bs!1212336 (= lambda!262006 lambda!261964)))

(declare-fun b!5220721 () Bool)

(declare-fun e!3249554 () Bool)

(declare-fun lt!2143600 () Regex!14810)

(assert (=> b!5220721 (= e!3249554 (isUnion!211 lt!2143600))))

(declare-fun b!5220722 () Bool)

(assert (=> b!5220722 (= e!3249554 (= lt!2143600 (head!11187 (t!373899 (unfocusZipperList!252 zl!343)))))))

(declare-fun b!5220723 () Bool)

(declare-fun e!3249553 () Regex!14810)

(assert (=> b!5220723 (= e!3249553 (h!67053 (t!373899 (unfocusZipperList!252 zl!343))))))

(declare-fun b!5220724 () Bool)

(declare-fun e!3249557 () Regex!14810)

(assert (=> b!5220724 (= e!3249557 (Union!14810 (h!67053 (t!373899 (unfocusZipperList!252 zl!343))) (generalisedUnion!739 (t!373899 (t!373899 (unfocusZipperList!252 zl!343))))))))

(declare-fun b!5220725 () Bool)

(declare-fun e!3249556 () Bool)

(assert (=> b!5220725 (= e!3249556 (isEmpty!32524 (t!373899 (t!373899 (unfocusZipperList!252 zl!343)))))))

(declare-fun b!5220726 () Bool)

(declare-fun e!3249555 () Bool)

(assert (=> b!5220726 (= e!3249555 e!3249554)))

(declare-fun c!900915 () Bool)

(assert (=> b!5220726 (= c!900915 (isEmpty!32524 (tail!10284 (t!373899 (unfocusZipperList!252 zl!343)))))))

(declare-fun b!5220727 () Bool)

(assert (=> b!5220727 (= e!3249553 e!3249557)))

(declare-fun c!900916 () Bool)

(assert (=> b!5220727 (= c!900916 (is-Cons!60605 (t!373899 (unfocusZipperList!252 zl!343))))))

(declare-fun e!3249558 () Bool)

(assert (=> d!1683081 e!3249558))

(declare-fun res!2216816 () Bool)

(assert (=> d!1683081 (=> (not res!2216816) (not e!3249558))))

(assert (=> d!1683081 (= res!2216816 (validRegex!6546 lt!2143600))))

(assert (=> d!1683081 (= lt!2143600 e!3249553)))

(declare-fun c!900917 () Bool)

(assert (=> d!1683081 (= c!900917 e!3249556)))

(declare-fun res!2216815 () Bool)

(assert (=> d!1683081 (=> (not res!2216815) (not e!3249556))))

(assert (=> d!1683081 (= res!2216815 (is-Cons!60605 (t!373899 (unfocusZipperList!252 zl!343))))))

(assert (=> d!1683081 (forall!14242 (t!373899 (unfocusZipperList!252 zl!343)) lambda!262006)))

(assert (=> d!1683081 (= (generalisedUnion!739 (t!373899 (unfocusZipperList!252 zl!343))) lt!2143600)))

(declare-fun b!5220728 () Bool)

(assert (=> b!5220728 (= e!3249555 (isEmptyLang!779 lt!2143600))))

(declare-fun b!5220729 () Bool)

(assert (=> b!5220729 (= e!3249557 EmptyLang!14810)))

(declare-fun b!5220730 () Bool)

(assert (=> b!5220730 (= e!3249558 e!3249555)))

(declare-fun c!900918 () Bool)

(assert (=> b!5220730 (= c!900918 (isEmpty!32524 (t!373899 (unfocusZipperList!252 zl!343))))))

(assert (= (and d!1683081 res!2216815) b!5220725))

(assert (= (and d!1683081 c!900917) b!5220723))

(assert (= (and d!1683081 (not c!900917)) b!5220727))

(assert (= (and b!5220727 c!900916) b!5220724))

(assert (= (and b!5220727 (not c!900916)) b!5220729))

(assert (= (and d!1683081 res!2216816) b!5220730))

(assert (= (and b!5220730 c!900918) b!5220728))

(assert (= (and b!5220730 (not c!900918)) b!5220726))

(assert (= (and b!5220726 c!900915) b!5220722))

(assert (= (and b!5220726 (not c!900915)) b!5220721))

(declare-fun m!6268312 () Bool)

(assert (=> b!5220721 m!6268312))

(declare-fun m!6268314 () Bool)

(assert (=> b!5220722 m!6268314))

(declare-fun m!6268316 () Bool)

(assert (=> b!5220728 m!6268316))

(declare-fun m!6268318 () Bool)

(assert (=> b!5220726 m!6268318))

(assert (=> b!5220726 m!6268318))

(declare-fun m!6268320 () Bool)

(assert (=> b!5220726 m!6268320))

(declare-fun m!6268322 () Bool)

(assert (=> b!5220724 m!6268322))

(declare-fun m!6268324 () Bool)

(assert (=> d!1683081 m!6268324))

(declare-fun m!6268326 () Bool)

(assert (=> d!1683081 m!6268326))

(declare-fun m!6268328 () Bool)

(assert (=> b!5220725 m!6268328))

(assert (=> b!5220730 m!6268018))

(assert (=> b!5220246 d!1683081))

(declare-fun b!5220731 () Bool)

(declare-fun e!3249561 () (Set Context!8388))

(declare-fun call!368392 () (Set Context!8388))

(assert (=> b!5220731 (= e!3249561 (set.union call!368392 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))) (h!67054 s!2326))))))

(declare-fun b!5220732 () Bool)

(declare-fun e!3249560 () (Set Context!8388))

(assert (=> b!5220732 (= e!3249560 (as set.empty (Set Context!8388)))))

(declare-fun bm!368387 () Bool)

(assert (=> bm!368387 (= call!368392 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))) (h!67054 s!2326)))))

(declare-fun b!5220733 () Bool)

(assert (=> b!5220733 (= e!3249561 e!3249560)))

(declare-fun c!900919 () Bool)

(assert (=> b!5220733 (= c!900919 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))))

(declare-fun b!5220735 () Bool)

(assert (=> b!5220735 (= e!3249560 call!368392)))

(declare-fun d!1683083 () Bool)

(declare-fun c!900920 () Bool)

(declare-fun e!3249559 () Bool)

(assert (=> d!1683083 (= c!900920 e!3249559)))

(declare-fun res!2216817 () Bool)

(assert (=> d!1683083 (=> (not res!2216817) (not e!3249559))))

(assert (=> d!1683083 (= res!2216817 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))))

(assert (=> d!1683083 (= (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326)) e!3249561)))

(declare-fun b!5220734 () Bool)

(assert (=> b!5220734 (= e!3249559 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))))))

(assert (= (and d!1683083 res!2216817) b!5220734))

(assert (= (and d!1683083 c!900920) b!5220731))

(assert (= (and d!1683083 (not c!900920)) b!5220733))

(assert (= (and b!5220733 c!900919) b!5220735))

(assert (= (and b!5220733 (not c!900919)) b!5220732))

(assert (= (or b!5220731 b!5220735) bm!368387))

(declare-fun m!6268330 () Bool)

(assert (=> b!5220731 m!6268330))

(declare-fun m!6268332 () Bool)

(assert (=> bm!368387 m!6268332))

(declare-fun m!6268334 () Bool)

(assert (=> b!5220734 m!6268334))

(assert (=> b!5220100 d!1683083))

(declare-fun b!5220736 () Bool)

(declare-fun e!3249562 () (Set Context!8388))

(declare-fun call!368398 () (Set Context!8388))

(assert (=> b!5220736 (= e!3249562 call!368398)))

(declare-fun bm!368388 () Bool)

(declare-fun call!368393 () (Set Context!8388))

(assert (=> bm!368388 (= call!368398 call!368393)))

(declare-fun b!5220737 () Bool)

(declare-fun e!3249567 () (Set Context!8388))

(assert (=> b!5220737 (= e!3249567 call!368398)))

(declare-fun b!5220738 () Bool)

(declare-fun e!3249563 () Bool)

(assert (=> b!5220738 (= e!3249563 (nullable!4979 (regOne!30132 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))))))))

(declare-fun e!3249566 () (Set Context!8388))

(declare-fun b!5220739 () Bool)

(assert (=> b!5220739 (= e!3249566 (set.insert (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368389 () Bool)

(declare-fun call!368397 () List!60729)

(declare-fun call!368396 () List!60729)

(assert (=> bm!368389 (= call!368397 call!368396)))

(declare-fun b!5220740 () Bool)

(declare-fun e!3249564 () (Set Context!8388))

(declare-fun call!368395 () (Set Context!8388))

(assert (=> b!5220740 (= e!3249564 (set.union call!368395 call!368393))))

(declare-fun bm!368390 () Bool)

(declare-fun c!900925 () Bool)

(declare-fun c!900924 () Bool)

(assert (=> bm!368390 (= call!368396 ($colon$colon!1284 (exprs!4694 (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295))) (ite (or c!900924 c!900925) (regTwo!30132 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))))))))

(declare-fun b!5220741 () Bool)

(declare-fun e!3249565 () (Set Context!8388))

(declare-fun call!368394 () (Set Context!8388))

(assert (=> b!5220741 (= e!3249565 (set.union call!368395 call!368394))))

(declare-fun c!900921 () Bool)

(declare-fun bm!368391 () Bool)

(assert (=> bm!368391 (= call!368395 (derivationStepZipperDown!258 (ite c!900921 (regOne!30133 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (regOne!30132 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))))) (ite c!900921 (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295)) (Context!8389 call!368396)) (h!67054 s!2326)))))

(declare-fun b!5220742 () Bool)

(assert (=> b!5220742 (= e!3249562 (as set.empty (Set Context!8388)))))

(declare-fun b!5220743 () Bool)

(assert (=> b!5220743 (= e!3249566 e!3249565)))

(assert (=> b!5220743 (= c!900921 (is-Union!14810 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))))))

(declare-fun c!900923 () Bool)

(declare-fun b!5220744 () Bool)

(assert (=> b!5220744 (= c!900923 (is-Star!14810 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5220744 (= e!3249567 e!3249562)))

(declare-fun b!5220745 () Bool)

(assert (=> b!5220745 (= c!900924 e!3249563)))

(declare-fun res!2216818 () Bool)

(assert (=> b!5220745 (=> (not res!2216818) (not e!3249563))))

(assert (=> b!5220745 (= res!2216818 (is-Concat!23655 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5220745 (= e!3249565 e!3249564)))

(declare-fun c!900922 () Bool)

(declare-fun d!1683085 () Bool)

(assert (=> d!1683085 (= c!900922 (and (is-ElementMatch!14810 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (= (c!900678 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (h!67054 s!2326))))))

(assert (=> d!1683085 (= (derivationStepZipperDown!258 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))) (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295)) (h!67054 s!2326)) e!3249566)))

(declare-fun bm!368392 () Bool)

(assert (=> bm!368392 (= call!368393 call!368394)))

(declare-fun b!5220746 () Bool)

(assert (=> b!5220746 (= e!3249564 e!3249567)))

(assert (=> b!5220746 (= c!900925 (is-Concat!23655 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))))))

(declare-fun bm!368393 () Bool)

(assert (=> bm!368393 (= call!368394 (derivationStepZipperDown!258 (ite c!900921 (regTwo!30133 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (ite c!900924 (regTwo!30132 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (ite c!900925 (regOne!30132 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292))))))) (reg!15139 (ite c!900734 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (ite c!900737 (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (ite c!900738 (regOne!30132 (regOne!30133 (regOne!30132 r!7292))) (reg!15139 (regOne!30133 (regOne!30132 r!7292)))))))))) (ite (or c!900921 c!900924) (ite (or c!900734 c!900737) lt!2143408 (Context!8389 call!368295)) (Context!8389 call!368397)) (h!67054 s!2326)))))

(assert (= (and d!1683085 c!900922) b!5220739))

(assert (= (and d!1683085 (not c!900922)) b!5220743))

(assert (= (and b!5220743 c!900921) b!5220741))

(assert (= (and b!5220743 (not c!900921)) b!5220745))

(assert (= (and b!5220745 res!2216818) b!5220738))

(assert (= (and b!5220745 c!900924) b!5220740))

(assert (= (and b!5220745 (not c!900924)) b!5220746))

(assert (= (and b!5220746 c!900925) b!5220737))

(assert (= (and b!5220746 (not c!900925)) b!5220744))

(assert (= (and b!5220744 c!900923) b!5220736))

(assert (= (and b!5220744 (not c!900923)) b!5220742))

(assert (= (or b!5220737 b!5220736) bm!368389))

(assert (= (or b!5220737 b!5220736) bm!368388))

(assert (= (or b!5220740 bm!368389) bm!368390))

(assert (= (or b!5220740 bm!368388) bm!368392))

(assert (= (or b!5220741 bm!368392) bm!368393))

(assert (= (or b!5220741 b!5220740) bm!368391))

(declare-fun m!6268336 () Bool)

(assert (=> b!5220739 m!6268336))

(declare-fun m!6268338 () Bool)

(assert (=> b!5220738 m!6268338))

(declare-fun m!6268340 () Bool)

(assert (=> bm!368393 m!6268340))

(declare-fun m!6268342 () Bool)

(assert (=> bm!368390 m!6268342))

(declare-fun m!6268344 () Bool)

(assert (=> bm!368391 m!6268344))

(assert (=> bm!368291 d!1683085))

(assert (=> d!1682935 d!1682945))

(declare-fun d!1683087 () Bool)

(assert (=> d!1683087 (= (flatMap!537 z!1189 lambda!261934) (dynLambda!23945 lambda!261934 (h!67055 zl!343)))))

(assert (=> d!1683087 true))

(declare-fun _$13!1718 () Unit!152510)

(assert (=> d!1683087 (= (choose!38817 z!1189 (h!67055 zl!343) lambda!261934) _$13!1718)))

(declare-fun b_lambda!201865 () Bool)

(assert (=> (not b_lambda!201865) (not d!1683087)))

(declare-fun bs!1212337 () Bool)

(assert (= bs!1212337 d!1683087))

(assert (=> bs!1212337 m!6267588))

(assert (=> bs!1212337 m!6267932))

(assert (=> d!1682935 d!1683087))

(declare-fun b!5220747 () Bool)

(declare-fun e!3249570 () Bool)

(assert (=> b!5220747 (= e!3249570 (nullable!4979 (regTwo!30132 r!7292)))))

(declare-fun d!1683089 () Bool)

(declare-fun e!3249569 () Bool)

(assert (=> d!1683089 e!3249569))

(declare-fun c!900927 () Bool)

(assert (=> d!1683089 (= c!900927 (is-EmptyExpr!14810 (regTwo!30132 r!7292)))))

(declare-fun lt!2143601 () Bool)

(assert (=> d!1683089 (= lt!2143601 e!3249570)))

(declare-fun c!900928 () Bool)

(assert (=> d!1683089 (= c!900928 (isEmpty!32527 (_2!35312 (get!20825 lt!2143520))))))

(assert (=> d!1683089 (validRegex!6546 (regTwo!30132 r!7292))))

(assert (=> d!1683089 (= (matchR!6995 (regTwo!30132 r!7292) (_2!35312 (get!20825 lt!2143520))) lt!2143601)))

(declare-fun b!5220748 () Bool)

(declare-fun res!2216826 () Bool)

(declare-fun e!3249572 () Bool)

(assert (=> b!5220748 (=> res!2216826 e!3249572)))

(assert (=> b!5220748 (= res!2216826 (not (isEmpty!32527 (tail!10285 (_2!35312 (get!20825 lt!2143520))))))))

(declare-fun b!5220749 () Bool)

(declare-fun res!2216820 () Bool)

(declare-fun e!3249573 () Bool)

(assert (=> b!5220749 (=> (not res!2216820) (not e!3249573))))

(declare-fun call!368399 () Bool)

(assert (=> b!5220749 (= res!2216820 (not call!368399))))

(declare-fun b!5220750 () Bool)

(declare-fun res!2216819 () Bool)

(declare-fun e!3249574 () Bool)

(assert (=> b!5220750 (=> res!2216819 e!3249574)))

(assert (=> b!5220750 (= res!2216819 e!3249573)))

(declare-fun res!2216824 () Bool)

(assert (=> b!5220750 (=> (not res!2216824) (not e!3249573))))

(assert (=> b!5220750 (= res!2216824 lt!2143601)))

(declare-fun b!5220751 () Bool)

(declare-fun res!2216821 () Bool)

(assert (=> b!5220751 (=> res!2216821 e!3249574)))

(assert (=> b!5220751 (= res!2216821 (not (is-ElementMatch!14810 (regTwo!30132 r!7292))))))

(declare-fun e!3249568 () Bool)

(assert (=> b!5220751 (= e!3249568 e!3249574)))

(declare-fun b!5220752 () Bool)

(declare-fun e!3249571 () Bool)

(assert (=> b!5220752 (= e!3249574 e!3249571)))

(declare-fun res!2216823 () Bool)

(assert (=> b!5220752 (=> (not res!2216823) (not e!3249571))))

(assert (=> b!5220752 (= res!2216823 (not lt!2143601))))

(declare-fun b!5220753 () Bool)

(assert (=> b!5220753 (= e!3249569 e!3249568)))

(declare-fun c!900926 () Bool)

(assert (=> b!5220753 (= c!900926 (is-EmptyLang!14810 (regTwo!30132 r!7292)))))

(declare-fun b!5220754 () Bool)

(assert (=> b!5220754 (= e!3249568 (not lt!2143601))))

(declare-fun b!5220755 () Bool)

(assert (=> b!5220755 (= e!3249571 e!3249572)))

(declare-fun res!2216825 () Bool)

(assert (=> b!5220755 (=> res!2216825 e!3249572)))

(assert (=> b!5220755 (= res!2216825 call!368399)))

(declare-fun b!5220756 () Bool)

(assert (=> b!5220756 (= e!3249570 (matchR!6995 (derivativeStep!4056 (regTwo!30132 r!7292) (head!11188 (_2!35312 (get!20825 lt!2143520)))) (tail!10285 (_2!35312 (get!20825 lt!2143520)))))))

(declare-fun bm!368394 () Bool)

(assert (=> bm!368394 (= call!368399 (isEmpty!32527 (_2!35312 (get!20825 lt!2143520))))))

(declare-fun b!5220757 () Bool)

(assert (=> b!5220757 (= e!3249569 (= lt!2143601 call!368399))))

(declare-fun b!5220758 () Bool)

(assert (=> b!5220758 (= e!3249572 (not (= (head!11188 (_2!35312 (get!20825 lt!2143520))) (c!900678 (regTwo!30132 r!7292)))))))

(declare-fun b!5220759 () Bool)

(declare-fun res!2216822 () Bool)

(assert (=> b!5220759 (=> (not res!2216822) (not e!3249573))))

(assert (=> b!5220759 (= res!2216822 (isEmpty!32527 (tail!10285 (_2!35312 (get!20825 lt!2143520)))))))

(declare-fun b!5220760 () Bool)

(assert (=> b!5220760 (= e!3249573 (= (head!11188 (_2!35312 (get!20825 lt!2143520))) (c!900678 (regTwo!30132 r!7292))))))

(assert (= (and d!1683089 c!900928) b!5220747))

(assert (= (and d!1683089 (not c!900928)) b!5220756))

(assert (= (and d!1683089 c!900927) b!5220757))

(assert (= (and d!1683089 (not c!900927)) b!5220753))

(assert (= (and b!5220753 c!900926) b!5220754))

(assert (= (and b!5220753 (not c!900926)) b!5220751))

(assert (= (and b!5220751 (not res!2216821)) b!5220750))

(assert (= (and b!5220750 res!2216824) b!5220749))

(assert (= (and b!5220749 res!2216820) b!5220759))

(assert (= (and b!5220759 res!2216822) b!5220760))

(assert (= (and b!5220750 (not res!2216819)) b!5220752))

(assert (= (and b!5220752 res!2216823) b!5220755))

(assert (= (and b!5220755 (not res!2216825)) b!5220748))

(assert (= (and b!5220748 (not res!2216826)) b!5220758))

(assert (= (or b!5220757 b!5220749 b!5220755) bm!368394))

(declare-fun m!6268346 () Bool)

(assert (=> b!5220748 m!6268346))

(assert (=> b!5220748 m!6268346))

(declare-fun m!6268348 () Bool)

(assert (=> b!5220748 m!6268348))

(declare-fun m!6268350 () Bool)

(assert (=> b!5220760 m!6268350))

(assert (=> b!5220756 m!6268350))

(assert (=> b!5220756 m!6268350))

(declare-fun m!6268352 () Bool)

(assert (=> b!5220756 m!6268352))

(assert (=> b!5220756 m!6268346))

(assert (=> b!5220756 m!6268352))

(assert (=> b!5220756 m!6268346))

(declare-fun m!6268354 () Bool)

(assert (=> b!5220756 m!6268354))

(assert (=> b!5220758 m!6268350))

(assert (=> b!5220759 m!6268346))

(assert (=> b!5220759 m!6268346))

(assert (=> b!5220759 m!6268348))

(declare-fun m!6268356 () Bool)

(assert (=> b!5220747 m!6268356))

(declare-fun m!6268358 () Bool)

(assert (=> d!1683089 m!6268358))

(declare-fun m!6268360 () Bool)

(assert (=> d!1683089 m!6268360))

(assert (=> bm!368394 m!6268358))

(assert (=> b!5219988 d!1683089))

(declare-fun d!1683091 () Bool)

(assert (=> d!1683091 (= (get!20825 lt!2143520) (v!50949 lt!2143520))))

(assert (=> b!5219988 d!1683091))

(declare-fun b!5220770 () Bool)

(declare-fun e!3249580 () List!60730)

(assert (=> b!5220770 (= e!3249580 (Cons!60606 (h!67054 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))) (++!13214 (t!373900 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))) (t!373900 s!2326))))))

(declare-fun b!5220769 () Bool)

(assert (=> b!5220769 (= e!3249580 (t!373900 s!2326))))

(declare-fun b!5220772 () Bool)

(declare-fun e!3249579 () Bool)

(declare-fun lt!2143604 () List!60730)

(assert (=> b!5220772 (= e!3249579 (or (not (= (t!373900 s!2326) Nil!60606)) (= lt!2143604 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)))))))

(declare-fun b!5220771 () Bool)

(declare-fun res!2216831 () Bool)

(assert (=> b!5220771 (=> (not res!2216831) (not e!3249579))))

(declare-fun size!39725 (List!60730) Int)

(assert (=> b!5220771 (= res!2216831 (= (size!39725 lt!2143604) (+ (size!39725 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))) (size!39725 (t!373900 s!2326)))))))

(declare-fun d!1683093 () Bool)

(assert (=> d!1683093 e!3249579))

(declare-fun res!2216832 () Bool)

(assert (=> d!1683093 (=> (not res!2216832) (not e!3249579))))

(declare-fun content!10747 (List!60730) (Set C!29890))

(assert (=> d!1683093 (= res!2216832 (= (content!10747 lt!2143604) (set.union (content!10747 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))) (content!10747 (t!373900 s!2326)))))))

(assert (=> d!1683093 (= lt!2143604 e!3249580)))

(declare-fun c!900931 () Bool)

(assert (=> d!1683093 (= c!900931 (is-Nil!60606 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))))))

(assert (=> d!1683093 (= (++!13214 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326)) lt!2143604)))

(assert (= (and d!1683093 c!900931) b!5220769))

(assert (= (and d!1683093 (not c!900931)) b!5220770))

(assert (= (and d!1683093 res!2216832) b!5220771))

(assert (= (and b!5220771 res!2216831) b!5220772))

(declare-fun m!6268362 () Bool)

(assert (=> b!5220770 m!6268362))

(declare-fun m!6268364 () Bool)

(assert (=> b!5220771 m!6268364))

(assert (=> b!5220771 m!6267830))

(declare-fun m!6268366 () Bool)

(assert (=> b!5220771 m!6268366))

(declare-fun m!6268368 () Bool)

(assert (=> b!5220771 m!6268368))

(declare-fun m!6268370 () Bool)

(assert (=> d!1683093 m!6268370))

(assert (=> d!1683093 m!6267830))

(declare-fun m!6268372 () Bool)

(assert (=> d!1683093 m!6268372))

(declare-fun m!6268374 () Bool)

(assert (=> d!1683093 m!6268374))

(assert (=> b!5219984 d!1683093))

(declare-fun b!5220774 () Bool)

(declare-fun e!3249582 () List!60730)

(assert (=> b!5220774 (= e!3249582 (Cons!60606 (h!67054 Nil!60606) (++!13214 (t!373900 Nil!60606) (Cons!60606 (h!67054 s!2326) Nil!60606))))))

(declare-fun b!5220773 () Bool)

(assert (=> b!5220773 (= e!3249582 (Cons!60606 (h!67054 s!2326) Nil!60606))))

(declare-fun b!5220776 () Bool)

(declare-fun e!3249581 () Bool)

(declare-fun lt!2143605 () List!60730)

(assert (=> b!5220776 (= e!3249581 (or (not (= (Cons!60606 (h!67054 s!2326) Nil!60606) Nil!60606)) (= lt!2143605 Nil!60606)))))

(declare-fun b!5220775 () Bool)

(declare-fun res!2216833 () Bool)

(assert (=> b!5220775 (=> (not res!2216833) (not e!3249581))))

(assert (=> b!5220775 (= res!2216833 (= (size!39725 lt!2143605) (+ (size!39725 Nil!60606) (size!39725 (Cons!60606 (h!67054 s!2326) Nil!60606)))))))

(declare-fun d!1683095 () Bool)

(assert (=> d!1683095 e!3249581))

(declare-fun res!2216834 () Bool)

(assert (=> d!1683095 (=> (not res!2216834) (not e!3249581))))

(assert (=> d!1683095 (= res!2216834 (= (content!10747 lt!2143605) (set.union (content!10747 Nil!60606) (content!10747 (Cons!60606 (h!67054 s!2326) Nil!60606)))))))

(assert (=> d!1683095 (= lt!2143605 e!3249582)))

(declare-fun c!900932 () Bool)

(assert (=> d!1683095 (= c!900932 (is-Nil!60606 Nil!60606))))

(assert (=> d!1683095 (= (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) lt!2143605)))

(assert (= (and d!1683095 c!900932) b!5220773))

(assert (= (and d!1683095 (not c!900932)) b!5220774))

(assert (= (and d!1683095 res!2216834) b!5220775))

(assert (= (and b!5220775 res!2216833) b!5220776))

(declare-fun m!6268376 () Bool)

(assert (=> b!5220774 m!6268376))

(declare-fun m!6268378 () Bool)

(assert (=> b!5220775 m!6268378))

(declare-fun m!6268380 () Bool)

(assert (=> b!5220775 m!6268380))

(declare-fun m!6268382 () Bool)

(assert (=> b!5220775 m!6268382))

(declare-fun m!6268384 () Bool)

(assert (=> d!1683095 m!6268384))

(declare-fun m!6268386 () Bool)

(assert (=> d!1683095 m!6268386))

(declare-fun m!6268388 () Bool)

(assert (=> d!1683095 m!6268388))

(assert (=> b!5219984 d!1683095))

(declare-fun d!1683097 () Bool)

(assert (=> d!1683097 (= (++!13214 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326)) s!2326)))

(declare-fun lt!2143608 () Unit!152510)

(declare-fun choose!38828 (List!60730 C!29890 List!60730 List!60730) Unit!152510)

(assert (=> d!1683097 (= lt!2143608 (choose!38828 Nil!60606 (h!67054 s!2326) (t!373900 s!2326) s!2326))))

(assert (=> d!1683097 (= (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) (t!373900 s!2326))) s!2326)))

(assert (=> d!1683097 (= (lemmaMoveElementToOtherListKeepsConcatEq!1629 Nil!60606 (h!67054 s!2326) (t!373900 s!2326) s!2326) lt!2143608)))

(declare-fun bs!1212338 () Bool)

(assert (= bs!1212338 d!1683097))

(assert (=> bs!1212338 m!6267830))

(assert (=> bs!1212338 m!6267830))

(assert (=> bs!1212338 m!6267832))

(declare-fun m!6268390 () Bool)

(assert (=> bs!1212338 m!6268390))

(declare-fun m!6268392 () Bool)

(assert (=> bs!1212338 m!6268392))

(assert (=> b!5219984 d!1683097))

(declare-fun b!5220777 () Bool)

(declare-fun e!3249586 () Option!14921)

(assert (=> b!5220777 (= e!3249586 None!14920)))

(declare-fun b!5220778 () Bool)

(declare-fun e!3249583 () Option!14921)

(assert (=> b!5220778 (= e!3249583 (Some!14920 (tuple2!64019 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326))))))

(declare-fun b!5220779 () Bool)

(declare-fun res!2216839 () Bool)

(declare-fun e!3249587 () Bool)

(assert (=> b!5220779 (=> (not res!2216839) (not e!3249587))))

(declare-fun lt!2143609 () Option!14921)

(assert (=> b!5220779 (= res!2216839 (matchR!6995 (regOne!30132 r!7292) (_1!35312 (get!20825 lt!2143609))))))

(declare-fun b!5220780 () Bool)

(declare-fun lt!2143611 () Unit!152510)

(declare-fun lt!2143610 () Unit!152510)

(assert (=> b!5220780 (= lt!2143611 lt!2143610)))

(assert (=> b!5220780 (= (++!13214 (++!13214 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (Cons!60606 (h!67054 (t!373900 s!2326)) Nil!60606)) (t!373900 (t!373900 s!2326))) s!2326)))

(assert (=> b!5220780 (= lt!2143610 (lemmaMoveElementToOtherListKeepsConcatEq!1629 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (h!67054 (t!373900 s!2326)) (t!373900 (t!373900 s!2326)) s!2326))))

(assert (=> b!5220780 (= e!3249586 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) (++!13214 (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (Cons!60606 (h!67054 (t!373900 s!2326)) Nil!60606)) (t!373900 (t!373900 s!2326)) s!2326))))

(declare-fun d!1683099 () Bool)

(declare-fun e!3249584 () Bool)

(assert (=> d!1683099 e!3249584))

(declare-fun res!2216837 () Bool)

(assert (=> d!1683099 (=> res!2216837 e!3249584)))

(assert (=> d!1683099 (= res!2216837 e!3249587)))

(declare-fun res!2216838 () Bool)

(assert (=> d!1683099 (=> (not res!2216838) (not e!3249587))))

(assert (=> d!1683099 (= res!2216838 (isDefined!11624 lt!2143609))))

(assert (=> d!1683099 (= lt!2143609 e!3249583)))

(declare-fun c!900933 () Bool)

(declare-fun e!3249585 () Bool)

(assert (=> d!1683099 (= c!900933 e!3249585)))

(declare-fun res!2216835 () Bool)

(assert (=> d!1683099 (=> (not res!2216835) (not e!3249585))))

(assert (=> d!1683099 (= res!2216835 (matchR!6995 (regOne!30132 r!7292) (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606))))))

(assert (=> d!1683099 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1683099 (= (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) (++!13214 Nil!60606 (Cons!60606 (h!67054 s!2326) Nil!60606)) (t!373900 s!2326) s!2326) lt!2143609)))

(declare-fun b!5220781 () Bool)

(assert (=> b!5220781 (= e!3249585 (matchR!6995 (regTwo!30132 r!7292) (t!373900 s!2326)))))

(declare-fun b!5220782 () Bool)

(assert (=> b!5220782 (= e!3249584 (not (isDefined!11624 lt!2143609)))))

(declare-fun b!5220783 () Bool)

(assert (=> b!5220783 (= e!3249587 (= (++!13214 (_1!35312 (get!20825 lt!2143609)) (_2!35312 (get!20825 lt!2143609))) s!2326))))

(declare-fun b!5220784 () Bool)

(declare-fun res!2216836 () Bool)

(assert (=> b!5220784 (=> (not res!2216836) (not e!3249587))))

(assert (=> b!5220784 (= res!2216836 (matchR!6995 (regTwo!30132 r!7292) (_2!35312 (get!20825 lt!2143609))))))

(declare-fun b!5220785 () Bool)

(assert (=> b!5220785 (= e!3249583 e!3249586)))

(declare-fun c!900934 () Bool)

(assert (=> b!5220785 (= c!900934 (is-Nil!60606 (t!373900 s!2326)))))

(assert (= (and d!1683099 res!2216835) b!5220781))

(assert (= (and d!1683099 c!900933) b!5220778))

(assert (= (and d!1683099 (not c!900933)) b!5220785))

(assert (= (and b!5220785 c!900934) b!5220777))

(assert (= (and b!5220785 (not c!900934)) b!5220780))

(assert (= (and d!1683099 res!2216838) b!5220779))

(assert (= (and b!5220779 res!2216839) b!5220784))

(assert (= (and b!5220784 res!2216836) b!5220783))

(assert (= (and d!1683099 (not res!2216837)) b!5220782))

(declare-fun m!6268394 () Bool)

(assert (=> b!5220784 m!6268394))

(declare-fun m!6268396 () Bool)

(assert (=> b!5220784 m!6268396))

(declare-fun m!6268398 () Bool)

(assert (=> b!5220781 m!6268398))

(assert (=> b!5220779 m!6268394))

(declare-fun m!6268400 () Bool)

(assert (=> b!5220779 m!6268400))

(assert (=> b!5220783 m!6268394))

(declare-fun m!6268402 () Bool)

(assert (=> b!5220783 m!6268402))

(declare-fun m!6268404 () Bool)

(assert (=> b!5220782 m!6268404))

(assert (=> d!1683099 m!6268404))

(assert (=> d!1683099 m!6267830))

(declare-fun m!6268406 () Bool)

(assert (=> d!1683099 m!6268406))

(assert (=> d!1683099 m!6267828))

(assert (=> b!5220780 m!6267830))

(declare-fun m!6268408 () Bool)

(assert (=> b!5220780 m!6268408))

(assert (=> b!5220780 m!6268408))

(declare-fun m!6268410 () Bool)

(assert (=> b!5220780 m!6268410))

(assert (=> b!5220780 m!6267830))

(declare-fun m!6268412 () Bool)

(assert (=> b!5220780 m!6268412))

(assert (=> b!5220780 m!6268408))

(declare-fun m!6268414 () Bool)

(assert (=> b!5220780 m!6268414))

(assert (=> b!5219984 d!1683099))

(declare-fun d!1683101 () Bool)

(declare-fun lambda!262009 () Int)

(declare-fun exists!1970 ((Set Context!8388) Int) Bool)

(assert (=> d!1683101 (= (nullableZipper!1234 (set.union lt!2143415 lt!2143401)) (exists!1970 (set.union lt!2143415 lt!2143401) lambda!262009))))

(declare-fun bs!1212339 () Bool)

(assert (= bs!1212339 d!1683101))

(declare-fun m!6268416 () Bool)

(assert (=> bs!1212339 m!6268416))

(assert (=> b!5220260 d!1683101))

(assert (=> bs!1212288 d!1682917))

(declare-fun bs!1212340 () Bool)

(declare-fun d!1683103 () Bool)

(assert (= bs!1212340 (and d!1683103 d!1683101)))

(declare-fun lambda!262010 () Int)

(assert (=> bs!1212340 (= lambda!262010 lambda!262009)))

(assert (=> d!1683103 (= (nullableZipper!1234 lt!2143415) (exists!1970 lt!2143415 lambda!262010))))

(declare-fun bs!1212341 () Bool)

(assert (= bs!1212341 d!1683103))

(declare-fun m!6268418 () Bool)

(assert (=> bs!1212341 m!6268418))

(assert (=> b!5220006 d!1683103))

(declare-fun d!1683105 () Bool)

(assert (=> d!1683105 (= (head!11187 (exprs!4694 (h!67055 zl!343))) (h!67053 (exprs!4694 (h!67055 zl!343))))))

(assert (=> b!5219947 d!1683105))

(assert (=> d!1682897 d!1682889))

(declare-fun b!5220786 () Bool)

(declare-fun e!3249593 () Bool)

(declare-fun call!368402 () Bool)

(assert (=> b!5220786 (= e!3249593 call!368402)))

(declare-fun bm!368395 () Bool)

(declare-fun call!368400 () Bool)

(declare-fun c!900938 () Bool)

(assert (=> bm!368395 (= call!368400 (validRegex!6546 (ite c!900938 (regOne!30133 (regOne!30132 r!7292)) (regOne!30132 (regOne!30132 r!7292)))))))

(declare-fun b!5220787 () Bool)

(declare-fun e!3249588 () Bool)

(declare-fun e!3249589 () Bool)

(assert (=> b!5220787 (= e!3249588 e!3249589)))

(assert (=> b!5220787 (= c!900938 (is-Union!14810 (regOne!30132 r!7292)))))

(declare-fun bm!368396 () Bool)

(declare-fun call!368401 () Bool)

(assert (=> bm!368396 (= call!368402 call!368401)))

(declare-fun d!1683107 () Bool)

(declare-fun res!2216844 () Bool)

(declare-fun e!3249590 () Bool)

(assert (=> d!1683107 (=> res!2216844 e!3249590)))

(assert (=> d!1683107 (= res!2216844 (is-ElementMatch!14810 (regOne!30132 r!7292)))))

(assert (=> d!1683107 (= (validRegex!6546 (regOne!30132 r!7292)) e!3249590)))

(declare-fun b!5220788 () Bool)

(assert (=> b!5220788 (= e!3249590 e!3249588)))

(declare-fun c!900937 () Bool)

(assert (=> b!5220788 (= c!900937 (is-Star!14810 (regOne!30132 r!7292)))))

(declare-fun b!5220789 () Bool)

(declare-fun e!3249591 () Bool)

(assert (=> b!5220789 (= e!3249591 call!368401)))

(declare-fun b!5220790 () Bool)

(declare-fun e!3249594 () Bool)

(assert (=> b!5220790 (= e!3249594 call!368402)))

(declare-fun b!5220791 () Bool)

(assert (=> b!5220791 (= e!3249588 e!3249591)))

(declare-fun res!2216843 () Bool)

(assert (=> b!5220791 (= res!2216843 (not (nullable!4979 (reg!15139 (regOne!30132 r!7292)))))))

(assert (=> b!5220791 (=> (not res!2216843) (not e!3249591))))

(declare-fun bm!368397 () Bool)

(assert (=> bm!368397 (= call!368401 (validRegex!6546 (ite c!900937 (reg!15139 (regOne!30132 r!7292)) (ite c!900938 (regTwo!30133 (regOne!30132 r!7292)) (regTwo!30132 (regOne!30132 r!7292))))))))

(declare-fun b!5220792 () Bool)

(declare-fun res!2216841 () Bool)

(declare-fun e!3249592 () Bool)

(assert (=> b!5220792 (=> res!2216841 e!3249592)))

(assert (=> b!5220792 (= res!2216841 (not (is-Concat!23655 (regOne!30132 r!7292))))))

(assert (=> b!5220792 (= e!3249589 e!3249592)))

(declare-fun b!5220793 () Bool)

(assert (=> b!5220793 (= e!3249592 e!3249593)))

(declare-fun res!2216842 () Bool)

(assert (=> b!5220793 (=> (not res!2216842) (not e!3249593))))

(assert (=> b!5220793 (= res!2216842 call!368400)))

(declare-fun b!5220794 () Bool)

(declare-fun res!2216840 () Bool)

(assert (=> b!5220794 (=> (not res!2216840) (not e!3249594))))

(assert (=> b!5220794 (= res!2216840 call!368400)))

(assert (=> b!5220794 (= e!3249589 e!3249594)))

(assert (= (and d!1683107 (not res!2216844)) b!5220788))

(assert (= (and b!5220788 c!900937) b!5220791))

(assert (= (and b!5220788 (not c!900937)) b!5220787))

(assert (= (and b!5220791 res!2216843) b!5220789))

(assert (= (and b!5220787 c!900938) b!5220794))

(assert (= (and b!5220787 (not c!900938)) b!5220792))

(assert (= (and b!5220794 res!2216840) b!5220790))

(assert (= (and b!5220792 (not res!2216841)) b!5220793))

(assert (= (and b!5220793 res!2216842) b!5220786))

(assert (= (or b!5220790 b!5220786) bm!368396))

(assert (= (or b!5220794 b!5220793) bm!368395))

(assert (= (or b!5220789 bm!368396) bm!368397))

(declare-fun m!6268420 () Bool)

(assert (=> bm!368395 m!6268420))

(declare-fun m!6268422 () Bool)

(assert (=> b!5220791 m!6268422))

(declare-fun m!6268424 () Bool)

(assert (=> bm!368397 m!6268424))

(assert (=> d!1682897 d!1683107))

(assert (=> d!1682897 d!1682895))

(declare-fun d!1683109 () Bool)

(assert (=> d!1683109 (= (Exists!1991 lambda!261961) (choose!38813 lambda!261961))))

(declare-fun bs!1212342 () Bool)

(assert (= bs!1212342 d!1683109))

(declare-fun m!6268426 () Bool)

(assert (=> bs!1212342 m!6268426))

(assert (=> d!1682897 d!1683109))

(declare-fun bs!1212343 () Bool)

(declare-fun d!1683111 () Bool)

(assert (= bs!1212343 (and d!1683111 b!5219795)))

(declare-fun lambda!262013 () Int)

(assert (=> bs!1212343 (not (= lambda!262013 lambda!261933))))

(declare-fun bs!1212344 () Bool)

(assert (= bs!1212344 (and d!1683111 d!1682897)))

(assert (=> bs!1212344 (= lambda!262013 lambda!261961)))

(assert (=> bs!1212343 (= lambda!262013 lambda!261932)))

(declare-fun bs!1212345 () Bool)

(assert (= bs!1212345 (and d!1683111 b!5220165)))

(assert (=> bs!1212345 (not (= lambda!262013 lambda!261971))))

(declare-fun bs!1212346 () Bool)

(assert (= bs!1212346 (and d!1683111 d!1682893)))

(assert (=> bs!1212346 (not (= lambda!262013 lambda!261958))))

(declare-fun bs!1212347 () Bool)

(assert (= bs!1212347 (and d!1683111 b!5220162)))

(assert (=> bs!1212347 (not (= lambda!262013 lambda!261970))))

(assert (=> bs!1212346 (= lambda!262013 lambda!261957)))

(assert (=> d!1683111 true))

(assert (=> d!1683111 true))

(assert (=> d!1683111 true))

(assert (=> d!1683111 (= (isDefined!11624 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326)) (Exists!1991 lambda!262013))))

(assert (=> d!1683111 true))

(declare-fun _$89!1394 () Unit!152510)

(assert (=> d!1683111 (= (choose!38815 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326) _$89!1394)))

(declare-fun bs!1212348 () Bool)

(assert (= bs!1212348 d!1683111))

(assert (=> bs!1212348 m!6267636))

(assert (=> bs!1212348 m!6267636))

(assert (=> bs!1212348 m!6267638))

(declare-fun m!6268428 () Bool)

(assert (=> bs!1212348 m!6268428))

(assert (=> d!1682897 d!1683111))

(declare-fun d!1683113 () Bool)

(declare-fun res!2216853 () Bool)

(declare-fun e!3249601 () Bool)

(assert (=> d!1683113 (=> res!2216853 e!3249601)))

(assert (=> d!1683113 (= res!2216853 (is-Nil!60605 (exprs!4694 setElem!33196)))))

(assert (=> d!1683113 (= (forall!14242 (exprs!4694 setElem!33196) lambda!261965) e!3249601)))

(declare-fun b!5220803 () Bool)

(declare-fun e!3249602 () Bool)

(assert (=> b!5220803 (= e!3249601 e!3249602)))

(declare-fun res!2216854 () Bool)

(assert (=> b!5220803 (=> (not res!2216854) (not e!3249602))))

(declare-fun dynLambda!23947 (Int Regex!14810) Bool)

(assert (=> b!5220803 (= res!2216854 (dynLambda!23947 lambda!261965 (h!67053 (exprs!4694 setElem!33196))))))

(declare-fun b!5220804 () Bool)

(assert (=> b!5220804 (= e!3249602 (forall!14242 (t!373899 (exprs!4694 setElem!33196)) lambda!261965))))

(assert (= (and d!1683113 (not res!2216853)) b!5220803))

(assert (= (and b!5220803 res!2216854) b!5220804))

(declare-fun b_lambda!201867 () Bool)

(assert (=> (not b_lambda!201867) (not b!5220803)))

(declare-fun m!6268430 () Bool)

(assert (=> b!5220803 m!6268430))

(declare-fun m!6268432 () Bool)

(assert (=> b!5220804 m!6268432))

(assert (=> d!1682933 d!1683113))

(declare-fun d!1683115 () Bool)

(assert (=> d!1683115 (= (nullable!4979 (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))) (nullableFct!1386 (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))))

(declare-fun bs!1212349 () Bool)

(assert (= bs!1212349 d!1683115))

(declare-fun m!6268434 () Bool)

(assert (=> bs!1212349 m!6268434))

(assert (=> b!5220216 d!1683115))

(declare-fun d!1683117 () Bool)

(assert (=> d!1683117 (= (nullable!4979 (h!67053 (exprs!4694 lt!2143417))) (nullableFct!1386 (h!67053 (exprs!4694 lt!2143417))))))

(declare-fun bs!1212350 () Bool)

(assert (= bs!1212350 d!1683117))

(declare-fun m!6268436 () Bool)

(assert (=> bs!1212350 m!6268436))

(assert (=> b!5220093 d!1683117))

(assert (=> d!1682953 d!1682951))

(assert (=> d!1682953 d!1682949))

(declare-fun d!1683119 () Bool)

(assert (=> d!1683119 (= (matchR!6995 r!7292 s!2326) (matchRSpec!1913 r!7292 s!2326))))

(assert (=> d!1683119 true))

(declare-fun _$88!3486 () Unit!152510)

(assert (=> d!1683119 (= (choose!38818 r!7292 s!2326) _$88!3486)))

(declare-fun bs!1212351 () Bool)

(assert (= bs!1212351 d!1683119))

(assert (=> bs!1212351 m!6267602))

(assert (=> bs!1212351 m!6267600))

(assert (=> d!1682953 d!1683119))

(assert (=> d!1682953 d!1682915))

(declare-fun d!1683121 () Bool)

(assert (=> d!1683121 true))

(declare-fun setRes!33208 () Bool)

(assert (=> d!1683121 setRes!33208))

(declare-fun condSetEmpty!33208 () Bool)

(declare-fun res!2216857 () (Set Context!8388))

(assert (=> d!1683121 (= condSetEmpty!33208 (= res!2216857 (as set.empty (Set Context!8388))))))

(assert (=> d!1683121 (= (choose!38816 lt!2143420 lambda!261934) res!2216857)))

(declare-fun setIsEmpty!33208 () Bool)

(assert (=> setIsEmpty!33208 setRes!33208))

(declare-fun tp!1463585 () Bool)

(declare-fun setNonEmpty!33208 () Bool)

(declare-fun setElem!33208 () Context!8388)

(declare-fun e!3249605 () Bool)

(assert (=> setNonEmpty!33208 (= setRes!33208 (and tp!1463585 (inv!80273 setElem!33208) e!3249605))))

(declare-fun setRest!33208 () (Set Context!8388))

(assert (=> setNonEmpty!33208 (= res!2216857 (set.union (set.insert setElem!33208 (as set.empty (Set Context!8388))) setRest!33208))))

(declare-fun b!5220807 () Bool)

(declare-fun tp!1463584 () Bool)

(assert (=> b!5220807 (= e!3249605 tp!1463584)))

(assert (= (and d!1683121 condSetEmpty!33208) setIsEmpty!33208))

(assert (= (and d!1683121 (not condSetEmpty!33208)) setNonEmpty!33208))

(assert (= setNonEmpty!33208 b!5220807))

(declare-fun m!6268438 () Bool)

(assert (=> setNonEmpty!33208 m!6268438))

(assert (=> d!1682921 d!1683121))

(declare-fun e!3249608 () (Set Context!8388))

(declare-fun b!5220808 () Bool)

(declare-fun call!368403 () (Set Context!8388))

(assert (=> b!5220808 (= e!3249608 (set.union call!368403 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417)))))) (h!67054 s!2326))))))

(declare-fun b!5220809 () Bool)

(declare-fun e!3249607 () (Set Context!8388))

(assert (=> b!5220809 (= e!3249607 (as set.empty (Set Context!8388)))))

(declare-fun bm!368398 () Bool)

(assert (=> bm!368398 (= call!368403 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417)))))) (h!67054 s!2326)))))

(declare-fun b!5220810 () Bool)

(assert (=> b!5220810 (= e!3249608 e!3249607)))

(declare-fun c!900939 () Bool)

(assert (=> b!5220810 (= c!900939 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417))))))))

(declare-fun b!5220812 () Bool)

(assert (=> b!5220812 (= e!3249607 call!368403)))

(declare-fun d!1683123 () Bool)

(declare-fun c!900940 () Bool)

(declare-fun e!3249606 () Bool)

(assert (=> d!1683123 (= c!900940 e!3249606)))

(declare-fun res!2216858 () Bool)

(assert (=> d!1683123 (=> (not res!2216858) (not e!3249606))))

(assert (=> d!1683123 (= res!2216858 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417))))))))

(assert (=> d!1683123 (= (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (h!67054 s!2326)) e!3249608)))

(declare-fun b!5220811 () Bool)

(assert (=> b!5220811 (= e!3249606 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417)))))))))

(assert (= (and d!1683123 res!2216858) b!5220811))

(assert (= (and d!1683123 c!900940) b!5220808))

(assert (= (and d!1683123 (not c!900940)) b!5220810))

(assert (= (and b!5220810 c!900939) b!5220812))

(assert (= (and b!5220810 (not c!900939)) b!5220809))

(assert (= (or b!5220808 b!5220812) bm!368398))

(declare-fun m!6268440 () Bool)

(assert (=> b!5220808 m!6268440))

(declare-fun m!6268442 () Bool)

(assert (=> bm!368398 m!6268442))

(declare-fun m!6268444 () Bool)

(assert (=> b!5220811 m!6268444))

(assert (=> b!5220090 d!1683123))

(declare-fun bs!1212352 () Bool)

(declare-fun d!1683125 () Bool)

(assert (= bs!1212352 (and d!1683125 d!1683101)))

(declare-fun lambda!262014 () Int)

(assert (=> bs!1212352 (= lambda!262014 lambda!262009)))

(declare-fun bs!1212353 () Bool)

(assert (= bs!1212353 (and d!1683125 d!1683103)))

(assert (=> bs!1212353 (= lambda!262014 lambda!262010)))

(assert (=> d!1683125 (= (nullableZipper!1234 lt!2143418) (exists!1970 lt!2143418 lambda!262014))))

(declare-fun bs!1212354 () Bool)

(assert (= bs!1212354 d!1683125))

(declare-fun m!6268446 () Bool)

(assert (=> bs!1212354 m!6268446))

(assert (=> b!5219957 d!1683125))

(declare-fun b!5220813 () Bool)

(declare-fun e!3249609 () (Set Context!8388))

(declare-fun call!368409 () (Set Context!8388))

(assert (=> b!5220813 (= e!3249609 call!368409)))

(declare-fun bm!368399 () Bool)

(declare-fun call!368404 () (Set Context!8388))

(assert (=> bm!368399 (= call!368409 call!368404)))

(declare-fun b!5220814 () Bool)

(declare-fun e!3249614 () (Set Context!8388))

(assert (=> b!5220814 (= e!3249614 call!368409)))

(declare-fun b!5220815 () Bool)

(declare-fun e!3249610 () Bool)

(assert (=> b!5220815 (= e!3249610 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 lt!2143408)))))))

(declare-fun b!5220816 () Bool)

(declare-fun e!3249613 () (Set Context!8388))

(assert (=> b!5220816 (= e!3249613 (set.insert (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (as set.empty (Set Context!8388))))))

(declare-fun bm!368400 () Bool)

(declare-fun call!368408 () List!60729)

(declare-fun call!368407 () List!60729)

(assert (=> bm!368400 (= call!368408 call!368407)))

(declare-fun b!5220817 () Bool)

(declare-fun e!3249611 () (Set Context!8388))

(declare-fun call!368406 () (Set Context!8388))

(assert (=> b!5220817 (= e!3249611 (set.union call!368406 call!368404))))

(declare-fun c!900945 () Bool)

(declare-fun bm!368401 () Bool)

(declare-fun c!900944 () Bool)

(assert (=> bm!368401 (= call!368407 ($colon$colon!1284 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408)))) (ite (or c!900944 c!900945) (regTwo!30132 (h!67053 (exprs!4694 lt!2143408))) (h!67053 (exprs!4694 lt!2143408)))))))

(declare-fun b!5220818 () Bool)

(declare-fun e!3249612 () (Set Context!8388))

(declare-fun call!368405 () (Set Context!8388))

(assert (=> b!5220818 (= e!3249612 (set.union call!368406 call!368405))))

(declare-fun bm!368402 () Bool)

(declare-fun c!900941 () Bool)

(assert (=> bm!368402 (= call!368406 (derivationStepZipperDown!258 (ite c!900941 (regOne!30133 (h!67053 (exprs!4694 lt!2143408))) (regOne!30132 (h!67053 (exprs!4694 lt!2143408)))) (ite c!900941 (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (Context!8389 call!368407)) (h!67054 s!2326)))))

(declare-fun b!5220819 () Bool)

(assert (=> b!5220819 (= e!3249609 (as set.empty (Set Context!8388)))))

(declare-fun b!5220820 () Bool)

(assert (=> b!5220820 (= e!3249613 e!3249612)))

(assert (=> b!5220820 (= c!900941 (is-Union!14810 (h!67053 (exprs!4694 lt!2143408))))))

(declare-fun b!5220821 () Bool)

(declare-fun c!900943 () Bool)

(assert (=> b!5220821 (= c!900943 (is-Star!14810 (h!67053 (exprs!4694 lt!2143408))))))

(assert (=> b!5220821 (= e!3249614 e!3249609)))

(declare-fun b!5220822 () Bool)

(assert (=> b!5220822 (= c!900944 e!3249610)))

(declare-fun res!2216859 () Bool)

(assert (=> b!5220822 (=> (not res!2216859) (not e!3249610))))

(assert (=> b!5220822 (= res!2216859 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143408))))))

(assert (=> b!5220822 (= e!3249612 e!3249611)))

(declare-fun d!1683127 () Bool)

(declare-fun c!900942 () Bool)

(assert (=> d!1683127 (= c!900942 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 lt!2143408))) (= (c!900678 (h!67053 (exprs!4694 lt!2143408))) (h!67054 s!2326))))))

(assert (=> d!1683127 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143408)) (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (h!67054 s!2326)) e!3249613)))

(declare-fun bm!368403 () Bool)

(assert (=> bm!368403 (= call!368404 call!368405)))

(declare-fun b!5220823 () Bool)

(assert (=> b!5220823 (= e!3249611 e!3249614)))

(assert (=> b!5220823 (= c!900945 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143408))))))

(declare-fun bm!368404 () Bool)

(assert (=> bm!368404 (= call!368405 (derivationStepZipperDown!258 (ite c!900941 (regTwo!30133 (h!67053 (exprs!4694 lt!2143408))) (ite c!900944 (regTwo!30132 (h!67053 (exprs!4694 lt!2143408))) (ite c!900945 (regOne!30132 (h!67053 (exprs!4694 lt!2143408))) (reg!15139 (h!67053 (exprs!4694 lt!2143408)))))) (ite (or c!900941 c!900944) (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (Context!8389 call!368408)) (h!67054 s!2326)))))

(assert (= (and d!1683127 c!900942) b!5220816))

(assert (= (and d!1683127 (not c!900942)) b!5220820))

(assert (= (and b!5220820 c!900941) b!5220818))

(assert (= (and b!5220820 (not c!900941)) b!5220822))

(assert (= (and b!5220822 res!2216859) b!5220815))

(assert (= (and b!5220822 c!900944) b!5220817))

(assert (= (and b!5220822 (not c!900944)) b!5220823))

(assert (= (and b!5220823 c!900945) b!5220814))

(assert (= (and b!5220823 (not c!900945)) b!5220821))

(assert (= (and b!5220821 c!900943) b!5220813))

(assert (= (and b!5220821 (not c!900943)) b!5220819))

(assert (= (or b!5220814 b!5220813) bm!368400))

(assert (= (or b!5220814 b!5220813) bm!368399))

(assert (= (or b!5220817 bm!368400) bm!368401))

(assert (= (or b!5220817 bm!368399) bm!368403))

(assert (= (or b!5220818 bm!368403) bm!368404))

(assert (= (or b!5220818 b!5220817) bm!368402))

(declare-fun m!6268448 () Bool)

(assert (=> b!5220816 m!6268448))

(declare-fun m!6268450 () Bool)

(assert (=> b!5220815 m!6268450))

(declare-fun m!6268452 () Bool)

(assert (=> bm!368404 m!6268452))

(declare-fun m!6268454 () Bool)

(assert (=> bm!368401 m!6268454))

(declare-fun m!6268456 () Bool)

(assert (=> bm!368402 m!6268456))

(assert (=> bm!368312 d!1683127))

(assert (=> b!5220008 d!1682887))

(declare-fun bs!1212355 () Bool)

(declare-fun d!1683129 () Bool)

(assert (= bs!1212355 (and d!1683129 d!1682965)))

(declare-fun lambda!262015 () Int)

(assert (=> bs!1212355 (= lambda!262015 lambda!261974)))

(declare-fun bs!1212356 () Bool)

(assert (= bs!1212356 (and d!1683129 d!1683081)))

(assert (=> bs!1212356 (= lambda!262015 lambda!262006)))

(declare-fun bs!1212357 () Bool)

(assert (= bs!1212357 (and d!1683129 d!1682967)))

(assert (=> bs!1212357 (= lambda!262015 lambda!261977)))

(declare-fun bs!1212358 () Bool)

(assert (= bs!1212358 (and d!1683129 d!1682933)))

(assert (=> bs!1212358 (= lambda!262015 lambda!261965)))

(declare-fun bs!1212359 () Bool)

(assert (= bs!1212359 (and d!1683129 d!1682879)))

(assert (=> bs!1212359 (= lambda!262015 lambda!261952)))

(declare-fun bs!1212360 () Bool)

(assert (= bs!1212360 (and d!1683129 d!1682913)))

(assert (=> bs!1212360 (= lambda!262015 lambda!261964)))

(assert (=> d!1683129 (= (inv!80273 setElem!33202) (forall!14242 (exprs!4694 setElem!33202) lambda!262015))))

(declare-fun bs!1212361 () Bool)

(assert (= bs!1212361 d!1683129))

(declare-fun m!6268458 () Bool)

(assert (=> bs!1212361 m!6268458))

(assert (=> setNonEmpty!33202 d!1683129))

(declare-fun d!1683131 () Bool)

(assert (=> d!1683131 (= (isEmpty!32524 (t!373899 (unfocusZipperList!252 zl!343))) (is-Nil!60605 (t!373899 (unfocusZipperList!252 zl!343))))))

(assert (=> b!5220247 d!1683131))

(declare-fun b!5220824 () Bool)

(declare-fun e!3249615 () (Set Context!8388))

(declare-fun call!368415 () (Set Context!8388))

(assert (=> b!5220824 (= e!3249615 call!368415)))

(declare-fun bm!368405 () Bool)

(declare-fun call!368410 () (Set Context!8388))

(assert (=> bm!368405 (= call!368415 call!368410)))

(declare-fun b!5220825 () Bool)

(declare-fun e!3249620 () (Set Context!8388))

(assert (=> b!5220825 (= e!3249620 call!368415)))

(declare-fun b!5220826 () Bool)

(declare-fun e!3249616 () Bool)

(assert (=> b!5220826 (= e!3249616 (nullable!4979 (regOne!30132 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5220827 () Bool)

(declare-fun e!3249619 () (Set Context!8388))

(assert (=> b!5220827 (= e!3249619 (set.insert (ite c!900729 lt!2143408 (Context!8389 call!368288)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368406 () Bool)

(declare-fun call!368414 () List!60729)

(declare-fun call!368413 () List!60729)

(assert (=> bm!368406 (= call!368414 call!368413)))

(declare-fun b!5220828 () Bool)

(declare-fun e!3249617 () (Set Context!8388))

(declare-fun call!368412 () (Set Context!8388))

(assert (=> b!5220828 (= e!3249617 (set.union call!368412 call!368410))))

(declare-fun c!900949 () Bool)

(declare-fun bm!368407 () Bool)

(declare-fun c!900950 () Bool)

(assert (=> bm!368407 (= call!368413 ($colon$colon!1284 (exprs!4694 (ite c!900729 lt!2143408 (Context!8389 call!368288))) (ite (or c!900949 c!900950) (regTwo!30132 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5220829 () Bool)

(declare-fun e!3249618 () (Set Context!8388))

(declare-fun call!368411 () (Set Context!8388))

(assert (=> b!5220829 (= e!3249618 (set.union call!368412 call!368411))))

(declare-fun bm!368408 () Bool)

(declare-fun c!900946 () Bool)

(assert (=> bm!368408 (= call!368412 (derivationStepZipperDown!258 (ite c!900946 (regOne!30133 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (regOne!30132 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))) (ite c!900946 (ite c!900729 lt!2143408 (Context!8389 call!368288)) (Context!8389 call!368413)) (h!67054 s!2326)))))

(declare-fun b!5220830 () Bool)

(assert (=> b!5220830 (= e!3249615 (as set.empty (Set Context!8388)))))

(declare-fun b!5220831 () Bool)

(assert (=> b!5220831 (= e!3249619 e!3249618)))

(assert (=> b!5220831 (= c!900946 (is-Union!14810 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5220832 () Bool)

(declare-fun c!900948 () Bool)

(assert (=> b!5220832 (= c!900948 (is-Star!14810 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(assert (=> b!5220832 (= e!3249620 e!3249615)))

(declare-fun b!5220833 () Bool)

(assert (=> b!5220833 (= c!900949 e!3249616)))

(declare-fun res!2216860 () Bool)

(assert (=> b!5220833 (=> (not res!2216860) (not e!3249616))))

(assert (=> b!5220833 (= res!2216860 (is-Concat!23655 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(assert (=> b!5220833 (= e!3249618 e!3249617)))

(declare-fun c!900947 () Bool)

(declare-fun d!1683133 () Bool)

(assert (=> d!1683133 (= c!900947 (and (is-ElementMatch!14810 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (= (c!900678 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (h!67054 s!2326))))))

(assert (=> d!1683133 (= (derivationStepZipperDown!258 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))) (ite c!900729 lt!2143408 (Context!8389 call!368288)) (h!67054 s!2326)) e!3249619)))

(declare-fun bm!368409 () Bool)

(assert (=> bm!368409 (= call!368410 call!368411)))

(declare-fun b!5220834 () Bool)

(assert (=> b!5220834 (= e!3249617 e!3249620)))

(assert (=> b!5220834 (= c!900950 (is-Concat!23655 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun bm!368410 () Bool)

(assert (=> bm!368410 (= call!368411 (derivationStepZipperDown!258 (ite c!900946 (regTwo!30133 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (ite c!900949 (regTwo!30132 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (ite c!900950 (regOne!30132 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (reg!15139 (ite c!900729 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))) (ite (or c!900946 c!900949) (ite c!900729 lt!2143408 (Context!8389 call!368288)) (Context!8389 call!368414)) (h!67054 s!2326)))))

(assert (= (and d!1683133 c!900947) b!5220827))

(assert (= (and d!1683133 (not c!900947)) b!5220831))

(assert (= (and b!5220831 c!900946) b!5220829))

(assert (= (and b!5220831 (not c!900946)) b!5220833))

(assert (= (and b!5220833 res!2216860) b!5220826))

(assert (= (and b!5220833 c!900949) b!5220828))

(assert (= (and b!5220833 (not c!900949)) b!5220834))

(assert (= (and b!5220834 c!900950) b!5220825))

(assert (= (and b!5220834 (not c!900950)) b!5220832))

(assert (= (and b!5220832 c!900948) b!5220824))

(assert (= (and b!5220832 (not c!900948)) b!5220830))

(assert (= (or b!5220825 b!5220824) bm!368406))

(assert (= (or b!5220825 b!5220824) bm!368405))

(assert (= (or b!5220828 bm!368406) bm!368407))

(assert (= (or b!5220828 bm!368405) bm!368409))

(assert (= (or b!5220829 bm!368409) bm!368410))

(assert (= (or b!5220829 b!5220828) bm!368408))

(declare-fun m!6268460 () Bool)

(assert (=> b!5220827 m!6268460))

(declare-fun m!6268462 () Bool)

(assert (=> b!5220826 m!6268462))

(declare-fun m!6268464 () Bool)

(assert (=> bm!368410 m!6268464))

(declare-fun m!6268466 () Bool)

(assert (=> bm!368407 m!6268466))

(declare-fun m!6268468 () Bool)

(assert (=> bm!368408 m!6268468))

(assert (=> bm!368283 d!1683133))

(declare-fun d!1683135 () Bool)

(declare-fun c!900953 () Bool)

(assert (=> d!1683135 (= c!900953 (is-Nil!60607 lt!2143546))))

(declare-fun e!3249623 () (Set Context!8388))

(assert (=> d!1683135 (= (content!10745 lt!2143546) e!3249623)))

(declare-fun b!5220839 () Bool)

(assert (=> b!5220839 (= e!3249623 (as set.empty (Set Context!8388)))))

(declare-fun b!5220840 () Bool)

(assert (=> b!5220840 (= e!3249623 (set.union (set.insert (h!67055 lt!2143546) (as set.empty (Set Context!8388))) (content!10745 (t!373901 lt!2143546))))))

(assert (= (and d!1683135 c!900953) b!5220839))

(assert (= (and d!1683135 (not c!900953)) b!5220840))

(declare-fun m!6268470 () Bool)

(assert (=> b!5220840 m!6268470))

(declare-fun m!6268472 () Bool)

(assert (=> b!5220840 m!6268472))

(assert (=> b!5220222 d!1683135))

(declare-fun d!1683137 () Bool)

(assert (=> d!1683137 (= (isEmpty!32527 (t!373900 s!2326)) (is-Nil!60606 (t!373900 s!2326)))))

(assert (=> d!1682885 d!1683137))

(declare-fun b!5220841 () Bool)

(declare-fun e!3249626 () (Set Context!8388))

(declare-fun call!368416 () (Set Context!8388))

(assert (=> b!5220841 (= e!3249626 (set.union call!368416 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408)))))) (h!67054 s!2326))))))

(declare-fun b!5220842 () Bool)

(declare-fun e!3249625 () (Set Context!8388))

(assert (=> b!5220842 (= e!3249625 (as set.empty (Set Context!8388)))))

(declare-fun bm!368411 () Bool)

(assert (=> bm!368411 (= call!368416 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408)))))) (h!67054 s!2326)))))

(declare-fun b!5220843 () Bool)

(assert (=> b!5220843 (= e!3249626 e!3249625)))

(declare-fun c!900954 () Bool)

(assert (=> b!5220843 (= c!900954 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408))))))))

(declare-fun b!5220845 () Bool)

(assert (=> b!5220845 (= e!3249625 call!368416)))

(declare-fun d!1683139 () Bool)

(declare-fun c!900955 () Bool)

(declare-fun e!3249624 () Bool)

(assert (=> d!1683139 (= c!900955 e!3249624)))

(declare-fun res!2216861 () Bool)

(assert (=> d!1683139 (=> (not res!2216861) (not e!3249624))))

(assert (=> d!1683139 (= res!2216861 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408))))))))

(assert (=> d!1683139 (= (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143408))) (h!67054 s!2326)) e!3249626)))

(declare-fun b!5220844 () Bool)

(assert (=> b!5220844 (= e!3249624 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143408)))))))))

(assert (= (and d!1683139 res!2216861) b!5220844))

(assert (= (and d!1683139 c!900955) b!5220841))

(assert (= (and d!1683139 (not c!900955)) b!5220843))

(assert (= (and b!5220843 c!900954) b!5220845))

(assert (= (and b!5220843 (not c!900954)) b!5220842))

(assert (= (or b!5220841 b!5220845) bm!368411))

(declare-fun m!6268474 () Bool)

(assert (=> b!5220841 m!6268474))

(declare-fun m!6268476 () Bool)

(assert (=> bm!368411 m!6268476))

(declare-fun m!6268478 () Bool)

(assert (=> b!5220844 m!6268478))

(assert (=> b!5220116 d!1683139))

(assert (=> d!1682931 d!1682921))

(declare-fun d!1683141 () Bool)

(assert (=> d!1683141 (= (flatMap!537 lt!2143420 lambda!261934) (dynLambda!23945 lambda!261934 lt!2143405))))

(assert (=> d!1683141 true))

(declare-fun _$13!1719 () Unit!152510)

(assert (=> d!1683141 (= (choose!38817 lt!2143420 lt!2143405 lambda!261934) _$13!1719)))

(declare-fun b_lambda!201869 () Bool)

(assert (=> (not b_lambda!201869) (not d!1683141)))

(declare-fun bs!1212362 () Bool)

(assert (= bs!1212362 d!1683141))

(assert (=> bs!1212362 m!6267614))

(assert (=> bs!1212362 m!6267926))

(assert (=> d!1682931 d!1683141))

(declare-fun d!1683143 () Bool)

(assert (=> d!1683143 (= (nullable!4979 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))) (nullableFct!1386 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))

(declare-fun bs!1212363 () Bool)

(assert (= bs!1212363 d!1683143))

(declare-fun m!6268480 () Bool)

(assert (=> bs!1212363 m!6268480))

(assert (=> b!5220033 d!1683143))

(declare-fun b!5220847 () Bool)

(declare-fun e!3249628 () List!60730)

(assert (=> b!5220847 (= e!3249628 (Cons!60606 (h!67054 (_1!35312 (get!20825 lt!2143520))) (++!13214 (t!373900 (_1!35312 (get!20825 lt!2143520))) (_2!35312 (get!20825 lt!2143520)))))))

(declare-fun b!5220846 () Bool)

(assert (=> b!5220846 (= e!3249628 (_2!35312 (get!20825 lt!2143520)))))

(declare-fun b!5220849 () Bool)

(declare-fun e!3249627 () Bool)

(declare-fun lt!2143612 () List!60730)

(assert (=> b!5220849 (= e!3249627 (or (not (= (_2!35312 (get!20825 lt!2143520)) Nil!60606)) (= lt!2143612 (_1!35312 (get!20825 lt!2143520)))))))

(declare-fun b!5220848 () Bool)

(declare-fun res!2216862 () Bool)

(assert (=> b!5220848 (=> (not res!2216862) (not e!3249627))))

(assert (=> b!5220848 (= res!2216862 (= (size!39725 lt!2143612) (+ (size!39725 (_1!35312 (get!20825 lt!2143520))) (size!39725 (_2!35312 (get!20825 lt!2143520))))))))

(declare-fun d!1683145 () Bool)

(assert (=> d!1683145 e!3249627))

(declare-fun res!2216863 () Bool)

(assert (=> d!1683145 (=> (not res!2216863) (not e!3249627))))

(assert (=> d!1683145 (= res!2216863 (= (content!10747 lt!2143612) (set.union (content!10747 (_1!35312 (get!20825 lt!2143520))) (content!10747 (_2!35312 (get!20825 lt!2143520))))))))

(assert (=> d!1683145 (= lt!2143612 e!3249628)))

(declare-fun c!900956 () Bool)

(assert (=> d!1683145 (= c!900956 (is-Nil!60606 (_1!35312 (get!20825 lt!2143520))))))

(assert (=> d!1683145 (= (++!13214 (_1!35312 (get!20825 lt!2143520)) (_2!35312 (get!20825 lt!2143520))) lt!2143612)))

(assert (= (and d!1683145 c!900956) b!5220846))

(assert (= (and d!1683145 (not c!900956)) b!5220847))

(assert (= (and d!1683145 res!2216863) b!5220848))

(assert (= (and b!5220848 res!2216862) b!5220849))

(declare-fun m!6268482 () Bool)

(assert (=> b!5220847 m!6268482))

(declare-fun m!6268484 () Bool)

(assert (=> b!5220848 m!6268484))

(declare-fun m!6268486 () Bool)

(assert (=> b!5220848 m!6268486))

(declare-fun m!6268488 () Bool)

(assert (=> b!5220848 m!6268488))

(declare-fun m!6268490 () Bool)

(assert (=> d!1683145 m!6268490))

(declare-fun m!6268492 () Bool)

(assert (=> d!1683145 m!6268492))

(declare-fun m!6268494 () Bool)

(assert (=> d!1683145 m!6268494))

(assert (=> b!5219987 d!1683145))

(assert (=> b!5219987 d!1683091))

(declare-fun d!1683147 () Bool)

(assert (=> d!1683147 (= (head!11188 s!2326) (h!67054 s!2326))))

(assert (=> b!5220210 d!1683147))

(declare-fun b!5220850 () Bool)

(declare-fun e!3249629 () (Set Context!8388))

(declare-fun call!368422 () (Set Context!8388))

(assert (=> b!5220850 (= e!3249629 call!368422)))

(declare-fun bm!368412 () Bool)

(declare-fun call!368417 () (Set Context!8388))

(assert (=> bm!368412 (= call!368422 call!368417)))

(declare-fun b!5220851 () Bool)

(declare-fun e!3249634 () (Set Context!8388))

(assert (=> b!5220851 (= e!3249634 call!368422)))

(declare-fun b!5220852 () Bool)

(declare-fun e!3249630 () Bool)

(assert (=> b!5220852 (= e!3249630 (nullable!4979 (regOne!30132 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))))

(declare-fun b!5220853 () Bool)

(declare-fun e!3249633 () (Set Context!8388))

(assert (=> b!5220853 (= e!3249633 (set.insert (ite c!900755 lt!2143408 (Context!8389 call!368314)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368413 () Bool)

(declare-fun call!368421 () List!60729)

(declare-fun call!368420 () List!60729)

(assert (=> bm!368413 (= call!368421 call!368420)))

(declare-fun b!5220854 () Bool)

(declare-fun e!3249631 () (Set Context!8388))

(declare-fun call!368419 () (Set Context!8388))

(assert (=> b!5220854 (= e!3249631 (set.union call!368419 call!368417))))

(declare-fun c!900961 () Bool)

(declare-fun c!900960 () Bool)

(declare-fun bm!368414 () Bool)

(assert (=> bm!368414 (= call!368420 ($colon$colon!1284 (exprs!4694 (ite c!900755 lt!2143408 (Context!8389 call!368314))) (ite (or c!900960 c!900961) (regTwo!30132 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))))

(declare-fun b!5220855 () Bool)

(declare-fun e!3249632 () (Set Context!8388))

(declare-fun call!368418 () (Set Context!8388))

(assert (=> b!5220855 (= e!3249632 (set.union call!368419 call!368418))))

(declare-fun c!900957 () Bool)

(declare-fun bm!368415 () Bool)

(assert (=> bm!368415 (= call!368419 (derivationStepZipperDown!258 (ite c!900957 (regOne!30133 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (regOne!30132 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))) (ite c!900957 (ite c!900755 lt!2143408 (Context!8389 call!368314)) (Context!8389 call!368420)) (h!67054 s!2326)))))

(declare-fun b!5220856 () Bool)

(assert (=> b!5220856 (= e!3249629 (as set.empty (Set Context!8388)))))

(declare-fun b!5220857 () Bool)

(assert (=> b!5220857 (= e!3249633 e!3249632)))

(assert (=> b!5220857 (= c!900957 (is-Union!14810 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun b!5220858 () Bool)

(declare-fun c!900959 () Bool)

(assert (=> b!5220858 (= c!900959 (is-Star!14810 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(assert (=> b!5220858 (= e!3249634 e!3249629)))

(declare-fun b!5220859 () Bool)

(assert (=> b!5220859 (= c!900960 e!3249630)))

(declare-fun res!2216864 () Bool)

(assert (=> b!5220859 (=> (not res!2216864) (not e!3249630))))

(assert (=> b!5220859 (= res!2216864 (is-Concat!23655 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(assert (=> b!5220859 (= e!3249632 e!3249631)))

(declare-fun d!1683149 () Bool)

(declare-fun c!900958 () Bool)

(assert (=> d!1683149 (= c!900958 (and (is-ElementMatch!14810 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (= (c!900678 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (h!67054 s!2326))))))

(assert (=> d!1683149 (= (derivationStepZipperDown!258 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))) (ite c!900755 lt!2143408 (Context!8389 call!368314)) (h!67054 s!2326)) e!3249633)))

(declare-fun bm!368416 () Bool)

(assert (=> bm!368416 (= call!368417 call!368418)))

(declare-fun b!5220860 () Bool)

(assert (=> b!5220860 (= e!3249631 e!3249634)))

(assert (=> b!5220860 (= c!900961 (is-Concat!23655 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun bm!368417 () Bool)

(assert (=> bm!368417 (= call!368418 (derivationStepZipperDown!258 (ite c!900957 (regTwo!30133 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (ite c!900960 (regTwo!30132 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (ite c!900961 (regOne!30132 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))) (reg!15139 (ite c!900755 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))) (ite (or c!900957 c!900960) (ite c!900755 lt!2143408 (Context!8389 call!368314)) (Context!8389 call!368421)) (h!67054 s!2326)))))

(assert (= (and d!1683149 c!900958) b!5220853))

(assert (= (and d!1683149 (not c!900958)) b!5220857))

(assert (= (and b!5220857 c!900957) b!5220855))

(assert (= (and b!5220857 (not c!900957)) b!5220859))

(assert (= (and b!5220859 res!2216864) b!5220852))

(assert (= (and b!5220859 c!900960) b!5220854))

(assert (= (and b!5220859 (not c!900960)) b!5220860))

(assert (= (and b!5220860 c!900961) b!5220851))

(assert (= (and b!5220860 (not c!900961)) b!5220858))

(assert (= (and b!5220858 c!900959) b!5220850))

(assert (= (and b!5220858 (not c!900959)) b!5220856))

(assert (= (or b!5220851 b!5220850) bm!368413))

(assert (= (or b!5220851 b!5220850) bm!368412))

(assert (= (or b!5220854 bm!368413) bm!368414))

(assert (= (or b!5220854 bm!368412) bm!368416))

(assert (= (or b!5220855 bm!368416) bm!368417))

(assert (= (or b!5220855 b!5220854) bm!368415))

(declare-fun m!6268496 () Bool)

(assert (=> b!5220853 m!6268496))

(declare-fun m!6268498 () Bool)

(assert (=> b!5220852 m!6268498))

(declare-fun m!6268500 () Bool)

(assert (=> bm!368417 m!6268500))

(declare-fun m!6268502 () Bool)

(assert (=> bm!368414 m!6268502))

(declare-fun m!6268504 () Bool)

(assert (=> bm!368415 m!6268504))

(assert (=> bm!368309 d!1683149))

(assert (=> bs!1212289 d!1682927))

(declare-fun d!1683151 () Bool)

(assert (=> d!1683151 (= (isEmpty!32527 s!2326) (is-Nil!60606 s!2326))))

(assert (=> bm!368322 d!1683151))

(declare-fun d!1683153 () Bool)

(assert (=> d!1683153 true))

(declare-fun setRes!33209 () Bool)

(assert (=> d!1683153 setRes!33209))

(declare-fun condSetEmpty!33209 () Bool)

(declare-fun res!2216865 () (Set Context!8388))

(assert (=> d!1683153 (= condSetEmpty!33209 (= res!2216865 (as set.empty (Set Context!8388))))))

(assert (=> d!1683153 (= (choose!38816 z!1189 lambda!261934) res!2216865)))

(declare-fun setIsEmpty!33209 () Bool)

(assert (=> setIsEmpty!33209 setRes!33209))

(declare-fun tp!1463587 () Bool)

(declare-fun setNonEmpty!33209 () Bool)

(declare-fun setElem!33209 () Context!8388)

(declare-fun e!3249635 () Bool)

(assert (=> setNonEmpty!33209 (= setRes!33209 (and tp!1463587 (inv!80273 setElem!33209) e!3249635))))

(declare-fun setRest!33209 () (Set Context!8388))

(assert (=> setNonEmpty!33209 (= res!2216865 (set.union (set.insert setElem!33209 (as set.empty (Set Context!8388))) setRest!33209))))

(declare-fun b!5220861 () Bool)

(declare-fun tp!1463586 () Bool)

(assert (=> b!5220861 (= e!3249635 tp!1463586)))

(assert (= (and d!1683153 condSetEmpty!33209) setIsEmpty!33209))

(assert (= (and d!1683153 (not condSetEmpty!33209)) setNonEmpty!33209))

(assert (= setNonEmpty!33209 b!5220861))

(declare-fun m!6268506 () Bool)

(assert (=> setNonEmpty!33209 m!6268506))

(assert (=> d!1682945 d!1683153))

(declare-fun b!5220862 () Bool)

(declare-fun e!3249641 () Bool)

(declare-fun call!368425 () Bool)

(assert (=> b!5220862 (= e!3249641 call!368425)))

(declare-fun call!368423 () Bool)

(declare-fun c!900963 () Bool)

(declare-fun bm!368418 () Bool)

(assert (=> bm!368418 (= call!368423 (validRegex!6546 (ite c!900963 (regOne!30133 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))) (regOne!30132 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))))

(declare-fun b!5220863 () Bool)

(declare-fun e!3249636 () Bool)

(declare-fun e!3249637 () Bool)

(assert (=> b!5220863 (= e!3249636 e!3249637)))

(assert (=> b!5220863 (= c!900963 (is-Union!14810 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))

(declare-fun bm!368419 () Bool)

(declare-fun call!368424 () Bool)

(assert (=> bm!368419 (= call!368425 call!368424)))

(declare-fun d!1683155 () Bool)

(declare-fun res!2216870 () Bool)

(declare-fun e!3249638 () Bool)

(assert (=> d!1683155 (=> res!2216870 e!3249638)))

(assert (=> d!1683155 (= res!2216870 (is-ElementMatch!14810 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))

(assert (=> d!1683155 (= (validRegex!6546 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))) e!3249638)))

(declare-fun b!5220864 () Bool)

(assert (=> b!5220864 (= e!3249638 e!3249636)))

(declare-fun c!900962 () Bool)

(assert (=> b!5220864 (= c!900962 (is-Star!14810 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))

(declare-fun b!5220865 () Bool)

(declare-fun e!3249639 () Bool)

(assert (=> b!5220865 (= e!3249639 call!368424)))

(declare-fun b!5220866 () Bool)

(declare-fun e!3249642 () Bool)

(assert (=> b!5220866 (= e!3249642 call!368425)))

(declare-fun b!5220867 () Bool)

(assert (=> b!5220867 (= e!3249636 e!3249639)))

(declare-fun res!2216869 () Bool)

(assert (=> b!5220867 (= res!2216869 (not (nullable!4979 (reg!15139 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))))))))

(assert (=> b!5220867 (=> (not res!2216869) (not e!3249639))))

(declare-fun bm!368420 () Bool)

(assert (=> bm!368420 (= call!368424 (validRegex!6546 (ite c!900962 (reg!15139 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))) (ite c!900963 (regTwo!30133 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292))) (regTwo!30132 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292)))))))))

(declare-fun b!5220868 () Bool)

(declare-fun res!2216867 () Bool)

(declare-fun e!3249640 () Bool)

(assert (=> b!5220868 (=> res!2216867 e!3249640)))

(assert (=> b!5220868 (= res!2216867 (not (is-Concat!23655 (ite c!900744 (regOne!30133 r!7292) (regOne!30132 r!7292)))))))

(assert (=> b!5220868 (= e!3249637 e!3249640)))

(declare-fun b!5220869 () Bool)

(assert (=> b!5220869 (= e!3249640 e!3249641)))

(declare-fun res!2216868 () Bool)

(assert (=> b!5220869 (=> (not res!2216868) (not e!3249641))))

(assert (=> b!5220869 (= res!2216868 call!368423)))

(declare-fun b!5220870 () Bool)

(declare-fun res!2216866 () Bool)

(assert (=> b!5220870 (=> (not res!2216866) (not e!3249642))))

(assert (=> b!5220870 (= res!2216866 call!368423)))

(assert (=> b!5220870 (= e!3249637 e!3249642)))

(assert (= (and d!1683155 (not res!2216870)) b!5220864))

(assert (= (and b!5220864 c!900962) b!5220867))

(assert (= (and b!5220864 (not c!900962)) b!5220863))

(assert (= (and b!5220867 res!2216869) b!5220865))

(assert (= (and b!5220863 c!900963) b!5220870))

(assert (= (and b!5220863 (not c!900963)) b!5220868))

(assert (= (and b!5220870 res!2216866) b!5220866))

(assert (= (and b!5220868 (not res!2216867)) b!5220869))

(assert (= (and b!5220869 res!2216868) b!5220862))

(assert (= (or b!5220866 b!5220862) bm!368419))

(assert (= (or b!5220870 b!5220869) bm!368418))

(assert (= (or b!5220865 bm!368419) bm!368420))

(declare-fun m!6268508 () Bool)

(assert (=> bm!368418 m!6268508))

(declare-fun m!6268510 () Bool)

(assert (=> b!5220867 m!6268510))

(declare-fun m!6268512 () Bool)

(assert (=> bm!368420 m!6268512))

(assert (=> bm!368298 d!1683155))

(assert (=> d!1682951 d!1683151))

(assert (=> d!1682951 d!1682915))

(declare-fun d!1683157 () Bool)

(assert (=> d!1683157 (= (Exists!1991 (ite c!900775 lambda!261970 lambda!261971)) (choose!38813 (ite c!900775 lambda!261970 lambda!261971)))))

(declare-fun bs!1212364 () Bool)

(assert (= bs!1212364 d!1683157))

(declare-fun m!6268514 () Bool)

(assert (=> bs!1212364 m!6268514))

(assert (=> bm!368318 d!1683157))

(declare-fun b!5220871 () Bool)

(declare-fun e!3249643 () (Set Context!8388))

(declare-fun call!368431 () (Set Context!8388))

(assert (=> b!5220871 (= e!3249643 call!368431)))

(declare-fun bm!368421 () Bool)

(declare-fun call!368426 () (Set Context!8388))

(assert (=> bm!368421 (= call!368431 call!368426)))

(declare-fun b!5220872 () Bool)

(declare-fun e!3249648 () (Set Context!8388))

(assert (=> b!5220872 (= e!3249648 call!368431)))

(declare-fun e!3249644 () Bool)

(declare-fun b!5220873 () Bool)

(assert (=> b!5220873 (= e!3249644 (nullable!4979 (regOne!30132 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))))))))

(declare-fun b!5220874 () Bool)

(declare-fun e!3249647 () (Set Context!8388))

(assert (=> b!5220874 (= e!3249647 (set.insert (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368422 () Bool)

(declare-fun call!368430 () List!60729)

(declare-fun call!368429 () List!60729)

(assert (=> bm!368422 (= call!368430 call!368429)))

(declare-fun b!5220875 () Bool)

(declare-fun e!3249645 () (Set Context!8388))

(declare-fun call!368428 () (Set Context!8388))

(assert (=> b!5220875 (= e!3249645 (set.union call!368428 call!368426))))

(declare-fun c!900967 () Bool)

(declare-fun bm!368423 () Bool)

(declare-fun c!900968 () Bool)

(assert (=> bm!368423 (= call!368429 ($colon$colon!1284 (exprs!4694 (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289))) (ite (or c!900967 c!900968) (regTwo!30132 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))))))))

(declare-fun b!5220876 () Bool)

(declare-fun e!3249646 () (Set Context!8388))

(declare-fun call!368427 () (Set Context!8388))

(assert (=> b!5220876 (= e!3249646 (set.union call!368428 call!368427))))

(declare-fun c!900964 () Bool)

(declare-fun bm!368424 () Bool)

(assert (=> bm!368424 (= call!368428 (derivationStepZipperDown!258 (ite c!900964 (regOne!30133 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (regOne!30132 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))))) (ite c!900964 (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289)) (Context!8389 call!368429)) (h!67054 s!2326)))))

(declare-fun b!5220877 () Bool)

(assert (=> b!5220877 (= e!3249643 (as set.empty (Set Context!8388)))))

(declare-fun b!5220878 () Bool)

(assert (=> b!5220878 (= e!3249647 e!3249646)))

(assert (=> b!5220878 (= c!900964 (is-Union!14810 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))))))

(declare-fun b!5220879 () Bool)

(declare-fun c!900966 () Bool)

(assert (=> b!5220879 (= c!900966 (is-Star!14810 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5220879 (= e!3249648 e!3249643)))

(declare-fun b!5220880 () Bool)

(assert (=> b!5220880 (= c!900967 e!3249644)))

(declare-fun res!2216871 () Bool)

(assert (=> b!5220880 (=> (not res!2216871) (not e!3249644))))

(assert (=> b!5220880 (= res!2216871 (is-Concat!23655 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5220880 (= e!3249646 e!3249645)))

(declare-fun d!1683159 () Bool)

(declare-fun c!900965 () Bool)

(assert (=> d!1683159 (= c!900965 (and (is-ElementMatch!14810 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (= (c!900678 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (h!67054 s!2326))))))

(assert (=> d!1683159 (= (derivationStepZipperDown!258 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))) (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289)) (h!67054 s!2326)) e!3249647)))

(declare-fun bm!368425 () Bool)

(assert (=> bm!368425 (= call!368426 call!368427)))

(declare-fun b!5220881 () Bool)

(assert (=> b!5220881 (= e!3249645 e!3249648)))

(assert (=> b!5220881 (= c!900968 (is-Concat!23655 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))))))

(declare-fun bm!368426 () Bool)

(assert (=> bm!368426 (= call!368427 (derivationStepZipperDown!258 (ite c!900964 (regTwo!30133 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (ite c!900967 (regTwo!30132 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (ite c!900968 (regOne!30132 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292))))))) (reg!15139 (ite c!900729 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900732 (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900733 (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))) (reg!15139 (regTwo!30133 (regOne!30132 r!7292)))))))))) (ite (or c!900964 c!900967) (ite (or c!900729 c!900732) lt!2143408 (Context!8389 call!368289)) (Context!8389 call!368430)) (h!67054 s!2326)))))

(assert (= (and d!1683159 c!900965) b!5220874))

(assert (= (and d!1683159 (not c!900965)) b!5220878))

(assert (= (and b!5220878 c!900964) b!5220876))

(assert (= (and b!5220878 (not c!900964)) b!5220880))

(assert (= (and b!5220880 res!2216871) b!5220873))

(assert (= (and b!5220880 c!900967) b!5220875))

(assert (= (and b!5220880 (not c!900967)) b!5220881))

(assert (= (and b!5220881 c!900968) b!5220872))

(assert (= (and b!5220881 (not c!900968)) b!5220879))

(assert (= (and b!5220879 c!900966) b!5220871))

(assert (= (and b!5220879 (not c!900966)) b!5220877))

(assert (= (or b!5220872 b!5220871) bm!368422))

(assert (= (or b!5220872 b!5220871) bm!368421))

(assert (= (or b!5220875 bm!368422) bm!368423))

(assert (= (or b!5220875 bm!368421) bm!368425))

(assert (= (or b!5220876 bm!368425) bm!368426))

(assert (= (or b!5220876 b!5220875) bm!368424))

(declare-fun m!6268516 () Bool)

(assert (=> b!5220874 m!6268516))

(declare-fun m!6268518 () Bool)

(assert (=> b!5220873 m!6268518))

(declare-fun m!6268520 () Bool)

(assert (=> bm!368426 m!6268520))

(declare-fun m!6268522 () Bool)

(assert (=> bm!368423 m!6268522))

(declare-fun m!6268524 () Bool)

(assert (=> bm!368424 m!6268524))

(assert (=> bm!368285 d!1683159))

(declare-fun b!5220882 () Bool)

(declare-fun e!3249651 () Bool)

(assert (=> b!5220882 (= e!3249651 (nullable!4979 (regOne!30132 r!7292)))))

(declare-fun d!1683161 () Bool)

(declare-fun e!3249650 () Bool)

(assert (=> d!1683161 e!3249650))

(declare-fun c!900970 () Bool)

(assert (=> d!1683161 (= c!900970 (is-EmptyExpr!14810 (regOne!30132 r!7292)))))

(declare-fun lt!2143613 () Bool)

(assert (=> d!1683161 (= lt!2143613 e!3249651)))

(declare-fun c!900971 () Bool)

(assert (=> d!1683161 (= c!900971 (isEmpty!32527 (_1!35312 (get!20825 lt!2143520))))))

(assert (=> d!1683161 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1683161 (= (matchR!6995 (regOne!30132 r!7292) (_1!35312 (get!20825 lt!2143520))) lt!2143613)))

(declare-fun b!5220883 () Bool)

(declare-fun res!2216879 () Bool)

(declare-fun e!3249653 () Bool)

(assert (=> b!5220883 (=> res!2216879 e!3249653)))

(assert (=> b!5220883 (= res!2216879 (not (isEmpty!32527 (tail!10285 (_1!35312 (get!20825 lt!2143520))))))))

(declare-fun b!5220884 () Bool)

(declare-fun res!2216873 () Bool)

(declare-fun e!3249654 () Bool)

(assert (=> b!5220884 (=> (not res!2216873) (not e!3249654))))

(declare-fun call!368432 () Bool)

(assert (=> b!5220884 (= res!2216873 (not call!368432))))

(declare-fun b!5220885 () Bool)

(declare-fun res!2216872 () Bool)

(declare-fun e!3249655 () Bool)

(assert (=> b!5220885 (=> res!2216872 e!3249655)))

(assert (=> b!5220885 (= res!2216872 e!3249654)))

(declare-fun res!2216877 () Bool)

(assert (=> b!5220885 (=> (not res!2216877) (not e!3249654))))

(assert (=> b!5220885 (= res!2216877 lt!2143613)))

(declare-fun b!5220886 () Bool)

(declare-fun res!2216874 () Bool)

(assert (=> b!5220886 (=> res!2216874 e!3249655)))

(assert (=> b!5220886 (= res!2216874 (not (is-ElementMatch!14810 (regOne!30132 r!7292))))))

(declare-fun e!3249649 () Bool)

(assert (=> b!5220886 (= e!3249649 e!3249655)))

(declare-fun b!5220887 () Bool)

(declare-fun e!3249652 () Bool)

(assert (=> b!5220887 (= e!3249655 e!3249652)))

(declare-fun res!2216876 () Bool)

(assert (=> b!5220887 (=> (not res!2216876) (not e!3249652))))

(assert (=> b!5220887 (= res!2216876 (not lt!2143613))))

(declare-fun b!5220888 () Bool)

(assert (=> b!5220888 (= e!3249650 e!3249649)))

(declare-fun c!900969 () Bool)

(assert (=> b!5220888 (= c!900969 (is-EmptyLang!14810 (regOne!30132 r!7292)))))

(declare-fun b!5220889 () Bool)

(assert (=> b!5220889 (= e!3249649 (not lt!2143613))))

(declare-fun b!5220890 () Bool)

(assert (=> b!5220890 (= e!3249652 e!3249653)))

(declare-fun res!2216878 () Bool)

(assert (=> b!5220890 (=> res!2216878 e!3249653)))

(assert (=> b!5220890 (= res!2216878 call!368432)))

(declare-fun b!5220891 () Bool)

(assert (=> b!5220891 (= e!3249651 (matchR!6995 (derivativeStep!4056 (regOne!30132 r!7292) (head!11188 (_1!35312 (get!20825 lt!2143520)))) (tail!10285 (_1!35312 (get!20825 lt!2143520)))))))

(declare-fun bm!368427 () Bool)

(assert (=> bm!368427 (= call!368432 (isEmpty!32527 (_1!35312 (get!20825 lt!2143520))))))

(declare-fun b!5220892 () Bool)

(assert (=> b!5220892 (= e!3249650 (= lt!2143613 call!368432))))

(declare-fun b!5220893 () Bool)

(assert (=> b!5220893 (= e!3249653 (not (= (head!11188 (_1!35312 (get!20825 lt!2143520))) (c!900678 (regOne!30132 r!7292)))))))

(declare-fun b!5220894 () Bool)

(declare-fun res!2216875 () Bool)

(assert (=> b!5220894 (=> (not res!2216875) (not e!3249654))))

(assert (=> b!5220894 (= res!2216875 (isEmpty!32527 (tail!10285 (_1!35312 (get!20825 lt!2143520)))))))

(declare-fun b!5220895 () Bool)

(assert (=> b!5220895 (= e!3249654 (= (head!11188 (_1!35312 (get!20825 lt!2143520))) (c!900678 (regOne!30132 r!7292))))))

(assert (= (and d!1683161 c!900971) b!5220882))

(assert (= (and d!1683161 (not c!900971)) b!5220891))

(assert (= (and d!1683161 c!900970) b!5220892))

(assert (= (and d!1683161 (not c!900970)) b!5220888))

(assert (= (and b!5220888 c!900969) b!5220889))

(assert (= (and b!5220888 (not c!900969)) b!5220886))

(assert (= (and b!5220886 (not res!2216874)) b!5220885))

(assert (= (and b!5220885 res!2216877) b!5220884))

(assert (= (and b!5220884 res!2216873) b!5220894))

(assert (= (and b!5220894 res!2216875) b!5220895))

(assert (= (and b!5220885 (not res!2216872)) b!5220887))

(assert (= (and b!5220887 res!2216876) b!5220890))

(assert (= (and b!5220890 (not res!2216878)) b!5220883))

(assert (= (and b!5220883 (not res!2216879)) b!5220893))

(assert (= (or b!5220892 b!5220884 b!5220890) bm!368427))

(declare-fun m!6268526 () Bool)

(assert (=> b!5220883 m!6268526))

(assert (=> b!5220883 m!6268526))

(declare-fun m!6268528 () Bool)

(assert (=> b!5220883 m!6268528))

(declare-fun m!6268530 () Bool)

(assert (=> b!5220895 m!6268530))

(assert (=> b!5220891 m!6268530))

(assert (=> b!5220891 m!6268530))

(declare-fun m!6268532 () Bool)

(assert (=> b!5220891 m!6268532))

(assert (=> b!5220891 m!6268526))

(assert (=> b!5220891 m!6268532))

(assert (=> b!5220891 m!6268526))

(declare-fun m!6268534 () Bool)

(assert (=> b!5220891 m!6268534))

(assert (=> b!5220893 m!6268530))

(assert (=> b!5220894 m!6268526))

(assert (=> b!5220894 m!6268526))

(assert (=> b!5220894 m!6268528))

(declare-fun m!6268536 () Bool)

(assert (=> b!5220882 m!6268536))

(declare-fun m!6268538 () Bool)

(assert (=> d!1683161 m!6268538))

(assert (=> d!1683161 m!6267828))

(assert (=> bm!368427 m!6268538))

(assert (=> b!5219983 d!1683161))

(assert (=> b!5219983 d!1683091))

(assert (=> b!5220124 d!1682937))

(declare-fun call!368433 () (Set Context!8388))

(declare-fun e!3249658 () (Set Context!8388))

(declare-fun b!5220896 () Bool)

(assert (=> b!5220896 (= e!3249658 (set.union call!368433 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343))))))) (h!67054 s!2326))))))

(declare-fun b!5220897 () Bool)

(declare-fun e!3249657 () (Set Context!8388))

(assert (=> b!5220897 (= e!3249657 (as set.empty (Set Context!8388)))))

(declare-fun bm!368428 () Bool)

(assert (=> bm!368428 (= call!368433 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343))))))) (h!67054 s!2326)))))

(declare-fun b!5220898 () Bool)

(assert (=> b!5220898 (= e!3249658 e!3249657)))

(declare-fun c!900972 () Bool)

(assert (=> b!5220898 (= c!900972 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun b!5220900 () Bool)

(assert (=> b!5220900 (= e!3249657 call!368433)))

(declare-fun d!1683163 () Bool)

(declare-fun c!900973 () Bool)

(declare-fun e!3249656 () Bool)

(assert (=> d!1683163 (= c!900973 e!3249656)))

(declare-fun res!2216880 () Bool)

(assert (=> d!1683163 (=> (not res!2216880) (not e!3249656))))

(assert (=> d!1683163 (= res!2216880 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))))))))

(assert (=> d!1683163 (= (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326)) e!3249658)))

(declare-fun b!5220899 () Bool)

(assert (=> b!5220899 (= e!3249656 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343))))))))))

(assert (= (and d!1683163 res!2216880) b!5220899))

(assert (= (and d!1683163 c!900973) b!5220896))

(assert (= (and d!1683163 (not c!900973)) b!5220898))

(assert (= (and b!5220898 c!900972) b!5220900))

(assert (= (and b!5220898 (not c!900972)) b!5220897))

(assert (= (or b!5220896 b!5220900) bm!368428))

(declare-fun m!6268540 () Bool)

(assert (=> b!5220896 m!6268540))

(declare-fun m!6268542 () Bool)

(assert (=> bm!368428 m!6268542))

(declare-fun m!6268544 () Bool)

(assert (=> b!5220899 m!6268544))

(assert (=> b!5220121 d!1683163))

(declare-fun d!1683165 () Bool)

(assert (=> d!1683165 (= (isEmptyLang!779 lt!2143549) (is-EmptyLang!14810 lt!2143549))))

(assert (=> b!5220250 d!1683165))

(declare-fun bm!368433 () Bool)

(declare-fun call!368438 () Bool)

(declare-fun c!900976 () Bool)

(assert (=> bm!368433 (= call!368438 (nullable!4979 (ite c!900976 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun b!5220915 () Bool)

(declare-fun e!3249676 () Bool)

(declare-fun e!3249674 () Bool)

(assert (=> b!5220915 (= e!3249676 e!3249674)))

(declare-fun res!2216893 () Bool)

(declare-fun call!368439 () Bool)

(assert (=> b!5220915 (= res!2216893 call!368439)))

(assert (=> b!5220915 (=> (not res!2216893) (not e!3249674))))

(declare-fun bm!368434 () Bool)

(assert (=> bm!368434 (= call!368439 (nullable!4979 (ite c!900976 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun d!1683167 () Bool)

(declare-fun res!2216894 () Bool)

(declare-fun e!3249672 () Bool)

(assert (=> d!1683167 (=> res!2216894 e!3249672)))

(assert (=> d!1683167 (= res!2216894 (is-EmptyExpr!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> d!1683167 (= (nullableFct!1386 (h!67053 (exprs!4694 (h!67055 zl!343)))) e!3249672)))

(declare-fun b!5220916 () Bool)

(declare-fun e!3249673 () Bool)

(assert (=> b!5220916 (= e!3249672 e!3249673)))

(declare-fun res!2216895 () Bool)

(assert (=> b!5220916 (=> (not res!2216895) (not e!3249673))))

(assert (=> b!5220916 (= res!2216895 (and (not (is-EmptyLang!14810 (h!67053 (exprs!4694 (h!67055 zl!343))))) (not (is-ElementMatch!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))

(declare-fun b!5220917 () Bool)

(declare-fun e!3249671 () Bool)

(assert (=> b!5220917 (= e!3249673 e!3249671)))

(declare-fun res!2216891 () Bool)

(assert (=> b!5220917 (=> res!2216891 e!3249671)))

(assert (=> b!5220917 (= res!2216891 (is-Star!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220918 () Bool)

(assert (=> b!5220918 (= e!3249671 e!3249676)))

(assert (=> b!5220918 (= c!900976 (is-Union!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220919 () Bool)

(declare-fun e!3249675 () Bool)

(assert (=> b!5220919 (= e!3249675 call!368438)))

(declare-fun b!5220920 () Bool)

(assert (=> b!5220920 (= e!3249674 call!368438)))

(declare-fun b!5220921 () Bool)

(assert (=> b!5220921 (= e!3249676 e!3249675)))

(declare-fun res!2216892 () Bool)

(assert (=> b!5220921 (= res!2216892 call!368439)))

(assert (=> b!5220921 (=> res!2216892 e!3249675)))

(assert (= (and d!1683167 (not res!2216894)) b!5220916))

(assert (= (and b!5220916 res!2216895) b!5220917))

(assert (= (and b!5220917 (not res!2216891)) b!5220918))

(assert (= (and b!5220918 c!900976) b!5220921))

(assert (= (and b!5220918 (not c!900976)) b!5220915))

(assert (= (and b!5220921 (not res!2216892)) b!5220919))

(assert (= (and b!5220915 res!2216893) b!5220920))

(assert (= (or b!5220919 b!5220920) bm!368433))

(assert (= (or b!5220921 b!5220915) bm!368434))

(declare-fun m!6268546 () Bool)

(assert (=> bm!368433 m!6268546))

(declare-fun m!6268548 () Bool)

(assert (=> bm!368434 m!6268548))

(assert (=> d!1682937 d!1683167))

(declare-fun bs!1212365 () Bool)

(declare-fun d!1683169 () Bool)

(assert (= bs!1212365 (and d!1683169 d!1682965)))

(declare-fun lambda!262016 () Int)

(assert (=> bs!1212365 (= lambda!262016 lambda!261974)))

(declare-fun bs!1212366 () Bool)

(assert (= bs!1212366 (and d!1683169 d!1683081)))

(assert (=> bs!1212366 (= lambda!262016 lambda!262006)))

(declare-fun bs!1212367 () Bool)

(assert (= bs!1212367 (and d!1683169 d!1683129)))

(assert (=> bs!1212367 (= lambda!262016 lambda!262015)))

(declare-fun bs!1212368 () Bool)

(assert (= bs!1212368 (and d!1683169 d!1682967)))

(assert (=> bs!1212368 (= lambda!262016 lambda!261977)))

(declare-fun bs!1212369 () Bool)

(assert (= bs!1212369 (and d!1683169 d!1682933)))

(assert (=> bs!1212369 (= lambda!262016 lambda!261965)))

(declare-fun bs!1212370 () Bool)

(assert (= bs!1212370 (and d!1683169 d!1682879)))

(assert (=> bs!1212370 (= lambda!262016 lambda!261952)))

(declare-fun bs!1212371 () Bool)

(assert (= bs!1212371 (and d!1683169 d!1682913)))

(assert (=> bs!1212371 (= lambda!262016 lambda!261964)))

(assert (=> d!1683169 (= (inv!80273 (h!67055 (t!373901 zl!343))) (forall!14242 (exprs!4694 (h!67055 (t!373901 zl!343))) lambda!262016))))

(declare-fun bs!1212372 () Bool)

(assert (= bs!1212372 d!1683169))

(declare-fun m!6268550 () Bool)

(assert (=> bs!1212372 m!6268550))

(assert (=> b!5220303 d!1683169))

(declare-fun d!1683171 () Bool)

(assert (=> d!1683171 (= (isEmptyExpr!770 lt!2143510) (is-EmptyExpr!14810 lt!2143510))))

(assert (=> b!5219942 d!1683171))

(declare-fun d!1683173 () Bool)

(assert (=> d!1683173 (= ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900737 c!900738) (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (regOne!30133 (regOne!30132 r!7292)))) (Cons!60605 (ite (or c!900737 c!900738) (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))) (regOne!30133 (regOne!30132 r!7292))) (exprs!4694 lt!2143408)))))

(assert (=> bm!368288 d!1683173))

(declare-fun d!1683175 () Bool)

(assert (=> d!1683175 (= (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (nullableFct!1386 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(declare-fun bs!1212373 () Bool)

(assert (= bs!1212373 d!1683175))

(declare-fun m!6268552 () Bool)

(assert (=> bs!1212373 m!6268552))

(assert (=> b!5220103 d!1683175))

(declare-fun d!1683177 () Bool)

(assert (=> d!1683177 (= (nullable!4979 (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))) (nullableFct!1386 (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))))

(declare-fun bs!1212374 () Bool)

(assert (= bs!1212374 d!1683177))

(declare-fun m!6268554 () Bool)

(assert (=> bs!1212374 m!6268554))

(assert (=> b!5220044 d!1683177))

(declare-fun b!5220922 () Bool)

(declare-fun e!3249677 () (Set Context!8388))

(declare-fun call!368445 () (Set Context!8388))

(assert (=> b!5220922 (= e!3249677 call!368445)))

(declare-fun bm!368435 () Bool)

(declare-fun call!368440 () (Set Context!8388))

(assert (=> bm!368435 (= call!368445 call!368440)))

(declare-fun b!5220923 () Bool)

(declare-fun e!3249682 () (Set Context!8388))

(assert (=> b!5220923 (= e!3249682 call!368445)))

(declare-fun b!5220924 () Bool)

(declare-fun e!3249678 () Bool)

(assert (=> b!5220924 (= e!3249678 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 lt!2143405)))))))

(declare-fun b!5220925 () Bool)

(declare-fun e!3249681 () (Set Context!8388))

(assert (=> b!5220925 (= e!3249681 (set.insert (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (as set.empty (Set Context!8388))))))

(declare-fun bm!368436 () Bool)

(declare-fun call!368444 () List!60729)

(declare-fun call!368443 () List!60729)

(assert (=> bm!368436 (= call!368444 call!368443)))

(declare-fun b!5220926 () Bool)

(declare-fun e!3249679 () (Set Context!8388))

(declare-fun call!368442 () (Set Context!8388))

(assert (=> b!5220926 (= e!3249679 (set.union call!368442 call!368440))))

(declare-fun c!900980 () Bool)

(declare-fun c!900981 () Bool)

(declare-fun bm!368437 () Bool)

(assert (=> bm!368437 (= call!368443 ($colon$colon!1284 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405)))) (ite (or c!900980 c!900981) (regTwo!30132 (h!67053 (exprs!4694 lt!2143405))) (h!67053 (exprs!4694 lt!2143405)))))))

(declare-fun b!5220927 () Bool)

(declare-fun e!3249680 () (Set Context!8388))

(declare-fun call!368441 () (Set Context!8388))

(assert (=> b!5220927 (= e!3249680 (set.union call!368442 call!368441))))

(declare-fun c!900977 () Bool)

(declare-fun bm!368438 () Bool)

(assert (=> bm!368438 (= call!368442 (derivationStepZipperDown!258 (ite c!900977 (regOne!30133 (h!67053 (exprs!4694 lt!2143405))) (regOne!30132 (h!67053 (exprs!4694 lt!2143405)))) (ite c!900977 (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (Context!8389 call!368443)) (h!67054 s!2326)))))

(declare-fun b!5220928 () Bool)

(assert (=> b!5220928 (= e!3249677 (as set.empty (Set Context!8388)))))

(declare-fun b!5220929 () Bool)

(assert (=> b!5220929 (= e!3249681 e!3249680)))

(assert (=> b!5220929 (= c!900977 (is-Union!14810 (h!67053 (exprs!4694 lt!2143405))))))

(declare-fun b!5220930 () Bool)

(declare-fun c!900979 () Bool)

(assert (=> b!5220930 (= c!900979 (is-Star!14810 (h!67053 (exprs!4694 lt!2143405))))))

(assert (=> b!5220930 (= e!3249682 e!3249677)))

(declare-fun b!5220931 () Bool)

(assert (=> b!5220931 (= c!900980 e!3249678)))

(declare-fun res!2216896 () Bool)

(assert (=> b!5220931 (=> (not res!2216896) (not e!3249678))))

(assert (=> b!5220931 (= res!2216896 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143405))))))

(assert (=> b!5220931 (= e!3249680 e!3249679)))

(declare-fun d!1683179 () Bool)

(declare-fun c!900978 () Bool)

(assert (=> d!1683179 (= c!900978 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 lt!2143405))) (= (c!900678 (h!67053 (exprs!4694 lt!2143405))) (h!67054 s!2326))))))

(assert (=> d!1683179 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143405)) (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (h!67054 s!2326)) e!3249681)))

(declare-fun bm!368439 () Bool)

(assert (=> bm!368439 (= call!368440 call!368441)))

(declare-fun b!5220932 () Bool)

(assert (=> b!5220932 (= e!3249679 e!3249682)))

(assert (=> b!5220932 (= c!900981 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143405))))))

(declare-fun bm!368440 () Bool)

(assert (=> bm!368440 (= call!368441 (derivationStepZipperDown!258 (ite c!900977 (regTwo!30133 (h!67053 (exprs!4694 lt!2143405))) (ite c!900980 (regTwo!30132 (h!67053 (exprs!4694 lt!2143405))) (ite c!900981 (regOne!30132 (h!67053 (exprs!4694 lt!2143405))) (reg!15139 (h!67053 (exprs!4694 lt!2143405)))))) (ite (or c!900977 c!900980) (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (Context!8389 call!368444)) (h!67054 s!2326)))))

(assert (= (and d!1683179 c!900978) b!5220925))

(assert (= (and d!1683179 (not c!900978)) b!5220929))

(assert (= (and b!5220929 c!900977) b!5220927))

(assert (= (and b!5220929 (not c!900977)) b!5220931))

(assert (= (and b!5220931 res!2216896) b!5220924))

(assert (= (and b!5220931 c!900980) b!5220926))

(assert (= (and b!5220931 (not c!900980)) b!5220932))

(assert (= (and b!5220932 c!900981) b!5220923))

(assert (= (and b!5220932 (not c!900981)) b!5220930))

(assert (= (and b!5220930 c!900979) b!5220922))

(assert (= (and b!5220930 (not c!900979)) b!5220928))

(assert (= (or b!5220923 b!5220922) bm!368436))

(assert (= (or b!5220923 b!5220922) bm!368435))

(assert (= (or b!5220926 bm!368436) bm!368437))

(assert (= (or b!5220926 bm!368435) bm!368439))

(assert (= (or b!5220927 bm!368439) bm!368440))

(assert (= (or b!5220927 b!5220926) bm!368438))

(declare-fun m!6268556 () Bool)

(assert (=> b!5220925 m!6268556))

(declare-fun m!6268558 () Bool)

(assert (=> b!5220924 m!6268558))

(declare-fun m!6268560 () Bool)

(assert (=> bm!368440 m!6268560))

(declare-fun m!6268562 () Bool)

(assert (=> bm!368437 m!6268562))

(declare-fun m!6268564 () Bool)

(assert (=> bm!368438 m!6268564))

(assert (=> bm!368304 d!1683179))

(declare-fun d!1683181 () Bool)

(assert (=> d!1683181 true))

(assert (=> d!1683181 true))

(declare-fun res!2216899 () Bool)

(assert (=> d!1683181 (= (choose!38813 lambda!261932) res!2216899)))

(assert (=> d!1682899 d!1683181))

(assert (=> bs!1212290 d!1682947))

(declare-fun d!1683183 () Bool)

(declare-fun c!900982 () Bool)

(assert (=> d!1683183 (= c!900982 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249683 () Bool)

(assert (=> d!1683183 (= (matchZipper!1054 (derivationStepZipper!1078 lt!2143411 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249683)))

(declare-fun b!5220933 () Bool)

(assert (=> b!5220933 (= e!3249683 (nullableZipper!1234 (derivationStepZipper!1078 lt!2143411 (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5220934 () Bool)

(assert (=> b!5220934 (= e!3249683 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 lt!2143411 (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683183 c!900982) b!5220933))

(assert (= (and d!1683183 (not c!900982)) b!5220934))

(assert (=> d!1683183 m!6267798))

(declare-fun m!6268566 () Bool)

(assert (=> d!1683183 m!6268566))

(assert (=> b!5220933 m!6267862))

(declare-fun m!6268568 () Bool)

(assert (=> b!5220933 m!6268568))

(assert (=> b!5220934 m!6267798))

(declare-fun m!6268570 () Bool)

(assert (=> b!5220934 m!6268570))

(assert (=> b!5220934 m!6267862))

(assert (=> b!5220934 m!6268570))

(declare-fun m!6268572 () Bool)

(assert (=> b!5220934 m!6268572))

(assert (=> b!5220934 m!6267798))

(declare-fun m!6268574 () Bool)

(assert (=> b!5220934 m!6268574))

(assert (=> b!5220934 m!6268572))

(assert (=> b!5220934 m!6268574))

(declare-fun m!6268576 () Bool)

(assert (=> b!5220934 m!6268576))

(assert (=> b!5220005 d!1683183))

(declare-fun bs!1212375 () Bool)

(declare-fun d!1683185 () Bool)

(assert (= bs!1212375 (and d!1683185 b!5219789)))

(declare-fun lambda!262019 () Int)

(assert (=> bs!1212375 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262019 lambda!261934))))

(assert (=> d!1683185 true))

(assert (=> d!1683185 (= (derivationStepZipper!1078 lt!2143411 (head!11188 (t!373900 s!2326))) (flatMap!537 lt!2143411 lambda!262019))))

(declare-fun bs!1212376 () Bool)

(assert (= bs!1212376 d!1683185))

(declare-fun m!6268578 () Bool)

(assert (=> bs!1212376 m!6268578))

(assert (=> b!5220005 d!1683185))

(declare-fun d!1683187 () Bool)

(assert (=> d!1683187 (= (head!11188 (t!373900 s!2326)) (h!67054 (t!373900 s!2326)))))

(assert (=> b!5220005 d!1683187))

(declare-fun d!1683189 () Bool)

(assert (=> d!1683189 (= (tail!10285 (t!373900 s!2326)) (t!373900 (t!373900 s!2326)))))

(assert (=> b!5220005 d!1683189))

(declare-fun d!1683191 () Bool)

(assert (=> d!1683191 (= (head!11187 (unfocusZipperList!252 zl!343)) (h!67053 (unfocusZipperList!252 zl!343)))))

(assert (=> b!5220244 d!1683191))

(declare-fun b!5220937 () Bool)

(declare-fun e!3249684 () (Set Context!8388))

(declare-fun call!368451 () (Set Context!8388))

(assert (=> b!5220937 (= e!3249684 call!368451)))

(declare-fun bm!368441 () Bool)

(declare-fun call!368446 () (Set Context!8388))

(assert (=> bm!368441 (= call!368451 call!368446)))

(declare-fun b!5220938 () Bool)

(declare-fun e!3249689 () (Set Context!8388))

(assert (=> b!5220938 (= e!3249689 call!368451)))

(declare-fun b!5220939 () Bool)

(declare-fun e!3249685 () Bool)

(assert (=> b!5220939 (= e!3249685 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))))

(declare-fun b!5220940 () Bool)

(declare-fun e!3249688 () (Set Context!8388))

(assert (=> b!5220940 (= e!3249688 (set.insert (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (as set.empty (Set Context!8388))))))

(declare-fun bm!368442 () Bool)

(declare-fun call!368450 () List!60729)

(declare-fun call!368449 () List!60729)

(assert (=> bm!368442 (= call!368450 call!368449)))

(declare-fun b!5220941 () Bool)

(declare-fun e!3249686 () (Set Context!8388))

(declare-fun call!368448 () (Set Context!8388))

(assert (=> b!5220941 (= e!3249686 (set.union call!368448 call!368446))))

(declare-fun bm!368443 () Bool)

(declare-fun c!900989 () Bool)

(declare-fun c!900988 () Bool)

(assert (=> bm!368443 (= call!368449 ($colon$colon!1284 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))) (ite (or c!900988 c!900989) (regTwo!30132 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))))

(declare-fun b!5220942 () Bool)

(declare-fun e!3249687 () (Set Context!8388))

(declare-fun call!368447 () (Set Context!8388))

(assert (=> b!5220942 (= e!3249687 (set.union call!368448 call!368447))))

(declare-fun bm!368444 () Bool)

(declare-fun c!900985 () Bool)

(assert (=> bm!368444 (= call!368448 (derivationStepZipperDown!258 (ite c!900985 (regOne!30133 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (regOne!30132 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))) (ite c!900985 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (Context!8389 call!368449)) (h!67054 s!2326)))))

(declare-fun b!5220943 () Bool)

(assert (=> b!5220943 (= e!3249684 (as set.empty (Set Context!8388)))))

(declare-fun b!5220944 () Bool)

(assert (=> b!5220944 (= e!3249688 e!3249687)))

(assert (=> b!5220944 (= c!900985 (is-Union!14810 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(declare-fun b!5220945 () Bool)

(declare-fun c!900987 () Bool)

(assert (=> b!5220945 (= c!900987 (is-Star!14810 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(assert (=> b!5220945 (= e!3249689 e!3249684)))

(declare-fun b!5220946 () Bool)

(assert (=> b!5220946 (= c!900988 e!3249685)))

(declare-fun res!2216900 () Bool)

(assert (=> b!5220946 (=> (not res!2216900) (not e!3249685))))

(assert (=> b!5220946 (= res!2216900 (is-Concat!23655 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(assert (=> b!5220946 (= e!3249687 e!3249686)))

(declare-fun d!1683193 () Bool)

(declare-fun c!900986 () Bool)

(assert (=> d!1683193 (= c!900986 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (= (c!900678 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326))))))

(assert (=> d!1683193 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326)) e!3249688)))

(declare-fun bm!368445 () Bool)

(assert (=> bm!368445 (= call!368446 call!368447)))

(declare-fun b!5220947 () Bool)

(assert (=> b!5220947 (= e!3249686 e!3249689)))

(assert (=> b!5220947 (= c!900989 (is-Concat!23655 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))))))

(declare-fun bm!368446 () Bool)

(assert (=> bm!368446 (= call!368447 (derivationStepZipperDown!258 (ite c!900985 (regTwo!30133 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (ite c!900988 (regTwo!30132 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (ite c!900989 (regOne!30132 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (reg!15139 (h!67053 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))))))) (ite (or c!900985 c!900988) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (Cons!60605 (h!67053 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343)))))))) (Context!8389 call!368450)) (h!67054 s!2326)))))

(assert (= (and d!1683193 c!900986) b!5220940))

(assert (= (and d!1683193 (not c!900986)) b!5220944))

(assert (= (and b!5220944 c!900985) b!5220942))

(assert (= (and b!5220944 (not c!900985)) b!5220946))

(assert (= (and b!5220946 res!2216900) b!5220939))

(assert (= (and b!5220946 c!900988) b!5220941))

(assert (= (and b!5220946 (not c!900988)) b!5220947))

(assert (= (and b!5220947 c!900989) b!5220938))

(assert (= (and b!5220947 (not c!900989)) b!5220945))

(assert (= (and b!5220945 c!900987) b!5220937))

(assert (= (and b!5220945 (not c!900987)) b!5220943))

(assert (= (or b!5220938 b!5220937) bm!368442))

(assert (= (or b!5220938 b!5220937) bm!368441))

(assert (= (or b!5220941 bm!368442) bm!368443))

(assert (= (or b!5220941 bm!368441) bm!368445))

(assert (= (or b!5220942 bm!368445) bm!368446))

(assert (= (or b!5220942 b!5220941) bm!368444))

(declare-fun m!6268580 () Bool)

(assert (=> b!5220940 m!6268580))

(declare-fun m!6268582 () Bool)

(assert (=> b!5220939 m!6268582))

(declare-fun m!6268584 () Bool)

(assert (=> bm!368446 m!6268584))

(declare-fun m!6268586 () Bool)

(assert (=> bm!368443 m!6268586))

(declare-fun m!6268588 () Bool)

(assert (=> bm!368444 m!6268588))

(assert (=> bm!368305 d!1683193))

(declare-fun e!3249692 () (Set Context!8388))

(declare-fun call!368452 () (Set Context!8388))

(declare-fun b!5220948 () Bool)

(assert (=> b!5220948 (= e!3249692 (set.union call!368452 (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405)))))) (h!67054 s!2326))))))

(declare-fun b!5220949 () Bool)

(declare-fun e!3249691 () (Set Context!8388))

(assert (=> b!5220949 (= e!3249691 (as set.empty (Set Context!8388)))))

(declare-fun bm!368447 () Bool)

(assert (=> bm!368447 (= call!368452 (derivationStepZipperDown!258 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405))))) (Context!8389 (t!373899 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405)))))) (h!67054 s!2326)))))

(declare-fun b!5220950 () Bool)

(assert (=> b!5220950 (= e!3249692 e!3249691)))

(declare-fun c!900990 () Bool)

(assert (=> b!5220950 (= c!900990 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405))))))))

(declare-fun b!5220952 () Bool)

(assert (=> b!5220952 (= e!3249691 call!368452)))

(declare-fun d!1683195 () Bool)

(declare-fun c!900991 () Bool)

(declare-fun e!3249690 () Bool)

(assert (=> d!1683195 (= c!900991 e!3249690)))

(declare-fun res!2216901 () Bool)

(assert (=> d!1683195 (=> (not res!2216901) (not e!3249690))))

(assert (=> d!1683195 (= res!2216901 (is-Cons!60605 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405))))))))

(assert (=> d!1683195 (= (derivationStepZipperUp!182 (Context!8389 (t!373899 (exprs!4694 lt!2143405))) (h!67054 s!2326)) e!3249692)))

(declare-fun b!5220951 () Bool)

(assert (=> b!5220951 (= e!3249690 (nullable!4979 (h!67053 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143405)))))))))

(assert (= (and d!1683195 res!2216901) b!5220951))

(assert (= (and d!1683195 c!900991) b!5220948))

(assert (= (and d!1683195 (not c!900991)) b!5220950))

(assert (= (and b!5220950 c!900990) b!5220952))

(assert (= (and b!5220950 (not c!900990)) b!5220949))

(assert (= (or b!5220948 b!5220952) bm!368447))

(declare-fun m!6268590 () Bool)

(assert (=> b!5220948 m!6268590))

(declare-fun m!6268592 () Bool)

(assert (=> bm!368447 m!6268592))

(declare-fun m!6268594 () Bool)

(assert (=> b!5220951 m!6268594))

(assert (=> b!5220095 d!1683195))

(declare-fun d!1683197 () Bool)

(assert (=> d!1683197 true))

(assert (=> d!1683197 true))

(declare-fun res!2216902 () Bool)

(assert (=> d!1683197 (= (choose!38813 lambda!261933) res!2216902)))

(assert (=> d!1682891 d!1683197))

(declare-fun b!5220953 () Bool)

(declare-fun e!3249698 () Bool)

(declare-fun call!368455 () Bool)

(assert (=> b!5220953 (= e!3249698 call!368455)))

(declare-fun bm!368448 () Bool)

(declare-fun call!368453 () Bool)

(declare-fun c!900993 () Bool)

(assert (=> bm!368448 (= call!368453 (validRegex!6546 (ite c!900993 (regOne!30133 lt!2143510) (regOne!30132 lt!2143510))))))

(declare-fun b!5220954 () Bool)

(declare-fun e!3249693 () Bool)

(declare-fun e!3249694 () Bool)

(assert (=> b!5220954 (= e!3249693 e!3249694)))

(assert (=> b!5220954 (= c!900993 (is-Union!14810 lt!2143510))))

(declare-fun bm!368449 () Bool)

(declare-fun call!368454 () Bool)

(assert (=> bm!368449 (= call!368455 call!368454)))

(declare-fun d!1683199 () Bool)

(declare-fun res!2216907 () Bool)

(declare-fun e!3249695 () Bool)

(assert (=> d!1683199 (=> res!2216907 e!3249695)))

(assert (=> d!1683199 (= res!2216907 (is-ElementMatch!14810 lt!2143510))))

(assert (=> d!1683199 (= (validRegex!6546 lt!2143510) e!3249695)))

(declare-fun b!5220955 () Bool)

(assert (=> b!5220955 (= e!3249695 e!3249693)))

(declare-fun c!900992 () Bool)

(assert (=> b!5220955 (= c!900992 (is-Star!14810 lt!2143510))))

(declare-fun b!5220956 () Bool)

(declare-fun e!3249696 () Bool)

(assert (=> b!5220956 (= e!3249696 call!368454)))

(declare-fun b!5220957 () Bool)

(declare-fun e!3249699 () Bool)

(assert (=> b!5220957 (= e!3249699 call!368455)))

(declare-fun b!5220958 () Bool)

(assert (=> b!5220958 (= e!3249693 e!3249696)))

(declare-fun res!2216906 () Bool)

(assert (=> b!5220958 (= res!2216906 (not (nullable!4979 (reg!15139 lt!2143510))))))

(assert (=> b!5220958 (=> (not res!2216906) (not e!3249696))))

(declare-fun bm!368450 () Bool)

(assert (=> bm!368450 (= call!368454 (validRegex!6546 (ite c!900992 (reg!15139 lt!2143510) (ite c!900993 (regTwo!30133 lt!2143510) (regTwo!30132 lt!2143510)))))))

(declare-fun b!5220959 () Bool)

(declare-fun res!2216904 () Bool)

(declare-fun e!3249697 () Bool)

(assert (=> b!5220959 (=> res!2216904 e!3249697)))

(assert (=> b!5220959 (= res!2216904 (not (is-Concat!23655 lt!2143510)))))

(assert (=> b!5220959 (= e!3249694 e!3249697)))

(declare-fun b!5220960 () Bool)

(assert (=> b!5220960 (= e!3249697 e!3249698)))

(declare-fun res!2216905 () Bool)

(assert (=> b!5220960 (=> (not res!2216905) (not e!3249698))))

(assert (=> b!5220960 (= res!2216905 call!368453)))

(declare-fun b!5220961 () Bool)

(declare-fun res!2216903 () Bool)

(assert (=> b!5220961 (=> (not res!2216903) (not e!3249699))))

(assert (=> b!5220961 (= res!2216903 call!368453)))

(assert (=> b!5220961 (= e!3249694 e!3249699)))

(assert (= (and d!1683199 (not res!2216907)) b!5220955))

(assert (= (and b!5220955 c!900992) b!5220958))

(assert (= (and b!5220955 (not c!900992)) b!5220954))

(assert (= (and b!5220958 res!2216906) b!5220956))

(assert (= (and b!5220954 c!900993) b!5220961))

(assert (= (and b!5220954 (not c!900993)) b!5220959))

(assert (= (and b!5220961 res!2216903) b!5220957))

(assert (= (and b!5220959 (not res!2216904)) b!5220960))

(assert (= (and b!5220960 res!2216905) b!5220953))

(assert (= (or b!5220957 b!5220953) bm!368449))

(assert (= (or b!5220961 b!5220960) bm!368448))

(assert (= (or b!5220956 bm!368449) bm!368450))

(declare-fun m!6268596 () Bool)

(assert (=> bm!368448 m!6268596))

(declare-fun m!6268598 () Bool)

(assert (=> b!5220958 m!6268598))

(declare-fun m!6268600 () Bool)

(assert (=> bm!368450 m!6268600))

(assert (=> d!1682879 d!1683199))

(declare-fun d!1683201 () Bool)

(declare-fun res!2216908 () Bool)

(declare-fun e!3249700 () Bool)

(assert (=> d!1683201 (=> res!2216908 e!3249700)))

(assert (=> d!1683201 (= res!2216908 (is-Nil!60605 (exprs!4694 (h!67055 zl!343))))))

(assert (=> d!1683201 (= (forall!14242 (exprs!4694 (h!67055 zl!343)) lambda!261952) e!3249700)))

(declare-fun b!5220962 () Bool)

(declare-fun e!3249701 () Bool)

(assert (=> b!5220962 (= e!3249700 e!3249701)))

(declare-fun res!2216909 () Bool)

(assert (=> b!5220962 (=> (not res!2216909) (not e!3249701))))

(assert (=> b!5220962 (= res!2216909 (dynLambda!23947 lambda!261952 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220963 () Bool)

(assert (=> b!5220963 (= e!3249701 (forall!14242 (t!373899 (exprs!4694 (h!67055 zl!343))) lambda!261952))))

(assert (= (and d!1683201 (not res!2216908)) b!5220962))

(assert (= (and b!5220962 res!2216909) b!5220963))

(declare-fun b_lambda!201871 () Bool)

(assert (=> (not b_lambda!201871) (not b!5220962)))

(declare-fun m!6268602 () Bool)

(assert (=> b!5220962 m!6268602))

(declare-fun m!6268604 () Bool)

(assert (=> b!5220963 m!6268604))

(assert (=> d!1682879 d!1683201))

(assert (=> d!1682925 d!1682923))

(declare-fun d!1683203 () Bool)

(assert (=> d!1683203 (= (flatMap!537 lt!2143409 lambda!261934) (dynLambda!23945 lambda!261934 lt!2143417))))

(assert (=> d!1683203 true))

(declare-fun _$13!1720 () Unit!152510)

(assert (=> d!1683203 (= (choose!38817 lt!2143409 lt!2143417 lambda!261934) _$13!1720)))

(declare-fun b_lambda!201873 () Bool)

(assert (=> (not b_lambda!201873) (not d!1683203)))

(declare-fun bs!1212377 () Bool)

(assert (= bs!1212377 d!1683203))

(assert (=> bs!1212377 m!6267624))

(assert (=> bs!1212377 m!6267914))

(assert (=> d!1682925 d!1683203))

(declare-fun b!5220964 () Bool)

(declare-fun e!3249707 () Bool)

(declare-fun call!368458 () Bool)

(assert (=> b!5220964 (= e!3249707 call!368458)))

(declare-fun call!368456 () Bool)

(declare-fun c!900995 () Bool)

(declare-fun bm!368451 () Bool)

(assert (=> bm!368451 (= call!368456 (validRegex!6546 (ite c!900995 (regOne!30133 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))) (regOne!30132 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))))

(declare-fun b!5220965 () Bool)

(declare-fun e!3249702 () Bool)

(declare-fun e!3249703 () Bool)

(assert (=> b!5220965 (= e!3249702 e!3249703)))

(assert (=> b!5220965 (= c!900995 (is-Union!14810 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))

(declare-fun bm!368452 () Bool)

(declare-fun call!368457 () Bool)

(assert (=> bm!368452 (= call!368458 call!368457)))

(declare-fun d!1683205 () Bool)

(declare-fun res!2216914 () Bool)

(declare-fun e!3249704 () Bool)

(assert (=> d!1683205 (=> res!2216914 e!3249704)))

(assert (=> d!1683205 (= res!2216914 (is-ElementMatch!14810 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))

(assert (=> d!1683205 (= (validRegex!6546 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))) e!3249704)))

(declare-fun b!5220966 () Bool)

(assert (=> b!5220966 (= e!3249704 e!3249702)))

(declare-fun c!900994 () Bool)

(assert (=> b!5220966 (= c!900994 (is-Star!14810 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))

(declare-fun b!5220967 () Bool)

(declare-fun e!3249705 () Bool)

(assert (=> b!5220967 (= e!3249705 call!368457)))

(declare-fun b!5220968 () Bool)

(declare-fun e!3249708 () Bool)

(assert (=> b!5220968 (= e!3249708 call!368458)))

(declare-fun b!5220969 () Bool)

(assert (=> b!5220969 (= e!3249702 e!3249705)))

(declare-fun res!2216913 () Bool)

(assert (=> b!5220969 (= res!2216913 (not (nullable!4979 (reg!15139 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))))))))

(assert (=> b!5220969 (=> (not res!2216913) (not e!3249705))))

(declare-fun bm!368453 () Bool)

(assert (=> bm!368453 (= call!368457 (validRegex!6546 (ite c!900994 (reg!15139 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))) (ite c!900995 (regTwo!30133 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292)))) (regTwo!30132 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292))))))))))

(declare-fun b!5220970 () Bool)

(declare-fun res!2216911 () Bool)

(declare-fun e!3249706 () Bool)

(assert (=> b!5220970 (=> res!2216911 e!3249706)))

(assert (=> b!5220970 (= res!2216911 (not (is-Concat!23655 (ite c!900743 (reg!15139 r!7292) (ite c!900744 (regTwo!30133 r!7292) (regTwo!30132 r!7292))))))))

(assert (=> b!5220970 (= e!3249703 e!3249706)))

(declare-fun b!5220971 () Bool)

(assert (=> b!5220971 (= e!3249706 e!3249707)))

(declare-fun res!2216912 () Bool)

(assert (=> b!5220971 (=> (not res!2216912) (not e!3249707))))

(assert (=> b!5220971 (= res!2216912 call!368456)))

(declare-fun b!5220972 () Bool)

(declare-fun res!2216910 () Bool)

(assert (=> b!5220972 (=> (not res!2216910) (not e!3249708))))

(assert (=> b!5220972 (= res!2216910 call!368456)))

(assert (=> b!5220972 (= e!3249703 e!3249708)))

(assert (= (and d!1683205 (not res!2216914)) b!5220966))

(assert (= (and b!5220966 c!900994) b!5220969))

(assert (= (and b!5220966 (not c!900994)) b!5220965))

(assert (= (and b!5220969 res!2216913) b!5220967))

(assert (= (and b!5220965 c!900995) b!5220972))

(assert (= (and b!5220965 (not c!900995)) b!5220970))

(assert (= (and b!5220972 res!2216910) b!5220968))

(assert (= (and b!5220970 (not res!2216911)) b!5220971))

(assert (= (and b!5220971 res!2216912) b!5220964))

(assert (= (or b!5220968 b!5220964) bm!368452))

(assert (= (or b!5220972 b!5220971) bm!368451))

(assert (= (or b!5220967 bm!368452) bm!368453))

(declare-fun m!6268606 () Bool)

(assert (=> bm!368451 m!6268606))

(declare-fun m!6268608 () Bool)

(assert (=> b!5220969 m!6268608))

(declare-fun m!6268610 () Bool)

(assert (=> bm!368453 m!6268610))

(assert (=> bm!368300 d!1683205))

(declare-fun d!1683207 () Bool)

(assert (=> d!1683207 (= (isEmpty!32527 (tail!10285 s!2326)) (is-Nil!60606 (tail!10285 s!2326)))))

(assert (=> b!5220209 d!1683207))

(declare-fun d!1683209 () Bool)

(assert (=> d!1683209 (= (tail!10285 s!2326) (t!373900 s!2326))))

(assert (=> b!5220209 d!1683209))

(declare-fun d!1683211 () Bool)

(declare-fun c!900996 () Bool)

(assert (=> d!1683211 (= c!900996 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249709 () Bool)

(assert (=> d!1683211 (= (matchZipper!1054 (derivationStepZipper!1078 lt!2143413 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249709)))

(declare-fun b!5220973 () Bool)

(assert (=> b!5220973 (= e!3249709 (nullableZipper!1234 (derivationStepZipper!1078 lt!2143413 (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5220974 () Bool)

(assert (=> b!5220974 (= e!3249709 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 lt!2143413 (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683211 c!900996) b!5220973))

(assert (= (and d!1683211 (not c!900996)) b!5220974))

(assert (=> d!1683211 m!6267798))

(assert (=> d!1683211 m!6268566))

(assert (=> b!5220973 m!6267810))

(declare-fun m!6268612 () Bool)

(assert (=> b!5220973 m!6268612))

(assert (=> b!5220974 m!6267798))

(assert (=> b!5220974 m!6268570))

(assert (=> b!5220974 m!6267810))

(assert (=> b!5220974 m!6268570))

(declare-fun m!6268614 () Bool)

(assert (=> b!5220974 m!6268614))

(assert (=> b!5220974 m!6267798))

(assert (=> b!5220974 m!6268574))

(assert (=> b!5220974 m!6268614))

(assert (=> b!5220974 m!6268574))

(declare-fun m!6268616 () Bool)

(assert (=> b!5220974 m!6268616))

(assert (=> b!5219962 d!1683211))

(declare-fun bs!1212378 () Bool)

(declare-fun d!1683213 () Bool)

(assert (= bs!1212378 (and d!1683213 b!5219789)))

(declare-fun lambda!262020 () Int)

(assert (=> bs!1212378 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262020 lambda!261934))))

(declare-fun bs!1212379 () Bool)

(assert (= bs!1212379 (and d!1683213 d!1683185)))

(assert (=> bs!1212379 (= lambda!262020 lambda!262019)))

(assert (=> d!1683213 true))

(assert (=> d!1683213 (= (derivationStepZipper!1078 lt!2143413 (head!11188 (t!373900 s!2326))) (flatMap!537 lt!2143413 lambda!262020))))

(declare-fun bs!1212380 () Bool)

(assert (= bs!1212380 d!1683213))

(declare-fun m!6268618 () Bool)

(assert (=> bs!1212380 m!6268618))

(assert (=> b!5219962 d!1683213))

(assert (=> b!5219962 d!1683187))

(assert (=> b!5219962 d!1683189))

(assert (=> d!1682903 d!1683137))

(assert (=> d!1682883 d!1683137))

(declare-fun bs!1212381 () Bool)

(declare-fun d!1683215 () Bool)

(assert (= bs!1212381 (and d!1683215 d!1682965)))

(declare-fun lambda!262021 () Int)

(assert (=> bs!1212381 (= lambda!262021 lambda!261974)))

(declare-fun bs!1212382 () Bool)

(assert (= bs!1212382 (and d!1683215 d!1683081)))

(assert (=> bs!1212382 (= lambda!262021 lambda!262006)))

(declare-fun bs!1212383 () Bool)

(assert (= bs!1212383 (and d!1683215 d!1683129)))

(assert (=> bs!1212383 (= lambda!262021 lambda!262015)))

(declare-fun bs!1212384 () Bool)

(assert (= bs!1212384 (and d!1683215 d!1682967)))

(assert (=> bs!1212384 (= lambda!262021 lambda!261977)))

(declare-fun bs!1212385 () Bool)

(assert (= bs!1212385 (and d!1683215 d!1682933)))

(assert (=> bs!1212385 (= lambda!262021 lambda!261965)))

(declare-fun bs!1212386 () Bool)

(assert (= bs!1212386 (and d!1683215 d!1683169)))

(assert (=> bs!1212386 (= lambda!262021 lambda!262016)))

(declare-fun bs!1212387 () Bool)

(assert (= bs!1212387 (and d!1683215 d!1682879)))

(assert (=> bs!1212387 (= lambda!262021 lambda!261952)))

(declare-fun bs!1212388 () Bool)

(assert (= bs!1212388 (and d!1683215 d!1682913)))

(assert (=> bs!1212388 (= lambda!262021 lambda!261964)))

(declare-fun b!5220975 () Bool)

(declare-fun e!3249711 () Bool)

(declare-fun e!3249715 () Bool)

(assert (=> b!5220975 (= e!3249711 e!3249715)))

(declare-fun c!900997 () Bool)

(assert (=> b!5220975 (= c!900997 (isEmpty!32524 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220976 () Bool)

(declare-fun e!3249713 () Bool)

(assert (=> b!5220976 (= e!3249713 (isEmpty!32524 (t!373899 (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5220977 () Bool)

(declare-fun lt!2143614 () Regex!14810)

(assert (=> b!5220977 (= e!3249715 (isEmptyExpr!770 lt!2143614))))

(declare-fun b!5220978 () Bool)

(declare-fun e!3249710 () Regex!14810)

(assert (=> b!5220978 (= e!3249710 (h!67053 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220979 () Bool)

(declare-fun e!3249712 () Regex!14810)

(assert (=> b!5220979 (= e!3249712 EmptyExpr!14810)))

(declare-fun b!5220980 () Bool)

(declare-fun e!3249714 () Bool)

(assert (=> b!5220980 (= e!3249714 (isConcat!293 lt!2143614))))

(declare-fun b!5220981 () Bool)

(assert (=> b!5220981 (= e!3249710 e!3249712)))

(declare-fun c!900998 () Bool)

(assert (=> b!5220981 (= c!900998 (is-Cons!60605 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5220982 () Bool)

(assert (=> b!5220982 (= e!3249714 (= lt!2143614 (head!11187 (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(assert (=> d!1683215 e!3249711))

(declare-fun res!2216915 () Bool)

(assert (=> d!1683215 (=> (not res!2216915) (not e!3249711))))

(assert (=> d!1683215 (= res!2216915 (validRegex!6546 lt!2143614))))

(assert (=> d!1683215 (= lt!2143614 e!3249710)))

(declare-fun c!900999 () Bool)

(assert (=> d!1683215 (= c!900999 e!3249713)))

(declare-fun res!2216916 () Bool)

(assert (=> d!1683215 (=> (not res!2216916) (not e!3249713))))

(assert (=> d!1683215 (= res!2216916 (is-Cons!60605 (t!373899 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> d!1683215 (forall!14242 (t!373899 (exprs!4694 (h!67055 zl!343))) lambda!262021)))

(assert (=> d!1683215 (= (generalisedConcat!479 (t!373899 (exprs!4694 (h!67055 zl!343)))) lt!2143614)))

(declare-fun b!5220983 () Bool)

(assert (=> b!5220983 (= e!3249715 e!3249714)))

(declare-fun c!901000 () Bool)

(assert (=> b!5220983 (= c!901000 (isEmpty!32524 (tail!10284 (t!373899 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5220984 () Bool)

(assert (=> b!5220984 (= e!3249712 (Concat!23655 (h!67053 (t!373899 (exprs!4694 (h!67055 zl!343)))) (generalisedConcat!479 (t!373899 (t!373899 (exprs!4694 (h!67055 zl!343)))))))))

(assert (= (and d!1683215 res!2216916) b!5220976))

(assert (= (and d!1683215 c!900999) b!5220978))

(assert (= (and d!1683215 (not c!900999)) b!5220981))

(assert (= (and b!5220981 c!900998) b!5220984))

(assert (= (and b!5220981 (not c!900998)) b!5220979))

(assert (= (and d!1683215 res!2216915) b!5220975))

(assert (= (and b!5220975 c!900997) b!5220977))

(assert (= (and b!5220975 (not c!900997)) b!5220983))

(assert (= (and b!5220983 c!901000) b!5220982))

(assert (= (and b!5220983 (not c!901000)) b!5220980))

(declare-fun m!6268620 () Bool)

(assert (=> b!5220980 m!6268620))

(declare-fun m!6268622 () Bool)

(assert (=> b!5220984 m!6268622))

(declare-fun m!6268624 () Bool)

(assert (=> b!5220983 m!6268624))

(assert (=> b!5220983 m!6268624))

(declare-fun m!6268626 () Bool)

(assert (=> b!5220983 m!6268626))

(declare-fun m!6268628 () Bool)

(assert (=> b!5220977 m!6268628))

(declare-fun m!6268630 () Bool)

(assert (=> b!5220982 m!6268630))

(declare-fun m!6268632 () Bool)

(assert (=> d!1683215 m!6268632))

(declare-fun m!6268634 () Bool)

(assert (=> d!1683215 m!6268634))

(assert (=> b!5220975 m!6267580))

(declare-fun m!6268636 () Bool)

(assert (=> b!5220976 m!6268636))

(assert (=> b!5219949 d!1683215))

(assert (=> d!1682881 d!1682885))

(assert (=> d!1682881 d!1682883))

(declare-fun e!3249718 () Bool)

(declare-fun d!1683217 () Bool)

(assert (=> d!1683217 (= (matchZipper!1054 (set.union lt!2143418 lt!2143401) (t!373900 s!2326)) e!3249718)))

(declare-fun res!2216919 () Bool)

(assert (=> d!1683217 (=> res!2216919 e!3249718)))

(assert (=> d!1683217 (= res!2216919 (matchZipper!1054 lt!2143418 (t!373900 s!2326)))))

(assert (=> d!1683217 true))

(declare-fun _$48!827 () Unit!152510)

(assert (=> d!1683217 (= (choose!38812 lt!2143418 lt!2143401 (t!373900 s!2326)) _$48!827)))

(declare-fun b!5220987 () Bool)

(assert (=> b!5220987 (= e!3249718 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(assert (= (and d!1683217 (not res!2216919)) b!5220987))

(assert (=> d!1683217 m!6267664))

(assert (=> d!1683217 m!6267652))

(assert (=> b!5220987 m!6267606))

(assert (=> d!1682881 d!1683217))

(declare-fun bs!1212389 () Bool)

(declare-fun b!5220992 () Bool)

(assert (= bs!1212389 (and b!5220992 b!5219795)))

(declare-fun lambda!262022 () Int)

(assert (=> bs!1212389 (not (= lambda!262022 lambda!261933))))

(declare-fun bs!1212390 () Bool)

(assert (= bs!1212390 (and b!5220992 d!1682897)))

(assert (=> bs!1212390 (not (= lambda!262022 lambda!261961))))

(assert (=> bs!1212389 (not (= lambda!262022 lambda!261932))))

(declare-fun bs!1212391 () Bool)

(assert (= bs!1212391 (and b!5220992 b!5220165)))

(assert (=> bs!1212391 (not (= lambda!262022 lambda!261971))))

(declare-fun bs!1212392 () Bool)

(assert (= bs!1212392 (and b!5220992 d!1682893)))

(assert (=> bs!1212392 (not (= lambda!262022 lambda!261958))))

(declare-fun bs!1212393 () Bool)

(assert (= bs!1212393 (and b!5220992 d!1683111)))

(assert (=> bs!1212393 (not (= lambda!262022 lambda!262013))))

(declare-fun bs!1212394 () Bool)

(assert (= bs!1212394 (and b!5220992 b!5220162)))

(assert (=> bs!1212394 (= (and (= (reg!15139 (regTwo!30133 r!7292)) (reg!15139 r!7292)) (= (regTwo!30133 r!7292) r!7292)) (= lambda!262022 lambda!261970))))

(assert (=> bs!1212392 (not (= lambda!262022 lambda!261957))))

(assert (=> b!5220992 true))

(assert (=> b!5220992 true))

(declare-fun bs!1212395 () Bool)

(declare-fun b!5220995 () Bool)

(assert (= bs!1212395 (and b!5220995 b!5219795)))

(declare-fun lambda!262023 () Int)

(assert (=> bs!1212395 (= (and (= (regOne!30132 (regTwo!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regTwo!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262023 lambda!261933))))

(declare-fun bs!1212396 () Bool)

(assert (= bs!1212396 (and b!5220995 d!1682897)))

(assert (=> bs!1212396 (not (= lambda!262023 lambda!261961))))

(assert (=> bs!1212395 (not (= lambda!262023 lambda!261932))))

(declare-fun bs!1212397 () Bool)

(assert (= bs!1212397 (and b!5220995 b!5220992)))

(assert (=> bs!1212397 (not (= lambda!262023 lambda!262022))))

(declare-fun bs!1212398 () Bool)

(assert (= bs!1212398 (and b!5220995 b!5220165)))

(assert (=> bs!1212398 (= (and (= (regOne!30132 (regTwo!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regTwo!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262023 lambda!261971))))

(declare-fun bs!1212399 () Bool)

(assert (= bs!1212399 (and b!5220995 d!1682893)))

(assert (=> bs!1212399 (= (and (= (regOne!30132 (regTwo!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regTwo!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262023 lambda!261958))))

(declare-fun bs!1212400 () Bool)

(assert (= bs!1212400 (and b!5220995 d!1683111)))

(assert (=> bs!1212400 (not (= lambda!262023 lambda!262013))))

(declare-fun bs!1212401 () Bool)

(assert (= bs!1212401 (and b!5220995 b!5220162)))

(assert (=> bs!1212401 (not (= lambda!262023 lambda!261970))))

(assert (=> bs!1212399 (not (= lambda!262023 lambda!261957))))

(assert (=> b!5220995 true))

(assert (=> b!5220995 true))

(declare-fun b!5220988 () Bool)

(declare-fun e!3249725 () Bool)

(declare-fun call!368459 () Bool)

(assert (=> b!5220988 (= e!3249725 call!368459)))

(declare-fun b!5220989 () Bool)

(declare-fun e!3249724 () Bool)

(declare-fun e!3249723 () Bool)

(assert (=> b!5220989 (= e!3249724 e!3249723)))

(declare-fun res!2216920 () Bool)

(assert (=> b!5220989 (= res!2216920 (matchRSpec!1913 (regOne!30133 (regTwo!30133 r!7292)) s!2326))))

(assert (=> b!5220989 (=> res!2216920 e!3249723)))

(declare-fun b!5220991 () Bool)

(declare-fun c!901002 () Bool)

(assert (=> b!5220991 (= c!901002 (is-ElementMatch!14810 (regTwo!30133 r!7292)))))

(declare-fun e!3249721 () Bool)

(declare-fun e!3249720 () Bool)

(assert (=> b!5220991 (= e!3249721 e!3249720)))

(declare-fun e!3249722 () Bool)

(declare-fun call!368460 () Bool)

(assert (=> b!5220992 (= e!3249722 call!368460)))

(declare-fun b!5220993 () Bool)

(assert (=> b!5220993 (= e!3249725 e!3249721)))

(declare-fun res!2216922 () Bool)

(assert (=> b!5220993 (= res!2216922 (not (is-EmptyLang!14810 (regTwo!30133 r!7292))))))

(assert (=> b!5220993 (=> (not res!2216922) (not e!3249721))))

(declare-fun c!901004 () Bool)

(declare-fun bm!368454 () Bool)

(assert (=> bm!368454 (= call!368460 (Exists!1991 (ite c!901004 lambda!262022 lambda!262023)))))

(declare-fun b!5220994 () Bool)

(declare-fun c!901001 () Bool)

(assert (=> b!5220994 (= c!901001 (is-Union!14810 (regTwo!30133 r!7292)))))

(assert (=> b!5220994 (= e!3249720 e!3249724)))

(declare-fun e!3249719 () Bool)

(assert (=> b!5220995 (= e!3249719 call!368460)))

(declare-fun d!1683219 () Bool)

(declare-fun c!901003 () Bool)

(assert (=> d!1683219 (= c!901003 (is-EmptyExpr!14810 (regTwo!30133 r!7292)))))

(assert (=> d!1683219 (= (matchRSpec!1913 (regTwo!30133 r!7292) s!2326) e!3249725)))

(declare-fun b!5220990 () Bool)

(declare-fun res!2216921 () Bool)

(assert (=> b!5220990 (=> res!2216921 e!3249722)))

(assert (=> b!5220990 (= res!2216921 call!368459)))

(assert (=> b!5220990 (= e!3249719 e!3249722)))

(declare-fun b!5220996 () Bool)

(assert (=> b!5220996 (= e!3249723 (matchRSpec!1913 (regTwo!30133 (regTwo!30133 r!7292)) s!2326))))

(declare-fun b!5220997 () Bool)

(assert (=> b!5220997 (= e!3249720 (= s!2326 (Cons!60606 (c!900678 (regTwo!30133 r!7292)) Nil!60606)))))

(declare-fun b!5220998 () Bool)

(assert (=> b!5220998 (= e!3249724 e!3249719)))

(assert (=> b!5220998 (= c!901004 (is-Star!14810 (regTwo!30133 r!7292)))))

(declare-fun bm!368455 () Bool)

(assert (=> bm!368455 (= call!368459 (isEmpty!32527 s!2326))))

(assert (= (and d!1683219 c!901003) b!5220988))

(assert (= (and d!1683219 (not c!901003)) b!5220993))

(assert (= (and b!5220993 res!2216922) b!5220991))

(assert (= (and b!5220991 c!901002) b!5220997))

(assert (= (and b!5220991 (not c!901002)) b!5220994))

(assert (= (and b!5220994 c!901001) b!5220989))

(assert (= (and b!5220994 (not c!901001)) b!5220998))

(assert (= (and b!5220989 (not res!2216920)) b!5220996))

(assert (= (and b!5220998 c!901004) b!5220990))

(assert (= (and b!5220998 (not c!901004)) b!5220995))

(assert (= (and b!5220990 (not res!2216921)) b!5220992))

(assert (= (or b!5220992 b!5220995) bm!368454))

(assert (= (or b!5220988 b!5220990) bm!368455))

(declare-fun m!6268638 () Bool)

(assert (=> b!5220989 m!6268638))

(declare-fun m!6268640 () Bool)

(assert (=> bm!368454 m!6268640))

(declare-fun m!6268642 () Bool)

(assert (=> b!5220996 m!6268642))

(assert (=> bm!368455 m!6267972))

(assert (=> b!5220166 d!1683219))

(declare-fun bm!368456 () Bool)

(declare-fun call!368461 () Bool)

(declare-fun c!901005 () Bool)

(assert (=> bm!368456 (= call!368461 (nullable!4979 (ite c!901005 (regTwo!30133 (regOne!30133 (regOne!30132 r!7292))) (regTwo!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5220999 () Bool)

(declare-fun e!3249731 () Bool)

(declare-fun e!3249729 () Bool)

(assert (=> b!5220999 (= e!3249731 e!3249729)))

(declare-fun res!2216925 () Bool)

(declare-fun call!368462 () Bool)

(assert (=> b!5220999 (= res!2216925 call!368462)))

(assert (=> b!5220999 (=> (not res!2216925) (not e!3249729))))

(declare-fun bm!368457 () Bool)

(assert (=> bm!368457 (= call!368462 (nullable!4979 (ite c!901005 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(declare-fun d!1683221 () Bool)

(declare-fun res!2216926 () Bool)

(declare-fun e!3249727 () Bool)

(assert (=> d!1683221 (=> res!2216926 e!3249727)))

(assert (=> d!1683221 (= res!2216926 (is-EmptyExpr!14810 (regOne!30133 (regOne!30132 r!7292))))))

(assert (=> d!1683221 (= (nullableFct!1386 (regOne!30133 (regOne!30132 r!7292))) e!3249727)))

(declare-fun b!5221000 () Bool)

(declare-fun e!3249728 () Bool)

(assert (=> b!5221000 (= e!3249727 e!3249728)))

(declare-fun res!2216927 () Bool)

(assert (=> b!5221000 (=> (not res!2216927) (not e!3249728))))

(assert (=> b!5221000 (= res!2216927 (and (not (is-EmptyLang!14810 (regOne!30133 (regOne!30132 r!7292)))) (not (is-ElementMatch!14810 (regOne!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5221001 () Bool)

(declare-fun e!3249726 () Bool)

(assert (=> b!5221001 (= e!3249728 e!3249726)))

(declare-fun res!2216923 () Bool)

(assert (=> b!5221001 (=> res!2216923 e!3249726)))

(assert (=> b!5221001 (= res!2216923 (is-Star!14810 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun b!5221002 () Bool)

(assert (=> b!5221002 (= e!3249726 e!3249731)))

(assert (=> b!5221002 (= c!901005 (is-Union!14810 (regOne!30133 (regOne!30132 r!7292))))))

(declare-fun b!5221003 () Bool)

(declare-fun e!3249730 () Bool)

(assert (=> b!5221003 (= e!3249730 call!368461)))

(declare-fun b!5221004 () Bool)

(assert (=> b!5221004 (= e!3249729 call!368461)))

(declare-fun b!5221005 () Bool)

(assert (=> b!5221005 (= e!3249731 e!3249730)))

(declare-fun res!2216924 () Bool)

(assert (=> b!5221005 (= res!2216924 call!368462)))

(assert (=> b!5221005 (=> res!2216924 e!3249730)))

(assert (= (and d!1683221 (not res!2216926)) b!5221000))

(assert (= (and b!5221000 res!2216927) b!5221001))

(assert (= (and b!5221001 (not res!2216923)) b!5221002))

(assert (= (and b!5221002 c!901005) b!5221005))

(assert (= (and b!5221002 (not c!901005)) b!5220999))

(assert (= (and b!5221005 (not res!2216924)) b!5221003))

(assert (= (and b!5220999 res!2216925) b!5221004))

(assert (= (or b!5221003 b!5221004) bm!368456))

(assert (= (or b!5221005 b!5220999) bm!368457))

(declare-fun m!6268644 () Bool)

(assert (=> bm!368456 m!6268644))

(declare-fun m!6268646 () Bool)

(assert (=> bm!368457 m!6268646))

(assert (=> d!1682929 d!1683221))

(declare-fun d!1683223 () Bool)

(assert (=> d!1683223 (= (isDefined!11624 lt!2143520) (not (isEmpty!32528 lt!2143520)))))

(declare-fun bs!1212402 () Bool)

(assert (= bs!1212402 d!1683223))

(declare-fun m!6268648 () Bool)

(assert (=> bs!1212402 m!6268648))

(assert (=> b!5219986 d!1683223))

(declare-fun d!1683225 () Bool)

(declare-fun res!2216932 () Bool)

(declare-fun e!3249736 () Bool)

(assert (=> d!1683225 (=> res!2216932 e!3249736)))

(assert (=> d!1683225 (= res!2216932 (is-Nil!60607 lt!2143546))))

(assert (=> d!1683225 (= (noDuplicate!1190 lt!2143546) e!3249736)))

(declare-fun b!5221010 () Bool)

(declare-fun e!3249737 () Bool)

(assert (=> b!5221010 (= e!3249736 e!3249737)))

(declare-fun res!2216933 () Bool)

(assert (=> b!5221010 (=> (not res!2216933) (not e!3249737))))

(declare-fun contains!19672 (List!60731 Context!8388) Bool)

(assert (=> b!5221010 (= res!2216933 (not (contains!19672 (t!373901 lt!2143546) (h!67055 lt!2143546))))))

(declare-fun b!5221011 () Bool)

(assert (=> b!5221011 (= e!3249737 (noDuplicate!1190 (t!373901 lt!2143546)))))

(assert (= (and d!1683225 (not res!2216932)) b!5221010))

(assert (= (and b!5221010 res!2216933) b!5221011))

(declare-fun m!6268650 () Bool)

(assert (=> b!5221010 m!6268650))

(declare-fun m!6268652 () Bool)

(assert (=> b!5221011 m!6268652))

(assert (=> d!1682961 d!1683225))

(declare-fun d!1683227 () Bool)

(declare-fun e!3249746 () Bool)

(assert (=> d!1683227 e!3249746))

(declare-fun res!2216939 () Bool)

(assert (=> d!1683227 (=> (not res!2216939) (not e!3249746))))

(declare-fun res!2216938 () List!60731)

(assert (=> d!1683227 (= res!2216939 (noDuplicate!1190 res!2216938))))

(declare-fun e!3249744 () Bool)

(assert (=> d!1683227 e!3249744))

(assert (=> d!1683227 (= (choose!38819 z!1189) res!2216938)))

(declare-fun b!5221019 () Bool)

(declare-fun e!3249745 () Bool)

(declare-fun tp!1463592 () Bool)

(assert (=> b!5221019 (= e!3249745 tp!1463592)))

(declare-fun tp!1463593 () Bool)

(declare-fun b!5221018 () Bool)

(assert (=> b!5221018 (= e!3249744 (and (inv!80273 (h!67055 res!2216938)) e!3249745 tp!1463593))))

(declare-fun b!5221020 () Bool)

(assert (=> b!5221020 (= e!3249746 (= (content!10745 res!2216938) z!1189))))

(assert (= b!5221018 b!5221019))

(assert (= (and d!1683227 (is-Cons!60607 res!2216938)) b!5221018))

(assert (= (and d!1683227 res!2216939) b!5221020))

(declare-fun m!6268654 () Bool)

(assert (=> d!1683227 m!6268654))

(declare-fun m!6268656 () Bool)

(assert (=> b!5221018 m!6268656))

(declare-fun m!6268658 () Bool)

(assert (=> b!5221020 m!6268658))

(assert (=> d!1682961 d!1683227))

(declare-fun b!5221021 () Bool)

(declare-fun e!3249749 () Bool)

(assert (=> b!5221021 (= e!3249749 (nullable!4979 (derivativeStep!4056 r!7292 (head!11188 s!2326))))))

(declare-fun d!1683229 () Bool)

(declare-fun e!3249748 () Bool)

(assert (=> d!1683229 e!3249748))

(declare-fun c!901007 () Bool)

(assert (=> d!1683229 (= c!901007 (is-EmptyExpr!14810 (derivativeStep!4056 r!7292 (head!11188 s!2326))))))

(declare-fun lt!2143615 () Bool)

(assert (=> d!1683229 (= lt!2143615 e!3249749)))

(declare-fun c!901008 () Bool)

(assert (=> d!1683229 (= c!901008 (isEmpty!32527 (tail!10285 s!2326)))))

(assert (=> d!1683229 (validRegex!6546 (derivativeStep!4056 r!7292 (head!11188 s!2326)))))

(assert (=> d!1683229 (= (matchR!6995 (derivativeStep!4056 r!7292 (head!11188 s!2326)) (tail!10285 s!2326)) lt!2143615)))

(declare-fun b!5221022 () Bool)

(declare-fun res!2216947 () Bool)

(declare-fun e!3249751 () Bool)

(assert (=> b!5221022 (=> res!2216947 e!3249751)))

(assert (=> b!5221022 (= res!2216947 (not (isEmpty!32527 (tail!10285 (tail!10285 s!2326)))))))

(declare-fun b!5221023 () Bool)

(declare-fun res!2216941 () Bool)

(declare-fun e!3249752 () Bool)

(assert (=> b!5221023 (=> (not res!2216941) (not e!3249752))))

(declare-fun call!368463 () Bool)

(assert (=> b!5221023 (= res!2216941 (not call!368463))))

(declare-fun b!5221024 () Bool)

(declare-fun res!2216940 () Bool)

(declare-fun e!3249753 () Bool)

(assert (=> b!5221024 (=> res!2216940 e!3249753)))

(assert (=> b!5221024 (= res!2216940 e!3249752)))

(declare-fun res!2216945 () Bool)

(assert (=> b!5221024 (=> (not res!2216945) (not e!3249752))))

(assert (=> b!5221024 (= res!2216945 lt!2143615)))

(declare-fun b!5221025 () Bool)

(declare-fun res!2216942 () Bool)

(assert (=> b!5221025 (=> res!2216942 e!3249753)))

(assert (=> b!5221025 (= res!2216942 (not (is-ElementMatch!14810 (derivativeStep!4056 r!7292 (head!11188 s!2326)))))))

(declare-fun e!3249747 () Bool)

(assert (=> b!5221025 (= e!3249747 e!3249753)))

(declare-fun b!5221026 () Bool)

(declare-fun e!3249750 () Bool)

(assert (=> b!5221026 (= e!3249753 e!3249750)))

(declare-fun res!2216944 () Bool)

(assert (=> b!5221026 (=> (not res!2216944) (not e!3249750))))

(assert (=> b!5221026 (= res!2216944 (not lt!2143615))))

(declare-fun b!5221027 () Bool)

(assert (=> b!5221027 (= e!3249748 e!3249747)))

(declare-fun c!901006 () Bool)

(assert (=> b!5221027 (= c!901006 (is-EmptyLang!14810 (derivativeStep!4056 r!7292 (head!11188 s!2326))))))

(declare-fun b!5221028 () Bool)

(assert (=> b!5221028 (= e!3249747 (not lt!2143615))))

(declare-fun b!5221029 () Bool)

(assert (=> b!5221029 (= e!3249750 e!3249751)))

(declare-fun res!2216946 () Bool)

(assert (=> b!5221029 (=> res!2216946 e!3249751)))

(assert (=> b!5221029 (= res!2216946 call!368463)))

(declare-fun b!5221030 () Bool)

(assert (=> b!5221030 (= e!3249749 (matchR!6995 (derivativeStep!4056 (derivativeStep!4056 r!7292 (head!11188 s!2326)) (head!11188 (tail!10285 s!2326))) (tail!10285 (tail!10285 s!2326))))))

(declare-fun bm!368458 () Bool)

(assert (=> bm!368458 (= call!368463 (isEmpty!32527 (tail!10285 s!2326)))))

(declare-fun b!5221031 () Bool)

(assert (=> b!5221031 (= e!3249748 (= lt!2143615 call!368463))))

(declare-fun b!5221032 () Bool)

(assert (=> b!5221032 (= e!3249751 (not (= (head!11188 (tail!10285 s!2326)) (c!900678 (derivativeStep!4056 r!7292 (head!11188 s!2326))))))))

(declare-fun b!5221033 () Bool)

(declare-fun res!2216943 () Bool)

(assert (=> b!5221033 (=> (not res!2216943) (not e!3249752))))

(assert (=> b!5221033 (= res!2216943 (isEmpty!32527 (tail!10285 (tail!10285 s!2326))))))

(declare-fun b!5221034 () Bool)

(assert (=> b!5221034 (= e!3249752 (= (head!11188 (tail!10285 s!2326)) (c!900678 (derivativeStep!4056 r!7292 (head!11188 s!2326)))))))

(assert (= (and d!1683229 c!901008) b!5221021))

(assert (= (and d!1683229 (not c!901008)) b!5221030))

(assert (= (and d!1683229 c!901007) b!5221031))

(assert (= (and d!1683229 (not c!901007)) b!5221027))

(assert (= (and b!5221027 c!901006) b!5221028))

(assert (= (and b!5221027 (not c!901006)) b!5221025))

(assert (= (and b!5221025 (not res!2216942)) b!5221024))

(assert (= (and b!5221024 res!2216945) b!5221023))

(assert (= (and b!5221023 res!2216941) b!5221033))

(assert (= (and b!5221033 res!2216943) b!5221034))

(assert (= (and b!5221024 (not res!2216940)) b!5221026))

(assert (= (and b!5221026 res!2216944) b!5221029))

(assert (= (and b!5221029 (not res!2216946)) b!5221022))

(assert (= (and b!5221022 (not res!2216947)) b!5221032))

(assert (= (or b!5221031 b!5221023 b!5221029) bm!368458))

(assert (=> b!5221022 m!6267974))

(declare-fun m!6268660 () Bool)

(assert (=> b!5221022 m!6268660))

(assert (=> b!5221022 m!6268660))

(declare-fun m!6268662 () Bool)

(assert (=> b!5221022 m!6268662))

(assert (=> b!5221034 m!6267974))

(declare-fun m!6268664 () Bool)

(assert (=> b!5221034 m!6268664))

(assert (=> b!5221030 m!6267974))

(assert (=> b!5221030 m!6268664))

(assert (=> b!5221030 m!6267980))

(assert (=> b!5221030 m!6268664))

(declare-fun m!6268666 () Bool)

(assert (=> b!5221030 m!6268666))

(assert (=> b!5221030 m!6267974))

(assert (=> b!5221030 m!6268660))

(assert (=> b!5221030 m!6268666))

(assert (=> b!5221030 m!6268660))

(declare-fun m!6268668 () Bool)

(assert (=> b!5221030 m!6268668))

(assert (=> b!5221032 m!6267974))

(assert (=> b!5221032 m!6268664))

(assert (=> b!5221033 m!6267974))

(assert (=> b!5221033 m!6268660))

(assert (=> b!5221033 m!6268660))

(assert (=> b!5221033 m!6268662))

(assert (=> b!5221021 m!6267980))

(declare-fun m!6268670 () Bool)

(assert (=> b!5221021 m!6268670))

(assert (=> d!1683229 m!6267974))

(assert (=> d!1683229 m!6267976))

(assert (=> d!1683229 m!6267980))

(declare-fun m!6268672 () Bool)

(assert (=> d!1683229 m!6268672))

(assert (=> bm!368458 m!6267974))

(assert (=> bm!368458 m!6267976))

(assert (=> b!5220206 d!1683229))

(declare-fun b!5221055 () Bool)

(declare-fun e!3249765 () Regex!14810)

(declare-fun call!368473 () Regex!14810)

(assert (=> b!5221055 (= e!3249765 (Concat!23655 call!368473 r!7292))))

(declare-fun bm!368467 () Bool)

(declare-fun call!368472 () Regex!14810)

(assert (=> bm!368467 (= call!368472 call!368473)))

(declare-fun bm!368468 () Bool)

(declare-fun call!368474 () Regex!14810)

(declare-fun c!901022 () Bool)

(assert (=> bm!368468 (= call!368474 (derivativeStep!4056 (ite c!901022 (regTwo!30133 r!7292) (regOne!30132 r!7292)) (head!11188 s!2326)))))

(declare-fun b!5221057 () Bool)

(declare-fun e!3249766 () Regex!14810)

(declare-fun e!3249764 () Regex!14810)

(assert (=> b!5221057 (= e!3249766 e!3249764)))

(declare-fun c!901020 () Bool)

(assert (=> b!5221057 (= c!901020 (is-ElementMatch!14810 r!7292))))

(declare-fun call!368475 () Regex!14810)

(declare-fun c!901021 () Bool)

(declare-fun c!901023 () Bool)

(declare-fun bm!368469 () Bool)

(assert (=> bm!368469 (= call!368475 (derivativeStep!4056 (ite c!901022 (regOne!30133 r!7292) (ite c!901023 (reg!15139 r!7292) (ite c!901021 (regTwo!30132 r!7292) (regOne!30132 r!7292)))) (head!11188 s!2326)))))

(declare-fun b!5221058 () Bool)

(assert (=> b!5221058 (= e!3249766 EmptyLang!14810)))

(declare-fun b!5221059 () Bool)

(assert (=> b!5221059 (= c!901021 (nullable!4979 (regOne!30132 r!7292)))))

(declare-fun e!3249768 () Regex!14810)

(assert (=> b!5221059 (= e!3249765 e!3249768)))

(declare-fun bm!368470 () Bool)

(assert (=> bm!368470 (= call!368473 call!368475)))

(declare-fun b!5221060 () Bool)

(assert (=> b!5221060 (= c!901022 (is-Union!14810 r!7292))))

(declare-fun e!3249767 () Regex!14810)

(assert (=> b!5221060 (= e!3249764 e!3249767)))

(declare-fun b!5221061 () Bool)

(assert (=> b!5221061 (= e!3249764 (ite (= (head!11188 s!2326) (c!900678 r!7292)) EmptyExpr!14810 EmptyLang!14810))))

(declare-fun b!5221062 () Bool)

(assert (=> b!5221062 (= e!3249767 e!3249765)))

(assert (=> b!5221062 (= c!901023 (is-Star!14810 r!7292))))

(declare-fun b!5221056 () Bool)

(assert (=> b!5221056 (= e!3249768 (Union!14810 (Concat!23655 call!368472 (regTwo!30132 r!7292)) EmptyLang!14810))))

(declare-fun d!1683231 () Bool)

(declare-fun lt!2143618 () Regex!14810)

(assert (=> d!1683231 (validRegex!6546 lt!2143618)))

(assert (=> d!1683231 (= lt!2143618 e!3249766)))

(declare-fun c!901019 () Bool)

(assert (=> d!1683231 (= c!901019 (or (is-EmptyExpr!14810 r!7292) (is-EmptyLang!14810 r!7292)))))

(assert (=> d!1683231 (validRegex!6546 r!7292)))

(assert (=> d!1683231 (= (derivativeStep!4056 r!7292 (head!11188 s!2326)) lt!2143618)))

(declare-fun b!5221063 () Bool)

(assert (=> b!5221063 (= e!3249768 (Union!14810 (Concat!23655 call!368474 (regTwo!30132 r!7292)) call!368472))))

(declare-fun b!5221064 () Bool)

(assert (=> b!5221064 (= e!3249767 (Union!14810 call!368475 call!368474))))

(assert (= (and d!1683231 c!901019) b!5221058))

(assert (= (and d!1683231 (not c!901019)) b!5221057))

(assert (= (and b!5221057 c!901020) b!5221061))

(assert (= (and b!5221057 (not c!901020)) b!5221060))

(assert (= (and b!5221060 c!901022) b!5221064))

(assert (= (and b!5221060 (not c!901022)) b!5221062))

(assert (= (and b!5221062 c!901023) b!5221055))

(assert (= (and b!5221062 (not c!901023)) b!5221059))

(assert (= (and b!5221059 c!901021) b!5221063))

(assert (= (and b!5221059 (not c!901021)) b!5221056))

(assert (= (or b!5221063 b!5221056) bm!368467))

(assert (= (or b!5221055 bm!368467) bm!368470))

(assert (= (or b!5221064 b!5221063) bm!368468))

(assert (= (or b!5221064 bm!368470) bm!368469))

(assert (=> bm!368468 m!6267978))

(declare-fun m!6268674 () Bool)

(assert (=> bm!368468 m!6268674))

(assert (=> bm!368469 m!6267978))

(declare-fun m!6268676 () Bool)

(assert (=> bm!368469 m!6268676))

(assert (=> b!5221059 m!6268536))

(declare-fun m!6268678 () Bool)

(assert (=> d!1683231 m!6268678))

(assert (=> d!1683231 m!6267608))

(assert (=> b!5220206 d!1683231))

(assert (=> b!5220206 d!1683147))

(assert (=> b!5220206 d!1683209))

(assert (=> d!1682887 d!1683137))

(assert (=> b!5220257 d!1682879))

(declare-fun bs!1212403 () Bool)

(declare-fun d!1683233 () Bool)

(assert (= bs!1212403 (and d!1683233 d!1682965)))

(declare-fun lambda!262024 () Int)

(assert (=> bs!1212403 (= lambda!262024 lambda!261974)))

(declare-fun bs!1212404 () Bool)

(assert (= bs!1212404 (and d!1683233 d!1683081)))

(assert (=> bs!1212404 (= lambda!262024 lambda!262006)))

(declare-fun bs!1212405 () Bool)

(assert (= bs!1212405 (and d!1683233 d!1683129)))

(assert (=> bs!1212405 (= lambda!262024 lambda!262015)))

(declare-fun bs!1212406 () Bool)

(assert (= bs!1212406 (and d!1683233 d!1683215)))

(assert (=> bs!1212406 (= lambda!262024 lambda!262021)))

(declare-fun bs!1212407 () Bool)

(assert (= bs!1212407 (and d!1683233 d!1682967)))

(assert (=> bs!1212407 (= lambda!262024 lambda!261977)))

(declare-fun bs!1212408 () Bool)

(assert (= bs!1212408 (and d!1683233 d!1682933)))

(assert (=> bs!1212408 (= lambda!262024 lambda!261965)))

(declare-fun bs!1212409 () Bool)

(assert (= bs!1212409 (and d!1683233 d!1683169)))

(assert (=> bs!1212409 (= lambda!262024 lambda!262016)))

(declare-fun bs!1212410 () Bool)

(assert (= bs!1212410 (and d!1683233 d!1682879)))

(assert (=> bs!1212410 (= lambda!262024 lambda!261952)))

(declare-fun bs!1212411 () Bool)

(assert (= bs!1212411 (and d!1683233 d!1682913)))

(assert (=> bs!1212411 (= lambda!262024 lambda!261964)))

(declare-fun lt!2143619 () List!60729)

(assert (=> d!1683233 (forall!14242 lt!2143619 lambda!262024)))

(declare-fun e!3249769 () List!60729)

(assert (=> d!1683233 (= lt!2143619 e!3249769)))

(declare-fun c!901024 () Bool)

(assert (=> d!1683233 (= c!901024 (is-Cons!60607 (t!373901 zl!343)))))

(assert (=> d!1683233 (= (unfocusZipperList!252 (t!373901 zl!343)) lt!2143619)))

(declare-fun b!5221065 () Bool)

(assert (=> b!5221065 (= e!3249769 (Cons!60605 (generalisedConcat!479 (exprs!4694 (h!67055 (t!373901 zl!343)))) (unfocusZipperList!252 (t!373901 (t!373901 zl!343)))))))

(declare-fun b!5221066 () Bool)

(assert (=> b!5221066 (= e!3249769 Nil!60605)))

(assert (= (and d!1683233 c!901024) b!5221065))

(assert (= (and d!1683233 (not c!901024)) b!5221066))

(declare-fun m!6268680 () Bool)

(assert (=> d!1683233 m!6268680))

(declare-fun m!6268682 () Bool)

(assert (=> b!5221065 m!6268682))

(declare-fun m!6268684 () Bool)

(assert (=> b!5221065 m!6268684))

(assert (=> b!5220257 d!1683233))

(declare-fun d!1683235 () Bool)

(declare-fun res!2216948 () Bool)

(declare-fun e!3249770 () Bool)

(assert (=> d!1683235 (=> res!2216948 e!3249770)))

(assert (=> d!1683235 (= res!2216948 (is-Nil!60605 lt!2143552))))

(assert (=> d!1683235 (= (forall!14242 lt!2143552 lambda!261977) e!3249770)))

(declare-fun b!5221067 () Bool)

(declare-fun e!3249771 () Bool)

(assert (=> b!5221067 (= e!3249770 e!3249771)))

(declare-fun res!2216949 () Bool)

(assert (=> b!5221067 (=> (not res!2216949) (not e!3249771))))

(assert (=> b!5221067 (= res!2216949 (dynLambda!23947 lambda!261977 (h!67053 lt!2143552)))))

(declare-fun b!5221068 () Bool)

(assert (=> b!5221068 (= e!3249771 (forall!14242 (t!373899 lt!2143552) lambda!261977))))

(assert (= (and d!1683235 (not res!2216948)) b!5221067))

(assert (= (and b!5221067 res!2216949) b!5221068))

(declare-fun b_lambda!201875 () Bool)

(assert (=> (not b_lambda!201875) (not b!5221067)))

(declare-fun m!6268686 () Bool)

(assert (=> b!5221067 m!6268686))

(declare-fun m!6268688 () Bool)

(assert (=> b!5221068 m!6268688))

(assert (=> d!1682967 d!1683235))

(assert (=> b!5219952 d!1682901))

(declare-fun d!1683237 () Bool)

(declare-fun c!901025 () Bool)

(assert (=> d!1683237 (= c!901025 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249772 () Bool)

(assert (=> d!1683237 (= (matchZipper!1054 (derivationStepZipper!1078 lt!2143401 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249772)))

(declare-fun b!5221069 () Bool)

(assert (=> b!5221069 (= e!3249772 (nullableZipper!1234 (derivationStepZipper!1078 lt!2143401 (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5221070 () Bool)

(assert (=> b!5221070 (= e!3249772 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 lt!2143401 (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683237 c!901025) b!5221069))

(assert (= (and d!1683237 (not c!901025)) b!5221070))

(assert (=> d!1683237 m!6267798))

(assert (=> d!1683237 m!6268566))

(assert (=> b!5221069 m!6267856))

(declare-fun m!6268690 () Bool)

(assert (=> b!5221069 m!6268690))

(assert (=> b!5221070 m!6267798))

(assert (=> b!5221070 m!6268570))

(assert (=> b!5221070 m!6267856))

(assert (=> b!5221070 m!6268570))

(declare-fun m!6268692 () Bool)

(assert (=> b!5221070 m!6268692))

(assert (=> b!5221070 m!6267798))

(assert (=> b!5221070 m!6268574))

(assert (=> b!5221070 m!6268692))

(assert (=> b!5221070 m!6268574))

(declare-fun m!6268694 () Bool)

(assert (=> b!5221070 m!6268694))

(assert (=> b!5220003 d!1683237))

(declare-fun bs!1212412 () Bool)

(declare-fun d!1683239 () Bool)

(assert (= bs!1212412 (and d!1683239 b!5219789)))

(declare-fun lambda!262025 () Int)

(assert (=> bs!1212412 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262025 lambda!261934))))

(declare-fun bs!1212413 () Bool)

(assert (= bs!1212413 (and d!1683239 d!1683185)))

(assert (=> bs!1212413 (= lambda!262025 lambda!262019)))

(declare-fun bs!1212414 () Bool)

(assert (= bs!1212414 (and d!1683239 d!1683213)))

(assert (=> bs!1212414 (= lambda!262025 lambda!262020)))

(assert (=> d!1683239 true))

(assert (=> d!1683239 (= (derivationStepZipper!1078 lt!2143401 (head!11188 (t!373900 s!2326))) (flatMap!537 lt!2143401 lambda!262025))))

(declare-fun bs!1212415 () Bool)

(assert (= bs!1212415 d!1683239))

(declare-fun m!6268696 () Bool)

(assert (=> bs!1212415 m!6268696))

(assert (=> b!5220003 d!1683239))

(assert (=> b!5220003 d!1683187))

(assert (=> b!5220003 d!1683189))

(declare-fun d!1683241 () Bool)

(assert (=> d!1683241 (= (isConcat!293 lt!2143510) (is-Concat!23655 lt!2143510))))

(assert (=> b!5219945 d!1683241))

(assert (=> d!1682901 d!1683137))

(assert (=> b!5219941 d!1682963))

(declare-fun bs!1212416 () Bool)

(declare-fun b!5221075 () Bool)

(assert (= bs!1212416 (and b!5221075 b!5219795)))

(declare-fun lambda!262026 () Int)

(assert (=> bs!1212416 (not (= lambda!262026 lambda!261933))))

(declare-fun bs!1212417 () Bool)

(assert (= bs!1212417 (and b!5221075 d!1682897)))

(assert (=> bs!1212417 (not (= lambda!262026 lambda!261961))))

(assert (=> bs!1212416 (not (= lambda!262026 lambda!261932))))

(declare-fun bs!1212418 () Bool)

(assert (= bs!1212418 (and b!5221075 b!5220992)))

(assert (=> bs!1212418 (= (and (= (reg!15139 (regOne!30133 r!7292)) (reg!15139 (regTwo!30133 r!7292))) (= (regOne!30133 r!7292) (regTwo!30133 r!7292))) (= lambda!262026 lambda!262022))))

(declare-fun bs!1212419 () Bool)

(assert (= bs!1212419 (and b!5221075 b!5220165)))

(assert (=> bs!1212419 (not (= lambda!262026 lambda!261971))))

(declare-fun bs!1212420 () Bool)

(assert (= bs!1212420 (and b!5221075 b!5220995)))

(assert (=> bs!1212420 (not (= lambda!262026 lambda!262023))))

(declare-fun bs!1212421 () Bool)

(assert (= bs!1212421 (and b!5221075 d!1682893)))

(assert (=> bs!1212421 (not (= lambda!262026 lambda!261958))))

(declare-fun bs!1212422 () Bool)

(assert (= bs!1212422 (and b!5221075 d!1683111)))

(assert (=> bs!1212422 (not (= lambda!262026 lambda!262013))))

(declare-fun bs!1212423 () Bool)

(assert (= bs!1212423 (and b!5221075 b!5220162)))

(assert (=> bs!1212423 (= (and (= (reg!15139 (regOne!30133 r!7292)) (reg!15139 r!7292)) (= (regOne!30133 r!7292) r!7292)) (= lambda!262026 lambda!261970))))

(assert (=> bs!1212421 (not (= lambda!262026 lambda!261957))))

(assert (=> b!5221075 true))

(assert (=> b!5221075 true))

(declare-fun bs!1212424 () Bool)

(declare-fun b!5221078 () Bool)

(assert (= bs!1212424 (and b!5221078 b!5219795)))

(declare-fun lambda!262027 () Int)

(assert (=> bs!1212424 (= (and (= (regOne!30132 (regOne!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regOne!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262027 lambda!261933))))

(declare-fun bs!1212425 () Bool)

(assert (= bs!1212425 (and b!5221078 d!1682897)))

(assert (=> bs!1212425 (not (= lambda!262027 lambda!261961))))

(assert (=> bs!1212424 (not (= lambda!262027 lambda!261932))))

(declare-fun bs!1212426 () Bool)

(assert (= bs!1212426 (and b!5221078 b!5220992)))

(assert (=> bs!1212426 (not (= lambda!262027 lambda!262022))))

(declare-fun bs!1212427 () Bool)

(assert (= bs!1212427 (and b!5221078 b!5220165)))

(assert (=> bs!1212427 (= (and (= (regOne!30132 (regOne!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regOne!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262027 lambda!261971))))

(declare-fun bs!1212428 () Bool)

(assert (= bs!1212428 (and b!5221078 b!5221075)))

(assert (=> bs!1212428 (not (= lambda!262027 lambda!262026))))

(declare-fun bs!1212429 () Bool)

(assert (= bs!1212429 (and b!5221078 b!5220995)))

(assert (=> bs!1212429 (= (and (= (regOne!30132 (regOne!30133 r!7292)) (regOne!30132 (regTwo!30133 r!7292))) (= (regTwo!30132 (regOne!30133 r!7292)) (regTwo!30132 (regTwo!30133 r!7292)))) (= lambda!262027 lambda!262023))))

(declare-fun bs!1212430 () Bool)

(assert (= bs!1212430 (and b!5221078 d!1682893)))

(assert (=> bs!1212430 (= (and (= (regOne!30132 (regOne!30133 r!7292)) (regOne!30132 r!7292)) (= (regTwo!30132 (regOne!30133 r!7292)) (regTwo!30132 r!7292))) (= lambda!262027 lambda!261958))))

(declare-fun bs!1212431 () Bool)

(assert (= bs!1212431 (and b!5221078 d!1683111)))

(assert (=> bs!1212431 (not (= lambda!262027 lambda!262013))))

(declare-fun bs!1212432 () Bool)

(assert (= bs!1212432 (and b!5221078 b!5220162)))

(assert (=> bs!1212432 (not (= lambda!262027 lambda!261970))))

(assert (=> bs!1212430 (not (= lambda!262027 lambda!261957))))

(assert (=> b!5221078 true))

(assert (=> b!5221078 true))

(declare-fun b!5221071 () Bool)

(declare-fun e!3249779 () Bool)

(declare-fun call!368476 () Bool)

(assert (=> b!5221071 (= e!3249779 call!368476)))

(declare-fun b!5221072 () Bool)

(declare-fun e!3249778 () Bool)

(declare-fun e!3249777 () Bool)

(assert (=> b!5221072 (= e!3249778 e!3249777)))

(declare-fun res!2216950 () Bool)

(assert (=> b!5221072 (= res!2216950 (matchRSpec!1913 (regOne!30133 (regOne!30133 r!7292)) s!2326))))

(assert (=> b!5221072 (=> res!2216950 e!3249777)))

(declare-fun b!5221074 () Bool)

(declare-fun c!901027 () Bool)

(assert (=> b!5221074 (= c!901027 (is-ElementMatch!14810 (regOne!30133 r!7292)))))

(declare-fun e!3249775 () Bool)

(declare-fun e!3249774 () Bool)

(assert (=> b!5221074 (= e!3249775 e!3249774)))

(declare-fun e!3249776 () Bool)

(declare-fun call!368477 () Bool)

(assert (=> b!5221075 (= e!3249776 call!368477)))

(declare-fun b!5221076 () Bool)

(assert (=> b!5221076 (= e!3249779 e!3249775)))

(declare-fun res!2216952 () Bool)

(assert (=> b!5221076 (= res!2216952 (not (is-EmptyLang!14810 (regOne!30133 r!7292))))))

(assert (=> b!5221076 (=> (not res!2216952) (not e!3249775))))

(declare-fun c!901029 () Bool)

(declare-fun bm!368471 () Bool)

(assert (=> bm!368471 (= call!368477 (Exists!1991 (ite c!901029 lambda!262026 lambda!262027)))))

(declare-fun b!5221077 () Bool)

(declare-fun c!901026 () Bool)

(assert (=> b!5221077 (= c!901026 (is-Union!14810 (regOne!30133 r!7292)))))

(assert (=> b!5221077 (= e!3249774 e!3249778)))

(declare-fun e!3249773 () Bool)

(assert (=> b!5221078 (= e!3249773 call!368477)))

(declare-fun d!1683243 () Bool)

(declare-fun c!901028 () Bool)

(assert (=> d!1683243 (= c!901028 (is-EmptyExpr!14810 (regOne!30133 r!7292)))))

(assert (=> d!1683243 (= (matchRSpec!1913 (regOne!30133 r!7292) s!2326) e!3249779)))

(declare-fun b!5221073 () Bool)

(declare-fun res!2216951 () Bool)

(assert (=> b!5221073 (=> res!2216951 e!3249776)))

(assert (=> b!5221073 (= res!2216951 call!368476)))

(assert (=> b!5221073 (= e!3249773 e!3249776)))

(declare-fun b!5221079 () Bool)

(assert (=> b!5221079 (= e!3249777 (matchRSpec!1913 (regTwo!30133 (regOne!30133 r!7292)) s!2326))))

(declare-fun b!5221080 () Bool)

(assert (=> b!5221080 (= e!3249774 (= s!2326 (Cons!60606 (c!900678 (regOne!30133 r!7292)) Nil!60606)))))

(declare-fun b!5221081 () Bool)

(assert (=> b!5221081 (= e!3249778 e!3249773)))

(assert (=> b!5221081 (= c!901029 (is-Star!14810 (regOne!30133 r!7292)))))

(declare-fun bm!368472 () Bool)

(assert (=> bm!368472 (= call!368476 (isEmpty!32527 s!2326))))

(assert (= (and d!1683243 c!901028) b!5221071))

(assert (= (and d!1683243 (not c!901028)) b!5221076))

(assert (= (and b!5221076 res!2216952) b!5221074))

(assert (= (and b!5221074 c!901027) b!5221080))

(assert (= (and b!5221074 (not c!901027)) b!5221077))

(assert (= (and b!5221077 c!901026) b!5221072))

(assert (= (and b!5221077 (not c!901026)) b!5221081))

(assert (= (and b!5221072 (not res!2216950)) b!5221079))

(assert (= (and b!5221081 c!901029) b!5221073))

(assert (= (and b!5221081 (not c!901029)) b!5221078))

(assert (= (and b!5221073 (not res!2216951)) b!5221075))

(assert (= (or b!5221075 b!5221078) bm!368471))

(assert (= (or b!5221071 b!5221073) bm!368472))

(declare-fun m!6268698 () Bool)

(assert (=> b!5221072 m!6268698))

(declare-fun m!6268700 () Bool)

(assert (=> bm!368471 m!6268700))

(declare-fun m!6268702 () Bool)

(assert (=> b!5221079 m!6268702))

(assert (=> bm!368472 m!6267972))

(assert (=> b!5220159 d!1683243))

(declare-fun b!5221082 () Bool)

(declare-fun e!3249780 () (Set Context!8388))

(declare-fun call!368483 () (Set Context!8388))

(assert (=> b!5221082 (= e!3249780 call!368483)))

(declare-fun bm!368473 () Bool)

(declare-fun call!368478 () (Set Context!8388))

(assert (=> bm!368473 (= call!368483 call!368478)))

(declare-fun b!5221083 () Bool)

(declare-fun e!3249785 () (Set Context!8388))

(assert (=> b!5221083 (= e!3249785 call!368483)))

(declare-fun b!5221084 () Bool)

(declare-fun e!3249781 () Bool)

(assert (=> b!5221084 (= e!3249781 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 lt!2143417)))))))

(declare-fun b!5221085 () Bool)

(declare-fun e!3249784 () (Set Context!8388))

(assert (=> b!5221085 (= e!3249784 (set.insert (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (as set.empty (Set Context!8388))))))

(declare-fun bm!368474 () Bool)

(declare-fun call!368482 () List!60729)

(declare-fun call!368481 () List!60729)

(assert (=> bm!368474 (= call!368482 call!368481)))

(declare-fun b!5221086 () Bool)

(declare-fun e!3249782 () (Set Context!8388))

(declare-fun call!368480 () (Set Context!8388))

(assert (=> b!5221086 (= e!3249782 (set.union call!368480 call!368478))))

(declare-fun c!901034 () Bool)

(declare-fun c!901033 () Bool)

(declare-fun bm!368475 () Bool)

(assert (=> bm!368475 (= call!368481 ($colon$colon!1284 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 lt!2143417)))) (ite (or c!901033 c!901034) (regTwo!30132 (h!67053 (exprs!4694 lt!2143417))) (h!67053 (exprs!4694 lt!2143417)))))))

(declare-fun b!5221087 () Bool)

(declare-fun e!3249783 () (Set Context!8388))

(declare-fun call!368479 () (Set Context!8388))

(assert (=> b!5221087 (= e!3249783 (set.union call!368480 call!368479))))

(declare-fun c!901030 () Bool)

(declare-fun bm!368476 () Bool)

(assert (=> bm!368476 (= call!368480 (derivationStepZipperDown!258 (ite c!901030 (regOne!30133 (h!67053 (exprs!4694 lt!2143417))) (regOne!30132 (h!67053 (exprs!4694 lt!2143417)))) (ite c!901030 (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (Context!8389 call!368481)) (h!67054 s!2326)))))

(declare-fun b!5221088 () Bool)

(assert (=> b!5221088 (= e!3249780 (as set.empty (Set Context!8388)))))

(declare-fun b!5221089 () Bool)

(assert (=> b!5221089 (= e!3249784 e!3249783)))

(assert (=> b!5221089 (= c!901030 (is-Union!14810 (h!67053 (exprs!4694 lt!2143417))))))

(declare-fun b!5221090 () Bool)

(declare-fun c!901032 () Bool)

(assert (=> b!5221090 (= c!901032 (is-Star!14810 (h!67053 (exprs!4694 lt!2143417))))))

(assert (=> b!5221090 (= e!3249785 e!3249780)))

(declare-fun b!5221091 () Bool)

(assert (=> b!5221091 (= c!901033 e!3249781)))

(declare-fun res!2216953 () Bool)

(assert (=> b!5221091 (=> (not res!2216953) (not e!3249781))))

(assert (=> b!5221091 (= res!2216953 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143417))))))

(assert (=> b!5221091 (= e!3249783 e!3249782)))

(declare-fun d!1683245 () Bool)

(declare-fun c!901031 () Bool)

(assert (=> d!1683245 (= c!901031 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 lt!2143417))) (= (c!900678 (h!67053 (exprs!4694 lt!2143417))) (h!67054 s!2326))))))

(assert (=> d!1683245 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 lt!2143417)) (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (h!67054 s!2326)) e!3249784)))

(declare-fun bm!368477 () Bool)

(assert (=> bm!368477 (= call!368478 call!368479)))

(declare-fun b!5221092 () Bool)

(assert (=> b!5221092 (= e!3249782 e!3249785)))

(assert (=> b!5221092 (= c!901034 (is-Concat!23655 (h!67053 (exprs!4694 lt!2143417))))))

(declare-fun bm!368478 () Bool)

(assert (=> bm!368478 (= call!368479 (derivationStepZipperDown!258 (ite c!901030 (regTwo!30133 (h!67053 (exprs!4694 lt!2143417))) (ite c!901033 (regTwo!30132 (h!67053 (exprs!4694 lt!2143417))) (ite c!901034 (regOne!30132 (h!67053 (exprs!4694 lt!2143417))) (reg!15139 (h!67053 (exprs!4694 lt!2143417)))))) (ite (or c!901030 c!901033) (Context!8389 (t!373899 (exprs!4694 lt!2143417))) (Context!8389 call!368482)) (h!67054 s!2326)))))

(assert (= (and d!1683245 c!901031) b!5221085))

(assert (= (and d!1683245 (not c!901031)) b!5221089))

(assert (= (and b!5221089 c!901030) b!5221087))

(assert (= (and b!5221089 (not c!901030)) b!5221091))

(assert (= (and b!5221091 res!2216953) b!5221084))

(assert (= (and b!5221091 c!901033) b!5221086))

(assert (= (and b!5221091 (not c!901033)) b!5221092))

(assert (= (and b!5221092 c!901034) b!5221083))

(assert (= (and b!5221092 (not c!901034)) b!5221090))

(assert (= (and b!5221090 c!901032) b!5221082))

(assert (= (and b!5221090 (not c!901032)) b!5221088))

(assert (= (or b!5221083 b!5221082) bm!368474))

(assert (= (or b!5221083 b!5221082) bm!368473))

(assert (= (or b!5221086 bm!368474) bm!368475))

(assert (= (or b!5221086 bm!368473) bm!368477))

(assert (= (or b!5221087 bm!368477) bm!368478))

(assert (= (or b!5221087 b!5221086) bm!368476))

(declare-fun m!6268704 () Bool)

(assert (=> b!5221085 m!6268704))

(declare-fun m!6268706 () Bool)

(assert (=> b!5221084 m!6268706))

(declare-fun m!6268708 () Bool)

(assert (=> bm!368478 m!6268708))

(declare-fun m!6268710 () Bool)

(assert (=> bm!368475 m!6268710))

(declare-fun m!6268712 () Bool)

(assert (=> bm!368476 m!6268712))

(assert (=> bm!368303 d!1683245))

(declare-fun d!1683247 () Bool)

(assert (=> d!1683247 (= ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900732 c!900733) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30133 (regOne!30132 r!7292)))) (Cons!60605 (ite (or c!900732 c!900733) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30133 (regOne!30132 r!7292))) (exprs!4694 lt!2143408)))))

(assert (=> bm!368282 d!1683247))

(declare-fun b!5221093 () Bool)

(declare-fun e!3249791 () Bool)

(declare-fun call!368486 () Bool)

(assert (=> b!5221093 (= e!3249791 call!368486)))

(declare-fun c!901036 () Bool)

(declare-fun bm!368479 () Bool)

(declare-fun call!368484 () Bool)

(assert (=> bm!368479 (= call!368484 (validRegex!6546 (ite c!901036 (regOne!30133 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (regOne!30132 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))))

(declare-fun b!5221094 () Bool)

(declare-fun e!3249786 () Bool)

(declare-fun e!3249787 () Bool)

(assert (=> b!5221094 (= e!3249786 e!3249787)))

(assert (=> b!5221094 (= c!901036 (is-Union!14810 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun bm!368480 () Bool)

(declare-fun call!368485 () Bool)

(assert (=> bm!368480 (= call!368486 call!368485)))

(declare-fun d!1683249 () Bool)

(declare-fun res!2216958 () Bool)

(declare-fun e!3249788 () Bool)

(assert (=> d!1683249 (=> res!2216958 e!3249788)))

(assert (=> d!1683249 (= res!2216958 (is-ElementMatch!14810 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(assert (=> d!1683249 (= (validRegex!6546 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) e!3249788)))

(declare-fun b!5221095 () Bool)

(assert (=> b!5221095 (= e!3249788 e!3249786)))

(declare-fun c!901035 () Bool)

(assert (=> b!5221095 (= c!901035 (is-Star!14810 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5221096 () Bool)

(declare-fun e!3249789 () Bool)

(assert (=> b!5221096 (= e!3249789 call!368485)))

(declare-fun b!5221097 () Bool)

(declare-fun e!3249792 () Bool)

(assert (=> b!5221097 (= e!3249792 call!368486)))

(declare-fun b!5221098 () Bool)

(assert (=> b!5221098 (= e!3249786 e!3249789)))

(declare-fun res!2216957 () Bool)

(assert (=> b!5221098 (= res!2216957 (not (nullable!4979 (reg!15139 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5221098 (=> (not res!2216957) (not e!3249789))))

(declare-fun bm!368481 () Bool)

(assert (=> bm!368481 (= call!368485 (validRegex!6546 (ite c!901035 (reg!15139 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (ite c!901036 (regTwo!30133 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))) (regTwo!30132 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))))

(declare-fun b!5221099 () Bool)

(declare-fun res!2216955 () Bool)

(declare-fun e!3249790 () Bool)

(assert (=> b!5221099 (=> res!2216955 e!3249790)))

(assert (=> b!5221099 (= res!2216955 (not (is-Concat!23655 (ite c!900786 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(assert (=> b!5221099 (= e!3249787 e!3249790)))

(declare-fun b!5221100 () Bool)

(assert (=> b!5221100 (= e!3249790 e!3249791)))

(declare-fun res!2216956 () Bool)

(assert (=> b!5221100 (=> (not res!2216956) (not e!3249791))))

(assert (=> b!5221100 (= res!2216956 call!368484)))

(declare-fun b!5221101 () Bool)

(declare-fun res!2216954 () Bool)

(assert (=> b!5221101 (=> (not res!2216954) (not e!3249792))))

(assert (=> b!5221101 (= res!2216954 call!368484)))

(assert (=> b!5221101 (= e!3249787 e!3249792)))

(assert (= (and d!1683249 (not res!2216958)) b!5221095))

(assert (= (and b!5221095 c!901035) b!5221098))

(assert (= (and b!5221095 (not c!901035)) b!5221094))

(assert (= (and b!5221098 res!2216957) b!5221096))

(assert (= (and b!5221094 c!901036) b!5221101))

(assert (= (and b!5221094 (not c!901036)) b!5221099))

(assert (= (and b!5221101 res!2216954) b!5221097))

(assert (= (and b!5221099 (not res!2216955)) b!5221100))

(assert (= (and b!5221100 res!2216956) b!5221093))

(assert (= (or b!5221097 b!5221093) bm!368480))

(assert (= (or b!5221101 b!5221100) bm!368479))

(assert (= (or b!5221096 bm!368480) bm!368481))

(declare-fun m!6268714 () Bool)

(assert (=> bm!368479 m!6268714))

(declare-fun m!6268716 () Bool)

(assert (=> b!5221098 m!6268716))

(declare-fun m!6268718 () Bool)

(assert (=> bm!368481 m!6268718))

(assert (=> bm!368323 d!1683249))

(assert (=> b!5220198 d!1683207))

(assert (=> b!5220198 d!1683209))

(declare-fun d!1683251 () Bool)

(declare-fun c!901037 () Bool)

(assert (=> d!1683251 (= c!901037 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249793 () Bool)

(assert (=> d!1683251 (= (matchZipper!1054 (derivationStepZipper!1078 (set.union lt!2143418 lt!2143401) (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249793)))

(declare-fun b!5221102 () Bool)

(assert (=> b!5221102 (= e!3249793 (nullableZipper!1234 (derivationStepZipper!1078 (set.union lt!2143418 lt!2143401) (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5221103 () Bool)

(assert (=> b!5221103 (= e!3249793 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 (set.union lt!2143418 lt!2143401) (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683251 c!901037) b!5221102))

(assert (= (and d!1683251 (not c!901037)) b!5221103))

(assert (=> d!1683251 m!6267798))

(assert (=> d!1683251 m!6268566))

(assert (=> b!5221102 m!6267804))

(declare-fun m!6268720 () Bool)

(assert (=> b!5221102 m!6268720))

(assert (=> b!5221103 m!6267798))

(assert (=> b!5221103 m!6268570))

(assert (=> b!5221103 m!6267804))

(assert (=> b!5221103 m!6268570))

(declare-fun m!6268722 () Bool)

(assert (=> b!5221103 m!6268722))

(assert (=> b!5221103 m!6267798))

(assert (=> b!5221103 m!6268574))

(assert (=> b!5221103 m!6268722))

(assert (=> b!5221103 m!6268574))

(declare-fun m!6268724 () Bool)

(assert (=> b!5221103 m!6268724))

(assert (=> b!5219960 d!1683251))

(declare-fun bs!1212433 () Bool)

(declare-fun d!1683253 () Bool)

(assert (= bs!1212433 (and d!1683253 b!5219789)))

(declare-fun lambda!262028 () Int)

(assert (=> bs!1212433 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262028 lambda!261934))))

(declare-fun bs!1212434 () Bool)

(assert (= bs!1212434 (and d!1683253 d!1683185)))

(assert (=> bs!1212434 (= lambda!262028 lambda!262019)))

(declare-fun bs!1212435 () Bool)

(assert (= bs!1212435 (and d!1683253 d!1683213)))

(assert (=> bs!1212435 (= lambda!262028 lambda!262020)))

(declare-fun bs!1212436 () Bool)

(assert (= bs!1212436 (and d!1683253 d!1683239)))

(assert (=> bs!1212436 (= lambda!262028 lambda!262025)))

(assert (=> d!1683253 true))

(assert (=> d!1683253 (= (derivationStepZipper!1078 (set.union lt!2143418 lt!2143401) (head!11188 (t!373900 s!2326))) (flatMap!537 (set.union lt!2143418 lt!2143401) lambda!262028))))

(declare-fun bs!1212437 () Bool)

(assert (= bs!1212437 d!1683253))

(declare-fun m!6268726 () Bool)

(assert (=> bs!1212437 m!6268726))

(assert (=> b!5219960 d!1683253))

(assert (=> b!5219960 d!1683187))

(assert (=> b!5219960 d!1683189))

(declare-fun d!1683255 () Bool)

(assert (=> d!1683255 (= (nullable!4979 (h!67053 (exprs!4694 lt!2143408))) (nullableFct!1386 (h!67053 (exprs!4694 lt!2143408))))))

(declare-fun bs!1212438 () Bool)

(assert (= bs!1212438 d!1683255))

(declare-fun m!6268728 () Bool)

(assert (=> bs!1212438 m!6268728))

(assert (=> b!5220119 d!1683255))

(declare-fun d!1683257 () Bool)

(assert (=> d!1683257 (= (isEmpty!32528 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326)) (not (is-Some!14920 (findConcatSeparation!1335 (regOne!30132 r!7292) (regTwo!30132 r!7292) Nil!60606 s!2326 s!2326))))))

(assert (=> d!1682895 d!1683257))

(declare-fun bm!368482 () Bool)

(declare-fun call!368487 () Bool)

(declare-fun c!901038 () Bool)

(assert (=> bm!368482 (= call!368487 (nullable!4979 (ite c!901038 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5221104 () Bool)

(declare-fun e!3249799 () Bool)

(declare-fun e!3249797 () Bool)

(assert (=> b!5221104 (= e!3249799 e!3249797)))

(declare-fun res!2216961 () Bool)

(declare-fun call!368488 () Bool)

(assert (=> b!5221104 (= res!2216961 call!368488)))

(assert (=> b!5221104 (=> (not res!2216961) (not e!3249797))))

(declare-fun bm!368483 () Bool)

(assert (=> bm!368483 (= call!368488 (nullable!4979 (ite c!901038 (regOne!30133 (regTwo!30133 (regOne!30132 r!7292))) (regOne!30132 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun d!1683259 () Bool)

(declare-fun res!2216962 () Bool)

(declare-fun e!3249795 () Bool)

(assert (=> d!1683259 (=> res!2216962 e!3249795)))

(assert (=> d!1683259 (= res!2216962 (is-EmptyExpr!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(assert (=> d!1683259 (= (nullableFct!1386 (regTwo!30133 (regOne!30132 r!7292))) e!3249795)))

(declare-fun b!5221105 () Bool)

(declare-fun e!3249796 () Bool)

(assert (=> b!5221105 (= e!3249795 e!3249796)))

(declare-fun res!2216963 () Bool)

(assert (=> b!5221105 (=> (not res!2216963) (not e!3249796))))

(assert (=> b!5221105 (= res!2216963 (and (not (is-EmptyLang!14810 (regTwo!30133 (regOne!30132 r!7292)))) (not (is-ElementMatch!14810 (regTwo!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5221106 () Bool)

(declare-fun e!3249794 () Bool)

(assert (=> b!5221106 (= e!3249796 e!3249794)))

(declare-fun res!2216959 () Bool)

(assert (=> b!5221106 (=> res!2216959 e!3249794)))

(assert (=> b!5221106 (= res!2216959 (is-Star!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun b!5221107 () Bool)

(assert (=> b!5221107 (= e!3249794 e!3249799)))

(assert (=> b!5221107 (= c!901038 (is-Union!14810 (regTwo!30133 (regOne!30132 r!7292))))))

(declare-fun b!5221108 () Bool)

(declare-fun e!3249798 () Bool)

(assert (=> b!5221108 (= e!3249798 call!368487)))

(declare-fun b!5221109 () Bool)

(assert (=> b!5221109 (= e!3249797 call!368487)))

(declare-fun b!5221110 () Bool)

(assert (=> b!5221110 (= e!3249799 e!3249798)))

(declare-fun res!2216960 () Bool)

(assert (=> b!5221110 (= res!2216960 call!368488)))

(assert (=> b!5221110 (=> res!2216960 e!3249798)))

(assert (= (and d!1683259 (not res!2216962)) b!5221105))

(assert (= (and b!5221105 res!2216963) b!5221106))

(assert (= (and b!5221106 (not res!2216959)) b!5221107))

(assert (= (and b!5221107 c!901038) b!5221110))

(assert (= (and b!5221107 (not c!901038)) b!5221104))

(assert (= (and b!5221110 (not res!2216960)) b!5221108))

(assert (= (and b!5221104 res!2216961) b!5221109))

(assert (= (or b!5221108 b!5221109) bm!368482))

(assert (= (or b!5221110 b!5221104) bm!368483))

(declare-fun m!6268730 () Bool)

(assert (=> bm!368482 m!6268730))

(declare-fun m!6268732 () Bool)

(assert (=> bm!368483 m!6268732))

(assert (=> d!1682919 d!1683259))

(declare-fun d!1683261 () Bool)

(assert (=> d!1683261 (= (nullable!4979 (reg!15139 r!7292)) (nullableFct!1386 (reg!15139 r!7292)))))

(declare-fun bs!1212439 () Bool)

(assert (= bs!1212439 d!1683261))

(declare-fun m!6268734 () Bool)

(assert (=> bs!1212439 m!6268734))

(assert (=> b!5220076 d!1683261))

(declare-fun bs!1212440 () Bool)

(declare-fun d!1683263 () Bool)

(assert (= bs!1212440 (and d!1683263 d!1683101)))

(declare-fun lambda!262029 () Int)

(assert (=> bs!1212440 (= lambda!262029 lambda!262009)))

(declare-fun bs!1212441 () Bool)

(assert (= bs!1212441 (and d!1683263 d!1683103)))

(assert (=> bs!1212441 (= lambda!262029 lambda!262010)))

(declare-fun bs!1212442 () Bool)

(assert (= bs!1212442 (and d!1683263 d!1683125)))

(assert (=> bs!1212442 (= lambda!262029 lambda!262014)))

(assert (=> d!1683263 (= (nullableZipper!1234 lt!2143411) (exists!1970 lt!2143411 lambda!262029))))

(declare-fun bs!1212443 () Bool)

(assert (= bs!1212443 d!1683263))

(declare-fun m!6268736 () Bool)

(assert (=> bs!1212443 m!6268736))

(assert (=> b!5220004 d!1683263))

(declare-fun d!1683265 () Bool)

(declare-fun c!901039 () Bool)

(assert (=> d!1683265 (= c!901039 (isEmpty!32527 (t!373900 s!2326)))))

(declare-fun e!3249800 () Bool)

(assert (=> d!1683265 (= (matchZipper!1054 (set.union lt!2143415 lt!2143413) (t!373900 s!2326)) e!3249800)))

(declare-fun b!5221111 () Bool)

(assert (=> b!5221111 (= e!3249800 (nullableZipper!1234 (set.union lt!2143415 lt!2143413)))))

(declare-fun b!5221112 () Bool)

(assert (=> b!5221112 (= e!3249800 (matchZipper!1054 (derivationStepZipper!1078 (set.union lt!2143415 lt!2143413) (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))))))

(assert (= (and d!1683265 c!901039) b!5221111))

(assert (= (and d!1683265 (not c!901039)) b!5221112))

(assert (=> d!1683265 m!6267790))

(declare-fun m!6268738 () Bool)

(assert (=> b!5221111 m!6268738))

(assert (=> b!5221112 m!6267794))

(assert (=> b!5221112 m!6267794))

(declare-fun m!6268740 () Bool)

(assert (=> b!5221112 m!6268740))

(assert (=> b!5221112 m!6267798))

(assert (=> b!5221112 m!6268740))

(assert (=> b!5221112 m!6267798))

(declare-fun m!6268742 () Bool)

(assert (=> b!5221112 m!6268742))

(assert (=> d!1682907 d!1683265))

(assert (=> d!1682907 d!1682905))

(declare-fun e!3249801 () Bool)

(declare-fun d!1683267 () Bool)

(assert (=> d!1683267 (= (matchZipper!1054 (set.union lt!2143415 lt!2143413) (t!373900 s!2326)) e!3249801)))

(declare-fun res!2216964 () Bool)

(assert (=> d!1683267 (=> res!2216964 e!3249801)))

(assert (=> d!1683267 (= res!2216964 (matchZipper!1054 lt!2143415 (t!373900 s!2326)))))

(assert (=> d!1683267 true))

(declare-fun _$48!828 () Unit!152510)

(assert (=> d!1683267 (= (choose!38812 lt!2143415 lt!2143413 (t!373900 s!2326)) _$48!828)))

(declare-fun b!5221113 () Bool)

(assert (=> b!5221113 (= e!3249801 (matchZipper!1054 lt!2143413 (t!373900 s!2326)))))

(assert (= (and d!1683267 (not res!2216964)) b!5221113))

(assert (=> d!1683267 m!6267872))

(assert (=> d!1683267 m!6267656))

(assert (=> b!5221113 m!6267632))

(assert (=> d!1682907 d!1683267))

(declare-fun d!1683269 () Bool)

(assert (=> d!1683269 (= (isUnion!211 lt!2143549) (is-Union!14810 lt!2143549))))

(assert (=> b!5220243 d!1683269))

(declare-fun bs!1212444 () Bool)

(declare-fun d!1683271 () Bool)

(assert (= bs!1212444 (and d!1683271 d!1683101)))

(declare-fun lambda!262030 () Int)

(assert (=> bs!1212444 (= lambda!262030 lambda!262009)))

(declare-fun bs!1212445 () Bool)

(assert (= bs!1212445 (and d!1683271 d!1683103)))

(assert (=> bs!1212445 (= lambda!262030 lambda!262010)))

(declare-fun bs!1212446 () Bool)

(assert (= bs!1212446 (and d!1683271 d!1683125)))

(assert (=> bs!1212446 (= lambda!262030 lambda!262014)))

(declare-fun bs!1212447 () Bool)

(assert (= bs!1212447 (and d!1683271 d!1683263)))

(assert (=> bs!1212447 (= lambda!262030 lambda!262029)))

(assert (=> d!1683271 (= (nullableZipper!1234 lt!2143413) (exists!1970 lt!2143413 lambda!262030))))

(declare-fun bs!1212448 () Bool)

(assert (= bs!1212448 d!1683271))

(declare-fun m!6268744 () Bool)

(assert (=> bs!1212448 m!6268744))

(assert (=> b!5219961 d!1683271))

(declare-fun d!1683273 () Bool)

(assert (=> d!1683273 (= ($colon$colon!1284 (exprs!4694 lt!2143408) (ite (or c!900758 c!900759) (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67053 (exprs!4694 (h!67055 zl!343))))) (Cons!60605 (ite (or c!900758 c!900759) (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67053 (exprs!4694 (h!67055 zl!343)))) (exprs!4694 lt!2143408)))))

(assert (=> bm!368308 d!1683273))

(assert (=> bm!368319 d!1683151))

(declare-fun b!5221114 () Bool)

(declare-fun e!3249807 () Bool)

(declare-fun call!368491 () Bool)

(assert (=> b!5221114 (= e!3249807 call!368491)))

(declare-fun bm!368484 () Bool)

(declare-fun call!368489 () Bool)

(declare-fun c!901041 () Bool)

(assert (=> bm!368484 (= call!368489 (validRegex!6546 (ite c!901041 (regOne!30133 lt!2143549) (regOne!30132 lt!2143549))))))

(declare-fun b!5221115 () Bool)

(declare-fun e!3249802 () Bool)

(declare-fun e!3249803 () Bool)

(assert (=> b!5221115 (= e!3249802 e!3249803)))

(assert (=> b!5221115 (= c!901041 (is-Union!14810 lt!2143549))))

(declare-fun bm!368485 () Bool)

(declare-fun call!368490 () Bool)

(assert (=> bm!368485 (= call!368491 call!368490)))

(declare-fun d!1683275 () Bool)

(declare-fun res!2216969 () Bool)

(declare-fun e!3249804 () Bool)

(assert (=> d!1683275 (=> res!2216969 e!3249804)))

(assert (=> d!1683275 (= res!2216969 (is-ElementMatch!14810 lt!2143549))))

(assert (=> d!1683275 (= (validRegex!6546 lt!2143549) e!3249804)))

(declare-fun b!5221116 () Bool)

(assert (=> b!5221116 (= e!3249804 e!3249802)))

(declare-fun c!901040 () Bool)

(assert (=> b!5221116 (= c!901040 (is-Star!14810 lt!2143549))))

(declare-fun b!5221117 () Bool)

(declare-fun e!3249805 () Bool)

(assert (=> b!5221117 (= e!3249805 call!368490)))

(declare-fun b!5221118 () Bool)

(declare-fun e!3249808 () Bool)

(assert (=> b!5221118 (= e!3249808 call!368491)))

(declare-fun b!5221119 () Bool)

(assert (=> b!5221119 (= e!3249802 e!3249805)))

(declare-fun res!2216968 () Bool)

(assert (=> b!5221119 (= res!2216968 (not (nullable!4979 (reg!15139 lt!2143549))))))

(assert (=> b!5221119 (=> (not res!2216968) (not e!3249805))))

(declare-fun bm!368486 () Bool)

(assert (=> bm!368486 (= call!368490 (validRegex!6546 (ite c!901040 (reg!15139 lt!2143549) (ite c!901041 (regTwo!30133 lt!2143549) (regTwo!30132 lt!2143549)))))))

(declare-fun b!5221120 () Bool)

(declare-fun res!2216966 () Bool)

(declare-fun e!3249806 () Bool)

(assert (=> b!5221120 (=> res!2216966 e!3249806)))

(assert (=> b!5221120 (= res!2216966 (not (is-Concat!23655 lt!2143549)))))

(assert (=> b!5221120 (= e!3249803 e!3249806)))

(declare-fun b!5221121 () Bool)

(assert (=> b!5221121 (= e!3249806 e!3249807)))

(declare-fun res!2216967 () Bool)

(assert (=> b!5221121 (=> (not res!2216967) (not e!3249807))))

(assert (=> b!5221121 (= res!2216967 call!368489)))

(declare-fun b!5221122 () Bool)

(declare-fun res!2216965 () Bool)

(assert (=> b!5221122 (=> (not res!2216965) (not e!3249808))))

(assert (=> b!5221122 (= res!2216965 call!368489)))

(assert (=> b!5221122 (= e!3249803 e!3249808)))

(assert (= (and d!1683275 (not res!2216969)) b!5221116))

(assert (= (and b!5221116 c!901040) b!5221119))

(assert (= (and b!5221116 (not c!901040)) b!5221115))

(assert (= (and b!5221119 res!2216968) b!5221117))

(assert (= (and b!5221115 c!901041) b!5221122))

(assert (= (and b!5221115 (not c!901041)) b!5221120))

(assert (= (and b!5221122 res!2216965) b!5221118))

(assert (= (and b!5221120 (not res!2216966)) b!5221121))

(assert (= (and b!5221121 res!2216967) b!5221114))

(assert (= (or b!5221118 b!5221114) bm!368485))

(assert (= (or b!5221122 b!5221121) bm!368484))

(assert (= (or b!5221117 bm!368485) bm!368486))

(declare-fun m!6268746 () Bool)

(assert (=> bm!368484 m!6268746))

(declare-fun m!6268748 () Bool)

(assert (=> b!5221119 m!6268748))

(declare-fun m!6268750 () Bool)

(assert (=> bm!368486 m!6268750))

(assert (=> d!1682965 d!1683275))

(declare-fun d!1683277 () Bool)

(declare-fun res!2216970 () Bool)

(declare-fun e!3249809 () Bool)

(assert (=> d!1683277 (=> res!2216970 e!3249809)))

(assert (=> d!1683277 (= res!2216970 (is-Nil!60605 (unfocusZipperList!252 zl!343)))))

(assert (=> d!1683277 (= (forall!14242 (unfocusZipperList!252 zl!343) lambda!261974) e!3249809)))

(declare-fun b!5221123 () Bool)

(declare-fun e!3249810 () Bool)

(assert (=> b!5221123 (= e!3249809 e!3249810)))

(declare-fun res!2216971 () Bool)

(assert (=> b!5221123 (=> (not res!2216971) (not e!3249810))))

(assert (=> b!5221123 (= res!2216971 (dynLambda!23947 lambda!261974 (h!67053 (unfocusZipperList!252 zl!343))))))

(declare-fun b!5221124 () Bool)

(assert (=> b!5221124 (= e!3249810 (forall!14242 (t!373899 (unfocusZipperList!252 zl!343)) lambda!261974))))

(assert (= (and d!1683277 (not res!2216970)) b!5221123))

(assert (= (and b!5221123 res!2216971) b!5221124))

(declare-fun b_lambda!201877 () Bool)

(assert (=> (not b_lambda!201877) (not b!5221123)))

(declare-fun m!6268752 () Bool)

(assert (=> b!5221123 m!6268752))

(declare-fun m!6268754 () Bool)

(assert (=> b!5221124 m!6268754))

(assert (=> d!1682965 d!1683277))

(declare-fun d!1683279 () Bool)

(assert (=> d!1683279 (= (isEmpty!32524 (tail!10284 (exprs!4694 (h!67055 zl!343)))) (is-Nil!60605 (tail!10284 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5219948 d!1683279))

(declare-fun d!1683281 () Bool)

(assert (=> d!1683281 (= (tail!10284 (exprs!4694 (h!67055 zl!343))) (t!373899 (exprs!4694 (h!67055 zl!343))))))

(assert (=> b!5219948 d!1683281))

(declare-fun d!1683283 () Bool)

(assert (=> d!1683283 true))

(declare-fun setRes!33210 () Bool)

(assert (=> d!1683283 setRes!33210))

(declare-fun condSetEmpty!33210 () Bool)

(declare-fun res!2216972 () (Set Context!8388))

(assert (=> d!1683283 (= condSetEmpty!33210 (= res!2216972 (as set.empty (Set Context!8388))))))

(assert (=> d!1683283 (= (choose!38816 lt!2143409 lambda!261934) res!2216972)))

(declare-fun setIsEmpty!33210 () Bool)

(assert (=> setIsEmpty!33210 setRes!33210))

(declare-fun setNonEmpty!33210 () Bool)

(declare-fun setElem!33210 () Context!8388)

(declare-fun tp!1463595 () Bool)

(declare-fun e!3249811 () Bool)

(assert (=> setNonEmpty!33210 (= setRes!33210 (and tp!1463595 (inv!80273 setElem!33210) e!3249811))))

(declare-fun setRest!33210 () (Set Context!8388))

(assert (=> setNonEmpty!33210 (= res!2216972 (set.union (set.insert setElem!33210 (as set.empty (Set Context!8388))) setRest!33210))))

(declare-fun b!5221125 () Bool)

(declare-fun tp!1463594 () Bool)

(assert (=> b!5221125 (= e!3249811 tp!1463594)))

(assert (= (and d!1683283 condSetEmpty!33210) setIsEmpty!33210))

(assert (= (and d!1683283 (not condSetEmpty!33210)) setNonEmpty!33210))

(assert (= setNonEmpty!33210 b!5221125))

(declare-fun m!6268756 () Bool)

(assert (=> setNonEmpty!33210 m!6268756))

(assert (=> d!1682923 d!1683283))

(declare-fun b!5221126 () Bool)

(declare-fun e!3249814 () Bool)

(assert (=> b!5221126 (= e!3249814 (nullable!4979 (regTwo!30132 r!7292)))))

(declare-fun d!1683285 () Bool)

(declare-fun e!3249813 () Bool)

(assert (=> d!1683285 e!3249813))

(declare-fun c!901043 () Bool)

(assert (=> d!1683285 (= c!901043 (is-EmptyExpr!14810 (regTwo!30132 r!7292)))))

(declare-fun lt!2143620 () Bool)

(assert (=> d!1683285 (= lt!2143620 e!3249814)))

(declare-fun c!901044 () Bool)

(assert (=> d!1683285 (= c!901044 (isEmpty!32527 s!2326))))

(assert (=> d!1683285 (validRegex!6546 (regTwo!30132 r!7292))))

(assert (=> d!1683285 (= (matchR!6995 (regTwo!30132 r!7292) s!2326) lt!2143620)))

(declare-fun b!5221127 () Bool)

(declare-fun res!2216980 () Bool)

(declare-fun e!3249816 () Bool)

(assert (=> b!5221127 (=> res!2216980 e!3249816)))

(assert (=> b!5221127 (= res!2216980 (not (isEmpty!32527 (tail!10285 s!2326))))))

(declare-fun b!5221128 () Bool)

(declare-fun res!2216974 () Bool)

(declare-fun e!3249817 () Bool)

(assert (=> b!5221128 (=> (not res!2216974) (not e!3249817))))

(declare-fun call!368492 () Bool)

(assert (=> b!5221128 (= res!2216974 (not call!368492))))

(declare-fun b!5221129 () Bool)

(declare-fun res!2216973 () Bool)

(declare-fun e!3249818 () Bool)

(assert (=> b!5221129 (=> res!2216973 e!3249818)))

(assert (=> b!5221129 (= res!2216973 e!3249817)))

(declare-fun res!2216978 () Bool)

(assert (=> b!5221129 (=> (not res!2216978) (not e!3249817))))

(assert (=> b!5221129 (= res!2216978 lt!2143620)))

(declare-fun b!5221130 () Bool)

(declare-fun res!2216975 () Bool)

(assert (=> b!5221130 (=> res!2216975 e!3249818)))

(assert (=> b!5221130 (= res!2216975 (not (is-ElementMatch!14810 (regTwo!30132 r!7292))))))

(declare-fun e!3249812 () Bool)

(assert (=> b!5221130 (= e!3249812 e!3249818)))

(declare-fun b!5221131 () Bool)

(declare-fun e!3249815 () Bool)

(assert (=> b!5221131 (= e!3249818 e!3249815)))

(declare-fun res!2216977 () Bool)

(assert (=> b!5221131 (=> (not res!2216977) (not e!3249815))))

(assert (=> b!5221131 (= res!2216977 (not lt!2143620))))

(declare-fun b!5221132 () Bool)

(assert (=> b!5221132 (= e!3249813 e!3249812)))

(declare-fun c!901042 () Bool)

(assert (=> b!5221132 (= c!901042 (is-EmptyLang!14810 (regTwo!30132 r!7292)))))

(declare-fun b!5221133 () Bool)

(assert (=> b!5221133 (= e!3249812 (not lt!2143620))))

(declare-fun b!5221134 () Bool)

(assert (=> b!5221134 (= e!3249815 e!3249816)))

(declare-fun res!2216979 () Bool)

(assert (=> b!5221134 (=> res!2216979 e!3249816)))

(assert (=> b!5221134 (= res!2216979 call!368492)))

(declare-fun b!5221135 () Bool)

(assert (=> b!5221135 (= e!3249814 (matchR!6995 (derivativeStep!4056 (regTwo!30132 r!7292) (head!11188 s!2326)) (tail!10285 s!2326)))))

(declare-fun bm!368487 () Bool)

(assert (=> bm!368487 (= call!368492 (isEmpty!32527 s!2326))))

(declare-fun b!5221136 () Bool)

(assert (=> b!5221136 (= e!3249813 (= lt!2143620 call!368492))))

(declare-fun b!5221137 () Bool)

(assert (=> b!5221137 (= e!3249816 (not (= (head!11188 s!2326) (c!900678 (regTwo!30132 r!7292)))))))

(declare-fun b!5221138 () Bool)

(declare-fun res!2216976 () Bool)

(assert (=> b!5221138 (=> (not res!2216976) (not e!3249817))))

(assert (=> b!5221138 (= res!2216976 (isEmpty!32527 (tail!10285 s!2326)))))

(declare-fun b!5221139 () Bool)

(assert (=> b!5221139 (= e!3249817 (= (head!11188 s!2326) (c!900678 (regTwo!30132 r!7292))))))

(assert (= (and d!1683285 c!901044) b!5221126))

(assert (= (and d!1683285 (not c!901044)) b!5221135))

(assert (= (and d!1683285 c!901043) b!5221136))

(assert (= (and d!1683285 (not c!901043)) b!5221132))

(assert (= (and b!5221132 c!901042) b!5221133))

(assert (= (and b!5221132 (not c!901042)) b!5221130))

(assert (= (and b!5221130 (not res!2216975)) b!5221129))

(assert (= (and b!5221129 res!2216978) b!5221128))

(assert (= (and b!5221128 res!2216974) b!5221138))

(assert (= (and b!5221138 res!2216976) b!5221139))

(assert (= (and b!5221129 (not res!2216973)) b!5221131))

(assert (= (and b!5221131 res!2216977) b!5221134))

(assert (= (and b!5221134 (not res!2216979)) b!5221127))

(assert (= (and b!5221127 (not res!2216980)) b!5221137))

(assert (= (or b!5221136 b!5221128 b!5221134) bm!368487))

(assert (=> b!5221127 m!6267974))

(assert (=> b!5221127 m!6267974))

(assert (=> b!5221127 m!6267976))

(assert (=> b!5221139 m!6267978))

(assert (=> b!5221135 m!6267978))

(assert (=> b!5221135 m!6267978))

(declare-fun m!6268758 () Bool)

(assert (=> b!5221135 m!6268758))

(assert (=> b!5221135 m!6267974))

(assert (=> b!5221135 m!6268758))

(assert (=> b!5221135 m!6267974))

(declare-fun m!6268760 () Bool)

(assert (=> b!5221135 m!6268760))

(assert (=> b!5221137 m!6267978))

(assert (=> b!5221138 m!6267974))

(assert (=> b!5221138 m!6267974))

(assert (=> b!5221138 m!6267976))

(assert (=> b!5221126 m!6268356))

(assert (=> d!1683285 m!6267972))

(assert (=> d!1683285 m!6268360))

(assert (=> bm!368487 m!6267972))

(assert (=> b!5219985 d!1683285))

(declare-fun d!1683287 () Bool)

(declare-fun c!901045 () Bool)

(assert (=> d!1683287 (= c!901045 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249819 () Bool)

(assert (=> d!1683287 (= (matchZipper!1054 (derivationStepZipper!1078 (set.union lt!2143415 lt!2143401) (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249819)))

(declare-fun b!5221140 () Bool)

(assert (=> b!5221140 (= e!3249819 (nullableZipper!1234 (derivationStepZipper!1078 (set.union lt!2143415 lt!2143401) (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5221141 () Bool)

(assert (=> b!5221141 (= e!3249819 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 (set.union lt!2143415 lt!2143401) (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683287 c!901045) b!5221140))

(assert (= (and d!1683287 (not c!901045)) b!5221141))

(assert (=> d!1683287 m!6267798))

(assert (=> d!1683287 m!6268566))

(assert (=> b!5221140 m!6268030))

(declare-fun m!6268762 () Bool)

(assert (=> b!5221140 m!6268762))

(assert (=> b!5221141 m!6267798))

(assert (=> b!5221141 m!6268570))

(assert (=> b!5221141 m!6268030))

(assert (=> b!5221141 m!6268570))

(declare-fun m!6268764 () Bool)

(assert (=> b!5221141 m!6268764))

(assert (=> b!5221141 m!6267798))

(assert (=> b!5221141 m!6268574))

(assert (=> b!5221141 m!6268764))

(assert (=> b!5221141 m!6268574))

(declare-fun m!6268766 () Bool)

(assert (=> b!5221141 m!6268766))

(assert (=> b!5220261 d!1683287))

(declare-fun bs!1212449 () Bool)

(declare-fun d!1683289 () Bool)

(assert (= bs!1212449 (and d!1683289 d!1683185)))

(declare-fun lambda!262031 () Int)

(assert (=> bs!1212449 (= lambda!262031 lambda!262019)))

(declare-fun bs!1212450 () Bool)

(assert (= bs!1212450 (and d!1683289 d!1683213)))

(assert (=> bs!1212450 (= lambda!262031 lambda!262020)))

(declare-fun bs!1212451 () Bool)

(assert (= bs!1212451 (and d!1683289 d!1683253)))

(assert (=> bs!1212451 (= lambda!262031 lambda!262028)))

(declare-fun bs!1212452 () Bool)

(assert (= bs!1212452 (and d!1683289 d!1683239)))

(assert (=> bs!1212452 (= lambda!262031 lambda!262025)))

(declare-fun bs!1212453 () Bool)

(assert (= bs!1212453 (and d!1683289 b!5219789)))

(assert (=> bs!1212453 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262031 lambda!261934))))

(assert (=> d!1683289 true))

(assert (=> d!1683289 (= (derivationStepZipper!1078 (set.union lt!2143415 lt!2143401) (head!11188 (t!373900 s!2326))) (flatMap!537 (set.union lt!2143415 lt!2143401) lambda!262031))))

(declare-fun bs!1212454 () Bool)

(assert (= bs!1212454 d!1683289))

(declare-fun m!6268768 () Bool)

(assert (=> bs!1212454 m!6268768))

(assert (=> b!5220261 d!1683289))

(assert (=> b!5220261 d!1683187))

(assert (=> b!5220261 d!1683189))

(assert (=> b!5220208 d!1683147))

(assert (=> d!1682971 d!1683137))

(declare-fun d!1683291 () Bool)

(declare-fun c!901046 () Bool)

(assert (=> d!1683291 (= c!901046 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249820 () Bool)

(assert (=> d!1683291 (= (matchZipper!1054 (derivationStepZipper!1078 lt!2143415 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249820)))

(declare-fun b!5221142 () Bool)

(assert (=> b!5221142 (= e!3249820 (nullableZipper!1234 (derivationStepZipper!1078 lt!2143415 (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5221143 () Bool)

(assert (=> b!5221143 (= e!3249820 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 lt!2143415 (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683291 c!901046) b!5221142))

(assert (= (and d!1683291 (not c!901046)) b!5221143))

(assert (=> d!1683291 m!6267798))

(assert (=> d!1683291 m!6268566))

(assert (=> b!5221142 m!6267868))

(declare-fun m!6268770 () Bool)

(assert (=> b!5221142 m!6268770))

(assert (=> b!5221143 m!6267798))

(assert (=> b!5221143 m!6268570))

(assert (=> b!5221143 m!6267868))

(assert (=> b!5221143 m!6268570))

(declare-fun m!6268772 () Bool)

(assert (=> b!5221143 m!6268772))

(assert (=> b!5221143 m!6267798))

(assert (=> b!5221143 m!6268574))

(assert (=> b!5221143 m!6268772))

(assert (=> b!5221143 m!6268574))

(declare-fun m!6268774 () Bool)

(assert (=> b!5221143 m!6268774))

(assert (=> b!5220007 d!1683291))

(declare-fun bs!1212455 () Bool)

(declare-fun d!1683293 () Bool)

(assert (= bs!1212455 (and d!1683293 d!1683185)))

(declare-fun lambda!262032 () Int)

(assert (=> bs!1212455 (= lambda!262032 lambda!262019)))

(declare-fun bs!1212456 () Bool)

(assert (= bs!1212456 (and d!1683293 d!1683213)))

(assert (=> bs!1212456 (= lambda!262032 lambda!262020)))

(declare-fun bs!1212457 () Bool)

(assert (= bs!1212457 (and d!1683293 d!1683253)))

(assert (=> bs!1212457 (= lambda!262032 lambda!262028)))

(declare-fun bs!1212458 () Bool)

(assert (= bs!1212458 (and d!1683293 d!1683289)))

(assert (=> bs!1212458 (= lambda!262032 lambda!262031)))

(declare-fun bs!1212459 () Bool)

(assert (= bs!1212459 (and d!1683293 d!1683239)))

(assert (=> bs!1212459 (= lambda!262032 lambda!262025)))

(declare-fun bs!1212460 () Bool)

(assert (= bs!1212460 (and d!1683293 b!5219789)))

(assert (=> bs!1212460 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262032 lambda!261934))))

(assert (=> d!1683293 true))

(assert (=> d!1683293 (= (derivationStepZipper!1078 lt!2143415 (head!11188 (t!373900 s!2326))) (flatMap!537 lt!2143415 lambda!262032))))

(declare-fun bs!1212461 () Bool)

(assert (= bs!1212461 d!1683293))

(declare-fun m!6268776 () Bool)

(assert (=> bs!1212461 m!6268776))

(assert (=> b!5220007 d!1683293))

(assert (=> b!5220007 d!1683187))

(assert (=> b!5220007 d!1683189))

(declare-fun d!1683295 () Bool)

(assert (=> d!1683295 (= (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))) (nullableFct!1386 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun bs!1212462 () Bool)

(assert (= bs!1212462 d!1683295))

(declare-fun m!6268778 () Bool)

(assert (=> bs!1212462 m!6268778))

(assert (=> b!5220107 d!1683295))

(declare-fun bs!1212463 () Bool)

(declare-fun d!1683297 () Bool)

(assert (= bs!1212463 (and d!1683297 d!1683101)))

(declare-fun lambda!262033 () Int)

(assert (=> bs!1212463 (= lambda!262033 lambda!262009)))

(declare-fun bs!1212464 () Bool)

(assert (= bs!1212464 (and d!1683297 d!1683263)))

(assert (=> bs!1212464 (= lambda!262033 lambda!262029)))

(declare-fun bs!1212465 () Bool)

(assert (= bs!1212465 (and d!1683297 d!1683125)))

(assert (=> bs!1212465 (= lambda!262033 lambda!262014)))

(declare-fun bs!1212466 () Bool)

(assert (= bs!1212466 (and d!1683297 d!1683103)))

(assert (=> bs!1212466 (= lambda!262033 lambda!262010)))

(declare-fun bs!1212467 () Bool)

(assert (= bs!1212467 (and d!1683297 d!1683271)))

(assert (=> bs!1212467 (= lambda!262033 lambda!262030)))

(assert (=> d!1683297 (= (nullableZipper!1234 lt!2143401) (exists!1970 lt!2143401 lambda!262033))))

(declare-fun bs!1212468 () Bool)

(assert (= bs!1212468 d!1683297))

(declare-fun m!6268780 () Bool)

(assert (=> bs!1212468 m!6268780))

(assert (=> b!5220002 d!1683297))

(declare-fun d!1683299 () Bool)

(declare-fun c!901047 () Bool)

(assert (=> d!1683299 (= c!901047 (isEmpty!32527 (tail!10285 (t!373900 s!2326))))))

(declare-fun e!3249821 () Bool)

(assert (=> d!1683299 (= (matchZipper!1054 (derivationStepZipper!1078 lt!2143418 (head!11188 (t!373900 s!2326))) (tail!10285 (t!373900 s!2326))) e!3249821)))

(declare-fun b!5221144 () Bool)

(assert (=> b!5221144 (= e!3249821 (nullableZipper!1234 (derivationStepZipper!1078 lt!2143418 (head!11188 (t!373900 s!2326)))))))

(declare-fun b!5221145 () Bool)

(assert (=> b!5221145 (= e!3249821 (matchZipper!1054 (derivationStepZipper!1078 (derivationStepZipper!1078 lt!2143418 (head!11188 (t!373900 s!2326))) (head!11188 (tail!10285 (t!373900 s!2326)))) (tail!10285 (tail!10285 (t!373900 s!2326)))))))

(assert (= (and d!1683299 c!901047) b!5221144))

(assert (= (and d!1683299 (not c!901047)) b!5221145))

(assert (=> d!1683299 m!6267798))

(assert (=> d!1683299 m!6268566))

(assert (=> b!5221144 m!6267796))

(declare-fun m!6268782 () Bool)

(assert (=> b!5221144 m!6268782))

(assert (=> b!5221145 m!6267798))

(assert (=> b!5221145 m!6268570))

(assert (=> b!5221145 m!6267796))

(assert (=> b!5221145 m!6268570))

(declare-fun m!6268784 () Bool)

(assert (=> b!5221145 m!6268784))

(assert (=> b!5221145 m!6267798))

(assert (=> b!5221145 m!6268574))

(assert (=> b!5221145 m!6268784))

(assert (=> b!5221145 m!6268574))

(declare-fun m!6268786 () Bool)

(assert (=> b!5221145 m!6268786))

(assert (=> b!5219958 d!1683299))

(declare-fun bs!1212469 () Bool)

(declare-fun d!1683301 () Bool)

(assert (= bs!1212469 (and d!1683301 d!1683185)))

(declare-fun lambda!262034 () Int)

(assert (=> bs!1212469 (= lambda!262034 lambda!262019)))

(declare-fun bs!1212470 () Bool)

(assert (= bs!1212470 (and d!1683301 d!1683213)))

(assert (=> bs!1212470 (= lambda!262034 lambda!262020)))

(declare-fun bs!1212471 () Bool)

(assert (= bs!1212471 (and d!1683301 d!1683253)))

(assert (=> bs!1212471 (= lambda!262034 lambda!262028)))

(declare-fun bs!1212472 () Bool)

(assert (= bs!1212472 (and d!1683301 d!1683289)))

(assert (=> bs!1212472 (= lambda!262034 lambda!262031)))

(declare-fun bs!1212473 () Bool)

(assert (= bs!1212473 (and d!1683301 d!1683239)))

(assert (=> bs!1212473 (= lambda!262034 lambda!262025)))

(declare-fun bs!1212474 () Bool)

(assert (= bs!1212474 (and d!1683301 d!1683293)))

(assert (=> bs!1212474 (= lambda!262034 lambda!262032)))

(declare-fun bs!1212475 () Bool)

(assert (= bs!1212475 (and d!1683301 b!5219789)))

(assert (=> bs!1212475 (= (= (head!11188 (t!373900 s!2326)) (h!67054 s!2326)) (= lambda!262034 lambda!261934))))

(assert (=> d!1683301 true))

(assert (=> d!1683301 (= (derivationStepZipper!1078 lt!2143418 (head!11188 (t!373900 s!2326))) (flatMap!537 lt!2143418 lambda!262034))))

(declare-fun bs!1212476 () Bool)

(assert (= bs!1212476 d!1683301))

(declare-fun m!6268788 () Bool)

(assert (=> bs!1212476 m!6268788))

(assert (=> b!5219958 d!1683301))

(assert (=> b!5219958 d!1683187))

(assert (=> b!5219958 d!1683189))

(assert (=> d!1682905 d!1683137))

(declare-fun d!1683303 () Bool)

(assert (=> d!1683303 (= (isEmpty!32524 (unfocusZipperList!252 zl!343)) (is-Nil!60605 (unfocusZipperList!252 zl!343)))))

(assert (=> b!5220252 d!1683303))

(declare-fun b!5221146 () Bool)

(declare-fun e!3249822 () (Set Context!8388))

(declare-fun call!368498 () (Set Context!8388))

(assert (=> b!5221146 (= e!3249822 call!368498)))

(declare-fun bm!368488 () Bool)

(declare-fun call!368493 () (Set Context!8388))

(assert (=> bm!368488 (= call!368498 call!368493)))

(declare-fun b!5221147 () Bool)

(declare-fun e!3249827 () (Set Context!8388))

(assert (=> b!5221147 (= e!3249827 call!368498)))

(declare-fun b!5221148 () Bool)

(declare-fun e!3249823 () Bool)

(assert (=> b!5221148 (= e!3249823 (nullable!4979 (regOne!30132 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5221149 () Bool)

(declare-fun e!3249826 () (Set Context!8388))

(assert (=> b!5221149 (= e!3249826 (set.insert (ite c!900734 lt!2143408 (Context!8389 call!368294)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368489 () Bool)

(declare-fun call!368497 () List!60729)

(declare-fun call!368496 () List!60729)

(assert (=> bm!368489 (= call!368497 call!368496)))

(declare-fun b!5221150 () Bool)

(declare-fun e!3249824 () (Set Context!8388))

(declare-fun call!368495 () (Set Context!8388))

(assert (=> b!5221150 (= e!3249824 (set.union call!368495 call!368493))))

(declare-fun c!901051 () Bool)

(declare-fun c!901052 () Bool)

(declare-fun bm!368490 () Bool)

(assert (=> bm!368490 (= call!368496 ($colon$colon!1284 (exprs!4694 (ite c!900734 lt!2143408 (Context!8389 call!368294))) (ite (or c!901051 c!901052) (regTwo!30132 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5221151 () Bool)

(declare-fun e!3249825 () (Set Context!8388))

(declare-fun call!368494 () (Set Context!8388))

(assert (=> b!5221151 (= e!3249825 (set.union call!368495 call!368494))))

(declare-fun c!901048 () Bool)

(declare-fun bm!368491 () Bool)

(assert (=> bm!368491 (= call!368495 (derivationStepZipperDown!258 (ite c!901048 (regOne!30133 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (regOne!30132 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))) (ite c!901048 (ite c!900734 lt!2143408 (Context!8389 call!368294)) (Context!8389 call!368496)) (h!67054 s!2326)))))

(declare-fun b!5221152 () Bool)

(assert (=> b!5221152 (= e!3249822 (as set.empty (Set Context!8388)))))

(declare-fun b!5221153 () Bool)

(assert (=> b!5221153 (= e!3249826 e!3249825)))

(assert (=> b!5221153 (= c!901048 (is-Union!14810 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(declare-fun b!5221154 () Bool)

(declare-fun c!901050 () Bool)

(assert (=> b!5221154 (= c!901050 (is-Star!14810 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(assert (=> b!5221154 (= e!3249827 e!3249822)))

(declare-fun b!5221155 () Bool)

(assert (=> b!5221155 (= c!901051 e!3249823)))

(declare-fun res!2216981 () Bool)

(assert (=> b!5221155 (=> (not res!2216981) (not e!3249823))))

(assert (=> b!5221155 (= res!2216981 (is-Concat!23655 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(assert (=> b!5221155 (= e!3249825 e!3249824)))

(declare-fun d!1683305 () Bool)

(declare-fun c!901049 () Bool)

(assert (=> d!1683305 (= c!901049 (and (is-ElementMatch!14810 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (= (c!900678 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (h!67054 s!2326))))))

(assert (=> d!1683305 (= (derivationStepZipperDown!258 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))) (ite c!900734 lt!2143408 (Context!8389 call!368294)) (h!67054 s!2326)) e!3249826)))

(declare-fun bm!368492 () Bool)

(assert (=> bm!368492 (= call!368493 call!368494)))

(declare-fun b!5221156 () Bool)

(assert (=> b!5221156 (= e!3249824 e!3249827)))

(assert (=> b!5221156 (= c!901052 (is-Concat!23655 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))))))

(declare-fun bm!368493 () Bool)

(assert (=> bm!368493 (= call!368494 (derivationStepZipperDown!258 (ite c!901048 (regTwo!30133 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (ite c!901051 (regTwo!30132 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (ite c!901052 (regOne!30132 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292))))) (reg!15139 (ite c!900734 (regOne!30133 (regOne!30133 (regOne!30132 r!7292))) (regOne!30132 (regOne!30133 (regOne!30132 r!7292)))))))) (ite (or c!901048 c!901051) (ite c!900734 lt!2143408 (Context!8389 call!368294)) (Context!8389 call!368497)) (h!67054 s!2326)))))

(assert (= (and d!1683305 c!901049) b!5221149))

(assert (= (and d!1683305 (not c!901049)) b!5221153))

(assert (= (and b!5221153 c!901048) b!5221151))

(assert (= (and b!5221153 (not c!901048)) b!5221155))

(assert (= (and b!5221155 res!2216981) b!5221148))

(assert (= (and b!5221155 c!901051) b!5221150))

(assert (= (and b!5221155 (not c!901051)) b!5221156))

(assert (= (and b!5221156 c!901052) b!5221147))

(assert (= (and b!5221156 (not c!901052)) b!5221154))

(assert (= (and b!5221154 c!901050) b!5221146))

(assert (= (and b!5221154 (not c!901050)) b!5221152))

(assert (= (or b!5221147 b!5221146) bm!368489))

(assert (= (or b!5221147 b!5221146) bm!368488))

(assert (= (or b!5221150 bm!368489) bm!368490))

(assert (= (or b!5221150 bm!368488) bm!368492))

(assert (= (or b!5221151 bm!368492) bm!368493))

(assert (= (or b!5221151 b!5221150) bm!368491))

(declare-fun m!6268790 () Bool)

(assert (=> b!5221149 m!6268790))

(declare-fun m!6268792 () Bool)

(assert (=> b!5221148 m!6268792))

(declare-fun m!6268794 () Bool)

(assert (=> bm!368493 m!6268794))

(declare-fun m!6268796 () Bool)

(assert (=> bm!368490 m!6268796))

(declare-fun m!6268798 () Bool)

(assert (=> bm!368491 m!6268798))

(assert (=> bm!368289 d!1683305))

(declare-fun d!1683307 () Bool)

(assert (=> d!1683307 (= (Exists!1991 lambda!261957) (choose!38813 lambda!261957))))

(declare-fun bs!1212477 () Bool)

(assert (= bs!1212477 d!1683307))

(declare-fun m!6268800 () Bool)

(assert (=> bs!1212477 m!6268800))

(assert (=> d!1682893 d!1683307))

(declare-fun d!1683309 () Bool)

(assert (=> d!1683309 (= (Exists!1991 lambda!261958) (choose!38813 lambda!261958))))

(declare-fun bs!1212478 () Bool)

(assert (= bs!1212478 d!1683309))

(declare-fun m!6268802 () Bool)

(assert (=> bs!1212478 m!6268802))

(assert (=> d!1682893 d!1683309))

(declare-fun bs!1212479 () Bool)

(declare-fun d!1683311 () Bool)

(assert (= bs!1212479 (and d!1683311 b!5219795)))

(declare-fun lambda!262039 () Int)

(assert (=> bs!1212479 (not (= lambda!262039 lambda!261933))))

(declare-fun bs!1212480 () Bool)

(assert (= bs!1212480 (and d!1683311 d!1682897)))

(assert (=> bs!1212480 (= lambda!262039 lambda!261961)))

(assert (=> bs!1212479 (= lambda!262039 lambda!261932)))

(declare-fun bs!1212481 () Bool)

(assert (= bs!1212481 (and d!1683311 b!5221078)))

(assert (=> bs!1212481 (not (= lambda!262039 lambda!262027))))

(declare-fun bs!1212482 () Bool)

(assert (= bs!1212482 (and d!1683311 b!5220992)))

(assert (=> bs!1212482 (not (= lambda!262039 lambda!262022))))

(declare-fun bs!1212483 () Bool)

(assert (= bs!1212483 (and d!1683311 b!5220165)))

(assert (=> bs!1212483 (not (= lambda!262039 lambda!261971))))

(declare-fun bs!1212484 () Bool)

(assert (= bs!1212484 (and d!1683311 b!5221075)))

(assert (=> bs!1212484 (not (= lambda!262039 lambda!262026))))

(declare-fun bs!1212485 () Bool)

(assert (= bs!1212485 (and d!1683311 b!5220995)))

(assert (=> bs!1212485 (not (= lambda!262039 lambda!262023))))

(declare-fun bs!1212486 () Bool)

(assert (= bs!1212486 (and d!1683311 d!1682893)))

(assert (=> bs!1212486 (not (= lambda!262039 lambda!261958))))

(declare-fun bs!1212487 () Bool)

(assert (= bs!1212487 (and d!1683311 d!1683111)))

(assert (=> bs!1212487 (= lambda!262039 lambda!262013)))

(declare-fun bs!1212488 () Bool)

(assert (= bs!1212488 (and d!1683311 b!5220162)))

(assert (=> bs!1212488 (not (= lambda!262039 lambda!261970))))

(assert (=> bs!1212486 (= lambda!262039 lambda!261957)))

(assert (=> d!1683311 true))

(assert (=> d!1683311 true))

(assert (=> d!1683311 true))

(declare-fun bs!1212489 () Bool)

(assert (= bs!1212489 d!1683311))

(declare-fun lambda!262040 () Int)

(assert (=> bs!1212489 (not (= lambda!262040 lambda!262039))))

(assert (=> bs!1212479 (= lambda!262040 lambda!261933)))

(assert (=> bs!1212480 (not (= lambda!262040 lambda!261961))))

(assert (=> bs!1212479 (not (= lambda!262040 lambda!261932))))

(assert (=> bs!1212481 (= (and (= (regOne!30132 r!7292) (regOne!30132 (regOne!30133 r!7292))) (= (regTwo!30132 r!7292) (regTwo!30132 (regOne!30133 r!7292)))) (= lambda!262040 lambda!262027))))

(assert (=> bs!1212482 (not (= lambda!262040 lambda!262022))))

(assert (=> bs!1212483 (= lambda!262040 lambda!261971)))

(assert (=> bs!1212484 (not (= lambda!262040 lambda!262026))))

(assert (=> bs!1212485 (= (and (= (regOne!30132 r!7292) (regOne!30132 (regTwo!30133 r!7292))) (= (regTwo!30132 r!7292) (regTwo!30132 (regTwo!30133 r!7292)))) (= lambda!262040 lambda!262023))))

(assert (=> bs!1212486 (= lambda!262040 lambda!261958)))

(assert (=> bs!1212487 (not (= lambda!262040 lambda!262013))))

(assert (=> bs!1212488 (not (= lambda!262040 lambda!261970))))

(assert (=> bs!1212486 (not (= lambda!262040 lambda!261957))))

(assert (=> d!1683311 true))

(assert (=> d!1683311 true))

(assert (=> d!1683311 true))

(assert (=> d!1683311 (= (Exists!1991 lambda!262039) (Exists!1991 lambda!262040))))

(assert (=> d!1683311 true))

(declare-fun _$90!1018 () Unit!152510)

(assert (=> d!1683311 (= (choose!38814 (regOne!30132 r!7292) (regTwo!30132 r!7292) s!2326) _$90!1018)))

(declare-fun m!6268804 () Bool)

(assert (=> bs!1212489 m!6268804))

(declare-fun m!6268806 () Bool)

(assert (=> bs!1212489 m!6268806))

(assert (=> d!1682893 d!1683311))

(assert (=> d!1682893 d!1683107))

(declare-fun b!5221165 () Bool)

(declare-fun e!3249837 () Bool)

(declare-fun call!368501 () Bool)

(assert (=> b!5221165 (= e!3249837 call!368501)))

(declare-fun call!368499 () Bool)

(declare-fun bm!368494 () Bool)

(declare-fun c!901054 () Bool)

(assert (=> bm!368494 (= call!368499 (validRegex!6546 (ite c!901054 (regOne!30133 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))) (regOne!30132 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))))

(declare-fun b!5221166 () Bool)

(declare-fun e!3249832 () Bool)

(declare-fun e!3249833 () Bool)

(assert (=> b!5221166 (= e!3249832 e!3249833)))

(assert (=> b!5221166 (= c!901054 (is-Union!14810 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(declare-fun bm!368495 () Bool)

(declare-fun call!368500 () Bool)

(assert (=> bm!368495 (= call!368501 call!368500)))

(declare-fun d!1683313 () Bool)

(declare-fun res!2216994 () Bool)

(declare-fun e!3249834 () Bool)

(assert (=> d!1683313 (=> res!2216994 e!3249834)))

(assert (=> d!1683313 (= res!2216994 (is-ElementMatch!14810 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(assert (=> d!1683313 (= (validRegex!6546 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))) e!3249834)))

(declare-fun b!5221167 () Bool)

(assert (=> b!5221167 (= e!3249834 e!3249832)))

(declare-fun c!901053 () Bool)

(assert (=> b!5221167 (= c!901053 (is-Star!14810 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))

(declare-fun b!5221168 () Bool)

(declare-fun e!3249835 () Bool)

(assert (=> b!5221168 (= e!3249835 call!368500)))

(declare-fun b!5221169 () Bool)

(declare-fun e!3249838 () Bool)

(assert (=> b!5221169 (= e!3249838 call!368501)))

(declare-fun b!5221170 () Bool)

(assert (=> b!5221170 (= e!3249832 e!3249835)))

(declare-fun res!2216993 () Bool)

(assert (=> b!5221170 (= res!2216993 (not (nullable!4979 (reg!15139 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))))))))

(assert (=> b!5221170 (=> (not res!2216993) (not e!3249835))))

(declare-fun bm!368496 () Bool)

(assert (=> bm!368496 (= call!368500 (validRegex!6546 (ite c!901053 (reg!15139 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))) (ite c!901054 (regTwo!30133 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292)))))) (regTwo!30132 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))))))))))))

(declare-fun b!5221171 () Bool)

(declare-fun res!2216991 () Bool)

(declare-fun e!3249836 () Bool)

(assert (=> b!5221171 (=> res!2216991 e!3249836)))

(assert (=> b!5221171 (= res!2216991 (not (is-Concat!23655 (ite c!900785 (reg!15139 (regTwo!30133 (regOne!30132 r!7292))) (ite c!900786 (regTwo!30133 (regTwo!30133 (regOne!30132 r!7292))) (regTwo!30132 (regTwo!30133 (regOne!30132 r!7292))))))))))

(assert (=> b!5221171 (= e!3249833 e!3249836)))

(declare-fun b!5221172 () Bool)

(assert (=> b!5221172 (= e!3249836 e!3249837)))

(declare-fun res!2216992 () Bool)

(assert (=> b!5221172 (=> (not res!2216992) (not e!3249837))))

(assert (=> b!5221172 (= res!2216992 call!368499)))

(declare-fun b!5221173 () Bool)

(declare-fun res!2216990 () Bool)

(assert (=> b!5221173 (=> (not res!2216990) (not e!3249838))))

(assert (=> b!5221173 (= res!2216990 call!368499)))

(assert (=> b!5221173 (= e!3249833 e!3249838)))

(assert (= (and d!1683313 (not res!2216994)) b!5221167))

(assert (= (and b!5221167 c!901053) b!5221170))

(assert (= (and b!5221167 (not c!901053)) b!5221166))

(assert (= (and b!5221170 res!2216993) b!5221168))

(assert (= (and b!5221166 c!901054) b!5221173))

(assert (= (and b!5221166 (not c!901054)) b!5221171))

(assert (= (and b!5221173 res!2216990) b!5221169))

(assert (= (and b!5221171 (not res!2216991)) b!5221172))

(assert (= (and b!5221172 res!2216992) b!5221165))

(assert (= (or b!5221169 b!5221165) bm!368495))

(assert (= (or b!5221173 b!5221172) bm!368494))

(assert (= (or b!5221168 bm!368495) bm!368496))

(declare-fun m!6268808 () Bool)

(assert (=> bm!368494 m!6268808))

(declare-fun m!6268810 () Bool)

(assert (=> b!5221170 m!6268810))

(declare-fun m!6268812 () Bool)

(assert (=> bm!368496 m!6268812))

(assert (=> bm!368325 d!1683313))

(declare-fun d!1683315 () Bool)

(assert (=> d!1683315 (= (isEmpty!32524 (exprs!4694 (h!67055 zl!343))) (is-Nil!60605 (exprs!4694 (h!67055 zl!343))))))

(assert (=> b!5219940 d!1683315))

(declare-fun d!1683317 () Bool)

(assert (=> d!1683317 (= (nullable!4979 (h!67053 (exprs!4694 lt!2143405))) (nullableFct!1386 (h!67053 (exprs!4694 lt!2143405))))))

(declare-fun bs!1212490 () Bool)

(assert (= bs!1212490 d!1683317))

(declare-fun m!6268814 () Bool)

(assert (=> bs!1212490 m!6268814))

(assert (=> b!5220098 d!1683317))

(declare-fun b!5221174 () Bool)

(declare-fun e!3249839 () (Set Context!8388))

(declare-fun call!368507 () (Set Context!8388))

(assert (=> b!5221174 (= e!3249839 call!368507)))

(declare-fun bm!368497 () Bool)

(declare-fun call!368502 () (Set Context!8388))

(assert (=> bm!368497 (= call!368507 call!368502)))

(declare-fun b!5221175 () Bool)

(declare-fun e!3249844 () (Set Context!8388))

(assert (=> b!5221175 (= e!3249844 call!368507)))

(declare-fun b!5221176 () Bool)

(declare-fun e!3249840 () Bool)

(assert (=> b!5221176 (= e!3249840 (nullable!4979 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5221177 () Bool)

(declare-fun e!3249843 () (Set Context!8388))

(assert (=> b!5221177 (= e!3249843 (set.insert (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (as set.empty (Set Context!8388))))))

(declare-fun bm!368498 () Bool)

(declare-fun call!368506 () List!60729)

(declare-fun call!368505 () List!60729)

(assert (=> bm!368498 (= call!368506 call!368505)))

(declare-fun b!5221178 () Bool)

(declare-fun e!3249841 () (Set Context!8388))

(declare-fun call!368504 () (Set Context!8388))

(assert (=> b!5221178 (= e!3249841 (set.union call!368504 call!368502))))

(declare-fun c!901059 () Bool)

(declare-fun bm!368499 () Bool)

(declare-fun c!901058 () Bool)

(assert (=> bm!368499 (= call!368505 ($colon$colon!1284 (exprs!4694 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343))))) (ite (or c!901058 c!901059) (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67053 (exprs!4694 (h!67055 zl!343))))))))

(declare-fun b!5221179 () Bool)

(declare-fun e!3249842 () (Set Context!8388))

(declare-fun call!368503 () (Set Context!8388))

(assert (=> b!5221179 (= e!3249842 (set.union call!368504 call!368503))))

(declare-fun bm!368500 () Bool)

(declare-fun c!901055 () Bool)

(assert (=> bm!368500 (= call!368504 (derivationStepZipperDown!258 (ite c!901055 (regOne!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343))))) (ite c!901055 (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (Context!8389 call!368505)) (h!67054 s!2326)))))

(declare-fun b!5221180 () Bool)

(assert (=> b!5221180 (= e!3249839 (as set.empty (Set Context!8388)))))

(declare-fun b!5221181 () Bool)

(assert (=> b!5221181 (= e!3249843 e!3249842)))

(assert (=> b!5221181 (= c!901055 (is-Union!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5221182 () Bool)

(declare-fun c!901057 () Bool)

(assert (=> b!5221182 (= c!901057 (is-Star!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5221182 (= e!3249844 e!3249839)))

(declare-fun b!5221183 () Bool)

(assert (=> b!5221183 (= c!901058 e!3249840)))

(declare-fun res!2216995 () Bool)

(assert (=> b!5221183 (=> (not res!2216995) (not e!3249840))))

(assert (=> b!5221183 (= res!2216995 (is-Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> b!5221183 (= e!3249842 e!3249841)))

(declare-fun d!1683319 () Bool)

(declare-fun c!901056 () Bool)

(assert (=> d!1683319 (= c!901056 (and (is-ElementMatch!14810 (h!67053 (exprs!4694 (h!67055 zl!343)))) (= (c!900678 (h!67053 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326))))))

(assert (=> d!1683319 (= (derivationStepZipperDown!258 (h!67053 (exprs!4694 (h!67055 zl!343))) (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (h!67054 s!2326)) e!3249843)))

(declare-fun bm!368501 () Bool)

(assert (=> bm!368501 (= call!368502 call!368503)))

(declare-fun b!5221184 () Bool)

(assert (=> b!5221184 (= e!3249841 e!3249844)))

(assert (=> b!5221184 (= c!901059 (is-Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun bm!368502 () Bool)

(assert (=> bm!368502 (= call!368503 (derivationStepZipperDown!258 (ite c!901055 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!901058 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!901059 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))) (ite (or c!901055 c!901058) (Context!8389 (t!373899 (exprs!4694 (h!67055 zl!343)))) (Context!8389 call!368506)) (h!67054 s!2326)))))

(assert (= (and d!1683319 c!901056) b!5221177))

(assert (= (and d!1683319 (not c!901056)) b!5221181))

(assert (= (and b!5221181 c!901055) b!5221179))

(assert (= (and b!5221181 (not c!901055)) b!5221183))

(assert (= (and b!5221183 res!2216995) b!5221176))

(assert (= (and b!5221183 c!901058) b!5221178))

(assert (= (and b!5221183 (not c!901058)) b!5221184))

(assert (= (and b!5221184 c!901059) b!5221175))

(assert (= (and b!5221184 (not c!901059)) b!5221182))

(assert (= (and b!5221182 c!901057) b!5221174))

(assert (= (and b!5221182 (not c!901057)) b!5221180))

(assert (= (or b!5221175 b!5221174) bm!368498))

(assert (= (or b!5221175 b!5221174) bm!368497))

(assert (= (or b!5221178 bm!368498) bm!368499))

(assert (= (or b!5221178 bm!368497) bm!368501))

(assert (= (or b!5221179 bm!368501) bm!368502))

(assert (= (or b!5221179 b!5221178) bm!368500))

(declare-fun m!6268816 () Bool)

(assert (=> b!5221177 m!6268816))

(assert (=> b!5221176 m!6267946))

(declare-fun m!6268818 () Bool)

(assert (=> bm!368502 m!6268818))

(declare-fun m!6268820 () Bool)

(assert (=> bm!368499 m!6268820))

(declare-fun m!6268822 () Bool)

(assert (=> bm!368500 m!6268822))

(assert (=> bm!368313 d!1683319))

(assert (=> b!5220259 d!1682901))

(assert (=> d!1682889 d!1683223))

(declare-fun b!5221185 () Bool)

(declare-fun e!3249847 () Bool)

(assert (=> b!5221185 (= e!3249847 (nullable!4979 (regOne!30132 r!7292)))))

(declare-fun d!1683321 () Bool)

(declare-fun e!3249846 () Bool)

(assert (=> d!1683321 e!3249846))

(declare-fun c!901061 () Bool)

(assert (=> d!1683321 (= c!901061 (is-EmptyExpr!14810 (regOne!30132 r!7292)))))

(declare-fun lt!2143621 () Bool)

(assert (=> d!1683321 (= lt!2143621 e!3249847)))

(declare-fun c!901062 () Bool)

(assert (=> d!1683321 (= c!901062 (isEmpty!32527 Nil!60606))))

(assert (=> d!1683321 (validRegex!6546 (regOne!30132 r!7292))))

(assert (=> d!1683321 (= (matchR!6995 (regOne!30132 r!7292) Nil!60606) lt!2143621)))

(declare-fun b!5221186 () Bool)

(declare-fun res!2217003 () Bool)

(declare-fun e!3249849 () Bool)

(assert (=> b!5221186 (=> res!2217003 e!3249849)))

(assert (=> b!5221186 (= res!2217003 (not (isEmpty!32527 (tail!10285 Nil!60606))))))

(declare-fun b!5221187 () Bool)

(declare-fun res!2216997 () Bool)

(declare-fun e!3249850 () Bool)

(assert (=> b!5221187 (=> (not res!2216997) (not e!3249850))))

(declare-fun call!368508 () Bool)

(assert (=> b!5221187 (= res!2216997 (not call!368508))))

(declare-fun b!5221188 () Bool)

(declare-fun res!2216996 () Bool)

(declare-fun e!3249851 () Bool)

(assert (=> b!5221188 (=> res!2216996 e!3249851)))

(assert (=> b!5221188 (= res!2216996 e!3249850)))

(declare-fun res!2217001 () Bool)

(assert (=> b!5221188 (=> (not res!2217001) (not e!3249850))))

(assert (=> b!5221188 (= res!2217001 lt!2143621)))

(declare-fun b!5221189 () Bool)

(declare-fun res!2216998 () Bool)

(assert (=> b!5221189 (=> res!2216998 e!3249851)))

(assert (=> b!5221189 (= res!2216998 (not (is-ElementMatch!14810 (regOne!30132 r!7292))))))

(declare-fun e!3249845 () Bool)

(assert (=> b!5221189 (= e!3249845 e!3249851)))

(declare-fun b!5221190 () Bool)

(declare-fun e!3249848 () Bool)

(assert (=> b!5221190 (= e!3249851 e!3249848)))

(declare-fun res!2217000 () Bool)

(assert (=> b!5221190 (=> (not res!2217000) (not e!3249848))))

(assert (=> b!5221190 (= res!2217000 (not lt!2143621))))

(declare-fun b!5221191 () Bool)

(assert (=> b!5221191 (= e!3249846 e!3249845)))

(declare-fun c!901060 () Bool)

(assert (=> b!5221191 (= c!901060 (is-EmptyLang!14810 (regOne!30132 r!7292)))))

(declare-fun b!5221192 () Bool)

(assert (=> b!5221192 (= e!3249845 (not lt!2143621))))

(declare-fun b!5221193 () Bool)

(assert (=> b!5221193 (= e!3249848 e!3249849)))

(declare-fun res!2217002 () Bool)

(assert (=> b!5221193 (=> res!2217002 e!3249849)))

(assert (=> b!5221193 (= res!2217002 call!368508)))

(declare-fun b!5221194 () Bool)

(assert (=> b!5221194 (= e!3249847 (matchR!6995 (derivativeStep!4056 (regOne!30132 r!7292) (head!11188 Nil!60606)) (tail!10285 Nil!60606)))))

(declare-fun bm!368503 () Bool)

(assert (=> bm!368503 (= call!368508 (isEmpty!32527 Nil!60606))))

(declare-fun b!5221195 () Bool)

(assert (=> b!5221195 (= e!3249846 (= lt!2143621 call!368508))))

(declare-fun b!5221196 () Bool)

(assert (=> b!5221196 (= e!3249849 (not (= (head!11188 Nil!60606) (c!900678 (regOne!30132 r!7292)))))))

(declare-fun b!5221197 () Bool)

(declare-fun res!2216999 () Bool)

(assert (=> b!5221197 (=> (not res!2216999) (not e!3249850))))

(assert (=> b!5221197 (= res!2216999 (isEmpty!32527 (tail!10285 Nil!60606)))))

(declare-fun b!5221198 () Bool)

(assert (=> b!5221198 (= e!3249850 (= (head!11188 Nil!60606) (c!900678 (regOne!30132 r!7292))))))

(assert (= (and d!1683321 c!901062) b!5221185))

(assert (= (and d!1683321 (not c!901062)) b!5221194))

(assert (= (and d!1683321 c!901061) b!5221195))

(assert (= (and d!1683321 (not c!901061)) b!5221191))

(assert (= (and b!5221191 c!901060) b!5221192))

(assert (= (and b!5221191 (not c!901060)) b!5221189))

(assert (= (and b!5221189 (not res!2216998)) b!5221188))

(assert (= (and b!5221188 res!2217001) b!5221187))

(assert (= (and b!5221187 res!2216997) b!5221197))

(assert (= (and b!5221197 res!2216999) b!5221198))

(assert (= (and b!5221188 (not res!2216996)) b!5221190))

(assert (= (and b!5221190 res!2217000) b!5221193))

(assert (= (and b!5221193 (not res!2217002)) b!5221186))

(assert (= (and b!5221186 (not res!2217003)) b!5221196))

(assert (= (or b!5221195 b!5221187 b!5221193) bm!368503))

(declare-fun m!6268824 () Bool)

(assert (=> b!5221186 m!6268824))

(assert (=> b!5221186 m!6268824))

(declare-fun m!6268826 () Bool)

(assert (=> b!5221186 m!6268826))

(declare-fun m!6268828 () Bool)

(assert (=> b!5221198 m!6268828))

(assert (=> b!5221194 m!6268828))

(assert (=> b!5221194 m!6268828))

(declare-fun m!6268830 () Bool)

(assert (=> b!5221194 m!6268830))

(assert (=> b!5221194 m!6268824))

(assert (=> b!5221194 m!6268830))

(assert (=> b!5221194 m!6268824))

(declare-fun m!6268832 () Bool)

(assert (=> b!5221194 m!6268832))

(assert (=> b!5221196 m!6268828))

(assert (=> b!5221197 m!6268824))

(assert (=> b!5221197 m!6268824))

(assert (=> b!5221197 m!6268826))

(assert (=> b!5221185 m!6268536))

(declare-fun m!6268834 () Bool)

(assert (=> d!1683321 m!6268834))

(assert (=> d!1683321 m!6267828))

(assert (=> bm!368503 m!6268834))

(assert (=> d!1682889 d!1683321))

(assert (=> d!1682889 d!1683107))

(assert (=> d!1682969 d!1682971))

(assert (=> d!1682969 d!1682905))

(declare-fun e!3249852 () Bool)

(declare-fun d!1683323 () Bool)

(assert (=> d!1683323 (= (matchZipper!1054 (set.union lt!2143415 lt!2143401) (t!373900 s!2326)) e!3249852)))

(declare-fun res!2217004 () Bool)

(assert (=> d!1683323 (=> res!2217004 e!3249852)))

(assert (=> d!1683323 (= res!2217004 (matchZipper!1054 lt!2143415 (t!373900 s!2326)))))

(assert (=> d!1683323 true))

(declare-fun _$48!829 () Unit!152510)

(assert (=> d!1683323 (= (choose!38812 lt!2143415 lt!2143401 (t!373900 s!2326)) _$48!829)))

(declare-fun b!5221199 () Bool)

(assert (=> b!5221199 (= e!3249852 (matchZipper!1054 lt!2143401 (t!373900 s!2326)))))

(assert (= (and d!1683323 (not res!2217004)) b!5221199))

(assert (=> d!1683323 m!6267650))

(assert (=> d!1683323 m!6267656))

(assert (=> b!5221199 m!6267606))

(assert (=> d!1682969 d!1683323))

(declare-fun d!1683325 () Bool)

(assert (=> d!1683325 (= (nullable!4979 r!7292) (nullableFct!1386 r!7292))))

(declare-fun bs!1212491 () Bool)

(assert (= bs!1212491 d!1683325))

(declare-fun m!6268836 () Bool)

(assert (=> bs!1212491 m!6268836))

(assert (=> b!5220197 d!1683325))

(declare-fun b!5221200 () Bool)

(declare-fun e!3249853 () (Set Context!8388))

(declare-fun call!368514 () (Set Context!8388))

(assert (=> b!5221200 (= e!3249853 call!368514)))

(declare-fun bm!368504 () Bool)

(declare-fun call!368509 () (Set Context!8388))

(assert (=> bm!368504 (= call!368514 call!368509)))

(declare-fun b!5221201 () Bool)

(declare-fun e!3249858 () (Set Context!8388))

(assert (=> b!5221201 (= e!3249858 call!368514)))

(declare-fun e!3249854 () Bool)

(declare-fun b!5221202 () Bool)

(assert (=> b!5221202 (= e!3249854 (nullable!4979 (regOne!30132 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))))))))

(declare-fun b!5221203 () Bool)

(declare-fun e!3249857 () (Set Context!8388))

(assert (=> b!5221203 (= e!3249857 (set.insert (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315)) (as set.empty (Set Context!8388))))))

(declare-fun bm!368505 () Bool)

(declare-fun call!368513 () List!60729)

(declare-fun call!368512 () List!60729)

(assert (=> bm!368505 (= call!368513 call!368512)))

(declare-fun b!5221204 () Bool)

(declare-fun e!3249855 () (Set Context!8388))

(declare-fun call!368511 () (Set Context!8388))

(assert (=> b!5221204 (= e!3249855 (set.union call!368511 call!368509))))

(declare-fun c!901066 () Bool)

(declare-fun bm!368506 () Bool)

(declare-fun c!901067 () Bool)

(assert (=> bm!368506 (= call!368512 ($colon$colon!1284 (exprs!4694 (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315))) (ite (or c!901066 c!901067) (regTwo!30132 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))))))))

(declare-fun b!5221205 () Bool)

(declare-fun e!3249856 () (Set Context!8388))

(declare-fun call!368510 () (Set Context!8388))

(assert (=> b!5221205 (= e!3249856 (set.union call!368511 call!368510))))

(declare-fun bm!368507 () Bool)

(declare-fun c!901063 () Bool)

(assert (=> bm!368507 (= call!368511 (derivationStepZipperDown!258 (ite c!901063 (regOne!30133 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (regOne!30132 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))))) (ite c!901063 (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315)) (Context!8389 call!368512)) (h!67054 s!2326)))))

(declare-fun b!5221206 () Bool)

(assert (=> b!5221206 (= e!3249853 (as set.empty (Set Context!8388)))))

(declare-fun b!5221207 () Bool)

(assert (=> b!5221207 (= e!3249857 e!3249856)))

(assert (=> b!5221207 (= c!901063 (is-Union!14810 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))))

(declare-fun c!901065 () Bool)

(declare-fun b!5221208 () Bool)

(assert (=> b!5221208 (= c!901065 (is-Star!14810 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))))

(assert (=> b!5221208 (= e!3249858 e!3249853)))

(declare-fun b!5221209 () Bool)

(assert (=> b!5221209 (= c!901066 e!3249854)))

(declare-fun res!2217005 () Bool)

(assert (=> b!5221209 (=> (not res!2217005) (not e!3249854))))

(assert (=> b!5221209 (= res!2217005 (is-Concat!23655 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))))

(assert (=> b!5221209 (= e!3249856 e!3249855)))

(declare-fun d!1683327 () Bool)

(declare-fun c!901064 () Bool)

(assert (=> d!1683327 (= c!901064 (and (is-ElementMatch!14810 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (= (c!900678 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (h!67054 s!2326))))))

(assert (=> d!1683327 (= (derivationStepZipperDown!258 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))) (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315)) (h!67054 s!2326)) e!3249857)))

(declare-fun bm!368508 () Bool)

(assert (=> bm!368508 (= call!368509 call!368510)))

(declare-fun b!5221210 () Bool)

(assert (=> b!5221210 (= e!3249855 e!3249858)))

(assert (=> b!5221210 (= c!901067 (is-Concat!23655 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))))))

(declare-fun bm!368509 () Bool)

(assert (=> bm!368509 (= call!368510 (derivationStepZipperDown!258 (ite c!901063 (regTwo!30133 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (ite c!901066 (regTwo!30132 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (ite c!901067 (regOne!30132 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343)))))))) (reg!15139 (ite c!900755 (regTwo!30133 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900758 (regTwo!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (ite c!900759 (regOne!30132 (h!67053 (exprs!4694 (h!67055 zl!343)))) (reg!15139 (h!67053 (exprs!4694 (h!67055 zl!343))))))))))) (ite (or c!901063 c!901066) (ite (or c!900755 c!900758) lt!2143408 (Context!8389 call!368315)) (Context!8389 call!368513)) (h!67054 s!2326)))))

(assert (= (and d!1683327 c!901064) b!5221203))

(assert (= (and d!1683327 (not c!901064)) b!5221207))

(assert (= (and b!5221207 c!901063) b!5221205))

(assert (= (and b!5221207 (not c!901063)) b!5221209))

(assert (= (and b!5221209 res!2217005) b!5221202))

(assert (= (and b!5221209 c!901066) b!5221204))

(assert (= (and b!5221209 (not c!901066)) b!5221210))

(assert (= (and b!5221210 c!901067) b!5221201))

(assert (= (and b!5221210 (not c!901067)) b!5221208))

(assert (= (and b!5221208 c!901065) b!5221200))

(assert (= (and b!5221208 (not c!901065)) b!5221206))

(assert (= (or b!5221201 b!5221200) bm!368505))

(assert (= (or b!5221201 b!5221200) bm!368504))

(assert (= (or b!5221204 bm!368505) bm!368506))

(assert (= (or b!5221204 bm!368504) bm!368508))

(assert (= (or b!5221205 bm!368508) bm!368509))

(assert (= (or b!5221205 b!5221204) bm!368507))

(declare-fun m!6268838 () Bool)

(assert (=> b!5221203 m!6268838))

(declare-fun m!6268840 () Bool)

(assert (=> b!5221202 m!6268840))

(declare-fun m!6268842 () Bool)

(assert (=> bm!368509 m!6268842))

(declare-fun m!6268844 () Bool)

(assert (=> bm!368506 m!6268844))

(declare-fun m!6268846 () Bool)

(assert (=> bm!368507 m!6268846))

(assert (=> bm!368311 d!1683327))

(declare-fun bs!1212492 () Bool)

(declare-fun d!1683329 () Bool)

(assert (= bs!1212492 (and d!1683329 d!1683101)))

(declare-fun lambda!262041 () Int)

(assert (=> bs!1212492 (= lambda!262041 lambda!262009)))

(declare-fun bs!1212493 () Bool)

(assert (= bs!1212493 (and d!1683329 d!1683297)))

(assert (=> bs!1212493 (= lambda!262041 lambda!262033)))

(declare-fun bs!1212494 () Bool)

(assert (= bs!1212494 (and d!1683329 d!1683263)))

(assert (=> bs!1212494 (= lambda!262041 lambda!262029)))

(declare-fun bs!1212495 () Bool)

(assert (= bs!1212495 (and d!1683329 d!1683125)))

(assert (=> bs!1212495 (= lambda!262041 lambda!262014)))

(declare-fun bs!1212496 () Bool)

(assert (= bs!1212496 (and d!1683329 d!1683103)))

(assert (=> bs!1212496 (= lambda!262041 lambda!262010)))

(declare-fun bs!1212497 () Bool)

(assert (= bs!1212497 (and d!1683329 d!1683271)))

(assert (=> bs!1212497 (= lambda!262041 lambda!262030)))

(assert (=> d!1683329 (= (nullableZipper!1234 (set.union lt!2143418 lt!2143401)) (exists!1970 (set.union lt!2143418 lt!2143401) lambda!262041))))

(declare-fun bs!1212498 () Bool)

(assert (= bs!1212498 d!1683329))

(declare-fun m!6268848 () Bool)

(assert (=> bs!1212498 m!6268848))

(assert (=> b!5219959 d!1683329))

(declare-fun d!1683331 () Bool)

(assert (=> d!1683331 (= (isEmpty!32524 (tail!10284 (unfocusZipperList!252 zl!343))) (is-Nil!60605 (tail!10284 (unfocusZipperList!252 zl!343))))))

(assert (=> b!5220248 d!1683331))

(declare-fun d!1683333 () Bool)

(assert (=> d!1683333 (= (tail!10284 (unfocusZipperList!252 zl!343)) (t!373899 (unfocusZipperList!252 zl!343)))))

(assert (=> b!5220248 d!1683333))

(declare-fun d!1683335 () Bool)

(declare-fun res!2217006 () Bool)

(declare-fun e!3249859 () Bool)

(assert (=> d!1683335 (=> res!2217006 e!3249859)))

(assert (=> d!1683335 (= res!2217006 (is-Nil!60605 (exprs!4694 (h!67055 zl!343))))))

(assert (=> d!1683335 (= (forall!14242 (exprs!4694 (h!67055 zl!343)) lambda!261964) e!3249859)))

(declare-fun b!5221211 () Bool)

(declare-fun e!3249860 () Bool)

(assert (=> b!5221211 (= e!3249859 e!3249860)))

(declare-fun res!2217007 () Bool)

(assert (=> b!5221211 (=> (not res!2217007) (not e!3249860))))

(assert (=> b!5221211 (= res!2217007 (dynLambda!23947 lambda!261964 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun b!5221212 () Bool)

(assert (=> b!5221212 (= e!3249860 (forall!14242 (t!373899 (exprs!4694 (h!67055 zl!343))) lambda!261964))))

(assert (= (and d!1683335 (not res!2217006)) b!5221211))

(assert (= (and b!5221211 res!2217007) b!5221212))

(declare-fun b_lambda!201879 () Bool)

(assert (=> (not b_lambda!201879) (not b!5221211)))

(declare-fun m!6268850 () Bool)

(assert (=> b!5221211 m!6268850))

(declare-fun m!6268852 () Bool)

(assert (=> b!5221212 m!6268852))

(assert (=> d!1682913 d!1683335))

(declare-fun b!5221214 () Bool)

(declare-fun e!3249861 () Bool)

(declare-fun tp!1463597 () Bool)

(declare-fun tp!1463600 () Bool)

(assert (=> b!5221214 (= e!3249861 (and tp!1463597 tp!1463600))))

(declare-fun b!5221216 () Bool)

(declare-fun tp!1463598 () Bool)

(declare-fun tp!1463596 () Bool)

(assert (=> b!5221216 (= e!3249861 (and tp!1463598 tp!1463596))))

(assert (=> b!5220277 (= tp!1463480 e!3249861)))

(declare-fun b!5221215 () Bool)

(declare-fun tp!1463599 () Bool)

(assert (=> b!5221215 (= e!3249861 tp!1463599)))

(declare-fun b!5221213 () Bool)

(assert (=> b!5221213 (= e!3249861 tp_is_empty!38873)))

(assert (= (and b!5220277 (is-ElementMatch!14810 (regOne!30132 (regTwo!30133 r!7292)))) b!5221213))

(assert (= (and b!5220277 (is-Concat!23655 (regOne!30132 (regTwo!30133 r!7292)))) b!5221214))

(assert (= (and b!5220277 (is-Star!14810 (regOne!30132 (regTwo!30133 r!7292)))) b!5221215))

(assert (= (and b!5220277 (is-Union!14810 (regOne!30132 (regTwo!30133 r!7292)))) b!5221216))

(declare-fun b!5221218 () Bool)

(declare-fun e!3249862 () Bool)

(declare-fun tp!1463602 () Bool)

(declare-fun tp!1463605 () Bool)

(assert (=> b!5221218 (= e!3249862 (and tp!1463602 tp!1463605))))

(declare-fun b!5221220 () Bool)

(declare-fun tp!1463603 () Bool)

(declare-fun tp!1463601 () Bool)

(assert (=> b!5221220 (= e!3249862 (and tp!1463603 tp!1463601))))

(assert (=> b!5220277 (= tp!1463483 e!3249862)))

(declare-fun b!5221219 () Bool)

(declare-fun tp!1463604 () Bool)

(assert (=> b!5221219 (= e!3249862 tp!1463604)))

(declare-fun b!5221217 () Bool)

(assert (=> b!5221217 (= e!3249862 tp_is_empty!38873)))

(assert (= (and b!5220277 (is-ElementMatch!14810 (regTwo!30132 (regTwo!30133 r!7292)))) b!5221217))

(assert (= (and b!5220277 (is-Concat!23655 (regTwo!30132 (regTwo!30133 r!7292)))) b!5221218))

(assert (= (and b!5220277 (is-Star!14810 (regTwo!30132 (regTwo!30133 r!7292)))) b!5221219))

(assert (= (and b!5220277 (is-Union!14810 (regTwo!30132 (regTwo!30133 r!7292)))) b!5221220))

(declare-fun b!5221222 () Bool)

(declare-fun e!3249863 () Bool)

(declare-fun tp!1463607 () Bool)

(declare-fun tp!1463610 () Bool)

(assert (=> b!5221222 (= e!3249863 (and tp!1463607 tp!1463610))))

(declare-fun b!5221224 () Bool)

(declare-fun tp!1463608 () Bool)

(declare-fun tp!1463606 () Bool)

(assert (=> b!5221224 (= e!3249863 (and tp!1463608 tp!1463606))))

(assert (=> b!5220278 (= tp!1463482 e!3249863)))

(declare-fun b!5221223 () Bool)

(declare-fun tp!1463609 () Bool)

(assert (=> b!5221223 (= e!3249863 tp!1463609)))

(declare-fun b!5221221 () Bool)

(assert (=> b!5221221 (= e!3249863 tp_is_empty!38873)))

(assert (= (and b!5220278 (is-ElementMatch!14810 (reg!15139 (regTwo!30133 r!7292)))) b!5221221))

(assert (= (and b!5220278 (is-Concat!23655 (reg!15139 (regTwo!30133 r!7292)))) b!5221222))

(assert (= (and b!5220278 (is-Star!14810 (reg!15139 (regTwo!30133 r!7292)))) b!5221223))

(assert (= (and b!5220278 (is-Union!14810 (reg!15139 (regTwo!30133 r!7292)))) b!5221224))

(declare-fun b!5221226 () Bool)

(declare-fun e!3249864 () Bool)

(declare-fun tp!1463612 () Bool)

(declare-fun tp!1463615 () Bool)

(assert (=> b!5221226 (= e!3249864 (and tp!1463612 tp!1463615))))

(declare-fun b!5221228 () Bool)

(declare-fun tp!1463613 () Bool)

(declare-fun tp!1463611 () Bool)

(assert (=> b!5221228 (= e!3249864 (and tp!1463613 tp!1463611))))

(assert (=> b!5220291 (= tp!1463495 e!3249864)))

(declare-fun b!5221227 () Bool)

(declare-fun tp!1463614 () Bool)

(assert (=> b!5221227 (= e!3249864 tp!1463614)))

(declare-fun b!5221225 () Bool)

(assert (=> b!5221225 (= e!3249864 tp_is_empty!38873)))

(assert (= (and b!5220291 (is-ElementMatch!14810 (reg!15139 (regOne!30132 r!7292)))) b!5221225))

(assert (= (and b!5220291 (is-Concat!23655 (reg!15139 (regOne!30132 r!7292)))) b!5221226))

(assert (= (and b!5220291 (is-Star!14810 (reg!15139 (regOne!30132 r!7292)))) b!5221227))

(assert (= (and b!5220291 (is-Union!14810 (reg!15139 (regOne!30132 r!7292)))) b!5221228))

(declare-fun b!5221230 () Bool)

(declare-fun e!3249865 () Bool)

(declare-fun tp!1463617 () Bool)

(declare-fun tp!1463620 () Bool)

(assert (=> b!5221230 (= e!3249865 (and tp!1463617 tp!1463620))))

(declare-fun b!5221232 () Bool)

(declare-fun tp!1463618 () Bool)

(declare-fun tp!1463616 () Bool)

(assert (=> b!5221232 (= e!3249865 (and tp!1463618 tp!1463616))))

(assert (=> b!5220292 (= tp!1463494 e!3249865)))

(declare-fun b!5221231 () Bool)

(declare-fun tp!1463619 () Bool)

(assert (=> b!5221231 (= e!3249865 tp!1463619)))

(declare-fun b!5221229 () Bool)

(assert (=> b!5221229 (= e!3249865 tp_is_empty!38873)))

(assert (= (and b!5220292 (is-ElementMatch!14810 (regOne!30133 (regOne!30132 r!7292)))) b!5221229))

(assert (= (and b!5220292 (is-Concat!23655 (regOne!30133 (regOne!30132 r!7292)))) b!5221230))

(assert (= (and b!5220292 (is-Star!14810 (regOne!30133 (regOne!30132 r!7292)))) b!5221231))

(assert (= (and b!5220292 (is-Union!14810 (regOne!30133 (regOne!30132 r!7292)))) b!5221232))

(declare-fun b!5221234 () Bool)

(declare-fun e!3249866 () Bool)

(declare-fun tp!1463622 () Bool)

(declare-fun tp!1463625 () Bool)

(assert (=> b!5221234 (= e!3249866 (and tp!1463622 tp!1463625))))

(declare-fun b!5221236 () Bool)

(declare-fun tp!1463623 () Bool)

(declare-fun tp!1463621 () Bool)

(assert (=> b!5221236 (= e!3249866 (and tp!1463623 tp!1463621))))

(assert (=> b!5220292 (= tp!1463492 e!3249866)))

(declare-fun b!5221235 () Bool)

(declare-fun tp!1463624 () Bool)

(assert (=> b!5221235 (= e!3249866 tp!1463624)))

(declare-fun b!5221233 () Bool)

(assert (=> b!5221233 (= e!3249866 tp_is_empty!38873)))

(assert (= (and b!5220292 (is-ElementMatch!14810 (regTwo!30133 (regOne!30132 r!7292)))) b!5221233))

(assert (= (and b!5220292 (is-Concat!23655 (regTwo!30133 (regOne!30132 r!7292)))) b!5221234))

(assert (= (and b!5220292 (is-Star!14810 (regTwo!30133 (regOne!30132 r!7292)))) b!5221235))

(assert (= (and b!5220292 (is-Union!14810 (regTwo!30133 (regOne!30132 r!7292)))) b!5221236))

(declare-fun b!5221237 () Bool)

(declare-fun e!3249867 () Bool)

(declare-fun tp!1463626 () Bool)

(assert (=> b!5221237 (= e!3249867 (and tp_is_empty!38873 tp!1463626))))

(assert (=> b!5220284 (= tp!1463486 e!3249867)))

(assert (= (and b!5220284 (is-Cons!60606 (t!373900 (t!373900 s!2326)))) b!5221237))

(declare-fun b!5221239 () Bool)

(declare-fun e!3249868 () Bool)

(declare-fun tp!1463628 () Bool)

(declare-fun tp!1463631 () Bool)

(assert (=> b!5221239 (= e!3249868 (and tp!1463628 tp!1463631))))

(declare-fun b!5221241 () Bool)

(declare-fun tp!1463629 () Bool)

(declare-fun tp!1463627 () Bool)

(assert (=> b!5221241 (= e!3249868 (and tp!1463629 tp!1463627))))

(assert (=> b!5220274 (= tp!1463477 e!3249868)))

(declare-fun b!5221240 () Bool)

(declare-fun tp!1463630 () Bool)

(assert (=> b!5221240 (= e!3249868 tp!1463630)))

(declare-fun b!5221238 () Bool)

(assert (=> b!5221238 (= e!3249868 tp_is_empty!38873)))

(assert (= (and b!5220274 (is-ElementMatch!14810 (reg!15139 (regOne!30133 r!7292)))) b!5221238))

(assert (= (and b!5220274 (is-Concat!23655 (reg!15139 (regOne!30133 r!7292)))) b!5221239))

(assert (= (and b!5220274 (is-Star!14810 (reg!15139 (regOne!30133 r!7292)))) b!5221240))

(assert (= (and b!5220274 (is-Union!14810 (reg!15139 (regOne!30133 r!7292)))) b!5221241))

(declare-fun b!5221243 () Bool)

(declare-fun e!3249869 () Bool)

(declare-fun tp!1463633 () Bool)

(declare-fun tp!1463636 () Bool)

(assert (=> b!5221243 (= e!3249869 (and tp!1463633 tp!1463636))))

(declare-fun b!5221245 () Bool)

(declare-fun tp!1463634 () Bool)

(declare-fun tp!1463632 () Bool)

(assert (=> b!5221245 (= e!3249869 (and tp!1463634 tp!1463632))))

(assert (=> b!5220275 (= tp!1463476 e!3249869)))

(declare-fun b!5221244 () Bool)

(declare-fun tp!1463635 () Bool)

(assert (=> b!5221244 (= e!3249869 tp!1463635)))

(declare-fun b!5221242 () Bool)

(assert (=> b!5221242 (= e!3249869 tp_is_empty!38873)))

(assert (= (and b!5220275 (is-ElementMatch!14810 (regOne!30133 (regOne!30133 r!7292)))) b!5221242))

(assert (= (and b!5220275 (is-Concat!23655 (regOne!30133 (regOne!30133 r!7292)))) b!5221243))

(assert (= (and b!5220275 (is-Star!14810 (regOne!30133 (regOne!30133 r!7292)))) b!5221244))

(assert (= (and b!5220275 (is-Union!14810 (regOne!30133 (regOne!30133 r!7292)))) b!5221245))

(declare-fun b!5221247 () Bool)

(declare-fun e!3249870 () Bool)

(declare-fun tp!1463638 () Bool)

(declare-fun tp!1463641 () Bool)

(assert (=> b!5221247 (= e!3249870 (and tp!1463638 tp!1463641))))

(declare-fun b!5221249 () Bool)

(declare-fun tp!1463639 () Bool)

(declare-fun tp!1463637 () Bool)

(assert (=> b!5221249 (= e!3249870 (and tp!1463639 tp!1463637))))

(assert (=> b!5220275 (= tp!1463474 e!3249870)))

(declare-fun b!5221248 () Bool)

(declare-fun tp!1463640 () Bool)

(assert (=> b!5221248 (= e!3249870 tp!1463640)))

(declare-fun b!5221246 () Bool)

(assert (=> b!5221246 (= e!3249870 tp_is_empty!38873)))

(assert (= (and b!5220275 (is-ElementMatch!14810 (regTwo!30133 (regOne!30133 r!7292)))) b!5221246))

(assert (= (and b!5220275 (is-Concat!23655 (regTwo!30133 (regOne!30133 r!7292)))) b!5221247))

(assert (= (and b!5220275 (is-Star!14810 (regTwo!30133 (regOne!30133 r!7292)))) b!5221248))

(assert (= (and b!5220275 (is-Union!14810 (regTwo!30133 (regOne!30133 r!7292)))) b!5221249))

(declare-fun b!5221251 () Bool)

(declare-fun e!3249871 () Bool)

(declare-fun tp!1463643 () Bool)

(declare-fun tp!1463646 () Bool)

(assert (=> b!5221251 (= e!3249871 (and tp!1463643 tp!1463646))))

(declare-fun b!5221253 () Bool)

(declare-fun tp!1463644 () Bool)

(declare-fun tp!1463642 () Bool)

(assert (=> b!5221253 (= e!3249871 (and tp!1463644 tp!1463642))))

(assert (=> b!5220290 (= tp!1463493 e!3249871)))

(declare-fun b!5221252 () Bool)

(declare-fun tp!1463645 () Bool)

(assert (=> b!5221252 (= e!3249871 tp!1463645)))

(declare-fun b!5221250 () Bool)

(assert (=> b!5221250 (= e!3249871 tp_is_empty!38873)))

(assert (= (and b!5220290 (is-ElementMatch!14810 (regOne!30132 (regOne!30132 r!7292)))) b!5221250))

(assert (= (and b!5220290 (is-Concat!23655 (regOne!30132 (regOne!30132 r!7292)))) b!5221251))

(assert (= (and b!5220290 (is-Star!14810 (regOne!30132 (regOne!30132 r!7292)))) b!5221252))

(assert (= (and b!5220290 (is-Union!14810 (regOne!30132 (regOne!30132 r!7292)))) b!5221253))

(declare-fun b!5221255 () Bool)

(declare-fun e!3249872 () Bool)

(declare-fun tp!1463648 () Bool)

(declare-fun tp!1463651 () Bool)

(assert (=> b!5221255 (= e!3249872 (and tp!1463648 tp!1463651))))

(declare-fun b!5221257 () Bool)

(declare-fun tp!1463649 () Bool)

(declare-fun tp!1463647 () Bool)

(assert (=> b!5221257 (= e!3249872 (and tp!1463649 tp!1463647))))

(assert (=> b!5220290 (= tp!1463496 e!3249872)))

(declare-fun b!5221256 () Bool)

(declare-fun tp!1463650 () Bool)

(assert (=> b!5221256 (= e!3249872 tp!1463650)))

(declare-fun b!5221254 () Bool)

(assert (=> b!5221254 (= e!3249872 tp_is_empty!38873)))

(assert (= (and b!5220290 (is-ElementMatch!14810 (regTwo!30132 (regOne!30132 r!7292)))) b!5221254))

(assert (= (and b!5220290 (is-Concat!23655 (regTwo!30132 (regOne!30132 r!7292)))) b!5221255))

(assert (= (and b!5220290 (is-Star!14810 (regTwo!30132 (regOne!30132 r!7292)))) b!5221256))

(assert (= (and b!5220290 (is-Union!14810 (regTwo!30132 (regOne!30132 r!7292)))) b!5221257))

(declare-fun b!5221259 () Bool)

(declare-fun e!3249873 () Bool)

(declare-fun tp!1463653 () Bool)

(declare-fun tp!1463656 () Bool)

(assert (=> b!5221259 (= e!3249873 (and tp!1463653 tp!1463656))))

(declare-fun b!5221261 () Bool)

(declare-fun tp!1463654 () Bool)

(declare-fun tp!1463652 () Bool)

(assert (=> b!5221261 (= e!3249873 (and tp!1463654 tp!1463652))))

(assert (=> b!5220310 (= tp!1463514 e!3249873)))

(declare-fun b!5221260 () Bool)

(declare-fun tp!1463655 () Bool)

(assert (=> b!5221260 (= e!3249873 tp!1463655)))

(declare-fun b!5221258 () Bool)

(assert (=> b!5221258 (= e!3249873 tp_is_empty!38873)))

(assert (= (and b!5220310 (is-ElementMatch!14810 (h!67053 (exprs!4694 (h!67055 zl!343))))) b!5221258))

(assert (= (and b!5220310 (is-Concat!23655 (h!67053 (exprs!4694 (h!67055 zl!343))))) b!5221259))

(assert (= (and b!5220310 (is-Star!14810 (h!67053 (exprs!4694 (h!67055 zl!343))))) b!5221260))

(assert (= (and b!5220310 (is-Union!14810 (h!67053 (exprs!4694 (h!67055 zl!343))))) b!5221261))

(declare-fun b!5221262 () Bool)

(declare-fun e!3249874 () Bool)

(declare-fun tp!1463657 () Bool)

(declare-fun tp!1463658 () Bool)

(assert (=> b!5221262 (= e!3249874 (and tp!1463657 tp!1463658))))

(assert (=> b!5220310 (= tp!1463515 e!3249874)))

(assert (= (and b!5220310 (is-Cons!60605 (t!373899 (exprs!4694 (h!67055 zl!343))))) b!5221262))

(declare-fun b!5221264 () Bool)

(declare-fun e!3249875 () Bool)

(declare-fun tp!1463660 () Bool)

(declare-fun tp!1463663 () Bool)

(assert (=> b!5221264 (= e!3249875 (and tp!1463660 tp!1463663))))

(declare-fun b!5221266 () Bool)

(declare-fun tp!1463661 () Bool)

(declare-fun tp!1463659 () Bool)

(assert (=> b!5221266 (= e!3249875 (and tp!1463661 tp!1463659))))

(assert (=> b!5220273 (= tp!1463475 e!3249875)))

(declare-fun b!5221265 () Bool)

(declare-fun tp!1463662 () Bool)

(assert (=> b!5221265 (= e!3249875 tp!1463662)))

(declare-fun b!5221263 () Bool)

(assert (=> b!5221263 (= e!3249875 tp_is_empty!38873)))

(assert (= (and b!5220273 (is-ElementMatch!14810 (regOne!30132 (regOne!30133 r!7292)))) b!5221263))

(assert (= (and b!5220273 (is-Concat!23655 (regOne!30132 (regOne!30133 r!7292)))) b!5221264))

(assert (= (and b!5220273 (is-Star!14810 (regOne!30132 (regOne!30133 r!7292)))) b!5221265))

(assert (= (and b!5220273 (is-Union!14810 (regOne!30132 (regOne!30133 r!7292)))) b!5221266))

(declare-fun b!5221268 () Bool)

(declare-fun e!3249876 () Bool)

(declare-fun tp!1463665 () Bool)

(declare-fun tp!1463668 () Bool)

(assert (=> b!5221268 (= e!3249876 (and tp!1463665 tp!1463668))))

(declare-fun b!5221270 () Bool)

(declare-fun tp!1463666 () Bool)

(declare-fun tp!1463664 () Bool)

(assert (=> b!5221270 (= e!3249876 (and tp!1463666 tp!1463664))))

(assert (=> b!5220273 (= tp!1463478 e!3249876)))

(declare-fun b!5221269 () Bool)

(declare-fun tp!1463667 () Bool)

(assert (=> b!5221269 (= e!3249876 tp!1463667)))

(declare-fun b!5221267 () Bool)

(assert (=> b!5221267 (= e!3249876 tp_is_empty!38873)))

(assert (= (and b!5220273 (is-ElementMatch!14810 (regTwo!30132 (regOne!30133 r!7292)))) b!5221267))

(assert (= (and b!5220273 (is-Concat!23655 (regTwo!30132 (regOne!30133 r!7292)))) b!5221268))

(assert (= (and b!5220273 (is-Star!14810 (regTwo!30132 (regOne!30133 r!7292)))) b!5221269))

(assert (= (and b!5220273 (is-Union!14810 (regTwo!30132 (regOne!30133 r!7292)))) b!5221270))

(declare-fun b!5221271 () Bool)

(declare-fun e!3249877 () Bool)

(declare-fun tp!1463669 () Bool)

(declare-fun tp!1463670 () Bool)

(assert (=> b!5221271 (= e!3249877 (and tp!1463669 tp!1463670))))

(assert (=> b!5220304 (= tp!1463506 e!3249877)))

(assert (= (and b!5220304 (is-Cons!60605 (exprs!4694 (h!67055 (t!373901 zl!343))))) b!5221271))

(declare-fun b!5221273 () Bool)

(declare-fun e!3249878 () Bool)

(declare-fun tp!1463672 () Bool)

(declare-fun tp!1463675 () Bool)

(assert (=> b!5221273 (= e!3249878 (and tp!1463672 tp!1463675))))

(declare-fun b!5221275 () Bool)

(declare-fun tp!1463673 () Bool)

(declare-fun tp!1463671 () Bool)

(assert (=> b!5221275 (= e!3249878 (and tp!1463673 tp!1463671))))

(assert (=> b!5220296 (= tp!1463499 e!3249878)))

(declare-fun b!5221274 () Bool)

(declare-fun tp!1463674 () Bool)

(assert (=> b!5221274 (= e!3249878 tp!1463674)))

(declare-fun b!5221272 () Bool)

(assert (=> b!5221272 (= e!3249878 tp_is_empty!38873)))

(assert (= (and b!5220296 (is-ElementMatch!14810 (regOne!30133 (regTwo!30132 r!7292)))) b!5221272))

(assert (= (and b!5220296 (is-Concat!23655 (regOne!30133 (regTwo!30132 r!7292)))) b!5221273))

(assert (= (and b!5220296 (is-Star!14810 (regOne!30133 (regTwo!30132 r!7292)))) b!5221274))

(assert (= (and b!5220296 (is-Union!14810 (regOne!30133 (regTwo!30132 r!7292)))) b!5221275))

(declare-fun b!5221277 () Bool)

(declare-fun e!3249879 () Bool)

(declare-fun tp!1463677 () Bool)

(declare-fun tp!1463680 () Bool)

(assert (=> b!5221277 (= e!3249879 (and tp!1463677 tp!1463680))))

(declare-fun b!5221279 () Bool)

(declare-fun tp!1463678 () Bool)

(declare-fun tp!1463676 () Bool)

(assert (=> b!5221279 (= e!3249879 (and tp!1463678 tp!1463676))))

(assert (=> b!5220296 (= tp!1463497 e!3249879)))

(declare-fun b!5221278 () Bool)

(declare-fun tp!1463679 () Bool)

(assert (=> b!5221278 (= e!3249879 tp!1463679)))

(declare-fun b!5221276 () Bool)

(assert (=> b!5221276 (= e!3249879 tp_is_empty!38873)))

(assert (= (and b!5220296 (is-ElementMatch!14810 (regTwo!30133 (regTwo!30132 r!7292)))) b!5221276))

(assert (= (and b!5220296 (is-Concat!23655 (regTwo!30133 (regTwo!30132 r!7292)))) b!5221277))

(assert (= (and b!5220296 (is-Star!14810 (regTwo!30133 (regTwo!30132 r!7292)))) b!5221278))

(assert (= (and b!5220296 (is-Union!14810 (regTwo!30133 (regTwo!30132 r!7292)))) b!5221279))

(declare-fun b!5221281 () Bool)

(declare-fun e!3249880 () Bool)

(declare-fun tp!1463682 () Bool)

(declare-fun tp!1463685 () Bool)

(assert (=> b!5221281 (= e!3249880 (and tp!1463682 tp!1463685))))

(declare-fun b!5221283 () Bool)

(declare-fun tp!1463683 () Bool)

(declare-fun tp!1463681 () Bool)

(assert (=> b!5221283 (= e!3249880 (and tp!1463683 tp!1463681))))

(assert (=> b!5220287 (= tp!1463490 e!3249880)))

(declare-fun b!5221282 () Bool)

(declare-fun tp!1463684 () Bool)

(assert (=> b!5221282 (= e!3249880 tp!1463684)))

(declare-fun b!5221280 () Bool)

(assert (=> b!5221280 (= e!3249880 tp_is_empty!38873)))

(assert (= (and b!5220287 (is-ElementMatch!14810 (reg!15139 (reg!15139 r!7292)))) b!5221280))

(assert (= (and b!5220287 (is-Concat!23655 (reg!15139 (reg!15139 r!7292)))) b!5221281))

(assert (= (and b!5220287 (is-Star!14810 (reg!15139 (reg!15139 r!7292)))) b!5221282))

(assert (= (and b!5220287 (is-Union!14810 (reg!15139 (reg!15139 r!7292)))) b!5221283))

(declare-fun b!5221285 () Bool)

(declare-fun e!3249881 () Bool)

(declare-fun tp!1463687 () Bool)

(declare-fun tp!1463690 () Bool)

(assert (=> b!5221285 (= e!3249881 (and tp!1463687 tp!1463690))))

(declare-fun b!5221287 () Bool)

(declare-fun tp!1463688 () Bool)

(declare-fun tp!1463686 () Bool)

(assert (=> b!5221287 (= e!3249881 (and tp!1463688 tp!1463686))))

(assert (=> b!5220309 (= tp!1463512 e!3249881)))

(declare-fun b!5221286 () Bool)

(declare-fun tp!1463689 () Bool)

(assert (=> b!5221286 (= e!3249881 tp!1463689)))

(declare-fun b!5221284 () Bool)

(assert (=> b!5221284 (= e!3249881 tp_is_empty!38873)))

(assert (= (and b!5220309 (is-ElementMatch!14810 (h!67053 (exprs!4694 setElem!33196)))) b!5221284))

(assert (= (and b!5220309 (is-Concat!23655 (h!67053 (exprs!4694 setElem!33196)))) b!5221285))

(assert (= (and b!5220309 (is-Star!14810 (h!67053 (exprs!4694 setElem!33196)))) b!5221286))

(assert (= (and b!5220309 (is-Union!14810 (h!67053 (exprs!4694 setElem!33196)))) b!5221287))

(declare-fun b!5221288 () Bool)

(declare-fun e!3249882 () Bool)

(declare-fun tp!1463691 () Bool)

(declare-fun tp!1463692 () Bool)

(assert (=> b!5221288 (= e!3249882 (and tp!1463691 tp!1463692))))

(assert (=> b!5220309 (= tp!1463513 e!3249882)))

(assert (= (and b!5220309 (is-Cons!60605 (t!373899 (exprs!4694 setElem!33196)))) b!5221288))

(declare-fun b!5221290 () Bool)

(declare-fun e!3249883 () Bool)

(declare-fun tp!1463694 () Bool)

(declare-fun tp!1463697 () Bool)

(assert (=> b!5221290 (= e!3249883 (and tp!1463694 tp!1463697))))

(declare-fun b!5221292 () Bool)

(declare-fun tp!1463695 () Bool)

(declare-fun tp!1463693 () Bool)

(assert (=> b!5221292 (= e!3249883 (and tp!1463695 tp!1463693))))

(assert (=> b!5220288 (= tp!1463489 e!3249883)))

(declare-fun b!5221291 () Bool)

(declare-fun tp!1463696 () Bool)

(assert (=> b!5221291 (= e!3249883 tp!1463696)))

(declare-fun b!5221289 () Bool)

(assert (=> b!5221289 (= e!3249883 tp_is_empty!38873)))

(assert (= (and b!5220288 (is-ElementMatch!14810 (regOne!30133 (reg!15139 r!7292)))) b!5221289))

(assert (= (and b!5220288 (is-Concat!23655 (regOne!30133 (reg!15139 r!7292)))) b!5221290))

(assert (= (and b!5220288 (is-Star!14810 (regOne!30133 (reg!15139 r!7292)))) b!5221291))

(assert (= (and b!5220288 (is-Union!14810 (regOne!30133 (reg!15139 r!7292)))) b!5221292))

(declare-fun b!5221294 () Bool)

(declare-fun e!3249884 () Bool)

(declare-fun tp!1463699 () Bool)

(declare-fun tp!1463702 () Bool)

(assert (=> b!5221294 (= e!3249884 (and tp!1463699 tp!1463702))))

(declare-fun b!5221296 () Bool)

(declare-fun tp!1463700 () Bool)

(declare-fun tp!1463698 () Bool)

(assert (=> b!5221296 (= e!3249884 (and tp!1463700 tp!1463698))))

(assert (=> b!5220288 (= tp!1463487 e!3249884)))

(declare-fun b!5221295 () Bool)

(declare-fun tp!1463701 () Bool)

(assert (=> b!5221295 (= e!3249884 tp!1463701)))

(declare-fun b!5221293 () Bool)

(assert (=> b!5221293 (= e!3249884 tp_is_empty!38873)))

(assert (= (and b!5220288 (is-ElementMatch!14810 (regTwo!30133 (reg!15139 r!7292)))) b!5221293))

(assert (= (and b!5220288 (is-Concat!23655 (regTwo!30133 (reg!15139 r!7292)))) b!5221294))

(assert (= (and b!5220288 (is-Star!14810 (regTwo!30133 (reg!15139 r!7292)))) b!5221295))

(assert (= (and b!5220288 (is-Union!14810 (regTwo!30133 (reg!15139 r!7292)))) b!5221296))

(declare-fun b!5221298 () Bool)

(declare-fun e!3249886 () Bool)

(declare-fun tp!1463703 () Bool)

(assert (=> b!5221298 (= e!3249886 tp!1463703)))

(declare-fun e!3249885 () Bool)

(declare-fun tp!1463704 () Bool)

(declare-fun b!5221297 () Bool)

(assert (=> b!5221297 (= e!3249885 (and (inv!80273 (h!67055 (t!373901 (t!373901 zl!343)))) e!3249886 tp!1463704))))

(assert (=> b!5220303 (= tp!1463507 e!3249885)))

(assert (= b!5221297 b!5221298))

(assert (= (and b!5220303 (is-Cons!60607 (t!373901 (t!373901 zl!343)))) b!5221297))

(declare-fun m!6268854 () Bool)

(assert (=> b!5221297 m!6268854))

(declare-fun condSetEmpty!33211 () Bool)

(assert (=> setNonEmpty!33202 (= condSetEmpty!33211 (= setRest!33202 (as set.empty (Set Context!8388))))))

(declare-fun setRes!33211 () Bool)

(assert (=> setNonEmpty!33202 (= tp!1463521 setRes!33211)))

(declare-fun setIsEmpty!33211 () Bool)

(assert (=> setIsEmpty!33211 setRes!33211))

(declare-fun setNonEmpty!33211 () Bool)

(declare-fun setElem!33211 () Context!8388)

(declare-fun e!3249887 () Bool)

(declare-fun tp!1463706 () Bool)

(assert (=> setNonEmpty!33211 (= setRes!33211 (and tp!1463706 (inv!80273 setElem!33211) e!3249887))))

(declare-fun setRest!33211 () (Set Context!8388))

(assert (=> setNonEmpty!33211 (= setRest!33202 (set.union (set.insert setElem!33211 (as set.empty (Set Context!8388))) setRest!33211))))

(declare-fun b!5221299 () Bool)

(declare-fun tp!1463705 () Bool)

(assert (=> b!5221299 (= e!3249887 tp!1463705)))

(assert (= (and setNonEmpty!33202 condSetEmpty!33211) setIsEmpty!33211))

(assert (= (and setNonEmpty!33202 (not condSetEmpty!33211)) setNonEmpty!33211))

(assert (= setNonEmpty!33211 b!5221299))

(declare-fun m!6268856 () Bool)

(assert (=> setNonEmpty!33211 m!6268856))

(declare-fun b!5221301 () Bool)

(declare-fun e!3249888 () Bool)

(declare-fun tp!1463708 () Bool)

(declare-fun tp!1463711 () Bool)

(assert (=> b!5221301 (= e!3249888 (and tp!1463708 tp!1463711))))

(declare-fun b!5221303 () Bool)

(declare-fun tp!1463709 () Bool)

(declare-fun tp!1463707 () Bool)

(assert (=> b!5221303 (= e!3249888 (and tp!1463709 tp!1463707))))

(assert (=> b!5220279 (= tp!1463481 e!3249888)))

(declare-fun b!5221302 () Bool)

(declare-fun tp!1463710 () Bool)

(assert (=> b!5221302 (= e!3249888 tp!1463710)))

(declare-fun b!5221300 () Bool)

(assert (=> b!5221300 (= e!3249888 tp_is_empty!38873)))

(assert (= (and b!5220279 (is-ElementMatch!14810 (regOne!30133 (regTwo!30133 r!7292)))) b!5221300))

(assert (= (and b!5220279 (is-Concat!23655 (regOne!30133 (regTwo!30133 r!7292)))) b!5221301))

(assert (= (and b!5220279 (is-Star!14810 (regOne!30133 (regTwo!30133 r!7292)))) b!5221302))

(assert (= (and b!5220279 (is-Union!14810 (regOne!30133 (regTwo!30133 r!7292)))) b!5221303))

(declare-fun b!5221305 () Bool)

(declare-fun e!3249889 () Bool)

(declare-fun tp!1463713 () Bool)

(declare-fun tp!1463716 () Bool)

(assert (=> b!5221305 (= e!3249889 (and tp!1463713 tp!1463716))))

(declare-fun b!5221307 () Bool)

(declare-fun tp!1463714 () Bool)

(declare-fun tp!1463712 () Bool)

(assert (=> b!5221307 (= e!3249889 (and tp!1463714 tp!1463712))))

(assert (=> b!5220279 (= tp!1463479 e!3249889)))

(declare-fun b!5221306 () Bool)

(declare-fun tp!1463715 () Bool)

(assert (=> b!5221306 (= e!3249889 tp!1463715)))

(declare-fun b!5221304 () Bool)

(assert (=> b!5221304 (= e!3249889 tp_is_empty!38873)))

(assert (= (and b!5220279 (is-ElementMatch!14810 (regTwo!30133 (regTwo!30133 r!7292)))) b!5221304))

(assert (= (and b!5220279 (is-Concat!23655 (regTwo!30133 (regTwo!30133 r!7292)))) b!5221305))

(assert (= (and b!5220279 (is-Star!14810 (regTwo!30133 (regTwo!30133 r!7292)))) b!5221306))

(assert (= (and b!5220279 (is-Union!14810 (regTwo!30133 (regTwo!30133 r!7292)))) b!5221307))

(declare-fun b!5221309 () Bool)

(declare-fun e!3249890 () Bool)

(declare-fun tp!1463718 () Bool)

(declare-fun tp!1463721 () Bool)

(assert (=> b!5221309 (= e!3249890 (and tp!1463718 tp!1463721))))

(declare-fun b!5221311 () Bool)

(declare-fun tp!1463719 () Bool)

(declare-fun tp!1463717 () Bool)

(assert (=> b!5221311 (= e!3249890 (and tp!1463719 tp!1463717))))

(assert (=> b!5220294 (= tp!1463498 e!3249890)))

(declare-fun b!5221310 () Bool)

(declare-fun tp!1463720 () Bool)

(assert (=> b!5221310 (= e!3249890 tp!1463720)))

(declare-fun b!5221308 () Bool)

(assert (=> b!5221308 (= e!3249890 tp_is_empty!38873)))

(assert (= (and b!5220294 (is-ElementMatch!14810 (regOne!30132 (regTwo!30132 r!7292)))) b!5221308))

(assert (= (and b!5220294 (is-Concat!23655 (regOne!30132 (regTwo!30132 r!7292)))) b!5221309))

(assert (= (and b!5220294 (is-Star!14810 (regOne!30132 (regTwo!30132 r!7292)))) b!5221310))

(assert (= (and b!5220294 (is-Union!14810 (regOne!30132 (regTwo!30132 r!7292)))) b!5221311))

(declare-fun b!5221313 () Bool)

(declare-fun e!3249891 () Bool)

(declare-fun tp!1463723 () Bool)

(declare-fun tp!1463726 () Bool)

(assert (=> b!5221313 (= e!3249891 (and tp!1463723 tp!1463726))))

(declare-fun b!5221315 () Bool)

(declare-fun tp!1463724 () Bool)

(declare-fun tp!1463722 () Bool)

(assert (=> b!5221315 (= e!3249891 (and tp!1463724 tp!1463722))))

(assert (=> b!5220294 (= tp!1463501 e!3249891)))

(declare-fun b!5221314 () Bool)

(declare-fun tp!1463725 () Bool)

(assert (=> b!5221314 (= e!3249891 tp!1463725)))

(declare-fun b!5221312 () Bool)

(assert (=> b!5221312 (= e!3249891 tp_is_empty!38873)))

(assert (= (and b!5220294 (is-ElementMatch!14810 (regTwo!30132 (regTwo!30132 r!7292)))) b!5221312))

(assert (= (and b!5220294 (is-Concat!23655 (regTwo!30132 (regTwo!30132 r!7292)))) b!5221313))

(assert (= (and b!5220294 (is-Star!14810 (regTwo!30132 (regTwo!30132 r!7292)))) b!5221314))

(assert (= (and b!5220294 (is-Union!14810 (regTwo!30132 (regTwo!30132 r!7292)))) b!5221315))

(declare-fun b!5221316 () Bool)

(declare-fun e!3249892 () Bool)

(declare-fun tp!1463727 () Bool)

(declare-fun tp!1463728 () Bool)

(assert (=> b!5221316 (= e!3249892 (and tp!1463727 tp!1463728))))

(assert (=> b!5220315 (= tp!1463520 e!3249892)))

(assert (= (and b!5220315 (is-Cons!60605 (exprs!4694 setElem!33202))) b!5221316))

(declare-fun b!5221318 () Bool)

(declare-fun e!3249893 () Bool)

(declare-fun tp!1463730 () Bool)

(declare-fun tp!1463733 () Bool)

(assert (=> b!5221318 (= e!3249893 (and tp!1463730 tp!1463733))))

(declare-fun b!5221320 () Bool)

(declare-fun tp!1463731 () Bool)

(declare-fun tp!1463729 () Bool)

(assert (=> b!5221320 (= e!3249893 (and tp!1463731 tp!1463729))))

(assert (=> b!5220295 (= tp!1463500 e!3249893)))

(declare-fun b!5221319 () Bool)

(declare-fun tp!1463732 () Bool)

(assert (=> b!5221319 (= e!3249893 tp!1463732)))

(declare-fun b!5221317 () Bool)

(assert (=> b!5221317 (= e!3249893 tp_is_empty!38873)))

(assert (= (and b!5220295 (is-ElementMatch!14810 (reg!15139 (regTwo!30132 r!7292)))) b!5221317))

(assert (= (and b!5220295 (is-Concat!23655 (reg!15139 (regTwo!30132 r!7292)))) b!5221318))

(assert (= (and b!5220295 (is-Star!14810 (reg!15139 (regTwo!30132 r!7292)))) b!5221319))

(assert (= (and b!5220295 (is-Union!14810 (reg!15139 (regTwo!30132 r!7292)))) b!5221320))

(declare-fun b!5221322 () Bool)

(declare-fun e!3249894 () Bool)

(declare-fun tp!1463735 () Bool)

(declare-fun tp!1463738 () Bool)

(assert (=> b!5221322 (= e!3249894 (and tp!1463735 tp!1463738))))

(declare-fun b!5221324 () Bool)

(declare-fun tp!1463736 () Bool)

(declare-fun tp!1463734 () Bool)

(assert (=> b!5221324 (= e!3249894 (and tp!1463736 tp!1463734))))

(assert (=> b!5220286 (= tp!1463488 e!3249894)))

(declare-fun b!5221323 () Bool)

(declare-fun tp!1463737 () Bool)

(assert (=> b!5221323 (= e!3249894 tp!1463737)))

(declare-fun b!5221321 () Bool)

(assert (=> b!5221321 (= e!3249894 tp_is_empty!38873)))

(assert (= (and b!5220286 (is-ElementMatch!14810 (regOne!30132 (reg!15139 r!7292)))) b!5221321))

(assert (= (and b!5220286 (is-Concat!23655 (regOne!30132 (reg!15139 r!7292)))) b!5221322))

(assert (= (and b!5220286 (is-Star!14810 (regOne!30132 (reg!15139 r!7292)))) b!5221323))

(assert (= (and b!5220286 (is-Union!14810 (regOne!30132 (reg!15139 r!7292)))) b!5221324))

(declare-fun b!5221326 () Bool)

(declare-fun e!3249895 () Bool)

(declare-fun tp!1463740 () Bool)

(declare-fun tp!1463743 () Bool)

(assert (=> b!5221326 (= e!3249895 (and tp!1463740 tp!1463743))))

(declare-fun b!5221328 () Bool)

(declare-fun tp!1463741 () Bool)

(declare-fun tp!1463739 () Bool)

(assert (=> b!5221328 (= e!3249895 (and tp!1463741 tp!1463739))))

(assert (=> b!5220286 (= tp!1463491 e!3249895)))

(declare-fun b!5221327 () Bool)

(declare-fun tp!1463742 () Bool)

(assert (=> b!5221327 (= e!3249895 tp!1463742)))

(declare-fun b!5221325 () Bool)

(assert (=> b!5221325 (= e!3249895 tp_is_empty!38873)))

(assert (= (and b!5220286 (is-ElementMatch!14810 (regTwo!30132 (reg!15139 r!7292)))) b!5221325))

(assert (= (and b!5220286 (is-Concat!23655 (regTwo!30132 (reg!15139 r!7292)))) b!5221326))

(assert (= (and b!5220286 (is-Star!14810 (regTwo!30132 (reg!15139 r!7292)))) b!5221327))

(assert (= (and b!5220286 (is-Union!14810 (regTwo!30132 (reg!15139 r!7292)))) b!5221328))

(declare-fun b_lambda!201881 () Bool)

(assert (= b_lambda!201873 (or b!5219789 b_lambda!201881)))

(assert (=> d!1683203 d!1682973))

(declare-fun b_lambda!201883 () Bool)

(assert (= b_lambda!201879 (or d!1682913 b_lambda!201883)))

(declare-fun bs!1212499 () Bool)

(declare-fun d!1683337 () Bool)

(assert (= bs!1212499 (and d!1683337 d!1682913)))

(assert (=> bs!1212499 (= (dynLambda!23947 lambda!261964 (h!67053 (exprs!4694 (h!67055 zl!343)))) (validRegex!6546 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(declare-fun m!6268858 () Bool)

(assert (=> bs!1212499 m!6268858))

(assert (=> b!5221211 d!1683337))

(declare-fun b_lambda!201885 () Bool)

(assert (= b_lambda!201875 (or d!1682967 b_lambda!201885)))

(declare-fun bs!1212500 () Bool)

(declare-fun d!1683339 () Bool)

(assert (= bs!1212500 (and d!1683339 d!1682967)))

(assert (=> bs!1212500 (= (dynLambda!23947 lambda!261977 (h!67053 lt!2143552)) (validRegex!6546 (h!67053 lt!2143552)))))

(declare-fun m!6268860 () Bool)

(assert (=> bs!1212500 m!6268860))

(assert (=> b!5221067 d!1683339))

(declare-fun b_lambda!201887 () Bool)

(assert (= b_lambda!201867 (or d!1682933 b_lambda!201887)))

(declare-fun bs!1212501 () Bool)

(declare-fun d!1683341 () Bool)

(assert (= bs!1212501 (and d!1683341 d!1682933)))

(assert (=> bs!1212501 (= (dynLambda!23947 lambda!261965 (h!67053 (exprs!4694 setElem!33196))) (validRegex!6546 (h!67053 (exprs!4694 setElem!33196))))))

(declare-fun m!6268862 () Bool)

(assert (=> bs!1212501 m!6268862))

(assert (=> b!5220803 d!1683341))

(declare-fun b_lambda!201889 () Bool)

(assert (= b_lambda!201871 (or d!1682879 b_lambda!201889)))

(declare-fun bs!1212502 () Bool)

(declare-fun d!1683343 () Bool)

(assert (= bs!1212502 (and d!1683343 d!1682879)))

(assert (=> bs!1212502 (= (dynLambda!23947 lambda!261952 (h!67053 (exprs!4694 (h!67055 zl!343)))) (validRegex!6546 (h!67053 (exprs!4694 (h!67055 zl!343)))))))

(assert (=> bs!1212502 m!6268858))

(assert (=> b!5220962 d!1683343))

(declare-fun b_lambda!201891 () Bool)

(assert (= b_lambda!201869 (or b!5219789 b_lambda!201891)))

(assert (=> d!1683141 d!1682975))

(declare-fun b_lambda!201893 () Bool)

(assert (= b_lambda!201865 (or b!5219789 b_lambda!201893)))

(assert (=> d!1683087 d!1682977))

(declare-fun b_lambda!201895 () Bool)

(assert (= b_lambda!201877 (or d!1682965 b_lambda!201895)))

(declare-fun bs!1212503 () Bool)

(declare-fun d!1683345 () Bool)

(assert (= bs!1212503 (and d!1683345 d!1682965)))

(assert (=> bs!1212503 (= (dynLambda!23947 lambda!261974 (h!67053 (unfocusZipperList!252 zl!343))) (validRegex!6546 (h!67053 (unfocusZipperList!252 zl!343))))))

(declare-fun m!6268864 () Bool)

(assert (=> bs!1212503 m!6268864))

(assert (=> b!5221123 d!1683345))

(push 1)

(assert (not d!1683161))

(assert (not b!5221227))

(assert (not b!5221176))

(assert (not d!1683103))

(assert (not b!5221248))

(assert (not d!1683129))

(assert (not d!1683307))

(assert (not b!5221287))

(assert (not b_lambda!201883))

(assert (not d!1683229))

(assert (not b!5221215))

(assert (not bm!368440))

(assert (not b!5220882))

(assert (not bm!368428))

(assert (not b!5221326))

(assert (not bm!368468))

(assert (not b!5221034))

(assert (not d!1683081))

(assert (not b!5221271))

(assert (not b!5221244))

(assert (not b!5220982))

(assert (not bm!368486))

(assert (not b!5221010))

(assert (not b!5221135))

(assert (not bm!368386))

(assert (not bm!368427))

(assert (not b!5220989))

(assert (not setNonEmpty!33208))

(assert (not b!5221328))

(assert (not bm!368484))

(assert (not b!5220895))

(assert (not bm!368456))

(assert (not b!5221145))

(assert (not bm!368499))

(assert (not d!1683309))

(assert (not b!5221199))

(assert (not d!1683097))

(assert (not b_lambda!201849))

(assert (not b!5221249))

(assert (not d!1683145))

(assert (not b!5220717))

(assert (not b!5220779))

(assert (not b!5221011))

(assert (not d!1683261))

(assert (not d!1683095))

(assert (not b!5221320))

(assert (not b!5220725))

(assert (not b!5220807))

(assert (not b!5221256))

(assert (not b!5221239))

(assert (not b!5220783))

(assert (not bm!368472))

(assert (not b!5221098))

(assert (not b!5220770))

(assert (not b!5221303))

(assert (not d!1683177))

(assert (not b!5220758))

(assert (not b!5221112))

(assert (not b!5221070))

(assert (not b!5221301))

(assert (not b!5220848))

(assert (not bm!368384))

(assert (not bm!368420))

(assert (not b!5220756))

(assert (not d!1683233))

(assert (not b!5220975))

(assert (not b!5221240))

(assert (not b_lambda!201847))

(assert (not b!5220939))

(assert (not b!5220963))

(assert (not d!1683263))

(assert (not b!5221235))

(assert (not b!5220924))

(assert (not b!5221270))

(assert (not bm!368426))

(assert (not bm!368502))

(assert (not b!5221262))

(assert (not d!1683157))

(assert (not b!5220748))

(assert (not b!5221139))

(assert (not b!5220987))

(assert (not b!5221299))

(assert (not b!5220996))

(assert (not b!5221224))

(assert (not b!5221296))

(assert (not b!5220791))

(assert (not d!1683285))

(assert (not b!5220976))

(assert (not d!1683253))

(assert (not b!5220867))

(assert (not b!5220782))

(assert (not bm!368447))

(assert (not b!5221141))

(assert (not bm!368457))

(assert tp_is_empty!38873)

(assert (not d!1683267))

(assert (not b!5221020))

(assert (not b!5221257))

(assert (not b_lambda!201887))

(assert (not b!5221018))

(assert (not b!5220841))

(assert (not b!5221127))

(assert (not d!1683213))

(assert (not d!1683115))

(assert (not b!5221140))

(assert (not d!1683287))

(assert (not b!5221033))

(assert (not b!5221268))

(assert (not bm!368395))

(assert (not bm!368398))

(assert (not b!5221295))

(assert (not d!1683141))

(assert (not d!1683211))

(assert (not b!5221302))

(assert (not bm!368437))

(assert (not bm!368410))

(assert (not b!5221137))

(assert (not b!5221234))

(assert (not b!5221294))

(assert (not b!5221231))

(assert (not bm!368387))

(assert (not b!5221022))

(assert (not b!5221030))

(assert (not b!5221319))

(assert (not b!5220893))

(assert (not b!5221111))

(assert (not b!5221313))

(assert (not bm!368415))

(assert (not bm!368487))

(assert (not bm!368451))

(assert (not bm!368455))

(assert (not bs!1212499))

(assert (not bm!368433))

(assert (not b!5221232))

(assert (not b!5220933))

(assert (not b!5221126))

(assert (not d!1683231))

(assert (not b!5221307))

(assert (not b!5220734))

(assert (not bm!368397))

(assert (not bm!368476))

(assert (not b!5221286))

(assert (not b!5221327))

(assert (not b!5221103))

(assert (not bs!1212500))

(assert (not b!5221059))

(assert (not d!1683301))

(assert (not b!5221142))

(assert (not b!5221245))

(assert (not b!5221243))

(assert (not bm!368475))

(assert (not bm!368469))

(assert (not b_lambda!201893))

(assert (not b!5221170))

(assert (not bs!1212501))

(assert (not b!5220760))

(assert (not b!5220861))

(assert (not bm!368482))

(assert (not d!1683183))

(assert (not d!1683237))

(assert (not bm!368443))

(assert (not b!5221138))

(assert (not bm!368404))

(assert (not b!5220969))

(assert (not b!5221247))

(assert (not bm!368391))

(assert (not b!5221218))

(assert (not bm!368494))

(assert (not d!1683271))

(assert (not d!1683093))

(assert (not b!5221314))

(assert (not b!5221259))

(assert (not b!5221273))

(assert (not b!5220726))

(assert (not b!5221228))

(assert (not b!5220977))

(assert (not b!5221069))

(assert (not d!1683101))

(assert (not b!5221322))

(assert (not b!5221186))

(assert (not bm!368458))

(assert (not b!5221068))

(assert (not b!5221282))

(assert (not b_lambda!201891))

(assert (not d!1683119))

(assert (not b!5220948))

(assert (not bm!368414))

(assert (not b!5221316))

(assert (not d!1683117))

(assert (not setNonEmpty!33209))

(assert (not b!5221310))

(assert (not bm!368407))

(assert (not d!1683295))

(assert (not bm!368454))

(assert (not d!1683223))

(assert (not b!5221226))

(assert (not b!5220774))

(assert (not b!5220896))

(assert (not b!5220780))

(assert (not d!1683203))

(assert (not b!5221237))

(assert (not b!5221265))

(assert (not b!5220951))

(assert (not bm!368401))

(assert (not d!1683291))

(assert (not b!5221220))

(assert (not b!5221021))

(assert (not setNonEmpty!33211))

(assert (not b!5221283))

(assert (not d!1683289))

(assert (not b!5221305))

(assert (not d!1683185))

(assert (not bm!368500))

(assert (not b!5221298))

(assert (not bm!368490))

(assert (not b!5220958))

(assert (not b!5220784))

(assert (not b!5221113))

(assert (not b!5220728))

(assert (not b!5221285))

(assert (not bm!368417))

(assert (not d!1683325))

(assert (not b!5221252))

(assert (not b!5221124))

(assert (not b!5221266))

(assert (not bm!368493))

(assert (not b!5220984))

(assert (not b!5221291))

(assert (not bm!368496))

(assert (not d!1683317))

(assert (not b!5220883))

(assert (not b!5221269))

(assert (not b!5220934))

(assert (not bm!368393))

(assert (not d!1683311))

(assert (not b!5220873))

(assert (not bm!368507))

(assert (not bm!368444))

(assert (not b!5221102))

(assert (not b!5220722))

(assert (not bm!368434))

(assert (not bs!1212503))

(assert (not b_lambda!201895))

(assert (not b!5221324))

(assert (not b!5220775))

(assert (not d!1683125))

(assert (not b!5220781))

(assert (not b!5221261))

(assert (not bm!368394))

(assert (not bm!368424))

(assert (not b!5220721))

(assert (not d!1683293))

(assert (not b!5221212))

(assert (not d!1683169))

(assert (not d!1683099))

(assert (not b!5221148))

(assert (not b!5221219))

(assert (not b!5221194))

(assert (not d!1683215))

(assert (not b!5221185))

(assert (not b!5221277))

(assert (not b!5220974))

(assert (not b!5220738))

(assert (not bs!1212502))

(assert (not b!5221311))

(assert (not b!5221241))

(assert (not b!5220852))

(assert (not b!5220747))

(assert (not b!5221323))

(assert (not bm!368438))

(assert (not b!5221196))

(assert (not setNonEmpty!33210))

(assert (not b!5221202))

(assert (not b!5220826))

(assert (not b!5221318))

(assert (not bm!368418))

(assert (not bm!368453))

(assert (not b!5220815))

(assert (not d!1683087))

(assert (not b!5221315))

(assert (not bm!368491))

(assert (not b!5221274))

(assert (not bm!368478))

(assert (not b!5221216))

(assert (not b!5221306))

(assert (not b!5221222))

(assert (not b!5221084))

(assert (not b!5221297))

(assert (not b_lambda!201889))

(assert (not b_lambda!201851))

(assert (not b!5220804))

(assert (not b!5221255))

(assert (not b!5221236))

(assert (not b!5220847))

(assert (not b!5221072))

(assert (not bm!368483))

(assert (not b!5220980))

(assert (not b!5221032))

(assert (not bm!368479))

(assert (not b!5221279))

(assert (not b_lambda!201885))

(assert (not bm!368509))

(assert (not b!5220894))

(assert (not b!5220844))

(assert (not d!1683143))

(assert (not b!5221260))

(assert (not b!5221019))

(assert (not d!1683111))

(assert (not bm!368423))

(assert (not bm!368411))

(assert (not bm!368481))

(assert (not d!1683089))

(assert (not d!1683217))

(assert (not bm!368402))

(assert (not d!1683321))

(assert (not b_lambda!201881))

(assert (not b!5220973))

(assert (not b!5221292))

(assert (not b!5220759))

(assert (not b!5220891))

(assert (not bm!368506))

(assert (not d!1683323))

(assert (not d!1683109))

(assert (not b!5221119))

(assert (not b!5220730))

(assert (not b!5220811))

(assert (not b!5221275))

(assert (not bm!368446))

(assert (not b!5221290))

(assert (not d!1683251))

(assert (not b!5221214))

(assert (not b!5220724))

(assert (not d!1683255))

(assert (not b!5221288))

(assert (not b!5220899))

(assert (not d!1683297))

(assert (not d!1683329))

(assert (not b!5220808))

(assert (not b!5220983))

(assert (not d!1683265))

(assert (not b!5220840))

(assert (not bm!368450))

(assert (not bm!368408))

(assert (not b!5221278))

(assert (not b!5221065))

(assert (not b!5221198))

(assert (not d!1683239))

(assert (not b!5221309))

(assert (not d!1683299))

(assert (not b!5221144))

(assert (not bm!368471))

(assert (not b!5221125))

(assert (not bm!368448))

(assert (not b!5221197))

(assert (not d!1683227))

(assert (not bm!368390))

(assert (not d!1683175))

(assert (not b!5221251))

(assert (not b!5221230))

(assert (not b!5221253))

(assert (not b!5221264))

(assert (not b!5221223))

(assert (not bm!368503))

(assert (not b!5221143))

(assert (not b!5220731))

(assert (not b!5220771))

(assert (not b!5221079))

(assert (not b!5221281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

