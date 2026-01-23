; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!623596 () Bool)

(assert start!623596)

(declare-fun b!6272766 () Bool)

(assert (=> b!6272766 true))

(assert (=> b!6272766 true))

(declare-fun lambda!343675 () Int)

(declare-fun lambda!343674 () Int)

(assert (=> b!6272766 (not (= lambda!343675 lambda!343674))))

(assert (=> b!6272766 true))

(assert (=> b!6272766 true))

(declare-fun b!6272771 () Bool)

(assert (=> b!6272771 true))

(declare-fun b!6272764 () Bool)

(declare-fun e!3815091 () Bool)

(declare-fun e!3815084 () Bool)

(assert (=> b!6272764 (= e!3815091 e!3815084)))

(declare-fun res!2587398 () Bool)

(assert (=> b!6272764 (=> res!2587398 e!3815084)))

(declare-fun e!3815087 () Bool)

(assert (=> b!6272764 (= res!2587398 e!3815087)))

(declare-fun res!2587385 () Bool)

(assert (=> b!6272764 (=> (not res!2587385) (not e!3815087))))

(declare-fun lt!2352392 () Bool)

(declare-fun lt!2352411 () Bool)

(assert (=> b!6272764 (= res!2587385 (not (= lt!2352392 lt!2352411)))))

(declare-datatypes ((C!32654 0))(
  ( (C!32655 (val!26029 Int)) )
))
(declare-datatypes ((Regex!16192 0))(
  ( (ElementMatch!16192 (c!1136845 C!32654)) (Concat!25037 (regOne!32896 Regex!16192) (regTwo!32896 Regex!16192)) (EmptyExpr!16192) (Star!16192 (reg!16521 Regex!16192)) (EmptyLang!16192) (Union!16192 (regOne!32897 Regex!16192) (regTwo!32897 Regex!16192)) )
))
(declare-datatypes ((List!64875 0))(
  ( (Nil!64751) (Cons!64751 (h!71199 Regex!16192) (t!378433 List!64875)) )
))
(declare-datatypes ((Context!11152 0))(
  ( (Context!11153 (exprs!6076 List!64875)) )
))
(declare-fun lt!2352420 () (Set Context!11152))

(declare-datatypes ((List!64876 0))(
  ( (Nil!64752) (Cons!64752 (h!71200 C!32654) (t!378434 List!64876)) )
))
(declare-fun s!2326 () List!64876)

(declare-fun matchZipper!2204 ((Set Context!11152) List!64876) Bool)

(assert (=> b!6272764 (= lt!2352392 (matchZipper!2204 lt!2352420 (t!378434 s!2326)))))

(declare-fun lt!2352412 () (Set Context!11152))

(declare-fun e!3815082 () Bool)

(assert (=> b!6272764 (= (matchZipper!2204 lt!2352412 (t!378434 s!2326)) e!3815082)))

(declare-fun res!2587400 () Bool)

(assert (=> b!6272764 (=> res!2587400 e!3815082)))

(assert (=> b!6272764 (= res!2587400 lt!2352411)))

(declare-fun lt!2352401 () (Set Context!11152))

(assert (=> b!6272764 (= lt!2352411 (matchZipper!2204 lt!2352401 (t!378434 s!2326)))))

(declare-fun lt!2352393 () (Set Context!11152))

(declare-datatypes ((Unit!158099 0))(
  ( (Unit!158100) )
))
(declare-fun lt!2352385 () Unit!158099)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1023 ((Set Context!11152) (Set Context!11152) List!64876) Unit!158099)

(assert (=> b!6272764 (= lt!2352385 (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352401 lt!2352393 (t!378434 s!2326)))))

(declare-fun b!6272765 () Bool)

(declare-fun e!3815077 () Bool)

(declare-fun tp!1749227 () Bool)

(assert (=> b!6272765 (= e!3815077 tp!1749227)))

(declare-fun e!3815078 () Bool)

(declare-fun e!3815089 () Bool)

(assert (=> b!6272766 (= e!3815078 e!3815089)))

(declare-fun res!2587386 () Bool)

(assert (=> b!6272766 (=> res!2587386 e!3815089)))

(declare-fun lt!2352396 () Bool)

(declare-fun lt!2352415 () Bool)

(assert (=> b!6272766 (= res!2587386 (or (not (= lt!2352415 lt!2352396)) (is-Nil!64752 s!2326)))))

(declare-fun Exists!3262 (Int) Bool)

(assert (=> b!6272766 (= (Exists!3262 lambda!343674) (Exists!3262 lambda!343675))))

(declare-fun lt!2352418 () Unit!158099)

(declare-fun r!7292 () Regex!16192)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1799 (Regex!16192 Regex!16192 List!64876) Unit!158099)

(assert (=> b!6272766 (= lt!2352418 (lemmaExistCutMatchRandMatchRSpecEquivalent!1799 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326))))

(assert (=> b!6272766 (= lt!2352396 (Exists!3262 lambda!343674))))

(declare-datatypes ((tuple2!66342 0))(
  ( (tuple2!66343 (_1!36474 List!64876) (_2!36474 List!64876)) )
))
(declare-datatypes ((Option!16083 0))(
  ( (None!16082) (Some!16082 (v!52237 tuple2!66342)) )
))
(declare-fun isDefined!12786 (Option!16083) Bool)

(declare-fun findConcatSeparation!2497 (Regex!16192 Regex!16192 List!64876 List!64876 List!64876) Option!16083)

(assert (=> b!6272766 (= lt!2352396 (isDefined!12786 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326)))))

(declare-fun lt!2352387 () Unit!158099)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2261 (Regex!16192 Regex!16192 List!64876) Unit!158099)

(assert (=> b!6272766 (= lt!2352387 (lemmaFindConcatSeparationEquivalentToExists!2261 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326))))

(declare-fun b!6272767 () Bool)

(assert (=> b!6272767 (= e!3815087 (not (matchZipper!2204 lt!2352393 (t!378434 s!2326))))))

(declare-fun b!6272768 () Bool)

(declare-fun res!2587391 () Bool)

(declare-fun e!3815073 () Bool)

(assert (=> b!6272768 (=> (not res!2587391) (not e!3815073))))

(declare-fun z!1189 () (Set Context!11152))

(declare-datatypes ((List!64877 0))(
  ( (Nil!64753) (Cons!64753 (h!71201 Context!11152) (t!378435 List!64877)) )
))
(declare-fun zl!343 () List!64877)

(declare-fun toList!9976 ((Set Context!11152)) List!64877)

(assert (=> b!6272768 (= res!2587391 (= (toList!9976 z!1189) zl!343))))

(declare-fun b!6272769 () Bool)

(declare-fun tp!1749230 () Bool)

(declare-fun tp!1749228 () Bool)

(assert (=> b!6272769 (= e!3815077 (and tp!1749230 tp!1749228))))

(declare-fun b!6272770 () Bool)

(declare-fun e!3815085 () Unit!158099)

(declare-fun Unit!158101 () Unit!158099)

(assert (=> b!6272770 (= e!3815085 Unit!158101)))

(declare-fun e!3815088 () Bool)

(assert (=> b!6272771 (= e!3815089 e!3815088)))

(declare-fun res!2587383 () Bool)

(assert (=> b!6272771 (=> res!2587383 e!3815088)))

(assert (=> b!6272771 (= res!2587383 (or (and (is-ElementMatch!16192 (regOne!32896 r!7292)) (= (c!1136845 (regOne!32896 r!7292)) (h!71200 s!2326))) (is-Union!16192 (regOne!32896 r!7292)) (not (is-Concat!25037 (regOne!32896 r!7292)))))))

(declare-fun lt!2352417 () Unit!158099)

(assert (=> b!6272771 (= lt!2352417 e!3815085)))

(declare-fun c!1136844 () Bool)

(declare-fun nullable!6185 (Regex!16192) Bool)

(assert (=> b!6272771 (= c!1136844 (nullable!6185 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun lambda!343676 () Int)

(declare-fun flatMap!1697 ((Set Context!11152) Int) (Set Context!11152))

(declare-fun derivationStepZipperUp!1366 (Context!11152 C!32654) (Set Context!11152))

(assert (=> b!6272771 (= (flatMap!1697 z!1189 lambda!343676) (derivationStepZipperUp!1366 (h!71201 zl!343) (h!71200 s!2326)))))

(declare-fun lt!2352414 () Unit!158099)

(declare-fun lemmaFlatMapOnSingletonSet!1223 ((Set Context!11152) Context!11152 Int) Unit!158099)

(assert (=> b!6272771 (= lt!2352414 (lemmaFlatMapOnSingletonSet!1223 z!1189 (h!71201 zl!343) lambda!343676))))

(declare-fun lt!2352419 () (Set Context!11152))

(declare-fun lt!2352413 () Context!11152)

(assert (=> b!6272771 (= lt!2352419 (derivationStepZipperUp!1366 lt!2352413 (h!71200 s!2326)))))

(declare-fun derivationStepZipperDown!1440 (Regex!16192 Context!11152 C!32654) (Set Context!11152))

(assert (=> b!6272771 (= lt!2352420 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (h!71201 zl!343))) lt!2352413 (h!71200 s!2326)))))

(assert (=> b!6272771 (= lt!2352413 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun lt!2352394 () (Set Context!11152))

(assert (=> b!6272771 (= lt!2352394 (derivationStepZipperUp!1366 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))) (h!71200 s!2326)))))

(declare-fun setElem!42665 () Context!11152)

(declare-fun tp!1749233 () Bool)

(declare-fun e!3815079 () Bool)

(declare-fun setRes!42665 () Bool)

(declare-fun setNonEmpty!42665 () Bool)

(declare-fun inv!83728 (Context!11152) Bool)

(assert (=> setNonEmpty!42665 (= setRes!42665 (and tp!1749233 (inv!83728 setElem!42665) e!3815079))))

(declare-fun setRest!42665 () (Set Context!11152))

(assert (=> setNonEmpty!42665 (= z!1189 (set.union (set.insert setElem!42665 (as set.empty (Set Context!11152))) setRest!42665))))

(declare-fun b!6272772 () Bool)

(declare-fun res!2587402 () Bool)

(declare-fun e!3815080 () Bool)

(assert (=> b!6272772 (=> res!2587402 e!3815080)))

(declare-fun lt!2352409 () Context!11152)

(declare-fun contextDepthTotal!315 (Context!11152) Int)

(assert (=> b!6272772 (= res!2587402 (>= (contextDepthTotal!315 lt!2352409) (contextDepthTotal!315 (h!71201 zl!343))))))

(declare-fun b!6272773 () Bool)

(declare-fun tp!1749236 () Bool)

(declare-fun e!3815074 () Bool)

(declare-fun e!3815081 () Bool)

(assert (=> b!6272773 (= e!3815081 (and (inv!83728 (h!71201 zl!343)) e!3815074 tp!1749236))))

(declare-fun b!6272774 () Bool)

(declare-fun e!3815086 () Bool)

(declare-fun validRegex!7928 (Regex!16192) Bool)

(assert (=> b!6272774 (= e!3815086 (validRegex!7928 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun lt!2352406 () Bool)

(declare-fun lt!2352400 () Regex!16192)

(declare-fun matchRSpec!3293 (Regex!16192 List!64876) Bool)

(assert (=> b!6272774 (= lt!2352406 (matchRSpec!3293 lt!2352400 s!2326))))

(declare-fun lt!2352402 () Unit!158099)

(declare-fun mainMatchTheorem!3293 (Regex!16192 List!64876) Unit!158099)

(assert (=> b!6272774 (= lt!2352402 (mainMatchTheorem!3293 lt!2352400 s!2326))))

(declare-fun lt!2352391 () Regex!16192)

(declare-fun lt!2352408 () (Set Context!11152))

(declare-fun matchR!8375 (Regex!16192 List!64876) Bool)

(assert (=> b!6272774 (= (matchR!8375 lt!2352391 s!2326) (matchZipper!2204 lt!2352408 s!2326))))

(declare-fun lt!2352388 () Unit!158099)

(declare-fun lt!2352397 () Context!11152)

(declare-fun theoremZipperRegexEquiv!762 ((Set Context!11152) List!64877 Regex!16192 List!64876) Unit!158099)

(assert (=> b!6272774 (= lt!2352388 (theoremZipperRegexEquiv!762 lt!2352408 (Cons!64753 lt!2352397 Nil!64753) lt!2352391 s!2326))))

(declare-fun lt!2352404 () List!64875)

(declare-fun generalisedConcat!1789 (List!64875) Regex!16192)

(assert (=> b!6272774 (= lt!2352391 (generalisedConcat!1789 lt!2352404))))

(declare-fun lt!2352410 () (Set Context!11152))

(assert (=> b!6272774 (= lt!2352406 (matchZipper!2204 lt!2352410 s!2326))))

(assert (=> b!6272774 (= lt!2352406 (matchR!8375 lt!2352400 s!2326))))

(declare-fun lt!2352386 () Unit!158099)

(declare-fun lt!2352399 () List!64877)

(assert (=> b!6272774 (= lt!2352386 (theoremZipperRegexEquiv!762 lt!2352410 lt!2352399 lt!2352400 s!2326))))

(declare-fun lt!2352407 () List!64875)

(assert (=> b!6272774 (= lt!2352400 (generalisedConcat!1789 lt!2352407))))

(declare-fun b!6272775 () Bool)

(declare-fun res!2587394 () Bool)

(assert (=> b!6272775 (=> res!2587394 e!3815078)))

(declare-fun generalisedUnion!2036 (List!64875) Regex!16192)

(declare-fun unfocusZipperList!1613 (List!64877) List!64875)

(assert (=> b!6272775 (= res!2587394 (not (= r!7292 (generalisedUnion!2036 (unfocusZipperList!1613 zl!343)))))))

(declare-fun b!6272777 () Bool)

(assert (=> b!6272777 (= e!3815088 e!3815091)))

(declare-fun res!2587399 () Bool)

(assert (=> b!6272777 (=> res!2587399 e!3815091)))

(assert (=> b!6272777 (= res!2587399 (not (= lt!2352420 lt!2352412)))))

(assert (=> b!6272777 (= lt!2352412 (set.union lt!2352401 lt!2352393))))

(assert (=> b!6272777 (= lt!2352393 (derivationStepZipperDown!1440 (regTwo!32896 (regOne!32896 r!7292)) lt!2352413 (h!71200 s!2326)))))

(assert (=> b!6272777 (= lt!2352401 (derivationStepZipperDown!1440 (regOne!32896 (regOne!32896 r!7292)) lt!2352397 (h!71200 s!2326)))))

(assert (=> b!6272777 (= lt!2352397 (Context!11153 lt!2352404))))

(assert (=> b!6272777 (= lt!2352404 (Cons!64751 (regTwo!32896 (regOne!32896 r!7292)) (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun setIsEmpty!42665 () Bool)

(assert (=> setIsEmpty!42665 setRes!42665))

(declare-fun b!6272778 () Bool)

(declare-fun res!2587380 () Bool)

(assert (=> b!6272778 (=> (not res!2587380) (not e!3815073))))

(declare-fun unfocusZipper!1934 (List!64877) Regex!16192)

(assert (=> b!6272778 (= res!2587380 (= r!7292 (unfocusZipper!1934 zl!343)))))

(declare-fun b!6272779 () Bool)

(declare-fun tp_is_empty!41637 () Bool)

(assert (=> b!6272779 (= e!3815077 tp_is_empty!41637)))

(declare-fun b!6272780 () Bool)

(declare-fun tp!1749232 () Bool)

(assert (=> b!6272780 (= e!3815074 tp!1749232)))

(declare-fun b!6272781 () Bool)

(declare-fun e!3815076 () Bool)

(assert (=> b!6272781 (= e!3815084 e!3815076)))

(declare-fun res!2587390 () Bool)

(assert (=> b!6272781 (=> res!2587390 e!3815076)))

(declare-fun lt!2352398 () (Set Context!11152))

(declare-fun lt!2352395 () (Set Context!11152))

(assert (=> b!6272781 (= res!2587390 (not (= lt!2352398 lt!2352395)))))

(declare-fun lt!2352421 () (Set Context!11152))

(assert (=> b!6272781 (= lt!2352395 (set.union lt!2352401 lt!2352421))))

(assert (=> b!6272781 (= lt!2352421 (derivationStepZipperUp!1366 lt!2352397 (h!71200 s!2326)))))

(assert (=> b!6272781 (= (flatMap!1697 lt!2352410 lambda!343676) (derivationStepZipperUp!1366 lt!2352409 (h!71200 s!2326)))))

(declare-fun lt!2352416 () Unit!158099)

(assert (=> b!6272781 (= lt!2352416 (lemmaFlatMapOnSingletonSet!1223 lt!2352410 lt!2352409 lambda!343676))))

(declare-fun lt!2352422 () (Set Context!11152))

(assert (=> b!6272781 (= lt!2352422 (derivationStepZipperUp!1366 lt!2352409 (h!71200 s!2326)))))

(declare-fun derivationStepZipper!2158 ((Set Context!11152) C!32654) (Set Context!11152))

(assert (=> b!6272781 (= lt!2352398 (derivationStepZipper!2158 lt!2352410 (h!71200 s!2326)))))

(assert (=> b!6272781 (= lt!2352408 (set.insert lt!2352397 (as set.empty (Set Context!11152))))))

(assert (=> b!6272781 (= lt!2352410 (set.insert lt!2352409 (as set.empty (Set Context!11152))))))

(assert (=> b!6272781 (= lt!2352409 (Context!11153 lt!2352407))))

(assert (=> b!6272781 (= lt!2352407 (Cons!64751 (regOne!32896 (regOne!32896 r!7292)) lt!2352404))))

(declare-fun b!6272782 () Bool)

(declare-fun res!2587392 () Bool)

(assert (=> b!6272782 (=> res!2587392 e!3815078)))

(declare-fun isEmpty!36788 (List!64877) Bool)

(assert (=> b!6272782 (= res!2587392 (not (isEmpty!36788 (t!378435 zl!343))))))

(declare-fun b!6272783 () Bool)

(declare-fun e!3815083 () Bool)

(assert (=> b!6272783 (= e!3815083 (not (matchZipper!2204 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (t!378434 s!2326))))))

(declare-fun b!6272784 () Bool)

(assert (=> b!6272784 (= e!3815073 (not e!3815078))))

(declare-fun res!2587396 () Bool)

(assert (=> b!6272784 (=> res!2587396 e!3815078)))

(assert (=> b!6272784 (= res!2587396 (not (is-Cons!64753 zl!343)))))

(assert (=> b!6272784 (= lt!2352415 (matchRSpec!3293 r!7292 s!2326))))

(assert (=> b!6272784 (= lt!2352415 (matchR!8375 r!7292 s!2326))))

(declare-fun lt!2352389 () Unit!158099)

(assert (=> b!6272784 (= lt!2352389 (mainMatchTheorem!3293 r!7292 s!2326))))

(declare-fun b!6272785 () Bool)

(assert (=> b!6272785 (= e!3815082 (matchZipper!2204 lt!2352393 (t!378434 s!2326)))))

(declare-fun b!6272786 () Bool)

(declare-fun e!3815092 () Bool)

(assert (=> b!6272786 (= e!3815092 (matchZipper!2204 lt!2352421 (t!378434 s!2326)))))

(declare-fun b!6272787 () Bool)

(declare-fun res!2587382 () Bool)

(assert (=> b!6272787 (=> res!2587382 e!3815089)))

(declare-fun isEmpty!36789 (List!64875) Bool)

(assert (=> b!6272787 (= res!2587382 (isEmpty!36789 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6272788 () Bool)

(declare-fun res!2587377 () Bool)

(assert (=> b!6272788 (=> res!2587377 e!3815078)))

(assert (=> b!6272788 (= res!2587377 (not (= r!7292 (generalisedConcat!1789 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6272789 () Bool)

(declare-fun Unit!158102 () Unit!158099)

(assert (=> b!6272789 (= e!3815085 Unit!158102)))

(declare-fun lt!2352403 () Unit!158099)

(assert (=> b!6272789 (= lt!2352403 (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352420 lt!2352419 (t!378434 s!2326)))))

(declare-fun res!2587389 () Bool)

(assert (=> b!6272789 (= res!2587389 (matchZipper!2204 lt!2352420 (t!378434 s!2326)))))

(declare-fun e!3815075 () Bool)

(assert (=> b!6272789 (=> res!2587389 e!3815075)))

(assert (=> b!6272789 (= (matchZipper!2204 (set.union lt!2352420 lt!2352419) (t!378434 s!2326)) e!3815075)))

(declare-fun b!6272790 () Bool)

(assert (=> b!6272790 (= e!3815080 e!3815086)))

(declare-fun res!2587378 () Bool)

(assert (=> b!6272790 (=> res!2587378 e!3815086)))

(declare-fun zipperDepthTotal!345 (List!64877) Int)

(assert (=> b!6272790 (= res!2587378 (>= (zipperDepthTotal!345 lt!2352399) (zipperDepthTotal!345 zl!343)))))

(assert (=> b!6272790 (= lt!2352399 (Cons!64753 lt!2352409 Nil!64753))))

(declare-fun b!6272791 () Bool)

(declare-fun tp!1749235 () Bool)

(assert (=> b!6272791 (= e!3815079 tp!1749235)))

(declare-fun b!6272792 () Bool)

(declare-fun res!2587388 () Bool)

(assert (=> b!6272792 (=> res!2587388 e!3815080)))

(assert (=> b!6272792 (= res!2587388 (not (= (exprs!6076 (h!71201 zl!343)) (Cons!64751 (Concat!25037 (regOne!32896 (regOne!32896 r!7292)) (regTwo!32896 (regOne!32896 r!7292))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6272793 () Bool)

(declare-fun e!3815090 () Bool)

(declare-fun tp!1749234 () Bool)

(assert (=> b!6272793 (= e!3815090 (and tp_is_empty!41637 tp!1749234))))

(declare-fun b!6272794 () Bool)

(declare-fun res!2587393 () Bool)

(assert (=> b!6272794 (=> res!2587393 e!3815088)))

(assert (=> b!6272794 (= res!2587393 (not (nullable!6185 (regOne!32896 (regOne!32896 r!7292)))))))

(declare-fun b!6272795 () Bool)

(assert (=> b!6272795 (= e!3815075 (matchZipper!2204 lt!2352419 (t!378434 s!2326)))))

(declare-fun res!2587397 () Bool)

(assert (=> start!623596 (=> (not res!2587397) (not e!3815073))))

(assert (=> start!623596 (= res!2587397 (validRegex!7928 r!7292))))

(assert (=> start!623596 e!3815073))

(assert (=> start!623596 e!3815077))

(declare-fun condSetEmpty!42665 () Bool)

(assert (=> start!623596 (= condSetEmpty!42665 (= z!1189 (as set.empty (Set Context!11152))))))

(assert (=> start!623596 setRes!42665))

(assert (=> start!623596 e!3815081))

(assert (=> start!623596 e!3815090))

(declare-fun b!6272776 () Bool)

(assert (=> b!6272776 (= e!3815076 e!3815080)))

(declare-fun res!2587395 () Bool)

(assert (=> b!6272776 (=> res!2587395 e!3815080)))

(assert (=> b!6272776 (= res!2587395 e!3815083)))

(declare-fun res!2587401 () Bool)

(assert (=> b!6272776 (=> (not res!2587401) (not e!3815083))))

(assert (=> b!6272776 (= res!2587401 (not (= lt!2352392 (matchZipper!2204 lt!2352398 (t!378434 s!2326)))))))

(assert (=> b!6272776 (= (matchZipper!2204 lt!2352395 (t!378434 s!2326)) e!3815092)))

(declare-fun res!2587379 () Bool)

(assert (=> b!6272776 (=> res!2587379 e!3815092)))

(assert (=> b!6272776 (= res!2587379 lt!2352411)))

(declare-fun lt!2352390 () Unit!158099)

(assert (=> b!6272776 (= lt!2352390 (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352401 lt!2352421 (t!378434 s!2326)))))

(assert (=> b!6272776 (= (flatMap!1697 lt!2352408 lambda!343676) (derivationStepZipperUp!1366 lt!2352397 (h!71200 s!2326)))))

(declare-fun lt!2352405 () Unit!158099)

(assert (=> b!6272776 (= lt!2352405 (lemmaFlatMapOnSingletonSet!1223 lt!2352408 lt!2352397 lambda!343676))))

(declare-fun b!6272796 () Bool)

(declare-fun tp!1749229 () Bool)

(declare-fun tp!1749231 () Bool)

(assert (=> b!6272796 (= e!3815077 (and tp!1749229 tp!1749231))))

(declare-fun b!6272797 () Bool)

(declare-fun res!2587381 () Bool)

(assert (=> b!6272797 (=> res!2587381 e!3815086)))

(declare-fun zipperDepth!317 (List!64877) Int)

(assert (=> b!6272797 (= res!2587381 (> (zipperDepth!317 lt!2352399) (zipperDepth!317 zl!343)))))

(declare-fun b!6272798 () Bool)

(declare-fun res!2587384 () Bool)

(assert (=> b!6272798 (=> res!2587384 e!3815078)))

(assert (=> b!6272798 (= res!2587384 (not (is-Cons!64751 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6272799 () Bool)

(declare-fun res!2587387 () Bool)

(assert (=> b!6272799 (=> res!2587387 e!3815078)))

(assert (=> b!6272799 (= res!2587387 (or (is-EmptyExpr!16192 r!7292) (is-EmptyLang!16192 r!7292) (is-ElementMatch!16192 r!7292) (is-Union!16192 r!7292) (not (is-Concat!25037 r!7292))))))

(assert (= (and start!623596 res!2587397) b!6272768))

(assert (= (and b!6272768 res!2587391) b!6272778))

(assert (= (and b!6272778 res!2587380) b!6272784))

(assert (= (and b!6272784 (not res!2587396)) b!6272782))

(assert (= (and b!6272782 (not res!2587392)) b!6272788))

(assert (= (and b!6272788 (not res!2587377)) b!6272798))

(assert (= (and b!6272798 (not res!2587384)) b!6272775))

(assert (= (and b!6272775 (not res!2587394)) b!6272799))

(assert (= (and b!6272799 (not res!2587387)) b!6272766))

(assert (= (and b!6272766 (not res!2587386)) b!6272787))

(assert (= (and b!6272787 (not res!2587382)) b!6272771))

(assert (= (and b!6272771 c!1136844) b!6272789))

(assert (= (and b!6272771 (not c!1136844)) b!6272770))

(assert (= (and b!6272789 (not res!2587389)) b!6272795))

(assert (= (and b!6272771 (not res!2587383)) b!6272794))

(assert (= (and b!6272794 (not res!2587393)) b!6272777))

(assert (= (and b!6272777 (not res!2587399)) b!6272764))

(assert (= (and b!6272764 (not res!2587400)) b!6272785))

(assert (= (and b!6272764 res!2587385) b!6272767))

(assert (= (and b!6272764 (not res!2587398)) b!6272781))

(assert (= (and b!6272781 (not res!2587390)) b!6272776))

(assert (= (and b!6272776 (not res!2587379)) b!6272786))

(assert (= (and b!6272776 res!2587401) b!6272783))

(assert (= (and b!6272776 (not res!2587395)) b!6272792))

(assert (= (and b!6272792 (not res!2587388)) b!6272772))

(assert (= (and b!6272772 (not res!2587402)) b!6272790))

(assert (= (and b!6272790 (not res!2587378)) b!6272797))

(assert (= (and b!6272797 (not res!2587381)) b!6272774))

(assert (= (and start!623596 (is-ElementMatch!16192 r!7292)) b!6272779))

(assert (= (and start!623596 (is-Concat!25037 r!7292)) b!6272769))

(assert (= (and start!623596 (is-Star!16192 r!7292)) b!6272765))

(assert (= (and start!623596 (is-Union!16192 r!7292)) b!6272796))

(assert (= (and start!623596 condSetEmpty!42665) setIsEmpty!42665))

(assert (= (and start!623596 (not condSetEmpty!42665)) setNonEmpty!42665))

(assert (= setNonEmpty!42665 b!6272791))

(assert (= b!6272773 b!6272780))

(assert (= (and start!623596 (is-Cons!64753 zl!343)) b!6272773))

(assert (= (and start!623596 (is-Cons!64752 s!2326)) b!6272793))

(declare-fun m!7094352 () Bool)

(assert (=> b!6272790 m!7094352))

(declare-fun m!7094354 () Bool)

(assert (=> b!6272790 m!7094354))

(declare-fun m!7094356 () Bool)

(assert (=> start!623596 m!7094356))

(declare-fun m!7094358 () Bool)

(assert (=> b!6272764 m!7094358))

(declare-fun m!7094360 () Bool)

(assert (=> b!6272764 m!7094360))

(declare-fun m!7094362 () Bool)

(assert (=> b!6272764 m!7094362))

(declare-fun m!7094364 () Bool)

(assert (=> b!6272764 m!7094364))

(declare-fun m!7094366 () Bool)

(assert (=> b!6272784 m!7094366))

(declare-fun m!7094368 () Bool)

(assert (=> b!6272784 m!7094368))

(declare-fun m!7094370 () Bool)

(assert (=> b!6272784 m!7094370))

(declare-fun m!7094372 () Bool)

(assert (=> b!6272783 m!7094372))

(assert (=> b!6272783 m!7094372))

(declare-fun m!7094374 () Bool)

(assert (=> b!6272783 m!7094374))

(declare-fun m!7094376 () Bool)

(assert (=> b!6272788 m!7094376))

(declare-fun m!7094378 () Bool)

(assert (=> b!6272786 m!7094378))

(declare-fun m!7094380 () Bool)

(assert (=> setNonEmpty!42665 m!7094380))

(declare-fun m!7094382 () Bool)

(assert (=> b!6272772 m!7094382))

(declare-fun m!7094384 () Bool)

(assert (=> b!6272772 m!7094384))

(declare-fun m!7094386 () Bool)

(assert (=> b!6272775 m!7094386))

(assert (=> b!6272775 m!7094386))

(declare-fun m!7094388 () Bool)

(assert (=> b!6272775 m!7094388))

(declare-fun m!7094390 () Bool)

(assert (=> b!6272797 m!7094390))

(declare-fun m!7094392 () Bool)

(assert (=> b!6272797 m!7094392))

(declare-fun m!7094394 () Bool)

(assert (=> b!6272767 m!7094394))

(declare-fun m!7094396 () Bool)

(assert (=> b!6272771 m!7094396))

(declare-fun m!7094398 () Bool)

(assert (=> b!6272771 m!7094398))

(declare-fun m!7094400 () Bool)

(assert (=> b!6272771 m!7094400))

(declare-fun m!7094402 () Bool)

(assert (=> b!6272771 m!7094402))

(declare-fun m!7094404 () Bool)

(assert (=> b!6272771 m!7094404))

(declare-fun m!7094406 () Bool)

(assert (=> b!6272771 m!7094406))

(declare-fun m!7094408 () Bool)

(assert (=> b!6272771 m!7094408))

(declare-fun m!7094410 () Bool)

(assert (=> b!6272768 m!7094410))

(declare-fun m!7094412 () Bool)

(assert (=> b!6272773 m!7094412))

(declare-fun m!7094414 () Bool)

(assert (=> b!6272795 m!7094414))

(assert (=> b!6272785 m!7094394))

(declare-fun m!7094416 () Bool)

(assert (=> b!6272787 m!7094416))

(declare-fun m!7094418 () Bool)

(assert (=> b!6272774 m!7094418))

(declare-fun m!7094420 () Bool)

(assert (=> b!6272774 m!7094420))

(declare-fun m!7094422 () Bool)

(assert (=> b!6272774 m!7094422))

(declare-fun m!7094424 () Bool)

(assert (=> b!6272774 m!7094424))

(declare-fun m!7094426 () Bool)

(assert (=> b!6272774 m!7094426))

(declare-fun m!7094428 () Bool)

(assert (=> b!6272774 m!7094428))

(declare-fun m!7094430 () Bool)

(assert (=> b!6272774 m!7094430))

(declare-fun m!7094432 () Bool)

(assert (=> b!6272774 m!7094432))

(declare-fun m!7094434 () Bool)

(assert (=> b!6272774 m!7094434))

(declare-fun m!7094436 () Bool)

(assert (=> b!6272774 m!7094436))

(declare-fun m!7094438 () Bool)

(assert (=> b!6272774 m!7094438))

(declare-fun m!7094440 () Bool)

(assert (=> b!6272766 m!7094440))

(declare-fun m!7094442 () Bool)

(assert (=> b!6272766 m!7094442))

(declare-fun m!7094444 () Bool)

(assert (=> b!6272766 m!7094444))

(assert (=> b!6272766 m!7094440))

(declare-fun m!7094446 () Bool)

(assert (=> b!6272766 m!7094446))

(declare-fun m!7094448 () Bool)

(assert (=> b!6272766 m!7094448))

(assert (=> b!6272766 m!7094442))

(declare-fun m!7094450 () Bool)

(assert (=> b!6272766 m!7094450))

(declare-fun m!7094452 () Bool)

(assert (=> b!6272776 m!7094452))

(declare-fun m!7094454 () Bool)

(assert (=> b!6272776 m!7094454))

(declare-fun m!7094456 () Bool)

(assert (=> b!6272776 m!7094456))

(declare-fun m!7094458 () Bool)

(assert (=> b!6272776 m!7094458))

(declare-fun m!7094460 () Bool)

(assert (=> b!6272776 m!7094460))

(declare-fun m!7094462 () Bool)

(assert (=> b!6272776 m!7094462))

(declare-fun m!7094464 () Bool)

(assert (=> b!6272778 m!7094464))

(declare-fun m!7094466 () Bool)

(assert (=> b!6272794 m!7094466))

(declare-fun m!7094468 () Bool)

(assert (=> b!6272777 m!7094468))

(declare-fun m!7094470 () Bool)

(assert (=> b!6272777 m!7094470))

(declare-fun m!7094472 () Bool)

(assert (=> b!6272782 m!7094472))

(declare-fun m!7094474 () Bool)

(assert (=> b!6272781 m!7094474))

(declare-fun m!7094476 () Bool)

(assert (=> b!6272781 m!7094476))

(declare-fun m!7094478 () Bool)

(assert (=> b!6272781 m!7094478))

(declare-fun m!7094480 () Bool)

(assert (=> b!6272781 m!7094480))

(declare-fun m!7094482 () Bool)

(assert (=> b!6272781 m!7094482))

(declare-fun m!7094484 () Bool)

(assert (=> b!6272781 m!7094484))

(assert (=> b!6272781 m!7094452))

(declare-fun m!7094486 () Bool)

(assert (=> b!6272789 m!7094486))

(assert (=> b!6272789 m!7094358))

(declare-fun m!7094488 () Bool)

(assert (=> b!6272789 m!7094488))

(push 1)

(assert (not b!6272777))

(assert (not b!6272797))

(assert (not b!6272765))

(assert tp_is_empty!41637)

(assert (not b!6272772))

(assert (not b!6272767))

(assert (not b!6272796))

(assert (not b!6272764))

(assert (not b!6272774))

(assert (not b!6272776))

(assert (not b!6272787))

(assert (not b!6272791))

(assert (not b!6272775))

(assert (not b!6272795))

(assert (not b!6272781))

(assert (not b!6272794))

(assert (not b!6272785))

(assert (not b!6272768))

(assert (not b!6272788))

(assert (not b!6272773))

(assert (not b!6272784))

(assert (not b!6272789))

(assert (not b!6272790))

(assert (not b!6272782))

(assert (not b!6272778))

(assert (not b!6272766))

(assert (not b!6272769))

(assert (not b!6272786))

(assert (not b!6272771))

(assert (not start!623596))

(assert (not b!6272783))

(assert (not b!6272793))

(assert (not b!6272780))

(assert (not setNonEmpty!42665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1968822 () Bool)

(declare-fun c!1136859 () Bool)

(declare-fun isEmpty!36792 (List!64876) Bool)

(assert (=> d!1968822 (= c!1136859 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815161 () Bool)

(assert (=> d!1968822 (= (matchZipper!2204 lt!2352393 (t!378434 s!2326)) e!3815161)))

(declare-fun b!6272936 () Bool)

(declare-fun nullableZipper!1962 ((Set Context!11152)) Bool)

(assert (=> b!6272936 (= e!3815161 (nullableZipper!1962 lt!2352393))))

(declare-fun b!6272937 () Bool)

(declare-fun head!12884 (List!64876) C!32654)

(declare-fun tail!11969 (List!64876) List!64876)

(assert (=> b!6272937 (= e!3815161 (matchZipper!2204 (derivationStepZipper!2158 lt!2352393 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968822 c!1136859) b!6272936))

(assert (= (and d!1968822 (not c!1136859)) b!6272937))

(declare-fun m!7094628 () Bool)

(assert (=> d!1968822 m!7094628))

(declare-fun m!7094630 () Bool)

(assert (=> b!6272936 m!7094630))

(declare-fun m!7094632 () Bool)

(assert (=> b!6272937 m!7094632))

(assert (=> b!6272937 m!7094632))

(declare-fun m!7094634 () Bool)

(assert (=> b!6272937 m!7094634))

(declare-fun m!7094636 () Bool)

(assert (=> b!6272937 m!7094636))

(assert (=> b!6272937 m!7094634))

(assert (=> b!6272937 m!7094636))

(declare-fun m!7094638 () Bool)

(assert (=> b!6272937 m!7094638))

(assert (=> b!6272767 d!1968822))

(declare-fun d!1968824 () Bool)

(declare-fun e!3815164 () Bool)

(assert (=> d!1968824 e!3815164))

(declare-fun res!2587495 () Bool)

(assert (=> d!1968824 (=> (not res!2587495) (not e!3815164))))

(declare-fun lt!2352539 () List!64877)

(declare-fun noDuplicate!2026 (List!64877) Bool)

(assert (=> d!1968824 (= res!2587495 (noDuplicate!2026 lt!2352539))))

(declare-fun choose!46543 ((Set Context!11152)) List!64877)

(assert (=> d!1968824 (= lt!2352539 (choose!46543 z!1189))))

(assert (=> d!1968824 (= (toList!9976 z!1189) lt!2352539)))

(declare-fun b!6272940 () Bool)

(declare-fun content!12165 (List!64877) (Set Context!11152))

(assert (=> b!6272940 (= e!3815164 (= (content!12165 lt!2352539) z!1189))))

(assert (= (and d!1968824 res!2587495) b!6272940))

(declare-fun m!7094640 () Bool)

(assert (=> d!1968824 m!7094640))

(declare-fun m!7094642 () Bool)

(assert (=> d!1968824 m!7094642))

(declare-fun m!7094644 () Bool)

(assert (=> b!6272940 m!7094644))

(assert (=> b!6272768 d!1968824))

(declare-fun d!1968826 () Bool)

(assert (=> d!1968826 (= (isEmpty!36789 (t!378433 (exprs!6076 (h!71201 zl!343)))) (is-Nil!64751 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> b!6272787 d!1968826))

(declare-fun d!1968828 () Bool)

(declare-fun e!3815178 () Bool)

(assert (=> d!1968828 e!3815178))

(declare-fun res!2587500 () Bool)

(assert (=> d!1968828 (=> (not res!2587500) (not e!3815178))))

(declare-fun lt!2352542 () Regex!16192)

(assert (=> d!1968828 (= res!2587500 (validRegex!7928 lt!2352542))))

(declare-fun e!3815179 () Regex!16192)

(assert (=> d!1968828 (= lt!2352542 e!3815179)))

(declare-fun c!1136869 () Bool)

(declare-fun e!3815182 () Bool)

(assert (=> d!1968828 (= c!1136869 e!3815182)))

(declare-fun res!2587501 () Bool)

(assert (=> d!1968828 (=> (not res!2587501) (not e!3815182))))

(assert (=> d!1968828 (= res!2587501 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(declare-fun lambda!343694 () Int)

(declare-fun forall!15322 (List!64875 Int) Bool)

(assert (=> d!1968828 (forall!15322 (exprs!6076 (h!71201 zl!343)) lambda!343694)))

(assert (=> d!1968828 (= (generalisedConcat!1789 (exprs!6076 (h!71201 zl!343))) lt!2352542)))

(declare-fun b!6272961 () Bool)

(declare-fun e!3815181 () Bool)

(assert (=> b!6272961 (= e!3815178 e!3815181)))

(declare-fun c!1136870 () Bool)

(assert (=> b!6272961 (= c!1136870 (isEmpty!36789 (exprs!6076 (h!71201 zl!343))))))

(declare-fun b!6272962 () Bool)

(declare-fun e!3815180 () Bool)

(declare-fun head!12885 (List!64875) Regex!16192)

(assert (=> b!6272962 (= e!3815180 (= lt!2352542 (head!12885 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6272963 () Bool)

(assert (=> b!6272963 (= e!3815179 (h!71199 (exprs!6076 (h!71201 zl!343))))))

(declare-fun b!6272964 () Bool)

(declare-fun isEmptyExpr!1598 (Regex!16192) Bool)

(assert (=> b!6272964 (= e!3815181 (isEmptyExpr!1598 lt!2352542))))

(declare-fun b!6272965 () Bool)

(declare-fun e!3815177 () Regex!16192)

(assert (=> b!6272965 (= e!3815177 (Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343))) (generalisedConcat!1789 (t!378433 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6272966 () Bool)

(declare-fun isConcat!1121 (Regex!16192) Bool)

(assert (=> b!6272966 (= e!3815180 (isConcat!1121 lt!2352542))))

(declare-fun b!6272967 () Bool)

(assert (=> b!6272967 (= e!3815182 (isEmpty!36789 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6272968 () Bool)

(assert (=> b!6272968 (= e!3815179 e!3815177)))

(declare-fun c!1136868 () Bool)

(assert (=> b!6272968 (= c!1136868 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(declare-fun b!6272969 () Bool)

(assert (=> b!6272969 (= e!3815181 e!3815180)))

(declare-fun c!1136871 () Bool)

(declare-fun tail!11970 (List!64875) List!64875)

(assert (=> b!6272969 (= c!1136871 (isEmpty!36789 (tail!11970 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6272970 () Bool)

(assert (=> b!6272970 (= e!3815177 EmptyExpr!16192)))

(assert (= (and d!1968828 res!2587501) b!6272967))

(assert (= (and d!1968828 c!1136869) b!6272963))

(assert (= (and d!1968828 (not c!1136869)) b!6272968))

(assert (= (and b!6272968 c!1136868) b!6272965))

(assert (= (and b!6272968 (not c!1136868)) b!6272970))

(assert (= (and d!1968828 res!2587500) b!6272961))

(assert (= (and b!6272961 c!1136870) b!6272964))

(assert (= (and b!6272961 (not c!1136870)) b!6272969))

(assert (= (and b!6272969 c!1136871) b!6272962))

(assert (= (and b!6272969 (not c!1136871)) b!6272966))

(declare-fun m!7094646 () Bool)

(assert (=> b!6272966 m!7094646))

(declare-fun m!7094648 () Bool)

(assert (=> b!6272969 m!7094648))

(assert (=> b!6272969 m!7094648))

(declare-fun m!7094650 () Bool)

(assert (=> b!6272969 m!7094650))

(declare-fun m!7094652 () Bool)

(assert (=> b!6272961 m!7094652))

(assert (=> b!6272967 m!7094416))

(declare-fun m!7094654 () Bool)

(assert (=> b!6272962 m!7094654))

(declare-fun m!7094656 () Bool)

(assert (=> d!1968828 m!7094656))

(declare-fun m!7094658 () Bool)

(assert (=> d!1968828 m!7094658))

(declare-fun m!7094660 () Bool)

(assert (=> b!6272965 m!7094660))

(declare-fun m!7094662 () Bool)

(assert (=> b!6272964 m!7094662))

(assert (=> b!6272788 d!1968828))

(declare-fun e!3815185 () Bool)

(declare-fun d!1968830 () Bool)

(assert (=> d!1968830 (= (matchZipper!2204 (set.union lt!2352420 lt!2352419) (t!378434 s!2326)) e!3815185)))

(declare-fun res!2587504 () Bool)

(assert (=> d!1968830 (=> res!2587504 e!3815185)))

(assert (=> d!1968830 (= res!2587504 (matchZipper!2204 lt!2352420 (t!378434 s!2326)))))

(declare-fun lt!2352545 () Unit!158099)

(declare-fun choose!46544 ((Set Context!11152) (Set Context!11152) List!64876) Unit!158099)

(assert (=> d!1968830 (= lt!2352545 (choose!46544 lt!2352420 lt!2352419 (t!378434 s!2326)))))

(assert (=> d!1968830 (= (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352420 lt!2352419 (t!378434 s!2326)) lt!2352545)))

(declare-fun b!6272973 () Bool)

(assert (=> b!6272973 (= e!3815185 (matchZipper!2204 lt!2352419 (t!378434 s!2326)))))

(assert (= (and d!1968830 (not res!2587504)) b!6272973))

(assert (=> d!1968830 m!7094488))

(assert (=> d!1968830 m!7094358))

(declare-fun m!7094664 () Bool)

(assert (=> d!1968830 m!7094664))

(assert (=> b!6272973 m!7094414))

(assert (=> b!6272789 d!1968830))

(declare-fun d!1968832 () Bool)

(declare-fun c!1136872 () Bool)

(assert (=> d!1968832 (= c!1136872 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815186 () Bool)

(assert (=> d!1968832 (= (matchZipper!2204 lt!2352420 (t!378434 s!2326)) e!3815186)))

(declare-fun b!6272974 () Bool)

(assert (=> b!6272974 (= e!3815186 (nullableZipper!1962 lt!2352420))))

(declare-fun b!6272975 () Bool)

(assert (=> b!6272975 (= e!3815186 (matchZipper!2204 (derivationStepZipper!2158 lt!2352420 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968832 c!1136872) b!6272974))

(assert (= (and d!1968832 (not c!1136872)) b!6272975))

(assert (=> d!1968832 m!7094628))

(declare-fun m!7094666 () Bool)

(assert (=> b!6272974 m!7094666))

(assert (=> b!6272975 m!7094632))

(assert (=> b!6272975 m!7094632))

(declare-fun m!7094668 () Bool)

(assert (=> b!6272975 m!7094668))

(assert (=> b!6272975 m!7094636))

(assert (=> b!6272975 m!7094668))

(assert (=> b!6272975 m!7094636))

(declare-fun m!7094670 () Bool)

(assert (=> b!6272975 m!7094670))

(assert (=> b!6272789 d!1968832))

(declare-fun d!1968834 () Bool)

(declare-fun c!1136873 () Bool)

(assert (=> d!1968834 (= c!1136873 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815187 () Bool)

(assert (=> d!1968834 (= (matchZipper!2204 (set.union lt!2352420 lt!2352419) (t!378434 s!2326)) e!3815187)))

(declare-fun b!6272976 () Bool)

(assert (=> b!6272976 (= e!3815187 (nullableZipper!1962 (set.union lt!2352420 lt!2352419)))))

(declare-fun b!6272977 () Bool)

(assert (=> b!6272977 (= e!3815187 (matchZipper!2204 (derivationStepZipper!2158 (set.union lt!2352420 lt!2352419) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968834 c!1136873) b!6272976))

(assert (= (and d!1968834 (not c!1136873)) b!6272977))

(assert (=> d!1968834 m!7094628))

(declare-fun m!7094672 () Bool)

(assert (=> b!6272976 m!7094672))

(assert (=> b!6272977 m!7094632))

(assert (=> b!6272977 m!7094632))

(declare-fun m!7094674 () Bool)

(assert (=> b!6272977 m!7094674))

(assert (=> b!6272977 m!7094636))

(assert (=> b!6272977 m!7094674))

(assert (=> b!6272977 m!7094636))

(declare-fun m!7094676 () Bool)

(assert (=> b!6272977 m!7094676))

(assert (=> b!6272789 d!1968834))

(declare-fun d!1968836 () Bool)

(declare-fun lt!2352548 () Int)

(assert (=> d!1968836 (>= lt!2352548 0)))

(declare-fun e!3815190 () Int)

(assert (=> d!1968836 (= lt!2352548 e!3815190)))

(declare-fun c!1136876 () Bool)

(assert (=> d!1968836 (= c!1136876 (is-Cons!64753 lt!2352399))))

(assert (=> d!1968836 (= (zipperDepthTotal!345 lt!2352399) lt!2352548)))

(declare-fun b!6272982 () Bool)

(assert (=> b!6272982 (= e!3815190 (+ (contextDepthTotal!315 (h!71201 lt!2352399)) (zipperDepthTotal!345 (t!378435 lt!2352399))))))

(declare-fun b!6272983 () Bool)

(assert (=> b!6272983 (= e!3815190 0)))

(assert (= (and d!1968836 c!1136876) b!6272982))

(assert (= (and d!1968836 (not c!1136876)) b!6272983))

(declare-fun m!7094678 () Bool)

(assert (=> b!6272982 m!7094678))

(declare-fun m!7094680 () Bool)

(assert (=> b!6272982 m!7094680))

(assert (=> b!6272790 d!1968836))

(declare-fun d!1968838 () Bool)

(declare-fun lt!2352549 () Int)

(assert (=> d!1968838 (>= lt!2352549 0)))

(declare-fun e!3815191 () Int)

(assert (=> d!1968838 (= lt!2352549 e!3815191)))

(declare-fun c!1136877 () Bool)

(assert (=> d!1968838 (= c!1136877 (is-Cons!64753 zl!343))))

(assert (=> d!1968838 (= (zipperDepthTotal!345 zl!343) lt!2352549)))

(declare-fun b!6272984 () Bool)

(assert (=> b!6272984 (= e!3815191 (+ (contextDepthTotal!315 (h!71201 zl!343)) (zipperDepthTotal!345 (t!378435 zl!343))))))

(declare-fun b!6272985 () Bool)

(assert (=> b!6272985 (= e!3815191 0)))

(assert (= (and d!1968838 c!1136877) b!6272984))

(assert (= (and d!1968838 (not c!1136877)) b!6272985))

(assert (=> b!6272984 m!7094384))

(declare-fun m!7094682 () Bool)

(assert (=> b!6272984 m!7094682))

(assert (=> b!6272790 d!1968838))

(declare-fun bm!530558 () Bool)

(declare-fun call!530563 () (Set Context!11152))

(assert (=> bm!530558 (= call!530563 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352413)) (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (h!71200 s!2326)))))

(declare-fun b!6272996 () Bool)

(declare-fun e!3815199 () Bool)

(assert (=> b!6272996 (= e!3815199 (nullable!6185 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun d!1968840 () Bool)

(declare-fun c!1136882 () Bool)

(assert (=> d!1968840 (= c!1136882 e!3815199)))

(declare-fun res!2587507 () Bool)

(assert (=> d!1968840 (=> (not res!2587507) (not e!3815199))))

(assert (=> d!1968840 (= res!2587507 (is-Cons!64751 (exprs!6076 lt!2352413)))))

(declare-fun e!3815198 () (Set Context!11152))

(assert (=> d!1968840 (= (derivationStepZipperUp!1366 lt!2352413 (h!71200 s!2326)) e!3815198)))

(declare-fun b!6272997 () Bool)

(assert (=> b!6272997 (= e!3815198 (set.union call!530563 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (h!71200 s!2326))))))

(declare-fun b!6272998 () Bool)

(declare-fun e!3815200 () (Set Context!11152))

(assert (=> b!6272998 (= e!3815200 call!530563)))

(declare-fun b!6272999 () Bool)

(assert (=> b!6272999 (= e!3815198 e!3815200)))

(declare-fun c!1136883 () Bool)

(assert (=> b!6272999 (= c!1136883 (is-Cons!64751 (exprs!6076 lt!2352413)))))

(declare-fun b!6273000 () Bool)

(assert (=> b!6273000 (= e!3815200 (as set.empty (Set Context!11152)))))

(assert (= (and d!1968840 res!2587507) b!6272996))

(assert (= (and d!1968840 c!1136882) b!6272997))

(assert (= (and d!1968840 (not c!1136882)) b!6272999))

(assert (= (and b!6272999 c!1136883) b!6272998))

(assert (= (and b!6272999 (not c!1136883)) b!6273000))

(assert (= (or b!6272997 b!6272998) bm!530558))

(declare-fun m!7094684 () Bool)

(assert (=> bm!530558 m!7094684))

(declare-fun m!7094686 () Bool)

(assert (=> b!6272996 m!7094686))

(declare-fun m!7094688 () Bool)

(assert (=> b!6272997 m!7094688))

(assert (=> b!6272771 d!1968840))

(declare-fun d!1968842 () Bool)

(declare-fun choose!46545 ((Set Context!11152) Int) (Set Context!11152))

(assert (=> d!1968842 (= (flatMap!1697 z!1189 lambda!343676) (choose!46545 z!1189 lambda!343676))))

(declare-fun bs!1566636 () Bool)

(assert (= bs!1566636 d!1968842))

(declare-fun m!7094690 () Bool)

(assert (=> bs!1566636 m!7094690))

(assert (=> b!6272771 d!1968842))

(declare-fun d!1968844 () Bool)

(declare-fun nullableFct!2137 (Regex!16192) Bool)

(assert (=> d!1968844 (= (nullable!6185 (h!71199 (exprs!6076 (h!71201 zl!343)))) (nullableFct!2137 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bs!1566637 () Bool)

(assert (= bs!1566637 d!1968844))

(declare-fun m!7094692 () Bool)

(assert (=> bs!1566637 m!7094692))

(assert (=> b!6272771 d!1968844))

(declare-fun b!6273023 () Bool)

(declare-fun e!3815216 () (Set Context!11152))

(declare-fun e!3815214 () (Set Context!11152))

(assert (=> b!6273023 (= e!3815216 e!3815214)))

(declare-fun c!1136895 () Bool)

(assert (=> b!6273023 (= c!1136895 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bm!530571 () Bool)

(declare-fun call!530580 () (Set Context!11152))

(declare-fun call!530576 () (Set Context!11152))

(assert (=> bm!530571 (= call!530580 call!530576)))

(declare-fun b!6273024 () Bool)

(declare-fun e!3815215 () Bool)

(assert (=> b!6273024 (= e!3815215 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6273025 () Bool)

(declare-fun c!1136898 () Bool)

(assert (=> b!6273025 (= c!1136898 (is-Star!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun e!3815218 () (Set Context!11152))

(assert (=> b!6273025 (= e!3815214 e!3815218)))

(declare-fun b!6273026 () Bool)

(assert (=> b!6273026 (= e!3815218 (as set.empty (Set Context!11152)))))

(declare-fun d!1968846 () Bool)

(declare-fun c!1136894 () Bool)

(assert (=> d!1968846 (= c!1136894 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))) (= (c!1136845 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326))))))

(declare-fun e!3815213 () (Set Context!11152))

(assert (=> d!1968846 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (h!71201 zl!343))) lt!2352413 (h!71200 s!2326)) e!3815213)))

(declare-fun c!1136897 () Bool)

(declare-fun call!530577 () List!64875)

(declare-fun call!530578 () (Set Context!11152))

(declare-fun bm!530572 () Bool)

(assert (=> bm!530572 (= call!530578 (derivationStepZipperDown!1440 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))) (ite c!1136897 lt!2352413 (Context!11153 call!530577)) (h!71200 s!2326)))))

(declare-fun b!6273027 () Bool)

(declare-fun c!1136896 () Bool)

(assert (=> b!6273027 (= c!1136896 e!3815215)))

(declare-fun res!2587510 () Bool)

(assert (=> b!6273027 (=> (not res!2587510) (not e!3815215))))

(assert (=> b!6273027 (= res!2587510 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun e!3815217 () (Set Context!11152))

(assert (=> b!6273027 (= e!3815217 e!3815216)))

(declare-fun b!6273028 () Bool)

(declare-fun call!530581 () (Set Context!11152))

(assert (=> b!6273028 (= e!3815217 (set.union call!530581 call!530578))))

(declare-fun b!6273029 () Bool)

(assert (=> b!6273029 (= e!3815213 e!3815217)))

(assert (=> b!6273029 (= c!1136897 (is-Union!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bm!530573 () Bool)

(assert (=> bm!530573 (= call!530576 call!530581)))

(declare-fun bm!530574 () Bool)

(declare-fun call!530579 () List!64875)

(assert (=> bm!530574 (= call!530581 (derivationStepZipperDown!1440 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))) (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579)) (h!71200 s!2326)))))

(declare-fun b!6273030 () Bool)

(assert (=> b!6273030 (= e!3815218 call!530580)))

(declare-fun bm!530575 () Bool)

(declare-fun $colon$colon!2057 (List!64875 Regex!16192) List!64875)

(assert (=> bm!530575 (= call!530577 ($colon$colon!2057 (exprs!6076 lt!2352413) (ite (or c!1136896 c!1136895) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71199 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun bm!530576 () Bool)

(assert (=> bm!530576 (= call!530579 call!530577)))

(declare-fun b!6273031 () Bool)

(assert (=> b!6273031 (= e!3815213 (set.insert lt!2352413 (as set.empty (Set Context!11152))))))

(declare-fun b!6273032 () Bool)

(assert (=> b!6273032 (= e!3815216 (set.union call!530578 call!530576))))

(declare-fun b!6273033 () Bool)

(assert (=> b!6273033 (= e!3815214 call!530580)))

(assert (= (and d!1968846 c!1136894) b!6273031))

(assert (= (and d!1968846 (not c!1136894)) b!6273029))

(assert (= (and b!6273029 c!1136897) b!6273028))

(assert (= (and b!6273029 (not c!1136897)) b!6273027))

(assert (= (and b!6273027 res!2587510) b!6273024))

(assert (= (and b!6273027 c!1136896) b!6273032))

(assert (= (and b!6273027 (not c!1136896)) b!6273023))

(assert (= (and b!6273023 c!1136895) b!6273033))

(assert (= (and b!6273023 (not c!1136895)) b!6273025))

(assert (= (and b!6273025 c!1136898) b!6273030))

(assert (= (and b!6273025 (not c!1136898)) b!6273026))

(assert (= (or b!6273033 b!6273030) bm!530576))

(assert (= (or b!6273033 b!6273030) bm!530571))

(assert (= (or b!6273032 bm!530576) bm!530575))

(assert (= (or b!6273032 bm!530571) bm!530573))

(assert (= (or b!6273028 b!6273032) bm!530572))

(assert (= (or b!6273028 bm!530573) bm!530574))

(declare-fun m!7094694 () Bool)

(assert (=> bm!530574 m!7094694))

(declare-fun m!7094696 () Bool)

(assert (=> bm!530572 m!7094696))

(declare-fun m!7094698 () Bool)

(assert (=> b!6273024 m!7094698))

(declare-fun m!7094700 () Bool)

(assert (=> b!6273031 m!7094700))

(declare-fun m!7094702 () Bool)

(assert (=> bm!530575 m!7094702))

(assert (=> b!6272771 d!1968846))

(declare-fun bm!530577 () Bool)

(declare-fun call!530582 () (Set Context!11152))

(assert (=> bm!530577 (= call!530582 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326)))))

(declare-fun b!6273034 () Bool)

(declare-fun e!3815220 () Bool)

(assert (=> b!6273034 (= e!3815220 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun d!1968848 () Bool)

(declare-fun c!1136899 () Bool)

(assert (=> d!1968848 (= c!1136899 e!3815220)))

(declare-fun res!2587511 () Bool)

(assert (=> d!1968848 (=> (not res!2587511) (not e!3815220))))

(assert (=> d!1968848 (= res!2587511 (is-Cons!64751 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun e!3815219 () (Set Context!11152))

(assert (=> d!1968848 (= (derivationStepZipperUp!1366 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))) (h!71200 s!2326)) e!3815219)))

(declare-fun b!6273035 () Bool)

(assert (=> b!6273035 (= e!3815219 (set.union call!530582 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326))))))

(declare-fun b!6273036 () Bool)

(declare-fun e!3815221 () (Set Context!11152))

(assert (=> b!6273036 (= e!3815221 call!530582)))

(declare-fun b!6273037 () Bool)

(assert (=> b!6273037 (= e!3815219 e!3815221)))

(declare-fun c!1136900 () Bool)

(assert (=> b!6273037 (= c!1136900 (is-Cons!64751 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun b!6273038 () Bool)

(assert (=> b!6273038 (= e!3815221 (as set.empty (Set Context!11152)))))

(assert (= (and d!1968848 res!2587511) b!6273034))

(assert (= (and d!1968848 c!1136899) b!6273035))

(assert (= (and d!1968848 (not c!1136899)) b!6273037))

(assert (= (and b!6273037 c!1136900) b!6273036))

(assert (= (and b!6273037 (not c!1136900)) b!6273038))

(assert (= (or b!6273035 b!6273036) bm!530577))

(declare-fun m!7094704 () Bool)

(assert (=> bm!530577 m!7094704))

(declare-fun m!7094706 () Bool)

(assert (=> b!6273034 m!7094706))

(declare-fun m!7094708 () Bool)

(assert (=> b!6273035 m!7094708))

(assert (=> b!6272771 d!1968848))

(declare-fun d!1968850 () Bool)

(declare-fun dynLambda!25610 (Int Context!11152) (Set Context!11152))

(assert (=> d!1968850 (= (flatMap!1697 z!1189 lambda!343676) (dynLambda!25610 lambda!343676 (h!71201 zl!343)))))

(declare-fun lt!2352552 () Unit!158099)

(declare-fun choose!46546 ((Set Context!11152) Context!11152 Int) Unit!158099)

(assert (=> d!1968850 (= lt!2352552 (choose!46546 z!1189 (h!71201 zl!343) lambda!343676))))

(assert (=> d!1968850 (= z!1189 (set.insert (h!71201 zl!343) (as set.empty (Set Context!11152))))))

(assert (=> d!1968850 (= (lemmaFlatMapOnSingletonSet!1223 z!1189 (h!71201 zl!343) lambda!343676) lt!2352552)))

(declare-fun b_lambda!238869 () Bool)

(assert (=> (not b_lambda!238869) (not d!1968850)))

(declare-fun bs!1566638 () Bool)

(assert (= bs!1566638 d!1968850))

(assert (=> bs!1566638 m!7094404))

(declare-fun m!7094710 () Bool)

(assert (=> bs!1566638 m!7094710))

(declare-fun m!7094712 () Bool)

(assert (=> bs!1566638 m!7094712))

(declare-fun m!7094714 () Bool)

(assert (=> bs!1566638 m!7094714))

(assert (=> b!6272771 d!1968850))

(declare-fun bm!530578 () Bool)

(declare-fun call!530583 () (Set Context!11152))

(assert (=> bm!530578 (= call!530583 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (h!71201 zl!343))) (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326)))))

(declare-fun b!6273039 () Bool)

(declare-fun e!3815223 () Bool)

(assert (=> b!6273039 (= e!3815223 (nullable!6185 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun d!1968852 () Bool)

(declare-fun c!1136901 () Bool)

(assert (=> d!1968852 (= c!1136901 e!3815223)))

(declare-fun res!2587512 () Bool)

(assert (=> d!1968852 (=> (not res!2587512) (not e!3815223))))

(assert (=> d!1968852 (= res!2587512 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(declare-fun e!3815222 () (Set Context!11152))

(assert (=> d!1968852 (= (derivationStepZipperUp!1366 (h!71201 zl!343) (h!71200 s!2326)) e!3815222)))

(declare-fun b!6273040 () Bool)

(assert (=> b!6273040 (= e!3815222 (set.union call!530583 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326))))))

(declare-fun b!6273041 () Bool)

(declare-fun e!3815224 () (Set Context!11152))

(assert (=> b!6273041 (= e!3815224 call!530583)))

(declare-fun b!6273042 () Bool)

(assert (=> b!6273042 (= e!3815222 e!3815224)))

(declare-fun c!1136902 () Bool)

(assert (=> b!6273042 (= c!1136902 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(declare-fun b!6273043 () Bool)

(assert (=> b!6273043 (= e!3815224 (as set.empty (Set Context!11152)))))

(assert (= (and d!1968852 res!2587512) b!6273039))

(assert (= (and d!1968852 c!1136901) b!6273040))

(assert (= (and d!1968852 (not c!1136901)) b!6273042))

(assert (= (and b!6273042 c!1136902) b!6273041))

(assert (= (and b!6273042 (not c!1136902)) b!6273043))

(assert (= (or b!6273040 b!6273041) bm!530578))

(declare-fun m!7094716 () Bool)

(assert (=> bm!530578 m!7094716))

(assert (=> b!6273039 m!7094402))

(declare-fun m!7094718 () Bool)

(assert (=> b!6273040 m!7094718))

(assert (=> b!6272771 d!1968852))

(declare-fun bs!1566639 () Bool)

(declare-fun d!1968854 () Bool)

(assert (= bs!1566639 (and d!1968854 d!1968828)))

(declare-fun lambda!343697 () Int)

(assert (=> bs!1566639 (= lambda!343697 lambda!343694)))

(assert (=> d!1968854 (= (inv!83728 setElem!42665) (forall!15322 (exprs!6076 setElem!42665) lambda!343697))))

(declare-fun bs!1566640 () Bool)

(assert (= bs!1566640 d!1968854))

(declare-fun m!7094720 () Bool)

(assert (=> bs!1566640 m!7094720))

(assert (=> setNonEmpty!42665 d!1968854))

(declare-fun d!1968856 () Bool)

(assert (=> d!1968856 (= (flatMap!1697 lt!2352410 lambda!343676) (dynLambda!25610 lambda!343676 lt!2352409))))

(declare-fun lt!2352553 () Unit!158099)

(assert (=> d!1968856 (= lt!2352553 (choose!46546 lt!2352410 lt!2352409 lambda!343676))))

(assert (=> d!1968856 (= lt!2352410 (set.insert lt!2352409 (as set.empty (Set Context!11152))))))

(assert (=> d!1968856 (= (lemmaFlatMapOnSingletonSet!1223 lt!2352410 lt!2352409 lambda!343676) lt!2352553)))

(declare-fun b_lambda!238871 () Bool)

(assert (=> (not b_lambda!238871) (not d!1968856)))

(declare-fun bs!1566641 () Bool)

(assert (= bs!1566641 d!1968856))

(assert (=> bs!1566641 m!7094482))

(declare-fun m!7094722 () Bool)

(assert (=> bs!1566641 m!7094722))

(declare-fun m!7094724 () Bool)

(assert (=> bs!1566641 m!7094724))

(assert (=> bs!1566641 m!7094476))

(assert (=> b!6272781 d!1968856))

(declare-fun bm!530579 () Bool)

(declare-fun call!530584 () (Set Context!11152))

(assert (=> bm!530579 (= call!530584 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352397)) (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (h!71200 s!2326)))))

(declare-fun b!6273044 () Bool)

(declare-fun e!3815226 () Bool)

(assert (=> b!6273044 (= e!3815226 (nullable!6185 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun d!1968858 () Bool)

(declare-fun c!1136903 () Bool)

(assert (=> d!1968858 (= c!1136903 e!3815226)))

(declare-fun res!2587513 () Bool)

(assert (=> d!1968858 (=> (not res!2587513) (not e!3815226))))

(assert (=> d!1968858 (= res!2587513 (is-Cons!64751 (exprs!6076 lt!2352397)))))

(declare-fun e!3815225 () (Set Context!11152))

(assert (=> d!1968858 (= (derivationStepZipperUp!1366 lt!2352397 (h!71200 s!2326)) e!3815225)))

(declare-fun b!6273045 () Bool)

(assert (=> b!6273045 (= e!3815225 (set.union call!530584 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (h!71200 s!2326))))))

(declare-fun b!6273046 () Bool)

(declare-fun e!3815227 () (Set Context!11152))

(assert (=> b!6273046 (= e!3815227 call!530584)))

(declare-fun b!6273047 () Bool)

(assert (=> b!6273047 (= e!3815225 e!3815227)))

(declare-fun c!1136904 () Bool)

(assert (=> b!6273047 (= c!1136904 (is-Cons!64751 (exprs!6076 lt!2352397)))))

(declare-fun b!6273048 () Bool)

(assert (=> b!6273048 (= e!3815227 (as set.empty (Set Context!11152)))))

(assert (= (and d!1968858 res!2587513) b!6273044))

(assert (= (and d!1968858 c!1136903) b!6273045))

(assert (= (and d!1968858 (not c!1136903)) b!6273047))

(assert (= (and b!6273047 c!1136904) b!6273046))

(assert (= (and b!6273047 (not c!1136904)) b!6273048))

(assert (= (or b!6273045 b!6273046) bm!530579))

(declare-fun m!7094726 () Bool)

(assert (=> bm!530579 m!7094726))

(declare-fun m!7094728 () Bool)

(assert (=> b!6273044 m!7094728))

(declare-fun m!7094730 () Bool)

(assert (=> b!6273045 m!7094730))

(assert (=> b!6272781 d!1968858))

(declare-fun bm!530580 () Bool)

(declare-fun call!530585 () (Set Context!11152))

(assert (=> bm!530580 (= call!530585 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352409)) (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (h!71200 s!2326)))))

(declare-fun b!6273049 () Bool)

(declare-fun e!3815229 () Bool)

(assert (=> b!6273049 (= e!3815229 (nullable!6185 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun d!1968860 () Bool)

(declare-fun c!1136905 () Bool)

(assert (=> d!1968860 (= c!1136905 e!3815229)))

(declare-fun res!2587514 () Bool)

(assert (=> d!1968860 (=> (not res!2587514) (not e!3815229))))

(assert (=> d!1968860 (= res!2587514 (is-Cons!64751 (exprs!6076 lt!2352409)))))

(declare-fun e!3815228 () (Set Context!11152))

(assert (=> d!1968860 (= (derivationStepZipperUp!1366 lt!2352409 (h!71200 s!2326)) e!3815228)))

(declare-fun b!6273050 () Bool)

(assert (=> b!6273050 (= e!3815228 (set.union call!530585 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (h!71200 s!2326))))))

(declare-fun b!6273051 () Bool)

(declare-fun e!3815230 () (Set Context!11152))

(assert (=> b!6273051 (= e!3815230 call!530585)))

(declare-fun b!6273052 () Bool)

(assert (=> b!6273052 (= e!3815228 e!3815230)))

(declare-fun c!1136906 () Bool)

(assert (=> b!6273052 (= c!1136906 (is-Cons!64751 (exprs!6076 lt!2352409)))))

(declare-fun b!6273053 () Bool)

(assert (=> b!6273053 (= e!3815230 (as set.empty (Set Context!11152)))))

(assert (= (and d!1968860 res!2587514) b!6273049))

(assert (= (and d!1968860 c!1136905) b!6273050))

(assert (= (and d!1968860 (not c!1136905)) b!6273052))

(assert (= (and b!6273052 c!1136906) b!6273051))

(assert (= (and b!6273052 (not c!1136906)) b!6273053))

(assert (= (or b!6273050 b!6273051) bm!530580))

(declare-fun m!7094732 () Bool)

(assert (=> bm!530580 m!7094732))

(declare-fun m!7094734 () Bool)

(assert (=> b!6273049 m!7094734))

(declare-fun m!7094736 () Bool)

(assert (=> b!6273050 m!7094736))

(assert (=> b!6272781 d!1968860))

(declare-fun bs!1566642 () Bool)

(declare-fun d!1968862 () Bool)

(assert (= bs!1566642 (and d!1968862 b!6272771)))

(declare-fun lambda!343700 () Int)

(assert (=> bs!1566642 (= lambda!343700 lambda!343676)))

(assert (=> d!1968862 true))

(assert (=> d!1968862 (= (derivationStepZipper!2158 lt!2352410 (h!71200 s!2326)) (flatMap!1697 lt!2352410 lambda!343700))))

(declare-fun bs!1566643 () Bool)

(assert (= bs!1566643 d!1968862))

(declare-fun m!7094738 () Bool)

(assert (=> bs!1566643 m!7094738))

(assert (=> b!6272781 d!1968862))

(declare-fun d!1968864 () Bool)

(assert (=> d!1968864 (= (flatMap!1697 lt!2352410 lambda!343676) (choose!46545 lt!2352410 lambda!343676))))

(declare-fun bs!1566644 () Bool)

(assert (= bs!1566644 d!1968864))

(declare-fun m!7094740 () Bool)

(assert (=> bs!1566644 m!7094740))

(assert (=> b!6272781 d!1968864))

(declare-fun d!1968866 () Bool)

(assert (=> d!1968866 (= (isEmpty!36788 (t!378435 zl!343)) (is-Nil!64753 (t!378435 zl!343)))))

(assert (=> b!6272782 d!1968866))

(assert (=> b!6272764 d!1968832))

(declare-fun d!1968868 () Bool)

(declare-fun c!1136909 () Bool)

(assert (=> d!1968868 (= c!1136909 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815231 () Bool)

(assert (=> d!1968868 (= (matchZipper!2204 lt!2352412 (t!378434 s!2326)) e!3815231)))

(declare-fun b!6273056 () Bool)

(assert (=> b!6273056 (= e!3815231 (nullableZipper!1962 lt!2352412))))

(declare-fun b!6273057 () Bool)

(assert (=> b!6273057 (= e!3815231 (matchZipper!2204 (derivationStepZipper!2158 lt!2352412 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968868 c!1136909) b!6273056))

(assert (= (and d!1968868 (not c!1136909)) b!6273057))

(assert (=> d!1968868 m!7094628))

(declare-fun m!7094742 () Bool)

(assert (=> b!6273056 m!7094742))

(assert (=> b!6273057 m!7094632))

(assert (=> b!6273057 m!7094632))

(declare-fun m!7094744 () Bool)

(assert (=> b!6273057 m!7094744))

(assert (=> b!6273057 m!7094636))

(assert (=> b!6273057 m!7094744))

(assert (=> b!6273057 m!7094636))

(declare-fun m!7094746 () Bool)

(assert (=> b!6273057 m!7094746))

(assert (=> b!6272764 d!1968868))

(declare-fun d!1968870 () Bool)

(declare-fun c!1136910 () Bool)

(assert (=> d!1968870 (= c!1136910 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815232 () Bool)

(assert (=> d!1968870 (= (matchZipper!2204 lt!2352401 (t!378434 s!2326)) e!3815232)))

(declare-fun b!6273058 () Bool)

(assert (=> b!6273058 (= e!3815232 (nullableZipper!1962 lt!2352401))))

(declare-fun b!6273059 () Bool)

(assert (=> b!6273059 (= e!3815232 (matchZipper!2204 (derivationStepZipper!2158 lt!2352401 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968870 c!1136910) b!6273058))

(assert (= (and d!1968870 (not c!1136910)) b!6273059))

(assert (=> d!1968870 m!7094628))

(declare-fun m!7094748 () Bool)

(assert (=> b!6273058 m!7094748))

(assert (=> b!6273059 m!7094632))

(assert (=> b!6273059 m!7094632))

(declare-fun m!7094750 () Bool)

(assert (=> b!6273059 m!7094750))

(assert (=> b!6273059 m!7094636))

(assert (=> b!6273059 m!7094750))

(assert (=> b!6273059 m!7094636))

(declare-fun m!7094752 () Bool)

(assert (=> b!6273059 m!7094752))

(assert (=> b!6272764 d!1968870))

(declare-fun e!3815233 () Bool)

(declare-fun d!1968872 () Bool)

(assert (=> d!1968872 (= (matchZipper!2204 (set.union lt!2352401 lt!2352393) (t!378434 s!2326)) e!3815233)))

(declare-fun res!2587515 () Bool)

(assert (=> d!1968872 (=> res!2587515 e!3815233)))

(assert (=> d!1968872 (= res!2587515 (matchZipper!2204 lt!2352401 (t!378434 s!2326)))))

(declare-fun lt!2352554 () Unit!158099)

(assert (=> d!1968872 (= lt!2352554 (choose!46544 lt!2352401 lt!2352393 (t!378434 s!2326)))))

(assert (=> d!1968872 (= (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352401 lt!2352393 (t!378434 s!2326)) lt!2352554)))

(declare-fun b!6273060 () Bool)

(assert (=> b!6273060 (= e!3815233 (matchZipper!2204 lt!2352393 (t!378434 s!2326)))))

(assert (= (and d!1968872 (not res!2587515)) b!6273060))

(declare-fun m!7094754 () Bool)

(assert (=> d!1968872 m!7094754))

(assert (=> d!1968872 m!7094362))

(declare-fun m!7094756 () Bool)

(assert (=> d!1968872 m!7094756))

(assert (=> b!6273060 m!7094394))

(assert (=> b!6272764 d!1968872))

(declare-fun d!1968874 () Bool)

(declare-fun c!1136911 () Bool)

(assert (=> d!1968874 (= c!1136911 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815234 () Bool)

(assert (=> d!1968874 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (t!378434 s!2326)) e!3815234)))

(declare-fun b!6273061 () Bool)

(assert (=> b!6273061 (= e!3815234 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326))))))

(declare-fun b!6273062 () Bool)

(assert (=> b!6273062 (= e!3815234 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968874 c!1136911) b!6273061))

(assert (= (and d!1968874 (not c!1136911)) b!6273062))

(assert (=> d!1968874 m!7094628))

(assert (=> b!6273061 m!7094372))

(declare-fun m!7094758 () Bool)

(assert (=> b!6273061 m!7094758))

(assert (=> b!6273062 m!7094632))

(assert (=> b!6273062 m!7094372))

(assert (=> b!6273062 m!7094632))

(declare-fun m!7094760 () Bool)

(assert (=> b!6273062 m!7094760))

(assert (=> b!6273062 m!7094636))

(assert (=> b!6273062 m!7094760))

(assert (=> b!6273062 m!7094636))

(declare-fun m!7094762 () Bool)

(assert (=> b!6273062 m!7094762))

(assert (=> b!6272783 d!1968874))

(declare-fun bs!1566645 () Bool)

(declare-fun d!1968876 () Bool)

(assert (= bs!1566645 (and d!1968876 b!6272771)))

(declare-fun lambda!343701 () Int)

(assert (=> bs!1566645 (= lambda!343701 lambda!343676)))

(declare-fun bs!1566646 () Bool)

(assert (= bs!1566646 (and d!1968876 d!1968862)))

(assert (=> bs!1566646 (= lambda!343701 lambda!343700)))

(assert (=> d!1968876 true))

(assert (=> d!1968876 (= (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (flatMap!1697 lt!2352408 lambda!343701))))

(declare-fun bs!1566647 () Bool)

(assert (= bs!1566647 d!1968876))

(declare-fun m!7094764 () Bool)

(assert (=> bs!1566647 m!7094764))

(assert (=> b!6272783 d!1968876))

(declare-fun bs!1566648 () Bool)

(declare-fun b!6273100 () Bool)

(assert (= bs!1566648 (and b!6273100 b!6272766)))

(declare-fun lambda!343706 () Int)

(assert (=> bs!1566648 (not (= lambda!343706 lambda!343674))))

(assert (=> bs!1566648 (not (= lambda!343706 lambda!343675))))

(assert (=> b!6273100 true))

(assert (=> b!6273100 true))

(declare-fun bs!1566649 () Bool)

(declare-fun b!6273102 () Bool)

(assert (= bs!1566649 (and b!6273102 b!6272766)))

(declare-fun lambda!343707 () Int)

(assert (=> bs!1566649 (not (= lambda!343707 lambda!343674))))

(assert (=> bs!1566649 (= lambda!343707 lambda!343675)))

(declare-fun bs!1566650 () Bool)

(assert (= bs!1566650 (and b!6273102 b!6273100)))

(assert (=> bs!1566650 (not (= lambda!343707 lambda!343706))))

(assert (=> b!6273102 true))

(assert (=> b!6273102 true))

(declare-fun b!6273095 () Bool)

(declare-fun res!2587532 () Bool)

(declare-fun e!3815254 () Bool)

(assert (=> b!6273095 (=> res!2587532 e!3815254)))

(declare-fun call!530590 () Bool)

(assert (=> b!6273095 (= res!2587532 call!530590)))

(declare-fun e!3815259 () Bool)

(assert (=> b!6273095 (= e!3815259 e!3815254)))

(declare-fun b!6273096 () Bool)

(declare-fun c!1136922 () Bool)

(assert (=> b!6273096 (= c!1136922 (is-ElementMatch!16192 r!7292))))

(declare-fun e!3815257 () Bool)

(declare-fun e!3815253 () Bool)

(assert (=> b!6273096 (= e!3815257 e!3815253)))

(declare-fun bm!530585 () Bool)

(assert (=> bm!530585 (= call!530590 (isEmpty!36792 s!2326))))

(declare-fun b!6273097 () Bool)

(declare-fun c!1136923 () Bool)

(assert (=> b!6273097 (= c!1136923 (is-Union!16192 r!7292))))

(declare-fun e!3815255 () Bool)

(assert (=> b!6273097 (= e!3815253 e!3815255)))

(declare-fun d!1968878 () Bool)

(declare-fun c!1136920 () Bool)

(assert (=> d!1968878 (= c!1136920 (is-EmptyExpr!16192 r!7292))))

(declare-fun e!3815256 () Bool)

(assert (=> d!1968878 (= (matchRSpec!3293 r!7292 s!2326) e!3815256)))

(declare-fun c!1136921 () Bool)

(declare-fun bm!530586 () Bool)

(declare-fun call!530591 () Bool)

(assert (=> bm!530586 (= call!530591 (Exists!3262 (ite c!1136921 lambda!343706 lambda!343707)))))

(declare-fun b!6273098 () Bool)

(assert (=> b!6273098 (= e!3815256 call!530590)))

(declare-fun b!6273099 () Bool)

(declare-fun e!3815258 () Bool)

(assert (=> b!6273099 (= e!3815258 (matchRSpec!3293 (regTwo!32897 r!7292) s!2326))))

(assert (=> b!6273100 (= e!3815254 call!530591)))

(declare-fun b!6273101 () Bool)

(assert (=> b!6273101 (= e!3815256 e!3815257)))

(declare-fun res!2587534 () Bool)

(assert (=> b!6273101 (= res!2587534 (not (is-EmptyLang!16192 r!7292)))))

(assert (=> b!6273101 (=> (not res!2587534) (not e!3815257))))

(assert (=> b!6273102 (= e!3815259 call!530591)))

(declare-fun b!6273103 () Bool)

(assert (=> b!6273103 (= e!3815255 e!3815258)))

(declare-fun res!2587533 () Bool)

(assert (=> b!6273103 (= res!2587533 (matchRSpec!3293 (regOne!32897 r!7292) s!2326))))

(assert (=> b!6273103 (=> res!2587533 e!3815258)))

(declare-fun b!6273104 () Bool)

(assert (=> b!6273104 (= e!3815255 e!3815259)))

(assert (=> b!6273104 (= c!1136921 (is-Star!16192 r!7292))))

(declare-fun b!6273105 () Bool)

(assert (=> b!6273105 (= e!3815253 (= s!2326 (Cons!64752 (c!1136845 r!7292) Nil!64752)))))

(assert (= (and d!1968878 c!1136920) b!6273098))

(assert (= (and d!1968878 (not c!1136920)) b!6273101))

(assert (= (and b!6273101 res!2587534) b!6273096))

(assert (= (and b!6273096 c!1136922) b!6273105))

(assert (= (and b!6273096 (not c!1136922)) b!6273097))

(assert (= (and b!6273097 c!1136923) b!6273103))

(assert (= (and b!6273097 (not c!1136923)) b!6273104))

(assert (= (and b!6273103 (not res!2587533)) b!6273099))

(assert (= (and b!6273104 c!1136921) b!6273095))

(assert (= (and b!6273104 (not c!1136921)) b!6273102))

(assert (= (and b!6273095 (not res!2587532)) b!6273100))

(assert (= (or b!6273100 b!6273102) bm!530586))

(assert (= (or b!6273098 b!6273095) bm!530585))

(declare-fun m!7094766 () Bool)

(assert (=> bm!530585 m!7094766))

(declare-fun m!7094768 () Bool)

(assert (=> bm!530586 m!7094768))

(declare-fun m!7094770 () Bool)

(assert (=> b!6273099 m!7094770))

(declare-fun m!7094772 () Bool)

(assert (=> b!6273103 m!7094772))

(assert (=> b!6272784 d!1968878))

(declare-fun b!6273134 () Bool)

(declare-fun e!3815276 () Bool)

(assert (=> b!6273134 (= e!3815276 (nullable!6185 r!7292))))

(declare-fun bm!530589 () Bool)

(declare-fun call!530594 () Bool)

(assert (=> bm!530589 (= call!530594 (isEmpty!36792 s!2326))))

(declare-fun b!6273135 () Bool)

(declare-fun e!3815277 () Bool)

(declare-fun e!3815279 () Bool)

(assert (=> b!6273135 (= e!3815277 e!3815279)))

(declare-fun res!2587553 () Bool)

(assert (=> b!6273135 (=> res!2587553 e!3815279)))

(assert (=> b!6273135 (= res!2587553 call!530594)))

(declare-fun d!1968880 () Bool)

(declare-fun e!3815274 () Bool)

(assert (=> d!1968880 e!3815274))

(declare-fun c!1136932 () Bool)

(assert (=> d!1968880 (= c!1136932 (is-EmptyExpr!16192 r!7292))))

(declare-fun lt!2352557 () Bool)

(assert (=> d!1968880 (= lt!2352557 e!3815276)))

(declare-fun c!1136930 () Bool)

(assert (=> d!1968880 (= c!1136930 (isEmpty!36792 s!2326))))

(assert (=> d!1968880 (validRegex!7928 r!7292)))

(assert (=> d!1968880 (= (matchR!8375 r!7292 s!2326) lt!2352557)))

(declare-fun b!6273136 () Bool)

(declare-fun e!3815278 () Bool)

(assert (=> b!6273136 (= e!3815278 (not lt!2352557))))

(declare-fun b!6273137 () Bool)

(declare-fun derivativeStep!4901 (Regex!16192 C!32654) Regex!16192)

(assert (=> b!6273137 (= e!3815276 (matchR!8375 (derivativeStep!4901 r!7292 (head!12884 s!2326)) (tail!11969 s!2326)))))

(declare-fun b!6273138 () Bool)

(declare-fun res!2587556 () Bool)

(assert (=> b!6273138 (=> res!2587556 e!3815279)))

(assert (=> b!6273138 (= res!2587556 (not (isEmpty!36792 (tail!11969 s!2326))))))

(declare-fun b!6273139 () Bool)

(assert (=> b!6273139 (= e!3815279 (not (= (head!12884 s!2326) (c!1136845 r!7292))))))

(declare-fun b!6273140 () Bool)

(declare-fun e!3815280 () Bool)

(assert (=> b!6273140 (= e!3815280 e!3815277)))

(declare-fun res!2587552 () Bool)

(assert (=> b!6273140 (=> (not res!2587552) (not e!3815277))))

(assert (=> b!6273140 (= res!2587552 (not lt!2352557))))

(declare-fun b!6273141 () Bool)

(declare-fun e!3815275 () Bool)

(assert (=> b!6273141 (= e!3815275 (= (head!12884 s!2326) (c!1136845 r!7292)))))

(declare-fun b!6273142 () Bool)

(declare-fun res!2587557 () Bool)

(assert (=> b!6273142 (=> (not res!2587557) (not e!3815275))))

(assert (=> b!6273142 (= res!2587557 (not call!530594))))

(declare-fun b!6273143 () Bool)

(declare-fun res!2587558 () Bool)

(assert (=> b!6273143 (=> (not res!2587558) (not e!3815275))))

(assert (=> b!6273143 (= res!2587558 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6273144 () Bool)

(declare-fun res!2587554 () Bool)

(assert (=> b!6273144 (=> res!2587554 e!3815280)))

(assert (=> b!6273144 (= res!2587554 e!3815275)))

(declare-fun res!2587555 () Bool)

(assert (=> b!6273144 (=> (not res!2587555) (not e!3815275))))

(assert (=> b!6273144 (= res!2587555 lt!2352557)))

(declare-fun b!6273145 () Bool)

(assert (=> b!6273145 (= e!3815274 e!3815278)))

(declare-fun c!1136931 () Bool)

(assert (=> b!6273145 (= c!1136931 (is-EmptyLang!16192 r!7292))))

(declare-fun b!6273146 () Bool)

(declare-fun res!2587551 () Bool)

(assert (=> b!6273146 (=> res!2587551 e!3815280)))

(assert (=> b!6273146 (= res!2587551 (not (is-ElementMatch!16192 r!7292)))))

(assert (=> b!6273146 (= e!3815278 e!3815280)))

(declare-fun b!6273147 () Bool)

(assert (=> b!6273147 (= e!3815274 (= lt!2352557 call!530594))))

(assert (= (and d!1968880 c!1136930) b!6273134))

(assert (= (and d!1968880 (not c!1136930)) b!6273137))

(assert (= (and d!1968880 c!1136932) b!6273147))

(assert (= (and d!1968880 (not c!1136932)) b!6273145))

(assert (= (and b!6273145 c!1136931) b!6273136))

(assert (= (and b!6273145 (not c!1136931)) b!6273146))

(assert (= (and b!6273146 (not res!2587551)) b!6273144))

(assert (= (and b!6273144 res!2587555) b!6273142))

(assert (= (and b!6273142 res!2587557) b!6273143))

(assert (= (and b!6273143 res!2587558) b!6273141))

(assert (= (and b!6273144 (not res!2587554)) b!6273140))

(assert (= (and b!6273140 res!2587552) b!6273135))

(assert (= (and b!6273135 (not res!2587553)) b!6273138))

(assert (= (and b!6273138 (not res!2587556)) b!6273139))

(assert (= (or b!6273147 b!6273135 b!6273142) bm!530589))

(declare-fun m!7094774 () Bool)

(assert (=> b!6273138 m!7094774))

(assert (=> b!6273138 m!7094774))

(declare-fun m!7094776 () Bool)

(assert (=> b!6273138 m!7094776))

(assert (=> b!6273143 m!7094774))

(assert (=> b!6273143 m!7094774))

(assert (=> b!6273143 m!7094776))

(declare-fun m!7094778 () Bool)

(assert (=> b!6273134 m!7094778))

(assert (=> d!1968880 m!7094766))

(assert (=> d!1968880 m!7094356))

(declare-fun m!7094780 () Bool)

(assert (=> b!6273137 m!7094780))

(assert (=> b!6273137 m!7094780))

(declare-fun m!7094782 () Bool)

(assert (=> b!6273137 m!7094782))

(assert (=> b!6273137 m!7094774))

(assert (=> b!6273137 m!7094782))

(assert (=> b!6273137 m!7094774))

(declare-fun m!7094784 () Bool)

(assert (=> b!6273137 m!7094784))

(assert (=> bm!530589 m!7094766))

(assert (=> b!6273141 m!7094780))

(assert (=> b!6273139 m!7094780))

(assert (=> b!6272784 d!1968880))

(declare-fun d!1968882 () Bool)

(assert (=> d!1968882 (= (matchR!8375 r!7292 s!2326) (matchRSpec!3293 r!7292 s!2326))))

(declare-fun lt!2352560 () Unit!158099)

(declare-fun choose!46547 (Regex!16192 List!64876) Unit!158099)

(assert (=> d!1968882 (= lt!2352560 (choose!46547 r!7292 s!2326))))

(assert (=> d!1968882 (validRegex!7928 r!7292)))

(assert (=> d!1968882 (= (mainMatchTheorem!3293 r!7292 s!2326) lt!2352560)))

(declare-fun bs!1566651 () Bool)

(assert (= bs!1566651 d!1968882))

(assert (=> bs!1566651 m!7094368))

(assert (=> bs!1566651 m!7094366))

(declare-fun m!7094786 () Bool)

(assert (=> bs!1566651 m!7094786))

(assert (=> bs!1566651 m!7094356))

(assert (=> b!6272784 d!1968882))

(declare-fun b!6273166 () Bool)

(declare-fun e!3815295 () Bool)

(assert (=> b!6273166 (= e!3815295 (matchR!8375 (regTwo!32896 r!7292) s!2326))))

(declare-fun b!6273167 () Bool)

(declare-fun e!3815293 () Option!16083)

(assert (=> b!6273167 (= e!3815293 (Some!16082 (tuple2!66343 Nil!64752 s!2326)))))

(declare-fun b!6273168 () Bool)

(declare-fun lt!2352567 () Unit!158099)

(declare-fun lt!2352568 () Unit!158099)

(assert (=> b!6273168 (= lt!2352567 lt!2352568)))

(declare-fun ++!14266 (List!64876 List!64876) List!64876)

(assert (=> b!6273168 (= (++!14266 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2361 (List!64876 C!32654 List!64876 List!64876) Unit!158099)

(assert (=> b!6273168 (= lt!2352568 (lemmaMoveElementToOtherListKeepsConcatEq!2361 Nil!64752 (h!71200 s!2326) (t!378434 s!2326) s!2326))))

(declare-fun e!3815291 () Option!16083)

(assert (=> b!6273168 (= e!3815291 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326) s!2326))))

(declare-fun b!6273169 () Bool)

(declare-fun res!2587572 () Bool)

(declare-fun e!3815294 () Bool)

(assert (=> b!6273169 (=> (not res!2587572) (not e!3815294))))

(declare-fun lt!2352569 () Option!16083)

(declare-fun get!22378 (Option!16083) tuple2!66342)

(assert (=> b!6273169 (= res!2587572 (matchR!8375 (regOne!32896 r!7292) (_1!36474 (get!22378 lt!2352569))))))

(declare-fun b!6273170 () Bool)

(assert (=> b!6273170 (= e!3815291 None!16082)))

(declare-fun b!6273171 () Bool)

(declare-fun res!2587573 () Bool)

(assert (=> b!6273171 (=> (not res!2587573) (not e!3815294))))

(assert (=> b!6273171 (= res!2587573 (matchR!8375 (regTwo!32896 r!7292) (_2!36474 (get!22378 lt!2352569))))))

(declare-fun b!6273173 () Bool)

(declare-fun e!3815292 () Bool)

(assert (=> b!6273173 (= e!3815292 (not (isDefined!12786 lt!2352569)))))

(declare-fun b!6273174 () Bool)

(assert (=> b!6273174 (= e!3815294 (= (++!14266 (_1!36474 (get!22378 lt!2352569)) (_2!36474 (get!22378 lt!2352569))) s!2326))))

(declare-fun d!1968884 () Bool)

(assert (=> d!1968884 e!3815292))

(declare-fun res!2587569 () Bool)

(assert (=> d!1968884 (=> res!2587569 e!3815292)))

(assert (=> d!1968884 (= res!2587569 e!3815294)))

(declare-fun res!2587571 () Bool)

(assert (=> d!1968884 (=> (not res!2587571) (not e!3815294))))

(assert (=> d!1968884 (= res!2587571 (isDefined!12786 lt!2352569))))

(assert (=> d!1968884 (= lt!2352569 e!3815293)))

(declare-fun c!1136937 () Bool)

(assert (=> d!1968884 (= c!1136937 e!3815295)))

(declare-fun res!2587570 () Bool)

(assert (=> d!1968884 (=> (not res!2587570) (not e!3815295))))

(assert (=> d!1968884 (= res!2587570 (matchR!8375 (regOne!32896 r!7292) Nil!64752))))

(assert (=> d!1968884 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1968884 (= (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326) lt!2352569)))

(declare-fun b!6273172 () Bool)

(assert (=> b!6273172 (= e!3815293 e!3815291)))

(declare-fun c!1136938 () Bool)

(assert (=> b!6273172 (= c!1136938 (is-Nil!64752 s!2326))))

(assert (= (and d!1968884 res!2587570) b!6273166))

(assert (= (and d!1968884 c!1136937) b!6273167))

(assert (= (and d!1968884 (not c!1136937)) b!6273172))

(assert (= (and b!6273172 c!1136938) b!6273170))

(assert (= (and b!6273172 (not c!1136938)) b!6273168))

(assert (= (and d!1968884 res!2587571) b!6273169))

(assert (= (and b!6273169 res!2587572) b!6273171))

(assert (= (and b!6273171 res!2587573) b!6273174))

(assert (= (and d!1968884 (not res!2587569)) b!6273173))

(declare-fun m!7094788 () Bool)

(assert (=> b!6273171 m!7094788))

(declare-fun m!7094790 () Bool)

(assert (=> b!6273171 m!7094790))

(assert (=> b!6273169 m!7094788))

(declare-fun m!7094792 () Bool)

(assert (=> b!6273169 m!7094792))

(declare-fun m!7094794 () Bool)

(assert (=> b!6273166 m!7094794))

(assert (=> b!6273174 m!7094788))

(declare-fun m!7094796 () Bool)

(assert (=> b!6273174 m!7094796))

(declare-fun m!7094798 () Bool)

(assert (=> d!1968884 m!7094798))

(declare-fun m!7094800 () Bool)

(assert (=> d!1968884 m!7094800))

(declare-fun m!7094802 () Bool)

(assert (=> d!1968884 m!7094802))

(declare-fun m!7094804 () Bool)

(assert (=> b!6273168 m!7094804))

(assert (=> b!6273168 m!7094804))

(declare-fun m!7094806 () Bool)

(assert (=> b!6273168 m!7094806))

(declare-fun m!7094808 () Bool)

(assert (=> b!6273168 m!7094808))

(assert (=> b!6273168 m!7094804))

(declare-fun m!7094810 () Bool)

(assert (=> b!6273168 m!7094810))

(assert (=> b!6273173 m!7094798))

(assert (=> b!6272766 d!1968884))

(declare-fun d!1968886 () Bool)

(declare-fun choose!46548 (Int) Bool)

(assert (=> d!1968886 (= (Exists!3262 lambda!343675) (choose!46548 lambda!343675))))

(declare-fun bs!1566652 () Bool)

(assert (= bs!1566652 d!1968886))

(declare-fun m!7094812 () Bool)

(assert (=> bs!1566652 m!7094812))

(assert (=> b!6272766 d!1968886))

(declare-fun d!1968888 () Bool)

(assert (=> d!1968888 (= (Exists!3262 lambda!343674) (choose!46548 lambda!343674))))

(declare-fun bs!1566653 () Bool)

(assert (= bs!1566653 d!1968888))

(declare-fun m!7094814 () Bool)

(assert (=> bs!1566653 m!7094814))

(assert (=> b!6272766 d!1968888))

(declare-fun bs!1566654 () Bool)

(declare-fun d!1968890 () Bool)

(assert (= bs!1566654 (and d!1968890 b!6272766)))

(declare-fun lambda!343710 () Int)

(assert (=> bs!1566654 (= lambda!343710 lambda!343674)))

(assert (=> bs!1566654 (not (= lambda!343710 lambda!343675))))

(declare-fun bs!1566655 () Bool)

(assert (= bs!1566655 (and d!1968890 b!6273100)))

(assert (=> bs!1566655 (not (= lambda!343710 lambda!343706))))

(declare-fun bs!1566656 () Bool)

(assert (= bs!1566656 (and d!1968890 b!6273102)))

(assert (=> bs!1566656 (not (= lambda!343710 lambda!343707))))

(assert (=> d!1968890 true))

(assert (=> d!1968890 true))

(assert (=> d!1968890 true))

(assert (=> d!1968890 (= (isDefined!12786 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326)) (Exists!3262 lambda!343710))))

(declare-fun lt!2352572 () Unit!158099)

(declare-fun choose!46549 (Regex!16192 Regex!16192 List!64876) Unit!158099)

(assert (=> d!1968890 (= lt!2352572 (choose!46549 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326))))

(assert (=> d!1968890 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1968890 (= (lemmaFindConcatSeparationEquivalentToExists!2261 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326) lt!2352572)))

(declare-fun bs!1566657 () Bool)

(assert (= bs!1566657 d!1968890))

(declare-fun m!7094816 () Bool)

(assert (=> bs!1566657 m!7094816))

(declare-fun m!7094818 () Bool)

(assert (=> bs!1566657 m!7094818))

(assert (=> bs!1566657 m!7094442))

(assert (=> bs!1566657 m!7094444))

(assert (=> bs!1566657 m!7094802))

(assert (=> bs!1566657 m!7094442))

(assert (=> b!6272766 d!1968890))

(declare-fun bs!1566658 () Bool)

(declare-fun d!1968892 () Bool)

(assert (= bs!1566658 (and d!1968892 b!6273102)))

(declare-fun lambda!343715 () Int)

(assert (=> bs!1566658 (not (= lambda!343715 lambda!343707))))

(declare-fun bs!1566659 () Bool)

(assert (= bs!1566659 (and d!1968892 d!1968890)))

(assert (=> bs!1566659 (= lambda!343715 lambda!343710)))

(declare-fun bs!1566660 () Bool)

(assert (= bs!1566660 (and d!1968892 b!6272766)))

(assert (=> bs!1566660 (not (= lambda!343715 lambda!343675))))

(declare-fun bs!1566661 () Bool)

(assert (= bs!1566661 (and d!1968892 b!6273100)))

(assert (=> bs!1566661 (not (= lambda!343715 lambda!343706))))

(assert (=> bs!1566660 (= lambda!343715 lambda!343674)))

(assert (=> d!1968892 true))

(assert (=> d!1968892 true))

(assert (=> d!1968892 true))

(declare-fun lambda!343716 () Int)

(assert (=> bs!1566658 (= lambda!343716 lambda!343707)))

(assert (=> bs!1566659 (not (= lambda!343716 lambda!343710))))

(assert (=> bs!1566660 (= lambda!343716 lambda!343675)))

(assert (=> bs!1566661 (not (= lambda!343716 lambda!343706))))

(declare-fun bs!1566662 () Bool)

(assert (= bs!1566662 d!1968892))

(assert (=> bs!1566662 (not (= lambda!343716 lambda!343715))))

(assert (=> bs!1566660 (not (= lambda!343716 lambda!343674))))

(assert (=> d!1968892 true))

(assert (=> d!1968892 true))

(assert (=> d!1968892 true))

(assert (=> d!1968892 (= (Exists!3262 lambda!343715) (Exists!3262 lambda!343716))))

(declare-fun lt!2352575 () Unit!158099)

(declare-fun choose!46550 (Regex!16192 Regex!16192 List!64876) Unit!158099)

(assert (=> d!1968892 (= lt!2352575 (choose!46550 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326))))

(assert (=> d!1968892 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1968892 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1799 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326) lt!2352575)))

(declare-fun m!7094820 () Bool)

(assert (=> bs!1566662 m!7094820))

(declare-fun m!7094822 () Bool)

(assert (=> bs!1566662 m!7094822))

(declare-fun m!7094824 () Bool)

(assert (=> bs!1566662 m!7094824))

(assert (=> bs!1566662 m!7094802))

(assert (=> b!6272766 d!1968892))

(declare-fun d!1968894 () Bool)

(declare-fun isEmpty!36793 (Option!16083) Bool)

(assert (=> d!1968894 (= (isDefined!12786 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326)) (not (isEmpty!36793 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326))))))

(declare-fun bs!1566663 () Bool)

(assert (= bs!1566663 d!1968894))

(assert (=> bs!1566663 m!7094442))

(declare-fun m!7094826 () Bool)

(assert (=> bs!1566663 m!7094826))

(assert (=> b!6272766 d!1968894))

(assert (=> b!6272785 d!1968822))

(declare-fun d!1968896 () Bool)

(declare-fun c!1136939 () Bool)

(assert (=> d!1968896 (= c!1136939 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815302 () Bool)

(assert (=> d!1968896 (= (matchZipper!2204 lt!2352421 (t!378434 s!2326)) e!3815302)))

(declare-fun b!6273187 () Bool)

(assert (=> b!6273187 (= e!3815302 (nullableZipper!1962 lt!2352421))))

(declare-fun b!6273188 () Bool)

(assert (=> b!6273188 (= e!3815302 (matchZipper!2204 (derivationStepZipper!2158 lt!2352421 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968896 c!1136939) b!6273187))

(assert (= (and d!1968896 (not c!1136939)) b!6273188))

(assert (=> d!1968896 m!7094628))

(declare-fun m!7094828 () Bool)

(assert (=> b!6273187 m!7094828))

(assert (=> b!6273188 m!7094632))

(assert (=> b!6273188 m!7094632))

(declare-fun m!7094830 () Bool)

(assert (=> b!6273188 m!7094830))

(assert (=> b!6273188 m!7094636))

(assert (=> b!6273188 m!7094830))

(assert (=> b!6273188 m!7094636))

(declare-fun m!7094832 () Bool)

(assert (=> b!6273188 m!7094832))

(assert (=> b!6272786 d!1968896))

(declare-fun b!6273189 () Bool)

(declare-fun e!3815306 () (Set Context!11152))

(declare-fun e!3815304 () (Set Context!11152))

(assert (=> b!6273189 (= e!3815306 e!3815304)))

(declare-fun c!1136941 () Bool)

(assert (=> b!6273189 (= c!1136941 (is-Concat!25037 (regTwo!32896 (regOne!32896 r!7292))))))

(declare-fun bm!530590 () Bool)

(declare-fun call!530599 () (Set Context!11152))

(declare-fun call!530595 () (Set Context!11152))

(assert (=> bm!530590 (= call!530599 call!530595)))

(declare-fun b!6273190 () Bool)

(declare-fun e!3815305 () Bool)

(assert (=> b!6273190 (= e!3815305 (nullable!6185 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))))

(declare-fun b!6273191 () Bool)

(declare-fun c!1136944 () Bool)

(assert (=> b!6273191 (= c!1136944 (is-Star!16192 (regTwo!32896 (regOne!32896 r!7292))))))

(declare-fun e!3815308 () (Set Context!11152))

(assert (=> b!6273191 (= e!3815304 e!3815308)))

(declare-fun b!6273192 () Bool)

(assert (=> b!6273192 (= e!3815308 (as set.empty (Set Context!11152)))))

(declare-fun d!1968898 () Bool)

(declare-fun c!1136940 () Bool)

(assert (=> d!1968898 (= c!1136940 (and (is-ElementMatch!16192 (regTwo!32896 (regOne!32896 r!7292))) (= (c!1136845 (regTwo!32896 (regOne!32896 r!7292))) (h!71200 s!2326))))))

(declare-fun e!3815303 () (Set Context!11152))

(assert (=> d!1968898 (= (derivationStepZipperDown!1440 (regTwo!32896 (regOne!32896 r!7292)) lt!2352413 (h!71200 s!2326)) e!3815303)))

(declare-fun bm!530591 () Bool)

(declare-fun call!530596 () List!64875)

(declare-fun c!1136943 () Bool)

(declare-fun call!530597 () (Set Context!11152))

(assert (=> bm!530591 (= call!530597 (derivationStepZipperDown!1440 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))) (ite c!1136943 lt!2352413 (Context!11153 call!530596)) (h!71200 s!2326)))))

(declare-fun b!6273193 () Bool)

(declare-fun c!1136942 () Bool)

(assert (=> b!6273193 (= c!1136942 e!3815305)))

(declare-fun res!2587586 () Bool)

(assert (=> b!6273193 (=> (not res!2587586) (not e!3815305))))

(assert (=> b!6273193 (= res!2587586 (is-Concat!25037 (regTwo!32896 (regOne!32896 r!7292))))))

(declare-fun e!3815307 () (Set Context!11152))

(assert (=> b!6273193 (= e!3815307 e!3815306)))

(declare-fun b!6273194 () Bool)

(declare-fun call!530600 () (Set Context!11152))

(assert (=> b!6273194 (= e!3815307 (set.union call!530600 call!530597))))

(declare-fun b!6273195 () Bool)

(assert (=> b!6273195 (= e!3815303 e!3815307)))

(assert (=> b!6273195 (= c!1136943 (is-Union!16192 (regTwo!32896 (regOne!32896 r!7292))))))

(declare-fun bm!530592 () Bool)

(assert (=> bm!530592 (= call!530595 call!530600)))

(declare-fun bm!530593 () Bool)

(declare-fun call!530598 () List!64875)

(assert (=> bm!530593 (= call!530600 (derivationStepZipperDown!1440 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))) (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598)) (h!71200 s!2326)))))

(declare-fun b!6273196 () Bool)

(assert (=> b!6273196 (= e!3815308 call!530599)))

(declare-fun bm!530594 () Bool)

(assert (=> bm!530594 (= call!530596 ($colon$colon!2057 (exprs!6076 lt!2352413) (ite (or c!1136942 c!1136941) (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 r!7292)))))))

(declare-fun bm!530595 () Bool)

(assert (=> bm!530595 (= call!530598 call!530596)))

(declare-fun b!6273197 () Bool)

(assert (=> b!6273197 (= e!3815303 (set.insert lt!2352413 (as set.empty (Set Context!11152))))))

(declare-fun b!6273198 () Bool)

(assert (=> b!6273198 (= e!3815306 (set.union call!530597 call!530595))))

(declare-fun b!6273199 () Bool)

(assert (=> b!6273199 (= e!3815304 call!530599)))

(assert (= (and d!1968898 c!1136940) b!6273197))

(assert (= (and d!1968898 (not c!1136940)) b!6273195))

(assert (= (and b!6273195 c!1136943) b!6273194))

(assert (= (and b!6273195 (not c!1136943)) b!6273193))

(assert (= (and b!6273193 res!2587586) b!6273190))

(assert (= (and b!6273193 c!1136942) b!6273198))

(assert (= (and b!6273193 (not c!1136942)) b!6273189))

(assert (= (and b!6273189 c!1136941) b!6273199))

(assert (= (and b!6273189 (not c!1136941)) b!6273191))

(assert (= (and b!6273191 c!1136944) b!6273196))

(assert (= (and b!6273191 (not c!1136944)) b!6273192))

(assert (= (or b!6273199 b!6273196) bm!530595))

(assert (= (or b!6273199 b!6273196) bm!530590))

(assert (= (or b!6273198 bm!530595) bm!530594))

(assert (= (or b!6273198 bm!530590) bm!530592))

(assert (= (or b!6273194 b!6273198) bm!530591))

(assert (= (or b!6273194 bm!530592) bm!530593))

(declare-fun m!7094834 () Bool)

(assert (=> bm!530593 m!7094834))

(declare-fun m!7094836 () Bool)

(assert (=> bm!530591 m!7094836))

(declare-fun m!7094838 () Bool)

(assert (=> b!6273190 m!7094838))

(assert (=> b!6273197 m!7094700))

(declare-fun m!7094840 () Bool)

(assert (=> bm!530594 m!7094840))

(assert (=> b!6272777 d!1968898))

(declare-fun b!6273200 () Bool)

(declare-fun e!3815312 () (Set Context!11152))

(declare-fun e!3815310 () (Set Context!11152))

(assert (=> b!6273200 (= e!3815312 e!3815310)))

(declare-fun c!1136946 () Bool)

(assert (=> b!6273200 (= c!1136946 (is-Concat!25037 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun bm!530596 () Bool)

(declare-fun call!530605 () (Set Context!11152))

(declare-fun call!530601 () (Set Context!11152))

(assert (=> bm!530596 (= call!530605 call!530601)))

(declare-fun b!6273201 () Bool)

(declare-fun e!3815311 () Bool)

(assert (=> b!6273201 (= e!3815311 (nullable!6185 (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))

(declare-fun b!6273202 () Bool)

(declare-fun c!1136949 () Bool)

(assert (=> b!6273202 (= c!1136949 (is-Star!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun e!3815314 () (Set Context!11152))

(assert (=> b!6273202 (= e!3815310 e!3815314)))

(declare-fun b!6273203 () Bool)

(assert (=> b!6273203 (= e!3815314 (as set.empty (Set Context!11152)))))

(declare-fun d!1968900 () Bool)

(declare-fun c!1136945 () Bool)

(assert (=> d!1968900 (= c!1136945 (and (is-ElementMatch!16192 (regOne!32896 (regOne!32896 r!7292))) (= (c!1136845 (regOne!32896 (regOne!32896 r!7292))) (h!71200 s!2326))))))

(declare-fun e!3815309 () (Set Context!11152))

(assert (=> d!1968900 (= (derivationStepZipperDown!1440 (regOne!32896 (regOne!32896 r!7292)) lt!2352397 (h!71200 s!2326)) e!3815309)))

(declare-fun c!1136948 () Bool)

(declare-fun call!530602 () List!64875)

(declare-fun bm!530597 () Bool)

(declare-fun call!530603 () (Set Context!11152))

(assert (=> bm!530597 (= call!530603 (derivationStepZipperDown!1440 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))) (ite c!1136948 lt!2352397 (Context!11153 call!530602)) (h!71200 s!2326)))))

(declare-fun b!6273204 () Bool)

(declare-fun c!1136947 () Bool)

(assert (=> b!6273204 (= c!1136947 e!3815311)))

(declare-fun res!2587587 () Bool)

(assert (=> b!6273204 (=> (not res!2587587) (not e!3815311))))

(assert (=> b!6273204 (= res!2587587 (is-Concat!25037 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun e!3815313 () (Set Context!11152))

(assert (=> b!6273204 (= e!3815313 e!3815312)))

(declare-fun b!6273205 () Bool)

(declare-fun call!530606 () (Set Context!11152))

(assert (=> b!6273205 (= e!3815313 (set.union call!530606 call!530603))))

(declare-fun b!6273206 () Bool)

(assert (=> b!6273206 (= e!3815309 e!3815313)))

(assert (=> b!6273206 (= c!1136948 (is-Union!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun bm!530598 () Bool)

(assert (=> bm!530598 (= call!530601 call!530606)))

(declare-fun bm!530599 () Bool)

(declare-fun call!530604 () List!64875)

(assert (=> bm!530599 (= call!530606 (derivationStepZipperDown!1440 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))) (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604)) (h!71200 s!2326)))))

(declare-fun b!6273207 () Bool)

(assert (=> b!6273207 (= e!3815314 call!530605)))

(declare-fun bm!530600 () Bool)

(assert (=> bm!530600 (= call!530602 ($colon$colon!2057 (exprs!6076 lt!2352397) (ite (or c!1136947 c!1136946) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 r!7292)))))))

(declare-fun bm!530601 () Bool)

(assert (=> bm!530601 (= call!530604 call!530602)))

(declare-fun b!6273208 () Bool)

(assert (=> b!6273208 (= e!3815309 (set.insert lt!2352397 (as set.empty (Set Context!11152))))))

(declare-fun b!6273209 () Bool)

(assert (=> b!6273209 (= e!3815312 (set.union call!530603 call!530601))))

(declare-fun b!6273210 () Bool)

(assert (=> b!6273210 (= e!3815310 call!530605)))

(assert (= (and d!1968900 c!1136945) b!6273208))

(assert (= (and d!1968900 (not c!1136945)) b!6273206))

(assert (= (and b!6273206 c!1136948) b!6273205))

(assert (= (and b!6273206 (not c!1136948)) b!6273204))

(assert (= (and b!6273204 res!2587587) b!6273201))

(assert (= (and b!6273204 c!1136947) b!6273209))

(assert (= (and b!6273204 (not c!1136947)) b!6273200))

(assert (= (and b!6273200 c!1136946) b!6273210))

(assert (= (and b!6273200 (not c!1136946)) b!6273202))

(assert (= (and b!6273202 c!1136949) b!6273207))

(assert (= (and b!6273202 (not c!1136949)) b!6273203))

(assert (= (or b!6273210 b!6273207) bm!530601))

(assert (= (or b!6273210 b!6273207) bm!530596))

(assert (= (or b!6273209 bm!530601) bm!530600))

(assert (= (or b!6273209 bm!530596) bm!530598))

(assert (= (or b!6273205 b!6273209) bm!530597))

(assert (= (or b!6273205 bm!530598) bm!530599))

(declare-fun m!7094842 () Bool)

(assert (=> bm!530599 m!7094842))

(declare-fun m!7094844 () Bool)

(assert (=> bm!530597 m!7094844))

(declare-fun m!7094846 () Bool)

(assert (=> b!6273201 m!7094846))

(assert (=> b!6273208 m!7094480))

(declare-fun m!7094848 () Bool)

(assert (=> bm!530600 m!7094848))

(assert (=> b!6272777 d!1968900))

(declare-fun b!6273217 () Bool)

(assert (=> b!6273217 true))

(declare-fun bs!1566664 () Bool)

(declare-fun b!6273219 () Bool)

(assert (= bs!1566664 (and b!6273219 b!6273217)))

(declare-fun lambda!343725 () Int)

(declare-fun lt!2352585 () Int)

(declare-fun lambda!343724 () Int)

(declare-fun lt!2352587 () Int)

(assert (=> bs!1566664 (= (= lt!2352585 lt!2352587) (= lambda!343725 lambda!343724))))

(assert (=> b!6273219 true))

(declare-fun d!1968902 () Bool)

(declare-fun e!3815319 () Bool)

(assert (=> d!1968902 e!3815319))

(declare-fun res!2587590 () Bool)

(assert (=> d!1968902 (=> (not res!2587590) (not e!3815319))))

(assert (=> d!1968902 (= res!2587590 (>= lt!2352585 0))))

(declare-fun e!3815320 () Int)

(assert (=> d!1968902 (= lt!2352585 e!3815320)))

(declare-fun c!1136958 () Bool)

(assert (=> d!1968902 (= c!1136958 (is-Cons!64753 lt!2352399))))

(assert (=> d!1968902 (= (zipperDepth!317 lt!2352399) lt!2352585)))

(assert (=> b!6273217 (= e!3815320 lt!2352587)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!210 (Context!11152) Int)

(assert (=> b!6273217 (= lt!2352587 (maxBigInt!0 (contextDepth!210 (h!71201 lt!2352399)) (zipperDepth!317 (t!378435 lt!2352399))))))

(declare-fun lt!2352584 () Unit!158099)

(declare-fun lambda!343723 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!194 (List!64877 Int Int Int) Unit!158099)

(assert (=> b!6273217 (= lt!2352584 (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 lt!2352399) lt!2352587 (zipperDepth!317 (t!378435 lt!2352399)) lambda!343723))))

(declare-fun forall!15323 (List!64877 Int) Bool)

(assert (=> b!6273217 (forall!15323 (t!378435 lt!2352399) lambda!343724)))

(declare-fun lt!2352586 () Unit!158099)

(assert (=> b!6273217 (= lt!2352586 lt!2352584)))

(declare-fun b!6273218 () Bool)

(assert (=> b!6273218 (= e!3815320 0)))

(assert (=> b!6273219 (= e!3815319 (forall!15323 lt!2352399 lambda!343725))))

(assert (= (and d!1968902 c!1136958) b!6273217))

(assert (= (and d!1968902 (not c!1136958)) b!6273218))

(assert (= (and d!1968902 res!2587590) b!6273219))

(declare-fun m!7094850 () Bool)

(assert (=> b!6273217 m!7094850))

(declare-fun m!7094852 () Bool)

(assert (=> b!6273217 m!7094852))

(declare-fun m!7094854 () Bool)

(assert (=> b!6273217 m!7094854))

(declare-fun m!7094856 () Bool)

(assert (=> b!6273217 m!7094856))

(assert (=> b!6273217 m!7094854))

(assert (=> b!6273217 m!7094852))

(assert (=> b!6273217 m!7094854))

(declare-fun m!7094858 () Bool)

(assert (=> b!6273217 m!7094858))

(declare-fun m!7094860 () Bool)

(assert (=> b!6273219 m!7094860))

(assert (=> b!6272797 d!1968902))

(declare-fun bs!1566665 () Bool)

(declare-fun b!6273222 () Bool)

(assert (= bs!1566665 (and b!6273222 b!6273217)))

(declare-fun lambda!343726 () Int)

(assert (=> bs!1566665 (= lambda!343726 lambda!343723)))

(declare-fun lt!2352591 () Int)

(declare-fun lambda!343727 () Int)

(assert (=> bs!1566665 (= (= lt!2352591 lt!2352587) (= lambda!343727 lambda!343724))))

(declare-fun bs!1566666 () Bool)

(assert (= bs!1566666 (and b!6273222 b!6273219)))

(assert (=> bs!1566666 (= (= lt!2352591 lt!2352585) (= lambda!343727 lambda!343725))))

(assert (=> b!6273222 true))

(declare-fun bs!1566667 () Bool)

(declare-fun b!6273224 () Bool)

(assert (= bs!1566667 (and b!6273224 b!6273217)))

(declare-fun lambda!343728 () Int)

(declare-fun lt!2352589 () Int)

(assert (=> bs!1566667 (= (= lt!2352589 lt!2352587) (= lambda!343728 lambda!343724))))

(declare-fun bs!1566668 () Bool)

(assert (= bs!1566668 (and b!6273224 b!6273219)))

(assert (=> bs!1566668 (= (= lt!2352589 lt!2352585) (= lambda!343728 lambda!343725))))

(declare-fun bs!1566669 () Bool)

(assert (= bs!1566669 (and b!6273224 b!6273222)))

(assert (=> bs!1566669 (= (= lt!2352589 lt!2352591) (= lambda!343728 lambda!343727))))

(assert (=> b!6273224 true))

(declare-fun d!1968904 () Bool)

(declare-fun e!3815321 () Bool)

(assert (=> d!1968904 e!3815321))

(declare-fun res!2587591 () Bool)

(assert (=> d!1968904 (=> (not res!2587591) (not e!3815321))))

(assert (=> d!1968904 (= res!2587591 (>= lt!2352589 0))))

(declare-fun e!3815322 () Int)

(assert (=> d!1968904 (= lt!2352589 e!3815322)))

(declare-fun c!1136959 () Bool)

(assert (=> d!1968904 (= c!1136959 (is-Cons!64753 zl!343))))

(assert (=> d!1968904 (= (zipperDepth!317 zl!343) lt!2352589)))

(assert (=> b!6273222 (= e!3815322 lt!2352591)))

(assert (=> b!6273222 (= lt!2352591 (maxBigInt!0 (contextDepth!210 (h!71201 zl!343)) (zipperDepth!317 (t!378435 zl!343))))))

(declare-fun lt!2352588 () Unit!158099)

(assert (=> b!6273222 (= lt!2352588 (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 zl!343) lt!2352591 (zipperDepth!317 (t!378435 zl!343)) lambda!343726))))

(assert (=> b!6273222 (forall!15323 (t!378435 zl!343) lambda!343727)))

(declare-fun lt!2352590 () Unit!158099)

(assert (=> b!6273222 (= lt!2352590 lt!2352588)))

(declare-fun b!6273223 () Bool)

(assert (=> b!6273223 (= e!3815322 0)))

(assert (=> b!6273224 (= e!3815321 (forall!15323 zl!343 lambda!343728))))

(assert (= (and d!1968904 c!1136959) b!6273222))

(assert (= (and d!1968904 (not c!1136959)) b!6273223))

(assert (= (and d!1968904 res!2587591) b!6273224))

(declare-fun m!7094862 () Bool)

(assert (=> b!6273222 m!7094862))

(declare-fun m!7094864 () Bool)

(assert (=> b!6273222 m!7094864))

(declare-fun m!7094866 () Bool)

(assert (=> b!6273222 m!7094866))

(declare-fun m!7094868 () Bool)

(assert (=> b!6273222 m!7094868))

(assert (=> b!6273222 m!7094866))

(assert (=> b!6273222 m!7094864))

(assert (=> b!6273222 m!7094866))

(declare-fun m!7094870 () Bool)

(assert (=> b!6273222 m!7094870))

(declare-fun m!7094872 () Bool)

(assert (=> b!6273224 m!7094872))

(assert (=> b!6272797 d!1968904))

(declare-fun d!1968906 () Bool)

(declare-fun lt!2352594 () Regex!16192)

(assert (=> d!1968906 (validRegex!7928 lt!2352594)))

(assert (=> d!1968906 (= lt!2352594 (generalisedUnion!2036 (unfocusZipperList!1613 zl!343)))))

(assert (=> d!1968906 (= (unfocusZipper!1934 zl!343) lt!2352594)))

(declare-fun bs!1566670 () Bool)

(assert (= bs!1566670 d!1968906))

(declare-fun m!7094874 () Bool)

(assert (=> bs!1566670 m!7094874))

(assert (=> bs!1566670 m!7094386))

(assert (=> bs!1566670 m!7094386))

(assert (=> bs!1566670 m!7094388))

(assert (=> b!6272778 d!1968906))

(declare-fun b!6273243 () Bool)

(declare-fun e!3815342 () Bool)

(declare-fun call!530613 () Bool)

(assert (=> b!6273243 (= e!3815342 call!530613)))

(declare-fun b!6273244 () Bool)

(declare-fun e!3815341 () Bool)

(declare-fun e!3815338 () Bool)

(assert (=> b!6273244 (= e!3815341 e!3815338)))

(declare-fun res!2587605 () Bool)

(assert (=> b!6273244 (= res!2587605 (not (nullable!6185 (reg!16521 r!7292))))))

(assert (=> b!6273244 (=> (not res!2587605) (not e!3815338))))

(declare-fun bm!530608 () Bool)

(declare-fun c!1136965 () Bool)

(declare-fun call!530615 () Bool)

(declare-fun c!1136964 () Bool)

(assert (=> bm!530608 (= call!530615 (validRegex!7928 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))

(declare-fun b!6273245 () Bool)

(declare-fun e!3815343 () Bool)

(assert (=> b!6273245 (= e!3815343 e!3815341)))

(assert (=> b!6273245 (= c!1136964 (is-Star!16192 r!7292))))

(declare-fun b!6273246 () Bool)

(declare-fun e!3815340 () Bool)

(assert (=> b!6273246 (= e!3815341 e!3815340)))

(assert (=> b!6273246 (= c!1136965 (is-Union!16192 r!7292))))

(declare-fun d!1968908 () Bool)

(declare-fun res!2587602 () Bool)

(assert (=> d!1968908 (=> res!2587602 e!3815343)))

(assert (=> d!1968908 (= res!2587602 (is-ElementMatch!16192 r!7292))))

(assert (=> d!1968908 (= (validRegex!7928 r!7292) e!3815343)))

(declare-fun bm!530609 () Bool)

(declare-fun call!530614 () Bool)

(assert (=> bm!530609 (= call!530614 call!530615)))

(declare-fun b!6273247 () Bool)

(declare-fun res!2587604 () Bool)

(declare-fun e!3815339 () Bool)

(assert (=> b!6273247 (=> res!2587604 e!3815339)))

(assert (=> b!6273247 (= res!2587604 (not (is-Concat!25037 r!7292)))))

(assert (=> b!6273247 (= e!3815340 e!3815339)))

(declare-fun b!6273248 () Bool)

(declare-fun e!3815337 () Bool)

(assert (=> b!6273248 (= e!3815339 e!3815337)))

(declare-fun res!2587603 () Bool)

(assert (=> b!6273248 (=> (not res!2587603) (not e!3815337))))

(assert (=> b!6273248 (= res!2587603 call!530614)))

(declare-fun b!6273249 () Bool)

(assert (=> b!6273249 (= e!3815338 call!530615)))

(declare-fun bm!530610 () Bool)

(assert (=> bm!530610 (= call!530613 (validRegex!7928 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))

(declare-fun b!6273250 () Bool)

(assert (=> b!6273250 (= e!3815337 call!530613)))

(declare-fun b!6273251 () Bool)

(declare-fun res!2587606 () Bool)

(assert (=> b!6273251 (=> (not res!2587606) (not e!3815342))))

(assert (=> b!6273251 (= res!2587606 call!530614)))

(assert (=> b!6273251 (= e!3815340 e!3815342)))

(assert (= (and d!1968908 (not res!2587602)) b!6273245))

(assert (= (and b!6273245 c!1136964) b!6273244))

(assert (= (and b!6273245 (not c!1136964)) b!6273246))

(assert (= (and b!6273244 res!2587605) b!6273249))

(assert (= (and b!6273246 c!1136965) b!6273251))

(assert (= (and b!6273246 (not c!1136965)) b!6273247))

(assert (= (and b!6273251 res!2587606) b!6273243))

(assert (= (and b!6273247 (not res!2587604)) b!6273248))

(assert (= (and b!6273248 res!2587603) b!6273250))

(assert (= (or b!6273243 b!6273250) bm!530610))

(assert (= (or b!6273251 b!6273248) bm!530609))

(assert (= (or b!6273249 bm!530609) bm!530608))

(declare-fun m!7094876 () Bool)

(assert (=> b!6273244 m!7094876))

(declare-fun m!7094878 () Bool)

(assert (=> bm!530608 m!7094878))

(declare-fun m!7094880 () Bool)

(assert (=> bm!530610 m!7094880))

(assert (=> start!623596 d!1968908))

(declare-fun d!1968910 () Bool)

(declare-fun lt!2352597 () Int)

(assert (=> d!1968910 (>= lt!2352597 0)))

(declare-fun e!3815346 () Int)

(assert (=> d!1968910 (= lt!2352597 e!3815346)))

(declare-fun c!1136969 () Bool)

(assert (=> d!1968910 (= c!1136969 (is-Cons!64751 (exprs!6076 lt!2352409)))))

(assert (=> d!1968910 (= (contextDepthTotal!315 lt!2352409) lt!2352597)))

(declare-fun b!6273256 () Bool)

(declare-fun regexDepthTotal!168 (Regex!16192) Int)

(assert (=> b!6273256 (= e!3815346 (+ (regexDepthTotal!168 (h!71199 (exprs!6076 lt!2352409))) (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 lt!2352409))))))))

(declare-fun b!6273257 () Bool)

(assert (=> b!6273257 (= e!3815346 1)))

(assert (= (and d!1968910 c!1136969) b!6273256))

(assert (= (and d!1968910 (not c!1136969)) b!6273257))

(declare-fun m!7094882 () Bool)

(assert (=> b!6273256 m!7094882))

(declare-fun m!7094884 () Bool)

(assert (=> b!6273256 m!7094884))

(assert (=> b!6272772 d!1968910))

(declare-fun d!1968912 () Bool)

(declare-fun lt!2352598 () Int)

(assert (=> d!1968912 (>= lt!2352598 0)))

(declare-fun e!3815347 () Int)

(assert (=> d!1968912 (= lt!2352598 e!3815347)))

(declare-fun c!1136970 () Bool)

(assert (=> d!1968912 (= c!1136970 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(assert (=> d!1968912 (= (contextDepthTotal!315 (h!71201 zl!343)) lt!2352598)))

(declare-fun b!6273258 () Bool)

(assert (=> b!6273258 (= e!3815347 (+ (regexDepthTotal!168 (h!71199 (exprs!6076 (h!71201 zl!343)))) (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6273259 () Bool)

(assert (=> b!6273259 (= e!3815347 1)))

(assert (= (and d!1968912 c!1136970) b!6273258))

(assert (= (and d!1968912 (not c!1136970)) b!6273259))

(declare-fun m!7094886 () Bool)

(assert (=> b!6273258 m!7094886))

(declare-fun m!7094888 () Bool)

(assert (=> b!6273258 m!7094888))

(assert (=> b!6272772 d!1968912))

(declare-fun bs!1566671 () Bool)

(declare-fun d!1968914 () Bool)

(assert (= bs!1566671 (and d!1968914 d!1968828)))

(declare-fun lambda!343729 () Int)

(assert (=> bs!1566671 (= lambda!343729 lambda!343694)))

(declare-fun bs!1566672 () Bool)

(assert (= bs!1566672 (and d!1968914 d!1968854)))

(assert (=> bs!1566672 (= lambda!343729 lambda!343697)))

(assert (=> d!1968914 (= (inv!83728 (h!71201 zl!343)) (forall!15322 (exprs!6076 (h!71201 zl!343)) lambda!343729))))

(declare-fun bs!1566673 () Bool)

(assert (= bs!1566673 d!1968914))

(declare-fun m!7094890 () Bool)

(assert (=> bs!1566673 m!7094890))

(assert (=> b!6272773 d!1968914))

(declare-fun d!1968916 () Bool)

(assert (=> d!1968916 (= (nullable!6185 (regOne!32896 (regOne!32896 r!7292))) (nullableFct!2137 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun bs!1566674 () Bool)

(assert (= bs!1566674 d!1968916))

(declare-fun m!7094892 () Bool)

(assert (=> bs!1566674 m!7094892))

(assert (=> b!6272794 d!1968916))

(declare-fun d!1968918 () Bool)

(assert (=> d!1968918 (= (matchR!8375 lt!2352400 s!2326) (matchZipper!2204 lt!2352410 s!2326))))

(declare-fun lt!2352601 () Unit!158099)

(declare-fun choose!46551 ((Set Context!11152) List!64877 Regex!16192 List!64876) Unit!158099)

(assert (=> d!1968918 (= lt!2352601 (choose!46551 lt!2352410 lt!2352399 lt!2352400 s!2326))))

(assert (=> d!1968918 (validRegex!7928 lt!2352400)))

(assert (=> d!1968918 (= (theoremZipperRegexEquiv!762 lt!2352410 lt!2352399 lt!2352400 s!2326) lt!2352601)))

(declare-fun bs!1566675 () Bool)

(assert (= bs!1566675 d!1968918))

(assert (=> bs!1566675 m!7094418))

(assert (=> bs!1566675 m!7094424))

(declare-fun m!7094894 () Bool)

(assert (=> bs!1566675 m!7094894))

(declare-fun m!7094896 () Bool)

(assert (=> bs!1566675 m!7094896))

(assert (=> b!6272774 d!1968918))

(declare-fun bs!1566676 () Bool)

(declare-fun b!6273265 () Bool)

(assert (= bs!1566676 (and b!6273265 b!6273102)))

(declare-fun lambda!343730 () Int)

(assert (=> bs!1566676 (not (= lambda!343730 lambda!343707))))

(declare-fun bs!1566677 () Bool)

(assert (= bs!1566677 (and b!6273265 d!1968890)))

(assert (=> bs!1566677 (not (= lambda!343730 lambda!343710))))

(declare-fun bs!1566678 () Bool)

(assert (= bs!1566678 (and b!6273265 b!6272766)))

(assert (=> bs!1566678 (not (= lambda!343730 lambda!343675))))

(declare-fun bs!1566679 () Bool)

(assert (= bs!1566679 (and b!6273265 b!6273100)))

(assert (=> bs!1566679 (= (and (= (reg!16521 lt!2352400) (reg!16521 r!7292)) (= lt!2352400 r!7292)) (= lambda!343730 lambda!343706))))

(declare-fun bs!1566680 () Bool)

(assert (= bs!1566680 (and b!6273265 d!1968892)))

(assert (=> bs!1566680 (not (= lambda!343730 lambda!343716))))

(assert (=> bs!1566680 (not (= lambda!343730 lambda!343715))))

(assert (=> bs!1566678 (not (= lambda!343730 lambda!343674))))

(assert (=> b!6273265 true))

(assert (=> b!6273265 true))

(declare-fun bs!1566681 () Bool)

(declare-fun b!6273267 () Bool)

(assert (= bs!1566681 (and b!6273267 b!6273102)))

(declare-fun lambda!343731 () Int)

(assert (=> bs!1566681 (= (and (= (regOne!32896 lt!2352400) (regOne!32896 r!7292)) (= (regTwo!32896 lt!2352400) (regTwo!32896 r!7292))) (= lambda!343731 lambda!343707))))

(declare-fun bs!1566682 () Bool)

(assert (= bs!1566682 (and b!6273267 d!1968890)))

(assert (=> bs!1566682 (not (= lambda!343731 lambda!343710))))

(declare-fun bs!1566683 () Bool)

(assert (= bs!1566683 (and b!6273267 b!6272766)))

(assert (=> bs!1566683 (= (and (= (regOne!32896 lt!2352400) (regOne!32896 r!7292)) (= (regTwo!32896 lt!2352400) (regTwo!32896 r!7292))) (= lambda!343731 lambda!343675))))

(declare-fun bs!1566684 () Bool)

(assert (= bs!1566684 (and b!6273267 b!6273100)))

(assert (=> bs!1566684 (not (= lambda!343731 lambda!343706))))

(declare-fun bs!1566685 () Bool)

(assert (= bs!1566685 (and b!6273267 d!1968892)))

(assert (=> bs!1566685 (= (and (= (regOne!32896 lt!2352400) (regOne!32896 r!7292)) (= (regTwo!32896 lt!2352400) (regTwo!32896 r!7292))) (= lambda!343731 lambda!343716))))

(declare-fun bs!1566686 () Bool)

(assert (= bs!1566686 (and b!6273267 b!6273265)))

(assert (=> bs!1566686 (not (= lambda!343731 lambda!343730))))

(assert (=> bs!1566685 (not (= lambda!343731 lambda!343715))))

(assert (=> bs!1566683 (not (= lambda!343731 lambda!343674))))

(assert (=> b!6273267 true))

(assert (=> b!6273267 true))

(declare-fun b!6273260 () Bool)

(declare-fun res!2587607 () Bool)

(declare-fun e!3815349 () Bool)

(assert (=> b!6273260 (=> res!2587607 e!3815349)))

(declare-fun call!530616 () Bool)

(assert (=> b!6273260 (= res!2587607 call!530616)))

(declare-fun e!3815354 () Bool)

(assert (=> b!6273260 (= e!3815354 e!3815349)))

(declare-fun b!6273261 () Bool)

(declare-fun c!1136973 () Bool)

(assert (=> b!6273261 (= c!1136973 (is-ElementMatch!16192 lt!2352400))))

(declare-fun e!3815352 () Bool)

(declare-fun e!3815348 () Bool)

(assert (=> b!6273261 (= e!3815352 e!3815348)))

(declare-fun bm!530611 () Bool)

(assert (=> bm!530611 (= call!530616 (isEmpty!36792 s!2326))))

(declare-fun b!6273262 () Bool)

(declare-fun c!1136974 () Bool)

(assert (=> b!6273262 (= c!1136974 (is-Union!16192 lt!2352400))))

(declare-fun e!3815350 () Bool)

(assert (=> b!6273262 (= e!3815348 e!3815350)))

(declare-fun d!1968920 () Bool)

(declare-fun c!1136971 () Bool)

(assert (=> d!1968920 (= c!1136971 (is-EmptyExpr!16192 lt!2352400))))

(declare-fun e!3815351 () Bool)

(assert (=> d!1968920 (= (matchRSpec!3293 lt!2352400 s!2326) e!3815351)))

(declare-fun c!1136972 () Bool)

(declare-fun call!530617 () Bool)

(declare-fun bm!530612 () Bool)

(assert (=> bm!530612 (= call!530617 (Exists!3262 (ite c!1136972 lambda!343730 lambda!343731)))))

(declare-fun b!6273263 () Bool)

(assert (=> b!6273263 (= e!3815351 call!530616)))

(declare-fun b!6273264 () Bool)

(declare-fun e!3815353 () Bool)

(assert (=> b!6273264 (= e!3815353 (matchRSpec!3293 (regTwo!32897 lt!2352400) s!2326))))

(assert (=> b!6273265 (= e!3815349 call!530617)))

(declare-fun b!6273266 () Bool)

(assert (=> b!6273266 (= e!3815351 e!3815352)))

(declare-fun res!2587609 () Bool)

(assert (=> b!6273266 (= res!2587609 (not (is-EmptyLang!16192 lt!2352400)))))

(assert (=> b!6273266 (=> (not res!2587609) (not e!3815352))))

(assert (=> b!6273267 (= e!3815354 call!530617)))

(declare-fun b!6273268 () Bool)

(assert (=> b!6273268 (= e!3815350 e!3815353)))

(declare-fun res!2587608 () Bool)

(assert (=> b!6273268 (= res!2587608 (matchRSpec!3293 (regOne!32897 lt!2352400) s!2326))))

(assert (=> b!6273268 (=> res!2587608 e!3815353)))

(declare-fun b!6273269 () Bool)

(assert (=> b!6273269 (= e!3815350 e!3815354)))

(assert (=> b!6273269 (= c!1136972 (is-Star!16192 lt!2352400))))

(declare-fun b!6273270 () Bool)

(assert (=> b!6273270 (= e!3815348 (= s!2326 (Cons!64752 (c!1136845 lt!2352400) Nil!64752)))))

(assert (= (and d!1968920 c!1136971) b!6273263))

(assert (= (and d!1968920 (not c!1136971)) b!6273266))

(assert (= (and b!6273266 res!2587609) b!6273261))

(assert (= (and b!6273261 c!1136973) b!6273270))

(assert (= (and b!6273261 (not c!1136973)) b!6273262))

(assert (= (and b!6273262 c!1136974) b!6273268))

(assert (= (and b!6273262 (not c!1136974)) b!6273269))

(assert (= (and b!6273268 (not res!2587608)) b!6273264))

(assert (= (and b!6273269 c!1136972) b!6273260))

(assert (= (and b!6273269 (not c!1136972)) b!6273267))

(assert (= (and b!6273260 (not res!2587607)) b!6273265))

(assert (= (or b!6273265 b!6273267) bm!530612))

(assert (= (or b!6273263 b!6273260) bm!530611))

(assert (=> bm!530611 m!7094766))

(declare-fun m!7094898 () Bool)

(assert (=> bm!530612 m!7094898))

(declare-fun m!7094900 () Bool)

(assert (=> b!6273264 m!7094900))

(declare-fun m!7094902 () Bool)

(assert (=> b!6273268 m!7094902))

(assert (=> b!6272774 d!1968920))

(declare-fun bs!1566687 () Bool)

(declare-fun d!1968922 () Bool)

(assert (= bs!1566687 (and d!1968922 d!1968828)))

(declare-fun lambda!343732 () Int)

(assert (=> bs!1566687 (= lambda!343732 lambda!343694)))

(declare-fun bs!1566688 () Bool)

(assert (= bs!1566688 (and d!1968922 d!1968854)))

(assert (=> bs!1566688 (= lambda!343732 lambda!343697)))

(declare-fun bs!1566689 () Bool)

(assert (= bs!1566689 (and d!1968922 d!1968914)))

(assert (=> bs!1566689 (= lambda!343732 lambda!343729)))

(declare-fun e!3815356 () Bool)

(assert (=> d!1968922 e!3815356))

(declare-fun res!2587610 () Bool)

(assert (=> d!1968922 (=> (not res!2587610) (not e!3815356))))

(declare-fun lt!2352602 () Regex!16192)

(assert (=> d!1968922 (= res!2587610 (validRegex!7928 lt!2352602))))

(declare-fun e!3815357 () Regex!16192)

(assert (=> d!1968922 (= lt!2352602 e!3815357)))

(declare-fun c!1136976 () Bool)

(declare-fun e!3815360 () Bool)

(assert (=> d!1968922 (= c!1136976 e!3815360)))

(declare-fun res!2587611 () Bool)

(assert (=> d!1968922 (=> (not res!2587611) (not e!3815360))))

(assert (=> d!1968922 (= res!2587611 (is-Cons!64751 lt!2352404))))

(assert (=> d!1968922 (forall!15322 lt!2352404 lambda!343732)))

(assert (=> d!1968922 (= (generalisedConcat!1789 lt!2352404) lt!2352602)))

(declare-fun b!6273271 () Bool)

(declare-fun e!3815359 () Bool)

(assert (=> b!6273271 (= e!3815356 e!3815359)))

(declare-fun c!1136977 () Bool)

(assert (=> b!6273271 (= c!1136977 (isEmpty!36789 lt!2352404))))

(declare-fun b!6273272 () Bool)

(declare-fun e!3815358 () Bool)

(assert (=> b!6273272 (= e!3815358 (= lt!2352602 (head!12885 lt!2352404)))))

(declare-fun b!6273273 () Bool)

(assert (=> b!6273273 (= e!3815357 (h!71199 lt!2352404))))

(declare-fun b!6273274 () Bool)

(assert (=> b!6273274 (= e!3815359 (isEmptyExpr!1598 lt!2352602))))

(declare-fun b!6273275 () Bool)

(declare-fun e!3815355 () Regex!16192)

(assert (=> b!6273275 (= e!3815355 (Concat!25037 (h!71199 lt!2352404) (generalisedConcat!1789 (t!378433 lt!2352404))))))

(declare-fun b!6273276 () Bool)

(assert (=> b!6273276 (= e!3815358 (isConcat!1121 lt!2352602))))

(declare-fun b!6273277 () Bool)

(assert (=> b!6273277 (= e!3815360 (isEmpty!36789 (t!378433 lt!2352404)))))

(declare-fun b!6273278 () Bool)

(assert (=> b!6273278 (= e!3815357 e!3815355)))

(declare-fun c!1136975 () Bool)

(assert (=> b!6273278 (= c!1136975 (is-Cons!64751 lt!2352404))))

(declare-fun b!6273279 () Bool)

(assert (=> b!6273279 (= e!3815359 e!3815358)))

(declare-fun c!1136978 () Bool)

(assert (=> b!6273279 (= c!1136978 (isEmpty!36789 (tail!11970 lt!2352404)))))

(declare-fun b!6273280 () Bool)

(assert (=> b!6273280 (= e!3815355 EmptyExpr!16192)))

(assert (= (and d!1968922 res!2587611) b!6273277))

(assert (= (and d!1968922 c!1136976) b!6273273))

(assert (= (and d!1968922 (not c!1136976)) b!6273278))

(assert (= (and b!6273278 c!1136975) b!6273275))

(assert (= (and b!6273278 (not c!1136975)) b!6273280))

(assert (= (and d!1968922 res!2587610) b!6273271))

(assert (= (and b!6273271 c!1136977) b!6273274))

(assert (= (and b!6273271 (not c!1136977)) b!6273279))

(assert (= (and b!6273279 c!1136978) b!6273272))

(assert (= (and b!6273279 (not c!1136978)) b!6273276))

(declare-fun m!7094904 () Bool)

(assert (=> b!6273276 m!7094904))

(declare-fun m!7094906 () Bool)

(assert (=> b!6273279 m!7094906))

(assert (=> b!6273279 m!7094906))

(declare-fun m!7094908 () Bool)

(assert (=> b!6273279 m!7094908))

(declare-fun m!7094910 () Bool)

(assert (=> b!6273271 m!7094910))

(declare-fun m!7094912 () Bool)

(assert (=> b!6273277 m!7094912))

(declare-fun m!7094914 () Bool)

(assert (=> b!6273272 m!7094914))

(declare-fun m!7094916 () Bool)

(assert (=> d!1968922 m!7094916))

(declare-fun m!7094918 () Bool)

(assert (=> d!1968922 m!7094918))

(declare-fun m!7094920 () Bool)

(assert (=> b!6273275 m!7094920))

(declare-fun m!7094922 () Bool)

(assert (=> b!6273274 m!7094922))

(assert (=> b!6272774 d!1968922))

(declare-fun bs!1566690 () Bool)

(declare-fun d!1968924 () Bool)

(assert (= bs!1566690 (and d!1968924 d!1968828)))

(declare-fun lambda!343733 () Int)

(assert (=> bs!1566690 (= lambda!343733 lambda!343694)))

(declare-fun bs!1566691 () Bool)

(assert (= bs!1566691 (and d!1968924 d!1968854)))

(assert (=> bs!1566691 (= lambda!343733 lambda!343697)))

(declare-fun bs!1566692 () Bool)

(assert (= bs!1566692 (and d!1968924 d!1968914)))

(assert (=> bs!1566692 (= lambda!343733 lambda!343729)))

(declare-fun bs!1566693 () Bool)

(assert (= bs!1566693 (and d!1968924 d!1968922)))

(assert (=> bs!1566693 (= lambda!343733 lambda!343732)))

(declare-fun e!3815362 () Bool)

(assert (=> d!1968924 e!3815362))

(declare-fun res!2587612 () Bool)

(assert (=> d!1968924 (=> (not res!2587612) (not e!3815362))))

(declare-fun lt!2352603 () Regex!16192)

(assert (=> d!1968924 (= res!2587612 (validRegex!7928 lt!2352603))))

(declare-fun e!3815363 () Regex!16192)

(assert (=> d!1968924 (= lt!2352603 e!3815363)))

(declare-fun c!1136980 () Bool)

(declare-fun e!3815366 () Bool)

(assert (=> d!1968924 (= c!1136980 e!3815366)))

(declare-fun res!2587613 () Bool)

(assert (=> d!1968924 (=> (not res!2587613) (not e!3815366))))

(assert (=> d!1968924 (= res!2587613 (is-Cons!64751 lt!2352407))))

(assert (=> d!1968924 (forall!15322 lt!2352407 lambda!343733)))

(assert (=> d!1968924 (= (generalisedConcat!1789 lt!2352407) lt!2352603)))

(declare-fun b!6273281 () Bool)

(declare-fun e!3815365 () Bool)

(assert (=> b!6273281 (= e!3815362 e!3815365)))

(declare-fun c!1136981 () Bool)

(assert (=> b!6273281 (= c!1136981 (isEmpty!36789 lt!2352407))))

(declare-fun b!6273282 () Bool)

(declare-fun e!3815364 () Bool)

(assert (=> b!6273282 (= e!3815364 (= lt!2352603 (head!12885 lt!2352407)))))

(declare-fun b!6273283 () Bool)

(assert (=> b!6273283 (= e!3815363 (h!71199 lt!2352407))))

(declare-fun b!6273284 () Bool)

(assert (=> b!6273284 (= e!3815365 (isEmptyExpr!1598 lt!2352603))))

(declare-fun b!6273285 () Bool)

(declare-fun e!3815361 () Regex!16192)

(assert (=> b!6273285 (= e!3815361 (Concat!25037 (h!71199 lt!2352407) (generalisedConcat!1789 (t!378433 lt!2352407))))))

(declare-fun b!6273286 () Bool)

(assert (=> b!6273286 (= e!3815364 (isConcat!1121 lt!2352603))))

(declare-fun b!6273287 () Bool)

(assert (=> b!6273287 (= e!3815366 (isEmpty!36789 (t!378433 lt!2352407)))))

(declare-fun b!6273288 () Bool)

(assert (=> b!6273288 (= e!3815363 e!3815361)))

(declare-fun c!1136979 () Bool)

(assert (=> b!6273288 (= c!1136979 (is-Cons!64751 lt!2352407))))

(declare-fun b!6273289 () Bool)

(assert (=> b!6273289 (= e!3815365 e!3815364)))

(declare-fun c!1136982 () Bool)

(assert (=> b!6273289 (= c!1136982 (isEmpty!36789 (tail!11970 lt!2352407)))))

(declare-fun b!6273290 () Bool)

(assert (=> b!6273290 (= e!3815361 EmptyExpr!16192)))

(assert (= (and d!1968924 res!2587613) b!6273287))

(assert (= (and d!1968924 c!1136980) b!6273283))

(assert (= (and d!1968924 (not c!1136980)) b!6273288))

(assert (= (and b!6273288 c!1136979) b!6273285))

(assert (= (and b!6273288 (not c!1136979)) b!6273290))

(assert (= (and d!1968924 res!2587612) b!6273281))

(assert (= (and b!6273281 c!1136981) b!6273284))

(assert (= (and b!6273281 (not c!1136981)) b!6273289))

(assert (= (and b!6273289 c!1136982) b!6273282))

(assert (= (and b!6273289 (not c!1136982)) b!6273286))

(declare-fun m!7094924 () Bool)

(assert (=> b!6273286 m!7094924))

(declare-fun m!7094926 () Bool)

(assert (=> b!6273289 m!7094926))

(assert (=> b!6273289 m!7094926))

(declare-fun m!7094928 () Bool)

(assert (=> b!6273289 m!7094928))

(declare-fun m!7094930 () Bool)

(assert (=> b!6273281 m!7094930))

(declare-fun m!7094932 () Bool)

(assert (=> b!6273287 m!7094932))

(declare-fun m!7094934 () Bool)

(assert (=> b!6273282 m!7094934))

(declare-fun m!7094936 () Bool)

(assert (=> d!1968924 m!7094936))

(declare-fun m!7094938 () Bool)

(assert (=> d!1968924 m!7094938))

(declare-fun m!7094940 () Bool)

(assert (=> b!6273285 m!7094940))

(declare-fun m!7094942 () Bool)

(assert (=> b!6273284 m!7094942))

(assert (=> b!6272774 d!1968924))

(declare-fun b!6273291 () Bool)

(declare-fun e!3815369 () Bool)

(assert (=> b!6273291 (= e!3815369 (nullable!6185 lt!2352391))))

(declare-fun bm!530613 () Bool)

(declare-fun call!530618 () Bool)

(assert (=> bm!530613 (= call!530618 (isEmpty!36792 s!2326))))

(declare-fun b!6273292 () Bool)

(declare-fun e!3815370 () Bool)

(declare-fun e!3815372 () Bool)

(assert (=> b!6273292 (= e!3815370 e!3815372)))

(declare-fun res!2587616 () Bool)

(assert (=> b!6273292 (=> res!2587616 e!3815372)))

(assert (=> b!6273292 (= res!2587616 call!530618)))

(declare-fun d!1968926 () Bool)

(declare-fun e!3815367 () Bool)

(assert (=> d!1968926 e!3815367))

(declare-fun c!1136985 () Bool)

(assert (=> d!1968926 (= c!1136985 (is-EmptyExpr!16192 lt!2352391))))

(declare-fun lt!2352604 () Bool)

(assert (=> d!1968926 (= lt!2352604 e!3815369)))

(declare-fun c!1136983 () Bool)

(assert (=> d!1968926 (= c!1136983 (isEmpty!36792 s!2326))))

(assert (=> d!1968926 (validRegex!7928 lt!2352391)))

(assert (=> d!1968926 (= (matchR!8375 lt!2352391 s!2326) lt!2352604)))

(declare-fun b!6273293 () Bool)

(declare-fun e!3815371 () Bool)

(assert (=> b!6273293 (= e!3815371 (not lt!2352604))))

(declare-fun b!6273294 () Bool)

(assert (=> b!6273294 (= e!3815369 (matchR!8375 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)) (tail!11969 s!2326)))))

(declare-fun b!6273295 () Bool)

(declare-fun res!2587619 () Bool)

(assert (=> b!6273295 (=> res!2587619 e!3815372)))

(assert (=> b!6273295 (= res!2587619 (not (isEmpty!36792 (tail!11969 s!2326))))))

(declare-fun b!6273296 () Bool)

(assert (=> b!6273296 (= e!3815372 (not (= (head!12884 s!2326) (c!1136845 lt!2352391))))))

(declare-fun b!6273297 () Bool)

(declare-fun e!3815373 () Bool)

(assert (=> b!6273297 (= e!3815373 e!3815370)))

(declare-fun res!2587615 () Bool)

(assert (=> b!6273297 (=> (not res!2587615) (not e!3815370))))

(assert (=> b!6273297 (= res!2587615 (not lt!2352604))))

(declare-fun b!6273298 () Bool)

(declare-fun e!3815368 () Bool)

(assert (=> b!6273298 (= e!3815368 (= (head!12884 s!2326) (c!1136845 lt!2352391)))))

(declare-fun b!6273299 () Bool)

(declare-fun res!2587620 () Bool)

(assert (=> b!6273299 (=> (not res!2587620) (not e!3815368))))

(assert (=> b!6273299 (= res!2587620 (not call!530618))))

(declare-fun b!6273300 () Bool)

(declare-fun res!2587621 () Bool)

(assert (=> b!6273300 (=> (not res!2587621) (not e!3815368))))

(assert (=> b!6273300 (= res!2587621 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6273301 () Bool)

(declare-fun res!2587617 () Bool)

(assert (=> b!6273301 (=> res!2587617 e!3815373)))

(assert (=> b!6273301 (= res!2587617 e!3815368)))

(declare-fun res!2587618 () Bool)

(assert (=> b!6273301 (=> (not res!2587618) (not e!3815368))))

(assert (=> b!6273301 (= res!2587618 lt!2352604)))

(declare-fun b!6273302 () Bool)

(assert (=> b!6273302 (= e!3815367 e!3815371)))

(declare-fun c!1136984 () Bool)

(assert (=> b!6273302 (= c!1136984 (is-EmptyLang!16192 lt!2352391))))

(declare-fun b!6273303 () Bool)

(declare-fun res!2587614 () Bool)

(assert (=> b!6273303 (=> res!2587614 e!3815373)))

(assert (=> b!6273303 (= res!2587614 (not (is-ElementMatch!16192 lt!2352391)))))

(assert (=> b!6273303 (= e!3815371 e!3815373)))

(declare-fun b!6273304 () Bool)

(assert (=> b!6273304 (= e!3815367 (= lt!2352604 call!530618))))

(assert (= (and d!1968926 c!1136983) b!6273291))

(assert (= (and d!1968926 (not c!1136983)) b!6273294))

(assert (= (and d!1968926 c!1136985) b!6273304))

(assert (= (and d!1968926 (not c!1136985)) b!6273302))

(assert (= (and b!6273302 c!1136984) b!6273293))

(assert (= (and b!6273302 (not c!1136984)) b!6273303))

(assert (= (and b!6273303 (not res!2587614)) b!6273301))

(assert (= (and b!6273301 res!2587618) b!6273299))

(assert (= (and b!6273299 res!2587620) b!6273300))

(assert (= (and b!6273300 res!2587621) b!6273298))

(assert (= (and b!6273301 (not res!2587617)) b!6273297))

(assert (= (and b!6273297 res!2587615) b!6273292))

(assert (= (and b!6273292 (not res!2587616)) b!6273295))

(assert (= (and b!6273295 (not res!2587619)) b!6273296))

(assert (= (or b!6273304 b!6273292 b!6273299) bm!530613))

(assert (=> b!6273295 m!7094774))

(assert (=> b!6273295 m!7094774))

(assert (=> b!6273295 m!7094776))

(assert (=> b!6273300 m!7094774))

(assert (=> b!6273300 m!7094774))

(assert (=> b!6273300 m!7094776))

(declare-fun m!7094944 () Bool)

(assert (=> b!6273291 m!7094944))

(assert (=> d!1968926 m!7094766))

(declare-fun m!7094946 () Bool)

(assert (=> d!1968926 m!7094946))

(assert (=> b!6273294 m!7094780))

(assert (=> b!6273294 m!7094780))

(declare-fun m!7094948 () Bool)

(assert (=> b!6273294 m!7094948))

(assert (=> b!6273294 m!7094774))

(assert (=> b!6273294 m!7094948))

(assert (=> b!6273294 m!7094774))

(declare-fun m!7094950 () Bool)

(assert (=> b!6273294 m!7094950))

(assert (=> bm!530613 m!7094766))

(assert (=> b!6273298 m!7094780))

(assert (=> b!6273296 m!7094780))

(assert (=> b!6272774 d!1968926))

(declare-fun d!1968928 () Bool)

(assert (=> d!1968928 (= (matchR!8375 lt!2352391 s!2326) (matchZipper!2204 lt!2352408 s!2326))))

(declare-fun lt!2352605 () Unit!158099)

(assert (=> d!1968928 (= lt!2352605 (choose!46551 lt!2352408 (Cons!64753 lt!2352397 Nil!64753) lt!2352391 s!2326))))

(assert (=> d!1968928 (validRegex!7928 lt!2352391)))

(assert (=> d!1968928 (= (theoremZipperRegexEquiv!762 lt!2352408 (Cons!64753 lt!2352397 Nil!64753) lt!2352391 s!2326) lt!2352605)))

(declare-fun bs!1566694 () Bool)

(assert (= bs!1566694 d!1968928))

(assert (=> bs!1566694 m!7094422))

(assert (=> bs!1566694 m!7094426))

(declare-fun m!7094952 () Bool)

(assert (=> bs!1566694 m!7094952))

(assert (=> bs!1566694 m!7094946))

(assert (=> b!6272774 d!1968928))

(declare-fun b!6273305 () Bool)

(declare-fun e!3815379 () Bool)

(declare-fun call!530619 () Bool)

(assert (=> b!6273305 (= e!3815379 call!530619)))

(declare-fun b!6273306 () Bool)

(declare-fun e!3815378 () Bool)

(declare-fun e!3815375 () Bool)

(assert (=> b!6273306 (= e!3815378 e!3815375)))

(declare-fun res!2587625 () Bool)

(assert (=> b!6273306 (= res!2587625 (not (nullable!6185 (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))))

(assert (=> b!6273306 (=> (not res!2587625) (not e!3815375))))

(declare-fun bm!530614 () Bool)

(declare-fun c!1136987 () Bool)

(declare-fun c!1136986 () Bool)

(declare-fun call!530621 () Bool)

(assert (=> bm!530614 (= call!530621 (validRegex!7928 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(declare-fun b!6273307 () Bool)

(declare-fun e!3815380 () Bool)

(assert (=> b!6273307 (= e!3815380 e!3815378)))

(assert (=> b!6273307 (= c!1136986 (is-Star!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun b!6273308 () Bool)

(declare-fun e!3815377 () Bool)

(assert (=> b!6273308 (= e!3815378 e!3815377)))

(assert (=> b!6273308 (= c!1136987 (is-Union!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun d!1968930 () Bool)

(declare-fun res!2587622 () Bool)

(assert (=> d!1968930 (=> res!2587622 e!3815380)))

(assert (=> d!1968930 (= res!2587622 (is-ElementMatch!16192 (regOne!32896 (regOne!32896 r!7292))))))

(assert (=> d!1968930 (= (validRegex!7928 (regOne!32896 (regOne!32896 r!7292))) e!3815380)))

(declare-fun bm!530615 () Bool)

(declare-fun call!530620 () Bool)

(assert (=> bm!530615 (= call!530620 call!530621)))

(declare-fun b!6273309 () Bool)

(declare-fun res!2587624 () Bool)

(declare-fun e!3815376 () Bool)

(assert (=> b!6273309 (=> res!2587624 e!3815376)))

(assert (=> b!6273309 (= res!2587624 (not (is-Concat!25037 (regOne!32896 (regOne!32896 r!7292)))))))

(assert (=> b!6273309 (= e!3815377 e!3815376)))

(declare-fun b!6273310 () Bool)

(declare-fun e!3815374 () Bool)

(assert (=> b!6273310 (= e!3815376 e!3815374)))

(declare-fun res!2587623 () Bool)

(assert (=> b!6273310 (=> (not res!2587623) (not e!3815374))))

(assert (=> b!6273310 (= res!2587623 call!530620)))

(declare-fun b!6273311 () Bool)

(assert (=> b!6273311 (= e!3815375 call!530621)))

(declare-fun bm!530616 () Bool)

(assert (=> bm!530616 (= call!530619 (validRegex!7928 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun b!6273312 () Bool)

(assert (=> b!6273312 (= e!3815374 call!530619)))

(declare-fun b!6273313 () Bool)

(declare-fun res!2587626 () Bool)

(assert (=> b!6273313 (=> (not res!2587626) (not e!3815379))))

(assert (=> b!6273313 (= res!2587626 call!530620)))

(assert (=> b!6273313 (= e!3815377 e!3815379)))

(assert (= (and d!1968930 (not res!2587622)) b!6273307))

(assert (= (and b!6273307 c!1136986) b!6273306))

(assert (= (and b!6273307 (not c!1136986)) b!6273308))

(assert (= (and b!6273306 res!2587625) b!6273311))

(assert (= (and b!6273308 c!1136987) b!6273313))

(assert (= (and b!6273308 (not c!1136987)) b!6273309))

(assert (= (and b!6273313 res!2587626) b!6273305))

(assert (= (and b!6273309 (not res!2587624)) b!6273310))

(assert (= (and b!6273310 res!2587623) b!6273312))

(assert (= (or b!6273305 b!6273312) bm!530616))

(assert (= (or b!6273313 b!6273310) bm!530615))

(assert (= (or b!6273311 bm!530615) bm!530614))

(declare-fun m!7094954 () Bool)

(assert (=> b!6273306 m!7094954))

(declare-fun m!7094956 () Bool)

(assert (=> bm!530614 m!7094956))

(declare-fun m!7094958 () Bool)

(assert (=> bm!530616 m!7094958))

(assert (=> b!6272774 d!1968930))

(declare-fun d!1968932 () Bool)

(declare-fun c!1136988 () Bool)

(assert (=> d!1968932 (= c!1136988 (isEmpty!36792 s!2326))))

(declare-fun e!3815381 () Bool)

(assert (=> d!1968932 (= (matchZipper!2204 lt!2352410 s!2326) e!3815381)))

(declare-fun b!6273314 () Bool)

(assert (=> b!6273314 (= e!3815381 (nullableZipper!1962 lt!2352410))))

(declare-fun b!6273315 () Bool)

(assert (=> b!6273315 (= e!3815381 (matchZipper!2204 (derivationStepZipper!2158 lt!2352410 (head!12884 s!2326)) (tail!11969 s!2326)))))

(assert (= (and d!1968932 c!1136988) b!6273314))

(assert (= (and d!1968932 (not c!1136988)) b!6273315))

(assert (=> d!1968932 m!7094766))

(declare-fun m!7094960 () Bool)

(assert (=> b!6273314 m!7094960))

(assert (=> b!6273315 m!7094780))

(assert (=> b!6273315 m!7094780))

(declare-fun m!7094962 () Bool)

(assert (=> b!6273315 m!7094962))

(assert (=> b!6273315 m!7094774))

(assert (=> b!6273315 m!7094962))

(assert (=> b!6273315 m!7094774))

(declare-fun m!7094964 () Bool)

(assert (=> b!6273315 m!7094964))

(assert (=> b!6272774 d!1968932))

(declare-fun b!6273316 () Bool)

(declare-fun e!3815384 () Bool)

(assert (=> b!6273316 (= e!3815384 (nullable!6185 lt!2352400))))

(declare-fun bm!530617 () Bool)

(declare-fun call!530622 () Bool)

(assert (=> bm!530617 (= call!530622 (isEmpty!36792 s!2326))))

(declare-fun b!6273317 () Bool)

(declare-fun e!3815385 () Bool)

(declare-fun e!3815387 () Bool)

(assert (=> b!6273317 (= e!3815385 e!3815387)))

(declare-fun res!2587629 () Bool)

(assert (=> b!6273317 (=> res!2587629 e!3815387)))

(assert (=> b!6273317 (= res!2587629 call!530622)))

(declare-fun d!1968934 () Bool)

(declare-fun e!3815382 () Bool)

(assert (=> d!1968934 e!3815382))

(declare-fun c!1136991 () Bool)

(assert (=> d!1968934 (= c!1136991 (is-EmptyExpr!16192 lt!2352400))))

(declare-fun lt!2352606 () Bool)

(assert (=> d!1968934 (= lt!2352606 e!3815384)))

(declare-fun c!1136989 () Bool)

(assert (=> d!1968934 (= c!1136989 (isEmpty!36792 s!2326))))

(assert (=> d!1968934 (validRegex!7928 lt!2352400)))

(assert (=> d!1968934 (= (matchR!8375 lt!2352400 s!2326) lt!2352606)))

(declare-fun b!6273318 () Bool)

(declare-fun e!3815386 () Bool)

(assert (=> b!6273318 (= e!3815386 (not lt!2352606))))

(declare-fun b!6273319 () Bool)

(assert (=> b!6273319 (= e!3815384 (matchR!8375 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)) (tail!11969 s!2326)))))

(declare-fun b!6273320 () Bool)

(declare-fun res!2587632 () Bool)

(assert (=> b!6273320 (=> res!2587632 e!3815387)))

(assert (=> b!6273320 (= res!2587632 (not (isEmpty!36792 (tail!11969 s!2326))))))

(declare-fun b!6273321 () Bool)

(assert (=> b!6273321 (= e!3815387 (not (= (head!12884 s!2326) (c!1136845 lt!2352400))))))

(declare-fun b!6273322 () Bool)

(declare-fun e!3815388 () Bool)

(assert (=> b!6273322 (= e!3815388 e!3815385)))

(declare-fun res!2587628 () Bool)

(assert (=> b!6273322 (=> (not res!2587628) (not e!3815385))))

(assert (=> b!6273322 (= res!2587628 (not lt!2352606))))

(declare-fun b!6273323 () Bool)

(declare-fun e!3815383 () Bool)

(assert (=> b!6273323 (= e!3815383 (= (head!12884 s!2326) (c!1136845 lt!2352400)))))

(declare-fun b!6273324 () Bool)

(declare-fun res!2587633 () Bool)

(assert (=> b!6273324 (=> (not res!2587633) (not e!3815383))))

(assert (=> b!6273324 (= res!2587633 (not call!530622))))

(declare-fun b!6273325 () Bool)

(declare-fun res!2587634 () Bool)

(assert (=> b!6273325 (=> (not res!2587634) (not e!3815383))))

(assert (=> b!6273325 (= res!2587634 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6273326 () Bool)

(declare-fun res!2587630 () Bool)

(assert (=> b!6273326 (=> res!2587630 e!3815388)))

(assert (=> b!6273326 (= res!2587630 e!3815383)))

(declare-fun res!2587631 () Bool)

(assert (=> b!6273326 (=> (not res!2587631) (not e!3815383))))

(assert (=> b!6273326 (= res!2587631 lt!2352606)))

(declare-fun b!6273327 () Bool)

(assert (=> b!6273327 (= e!3815382 e!3815386)))

(declare-fun c!1136990 () Bool)

(assert (=> b!6273327 (= c!1136990 (is-EmptyLang!16192 lt!2352400))))

(declare-fun b!6273328 () Bool)

(declare-fun res!2587627 () Bool)

(assert (=> b!6273328 (=> res!2587627 e!3815388)))

(assert (=> b!6273328 (= res!2587627 (not (is-ElementMatch!16192 lt!2352400)))))

(assert (=> b!6273328 (= e!3815386 e!3815388)))

(declare-fun b!6273329 () Bool)

(assert (=> b!6273329 (= e!3815382 (= lt!2352606 call!530622))))

(assert (= (and d!1968934 c!1136989) b!6273316))

(assert (= (and d!1968934 (not c!1136989)) b!6273319))

(assert (= (and d!1968934 c!1136991) b!6273329))

(assert (= (and d!1968934 (not c!1136991)) b!6273327))

(assert (= (and b!6273327 c!1136990) b!6273318))

(assert (= (and b!6273327 (not c!1136990)) b!6273328))

(assert (= (and b!6273328 (not res!2587627)) b!6273326))

(assert (= (and b!6273326 res!2587631) b!6273324))

(assert (= (and b!6273324 res!2587633) b!6273325))

(assert (= (and b!6273325 res!2587634) b!6273323))

(assert (= (and b!6273326 (not res!2587630)) b!6273322))

(assert (= (and b!6273322 res!2587628) b!6273317))

(assert (= (and b!6273317 (not res!2587629)) b!6273320))

(assert (= (and b!6273320 (not res!2587632)) b!6273321))

(assert (= (or b!6273329 b!6273317 b!6273324) bm!530617))

(assert (=> b!6273320 m!7094774))

(assert (=> b!6273320 m!7094774))

(assert (=> b!6273320 m!7094776))

(assert (=> b!6273325 m!7094774))

(assert (=> b!6273325 m!7094774))

(assert (=> b!6273325 m!7094776))

(declare-fun m!7094966 () Bool)

(assert (=> b!6273316 m!7094966))

(assert (=> d!1968934 m!7094766))

(assert (=> d!1968934 m!7094896))

(assert (=> b!6273319 m!7094780))

(assert (=> b!6273319 m!7094780))

(declare-fun m!7094968 () Bool)

(assert (=> b!6273319 m!7094968))

(assert (=> b!6273319 m!7094774))

(assert (=> b!6273319 m!7094968))

(assert (=> b!6273319 m!7094774))

(declare-fun m!7094970 () Bool)

(assert (=> b!6273319 m!7094970))

(assert (=> bm!530617 m!7094766))

(assert (=> b!6273323 m!7094780))

(assert (=> b!6273321 m!7094780))

(assert (=> b!6272774 d!1968934))

(declare-fun d!1968936 () Bool)

(declare-fun c!1136992 () Bool)

(assert (=> d!1968936 (= c!1136992 (isEmpty!36792 s!2326))))

(declare-fun e!3815389 () Bool)

(assert (=> d!1968936 (= (matchZipper!2204 lt!2352408 s!2326) e!3815389)))

(declare-fun b!6273330 () Bool)

(assert (=> b!6273330 (= e!3815389 (nullableZipper!1962 lt!2352408))))

(declare-fun b!6273331 () Bool)

(assert (=> b!6273331 (= e!3815389 (matchZipper!2204 (derivationStepZipper!2158 lt!2352408 (head!12884 s!2326)) (tail!11969 s!2326)))))

(assert (= (and d!1968936 c!1136992) b!6273330))

(assert (= (and d!1968936 (not c!1136992)) b!6273331))

(assert (=> d!1968936 m!7094766))

(declare-fun m!7094972 () Bool)

(assert (=> b!6273330 m!7094972))

(assert (=> b!6273331 m!7094780))

(assert (=> b!6273331 m!7094780))

(declare-fun m!7094974 () Bool)

(assert (=> b!6273331 m!7094974))

(assert (=> b!6273331 m!7094774))

(assert (=> b!6273331 m!7094974))

(assert (=> b!6273331 m!7094774))

(declare-fun m!7094976 () Bool)

(assert (=> b!6273331 m!7094976))

(assert (=> b!6272774 d!1968936))

(declare-fun d!1968938 () Bool)

(assert (=> d!1968938 (= (matchR!8375 lt!2352400 s!2326) (matchRSpec!3293 lt!2352400 s!2326))))

(declare-fun lt!2352607 () Unit!158099)

(assert (=> d!1968938 (= lt!2352607 (choose!46547 lt!2352400 s!2326))))

(assert (=> d!1968938 (validRegex!7928 lt!2352400)))

(assert (=> d!1968938 (= (mainMatchTheorem!3293 lt!2352400 s!2326) lt!2352607)))

(declare-fun bs!1566695 () Bool)

(assert (= bs!1566695 d!1968938))

(assert (=> bs!1566695 m!7094418))

(assert (=> bs!1566695 m!7094438))

(declare-fun m!7094978 () Bool)

(assert (=> bs!1566695 m!7094978))

(assert (=> bs!1566695 m!7094896))

(assert (=> b!6272774 d!1968938))

(declare-fun bs!1566696 () Bool)

(declare-fun d!1968940 () Bool)

(assert (= bs!1566696 (and d!1968940 d!1968922)))

(declare-fun lambda!343736 () Int)

(assert (=> bs!1566696 (= lambda!343736 lambda!343732)))

(declare-fun bs!1566697 () Bool)

(assert (= bs!1566697 (and d!1968940 d!1968924)))

(assert (=> bs!1566697 (= lambda!343736 lambda!343733)))

(declare-fun bs!1566698 () Bool)

(assert (= bs!1566698 (and d!1968940 d!1968914)))

(assert (=> bs!1566698 (= lambda!343736 lambda!343729)))

(declare-fun bs!1566699 () Bool)

(assert (= bs!1566699 (and d!1968940 d!1968854)))

(assert (=> bs!1566699 (= lambda!343736 lambda!343697)))

(declare-fun bs!1566700 () Bool)

(assert (= bs!1566700 (and d!1968940 d!1968828)))

(assert (=> bs!1566700 (= lambda!343736 lambda!343694)))

(declare-fun b!6273352 () Bool)

(declare-fun e!3815406 () Regex!16192)

(assert (=> b!6273352 (= e!3815406 (Union!16192 (h!71199 (unfocusZipperList!1613 zl!343)) (generalisedUnion!2036 (t!378433 (unfocusZipperList!1613 zl!343)))))))

(declare-fun b!6273353 () Bool)

(declare-fun e!3815403 () Regex!16192)

(assert (=> b!6273353 (= e!3815403 (h!71199 (unfocusZipperList!1613 zl!343)))))

(declare-fun b!6273354 () Bool)

(declare-fun e!3815405 () Bool)

(declare-fun e!3815404 () Bool)

(assert (=> b!6273354 (= e!3815405 e!3815404)))

(declare-fun c!1137001 () Bool)

(assert (=> b!6273354 (= c!1137001 (isEmpty!36789 (unfocusZipperList!1613 zl!343)))))

(declare-fun b!6273355 () Bool)

(assert (=> b!6273355 (= e!3815403 e!3815406)))

(declare-fun c!1137003 () Bool)

(assert (=> b!6273355 (= c!1137003 (is-Cons!64751 (unfocusZipperList!1613 zl!343)))))

(declare-fun b!6273356 () Bool)

(declare-fun lt!2352610 () Regex!16192)

(declare-fun isEmptyLang!1606 (Regex!16192) Bool)

(assert (=> b!6273356 (= e!3815404 (isEmptyLang!1606 lt!2352610))))

(assert (=> d!1968940 e!3815405))

(declare-fun res!2587640 () Bool)

(assert (=> d!1968940 (=> (not res!2587640) (not e!3815405))))

(assert (=> d!1968940 (= res!2587640 (validRegex!7928 lt!2352610))))

(assert (=> d!1968940 (= lt!2352610 e!3815403)))

(declare-fun c!1137002 () Bool)

(declare-fun e!3815402 () Bool)

(assert (=> d!1968940 (= c!1137002 e!3815402)))

(declare-fun res!2587639 () Bool)

(assert (=> d!1968940 (=> (not res!2587639) (not e!3815402))))

(assert (=> d!1968940 (= res!2587639 (is-Cons!64751 (unfocusZipperList!1613 zl!343)))))

(assert (=> d!1968940 (forall!15322 (unfocusZipperList!1613 zl!343) lambda!343736)))

(assert (=> d!1968940 (= (generalisedUnion!2036 (unfocusZipperList!1613 zl!343)) lt!2352610)))

(declare-fun b!6273357 () Bool)

(declare-fun e!3815407 () Bool)

(assert (=> b!6273357 (= e!3815404 e!3815407)))

(declare-fun c!1137004 () Bool)

(assert (=> b!6273357 (= c!1137004 (isEmpty!36789 (tail!11970 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6273358 () Bool)

(assert (=> b!6273358 (= e!3815406 EmptyLang!16192)))

(declare-fun b!6273359 () Bool)

(assert (=> b!6273359 (= e!3815407 (= lt!2352610 (head!12885 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6273360 () Bool)

(declare-fun isUnion!1036 (Regex!16192) Bool)

(assert (=> b!6273360 (= e!3815407 (isUnion!1036 lt!2352610))))

(declare-fun b!6273361 () Bool)

(assert (=> b!6273361 (= e!3815402 (isEmpty!36789 (t!378433 (unfocusZipperList!1613 zl!343))))))

(assert (= (and d!1968940 res!2587639) b!6273361))

(assert (= (and d!1968940 c!1137002) b!6273353))

(assert (= (and d!1968940 (not c!1137002)) b!6273355))

(assert (= (and b!6273355 c!1137003) b!6273352))

(assert (= (and b!6273355 (not c!1137003)) b!6273358))

(assert (= (and d!1968940 res!2587640) b!6273354))

(assert (= (and b!6273354 c!1137001) b!6273356))

(assert (= (and b!6273354 (not c!1137001)) b!6273357))

(assert (= (and b!6273357 c!1137004) b!6273359))

(assert (= (and b!6273357 (not c!1137004)) b!6273360))

(assert (=> b!6273359 m!7094386))

(declare-fun m!7094980 () Bool)

(assert (=> b!6273359 m!7094980))

(declare-fun m!7094982 () Bool)

(assert (=> d!1968940 m!7094982))

(assert (=> d!1968940 m!7094386))

(declare-fun m!7094984 () Bool)

(assert (=> d!1968940 m!7094984))

(declare-fun m!7094986 () Bool)

(assert (=> b!6273360 m!7094986))

(declare-fun m!7094988 () Bool)

(assert (=> b!6273361 m!7094988))

(declare-fun m!7094990 () Bool)

(assert (=> b!6273352 m!7094990))

(declare-fun m!7094992 () Bool)

(assert (=> b!6273356 m!7094992))

(assert (=> b!6273357 m!7094386))

(declare-fun m!7094994 () Bool)

(assert (=> b!6273357 m!7094994))

(assert (=> b!6273357 m!7094994))

(declare-fun m!7094996 () Bool)

(assert (=> b!6273357 m!7094996))

(assert (=> b!6273354 m!7094386))

(declare-fun m!7094998 () Bool)

(assert (=> b!6273354 m!7094998))

(assert (=> b!6272775 d!1968940))

(declare-fun bs!1566701 () Bool)

(declare-fun d!1968942 () Bool)

(assert (= bs!1566701 (and d!1968942 d!1968922)))

(declare-fun lambda!343739 () Int)

(assert (=> bs!1566701 (= lambda!343739 lambda!343732)))

(declare-fun bs!1566702 () Bool)

(assert (= bs!1566702 (and d!1968942 d!1968940)))

(assert (=> bs!1566702 (= lambda!343739 lambda!343736)))

(declare-fun bs!1566703 () Bool)

(assert (= bs!1566703 (and d!1968942 d!1968924)))

(assert (=> bs!1566703 (= lambda!343739 lambda!343733)))

(declare-fun bs!1566704 () Bool)

(assert (= bs!1566704 (and d!1968942 d!1968914)))

(assert (=> bs!1566704 (= lambda!343739 lambda!343729)))

(declare-fun bs!1566705 () Bool)

(assert (= bs!1566705 (and d!1968942 d!1968854)))

(assert (=> bs!1566705 (= lambda!343739 lambda!343697)))

(declare-fun bs!1566706 () Bool)

(assert (= bs!1566706 (and d!1968942 d!1968828)))

(assert (=> bs!1566706 (= lambda!343739 lambda!343694)))

(declare-fun lt!2352613 () List!64875)

(assert (=> d!1968942 (forall!15322 lt!2352613 lambda!343739)))

(declare-fun e!3815410 () List!64875)

(assert (=> d!1968942 (= lt!2352613 e!3815410)))

(declare-fun c!1137007 () Bool)

(assert (=> d!1968942 (= c!1137007 (is-Cons!64753 zl!343))))

(assert (=> d!1968942 (= (unfocusZipperList!1613 zl!343) lt!2352613)))

(declare-fun b!6273366 () Bool)

(assert (=> b!6273366 (= e!3815410 (Cons!64751 (generalisedConcat!1789 (exprs!6076 (h!71201 zl!343))) (unfocusZipperList!1613 (t!378435 zl!343))))))

(declare-fun b!6273367 () Bool)

(assert (=> b!6273367 (= e!3815410 Nil!64751)))

(assert (= (and d!1968942 c!1137007) b!6273366))

(assert (= (and d!1968942 (not c!1137007)) b!6273367))

(declare-fun m!7095000 () Bool)

(assert (=> d!1968942 m!7095000))

(assert (=> b!6273366 m!7094376))

(declare-fun m!7095002 () Bool)

(assert (=> b!6273366 m!7095002))

(assert (=> b!6272775 d!1968942))

(declare-fun d!1968944 () Bool)

(declare-fun c!1137008 () Bool)

(assert (=> d!1968944 (= c!1137008 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815411 () Bool)

(assert (=> d!1968944 (= (matchZipper!2204 lt!2352419 (t!378434 s!2326)) e!3815411)))

(declare-fun b!6273368 () Bool)

(assert (=> b!6273368 (= e!3815411 (nullableZipper!1962 lt!2352419))))

(declare-fun b!6273369 () Bool)

(assert (=> b!6273369 (= e!3815411 (matchZipper!2204 (derivationStepZipper!2158 lt!2352419 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968944 c!1137008) b!6273368))

(assert (= (and d!1968944 (not c!1137008)) b!6273369))

(assert (=> d!1968944 m!7094628))

(declare-fun m!7095004 () Bool)

(assert (=> b!6273368 m!7095004))

(assert (=> b!6273369 m!7094632))

(assert (=> b!6273369 m!7094632))

(declare-fun m!7095006 () Bool)

(assert (=> b!6273369 m!7095006))

(assert (=> b!6273369 m!7094636))

(assert (=> b!6273369 m!7095006))

(assert (=> b!6273369 m!7094636))

(declare-fun m!7095008 () Bool)

(assert (=> b!6273369 m!7095008))

(assert (=> b!6272795 d!1968944))

(declare-fun d!1968946 () Bool)

(assert (=> d!1968946 (= (flatMap!1697 lt!2352408 lambda!343676) (dynLambda!25610 lambda!343676 lt!2352397))))

(declare-fun lt!2352614 () Unit!158099)

(assert (=> d!1968946 (= lt!2352614 (choose!46546 lt!2352408 lt!2352397 lambda!343676))))

(assert (=> d!1968946 (= lt!2352408 (set.insert lt!2352397 (as set.empty (Set Context!11152))))))

(assert (=> d!1968946 (= (lemmaFlatMapOnSingletonSet!1223 lt!2352408 lt!2352397 lambda!343676) lt!2352614)))

(declare-fun b_lambda!238873 () Bool)

(assert (=> (not b_lambda!238873) (not d!1968946)))

(declare-fun bs!1566707 () Bool)

(assert (= bs!1566707 d!1968946))

(assert (=> bs!1566707 m!7094456))

(declare-fun m!7095010 () Bool)

(assert (=> bs!1566707 m!7095010))

(declare-fun m!7095012 () Bool)

(assert (=> bs!1566707 m!7095012))

(assert (=> bs!1566707 m!7094480))

(assert (=> b!6272776 d!1968946))

(assert (=> b!6272776 d!1968858))

(declare-fun d!1968948 () Bool)

(declare-fun c!1137009 () Bool)

(assert (=> d!1968948 (= c!1137009 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815412 () Bool)

(assert (=> d!1968948 (= (matchZipper!2204 lt!2352398 (t!378434 s!2326)) e!3815412)))

(declare-fun b!6273370 () Bool)

(assert (=> b!6273370 (= e!3815412 (nullableZipper!1962 lt!2352398))))

(declare-fun b!6273371 () Bool)

(assert (=> b!6273371 (= e!3815412 (matchZipper!2204 (derivationStepZipper!2158 lt!2352398 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968948 c!1137009) b!6273370))

(assert (= (and d!1968948 (not c!1137009)) b!6273371))

(assert (=> d!1968948 m!7094628))

(declare-fun m!7095014 () Bool)

(assert (=> b!6273370 m!7095014))

(assert (=> b!6273371 m!7094632))

(assert (=> b!6273371 m!7094632))

(declare-fun m!7095016 () Bool)

(assert (=> b!6273371 m!7095016))

(assert (=> b!6273371 m!7094636))

(assert (=> b!6273371 m!7095016))

(assert (=> b!6273371 m!7094636))

(declare-fun m!7095018 () Bool)

(assert (=> b!6273371 m!7095018))

(assert (=> b!6272776 d!1968948))

(declare-fun d!1968950 () Bool)

(declare-fun c!1137010 () Bool)

(assert (=> d!1968950 (= c!1137010 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815413 () Bool)

(assert (=> d!1968950 (= (matchZipper!2204 lt!2352395 (t!378434 s!2326)) e!3815413)))

(declare-fun b!6273372 () Bool)

(assert (=> b!6273372 (= e!3815413 (nullableZipper!1962 lt!2352395))))

(declare-fun b!6273373 () Bool)

(assert (=> b!6273373 (= e!3815413 (matchZipper!2204 (derivationStepZipper!2158 lt!2352395 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1968950 c!1137010) b!6273372))

(assert (= (and d!1968950 (not c!1137010)) b!6273373))

(assert (=> d!1968950 m!7094628))

(declare-fun m!7095020 () Bool)

(assert (=> b!6273372 m!7095020))

(assert (=> b!6273373 m!7094632))

(assert (=> b!6273373 m!7094632))

(declare-fun m!7095022 () Bool)

(assert (=> b!6273373 m!7095022))

(assert (=> b!6273373 m!7094636))

(assert (=> b!6273373 m!7095022))

(assert (=> b!6273373 m!7094636))

(declare-fun m!7095024 () Bool)

(assert (=> b!6273373 m!7095024))

(assert (=> b!6272776 d!1968950))

(declare-fun d!1968952 () Bool)

(assert (=> d!1968952 (= (flatMap!1697 lt!2352408 lambda!343676) (choose!46545 lt!2352408 lambda!343676))))

(declare-fun bs!1566708 () Bool)

(assert (= bs!1566708 d!1968952))

(declare-fun m!7095026 () Bool)

(assert (=> bs!1566708 m!7095026))

(assert (=> b!6272776 d!1968952))

(declare-fun e!3815414 () Bool)

(declare-fun d!1968954 () Bool)

(assert (=> d!1968954 (= (matchZipper!2204 (set.union lt!2352401 lt!2352421) (t!378434 s!2326)) e!3815414)))

(declare-fun res!2587641 () Bool)

(assert (=> d!1968954 (=> res!2587641 e!3815414)))

(assert (=> d!1968954 (= res!2587641 (matchZipper!2204 lt!2352401 (t!378434 s!2326)))))

(declare-fun lt!2352615 () Unit!158099)

(assert (=> d!1968954 (= lt!2352615 (choose!46544 lt!2352401 lt!2352421 (t!378434 s!2326)))))

(assert (=> d!1968954 (= (lemmaZipperConcatMatchesSameAsBothZippers!1023 lt!2352401 lt!2352421 (t!378434 s!2326)) lt!2352615)))

(declare-fun b!6273374 () Bool)

(assert (=> b!6273374 (= e!3815414 (matchZipper!2204 lt!2352421 (t!378434 s!2326)))))

(assert (= (and d!1968954 (not res!2587641)) b!6273374))

(declare-fun m!7095028 () Bool)

(assert (=> d!1968954 m!7095028))

(assert (=> d!1968954 m!7094362))

(declare-fun m!7095030 () Bool)

(assert (=> d!1968954 m!7095030))

(assert (=> b!6273374 m!7094378))

(assert (=> b!6272776 d!1968954))

(declare-fun b!6273382 () Bool)

(declare-fun e!3815420 () Bool)

(declare-fun tp!1749271 () Bool)

(assert (=> b!6273382 (= e!3815420 tp!1749271)))

(declare-fun e!3815419 () Bool)

(declare-fun b!6273381 () Bool)

(declare-fun tp!1749272 () Bool)

(assert (=> b!6273381 (= e!3815419 (and (inv!83728 (h!71201 (t!378435 zl!343))) e!3815420 tp!1749272))))

(assert (=> b!6272773 (= tp!1749236 e!3815419)))

(assert (= b!6273381 b!6273382))

(assert (= (and b!6272773 (is-Cons!64753 (t!378435 zl!343))) b!6273381))

(declare-fun m!7095032 () Bool)

(assert (=> b!6273381 m!7095032))

(declare-fun b!6273387 () Bool)

(declare-fun e!3815423 () Bool)

(declare-fun tp!1749275 () Bool)

(assert (=> b!6273387 (= e!3815423 (and tp_is_empty!41637 tp!1749275))))

(assert (=> b!6272793 (= tp!1749234 e!3815423)))

(assert (= (and b!6272793 (is-Cons!64752 (t!378434 s!2326))) b!6273387))

(declare-fun e!3815426 () Bool)

(assert (=> b!6272769 (= tp!1749230 e!3815426)))

(declare-fun b!6273401 () Bool)

(declare-fun tp!1749288 () Bool)

(declare-fun tp!1749289 () Bool)

(assert (=> b!6273401 (= e!3815426 (and tp!1749288 tp!1749289))))

(declare-fun b!6273399 () Bool)

(declare-fun tp!1749287 () Bool)

(declare-fun tp!1749290 () Bool)

(assert (=> b!6273399 (= e!3815426 (and tp!1749287 tp!1749290))))

(declare-fun b!6273400 () Bool)

(declare-fun tp!1749286 () Bool)

(assert (=> b!6273400 (= e!3815426 tp!1749286)))

(declare-fun b!6273398 () Bool)

(assert (=> b!6273398 (= e!3815426 tp_is_empty!41637)))

(assert (= (and b!6272769 (is-ElementMatch!16192 (regOne!32896 r!7292))) b!6273398))

(assert (= (and b!6272769 (is-Concat!25037 (regOne!32896 r!7292))) b!6273399))

(assert (= (and b!6272769 (is-Star!16192 (regOne!32896 r!7292))) b!6273400))

(assert (= (and b!6272769 (is-Union!16192 (regOne!32896 r!7292))) b!6273401))

(declare-fun e!3815427 () Bool)

(assert (=> b!6272769 (= tp!1749228 e!3815427)))

(declare-fun b!6273405 () Bool)

(declare-fun tp!1749293 () Bool)

(declare-fun tp!1749294 () Bool)

(assert (=> b!6273405 (= e!3815427 (and tp!1749293 tp!1749294))))

(declare-fun b!6273403 () Bool)

(declare-fun tp!1749292 () Bool)

(declare-fun tp!1749295 () Bool)

(assert (=> b!6273403 (= e!3815427 (and tp!1749292 tp!1749295))))

(declare-fun b!6273404 () Bool)

(declare-fun tp!1749291 () Bool)

(assert (=> b!6273404 (= e!3815427 tp!1749291)))

(declare-fun b!6273402 () Bool)

(assert (=> b!6273402 (= e!3815427 tp_is_empty!41637)))

(assert (= (and b!6272769 (is-ElementMatch!16192 (regTwo!32896 r!7292))) b!6273402))

(assert (= (and b!6272769 (is-Concat!25037 (regTwo!32896 r!7292))) b!6273403))

(assert (= (and b!6272769 (is-Star!16192 (regTwo!32896 r!7292))) b!6273404))

(assert (= (and b!6272769 (is-Union!16192 (regTwo!32896 r!7292))) b!6273405))

(declare-fun e!3815428 () Bool)

(assert (=> b!6272765 (= tp!1749227 e!3815428)))

(declare-fun b!6273409 () Bool)

(declare-fun tp!1749298 () Bool)

(declare-fun tp!1749299 () Bool)

(assert (=> b!6273409 (= e!3815428 (and tp!1749298 tp!1749299))))

(declare-fun b!6273407 () Bool)

(declare-fun tp!1749297 () Bool)

(declare-fun tp!1749300 () Bool)

(assert (=> b!6273407 (= e!3815428 (and tp!1749297 tp!1749300))))

(declare-fun b!6273408 () Bool)

(declare-fun tp!1749296 () Bool)

(assert (=> b!6273408 (= e!3815428 tp!1749296)))

(declare-fun b!6273406 () Bool)

(assert (=> b!6273406 (= e!3815428 tp_is_empty!41637)))

(assert (= (and b!6272765 (is-ElementMatch!16192 (reg!16521 r!7292))) b!6273406))

(assert (= (and b!6272765 (is-Concat!25037 (reg!16521 r!7292))) b!6273407))

(assert (= (and b!6272765 (is-Star!16192 (reg!16521 r!7292))) b!6273408))

(assert (= (and b!6272765 (is-Union!16192 (reg!16521 r!7292))) b!6273409))

(declare-fun e!3815429 () Bool)

(assert (=> b!6272796 (= tp!1749229 e!3815429)))

(declare-fun b!6273413 () Bool)

(declare-fun tp!1749303 () Bool)

(declare-fun tp!1749304 () Bool)

(assert (=> b!6273413 (= e!3815429 (and tp!1749303 tp!1749304))))

(declare-fun b!6273411 () Bool)

(declare-fun tp!1749302 () Bool)

(declare-fun tp!1749305 () Bool)

(assert (=> b!6273411 (= e!3815429 (and tp!1749302 tp!1749305))))

(declare-fun b!6273412 () Bool)

(declare-fun tp!1749301 () Bool)

(assert (=> b!6273412 (= e!3815429 tp!1749301)))

(declare-fun b!6273410 () Bool)

(assert (=> b!6273410 (= e!3815429 tp_is_empty!41637)))

(assert (= (and b!6272796 (is-ElementMatch!16192 (regOne!32897 r!7292))) b!6273410))

(assert (= (and b!6272796 (is-Concat!25037 (regOne!32897 r!7292))) b!6273411))

(assert (= (and b!6272796 (is-Star!16192 (regOne!32897 r!7292))) b!6273412))

(assert (= (and b!6272796 (is-Union!16192 (regOne!32897 r!7292))) b!6273413))

(declare-fun e!3815430 () Bool)

(assert (=> b!6272796 (= tp!1749231 e!3815430)))

(declare-fun b!6273417 () Bool)

(declare-fun tp!1749308 () Bool)

(declare-fun tp!1749309 () Bool)

(assert (=> b!6273417 (= e!3815430 (and tp!1749308 tp!1749309))))

(declare-fun b!6273415 () Bool)

(declare-fun tp!1749307 () Bool)

(declare-fun tp!1749310 () Bool)

(assert (=> b!6273415 (= e!3815430 (and tp!1749307 tp!1749310))))

(declare-fun b!6273416 () Bool)

(declare-fun tp!1749306 () Bool)

(assert (=> b!6273416 (= e!3815430 tp!1749306)))

(declare-fun b!6273414 () Bool)

(assert (=> b!6273414 (= e!3815430 tp_is_empty!41637)))

(assert (= (and b!6272796 (is-ElementMatch!16192 (regTwo!32897 r!7292))) b!6273414))

(assert (= (and b!6272796 (is-Concat!25037 (regTwo!32897 r!7292))) b!6273415))

(assert (= (and b!6272796 (is-Star!16192 (regTwo!32897 r!7292))) b!6273416))

(assert (= (and b!6272796 (is-Union!16192 (regTwo!32897 r!7292))) b!6273417))

(declare-fun b!6273422 () Bool)

(declare-fun e!3815433 () Bool)

(declare-fun tp!1749315 () Bool)

(declare-fun tp!1749316 () Bool)

(assert (=> b!6273422 (= e!3815433 (and tp!1749315 tp!1749316))))

(assert (=> b!6272780 (= tp!1749232 e!3815433)))

(assert (= (and b!6272780 (is-Cons!64751 (exprs!6076 (h!71201 zl!343)))) b!6273422))

(declare-fun condSetEmpty!42671 () Bool)

(assert (=> setNonEmpty!42665 (= condSetEmpty!42671 (= setRest!42665 (as set.empty (Set Context!11152))))))

(declare-fun setRes!42671 () Bool)

(assert (=> setNonEmpty!42665 (= tp!1749233 setRes!42671)))

(declare-fun setIsEmpty!42671 () Bool)

(assert (=> setIsEmpty!42671 setRes!42671))

(declare-fun e!3815436 () Bool)

(declare-fun tp!1749321 () Bool)

(declare-fun setNonEmpty!42671 () Bool)

(declare-fun setElem!42671 () Context!11152)

(assert (=> setNonEmpty!42671 (= setRes!42671 (and tp!1749321 (inv!83728 setElem!42671) e!3815436))))

(declare-fun setRest!42671 () (Set Context!11152))

(assert (=> setNonEmpty!42671 (= setRest!42665 (set.union (set.insert setElem!42671 (as set.empty (Set Context!11152))) setRest!42671))))

(declare-fun b!6273427 () Bool)

(declare-fun tp!1749322 () Bool)

(assert (=> b!6273427 (= e!3815436 tp!1749322)))

(assert (= (and setNonEmpty!42665 condSetEmpty!42671) setIsEmpty!42671))

(assert (= (and setNonEmpty!42665 (not condSetEmpty!42671)) setNonEmpty!42671))

(assert (= setNonEmpty!42671 b!6273427))

(declare-fun m!7095034 () Bool)

(assert (=> setNonEmpty!42671 m!7095034))

(declare-fun b!6273428 () Bool)

(declare-fun e!3815437 () Bool)

(declare-fun tp!1749323 () Bool)

(declare-fun tp!1749324 () Bool)

(assert (=> b!6273428 (= e!3815437 (and tp!1749323 tp!1749324))))

(assert (=> b!6272791 (= tp!1749235 e!3815437)))

(assert (= (and b!6272791 (is-Cons!64751 (exprs!6076 setElem!42665))) b!6273428))

(declare-fun b_lambda!238875 () Bool)

(assert (= b_lambda!238873 (or b!6272771 b_lambda!238875)))

(declare-fun bs!1566709 () Bool)

(declare-fun d!1968956 () Bool)

(assert (= bs!1566709 (and d!1968956 b!6272771)))

(assert (=> bs!1566709 (= (dynLambda!25610 lambda!343676 lt!2352397) (derivationStepZipperUp!1366 lt!2352397 (h!71200 s!2326)))))

(assert (=> bs!1566709 m!7094452))

(assert (=> d!1968946 d!1968956))

(declare-fun b_lambda!238877 () Bool)

(assert (= b_lambda!238869 (or b!6272771 b_lambda!238877)))

(declare-fun bs!1566710 () Bool)

(declare-fun d!1968958 () Bool)

(assert (= bs!1566710 (and d!1968958 b!6272771)))

(assert (=> bs!1566710 (= (dynLambda!25610 lambda!343676 (h!71201 zl!343)) (derivationStepZipperUp!1366 (h!71201 zl!343) (h!71200 s!2326)))))

(assert (=> bs!1566710 m!7094408))

(assert (=> d!1968850 d!1968958))

(declare-fun b_lambda!238879 () Bool)

(assert (= b_lambda!238871 (or b!6272771 b_lambda!238879)))

(declare-fun bs!1566711 () Bool)

(declare-fun d!1968960 () Bool)

(assert (= bs!1566711 (and d!1968960 b!6272771)))

(assert (=> bs!1566711 (= (dynLambda!25610 lambda!343676 lt!2352409) (derivationStepZipperUp!1366 lt!2352409 (h!71200 s!2326)))))

(assert (=> bs!1566711 m!7094474))

(assert (=> d!1968856 d!1968960))

(push 1)

(assert (not d!1968882))

(assert (not b!6273256))

(assert (not bm!530591))

(assert (not b!6273315))

(assert (not d!1968948))

(assert (not d!1968954))

(assert (not b!6273190))

(assert (not d!1968946))

(assert (not b!6273271))

(assert (not b!6273366))

(assert (not b!6273403))

(assert (not b!6273321))

(assert (not d!1968952))

(assert (not b!6273040))

(assert (not bm!530579))

(assert (not b!6273058))

(assert (not d!1968906))

(assert (not b!6273314))

(assert (not b!6273319))

(assert (not b!6273285))

(assert (not bm!530611))

(assert (not b!6272936))

(assert (not b!6273359))

(assert (not d!1968850))

(assert (not d!1968854))

(assert (not b!6273279))

(assert (not b!6273372))

(assert (not b!6273049))

(assert (not bm!530578))

(assert (not d!1968856))

(assert (not b!6273188))

(assert (not b!6273138))

(assert (not bm!530600))

(assert (not d!1968932))

(assert (not b!6273331))

(assert (not bm!530597))

(assert (not b!6273137))

(assert (not bm!530585))

(assert (not b!6273060))

(assert (not d!1968888))

(assert (not bm!530577))

(assert (not bm!530558))

(assert (not b!6272969))

(assert (not bm!530612))

(assert (not d!1968880))

(assert (not d!1968886))

(assert (not b!6272982))

(assert (not bm!530610))

(assert (not d!1968914))

(assert (not b!6273374))

(assert (not bs!1566709))

(assert (not b!6273187))

(assert (not d!1968892))

(assert (not b!6273373))

(assert (not b!6273264))

(assert (not b!6273361))

(assert (not b!6273407))

(assert (not b!6273141))

(assert (not b!6272976))

(assert (not d!1968940))

(assert (not d!1968926))

(assert (not b!6273294))

(assert (not b!6273428))

(assert (not b!6272974))

(assert (not b!6273382))

(assert (not b!6273219))

(assert (not b!6273413))

(assert (not d!1968924))

(assert (not b!6273222))

(assert (not b!6273173))

(assert (not b!6272964))

(assert (not b!6273296))

(assert (not b!6273368))

(assert (not d!1968918))

(assert (not b!6273323))

(assert (not bm!530613))

(assert (not b!6273360))

(assert (not b!6272973))

(assert (not b!6272977))

(assert (not b!6273050))

(assert (not b!6273062))

(assert (not bm!530574))

(assert (not bm!530599))

(assert (not bm!530572))

(assert (not b!6272937))

(assert (not b!6273169))

(assert (not d!1968896))

(assert (not b!6273274))

(assert (not b!6273282))

(assert tp_is_empty!41637)

(assert (not d!1968874))

(assert (not setNonEmpty!42671))

(assert (not d!1968942))

(assert (not d!1968884))

(assert (not b!6273411))

(assert (not b!6273044))

(assert (not b!6273272))

(assert (not b!6273168))

(assert (not b!6273039))

(assert (not d!1968844))

(assert (not b!6273354))

(assert (not b!6273139))

(assert (not bm!530616))

(assert (not b!6273298))

(assert (not d!1968862))

(assert (not bm!530575))

(assert (not d!1968950))

(assert (not b!6273277))

(assert (not b!6273287))

(assert (not b!6273320))

(assert (not d!1968934))

(assert (not d!1968938))

(assert (not d!1968834))

(assert (not b!6273286))

(assert (not b!6273171))

(assert (not b!6273174))

(assert (not d!1968864))

(assert (not b!6273408))

(assert (not b!6272966))

(assert (not d!1968928))

(assert (not d!1968828))

(assert (not b_lambda!238877))

(assert (not b!6273268))

(assert (not b!6273325))

(assert (not b!6273035))

(assert (not b!6272997))

(assert (not b!6273306))

(assert (not b!6273103))

(assert (not b!6273405))

(assert (not bm!530580))

(assert (not b!6273056))

(assert (not b!6273316))

(assert (not b!6273352))

(assert (not bm!530589))

(assert (not d!1968944))

(assert (not b!6273330))

(assert (not b!6272984))

(assert (not d!1968870))

(assert (not b!6273134))

(assert (not b!6273387))

(assert (not b!6273357))

(assert (not b!6273057))

(assert (not d!1968872))

(assert (not b!6273289))

(assert (not b!6273059))

(assert (not d!1968876))

(assert (not b!6273400))

(assert (not b_lambda!238879))

(assert (not b!6273381))

(assert (not b!6273143))

(assert (not d!1968894))

(assert (not b!6273291))

(assert (not b!6273416))

(assert (not d!1968824))

(assert (not b!6273295))

(assert (not b!6273371))

(assert (not bs!1566711))

(assert (not b!6273404))

(assert (not bm!530594))

(assert (not b!6273281))

(assert (not d!1968842))

(assert (not b!6273356))

(assert (not b!6273258))

(assert (not d!1968832))

(assert (not bm!530608))

(assert (not b!6273275))

(assert (not bm!530586))

(assert (not d!1968922))

(assert (not b!6273224))

(assert (not b!6273217))

(assert (not b!6273166))

(assert (not b_lambda!238875))

(assert (not b!6273399))

(assert (not b!6272965))

(assert (not b!6273276))

(assert (not b!6273045))

(assert (not bm!530617))

(assert (not b!6273244))

(assert (not b!6273401))

(assert (not b!6273412))

(assert (not b!6273369))

(assert (not d!1968822))

(assert (not d!1968890))

(assert (not b!6273370))

(assert (not d!1968936))

(assert (not b!6273099))

(assert (not b!6273201))

(assert (not b!6273024))

(assert (not d!1968868))

(assert (not b!6273284))

(assert (not b!6272996))

(assert (not bm!530614))

(assert (not d!1968916))

(assert (not b!6273415))

(assert (not b!6273061))

(assert (not b!6273422))

(assert (not b!6273427))

(assert (not b!6272961))

(assert (not b!6272962))

(assert (not b!6273417))

(assert (not bm!530593))

(assert (not b!6273300))

(assert (not b!6272975))

(assert (not b!6273034))

(assert (not bs!1566710))

(assert (not b!6272967))

(assert (not b!6272940))

(assert (not b!6273409))

(assert (not d!1968830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1969102 () Bool)

(assert (=> d!1969102 true))

(declare-fun setRes!42677 () Bool)

(assert (=> d!1969102 setRes!42677))

(declare-fun condSetEmpty!42677 () Bool)

(declare-fun res!2587793 () (Set Context!11152))

(assert (=> d!1969102 (= condSetEmpty!42677 (= res!2587793 (as set.empty (Set Context!11152))))))

(assert (=> d!1969102 (= (choose!46545 z!1189 lambda!343676) res!2587793)))

(declare-fun setIsEmpty!42677 () Bool)

(assert (=> setIsEmpty!42677 setRes!42677))

(declare-fun setNonEmpty!42677 () Bool)

(declare-fun e!3815719 () Bool)

(declare-fun setElem!42677 () Context!11152)

(declare-fun tp!1749388 () Bool)

(assert (=> setNonEmpty!42677 (= setRes!42677 (and tp!1749388 (inv!83728 setElem!42677) e!3815719))))

(declare-fun setRest!42677 () (Set Context!11152))

(assert (=> setNonEmpty!42677 (= res!2587793 (set.union (set.insert setElem!42677 (as set.empty (Set Context!11152))) setRest!42677))))

(declare-fun b!6273928 () Bool)

(declare-fun tp!1749387 () Bool)

(assert (=> b!6273928 (= e!3815719 tp!1749387)))

(assert (= (and d!1969102 condSetEmpty!42677) setIsEmpty!42677))

(assert (= (and d!1969102 (not condSetEmpty!42677)) setNonEmpty!42677))

(assert (= setNonEmpty!42677 b!6273928))

(declare-fun m!7095444 () Bool)

(assert (=> setNonEmpty!42677 m!7095444))

(assert (=> d!1968842 d!1969102))

(declare-fun d!1969104 () Bool)

(assert (=> d!1969104 (= (head!12885 (unfocusZipperList!1613 zl!343)) (h!71199 (unfocusZipperList!1613 zl!343)))))

(assert (=> b!6273359 d!1969104))

(declare-fun d!1969106 () Bool)

(assert (=> d!1969106 (= (isEmpty!36792 s!2326) (is-Nil!64752 s!2326))))

(assert (=> d!1968926 d!1969106))

(declare-fun b!6273929 () Bool)

(declare-fun e!3815725 () Bool)

(declare-fun call!530685 () Bool)

(assert (=> b!6273929 (= e!3815725 call!530685)))

(declare-fun b!6273930 () Bool)

(declare-fun e!3815724 () Bool)

(declare-fun e!3815721 () Bool)

(assert (=> b!6273930 (= e!3815724 e!3815721)))

(declare-fun res!2587797 () Bool)

(assert (=> b!6273930 (= res!2587797 (not (nullable!6185 (reg!16521 lt!2352391))))))

(assert (=> b!6273930 (=> (not res!2587797) (not e!3815721))))

(declare-fun c!1137165 () Bool)

(declare-fun c!1137166 () Bool)

(declare-fun call!530687 () Bool)

(declare-fun bm!530680 () Bool)

(assert (=> bm!530680 (= call!530687 (validRegex!7928 (ite c!1137165 (reg!16521 lt!2352391) (ite c!1137166 (regOne!32897 lt!2352391) (regOne!32896 lt!2352391)))))))

(declare-fun b!6273931 () Bool)

(declare-fun e!3815726 () Bool)

(assert (=> b!6273931 (= e!3815726 e!3815724)))

(assert (=> b!6273931 (= c!1137165 (is-Star!16192 lt!2352391))))

(declare-fun b!6273932 () Bool)

(declare-fun e!3815723 () Bool)

(assert (=> b!6273932 (= e!3815724 e!3815723)))

(assert (=> b!6273932 (= c!1137166 (is-Union!16192 lt!2352391))))

(declare-fun d!1969108 () Bool)

(declare-fun res!2587794 () Bool)

(assert (=> d!1969108 (=> res!2587794 e!3815726)))

(assert (=> d!1969108 (= res!2587794 (is-ElementMatch!16192 lt!2352391))))

(assert (=> d!1969108 (= (validRegex!7928 lt!2352391) e!3815726)))

(declare-fun bm!530681 () Bool)

(declare-fun call!530686 () Bool)

(assert (=> bm!530681 (= call!530686 call!530687)))

(declare-fun b!6273933 () Bool)

(declare-fun res!2587796 () Bool)

(declare-fun e!3815722 () Bool)

(assert (=> b!6273933 (=> res!2587796 e!3815722)))

(assert (=> b!6273933 (= res!2587796 (not (is-Concat!25037 lt!2352391)))))

(assert (=> b!6273933 (= e!3815723 e!3815722)))

(declare-fun b!6273934 () Bool)

(declare-fun e!3815720 () Bool)

(assert (=> b!6273934 (= e!3815722 e!3815720)))

(declare-fun res!2587795 () Bool)

(assert (=> b!6273934 (=> (not res!2587795) (not e!3815720))))

(assert (=> b!6273934 (= res!2587795 call!530686)))

(declare-fun b!6273935 () Bool)

(assert (=> b!6273935 (= e!3815721 call!530687)))

(declare-fun bm!530682 () Bool)

(assert (=> bm!530682 (= call!530685 (validRegex!7928 (ite c!1137166 (regTwo!32897 lt!2352391) (regTwo!32896 lt!2352391))))))

(declare-fun b!6273936 () Bool)

(assert (=> b!6273936 (= e!3815720 call!530685)))

(declare-fun b!6273937 () Bool)

(declare-fun res!2587798 () Bool)

(assert (=> b!6273937 (=> (not res!2587798) (not e!3815725))))

(assert (=> b!6273937 (= res!2587798 call!530686)))

(assert (=> b!6273937 (= e!3815723 e!3815725)))

(assert (= (and d!1969108 (not res!2587794)) b!6273931))

(assert (= (and b!6273931 c!1137165) b!6273930))

(assert (= (and b!6273931 (not c!1137165)) b!6273932))

(assert (= (and b!6273930 res!2587797) b!6273935))

(assert (= (and b!6273932 c!1137166) b!6273937))

(assert (= (and b!6273932 (not c!1137166)) b!6273933))

(assert (= (and b!6273937 res!2587798) b!6273929))

(assert (= (and b!6273933 (not res!2587796)) b!6273934))

(assert (= (and b!6273934 res!2587795) b!6273936))

(assert (= (or b!6273929 b!6273936) bm!530682))

(assert (= (or b!6273937 b!6273934) bm!530681))

(assert (= (or b!6273935 bm!530681) bm!530680))

(declare-fun m!7095446 () Bool)

(assert (=> b!6273930 m!7095446))

(declare-fun m!7095448 () Bool)

(assert (=> bm!530680 m!7095448))

(declare-fun m!7095450 () Bool)

(assert (=> bm!530682 m!7095450))

(assert (=> d!1968926 d!1969108))

(declare-fun d!1969110 () Bool)

(assert (=> d!1969110 (= (nullable!6185 (reg!16521 r!7292)) (nullableFct!2137 (reg!16521 r!7292)))))

(declare-fun bs!1566788 () Bool)

(assert (= bs!1566788 d!1969110))

(declare-fun m!7095452 () Bool)

(assert (=> bs!1566788 m!7095452))

(assert (=> b!6273244 d!1969110))

(declare-fun d!1969112 () Bool)

(assert (=> d!1969112 (= (nullable!6185 lt!2352391) (nullableFct!2137 lt!2352391))))

(declare-fun bs!1566789 () Bool)

(assert (= bs!1566789 d!1969112))

(declare-fun m!7095454 () Bool)

(assert (=> bs!1566789 m!7095454))

(assert (=> b!6273291 d!1969112))

(declare-fun bs!1566790 () Bool)

(declare-fun d!1969114 () Bool)

(assert (= bs!1566790 (and d!1969114 b!6273217)))

(declare-fun lambda!343790 () Int)

(assert (=> bs!1566790 (not (= lambda!343790 lambda!343724))))

(declare-fun bs!1566791 () Bool)

(assert (= bs!1566791 (and d!1969114 b!6273219)))

(assert (=> bs!1566791 (not (= lambda!343790 lambda!343725))))

(declare-fun bs!1566792 () Bool)

(assert (= bs!1566792 (and d!1969114 b!6273222)))

(assert (=> bs!1566792 (not (= lambda!343790 lambda!343727))))

(declare-fun bs!1566793 () Bool)

(assert (= bs!1566793 (and d!1969114 b!6273224)))

(assert (=> bs!1566793 (not (= lambda!343790 lambda!343728))))

(declare-fun exists!2524 ((Set Context!11152) Int) Bool)

(assert (=> d!1969114 (= (nullableZipper!1962 lt!2352420) (exists!2524 lt!2352420 lambda!343790))))

(declare-fun bs!1566794 () Bool)

(assert (= bs!1566794 d!1969114))

(declare-fun m!7095456 () Bool)

(assert (=> bs!1566794 m!7095456))

(assert (=> b!6272974 d!1969114))

(declare-fun d!1969116 () Bool)

(assert (=> d!1969116 (= (isDefined!12786 lt!2352569) (not (isEmpty!36793 lt!2352569)))))

(declare-fun bs!1566795 () Bool)

(assert (= bs!1566795 d!1969116))

(declare-fun m!7095458 () Bool)

(assert (=> bs!1566795 m!7095458))

(assert (=> b!6273173 d!1969116))

(declare-fun bs!1566796 () Bool)

(declare-fun d!1969118 () Bool)

(assert (= bs!1566796 (and d!1969118 d!1968922)))

(declare-fun lambda!343791 () Int)

(assert (=> bs!1566796 (= lambda!343791 lambda!343732)))

(declare-fun bs!1566797 () Bool)

(assert (= bs!1566797 (and d!1969118 d!1968940)))

(assert (=> bs!1566797 (= lambda!343791 lambda!343736)))

(declare-fun bs!1566798 () Bool)

(assert (= bs!1566798 (and d!1969118 d!1968942)))

(assert (=> bs!1566798 (= lambda!343791 lambda!343739)))

(declare-fun bs!1566799 () Bool)

(assert (= bs!1566799 (and d!1969118 d!1968924)))

(assert (=> bs!1566799 (= lambda!343791 lambda!343733)))

(declare-fun bs!1566800 () Bool)

(assert (= bs!1566800 (and d!1969118 d!1968914)))

(assert (=> bs!1566800 (= lambda!343791 lambda!343729)))

(declare-fun bs!1566801 () Bool)

(assert (= bs!1566801 (and d!1969118 d!1968854)))

(assert (=> bs!1566801 (= lambda!343791 lambda!343697)))

(declare-fun bs!1566802 () Bool)

(assert (= bs!1566802 (and d!1969118 d!1968828)))

(assert (=> bs!1566802 (= lambda!343791 lambda!343694)))

(assert (=> d!1969118 (= (inv!83728 (h!71201 (t!378435 zl!343))) (forall!15322 (exprs!6076 (h!71201 (t!378435 zl!343))) lambda!343791))))

(declare-fun bs!1566803 () Bool)

(assert (= bs!1566803 d!1969118))

(declare-fun m!7095460 () Bool)

(assert (=> bs!1566803 m!7095460))

(assert (=> b!6273381 d!1969118))

(declare-fun d!1969120 () Bool)

(assert (=> d!1969120 (= (isEmpty!36792 (tail!11969 s!2326)) (is-Nil!64752 (tail!11969 s!2326)))))

(assert (=> b!6273320 d!1969120))

(declare-fun d!1969122 () Bool)

(assert (=> d!1969122 (= (tail!11969 s!2326) (t!378434 s!2326))))

(assert (=> b!6273320 d!1969122))

(declare-fun bs!1566804 () Bool)

(declare-fun b!6273943 () Bool)

(assert (= bs!1566804 (and b!6273943 b!6273102)))

(declare-fun lambda!343792 () Int)

(assert (=> bs!1566804 (not (= lambda!343792 lambda!343707))))

(declare-fun bs!1566805 () Bool)

(assert (= bs!1566805 (and b!6273943 d!1968890)))

(assert (=> bs!1566805 (not (= lambda!343792 lambda!343710))))

(declare-fun bs!1566806 () Bool)

(assert (= bs!1566806 (and b!6273943 b!6272766)))

(assert (=> bs!1566806 (not (= lambda!343792 lambda!343675))))

(declare-fun bs!1566807 () Bool)

(assert (= bs!1566807 (and b!6273943 b!6273100)))

(assert (=> bs!1566807 (= (and (= (reg!16521 (regTwo!32897 lt!2352400)) (reg!16521 r!7292)) (= (regTwo!32897 lt!2352400) r!7292)) (= lambda!343792 lambda!343706))))

(declare-fun bs!1566808 () Bool)

(assert (= bs!1566808 (and b!6273943 d!1968892)))

(assert (=> bs!1566808 (not (= lambda!343792 lambda!343716))))

(declare-fun bs!1566809 () Bool)

(assert (= bs!1566809 (and b!6273943 b!6273265)))

(assert (=> bs!1566809 (= (and (= (reg!16521 (regTwo!32897 lt!2352400)) (reg!16521 lt!2352400)) (= (regTwo!32897 lt!2352400) lt!2352400)) (= lambda!343792 lambda!343730))))

(declare-fun bs!1566810 () Bool)

(assert (= bs!1566810 (and b!6273943 b!6273267)))

(assert (=> bs!1566810 (not (= lambda!343792 lambda!343731))))

(assert (=> bs!1566808 (not (= lambda!343792 lambda!343715))))

(assert (=> bs!1566806 (not (= lambda!343792 lambda!343674))))

(assert (=> b!6273943 true))

(assert (=> b!6273943 true))

(declare-fun bs!1566811 () Bool)

(declare-fun b!6273945 () Bool)

(assert (= bs!1566811 (and b!6273945 b!6273102)))

(declare-fun lambda!343793 () Int)

(assert (=> bs!1566811 (= (and (= (regOne!32896 (regTwo!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343793 lambda!343707))))

(declare-fun bs!1566812 () Bool)

(assert (= bs!1566812 (and b!6273945 d!1968890)))

(assert (=> bs!1566812 (not (= lambda!343793 lambda!343710))))

(declare-fun bs!1566813 () Bool)

(assert (= bs!1566813 (and b!6273945 b!6272766)))

(assert (=> bs!1566813 (= (and (= (regOne!32896 (regTwo!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343793 lambda!343675))))

(declare-fun bs!1566814 () Bool)

(assert (= bs!1566814 (and b!6273945 b!6273100)))

(assert (=> bs!1566814 (not (= lambda!343793 lambda!343706))))

(declare-fun bs!1566815 () Bool)

(assert (= bs!1566815 (and b!6273945 b!6273943)))

(assert (=> bs!1566815 (not (= lambda!343793 lambda!343792))))

(declare-fun bs!1566816 () Bool)

(assert (= bs!1566816 (and b!6273945 d!1968892)))

(assert (=> bs!1566816 (= (and (= (regOne!32896 (regTwo!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343793 lambda!343716))))

(declare-fun bs!1566817 () Bool)

(assert (= bs!1566817 (and b!6273945 b!6273265)))

(assert (=> bs!1566817 (not (= lambda!343793 lambda!343730))))

(declare-fun bs!1566818 () Bool)

(assert (= bs!1566818 (and b!6273945 b!6273267)))

(assert (=> bs!1566818 (= (and (= (regOne!32896 (regTwo!32897 lt!2352400)) (regOne!32896 lt!2352400)) (= (regTwo!32896 (regTwo!32897 lt!2352400)) (regTwo!32896 lt!2352400))) (= lambda!343793 lambda!343731))))

(assert (=> bs!1566816 (not (= lambda!343793 lambda!343715))))

(assert (=> bs!1566813 (not (= lambda!343793 lambda!343674))))

(assert (=> b!6273945 true))

(assert (=> b!6273945 true))

(declare-fun b!6273938 () Bool)

(declare-fun res!2587799 () Bool)

(declare-fun e!3815728 () Bool)

(assert (=> b!6273938 (=> res!2587799 e!3815728)))

(declare-fun call!530688 () Bool)

(assert (=> b!6273938 (= res!2587799 call!530688)))

(declare-fun e!3815733 () Bool)

(assert (=> b!6273938 (= e!3815733 e!3815728)))

(declare-fun b!6273939 () Bool)

(declare-fun c!1137171 () Bool)

(assert (=> b!6273939 (= c!1137171 (is-ElementMatch!16192 (regTwo!32897 lt!2352400)))))

(declare-fun e!3815731 () Bool)

(declare-fun e!3815727 () Bool)

(assert (=> b!6273939 (= e!3815731 e!3815727)))

(declare-fun bm!530683 () Bool)

(assert (=> bm!530683 (= call!530688 (isEmpty!36792 s!2326))))

(declare-fun b!6273940 () Bool)

(declare-fun c!1137172 () Bool)

(assert (=> b!6273940 (= c!1137172 (is-Union!16192 (regTwo!32897 lt!2352400)))))

(declare-fun e!3815729 () Bool)

(assert (=> b!6273940 (= e!3815727 e!3815729)))

(declare-fun d!1969124 () Bool)

(declare-fun c!1137169 () Bool)

(assert (=> d!1969124 (= c!1137169 (is-EmptyExpr!16192 (regTwo!32897 lt!2352400)))))

(declare-fun e!3815730 () Bool)

(assert (=> d!1969124 (= (matchRSpec!3293 (regTwo!32897 lt!2352400) s!2326) e!3815730)))

(declare-fun c!1137170 () Bool)

(declare-fun call!530689 () Bool)

(declare-fun bm!530684 () Bool)

(assert (=> bm!530684 (= call!530689 (Exists!3262 (ite c!1137170 lambda!343792 lambda!343793)))))

(declare-fun b!6273941 () Bool)

(assert (=> b!6273941 (= e!3815730 call!530688)))

(declare-fun b!6273942 () Bool)

(declare-fun e!3815732 () Bool)

(assert (=> b!6273942 (= e!3815732 (matchRSpec!3293 (regTwo!32897 (regTwo!32897 lt!2352400)) s!2326))))

(assert (=> b!6273943 (= e!3815728 call!530689)))

(declare-fun b!6273944 () Bool)

(assert (=> b!6273944 (= e!3815730 e!3815731)))

(declare-fun res!2587801 () Bool)

(assert (=> b!6273944 (= res!2587801 (not (is-EmptyLang!16192 (regTwo!32897 lt!2352400))))))

(assert (=> b!6273944 (=> (not res!2587801) (not e!3815731))))

(assert (=> b!6273945 (= e!3815733 call!530689)))

(declare-fun b!6273946 () Bool)

(assert (=> b!6273946 (= e!3815729 e!3815732)))

(declare-fun res!2587800 () Bool)

(assert (=> b!6273946 (= res!2587800 (matchRSpec!3293 (regOne!32897 (regTwo!32897 lt!2352400)) s!2326))))

(assert (=> b!6273946 (=> res!2587800 e!3815732)))

(declare-fun b!6273947 () Bool)

(assert (=> b!6273947 (= e!3815729 e!3815733)))

(assert (=> b!6273947 (= c!1137170 (is-Star!16192 (regTwo!32897 lt!2352400)))))

(declare-fun b!6273948 () Bool)

(assert (=> b!6273948 (= e!3815727 (= s!2326 (Cons!64752 (c!1136845 (regTwo!32897 lt!2352400)) Nil!64752)))))

(assert (= (and d!1969124 c!1137169) b!6273941))

(assert (= (and d!1969124 (not c!1137169)) b!6273944))

(assert (= (and b!6273944 res!2587801) b!6273939))

(assert (= (and b!6273939 c!1137171) b!6273948))

(assert (= (and b!6273939 (not c!1137171)) b!6273940))

(assert (= (and b!6273940 c!1137172) b!6273946))

(assert (= (and b!6273940 (not c!1137172)) b!6273947))

(assert (= (and b!6273946 (not res!2587800)) b!6273942))

(assert (= (and b!6273947 c!1137170) b!6273938))

(assert (= (and b!6273947 (not c!1137170)) b!6273945))

(assert (= (and b!6273938 (not res!2587799)) b!6273943))

(assert (= (or b!6273943 b!6273945) bm!530684))

(assert (= (or b!6273941 b!6273938) bm!530683))

(assert (=> bm!530683 m!7094766))

(declare-fun m!7095462 () Bool)

(assert (=> bm!530684 m!7095462))

(declare-fun m!7095464 () Bool)

(assert (=> b!6273942 m!7095464))

(declare-fun m!7095466 () Bool)

(assert (=> b!6273946 m!7095466))

(assert (=> b!6273264 d!1969124))

(declare-fun d!1969126 () Bool)

(declare-fun c!1137173 () Bool)

(assert (=> d!1969126 (= c!1137173 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun e!3815734 () Bool)

(assert (=> d!1969126 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352408 (head!12884 s!2326)) (tail!11969 s!2326)) e!3815734)))

(declare-fun b!6273949 () Bool)

(assert (=> b!6273949 (= e!3815734 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352408 (head!12884 s!2326))))))

(declare-fun b!6273950 () Bool)

(assert (=> b!6273950 (= e!3815734 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (head!12884 s!2326)) (head!12884 (tail!11969 s!2326))) (tail!11969 (tail!11969 s!2326))))))

(assert (= (and d!1969126 c!1137173) b!6273949))

(assert (= (and d!1969126 (not c!1137173)) b!6273950))

(assert (=> d!1969126 m!7094774))

(assert (=> d!1969126 m!7094776))

(assert (=> b!6273949 m!7094974))

(declare-fun m!7095468 () Bool)

(assert (=> b!6273949 m!7095468))

(assert (=> b!6273950 m!7094774))

(declare-fun m!7095470 () Bool)

(assert (=> b!6273950 m!7095470))

(assert (=> b!6273950 m!7094974))

(assert (=> b!6273950 m!7095470))

(declare-fun m!7095472 () Bool)

(assert (=> b!6273950 m!7095472))

(assert (=> b!6273950 m!7094774))

(declare-fun m!7095474 () Bool)

(assert (=> b!6273950 m!7095474))

(assert (=> b!6273950 m!7095472))

(assert (=> b!6273950 m!7095474))

(declare-fun m!7095476 () Bool)

(assert (=> b!6273950 m!7095476))

(assert (=> b!6273331 d!1969126))

(declare-fun bs!1566819 () Bool)

(declare-fun d!1969128 () Bool)

(assert (= bs!1566819 (and d!1969128 b!6272771)))

(declare-fun lambda!343794 () Int)

(assert (=> bs!1566819 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343794 lambda!343676))))

(declare-fun bs!1566820 () Bool)

(assert (= bs!1566820 (and d!1969128 d!1968862)))

(assert (=> bs!1566820 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343794 lambda!343700))))

(declare-fun bs!1566821 () Bool)

(assert (= bs!1566821 (and d!1969128 d!1968876)))

(assert (=> bs!1566821 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343794 lambda!343701))))

(assert (=> d!1969128 true))

(assert (=> d!1969128 (= (derivationStepZipper!2158 lt!2352408 (head!12884 s!2326)) (flatMap!1697 lt!2352408 lambda!343794))))

(declare-fun bs!1566822 () Bool)

(assert (= bs!1566822 d!1969128))

(declare-fun m!7095478 () Bool)

(assert (=> bs!1566822 m!7095478))

(assert (=> b!6273331 d!1969128))

(declare-fun d!1969130 () Bool)

(assert (=> d!1969130 (= (head!12884 s!2326) (h!71200 s!2326))))

(assert (=> b!6273331 d!1969130))

(assert (=> b!6273331 d!1969122))

(declare-fun d!1969132 () Bool)

(assert (=> d!1969132 (= (head!12885 lt!2352404) (h!71199 lt!2352404))))

(assert (=> b!6273272 d!1969132))

(declare-fun bs!1566823 () Bool)

(declare-fun d!1969134 () Bool)

(assert (= bs!1566823 (and d!1969134 b!6273224)))

(declare-fun lambda!343795 () Int)

(assert (=> bs!1566823 (not (= lambda!343795 lambda!343728))))

(declare-fun bs!1566824 () Bool)

(assert (= bs!1566824 (and d!1969134 b!6273219)))

(assert (=> bs!1566824 (not (= lambda!343795 lambda!343725))))

(declare-fun bs!1566825 () Bool)

(assert (= bs!1566825 (and d!1969134 d!1969114)))

(assert (=> bs!1566825 (= lambda!343795 lambda!343790)))

(declare-fun bs!1566826 () Bool)

(assert (= bs!1566826 (and d!1969134 b!6273222)))

(assert (=> bs!1566826 (not (= lambda!343795 lambda!343727))))

(declare-fun bs!1566827 () Bool)

(assert (= bs!1566827 (and d!1969134 b!6273217)))

(assert (=> bs!1566827 (not (= lambda!343795 lambda!343724))))

(assert (=> d!1969134 (= (nullableZipper!1962 lt!2352393) (exists!2524 lt!2352393 lambda!343795))))

(declare-fun bs!1566828 () Bool)

(assert (= bs!1566828 d!1969134))

(declare-fun m!7095480 () Bool)

(assert (=> bs!1566828 m!7095480))

(assert (=> b!6272936 d!1969134))

(declare-fun bs!1566829 () Bool)

(declare-fun d!1969136 () Bool)

(assert (= bs!1566829 (and d!1969136 d!1968922)))

(declare-fun lambda!343796 () Int)

(assert (=> bs!1566829 (= lambda!343796 lambda!343732)))

(declare-fun bs!1566830 () Bool)

(assert (= bs!1566830 (and d!1969136 d!1969118)))

(assert (=> bs!1566830 (= lambda!343796 lambda!343791)))

(declare-fun bs!1566831 () Bool)

(assert (= bs!1566831 (and d!1969136 d!1968940)))

(assert (=> bs!1566831 (= lambda!343796 lambda!343736)))

(declare-fun bs!1566832 () Bool)

(assert (= bs!1566832 (and d!1969136 d!1968942)))

(assert (=> bs!1566832 (= lambda!343796 lambda!343739)))

(declare-fun bs!1566833 () Bool)

(assert (= bs!1566833 (and d!1969136 d!1968924)))

(assert (=> bs!1566833 (= lambda!343796 lambda!343733)))

(declare-fun bs!1566834 () Bool)

(assert (= bs!1566834 (and d!1969136 d!1968914)))

(assert (=> bs!1566834 (= lambda!343796 lambda!343729)))

(declare-fun bs!1566835 () Bool)

(assert (= bs!1566835 (and d!1969136 d!1968854)))

(assert (=> bs!1566835 (= lambda!343796 lambda!343697)))

(declare-fun bs!1566836 () Bool)

(assert (= bs!1566836 (and d!1969136 d!1968828)))

(assert (=> bs!1566836 (= lambda!343796 lambda!343694)))

(declare-fun e!3815736 () Bool)

(assert (=> d!1969136 e!3815736))

(declare-fun res!2587802 () Bool)

(assert (=> d!1969136 (=> (not res!2587802) (not e!3815736))))

(declare-fun lt!2352695 () Regex!16192)

(assert (=> d!1969136 (= res!2587802 (validRegex!7928 lt!2352695))))

(declare-fun e!3815737 () Regex!16192)

(assert (=> d!1969136 (= lt!2352695 e!3815737)))

(declare-fun c!1137175 () Bool)

(declare-fun e!3815740 () Bool)

(assert (=> d!1969136 (= c!1137175 e!3815740)))

(declare-fun res!2587803 () Bool)

(assert (=> d!1969136 (=> (not res!2587803) (not e!3815740))))

(assert (=> d!1969136 (= res!2587803 (is-Cons!64751 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> d!1969136 (forall!15322 (t!378433 (exprs!6076 (h!71201 zl!343))) lambda!343796)))

(assert (=> d!1969136 (= (generalisedConcat!1789 (t!378433 (exprs!6076 (h!71201 zl!343)))) lt!2352695)))

(declare-fun b!6273951 () Bool)

(declare-fun e!3815739 () Bool)

(assert (=> b!6273951 (= e!3815736 e!3815739)))

(declare-fun c!1137176 () Bool)

(assert (=> b!6273951 (= c!1137176 (isEmpty!36789 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6273952 () Bool)

(declare-fun e!3815738 () Bool)

(assert (=> b!6273952 (= e!3815738 (= lt!2352695 (head!12885 (t!378433 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6273953 () Bool)

(assert (=> b!6273953 (= e!3815737 (h!71199 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6273954 () Bool)

(assert (=> b!6273954 (= e!3815739 (isEmptyExpr!1598 lt!2352695))))

(declare-fun b!6273955 () Bool)

(declare-fun e!3815735 () Regex!16192)

(assert (=> b!6273955 (= e!3815735 (Concat!25037 (h!71199 (t!378433 (exprs!6076 (h!71201 zl!343)))) (generalisedConcat!1789 (t!378433 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6273956 () Bool)

(assert (=> b!6273956 (= e!3815738 (isConcat!1121 lt!2352695))))

(declare-fun b!6273957 () Bool)

(assert (=> b!6273957 (= e!3815740 (isEmpty!36789 (t!378433 (t!378433 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6273958 () Bool)

(assert (=> b!6273958 (= e!3815737 e!3815735)))

(declare-fun c!1137174 () Bool)

(assert (=> b!6273958 (= c!1137174 (is-Cons!64751 (t!378433 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6273959 () Bool)

(assert (=> b!6273959 (= e!3815739 e!3815738)))

(declare-fun c!1137177 () Bool)

(assert (=> b!6273959 (= c!1137177 (isEmpty!36789 (tail!11970 (t!378433 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6273960 () Bool)

(assert (=> b!6273960 (= e!3815735 EmptyExpr!16192)))

(assert (= (and d!1969136 res!2587803) b!6273957))

(assert (= (and d!1969136 c!1137175) b!6273953))

(assert (= (and d!1969136 (not c!1137175)) b!6273958))

(assert (= (and b!6273958 c!1137174) b!6273955))

(assert (= (and b!6273958 (not c!1137174)) b!6273960))

(assert (= (and d!1969136 res!2587802) b!6273951))

(assert (= (and b!6273951 c!1137176) b!6273954))

(assert (= (and b!6273951 (not c!1137176)) b!6273959))

(assert (= (and b!6273959 c!1137177) b!6273952))

(assert (= (and b!6273959 (not c!1137177)) b!6273956))

(declare-fun m!7095482 () Bool)

(assert (=> b!6273956 m!7095482))

(declare-fun m!7095484 () Bool)

(assert (=> b!6273959 m!7095484))

(assert (=> b!6273959 m!7095484))

(declare-fun m!7095486 () Bool)

(assert (=> b!6273959 m!7095486))

(assert (=> b!6273951 m!7094416))

(declare-fun m!7095488 () Bool)

(assert (=> b!6273957 m!7095488))

(declare-fun m!7095490 () Bool)

(assert (=> b!6273952 m!7095490))

(declare-fun m!7095492 () Bool)

(assert (=> d!1969136 m!7095492))

(declare-fun m!7095494 () Bool)

(assert (=> d!1969136 m!7095494))

(declare-fun m!7095496 () Bool)

(assert (=> b!6273955 m!7095496))

(declare-fun m!7095498 () Bool)

(assert (=> b!6273954 m!7095498))

(assert (=> b!6272965 d!1969136))

(assert (=> d!1968938 d!1968934))

(assert (=> d!1968938 d!1968920))

(declare-fun d!1969138 () Bool)

(assert (=> d!1969138 (= (matchR!8375 lt!2352400 s!2326) (matchRSpec!3293 lt!2352400 s!2326))))

(assert (=> d!1969138 true))

(declare-fun _$88!4916 () Unit!158099)

(assert (=> d!1969138 (= (choose!46547 lt!2352400 s!2326) _$88!4916)))

(declare-fun bs!1566837 () Bool)

(assert (= bs!1566837 d!1969138))

(assert (=> bs!1566837 m!7094418))

(assert (=> bs!1566837 m!7094438))

(assert (=> d!1968938 d!1969138))

(declare-fun b!6273961 () Bool)

(declare-fun e!3815746 () Bool)

(declare-fun call!530690 () Bool)

(assert (=> b!6273961 (= e!3815746 call!530690)))

(declare-fun b!6273962 () Bool)

(declare-fun e!3815745 () Bool)

(declare-fun e!3815742 () Bool)

(assert (=> b!6273962 (= e!3815745 e!3815742)))

(declare-fun res!2587807 () Bool)

(assert (=> b!6273962 (= res!2587807 (not (nullable!6185 (reg!16521 lt!2352400))))))

(assert (=> b!6273962 (=> (not res!2587807) (not e!3815742))))

(declare-fun bm!530685 () Bool)

(declare-fun call!530692 () Bool)

(declare-fun c!1137179 () Bool)

(declare-fun c!1137178 () Bool)

(assert (=> bm!530685 (= call!530692 (validRegex!7928 (ite c!1137178 (reg!16521 lt!2352400) (ite c!1137179 (regOne!32897 lt!2352400) (regOne!32896 lt!2352400)))))))

(declare-fun b!6273963 () Bool)

(declare-fun e!3815747 () Bool)

(assert (=> b!6273963 (= e!3815747 e!3815745)))

(assert (=> b!6273963 (= c!1137178 (is-Star!16192 lt!2352400))))

(declare-fun b!6273964 () Bool)

(declare-fun e!3815744 () Bool)

(assert (=> b!6273964 (= e!3815745 e!3815744)))

(assert (=> b!6273964 (= c!1137179 (is-Union!16192 lt!2352400))))

(declare-fun d!1969140 () Bool)

(declare-fun res!2587804 () Bool)

(assert (=> d!1969140 (=> res!2587804 e!3815747)))

(assert (=> d!1969140 (= res!2587804 (is-ElementMatch!16192 lt!2352400))))

(assert (=> d!1969140 (= (validRegex!7928 lt!2352400) e!3815747)))

(declare-fun bm!530686 () Bool)

(declare-fun call!530691 () Bool)

(assert (=> bm!530686 (= call!530691 call!530692)))

(declare-fun b!6273965 () Bool)

(declare-fun res!2587806 () Bool)

(declare-fun e!3815743 () Bool)

(assert (=> b!6273965 (=> res!2587806 e!3815743)))

(assert (=> b!6273965 (= res!2587806 (not (is-Concat!25037 lt!2352400)))))

(assert (=> b!6273965 (= e!3815744 e!3815743)))

(declare-fun b!6273966 () Bool)

(declare-fun e!3815741 () Bool)

(assert (=> b!6273966 (= e!3815743 e!3815741)))

(declare-fun res!2587805 () Bool)

(assert (=> b!6273966 (=> (not res!2587805) (not e!3815741))))

(assert (=> b!6273966 (= res!2587805 call!530691)))

(declare-fun b!6273967 () Bool)

(assert (=> b!6273967 (= e!3815742 call!530692)))

(declare-fun bm!530687 () Bool)

(assert (=> bm!530687 (= call!530690 (validRegex!7928 (ite c!1137179 (regTwo!32897 lt!2352400) (regTwo!32896 lt!2352400))))))

(declare-fun b!6273968 () Bool)

(assert (=> b!6273968 (= e!3815741 call!530690)))

(declare-fun b!6273969 () Bool)

(declare-fun res!2587808 () Bool)

(assert (=> b!6273969 (=> (not res!2587808) (not e!3815746))))

(assert (=> b!6273969 (= res!2587808 call!530691)))

(assert (=> b!6273969 (= e!3815744 e!3815746)))

(assert (= (and d!1969140 (not res!2587804)) b!6273963))

(assert (= (and b!6273963 c!1137178) b!6273962))

(assert (= (and b!6273963 (not c!1137178)) b!6273964))

(assert (= (and b!6273962 res!2587807) b!6273967))

(assert (= (and b!6273964 c!1137179) b!6273969))

(assert (= (and b!6273964 (not c!1137179)) b!6273965))

(assert (= (and b!6273969 res!2587808) b!6273961))

(assert (= (and b!6273965 (not res!2587806)) b!6273966))

(assert (= (and b!6273966 res!2587805) b!6273968))

(assert (= (or b!6273961 b!6273968) bm!530687))

(assert (= (or b!6273969 b!6273966) bm!530686))

(assert (= (or b!6273967 bm!530686) bm!530685))

(declare-fun m!7095500 () Bool)

(assert (=> b!6273962 m!7095500))

(declare-fun m!7095502 () Bool)

(assert (=> bm!530685 m!7095502))

(declare-fun m!7095504 () Bool)

(assert (=> bm!530687 m!7095504))

(assert (=> d!1968938 d!1969140))

(assert (=> d!1968880 d!1969106))

(assert (=> d!1968880 d!1968908))

(declare-fun d!1969142 () Bool)

(assert (=> d!1969142 (= (nullable!6185 (h!71199 (exprs!6076 lt!2352409))) (nullableFct!2137 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun bs!1566838 () Bool)

(assert (= bs!1566838 d!1969142))

(declare-fun m!7095506 () Bool)

(assert (=> bs!1566838 m!7095506))

(assert (=> b!6273049 d!1969142))

(declare-fun bs!1566839 () Bool)

(declare-fun b!6273975 () Bool)

(assert (= bs!1566839 (and b!6273975 b!6273102)))

(declare-fun lambda!343797 () Int)

(assert (=> bs!1566839 (not (= lambda!343797 lambda!343707))))

(declare-fun bs!1566840 () Bool)

(assert (= bs!1566840 (and b!6273975 d!1968890)))

(assert (=> bs!1566840 (not (= lambda!343797 lambda!343710))))

(declare-fun bs!1566841 () Bool)

(assert (= bs!1566841 (and b!6273975 b!6273945)))

(assert (=> bs!1566841 (not (= lambda!343797 lambda!343793))))

(declare-fun bs!1566842 () Bool)

(assert (= bs!1566842 (and b!6273975 b!6272766)))

(assert (=> bs!1566842 (not (= lambda!343797 lambda!343675))))

(declare-fun bs!1566843 () Bool)

(assert (= bs!1566843 (and b!6273975 b!6273100)))

(assert (=> bs!1566843 (= (and (= (reg!16521 (regOne!32897 r!7292)) (reg!16521 r!7292)) (= (regOne!32897 r!7292) r!7292)) (= lambda!343797 lambda!343706))))

(declare-fun bs!1566844 () Bool)

(assert (= bs!1566844 (and b!6273975 b!6273943)))

(assert (=> bs!1566844 (= (and (= (reg!16521 (regOne!32897 r!7292)) (reg!16521 (regTwo!32897 lt!2352400))) (= (regOne!32897 r!7292) (regTwo!32897 lt!2352400))) (= lambda!343797 lambda!343792))))

(declare-fun bs!1566845 () Bool)

(assert (= bs!1566845 (and b!6273975 d!1968892)))

(assert (=> bs!1566845 (not (= lambda!343797 lambda!343716))))

(declare-fun bs!1566846 () Bool)

(assert (= bs!1566846 (and b!6273975 b!6273265)))

(assert (=> bs!1566846 (= (and (= (reg!16521 (regOne!32897 r!7292)) (reg!16521 lt!2352400)) (= (regOne!32897 r!7292) lt!2352400)) (= lambda!343797 lambda!343730))))

(declare-fun bs!1566847 () Bool)

(assert (= bs!1566847 (and b!6273975 b!6273267)))

(assert (=> bs!1566847 (not (= lambda!343797 lambda!343731))))

(assert (=> bs!1566845 (not (= lambda!343797 lambda!343715))))

(assert (=> bs!1566842 (not (= lambda!343797 lambda!343674))))

(assert (=> b!6273975 true))

(assert (=> b!6273975 true))

(declare-fun bs!1566848 () Bool)

(declare-fun b!6273977 () Bool)

(assert (= bs!1566848 (and b!6273977 b!6273102)))

(declare-fun lambda!343798 () Int)

(assert (=> bs!1566848 (= (and (= (regOne!32896 (regOne!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343798 lambda!343707))))

(declare-fun bs!1566849 () Bool)

(assert (= bs!1566849 (and b!6273977 d!1968890)))

(assert (=> bs!1566849 (not (= lambda!343798 lambda!343710))))

(declare-fun bs!1566850 () Bool)

(assert (= bs!1566850 (and b!6273977 b!6273945)))

(assert (=> bs!1566850 (= (and (= (regOne!32896 (regOne!32897 r!7292)) (regOne!32896 (regTwo!32897 lt!2352400))) (= (regTwo!32896 (regOne!32897 r!7292)) (regTwo!32896 (regTwo!32897 lt!2352400)))) (= lambda!343798 lambda!343793))))

(declare-fun bs!1566851 () Bool)

(assert (= bs!1566851 (and b!6273977 b!6272766)))

(assert (=> bs!1566851 (= (and (= (regOne!32896 (regOne!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343798 lambda!343675))))

(declare-fun bs!1566852 () Bool)

(assert (= bs!1566852 (and b!6273977 b!6273100)))

(assert (=> bs!1566852 (not (= lambda!343798 lambda!343706))))

(declare-fun bs!1566853 () Bool)

(assert (= bs!1566853 (and b!6273977 b!6273943)))

(assert (=> bs!1566853 (not (= lambda!343798 lambda!343792))))

(declare-fun bs!1566854 () Bool)

(assert (= bs!1566854 (and b!6273977 b!6273265)))

(assert (=> bs!1566854 (not (= lambda!343798 lambda!343730))))

(declare-fun bs!1566855 () Bool)

(assert (= bs!1566855 (and b!6273977 b!6273975)))

(assert (=> bs!1566855 (not (= lambda!343798 lambda!343797))))

(declare-fun bs!1566856 () Bool)

(assert (= bs!1566856 (and b!6273977 d!1968892)))

(assert (=> bs!1566856 (= (and (= (regOne!32896 (regOne!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343798 lambda!343716))))

(declare-fun bs!1566857 () Bool)

(assert (= bs!1566857 (and b!6273977 b!6273267)))

(assert (=> bs!1566857 (= (and (= (regOne!32896 (regOne!32897 r!7292)) (regOne!32896 lt!2352400)) (= (regTwo!32896 (regOne!32897 r!7292)) (regTwo!32896 lt!2352400))) (= lambda!343798 lambda!343731))))

(assert (=> bs!1566856 (not (= lambda!343798 lambda!343715))))

(assert (=> bs!1566851 (not (= lambda!343798 lambda!343674))))

(assert (=> b!6273977 true))

(assert (=> b!6273977 true))

(declare-fun b!6273970 () Bool)

(declare-fun res!2587809 () Bool)

(declare-fun e!3815749 () Bool)

(assert (=> b!6273970 (=> res!2587809 e!3815749)))

(declare-fun call!530693 () Bool)

(assert (=> b!6273970 (= res!2587809 call!530693)))

(declare-fun e!3815754 () Bool)

(assert (=> b!6273970 (= e!3815754 e!3815749)))

(declare-fun b!6273971 () Bool)

(declare-fun c!1137182 () Bool)

(assert (=> b!6273971 (= c!1137182 (is-ElementMatch!16192 (regOne!32897 r!7292)))))

(declare-fun e!3815752 () Bool)

(declare-fun e!3815748 () Bool)

(assert (=> b!6273971 (= e!3815752 e!3815748)))

(declare-fun bm!530688 () Bool)

(assert (=> bm!530688 (= call!530693 (isEmpty!36792 s!2326))))

(declare-fun b!6273972 () Bool)

(declare-fun c!1137183 () Bool)

(assert (=> b!6273972 (= c!1137183 (is-Union!16192 (regOne!32897 r!7292)))))

(declare-fun e!3815750 () Bool)

(assert (=> b!6273972 (= e!3815748 e!3815750)))

(declare-fun d!1969144 () Bool)

(declare-fun c!1137180 () Bool)

(assert (=> d!1969144 (= c!1137180 (is-EmptyExpr!16192 (regOne!32897 r!7292)))))

(declare-fun e!3815751 () Bool)

(assert (=> d!1969144 (= (matchRSpec!3293 (regOne!32897 r!7292) s!2326) e!3815751)))

(declare-fun c!1137181 () Bool)

(declare-fun call!530694 () Bool)

(declare-fun bm!530689 () Bool)

(assert (=> bm!530689 (= call!530694 (Exists!3262 (ite c!1137181 lambda!343797 lambda!343798)))))

(declare-fun b!6273973 () Bool)

(assert (=> b!6273973 (= e!3815751 call!530693)))

(declare-fun b!6273974 () Bool)

(declare-fun e!3815753 () Bool)

(assert (=> b!6273974 (= e!3815753 (matchRSpec!3293 (regTwo!32897 (regOne!32897 r!7292)) s!2326))))

(assert (=> b!6273975 (= e!3815749 call!530694)))

(declare-fun b!6273976 () Bool)

(assert (=> b!6273976 (= e!3815751 e!3815752)))

(declare-fun res!2587811 () Bool)

(assert (=> b!6273976 (= res!2587811 (not (is-EmptyLang!16192 (regOne!32897 r!7292))))))

(assert (=> b!6273976 (=> (not res!2587811) (not e!3815752))))

(assert (=> b!6273977 (= e!3815754 call!530694)))

(declare-fun b!6273978 () Bool)

(assert (=> b!6273978 (= e!3815750 e!3815753)))

(declare-fun res!2587810 () Bool)

(assert (=> b!6273978 (= res!2587810 (matchRSpec!3293 (regOne!32897 (regOne!32897 r!7292)) s!2326))))

(assert (=> b!6273978 (=> res!2587810 e!3815753)))

(declare-fun b!6273979 () Bool)

(assert (=> b!6273979 (= e!3815750 e!3815754)))

(assert (=> b!6273979 (= c!1137181 (is-Star!16192 (regOne!32897 r!7292)))))

(declare-fun b!6273980 () Bool)

(assert (=> b!6273980 (= e!3815748 (= s!2326 (Cons!64752 (c!1136845 (regOne!32897 r!7292)) Nil!64752)))))

(assert (= (and d!1969144 c!1137180) b!6273973))

(assert (= (and d!1969144 (not c!1137180)) b!6273976))

(assert (= (and b!6273976 res!2587811) b!6273971))

(assert (= (and b!6273971 c!1137182) b!6273980))

(assert (= (and b!6273971 (not c!1137182)) b!6273972))

(assert (= (and b!6273972 c!1137183) b!6273978))

(assert (= (and b!6273972 (not c!1137183)) b!6273979))

(assert (= (and b!6273978 (not res!2587810)) b!6273974))

(assert (= (and b!6273979 c!1137181) b!6273970))

(assert (= (and b!6273979 (not c!1137181)) b!6273977))

(assert (= (and b!6273970 (not res!2587809)) b!6273975))

(assert (= (or b!6273975 b!6273977) bm!530689))

(assert (= (or b!6273973 b!6273970) bm!530688))

(assert (=> bm!530688 m!7094766))

(declare-fun m!7095508 () Bool)

(assert (=> bm!530689 m!7095508))

(declare-fun m!7095510 () Bool)

(assert (=> b!6273974 m!7095510))

(declare-fun m!7095512 () Bool)

(assert (=> b!6273978 m!7095512))

(assert (=> b!6273103 d!1969144))

(declare-fun d!1969146 () Bool)

(assert (=> d!1969146 (= (nullable!6185 (h!71199 (exprs!6076 lt!2352397))) (nullableFct!2137 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun bs!1566858 () Bool)

(assert (= bs!1566858 d!1969146))

(declare-fun m!7095514 () Bool)

(assert (=> bs!1566858 m!7095514))

(assert (=> b!6273044 d!1969146))

(declare-fun b!6273981 () Bool)

(declare-fun e!3815757 () Bool)

(assert (=> b!6273981 (= e!3815757 (nullable!6185 (derivativeStep!4901 lt!2352391 (head!12884 s!2326))))))

(declare-fun bm!530690 () Bool)

(declare-fun call!530695 () Bool)

(assert (=> bm!530690 (= call!530695 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6273982 () Bool)

(declare-fun e!3815758 () Bool)

(declare-fun e!3815760 () Bool)

(assert (=> b!6273982 (= e!3815758 e!3815760)))

(declare-fun res!2587814 () Bool)

(assert (=> b!6273982 (=> res!2587814 e!3815760)))

(assert (=> b!6273982 (= res!2587814 call!530695)))

(declare-fun d!1969148 () Bool)

(declare-fun e!3815755 () Bool)

(assert (=> d!1969148 e!3815755))

(declare-fun c!1137186 () Bool)

(assert (=> d!1969148 (= c!1137186 (is-EmptyExpr!16192 (derivativeStep!4901 lt!2352391 (head!12884 s!2326))))))

(declare-fun lt!2352696 () Bool)

(assert (=> d!1969148 (= lt!2352696 e!3815757)))

(declare-fun c!1137184 () Bool)

(assert (=> d!1969148 (= c!1137184 (isEmpty!36792 (tail!11969 s!2326)))))

(assert (=> d!1969148 (validRegex!7928 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)))))

(assert (=> d!1969148 (= (matchR!8375 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)) (tail!11969 s!2326)) lt!2352696)))

(declare-fun b!6273983 () Bool)

(declare-fun e!3815759 () Bool)

(assert (=> b!6273983 (= e!3815759 (not lt!2352696))))

(declare-fun b!6273984 () Bool)

(assert (=> b!6273984 (= e!3815757 (matchR!8375 (derivativeStep!4901 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)) (head!12884 (tail!11969 s!2326))) (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6273985 () Bool)

(declare-fun res!2587817 () Bool)

(assert (=> b!6273985 (=> res!2587817 e!3815760)))

(assert (=> b!6273985 (= res!2587817 (not (isEmpty!36792 (tail!11969 (tail!11969 s!2326)))))))

(declare-fun b!6273986 () Bool)

(assert (=> b!6273986 (= e!3815760 (not (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 lt!2352391 (head!12884 s!2326))))))))

(declare-fun b!6273987 () Bool)

(declare-fun e!3815761 () Bool)

(assert (=> b!6273987 (= e!3815761 e!3815758)))

(declare-fun res!2587813 () Bool)

(assert (=> b!6273987 (=> (not res!2587813) (not e!3815758))))

(assert (=> b!6273987 (= res!2587813 (not lt!2352696))))

(declare-fun b!6273988 () Bool)

(declare-fun e!3815756 () Bool)

(assert (=> b!6273988 (= e!3815756 (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)))))))

(declare-fun b!6273989 () Bool)

(declare-fun res!2587818 () Bool)

(assert (=> b!6273989 (=> (not res!2587818) (not e!3815756))))

(assert (=> b!6273989 (= res!2587818 (not call!530695))))

(declare-fun b!6273990 () Bool)

(declare-fun res!2587819 () Bool)

(assert (=> b!6273990 (=> (not res!2587819) (not e!3815756))))

(assert (=> b!6273990 (= res!2587819 (isEmpty!36792 (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6273991 () Bool)

(declare-fun res!2587815 () Bool)

(assert (=> b!6273991 (=> res!2587815 e!3815761)))

(assert (=> b!6273991 (= res!2587815 e!3815756)))

(declare-fun res!2587816 () Bool)

(assert (=> b!6273991 (=> (not res!2587816) (not e!3815756))))

(assert (=> b!6273991 (= res!2587816 lt!2352696)))

(declare-fun b!6273992 () Bool)

(assert (=> b!6273992 (= e!3815755 e!3815759)))

(declare-fun c!1137185 () Bool)

(assert (=> b!6273992 (= c!1137185 (is-EmptyLang!16192 (derivativeStep!4901 lt!2352391 (head!12884 s!2326))))))

(declare-fun b!6273993 () Bool)

(declare-fun res!2587812 () Bool)

(assert (=> b!6273993 (=> res!2587812 e!3815761)))

(assert (=> b!6273993 (= res!2587812 (not (is-ElementMatch!16192 (derivativeStep!4901 lt!2352391 (head!12884 s!2326)))))))

(assert (=> b!6273993 (= e!3815759 e!3815761)))

(declare-fun b!6273994 () Bool)

(assert (=> b!6273994 (= e!3815755 (= lt!2352696 call!530695))))

(assert (= (and d!1969148 c!1137184) b!6273981))

(assert (= (and d!1969148 (not c!1137184)) b!6273984))

(assert (= (and d!1969148 c!1137186) b!6273994))

(assert (= (and d!1969148 (not c!1137186)) b!6273992))

(assert (= (and b!6273992 c!1137185) b!6273983))

(assert (= (and b!6273992 (not c!1137185)) b!6273993))

(assert (= (and b!6273993 (not res!2587812)) b!6273991))

(assert (= (and b!6273991 res!2587816) b!6273989))

(assert (= (and b!6273989 res!2587818) b!6273990))

(assert (= (and b!6273990 res!2587819) b!6273988))

(assert (= (and b!6273991 (not res!2587815)) b!6273987))

(assert (= (and b!6273987 res!2587813) b!6273982))

(assert (= (and b!6273982 (not res!2587814)) b!6273985))

(assert (= (and b!6273985 (not res!2587817)) b!6273986))

(assert (= (or b!6273994 b!6273982 b!6273989) bm!530690))

(assert (=> b!6273985 m!7094774))

(assert (=> b!6273985 m!7095474))

(assert (=> b!6273985 m!7095474))

(declare-fun m!7095516 () Bool)

(assert (=> b!6273985 m!7095516))

(assert (=> b!6273990 m!7094774))

(assert (=> b!6273990 m!7095474))

(assert (=> b!6273990 m!7095474))

(assert (=> b!6273990 m!7095516))

(assert (=> b!6273981 m!7094948))

(declare-fun m!7095518 () Bool)

(assert (=> b!6273981 m!7095518))

(assert (=> d!1969148 m!7094774))

(assert (=> d!1969148 m!7094776))

(assert (=> d!1969148 m!7094948))

(declare-fun m!7095520 () Bool)

(assert (=> d!1969148 m!7095520))

(assert (=> b!6273984 m!7094774))

(assert (=> b!6273984 m!7095470))

(assert (=> b!6273984 m!7094948))

(assert (=> b!6273984 m!7095470))

(declare-fun m!7095522 () Bool)

(assert (=> b!6273984 m!7095522))

(assert (=> b!6273984 m!7094774))

(assert (=> b!6273984 m!7095474))

(assert (=> b!6273984 m!7095522))

(assert (=> b!6273984 m!7095474))

(declare-fun m!7095524 () Bool)

(assert (=> b!6273984 m!7095524))

(assert (=> bm!530690 m!7094774))

(assert (=> bm!530690 m!7094776))

(assert (=> b!6273988 m!7094774))

(assert (=> b!6273988 m!7095470))

(assert (=> b!6273986 m!7094774))

(assert (=> b!6273986 m!7095470))

(assert (=> b!6273294 d!1969148))

(declare-fun call!530707 () Regex!16192)

(declare-fun c!1137198 () Bool)

(declare-fun bm!530699 () Bool)

(assert (=> bm!530699 (= call!530707 (derivativeStep!4901 (ite c!1137198 (regOne!32897 lt!2352391) (regOne!32896 lt!2352391)) (head!12884 s!2326)))))

(declare-fun b!6274015 () Bool)

(declare-fun e!3815773 () Regex!16192)

(declare-fun call!530706 () Regex!16192)

(assert (=> b!6274015 (= e!3815773 (Union!16192 (Concat!25037 call!530707 (regTwo!32896 lt!2352391)) call!530706))))

(declare-fun b!6274016 () Bool)

(declare-fun e!3815775 () Regex!16192)

(assert (=> b!6274016 (= e!3815775 EmptyLang!16192)))

(declare-fun b!6274017 () Bool)

(declare-fun c!1137197 () Bool)

(assert (=> b!6274017 (= c!1137197 (nullable!6185 (regOne!32896 lt!2352391)))))

(declare-fun e!3815772 () Regex!16192)

(assert (=> b!6274017 (= e!3815772 e!3815773)))

(declare-fun b!6274018 () Bool)

(declare-fun e!3815774 () Regex!16192)

(assert (=> b!6274018 (= e!3815774 e!3815772)))

(declare-fun c!1137200 () Bool)

(assert (=> b!6274018 (= c!1137200 (is-Star!16192 lt!2352391))))

(declare-fun b!6274019 () Bool)

(assert (=> b!6274019 (= e!3815773 (Union!16192 (Concat!25037 call!530706 (regTwo!32896 lt!2352391)) EmptyLang!16192))))

(declare-fun bm!530701 () Bool)

(declare-fun call!530705 () Regex!16192)

(assert (=> bm!530701 (= call!530705 (derivativeStep!4901 (ite c!1137198 (regTwo!32897 lt!2352391) (ite c!1137200 (reg!16521 lt!2352391) (ite c!1137197 (regTwo!32896 lt!2352391) (regOne!32896 lt!2352391)))) (head!12884 s!2326)))))

(declare-fun bm!530700 () Bool)

(declare-fun call!530704 () Regex!16192)

(assert (=> bm!530700 (= call!530706 call!530704)))

(declare-fun d!1969150 () Bool)

(declare-fun lt!2352699 () Regex!16192)

(assert (=> d!1969150 (validRegex!7928 lt!2352699)))

(assert (=> d!1969150 (= lt!2352699 e!3815775)))

(declare-fun c!1137199 () Bool)

(assert (=> d!1969150 (= c!1137199 (or (is-EmptyExpr!16192 lt!2352391) (is-EmptyLang!16192 lt!2352391)))))

(assert (=> d!1969150 (validRegex!7928 lt!2352391)))

(assert (=> d!1969150 (= (derivativeStep!4901 lt!2352391 (head!12884 s!2326)) lt!2352699)))

(declare-fun b!6274020 () Bool)

(assert (=> b!6274020 (= e!3815772 (Concat!25037 call!530704 lt!2352391))))

(declare-fun b!6274021 () Bool)

(assert (=> b!6274021 (= e!3815774 (Union!16192 call!530707 call!530705))))

(declare-fun b!6274022 () Bool)

(declare-fun e!3815776 () Regex!16192)

(assert (=> b!6274022 (= e!3815776 (ite (= (head!12884 s!2326) (c!1136845 lt!2352391)) EmptyExpr!16192 EmptyLang!16192))))

(declare-fun b!6274023 () Bool)

(assert (=> b!6274023 (= c!1137198 (is-Union!16192 lt!2352391))))

(assert (=> b!6274023 (= e!3815776 e!3815774)))

(declare-fun b!6274024 () Bool)

(assert (=> b!6274024 (= e!3815775 e!3815776)))

(declare-fun c!1137201 () Bool)

(assert (=> b!6274024 (= c!1137201 (is-ElementMatch!16192 lt!2352391))))

(declare-fun bm!530702 () Bool)

(assert (=> bm!530702 (= call!530704 call!530705)))

(assert (= (and d!1969150 c!1137199) b!6274016))

(assert (= (and d!1969150 (not c!1137199)) b!6274024))

(assert (= (and b!6274024 c!1137201) b!6274022))

(assert (= (and b!6274024 (not c!1137201)) b!6274023))

(assert (= (and b!6274023 c!1137198) b!6274021))

(assert (= (and b!6274023 (not c!1137198)) b!6274018))

(assert (= (and b!6274018 c!1137200) b!6274020))

(assert (= (and b!6274018 (not c!1137200)) b!6274017))

(assert (= (and b!6274017 c!1137197) b!6274015))

(assert (= (and b!6274017 (not c!1137197)) b!6274019))

(assert (= (or b!6274015 b!6274019) bm!530700))

(assert (= (or b!6274020 bm!530700) bm!530702))

(assert (= (or b!6274021 bm!530702) bm!530701))

(assert (= (or b!6274021 b!6274015) bm!530699))

(assert (=> bm!530699 m!7094780))

(declare-fun m!7095526 () Bool)

(assert (=> bm!530699 m!7095526))

(declare-fun m!7095528 () Bool)

(assert (=> b!6274017 m!7095528))

(assert (=> bm!530701 m!7094780))

(declare-fun m!7095530 () Bool)

(assert (=> bm!530701 m!7095530))

(declare-fun m!7095532 () Bool)

(assert (=> d!1969150 m!7095532))

(assert (=> d!1969150 m!7094946))

(assert (=> b!6273294 d!1969150))

(assert (=> b!6273294 d!1969130))

(assert (=> b!6273294 d!1969122))

(declare-fun d!1969152 () Bool)

(declare-fun lt!2352700 () Int)

(assert (=> d!1969152 (>= lt!2352700 0)))

(declare-fun e!3815777 () Int)

(assert (=> d!1969152 (= lt!2352700 e!3815777)))

(declare-fun c!1137202 () Bool)

(assert (=> d!1969152 (= c!1137202 (is-Cons!64751 (exprs!6076 (h!71201 lt!2352399))))))

(assert (=> d!1969152 (= (contextDepthTotal!315 (h!71201 lt!2352399)) lt!2352700)))

(declare-fun b!6274025 () Bool)

(assert (=> b!6274025 (= e!3815777 (+ (regexDepthTotal!168 (h!71199 (exprs!6076 (h!71201 lt!2352399)))) (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 (h!71201 lt!2352399)))))))))

(declare-fun b!6274026 () Bool)

(assert (=> b!6274026 (= e!3815777 1)))

(assert (= (and d!1969152 c!1137202) b!6274025))

(assert (= (and d!1969152 (not c!1137202)) b!6274026))

(declare-fun m!7095534 () Bool)

(assert (=> b!6274025 m!7095534))

(declare-fun m!7095536 () Bool)

(assert (=> b!6274025 m!7095536))

(assert (=> b!6272982 d!1969152))

(declare-fun d!1969154 () Bool)

(declare-fun lt!2352701 () Int)

(assert (=> d!1969154 (>= lt!2352701 0)))

(declare-fun e!3815778 () Int)

(assert (=> d!1969154 (= lt!2352701 e!3815778)))

(declare-fun c!1137203 () Bool)

(assert (=> d!1969154 (= c!1137203 (is-Cons!64753 (t!378435 lt!2352399)))))

(assert (=> d!1969154 (= (zipperDepthTotal!345 (t!378435 lt!2352399)) lt!2352701)))

(declare-fun b!6274027 () Bool)

(assert (=> b!6274027 (= e!3815778 (+ (contextDepthTotal!315 (h!71201 (t!378435 lt!2352399))) (zipperDepthTotal!345 (t!378435 (t!378435 lt!2352399)))))))

(declare-fun b!6274028 () Bool)

(assert (=> b!6274028 (= e!3815778 0)))

(assert (= (and d!1969154 c!1137203) b!6274027))

(assert (= (and d!1969154 (not c!1137203)) b!6274028))

(declare-fun m!7095538 () Bool)

(assert (=> b!6274027 m!7095538))

(declare-fun m!7095540 () Bool)

(assert (=> b!6274027 m!7095540))

(assert (=> b!6272982 d!1969154))

(declare-fun bm!530703 () Bool)

(declare-fun call!530708 () (Set Context!11152))

(assert (=> bm!530703 (= call!530708 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))))) (h!71200 s!2326)))))

(declare-fun b!6274029 () Bool)

(declare-fun e!3815780 () Bool)

(assert (=> b!6274029 (= e!3815780 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun d!1969156 () Bool)

(declare-fun c!1137204 () Bool)

(assert (=> d!1969156 (= c!1137204 e!3815780)))

(declare-fun res!2587820 () Bool)

(assert (=> d!1969156 (=> (not res!2587820) (not e!3815780))))

(assert (=> d!1969156 (= res!2587820 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun e!3815779 () (Set Context!11152))

(assert (=> d!1969156 (= (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326)) e!3815779)))

(declare-fun b!6274030 () Bool)

(assert (=> b!6274030 (= e!3815779 (set.union call!530708 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))))) (h!71200 s!2326))))))

(declare-fun b!6274031 () Bool)

(declare-fun e!3815781 () (Set Context!11152))

(assert (=> b!6274031 (= e!3815781 call!530708)))

(declare-fun b!6274032 () Bool)

(assert (=> b!6274032 (= e!3815779 e!3815781)))

(declare-fun c!1137205 () Bool)

(assert (=> b!6274032 (= c!1137205 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6274033 () Bool)

(assert (=> b!6274033 (= e!3815781 (as set.empty (Set Context!11152)))))

(assert (= (and d!1969156 res!2587820) b!6274029))

(assert (= (and d!1969156 c!1137204) b!6274030))

(assert (= (and d!1969156 (not c!1137204)) b!6274032))

(assert (= (and b!6274032 c!1137205) b!6274031))

(assert (= (and b!6274032 (not c!1137205)) b!6274033))

(assert (= (or b!6274030 b!6274031) bm!530703))

(declare-fun m!7095542 () Bool)

(assert (=> bm!530703 m!7095542))

(declare-fun m!7095544 () Bool)

(assert (=> b!6274029 m!7095544))

(declare-fun m!7095546 () Bool)

(assert (=> b!6274030 m!7095546))

(assert (=> b!6273040 d!1969156))

(declare-fun b!6274050 () Bool)

(declare-fun e!3815791 () Int)

(assert (=> b!6274050 (= e!3815791 1)))

(declare-fun d!1969158 () Bool)

(declare-fun lt!2352704 () Int)

(assert (=> d!1969158 (> lt!2352704 0)))

(declare-fun e!3815790 () Int)

(assert (=> d!1969158 (= lt!2352704 e!3815790)))

(declare-fun c!1137216 () Bool)

(assert (=> d!1969158 (= c!1137216 (is-ElementMatch!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> d!1969158 (= (regexDepthTotal!168 (h!71199 (exprs!6076 (h!71201 zl!343)))) lt!2352704)))

(declare-fun b!6274051 () Bool)

(declare-fun call!530715 () Int)

(declare-fun call!530716 () Int)

(assert (=> b!6274051 (= e!3815791 (+ 1 call!530715 call!530716))))

(declare-fun b!6274052 () Bool)

(assert (=> b!6274052 (= e!3815790 1)))

(declare-fun call!530717 () Int)

(declare-fun c!1137217 () Bool)

(declare-fun bm!530710 () Bool)

(declare-fun c!1137215 () Bool)

(assert (=> bm!530710 (= call!530717 (regexDepthTotal!168 (ite c!1137217 (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1137215 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun b!6274053 () Bool)

(declare-fun e!3815793 () Int)

(assert (=> b!6274053 (= e!3815793 e!3815791)))

(declare-fun c!1137214 () Bool)

(assert (=> b!6274053 (= c!1137214 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bm!530711 () Bool)

(assert (=> bm!530711 (= call!530715 (regexDepthTotal!168 (ite c!1137215 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6274054 () Bool)

(declare-fun e!3815792 () Int)

(assert (=> b!6274054 (= e!3815790 e!3815792)))

(assert (=> b!6274054 (= c!1137217 (is-Star!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6274055 () Bool)

(assert (=> b!6274055 (= e!3815793 (+ 1 call!530715 call!530716))))

(declare-fun b!6274056 () Bool)

(assert (=> b!6274056 (= c!1137215 (is-Union!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> b!6274056 (= e!3815792 e!3815793)))

(declare-fun b!6274057 () Bool)

(assert (=> b!6274057 (= e!3815792 (+ 1 call!530717))))

(declare-fun bm!530712 () Bool)

(assert (=> bm!530712 (= call!530716 call!530717)))

(assert (= (and d!1969158 c!1137216) b!6274052))

(assert (= (and d!1969158 (not c!1137216)) b!6274054))

(assert (= (and b!6274054 c!1137217) b!6274057))

(assert (= (and b!6274054 (not c!1137217)) b!6274056))

(assert (= (and b!6274056 c!1137215) b!6274055))

(assert (= (and b!6274056 (not c!1137215)) b!6274053))

(assert (= (and b!6274053 c!1137214) b!6274051))

(assert (= (and b!6274053 (not c!1137214)) b!6274050))

(assert (= (or b!6274055 b!6274051) bm!530712))

(assert (= (or b!6274055 b!6274051) bm!530711))

(assert (= (or b!6274057 bm!530712) bm!530710))

(declare-fun m!7095548 () Bool)

(assert (=> bm!530710 m!7095548))

(declare-fun m!7095550 () Bool)

(assert (=> bm!530711 m!7095550))

(assert (=> b!6273258 d!1969158))

(declare-fun d!1969160 () Bool)

(declare-fun lt!2352705 () Int)

(assert (=> d!1969160 (>= lt!2352705 0)))

(declare-fun e!3815794 () Int)

(assert (=> d!1969160 (= lt!2352705 e!3815794)))

(declare-fun c!1137218 () Bool)

(assert (=> d!1969160 (= c!1137218 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(assert (=> d!1969160 (= (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))) lt!2352705)))

(declare-fun b!6274058 () Bool)

(assert (=> b!6274058 (= e!3815794 (+ (regexDepthTotal!168 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))))) (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))))))))))

(declare-fun b!6274059 () Bool)

(assert (=> b!6274059 (= e!3815794 1)))

(assert (= (and d!1969160 c!1137218) b!6274058))

(assert (= (and d!1969160 (not c!1137218)) b!6274059))

(declare-fun m!7095552 () Bool)

(assert (=> b!6274058 m!7095552))

(declare-fun m!7095554 () Bool)

(assert (=> b!6274058 m!7095554))

(assert (=> b!6273258 d!1969160))

(declare-fun b!6274060 () Bool)

(declare-fun e!3815798 () (Set Context!11152))

(declare-fun e!3815796 () (Set Context!11152))

(assert (=> b!6274060 (= e!3815798 e!3815796)))

(declare-fun c!1137220 () Bool)

(assert (=> b!6274060 (= c!1137220 (is-Concat!25037 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun bm!530713 () Bool)

(declare-fun call!530722 () (Set Context!11152))

(declare-fun call!530718 () (Set Context!11152))

(assert (=> bm!530713 (= call!530722 call!530718)))

(declare-fun b!6274061 () Bool)

(declare-fun e!3815797 () Bool)

(assert (=> b!6274061 (= e!3815797 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))))

(declare-fun b!6274062 () Bool)

(declare-fun c!1137223 () Bool)

(assert (=> b!6274062 (= c!1137223 (is-Star!16192 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun e!3815800 () (Set Context!11152))

(assert (=> b!6274062 (= e!3815796 e!3815800)))

(declare-fun b!6274063 () Bool)

(assert (=> b!6274063 (= e!3815800 (as set.empty (Set Context!11152)))))

(declare-fun d!1969162 () Bool)

(declare-fun c!1137219 () Bool)

(assert (=> d!1969162 (= c!1137219 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (= (c!1136845 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326))))))

(declare-fun e!3815795 () (Set Context!11152))

(assert (=> d!1969162 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326)) e!3815795)))

(declare-fun bm!530714 () Bool)

(declare-fun call!530719 () List!64875)

(declare-fun c!1137222 () Bool)

(declare-fun call!530720 () (Set Context!11152))

(assert (=> bm!530714 (= call!530720 (derivationStepZipperDown!1440 (ite c!1137222 (regTwo!32897 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (regOne!32896 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))) (ite c!1137222 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (Context!11153 call!530719)) (h!71200 s!2326)))))

(declare-fun b!6274064 () Bool)

(declare-fun c!1137221 () Bool)

(assert (=> b!6274064 (= c!1137221 e!3815797)))

(declare-fun res!2587821 () Bool)

(assert (=> b!6274064 (=> (not res!2587821) (not e!3815797))))

(assert (=> b!6274064 (= res!2587821 (is-Concat!25037 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun e!3815799 () (Set Context!11152))

(assert (=> b!6274064 (= e!3815799 e!3815798)))

(declare-fun b!6274065 () Bool)

(declare-fun call!530723 () (Set Context!11152))

(assert (=> b!6274065 (= e!3815799 (set.union call!530723 call!530720))))

(declare-fun b!6274066 () Bool)

(assert (=> b!6274066 (= e!3815795 e!3815799)))

(assert (=> b!6274066 (= c!1137222 (is-Union!16192 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun bm!530715 () Bool)

(assert (=> bm!530715 (= call!530718 call!530723)))

(declare-fun bm!530716 () Bool)

(declare-fun call!530721 () List!64875)

(assert (=> bm!530716 (= call!530723 (derivationStepZipperDown!1440 (ite c!1137222 (regOne!32897 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (ite c!1137221 (regTwo!32896 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (ite c!1137220 (regOne!32896 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (reg!16521 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))) (ite (or c!1137222 c!1137221) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (Context!11153 call!530721)) (h!71200 s!2326)))))

(declare-fun b!6274067 () Bool)

(assert (=> b!6274067 (= e!3815800 call!530722)))

(declare-fun bm!530717 () Bool)

(assert (=> bm!530717 (= call!530719 ($colon$colon!2057 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))) (ite (or c!1137221 c!1137220) (regTwo!32896 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))))

(declare-fun bm!530718 () Bool)

(assert (=> bm!530718 (= call!530721 call!530719)))

(declare-fun b!6274068 () Bool)

(assert (=> b!6274068 (= e!3815795 (set.insert (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (as set.empty (Set Context!11152))))))

(declare-fun b!6274069 () Bool)

(assert (=> b!6274069 (= e!3815798 (set.union call!530720 call!530718))))

(declare-fun b!6274070 () Bool)

(assert (=> b!6274070 (= e!3815796 call!530722)))

(assert (= (and d!1969162 c!1137219) b!6274068))

(assert (= (and d!1969162 (not c!1137219)) b!6274066))

(assert (= (and b!6274066 c!1137222) b!6274065))

(assert (= (and b!6274066 (not c!1137222)) b!6274064))

(assert (= (and b!6274064 res!2587821) b!6274061))

(assert (= (and b!6274064 c!1137221) b!6274069))

(assert (= (and b!6274064 (not c!1137221)) b!6274060))

(assert (= (and b!6274060 c!1137220) b!6274070))

(assert (= (and b!6274060 (not c!1137220)) b!6274062))

(assert (= (and b!6274062 c!1137223) b!6274067))

(assert (= (and b!6274062 (not c!1137223)) b!6274063))

(assert (= (or b!6274070 b!6274067) bm!530718))

(assert (= (or b!6274070 b!6274067) bm!530713))

(assert (= (or b!6274069 bm!530718) bm!530717))

(assert (= (or b!6274069 bm!530713) bm!530715))

(assert (= (or b!6274065 b!6274069) bm!530714))

(assert (= (or b!6274065 bm!530715) bm!530716))

(declare-fun m!7095556 () Bool)

(assert (=> bm!530716 m!7095556))

(declare-fun m!7095558 () Bool)

(assert (=> bm!530714 m!7095558))

(declare-fun m!7095560 () Bool)

(assert (=> b!6274061 m!7095560))

(declare-fun m!7095562 () Bool)

(assert (=> b!6274068 m!7095562))

(declare-fun m!7095564 () Bool)

(assert (=> bm!530717 m!7095564))

(assert (=> bm!530577 d!1969162))

(assert (=> d!1968932 d!1969106))

(declare-fun d!1969164 () Bool)

(assert (=> d!1969164 (= (isEmpty!36789 (tail!11970 (exprs!6076 (h!71201 zl!343)))) (is-Nil!64751 (tail!11970 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> b!6272969 d!1969164))

(declare-fun d!1969166 () Bool)

(assert (=> d!1969166 (= (tail!11970 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))

(assert (=> b!6272969 d!1969166))

(declare-fun bs!1566859 () Bool)

(declare-fun b!6274076 () Bool)

(assert (= bs!1566859 (and b!6274076 b!6273102)))

(declare-fun lambda!343799 () Int)

(assert (=> bs!1566859 (not (= lambda!343799 lambda!343707))))

(declare-fun bs!1566860 () Bool)

(assert (= bs!1566860 (and b!6274076 d!1968890)))

(assert (=> bs!1566860 (not (= lambda!343799 lambda!343710))))

(declare-fun bs!1566861 () Bool)

(assert (= bs!1566861 (and b!6274076 b!6273977)))

(assert (=> bs!1566861 (not (= lambda!343799 lambda!343798))))

(declare-fun bs!1566862 () Bool)

(assert (= bs!1566862 (and b!6274076 b!6273945)))

(assert (=> bs!1566862 (not (= lambda!343799 lambda!343793))))

(declare-fun bs!1566863 () Bool)

(assert (= bs!1566863 (and b!6274076 b!6272766)))

(assert (=> bs!1566863 (not (= lambda!343799 lambda!343675))))

(declare-fun bs!1566864 () Bool)

(assert (= bs!1566864 (and b!6274076 b!6273100)))

(assert (=> bs!1566864 (= (and (= (reg!16521 (regOne!32897 lt!2352400)) (reg!16521 r!7292)) (= (regOne!32897 lt!2352400) r!7292)) (= lambda!343799 lambda!343706))))

(declare-fun bs!1566865 () Bool)

(assert (= bs!1566865 (and b!6274076 b!6273943)))

(assert (=> bs!1566865 (= (and (= (reg!16521 (regOne!32897 lt!2352400)) (reg!16521 (regTwo!32897 lt!2352400))) (= (regOne!32897 lt!2352400) (regTwo!32897 lt!2352400))) (= lambda!343799 lambda!343792))))

(declare-fun bs!1566866 () Bool)

(assert (= bs!1566866 (and b!6274076 b!6273265)))

(assert (=> bs!1566866 (= (and (= (reg!16521 (regOne!32897 lt!2352400)) (reg!16521 lt!2352400)) (= (regOne!32897 lt!2352400) lt!2352400)) (= lambda!343799 lambda!343730))))

(declare-fun bs!1566867 () Bool)

(assert (= bs!1566867 (and b!6274076 b!6273975)))

(assert (=> bs!1566867 (= (and (= (reg!16521 (regOne!32897 lt!2352400)) (reg!16521 (regOne!32897 r!7292))) (= (regOne!32897 lt!2352400) (regOne!32897 r!7292))) (= lambda!343799 lambda!343797))))

(declare-fun bs!1566868 () Bool)

(assert (= bs!1566868 (and b!6274076 d!1968892)))

(assert (=> bs!1566868 (not (= lambda!343799 lambda!343716))))

(declare-fun bs!1566869 () Bool)

(assert (= bs!1566869 (and b!6274076 b!6273267)))

(assert (=> bs!1566869 (not (= lambda!343799 lambda!343731))))

(assert (=> bs!1566868 (not (= lambda!343799 lambda!343715))))

(assert (=> bs!1566863 (not (= lambda!343799 lambda!343674))))

(assert (=> b!6274076 true))

(assert (=> b!6274076 true))

(declare-fun bs!1566870 () Bool)

(declare-fun b!6274078 () Bool)

(assert (= bs!1566870 (and b!6274078 b!6273102)))

(declare-fun lambda!343800 () Int)

(assert (=> bs!1566870 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343800 lambda!343707))))

(declare-fun bs!1566871 () Bool)

(assert (= bs!1566871 (and b!6274078 d!1968890)))

(assert (=> bs!1566871 (not (= lambda!343800 lambda!343710))))

(declare-fun bs!1566872 () Bool)

(assert (= bs!1566872 (and b!6274078 b!6274076)))

(assert (=> bs!1566872 (not (= lambda!343800 lambda!343799))))

(declare-fun bs!1566873 () Bool)

(assert (= bs!1566873 (and b!6274078 b!6273977)))

(assert (=> bs!1566873 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 (regOne!32897 r!7292))) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 (regOne!32897 r!7292)))) (= lambda!343800 lambda!343798))))

(declare-fun bs!1566874 () Bool)

(assert (= bs!1566874 (and b!6274078 b!6273945)))

(assert (=> bs!1566874 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 (regTwo!32897 lt!2352400))) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 (regTwo!32897 lt!2352400)))) (= lambda!343800 lambda!343793))))

(declare-fun bs!1566875 () Bool)

(assert (= bs!1566875 (and b!6274078 b!6272766)))

(assert (=> bs!1566875 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343800 lambda!343675))))

(declare-fun bs!1566876 () Bool)

(assert (= bs!1566876 (and b!6274078 b!6273100)))

(assert (=> bs!1566876 (not (= lambda!343800 lambda!343706))))

(declare-fun bs!1566877 () Bool)

(assert (= bs!1566877 (and b!6274078 b!6273943)))

(assert (=> bs!1566877 (not (= lambda!343800 lambda!343792))))

(declare-fun bs!1566878 () Bool)

(assert (= bs!1566878 (and b!6274078 b!6273265)))

(assert (=> bs!1566878 (not (= lambda!343800 lambda!343730))))

(declare-fun bs!1566879 () Bool)

(assert (= bs!1566879 (and b!6274078 b!6273975)))

(assert (=> bs!1566879 (not (= lambda!343800 lambda!343797))))

(declare-fun bs!1566880 () Bool)

(assert (= bs!1566880 (and b!6274078 d!1968892)))

(assert (=> bs!1566880 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 r!7292)) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 r!7292))) (= lambda!343800 lambda!343716))))

(declare-fun bs!1566881 () Bool)

(assert (= bs!1566881 (and b!6274078 b!6273267)))

(assert (=> bs!1566881 (= (and (= (regOne!32896 (regOne!32897 lt!2352400)) (regOne!32896 lt!2352400)) (= (regTwo!32896 (regOne!32897 lt!2352400)) (regTwo!32896 lt!2352400))) (= lambda!343800 lambda!343731))))

(assert (=> bs!1566880 (not (= lambda!343800 lambda!343715))))

(assert (=> bs!1566875 (not (= lambda!343800 lambda!343674))))

(assert (=> b!6274078 true))

(assert (=> b!6274078 true))

(declare-fun b!6274071 () Bool)

(declare-fun res!2587822 () Bool)

(declare-fun e!3815802 () Bool)

(assert (=> b!6274071 (=> res!2587822 e!3815802)))

(declare-fun call!530724 () Bool)

(assert (=> b!6274071 (= res!2587822 call!530724)))

(declare-fun e!3815807 () Bool)

(assert (=> b!6274071 (= e!3815807 e!3815802)))

(declare-fun b!6274072 () Bool)

(declare-fun c!1137226 () Bool)

(assert (=> b!6274072 (= c!1137226 (is-ElementMatch!16192 (regOne!32897 lt!2352400)))))

(declare-fun e!3815805 () Bool)

(declare-fun e!3815801 () Bool)

(assert (=> b!6274072 (= e!3815805 e!3815801)))

(declare-fun bm!530719 () Bool)

(assert (=> bm!530719 (= call!530724 (isEmpty!36792 s!2326))))

(declare-fun b!6274073 () Bool)

(declare-fun c!1137227 () Bool)

(assert (=> b!6274073 (= c!1137227 (is-Union!16192 (regOne!32897 lt!2352400)))))

(declare-fun e!3815803 () Bool)

(assert (=> b!6274073 (= e!3815801 e!3815803)))

(declare-fun d!1969168 () Bool)

(declare-fun c!1137224 () Bool)

(assert (=> d!1969168 (= c!1137224 (is-EmptyExpr!16192 (regOne!32897 lt!2352400)))))

(declare-fun e!3815804 () Bool)

(assert (=> d!1969168 (= (matchRSpec!3293 (regOne!32897 lt!2352400) s!2326) e!3815804)))

(declare-fun c!1137225 () Bool)

(declare-fun bm!530720 () Bool)

(declare-fun call!530725 () Bool)

(assert (=> bm!530720 (= call!530725 (Exists!3262 (ite c!1137225 lambda!343799 lambda!343800)))))

(declare-fun b!6274074 () Bool)

(assert (=> b!6274074 (= e!3815804 call!530724)))

(declare-fun b!6274075 () Bool)

(declare-fun e!3815806 () Bool)

(assert (=> b!6274075 (= e!3815806 (matchRSpec!3293 (regTwo!32897 (regOne!32897 lt!2352400)) s!2326))))

(assert (=> b!6274076 (= e!3815802 call!530725)))

(declare-fun b!6274077 () Bool)

(assert (=> b!6274077 (= e!3815804 e!3815805)))

(declare-fun res!2587824 () Bool)

(assert (=> b!6274077 (= res!2587824 (not (is-EmptyLang!16192 (regOne!32897 lt!2352400))))))

(assert (=> b!6274077 (=> (not res!2587824) (not e!3815805))))

(assert (=> b!6274078 (= e!3815807 call!530725)))

(declare-fun b!6274079 () Bool)

(assert (=> b!6274079 (= e!3815803 e!3815806)))

(declare-fun res!2587823 () Bool)

(assert (=> b!6274079 (= res!2587823 (matchRSpec!3293 (regOne!32897 (regOne!32897 lt!2352400)) s!2326))))

(assert (=> b!6274079 (=> res!2587823 e!3815806)))

(declare-fun b!6274080 () Bool)

(assert (=> b!6274080 (= e!3815803 e!3815807)))

(assert (=> b!6274080 (= c!1137225 (is-Star!16192 (regOne!32897 lt!2352400)))))

(declare-fun b!6274081 () Bool)

(assert (=> b!6274081 (= e!3815801 (= s!2326 (Cons!64752 (c!1136845 (regOne!32897 lt!2352400)) Nil!64752)))))

(assert (= (and d!1969168 c!1137224) b!6274074))

(assert (= (and d!1969168 (not c!1137224)) b!6274077))

(assert (= (and b!6274077 res!2587824) b!6274072))

(assert (= (and b!6274072 c!1137226) b!6274081))

(assert (= (and b!6274072 (not c!1137226)) b!6274073))

(assert (= (and b!6274073 c!1137227) b!6274079))

(assert (= (and b!6274073 (not c!1137227)) b!6274080))

(assert (= (and b!6274079 (not res!2587823)) b!6274075))

(assert (= (and b!6274080 c!1137225) b!6274071))

(assert (= (and b!6274080 (not c!1137225)) b!6274078))

(assert (= (and b!6274071 (not res!2587822)) b!6274076))

(assert (= (or b!6274076 b!6274078) bm!530720))

(assert (= (or b!6274074 b!6274071) bm!530719))

(assert (=> bm!530719 m!7094766))

(declare-fun m!7095566 () Bool)

(assert (=> bm!530720 m!7095566))

(declare-fun m!7095568 () Bool)

(assert (=> b!6274075 m!7095568))

(declare-fun m!7095570 () Bool)

(assert (=> b!6274079 m!7095570))

(assert (=> b!6273268 d!1969168))

(declare-fun d!1969170 () Bool)

(assert (=> d!1969170 (= (isConcat!1121 lt!2352602) (is-Concat!25037 lt!2352602))))

(assert (=> b!6273276 d!1969170))

(declare-fun d!1969172 () Bool)

(assert (=> d!1969172 (= (isEmpty!36792 (t!378434 s!2326)) (is-Nil!64752 (t!378434 s!2326)))))

(assert (=> d!1968834 d!1969172))

(assert (=> d!1968850 d!1968842))

(declare-fun d!1969174 () Bool)

(assert (=> d!1969174 (= (flatMap!1697 z!1189 lambda!343676) (dynLambda!25610 lambda!343676 (h!71201 zl!343)))))

(assert (=> d!1969174 true))

(declare-fun _$13!3385 () Unit!158099)

(assert (=> d!1969174 (= (choose!46546 z!1189 (h!71201 zl!343) lambda!343676) _$13!3385)))

(declare-fun b_lambda!238893 () Bool)

(assert (=> (not b_lambda!238893) (not d!1969174)))

(declare-fun bs!1566882 () Bool)

(assert (= bs!1566882 d!1969174))

(assert (=> bs!1566882 m!7094404))

(assert (=> bs!1566882 m!7094710))

(assert (=> d!1968850 d!1969174))

(declare-fun d!1969176 () Bool)

(assert (=> d!1969176 (= (Exists!3262 lambda!343715) (choose!46548 lambda!343715))))

(declare-fun bs!1566883 () Bool)

(assert (= bs!1566883 d!1969176))

(declare-fun m!7095572 () Bool)

(assert (=> bs!1566883 m!7095572))

(assert (=> d!1968892 d!1969176))

(declare-fun d!1969178 () Bool)

(assert (=> d!1969178 (= (Exists!3262 lambda!343716) (choose!46548 lambda!343716))))

(declare-fun bs!1566884 () Bool)

(assert (= bs!1566884 d!1969178))

(declare-fun m!7095574 () Bool)

(assert (=> bs!1566884 m!7095574))

(assert (=> d!1968892 d!1969178))

(declare-fun bs!1566885 () Bool)

(declare-fun d!1969180 () Bool)

(assert (= bs!1566885 (and d!1969180 b!6273102)))

(declare-fun lambda!343805 () Int)

(assert (=> bs!1566885 (not (= lambda!343805 lambda!343707))))

(declare-fun bs!1566886 () Bool)

(assert (= bs!1566886 (and d!1969180 d!1968890)))

(assert (=> bs!1566886 (= lambda!343805 lambda!343710)))

(declare-fun bs!1566887 () Bool)

(assert (= bs!1566887 (and d!1969180 b!6274076)))

(assert (=> bs!1566887 (not (= lambda!343805 lambda!343799))))

(declare-fun bs!1566888 () Bool)

(assert (= bs!1566888 (and d!1969180 b!6273977)))

(assert (=> bs!1566888 (not (= lambda!343805 lambda!343798))))

(declare-fun bs!1566889 () Bool)

(assert (= bs!1566889 (and d!1969180 b!6273945)))

(assert (=> bs!1566889 (not (= lambda!343805 lambda!343793))))

(declare-fun bs!1566890 () Bool)

(assert (= bs!1566890 (and d!1969180 b!6272766)))

(assert (=> bs!1566890 (not (= lambda!343805 lambda!343675))))

(declare-fun bs!1566891 () Bool)

(assert (= bs!1566891 (and d!1969180 b!6273100)))

(assert (=> bs!1566891 (not (= lambda!343805 lambda!343706))))

(declare-fun bs!1566892 () Bool)

(assert (= bs!1566892 (and d!1969180 b!6273943)))

(assert (=> bs!1566892 (not (= lambda!343805 lambda!343792))))

(declare-fun bs!1566893 () Bool)

(assert (= bs!1566893 (and d!1969180 b!6273265)))

(assert (=> bs!1566893 (not (= lambda!343805 lambda!343730))))

(declare-fun bs!1566894 () Bool)

(assert (= bs!1566894 (and d!1969180 b!6273975)))

(assert (=> bs!1566894 (not (= lambda!343805 lambda!343797))))

(declare-fun bs!1566895 () Bool)

(assert (= bs!1566895 (and d!1969180 b!6274078)))

(assert (=> bs!1566895 (not (= lambda!343805 lambda!343800))))

(declare-fun bs!1566896 () Bool)

(assert (= bs!1566896 (and d!1969180 d!1968892)))

(assert (=> bs!1566896 (not (= lambda!343805 lambda!343716))))

(declare-fun bs!1566897 () Bool)

(assert (= bs!1566897 (and d!1969180 b!6273267)))

(assert (=> bs!1566897 (not (= lambda!343805 lambda!343731))))

(assert (=> bs!1566896 (= lambda!343805 lambda!343715)))

(assert (=> bs!1566890 (= lambda!343805 lambda!343674)))

(assert (=> d!1969180 true))

(assert (=> d!1969180 true))

(assert (=> d!1969180 true))

(declare-fun lambda!343806 () Int)

(assert (=> bs!1566885 (= lambda!343806 lambda!343707)))

(assert (=> bs!1566886 (not (= lambda!343806 lambda!343710))))

(assert (=> bs!1566887 (not (= lambda!343806 lambda!343799))))

(assert (=> bs!1566888 (= (and (= (regOne!32896 r!7292) (regOne!32896 (regOne!32897 r!7292))) (= (regTwo!32896 r!7292) (regTwo!32896 (regOne!32897 r!7292)))) (= lambda!343806 lambda!343798))))

(assert (=> bs!1566889 (= (and (= (regOne!32896 r!7292) (regOne!32896 (regTwo!32897 lt!2352400))) (= (regTwo!32896 r!7292) (regTwo!32896 (regTwo!32897 lt!2352400)))) (= lambda!343806 lambda!343793))))

(assert (=> bs!1566891 (not (= lambda!343806 lambda!343706))))

(assert (=> bs!1566892 (not (= lambda!343806 lambda!343792))))

(assert (=> bs!1566893 (not (= lambda!343806 lambda!343730))))

(assert (=> bs!1566890 (= lambda!343806 lambda!343675)))

(declare-fun bs!1566898 () Bool)

(assert (= bs!1566898 d!1969180))

(assert (=> bs!1566898 (not (= lambda!343806 lambda!343805))))

(assert (=> bs!1566894 (not (= lambda!343806 lambda!343797))))

(assert (=> bs!1566895 (= (and (= (regOne!32896 r!7292) (regOne!32896 (regOne!32897 lt!2352400))) (= (regTwo!32896 r!7292) (regTwo!32896 (regOne!32897 lt!2352400)))) (= lambda!343806 lambda!343800))))

(assert (=> bs!1566896 (= lambda!343806 lambda!343716)))

(assert (=> bs!1566897 (= (and (= (regOne!32896 r!7292) (regOne!32896 lt!2352400)) (= (regTwo!32896 r!7292) (regTwo!32896 lt!2352400))) (= lambda!343806 lambda!343731))))

(assert (=> bs!1566896 (not (= lambda!343806 lambda!343715))))

(assert (=> bs!1566890 (not (= lambda!343806 lambda!343674))))

(assert (=> d!1969180 true))

(assert (=> d!1969180 true))

(assert (=> d!1969180 true))

(assert (=> d!1969180 (= (Exists!3262 lambda!343805) (Exists!3262 lambda!343806))))

(assert (=> d!1969180 true))

(declare-fun _$90!2094 () Unit!158099)

(assert (=> d!1969180 (= (choose!46550 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326) _$90!2094)))

(declare-fun m!7095576 () Bool)

(assert (=> bs!1566898 m!7095576))

(declare-fun m!7095578 () Bool)

(assert (=> bs!1566898 m!7095578))

(assert (=> d!1968892 d!1969180))

(declare-fun b!6274090 () Bool)

(declare-fun e!3815817 () Bool)

(declare-fun call!530726 () Bool)

(assert (=> b!6274090 (= e!3815817 call!530726)))

(declare-fun b!6274091 () Bool)

(declare-fun e!3815816 () Bool)

(declare-fun e!3815813 () Bool)

(assert (=> b!6274091 (= e!3815816 e!3815813)))

(declare-fun res!2587836 () Bool)

(assert (=> b!6274091 (= res!2587836 (not (nullable!6185 (reg!16521 (regOne!32896 r!7292)))))))

(assert (=> b!6274091 (=> (not res!2587836) (not e!3815813))))

(declare-fun c!1137228 () Bool)

(declare-fun c!1137229 () Bool)

(declare-fun call!530728 () Bool)

(declare-fun bm!530721 () Bool)

(assert (=> bm!530721 (= call!530728 (validRegex!7928 (ite c!1137228 (reg!16521 (regOne!32896 r!7292)) (ite c!1137229 (regOne!32897 (regOne!32896 r!7292)) (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun b!6274092 () Bool)

(declare-fun e!3815818 () Bool)

(assert (=> b!6274092 (= e!3815818 e!3815816)))

(assert (=> b!6274092 (= c!1137228 (is-Star!16192 (regOne!32896 r!7292)))))

(declare-fun b!6274093 () Bool)

(declare-fun e!3815815 () Bool)

(assert (=> b!6274093 (= e!3815816 e!3815815)))

(assert (=> b!6274093 (= c!1137229 (is-Union!16192 (regOne!32896 r!7292)))))

(declare-fun d!1969182 () Bool)

(declare-fun res!2587833 () Bool)

(assert (=> d!1969182 (=> res!2587833 e!3815818)))

(assert (=> d!1969182 (= res!2587833 (is-ElementMatch!16192 (regOne!32896 r!7292)))))

(assert (=> d!1969182 (= (validRegex!7928 (regOne!32896 r!7292)) e!3815818)))

(declare-fun bm!530722 () Bool)

(declare-fun call!530727 () Bool)

(assert (=> bm!530722 (= call!530727 call!530728)))

(declare-fun b!6274094 () Bool)

(declare-fun res!2587835 () Bool)

(declare-fun e!3815814 () Bool)

(assert (=> b!6274094 (=> res!2587835 e!3815814)))

(assert (=> b!6274094 (= res!2587835 (not (is-Concat!25037 (regOne!32896 r!7292))))))

(assert (=> b!6274094 (= e!3815815 e!3815814)))

(declare-fun b!6274095 () Bool)

(declare-fun e!3815812 () Bool)

(assert (=> b!6274095 (= e!3815814 e!3815812)))

(declare-fun res!2587834 () Bool)

(assert (=> b!6274095 (=> (not res!2587834) (not e!3815812))))

(assert (=> b!6274095 (= res!2587834 call!530727)))

(declare-fun b!6274096 () Bool)

(assert (=> b!6274096 (= e!3815813 call!530728)))

(declare-fun bm!530723 () Bool)

(assert (=> bm!530723 (= call!530726 (validRegex!7928 (ite c!1137229 (regTwo!32897 (regOne!32896 r!7292)) (regTwo!32896 (regOne!32896 r!7292)))))))

(declare-fun b!6274097 () Bool)

(assert (=> b!6274097 (= e!3815812 call!530726)))

(declare-fun b!6274098 () Bool)

(declare-fun res!2587837 () Bool)

(assert (=> b!6274098 (=> (not res!2587837) (not e!3815817))))

(assert (=> b!6274098 (= res!2587837 call!530727)))

(assert (=> b!6274098 (= e!3815815 e!3815817)))

(assert (= (and d!1969182 (not res!2587833)) b!6274092))

(assert (= (and b!6274092 c!1137228) b!6274091))

(assert (= (and b!6274092 (not c!1137228)) b!6274093))

(assert (= (and b!6274091 res!2587836) b!6274096))

(assert (= (and b!6274093 c!1137229) b!6274098))

(assert (= (and b!6274093 (not c!1137229)) b!6274094))

(assert (= (and b!6274098 res!2587837) b!6274090))

(assert (= (and b!6274094 (not res!2587835)) b!6274095))

(assert (= (and b!6274095 res!2587834) b!6274097))

(assert (= (or b!6274090 b!6274097) bm!530723))

(assert (= (or b!6274098 b!6274095) bm!530722))

(assert (= (or b!6274096 bm!530722) bm!530721))

(declare-fun m!7095580 () Bool)

(assert (=> b!6274091 m!7095580))

(declare-fun m!7095582 () Bool)

(assert (=> bm!530721 m!7095582))

(declare-fun m!7095584 () Bool)

(assert (=> bm!530723 m!7095584))

(assert (=> d!1968892 d!1969182))

(declare-fun d!1969184 () Bool)

(assert (=> d!1969184 (= (isEmpty!36789 (exprs!6076 (h!71201 zl!343))) (is-Nil!64751 (exprs!6076 (h!71201 zl!343))))))

(assert (=> b!6272961 d!1969184))

(assert (=> b!6273138 d!1969120))

(assert (=> b!6273138 d!1969122))

(declare-fun d!1969186 () Bool)

(assert (=> d!1969186 (= (isEmptyExpr!1598 lt!2352603) (is-EmptyExpr!16192 lt!2352603))))

(assert (=> b!6273284 d!1969186))

(declare-fun d!1969188 () Bool)

(declare-fun res!2587842 () Bool)

(declare-fun e!3815823 () Bool)

(assert (=> d!1969188 (=> res!2587842 e!3815823)))

(assert (=> d!1969188 (= res!2587842 (is-Nil!64751 lt!2352613))))

(assert (=> d!1969188 (= (forall!15322 lt!2352613 lambda!343739) e!3815823)))

(declare-fun b!6274103 () Bool)

(declare-fun e!3815824 () Bool)

(assert (=> b!6274103 (= e!3815823 e!3815824)))

(declare-fun res!2587843 () Bool)

(assert (=> b!6274103 (=> (not res!2587843) (not e!3815824))))

(declare-fun dynLambda!25612 (Int Regex!16192) Bool)

(assert (=> b!6274103 (= res!2587843 (dynLambda!25612 lambda!343739 (h!71199 lt!2352613)))))

(declare-fun b!6274104 () Bool)

(assert (=> b!6274104 (= e!3815824 (forall!15322 (t!378433 lt!2352613) lambda!343739))))

(assert (= (and d!1969188 (not res!2587842)) b!6274103))

(assert (= (and b!6274103 res!2587843) b!6274104))

(declare-fun b_lambda!238895 () Bool)

(assert (=> (not b_lambda!238895) (not b!6274103)))

(declare-fun m!7095586 () Bool)

(assert (=> b!6274103 m!7095586))

(declare-fun m!7095588 () Bool)

(assert (=> b!6274104 m!7095588))

(assert (=> d!1968942 d!1969188))

(declare-fun d!1969190 () Bool)

(declare-fun c!1137232 () Bool)

(assert (=> d!1969190 (= c!1137232 (is-Nil!64753 lt!2352539))))

(declare-fun e!3815827 () (Set Context!11152))

(assert (=> d!1969190 (= (content!12165 lt!2352539) e!3815827)))

(declare-fun b!6274109 () Bool)

(assert (=> b!6274109 (= e!3815827 (as set.empty (Set Context!11152)))))

(declare-fun b!6274110 () Bool)

(assert (=> b!6274110 (= e!3815827 (set.union (set.insert (h!71201 lt!2352539) (as set.empty (Set Context!11152))) (content!12165 (t!378435 lt!2352539))))))

(assert (= (and d!1969190 c!1137232) b!6274109))

(assert (= (and d!1969190 (not c!1137232)) b!6274110))

(declare-fun m!7095590 () Bool)

(assert (=> b!6274110 m!7095590))

(declare-fun m!7095592 () Bool)

(assert (=> b!6274110 m!7095592))

(assert (=> b!6272940 d!1969190))

(assert (=> b!6273366 d!1968828))

(declare-fun bs!1566899 () Bool)

(declare-fun d!1969192 () Bool)

(assert (= bs!1566899 (and d!1969192 d!1969136)))

(declare-fun lambda!343807 () Int)

(assert (=> bs!1566899 (= lambda!343807 lambda!343796)))

(declare-fun bs!1566900 () Bool)

(assert (= bs!1566900 (and d!1969192 d!1968922)))

(assert (=> bs!1566900 (= lambda!343807 lambda!343732)))

(declare-fun bs!1566901 () Bool)

(assert (= bs!1566901 (and d!1969192 d!1969118)))

(assert (=> bs!1566901 (= lambda!343807 lambda!343791)))

(declare-fun bs!1566902 () Bool)

(assert (= bs!1566902 (and d!1969192 d!1968940)))

(assert (=> bs!1566902 (= lambda!343807 lambda!343736)))

(declare-fun bs!1566903 () Bool)

(assert (= bs!1566903 (and d!1969192 d!1968942)))

(assert (=> bs!1566903 (= lambda!343807 lambda!343739)))

(declare-fun bs!1566904 () Bool)

(assert (= bs!1566904 (and d!1969192 d!1968924)))

(assert (=> bs!1566904 (= lambda!343807 lambda!343733)))

(declare-fun bs!1566905 () Bool)

(assert (= bs!1566905 (and d!1969192 d!1968914)))

(assert (=> bs!1566905 (= lambda!343807 lambda!343729)))

(declare-fun bs!1566906 () Bool)

(assert (= bs!1566906 (and d!1969192 d!1968854)))

(assert (=> bs!1566906 (= lambda!343807 lambda!343697)))

(declare-fun bs!1566907 () Bool)

(assert (= bs!1566907 (and d!1969192 d!1968828)))

(assert (=> bs!1566907 (= lambda!343807 lambda!343694)))

(declare-fun lt!2352706 () List!64875)

(assert (=> d!1969192 (forall!15322 lt!2352706 lambda!343807)))

(declare-fun e!3815828 () List!64875)

(assert (=> d!1969192 (= lt!2352706 e!3815828)))

(declare-fun c!1137233 () Bool)

(assert (=> d!1969192 (= c!1137233 (is-Cons!64753 (t!378435 zl!343)))))

(assert (=> d!1969192 (= (unfocusZipperList!1613 (t!378435 zl!343)) lt!2352706)))

(declare-fun b!6274111 () Bool)

(assert (=> b!6274111 (= e!3815828 (Cons!64751 (generalisedConcat!1789 (exprs!6076 (h!71201 (t!378435 zl!343)))) (unfocusZipperList!1613 (t!378435 (t!378435 zl!343)))))))

(declare-fun b!6274112 () Bool)

(assert (=> b!6274112 (= e!3815828 Nil!64751)))

(assert (= (and d!1969192 c!1137233) b!6274111))

(assert (= (and d!1969192 (not c!1137233)) b!6274112))

(declare-fun m!7095594 () Bool)

(assert (=> d!1969192 m!7095594))

(declare-fun m!7095596 () Bool)

(assert (=> b!6274111 m!7095596))

(declare-fun m!7095598 () Bool)

(assert (=> b!6274111 m!7095598))

(assert (=> b!6273366 d!1969192))

(declare-fun bs!1566908 () Bool)

(declare-fun b!6274118 () Bool)

(assert (= bs!1566908 (and b!6274118 b!6273102)))

(declare-fun lambda!343808 () Int)

(assert (=> bs!1566908 (not (= lambda!343808 lambda!343707))))

(declare-fun bs!1566909 () Bool)

(assert (= bs!1566909 (and b!6274118 d!1968890)))

(assert (=> bs!1566909 (not (= lambda!343808 lambda!343710))))

(declare-fun bs!1566910 () Bool)

(assert (= bs!1566910 (and b!6274118 b!6274076)))

(assert (=> bs!1566910 (= (and (= (reg!16521 (regTwo!32897 r!7292)) (reg!16521 (regOne!32897 lt!2352400))) (= (regTwo!32897 r!7292) (regOne!32897 lt!2352400))) (= lambda!343808 lambda!343799))))

(declare-fun bs!1566911 () Bool)

(assert (= bs!1566911 (and b!6274118 d!1969180)))

(assert (=> bs!1566911 (not (= lambda!343808 lambda!343806))))

(declare-fun bs!1566912 () Bool)

(assert (= bs!1566912 (and b!6274118 b!6273977)))

(assert (=> bs!1566912 (not (= lambda!343808 lambda!343798))))

(declare-fun bs!1566913 () Bool)

(assert (= bs!1566913 (and b!6274118 b!6273945)))

(assert (=> bs!1566913 (not (= lambda!343808 lambda!343793))))

(declare-fun bs!1566914 () Bool)

(assert (= bs!1566914 (and b!6274118 b!6273100)))

(assert (=> bs!1566914 (= (and (= (reg!16521 (regTwo!32897 r!7292)) (reg!16521 r!7292)) (= (regTwo!32897 r!7292) r!7292)) (= lambda!343808 lambda!343706))))

(declare-fun bs!1566915 () Bool)

(assert (= bs!1566915 (and b!6274118 b!6273943)))

(assert (=> bs!1566915 (= (and (= (reg!16521 (regTwo!32897 r!7292)) (reg!16521 (regTwo!32897 lt!2352400))) (= (regTwo!32897 r!7292) (regTwo!32897 lt!2352400))) (= lambda!343808 lambda!343792))))

(declare-fun bs!1566916 () Bool)

(assert (= bs!1566916 (and b!6274118 b!6273265)))

(assert (=> bs!1566916 (= (and (= (reg!16521 (regTwo!32897 r!7292)) (reg!16521 lt!2352400)) (= (regTwo!32897 r!7292) lt!2352400)) (= lambda!343808 lambda!343730))))

(declare-fun bs!1566917 () Bool)

(assert (= bs!1566917 (and b!6274118 b!6272766)))

(assert (=> bs!1566917 (not (= lambda!343808 lambda!343675))))

(assert (=> bs!1566911 (not (= lambda!343808 lambda!343805))))

(declare-fun bs!1566918 () Bool)

(assert (= bs!1566918 (and b!6274118 b!6273975)))

(assert (=> bs!1566918 (= (and (= (reg!16521 (regTwo!32897 r!7292)) (reg!16521 (regOne!32897 r!7292))) (= (regTwo!32897 r!7292) (regOne!32897 r!7292))) (= lambda!343808 lambda!343797))))

(declare-fun bs!1566919 () Bool)

(assert (= bs!1566919 (and b!6274118 b!6274078)))

(assert (=> bs!1566919 (not (= lambda!343808 lambda!343800))))

(declare-fun bs!1566920 () Bool)

(assert (= bs!1566920 (and b!6274118 d!1968892)))

(assert (=> bs!1566920 (not (= lambda!343808 lambda!343716))))

(declare-fun bs!1566921 () Bool)

(assert (= bs!1566921 (and b!6274118 b!6273267)))

(assert (=> bs!1566921 (not (= lambda!343808 lambda!343731))))

(assert (=> bs!1566920 (not (= lambda!343808 lambda!343715))))

(assert (=> bs!1566917 (not (= lambda!343808 lambda!343674))))

(assert (=> b!6274118 true))

(assert (=> b!6274118 true))

(declare-fun bs!1566922 () Bool)

(declare-fun b!6274120 () Bool)

(assert (= bs!1566922 (and b!6274120 b!6273102)))

(declare-fun lambda!343809 () Int)

(assert (=> bs!1566922 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343809 lambda!343707))))

(declare-fun bs!1566923 () Bool)

(assert (= bs!1566923 (and b!6274120 d!1968890)))

(assert (=> bs!1566923 (not (= lambda!343809 lambda!343710))))

(declare-fun bs!1566924 () Bool)

(assert (= bs!1566924 (and b!6274120 b!6274076)))

(assert (=> bs!1566924 (not (= lambda!343809 lambda!343799))))

(declare-fun bs!1566925 () Bool)

(assert (= bs!1566925 (and b!6274120 d!1969180)))

(assert (=> bs!1566925 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343809 lambda!343806))))

(declare-fun bs!1566926 () Bool)

(assert (= bs!1566926 (and b!6274120 b!6273977)))

(assert (=> bs!1566926 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 (regOne!32897 r!7292))) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 (regOne!32897 r!7292)))) (= lambda!343809 lambda!343798))))

(declare-fun bs!1566927 () Bool)

(assert (= bs!1566927 (and b!6274120 b!6273945)))

(assert (=> bs!1566927 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 (regTwo!32897 lt!2352400))) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 (regTwo!32897 lt!2352400)))) (= lambda!343809 lambda!343793))))

(declare-fun bs!1566928 () Bool)

(assert (= bs!1566928 (and b!6274120 b!6273100)))

(assert (=> bs!1566928 (not (= lambda!343809 lambda!343706))))

(declare-fun bs!1566929 () Bool)

(assert (= bs!1566929 (and b!6274120 b!6273943)))

(assert (=> bs!1566929 (not (= lambda!343809 lambda!343792))))

(declare-fun bs!1566930 () Bool)

(assert (= bs!1566930 (and b!6274120 b!6273265)))

(assert (=> bs!1566930 (not (= lambda!343809 lambda!343730))))

(declare-fun bs!1566931 () Bool)

(assert (= bs!1566931 (and b!6274120 b!6272766)))

(assert (=> bs!1566931 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343809 lambda!343675))))

(declare-fun bs!1566932 () Bool)

(assert (= bs!1566932 (and b!6274120 b!6274118)))

(assert (=> bs!1566932 (not (= lambda!343809 lambda!343808))))

(assert (=> bs!1566925 (not (= lambda!343809 lambda!343805))))

(declare-fun bs!1566933 () Bool)

(assert (= bs!1566933 (and b!6274120 b!6273975)))

(assert (=> bs!1566933 (not (= lambda!343809 lambda!343797))))

(declare-fun bs!1566934 () Bool)

(assert (= bs!1566934 (and b!6274120 b!6274078)))

(assert (=> bs!1566934 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 (regOne!32897 lt!2352400))) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 (regOne!32897 lt!2352400)))) (= lambda!343809 lambda!343800))))

(declare-fun bs!1566935 () Bool)

(assert (= bs!1566935 (and b!6274120 d!1968892)))

(assert (=> bs!1566935 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 r!7292)) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 r!7292))) (= lambda!343809 lambda!343716))))

(declare-fun bs!1566936 () Bool)

(assert (= bs!1566936 (and b!6274120 b!6273267)))

(assert (=> bs!1566936 (= (and (= (regOne!32896 (regTwo!32897 r!7292)) (regOne!32896 lt!2352400)) (= (regTwo!32896 (regTwo!32897 r!7292)) (regTwo!32896 lt!2352400))) (= lambda!343809 lambda!343731))))

(assert (=> bs!1566935 (not (= lambda!343809 lambda!343715))))

(assert (=> bs!1566931 (not (= lambda!343809 lambda!343674))))

(assert (=> b!6274120 true))

(assert (=> b!6274120 true))

(declare-fun b!6274113 () Bool)

(declare-fun res!2587844 () Bool)

(declare-fun e!3815830 () Bool)

(assert (=> b!6274113 (=> res!2587844 e!3815830)))

(declare-fun call!530729 () Bool)

(assert (=> b!6274113 (= res!2587844 call!530729)))

(declare-fun e!3815835 () Bool)

(assert (=> b!6274113 (= e!3815835 e!3815830)))

(declare-fun b!6274114 () Bool)

(declare-fun c!1137236 () Bool)

(assert (=> b!6274114 (= c!1137236 (is-ElementMatch!16192 (regTwo!32897 r!7292)))))

(declare-fun e!3815833 () Bool)

(declare-fun e!3815829 () Bool)

(assert (=> b!6274114 (= e!3815833 e!3815829)))

(declare-fun bm!530724 () Bool)

(assert (=> bm!530724 (= call!530729 (isEmpty!36792 s!2326))))

(declare-fun b!6274115 () Bool)

(declare-fun c!1137237 () Bool)

(assert (=> b!6274115 (= c!1137237 (is-Union!16192 (regTwo!32897 r!7292)))))

(declare-fun e!3815831 () Bool)

(assert (=> b!6274115 (= e!3815829 e!3815831)))

(declare-fun d!1969194 () Bool)

(declare-fun c!1137234 () Bool)

(assert (=> d!1969194 (= c!1137234 (is-EmptyExpr!16192 (regTwo!32897 r!7292)))))

(declare-fun e!3815832 () Bool)

(assert (=> d!1969194 (= (matchRSpec!3293 (regTwo!32897 r!7292) s!2326) e!3815832)))

(declare-fun call!530730 () Bool)

(declare-fun bm!530725 () Bool)

(declare-fun c!1137235 () Bool)

(assert (=> bm!530725 (= call!530730 (Exists!3262 (ite c!1137235 lambda!343808 lambda!343809)))))

(declare-fun b!6274116 () Bool)

(assert (=> b!6274116 (= e!3815832 call!530729)))

(declare-fun b!6274117 () Bool)

(declare-fun e!3815834 () Bool)

(assert (=> b!6274117 (= e!3815834 (matchRSpec!3293 (regTwo!32897 (regTwo!32897 r!7292)) s!2326))))

(assert (=> b!6274118 (= e!3815830 call!530730)))

(declare-fun b!6274119 () Bool)

(assert (=> b!6274119 (= e!3815832 e!3815833)))

(declare-fun res!2587846 () Bool)

(assert (=> b!6274119 (= res!2587846 (not (is-EmptyLang!16192 (regTwo!32897 r!7292))))))

(assert (=> b!6274119 (=> (not res!2587846) (not e!3815833))))

(assert (=> b!6274120 (= e!3815835 call!530730)))

(declare-fun b!6274121 () Bool)

(assert (=> b!6274121 (= e!3815831 e!3815834)))

(declare-fun res!2587845 () Bool)

(assert (=> b!6274121 (= res!2587845 (matchRSpec!3293 (regOne!32897 (regTwo!32897 r!7292)) s!2326))))

(assert (=> b!6274121 (=> res!2587845 e!3815834)))

(declare-fun b!6274122 () Bool)

(assert (=> b!6274122 (= e!3815831 e!3815835)))

(assert (=> b!6274122 (= c!1137235 (is-Star!16192 (regTwo!32897 r!7292)))))

(declare-fun b!6274123 () Bool)

(assert (=> b!6274123 (= e!3815829 (= s!2326 (Cons!64752 (c!1136845 (regTwo!32897 r!7292)) Nil!64752)))))

(assert (= (and d!1969194 c!1137234) b!6274116))

(assert (= (and d!1969194 (not c!1137234)) b!6274119))

(assert (= (and b!6274119 res!2587846) b!6274114))

(assert (= (and b!6274114 c!1137236) b!6274123))

(assert (= (and b!6274114 (not c!1137236)) b!6274115))

(assert (= (and b!6274115 c!1137237) b!6274121))

(assert (= (and b!6274115 (not c!1137237)) b!6274122))

(assert (= (and b!6274121 (not res!2587845)) b!6274117))

(assert (= (and b!6274122 c!1137235) b!6274113))

(assert (= (and b!6274122 (not c!1137235)) b!6274120))

(assert (= (and b!6274113 (not res!2587844)) b!6274118))

(assert (= (or b!6274118 b!6274120) bm!530725))

(assert (= (or b!6274116 b!6274113) bm!530724))

(assert (=> bm!530724 m!7094766))

(declare-fun m!7095600 () Bool)

(assert (=> bm!530725 m!7095600))

(declare-fun m!7095602 () Bool)

(assert (=> b!6274117 m!7095602))

(declare-fun m!7095604 () Bool)

(assert (=> b!6274121 m!7095604))

(assert (=> b!6273099 d!1969194))

(declare-fun d!1969196 () Bool)

(declare-fun c!1137238 () Bool)

(assert (=> d!1969196 (= c!1137238 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815836 () Bool)

(assert (=> d!1969196 (= (matchZipper!2204 (derivationStepZipper!2158 (set.union lt!2352420 lt!2352419) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815836)))

(declare-fun b!6274124 () Bool)

(assert (=> b!6274124 (= e!3815836 (nullableZipper!1962 (derivationStepZipper!2158 (set.union lt!2352420 lt!2352419) (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274125 () Bool)

(assert (=> b!6274125 (= e!3815836 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 (set.union lt!2352420 lt!2352419) (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969196 c!1137238) b!6274124))

(assert (= (and d!1969196 (not c!1137238)) b!6274125))

(assert (=> d!1969196 m!7094636))

(declare-fun m!7095606 () Bool)

(assert (=> d!1969196 m!7095606))

(assert (=> b!6274124 m!7094674))

(declare-fun m!7095608 () Bool)

(assert (=> b!6274124 m!7095608))

(assert (=> b!6274125 m!7094636))

(declare-fun m!7095610 () Bool)

(assert (=> b!6274125 m!7095610))

(assert (=> b!6274125 m!7094674))

(assert (=> b!6274125 m!7095610))

(declare-fun m!7095612 () Bool)

(assert (=> b!6274125 m!7095612))

(assert (=> b!6274125 m!7094636))

(declare-fun m!7095614 () Bool)

(assert (=> b!6274125 m!7095614))

(assert (=> b!6274125 m!7095612))

(assert (=> b!6274125 m!7095614))

(declare-fun m!7095616 () Bool)

(assert (=> b!6274125 m!7095616))

(assert (=> b!6272977 d!1969196))

(declare-fun bs!1566937 () Bool)

(declare-fun d!1969198 () Bool)

(assert (= bs!1566937 (and d!1969198 b!6272771)))

(declare-fun lambda!343810 () Int)

(assert (=> bs!1566937 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343810 lambda!343676))))

(declare-fun bs!1566938 () Bool)

(assert (= bs!1566938 (and d!1969198 d!1968862)))

(assert (=> bs!1566938 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343810 lambda!343700))))

(declare-fun bs!1566939 () Bool)

(assert (= bs!1566939 (and d!1969198 d!1968876)))

(assert (=> bs!1566939 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343810 lambda!343701))))

(declare-fun bs!1566940 () Bool)

(assert (= bs!1566940 (and d!1969198 d!1969128)))

(assert (=> bs!1566940 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343810 lambda!343794))))

(assert (=> d!1969198 true))

(assert (=> d!1969198 (= (derivationStepZipper!2158 (set.union lt!2352420 lt!2352419) (head!12884 (t!378434 s!2326))) (flatMap!1697 (set.union lt!2352420 lt!2352419) lambda!343810))))

(declare-fun bs!1566941 () Bool)

(assert (= bs!1566941 d!1969198))

(declare-fun m!7095618 () Bool)

(assert (=> bs!1566941 m!7095618))

(assert (=> b!6272977 d!1969198))

(declare-fun d!1969200 () Bool)

(assert (=> d!1969200 (= (head!12884 (t!378434 s!2326)) (h!71200 (t!378434 s!2326)))))

(assert (=> b!6272977 d!1969200))

(declare-fun d!1969202 () Bool)

(assert (=> d!1969202 (= (tail!11969 (t!378434 s!2326)) (t!378434 (t!378434 s!2326)))))

(assert (=> b!6272977 d!1969202))

(declare-fun b!6274126 () Bool)

(declare-fun e!3815842 () Bool)

(declare-fun call!530731 () Bool)

(assert (=> b!6274126 (= e!3815842 call!530731)))

(declare-fun b!6274127 () Bool)

(declare-fun e!3815841 () Bool)

(declare-fun e!3815838 () Bool)

(assert (=> b!6274127 (= e!3815841 e!3815838)))

(declare-fun res!2587850 () Bool)

(assert (=> b!6274127 (= res!2587850 (not (nullable!6185 (reg!16521 lt!2352542))))))

(assert (=> b!6274127 (=> (not res!2587850) (not e!3815838))))

(declare-fun c!1137240 () Bool)

(declare-fun c!1137239 () Bool)

(declare-fun bm!530726 () Bool)

(declare-fun call!530733 () Bool)

(assert (=> bm!530726 (= call!530733 (validRegex!7928 (ite c!1137239 (reg!16521 lt!2352542) (ite c!1137240 (regOne!32897 lt!2352542) (regOne!32896 lt!2352542)))))))

(declare-fun b!6274128 () Bool)

(declare-fun e!3815843 () Bool)

(assert (=> b!6274128 (= e!3815843 e!3815841)))

(assert (=> b!6274128 (= c!1137239 (is-Star!16192 lt!2352542))))

(declare-fun b!6274129 () Bool)

(declare-fun e!3815840 () Bool)

(assert (=> b!6274129 (= e!3815841 e!3815840)))

(assert (=> b!6274129 (= c!1137240 (is-Union!16192 lt!2352542))))

(declare-fun d!1969204 () Bool)

(declare-fun res!2587847 () Bool)

(assert (=> d!1969204 (=> res!2587847 e!3815843)))

(assert (=> d!1969204 (= res!2587847 (is-ElementMatch!16192 lt!2352542))))

(assert (=> d!1969204 (= (validRegex!7928 lt!2352542) e!3815843)))

(declare-fun bm!530727 () Bool)

(declare-fun call!530732 () Bool)

(assert (=> bm!530727 (= call!530732 call!530733)))

(declare-fun b!6274130 () Bool)

(declare-fun res!2587849 () Bool)

(declare-fun e!3815839 () Bool)

(assert (=> b!6274130 (=> res!2587849 e!3815839)))

(assert (=> b!6274130 (= res!2587849 (not (is-Concat!25037 lt!2352542)))))

(assert (=> b!6274130 (= e!3815840 e!3815839)))

(declare-fun b!6274131 () Bool)

(declare-fun e!3815837 () Bool)

(assert (=> b!6274131 (= e!3815839 e!3815837)))

(declare-fun res!2587848 () Bool)

(assert (=> b!6274131 (=> (not res!2587848) (not e!3815837))))

(assert (=> b!6274131 (= res!2587848 call!530732)))

(declare-fun b!6274132 () Bool)

(assert (=> b!6274132 (= e!3815838 call!530733)))

(declare-fun bm!530728 () Bool)

(assert (=> bm!530728 (= call!530731 (validRegex!7928 (ite c!1137240 (regTwo!32897 lt!2352542) (regTwo!32896 lt!2352542))))))

(declare-fun b!6274133 () Bool)

(assert (=> b!6274133 (= e!3815837 call!530731)))

(declare-fun b!6274134 () Bool)

(declare-fun res!2587851 () Bool)

(assert (=> b!6274134 (=> (not res!2587851) (not e!3815842))))

(assert (=> b!6274134 (= res!2587851 call!530732)))

(assert (=> b!6274134 (= e!3815840 e!3815842)))

(assert (= (and d!1969204 (not res!2587847)) b!6274128))

(assert (= (and b!6274128 c!1137239) b!6274127))

(assert (= (and b!6274128 (not c!1137239)) b!6274129))

(assert (= (and b!6274127 res!2587850) b!6274132))

(assert (= (and b!6274129 c!1137240) b!6274134))

(assert (= (and b!6274129 (not c!1137240)) b!6274130))

(assert (= (and b!6274134 res!2587851) b!6274126))

(assert (= (and b!6274130 (not res!2587849)) b!6274131))

(assert (= (and b!6274131 res!2587848) b!6274133))

(assert (= (or b!6274126 b!6274133) bm!530728))

(assert (= (or b!6274134 b!6274131) bm!530727))

(assert (= (or b!6274132 bm!530727) bm!530726))

(declare-fun m!7095620 () Bool)

(assert (=> b!6274127 m!7095620))

(declare-fun m!7095622 () Bool)

(assert (=> bm!530726 m!7095622))

(declare-fun m!7095624 () Bool)

(assert (=> bm!530728 m!7095624))

(assert (=> d!1968828 d!1969204))

(declare-fun d!1969206 () Bool)

(declare-fun res!2587852 () Bool)

(declare-fun e!3815844 () Bool)

(assert (=> d!1969206 (=> res!2587852 e!3815844)))

(assert (=> d!1969206 (= res!2587852 (is-Nil!64751 (exprs!6076 (h!71201 zl!343))))))

(assert (=> d!1969206 (= (forall!15322 (exprs!6076 (h!71201 zl!343)) lambda!343694) e!3815844)))

(declare-fun b!6274135 () Bool)

(declare-fun e!3815845 () Bool)

(assert (=> b!6274135 (= e!3815844 e!3815845)))

(declare-fun res!2587853 () Bool)

(assert (=> b!6274135 (=> (not res!2587853) (not e!3815845))))

(assert (=> b!6274135 (= res!2587853 (dynLambda!25612 lambda!343694 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6274136 () Bool)

(assert (=> b!6274136 (= e!3815845 (forall!15322 (t!378433 (exprs!6076 (h!71201 zl!343))) lambda!343694))))

(assert (= (and d!1969206 (not res!2587852)) b!6274135))

(assert (= (and b!6274135 res!2587853) b!6274136))

(declare-fun b_lambda!238897 () Bool)

(assert (=> (not b_lambda!238897) (not b!6274135)))

(declare-fun m!7095626 () Bool)

(assert (=> b!6274135 m!7095626))

(declare-fun m!7095628 () Bool)

(assert (=> b!6274136 m!7095628))

(assert (=> d!1968828 d!1969206))

(declare-fun bs!1566942 () Bool)

(declare-fun d!1969208 () Bool)

(assert (= bs!1566942 (and d!1969208 d!1969136)))

(declare-fun lambda!343811 () Int)

(assert (=> bs!1566942 (= lambda!343811 lambda!343796)))

(declare-fun bs!1566943 () Bool)

(assert (= bs!1566943 (and d!1969208 d!1968922)))

(assert (=> bs!1566943 (= lambda!343811 lambda!343732)))

(declare-fun bs!1566944 () Bool)

(assert (= bs!1566944 (and d!1969208 d!1969118)))

(assert (=> bs!1566944 (= lambda!343811 lambda!343791)))

(declare-fun bs!1566945 () Bool)

(assert (= bs!1566945 (and d!1969208 d!1968940)))

(assert (=> bs!1566945 (= lambda!343811 lambda!343736)))

(declare-fun bs!1566946 () Bool)

(assert (= bs!1566946 (and d!1969208 d!1969192)))

(assert (=> bs!1566946 (= lambda!343811 lambda!343807)))

(declare-fun bs!1566947 () Bool)

(assert (= bs!1566947 (and d!1969208 d!1968942)))

(assert (=> bs!1566947 (= lambda!343811 lambda!343739)))

(declare-fun bs!1566948 () Bool)

(assert (= bs!1566948 (and d!1969208 d!1968924)))

(assert (=> bs!1566948 (= lambda!343811 lambda!343733)))

(declare-fun bs!1566949 () Bool)

(assert (= bs!1566949 (and d!1969208 d!1968914)))

(assert (=> bs!1566949 (= lambda!343811 lambda!343729)))

(declare-fun bs!1566950 () Bool)

(assert (= bs!1566950 (and d!1969208 d!1968854)))

(assert (=> bs!1566950 (= lambda!343811 lambda!343697)))

(declare-fun bs!1566951 () Bool)

(assert (= bs!1566951 (and d!1969208 d!1968828)))

(assert (=> bs!1566951 (= lambda!343811 lambda!343694)))

(assert (=> d!1969208 (= (inv!83728 setElem!42671) (forall!15322 (exprs!6076 setElem!42671) lambda!343811))))

(declare-fun bs!1566952 () Bool)

(assert (= bs!1566952 d!1969208))

(declare-fun m!7095630 () Bool)

(assert (=> bs!1566952 m!7095630))

(assert (=> setNonEmpty!42671 d!1969208))

(declare-fun d!1969210 () Bool)

(declare-fun c!1137241 () Bool)

(assert (=> d!1969210 (= c!1137241 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815846 () Bool)

(assert (=> d!1969210 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352393 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815846)))

(declare-fun b!6274137 () Bool)

(assert (=> b!6274137 (= e!3815846 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352393 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274138 () Bool)

(assert (=> b!6274138 (= e!3815846 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352393 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969210 c!1137241) b!6274137))

(assert (= (and d!1969210 (not c!1137241)) b!6274138))

(assert (=> d!1969210 m!7094636))

(assert (=> d!1969210 m!7095606))

(assert (=> b!6274137 m!7094634))

(declare-fun m!7095632 () Bool)

(assert (=> b!6274137 m!7095632))

(assert (=> b!6274138 m!7094636))

(assert (=> b!6274138 m!7095610))

(assert (=> b!6274138 m!7094634))

(assert (=> b!6274138 m!7095610))

(declare-fun m!7095634 () Bool)

(assert (=> b!6274138 m!7095634))

(assert (=> b!6274138 m!7094636))

(assert (=> b!6274138 m!7095614))

(assert (=> b!6274138 m!7095634))

(assert (=> b!6274138 m!7095614))

(declare-fun m!7095636 () Bool)

(assert (=> b!6274138 m!7095636))

(assert (=> b!6272937 d!1969210))

(declare-fun bs!1566953 () Bool)

(declare-fun d!1969212 () Bool)

(assert (= bs!1566953 (and d!1969212 d!1969198)))

(declare-fun lambda!343812 () Int)

(assert (=> bs!1566953 (= lambda!343812 lambda!343810)))

(declare-fun bs!1566954 () Bool)

(assert (= bs!1566954 (and d!1969212 d!1968876)))

(assert (=> bs!1566954 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343812 lambda!343701))))

(declare-fun bs!1566955 () Bool)

(assert (= bs!1566955 (and d!1969212 d!1968862)))

(assert (=> bs!1566955 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343812 lambda!343700))))

(declare-fun bs!1566956 () Bool)

(assert (= bs!1566956 (and d!1969212 d!1969128)))

(assert (=> bs!1566956 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343812 lambda!343794))))

(declare-fun bs!1566957 () Bool)

(assert (= bs!1566957 (and d!1969212 b!6272771)))

(assert (=> bs!1566957 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343812 lambda!343676))))

(assert (=> d!1969212 true))

(assert (=> d!1969212 (= (derivationStepZipper!2158 lt!2352393 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352393 lambda!343812))))

(declare-fun bs!1566958 () Bool)

(assert (= bs!1566958 d!1969212))

(declare-fun m!7095638 () Bool)

(assert (=> bs!1566958 m!7095638))

(assert (=> b!6272937 d!1969212))

(assert (=> b!6272937 d!1969200))

(assert (=> b!6272937 d!1969202))

(declare-fun b!6274139 () Bool)

(declare-fun e!3815849 () Bool)

(assert (=> b!6274139 (= e!3815849 (nullable!6185 (regOne!32896 r!7292)))))

(declare-fun bm!530729 () Bool)

(declare-fun call!530734 () Bool)

(assert (=> bm!530729 (= call!530734 (isEmpty!36792 (_1!36474 (get!22378 lt!2352569))))))

(declare-fun b!6274140 () Bool)

(declare-fun e!3815850 () Bool)

(declare-fun e!3815852 () Bool)

(assert (=> b!6274140 (= e!3815850 e!3815852)))

(declare-fun res!2587856 () Bool)

(assert (=> b!6274140 (=> res!2587856 e!3815852)))

(assert (=> b!6274140 (= res!2587856 call!530734)))

(declare-fun d!1969214 () Bool)

(declare-fun e!3815847 () Bool)

(assert (=> d!1969214 e!3815847))

(declare-fun c!1137244 () Bool)

(assert (=> d!1969214 (= c!1137244 (is-EmptyExpr!16192 (regOne!32896 r!7292)))))

(declare-fun lt!2352707 () Bool)

(assert (=> d!1969214 (= lt!2352707 e!3815849)))

(declare-fun c!1137242 () Bool)

(assert (=> d!1969214 (= c!1137242 (isEmpty!36792 (_1!36474 (get!22378 lt!2352569))))))

(assert (=> d!1969214 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1969214 (= (matchR!8375 (regOne!32896 r!7292) (_1!36474 (get!22378 lt!2352569))) lt!2352707)))

(declare-fun b!6274141 () Bool)

(declare-fun e!3815851 () Bool)

(assert (=> b!6274141 (= e!3815851 (not lt!2352707))))

(declare-fun b!6274142 () Bool)

(assert (=> b!6274142 (= e!3815849 (matchR!8375 (derivativeStep!4901 (regOne!32896 r!7292) (head!12884 (_1!36474 (get!22378 lt!2352569)))) (tail!11969 (_1!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274143 () Bool)

(declare-fun res!2587859 () Bool)

(assert (=> b!6274143 (=> res!2587859 e!3815852)))

(assert (=> b!6274143 (= res!2587859 (not (isEmpty!36792 (tail!11969 (_1!36474 (get!22378 lt!2352569))))))))

(declare-fun b!6274144 () Bool)

(assert (=> b!6274144 (= e!3815852 (not (= (head!12884 (_1!36474 (get!22378 lt!2352569))) (c!1136845 (regOne!32896 r!7292)))))))

(declare-fun b!6274145 () Bool)

(declare-fun e!3815853 () Bool)

(assert (=> b!6274145 (= e!3815853 e!3815850)))

(declare-fun res!2587855 () Bool)

(assert (=> b!6274145 (=> (not res!2587855) (not e!3815850))))

(assert (=> b!6274145 (= res!2587855 (not lt!2352707))))

(declare-fun b!6274146 () Bool)

(declare-fun e!3815848 () Bool)

(assert (=> b!6274146 (= e!3815848 (= (head!12884 (_1!36474 (get!22378 lt!2352569))) (c!1136845 (regOne!32896 r!7292))))))

(declare-fun b!6274147 () Bool)

(declare-fun res!2587860 () Bool)

(assert (=> b!6274147 (=> (not res!2587860) (not e!3815848))))

(assert (=> b!6274147 (= res!2587860 (not call!530734))))

(declare-fun b!6274148 () Bool)

(declare-fun res!2587861 () Bool)

(assert (=> b!6274148 (=> (not res!2587861) (not e!3815848))))

(assert (=> b!6274148 (= res!2587861 (isEmpty!36792 (tail!11969 (_1!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274149 () Bool)

(declare-fun res!2587857 () Bool)

(assert (=> b!6274149 (=> res!2587857 e!3815853)))

(assert (=> b!6274149 (= res!2587857 e!3815848)))

(declare-fun res!2587858 () Bool)

(assert (=> b!6274149 (=> (not res!2587858) (not e!3815848))))

(assert (=> b!6274149 (= res!2587858 lt!2352707)))

(declare-fun b!6274150 () Bool)

(assert (=> b!6274150 (= e!3815847 e!3815851)))

(declare-fun c!1137243 () Bool)

(assert (=> b!6274150 (= c!1137243 (is-EmptyLang!16192 (regOne!32896 r!7292)))))

(declare-fun b!6274151 () Bool)

(declare-fun res!2587854 () Bool)

(assert (=> b!6274151 (=> res!2587854 e!3815853)))

(assert (=> b!6274151 (= res!2587854 (not (is-ElementMatch!16192 (regOne!32896 r!7292))))))

(assert (=> b!6274151 (= e!3815851 e!3815853)))

(declare-fun b!6274152 () Bool)

(assert (=> b!6274152 (= e!3815847 (= lt!2352707 call!530734))))

(assert (= (and d!1969214 c!1137242) b!6274139))

(assert (= (and d!1969214 (not c!1137242)) b!6274142))

(assert (= (and d!1969214 c!1137244) b!6274152))

(assert (= (and d!1969214 (not c!1137244)) b!6274150))

(assert (= (and b!6274150 c!1137243) b!6274141))

(assert (= (and b!6274150 (not c!1137243)) b!6274151))

(assert (= (and b!6274151 (not res!2587854)) b!6274149))

(assert (= (and b!6274149 res!2587858) b!6274147))

(assert (= (and b!6274147 res!2587860) b!6274148))

(assert (= (and b!6274148 res!2587861) b!6274146))

(assert (= (and b!6274149 (not res!2587857)) b!6274145))

(assert (= (and b!6274145 res!2587855) b!6274140))

(assert (= (and b!6274140 (not res!2587856)) b!6274143))

(assert (= (and b!6274143 (not res!2587859)) b!6274144))

(assert (= (or b!6274152 b!6274140 b!6274147) bm!530729))

(declare-fun m!7095640 () Bool)

(assert (=> b!6274143 m!7095640))

(assert (=> b!6274143 m!7095640))

(declare-fun m!7095642 () Bool)

(assert (=> b!6274143 m!7095642))

(assert (=> b!6274148 m!7095640))

(assert (=> b!6274148 m!7095640))

(assert (=> b!6274148 m!7095642))

(declare-fun m!7095644 () Bool)

(assert (=> b!6274139 m!7095644))

(declare-fun m!7095646 () Bool)

(assert (=> d!1969214 m!7095646))

(assert (=> d!1969214 m!7094802))

(declare-fun m!7095648 () Bool)

(assert (=> b!6274142 m!7095648))

(assert (=> b!6274142 m!7095648))

(declare-fun m!7095650 () Bool)

(assert (=> b!6274142 m!7095650))

(assert (=> b!6274142 m!7095640))

(assert (=> b!6274142 m!7095650))

(assert (=> b!6274142 m!7095640))

(declare-fun m!7095652 () Bool)

(assert (=> b!6274142 m!7095652))

(assert (=> bm!530729 m!7095646))

(assert (=> b!6274146 m!7095648))

(assert (=> b!6274144 m!7095648))

(assert (=> b!6273169 d!1969214))

(declare-fun d!1969216 () Bool)

(assert (=> d!1969216 (= (get!22378 lt!2352569) (v!52237 lt!2352569))))

(assert (=> b!6273169 d!1969216))

(declare-fun d!1969218 () Bool)

(declare-fun res!2587862 () Bool)

(declare-fun e!3815854 () Bool)

(assert (=> d!1969218 (=> res!2587862 e!3815854)))

(assert (=> d!1969218 (= res!2587862 (is-Nil!64751 (exprs!6076 setElem!42665)))))

(assert (=> d!1969218 (= (forall!15322 (exprs!6076 setElem!42665) lambda!343697) e!3815854)))

(declare-fun b!6274153 () Bool)

(declare-fun e!3815855 () Bool)

(assert (=> b!6274153 (= e!3815854 e!3815855)))

(declare-fun res!2587863 () Bool)

(assert (=> b!6274153 (=> (not res!2587863) (not e!3815855))))

(assert (=> b!6274153 (= res!2587863 (dynLambda!25612 lambda!343697 (h!71199 (exprs!6076 setElem!42665))))))

(declare-fun b!6274154 () Bool)

(assert (=> b!6274154 (= e!3815855 (forall!15322 (t!378433 (exprs!6076 setElem!42665)) lambda!343697))))

(assert (= (and d!1969218 (not res!2587862)) b!6274153))

(assert (= (and b!6274153 res!2587863) b!6274154))

(declare-fun b_lambda!238899 () Bool)

(assert (=> (not b_lambda!238899) (not b!6274153)))

(declare-fun m!7095654 () Bool)

(assert (=> b!6274153 m!7095654))

(declare-fun m!7095656 () Bool)

(assert (=> b!6274154 m!7095656))

(assert (=> d!1968854 d!1969218))

(assert (=> bm!530617 d!1969106))

(assert (=> bm!530611 d!1969106))

(assert (=> d!1968936 d!1969106))

(declare-fun d!1969220 () Bool)

(declare-fun res!2587868 () Bool)

(declare-fun e!3815860 () Bool)

(assert (=> d!1969220 (=> res!2587868 e!3815860)))

(assert (=> d!1969220 (= res!2587868 (is-Nil!64753 zl!343))))

(assert (=> d!1969220 (= (forall!15323 zl!343 lambda!343728) e!3815860)))

(declare-fun b!6274159 () Bool)

(declare-fun e!3815861 () Bool)

(assert (=> b!6274159 (= e!3815860 e!3815861)))

(declare-fun res!2587869 () Bool)

(assert (=> b!6274159 (=> (not res!2587869) (not e!3815861))))

(declare-fun dynLambda!25613 (Int Context!11152) Bool)

(assert (=> b!6274159 (= res!2587869 (dynLambda!25613 lambda!343728 (h!71201 zl!343)))))

(declare-fun b!6274160 () Bool)

(assert (=> b!6274160 (= e!3815861 (forall!15323 (t!378435 zl!343) lambda!343728))))

(assert (= (and d!1969220 (not res!2587868)) b!6274159))

(assert (= (and b!6274159 res!2587869) b!6274160))

(declare-fun b_lambda!238901 () Bool)

(assert (=> (not b_lambda!238901) (not b!6274159)))

(declare-fun m!7095658 () Bool)

(assert (=> b!6274159 m!7095658))

(declare-fun m!7095660 () Bool)

(assert (=> b!6274160 m!7095660))

(assert (=> b!6273224 d!1969220))

(assert (=> bm!530589 d!1969106))

(declare-fun bm!530734 () Bool)

(declare-fun call!530740 () Bool)

(declare-fun c!1137247 () Bool)

(assert (=> bm!530734 (= call!530740 (nullable!6185 (ite c!1137247 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6274175 () Bool)

(declare-fun e!3815875 () Bool)

(declare-fun e!3815874 () Bool)

(assert (=> b!6274175 (= e!3815875 e!3815874)))

(assert (=> b!6274175 (= c!1137247 (is-Union!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6274176 () Bool)

(declare-fun e!3815877 () Bool)

(assert (=> b!6274176 (= e!3815874 e!3815877)))

(declare-fun res!2587884 () Bool)

(declare-fun call!530739 () Bool)

(assert (=> b!6274176 (= res!2587884 call!530739)))

(assert (=> b!6274176 (=> res!2587884 e!3815877)))

(declare-fun b!6274177 () Bool)

(declare-fun e!3815879 () Bool)

(assert (=> b!6274177 (= e!3815874 e!3815879)))

(declare-fun res!2587880 () Bool)

(assert (=> b!6274177 (= res!2587880 call!530739)))

(assert (=> b!6274177 (=> (not res!2587880) (not e!3815879))))

(declare-fun b!6274178 () Bool)

(declare-fun e!3815876 () Bool)

(assert (=> b!6274178 (= e!3815876 e!3815875)))

(declare-fun res!2587882 () Bool)

(assert (=> b!6274178 (=> res!2587882 e!3815875)))

(assert (=> b!6274178 (= res!2587882 (is-Star!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun d!1969222 () Bool)

(declare-fun res!2587883 () Bool)

(declare-fun e!3815878 () Bool)

(assert (=> d!1969222 (=> res!2587883 e!3815878)))

(assert (=> d!1969222 (= res!2587883 (is-EmptyExpr!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> d!1969222 (= (nullableFct!2137 (h!71199 (exprs!6076 (h!71201 zl!343)))) e!3815878)))

(declare-fun bm!530735 () Bool)

(assert (=> bm!530735 (= call!530739 (nullable!6185 (ite c!1137247 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun b!6274179 () Bool)

(assert (=> b!6274179 (= e!3815877 call!530740)))

(declare-fun b!6274180 () Bool)

(assert (=> b!6274180 (= e!3815879 call!530740)))

(declare-fun b!6274181 () Bool)

(assert (=> b!6274181 (= e!3815878 e!3815876)))

(declare-fun res!2587881 () Bool)

(assert (=> b!6274181 (=> (not res!2587881) (not e!3815876))))

(assert (=> b!6274181 (= res!2587881 (and (not (is-EmptyLang!16192 (h!71199 (exprs!6076 (h!71201 zl!343))))) (not (is-ElementMatch!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(assert (= (and d!1969222 (not res!2587883)) b!6274181))

(assert (= (and b!6274181 res!2587881) b!6274178))

(assert (= (and b!6274178 (not res!2587882)) b!6274175))

(assert (= (and b!6274175 c!1137247) b!6274176))

(assert (= (and b!6274175 (not c!1137247)) b!6274177))

(assert (= (and b!6274176 (not res!2587884)) b!6274179))

(assert (= (and b!6274177 res!2587880) b!6274180))

(assert (= (or b!6274179 b!6274180) bm!530734))

(assert (= (or b!6274176 b!6274177) bm!530735))

(declare-fun m!7095662 () Bool)

(assert (=> bm!530734 m!7095662))

(declare-fun m!7095664 () Bool)

(assert (=> bm!530735 m!7095664))

(assert (=> d!1968844 d!1969222))

(declare-fun d!1969224 () Bool)

(assert (=> d!1969224 (= (nullable!6185 (h!71199 (exprs!6076 lt!2352413))) (nullableFct!2137 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun bs!1566959 () Bool)

(assert (= bs!1566959 d!1969224))

(declare-fun m!7095666 () Bool)

(assert (=> bs!1566959 m!7095666))

(assert (=> b!6272996 d!1969224))

(declare-fun b!6274182 () Bool)

(declare-fun e!3815883 () (Set Context!11152))

(declare-fun e!3815881 () (Set Context!11152))

(assert (=> b!6274182 (= e!3815883 e!3815881)))

(declare-fun c!1137249 () Bool)

(assert (=> b!6274182 (= c!1137249 (is-Concat!25037 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))))))

(declare-fun bm!530736 () Bool)

(declare-fun call!530745 () (Set Context!11152))

(declare-fun call!530741 () (Set Context!11152))

(assert (=> bm!530736 (= call!530745 call!530741)))

(declare-fun e!3815882 () Bool)

(declare-fun b!6274183 () Bool)

(assert (=> b!6274183 (= e!3815882 (nullable!6185 (regOne!32896 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))))))))

(declare-fun b!6274184 () Bool)

(declare-fun c!1137252 () Bool)

(assert (=> b!6274184 (= c!1137252 (is-Star!16192 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))))))

(declare-fun e!3815885 () (Set Context!11152))

(assert (=> b!6274184 (= e!3815881 e!3815885)))

(declare-fun b!6274185 () Bool)

(assert (=> b!6274185 (= e!3815885 (as set.empty (Set Context!11152)))))

(declare-fun d!1969226 () Bool)

(declare-fun c!1137248 () Bool)

(assert (=> d!1969226 (= c!1137248 (and (is-ElementMatch!16192 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (= (c!1136845 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (h!71200 s!2326))))))

(declare-fun e!3815880 () (Set Context!11152))

(assert (=> d!1969226 (= (derivationStepZipperDown!1440 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))) (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604)) (h!71200 s!2326)) e!3815880)))

(declare-fun bm!530737 () Bool)

(declare-fun call!530742 () List!64875)

(declare-fun c!1137251 () Bool)

(declare-fun call!530743 () (Set Context!11152))

(assert (=> bm!530737 (= call!530743 (derivationStepZipperDown!1440 (ite c!1137251 (regTwo!32897 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (regOne!32896 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))))) (ite c!1137251 (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604)) (Context!11153 call!530742)) (h!71200 s!2326)))))

(declare-fun b!6274186 () Bool)

(declare-fun c!1137250 () Bool)

(assert (=> b!6274186 (= c!1137250 e!3815882)))

(declare-fun res!2587885 () Bool)

(assert (=> b!6274186 (=> (not res!2587885) (not e!3815882))))

(assert (=> b!6274186 (= res!2587885 (is-Concat!25037 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))))))

(declare-fun e!3815884 () (Set Context!11152))

(assert (=> b!6274186 (= e!3815884 e!3815883)))

(declare-fun b!6274187 () Bool)

(declare-fun call!530746 () (Set Context!11152))

(assert (=> b!6274187 (= e!3815884 (set.union call!530746 call!530743))))

(declare-fun b!6274188 () Bool)

(assert (=> b!6274188 (= e!3815880 e!3815884)))

(assert (=> b!6274188 (= c!1137251 (is-Union!16192 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))))))

(declare-fun bm!530738 () Bool)

(assert (=> bm!530738 (= call!530741 call!530746)))

(declare-fun call!530744 () List!64875)

(declare-fun bm!530739 () Bool)

(assert (=> bm!530739 (= call!530746 (derivationStepZipperDown!1440 (ite c!1137251 (regOne!32897 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (ite c!1137250 (regTwo!32896 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (ite c!1137249 (regOne!32896 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (reg!16521 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))))))) (ite (or c!1137251 c!1137250) (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604)) (Context!11153 call!530744)) (h!71200 s!2326)))))

(declare-fun b!6274189 () Bool)

(assert (=> b!6274189 (= e!3815885 call!530745)))

(declare-fun bm!530740 () Bool)

(assert (=> bm!530740 (= call!530742 ($colon$colon!2057 (exprs!6076 (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604))) (ite (or c!1137250 c!1137249) (regTwo!32896 (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292))))))) (ite c!1136948 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136947 (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136946 (regOne!32896 (regOne!32896 (regOne!32896 r!7292))) (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))))))))

(declare-fun bm!530741 () Bool)

(assert (=> bm!530741 (= call!530744 call!530742)))

(declare-fun b!6274190 () Bool)

(assert (=> b!6274190 (= e!3815880 (set.insert (ite (or c!1136948 c!1136947) lt!2352397 (Context!11153 call!530604)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274191 () Bool)

(assert (=> b!6274191 (= e!3815883 (set.union call!530743 call!530741))))

(declare-fun b!6274192 () Bool)

(assert (=> b!6274192 (= e!3815881 call!530745)))

(assert (= (and d!1969226 c!1137248) b!6274190))

(assert (= (and d!1969226 (not c!1137248)) b!6274188))

(assert (= (and b!6274188 c!1137251) b!6274187))

(assert (= (and b!6274188 (not c!1137251)) b!6274186))

(assert (= (and b!6274186 res!2587885) b!6274183))

(assert (= (and b!6274186 c!1137250) b!6274191))

(assert (= (and b!6274186 (not c!1137250)) b!6274182))

(assert (= (and b!6274182 c!1137249) b!6274192))

(assert (= (and b!6274182 (not c!1137249)) b!6274184))

(assert (= (and b!6274184 c!1137252) b!6274189))

(assert (= (and b!6274184 (not c!1137252)) b!6274185))

(assert (= (or b!6274192 b!6274189) bm!530741))

(assert (= (or b!6274192 b!6274189) bm!530736))

(assert (= (or b!6274191 bm!530741) bm!530740))

(assert (= (or b!6274191 bm!530736) bm!530738))

(assert (= (or b!6274187 b!6274191) bm!530737))

(assert (= (or b!6274187 bm!530738) bm!530739))

(declare-fun m!7095668 () Bool)

(assert (=> bm!530739 m!7095668))

(declare-fun m!7095670 () Bool)

(assert (=> bm!530737 m!7095670))

(declare-fun m!7095672 () Bool)

(assert (=> b!6274183 m!7095672))

(declare-fun m!7095674 () Bool)

(assert (=> b!6274190 m!7095674))

(declare-fun m!7095676 () Bool)

(assert (=> bm!530740 m!7095676))

(assert (=> bm!530599 d!1969226))

(assert (=> bm!530585 d!1969106))

(declare-fun d!1969228 () Bool)

(declare-fun res!2587886 () Bool)

(declare-fun e!3815886 () Bool)

(assert (=> d!1969228 (=> res!2587886 e!3815886)))

(assert (=> d!1969228 (= res!2587886 (is-Nil!64753 lt!2352399))))

(assert (=> d!1969228 (= (forall!15323 lt!2352399 lambda!343725) e!3815886)))

(declare-fun b!6274193 () Bool)

(declare-fun e!3815887 () Bool)

(assert (=> b!6274193 (= e!3815886 e!3815887)))

(declare-fun res!2587887 () Bool)

(assert (=> b!6274193 (=> (not res!2587887) (not e!3815887))))

(assert (=> b!6274193 (= res!2587887 (dynLambda!25613 lambda!343725 (h!71201 lt!2352399)))))

(declare-fun b!6274194 () Bool)

(assert (=> b!6274194 (= e!3815887 (forall!15323 (t!378435 lt!2352399) lambda!343725))))

(assert (= (and d!1969228 (not res!2587886)) b!6274193))

(assert (= (and b!6274193 res!2587887) b!6274194))

(declare-fun b_lambda!238903 () Bool)

(assert (=> (not b_lambda!238903) (not b!6274193)))

(declare-fun m!7095678 () Bool)

(assert (=> b!6274193 m!7095678))

(declare-fun m!7095680 () Bool)

(assert (=> b!6274194 m!7095680))

(assert (=> b!6273219 d!1969228))

(assert (=> b!6273323 d!1969130))

(declare-fun bs!1566960 () Bool)

(declare-fun d!1969230 () Bool)

(assert (= bs!1566960 (and d!1969230 d!1969136)))

(declare-fun lambda!343813 () Int)

(assert (=> bs!1566960 (= lambda!343813 lambda!343796)))

(declare-fun bs!1566961 () Bool)

(assert (= bs!1566961 (and d!1969230 d!1969208)))

(assert (=> bs!1566961 (= lambda!343813 lambda!343811)))

(declare-fun bs!1566962 () Bool)

(assert (= bs!1566962 (and d!1969230 d!1968922)))

(assert (=> bs!1566962 (= lambda!343813 lambda!343732)))

(declare-fun bs!1566963 () Bool)

(assert (= bs!1566963 (and d!1969230 d!1969118)))

(assert (=> bs!1566963 (= lambda!343813 lambda!343791)))

(declare-fun bs!1566964 () Bool)

(assert (= bs!1566964 (and d!1969230 d!1968940)))

(assert (=> bs!1566964 (= lambda!343813 lambda!343736)))

(declare-fun bs!1566965 () Bool)

(assert (= bs!1566965 (and d!1969230 d!1969192)))

(assert (=> bs!1566965 (= lambda!343813 lambda!343807)))

(declare-fun bs!1566966 () Bool)

(assert (= bs!1566966 (and d!1969230 d!1968942)))

(assert (=> bs!1566966 (= lambda!343813 lambda!343739)))

(declare-fun bs!1566967 () Bool)

(assert (= bs!1566967 (and d!1969230 d!1968924)))

(assert (=> bs!1566967 (= lambda!343813 lambda!343733)))

(declare-fun bs!1566968 () Bool)

(assert (= bs!1566968 (and d!1969230 d!1968914)))

(assert (=> bs!1566968 (= lambda!343813 lambda!343729)))

(declare-fun bs!1566969 () Bool)

(assert (= bs!1566969 (and d!1969230 d!1968854)))

(assert (=> bs!1566969 (= lambda!343813 lambda!343697)))

(declare-fun bs!1566970 () Bool)

(assert (= bs!1566970 (and d!1969230 d!1968828)))

(assert (=> bs!1566970 (= lambda!343813 lambda!343694)))

(declare-fun e!3815889 () Bool)

(assert (=> d!1969230 e!3815889))

(declare-fun res!2587888 () Bool)

(assert (=> d!1969230 (=> (not res!2587888) (not e!3815889))))

(declare-fun lt!2352708 () Regex!16192)

(assert (=> d!1969230 (= res!2587888 (validRegex!7928 lt!2352708))))

(declare-fun e!3815890 () Regex!16192)

(assert (=> d!1969230 (= lt!2352708 e!3815890)))

(declare-fun c!1137254 () Bool)

(declare-fun e!3815893 () Bool)

(assert (=> d!1969230 (= c!1137254 e!3815893)))

(declare-fun res!2587889 () Bool)

(assert (=> d!1969230 (=> (not res!2587889) (not e!3815893))))

(assert (=> d!1969230 (= res!2587889 (is-Cons!64751 (t!378433 lt!2352404)))))

(assert (=> d!1969230 (forall!15322 (t!378433 lt!2352404) lambda!343813)))

(assert (=> d!1969230 (= (generalisedConcat!1789 (t!378433 lt!2352404)) lt!2352708)))

(declare-fun b!6274195 () Bool)

(declare-fun e!3815892 () Bool)

(assert (=> b!6274195 (= e!3815889 e!3815892)))

(declare-fun c!1137255 () Bool)

(assert (=> b!6274195 (= c!1137255 (isEmpty!36789 (t!378433 lt!2352404)))))

(declare-fun b!6274196 () Bool)

(declare-fun e!3815891 () Bool)

(assert (=> b!6274196 (= e!3815891 (= lt!2352708 (head!12885 (t!378433 lt!2352404))))))

(declare-fun b!6274197 () Bool)

(assert (=> b!6274197 (= e!3815890 (h!71199 (t!378433 lt!2352404)))))

(declare-fun b!6274198 () Bool)

(assert (=> b!6274198 (= e!3815892 (isEmptyExpr!1598 lt!2352708))))

(declare-fun b!6274199 () Bool)

(declare-fun e!3815888 () Regex!16192)

(assert (=> b!6274199 (= e!3815888 (Concat!25037 (h!71199 (t!378433 lt!2352404)) (generalisedConcat!1789 (t!378433 (t!378433 lt!2352404)))))))

(declare-fun b!6274200 () Bool)

(assert (=> b!6274200 (= e!3815891 (isConcat!1121 lt!2352708))))

(declare-fun b!6274201 () Bool)

(assert (=> b!6274201 (= e!3815893 (isEmpty!36789 (t!378433 (t!378433 lt!2352404))))))

(declare-fun b!6274202 () Bool)

(assert (=> b!6274202 (= e!3815890 e!3815888)))

(declare-fun c!1137253 () Bool)

(assert (=> b!6274202 (= c!1137253 (is-Cons!64751 (t!378433 lt!2352404)))))

(declare-fun b!6274203 () Bool)

(assert (=> b!6274203 (= e!3815892 e!3815891)))

(declare-fun c!1137256 () Bool)

(assert (=> b!6274203 (= c!1137256 (isEmpty!36789 (tail!11970 (t!378433 lt!2352404))))))

(declare-fun b!6274204 () Bool)

(assert (=> b!6274204 (= e!3815888 EmptyExpr!16192)))

(assert (= (and d!1969230 res!2587889) b!6274201))

(assert (= (and d!1969230 c!1137254) b!6274197))

(assert (= (and d!1969230 (not c!1137254)) b!6274202))

(assert (= (and b!6274202 c!1137253) b!6274199))

(assert (= (and b!6274202 (not c!1137253)) b!6274204))

(assert (= (and d!1969230 res!2587888) b!6274195))

(assert (= (and b!6274195 c!1137255) b!6274198))

(assert (= (and b!6274195 (not c!1137255)) b!6274203))

(assert (= (and b!6274203 c!1137256) b!6274196))

(assert (= (and b!6274203 (not c!1137256)) b!6274200))

(declare-fun m!7095682 () Bool)

(assert (=> b!6274200 m!7095682))

(declare-fun m!7095684 () Bool)

(assert (=> b!6274203 m!7095684))

(assert (=> b!6274203 m!7095684))

(declare-fun m!7095686 () Bool)

(assert (=> b!6274203 m!7095686))

(assert (=> b!6274195 m!7094912))

(declare-fun m!7095688 () Bool)

(assert (=> b!6274201 m!7095688))

(declare-fun m!7095690 () Bool)

(assert (=> b!6274196 m!7095690))

(declare-fun m!7095692 () Bool)

(assert (=> d!1969230 m!7095692))

(declare-fun m!7095694 () Bool)

(assert (=> d!1969230 m!7095694))

(declare-fun m!7095696 () Bool)

(assert (=> b!6274199 m!7095696))

(declare-fun m!7095698 () Bool)

(assert (=> b!6274198 m!7095698))

(assert (=> b!6273275 d!1969230))

(declare-fun d!1969232 () Bool)

(assert (=> d!1969232 (= (flatMap!1697 lt!2352408 lambda!343701) (choose!46545 lt!2352408 lambda!343701))))

(declare-fun bs!1566971 () Bool)

(assert (= bs!1566971 d!1969232))

(declare-fun m!7095700 () Bool)

(assert (=> bs!1566971 m!7095700))

(assert (=> d!1968876 d!1969232))

(declare-fun d!1969234 () Bool)

(declare-fun c!1137257 () Bool)

(assert (=> d!1969234 (= c!1137257 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815894 () Bool)

(assert (=> d!1969234 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352412 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815894)))

(declare-fun b!6274205 () Bool)

(assert (=> b!6274205 (= e!3815894 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352412 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274206 () Bool)

(assert (=> b!6274206 (= e!3815894 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352412 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969234 c!1137257) b!6274205))

(assert (= (and d!1969234 (not c!1137257)) b!6274206))

(assert (=> d!1969234 m!7094636))

(assert (=> d!1969234 m!7095606))

(assert (=> b!6274205 m!7094744))

(declare-fun m!7095702 () Bool)

(assert (=> b!6274205 m!7095702))

(assert (=> b!6274206 m!7094636))

(assert (=> b!6274206 m!7095610))

(assert (=> b!6274206 m!7094744))

(assert (=> b!6274206 m!7095610))

(declare-fun m!7095704 () Bool)

(assert (=> b!6274206 m!7095704))

(assert (=> b!6274206 m!7094636))

(assert (=> b!6274206 m!7095614))

(assert (=> b!6274206 m!7095704))

(assert (=> b!6274206 m!7095614))

(declare-fun m!7095706 () Bool)

(assert (=> b!6274206 m!7095706))

(assert (=> b!6273057 d!1969234))

(declare-fun bs!1566972 () Bool)

(declare-fun d!1969236 () Bool)

(assert (= bs!1566972 (and d!1969236 d!1969198)))

(declare-fun lambda!343814 () Int)

(assert (=> bs!1566972 (= lambda!343814 lambda!343810)))

(declare-fun bs!1566973 () Bool)

(assert (= bs!1566973 (and d!1969236 d!1968876)))

(assert (=> bs!1566973 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343814 lambda!343701))))

(declare-fun bs!1566974 () Bool)

(assert (= bs!1566974 (and d!1969236 d!1968862)))

(assert (=> bs!1566974 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343814 lambda!343700))))

(declare-fun bs!1566975 () Bool)

(assert (= bs!1566975 (and d!1969236 d!1969212)))

(assert (=> bs!1566975 (= lambda!343814 lambda!343812)))

(declare-fun bs!1566976 () Bool)

(assert (= bs!1566976 (and d!1969236 d!1969128)))

(assert (=> bs!1566976 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343814 lambda!343794))))

(declare-fun bs!1566977 () Bool)

(assert (= bs!1566977 (and d!1969236 b!6272771)))

(assert (=> bs!1566977 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343814 lambda!343676))))

(assert (=> d!1969236 true))

(assert (=> d!1969236 (= (derivationStepZipper!2158 lt!2352412 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352412 lambda!343814))))

(declare-fun bs!1566978 () Bool)

(assert (= bs!1566978 d!1969236))

(declare-fun m!7095708 () Bool)

(assert (=> bs!1566978 m!7095708))

(assert (=> b!6273057 d!1969236))

(assert (=> b!6273057 d!1969200))

(assert (=> b!6273057 d!1969202))

(declare-fun b!6274207 () Bool)

(declare-fun e!3815897 () Bool)

(assert (=> b!6274207 (= e!3815897 (nullable!6185 (derivativeStep!4901 lt!2352400 (head!12884 s!2326))))))

(declare-fun bm!530742 () Bool)

(declare-fun call!530747 () Bool)

(assert (=> bm!530742 (= call!530747 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6274208 () Bool)

(declare-fun e!3815898 () Bool)

(declare-fun e!3815900 () Bool)

(assert (=> b!6274208 (= e!3815898 e!3815900)))

(declare-fun res!2587892 () Bool)

(assert (=> b!6274208 (=> res!2587892 e!3815900)))

(assert (=> b!6274208 (= res!2587892 call!530747)))

(declare-fun d!1969238 () Bool)

(declare-fun e!3815895 () Bool)

(assert (=> d!1969238 e!3815895))

(declare-fun c!1137260 () Bool)

(assert (=> d!1969238 (= c!1137260 (is-EmptyExpr!16192 (derivativeStep!4901 lt!2352400 (head!12884 s!2326))))))

(declare-fun lt!2352709 () Bool)

(assert (=> d!1969238 (= lt!2352709 e!3815897)))

(declare-fun c!1137258 () Bool)

(assert (=> d!1969238 (= c!1137258 (isEmpty!36792 (tail!11969 s!2326)))))

(assert (=> d!1969238 (validRegex!7928 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)))))

(assert (=> d!1969238 (= (matchR!8375 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)) (tail!11969 s!2326)) lt!2352709)))

(declare-fun b!6274209 () Bool)

(declare-fun e!3815899 () Bool)

(assert (=> b!6274209 (= e!3815899 (not lt!2352709))))

(declare-fun b!6274210 () Bool)

(assert (=> b!6274210 (= e!3815897 (matchR!8375 (derivativeStep!4901 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)) (head!12884 (tail!11969 s!2326))) (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6274211 () Bool)

(declare-fun res!2587895 () Bool)

(assert (=> b!6274211 (=> res!2587895 e!3815900)))

(assert (=> b!6274211 (= res!2587895 (not (isEmpty!36792 (tail!11969 (tail!11969 s!2326)))))))

(declare-fun b!6274212 () Bool)

(assert (=> b!6274212 (= e!3815900 (not (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 lt!2352400 (head!12884 s!2326))))))))

(declare-fun b!6274213 () Bool)

(declare-fun e!3815901 () Bool)

(assert (=> b!6274213 (= e!3815901 e!3815898)))

(declare-fun res!2587891 () Bool)

(assert (=> b!6274213 (=> (not res!2587891) (not e!3815898))))

(assert (=> b!6274213 (= res!2587891 (not lt!2352709))))

(declare-fun b!6274214 () Bool)

(declare-fun e!3815896 () Bool)

(assert (=> b!6274214 (= e!3815896 (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)))))))

(declare-fun b!6274215 () Bool)

(declare-fun res!2587896 () Bool)

(assert (=> b!6274215 (=> (not res!2587896) (not e!3815896))))

(assert (=> b!6274215 (= res!2587896 (not call!530747))))

(declare-fun b!6274216 () Bool)

(declare-fun res!2587897 () Bool)

(assert (=> b!6274216 (=> (not res!2587897) (not e!3815896))))

(assert (=> b!6274216 (= res!2587897 (isEmpty!36792 (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6274217 () Bool)

(declare-fun res!2587893 () Bool)

(assert (=> b!6274217 (=> res!2587893 e!3815901)))

(assert (=> b!6274217 (= res!2587893 e!3815896)))

(declare-fun res!2587894 () Bool)

(assert (=> b!6274217 (=> (not res!2587894) (not e!3815896))))

(assert (=> b!6274217 (= res!2587894 lt!2352709)))

(declare-fun b!6274218 () Bool)

(assert (=> b!6274218 (= e!3815895 e!3815899)))

(declare-fun c!1137259 () Bool)

(assert (=> b!6274218 (= c!1137259 (is-EmptyLang!16192 (derivativeStep!4901 lt!2352400 (head!12884 s!2326))))))

(declare-fun b!6274219 () Bool)

(declare-fun res!2587890 () Bool)

(assert (=> b!6274219 (=> res!2587890 e!3815901)))

(assert (=> b!6274219 (= res!2587890 (not (is-ElementMatch!16192 (derivativeStep!4901 lt!2352400 (head!12884 s!2326)))))))

(assert (=> b!6274219 (= e!3815899 e!3815901)))

(declare-fun b!6274220 () Bool)

(assert (=> b!6274220 (= e!3815895 (= lt!2352709 call!530747))))

(assert (= (and d!1969238 c!1137258) b!6274207))

(assert (= (and d!1969238 (not c!1137258)) b!6274210))

(assert (= (and d!1969238 c!1137260) b!6274220))

(assert (= (and d!1969238 (not c!1137260)) b!6274218))

(assert (= (and b!6274218 c!1137259) b!6274209))

(assert (= (and b!6274218 (not c!1137259)) b!6274219))

(assert (= (and b!6274219 (not res!2587890)) b!6274217))

(assert (= (and b!6274217 res!2587894) b!6274215))

(assert (= (and b!6274215 res!2587896) b!6274216))

(assert (= (and b!6274216 res!2587897) b!6274214))

(assert (= (and b!6274217 (not res!2587893)) b!6274213))

(assert (= (and b!6274213 res!2587891) b!6274208))

(assert (= (and b!6274208 (not res!2587892)) b!6274211))

(assert (= (and b!6274211 (not res!2587895)) b!6274212))

(assert (= (or b!6274220 b!6274208 b!6274215) bm!530742))

(assert (=> b!6274211 m!7094774))

(assert (=> b!6274211 m!7095474))

(assert (=> b!6274211 m!7095474))

(assert (=> b!6274211 m!7095516))

(assert (=> b!6274216 m!7094774))

(assert (=> b!6274216 m!7095474))

(assert (=> b!6274216 m!7095474))

(assert (=> b!6274216 m!7095516))

(assert (=> b!6274207 m!7094968))

(declare-fun m!7095710 () Bool)

(assert (=> b!6274207 m!7095710))

(assert (=> d!1969238 m!7094774))

(assert (=> d!1969238 m!7094776))

(assert (=> d!1969238 m!7094968))

(declare-fun m!7095712 () Bool)

(assert (=> d!1969238 m!7095712))

(assert (=> b!6274210 m!7094774))

(assert (=> b!6274210 m!7095470))

(assert (=> b!6274210 m!7094968))

(assert (=> b!6274210 m!7095470))

(declare-fun m!7095714 () Bool)

(assert (=> b!6274210 m!7095714))

(assert (=> b!6274210 m!7094774))

(assert (=> b!6274210 m!7095474))

(assert (=> b!6274210 m!7095714))

(assert (=> b!6274210 m!7095474))

(declare-fun m!7095716 () Bool)

(assert (=> b!6274210 m!7095716))

(assert (=> bm!530742 m!7094774))

(assert (=> bm!530742 m!7094776))

(assert (=> b!6274214 m!7094774))

(assert (=> b!6274214 m!7095470))

(assert (=> b!6274212 m!7094774))

(assert (=> b!6274212 m!7095470))

(assert (=> b!6273319 d!1969238))

(declare-fun bm!530743 () Bool)

(declare-fun call!530751 () Regex!16192)

(declare-fun c!1137262 () Bool)

(assert (=> bm!530743 (= call!530751 (derivativeStep!4901 (ite c!1137262 (regOne!32897 lt!2352400) (regOne!32896 lt!2352400)) (head!12884 s!2326)))))

(declare-fun b!6274221 () Bool)

(declare-fun call!530750 () Regex!16192)

(declare-fun e!3815903 () Regex!16192)

(assert (=> b!6274221 (= e!3815903 (Union!16192 (Concat!25037 call!530751 (regTwo!32896 lt!2352400)) call!530750))))

(declare-fun b!6274222 () Bool)

(declare-fun e!3815905 () Regex!16192)

(assert (=> b!6274222 (= e!3815905 EmptyLang!16192)))

(declare-fun b!6274223 () Bool)

(declare-fun c!1137261 () Bool)

(assert (=> b!6274223 (= c!1137261 (nullable!6185 (regOne!32896 lt!2352400)))))

(declare-fun e!3815902 () Regex!16192)

(assert (=> b!6274223 (= e!3815902 e!3815903)))

(declare-fun b!6274224 () Bool)

(declare-fun e!3815904 () Regex!16192)

(assert (=> b!6274224 (= e!3815904 e!3815902)))

(declare-fun c!1137264 () Bool)

(assert (=> b!6274224 (= c!1137264 (is-Star!16192 lt!2352400))))

(declare-fun b!6274225 () Bool)

(assert (=> b!6274225 (= e!3815903 (Union!16192 (Concat!25037 call!530750 (regTwo!32896 lt!2352400)) EmptyLang!16192))))

(declare-fun bm!530745 () Bool)

(declare-fun call!530749 () Regex!16192)

(assert (=> bm!530745 (= call!530749 (derivativeStep!4901 (ite c!1137262 (regTwo!32897 lt!2352400) (ite c!1137264 (reg!16521 lt!2352400) (ite c!1137261 (regTwo!32896 lt!2352400) (regOne!32896 lt!2352400)))) (head!12884 s!2326)))))

(declare-fun bm!530744 () Bool)

(declare-fun call!530748 () Regex!16192)

(assert (=> bm!530744 (= call!530750 call!530748)))

(declare-fun d!1969240 () Bool)

(declare-fun lt!2352710 () Regex!16192)

(assert (=> d!1969240 (validRegex!7928 lt!2352710)))

(assert (=> d!1969240 (= lt!2352710 e!3815905)))

(declare-fun c!1137263 () Bool)

(assert (=> d!1969240 (= c!1137263 (or (is-EmptyExpr!16192 lt!2352400) (is-EmptyLang!16192 lt!2352400)))))

(assert (=> d!1969240 (validRegex!7928 lt!2352400)))

(assert (=> d!1969240 (= (derivativeStep!4901 lt!2352400 (head!12884 s!2326)) lt!2352710)))

(declare-fun b!6274226 () Bool)

(assert (=> b!6274226 (= e!3815902 (Concat!25037 call!530748 lt!2352400))))

(declare-fun b!6274227 () Bool)

(assert (=> b!6274227 (= e!3815904 (Union!16192 call!530751 call!530749))))

(declare-fun b!6274228 () Bool)

(declare-fun e!3815906 () Regex!16192)

(assert (=> b!6274228 (= e!3815906 (ite (= (head!12884 s!2326) (c!1136845 lt!2352400)) EmptyExpr!16192 EmptyLang!16192))))

(declare-fun b!6274229 () Bool)

(assert (=> b!6274229 (= c!1137262 (is-Union!16192 lt!2352400))))

(assert (=> b!6274229 (= e!3815906 e!3815904)))

(declare-fun b!6274230 () Bool)

(assert (=> b!6274230 (= e!3815905 e!3815906)))

(declare-fun c!1137265 () Bool)

(assert (=> b!6274230 (= c!1137265 (is-ElementMatch!16192 lt!2352400))))

(declare-fun bm!530746 () Bool)

(assert (=> bm!530746 (= call!530748 call!530749)))

(assert (= (and d!1969240 c!1137263) b!6274222))

(assert (= (and d!1969240 (not c!1137263)) b!6274230))

(assert (= (and b!6274230 c!1137265) b!6274228))

(assert (= (and b!6274230 (not c!1137265)) b!6274229))

(assert (= (and b!6274229 c!1137262) b!6274227))

(assert (= (and b!6274229 (not c!1137262)) b!6274224))

(assert (= (and b!6274224 c!1137264) b!6274226))

(assert (= (and b!6274224 (not c!1137264)) b!6274223))

(assert (= (and b!6274223 c!1137261) b!6274221))

(assert (= (and b!6274223 (not c!1137261)) b!6274225))

(assert (= (or b!6274221 b!6274225) bm!530744))

(assert (= (or b!6274226 bm!530744) bm!530746))

(assert (= (or b!6274227 bm!530746) bm!530745))

(assert (= (or b!6274227 b!6274221) bm!530743))

(assert (=> bm!530743 m!7094780))

(declare-fun m!7095718 () Bool)

(assert (=> bm!530743 m!7095718))

(declare-fun m!7095720 () Bool)

(assert (=> b!6274223 m!7095720))

(assert (=> bm!530745 m!7094780))

(declare-fun m!7095722 () Bool)

(assert (=> bm!530745 m!7095722))

(declare-fun m!7095724 () Bool)

(assert (=> d!1969240 m!7095724))

(assert (=> d!1969240 m!7094896))

(assert (=> b!6273319 d!1969240))

(assert (=> b!6273319 d!1969130))

(assert (=> b!6273319 d!1969122))

(declare-fun bs!1566979 () Bool)

(declare-fun d!1969242 () Bool)

(assert (= bs!1566979 (and d!1969242 d!1969134)))

(declare-fun lambda!343815 () Int)

(assert (=> bs!1566979 (= lambda!343815 lambda!343795)))

(declare-fun bs!1566980 () Bool)

(assert (= bs!1566980 (and d!1969242 b!6273224)))

(assert (=> bs!1566980 (not (= lambda!343815 lambda!343728))))

(declare-fun bs!1566981 () Bool)

(assert (= bs!1566981 (and d!1969242 b!6273219)))

(assert (=> bs!1566981 (not (= lambda!343815 lambda!343725))))

(declare-fun bs!1566982 () Bool)

(assert (= bs!1566982 (and d!1969242 d!1969114)))

(assert (=> bs!1566982 (= lambda!343815 lambda!343790)))

(declare-fun bs!1566983 () Bool)

(assert (= bs!1566983 (and d!1969242 b!6273222)))

(assert (=> bs!1566983 (not (= lambda!343815 lambda!343727))))

(declare-fun bs!1566984 () Bool)

(assert (= bs!1566984 (and d!1969242 b!6273217)))

(assert (=> bs!1566984 (not (= lambda!343815 lambda!343724))))

(assert (=> d!1969242 (= (nullableZipper!1962 lt!2352408) (exists!2524 lt!2352408 lambda!343815))))

(declare-fun bs!1566985 () Bool)

(assert (= bs!1566985 d!1969242))

(declare-fun m!7095726 () Bool)

(assert (=> bs!1566985 m!7095726))

(assert (=> b!6273330 d!1969242))

(declare-fun d!1969244 () Bool)

(assert (=> d!1969244 (= (isEmpty!36789 lt!2352404) (is-Nil!64751 lt!2352404))))

(assert (=> b!6273271 d!1969244))

(declare-fun d!1969246 () Bool)

(declare-fun c!1137266 () Bool)

(assert (=> d!1969246 (= c!1137266 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815907 () Bool)

(assert (=> d!1969246 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352398 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815907)))

(declare-fun b!6274231 () Bool)

(assert (=> b!6274231 (= e!3815907 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352398 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274232 () Bool)

(assert (=> b!6274232 (= e!3815907 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352398 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969246 c!1137266) b!6274231))

(assert (= (and d!1969246 (not c!1137266)) b!6274232))

(assert (=> d!1969246 m!7094636))

(assert (=> d!1969246 m!7095606))

(assert (=> b!6274231 m!7095016))

(declare-fun m!7095728 () Bool)

(assert (=> b!6274231 m!7095728))

(assert (=> b!6274232 m!7094636))

(assert (=> b!6274232 m!7095610))

(assert (=> b!6274232 m!7095016))

(assert (=> b!6274232 m!7095610))

(declare-fun m!7095730 () Bool)

(assert (=> b!6274232 m!7095730))

(assert (=> b!6274232 m!7094636))

(assert (=> b!6274232 m!7095614))

(assert (=> b!6274232 m!7095730))

(assert (=> b!6274232 m!7095614))

(declare-fun m!7095732 () Bool)

(assert (=> b!6274232 m!7095732))

(assert (=> b!6273371 d!1969246))

(declare-fun bs!1566986 () Bool)

(declare-fun d!1969248 () Bool)

(assert (= bs!1566986 (and d!1969248 d!1969198)))

(declare-fun lambda!343816 () Int)

(assert (=> bs!1566986 (= lambda!343816 lambda!343810)))

(declare-fun bs!1566987 () Bool)

(assert (= bs!1566987 (and d!1969248 d!1968876)))

(assert (=> bs!1566987 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343816 lambda!343701))))

(declare-fun bs!1566988 () Bool)

(assert (= bs!1566988 (and d!1969248 d!1969236)))

(assert (=> bs!1566988 (= lambda!343816 lambda!343814)))

(declare-fun bs!1566989 () Bool)

(assert (= bs!1566989 (and d!1969248 d!1968862)))

(assert (=> bs!1566989 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343816 lambda!343700))))

(declare-fun bs!1566990 () Bool)

(assert (= bs!1566990 (and d!1969248 d!1969212)))

(assert (=> bs!1566990 (= lambda!343816 lambda!343812)))

(declare-fun bs!1566991 () Bool)

(assert (= bs!1566991 (and d!1969248 d!1969128)))

(assert (=> bs!1566991 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343816 lambda!343794))))

(declare-fun bs!1566992 () Bool)

(assert (= bs!1566992 (and d!1969248 b!6272771)))

(assert (=> bs!1566992 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343816 lambda!343676))))

(assert (=> d!1969248 true))

(assert (=> d!1969248 (= (derivationStepZipper!2158 lt!2352398 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352398 lambda!343816))))

(declare-fun bs!1566993 () Bool)

(assert (= bs!1566993 d!1969248))

(declare-fun m!7095734 () Bool)

(assert (=> bs!1566993 m!7095734))

(assert (=> b!6273371 d!1969248))

(assert (=> b!6273371 d!1969200))

(assert (=> b!6273371 d!1969202))

(declare-fun d!1969250 () Bool)

(assert (=> d!1969250 (= (nullable!6185 (reg!16521 (regOne!32896 (regOne!32896 r!7292)))) (nullableFct!2137 (reg!16521 (regOne!32896 (regOne!32896 r!7292)))))))

(declare-fun bs!1566994 () Bool)

(assert (= bs!1566994 d!1969250))

(declare-fun m!7095736 () Bool)

(assert (=> bs!1566994 m!7095736))

(assert (=> b!6273306 d!1969250))

(declare-fun bs!1566995 () Bool)

(declare-fun d!1969252 () Bool)

(assert (= bs!1566995 (and d!1969252 d!1969134)))

(declare-fun lambda!343817 () Int)

(assert (=> bs!1566995 (= lambda!343817 lambda!343795)))

(declare-fun bs!1566996 () Bool)

(assert (= bs!1566996 (and d!1969252 d!1969242)))

(assert (=> bs!1566996 (= lambda!343817 lambda!343815)))

(declare-fun bs!1566997 () Bool)

(assert (= bs!1566997 (and d!1969252 b!6273224)))

(assert (=> bs!1566997 (not (= lambda!343817 lambda!343728))))

(declare-fun bs!1566998 () Bool)

(assert (= bs!1566998 (and d!1969252 b!6273219)))

(assert (=> bs!1566998 (not (= lambda!343817 lambda!343725))))

(declare-fun bs!1566999 () Bool)

(assert (= bs!1566999 (and d!1969252 d!1969114)))

(assert (=> bs!1566999 (= lambda!343817 lambda!343790)))

(declare-fun bs!1567000 () Bool)

(assert (= bs!1567000 (and d!1969252 b!6273222)))

(assert (=> bs!1567000 (not (= lambda!343817 lambda!343727))))

(declare-fun bs!1567001 () Bool)

(assert (= bs!1567001 (and d!1969252 b!6273217)))

(assert (=> bs!1567001 (not (= lambda!343817 lambda!343724))))

(assert (=> d!1969252 (= (nullableZipper!1962 lt!2352410) (exists!2524 lt!2352410 lambda!343817))))

(declare-fun bs!1567002 () Bool)

(assert (= bs!1567002 d!1969252))

(declare-fun m!7095738 () Bool)

(assert (=> bs!1567002 m!7095738))

(assert (=> b!6273314 d!1969252))

(declare-fun b!6274233 () Bool)

(declare-fun e!3815911 () (Set Context!11152))

(declare-fun e!3815909 () (Set Context!11152))

(assert (=> b!6274233 (= e!3815911 e!3815909)))

(declare-fun c!1137268 () Bool)

(assert (=> b!6274233 (= c!1137268 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun bm!530747 () Bool)

(declare-fun call!530756 () (Set Context!11152))

(declare-fun call!530752 () (Set Context!11152))

(assert (=> bm!530747 (= call!530756 call!530752)))

(declare-fun b!6274234 () Bool)

(declare-fun e!3815910 () Bool)

(assert (=> b!6274234 (= e!3815910 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 lt!2352409)))))))

(declare-fun b!6274235 () Bool)

(declare-fun c!1137271 () Bool)

(assert (=> b!6274235 (= c!1137271 (is-Star!16192 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun e!3815913 () (Set Context!11152))

(assert (=> b!6274235 (= e!3815909 e!3815913)))

(declare-fun b!6274236 () Bool)

(assert (=> b!6274236 (= e!3815913 (as set.empty (Set Context!11152)))))

(declare-fun d!1969254 () Bool)

(declare-fun c!1137267 () Bool)

(assert (=> d!1969254 (= c!1137267 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 lt!2352409))) (= (c!1136845 (h!71199 (exprs!6076 lt!2352409))) (h!71200 s!2326))))))

(declare-fun e!3815908 () (Set Context!11152))

(assert (=> d!1969254 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352409)) (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (h!71200 s!2326)) e!3815908)))

(declare-fun bm!530748 () Bool)

(declare-fun call!530753 () List!64875)

(declare-fun call!530754 () (Set Context!11152))

(declare-fun c!1137270 () Bool)

(assert (=> bm!530748 (= call!530754 (derivationStepZipperDown!1440 (ite c!1137270 (regTwo!32897 (h!71199 (exprs!6076 lt!2352409))) (regOne!32896 (h!71199 (exprs!6076 lt!2352409)))) (ite c!1137270 (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (Context!11153 call!530753)) (h!71200 s!2326)))))

(declare-fun b!6274237 () Bool)

(declare-fun c!1137269 () Bool)

(assert (=> b!6274237 (= c!1137269 e!3815910)))

(declare-fun res!2587898 () Bool)

(assert (=> b!6274237 (=> (not res!2587898) (not e!3815910))))

(assert (=> b!6274237 (= res!2587898 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun e!3815912 () (Set Context!11152))

(assert (=> b!6274237 (= e!3815912 e!3815911)))

(declare-fun b!6274238 () Bool)

(declare-fun call!530757 () (Set Context!11152))

(assert (=> b!6274238 (= e!3815912 (set.union call!530757 call!530754))))

(declare-fun b!6274239 () Bool)

(assert (=> b!6274239 (= e!3815908 e!3815912)))

(assert (=> b!6274239 (= c!1137270 (is-Union!16192 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun bm!530749 () Bool)

(assert (=> bm!530749 (= call!530752 call!530757)))

(declare-fun bm!530750 () Bool)

(declare-fun call!530755 () List!64875)

(assert (=> bm!530750 (= call!530757 (derivationStepZipperDown!1440 (ite c!1137270 (regOne!32897 (h!71199 (exprs!6076 lt!2352409))) (ite c!1137269 (regTwo!32896 (h!71199 (exprs!6076 lt!2352409))) (ite c!1137268 (regOne!32896 (h!71199 (exprs!6076 lt!2352409))) (reg!16521 (h!71199 (exprs!6076 lt!2352409)))))) (ite (or c!1137270 c!1137269) (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (Context!11153 call!530755)) (h!71200 s!2326)))))

(declare-fun b!6274240 () Bool)

(assert (=> b!6274240 (= e!3815913 call!530756)))

(declare-fun bm!530751 () Bool)

(assert (=> bm!530751 (= call!530753 ($colon$colon!2057 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))) (ite (or c!1137269 c!1137268) (regTwo!32896 (h!71199 (exprs!6076 lt!2352409))) (h!71199 (exprs!6076 lt!2352409)))))))

(declare-fun bm!530752 () Bool)

(assert (=> bm!530752 (= call!530755 call!530753)))

(declare-fun b!6274241 () Bool)

(assert (=> b!6274241 (= e!3815908 (set.insert (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (as set.empty (Set Context!11152))))))

(declare-fun b!6274242 () Bool)

(assert (=> b!6274242 (= e!3815911 (set.union call!530754 call!530752))))

(declare-fun b!6274243 () Bool)

(assert (=> b!6274243 (= e!3815909 call!530756)))

(assert (= (and d!1969254 c!1137267) b!6274241))

(assert (= (and d!1969254 (not c!1137267)) b!6274239))

(assert (= (and b!6274239 c!1137270) b!6274238))

(assert (= (and b!6274239 (not c!1137270)) b!6274237))

(assert (= (and b!6274237 res!2587898) b!6274234))

(assert (= (and b!6274237 c!1137269) b!6274242))

(assert (= (and b!6274237 (not c!1137269)) b!6274233))

(assert (= (and b!6274233 c!1137268) b!6274243))

(assert (= (and b!6274233 (not c!1137268)) b!6274235))

(assert (= (and b!6274235 c!1137271) b!6274240))

(assert (= (and b!6274235 (not c!1137271)) b!6274236))

(assert (= (or b!6274243 b!6274240) bm!530752))

(assert (= (or b!6274243 b!6274240) bm!530747))

(assert (= (or b!6274242 bm!530752) bm!530751))

(assert (= (or b!6274242 bm!530747) bm!530749))

(assert (= (or b!6274238 b!6274242) bm!530748))

(assert (= (or b!6274238 bm!530749) bm!530750))

(declare-fun m!7095740 () Bool)

(assert (=> bm!530750 m!7095740))

(declare-fun m!7095742 () Bool)

(assert (=> bm!530748 m!7095742))

(declare-fun m!7095744 () Bool)

(assert (=> b!6274234 m!7095744))

(declare-fun m!7095746 () Bool)

(assert (=> b!6274241 m!7095746))

(declare-fun m!7095748 () Bool)

(assert (=> bm!530751 m!7095748))

(assert (=> bm!530580 d!1969254))

(declare-fun b!6274244 () Bool)

(declare-fun e!3815917 () (Set Context!11152))

(declare-fun e!3815915 () (Set Context!11152))

(assert (=> b!6274244 (= e!3815917 e!3815915)))

(declare-fun c!1137273 () Bool)

(assert (=> b!6274244 (= c!1137273 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun bm!530753 () Bool)

(declare-fun call!530762 () (Set Context!11152))

(declare-fun call!530758 () (Set Context!11152))

(assert (=> bm!530753 (= call!530762 call!530758)))

(declare-fun b!6274245 () Bool)

(declare-fun e!3815916 () Bool)

(assert (=> b!6274245 (= e!3815916 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 lt!2352397)))))))

(declare-fun b!6274246 () Bool)

(declare-fun c!1137276 () Bool)

(assert (=> b!6274246 (= c!1137276 (is-Star!16192 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun e!3815919 () (Set Context!11152))

(assert (=> b!6274246 (= e!3815915 e!3815919)))

(declare-fun b!6274247 () Bool)

(assert (=> b!6274247 (= e!3815919 (as set.empty (Set Context!11152)))))

(declare-fun d!1969256 () Bool)

(declare-fun c!1137272 () Bool)

(assert (=> d!1969256 (= c!1137272 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 lt!2352397))) (= (c!1136845 (h!71199 (exprs!6076 lt!2352397))) (h!71200 s!2326))))))

(declare-fun e!3815914 () (Set Context!11152))

(assert (=> d!1969256 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352397)) (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (h!71200 s!2326)) e!3815914)))

(declare-fun c!1137275 () Bool)

(declare-fun call!530759 () List!64875)

(declare-fun bm!530754 () Bool)

(declare-fun call!530760 () (Set Context!11152))

(assert (=> bm!530754 (= call!530760 (derivationStepZipperDown!1440 (ite c!1137275 (regTwo!32897 (h!71199 (exprs!6076 lt!2352397))) (regOne!32896 (h!71199 (exprs!6076 lt!2352397)))) (ite c!1137275 (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (Context!11153 call!530759)) (h!71200 s!2326)))))

(declare-fun b!6274248 () Bool)

(declare-fun c!1137274 () Bool)

(assert (=> b!6274248 (= c!1137274 e!3815916)))

(declare-fun res!2587899 () Bool)

(assert (=> b!6274248 (=> (not res!2587899) (not e!3815916))))

(assert (=> b!6274248 (= res!2587899 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun e!3815918 () (Set Context!11152))

(assert (=> b!6274248 (= e!3815918 e!3815917)))

(declare-fun b!6274249 () Bool)

(declare-fun call!530763 () (Set Context!11152))

(assert (=> b!6274249 (= e!3815918 (set.union call!530763 call!530760))))

(declare-fun b!6274250 () Bool)

(assert (=> b!6274250 (= e!3815914 e!3815918)))

(assert (=> b!6274250 (= c!1137275 (is-Union!16192 (h!71199 (exprs!6076 lt!2352397))))))

(declare-fun bm!530755 () Bool)

(assert (=> bm!530755 (= call!530758 call!530763)))

(declare-fun bm!530756 () Bool)

(declare-fun call!530761 () List!64875)

(assert (=> bm!530756 (= call!530763 (derivationStepZipperDown!1440 (ite c!1137275 (regOne!32897 (h!71199 (exprs!6076 lt!2352397))) (ite c!1137274 (regTwo!32896 (h!71199 (exprs!6076 lt!2352397))) (ite c!1137273 (regOne!32896 (h!71199 (exprs!6076 lt!2352397))) (reg!16521 (h!71199 (exprs!6076 lt!2352397)))))) (ite (or c!1137275 c!1137274) (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (Context!11153 call!530761)) (h!71200 s!2326)))))

(declare-fun b!6274251 () Bool)

(assert (=> b!6274251 (= e!3815919 call!530762)))

(declare-fun bm!530757 () Bool)

(assert (=> bm!530757 (= call!530759 ($colon$colon!2057 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397)))) (ite (or c!1137274 c!1137273) (regTwo!32896 (h!71199 (exprs!6076 lt!2352397))) (h!71199 (exprs!6076 lt!2352397)))))))

(declare-fun bm!530758 () Bool)

(assert (=> bm!530758 (= call!530761 call!530759)))

(declare-fun b!6274252 () Bool)

(assert (=> b!6274252 (= e!3815914 (set.insert (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (as set.empty (Set Context!11152))))))

(declare-fun b!6274253 () Bool)

(assert (=> b!6274253 (= e!3815917 (set.union call!530760 call!530758))))

(declare-fun b!6274254 () Bool)

(assert (=> b!6274254 (= e!3815915 call!530762)))

(assert (= (and d!1969256 c!1137272) b!6274252))

(assert (= (and d!1969256 (not c!1137272)) b!6274250))

(assert (= (and b!6274250 c!1137275) b!6274249))

(assert (= (and b!6274250 (not c!1137275)) b!6274248))

(assert (= (and b!6274248 res!2587899) b!6274245))

(assert (= (and b!6274248 c!1137274) b!6274253))

(assert (= (and b!6274248 (not c!1137274)) b!6274244))

(assert (= (and b!6274244 c!1137273) b!6274254))

(assert (= (and b!6274244 (not c!1137273)) b!6274246))

(assert (= (and b!6274246 c!1137276) b!6274251))

(assert (= (and b!6274246 (not c!1137276)) b!6274247))

(assert (= (or b!6274254 b!6274251) bm!530758))

(assert (= (or b!6274254 b!6274251) bm!530753))

(assert (= (or b!6274253 bm!530758) bm!530757))

(assert (= (or b!6274253 bm!530753) bm!530755))

(assert (= (or b!6274249 b!6274253) bm!530754))

(assert (= (or b!6274249 bm!530755) bm!530756))

(declare-fun m!7095750 () Bool)

(assert (=> bm!530756 m!7095750))

(declare-fun m!7095752 () Bool)

(assert (=> bm!530754 m!7095752))

(declare-fun m!7095754 () Bool)

(assert (=> b!6274245 m!7095754))

(declare-fun m!7095756 () Bool)

(assert (=> b!6274252 m!7095756))

(declare-fun m!7095758 () Bool)

(assert (=> bm!530757 m!7095758))

(assert (=> bm!530579 d!1969256))

(assert (=> b!6273039 d!1968844))

(declare-fun d!1969258 () Bool)

(assert (=> d!1969258 (= (isEmpty!36789 (tail!11970 lt!2352404)) (is-Nil!64751 (tail!11970 lt!2352404)))))

(assert (=> b!6273279 d!1969258))

(declare-fun d!1969260 () Bool)

(assert (=> d!1969260 (= (tail!11970 lt!2352404) (t!378433 lt!2352404))))

(assert (=> b!6273279 d!1969260))

(declare-fun d!1969262 () Bool)

(assert (=> d!1969262 (= (isEmpty!36793 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326)) (not (is-Some!16082 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326))))))

(assert (=> d!1968894 d!1969262))

(assert (=> d!1968928 d!1968926))

(assert (=> d!1968928 d!1968936))

(declare-fun d!1969264 () Bool)

(assert (=> d!1969264 (= (matchR!8375 lt!2352391 s!2326) (matchZipper!2204 lt!2352408 s!2326))))

(assert (=> d!1969264 true))

(declare-fun _$44!1603 () Unit!158099)

(assert (=> d!1969264 (= (choose!46551 lt!2352408 (Cons!64753 lt!2352397 Nil!64753) lt!2352391 s!2326) _$44!1603)))

(declare-fun bs!1567003 () Bool)

(assert (= bs!1567003 d!1969264))

(assert (=> bs!1567003 m!7094422))

(assert (=> bs!1567003 m!7094426))

(assert (=> d!1968928 d!1969264))

(assert (=> d!1968928 d!1969108))

(assert (=> d!1968868 d!1969172))

(assert (=> d!1968948 d!1969172))

(assert (=> d!1968918 d!1968934))

(assert (=> d!1968918 d!1968932))

(declare-fun d!1969266 () Bool)

(assert (=> d!1969266 (= (matchR!8375 lt!2352400 s!2326) (matchZipper!2204 lt!2352410 s!2326))))

(assert (=> d!1969266 true))

(declare-fun _$44!1604 () Unit!158099)

(assert (=> d!1969266 (= (choose!46551 lt!2352410 lt!2352399 lt!2352400 s!2326) _$44!1604)))

(declare-fun bs!1567004 () Bool)

(assert (= bs!1567004 d!1969266))

(assert (=> bs!1567004 m!7094418))

(assert (=> bs!1567004 m!7094424))

(assert (=> d!1968918 d!1969266))

(assert (=> d!1968918 d!1969140))

(assert (=> bs!1566709 d!1968858))

(declare-fun b!6274255 () Bool)

(declare-fun e!3815922 () Bool)

(assert (=> b!6274255 (= e!3815922 (nullable!6185 (derivativeStep!4901 r!7292 (head!12884 s!2326))))))

(declare-fun bm!530759 () Bool)

(declare-fun call!530764 () Bool)

(assert (=> bm!530759 (= call!530764 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6274256 () Bool)

(declare-fun e!3815923 () Bool)

(declare-fun e!3815925 () Bool)

(assert (=> b!6274256 (= e!3815923 e!3815925)))

(declare-fun res!2587902 () Bool)

(assert (=> b!6274256 (=> res!2587902 e!3815925)))

(assert (=> b!6274256 (= res!2587902 call!530764)))

(declare-fun d!1969268 () Bool)

(declare-fun e!3815920 () Bool)

(assert (=> d!1969268 e!3815920))

(declare-fun c!1137279 () Bool)

(assert (=> d!1969268 (= c!1137279 (is-EmptyExpr!16192 (derivativeStep!4901 r!7292 (head!12884 s!2326))))))

(declare-fun lt!2352711 () Bool)

(assert (=> d!1969268 (= lt!2352711 e!3815922)))

(declare-fun c!1137277 () Bool)

(assert (=> d!1969268 (= c!1137277 (isEmpty!36792 (tail!11969 s!2326)))))

(assert (=> d!1969268 (validRegex!7928 (derivativeStep!4901 r!7292 (head!12884 s!2326)))))

(assert (=> d!1969268 (= (matchR!8375 (derivativeStep!4901 r!7292 (head!12884 s!2326)) (tail!11969 s!2326)) lt!2352711)))

(declare-fun b!6274257 () Bool)

(declare-fun e!3815924 () Bool)

(assert (=> b!6274257 (= e!3815924 (not lt!2352711))))

(declare-fun b!6274258 () Bool)

(assert (=> b!6274258 (= e!3815922 (matchR!8375 (derivativeStep!4901 (derivativeStep!4901 r!7292 (head!12884 s!2326)) (head!12884 (tail!11969 s!2326))) (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6274259 () Bool)

(declare-fun res!2587905 () Bool)

(assert (=> b!6274259 (=> res!2587905 e!3815925)))

(assert (=> b!6274259 (= res!2587905 (not (isEmpty!36792 (tail!11969 (tail!11969 s!2326)))))))

(declare-fun b!6274260 () Bool)

(assert (=> b!6274260 (= e!3815925 (not (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 r!7292 (head!12884 s!2326))))))))

(declare-fun b!6274261 () Bool)

(declare-fun e!3815926 () Bool)

(assert (=> b!6274261 (= e!3815926 e!3815923)))

(declare-fun res!2587901 () Bool)

(assert (=> b!6274261 (=> (not res!2587901) (not e!3815923))))

(assert (=> b!6274261 (= res!2587901 (not lt!2352711))))

(declare-fun b!6274262 () Bool)

(declare-fun e!3815921 () Bool)

(assert (=> b!6274262 (= e!3815921 (= (head!12884 (tail!11969 s!2326)) (c!1136845 (derivativeStep!4901 r!7292 (head!12884 s!2326)))))))

(declare-fun b!6274263 () Bool)

(declare-fun res!2587906 () Bool)

(assert (=> b!6274263 (=> (not res!2587906) (not e!3815921))))

(assert (=> b!6274263 (= res!2587906 (not call!530764))))

(declare-fun b!6274264 () Bool)

(declare-fun res!2587907 () Bool)

(assert (=> b!6274264 (=> (not res!2587907) (not e!3815921))))

(assert (=> b!6274264 (= res!2587907 (isEmpty!36792 (tail!11969 (tail!11969 s!2326))))))

(declare-fun b!6274265 () Bool)

(declare-fun res!2587903 () Bool)

(assert (=> b!6274265 (=> res!2587903 e!3815926)))

(assert (=> b!6274265 (= res!2587903 e!3815921)))

(declare-fun res!2587904 () Bool)

(assert (=> b!6274265 (=> (not res!2587904) (not e!3815921))))

(assert (=> b!6274265 (= res!2587904 lt!2352711)))

(declare-fun b!6274266 () Bool)

(assert (=> b!6274266 (= e!3815920 e!3815924)))

(declare-fun c!1137278 () Bool)

(assert (=> b!6274266 (= c!1137278 (is-EmptyLang!16192 (derivativeStep!4901 r!7292 (head!12884 s!2326))))))

(declare-fun b!6274267 () Bool)

(declare-fun res!2587900 () Bool)

(assert (=> b!6274267 (=> res!2587900 e!3815926)))

(assert (=> b!6274267 (= res!2587900 (not (is-ElementMatch!16192 (derivativeStep!4901 r!7292 (head!12884 s!2326)))))))

(assert (=> b!6274267 (= e!3815924 e!3815926)))

(declare-fun b!6274268 () Bool)

(assert (=> b!6274268 (= e!3815920 (= lt!2352711 call!530764))))

(assert (= (and d!1969268 c!1137277) b!6274255))

(assert (= (and d!1969268 (not c!1137277)) b!6274258))

(assert (= (and d!1969268 c!1137279) b!6274268))

(assert (= (and d!1969268 (not c!1137279)) b!6274266))

(assert (= (and b!6274266 c!1137278) b!6274257))

(assert (= (and b!6274266 (not c!1137278)) b!6274267))

(assert (= (and b!6274267 (not res!2587900)) b!6274265))

(assert (= (and b!6274265 res!2587904) b!6274263))

(assert (= (and b!6274263 res!2587906) b!6274264))

(assert (= (and b!6274264 res!2587907) b!6274262))

(assert (= (and b!6274265 (not res!2587903)) b!6274261))

(assert (= (and b!6274261 res!2587901) b!6274256))

(assert (= (and b!6274256 (not res!2587902)) b!6274259))

(assert (= (and b!6274259 (not res!2587905)) b!6274260))

(assert (= (or b!6274268 b!6274256 b!6274263) bm!530759))

(assert (=> b!6274259 m!7094774))

(assert (=> b!6274259 m!7095474))

(assert (=> b!6274259 m!7095474))

(assert (=> b!6274259 m!7095516))

(assert (=> b!6274264 m!7094774))

(assert (=> b!6274264 m!7095474))

(assert (=> b!6274264 m!7095474))

(assert (=> b!6274264 m!7095516))

(assert (=> b!6274255 m!7094782))

(declare-fun m!7095760 () Bool)

(assert (=> b!6274255 m!7095760))

(assert (=> d!1969268 m!7094774))

(assert (=> d!1969268 m!7094776))

(assert (=> d!1969268 m!7094782))

(declare-fun m!7095762 () Bool)

(assert (=> d!1969268 m!7095762))

(assert (=> b!6274258 m!7094774))

(assert (=> b!6274258 m!7095470))

(assert (=> b!6274258 m!7094782))

(assert (=> b!6274258 m!7095470))

(declare-fun m!7095764 () Bool)

(assert (=> b!6274258 m!7095764))

(assert (=> b!6274258 m!7094774))

(assert (=> b!6274258 m!7095474))

(assert (=> b!6274258 m!7095764))

(assert (=> b!6274258 m!7095474))

(declare-fun m!7095766 () Bool)

(assert (=> b!6274258 m!7095766))

(assert (=> bm!530759 m!7094774))

(assert (=> bm!530759 m!7094776))

(assert (=> b!6274262 m!7094774))

(assert (=> b!6274262 m!7095470))

(assert (=> b!6274260 m!7094774))

(assert (=> b!6274260 m!7095470))

(assert (=> b!6273137 d!1969268))

(declare-fun call!530768 () Regex!16192)

(declare-fun c!1137281 () Bool)

(declare-fun bm!530760 () Bool)

(assert (=> bm!530760 (= call!530768 (derivativeStep!4901 (ite c!1137281 (regOne!32897 r!7292) (regOne!32896 r!7292)) (head!12884 s!2326)))))

(declare-fun b!6274269 () Bool)

(declare-fun call!530767 () Regex!16192)

(declare-fun e!3815928 () Regex!16192)

(assert (=> b!6274269 (= e!3815928 (Union!16192 (Concat!25037 call!530768 (regTwo!32896 r!7292)) call!530767))))

(declare-fun b!6274270 () Bool)

(declare-fun e!3815930 () Regex!16192)

(assert (=> b!6274270 (= e!3815930 EmptyLang!16192)))

(declare-fun b!6274271 () Bool)

(declare-fun c!1137280 () Bool)

(assert (=> b!6274271 (= c!1137280 (nullable!6185 (regOne!32896 r!7292)))))

(declare-fun e!3815927 () Regex!16192)

(assert (=> b!6274271 (= e!3815927 e!3815928)))

(declare-fun b!6274272 () Bool)

(declare-fun e!3815929 () Regex!16192)

(assert (=> b!6274272 (= e!3815929 e!3815927)))

(declare-fun c!1137283 () Bool)

(assert (=> b!6274272 (= c!1137283 (is-Star!16192 r!7292))))

(declare-fun b!6274273 () Bool)

(assert (=> b!6274273 (= e!3815928 (Union!16192 (Concat!25037 call!530767 (regTwo!32896 r!7292)) EmptyLang!16192))))

(declare-fun bm!530762 () Bool)

(declare-fun call!530766 () Regex!16192)

(assert (=> bm!530762 (= call!530766 (derivativeStep!4901 (ite c!1137281 (regTwo!32897 r!7292) (ite c!1137283 (reg!16521 r!7292) (ite c!1137280 (regTwo!32896 r!7292) (regOne!32896 r!7292)))) (head!12884 s!2326)))))

(declare-fun bm!530761 () Bool)

(declare-fun call!530765 () Regex!16192)

(assert (=> bm!530761 (= call!530767 call!530765)))

(declare-fun d!1969270 () Bool)

(declare-fun lt!2352712 () Regex!16192)

(assert (=> d!1969270 (validRegex!7928 lt!2352712)))

(assert (=> d!1969270 (= lt!2352712 e!3815930)))

(declare-fun c!1137282 () Bool)

(assert (=> d!1969270 (= c!1137282 (or (is-EmptyExpr!16192 r!7292) (is-EmptyLang!16192 r!7292)))))

(assert (=> d!1969270 (validRegex!7928 r!7292)))

(assert (=> d!1969270 (= (derivativeStep!4901 r!7292 (head!12884 s!2326)) lt!2352712)))

(declare-fun b!6274274 () Bool)

(assert (=> b!6274274 (= e!3815927 (Concat!25037 call!530765 r!7292))))

(declare-fun b!6274275 () Bool)

(assert (=> b!6274275 (= e!3815929 (Union!16192 call!530768 call!530766))))

(declare-fun b!6274276 () Bool)

(declare-fun e!3815931 () Regex!16192)

(assert (=> b!6274276 (= e!3815931 (ite (= (head!12884 s!2326) (c!1136845 r!7292)) EmptyExpr!16192 EmptyLang!16192))))

(declare-fun b!6274277 () Bool)

(assert (=> b!6274277 (= c!1137281 (is-Union!16192 r!7292))))

(assert (=> b!6274277 (= e!3815931 e!3815929)))

(declare-fun b!6274278 () Bool)

(assert (=> b!6274278 (= e!3815930 e!3815931)))

(declare-fun c!1137284 () Bool)

(assert (=> b!6274278 (= c!1137284 (is-ElementMatch!16192 r!7292))))

(declare-fun bm!530763 () Bool)

(assert (=> bm!530763 (= call!530765 call!530766)))

(assert (= (and d!1969270 c!1137282) b!6274270))

(assert (= (and d!1969270 (not c!1137282)) b!6274278))

(assert (= (and b!6274278 c!1137284) b!6274276))

(assert (= (and b!6274278 (not c!1137284)) b!6274277))

(assert (= (and b!6274277 c!1137281) b!6274275))

(assert (= (and b!6274277 (not c!1137281)) b!6274272))

(assert (= (and b!6274272 c!1137283) b!6274274))

(assert (= (and b!6274272 (not c!1137283)) b!6274271))

(assert (= (and b!6274271 c!1137280) b!6274269))

(assert (= (and b!6274271 (not c!1137280)) b!6274273))

(assert (= (or b!6274269 b!6274273) bm!530761))

(assert (= (or b!6274274 bm!530761) bm!530763))

(assert (= (or b!6274275 bm!530763) bm!530762))

(assert (= (or b!6274275 b!6274269) bm!530760))

(assert (=> bm!530760 m!7094780))

(declare-fun m!7095768 () Bool)

(assert (=> bm!530760 m!7095768))

(assert (=> b!6274271 m!7095644))

(assert (=> bm!530762 m!7094780))

(declare-fun m!7095770 () Bool)

(assert (=> bm!530762 m!7095770))

(declare-fun m!7095772 () Bool)

(assert (=> d!1969270 m!7095772))

(assert (=> d!1969270 m!7094356))

(assert (=> b!6273137 d!1969270))

(assert (=> b!6273137 d!1969130))

(assert (=> b!6273137 d!1969122))

(assert (=> d!1968874 d!1969172))

(declare-fun bs!1567005 () Bool)

(declare-fun d!1969272 () Bool)

(assert (= bs!1567005 (and d!1969272 d!1969134)))

(declare-fun lambda!343818 () Int)

(assert (=> bs!1567005 (= lambda!343818 lambda!343795)))

(declare-fun bs!1567006 () Bool)

(assert (= bs!1567006 (and d!1969272 d!1969252)))

(assert (=> bs!1567006 (= lambda!343818 lambda!343817)))

(declare-fun bs!1567007 () Bool)

(assert (= bs!1567007 (and d!1969272 d!1969242)))

(assert (=> bs!1567007 (= lambda!343818 lambda!343815)))

(declare-fun bs!1567008 () Bool)

(assert (= bs!1567008 (and d!1969272 b!6273224)))

(assert (=> bs!1567008 (not (= lambda!343818 lambda!343728))))

(declare-fun bs!1567009 () Bool)

(assert (= bs!1567009 (and d!1969272 b!6273219)))

(assert (=> bs!1567009 (not (= lambda!343818 lambda!343725))))

(declare-fun bs!1567010 () Bool)

(assert (= bs!1567010 (and d!1969272 d!1969114)))

(assert (=> bs!1567010 (= lambda!343818 lambda!343790)))

(declare-fun bs!1567011 () Bool)

(assert (= bs!1567011 (and d!1969272 b!6273222)))

(assert (=> bs!1567011 (not (= lambda!343818 lambda!343727))))

(declare-fun bs!1567012 () Bool)

(assert (= bs!1567012 (and d!1969272 b!6273217)))

(assert (=> bs!1567012 (not (= lambda!343818 lambda!343724))))

(assert (=> d!1969272 (= (nullableZipper!1962 (set.union lt!2352420 lt!2352419)) (exists!2524 (set.union lt!2352420 lt!2352419) lambda!343818))))

(declare-fun bs!1567013 () Bool)

(assert (= bs!1567013 d!1969272))

(declare-fun m!7095774 () Bool)

(assert (=> bs!1567013 m!7095774))

(assert (=> b!6272976 d!1969272))

(declare-fun b!6274279 () Bool)

(declare-fun e!3815937 () Bool)

(declare-fun call!530769 () Bool)

(assert (=> b!6274279 (= e!3815937 call!530769)))

(declare-fun b!6274280 () Bool)

(declare-fun e!3815936 () Bool)

(declare-fun e!3815933 () Bool)

(assert (=> b!6274280 (= e!3815936 e!3815933)))

(declare-fun res!2587911 () Bool)

(assert (=> b!6274280 (= res!2587911 (not (nullable!6185 (reg!16521 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))))

(assert (=> b!6274280 (=> (not res!2587911) (not e!3815933))))

(declare-fun c!1137285 () Bool)

(declare-fun call!530771 () Bool)

(declare-fun c!1137286 () Bool)

(declare-fun bm!530764 () Bool)

(assert (=> bm!530764 (= call!530771 (validRegex!7928 (ite c!1137285 (reg!16521 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))) (ite c!1137286 (regOne!32897 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))) (regOne!32896 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292)))))))))

(declare-fun b!6274281 () Bool)

(declare-fun e!3815938 () Bool)

(assert (=> b!6274281 (= e!3815938 e!3815936)))

(assert (=> b!6274281 (= c!1137285 (is-Star!16192 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))

(declare-fun b!6274282 () Bool)

(declare-fun e!3815935 () Bool)

(assert (=> b!6274282 (= e!3815936 e!3815935)))

(assert (=> b!6274282 (= c!1137286 (is-Union!16192 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))

(declare-fun d!1969274 () Bool)

(declare-fun res!2587908 () Bool)

(assert (=> d!1969274 (=> res!2587908 e!3815938)))

(assert (=> d!1969274 (= res!2587908 (is-ElementMatch!16192 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))

(assert (=> d!1969274 (= (validRegex!7928 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))) e!3815938)))

(declare-fun bm!530765 () Bool)

(declare-fun call!530770 () Bool)

(assert (=> bm!530765 (= call!530770 call!530771)))

(declare-fun b!6274283 () Bool)

(declare-fun res!2587910 () Bool)

(declare-fun e!3815934 () Bool)

(assert (=> b!6274283 (=> res!2587910 e!3815934)))

(assert (=> b!6274283 (= res!2587910 (not (is-Concat!25037 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292)))))))

(assert (=> b!6274283 (= e!3815935 e!3815934)))

(declare-fun b!6274284 () Bool)

(declare-fun e!3815932 () Bool)

(assert (=> b!6274284 (= e!3815934 e!3815932)))

(declare-fun res!2587909 () Bool)

(assert (=> b!6274284 (=> (not res!2587909) (not e!3815932))))

(assert (=> b!6274284 (= res!2587909 call!530770)))

(declare-fun b!6274285 () Bool)

(assert (=> b!6274285 (= e!3815933 call!530771)))

(declare-fun bm!530766 () Bool)

(assert (=> bm!530766 (= call!530769 (validRegex!7928 (ite c!1137286 (regTwo!32897 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))) (regTwo!32896 (ite c!1136965 (regTwo!32897 r!7292) (regTwo!32896 r!7292))))))))

(declare-fun b!6274286 () Bool)

(assert (=> b!6274286 (= e!3815932 call!530769)))

(declare-fun b!6274287 () Bool)

(declare-fun res!2587912 () Bool)

(assert (=> b!6274287 (=> (not res!2587912) (not e!3815937))))

(assert (=> b!6274287 (= res!2587912 call!530770)))

(assert (=> b!6274287 (= e!3815935 e!3815937)))

(assert (= (and d!1969274 (not res!2587908)) b!6274281))

(assert (= (and b!6274281 c!1137285) b!6274280))

(assert (= (and b!6274281 (not c!1137285)) b!6274282))

(assert (= (and b!6274280 res!2587911) b!6274285))

(assert (= (and b!6274282 c!1137286) b!6274287))

(assert (= (and b!6274282 (not c!1137286)) b!6274283))

(assert (= (and b!6274287 res!2587912) b!6274279))

(assert (= (and b!6274283 (not res!2587910)) b!6274284))

(assert (= (and b!6274284 res!2587909) b!6274286))

(assert (= (or b!6274279 b!6274286) bm!530766))

(assert (= (or b!6274287 b!6274284) bm!530765))

(assert (= (or b!6274285 bm!530765) bm!530764))

(declare-fun m!7095776 () Bool)

(assert (=> b!6274280 m!7095776))

(declare-fun m!7095778 () Bool)

(assert (=> bm!530764 m!7095778))

(declare-fun m!7095780 () Bool)

(assert (=> bm!530766 m!7095780))

(assert (=> bm!530610 d!1969274))

(assert (=> b!6273298 d!1969130))

(declare-fun b!6274288 () Bool)

(declare-fun e!3815942 () (Set Context!11152))

(declare-fun e!3815940 () (Set Context!11152))

(assert (=> b!6274288 (= e!3815942 e!3815940)))

(declare-fun c!1137288 () Bool)

(assert (=> b!6274288 (= c!1137288 (is-Concat!25037 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun bm!530767 () Bool)

(declare-fun call!530776 () (Set Context!11152))

(declare-fun call!530772 () (Set Context!11152))

(assert (=> bm!530767 (= call!530776 call!530772)))

(declare-fun b!6274289 () Bool)

(declare-fun e!3815941 () Bool)

(assert (=> b!6274289 (= e!3815941 (nullable!6185 (regOne!32896 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))))

(declare-fun b!6274290 () Bool)

(declare-fun c!1137291 () Bool)

(assert (=> b!6274290 (= c!1137291 (is-Star!16192 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun e!3815944 () (Set Context!11152))

(assert (=> b!6274290 (= e!3815940 e!3815944)))

(declare-fun b!6274291 () Bool)

(assert (=> b!6274291 (= e!3815944 (as set.empty (Set Context!11152)))))

(declare-fun d!1969276 () Bool)

(declare-fun c!1137287 () Bool)

(assert (=> d!1969276 (= c!1137287 (and (is-ElementMatch!16192 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (= (c!1136845 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326))))))

(declare-fun e!3815939 () (Set Context!11152))

(assert (=> d!1969276 (= (derivationStepZipperDown!1440 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))) (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579)) (h!71200 s!2326)) e!3815939)))

(declare-fun bm!530768 () Bool)

(declare-fun call!530773 () List!64875)

(declare-fun c!1137290 () Bool)

(declare-fun call!530774 () (Set Context!11152))

(assert (=> bm!530768 (= call!530774 (derivationStepZipperDown!1440 (ite c!1137290 (regTwo!32897 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (regOne!32896 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))))) (ite c!1137290 (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579)) (Context!11153 call!530773)) (h!71200 s!2326)))))

(declare-fun b!6274292 () Bool)

(declare-fun c!1137289 () Bool)

(assert (=> b!6274292 (= c!1137289 e!3815941)))

(declare-fun res!2587913 () Bool)

(assert (=> b!6274292 (=> (not res!2587913) (not e!3815941))))

(assert (=> b!6274292 (= res!2587913 (is-Concat!25037 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun e!3815943 () (Set Context!11152))

(assert (=> b!6274292 (= e!3815943 e!3815942)))

(declare-fun b!6274293 () Bool)

(declare-fun call!530777 () (Set Context!11152))

(assert (=> b!6274293 (= e!3815943 (set.union call!530777 call!530774))))

(declare-fun b!6274294 () Bool)

(assert (=> b!6274294 (= e!3815939 e!3815943)))

(assert (=> b!6274294 (= c!1137290 (is-Union!16192 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun bm!530769 () Bool)

(assert (=> bm!530769 (= call!530772 call!530777)))

(declare-fun bm!530770 () Bool)

(declare-fun call!530775 () List!64875)

(assert (=> bm!530770 (= call!530777 (derivationStepZipperDown!1440 (ite c!1137290 (regOne!32897 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (ite c!1137289 (regTwo!32896 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (ite c!1137288 (regOne!32896 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (reg!16521 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))) (ite (or c!1137290 c!1137289) (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579)) (Context!11153 call!530775)) (h!71200 s!2326)))))

(declare-fun b!6274295 () Bool)

(assert (=> b!6274295 (= e!3815944 call!530776)))

(declare-fun bm!530771 () Bool)

(assert (=> bm!530771 (= call!530773 ($colon$colon!2057 (exprs!6076 (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579))) (ite (or c!1137289 c!1137288) (regTwo!32896 (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343)))))))) (ite c!1136897 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136896 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1136895 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))))

(declare-fun bm!530772 () Bool)

(assert (=> bm!530772 (= call!530775 call!530773)))

(declare-fun b!6274296 () Bool)

(assert (=> b!6274296 (= e!3815939 (set.insert (ite (or c!1136897 c!1136896) lt!2352413 (Context!11153 call!530579)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274297 () Bool)

(assert (=> b!6274297 (= e!3815942 (set.union call!530774 call!530772))))

(declare-fun b!6274298 () Bool)

(assert (=> b!6274298 (= e!3815940 call!530776)))

(assert (= (and d!1969276 c!1137287) b!6274296))

(assert (= (and d!1969276 (not c!1137287)) b!6274294))

(assert (= (and b!6274294 c!1137290) b!6274293))

(assert (= (and b!6274294 (not c!1137290)) b!6274292))

(assert (= (and b!6274292 res!2587913) b!6274289))

(assert (= (and b!6274292 c!1137289) b!6274297))

(assert (= (and b!6274292 (not c!1137289)) b!6274288))

(assert (= (and b!6274288 c!1137288) b!6274298))

(assert (= (and b!6274288 (not c!1137288)) b!6274290))

(assert (= (and b!6274290 c!1137291) b!6274295))

(assert (= (and b!6274290 (not c!1137291)) b!6274291))

(assert (= (or b!6274298 b!6274295) bm!530772))

(assert (= (or b!6274298 b!6274295) bm!530767))

(assert (= (or b!6274297 bm!530772) bm!530771))

(assert (= (or b!6274297 bm!530767) bm!530769))

(assert (= (or b!6274293 b!6274297) bm!530768))

(assert (= (or b!6274293 bm!530769) bm!530770))

(declare-fun m!7095782 () Bool)

(assert (=> bm!530770 m!7095782))

(declare-fun m!7095784 () Bool)

(assert (=> bm!530768 m!7095784))

(declare-fun m!7095786 () Bool)

(assert (=> b!6274289 m!7095786))

(declare-fun m!7095788 () Bool)

(assert (=> b!6274296 m!7095788))

(declare-fun m!7095790 () Bool)

(assert (=> bm!530771 m!7095790))

(assert (=> bm!530574 d!1969276))

(declare-fun b!6274299 () Bool)

(declare-fun e!3815948 () (Set Context!11152))

(declare-fun e!3815946 () (Set Context!11152))

(assert (=> b!6274299 (= e!3815948 e!3815946)))

(declare-fun c!1137293 () Bool)

(assert (=> b!6274299 (= c!1137293 (is-Concat!25037 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun bm!530773 () Bool)

(declare-fun call!530782 () (Set Context!11152))

(declare-fun call!530778 () (Set Context!11152))

(assert (=> bm!530773 (= call!530782 call!530778)))

(declare-fun b!6274300 () Bool)

(declare-fun e!3815947 () Bool)

(assert (=> b!6274300 (= e!3815947 (nullable!6185 (regOne!32896 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(declare-fun b!6274301 () Bool)

(declare-fun c!1137296 () Bool)

(assert (=> b!6274301 (= c!1137296 (is-Star!16192 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun e!3815950 () (Set Context!11152))

(assert (=> b!6274301 (= e!3815946 e!3815950)))

(declare-fun b!6274302 () Bool)

(assert (=> b!6274302 (= e!3815950 (as set.empty (Set Context!11152)))))

(declare-fun d!1969278 () Bool)

(declare-fun c!1137292 () Bool)

(assert (=> d!1969278 (= c!1137292 (and (is-ElementMatch!16192 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (= (c!1136845 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (h!71200 s!2326))))))

(declare-fun e!3815945 () (Set Context!11152))

(assert (=> d!1969278 (= (derivationStepZipperDown!1440 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))) (ite c!1136948 lt!2352397 (Context!11153 call!530602)) (h!71200 s!2326)) e!3815945)))

(declare-fun bm!530774 () Bool)

(declare-fun call!530779 () List!64875)

(declare-fun call!530780 () (Set Context!11152))

(declare-fun c!1137295 () Bool)

(assert (=> bm!530774 (= call!530780 (derivationStepZipperDown!1440 (ite c!1137295 (regTwo!32897 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (regOne!32896 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))) (ite c!1137295 (ite c!1136948 lt!2352397 (Context!11153 call!530602)) (Context!11153 call!530779)) (h!71200 s!2326)))))

(declare-fun b!6274303 () Bool)

(declare-fun c!1137294 () Bool)

(assert (=> b!6274303 (= c!1137294 e!3815947)))

(declare-fun res!2587914 () Bool)

(assert (=> b!6274303 (=> (not res!2587914) (not e!3815947))))

(assert (=> b!6274303 (= res!2587914 (is-Concat!25037 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun e!3815949 () (Set Context!11152))

(assert (=> b!6274303 (= e!3815949 e!3815948)))

(declare-fun b!6274304 () Bool)

(declare-fun call!530783 () (Set Context!11152))

(assert (=> b!6274304 (= e!3815949 (set.union call!530783 call!530780))))

(declare-fun b!6274305 () Bool)

(assert (=> b!6274305 (= e!3815945 e!3815949)))

(assert (=> b!6274305 (= c!1137295 (is-Union!16192 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun bm!530775 () Bool)

(assert (=> bm!530775 (= call!530778 call!530783)))

(declare-fun bm!530776 () Bool)

(declare-fun call!530781 () List!64875)

(assert (=> bm!530776 (= call!530783 (derivationStepZipperDown!1440 (ite c!1137295 (regOne!32897 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (ite c!1137294 (regTwo!32896 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (ite c!1137293 (regOne!32896 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (reg!16521 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))) (ite (or c!1137295 c!1137294) (ite c!1136948 lt!2352397 (Context!11153 call!530602)) (Context!11153 call!530781)) (h!71200 s!2326)))))

(declare-fun b!6274306 () Bool)

(assert (=> b!6274306 (= e!3815950 call!530782)))

(declare-fun bm!530777 () Bool)

(assert (=> bm!530777 (= call!530779 ($colon$colon!2057 (exprs!6076 (ite c!1136948 lt!2352397 (Context!11153 call!530602))) (ite (or c!1137294 c!1137293) (regTwo!32896 (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))) (ite c!1136948 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(declare-fun bm!530778 () Bool)

(assert (=> bm!530778 (= call!530781 call!530779)))

(declare-fun b!6274307 () Bool)

(assert (=> b!6274307 (= e!3815945 (set.insert (ite c!1136948 lt!2352397 (Context!11153 call!530602)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274308 () Bool)

(assert (=> b!6274308 (= e!3815948 (set.union call!530780 call!530778))))

(declare-fun b!6274309 () Bool)

(assert (=> b!6274309 (= e!3815946 call!530782)))

(assert (= (and d!1969278 c!1137292) b!6274307))

(assert (= (and d!1969278 (not c!1137292)) b!6274305))

(assert (= (and b!6274305 c!1137295) b!6274304))

(assert (= (and b!6274305 (not c!1137295)) b!6274303))

(assert (= (and b!6274303 res!2587914) b!6274300))

(assert (= (and b!6274303 c!1137294) b!6274308))

(assert (= (and b!6274303 (not c!1137294)) b!6274299))

(assert (= (and b!6274299 c!1137293) b!6274309))

(assert (= (and b!6274299 (not c!1137293)) b!6274301))

(assert (= (and b!6274301 c!1137296) b!6274306))

(assert (= (and b!6274301 (not c!1137296)) b!6274302))

(assert (= (or b!6274309 b!6274306) bm!530778))

(assert (= (or b!6274309 b!6274306) bm!530773))

(assert (= (or b!6274308 bm!530778) bm!530777))

(assert (= (or b!6274308 bm!530773) bm!530775))

(assert (= (or b!6274304 b!6274308) bm!530774))

(assert (= (or b!6274304 bm!530775) bm!530776))

(declare-fun m!7095792 () Bool)

(assert (=> bm!530776 m!7095792))

(declare-fun m!7095794 () Bool)

(assert (=> bm!530774 m!7095794))

(declare-fun m!7095796 () Bool)

(assert (=> b!6274300 m!7095796))

(declare-fun m!7095798 () Bool)

(assert (=> b!6274307 m!7095798))

(declare-fun m!7095800 () Bool)

(assert (=> bm!530777 m!7095800))

(assert (=> bm!530597 d!1969278))

(declare-fun d!1969280 () Bool)

(assert (=> d!1969280 (= (isEmptyExpr!1598 lt!2352542) (is-EmptyExpr!16192 lt!2352542))))

(assert (=> b!6272964 d!1969280))

(assert (=> b!6273141 d!1969130))

(declare-fun b!6274310 () Bool)

(declare-fun e!3815956 () Bool)

(declare-fun call!530784 () Bool)

(assert (=> b!6274310 (= e!3815956 call!530784)))

(declare-fun b!6274311 () Bool)

(declare-fun e!3815955 () Bool)

(declare-fun e!3815952 () Bool)

(assert (=> b!6274311 (= e!3815955 e!3815952)))

(declare-fun res!2587918 () Bool)

(assert (=> b!6274311 (= res!2587918 (not (nullable!6185 (reg!16521 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))))

(assert (=> b!6274311 (=> (not res!2587918) (not e!3815952))))

(declare-fun c!1137298 () Bool)

(declare-fun bm!530779 () Bool)

(declare-fun call!530786 () Bool)

(declare-fun c!1137297 () Bool)

(assert (=> bm!530779 (= call!530786 (validRegex!7928 (ite c!1137297 (reg!16521 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))) (ite c!1137298 (regOne!32897 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))) (regOne!32896 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))))))

(declare-fun b!6274312 () Bool)

(declare-fun e!3815957 () Bool)

(assert (=> b!6274312 (= e!3815957 e!3815955)))

(assert (=> b!6274312 (= c!1137297 (is-Star!16192 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(declare-fun b!6274313 () Bool)

(declare-fun e!3815954 () Bool)

(assert (=> b!6274313 (= e!3815955 e!3815954)))

(assert (=> b!6274313 (= c!1137298 (is-Union!16192 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(declare-fun d!1969282 () Bool)

(declare-fun res!2587915 () Bool)

(assert (=> d!1969282 (=> res!2587915 e!3815957)))

(assert (=> d!1969282 (= res!2587915 (is-ElementMatch!16192 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(assert (=> d!1969282 (= (validRegex!7928 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))) e!3815957)))

(declare-fun bm!530780 () Bool)

(declare-fun call!530785 () Bool)

(assert (=> bm!530780 (= call!530785 call!530786)))

(declare-fun b!6274314 () Bool)

(declare-fun res!2587917 () Bool)

(declare-fun e!3815953 () Bool)

(assert (=> b!6274314 (=> res!2587917 e!3815953)))

(assert (=> b!6274314 (= res!2587917 (not (is-Concat!25037 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))))

(assert (=> b!6274314 (= e!3815954 e!3815953)))

(declare-fun b!6274315 () Bool)

(declare-fun e!3815951 () Bool)

(assert (=> b!6274315 (= e!3815953 e!3815951)))

(declare-fun res!2587916 () Bool)

(assert (=> b!6274315 (=> (not res!2587916) (not e!3815951))))

(assert (=> b!6274315 (= res!2587916 call!530785)))

(declare-fun b!6274316 () Bool)

(assert (=> b!6274316 (= e!3815952 call!530786)))

(declare-fun bm!530781 () Bool)

(assert (=> bm!530781 (= call!530784 (validRegex!7928 (ite c!1137298 (regTwo!32897 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))) (regTwo!32896 (ite c!1136986 (reg!16521 (regOne!32896 (regOne!32896 r!7292))) (ite c!1136987 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))))))

(declare-fun b!6274317 () Bool)

(assert (=> b!6274317 (= e!3815951 call!530784)))

(declare-fun b!6274318 () Bool)

(declare-fun res!2587919 () Bool)

(assert (=> b!6274318 (=> (not res!2587919) (not e!3815956))))

(assert (=> b!6274318 (= res!2587919 call!530785)))

(assert (=> b!6274318 (= e!3815954 e!3815956)))

(assert (= (and d!1969282 (not res!2587915)) b!6274312))

(assert (= (and b!6274312 c!1137297) b!6274311))

(assert (= (and b!6274312 (not c!1137297)) b!6274313))

(assert (= (and b!6274311 res!2587918) b!6274316))

(assert (= (and b!6274313 c!1137298) b!6274318))

(assert (= (and b!6274313 (not c!1137298)) b!6274314))

(assert (= (and b!6274318 res!2587919) b!6274310))

(assert (= (and b!6274314 (not res!2587917)) b!6274315))

(assert (= (and b!6274315 res!2587916) b!6274317))

(assert (= (or b!6274310 b!6274317) bm!530781))

(assert (= (or b!6274318 b!6274315) bm!530780))

(assert (= (or b!6274316 bm!530780) bm!530779))

(declare-fun m!7095802 () Bool)

(assert (=> b!6274311 m!7095802))

(declare-fun m!7095804 () Bool)

(assert (=> bm!530779 m!7095804))

(declare-fun m!7095806 () Bool)

(assert (=> bm!530781 m!7095806))

(assert (=> bm!530614 d!1969282))

(declare-fun d!1969284 () Bool)

(declare-fun c!1137299 () Bool)

(assert (=> d!1969284 (= c!1137299 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815958 () Bool)

(assert (=> d!1969284 (= (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815958)))

(declare-fun b!6274319 () Bool)

(assert (=> b!6274319 (= e!3815958 (nullableZipper!1962 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274320 () Bool)

(assert (=> b!6274320 (= e!3815958 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969284 c!1137299) b!6274319))

(assert (= (and d!1969284 (not c!1137299)) b!6274320))

(assert (=> d!1969284 m!7094636))

(assert (=> d!1969284 m!7095606))

(assert (=> b!6274319 m!7094760))

(declare-fun m!7095808 () Bool)

(assert (=> b!6274319 m!7095808))

(assert (=> b!6274320 m!7094636))

(assert (=> b!6274320 m!7095610))

(assert (=> b!6274320 m!7094760))

(assert (=> b!6274320 m!7095610))

(declare-fun m!7095810 () Bool)

(assert (=> b!6274320 m!7095810))

(assert (=> b!6274320 m!7094636))

(assert (=> b!6274320 m!7095614))

(assert (=> b!6274320 m!7095810))

(assert (=> b!6274320 m!7095614))

(declare-fun m!7095812 () Bool)

(assert (=> b!6274320 m!7095812))

(assert (=> b!6273062 d!1969284))

(declare-fun bs!1567014 () Bool)

(declare-fun d!1969286 () Bool)

(assert (= bs!1567014 (and d!1969286 d!1969198)))

(declare-fun lambda!343819 () Int)

(assert (=> bs!1567014 (= lambda!343819 lambda!343810)))

(declare-fun bs!1567015 () Bool)

(assert (= bs!1567015 (and d!1969286 d!1968876)))

(assert (=> bs!1567015 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343819 lambda!343701))))

(declare-fun bs!1567016 () Bool)

(assert (= bs!1567016 (and d!1969286 d!1969236)))

(assert (=> bs!1567016 (= lambda!343819 lambda!343814)))

(declare-fun bs!1567017 () Bool)

(assert (= bs!1567017 (and d!1969286 d!1968862)))

(assert (=> bs!1567017 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343819 lambda!343700))))

(declare-fun bs!1567018 () Bool)

(assert (= bs!1567018 (and d!1969286 d!1969212)))

(assert (=> bs!1567018 (= lambda!343819 lambda!343812)))

(declare-fun bs!1567019 () Bool)

(assert (= bs!1567019 (and d!1969286 d!1969128)))

(assert (=> bs!1567019 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343819 lambda!343794))))

(declare-fun bs!1567020 () Bool)

(assert (= bs!1567020 (and d!1969286 d!1969248)))

(assert (=> bs!1567020 (= lambda!343819 lambda!343816)))

(declare-fun bs!1567021 () Bool)

(assert (= bs!1567021 (and d!1969286 b!6272771)))

(assert (=> bs!1567021 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343819 lambda!343676))))

(assert (=> d!1969286 true))

(assert (=> d!1969286 (= (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) (head!12884 (t!378434 s!2326))) (flatMap!1697 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) lambda!343819))))

(declare-fun bs!1567022 () Bool)

(assert (= bs!1567022 d!1969286))

(assert (=> bs!1567022 m!7094372))

(declare-fun m!7095814 () Bool)

(assert (=> bs!1567022 m!7095814))

(assert (=> b!6273062 d!1969286))

(assert (=> b!6273062 d!1969200))

(assert (=> b!6273062 d!1969202))

(declare-fun d!1969288 () Bool)

(declare-fun c!1137300 () Bool)

(assert (=> d!1969288 (= c!1137300 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun e!3815959 () Bool)

(assert (=> d!1969288 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352410 (head!12884 s!2326)) (tail!11969 s!2326)) e!3815959)))

(declare-fun b!6274321 () Bool)

(assert (=> b!6274321 (= e!3815959 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352410 (head!12884 s!2326))))))

(declare-fun b!6274322 () Bool)

(assert (=> b!6274322 (= e!3815959 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352410 (head!12884 s!2326)) (head!12884 (tail!11969 s!2326))) (tail!11969 (tail!11969 s!2326))))))

(assert (= (and d!1969288 c!1137300) b!6274321))

(assert (= (and d!1969288 (not c!1137300)) b!6274322))

(assert (=> d!1969288 m!7094774))

(assert (=> d!1969288 m!7094776))

(assert (=> b!6274321 m!7094962))

(declare-fun m!7095816 () Bool)

(assert (=> b!6274321 m!7095816))

(assert (=> b!6274322 m!7094774))

(assert (=> b!6274322 m!7095470))

(assert (=> b!6274322 m!7094962))

(assert (=> b!6274322 m!7095470))

(declare-fun m!7095818 () Bool)

(assert (=> b!6274322 m!7095818))

(assert (=> b!6274322 m!7094774))

(assert (=> b!6274322 m!7095474))

(assert (=> b!6274322 m!7095818))

(assert (=> b!6274322 m!7095474))

(declare-fun m!7095820 () Bool)

(assert (=> b!6274322 m!7095820))

(assert (=> b!6273315 d!1969288))

(declare-fun bs!1567023 () Bool)

(declare-fun d!1969290 () Bool)

(assert (= bs!1567023 (and d!1969290 d!1969286)))

(declare-fun lambda!343820 () Int)

(assert (=> bs!1567023 (= (= (head!12884 s!2326) (head!12884 (t!378434 s!2326))) (= lambda!343820 lambda!343819))))

(declare-fun bs!1567024 () Bool)

(assert (= bs!1567024 (and d!1969290 d!1969198)))

(assert (=> bs!1567024 (= (= (head!12884 s!2326) (head!12884 (t!378434 s!2326))) (= lambda!343820 lambda!343810))))

(declare-fun bs!1567025 () Bool)

(assert (= bs!1567025 (and d!1969290 d!1968876)))

(assert (=> bs!1567025 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343820 lambda!343701))))

(declare-fun bs!1567026 () Bool)

(assert (= bs!1567026 (and d!1969290 d!1969236)))

(assert (=> bs!1567026 (= (= (head!12884 s!2326) (head!12884 (t!378434 s!2326))) (= lambda!343820 lambda!343814))))

(declare-fun bs!1567027 () Bool)

(assert (= bs!1567027 (and d!1969290 d!1968862)))

(assert (=> bs!1567027 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343820 lambda!343700))))

(declare-fun bs!1567028 () Bool)

(assert (= bs!1567028 (and d!1969290 d!1969212)))

(assert (=> bs!1567028 (= (= (head!12884 s!2326) (head!12884 (t!378434 s!2326))) (= lambda!343820 lambda!343812))))

(declare-fun bs!1567029 () Bool)

(assert (= bs!1567029 (and d!1969290 d!1969128)))

(assert (=> bs!1567029 (= lambda!343820 lambda!343794)))

(declare-fun bs!1567030 () Bool)

(assert (= bs!1567030 (and d!1969290 d!1969248)))

(assert (=> bs!1567030 (= (= (head!12884 s!2326) (head!12884 (t!378434 s!2326))) (= lambda!343820 lambda!343816))))

(declare-fun bs!1567031 () Bool)

(assert (= bs!1567031 (and d!1969290 b!6272771)))

(assert (=> bs!1567031 (= (= (head!12884 s!2326) (h!71200 s!2326)) (= lambda!343820 lambda!343676))))

(assert (=> d!1969290 true))

(assert (=> d!1969290 (= (derivationStepZipper!2158 lt!2352410 (head!12884 s!2326)) (flatMap!1697 lt!2352410 lambda!343820))))

(declare-fun bs!1567032 () Bool)

(assert (= bs!1567032 d!1969290))

(declare-fun m!7095822 () Bool)

(assert (=> bs!1567032 m!7095822))

(assert (=> b!6273315 d!1969290))

(assert (=> b!6273315 d!1969130))

(assert (=> b!6273315 d!1969122))

(declare-fun d!1969292 () Bool)

(assert (=> d!1969292 (= (isEmpty!36789 (unfocusZipperList!1613 zl!343)) (is-Nil!64751 (unfocusZipperList!1613 zl!343)))))

(assert (=> b!6273354 d!1969292))

(declare-fun d!1969294 () Bool)

(assert (=> d!1969294 (= (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))) (nullableFct!2137 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun bs!1567033 () Bool)

(assert (= bs!1567033 d!1969294))

(declare-fun m!7095824 () Bool)

(assert (=> bs!1567033 m!7095824))

(assert (=> b!6273024 d!1969294))

(declare-fun d!1969296 () Bool)

(assert (=> d!1969296 (= (nullable!6185 r!7292) (nullableFct!2137 r!7292))))

(declare-fun bs!1567034 () Bool)

(assert (= bs!1567034 d!1969296))

(declare-fun m!7095826 () Bool)

(assert (=> bs!1567034 m!7095826))

(assert (=> b!6273134 d!1969296))

(declare-fun b!6274332 () Bool)

(declare-fun e!3815965 () List!64876)

(assert (=> b!6274332 (= e!3815965 (Cons!64752 (h!71200 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))) (++!14266 (t!378434 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))) (t!378434 s!2326))))))

(declare-fun b!6274334 () Bool)

(declare-fun e!3815964 () Bool)

(declare-fun lt!2352715 () List!64876)

(assert (=> b!6274334 (= e!3815964 (or (not (= (t!378434 s!2326) Nil!64752)) (= lt!2352715 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)))))))

(declare-fun b!6274333 () Bool)

(declare-fun res!2587924 () Bool)

(assert (=> b!6274333 (=> (not res!2587924) (not e!3815964))))

(declare-fun size!40311 (List!64876) Int)

(assert (=> b!6274333 (= res!2587924 (= (size!40311 lt!2352715) (+ (size!40311 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))) (size!40311 (t!378434 s!2326)))))))

(declare-fun b!6274331 () Bool)

(assert (=> b!6274331 (= e!3815965 (t!378434 s!2326))))

(declare-fun d!1969298 () Bool)

(assert (=> d!1969298 e!3815964))

(declare-fun res!2587925 () Bool)

(assert (=> d!1969298 (=> (not res!2587925) (not e!3815964))))

(declare-fun content!12167 (List!64876) (Set C!32654))

(assert (=> d!1969298 (= res!2587925 (= (content!12167 lt!2352715) (set.union (content!12167 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))) (content!12167 (t!378434 s!2326)))))))

(assert (=> d!1969298 (= lt!2352715 e!3815965)))

(declare-fun c!1137303 () Bool)

(assert (=> d!1969298 (= c!1137303 (is-Nil!64752 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))))))

(assert (=> d!1969298 (= (++!14266 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326)) lt!2352715)))

(assert (= (and d!1969298 c!1137303) b!6274331))

(assert (= (and d!1969298 (not c!1137303)) b!6274332))

(assert (= (and d!1969298 res!2587925) b!6274333))

(assert (= (and b!6274333 res!2587924) b!6274334))

(declare-fun m!7095828 () Bool)

(assert (=> b!6274332 m!7095828))

(declare-fun m!7095830 () Bool)

(assert (=> b!6274333 m!7095830))

(assert (=> b!6274333 m!7094804))

(declare-fun m!7095832 () Bool)

(assert (=> b!6274333 m!7095832))

(declare-fun m!7095834 () Bool)

(assert (=> b!6274333 m!7095834))

(declare-fun m!7095836 () Bool)

(assert (=> d!1969298 m!7095836))

(assert (=> d!1969298 m!7094804))

(declare-fun m!7095838 () Bool)

(assert (=> d!1969298 m!7095838))

(declare-fun m!7095840 () Bool)

(assert (=> d!1969298 m!7095840))

(assert (=> b!6273168 d!1969298))

(declare-fun b!6274336 () Bool)

(declare-fun e!3815967 () List!64876)

(assert (=> b!6274336 (= e!3815967 (Cons!64752 (h!71200 Nil!64752) (++!14266 (t!378434 Nil!64752) (Cons!64752 (h!71200 s!2326) Nil!64752))))))

(declare-fun b!6274338 () Bool)

(declare-fun e!3815966 () Bool)

(declare-fun lt!2352716 () List!64876)

(assert (=> b!6274338 (= e!3815966 (or (not (= (Cons!64752 (h!71200 s!2326) Nil!64752) Nil!64752)) (= lt!2352716 Nil!64752)))))

(declare-fun b!6274337 () Bool)

(declare-fun res!2587926 () Bool)

(assert (=> b!6274337 (=> (not res!2587926) (not e!3815966))))

(assert (=> b!6274337 (= res!2587926 (= (size!40311 lt!2352716) (+ (size!40311 Nil!64752) (size!40311 (Cons!64752 (h!71200 s!2326) Nil!64752)))))))

(declare-fun b!6274335 () Bool)

(assert (=> b!6274335 (= e!3815967 (Cons!64752 (h!71200 s!2326) Nil!64752))))

(declare-fun d!1969300 () Bool)

(assert (=> d!1969300 e!3815966))

(declare-fun res!2587927 () Bool)

(assert (=> d!1969300 (=> (not res!2587927) (not e!3815966))))

(assert (=> d!1969300 (= res!2587927 (= (content!12167 lt!2352716) (set.union (content!12167 Nil!64752) (content!12167 (Cons!64752 (h!71200 s!2326) Nil!64752)))))))

(assert (=> d!1969300 (= lt!2352716 e!3815967)))

(declare-fun c!1137304 () Bool)

(assert (=> d!1969300 (= c!1137304 (is-Nil!64752 Nil!64752))))

(assert (=> d!1969300 (= (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) lt!2352716)))

(assert (= (and d!1969300 c!1137304) b!6274335))

(assert (= (and d!1969300 (not c!1137304)) b!6274336))

(assert (= (and d!1969300 res!2587927) b!6274337))

(assert (= (and b!6274337 res!2587926) b!6274338))

(declare-fun m!7095842 () Bool)

(assert (=> b!6274336 m!7095842))

(declare-fun m!7095844 () Bool)

(assert (=> b!6274337 m!7095844))

(declare-fun m!7095846 () Bool)

(assert (=> b!6274337 m!7095846))

(declare-fun m!7095848 () Bool)

(assert (=> b!6274337 m!7095848))

(declare-fun m!7095850 () Bool)

(assert (=> d!1969300 m!7095850))

(declare-fun m!7095852 () Bool)

(assert (=> d!1969300 m!7095852))

(declare-fun m!7095854 () Bool)

(assert (=> d!1969300 m!7095854))

(assert (=> b!6273168 d!1969300))

(declare-fun d!1969302 () Bool)

(assert (=> d!1969302 (= (++!14266 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326)) s!2326)))

(declare-fun lt!2352719 () Unit!158099)

(declare-fun choose!46561 (List!64876 C!32654 List!64876 List!64876) Unit!158099)

(assert (=> d!1969302 (= lt!2352719 (choose!46561 Nil!64752 (h!71200 s!2326) (t!378434 s!2326) s!2326))))

(assert (=> d!1969302 (= (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) (t!378434 s!2326))) s!2326)))

(assert (=> d!1969302 (= (lemmaMoveElementToOtherListKeepsConcatEq!2361 Nil!64752 (h!71200 s!2326) (t!378434 s!2326) s!2326) lt!2352719)))

(declare-fun bs!1567035 () Bool)

(assert (= bs!1567035 d!1969302))

(assert (=> bs!1567035 m!7094804))

(assert (=> bs!1567035 m!7094804))

(assert (=> bs!1567035 m!7094806))

(declare-fun m!7095856 () Bool)

(assert (=> bs!1567035 m!7095856))

(declare-fun m!7095858 () Bool)

(assert (=> bs!1567035 m!7095858))

(assert (=> b!6273168 d!1969302))

(declare-fun b!6274339 () Bool)

(declare-fun e!3815972 () Bool)

(assert (=> b!6274339 (= e!3815972 (matchR!8375 (regTwo!32896 r!7292) (t!378434 s!2326)))))

(declare-fun b!6274340 () Bool)

(declare-fun e!3815970 () Option!16083)

(assert (=> b!6274340 (= e!3815970 (Some!16082 (tuple2!66343 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326))))))

(declare-fun b!6274341 () Bool)

(declare-fun lt!2352720 () Unit!158099)

(declare-fun lt!2352721 () Unit!158099)

(assert (=> b!6274341 (= lt!2352720 lt!2352721)))

(assert (=> b!6274341 (= (++!14266 (++!14266 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (Cons!64752 (h!71200 (t!378434 s!2326)) Nil!64752)) (t!378434 (t!378434 s!2326))) s!2326)))

(assert (=> b!6274341 (= lt!2352721 (lemmaMoveElementToOtherListKeepsConcatEq!2361 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (h!71200 (t!378434 s!2326)) (t!378434 (t!378434 s!2326)) s!2326))))

(declare-fun e!3815968 () Option!16083)

(assert (=> b!6274341 (= e!3815968 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) (++!14266 (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (Cons!64752 (h!71200 (t!378434 s!2326)) Nil!64752)) (t!378434 (t!378434 s!2326)) s!2326))))

(declare-fun b!6274342 () Bool)

(declare-fun res!2587931 () Bool)

(declare-fun e!3815971 () Bool)

(assert (=> b!6274342 (=> (not res!2587931) (not e!3815971))))

(declare-fun lt!2352722 () Option!16083)

(assert (=> b!6274342 (= res!2587931 (matchR!8375 (regOne!32896 r!7292) (_1!36474 (get!22378 lt!2352722))))))

(declare-fun b!6274343 () Bool)

(assert (=> b!6274343 (= e!3815968 None!16082)))

(declare-fun b!6274344 () Bool)

(declare-fun res!2587932 () Bool)

(assert (=> b!6274344 (=> (not res!2587932) (not e!3815971))))

(assert (=> b!6274344 (= res!2587932 (matchR!8375 (regTwo!32896 r!7292) (_2!36474 (get!22378 lt!2352722))))))

(declare-fun b!6274346 () Bool)

(declare-fun e!3815969 () Bool)

(assert (=> b!6274346 (= e!3815969 (not (isDefined!12786 lt!2352722)))))

(declare-fun b!6274347 () Bool)

(assert (=> b!6274347 (= e!3815971 (= (++!14266 (_1!36474 (get!22378 lt!2352722)) (_2!36474 (get!22378 lt!2352722))) s!2326))))

(declare-fun d!1969304 () Bool)

(assert (=> d!1969304 e!3815969))

(declare-fun res!2587928 () Bool)

(assert (=> d!1969304 (=> res!2587928 e!3815969)))

(assert (=> d!1969304 (= res!2587928 e!3815971)))

(declare-fun res!2587930 () Bool)

(assert (=> d!1969304 (=> (not res!2587930) (not e!3815971))))

(assert (=> d!1969304 (= res!2587930 (isDefined!12786 lt!2352722))))

(assert (=> d!1969304 (= lt!2352722 e!3815970)))

(declare-fun c!1137305 () Bool)

(assert (=> d!1969304 (= c!1137305 e!3815972)))

(declare-fun res!2587929 () Bool)

(assert (=> d!1969304 (=> (not res!2587929) (not e!3815972))))

(assert (=> d!1969304 (= res!2587929 (matchR!8375 (regOne!32896 r!7292) (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752))))))

(assert (=> d!1969304 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1969304 (= (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) (++!14266 Nil!64752 (Cons!64752 (h!71200 s!2326) Nil!64752)) (t!378434 s!2326) s!2326) lt!2352722)))

(declare-fun b!6274345 () Bool)

(assert (=> b!6274345 (= e!3815970 e!3815968)))

(declare-fun c!1137306 () Bool)

(assert (=> b!6274345 (= c!1137306 (is-Nil!64752 (t!378434 s!2326)))))

(assert (= (and d!1969304 res!2587929) b!6274339))

(assert (= (and d!1969304 c!1137305) b!6274340))

(assert (= (and d!1969304 (not c!1137305)) b!6274345))

(assert (= (and b!6274345 c!1137306) b!6274343))

(assert (= (and b!6274345 (not c!1137306)) b!6274341))

(assert (= (and d!1969304 res!2587930) b!6274342))

(assert (= (and b!6274342 res!2587931) b!6274344))

(assert (= (and b!6274344 res!2587932) b!6274347))

(assert (= (and d!1969304 (not res!2587928)) b!6274346))

(declare-fun m!7095860 () Bool)

(assert (=> b!6274344 m!7095860))

(declare-fun m!7095862 () Bool)

(assert (=> b!6274344 m!7095862))

(assert (=> b!6274342 m!7095860))

(declare-fun m!7095864 () Bool)

(assert (=> b!6274342 m!7095864))

(declare-fun m!7095866 () Bool)

(assert (=> b!6274339 m!7095866))

(assert (=> b!6274347 m!7095860))

(declare-fun m!7095868 () Bool)

(assert (=> b!6274347 m!7095868))

(declare-fun m!7095870 () Bool)

(assert (=> d!1969304 m!7095870))

(assert (=> d!1969304 m!7094804))

(declare-fun m!7095872 () Bool)

(assert (=> d!1969304 m!7095872))

(assert (=> d!1969304 m!7094802))

(assert (=> b!6274341 m!7094804))

(declare-fun m!7095874 () Bool)

(assert (=> b!6274341 m!7095874))

(assert (=> b!6274341 m!7095874))

(declare-fun m!7095876 () Bool)

(assert (=> b!6274341 m!7095876))

(assert (=> b!6274341 m!7094804))

(declare-fun m!7095878 () Bool)

(assert (=> b!6274341 m!7095878))

(assert (=> b!6274341 m!7095874))

(declare-fun m!7095880 () Bool)

(assert (=> b!6274341 m!7095880))

(assert (=> b!6274346 m!7095870))

(assert (=> b!6273168 d!1969304))

(assert (=> d!1968934 d!1969106))

(assert (=> d!1968934 d!1969140))

(declare-fun d!1969306 () Bool)

(assert (=> d!1969306 (= (nullable!6185 lt!2352400) (nullableFct!2137 lt!2352400))))

(declare-fun bs!1567036 () Bool)

(assert (= bs!1567036 d!1969306))

(declare-fun m!7095882 () Bool)

(assert (=> bs!1567036 m!7095882))

(assert (=> b!6273316 d!1969306))

(declare-fun d!1969308 () Bool)

(assert (=> d!1969308 (= (flatMap!1697 lt!2352410 lambda!343700) (choose!46545 lt!2352410 lambda!343700))))

(declare-fun bs!1567037 () Bool)

(assert (= bs!1567037 d!1969308))

(declare-fun m!7095884 () Bool)

(assert (=> bs!1567037 m!7095884))

(assert (=> d!1968862 d!1969308))

(declare-fun b!6274348 () Bool)

(declare-fun e!3815976 () (Set Context!11152))

(declare-fun e!3815974 () (Set Context!11152))

(assert (=> b!6274348 (= e!3815976 e!3815974)))

(declare-fun c!1137308 () Bool)

(assert (=> b!6274348 (= c!1137308 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun bm!530782 () Bool)

(declare-fun call!530791 () (Set Context!11152))

(declare-fun call!530787 () (Set Context!11152))

(assert (=> bm!530782 (= call!530791 call!530787)))

(declare-fun b!6274349 () Bool)

(declare-fun e!3815975 () Bool)

(assert (=> b!6274349 (= e!3815975 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 lt!2352413)))))))

(declare-fun b!6274350 () Bool)

(declare-fun c!1137311 () Bool)

(assert (=> b!6274350 (= c!1137311 (is-Star!16192 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun e!3815978 () (Set Context!11152))

(assert (=> b!6274350 (= e!3815974 e!3815978)))

(declare-fun b!6274351 () Bool)

(assert (=> b!6274351 (= e!3815978 (as set.empty (Set Context!11152)))))

(declare-fun d!1969310 () Bool)

(declare-fun c!1137307 () Bool)

(assert (=> d!1969310 (= c!1137307 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 lt!2352413))) (= (c!1136845 (h!71199 (exprs!6076 lt!2352413))) (h!71200 s!2326))))))

(declare-fun e!3815973 () (Set Context!11152))

(assert (=> d!1969310 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 lt!2352413)) (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (h!71200 s!2326)) e!3815973)))

(declare-fun call!530788 () List!64875)

(declare-fun call!530789 () (Set Context!11152))

(declare-fun c!1137310 () Bool)

(declare-fun bm!530783 () Bool)

(assert (=> bm!530783 (= call!530789 (derivationStepZipperDown!1440 (ite c!1137310 (regTwo!32897 (h!71199 (exprs!6076 lt!2352413))) (regOne!32896 (h!71199 (exprs!6076 lt!2352413)))) (ite c!1137310 (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (Context!11153 call!530788)) (h!71200 s!2326)))))

(declare-fun b!6274352 () Bool)

(declare-fun c!1137309 () Bool)

(assert (=> b!6274352 (= c!1137309 e!3815975)))

(declare-fun res!2587933 () Bool)

(assert (=> b!6274352 (=> (not res!2587933) (not e!3815975))))

(assert (=> b!6274352 (= res!2587933 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun e!3815977 () (Set Context!11152))

(assert (=> b!6274352 (= e!3815977 e!3815976)))

(declare-fun b!6274353 () Bool)

(declare-fun call!530792 () (Set Context!11152))

(assert (=> b!6274353 (= e!3815977 (set.union call!530792 call!530789))))

(declare-fun b!6274354 () Bool)

(assert (=> b!6274354 (= e!3815973 e!3815977)))

(assert (=> b!6274354 (= c!1137310 (is-Union!16192 (h!71199 (exprs!6076 lt!2352413))))))

(declare-fun bm!530784 () Bool)

(assert (=> bm!530784 (= call!530787 call!530792)))

(declare-fun bm!530785 () Bool)

(declare-fun call!530790 () List!64875)

(assert (=> bm!530785 (= call!530792 (derivationStepZipperDown!1440 (ite c!1137310 (regOne!32897 (h!71199 (exprs!6076 lt!2352413))) (ite c!1137309 (regTwo!32896 (h!71199 (exprs!6076 lt!2352413))) (ite c!1137308 (regOne!32896 (h!71199 (exprs!6076 lt!2352413))) (reg!16521 (h!71199 (exprs!6076 lt!2352413)))))) (ite (or c!1137310 c!1137309) (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (Context!11153 call!530790)) (h!71200 s!2326)))))

(declare-fun b!6274355 () Bool)

(assert (=> b!6274355 (= e!3815978 call!530791)))

(declare-fun bm!530786 () Bool)

(assert (=> bm!530786 (= call!530788 ($colon$colon!2057 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413)))) (ite (or c!1137309 c!1137308) (regTwo!32896 (h!71199 (exprs!6076 lt!2352413))) (h!71199 (exprs!6076 lt!2352413)))))))

(declare-fun bm!530787 () Bool)

(assert (=> bm!530787 (= call!530790 call!530788)))

(declare-fun b!6274356 () Bool)

(assert (=> b!6274356 (= e!3815973 (set.insert (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (as set.empty (Set Context!11152))))))

(declare-fun b!6274357 () Bool)

(assert (=> b!6274357 (= e!3815976 (set.union call!530789 call!530787))))

(declare-fun b!6274358 () Bool)

(assert (=> b!6274358 (= e!3815974 call!530791)))

(assert (= (and d!1969310 c!1137307) b!6274356))

(assert (= (and d!1969310 (not c!1137307)) b!6274354))

(assert (= (and b!6274354 c!1137310) b!6274353))

(assert (= (and b!6274354 (not c!1137310)) b!6274352))

(assert (= (and b!6274352 res!2587933) b!6274349))

(assert (= (and b!6274352 c!1137309) b!6274357))

(assert (= (and b!6274352 (not c!1137309)) b!6274348))

(assert (= (and b!6274348 c!1137308) b!6274358))

(assert (= (and b!6274348 (not c!1137308)) b!6274350))

(assert (= (and b!6274350 c!1137311) b!6274355))

(assert (= (and b!6274350 (not c!1137311)) b!6274351))

(assert (= (or b!6274358 b!6274355) bm!530787))

(assert (= (or b!6274358 b!6274355) bm!530782))

(assert (= (or b!6274357 bm!530787) bm!530786))

(assert (= (or b!6274357 bm!530782) bm!530784))

(assert (= (or b!6274353 b!6274357) bm!530783))

(assert (= (or b!6274353 bm!530784) bm!530785))

(declare-fun m!7095886 () Bool)

(assert (=> bm!530785 m!7095886))

(declare-fun m!7095888 () Bool)

(assert (=> bm!530783 m!7095888))

(declare-fun m!7095890 () Bool)

(assert (=> b!6274349 m!7095890))

(declare-fun m!7095892 () Bool)

(assert (=> b!6274356 m!7095892))

(declare-fun m!7095894 () Bool)

(assert (=> bm!530786 m!7095894))

(assert (=> bm!530558 d!1969310))

(declare-fun d!1969312 () Bool)

(assert (=> d!1969312 (= (isEmpty!36789 (t!378433 lt!2352407)) (is-Nil!64751 (t!378433 lt!2352407)))))

(assert (=> b!6273287 d!1969312))

(declare-fun d!1969314 () Bool)

(assert (=> d!1969314 (= ($colon$colon!2057 (exprs!6076 lt!2352413) (ite (or c!1136942 c!1136941) (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 r!7292)))) (Cons!64751 (ite (or c!1136942 c!1136941) (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 r!7292))) (exprs!6076 lt!2352413)))))

(assert (=> bm!530594 d!1969314))

(declare-fun bm!530788 () Bool)

(declare-fun call!530793 () (Set Context!11152))

(assert (=> bm!530788 (= call!530793 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))) (h!71200 s!2326)))))

(declare-fun b!6274359 () Bool)

(declare-fun e!3815980 () Bool)

(assert (=> b!6274359 (= e!3815980 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))))))

(declare-fun d!1969316 () Bool)

(declare-fun c!1137312 () Bool)

(assert (=> d!1969316 (= c!1137312 e!3815980)))

(declare-fun res!2587934 () Bool)

(assert (=> d!1969316 (=> (not res!2587934) (not e!3815980))))

(assert (=> d!1969316 (= res!2587934 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))))

(declare-fun e!3815979 () (Set Context!11152))

(assert (=> d!1969316 (= (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (h!71200 s!2326)) e!3815979)))

(declare-fun b!6274360 () Bool)

(assert (=> b!6274360 (= e!3815979 (set.union call!530793 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343))))))))))) (h!71200 s!2326))))))

(declare-fun b!6274361 () Bool)

(declare-fun e!3815981 () (Set Context!11152))

(assert (=> b!6274361 (= e!3815981 call!530793)))

(declare-fun b!6274362 () Bool)

(assert (=> b!6274362 (= e!3815979 e!3815981)))

(declare-fun c!1137313 () Bool)

(assert (=> b!6274362 (= c!1137313 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))))

(declare-fun b!6274363 () Bool)

(assert (=> b!6274363 (= e!3815981 (as set.empty (Set Context!11152)))))

(assert (= (and d!1969316 res!2587934) b!6274359))

(assert (= (and d!1969316 c!1137312) b!6274360))

(assert (= (and d!1969316 (not c!1137312)) b!6274362))

(assert (= (and b!6274362 c!1137313) b!6274361))

(assert (= (and b!6274362 (not c!1137313)) b!6274363))

(assert (= (or b!6274360 b!6274361) bm!530788))

(declare-fun m!7095896 () Bool)

(assert (=> bm!530788 m!7095896))

(declare-fun m!7095898 () Bool)

(assert (=> b!6274359 m!7095898))

(declare-fun m!7095900 () Bool)

(assert (=> b!6274360 m!7095900))

(assert (=> b!6273035 d!1969316))

(declare-fun d!1969318 () Bool)

(declare-fun c!1137314 () Bool)

(assert (=> d!1969318 (= c!1137314 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3815982 () Bool)

(assert (=> d!1969318 (= (matchZipper!2204 (set.union lt!2352401 lt!2352393) (t!378434 s!2326)) e!3815982)))

(declare-fun b!6274364 () Bool)

(assert (=> b!6274364 (= e!3815982 (nullableZipper!1962 (set.union lt!2352401 lt!2352393)))))

(declare-fun b!6274365 () Bool)

(assert (=> b!6274365 (= e!3815982 (matchZipper!2204 (derivationStepZipper!2158 (set.union lt!2352401 lt!2352393) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1969318 c!1137314) b!6274364))

(assert (= (and d!1969318 (not c!1137314)) b!6274365))

(assert (=> d!1969318 m!7094628))

(declare-fun m!7095902 () Bool)

(assert (=> b!6274364 m!7095902))

(assert (=> b!6274365 m!7094632))

(assert (=> b!6274365 m!7094632))

(declare-fun m!7095904 () Bool)

(assert (=> b!6274365 m!7095904))

(assert (=> b!6274365 m!7094636))

(assert (=> b!6274365 m!7095904))

(assert (=> b!6274365 m!7094636))

(declare-fun m!7095906 () Bool)

(assert (=> b!6274365 m!7095906))

(assert (=> d!1968872 d!1969318))

(assert (=> d!1968872 d!1968870))

(declare-fun e!3815985 () Bool)

(declare-fun d!1969320 () Bool)

(assert (=> d!1969320 (= (matchZipper!2204 (set.union lt!2352401 lt!2352393) (t!378434 s!2326)) e!3815985)))

(declare-fun res!2587937 () Bool)

(assert (=> d!1969320 (=> res!2587937 e!3815985)))

(assert (=> d!1969320 (= res!2587937 (matchZipper!2204 lt!2352401 (t!378434 s!2326)))))

(assert (=> d!1969320 true))

(declare-fun _$48!2027 () Unit!158099)

(assert (=> d!1969320 (= (choose!46544 lt!2352401 lt!2352393 (t!378434 s!2326)) _$48!2027)))

(declare-fun b!6274368 () Bool)

(assert (=> b!6274368 (= e!3815985 (matchZipper!2204 lt!2352393 (t!378434 s!2326)))))

(assert (= (and d!1969320 (not res!2587937)) b!6274368))

(assert (=> d!1969320 m!7094754))

(assert (=> d!1969320 m!7094362))

(assert (=> b!6274368 m!7094394))

(assert (=> d!1968872 d!1969320))

(declare-fun d!1969322 () Bool)

(assert (=> d!1969322 (= (isEmptyExpr!1598 lt!2352602) (is-EmptyExpr!16192 lt!2352602))))

(assert (=> b!6273274 d!1969322))

(declare-fun bs!1567038 () Bool)

(declare-fun d!1969324 () Bool)

(assert (= bs!1567038 (and d!1969324 d!1969134)))

(declare-fun lambda!343821 () Int)

(assert (=> bs!1567038 (= lambda!343821 lambda!343795)))

(declare-fun bs!1567039 () Bool)

(assert (= bs!1567039 (and d!1969324 d!1969252)))

(assert (=> bs!1567039 (= lambda!343821 lambda!343817)))

(declare-fun bs!1567040 () Bool)

(assert (= bs!1567040 (and d!1969324 d!1969242)))

(assert (=> bs!1567040 (= lambda!343821 lambda!343815)))

(declare-fun bs!1567041 () Bool)

(assert (= bs!1567041 (and d!1969324 b!6273219)))

(assert (=> bs!1567041 (not (= lambda!343821 lambda!343725))))

(declare-fun bs!1567042 () Bool)

(assert (= bs!1567042 (and d!1969324 d!1969114)))

(assert (=> bs!1567042 (= lambda!343821 lambda!343790)))

(declare-fun bs!1567043 () Bool)

(assert (= bs!1567043 (and d!1969324 b!6273222)))

(assert (=> bs!1567043 (not (= lambda!343821 lambda!343727))))

(declare-fun bs!1567044 () Bool)

(assert (= bs!1567044 (and d!1969324 b!6273217)))

(assert (=> bs!1567044 (not (= lambda!343821 lambda!343724))))

(declare-fun bs!1567045 () Bool)

(assert (= bs!1567045 (and d!1969324 b!6273224)))

(assert (=> bs!1567045 (not (= lambda!343821 lambda!343728))))

(declare-fun bs!1567046 () Bool)

(assert (= bs!1567046 (and d!1969324 d!1969272)))

(assert (=> bs!1567046 (= lambda!343821 lambda!343818)))

(assert (=> d!1969324 (= (nullableZipper!1962 lt!2352412) (exists!2524 lt!2352412 lambda!343821))))

(declare-fun bs!1567047 () Bool)

(assert (= bs!1567047 d!1969324))

(declare-fun m!7095908 () Bool)

(assert (=> bs!1567047 m!7095908))

(assert (=> b!6273056 d!1969324))

(declare-fun d!1969326 () Bool)

(assert (=> d!1969326 (= (isEmpty!36789 (tail!11970 (unfocusZipperList!1613 zl!343))) (is-Nil!64751 (tail!11970 (unfocusZipperList!1613 zl!343))))))

(assert (=> b!6273357 d!1969326))

(declare-fun d!1969328 () Bool)

(assert (=> d!1969328 (= (tail!11970 (unfocusZipperList!1613 zl!343)) (t!378433 (unfocusZipperList!1613 zl!343)))))

(assert (=> b!6273357 d!1969328))

(declare-fun d!1969330 () Bool)

(declare-fun c!1137315 () Bool)

(assert (=> d!1969330 (= c!1137315 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3815986 () Bool)

(assert (=> d!1969330 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352395 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3815986)))

(declare-fun b!6274369 () Bool)

(assert (=> b!6274369 (= e!3815986 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352395 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274370 () Bool)

(assert (=> b!6274370 (= e!3815986 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352395 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969330 c!1137315) b!6274369))

(assert (= (and d!1969330 (not c!1137315)) b!6274370))

(assert (=> d!1969330 m!7094636))

(assert (=> d!1969330 m!7095606))

(assert (=> b!6274369 m!7095022))

(declare-fun m!7095910 () Bool)

(assert (=> b!6274369 m!7095910))

(assert (=> b!6274370 m!7094636))

(assert (=> b!6274370 m!7095610))

(assert (=> b!6274370 m!7095022))

(assert (=> b!6274370 m!7095610))

(declare-fun m!7095912 () Bool)

(assert (=> b!6274370 m!7095912))

(assert (=> b!6274370 m!7094636))

(assert (=> b!6274370 m!7095614))

(assert (=> b!6274370 m!7095912))

(assert (=> b!6274370 m!7095614))

(declare-fun m!7095914 () Bool)

(assert (=> b!6274370 m!7095914))

(assert (=> b!6273373 d!1969330))

(declare-fun bs!1567048 () Bool)

(declare-fun d!1969332 () Bool)

(assert (= bs!1567048 (and d!1969332 d!1969286)))

(declare-fun lambda!343822 () Int)

(assert (=> bs!1567048 (= lambda!343822 lambda!343819)))

(declare-fun bs!1567049 () Bool)

(assert (= bs!1567049 (and d!1969332 d!1969198)))

(assert (=> bs!1567049 (= lambda!343822 lambda!343810)))

(declare-fun bs!1567050 () Bool)

(assert (= bs!1567050 (and d!1969332 d!1969236)))

(assert (=> bs!1567050 (= lambda!343822 lambda!343814)))

(declare-fun bs!1567051 () Bool)

(assert (= bs!1567051 (and d!1969332 d!1968862)))

(assert (=> bs!1567051 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343822 lambda!343700))))

(declare-fun bs!1567052 () Bool)

(assert (= bs!1567052 (and d!1969332 d!1969212)))

(assert (=> bs!1567052 (= lambda!343822 lambda!343812)))

(declare-fun bs!1567053 () Bool)

(assert (= bs!1567053 (and d!1969332 d!1969128)))

(assert (=> bs!1567053 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343822 lambda!343794))))

(declare-fun bs!1567054 () Bool)

(assert (= bs!1567054 (and d!1969332 d!1969248)))

(assert (=> bs!1567054 (= lambda!343822 lambda!343816)))

(declare-fun bs!1567055 () Bool)

(assert (= bs!1567055 (and d!1969332 b!6272771)))

(assert (=> bs!1567055 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343822 lambda!343676))))

(declare-fun bs!1567056 () Bool)

(assert (= bs!1567056 (and d!1969332 d!1968876)))

(assert (=> bs!1567056 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343822 lambda!343701))))

(declare-fun bs!1567057 () Bool)

(assert (= bs!1567057 (and d!1969332 d!1969290)))

(assert (=> bs!1567057 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343822 lambda!343820))))

(assert (=> d!1969332 true))

(assert (=> d!1969332 (= (derivationStepZipper!2158 lt!2352395 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352395 lambda!343822))))

(declare-fun bs!1567058 () Bool)

(assert (= bs!1567058 d!1969332))

(declare-fun m!7095916 () Bool)

(assert (=> bs!1567058 m!7095916))

(assert (=> b!6273373 d!1969332))

(assert (=> b!6273373 d!1969200))

(assert (=> b!6273373 d!1969202))

(declare-fun b!6274371 () Bool)

(declare-fun e!3815989 () Bool)

(assert (=> b!6274371 (= e!3815989 (nullable!6185 (regTwo!32896 r!7292)))))

(declare-fun bm!530789 () Bool)

(declare-fun call!530794 () Bool)

(assert (=> bm!530789 (= call!530794 (isEmpty!36792 (_2!36474 (get!22378 lt!2352569))))))

(declare-fun b!6274372 () Bool)

(declare-fun e!3815990 () Bool)

(declare-fun e!3815992 () Bool)

(assert (=> b!6274372 (= e!3815990 e!3815992)))

(declare-fun res!2587940 () Bool)

(assert (=> b!6274372 (=> res!2587940 e!3815992)))

(assert (=> b!6274372 (= res!2587940 call!530794)))

(declare-fun d!1969334 () Bool)

(declare-fun e!3815987 () Bool)

(assert (=> d!1969334 e!3815987))

(declare-fun c!1137318 () Bool)

(assert (=> d!1969334 (= c!1137318 (is-EmptyExpr!16192 (regTwo!32896 r!7292)))))

(declare-fun lt!2352723 () Bool)

(assert (=> d!1969334 (= lt!2352723 e!3815989)))

(declare-fun c!1137316 () Bool)

(assert (=> d!1969334 (= c!1137316 (isEmpty!36792 (_2!36474 (get!22378 lt!2352569))))))

(assert (=> d!1969334 (validRegex!7928 (regTwo!32896 r!7292))))

(assert (=> d!1969334 (= (matchR!8375 (regTwo!32896 r!7292) (_2!36474 (get!22378 lt!2352569))) lt!2352723)))

(declare-fun b!6274373 () Bool)

(declare-fun e!3815991 () Bool)

(assert (=> b!6274373 (= e!3815991 (not lt!2352723))))

(declare-fun b!6274374 () Bool)

(assert (=> b!6274374 (= e!3815989 (matchR!8375 (derivativeStep!4901 (regTwo!32896 r!7292) (head!12884 (_2!36474 (get!22378 lt!2352569)))) (tail!11969 (_2!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274375 () Bool)

(declare-fun res!2587943 () Bool)

(assert (=> b!6274375 (=> res!2587943 e!3815992)))

(assert (=> b!6274375 (= res!2587943 (not (isEmpty!36792 (tail!11969 (_2!36474 (get!22378 lt!2352569))))))))

(declare-fun b!6274376 () Bool)

(assert (=> b!6274376 (= e!3815992 (not (= (head!12884 (_2!36474 (get!22378 lt!2352569))) (c!1136845 (regTwo!32896 r!7292)))))))

(declare-fun b!6274377 () Bool)

(declare-fun e!3815993 () Bool)

(assert (=> b!6274377 (= e!3815993 e!3815990)))

(declare-fun res!2587939 () Bool)

(assert (=> b!6274377 (=> (not res!2587939) (not e!3815990))))

(assert (=> b!6274377 (= res!2587939 (not lt!2352723))))

(declare-fun b!6274378 () Bool)

(declare-fun e!3815988 () Bool)

(assert (=> b!6274378 (= e!3815988 (= (head!12884 (_2!36474 (get!22378 lt!2352569))) (c!1136845 (regTwo!32896 r!7292))))))

(declare-fun b!6274379 () Bool)

(declare-fun res!2587944 () Bool)

(assert (=> b!6274379 (=> (not res!2587944) (not e!3815988))))

(assert (=> b!6274379 (= res!2587944 (not call!530794))))

(declare-fun b!6274380 () Bool)

(declare-fun res!2587945 () Bool)

(assert (=> b!6274380 (=> (not res!2587945) (not e!3815988))))

(assert (=> b!6274380 (= res!2587945 (isEmpty!36792 (tail!11969 (_2!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274381 () Bool)

(declare-fun res!2587941 () Bool)

(assert (=> b!6274381 (=> res!2587941 e!3815993)))

(assert (=> b!6274381 (= res!2587941 e!3815988)))

(declare-fun res!2587942 () Bool)

(assert (=> b!6274381 (=> (not res!2587942) (not e!3815988))))

(assert (=> b!6274381 (= res!2587942 lt!2352723)))

(declare-fun b!6274382 () Bool)

(assert (=> b!6274382 (= e!3815987 e!3815991)))

(declare-fun c!1137317 () Bool)

(assert (=> b!6274382 (= c!1137317 (is-EmptyLang!16192 (regTwo!32896 r!7292)))))

(declare-fun b!6274383 () Bool)

(declare-fun res!2587938 () Bool)

(assert (=> b!6274383 (=> res!2587938 e!3815993)))

(assert (=> b!6274383 (= res!2587938 (not (is-ElementMatch!16192 (regTwo!32896 r!7292))))))

(assert (=> b!6274383 (= e!3815991 e!3815993)))

(declare-fun b!6274384 () Bool)

(assert (=> b!6274384 (= e!3815987 (= lt!2352723 call!530794))))

(assert (= (and d!1969334 c!1137316) b!6274371))

(assert (= (and d!1969334 (not c!1137316)) b!6274374))

(assert (= (and d!1969334 c!1137318) b!6274384))

(assert (= (and d!1969334 (not c!1137318)) b!6274382))

(assert (= (and b!6274382 c!1137317) b!6274373))

(assert (= (and b!6274382 (not c!1137317)) b!6274383))

(assert (= (and b!6274383 (not res!2587938)) b!6274381))

(assert (= (and b!6274381 res!2587942) b!6274379))

(assert (= (and b!6274379 res!2587944) b!6274380))

(assert (= (and b!6274380 res!2587945) b!6274378))

(assert (= (and b!6274381 (not res!2587941)) b!6274377))

(assert (= (and b!6274377 res!2587939) b!6274372))

(assert (= (and b!6274372 (not res!2587940)) b!6274375))

(assert (= (and b!6274375 (not res!2587943)) b!6274376))

(assert (= (or b!6274384 b!6274372 b!6274379) bm!530789))

(declare-fun m!7095918 () Bool)

(assert (=> b!6274375 m!7095918))

(assert (=> b!6274375 m!7095918))

(declare-fun m!7095920 () Bool)

(assert (=> b!6274375 m!7095920))

(assert (=> b!6274380 m!7095918))

(assert (=> b!6274380 m!7095918))

(assert (=> b!6274380 m!7095920))

(declare-fun m!7095922 () Bool)

(assert (=> b!6274371 m!7095922))

(declare-fun m!7095924 () Bool)

(assert (=> d!1969334 m!7095924))

(declare-fun m!7095926 () Bool)

(assert (=> d!1969334 m!7095926))

(declare-fun m!7095928 () Bool)

(assert (=> b!6274374 m!7095928))

(assert (=> b!6274374 m!7095928))

(declare-fun m!7095930 () Bool)

(assert (=> b!6274374 m!7095930))

(assert (=> b!6274374 m!7095918))

(assert (=> b!6274374 m!7095930))

(assert (=> b!6274374 m!7095918))

(declare-fun m!7095932 () Bool)

(assert (=> b!6274374 m!7095932))

(assert (=> bm!530789 m!7095924))

(assert (=> b!6274378 m!7095928))

(assert (=> b!6274376 m!7095928))

(assert (=> b!6273171 d!1969334))

(assert (=> b!6273171 d!1969216))

(declare-fun bm!530790 () Bool)

(declare-fun call!530796 () Bool)

(declare-fun c!1137319 () Bool)

(assert (=> bm!530790 (= call!530796 (nullable!6185 (ite c!1137319 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun b!6274385 () Bool)

(declare-fun e!3815995 () Bool)

(declare-fun e!3815994 () Bool)

(assert (=> b!6274385 (= e!3815995 e!3815994)))

(assert (=> b!6274385 (= c!1137319 (is-Union!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun b!6274386 () Bool)

(declare-fun e!3815997 () Bool)

(assert (=> b!6274386 (= e!3815994 e!3815997)))

(declare-fun res!2587950 () Bool)

(declare-fun call!530795 () Bool)

(assert (=> b!6274386 (= res!2587950 call!530795)))

(assert (=> b!6274386 (=> res!2587950 e!3815997)))

(declare-fun b!6274387 () Bool)

(declare-fun e!3815999 () Bool)

(assert (=> b!6274387 (= e!3815994 e!3815999)))

(declare-fun res!2587946 () Bool)

(assert (=> b!6274387 (= res!2587946 call!530795)))

(assert (=> b!6274387 (=> (not res!2587946) (not e!3815999))))

(declare-fun b!6274388 () Bool)

(declare-fun e!3815996 () Bool)

(assert (=> b!6274388 (= e!3815996 e!3815995)))

(declare-fun res!2587948 () Bool)

(assert (=> b!6274388 (=> res!2587948 e!3815995)))

(assert (=> b!6274388 (= res!2587948 (is-Star!16192 (regOne!32896 (regOne!32896 r!7292))))))

(declare-fun d!1969336 () Bool)

(declare-fun res!2587949 () Bool)

(declare-fun e!3815998 () Bool)

(assert (=> d!1969336 (=> res!2587949 e!3815998)))

(assert (=> d!1969336 (= res!2587949 (is-EmptyExpr!16192 (regOne!32896 (regOne!32896 r!7292))))))

(assert (=> d!1969336 (= (nullableFct!2137 (regOne!32896 (regOne!32896 r!7292))) e!3815998)))

(declare-fun bm!530791 () Bool)

(assert (=> bm!530791 (= call!530795 (nullable!6185 (ite c!1137319 (regOne!32897 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun b!6274389 () Bool)

(assert (=> b!6274389 (= e!3815997 call!530796)))

(declare-fun b!6274390 () Bool)

(assert (=> b!6274390 (= e!3815999 call!530796)))

(declare-fun b!6274391 () Bool)

(assert (=> b!6274391 (= e!3815998 e!3815996)))

(declare-fun res!2587947 () Bool)

(assert (=> b!6274391 (=> (not res!2587947) (not e!3815996))))

(assert (=> b!6274391 (= res!2587947 (and (not (is-EmptyLang!16192 (regOne!32896 (regOne!32896 r!7292)))) (not (is-ElementMatch!16192 (regOne!32896 (regOne!32896 r!7292))))))))

(assert (= (and d!1969336 (not res!2587949)) b!6274391))

(assert (= (and b!6274391 res!2587947) b!6274388))

(assert (= (and b!6274388 (not res!2587948)) b!6274385))

(assert (= (and b!6274385 c!1137319) b!6274386))

(assert (= (and b!6274385 (not c!1137319)) b!6274387))

(assert (= (and b!6274386 (not res!2587950)) b!6274389))

(assert (= (and b!6274387 res!2587946) b!6274390))

(assert (= (or b!6274389 b!6274390) bm!530790))

(assert (= (or b!6274386 b!6274387) bm!530791))

(declare-fun m!7095934 () Bool)

(assert (=> bm!530790 m!7095934))

(declare-fun m!7095936 () Bool)

(assert (=> bm!530791 m!7095936))

(assert (=> d!1968916 d!1969336))

(assert (=> d!1968884 d!1969116))

(declare-fun b!6274392 () Bool)

(declare-fun e!3816002 () Bool)

(assert (=> b!6274392 (= e!3816002 (nullable!6185 (regOne!32896 r!7292)))))

(declare-fun bm!530792 () Bool)

(declare-fun call!530797 () Bool)

(assert (=> bm!530792 (= call!530797 (isEmpty!36792 Nil!64752))))

(declare-fun b!6274393 () Bool)

(declare-fun e!3816003 () Bool)

(declare-fun e!3816005 () Bool)

(assert (=> b!6274393 (= e!3816003 e!3816005)))

(declare-fun res!2587953 () Bool)

(assert (=> b!6274393 (=> res!2587953 e!3816005)))

(assert (=> b!6274393 (= res!2587953 call!530797)))

(declare-fun d!1969338 () Bool)

(declare-fun e!3816000 () Bool)

(assert (=> d!1969338 e!3816000))

(declare-fun c!1137322 () Bool)

(assert (=> d!1969338 (= c!1137322 (is-EmptyExpr!16192 (regOne!32896 r!7292)))))

(declare-fun lt!2352724 () Bool)

(assert (=> d!1969338 (= lt!2352724 e!3816002)))

(declare-fun c!1137320 () Bool)

(assert (=> d!1969338 (= c!1137320 (isEmpty!36792 Nil!64752))))

(assert (=> d!1969338 (validRegex!7928 (regOne!32896 r!7292))))

(assert (=> d!1969338 (= (matchR!8375 (regOne!32896 r!7292) Nil!64752) lt!2352724)))

(declare-fun b!6274394 () Bool)

(declare-fun e!3816004 () Bool)

(assert (=> b!6274394 (= e!3816004 (not lt!2352724))))

(declare-fun b!6274395 () Bool)

(assert (=> b!6274395 (= e!3816002 (matchR!8375 (derivativeStep!4901 (regOne!32896 r!7292) (head!12884 Nil!64752)) (tail!11969 Nil!64752)))))

(declare-fun b!6274396 () Bool)

(declare-fun res!2587956 () Bool)

(assert (=> b!6274396 (=> res!2587956 e!3816005)))

(assert (=> b!6274396 (= res!2587956 (not (isEmpty!36792 (tail!11969 Nil!64752))))))

(declare-fun b!6274397 () Bool)

(assert (=> b!6274397 (= e!3816005 (not (= (head!12884 Nil!64752) (c!1136845 (regOne!32896 r!7292)))))))

(declare-fun b!6274398 () Bool)

(declare-fun e!3816006 () Bool)

(assert (=> b!6274398 (= e!3816006 e!3816003)))

(declare-fun res!2587952 () Bool)

(assert (=> b!6274398 (=> (not res!2587952) (not e!3816003))))

(assert (=> b!6274398 (= res!2587952 (not lt!2352724))))

(declare-fun b!6274399 () Bool)

(declare-fun e!3816001 () Bool)

(assert (=> b!6274399 (= e!3816001 (= (head!12884 Nil!64752) (c!1136845 (regOne!32896 r!7292))))))

(declare-fun b!6274400 () Bool)

(declare-fun res!2587957 () Bool)

(assert (=> b!6274400 (=> (not res!2587957) (not e!3816001))))

(assert (=> b!6274400 (= res!2587957 (not call!530797))))

(declare-fun b!6274401 () Bool)

(declare-fun res!2587958 () Bool)

(assert (=> b!6274401 (=> (not res!2587958) (not e!3816001))))

(assert (=> b!6274401 (= res!2587958 (isEmpty!36792 (tail!11969 Nil!64752)))))

(declare-fun b!6274402 () Bool)

(declare-fun res!2587954 () Bool)

(assert (=> b!6274402 (=> res!2587954 e!3816006)))

(assert (=> b!6274402 (= res!2587954 e!3816001)))

(declare-fun res!2587955 () Bool)

(assert (=> b!6274402 (=> (not res!2587955) (not e!3816001))))

(assert (=> b!6274402 (= res!2587955 lt!2352724)))

(declare-fun b!6274403 () Bool)

(assert (=> b!6274403 (= e!3816000 e!3816004)))

(declare-fun c!1137321 () Bool)

(assert (=> b!6274403 (= c!1137321 (is-EmptyLang!16192 (regOne!32896 r!7292)))))

(declare-fun b!6274404 () Bool)

(declare-fun res!2587951 () Bool)

(assert (=> b!6274404 (=> res!2587951 e!3816006)))

(assert (=> b!6274404 (= res!2587951 (not (is-ElementMatch!16192 (regOne!32896 r!7292))))))

(assert (=> b!6274404 (= e!3816004 e!3816006)))

(declare-fun b!6274405 () Bool)

(assert (=> b!6274405 (= e!3816000 (= lt!2352724 call!530797))))

(assert (= (and d!1969338 c!1137320) b!6274392))

(assert (= (and d!1969338 (not c!1137320)) b!6274395))

(assert (= (and d!1969338 c!1137322) b!6274405))

(assert (= (and d!1969338 (not c!1137322)) b!6274403))

(assert (= (and b!6274403 c!1137321) b!6274394))

(assert (= (and b!6274403 (not c!1137321)) b!6274404))

(assert (= (and b!6274404 (not res!2587951)) b!6274402))

(assert (= (and b!6274402 res!2587955) b!6274400))

(assert (= (and b!6274400 res!2587957) b!6274401))

(assert (= (and b!6274401 res!2587958) b!6274399))

(assert (= (and b!6274402 (not res!2587954)) b!6274398))

(assert (= (and b!6274398 res!2587952) b!6274393))

(assert (= (and b!6274393 (not res!2587953)) b!6274396))

(assert (= (and b!6274396 (not res!2587956)) b!6274397))

(assert (= (or b!6274405 b!6274393 b!6274400) bm!530792))

(declare-fun m!7095938 () Bool)

(assert (=> b!6274396 m!7095938))

(assert (=> b!6274396 m!7095938))

(declare-fun m!7095940 () Bool)

(assert (=> b!6274396 m!7095940))

(assert (=> b!6274401 m!7095938))

(assert (=> b!6274401 m!7095938))

(assert (=> b!6274401 m!7095940))

(assert (=> b!6274392 m!7095644))

(declare-fun m!7095942 () Bool)

(assert (=> d!1969338 m!7095942))

(assert (=> d!1969338 m!7094802))

(declare-fun m!7095944 () Bool)

(assert (=> b!6274395 m!7095944))

(assert (=> b!6274395 m!7095944))

(declare-fun m!7095946 () Bool)

(assert (=> b!6274395 m!7095946))

(assert (=> b!6274395 m!7095938))

(assert (=> b!6274395 m!7095946))

(assert (=> b!6274395 m!7095938))

(declare-fun m!7095948 () Bool)

(assert (=> b!6274395 m!7095948))

(assert (=> bm!530792 m!7095942))

(assert (=> b!6274399 m!7095944))

(assert (=> b!6274397 m!7095944))

(assert (=> d!1968884 d!1969338))

(assert (=> d!1968884 d!1969182))

(assert (=> d!1968890 d!1968884))

(assert (=> d!1968890 d!1969182))

(assert (=> d!1968890 d!1968894))

(declare-fun d!1969340 () Bool)

(assert (=> d!1969340 (= (Exists!3262 lambda!343710) (choose!46548 lambda!343710))))

(declare-fun bs!1567059 () Bool)

(assert (= bs!1567059 d!1969340))

(declare-fun m!7095950 () Bool)

(assert (=> bs!1567059 m!7095950))

(assert (=> d!1968890 d!1969340))

(declare-fun bs!1567060 () Bool)

(declare-fun d!1969342 () Bool)

(assert (= bs!1567060 (and d!1969342 b!6273102)))

(declare-fun lambda!343825 () Int)

(assert (=> bs!1567060 (not (= lambda!343825 lambda!343707))))

(declare-fun bs!1567061 () Bool)

(assert (= bs!1567061 (and d!1969342 d!1968890)))

(assert (=> bs!1567061 (= lambda!343825 lambda!343710)))

(declare-fun bs!1567062 () Bool)

(assert (= bs!1567062 (and d!1969342 b!6274076)))

(assert (=> bs!1567062 (not (= lambda!343825 lambda!343799))))

(declare-fun bs!1567063 () Bool)

(assert (= bs!1567063 (and d!1969342 d!1969180)))

(assert (=> bs!1567063 (not (= lambda!343825 lambda!343806))))

(declare-fun bs!1567064 () Bool)

(assert (= bs!1567064 (and d!1969342 b!6273977)))

(assert (=> bs!1567064 (not (= lambda!343825 lambda!343798))))

(declare-fun bs!1567065 () Bool)

(assert (= bs!1567065 (and d!1969342 b!6273945)))

(assert (=> bs!1567065 (not (= lambda!343825 lambda!343793))))

(declare-fun bs!1567066 () Bool)

(assert (= bs!1567066 (and d!1969342 b!6273100)))

(assert (=> bs!1567066 (not (= lambda!343825 lambda!343706))))

(declare-fun bs!1567067 () Bool)

(assert (= bs!1567067 (and d!1969342 b!6273943)))

(assert (=> bs!1567067 (not (= lambda!343825 lambda!343792))))

(declare-fun bs!1567068 () Bool)

(assert (= bs!1567068 (and d!1969342 b!6273265)))

(assert (=> bs!1567068 (not (= lambda!343825 lambda!343730))))

(declare-fun bs!1567069 () Bool)

(assert (= bs!1567069 (and d!1969342 b!6274120)))

(assert (=> bs!1567069 (not (= lambda!343825 lambda!343809))))

(declare-fun bs!1567070 () Bool)

(assert (= bs!1567070 (and d!1969342 b!6272766)))

(assert (=> bs!1567070 (not (= lambda!343825 lambda!343675))))

(declare-fun bs!1567071 () Bool)

(assert (= bs!1567071 (and d!1969342 b!6274118)))

(assert (=> bs!1567071 (not (= lambda!343825 lambda!343808))))

(assert (=> bs!1567063 (= lambda!343825 lambda!343805)))

(declare-fun bs!1567072 () Bool)

(assert (= bs!1567072 (and d!1969342 b!6273975)))

(assert (=> bs!1567072 (not (= lambda!343825 lambda!343797))))

(declare-fun bs!1567073 () Bool)

(assert (= bs!1567073 (and d!1969342 b!6274078)))

(assert (=> bs!1567073 (not (= lambda!343825 lambda!343800))))

(declare-fun bs!1567074 () Bool)

(assert (= bs!1567074 (and d!1969342 d!1968892)))

(assert (=> bs!1567074 (not (= lambda!343825 lambda!343716))))

(declare-fun bs!1567075 () Bool)

(assert (= bs!1567075 (and d!1969342 b!6273267)))

(assert (=> bs!1567075 (not (= lambda!343825 lambda!343731))))

(assert (=> bs!1567074 (= lambda!343825 lambda!343715)))

(assert (=> bs!1567070 (= lambda!343825 lambda!343674)))

(assert (=> d!1969342 true))

(assert (=> d!1969342 true))

(assert (=> d!1969342 true))

(assert (=> d!1969342 (= (isDefined!12786 (findConcatSeparation!2497 (regOne!32896 r!7292) (regTwo!32896 r!7292) Nil!64752 s!2326 s!2326)) (Exists!3262 lambda!343825))))

(assert (=> d!1969342 true))

(declare-fun _$89!2470 () Unit!158099)

(assert (=> d!1969342 (= (choose!46549 (regOne!32896 r!7292) (regTwo!32896 r!7292) s!2326) _$89!2470)))

(declare-fun bs!1567076 () Bool)

(assert (= bs!1567076 d!1969342))

(assert (=> bs!1567076 m!7094442))

(assert (=> bs!1567076 m!7094442))

(assert (=> bs!1567076 m!7094444))

(declare-fun m!7095952 () Bool)

(assert (=> bs!1567076 m!7095952))

(assert (=> d!1968890 d!1969342))

(declare-fun d!1969344 () Bool)

(assert (=> d!1969344 (= (Exists!3262 (ite c!1136972 lambda!343730 lambda!343731)) (choose!46548 (ite c!1136972 lambda!343730 lambda!343731)))))

(declare-fun bs!1567077 () Bool)

(assert (= bs!1567077 d!1969344))

(declare-fun m!7095954 () Bool)

(assert (=> bs!1567077 m!7095954))

(assert (=> bm!530612 d!1969344))

(assert (=> b!6273296 d!1969130))

(declare-fun b!6274410 () Bool)

(declare-fun e!3816012 () (Set Context!11152))

(declare-fun e!3816010 () (Set Context!11152))

(assert (=> b!6274410 (= e!3816012 e!3816010)))

(declare-fun c!1137324 () Bool)

(assert (=> b!6274410 (= c!1137324 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bm!530793 () Bool)

(declare-fun call!530802 () (Set Context!11152))

(declare-fun call!530798 () (Set Context!11152))

(assert (=> bm!530793 (= call!530802 call!530798)))

(declare-fun b!6274411 () Bool)

(declare-fun e!3816011 () Bool)

(assert (=> b!6274411 (= e!3816011 (nullable!6185 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun b!6274412 () Bool)

(declare-fun c!1137327 () Bool)

(assert (=> b!6274412 (= c!1137327 (is-Star!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun e!3816014 () (Set Context!11152))

(assert (=> b!6274412 (= e!3816010 e!3816014)))

(declare-fun b!6274413 () Bool)

(assert (=> b!6274413 (= e!3816014 (as set.empty (Set Context!11152)))))

(declare-fun d!1969346 () Bool)

(declare-fun c!1137323 () Bool)

(assert (=> d!1969346 (= c!1137323 (and (is-ElementMatch!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))) (= (c!1136845 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326))))))

(declare-fun e!3816009 () (Set Context!11152))

(assert (=> d!1969346 (= (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (h!71201 zl!343))) (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (h!71200 s!2326)) e!3816009)))

(declare-fun c!1137326 () Bool)

(declare-fun bm!530794 () Bool)

(declare-fun call!530799 () List!64875)

(declare-fun call!530800 () (Set Context!11152))

(assert (=> bm!530794 (= call!530800 (derivationStepZipperDown!1440 (ite c!1137326 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))) (ite c!1137326 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (Context!11153 call!530799)) (h!71200 s!2326)))))

(declare-fun b!6274414 () Bool)

(declare-fun c!1137325 () Bool)

(assert (=> b!6274414 (= c!1137325 e!3816011)))

(declare-fun res!2587963 () Bool)

(assert (=> b!6274414 (=> (not res!2587963) (not e!3816011))))

(assert (=> b!6274414 (= res!2587963 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun e!3816013 () (Set Context!11152))

(assert (=> b!6274414 (= e!3816013 e!3816012)))

(declare-fun b!6274415 () Bool)

(declare-fun call!530803 () (Set Context!11152))

(assert (=> b!6274415 (= e!3816013 (set.union call!530803 call!530800))))

(declare-fun b!6274416 () Bool)

(assert (=> b!6274416 (= e!3816009 e!3816013)))

(assert (=> b!6274416 (= c!1137326 (is-Union!16192 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun bm!530795 () Bool)

(assert (=> bm!530795 (= call!530798 call!530803)))

(declare-fun bm!530796 () Bool)

(declare-fun call!530801 () List!64875)

(assert (=> bm!530796 (= call!530803 (derivationStepZipperDown!1440 (ite c!1137326 (regOne!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1137325 (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (ite c!1137324 (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (reg!16521 (h!71199 (exprs!6076 (h!71201 zl!343))))))) (ite (or c!1137326 c!1137325) (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (Context!11153 call!530801)) (h!71200 s!2326)))))

(declare-fun b!6274417 () Bool)

(assert (=> b!6274417 (= e!3816014 call!530802)))

(declare-fun bm!530797 () Bool)

(assert (=> bm!530797 (= call!530799 ($colon$colon!2057 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343))))) (ite (or c!1137325 c!1137324) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71199 (exprs!6076 (h!71201 zl!343))))))))

(declare-fun bm!530798 () Bool)

(assert (=> bm!530798 (= call!530801 call!530799)))

(declare-fun b!6274418 () Bool)

(assert (=> b!6274418 (= e!3816009 (set.insert (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))) (as set.empty (Set Context!11152))))))

(declare-fun b!6274419 () Bool)

(assert (=> b!6274419 (= e!3816012 (set.union call!530800 call!530798))))

(declare-fun b!6274420 () Bool)

(assert (=> b!6274420 (= e!3816010 call!530802)))

(assert (= (and d!1969346 c!1137323) b!6274418))

(assert (= (and d!1969346 (not c!1137323)) b!6274416))

(assert (= (and b!6274416 c!1137326) b!6274415))

(assert (= (and b!6274416 (not c!1137326)) b!6274414))

(assert (= (and b!6274414 res!2587963) b!6274411))

(assert (= (and b!6274414 c!1137325) b!6274419))

(assert (= (and b!6274414 (not c!1137325)) b!6274410))

(assert (= (and b!6274410 c!1137324) b!6274420))

(assert (= (and b!6274410 (not c!1137324)) b!6274412))

(assert (= (and b!6274412 c!1137327) b!6274417))

(assert (= (and b!6274412 (not c!1137327)) b!6274413))

(assert (= (or b!6274420 b!6274417) bm!530798))

(assert (= (or b!6274420 b!6274417) bm!530793))

(assert (= (or b!6274419 bm!530798) bm!530797))

(assert (= (or b!6274419 bm!530793) bm!530795))

(assert (= (or b!6274415 b!6274419) bm!530794))

(assert (= (or b!6274415 bm!530795) bm!530796))

(declare-fun m!7095956 () Bool)

(assert (=> bm!530796 m!7095956))

(declare-fun m!7095958 () Bool)

(assert (=> bm!530794 m!7095958))

(assert (=> b!6274411 m!7094698))

(declare-fun m!7095960 () Bool)

(assert (=> b!6274418 m!7095960))

(declare-fun m!7095962 () Bool)

(assert (=> bm!530797 m!7095962))

(assert (=> bm!530578 d!1969346))

(declare-fun d!1969348 () Bool)

(declare-fun c!1137328 () Bool)

(assert (=> d!1969348 (= c!1137328 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3816015 () Bool)

(assert (=> d!1969348 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352419 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3816015)))

(declare-fun b!6274421 () Bool)

(assert (=> b!6274421 (= e!3816015 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352419 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274422 () Bool)

(assert (=> b!6274422 (= e!3816015 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352419 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969348 c!1137328) b!6274421))

(assert (= (and d!1969348 (not c!1137328)) b!6274422))

(assert (=> d!1969348 m!7094636))

(assert (=> d!1969348 m!7095606))

(assert (=> b!6274421 m!7095006))

(declare-fun m!7095964 () Bool)

(assert (=> b!6274421 m!7095964))

(assert (=> b!6274422 m!7094636))

(assert (=> b!6274422 m!7095610))

(assert (=> b!6274422 m!7095006))

(assert (=> b!6274422 m!7095610))

(declare-fun m!7095966 () Bool)

(assert (=> b!6274422 m!7095966))

(assert (=> b!6274422 m!7094636))

(assert (=> b!6274422 m!7095614))

(assert (=> b!6274422 m!7095966))

(assert (=> b!6274422 m!7095614))

(declare-fun m!7095968 () Bool)

(assert (=> b!6274422 m!7095968))

(assert (=> b!6273369 d!1969348))

(declare-fun bs!1567078 () Bool)

(declare-fun d!1969350 () Bool)

(assert (= bs!1567078 (and d!1969350 d!1969286)))

(declare-fun lambda!343826 () Int)

(assert (=> bs!1567078 (= lambda!343826 lambda!343819)))

(declare-fun bs!1567079 () Bool)

(assert (= bs!1567079 (and d!1969350 d!1969198)))

(assert (=> bs!1567079 (= lambda!343826 lambda!343810)))

(declare-fun bs!1567080 () Bool)

(assert (= bs!1567080 (and d!1969350 d!1969236)))

(assert (=> bs!1567080 (= lambda!343826 lambda!343814)))

(declare-fun bs!1567081 () Bool)

(assert (= bs!1567081 (and d!1969350 d!1968862)))

(assert (=> bs!1567081 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343826 lambda!343700))))

(declare-fun bs!1567082 () Bool)

(assert (= bs!1567082 (and d!1969350 d!1969128)))

(assert (=> bs!1567082 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343826 lambda!343794))))

(declare-fun bs!1567083 () Bool)

(assert (= bs!1567083 (and d!1969350 d!1969248)))

(assert (=> bs!1567083 (= lambda!343826 lambda!343816)))

(declare-fun bs!1567084 () Bool)

(assert (= bs!1567084 (and d!1969350 b!6272771)))

(assert (=> bs!1567084 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343826 lambda!343676))))

(declare-fun bs!1567085 () Bool)

(assert (= bs!1567085 (and d!1969350 d!1968876)))

(assert (=> bs!1567085 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343826 lambda!343701))))

(declare-fun bs!1567086 () Bool)

(assert (= bs!1567086 (and d!1969350 d!1969290)))

(assert (=> bs!1567086 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343826 lambda!343820))))

(declare-fun bs!1567087 () Bool)

(assert (= bs!1567087 (and d!1969350 d!1969212)))

(assert (=> bs!1567087 (= lambda!343826 lambda!343812)))

(declare-fun bs!1567088 () Bool)

(assert (= bs!1567088 (and d!1969350 d!1969332)))

(assert (=> bs!1567088 (= lambda!343826 lambda!343822)))

(assert (=> d!1969350 true))

(assert (=> d!1969350 (= (derivationStepZipper!2158 lt!2352419 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352419 lambda!343826))))

(declare-fun bs!1567089 () Bool)

(assert (= bs!1567089 d!1969350))

(declare-fun m!7095970 () Bool)

(assert (=> bs!1567089 m!7095970))

(assert (=> b!6273369 d!1969350))

(assert (=> b!6273369 d!1969200))

(assert (=> b!6273369 d!1969202))

(declare-fun bs!1567090 () Bool)

(declare-fun d!1969352 () Bool)

(assert (= bs!1567090 (and d!1969352 d!1969134)))

(declare-fun lambda!343827 () Int)

(assert (=> bs!1567090 (= lambda!343827 lambda!343795)))

(declare-fun bs!1567091 () Bool)

(assert (= bs!1567091 (and d!1969352 d!1969252)))

(assert (=> bs!1567091 (= lambda!343827 lambda!343817)))

(declare-fun bs!1567092 () Bool)

(assert (= bs!1567092 (and d!1969352 d!1969242)))

(assert (=> bs!1567092 (= lambda!343827 lambda!343815)))

(declare-fun bs!1567093 () Bool)

(assert (= bs!1567093 (and d!1969352 b!6273219)))

(assert (=> bs!1567093 (not (= lambda!343827 lambda!343725))))

(declare-fun bs!1567094 () Bool)

(assert (= bs!1567094 (and d!1969352 d!1969114)))

(assert (=> bs!1567094 (= lambda!343827 lambda!343790)))

(declare-fun bs!1567095 () Bool)

(assert (= bs!1567095 (and d!1969352 b!6273222)))

(assert (=> bs!1567095 (not (= lambda!343827 lambda!343727))))

(declare-fun bs!1567096 () Bool)

(assert (= bs!1567096 (and d!1969352 d!1969324)))

(assert (=> bs!1567096 (= lambda!343827 lambda!343821)))

(declare-fun bs!1567097 () Bool)

(assert (= bs!1567097 (and d!1969352 b!6273217)))

(assert (=> bs!1567097 (not (= lambda!343827 lambda!343724))))

(declare-fun bs!1567098 () Bool)

(assert (= bs!1567098 (and d!1969352 b!6273224)))

(assert (=> bs!1567098 (not (= lambda!343827 lambda!343728))))

(declare-fun bs!1567099 () Bool)

(assert (= bs!1567099 (and d!1969352 d!1969272)))

(assert (=> bs!1567099 (= lambda!343827 lambda!343818)))

(assert (=> d!1969352 (= (nullableZipper!1962 lt!2352398) (exists!2524 lt!2352398 lambda!343827))))

(declare-fun bs!1567100 () Bool)

(assert (= bs!1567100 d!1969352))

(declare-fun m!7095972 () Bool)

(assert (=> bs!1567100 m!7095972))

(assert (=> b!6273370 d!1969352))

(declare-fun d!1969354 () Bool)

(assert (=> d!1969354 true))

(declare-fun setRes!42678 () Bool)

(assert (=> d!1969354 setRes!42678))

(declare-fun condSetEmpty!42678 () Bool)

(declare-fun res!2587964 () (Set Context!11152))

(assert (=> d!1969354 (= condSetEmpty!42678 (= res!2587964 (as set.empty (Set Context!11152))))))

(assert (=> d!1969354 (= (choose!46545 lt!2352408 lambda!343676) res!2587964)))

(declare-fun setIsEmpty!42678 () Bool)

(assert (=> setIsEmpty!42678 setRes!42678))

(declare-fun e!3816016 () Bool)

(declare-fun tp!1749390 () Bool)

(declare-fun setElem!42678 () Context!11152)

(declare-fun setNonEmpty!42678 () Bool)

(assert (=> setNonEmpty!42678 (= setRes!42678 (and tp!1749390 (inv!83728 setElem!42678) e!3816016))))

(declare-fun setRest!42678 () (Set Context!11152))

(assert (=> setNonEmpty!42678 (= res!2587964 (set.union (set.insert setElem!42678 (as set.empty (Set Context!11152))) setRest!42678))))

(declare-fun b!6274423 () Bool)

(declare-fun tp!1749389 () Bool)

(assert (=> b!6274423 (= e!3816016 tp!1749389)))

(assert (= (and d!1969354 condSetEmpty!42678) setIsEmpty!42678))

(assert (= (and d!1969354 (not condSetEmpty!42678)) setNonEmpty!42678))

(assert (= setNonEmpty!42678 b!6274423))

(declare-fun m!7095974 () Bool)

(assert (=> setNonEmpty!42678 m!7095974))

(assert (=> d!1968952 d!1969354))

(declare-fun d!1969356 () Bool)

(assert (=> d!1969356 true))

(assert (=> d!1969356 true))

(declare-fun res!2587967 () Bool)

(assert (=> d!1969356 (= (choose!46548 lambda!343675) res!2587967)))

(assert (=> d!1968886 d!1969356))

(assert (=> b!6272967 d!1968826))

(declare-fun b!6274424 () Bool)

(declare-fun e!3816022 () Bool)

(declare-fun call!530804 () Bool)

(assert (=> b!6274424 (= e!3816022 call!530804)))

(declare-fun b!6274425 () Bool)

(declare-fun e!3816021 () Bool)

(declare-fun e!3816018 () Bool)

(assert (=> b!6274425 (= e!3816021 e!3816018)))

(declare-fun res!2587971 () Bool)

(assert (=> b!6274425 (= res!2587971 (not (nullable!6185 (reg!16521 lt!2352602))))))

(assert (=> b!6274425 (=> (not res!2587971) (not e!3816018))))

(declare-fun c!1137329 () Bool)

(declare-fun call!530806 () Bool)

(declare-fun bm!530799 () Bool)

(declare-fun c!1137330 () Bool)

(assert (=> bm!530799 (= call!530806 (validRegex!7928 (ite c!1137329 (reg!16521 lt!2352602) (ite c!1137330 (regOne!32897 lt!2352602) (regOne!32896 lt!2352602)))))))

(declare-fun b!6274426 () Bool)

(declare-fun e!3816023 () Bool)

(assert (=> b!6274426 (= e!3816023 e!3816021)))

(assert (=> b!6274426 (= c!1137329 (is-Star!16192 lt!2352602))))

(declare-fun b!6274427 () Bool)

(declare-fun e!3816020 () Bool)

(assert (=> b!6274427 (= e!3816021 e!3816020)))

(assert (=> b!6274427 (= c!1137330 (is-Union!16192 lt!2352602))))

(declare-fun d!1969358 () Bool)

(declare-fun res!2587968 () Bool)

(assert (=> d!1969358 (=> res!2587968 e!3816023)))

(assert (=> d!1969358 (= res!2587968 (is-ElementMatch!16192 lt!2352602))))

(assert (=> d!1969358 (= (validRegex!7928 lt!2352602) e!3816023)))

(declare-fun bm!530800 () Bool)

(declare-fun call!530805 () Bool)

(assert (=> bm!530800 (= call!530805 call!530806)))

(declare-fun b!6274428 () Bool)

(declare-fun res!2587970 () Bool)

(declare-fun e!3816019 () Bool)

(assert (=> b!6274428 (=> res!2587970 e!3816019)))

(assert (=> b!6274428 (= res!2587970 (not (is-Concat!25037 lt!2352602)))))

(assert (=> b!6274428 (= e!3816020 e!3816019)))

(declare-fun b!6274429 () Bool)

(declare-fun e!3816017 () Bool)

(assert (=> b!6274429 (= e!3816019 e!3816017)))

(declare-fun res!2587969 () Bool)

(assert (=> b!6274429 (=> (not res!2587969) (not e!3816017))))

(assert (=> b!6274429 (= res!2587969 call!530805)))

(declare-fun b!6274430 () Bool)

(assert (=> b!6274430 (= e!3816018 call!530806)))

(declare-fun bm!530801 () Bool)

(assert (=> bm!530801 (= call!530804 (validRegex!7928 (ite c!1137330 (regTwo!32897 lt!2352602) (regTwo!32896 lt!2352602))))))

(declare-fun b!6274431 () Bool)

(assert (=> b!6274431 (= e!3816017 call!530804)))

(declare-fun b!6274432 () Bool)

(declare-fun res!2587972 () Bool)

(assert (=> b!6274432 (=> (not res!2587972) (not e!3816022))))

(assert (=> b!6274432 (= res!2587972 call!530805)))

(assert (=> b!6274432 (= e!3816020 e!3816022)))

(assert (= (and d!1969358 (not res!2587968)) b!6274426))

(assert (= (and b!6274426 c!1137329) b!6274425))

(assert (= (and b!6274426 (not c!1137329)) b!6274427))

(assert (= (and b!6274425 res!2587971) b!6274430))

(assert (= (and b!6274427 c!1137330) b!6274432))

(assert (= (and b!6274427 (not c!1137330)) b!6274428))

(assert (= (and b!6274432 res!2587972) b!6274424))

(assert (= (and b!6274428 (not res!2587970)) b!6274429))

(assert (= (and b!6274429 res!2587969) b!6274431))

(assert (= (or b!6274424 b!6274431) bm!530801))

(assert (= (or b!6274432 b!6274429) bm!530800))

(assert (= (or b!6274430 bm!530800) bm!530799))

(declare-fun m!7095976 () Bool)

(assert (=> b!6274425 m!7095976))

(declare-fun m!7095978 () Bool)

(assert (=> bm!530799 m!7095978))

(declare-fun m!7095980 () Bool)

(assert (=> bm!530801 m!7095980))

(assert (=> d!1968922 d!1969358))

(declare-fun d!1969360 () Bool)

(declare-fun res!2587973 () Bool)

(declare-fun e!3816024 () Bool)

(assert (=> d!1969360 (=> res!2587973 e!3816024)))

(assert (=> d!1969360 (= res!2587973 (is-Nil!64751 lt!2352404))))

(assert (=> d!1969360 (= (forall!15322 lt!2352404 lambda!343732) e!3816024)))

(declare-fun b!6274433 () Bool)

(declare-fun e!3816025 () Bool)

(assert (=> b!6274433 (= e!3816024 e!3816025)))

(declare-fun res!2587974 () Bool)

(assert (=> b!6274433 (=> (not res!2587974) (not e!3816025))))

(assert (=> b!6274433 (= res!2587974 (dynLambda!25612 lambda!343732 (h!71199 lt!2352404)))))

(declare-fun b!6274434 () Bool)

(assert (=> b!6274434 (= e!3816025 (forall!15322 (t!378433 lt!2352404) lambda!343732))))

(assert (= (and d!1969360 (not res!2587973)) b!6274433))

(assert (= (and b!6274433 res!2587974) b!6274434))

(declare-fun b_lambda!238905 () Bool)

(assert (=> (not b_lambda!238905) (not b!6274433)))

(declare-fun m!7095982 () Bool)

(assert (=> b!6274433 m!7095982))

(declare-fun m!7095984 () Bool)

(assert (=> b!6274434 m!7095984))

(assert (=> d!1968922 d!1969360))

(declare-fun d!1969362 () Bool)

(declare-fun res!2587979 () Bool)

(declare-fun e!3816030 () Bool)

(assert (=> d!1969362 (=> res!2587979 e!3816030)))

(assert (=> d!1969362 (= res!2587979 (is-Nil!64753 lt!2352539))))

(assert (=> d!1969362 (= (noDuplicate!2026 lt!2352539) e!3816030)))

(declare-fun b!6274439 () Bool)

(declare-fun e!3816031 () Bool)

(assert (=> b!6274439 (= e!3816030 e!3816031)))

(declare-fun res!2587980 () Bool)

(assert (=> b!6274439 (=> (not res!2587980) (not e!3816031))))

(declare-fun contains!20122 (List!64877 Context!11152) Bool)

(assert (=> b!6274439 (= res!2587980 (not (contains!20122 (t!378435 lt!2352539) (h!71201 lt!2352539))))))

(declare-fun b!6274440 () Bool)

(assert (=> b!6274440 (= e!3816031 (noDuplicate!2026 (t!378435 lt!2352539)))))

(assert (= (and d!1969362 (not res!2587979)) b!6274439))

(assert (= (and b!6274439 res!2587980) b!6274440))

(declare-fun m!7095986 () Bool)

(assert (=> b!6274439 m!7095986))

(declare-fun m!7095988 () Bool)

(assert (=> b!6274440 m!7095988))

(assert (=> d!1968824 d!1969362))

(declare-fun d!1969364 () Bool)

(declare-fun e!3816039 () Bool)

(assert (=> d!1969364 e!3816039))

(declare-fun res!2587985 () Bool)

(assert (=> d!1969364 (=> (not res!2587985) (not e!3816039))))

(declare-fun res!2587986 () List!64877)

(assert (=> d!1969364 (= res!2587985 (noDuplicate!2026 res!2587986))))

(declare-fun e!3816038 () Bool)

(assert (=> d!1969364 e!3816038))

(assert (=> d!1969364 (= (choose!46543 z!1189) res!2587986)))

(declare-fun b!6274448 () Bool)

(declare-fun e!3816040 () Bool)

(declare-fun tp!1749396 () Bool)

(assert (=> b!6274448 (= e!3816040 tp!1749396)))

(declare-fun tp!1749395 () Bool)

(declare-fun b!6274447 () Bool)

(assert (=> b!6274447 (= e!3816038 (and (inv!83728 (h!71201 res!2587986)) e!3816040 tp!1749395))))

(declare-fun b!6274449 () Bool)

(assert (=> b!6274449 (= e!3816039 (= (content!12165 res!2587986) z!1189))))

(assert (= b!6274447 b!6274448))

(assert (= (and d!1969364 (is-Cons!64753 res!2587986)) b!6274447))

(assert (= (and d!1969364 res!2587985) b!6274449))

(declare-fun m!7095990 () Bool)

(assert (=> d!1969364 m!7095990))

(declare-fun m!7095992 () Bool)

(assert (=> b!6274447 m!7095992))

(declare-fun m!7095994 () Bool)

(assert (=> b!6274449 m!7095994))

(assert (=> d!1968824 d!1969364))

(declare-fun d!1969366 () Bool)

(assert (=> d!1969366 (= (isEmpty!36789 (t!378433 (unfocusZipperList!1613 zl!343))) (is-Nil!64751 (t!378433 (unfocusZipperList!1613 zl!343))))))

(assert (=> b!6273361 d!1969366))

(declare-fun d!1969368 () Bool)

(assert (=> d!1969368 (= (nullable!6185 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))) (nullableFct!2137 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))))

(declare-fun bs!1567101 () Bool)

(assert (= bs!1567101 d!1969368))

(declare-fun m!7095996 () Bool)

(assert (=> bs!1567101 m!7095996))

(assert (=> b!6273190 d!1969368))

(assert (=> d!1968856 d!1968864))

(declare-fun d!1969370 () Bool)

(assert (=> d!1969370 (= (flatMap!1697 lt!2352410 lambda!343676) (dynLambda!25610 lambda!343676 lt!2352409))))

(assert (=> d!1969370 true))

(declare-fun _$13!3386 () Unit!158099)

(assert (=> d!1969370 (= (choose!46546 lt!2352410 lt!2352409 lambda!343676) _$13!3386)))

(declare-fun b_lambda!238907 () Bool)

(assert (=> (not b_lambda!238907) (not d!1969370)))

(declare-fun bs!1567102 () Bool)

(assert (= bs!1567102 d!1969370))

(assert (=> bs!1567102 m!7094482))

(assert (=> bs!1567102 m!7094722))

(assert (=> d!1968856 d!1969370))

(assert (=> d!1968944 d!1969172))

(assert (=> d!1968896 d!1969172))

(declare-fun d!1969372 () Bool)

(assert (=> d!1969372 (= (isConcat!1121 lt!2352603) (is-Concat!25037 lt!2352603))))

(assert (=> b!6273286 d!1969372))

(assert (=> d!1968870 d!1969172))

(declare-fun d!1969374 () Bool)

(assert (=> d!1969374 (= (Exists!3262 (ite c!1136921 lambda!343706 lambda!343707)) (choose!46548 (ite c!1136921 lambda!343706 lambda!343707)))))

(declare-fun bs!1567103 () Bool)

(assert (= bs!1567103 d!1969374))

(declare-fun m!7095998 () Bool)

(assert (=> bs!1567103 m!7095998))

(assert (=> bm!530586 d!1969374))

(declare-fun d!1969376 () Bool)

(declare-fun res!2587987 () Bool)

(declare-fun e!3816041 () Bool)

(assert (=> d!1969376 (=> res!2587987 e!3816041)))

(assert (=> d!1969376 (= res!2587987 (is-Nil!64751 (exprs!6076 (h!71201 zl!343))))))

(assert (=> d!1969376 (= (forall!15322 (exprs!6076 (h!71201 zl!343)) lambda!343729) e!3816041)))

(declare-fun b!6274450 () Bool)

(declare-fun e!3816042 () Bool)

(assert (=> b!6274450 (= e!3816041 e!3816042)))

(declare-fun res!2587988 () Bool)

(assert (=> b!6274450 (=> (not res!2587988) (not e!3816042))))

(assert (=> b!6274450 (= res!2587988 (dynLambda!25612 lambda!343729 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun b!6274451 () Bool)

(assert (=> b!6274451 (= e!3816042 (forall!15322 (t!378433 (exprs!6076 (h!71201 zl!343))) lambda!343729))))

(assert (= (and d!1969376 (not res!2587987)) b!6274450))

(assert (= (and b!6274450 res!2587988) b!6274451))

(declare-fun b_lambda!238909 () Bool)

(assert (=> (not b_lambda!238909) (not b!6274450)))

(declare-fun m!7096000 () Bool)

(assert (=> b!6274450 m!7096000))

(declare-fun m!7096002 () Bool)

(assert (=> b!6274451 m!7096002))

(assert (=> d!1968914 d!1969376))

(declare-fun d!1969378 () Bool)

(declare-fun c!1137331 () Bool)

(assert (=> d!1969378 (= c!1137331 (isEmpty!36792 (t!378434 s!2326)))))

(declare-fun e!3816043 () Bool)

(assert (=> d!1969378 (= (matchZipper!2204 (set.union lt!2352401 lt!2352421) (t!378434 s!2326)) e!3816043)))

(declare-fun b!6274452 () Bool)

(assert (=> b!6274452 (= e!3816043 (nullableZipper!1962 (set.union lt!2352401 lt!2352421)))))

(declare-fun b!6274453 () Bool)

(assert (=> b!6274453 (= e!3816043 (matchZipper!2204 (derivationStepZipper!2158 (set.union lt!2352401 lt!2352421) (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))))))

(assert (= (and d!1969378 c!1137331) b!6274452))

(assert (= (and d!1969378 (not c!1137331)) b!6274453))

(assert (=> d!1969378 m!7094628))

(declare-fun m!7096004 () Bool)

(assert (=> b!6274452 m!7096004))

(assert (=> b!6274453 m!7094632))

(assert (=> b!6274453 m!7094632))

(declare-fun m!7096006 () Bool)

(assert (=> b!6274453 m!7096006))

(assert (=> b!6274453 m!7094636))

(assert (=> b!6274453 m!7096006))

(assert (=> b!6274453 m!7094636))

(declare-fun m!7096008 () Bool)

(assert (=> b!6274453 m!7096008))

(assert (=> d!1968954 d!1969378))

(assert (=> d!1968954 d!1968870))

(declare-fun e!3816044 () Bool)

(declare-fun d!1969380 () Bool)

(assert (=> d!1969380 (= (matchZipper!2204 (set.union lt!2352401 lt!2352421) (t!378434 s!2326)) e!3816044)))

(declare-fun res!2587989 () Bool)

(assert (=> d!1969380 (=> res!2587989 e!3816044)))

(assert (=> d!1969380 (= res!2587989 (matchZipper!2204 lt!2352401 (t!378434 s!2326)))))

(assert (=> d!1969380 true))

(declare-fun _$48!2028 () Unit!158099)

(assert (=> d!1969380 (= (choose!46544 lt!2352401 lt!2352421 (t!378434 s!2326)) _$48!2028)))

(declare-fun b!6274454 () Bool)

(assert (=> b!6274454 (= e!3816044 (matchZipper!2204 lt!2352421 (t!378434 s!2326)))))

(assert (= (and d!1969380 (not res!2587989)) b!6274454))

(assert (=> d!1969380 m!7095028))

(assert (=> d!1969380 m!7094362))

(assert (=> b!6274454 m!7094378))

(assert (=> d!1968954 d!1969380))

(assert (=> d!1968882 d!1968880))

(assert (=> d!1968882 d!1968878))

(declare-fun d!1969382 () Bool)

(assert (=> d!1969382 (= (matchR!8375 r!7292 s!2326) (matchRSpec!3293 r!7292 s!2326))))

(assert (=> d!1969382 true))

(declare-fun _$88!4917 () Unit!158099)

(assert (=> d!1969382 (= (choose!46547 r!7292 s!2326) _$88!4917)))

(declare-fun bs!1567104 () Bool)

(assert (= bs!1567104 d!1969382))

(assert (=> bs!1567104 m!7094368))

(assert (=> bs!1567104 m!7094366))

(assert (=> d!1968882 d!1969382))

(assert (=> d!1968882 d!1968908))

(declare-fun bs!1567105 () Bool)

(declare-fun d!1969384 () Bool)

(assert (= bs!1567105 (and d!1969384 d!1969134)))

(declare-fun lambda!343828 () Int)

(assert (=> bs!1567105 (= lambda!343828 lambda!343795)))

(declare-fun bs!1567106 () Bool)

(assert (= bs!1567106 (and d!1969384 d!1969252)))

(assert (=> bs!1567106 (= lambda!343828 lambda!343817)))

(declare-fun bs!1567107 () Bool)

(assert (= bs!1567107 (and d!1969384 d!1969242)))

(assert (=> bs!1567107 (= lambda!343828 lambda!343815)))

(declare-fun bs!1567108 () Bool)

(assert (= bs!1567108 (and d!1969384 b!6273219)))

(assert (=> bs!1567108 (not (= lambda!343828 lambda!343725))))

(declare-fun bs!1567109 () Bool)

(assert (= bs!1567109 (and d!1969384 d!1969114)))

(assert (=> bs!1567109 (= lambda!343828 lambda!343790)))

(declare-fun bs!1567110 () Bool)

(assert (= bs!1567110 (and d!1969384 b!6273222)))

(assert (=> bs!1567110 (not (= lambda!343828 lambda!343727))))

(declare-fun bs!1567111 () Bool)

(assert (= bs!1567111 (and d!1969384 b!6273217)))

(assert (=> bs!1567111 (not (= lambda!343828 lambda!343724))))

(declare-fun bs!1567112 () Bool)

(assert (= bs!1567112 (and d!1969384 b!6273224)))

(assert (=> bs!1567112 (not (= lambda!343828 lambda!343728))))

(declare-fun bs!1567113 () Bool)

(assert (= bs!1567113 (and d!1969384 d!1969272)))

(assert (=> bs!1567113 (= lambda!343828 lambda!343818)))

(declare-fun bs!1567114 () Bool)

(assert (= bs!1567114 (and d!1969384 d!1969324)))

(assert (=> bs!1567114 (= lambda!343828 lambda!343821)))

(declare-fun bs!1567115 () Bool)

(assert (= bs!1567115 (and d!1969384 d!1969352)))

(assert (=> bs!1567115 (= lambda!343828 lambda!343827)))

(assert (=> d!1969384 (= (nullableZipper!1962 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326))) (exists!2524 (derivationStepZipper!2158 lt!2352408 (h!71200 s!2326)) lambda!343828))))

(declare-fun bs!1567116 () Bool)

(assert (= bs!1567116 d!1969384))

(assert (=> bs!1567116 m!7094372))

(declare-fun m!7096010 () Bool)

(assert (=> bs!1567116 m!7096010))

(assert (=> b!6273061 d!1969384))

(declare-fun d!1969386 () Bool)

(declare-fun c!1137332 () Bool)

(assert (=> d!1969386 (= c!1137332 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3816045 () Bool)

(assert (=> d!1969386 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352401 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3816045)))

(declare-fun b!6274455 () Bool)

(assert (=> b!6274455 (= e!3816045 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352401 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274456 () Bool)

(assert (=> b!6274456 (= e!3816045 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352401 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969386 c!1137332) b!6274455))

(assert (= (and d!1969386 (not c!1137332)) b!6274456))

(assert (=> d!1969386 m!7094636))

(assert (=> d!1969386 m!7095606))

(assert (=> b!6274455 m!7094750))

(declare-fun m!7096012 () Bool)

(assert (=> b!6274455 m!7096012))

(assert (=> b!6274456 m!7094636))

(assert (=> b!6274456 m!7095610))

(assert (=> b!6274456 m!7094750))

(assert (=> b!6274456 m!7095610))

(declare-fun m!7096014 () Bool)

(assert (=> b!6274456 m!7096014))

(assert (=> b!6274456 m!7094636))

(assert (=> b!6274456 m!7095614))

(assert (=> b!6274456 m!7096014))

(assert (=> b!6274456 m!7095614))

(declare-fun m!7096016 () Bool)

(assert (=> b!6274456 m!7096016))

(assert (=> b!6273059 d!1969386))

(declare-fun bs!1567117 () Bool)

(declare-fun d!1969388 () Bool)

(assert (= bs!1567117 (and d!1969388 d!1969286)))

(declare-fun lambda!343829 () Int)

(assert (=> bs!1567117 (= lambda!343829 lambda!343819)))

(declare-fun bs!1567118 () Bool)

(assert (= bs!1567118 (and d!1969388 d!1969198)))

(assert (=> bs!1567118 (= lambda!343829 lambda!343810)))

(declare-fun bs!1567119 () Bool)

(assert (= bs!1567119 (and d!1969388 d!1969236)))

(assert (=> bs!1567119 (= lambda!343829 lambda!343814)))

(declare-fun bs!1567120 () Bool)

(assert (= bs!1567120 (and d!1969388 d!1968862)))

(assert (=> bs!1567120 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343829 lambda!343700))))

(declare-fun bs!1567121 () Bool)

(assert (= bs!1567121 (and d!1969388 d!1969128)))

(assert (=> bs!1567121 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343829 lambda!343794))))

(declare-fun bs!1567122 () Bool)

(assert (= bs!1567122 (and d!1969388 d!1969248)))

(assert (=> bs!1567122 (= lambda!343829 lambda!343816)))

(declare-fun bs!1567123 () Bool)

(assert (= bs!1567123 (and d!1969388 d!1969350)))

(assert (=> bs!1567123 (= lambda!343829 lambda!343826)))

(declare-fun bs!1567124 () Bool)

(assert (= bs!1567124 (and d!1969388 b!6272771)))

(assert (=> bs!1567124 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343829 lambda!343676))))

(declare-fun bs!1567125 () Bool)

(assert (= bs!1567125 (and d!1969388 d!1968876)))

(assert (=> bs!1567125 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343829 lambda!343701))))

(declare-fun bs!1567126 () Bool)

(assert (= bs!1567126 (and d!1969388 d!1969290)))

(assert (=> bs!1567126 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343829 lambda!343820))))

(declare-fun bs!1567127 () Bool)

(assert (= bs!1567127 (and d!1969388 d!1969212)))

(assert (=> bs!1567127 (= lambda!343829 lambda!343812)))

(declare-fun bs!1567128 () Bool)

(assert (= bs!1567128 (and d!1969388 d!1969332)))

(assert (=> bs!1567128 (= lambda!343829 lambda!343822)))

(assert (=> d!1969388 true))

(assert (=> d!1969388 (= (derivationStepZipper!2158 lt!2352401 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352401 lambda!343829))))

(declare-fun bs!1567129 () Bool)

(assert (= bs!1567129 d!1969388))

(declare-fun m!7096018 () Bool)

(assert (=> bs!1567129 m!7096018))

(assert (=> b!6273059 d!1969388))

(assert (=> b!6273059 d!1969200))

(assert (=> b!6273059 d!1969202))

(declare-fun d!1969390 () Bool)

(declare-fun c!1137333 () Bool)

(assert (=> d!1969390 (= c!1137333 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3816046 () Bool)

(assert (=> d!1969390 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352421 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3816046)))

(declare-fun b!6274457 () Bool)

(assert (=> b!6274457 (= e!3816046 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352421 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274458 () Bool)

(assert (=> b!6274458 (= e!3816046 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352421 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969390 c!1137333) b!6274457))

(assert (= (and d!1969390 (not c!1137333)) b!6274458))

(assert (=> d!1969390 m!7094636))

(assert (=> d!1969390 m!7095606))

(assert (=> b!6274457 m!7094830))

(declare-fun m!7096020 () Bool)

(assert (=> b!6274457 m!7096020))

(assert (=> b!6274458 m!7094636))

(assert (=> b!6274458 m!7095610))

(assert (=> b!6274458 m!7094830))

(assert (=> b!6274458 m!7095610))

(declare-fun m!7096022 () Bool)

(assert (=> b!6274458 m!7096022))

(assert (=> b!6274458 m!7094636))

(assert (=> b!6274458 m!7095614))

(assert (=> b!6274458 m!7096022))

(assert (=> b!6274458 m!7095614))

(declare-fun m!7096024 () Bool)

(assert (=> b!6274458 m!7096024))

(assert (=> b!6273188 d!1969390))

(declare-fun bs!1567130 () Bool)

(declare-fun d!1969392 () Bool)

(assert (= bs!1567130 (and d!1969392 d!1969286)))

(declare-fun lambda!343830 () Int)

(assert (=> bs!1567130 (= lambda!343830 lambda!343819)))

(declare-fun bs!1567131 () Bool)

(assert (= bs!1567131 (and d!1969392 d!1969198)))

(assert (=> bs!1567131 (= lambda!343830 lambda!343810)))

(declare-fun bs!1567132 () Bool)

(assert (= bs!1567132 (and d!1969392 d!1969236)))

(assert (=> bs!1567132 (= lambda!343830 lambda!343814)))

(declare-fun bs!1567133 () Bool)

(assert (= bs!1567133 (and d!1969392 d!1968862)))

(assert (=> bs!1567133 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343830 lambda!343700))))

(declare-fun bs!1567134 () Bool)

(assert (= bs!1567134 (and d!1969392 d!1969388)))

(assert (=> bs!1567134 (= lambda!343830 lambda!343829)))

(declare-fun bs!1567135 () Bool)

(assert (= bs!1567135 (and d!1969392 d!1969128)))

(assert (=> bs!1567135 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343830 lambda!343794))))

(declare-fun bs!1567136 () Bool)

(assert (= bs!1567136 (and d!1969392 d!1969248)))

(assert (=> bs!1567136 (= lambda!343830 lambda!343816)))

(declare-fun bs!1567137 () Bool)

(assert (= bs!1567137 (and d!1969392 d!1969350)))

(assert (=> bs!1567137 (= lambda!343830 lambda!343826)))

(declare-fun bs!1567138 () Bool)

(assert (= bs!1567138 (and d!1969392 b!6272771)))

(assert (=> bs!1567138 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343830 lambda!343676))))

(declare-fun bs!1567139 () Bool)

(assert (= bs!1567139 (and d!1969392 d!1968876)))

(assert (=> bs!1567139 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343830 lambda!343701))))

(declare-fun bs!1567140 () Bool)

(assert (= bs!1567140 (and d!1969392 d!1969290)))

(assert (=> bs!1567140 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343830 lambda!343820))))

(declare-fun bs!1567141 () Bool)

(assert (= bs!1567141 (and d!1969392 d!1969212)))

(assert (=> bs!1567141 (= lambda!343830 lambda!343812)))

(declare-fun bs!1567142 () Bool)

(assert (= bs!1567142 (and d!1969392 d!1969332)))

(assert (=> bs!1567142 (= lambda!343830 lambda!343822)))

(assert (=> d!1969392 true))

(assert (=> d!1969392 (= (derivationStepZipper!2158 lt!2352421 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352421 lambda!343830))))

(declare-fun bs!1567143 () Bool)

(assert (= bs!1567143 d!1969392))

(declare-fun m!7096026 () Bool)

(assert (=> bs!1567143 m!7096026))

(assert (=> b!6273188 d!1969392))

(assert (=> b!6273188 d!1969200))

(assert (=> b!6273188 d!1969202))

(assert (=> bs!1566710 d!1968852))

(declare-fun d!1969394 () Bool)

(assert (=> d!1969394 (= ($colon$colon!2057 (exprs!6076 lt!2352397) (ite (or c!1136947 c!1136946) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 r!7292)))) (Cons!64751 (ite (or c!1136947 c!1136946) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))) (regOne!32896 (regOne!32896 r!7292))) (exprs!6076 lt!2352397)))))

(assert (=> bm!530600 d!1969394))

(assert (=> d!1968950 d!1969172))

(declare-fun b!6274459 () Bool)

(declare-fun e!3816052 () Bool)

(declare-fun call!530807 () Bool)

(assert (=> b!6274459 (= e!3816052 call!530807)))

(declare-fun b!6274460 () Bool)

(declare-fun e!3816051 () Bool)

(declare-fun e!3816048 () Bool)

(assert (=> b!6274460 (= e!3816051 e!3816048)))

(declare-fun res!2587993 () Bool)

(assert (=> b!6274460 (= res!2587993 (not (nullable!6185 (reg!16521 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))))

(assert (=> b!6274460 (=> (not res!2587993) (not e!3816048))))

(declare-fun bm!530802 () Bool)

(declare-fun call!530809 () Bool)

(declare-fun c!1137334 () Bool)

(declare-fun c!1137335 () Bool)

(assert (=> bm!530802 (= call!530809 (validRegex!7928 (ite c!1137334 (reg!16521 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))) (ite c!1137335 (regOne!32897 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))) (regOne!32896 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292)))))))))))

(declare-fun b!6274461 () Bool)

(declare-fun e!3816053 () Bool)

(assert (=> b!6274461 (= e!3816053 e!3816051)))

(assert (=> b!6274461 (= c!1137334 (is-Star!16192 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun b!6274462 () Bool)

(declare-fun e!3816050 () Bool)

(assert (=> b!6274462 (= e!3816051 e!3816050)))

(assert (=> b!6274462 (= c!1137335 (is-Union!16192 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(declare-fun d!1969396 () Bool)

(declare-fun res!2587990 () Bool)

(assert (=> d!1969396 (=> res!2587990 e!3816053)))

(assert (=> d!1969396 (= res!2587990 (is-ElementMatch!16192 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))

(assert (=> d!1969396 (= (validRegex!7928 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))) e!3816053)))

(declare-fun bm!530803 () Bool)

(declare-fun call!530808 () Bool)

(assert (=> bm!530803 (= call!530808 call!530809)))

(declare-fun b!6274463 () Bool)

(declare-fun res!2587992 () Bool)

(declare-fun e!3816049 () Bool)

(assert (=> b!6274463 (=> res!2587992 e!3816049)))

(assert (=> b!6274463 (= res!2587992 (not (is-Concat!25037 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292)))))))))

(assert (=> b!6274463 (= e!3816050 e!3816049)))

(declare-fun b!6274464 () Bool)

(declare-fun e!3816047 () Bool)

(assert (=> b!6274464 (= e!3816049 e!3816047)))

(declare-fun res!2587991 () Bool)

(assert (=> b!6274464 (=> (not res!2587991) (not e!3816047))))

(assert (=> b!6274464 (= res!2587991 call!530808)))

(declare-fun b!6274465 () Bool)

(assert (=> b!6274465 (= e!3816048 call!530809)))

(declare-fun bm!530804 () Bool)

(assert (=> bm!530804 (= call!530807 (validRegex!7928 (ite c!1137335 (regTwo!32897 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))) (regTwo!32896 (ite c!1136987 (regTwo!32897 (regOne!32896 (regOne!32896 r!7292))) (regTwo!32896 (regOne!32896 (regOne!32896 r!7292))))))))))

(declare-fun b!6274466 () Bool)

(assert (=> b!6274466 (= e!3816047 call!530807)))

(declare-fun b!6274467 () Bool)

(declare-fun res!2587994 () Bool)

(assert (=> b!6274467 (=> (not res!2587994) (not e!3816052))))

(assert (=> b!6274467 (= res!2587994 call!530808)))

(assert (=> b!6274467 (= e!3816050 e!3816052)))

(assert (= (and d!1969396 (not res!2587990)) b!6274461))

(assert (= (and b!6274461 c!1137334) b!6274460))

(assert (= (and b!6274461 (not c!1137334)) b!6274462))

(assert (= (and b!6274460 res!2587993) b!6274465))

(assert (= (and b!6274462 c!1137335) b!6274467))

(assert (= (and b!6274462 (not c!1137335)) b!6274463))

(assert (= (and b!6274467 res!2587994) b!6274459))

(assert (= (and b!6274463 (not res!2587992)) b!6274464))

(assert (= (and b!6274464 res!2587991) b!6274466))

(assert (= (or b!6274459 b!6274466) bm!530804))

(assert (= (or b!6274467 b!6274464) bm!530803))

(assert (= (or b!6274465 bm!530803) bm!530802))

(declare-fun m!7096028 () Bool)

(assert (=> b!6274460 m!7096028))

(declare-fun m!7096030 () Bool)

(assert (=> bm!530802 m!7096030))

(declare-fun m!7096032 () Bool)

(assert (=> bm!530804 m!7096032))

(assert (=> bm!530616 d!1969396))

(assert (=> b!6272984 d!1968912))

(declare-fun d!1969398 () Bool)

(declare-fun lt!2352725 () Int)

(assert (=> d!1969398 (>= lt!2352725 0)))

(declare-fun e!3816054 () Int)

(assert (=> d!1969398 (= lt!2352725 e!3816054)))

(declare-fun c!1137336 () Bool)

(assert (=> d!1969398 (= c!1137336 (is-Cons!64753 (t!378435 zl!343)))))

(assert (=> d!1969398 (= (zipperDepthTotal!345 (t!378435 zl!343)) lt!2352725)))

(declare-fun b!6274468 () Bool)

(assert (=> b!6274468 (= e!3816054 (+ (contextDepthTotal!315 (h!71201 (t!378435 zl!343))) (zipperDepthTotal!345 (t!378435 (t!378435 zl!343)))))))

(declare-fun b!6274469 () Bool)

(assert (=> b!6274469 (= e!3816054 0)))

(assert (= (and d!1969398 c!1137336) b!6274468))

(assert (= (and d!1969398 (not c!1137336)) b!6274469))

(declare-fun m!7096034 () Bool)

(assert (=> b!6274468 m!7096034))

(declare-fun m!7096036 () Bool)

(assert (=> b!6274468 m!7096036))

(assert (=> b!6272984 d!1969398))

(assert (=> b!6273374 d!1968896))

(declare-fun bs!1567144 () Bool)

(declare-fun d!1969400 () Bool)

(assert (= bs!1567144 (and d!1969400 d!1969134)))

(declare-fun lambda!343833 () Int)

(assert (=> bs!1567144 (not (= lambda!343833 lambda!343795))))

(declare-fun bs!1567145 () Bool)

(assert (= bs!1567145 (and d!1969400 d!1969384)))

(assert (=> bs!1567145 (not (= lambda!343833 lambda!343828))))

(declare-fun bs!1567146 () Bool)

(assert (= bs!1567146 (and d!1969400 d!1969252)))

(assert (=> bs!1567146 (not (= lambda!343833 lambda!343817))))

(declare-fun bs!1567147 () Bool)

(assert (= bs!1567147 (and d!1969400 d!1969242)))

(assert (=> bs!1567147 (not (= lambda!343833 lambda!343815))))

(declare-fun bs!1567148 () Bool)

(assert (= bs!1567148 (and d!1969400 b!6273219)))

(assert (=> bs!1567148 (not (= lambda!343833 lambda!343725))))

(declare-fun bs!1567149 () Bool)

(assert (= bs!1567149 (and d!1969400 d!1969114)))

(assert (=> bs!1567149 (not (= lambda!343833 lambda!343790))))

(declare-fun bs!1567150 () Bool)

(assert (= bs!1567150 (and d!1969400 b!6273222)))

(assert (=> bs!1567150 (not (= lambda!343833 lambda!343727))))

(declare-fun bs!1567151 () Bool)

(assert (= bs!1567151 (and d!1969400 b!6273217)))

(assert (=> bs!1567151 (not (= lambda!343833 lambda!343724))))

(declare-fun bs!1567152 () Bool)

(assert (= bs!1567152 (and d!1969400 b!6273224)))

(assert (=> bs!1567152 (not (= lambda!343833 lambda!343728))))

(declare-fun bs!1567153 () Bool)

(assert (= bs!1567153 (and d!1969400 d!1969272)))

(assert (=> bs!1567153 (not (= lambda!343833 lambda!343818))))

(declare-fun bs!1567154 () Bool)

(assert (= bs!1567154 (and d!1969400 d!1969324)))

(assert (=> bs!1567154 (not (= lambda!343833 lambda!343821))))

(declare-fun bs!1567155 () Bool)

(assert (= bs!1567155 (and d!1969400 d!1969352)))

(assert (=> bs!1567155 (not (= lambda!343833 lambda!343827))))

(assert (=> d!1969400 true))

(assert (=> d!1969400 true))

(declare-fun order!27463 () Int)

(declare-fun order!27461 () Int)

(declare-fun dynLambda!25614 (Int Int) Int)

(declare-fun dynLambda!25615 (Int Int) Int)

(assert (=> d!1969400 (< (dynLambda!25614 order!27461 lambda!343726) (dynLambda!25615 order!27463 lambda!343833))))

(assert (=> d!1969400 (forall!15323 (t!378435 zl!343) lambda!343833)))

(declare-fun lt!2352728 () Unit!158099)

(declare-fun choose!46562 (List!64877 Int Int Int) Unit!158099)

(assert (=> d!1969400 (= lt!2352728 (choose!46562 (t!378435 zl!343) lt!2352591 (zipperDepth!317 (t!378435 zl!343)) lambda!343726))))

(assert (=> d!1969400 (>= lt!2352591 (zipperDepth!317 (t!378435 zl!343)))))

(assert (=> d!1969400 (= (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 zl!343) lt!2352591 (zipperDepth!317 (t!378435 zl!343)) lambda!343726) lt!2352728)))

(declare-fun bs!1567156 () Bool)

(assert (= bs!1567156 d!1969400))

(declare-fun m!7096038 () Bool)

(assert (=> bs!1567156 m!7096038))

(assert (=> bs!1567156 m!7094866))

(declare-fun m!7096040 () Bool)

(assert (=> bs!1567156 m!7096040))

(assert (=> b!6273222 d!1969400))

(declare-fun d!1969402 () Bool)

(declare-fun res!2587995 () Bool)

(declare-fun e!3816055 () Bool)

(assert (=> d!1969402 (=> res!2587995 e!3816055)))

(assert (=> d!1969402 (= res!2587995 (is-Nil!64753 (t!378435 zl!343)))))

(assert (=> d!1969402 (= (forall!15323 (t!378435 zl!343) lambda!343727) e!3816055)))

(declare-fun b!6274473 () Bool)

(declare-fun e!3816056 () Bool)

(assert (=> b!6274473 (= e!3816055 e!3816056)))

(declare-fun res!2587996 () Bool)

(assert (=> b!6274473 (=> (not res!2587996) (not e!3816056))))

(assert (=> b!6274473 (= res!2587996 (dynLambda!25613 lambda!343727 (h!71201 (t!378435 zl!343))))))

(declare-fun b!6274474 () Bool)

(assert (=> b!6274474 (= e!3816056 (forall!15323 (t!378435 (t!378435 zl!343)) lambda!343727))))

(assert (= (and d!1969402 (not res!2587995)) b!6274473))

(assert (= (and b!6274473 res!2587996) b!6274474))

(declare-fun b_lambda!238911 () Bool)

(assert (=> (not b_lambda!238911) (not b!6274473)))

(declare-fun m!7096042 () Bool)

(assert (=> b!6274473 m!7096042))

(declare-fun m!7096044 () Bool)

(assert (=> b!6274474 m!7096044))

(assert (=> b!6273222 d!1969402))

(declare-fun bs!1567157 () Bool)

(declare-fun b!6274481 () Bool)

(assert (= bs!1567157 (and b!6274481 d!1969136)))

(declare-fun lambda!343838 () Int)

(assert (=> bs!1567157 (not (= lambda!343838 lambda!343796))))

(declare-fun bs!1567158 () Bool)

(assert (= bs!1567158 (and b!6274481 d!1969208)))

(assert (=> bs!1567158 (not (= lambda!343838 lambda!343811))))

(declare-fun bs!1567159 () Bool)

(assert (= bs!1567159 (and b!6274481 d!1968922)))

(assert (=> bs!1567159 (not (= lambda!343838 lambda!343732))))

(declare-fun bs!1567160 () Bool)

(assert (= bs!1567160 (and b!6274481 d!1969118)))

(assert (=> bs!1567160 (not (= lambda!343838 lambda!343791))))

(declare-fun bs!1567161 () Bool)

(assert (= bs!1567161 (and b!6274481 d!1968940)))

(assert (=> bs!1567161 (not (= lambda!343838 lambda!343736))))

(declare-fun bs!1567162 () Bool)

(assert (= bs!1567162 (and b!6274481 d!1969192)))

(assert (=> bs!1567162 (not (= lambda!343838 lambda!343807))))

(declare-fun bs!1567163 () Bool)

(assert (= bs!1567163 (and b!6274481 d!1968942)))

(assert (=> bs!1567163 (not (= lambda!343838 lambda!343739))))

(declare-fun bs!1567164 () Bool)

(assert (= bs!1567164 (and b!6274481 d!1968924)))

(assert (=> bs!1567164 (not (= lambda!343838 lambda!343733))))

(declare-fun bs!1567165 () Bool)

(assert (= bs!1567165 (and b!6274481 d!1968914)))

(assert (=> bs!1567165 (not (= lambda!343838 lambda!343729))))

(declare-fun bs!1567166 () Bool)

(assert (= bs!1567166 (and b!6274481 d!1969230)))

(assert (=> bs!1567166 (not (= lambda!343838 lambda!343813))))

(declare-fun bs!1567167 () Bool)

(assert (= bs!1567167 (and b!6274481 d!1968854)))

(assert (=> bs!1567167 (not (= lambda!343838 lambda!343697))))

(declare-fun bs!1567168 () Bool)

(assert (= bs!1567168 (and b!6274481 d!1968828)))

(assert (=> bs!1567168 (not (= lambda!343838 lambda!343694))))

(assert (=> b!6274481 true))

(declare-fun bs!1567169 () Bool)

(declare-fun b!6274483 () Bool)

(assert (= bs!1567169 (and b!6274483 d!1969136)))

(declare-fun lambda!343839 () Int)

(assert (=> bs!1567169 (not (= lambda!343839 lambda!343796))))

(declare-fun bs!1567170 () Bool)

(assert (= bs!1567170 (and b!6274483 b!6274481)))

(declare-fun lt!2352740 () Int)

(declare-fun lt!2352737 () Int)

(assert (=> bs!1567170 (= (= lt!2352740 lt!2352737) (= lambda!343839 lambda!343838))))

(declare-fun bs!1567171 () Bool)

(assert (= bs!1567171 (and b!6274483 d!1969208)))

(assert (=> bs!1567171 (not (= lambda!343839 lambda!343811))))

(declare-fun bs!1567172 () Bool)

(assert (= bs!1567172 (and b!6274483 d!1968922)))

(assert (=> bs!1567172 (not (= lambda!343839 lambda!343732))))

(declare-fun bs!1567173 () Bool)

(assert (= bs!1567173 (and b!6274483 d!1969118)))

(assert (=> bs!1567173 (not (= lambda!343839 lambda!343791))))

(declare-fun bs!1567174 () Bool)

(assert (= bs!1567174 (and b!6274483 d!1968940)))

(assert (=> bs!1567174 (not (= lambda!343839 lambda!343736))))

(declare-fun bs!1567175 () Bool)

(assert (= bs!1567175 (and b!6274483 d!1969192)))

(assert (=> bs!1567175 (not (= lambda!343839 lambda!343807))))

(declare-fun bs!1567176 () Bool)

(assert (= bs!1567176 (and b!6274483 d!1968942)))

(assert (=> bs!1567176 (not (= lambda!343839 lambda!343739))))

(declare-fun bs!1567177 () Bool)

(assert (= bs!1567177 (and b!6274483 d!1968924)))

(assert (=> bs!1567177 (not (= lambda!343839 lambda!343733))))

(declare-fun bs!1567178 () Bool)

(assert (= bs!1567178 (and b!6274483 d!1968914)))

(assert (=> bs!1567178 (not (= lambda!343839 lambda!343729))))

(declare-fun bs!1567179 () Bool)

(assert (= bs!1567179 (and b!6274483 d!1969230)))

(assert (=> bs!1567179 (not (= lambda!343839 lambda!343813))))

(declare-fun bs!1567180 () Bool)

(assert (= bs!1567180 (and b!6274483 d!1968854)))

(assert (=> bs!1567180 (not (= lambda!343839 lambda!343697))))

(declare-fun bs!1567181 () Bool)

(assert (= bs!1567181 (and b!6274483 d!1968828)))

(assert (=> bs!1567181 (not (= lambda!343839 lambda!343694))))

(assert (=> b!6274483 true))

(declare-fun d!1969404 () Bool)

(declare-fun e!3816061 () Bool)

(assert (=> d!1969404 e!3816061))

(declare-fun res!2587999 () Bool)

(assert (=> d!1969404 (=> (not res!2587999) (not e!3816061))))

(assert (=> d!1969404 (= res!2587999 (>= lt!2352740 0))))

(declare-fun e!3816062 () Int)

(assert (=> d!1969404 (= lt!2352740 e!3816062)))

(declare-fun c!1137342 () Bool)

(assert (=> d!1969404 (= c!1137342 (is-Cons!64751 (exprs!6076 (h!71201 zl!343))))))

(assert (=> d!1969404 (= (contextDepth!210 (h!71201 zl!343)) lt!2352740)))

(assert (=> b!6274481 (= e!3816062 lt!2352737)))

(declare-fun regexDepth!311 (Regex!16192) Int)

(assert (=> b!6274481 (= lt!2352737 (maxBigInt!0 (regexDepth!311 (h!71199 (exprs!6076 (h!71201 zl!343)))) (contextDepth!210 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun lt!2352739 () Unit!158099)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!101 (List!64875 Int Int) Unit!158099)

(assert (=> b!6274481 (= lt!2352739 (lemmaForallRegexDepthBiggerThanTransitive!101 (t!378433 (exprs!6076 (h!71201 zl!343))) lt!2352737 (contextDepth!210 (Context!11153 (t!378433 (exprs!6076 (h!71201 zl!343)))))))))

(assert (=> b!6274481 (forall!15322 (t!378433 (exprs!6076 (h!71201 zl!343))) lambda!343838)))

(declare-fun lt!2352738 () Unit!158099)

(assert (=> b!6274481 (= lt!2352738 lt!2352739)))

(declare-fun b!6274482 () Bool)

(assert (=> b!6274482 (= e!3816062 0)))

(assert (=> b!6274483 (= e!3816061 (forall!15322 (exprs!6076 (h!71201 zl!343)) lambda!343839))))

(assert (= (and d!1969404 c!1137342) b!6274481))

(assert (= (and d!1969404 (not c!1137342)) b!6274482))

(assert (= (and d!1969404 res!2587999) b!6274483))

(declare-fun m!7096046 () Bool)

(assert (=> b!6274481 m!7096046))

(declare-fun m!7096048 () Bool)

(assert (=> b!6274481 m!7096048))

(declare-fun m!7096050 () Bool)

(assert (=> b!6274481 m!7096050))

(declare-fun m!7096052 () Bool)

(assert (=> b!6274481 m!7096052))

(assert (=> b!6274481 m!7096052))

(assert (=> b!6274481 m!7096048))

(declare-fun m!7096054 () Bool)

(assert (=> b!6274481 m!7096054))

(assert (=> b!6274481 m!7096048))

(declare-fun m!7096056 () Bool)

(assert (=> b!6274483 m!7096056))

(assert (=> b!6273222 d!1969404))

(declare-fun bs!1567182 () Bool)

(declare-fun b!6274486 () Bool)

(assert (= bs!1567182 (and b!6274486 b!6273217)))

(declare-fun lambda!343840 () Int)

(assert (=> bs!1567182 (= lambda!343840 lambda!343723)))

(declare-fun bs!1567183 () Bool)

(assert (= bs!1567183 (and b!6274486 b!6273222)))

(assert (=> bs!1567183 (= lambda!343840 lambda!343726)))

(declare-fun bs!1567184 () Bool)

(assert (= bs!1567184 (and b!6274486 d!1969134)))

(declare-fun lambda!343841 () Int)

(assert (=> bs!1567184 (not (= lambda!343841 lambda!343795))))

(declare-fun bs!1567185 () Bool)

(assert (= bs!1567185 (and b!6274486 d!1969384)))

(assert (=> bs!1567185 (not (= lambda!343841 lambda!343828))))

(declare-fun bs!1567186 () Bool)

(assert (= bs!1567186 (and b!6274486 d!1969252)))

(assert (=> bs!1567186 (not (= lambda!343841 lambda!343817))))

(declare-fun bs!1567187 () Bool)

(assert (= bs!1567187 (and b!6274486 d!1969242)))

(assert (=> bs!1567187 (not (= lambda!343841 lambda!343815))))

(declare-fun bs!1567188 () Bool)

(assert (= bs!1567188 (and b!6274486 b!6273219)))

(declare-fun lt!2352744 () Int)

(assert (=> bs!1567188 (= (= lt!2352744 lt!2352585) (= lambda!343841 lambda!343725))))

(declare-fun bs!1567189 () Bool)

(assert (= bs!1567189 (and b!6274486 d!1969114)))

(assert (=> bs!1567189 (not (= lambda!343841 lambda!343790))))

(declare-fun bs!1567190 () Bool)

(assert (= bs!1567190 (and b!6274486 d!1969400)))

(assert (=> bs!1567190 (not (= lambda!343841 lambda!343833))))

(assert (=> bs!1567183 (= (= lt!2352744 lt!2352591) (= lambda!343841 lambda!343727))))

(assert (=> bs!1567182 (= (= lt!2352744 lt!2352587) (= lambda!343841 lambda!343724))))

(declare-fun bs!1567191 () Bool)

(assert (= bs!1567191 (and b!6274486 b!6273224)))

(assert (=> bs!1567191 (= (= lt!2352744 lt!2352589) (= lambda!343841 lambda!343728))))

(declare-fun bs!1567192 () Bool)

(assert (= bs!1567192 (and b!6274486 d!1969272)))

(assert (=> bs!1567192 (not (= lambda!343841 lambda!343818))))

(declare-fun bs!1567193 () Bool)

(assert (= bs!1567193 (and b!6274486 d!1969324)))

(assert (=> bs!1567193 (not (= lambda!343841 lambda!343821))))

(declare-fun bs!1567194 () Bool)

(assert (= bs!1567194 (and b!6274486 d!1969352)))

(assert (=> bs!1567194 (not (= lambda!343841 lambda!343827))))

(assert (=> b!6274486 true))

(declare-fun bs!1567195 () Bool)

(declare-fun b!6274488 () Bool)

(assert (= bs!1567195 (and b!6274488 d!1969134)))

(declare-fun lambda!343842 () Int)

(assert (=> bs!1567195 (not (= lambda!343842 lambda!343795))))

(declare-fun bs!1567196 () Bool)

(assert (= bs!1567196 (and b!6274488 d!1969384)))

(assert (=> bs!1567196 (not (= lambda!343842 lambda!343828))))

(declare-fun bs!1567197 () Bool)

(assert (= bs!1567197 (and b!6274488 d!1969252)))

(assert (=> bs!1567197 (not (= lambda!343842 lambda!343817))))

(declare-fun bs!1567198 () Bool)

(assert (= bs!1567198 (and b!6274488 d!1969242)))

(assert (=> bs!1567198 (not (= lambda!343842 lambda!343815))))

(declare-fun bs!1567199 () Bool)

(assert (= bs!1567199 (and b!6274488 b!6273219)))

(declare-fun lt!2352742 () Int)

(assert (=> bs!1567199 (= (= lt!2352742 lt!2352585) (= lambda!343842 lambda!343725))))

(declare-fun bs!1567200 () Bool)

(assert (= bs!1567200 (and b!6274488 d!1969114)))

(assert (=> bs!1567200 (not (= lambda!343842 lambda!343790))))

(declare-fun bs!1567201 () Bool)

(assert (= bs!1567201 (and b!6274488 d!1969400)))

(assert (=> bs!1567201 (not (= lambda!343842 lambda!343833))))

(declare-fun bs!1567202 () Bool)

(assert (= bs!1567202 (and b!6274488 b!6273222)))

(assert (=> bs!1567202 (= (= lt!2352742 lt!2352591) (= lambda!343842 lambda!343727))))

(declare-fun bs!1567203 () Bool)

(assert (= bs!1567203 (and b!6274488 b!6273224)))

(assert (=> bs!1567203 (= (= lt!2352742 lt!2352589) (= lambda!343842 lambda!343728))))

(declare-fun bs!1567204 () Bool)

(assert (= bs!1567204 (and b!6274488 d!1969272)))

(assert (=> bs!1567204 (not (= lambda!343842 lambda!343818))))

(declare-fun bs!1567205 () Bool)

(assert (= bs!1567205 (and b!6274488 d!1969324)))

(assert (=> bs!1567205 (not (= lambda!343842 lambda!343821))))

(declare-fun bs!1567206 () Bool)

(assert (= bs!1567206 (and b!6274488 d!1969352)))

(assert (=> bs!1567206 (not (= lambda!343842 lambda!343827))))

(declare-fun bs!1567207 () Bool)

(assert (= bs!1567207 (and b!6274488 b!6274486)))

(assert (=> bs!1567207 (= (= lt!2352742 lt!2352744) (= lambda!343842 lambda!343841))))

(declare-fun bs!1567208 () Bool)

(assert (= bs!1567208 (and b!6274488 b!6273217)))

(assert (=> bs!1567208 (= (= lt!2352742 lt!2352587) (= lambda!343842 lambda!343724))))

(assert (=> b!6274488 true))

(declare-fun d!1969406 () Bool)

(declare-fun e!3816063 () Bool)

(assert (=> d!1969406 e!3816063))

(declare-fun res!2588000 () Bool)

(assert (=> d!1969406 (=> (not res!2588000) (not e!3816063))))

(assert (=> d!1969406 (= res!2588000 (>= lt!2352742 0))))

(declare-fun e!3816064 () Int)

(assert (=> d!1969406 (= lt!2352742 e!3816064)))

(declare-fun c!1137343 () Bool)

(assert (=> d!1969406 (= c!1137343 (is-Cons!64753 (t!378435 zl!343)))))

(assert (=> d!1969406 (= (zipperDepth!317 (t!378435 zl!343)) lt!2352742)))

(assert (=> b!6274486 (= e!3816064 lt!2352744)))

(assert (=> b!6274486 (= lt!2352744 (maxBigInt!0 (contextDepth!210 (h!71201 (t!378435 zl!343))) (zipperDepth!317 (t!378435 (t!378435 zl!343)))))))

(declare-fun lt!2352741 () Unit!158099)

(assert (=> b!6274486 (= lt!2352741 (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 (t!378435 zl!343)) lt!2352744 (zipperDepth!317 (t!378435 (t!378435 zl!343))) lambda!343840))))

(assert (=> b!6274486 (forall!15323 (t!378435 (t!378435 zl!343)) lambda!343841)))

(declare-fun lt!2352743 () Unit!158099)

(assert (=> b!6274486 (= lt!2352743 lt!2352741)))

(declare-fun b!6274487 () Bool)

(assert (=> b!6274487 (= e!3816064 0)))

(assert (=> b!6274488 (= e!3816063 (forall!15323 (t!378435 zl!343) lambda!343842))))

(assert (= (and d!1969406 c!1137343) b!6274486))

(assert (= (and d!1969406 (not c!1137343)) b!6274487))

(assert (= (and d!1969406 res!2588000) b!6274488))

(declare-fun m!7096058 () Bool)

(assert (=> b!6274486 m!7096058))

(declare-fun m!7096060 () Bool)

(assert (=> b!6274486 m!7096060))

(declare-fun m!7096062 () Bool)

(assert (=> b!6274486 m!7096062))

(declare-fun m!7096064 () Bool)

(assert (=> b!6274486 m!7096064))

(assert (=> b!6274486 m!7096062))

(assert (=> b!6274486 m!7096060))

(assert (=> b!6274486 m!7096062))

(declare-fun m!7096066 () Bool)

(assert (=> b!6274486 m!7096066))

(declare-fun m!7096068 () Bool)

(assert (=> b!6274488 m!7096068))

(assert (=> b!6273222 d!1969406))

(declare-fun d!1969408 () Bool)

(assert (=> d!1969408 (= (maxBigInt!0 (contextDepth!210 (h!71201 zl!343)) (zipperDepth!317 (t!378435 zl!343))) (ite (>= (contextDepth!210 (h!71201 zl!343)) (zipperDepth!317 (t!378435 zl!343))) (contextDepth!210 (h!71201 zl!343)) (zipperDepth!317 (t!378435 zl!343))))))

(assert (=> b!6273222 d!1969408))

(declare-fun b!6274490 () Bool)

(declare-fun e!3816068 () (Set Context!11152))

(declare-fun e!3816066 () (Set Context!11152))

(assert (=> b!6274490 (= e!3816068 e!3816066)))

(declare-fun c!1137345 () Bool)

(assert (=> b!6274490 (= c!1137345 (is-Concat!25037 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun bm!530805 () Bool)

(declare-fun call!530814 () (Set Context!11152))

(declare-fun call!530810 () (Set Context!11152))

(assert (=> bm!530805 (= call!530814 call!530810)))

(declare-fun b!6274491 () Bool)

(declare-fun e!3816067 () Bool)

(assert (=> b!6274491 (= e!3816067 (nullable!6185 (regOne!32896 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun b!6274492 () Bool)

(declare-fun c!1137348 () Bool)

(assert (=> b!6274492 (= c!1137348 (is-Star!16192 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun e!3816070 () (Set Context!11152))

(assert (=> b!6274492 (= e!3816066 e!3816070)))

(declare-fun b!6274493 () Bool)

(assert (=> b!6274493 (= e!3816070 (as set.empty (Set Context!11152)))))

(declare-fun c!1137344 () Bool)

(declare-fun d!1969410 () Bool)

(assert (=> d!1969410 (= c!1137344 (and (is-ElementMatch!16192 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (= (c!1136845 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (h!71200 s!2326))))))

(declare-fun e!3816065 () (Set Context!11152))

(assert (=> d!1969410 (= (derivationStepZipperDown!1440 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))) (ite c!1136897 lt!2352413 (Context!11153 call!530577)) (h!71200 s!2326)) e!3816065)))

(declare-fun bm!530806 () Bool)

(declare-fun call!530812 () (Set Context!11152))

(declare-fun call!530811 () List!64875)

(declare-fun c!1137347 () Bool)

(assert (=> bm!530806 (= call!530812 (derivationStepZipperDown!1440 (ite c!1137347 (regTwo!32897 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (regOne!32896 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))) (ite c!1137347 (ite c!1136897 lt!2352413 (Context!11153 call!530577)) (Context!11153 call!530811)) (h!71200 s!2326)))))

(declare-fun b!6274494 () Bool)

(declare-fun c!1137346 () Bool)

(assert (=> b!6274494 (= c!1137346 e!3816067)))

(declare-fun res!2588001 () Bool)

(assert (=> b!6274494 (=> (not res!2588001) (not e!3816067))))

(assert (=> b!6274494 (= res!2588001 (is-Concat!25037 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun e!3816069 () (Set Context!11152))

(assert (=> b!6274494 (= e!3816069 e!3816068)))

(declare-fun b!6274495 () Bool)

(declare-fun call!530815 () (Set Context!11152))

(assert (=> b!6274495 (= e!3816069 (set.union call!530815 call!530812))))

(declare-fun b!6274496 () Bool)

(assert (=> b!6274496 (= e!3816065 e!3816069)))

(assert (=> b!6274496 (= c!1137347 (is-Union!16192 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))))))

(declare-fun bm!530807 () Bool)

(assert (=> bm!530807 (= call!530810 call!530815)))

(declare-fun call!530813 () List!64875)

(declare-fun bm!530808 () Bool)

(assert (=> bm!530808 (= call!530815 (derivationStepZipperDown!1440 (ite c!1137347 (regOne!32897 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (ite c!1137346 (regTwo!32896 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (ite c!1137345 (regOne!32896 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (reg!16521 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))) (ite (or c!1137347 c!1137346) (ite c!1136897 lt!2352413 (Context!11153 call!530577)) (Context!11153 call!530813)) (h!71200 s!2326)))))

(declare-fun b!6274497 () Bool)

(assert (=> b!6274497 (= e!3816070 call!530814)))

(declare-fun bm!530809 () Bool)

(assert (=> bm!530809 (= call!530811 ($colon$colon!2057 (exprs!6076 (ite c!1136897 lt!2352413 (Context!11153 call!530577))) (ite (or c!1137346 c!1137345) (regTwo!32896 (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))))) (ite c!1136897 (regTwo!32897 (h!71199 (exprs!6076 (h!71201 zl!343)))) (regOne!32896 (h!71199 (exprs!6076 (h!71201 zl!343))))))))))

(declare-fun bm!530810 () Bool)

(assert (=> bm!530810 (= call!530813 call!530811)))

(declare-fun b!6274498 () Bool)

(assert (=> b!6274498 (= e!3816065 (set.insert (ite c!1136897 lt!2352413 (Context!11153 call!530577)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274499 () Bool)

(assert (=> b!6274499 (= e!3816068 (set.union call!530812 call!530810))))

(declare-fun b!6274500 () Bool)

(assert (=> b!6274500 (= e!3816066 call!530814)))

(assert (= (and d!1969410 c!1137344) b!6274498))

(assert (= (and d!1969410 (not c!1137344)) b!6274496))

(assert (= (and b!6274496 c!1137347) b!6274495))

(assert (= (and b!6274496 (not c!1137347)) b!6274494))

(assert (= (and b!6274494 res!2588001) b!6274491))

(assert (= (and b!6274494 c!1137346) b!6274499))

(assert (= (and b!6274494 (not c!1137346)) b!6274490))

(assert (= (and b!6274490 c!1137345) b!6274500))

(assert (= (and b!6274490 (not c!1137345)) b!6274492))

(assert (= (and b!6274492 c!1137348) b!6274497))

(assert (= (and b!6274492 (not c!1137348)) b!6274493))

(assert (= (or b!6274500 b!6274497) bm!530810))

(assert (= (or b!6274500 b!6274497) bm!530805))

(assert (= (or b!6274499 bm!530810) bm!530809))

(assert (= (or b!6274499 bm!530805) bm!530807))

(assert (= (or b!6274495 b!6274499) bm!530806))

(assert (= (or b!6274495 bm!530807) bm!530808))

(declare-fun m!7096070 () Bool)

(assert (=> bm!530808 m!7096070))

(declare-fun m!7096072 () Bool)

(assert (=> bm!530806 m!7096072))

(declare-fun m!7096074 () Bool)

(assert (=> b!6274491 m!7096074))

(declare-fun m!7096076 () Bool)

(assert (=> b!6274498 m!7096076))

(declare-fun m!7096078 () Bool)

(assert (=> bm!530809 m!7096078))

(assert (=> bm!530572 d!1969410))

(declare-fun b!6274501 () Bool)

(declare-fun e!3816076 () Bool)

(declare-fun call!530816 () Bool)

(assert (=> b!6274501 (= e!3816076 call!530816)))

(declare-fun b!6274502 () Bool)

(declare-fun e!3816075 () Bool)

(declare-fun e!3816072 () Bool)

(assert (=> b!6274502 (= e!3816075 e!3816072)))

(declare-fun res!2588005 () Bool)

(assert (=> b!6274502 (= res!2588005 (not (nullable!6185 (reg!16521 lt!2352603))))))

(assert (=> b!6274502 (=> (not res!2588005) (not e!3816072))))

(declare-fun call!530818 () Bool)

(declare-fun c!1137349 () Bool)

(declare-fun bm!530811 () Bool)

(declare-fun c!1137350 () Bool)

(assert (=> bm!530811 (= call!530818 (validRegex!7928 (ite c!1137349 (reg!16521 lt!2352603) (ite c!1137350 (regOne!32897 lt!2352603) (regOne!32896 lt!2352603)))))))

(declare-fun b!6274503 () Bool)

(declare-fun e!3816077 () Bool)

(assert (=> b!6274503 (= e!3816077 e!3816075)))

(assert (=> b!6274503 (= c!1137349 (is-Star!16192 lt!2352603))))

(declare-fun b!6274504 () Bool)

(declare-fun e!3816074 () Bool)

(assert (=> b!6274504 (= e!3816075 e!3816074)))

(assert (=> b!6274504 (= c!1137350 (is-Union!16192 lt!2352603))))

(declare-fun d!1969412 () Bool)

(declare-fun res!2588002 () Bool)

(assert (=> d!1969412 (=> res!2588002 e!3816077)))

(assert (=> d!1969412 (= res!2588002 (is-ElementMatch!16192 lt!2352603))))

(assert (=> d!1969412 (= (validRegex!7928 lt!2352603) e!3816077)))

(declare-fun bm!530812 () Bool)

(declare-fun call!530817 () Bool)

(assert (=> bm!530812 (= call!530817 call!530818)))

(declare-fun b!6274505 () Bool)

(declare-fun res!2588004 () Bool)

(declare-fun e!3816073 () Bool)

(assert (=> b!6274505 (=> res!2588004 e!3816073)))

(assert (=> b!6274505 (= res!2588004 (not (is-Concat!25037 lt!2352603)))))

(assert (=> b!6274505 (= e!3816074 e!3816073)))

(declare-fun b!6274506 () Bool)

(declare-fun e!3816071 () Bool)

(assert (=> b!6274506 (= e!3816073 e!3816071)))

(declare-fun res!2588003 () Bool)

(assert (=> b!6274506 (=> (not res!2588003) (not e!3816071))))

(assert (=> b!6274506 (= res!2588003 call!530817)))

(declare-fun b!6274507 () Bool)

(assert (=> b!6274507 (= e!3816072 call!530818)))

(declare-fun bm!530813 () Bool)

(assert (=> bm!530813 (= call!530816 (validRegex!7928 (ite c!1137350 (regTwo!32897 lt!2352603) (regTwo!32896 lt!2352603))))))

(declare-fun b!6274508 () Bool)

(assert (=> b!6274508 (= e!3816071 call!530816)))

(declare-fun b!6274509 () Bool)

(declare-fun res!2588006 () Bool)

(assert (=> b!6274509 (=> (not res!2588006) (not e!3816076))))

(assert (=> b!6274509 (= res!2588006 call!530817)))

(assert (=> b!6274509 (= e!3816074 e!3816076)))

(assert (= (and d!1969412 (not res!2588002)) b!6274503))

(assert (= (and b!6274503 c!1137349) b!6274502))

(assert (= (and b!6274503 (not c!1137349)) b!6274504))

(assert (= (and b!6274502 res!2588005) b!6274507))

(assert (= (and b!6274504 c!1137350) b!6274509))

(assert (= (and b!6274504 (not c!1137350)) b!6274505))

(assert (= (and b!6274509 res!2588006) b!6274501))

(assert (= (and b!6274505 (not res!2588004)) b!6274506))

(assert (= (and b!6274506 res!2588003) b!6274508))

(assert (= (or b!6274501 b!6274508) bm!530813))

(assert (= (or b!6274509 b!6274506) bm!530812))

(assert (= (or b!6274507 bm!530812) bm!530811))

(declare-fun m!7096080 () Bool)

(assert (=> b!6274502 m!7096080))

(declare-fun m!7096082 () Bool)

(assert (=> bm!530811 m!7096082))

(declare-fun m!7096084 () Bool)

(assert (=> bm!530813 m!7096084))

(assert (=> d!1968924 d!1969412))

(declare-fun d!1969414 () Bool)

(declare-fun res!2588007 () Bool)

(declare-fun e!3816078 () Bool)

(assert (=> d!1969414 (=> res!2588007 e!3816078)))

(assert (=> d!1969414 (= res!2588007 (is-Nil!64751 lt!2352407))))

(assert (=> d!1969414 (= (forall!15322 lt!2352407 lambda!343733) e!3816078)))

(declare-fun b!6274510 () Bool)

(declare-fun e!3816079 () Bool)

(assert (=> b!6274510 (= e!3816078 e!3816079)))

(declare-fun res!2588008 () Bool)

(assert (=> b!6274510 (=> (not res!2588008) (not e!3816079))))

(assert (=> b!6274510 (= res!2588008 (dynLambda!25612 lambda!343733 (h!71199 lt!2352407)))))

(declare-fun b!6274511 () Bool)

(assert (=> b!6274511 (= e!3816079 (forall!15322 (t!378433 lt!2352407) lambda!343733))))

(assert (= (and d!1969414 (not res!2588007)) b!6274510))

(assert (= (and b!6274510 res!2588008) b!6274511))

(declare-fun b_lambda!238913 () Bool)

(assert (=> (not b_lambda!238913) (not b!6274510)))

(declare-fun m!7096086 () Bool)

(assert (=> b!6274510 m!7096086))

(declare-fun m!7096088 () Bool)

(assert (=> b!6274511 m!7096088))

(assert (=> d!1968924 d!1969414))

(declare-fun b!6274512 () Bool)

(declare-fun e!3816085 () Bool)

(declare-fun call!530819 () Bool)

(assert (=> b!6274512 (= e!3816085 call!530819)))

(declare-fun b!6274513 () Bool)

(declare-fun e!3816084 () Bool)

(declare-fun e!3816081 () Bool)

(assert (=> b!6274513 (= e!3816084 e!3816081)))

(declare-fun res!2588012 () Bool)

(assert (=> b!6274513 (= res!2588012 (not (nullable!6185 (reg!16521 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))))

(assert (=> b!6274513 (=> (not res!2588012) (not e!3816081))))

(declare-fun c!1137351 () Bool)

(declare-fun c!1137352 () Bool)

(declare-fun bm!530814 () Bool)

(declare-fun call!530821 () Bool)

(assert (=> bm!530814 (= call!530821 (validRegex!7928 (ite c!1137351 (reg!16521 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))) (ite c!1137352 (regOne!32897 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))) (regOne!32896 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292))))))))))

(declare-fun b!6274514 () Bool)

(declare-fun e!3816086 () Bool)

(assert (=> b!6274514 (= e!3816086 e!3816084)))

(assert (=> b!6274514 (= c!1137351 (is-Star!16192 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))

(declare-fun b!6274515 () Bool)

(declare-fun e!3816083 () Bool)

(assert (=> b!6274515 (= e!3816084 e!3816083)))

(assert (=> b!6274515 (= c!1137352 (is-Union!16192 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))

(declare-fun d!1969416 () Bool)

(declare-fun res!2588009 () Bool)

(assert (=> d!1969416 (=> res!2588009 e!3816086)))

(assert (=> d!1969416 (= res!2588009 (is-ElementMatch!16192 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))

(assert (=> d!1969416 (= (validRegex!7928 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))) e!3816086)))

(declare-fun bm!530815 () Bool)

(declare-fun call!530820 () Bool)

(assert (=> bm!530815 (= call!530820 call!530821)))

(declare-fun b!6274516 () Bool)

(declare-fun res!2588011 () Bool)

(declare-fun e!3816082 () Bool)

(assert (=> b!6274516 (=> res!2588011 e!3816082)))

(assert (=> b!6274516 (= res!2588011 (not (is-Concat!25037 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292))))))))

(assert (=> b!6274516 (= e!3816083 e!3816082)))

(declare-fun b!6274517 () Bool)

(declare-fun e!3816080 () Bool)

(assert (=> b!6274517 (= e!3816082 e!3816080)))

(declare-fun res!2588010 () Bool)

(assert (=> b!6274517 (=> (not res!2588010) (not e!3816080))))

(assert (=> b!6274517 (= res!2588010 call!530820)))

(declare-fun b!6274518 () Bool)

(assert (=> b!6274518 (= e!3816081 call!530821)))

(declare-fun bm!530816 () Bool)

(assert (=> bm!530816 (= call!530819 (validRegex!7928 (ite c!1137352 (regTwo!32897 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))) (regTwo!32896 (ite c!1136964 (reg!16521 r!7292) (ite c!1136965 (regOne!32897 r!7292) (regOne!32896 r!7292)))))))))

(declare-fun b!6274519 () Bool)

(assert (=> b!6274519 (= e!3816080 call!530819)))

(declare-fun b!6274520 () Bool)

(declare-fun res!2588013 () Bool)

(assert (=> b!6274520 (=> (not res!2588013) (not e!3816085))))

(assert (=> b!6274520 (= res!2588013 call!530820)))

(assert (=> b!6274520 (= e!3816083 e!3816085)))

(assert (= (and d!1969416 (not res!2588009)) b!6274514))

(assert (= (and b!6274514 c!1137351) b!6274513))

(assert (= (and b!6274514 (not c!1137351)) b!6274515))

(assert (= (and b!6274513 res!2588012) b!6274518))

(assert (= (and b!6274515 c!1137352) b!6274520))

(assert (= (and b!6274515 (not c!1137352)) b!6274516))

(assert (= (and b!6274520 res!2588013) b!6274512))

(assert (= (and b!6274516 (not res!2588011)) b!6274517))

(assert (= (and b!6274517 res!2588010) b!6274519))

(assert (= (or b!6274512 b!6274519) bm!530816))

(assert (= (or b!6274520 b!6274517) bm!530815))

(assert (= (or b!6274518 bm!530815) bm!530814))

(declare-fun m!7096090 () Bool)

(assert (=> b!6274513 m!7096090))

(declare-fun m!7096092 () Bool)

(assert (=> bm!530814 m!7096092))

(declare-fun m!7096094 () Bool)

(assert (=> bm!530816 m!7096094))

(assert (=> bm!530608 d!1969416))

(assert (=> bm!530613 d!1969106))

(declare-fun b!6274522 () Bool)

(declare-fun e!3816088 () List!64876)

(assert (=> b!6274522 (= e!3816088 (Cons!64752 (h!71200 (_1!36474 (get!22378 lt!2352569))) (++!14266 (t!378434 (_1!36474 (get!22378 lt!2352569))) (_2!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274524 () Bool)

(declare-fun e!3816087 () Bool)

(declare-fun lt!2352745 () List!64876)

(assert (=> b!6274524 (= e!3816087 (or (not (= (_2!36474 (get!22378 lt!2352569)) Nil!64752)) (= lt!2352745 (_1!36474 (get!22378 lt!2352569)))))))

(declare-fun b!6274523 () Bool)

(declare-fun res!2588014 () Bool)

(assert (=> b!6274523 (=> (not res!2588014) (not e!3816087))))

(assert (=> b!6274523 (= res!2588014 (= (size!40311 lt!2352745) (+ (size!40311 (_1!36474 (get!22378 lt!2352569))) (size!40311 (_2!36474 (get!22378 lt!2352569))))))))

(declare-fun b!6274521 () Bool)

(assert (=> b!6274521 (= e!3816088 (_2!36474 (get!22378 lt!2352569)))))

(declare-fun d!1969418 () Bool)

(assert (=> d!1969418 e!3816087))

(declare-fun res!2588015 () Bool)

(assert (=> d!1969418 (=> (not res!2588015) (not e!3816087))))

(assert (=> d!1969418 (= res!2588015 (= (content!12167 lt!2352745) (set.union (content!12167 (_1!36474 (get!22378 lt!2352569))) (content!12167 (_2!36474 (get!22378 lt!2352569))))))))

(assert (=> d!1969418 (= lt!2352745 e!3816088)))

(declare-fun c!1137353 () Bool)

(assert (=> d!1969418 (= c!1137353 (is-Nil!64752 (_1!36474 (get!22378 lt!2352569))))))

(assert (=> d!1969418 (= (++!14266 (_1!36474 (get!22378 lt!2352569)) (_2!36474 (get!22378 lt!2352569))) lt!2352745)))

(assert (= (and d!1969418 c!1137353) b!6274521))

(assert (= (and d!1969418 (not c!1137353)) b!6274522))

(assert (= (and d!1969418 res!2588015) b!6274523))

(assert (= (and b!6274523 res!2588014) b!6274524))

(declare-fun m!7096096 () Bool)

(assert (=> b!6274522 m!7096096))

(declare-fun m!7096098 () Bool)

(assert (=> b!6274523 m!7096098))

(declare-fun m!7096100 () Bool)

(assert (=> b!6274523 m!7096100))

(declare-fun m!7096102 () Bool)

(assert (=> b!6274523 m!7096102))

(declare-fun m!7096104 () Bool)

(assert (=> d!1969418 m!7096104))

(declare-fun m!7096106 () Bool)

(assert (=> d!1969418 m!7096106))

(declare-fun m!7096108 () Bool)

(assert (=> d!1969418 m!7096108))

(assert (=> b!6273174 d!1969418))

(assert (=> b!6273174 d!1969216))

(declare-fun bs!1567209 () Bool)

(declare-fun b!6274525 () Bool)

(assert (= bs!1567209 (and b!6274525 d!1969136)))

(declare-fun lambda!343843 () Int)

(assert (=> bs!1567209 (not (= lambda!343843 lambda!343796))))

(declare-fun bs!1567210 () Bool)

(assert (= bs!1567210 (and b!6274525 b!6274481)))

(declare-fun lt!2352746 () Int)

(assert (=> bs!1567210 (= (= lt!2352746 lt!2352737) (= lambda!343843 lambda!343838))))

(declare-fun bs!1567211 () Bool)

(assert (= bs!1567211 (and b!6274525 d!1969208)))

(assert (=> bs!1567211 (not (= lambda!343843 lambda!343811))))

(declare-fun bs!1567212 () Bool)

(assert (= bs!1567212 (and b!6274525 d!1968922)))

(assert (=> bs!1567212 (not (= lambda!343843 lambda!343732))))

(declare-fun bs!1567213 () Bool)

(assert (= bs!1567213 (and b!6274525 d!1969118)))

(assert (=> bs!1567213 (not (= lambda!343843 lambda!343791))))

(declare-fun bs!1567214 () Bool)

(assert (= bs!1567214 (and b!6274525 d!1968940)))

(assert (=> bs!1567214 (not (= lambda!343843 lambda!343736))))

(declare-fun bs!1567215 () Bool)

(assert (= bs!1567215 (and b!6274525 b!6274483)))

(assert (=> bs!1567215 (= (= lt!2352746 lt!2352740) (= lambda!343843 lambda!343839))))

(declare-fun bs!1567216 () Bool)

(assert (= bs!1567216 (and b!6274525 d!1969192)))

(assert (=> bs!1567216 (not (= lambda!343843 lambda!343807))))

(declare-fun bs!1567217 () Bool)

(assert (= bs!1567217 (and b!6274525 d!1968942)))

(assert (=> bs!1567217 (not (= lambda!343843 lambda!343739))))

(declare-fun bs!1567218 () Bool)

(assert (= bs!1567218 (and b!6274525 d!1968924)))

(assert (=> bs!1567218 (not (= lambda!343843 lambda!343733))))

(declare-fun bs!1567219 () Bool)

(assert (= bs!1567219 (and b!6274525 d!1968914)))

(assert (=> bs!1567219 (not (= lambda!343843 lambda!343729))))

(declare-fun bs!1567220 () Bool)

(assert (= bs!1567220 (and b!6274525 d!1969230)))

(assert (=> bs!1567220 (not (= lambda!343843 lambda!343813))))

(declare-fun bs!1567221 () Bool)

(assert (= bs!1567221 (and b!6274525 d!1968854)))

(assert (=> bs!1567221 (not (= lambda!343843 lambda!343697))))

(declare-fun bs!1567222 () Bool)

(assert (= bs!1567222 (and b!6274525 d!1968828)))

(assert (=> bs!1567222 (not (= lambda!343843 lambda!343694))))

(assert (=> b!6274525 true))

(declare-fun bs!1567223 () Bool)

(declare-fun b!6274527 () Bool)

(assert (= bs!1567223 (and b!6274527 d!1969136)))

(declare-fun lambda!343844 () Int)

(assert (=> bs!1567223 (not (= lambda!343844 lambda!343796))))

(declare-fun bs!1567224 () Bool)

(assert (= bs!1567224 (and b!6274527 b!6274481)))

(declare-fun lt!2352749 () Int)

(assert (=> bs!1567224 (= (= lt!2352749 lt!2352737) (= lambda!343844 lambda!343838))))

(declare-fun bs!1567225 () Bool)

(assert (= bs!1567225 (and b!6274527 d!1969208)))

(assert (=> bs!1567225 (not (= lambda!343844 lambda!343811))))

(declare-fun bs!1567226 () Bool)

(assert (= bs!1567226 (and b!6274527 b!6274525)))

(assert (=> bs!1567226 (= (= lt!2352749 lt!2352746) (= lambda!343844 lambda!343843))))

(declare-fun bs!1567227 () Bool)

(assert (= bs!1567227 (and b!6274527 d!1968922)))

(assert (=> bs!1567227 (not (= lambda!343844 lambda!343732))))

(declare-fun bs!1567228 () Bool)

(assert (= bs!1567228 (and b!6274527 d!1969118)))

(assert (=> bs!1567228 (not (= lambda!343844 lambda!343791))))

(declare-fun bs!1567229 () Bool)

(assert (= bs!1567229 (and b!6274527 d!1968940)))

(assert (=> bs!1567229 (not (= lambda!343844 lambda!343736))))

(declare-fun bs!1567230 () Bool)

(assert (= bs!1567230 (and b!6274527 b!6274483)))

(assert (=> bs!1567230 (= (= lt!2352749 lt!2352740) (= lambda!343844 lambda!343839))))

(declare-fun bs!1567231 () Bool)

(assert (= bs!1567231 (and b!6274527 d!1969192)))

(assert (=> bs!1567231 (not (= lambda!343844 lambda!343807))))

(declare-fun bs!1567232 () Bool)

(assert (= bs!1567232 (and b!6274527 d!1968942)))

(assert (=> bs!1567232 (not (= lambda!343844 lambda!343739))))

(declare-fun bs!1567233 () Bool)

(assert (= bs!1567233 (and b!6274527 d!1968924)))

(assert (=> bs!1567233 (not (= lambda!343844 lambda!343733))))

(declare-fun bs!1567234 () Bool)

(assert (= bs!1567234 (and b!6274527 d!1968914)))

(assert (=> bs!1567234 (not (= lambda!343844 lambda!343729))))

(declare-fun bs!1567235 () Bool)

(assert (= bs!1567235 (and b!6274527 d!1969230)))

(assert (=> bs!1567235 (not (= lambda!343844 lambda!343813))))

(declare-fun bs!1567236 () Bool)

(assert (= bs!1567236 (and b!6274527 d!1968854)))

(assert (=> bs!1567236 (not (= lambda!343844 lambda!343697))))

(declare-fun bs!1567237 () Bool)

(assert (= bs!1567237 (and b!6274527 d!1968828)))

(assert (=> bs!1567237 (not (= lambda!343844 lambda!343694))))

(assert (=> b!6274527 true))

(declare-fun d!1969420 () Bool)

(declare-fun e!3816089 () Bool)

(assert (=> d!1969420 e!3816089))

(declare-fun res!2588016 () Bool)

(assert (=> d!1969420 (=> (not res!2588016) (not e!3816089))))

(assert (=> d!1969420 (= res!2588016 (>= lt!2352749 0))))

(declare-fun e!3816090 () Int)

(assert (=> d!1969420 (= lt!2352749 e!3816090)))

(declare-fun c!1137354 () Bool)

(assert (=> d!1969420 (= c!1137354 (is-Cons!64751 (exprs!6076 (h!71201 lt!2352399))))))

(assert (=> d!1969420 (= (contextDepth!210 (h!71201 lt!2352399)) lt!2352749)))

(assert (=> b!6274525 (= e!3816090 lt!2352746)))

(assert (=> b!6274525 (= lt!2352746 (maxBigInt!0 (regexDepth!311 (h!71199 (exprs!6076 (h!71201 lt!2352399)))) (contextDepth!210 (Context!11153 (t!378433 (exprs!6076 (h!71201 lt!2352399)))))))))

(declare-fun lt!2352748 () Unit!158099)

(assert (=> b!6274525 (= lt!2352748 (lemmaForallRegexDepthBiggerThanTransitive!101 (t!378433 (exprs!6076 (h!71201 lt!2352399))) lt!2352746 (contextDepth!210 (Context!11153 (t!378433 (exprs!6076 (h!71201 lt!2352399)))))))))

(assert (=> b!6274525 (forall!15322 (t!378433 (exprs!6076 (h!71201 lt!2352399))) lambda!343843)))

(declare-fun lt!2352747 () Unit!158099)

(assert (=> b!6274525 (= lt!2352747 lt!2352748)))

(declare-fun b!6274526 () Bool)

(assert (=> b!6274526 (= e!3816090 0)))

(assert (=> b!6274527 (= e!3816089 (forall!15322 (exprs!6076 (h!71201 lt!2352399)) lambda!343844))))

(assert (= (and d!1969420 c!1137354) b!6274525))

(assert (= (and d!1969420 (not c!1137354)) b!6274526))

(assert (= (and d!1969420 res!2588016) b!6274527))

(declare-fun m!7096110 () Bool)

(assert (=> b!6274525 m!7096110))

(declare-fun m!7096112 () Bool)

(assert (=> b!6274525 m!7096112))

(declare-fun m!7096114 () Bool)

(assert (=> b!6274525 m!7096114))

(declare-fun m!7096116 () Bool)

(assert (=> b!6274525 m!7096116))

(assert (=> b!6274525 m!7096116))

(assert (=> b!6274525 m!7096112))

(declare-fun m!7096118 () Bool)

(assert (=> b!6274525 m!7096118))

(assert (=> b!6274525 m!7096112))

(declare-fun m!7096120 () Bool)

(assert (=> b!6274527 m!7096120))

(assert (=> b!6273217 d!1969420))

(declare-fun bs!1567238 () Bool)

(declare-fun d!1969422 () Bool)

(assert (= bs!1567238 (and d!1969422 d!1969134)))

(declare-fun lambda!343845 () Int)

(assert (=> bs!1567238 (not (= lambda!343845 lambda!343795))))

(declare-fun bs!1567239 () Bool)

(assert (= bs!1567239 (and d!1969422 d!1969384)))

(assert (=> bs!1567239 (not (= lambda!343845 lambda!343828))))

(declare-fun bs!1567240 () Bool)

(assert (= bs!1567240 (and d!1969422 d!1969252)))

(assert (=> bs!1567240 (not (= lambda!343845 lambda!343817))))

(declare-fun bs!1567241 () Bool)

(assert (= bs!1567241 (and d!1969422 d!1969242)))

(assert (=> bs!1567241 (not (= lambda!343845 lambda!343815))))

(declare-fun bs!1567242 () Bool)

(assert (= bs!1567242 (and d!1969422 b!6273219)))

(assert (=> bs!1567242 (not (= lambda!343845 lambda!343725))))

(declare-fun bs!1567243 () Bool)

(assert (= bs!1567243 (and d!1969422 d!1969114)))

(assert (=> bs!1567243 (not (= lambda!343845 lambda!343790))))

(declare-fun bs!1567244 () Bool)

(assert (= bs!1567244 (and d!1969422 d!1969400)))

(assert (=> bs!1567244 (= (and (= lt!2352587 lt!2352591) (= lambda!343723 lambda!343726)) (= lambda!343845 lambda!343833))))

(declare-fun bs!1567245 () Bool)

(assert (= bs!1567245 (and d!1969422 b!6273222)))

(assert (=> bs!1567245 (not (= lambda!343845 lambda!343727))))

(declare-fun bs!1567246 () Bool)

(assert (= bs!1567246 (and d!1969422 b!6274488)))

(assert (=> bs!1567246 (not (= lambda!343845 lambda!343842))))

(declare-fun bs!1567247 () Bool)

(assert (= bs!1567247 (and d!1969422 b!6273224)))

(assert (=> bs!1567247 (not (= lambda!343845 lambda!343728))))

(declare-fun bs!1567248 () Bool)

(assert (= bs!1567248 (and d!1969422 d!1969272)))

(assert (=> bs!1567248 (not (= lambda!343845 lambda!343818))))

(declare-fun bs!1567249 () Bool)

(assert (= bs!1567249 (and d!1969422 d!1969324)))

(assert (=> bs!1567249 (not (= lambda!343845 lambda!343821))))

(declare-fun bs!1567250 () Bool)

(assert (= bs!1567250 (and d!1969422 d!1969352)))

(assert (=> bs!1567250 (not (= lambda!343845 lambda!343827))))

(declare-fun bs!1567251 () Bool)

(assert (= bs!1567251 (and d!1969422 b!6274486)))

(assert (=> bs!1567251 (not (= lambda!343845 lambda!343841))))

(declare-fun bs!1567252 () Bool)

(assert (= bs!1567252 (and d!1969422 b!6273217)))

(assert (=> bs!1567252 (not (= lambda!343845 lambda!343724))))

(assert (=> d!1969422 true))

(assert (=> d!1969422 true))

(assert (=> d!1969422 (< (dynLambda!25614 order!27461 lambda!343723) (dynLambda!25615 order!27463 lambda!343845))))

(assert (=> d!1969422 (forall!15323 (t!378435 lt!2352399) lambda!343845)))

(declare-fun lt!2352750 () Unit!158099)

(assert (=> d!1969422 (= lt!2352750 (choose!46562 (t!378435 lt!2352399) lt!2352587 (zipperDepth!317 (t!378435 lt!2352399)) lambda!343723))))

(assert (=> d!1969422 (>= lt!2352587 (zipperDepth!317 (t!378435 lt!2352399)))))

(assert (=> d!1969422 (= (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 lt!2352399) lt!2352587 (zipperDepth!317 (t!378435 lt!2352399)) lambda!343723) lt!2352750)))

(declare-fun bs!1567253 () Bool)

(assert (= bs!1567253 d!1969422))

(declare-fun m!7096122 () Bool)

(assert (=> bs!1567253 m!7096122))

(assert (=> bs!1567253 m!7094854))

(declare-fun m!7096124 () Bool)

(assert (=> bs!1567253 m!7096124))

(assert (=> b!6273217 d!1969422))

(declare-fun d!1969424 () Bool)

(assert (=> d!1969424 (= (maxBigInt!0 (contextDepth!210 (h!71201 lt!2352399)) (zipperDepth!317 (t!378435 lt!2352399))) (ite (>= (contextDepth!210 (h!71201 lt!2352399)) (zipperDepth!317 (t!378435 lt!2352399))) (contextDepth!210 (h!71201 lt!2352399)) (zipperDepth!317 (t!378435 lt!2352399))))))

(assert (=> b!6273217 d!1969424))

(declare-fun d!1969426 () Bool)

(declare-fun res!2588017 () Bool)

(declare-fun e!3816091 () Bool)

(assert (=> d!1969426 (=> res!2588017 e!3816091)))

(assert (=> d!1969426 (= res!2588017 (is-Nil!64753 (t!378435 lt!2352399)))))

(assert (=> d!1969426 (= (forall!15323 (t!378435 lt!2352399) lambda!343724) e!3816091)))

(declare-fun b!6274528 () Bool)

(declare-fun e!3816092 () Bool)

(assert (=> b!6274528 (= e!3816091 e!3816092)))

(declare-fun res!2588018 () Bool)

(assert (=> b!6274528 (=> (not res!2588018) (not e!3816092))))

(assert (=> b!6274528 (= res!2588018 (dynLambda!25613 lambda!343724 (h!71201 (t!378435 lt!2352399))))))

(declare-fun b!6274529 () Bool)

(assert (=> b!6274529 (= e!3816092 (forall!15323 (t!378435 (t!378435 lt!2352399)) lambda!343724))))

(assert (= (and d!1969426 (not res!2588017)) b!6274528))

(assert (= (and b!6274528 res!2588018) b!6274529))

(declare-fun b_lambda!238915 () Bool)

(assert (=> (not b_lambda!238915) (not b!6274528)))

(declare-fun m!7096126 () Bool)

(assert (=> b!6274528 m!7096126))

(declare-fun m!7096128 () Bool)

(assert (=> b!6274529 m!7096128))

(assert (=> b!6273217 d!1969426))

(declare-fun bs!1567254 () Bool)

(declare-fun b!6274530 () Bool)

(assert (= bs!1567254 (and b!6274530 b!6273217)))

(declare-fun lambda!343846 () Int)

(assert (=> bs!1567254 (= lambda!343846 lambda!343723)))

(declare-fun bs!1567255 () Bool)

(assert (= bs!1567255 (and b!6274530 b!6273222)))

(assert (=> bs!1567255 (= lambda!343846 lambda!343726)))

(declare-fun bs!1567256 () Bool)

(assert (= bs!1567256 (and b!6274530 b!6274486)))

(assert (=> bs!1567256 (= lambda!343846 lambda!343840)))

(declare-fun bs!1567257 () Bool)

(assert (= bs!1567257 (and b!6274530 d!1969134)))

(declare-fun lambda!343847 () Int)

(assert (=> bs!1567257 (not (= lambda!343847 lambda!343795))))

(declare-fun bs!1567258 () Bool)

(assert (= bs!1567258 (and b!6274530 d!1969384)))

(assert (=> bs!1567258 (not (= lambda!343847 lambda!343828))))

(declare-fun bs!1567259 () Bool)

(assert (= bs!1567259 (and b!6274530 d!1969252)))

(assert (=> bs!1567259 (not (= lambda!343847 lambda!343817))))

(declare-fun bs!1567260 () Bool)

(assert (= bs!1567260 (and b!6274530 d!1969242)))

(assert (=> bs!1567260 (not (= lambda!343847 lambda!343815))))

(declare-fun bs!1567261 () Bool)

(assert (= bs!1567261 (and b!6274530 b!6273219)))

(declare-fun lt!2352754 () Int)

(assert (=> bs!1567261 (= (= lt!2352754 lt!2352585) (= lambda!343847 lambda!343725))))

(declare-fun bs!1567262 () Bool)

(assert (= bs!1567262 (and b!6274530 d!1969114)))

(assert (=> bs!1567262 (not (= lambda!343847 lambda!343790))))

(declare-fun bs!1567263 () Bool)

(assert (= bs!1567263 (and b!6274530 d!1969400)))

(assert (=> bs!1567263 (not (= lambda!343847 lambda!343833))))

(assert (=> bs!1567255 (= (= lt!2352754 lt!2352591) (= lambda!343847 lambda!343727))))

(declare-fun bs!1567264 () Bool)

(assert (= bs!1567264 (and b!6274530 b!6274488)))

(assert (=> bs!1567264 (= (= lt!2352754 lt!2352742) (= lambda!343847 lambda!343842))))

(declare-fun bs!1567265 () Bool)

(assert (= bs!1567265 (and b!6274530 d!1969422)))

(assert (=> bs!1567265 (not (= lambda!343847 lambda!343845))))

(declare-fun bs!1567266 () Bool)

(assert (= bs!1567266 (and b!6274530 b!6273224)))

(assert (=> bs!1567266 (= (= lt!2352754 lt!2352589) (= lambda!343847 lambda!343728))))

(declare-fun bs!1567267 () Bool)

(assert (= bs!1567267 (and b!6274530 d!1969272)))

(assert (=> bs!1567267 (not (= lambda!343847 lambda!343818))))

(declare-fun bs!1567268 () Bool)

(assert (= bs!1567268 (and b!6274530 d!1969324)))

(assert (=> bs!1567268 (not (= lambda!343847 lambda!343821))))

(declare-fun bs!1567269 () Bool)

(assert (= bs!1567269 (and b!6274530 d!1969352)))

(assert (=> bs!1567269 (not (= lambda!343847 lambda!343827))))

(assert (=> bs!1567256 (= (= lt!2352754 lt!2352744) (= lambda!343847 lambda!343841))))

(assert (=> bs!1567254 (= (= lt!2352754 lt!2352587) (= lambda!343847 lambda!343724))))

(assert (=> b!6274530 true))

(declare-fun bs!1567270 () Bool)

(declare-fun b!6274532 () Bool)

(assert (= bs!1567270 (and b!6274532 d!1969134)))

(declare-fun lambda!343848 () Int)

(assert (=> bs!1567270 (not (= lambda!343848 lambda!343795))))

(declare-fun bs!1567271 () Bool)

(assert (= bs!1567271 (and b!6274532 d!1969384)))

(assert (=> bs!1567271 (not (= lambda!343848 lambda!343828))))

(declare-fun bs!1567272 () Bool)

(assert (= bs!1567272 (and b!6274532 d!1969252)))

(assert (=> bs!1567272 (not (= lambda!343848 lambda!343817))))

(declare-fun bs!1567273 () Bool)

(assert (= bs!1567273 (and b!6274532 d!1969242)))

(assert (=> bs!1567273 (not (= lambda!343848 lambda!343815))))

(declare-fun bs!1567274 () Bool)

(assert (= bs!1567274 (and b!6274532 b!6273219)))

(declare-fun lt!2352752 () Int)

(assert (=> bs!1567274 (= (= lt!2352752 lt!2352585) (= lambda!343848 lambda!343725))))

(declare-fun bs!1567275 () Bool)

(assert (= bs!1567275 (and b!6274532 d!1969114)))

(assert (=> bs!1567275 (not (= lambda!343848 lambda!343790))))

(declare-fun bs!1567276 () Bool)

(assert (= bs!1567276 (and b!6274532 d!1969400)))

(assert (=> bs!1567276 (not (= lambda!343848 lambda!343833))))

(declare-fun bs!1567277 () Bool)

(assert (= bs!1567277 (and b!6274532 b!6274530)))

(assert (=> bs!1567277 (= (= lt!2352752 lt!2352754) (= lambda!343848 lambda!343847))))

(declare-fun bs!1567278 () Bool)

(assert (= bs!1567278 (and b!6274532 b!6273222)))

(assert (=> bs!1567278 (= (= lt!2352752 lt!2352591) (= lambda!343848 lambda!343727))))

(declare-fun bs!1567279 () Bool)

(assert (= bs!1567279 (and b!6274532 b!6274488)))

(assert (=> bs!1567279 (= (= lt!2352752 lt!2352742) (= lambda!343848 lambda!343842))))

(declare-fun bs!1567280 () Bool)

(assert (= bs!1567280 (and b!6274532 d!1969422)))

(assert (=> bs!1567280 (not (= lambda!343848 lambda!343845))))

(declare-fun bs!1567281 () Bool)

(assert (= bs!1567281 (and b!6274532 b!6273224)))

(assert (=> bs!1567281 (= (= lt!2352752 lt!2352589) (= lambda!343848 lambda!343728))))

(declare-fun bs!1567282 () Bool)

(assert (= bs!1567282 (and b!6274532 d!1969272)))

(assert (=> bs!1567282 (not (= lambda!343848 lambda!343818))))

(declare-fun bs!1567283 () Bool)

(assert (= bs!1567283 (and b!6274532 d!1969324)))

(assert (=> bs!1567283 (not (= lambda!343848 lambda!343821))))

(declare-fun bs!1567284 () Bool)

(assert (= bs!1567284 (and b!6274532 d!1969352)))

(assert (=> bs!1567284 (not (= lambda!343848 lambda!343827))))

(declare-fun bs!1567285 () Bool)

(assert (= bs!1567285 (and b!6274532 b!6274486)))

(assert (=> bs!1567285 (= (= lt!2352752 lt!2352744) (= lambda!343848 lambda!343841))))

(declare-fun bs!1567286 () Bool)

(assert (= bs!1567286 (and b!6274532 b!6273217)))

(assert (=> bs!1567286 (= (= lt!2352752 lt!2352587) (= lambda!343848 lambda!343724))))

(assert (=> b!6274532 true))

(declare-fun d!1969428 () Bool)

(declare-fun e!3816093 () Bool)

(assert (=> d!1969428 e!3816093))

(declare-fun res!2588019 () Bool)

(assert (=> d!1969428 (=> (not res!2588019) (not e!3816093))))

(assert (=> d!1969428 (= res!2588019 (>= lt!2352752 0))))

(declare-fun e!3816094 () Int)

(assert (=> d!1969428 (= lt!2352752 e!3816094)))

(declare-fun c!1137355 () Bool)

(assert (=> d!1969428 (= c!1137355 (is-Cons!64753 (t!378435 lt!2352399)))))

(assert (=> d!1969428 (= (zipperDepth!317 (t!378435 lt!2352399)) lt!2352752)))

(assert (=> b!6274530 (= e!3816094 lt!2352754)))

(assert (=> b!6274530 (= lt!2352754 (maxBigInt!0 (contextDepth!210 (h!71201 (t!378435 lt!2352399))) (zipperDepth!317 (t!378435 (t!378435 lt!2352399)))))))

(declare-fun lt!2352751 () Unit!158099)

(assert (=> b!6274530 (= lt!2352751 (lemmaForallContextDepthBiggerThanTransitive!194 (t!378435 (t!378435 lt!2352399)) lt!2352754 (zipperDepth!317 (t!378435 (t!378435 lt!2352399))) lambda!343846))))

(assert (=> b!6274530 (forall!15323 (t!378435 (t!378435 lt!2352399)) lambda!343847)))

(declare-fun lt!2352753 () Unit!158099)

(assert (=> b!6274530 (= lt!2352753 lt!2352751)))

(declare-fun b!6274531 () Bool)

(assert (=> b!6274531 (= e!3816094 0)))

(assert (=> b!6274532 (= e!3816093 (forall!15323 (t!378435 lt!2352399) lambda!343848))))

(assert (= (and d!1969428 c!1137355) b!6274530))

(assert (= (and d!1969428 (not c!1137355)) b!6274531))

(assert (= (and d!1969428 res!2588019) b!6274532))

(declare-fun m!7096130 () Bool)

(assert (=> b!6274530 m!7096130))

(declare-fun m!7096132 () Bool)

(assert (=> b!6274530 m!7096132))

(declare-fun m!7096134 () Bool)

(assert (=> b!6274530 m!7096134))

(declare-fun m!7096136 () Bool)

(assert (=> b!6274530 m!7096136))

(assert (=> b!6274530 m!7096134))

(assert (=> b!6274530 m!7096132))

(assert (=> b!6274530 m!7096134))

(declare-fun m!7096138 () Bool)

(assert (=> b!6274530 m!7096138))

(declare-fun m!7096140 () Bool)

(assert (=> b!6274532 m!7096140))

(assert (=> b!6273217 d!1969428))

(assert (=> b!6273321 d!1969130))

(declare-fun d!1969430 () Bool)

(declare-fun c!1137356 () Bool)

(assert (=> d!1969430 (= c!1137356 (isEmpty!36792 (tail!11969 (t!378434 s!2326))))))

(declare-fun e!3816095 () Bool)

(assert (=> d!1969430 (= (matchZipper!2204 (derivationStepZipper!2158 lt!2352420 (head!12884 (t!378434 s!2326))) (tail!11969 (t!378434 s!2326))) e!3816095)))

(declare-fun b!6274533 () Bool)

(assert (=> b!6274533 (= e!3816095 (nullableZipper!1962 (derivationStepZipper!2158 lt!2352420 (head!12884 (t!378434 s!2326)))))))

(declare-fun b!6274534 () Bool)

(assert (=> b!6274534 (= e!3816095 (matchZipper!2204 (derivationStepZipper!2158 (derivationStepZipper!2158 lt!2352420 (head!12884 (t!378434 s!2326))) (head!12884 (tail!11969 (t!378434 s!2326)))) (tail!11969 (tail!11969 (t!378434 s!2326)))))))

(assert (= (and d!1969430 c!1137356) b!6274533))

(assert (= (and d!1969430 (not c!1137356)) b!6274534))

(assert (=> d!1969430 m!7094636))

(assert (=> d!1969430 m!7095606))

(assert (=> b!6274533 m!7094668))

(declare-fun m!7096142 () Bool)

(assert (=> b!6274533 m!7096142))

(assert (=> b!6274534 m!7094636))

(assert (=> b!6274534 m!7095610))

(assert (=> b!6274534 m!7094668))

(assert (=> b!6274534 m!7095610))

(declare-fun m!7096144 () Bool)

(assert (=> b!6274534 m!7096144))

(assert (=> b!6274534 m!7094636))

(assert (=> b!6274534 m!7095614))

(assert (=> b!6274534 m!7096144))

(assert (=> b!6274534 m!7095614))

(declare-fun m!7096146 () Bool)

(assert (=> b!6274534 m!7096146))

(assert (=> b!6272975 d!1969430))

(declare-fun bs!1567287 () Bool)

(declare-fun d!1969432 () Bool)

(assert (= bs!1567287 (and d!1969432 d!1969392)))

(declare-fun lambda!343849 () Int)

(assert (=> bs!1567287 (= lambda!343849 lambda!343830)))

(declare-fun bs!1567288 () Bool)

(assert (= bs!1567288 (and d!1969432 d!1969286)))

(assert (=> bs!1567288 (= lambda!343849 lambda!343819)))

(declare-fun bs!1567289 () Bool)

(assert (= bs!1567289 (and d!1969432 d!1969198)))

(assert (=> bs!1567289 (= lambda!343849 lambda!343810)))

(declare-fun bs!1567290 () Bool)

(assert (= bs!1567290 (and d!1969432 d!1969236)))

(assert (=> bs!1567290 (= lambda!343849 lambda!343814)))

(declare-fun bs!1567291 () Bool)

(assert (= bs!1567291 (and d!1969432 d!1968862)))

(assert (=> bs!1567291 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343849 lambda!343700))))

(declare-fun bs!1567292 () Bool)

(assert (= bs!1567292 (and d!1969432 d!1969388)))

(assert (=> bs!1567292 (= lambda!343849 lambda!343829)))

(declare-fun bs!1567293 () Bool)

(assert (= bs!1567293 (and d!1969432 d!1969128)))

(assert (=> bs!1567293 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343849 lambda!343794))))

(declare-fun bs!1567294 () Bool)

(assert (= bs!1567294 (and d!1969432 d!1969248)))

(assert (=> bs!1567294 (= lambda!343849 lambda!343816)))

(declare-fun bs!1567295 () Bool)

(assert (= bs!1567295 (and d!1969432 d!1969350)))

(assert (=> bs!1567295 (= lambda!343849 lambda!343826)))

(declare-fun bs!1567296 () Bool)

(assert (= bs!1567296 (and d!1969432 b!6272771)))

(assert (=> bs!1567296 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343849 lambda!343676))))

(declare-fun bs!1567297 () Bool)

(assert (= bs!1567297 (and d!1969432 d!1968876)))

(assert (=> bs!1567297 (= (= (head!12884 (t!378434 s!2326)) (h!71200 s!2326)) (= lambda!343849 lambda!343701))))

(declare-fun bs!1567298 () Bool)

(assert (= bs!1567298 (and d!1969432 d!1969290)))

(assert (=> bs!1567298 (= (= (head!12884 (t!378434 s!2326)) (head!12884 s!2326)) (= lambda!343849 lambda!343820))))

(declare-fun bs!1567299 () Bool)

(assert (= bs!1567299 (and d!1969432 d!1969212)))

(assert (=> bs!1567299 (= lambda!343849 lambda!343812)))

(declare-fun bs!1567300 () Bool)

(assert (= bs!1567300 (and d!1969432 d!1969332)))

(assert (=> bs!1567300 (= lambda!343849 lambda!343822)))

(assert (=> d!1969432 true))

(assert (=> d!1969432 (= (derivationStepZipper!2158 lt!2352420 (head!12884 (t!378434 s!2326))) (flatMap!1697 lt!2352420 lambda!343849))))

(declare-fun bs!1567301 () Bool)

(assert (= bs!1567301 d!1969432))

(declare-fun m!7096148 () Bool)

(assert (=> bs!1567301 m!7096148))

(assert (=> b!6272975 d!1969432))

(assert (=> b!6272975 d!1969200))

(assert (=> b!6272975 d!1969202))

(declare-fun d!1969434 () Bool)

(assert (=> d!1969434 (= (isEmptyLang!1606 lt!2352610) (is-EmptyLang!16192 lt!2352610))))

(assert (=> b!6273356 d!1969434))

(assert (=> bs!1566711 d!1968860))

(assert (=> b!6272973 d!1968944))

(declare-fun d!1969436 () Bool)

(assert (=> d!1969436 (= (isEmpty!36789 lt!2352407) (is-Nil!64751 lt!2352407))))

(assert (=> b!6273281 d!1969436))

(declare-fun d!1969438 () Bool)

(assert (=> d!1969438 (= ($colon$colon!2057 (exprs!6076 lt!2352413) (ite (or c!1136896 c!1136895) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71199 (exprs!6076 (h!71201 zl!343))))) (Cons!64751 (ite (or c!1136896 c!1136895) (regTwo!32896 (h!71199 (exprs!6076 (h!71201 zl!343)))) (h!71199 (exprs!6076 (h!71201 zl!343)))) (exprs!6076 lt!2352413)))))

(assert (=> bm!530575 d!1969438))

(declare-fun d!1969440 () Bool)

(assert (=> d!1969440 (= (isConcat!1121 lt!2352542) (is-Concat!25037 lt!2352542))))

(assert (=> b!6272966 d!1969440))

(assert (=> b!6273143 d!1969120))

(assert (=> b!6273143 d!1969122))

(declare-fun b!6274535 () Bool)

(declare-fun e!3816099 () (Set Context!11152))

(declare-fun e!3816097 () (Set Context!11152))

(assert (=> b!6274535 (= e!3816099 e!3816097)))

(declare-fun c!1137358 () Bool)

(assert (=> b!6274535 (= c!1137358 (is-Concat!25037 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))))))

(declare-fun bm!530817 () Bool)

(declare-fun call!530826 () (Set Context!11152))

(declare-fun call!530822 () (Set Context!11152))

(assert (=> bm!530817 (= call!530826 call!530822)))

(declare-fun b!6274536 () Bool)

(declare-fun e!3816098 () Bool)

(assert (=> b!6274536 (= e!3816098 (nullable!6185 (regOne!32896 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))))))

(declare-fun b!6274537 () Bool)

(declare-fun c!1137361 () Bool)

(assert (=> b!6274537 (= c!1137361 (is-Star!16192 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))))))

(declare-fun e!3816101 () (Set Context!11152))

(assert (=> b!6274537 (= e!3816097 e!3816101)))

(declare-fun b!6274538 () Bool)

(assert (=> b!6274538 (= e!3816101 (as set.empty (Set Context!11152)))))

(declare-fun c!1137357 () Bool)

(declare-fun d!1969442 () Bool)

(assert (=> d!1969442 (= c!1137357 (and (is-ElementMatch!16192 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (= (c!1136845 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (h!71200 s!2326))))))

(declare-fun e!3816096 () (Set Context!11152))

(assert (=> d!1969442 (= (derivationStepZipperDown!1440 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))) (ite c!1136943 lt!2352413 (Context!11153 call!530596)) (h!71200 s!2326)) e!3816096)))

(declare-fun bm!530818 () Bool)

(declare-fun call!530823 () List!64875)

(declare-fun c!1137360 () Bool)

(declare-fun call!530824 () (Set Context!11152))

(assert (=> bm!530818 (= call!530824 (derivationStepZipperDown!1440 (ite c!1137360 (regTwo!32897 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (regOne!32896 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))) (ite c!1137360 (ite c!1136943 lt!2352413 (Context!11153 call!530596)) (Context!11153 call!530823)) (h!71200 s!2326)))))

(declare-fun b!6274539 () Bool)

(declare-fun c!1137359 () Bool)

(assert (=> b!6274539 (= c!1137359 e!3816098)))

(declare-fun res!2588020 () Bool)

(assert (=> b!6274539 (=> (not res!2588020) (not e!3816098))))

(assert (=> b!6274539 (= res!2588020 (is-Concat!25037 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))))))

(declare-fun e!3816100 () (Set Context!11152))

(assert (=> b!6274539 (= e!3816100 e!3816099)))

(declare-fun b!6274540 () Bool)

(declare-fun call!530827 () (Set Context!11152))

(assert (=> b!6274540 (= e!3816100 (set.union call!530827 call!530824))))

(declare-fun b!6274541 () Bool)

(assert (=> b!6274541 (= e!3816096 e!3816100)))

(assert (=> b!6274541 (= c!1137360 (is-Union!16192 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))))))

(declare-fun bm!530819 () Bool)

(assert (=> bm!530819 (= call!530822 call!530827)))

(declare-fun call!530825 () List!64875)

(declare-fun bm!530820 () Bool)

(assert (=> bm!530820 (= call!530827 (derivationStepZipperDown!1440 (ite c!1137360 (regOne!32897 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (ite c!1137359 (regTwo!32896 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (ite c!1137358 (regOne!32896 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (reg!16521 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))))) (ite (or c!1137360 c!1137359) (ite c!1136943 lt!2352413 (Context!11153 call!530596)) (Context!11153 call!530825)) (h!71200 s!2326)))))

(declare-fun b!6274542 () Bool)

(assert (=> b!6274542 (= e!3816101 call!530826)))

(declare-fun bm!530821 () Bool)

(assert (=> bm!530821 (= call!530823 ($colon$colon!2057 (exprs!6076 (ite c!1136943 lt!2352413 (Context!11153 call!530596))) (ite (or c!1137359 c!1137358) (regTwo!32896 (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))))) (ite c!1136943 (regTwo!32897 (regTwo!32896 (regOne!32896 r!7292))) (regOne!32896 (regTwo!32896 (regOne!32896 r!7292)))))))))

(declare-fun bm!530822 () Bool)

(assert (=> bm!530822 (= call!530825 call!530823)))

(declare-fun b!6274543 () Bool)

(assert (=> b!6274543 (= e!3816096 (set.insert (ite c!1136943 lt!2352413 (Context!11153 call!530596)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274544 () Bool)

(assert (=> b!6274544 (= e!3816099 (set.union call!530824 call!530822))))

(declare-fun b!6274545 () Bool)

(assert (=> b!6274545 (= e!3816097 call!530826)))

(assert (= (and d!1969442 c!1137357) b!6274543))

(assert (= (and d!1969442 (not c!1137357)) b!6274541))

(assert (= (and b!6274541 c!1137360) b!6274540))

(assert (= (and b!6274541 (not c!1137360)) b!6274539))

(assert (= (and b!6274539 res!2588020) b!6274536))

(assert (= (and b!6274539 c!1137359) b!6274544))

(assert (= (and b!6274539 (not c!1137359)) b!6274535))

(assert (= (and b!6274535 c!1137358) b!6274545))

(assert (= (and b!6274535 (not c!1137358)) b!6274537))

(assert (= (and b!6274537 c!1137361) b!6274542))

(assert (= (and b!6274537 (not c!1137361)) b!6274538))

(assert (= (or b!6274545 b!6274542) bm!530822))

(assert (= (or b!6274545 b!6274542) bm!530817))

(assert (= (or b!6274544 bm!530822) bm!530821))

(assert (= (or b!6274544 bm!530817) bm!530819))

(assert (= (or b!6274540 b!6274544) bm!530818))

(assert (= (or b!6274540 bm!530819) bm!530820))

(declare-fun m!7096150 () Bool)

(assert (=> bm!530820 m!7096150))

(declare-fun m!7096152 () Bool)

(assert (=> bm!530818 m!7096152))

(declare-fun m!7096154 () Bool)

(assert (=> b!6274536 m!7096154))

(declare-fun m!7096156 () Bool)

(assert (=> b!6274543 m!7096156))

(declare-fun m!7096158 () Bool)

(assert (=> bm!530821 m!7096158))

(assert (=> bm!530591 d!1969442))

(assert (=> b!6273295 d!1969120))

(assert (=> b!6273295 d!1969122))

(declare-fun d!1969444 () Bool)

(assert (=> d!1969444 (= (nullable!6185 (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))) (nullableFct!2137 (regOne!32896 (regOne!32896 (regOne!32896 r!7292)))))))

(declare-fun bs!1567302 () Bool)

(assert (= bs!1567302 d!1969444))

(declare-fun m!7096160 () Bool)

(assert (=> bs!1567302 m!7096160))

(assert (=> b!6273201 d!1969444))

(declare-fun bs!1567303 () Bool)

(declare-fun d!1969446 () Bool)

(assert (= bs!1567303 (and d!1969446 d!1969134)))

(declare-fun lambda!343850 () Int)

(assert (=> bs!1567303 (= lambda!343850 lambda!343795)))

(declare-fun bs!1567304 () Bool)

(assert (= bs!1567304 (and d!1969446 d!1969384)))

(assert (=> bs!1567304 (= lambda!343850 lambda!343828)))

(declare-fun bs!1567305 () Bool)

(assert (= bs!1567305 (and d!1969446 d!1969252)))

(assert (=> bs!1567305 (= lambda!343850 lambda!343817)))

(declare-fun bs!1567306 () Bool)

(assert (= bs!1567306 (and d!1969446 d!1969242)))

(assert (=> bs!1567306 (= lambda!343850 lambda!343815)))

(declare-fun bs!1567307 () Bool)

(assert (= bs!1567307 (and d!1969446 b!6273219)))

(assert (=> bs!1567307 (not (= lambda!343850 lambda!343725))))

(declare-fun bs!1567308 () Bool)

(assert (= bs!1567308 (and d!1969446 d!1969114)))

(assert (=> bs!1567308 (= lambda!343850 lambda!343790)))

(declare-fun bs!1567309 () Bool)

(assert (= bs!1567309 (and d!1969446 d!1969400)))

(assert (=> bs!1567309 (not (= lambda!343850 lambda!343833))))

(declare-fun bs!1567310 () Bool)

(assert (= bs!1567310 (and d!1969446 b!6274530)))

(assert (=> bs!1567310 (not (= lambda!343850 lambda!343847))))

(declare-fun bs!1567311 () Bool)

(assert (= bs!1567311 (and d!1969446 b!6273222)))

(assert (=> bs!1567311 (not (= lambda!343850 lambda!343727))))

(declare-fun bs!1567312 () Bool)

(assert (= bs!1567312 (and d!1969446 b!6274532)))

(assert (=> bs!1567312 (not (= lambda!343850 lambda!343848))))

(declare-fun bs!1567313 () Bool)

(assert (= bs!1567313 (and d!1969446 b!6274488)))

(assert (=> bs!1567313 (not (= lambda!343850 lambda!343842))))

(declare-fun bs!1567314 () Bool)

(assert (= bs!1567314 (and d!1969446 d!1969422)))

(assert (=> bs!1567314 (not (= lambda!343850 lambda!343845))))

(declare-fun bs!1567315 () Bool)

(assert (= bs!1567315 (and d!1969446 b!6273224)))

(assert (=> bs!1567315 (not (= lambda!343850 lambda!343728))))

(declare-fun bs!1567316 () Bool)

(assert (= bs!1567316 (and d!1969446 d!1969272)))

(assert (=> bs!1567316 (= lambda!343850 lambda!343818)))

(declare-fun bs!1567317 () Bool)

(assert (= bs!1567317 (and d!1969446 d!1969324)))

(assert (=> bs!1567317 (= lambda!343850 lambda!343821)))

(declare-fun bs!1567318 () Bool)

(assert (= bs!1567318 (and d!1969446 d!1969352)))

(assert (=> bs!1567318 (= lambda!343850 lambda!343827)))

(declare-fun bs!1567319 () Bool)

(assert (= bs!1567319 (and d!1969446 b!6274486)))

(assert (=> bs!1567319 (not (= lambda!343850 lambda!343841))))

(declare-fun bs!1567320 () Bool)

(assert (= bs!1567320 (and d!1969446 b!6273217)))

(assert (=> bs!1567320 (not (= lambda!343850 lambda!343724))))

(assert (=> d!1969446 (= (nullableZipper!1962 lt!2352419) (exists!2524 lt!2352419 lambda!343850))))

(declare-fun bs!1567321 () Bool)

(assert (= bs!1567321 d!1969446))

(declare-fun m!7096162 () Bool)

(assert (=> bs!1567321 m!7096162))

(assert (=> b!6273368 d!1969446))

(declare-fun bm!530823 () Bool)

(declare-fun call!530828 () (Set Context!11152))

(assert (=> bm!530823 (= call!530828 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))))) (h!71200 s!2326)))))

(declare-fun b!6274546 () Bool)

(declare-fun e!3816103 () Bool)

(assert (=> b!6274546 (= e!3816103 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))))))))

(declare-fun d!1969448 () Bool)

(declare-fun c!1137362 () Bool)

(assert (=> d!1969448 (= c!1137362 e!3816103)))

(declare-fun res!2588021 () Bool)

(assert (=> d!1969448 (=> (not res!2588021) (not e!3816103))))

(assert (=> d!1969448 (= res!2588021 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409))))))))

(declare-fun e!3816102 () (Set Context!11152))

(assert (=> d!1969448 (= (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352409))) (h!71200 s!2326)) e!3816102)))

(declare-fun b!6274547 () Bool)

(assert (=> b!6274547 (= e!3816102 (set.union call!530828 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))))) (h!71200 s!2326))))))

(declare-fun b!6274548 () Bool)

(declare-fun e!3816104 () (Set Context!11152))

(assert (=> b!6274548 (= e!3816104 call!530828)))

(declare-fun b!6274549 () Bool)

(assert (=> b!6274549 (= e!3816102 e!3816104)))

(declare-fun c!1137363 () Bool)

(assert (=> b!6274549 (= c!1137363 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409))))))))

(declare-fun b!6274550 () Bool)

(assert (=> b!6274550 (= e!3816104 (as set.empty (Set Context!11152)))))

(assert (= (and d!1969448 res!2588021) b!6274546))

(assert (= (and d!1969448 c!1137362) b!6274547))

(assert (= (and d!1969448 (not c!1137362)) b!6274549))

(assert (= (and b!6274549 c!1137363) b!6274548))

(assert (= (and b!6274549 (not c!1137363)) b!6274550))

(assert (= (or b!6274547 b!6274548) bm!530823))

(declare-fun m!7096164 () Bool)

(assert (=> bm!530823 m!7096164))

(declare-fun m!7096166 () Bool)

(assert (=> b!6274546 m!7096166))

(declare-fun m!7096168 () Bool)

(assert (=> b!6274547 m!7096168))

(assert (=> b!6273050 d!1969448))

(declare-fun bm!530824 () Bool)

(declare-fun call!530829 () (Set Context!11152))

(assert (=> bm!530824 (= call!530829 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397)))))) (h!71200 s!2326)))))

(declare-fun b!6274551 () Bool)

(declare-fun e!3816106 () Bool)

(assert (=> b!6274551 (= e!3816106 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397)))))))))

(declare-fun d!1969450 () Bool)

(declare-fun c!1137364 () Bool)

(assert (=> d!1969450 (= c!1137364 e!3816106)))

(declare-fun res!2588022 () Bool)

(assert (=> d!1969450 (=> (not res!2588022) (not e!3816106))))

(assert (=> d!1969450 (= res!2588022 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397))))))))

(declare-fun e!3816105 () (Set Context!11152))

(assert (=> d!1969450 (= (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352397))) (h!71200 s!2326)) e!3816105)))

(declare-fun b!6274552 () Bool)

(assert (=> b!6274552 (= e!3816105 (set.union call!530829 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397)))))) (h!71200 s!2326))))))

(declare-fun b!6274553 () Bool)

(declare-fun e!3816107 () (Set Context!11152))

(assert (=> b!6274553 (= e!3816107 call!530829)))

(declare-fun b!6274554 () Bool)

(assert (=> b!6274554 (= e!3816105 e!3816107)))

(declare-fun c!1137365 () Bool)

(assert (=> b!6274554 (= c!1137365 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352397))))))))

(declare-fun b!6274555 () Bool)

(assert (=> b!6274555 (= e!3816107 (as set.empty (Set Context!11152)))))

(assert (= (and d!1969450 res!2588022) b!6274551))

(assert (= (and d!1969450 c!1137364) b!6274552))

(assert (= (and d!1969450 (not c!1137364)) b!6274554))

(assert (= (and b!6274554 c!1137365) b!6274553))

(assert (= (and b!6274554 (not c!1137365)) b!6274555))

(assert (= (or b!6274552 b!6274553) bm!530824))

(declare-fun m!7096170 () Bool)

(assert (=> bm!530824 m!7096170))

(declare-fun m!7096172 () Bool)

(assert (=> b!6274551 m!7096172))

(declare-fun m!7096174 () Bool)

(assert (=> b!6274552 m!7096174))

(assert (=> b!6273045 d!1969450))

(assert (=> b!6273325 d!1969120))

(assert (=> b!6273325 d!1969122))

(declare-fun d!1969452 () Bool)

(assert (=> d!1969452 (= (isEmpty!36789 (t!378433 lt!2352404)) (is-Nil!64751 (t!378433 lt!2352404)))))

(assert (=> b!6273277 d!1969452))

(assert (=> d!1968832 d!1969172))

(declare-fun d!1969454 () Bool)

(assert (=> d!1969454 (= (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))) (nullableFct!2137 (h!71199 (exprs!6076 (Context!11153 (Cons!64751 (h!71199 (exprs!6076 (h!71201 zl!343))) (t!378433 (exprs!6076 (h!71201 zl!343)))))))))))

(declare-fun bs!1567322 () Bool)

(assert (= bs!1567322 d!1969454))

(declare-fun m!7096176 () Bool)

(assert (=> bs!1567322 m!7096176))

(assert (=> b!6273034 d!1969454))

(assert (=> d!1968830 d!1968834))

(assert (=> d!1968830 d!1968832))

(declare-fun e!3816108 () Bool)

(declare-fun d!1969456 () Bool)

(assert (=> d!1969456 (= (matchZipper!2204 (set.union lt!2352420 lt!2352419) (t!378434 s!2326)) e!3816108)))

(declare-fun res!2588023 () Bool)

(assert (=> d!1969456 (=> res!2588023 e!3816108)))

(assert (=> d!1969456 (= res!2588023 (matchZipper!2204 lt!2352420 (t!378434 s!2326)))))

(assert (=> d!1969456 true))

(declare-fun _$48!2029 () Unit!158099)

(assert (=> d!1969456 (= (choose!46544 lt!2352420 lt!2352419 (t!378434 s!2326)) _$48!2029)))

(declare-fun b!6274556 () Bool)

(assert (=> b!6274556 (= e!3816108 (matchZipper!2204 lt!2352419 (t!378434 s!2326)))))

(assert (= (and d!1969456 (not res!2588023)) b!6274556))

(assert (=> d!1969456 m!7094488))

(assert (=> d!1969456 m!7094358))

(assert (=> b!6274556 m!7094414))

(assert (=> d!1968830 d!1969456))

(declare-fun d!1969458 () Bool)

(assert (=> d!1969458 (= (isUnion!1036 lt!2352610) (is-Union!16192 lt!2352610))))

(assert (=> b!6273360 d!1969458))

(declare-fun b!6274557 () Bool)

(declare-fun e!3816114 () Bool)

(declare-fun call!530830 () Bool)

(assert (=> b!6274557 (= e!3816114 call!530830)))

(declare-fun b!6274558 () Bool)

(declare-fun e!3816113 () Bool)

(declare-fun e!3816110 () Bool)

(assert (=> b!6274558 (= e!3816113 e!3816110)))

(declare-fun res!2588027 () Bool)

(assert (=> b!6274558 (= res!2588027 (not (nullable!6185 (reg!16521 lt!2352610))))))

(assert (=> b!6274558 (=> (not res!2588027) (not e!3816110))))

(declare-fun c!1137366 () Bool)

(declare-fun call!530832 () Bool)

(declare-fun c!1137367 () Bool)

(declare-fun bm!530825 () Bool)

(assert (=> bm!530825 (= call!530832 (validRegex!7928 (ite c!1137366 (reg!16521 lt!2352610) (ite c!1137367 (regOne!32897 lt!2352610) (regOne!32896 lt!2352610)))))))

(declare-fun b!6274559 () Bool)

(declare-fun e!3816115 () Bool)

(assert (=> b!6274559 (= e!3816115 e!3816113)))

(assert (=> b!6274559 (= c!1137366 (is-Star!16192 lt!2352610))))

(declare-fun b!6274560 () Bool)

(declare-fun e!3816112 () Bool)

(assert (=> b!6274560 (= e!3816113 e!3816112)))

(assert (=> b!6274560 (= c!1137367 (is-Union!16192 lt!2352610))))

(declare-fun d!1969460 () Bool)

(declare-fun res!2588024 () Bool)

(assert (=> d!1969460 (=> res!2588024 e!3816115)))

(assert (=> d!1969460 (= res!2588024 (is-ElementMatch!16192 lt!2352610))))

(assert (=> d!1969460 (= (validRegex!7928 lt!2352610) e!3816115)))

(declare-fun bm!530826 () Bool)

(declare-fun call!530831 () Bool)

(assert (=> bm!530826 (= call!530831 call!530832)))

(declare-fun b!6274561 () Bool)

(declare-fun res!2588026 () Bool)

(declare-fun e!3816111 () Bool)

(assert (=> b!6274561 (=> res!2588026 e!3816111)))

(assert (=> b!6274561 (= res!2588026 (not (is-Concat!25037 lt!2352610)))))

(assert (=> b!6274561 (= e!3816112 e!3816111)))

(declare-fun b!6274562 () Bool)

(declare-fun e!3816109 () Bool)

(assert (=> b!6274562 (= e!3816111 e!3816109)))

(declare-fun res!2588025 () Bool)

(assert (=> b!6274562 (=> (not res!2588025) (not e!3816109))))

(assert (=> b!6274562 (= res!2588025 call!530831)))

(declare-fun b!6274563 () Bool)

(assert (=> b!6274563 (= e!3816110 call!530832)))

(declare-fun bm!530827 () Bool)

(assert (=> bm!530827 (= call!530830 (validRegex!7928 (ite c!1137367 (regTwo!32897 lt!2352610) (regTwo!32896 lt!2352610))))))

(declare-fun b!6274564 () Bool)

(assert (=> b!6274564 (= e!3816109 call!530830)))

(declare-fun b!6274565 () Bool)

(declare-fun res!2588028 () Bool)

(assert (=> b!6274565 (=> (not res!2588028) (not e!3816114))))

(assert (=> b!6274565 (= res!2588028 call!530831)))

(assert (=> b!6274565 (= e!3816112 e!3816114)))

(assert (= (and d!1969460 (not res!2588024)) b!6274559))

(assert (= (and b!6274559 c!1137366) b!6274558))

(assert (= (and b!6274559 (not c!1137366)) b!6274560))

(assert (= (and b!6274558 res!2588027) b!6274563))

(assert (= (and b!6274560 c!1137367) b!6274565))

(assert (= (and b!6274560 (not c!1137367)) b!6274561))

(assert (= (and b!6274565 res!2588028) b!6274557))

(assert (= (and b!6274561 (not res!2588026)) b!6274562))

(assert (= (and b!6274562 res!2588025) b!6274564))

(assert (= (or b!6274557 b!6274564) bm!530827))

(assert (= (or b!6274565 b!6274562) bm!530826))

(assert (= (or b!6274563 bm!530826) bm!530825))

(declare-fun m!7096178 () Bool)

(assert (=> b!6274558 m!7096178))

(declare-fun m!7096180 () Bool)

(assert (=> bm!530825 m!7096180))

(declare-fun m!7096182 () Bool)

(assert (=> bm!530827 m!7096182))

(assert (=> d!1968940 d!1969460))

(declare-fun d!1969462 () Bool)

(declare-fun res!2588029 () Bool)

(declare-fun e!3816116 () Bool)

(assert (=> d!1969462 (=> res!2588029 e!3816116)))

(assert (=> d!1969462 (= res!2588029 (is-Nil!64751 (unfocusZipperList!1613 zl!343)))))

(assert (=> d!1969462 (= (forall!15322 (unfocusZipperList!1613 zl!343) lambda!343736) e!3816116)))

(declare-fun b!6274566 () Bool)

(declare-fun e!3816117 () Bool)

(assert (=> b!6274566 (= e!3816116 e!3816117)))

(declare-fun res!2588030 () Bool)

(assert (=> b!6274566 (=> (not res!2588030) (not e!3816117))))

(assert (=> b!6274566 (= res!2588030 (dynLambda!25612 lambda!343736 (h!71199 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6274567 () Bool)

(assert (=> b!6274567 (= e!3816117 (forall!15322 (t!378433 (unfocusZipperList!1613 zl!343)) lambda!343736))))

(assert (= (and d!1969462 (not res!2588029)) b!6274566))

(assert (= (and b!6274566 res!2588030) b!6274567))

(declare-fun b_lambda!238917 () Bool)

(assert (=> (not b_lambda!238917) (not b!6274566)))

(declare-fun m!7096184 () Bool)

(assert (=> b!6274566 m!7096184))

(declare-fun m!7096186 () Bool)

(assert (=> b!6274567 m!7096186))

(assert (=> d!1968940 d!1969462))

(declare-fun bm!530828 () Bool)

(declare-fun call!530833 () (Set Context!11152))

(assert (=> bm!530828 (= call!530833 (derivationStepZipperDown!1440 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413))))) (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413)))))) (h!71200 s!2326)))))

(declare-fun b!6274568 () Bool)

(declare-fun e!3816119 () Bool)

(assert (=> b!6274568 (= e!3816119 (nullable!6185 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413)))))))))

(declare-fun d!1969464 () Bool)

(declare-fun c!1137368 () Bool)

(assert (=> d!1969464 (= c!1137368 e!3816119)))

(declare-fun res!2588031 () Bool)

(assert (=> d!1969464 (=> (not res!2588031) (not e!3816119))))

(assert (=> d!1969464 (= res!2588031 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413))))))))

(declare-fun e!3816118 () (Set Context!11152))

(assert (=> d!1969464 (= (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 lt!2352413))) (h!71200 s!2326)) e!3816118)))

(declare-fun b!6274569 () Bool)

(assert (=> b!6274569 (= e!3816118 (set.union call!530833 (derivationStepZipperUp!1366 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413)))))) (h!71200 s!2326))))))

(declare-fun b!6274570 () Bool)

(declare-fun e!3816120 () (Set Context!11152))

(assert (=> b!6274570 (= e!3816120 call!530833)))

(declare-fun b!6274571 () Bool)

(assert (=> b!6274571 (= e!3816118 e!3816120)))

(declare-fun c!1137369 () Bool)

(assert (=> b!6274571 (= c!1137369 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352413))))))))

(declare-fun b!6274572 () Bool)

(assert (=> b!6274572 (= e!3816120 (as set.empty (Set Context!11152)))))

(assert (= (and d!1969464 res!2588031) b!6274568))

(assert (= (and d!1969464 c!1137368) b!6274569))

(assert (= (and d!1969464 (not c!1137368)) b!6274571))

(assert (= (and b!6274571 c!1137369) b!6274570))

(assert (= (and b!6274571 (not c!1137369)) b!6274572))

(assert (= (or b!6274569 b!6274570) bm!530828))

(declare-fun m!7096188 () Bool)

(assert (=> bm!530828 m!7096188))

(declare-fun m!7096190 () Bool)

(assert (=> b!6274568 m!7096190))

(declare-fun m!7096192 () Bool)

(assert (=> b!6274569 m!7096192))

(assert (=> b!6272997 d!1969464))

(assert (=> d!1968822 d!1969172))

(declare-fun bs!1567323 () Bool)

(declare-fun d!1969466 () Bool)

(assert (= bs!1567323 (and d!1969466 d!1969136)))

(declare-fun lambda!343851 () Int)

(assert (=> bs!1567323 (= lambda!343851 lambda!343796)))

(declare-fun bs!1567324 () Bool)

(assert (= bs!1567324 (and d!1969466 b!6274481)))

(assert (=> bs!1567324 (not (= lambda!343851 lambda!343838))))

(declare-fun bs!1567325 () Bool)

(assert (= bs!1567325 (and d!1969466 d!1969208)))

(assert (=> bs!1567325 (= lambda!343851 lambda!343811)))

(declare-fun bs!1567326 () Bool)

(assert (= bs!1567326 (and d!1969466 b!6274525)))

(assert (=> bs!1567326 (not (= lambda!343851 lambda!343843))))

(declare-fun bs!1567327 () Bool)

(assert (= bs!1567327 (and d!1969466 d!1968922)))

(assert (=> bs!1567327 (= lambda!343851 lambda!343732)))

(declare-fun bs!1567328 () Bool)

(assert (= bs!1567328 (and d!1969466 d!1969118)))

(assert (=> bs!1567328 (= lambda!343851 lambda!343791)))

(declare-fun bs!1567329 () Bool)

(assert (= bs!1567329 (and d!1969466 d!1968940)))

(assert (=> bs!1567329 (= lambda!343851 lambda!343736)))

(declare-fun bs!1567330 () Bool)

(assert (= bs!1567330 (and d!1969466 b!6274527)))

(assert (=> bs!1567330 (not (= lambda!343851 lambda!343844))))

(declare-fun bs!1567331 () Bool)

(assert (= bs!1567331 (and d!1969466 b!6274483)))

(assert (=> bs!1567331 (not (= lambda!343851 lambda!343839))))

(declare-fun bs!1567332 () Bool)

(assert (= bs!1567332 (and d!1969466 d!1969192)))

(assert (=> bs!1567332 (= lambda!343851 lambda!343807)))

(declare-fun bs!1567333 () Bool)

(assert (= bs!1567333 (and d!1969466 d!1968942)))

(assert (=> bs!1567333 (= lambda!343851 lambda!343739)))

(declare-fun bs!1567334 () Bool)

(assert (= bs!1567334 (and d!1969466 d!1968924)))

(assert (=> bs!1567334 (= lambda!343851 lambda!343733)))

(declare-fun bs!1567335 () Bool)

(assert (= bs!1567335 (and d!1969466 d!1968914)))

(assert (=> bs!1567335 (= lambda!343851 lambda!343729)))

(declare-fun bs!1567336 () Bool)

(assert (= bs!1567336 (and d!1969466 d!1969230)))

(assert (=> bs!1567336 (= lambda!343851 lambda!343813)))

(declare-fun bs!1567337 () Bool)

(assert (= bs!1567337 (and d!1969466 d!1968854)))

(assert (=> bs!1567337 (= lambda!343851 lambda!343697)))

(declare-fun bs!1567338 () Bool)

(assert (= bs!1567338 (and d!1969466 d!1968828)))

(assert (=> bs!1567338 (= lambda!343851 lambda!343694)))

(declare-fun e!3816122 () Bool)

(assert (=> d!1969466 e!3816122))

(declare-fun res!2588032 () Bool)

(assert (=> d!1969466 (=> (not res!2588032) (not e!3816122))))

(declare-fun lt!2352755 () Regex!16192)

(assert (=> d!1969466 (= res!2588032 (validRegex!7928 lt!2352755))))

(declare-fun e!3816123 () Regex!16192)

(assert (=> d!1969466 (= lt!2352755 e!3816123)))

(declare-fun c!1137371 () Bool)

(declare-fun e!3816126 () Bool)

(assert (=> d!1969466 (= c!1137371 e!3816126)))

(declare-fun res!2588033 () Bool)

(assert (=> d!1969466 (=> (not res!2588033) (not e!3816126))))

(assert (=> d!1969466 (= res!2588033 (is-Cons!64751 (t!378433 lt!2352407)))))

(assert (=> d!1969466 (forall!15322 (t!378433 lt!2352407) lambda!343851)))

(assert (=> d!1969466 (= (generalisedConcat!1789 (t!378433 lt!2352407)) lt!2352755)))

(declare-fun b!6274573 () Bool)

(declare-fun e!3816125 () Bool)

(assert (=> b!6274573 (= e!3816122 e!3816125)))

(declare-fun c!1137372 () Bool)

(assert (=> b!6274573 (= c!1137372 (isEmpty!36789 (t!378433 lt!2352407)))))

(declare-fun b!6274574 () Bool)

(declare-fun e!3816124 () Bool)

(assert (=> b!6274574 (= e!3816124 (= lt!2352755 (head!12885 (t!378433 lt!2352407))))))

(declare-fun b!6274575 () Bool)

(assert (=> b!6274575 (= e!3816123 (h!71199 (t!378433 lt!2352407)))))

(declare-fun b!6274576 () Bool)

(assert (=> b!6274576 (= e!3816125 (isEmptyExpr!1598 lt!2352755))))

(declare-fun b!6274577 () Bool)

(declare-fun e!3816121 () Regex!16192)

(assert (=> b!6274577 (= e!3816121 (Concat!25037 (h!71199 (t!378433 lt!2352407)) (generalisedConcat!1789 (t!378433 (t!378433 lt!2352407)))))))

(declare-fun b!6274578 () Bool)

(assert (=> b!6274578 (= e!3816124 (isConcat!1121 lt!2352755))))

(declare-fun b!6274579 () Bool)

(assert (=> b!6274579 (= e!3816126 (isEmpty!36789 (t!378433 (t!378433 lt!2352407))))))

(declare-fun b!6274580 () Bool)

(assert (=> b!6274580 (= e!3816123 e!3816121)))

(declare-fun c!1137370 () Bool)

(assert (=> b!6274580 (= c!1137370 (is-Cons!64751 (t!378433 lt!2352407)))))

(declare-fun b!6274581 () Bool)

(assert (=> b!6274581 (= e!3816125 e!3816124)))

(declare-fun c!1137373 () Bool)

(assert (=> b!6274581 (= c!1137373 (isEmpty!36789 (tail!11970 (t!378433 lt!2352407))))))

(declare-fun b!6274582 () Bool)

(assert (=> b!6274582 (= e!3816121 EmptyExpr!16192)))

(assert (= (and d!1969466 res!2588033) b!6274579))

(assert (= (and d!1969466 c!1137371) b!6274575))

(assert (= (and d!1969466 (not c!1137371)) b!6274580))

(assert (= (and b!6274580 c!1137370) b!6274577))

(assert (= (and b!6274580 (not c!1137370)) b!6274582))

(assert (= (and d!1969466 res!2588032) b!6274573))

(assert (= (and b!6274573 c!1137372) b!6274576))

(assert (= (and b!6274573 (not c!1137372)) b!6274581))

(assert (= (and b!6274581 c!1137373) b!6274574))

(assert (= (and b!6274581 (not c!1137373)) b!6274578))

(declare-fun m!7096194 () Bool)

(assert (=> b!6274578 m!7096194))

(declare-fun m!7096196 () Bool)

(assert (=> b!6274581 m!7096196))

(assert (=> b!6274581 m!7096196))

(declare-fun m!7096198 () Bool)

(assert (=> b!6274581 m!7096198))

(assert (=> b!6274573 m!7094932))

(declare-fun m!7096200 () Bool)

(assert (=> b!6274579 m!7096200))

(declare-fun m!7096202 () Bool)

(assert (=> b!6274574 m!7096202))

(declare-fun m!7096204 () Bool)

(assert (=> d!1969466 m!7096204))

(declare-fun m!7096206 () Bool)

(assert (=> d!1969466 m!7096206))

(declare-fun m!7096208 () Bool)

(assert (=> b!6274577 m!7096208))

(declare-fun m!7096210 () Bool)

(assert (=> b!6274576 m!7096210))

(assert (=> b!6273285 d!1969466))

(declare-fun b!6274583 () Bool)

(declare-fun e!3816130 () (Set Context!11152))

(declare-fun e!3816128 () (Set Context!11152))

(assert (=> b!6274583 (= e!3816130 e!3816128)))

(declare-fun c!1137375 () Bool)

(assert (=> b!6274583 (= c!1137375 (is-Concat!25037 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))))))

(declare-fun bm!530829 () Bool)

(declare-fun call!530838 () (Set Context!11152))

(declare-fun call!530834 () (Set Context!11152))

(assert (=> bm!530829 (= call!530838 call!530834)))

(declare-fun e!3816129 () Bool)

(declare-fun b!6274584 () Bool)

(assert (=> b!6274584 (= e!3816129 (nullable!6185 (regOne!32896 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))))))))

(declare-fun c!1137378 () Bool)

(declare-fun b!6274585 () Bool)

(assert (=> b!6274585 (= c!1137378 (is-Star!16192 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))))))

(declare-fun e!3816132 () (Set Context!11152))

(assert (=> b!6274585 (= e!3816128 e!3816132)))

(declare-fun b!6274586 () Bool)

(assert (=> b!6274586 (= e!3816132 (as set.empty (Set Context!11152)))))

(declare-fun c!1137374 () Bool)

(declare-fun d!1969468 () Bool)

(assert (=> d!1969468 (= c!1137374 (and (is-ElementMatch!16192 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (= (c!1136845 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (h!71200 s!2326))))))

(declare-fun e!3816127 () (Set Context!11152))

(assert (=> d!1969468 (= (derivationStepZipperDown!1440 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))) (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598)) (h!71200 s!2326)) e!3816127)))

(declare-fun bm!530830 () Bool)

(declare-fun call!530836 () (Set Context!11152))

(declare-fun call!530835 () List!64875)

(declare-fun c!1137377 () Bool)

(assert (=> bm!530830 (= call!530836 (derivationStepZipperDown!1440 (ite c!1137377 (regTwo!32897 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (regOne!32896 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))))) (ite c!1137377 (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598)) (Context!11153 call!530835)) (h!71200 s!2326)))))

(declare-fun b!6274587 () Bool)

(declare-fun c!1137376 () Bool)

(assert (=> b!6274587 (= c!1137376 e!3816129)))

(declare-fun res!2588034 () Bool)

(assert (=> b!6274587 (=> (not res!2588034) (not e!3816129))))

(assert (=> b!6274587 (= res!2588034 (is-Concat!25037 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))))))

(declare-fun e!3816131 () (Set Context!11152))

(assert (=> b!6274587 (= e!3816131 e!3816130)))

(declare-fun b!6274588 () Bool)

(declare-fun call!530839 () (Set Context!11152))

(assert (=> b!6274588 (= e!3816131 (set.union call!530839 call!530836))))

(declare-fun b!6274589 () Bool)

(assert (=> b!6274589 (= e!3816127 e!3816131)))

(assert (=> b!6274589 (= c!1137377 (is-Union!16192 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))))))

(declare-fun bm!530831 () Bool)

(assert (=> bm!530831 (= call!530834 call!530839)))

(declare-fun bm!530832 () Bool)

(declare-fun call!530837 () List!64875)

(assert (=> bm!530832 (= call!530839 (derivationStepZipperDown!1440 (ite c!1137377 (regOne!32897 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (ite c!1137376 (regTwo!32896 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (ite c!1137375 (regOne!32896 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (reg!16521 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))))))) (ite (or c!1137377 c!1137376) (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598)) (Context!11153 call!530837)) (h!71200 s!2326)))))

(declare-fun b!6274590 () Bool)

(assert (=> b!6274590 (= e!3816132 call!530838)))

(declare-fun bm!530833 () Bool)

(assert (=> bm!530833 (= call!530835 ($colon$colon!2057 (exprs!6076 (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598))) (ite (or c!1137376 c!1137375) (regTwo!32896 (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292))))))) (ite c!1136943 (regOne!32897 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136942 (regTwo!32896 (regTwo!32896 (regOne!32896 r!7292))) (ite c!1136941 (regOne!32896 (regTwo!32896 (regOne!32896 r!7292))) (reg!16521 (regTwo!32896 (regOne!32896 r!7292)))))))))))

(declare-fun bm!530834 () Bool)

(assert (=> bm!530834 (= call!530837 call!530835)))

(declare-fun b!6274591 () Bool)

(assert (=> b!6274591 (= e!3816127 (set.insert (ite (or c!1136943 c!1136942) lt!2352413 (Context!11153 call!530598)) (as set.empty (Set Context!11152))))))

(declare-fun b!6274592 () Bool)

(assert (=> b!6274592 (= e!3816130 (set.union call!530836 call!530834))))

(declare-fun b!6274593 () Bool)

(assert (=> b!6274593 (= e!3816128 call!530838)))

(assert (= (and d!1969468 c!1137374) b!6274591))

(assert (= (and d!1969468 (not c!1137374)) b!6274589))

(assert (= (and b!6274589 c!1137377) b!6274588))

(assert (= (and b!6274589 (not c!1137377)) b!6274587))

(assert (= (and b!6274587 res!2588034) b!6274584))

(assert (= (and b!6274587 c!1137376) b!6274592))

(assert (= (and b!6274587 (not c!1137376)) b!6274583))

(assert (= (and b!6274583 c!1137375) b!6274593))

(assert (= (and b!6274583 (not c!1137375)) b!6274585))

(assert (= (and b!6274585 c!1137378) b!6274590))

(assert (= (and b!6274585 (not c!1137378)) b!6274586))

(assert (= (or b!6274593 b!6274590) bm!530834))

(assert (= (or b!6274593 b!6274590) bm!530829))

(assert (= (or b!6274592 bm!530834) bm!530833))

(assert (= (or b!6274592 bm!530829) bm!530831))

(assert (= (or b!6274588 b!6274592) bm!530830))

(assert (= (or b!6274588 bm!530831) bm!530832))

(declare-fun m!7096212 () Bool)

(assert (=> bm!530832 m!7096212))

(declare-fun m!7096214 () Bool)

(assert (=> bm!530830 m!7096214))

(declare-fun m!7096216 () Bool)

(assert (=> b!6274584 m!7096216))

(declare-fun m!7096218 () Bool)

(assert (=> b!6274591 m!7096218))

(declare-fun m!7096220 () Bool)

(assert (=> bm!530833 m!7096220))

(assert (=> bm!530593 d!1969468))

(assert (=> b!6273300 d!1969120))

(assert (=> b!6273300 d!1969122))

(declare-fun d!1969470 () Bool)

(assert (=> d!1969470 (= (head!12885 (exprs!6076 (h!71201 zl!343))) (h!71199 (exprs!6076 (h!71201 zl!343))))))

(assert (=> b!6272962 d!1969470))

(assert (=> b!6273139 d!1969130))

(declare-fun bs!1567339 () Bool)

(declare-fun d!1969472 () Bool)

(assert (= bs!1567339 (and d!1969472 d!1969134)))

(declare-fun lambda!343852 () Int)

(assert (=> bs!1567339 (= lambda!343852 lambda!343795)))

(declare-fun bs!1567340 () Bool)

(assert (= bs!1567340 (and d!1969472 d!1969384)))

(assert (=> bs!1567340 (= lambda!343852 lambda!343828)))

(declare-fun bs!1567341 () Bool)

(assert (= bs!1567341 (and d!1969472 d!1969252)))

(assert (=> bs!1567341 (= lambda!343852 lambda!343817)))

(declare-fun bs!1567342 () Bool)

(assert (= bs!1567342 (and d!1969472 d!1969242)))

(assert (=> bs!1567342 (= lambda!343852 lambda!343815)))

(declare-fun bs!1567343 () Bool)

(assert (= bs!1567343 (and d!1969472 b!6273219)))

(assert (=> bs!1567343 (not (= lambda!343852 lambda!343725))))

(declare-fun bs!1567344 () Bool)

(assert (= bs!1567344 (and d!1969472 d!1969114)))

(assert (=> bs!1567344 (= lambda!343852 lambda!343790)))

(declare-fun bs!1567345 () Bool)

(assert (= bs!1567345 (and d!1969472 d!1969400)))

(assert (=> bs!1567345 (not (= lambda!343852 lambda!343833))))

(declare-fun bs!1567346 () Bool)

(assert (= bs!1567346 (and d!1969472 b!6274530)))

(assert (=> bs!1567346 (not (= lambda!343852 lambda!343847))))

(declare-fun bs!1567347 () Bool)

(assert (= bs!1567347 (and d!1969472 b!6273222)))

(assert (=> bs!1567347 (not (= lambda!343852 lambda!343727))))

(declare-fun bs!1567348 () Bool)

(assert (= bs!1567348 (and d!1969472 b!6274532)))

(assert (=> bs!1567348 (not (= lambda!343852 lambda!343848))))

(declare-fun bs!1567349 () Bool)

(assert (= bs!1567349 (and d!1969472 d!1969446)))

(assert (=> bs!1567349 (= lambda!343852 lambda!343850)))

(declare-fun bs!1567350 () Bool)

(assert (= bs!1567350 (and d!1969472 b!6274488)))

(assert (=> bs!1567350 (not (= lambda!343852 lambda!343842))))

(declare-fun bs!1567351 () Bool)

(assert (= bs!1567351 (and d!1969472 d!1969422)))

(assert (=> bs!1567351 (not (= lambda!343852 lambda!343845))))

(declare-fun bs!1567352 () Bool)

(assert (= bs!1567352 (and d!1969472 b!6273224)))

(assert (=> bs!1567352 (not (= lambda!343852 lambda!343728))))

(declare-fun bs!1567353 () Bool)

(assert (= bs!1567353 (and d!1969472 d!1969272)))

(assert (=> bs!1567353 (= lambda!343852 lambda!343818)))

(declare-fun bs!1567354 () Bool)

(assert (= bs!1567354 (and d!1969472 d!1969324)))

(assert (=> bs!1567354 (= lambda!343852 lambda!343821)))

(declare-fun bs!1567355 () Bool)

(assert (= bs!1567355 (and d!1969472 d!1969352)))

(assert (=> bs!1567355 (= lambda!343852 lambda!343827)))

(declare-fun bs!1567356 () Bool)

(assert (= bs!1567356 (and d!1969472 b!6274486)))

(assert (=> bs!1567356 (not (= lambda!343852 lambda!343841))))

(declare-fun bs!1567357 () Bool)

(assert (= bs!1567357 (and d!1969472 b!6273217)))

(assert (=> bs!1567357 (not (= lambda!343852 lambda!343724))))

(assert (=> d!1969472 (= (nullableZipper!1962 lt!2352401) (exists!2524 lt!2352401 lambda!343852))))

(declare-fun bs!1567358 () Bool)

(assert (= bs!1567358 d!1969472))

(declare-fun m!7096222 () Bool)

(assert (=> bs!1567358 m!7096222))

(assert (=> b!6273058 d!1969472))

(declare-fun d!1969474 () Bool)

(assert (=> d!1969474 (= (head!12885 lt!2352407) (h!71199 lt!2352407))))

(assert (=> b!6273282 d!1969474))

(assert (=> b!6273060 d!1968822))

(declare-fun bs!1567359 () Bool)

(declare-fun d!1969476 () Bool)

(assert (= bs!1567359 (and d!1969476 d!1969134)))

(declare-fun lambda!343853 () Int)

(assert (=> bs!1567359 (= lambda!343853 lambda!343795)))

(declare-fun bs!1567360 () Bool)

(assert (= bs!1567360 (and d!1969476 d!1969384)))

(assert (=> bs!1567360 (= lambda!343853 lambda!343828)))

(declare-fun bs!1567361 () Bool)

(assert (= bs!1567361 (and d!1969476 d!1969252)))

(assert (=> bs!1567361 (= lambda!343853 lambda!343817)))

(declare-fun bs!1567362 () Bool)

(assert (= bs!1567362 (and d!1969476 d!1969242)))

(assert (=> bs!1567362 (= lambda!343853 lambda!343815)))

(declare-fun bs!1567363 () Bool)

(assert (= bs!1567363 (and d!1969476 b!6273219)))

(assert (=> bs!1567363 (not (= lambda!343853 lambda!343725))))

(declare-fun bs!1567364 () Bool)

(assert (= bs!1567364 (and d!1969476 d!1969114)))

(assert (=> bs!1567364 (= lambda!343853 lambda!343790)))

(declare-fun bs!1567365 () Bool)

(assert (= bs!1567365 (and d!1969476 d!1969400)))

(assert (=> bs!1567365 (not (= lambda!343853 lambda!343833))))

(declare-fun bs!1567366 () Bool)

(assert (= bs!1567366 (and d!1969476 d!1969472)))

(assert (=> bs!1567366 (= lambda!343853 lambda!343852)))

(declare-fun bs!1567367 () Bool)

(assert (= bs!1567367 (and d!1969476 b!6274530)))

(assert (=> bs!1567367 (not (= lambda!343853 lambda!343847))))

(declare-fun bs!1567368 () Bool)

(assert (= bs!1567368 (and d!1969476 b!6273222)))

(assert (=> bs!1567368 (not (= lambda!343853 lambda!343727))))

(declare-fun bs!1567369 () Bool)

(assert (= bs!1567369 (and d!1969476 b!6274532)))

(assert (=> bs!1567369 (not (= lambda!343853 lambda!343848))))

(declare-fun bs!1567370 () Bool)

(assert (= bs!1567370 (and d!1969476 d!1969446)))

(assert (=> bs!1567370 (= lambda!343853 lambda!343850)))

(declare-fun bs!1567371 () Bool)

(assert (= bs!1567371 (and d!1969476 b!6274488)))

(assert (=> bs!1567371 (not (= lambda!343853 lambda!343842))))

(declare-fun bs!1567372 () Bool)

(assert (= bs!1567372 (and d!1969476 d!1969422)))

(assert (=> bs!1567372 (not (= lambda!343853 lambda!343845))))

(declare-fun bs!1567373 () Bool)

(assert (= bs!1567373 (and d!1969476 b!6273224)))

(assert (=> bs!1567373 (not (= lambda!343853 lambda!343728))))

(declare-fun bs!1567374 () Bool)

(assert (= bs!1567374 (and d!1969476 d!1969272)))

(assert (=> bs!1567374 (= lambda!343853 lambda!343818)))

(declare-fun bs!1567375 () Bool)

(assert (= bs!1567375 (and d!1969476 d!1969324)))

(assert (=> bs!1567375 (= lambda!343853 lambda!343821)))

(declare-fun bs!1567376 () Bool)

(assert (= bs!1567376 (and d!1969476 d!1969352)))

(assert (=> bs!1567376 (= lambda!343853 lambda!343827)))

(declare-fun bs!1567377 () Bool)

(assert (= bs!1567377 (and d!1969476 b!6274486)))

(assert (=> bs!1567377 (not (= lambda!343853 lambda!343841))))

(declare-fun bs!1567378 () Bool)

(assert (= bs!1567378 (and d!1969476 b!6273217)))

(assert (=> bs!1567378 (not (= lambda!343853 lambda!343724))))

(assert (=> d!1969476 (= (nullableZipper!1962 lt!2352395) (exists!2524 lt!2352395 lambda!343853))))

(declare-fun bs!1567379 () Bool)

(assert (= bs!1567379 d!1969476))

(declare-fun m!7096224 () Bool)

(assert (=> bs!1567379 m!7096224))

(assert (=> b!6273372 d!1969476))

(declare-fun b!6274594 () Bool)

(declare-fun e!3816138 () Bool)

(declare-fun call!530840 () Bool)

(assert (=> b!6274594 (= e!3816138 call!530840)))

(declare-fun b!6274595 () Bool)

(declare-fun e!3816137 () Bool)

(declare-fun e!3816134 () Bool)

(assert (=> b!6274595 (= e!3816137 e!3816134)))

(declare-fun res!2588038 () Bool)

(assert (=> b!6274595 (= res!2588038 (not (nullable!6185 (reg!16521 lt!2352594))))))

(assert (=> b!6274595 (=> (not res!2588038) (not e!3816134))))

(declare-fun call!530842 () Bool)

(declare-fun c!1137379 () Bool)

(declare-fun bm!530835 () Bool)

(declare-fun c!1137380 () Bool)

(assert (=> bm!530835 (= call!530842 (validRegex!7928 (ite c!1137379 (reg!16521 lt!2352594) (ite c!1137380 (regOne!32897 lt!2352594) (regOne!32896 lt!2352594)))))))

(declare-fun b!6274596 () Bool)

(declare-fun e!3816139 () Bool)

(assert (=> b!6274596 (= e!3816139 e!3816137)))

(assert (=> b!6274596 (= c!1137379 (is-Star!16192 lt!2352594))))

(declare-fun b!6274597 () Bool)

(declare-fun e!3816136 () Bool)

(assert (=> b!6274597 (= e!3816137 e!3816136)))

(assert (=> b!6274597 (= c!1137380 (is-Union!16192 lt!2352594))))

(declare-fun d!1969478 () Bool)

(declare-fun res!2588035 () Bool)

(assert (=> d!1969478 (=> res!2588035 e!3816139)))

(assert (=> d!1969478 (= res!2588035 (is-ElementMatch!16192 lt!2352594))))

(assert (=> d!1969478 (= (validRegex!7928 lt!2352594) e!3816139)))

(declare-fun bm!530836 () Bool)

(declare-fun call!530841 () Bool)

(assert (=> bm!530836 (= call!530841 call!530842)))

(declare-fun b!6274598 () Bool)

(declare-fun res!2588037 () Bool)

(declare-fun e!3816135 () Bool)

(assert (=> b!6274598 (=> res!2588037 e!3816135)))

(assert (=> b!6274598 (= res!2588037 (not (is-Concat!25037 lt!2352594)))))

(assert (=> b!6274598 (= e!3816136 e!3816135)))

(declare-fun b!6274599 () Bool)

(declare-fun e!3816133 () Bool)

(assert (=> b!6274599 (= e!3816135 e!3816133)))

(declare-fun res!2588036 () Bool)

(assert (=> b!6274599 (=> (not res!2588036) (not e!3816133))))

(assert (=> b!6274599 (= res!2588036 call!530841)))

(declare-fun b!6274600 () Bool)

(assert (=> b!6274600 (= e!3816134 call!530842)))

(declare-fun bm!530837 () Bool)

(assert (=> bm!530837 (= call!530840 (validRegex!7928 (ite c!1137380 (regTwo!32897 lt!2352594) (regTwo!32896 lt!2352594))))))

(declare-fun b!6274601 () Bool)

(assert (=> b!6274601 (= e!3816133 call!530840)))

(declare-fun b!6274602 () Bool)

(declare-fun res!2588039 () Bool)

(assert (=> b!6274602 (=> (not res!2588039) (not e!3816138))))

(assert (=> b!6274602 (= res!2588039 call!530841)))

(assert (=> b!6274602 (= e!3816136 e!3816138)))

(assert (= (and d!1969478 (not res!2588035)) b!6274596))

(assert (= (and b!6274596 c!1137379) b!6274595))

(assert (= (and b!6274596 (not c!1137379)) b!6274597))

(assert (= (and b!6274595 res!2588038) b!6274600))

(assert (= (and b!6274597 c!1137380) b!6274602))

(assert (= (and b!6274597 (not c!1137380)) b!6274598))

(assert (= (and b!6274602 res!2588039) b!6274594))

(assert (= (and b!6274598 (not res!2588037)) b!6274599))

(assert (= (and b!6274599 res!2588036) b!6274601))

(assert (= (or b!6274594 b!6274601) bm!530837))

(assert (= (or b!6274602 b!6274599) bm!530836))

(assert (= (or b!6274600 bm!530836) bm!530835))

(declare-fun m!7096226 () Bool)

(assert (=> b!6274595 m!7096226))

(declare-fun m!7096228 () Bool)

(assert (=> bm!530835 m!7096228))

(declare-fun m!7096230 () Bool)

(assert (=> bm!530837 m!7096230))

(assert (=> d!1968906 d!1969478))

(assert (=> d!1968906 d!1968940))

(assert (=> d!1968906 d!1968942))

(declare-fun bs!1567380 () Bool)

(declare-fun d!1969480 () Bool)

(assert (= bs!1567380 (and d!1969480 d!1969134)))

(declare-fun lambda!343854 () Int)

(assert (=> bs!1567380 (= lambda!343854 lambda!343795)))

(declare-fun bs!1567381 () Bool)

(assert (= bs!1567381 (and d!1969480 d!1969384)))

(assert (=> bs!1567381 (= lambda!343854 lambda!343828)))

(declare-fun bs!1567382 () Bool)

(assert (= bs!1567382 (and d!1969480 d!1969252)))

(assert (=> bs!1567382 (= lambda!343854 lambda!343817)))

(declare-fun bs!1567383 () Bool)

(assert (= bs!1567383 (and d!1969480 d!1969242)))

(assert (=> bs!1567383 (= lambda!343854 lambda!343815)))

(declare-fun bs!1567384 () Bool)

(assert (= bs!1567384 (and d!1969480 b!6273219)))

(assert (=> bs!1567384 (not (= lambda!343854 lambda!343725))))

(declare-fun bs!1567385 () Bool)

(assert (= bs!1567385 (and d!1969480 d!1969114)))

(assert (=> bs!1567385 (= lambda!343854 lambda!343790)))

(declare-fun bs!1567386 () Bool)

(assert (= bs!1567386 (and d!1969480 d!1969400)))

(assert (=> bs!1567386 (not (= lambda!343854 lambda!343833))))

(declare-fun bs!1567387 () Bool)

(assert (= bs!1567387 (and d!1969480 d!1969472)))

(assert (=> bs!1567387 (= lambda!343854 lambda!343852)))

(declare-fun bs!1567388 () Bool)

(assert (= bs!1567388 (and d!1969480 b!6274530)))

(assert (=> bs!1567388 (not (= lambda!343854 lambda!343847))))

(declare-fun bs!1567389 () Bool)

(assert (= bs!1567389 (and d!1969480 b!6273222)))

(assert (=> bs!1567389 (not (= lambda!343854 lambda!343727))))

(declare-fun bs!1567390 () Bool)

(assert (= bs!1567390 (and d!1969480 d!1969446)))

(assert (=> bs!1567390 (= lambda!343854 lambda!343850)))

(declare-fun bs!1567391 () Bool)

(assert (= bs!1567391 (and d!1969480 b!6274488)))

(assert (=> bs!1567391 (not (= lambda!343854 lambda!343842))))

(declare-fun bs!1567392 () Bool)

(assert (= bs!1567392 (and d!1969480 d!1969422)))

(assert (=> bs!1567392 (not (= lambda!343854 lambda!343845))))

(declare-fun bs!1567393 () Bool)

(assert (= bs!1567393 (and d!1969480 b!6273224)))

(assert (=> bs!1567393 (not (= lambda!343854 lambda!343728))))

(declare-fun bs!1567394 () Bool)

(assert (= bs!1567394 (and d!1969480 d!1969272)))

(assert (=> bs!1567394 (= lambda!343854 lambda!343818)))

(declare-fun bs!1567395 () Bool)

(assert (= bs!1567395 (and d!1969480 d!1969324)))

(assert (=> bs!1567395 (= lambda!343854 lambda!343821)))

(declare-fun bs!1567396 () Bool)

(assert (= bs!1567396 (and d!1969480 d!1969352)))

(assert (=> bs!1567396 (= lambda!343854 lambda!343827)))

(declare-fun bs!1567397 () Bool)

(assert (= bs!1567397 (and d!1969480 b!6274486)))

(assert (=> bs!1567397 (not (= lambda!343854 lambda!343841))))

(declare-fun bs!1567398 () Bool)

(assert (= bs!1567398 (and d!1969480 b!6273217)))

(assert (=> bs!1567398 (not (= lambda!343854 lambda!343724))))

(declare-fun bs!1567399 () Bool)

(assert (= bs!1567399 (and d!1969480 b!6274532)))

(assert (=> bs!1567399 (not (= lambda!343854 lambda!343848))))

(declare-fun bs!1567400 () Bool)

(assert (= bs!1567400 (and d!1969480 d!1969476)))

(assert (=> bs!1567400 (= lambda!343854 lambda!343853)))

(assert (=> d!1969480 (= (nullableZipper!1962 lt!2352421) (exists!2524 lt!2352421 lambda!343854))))

(declare-fun bs!1567401 () Bool)

(assert (= bs!1567401 d!1969480))

(declare-fun m!7096232 () Bool)

(assert (=> bs!1567401 m!7096232))

(assert (=> b!6273187 d!1969480))

(declare-fun bs!1567402 () Bool)

(declare-fun d!1969482 () Bool)

(assert (= bs!1567402 (and d!1969482 d!1969136)))

(declare-fun lambda!343855 () Int)

(assert (=> bs!1567402 (= lambda!343855 lambda!343796)))

(declare-fun bs!1567403 () Bool)

(assert (= bs!1567403 (and d!1969482 d!1969466)))

(assert (=> bs!1567403 (= lambda!343855 lambda!343851)))

(declare-fun bs!1567404 () Bool)

(assert (= bs!1567404 (and d!1969482 b!6274481)))

(assert (=> bs!1567404 (not (= lambda!343855 lambda!343838))))

(declare-fun bs!1567405 () Bool)

(assert (= bs!1567405 (and d!1969482 d!1969208)))

(assert (=> bs!1567405 (= lambda!343855 lambda!343811)))

(declare-fun bs!1567406 () Bool)

(assert (= bs!1567406 (and d!1969482 b!6274525)))

(assert (=> bs!1567406 (not (= lambda!343855 lambda!343843))))

(declare-fun bs!1567407 () Bool)

(assert (= bs!1567407 (and d!1969482 d!1968922)))

(assert (=> bs!1567407 (= lambda!343855 lambda!343732)))

(declare-fun bs!1567408 () Bool)

(assert (= bs!1567408 (and d!1969482 d!1969118)))

(assert (=> bs!1567408 (= lambda!343855 lambda!343791)))

(declare-fun bs!1567409 () Bool)

(assert (= bs!1567409 (and d!1969482 d!1968940)))

(assert (=> bs!1567409 (= lambda!343855 lambda!343736)))

(declare-fun bs!1567410 () Bool)

(assert (= bs!1567410 (and d!1969482 b!6274527)))

(assert (=> bs!1567410 (not (= lambda!343855 lambda!343844))))

(declare-fun bs!1567411 () Bool)

(assert (= bs!1567411 (and d!1969482 b!6274483)))

(assert (=> bs!1567411 (not (= lambda!343855 lambda!343839))))

(declare-fun bs!1567412 () Bool)

(assert (= bs!1567412 (and d!1969482 d!1969192)))

(assert (=> bs!1567412 (= lambda!343855 lambda!343807)))

(declare-fun bs!1567413 () Bool)

(assert (= bs!1567413 (and d!1969482 d!1968942)))

(assert (=> bs!1567413 (= lambda!343855 lambda!343739)))

(declare-fun bs!1567414 () Bool)

(assert (= bs!1567414 (and d!1969482 d!1968924)))

(assert (=> bs!1567414 (= lambda!343855 lambda!343733)))

(declare-fun bs!1567415 () Bool)

(assert (= bs!1567415 (and d!1969482 d!1968914)))

(assert (=> bs!1567415 (= lambda!343855 lambda!343729)))

(declare-fun bs!1567416 () Bool)

(assert (= bs!1567416 (and d!1969482 d!1969230)))

(assert (=> bs!1567416 (= lambda!343855 lambda!343813)))

(declare-fun bs!1567417 () Bool)

(assert (= bs!1567417 (and d!1969482 d!1968854)))

(assert (=> bs!1567417 (= lambda!343855 lambda!343697)))

(declare-fun bs!1567418 () Bool)

(assert (= bs!1567418 (and d!1969482 d!1968828)))

(assert (=> bs!1567418 (= lambda!343855 lambda!343694)))

(declare-fun b!6274603 () Bool)

(declare-fun e!3816144 () Regex!16192)

(assert (=> b!6274603 (= e!3816144 (Union!16192 (h!71199 (t!378433 (unfocusZipperList!1613 zl!343))) (generalisedUnion!2036 (t!378433 (t!378433 (unfocusZipperList!1613 zl!343))))))))

(declare-fun b!6274604 () Bool)

(declare-fun e!3816141 () Regex!16192)

(assert (=> b!6274604 (= e!3816141 (h!71199 (t!378433 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6274605 () Bool)

(declare-fun e!3816143 () Bool)

(declare-fun e!3816142 () Bool)

(assert (=> b!6274605 (= e!3816143 e!3816142)))

(declare-fun c!1137381 () Bool)

(assert (=> b!6274605 (= c!1137381 (isEmpty!36789 (t!378433 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6274606 () Bool)

(assert (=> b!6274606 (= e!3816141 e!3816144)))

(declare-fun c!1137383 () Bool)

(assert (=> b!6274606 (= c!1137383 (is-Cons!64751 (t!378433 (unfocusZipperList!1613 zl!343))))))

(declare-fun b!6274607 () Bool)

(declare-fun lt!2352756 () Regex!16192)

(assert (=> b!6274607 (= e!3816142 (isEmptyLang!1606 lt!2352756))))

(assert (=> d!1969482 e!3816143))

(declare-fun res!2588041 () Bool)

(assert (=> d!1969482 (=> (not res!2588041) (not e!3816143))))

(assert (=> d!1969482 (= res!2588041 (validRegex!7928 lt!2352756))))

(assert (=> d!1969482 (= lt!2352756 e!3816141)))

(declare-fun c!1137382 () Bool)

(declare-fun e!3816140 () Bool)

(assert (=> d!1969482 (= c!1137382 e!3816140)))

(declare-fun res!2588040 () Bool)

(assert (=> d!1969482 (=> (not res!2588040) (not e!3816140))))

(assert (=> d!1969482 (= res!2588040 (is-Cons!64751 (t!378433 (unfocusZipperList!1613 zl!343))))))

(assert (=> d!1969482 (forall!15322 (t!378433 (unfocusZipperList!1613 zl!343)) lambda!343855)))

(assert (=> d!1969482 (= (generalisedUnion!2036 (t!378433 (unfocusZipperList!1613 zl!343))) lt!2352756)))

(declare-fun b!6274608 () Bool)

(declare-fun e!3816145 () Bool)

(assert (=> b!6274608 (= e!3816142 e!3816145)))

(declare-fun c!1137384 () Bool)

(assert (=> b!6274608 (= c!1137384 (isEmpty!36789 (tail!11970 (t!378433 (unfocusZipperList!1613 zl!343)))))))

(declare-fun b!6274609 () Bool)

(assert (=> b!6274609 (= e!3816144 EmptyLang!16192)))

(declare-fun b!6274610 () Bool)

(assert (=> b!6274610 (= e!3816145 (= lt!2352756 (head!12885 (t!378433 (unfocusZipperList!1613 zl!343)))))))

(declare-fun b!6274611 () Bool)

(assert (=> b!6274611 (= e!3816145 (isUnion!1036 lt!2352756))))

(declare-fun b!6274612 () Bool)

(assert (=> b!6274612 (= e!3816140 (isEmpty!36789 (t!378433 (t!378433 (unfocusZipperList!1613 zl!343)))))))

(assert (= (and d!1969482 res!2588040) b!6274612))

(assert (= (and d!1969482 c!1137382) b!6274604))

(assert (= (and d!1969482 (not c!1137382)) b!6274606))

(assert (= (and b!6274606 c!1137383) b!6274603))

(assert (= (and b!6274606 (not c!1137383)) b!6274609))

(assert (= (and d!1969482 res!2588041) b!6274605))

(assert (= (and b!6274605 c!1137381) b!6274607))

(assert (= (and b!6274605 (not c!1137381)) b!6274608))

(assert (= (and b!6274608 c!1137384) b!6274610))

(assert (= (and b!6274608 (not c!1137384)) b!6274611))

(declare-fun m!7096234 () Bool)

(assert (=> b!6274610 m!7096234))

(declare-fun m!7096236 () Bool)

(assert (=> d!1969482 m!7096236))

(declare-fun m!7096238 () Bool)

(assert (=> d!1969482 m!7096238))

(declare-fun m!7096240 () Bool)

(assert (=> b!6274611 m!7096240))

(declare-fun m!7096242 () Bool)

(assert (=> b!6274612 m!7096242))

(declare-fun m!7096244 () Bool)

(assert (=> b!6274603 m!7096244))

(declare-fun m!7096246 () Bool)

(assert (=> b!6274607 m!7096246))

(declare-fun m!7096248 () Bool)

(assert (=> b!6274608 m!7096248))

(assert (=> b!6274608 m!7096248))

(declare-fun m!7096250 () Bool)

(assert (=> b!6274608 m!7096250))

(assert (=> b!6274605 m!7094988))

(assert (=> b!6273352 d!1969482))

(declare-fun d!1969484 () Bool)

(assert (=> d!1969484 (= (isEmpty!36789 (tail!11970 lt!2352407)) (is-Nil!64751 (tail!11970 lt!2352407)))))

(assert (=> b!6273289 d!1969484))

(declare-fun d!1969486 () Bool)

(assert (=> d!1969486 (= (tail!11970 lt!2352407) (t!378433 lt!2352407))))

(assert (=> b!6273289 d!1969486))

(assert (=> d!1968946 d!1968952))

(declare-fun d!1969488 () Bool)

(assert (=> d!1969488 (= (flatMap!1697 lt!2352408 lambda!343676) (dynLambda!25610 lambda!343676 lt!2352397))))

(assert (=> d!1969488 true))

(declare-fun _$13!3387 () Unit!158099)

(assert (=> d!1969488 (= (choose!46546 lt!2352408 lt!2352397 lambda!343676) _$13!3387)))

(declare-fun b_lambda!238919 () Bool)

(assert (=> (not b_lambda!238919) (not d!1969488)))

(declare-fun bs!1567419 () Bool)

(assert (= bs!1567419 d!1969488))

(assert (=> bs!1567419 m!7094456))

(assert (=> bs!1567419 m!7095010))

(assert (=> d!1968946 d!1969488))

(declare-fun b!6274613 () Bool)

(declare-fun e!3816147 () Int)

(assert (=> b!6274613 (= e!3816147 1)))

(declare-fun d!1969490 () Bool)

(declare-fun lt!2352757 () Int)

(assert (=> d!1969490 (> lt!2352757 0)))

(declare-fun e!3816146 () Int)

(assert (=> d!1969490 (= lt!2352757 e!3816146)))

(declare-fun c!1137387 () Bool)

(assert (=> d!1969490 (= c!1137387 (is-ElementMatch!16192 (h!71199 (exprs!6076 lt!2352409))))))

(assert (=> d!1969490 (= (regexDepthTotal!168 (h!71199 (exprs!6076 lt!2352409))) lt!2352757)))

(declare-fun b!6274614 () Bool)

(declare-fun call!530843 () Int)

(declare-fun call!530844 () Int)

(assert (=> b!6274614 (= e!3816147 (+ 1 call!530843 call!530844))))

(declare-fun b!6274615 () Bool)

(assert (=> b!6274615 (= e!3816146 1)))

(declare-fun bm!530838 () Bool)

(declare-fun c!1137388 () Bool)

(declare-fun c!1137386 () Bool)

(declare-fun call!530845 () Int)

(assert (=> bm!530838 (= call!530845 (regexDepthTotal!168 (ite c!1137388 (reg!16521 (h!71199 (exprs!6076 lt!2352409))) (ite c!1137386 (regTwo!32897 (h!71199 (exprs!6076 lt!2352409))) (regTwo!32896 (h!71199 (exprs!6076 lt!2352409)))))))))

(declare-fun b!6274616 () Bool)

(declare-fun e!3816149 () Int)

(assert (=> b!6274616 (= e!3816149 e!3816147)))

(declare-fun c!1137385 () Bool)

(assert (=> b!6274616 (= c!1137385 (is-Concat!25037 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun bm!530839 () Bool)

(assert (=> bm!530839 (= call!530843 (regexDepthTotal!168 (ite c!1137386 (regOne!32897 (h!71199 (exprs!6076 lt!2352409))) (regOne!32896 (h!71199 (exprs!6076 lt!2352409))))))))

(declare-fun b!6274617 () Bool)

(declare-fun e!3816148 () Int)

(assert (=> b!6274617 (= e!3816146 e!3816148)))

(assert (=> b!6274617 (= c!1137388 (is-Star!16192 (h!71199 (exprs!6076 lt!2352409))))))

(declare-fun b!6274618 () Bool)

(assert (=> b!6274618 (= e!3816149 (+ 1 call!530843 call!530844))))

(declare-fun b!6274619 () Bool)

(assert (=> b!6274619 (= c!1137386 (is-Union!16192 (h!71199 (exprs!6076 lt!2352409))))))

(assert (=> b!6274619 (= e!3816148 e!3816149)))

(declare-fun b!6274620 () Bool)

(assert (=> b!6274620 (= e!3816148 (+ 1 call!530845))))

(declare-fun bm!530840 () Bool)

(assert (=> bm!530840 (= call!530844 call!530845)))

(assert (= (and d!1969490 c!1137387) b!6274615))

(assert (= (and d!1969490 (not c!1137387)) b!6274617))

(assert (= (and b!6274617 c!1137388) b!6274620))

(assert (= (and b!6274617 (not c!1137388)) b!6274619))

(assert (= (and b!6274619 c!1137386) b!6274618))

(assert (= (and b!6274619 (not c!1137386)) b!6274616))

(assert (= (and b!6274616 c!1137385) b!6274614))

(assert (= (and b!6274616 (not c!1137385)) b!6274613))

(assert (= (or b!6274618 b!6274614) bm!530840))

(assert (= (or b!6274618 b!6274614) bm!530839))

(assert (= (or b!6274620 bm!530840) bm!530838))

(declare-fun m!7096252 () Bool)

(assert (=> bm!530838 m!7096252))

(declare-fun m!7096254 () Bool)

(assert (=> bm!530839 m!7096254))

(assert (=> b!6273256 d!1969490))

(declare-fun d!1969492 () Bool)

(declare-fun lt!2352758 () Int)

(assert (=> d!1969492 (>= lt!2352758 0)))

(declare-fun e!3816150 () Int)

(assert (=> d!1969492 (= lt!2352758 e!3816150)))

(declare-fun c!1137389 () Bool)

(assert (=> d!1969492 (= c!1137389 (is-Cons!64751 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409))))))))

(assert (=> d!1969492 (= (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))) lt!2352758)))

(declare-fun b!6274621 () Bool)

(assert (=> b!6274621 (= e!3816150 (+ (regexDepthTotal!168 (h!71199 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))))) (contextDepthTotal!315 (Context!11153 (t!378433 (exprs!6076 (Context!11153 (t!378433 (exprs!6076 lt!2352409)))))))))))

(declare-fun b!6274622 () Bool)

(assert (=> b!6274622 (= e!3816150 1)))

(assert (= (and d!1969492 c!1137389) b!6274621))

(assert (= (and d!1969492 (not c!1137389)) b!6274622))

(declare-fun m!7096256 () Bool)

(assert (=> b!6274621 m!7096256))

(declare-fun m!7096258 () Bool)

(assert (=> b!6274621 m!7096258))

(assert (=> b!6273256 d!1969492))

(declare-fun b!6274623 () Bool)

(declare-fun e!3816153 () Bool)

(assert (=> b!6274623 (= e!3816153 (nullable!6185 (regTwo!32896 r!7292)))))

(declare-fun bm!530841 () Bool)

(declare-fun call!530846 () Bool)

(assert (=> bm!530841 (= call!530846 (isEmpty!36792 s!2326))))

(declare-fun b!6274624 () Bool)

(declare-fun e!3816154 () Bool)

(declare-fun e!3816156 () Bool)

(assert (=> b!6274624 (= e!3816154 e!3816156)))

(declare-fun res!2588044 () Bool)

(assert (=> b!6274624 (=> res!2588044 e!3816156)))

(assert (=> b!6274624 (= res!2588044 call!530846)))

(declare-fun d!1969494 () Bool)

(declare-fun e!3816151 () Bool)

(assert (=> d!1969494 e!3816151))

(declare-fun c!1137392 () Bool)

(assert (=> d!1969494 (= c!1137392 (is-EmptyExpr!16192 (regTwo!32896 r!7292)))))

(declare-fun lt!2352759 () Bool)

(assert (=> d!1969494 (= lt!2352759 e!3816153)))

(declare-fun c!1137390 () Bool)

(assert (=> d!1969494 (= c!1137390 (isEmpty!36792 s!2326))))

(assert (=> d!1969494 (validRegex!7928 (regTwo!32896 r!7292))))

(assert (=> d!1969494 (= (matchR!8375 (regTwo!32896 r!7292) s!2326) lt!2352759)))

(declare-fun b!6274625 () Bool)

(declare-fun e!3816155 () Bool)

(assert (=> b!6274625 (= e!3816155 (not lt!2352759))))

(declare-fun b!6274626 () Bool)

(assert (=> b!6274626 (= e!3816153 (matchR!8375 (derivativeStep!4901 (regTwo!32896 r!7292) (head!12884 s!2326)) (tail!11969 s!2326)))))

(declare-fun b!6274627 () Bool)

(declare-fun res!2588047 () Bool)

(assert (=> b!6274627 (=> res!2588047 e!3816156)))

(assert (=> b!6274627 (= res!2588047 (not (isEmpty!36792 (tail!11969 s!2326))))))

(declare-fun b!6274628 () Bool)

(assert (=> b!6274628 (= e!3816156 (not (= (head!12884 s!2326) (c!1136845 (regTwo!32896 r!7292)))))))

(declare-fun b!6274629 () Bool)

(declare-fun e!3816157 () Bool)

(assert (=> b!6274629 (= e!3816157 e!3816154)))

(declare-fun res!2588043 () Bool)

(assert (=> b!6274629 (=> (not res!2588043) (not e!3816154))))

(assert (=> b!6274629 (= res!2588043 (not lt!2352759))))

(declare-fun b!6274630 () Bool)

(declare-fun e!3816152 () Bool)

(assert (=> b!6274630 (= e!3816152 (= (head!12884 s!2326) (c!1136845 (regTwo!32896 r!7292))))))

(declare-fun b!6274631 () Bool)

(declare-fun res!2588048 () Bool)

(assert (=> b!6274631 (=> (not res!2588048) (not e!3816152))))

(assert (=> b!6274631 (= res!2588048 (not call!530846))))

(declare-fun b!6274632 () Bool)

(declare-fun res!2588049 () Bool)

(assert (=> b!6274632 (=> (not res!2588049) (not e!3816152))))

(assert (=> b!6274632 (= res!2588049 (isEmpty!36792 (tail!11969 s!2326)))))

(declare-fun b!6274633 () Bool)

(declare-fun res!2588045 () Bool)

(assert (=> b!6274633 (=> res!2588045 e!3816157)))

(assert (=> b!6274633 (= res!2588045 e!3816152)))

(declare-fun res!2588046 () Bool)

(assert (=> b!6274633 (=> (not res!2588046) (not e!3816152))))

(assert (=> b!6274633 (= res!2588046 lt!2352759)))

(declare-fun b!6274634 () Bool)

(assert (=> b!6274634 (= e!3816151 e!3816155)))

(declare-fun c!1137391 () Bool)

(assert (=> b!6274634 (= c!1137391 (is-EmptyLang!16192 (regTwo!32896 r!7292)))))

(declare-fun b!6274635 () Bool)

(declare-fun res!2588042 () Bool)

(assert (=> b!6274635 (=> res!2588042 e!3816157)))

(assert (=> b!6274635 (= res!2588042 (not (is-ElementMatch!16192 (regTwo!32896 r!7292))))))

(assert (=> b!6274635 (= e!3816155 e!3816157)))

(declare-fun b!6274636 () Bool)

(assert (=> b!6274636 (= e!3816151 (= lt!2352759 call!530846))))

(assert (= (and d!1969494 c!1137390) b!6274623))

(assert (= (and d!1969494 (not c!1137390)) b!6274626))

(assert (= (and d!1969494 c!1137392) b!6274636))

(assert (= (and d!1969494 (not c!1137392)) b!6274634))

(assert (= (and b!6274634 c!1137391) b!6274625))

(assert (= (and b!6274634 (not c!1137391)) b!6274635))

(assert (= (and b!6274635 (not res!2588042)) b!6274633))

(assert (= (and b!6274633 res!2588046) b!6274631))

(assert (= (and b!6274631 res!2588048) b!6274632))

(assert (= (and b!6274632 res!2588049) b!6274630))

(assert (= (and b!6274633 (not res!2588045)) b!6274629))

(assert (= (and b!6274629 res!2588043) b!6274624))

(assert (= (and b!6274624 (not res!2588044)) b!6274627))

(assert (= (and b!6274627 (not res!2588047)) b!6274628))

(assert (= (or b!6274636 b!6274624 b!6274631) bm!530841))

(assert (=> b!6274627 m!7094774))

(assert (=> b!6274627 m!7094774))

(assert (=> b!6274627 m!7094776))

(assert (=> b!6274632 m!7094774))

(assert (=> b!6274632 m!7094774))

(assert (=> b!6274632 m!7094776))

(assert (=> b!6274623 m!7095922))

(assert (=> d!1969494 m!7094766))

(assert (=> d!1969494 m!7095926))

(assert (=> b!6274626 m!7094780))

(assert (=> b!6274626 m!7094780))

(declare-fun m!7096260 () Bool)

(assert (=> b!6274626 m!7096260))

(assert (=> b!6274626 m!7094774))

(assert (=> b!6274626 m!7096260))

(assert (=> b!6274626 m!7094774))

(declare-fun m!7096262 () Bool)

(assert (=> b!6274626 m!7096262))

(assert (=> bm!530841 m!7094766))

(assert (=> b!6274630 m!7094780))

(assert (=> b!6274628 m!7094780))

(assert (=> b!6273166 d!1969494))

(declare-fun d!1969496 () Bool)

(assert (=> d!1969496 true))

(assert (=> d!1969496 true))

(declare-fun res!2588050 () Bool)

(assert (=> d!1969496 (= (choose!46548 lambda!343674) res!2588050)))

(assert (=> d!1968888 d!1969496))

(declare-fun d!1969498 () Bool)

(assert (=> d!1969498 true))

(declare-fun setRes!42679 () Bool)

(assert (=> d!1969498 setRes!42679))

(declare-fun condSetEmpty!42679 () Bool)

(declare-fun res!2588051 () (Set Context!11152))

(assert (=> d!1969498 (= condSetEmpty!42679 (= res!2588051 (as set.empty (Set Context!11152))))))

(assert (=> d!1969498 (= (choose!46545 lt!2352410 lambda!343676) res!2588051)))

(declare-fun setIsEmpty!42679 () Bool)

(assert (=> setIsEmpty!42679 setRes!42679))

(declare-fun tp!1749398 () Bool)

(declare-fun setElem!42679 () Context!11152)

(declare-fun e!3816158 () Bool)

(declare-fun setNonEmpty!42679 () Bool)

(assert (=> setNonEmpty!42679 (= setRes!42679 (and tp!1749398 (inv!83728 setElem!42679) e!3816158))))

(declare-fun setRest!42679 () (Set Context!11152))

(assert (=> setNonEmpty!42679 (= res!2588051 (set.union (set.insert setElem!42679 (as set.empty (Set Context!11152))) setRest!42679))))

(declare-fun b!6274637 () Bool)

(declare-fun tp!1749397 () Bool)

(assert (=> b!6274637 (= e!3816158 tp!1749397)))

(assert (= (and d!1969498 condSetEmpty!42679) setIsEmpty!42679))

(assert (= (and d!1969498 (not condSetEmpty!42679)) setNonEmpty!42679))

(assert (= setNonEmpty!42679 b!6274637))

(declare-fun m!7096264 () Bool)

(assert (=> setNonEmpty!42679 m!7096264))

(assert (=> d!1968864 d!1969498))

(declare-fun b!6274638 () Bool)

(declare-fun e!3816159 () Bool)

(declare-fun tp!1749399 () Bool)

(declare-fun tp!1749400 () Bool)

(assert (=> b!6274638 (= e!3816159 (and tp!1749399 tp!1749400))))

(assert (=> b!6273382 (= tp!1749271 e!3816159)))

(assert (= (and b!6273382 (is-Cons!64751 (exprs!6076 (h!71201 (t!378435 zl!343))))) b!6274638))

(declare-fun e!3816160 () Bool)

(assert (=> b!6273405 (= tp!1749293 e!3816160)))

(declare-fun b!6274642 () Bool)

(declare-fun tp!1749403 () Bool)

(declare-fun tp!1749404 () Bool)

(assert (=> b!6274642 (= e!3816160 (and tp!1749403 tp!1749404))))

(declare-fun b!6274640 () Bool)

(declare-fun tp!1749402 () Bool)

(declare-fun tp!1749405 () Bool)

(assert (=> b!6274640 (= e!3816160 (and tp!1749402 tp!1749405))))

(declare-fun b!6274641 () Bool)

(declare-fun tp!1749401 () Bool)

(assert (=> b!6274641 (= e!3816160 tp!1749401)))

(declare-fun b!6274639 () Bool)

(assert (=> b!6274639 (= e!3816160 tp_is_empty!41637)))

(assert (= (and b!6273405 (is-ElementMatch!16192 (regOne!32897 (regTwo!32896 r!7292)))) b!6274639))

(assert (= (and b!6273405 (is-Concat!25037 (regOne!32897 (regTwo!32896 r!7292)))) b!6274640))

(assert (= (and b!6273405 (is-Star!16192 (regOne!32897 (regTwo!32896 r!7292)))) b!6274641))

(assert (= (and b!6273405 (is-Union!16192 (regOne!32897 (regTwo!32896 r!7292)))) b!6274642))

(declare-fun e!3816161 () Bool)

(assert (=> b!6273405 (= tp!1749294 e!3816161)))

(declare-fun b!6274646 () Bool)

(declare-fun tp!1749408 () Bool)

(declare-fun tp!1749409 () Bool)

(assert (=> b!6274646 (= e!3816161 (and tp!1749408 tp!1749409))))

(declare-fun b!6274644 () Bool)

(declare-fun tp!1749407 () Bool)

(declare-fun tp!1749410 () Bool)

(assert (=> b!6274644 (= e!3816161 (and tp!1749407 tp!1749410))))

(declare-fun b!6274645 () Bool)

(declare-fun tp!1749406 () Bool)

(assert (=> b!6274645 (= e!3816161 tp!1749406)))

(declare-fun b!6274643 () Bool)

(assert (=> b!6274643 (= e!3816161 tp_is_empty!41637)))

(assert (= (and b!6273405 (is-ElementMatch!16192 (regTwo!32897 (regTwo!32896 r!7292)))) b!6274643))

(assert (= (and b!6273405 (is-Concat!25037 (regTwo!32897 (regTwo!32896 r!7292)))) b!6274644))

(assert (= (and b!6273405 (is-Star!16192 (regTwo!32897 (regTwo!32896 r!7292)))) b!6274645))

(assert (= (and b!6273405 (is-Union!16192 (regTwo!32897 (regTwo!32896 r!7292)))) b!6274646))

(declare-fun b!6274648 () Bool)

(declare-fun e!3816163 () Bool)

(declare-fun tp!1749411 () Bool)

(assert (=> b!6274648 (= e!3816163 tp!1749411)))

(declare-fun b!6274647 () Bool)

(declare-fun e!3816162 () Bool)

(declare-fun tp!1749412 () Bool)

(assert (=> b!6274647 (= e!3816162 (and (inv!83728 (h!71201 (t!378435 (t!378435 zl!343)))) e!3816163 tp!1749412))))

(assert (=> b!6273381 (= tp!1749272 e!3816162)))

(assert (= b!6274647 b!6274648))

(assert (= (and b!6273381 (is-Cons!64753 (t!378435 (t!378435 zl!343)))) b!6274647))

(declare-fun m!7096266 () Bool)

(assert (=> b!6274647 m!7096266))

(declare-fun b!6274649 () Bool)

(declare-fun e!3816164 () Bool)

(declare-fun tp!1749413 () Bool)

(declare-fun tp!1749414 () Bool)

(assert (=> b!6274649 (= e!3816164 (and tp!1749413 tp!1749414))))

(assert (=> b!6273427 (= tp!1749322 e!3816164)))

(assert (= (and b!6273427 (is-Cons!64751 (exprs!6076 setElem!42671))) b!6274649))

(declare-fun e!3816165 () Bool)

(assert (=> b!6273413 (= tp!1749303 e!3816165)))

(declare-fun b!6274653 () Bool)

(declare-fun tp!1749417 () Bool)

(declare-fun tp!1749418 () Bool)

(assert (=> b!6274653 (= e!3816165 (and tp!1749417 tp!1749418))))

(declare-fun b!6274651 () Bool)

(declare-fun tp!1749416 () Bool)

(declare-fun tp!1749419 () Bool)

(assert (=> b!6274651 (= e!3816165 (and tp!1749416 tp!1749419))))

(declare-fun b!6274652 () Bool)

(declare-fun tp!1749415 () Bool)

(assert (=> b!6274652 (= e!3816165 tp!1749415)))

(declare-fun b!6274650 () Bool)

(assert (=> b!6274650 (= e!3816165 tp_is_empty!41637)))

(assert (= (and b!6273413 (is-ElementMatch!16192 (regOne!32897 (regOne!32897 r!7292)))) b!6274650))

(assert (= (and b!6273413 (is-Concat!25037 (regOne!32897 (regOne!32897 r!7292)))) b!6274651))

(assert (= (and b!6273413 (is-Star!16192 (regOne!32897 (regOne!32897 r!7292)))) b!6274652))

(assert (= (and b!6273413 (is-Union!16192 (regOne!32897 (regOne!32897 r!7292)))) b!6274653))

(declare-fun e!3816166 () Bool)

(assert (=> b!6273413 (= tp!1749304 e!3816166)))

(declare-fun b!6274657 () Bool)

(declare-fun tp!1749422 () Bool)

(declare-fun tp!1749423 () Bool)

(assert (=> b!6274657 (= e!3816166 (and tp!1749422 tp!1749423))))

(declare-fun b!6274655 () Bool)

(declare-fun tp!1749421 () Bool)

(declare-fun tp!1749424 () Bool)

(assert (=> b!6274655 (= e!3816166 (and tp!1749421 tp!1749424))))

(declare-fun b!6274656 () Bool)

(declare-fun tp!1749420 () Bool)

(assert (=> b!6274656 (= e!3816166 tp!1749420)))

(declare-fun b!6274654 () Bool)

(assert (=> b!6274654 (= e!3816166 tp_is_empty!41637)))

(assert (= (and b!6273413 (is-ElementMatch!16192 (regTwo!32897 (regOne!32897 r!7292)))) b!6274654))

(assert (= (and b!6273413 (is-Concat!25037 (regTwo!32897 (regOne!32897 r!7292)))) b!6274655))

(assert (= (and b!6273413 (is-Star!16192 (regTwo!32897 (regOne!32897 r!7292)))) b!6274656))

(assert (= (and b!6273413 (is-Union!16192 (regTwo!32897 (regOne!32897 r!7292)))) b!6274657))

(declare-fun e!3816167 () Bool)

(assert (=> b!6273404 (= tp!1749291 e!3816167)))

(declare-fun b!6274661 () Bool)

(declare-fun tp!1749427 () Bool)

(declare-fun tp!1749428 () Bool)

(assert (=> b!6274661 (= e!3816167 (and tp!1749427 tp!1749428))))

(declare-fun b!6274659 () Bool)

(declare-fun tp!1749426 () Bool)

(declare-fun tp!1749429 () Bool)

(assert (=> b!6274659 (= e!3816167 (and tp!1749426 tp!1749429))))

(declare-fun b!6274660 () Bool)

(declare-fun tp!1749425 () Bool)

(assert (=> b!6274660 (= e!3816167 tp!1749425)))

(declare-fun b!6274658 () Bool)

(assert (=> b!6274658 (= e!3816167 tp_is_empty!41637)))

(assert (= (and b!6273404 (is-ElementMatch!16192 (reg!16521 (regTwo!32896 r!7292)))) b!6274658))

(assert (= (and b!6273404 (is-Concat!25037 (reg!16521 (regTwo!32896 r!7292)))) b!6274659))

(assert (= (and b!6273404 (is-Star!16192 (reg!16521 (regTwo!32896 r!7292)))) b!6274660))

(assert (= (and b!6273404 (is-Union!16192 (reg!16521 (regTwo!32896 r!7292)))) b!6274661))

(declare-fun e!3816168 () Bool)

(assert (=> b!6273403 (= tp!1749292 e!3816168)))

(declare-fun b!6274665 () Bool)

(declare-fun tp!1749432 () Bool)

(declare-fun tp!1749433 () Bool)

(assert (=> b!6274665 (= e!3816168 (and tp!1749432 tp!1749433))))

(declare-fun b!6274663 () Bool)

(declare-fun tp!1749431 () Bool)

(declare-fun tp!1749434 () Bool)

(assert (=> b!6274663 (= e!3816168 (and tp!1749431 tp!1749434))))

(declare-fun b!6274664 () Bool)

(declare-fun tp!1749430 () Bool)

(assert (=> b!6274664 (= e!3816168 tp!1749430)))

(declare-fun b!6274662 () Bool)

(assert (=> b!6274662 (= e!3816168 tp_is_empty!41637)))

(assert (= (and b!6273403 (is-ElementMatch!16192 (regOne!32896 (regTwo!32896 r!7292)))) b!6274662))

(assert (= (and b!6273403 (is-Concat!25037 (regOne!32896 (regTwo!32896 r!7292)))) b!6274663))

(assert (= (and b!6273403 (is-Star!16192 (regOne!32896 (regTwo!32896 r!7292)))) b!6274664))

(assert (= (and b!6273403 (is-Union!16192 (regOne!32896 (regTwo!32896 r!7292)))) b!6274665))

(declare-fun e!3816169 () Bool)

(assert (=> b!6273403 (= tp!1749295 e!3816169)))

(declare-fun b!6274669 () Bool)

(declare-fun tp!1749437 () Bool)

(declare-fun tp!1749438 () Bool)

(assert (=> b!6274669 (= e!3816169 (and tp!1749437 tp!1749438))))

(declare-fun b!6274667 () Bool)

(declare-fun tp!1749436 () Bool)

(declare-fun tp!1749439 () Bool)

(assert (=> b!6274667 (= e!3816169 (and tp!1749436 tp!1749439))))

(declare-fun b!6274668 () Bool)

(declare-fun tp!1749435 () Bool)

(assert (=> b!6274668 (= e!3816169 tp!1749435)))

(declare-fun b!6274666 () Bool)

(assert (=> b!6274666 (= e!3816169 tp_is_empty!41637)))

(assert (= (and b!6273403 (is-ElementMatch!16192 (regTwo!32896 (regTwo!32896 r!7292)))) b!6274666))

(assert (= (and b!6273403 (is-Concat!25037 (regTwo!32896 (regTwo!32896 r!7292)))) b!6274667))

(assert (= (and b!6273403 (is-Star!16192 (regTwo!32896 (regTwo!32896 r!7292)))) b!6274668))

(assert (= (and b!6273403 (is-Union!16192 (regTwo!32896 (regTwo!32896 r!7292)))) b!6274669))

(declare-fun e!3816170 () Bool)

(assert (=> b!6273407 (= tp!1749297 e!3816170)))

(declare-fun b!6274673 () Bool)

(declare-fun tp!1749442 () Bool)

(declare-fun tp!1749443 () Bool)

(assert (=> b!6274673 (= e!3816170 (and tp!1749442 tp!1749443))))

(declare-fun b!6274671 () Bool)

(declare-fun tp!1749441 () Bool)

(declare-fun tp!1749444 () Bool)

(assert (=> b!6274671 (= e!3816170 (and tp!1749441 tp!1749444))))

(declare-fun b!6274672 () Bool)

(declare-fun tp!1749440 () Bool)

(assert (=> b!6274672 (= e!3816170 tp!1749440)))

(declare-fun b!6274670 () Bool)

(assert (=> b!6274670 (= e!3816170 tp_is_empty!41637)))

(assert (= (and b!6273407 (is-ElementMatch!16192 (regOne!32896 (reg!16521 r!7292)))) b!6274670))

(assert (= (and b!6273407 (is-Concat!25037 (regOne!32896 (reg!16521 r!7292)))) b!6274671))

(assert (= (and b!6273407 (is-Star!16192 (regOne!32896 (reg!16521 r!7292)))) b!6274672))

(assert (= (and b!6273407 (is-Union!16192 (regOne!32896 (reg!16521 r!7292)))) b!6274673))

(declare-fun e!3816171 () Bool)

(assert (=> b!6273407 (= tp!1749300 e!3816171)))

(declare-fun b!6274677 () Bool)

(declare-fun tp!1749447 () Bool)

(declare-fun tp!1749448 () Bool)

(assert (=> b!6274677 (= e!3816171 (and tp!1749447 tp!1749448))))

(declare-fun b!6274675 () Bool)

(declare-fun tp!1749446 () Bool)

(declare-fun tp!1749449 () Bool)

(assert (=> b!6274675 (= e!3816171 (and tp!1749446 tp!1749449))))

(declare-fun b!6274676 () Bool)

(declare-fun tp!1749445 () Bool)

(assert (=> b!6274676 (= e!3816171 tp!1749445)))

(declare-fun b!6274674 () Bool)

(assert (=> b!6274674 (= e!3816171 tp_is_empty!41637)))

(assert (= (and b!6273407 (is-ElementMatch!16192 (regTwo!32896 (reg!16521 r!7292)))) b!6274674))

(assert (= (and b!6273407 (is-Concat!25037 (regTwo!32896 (reg!16521 r!7292)))) b!6274675))

(assert (= (and b!6273407 (is-Star!16192 (regTwo!32896 (reg!16521 r!7292)))) b!6274676))

(assert (= (and b!6273407 (is-Union!16192 (regTwo!32896 (reg!16521 r!7292)))) b!6274677))

(declare-fun e!3816172 () Bool)

(assert (=> b!6273416 (= tp!1749306 e!3816172)))

(declare-fun b!6274681 () Bool)

(declare-fun tp!1749452 () Bool)

(declare-fun tp!1749453 () Bool)

(assert (=> b!6274681 (= e!3816172 (and tp!1749452 tp!1749453))))

(declare-fun b!6274679 () Bool)

(declare-fun tp!1749451 () Bool)

(declare-fun tp!1749454 () Bool)

(assert (=> b!6274679 (= e!3816172 (and tp!1749451 tp!1749454))))

(declare-fun b!6274680 () Bool)

(declare-fun tp!1749450 () Bool)

(assert (=> b!6274680 (= e!3816172 tp!1749450)))

(declare-fun b!6274678 () Bool)

(assert (=> b!6274678 (= e!3816172 tp_is_empty!41637)))

(assert (= (and b!6273416 (is-ElementMatch!16192 (reg!16521 (regTwo!32897 r!7292)))) b!6274678))

(assert (= (and b!6273416 (is-Concat!25037 (reg!16521 (regTwo!32897 r!7292)))) b!6274679))

(assert (= (and b!6273416 (is-Star!16192 (reg!16521 (regTwo!32897 r!7292)))) b!6274680))

(assert (= (and b!6273416 (is-Union!16192 (reg!16521 (regTwo!32897 r!7292)))) b!6274681))

(declare-fun e!3816173 () Bool)

(assert (=> b!6273415 (= tp!1749307 e!3816173)))

(declare-fun b!6274685 () Bool)

(declare-fun tp!1749457 () Bool)

(declare-fun tp!1749458 () Bool)

(assert (=> b!6274685 (= e!3816173 (and tp!1749457 tp!1749458))))

(declare-fun b!6274683 () Bool)

(declare-fun tp!1749456 () Bool)

(declare-fun tp!1749459 () Bool)

(assert (=> b!6274683 (= e!3816173 (and tp!1749456 tp!1749459))))

(declare-fun b!6274684 () Bool)

(declare-fun tp!1749455 () Bool)

(assert (=> b!6274684 (= e!3816173 tp!1749455)))

(declare-fun b!6274682 () Bool)

(assert (=> b!6274682 (= e!3816173 tp_is_empty!41637)))

(assert (= (and b!6273415 (is-ElementMatch!16192 (regOne!32896 (regTwo!32897 r!7292)))) b!6274682))

(assert (= (and b!6273415 (is-Concat!25037 (regOne!32896 (regTwo!32897 r!7292)))) b!6274683))

(assert (= (and b!6273415 (is-Star!16192 (regOne!32896 (regTwo!32897 r!7292)))) b!6274684))

(assert (= (and b!6273415 (is-Union!16192 (regOne!32896 (regTwo!32897 r!7292)))) b!6274685))

(declare-fun e!3816174 () Bool)

(assert (=> b!6273415 (= tp!1749310 e!3816174)))

(declare-fun b!6274689 () Bool)

(declare-fun tp!1749462 () Bool)

(declare-fun tp!1749463 () Bool)

(assert (=> b!6274689 (= e!3816174 (and tp!1749462 tp!1749463))))

(declare-fun b!6274687 () Bool)

(declare-fun tp!1749461 () Bool)

(declare-fun tp!1749464 () Bool)

(assert (=> b!6274687 (= e!3816174 (and tp!1749461 tp!1749464))))

(declare-fun b!6274688 () Bool)

(declare-fun tp!1749460 () Bool)

(assert (=> b!6274688 (= e!3816174 tp!1749460)))

(declare-fun b!6274686 () Bool)

(assert (=> b!6274686 (= e!3816174 tp_is_empty!41637)))

(assert (= (and b!6273415 (is-ElementMatch!16192 (regTwo!32896 (regTwo!32897 r!7292)))) b!6274686))

(assert (= (and b!6273415 (is-Concat!25037 (regTwo!32896 (regTwo!32897 r!7292)))) b!6274687))

(assert (= (and b!6273415 (is-Star!16192 (regTwo!32896 (regTwo!32897 r!7292)))) b!6274688))

(assert (= (and b!6273415 (is-Union!16192 (regTwo!32896 (regTwo!32897 r!7292)))) b!6274689))

(declare-fun e!3816175 () Bool)

(assert (=> b!6273422 (= tp!1749315 e!3816175)))

(declare-fun b!6274693 () Bool)

(declare-fun tp!1749467 () Bool)

(declare-fun tp!1749468 () Bool)

(assert (=> b!6274693 (= e!3816175 (and tp!1749467 tp!1749468))))

(declare-fun b!6274691 () Bool)

(declare-fun tp!1749466 () Bool)

(declare-fun tp!1749469 () Bool)

(assert (=> b!6274691 (= e!3816175 (and tp!1749466 tp!1749469))))

(declare-fun b!6274692 () Bool)

(declare-fun tp!1749465 () Bool)

(assert (=> b!6274692 (= e!3816175 tp!1749465)))

(declare-fun b!6274690 () Bool)

(assert (=> b!6274690 (= e!3816175 tp_is_empty!41637)))

(assert (= (and b!6273422 (is-ElementMatch!16192 (h!71199 (exprs!6076 (h!71201 zl!343))))) b!6274690))

(assert (= (and b!6273422 (is-Concat!25037 (h!71199 (exprs!6076 (h!71201 zl!343))))) b!6274691))

(assert (= (and b!6273422 (is-Star!16192 (h!71199 (exprs!6076 (h!71201 zl!343))))) b!6274692))

(assert (= (and b!6273422 (is-Union!16192 (h!71199 (exprs!6076 (h!71201 zl!343))))) b!6274693))

(declare-fun b!6274694 () Bool)

(declare-fun e!3816176 () Bool)

(declare-fun tp!1749470 () Bool)

(declare-fun tp!1749471 () Bool)

(assert (=> b!6274694 (= e!3816176 (and tp!1749470 tp!1749471))))

(assert (=> b!6273422 (= tp!1749316 e!3816176)))

(assert (= (and b!6273422 (is-Cons!64751 (t!378433 (exprs!6076 (h!71201 zl!343))))) b!6274694))

(declare-fun e!3816177 () Bool)

(assert (=> b!6273428 (= tp!1749323 e!3816177)))

(declare-fun b!6274698 () Bool)

(declare-fun tp!1749474 () Bool)

(declare-fun tp!1749475 () Bool)

(assert (=> b!6274698 (= e!3816177 (and tp!1749474 tp!1749475))))

(declare-fun b!6274696 () Bool)

(declare-fun tp!1749473 () Bool)

(declare-fun tp!1749476 () Bool)

(assert (=> b!6274696 (= e!3816177 (and tp!1749473 tp!1749476))))

(declare-fun b!6274697 () Bool)

(declare-fun tp!1749472 () Bool)

(assert (=> b!6274697 (= e!3816177 tp!1749472)))

(declare-fun b!6274695 () Bool)

(assert (=> b!6274695 (= e!3816177 tp_is_empty!41637)))

(assert (= (and b!6273428 (is-ElementMatch!16192 (h!71199 (exprs!6076 setElem!42665)))) b!6274695))

(assert (= (and b!6273428 (is-Concat!25037 (h!71199 (exprs!6076 setElem!42665)))) b!6274696))

(assert (= (and b!6273428 (is-Star!16192 (h!71199 (exprs!6076 setElem!42665)))) b!6274697))

(assert (= (and b!6273428 (is-Union!16192 (h!71199 (exprs!6076 setElem!42665)))) b!6274698))

(declare-fun b!6274699 () Bool)

(declare-fun e!3816178 () Bool)

(declare-fun tp!1749477 () Bool)

(declare-fun tp!1749478 () Bool)

(assert (=> b!6274699 (= e!3816178 (and tp!1749477 tp!1749478))))

(assert (=> b!6273428 (= tp!1749324 e!3816178)))

(assert (= (and b!6273428 (is-Cons!64751 (t!378433 (exprs!6076 setElem!42665)))) b!6274699))

(declare-fun e!3816179 () Bool)

(assert (=> b!6273401 (= tp!1749288 e!3816179)))

(declare-fun b!6274703 () Bool)

(declare-fun tp!1749481 () Bool)

(declare-fun tp!1749482 () Bool)

(assert (=> b!6274703 (= e!3816179 (and tp!1749481 tp!1749482))))

(declare-fun b!6274701 () Bool)

(declare-fun tp!1749480 () Bool)

(declare-fun tp!1749483 () Bool)

(assert (=> b!6274701 (= e!3816179 (and tp!1749480 tp!1749483))))

(declare-fun b!6274702 () Bool)

(declare-fun tp!1749479 () Bool)

(assert (=> b!6274702 (= e!3816179 tp!1749479)))

(declare-fun b!6274700 () Bool)

(assert (=> b!6274700 (= e!3816179 tp_is_empty!41637)))

(assert (= (and b!6273401 (is-ElementMatch!16192 (regOne!32897 (regOne!32896 r!7292)))) b!6274700))

(assert (= (and b!6273401 (is-Concat!25037 (regOne!32897 (regOne!32896 r!7292)))) b!6274701))

(assert (= (and b!6273401 (is-Star!16192 (regOne!32897 (regOne!32896 r!7292)))) b!6274702))

(assert (= (and b!6273401 (is-Union!16192 (regOne!32897 (regOne!32896 r!7292)))) b!6274703))

(declare-fun e!3816180 () Bool)

(assert (=> b!6273401 (= tp!1749289 e!3816180)))

(declare-fun b!6274707 () Bool)

(declare-fun tp!1749486 () Bool)

(declare-fun tp!1749487 () Bool)

(assert (=> b!6274707 (= e!3816180 (and tp!1749486 tp!1749487))))

(declare-fun b!6274705 () Bool)

(declare-fun tp!1749485 () Bool)

(declare-fun tp!1749488 () Bool)

(assert (=> b!6274705 (= e!3816180 (and tp!1749485 tp!1749488))))

(declare-fun b!6274706 () Bool)

(declare-fun tp!1749484 () Bool)

(assert (=> b!6274706 (= e!3816180 tp!1749484)))

(declare-fun b!6274704 () Bool)

(assert (=> b!6274704 (= e!3816180 tp_is_empty!41637)))

(assert (= (and b!6273401 (is-ElementMatch!16192 (regTwo!32897 (regOne!32896 r!7292)))) b!6274704))

(assert (= (and b!6273401 (is-Concat!25037 (regTwo!32897 (regOne!32896 r!7292)))) b!6274705))

(assert (= (and b!6273401 (is-Star!16192 (regTwo!32897 (regOne!32896 r!7292)))) b!6274706))

(assert (= (and b!6273401 (is-Union!16192 (regTwo!32897 (regOne!32896 r!7292)))) b!6274707))

(declare-fun e!3816181 () Bool)

(assert (=> b!6273409 (= tp!1749298 e!3816181)))

(declare-fun b!6274711 () Bool)

(declare-fun tp!1749491 () Bool)

(declare-fun tp!1749492 () Bool)

(assert (=> b!6274711 (= e!3816181 (and tp!1749491 tp!1749492))))

(declare-fun b!6274709 () Bool)

(declare-fun tp!1749490 () Bool)

(declare-fun tp!1749493 () Bool)

(assert (=> b!6274709 (= e!3816181 (and tp!1749490 tp!1749493))))

(declare-fun b!6274710 () Bool)

(declare-fun tp!1749489 () Bool)

(assert (=> b!6274710 (= e!3816181 tp!1749489)))

(declare-fun b!6274708 () Bool)

(assert (=> b!6274708 (= e!3816181 tp_is_empty!41637)))

(assert (= (and b!6273409 (is-ElementMatch!16192 (regOne!32897 (reg!16521 r!7292)))) b!6274708))

(assert (= (and b!6273409 (is-Concat!25037 (regOne!32897 (reg!16521 r!7292)))) b!6274709))

(assert (= (and b!6273409 (is-Star!16192 (regOne!32897 (reg!16521 r!7292)))) b!6274710))

(assert (= (and b!6273409 (is-Union!16192 (regOne!32897 (reg!16521 r!7292)))) b!6274711))

(declare-fun e!3816182 () Bool)

(assert (=> b!6273409 (= tp!1749299 e!3816182)))

(declare-fun b!6274715 () Bool)

(declare-fun tp!1749496 () Bool)

(declare-fun tp!1749497 () Bool)

(assert (=> b!6274715 (= e!3816182 (and tp!1749496 tp!1749497))))

(declare-fun b!6274713 () Bool)

(declare-fun tp!1749495 () Bool)

(declare-fun tp!1749498 () Bool)

(assert (=> b!6274713 (= e!3816182 (and tp!1749495 tp!1749498))))

(declare-fun b!6274714 () Bool)

(declare-fun tp!1749494 () Bool)

(assert (=> b!6274714 (= e!3816182 tp!1749494)))

(declare-fun b!6274712 () Bool)

(assert (=> b!6274712 (= e!3816182 tp_is_empty!41637)))

(assert (= (and b!6273409 (is-ElementMatch!16192 (regTwo!32897 (reg!16521 r!7292)))) b!6274712))

(assert (= (and b!6273409 (is-Concat!25037 (regTwo!32897 (reg!16521 r!7292)))) b!6274713))

(assert (= (and b!6273409 (is-Star!16192 (regTwo!32897 (reg!16521 r!7292)))) b!6274714))

(assert (= (and b!6273409 (is-Union!16192 (regTwo!32897 (reg!16521 r!7292)))) b!6274715))

(declare-fun e!3816183 () Bool)

(assert (=> b!6273400 (= tp!1749286 e!3816183)))

(declare-fun b!6274719 () Bool)

(declare-fun tp!1749501 () Bool)

(declare-fun tp!1749502 () Bool)

(assert (=> b!6274719 (= e!3816183 (and tp!1749501 tp!1749502))))

(declare-fun b!6274717 () Bool)

(declare-fun tp!1749500 () Bool)

(declare-fun tp!1749503 () Bool)

(assert (=> b!6274717 (= e!3816183 (and tp!1749500 tp!1749503))))

(declare-fun b!6274718 () Bool)

(declare-fun tp!1749499 () Bool)

(assert (=> b!6274718 (= e!3816183 tp!1749499)))

(declare-fun b!6274716 () Bool)

(assert (=> b!6274716 (= e!3816183 tp_is_empty!41637)))

(assert (= (and b!6273400 (is-ElementMatch!16192 (reg!16521 (regOne!32896 r!7292)))) b!6274716))

(assert (= (and b!6273400 (is-Concat!25037 (reg!16521 (regOne!32896 r!7292)))) b!6274717))

(assert (= (and b!6273400 (is-Star!16192 (reg!16521 (regOne!32896 r!7292)))) b!6274718))

(assert (= (and b!6273400 (is-Union!16192 (reg!16521 (regOne!32896 r!7292)))) b!6274719))

(declare-fun e!3816184 () Bool)

(assert (=> b!6273399 (= tp!1749287 e!3816184)))

(declare-fun b!6274723 () Bool)

(declare-fun tp!1749506 () Bool)

(declare-fun tp!1749507 () Bool)

(assert (=> b!6274723 (= e!3816184 (and tp!1749506 tp!1749507))))

(declare-fun b!6274721 () Bool)

(declare-fun tp!1749505 () Bool)

(declare-fun tp!1749508 () Bool)

(assert (=> b!6274721 (= e!3816184 (and tp!1749505 tp!1749508))))

(declare-fun b!6274722 () Bool)

(declare-fun tp!1749504 () Bool)

(assert (=> b!6274722 (= e!3816184 tp!1749504)))

(declare-fun b!6274720 () Bool)

(assert (=> b!6274720 (= e!3816184 tp_is_empty!41637)))

(assert (= (and b!6273399 (is-ElementMatch!16192 (regOne!32896 (regOne!32896 r!7292)))) b!6274720))

(assert (= (and b!6273399 (is-Concat!25037 (regOne!32896 (regOne!32896 r!7292)))) b!6274721))

(assert (= (and b!6273399 (is-Star!16192 (regOne!32896 (regOne!32896 r!7292)))) b!6274722))

(assert (= (and b!6273399 (is-Union!16192 (regOne!32896 (regOne!32896 r!7292)))) b!6274723))

(declare-fun e!3816185 () Bool)

(assert (=> b!6273399 (= tp!1749290 e!3816185)))

(declare-fun b!6274727 () Bool)

(declare-fun tp!1749511 () Bool)

(declare-fun tp!1749512 () Bool)

(assert (=> b!6274727 (= e!3816185 (and tp!1749511 tp!1749512))))

(declare-fun b!6274725 () Bool)

(declare-fun tp!1749510 () Bool)

(declare-fun tp!1749513 () Bool)

(assert (=> b!6274725 (= e!3816185 (and tp!1749510 tp!1749513))))

(declare-fun b!6274726 () Bool)

(declare-fun tp!1749509 () Bool)

(assert (=> b!6274726 (= e!3816185 tp!1749509)))

(declare-fun b!6274724 () Bool)

(assert (=> b!6274724 (= e!3816185 tp_is_empty!41637)))

(assert (= (and b!6273399 (is-ElementMatch!16192 (regTwo!32896 (regOne!32896 r!7292)))) b!6274724))

(assert (= (and b!6273399 (is-Concat!25037 (regTwo!32896 (regOne!32896 r!7292)))) b!6274725))

(assert (= (and b!6273399 (is-Star!16192 (regTwo!32896 (regOne!32896 r!7292)))) b!6274726))

(assert (= (and b!6273399 (is-Union!16192 (regTwo!32896 (regOne!32896 r!7292)))) b!6274727))

(declare-fun e!3816186 () Bool)

(assert (=> b!6273417 (= tp!1749308 e!3816186)))

(declare-fun b!6274731 () Bool)

(declare-fun tp!1749516 () Bool)

(declare-fun tp!1749517 () Bool)

(assert (=> b!6274731 (= e!3816186 (and tp!1749516 tp!1749517))))

(declare-fun b!6274729 () Bool)

(declare-fun tp!1749515 () Bool)

(declare-fun tp!1749518 () Bool)

(assert (=> b!6274729 (= e!3816186 (and tp!1749515 tp!1749518))))

(declare-fun b!6274730 () Bool)

(declare-fun tp!1749514 () Bool)

(assert (=> b!6274730 (= e!3816186 tp!1749514)))

(declare-fun b!6274728 () Bool)

(assert (=> b!6274728 (= e!3816186 tp_is_empty!41637)))

(assert (= (and b!6273417 (is-ElementMatch!16192 (regOne!32897 (regTwo!32897 r!7292)))) b!6274728))

(assert (= (and b!6273417 (is-Concat!25037 (regOne!32897 (regTwo!32897 r!7292)))) b!6274729))

(assert (= (and b!6273417 (is-Star!16192 (regOne!32897 (regTwo!32897 r!7292)))) b!6274730))

(assert (= (and b!6273417 (is-Union!16192 (regOne!32897 (regTwo!32897 r!7292)))) b!6274731))

(declare-fun e!3816187 () Bool)

(assert (=> b!6273417 (= tp!1749309 e!3816187)))

(declare-fun b!6274735 () Bool)

(declare-fun tp!1749521 () Bool)

(declare-fun tp!1749522 () Bool)

(assert (=> b!6274735 (= e!3816187 (and tp!1749521 tp!1749522))))

(declare-fun b!6274733 () Bool)

(declare-fun tp!1749520 () Bool)

(declare-fun tp!1749523 () Bool)

(assert (=> b!6274733 (= e!3816187 (and tp!1749520 tp!1749523))))

(declare-fun b!6274734 () Bool)

(declare-fun tp!1749519 () Bool)

(assert (=> b!6274734 (= e!3816187 tp!1749519)))

(declare-fun b!6274732 () Bool)

(assert (=> b!6274732 (= e!3816187 tp_is_empty!41637)))

(assert (= (and b!6273417 (is-ElementMatch!16192 (regTwo!32897 (regTwo!32897 r!7292)))) b!6274732))

(assert (= (and b!6273417 (is-Concat!25037 (regTwo!32897 (regTwo!32897 r!7292)))) b!6274733))

(assert (= (and b!6273417 (is-Star!16192 (regTwo!32897 (regTwo!32897 r!7292)))) b!6274734))

(assert (= (and b!6273417 (is-Union!16192 (regTwo!32897 (regTwo!32897 r!7292)))) b!6274735))

(declare-fun e!3816188 () Bool)

(assert (=> b!6273408 (= tp!1749296 e!3816188)))

(declare-fun b!6274739 () Bool)

(declare-fun tp!1749526 () Bool)

(declare-fun tp!1749527 () Bool)

(assert (=> b!6274739 (= e!3816188 (and tp!1749526 tp!1749527))))

(declare-fun b!6274737 () Bool)

(declare-fun tp!1749525 () Bool)

(declare-fun tp!1749528 () Bool)

(assert (=> b!6274737 (= e!3816188 (and tp!1749525 tp!1749528))))

(declare-fun b!6274738 () Bool)

(declare-fun tp!1749524 () Bool)

(assert (=> b!6274738 (= e!3816188 tp!1749524)))

(declare-fun b!6274736 () Bool)

(assert (=> b!6274736 (= e!3816188 tp_is_empty!41637)))

(assert (= (and b!6273408 (is-ElementMatch!16192 (reg!16521 (reg!16521 r!7292)))) b!6274736))

(assert (= (and b!6273408 (is-Concat!25037 (reg!16521 (reg!16521 r!7292)))) b!6274737))

(assert (= (and b!6273408 (is-Star!16192 (reg!16521 (reg!16521 r!7292)))) b!6274738))

(assert (= (and b!6273408 (is-Union!16192 (reg!16521 (reg!16521 r!7292)))) b!6274739))

(declare-fun condSetEmpty!42680 () Bool)

(assert (=> setNonEmpty!42671 (= condSetEmpty!42680 (= setRest!42671 (as set.empty (Set Context!11152))))))

(declare-fun setRes!42680 () Bool)

(assert (=> setNonEmpty!42671 (= tp!1749321 setRes!42680)))

(declare-fun setIsEmpty!42680 () Bool)

(assert (=> setIsEmpty!42680 setRes!42680))

(declare-fun setElem!42680 () Context!11152)

(declare-fun tp!1749529 () Bool)

(declare-fun setNonEmpty!42680 () Bool)

(declare-fun e!3816189 () Bool)

(assert (=> setNonEmpty!42680 (= setRes!42680 (and tp!1749529 (inv!83728 setElem!42680) e!3816189))))

(declare-fun setRest!42680 () (Set Context!11152))

(assert (=> setNonEmpty!42680 (= setRest!42671 (set.union (set.insert setElem!42680 (as set.empty (Set Context!11152))) setRest!42680))))

(declare-fun b!6274740 () Bool)

(declare-fun tp!1749530 () Bool)

(assert (=> b!6274740 (= e!3816189 tp!1749530)))

(assert (= (and setNonEmpty!42671 condSetEmpty!42680) setIsEmpty!42680))

(assert (= (and setNonEmpty!42671 (not condSetEmpty!42680)) setNonEmpty!42680))

(assert (= setNonEmpty!42680 b!6274740))

(declare-fun m!7096268 () Bool)

(assert (=> setNonEmpty!42680 m!7096268))

(declare-fun e!3816190 () Bool)

(assert (=> b!6273412 (= tp!1749301 e!3816190)))

(declare-fun b!6274744 () Bool)

(declare-fun tp!1749533 () Bool)

(declare-fun tp!1749534 () Bool)

(assert (=> b!6274744 (= e!3816190 (and tp!1749533 tp!1749534))))

(declare-fun b!6274742 () Bool)

(declare-fun tp!1749532 () Bool)

(declare-fun tp!1749535 () Bool)

(assert (=> b!6274742 (= e!3816190 (and tp!1749532 tp!1749535))))

(declare-fun b!6274743 () Bool)

(declare-fun tp!1749531 () Bool)

(assert (=> b!6274743 (= e!3816190 tp!1749531)))

(declare-fun b!6274741 () Bool)

(assert (=> b!6274741 (= e!3816190 tp_is_empty!41637)))

(assert (= (and b!6273412 (is-ElementMatch!16192 (reg!16521 (regOne!32897 r!7292)))) b!6274741))

(assert (= (and b!6273412 (is-Concat!25037 (reg!16521 (regOne!32897 r!7292)))) b!6274742))

(assert (= (and b!6273412 (is-Star!16192 (reg!16521 (regOne!32897 r!7292)))) b!6274743))

(assert (= (and b!6273412 (is-Union!16192 (reg!16521 (regOne!32897 r!7292)))) b!6274744))

(declare-fun e!3816191 () Bool)

(assert (=> b!6273411 (= tp!1749302 e!3816191)))

(declare-fun b!6274748 () Bool)

(declare-fun tp!1749538 () Bool)

(declare-fun tp!1749539 () Bool)

(assert (=> b!6274748 (= e!3816191 (and tp!1749538 tp!1749539))))

(declare-fun b!6274746 () Bool)

(declare-fun tp!1749537 () Bool)

(declare-fun tp!1749540 () Bool)

(assert (=> b!6274746 (= e!3816191 (and tp!1749537 tp!1749540))))

(declare-fun b!6274747 () Bool)

(declare-fun tp!1749536 () Bool)

(assert (=> b!6274747 (= e!3816191 tp!1749536)))

(declare-fun b!6274745 () Bool)

(assert (=> b!6274745 (= e!3816191 tp_is_empty!41637)))

(assert (= (and b!6273411 (is-ElementMatch!16192 (regOne!32896 (regOne!32897 r!7292)))) b!6274745))

(assert (= (and b!6273411 (is-Concat!25037 (regOne!32896 (regOne!32897 r!7292)))) b!6274746))

(assert (= (and b!6273411 (is-Star!16192 (regOne!32896 (regOne!32897 r!7292)))) b!6274747))

(assert (= (and b!6273411 (is-Union!16192 (regOne!32896 (regOne!32897 r!7292)))) b!6274748))

(declare-fun e!3816192 () Bool)

(assert (=> b!6273411 (= tp!1749305 e!3816192)))

(declare-fun b!6274752 () Bool)

(declare-fun tp!1749543 () Bool)

(declare-fun tp!1749544 () Bool)

(assert (=> b!6274752 (= e!3816192 (and tp!1749543 tp!1749544))))

(declare-fun b!6274750 () Bool)

(declare-fun tp!1749542 () Bool)

(declare-fun tp!1749545 () Bool)

(assert (=> b!6274750 (= e!3816192 (and tp!1749542 tp!1749545))))

(declare-fun b!6274751 () Bool)

(declare-fun tp!1749541 () Bool)

(assert (=> b!6274751 (= e!3816192 tp!1749541)))

(declare-fun b!6274749 () Bool)

(assert (=> b!6274749 (= e!3816192 tp_is_empty!41637)))

(assert (= (and b!6273411 (is-ElementMatch!16192 (regTwo!32896 (regOne!32897 r!7292)))) b!6274749))

(assert (= (and b!6273411 (is-Concat!25037 (regTwo!32896 (regOne!32897 r!7292)))) b!6274750))

(assert (= (and b!6273411 (is-Star!16192 (regTwo!32896 (regOne!32897 r!7292)))) b!6274751))

(assert (= (and b!6273411 (is-Union!16192 (regTwo!32896 (regOne!32897 r!7292)))) b!6274752))

(declare-fun b!6274753 () Bool)

(declare-fun e!3816193 () Bool)

(declare-fun tp!1749546 () Bool)

(assert (=> b!6274753 (= e!3816193 (and tp_is_empty!41637 tp!1749546))))

(assert (=> b!6273387 (= tp!1749275 e!3816193)))

(assert (= (and b!6273387 (is-Cons!64752 (t!378434 (t!378434 s!2326)))) b!6274753))

(declare-fun b_lambda!238921 () Bool)

(assert (= b_lambda!238907 (or b!6272771 b_lambda!238921)))

(assert (=> d!1969370 d!1968960))

(declare-fun b_lambda!238923 () Bool)

(assert (= b_lambda!238909 (or d!1968914 b_lambda!238923)))

(declare-fun bs!1567420 () Bool)

(declare-fun d!1969500 () Bool)

(assert (= bs!1567420 (and d!1969500 d!1968914)))

(assert (=> bs!1567420 (= (dynLambda!25612 lambda!343729 (h!71199 (exprs!6076 (h!71201 zl!343)))) (validRegex!7928 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(declare-fun m!7096270 () Bool)

(assert (=> bs!1567420 m!7096270))

(assert (=> b!6274450 d!1969500))

(declare-fun b_lambda!238925 () Bool)

(assert (= b_lambda!238903 (or b!6273219 b_lambda!238925)))

(declare-fun bs!1567421 () Bool)

(declare-fun d!1969502 () Bool)

(assert (= bs!1567421 (and d!1969502 b!6273219)))

(assert (=> bs!1567421 (= (dynLambda!25613 lambda!343725 (h!71201 lt!2352399)) (>= lt!2352585 (contextDepth!210 (h!71201 lt!2352399))))))

(assert (=> bs!1567421 m!7094852))

(assert (=> b!6274193 d!1969502))

(declare-fun b_lambda!238927 () Bool)

(assert (= b_lambda!238915 (or b!6273217 b_lambda!238927)))

(declare-fun bs!1567422 () Bool)

(declare-fun d!1969504 () Bool)

(assert (= bs!1567422 (and d!1969504 b!6273217)))

(assert (=> bs!1567422 (= (dynLambda!25613 lambda!343724 (h!71201 (t!378435 lt!2352399))) (>= lt!2352587 (contextDepth!210 (h!71201 (t!378435 lt!2352399)))))))

(assert (=> bs!1567422 m!7096132))

(assert (=> b!6274528 d!1969504))

(declare-fun b_lambda!238929 () Bool)

(assert (= b_lambda!238917 (or d!1968940 b_lambda!238929)))

(declare-fun bs!1567423 () Bool)

(declare-fun d!1969506 () Bool)

(assert (= bs!1567423 (and d!1969506 d!1968940)))

(assert (=> bs!1567423 (= (dynLambda!25612 lambda!343736 (h!71199 (unfocusZipperList!1613 zl!343))) (validRegex!7928 (h!71199 (unfocusZipperList!1613 zl!343))))))

(declare-fun m!7096272 () Bool)

(assert (=> bs!1567423 m!7096272))

(assert (=> b!6274566 d!1969506))

(declare-fun b_lambda!238931 () Bool)

(assert (= b_lambda!238905 (or d!1968922 b_lambda!238931)))

(declare-fun bs!1567424 () Bool)

(declare-fun d!1969508 () Bool)

(assert (= bs!1567424 (and d!1969508 d!1968922)))

(assert (=> bs!1567424 (= (dynLambda!25612 lambda!343732 (h!71199 lt!2352404)) (validRegex!7928 (h!71199 lt!2352404)))))

(declare-fun m!7096274 () Bool)

(assert (=> bs!1567424 m!7096274))

(assert (=> b!6274433 d!1969508))

(declare-fun b_lambda!238933 () Bool)

(assert (= b_lambda!238897 (or d!1968828 b_lambda!238933)))

(declare-fun bs!1567425 () Bool)

(declare-fun d!1969510 () Bool)

(assert (= bs!1567425 (and d!1969510 d!1968828)))

(assert (=> bs!1567425 (= (dynLambda!25612 lambda!343694 (h!71199 (exprs!6076 (h!71201 zl!343)))) (validRegex!7928 (h!71199 (exprs!6076 (h!71201 zl!343)))))))

(assert (=> bs!1567425 m!7096270))

(assert (=> b!6274135 d!1969510))

(declare-fun b_lambda!238935 () Bool)

(assert (= b_lambda!238913 (or d!1968924 b_lambda!238935)))

(declare-fun bs!1567426 () Bool)

(declare-fun d!1969512 () Bool)

(assert (= bs!1567426 (and d!1969512 d!1968924)))

(assert (=> bs!1567426 (= (dynLambda!25612 lambda!343733 (h!71199 lt!2352407)) (validRegex!7928 (h!71199 lt!2352407)))))

(declare-fun m!7096276 () Bool)

(assert (=> bs!1567426 m!7096276))

(assert (=> b!6274510 d!1969512))

(declare-fun b_lambda!238937 () Bool)

(assert (= b_lambda!238899 (or d!1968854 b_lambda!238937)))

(declare-fun bs!1567427 () Bool)

(declare-fun d!1969514 () Bool)

(assert (= bs!1567427 (and d!1969514 d!1968854)))

(assert (=> bs!1567427 (= (dynLambda!25612 lambda!343697 (h!71199 (exprs!6076 setElem!42665))) (validRegex!7928 (h!71199 (exprs!6076 setElem!42665))))))

(declare-fun m!7096278 () Bool)

(assert (=> bs!1567427 m!7096278))

(assert (=> b!6274153 d!1969514))

(declare-fun b_lambda!238939 () Bool)

(assert (= b_lambda!238901 (or b!6273224 b_lambda!238939)))

(declare-fun bs!1567428 () Bool)

(declare-fun d!1969516 () Bool)

(assert (= bs!1567428 (and d!1969516 b!6273224)))

(assert (=> bs!1567428 (= (dynLambda!25613 lambda!343728 (h!71201 zl!343)) (>= lt!2352589 (contextDepth!210 (h!71201 zl!343))))))

(assert (=> bs!1567428 m!7094864))

(assert (=> b!6274159 d!1969516))

(declare-fun b_lambda!238941 () Bool)

(assert (= b_lambda!238895 (or d!1968942 b_lambda!238941)))

(declare-fun bs!1567429 () Bool)

(declare-fun d!1969518 () Bool)

(assert (= bs!1567429 (and d!1969518 d!1968942)))

(assert (=> bs!1567429 (= (dynLambda!25612 lambda!343739 (h!71199 lt!2352613)) (validRegex!7928 (h!71199 lt!2352613)))))

(declare-fun m!7096280 () Bool)

(assert (=> bs!1567429 m!7096280))

(assert (=> b!6274103 d!1969518))

(declare-fun b_lambda!238943 () Bool)

(assert (= b_lambda!238911 (or b!6273222 b_lambda!238943)))

(declare-fun bs!1567430 () Bool)

(declare-fun d!1969520 () Bool)

(assert (= bs!1567430 (and d!1969520 b!6273222)))

(assert (=> bs!1567430 (= (dynLambda!25613 lambda!343727 (h!71201 (t!378435 zl!343))) (>= lt!2352591 (contextDepth!210 (h!71201 (t!378435 zl!343)))))))

(assert (=> bs!1567430 m!7096060))

(assert (=> b!6274473 d!1969520))

(declare-fun b_lambda!238945 () Bool)

(assert (= b_lambda!238919 (or b!6272771 b_lambda!238945)))

(assert (=> d!1969488 d!1968956))

(declare-fun b_lambda!238947 () Bool)

(assert (= b_lambda!238893 (or b!6272771 b_lambda!238947)))

(assert (=> d!1969174 d!1968958))

(push 1)

(assert (not b!6273930))

(assert (not b!6274718))

(assert (not b!6274707))

(assert (not b!6274577))

(assert (not bm!530813))

(assert (not bm!530711))

(assert (not b!6274740))

(assert (not bm!530841))

(assert (not bm!530762))

(assert (not bm!530699))

(assert (not b!6274595))

(assert (not b!6274709))

(assert (not b!6274603))

(assert (not b!6274748))

(assert (not b!6274216))

(assert (not b!6274017))

(assert (not b!6274360))

(assert (not b!6274453))

(assert (not b!6274371))

(assert (not d!1969446))

(assert (not b!6274200))

(assert (not b!6274125))

(assert (not d!1969320))

(assert (not bs!1567424))

(assert (not b!6274399))

(assert (not b!6274750))

(assert (not b!6274717))

(assert (not b!6274702))

(assert (not b!6274198))

(assert (not d!1969134))

(assert (not d!1969338))

(assert (not b_lambda!238929))

(assert (not d!1969128))

(assert (not bm!530735))

(assert (not d!1969482))

(assert (not bm!530714))

(assert (not b!6273952))

(assert (not d!1969380))

(assert (not bm!530720))

(assert (not bm!530792))

(assert (not b!6274262))

(assert (not b!6273978))

(assert (not b!6274665))

(assert (not b!6274731))

(assert (not bm!530791))

(assert (not b!6274142))

(assert (not d!1969334))

(assert (not d!1969432))

(assert (not d!1969294))

(assert (not b!6274370))

(assert (not b!6274703))

(assert (not bm!530821))

(assert (not b!6274451))

(assert (not b!6274231))

(assert (not b!6274692))

(assert (not bm!530808))

(assert (not b!6274300))

(assert (not bm!530766))

(assert (not b!6273954))

(assert (not d!1969114))

(assert (not d!1969290))

(assert (not b!6274458))

(assert (not bm!530770))

(assert (not b!6274671))

(assert (not d!1969370))

(assert (not b!6274660))

(assert (not setNonEmpty!42679))

(assert (not bm!530757))

(assert (not b!6274455))

(assert (not b!6273955))

(assert (not b!6274380))

(assert (not d!1969382))

(assert (not b!6273957))

(assert (not d!1969400))

(assert (not b!6274664))

(assert (not d!1969176))

(assert (not b!6274725))

(assert (not d!1969196))

(assert (not bs!1567420))

(assert (not b!6274423))

(assert (not bm!530830))

(assert (not b!6274623))

(assert (not b!6274680))

(assert (not bm!530680))

(assert (not d!1969392))

(assert (not b!6273950))

(assert (not b!6274339))

(assert (not d!1969268))

(assert (not b!6274025))

(assert (not b!6274701))

(assert (not b!6274523))

(assert (not b!6274522))

(assert (not b!6274649))

(assert (not d!1969456))

(assert (not b!6274632))

(assert (not b!6274374))

(assert (not d!1969174))

(assert (not b_lambda!238933))

(assert (not b!6274146))

(assert (not b!6274511))

(assert (not b!6274205))

(assert (not b!6274584))

(assert (not b!6274691))

(assert (not b!6274075))

(assert (not b!6274344))

(assert (not d!1969178))

(assert (not b!6273959))

(assert (not b!6274160))

(assert (not b!6274456))

(assert (not bm!530687))

(assert (not b!6274637))

(assert (not b!6274710))

(assert (not b!6274027))

(assert (not b!6274536))

(assert (not b!6274688))

(assert (not bs!1567430))

(assert (not b!6274289))

(assert (not setNonEmpty!42677))

(assert (not bm!530776))

(assert (not b!6274439))

(assert (not bm!530816))

(assert (not b!6274346))

(assert (not b!6274663))

(assert (not d!1969296))

(assert (not b_lambda!238921))

(assert (not d!1969418))

(assert (not bm!530716))

(assert (not b!6274117))

(assert (not b!6274735))

(assert (not d!1969284))

(assert (not d!1969298))

(assert (not b!6274642))

(assert (not b!6274581))

(assert (not b!6274058))

(assert (not b!6274347))

(assert (not b!6274271))

(assert (not bm!530797))

(assert (not b!6274651))

(assert (not d!1969210))

(assert (not bm!530809))

(assert (not b!6274685))

(assert (not bm!530750))

(assert (not bm!530788))

(assert (not b!6273984))

(assert (not b!6274578))

(assert (not d!1969198))

(assert (not bm!530737))

(assert (not b!6274260))

(assert (not b!6274369))

(assert (not d!1969224))

(assert (not bm!530745))

(assert (not b!6274744))

(assert (not d!1969116))

(assert (not b!6274136))

(assert (not bm!530828))

(assert (not bm!530721))

(assert (not b!6274628))

(assert (not b!6274207))

(assert (not b!6274684))

(assert (not b!6274751))

(assert (not d!1969374))

(assert (not b!6274203))

(assert (not d!1969304))

(assert (not bm!530837))

(assert (not bm!530723))

(assert (not b!6274502))

(assert (not b_lambda!238935))

(assert (not b!6274647))

(assert (not b!6274743))

(assert (not d!1969212))

(assert (not b!6274111))

(assert (not b!6274452))

(assert (not d!1969384))

(assert (not b!6274137))

(assert (not d!1969250))

(assert (not b!6274259))

(assert (not b!6274486))

(assert (not bm!530779))

(assert (not b!6274311))

(assert (not b!6274705))

(assert (not b!6274364))

(assert (not bs!1567425))

(assert (not bm!530790))

(assert (not b!6274488))

(assert (not b!6273928))

(assert (not bm!530742))

(assert (not b!6274729))

(assert (not b!6274641))

(assert (not b!6274342))

(assert (not b!6274376))

(assert (not bm!530781))

(assert (not d!1969272))

(assert (not d!1969422))

(assert (not bm!530701))

(assert (not bm!530785))

(assert (not b!6274264))

(assert (not d!1969234))

(assert (not d!1969232))

(assert (not b!6274753))

(assert (not b!6274280))

(assert (not b!6274638))

(assert (not b!6274739))

(assert (not bm!530827))

(assert (not b!6274513))

(assert (not b!6274061))

(assert (not b!6274434))

(assert (not d!1969112))

(assert (not bm!530724))

(assert (not d!1969388))

(assert (not b!6274448))

(assert (not b!6274121))

(assert (not d!1969390))

(assert tp_is_empty!41637)

(assert (not b!6273942))

(assert (not bm!530725))

(assert (not b!6274547))

(assert (not b!6274677))

(assert (not d!1969192))

(assert (not b!6274681))

(assert (not b!6274673))

(assert (not b!6274481))

(assert (not d!1969488))

(assert (not b!6274661))

(assert (not b!6273956))

(assert (not b_lambda!238937))

(assert (not b!6274558))

(assert (not b!6274533))

(assert (not d!1969476))

(assert (not b!6274694))

(assert (not d!1969240))

(assert (not b!6274742))

(assert (not b!6274698))

(assert (not b_lambda!238945))

(assert (not bm!530688))

(assert (not b!6274210))

(assert (not d!1969288))

(assert (not b!6274447))

(assert (not d!1969302))

(assert (not b!6274138))

(assert (not bm!530814))

(assert (not b!6274711))

(assert (not d!1969386))

(assert (not b!6274397))

(assert (not b!6274715))

(assert (not bs!1567428))

(assert (not d!1969230))

(assert (not b!6274124))

(assert (not b!6274652))

(assert (not b!6274527))

(assert (not d!1969270))

(assert (not d!1969330))

(assert (not bm!530774))

(assert (not b!6274457))

(assert (not b!6274341))

(assert (not b!6274687))

(assert (not b!6274232))

(assert (not bm!530743))

(assert (not d!1969248))

(assert (not b!6274079))

(assert (not b!6274556))

(assert (not b!6274365))

(assert (not d!1969238))

(assert (not bs!1567421))

(assert (not bm!530771))

(assert (not b!6274612))

(assert (not b!6274392))

(assert (not b!6274245))

(assert (not d!1969150))

(assert (not b!6274530))

(assert (not b!6274752))

(assert (not b_lambda!238877))

(assert (not b!6274091))

(assert (not b!6274669))

(assert (not b!6274579))

(assert (not b!6274529))

(assert (not bm!530764))

(assert (not b!6274605))

(assert (not b_lambda!238943))

(assert (not d!1969246))

(assert (not b!6274223))

(assert (not b!6274644))

(assert (not b!6274212))

(assert (not b!6274675))

(assert (not bm!530796))

(assert (not b!6274148))

(assert (not bm!530818))

(assert (not b!6274322))

(assert (not d!1969342))

(assert (not bm!530802))

(assert (not b!6274194))

(assert (not b!6274726))

(assert (not bs!1567422))

(assert (not b!6274657))

(assert (not b!6274683))

(assert (not b_lambda!238927))

(assert (not d!1969318))

(assert (not d!1969142))

(assert (not bm!530835))

(assert (not b!6274737))

(assert (not d!1969264))

(assert (not b!6274333))

(assert (not b!6274621))

(assert (not bs!1567429))

(assert (not b!6274568))

(assert (not b!6274460))

(assert (not d!1969110))

(assert (not b!6273962))

(assert (not b!6274144))

(assert (not b!6274421))

(assert (not d!1969350))

(assert (not b!6274697))

(assert (not b!6274422))

(assert (not b!6274206))

(assert (not bs!1567427))

(assert (not d!1969214))

(assert (not bm!530690))

(assert (not bm!530824))

(assert (not b!6273990))

(assert (not bm!530833))

(assert (not d!1969118))

(assert (not d!1969266))

(assert (not bm!530799))

(assert (not b!6274645))

(assert (not bm!530689))

(assert (not b!6274656))

(assert (not b!6274127))

(assert (not b!6274336))

(assert (not b_lambda!238879))

(assert (not bm!530801))

(assert (not bm!530683))

(assert (not b!6273974))

(assert (not b!6274706))

(assert (not d!1969444))

(assert (not b!6274610))

(assert (not d!1969138))

(assert (not b!6274574))

(assert (not b_lambda!238941))

(assert (not b!6274104))

(assert (not bm!530726))

(assert (not bm!530783))

(assert (not d!1969368))

(assert (not b!6274648))

(assert (not b!6273981))

(assert (not b!6274627))

(assert (not b!6274368))

(assert (not d!1969472))

(assert (not b!6274401))

(assert (not b!6273985))

(assert (not bm!530823))

(assert (not b!6274576))

(assert (not b!6274676))

(assert (not b!6274396))

(assert (not b!6274722))

(assert (not b!6274699))

(assert (not b!6274727))

(assert (not b!6274723))

(assert (not d!1969236))

(assert (not b!6274449))

(assert (not b!6274646))

(assert (not b!6274693))

(assert (not b!6274730))

(assert (not bm!530729))

(assert (not b!6273951))

(assert (not b!6274655))

(assert (not b!6274349))

(assert (not d!1969180))

(assert (not b!6274608))

(assert (not bm!530832))

(assert (not b!6274321))

(assert (not bm!530804))

(assert (not b!6274733))

(assert (not b!6274319))

(assert (not b!6274525))

(assert (not b!6274721))

(assert (not bm!530682))

(assert (not b!6274411))

(assert (not b!6274255))

(assert (not d!1969480))

(assert (not b!6274139))

(assert (not b!6274640))

(assert (not b!6274029))

(assert (not b_lambda!238925))

(assert (not bm!530703))

(assert (not b!6274747))

(assert (not bm!530811))

(assert (not b!6274696))

(assert (not bm!530825))

(assert (not bm!530734))

(assert (not b!6274195))

(assert (not bm!530789))

(assert (not d!1969340))

(assert (not b!6274258))

(assert (not b_lambda!238931))

(assert (not b!6274567))

(assert (not d!1969344))

(assert (not b!6274689))

(assert (not bm!530719))

(assert (not d!1969286))

(assert (not bm!530768))

(assert (not b!6274201))

(assert (not b!6274552))

(assert (not b_lambda!238875))

(assert (not bm!530806))

(assert (not b!6274154))

(assert (not b!6274738))

(assert (not b!6274337))

(assert (not b!6274532))

(assert (not b!6274378))

(assert (not b!6274714))

(assert (not b!6274653))

(assert (not bm!530820))

(assert (not bm!530759))

(assert (not d!1969148))

(assert (not d!1969324))

(assert (not b!6274030))

(assert (not b!6274483))

(assert (not d!1969242))

(assert (not d!1969332))

(assert (not bm!530754))

(assert (not bm!530739))

(assert (not b!6274199))

(assert (not b!6274440))

(assert (not b!6273986))

(assert (not bm!530838))

(assert (not bm!530760))

(assert (not d!1969454))

(assert (not b!6274611))

(assert (not b!6274668))

(assert (not d!1969378))

(assert (not bm!530794))

(assert (not b!6273946))

(assert (not d!1969146))

(assert (not bm!530777))

(assert (not d!1969364))

(assert (not b!6274425))

(assert (not bm!530717))

(assert (not b!6274214))

(assert (not bm!530710))

(assert (not b!6274607))

(assert (not b!6274474))

(assert (not d!1969308))

(assert (not b!6274573))

(assert (not b!6274713))

(assert (not b!6274211))

(assert (not b!6274491))

(assert (not b!6274672))

(assert (not b!6274183))

(assert (not b!6274332))

(assert (not d!1969352))

(assert (not bs!1567423))

(assert (not b!6274320))

(assert (not d!1969252))

(assert (not b!6274667))

(assert (not b!6274375))

(assert (not d!1969430))

(assert (not bm!530786))

(assert (not bs!1567426))

(assert (not bm!530756))

(assert (not b!6274679))

(assert (not b!6274234))

(assert (not d!1969348))

(assert (not b!6274659))

(assert (not b!6274630))

(assert (not b!6274734))

(assert (not d!1969208))

(assert (not bm!530751))

(assert (not bm!530740))

(assert (not d!1969306))

(assert (not b!6274569))

(assert (not bm!530839))

(assert (not b_lambda!238923))

(assert (not b!6274359))

(assert (not b!6274143))

(assert (not bm!530685))

(assert (not b!6274626))

(assert (not b!6274110))

(assert (not b!6274454))

(assert (not d!1969136))

(assert (not d!1969466))

(assert (not b!6274746))

(assert (not d!1969300))

(assert (not b!6274395))

(assert (not d!1969126))

(assert (not b_lambda!238939))

(assert (not b!6274719))

(assert (not b!6274551))

(assert (not bm!530728))

(assert (not b!6274196))

(assert (not bm!530748))

(assert (not b!6273949))

(assert (not bm!530684))

(assert (not d!1969494))

(assert (not b!6273988))

(assert (not b!6274546))

(assert (not b_lambda!238947))

(assert (not setNonEmpty!42680))

(assert (not b!6274468))

(assert (not b!6274534))

(assert (not setNonEmpty!42678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

