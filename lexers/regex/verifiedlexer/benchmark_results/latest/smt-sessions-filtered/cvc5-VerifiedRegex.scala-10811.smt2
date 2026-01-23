; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!555056 () Bool)

(assert start!555056)

(declare-fun b!5254247 () Bool)

(assert (=> b!5254247 true))

(assert (=> b!5254247 true))

(declare-fun lambda!264705 () Int)

(declare-fun lambda!264704 () Int)

(assert (=> b!5254247 (not (= lambda!264705 lambda!264704))))

(assert (=> b!5254247 true))

(assert (=> b!5254247 true))

(declare-fun b!5254232 () Bool)

(assert (=> b!5254232 true))

(declare-fun b!5254214 () Bool)

(declare-fun res!2229818 () Bool)

(declare-fun e!3268742 () Bool)

(assert (=> b!5254214 (=> res!2229818 e!3268742)))

(declare-datatypes ((C!30006 0))(
  ( (C!30007 (val!24705 Int)) )
))
(declare-datatypes ((Regex!14868 0))(
  ( (ElementMatch!14868 (c!909054 C!30006)) (Concat!23713 (regOne!30248 Regex!14868) (regTwo!30248 Regex!14868)) (EmptyExpr!14868) (Star!14868 (reg!15197 Regex!14868)) (EmptyLang!14868) (Union!14868 (regOne!30249 Regex!14868) (regTwo!30249 Regex!14868)) )
))
(declare-datatypes ((List!60903 0))(
  ( (Nil!60779) (Cons!60779 (h!67227 Regex!14868) (t!374086 List!60903)) )
))
(declare-datatypes ((Context!8504 0))(
  ( (Context!8505 (exprs!4752 List!60903)) )
))
(declare-datatypes ((List!60904 0))(
  ( (Nil!60780) (Cons!60780 (h!67228 Context!8504) (t!374087 List!60904)) )
))
(declare-fun zl!343 () List!60904)

(declare-fun isEmpty!32717 (List!60904) Bool)

(assert (=> b!5254214 (= res!2229818 (not (isEmpty!32717 (t!374087 zl!343))))))

(declare-fun b!5254215 () Bool)

(declare-fun e!3268725 () Bool)

(declare-fun lt!2153466 () (Set Context!8504))

(declare-datatypes ((List!60905 0))(
  ( (Nil!60781) (Cons!60781 (h!67229 C!30006) (t!374088 List!60905)) )
))
(declare-fun s!2326 () List!60905)

(declare-fun matchZipper!1112 ((Set Context!8504) List!60905) Bool)

(assert (=> b!5254215 (= e!3268725 (matchZipper!1112 lt!2153466 (t!374088 s!2326)))))

(declare-fun b!5254216 () Bool)

(declare-fun e!3268738 () Bool)

(declare-fun lt!2153506 () (Set Context!8504))

(assert (=> b!5254216 (= e!3268738 (matchZipper!1112 lt!2153506 s!2326))))

(declare-fun setIsEmpty!33566 () Bool)

(declare-fun setRes!33566 () Bool)

(assert (=> setIsEmpty!33566 setRes!33566))

(declare-fun b!5254217 () Bool)

(declare-fun e!3268733 () Bool)

(declare-fun e!3268729 () Bool)

(assert (=> b!5254217 (= e!3268733 e!3268729)))

(declare-fun res!2229809 () Bool)

(assert (=> b!5254217 (=> res!2229809 e!3268729)))

(declare-fun lt!2153472 () Bool)

(declare-fun lt!2153502 () Bool)

(declare-fun lt!2153464 () Bool)

(assert (=> b!5254217 (= res!2229809 (and (not (= lt!2153472 lt!2153502)) (not lt!2153464)))))

(declare-fun lt!2153492 () Regex!14868)

(declare-fun matchRSpec!1971 (Regex!14868 List!60905) Bool)

(assert (=> b!5254217 (= lt!2153464 (matchRSpec!1971 lt!2153492 s!2326))))

(declare-datatypes ((Unit!152958 0))(
  ( (Unit!152959) )
))
(declare-fun lt!2153499 () Unit!152958)

(declare-fun mainMatchTheorem!1971 (Regex!14868 List!60905) Unit!152958)

(assert (=> b!5254217 (= lt!2153499 (mainMatchTheorem!1971 lt!2153492 s!2326))))

(declare-fun lt!2153503 () Regex!14868)

(assert (=> b!5254217 (= lt!2153502 (matchRSpec!1971 lt!2153503 s!2326))))

(declare-fun lt!2153498 () Unit!152958)

(assert (=> b!5254217 (= lt!2153498 (mainMatchTheorem!1971 lt!2153503 s!2326))))

(assert (=> b!5254217 (= lt!2153464 (matchZipper!1112 lt!2153506 s!2326))))

(declare-fun matchR!7053 (Regex!14868 List!60905) Bool)

(assert (=> b!5254217 (= lt!2153464 (matchR!7053 lt!2153492 s!2326))))

(declare-fun lt!2153509 () List!60904)

(declare-fun lt!2153494 () Unit!152958)

(declare-fun theoremZipperRegexEquiv!302 ((Set Context!8504) List!60904 Regex!14868 List!60905) Unit!152958)

(assert (=> b!5254217 (= lt!2153494 (theoremZipperRegexEquiv!302 lt!2153506 lt!2153509 lt!2153492 s!2326))))

(declare-fun lt!2153496 () List!60903)

(declare-fun generalisedConcat!537 (List!60903) Regex!14868)

(assert (=> b!5254217 (= lt!2153492 (generalisedConcat!537 lt!2153496))))

(declare-fun lt!2153511 () Bool)

(assert (=> b!5254217 (= lt!2153502 lt!2153511)))

(assert (=> b!5254217 (= lt!2153502 (matchR!7053 lt!2153503 s!2326))))

(declare-fun lt!2153480 () Unit!152958)

(declare-fun lt!2153462 () (Set Context!8504))

(declare-fun lt!2153478 () List!60904)

(assert (=> b!5254217 (= lt!2153480 (theoremZipperRegexEquiv!302 lt!2153462 lt!2153478 lt!2153503 s!2326))))

(declare-fun lt!2153500 () List!60903)

(assert (=> b!5254217 (= lt!2153503 (generalisedConcat!537 lt!2153500))))

(declare-fun b!5254218 () Bool)

(declare-fun e!3268724 () Bool)

(assert (=> b!5254218 (= e!3268724 (not (matchZipper!1112 lt!2153466 (t!374088 s!2326))))))

(declare-fun b!5254219 () Bool)

(declare-fun e!3268737 () Bool)

(declare-fun e!3268736 () Bool)

(assert (=> b!5254219 (= e!3268737 e!3268736)))

(declare-fun res!2229800 () Bool)

(assert (=> b!5254219 (=> res!2229800 e!3268736)))

(declare-fun lt!2153505 () Regex!14868)

(declare-fun r!7292 () Regex!14868)

(assert (=> b!5254219 (= res!2229800 (or (not (= lt!2153503 (Concat!23713 (regOne!30249 (regOne!30248 r!7292)) lt!2153505))) (not (= lt!2153492 (Concat!23713 (regTwo!30249 (regOne!30248 r!7292)) lt!2153505))) (not (= (regTwo!30248 r!7292) lt!2153505))))))

(assert (=> b!5254219 (= lt!2153505 (generalisedConcat!537 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254220 () Bool)

(declare-fun e!3268721 () Bool)

(declare-fun tp!1469614 () Bool)

(assert (=> b!5254220 (= e!3268721 tp!1469614)))

(declare-fun b!5254221 () Bool)

(declare-fun e!3268732 () Bool)

(declare-fun lt!2153482 () (Set Context!8504))

(assert (=> b!5254221 (= e!3268732 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(declare-fun b!5254222 () Bool)

(assert (=> b!5254222 (= e!3268729 e!3268737)))

(declare-fun res!2229797 () Bool)

(assert (=> b!5254222 (=> res!2229797 e!3268737)))

(declare-fun lt!2153467 () Regex!14868)

(assert (=> b!5254222 (= res!2229797 (not (= r!7292 lt!2153467)))))

(assert (=> b!5254222 (= lt!2153467 (Concat!23713 (Union!14868 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30249 (regOne!30248 r!7292))) (regTwo!30248 r!7292)))))

(declare-fun b!5254223 () Bool)

(declare-fun e!3268722 () Bool)

(declare-fun tp_is_empty!38989 () Bool)

(declare-fun tp!1469611 () Bool)

(assert (=> b!5254223 (= e!3268722 (and tp_is_empty!38989 tp!1469611))))

(declare-fun b!5254224 () Bool)

(declare-fun res!2229801 () Bool)

(assert (=> b!5254224 (=> res!2229801 e!3268742)))

(assert (=> b!5254224 (= res!2229801 (not (is-Cons!60779 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254225 () Bool)

(declare-fun e!3268744 () Bool)

(assert (=> b!5254225 (= e!3268744 tp_is_empty!38989)))

(declare-fun b!5254226 () Bool)

(declare-fun e!3268746 () Bool)

(declare-fun e!3268723 () Bool)

(assert (=> b!5254226 (= e!3268746 e!3268723)))

(declare-fun res!2229821 () Bool)

(assert (=> b!5254226 (=> (not res!2229821) (not e!3268723))))

(declare-fun lt!2153473 () Regex!14868)

(assert (=> b!5254226 (= res!2229821 (= r!7292 lt!2153473))))

(declare-fun unfocusZipper!610 (List!60904) Regex!14868)

(assert (=> b!5254226 (= lt!2153473 (unfocusZipper!610 zl!343))))

(declare-fun b!5254227 () Bool)

(declare-fun e!3268743 () Unit!152958)

(declare-fun Unit!152960 () Unit!152958)

(assert (=> b!5254227 (= e!3268743 Unit!152960)))

(declare-fun lt!2153512 () Unit!152958)

(declare-fun lt!2153486 () (Set Context!8504))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!105 ((Set Context!8504) (Set Context!8504) List!60905) Unit!152958)

(assert (=> b!5254227 (= lt!2153512 (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153486 lt!2153482 (t!374088 s!2326)))))

(declare-fun res!2229813 () Bool)

(declare-fun lt!2153471 () Bool)

(assert (=> b!5254227 (= res!2229813 lt!2153471)))

(declare-fun e!3268741 () Bool)

(assert (=> b!5254227 (=> res!2229813 e!3268741)))

(assert (=> b!5254227 (= (matchZipper!1112 (set.union lt!2153486 lt!2153482) (t!374088 s!2326)) e!3268741)))

(declare-fun b!5254228 () Bool)

(declare-fun e!3268745 () Unit!152958)

(declare-fun Unit!152961 () Unit!152958)

(assert (=> b!5254228 (= e!3268745 Unit!152961)))

(declare-fun lt!2153476 () (Set Context!8504))

(declare-fun lt!2153463 () Unit!152958)

(assert (=> b!5254228 (= lt!2153463 (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153476 lt!2153482 (t!374088 s!2326)))))

(declare-fun res!2229805 () Bool)

(assert (=> b!5254228 (= res!2229805 (matchZipper!1112 lt!2153476 (t!374088 s!2326)))))

(assert (=> b!5254228 (=> res!2229805 e!3268732)))

(assert (=> b!5254228 (= (matchZipper!1112 (set.union lt!2153476 lt!2153482) (t!374088 s!2326)) e!3268732)))

(declare-fun b!5254229 () Bool)

(declare-fun res!2229819 () Bool)

(assert (=> b!5254229 (=> (not res!2229819) (not e!3268746))))

(declare-fun z!1189 () (Set Context!8504))

(declare-fun toList!8652 ((Set Context!8504)) List!60904)

(assert (=> b!5254229 (= res!2229819 (= (toList!8652 z!1189) zl!343))))

(declare-fun b!5254230 () Bool)

(declare-fun e!3268740 () Bool)

(declare-fun e!3268734 () Bool)

(assert (=> b!5254230 (= e!3268740 e!3268734)))

(declare-fun res!2229817 () Bool)

(assert (=> b!5254230 (=> res!2229817 e!3268734)))

(declare-fun lt!2153475 () Int)

(declare-fun lt!2153465 () Int)

(assert (=> b!5254230 (= res!2229817 (>= lt!2153475 lt!2153465))))

(declare-fun zipperDepthTotal!49 (List!60904) Int)

(assert (=> b!5254230 (= lt!2153465 (zipperDepthTotal!49 zl!343))))

(assert (=> b!5254230 (= lt!2153475 (zipperDepthTotal!49 lt!2153478))))

(declare-fun lt!2153479 () Context!8504)

(assert (=> b!5254230 (= lt!2153478 (Cons!60780 lt!2153479 Nil!60780))))

(declare-fun b!5254231 () Bool)

(declare-fun res!2229806 () Bool)

(assert (=> b!5254231 (=> res!2229806 e!3268742)))

(assert (=> b!5254231 (= res!2229806 (or (is-EmptyExpr!14868 r!7292) (is-EmptyLang!14868 r!7292) (is-ElementMatch!14868 r!7292) (is-Union!14868 r!7292) (not (is-Concat!23713 r!7292))))))

(declare-fun e!3268730 () Bool)

(declare-fun e!3268739 () Bool)

(assert (=> b!5254232 (= e!3268730 e!3268739)))

(declare-fun res!2229796 () Bool)

(assert (=> b!5254232 (=> res!2229796 e!3268739)))

(assert (=> b!5254232 (= res!2229796 (or (and (is-ElementMatch!14868 (regOne!30248 r!7292)) (= (c!909054 (regOne!30248 r!7292)) (h!67229 s!2326))) (not (is-Union!14868 (regOne!30248 r!7292)))))))

(declare-fun lt!2153497 () Unit!152958)

(assert (=> b!5254232 (= lt!2153497 e!3268745)))

(declare-fun c!909051 () Bool)

(declare-fun nullable!5037 (Regex!14868) Bool)

(assert (=> b!5254232 (= c!909051 (nullable!5037 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun lambda!264706 () Int)

(declare-fun flatMap!595 ((Set Context!8504) Int) (Set Context!8504))

(declare-fun derivationStepZipperUp!240 (Context!8504 C!30006) (Set Context!8504))

(assert (=> b!5254232 (= (flatMap!595 z!1189 lambda!264706) (derivationStepZipperUp!240 (h!67228 zl!343) (h!67229 s!2326)))))

(declare-fun lt!2153501 () Unit!152958)

(declare-fun lemmaFlatMapOnSingletonSet!127 ((Set Context!8504) Context!8504 Int) Unit!152958)

(assert (=> b!5254232 (= lt!2153501 (lemmaFlatMapOnSingletonSet!127 z!1189 (h!67228 zl!343) lambda!264706))))

(declare-fun lt!2153488 () Context!8504)

(assert (=> b!5254232 (= lt!2153482 (derivationStepZipperUp!240 lt!2153488 (h!67229 s!2326)))))

(declare-fun derivationStepZipperDown!316 (Regex!14868 Context!8504 C!30006) (Set Context!8504))

(assert (=> b!5254232 (= lt!2153476 (derivationStepZipperDown!316 (h!67227 (exprs!4752 (h!67228 zl!343))) lt!2153488 (h!67229 s!2326)))))

(assert (=> b!5254232 (= lt!2153488 (Context!8505 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun lt!2153461 () (Set Context!8504))

(assert (=> b!5254232 (= lt!2153461 (derivationStepZipperUp!240 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343))))) (h!67229 s!2326)))))

(declare-fun b!5254233 () Bool)

(declare-fun tp!1469612 () Bool)

(declare-fun tp!1469615 () Bool)

(assert (=> b!5254233 (= e!3268744 (and tp!1469612 tp!1469615))))

(declare-fun res!2229816 () Bool)

(assert (=> start!555056 (=> (not res!2229816) (not e!3268746))))

(declare-fun validRegex!6604 (Regex!14868) Bool)

(assert (=> start!555056 (= res!2229816 (validRegex!6604 r!7292))))

(assert (=> start!555056 e!3268746))

(assert (=> start!555056 e!3268744))

(declare-fun condSetEmpty!33566 () Bool)

(assert (=> start!555056 (= condSetEmpty!33566 (= z!1189 (as set.empty (Set Context!8504))))))

(assert (=> start!555056 setRes!33566))

(declare-fun e!3268747 () Bool)

(assert (=> start!555056 e!3268747))

(assert (=> start!555056 e!3268722))

(declare-fun b!5254234 () Bool)

(declare-fun e!3268727 () Bool)

(assert (=> b!5254234 (= e!3268739 e!3268727)))

(declare-fun res!2229811 () Bool)

(assert (=> b!5254234 (=> res!2229811 e!3268727)))

(declare-fun lt!2153504 () (Set Context!8504))

(assert (=> b!5254234 (= res!2229811 (not (= lt!2153476 lt!2153504)))))

(assert (=> b!5254234 (= lt!2153504 (set.union lt!2153486 lt!2153466))))

(assert (=> b!5254234 (= lt!2153466 (derivationStepZipperDown!316 (regTwo!30249 (regOne!30248 r!7292)) lt!2153488 (h!67229 s!2326)))))

(assert (=> b!5254234 (= lt!2153486 (derivationStepZipperDown!316 (regOne!30249 (regOne!30248 r!7292)) lt!2153488 (h!67229 s!2326)))))

(declare-fun b!5254235 () Bool)

(declare-fun res!2229814 () Bool)

(assert (=> b!5254235 (=> res!2229814 e!3268730)))

(declare-fun isEmpty!32718 (List!60903) Bool)

(assert (=> b!5254235 (= res!2229814 (isEmpty!32718 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254236 () Bool)

(declare-fun e!3268726 () Bool)

(assert (=> b!5254236 (= e!3268726 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(declare-fun b!5254237 () Bool)

(declare-fun Unit!152962 () Unit!152958)

(assert (=> b!5254237 (= e!3268745 Unit!152962)))

(declare-fun b!5254238 () Bool)

(declare-fun e!3268735 () Unit!152958)

(declare-fun Unit!152963 () Unit!152958)

(assert (=> b!5254238 (= e!3268735 Unit!152963)))

(declare-fun b!5254239 () Bool)

(assert (=> b!5254239 (= e!3268741 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(declare-fun setElem!33566 () Context!8504)

(declare-fun setNonEmpty!33566 () Bool)

(declare-fun tp!1469607 () Bool)

(declare-fun e!3268728 () Bool)

(declare-fun inv!80418 (Context!8504) Bool)

(assert (=> setNonEmpty!33566 (= setRes!33566 (and tp!1469607 (inv!80418 setElem!33566) e!3268728))))

(declare-fun setRest!33566 () (Set Context!8504))

(assert (=> setNonEmpty!33566 (= z!1189 (set.union (set.insert setElem!33566 (as set.empty (Set Context!8504))) setRest!33566))))

(declare-fun b!5254240 () Bool)

(assert (=> b!5254240 (= e!3268723 (not e!3268742))))

(declare-fun res!2229807 () Bool)

(assert (=> b!5254240 (=> res!2229807 e!3268742)))

(assert (=> b!5254240 (= res!2229807 (not (is-Cons!60780 zl!343)))))

(declare-fun lt!2153477 () Bool)

(assert (=> b!5254240 (= lt!2153477 (matchRSpec!1971 r!7292 s!2326))))

(assert (=> b!5254240 (= lt!2153477 (matchR!7053 r!7292 s!2326))))

(declare-fun lt!2153493 () Unit!152958)

(assert (=> b!5254240 (= lt!2153493 (mainMatchTheorem!1971 r!7292 s!2326))))

(declare-fun b!5254241 () Bool)

(assert (=> b!5254241 (= e!3268736 (validRegex!6604 lt!2153503))))

(declare-fun lt!2153469 () Bool)

(assert (=> b!5254241 (= lt!2153469 (matchRSpec!1971 lt!2153467 s!2326))))

(declare-fun lt!2153483 () Unit!152958)

(assert (=> b!5254241 (= lt!2153483 (mainMatchTheorem!1971 lt!2153467 s!2326))))

(declare-fun lt!2153508 () Bool)

(declare-fun lt!2153459 () Regex!14868)

(assert (=> b!5254241 (= lt!2153508 (matchRSpec!1971 lt!2153459 s!2326))))

(declare-fun lt!2153484 () Unit!152958)

(assert (=> b!5254241 (= lt!2153484 (mainMatchTheorem!1971 lt!2153459 s!2326))))

(assert (=> b!5254241 (= lt!2153469 lt!2153508)))

(assert (=> b!5254241 (= lt!2153508 (matchR!7053 lt!2153459 s!2326))))

(assert (=> b!5254241 (= lt!2153469 (matchR!7053 lt!2153467 s!2326))))

(assert (=> b!5254241 (= lt!2153459 (Union!14868 (Concat!23713 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292)) (Concat!23713 (regTwo!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292))))))

(declare-fun lt!2153468 () Unit!152958)

(declare-fun lemmaConcatDistributesInUnion!13 (Regex!14868 Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> b!5254241 (= lt!2153468 (lemmaConcatDistributesInUnion!13 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292) s!2326))))

(declare-fun b!5254242 () Bool)

(declare-fun res!2229822 () Bool)

(assert (=> b!5254242 (=> res!2229822 e!3268740)))

(assert (=> b!5254242 (= res!2229822 (or (not (= lt!2153473 r!7292)) (not (= (exprs!4752 (h!67228 zl!343)) (Cons!60779 (regOne!30248 r!7292) (t!374086 (exprs!4752 (h!67228 zl!343))))))))))

(declare-fun tp!1469608 () Bool)

(declare-fun b!5254243 () Bool)

(assert (=> b!5254243 (= e!3268747 (and (inv!80418 (h!67228 zl!343)) e!3268721 tp!1469608))))

(declare-fun b!5254244 () Bool)

(declare-fun res!2229810 () Bool)

(assert (=> b!5254244 (=> res!2229810 e!3268742)))

(assert (=> b!5254244 (= res!2229810 (not (= r!7292 (generalisedConcat!537 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun b!5254245 () Bool)

(declare-fun Unit!152964 () Unit!152958)

(assert (=> b!5254245 (= e!3268735 Unit!152964)))

(declare-fun lt!2153485 () Unit!152958)

(assert (=> b!5254245 (= lt!2153485 (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153466 lt!2153482 (t!374088 s!2326)))))

(declare-fun res!2229802 () Bool)

(assert (=> b!5254245 (= res!2229802 (matchZipper!1112 lt!2153466 (t!374088 s!2326)))))

(assert (=> b!5254245 (=> res!2229802 e!3268726)))

(assert (=> b!5254245 (= (matchZipper!1112 (set.union lt!2153466 lt!2153482) (t!374088 s!2326)) e!3268726)))

(declare-fun b!5254246 () Bool)

(declare-fun e!3268731 () Bool)

(assert (=> b!5254246 (= e!3268731 e!3268740)))

(declare-fun res!2229803 () Bool)

(assert (=> b!5254246 (=> res!2229803 e!3268740)))

(assert (=> b!5254246 (= res!2229803 (not (= lt!2153472 e!3268738)))))

(declare-fun res!2229808 () Bool)

(assert (=> b!5254246 (=> res!2229808 e!3268738)))

(assert (=> b!5254246 (= res!2229808 lt!2153511)))

(assert (=> b!5254246 (= lt!2153472 (matchZipper!1112 z!1189 s!2326))))

(assert (=> b!5254246 (= lt!2153511 (matchZipper!1112 lt!2153462 s!2326))))

(declare-fun lt!2153481 () Unit!152958)

(assert (=> b!5254246 (= lt!2153481 e!3268735)))

(declare-fun c!909052 () Bool)

(assert (=> b!5254246 (= c!909052 (nullable!5037 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun lt!2153470 () Context!8504)

(assert (=> b!5254246 (= (flatMap!595 lt!2153506 lambda!264706) (derivationStepZipperUp!240 lt!2153470 (h!67229 s!2326)))))

(declare-fun lt!2153487 () Unit!152958)

(assert (=> b!5254246 (= lt!2153487 (lemmaFlatMapOnSingletonSet!127 lt!2153506 lt!2153470 lambda!264706))))

(declare-fun lt!2153490 () (Set Context!8504))

(assert (=> b!5254246 (= lt!2153490 (derivationStepZipperUp!240 lt!2153470 (h!67229 s!2326)))))

(declare-fun lt!2153460 () Unit!152958)

(assert (=> b!5254246 (= lt!2153460 e!3268743)))

(declare-fun c!909053 () Bool)

(assert (=> b!5254246 (= c!909053 (nullable!5037 (regOne!30249 (regOne!30248 r!7292))))))

(assert (=> b!5254246 (= (flatMap!595 lt!2153462 lambda!264706) (derivationStepZipperUp!240 lt!2153479 (h!67229 s!2326)))))

(declare-fun lt!2153507 () Unit!152958)

(assert (=> b!5254246 (= lt!2153507 (lemmaFlatMapOnSingletonSet!127 lt!2153462 lt!2153479 lambda!264706))))

(declare-fun lt!2153489 () (Set Context!8504))

(assert (=> b!5254246 (= lt!2153489 (derivationStepZipperUp!240 lt!2153479 (h!67229 s!2326)))))

(assert (=> b!5254246 (= lt!2153506 (set.insert lt!2153470 (as set.empty (Set Context!8504))))))

(assert (=> b!5254246 (= lt!2153470 (Context!8505 lt!2153496))))

(assert (=> b!5254246 (= lt!2153496 (Cons!60779 (regTwo!30249 (regOne!30248 r!7292)) (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(assert (=> b!5254246 (= lt!2153462 (set.insert lt!2153479 (as set.empty (Set Context!8504))))))

(assert (=> b!5254246 (= lt!2153479 (Context!8505 lt!2153500))))

(assert (=> b!5254246 (= lt!2153500 (Cons!60779 (regOne!30249 (regOne!30248 r!7292)) (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(assert (=> b!5254247 (= e!3268742 e!3268730)))

(declare-fun res!2229798 () Bool)

(assert (=> b!5254247 (=> res!2229798 e!3268730)))

(declare-fun lt!2153474 () Bool)

(assert (=> b!5254247 (= res!2229798 (or (not (= lt!2153477 lt!2153474)) (is-Nil!60781 s!2326)))))

(declare-fun Exists!2049 (Int) Bool)

(assert (=> b!5254247 (= (Exists!2049 lambda!264704) (Exists!2049 lambda!264705))))

(declare-fun lt!2153495 () Unit!152958)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!703 (Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> b!5254247 (= lt!2153495 (lemmaExistCutMatchRandMatchRSpecEquivalent!703 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326))))

(assert (=> b!5254247 (= lt!2153474 (Exists!2049 lambda!264704))))

(declare-datatypes ((tuple2!64134 0))(
  ( (tuple2!64135 (_1!35370 List!60905) (_2!35370 List!60905)) )
))
(declare-datatypes ((Option!14979 0))(
  ( (None!14978) (Some!14978 (v!51007 tuple2!64134)) )
))
(declare-fun isDefined!11682 (Option!14979) Bool)

(declare-fun findConcatSeparation!1393 (Regex!14868 Regex!14868 List!60905 List!60905 List!60905) Option!14979)

(assert (=> b!5254247 (= lt!2153474 (isDefined!11682 (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) Nil!60781 s!2326 s!2326)))))

(declare-fun lt!2153491 () Unit!152958)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1157 (Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> b!5254247 (= lt!2153491 (lemmaFindConcatSeparationEquivalentToExists!1157 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326))))

(declare-fun b!5254248 () Bool)

(declare-fun Unit!152965 () Unit!152958)

(assert (=> b!5254248 (= e!3268743 Unit!152965)))

(declare-fun b!5254249 () Bool)

(declare-fun res!2229820 () Bool)

(assert (=> b!5254249 (=> res!2229820 e!3268742)))

(declare-fun generalisedUnion!797 (List!60903) Regex!14868)

(declare-fun unfocusZipperList!310 (List!60904) List!60903)

(assert (=> b!5254249 (= res!2229820 (not (= r!7292 (generalisedUnion!797 (unfocusZipperList!310 zl!343)))))))

(declare-fun b!5254250 () Bool)

(assert (=> b!5254250 (= e!3268734 e!3268733)))

(declare-fun res!2229799 () Bool)

(assert (=> b!5254250 (=> res!2229799 e!3268733)))

(assert (=> b!5254250 (= res!2229799 (>= (zipperDepthTotal!49 lt!2153509) lt!2153465))))

(assert (=> b!5254250 (= lt!2153509 (Cons!60780 lt!2153470 Nil!60780))))

(declare-fun b!5254251 () Bool)

(assert (=> b!5254251 (= e!3268727 e!3268731)))

(declare-fun res!2229812 () Bool)

(assert (=> b!5254251 (=> res!2229812 e!3268731)))

(assert (=> b!5254251 (= res!2229812 e!3268724)))

(declare-fun res!2229804 () Bool)

(assert (=> b!5254251 (=> (not res!2229804) (not e!3268724))))

(assert (=> b!5254251 (= res!2229804 (not (= (matchZipper!1112 lt!2153476 (t!374088 s!2326)) lt!2153471)))))

(assert (=> b!5254251 (= (matchZipper!1112 lt!2153504 (t!374088 s!2326)) e!3268725)))

(declare-fun res!2229815 () Bool)

(assert (=> b!5254251 (=> res!2229815 e!3268725)))

(assert (=> b!5254251 (= res!2229815 lt!2153471)))

(assert (=> b!5254251 (= lt!2153471 (matchZipper!1112 lt!2153486 (t!374088 s!2326)))))

(declare-fun lt!2153510 () Unit!152958)

(assert (=> b!5254251 (= lt!2153510 (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153486 lt!2153466 (t!374088 s!2326)))))

(declare-fun b!5254252 () Bool)

(declare-fun tp!1469606 () Bool)

(declare-fun tp!1469613 () Bool)

(assert (=> b!5254252 (= e!3268744 (and tp!1469606 tp!1469613))))

(declare-fun b!5254253 () Bool)

(declare-fun tp!1469609 () Bool)

(assert (=> b!5254253 (= e!3268744 tp!1469609)))

(declare-fun b!5254254 () Bool)

(declare-fun tp!1469610 () Bool)

(assert (=> b!5254254 (= e!3268728 tp!1469610)))

(assert (= (and start!555056 res!2229816) b!5254229))

(assert (= (and b!5254229 res!2229819) b!5254226))

(assert (= (and b!5254226 res!2229821) b!5254240))

(assert (= (and b!5254240 (not res!2229807)) b!5254214))

(assert (= (and b!5254214 (not res!2229818)) b!5254244))

(assert (= (and b!5254244 (not res!2229810)) b!5254224))

(assert (= (and b!5254224 (not res!2229801)) b!5254249))

(assert (= (and b!5254249 (not res!2229820)) b!5254231))

(assert (= (and b!5254231 (not res!2229806)) b!5254247))

(assert (= (and b!5254247 (not res!2229798)) b!5254235))

(assert (= (and b!5254235 (not res!2229814)) b!5254232))

(assert (= (and b!5254232 c!909051) b!5254228))

(assert (= (and b!5254232 (not c!909051)) b!5254237))

(assert (= (and b!5254228 (not res!2229805)) b!5254221))

(assert (= (and b!5254232 (not res!2229796)) b!5254234))

(assert (= (and b!5254234 (not res!2229811)) b!5254251))

(assert (= (and b!5254251 (not res!2229815)) b!5254215))

(assert (= (and b!5254251 res!2229804) b!5254218))

(assert (= (and b!5254251 (not res!2229812)) b!5254246))

(assert (= (and b!5254246 c!909053) b!5254227))

(assert (= (and b!5254246 (not c!909053)) b!5254248))

(assert (= (and b!5254227 (not res!2229813)) b!5254239))

(assert (= (and b!5254246 c!909052) b!5254245))

(assert (= (and b!5254246 (not c!909052)) b!5254238))

(assert (= (and b!5254245 (not res!2229802)) b!5254236))

(assert (= (and b!5254246 (not res!2229808)) b!5254216))

(assert (= (and b!5254246 (not res!2229803)) b!5254242))

(assert (= (and b!5254242 (not res!2229822)) b!5254230))

(assert (= (and b!5254230 (not res!2229817)) b!5254250))

(assert (= (and b!5254250 (not res!2229799)) b!5254217))

(assert (= (and b!5254217 (not res!2229809)) b!5254222))

(assert (= (and b!5254222 (not res!2229797)) b!5254219))

(assert (= (and b!5254219 (not res!2229800)) b!5254241))

(assert (= (and start!555056 (is-ElementMatch!14868 r!7292)) b!5254225))

(assert (= (and start!555056 (is-Concat!23713 r!7292)) b!5254252))

(assert (= (and start!555056 (is-Star!14868 r!7292)) b!5254253))

(assert (= (and start!555056 (is-Union!14868 r!7292)) b!5254233))

(assert (= (and start!555056 condSetEmpty!33566) setIsEmpty!33566))

(assert (= (and start!555056 (not condSetEmpty!33566)) setNonEmpty!33566))

(assert (= setNonEmpty!33566 b!5254254))

(assert (= b!5254243 b!5254220))

(assert (= (and start!555056 (is-Cons!60780 zl!343)) b!5254243))

(assert (= (and start!555056 (is-Cons!60781 s!2326)) b!5254223))

(declare-fun m!6297040 () Bool)

(assert (=> b!5254251 m!6297040))

(declare-fun m!6297042 () Bool)

(assert (=> b!5254251 m!6297042))

(declare-fun m!6297044 () Bool)

(assert (=> b!5254251 m!6297044))

(declare-fun m!6297046 () Bool)

(assert (=> b!5254251 m!6297046))

(declare-fun m!6297048 () Bool)

(assert (=> b!5254219 m!6297048))

(declare-fun m!6297050 () Bool)

(assert (=> b!5254228 m!6297050))

(assert (=> b!5254228 m!6297040))

(declare-fun m!6297052 () Bool)

(assert (=> b!5254228 m!6297052))

(declare-fun m!6297054 () Bool)

(assert (=> b!5254216 m!6297054))

(declare-fun m!6297056 () Bool)

(assert (=> b!5254229 m!6297056))

(declare-fun m!6297058 () Bool)

(assert (=> b!5254236 m!6297058))

(declare-fun m!6297060 () Bool)

(assert (=> b!5254217 m!6297060))

(declare-fun m!6297062 () Bool)

(assert (=> b!5254217 m!6297062))

(declare-fun m!6297064 () Bool)

(assert (=> b!5254217 m!6297064))

(declare-fun m!6297066 () Bool)

(assert (=> b!5254217 m!6297066))

(declare-fun m!6297068 () Bool)

(assert (=> b!5254217 m!6297068))

(declare-fun m!6297070 () Bool)

(assert (=> b!5254217 m!6297070))

(assert (=> b!5254217 m!6297054))

(declare-fun m!6297072 () Bool)

(assert (=> b!5254217 m!6297072))

(declare-fun m!6297074 () Bool)

(assert (=> b!5254217 m!6297074))

(declare-fun m!6297076 () Bool)

(assert (=> b!5254217 m!6297076))

(declare-fun m!6297078 () Bool)

(assert (=> b!5254217 m!6297078))

(declare-fun m!6297080 () Bool)

(assert (=> b!5254234 m!6297080))

(declare-fun m!6297082 () Bool)

(assert (=> b!5254234 m!6297082))

(assert (=> b!5254221 m!6297058))

(declare-fun m!6297084 () Bool)

(assert (=> b!5254241 m!6297084))

(declare-fun m!6297086 () Bool)

(assert (=> b!5254241 m!6297086))

(declare-fun m!6297088 () Bool)

(assert (=> b!5254241 m!6297088))

(declare-fun m!6297090 () Bool)

(assert (=> b!5254241 m!6297090))

(declare-fun m!6297092 () Bool)

(assert (=> b!5254241 m!6297092))

(declare-fun m!6297094 () Bool)

(assert (=> b!5254241 m!6297094))

(declare-fun m!6297096 () Bool)

(assert (=> b!5254241 m!6297096))

(declare-fun m!6297098 () Bool)

(assert (=> b!5254241 m!6297098))

(declare-fun m!6297100 () Bool)

(assert (=> b!5254243 m!6297100))

(declare-fun m!6297102 () Bool)

(assert (=> b!5254227 m!6297102))

(declare-fun m!6297104 () Bool)

(assert (=> b!5254227 m!6297104))

(declare-fun m!6297106 () Bool)

(assert (=> b!5254215 m!6297106))

(declare-fun m!6297108 () Bool)

(assert (=> start!555056 m!6297108))

(declare-fun m!6297110 () Bool)

(assert (=> b!5254214 m!6297110))

(declare-fun m!6297112 () Bool)

(assert (=> b!5254245 m!6297112))

(assert (=> b!5254245 m!6297106))

(declare-fun m!6297114 () Bool)

(assert (=> b!5254245 m!6297114))

(declare-fun m!6297116 () Bool)

(assert (=> b!5254226 m!6297116))

(declare-fun m!6297118 () Bool)

(assert (=> b!5254246 m!6297118))

(declare-fun m!6297120 () Bool)

(assert (=> b!5254246 m!6297120))

(declare-fun m!6297122 () Bool)

(assert (=> b!5254246 m!6297122))

(declare-fun m!6297124 () Bool)

(assert (=> b!5254246 m!6297124))

(declare-fun m!6297126 () Bool)

(assert (=> b!5254246 m!6297126))

(declare-fun m!6297128 () Bool)

(assert (=> b!5254246 m!6297128))

(declare-fun m!6297130 () Bool)

(assert (=> b!5254246 m!6297130))

(declare-fun m!6297132 () Bool)

(assert (=> b!5254246 m!6297132))

(declare-fun m!6297134 () Bool)

(assert (=> b!5254246 m!6297134))

(declare-fun m!6297136 () Bool)

(assert (=> b!5254246 m!6297136))

(declare-fun m!6297138 () Bool)

(assert (=> b!5254246 m!6297138))

(declare-fun m!6297140 () Bool)

(assert (=> b!5254246 m!6297140))

(declare-fun m!6297142 () Bool)

(assert (=> b!5254249 m!6297142))

(assert (=> b!5254249 m!6297142))

(declare-fun m!6297144 () Bool)

(assert (=> b!5254249 m!6297144))

(declare-fun m!6297146 () Bool)

(assert (=> b!5254244 m!6297146))

(declare-fun m!6297148 () Bool)

(assert (=> b!5254230 m!6297148))

(declare-fun m!6297150 () Bool)

(assert (=> b!5254230 m!6297150))

(declare-fun m!6297152 () Bool)

(assert (=> b!5254247 m!6297152))

(declare-fun m!6297154 () Bool)

(assert (=> b!5254247 m!6297154))

(declare-fun m!6297156 () Bool)

(assert (=> b!5254247 m!6297156))

(declare-fun m!6297158 () Bool)

(assert (=> b!5254247 m!6297158))

(declare-fun m!6297160 () Bool)

(assert (=> b!5254247 m!6297160))

(assert (=> b!5254247 m!6297152))

(assert (=> b!5254247 m!6297154))

(declare-fun m!6297162 () Bool)

(assert (=> b!5254247 m!6297162))

(declare-fun m!6297164 () Bool)

(assert (=> b!5254240 m!6297164))

(declare-fun m!6297166 () Bool)

(assert (=> b!5254240 m!6297166))

(declare-fun m!6297168 () Bool)

(assert (=> b!5254240 m!6297168))

(declare-fun m!6297170 () Bool)

(assert (=> b!5254232 m!6297170))

(declare-fun m!6297172 () Bool)

(assert (=> b!5254232 m!6297172))

(declare-fun m!6297174 () Bool)

(assert (=> b!5254232 m!6297174))

(declare-fun m!6297176 () Bool)

(assert (=> b!5254232 m!6297176))

(declare-fun m!6297178 () Bool)

(assert (=> b!5254232 m!6297178))

(declare-fun m!6297180 () Bool)

(assert (=> b!5254232 m!6297180))

(declare-fun m!6297182 () Bool)

(assert (=> b!5254232 m!6297182))

(declare-fun m!6297184 () Bool)

(assert (=> setNonEmpty!33566 m!6297184))

(assert (=> b!5254218 m!6297106))

(assert (=> b!5254239 m!6297058))

(declare-fun m!6297186 () Bool)

(assert (=> b!5254235 m!6297186))

(declare-fun m!6297188 () Bool)

(assert (=> b!5254250 m!6297188))

(push 1)

(assert (not b!5254217))

(assert (not b!5254236))

(assert (not b!5254233))

(assert (not b!5254253))

(assert (not b!5254249))

(assert (not b!5254244))

(assert (not b!5254226))

(assert (not b!5254220))

(assert (not b!5254234))

(assert (not b!5254251))

(assert (not b!5254221))

(assert (not b!5254252))

(assert (not b!5254247))

(assert (not b!5254216))

(assert (not b!5254241))

(assert (not b!5254245))

(assert (not b!5254215))

(assert (not b!5254214))

(assert (not setNonEmpty!33566))

(assert (not b!5254254))

(assert (not b!5254223))

(assert (not b!5254230))

(assert (not b!5254250))

(assert (not b!5254219))

(assert tp_is_empty!38989)

(assert (not b!5254246))

(assert (not b!5254218))

(assert (not start!555056))

(assert (not b!5254232))

(assert (not b!5254229))

(assert (not b!5254227))

(assert (not b!5254228))

(assert (not b!5254240))

(assert (not b!5254243))

(assert (not b!5254239))

(assert (not b!5254235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1691890 () Bool)

(declare-fun c!909074 () Bool)

(declare-fun isEmpty!32721 (List!60905) Bool)

(assert (=> d!1691890 (= c!909074 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3268837 () Bool)

(assert (=> d!1691890 (= (matchZipper!1112 lt!2153466 (t!374088 s!2326)) e!3268837)))

(declare-fun b!5254406 () Bool)

(declare-fun nullableZipper!1273 ((Set Context!8504)) Bool)

(assert (=> b!5254406 (= e!3268837 (nullableZipper!1273 lt!2153466))))

(declare-fun b!5254407 () Bool)

(declare-fun derivationStepZipper!1117 ((Set Context!8504) C!30006) (Set Context!8504))

(declare-fun head!11264 (List!60905) C!30006)

(declare-fun tail!10361 (List!60905) List!60905)

(assert (=> b!5254407 (= e!3268837 (matchZipper!1112 (derivationStepZipper!1117 lt!2153466 (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1691890 c!909074) b!5254406))

(assert (= (and d!1691890 (not c!909074)) b!5254407))

(declare-fun m!6297340 () Bool)

(assert (=> d!1691890 m!6297340))

(declare-fun m!6297342 () Bool)

(assert (=> b!5254406 m!6297342))

(declare-fun m!6297344 () Bool)

(assert (=> b!5254407 m!6297344))

(assert (=> b!5254407 m!6297344))

(declare-fun m!6297346 () Bool)

(assert (=> b!5254407 m!6297346))

(declare-fun m!6297348 () Bool)

(assert (=> b!5254407 m!6297348))

(assert (=> b!5254407 m!6297346))

(assert (=> b!5254407 m!6297348))

(declare-fun m!6297350 () Bool)

(assert (=> b!5254407 m!6297350))

(assert (=> b!5254218 d!1691890))

(declare-fun d!1691892 () Bool)

(declare-fun c!909075 () Bool)

(assert (=> d!1691892 (= c!909075 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3268838 () Bool)

(assert (=> d!1691892 (= (matchZipper!1112 lt!2153482 (t!374088 s!2326)) e!3268838)))

(declare-fun b!5254408 () Bool)

(assert (=> b!5254408 (= e!3268838 (nullableZipper!1273 lt!2153482))))

(declare-fun b!5254409 () Bool)

(assert (=> b!5254409 (= e!3268838 (matchZipper!1112 (derivationStepZipper!1117 lt!2153482 (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1691892 c!909075) b!5254408))

(assert (= (and d!1691892 (not c!909075)) b!5254409))

(assert (=> d!1691892 m!6297340))

(declare-fun m!6297352 () Bool)

(assert (=> b!5254408 m!6297352))

(assert (=> b!5254409 m!6297344))

(assert (=> b!5254409 m!6297344))

(declare-fun m!6297354 () Bool)

(assert (=> b!5254409 m!6297354))

(assert (=> b!5254409 m!6297348))

(assert (=> b!5254409 m!6297354))

(assert (=> b!5254409 m!6297348))

(declare-fun m!6297356 () Bool)

(assert (=> b!5254409 m!6297356))

(assert (=> b!5254239 d!1691892))

(declare-fun d!1691894 () Bool)

(declare-fun lambda!264724 () Int)

(declare-fun forall!14282 (List!60903 Int) Bool)

(assert (=> d!1691894 (= (inv!80418 setElem!33566) (forall!14282 (exprs!4752 setElem!33566) lambda!264724))))

(declare-fun bs!1218555 () Bool)

(assert (= bs!1218555 d!1691894))

(declare-fun m!6297358 () Bool)

(assert (=> bs!1218555 m!6297358))

(assert (=> setNonEmpty!33566 d!1691894))

(declare-fun bs!1218556 () Bool)

(declare-fun d!1691896 () Bool)

(assert (= bs!1218556 (and d!1691896 d!1691894)))

(declare-fun lambda!264727 () Int)

(assert (=> bs!1218556 (= lambda!264727 lambda!264724)))

(declare-fun e!3268851 () Bool)

(assert (=> d!1691896 e!3268851))

(declare-fun res!2229920 () Bool)

(assert (=> d!1691896 (=> (not res!2229920) (not e!3268851))))

(declare-fun lt!2153677 () Regex!14868)

(assert (=> d!1691896 (= res!2229920 (validRegex!6604 lt!2153677))))

(declare-fun e!3268854 () Regex!14868)

(assert (=> d!1691896 (= lt!2153677 e!3268854)))

(declare-fun c!909084 () Bool)

(declare-fun e!3268855 () Bool)

(assert (=> d!1691896 (= c!909084 e!3268855)))

(declare-fun res!2229921 () Bool)

(assert (=> d!1691896 (=> (not res!2229921) (not e!3268855))))

(assert (=> d!1691896 (= res!2229921 (is-Cons!60779 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(assert (=> d!1691896 (forall!14282 (t!374086 (exprs!4752 (h!67228 zl!343))) lambda!264727)))

(assert (=> d!1691896 (= (generalisedConcat!537 (t!374086 (exprs!4752 (h!67228 zl!343)))) lt!2153677)))

(declare-fun b!5254430 () Bool)

(declare-fun e!3268852 () Regex!14868)

(assert (=> b!5254430 (= e!3268854 e!3268852)))

(declare-fun c!909087 () Bool)

(assert (=> b!5254430 (= c!909087 (is-Cons!60779 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254431 () Bool)

(declare-fun e!3268856 () Bool)

(declare-fun isConcat!331 (Regex!14868) Bool)

(assert (=> b!5254431 (= e!3268856 (isConcat!331 lt!2153677))))

(declare-fun b!5254432 () Bool)

(assert (=> b!5254432 (= e!3268852 (Concat!23713 (h!67227 (t!374086 (exprs!4752 (h!67228 zl!343)))) (generalisedConcat!537 (t!374086 (t!374086 (exprs!4752 (h!67228 zl!343)))))))))

(declare-fun b!5254433 () Bool)

(declare-fun e!3268853 () Bool)

(assert (=> b!5254433 (= e!3268851 e!3268853)))

(declare-fun c!909085 () Bool)

(assert (=> b!5254433 (= c!909085 (isEmpty!32718 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254434 () Bool)

(assert (=> b!5254434 (= e!3268854 (h!67227 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254435 () Bool)

(assert (=> b!5254435 (= e!3268853 e!3268856)))

(declare-fun c!909086 () Bool)

(declare-fun tail!10362 (List!60903) List!60903)

(assert (=> b!5254435 (= c!909086 (isEmpty!32718 (tail!10362 (t!374086 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun b!5254436 () Bool)

(declare-fun isEmptyExpr!808 (Regex!14868) Bool)

(assert (=> b!5254436 (= e!3268853 (isEmptyExpr!808 lt!2153677))))

(declare-fun b!5254437 () Bool)

(assert (=> b!5254437 (= e!3268855 (isEmpty!32718 (t!374086 (t!374086 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun b!5254438 () Bool)

(assert (=> b!5254438 (= e!3268852 EmptyExpr!14868)))

(declare-fun b!5254439 () Bool)

(declare-fun head!11265 (List!60903) Regex!14868)

(assert (=> b!5254439 (= e!3268856 (= lt!2153677 (head!11265 (t!374086 (exprs!4752 (h!67228 zl!343))))))))

(assert (= (and d!1691896 res!2229921) b!5254437))

(assert (= (and d!1691896 c!909084) b!5254434))

(assert (= (and d!1691896 (not c!909084)) b!5254430))

(assert (= (and b!5254430 c!909087) b!5254432))

(assert (= (and b!5254430 (not c!909087)) b!5254438))

(assert (= (and d!1691896 res!2229920) b!5254433))

(assert (= (and b!5254433 c!909085) b!5254436))

(assert (= (and b!5254433 (not c!909085)) b!5254435))

(assert (= (and b!5254435 c!909086) b!5254439))

(assert (= (and b!5254435 (not c!909086)) b!5254431))

(declare-fun m!6297360 () Bool)

(assert (=> b!5254431 m!6297360))

(declare-fun m!6297362 () Bool)

(assert (=> b!5254432 m!6297362))

(declare-fun m!6297364 () Bool)

(assert (=> b!5254439 m!6297364))

(declare-fun m!6297366 () Bool)

(assert (=> d!1691896 m!6297366))

(declare-fun m!6297368 () Bool)

(assert (=> d!1691896 m!6297368))

(declare-fun m!6297370 () Bool)

(assert (=> b!5254436 m!6297370))

(declare-fun m!6297372 () Bool)

(assert (=> b!5254435 m!6297372))

(assert (=> b!5254435 m!6297372))

(declare-fun m!6297374 () Bool)

(assert (=> b!5254435 m!6297374))

(declare-fun m!6297376 () Bool)

(assert (=> b!5254437 m!6297376))

(assert (=> b!5254433 m!6297186))

(assert (=> b!5254219 d!1691896))

(declare-fun bs!1218557 () Bool)

(declare-fun b!5254472 () Bool)

(assert (= bs!1218557 (and b!5254472 b!5254247)))

(declare-fun lambda!264732 () Int)

(assert (=> bs!1218557 (not (= lambda!264732 lambda!264704))))

(assert (=> bs!1218557 (not (= lambda!264732 lambda!264705))))

(assert (=> b!5254472 true))

(assert (=> b!5254472 true))

(declare-fun bs!1218558 () Bool)

(declare-fun b!5254480 () Bool)

(assert (= bs!1218558 (and b!5254480 b!5254247)))

(declare-fun lambda!264733 () Int)

(assert (=> bs!1218558 (not (= lambda!264733 lambda!264704))))

(assert (=> bs!1218558 (= lambda!264733 lambda!264705)))

(declare-fun bs!1218559 () Bool)

(assert (= bs!1218559 (and b!5254480 b!5254472)))

(assert (=> bs!1218559 (not (= lambda!264733 lambda!264732))))

(assert (=> b!5254480 true))

(assert (=> b!5254480 true))

(declare-fun e!3268877 () Bool)

(declare-fun call!372318 () Bool)

(assert (=> b!5254472 (= e!3268877 call!372318)))

(declare-fun b!5254473 () Bool)

(declare-fun e!3268881 () Bool)

(assert (=> b!5254473 (= e!3268881 (matchRSpec!1971 (regTwo!30249 r!7292) s!2326))))

(declare-fun b!5254474 () Bool)

(declare-fun e!3268876 () Bool)

(assert (=> b!5254474 (= e!3268876 e!3268881)))

(declare-fun res!2229940 () Bool)

(assert (=> b!5254474 (= res!2229940 (matchRSpec!1971 (regOne!30249 r!7292) s!2326))))

(assert (=> b!5254474 (=> res!2229940 e!3268881)))

(declare-fun b!5254475 () Bool)

(declare-fun e!3268880 () Bool)

(declare-fun e!3268878 () Bool)

(assert (=> b!5254475 (= e!3268880 e!3268878)))

(declare-fun res!2229938 () Bool)

(assert (=> b!5254475 (= res!2229938 (not (is-EmptyLang!14868 r!7292)))))

(assert (=> b!5254475 (=> (not res!2229938) (not e!3268878))))

(declare-fun b!5254476 () Bool)

(declare-fun e!3268875 () Bool)

(assert (=> b!5254476 (= e!3268875 (= s!2326 (Cons!60781 (c!909054 r!7292) Nil!60781)))))

(declare-fun bm!372312 () Bool)

(declare-fun call!372317 () Bool)

(assert (=> bm!372312 (= call!372317 (isEmpty!32721 s!2326))))

(declare-fun b!5254477 () Bool)

(declare-fun c!909098 () Bool)

(assert (=> b!5254477 (= c!909098 (is-Union!14868 r!7292))))

(assert (=> b!5254477 (= e!3268875 e!3268876)))

(declare-fun d!1691898 () Bool)

(declare-fun c!909097 () Bool)

(assert (=> d!1691898 (= c!909097 (is-EmptyExpr!14868 r!7292))))

(assert (=> d!1691898 (= (matchRSpec!1971 r!7292 s!2326) e!3268880)))

(declare-fun b!5254478 () Bool)

(declare-fun c!909099 () Bool)

(assert (=> b!5254478 (= c!909099 (is-ElementMatch!14868 r!7292))))

(assert (=> b!5254478 (= e!3268878 e!3268875)))

(declare-fun b!5254479 () Bool)

(assert (=> b!5254479 (= e!3268880 call!372317)))

(declare-fun e!3268879 () Bool)

(assert (=> b!5254480 (= e!3268879 call!372318)))

(declare-fun b!5254481 () Bool)

(declare-fun res!2229939 () Bool)

(assert (=> b!5254481 (=> res!2229939 e!3268877)))

(assert (=> b!5254481 (= res!2229939 call!372317)))

(assert (=> b!5254481 (= e!3268879 e!3268877)))

(declare-fun c!909096 () Bool)

(declare-fun bm!372313 () Bool)

(assert (=> bm!372313 (= call!372318 (Exists!2049 (ite c!909096 lambda!264732 lambda!264733)))))

(declare-fun b!5254482 () Bool)

(assert (=> b!5254482 (= e!3268876 e!3268879)))

(assert (=> b!5254482 (= c!909096 (is-Star!14868 r!7292))))

(assert (= (and d!1691898 c!909097) b!5254479))

(assert (= (and d!1691898 (not c!909097)) b!5254475))

(assert (= (and b!5254475 res!2229938) b!5254478))

(assert (= (and b!5254478 c!909099) b!5254476))

(assert (= (and b!5254478 (not c!909099)) b!5254477))

(assert (= (and b!5254477 c!909098) b!5254474))

(assert (= (and b!5254477 (not c!909098)) b!5254482))

(assert (= (and b!5254474 (not res!2229940)) b!5254473))

(assert (= (and b!5254482 c!909096) b!5254481))

(assert (= (and b!5254482 (not c!909096)) b!5254480))

(assert (= (and b!5254481 (not res!2229939)) b!5254472))

(assert (= (or b!5254472 b!5254480) bm!372313))

(assert (= (or b!5254479 b!5254481) bm!372312))

(declare-fun m!6297378 () Bool)

(assert (=> b!5254473 m!6297378))

(declare-fun m!6297380 () Bool)

(assert (=> b!5254474 m!6297380))

(declare-fun m!6297382 () Bool)

(assert (=> bm!372312 m!6297382))

(declare-fun m!6297384 () Bool)

(assert (=> bm!372313 m!6297384))

(assert (=> b!5254240 d!1691898))

(declare-fun b!5254511 () Bool)

(declare-fun res!2229961 () Bool)

(declare-fun e!3268900 () Bool)

(assert (=> b!5254511 (=> res!2229961 e!3268900)))

(assert (=> b!5254511 (= res!2229961 (not (is-ElementMatch!14868 r!7292)))))

(declare-fun e!3268898 () Bool)

(assert (=> b!5254511 (= e!3268898 e!3268900)))

(declare-fun b!5254512 () Bool)

(declare-fun e!3268896 () Bool)

(assert (=> b!5254512 (= e!3268896 (nullable!5037 r!7292))))

(declare-fun b!5254513 () Bool)

(declare-fun e!3268902 () Bool)

(assert (=> b!5254513 (= e!3268900 e!3268902)))

(declare-fun res!2229959 () Bool)

(assert (=> b!5254513 (=> (not res!2229959) (not e!3268902))))

(declare-fun lt!2153680 () Bool)

(assert (=> b!5254513 (= res!2229959 (not lt!2153680))))

(declare-fun b!5254514 () Bool)

(declare-fun res!2229963 () Bool)

(declare-fun e!3268901 () Bool)

(assert (=> b!5254514 (=> (not res!2229963) (not e!3268901))))

(declare-fun call!372321 () Bool)

(assert (=> b!5254514 (= res!2229963 (not call!372321))))

(declare-fun b!5254515 () Bool)

(declare-fun res!2229962 () Bool)

(assert (=> b!5254515 (=> (not res!2229962) (not e!3268901))))

(assert (=> b!5254515 (= res!2229962 (isEmpty!32721 (tail!10361 s!2326)))))

(declare-fun b!5254516 () Bool)

(declare-fun e!3268899 () Bool)

(assert (=> b!5254516 (= e!3268899 (= lt!2153680 call!372321))))

(declare-fun d!1691900 () Bool)

(assert (=> d!1691900 e!3268899))

(declare-fun c!909106 () Bool)

(assert (=> d!1691900 (= c!909106 (is-EmptyExpr!14868 r!7292))))

(assert (=> d!1691900 (= lt!2153680 e!3268896)))

(declare-fun c!909108 () Bool)

(assert (=> d!1691900 (= c!909108 (isEmpty!32721 s!2326))))

(assert (=> d!1691900 (validRegex!6604 r!7292)))

(assert (=> d!1691900 (= (matchR!7053 r!7292 s!2326) lt!2153680)))

(declare-fun b!5254517 () Bool)

(declare-fun e!3268897 () Bool)

(assert (=> b!5254517 (= e!3268897 (not (= (head!11264 s!2326) (c!909054 r!7292))))))

(declare-fun bm!372316 () Bool)

(assert (=> bm!372316 (= call!372321 (isEmpty!32721 s!2326))))

(declare-fun b!5254518 () Bool)

(declare-fun res!2229960 () Bool)

(assert (=> b!5254518 (=> res!2229960 e!3268900)))

(assert (=> b!5254518 (= res!2229960 e!3268901)))

(declare-fun res!2229957 () Bool)

(assert (=> b!5254518 (=> (not res!2229957) (not e!3268901))))

(assert (=> b!5254518 (= res!2229957 lt!2153680)))

(declare-fun b!5254519 () Bool)

(assert (=> b!5254519 (= e!3268902 e!3268897)))

(declare-fun res!2229964 () Bool)

(assert (=> b!5254519 (=> res!2229964 e!3268897)))

(assert (=> b!5254519 (= res!2229964 call!372321)))

(declare-fun b!5254520 () Bool)

(assert (=> b!5254520 (= e!3268898 (not lt!2153680))))

(declare-fun b!5254521 () Bool)

(assert (=> b!5254521 (= e!3268899 e!3268898)))

(declare-fun c!909107 () Bool)

(assert (=> b!5254521 (= c!909107 (is-EmptyLang!14868 r!7292))))

(declare-fun b!5254522 () Bool)

(assert (=> b!5254522 (= e!3268901 (= (head!11264 s!2326) (c!909054 r!7292)))))

(declare-fun b!5254523 () Bool)

(declare-fun res!2229958 () Bool)

(assert (=> b!5254523 (=> res!2229958 e!3268897)))

(assert (=> b!5254523 (= res!2229958 (not (isEmpty!32721 (tail!10361 s!2326))))))

(declare-fun b!5254524 () Bool)

(declare-fun derivativeStep!4094 (Regex!14868 C!30006) Regex!14868)

(assert (=> b!5254524 (= e!3268896 (matchR!7053 (derivativeStep!4094 r!7292 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691900 c!909108) b!5254512))

(assert (= (and d!1691900 (not c!909108)) b!5254524))

(assert (= (and d!1691900 c!909106) b!5254516))

(assert (= (and d!1691900 (not c!909106)) b!5254521))

(assert (= (and b!5254521 c!909107) b!5254520))

(assert (= (and b!5254521 (not c!909107)) b!5254511))

(assert (= (and b!5254511 (not res!2229961)) b!5254518))

(assert (= (and b!5254518 res!2229957) b!5254514))

(assert (= (and b!5254514 res!2229963) b!5254515))

(assert (= (and b!5254515 res!2229962) b!5254522))

(assert (= (and b!5254518 (not res!2229960)) b!5254513))

(assert (= (and b!5254513 res!2229959) b!5254519))

(assert (= (and b!5254519 (not res!2229964)) b!5254523))

(assert (= (and b!5254523 (not res!2229958)) b!5254517))

(assert (= (or b!5254516 b!5254514 b!5254519) bm!372316))

(declare-fun m!6297386 () Bool)

(assert (=> b!5254524 m!6297386))

(assert (=> b!5254524 m!6297386))

(declare-fun m!6297388 () Bool)

(assert (=> b!5254524 m!6297388))

(declare-fun m!6297390 () Bool)

(assert (=> b!5254524 m!6297390))

(assert (=> b!5254524 m!6297388))

(assert (=> b!5254524 m!6297390))

(declare-fun m!6297392 () Bool)

(assert (=> b!5254524 m!6297392))

(assert (=> d!1691900 m!6297382))

(assert (=> d!1691900 m!6297108))

(assert (=> b!5254515 m!6297390))

(assert (=> b!5254515 m!6297390))

(declare-fun m!6297394 () Bool)

(assert (=> b!5254515 m!6297394))

(assert (=> b!5254522 m!6297386))

(assert (=> b!5254517 m!6297386))

(declare-fun m!6297396 () Bool)

(assert (=> b!5254512 m!6297396))

(assert (=> b!5254523 m!6297390))

(assert (=> b!5254523 m!6297390))

(assert (=> b!5254523 m!6297394))

(assert (=> bm!372316 m!6297382))

(assert (=> b!5254240 d!1691900))

(declare-fun d!1691902 () Bool)

(assert (=> d!1691902 (= (matchR!7053 r!7292 s!2326) (matchRSpec!1971 r!7292 s!2326))))

(declare-fun lt!2153683 () Unit!152958)

(declare-fun choose!39163 (Regex!14868 List!60905) Unit!152958)

(assert (=> d!1691902 (= lt!2153683 (choose!39163 r!7292 s!2326))))

(assert (=> d!1691902 (validRegex!6604 r!7292)))

(assert (=> d!1691902 (= (mainMatchTheorem!1971 r!7292 s!2326) lt!2153683)))

(declare-fun bs!1218560 () Bool)

(assert (= bs!1218560 d!1691902))

(assert (=> bs!1218560 m!6297166))

(assert (=> bs!1218560 m!6297164))

(declare-fun m!6297398 () Bool)

(assert (=> bs!1218560 m!6297398))

(assert (=> bs!1218560 m!6297108))

(assert (=> b!5254240 d!1691902))

(declare-fun d!1691904 () Bool)

(declare-fun c!909109 () Bool)

(assert (=> d!1691904 (= c!909109 (isEmpty!32721 s!2326))))

(declare-fun e!3268903 () Bool)

(assert (=> d!1691904 (= (matchZipper!1112 lt!2153506 s!2326) e!3268903)))

(declare-fun b!5254525 () Bool)

(assert (=> b!5254525 (= e!3268903 (nullableZipper!1273 lt!2153506))))

(declare-fun b!5254526 () Bool)

(assert (=> b!5254526 (= e!3268903 (matchZipper!1112 (derivationStepZipper!1117 lt!2153506 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691904 c!909109) b!5254525))

(assert (= (and d!1691904 (not c!909109)) b!5254526))

(assert (=> d!1691904 m!6297382))

(declare-fun m!6297400 () Bool)

(assert (=> b!5254525 m!6297400))

(assert (=> b!5254526 m!6297386))

(assert (=> b!5254526 m!6297386))

(declare-fun m!6297402 () Bool)

(assert (=> b!5254526 m!6297402))

(assert (=> b!5254526 m!6297390))

(assert (=> b!5254526 m!6297402))

(assert (=> b!5254526 m!6297390))

(declare-fun m!6297404 () Bool)

(assert (=> b!5254526 m!6297404))

(assert (=> b!5254216 d!1691904))

(declare-fun bs!1218561 () Bool)

(declare-fun d!1691906 () Bool)

(assert (= bs!1218561 (and d!1691906 d!1691894)))

(declare-fun lambda!264734 () Int)

(assert (=> bs!1218561 (= lambda!264734 lambda!264724)))

(declare-fun bs!1218562 () Bool)

(assert (= bs!1218562 (and d!1691906 d!1691896)))

(assert (=> bs!1218562 (= lambda!264734 lambda!264727)))

(declare-fun e!3268904 () Bool)

(assert (=> d!1691906 e!3268904))

(declare-fun res!2229965 () Bool)

(assert (=> d!1691906 (=> (not res!2229965) (not e!3268904))))

(declare-fun lt!2153684 () Regex!14868)

(assert (=> d!1691906 (= res!2229965 (validRegex!6604 lt!2153684))))

(declare-fun e!3268907 () Regex!14868)

(assert (=> d!1691906 (= lt!2153684 e!3268907)))

(declare-fun c!909110 () Bool)

(declare-fun e!3268908 () Bool)

(assert (=> d!1691906 (= c!909110 e!3268908)))

(declare-fun res!2229966 () Bool)

(assert (=> d!1691906 (=> (not res!2229966) (not e!3268908))))

(assert (=> d!1691906 (= res!2229966 (is-Cons!60779 lt!2153500))))

(assert (=> d!1691906 (forall!14282 lt!2153500 lambda!264734)))

(assert (=> d!1691906 (= (generalisedConcat!537 lt!2153500) lt!2153684)))

(declare-fun b!5254527 () Bool)

(declare-fun e!3268905 () Regex!14868)

(assert (=> b!5254527 (= e!3268907 e!3268905)))

(declare-fun c!909113 () Bool)

(assert (=> b!5254527 (= c!909113 (is-Cons!60779 lt!2153500))))

(declare-fun b!5254528 () Bool)

(declare-fun e!3268909 () Bool)

(assert (=> b!5254528 (= e!3268909 (isConcat!331 lt!2153684))))

(declare-fun b!5254529 () Bool)

(assert (=> b!5254529 (= e!3268905 (Concat!23713 (h!67227 lt!2153500) (generalisedConcat!537 (t!374086 lt!2153500))))))

(declare-fun b!5254530 () Bool)

(declare-fun e!3268906 () Bool)

(assert (=> b!5254530 (= e!3268904 e!3268906)))

(declare-fun c!909111 () Bool)

(assert (=> b!5254530 (= c!909111 (isEmpty!32718 lt!2153500))))

(declare-fun b!5254531 () Bool)

(assert (=> b!5254531 (= e!3268907 (h!67227 lt!2153500))))

(declare-fun b!5254532 () Bool)

(assert (=> b!5254532 (= e!3268906 e!3268909)))

(declare-fun c!909112 () Bool)

(assert (=> b!5254532 (= c!909112 (isEmpty!32718 (tail!10362 lt!2153500)))))

(declare-fun b!5254533 () Bool)

(assert (=> b!5254533 (= e!3268906 (isEmptyExpr!808 lt!2153684))))

(declare-fun b!5254534 () Bool)

(assert (=> b!5254534 (= e!3268908 (isEmpty!32718 (t!374086 lt!2153500)))))

(declare-fun b!5254535 () Bool)

(assert (=> b!5254535 (= e!3268905 EmptyExpr!14868)))

(declare-fun b!5254536 () Bool)

(assert (=> b!5254536 (= e!3268909 (= lt!2153684 (head!11265 lt!2153500)))))

(assert (= (and d!1691906 res!2229966) b!5254534))

(assert (= (and d!1691906 c!909110) b!5254531))

(assert (= (and d!1691906 (not c!909110)) b!5254527))

(assert (= (and b!5254527 c!909113) b!5254529))

(assert (= (and b!5254527 (not c!909113)) b!5254535))

(assert (= (and d!1691906 res!2229965) b!5254530))

(assert (= (and b!5254530 c!909111) b!5254533))

(assert (= (and b!5254530 (not c!909111)) b!5254532))

(assert (= (and b!5254532 c!909112) b!5254536))

(assert (= (and b!5254532 (not c!909112)) b!5254528))

(declare-fun m!6297406 () Bool)

(assert (=> b!5254528 m!6297406))

(declare-fun m!6297408 () Bool)

(assert (=> b!5254529 m!6297408))

(declare-fun m!6297410 () Bool)

(assert (=> b!5254536 m!6297410))

(declare-fun m!6297412 () Bool)

(assert (=> d!1691906 m!6297412))

(declare-fun m!6297414 () Bool)

(assert (=> d!1691906 m!6297414))

(declare-fun m!6297416 () Bool)

(assert (=> b!5254533 m!6297416))

(declare-fun m!6297418 () Bool)

(assert (=> b!5254532 m!6297418))

(assert (=> b!5254532 m!6297418))

(declare-fun m!6297420 () Bool)

(assert (=> b!5254532 m!6297420))

(declare-fun m!6297422 () Bool)

(assert (=> b!5254534 m!6297422))

(declare-fun m!6297424 () Bool)

(assert (=> b!5254530 m!6297424))

(assert (=> b!5254217 d!1691906))

(declare-fun d!1691908 () Bool)

(assert (=> d!1691908 (= (matchR!7053 lt!2153492 s!2326) (matchZipper!1112 lt!2153506 s!2326))))

(declare-fun lt!2153687 () Unit!152958)

(declare-fun choose!39164 ((Set Context!8504) List!60904 Regex!14868 List!60905) Unit!152958)

(assert (=> d!1691908 (= lt!2153687 (choose!39164 lt!2153506 lt!2153509 lt!2153492 s!2326))))

(assert (=> d!1691908 (validRegex!6604 lt!2153492)))

(assert (=> d!1691908 (= (theoremZipperRegexEquiv!302 lt!2153506 lt!2153509 lt!2153492 s!2326) lt!2153687)))

(declare-fun bs!1218563 () Bool)

(assert (= bs!1218563 d!1691908))

(assert (=> bs!1218563 m!6297060))

(assert (=> bs!1218563 m!6297054))

(declare-fun m!6297426 () Bool)

(assert (=> bs!1218563 m!6297426))

(declare-fun m!6297428 () Bool)

(assert (=> bs!1218563 m!6297428))

(assert (=> b!5254217 d!1691908))

(declare-fun bs!1218564 () Bool)

(declare-fun d!1691910 () Bool)

(assert (= bs!1218564 (and d!1691910 d!1691894)))

(declare-fun lambda!264735 () Int)

(assert (=> bs!1218564 (= lambda!264735 lambda!264724)))

(declare-fun bs!1218565 () Bool)

(assert (= bs!1218565 (and d!1691910 d!1691896)))

(assert (=> bs!1218565 (= lambda!264735 lambda!264727)))

(declare-fun bs!1218566 () Bool)

(assert (= bs!1218566 (and d!1691910 d!1691906)))

(assert (=> bs!1218566 (= lambda!264735 lambda!264734)))

(declare-fun e!3268910 () Bool)

(assert (=> d!1691910 e!3268910))

(declare-fun res!2229967 () Bool)

(assert (=> d!1691910 (=> (not res!2229967) (not e!3268910))))

(declare-fun lt!2153688 () Regex!14868)

(assert (=> d!1691910 (= res!2229967 (validRegex!6604 lt!2153688))))

(declare-fun e!3268913 () Regex!14868)

(assert (=> d!1691910 (= lt!2153688 e!3268913)))

(declare-fun c!909114 () Bool)

(declare-fun e!3268914 () Bool)

(assert (=> d!1691910 (= c!909114 e!3268914)))

(declare-fun res!2229968 () Bool)

(assert (=> d!1691910 (=> (not res!2229968) (not e!3268914))))

(assert (=> d!1691910 (= res!2229968 (is-Cons!60779 lt!2153496))))

(assert (=> d!1691910 (forall!14282 lt!2153496 lambda!264735)))

(assert (=> d!1691910 (= (generalisedConcat!537 lt!2153496) lt!2153688)))

(declare-fun b!5254537 () Bool)

(declare-fun e!3268911 () Regex!14868)

(assert (=> b!5254537 (= e!3268913 e!3268911)))

(declare-fun c!909117 () Bool)

(assert (=> b!5254537 (= c!909117 (is-Cons!60779 lt!2153496))))

(declare-fun b!5254538 () Bool)

(declare-fun e!3268915 () Bool)

(assert (=> b!5254538 (= e!3268915 (isConcat!331 lt!2153688))))

(declare-fun b!5254539 () Bool)

(assert (=> b!5254539 (= e!3268911 (Concat!23713 (h!67227 lt!2153496) (generalisedConcat!537 (t!374086 lt!2153496))))))

(declare-fun b!5254540 () Bool)

(declare-fun e!3268912 () Bool)

(assert (=> b!5254540 (= e!3268910 e!3268912)))

(declare-fun c!909115 () Bool)

(assert (=> b!5254540 (= c!909115 (isEmpty!32718 lt!2153496))))

(declare-fun b!5254541 () Bool)

(assert (=> b!5254541 (= e!3268913 (h!67227 lt!2153496))))

(declare-fun b!5254542 () Bool)

(assert (=> b!5254542 (= e!3268912 e!3268915)))

(declare-fun c!909116 () Bool)

(assert (=> b!5254542 (= c!909116 (isEmpty!32718 (tail!10362 lt!2153496)))))

(declare-fun b!5254543 () Bool)

(assert (=> b!5254543 (= e!3268912 (isEmptyExpr!808 lt!2153688))))

(declare-fun b!5254544 () Bool)

(assert (=> b!5254544 (= e!3268914 (isEmpty!32718 (t!374086 lt!2153496)))))

(declare-fun b!5254545 () Bool)

(assert (=> b!5254545 (= e!3268911 EmptyExpr!14868)))

(declare-fun b!5254546 () Bool)

(assert (=> b!5254546 (= e!3268915 (= lt!2153688 (head!11265 lt!2153496)))))

(assert (= (and d!1691910 res!2229968) b!5254544))

(assert (= (and d!1691910 c!909114) b!5254541))

(assert (= (and d!1691910 (not c!909114)) b!5254537))

(assert (= (and b!5254537 c!909117) b!5254539))

(assert (= (and b!5254537 (not c!909117)) b!5254545))

(assert (= (and d!1691910 res!2229967) b!5254540))

(assert (= (and b!5254540 c!909115) b!5254543))

(assert (= (and b!5254540 (not c!909115)) b!5254542))

(assert (= (and b!5254542 c!909116) b!5254546))

(assert (= (and b!5254542 (not c!909116)) b!5254538))

(declare-fun m!6297430 () Bool)

(assert (=> b!5254538 m!6297430))

(declare-fun m!6297432 () Bool)

(assert (=> b!5254539 m!6297432))

(declare-fun m!6297434 () Bool)

(assert (=> b!5254546 m!6297434))

(declare-fun m!6297436 () Bool)

(assert (=> d!1691910 m!6297436))

(declare-fun m!6297438 () Bool)

(assert (=> d!1691910 m!6297438))

(declare-fun m!6297440 () Bool)

(assert (=> b!5254543 m!6297440))

(declare-fun m!6297442 () Bool)

(assert (=> b!5254542 m!6297442))

(assert (=> b!5254542 m!6297442))

(declare-fun m!6297444 () Bool)

(assert (=> b!5254542 m!6297444))

(declare-fun m!6297446 () Bool)

(assert (=> b!5254544 m!6297446))

(declare-fun m!6297448 () Bool)

(assert (=> b!5254540 m!6297448))

(assert (=> b!5254217 d!1691910))

(assert (=> b!5254217 d!1691904))

(declare-fun bs!1218567 () Bool)

(declare-fun b!5254547 () Bool)

(assert (= bs!1218567 (and b!5254547 b!5254247)))

(declare-fun lambda!264736 () Int)

(assert (=> bs!1218567 (not (= lambda!264736 lambda!264704))))

(assert (=> bs!1218567 (not (= lambda!264736 lambda!264705))))

(declare-fun bs!1218568 () Bool)

(assert (= bs!1218568 (and b!5254547 b!5254472)))

(assert (=> bs!1218568 (= (and (= (reg!15197 lt!2153503) (reg!15197 r!7292)) (= lt!2153503 r!7292)) (= lambda!264736 lambda!264732))))

(declare-fun bs!1218569 () Bool)

(assert (= bs!1218569 (and b!5254547 b!5254480)))

(assert (=> bs!1218569 (not (= lambda!264736 lambda!264733))))

(assert (=> b!5254547 true))

(assert (=> b!5254547 true))

(declare-fun bs!1218570 () Bool)

(declare-fun b!5254555 () Bool)

(assert (= bs!1218570 (and b!5254555 b!5254547)))

(declare-fun lambda!264737 () Int)

(assert (=> bs!1218570 (not (= lambda!264737 lambda!264736))))

(declare-fun bs!1218571 () Bool)

(assert (= bs!1218571 (and b!5254555 b!5254247)))

(assert (=> bs!1218571 (= (and (= (regOne!30248 lt!2153503) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153503) (regTwo!30248 r!7292))) (= lambda!264737 lambda!264705))))

(declare-fun bs!1218572 () Bool)

(assert (= bs!1218572 (and b!5254555 b!5254472)))

(assert (=> bs!1218572 (not (= lambda!264737 lambda!264732))))

(declare-fun bs!1218573 () Bool)

(assert (= bs!1218573 (and b!5254555 b!5254480)))

(assert (=> bs!1218573 (= (and (= (regOne!30248 lt!2153503) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153503) (regTwo!30248 r!7292))) (= lambda!264737 lambda!264733))))

(assert (=> bs!1218571 (not (= lambda!264737 lambda!264704))))

(assert (=> b!5254555 true))

(assert (=> b!5254555 true))

(declare-fun e!3268918 () Bool)

(declare-fun call!372323 () Bool)

(assert (=> b!5254547 (= e!3268918 call!372323)))

(declare-fun b!5254548 () Bool)

(declare-fun e!3268922 () Bool)

(assert (=> b!5254548 (= e!3268922 (matchRSpec!1971 (regTwo!30249 lt!2153503) s!2326))))

(declare-fun b!5254549 () Bool)

(declare-fun e!3268917 () Bool)

(assert (=> b!5254549 (= e!3268917 e!3268922)))

(declare-fun res!2229971 () Bool)

(assert (=> b!5254549 (= res!2229971 (matchRSpec!1971 (regOne!30249 lt!2153503) s!2326))))

(assert (=> b!5254549 (=> res!2229971 e!3268922)))

(declare-fun b!5254550 () Bool)

(declare-fun e!3268921 () Bool)

(declare-fun e!3268919 () Bool)

(assert (=> b!5254550 (= e!3268921 e!3268919)))

(declare-fun res!2229969 () Bool)

(assert (=> b!5254550 (= res!2229969 (not (is-EmptyLang!14868 lt!2153503)))))

(assert (=> b!5254550 (=> (not res!2229969) (not e!3268919))))

(declare-fun b!5254551 () Bool)

(declare-fun e!3268916 () Bool)

(assert (=> b!5254551 (= e!3268916 (= s!2326 (Cons!60781 (c!909054 lt!2153503) Nil!60781)))))

(declare-fun bm!372317 () Bool)

(declare-fun call!372322 () Bool)

(assert (=> bm!372317 (= call!372322 (isEmpty!32721 s!2326))))

(declare-fun b!5254552 () Bool)

(declare-fun c!909120 () Bool)

(assert (=> b!5254552 (= c!909120 (is-Union!14868 lt!2153503))))

(assert (=> b!5254552 (= e!3268916 e!3268917)))

(declare-fun d!1691912 () Bool)

(declare-fun c!909119 () Bool)

(assert (=> d!1691912 (= c!909119 (is-EmptyExpr!14868 lt!2153503))))

(assert (=> d!1691912 (= (matchRSpec!1971 lt!2153503 s!2326) e!3268921)))

(declare-fun b!5254553 () Bool)

(declare-fun c!909121 () Bool)

(assert (=> b!5254553 (= c!909121 (is-ElementMatch!14868 lt!2153503))))

(assert (=> b!5254553 (= e!3268919 e!3268916)))

(declare-fun b!5254554 () Bool)

(assert (=> b!5254554 (= e!3268921 call!372322)))

(declare-fun e!3268920 () Bool)

(assert (=> b!5254555 (= e!3268920 call!372323)))

(declare-fun b!5254556 () Bool)

(declare-fun res!2229970 () Bool)

(assert (=> b!5254556 (=> res!2229970 e!3268918)))

(assert (=> b!5254556 (= res!2229970 call!372322)))

(assert (=> b!5254556 (= e!3268920 e!3268918)))

(declare-fun bm!372318 () Bool)

(declare-fun c!909118 () Bool)

(assert (=> bm!372318 (= call!372323 (Exists!2049 (ite c!909118 lambda!264736 lambda!264737)))))

(declare-fun b!5254557 () Bool)

(assert (=> b!5254557 (= e!3268917 e!3268920)))

(assert (=> b!5254557 (= c!909118 (is-Star!14868 lt!2153503))))

(assert (= (and d!1691912 c!909119) b!5254554))

(assert (= (and d!1691912 (not c!909119)) b!5254550))

(assert (= (and b!5254550 res!2229969) b!5254553))

(assert (= (and b!5254553 c!909121) b!5254551))

(assert (= (and b!5254553 (not c!909121)) b!5254552))

(assert (= (and b!5254552 c!909120) b!5254549))

(assert (= (and b!5254552 (not c!909120)) b!5254557))

(assert (= (and b!5254549 (not res!2229971)) b!5254548))

(assert (= (and b!5254557 c!909118) b!5254556))

(assert (= (and b!5254557 (not c!909118)) b!5254555))

(assert (= (and b!5254556 (not res!2229970)) b!5254547))

(assert (= (or b!5254547 b!5254555) bm!372318))

(assert (= (or b!5254554 b!5254556) bm!372317))

(declare-fun m!6297450 () Bool)

(assert (=> b!5254548 m!6297450))

(declare-fun m!6297452 () Bool)

(assert (=> b!5254549 m!6297452))

(assert (=> bm!372317 m!6297382))

(declare-fun m!6297454 () Bool)

(assert (=> bm!372318 m!6297454))

(assert (=> b!5254217 d!1691912))

(declare-fun d!1691916 () Bool)

(assert (=> d!1691916 (= (matchR!7053 lt!2153492 s!2326) (matchRSpec!1971 lt!2153492 s!2326))))

(declare-fun lt!2153689 () Unit!152958)

(assert (=> d!1691916 (= lt!2153689 (choose!39163 lt!2153492 s!2326))))

(assert (=> d!1691916 (validRegex!6604 lt!2153492)))

(assert (=> d!1691916 (= (mainMatchTheorem!1971 lt!2153492 s!2326) lt!2153689)))

(declare-fun bs!1218574 () Bool)

(assert (= bs!1218574 d!1691916))

(assert (=> bs!1218574 m!6297060))

(assert (=> bs!1218574 m!6297062))

(declare-fun m!6297456 () Bool)

(assert (=> bs!1218574 m!6297456))

(assert (=> bs!1218574 m!6297428))

(assert (=> b!5254217 d!1691916))

(declare-fun bs!1218575 () Bool)

(declare-fun b!5254558 () Bool)

(assert (= bs!1218575 (and b!5254558 b!5254547)))

(declare-fun lambda!264738 () Int)

(assert (=> bs!1218575 (= (and (= (reg!15197 lt!2153492) (reg!15197 lt!2153503)) (= lt!2153492 lt!2153503)) (= lambda!264738 lambda!264736))))

(declare-fun bs!1218576 () Bool)

(assert (= bs!1218576 (and b!5254558 b!5254247)))

(assert (=> bs!1218576 (not (= lambda!264738 lambda!264705))))

(declare-fun bs!1218577 () Bool)

(assert (= bs!1218577 (and b!5254558 b!5254480)))

(assert (=> bs!1218577 (not (= lambda!264738 lambda!264733))))

(assert (=> bs!1218576 (not (= lambda!264738 lambda!264704))))

(declare-fun bs!1218578 () Bool)

(assert (= bs!1218578 (and b!5254558 b!5254555)))

(assert (=> bs!1218578 (not (= lambda!264738 lambda!264737))))

(declare-fun bs!1218579 () Bool)

(assert (= bs!1218579 (and b!5254558 b!5254472)))

(assert (=> bs!1218579 (= (and (= (reg!15197 lt!2153492) (reg!15197 r!7292)) (= lt!2153492 r!7292)) (= lambda!264738 lambda!264732))))

(assert (=> b!5254558 true))

(assert (=> b!5254558 true))

(declare-fun bs!1218580 () Bool)

(declare-fun b!5254566 () Bool)

(assert (= bs!1218580 (and b!5254566 b!5254547)))

(declare-fun lambda!264739 () Int)

(assert (=> bs!1218580 (not (= lambda!264739 lambda!264736))))

(declare-fun bs!1218581 () Bool)

(assert (= bs!1218581 (and b!5254566 b!5254247)))

(assert (=> bs!1218581 (= (and (= (regOne!30248 lt!2153492) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153492) (regTwo!30248 r!7292))) (= lambda!264739 lambda!264705))))

(declare-fun bs!1218582 () Bool)

(assert (= bs!1218582 (and b!5254566 b!5254480)))

(assert (=> bs!1218582 (= (and (= (regOne!30248 lt!2153492) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153492) (regTwo!30248 r!7292))) (= lambda!264739 lambda!264733))))

(declare-fun bs!1218583 () Bool)

(assert (= bs!1218583 (and b!5254566 b!5254558)))

(assert (=> bs!1218583 (not (= lambda!264739 lambda!264738))))

(assert (=> bs!1218581 (not (= lambda!264739 lambda!264704))))

(declare-fun bs!1218584 () Bool)

(assert (= bs!1218584 (and b!5254566 b!5254555)))

(assert (=> bs!1218584 (= (and (= (regOne!30248 lt!2153492) (regOne!30248 lt!2153503)) (= (regTwo!30248 lt!2153492) (regTwo!30248 lt!2153503))) (= lambda!264739 lambda!264737))))

(declare-fun bs!1218585 () Bool)

(assert (= bs!1218585 (and b!5254566 b!5254472)))

(assert (=> bs!1218585 (not (= lambda!264739 lambda!264732))))

(assert (=> b!5254566 true))

(assert (=> b!5254566 true))

(declare-fun e!3268925 () Bool)

(declare-fun call!372325 () Bool)

(assert (=> b!5254558 (= e!3268925 call!372325)))

(declare-fun b!5254559 () Bool)

(declare-fun e!3268929 () Bool)

(assert (=> b!5254559 (= e!3268929 (matchRSpec!1971 (regTwo!30249 lt!2153492) s!2326))))

(declare-fun b!5254560 () Bool)

(declare-fun e!3268924 () Bool)

(assert (=> b!5254560 (= e!3268924 e!3268929)))

(declare-fun res!2229974 () Bool)

(assert (=> b!5254560 (= res!2229974 (matchRSpec!1971 (regOne!30249 lt!2153492) s!2326))))

(assert (=> b!5254560 (=> res!2229974 e!3268929)))

(declare-fun b!5254561 () Bool)

(declare-fun e!3268928 () Bool)

(declare-fun e!3268926 () Bool)

(assert (=> b!5254561 (= e!3268928 e!3268926)))

(declare-fun res!2229972 () Bool)

(assert (=> b!5254561 (= res!2229972 (not (is-EmptyLang!14868 lt!2153492)))))

(assert (=> b!5254561 (=> (not res!2229972) (not e!3268926))))

(declare-fun b!5254562 () Bool)

(declare-fun e!3268923 () Bool)

(assert (=> b!5254562 (= e!3268923 (= s!2326 (Cons!60781 (c!909054 lt!2153492) Nil!60781)))))

(declare-fun bm!372319 () Bool)

(declare-fun call!372324 () Bool)

(assert (=> bm!372319 (= call!372324 (isEmpty!32721 s!2326))))

(declare-fun b!5254563 () Bool)

(declare-fun c!909124 () Bool)

(assert (=> b!5254563 (= c!909124 (is-Union!14868 lt!2153492))))

(assert (=> b!5254563 (= e!3268923 e!3268924)))

(declare-fun d!1691918 () Bool)

(declare-fun c!909123 () Bool)

(assert (=> d!1691918 (= c!909123 (is-EmptyExpr!14868 lt!2153492))))

(assert (=> d!1691918 (= (matchRSpec!1971 lt!2153492 s!2326) e!3268928)))

(declare-fun b!5254564 () Bool)

(declare-fun c!909125 () Bool)

(assert (=> b!5254564 (= c!909125 (is-ElementMatch!14868 lt!2153492))))

(assert (=> b!5254564 (= e!3268926 e!3268923)))

(declare-fun b!5254565 () Bool)

(assert (=> b!5254565 (= e!3268928 call!372324)))

(declare-fun e!3268927 () Bool)

(assert (=> b!5254566 (= e!3268927 call!372325)))

(declare-fun b!5254567 () Bool)

(declare-fun res!2229973 () Bool)

(assert (=> b!5254567 (=> res!2229973 e!3268925)))

(assert (=> b!5254567 (= res!2229973 call!372324)))

(assert (=> b!5254567 (= e!3268927 e!3268925)))

(declare-fun bm!372320 () Bool)

(declare-fun c!909122 () Bool)

(assert (=> bm!372320 (= call!372325 (Exists!2049 (ite c!909122 lambda!264738 lambda!264739)))))

(declare-fun b!5254568 () Bool)

(assert (=> b!5254568 (= e!3268924 e!3268927)))

(assert (=> b!5254568 (= c!909122 (is-Star!14868 lt!2153492))))

(assert (= (and d!1691918 c!909123) b!5254565))

(assert (= (and d!1691918 (not c!909123)) b!5254561))

(assert (= (and b!5254561 res!2229972) b!5254564))

(assert (= (and b!5254564 c!909125) b!5254562))

(assert (= (and b!5254564 (not c!909125)) b!5254563))

(assert (= (and b!5254563 c!909124) b!5254560))

(assert (= (and b!5254563 (not c!909124)) b!5254568))

(assert (= (and b!5254560 (not res!2229974)) b!5254559))

(assert (= (and b!5254568 c!909122) b!5254567))

(assert (= (and b!5254568 (not c!909122)) b!5254566))

(assert (= (and b!5254567 (not res!2229973)) b!5254558))

(assert (= (or b!5254558 b!5254566) bm!372320))

(assert (= (or b!5254565 b!5254567) bm!372319))

(declare-fun m!6297458 () Bool)

(assert (=> b!5254559 m!6297458))

(declare-fun m!6297460 () Bool)

(assert (=> b!5254560 m!6297460))

(assert (=> bm!372319 m!6297382))

(declare-fun m!6297462 () Bool)

(assert (=> bm!372320 m!6297462))

(assert (=> b!5254217 d!1691918))

(declare-fun d!1691920 () Bool)

(assert (=> d!1691920 (= (matchR!7053 lt!2153503 s!2326) (matchZipper!1112 lt!2153462 s!2326))))

(declare-fun lt!2153690 () Unit!152958)

(assert (=> d!1691920 (= lt!2153690 (choose!39164 lt!2153462 lt!2153478 lt!2153503 s!2326))))

(assert (=> d!1691920 (validRegex!6604 lt!2153503)))

(assert (=> d!1691920 (= (theoremZipperRegexEquiv!302 lt!2153462 lt!2153478 lt!2153503 s!2326) lt!2153690)))

(declare-fun bs!1218586 () Bool)

(assert (= bs!1218586 d!1691920))

(assert (=> bs!1218586 m!6297066))

(assert (=> bs!1218586 m!6297136))

(declare-fun m!6297464 () Bool)

(assert (=> bs!1218586 m!6297464))

(assert (=> bs!1218586 m!6297098))

(assert (=> b!5254217 d!1691920))

(declare-fun d!1691922 () Bool)

(assert (=> d!1691922 (= (matchR!7053 lt!2153503 s!2326) (matchRSpec!1971 lt!2153503 s!2326))))

(declare-fun lt!2153691 () Unit!152958)

(assert (=> d!1691922 (= lt!2153691 (choose!39163 lt!2153503 s!2326))))

(assert (=> d!1691922 (validRegex!6604 lt!2153503)))

(assert (=> d!1691922 (= (mainMatchTheorem!1971 lt!2153503 s!2326) lt!2153691)))

(declare-fun bs!1218587 () Bool)

(assert (= bs!1218587 d!1691922))

(assert (=> bs!1218587 m!6297066))

(assert (=> bs!1218587 m!6297068))

(declare-fun m!6297466 () Bool)

(assert (=> bs!1218587 m!6297466))

(assert (=> bs!1218587 m!6297098))

(assert (=> b!5254217 d!1691922))

(declare-fun b!5254569 () Bool)

(declare-fun res!2229979 () Bool)

(declare-fun e!3268934 () Bool)

(assert (=> b!5254569 (=> res!2229979 e!3268934)))

(assert (=> b!5254569 (= res!2229979 (not (is-ElementMatch!14868 lt!2153503)))))

(declare-fun e!3268932 () Bool)

(assert (=> b!5254569 (= e!3268932 e!3268934)))

(declare-fun b!5254570 () Bool)

(declare-fun e!3268930 () Bool)

(assert (=> b!5254570 (= e!3268930 (nullable!5037 lt!2153503))))

(declare-fun b!5254571 () Bool)

(declare-fun e!3268936 () Bool)

(assert (=> b!5254571 (= e!3268934 e!3268936)))

(declare-fun res!2229977 () Bool)

(assert (=> b!5254571 (=> (not res!2229977) (not e!3268936))))

(declare-fun lt!2153692 () Bool)

(assert (=> b!5254571 (= res!2229977 (not lt!2153692))))

(declare-fun b!5254572 () Bool)

(declare-fun res!2229981 () Bool)

(declare-fun e!3268935 () Bool)

(assert (=> b!5254572 (=> (not res!2229981) (not e!3268935))))

(declare-fun call!372326 () Bool)

(assert (=> b!5254572 (= res!2229981 (not call!372326))))

(declare-fun b!5254573 () Bool)

(declare-fun res!2229980 () Bool)

(assert (=> b!5254573 (=> (not res!2229980) (not e!3268935))))

(assert (=> b!5254573 (= res!2229980 (isEmpty!32721 (tail!10361 s!2326)))))

(declare-fun b!5254574 () Bool)

(declare-fun e!3268933 () Bool)

(assert (=> b!5254574 (= e!3268933 (= lt!2153692 call!372326))))

(declare-fun d!1691924 () Bool)

(assert (=> d!1691924 e!3268933))

(declare-fun c!909126 () Bool)

(assert (=> d!1691924 (= c!909126 (is-EmptyExpr!14868 lt!2153503))))

(assert (=> d!1691924 (= lt!2153692 e!3268930)))

(declare-fun c!909128 () Bool)

(assert (=> d!1691924 (= c!909128 (isEmpty!32721 s!2326))))

(assert (=> d!1691924 (validRegex!6604 lt!2153503)))

(assert (=> d!1691924 (= (matchR!7053 lt!2153503 s!2326) lt!2153692)))

(declare-fun b!5254575 () Bool)

(declare-fun e!3268931 () Bool)

(assert (=> b!5254575 (= e!3268931 (not (= (head!11264 s!2326) (c!909054 lt!2153503))))))

(declare-fun bm!372321 () Bool)

(assert (=> bm!372321 (= call!372326 (isEmpty!32721 s!2326))))

(declare-fun b!5254576 () Bool)

(declare-fun res!2229978 () Bool)

(assert (=> b!5254576 (=> res!2229978 e!3268934)))

(assert (=> b!5254576 (= res!2229978 e!3268935)))

(declare-fun res!2229975 () Bool)

(assert (=> b!5254576 (=> (not res!2229975) (not e!3268935))))

(assert (=> b!5254576 (= res!2229975 lt!2153692)))

(declare-fun b!5254577 () Bool)

(assert (=> b!5254577 (= e!3268936 e!3268931)))

(declare-fun res!2229982 () Bool)

(assert (=> b!5254577 (=> res!2229982 e!3268931)))

(assert (=> b!5254577 (= res!2229982 call!372326)))

(declare-fun b!5254578 () Bool)

(assert (=> b!5254578 (= e!3268932 (not lt!2153692))))

(declare-fun b!5254579 () Bool)

(assert (=> b!5254579 (= e!3268933 e!3268932)))

(declare-fun c!909127 () Bool)

(assert (=> b!5254579 (= c!909127 (is-EmptyLang!14868 lt!2153503))))

(declare-fun b!5254580 () Bool)

(assert (=> b!5254580 (= e!3268935 (= (head!11264 s!2326) (c!909054 lt!2153503)))))

(declare-fun b!5254581 () Bool)

(declare-fun res!2229976 () Bool)

(assert (=> b!5254581 (=> res!2229976 e!3268931)))

(assert (=> b!5254581 (= res!2229976 (not (isEmpty!32721 (tail!10361 s!2326))))))

(declare-fun b!5254582 () Bool)

(assert (=> b!5254582 (= e!3268930 (matchR!7053 (derivativeStep!4094 lt!2153503 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691924 c!909128) b!5254570))

(assert (= (and d!1691924 (not c!909128)) b!5254582))

(assert (= (and d!1691924 c!909126) b!5254574))

(assert (= (and d!1691924 (not c!909126)) b!5254579))

(assert (= (and b!5254579 c!909127) b!5254578))

(assert (= (and b!5254579 (not c!909127)) b!5254569))

(assert (= (and b!5254569 (not res!2229979)) b!5254576))

(assert (= (and b!5254576 res!2229975) b!5254572))

(assert (= (and b!5254572 res!2229981) b!5254573))

(assert (= (and b!5254573 res!2229980) b!5254580))

(assert (= (and b!5254576 (not res!2229978)) b!5254571))

(assert (= (and b!5254571 res!2229977) b!5254577))

(assert (= (and b!5254577 (not res!2229982)) b!5254581))

(assert (= (and b!5254581 (not res!2229976)) b!5254575))

(assert (= (or b!5254574 b!5254572 b!5254577) bm!372321))

(assert (=> b!5254582 m!6297386))

(assert (=> b!5254582 m!6297386))

(declare-fun m!6297468 () Bool)

(assert (=> b!5254582 m!6297468))

(assert (=> b!5254582 m!6297390))

(assert (=> b!5254582 m!6297468))

(assert (=> b!5254582 m!6297390))

(declare-fun m!6297470 () Bool)

(assert (=> b!5254582 m!6297470))

(assert (=> d!1691924 m!6297382))

(assert (=> d!1691924 m!6297098))

(assert (=> b!5254573 m!6297390))

(assert (=> b!5254573 m!6297390))

(assert (=> b!5254573 m!6297394))

(assert (=> b!5254580 m!6297386))

(assert (=> b!5254575 m!6297386))

(declare-fun m!6297472 () Bool)

(assert (=> b!5254570 m!6297472))

(assert (=> b!5254581 m!6297390))

(assert (=> b!5254581 m!6297390))

(assert (=> b!5254581 m!6297394))

(assert (=> bm!372321 m!6297382))

(assert (=> b!5254217 d!1691924))

(declare-fun b!5254583 () Bool)

(declare-fun res!2229987 () Bool)

(declare-fun e!3268941 () Bool)

(assert (=> b!5254583 (=> res!2229987 e!3268941)))

(assert (=> b!5254583 (= res!2229987 (not (is-ElementMatch!14868 lt!2153492)))))

(declare-fun e!3268939 () Bool)

(assert (=> b!5254583 (= e!3268939 e!3268941)))

(declare-fun b!5254584 () Bool)

(declare-fun e!3268937 () Bool)

(assert (=> b!5254584 (= e!3268937 (nullable!5037 lt!2153492))))

(declare-fun b!5254585 () Bool)

(declare-fun e!3268943 () Bool)

(assert (=> b!5254585 (= e!3268941 e!3268943)))

(declare-fun res!2229985 () Bool)

(assert (=> b!5254585 (=> (not res!2229985) (not e!3268943))))

(declare-fun lt!2153693 () Bool)

(assert (=> b!5254585 (= res!2229985 (not lt!2153693))))

(declare-fun b!5254586 () Bool)

(declare-fun res!2229989 () Bool)

(declare-fun e!3268942 () Bool)

(assert (=> b!5254586 (=> (not res!2229989) (not e!3268942))))

(declare-fun call!372327 () Bool)

(assert (=> b!5254586 (= res!2229989 (not call!372327))))

(declare-fun b!5254587 () Bool)

(declare-fun res!2229988 () Bool)

(assert (=> b!5254587 (=> (not res!2229988) (not e!3268942))))

(assert (=> b!5254587 (= res!2229988 (isEmpty!32721 (tail!10361 s!2326)))))

(declare-fun b!5254588 () Bool)

(declare-fun e!3268940 () Bool)

(assert (=> b!5254588 (= e!3268940 (= lt!2153693 call!372327))))

(declare-fun d!1691926 () Bool)

(assert (=> d!1691926 e!3268940))

(declare-fun c!909129 () Bool)

(assert (=> d!1691926 (= c!909129 (is-EmptyExpr!14868 lt!2153492))))

(assert (=> d!1691926 (= lt!2153693 e!3268937)))

(declare-fun c!909131 () Bool)

(assert (=> d!1691926 (= c!909131 (isEmpty!32721 s!2326))))

(assert (=> d!1691926 (validRegex!6604 lt!2153492)))

(assert (=> d!1691926 (= (matchR!7053 lt!2153492 s!2326) lt!2153693)))

(declare-fun b!5254589 () Bool)

(declare-fun e!3268938 () Bool)

(assert (=> b!5254589 (= e!3268938 (not (= (head!11264 s!2326) (c!909054 lt!2153492))))))

(declare-fun bm!372322 () Bool)

(assert (=> bm!372322 (= call!372327 (isEmpty!32721 s!2326))))

(declare-fun b!5254590 () Bool)

(declare-fun res!2229986 () Bool)

(assert (=> b!5254590 (=> res!2229986 e!3268941)))

(assert (=> b!5254590 (= res!2229986 e!3268942)))

(declare-fun res!2229983 () Bool)

(assert (=> b!5254590 (=> (not res!2229983) (not e!3268942))))

(assert (=> b!5254590 (= res!2229983 lt!2153693)))

(declare-fun b!5254591 () Bool)

(assert (=> b!5254591 (= e!3268943 e!3268938)))

(declare-fun res!2229990 () Bool)

(assert (=> b!5254591 (=> res!2229990 e!3268938)))

(assert (=> b!5254591 (= res!2229990 call!372327)))

(declare-fun b!5254592 () Bool)

(assert (=> b!5254592 (= e!3268939 (not lt!2153693))))

(declare-fun b!5254593 () Bool)

(assert (=> b!5254593 (= e!3268940 e!3268939)))

(declare-fun c!909130 () Bool)

(assert (=> b!5254593 (= c!909130 (is-EmptyLang!14868 lt!2153492))))

(declare-fun b!5254594 () Bool)

(assert (=> b!5254594 (= e!3268942 (= (head!11264 s!2326) (c!909054 lt!2153492)))))

(declare-fun b!5254595 () Bool)

(declare-fun res!2229984 () Bool)

(assert (=> b!5254595 (=> res!2229984 e!3268938)))

(assert (=> b!5254595 (= res!2229984 (not (isEmpty!32721 (tail!10361 s!2326))))))

(declare-fun b!5254596 () Bool)

(assert (=> b!5254596 (= e!3268937 (matchR!7053 (derivativeStep!4094 lt!2153492 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691926 c!909131) b!5254584))

(assert (= (and d!1691926 (not c!909131)) b!5254596))

(assert (= (and d!1691926 c!909129) b!5254588))

(assert (= (and d!1691926 (not c!909129)) b!5254593))

(assert (= (and b!5254593 c!909130) b!5254592))

(assert (= (and b!5254593 (not c!909130)) b!5254583))

(assert (= (and b!5254583 (not res!2229987)) b!5254590))

(assert (= (and b!5254590 res!2229983) b!5254586))

(assert (= (and b!5254586 res!2229989) b!5254587))

(assert (= (and b!5254587 res!2229988) b!5254594))

(assert (= (and b!5254590 (not res!2229986)) b!5254585))

(assert (= (and b!5254585 res!2229985) b!5254591))

(assert (= (and b!5254591 (not res!2229990)) b!5254595))

(assert (= (and b!5254595 (not res!2229984)) b!5254589))

(assert (= (or b!5254588 b!5254586 b!5254591) bm!372322))

(assert (=> b!5254596 m!6297386))

(assert (=> b!5254596 m!6297386))

(declare-fun m!6297474 () Bool)

(assert (=> b!5254596 m!6297474))

(assert (=> b!5254596 m!6297390))

(assert (=> b!5254596 m!6297474))

(assert (=> b!5254596 m!6297390))

(declare-fun m!6297476 () Bool)

(assert (=> b!5254596 m!6297476))

(assert (=> d!1691926 m!6297382))

(assert (=> d!1691926 m!6297428))

(assert (=> b!5254587 m!6297390))

(assert (=> b!5254587 m!6297390))

(assert (=> b!5254587 m!6297394))

(assert (=> b!5254594 m!6297386))

(assert (=> b!5254589 m!6297386))

(declare-fun m!6297478 () Bool)

(assert (=> b!5254584 m!6297478))

(assert (=> b!5254595 m!6297390))

(assert (=> b!5254595 m!6297390))

(assert (=> b!5254595 m!6297394))

(assert (=> bm!372322 m!6297382))

(assert (=> b!5254217 d!1691926))

(declare-fun bm!372335 () Bool)

(declare-fun c!909153 () Bool)

(declare-fun call!372345 () (Set Context!8504))

(declare-fun call!372343 () List!60903)

(assert (=> bm!372335 (= call!372345 (derivationStepZipperDown!316 (ite c!909153 (regOne!30249 (regTwo!30249 (regOne!30248 r!7292))) (regOne!30248 (regTwo!30249 (regOne!30248 r!7292)))) (ite c!909153 lt!2153488 (Context!8505 call!372343)) (h!67229 s!2326)))))

(declare-fun b!5254639 () Bool)

(declare-fun c!909151 () Bool)

(declare-fun e!3268971 () Bool)

(assert (=> b!5254639 (= c!909151 e!3268971)))

(declare-fun res!2229997 () Bool)

(assert (=> b!5254639 (=> (not res!2229997) (not e!3268971))))

(assert (=> b!5254639 (= res!2229997 (is-Concat!23713 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun e!3268968 () (Set Context!8504))

(declare-fun e!3268969 () (Set Context!8504))

(assert (=> b!5254639 (= e!3268968 e!3268969)))

(declare-fun b!5254640 () Bool)

(declare-fun e!3268973 () (Set Context!8504))

(assert (=> b!5254640 (= e!3268973 (as set.empty (Set Context!8504)))))

(declare-fun b!5254641 () Bool)

(declare-fun call!372341 () (Set Context!8504))

(assert (=> b!5254641 (= e!3268968 (set.union call!372345 call!372341))))

(declare-fun b!5254642 () Bool)

(declare-fun c!909154 () Bool)

(assert (=> b!5254642 (= c!909154 (is-Star!14868 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun e!3268972 () (Set Context!8504))

(assert (=> b!5254642 (= e!3268972 e!3268973)))

(declare-fun bm!372336 () Bool)

(declare-fun call!372344 () List!60903)

(assert (=> bm!372336 (= call!372344 call!372343)))

(declare-fun b!5254643 () Bool)

(declare-fun call!372340 () (Set Context!8504))

(assert (=> b!5254643 (= e!3268973 call!372340)))

(declare-fun d!1691928 () Bool)

(declare-fun c!909150 () Bool)

(assert (=> d!1691928 (= c!909150 (and (is-ElementMatch!14868 (regTwo!30249 (regOne!30248 r!7292))) (= (c!909054 (regTwo!30249 (regOne!30248 r!7292))) (h!67229 s!2326))))))

(declare-fun e!3268970 () (Set Context!8504))

(assert (=> d!1691928 (= (derivationStepZipperDown!316 (regTwo!30249 (regOne!30248 r!7292)) lt!2153488 (h!67229 s!2326)) e!3268970)))

(declare-fun b!5254644 () Bool)

(assert (=> b!5254644 (= e!3268969 e!3268972)))

(declare-fun c!909152 () Bool)

(assert (=> b!5254644 (= c!909152 (is-Concat!23713 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun b!5254645 () Bool)

(declare-fun call!372342 () (Set Context!8504))

(assert (=> b!5254645 (= e!3268969 (set.union call!372345 call!372342))))

(declare-fun bm!372337 () Bool)

(assert (=> bm!372337 (= call!372341 (derivationStepZipperDown!316 (ite c!909153 (regTwo!30249 (regTwo!30249 (regOne!30248 r!7292))) (ite c!909151 (regTwo!30248 (regTwo!30249 (regOne!30248 r!7292))) (ite c!909152 (regOne!30248 (regTwo!30249 (regOne!30248 r!7292))) (reg!15197 (regTwo!30249 (regOne!30248 r!7292)))))) (ite (or c!909153 c!909151) lt!2153488 (Context!8505 call!372344)) (h!67229 s!2326)))))

(declare-fun bm!372338 () Bool)

(declare-fun $colon$colon!1323 (List!60903 Regex!14868) List!60903)

(assert (=> bm!372338 (= call!372343 ($colon$colon!1323 (exprs!4752 lt!2153488) (ite (or c!909151 c!909152) (regTwo!30248 (regTwo!30249 (regOne!30248 r!7292))) (regTwo!30249 (regOne!30248 r!7292)))))))

(declare-fun bm!372339 () Bool)

(assert (=> bm!372339 (= call!372342 call!372341)))

(declare-fun b!5254646 () Bool)

(assert (=> b!5254646 (= e!3268971 (nullable!5037 (regOne!30248 (regTwo!30249 (regOne!30248 r!7292)))))))

(declare-fun bm!372340 () Bool)

(assert (=> bm!372340 (= call!372340 call!372342)))

(declare-fun b!5254647 () Bool)

(assert (=> b!5254647 (= e!3268970 (set.insert lt!2153488 (as set.empty (Set Context!8504))))))

(declare-fun b!5254648 () Bool)

(assert (=> b!5254648 (= e!3268970 e!3268968)))

(assert (=> b!5254648 (= c!909153 (is-Union!14868 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun b!5254649 () Bool)

(assert (=> b!5254649 (= e!3268972 call!372340)))

(assert (= (and d!1691928 c!909150) b!5254647))

(assert (= (and d!1691928 (not c!909150)) b!5254648))

(assert (= (and b!5254648 c!909153) b!5254641))

(assert (= (and b!5254648 (not c!909153)) b!5254639))

(assert (= (and b!5254639 res!2229997) b!5254646))

(assert (= (and b!5254639 c!909151) b!5254645))

(assert (= (and b!5254639 (not c!909151)) b!5254644))

(assert (= (and b!5254644 c!909152) b!5254649))

(assert (= (and b!5254644 (not c!909152)) b!5254642))

(assert (= (and b!5254642 c!909154) b!5254643))

(assert (= (and b!5254642 (not c!909154)) b!5254640))

(assert (= (or b!5254649 b!5254643) bm!372336))

(assert (= (or b!5254649 b!5254643) bm!372340))

(assert (= (or b!5254645 bm!372336) bm!372338))

(assert (= (or b!5254645 bm!372340) bm!372339))

(assert (= (or b!5254641 bm!372339) bm!372337))

(assert (= (or b!5254641 b!5254645) bm!372335))

(declare-fun m!6297480 () Bool)

(assert (=> b!5254647 m!6297480))

(declare-fun m!6297482 () Bool)

(assert (=> bm!372335 m!6297482))

(declare-fun m!6297484 () Bool)

(assert (=> b!5254646 m!6297484))

(declare-fun m!6297486 () Bool)

(assert (=> bm!372337 m!6297486))

(declare-fun m!6297488 () Bool)

(assert (=> bm!372338 m!6297488))

(assert (=> b!5254234 d!1691928))

(declare-fun bm!372341 () Bool)

(declare-fun call!372349 () List!60903)

(declare-fun call!372351 () (Set Context!8504))

(declare-fun c!909162 () Bool)

(assert (=> bm!372341 (= call!372351 (derivationStepZipperDown!316 (ite c!909162 (regOne!30249 (regOne!30249 (regOne!30248 r!7292))) (regOne!30248 (regOne!30249 (regOne!30248 r!7292)))) (ite c!909162 lt!2153488 (Context!8505 call!372349)) (h!67229 s!2326)))))

(declare-fun b!5254656 () Bool)

(declare-fun c!909157 () Bool)

(declare-fun e!3268982 () Bool)

(assert (=> b!5254656 (= c!909157 e!3268982)))

(declare-fun res!2229998 () Bool)

(assert (=> b!5254656 (=> (not res!2229998) (not e!3268982))))

(assert (=> b!5254656 (= res!2229998 (is-Concat!23713 (regOne!30249 (regOne!30248 r!7292))))))

(declare-fun e!3268977 () (Set Context!8504))

(declare-fun e!3268978 () (Set Context!8504))

(assert (=> b!5254656 (= e!3268977 e!3268978)))

(declare-fun b!5254658 () Bool)

(declare-fun e!3268985 () (Set Context!8504))

(assert (=> b!5254658 (= e!3268985 (as set.empty (Set Context!8504)))))

(declare-fun b!5254660 () Bool)

(declare-fun call!372347 () (Set Context!8504))

(assert (=> b!5254660 (= e!3268977 (set.union call!372351 call!372347))))

(declare-fun b!5254662 () Bool)

(declare-fun c!909163 () Bool)

(assert (=> b!5254662 (= c!909163 (is-Star!14868 (regOne!30249 (regOne!30248 r!7292))))))

(declare-fun e!3268984 () (Set Context!8504))

(assert (=> b!5254662 (= e!3268984 e!3268985)))

(declare-fun bm!372342 () Bool)

(declare-fun call!372350 () List!60903)

(assert (=> bm!372342 (= call!372350 call!372349)))

(declare-fun b!5254664 () Bool)

(declare-fun call!372346 () (Set Context!8504))

(assert (=> b!5254664 (= e!3268985 call!372346)))

(declare-fun d!1691930 () Bool)

(declare-fun c!909156 () Bool)

(assert (=> d!1691930 (= c!909156 (and (is-ElementMatch!14868 (regOne!30249 (regOne!30248 r!7292))) (= (c!909054 (regOne!30249 (regOne!30248 r!7292))) (h!67229 s!2326))))))

(declare-fun e!3268980 () (Set Context!8504))

(assert (=> d!1691930 (= (derivationStepZipperDown!316 (regOne!30249 (regOne!30248 r!7292)) lt!2153488 (h!67229 s!2326)) e!3268980)))

(declare-fun b!5254665 () Bool)

(assert (=> b!5254665 (= e!3268978 e!3268984)))

(declare-fun c!909158 () Bool)

(assert (=> b!5254665 (= c!909158 (is-Concat!23713 (regOne!30249 (regOne!30248 r!7292))))))

(declare-fun b!5254666 () Bool)

(declare-fun call!372348 () (Set Context!8504))

(assert (=> b!5254666 (= e!3268978 (set.union call!372351 call!372348))))

(declare-fun bm!372343 () Bool)

(assert (=> bm!372343 (= call!372347 (derivationStepZipperDown!316 (ite c!909162 (regTwo!30249 (regOne!30249 (regOne!30248 r!7292))) (ite c!909157 (regTwo!30248 (regOne!30249 (regOne!30248 r!7292))) (ite c!909158 (regOne!30248 (regOne!30249 (regOne!30248 r!7292))) (reg!15197 (regOne!30249 (regOne!30248 r!7292)))))) (ite (or c!909162 c!909157) lt!2153488 (Context!8505 call!372350)) (h!67229 s!2326)))))

(declare-fun bm!372344 () Bool)

(assert (=> bm!372344 (= call!372349 ($colon$colon!1323 (exprs!4752 lt!2153488) (ite (or c!909157 c!909158) (regTwo!30248 (regOne!30249 (regOne!30248 r!7292))) (regOne!30249 (regOne!30248 r!7292)))))))

(declare-fun bm!372345 () Bool)

(assert (=> bm!372345 (= call!372348 call!372347)))

(declare-fun b!5254667 () Bool)

(assert (=> b!5254667 (= e!3268982 (nullable!5037 (regOne!30248 (regOne!30249 (regOne!30248 r!7292)))))))

(declare-fun bm!372346 () Bool)

(assert (=> bm!372346 (= call!372346 call!372348)))

(declare-fun b!5254668 () Bool)

(assert (=> b!5254668 (= e!3268980 (set.insert lt!2153488 (as set.empty (Set Context!8504))))))

(declare-fun b!5254669 () Bool)

(assert (=> b!5254669 (= e!3268980 e!3268977)))

(assert (=> b!5254669 (= c!909162 (is-Union!14868 (regOne!30249 (regOne!30248 r!7292))))))

(declare-fun b!5254670 () Bool)

(assert (=> b!5254670 (= e!3268984 call!372346)))

(assert (= (and d!1691930 c!909156) b!5254668))

(assert (= (and d!1691930 (not c!909156)) b!5254669))

(assert (= (and b!5254669 c!909162) b!5254660))

(assert (= (and b!5254669 (not c!909162)) b!5254656))

(assert (= (and b!5254656 res!2229998) b!5254667))

(assert (= (and b!5254656 c!909157) b!5254666))

(assert (= (and b!5254656 (not c!909157)) b!5254665))

(assert (= (and b!5254665 c!909158) b!5254670))

(assert (= (and b!5254665 (not c!909158)) b!5254662))

(assert (= (and b!5254662 c!909163) b!5254664))

(assert (= (and b!5254662 (not c!909163)) b!5254658))

(assert (= (or b!5254670 b!5254664) bm!372342))

(assert (= (or b!5254670 b!5254664) bm!372346))

(assert (= (or b!5254666 bm!372342) bm!372344))

(assert (= (or b!5254666 bm!372346) bm!372345))

(assert (= (or b!5254660 bm!372345) bm!372343))

(assert (= (or b!5254660 b!5254666) bm!372341))

(assert (=> b!5254668 m!6297480))

(declare-fun m!6297490 () Bool)

(assert (=> bm!372341 m!6297490))

(declare-fun m!6297492 () Bool)

(assert (=> b!5254667 m!6297492))

(declare-fun m!6297494 () Bool)

(assert (=> bm!372343 m!6297494))

(declare-fun m!6297496 () Bool)

(assert (=> bm!372344 m!6297496))

(assert (=> b!5254234 d!1691930))

(declare-fun d!1691932 () Bool)

(assert (=> d!1691932 (= (isEmpty!32717 (t!374087 zl!343)) (is-Nil!60780 (t!374087 zl!343)))))

(assert (=> b!5254214 d!1691932))

(assert (=> b!5254215 d!1691890))

(declare-fun d!1691934 () Bool)

(assert (=> d!1691934 (= (isEmpty!32718 (t!374086 (exprs!4752 (h!67228 zl!343)))) (is-Nil!60779 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(assert (=> b!5254235 d!1691934))

(assert (=> b!5254236 d!1691892))

(declare-fun b!5254681 () Bool)

(declare-fun e!3268994 () Bool)

(assert (=> b!5254681 (= e!3268994 (nullable!5037 (h!67227 (exprs!4752 lt!2153488))))))

(declare-fun b!5254682 () Bool)

(declare-fun e!3268992 () (Set Context!8504))

(assert (=> b!5254682 (= e!3268992 (as set.empty (Set Context!8504)))))

(declare-fun bm!372349 () Bool)

(declare-fun call!372354 () (Set Context!8504))

(assert (=> bm!372349 (= call!372354 (derivationStepZipperDown!316 (h!67227 (exprs!4752 lt!2153488)) (Context!8505 (t!374086 (exprs!4752 lt!2153488))) (h!67229 s!2326)))))

(declare-fun b!5254683 () Bool)

(declare-fun e!3268993 () (Set Context!8504))

(assert (=> b!5254683 (= e!3268993 (set.union call!372354 (derivationStepZipperUp!240 (Context!8505 (t!374086 (exprs!4752 lt!2153488))) (h!67229 s!2326))))))

(declare-fun b!5254685 () Bool)

(assert (=> b!5254685 (= e!3268992 call!372354)))

(declare-fun b!5254684 () Bool)

(assert (=> b!5254684 (= e!3268993 e!3268992)))

(declare-fun c!909168 () Bool)

(assert (=> b!5254684 (= c!909168 (is-Cons!60779 (exprs!4752 lt!2153488)))))

(declare-fun d!1691936 () Bool)

(declare-fun c!909169 () Bool)

(assert (=> d!1691936 (= c!909169 e!3268994)))

(declare-fun res!2230003 () Bool)

(assert (=> d!1691936 (=> (not res!2230003) (not e!3268994))))

(assert (=> d!1691936 (= res!2230003 (is-Cons!60779 (exprs!4752 lt!2153488)))))

(assert (=> d!1691936 (= (derivationStepZipperUp!240 lt!2153488 (h!67229 s!2326)) e!3268993)))

(assert (= (and d!1691936 res!2230003) b!5254681))

(assert (= (and d!1691936 c!909169) b!5254683))

(assert (= (and d!1691936 (not c!909169)) b!5254684))

(assert (= (and b!5254684 c!909168) b!5254685))

(assert (= (and b!5254684 (not c!909168)) b!5254682))

(assert (= (or b!5254683 b!5254685) bm!372349))

(declare-fun m!6297518 () Bool)

(assert (=> b!5254681 m!6297518))

(declare-fun m!6297520 () Bool)

(assert (=> bm!372349 m!6297520))

(declare-fun m!6297522 () Bool)

(assert (=> b!5254683 m!6297522))

(assert (=> b!5254232 d!1691936))

(declare-fun d!1691940 () Bool)

(declare-fun dynLambda!24014 (Int Context!8504) (Set Context!8504))

(assert (=> d!1691940 (= (flatMap!595 z!1189 lambda!264706) (dynLambda!24014 lambda!264706 (h!67228 zl!343)))))

(declare-fun lt!2153701 () Unit!152958)

(declare-fun choose!39165 ((Set Context!8504) Context!8504 Int) Unit!152958)

(assert (=> d!1691940 (= lt!2153701 (choose!39165 z!1189 (h!67228 zl!343) lambda!264706))))

(assert (=> d!1691940 (= z!1189 (set.insert (h!67228 zl!343) (as set.empty (Set Context!8504))))))

(assert (=> d!1691940 (= (lemmaFlatMapOnSingletonSet!127 z!1189 (h!67228 zl!343) lambda!264706) lt!2153701)))

(declare-fun b_lambda!202869 () Bool)

(assert (=> (not b_lambda!202869) (not d!1691940)))

(declare-fun bs!1218588 () Bool)

(assert (= bs!1218588 d!1691940))

(assert (=> bs!1218588 m!6297174))

(declare-fun m!6297524 () Bool)

(assert (=> bs!1218588 m!6297524))

(declare-fun m!6297526 () Bool)

(assert (=> bs!1218588 m!6297526))

(declare-fun m!6297528 () Bool)

(assert (=> bs!1218588 m!6297528))

(assert (=> b!5254232 d!1691940))

(declare-fun d!1691942 () Bool)

(declare-fun nullableFct!1425 (Regex!14868) Bool)

(assert (=> d!1691942 (= (nullable!5037 (h!67227 (exprs!4752 (h!67228 zl!343)))) (nullableFct!1425 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun bs!1218589 () Bool)

(assert (= bs!1218589 d!1691942))

(declare-fun m!6297530 () Bool)

(assert (=> bs!1218589 m!6297530))

(assert (=> b!5254232 d!1691942))

(declare-fun b!5254690 () Bool)

(declare-fun e!3268999 () Bool)

(assert (=> b!5254690 (= e!3268999 (nullable!5037 (h!67227 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343)))))))))))

(declare-fun b!5254691 () Bool)

(declare-fun e!3268997 () (Set Context!8504))

(assert (=> b!5254691 (= e!3268997 (as set.empty (Set Context!8504)))))

(declare-fun bm!372350 () Bool)

(declare-fun call!372355 () (Set Context!8504))

(assert (=> bm!372350 (= call!372355 (derivationStepZipperDown!316 (h!67227 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343))))))) (Context!8505 (t!374086 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343)))))))) (h!67229 s!2326)))))

(declare-fun e!3268998 () (Set Context!8504))

(declare-fun b!5254692 () Bool)

(assert (=> b!5254692 (= e!3268998 (set.union call!372355 (derivationStepZipperUp!240 (Context!8505 (t!374086 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343)))))))) (h!67229 s!2326))))))

(declare-fun b!5254694 () Bool)

(assert (=> b!5254694 (= e!3268997 call!372355)))

(declare-fun b!5254693 () Bool)

(assert (=> b!5254693 (= e!3268998 e!3268997)))

(declare-fun c!909172 () Bool)

(assert (=> b!5254693 (= c!909172 (is-Cons!60779 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343))))))))))

(declare-fun d!1691944 () Bool)

(declare-fun c!909173 () Bool)

(assert (=> d!1691944 (= c!909173 e!3268999)))

(declare-fun res!2230004 () Bool)

(assert (=> d!1691944 (=> (not res!2230004) (not e!3268999))))

(assert (=> d!1691944 (= res!2230004 (is-Cons!60779 (exprs!4752 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343))))))))))

(assert (=> d!1691944 (= (derivationStepZipperUp!240 (Context!8505 (Cons!60779 (h!67227 (exprs!4752 (h!67228 zl!343))) (t!374086 (exprs!4752 (h!67228 zl!343))))) (h!67229 s!2326)) e!3268998)))

(assert (= (and d!1691944 res!2230004) b!5254690))

(assert (= (and d!1691944 c!909173) b!5254692))

(assert (= (and d!1691944 (not c!909173)) b!5254693))

(assert (= (and b!5254693 c!909172) b!5254694))

(assert (= (and b!5254693 (not c!909172)) b!5254691))

(assert (= (or b!5254692 b!5254694) bm!372350))

(declare-fun m!6297532 () Bool)

(assert (=> b!5254690 m!6297532))

(declare-fun m!6297534 () Bool)

(assert (=> bm!372350 m!6297534))

(declare-fun m!6297536 () Bool)

(assert (=> b!5254692 m!6297536))

(assert (=> b!5254232 d!1691944))

(declare-fun bm!372351 () Bool)

(declare-fun call!372361 () (Set Context!8504))

(declare-fun c!909178 () Bool)

(declare-fun call!372359 () List!60903)

(assert (=> bm!372351 (= call!372361 (derivationStepZipperDown!316 (ite c!909178 (regOne!30249 (h!67227 (exprs!4752 (h!67228 zl!343)))) (regOne!30248 (h!67227 (exprs!4752 (h!67228 zl!343))))) (ite c!909178 lt!2153488 (Context!8505 call!372359)) (h!67229 s!2326)))))

(declare-fun b!5254697 () Bool)

(declare-fun c!909176 () Bool)

(declare-fun e!3269004 () Bool)

(assert (=> b!5254697 (= c!909176 e!3269004)))

(declare-fun res!2230005 () Bool)

(assert (=> b!5254697 (=> (not res!2230005) (not e!3269004))))

(assert (=> b!5254697 (= res!2230005 (is-Concat!23713 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun e!3269001 () (Set Context!8504))

(declare-fun e!3269002 () (Set Context!8504))

(assert (=> b!5254697 (= e!3269001 e!3269002)))

(declare-fun b!5254698 () Bool)

(declare-fun e!3269006 () (Set Context!8504))

(assert (=> b!5254698 (= e!3269006 (as set.empty (Set Context!8504)))))

(declare-fun b!5254699 () Bool)

(declare-fun call!372357 () (Set Context!8504))

(assert (=> b!5254699 (= e!3269001 (set.union call!372361 call!372357))))

(declare-fun b!5254700 () Bool)

(declare-fun c!909179 () Bool)

(assert (=> b!5254700 (= c!909179 (is-Star!14868 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun e!3269005 () (Set Context!8504))

(assert (=> b!5254700 (= e!3269005 e!3269006)))

(declare-fun bm!372352 () Bool)

(declare-fun call!372360 () List!60903)

(assert (=> bm!372352 (= call!372360 call!372359)))

(declare-fun b!5254701 () Bool)

(declare-fun call!372356 () (Set Context!8504))

(assert (=> b!5254701 (= e!3269006 call!372356)))

(declare-fun d!1691946 () Bool)

(declare-fun c!909175 () Bool)

(assert (=> d!1691946 (= c!909175 (and (is-ElementMatch!14868 (h!67227 (exprs!4752 (h!67228 zl!343)))) (= (c!909054 (h!67227 (exprs!4752 (h!67228 zl!343)))) (h!67229 s!2326))))))

(declare-fun e!3269003 () (Set Context!8504))

(assert (=> d!1691946 (= (derivationStepZipperDown!316 (h!67227 (exprs!4752 (h!67228 zl!343))) lt!2153488 (h!67229 s!2326)) e!3269003)))

(declare-fun b!5254702 () Bool)

(assert (=> b!5254702 (= e!3269002 e!3269005)))

(declare-fun c!909177 () Bool)

(assert (=> b!5254702 (= c!909177 (is-Concat!23713 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254703 () Bool)

(declare-fun call!372358 () (Set Context!8504))

(assert (=> b!5254703 (= e!3269002 (set.union call!372361 call!372358))))

(declare-fun bm!372353 () Bool)

(assert (=> bm!372353 (= call!372357 (derivationStepZipperDown!316 (ite c!909178 (regTwo!30249 (h!67227 (exprs!4752 (h!67228 zl!343)))) (ite c!909176 (regTwo!30248 (h!67227 (exprs!4752 (h!67228 zl!343)))) (ite c!909177 (regOne!30248 (h!67227 (exprs!4752 (h!67228 zl!343)))) (reg!15197 (h!67227 (exprs!4752 (h!67228 zl!343))))))) (ite (or c!909178 c!909176) lt!2153488 (Context!8505 call!372360)) (h!67229 s!2326)))))

(declare-fun bm!372354 () Bool)

(assert (=> bm!372354 (= call!372359 ($colon$colon!1323 (exprs!4752 lt!2153488) (ite (or c!909176 c!909177) (regTwo!30248 (h!67227 (exprs!4752 (h!67228 zl!343)))) (h!67227 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun bm!372355 () Bool)

(assert (=> bm!372355 (= call!372358 call!372357)))

(declare-fun b!5254704 () Bool)

(assert (=> b!5254704 (= e!3269004 (nullable!5037 (regOne!30248 (h!67227 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun bm!372356 () Bool)

(assert (=> bm!372356 (= call!372356 call!372358)))

(declare-fun b!5254705 () Bool)

(assert (=> b!5254705 (= e!3269003 (set.insert lt!2153488 (as set.empty (Set Context!8504))))))

(declare-fun b!5254706 () Bool)

(assert (=> b!5254706 (= e!3269003 e!3269001)))

(assert (=> b!5254706 (= c!909178 (is-Union!14868 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254707 () Bool)

(assert (=> b!5254707 (= e!3269005 call!372356)))

(assert (= (and d!1691946 c!909175) b!5254705))

(assert (= (and d!1691946 (not c!909175)) b!5254706))

(assert (= (and b!5254706 c!909178) b!5254699))

(assert (= (and b!5254706 (not c!909178)) b!5254697))

(assert (= (and b!5254697 res!2230005) b!5254704))

(assert (= (and b!5254697 c!909176) b!5254703))

(assert (= (and b!5254697 (not c!909176)) b!5254702))

(assert (= (and b!5254702 c!909177) b!5254707))

(assert (= (and b!5254702 (not c!909177)) b!5254700))

(assert (= (and b!5254700 c!909179) b!5254701))

(assert (= (and b!5254700 (not c!909179)) b!5254698))

(assert (= (or b!5254707 b!5254701) bm!372352))

(assert (= (or b!5254707 b!5254701) bm!372356))

(assert (= (or b!5254703 bm!372352) bm!372354))

(assert (= (or b!5254703 bm!372356) bm!372355))

(assert (= (or b!5254699 bm!372355) bm!372353))

(assert (= (or b!5254699 b!5254703) bm!372351))

(assert (=> b!5254705 m!6297480))

(declare-fun m!6297542 () Bool)

(assert (=> bm!372351 m!6297542))

(declare-fun m!6297544 () Bool)

(assert (=> b!5254704 m!6297544))

(declare-fun m!6297546 () Bool)

(assert (=> bm!372353 m!6297546))

(declare-fun m!6297548 () Bool)

(assert (=> bm!372354 m!6297548))

(assert (=> b!5254232 d!1691946))

(declare-fun b!5254708 () Bool)

(declare-fun e!3269009 () Bool)

(assert (=> b!5254708 (= e!3269009 (nullable!5037 (h!67227 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254709 () Bool)

(declare-fun e!3269007 () (Set Context!8504))

(assert (=> b!5254709 (= e!3269007 (as set.empty (Set Context!8504)))))

(declare-fun bm!372357 () Bool)

(declare-fun call!372362 () (Set Context!8504))

(assert (=> bm!372357 (= call!372362 (derivationStepZipperDown!316 (h!67227 (exprs!4752 (h!67228 zl!343))) (Context!8505 (t!374086 (exprs!4752 (h!67228 zl!343)))) (h!67229 s!2326)))))

(declare-fun b!5254710 () Bool)

(declare-fun e!3269008 () (Set Context!8504))

(assert (=> b!5254710 (= e!3269008 (set.union call!372362 (derivationStepZipperUp!240 (Context!8505 (t!374086 (exprs!4752 (h!67228 zl!343)))) (h!67229 s!2326))))))

(declare-fun b!5254712 () Bool)

(assert (=> b!5254712 (= e!3269007 call!372362)))

(declare-fun b!5254711 () Bool)

(assert (=> b!5254711 (= e!3269008 e!3269007)))

(declare-fun c!909180 () Bool)

(assert (=> b!5254711 (= c!909180 (is-Cons!60779 (exprs!4752 (h!67228 zl!343))))))

(declare-fun d!1691950 () Bool)

(declare-fun c!909181 () Bool)

(assert (=> d!1691950 (= c!909181 e!3269009)))

(declare-fun res!2230006 () Bool)

(assert (=> d!1691950 (=> (not res!2230006) (not e!3269009))))

(assert (=> d!1691950 (= res!2230006 (is-Cons!60779 (exprs!4752 (h!67228 zl!343))))))

(assert (=> d!1691950 (= (derivationStepZipperUp!240 (h!67228 zl!343) (h!67229 s!2326)) e!3269008)))

(assert (= (and d!1691950 res!2230006) b!5254708))

(assert (= (and d!1691950 c!909181) b!5254710))

(assert (= (and d!1691950 (not c!909181)) b!5254711))

(assert (= (and b!5254711 c!909180) b!5254712))

(assert (= (and b!5254711 (not c!909180)) b!5254709))

(assert (= (or b!5254710 b!5254712) bm!372357))

(assert (=> b!5254708 m!6297172))

(declare-fun m!6297550 () Bool)

(assert (=> bm!372357 m!6297550))

(declare-fun m!6297552 () Bool)

(assert (=> b!5254710 m!6297552))

(assert (=> b!5254232 d!1691950))

(declare-fun d!1691952 () Bool)

(declare-fun choose!39167 ((Set Context!8504) Int) (Set Context!8504))

(assert (=> d!1691952 (= (flatMap!595 z!1189 lambda!264706) (choose!39167 z!1189 lambda!264706))))

(declare-fun bs!1218591 () Bool)

(assert (= bs!1218591 d!1691952))

(declare-fun m!6297554 () Bool)

(assert (=> bs!1218591 m!6297554))

(assert (=> b!5254232 d!1691952))

(declare-fun b!5254731 () Bool)

(declare-fun res!2230021 () Bool)

(declare-fun e!3269024 () Bool)

(assert (=> b!5254731 (=> res!2230021 e!3269024)))

(assert (=> b!5254731 (= res!2230021 (not (is-Concat!23713 r!7292)))))

(declare-fun e!3269029 () Bool)

(assert (=> b!5254731 (= e!3269029 e!3269024)))

(declare-fun bm!372364 () Bool)

(declare-fun call!372371 () Bool)

(declare-fun c!909187 () Bool)

(assert (=> bm!372364 (= call!372371 (validRegex!6604 (ite c!909187 (regTwo!30249 r!7292) (regTwo!30248 r!7292))))))

(declare-fun b!5254732 () Bool)

(declare-fun e!3269026 () Bool)

(assert (=> b!5254732 (= e!3269026 call!372371)))

(declare-fun d!1691954 () Bool)

(declare-fun res!2230018 () Bool)

(declare-fun e!3269025 () Bool)

(assert (=> d!1691954 (=> res!2230018 e!3269025)))

(assert (=> d!1691954 (= res!2230018 (is-ElementMatch!14868 r!7292))))

(assert (=> d!1691954 (= (validRegex!6604 r!7292) e!3269025)))

(declare-fun b!5254733 () Bool)

(declare-fun res!2230020 () Bool)

(assert (=> b!5254733 (=> (not res!2230020) (not e!3269026))))

(declare-fun call!372370 () Bool)

(assert (=> b!5254733 (= res!2230020 call!372370)))

(assert (=> b!5254733 (= e!3269029 e!3269026)))

(declare-fun b!5254734 () Bool)

(declare-fun e!3269027 () Bool)

(assert (=> b!5254734 (= e!3269027 e!3269029)))

(assert (=> b!5254734 (= c!909187 (is-Union!14868 r!7292))))

(declare-fun b!5254735 () Bool)

(declare-fun e!3269030 () Bool)

(assert (=> b!5254735 (= e!3269024 e!3269030)))

(declare-fun res!2230017 () Bool)

(assert (=> b!5254735 (=> (not res!2230017) (not e!3269030))))

(assert (=> b!5254735 (= res!2230017 call!372370)))

(declare-fun bm!372365 () Bool)

(declare-fun call!372369 () Bool)

(declare-fun c!909186 () Bool)

(assert (=> bm!372365 (= call!372369 (validRegex!6604 (ite c!909186 (reg!15197 r!7292) (ite c!909187 (regOne!30249 r!7292) (regOne!30248 r!7292)))))))

(declare-fun bm!372366 () Bool)

(assert (=> bm!372366 (= call!372370 call!372369)))

(declare-fun b!5254736 () Bool)

(declare-fun e!3269028 () Bool)

(assert (=> b!5254736 (= e!3269027 e!3269028)))

(declare-fun res!2230019 () Bool)

(assert (=> b!5254736 (= res!2230019 (not (nullable!5037 (reg!15197 r!7292))))))

(assert (=> b!5254736 (=> (not res!2230019) (not e!3269028))))

(declare-fun b!5254737 () Bool)

(assert (=> b!5254737 (= e!3269028 call!372369)))

(declare-fun b!5254738 () Bool)

(assert (=> b!5254738 (= e!3269030 call!372371)))

(declare-fun b!5254739 () Bool)

(assert (=> b!5254739 (= e!3269025 e!3269027)))

(assert (=> b!5254739 (= c!909186 (is-Star!14868 r!7292))))

(assert (= (and d!1691954 (not res!2230018)) b!5254739))

(assert (= (and b!5254739 c!909186) b!5254736))

(assert (= (and b!5254739 (not c!909186)) b!5254734))

(assert (= (and b!5254736 res!2230019) b!5254737))

(assert (= (and b!5254734 c!909187) b!5254733))

(assert (= (and b!5254734 (not c!909187)) b!5254731))

(assert (= (and b!5254733 res!2230020) b!5254732))

(assert (= (and b!5254731 (not res!2230021)) b!5254735))

(assert (= (and b!5254735 res!2230017) b!5254738))

(assert (= (or b!5254732 b!5254738) bm!372364))

(assert (= (or b!5254733 b!5254735) bm!372366))

(assert (= (or b!5254737 bm!372366) bm!372365))

(declare-fun m!6297556 () Bool)

(assert (=> bm!372364 m!6297556))

(declare-fun m!6297558 () Bool)

(assert (=> bm!372365 m!6297558))

(declare-fun m!6297560 () Bool)

(assert (=> b!5254736 m!6297560))

(assert (=> start!555056 d!1691954))

(declare-fun bs!1218592 () Bool)

(declare-fun d!1691956 () Bool)

(assert (= bs!1218592 (and d!1691956 d!1691894)))

(declare-fun lambda!264750 () Int)

(assert (=> bs!1218592 (= lambda!264750 lambda!264724)))

(declare-fun bs!1218593 () Bool)

(assert (= bs!1218593 (and d!1691956 d!1691896)))

(assert (=> bs!1218593 (= lambda!264750 lambda!264727)))

(declare-fun bs!1218594 () Bool)

(assert (= bs!1218594 (and d!1691956 d!1691906)))

(assert (=> bs!1218594 (= lambda!264750 lambda!264734)))

(declare-fun bs!1218595 () Bool)

(assert (= bs!1218595 (and d!1691956 d!1691910)))

(assert (=> bs!1218595 (= lambda!264750 lambda!264735)))

(declare-fun e!3269058 () Bool)

(assert (=> d!1691956 e!3269058))

(declare-fun res!2230030 () Bool)

(assert (=> d!1691956 (=> (not res!2230030) (not e!3269058))))

(declare-fun lt!2153707 () Regex!14868)

(assert (=> d!1691956 (= res!2230030 (validRegex!6604 lt!2153707))))

(declare-fun e!3269057 () Regex!14868)

(assert (=> d!1691956 (= lt!2153707 e!3269057)))

(declare-fun c!909204 () Bool)

(declare-fun e!3269060 () Bool)

(assert (=> d!1691956 (= c!909204 e!3269060)))

(declare-fun res!2230031 () Bool)

(assert (=> d!1691956 (=> (not res!2230031) (not e!3269060))))

(assert (=> d!1691956 (= res!2230031 (is-Cons!60779 (unfocusZipperList!310 zl!343)))))

(assert (=> d!1691956 (forall!14282 (unfocusZipperList!310 zl!343) lambda!264750)))

(assert (=> d!1691956 (= (generalisedUnion!797 (unfocusZipperList!310 zl!343)) lt!2153707)))

(declare-fun b!5254780 () Bool)

(assert (=> b!5254780 (= e!3269060 (isEmpty!32718 (t!374086 (unfocusZipperList!310 zl!343))))))

(declare-fun b!5254781 () Bool)

(declare-fun e!3269056 () Bool)

(assert (=> b!5254781 (= e!3269058 e!3269056)))

(declare-fun c!909205 () Bool)

(assert (=> b!5254781 (= c!909205 (isEmpty!32718 (unfocusZipperList!310 zl!343)))))

(declare-fun b!5254782 () Bool)

(declare-fun e!3269059 () Bool)

(declare-fun isUnion!249 (Regex!14868) Bool)

(assert (=> b!5254782 (= e!3269059 (isUnion!249 lt!2153707))))

(declare-fun b!5254783 () Bool)

(declare-fun isEmptyLang!817 (Regex!14868) Bool)

(assert (=> b!5254783 (= e!3269056 (isEmptyLang!817 lt!2153707))))

(declare-fun b!5254784 () Bool)

(declare-fun e!3269055 () Regex!14868)

(assert (=> b!5254784 (= e!3269057 e!3269055)))

(declare-fun c!909207 () Bool)

(assert (=> b!5254784 (= c!909207 (is-Cons!60779 (unfocusZipperList!310 zl!343)))))

(declare-fun b!5254785 () Bool)

(assert (=> b!5254785 (= e!3269057 (h!67227 (unfocusZipperList!310 zl!343)))))

(declare-fun b!5254786 () Bool)

(assert (=> b!5254786 (= e!3269055 EmptyLang!14868)))

(declare-fun b!5254787 () Bool)

(assert (=> b!5254787 (= e!3269059 (= lt!2153707 (head!11265 (unfocusZipperList!310 zl!343))))))

(declare-fun b!5254788 () Bool)

(assert (=> b!5254788 (= e!3269056 e!3269059)))

(declare-fun c!909206 () Bool)

(assert (=> b!5254788 (= c!909206 (isEmpty!32718 (tail!10362 (unfocusZipperList!310 zl!343))))))

(declare-fun b!5254789 () Bool)

(assert (=> b!5254789 (= e!3269055 (Union!14868 (h!67227 (unfocusZipperList!310 zl!343)) (generalisedUnion!797 (t!374086 (unfocusZipperList!310 zl!343)))))))

(assert (= (and d!1691956 res!2230031) b!5254780))

(assert (= (and d!1691956 c!909204) b!5254785))

(assert (= (and d!1691956 (not c!909204)) b!5254784))

(assert (= (and b!5254784 c!909207) b!5254789))

(assert (= (and b!5254784 (not c!909207)) b!5254786))

(assert (= (and d!1691956 res!2230030) b!5254781))

(assert (= (and b!5254781 c!909205) b!5254783))

(assert (= (and b!5254781 (not c!909205)) b!5254788))

(assert (= (and b!5254788 c!909206) b!5254787))

(assert (= (and b!5254788 (not c!909206)) b!5254782))

(declare-fun m!6297562 () Bool)

(assert (=> b!5254783 m!6297562))

(declare-fun m!6297564 () Bool)

(assert (=> b!5254789 m!6297564))

(declare-fun m!6297566 () Bool)

(assert (=> b!5254780 m!6297566))

(assert (=> b!5254787 m!6297142))

(declare-fun m!6297568 () Bool)

(assert (=> b!5254787 m!6297568))

(assert (=> b!5254781 m!6297142))

(declare-fun m!6297570 () Bool)

(assert (=> b!5254781 m!6297570))

(declare-fun m!6297572 () Bool)

(assert (=> d!1691956 m!6297572))

(assert (=> d!1691956 m!6297142))

(declare-fun m!6297574 () Bool)

(assert (=> d!1691956 m!6297574))

(declare-fun m!6297576 () Bool)

(assert (=> b!5254782 m!6297576))

(assert (=> b!5254788 m!6297142))

(declare-fun m!6297578 () Bool)

(assert (=> b!5254788 m!6297578))

(assert (=> b!5254788 m!6297578))

(declare-fun m!6297580 () Bool)

(assert (=> b!5254788 m!6297580))

(assert (=> b!5254249 d!1691956))

(declare-fun bs!1218598 () Bool)

(declare-fun d!1691958 () Bool)

(assert (= bs!1218598 (and d!1691958 d!1691910)))

(declare-fun lambda!264754 () Int)

(assert (=> bs!1218598 (= lambda!264754 lambda!264735)))

(declare-fun bs!1218599 () Bool)

(assert (= bs!1218599 (and d!1691958 d!1691956)))

(assert (=> bs!1218599 (= lambda!264754 lambda!264750)))

(declare-fun bs!1218600 () Bool)

(assert (= bs!1218600 (and d!1691958 d!1691896)))

(assert (=> bs!1218600 (= lambda!264754 lambda!264727)))

(declare-fun bs!1218601 () Bool)

(assert (= bs!1218601 (and d!1691958 d!1691894)))

(assert (=> bs!1218601 (= lambda!264754 lambda!264724)))

(declare-fun bs!1218602 () Bool)

(assert (= bs!1218602 (and d!1691958 d!1691906)))

(assert (=> bs!1218602 (= lambda!264754 lambda!264734)))

(declare-fun lt!2153711 () List!60903)

(assert (=> d!1691958 (forall!14282 lt!2153711 lambda!264754)))

(declare-fun e!3269069 () List!60903)

(assert (=> d!1691958 (= lt!2153711 e!3269069)))

(declare-fun c!909214 () Bool)

(assert (=> d!1691958 (= c!909214 (is-Cons!60780 zl!343))))

(assert (=> d!1691958 (= (unfocusZipperList!310 zl!343) lt!2153711)))

(declare-fun b!5254804 () Bool)

(assert (=> b!5254804 (= e!3269069 (Cons!60779 (generalisedConcat!537 (exprs!4752 (h!67228 zl!343))) (unfocusZipperList!310 (t!374087 zl!343))))))

(declare-fun b!5254805 () Bool)

(assert (=> b!5254805 (= e!3269069 Nil!60779)))

(assert (= (and d!1691958 c!909214) b!5254804))

(assert (= (and d!1691958 (not c!909214)) b!5254805))

(declare-fun m!6297598 () Bool)

(assert (=> d!1691958 m!6297598))

(assert (=> b!5254804 m!6297146))

(declare-fun m!6297600 () Bool)

(assert (=> b!5254804 m!6297600))

(assert (=> b!5254249 d!1691958))

(declare-fun d!1691962 () Bool)

(declare-fun e!3269072 () Bool)

(assert (=> d!1691962 e!3269072))

(declare-fun res!2230036 () Bool)

(assert (=> d!1691962 (=> (not res!2230036) (not e!3269072))))

(declare-fun lt!2153714 () List!60904)

(declare-fun noDuplicate!1230 (List!60904) Bool)

(assert (=> d!1691962 (= res!2230036 (noDuplicate!1230 lt!2153714))))

(declare-fun choose!39169 ((Set Context!8504)) List!60904)

(assert (=> d!1691962 (= lt!2153714 (choose!39169 z!1189))))

(assert (=> d!1691962 (= (toList!8652 z!1189) lt!2153714)))

(declare-fun b!5254808 () Bool)

(declare-fun content!10797 (List!60904) (Set Context!8504))

(assert (=> b!5254808 (= e!3269072 (= (content!10797 lt!2153714) z!1189))))

(assert (= (and d!1691962 res!2230036) b!5254808))

(declare-fun m!6297602 () Bool)

(assert (=> d!1691962 m!6297602))

(declare-fun m!6297604 () Bool)

(assert (=> d!1691962 m!6297604))

(declare-fun m!6297606 () Bool)

(assert (=> b!5254808 m!6297606))

(assert (=> b!5254229 d!1691962))

(declare-fun d!1691964 () Bool)

(declare-fun lt!2153717 () Int)

(assert (=> d!1691964 (>= lt!2153717 0)))

(declare-fun e!3269075 () Int)

(assert (=> d!1691964 (= lt!2153717 e!3269075)))

(declare-fun c!909217 () Bool)

(assert (=> d!1691964 (= c!909217 (is-Cons!60780 zl!343))))

(assert (=> d!1691964 (= (zipperDepthTotal!49 zl!343) lt!2153717)))

(declare-fun b!5254813 () Bool)

(declare-fun contextDepthTotal!31 (Context!8504) Int)

(assert (=> b!5254813 (= e!3269075 (+ (contextDepthTotal!31 (h!67228 zl!343)) (zipperDepthTotal!49 (t!374087 zl!343))))))

(declare-fun b!5254814 () Bool)

(assert (=> b!5254814 (= e!3269075 0)))

(assert (= (and d!1691964 c!909217) b!5254813))

(assert (= (and d!1691964 (not c!909217)) b!5254814))

(declare-fun m!6297608 () Bool)

(assert (=> b!5254813 m!6297608))

(declare-fun m!6297610 () Bool)

(assert (=> b!5254813 m!6297610))

(assert (=> b!5254230 d!1691964))

(declare-fun d!1691966 () Bool)

(declare-fun lt!2153718 () Int)

(assert (=> d!1691966 (>= lt!2153718 0)))

(declare-fun e!3269076 () Int)

(assert (=> d!1691966 (= lt!2153718 e!3269076)))

(declare-fun c!909218 () Bool)

(assert (=> d!1691966 (= c!909218 (is-Cons!60780 lt!2153478))))

(assert (=> d!1691966 (= (zipperDepthTotal!49 lt!2153478) lt!2153718)))

(declare-fun b!5254815 () Bool)

(assert (=> b!5254815 (= e!3269076 (+ (contextDepthTotal!31 (h!67228 lt!2153478)) (zipperDepthTotal!49 (t!374087 lt!2153478))))))

(declare-fun b!5254816 () Bool)

(assert (=> b!5254816 (= e!3269076 0)))

(assert (= (and d!1691966 c!909218) b!5254815))

(assert (= (and d!1691966 (not c!909218)) b!5254816))

(declare-fun m!6297612 () Bool)

(assert (=> b!5254815 m!6297612))

(declare-fun m!6297614 () Bool)

(assert (=> b!5254815 m!6297614))

(assert (=> b!5254230 d!1691966))

(declare-fun d!1691968 () Bool)

(declare-fun lt!2153719 () Int)

(assert (=> d!1691968 (>= lt!2153719 0)))

(declare-fun e!3269077 () Int)

(assert (=> d!1691968 (= lt!2153719 e!3269077)))

(declare-fun c!909219 () Bool)

(assert (=> d!1691968 (= c!909219 (is-Cons!60780 lt!2153509))))

(assert (=> d!1691968 (= (zipperDepthTotal!49 lt!2153509) lt!2153719)))

(declare-fun b!5254817 () Bool)

(assert (=> b!5254817 (= e!3269077 (+ (contextDepthTotal!31 (h!67228 lt!2153509)) (zipperDepthTotal!49 (t!374087 lt!2153509))))))

(declare-fun b!5254818 () Bool)

(assert (=> b!5254818 (= e!3269077 0)))

(assert (= (and d!1691968 c!909219) b!5254817))

(assert (= (and d!1691968 (not c!909219)) b!5254818))

(declare-fun m!6297616 () Bool)

(assert (=> b!5254817 m!6297616))

(declare-fun m!6297618 () Bool)

(assert (=> b!5254817 m!6297618))

(assert (=> b!5254250 d!1691968))

(declare-fun d!1691970 () Bool)

(declare-fun c!909221 () Bool)

(assert (=> d!1691970 (= c!909221 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269079 () Bool)

(assert (=> d!1691970 (= (matchZipper!1112 lt!2153476 (t!374088 s!2326)) e!3269079)))

(declare-fun b!5254823 () Bool)

(assert (=> b!5254823 (= e!3269079 (nullableZipper!1273 lt!2153476))))

(declare-fun b!5254824 () Bool)

(assert (=> b!5254824 (= e!3269079 (matchZipper!1112 (derivationStepZipper!1117 lt!2153476 (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1691970 c!909221) b!5254823))

(assert (= (and d!1691970 (not c!909221)) b!5254824))

(assert (=> d!1691970 m!6297340))

(declare-fun m!6297620 () Bool)

(assert (=> b!5254823 m!6297620))

(assert (=> b!5254824 m!6297344))

(assert (=> b!5254824 m!6297344))

(declare-fun m!6297622 () Bool)

(assert (=> b!5254824 m!6297622))

(assert (=> b!5254824 m!6297348))

(assert (=> b!5254824 m!6297622))

(assert (=> b!5254824 m!6297348))

(declare-fun m!6297624 () Bool)

(assert (=> b!5254824 m!6297624))

(assert (=> b!5254251 d!1691970))

(declare-fun d!1691972 () Bool)

(declare-fun c!909223 () Bool)

(assert (=> d!1691972 (= c!909223 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269081 () Bool)

(assert (=> d!1691972 (= (matchZipper!1112 lt!2153504 (t!374088 s!2326)) e!3269081)))

(declare-fun b!5254825 () Bool)

(assert (=> b!5254825 (= e!3269081 (nullableZipper!1273 lt!2153504))))

(declare-fun b!5254826 () Bool)

(assert (=> b!5254826 (= e!3269081 (matchZipper!1112 (derivationStepZipper!1117 lt!2153504 (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1691972 c!909223) b!5254825))

(assert (= (and d!1691972 (not c!909223)) b!5254826))

(assert (=> d!1691972 m!6297340))

(declare-fun m!6297626 () Bool)

(assert (=> b!5254825 m!6297626))

(assert (=> b!5254826 m!6297344))

(assert (=> b!5254826 m!6297344))

(declare-fun m!6297628 () Bool)

(assert (=> b!5254826 m!6297628))

(assert (=> b!5254826 m!6297348))

(assert (=> b!5254826 m!6297628))

(assert (=> b!5254826 m!6297348))

(declare-fun m!6297630 () Bool)

(assert (=> b!5254826 m!6297630))

(assert (=> b!5254251 d!1691972))

(declare-fun d!1691974 () Bool)

(declare-fun c!909224 () Bool)

(assert (=> d!1691974 (= c!909224 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269082 () Bool)

(assert (=> d!1691974 (= (matchZipper!1112 lt!2153486 (t!374088 s!2326)) e!3269082)))

(declare-fun b!5254827 () Bool)

(assert (=> b!5254827 (= e!3269082 (nullableZipper!1273 lt!2153486))))

(declare-fun b!5254828 () Bool)

(assert (=> b!5254828 (= e!3269082 (matchZipper!1112 (derivationStepZipper!1117 lt!2153486 (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1691974 c!909224) b!5254827))

(assert (= (and d!1691974 (not c!909224)) b!5254828))

(assert (=> d!1691974 m!6297340))

(declare-fun m!6297632 () Bool)

(assert (=> b!5254827 m!6297632))

(assert (=> b!5254828 m!6297344))

(assert (=> b!5254828 m!6297344))

(declare-fun m!6297634 () Bool)

(assert (=> b!5254828 m!6297634))

(assert (=> b!5254828 m!6297348))

(assert (=> b!5254828 m!6297634))

(assert (=> b!5254828 m!6297348))

(declare-fun m!6297636 () Bool)

(assert (=> b!5254828 m!6297636))

(assert (=> b!5254251 d!1691974))

(declare-fun e!3269086 () Bool)

(declare-fun d!1691976 () Bool)

(assert (=> d!1691976 (= (matchZipper!1112 (set.union lt!2153486 lt!2153466) (t!374088 s!2326)) e!3269086)))

(declare-fun res!2230039 () Bool)

(assert (=> d!1691976 (=> res!2230039 e!3269086)))

(assert (=> d!1691976 (= res!2230039 (matchZipper!1112 lt!2153486 (t!374088 s!2326)))))

(declare-fun lt!2153722 () Unit!152958)

(declare-fun choose!39170 ((Set Context!8504) (Set Context!8504) List!60905) Unit!152958)

(assert (=> d!1691976 (= lt!2153722 (choose!39170 lt!2153486 lt!2153466 (t!374088 s!2326)))))

(assert (=> d!1691976 (= (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153486 lt!2153466 (t!374088 s!2326)) lt!2153722)))

(declare-fun b!5254833 () Bool)

(assert (=> b!5254833 (= e!3269086 (matchZipper!1112 lt!2153466 (t!374088 s!2326)))))

(assert (= (and d!1691976 (not res!2230039)) b!5254833))

(declare-fun m!6297650 () Bool)

(assert (=> d!1691976 m!6297650))

(assert (=> d!1691976 m!6297044))

(declare-fun m!6297652 () Bool)

(assert (=> d!1691976 m!6297652))

(assert (=> b!5254833 m!6297106))

(assert (=> b!5254251 d!1691976))

(declare-fun d!1691980 () Bool)

(declare-fun lt!2153727 () Regex!14868)

(assert (=> d!1691980 (validRegex!6604 lt!2153727)))

(assert (=> d!1691980 (= lt!2153727 (generalisedUnion!797 (unfocusZipperList!310 zl!343)))))

(assert (=> d!1691980 (= (unfocusZipper!610 zl!343) lt!2153727)))

(declare-fun bs!1218603 () Bool)

(assert (= bs!1218603 d!1691980))

(declare-fun m!6297654 () Bool)

(assert (=> bs!1218603 m!6297654))

(assert (=> bs!1218603 m!6297142))

(assert (=> bs!1218603 m!6297142))

(assert (=> bs!1218603 m!6297144))

(assert (=> b!5254226 d!1691980))

(declare-fun d!1691982 () Bool)

(assert (=> d!1691982 (= (nullable!5037 (regTwo!30249 (regOne!30248 r!7292))) (nullableFct!1425 (regTwo!30249 (regOne!30248 r!7292))))))

(declare-fun bs!1218604 () Bool)

(assert (= bs!1218604 d!1691982))

(declare-fun m!6297656 () Bool)

(assert (=> bs!1218604 m!6297656))

(assert (=> b!5254246 d!1691982))

(declare-fun d!1691984 () Bool)

(assert (=> d!1691984 (= (flatMap!595 lt!2153506 lambda!264706) (dynLambda!24014 lambda!264706 lt!2153470))))

(declare-fun lt!2153728 () Unit!152958)

(assert (=> d!1691984 (= lt!2153728 (choose!39165 lt!2153506 lt!2153470 lambda!264706))))

(assert (=> d!1691984 (= lt!2153506 (set.insert lt!2153470 (as set.empty (Set Context!8504))))))

(assert (=> d!1691984 (= (lemmaFlatMapOnSingletonSet!127 lt!2153506 lt!2153470 lambda!264706) lt!2153728)))

(declare-fun b_lambda!202871 () Bool)

(assert (=> (not b_lambda!202871) (not d!1691984)))

(declare-fun bs!1218605 () Bool)

(assert (= bs!1218605 d!1691984))

(assert (=> bs!1218605 m!6297140))

(declare-fun m!6297658 () Bool)

(assert (=> bs!1218605 m!6297658))

(declare-fun m!6297660 () Bool)

(assert (=> bs!1218605 m!6297660))

(assert (=> bs!1218605 m!6297134))

(assert (=> b!5254246 d!1691984))

(declare-fun d!1691986 () Bool)

(declare-fun c!909226 () Bool)

(assert (=> d!1691986 (= c!909226 (isEmpty!32721 s!2326))))

(declare-fun e!3269090 () Bool)

(assert (=> d!1691986 (= (matchZipper!1112 lt!2153462 s!2326) e!3269090)))

(declare-fun b!5254837 () Bool)

(assert (=> b!5254837 (= e!3269090 (nullableZipper!1273 lt!2153462))))

(declare-fun b!5254838 () Bool)

(assert (=> b!5254838 (= e!3269090 (matchZipper!1112 (derivationStepZipper!1117 lt!2153462 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691986 c!909226) b!5254837))

(assert (= (and d!1691986 (not c!909226)) b!5254838))

(assert (=> d!1691986 m!6297382))

(declare-fun m!6297668 () Bool)

(assert (=> b!5254837 m!6297668))

(assert (=> b!5254838 m!6297386))

(assert (=> b!5254838 m!6297386))

(declare-fun m!6297670 () Bool)

(assert (=> b!5254838 m!6297670))

(assert (=> b!5254838 m!6297390))

(assert (=> b!5254838 m!6297670))

(assert (=> b!5254838 m!6297390))

(declare-fun m!6297672 () Bool)

(assert (=> b!5254838 m!6297672))

(assert (=> b!5254246 d!1691986))

(declare-fun d!1691990 () Bool)

(assert (=> d!1691990 (= (flatMap!595 lt!2153506 lambda!264706) (choose!39167 lt!2153506 lambda!264706))))

(declare-fun bs!1218606 () Bool)

(assert (= bs!1218606 d!1691990))

(declare-fun m!6297674 () Bool)

(assert (=> bs!1218606 m!6297674))

(assert (=> b!5254246 d!1691990))

(declare-fun d!1691992 () Bool)

(declare-fun c!909227 () Bool)

(assert (=> d!1691992 (= c!909227 (isEmpty!32721 s!2326))))

(declare-fun e!3269091 () Bool)

(assert (=> d!1691992 (= (matchZipper!1112 z!1189 s!2326) e!3269091)))

(declare-fun b!5254839 () Bool)

(assert (=> b!5254839 (= e!3269091 (nullableZipper!1273 z!1189))))

(declare-fun b!5254840 () Bool)

(assert (=> b!5254840 (= e!3269091 (matchZipper!1112 (derivationStepZipper!1117 z!1189 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1691992 c!909227) b!5254839))

(assert (= (and d!1691992 (not c!909227)) b!5254840))

(assert (=> d!1691992 m!6297382))

(declare-fun m!6297676 () Bool)

(assert (=> b!5254839 m!6297676))

(assert (=> b!5254840 m!6297386))

(assert (=> b!5254840 m!6297386))

(declare-fun m!6297678 () Bool)

(assert (=> b!5254840 m!6297678))

(assert (=> b!5254840 m!6297390))

(assert (=> b!5254840 m!6297678))

(assert (=> b!5254840 m!6297390))

(declare-fun m!6297680 () Bool)

(assert (=> b!5254840 m!6297680))

(assert (=> b!5254246 d!1691992))

(declare-fun b!5254841 () Bool)

(declare-fun e!3269094 () Bool)

(assert (=> b!5254841 (= e!3269094 (nullable!5037 (h!67227 (exprs!4752 lt!2153470))))))

(declare-fun b!5254842 () Bool)

(declare-fun e!3269092 () (Set Context!8504))

(assert (=> b!5254842 (= e!3269092 (as set.empty (Set Context!8504)))))

(declare-fun bm!372367 () Bool)

(declare-fun call!372372 () (Set Context!8504))

(assert (=> bm!372367 (= call!372372 (derivationStepZipperDown!316 (h!67227 (exprs!4752 lt!2153470)) (Context!8505 (t!374086 (exprs!4752 lt!2153470))) (h!67229 s!2326)))))

(declare-fun b!5254843 () Bool)

(declare-fun e!3269093 () (Set Context!8504))

(assert (=> b!5254843 (= e!3269093 (set.union call!372372 (derivationStepZipperUp!240 (Context!8505 (t!374086 (exprs!4752 lt!2153470))) (h!67229 s!2326))))))

(declare-fun b!5254845 () Bool)

(assert (=> b!5254845 (= e!3269092 call!372372)))

(declare-fun b!5254844 () Bool)

(assert (=> b!5254844 (= e!3269093 e!3269092)))

(declare-fun c!909228 () Bool)

(assert (=> b!5254844 (= c!909228 (is-Cons!60779 (exprs!4752 lt!2153470)))))

(declare-fun d!1691994 () Bool)

(declare-fun c!909229 () Bool)

(assert (=> d!1691994 (= c!909229 e!3269094)))

(declare-fun res!2230043 () Bool)

(assert (=> d!1691994 (=> (not res!2230043) (not e!3269094))))

(assert (=> d!1691994 (= res!2230043 (is-Cons!60779 (exprs!4752 lt!2153470)))))

(assert (=> d!1691994 (= (derivationStepZipperUp!240 lt!2153470 (h!67229 s!2326)) e!3269093)))

(assert (= (and d!1691994 res!2230043) b!5254841))

(assert (= (and d!1691994 c!909229) b!5254843))

(assert (= (and d!1691994 (not c!909229)) b!5254844))

(assert (= (and b!5254844 c!909228) b!5254845))

(assert (= (and b!5254844 (not c!909228)) b!5254842))

(assert (= (or b!5254843 b!5254845) bm!372367))

(declare-fun m!6297682 () Bool)

(assert (=> b!5254841 m!6297682))

(declare-fun m!6297684 () Bool)

(assert (=> bm!372367 m!6297684))

(declare-fun m!6297686 () Bool)

(assert (=> b!5254843 m!6297686))

(assert (=> b!5254246 d!1691994))

(declare-fun b!5254846 () Bool)

(declare-fun e!3269097 () Bool)

(assert (=> b!5254846 (= e!3269097 (nullable!5037 (h!67227 (exprs!4752 lt!2153479))))))

(declare-fun b!5254847 () Bool)

(declare-fun e!3269095 () (Set Context!8504))

(assert (=> b!5254847 (= e!3269095 (as set.empty (Set Context!8504)))))

(declare-fun bm!372368 () Bool)

(declare-fun call!372373 () (Set Context!8504))

(assert (=> bm!372368 (= call!372373 (derivationStepZipperDown!316 (h!67227 (exprs!4752 lt!2153479)) (Context!8505 (t!374086 (exprs!4752 lt!2153479))) (h!67229 s!2326)))))

(declare-fun b!5254848 () Bool)

(declare-fun e!3269096 () (Set Context!8504))

(assert (=> b!5254848 (= e!3269096 (set.union call!372373 (derivationStepZipperUp!240 (Context!8505 (t!374086 (exprs!4752 lt!2153479))) (h!67229 s!2326))))))

(declare-fun b!5254850 () Bool)

(assert (=> b!5254850 (= e!3269095 call!372373)))

(declare-fun b!5254849 () Bool)

(assert (=> b!5254849 (= e!3269096 e!3269095)))

(declare-fun c!909230 () Bool)

(assert (=> b!5254849 (= c!909230 (is-Cons!60779 (exprs!4752 lt!2153479)))))

(declare-fun d!1691996 () Bool)

(declare-fun c!909231 () Bool)

(assert (=> d!1691996 (= c!909231 e!3269097)))

(declare-fun res!2230044 () Bool)

(assert (=> d!1691996 (=> (not res!2230044) (not e!3269097))))

(assert (=> d!1691996 (= res!2230044 (is-Cons!60779 (exprs!4752 lt!2153479)))))

(assert (=> d!1691996 (= (derivationStepZipperUp!240 lt!2153479 (h!67229 s!2326)) e!3269096)))

(assert (= (and d!1691996 res!2230044) b!5254846))

(assert (= (and d!1691996 c!909231) b!5254848))

(assert (= (and d!1691996 (not c!909231)) b!5254849))

(assert (= (and b!5254849 c!909230) b!5254850))

(assert (= (and b!5254849 (not c!909230)) b!5254847))

(assert (= (or b!5254848 b!5254850) bm!372368))

(declare-fun m!6297688 () Bool)

(assert (=> b!5254846 m!6297688))

(declare-fun m!6297690 () Bool)

(assert (=> bm!372368 m!6297690))

(declare-fun m!6297692 () Bool)

(assert (=> b!5254848 m!6297692))

(assert (=> b!5254246 d!1691996))

(declare-fun d!1691998 () Bool)

(assert (=> d!1691998 (= (flatMap!595 lt!2153462 lambda!264706) (dynLambda!24014 lambda!264706 lt!2153479))))

(declare-fun lt!2153730 () Unit!152958)

(assert (=> d!1691998 (= lt!2153730 (choose!39165 lt!2153462 lt!2153479 lambda!264706))))

(assert (=> d!1691998 (= lt!2153462 (set.insert lt!2153479 (as set.empty (Set Context!8504))))))

(assert (=> d!1691998 (= (lemmaFlatMapOnSingletonSet!127 lt!2153462 lt!2153479 lambda!264706) lt!2153730)))

(declare-fun b_lambda!202873 () Bool)

(assert (=> (not b_lambda!202873) (not d!1691998)))

(declare-fun bs!1218607 () Bool)

(assert (= bs!1218607 d!1691998))

(assert (=> bs!1218607 m!6297128))

(declare-fun m!6297694 () Bool)

(assert (=> bs!1218607 m!6297694))

(declare-fun m!6297696 () Bool)

(assert (=> bs!1218607 m!6297696))

(assert (=> bs!1218607 m!6297126))

(assert (=> b!5254246 d!1691998))

(declare-fun d!1692000 () Bool)

(assert (=> d!1692000 (= (flatMap!595 lt!2153462 lambda!264706) (choose!39167 lt!2153462 lambda!264706))))

(declare-fun bs!1218608 () Bool)

(assert (= bs!1218608 d!1692000))

(declare-fun m!6297698 () Bool)

(assert (=> bs!1218608 m!6297698))

(assert (=> b!5254246 d!1692000))

(declare-fun d!1692002 () Bool)

(assert (=> d!1692002 (= (nullable!5037 (regOne!30249 (regOne!30248 r!7292))) (nullableFct!1425 (regOne!30249 (regOne!30248 r!7292))))))

(declare-fun bs!1218609 () Bool)

(assert (= bs!1218609 d!1692002))

(declare-fun m!6297700 () Bool)

(assert (=> bs!1218609 m!6297700))

(assert (=> b!5254246 d!1692002))

(declare-fun b!5254891 () Bool)

(declare-fun e!3269122 () Bool)

(assert (=> b!5254891 (= e!3269122 (matchR!7053 (regTwo!30248 r!7292) s!2326))))

(declare-fun b!5254892 () Bool)

(declare-fun res!2230061 () Bool)

(declare-fun e!3269120 () Bool)

(assert (=> b!5254892 (=> (not res!2230061) (not e!3269120))))

(declare-fun lt!2153742 () Option!14979)

(declare-fun get!20893 (Option!14979) tuple2!64134)

(assert (=> b!5254892 (= res!2230061 (matchR!7053 (regOne!30248 r!7292) (_1!35370 (get!20893 lt!2153742))))))

(declare-fun b!5254893 () Bool)

(declare-fun lt!2153740 () Unit!152958)

(declare-fun lt!2153741 () Unit!152958)

(assert (=> b!5254893 (= lt!2153740 lt!2153741)))

(declare-fun ++!13253 (List!60905 List!60905) List!60905)

(assert (=> b!5254893 (= (++!13253 (++!13253 Nil!60781 (Cons!60781 (h!67229 s!2326) Nil!60781)) (t!374088 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1668 (List!60905 C!30006 List!60905 List!60905) Unit!152958)

(assert (=> b!5254893 (= lt!2153741 (lemmaMoveElementToOtherListKeepsConcatEq!1668 Nil!60781 (h!67229 s!2326) (t!374088 s!2326) s!2326))))

(declare-fun e!3269121 () Option!14979)

(assert (=> b!5254893 (= e!3269121 (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) (++!13253 Nil!60781 (Cons!60781 (h!67229 s!2326) Nil!60781)) (t!374088 s!2326) s!2326))))

(declare-fun b!5254894 () Bool)

(assert (=> b!5254894 (= e!3269120 (= (++!13253 (_1!35370 (get!20893 lt!2153742)) (_2!35370 (get!20893 lt!2153742))) s!2326))))

(declare-fun d!1692004 () Bool)

(declare-fun e!3269124 () Bool)

(assert (=> d!1692004 e!3269124))

(declare-fun res!2230060 () Bool)

(assert (=> d!1692004 (=> res!2230060 e!3269124)))

(assert (=> d!1692004 (= res!2230060 e!3269120)))

(declare-fun res!2230057 () Bool)

(assert (=> d!1692004 (=> (not res!2230057) (not e!3269120))))

(assert (=> d!1692004 (= res!2230057 (isDefined!11682 lt!2153742))))

(declare-fun e!3269123 () Option!14979)

(assert (=> d!1692004 (= lt!2153742 e!3269123)))

(declare-fun c!909246 () Bool)

(assert (=> d!1692004 (= c!909246 e!3269122)))

(declare-fun res!2230058 () Bool)

(assert (=> d!1692004 (=> (not res!2230058) (not e!3269122))))

(assert (=> d!1692004 (= res!2230058 (matchR!7053 (regOne!30248 r!7292) Nil!60781))))

(assert (=> d!1692004 (validRegex!6604 (regOne!30248 r!7292))))

(assert (=> d!1692004 (= (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) Nil!60781 s!2326 s!2326) lt!2153742)))

(declare-fun b!5254895 () Bool)

(assert (=> b!5254895 (= e!3269123 e!3269121)))

(declare-fun c!909247 () Bool)

(assert (=> b!5254895 (= c!909247 (is-Nil!60781 s!2326))))

(declare-fun b!5254896 () Bool)

(assert (=> b!5254896 (= e!3269124 (not (isDefined!11682 lt!2153742)))))

(declare-fun b!5254897 () Bool)

(assert (=> b!5254897 (= e!3269123 (Some!14978 (tuple2!64135 Nil!60781 s!2326)))))

(declare-fun b!5254898 () Bool)

(declare-fun res!2230059 () Bool)

(assert (=> b!5254898 (=> (not res!2230059) (not e!3269120))))

(assert (=> b!5254898 (= res!2230059 (matchR!7053 (regTwo!30248 r!7292) (_2!35370 (get!20893 lt!2153742))))))

(declare-fun b!5254899 () Bool)

(assert (=> b!5254899 (= e!3269121 None!14978)))

(assert (= (and d!1692004 res!2230058) b!5254891))

(assert (= (and d!1692004 c!909246) b!5254897))

(assert (= (and d!1692004 (not c!909246)) b!5254895))

(assert (= (and b!5254895 c!909247) b!5254899))

(assert (= (and b!5254895 (not c!909247)) b!5254893))

(assert (= (and d!1692004 res!2230057) b!5254892))

(assert (= (and b!5254892 res!2230061) b!5254898))

(assert (= (and b!5254898 res!2230059) b!5254894))

(assert (= (and d!1692004 (not res!2230060)) b!5254896))

(declare-fun m!6297704 () Bool)

(assert (=> b!5254894 m!6297704))

(declare-fun m!6297706 () Bool)

(assert (=> b!5254894 m!6297706))

(declare-fun m!6297708 () Bool)

(assert (=> d!1692004 m!6297708))

(declare-fun m!6297710 () Bool)

(assert (=> d!1692004 m!6297710))

(declare-fun m!6297712 () Bool)

(assert (=> d!1692004 m!6297712))

(assert (=> b!5254896 m!6297708))

(declare-fun m!6297714 () Bool)

(assert (=> b!5254891 m!6297714))

(assert (=> b!5254898 m!6297704))

(declare-fun m!6297716 () Bool)

(assert (=> b!5254898 m!6297716))

(declare-fun m!6297718 () Bool)

(assert (=> b!5254893 m!6297718))

(assert (=> b!5254893 m!6297718))

(declare-fun m!6297720 () Bool)

(assert (=> b!5254893 m!6297720))

(declare-fun m!6297722 () Bool)

(assert (=> b!5254893 m!6297722))

(assert (=> b!5254893 m!6297718))

(declare-fun m!6297724 () Bool)

(assert (=> b!5254893 m!6297724))

(assert (=> b!5254892 m!6297704))

(declare-fun m!6297726 () Bool)

(assert (=> b!5254892 m!6297726))

(assert (=> b!5254247 d!1692004))

(declare-fun bs!1218611 () Bool)

(declare-fun d!1692008 () Bool)

(assert (= bs!1218611 (and d!1692008 b!5254547)))

(declare-fun lambda!264757 () Int)

(assert (=> bs!1218611 (not (= lambda!264757 lambda!264736))))

(declare-fun bs!1218612 () Bool)

(assert (= bs!1218612 (and d!1692008 b!5254247)))

(assert (=> bs!1218612 (not (= lambda!264757 lambda!264705))))

(declare-fun bs!1218613 () Bool)

(assert (= bs!1218613 (and d!1692008 b!5254566)))

(assert (=> bs!1218613 (not (= lambda!264757 lambda!264739))))

(declare-fun bs!1218614 () Bool)

(assert (= bs!1218614 (and d!1692008 b!5254480)))

(assert (=> bs!1218614 (not (= lambda!264757 lambda!264733))))

(declare-fun bs!1218615 () Bool)

(assert (= bs!1218615 (and d!1692008 b!5254558)))

(assert (=> bs!1218615 (not (= lambda!264757 lambda!264738))))

(assert (=> bs!1218612 (= lambda!264757 lambda!264704)))

(declare-fun bs!1218616 () Bool)

(assert (= bs!1218616 (and d!1692008 b!5254555)))

(assert (=> bs!1218616 (not (= lambda!264757 lambda!264737))))

(declare-fun bs!1218617 () Bool)

(assert (= bs!1218617 (and d!1692008 b!5254472)))

(assert (=> bs!1218617 (not (= lambda!264757 lambda!264732))))

(assert (=> d!1692008 true))

(assert (=> d!1692008 true))

(assert (=> d!1692008 true))

(assert (=> d!1692008 (= (isDefined!11682 (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) Nil!60781 s!2326 s!2326)) (Exists!2049 lambda!264757))))

(declare-fun lt!2153745 () Unit!152958)

(declare-fun choose!39173 (Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> d!1692008 (= lt!2153745 (choose!39173 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326))))

(assert (=> d!1692008 (validRegex!6604 (regOne!30248 r!7292))))

(assert (=> d!1692008 (= (lemmaFindConcatSeparationEquivalentToExists!1157 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326) lt!2153745)))

(declare-fun bs!1218618 () Bool)

(assert (= bs!1218618 d!1692008))

(assert (=> bs!1218618 m!6297154))

(assert (=> bs!1218618 m!6297156))

(assert (=> bs!1218618 m!6297154))

(assert (=> bs!1218618 m!6297712))

(declare-fun m!6297738 () Bool)

(assert (=> bs!1218618 m!6297738))

(declare-fun m!6297740 () Bool)

(assert (=> bs!1218618 m!6297740))

(assert (=> b!5254247 d!1692008))

(declare-fun d!1692012 () Bool)

(declare-fun choose!39174 (Int) Bool)

(assert (=> d!1692012 (= (Exists!2049 lambda!264705) (choose!39174 lambda!264705))))

(declare-fun bs!1218619 () Bool)

(assert (= bs!1218619 d!1692012))

(declare-fun m!6297742 () Bool)

(assert (=> bs!1218619 m!6297742))

(assert (=> b!5254247 d!1692012))

(declare-fun d!1692014 () Bool)

(assert (=> d!1692014 (= (Exists!2049 lambda!264704) (choose!39174 lambda!264704))))

(declare-fun bs!1218620 () Bool)

(assert (= bs!1218620 d!1692014))

(declare-fun m!6297744 () Bool)

(assert (=> bs!1218620 m!6297744))

(assert (=> b!5254247 d!1692014))

(declare-fun bs!1218621 () Bool)

(declare-fun d!1692016 () Bool)

(assert (= bs!1218621 (and d!1692016 b!5254547)))

(declare-fun lambda!264762 () Int)

(assert (=> bs!1218621 (not (= lambda!264762 lambda!264736))))

(declare-fun bs!1218622 () Bool)

(assert (= bs!1218622 (and d!1692016 b!5254247)))

(assert (=> bs!1218622 (not (= lambda!264762 lambda!264705))))

(declare-fun bs!1218623 () Bool)

(assert (= bs!1218623 (and d!1692016 b!5254566)))

(assert (=> bs!1218623 (not (= lambda!264762 lambda!264739))))

(declare-fun bs!1218624 () Bool)

(assert (= bs!1218624 (and d!1692016 d!1692008)))

(assert (=> bs!1218624 (= lambda!264762 lambda!264757)))

(declare-fun bs!1218625 () Bool)

(assert (= bs!1218625 (and d!1692016 b!5254480)))

(assert (=> bs!1218625 (not (= lambda!264762 lambda!264733))))

(declare-fun bs!1218626 () Bool)

(assert (= bs!1218626 (and d!1692016 b!5254558)))

(assert (=> bs!1218626 (not (= lambda!264762 lambda!264738))))

(assert (=> bs!1218622 (= lambda!264762 lambda!264704)))

(declare-fun bs!1218627 () Bool)

(assert (= bs!1218627 (and d!1692016 b!5254555)))

(assert (=> bs!1218627 (not (= lambda!264762 lambda!264737))))

(declare-fun bs!1218628 () Bool)

(assert (= bs!1218628 (and d!1692016 b!5254472)))

(assert (=> bs!1218628 (not (= lambda!264762 lambda!264732))))

(assert (=> d!1692016 true))

(assert (=> d!1692016 true))

(assert (=> d!1692016 true))

(declare-fun lambda!264763 () Int)

(assert (=> bs!1218621 (not (= lambda!264763 lambda!264736))))

(declare-fun bs!1218629 () Bool)

(assert (= bs!1218629 d!1692016))

(assert (=> bs!1218629 (not (= lambda!264763 lambda!264762))))

(assert (=> bs!1218622 (= lambda!264763 lambda!264705)))

(assert (=> bs!1218623 (= (and (= (regOne!30248 r!7292) (regOne!30248 lt!2153492)) (= (regTwo!30248 r!7292) (regTwo!30248 lt!2153492))) (= lambda!264763 lambda!264739))))

(assert (=> bs!1218624 (not (= lambda!264763 lambda!264757))))

(assert (=> bs!1218625 (= lambda!264763 lambda!264733)))

(assert (=> bs!1218626 (not (= lambda!264763 lambda!264738))))

(assert (=> bs!1218622 (not (= lambda!264763 lambda!264704))))

(assert (=> bs!1218627 (= (and (= (regOne!30248 r!7292) (regOne!30248 lt!2153503)) (= (regTwo!30248 r!7292) (regTwo!30248 lt!2153503))) (= lambda!264763 lambda!264737))))

(assert (=> bs!1218628 (not (= lambda!264763 lambda!264732))))

(assert (=> d!1692016 true))

(assert (=> d!1692016 true))

(assert (=> d!1692016 true))

(assert (=> d!1692016 (= (Exists!2049 lambda!264762) (Exists!2049 lambda!264763))))

(declare-fun lt!2153751 () Unit!152958)

(declare-fun choose!39175 (Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> d!1692016 (= lt!2153751 (choose!39175 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326))))

(assert (=> d!1692016 (validRegex!6604 (regOne!30248 r!7292))))

(assert (=> d!1692016 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!703 (regOne!30248 r!7292) (regTwo!30248 r!7292) s!2326) lt!2153751)))

(declare-fun m!6297768 () Bool)

(assert (=> bs!1218629 m!6297768))

(declare-fun m!6297770 () Bool)

(assert (=> bs!1218629 m!6297770))

(declare-fun m!6297772 () Bool)

(assert (=> bs!1218629 m!6297772))

(assert (=> bs!1218629 m!6297712))

(assert (=> b!5254247 d!1692016))

(declare-fun d!1692026 () Bool)

(declare-fun isEmpty!32723 (Option!14979) Bool)

(assert (=> d!1692026 (= (isDefined!11682 (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) Nil!60781 s!2326 s!2326)) (not (isEmpty!32723 (findConcatSeparation!1393 (regOne!30248 r!7292) (regTwo!30248 r!7292) Nil!60781 s!2326 s!2326))))))

(declare-fun bs!1218630 () Bool)

(assert (= bs!1218630 d!1692026))

(assert (=> bs!1218630 m!6297154))

(declare-fun m!6297774 () Bool)

(assert (=> bs!1218630 m!6297774))

(assert (=> b!5254247 d!1692026))

(declare-fun d!1692028 () Bool)

(declare-fun e!3269148 () Bool)

(assert (=> d!1692028 (= (matchZipper!1112 (set.union lt!2153486 lt!2153482) (t!374088 s!2326)) e!3269148)))

(declare-fun res!2230079 () Bool)

(assert (=> d!1692028 (=> res!2230079 e!3269148)))

(assert (=> d!1692028 (= res!2230079 (matchZipper!1112 lt!2153486 (t!374088 s!2326)))))

(declare-fun lt!2153752 () Unit!152958)

(assert (=> d!1692028 (= lt!2153752 (choose!39170 lt!2153486 lt!2153482 (t!374088 s!2326)))))

(assert (=> d!1692028 (= (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153486 lt!2153482 (t!374088 s!2326)) lt!2153752)))

(declare-fun b!5254941 () Bool)

(assert (=> b!5254941 (= e!3269148 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(assert (= (and d!1692028 (not res!2230079)) b!5254941))

(assert (=> d!1692028 m!6297104))

(assert (=> d!1692028 m!6297044))

(declare-fun m!6297776 () Bool)

(assert (=> d!1692028 m!6297776))

(assert (=> b!5254941 m!6297058))

(assert (=> b!5254227 d!1692028))

(declare-fun d!1692030 () Bool)

(declare-fun c!909260 () Bool)

(assert (=> d!1692030 (= c!909260 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269149 () Bool)

(assert (=> d!1692030 (= (matchZipper!1112 (set.union lt!2153486 lt!2153482) (t!374088 s!2326)) e!3269149)))

(declare-fun b!5254942 () Bool)

(assert (=> b!5254942 (= e!3269149 (nullableZipper!1273 (set.union lt!2153486 lt!2153482)))))

(declare-fun b!5254943 () Bool)

(assert (=> b!5254943 (= e!3269149 (matchZipper!1112 (derivationStepZipper!1117 (set.union lt!2153486 lt!2153482) (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1692030 c!909260) b!5254942))

(assert (= (and d!1692030 (not c!909260)) b!5254943))

(assert (=> d!1692030 m!6297340))

(declare-fun m!6297778 () Bool)

(assert (=> b!5254942 m!6297778))

(assert (=> b!5254943 m!6297344))

(assert (=> b!5254943 m!6297344))

(declare-fun m!6297780 () Bool)

(assert (=> b!5254943 m!6297780))

(assert (=> b!5254943 m!6297348))

(assert (=> b!5254943 m!6297780))

(assert (=> b!5254943 m!6297348))

(declare-fun m!6297782 () Bool)

(assert (=> b!5254943 m!6297782))

(assert (=> b!5254227 d!1692030))

(declare-fun e!3269150 () Bool)

(declare-fun d!1692032 () Bool)

(assert (=> d!1692032 (= (matchZipper!1112 (set.union lt!2153476 lt!2153482) (t!374088 s!2326)) e!3269150)))

(declare-fun res!2230080 () Bool)

(assert (=> d!1692032 (=> res!2230080 e!3269150)))

(assert (=> d!1692032 (= res!2230080 (matchZipper!1112 lt!2153476 (t!374088 s!2326)))))

(declare-fun lt!2153753 () Unit!152958)

(assert (=> d!1692032 (= lt!2153753 (choose!39170 lt!2153476 lt!2153482 (t!374088 s!2326)))))

(assert (=> d!1692032 (= (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153476 lt!2153482 (t!374088 s!2326)) lt!2153753)))

(declare-fun b!5254944 () Bool)

(assert (=> b!5254944 (= e!3269150 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(assert (= (and d!1692032 (not res!2230080)) b!5254944))

(assert (=> d!1692032 m!6297052))

(assert (=> d!1692032 m!6297040))

(declare-fun m!6297784 () Bool)

(assert (=> d!1692032 m!6297784))

(assert (=> b!5254944 m!6297058))

(assert (=> b!5254228 d!1692032))

(assert (=> b!5254228 d!1691970))

(declare-fun d!1692034 () Bool)

(declare-fun c!909261 () Bool)

(assert (=> d!1692034 (= c!909261 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269151 () Bool)

(assert (=> d!1692034 (= (matchZipper!1112 (set.union lt!2153476 lt!2153482) (t!374088 s!2326)) e!3269151)))

(declare-fun b!5254945 () Bool)

(assert (=> b!5254945 (= e!3269151 (nullableZipper!1273 (set.union lt!2153476 lt!2153482)))))

(declare-fun b!5254946 () Bool)

(assert (=> b!5254946 (= e!3269151 (matchZipper!1112 (derivationStepZipper!1117 (set.union lt!2153476 lt!2153482) (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1692034 c!909261) b!5254945))

(assert (= (and d!1692034 (not c!909261)) b!5254946))

(assert (=> d!1692034 m!6297340))

(declare-fun m!6297786 () Bool)

(assert (=> b!5254945 m!6297786))

(assert (=> b!5254946 m!6297344))

(assert (=> b!5254946 m!6297344))

(declare-fun m!6297788 () Bool)

(assert (=> b!5254946 m!6297788))

(assert (=> b!5254946 m!6297348))

(assert (=> b!5254946 m!6297788))

(assert (=> b!5254946 m!6297348))

(declare-fun m!6297790 () Bool)

(assert (=> b!5254946 m!6297790))

(assert (=> b!5254228 d!1692034))

(declare-fun bs!1218631 () Bool)

(declare-fun d!1692036 () Bool)

(assert (= bs!1218631 (and d!1692036 d!1691958)))

(declare-fun lambda!264764 () Int)

(assert (=> bs!1218631 (= lambda!264764 lambda!264754)))

(declare-fun bs!1218632 () Bool)

(assert (= bs!1218632 (and d!1692036 d!1691910)))

(assert (=> bs!1218632 (= lambda!264764 lambda!264735)))

(declare-fun bs!1218633 () Bool)

(assert (= bs!1218633 (and d!1692036 d!1691956)))

(assert (=> bs!1218633 (= lambda!264764 lambda!264750)))

(declare-fun bs!1218634 () Bool)

(assert (= bs!1218634 (and d!1692036 d!1691896)))

(assert (=> bs!1218634 (= lambda!264764 lambda!264727)))

(declare-fun bs!1218635 () Bool)

(assert (= bs!1218635 (and d!1692036 d!1691894)))

(assert (=> bs!1218635 (= lambda!264764 lambda!264724)))

(declare-fun bs!1218636 () Bool)

(assert (= bs!1218636 (and d!1692036 d!1691906)))

(assert (=> bs!1218636 (= lambda!264764 lambda!264734)))

(declare-fun e!3269152 () Bool)

(assert (=> d!1692036 e!3269152))

(declare-fun res!2230081 () Bool)

(assert (=> d!1692036 (=> (not res!2230081) (not e!3269152))))

(declare-fun lt!2153754 () Regex!14868)

(assert (=> d!1692036 (= res!2230081 (validRegex!6604 lt!2153754))))

(declare-fun e!3269155 () Regex!14868)

(assert (=> d!1692036 (= lt!2153754 e!3269155)))

(declare-fun c!909262 () Bool)

(declare-fun e!3269156 () Bool)

(assert (=> d!1692036 (= c!909262 e!3269156)))

(declare-fun res!2230082 () Bool)

(assert (=> d!1692036 (=> (not res!2230082) (not e!3269156))))

(assert (=> d!1692036 (= res!2230082 (is-Cons!60779 (exprs!4752 (h!67228 zl!343))))))

(assert (=> d!1692036 (forall!14282 (exprs!4752 (h!67228 zl!343)) lambda!264764)))

(assert (=> d!1692036 (= (generalisedConcat!537 (exprs!4752 (h!67228 zl!343))) lt!2153754)))

(declare-fun b!5254947 () Bool)

(declare-fun e!3269153 () Regex!14868)

(assert (=> b!5254947 (= e!3269155 e!3269153)))

(declare-fun c!909265 () Bool)

(assert (=> b!5254947 (= c!909265 (is-Cons!60779 (exprs!4752 (h!67228 zl!343))))))

(declare-fun b!5254948 () Bool)

(declare-fun e!3269157 () Bool)

(assert (=> b!5254948 (= e!3269157 (isConcat!331 lt!2153754))))

(declare-fun b!5254949 () Bool)

(assert (=> b!5254949 (= e!3269153 (Concat!23713 (h!67227 (exprs!4752 (h!67228 zl!343))) (generalisedConcat!537 (t!374086 (exprs!4752 (h!67228 zl!343))))))))

(declare-fun b!5254950 () Bool)

(declare-fun e!3269154 () Bool)

(assert (=> b!5254950 (= e!3269152 e!3269154)))

(declare-fun c!909263 () Bool)

(assert (=> b!5254950 (= c!909263 (isEmpty!32718 (exprs!4752 (h!67228 zl!343))))))

(declare-fun b!5254951 () Bool)

(assert (=> b!5254951 (= e!3269155 (h!67227 (exprs!4752 (h!67228 zl!343))))))

(declare-fun b!5254952 () Bool)

(assert (=> b!5254952 (= e!3269154 e!3269157)))

(declare-fun c!909264 () Bool)

(assert (=> b!5254952 (= c!909264 (isEmpty!32718 (tail!10362 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254953 () Bool)

(assert (=> b!5254953 (= e!3269154 (isEmptyExpr!808 lt!2153754))))

(declare-fun b!5254954 () Bool)

(assert (=> b!5254954 (= e!3269156 (isEmpty!32718 (t!374086 (exprs!4752 (h!67228 zl!343)))))))

(declare-fun b!5254955 () Bool)

(assert (=> b!5254955 (= e!3269153 EmptyExpr!14868)))

(declare-fun b!5254956 () Bool)

(assert (=> b!5254956 (= e!3269157 (= lt!2153754 (head!11265 (exprs!4752 (h!67228 zl!343)))))))

(assert (= (and d!1692036 res!2230082) b!5254954))

(assert (= (and d!1692036 c!909262) b!5254951))

(assert (= (and d!1692036 (not c!909262)) b!5254947))

(assert (= (and b!5254947 c!909265) b!5254949))

(assert (= (and b!5254947 (not c!909265)) b!5254955))

(assert (= (and d!1692036 res!2230081) b!5254950))

(assert (= (and b!5254950 c!909263) b!5254953))

(assert (= (and b!5254950 (not c!909263)) b!5254952))

(assert (= (and b!5254952 c!909264) b!5254956))

(assert (= (and b!5254952 (not c!909264)) b!5254948))

(declare-fun m!6297792 () Bool)

(assert (=> b!5254948 m!6297792))

(assert (=> b!5254949 m!6297048))

(declare-fun m!6297794 () Bool)

(assert (=> b!5254956 m!6297794))

(declare-fun m!6297796 () Bool)

(assert (=> d!1692036 m!6297796))

(declare-fun m!6297798 () Bool)

(assert (=> d!1692036 m!6297798))

(declare-fun m!6297800 () Bool)

(assert (=> b!5254953 m!6297800))

(declare-fun m!6297802 () Bool)

(assert (=> b!5254952 m!6297802))

(assert (=> b!5254952 m!6297802))

(declare-fun m!6297804 () Bool)

(assert (=> b!5254952 m!6297804))

(assert (=> b!5254954 m!6297186))

(declare-fun m!6297806 () Bool)

(assert (=> b!5254950 m!6297806))

(assert (=> b!5254244 d!1692036))

(declare-fun e!3269158 () Bool)

(declare-fun d!1692038 () Bool)

(assert (=> d!1692038 (= (matchZipper!1112 (set.union lt!2153466 lt!2153482) (t!374088 s!2326)) e!3269158)))

(declare-fun res!2230083 () Bool)

(assert (=> d!1692038 (=> res!2230083 e!3269158)))

(assert (=> d!1692038 (= res!2230083 (matchZipper!1112 lt!2153466 (t!374088 s!2326)))))

(declare-fun lt!2153755 () Unit!152958)

(assert (=> d!1692038 (= lt!2153755 (choose!39170 lt!2153466 lt!2153482 (t!374088 s!2326)))))

(assert (=> d!1692038 (= (lemmaZipperConcatMatchesSameAsBothZippers!105 lt!2153466 lt!2153482 (t!374088 s!2326)) lt!2153755)))

(declare-fun b!5254957 () Bool)

(assert (=> b!5254957 (= e!3269158 (matchZipper!1112 lt!2153482 (t!374088 s!2326)))))

(assert (= (and d!1692038 (not res!2230083)) b!5254957))

(assert (=> d!1692038 m!6297114))

(assert (=> d!1692038 m!6297106))

(declare-fun m!6297808 () Bool)

(assert (=> d!1692038 m!6297808))

(assert (=> b!5254957 m!6297058))

(assert (=> b!5254245 d!1692038))

(assert (=> b!5254245 d!1691890))

(declare-fun d!1692040 () Bool)

(declare-fun c!909266 () Bool)

(assert (=> d!1692040 (= c!909266 (isEmpty!32721 (t!374088 s!2326)))))

(declare-fun e!3269159 () Bool)

(assert (=> d!1692040 (= (matchZipper!1112 (set.union lt!2153466 lt!2153482) (t!374088 s!2326)) e!3269159)))

(declare-fun b!5254958 () Bool)

(assert (=> b!5254958 (= e!3269159 (nullableZipper!1273 (set.union lt!2153466 lt!2153482)))))

(declare-fun b!5254959 () Bool)

(assert (=> b!5254959 (= e!3269159 (matchZipper!1112 (derivationStepZipper!1117 (set.union lt!2153466 lt!2153482) (head!11264 (t!374088 s!2326))) (tail!10361 (t!374088 s!2326))))))

(assert (= (and d!1692040 c!909266) b!5254958))

(assert (= (and d!1692040 (not c!909266)) b!5254959))

(assert (=> d!1692040 m!6297340))

(declare-fun m!6297810 () Bool)

(assert (=> b!5254958 m!6297810))

(assert (=> b!5254959 m!6297344))

(assert (=> b!5254959 m!6297344))

(declare-fun m!6297812 () Bool)

(assert (=> b!5254959 m!6297812))

(assert (=> b!5254959 m!6297348))

(assert (=> b!5254959 m!6297812))

(assert (=> b!5254959 m!6297348))

(declare-fun m!6297814 () Bool)

(assert (=> b!5254959 m!6297814))

(assert (=> b!5254245 d!1692040))

(declare-fun d!1692042 () Bool)

(assert (=> d!1692042 (= (matchR!7053 (Concat!23713 (Union!14868 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30249 (regOne!30248 r!7292))) (regTwo!30248 r!7292)) s!2326) (matchR!7053 (Union!14868 (Concat!23713 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292)) (Concat!23713 (regTwo!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292))) s!2326))))

(declare-fun lt!2153758 () Unit!152958)

(declare-fun choose!39176 (Regex!14868 Regex!14868 Regex!14868 List!60905) Unit!152958)

(assert (=> d!1692042 (= lt!2153758 (choose!39176 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292) s!2326))))

(assert (=> d!1692042 (validRegex!6604 (regOne!30249 (regOne!30248 r!7292)))))

(assert (=> d!1692042 (= (lemmaConcatDistributesInUnion!13 (regOne!30249 (regOne!30248 r!7292)) (regTwo!30249 (regOne!30248 r!7292)) (regTwo!30248 r!7292) s!2326) lt!2153758)))

(declare-fun bs!1218637 () Bool)

(assert (= bs!1218637 d!1692042))

(declare-fun m!6297816 () Bool)

(assert (=> bs!1218637 m!6297816))

(declare-fun m!6297818 () Bool)

(assert (=> bs!1218637 m!6297818))

(declare-fun m!6297820 () Bool)

(assert (=> bs!1218637 m!6297820))

(declare-fun m!6297822 () Bool)

(assert (=> bs!1218637 m!6297822))

(assert (=> b!5254241 d!1692042))

(declare-fun b!5254982 () Bool)

(declare-fun res!2230094 () Bool)

(declare-fun e!3269174 () Bool)

(assert (=> b!5254982 (=> res!2230094 e!3269174)))

(assert (=> b!5254982 (= res!2230094 (not (is-Concat!23713 lt!2153503)))))

(declare-fun e!3269179 () Bool)

(assert (=> b!5254982 (= e!3269179 e!3269174)))

(declare-fun bm!372393 () Bool)

(declare-fun call!372400 () Bool)

(declare-fun c!909276 () Bool)

(assert (=> bm!372393 (= call!372400 (validRegex!6604 (ite c!909276 (regTwo!30249 lt!2153503) (regTwo!30248 lt!2153503))))))

(declare-fun b!5254983 () Bool)

(declare-fun e!3269176 () Bool)

(assert (=> b!5254983 (= e!3269176 call!372400)))

(declare-fun d!1692044 () Bool)

(declare-fun res!2230091 () Bool)

(declare-fun e!3269175 () Bool)

(assert (=> d!1692044 (=> res!2230091 e!3269175)))

(assert (=> d!1692044 (= res!2230091 (is-ElementMatch!14868 lt!2153503))))

(assert (=> d!1692044 (= (validRegex!6604 lt!2153503) e!3269175)))

(declare-fun b!5254984 () Bool)

(declare-fun res!2230093 () Bool)

(assert (=> b!5254984 (=> (not res!2230093) (not e!3269176))))

(declare-fun call!372399 () Bool)

(assert (=> b!5254984 (= res!2230093 call!372399)))

(assert (=> b!5254984 (= e!3269179 e!3269176)))

(declare-fun b!5254985 () Bool)

(declare-fun e!3269177 () Bool)

(assert (=> b!5254985 (= e!3269177 e!3269179)))

(assert (=> b!5254985 (= c!909276 (is-Union!14868 lt!2153503))))

(declare-fun b!5254986 () Bool)

(declare-fun e!3269180 () Bool)

(assert (=> b!5254986 (= e!3269174 e!3269180)))

(declare-fun res!2230090 () Bool)

(assert (=> b!5254986 (=> (not res!2230090) (not e!3269180))))

(assert (=> b!5254986 (= res!2230090 call!372399)))

(declare-fun bm!372394 () Bool)

(declare-fun c!909275 () Bool)

(declare-fun call!372398 () Bool)

(assert (=> bm!372394 (= call!372398 (validRegex!6604 (ite c!909275 (reg!15197 lt!2153503) (ite c!909276 (regOne!30249 lt!2153503) (regOne!30248 lt!2153503)))))))

(declare-fun bm!372395 () Bool)

(assert (=> bm!372395 (= call!372399 call!372398)))

(declare-fun b!5254987 () Bool)

(declare-fun e!3269178 () Bool)

(assert (=> b!5254987 (= e!3269177 e!3269178)))

(declare-fun res!2230092 () Bool)

(assert (=> b!5254987 (= res!2230092 (not (nullable!5037 (reg!15197 lt!2153503))))))

(assert (=> b!5254987 (=> (not res!2230092) (not e!3269178))))

(declare-fun b!5254988 () Bool)

(assert (=> b!5254988 (= e!3269178 call!372398)))

(declare-fun b!5254989 () Bool)

(assert (=> b!5254989 (= e!3269180 call!372400)))

(declare-fun b!5254990 () Bool)

(assert (=> b!5254990 (= e!3269175 e!3269177)))

(assert (=> b!5254990 (= c!909275 (is-Star!14868 lt!2153503))))

(assert (= (and d!1692044 (not res!2230091)) b!5254990))

(assert (= (and b!5254990 c!909275) b!5254987))

(assert (= (and b!5254990 (not c!909275)) b!5254985))

(assert (= (and b!5254987 res!2230092) b!5254988))

(assert (= (and b!5254985 c!909276) b!5254984))

(assert (= (and b!5254985 (not c!909276)) b!5254982))

(assert (= (and b!5254984 res!2230093) b!5254983))

(assert (= (and b!5254982 (not res!2230094)) b!5254986))

(assert (= (and b!5254986 res!2230090) b!5254989))

(assert (= (or b!5254983 b!5254989) bm!372393))

(assert (= (or b!5254984 b!5254986) bm!372395))

(assert (= (or b!5254988 bm!372395) bm!372394))

(declare-fun m!6297824 () Bool)

(assert (=> bm!372393 m!6297824))

(declare-fun m!6297826 () Bool)

(assert (=> bm!372394 m!6297826))

(declare-fun m!6297828 () Bool)

(assert (=> b!5254987 m!6297828))

(assert (=> b!5254241 d!1692044))

(declare-fun bs!1218638 () Bool)

(declare-fun b!5254991 () Bool)

(assert (= bs!1218638 (and b!5254991 b!5254547)))

(declare-fun lambda!264767 () Int)

(assert (=> bs!1218638 (= (and (= (reg!15197 lt!2153459) (reg!15197 lt!2153503)) (= lt!2153459 lt!2153503)) (= lambda!264767 lambda!264736))))

(declare-fun bs!1218639 () Bool)

(assert (= bs!1218639 (and b!5254991 d!1692016)))

(assert (=> bs!1218639 (not (= lambda!264767 lambda!264762))))

(declare-fun bs!1218640 () Bool)

(assert (= bs!1218640 (and b!5254991 b!5254247)))

(assert (=> bs!1218640 (not (= lambda!264767 lambda!264705))))

(declare-fun bs!1218641 () Bool)

(assert (= bs!1218641 (and b!5254991 b!5254566)))

(assert (=> bs!1218641 (not (= lambda!264767 lambda!264739))))

(assert (=> bs!1218639 (not (= lambda!264767 lambda!264763))))

(declare-fun bs!1218642 () Bool)

(assert (= bs!1218642 (and b!5254991 d!1692008)))

(assert (=> bs!1218642 (not (= lambda!264767 lambda!264757))))

(declare-fun bs!1218643 () Bool)

(assert (= bs!1218643 (and b!5254991 b!5254480)))

(assert (=> bs!1218643 (not (= lambda!264767 lambda!264733))))

(declare-fun bs!1218644 () Bool)

(assert (= bs!1218644 (and b!5254991 b!5254558)))

(assert (=> bs!1218644 (= (and (= (reg!15197 lt!2153459) (reg!15197 lt!2153492)) (= lt!2153459 lt!2153492)) (= lambda!264767 lambda!264738))))

(assert (=> bs!1218640 (not (= lambda!264767 lambda!264704))))

(declare-fun bs!1218645 () Bool)

(assert (= bs!1218645 (and b!5254991 b!5254555)))

(assert (=> bs!1218645 (not (= lambda!264767 lambda!264737))))

(declare-fun bs!1218646 () Bool)

(assert (= bs!1218646 (and b!5254991 b!5254472)))

(assert (=> bs!1218646 (= (and (= (reg!15197 lt!2153459) (reg!15197 r!7292)) (= lt!2153459 r!7292)) (= lambda!264767 lambda!264732))))

(assert (=> b!5254991 true))

(assert (=> b!5254991 true))

(declare-fun bs!1218647 () Bool)

(declare-fun b!5255001 () Bool)

(assert (= bs!1218647 (and b!5255001 b!5254991)))

(declare-fun lambda!264768 () Int)

(assert (=> bs!1218647 (not (= lambda!264768 lambda!264767))))

(declare-fun bs!1218648 () Bool)

(assert (= bs!1218648 (and b!5255001 b!5254547)))

(assert (=> bs!1218648 (not (= lambda!264768 lambda!264736))))

(declare-fun bs!1218649 () Bool)

(assert (= bs!1218649 (and b!5255001 d!1692016)))

(assert (=> bs!1218649 (not (= lambda!264768 lambda!264762))))

(declare-fun bs!1218650 () Bool)

(assert (= bs!1218650 (and b!5255001 b!5254247)))

(assert (=> bs!1218650 (= (and (= (regOne!30248 lt!2153459) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153459) (regTwo!30248 r!7292))) (= lambda!264768 lambda!264705))))

(declare-fun bs!1218651 () Bool)

(assert (= bs!1218651 (and b!5255001 b!5254566)))

(assert (=> bs!1218651 (= (and (= (regOne!30248 lt!2153459) (regOne!30248 lt!2153492)) (= (regTwo!30248 lt!2153459) (regTwo!30248 lt!2153492))) (= lambda!264768 lambda!264739))))

(assert (=> bs!1218649 (= (and (= (regOne!30248 lt!2153459) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153459) (regTwo!30248 r!7292))) (= lambda!264768 lambda!264763))))

(declare-fun bs!1218652 () Bool)

(assert (= bs!1218652 (and b!5255001 d!1692008)))

(assert (=> bs!1218652 (not (= lambda!264768 lambda!264757))))

(declare-fun bs!1218653 () Bool)

(assert (= bs!1218653 (and b!5255001 b!5254480)))

(assert (=> bs!1218653 (= (and (= (regOne!30248 lt!2153459) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153459) (regTwo!30248 r!7292))) (= lambda!264768 lambda!264733))))

(declare-fun bs!1218654 () Bool)

(assert (= bs!1218654 (and b!5255001 b!5254558)))

(assert (=> bs!1218654 (not (= lambda!264768 lambda!264738))))

(assert (=> bs!1218650 (not (= lambda!264768 lambda!264704))))

(declare-fun bs!1218655 () Bool)

(assert (= bs!1218655 (and b!5255001 b!5254555)))

(assert (=> bs!1218655 (= (and (= (regOne!30248 lt!2153459) (regOne!30248 lt!2153503)) (= (regTwo!30248 lt!2153459) (regTwo!30248 lt!2153503))) (= lambda!264768 lambda!264737))))

(declare-fun bs!1218656 () Bool)

(assert (= bs!1218656 (and b!5255001 b!5254472)))

(assert (=> bs!1218656 (not (= lambda!264768 lambda!264732))))

(assert (=> b!5255001 true))

(assert (=> b!5255001 true))

(declare-fun e!3269185 () Bool)

(declare-fun call!372402 () Bool)

(assert (=> b!5254991 (= e!3269185 call!372402)))

(declare-fun b!5254992 () Bool)

(declare-fun e!3269189 () Bool)

(assert (=> b!5254992 (= e!3269189 (matchRSpec!1971 (regTwo!30249 lt!2153459) s!2326))))

(declare-fun b!5254993 () Bool)

(declare-fun e!3269184 () Bool)

(assert (=> b!5254993 (= e!3269184 e!3269189)))

(declare-fun res!2230099 () Bool)

(assert (=> b!5254993 (= res!2230099 (matchRSpec!1971 (regOne!30249 lt!2153459) s!2326))))

(assert (=> b!5254993 (=> res!2230099 e!3269189)))

(declare-fun b!5254994 () Bool)

(declare-fun e!3269188 () Bool)

(declare-fun e!3269186 () Bool)

(assert (=> b!5254994 (= e!3269188 e!3269186)))

(declare-fun res!2230097 () Bool)

(assert (=> b!5254994 (= res!2230097 (not (is-EmptyLang!14868 lt!2153459)))))

(assert (=> b!5254994 (=> (not res!2230097) (not e!3269186))))

(declare-fun b!5254995 () Bool)

(declare-fun e!3269183 () Bool)

(assert (=> b!5254995 (= e!3269183 (= s!2326 (Cons!60781 (c!909054 lt!2153459) Nil!60781)))))

(declare-fun bm!372396 () Bool)

(declare-fun call!372401 () Bool)

(assert (=> bm!372396 (= call!372401 (isEmpty!32721 s!2326))))

(declare-fun b!5254996 () Bool)

(declare-fun c!909279 () Bool)

(assert (=> b!5254996 (= c!909279 (is-Union!14868 lt!2153459))))

(assert (=> b!5254996 (= e!3269183 e!3269184)))

(declare-fun d!1692046 () Bool)

(declare-fun c!909278 () Bool)

(assert (=> d!1692046 (= c!909278 (is-EmptyExpr!14868 lt!2153459))))

(assert (=> d!1692046 (= (matchRSpec!1971 lt!2153459 s!2326) e!3269188)))

(declare-fun b!5254997 () Bool)

(declare-fun c!909280 () Bool)

(assert (=> b!5254997 (= c!909280 (is-ElementMatch!14868 lt!2153459))))

(assert (=> b!5254997 (= e!3269186 e!3269183)))

(declare-fun b!5254999 () Bool)

(assert (=> b!5254999 (= e!3269188 call!372401)))

(declare-fun e!3269187 () Bool)

(assert (=> b!5255001 (= e!3269187 call!372402)))

(declare-fun b!5255002 () Bool)

(declare-fun res!2230098 () Bool)

(assert (=> b!5255002 (=> res!2230098 e!3269185)))

(assert (=> b!5255002 (= res!2230098 call!372401)))

(assert (=> b!5255002 (= e!3269187 e!3269185)))

(declare-fun c!909277 () Bool)

(declare-fun bm!372397 () Bool)

(assert (=> bm!372397 (= call!372402 (Exists!2049 (ite c!909277 lambda!264767 lambda!264768)))))

(declare-fun b!5255003 () Bool)

(assert (=> b!5255003 (= e!3269184 e!3269187)))

(assert (=> b!5255003 (= c!909277 (is-Star!14868 lt!2153459))))

(assert (= (and d!1692046 c!909278) b!5254999))

(assert (= (and d!1692046 (not c!909278)) b!5254994))

(assert (= (and b!5254994 res!2230097) b!5254997))

(assert (= (and b!5254997 c!909280) b!5254995))

(assert (= (and b!5254997 (not c!909280)) b!5254996))

(assert (= (and b!5254996 c!909279) b!5254993))

(assert (= (and b!5254996 (not c!909279)) b!5255003))

(assert (= (and b!5254993 (not res!2230099)) b!5254992))

(assert (= (and b!5255003 c!909277) b!5255002))

(assert (= (and b!5255003 (not c!909277)) b!5255001))

(assert (= (and b!5255002 (not res!2230098)) b!5254991))

(assert (= (or b!5254991 b!5255001) bm!372397))

(assert (= (or b!5254999 b!5255002) bm!372396))

(declare-fun m!6297830 () Bool)

(assert (=> b!5254992 m!6297830))

(declare-fun m!6297832 () Bool)

(assert (=> b!5254993 m!6297832))

(assert (=> bm!372396 m!6297382))

(declare-fun m!6297834 () Bool)

(assert (=> bm!372397 m!6297834))

(assert (=> b!5254241 d!1692046))

(declare-fun bs!1218657 () Bool)

(declare-fun b!5255012 () Bool)

(assert (= bs!1218657 (and b!5255012 b!5254991)))

(declare-fun lambda!264771 () Int)

(assert (=> bs!1218657 (= (and (= (reg!15197 lt!2153467) (reg!15197 lt!2153459)) (= lt!2153467 lt!2153459)) (= lambda!264771 lambda!264767))))

(declare-fun bs!1218658 () Bool)

(assert (= bs!1218658 (and b!5255012 b!5254547)))

(assert (=> bs!1218658 (= (and (= (reg!15197 lt!2153467) (reg!15197 lt!2153503)) (= lt!2153467 lt!2153503)) (= lambda!264771 lambda!264736))))

(declare-fun bs!1218659 () Bool)

(assert (= bs!1218659 (and b!5255012 d!1692016)))

(assert (=> bs!1218659 (not (= lambda!264771 lambda!264762))))

(declare-fun bs!1218660 () Bool)

(assert (= bs!1218660 (and b!5255012 b!5254247)))

(assert (=> bs!1218660 (not (= lambda!264771 lambda!264705))))

(declare-fun bs!1218661 () Bool)

(assert (= bs!1218661 (and b!5255012 b!5254566)))

(assert (=> bs!1218661 (not (= lambda!264771 lambda!264739))))

(assert (=> bs!1218659 (not (= lambda!264771 lambda!264763))))

(declare-fun bs!1218662 () Bool)

(assert (= bs!1218662 (and b!5255012 d!1692008)))

(assert (=> bs!1218662 (not (= lambda!264771 lambda!264757))))

(declare-fun bs!1218663 () Bool)

(assert (= bs!1218663 (and b!5255012 b!5254480)))

(assert (=> bs!1218663 (not (= lambda!264771 lambda!264733))))

(declare-fun bs!1218664 () Bool)

(assert (= bs!1218664 (and b!5255012 b!5254558)))

(assert (=> bs!1218664 (= (and (= (reg!15197 lt!2153467) (reg!15197 lt!2153492)) (= lt!2153467 lt!2153492)) (= lambda!264771 lambda!264738))))

(assert (=> bs!1218660 (not (= lambda!264771 lambda!264704))))

(declare-fun bs!1218665 () Bool)

(assert (= bs!1218665 (and b!5255012 b!5255001)))

(assert (=> bs!1218665 (not (= lambda!264771 lambda!264768))))

(declare-fun bs!1218666 () Bool)

(assert (= bs!1218666 (and b!5255012 b!5254555)))

(assert (=> bs!1218666 (not (= lambda!264771 lambda!264737))))

(declare-fun bs!1218667 () Bool)

(assert (= bs!1218667 (and b!5255012 b!5254472)))

(assert (=> bs!1218667 (= (and (= (reg!15197 lt!2153467) (reg!15197 r!7292)) (= lt!2153467 r!7292)) (= lambda!264771 lambda!264732))))

(assert (=> b!5255012 true))

(assert (=> b!5255012 true))

(declare-fun bs!1218668 () Bool)

(declare-fun b!5255020 () Bool)

(assert (= bs!1218668 (and b!5255020 b!5254991)))

(declare-fun lambda!264772 () Int)

(assert (=> bs!1218668 (not (= lambda!264772 lambda!264767))))

(declare-fun bs!1218669 () Bool)

(assert (= bs!1218669 (and b!5255020 b!5254547)))

(assert (=> bs!1218669 (not (= lambda!264772 lambda!264736))))

(declare-fun bs!1218670 () Bool)

(assert (= bs!1218670 (and b!5255020 d!1692016)))

(assert (=> bs!1218670 (not (= lambda!264772 lambda!264762))))

(declare-fun bs!1218671 () Bool)

(assert (= bs!1218671 (and b!5255020 b!5254247)))

(assert (=> bs!1218671 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153467) (regTwo!30248 r!7292))) (= lambda!264772 lambda!264705))))

(declare-fun bs!1218672 () Bool)

(assert (= bs!1218672 (and b!5255020 b!5254566)))

(assert (=> bs!1218672 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 lt!2153492)) (= (regTwo!30248 lt!2153467) (regTwo!30248 lt!2153492))) (= lambda!264772 lambda!264739))))

(assert (=> bs!1218670 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153467) (regTwo!30248 r!7292))) (= lambda!264772 lambda!264763))))

(declare-fun bs!1218673 () Bool)

(assert (= bs!1218673 (and b!5255020 d!1692008)))

(assert (=> bs!1218673 (not (= lambda!264772 lambda!264757))))

(declare-fun bs!1218674 () Bool)

(assert (= bs!1218674 (and b!5255020 b!5255012)))

(assert (=> bs!1218674 (not (= lambda!264772 lambda!264771))))

(declare-fun bs!1218675 () Bool)

(assert (= bs!1218675 (and b!5255020 b!5254480)))

(assert (=> bs!1218675 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 r!7292)) (= (regTwo!30248 lt!2153467) (regTwo!30248 r!7292))) (= lambda!264772 lambda!264733))))

(declare-fun bs!1218676 () Bool)

(assert (= bs!1218676 (and b!5255020 b!5254558)))

(assert (=> bs!1218676 (not (= lambda!264772 lambda!264738))))

(assert (=> bs!1218671 (not (= lambda!264772 lambda!264704))))

(declare-fun bs!1218677 () Bool)

(assert (= bs!1218677 (and b!5255020 b!5255001)))

(assert (=> bs!1218677 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 lt!2153459)) (= (regTwo!30248 lt!2153467) (regTwo!30248 lt!2153459))) (= lambda!264772 lambda!264768))))

(declare-fun bs!1218678 () Bool)

(assert (= bs!1218678 (and b!5255020 b!5254555)))

(assert (=> bs!1218678 (= (and (= (regOne!30248 lt!2153467) (regOne!30248 lt!2153503)) (= (regTwo!30248 lt!2153467) (regTwo!30248 lt!2153503))) (= lambda!264772 lambda!264737))))

(declare-fun bs!1218679 () Bool)

(assert (= bs!1218679 (and b!5255020 b!5254472)))

(assert (=> bs!1218679 (not (= lambda!264772 lambda!264732))))

(assert (=> b!5255020 true))

(assert (=> b!5255020 true))

(declare-fun e!3269194 () Bool)

(declare-fun call!372404 () Bool)

(assert (=> b!5255012 (= e!3269194 call!372404)))

(declare-fun b!5255013 () Bool)

(declare-fun e!3269198 () Bool)

(assert (=> b!5255013 (= e!3269198 (matchRSpec!1971 (regTwo!30249 lt!2153467) s!2326))))

(declare-fun b!5255014 () Bool)

(declare-fun e!3269193 () Bool)

(assert (=> b!5255014 (= e!3269193 e!3269198)))

(declare-fun res!2230110 () Bool)

(assert (=> b!5255014 (= res!2230110 (matchRSpec!1971 (regOne!30249 lt!2153467) s!2326))))

(assert (=> b!5255014 (=> res!2230110 e!3269198)))

(declare-fun b!5255015 () Bool)

(declare-fun e!3269197 () Bool)

(declare-fun e!3269195 () Bool)

(assert (=> b!5255015 (= e!3269197 e!3269195)))

(declare-fun res!2230108 () Bool)

(assert (=> b!5255015 (= res!2230108 (not (is-EmptyLang!14868 lt!2153467)))))

(assert (=> b!5255015 (=> (not res!2230108) (not e!3269195))))

(declare-fun b!5255016 () Bool)

(declare-fun e!3269192 () Bool)

(assert (=> b!5255016 (= e!3269192 (= s!2326 (Cons!60781 (c!909054 lt!2153467) Nil!60781)))))

(declare-fun bm!372398 () Bool)

(declare-fun call!372403 () Bool)

(assert (=> bm!372398 (= call!372403 (isEmpty!32721 s!2326))))

(declare-fun b!5255017 () Bool)

(declare-fun c!909283 () Bool)

(assert (=> b!5255017 (= c!909283 (is-Union!14868 lt!2153467))))

(assert (=> b!5255017 (= e!3269192 e!3269193)))

(declare-fun d!1692048 () Bool)

(declare-fun c!909282 () Bool)

(assert (=> d!1692048 (= c!909282 (is-EmptyExpr!14868 lt!2153467))))

(assert (=> d!1692048 (= (matchRSpec!1971 lt!2153467 s!2326) e!3269197)))

(declare-fun b!5255018 () Bool)

(declare-fun c!909284 () Bool)

(assert (=> b!5255018 (= c!909284 (is-ElementMatch!14868 lt!2153467))))

(assert (=> b!5255018 (= e!3269195 e!3269192)))

(declare-fun b!5255019 () Bool)

(assert (=> b!5255019 (= e!3269197 call!372403)))

(declare-fun e!3269196 () Bool)

(assert (=> b!5255020 (= e!3269196 call!372404)))

(declare-fun b!5255021 () Bool)

(declare-fun res!2230109 () Bool)

(assert (=> b!5255021 (=> res!2230109 e!3269194)))

(assert (=> b!5255021 (= res!2230109 call!372403)))

(assert (=> b!5255021 (= e!3269196 e!3269194)))

(declare-fun bm!372399 () Bool)

(declare-fun c!909281 () Bool)

(assert (=> bm!372399 (= call!372404 (Exists!2049 (ite c!909281 lambda!264771 lambda!264772)))))

(declare-fun b!5255022 () Bool)

(assert (=> b!5255022 (= e!3269193 e!3269196)))

(assert (=> b!5255022 (= c!909281 (is-Star!14868 lt!2153467))))

(assert (= (and d!1692048 c!909282) b!5255019))

(assert (= (and d!1692048 (not c!909282)) b!5255015))

(assert (= (and b!5255015 res!2230108) b!5255018))

(assert (= (and b!5255018 c!909284) b!5255016))

(assert (= (and b!5255018 (not c!909284)) b!5255017))

(assert (= (and b!5255017 c!909283) b!5255014))

(assert (= (and b!5255017 (not c!909283)) b!5255022))

(assert (= (and b!5255014 (not res!2230110)) b!5255013))

(assert (= (and b!5255022 c!909281) b!5255021))

(assert (= (and b!5255022 (not c!909281)) b!5255020))

(assert (= (and b!5255021 (not res!2230109)) b!5255012))

(assert (= (or b!5255012 b!5255020) bm!372399))

(assert (= (or b!5255019 b!5255021) bm!372398))

(declare-fun m!6297836 () Bool)

(assert (=> b!5255013 m!6297836))

(declare-fun m!6297838 () Bool)

(assert (=> b!5255014 m!6297838))

(assert (=> bm!372398 m!6297382))

(declare-fun m!6297840 () Bool)

(assert (=> bm!372399 m!6297840))

(assert (=> b!5254241 d!1692048))

(declare-fun d!1692050 () Bool)

(assert (=> d!1692050 (= (matchR!7053 lt!2153459 s!2326) (matchRSpec!1971 lt!2153459 s!2326))))

(declare-fun lt!2153759 () Unit!152958)

(assert (=> d!1692050 (= lt!2153759 (choose!39163 lt!2153459 s!2326))))

(assert (=> d!1692050 (validRegex!6604 lt!2153459)))

(assert (=> d!1692050 (= (mainMatchTheorem!1971 lt!2153459 s!2326) lt!2153759)))

(declare-fun bs!1218680 () Bool)

(assert (= bs!1218680 d!1692050))

(assert (=> bs!1218680 m!6297096))

(assert (=> bs!1218680 m!6297094))

(declare-fun m!6297842 () Bool)

(assert (=> bs!1218680 m!6297842))

(declare-fun m!6297844 () Bool)

(assert (=> bs!1218680 m!6297844))

(assert (=> b!5254241 d!1692050))

(declare-fun b!5255023 () Bool)

(declare-fun res!2230115 () Bool)

(declare-fun e!3269203 () Bool)

(assert (=> b!5255023 (=> res!2230115 e!3269203)))

(assert (=> b!5255023 (= res!2230115 (not (is-ElementMatch!14868 lt!2153467)))))

(declare-fun e!3269201 () Bool)

(assert (=> b!5255023 (= e!3269201 e!3269203)))

(declare-fun b!5255024 () Bool)

(declare-fun e!3269199 () Bool)

(assert (=> b!5255024 (= e!3269199 (nullable!5037 lt!2153467))))

(declare-fun b!5255025 () Bool)

(declare-fun e!3269205 () Bool)

(assert (=> b!5255025 (= e!3269203 e!3269205)))

(declare-fun res!2230113 () Bool)

(assert (=> b!5255025 (=> (not res!2230113) (not e!3269205))))

(declare-fun lt!2153760 () Bool)

(assert (=> b!5255025 (= res!2230113 (not lt!2153760))))

(declare-fun b!5255026 () Bool)

(declare-fun res!2230117 () Bool)

(declare-fun e!3269204 () Bool)

(assert (=> b!5255026 (=> (not res!2230117) (not e!3269204))))

(declare-fun call!372409 () Bool)

(assert (=> b!5255026 (= res!2230117 (not call!372409))))

(declare-fun b!5255027 () Bool)

(declare-fun res!2230116 () Bool)

(assert (=> b!5255027 (=> (not res!2230116) (not e!3269204))))

(assert (=> b!5255027 (= res!2230116 (isEmpty!32721 (tail!10361 s!2326)))))

(declare-fun b!5255028 () Bool)

(declare-fun e!3269202 () Bool)

(assert (=> b!5255028 (= e!3269202 (= lt!2153760 call!372409))))

(declare-fun d!1692052 () Bool)

(assert (=> d!1692052 e!3269202))

(declare-fun c!909285 () Bool)

(assert (=> d!1692052 (= c!909285 (is-EmptyExpr!14868 lt!2153467))))

(assert (=> d!1692052 (= lt!2153760 e!3269199)))

(declare-fun c!909287 () Bool)

(assert (=> d!1692052 (= c!909287 (isEmpty!32721 s!2326))))

(assert (=> d!1692052 (validRegex!6604 lt!2153467)))

(assert (=> d!1692052 (= (matchR!7053 lt!2153467 s!2326) lt!2153760)))

(declare-fun b!5255029 () Bool)

(declare-fun e!3269200 () Bool)

(assert (=> b!5255029 (= e!3269200 (not (= (head!11264 s!2326) (c!909054 lt!2153467))))))

(declare-fun bm!372404 () Bool)

(assert (=> bm!372404 (= call!372409 (isEmpty!32721 s!2326))))

(declare-fun b!5255030 () Bool)

(declare-fun res!2230114 () Bool)

(assert (=> b!5255030 (=> res!2230114 e!3269203)))

(assert (=> b!5255030 (= res!2230114 e!3269204)))

(declare-fun res!2230111 () Bool)

(assert (=> b!5255030 (=> (not res!2230111) (not e!3269204))))

(assert (=> b!5255030 (= res!2230111 lt!2153760)))

(declare-fun b!5255031 () Bool)

(assert (=> b!5255031 (= e!3269205 e!3269200)))

(declare-fun res!2230118 () Bool)

(assert (=> b!5255031 (=> res!2230118 e!3269200)))

(assert (=> b!5255031 (= res!2230118 call!372409)))

(declare-fun b!5255032 () Bool)

(assert (=> b!5255032 (= e!3269201 (not lt!2153760))))

(declare-fun b!5255033 () Bool)

(assert (=> b!5255033 (= e!3269202 e!3269201)))

(declare-fun c!909286 () Bool)

(assert (=> b!5255033 (= c!909286 (is-EmptyLang!14868 lt!2153467))))

(declare-fun b!5255034 () Bool)

(assert (=> b!5255034 (= e!3269204 (= (head!11264 s!2326) (c!909054 lt!2153467)))))

(declare-fun b!5255035 () Bool)

(declare-fun res!2230112 () Bool)

(assert (=> b!5255035 (=> res!2230112 e!3269200)))

(assert (=> b!5255035 (= res!2230112 (not (isEmpty!32721 (tail!10361 s!2326))))))

(declare-fun b!5255036 () Bool)

(assert (=> b!5255036 (= e!3269199 (matchR!7053 (derivativeStep!4094 lt!2153467 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1692052 c!909287) b!5255024))

(assert (= (and d!1692052 (not c!909287)) b!5255036))

(assert (= (and d!1692052 c!909285) b!5255028))

(assert (= (and d!1692052 (not c!909285)) b!5255033))

(assert (= (and b!5255033 c!909286) b!5255032))

(assert (= (and b!5255033 (not c!909286)) b!5255023))

(assert (= (and b!5255023 (not res!2230115)) b!5255030))

(assert (= (and b!5255030 res!2230111) b!5255026))

(assert (= (and b!5255026 res!2230117) b!5255027))

(assert (= (and b!5255027 res!2230116) b!5255034))

(assert (= (and b!5255030 (not res!2230114)) b!5255025))

(assert (= (and b!5255025 res!2230113) b!5255031))

(assert (= (and b!5255031 (not res!2230118)) b!5255035))

(assert (= (and b!5255035 (not res!2230112)) b!5255029))

(assert (= (or b!5255028 b!5255026 b!5255031) bm!372404))

(assert (=> b!5255036 m!6297386))

(assert (=> b!5255036 m!6297386))

(declare-fun m!6297846 () Bool)

(assert (=> b!5255036 m!6297846))

(assert (=> b!5255036 m!6297390))

(assert (=> b!5255036 m!6297846))

(assert (=> b!5255036 m!6297390))

(declare-fun m!6297848 () Bool)

(assert (=> b!5255036 m!6297848))

(assert (=> d!1692052 m!6297382))

(declare-fun m!6297850 () Bool)

(assert (=> d!1692052 m!6297850))

(assert (=> b!5255027 m!6297390))

(assert (=> b!5255027 m!6297390))

(assert (=> b!5255027 m!6297394))

(assert (=> b!5255034 m!6297386))

(assert (=> b!5255029 m!6297386))

(declare-fun m!6297852 () Bool)

(assert (=> b!5255024 m!6297852))

(assert (=> b!5255035 m!6297390))

(assert (=> b!5255035 m!6297390))

(assert (=> b!5255035 m!6297394))

(assert (=> bm!372404 m!6297382))

(assert (=> b!5254241 d!1692052))

(declare-fun b!5255037 () Bool)

(declare-fun res!2230123 () Bool)

(declare-fun e!3269210 () Bool)

(assert (=> b!5255037 (=> res!2230123 e!3269210)))

(assert (=> b!5255037 (= res!2230123 (not (is-ElementMatch!14868 lt!2153459)))))

(declare-fun e!3269208 () Bool)

(assert (=> b!5255037 (= e!3269208 e!3269210)))

(declare-fun b!5255038 () Bool)

(declare-fun e!3269206 () Bool)

(assert (=> b!5255038 (= e!3269206 (nullable!5037 lt!2153459))))

(declare-fun b!5255039 () Bool)

(declare-fun e!3269212 () Bool)

(assert (=> b!5255039 (= e!3269210 e!3269212)))

(declare-fun res!2230121 () Bool)

(assert (=> b!5255039 (=> (not res!2230121) (not e!3269212))))

(declare-fun lt!2153761 () Bool)

(assert (=> b!5255039 (= res!2230121 (not lt!2153761))))

(declare-fun b!5255040 () Bool)

(declare-fun res!2230125 () Bool)

(declare-fun e!3269211 () Bool)

(assert (=> b!5255040 (=> (not res!2230125) (not e!3269211))))

(declare-fun call!372410 () Bool)

(assert (=> b!5255040 (= res!2230125 (not call!372410))))

(declare-fun b!5255041 () Bool)

(declare-fun res!2230124 () Bool)

(assert (=> b!5255041 (=> (not res!2230124) (not e!3269211))))

(assert (=> b!5255041 (= res!2230124 (isEmpty!32721 (tail!10361 s!2326)))))

(declare-fun b!5255042 () Bool)

(declare-fun e!3269209 () Bool)

(assert (=> b!5255042 (= e!3269209 (= lt!2153761 call!372410))))

(declare-fun d!1692054 () Bool)

(assert (=> d!1692054 e!3269209))

(declare-fun c!909288 () Bool)

(assert (=> d!1692054 (= c!909288 (is-EmptyExpr!14868 lt!2153459))))

(assert (=> d!1692054 (= lt!2153761 e!3269206)))

(declare-fun c!909290 () Bool)

(assert (=> d!1692054 (= c!909290 (isEmpty!32721 s!2326))))

(assert (=> d!1692054 (validRegex!6604 lt!2153459)))

(assert (=> d!1692054 (= (matchR!7053 lt!2153459 s!2326) lt!2153761)))

(declare-fun b!5255043 () Bool)

(declare-fun e!3269207 () Bool)

(assert (=> b!5255043 (= e!3269207 (not (= (head!11264 s!2326) (c!909054 lt!2153459))))))

(declare-fun bm!372405 () Bool)

(assert (=> bm!372405 (= call!372410 (isEmpty!32721 s!2326))))

(declare-fun b!5255044 () Bool)

(declare-fun res!2230122 () Bool)

(assert (=> b!5255044 (=> res!2230122 e!3269210)))

(assert (=> b!5255044 (= res!2230122 e!3269211)))

(declare-fun res!2230119 () Bool)

(assert (=> b!5255044 (=> (not res!2230119) (not e!3269211))))

(assert (=> b!5255044 (= res!2230119 lt!2153761)))

(declare-fun b!5255045 () Bool)

(assert (=> b!5255045 (= e!3269212 e!3269207)))

(declare-fun res!2230126 () Bool)

(assert (=> b!5255045 (=> res!2230126 e!3269207)))

(assert (=> b!5255045 (= res!2230126 call!372410)))

(declare-fun b!5255046 () Bool)

(assert (=> b!5255046 (= e!3269208 (not lt!2153761))))

(declare-fun b!5255047 () Bool)

(assert (=> b!5255047 (= e!3269209 e!3269208)))

(declare-fun c!909289 () Bool)

(assert (=> b!5255047 (= c!909289 (is-EmptyLang!14868 lt!2153459))))

(declare-fun b!5255048 () Bool)

(assert (=> b!5255048 (= e!3269211 (= (head!11264 s!2326) (c!909054 lt!2153459)))))

(declare-fun b!5255049 () Bool)

(declare-fun res!2230120 () Bool)

(assert (=> b!5255049 (=> res!2230120 e!3269207)))

(assert (=> b!5255049 (= res!2230120 (not (isEmpty!32721 (tail!10361 s!2326))))))

(declare-fun b!5255050 () Bool)

(assert (=> b!5255050 (= e!3269206 (matchR!7053 (derivativeStep!4094 lt!2153459 (head!11264 s!2326)) (tail!10361 s!2326)))))

(assert (= (and d!1692054 c!909290) b!5255038))

(assert (= (and d!1692054 (not c!909290)) b!5255050))

(assert (= (and d!1692054 c!909288) b!5255042))

(assert (= (and d!1692054 (not c!909288)) b!5255047))

(assert (= (and b!5255047 c!909289) b!5255046))

(assert (= (and b!5255047 (not c!909289)) b!5255037))

(assert (= (and b!5255037 (not res!2230123)) b!5255044))

(assert (= (and b!5255044 res!2230119) b!5255040))

(assert (= (and b!5255040 res!2230125) b!5255041))

(assert (= (and b!5255041 res!2230124) b!5255048))

(assert (= (and b!5255044 (not res!2230122)) b!5255039))

(assert (= (and b!5255039 res!2230121) b!5255045))

(assert (= (and b!5255045 (not res!2230126)) b!5255049))

(assert (= (and b!5255049 (not res!2230120)) b!5255043))

(assert (= (or b!5255042 b!5255040 b!5255045) bm!372405))

(assert (=> b!5255050 m!6297386))

(assert (=> b!5255050 m!6297386))

(declare-fun m!6297854 () Bool)

(assert (=> b!5255050 m!6297854))

(assert (=> b!5255050 m!6297390))

(assert (=> b!5255050 m!6297854))

(assert (=> b!5255050 m!6297390))

(declare-fun m!6297856 () Bool)

(assert (=> b!5255050 m!6297856))

(assert (=> d!1692054 m!6297382))

(assert (=> d!1692054 m!6297844))

(assert (=> b!5255041 m!6297390))

(assert (=> b!5255041 m!6297390))

(assert (=> b!5255041 m!6297394))

(assert (=> b!5255048 m!6297386))

(assert (=> b!5255043 m!6297386))

(declare-fun m!6297858 () Bool)

(assert (=> b!5255038 m!6297858))

(assert (=> b!5255049 m!6297390))

(assert (=> b!5255049 m!6297390))

(assert (=> b!5255049 m!6297394))

(assert (=> bm!372405 m!6297382))

(assert (=> b!5254241 d!1692054))

(declare-fun d!1692056 () Bool)

(assert (=> d!1692056 (= (matchR!7053 lt!2153467 s!2326) (matchRSpec!1971 lt!2153467 s!2326))))

(declare-fun lt!2153762 () Unit!152958)

(assert (=> d!1692056 (= lt!2153762 (choose!39163 lt!2153467 s!2326))))

(assert (=> d!1692056 (validRegex!6604 lt!2153467)))

(assert (=> d!1692056 (= (mainMatchTheorem!1971 lt!2153467 s!2326) lt!2153762)))

(declare-fun bs!1218681 () Bool)

(assert (= bs!1218681 d!1692056))

(assert (=> bs!1218681 m!6297090))

(assert (=> bs!1218681 m!6297092))

(declare-fun m!6297860 () Bool)

(assert (=> bs!1218681 m!6297860))

(assert (=> bs!1218681 m!6297850))

(assert (=> b!5254241 d!1692056))

(assert (=> b!5254221 d!1691892))

(declare-fun bs!1218682 () Bool)

(declare-fun d!1692058 () Bool)

(assert (= bs!1218682 (and d!1692058 d!1691958)))

(declare-fun lambda!264773 () Int)

(assert (=> bs!1218682 (= lambda!264773 lambda!264754)))

(declare-fun bs!1218683 () Bool)

(assert (= bs!1218683 (and d!1692058 d!1691910)))

(assert (=> bs!1218683 (= lambda!264773 lambda!264735)))

(declare-fun bs!1218684 () Bool)

(assert (= bs!1218684 (and d!1692058 d!1691956)))

(assert (=> bs!1218684 (= lambda!264773 lambda!264750)))

(declare-fun bs!1218685 () Bool)

(assert (= bs!1218685 (and d!1692058 d!1692036)))

(assert (=> bs!1218685 (= lambda!264773 lambda!264764)))

(declare-fun bs!1218686 () Bool)

(assert (= bs!1218686 (and d!1692058 d!1691896)))

(assert (=> bs!1218686 (= lambda!264773 lambda!264727)))

(declare-fun bs!1218687 () Bool)

(assert (= bs!1218687 (and d!1692058 d!1691894)))

(assert (=> bs!1218687 (= lambda!264773 lambda!264724)))

(declare-fun bs!1218688 () Bool)

(assert (= bs!1218688 (and d!1692058 d!1691906)))

(assert (=> bs!1218688 (= lambda!264773 lambda!264734)))

(assert (=> d!1692058 (= (inv!80418 (h!67228 zl!343)) (forall!14282 (exprs!4752 (h!67228 zl!343)) lambda!264773))))

(declare-fun bs!1218689 () Bool)

(assert (= bs!1218689 d!1692058))

(declare-fun m!6297862 () Bool)

(assert (=> bs!1218689 m!6297862))

(assert (=> b!5254243 d!1692058))

(declare-fun b!5255066 () Bool)

(declare-fun e!3269222 () Bool)

(declare-fun tp!1469650 () Bool)

(declare-fun tp!1469651 () Bool)

(assert (=> b!5255066 (= e!3269222 (and tp!1469650 tp!1469651))))

(assert (=> b!5254254 (= tp!1469610 e!3269222)))

(assert (= (and b!5254254 (is-Cons!60779 (exprs!4752 setElem!33566))) b!5255066))

(declare-fun b!5255071 () Bool)

(declare-fun e!3269225 () Bool)

(declare-fun tp!1469654 () Bool)

(assert (=> b!5255071 (= e!3269225 (and tp_is_empty!38989 tp!1469654))))

(assert (=> b!5254223 (= tp!1469611 e!3269225)))

(assert (= (and b!5254223 (is-Cons!60781 (t!374088 s!2326))) b!5255071))

(declare-fun condSetEmpty!33572 () Bool)

(assert (=> setNonEmpty!33566 (= condSetEmpty!33572 (= setRest!33566 (as set.empty (Set Context!8504))))))

(declare-fun setRes!33572 () Bool)

(assert (=> setNonEmpty!33566 (= tp!1469607 setRes!33572)))

(declare-fun setIsEmpty!33572 () Bool)

(assert (=> setIsEmpty!33572 setRes!33572))

(declare-fun setNonEmpty!33572 () Bool)

(declare-fun tp!1469660 () Bool)

(declare-fun setElem!33572 () Context!8504)

(declare-fun e!3269228 () Bool)

(assert (=> setNonEmpty!33572 (= setRes!33572 (and tp!1469660 (inv!80418 setElem!33572) e!3269228))))

(declare-fun setRest!33572 () (Set Context!8504))

(assert (=> setNonEmpty!33572 (= setRest!33566 (set.union (set.insert setElem!33572 (as set.empty (Set Context!8504))) setRest!33572))))

(declare-fun b!5255076 () Bool)

(declare-fun tp!1469659 () Bool)

(assert (=> b!5255076 (= e!3269228 tp!1469659)))

(assert (= (and setNonEmpty!33566 condSetEmpty!33572) setIsEmpty!33572))

(assert (= (and setNonEmpty!33566 (not condSetEmpty!33572)) setNonEmpty!33572))

(assert (= setNonEmpty!33572 b!5255076))

(declare-fun m!6297864 () Bool)

(assert (=> setNonEmpty!33572 m!6297864))

(declare-fun b!5255077 () Bool)

(declare-fun e!3269229 () Bool)

(declare-fun tp!1469661 () Bool)

(declare-fun tp!1469662 () Bool)

(assert (=> b!5255077 (= e!3269229 (and tp!1469661 tp!1469662))))

(assert (=> b!5254220 (= tp!1469614 e!3269229)))

(assert (= (and b!5254220 (is-Cons!60779 (exprs!4752 (h!67228 zl!343)))) b!5255077))

(declare-fun b!5255091 () Bool)

(declare-fun e!3269232 () Bool)

(declare-fun tp!1469674 () Bool)

(declare-fun tp!1469673 () Bool)

(assert (=> b!5255091 (= e!3269232 (and tp!1469674 tp!1469673))))

(declare-fun b!5255089 () Bool)

(declare-fun tp!1469675 () Bool)

(declare-fun tp!1469677 () Bool)

(assert (=> b!5255089 (= e!3269232 (and tp!1469675 tp!1469677))))

(declare-fun b!5255088 () Bool)

(assert (=> b!5255088 (= e!3269232 tp_is_empty!38989)))

(declare-fun b!5255090 () Bool)

(declare-fun tp!1469676 () Bool)

(assert (=> b!5255090 (= e!3269232 tp!1469676)))

(assert (=> b!5254252 (= tp!1469606 e!3269232)))

(assert (= (and b!5254252 (is-ElementMatch!14868 (regOne!30248 r!7292))) b!5255088))

(assert (= (and b!5254252 (is-Concat!23713 (regOne!30248 r!7292))) b!5255089))

(assert (= (and b!5254252 (is-Star!14868 (regOne!30248 r!7292))) b!5255090))

(assert (= (and b!5254252 (is-Union!14868 (regOne!30248 r!7292))) b!5255091))

(declare-fun b!5255095 () Bool)

(declare-fun e!3269233 () Bool)

(declare-fun tp!1469679 () Bool)

(declare-fun tp!1469678 () Bool)

(assert (=> b!5255095 (= e!3269233 (and tp!1469679 tp!1469678))))

(declare-fun b!5255093 () Bool)

(declare-fun tp!1469680 () Bool)

(declare-fun tp!1469682 () Bool)

(assert (=> b!5255093 (= e!3269233 (and tp!1469680 tp!1469682))))

(declare-fun b!5255092 () Bool)

(assert (=> b!5255092 (= e!3269233 tp_is_empty!38989)))

(declare-fun b!5255094 () Bool)

(declare-fun tp!1469681 () Bool)

(assert (=> b!5255094 (= e!3269233 tp!1469681)))

(assert (=> b!5254252 (= tp!1469613 e!3269233)))

(assert (= (and b!5254252 (is-ElementMatch!14868 (regTwo!30248 r!7292))) b!5255092))

(assert (= (and b!5254252 (is-Concat!23713 (regTwo!30248 r!7292))) b!5255093))

(assert (= (and b!5254252 (is-Star!14868 (regTwo!30248 r!7292))) b!5255094))

(assert (= (and b!5254252 (is-Union!14868 (regTwo!30248 r!7292))) b!5255095))

(declare-fun b!5255099 () Bool)

(declare-fun e!3269234 () Bool)

(declare-fun tp!1469684 () Bool)

(declare-fun tp!1469683 () Bool)

(assert (=> b!5255099 (= e!3269234 (and tp!1469684 tp!1469683))))

(declare-fun b!5255097 () Bool)

(declare-fun tp!1469685 () Bool)

(declare-fun tp!1469687 () Bool)

(assert (=> b!5255097 (= e!3269234 (and tp!1469685 tp!1469687))))

(declare-fun b!5255096 () Bool)

(assert (=> b!5255096 (= e!3269234 tp_is_empty!38989)))

(declare-fun b!5255098 () Bool)

(declare-fun tp!1469686 () Bool)

(assert (=> b!5255098 (= e!3269234 tp!1469686)))

(assert (=> b!5254253 (= tp!1469609 e!3269234)))

(assert (= (and b!5254253 (is-ElementMatch!14868 (reg!15197 r!7292))) b!5255096))

(assert (= (and b!5254253 (is-Concat!23713 (reg!15197 r!7292))) b!5255097))

(assert (= (and b!5254253 (is-Star!14868 (reg!15197 r!7292))) b!5255098))

(assert (= (and b!5254253 (is-Union!14868 (reg!15197 r!7292))) b!5255099))

(declare-fun b!5255107 () Bool)

(declare-fun e!3269240 () Bool)

(declare-fun tp!1469692 () Bool)

(assert (=> b!5255107 (= e!3269240 tp!1469692)))

(declare-fun e!3269239 () Bool)

(declare-fun tp!1469693 () Bool)

(declare-fun b!5255106 () Bool)

(assert (=> b!5255106 (= e!3269239 (and (inv!80418 (h!67228 (t!374087 zl!343))) e!3269240 tp!1469693))))

(assert (=> b!5254243 (= tp!1469608 e!3269239)))

(assert (= b!5255106 b!5255107))

(assert (= (and b!5254243 (is-Cons!60780 (t!374087 zl!343))) b!5255106))

(declare-fun m!6297874 () Bool)

(assert (=> b!5255106 m!6297874))

(declare-fun b!5255111 () Bool)

(declare-fun e!3269241 () Bool)

(declare-fun tp!1469695 () Bool)

(declare-fun tp!1469694 () Bool)

(assert (=> b!5255111 (= e!3269241 (and tp!1469695 tp!1469694))))

(declare-fun b!5255109 () Bool)

(declare-fun tp!1469696 () Bool)

(declare-fun tp!1469698 () Bool)

(assert (=> b!5255109 (= e!3269241 (and tp!1469696 tp!1469698))))

(declare-fun b!5255108 () Bool)

(assert (=> b!5255108 (= e!3269241 tp_is_empty!38989)))

(declare-fun b!5255110 () Bool)

(declare-fun tp!1469697 () Bool)

(assert (=> b!5255110 (= e!3269241 tp!1469697)))

(assert (=> b!5254233 (= tp!1469612 e!3269241)))

(assert (= (and b!5254233 (is-ElementMatch!14868 (regOne!30249 r!7292))) b!5255108))

(assert (= (and b!5254233 (is-Concat!23713 (regOne!30249 r!7292))) b!5255109))

(assert (= (and b!5254233 (is-Star!14868 (regOne!30249 r!7292))) b!5255110))

(assert (= (and b!5254233 (is-Union!14868 (regOne!30249 r!7292))) b!5255111))

(declare-fun b!5255115 () Bool)

(declare-fun e!3269242 () Bool)

(declare-fun tp!1469700 () Bool)

(declare-fun tp!1469699 () Bool)

(assert (=> b!5255115 (= e!3269242 (and tp!1469700 tp!1469699))))

(declare-fun b!5255113 () Bool)

(declare-fun tp!1469701 () Bool)

(declare-fun tp!1469703 () Bool)

(assert (=> b!5255113 (= e!3269242 (and tp!1469701 tp!1469703))))

(declare-fun b!5255112 () Bool)

(assert (=> b!5255112 (= e!3269242 tp_is_empty!38989)))

(declare-fun b!5255114 () Bool)

(declare-fun tp!1469702 () Bool)

(assert (=> b!5255114 (= e!3269242 tp!1469702)))

(assert (=> b!5254233 (= tp!1469615 e!3269242)))

(assert (= (and b!5254233 (is-ElementMatch!14868 (regTwo!30249 r!7292))) b!5255112))

(assert (= (and b!5254233 (is-Concat!23713 (regTwo!30249 r!7292))) b!5255113))

(assert (= (and b!5254233 (is-Star!14868 (regTwo!30249 r!7292))) b!5255114))

(assert (= (and b!5254233 (is-Union!14868 (regTwo!30249 r!7292))) b!5255115))

(declare-fun b_lambda!202875 () Bool)

(assert (= b_lambda!202869 (or b!5254232 b_lambda!202875)))

(declare-fun bs!1218693 () Bool)

(declare-fun d!1692062 () Bool)

(assert (= bs!1218693 (and d!1692062 b!5254232)))

(assert (=> bs!1218693 (= (dynLambda!24014 lambda!264706 (h!67228 zl!343)) (derivationStepZipperUp!240 (h!67228 zl!343) (h!67229 s!2326)))))

(assert (=> bs!1218693 m!6297182))

(assert (=> d!1691940 d!1692062))

(declare-fun b_lambda!202877 () Bool)

(assert (= b_lambda!202871 (or b!5254232 b_lambda!202877)))

(declare-fun bs!1218694 () Bool)

(declare-fun d!1692064 () Bool)

(assert (= bs!1218694 (and d!1692064 b!5254232)))

(assert (=> bs!1218694 (= (dynLambda!24014 lambda!264706 lt!2153470) (derivationStepZipperUp!240 lt!2153470 (h!67229 s!2326)))))

(assert (=> bs!1218694 m!6297130))

(assert (=> d!1691984 d!1692064))

(declare-fun b_lambda!202879 () Bool)

(assert (= b_lambda!202873 (or b!5254232 b_lambda!202879)))

(declare-fun bs!1218695 () Bool)

(declare-fun d!1692066 () Bool)

(assert (= bs!1218695 (and d!1692066 b!5254232)))

(assert (=> bs!1218695 (= (dynLambda!24014 lambda!264706 lt!2153479) (derivationStepZipperUp!240 lt!2153479 (h!67229 s!2326)))))

(assert (=> bs!1218695 m!6297124))

(assert (=> d!1691998 d!1692066))

(push 1)

(assert (not b!5254580))

(assert (not b!5254692))

(assert (not b!5254827))

(assert (not b!5255094))

(assert (not b!5254435))

(assert (not b!5254517))

(assert (not d!1691982))

(assert (not b!5254573))

(assert (not bm!372396))

(assert (not b_lambda!202877))

(assert (not b!5255098))

(assert (not b!5254512))

(assert (not b!5254683))

(assert (not d!1691958))

(assert (not b!5254945))

(assert (not bm!372365))

(assert (not b!5255109))

(assert (not b!5254839))

(assert (not b!5254526))

(assert (not d!1692016))

(assert (not d!1691892))

(assert (not b!5255091))

(assert (not d!1691902))

(assert (not d!1692054))

(assert (not b!5254804))

(assert (not b!5254815))

(assert (not b!5254538))

(assert (not d!1691998))

(assert (not d!1692008))

(assert (not b!5255024))

(assert (not d!1692052))

(assert (not d!1691956))

(assert (not b!5254838))

(assert (not b!5254708))

(assert (not d!1691926))

(assert (not b!5254548))

(assert (not bm!372364))

(assert (not b!5254575))

(assert (not b!5254710))

(assert (not d!1692002))

(assert (not bm!372318))

(assert (not d!1691908))

(assert (not bm!372320))

(assert (not bs!1218695))

(assert (not b!5254523))

(assert (not b!5254436))

(assert (not d!1692014))

(assert (not b!5255097))

(assert (not b_lambda!202875))

(assert (not bm!372316))

(assert (not b!5254840))

(assert (not b!5254783))

(assert (not b!5254533))

(assert (not b_lambda!202879))

(assert (not bm!372357))

(assert (not b!5254959))

(assert (not b!5255113))

(assert (not d!1692030))

(assert (not bm!372353))

(assert (not bm!372341))

(assert (not bm!372394))

(assert (not b!5255038))

(assert (not d!1692000))

(assert (not b!5254587))

(assert (not b!5254431))

(assert (not d!1691962))

(assert (not d!1691980))

(assert (not bm!372393))

(assert (not b!5254408))

(assert (not b!5255090))

(assert (not d!1692028))

(assert (not b!5255107))

(assert (not b!5254543))

(assert (not b!5254704))

(assert (not b!5255048))

(assert (not b!5254944))

(assert (not d!1692032))

(assert (not b!5255093))

(assert (not d!1691896))

(assert (not b!5254956))

(assert (not b!5254595))

(assert (not d!1692004))

(assert (not b!5254898))

(assert (not b!5255114))

(assert (not b!5254993))

(assert (not bm!372319))

(assert (not b!5254528))

(assert (not bm!372343))

(assert (not b!5254433))

(assert (not b!5254788))

(assert (not b!5254560))

(assert (not b!5254817))

(assert (not b!5254893))

(assert (not b!5254530))

(assert (not b!5254891))

(assert (not b!5255013))

(assert (not b!5255095))

(assert (not bm!372337))

(assert (not b!5254782))

(assert (not b!5254559))

(assert (not b!5254522))

(assert (not b!5254432))

(assert (not b!5254439))

(assert tp_is_empty!38989)

(assert (not b!5254948))

(assert (not b!5255050))

(assert (not d!1692056))

(assert (not b!5254532))

(assert (not d!1691890))

(assert (not b!5255071))

(assert (not b!5254823))

(assert (not b!5254736))

(assert (not b!5255077))

(assert (not b!5254787))

(assert (not d!1691906))

(assert (not b!5254546))

(assert (not b!5254582))

(assert (not d!1691992))

(assert (not b!5254409))

(assert (not d!1691904))

(assert (not d!1691922))

(assert (not d!1691952))

(assert (not bm!372404))

(assert (not d!1691916))

(assert (not bm!372322))

(assert (not b!5254894))

(assert (not b!5254596))

(assert (not b!5254941))

(assert (not b!5254473))

(assert (not d!1691984))

(assert (not b!5254837))

(assert (not b!5255043))

(assert (not b!5255099))

(assert (not b!5254540))

(assert (not d!1692038))

(assert (not b!5255066))

(assert (not bm!372321))

(assert (not b!5254828))

(assert (not b!5254896))

(assert (not bm!372344))

(assert (not b!5254952))

(assert (not bm!372313))

(assert (not b!5254542))

(assert (not b!5254407))

(assert (not b!5254841))

(assert (not b!5255115))

(assert (not b!5254808))

(assert (not b!5254846))

(assert (not b!5254950))

(assert (not b!5254957))

(assert (not b!5254992))

(assert (not bm!372367))

(assert (not b!5254539))

(assert (not b!5255106))

(assert (not b!5254892))

(assert (not b!5254515))

(assert (not b!5254594))

(assert (not b!5254789))

(assert (not d!1691910))

(assert (not b!5254813))

(assert (not b!5254843))

(assert (not d!1692050))

(assert (not d!1692058))

(assert (not b!5254529))

(assert (not setNonEmpty!33572))

(assert (not bm!372354))

(assert (not b!5254943))

(assert (not b!5255029))

(assert (not b!5254824))

(assert (not b!5255035))

(assert (not bm!372399))

(assert (not b!5254589))

(assert (not b!5255076))

(assert (not bm!372312))

(assert (not b!5254667))

(assert (not b!5254549))

(assert (not d!1691970))

(assert (not b!5254534))

(assert (not bs!1218693))

(assert (not b!5254570))

(assert (not bm!372405))

(assert (not bm!372317))

(assert (not d!1692040))

(assert (not b!5254958))

(assert (not bs!1218694))

(assert (not d!1691976))

(assert (not b!5254781))

(assert (not bm!372368))

(assert (not b!5254825))

(assert (not b!5254437))

(assert (not b!5255041))

(assert (not bm!372398))

(assert (not b!5254953))

(assert (not b!5254954))

(assert (not d!1691894))

(assert (not d!1691920))

(assert (not bm!372349))

(assert (not b!5255014))

(assert (not b!5254536))

(assert (not d!1692012))

(assert (not d!1691986))

(assert (not b!5254406))

(assert (not b!5255027))

(assert (not d!1691990))

(assert (not bm!372351))

(assert (not b!5254584))

(assert (not d!1692036))

(assert (not d!1692042))

(assert (not b!5255089))

(assert (not b!5255049))

(assert (not d!1692034))

(assert (not b!5254826))

(assert (not d!1691942))

(assert (not b!5254848))

(assert (not b!5254681))

(assert (not d!1691972))

(assert (not b!5254690))

(assert (not b!5254942))

(assert (not b!5255036))

(assert (not b!5254987))

(assert (not b!5254946))

(assert (not b!5254525))

(assert (not b!5254581))

(assert (not bm!372335))

(assert (not b!5254474))

(assert (not b!5254780))

(assert (not bm!372397))

(assert (not b!5254949))

(assert (not b!5254833))

(assert (not b!5255110))

(assert (not b!5254646))

(assert (not d!1691974))

(assert (not bm!372350))

(assert (not d!1692026))

(assert (not bm!372338))

(assert (not b!5254544))

(assert (not b!5255111))

(assert (not d!1691924))

(assert (not d!1691940))

(assert (not b!5254524))

(assert (not d!1691900))

(assert (not b!5255034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

