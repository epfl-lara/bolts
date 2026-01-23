; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!552686 () Bool)

(assert start!552686)

(declare-fun b!5225955 () Bool)

(assert (=> b!5225955 true))

(assert (=> b!5225955 true))

(declare-fun lambda!262381 () Int)

(declare-fun lambda!262380 () Int)

(assert (=> b!5225955 (not (= lambda!262381 lambda!262380))))

(assert (=> b!5225955 true))

(assert (=> b!5225955 true))

(declare-fun b!5225936 () Bool)

(assert (=> b!5225936 true))

(declare-fun b!5225933 () Bool)

(declare-fun e!3252492 () Bool)

(declare-fun tp!1464780 () Bool)

(declare-fun tp!1464776 () Bool)

(assert (=> b!5225933 (= e!3252492 (and tp!1464780 tp!1464776))))

(declare-fun b!5225934 () Bool)

(declare-fun e!3252499 () Bool)

(declare-datatypes ((C!29902 0))(
  ( (C!29903 (val!24653 Int)) )
))
(declare-datatypes ((Regex!14816 0))(
  ( (ElementMatch!14816 (c!902205 C!29902)) (Concat!23661 (regOne!30144 Regex!14816) (regTwo!30144 Regex!14816)) (EmptyExpr!14816) (Star!14816 (reg!15145 Regex!14816)) (EmptyLang!14816) (Union!14816 (regOne!30145 Regex!14816) (regTwo!30145 Regex!14816)) )
))
(declare-fun r!7292 () Regex!14816)

(declare-fun validRegex!6552 (Regex!14816) Bool)

(assert (=> b!5225934 (= e!3252499 (validRegex!6552 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun b!5225935 () Bool)

(declare-fun res!2218647 () Bool)

(declare-fun e!3252496 () Bool)

(assert (=> b!5225935 (=> res!2218647 e!3252496)))

(declare-datatypes ((List!60747 0))(
  ( (Nil!60623) (Cons!60623 (h!67071 Regex!14816) (t!373922 List!60747)) )
))
(declare-datatypes ((Context!8400 0))(
  ( (Context!8401 (exprs!4700 List!60747)) )
))
(declare-datatypes ((List!60748 0))(
  ( (Nil!60624) (Cons!60624 (h!67072 Context!8400) (t!373923 List!60748)) )
))
(declare-fun zl!343 () List!60748)

(assert (=> b!5225935 (= res!2218647 (not (is-Cons!60623 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun e!3252495 () Bool)

(declare-fun e!3252508 () Bool)

(assert (=> b!5225936 (= e!3252495 e!3252508)))

(declare-fun res!2218641 () Bool)

(assert (=> b!5225936 (=> res!2218641 e!3252508)))

(declare-datatypes ((List!60749 0))(
  ( (Nil!60625) (Cons!60625 (h!67073 C!29902) (t!373924 List!60749)) )
))
(declare-fun s!2326 () List!60749)

(assert (=> b!5225936 (= res!2218641 (or (and (is-ElementMatch!14816 (regOne!30144 r!7292)) (= (c!902205 (regOne!30144 r!7292)) (h!67073 s!2326))) (not (is-Union!14816 (regOne!30144 r!7292)))))))

(declare-datatypes ((Unit!152546 0))(
  ( (Unit!152547) )
))
(declare-fun lt!2144290 () Unit!152546)

(declare-fun e!3252500 () Unit!152546)

(assert (=> b!5225936 (= lt!2144290 e!3252500)))

(declare-fun c!902204 () Bool)

(declare-fun nullable!4985 (Regex!14816) Bool)

(assert (=> b!5225936 (= c!902204 (nullable!4985 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun lambda!262382 () Int)

(declare-fun z!1189 () (Set Context!8400))

(declare-fun flatMap!543 ((Set Context!8400) Int) (Set Context!8400))

(declare-fun derivationStepZipperUp!188 (Context!8400 C!29902) (Set Context!8400))

(assert (=> b!5225936 (= (flatMap!543 z!1189 lambda!262382) (derivationStepZipperUp!188 (h!67072 zl!343) (h!67073 s!2326)))))

(declare-fun lt!2144303 () Unit!152546)

(declare-fun lemmaFlatMapOnSingletonSet!75 ((Set Context!8400) Context!8400 Int) Unit!152546)

(assert (=> b!5225936 (= lt!2144303 (lemmaFlatMapOnSingletonSet!75 z!1189 (h!67072 zl!343) lambda!262382))))

(declare-fun lt!2144287 () (Set Context!8400))

(declare-fun lt!2144293 () Context!8400)

(assert (=> b!5225936 (= lt!2144287 (derivationStepZipperUp!188 lt!2144293 (h!67073 s!2326)))))

(declare-fun lt!2144310 () (Set Context!8400))

(declare-fun derivationStepZipperDown!264 (Regex!14816 Context!8400 C!29902) (Set Context!8400))

(assert (=> b!5225936 (= lt!2144310 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (h!67072 zl!343))) lt!2144293 (h!67073 s!2326)))))

(assert (=> b!5225936 (= lt!2144293 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun lt!2144306 () (Set Context!8400))

(assert (=> b!5225936 (= lt!2144306 (derivationStepZipperUp!188 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))) (h!67073 s!2326)))))

(declare-fun b!5225937 () Bool)

(declare-fun e!3252507 () Bool)

(declare-fun e!3252493 () Bool)

(declare-fun tp!1464779 () Bool)

(declare-fun inv!80288 (Context!8400) Bool)

(assert (=> b!5225937 (= e!3252507 (and (inv!80288 (h!67072 zl!343)) e!3252493 tp!1464779))))

(declare-fun b!5225939 () Bool)

(declare-fun e!3252505 () Unit!152546)

(declare-fun Unit!152548 () Unit!152546)

(assert (=> b!5225939 (= e!3252505 Unit!152548)))

(declare-fun lt!2144285 () (Set Context!8400))

(declare-fun lt!2144308 () Unit!152546)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!53 ((Set Context!8400) (Set Context!8400) List!60749) Unit!152546)

(assert (=> b!5225939 (= lt!2144308 (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144285 lt!2144287 (t!373924 s!2326)))))

(declare-fun res!2218635 () Bool)

(declare-fun lt!2144299 () Bool)

(assert (=> b!5225939 (= res!2218635 lt!2144299)))

(declare-fun e!3252498 () Bool)

(assert (=> b!5225939 (=> res!2218635 e!3252498)))

(declare-fun matchZipper!1060 ((Set Context!8400) List!60749) Bool)

(assert (=> b!5225939 (= (matchZipper!1060 (set.union lt!2144285 lt!2144287) (t!373924 s!2326)) e!3252498)))

(declare-fun b!5225940 () Bool)

(declare-fun res!2218639 () Bool)

(declare-fun e!3252502 () Bool)

(assert (=> b!5225940 (=> (not res!2218639) (not e!3252502))))

(declare-fun toList!8600 ((Set Context!8400)) List!60748)

(assert (=> b!5225940 (= res!2218639 (= (toList!8600 z!1189) zl!343))))

(declare-fun b!5225941 () Bool)

(declare-fun res!2218636 () Bool)

(assert (=> b!5225941 (=> (not res!2218636) (not e!3252502))))

(declare-fun unfocusZipper!558 (List!60748) Regex!14816)

(assert (=> b!5225941 (= res!2218636 (= r!7292 (unfocusZipper!558 zl!343)))))

(declare-fun b!5225942 () Bool)

(declare-fun tp!1464773 () Bool)

(declare-fun tp!1464781 () Bool)

(assert (=> b!5225942 (= e!3252492 (and tp!1464773 tp!1464781))))

(declare-fun setIsEmpty!33262 () Bool)

(declare-fun setRes!33262 () Bool)

(assert (=> setIsEmpty!33262 setRes!33262))

(declare-fun b!5225943 () Bool)

(declare-fun e!3252497 () Bool)

(declare-fun e!3252501 () Bool)

(assert (=> b!5225943 (= e!3252497 e!3252501)))

(declare-fun res!2218644 () Bool)

(assert (=> b!5225943 (=> res!2218644 e!3252501)))

(declare-fun e!3252494 () Bool)

(assert (=> b!5225943 (= res!2218644 e!3252494)))

(declare-fun res!2218640 () Bool)

(assert (=> b!5225943 (=> (not res!2218640) (not e!3252494))))

(assert (=> b!5225943 (= res!2218640 (not (= (matchZipper!1060 lt!2144310 (t!373924 s!2326)) lt!2144299)))))

(declare-fun lt!2144292 () (Set Context!8400))

(declare-fun e!3252504 () Bool)

(assert (=> b!5225943 (= (matchZipper!1060 lt!2144292 (t!373924 s!2326)) e!3252504)))

(declare-fun res!2218650 () Bool)

(assert (=> b!5225943 (=> res!2218650 e!3252504)))

(assert (=> b!5225943 (= res!2218650 lt!2144299)))

(assert (=> b!5225943 (= lt!2144299 (matchZipper!1060 lt!2144285 (t!373924 s!2326)))))

(declare-fun lt!2144307 () (Set Context!8400))

(declare-fun lt!2144295 () Unit!152546)

(assert (=> b!5225943 (= lt!2144295 (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144285 lt!2144307 (t!373924 s!2326)))))

(declare-fun tp!1464772 () Bool)

(declare-fun setNonEmpty!33262 () Bool)

(declare-fun setElem!33262 () Context!8400)

(declare-fun e!3252503 () Bool)

(assert (=> setNonEmpty!33262 (= setRes!33262 (and tp!1464772 (inv!80288 setElem!33262) e!3252503))))

(declare-fun setRest!33262 () (Set Context!8400))

(assert (=> setNonEmpty!33262 (= z!1189 (set.union (set.insert setElem!33262 (as set.empty (Set Context!8400))) setRest!33262))))

(declare-fun b!5225944 () Bool)

(declare-fun tp!1464775 () Bool)

(assert (=> b!5225944 (= e!3252492 tp!1464775)))

(declare-fun b!5225945 () Bool)

(declare-fun Unit!152549 () Unit!152546)

(assert (=> b!5225945 (= e!3252500 Unit!152549)))

(declare-fun b!5225946 () Bool)

(declare-fun e!3252509 () Bool)

(assert (=> b!5225946 (= e!3252509 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(declare-fun b!5225947 () Bool)

(assert (=> b!5225947 (= e!3252502 (not e!3252496))))

(declare-fun res!2218648 () Bool)

(assert (=> b!5225947 (=> res!2218648 e!3252496)))

(assert (=> b!5225947 (= res!2218648 (not (is-Cons!60624 zl!343)))))

(declare-fun lt!2144304 () Bool)

(declare-fun matchRSpec!1919 (Regex!14816 List!60749) Bool)

(assert (=> b!5225947 (= lt!2144304 (matchRSpec!1919 r!7292 s!2326))))

(declare-fun matchR!7001 (Regex!14816 List!60749) Bool)

(assert (=> b!5225947 (= lt!2144304 (matchR!7001 r!7292 s!2326))))

(declare-fun lt!2144294 () Unit!152546)

(declare-fun mainMatchTheorem!1919 (Regex!14816 List!60749) Unit!152546)

(assert (=> b!5225947 (= lt!2144294 (mainMatchTheorem!1919 r!7292 s!2326))))

(declare-fun b!5225948 () Bool)

(assert (=> b!5225948 (= e!3252508 e!3252497)))

(declare-fun res!2218637 () Bool)

(assert (=> b!5225948 (=> res!2218637 e!3252497)))

(assert (=> b!5225948 (= res!2218637 (not (= lt!2144310 lt!2144292)))))

(assert (=> b!5225948 (= lt!2144292 (set.union lt!2144285 lt!2144307))))

(assert (=> b!5225948 (= lt!2144307 (derivationStepZipperDown!264 (regTwo!30145 (regOne!30144 r!7292)) lt!2144293 (h!67073 s!2326)))))

(assert (=> b!5225948 (= lt!2144285 (derivationStepZipperDown!264 (regOne!30145 (regOne!30144 r!7292)) lt!2144293 (h!67073 s!2326)))))

(declare-fun b!5225938 () Bool)

(declare-fun res!2218649 () Bool)

(assert (=> b!5225938 (=> res!2218649 e!3252495)))

(declare-fun isEmpty!32547 (List!60747) Bool)

(assert (=> b!5225938 (= res!2218649 (isEmpty!32547 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun res!2218632 () Bool)

(assert (=> start!552686 (=> (not res!2218632) (not e!3252502))))

(assert (=> start!552686 (= res!2218632 (validRegex!6552 r!7292))))

(assert (=> start!552686 e!3252502))

(assert (=> start!552686 e!3252492))

(declare-fun condSetEmpty!33262 () Bool)

(assert (=> start!552686 (= condSetEmpty!33262 (= z!1189 (as set.empty (Set Context!8400))))))

(assert (=> start!552686 setRes!33262))

(assert (=> start!552686 e!3252507))

(declare-fun e!3252506 () Bool)

(assert (=> start!552686 e!3252506))

(declare-fun b!5225949 () Bool)

(declare-fun res!2218638 () Bool)

(assert (=> b!5225949 (=> res!2218638 e!3252496)))

(declare-fun isEmpty!32548 (List!60748) Bool)

(assert (=> b!5225949 (= res!2218638 (not (isEmpty!32548 (t!373923 zl!343))))))

(declare-fun b!5225950 () Bool)

(assert (=> b!5225950 (= e!3252498 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(declare-fun b!5225951 () Bool)

(declare-fun res!2218645 () Bool)

(assert (=> b!5225951 (=> res!2218645 e!3252496)))

(assert (=> b!5225951 (= res!2218645 (or (is-EmptyExpr!14816 r!7292) (is-EmptyLang!14816 r!7292) (is-ElementMatch!14816 r!7292) (is-Union!14816 r!7292) (not (is-Concat!23661 r!7292))))))

(declare-fun b!5225952 () Bool)

(declare-fun tp_is_empty!38885 () Bool)

(assert (=> b!5225952 (= e!3252492 tp_is_empty!38885)))

(declare-fun b!5225953 () Bool)

(declare-fun Unit!152550 () Unit!152546)

(assert (=> b!5225953 (= e!3252505 Unit!152550)))

(declare-fun b!5225954 () Bool)

(declare-fun tp!1464778 () Bool)

(assert (=> b!5225954 (= e!3252503 tp!1464778)))

(assert (=> b!5225955 (= e!3252496 e!3252495)))

(declare-fun res!2218642 () Bool)

(assert (=> b!5225955 (=> res!2218642 e!3252495)))

(declare-fun lt!2144300 () Bool)

(assert (=> b!5225955 (= res!2218642 (or (not (= lt!2144304 lt!2144300)) (is-Nil!60625 s!2326)))))

(declare-fun Exists!1997 (Int) Bool)

(assert (=> b!5225955 (= (Exists!1997 lambda!262380) (Exists!1997 lambda!262381))))

(declare-fun lt!2144288 () Unit!152546)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!651 (Regex!14816 Regex!14816 List!60749) Unit!152546)

(assert (=> b!5225955 (= lt!2144288 (lemmaExistCutMatchRandMatchRSpecEquivalent!651 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326))))

(assert (=> b!5225955 (= lt!2144300 (Exists!1997 lambda!262380))))

(declare-datatypes ((tuple2!64030 0))(
  ( (tuple2!64031 (_1!35318 List!60749) (_2!35318 List!60749)) )
))
(declare-datatypes ((Option!14927 0))(
  ( (None!14926) (Some!14926 (v!50955 tuple2!64030)) )
))
(declare-fun isDefined!11630 (Option!14927) Bool)

(declare-fun findConcatSeparation!1341 (Regex!14816 Regex!14816 List!60749 List!60749 List!60749) Option!14927)

(assert (=> b!5225955 (= lt!2144300 (isDefined!11630 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326)))))

(declare-fun lt!2144291 () Unit!152546)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1105 (Regex!14816 Regex!14816 List!60749) Unit!152546)

(assert (=> b!5225955 (= lt!2144291 (lemmaFindConcatSeparationEquivalentToExists!1105 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326))))

(declare-fun b!5225956 () Bool)

(assert (=> b!5225956 (= e!3252504 (matchZipper!1060 lt!2144307 (t!373924 s!2326)))))

(declare-fun b!5225957 () Bool)

(assert (=> b!5225957 (= e!3252494 (not (matchZipper!1060 lt!2144307 (t!373924 s!2326))))))

(declare-fun b!5225958 () Bool)

(declare-fun res!2218646 () Bool)

(assert (=> b!5225958 (=> res!2218646 e!3252496)))

(declare-fun generalisedUnion!745 (List!60747) Regex!14816)

(declare-fun unfocusZipperList!258 (List!60748) List!60747)

(assert (=> b!5225958 (= res!2218646 (not (= r!7292 (generalisedUnion!745 (unfocusZipperList!258 zl!343)))))))

(declare-fun b!5225959 () Bool)

(declare-fun tp!1464774 () Bool)

(assert (=> b!5225959 (= e!3252506 (and tp_is_empty!38885 tp!1464774))))

(declare-fun b!5225960 () Bool)

(declare-fun tp!1464777 () Bool)

(assert (=> b!5225960 (= e!3252493 tp!1464777)))

(declare-fun b!5225961 () Bool)

(declare-fun Unit!152551 () Unit!152546)

(assert (=> b!5225961 (= e!3252500 Unit!152551)))

(declare-fun lt!2144309 () Unit!152546)

(assert (=> b!5225961 (= lt!2144309 (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144310 lt!2144287 (t!373924 s!2326)))))

(declare-fun res!2218643 () Bool)

(assert (=> b!5225961 (= res!2218643 (matchZipper!1060 lt!2144310 (t!373924 s!2326)))))

(assert (=> b!5225961 (=> res!2218643 e!3252509)))

(assert (=> b!5225961 (= (matchZipper!1060 (set.union lt!2144310 lt!2144287) (t!373924 s!2326)) e!3252509)))

(declare-fun b!5225962 () Bool)

(declare-fun res!2218633 () Bool)

(assert (=> b!5225962 (=> res!2218633 e!3252496)))

(declare-fun generalisedConcat!485 (List!60747) Regex!14816)

(assert (=> b!5225962 (= res!2218633 (not (= r!7292 (generalisedConcat!485 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5225963 () Bool)

(assert (=> b!5225963 (= e!3252501 e!3252499)))

(declare-fun res!2218634 () Bool)

(assert (=> b!5225963 (=> res!2218634 e!3252499)))

(assert (=> b!5225963 (= res!2218634 (nullable!4985 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun lt!2144296 () (Set Context!8400))

(declare-fun lt!2144297 () Context!8400)

(assert (=> b!5225963 (= (flatMap!543 lt!2144296 lambda!262382) (derivationStepZipperUp!188 lt!2144297 (h!67073 s!2326)))))

(declare-fun lt!2144305 () Unit!152546)

(assert (=> b!5225963 (= lt!2144305 (lemmaFlatMapOnSingletonSet!75 lt!2144296 lt!2144297 lambda!262382))))

(declare-fun lt!2144286 () (Set Context!8400))

(assert (=> b!5225963 (= lt!2144286 (derivationStepZipperUp!188 lt!2144297 (h!67073 s!2326)))))

(declare-fun lt!2144302 () Unit!152546)

(assert (=> b!5225963 (= lt!2144302 e!3252505)))

(declare-fun c!902203 () Bool)

(assert (=> b!5225963 (= c!902203 (nullable!4985 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun lt!2144301 () (Set Context!8400))

(declare-fun lt!2144289 () Context!8400)

(assert (=> b!5225963 (= (flatMap!543 lt!2144301 lambda!262382) (derivationStepZipperUp!188 lt!2144289 (h!67073 s!2326)))))

(declare-fun lt!2144284 () Unit!152546)

(assert (=> b!5225963 (= lt!2144284 (lemmaFlatMapOnSingletonSet!75 lt!2144301 lt!2144289 lambda!262382))))

(declare-fun lt!2144298 () (Set Context!8400))

(assert (=> b!5225963 (= lt!2144298 (derivationStepZipperUp!188 lt!2144289 (h!67073 s!2326)))))

(assert (=> b!5225963 (= lt!2144296 (set.insert lt!2144297 (as set.empty (Set Context!8400))))))

(assert (=> b!5225963 (= lt!2144297 (Context!8401 (Cons!60623 (regTwo!30145 (regOne!30144 r!7292)) (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(assert (=> b!5225963 (= lt!2144301 (set.insert lt!2144289 (as set.empty (Set Context!8400))))))

(assert (=> b!5225963 (= lt!2144289 (Context!8401 (Cons!60623 (regOne!30145 (regOne!30144 r!7292)) (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(assert (= (and start!552686 res!2218632) b!5225940))

(assert (= (and b!5225940 res!2218639) b!5225941))

(assert (= (and b!5225941 res!2218636) b!5225947))

(assert (= (and b!5225947 (not res!2218648)) b!5225949))

(assert (= (and b!5225949 (not res!2218638)) b!5225962))

(assert (= (and b!5225962 (not res!2218633)) b!5225935))

(assert (= (and b!5225935 (not res!2218647)) b!5225958))

(assert (= (and b!5225958 (not res!2218646)) b!5225951))

(assert (= (and b!5225951 (not res!2218645)) b!5225955))

(assert (= (and b!5225955 (not res!2218642)) b!5225938))

(assert (= (and b!5225938 (not res!2218649)) b!5225936))

(assert (= (and b!5225936 c!902204) b!5225961))

(assert (= (and b!5225936 (not c!902204)) b!5225945))

(assert (= (and b!5225961 (not res!2218643)) b!5225946))

(assert (= (and b!5225936 (not res!2218641)) b!5225948))

(assert (= (and b!5225948 (not res!2218637)) b!5225943))

(assert (= (and b!5225943 (not res!2218650)) b!5225956))

(assert (= (and b!5225943 res!2218640) b!5225957))

(assert (= (and b!5225943 (not res!2218644)) b!5225963))

(assert (= (and b!5225963 c!902203) b!5225939))

(assert (= (and b!5225963 (not c!902203)) b!5225953))

(assert (= (and b!5225939 (not res!2218635)) b!5225950))

(assert (= (and b!5225963 (not res!2218634)) b!5225934))

(assert (= (and start!552686 (is-ElementMatch!14816 r!7292)) b!5225952))

(assert (= (and start!552686 (is-Concat!23661 r!7292)) b!5225933))

(assert (= (and start!552686 (is-Star!14816 r!7292)) b!5225944))

(assert (= (and start!552686 (is-Union!14816 r!7292)) b!5225942))

(assert (= (and start!552686 condSetEmpty!33262) setIsEmpty!33262))

(assert (= (and start!552686 (not condSetEmpty!33262)) setNonEmpty!33262))

(assert (= setNonEmpty!33262 b!5225954))

(assert (= b!5225937 b!5225960))

(assert (= (and start!552686 (is-Cons!60624 zl!343)) b!5225937))

(assert (= (and start!552686 (is-Cons!60625 s!2326)) b!5225959))

(declare-fun m!6272654 () Bool)

(assert (=> b!5225946 m!6272654))

(declare-fun m!6272656 () Bool)

(assert (=> b!5225957 m!6272656))

(declare-fun m!6272658 () Bool)

(assert (=> b!5225949 m!6272658))

(declare-fun m!6272660 () Bool)

(assert (=> b!5225943 m!6272660))

(declare-fun m!6272662 () Bool)

(assert (=> b!5225943 m!6272662))

(declare-fun m!6272664 () Bool)

(assert (=> b!5225943 m!6272664))

(declare-fun m!6272666 () Bool)

(assert (=> b!5225943 m!6272666))

(declare-fun m!6272668 () Bool)

(assert (=> b!5225939 m!6272668))

(declare-fun m!6272670 () Bool)

(assert (=> b!5225939 m!6272670))

(declare-fun m!6272672 () Bool)

(assert (=> b!5225962 m!6272672))

(declare-fun m!6272674 () Bool)

(assert (=> b!5225936 m!6272674))

(declare-fun m!6272676 () Bool)

(assert (=> b!5225936 m!6272676))

(declare-fun m!6272678 () Bool)

(assert (=> b!5225936 m!6272678))

(declare-fun m!6272680 () Bool)

(assert (=> b!5225936 m!6272680))

(declare-fun m!6272682 () Bool)

(assert (=> b!5225936 m!6272682))

(declare-fun m!6272684 () Bool)

(assert (=> b!5225936 m!6272684))

(declare-fun m!6272686 () Bool)

(assert (=> b!5225936 m!6272686))

(declare-fun m!6272688 () Bool)

(assert (=> setNonEmpty!33262 m!6272688))

(declare-fun m!6272690 () Bool)

(assert (=> b!5225934 m!6272690))

(declare-fun m!6272692 () Bool)

(assert (=> b!5225948 m!6272692))

(declare-fun m!6272694 () Bool)

(assert (=> b!5225948 m!6272694))

(declare-fun m!6272696 () Bool)

(assert (=> b!5225937 m!6272696))

(declare-fun m!6272698 () Bool)

(assert (=> b!5225940 m!6272698))

(declare-fun m!6272700 () Bool)

(assert (=> b!5225955 m!6272700))

(declare-fun m!6272702 () Bool)

(assert (=> b!5225955 m!6272702))

(declare-fun m!6272704 () Bool)

(assert (=> b!5225955 m!6272704))

(declare-fun m!6272706 () Bool)

(assert (=> b!5225955 m!6272706))

(declare-fun m!6272708 () Bool)

(assert (=> b!5225955 m!6272708))

(assert (=> b!5225955 m!6272706))

(assert (=> b!5225955 m!6272700))

(declare-fun m!6272710 () Bool)

(assert (=> b!5225955 m!6272710))

(declare-fun m!6272712 () Bool)

(assert (=> b!5225938 m!6272712))

(declare-fun m!6272714 () Bool)

(assert (=> b!5225941 m!6272714))

(declare-fun m!6272716 () Bool)

(assert (=> b!5225961 m!6272716))

(assert (=> b!5225961 m!6272660))

(declare-fun m!6272718 () Bool)

(assert (=> b!5225961 m!6272718))

(declare-fun m!6272720 () Bool)

(assert (=> start!552686 m!6272720))

(declare-fun m!6272722 () Bool)

(assert (=> b!5225963 m!6272722))

(declare-fun m!6272724 () Bool)

(assert (=> b!5225963 m!6272724))

(declare-fun m!6272726 () Bool)

(assert (=> b!5225963 m!6272726))

(declare-fun m!6272728 () Bool)

(assert (=> b!5225963 m!6272728))

(declare-fun m!6272730 () Bool)

(assert (=> b!5225963 m!6272730))

(declare-fun m!6272732 () Bool)

(assert (=> b!5225963 m!6272732))

(declare-fun m!6272734 () Bool)

(assert (=> b!5225963 m!6272734))

(declare-fun m!6272736 () Bool)

(assert (=> b!5225963 m!6272736))

(declare-fun m!6272738 () Bool)

(assert (=> b!5225963 m!6272738))

(declare-fun m!6272740 () Bool)

(assert (=> b!5225963 m!6272740))

(assert (=> b!5225956 m!6272656))

(assert (=> b!5225950 m!6272654))

(declare-fun m!6272742 () Bool)

(assert (=> b!5225958 m!6272742))

(assert (=> b!5225958 m!6272742))

(declare-fun m!6272744 () Bool)

(assert (=> b!5225958 m!6272744))

(declare-fun m!6272746 () Bool)

(assert (=> b!5225947 m!6272746))

(declare-fun m!6272748 () Bool)

(assert (=> b!5225947 m!6272748))

(declare-fun m!6272750 () Bool)

(assert (=> b!5225947 m!6272750))

(push 1)

(assert (not b!5225950))

(assert (not b!5225934))

(assert tp_is_empty!38885)

(assert (not b!5225948))

(assert (not b!5225942))

(assert (not b!5225960))

(assert (not b!5225943))

(assert (not start!552686))

(assert (not b!5225962))

(assert (not b!5225936))

(assert (not b!5225949))

(assert (not b!5225941))

(assert (not b!5225956))

(assert (not b!5225940))

(assert (not b!5225946))

(assert (not b!5225937))

(assert (not b!5225947))

(assert (not b!5225958))

(assert (not b!5225955))

(assert (not b!5225957))

(assert (not b!5225963))

(assert (not b!5225959))

(assert (not setNonEmpty!33262))

(assert (not b!5225954))

(assert (not b!5225939))

(assert (not b!5225938))

(assert (not b!5225933))

(assert (not b!5225944))

(assert (not b!5225961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5226102 () Bool)

(declare-fun e!3252586 () Regex!14816)

(assert (=> b!5226102 (= e!3252586 EmptyExpr!14816)))

(declare-fun b!5226103 () Bool)

(declare-fun e!3252582 () Bool)

(declare-fun lt!2144394 () Regex!14816)

(declare-fun isEmptyExpr!776 (Regex!14816) Bool)

(assert (=> b!5226103 (= e!3252582 (isEmptyExpr!776 lt!2144394))))

(declare-fun b!5226104 () Bool)

(declare-fun e!3252584 () Bool)

(declare-fun isConcat!299 (Regex!14816) Bool)

(assert (=> b!5226104 (= e!3252584 (isConcat!299 lt!2144394))))

(declare-fun b!5226105 () Bool)

(declare-fun e!3252585 () Regex!14816)

(assert (=> b!5226105 (= e!3252585 (h!67071 (exprs!4700 (h!67072 zl!343))))))

(declare-fun d!1684862 () Bool)

(declare-fun e!3252587 () Bool)

(assert (=> d!1684862 e!3252587))

(declare-fun res!2218724 () Bool)

(assert (=> d!1684862 (=> (not res!2218724) (not e!3252587))))

(assert (=> d!1684862 (= res!2218724 (validRegex!6552 lt!2144394))))

(assert (=> d!1684862 (= lt!2144394 e!3252585)))

(declare-fun c!902228 () Bool)

(declare-fun e!3252583 () Bool)

(assert (=> d!1684862 (= c!902228 e!3252583)))

(declare-fun res!2218725 () Bool)

(assert (=> d!1684862 (=> (not res!2218725) (not e!3252583))))

(assert (=> d!1684862 (= res!2218725 (is-Cons!60623 (exprs!4700 (h!67072 zl!343))))))

(declare-fun lambda!262400 () Int)

(declare-fun forall!14248 (List!60747 Int) Bool)

(assert (=> d!1684862 (forall!14248 (exprs!4700 (h!67072 zl!343)) lambda!262400)))

(assert (=> d!1684862 (= (generalisedConcat!485 (exprs!4700 (h!67072 zl!343))) lt!2144394)))

(declare-fun b!5226101 () Bool)

(assert (=> b!5226101 (= e!3252587 e!3252582)))

(declare-fun c!902229 () Bool)

(assert (=> b!5226101 (= c!902229 (isEmpty!32547 (exprs!4700 (h!67072 zl!343))))))

(declare-fun b!5226106 () Bool)

(assert (=> b!5226106 (= e!3252585 e!3252586)))

(declare-fun c!902230 () Bool)

(assert (=> b!5226106 (= c!902230 (is-Cons!60623 (exprs!4700 (h!67072 zl!343))))))

(declare-fun b!5226107 () Bool)

(declare-fun head!11199 (List!60747) Regex!14816)

(assert (=> b!5226107 (= e!3252584 (= lt!2144394 (head!11199 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226108 () Bool)

(assert (=> b!5226108 (= e!3252586 (Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343))) (generalisedConcat!485 (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5226109 () Bool)

(assert (=> b!5226109 (= e!3252582 e!3252584)))

(declare-fun c!902231 () Bool)

(declare-fun tail!10296 (List!60747) List!60747)

(assert (=> b!5226109 (= c!902231 (isEmpty!32547 (tail!10296 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226110 () Bool)

(assert (=> b!5226110 (= e!3252583 (isEmpty!32547 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(assert (= (and d!1684862 res!2218725) b!5226110))

(assert (= (and d!1684862 c!902228) b!5226105))

(assert (= (and d!1684862 (not c!902228)) b!5226106))

(assert (= (and b!5226106 c!902230) b!5226108))

(assert (= (and b!5226106 (not c!902230)) b!5226102))

(assert (= (and d!1684862 res!2218724) b!5226101))

(assert (= (and b!5226101 c!902229) b!5226103))

(assert (= (and b!5226101 (not c!902229)) b!5226109))

(assert (= (and b!5226109 c!902231) b!5226107))

(assert (= (and b!5226109 (not c!902231)) b!5226104))

(declare-fun m!6272850 () Bool)

(assert (=> b!5226104 m!6272850))

(assert (=> b!5226110 m!6272712))

(declare-fun m!6272852 () Bool)

(assert (=> b!5226109 m!6272852))

(assert (=> b!5226109 m!6272852))

(declare-fun m!6272854 () Bool)

(assert (=> b!5226109 m!6272854))

(declare-fun m!6272856 () Bool)

(assert (=> b!5226108 m!6272856))

(declare-fun m!6272858 () Bool)

(assert (=> d!1684862 m!6272858))

(declare-fun m!6272860 () Bool)

(assert (=> d!1684862 m!6272860))

(declare-fun m!6272862 () Bool)

(assert (=> b!5226103 m!6272862))

(declare-fun m!6272864 () Bool)

(assert (=> b!5226101 m!6272864))

(declare-fun m!6272866 () Bool)

(assert (=> b!5226107 m!6272866))

(assert (=> b!5225962 d!1684862))

(declare-fun d!1684864 () Bool)

(declare-fun c!902234 () Bool)

(declare-fun isEmpty!32551 (List!60749) Bool)

(assert (=> d!1684864 (= c!902234 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252590 () Bool)

(assert (=> d!1684864 (= (matchZipper!1060 lt!2144287 (t!373924 s!2326)) e!3252590)))

(declare-fun b!5226115 () Bool)

(declare-fun nullableZipper!1240 ((Set Context!8400)) Bool)

(assert (=> b!5226115 (= e!3252590 (nullableZipper!1240 lt!2144287))))

(declare-fun b!5226116 () Bool)

(declare-fun derivationStepZipper!1084 ((Set Context!8400) C!29902) (Set Context!8400))

(declare-fun head!11200 (List!60749) C!29902)

(declare-fun tail!10297 (List!60749) List!60749)

(assert (=> b!5226116 (= e!3252590 (matchZipper!1060 (derivationStepZipper!1084 lt!2144287 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684864 c!902234) b!5226115))

(assert (= (and d!1684864 (not c!902234)) b!5226116))

(declare-fun m!6272868 () Bool)

(assert (=> d!1684864 m!6272868))

(declare-fun m!6272870 () Bool)

(assert (=> b!5226115 m!6272870))

(declare-fun m!6272872 () Bool)

(assert (=> b!5226116 m!6272872))

(assert (=> b!5226116 m!6272872))

(declare-fun m!6272874 () Bool)

(assert (=> b!5226116 m!6272874))

(declare-fun m!6272876 () Bool)

(assert (=> b!5226116 m!6272876))

(assert (=> b!5226116 m!6272874))

(assert (=> b!5226116 m!6272876))

(declare-fun m!6272878 () Bool)

(assert (=> b!5226116 m!6272878))

(assert (=> b!5225950 d!1684864))

(declare-fun d!1684866 () Bool)

(declare-fun e!3252593 () Bool)

(assert (=> d!1684866 (= (matchZipper!1060 (set.union lt!2144310 lt!2144287) (t!373924 s!2326)) e!3252593)))

(declare-fun res!2218728 () Bool)

(assert (=> d!1684866 (=> res!2218728 e!3252593)))

(assert (=> d!1684866 (= res!2218728 (matchZipper!1060 lt!2144310 (t!373924 s!2326)))))

(declare-fun lt!2144397 () Unit!152546)

(declare-fun choose!38865 ((Set Context!8400) (Set Context!8400) List!60749) Unit!152546)

(assert (=> d!1684866 (= lt!2144397 (choose!38865 lt!2144310 lt!2144287 (t!373924 s!2326)))))

(assert (=> d!1684866 (= (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144310 lt!2144287 (t!373924 s!2326)) lt!2144397)))

(declare-fun b!5226119 () Bool)

(assert (=> b!5226119 (= e!3252593 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(assert (= (and d!1684866 (not res!2218728)) b!5226119))

(assert (=> d!1684866 m!6272718))

(assert (=> d!1684866 m!6272660))

(declare-fun m!6272880 () Bool)

(assert (=> d!1684866 m!6272880))

(assert (=> b!5226119 m!6272654))

(assert (=> b!5225961 d!1684866))

(declare-fun d!1684868 () Bool)

(declare-fun c!902235 () Bool)

(assert (=> d!1684868 (= c!902235 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252594 () Bool)

(assert (=> d!1684868 (= (matchZipper!1060 lt!2144310 (t!373924 s!2326)) e!3252594)))

(declare-fun b!5226120 () Bool)

(assert (=> b!5226120 (= e!3252594 (nullableZipper!1240 lt!2144310))))

(declare-fun b!5226121 () Bool)

(assert (=> b!5226121 (= e!3252594 (matchZipper!1060 (derivationStepZipper!1084 lt!2144310 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684868 c!902235) b!5226120))

(assert (= (and d!1684868 (not c!902235)) b!5226121))

(assert (=> d!1684868 m!6272868))

(declare-fun m!6272882 () Bool)

(assert (=> b!5226120 m!6272882))

(assert (=> b!5226121 m!6272872))

(assert (=> b!5226121 m!6272872))

(declare-fun m!6272884 () Bool)

(assert (=> b!5226121 m!6272884))

(assert (=> b!5226121 m!6272876))

(assert (=> b!5226121 m!6272884))

(assert (=> b!5226121 m!6272876))

(declare-fun m!6272886 () Bool)

(assert (=> b!5226121 m!6272886))

(assert (=> b!5225961 d!1684868))

(declare-fun d!1684870 () Bool)

(declare-fun c!902236 () Bool)

(assert (=> d!1684870 (= c!902236 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252595 () Bool)

(assert (=> d!1684870 (= (matchZipper!1060 (set.union lt!2144310 lt!2144287) (t!373924 s!2326)) e!3252595)))

(declare-fun b!5226122 () Bool)

(assert (=> b!5226122 (= e!3252595 (nullableZipper!1240 (set.union lt!2144310 lt!2144287)))))

(declare-fun b!5226123 () Bool)

(assert (=> b!5226123 (= e!3252595 (matchZipper!1060 (derivationStepZipper!1084 (set.union lt!2144310 lt!2144287) (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684870 c!902236) b!5226122))

(assert (= (and d!1684870 (not c!902236)) b!5226123))

(assert (=> d!1684870 m!6272868))

(declare-fun m!6272888 () Bool)

(assert (=> b!5226122 m!6272888))

(assert (=> b!5226123 m!6272872))

(assert (=> b!5226123 m!6272872))

(declare-fun m!6272890 () Bool)

(assert (=> b!5226123 m!6272890))

(assert (=> b!5226123 m!6272876))

(assert (=> b!5226123 m!6272890))

(assert (=> b!5226123 m!6272876))

(declare-fun m!6272892 () Bool)

(assert (=> b!5226123 m!6272892))

(assert (=> b!5225961 d!1684870))

(declare-fun d!1684872 () Bool)

(declare-fun lt!2144400 () Regex!14816)

(assert (=> d!1684872 (validRegex!6552 lt!2144400)))

(assert (=> d!1684872 (= lt!2144400 (generalisedUnion!745 (unfocusZipperList!258 zl!343)))))

(assert (=> d!1684872 (= (unfocusZipper!558 zl!343) lt!2144400)))

(declare-fun bs!1213458 () Bool)

(assert (= bs!1213458 d!1684872))

(declare-fun m!6272894 () Bool)

(assert (=> bs!1213458 m!6272894))

(assert (=> bs!1213458 m!6272742))

(assert (=> bs!1213458 m!6272742))

(assert (=> bs!1213458 m!6272744))

(assert (=> b!5225941 d!1684872))

(declare-fun d!1684874 () Bool)

(declare-fun e!3252598 () Bool)

(assert (=> d!1684874 e!3252598))

(declare-fun res!2218731 () Bool)

(assert (=> d!1684874 (=> (not res!2218731) (not e!3252598))))

(declare-fun lt!2144403 () List!60748)

(declare-fun noDuplicate!1196 (List!60748) Bool)

(assert (=> d!1684874 (= res!2218731 (noDuplicate!1196 lt!2144403))))

(declare-fun choose!38866 ((Set Context!8400)) List!60748)

(assert (=> d!1684874 (= lt!2144403 (choose!38866 z!1189))))

(assert (=> d!1684874 (= (toList!8600 z!1189) lt!2144403)))

(declare-fun b!5226126 () Bool)

(declare-fun content!10756 (List!60748) (Set Context!8400))

(assert (=> b!5226126 (= e!3252598 (= (content!10756 lt!2144403) z!1189))))

(assert (= (and d!1684874 res!2218731) b!5226126))

(declare-fun m!6272896 () Bool)

(assert (=> d!1684874 m!6272896))

(declare-fun m!6272898 () Bool)

(assert (=> d!1684874 m!6272898))

(declare-fun m!6272900 () Bool)

(assert (=> b!5226126 m!6272900))

(assert (=> b!5225940 d!1684874))

(declare-fun d!1684876 () Bool)

(assert (=> d!1684876 (= (isEmpty!32548 (t!373923 zl!343)) (is-Nil!60624 (t!373923 zl!343)))))

(assert (=> b!5225949 d!1684876))

(declare-fun b!5226149 () Bool)

(declare-fun e!3252615 () (Set Context!8400))

(assert (=> b!5226149 (= e!3252615 (set.insert lt!2144293 (as set.empty (Set Context!8400))))))

(declare-fun bm!369258 () Bool)

(declare-fun call!369263 () (Set Context!8400))

(declare-fun call!369264 () List!60747)

(declare-fun c!902247 () Bool)

(assert (=> bm!369258 (= call!369263 (derivationStepZipperDown!264 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))) (ite c!902247 lt!2144293 (Context!8401 call!369264)) (h!67073 s!2326)))))

(declare-fun bm!369260 () Bool)

(declare-fun c!902249 () Bool)

(declare-fun c!902251 () Bool)

(declare-fun $colon$colon!1290 (List!60747 Regex!14816) List!60747)

(assert (=> bm!369260 (= call!369264 ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902251 c!902249) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30145 (regOne!30144 r!7292)))))))

(declare-fun b!5226150 () Bool)

(declare-fun c!902250 () Bool)

(assert (=> b!5226150 (= c!902250 (is-Star!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun e!3252616 () (Set Context!8400))

(declare-fun e!3252613 () (Set Context!8400))

(assert (=> b!5226150 (= e!3252616 e!3252613)))

(declare-fun bm!369261 () Bool)

(declare-fun call!369268 () List!60747)

(assert (=> bm!369261 (= call!369268 call!369264)))

(declare-fun b!5226151 () Bool)

(declare-fun e!3252614 () (Set Context!8400))

(assert (=> b!5226151 (= e!3252615 e!3252614)))

(assert (=> b!5226151 (= c!902247 (is-Union!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226152 () Bool)

(declare-fun call!369265 () (Set Context!8400))

(assert (=> b!5226152 (= e!3252614 (set.union call!369263 call!369265))))

(declare-fun b!5226153 () Bool)

(declare-fun e!3252611 () (Set Context!8400))

(assert (=> b!5226153 (= e!3252611 e!3252616)))

(assert (=> b!5226153 (= c!902249 (is-Concat!23661 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226154 () Bool)

(declare-fun call!369266 () (Set Context!8400))

(assert (=> b!5226154 (= e!3252616 call!369266)))

(declare-fun b!5226155 () Bool)

(declare-fun call!369267 () (Set Context!8400))

(assert (=> b!5226155 (= e!3252611 (set.union call!369263 call!369267))))

(declare-fun b!5226156 () Bool)

(assert (=> b!5226156 (= e!3252613 (as set.empty (Set Context!8400)))))

(declare-fun b!5226157 () Bool)

(assert (=> b!5226157 (= e!3252613 call!369266)))

(declare-fun b!5226158 () Bool)

(declare-fun e!3252612 () Bool)

(assert (=> b!5226158 (= e!3252612 (nullable!4985 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))

(declare-fun b!5226159 () Bool)

(assert (=> b!5226159 (= c!902251 e!3252612)))

(declare-fun res!2218734 () Bool)

(assert (=> b!5226159 (=> (not res!2218734) (not e!3252612))))

(assert (=> b!5226159 (= res!2218734 (is-Concat!23661 (regTwo!30145 (regOne!30144 r!7292))))))

(assert (=> b!5226159 (= e!3252614 e!3252611)))

(declare-fun d!1684878 () Bool)

(declare-fun c!902248 () Bool)

(assert (=> d!1684878 (= c!902248 (and (is-ElementMatch!14816 (regTwo!30145 (regOne!30144 r!7292))) (= (c!902205 (regTwo!30145 (regOne!30144 r!7292))) (h!67073 s!2326))))))

(assert (=> d!1684878 (= (derivationStepZipperDown!264 (regTwo!30145 (regOne!30144 r!7292)) lt!2144293 (h!67073 s!2326)) e!3252615)))

(declare-fun bm!369259 () Bool)

(assert (=> bm!369259 (= call!369267 call!369265)))

(declare-fun bm!369262 () Bool)

(assert (=> bm!369262 (= call!369266 call!369267)))

(declare-fun bm!369263 () Bool)

(assert (=> bm!369263 (= call!369265 (derivationStepZipperDown!264 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))) (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268)) (h!67073 s!2326)))))

(assert (= (and d!1684878 c!902248) b!5226149))

(assert (= (and d!1684878 (not c!902248)) b!5226151))

(assert (= (and b!5226151 c!902247) b!5226152))

(assert (= (and b!5226151 (not c!902247)) b!5226159))

(assert (= (and b!5226159 res!2218734) b!5226158))

(assert (= (and b!5226159 c!902251) b!5226155))

(assert (= (and b!5226159 (not c!902251)) b!5226153))

(assert (= (and b!5226153 c!902249) b!5226154))

(assert (= (and b!5226153 (not c!902249)) b!5226150))

(assert (= (and b!5226150 c!902250) b!5226157))

(assert (= (and b!5226150 (not c!902250)) b!5226156))

(assert (= (or b!5226154 b!5226157) bm!369261))

(assert (= (or b!5226154 b!5226157) bm!369262))

(assert (= (or b!5226155 bm!369261) bm!369260))

(assert (= (or b!5226155 bm!369262) bm!369259))

(assert (= (or b!5226152 bm!369259) bm!369263))

(assert (= (or b!5226152 b!5226155) bm!369258))

(declare-fun m!6272902 () Bool)

(assert (=> b!5226149 m!6272902))

(declare-fun m!6272904 () Bool)

(assert (=> bm!369260 m!6272904))

(declare-fun m!6272906 () Bool)

(assert (=> bm!369258 m!6272906))

(declare-fun m!6272908 () Bool)

(assert (=> b!5226158 m!6272908))

(declare-fun m!6272910 () Bool)

(assert (=> bm!369263 m!6272910))

(assert (=> b!5225948 d!1684878))

(declare-fun b!5226160 () Bool)

(declare-fun e!3252621 () (Set Context!8400))

(assert (=> b!5226160 (= e!3252621 (set.insert lt!2144293 (as set.empty (Set Context!8400))))))

(declare-fun bm!369264 () Bool)

(declare-fun call!369270 () List!60747)

(declare-fun c!902252 () Bool)

(declare-fun call!369269 () (Set Context!8400))

(assert (=> bm!369264 (= call!369269 (derivationStepZipperDown!264 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))) (ite c!902252 lt!2144293 (Context!8401 call!369270)) (h!67073 s!2326)))))

(declare-fun c!902256 () Bool)

(declare-fun c!902254 () Bool)

(declare-fun bm!369266 () Bool)

(assert (=> bm!369266 (= call!369270 ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902256 c!902254) (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (regOne!30145 (regOne!30144 r!7292)))))))

(declare-fun b!5226161 () Bool)

(declare-fun c!902255 () Bool)

(assert (=> b!5226161 (= c!902255 (is-Star!14816 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun e!3252622 () (Set Context!8400))

(declare-fun e!3252619 () (Set Context!8400))

(assert (=> b!5226161 (= e!3252622 e!3252619)))

(declare-fun bm!369267 () Bool)

(declare-fun call!369274 () List!60747)

(assert (=> bm!369267 (= call!369274 call!369270)))

(declare-fun b!5226162 () Bool)

(declare-fun e!3252620 () (Set Context!8400))

(assert (=> b!5226162 (= e!3252621 e!3252620)))

(assert (=> b!5226162 (= c!902252 (is-Union!14816 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226163 () Bool)

(declare-fun call!369271 () (Set Context!8400))

(assert (=> b!5226163 (= e!3252620 (set.union call!369269 call!369271))))

(declare-fun b!5226164 () Bool)

(declare-fun e!3252617 () (Set Context!8400))

(assert (=> b!5226164 (= e!3252617 e!3252622)))

(assert (=> b!5226164 (= c!902254 (is-Concat!23661 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226165 () Bool)

(declare-fun call!369272 () (Set Context!8400))

(assert (=> b!5226165 (= e!3252622 call!369272)))

(declare-fun b!5226166 () Bool)

(declare-fun call!369273 () (Set Context!8400))

(assert (=> b!5226166 (= e!3252617 (set.union call!369269 call!369273))))

(declare-fun b!5226167 () Bool)

(assert (=> b!5226167 (= e!3252619 (as set.empty (Set Context!8400)))))

(declare-fun b!5226168 () Bool)

(assert (=> b!5226168 (= e!3252619 call!369272)))

(declare-fun b!5226169 () Bool)

(declare-fun e!3252618 () Bool)

(assert (=> b!5226169 (= e!3252618 (nullable!4985 (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))))

(declare-fun b!5226170 () Bool)

(assert (=> b!5226170 (= c!902256 e!3252618)))

(declare-fun res!2218735 () Bool)

(assert (=> b!5226170 (=> (not res!2218735) (not e!3252618))))

(assert (=> b!5226170 (= res!2218735 (is-Concat!23661 (regOne!30145 (regOne!30144 r!7292))))))

(assert (=> b!5226170 (= e!3252620 e!3252617)))

(declare-fun d!1684880 () Bool)

(declare-fun c!902253 () Bool)

(assert (=> d!1684880 (= c!902253 (and (is-ElementMatch!14816 (regOne!30145 (regOne!30144 r!7292))) (= (c!902205 (regOne!30145 (regOne!30144 r!7292))) (h!67073 s!2326))))))

(assert (=> d!1684880 (= (derivationStepZipperDown!264 (regOne!30145 (regOne!30144 r!7292)) lt!2144293 (h!67073 s!2326)) e!3252621)))

(declare-fun bm!369265 () Bool)

(assert (=> bm!369265 (= call!369273 call!369271)))

(declare-fun bm!369268 () Bool)

(assert (=> bm!369268 (= call!369272 call!369273)))

(declare-fun bm!369269 () Bool)

(assert (=> bm!369269 (= call!369271 (derivationStepZipperDown!264 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))) (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274)) (h!67073 s!2326)))))

(assert (= (and d!1684880 c!902253) b!5226160))

(assert (= (and d!1684880 (not c!902253)) b!5226162))

(assert (= (and b!5226162 c!902252) b!5226163))

(assert (= (and b!5226162 (not c!902252)) b!5226170))

(assert (= (and b!5226170 res!2218735) b!5226169))

(assert (= (and b!5226170 c!902256) b!5226166))

(assert (= (and b!5226170 (not c!902256)) b!5226164))

(assert (= (and b!5226164 c!902254) b!5226165))

(assert (= (and b!5226164 (not c!902254)) b!5226161))

(assert (= (and b!5226161 c!902255) b!5226168))

(assert (= (and b!5226161 (not c!902255)) b!5226167))

(assert (= (or b!5226165 b!5226168) bm!369267))

(assert (= (or b!5226165 b!5226168) bm!369268))

(assert (= (or b!5226166 bm!369267) bm!369266))

(assert (= (or b!5226166 bm!369268) bm!369265))

(assert (= (or b!5226163 bm!369265) bm!369269))

(assert (= (or b!5226163 b!5226166) bm!369264))

(assert (=> b!5226160 m!6272902))

(declare-fun m!6272912 () Bool)

(assert (=> bm!369266 m!6272912))

(declare-fun m!6272914 () Bool)

(assert (=> bm!369264 m!6272914))

(declare-fun m!6272916 () Bool)

(assert (=> b!5226169 m!6272916))

(declare-fun m!6272918 () Bool)

(assert (=> bm!369269 m!6272918))

(assert (=> b!5225948 d!1684880))

(declare-fun bs!1213459 () Bool)

(declare-fun d!1684882 () Bool)

(assert (= bs!1213459 (and d!1684882 d!1684862)))

(declare-fun lambda!262403 () Int)

(assert (=> bs!1213459 (= lambda!262403 lambda!262400)))

(declare-fun b!5226191 () Bool)

(declare-fun e!3252635 () Bool)

(declare-fun lt!2144406 () Regex!14816)

(declare-fun isUnion!217 (Regex!14816) Bool)

(assert (=> b!5226191 (= e!3252635 (isUnion!217 lt!2144406))))

(declare-fun b!5226192 () Bool)

(declare-fun e!3252638 () Regex!14816)

(declare-fun e!3252639 () Regex!14816)

(assert (=> b!5226192 (= e!3252638 e!3252639)))

(declare-fun c!902267 () Bool)

(assert (=> b!5226192 (= c!902267 (is-Cons!60623 (unfocusZipperList!258 zl!343)))))

(declare-fun b!5226193 () Bool)

(declare-fun e!3252640 () Bool)

(assert (=> b!5226193 (= e!3252640 e!3252635)))

(declare-fun c!902265 () Bool)

(assert (=> b!5226193 (= c!902265 (isEmpty!32547 (tail!10296 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5226195 () Bool)

(assert (=> b!5226195 (= e!3252638 (h!67071 (unfocusZipperList!258 zl!343)))))

(declare-fun b!5226196 () Bool)

(declare-fun e!3252637 () Bool)

(assert (=> b!5226196 (= e!3252637 e!3252640)))

(declare-fun c!902268 () Bool)

(assert (=> b!5226196 (= c!902268 (isEmpty!32547 (unfocusZipperList!258 zl!343)))))

(declare-fun b!5226197 () Bool)

(assert (=> b!5226197 (= e!3252639 (Union!14816 (h!67071 (unfocusZipperList!258 zl!343)) (generalisedUnion!745 (t!373922 (unfocusZipperList!258 zl!343)))))))

(declare-fun b!5226198 () Bool)

(assert (=> b!5226198 (= e!3252639 EmptyLang!14816)))

(assert (=> d!1684882 e!3252637))

(declare-fun res!2218740 () Bool)

(assert (=> d!1684882 (=> (not res!2218740) (not e!3252637))))

(assert (=> d!1684882 (= res!2218740 (validRegex!6552 lt!2144406))))

(assert (=> d!1684882 (= lt!2144406 e!3252638)))

(declare-fun c!902266 () Bool)

(declare-fun e!3252636 () Bool)

(assert (=> d!1684882 (= c!902266 e!3252636)))

(declare-fun res!2218741 () Bool)

(assert (=> d!1684882 (=> (not res!2218741) (not e!3252636))))

(assert (=> d!1684882 (= res!2218741 (is-Cons!60623 (unfocusZipperList!258 zl!343)))))

(assert (=> d!1684882 (forall!14248 (unfocusZipperList!258 zl!343) lambda!262403)))

(assert (=> d!1684882 (= (generalisedUnion!745 (unfocusZipperList!258 zl!343)) lt!2144406)))

(declare-fun b!5226194 () Bool)

(assert (=> b!5226194 (= e!3252635 (= lt!2144406 (head!11199 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5226199 () Bool)

(declare-fun isEmptyLang!785 (Regex!14816) Bool)

(assert (=> b!5226199 (= e!3252640 (isEmptyLang!785 lt!2144406))))

(declare-fun b!5226200 () Bool)

(assert (=> b!5226200 (= e!3252636 (isEmpty!32547 (t!373922 (unfocusZipperList!258 zl!343))))))

(assert (= (and d!1684882 res!2218741) b!5226200))

(assert (= (and d!1684882 c!902266) b!5226195))

(assert (= (and d!1684882 (not c!902266)) b!5226192))

(assert (= (and b!5226192 c!902267) b!5226197))

(assert (= (and b!5226192 (not c!902267)) b!5226198))

(assert (= (and d!1684882 res!2218740) b!5226196))

(assert (= (and b!5226196 c!902268) b!5226199))

(assert (= (and b!5226196 (not c!902268)) b!5226193))

(assert (= (and b!5226193 c!902265) b!5226194))

(assert (= (and b!5226193 (not c!902265)) b!5226191))

(declare-fun m!6272920 () Bool)

(assert (=> d!1684882 m!6272920))

(assert (=> d!1684882 m!6272742))

(declare-fun m!6272922 () Bool)

(assert (=> d!1684882 m!6272922))

(declare-fun m!6272924 () Bool)

(assert (=> b!5226191 m!6272924))

(assert (=> b!5226194 m!6272742))

(declare-fun m!6272926 () Bool)

(assert (=> b!5226194 m!6272926))

(declare-fun m!6272928 () Bool)

(assert (=> b!5226199 m!6272928))

(declare-fun m!6272930 () Bool)

(assert (=> b!5226200 m!6272930))

(declare-fun m!6272932 () Bool)

(assert (=> b!5226197 m!6272932))

(assert (=> b!5226196 m!6272742))

(declare-fun m!6272934 () Bool)

(assert (=> b!5226196 m!6272934))

(assert (=> b!5226193 m!6272742))

(declare-fun m!6272936 () Bool)

(assert (=> b!5226193 m!6272936))

(assert (=> b!5226193 m!6272936))

(declare-fun m!6272938 () Bool)

(assert (=> b!5226193 m!6272938))

(assert (=> b!5225958 d!1684882))

(declare-fun bs!1213460 () Bool)

(declare-fun d!1684884 () Bool)

(assert (= bs!1213460 (and d!1684884 d!1684862)))

(declare-fun lambda!262406 () Int)

(assert (=> bs!1213460 (= lambda!262406 lambda!262400)))

(declare-fun bs!1213461 () Bool)

(assert (= bs!1213461 (and d!1684884 d!1684882)))

(assert (=> bs!1213461 (= lambda!262406 lambda!262403)))

(declare-fun lt!2144409 () List!60747)

(assert (=> d!1684884 (forall!14248 lt!2144409 lambda!262406)))

(declare-fun e!3252643 () List!60747)

(assert (=> d!1684884 (= lt!2144409 e!3252643)))

(declare-fun c!902271 () Bool)

(assert (=> d!1684884 (= c!902271 (is-Cons!60624 zl!343))))

(assert (=> d!1684884 (= (unfocusZipperList!258 zl!343) lt!2144409)))

(declare-fun b!5226205 () Bool)

(assert (=> b!5226205 (= e!3252643 (Cons!60623 (generalisedConcat!485 (exprs!4700 (h!67072 zl!343))) (unfocusZipperList!258 (t!373923 zl!343))))))

(declare-fun b!5226206 () Bool)

(assert (=> b!5226206 (= e!3252643 Nil!60623)))

(assert (= (and d!1684884 c!902271) b!5226205))

(assert (= (and d!1684884 (not c!902271)) b!5226206))

(declare-fun m!6272940 () Bool)

(assert (=> d!1684884 m!6272940))

(assert (=> b!5226205 m!6272672))

(declare-fun m!6272942 () Bool)

(assert (=> b!5226205 m!6272942))

(assert (=> b!5225958 d!1684884))

(declare-fun e!3252644 () Bool)

(declare-fun d!1684886 () Bool)

(assert (=> d!1684886 (= (matchZipper!1060 (set.union lt!2144285 lt!2144287) (t!373924 s!2326)) e!3252644)))

(declare-fun res!2218742 () Bool)

(assert (=> d!1684886 (=> res!2218742 e!3252644)))

(assert (=> d!1684886 (= res!2218742 (matchZipper!1060 lt!2144285 (t!373924 s!2326)))))

(declare-fun lt!2144410 () Unit!152546)

(assert (=> d!1684886 (= lt!2144410 (choose!38865 lt!2144285 lt!2144287 (t!373924 s!2326)))))

(assert (=> d!1684886 (= (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144285 lt!2144287 (t!373924 s!2326)) lt!2144410)))

(declare-fun b!5226207 () Bool)

(assert (=> b!5226207 (= e!3252644 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(assert (= (and d!1684886 (not res!2218742)) b!5226207))

(assert (=> d!1684886 m!6272670))

(assert (=> d!1684886 m!6272664))

(declare-fun m!6272944 () Bool)

(assert (=> d!1684886 m!6272944))

(assert (=> b!5226207 m!6272654))

(assert (=> b!5225939 d!1684886))

(declare-fun d!1684888 () Bool)

(declare-fun c!902272 () Bool)

(assert (=> d!1684888 (= c!902272 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252645 () Bool)

(assert (=> d!1684888 (= (matchZipper!1060 (set.union lt!2144285 lt!2144287) (t!373924 s!2326)) e!3252645)))

(declare-fun b!5226208 () Bool)

(assert (=> b!5226208 (= e!3252645 (nullableZipper!1240 (set.union lt!2144285 lt!2144287)))))

(declare-fun b!5226209 () Bool)

(assert (=> b!5226209 (= e!3252645 (matchZipper!1060 (derivationStepZipper!1084 (set.union lt!2144285 lt!2144287) (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684888 c!902272) b!5226208))

(assert (= (and d!1684888 (not c!902272)) b!5226209))

(assert (=> d!1684888 m!6272868))

(declare-fun m!6272946 () Bool)

(assert (=> b!5226208 m!6272946))

(assert (=> b!5226209 m!6272872))

(assert (=> b!5226209 m!6272872))

(declare-fun m!6272948 () Bool)

(assert (=> b!5226209 m!6272948))

(assert (=> b!5226209 m!6272876))

(assert (=> b!5226209 m!6272948))

(assert (=> b!5226209 m!6272876))

(declare-fun m!6272950 () Bool)

(assert (=> b!5226209 m!6272950))

(assert (=> b!5225939 d!1684888))

(declare-fun d!1684890 () Bool)

(assert (=> d!1684890 (= (isEmpty!32547 (t!373922 (exprs!4700 (h!67072 zl!343)))) (is-Nil!60623 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> b!5225938 d!1684890))

(declare-fun bs!1213462 () Bool)

(declare-fun b!5226246 () Bool)

(assert (= bs!1213462 (and b!5226246 b!5225955)))

(declare-fun lambda!262411 () Int)

(assert (=> bs!1213462 (not (= lambda!262411 lambda!262380))))

(assert (=> bs!1213462 (not (= lambda!262411 lambda!262381))))

(assert (=> b!5226246 true))

(assert (=> b!5226246 true))

(declare-fun bs!1213463 () Bool)

(declare-fun b!5226242 () Bool)

(assert (= bs!1213463 (and b!5226242 b!5225955)))

(declare-fun lambda!262412 () Int)

(assert (=> bs!1213463 (not (= lambda!262412 lambda!262380))))

(assert (=> bs!1213463 (= lambda!262412 lambda!262381)))

(declare-fun bs!1213464 () Bool)

(assert (= bs!1213464 (and b!5226242 b!5226246)))

(assert (=> bs!1213464 (not (= lambda!262412 lambda!262411))))

(assert (=> b!5226242 true))

(assert (=> b!5226242 true))

(declare-fun e!3252670 () Bool)

(declare-fun call!369279 () Bool)

(assert (=> b!5226242 (= e!3252670 call!369279)))

(declare-fun b!5226243 () Bool)

(declare-fun e!3252669 () Bool)

(assert (=> b!5226243 (= e!3252669 (matchRSpec!1919 (regTwo!30145 r!7292) s!2326))))

(declare-fun b!5226244 () Bool)

(declare-fun c!902281 () Bool)

(assert (=> b!5226244 (= c!902281 (is-Union!14816 r!7292))))

(declare-fun e!3252665 () Bool)

(declare-fun e!3252664 () Bool)

(assert (=> b!5226244 (= e!3252665 e!3252664)))

(declare-fun b!5226245 () Bool)

(assert (=> b!5226245 (= e!3252664 e!3252670)))

(declare-fun c!902283 () Bool)

(assert (=> b!5226245 (= c!902283 (is-Star!14816 r!7292))))

(declare-fun bm!369274 () Bool)

(declare-fun call!369280 () Bool)

(assert (=> bm!369274 (= call!369280 (isEmpty!32551 s!2326))))

(declare-fun e!3252666 () Bool)

(assert (=> b!5226246 (= e!3252666 call!369279)))

(declare-fun b!5226247 () Bool)

(declare-fun e!3252668 () Bool)

(assert (=> b!5226247 (= e!3252668 call!369280)))

(declare-fun b!5226248 () Bool)

(assert (=> b!5226248 (= e!3252665 (= s!2326 (Cons!60625 (c!902205 r!7292) Nil!60625)))))

(declare-fun b!5226249 () Bool)

(assert (=> b!5226249 (= e!3252664 e!3252669)))

(declare-fun res!2218761 () Bool)

(assert (=> b!5226249 (= res!2218761 (matchRSpec!1919 (regOne!30145 r!7292) s!2326))))

(assert (=> b!5226249 (=> res!2218761 e!3252669)))

(declare-fun b!5226250 () Bool)

(declare-fun res!2218759 () Bool)

(assert (=> b!5226250 (=> res!2218759 e!3252666)))

(assert (=> b!5226250 (= res!2218759 call!369280)))

(assert (=> b!5226250 (= e!3252670 e!3252666)))

(declare-fun b!5226251 () Bool)

(declare-fun c!902284 () Bool)

(assert (=> b!5226251 (= c!902284 (is-ElementMatch!14816 r!7292))))

(declare-fun e!3252667 () Bool)

(assert (=> b!5226251 (= e!3252667 e!3252665)))

(declare-fun d!1684892 () Bool)

(declare-fun c!902282 () Bool)

(assert (=> d!1684892 (= c!902282 (is-EmptyExpr!14816 r!7292))))

(assert (=> d!1684892 (= (matchRSpec!1919 r!7292 s!2326) e!3252668)))

(declare-fun b!5226252 () Bool)

(assert (=> b!5226252 (= e!3252668 e!3252667)))

(declare-fun res!2218760 () Bool)

(assert (=> b!5226252 (= res!2218760 (not (is-EmptyLang!14816 r!7292)))))

(assert (=> b!5226252 (=> (not res!2218760) (not e!3252667))))

(declare-fun bm!369275 () Bool)

(assert (=> bm!369275 (= call!369279 (Exists!1997 (ite c!902283 lambda!262411 lambda!262412)))))

(assert (= (and d!1684892 c!902282) b!5226247))

(assert (= (and d!1684892 (not c!902282)) b!5226252))

(assert (= (and b!5226252 res!2218760) b!5226251))

(assert (= (and b!5226251 c!902284) b!5226248))

(assert (= (and b!5226251 (not c!902284)) b!5226244))

(assert (= (and b!5226244 c!902281) b!5226249))

(assert (= (and b!5226244 (not c!902281)) b!5226245))

(assert (= (and b!5226249 (not res!2218761)) b!5226243))

(assert (= (and b!5226245 c!902283) b!5226250))

(assert (= (and b!5226245 (not c!902283)) b!5226242))

(assert (= (and b!5226250 (not res!2218759)) b!5226246))

(assert (= (or b!5226246 b!5226242) bm!369275))

(assert (= (or b!5226247 b!5226250) bm!369274))

(declare-fun m!6272952 () Bool)

(assert (=> b!5226243 m!6272952))

(declare-fun m!6272954 () Bool)

(assert (=> bm!369274 m!6272954))

(declare-fun m!6272956 () Bool)

(assert (=> b!5226249 m!6272956))

(declare-fun m!6272958 () Bool)

(assert (=> bm!369275 m!6272958))

(assert (=> b!5225947 d!1684892))

(declare-fun b!5226281 () Bool)

(declare-fun res!2218781 () Bool)

(declare-fun e!3252691 () Bool)

(assert (=> b!5226281 (=> res!2218781 e!3252691)))

(assert (=> b!5226281 (= res!2218781 (not (isEmpty!32551 (tail!10297 s!2326))))))

(declare-fun bm!369278 () Bool)

(declare-fun call!369283 () Bool)

(assert (=> bm!369278 (= call!369283 (isEmpty!32551 s!2326))))

(declare-fun b!5226282 () Bool)

(declare-fun e!3252688 () Bool)

(declare-fun e!3252687 () Bool)

(assert (=> b!5226282 (= e!3252688 e!3252687)))

(declare-fun c!902292 () Bool)

(assert (=> b!5226282 (= c!902292 (is-EmptyLang!14816 r!7292))))

(declare-fun b!5226283 () Bool)

(declare-fun lt!2144413 () Bool)

(assert (=> b!5226283 (= e!3252687 (not lt!2144413))))

(declare-fun b!5226284 () Bool)

(declare-fun e!3252686 () Bool)

(assert (=> b!5226284 (= e!3252686 (= (head!11200 s!2326) (c!902205 r!7292)))))

(declare-fun b!5226285 () Bool)

(declare-fun e!3252689 () Bool)

(declare-fun derivativeStep!4062 (Regex!14816 C!29902) Regex!14816)

(assert (=> b!5226285 (= e!3252689 (matchR!7001 (derivativeStep!4062 r!7292 (head!11200 s!2326)) (tail!10297 s!2326)))))

(declare-fun d!1684894 () Bool)

(assert (=> d!1684894 e!3252688))

(declare-fun c!902291 () Bool)

(assert (=> d!1684894 (= c!902291 (is-EmptyExpr!14816 r!7292))))

(assert (=> d!1684894 (= lt!2144413 e!3252689)))

(declare-fun c!902293 () Bool)

(assert (=> d!1684894 (= c!902293 (isEmpty!32551 s!2326))))

(assert (=> d!1684894 (validRegex!6552 r!7292)))

(assert (=> d!1684894 (= (matchR!7001 r!7292 s!2326) lt!2144413)))

(declare-fun b!5226286 () Bool)

(declare-fun res!2218782 () Bool)

(declare-fun e!3252690 () Bool)

(assert (=> b!5226286 (=> res!2218782 e!3252690)))

(assert (=> b!5226286 (= res!2218782 e!3252686)))

(declare-fun res!2218779 () Bool)

(assert (=> b!5226286 (=> (not res!2218779) (not e!3252686))))

(assert (=> b!5226286 (= res!2218779 lt!2144413)))

(declare-fun b!5226287 () Bool)

(declare-fun res!2218783 () Bool)

(assert (=> b!5226287 (=> (not res!2218783) (not e!3252686))))

(assert (=> b!5226287 (= res!2218783 (not call!369283))))

(declare-fun b!5226288 () Bool)

(declare-fun e!3252685 () Bool)

(assert (=> b!5226288 (= e!3252685 e!3252691)))

(declare-fun res!2218785 () Bool)

(assert (=> b!5226288 (=> res!2218785 e!3252691)))

(assert (=> b!5226288 (= res!2218785 call!369283)))

(declare-fun b!5226289 () Bool)

(declare-fun res!2218784 () Bool)

(assert (=> b!5226289 (=> (not res!2218784) (not e!3252686))))

(assert (=> b!5226289 (= res!2218784 (isEmpty!32551 (tail!10297 s!2326)))))

(declare-fun b!5226290 () Bool)

(assert (=> b!5226290 (= e!3252688 (= lt!2144413 call!369283))))

(declare-fun b!5226291 () Bool)

(declare-fun res!2218780 () Bool)

(assert (=> b!5226291 (=> res!2218780 e!3252690)))

(assert (=> b!5226291 (= res!2218780 (not (is-ElementMatch!14816 r!7292)))))

(assert (=> b!5226291 (= e!3252687 e!3252690)))

(declare-fun b!5226292 () Bool)

(assert (=> b!5226292 (= e!3252690 e!3252685)))

(declare-fun res!2218778 () Bool)

(assert (=> b!5226292 (=> (not res!2218778) (not e!3252685))))

(assert (=> b!5226292 (= res!2218778 (not lt!2144413))))

(declare-fun b!5226293 () Bool)

(assert (=> b!5226293 (= e!3252691 (not (= (head!11200 s!2326) (c!902205 r!7292))))))

(declare-fun b!5226294 () Bool)

(assert (=> b!5226294 (= e!3252689 (nullable!4985 r!7292))))

(assert (= (and d!1684894 c!902293) b!5226294))

(assert (= (and d!1684894 (not c!902293)) b!5226285))

(assert (= (and d!1684894 c!902291) b!5226290))

(assert (= (and d!1684894 (not c!902291)) b!5226282))

(assert (= (and b!5226282 c!902292) b!5226283))

(assert (= (and b!5226282 (not c!902292)) b!5226291))

(assert (= (and b!5226291 (not res!2218780)) b!5226286))

(assert (= (and b!5226286 res!2218779) b!5226287))

(assert (= (and b!5226287 res!2218783) b!5226289))

(assert (= (and b!5226289 res!2218784) b!5226284))

(assert (= (and b!5226286 (not res!2218782)) b!5226292))

(assert (= (and b!5226292 res!2218778) b!5226288))

(assert (= (and b!5226288 (not res!2218785)) b!5226281))

(assert (= (and b!5226281 (not res!2218781)) b!5226293))

(assert (= (or b!5226290 b!5226287 b!5226288) bm!369278))

(declare-fun m!6272960 () Bool)

(assert (=> b!5226294 m!6272960))

(assert (=> bm!369278 m!6272954))

(declare-fun m!6272962 () Bool)

(assert (=> b!5226289 m!6272962))

(assert (=> b!5226289 m!6272962))

(declare-fun m!6272964 () Bool)

(assert (=> b!5226289 m!6272964))

(declare-fun m!6272966 () Bool)

(assert (=> b!5226293 m!6272966))

(assert (=> b!5226284 m!6272966))

(assert (=> b!5226281 m!6272962))

(assert (=> b!5226281 m!6272962))

(assert (=> b!5226281 m!6272964))

(assert (=> d!1684894 m!6272954))

(assert (=> d!1684894 m!6272720))

(assert (=> b!5226285 m!6272966))

(assert (=> b!5226285 m!6272966))

(declare-fun m!6272968 () Bool)

(assert (=> b!5226285 m!6272968))

(assert (=> b!5226285 m!6272962))

(assert (=> b!5226285 m!6272968))

(assert (=> b!5226285 m!6272962))

(declare-fun m!6272970 () Bool)

(assert (=> b!5226285 m!6272970))

(assert (=> b!5225947 d!1684894))

(declare-fun d!1684896 () Bool)

(assert (=> d!1684896 (= (matchR!7001 r!7292 s!2326) (matchRSpec!1919 r!7292 s!2326))))

(declare-fun lt!2144416 () Unit!152546)

(declare-fun choose!38867 (Regex!14816 List!60749) Unit!152546)

(assert (=> d!1684896 (= lt!2144416 (choose!38867 r!7292 s!2326))))

(assert (=> d!1684896 (validRegex!6552 r!7292)))

(assert (=> d!1684896 (= (mainMatchTheorem!1919 r!7292 s!2326) lt!2144416)))

(declare-fun bs!1213465 () Bool)

(assert (= bs!1213465 d!1684896))

(assert (=> bs!1213465 m!6272748))

(assert (=> bs!1213465 m!6272746))

(declare-fun m!6272972 () Bool)

(assert (=> bs!1213465 m!6272972))

(assert (=> bs!1213465 m!6272720))

(assert (=> b!5225947 d!1684896))

(assert (=> b!5225946 d!1684864))

(declare-fun d!1684898 () Bool)

(declare-fun c!902294 () Bool)

(assert (=> d!1684898 (= c!902294 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252692 () Bool)

(assert (=> d!1684898 (= (matchZipper!1060 lt!2144307 (t!373924 s!2326)) e!3252692)))

(declare-fun b!5226295 () Bool)

(assert (=> b!5226295 (= e!3252692 (nullableZipper!1240 lt!2144307))))

(declare-fun b!5226296 () Bool)

(assert (=> b!5226296 (= e!3252692 (matchZipper!1060 (derivationStepZipper!1084 lt!2144307 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684898 c!902294) b!5226295))

(assert (= (and d!1684898 (not c!902294)) b!5226296))

(assert (=> d!1684898 m!6272868))

(declare-fun m!6272974 () Bool)

(assert (=> b!5226295 m!6272974))

(assert (=> b!5226296 m!6272872))

(assert (=> b!5226296 m!6272872))

(declare-fun m!6272976 () Bool)

(assert (=> b!5226296 m!6272976))

(assert (=> b!5226296 m!6272876))

(assert (=> b!5226296 m!6272976))

(assert (=> b!5226296 m!6272876))

(declare-fun m!6272978 () Bool)

(assert (=> b!5226296 m!6272978))

(assert (=> b!5225957 d!1684898))

(assert (=> b!5225956 d!1684898))

(declare-fun bs!1213466 () Bool)

(declare-fun d!1684900 () Bool)

(assert (= bs!1213466 (and d!1684900 d!1684862)))

(declare-fun lambda!262415 () Int)

(assert (=> bs!1213466 (= lambda!262415 lambda!262400)))

(declare-fun bs!1213467 () Bool)

(assert (= bs!1213467 (and d!1684900 d!1684882)))

(assert (=> bs!1213467 (= lambda!262415 lambda!262403)))

(declare-fun bs!1213468 () Bool)

(assert (= bs!1213468 (and d!1684900 d!1684884)))

(assert (=> bs!1213468 (= lambda!262415 lambda!262406)))

(assert (=> d!1684900 (= (inv!80288 (h!67072 zl!343)) (forall!14248 (exprs!4700 (h!67072 zl!343)) lambda!262415))))

(declare-fun bs!1213469 () Bool)

(assert (= bs!1213469 d!1684900))

(declare-fun m!6272980 () Bool)

(assert (=> bs!1213469 m!6272980))

(assert (=> b!5225937 d!1684900))

(declare-fun d!1684902 () Bool)

(declare-fun dynLambda!23956 (Int Context!8400) (Set Context!8400))

(assert (=> d!1684902 (= (flatMap!543 z!1189 lambda!262382) (dynLambda!23956 lambda!262382 (h!67072 zl!343)))))

(declare-fun lt!2144419 () Unit!152546)

(declare-fun choose!38868 ((Set Context!8400) Context!8400 Int) Unit!152546)

(assert (=> d!1684902 (= lt!2144419 (choose!38868 z!1189 (h!67072 zl!343) lambda!262382))))

(assert (=> d!1684902 (= z!1189 (set.insert (h!67072 zl!343) (as set.empty (Set Context!8400))))))

(assert (=> d!1684902 (= (lemmaFlatMapOnSingletonSet!75 z!1189 (h!67072 zl!343) lambda!262382) lt!2144419)))

(declare-fun b_lambda!202073 () Bool)

(assert (=> (not b_lambda!202073) (not d!1684902)))

(declare-fun bs!1213470 () Bool)

(assert (= bs!1213470 d!1684902))

(assert (=> bs!1213470 m!6272678))

(declare-fun m!6272982 () Bool)

(assert (=> bs!1213470 m!6272982))

(declare-fun m!6272984 () Bool)

(assert (=> bs!1213470 m!6272984))

(declare-fun m!6272986 () Bool)

(assert (=> bs!1213470 m!6272986))

(assert (=> b!5225936 d!1684902))

(declare-fun d!1684904 () Bool)

(declare-fun nullableFct!1392 (Regex!14816) Bool)

(assert (=> d!1684904 (= (nullable!4985 (h!67071 (exprs!4700 (h!67072 zl!343)))) (nullableFct!1392 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun bs!1213471 () Bool)

(assert (= bs!1213471 d!1684904))

(declare-fun m!6272988 () Bool)

(assert (=> bs!1213471 m!6272988))

(assert (=> b!5225936 d!1684904))

(declare-fun b!5226307 () Bool)

(declare-fun e!3252699 () Bool)

(assert (=> b!5226307 (= e!3252699 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun b!5226308 () Bool)

(declare-fun e!3252701 () (Set Context!8400))

(assert (=> b!5226308 (= e!3252701 (as set.empty (Set Context!8400)))))

(declare-fun bm!369281 () Bool)

(declare-fun call!369286 () (Set Context!8400))

(assert (=> bm!369281 (= call!369286 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326)))))

(declare-fun e!3252700 () (Set Context!8400))

(declare-fun b!5226309 () Bool)

(assert (=> b!5226309 (= e!3252700 (set.union call!369286 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326))))))

(declare-fun d!1684906 () Bool)

(declare-fun c!902299 () Bool)

(assert (=> d!1684906 (= c!902299 e!3252699)))

(declare-fun res!2218788 () Bool)

(assert (=> d!1684906 (=> (not res!2218788) (not e!3252699))))

(assert (=> d!1684906 (= res!2218788 (is-Cons!60623 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))

(assert (=> d!1684906 (= (derivationStepZipperUp!188 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))) (h!67073 s!2326)) e!3252700)))

(declare-fun b!5226310 () Bool)

(assert (=> b!5226310 (= e!3252700 e!3252701)))

(declare-fun c!902300 () Bool)

(assert (=> b!5226310 (= c!902300 (is-Cons!60623 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))

(declare-fun b!5226311 () Bool)

(assert (=> b!5226311 (= e!3252701 call!369286)))

(assert (= (and d!1684906 res!2218788) b!5226307))

(assert (= (and d!1684906 c!902299) b!5226309))

(assert (= (and d!1684906 (not c!902299)) b!5226310))

(assert (= (and b!5226310 c!902300) b!5226311))

(assert (= (and b!5226310 (not c!902300)) b!5226308))

(assert (= (or b!5226309 b!5226311) bm!369281))

(declare-fun m!6272990 () Bool)

(assert (=> b!5226307 m!6272990))

(declare-fun m!6272992 () Bool)

(assert (=> bm!369281 m!6272992))

(declare-fun m!6272994 () Bool)

(assert (=> b!5226309 m!6272994))

(assert (=> b!5225936 d!1684906))

(declare-fun b!5226312 () Bool)

(declare-fun e!3252702 () Bool)

(assert (=> b!5226312 (= e!3252702 (nullable!4985 (h!67071 (exprs!4700 lt!2144293))))))

(declare-fun b!5226313 () Bool)

(declare-fun e!3252704 () (Set Context!8400))

(assert (=> b!5226313 (= e!3252704 (as set.empty (Set Context!8400)))))

(declare-fun bm!369282 () Bool)

(declare-fun call!369287 () (Set Context!8400))

(assert (=> bm!369282 (= call!369287 (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144293)) (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (h!67073 s!2326)))))

(declare-fun e!3252703 () (Set Context!8400))

(declare-fun b!5226314 () Bool)

(assert (=> b!5226314 (= e!3252703 (set.union call!369287 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (h!67073 s!2326))))))

(declare-fun d!1684908 () Bool)

(declare-fun c!902301 () Bool)

(assert (=> d!1684908 (= c!902301 e!3252702)))

(declare-fun res!2218789 () Bool)

(assert (=> d!1684908 (=> (not res!2218789) (not e!3252702))))

(assert (=> d!1684908 (= res!2218789 (is-Cons!60623 (exprs!4700 lt!2144293)))))

(assert (=> d!1684908 (= (derivationStepZipperUp!188 lt!2144293 (h!67073 s!2326)) e!3252703)))

(declare-fun b!5226315 () Bool)

(assert (=> b!5226315 (= e!3252703 e!3252704)))

(declare-fun c!902302 () Bool)

(assert (=> b!5226315 (= c!902302 (is-Cons!60623 (exprs!4700 lt!2144293)))))

(declare-fun b!5226316 () Bool)

(assert (=> b!5226316 (= e!3252704 call!369287)))

(assert (= (and d!1684908 res!2218789) b!5226312))

(assert (= (and d!1684908 c!902301) b!5226314))

(assert (= (and d!1684908 (not c!902301)) b!5226315))

(assert (= (and b!5226315 c!902302) b!5226316))

(assert (= (and b!5226315 (not c!902302)) b!5226313))

(assert (= (or b!5226314 b!5226316) bm!369282))

(declare-fun m!6272996 () Bool)

(assert (=> b!5226312 m!6272996))

(declare-fun m!6272998 () Bool)

(assert (=> bm!369282 m!6272998))

(declare-fun m!6273000 () Bool)

(assert (=> b!5226314 m!6273000))

(assert (=> b!5225936 d!1684908))

(declare-fun b!5226317 () Bool)

(declare-fun e!3252705 () Bool)

(assert (=> b!5226317 (= e!3252705 (nullable!4985 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226318 () Bool)

(declare-fun e!3252707 () (Set Context!8400))

(assert (=> b!5226318 (= e!3252707 (as set.empty (Set Context!8400)))))

(declare-fun bm!369283 () Bool)

(declare-fun call!369288 () (Set Context!8400))

(assert (=> bm!369283 (= call!369288 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (h!67072 zl!343))) (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326)))))

(declare-fun b!5226319 () Bool)

(declare-fun e!3252706 () (Set Context!8400))

(assert (=> b!5226319 (= e!3252706 (set.union call!369288 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326))))))

(declare-fun d!1684910 () Bool)

(declare-fun c!902303 () Bool)

(assert (=> d!1684910 (= c!902303 e!3252705)))

(declare-fun res!2218790 () Bool)

(assert (=> d!1684910 (=> (not res!2218790) (not e!3252705))))

(assert (=> d!1684910 (= res!2218790 (is-Cons!60623 (exprs!4700 (h!67072 zl!343))))))

(assert (=> d!1684910 (= (derivationStepZipperUp!188 (h!67072 zl!343) (h!67073 s!2326)) e!3252706)))

(declare-fun b!5226320 () Bool)

(assert (=> b!5226320 (= e!3252706 e!3252707)))

(declare-fun c!902304 () Bool)

(assert (=> b!5226320 (= c!902304 (is-Cons!60623 (exprs!4700 (h!67072 zl!343))))))

(declare-fun b!5226321 () Bool)

(assert (=> b!5226321 (= e!3252707 call!369288)))

(assert (= (and d!1684910 res!2218790) b!5226317))

(assert (= (and d!1684910 c!902303) b!5226319))

(assert (= (and d!1684910 (not c!902303)) b!5226320))

(assert (= (and b!5226320 c!902304) b!5226321))

(assert (= (and b!5226320 (not c!902304)) b!5226318))

(assert (= (or b!5226319 b!5226321) bm!369283))

(assert (=> b!5226317 m!6272684))

(declare-fun m!6273002 () Bool)

(assert (=> bm!369283 m!6273002))

(declare-fun m!6273004 () Bool)

(assert (=> b!5226319 m!6273004))

(assert (=> b!5225936 d!1684910))

(declare-fun d!1684912 () Bool)

(declare-fun choose!38869 ((Set Context!8400) Int) (Set Context!8400))

(assert (=> d!1684912 (= (flatMap!543 z!1189 lambda!262382) (choose!38869 z!1189 lambda!262382))))

(declare-fun bs!1213472 () Bool)

(assert (= bs!1213472 d!1684912))

(declare-fun m!6273006 () Bool)

(assert (=> bs!1213472 m!6273006))

(assert (=> b!5225936 d!1684912))

(declare-fun b!5226322 () Bool)

(declare-fun e!3252712 () (Set Context!8400))

(assert (=> b!5226322 (= e!3252712 (set.insert lt!2144293 (as set.empty (Set Context!8400))))))

(declare-fun call!369290 () List!60747)

(declare-fun c!902305 () Bool)

(declare-fun call!369289 () (Set Context!8400))

(declare-fun bm!369284 () Bool)

(assert (=> bm!369284 (= call!369289 (derivationStepZipperDown!264 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))) (ite c!902305 lt!2144293 (Context!8401 call!369290)) (h!67073 s!2326)))))

(declare-fun c!902307 () Bool)

(declare-fun c!902309 () Bool)

(declare-fun bm!369286 () Bool)

(assert (=> bm!369286 (= call!369290 ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902309 c!902307) (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67071 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5226323 () Bool)

(declare-fun c!902308 () Bool)

(assert (=> b!5226323 (= c!902308 (is-Star!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun e!3252713 () (Set Context!8400))

(declare-fun e!3252710 () (Set Context!8400))

(assert (=> b!5226323 (= e!3252713 e!3252710)))

(declare-fun bm!369287 () Bool)

(declare-fun call!369294 () List!60747)

(assert (=> bm!369287 (= call!369294 call!369290)))

(declare-fun b!5226324 () Bool)

(declare-fun e!3252711 () (Set Context!8400))

(assert (=> b!5226324 (= e!3252712 e!3252711)))

(assert (=> b!5226324 (= c!902305 (is-Union!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226325 () Bool)

(declare-fun call!369291 () (Set Context!8400))

(assert (=> b!5226325 (= e!3252711 (set.union call!369289 call!369291))))

(declare-fun b!5226326 () Bool)

(declare-fun e!3252708 () (Set Context!8400))

(assert (=> b!5226326 (= e!3252708 e!3252713)))

(assert (=> b!5226326 (= c!902307 (is-Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226327 () Bool)

(declare-fun call!369292 () (Set Context!8400))

(assert (=> b!5226327 (= e!3252713 call!369292)))

(declare-fun b!5226328 () Bool)

(declare-fun call!369293 () (Set Context!8400))

(assert (=> b!5226328 (= e!3252708 (set.union call!369289 call!369293))))

(declare-fun b!5226329 () Bool)

(assert (=> b!5226329 (= e!3252710 (as set.empty (Set Context!8400)))))

(declare-fun b!5226330 () Bool)

(assert (=> b!5226330 (= e!3252710 call!369292)))

(declare-fun b!5226331 () Bool)

(declare-fun e!3252709 () Bool)

(assert (=> b!5226331 (= e!3252709 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5226332 () Bool)

(assert (=> b!5226332 (= c!902309 e!3252709)))

(declare-fun res!2218791 () Bool)

(assert (=> b!5226332 (=> (not res!2218791) (not e!3252709))))

(assert (=> b!5226332 (= res!2218791 (is-Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> b!5226332 (= e!3252711 e!3252708)))

(declare-fun d!1684914 () Bool)

(declare-fun c!902306 () Bool)

(assert (=> d!1684914 (= c!902306 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))) (= (c!902205 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326))))))

(assert (=> d!1684914 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 (h!67072 zl!343))) lt!2144293 (h!67073 s!2326)) e!3252712)))

(declare-fun bm!369285 () Bool)

(assert (=> bm!369285 (= call!369293 call!369291)))

(declare-fun bm!369288 () Bool)

(assert (=> bm!369288 (= call!369292 call!369293)))

(declare-fun bm!369289 () Bool)

(assert (=> bm!369289 (= call!369291 (derivationStepZipperDown!264 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))) (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294)) (h!67073 s!2326)))))

(assert (= (and d!1684914 c!902306) b!5226322))

(assert (= (and d!1684914 (not c!902306)) b!5226324))

(assert (= (and b!5226324 c!902305) b!5226325))

(assert (= (and b!5226324 (not c!902305)) b!5226332))

(assert (= (and b!5226332 res!2218791) b!5226331))

(assert (= (and b!5226332 c!902309) b!5226328))

(assert (= (and b!5226332 (not c!902309)) b!5226326))

(assert (= (and b!5226326 c!902307) b!5226327))

(assert (= (and b!5226326 (not c!902307)) b!5226323))

(assert (= (and b!5226323 c!902308) b!5226330))

(assert (= (and b!5226323 (not c!902308)) b!5226329))

(assert (= (or b!5226327 b!5226330) bm!369287))

(assert (= (or b!5226327 b!5226330) bm!369288))

(assert (= (or b!5226328 bm!369287) bm!369286))

(assert (= (or b!5226328 bm!369288) bm!369285))

(assert (= (or b!5226325 bm!369285) bm!369289))

(assert (= (or b!5226325 b!5226328) bm!369284))

(assert (=> b!5226322 m!6272902))

(declare-fun m!6273008 () Bool)

(assert (=> bm!369286 m!6273008))

(declare-fun m!6273010 () Bool)

(assert (=> bm!369284 m!6273010))

(declare-fun m!6273012 () Bool)

(assert (=> b!5226331 m!6273012))

(declare-fun m!6273014 () Bool)

(assert (=> bm!369289 m!6273014))

(assert (=> b!5225936 d!1684914))

(declare-fun b!5226351 () Bool)

(declare-fun e!3252724 () Option!14927)

(declare-fun e!3252725 () Option!14927)

(assert (=> b!5226351 (= e!3252724 e!3252725)))

(declare-fun c!902315 () Bool)

(assert (=> b!5226351 (= c!902315 (is-Nil!60625 s!2326))))

(declare-fun b!5226352 () Bool)

(assert (=> b!5226352 (= e!3252724 (Some!14926 (tuple2!64031 Nil!60625 s!2326)))))

(declare-fun b!5226353 () Bool)

(declare-fun res!2218806 () Bool)

(declare-fun e!3252727 () Bool)

(assert (=> b!5226353 (=> (not res!2218806) (not e!3252727))))

(declare-fun lt!2144428 () Option!14927)

(declare-fun get!20834 (Option!14927) tuple2!64030)

(assert (=> b!5226353 (= res!2218806 (matchR!7001 (regOne!30144 r!7292) (_1!35318 (get!20834 lt!2144428))))))

(declare-fun b!5226354 () Bool)

(declare-fun e!3252726 () Bool)

(assert (=> b!5226354 (= e!3252726 (matchR!7001 (regTwo!30144 r!7292) s!2326))))

(declare-fun b!5226355 () Bool)

(declare-fun res!2218805 () Bool)

(assert (=> b!5226355 (=> (not res!2218805) (not e!3252727))))

(assert (=> b!5226355 (= res!2218805 (matchR!7001 (regTwo!30144 r!7292) (_2!35318 (get!20834 lt!2144428))))))

(declare-fun b!5226357 () Bool)

(declare-fun e!3252728 () Bool)

(assert (=> b!5226357 (= e!3252728 (not (isDefined!11630 lt!2144428)))))

(declare-fun d!1684916 () Bool)

(assert (=> d!1684916 e!3252728))

(declare-fun res!2218803 () Bool)

(assert (=> d!1684916 (=> res!2218803 e!3252728)))

(assert (=> d!1684916 (= res!2218803 e!3252727)))

(declare-fun res!2218802 () Bool)

(assert (=> d!1684916 (=> (not res!2218802) (not e!3252727))))

(assert (=> d!1684916 (= res!2218802 (isDefined!11630 lt!2144428))))

(assert (=> d!1684916 (= lt!2144428 e!3252724)))

(declare-fun c!902314 () Bool)

(assert (=> d!1684916 (= c!902314 e!3252726)))

(declare-fun res!2218804 () Bool)

(assert (=> d!1684916 (=> (not res!2218804) (not e!3252726))))

(assert (=> d!1684916 (= res!2218804 (matchR!7001 (regOne!30144 r!7292) Nil!60625))))

(assert (=> d!1684916 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1684916 (= (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326) lt!2144428)))

(declare-fun b!5226356 () Bool)

(declare-fun lt!2144427 () Unit!152546)

(declare-fun lt!2144426 () Unit!152546)

(assert (=> b!5226356 (= lt!2144427 lt!2144426)))

(declare-fun ++!13220 (List!60749 List!60749) List!60749)

(assert (=> b!5226356 (= (++!13220 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1635 (List!60749 C!29902 List!60749 List!60749) Unit!152546)

(assert (=> b!5226356 (= lt!2144426 (lemmaMoveElementToOtherListKeepsConcatEq!1635 Nil!60625 (h!67073 s!2326) (t!373924 s!2326) s!2326))))

(assert (=> b!5226356 (= e!3252725 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326) s!2326))))

(declare-fun b!5226358 () Bool)

(assert (=> b!5226358 (= e!3252725 None!14926)))

(declare-fun b!5226359 () Bool)

(assert (=> b!5226359 (= e!3252727 (= (++!13220 (_1!35318 (get!20834 lt!2144428)) (_2!35318 (get!20834 lt!2144428))) s!2326))))

(assert (= (and d!1684916 res!2218804) b!5226354))

(assert (= (and d!1684916 c!902314) b!5226352))

(assert (= (and d!1684916 (not c!902314)) b!5226351))

(assert (= (and b!5226351 c!902315) b!5226358))

(assert (= (and b!5226351 (not c!902315)) b!5226356))

(assert (= (and d!1684916 res!2218802) b!5226353))

(assert (= (and b!5226353 res!2218806) b!5226355))

(assert (= (and b!5226355 res!2218805) b!5226359))

(assert (= (and d!1684916 (not res!2218803)) b!5226357))

(declare-fun m!6273016 () Bool)

(assert (=> b!5226357 m!6273016))

(declare-fun m!6273018 () Bool)

(assert (=> b!5226359 m!6273018))

(declare-fun m!6273020 () Bool)

(assert (=> b!5226359 m!6273020))

(declare-fun m!6273022 () Bool)

(assert (=> b!5226354 m!6273022))

(assert (=> b!5226355 m!6273018))

(declare-fun m!6273024 () Bool)

(assert (=> b!5226355 m!6273024))

(assert (=> d!1684916 m!6273016))

(declare-fun m!6273026 () Bool)

(assert (=> d!1684916 m!6273026))

(declare-fun m!6273028 () Bool)

(assert (=> d!1684916 m!6273028))

(declare-fun m!6273030 () Bool)

(assert (=> b!5226356 m!6273030))

(assert (=> b!5226356 m!6273030))

(declare-fun m!6273032 () Bool)

(assert (=> b!5226356 m!6273032))

(declare-fun m!6273034 () Bool)

(assert (=> b!5226356 m!6273034))

(assert (=> b!5226356 m!6273030))

(declare-fun m!6273036 () Bool)

(assert (=> b!5226356 m!6273036))

(assert (=> b!5226353 m!6273018))

(declare-fun m!6273038 () Bool)

(assert (=> b!5226353 m!6273038))

(assert (=> b!5225955 d!1684916))

(declare-fun d!1684918 () Bool)

(declare-fun choose!38870 (Int) Bool)

(assert (=> d!1684918 (= (Exists!1997 lambda!262381) (choose!38870 lambda!262381))))

(declare-fun bs!1213473 () Bool)

(assert (= bs!1213473 d!1684918))

(declare-fun m!6273040 () Bool)

(assert (=> bs!1213473 m!6273040))

(assert (=> b!5225955 d!1684918))

(declare-fun d!1684920 () Bool)

(assert (=> d!1684920 (= (Exists!1997 lambda!262380) (choose!38870 lambda!262380))))

(declare-fun bs!1213474 () Bool)

(assert (= bs!1213474 d!1684920))

(declare-fun m!6273042 () Bool)

(assert (=> bs!1213474 m!6273042))

(assert (=> b!5225955 d!1684920))

(declare-fun bs!1213475 () Bool)

(declare-fun d!1684922 () Bool)

(assert (= bs!1213475 (and d!1684922 b!5225955)))

(declare-fun lambda!262418 () Int)

(assert (=> bs!1213475 (= lambda!262418 lambda!262380)))

(assert (=> bs!1213475 (not (= lambda!262418 lambda!262381))))

(declare-fun bs!1213476 () Bool)

(assert (= bs!1213476 (and d!1684922 b!5226246)))

(assert (=> bs!1213476 (not (= lambda!262418 lambda!262411))))

(declare-fun bs!1213477 () Bool)

(assert (= bs!1213477 (and d!1684922 b!5226242)))

(assert (=> bs!1213477 (not (= lambda!262418 lambda!262412))))

(assert (=> d!1684922 true))

(assert (=> d!1684922 true))

(assert (=> d!1684922 true))

(assert (=> d!1684922 (= (isDefined!11630 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326)) (Exists!1997 lambda!262418))))

(declare-fun lt!2144431 () Unit!152546)

(declare-fun choose!38871 (Regex!14816 Regex!14816 List!60749) Unit!152546)

(assert (=> d!1684922 (= lt!2144431 (choose!38871 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326))))

(assert (=> d!1684922 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1684922 (= (lemmaFindConcatSeparationEquivalentToExists!1105 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326) lt!2144431)))

(declare-fun bs!1213478 () Bool)

(assert (= bs!1213478 d!1684922))

(assert (=> bs!1213478 m!6272700))

(assert (=> bs!1213478 m!6272702))

(declare-fun m!6273044 () Bool)

(assert (=> bs!1213478 m!6273044))

(declare-fun m!6273046 () Bool)

(assert (=> bs!1213478 m!6273046))

(assert (=> bs!1213478 m!6272700))

(assert (=> bs!1213478 m!6273028))

(assert (=> b!5225955 d!1684922))

(declare-fun bs!1213479 () Bool)

(declare-fun d!1684924 () Bool)

(assert (= bs!1213479 (and d!1684924 b!5225955)))

(declare-fun lambda!262423 () Int)

(assert (=> bs!1213479 (not (= lambda!262423 lambda!262381))))

(declare-fun bs!1213480 () Bool)

(assert (= bs!1213480 (and d!1684924 d!1684922)))

(assert (=> bs!1213480 (= lambda!262423 lambda!262418)))

(assert (=> bs!1213479 (= lambda!262423 lambda!262380)))

(declare-fun bs!1213481 () Bool)

(assert (= bs!1213481 (and d!1684924 b!5226242)))

(assert (=> bs!1213481 (not (= lambda!262423 lambda!262412))))

(declare-fun bs!1213482 () Bool)

(assert (= bs!1213482 (and d!1684924 b!5226246)))

(assert (=> bs!1213482 (not (= lambda!262423 lambda!262411))))

(assert (=> d!1684924 true))

(assert (=> d!1684924 true))

(assert (=> d!1684924 true))

(declare-fun lambda!262424 () Int)

(assert (=> bs!1213479 (= lambda!262424 lambda!262381)))

(assert (=> bs!1213480 (not (= lambda!262424 lambda!262418))))

(assert (=> bs!1213479 (not (= lambda!262424 lambda!262380))))

(assert (=> bs!1213481 (= lambda!262424 lambda!262412)))

(declare-fun bs!1213483 () Bool)

(assert (= bs!1213483 d!1684924))

(assert (=> bs!1213483 (not (= lambda!262424 lambda!262423))))

(assert (=> bs!1213482 (not (= lambda!262424 lambda!262411))))

(assert (=> d!1684924 true))

(assert (=> d!1684924 true))

(assert (=> d!1684924 true))

(assert (=> d!1684924 (= (Exists!1997 lambda!262423) (Exists!1997 lambda!262424))))

(declare-fun lt!2144434 () Unit!152546)

(declare-fun choose!38872 (Regex!14816 Regex!14816 List!60749) Unit!152546)

(assert (=> d!1684924 (= lt!2144434 (choose!38872 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326))))

(assert (=> d!1684924 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1684924 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!651 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326) lt!2144434)))

(declare-fun m!6273048 () Bool)

(assert (=> bs!1213483 m!6273048))

(declare-fun m!6273050 () Bool)

(assert (=> bs!1213483 m!6273050))

(declare-fun m!6273052 () Bool)

(assert (=> bs!1213483 m!6273052))

(assert (=> bs!1213483 m!6273028))

(assert (=> b!5225955 d!1684924))

(declare-fun d!1684926 () Bool)

(declare-fun isEmpty!32552 (Option!14927) Bool)

(assert (=> d!1684926 (= (isDefined!11630 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326)) (not (isEmpty!32552 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326))))))

(declare-fun bs!1213484 () Bool)

(assert (= bs!1213484 d!1684926))

(assert (=> bs!1213484 m!6272700))

(declare-fun m!6273054 () Bool)

(assert (=> bs!1213484 m!6273054))

(assert (=> b!5225955 d!1684926))

(declare-fun b!5226390 () Bool)

(declare-fun e!3252754 () Bool)

(declare-fun call!369301 () Bool)

(assert (=> b!5226390 (= e!3252754 call!369301)))

(declare-fun b!5226391 () Bool)

(declare-fun e!3252752 () Bool)

(assert (=> b!5226391 (= e!3252752 call!369301)))

(declare-fun bm!369296 () Bool)

(declare-fun c!902320 () Bool)

(declare-fun call!369303 () Bool)

(declare-fun c!902321 () Bool)

(assert (=> bm!369296 (= call!369303 (validRegex!6552 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun bm!369297 () Bool)

(assert (=> bm!369297 (= call!369301 call!369303)))

(declare-fun b!5226392 () Bool)

(declare-fun e!3252750 () Bool)

(assert (=> b!5226392 (= e!3252750 call!369303)))

(declare-fun b!5226394 () Bool)

(declare-fun res!2218832 () Bool)

(declare-fun e!3252753 () Bool)

(assert (=> b!5226394 (=> res!2218832 e!3252753)))

(assert (=> b!5226394 (= res!2218832 (not (is-Concat!23661 (regTwo!30145 (regOne!30144 r!7292)))))))

(declare-fun e!3252749 () Bool)

(assert (=> b!5226394 (= e!3252749 e!3252753)))

(declare-fun b!5226395 () Bool)

(assert (=> b!5226395 (= e!3252753 e!3252754)))

(declare-fun res!2218829 () Bool)

(assert (=> b!5226395 (=> (not res!2218829) (not e!3252754))))

(declare-fun call!369302 () Bool)

(assert (=> b!5226395 (= res!2218829 call!369302)))

(declare-fun b!5226396 () Bool)

(declare-fun res!2218831 () Bool)

(assert (=> b!5226396 (=> (not res!2218831) (not e!3252752))))

(assert (=> b!5226396 (= res!2218831 call!369302)))

(assert (=> b!5226396 (= e!3252749 e!3252752)))

(declare-fun bm!369298 () Bool)

(assert (=> bm!369298 (= call!369302 (validRegex!6552 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun d!1684928 () Bool)

(declare-fun res!2218833 () Bool)

(declare-fun e!3252755 () Bool)

(assert (=> d!1684928 (=> res!2218833 e!3252755)))

(assert (=> d!1684928 (= res!2218833 (is-ElementMatch!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(assert (=> d!1684928 (= (validRegex!6552 (regTwo!30145 (regOne!30144 r!7292))) e!3252755)))

(declare-fun b!5226393 () Bool)

(declare-fun e!3252751 () Bool)

(assert (=> b!5226393 (= e!3252751 e!3252749)))

(assert (=> b!5226393 (= c!902321 (is-Union!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226397 () Bool)

(assert (=> b!5226397 (= e!3252755 e!3252751)))

(assert (=> b!5226397 (= c!902320 (is-Star!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun b!5226398 () Bool)

(assert (=> b!5226398 (= e!3252751 e!3252750)))

(declare-fun res!2218830 () Bool)

(assert (=> b!5226398 (= res!2218830 (not (nullable!4985 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))))

(assert (=> b!5226398 (=> (not res!2218830) (not e!3252750))))

(assert (= (and d!1684928 (not res!2218833)) b!5226397))

(assert (= (and b!5226397 c!902320) b!5226398))

(assert (= (and b!5226397 (not c!902320)) b!5226393))

(assert (= (and b!5226398 res!2218830) b!5226392))

(assert (= (and b!5226393 c!902321) b!5226396))

(assert (= (and b!5226393 (not c!902321)) b!5226394))

(assert (= (and b!5226396 res!2218831) b!5226391))

(assert (= (and b!5226394 (not res!2218832)) b!5226395))

(assert (= (and b!5226395 res!2218829) b!5226390))

(assert (= (or b!5226391 b!5226390) bm!369297))

(assert (= (or b!5226396 b!5226395) bm!369298))

(assert (= (or b!5226392 bm!369297) bm!369296))

(declare-fun m!6273056 () Bool)

(assert (=> bm!369296 m!6273056))

(declare-fun m!6273058 () Bool)

(assert (=> bm!369298 m!6273058))

(declare-fun m!6273060 () Bool)

(assert (=> b!5226398 m!6273060))

(assert (=> b!5225934 d!1684928))

(declare-fun bs!1213485 () Bool)

(declare-fun d!1684930 () Bool)

(assert (= bs!1213485 (and d!1684930 d!1684862)))

(declare-fun lambda!262425 () Int)

(assert (=> bs!1213485 (= lambda!262425 lambda!262400)))

(declare-fun bs!1213486 () Bool)

(assert (= bs!1213486 (and d!1684930 d!1684882)))

(assert (=> bs!1213486 (= lambda!262425 lambda!262403)))

(declare-fun bs!1213487 () Bool)

(assert (= bs!1213487 (and d!1684930 d!1684884)))

(assert (=> bs!1213487 (= lambda!262425 lambda!262406)))

(declare-fun bs!1213488 () Bool)

(assert (= bs!1213488 (and d!1684930 d!1684900)))

(assert (=> bs!1213488 (= lambda!262425 lambda!262415)))

(assert (=> d!1684930 (= (inv!80288 setElem!33262) (forall!14248 (exprs!4700 setElem!33262) lambda!262425))))

(declare-fun bs!1213489 () Bool)

(assert (= bs!1213489 d!1684930))

(declare-fun m!6273062 () Bool)

(assert (=> bs!1213489 m!6273062))

(assert (=> setNonEmpty!33262 d!1684930))

(assert (=> b!5225943 d!1684868))

(declare-fun d!1684932 () Bool)

(declare-fun c!902322 () Bool)

(assert (=> d!1684932 (= c!902322 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252756 () Bool)

(assert (=> d!1684932 (= (matchZipper!1060 lt!2144292 (t!373924 s!2326)) e!3252756)))

(declare-fun b!5226399 () Bool)

(assert (=> b!5226399 (= e!3252756 (nullableZipper!1240 lt!2144292))))

(declare-fun b!5226400 () Bool)

(assert (=> b!5226400 (= e!3252756 (matchZipper!1060 (derivationStepZipper!1084 lt!2144292 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684932 c!902322) b!5226399))

(assert (= (and d!1684932 (not c!902322)) b!5226400))

(assert (=> d!1684932 m!6272868))

(declare-fun m!6273064 () Bool)

(assert (=> b!5226399 m!6273064))

(assert (=> b!5226400 m!6272872))

(assert (=> b!5226400 m!6272872))

(declare-fun m!6273066 () Bool)

(assert (=> b!5226400 m!6273066))

(assert (=> b!5226400 m!6272876))

(assert (=> b!5226400 m!6273066))

(assert (=> b!5226400 m!6272876))

(declare-fun m!6273068 () Bool)

(assert (=> b!5226400 m!6273068))

(assert (=> b!5225943 d!1684932))

(declare-fun d!1684934 () Bool)

(declare-fun c!902323 () Bool)

(assert (=> d!1684934 (= c!902323 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3252757 () Bool)

(assert (=> d!1684934 (= (matchZipper!1060 lt!2144285 (t!373924 s!2326)) e!3252757)))

(declare-fun b!5226401 () Bool)

(assert (=> b!5226401 (= e!3252757 (nullableZipper!1240 lt!2144285))))

(declare-fun b!5226402 () Bool)

(assert (=> b!5226402 (= e!3252757 (matchZipper!1060 (derivationStepZipper!1084 lt!2144285 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1684934 c!902323) b!5226401))

(assert (= (and d!1684934 (not c!902323)) b!5226402))

(assert (=> d!1684934 m!6272868))

(declare-fun m!6273070 () Bool)

(assert (=> b!5226401 m!6273070))

(assert (=> b!5226402 m!6272872))

(assert (=> b!5226402 m!6272872))

(declare-fun m!6273072 () Bool)

(assert (=> b!5226402 m!6273072))

(assert (=> b!5226402 m!6272876))

(assert (=> b!5226402 m!6273072))

(assert (=> b!5226402 m!6272876))

(declare-fun m!6273074 () Bool)

(assert (=> b!5226402 m!6273074))

(assert (=> b!5225943 d!1684934))

(declare-fun d!1684936 () Bool)

(declare-fun e!3252758 () Bool)

(assert (=> d!1684936 (= (matchZipper!1060 (set.union lt!2144285 lt!2144307) (t!373924 s!2326)) e!3252758)))

(declare-fun res!2218834 () Bool)

(assert (=> d!1684936 (=> res!2218834 e!3252758)))

(assert (=> d!1684936 (= res!2218834 (matchZipper!1060 lt!2144285 (t!373924 s!2326)))))

(declare-fun lt!2144435 () Unit!152546)

(assert (=> d!1684936 (= lt!2144435 (choose!38865 lt!2144285 lt!2144307 (t!373924 s!2326)))))

(assert (=> d!1684936 (= (lemmaZipperConcatMatchesSameAsBothZippers!53 lt!2144285 lt!2144307 (t!373924 s!2326)) lt!2144435)))

(declare-fun b!5226403 () Bool)

(assert (=> b!5226403 (= e!3252758 (matchZipper!1060 lt!2144307 (t!373924 s!2326)))))

(assert (= (and d!1684936 (not res!2218834)) b!5226403))

(declare-fun m!6273076 () Bool)

(assert (=> d!1684936 m!6273076))

(assert (=> d!1684936 m!6272664))

(declare-fun m!6273078 () Bool)

(assert (=> d!1684936 m!6273078))

(assert (=> b!5226403 m!6272656))

(assert (=> b!5225943 d!1684936))

(declare-fun b!5226404 () Bool)

(declare-fun e!3252764 () Bool)

(declare-fun call!369304 () Bool)

(assert (=> b!5226404 (= e!3252764 call!369304)))

(declare-fun b!5226405 () Bool)

(declare-fun e!3252762 () Bool)

(assert (=> b!5226405 (= e!3252762 call!369304)))

(declare-fun c!902325 () Bool)

(declare-fun bm!369299 () Bool)

(declare-fun call!369306 () Bool)

(declare-fun c!902324 () Bool)

(assert (=> bm!369299 (= call!369306 (validRegex!6552 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))

(declare-fun bm!369300 () Bool)

(assert (=> bm!369300 (= call!369304 call!369306)))

(declare-fun b!5226406 () Bool)

(declare-fun e!3252760 () Bool)

(assert (=> b!5226406 (= e!3252760 call!369306)))

(declare-fun b!5226408 () Bool)

(declare-fun res!2218838 () Bool)

(declare-fun e!3252763 () Bool)

(assert (=> b!5226408 (=> res!2218838 e!3252763)))

(assert (=> b!5226408 (= res!2218838 (not (is-Concat!23661 r!7292)))))

(declare-fun e!3252759 () Bool)

(assert (=> b!5226408 (= e!3252759 e!3252763)))

(declare-fun b!5226409 () Bool)

(assert (=> b!5226409 (= e!3252763 e!3252764)))

(declare-fun res!2218835 () Bool)

(assert (=> b!5226409 (=> (not res!2218835) (not e!3252764))))

(declare-fun call!369305 () Bool)

(assert (=> b!5226409 (= res!2218835 call!369305)))

(declare-fun b!5226410 () Bool)

(declare-fun res!2218837 () Bool)

(assert (=> b!5226410 (=> (not res!2218837) (not e!3252762))))

(assert (=> b!5226410 (= res!2218837 call!369305)))

(assert (=> b!5226410 (= e!3252759 e!3252762)))

(declare-fun bm!369301 () Bool)

(assert (=> bm!369301 (= call!369305 (validRegex!6552 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))

(declare-fun d!1684938 () Bool)

(declare-fun res!2218839 () Bool)

(declare-fun e!3252765 () Bool)

(assert (=> d!1684938 (=> res!2218839 e!3252765)))

(assert (=> d!1684938 (= res!2218839 (is-ElementMatch!14816 r!7292))))

(assert (=> d!1684938 (= (validRegex!6552 r!7292) e!3252765)))

(declare-fun b!5226407 () Bool)

(declare-fun e!3252761 () Bool)

(assert (=> b!5226407 (= e!3252761 e!3252759)))

(assert (=> b!5226407 (= c!902325 (is-Union!14816 r!7292))))

(declare-fun b!5226411 () Bool)

(assert (=> b!5226411 (= e!3252765 e!3252761)))

(assert (=> b!5226411 (= c!902324 (is-Star!14816 r!7292))))

(declare-fun b!5226412 () Bool)

(assert (=> b!5226412 (= e!3252761 e!3252760)))

(declare-fun res!2218836 () Bool)

(assert (=> b!5226412 (= res!2218836 (not (nullable!4985 (reg!15145 r!7292))))))

(assert (=> b!5226412 (=> (not res!2218836) (not e!3252760))))

(assert (= (and d!1684938 (not res!2218839)) b!5226411))

(assert (= (and b!5226411 c!902324) b!5226412))

(assert (= (and b!5226411 (not c!902324)) b!5226407))

(assert (= (and b!5226412 res!2218836) b!5226406))

(assert (= (and b!5226407 c!902325) b!5226410))

(assert (= (and b!5226407 (not c!902325)) b!5226408))

(assert (= (and b!5226410 res!2218837) b!5226405))

(assert (= (and b!5226408 (not res!2218838)) b!5226409))

(assert (= (and b!5226409 res!2218835) b!5226404))

(assert (= (or b!5226405 b!5226404) bm!369300))

(assert (= (or b!5226410 b!5226409) bm!369301))

(assert (= (or b!5226406 bm!369300) bm!369299))

(declare-fun m!6273080 () Bool)

(assert (=> bm!369299 m!6273080))

(declare-fun m!6273082 () Bool)

(assert (=> bm!369301 m!6273082))

(declare-fun m!6273084 () Bool)

(assert (=> b!5226412 m!6273084))

(assert (=> start!552686 d!1684938))

(declare-fun d!1684940 () Bool)

(assert (=> d!1684940 (= (nullable!4985 (regTwo!30145 (regOne!30144 r!7292))) (nullableFct!1392 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun bs!1213490 () Bool)

(assert (= bs!1213490 d!1684940))

(declare-fun m!6273086 () Bool)

(assert (=> bs!1213490 m!6273086))

(assert (=> b!5225963 d!1684940))

(declare-fun d!1684942 () Bool)

(assert (=> d!1684942 (= (flatMap!543 lt!2144301 lambda!262382) (choose!38869 lt!2144301 lambda!262382))))

(declare-fun bs!1213491 () Bool)

(assert (= bs!1213491 d!1684942))

(declare-fun m!6273088 () Bool)

(assert (=> bs!1213491 m!6273088))

(assert (=> b!5225963 d!1684942))

(declare-fun d!1684944 () Bool)

(assert (=> d!1684944 (= (flatMap!543 lt!2144296 lambda!262382) (dynLambda!23956 lambda!262382 lt!2144297))))

(declare-fun lt!2144436 () Unit!152546)

(assert (=> d!1684944 (= lt!2144436 (choose!38868 lt!2144296 lt!2144297 lambda!262382))))

(assert (=> d!1684944 (= lt!2144296 (set.insert lt!2144297 (as set.empty (Set Context!8400))))))

(assert (=> d!1684944 (= (lemmaFlatMapOnSingletonSet!75 lt!2144296 lt!2144297 lambda!262382) lt!2144436)))

(declare-fun b_lambda!202075 () Bool)

(assert (=> (not b_lambda!202075) (not d!1684944)))

(declare-fun bs!1213492 () Bool)

(assert (= bs!1213492 d!1684944))

(assert (=> bs!1213492 m!6272732))

(declare-fun m!6273090 () Bool)

(assert (=> bs!1213492 m!6273090))

(declare-fun m!6273092 () Bool)

(assert (=> bs!1213492 m!6273092))

(assert (=> bs!1213492 m!6272730))

(assert (=> b!5225963 d!1684944))

(declare-fun d!1684946 () Bool)

(assert (=> d!1684946 (= (flatMap!543 lt!2144301 lambda!262382) (dynLambda!23956 lambda!262382 lt!2144289))))

(declare-fun lt!2144437 () Unit!152546)

(assert (=> d!1684946 (= lt!2144437 (choose!38868 lt!2144301 lt!2144289 lambda!262382))))

(assert (=> d!1684946 (= lt!2144301 (set.insert lt!2144289 (as set.empty (Set Context!8400))))))

(assert (=> d!1684946 (= (lemmaFlatMapOnSingletonSet!75 lt!2144301 lt!2144289 lambda!262382) lt!2144437)))

(declare-fun b_lambda!202077 () Bool)

(assert (=> (not b_lambda!202077) (not d!1684946)))

(declare-fun bs!1213493 () Bool)

(assert (= bs!1213493 d!1684946))

(assert (=> bs!1213493 m!6272736))

(declare-fun m!6273094 () Bool)

(assert (=> bs!1213493 m!6273094))

(declare-fun m!6273096 () Bool)

(assert (=> bs!1213493 m!6273096))

(assert (=> bs!1213493 m!6272722))

(assert (=> b!5225963 d!1684946))

(declare-fun d!1684948 () Bool)

(assert (=> d!1684948 (= (flatMap!543 lt!2144296 lambda!262382) (choose!38869 lt!2144296 lambda!262382))))

(declare-fun bs!1213494 () Bool)

(assert (= bs!1213494 d!1684948))

(declare-fun m!6273098 () Bool)

(assert (=> bs!1213494 m!6273098))

(assert (=> b!5225963 d!1684948))

(declare-fun d!1684950 () Bool)

(assert (=> d!1684950 (= (nullable!4985 (regOne!30145 (regOne!30144 r!7292))) (nullableFct!1392 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun bs!1213495 () Bool)

(assert (= bs!1213495 d!1684950))

(declare-fun m!6273100 () Bool)

(assert (=> bs!1213495 m!6273100))

(assert (=> b!5225963 d!1684950))

(declare-fun b!5226413 () Bool)

(declare-fun e!3252766 () Bool)

(assert (=> b!5226413 (= e!3252766 (nullable!4985 (h!67071 (exprs!4700 lt!2144297))))))

(declare-fun b!5226414 () Bool)

(declare-fun e!3252768 () (Set Context!8400))

(assert (=> b!5226414 (= e!3252768 (as set.empty (Set Context!8400)))))

(declare-fun bm!369302 () Bool)

(declare-fun call!369307 () (Set Context!8400))

(assert (=> bm!369302 (= call!369307 (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144297)) (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (h!67073 s!2326)))))

(declare-fun b!5226415 () Bool)

(declare-fun e!3252767 () (Set Context!8400))

(assert (=> b!5226415 (= e!3252767 (set.union call!369307 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (h!67073 s!2326))))))

(declare-fun d!1684952 () Bool)

(declare-fun c!902326 () Bool)

(assert (=> d!1684952 (= c!902326 e!3252766)))

(declare-fun res!2218840 () Bool)

(assert (=> d!1684952 (=> (not res!2218840) (not e!3252766))))

(assert (=> d!1684952 (= res!2218840 (is-Cons!60623 (exprs!4700 lt!2144297)))))

(assert (=> d!1684952 (= (derivationStepZipperUp!188 lt!2144297 (h!67073 s!2326)) e!3252767)))

(declare-fun b!5226416 () Bool)

(assert (=> b!5226416 (= e!3252767 e!3252768)))

(declare-fun c!902327 () Bool)

(assert (=> b!5226416 (= c!902327 (is-Cons!60623 (exprs!4700 lt!2144297)))))

(declare-fun b!5226417 () Bool)

(assert (=> b!5226417 (= e!3252768 call!369307)))

(assert (= (and d!1684952 res!2218840) b!5226413))

(assert (= (and d!1684952 c!902326) b!5226415))

(assert (= (and d!1684952 (not c!902326)) b!5226416))

(assert (= (and b!5226416 c!902327) b!5226417))

(assert (= (and b!5226416 (not c!902327)) b!5226414))

(assert (= (or b!5226415 b!5226417) bm!369302))

(declare-fun m!6273102 () Bool)

(assert (=> b!5226413 m!6273102))

(declare-fun m!6273104 () Bool)

(assert (=> bm!369302 m!6273104))

(declare-fun m!6273106 () Bool)

(assert (=> b!5226415 m!6273106))

(assert (=> b!5225963 d!1684952))

(declare-fun b!5226418 () Bool)

(declare-fun e!3252769 () Bool)

(assert (=> b!5226418 (= e!3252769 (nullable!4985 (h!67071 (exprs!4700 lt!2144289))))))

(declare-fun b!5226419 () Bool)

(declare-fun e!3252771 () (Set Context!8400))

(assert (=> b!5226419 (= e!3252771 (as set.empty (Set Context!8400)))))

(declare-fun bm!369303 () Bool)

(declare-fun call!369308 () (Set Context!8400))

(assert (=> bm!369303 (= call!369308 (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144289)) (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (h!67073 s!2326)))))

(declare-fun e!3252770 () (Set Context!8400))

(declare-fun b!5226420 () Bool)

(assert (=> b!5226420 (= e!3252770 (set.union call!369308 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (h!67073 s!2326))))))

(declare-fun d!1684954 () Bool)

(declare-fun c!902328 () Bool)

(assert (=> d!1684954 (= c!902328 e!3252769)))

(declare-fun res!2218841 () Bool)

(assert (=> d!1684954 (=> (not res!2218841) (not e!3252769))))

(assert (=> d!1684954 (= res!2218841 (is-Cons!60623 (exprs!4700 lt!2144289)))))

(assert (=> d!1684954 (= (derivationStepZipperUp!188 lt!2144289 (h!67073 s!2326)) e!3252770)))

(declare-fun b!5226421 () Bool)

(assert (=> b!5226421 (= e!3252770 e!3252771)))

(declare-fun c!902329 () Bool)

(assert (=> b!5226421 (= c!902329 (is-Cons!60623 (exprs!4700 lt!2144289)))))

(declare-fun b!5226422 () Bool)

(assert (=> b!5226422 (= e!3252771 call!369308)))

(assert (= (and d!1684954 res!2218841) b!5226418))

(assert (= (and d!1684954 c!902328) b!5226420))

(assert (= (and d!1684954 (not c!902328)) b!5226421))

(assert (= (and b!5226421 c!902329) b!5226422))

(assert (= (and b!5226421 (not c!902329)) b!5226419))

(assert (= (or b!5226420 b!5226422) bm!369303))

(declare-fun m!6273108 () Bool)

(assert (=> b!5226418 m!6273108))

(declare-fun m!6273110 () Bool)

(assert (=> bm!369303 m!6273110))

(declare-fun m!6273112 () Bool)

(assert (=> b!5226420 m!6273112))

(assert (=> b!5225963 d!1684954))

(declare-fun e!3252774 () Bool)

(assert (=> b!5225942 (= tp!1464773 e!3252774)))

(declare-fun b!5226434 () Bool)

(declare-fun tp!1464826 () Bool)

(declare-fun tp!1464824 () Bool)

(assert (=> b!5226434 (= e!3252774 (and tp!1464826 tp!1464824))))

(declare-fun b!5226435 () Bool)

(declare-fun tp!1464823 () Bool)

(assert (=> b!5226435 (= e!3252774 tp!1464823)))

(declare-fun b!5226433 () Bool)

(assert (=> b!5226433 (= e!3252774 tp_is_empty!38885)))

(declare-fun b!5226436 () Bool)

(declare-fun tp!1464825 () Bool)

(declare-fun tp!1464822 () Bool)

(assert (=> b!5226436 (= e!3252774 (and tp!1464825 tp!1464822))))

(assert (= (and b!5225942 (is-ElementMatch!14816 (regOne!30145 r!7292))) b!5226433))

(assert (= (and b!5225942 (is-Concat!23661 (regOne!30145 r!7292))) b!5226434))

(assert (= (and b!5225942 (is-Star!14816 (regOne!30145 r!7292))) b!5226435))

(assert (= (and b!5225942 (is-Union!14816 (regOne!30145 r!7292))) b!5226436))

(declare-fun e!3252775 () Bool)

(assert (=> b!5225942 (= tp!1464781 e!3252775)))

(declare-fun b!5226438 () Bool)

(declare-fun tp!1464831 () Bool)

(declare-fun tp!1464829 () Bool)

(assert (=> b!5226438 (= e!3252775 (and tp!1464831 tp!1464829))))

(declare-fun b!5226439 () Bool)

(declare-fun tp!1464828 () Bool)

(assert (=> b!5226439 (= e!3252775 tp!1464828)))

(declare-fun b!5226437 () Bool)

(assert (=> b!5226437 (= e!3252775 tp_is_empty!38885)))

(declare-fun b!5226440 () Bool)

(declare-fun tp!1464830 () Bool)

(declare-fun tp!1464827 () Bool)

(assert (=> b!5226440 (= e!3252775 (and tp!1464830 tp!1464827))))

(assert (= (and b!5225942 (is-ElementMatch!14816 (regTwo!30145 r!7292))) b!5226437))

(assert (= (and b!5225942 (is-Concat!23661 (regTwo!30145 r!7292))) b!5226438))

(assert (= (and b!5225942 (is-Star!14816 (regTwo!30145 r!7292))) b!5226439))

(assert (= (and b!5225942 (is-Union!14816 (regTwo!30145 r!7292))) b!5226440))

(declare-fun b!5226448 () Bool)

(declare-fun e!3252781 () Bool)

(declare-fun tp!1464836 () Bool)

(assert (=> b!5226448 (= e!3252781 tp!1464836)))

(declare-fun b!5226447 () Bool)

(declare-fun tp!1464837 () Bool)

(declare-fun e!3252780 () Bool)

(assert (=> b!5226447 (= e!3252780 (and (inv!80288 (h!67072 (t!373923 zl!343))) e!3252781 tp!1464837))))

(assert (=> b!5225937 (= tp!1464779 e!3252780)))

(assert (= b!5226447 b!5226448))

(assert (= (and b!5225937 (is-Cons!60624 (t!373923 zl!343))) b!5226447))

(declare-fun m!6273114 () Bool)

(assert (=> b!5226447 m!6273114))

(declare-fun e!3252782 () Bool)

(assert (=> b!5225944 (= tp!1464775 e!3252782)))

(declare-fun b!5226450 () Bool)

(declare-fun tp!1464842 () Bool)

(declare-fun tp!1464840 () Bool)

(assert (=> b!5226450 (= e!3252782 (and tp!1464842 tp!1464840))))

(declare-fun b!5226451 () Bool)

(declare-fun tp!1464839 () Bool)

(assert (=> b!5226451 (= e!3252782 tp!1464839)))

(declare-fun b!5226449 () Bool)

(assert (=> b!5226449 (= e!3252782 tp_is_empty!38885)))

(declare-fun b!5226452 () Bool)

(declare-fun tp!1464841 () Bool)

(declare-fun tp!1464838 () Bool)

(assert (=> b!5226452 (= e!3252782 (and tp!1464841 tp!1464838))))

(assert (= (and b!5225944 (is-ElementMatch!14816 (reg!15145 r!7292))) b!5226449))

(assert (= (and b!5225944 (is-Concat!23661 (reg!15145 r!7292))) b!5226450))

(assert (= (and b!5225944 (is-Star!14816 (reg!15145 r!7292))) b!5226451))

(assert (= (and b!5225944 (is-Union!14816 (reg!15145 r!7292))) b!5226452))

(declare-fun b!5226457 () Bool)

(declare-fun e!3252785 () Bool)

(declare-fun tp!1464847 () Bool)

(declare-fun tp!1464848 () Bool)

(assert (=> b!5226457 (= e!3252785 (and tp!1464847 tp!1464848))))

(assert (=> b!5225960 (= tp!1464777 e!3252785)))

(assert (= (and b!5225960 (is-Cons!60623 (exprs!4700 (h!67072 zl!343)))) b!5226457))

(declare-fun b!5226458 () Bool)

(declare-fun e!3252786 () Bool)

(declare-fun tp!1464849 () Bool)

(declare-fun tp!1464850 () Bool)

(assert (=> b!5226458 (= e!3252786 (and tp!1464849 tp!1464850))))

(assert (=> b!5225954 (= tp!1464778 e!3252786)))

(assert (= (and b!5225954 (is-Cons!60623 (exprs!4700 setElem!33262))) b!5226458))

(declare-fun condSetEmpty!33268 () Bool)

(assert (=> setNonEmpty!33262 (= condSetEmpty!33268 (= setRest!33262 (as set.empty (Set Context!8400))))))

(declare-fun setRes!33268 () Bool)

(assert (=> setNonEmpty!33262 (= tp!1464772 setRes!33268)))

(declare-fun setIsEmpty!33268 () Bool)

(assert (=> setIsEmpty!33268 setRes!33268))

(declare-fun setElem!33268 () Context!8400)

(declare-fun e!3252789 () Bool)

(declare-fun setNonEmpty!33268 () Bool)

(declare-fun tp!1464855 () Bool)

(assert (=> setNonEmpty!33268 (= setRes!33268 (and tp!1464855 (inv!80288 setElem!33268) e!3252789))))

(declare-fun setRest!33268 () (Set Context!8400))

(assert (=> setNonEmpty!33268 (= setRest!33262 (set.union (set.insert setElem!33268 (as set.empty (Set Context!8400))) setRest!33268))))

(declare-fun b!5226463 () Bool)

(declare-fun tp!1464856 () Bool)

(assert (=> b!5226463 (= e!3252789 tp!1464856)))

(assert (= (and setNonEmpty!33262 condSetEmpty!33268) setIsEmpty!33268))

(assert (= (and setNonEmpty!33262 (not condSetEmpty!33268)) setNonEmpty!33268))

(assert (= setNonEmpty!33268 b!5226463))

(declare-fun m!6273116 () Bool)

(assert (=> setNonEmpty!33268 m!6273116))

(declare-fun b!5226468 () Bool)

(declare-fun e!3252792 () Bool)

(declare-fun tp!1464859 () Bool)

(assert (=> b!5226468 (= e!3252792 (and tp_is_empty!38885 tp!1464859))))

(assert (=> b!5225959 (= tp!1464774 e!3252792)))

(assert (= (and b!5225959 (is-Cons!60625 (t!373924 s!2326))) b!5226468))

(declare-fun e!3252793 () Bool)

(assert (=> b!5225933 (= tp!1464780 e!3252793)))

(declare-fun b!5226470 () Bool)

(declare-fun tp!1464864 () Bool)

(declare-fun tp!1464862 () Bool)

(assert (=> b!5226470 (= e!3252793 (and tp!1464864 tp!1464862))))

(declare-fun b!5226471 () Bool)

(declare-fun tp!1464861 () Bool)

(assert (=> b!5226471 (= e!3252793 tp!1464861)))

(declare-fun b!5226469 () Bool)

(assert (=> b!5226469 (= e!3252793 tp_is_empty!38885)))

(declare-fun b!5226472 () Bool)

(declare-fun tp!1464863 () Bool)

(declare-fun tp!1464860 () Bool)

(assert (=> b!5226472 (= e!3252793 (and tp!1464863 tp!1464860))))

(assert (= (and b!5225933 (is-ElementMatch!14816 (regOne!30144 r!7292))) b!5226469))

(assert (= (and b!5225933 (is-Concat!23661 (regOne!30144 r!7292))) b!5226470))

(assert (= (and b!5225933 (is-Star!14816 (regOne!30144 r!7292))) b!5226471))

(assert (= (and b!5225933 (is-Union!14816 (regOne!30144 r!7292))) b!5226472))

(declare-fun e!3252794 () Bool)

(assert (=> b!5225933 (= tp!1464776 e!3252794)))

(declare-fun b!5226474 () Bool)

(declare-fun tp!1464869 () Bool)

(declare-fun tp!1464867 () Bool)

(assert (=> b!5226474 (= e!3252794 (and tp!1464869 tp!1464867))))

(declare-fun b!5226475 () Bool)

(declare-fun tp!1464866 () Bool)

(assert (=> b!5226475 (= e!3252794 tp!1464866)))

(declare-fun b!5226473 () Bool)

(assert (=> b!5226473 (= e!3252794 tp_is_empty!38885)))

(declare-fun b!5226476 () Bool)

(declare-fun tp!1464868 () Bool)

(declare-fun tp!1464865 () Bool)

(assert (=> b!5226476 (= e!3252794 (and tp!1464868 tp!1464865))))

(assert (= (and b!5225933 (is-ElementMatch!14816 (regTwo!30144 r!7292))) b!5226473))

(assert (= (and b!5225933 (is-Concat!23661 (regTwo!30144 r!7292))) b!5226474))

(assert (= (and b!5225933 (is-Star!14816 (regTwo!30144 r!7292))) b!5226475))

(assert (= (and b!5225933 (is-Union!14816 (regTwo!30144 r!7292))) b!5226476))

(declare-fun b_lambda!202079 () Bool)

(assert (= b_lambda!202075 (or b!5225936 b_lambda!202079)))

(declare-fun bs!1213496 () Bool)

(declare-fun d!1684956 () Bool)

(assert (= bs!1213496 (and d!1684956 b!5225936)))

(assert (=> bs!1213496 (= (dynLambda!23956 lambda!262382 lt!2144297) (derivationStepZipperUp!188 lt!2144297 (h!67073 s!2326)))))

(assert (=> bs!1213496 m!6272740))

(assert (=> d!1684944 d!1684956))

(declare-fun b_lambda!202081 () Bool)

(assert (= b_lambda!202073 (or b!5225936 b_lambda!202081)))

(declare-fun bs!1213497 () Bool)

(declare-fun d!1684958 () Bool)

(assert (= bs!1213497 (and d!1684958 b!5225936)))

(assert (=> bs!1213497 (= (dynLambda!23956 lambda!262382 (h!67072 zl!343)) (derivationStepZipperUp!188 (h!67072 zl!343) (h!67073 s!2326)))))

(assert (=> bs!1213497 m!6272676))

(assert (=> d!1684902 d!1684958))

(declare-fun b_lambda!202083 () Bool)

(assert (= b_lambda!202077 (or b!5225936 b_lambda!202083)))

(declare-fun bs!1213498 () Bool)

(declare-fun d!1684960 () Bool)

(assert (= bs!1213498 (and d!1684960 b!5225936)))

(assert (=> bs!1213498 (= (dynLambda!23956 lambda!262382 lt!2144289) (derivationStepZipperUp!188 lt!2144289 (h!67073 s!2326)))))

(assert (=> bs!1213498 m!6272734))

(assert (=> d!1684946 d!1684960))

(push 1)

(assert (not b!5226436))

(assert (not b!5226312))

(assert (not d!1684918))

(assert (not d!1684884))

(assert (not b!5226353))

(assert (not b!5226475))

(assert (not b!5226194))

(assert (not b!5226420))

(assert (not b!5226289))

(assert (not d!1684946))

(assert (not b!5226472))

(assert (not bm!369281))

(assert (not b!5226119))

(assert (not b!5226398))

(assert (not d!1684870))

(assert (not b!5226399))

(assert (not b_lambda!202083))

(assert (not b!5226284))

(assert (not setNonEmpty!33268))

(assert (not b!5226295))

(assert (not b!5226208))

(assert (not d!1684904))

(assert (not d!1684948))

(assert (not b!5226281))

(assert (not d!1684888))

(assert (not b!5226309))

(assert (not b!5226448))

(assert (not bm!369301))

(assert (not bm!369296))

(assert (not b!5226200))

(assert (not b!5226403))

(assert (not bm!369269))

(assert (not b!5226463))

(assert (not b!5226439))

(assert (not d!1684886))

(assert (not d!1684940))

(assert (not b!5226243))

(assert (not d!1684902))

(assert (not b!5226474))

(assert (not d!1684944))

(assert (not b!5226440))

(assert (not b!5226359))

(assert (not bs!1213496))

(assert (not b!5226104))

(assert (not b!5226110))

(assert (not bm!369258))

(assert (not b!5226296))

(assert (not bm!369264))

(assert (not d!1684862))

(assert (not b!5226357))

(assert (not b!5226158))

(assert (not b!5226401))

(assert (not b!5226452))

(assert (not d!1684864))

(assert (not b!5226196))

(assert (not b!5226447))

(assert (not b!5226107))

(assert (not b!5226470))

(assert (not d!1684932))

(assert (not d!1684942))

(assert (not b!5226402))

(assert tp_is_empty!38885)

(assert (not b!5226121))

(assert (not b!5226115))

(assert (not b!5226197))

(assert (not bm!369284))

(assert (not b!5226101))

(assert (not b!5226314))

(assert (not d!1684934))

(assert (not b!5226249))

(assert (not b!5226109))

(assert (not b!5226354))

(assert (not b!5226438))

(assert (not d!1684896))

(assert (not bm!369263))

(assert (not b!5226471))

(assert (not d!1684930))

(assert (not b!5226120))

(assert (not b!5226413))

(assert (not bm!369266))

(assert (not d!1684916))

(assert (not b!5226415))

(assert (not b!5226451))

(assert (not b!5226457))

(assert (not b!5226307))

(assert (not b!5226122))

(assert (not bm!369286))

(assert (not d!1684882))

(assert (not d!1684922))

(assert (not d!1684894))

(assert (not d!1684912))

(assert (not b!5226356))

(assert (not b!5226435))

(assert (not b!5226191))

(assert (not d!1684926))

(assert (not b!5226108))

(assert (not b!5226205))

(assert (not bm!369282))

(assert (not b!5226331))

(assert (not bs!1213497))

(assert (not bm!369303))

(assert (not b!5226207))

(assert (not bm!369275))

(assert (not d!1684868))

(assert (not b!5226123))

(assert (not bs!1213498))

(assert (not bm!369274))

(assert (not d!1684874))

(assert (not bm!369302))

(assert (not d!1684900))

(assert (not bm!369299))

(assert (not d!1684872))

(assert (not b!5226319))

(assert (not b!5226193))

(assert (not b!5226468))

(assert (not d!1684866))

(assert (not b!5226317))

(assert (not b_lambda!202079))

(assert (not b!5226293))

(assert (not b!5226126))

(assert (not b!5226285))

(assert (not b!5226355))

(assert (not d!1684950))

(assert (not bm!369289))

(assert (not b!5226434))

(assert (not b!5226209))

(assert (not b!5226116))

(assert (not bm!369283))

(assert (not d!1684920))

(assert (not b!5226418))

(assert (not b!5226169))

(assert (not bm!369298))

(assert (not b_lambda!202081))

(assert (not b!5226294))

(assert (not b!5226103))

(assert (not b!5226450))

(assert (not b!5226199))

(assert (not d!1684924))

(assert (not b!5226412))

(assert (not d!1684898))

(assert (not d!1684936))

(assert (not b!5226458))

(assert (not b!5226476))

(assert (not b!5226400))

(assert (not bm!369278))

(assert (not bm!369260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1685062 () Bool)

(assert (=> d!1685062 (= (nullable!4985 (h!67071 (exprs!4700 lt!2144293))) (nullableFct!1392 (h!67071 (exprs!4700 lt!2144293))))))

(declare-fun bs!1213540 () Bool)

(assert (= bs!1213540 d!1685062))

(declare-fun m!6273386 () Bool)

(assert (=> bs!1213540 m!6273386))

(assert (=> b!5226312 d!1685062))

(declare-fun d!1685064 () Bool)

(assert (=> d!1685064 (= (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (nullableFct!1392 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun bs!1213541 () Bool)

(assert (= bs!1213541 d!1685064))

(declare-fun m!6273388 () Bool)

(assert (=> bs!1213541 m!6273388))

(assert (=> b!5226307 d!1685064))

(declare-fun b!5226873 () Bool)

(declare-fun e!3253024 () (Set Context!8400))

(assert (=> b!5226873 (= e!3253024 (set.insert (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274)) (as set.empty (Set Context!8400))))))

(declare-fun call!369367 () (Set Context!8400))

(declare-fun bm!369362 () Bool)

(declare-fun c!902440 () Bool)

(declare-fun call!369368 () List!60747)

(assert (=> bm!369362 (= call!369367 (derivationStepZipperDown!264 (ite c!902440 (regOne!30145 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (regOne!30144 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))))) (ite c!902440 (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274)) (Context!8401 call!369368)) (h!67073 s!2326)))))

(declare-fun c!902442 () Bool)

(declare-fun c!902444 () Bool)

(declare-fun bm!369364 () Bool)

(assert (=> bm!369364 (= call!369368 ($colon$colon!1290 (exprs!4700 (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274))) (ite (or c!902444 c!902442) (regTwo!30144 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))))))))

(declare-fun b!5226874 () Bool)

(declare-fun c!902443 () Bool)

(assert (=> b!5226874 (= c!902443 (is-Star!14816 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))))))

(declare-fun e!3253025 () (Set Context!8400))

(declare-fun e!3253022 () (Set Context!8400))

(assert (=> b!5226874 (= e!3253025 e!3253022)))

(declare-fun bm!369365 () Bool)

(declare-fun call!369372 () List!60747)

(assert (=> bm!369365 (= call!369372 call!369368)))

(declare-fun b!5226875 () Bool)

(declare-fun e!3253023 () (Set Context!8400))

(assert (=> b!5226875 (= e!3253024 e!3253023)))

(assert (=> b!5226875 (= c!902440 (is-Union!14816 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))))))

(declare-fun b!5226876 () Bool)

(declare-fun call!369369 () (Set Context!8400))

(assert (=> b!5226876 (= e!3253023 (set.union call!369367 call!369369))))

(declare-fun b!5226877 () Bool)

(declare-fun e!3253020 () (Set Context!8400))

(assert (=> b!5226877 (= e!3253020 e!3253025)))

(assert (=> b!5226877 (= c!902442 (is-Concat!23661 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))))))

(declare-fun b!5226878 () Bool)

(declare-fun call!369370 () (Set Context!8400))

(assert (=> b!5226878 (= e!3253025 call!369370)))

(declare-fun b!5226879 () Bool)

(declare-fun call!369371 () (Set Context!8400))

(assert (=> b!5226879 (= e!3253020 (set.union call!369367 call!369371))))

(declare-fun b!5226880 () Bool)

(assert (=> b!5226880 (= e!3253022 (as set.empty (Set Context!8400)))))

(declare-fun b!5226881 () Bool)

(assert (=> b!5226881 (= e!3253022 call!369370)))

(declare-fun b!5226882 () Bool)

(declare-fun e!3253021 () Bool)

(assert (=> b!5226882 (= e!3253021 (nullable!4985 (regOne!30144 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))))))))

(declare-fun b!5226883 () Bool)

(assert (=> b!5226883 (= c!902444 e!3253021)))

(declare-fun res!2218964 () Bool)

(assert (=> b!5226883 (=> (not res!2218964) (not e!3253021))))

(assert (=> b!5226883 (= res!2218964 (is-Concat!23661 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))))))

(assert (=> b!5226883 (= e!3253023 e!3253020)))

(declare-fun c!902441 () Bool)

(declare-fun d!1685066 () Bool)

(assert (=> d!1685066 (= c!902441 (and (is-ElementMatch!14816 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (= (c!902205 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (h!67073 s!2326))))))

(assert (=> d!1685066 (= (derivationStepZipperDown!264 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))) (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274)) (h!67073 s!2326)) e!3253024)))

(declare-fun bm!369363 () Bool)

(assert (=> bm!369363 (= call!369371 call!369369)))

(declare-fun bm!369366 () Bool)

(assert (=> bm!369366 (= call!369370 call!369371)))

(declare-fun bm!369367 () Bool)

(assert (=> bm!369367 (= call!369369 (derivationStepZipperDown!264 (ite c!902440 (regTwo!30145 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (ite c!902444 (regTwo!30144 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (ite c!902442 (regOne!30144 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292))))))) (reg!15145 (ite c!902252 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (ite c!902256 (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (ite c!902254 (regOne!30144 (regOne!30145 (regOne!30144 r!7292))) (reg!15145 (regOne!30145 (regOne!30144 r!7292)))))))))) (ite (or c!902440 c!902444) (ite (or c!902252 c!902256) lt!2144293 (Context!8401 call!369274)) (Context!8401 call!369372)) (h!67073 s!2326)))))

(assert (= (and d!1685066 c!902441) b!5226873))

(assert (= (and d!1685066 (not c!902441)) b!5226875))

(assert (= (and b!5226875 c!902440) b!5226876))

(assert (= (and b!5226875 (not c!902440)) b!5226883))

(assert (= (and b!5226883 res!2218964) b!5226882))

(assert (= (and b!5226883 c!902444) b!5226879))

(assert (= (and b!5226883 (not c!902444)) b!5226877))

(assert (= (and b!5226877 c!902442) b!5226878))

(assert (= (and b!5226877 (not c!902442)) b!5226874))

(assert (= (and b!5226874 c!902443) b!5226881))

(assert (= (and b!5226874 (not c!902443)) b!5226880))

(assert (= (or b!5226878 b!5226881) bm!369365))

(assert (= (or b!5226878 b!5226881) bm!369366))

(assert (= (or b!5226879 bm!369365) bm!369364))

(assert (= (or b!5226879 bm!369366) bm!369363))

(assert (= (or b!5226876 bm!369363) bm!369367))

(assert (= (or b!5226876 b!5226879) bm!369362))

(declare-fun m!6273390 () Bool)

(assert (=> b!5226873 m!6273390))

(declare-fun m!6273392 () Bool)

(assert (=> bm!369364 m!6273392))

(declare-fun m!6273394 () Bool)

(assert (=> bm!369362 m!6273394))

(declare-fun m!6273396 () Bool)

(assert (=> b!5226882 m!6273396))

(declare-fun m!6273398 () Bool)

(assert (=> bm!369367 m!6273398))

(assert (=> bm!369269 d!1685066))

(declare-fun d!1685068 () Bool)

(declare-fun lambda!262456 () Int)

(declare-fun exists!1975 ((Set Context!8400) Int) Bool)

(assert (=> d!1685068 (= (nullableZipper!1240 lt!2144287) (exists!1975 lt!2144287 lambda!262456))))

(declare-fun bs!1213542 () Bool)

(assert (= bs!1213542 d!1685068))

(declare-fun m!6273400 () Bool)

(assert (=> bs!1213542 m!6273400))

(assert (=> b!5226115 d!1685068))

(declare-fun d!1685070 () Bool)

(assert (=> d!1685070 (= ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902309 c!902307) (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67071 (exprs!4700 (h!67072 zl!343))))) (Cons!60623 (ite (or c!902309 c!902307) (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67071 (exprs!4700 (h!67072 zl!343)))) (exprs!4700 lt!2144293)))))

(assert (=> bm!369286 d!1685070))

(assert (=> b!5226317 d!1684904))

(declare-fun d!1685072 () Bool)

(assert (=> d!1685072 (= (isEmpty!32551 s!2326) (is-Nil!60625 s!2326))))

(assert (=> d!1684894 d!1685072))

(assert (=> d!1684894 d!1684938))

(assert (=> d!1684946 d!1684942))

(declare-fun d!1685074 () Bool)

(assert (=> d!1685074 (= (flatMap!543 lt!2144301 lambda!262382) (dynLambda!23956 lambda!262382 lt!2144289))))

(assert (=> d!1685074 true))

(declare-fun _$13!1743 () Unit!152546)

(assert (=> d!1685074 (= (choose!38868 lt!2144301 lt!2144289 lambda!262382) _$13!1743)))

(declare-fun b_lambda!202097 () Bool)

(assert (=> (not b_lambda!202097) (not d!1685074)))

(declare-fun bs!1213543 () Bool)

(assert (= bs!1213543 d!1685074))

(assert (=> bs!1213543 m!6272736))

(assert (=> bs!1213543 m!6273094))

(assert (=> d!1684946 d!1685074))

(declare-fun b!5226898 () Bool)

(declare-fun e!3253038 () Bool)

(declare-fun e!3253040 () Bool)

(assert (=> b!5226898 (= e!3253038 e!3253040)))

(declare-fun res!2218979 () Bool)

(assert (=> b!5226898 (=> (not res!2218979) (not e!3253040))))

(assert (=> b!5226898 (= res!2218979 (and (not (is-EmptyLang!14816 (h!67071 (exprs!4700 (h!67072 zl!343))))) (not (is-ElementMatch!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5226899 () Bool)

(declare-fun e!3253041 () Bool)

(declare-fun call!369378 () Bool)

(assert (=> b!5226899 (= e!3253041 call!369378)))

(declare-fun b!5226900 () Bool)

(declare-fun e!3253039 () Bool)

(assert (=> b!5226900 (= e!3253040 e!3253039)))

(declare-fun res!2218977 () Bool)

(assert (=> b!5226900 (=> res!2218977 e!3253039)))

(assert (=> b!5226900 (= res!2218977 (is-Star!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun bm!369372 () Bool)

(declare-fun call!369377 () Bool)

(declare-fun c!902449 () Bool)

(assert (=> bm!369372 (= call!369377 (nullable!4985 (ite c!902449 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5226901 () Bool)

(declare-fun e!3253042 () Bool)

(assert (=> b!5226901 (= e!3253042 call!369378)))

(declare-fun b!5226902 () Bool)

(declare-fun e!3253043 () Bool)

(assert (=> b!5226902 (= e!3253043 e!3253041)))

(declare-fun res!2218976 () Bool)

(assert (=> b!5226902 (= res!2218976 call!369377)))

(assert (=> b!5226902 (=> (not res!2218976) (not e!3253041))))

(declare-fun d!1685076 () Bool)

(declare-fun res!2218975 () Bool)

(assert (=> d!1685076 (=> res!2218975 e!3253038)))

(assert (=> d!1685076 (= res!2218975 (is-EmptyExpr!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> d!1685076 (= (nullableFct!1392 (h!67071 (exprs!4700 (h!67072 zl!343)))) e!3253038)))

(declare-fun b!5226903 () Bool)

(assert (=> b!5226903 (= e!3253043 e!3253042)))

(declare-fun res!2218978 () Bool)

(assert (=> b!5226903 (= res!2218978 call!369377)))

(assert (=> b!5226903 (=> res!2218978 e!3253042)))

(declare-fun bm!369373 () Bool)

(assert (=> bm!369373 (= call!369378 (nullable!4985 (ite c!902449 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5226904 () Bool)

(assert (=> b!5226904 (= e!3253039 e!3253043)))

(assert (=> b!5226904 (= c!902449 (is-Union!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(assert (= (and d!1685076 (not res!2218975)) b!5226898))

(assert (= (and b!5226898 res!2218979) b!5226900))

(assert (= (and b!5226900 (not res!2218977)) b!5226904))

(assert (= (and b!5226904 c!902449) b!5226903))

(assert (= (and b!5226904 (not c!902449)) b!5226902))

(assert (= (and b!5226903 (not res!2218978)) b!5226901))

(assert (= (and b!5226902 res!2218976) b!5226899))

(assert (= (or b!5226901 b!5226899) bm!369373))

(assert (= (or b!5226903 b!5226902) bm!369372))

(declare-fun m!6273402 () Bool)

(assert (=> bm!369372 m!6273402))

(declare-fun m!6273404 () Bool)

(assert (=> bm!369373 m!6273404))

(assert (=> d!1684904 d!1685076))

(assert (=> b!5226403 d!1684898))

(declare-fun d!1685078 () Bool)

(assert (=> d!1685078 (= (head!11199 (unfocusZipperList!258 zl!343)) (h!67071 (unfocusZipperList!258 zl!343)))))

(assert (=> b!5226194 d!1685078))

(declare-fun d!1685080 () Bool)

(assert (=> d!1685080 (= (nullable!4985 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))) (nullableFct!1392 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))

(declare-fun bs!1213544 () Bool)

(assert (= bs!1213544 d!1685080))

(declare-fun m!6273406 () Bool)

(assert (=> bs!1213544 m!6273406))

(assert (=> b!5226158 d!1685080))

(declare-fun b!5226905 () Bool)

(declare-fun res!2218983 () Bool)

(declare-fun e!3253050 () Bool)

(assert (=> b!5226905 (=> res!2218983 e!3253050)))

(assert (=> b!5226905 (= res!2218983 (not (isEmpty!32551 (tail!10297 s!2326))))))

(declare-fun bm!369374 () Bool)

(declare-fun call!369379 () Bool)

(assert (=> bm!369374 (= call!369379 (isEmpty!32551 s!2326))))

(declare-fun b!5226906 () Bool)

(declare-fun e!3253047 () Bool)

(declare-fun e!3253046 () Bool)

(assert (=> b!5226906 (= e!3253047 e!3253046)))

(declare-fun c!902451 () Bool)

(assert (=> b!5226906 (= c!902451 (is-EmptyLang!14816 (regTwo!30144 r!7292)))))

(declare-fun b!5226907 () Bool)

(declare-fun lt!2144484 () Bool)

(assert (=> b!5226907 (= e!3253046 (not lt!2144484))))

(declare-fun b!5226908 () Bool)

(declare-fun e!3253045 () Bool)

(assert (=> b!5226908 (= e!3253045 (= (head!11200 s!2326) (c!902205 (regTwo!30144 r!7292))))))

(declare-fun b!5226909 () Bool)

(declare-fun e!3253048 () Bool)

(assert (=> b!5226909 (= e!3253048 (matchR!7001 (derivativeStep!4062 (regTwo!30144 r!7292) (head!11200 s!2326)) (tail!10297 s!2326)))))

(declare-fun d!1685082 () Bool)

(assert (=> d!1685082 e!3253047))

(declare-fun c!902450 () Bool)

(assert (=> d!1685082 (= c!902450 (is-EmptyExpr!14816 (regTwo!30144 r!7292)))))

(assert (=> d!1685082 (= lt!2144484 e!3253048)))

(declare-fun c!902452 () Bool)

(assert (=> d!1685082 (= c!902452 (isEmpty!32551 s!2326))))

(assert (=> d!1685082 (validRegex!6552 (regTwo!30144 r!7292))))

(assert (=> d!1685082 (= (matchR!7001 (regTwo!30144 r!7292) s!2326) lt!2144484)))

(declare-fun b!5226910 () Bool)

(declare-fun res!2218984 () Bool)

(declare-fun e!3253049 () Bool)

(assert (=> b!5226910 (=> res!2218984 e!3253049)))

(assert (=> b!5226910 (= res!2218984 e!3253045)))

(declare-fun res!2218981 () Bool)

(assert (=> b!5226910 (=> (not res!2218981) (not e!3253045))))

(assert (=> b!5226910 (= res!2218981 lt!2144484)))

(declare-fun b!5226911 () Bool)

(declare-fun res!2218985 () Bool)

(assert (=> b!5226911 (=> (not res!2218985) (not e!3253045))))

(assert (=> b!5226911 (= res!2218985 (not call!369379))))

(declare-fun b!5226912 () Bool)

(declare-fun e!3253044 () Bool)

(assert (=> b!5226912 (= e!3253044 e!3253050)))

(declare-fun res!2218987 () Bool)

(assert (=> b!5226912 (=> res!2218987 e!3253050)))

(assert (=> b!5226912 (= res!2218987 call!369379)))

(declare-fun b!5226913 () Bool)

(declare-fun res!2218986 () Bool)

(assert (=> b!5226913 (=> (not res!2218986) (not e!3253045))))

(assert (=> b!5226913 (= res!2218986 (isEmpty!32551 (tail!10297 s!2326)))))

(declare-fun b!5226914 () Bool)

(assert (=> b!5226914 (= e!3253047 (= lt!2144484 call!369379))))

(declare-fun b!5226915 () Bool)

(declare-fun res!2218982 () Bool)

(assert (=> b!5226915 (=> res!2218982 e!3253049)))

(assert (=> b!5226915 (= res!2218982 (not (is-ElementMatch!14816 (regTwo!30144 r!7292))))))

(assert (=> b!5226915 (= e!3253046 e!3253049)))

(declare-fun b!5226916 () Bool)

(assert (=> b!5226916 (= e!3253049 e!3253044)))

(declare-fun res!2218980 () Bool)

(assert (=> b!5226916 (=> (not res!2218980) (not e!3253044))))

(assert (=> b!5226916 (= res!2218980 (not lt!2144484))))

(declare-fun b!5226917 () Bool)

(assert (=> b!5226917 (= e!3253050 (not (= (head!11200 s!2326) (c!902205 (regTwo!30144 r!7292)))))))

(declare-fun b!5226918 () Bool)

(assert (=> b!5226918 (= e!3253048 (nullable!4985 (regTwo!30144 r!7292)))))

(assert (= (and d!1685082 c!902452) b!5226918))

(assert (= (and d!1685082 (not c!902452)) b!5226909))

(assert (= (and d!1685082 c!902450) b!5226914))

(assert (= (and d!1685082 (not c!902450)) b!5226906))

(assert (= (and b!5226906 c!902451) b!5226907))

(assert (= (and b!5226906 (not c!902451)) b!5226915))

(assert (= (and b!5226915 (not res!2218982)) b!5226910))

(assert (= (and b!5226910 res!2218981) b!5226911))

(assert (= (and b!5226911 res!2218985) b!5226913))

(assert (= (and b!5226913 res!2218986) b!5226908))

(assert (= (and b!5226910 (not res!2218984)) b!5226916))

(assert (= (and b!5226916 res!2218980) b!5226912))

(assert (= (and b!5226912 (not res!2218987)) b!5226905))

(assert (= (and b!5226905 (not res!2218983)) b!5226917))

(assert (= (or b!5226914 b!5226911 b!5226912) bm!369374))

(declare-fun m!6273408 () Bool)

(assert (=> b!5226918 m!6273408))

(assert (=> bm!369374 m!6272954))

(assert (=> b!5226913 m!6272962))

(assert (=> b!5226913 m!6272962))

(assert (=> b!5226913 m!6272964))

(assert (=> b!5226917 m!6272966))

(assert (=> b!5226908 m!6272966))

(assert (=> b!5226905 m!6272962))

(assert (=> b!5226905 m!6272962))

(assert (=> b!5226905 m!6272964))

(assert (=> d!1685082 m!6272954))

(declare-fun m!6273410 () Bool)

(assert (=> d!1685082 m!6273410))

(assert (=> b!5226909 m!6272966))

(assert (=> b!5226909 m!6272966))

(declare-fun m!6273412 () Bool)

(assert (=> b!5226909 m!6273412))

(assert (=> b!5226909 m!6272962))

(assert (=> b!5226909 m!6273412))

(assert (=> b!5226909 m!6272962))

(declare-fun m!6273414 () Bool)

(assert (=> b!5226909 m!6273414))

(assert (=> b!5226354 d!1685082))

(declare-fun bs!1213545 () Bool)

(declare-fun d!1685084 () Bool)

(assert (= bs!1213545 (and d!1685084 d!1685068)))

(declare-fun lambda!262457 () Int)

(assert (=> bs!1213545 (= lambda!262457 lambda!262456)))

(assert (=> d!1685084 (= (nullableZipper!1240 lt!2144292) (exists!1975 lt!2144292 lambda!262457))))

(declare-fun bs!1213546 () Bool)

(assert (= bs!1213546 d!1685084))

(declare-fun m!6273416 () Bool)

(assert (=> bs!1213546 m!6273416))

(assert (=> b!5226399 d!1685084))

(declare-fun d!1685086 () Bool)

(assert (=> d!1685086 (= (nullable!4985 (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))) (nullableFct!1392 (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))))

(declare-fun bs!1213547 () Bool)

(assert (= bs!1213547 d!1685086))

(declare-fun m!6273418 () Bool)

(assert (=> bs!1213547 m!6273418))

(assert (=> b!5226398 d!1685086))

(declare-fun d!1685088 () Bool)

(declare-fun c!902453 () Bool)

(assert (=> d!1685088 (= c!902453 (isEmpty!32551 (t!373924 s!2326)))))

(declare-fun e!3253051 () Bool)

(assert (=> d!1685088 (= (matchZipper!1060 (set.union lt!2144285 lt!2144307) (t!373924 s!2326)) e!3253051)))

(declare-fun b!5226919 () Bool)

(assert (=> b!5226919 (= e!3253051 (nullableZipper!1240 (set.union lt!2144285 lt!2144307)))))

(declare-fun b!5226920 () Bool)

(assert (=> b!5226920 (= e!3253051 (matchZipper!1060 (derivationStepZipper!1084 (set.union lt!2144285 lt!2144307) (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))))))

(assert (= (and d!1685088 c!902453) b!5226919))

(assert (= (and d!1685088 (not c!902453)) b!5226920))

(assert (=> d!1685088 m!6272868))

(declare-fun m!6273420 () Bool)

(assert (=> b!5226919 m!6273420))

(assert (=> b!5226920 m!6272872))

(assert (=> b!5226920 m!6272872))

(declare-fun m!6273422 () Bool)

(assert (=> b!5226920 m!6273422))

(assert (=> b!5226920 m!6272876))

(assert (=> b!5226920 m!6273422))

(assert (=> b!5226920 m!6272876))

(declare-fun m!6273424 () Bool)

(assert (=> b!5226920 m!6273424))

(assert (=> d!1684936 d!1685088))

(assert (=> d!1684936 d!1684934))

(declare-fun e!3253054 () Bool)

(declare-fun d!1685090 () Bool)

(assert (=> d!1685090 (= (matchZipper!1060 (set.union lt!2144285 lt!2144307) (t!373924 s!2326)) e!3253054)))

(declare-fun res!2218990 () Bool)

(assert (=> d!1685090 (=> res!2218990 e!3253054)))

(assert (=> d!1685090 (= res!2218990 (matchZipper!1060 lt!2144285 (t!373924 s!2326)))))

(assert (=> d!1685090 true))

(declare-fun _$48!852 () Unit!152546)

(assert (=> d!1685090 (= (choose!38865 lt!2144285 lt!2144307 (t!373924 s!2326)) _$48!852)))

(declare-fun b!5226923 () Bool)

(assert (=> b!5226923 (= e!3253054 (matchZipper!1060 lt!2144307 (t!373924 s!2326)))))

(assert (= (and d!1685090 (not res!2218990)) b!5226923))

(assert (=> d!1685090 m!6273076))

(assert (=> d!1685090 m!6272664))

(assert (=> b!5226923 m!6272656))

(assert (=> d!1684936 d!1685090))

(declare-fun b!5226924 () Bool)

(declare-fun e!3253059 () (Set Context!8400))

(assert (=> b!5226924 (= e!3253059 (set.insert (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294)) (as set.empty (Set Context!8400))))))

(declare-fun call!369381 () List!60747)

(declare-fun c!902454 () Bool)

(declare-fun bm!369375 () Bool)

(declare-fun call!369380 () (Set Context!8400))

(assert (=> bm!369375 (= call!369380 (derivationStepZipperDown!264 (ite c!902454 (regOne!30145 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (regOne!30144 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))))) (ite c!902454 (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294)) (Context!8401 call!369381)) (h!67073 s!2326)))))

(declare-fun c!902458 () Bool)

(declare-fun c!902456 () Bool)

(declare-fun bm!369377 () Bool)

(assert (=> bm!369377 (= call!369381 ($colon$colon!1290 (exprs!4700 (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294))) (ite (or c!902458 c!902456) (regTwo!30144 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))))))))

(declare-fun c!902457 () Bool)

(declare-fun b!5226925 () Bool)

(assert (=> b!5226925 (= c!902457 (is-Star!14816 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun e!3253060 () (Set Context!8400))

(declare-fun e!3253057 () (Set Context!8400))

(assert (=> b!5226925 (= e!3253060 e!3253057)))

(declare-fun bm!369378 () Bool)

(declare-fun call!369385 () List!60747)

(assert (=> bm!369378 (= call!369385 call!369381)))

(declare-fun b!5226926 () Bool)

(declare-fun e!3253058 () (Set Context!8400))

(assert (=> b!5226926 (= e!3253059 e!3253058)))

(assert (=> b!5226926 (= c!902454 (is-Union!14816 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun b!5226927 () Bool)

(declare-fun call!369382 () (Set Context!8400))

(assert (=> b!5226927 (= e!3253058 (set.union call!369380 call!369382))))

(declare-fun b!5226928 () Bool)

(declare-fun e!3253055 () (Set Context!8400))

(assert (=> b!5226928 (= e!3253055 e!3253060)))

(assert (=> b!5226928 (= c!902456 (is-Concat!23661 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun b!5226929 () Bool)

(declare-fun call!369383 () (Set Context!8400))

(assert (=> b!5226929 (= e!3253060 call!369383)))

(declare-fun b!5226930 () Bool)

(declare-fun call!369384 () (Set Context!8400))

(assert (=> b!5226930 (= e!3253055 (set.union call!369380 call!369384))))

(declare-fun b!5226931 () Bool)

(assert (=> b!5226931 (= e!3253057 (as set.empty (Set Context!8400)))))

(declare-fun b!5226932 () Bool)

(assert (=> b!5226932 (= e!3253057 call!369383)))

(declare-fun e!3253056 () Bool)

(declare-fun b!5226933 () Bool)

(assert (=> b!5226933 (= e!3253056 (nullable!4985 (regOne!30144 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))))))))

(declare-fun b!5226934 () Bool)

(assert (=> b!5226934 (= c!902458 e!3253056)))

(declare-fun res!2218991 () Bool)

(assert (=> b!5226934 (=> (not res!2218991) (not e!3253056))))

(assert (=> b!5226934 (= res!2218991 (is-Concat!23661 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))))

(assert (=> b!5226934 (= e!3253058 e!3253055)))

(declare-fun d!1685092 () Bool)

(declare-fun c!902455 () Bool)

(assert (=> d!1685092 (= c!902455 (and (is-ElementMatch!14816 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (= (c!902205 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326))))))

(assert (=> d!1685092 (= (derivationStepZipperDown!264 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))) (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294)) (h!67073 s!2326)) e!3253059)))

(declare-fun bm!369376 () Bool)

(assert (=> bm!369376 (= call!369384 call!369382)))

(declare-fun bm!369379 () Bool)

(assert (=> bm!369379 (= call!369383 call!369384)))

(declare-fun bm!369380 () Bool)

(assert (=> bm!369380 (= call!369382 (derivationStepZipperDown!264 (ite c!902454 (regTwo!30145 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (ite c!902458 (regTwo!30144 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (ite c!902456 (regOne!30144 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343)))))))) (reg!15145 (ite c!902305 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902309 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902307 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))))))) (ite (or c!902454 c!902458) (ite (or c!902305 c!902309) lt!2144293 (Context!8401 call!369294)) (Context!8401 call!369385)) (h!67073 s!2326)))))

(assert (= (and d!1685092 c!902455) b!5226924))

(assert (= (and d!1685092 (not c!902455)) b!5226926))

(assert (= (and b!5226926 c!902454) b!5226927))

(assert (= (and b!5226926 (not c!902454)) b!5226934))

(assert (= (and b!5226934 res!2218991) b!5226933))

(assert (= (and b!5226934 c!902458) b!5226930))

(assert (= (and b!5226934 (not c!902458)) b!5226928))

(assert (= (and b!5226928 c!902456) b!5226929))

(assert (= (and b!5226928 (not c!902456)) b!5226925))

(assert (= (and b!5226925 c!902457) b!5226932))

(assert (= (and b!5226925 (not c!902457)) b!5226931))

(assert (= (or b!5226929 b!5226932) bm!369378))

(assert (= (or b!5226929 b!5226932) bm!369379))

(assert (= (or b!5226930 bm!369378) bm!369377))

(assert (= (or b!5226930 bm!369379) bm!369376))

(assert (= (or b!5226927 bm!369376) bm!369380))

(assert (= (or b!5226927 b!5226930) bm!369375))

(declare-fun m!6273426 () Bool)

(assert (=> b!5226924 m!6273426))

(declare-fun m!6273428 () Bool)

(assert (=> bm!369377 m!6273428))

(declare-fun m!6273430 () Bool)

(assert (=> bm!369375 m!6273430))

(declare-fun m!6273432 () Bool)

(assert (=> b!5226933 m!6273432))

(declare-fun m!6273434 () Bool)

(assert (=> bm!369380 m!6273434))

(assert (=> bm!369289 d!1685092))

(assert (=> bs!1213498 d!1684954))

(declare-fun d!1685094 () Bool)

(assert (=> d!1685094 (= ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902256 c!902254) (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (regOne!30145 (regOne!30144 r!7292)))) (Cons!60623 (ite (or c!902256 c!902254) (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))) (regOne!30145 (regOne!30144 r!7292))) (exprs!4700 lt!2144293)))))

(assert (=> bm!369266 d!1685094))

(declare-fun d!1685096 () Bool)

(declare-fun res!2218996 () Bool)

(declare-fun e!3253065 () Bool)

(assert (=> d!1685096 (=> res!2218996 e!3253065)))

(assert (=> d!1685096 (= res!2218996 (is-Nil!60624 lt!2144403))))

(assert (=> d!1685096 (= (noDuplicate!1196 lt!2144403) e!3253065)))

(declare-fun b!5226939 () Bool)

(declare-fun e!3253066 () Bool)

(assert (=> b!5226939 (= e!3253065 e!3253066)))

(declare-fun res!2218997 () Bool)

(assert (=> b!5226939 (=> (not res!2218997) (not e!3253066))))

(declare-fun contains!19677 (List!60748 Context!8400) Bool)

(assert (=> b!5226939 (= res!2218997 (not (contains!19677 (t!373923 lt!2144403) (h!67072 lt!2144403))))))

(declare-fun b!5226940 () Bool)

(assert (=> b!5226940 (= e!3253066 (noDuplicate!1196 (t!373923 lt!2144403)))))

(assert (= (and d!1685096 (not res!2218996)) b!5226939))

(assert (= (and b!5226939 res!2218997) b!5226940))

(declare-fun m!6273436 () Bool)

(assert (=> b!5226939 m!6273436))

(declare-fun m!6273438 () Bool)

(assert (=> b!5226940 m!6273438))

(assert (=> d!1684874 d!1685096))

(declare-fun d!1685098 () Bool)

(declare-fun e!3253074 () Bool)

(assert (=> d!1685098 e!3253074))

(declare-fun res!2219002 () Bool)

(assert (=> d!1685098 (=> (not res!2219002) (not e!3253074))))

(declare-fun res!2219003 () List!60748)

(assert (=> d!1685098 (= res!2219002 (noDuplicate!1196 res!2219003))))

(declare-fun e!3253073 () Bool)

(assert (=> d!1685098 e!3253073))

(assert (=> d!1685098 (= (choose!38866 z!1189) res!2219003)))

(declare-fun b!5226948 () Bool)

(declare-fun e!3253075 () Bool)

(declare-fun tp!1464932 () Bool)

(assert (=> b!5226948 (= e!3253075 tp!1464932)))

(declare-fun tp!1464933 () Bool)

(declare-fun b!5226947 () Bool)

(assert (=> b!5226947 (= e!3253073 (and (inv!80288 (h!67072 res!2219003)) e!3253075 tp!1464933))))

(declare-fun b!5226949 () Bool)

(assert (=> b!5226949 (= e!3253074 (= (content!10756 res!2219003) z!1189))))

(assert (= b!5226947 b!5226948))

(assert (= (and d!1685098 (is-Cons!60624 res!2219003)) b!5226947))

(assert (= (and d!1685098 res!2219002) b!5226949))

(declare-fun m!6273440 () Bool)

(assert (=> d!1685098 m!6273440))

(declare-fun m!6273442 () Bool)

(assert (=> b!5226947 m!6273442))

(declare-fun m!6273444 () Bool)

(assert (=> b!5226949 m!6273444))

(assert (=> d!1684874 d!1685098))

(declare-fun b!5226950 () Bool)

(declare-fun e!3253081 () Bool)

(declare-fun call!369386 () Bool)

(assert (=> b!5226950 (= e!3253081 call!369386)))

(declare-fun b!5226951 () Bool)

(declare-fun e!3253079 () Bool)

(assert (=> b!5226951 (= e!3253079 call!369386)))

(declare-fun c!902459 () Bool)

(declare-fun c!902460 () Bool)

(declare-fun call!369388 () Bool)

(declare-fun bm!369381 () Bool)

(assert (=> bm!369381 (= call!369388 (validRegex!6552 (ite c!902459 (reg!15145 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))) (ite c!902460 (regTwo!30145 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))) (regTwo!30144 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292)))))))))

(declare-fun bm!369382 () Bool)

(assert (=> bm!369382 (= call!369386 call!369388)))

(declare-fun b!5226952 () Bool)

(declare-fun e!3253077 () Bool)

(assert (=> b!5226952 (= e!3253077 call!369388)))

(declare-fun b!5226954 () Bool)

(declare-fun res!2219007 () Bool)

(declare-fun e!3253080 () Bool)

(assert (=> b!5226954 (=> res!2219007 e!3253080)))

(assert (=> b!5226954 (= res!2219007 (not (is-Concat!23661 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292)))))))

(declare-fun e!3253076 () Bool)

(assert (=> b!5226954 (= e!3253076 e!3253080)))

(declare-fun b!5226955 () Bool)

(assert (=> b!5226955 (= e!3253080 e!3253081)))

(declare-fun res!2219004 () Bool)

(assert (=> b!5226955 (=> (not res!2219004) (not e!3253081))))

(declare-fun call!369387 () Bool)

(assert (=> b!5226955 (= res!2219004 call!369387)))

(declare-fun b!5226956 () Bool)

(declare-fun res!2219006 () Bool)

(assert (=> b!5226956 (=> (not res!2219006) (not e!3253079))))

(assert (=> b!5226956 (= res!2219006 call!369387)))

(assert (=> b!5226956 (= e!3253076 e!3253079)))

(declare-fun bm!369383 () Bool)

(assert (=> bm!369383 (= call!369387 (validRegex!6552 (ite c!902460 (regOne!30145 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))) (regOne!30144 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))))

(declare-fun d!1685100 () Bool)

(declare-fun res!2219008 () Bool)

(declare-fun e!3253082 () Bool)

(assert (=> d!1685100 (=> res!2219008 e!3253082)))

(assert (=> d!1685100 (= res!2219008 (is-ElementMatch!14816 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))

(assert (=> d!1685100 (= (validRegex!6552 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))) e!3253082)))

(declare-fun b!5226953 () Bool)

(declare-fun e!3253078 () Bool)

(assert (=> b!5226953 (= e!3253078 e!3253076)))

(assert (=> b!5226953 (= c!902460 (is-Union!14816 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))

(declare-fun b!5226957 () Bool)

(assert (=> b!5226957 (= e!3253082 e!3253078)))

(assert (=> b!5226957 (= c!902459 (is-Star!14816 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))

(declare-fun b!5226958 () Bool)

(assert (=> b!5226958 (= e!3253078 e!3253077)))

(declare-fun res!2219005 () Bool)

(assert (=> b!5226958 (= res!2219005 (not (nullable!4985 (reg!15145 (ite c!902325 (regOne!30145 r!7292) (regOne!30144 r!7292))))))))

(assert (=> b!5226958 (=> (not res!2219005) (not e!3253077))))

(assert (= (and d!1685100 (not res!2219008)) b!5226957))

(assert (= (and b!5226957 c!902459) b!5226958))

(assert (= (and b!5226957 (not c!902459)) b!5226953))

(assert (= (and b!5226958 res!2219005) b!5226952))

(assert (= (and b!5226953 c!902460) b!5226956))

(assert (= (and b!5226953 (not c!902460)) b!5226954))

(assert (= (and b!5226956 res!2219006) b!5226951))

(assert (= (and b!5226954 (not res!2219007)) b!5226955))

(assert (= (and b!5226955 res!2219004) b!5226950))

(assert (= (or b!5226951 b!5226950) bm!369382))

(assert (= (or b!5226956 b!5226955) bm!369383))

(assert (= (or b!5226952 bm!369382) bm!369381))

(declare-fun m!6273446 () Bool)

(assert (=> bm!369381 m!6273446))

(declare-fun m!6273448 () Bool)

(assert (=> bm!369383 m!6273448))

(declare-fun m!6273450 () Bool)

(assert (=> b!5226958 m!6273450))

(assert (=> bm!369301 d!1685100))

(declare-fun bs!1213548 () Bool)

(declare-fun d!1685102 () Bool)

(assert (= bs!1213548 (and d!1685102 d!1684884)))

(declare-fun lambda!262458 () Int)

(assert (=> bs!1213548 (= lambda!262458 lambda!262406)))

(declare-fun bs!1213549 () Bool)

(assert (= bs!1213549 (and d!1685102 d!1684900)))

(assert (=> bs!1213549 (= lambda!262458 lambda!262415)))

(declare-fun bs!1213550 () Bool)

(assert (= bs!1213550 (and d!1685102 d!1684882)))

(assert (=> bs!1213550 (= lambda!262458 lambda!262403)))

(declare-fun bs!1213551 () Bool)

(assert (= bs!1213551 (and d!1685102 d!1684930)))

(assert (=> bs!1213551 (= lambda!262458 lambda!262425)))

(declare-fun bs!1213552 () Bool)

(assert (= bs!1213552 (and d!1685102 d!1684862)))

(assert (=> bs!1213552 (= lambda!262458 lambda!262400)))

(declare-fun b!5226960 () Bool)

(declare-fun e!3253087 () Regex!14816)

(assert (=> b!5226960 (= e!3253087 EmptyExpr!14816)))

(declare-fun b!5226961 () Bool)

(declare-fun e!3253083 () Bool)

(declare-fun lt!2144485 () Regex!14816)

(assert (=> b!5226961 (= e!3253083 (isEmptyExpr!776 lt!2144485))))

(declare-fun b!5226962 () Bool)

(declare-fun e!3253085 () Bool)

(assert (=> b!5226962 (= e!3253085 (isConcat!299 lt!2144485))))

(declare-fun b!5226963 () Bool)

(declare-fun e!3253086 () Regex!14816)

(assert (=> b!5226963 (= e!3253086 (h!67071 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun e!3253088 () Bool)

(assert (=> d!1685102 e!3253088))

(declare-fun res!2219009 () Bool)

(assert (=> d!1685102 (=> (not res!2219009) (not e!3253088))))

(assert (=> d!1685102 (= res!2219009 (validRegex!6552 lt!2144485))))

(assert (=> d!1685102 (= lt!2144485 e!3253086)))

(declare-fun c!902461 () Bool)

(declare-fun e!3253084 () Bool)

(assert (=> d!1685102 (= c!902461 e!3253084)))

(declare-fun res!2219010 () Bool)

(assert (=> d!1685102 (=> (not res!2219010) (not e!3253084))))

(assert (=> d!1685102 (= res!2219010 (is-Cons!60623 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> d!1685102 (forall!14248 (t!373922 (exprs!4700 (h!67072 zl!343))) lambda!262458)))

(assert (=> d!1685102 (= (generalisedConcat!485 (t!373922 (exprs!4700 (h!67072 zl!343)))) lt!2144485)))

(declare-fun b!5226959 () Bool)

(assert (=> b!5226959 (= e!3253088 e!3253083)))

(declare-fun c!902462 () Bool)

(assert (=> b!5226959 (= c!902462 (isEmpty!32547 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226964 () Bool)

(assert (=> b!5226964 (= e!3253086 e!3253087)))

(declare-fun c!902463 () Bool)

(assert (=> b!5226964 (= c!902463 (is-Cons!60623 (t!373922 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5226965 () Bool)

(assert (=> b!5226965 (= e!3253085 (= lt!2144485 (head!11199 (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5226966 () Bool)

(assert (=> b!5226966 (= e!3253087 (Concat!23661 (h!67071 (t!373922 (exprs!4700 (h!67072 zl!343)))) (generalisedConcat!485 (t!373922 (t!373922 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5226967 () Bool)

(assert (=> b!5226967 (= e!3253083 e!3253085)))

(declare-fun c!902464 () Bool)

(assert (=> b!5226967 (= c!902464 (isEmpty!32547 (tail!10296 (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5226968 () Bool)

(assert (=> b!5226968 (= e!3253084 (isEmpty!32547 (t!373922 (t!373922 (exprs!4700 (h!67072 zl!343))))))))

(assert (= (and d!1685102 res!2219010) b!5226968))

(assert (= (and d!1685102 c!902461) b!5226963))

(assert (= (and d!1685102 (not c!902461)) b!5226964))

(assert (= (and b!5226964 c!902463) b!5226966))

(assert (= (and b!5226964 (not c!902463)) b!5226960))

(assert (= (and d!1685102 res!2219009) b!5226959))

(assert (= (and b!5226959 c!902462) b!5226961))

(assert (= (and b!5226959 (not c!902462)) b!5226967))

(assert (= (and b!5226967 c!902464) b!5226965))

(assert (= (and b!5226967 (not c!902464)) b!5226962))

(declare-fun m!6273452 () Bool)

(assert (=> b!5226962 m!6273452))

(declare-fun m!6273454 () Bool)

(assert (=> b!5226968 m!6273454))

(declare-fun m!6273456 () Bool)

(assert (=> b!5226967 m!6273456))

(assert (=> b!5226967 m!6273456))

(declare-fun m!6273458 () Bool)

(assert (=> b!5226967 m!6273458))

(declare-fun m!6273460 () Bool)

(assert (=> b!5226966 m!6273460))

(declare-fun m!6273462 () Bool)

(assert (=> d!1685102 m!6273462))

(declare-fun m!6273464 () Bool)

(assert (=> d!1685102 m!6273464))

(declare-fun m!6273466 () Bool)

(assert (=> b!5226961 m!6273466))

(assert (=> b!5226959 m!6272712))

(declare-fun m!6273468 () Bool)

(assert (=> b!5226965 m!6273468))

(assert (=> b!5226108 d!1685102))

(declare-fun bs!1213553 () Bool)

(declare-fun d!1685104 () Bool)

(assert (= bs!1213553 (and d!1685104 d!1685068)))

(declare-fun lambda!262459 () Int)

(assert (=> bs!1213553 (= lambda!262459 lambda!262456)))

(declare-fun bs!1213554 () Bool)

(assert (= bs!1213554 (and d!1685104 d!1685084)))

(assert (=> bs!1213554 (= lambda!262459 lambda!262457)))

(assert (=> d!1685104 (= (nullableZipper!1240 lt!2144285) (exists!1975 lt!2144285 lambda!262459))))

(declare-fun bs!1213555 () Bool)

(assert (= bs!1213555 d!1685104))

(declare-fun m!6273470 () Bool)

(assert (=> bs!1213555 m!6273470))

(assert (=> b!5226401 d!1685104))

(declare-fun b!5226969 () Bool)

(declare-fun e!3253094 () Bool)

(declare-fun call!369389 () Bool)

(assert (=> b!5226969 (= e!3253094 call!369389)))

(declare-fun b!5226970 () Bool)

(declare-fun e!3253092 () Bool)

(assert (=> b!5226970 (= e!3253092 call!369389)))

(declare-fun c!902466 () Bool)

(declare-fun call!369391 () Bool)

(declare-fun c!902465 () Bool)

(declare-fun bm!369384 () Bool)

(assert (=> bm!369384 (= call!369391 (validRegex!6552 (ite c!902465 (reg!15145 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))) (ite c!902466 (regTwo!30145 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))) (regTwo!30144 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))))))))))))

(declare-fun bm!369385 () Bool)

(assert (=> bm!369385 (= call!369389 call!369391)))

(declare-fun b!5226971 () Bool)

(declare-fun e!3253090 () Bool)

(assert (=> b!5226971 (= e!3253090 call!369391)))

(declare-fun b!5226973 () Bool)

(declare-fun res!2219014 () Bool)

(declare-fun e!3253093 () Bool)

(assert (=> b!5226973 (=> res!2219014 e!3253093)))

(assert (=> b!5226973 (= res!2219014 (not (is-Concat!23661 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))))))))))

(declare-fun e!3253089 () Bool)

(assert (=> b!5226973 (= e!3253089 e!3253093)))

(declare-fun b!5226974 () Bool)

(assert (=> b!5226974 (= e!3253093 e!3253094)))

(declare-fun res!2219011 () Bool)

(assert (=> b!5226974 (=> (not res!2219011) (not e!3253094))))

(declare-fun call!369390 () Bool)

(assert (=> b!5226974 (= res!2219011 call!369390)))

(declare-fun b!5226975 () Bool)

(declare-fun res!2219013 () Bool)

(assert (=> b!5226975 (=> (not res!2219013) (not e!3253092))))

(assert (=> b!5226975 (= res!2219013 call!369390)))

(assert (=> b!5226975 (= e!3253089 e!3253092)))

(declare-fun bm!369386 () Bool)

(assert (=> bm!369386 (= call!369390 (validRegex!6552 (ite c!902466 (regOne!30145 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))) (regOne!30144 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))))

(declare-fun d!1685106 () Bool)

(declare-fun res!2219015 () Bool)

(declare-fun e!3253095 () Bool)

(assert (=> d!1685106 (=> res!2219015 e!3253095)))

(assert (=> d!1685106 (= res!2219015 (is-ElementMatch!14816 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(assert (=> d!1685106 (= (validRegex!6552 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))) e!3253095)))

(declare-fun b!5226972 () Bool)

(declare-fun e!3253091 () Bool)

(assert (=> b!5226972 (= e!3253091 e!3253089)))

(assert (=> b!5226972 (= c!902466 (is-Union!14816 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5226976 () Bool)

(assert (=> b!5226976 (= e!3253095 e!3253091)))

(assert (=> b!5226976 (= c!902465 (is-Star!14816 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5226977 () Bool)

(assert (=> b!5226977 (= e!3253091 e!3253090)))

(declare-fun res!2219012 () Bool)

(assert (=> b!5226977 (= res!2219012 (not (nullable!4985 (reg!15145 (ite c!902320 (reg!15145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902321 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))))

(assert (=> b!5226977 (=> (not res!2219012) (not e!3253090))))

(assert (= (and d!1685106 (not res!2219015)) b!5226976))

(assert (= (and b!5226976 c!902465) b!5226977))

(assert (= (and b!5226976 (not c!902465)) b!5226972))

(assert (= (and b!5226977 res!2219012) b!5226971))

(assert (= (and b!5226972 c!902466) b!5226975))

(assert (= (and b!5226972 (not c!902466)) b!5226973))

(assert (= (and b!5226975 res!2219013) b!5226970))

(assert (= (and b!5226973 (not res!2219014)) b!5226974))

(assert (= (and b!5226974 res!2219011) b!5226969))

(assert (= (or b!5226970 b!5226969) bm!369385))

(assert (= (or b!5226975 b!5226974) bm!369386))

(assert (= (or b!5226971 bm!369385) bm!369384))

(declare-fun m!6273472 () Bool)

(assert (=> bm!369384 m!6273472))

(declare-fun m!6273474 () Bool)

(assert (=> bm!369386 m!6273474))

(declare-fun m!6273476 () Bool)

(assert (=> b!5226977 m!6273476))

(assert (=> bm!369296 d!1685106))

(declare-fun d!1685108 () Bool)

(assert (=> d!1685108 (= (isConcat!299 lt!2144394) (is-Concat!23661 lt!2144394))))

(assert (=> b!5226104 d!1685108))

(declare-fun d!1685110 () Bool)

(declare-fun res!2219020 () Bool)

(declare-fun e!3253100 () Bool)

(assert (=> d!1685110 (=> res!2219020 e!3253100)))

(assert (=> d!1685110 (= res!2219020 (is-Nil!60623 (exprs!4700 setElem!33262)))))

(assert (=> d!1685110 (= (forall!14248 (exprs!4700 setElem!33262) lambda!262425) e!3253100)))

(declare-fun b!5226982 () Bool)

(declare-fun e!3253101 () Bool)

(assert (=> b!5226982 (= e!3253100 e!3253101)))

(declare-fun res!2219021 () Bool)

(assert (=> b!5226982 (=> (not res!2219021) (not e!3253101))))

(declare-fun dynLambda!23958 (Int Regex!14816) Bool)

(assert (=> b!5226982 (= res!2219021 (dynLambda!23958 lambda!262425 (h!67071 (exprs!4700 setElem!33262))))))

(declare-fun b!5226983 () Bool)

(assert (=> b!5226983 (= e!3253101 (forall!14248 (t!373922 (exprs!4700 setElem!33262)) lambda!262425))))

(assert (= (and d!1685110 (not res!2219020)) b!5226982))

(assert (= (and b!5226982 res!2219021) b!5226983))

(declare-fun b_lambda!202099 () Bool)

(assert (=> (not b_lambda!202099) (not b!5226982)))

(declare-fun m!6273478 () Bool)

(assert (=> b!5226982 m!6273478))

(declare-fun m!6273480 () Bool)

(assert (=> b!5226983 m!6273480))

(assert (=> d!1684930 d!1685110))

(declare-fun d!1685112 () Bool)

(assert (=> d!1685112 (= (isEmptyExpr!776 lt!2144394) (is-EmptyExpr!14816 lt!2144394))))

(assert (=> b!5226103 d!1685112))

(declare-fun bs!1213556 () Bool)

(declare-fun d!1685114 () Bool)

(assert (= bs!1213556 (and d!1685114 d!1684884)))

(declare-fun lambda!262460 () Int)

(assert (=> bs!1213556 (= lambda!262460 lambda!262406)))

(declare-fun bs!1213557 () Bool)

(assert (= bs!1213557 (and d!1685114 d!1684900)))

(assert (=> bs!1213557 (= lambda!262460 lambda!262415)))

(declare-fun bs!1213558 () Bool)

(assert (= bs!1213558 (and d!1685114 d!1684882)))

(assert (=> bs!1213558 (= lambda!262460 lambda!262403)))

(declare-fun bs!1213559 () Bool)

(assert (= bs!1213559 (and d!1685114 d!1684930)))

(assert (=> bs!1213559 (= lambda!262460 lambda!262425)))

(declare-fun bs!1213560 () Bool)

(assert (= bs!1213560 (and d!1685114 d!1685102)))

(assert (=> bs!1213560 (= lambda!262460 lambda!262458)))

(declare-fun bs!1213561 () Bool)

(assert (= bs!1213561 (and d!1685114 d!1684862)))

(assert (=> bs!1213561 (= lambda!262460 lambda!262400)))

(declare-fun b!5226984 () Bool)

(declare-fun e!3253102 () Bool)

(declare-fun lt!2144486 () Regex!14816)

(assert (=> b!5226984 (= e!3253102 (isUnion!217 lt!2144486))))

(declare-fun b!5226985 () Bool)

(declare-fun e!3253105 () Regex!14816)

(declare-fun e!3253106 () Regex!14816)

(assert (=> b!5226985 (= e!3253105 e!3253106)))

(declare-fun c!902469 () Bool)

(assert (=> b!5226985 (= c!902469 (is-Cons!60623 (t!373922 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5226986 () Bool)

(declare-fun e!3253107 () Bool)

(assert (=> b!5226986 (= e!3253107 e!3253102)))

(declare-fun c!902467 () Bool)

(assert (=> b!5226986 (= c!902467 (isEmpty!32547 (tail!10296 (t!373922 (unfocusZipperList!258 zl!343)))))))

(declare-fun b!5226988 () Bool)

(assert (=> b!5226988 (= e!3253105 (h!67071 (t!373922 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5226989 () Bool)

(declare-fun e!3253104 () Bool)

(assert (=> b!5226989 (= e!3253104 e!3253107)))

(declare-fun c!902470 () Bool)

(assert (=> b!5226989 (= c!902470 (isEmpty!32547 (t!373922 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5226990 () Bool)

(assert (=> b!5226990 (= e!3253106 (Union!14816 (h!67071 (t!373922 (unfocusZipperList!258 zl!343))) (generalisedUnion!745 (t!373922 (t!373922 (unfocusZipperList!258 zl!343))))))))

(declare-fun b!5226991 () Bool)

(assert (=> b!5226991 (= e!3253106 EmptyLang!14816)))

(assert (=> d!1685114 e!3253104))

(declare-fun res!2219022 () Bool)

(assert (=> d!1685114 (=> (not res!2219022) (not e!3253104))))

(assert (=> d!1685114 (= res!2219022 (validRegex!6552 lt!2144486))))

(assert (=> d!1685114 (= lt!2144486 e!3253105)))

(declare-fun c!902468 () Bool)

(declare-fun e!3253103 () Bool)

(assert (=> d!1685114 (= c!902468 e!3253103)))

(declare-fun res!2219023 () Bool)

(assert (=> d!1685114 (=> (not res!2219023) (not e!3253103))))

(assert (=> d!1685114 (= res!2219023 (is-Cons!60623 (t!373922 (unfocusZipperList!258 zl!343))))))

(assert (=> d!1685114 (forall!14248 (t!373922 (unfocusZipperList!258 zl!343)) lambda!262460)))

(assert (=> d!1685114 (= (generalisedUnion!745 (t!373922 (unfocusZipperList!258 zl!343))) lt!2144486)))

(declare-fun b!5226987 () Bool)

(assert (=> b!5226987 (= e!3253102 (= lt!2144486 (head!11199 (t!373922 (unfocusZipperList!258 zl!343)))))))

(declare-fun b!5226992 () Bool)

(assert (=> b!5226992 (= e!3253107 (isEmptyLang!785 lt!2144486))))

(declare-fun b!5226993 () Bool)

(assert (=> b!5226993 (= e!3253103 (isEmpty!32547 (t!373922 (t!373922 (unfocusZipperList!258 zl!343)))))))

(assert (= (and d!1685114 res!2219023) b!5226993))

(assert (= (and d!1685114 c!902468) b!5226988))

(assert (= (and d!1685114 (not c!902468)) b!5226985))

(assert (= (and b!5226985 c!902469) b!5226990))

(assert (= (and b!5226985 (not c!902469)) b!5226991))

(assert (= (and d!1685114 res!2219022) b!5226989))

(assert (= (and b!5226989 c!902470) b!5226992))

(assert (= (and b!5226989 (not c!902470)) b!5226986))

(assert (= (and b!5226986 c!902467) b!5226987))

(assert (= (and b!5226986 (not c!902467)) b!5226984))

(declare-fun m!6273482 () Bool)

(assert (=> d!1685114 m!6273482))

(declare-fun m!6273484 () Bool)

(assert (=> d!1685114 m!6273484))

(declare-fun m!6273486 () Bool)

(assert (=> b!5226984 m!6273486))

(declare-fun m!6273488 () Bool)

(assert (=> b!5226987 m!6273488))

(declare-fun m!6273490 () Bool)

(assert (=> b!5226992 m!6273490))

(declare-fun m!6273492 () Bool)

(assert (=> b!5226993 m!6273492))

(declare-fun m!6273494 () Bool)

(assert (=> b!5226990 m!6273494))

(assert (=> b!5226989 m!6272930))

(declare-fun m!6273496 () Bool)

(assert (=> b!5226986 m!6273496))

(assert (=> b!5226986 m!6273496))

(declare-fun m!6273498 () Bool)

(assert (=> b!5226986 m!6273498))

(assert (=> b!5226197 d!1685114))

(declare-fun d!1685116 () Bool)

(assert (=> d!1685116 (= (isDefined!11630 lt!2144428) (not (isEmpty!32552 lt!2144428)))))

(declare-fun bs!1213562 () Bool)

(assert (= bs!1213562 d!1685116))

(declare-fun m!6273500 () Bool)

(assert (=> bs!1213562 m!6273500))

(assert (=> b!5226357 d!1685116))

(declare-fun d!1685118 () Bool)

(declare-fun c!902471 () Bool)

(assert (=> d!1685118 (= c!902471 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253108 () Bool)

(assert (=> d!1685118 (= (matchZipper!1060 (derivationStepZipper!1084 lt!2144307 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253108)))

(declare-fun b!5226994 () Bool)

(assert (=> b!5226994 (= e!3253108 (nullableZipper!1240 (derivationStepZipper!1084 lt!2144307 (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5226995 () Bool)

(assert (=> b!5226995 (= e!3253108 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 lt!2144307 (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685118 c!902471) b!5226994))

(assert (= (and d!1685118 (not c!902471)) b!5226995))

(assert (=> d!1685118 m!6272876))

(declare-fun m!6273502 () Bool)

(assert (=> d!1685118 m!6273502))

(assert (=> b!5226994 m!6272976))

(declare-fun m!6273504 () Bool)

(assert (=> b!5226994 m!6273504))

(assert (=> b!5226995 m!6272876))

(declare-fun m!6273506 () Bool)

(assert (=> b!5226995 m!6273506))

(assert (=> b!5226995 m!6272976))

(assert (=> b!5226995 m!6273506))

(declare-fun m!6273508 () Bool)

(assert (=> b!5226995 m!6273508))

(assert (=> b!5226995 m!6272876))

(declare-fun m!6273510 () Bool)

(assert (=> b!5226995 m!6273510))

(assert (=> b!5226995 m!6273508))

(assert (=> b!5226995 m!6273510))

(declare-fun m!6273512 () Bool)

(assert (=> b!5226995 m!6273512))

(assert (=> b!5226296 d!1685118))

(declare-fun bs!1213563 () Bool)

(declare-fun d!1685120 () Bool)

(assert (= bs!1213563 (and d!1685120 b!5225936)))

(declare-fun lambda!262463 () Int)

(assert (=> bs!1213563 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262463 lambda!262382))))

(assert (=> d!1685120 true))

(assert (=> d!1685120 (= (derivationStepZipper!1084 lt!2144307 (head!11200 (t!373924 s!2326))) (flatMap!543 lt!2144307 lambda!262463))))

(declare-fun bs!1213564 () Bool)

(assert (= bs!1213564 d!1685120))

(declare-fun m!6273514 () Bool)

(assert (=> bs!1213564 m!6273514))

(assert (=> b!5226296 d!1685120))

(declare-fun d!1685122 () Bool)

(assert (=> d!1685122 (= (head!11200 (t!373924 s!2326)) (h!67073 (t!373924 s!2326)))))

(assert (=> b!5226296 d!1685122))

(declare-fun d!1685124 () Bool)

(assert (=> d!1685124 (= (tail!10297 (t!373924 s!2326)) (t!373924 (t!373924 s!2326)))))

(assert (=> b!5226296 d!1685124))

(declare-fun e!3253113 () (Set Context!8400))

(declare-fun b!5226998 () Bool)

(assert (=> b!5226998 (= e!3253113 (set.insert (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268)) (as set.empty (Set Context!8400))))))

(declare-fun bm!369387 () Bool)

(declare-fun call!369393 () List!60747)

(declare-fun call!369392 () (Set Context!8400))

(declare-fun c!902474 () Bool)

(assert (=> bm!369387 (= call!369392 (derivationStepZipperDown!264 (ite c!902474 (regOne!30145 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (regOne!30144 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))))) (ite c!902474 (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268)) (Context!8401 call!369393)) (h!67073 s!2326)))))

(declare-fun c!902478 () Bool)

(declare-fun c!902476 () Bool)

(declare-fun bm!369389 () Bool)

(assert (=> bm!369389 (= call!369393 ($colon$colon!1290 (exprs!4700 (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268))) (ite (or c!902478 c!902476) (regTwo!30144 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))))))))

(declare-fun b!5226999 () Bool)

(declare-fun c!902477 () Bool)

(assert (=> b!5226999 (= c!902477 (is-Star!14816 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))))))

(declare-fun e!3253114 () (Set Context!8400))

(declare-fun e!3253111 () (Set Context!8400))

(assert (=> b!5226999 (= e!3253114 e!3253111)))

(declare-fun bm!369390 () Bool)

(declare-fun call!369397 () List!60747)

(assert (=> bm!369390 (= call!369397 call!369393)))

(declare-fun b!5227000 () Bool)

(declare-fun e!3253112 () (Set Context!8400))

(assert (=> b!5227000 (= e!3253113 e!3253112)))

(assert (=> b!5227000 (= c!902474 (is-Union!14816 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))))))

(declare-fun b!5227001 () Bool)

(declare-fun call!369394 () (Set Context!8400))

(assert (=> b!5227001 (= e!3253112 (set.union call!369392 call!369394))))

(declare-fun b!5227002 () Bool)

(declare-fun e!3253109 () (Set Context!8400))

(assert (=> b!5227002 (= e!3253109 e!3253114)))

(assert (=> b!5227002 (= c!902476 (is-Concat!23661 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))))))

(declare-fun b!5227003 () Bool)

(declare-fun call!369395 () (Set Context!8400))

(assert (=> b!5227003 (= e!3253114 call!369395)))

(declare-fun b!5227004 () Bool)

(declare-fun call!369396 () (Set Context!8400))

(assert (=> b!5227004 (= e!3253109 (set.union call!369392 call!369396))))

(declare-fun b!5227005 () Bool)

(assert (=> b!5227005 (= e!3253111 (as set.empty (Set Context!8400)))))

(declare-fun b!5227006 () Bool)

(assert (=> b!5227006 (= e!3253111 call!369395)))

(declare-fun e!3253110 () Bool)

(declare-fun b!5227007 () Bool)

(assert (=> b!5227007 (= e!3253110 (nullable!4985 (regOne!30144 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))))))))

(declare-fun b!5227008 () Bool)

(assert (=> b!5227008 (= c!902478 e!3253110)))

(declare-fun res!2219024 () Bool)

(assert (=> b!5227008 (=> (not res!2219024) (not e!3253110))))

(assert (=> b!5227008 (= res!2219024 (is-Concat!23661 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))))))

(assert (=> b!5227008 (= e!3253112 e!3253109)))

(declare-fun d!1685126 () Bool)

(declare-fun c!902475 () Bool)

(assert (=> d!1685126 (= c!902475 (and (is-ElementMatch!14816 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (= (c!902205 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (h!67073 s!2326))))))

(assert (=> d!1685126 (= (derivationStepZipperDown!264 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))) (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268)) (h!67073 s!2326)) e!3253113)))

(declare-fun bm!369388 () Bool)

(assert (=> bm!369388 (= call!369396 call!369394)))

(declare-fun bm!369391 () Bool)

(assert (=> bm!369391 (= call!369395 call!369396)))

(declare-fun bm!369392 () Bool)

(assert (=> bm!369392 (= call!369394 (derivationStepZipperDown!264 (ite c!902474 (regTwo!30145 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (ite c!902478 (regTwo!30144 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (ite c!902476 (regOne!30144 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292))))))) (reg!15145 (ite c!902247 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902251 (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (ite c!902249 (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))) (reg!15145 (regTwo!30145 (regOne!30144 r!7292)))))))))) (ite (or c!902474 c!902478) (ite (or c!902247 c!902251) lt!2144293 (Context!8401 call!369268)) (Context!8401 call!369397)) (h!67073 s!2326)))))

(assert (= (and d!1685126 c!902475) b!5226998))

(assert (= (and d!1685126 (not c!902475)) b!5227000))

(assert (= (and b!5227000 c!902474) b!5227001))

(assert (= (and b!5227000 (not c!902474)) b!5227008))

(assert (= (and b!5227008 res!2219024) b!5227007))

(assert (= (and b!5227008 c!902478) b!5227004))

(assert (= (and b!5227008 (not c!902478)) b!5227002))

(assert (= (and b!5227002 c!902476) b!5227003))

(assert (= (and b!5227002 (not c!902476)) b!5226999))

(assert (= (and b!5226999 c!902477) b!5227006))

(assert (= (and b!5226999 (not c!902477)) b!5227005))

(assert (= (or b!5227003 b!5227006) bm!369390))

(assert (= (or b!5227003 b!5227006) bm!369391))

(assert (= (or b!5227004 bm!369390) bm!369389))

(assert (= (or b!5227004 bm!369391) bm!369388))

(assert (= (or b!5227001 bm!369388) bm!369392))

(assert (= (or b!5227001 b!5227004) bm!369387))

(declare-fun m!6273516 () Bool)

(assert (=> b!5226998 m!6273516))

(declare-fun m!6273518 () Bool)

(assert (=> bm!369389 m!6273518))

(declare-fun m!6273520 () Bool)

(assert (=> bm!369387 m!6273520))

(declare-fun m!6273522 () Bool)

(assert (=> b!5227007 m!6273522))

(declare-fun m!6273524 () Bool)

(assert (=> bm!369392 m!6273524))

(assert (=> bm!369263 d!1685126))

(assert (=> d!1684896 d!1684894))

(assert (=> d!1684896 d!1684892))

(declare-fun d!1685128 () Bool)

(assert (=> d!1685128 (= (matchR!7001 r!7292 s!2326) (matchRSpec!1919 r!7292 s!2326))))

(assert (=> d!1685128 true))

(declare-fun _$88!3501 () Unit!152546)

(assert (=> d!1685128 (= (choose!38867 r!7292 s!2326) _$88!3501)))

(declare-fun bs!1213565 () Bool)

(assert (= bs!1213565 d!1685128))

(assert (=> bs!1213565 m!6272748))

(assert (=> bs!1213565 m!6272746))

(assert (=> d!1684896 d!1685128))

(assert (=> d!1684896 d!1684938))

(declare-fun bs!1213566 () Bool)

(declare-fun d!1685130 () Bool)

(assert (= bs!1213566 (and d!1685130 d!1684884)))

(declare-fun lambda!262464 () Int)

(assert (=> bs!1213566 (= lambda!262464 lambda!262406)))

(declare-fun bs!1213567 () Bool)

(assert (= bs!1213567 (and d!1685130 d!1684900)))

(assert (=> bs!1213567 (= lambda!262464 lambda!262415)))

(declare-fun bs!1213568 () Bool)

(assert (= bs!1213568 (and d!1685130 d!1684882)))

(assert (=> bs!1213568 (= lambda!262464 lambda!262403)))

(declare-fun bs!1213569 () Bool)

(assert (= bs!1213569 (and d!1685130 d!1685114)))

(assert (=> bs!1213569 (= lambda!262464 lambda!262460)))

(declare-fun bs!1213570 () Bool)

(assert (= bs!1213570 (and d!1685130 d!1684930)))

(assert (=> bs!1213570 (= lambda!262464 lambda!262425)))

(declare-fun bs!1213571 () Bool)

(assert (= bs!1213571 (and d!1685130 d!1685102)))

(assert (=> bs!1213571 (= lambda!262464 lambda!262458)))

(declare-fun bs!1213572 () Bool)

(assert (= bs!1213572 (and d!1685130 d!1684862)))

(assert (=> bs!1213572 (= lambda!262464 lambda!262400)))

(assert (=> d!1685130 (= (inv!80288 (h!67072 (t!373923 zl!343))) (forall!14248 (exprs!4700 (h!67072 (t!373923 zl!343))) lambda!262464))))

(declare-fun bs!1213573 () Bool)

(assert (= bs!1213573 d!1685130))

(declare-fun m!6273526 () Bool)

(assert (=> bs!1213573 m!6273526))

(assert (=> b!5226447 d!1685130))

(declare-fun d!1685132 () Bool)

(assert (=> d!1685132 (= (isEmpty!32547 (tail!10296 (unfocusZipperList!258 zl!343))) (is-Nil!60623 (tail!10296 (unfocusZipperList!258 zl!343))))))

(assert (=> b!5226193 d!1685132))

(declare-fun d!1685134 () Bool)

(assert (=> d!1685134 (= (tail!10296 (unfocusZipperList!258 zl!343)) (t!373922 (unfocusZipperList!258 zl!343)))))

(assert (=> b!5226193 d!1685134))

(declare-fun b!5227009 () Bool)

(declare-fun res!2219028 () Bool)

(declare-fun e!3253121 () Bool)

(assert (=> b!5227009 (=> res!2219028 e!3253121)))

(assert (=> b!5227009 (= res!2219028 (not (isEmpty!32551 (tail!10297 (_1!35318 (get!20834 lt!2144428))))))))

(declare-fun bm!369393 () Bool)

(declare-fun call!369398 () Bool)

(assert (=> bm!369393 (= call!369398 (isEmpty!32551 (_1!35318 (get!20834 lt!2144428))))))

(declare-fun b!5227010 () Bool)

(declare-fun e!3253118 () Bool)

(declare-fun e!3253117 () Bool)

(assert (=> b!5227010 (= e!3253118 e!3253117)))

(declare-fun c!902480 () Bool)

(assert (=> b!5227010 (= c!902480 (is-EmptyLang!14816 (regOne!30144 r!7292)))))

(declare-fun b!5227011 () Bool)

(declare-fun lt!2144487 () Bool)

(assert (=> b!5227011 (= e!3253117 (not lt!2144487))))

(declare-fun b!5227012 () Bool)

(declare-fun e!3253116 () Bool)

(assert (=> b!5227012 (= e!3253116 (= (head!11200 (_1!35318 (get!20834 lt!2144428))) (c!902205 (regOne!30144 r!7292))))))

(declare-fun b!5227013 () Bool)

(declare-fun e!3253119 () Bool)

(assert (=> b!5227013 (= e!3253119 (matchR!7001 (derivativeStep!4062 (regOne!30144 r!7292) (head!11200 (_1!35318 (get!20834 lt!2144428)))) (tail!10297 (_1!35318 (get!20834 lt!2144428)))))))

(declare-fun d!1685136 () Bool)

(assert (=> d!1685136 e!3253118))

(declare-fun c!902479 () Bool)

(assert (=> d!1685136 (= c!902479 (is-EmptyExpr!14816 (regOne!30144 r!7292)))))

(assert (=> d!1685136 (= lt!2144487 e!3253119)))

(declare-fun c!902481 () Bool)

(assert (=> d!1685136 (= c!902481 (isEmpty!32551 (_1!35318 (get!20834 lt!2144428))))))

(assert (=> d!1685136 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1685136 (= (matchR!7001 (regOne!30144 r!7292) (_1!35318 (get!20834 lt!2144428))) lt!2144487)))

(declare-fun b!5227014 () Bool)

(declare-fun res!2219029 () Bool)

(declare-fun e!3253120 () Bool)

(assert (=> b!5227014 (=> res!2219029 e!3253120)))

(assert (=> b!5227014 (= res!2219029 e!3253116)))

(declare-fun res!2219026 () Bool)

(assert (=> b!5227014 (=> (not res!2219026) (not e!3253116))))

(assert (=> b!5227014 (= res!2219026 lt!2144487)))

(declare-fun b!5227015 () Bool)

(declare-fun res!2219030 () Bool)

(assert (=> b!5227015 (=> (not res!2219030) (not e!3253116))))

(assert (=> b!5227015 (= res!2219030 (not call!369398))))

(declare-fun b!5227016 () Bool)

(declare-fun e!3253115 () Bool)

(assert (=> b!5227016 (= e!3253115 e!3253121)))

(declare-fun res!2219032 () Bool)

(assert (=> b!5227016 (=> res!2219032 e!3253121)))

(assert (=> b!5227016 (= res!2219032 call!369398)))

(declare-fun b!5227017 () Bool)

(declare-fun res!2219031 () Bool)

(assert (=> b!5227017 (=> (not res!2219031) (not e!3253116))))

(assert (=> b!5227017 (= res!2219031 (isEmpty!32551 (tail!10297 (_1!35318 (get!20834 lt!2144428)))))))

(declare-fun b!5227018 () Bool)

(assert (=> b!5227018 (= e!3253118 (= lt!2144487 call!369398))))

(declare-fun b!5227019 () Bool)

(declare-fun res!2219027 () Bool)

(assert (=> b!5227019 (=> res!2219027 e!3253120)))

(assert (=> b!5227019 (= res!2219027 (not (is-ElementMatch!14816 (regOne!30144 r!7292))))))

(assert (=> b!5227019 (= e!3253117 e!3253120)))

(declare-fun b!5227020 () Bool)

(assert (=> b!5227020 (= e!3253120 e!3253115)))

(declare-fun res!2219025 () Bool)

(assert (=> b!5227020 (=> (not res!2219025) (not e!3253115))))

(assert (=> b!5227020 (= res!2219025 (not lt!2144487))))

(declare-fun b!5227021 () Bool)

(assert (=> b!5227021 (= e!3253121 (not (= (head!11200 (_1!35318 (get!20834 lt!2144428))) (c!902205 (regOne!30144 r!7292)))))))

(declare-fun b!5227022 () Bool)

(assert (=> b!5227022 (= e!3253119 (nullable!4985 (regOne!30144 r!7292)))))

(assert (= (and d!1685136 c!902481) b!5227022))

(assert (= (and d!1685136 (not c!902481)) b!5227013))

(assert (= (and d!1685136 c!902479) b!5227018))

(assert (= (and d!1685136 (not c!902479)) b!5227010))

(assert (= (and b!5227010 c!902480) b!5227011))

(assert (= (and b!5227010 (not c!902480)) b!5227019))

(assert (= (and b!5227019 (not res!2219027)) b!5227014))

(assert (= (and b!5227014 res!2219026) b!5227015))

(assert (= (and b!5227015 res!2219030) b!5227017))

(assert (= (and b!5227017 res!2219031) b!5227012))

(assert (= (and b!5227014 (not res!2219029)) b!5227020))

(assert (= (and b!5227020 res!2219025) b!5227016))

(assert (= (and b!5227016 (not res!2219032)) b!5227009))

(assert (= (and b!5227009 (not res!2219028)) b!5227021))

(assert (= (or b!5227018 b!5227015 b!5227016) bm!369393))

(declare-fun m!6273528 () Bool)

(assert (=> b!5227022 m!6273528))

(declare-fun m!6273530 () Bool)

(assert (=> bm!369393 m!6273530))

(declare-fun m!6273532 () Bool)

(assert (=> b!5227017 m!6273532))

(assert (=> b!5227017 m!6273532))

(declare-fun m!6273534 () Bool)

(assert (=> b!5227017 m!6273534))

(declare-fun m!6273536 () Bool)

(assert (=> b!5227021 m!6273536))

(assert (=> b!5227012 m!6273536))

(assert (=> b!5227009 m!6273532))

(assert (=> b!5227009 m!6273532))

(assert (=> b!5227009 m!6273534))

(assert (=> d!1685136 m!6273530))

(assert (=> d!1685136 m!6273028))

(assert (=> b!5227013 m!6273536))

(assert (=> b!5227013 m!6273536))

(declare-fun m!6273538 () Bool)

(assert (=> b!5227013 m!6273538))

(assert (=> b!5227013 m!6273532))

(assert (=> b!5227013 m!6273538))

(assert (=> b!5227013 m!6273532))

(declare-fun m!6273540 () Bool)

(assert (=> b!5227013 m!6273540))

(assert (=> b!5226353 d!1685136))

(declare-fun d!1685138 () Bool)

(assert (=> d!1685138 (= (get!20834 lt!2144428) (v!50955 lt!2144428))))

(assert (=> b!5226353 d!1685138))

(declare-fun d!1685140 () Bool)

(assert (=> d!1685140 (= (isEmpty!32551 (t!373924 s!2326)) (is-Nil!60625 (t!373924 s!2326)))))

(assert (=> d!1684898 d!1685140))

(declare-fun bs!1213574 () Bool)

(declare-fun b!5227027 () Bool)

(assert (= bs!1213574 (and b!5227027 b!5225955)))

(declare-fun lambda!262465 () Int)

(assert (=> bs!1213574 (not (= lambda!262465 lambda!262381))))

(declare-fun bs!1213575 () Bool)

(assert (= bs!1213575 (and b!5227027 d!1684922)))

(assert (=> bs!1213575 (not (= lambda!262465 lambda!262418))))

(assert (=> bs!1213574 (not (= lambda!262465 lambda!262380))))

(declare-fun bs!1213576 () Bool)

(assert (= bs!1213576 (and b!5227027 b!5226242)))

(assert (=> bs!1213576 (not (= lambda!262465 lambda!262412))))

(declare-fun bs!1213577 () Bool)

(assert (= bs!1213577 (and b!5227027 d!1684924)))

(assert (=> bs!1213577 (not (= lambda!262465 lambda!262424))))

(assert (=> bs!1213577 (not (= lambda!262465 lambda!262423))))

(declare-fun bs!1213578 () Bool)

(assert (= bs!1213578 (and b!5227027 b!5226246)))

(assert (=> bs!1213578 (= (and (= (reg!15145 (regTwo!30145 r!7292)) (reg!15145 r!7292)) (= (regTwo!30145 r!7292) r!7292)) (= lambda!262465 lambda!262411))))

(assert (=> b!5227027 true))

(assert (=> b!5227027 true))

(declare-fun bs!1213579 () Bool)

(declare-fun b!5227023 () Bool)

(assert (= bs!1213579 (and b!5227023 b!5225955)))

(declare-fun lambda!262466 () Int)

(assert (=> bs!1213579 (= (and (= (regOne!30144 (regTwo!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regTwo!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262466 lambda!262381))))

(declare-fun bs!1213580 () Bool)

(assert (= bs!1213580 (and b!5227023 d!1684922)))

(assert (=> bs!1213580 (not (= lambda!262466 lambda!262418))))

(assert (=> bs!1213579 (not (= lambda!262466 lambda!262380))))

(declare-fun bs!1213581 () Bool)

(assert (= bs!1213581 (and b!5227023 b!5226242)))

(assert (=> bs!1213581 (= (and (= (regOne!30144 (regTwo!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regTwo!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262466 lambda!262412))))

(declare-fun bs!1213582 () Bool)

(assert (= bs!1213582 (and b!5227023 d!1684924)))

(assert (=> bs!1213582 (= (and (= (regOne!30144 (regTwo!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regTwo!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262466 lambda!262424))))

(declare-fun bs!1213583 () Bool)

(assert (= bs!1213583 (and b!5227023 b!5226246)))

(assert (=> bs!1213583 (not (= lambda!262466 lambda!262411))))

(assert (=> bs!1213582 (not (= lambda!262466 lambda!262423))))

(declare-fun bs!1213584 () Bool)

(assert (= bs!1213584 (and b!5227023 b!5227027)))

(assert (=> bs!1213584 (not (= lambda!262466 lambda!262465))))

(assert (=> b!5227023 true))

(assert (=> b!5227023 true))

(declare-fun e!3253128 () Bool)

(declare-fun call!369399 () Bool)

(assert (=> b!5227023 (= e!3253128 call!369399)))

(declare-fun b!5227024 () Bool)

(declare-fun e!3253127 () Bool)

(assert (=> b!5227024 (= e!3253127 (matchRSpec!1919 (regTwo!30145 (regTwo!30145 r!7292)) s!2326))))

(declare-fun b!5227025 () Bool)

(declare-fun c!902482 () Bool)

(assert (=> b!5227025 (= c!902482 (is-Union!14816 (regTwo!30145 r!7292)))))

(declare-fun e!3253123 () Bool)

(declare-fun e!3253122 () Bool)

(assert (=> b!5227025 (= e!3253123 e!3253122)))

(declare-fun b!5227026 () Bool)

(assert (=> b!5227026 (= e!3253122 e!3253128)))

(declare-fun c!902484 () Bool)

(assert (=> b!5227026 (= c!902484 (is-Star!14816 (regTwo!30145 r!7292)))))

(declare-fun bm!369394 () Bool)

(declare-fun call!369400 () Bool)

(assert (=> bm!369394 (= call!369400 (isEmpty!32551 s!2326))))

(declare-fun e!3253124 () Bool)

(assert (=> b!5227027 (= e!3253124 call!369399)))

(declare-fun b!5227028 () Bool)

(declare-fun e!3253126 () Bool)

(assert (=> b!5227028 (= e!3253126 call!369400)))

(declare-fun b!5227029 () Bool)

(assert (=> b!5227029 (= e!3253123 (= s!2326 (Cons!60625 (c!902205 (regTwo!30145 r!7292)) Nil!60625)))))

(declare-fun b!5227030 () Bool)

(assert (=> b!5227030 (= e!3253122 e!3253127)))

(declare-fun res!2219035 () Bool)

(assert (=> b!5227030 (= res!2219035 (matchRSpec!1919 (regOne!30145 (regTwo!30145 r!7292)) s!2326))))

(assert (=> b!5227030 (=> res!2219035 e!3253127)))

(declare-fun b!5227031 () Bool)

(declare-fun res!2219033 () Bool)

(assert (=> b!5227031 (=> res!2219033 e!3253124)))

(assert (=> b!5227031 (= res!2219033 call!369400)))

(assert (=> b!5227031 (= e!3253128 e!3253124)))

(declare-fun b!5227032 () Bool)

(declare-fun c!902485 () Bool)

(assert (=> b!5227032 (= c!902485 (is-ElementMatch!14816 (regTwo!30145 r!7292)))))

(declare-fun e!3253125 () Bool)

(assert (=> b!5227032 (= e!3253125 e!3253123)))

(declare-fun d!1685142 () Bool)

(declare-fun c!902483 () Bool)

(assert (=> d!1685142 (= c!902483 (is-EmptyExpr!14816 (regTwo!30145 r!7292)))))

(assert (=> d!1685142 (= (matchRSpec!1919 (regTwo!30145 r!7292) s!2326) e!3253126)))

(declare-fun b!5227033 () Bool)

(assert (=> b!5227033 (= e!3253126 e!3253125)))

(declare-fun res!2219034 () Bool)

(assert (=> b!5227033 (= res!2219034 (not (is-EmptyLang!14816 (regTwo!30145 r!7292))))))

(assert (=> b!5227033 (=> (not res!2219034) (not e!3253125))))

(declare-fun bm!369395 () Bool)

(assert (=> bm!369395 (= call!369399 (Exists!1997 (ite c!902484 lambda!262465 lambda!262466)))))

(assert (= (and d!1685142 c!902483) b!5227028))

(assert (= (and d!1685142 (not c!902483)) b!5227033))

(assert (= (and b!5227033 res!2219034) b!5227032))

(assert (= (and b!5227032 c!902485) b!5227029))

(assert (= (and b!5227032 (not c!902485)) b!5227025))

(assert (= (and b!5227025 c!902482) b!5227030))

(assert (= (and b!5227025 (not c!902482)) b!5227026))

(assert (= (and b!5227030 (not res!2219035)) b!5227024))

(assert (= (and b!5227026 c!902484) b!5227031))

(assert (= (and b!5227026 (not c!902484)) b!5227023))

(assert (= (and b!5227031 (not res!2219033)) b!5227027))

(assert (= (or b!5227027 b!5227023) bm!369395))

(assert (= (or b!5227028 b!5227031) bm!369394))

(declare-fun m!6273542 () Bool)

(assert (=> b!5227024 m!6273542))

(assert (=> bm!369394 m!6272954))

(declare-fun m!6273544 () Bool)

(assert (=> b!5227030 m!6273544))

(declare-fun m!6273546 () Bool)

(assert (=> bm!369395 m!6273546))

(assert (=> b!5226243 d!1685142))

(declare-fun d!1685144 () Bool)

(assert (=> d!1685144 true))

(declare-fun setRes!33274 () Bool)

(assert (=> d!1685144 setRes!33274))

(declare-fun condSetEmpty!33274 () Bool)

(declare-fun res!2219038 () (Set Context!8400))

(assert (=> d!1685144 (= condSetEmpty!33274 (= res!2219038 (as set.empty (Set Context!8400))))))

(assert (=> d!1685144 (= (choose!38869 z!1189 lambda!262382) res!2219038)))

(declare-fun setIsEmpty!33274 () Bool)

(assert (=> setIsEmpty!33274 setRes!33274))

(declare-fun tp!1464939 () Bool)

(declare-fun setElem!33274 () Context!8400)

(declare-fun setNonEmpty!33274 () Bool)

(declare-fun e!3253131 () Bool)

(assert (=> setNonEmpty!33274 (= setRes!33274 (and tp!1464939 (inv!80288 setElem!33274) e!3253131))))

(declare-fun setRest!33274 () (Set Context!8400))

(assert (=> setNonEmpty!33274 (= res!2219038 (set.union (set.insert setElem!33274 (as set.empty (Set Context!8400))) setRest!33274))))

(declare-fun b!5227036 () Bool)

(declare-fun tp!1464938 () Bool)

(assert (=> b!5227036 (= e!3253131 tp!1464938)))

(assert (= (and d!1685144 condSetEmpty!33274) setIsEmpty!33274))

(assert (= (and d!1685144 (not condSetEmpty!33274)) setNonEmpty!33274))

(assert (= setNonEmpty!33274 b!5227036))

(declare-fun m!6273548 () Bool)

(assert (=> setNonEmpty!33274 m!6273548))

(assert (=> d!1684912 d!1685144))

(declare-fun b!5227037 () Bool)

(declare-fun e!3253132 () Bool)

(declare-fun e!3253134 () Bool)

(assert (=> b!5227037 (= e!3253132 e!3253134)))

(declare-fun res!2219043 () Bool)

(assert (=> b!5227037 (=> (not res!2219043) (not e!3253134))))

(assert (=> b!5227037 (= res!2219043 (and (not (is-EmptyLang!14816 (regOne!30145 (regOne!30144 r!7292)))) (not (is-ElementMatch!14816 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227038 () Bool)

(declare-fun e!3253135 () Bool)

(declare-fun call!369402 () Bool)

(assert (=> b!5227038 (= e!3253135 call!369402)))

(declare-fun b!5227039 () Bool)

(declare-fun e!3253133 () Bool)

(assert (=> b!5227039 (= e!3253134 e!3253133)))

(declare-fun res!2219041 () Bool)

(assert (=> b!5227039 (=> res!2219041 e!3253133)))

(assert (=> b!5227039 (= res!2219041 (is-Star!14816 (regOne!30145 (regOne!30144 r!7292))))))

(declare-fun bm!369396 () Bool)

(declare-fun call!369401 () Bool)

(declare-fun c!902486 () Bool)

(assert (=> bm!369396 (= call!369401 (nullable!4985 (ite c!902486 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227040 () Bool)

(declare-fun e!3253136 () Bool)

(assert (=> b!5227040 (= e!3253136 call!369402)))

(declare-fun b!5227041 () Bool)

(declare-fun e!3253137 () Bool)

(assert (=> b!5227041 (= e!3253137 e!3253135)))

(declare-fun res!2219040 () Bool)

(assert (=> b!5227041 (= res!2219040 call!369401)))

(assert (=> b!5227041 (=> (not res!2219040) (not e!3253135))))

(declare-fun d!1685146 () Bool)

(declare-fun res!2219039 () Bool)

(assert (=> d!1685146 (=> res!2219039 e!3253132)))

(assert (=> d!1685146 (= res!2219039 (is-EmptyExpr!14816 (regOne!30145 (regOne!30144 r!7292))))))

(assert (=> d!1685146 (= (nullableFct!1392 (regOne!30145 (regOne!30144 r!7292))) e!3253132)))

(declare-fun b!5227042 () Bool)

(assert (=> b!5227042 (= e!3253137 e!3253136)))

(declare-fun res!2219042 () Bool)

(assert (=> b!5227042 (= res!2219042 call!369401)))

(assert (=> b!5227042 (=> res!2219042 e!3253136)))

(declare-fun bm!369397 () Bool)

(assert (=> bm!369397 (= call!369402 (nullable!4985 (ite c!902486 (regTwo!30145 (regOne!30145 (regOne!30144 r!7292))) (regTwo!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227043 () Bool)

(assert (=> b!5227043 (= e!3253133 e!3253137)))

(assert (=> b!5227043 (= c!902486 (is-Union!14816 (regOne!30145 (regOne!30144 r!7292))))))

(assert (= (and d!1685146 (not res!2219039)) b!5227037))

(assert (= (and b!5227037 res!2219043) b!5227039))

(assert (= (and b!5227039 (not res!2219041)) b!5227043))

(assert (= (and b!5227043 c!902486) b!5227042))

(assert (= (and b!5227043 (not c!902486)) b!5227041))

(assert (= (and b!5227042 (not res!2219042)) b!5227040))

(assert (= (and b!5227041 res!2219040) b!5227038))

(assert (= (or b!5227040 b!5227038) bm!369397))

(assert (= (or b!5227042 b!5227041) bm!369396))

(declare-fun m!6273550 () Bool)

(assert (=> bm!369396 m!6273550))

(declare-fun m!6273552 () Bool)

(assert (=> bm!369397 m!6273552))

(assert (=> d!1684950 d!1685146))

(assert (=> b!5226119 d!1684864))

(assert (=> bs!1213496 d!1684952))

(assert (=> d!1684944 d!1684948))

(declare-fun d!1685148 () Bool)

(assert (=> d!1685148 (= (flatMap!543 lt!2144296 lambda!262382) (dynLambda!23956 lambda!262382 lt!2144297))))

(assert (=> d!1685148 true))

(declare-fun _$13!1744 () Unit!152546)

(assert (=> d!1685148 (= (choose!38868 lt!2144296 lt!2144297 lambda!262382) _$13!1744)))

(declare-fun b_lambda!202101 () Bool)

(assert (=> (not b_lambda!202101) (not d!1685148)))

(declare-fun bs!1213585 () Bool)

(assert (= bs!1213585 d!1685148))

(assert (=> bs!1213585 m!6272732))

(assert (=> bs!1213585 m!6273090))

(assert (=> d!1684944 d!1685148))

(declare-fun d!1685150 () Bool)

(assert (=> d!1685150 (= ($colon$colon!1290 (exprs!4700 lt!2144293) (ite (or c!902251 c!902249) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30145 (regOne!30144 r!7292)))) (Cons!60623 (ite (or c!902251 c!902249) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30145 (regOne!30144 r!7292))) (exprs!4700 lt!2144293)))))

(assert (=> bm!369260 d!1685150))

(declare-fun d!1685152 () Bool)

(declare-fun res!2219044 () Bool)

(declare-fun e!3253138 () Bool)

(assert (=> d!1685152 (=> res!2219044 e!3253138)))

(assert (=> d!1685152 (= res!2219044 (is-Nil!60623 (exprs!4700 (h!67072 zl!343))))))

(assert (=> d!1685152 (= (forall!14248 (exprs!4700 (h!67072 zl!343)) lambda!262415) e!3253138)))

(declare-fun b!5227044 () Bool)

(declare-fun e!3253139 () Bool)

(assert (=> b!5227044 (= e!3253138 e!3253139)))

(declare-fun res!2219045 () Bool)

(assert (=> b!5227044 (=> (not res!2219045) (not e!3253139))))

(assert (=> b!5227044 (= res!2219045 (dynLambda!23958 lambda!262415 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5227045 () Bool)

(assert (=> b!5227045 (= e!3253139 (forall!14248 (t!373922 (exprs!4700 (h!67072 zl!343))) lambda!262415))))

(assert (= (and d!1685152 (not res!2219044)) b!5227044))

(assert (= (and b!5227044 res!2219045) b!5227045))

(declare-fun b_lambda!202103 () Bool)

(assert (=> (not b_lambda!202103) (not b!5227044)))

(declare-fun m!6273554 () Bool)

(assert (=> b!5227044 m!6273554))

(declare-fun m!6273556 () Bool)

(assert (=> b!5227045 m!6273556))

(assert (=> d!1684900 d!1685152))

(declare-fun d!1685154 () Bool)

(assert (=> d!1685154 (= (head!11199 (exprs!4700 (h!67072 zl!343))) (h!67071 (exprs!4700 (h!67072 zl!343))))))

(assert (=> b!5226107 d!1685154))

(declare-fun b!5227046 () Bool)

(declare-fun e!3253140 () Bool)

(assert (=> b!5227046 (= e!3253140 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343))))))))))

(declare-fun b!5227047 () Bool)

(declare-fun e!3253142 () (Set Context!8400))

(assert (=> b!5227047 (= e!3253142 (as set.empty (Set Context!8400)))))

(declare-fun bm!369398 () Bool)

(declare-fun call!369403 () (Set Context!8400))

(assert (=> bm!369398 (= call!369403 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343))))))) (h!67073 s!2326)))))

(declare-fun b!5227048 () Bool)

(declare-fun e!3253141 () (Set Context!8400))

(assert (=> b!5227048 (= e!3253141 (set.union call!369403 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343))))))) (h!67073 s!2326))))))

(declare-fun d!1685156 () Bool)

(declare-fun c!902487 () Bool)

(assert (=> d!1685156 (= c!902487 e!3253140)))

(declare-fun res!2219046 () Bool)

(assert (=> d!1685156 (=> (not res!2219046) (not e!3253140))))

(assert (=> d!1685156 (= res!2219046 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))))))))

(assert (=> d!1685156 (= (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326)) e!3253141)))

(declare-fun b!5227049 () Bool)

(assert (=> b!5227049 (= e!3253141 e!3253142)))

(declare-fun c!902488 () Bool)

(assert (=> b!5227049 (= c!902488 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5227050 () Bool)

(assert (=> b!5227050 (= e!3253142 call!369403)))

(assert (= (and d!1685156 res!2219046) b!5227046))

(assert (= (and d!1685156 c!902487) b!5227048))

(assert (= (and d!1685156 (not c!902487)) b!5227049))

(assert (= (and b!5227049 c!902488) b!5227050))

(assert (= (and b!5227049 (not c!902488)) b!5227047))

(assert (= (or b!5227048 b!5227050) bm!369398))

(declare-fun m!6273558 () Bool)

(assert (=> b!5227046 m!6273558))

(declare-fun m!6273560 () Bool)

(assert (=> bm!369398 m!6273560))

(declare-fun m!6273562 () Bool)

(assert (=> b!5227048 m!6273562))

(assert (=> b!5226319 d!1685156))

(declare-fun d!1685158 () Bool)

(assert (=> d!1685158 (= (nullable!4985 (h!67071 (exprs!4700 lt!2144297))) (nullableFct!1392 (h!67071 (exprs!4700 lt!2144297))))))

(declare-fun bs!1213586 () Bool)

(assert (= bs!1213586 d!1685158))

(declare-fun m!6273564 () Bool)

(assert (=> bs!1213586 m!6273564))

(assert (=> b!5226413 d!1685158))

(declare-fun b!5227051 () Bool)

(declare-fun e!3253143 () Bool)

(assert (=> b!5227051 (= e!3253143 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293)))))))))

(declare-fun b!5227052 () Bool)

(declare-fun e!3253145 () (Set Context!8400))

(assert (=> b!5227052 (= e!3253145 (as set.empty (Set Context!8400)))))

(declare-fun bm!369399 () Bool)

(declare-fun call!369404 () (Set Context!8400))

(assert (=> bm!369399 (= call!369404 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293)))))) (h!67073 s!2326)))))

(declare-fun e!3253144 () (Set Context!8400))

(declare-fun b!5227053 () Bool)

(assert (=> b!5227053 (= e!3253144 (set.union call!369404 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293)))))) (h!67073 s!2326))))))

(declare-fun d!1685160 () Bool)

(declare-fun c!902489 () Bool)

(assert (=> d!1685160 (= c!902489 e!3253143)))

(declare-fun res!2219047 () Bool)

(assert (=> d!1685160 (=> (not res!2219047) (not e!3253143))))

(assert (=> d!1685160 (= res!2219047 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293))))))))

(assert (=> d!1685160 (= (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (h!67073 s!2326)) e!3253144)))

(declare-fun b!5227054 () Bool)

(assert (=> b!5227054 (= e!3253144 e!3253145)))

(declare-fun c!902490 () Bool)

(assert (=> b!5227054 (= c!902490 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293))))))))

(declare-fun b!5227055 () Bool)

(assert (=> b!5227055 (= e!3253145 call!369404)))

(assert (= (and d!1685160 res!2219047) b!5227051))

(assert (= (and d!1685160 c!902489) b!5227053))

(assert (= (and d!1685160 (not c!902489)) b!5227054))

(assert (= (and b!5227054 c!902490) b!5227055))

(assert (= (and b!5227054 (not c!902490)) b!5227052))

(assert (= (or b!5227053 b!5227055) bm!369399))

(declare-fun m!6273566 () Bool)

(assert (=> b!5227051 m!6273566))

(declare-fun m!6273568 () Bool)

(assert (=> bm!369399 m!6273568))

(declare-fun m!6273570 () Bool)

(assert (=> b!5227053 m!6273570))

(assert (=> b!5226314 d!1685160))

(declare-fun b!5227056 () Bool)

(declare-fun e!3253146 () Bool)

(assert (=> b!5227056 (= e!3253146 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))))))

(declare-fun b!5227057 () Bool)

(declare-fun e!3253148 () (Set Context!8400))

(assert (=> b!5227057 (= e!3253148 (as set.empty (Set Context!8400)))))

(declare-fun bm!369400 () Bool)

(declare-fun call!369405 () (Set Context!8400))

(assert (=> bm!369400 (= call!369405 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))) (h!67073 s!2326)))))

(declare-fun e!3253147 () (Set Context!8400))

(declare-fun b!5227058 () Bool)

(assert (=> b!5227058 (= e!3253147 (set.union call!369405 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))) (h!67073 s!2326))))))

(declare-fun d!1685162 () Bool)

(declare-fun c!902491 () Bool)

(assert (=> d!1685162 (= c!902491 e!3253146)))

(declare-fun res!2219048 () Bool)

(assert (=> d!1685162 (=> (not res!2219048) (not e!3253146))))

(assert (=> d!1685162 (= res!2219048 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))))

(assert (=> d!1685162 (= (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326)) e!3253147)))

(declare-fun b!5227059 () Bool)

(assert (=> b!5227059 (= e!3253147 e!3253148)))

(declare-fun c!902492 () Bool)

(assert (=> b!5227059 (= c!902492 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))))

(declare-fun b!5227060 () Bool)

(assert (=> b!5227060 (= e!3253148 call!369405)))

(assert (= (and d!1685162 res!2219048) b!5227056))

(assert (= (and d!1685162 c!902491) b!5227058))

(assert (= (and d!1685162 (not c!902491)) b!5227059))

(assert (= (and b!5227059 c!902492) b!5227060))

(assert (= (and b!5227059 (not c!902492)) b!5227057))

(assert (= (or b!5227058 b!5227060) bm!369400))

(declare-fun m!6273572 () Bool)

(assert (=> b!5227056 m!6273572))

(declare-fun m!6273574 () Bool)

(assert (=> bm!369400 m!6273574))

(declare-fun m!6273576 () Bool)

(assert (=> b!5227058 m!6273576))

(assert (=> b!5226309 d!1685162))

(declare-fun d!1685164 () Bool)

(assert (=> d!1685164 (= (nullable!4985 (h!67071 (exprs!4700 lt!2144289))) (nullableFct!1392 (h!67071 (exprs!4700 lt!2144289))))))

(declare-fun bs!1213587 () Bool)

(assert (= bs!1213587 d!1685164))

(declare-fun m!6273578 () Bool)

(assert (=> bs!1213587 m!6273578))

(assert (=> b!5226418 d!1685164))

(declare-fun d!1685166 () Bool)

(assert (=> d!1685166 (= (isEmpty!32552 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326)) (not (is-Some!14926 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326))))))

(assert (=> d!1684926 d!1685166))

(declare-fun d!1685168 () Bool)

(assert (=> d!1685168 (= (nullable!4985 r!7292) (nullableFct!1392 r!7292))))

(declare-fun bs!1213588 () Bool)

(assert (= bs!1213588 d!1685168))

(declare-fun m!6273580 () Bool)

(assert (=> bs!1213588 m!6273580))

(assert (=> b!5226294 d!1685168))

(assert (=> d!1684916 d!1685116))

(declare-fun b!5227061 () Bool)

(declare-fun res!2219052 () Bool)

(declare-fun e!3253155 () Bool)

(assert (=> b!5227061 (=> res!2219052 e!3253155)))

(assert (=> b!5227061 (= res!2219052 (not (isEmpty!32551 (tail!10297 Nil!60625))))))

(declare-fun bm!369401 () Bool)

(declare-fun call!369406 () Bool)

(assert (=> bm!369401 (= call!369406 (isEmpty!32551 Nil!60625))))

(declare-fun b!5227062 () Bool)

(declare-fun e!3253152 () Bool)

(declare-fun e!3253151 () Bool)

(assert (=> b!5227062 (= e!3253152 e!3253151)))

(declare-fun c!902494 () Bool)

(assert (=> b!5227062 (= c!902494 (is-EmptyLang!14816 (regOne!30144 r!7292)))))

(declare-fun b!5227063 () Bool)

(declare-fun lt!2144488 () Bool)

(assert (=> b!5227063 (= e!3253151 (not lt!2144488))))

(declare-fun b!5227064 () Bool)

(declare-fun e!3253150 () Bool)

(assert (=> b!5227064 (= e!3253150 (= (head!11200 Nil!60625) (c!902205 (regOne!30144 r!7292))))))

(declare-fun b!5227065 () Bool)

(declare-fun e!3253153 () Bool)

(assert (=> b!5227065 (= e!3253153 (matchR!7001 (derivativeStep!4062 (regOne!30144 r!7292) (head!11200 Nil!60625)) (tail!10297 Nil!60625)))))

(declare-fun d!1685170 () Bool)

(assert (=> d!1685170 e!3253152))

(declare-fun c!902493 () Bool)

(assert (=> d!1685170 (= c!902493 (is-EmptyExpr!14816 (regOne!30144 r!7292)))))

(assert (=> d!1685170 (= lt!2144488 e!3253153)))

(declare-fun c!902495 () Bool)

(assert (=> d!1685170 (= c!902495 (isEmpty!32551 Nil!60625))))

(assert (=> d!1685170 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1685170 (= (matchR!7001 (regOne!30144 r!7292) Nil!60625) lt!2144488)))

(declare-fun b!5227066 () Bool)

(declare-fun res!2219053 () Bool)

(declare-fun e!3253154 () Bool)

(assert (=> b!5227066 (=> res!2219053 e!3253154)))

(assert (=> b!5227066 (= res!2219053 e!3253150)))

(declare-fun res!2219050 () Bool)

(assert (=> b!5227066 (=> (not res!2219050) (not e!3253150))))

(assert (=> b!5227066 (= res!2219050 lt!2144488)))

(declare-fun b!5227067 () Bool)

(declare-fun res!2219054 () Bool)

(assert (=> b!5227067 (=> (not res!2219054) (not e!3253150))))

(assert (=> b!5227067 (= res!2219054 (not call!369406))))

(declare-fun b!5227068 () Bool)

(declare-fun e!3253149 () Bool)

(assert (=> b!5227068 (= e!3253149 e!3253155)))

(declare-fun res!2219056 () Bool)

(assert (=> b!5227068 (=> res!2219056 e!3253155)))

(assert (=> b!5227068 (= res!2219056 call!369406)))

(declare-fun b!5227069 () Bool)

(declare-fun res!2219055 () Bool)

(assert (=> b!5227069 (=> (not res!2219055) (not e!3253150))))

(assert (=> b!5227069 (= res!2219055 (isEmpty!32551 (tail!10297 Nil!60625)))))

(declare-fun b!5227070 () Bool)

(assert (=> b!5227070 (= e!3253152 (= lt!2144488 call!369406))))

(declare-fun b!5227071 () Bool)

(declare-fun res!2219051 () Bool)

(assert (=> b!5227071 (=> res!2219051 e!3253154)))

(assert (=> b!5227071 (= res!2219051 (not (is-ElementMatch!14816 (regOne!30144 r!7292))))))

(assert (=> b!5227071 (= e!3253151 e!3253154)))

(declare-fun b!5227072 () Bool)

(assert (=> b!5227072 (= e!3253154 e!3253149)))

(declare-fun res!2219049 () Bool)

(assert (=> b!5227072 (=> (not res!2219049) (not e!3253149))))

(assert (=> b!5227072 (= res!2219049 (not lt!2144488))))

(declare-fun b!5227073 () Bool)

(assert (=> b!5227073 (= e!3253155 (not (= (head!11200 Nil!60625) (c!902205 (regOne!30144 r!7292)))))))

(declare-fun b!5227074 () Bool)

(assert (=> b!5227074 (= e!3253153 (nullable!4985 (regOne!30144 r!7292)))))

(assert (= (and d!1685170 c!902495) b!5227074))

(assert (= (and d!1685170 (not c!902495)) b!5227065))

(assert (= (and d!1685170 c!902493) b!5227070))

(assert (= (and d!1685170 (not c!902493)) b!5227062))

(assert (= (and b!5227062 c!902494) b!5227063))

(assert (= (and b!5227062 (not c!902494)) b!5227071))

(assert (= (and b!5227071 (not res!2219051)) b!5227066))

(assert (= (and b!5227066 res!2219050) b!5227067))

(assert (= (and b!5227067 res!2219054) b!5227069))

(assert (= (and b!5227069 res!2219055) b!5227064))

(assert (= (and b!5227066 (not res!2219053)) b!5227072))

(assert (= (and b!5227072 res!2219049) b!5227068))

(assert (= (and b!5227068 (not res!2219056)) b!5227061))

(assert (= (and b!5227061 (not res!2219052)) b!5227073))

(assert (= (or b!5227070 b!5227067 b!5227068) bm!369401))

(assert (=> b!5227074 m!6273528))

(declare-fun m!6273582 () Bool)

(assert (=> bm!369401 m!6273582))

(declare-fun m!6273584 () Bool)

(assert (=> b!5227069 m!6273584))

(assert (=> b!5227069 m!6273584))

(declare-fun m!6273586 () Bool)

(assert (=> b!5227069 m!6273586))

(declare-fun m!6273588 () Bool)

(assert (=> b!5227073 m!6273588))

(assert (=> b!5227064 m!6273588))

(assert (=> b!5227061 m!6273584))

(assert (=> b!5227061 m!6273584))

(assert (=> b!5227061 m!6273586))

(assert (=> d!1685170 m!6273582))

(assert (=> d!1685170 m!6273028))

(assert (=> b!5227065 m!6273588))

(assert (=> b!5227065 m!6273588))

(declare-fun m!6273590 () Bool)

(assert (=> b!5227065 m!6273590))

(assert (=> b!5227065 m!6273584))

(assert (=> b!5227065 m!6273590))

(assert (=> b!5227065 m!6273584))

(declare-fun m!6273592 () Bool)

(assert (=> b!5227065 m!6273592))

(assert (=> d!1684916 d!1685170))

(declare-fun b!5227075 () Bool)

(declare-fun e!3253161 () Bool)

(declare-fun call!369407 () Bool)

(assert (=> b!5227075 (= e!3253161 call!369407)))

(declare-fun b!5227076 () Bool)

(declare-fun e!3253159 () Bool)

(assert (=> b!5227076 (= e!3253159 call!369407)))

(declare-fun c!902496 () Bool)

(declare-fun call!369409 () Bool)

(declare-fun bm!369402 () Bool)

(declare-fun c!902497 () Bool)

(assert (=> bm!369402 (= call!369409 (validRegex!6552 (ite c!902496 (reg!15145 (regOne!30144 r!7292)) (ite c!902497 (regTwo!30145 (regOne!30144 r!7292)) (regTwo!30144 (regOne!30144 r!7292))))))))

(declare-fun bm!369403 () Bool)

(assert (=> bm!369403 (= call!369407 call!369409)))

(declare-fun b!5227077 () Bool)

(declare-fun e!3253157 () Bool)

(assert (=> b!5227077 (= e!3253157 call!369409)))

(declare-fun b!5227079 () Bool)

(declare-fun res!2219060 () Bool)

(declare-fun e!3253160 () Bool)

(assert (=> b!5227079 (=> res!2219060 e!3253160)))

(assert (=> b!5227079 (= res!2219060 (not (is-Concat!23661 (regOne!30144 r!7292))))))

(declare-fun e!3253156 () Bool)

(assert (=> b!5227079 (= e!3253156 e!3253160)))

(declare-fun b!5227080 () Bool)

(assert (=> b!5227080 (= e!3253160 e!3253161)))

(declare-fun res!2219057 () Bool)

(assert (=> b!5227080 (=> (not res!2219057) (not e!3253161))))

(declare-fun call!369408 () Bool)

(assert (=> b!5227080 (= res!2219057 call!369408)))

(declare-fun b!5227081 () Bool)

(declare-fun res!2219059 () Bool)

(assert (=> b!5227081 (=> (not res!2219059) (not e!3253159))))

(assert (=> b!5227081 (= res!2219059 call!369408)))

(assert (=> b!5227081 (= e!3253156 e!3253159)))

(declare-fun bm!369404 () Bool)

(assert (=> bm!369404 (= call!369408 (validRegex!6552 (ite c!902497 (regOne!30145 (regOne!30144 r!7292)) (regOne!30144 (regOne!30144 r!7292)))))))

(declare-fun d!1685172 () Bool)

(declare-fun res!2219061 () Bool)

(declare-fun e!3253162 () Bool)

(assert (=> d!1685172 (=> res!2219061 e!3253162)))

(assert (=> d!1685172 (= res!2219061 (is-ElementMatch!14816 (regOne!30144 r!7292)))))

(assert (=> d!1685172 (= (validRegex!6552 (regOne!30144 r!7292)) e!3253162)))

(declare-fun b!5227078 () Bool)

(declare-fun e!3253158 () Bool)

(assert (=> b!5227078 (= e!3253158 e!3253156)))

(assert (=> b!5227078 (= c!902497 (is-Union!14816 (regOne!30144 r!7292)))))

(declare-fun b!5227082 () Bool)

(assert (=> b!5227082 (= e!3253162 e!3253158)))

(assert (=> b!5227082 (= c!902496 (is-Star!14816 (regOne!30144 r!7292)))))

(declare-fun b!5227083 () Bool)

(assert (=> b!5227083 (= e!3253158 e!3253157)))

(declare-fun res!2219058 () Bool)

(assert (=> b!5227083 (= res!2219058 (not (nullable!4985 (reg!15145 (regOne!30144 r!7292)))))))

(assert (=> b!5227083 (=> (not res!2219058) (not e!3253157))))

(assert (= (and d!1685172 (not res!2219061)) b!5227082))

(assert (= (and b!5227082 c!902496) b!5227083))

(assert (= (and b!5227082 (not c!902496)) b!5227078))

(assert (= (and b!5227083 res!2219058) b!5227077))

(assert (= (and b!5227078 c!902497) b!5227081))

(assert (= (and b!5227078 (not c!902497)) b!5227079))

(assert (= (and b!5227081 res!2219059) b!5227076))

(assert (= (and b!5227079 (not res!2219060)) b!5227080))

(assert (= (and b!5227080 res!2219057) b!5227075))

(assert (= (or b!5227076 b!5227075) bm!369403))

(assert (= (or b!5227081 b!5227080) bm!369404))

(assert (= (or b!5227077 bm!369403) bm!369402))

(declare-fun m!6273594 () Bool)

(assert (=> bm!369402 m!6273594))

(declare-fun m!6273596 () Bool)

(assert (=> bm!369404 m!6273596))

(declare-fun m!6273598 () Bool)

(assert (=> b!5227083 m!6273598))

(assert (=> d!1684916 d!1685172))

(assert (=> d!1684888 d!1685140))

(assert (=> d!1684902 d!1684912))

(declare-fun d!1685174 () Bool)

(assert (=> d!1685174 (= (flatMap!543 z!1189 lambda!262382) (dynLambda!23956 lambda!262382 (h!67072 zl!343)))))

(assert (=> d!1685174 true))

(declare-fun _$13!1745 () Unit!152546)

(assert (=> d!1685174 (= (choose!38868 z!1189 (h!67072 zl!343) lambda!262382) _$13!1745)))

(declare-fun b_lambda!202105 () Bool)

(assert (=> (not b_lambda!202105) (not d!1685174)))

(declare-fun bs!1213589 () Bool)

(assert (= bs!1213589 d!1685174))

(assert (=> bs!1213589 m!6272678))

(assert (=> bs!1213589 m!6272982))

(assert (=> d!1684902 d!1685174))

(declare-fun d!1685176 () Bool)

(assert (=> d!1685176 (= (isEmpty!32547 (unfocusZipperList!258 zl!343)) (is-Nil!60623 (unfocusZipperList!258 zl!343)))))

(assert (=> b!5226196 d!1685176))

(declare-fun d!1685178 () Bool)

(declare-fun c!902498 () Bool)

(assert (=> d!1685178 (= c!902498 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253163 () Bool)

(assert (=> d!1685178 (= (matchZipper!1060 (derivationStepZipper!1084 lt!2144310 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253163)))

(declare-fun b!5227084 () Bool)

(assert (=> b!5227084 (= e!3253163 (nullableZipper!1240 (derivationStepZipper!1084 lt!2144310 (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227085 () Bool)

(assert (=> b!5227085 (= e!3253163 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 lt!2144310 (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685178 c!902498) b!5227084))

(assert (= (and d!1685178 (not c!902498)) b!5227085))

(assert (=> d!1685178 m!6272876))

(assert (=> d!1685178 m!6273502))

(assert (=> b!5227084 m!6272884))

(declare-fun m!6273600 () Bool)

(assert (=> b!5227084 m!6273600))

(assert (=> b!5227085 m!6272876))

(assert (=> b!5227085 m!6273506))

(assert (=> b!5227085 m!6272884))

(assert (=> b!5227085 m!6273506))

(declare-fun m!6273602 () Bool)

(assert (=> b!5227085 m!6273602))

(assert (=> b!5227085 m!6272876))

(assert (=> b!5227085 m!6273510))

(assert (=> b!5227085 m!6273602))

(assert (=> b!5227085 m!6273510))

(declare-fun m!6273604 () Bool)

(assert (=> b!5227085 m!6273604))

(assert (=> b!5226121 d!1685178))

(declare-fun bs!1213590 () Bool)

(declare-fun d!1685180 () Bool)

(assert (= bs!1213590 (and d!1685180 b!5225936)))

(declare-fun lambda!262467 () Int)

(assert (=> bs!1213590 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262467 lambda!262382))))

(declare-fun bs!1213591 () Bool)

(assert (= bs!1213591 (and d!1685180 d!1685120)))

(assert (=> bs!1213591 (= lambda!262467 lambda!262463)))

(assert (=> d!1685180 true))

(assert (=> d!1685180 (= (derivationStepZipper!1084 lt!2144310 (head!11200 (t!373924 s!2326))) (flatMap!543 lt!2144310 lambda!262467))))

(declare-fun bs!1213592 () Bool)

(assert (= bs!1213592 d!1685180))

(declare-fun m!6273606 () Bool)

(assert (=> bs!1213592 m!6273606))

(assert (=> b!5226121 d!1685180))

(assert (=> b!5226121 d!1685122))

(assert (=> b!5226121 d!1685124))

(declare-fun bs!1213593 () Bool)

(declare-fun b!5227090 () Bool)

(assert (= bs!1213593 (and b!5227090 b!5225955)))

(declare-fun lambda!262468 () Int)

(assert (=> bs!1213593 (not (= lambda!262468 lambda!262381))))

(declare-fun bs!1213594 () Bool)

(assert (= bs!1213594 (and b!5227090 d!1684922)))

(assert (=> bs!1213594 (not (= lambda!262468 lambda!262418))))

(assert (=> bs!1213593 (not (= lambda!262468 lambda!262380))))

(declare-fun bs!1213595 () Bool)

(assert (= bs!1213595 (and b!5227090 b!5226242)))

(assert (=> bs!1213595 (not (= lambda!262468 lambda!262412))))

(declare-fun bs!1213596 () Bool)

(assert (= bs!1213596 (and b!5227090 b!5227023)))

(assert (=> bs!1213596 (not (= lambda!262468 lambda!262466))))

(declare-fun bs!1213597 () Bool)

(assert (= bs!1213597 (and b!5227090 d!1684924)))

(assert (=> bs!1213597 (not (= lambda!262468 lambda!262424))))

(declare-fun bs!1213598 () Bool)

(assert (= bs!1213598 (and b!5227090 b!5226246)))

(assert (=> bs!1213598 (= (and (= (reg!15145 (regOne!30145 r!7292)) (reg!15145 r!7292)) (= (regOne!30145 r!7292) r!7292)) (= lambda!262468 lambda!262411))))

(assert (=> bs!1213597 (not (= lambda!262468 lambda!262423))))

(declare-fun bs!1213599 () Bool)

(assert (= bs!1213599 (and b!5227090 b!5227027)))

(assert (=> bs!1213599 (= (and (= (reg!15145 (regOne!30145 r!7292)) (reg!15145 (regTwo!30145 r!7292))) (= (regOne!30145 r!7292) (regTwo!30145 r!7292))) (= lambda!262468 lambda!262465))))

(assert (=> b!5227090 true))

(assert (=> b!5227090 true))

(declare-fun bs!1213600 () Bool)

(declare-fun b!5227086 () Bool)

(assert (= bs!1213600 (and b!5227086 b!5225955)))

(declare-fun lambda!262469 () Int)

(assert (=> bs!1213600 (= (and (= (regOne!30144 (regOne!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regOne!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262469 lambda!262381))))

(declare-fun bs!1213601 () Bool)

(assert (= bs!1213601 (and b!5227086 d!1684922)))

(assert (=> bs!1213601 (not (= lambda!262469 lambda!262418))))

(assert (=> bs!1213600 (not (= lambda!262469 lambda!262380))))

(declare-fun bs!1213602 () Bool)

(assert (= bs!1213602 (and b!5227086 b!5226242)))

(assert (=> bs!1213602 (= (and (= (regOne!30144 (regOne!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regOne!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262469 lambda!262412))))

(declare-fun bs!1213603 () Bool)

(assert (= bs!1213603 (and b!5227086 b!5227023)))

(assert (=> bs!1213603 (= (and (= (regOne!30144 (regOne!30145 r!7292)) (regOne!30144 (regTwo!30145 r!7292))) (= (regTwo!30144 (regOne!30145 r!7292)) (regTwo!30144 (regTwo!30145 r!7292)))) (= lambda!262469 lambda!262466))))

(declare-fun bs!1213604 () Bool)

(assert (= bs!1213604 (and b!5227086 b!5227090)))

(assert (=> bs!1213604 (not (= lambda!262469 lambda!262468))))

(declare-fun bs!1213605 () Bool)

(assert (= bs!1213605 (and b!5227086 d!1684924)))

(assert (=> bs!1213605 (= (and (= (regOne!30144 (regOne!30145 r!7292)) (regOne!30144 r!7292)) (= (regTwo!30144 (regOne!30145 r!7292)) (regTwo!30144 r!7292))) (= lambda!262469 lambda!262424))))

(declare-fun bs!1213606 () Bool)

(assert (= bs!1213606 (and b!5227086 b!5226246)))

(assert (=> bs!1213606 (not (= lambda!262469 lambda!262411))))

(assert (=> bs!1213605 (not (= lambda!262469 lambda!262423))))

(declare-fun bs!1213607 () Bool)

(assert (= bs!1213607 (and b!5227086 b!5227027)))

(assert (=> bs!1213607 (not (= lambda!262469 lambda!262465))))

(assert (=> b!5227086 true))

(assert (=> b!5227086 true))

(declare-fun e!3253170 () Bool)

(declare-fun call!369410 () Bool)

(assert (=> b!5227086 (= e!3253170 call!369410)))

(declare-fun b!5227087 () Bool)

(declare-fun e!3253169 () Bool)

(assert (=> b!5227087 (= e!3253169 (matchRSpec!1919 (regTwo!30145 (regOne!30145 r!7292)) s!2326))))

(declare-fun b!5227088 () Bool)

(declare-fun c!902499 () Bool)

(assert (=> b!5227088 (= c!902499 (is-Union!14816 (regOne!30145 r!7292)))))

(declare-fun e!3253165 () Bool)

(declare-fun e!3253164 () Bool)

(assert (=> b!5227088 (= e!3253165 e!3253164)))

(declare-fun b!5227089 () Bool)

(assert (=> b!5227089 (= e!3253164 e!3253170)))

(declare-fun c!902501 () Bool)

(assert (=> b!5227089 (= c!902501 (is-Star!14816 (regOne!30145 r!7292)))))

(declare-fun bm!369405 () Bool)

(declare-fun call!369411 () Bool)

(assert (=> bm!369405 (= call!369411 (isEmpty!32551 s!2326))))

(declare-fun e!3253166 () Bool)

(assert (=> b!5227090 (= e!3253166 call!369410)))

(declare-fun b!5227091 () Bool)

(declare-fun e!3253168 () Bool)

(assert (=> b!5227091 (= e!3253168 call!369411)))

(declare-fun b!5227092 () Bool)

(assert (=> b!5227092 (= e!3253165 (= s!2326 (Cons!60625 (c!902205 (regOne!30145 r!7292)) Nil!60625)))))

(declare-fun b!5227093 () Bool)

(assert (=> b!5227093 (= e!3253164 e!3253169)))

(declare-fun res!2219064 () Bool)

(assert (=> b!5227093 (= res!2219064 (matchRSpec!1919 (regOne!30145 (regOne!30145 r!7292)) s!2326))))

(assert (=> b!5227093 (=> res!2219064 e!3253169)))

(declare-fun b!5227094 () Bool)

(declare-fun res!2219062 () Bool)

(assert (=> b!5227094 (=> res!2219062 e!3253166)))

(assert (=> b!5227094 (= res!2219062 call!369411)))

(assert (=> b!5227094 (= e!3253170 e!3253166)))

(declare-fun b!5227095 () Bool)

(declare-fun c!902502 () Bool)

(assert (=> b!5227095 (= c!902502 (is-ElementMatch!14816 (regOne!30145 r!7292)))))

(declare-fun e!3253167 () Bool)

(assert (=> b!5227095 (= e!3253167 e!3253165)))

(declare-fun d!1685182 () Bool)

(declare-fun c!902500 () Bool)

(assert (=> d!1685182 (= c!902500 (is-EmptyExpr!14816 (regOne!30145 r!7292)))))

(assert (=> d!1685182 (= (matchRSpec!1919 (regOne!30145 r!7292) s!2326) e!3253168)))

(declare-fun b!5227096 () Bool)

(assert (=> b!5227096 (= e!3253168 e!3253167)))

(declare-fun res!2219063 () Bool)

(assert (=> b!5227096 (= res!2219063 (not (is-EmptyLang!14816 (regOne!30145 r!7292))))))

(assert (=> b!5227096 (=> (not res!2219063) (not e!3253167))))

(declare-fun bm!369406 () Bool)

(assert (=> bm!369406 (= call!369410 (Exists!1997 (ite c!902501 lambda!262468 lambda!262469)))))

(assert (= (and d!1685182 c!902500) b!5227091))

(assert (= (and d!1685182 (not c!902500)) b!5227096))

(assert (= (and b!5227096 res!2219063) b!5227095))

(assert (= (and b!5227095 c!902502) b!5227092))

(assert (= (and b!5227095 (not c!902502)) b!5227088))

(assert (= (and b!5227088 c!902499) b!5227093))

(assert (= (and b!5227088 (not c!902499)) b!5227089))

(assert (= (and b!5227093 (not res!2219064)) b!5227087))

(assert (= (and b!5227089 c!902501) b!5227094))

(assert (= (and b!5227089 (not c!902501)) b!5227086))

(assert (= (and b!5227094 (not res!2219062)) b!5227090))

(assert (= (or b!5227090 b!5227086) bm!369406))

(assert (= (or b!5227091 b!5227094) bm!369405))

(declare-fun m!6273608 () Bool)

(assert (=> b!5227087 m!6273608))

(assert (=> bm!369405 m!6272954))

(declare-fun m!6273610 () Bool)

(assert (=> b!5227093 m!6273610))

(declare-fun m!6273612 () Bool)

(assert (=> bm!369406 m!6273612))

(assert (=> b!5226249 d!1685182))

(assert (=> b!5226207 d!1684864))

(declare-fun b!5227097 () Bool)

(declare-fun e!3253175 () (Set Context!8400))

(assert (=> b!5227097 (= e!3253175 (set.insert (ite c!902305 lt!2144293 (Context!8401 call!369290)) (as set.empty (Set Context!8400))))))

(declare-fun call!369412 () (Set Context!8400))

(declare-fun bm!369407 () Bool)

(declare-fun call!369413 () List!60747)

(declare-fun c!902503 () Bool)

(assert (=> bm!369407 (= call!369412 (derivationStepZipperDown!264 (ite c!902503 (regOne!30145 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (regOne!30144 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))) (ite c!902503 (ite c!902305 lt!2144293 (Context!8401 call!369290)) (Context!8401 call!369413)) (h!67073 s!2326)))))

(declare-fun c!902507 () Bool)

(declare-fun c!902505 () Bool)

(declare-fun bm!369409 () Bool)

(assert (=> bm!369409 (= call!369413 ($colon$colon!1290 (exprs!4700 (ite c!902305 lt!2144293 (Context!8401 call!369290))) (ite (or c!902507 c!902505) (regTwo!30144 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))))

(declare-fun b!5227098 () Bool)

(declare-fun c!902506 () Bool)

(assert (=> b!5227098 (= c!902506 (is-Star!14816 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun e!3253176 () (Set Context!8400))

(declare-fun e!3253173 () (Set Context!8400))

(assert (=> b!5227098 (= e!3253176 e!3253173)))

(declare-fun bm!369410 () Bool)

(declare-fun call!369417 () List!60747)

(assert (=> bm!369410 (= call!369417 call!369413)))

(declare-fun b!5227099 () Bool)

(declare-fun e!3253174 () (Set Context!8400))

(assert (=> b!5227099 (= e!3253175 e!3253174)))

(assert (=> b!5227099 (= c!902503 (is-Union!14816 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5227100 () Bool)

(declare-fun call!369414 () (Set Context!8400))

(assert (=> b!5227100 (= e!3253174 (set.union call!369412 call!369414))))

(declare-fun b!5227101 () Bool)

(declare-fun e!3253171 () (Set Context!8400))

(assert (=> b!5227101 (= e!3253171 e!3253176)))

(assert (=> b!5227101 (= c!902505 (is-Concat!23661 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(declare-fun b!5227102 () Bool)

(declare-fun call!369415 () (Set Context!8400))

(assert (=> b!5227102 (= e!3253176 call!369415)))

(declare-fun b!5227103 () Bool)

(declare-fun call!369416 () (Set Context!8400))

(assert (=> b!5227103 (= e!3253171 (set.union call!369412 call!369416))))

(declare-fun b!5227104 () Bool)

(assert (=> b!5227104 (= e!3253173 (as set.empty (Set Context!8400)))))

(declare-fun b!5227105 () Bool)

(assert (=> b!5227105 (= e!3253173 call!369415)))

(declare-fun b!5227106 () Bool)

(declare-fun e!3253172 () Bool)

(assert (=> b!5227106 (= e!3253172 (nullable!4985 (regOne!30144 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))))

(declare-fun b!5227107 () Bool)

(assert (=> b!5227107 (= c!902507 e!3253172)))

(declare-fun res!2219065 () Bool)

(assert (=> b!5227107 (=> (not res!2219065) (not e!3253172))))

(assert (=> b!5227107 (= res!2219065 (is-Concat!23661 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))))))

(assert (=> b!5227107 (= e!3253174 e!3253171)))

(declare-fun d!1685184 () Bool)

(declare-fun c!902504 () Bool)

(assert (=> d!1685184 (= c!902504 (and (is-ElementMatch!14816 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (= (c!902205 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (h!67073 s!2326))))))

(assert (=> d!1685184 (= (derivationStepZipperDown!264 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))) (ite c!902305 lt!2144293 (Context!8401 call!369290)) (h!67073 s!2326)) e!3253175)))

(declare-fun bm!369408 () Bool)

(assert (=> bm!369408 (= call!369416 call!369414)))

(declare-fun bm!369411 () Bool)

(assert (=> bm!369411 (= call!369415 call!369416)))

(declare-fun bm!369412 () Bool)

(assert (=> bm!369412 (= call!369414 (derivationStepZipperDown!264 (ite c!902503 (regTwo!30145 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (ite c!902507 (regTwo!30144 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (ite c!902505 (regOne!30144 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))))) (reg!15145 (ite c!902305 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))) (ite (or c!902503 c!902507) (ite c!902305 lt!2144293 (Context!8401 call!369290)) (Context!8401 call!369417)) (h!67073 s!2326)))))

(assert (= (and d!1685184 c!902504) b!5227097))

(assert (= (and d!1685184 (not c!902504)) b!5227099))

(assert (= (and b!5227099 c!902503) b!5227100))

(assert (= (and b!5227099 (not c!902503)) b!5227107))

(assert (= (and b!5227107 res!2219065) b!5227106))

(assert (= (and b!5227107 c!902507) b!5227103))

(assert (= (and b!5227107 (not c!902507)) b!5227101))

(assert (= (and b!5227101 c!902505) b!5227102))

(assert (= (and b!5227101 (not c!902505)) b!5227098))

(assert (= (and b!5227098 c!902506) b!5227105))

(assert (= (and b!5227098 (not c!902506)) b!5227104))

(assert (= (or b!5227102 b!5227105) bm!369410))

(assert (= (or b!5227102 b!5227105) bm!369411))

(assert (= (or b!5227103 bm!369410) bm!369409))

(assert (= (or b!5227103 bm!369411) bm!369408))

(assert (= (or b!5227100 bm!369408) bm!369412))

(assert (= (or b!5227100 b!5227103) bm!369407))

(declare-fun m!6273614 () Bool)

(assert (=> b!5227097 m!6273614))

(declare-fun m!6273616 () Bool)

(assert (=> bm!369409 m!6273616))

(declare-fun m!6273618 () Bool)

(assert (=> bm!369407 m!6273618))

(declare-fun m!6273620 () Bool)

(assert (=> b!5227106 m!6273620))

(declare-fun m!6273622 () Bool)

(assert (=> bm!369412 m!6273622))

(assert (=> bm!369284 d!1685184))

(assert (=> d!1684922 d!1685172))

(assert (=> d!1684922 d!1684926))

(declare-fun bs!1213608 () Bool)

(declare-fun d!1685186 () Bool)

(assert (= bs!1213608 (and d!1685186 b!5225955)))

(declare-fun lambda!262472 () Int)

(assert (=> bs!1213608 (not (= lambda!262472 lambda!262381))))

(declare-fun bs!1213609 () Bool)

(assert (= bs!1213609 (and d!1685186 d!1684922)))

(assert (=> bs!1213609 (= lambda!262472 lambda!262418)))

(assert (=> bs!1213608 (= lambda!262472 lambda!262380)))

(declare-fun bs!1213610 () Bool)

(assert (= bs!1213610 (and d!1685186 b!5226242)))

(assert (=> bs!1213610 (not (= lambda!262472 lambda!262412))))

(declare-fun bs!1213611 () Bool)

(assert (= bs!1213611 (and d!1685186 b!5227023)))

(assert (=> bs!1213611 (not (= lambda!262472 lambda!262466))))

(declare-fun bs!1213612 () Bool)

(assert (= bs!1213612 (and d!1685186 b!5227090)))

(assert (=> bs!1213612 (not (= lambda!262472 lambda!262468))))

(declare-fun bs!1213613 () Bool)

(assert (= bs!1213613 (and d!1685186 d!1684924)))

(assert (=> bs!1213613 (not (= lambda!262472 lambda!262424))))

(declare-fun bs!1213614 () Bool)

(assert (= bs!1213614 (and d!1685186 b!5227086)))

(assert (=> bs!1213614 (not (= lambda!262472 lambda!262469))))

(declare-fun bs!1213615 () Bool)

(assert (= bs!1213615 (and d!1685186 b!5226246)))

(assert (=> bs!1213615 (not (= lambda!262472 lambda!262411))))

(assert (=> bs!1213613 (= lambda!262472 lambda!262423)))

(declare-fun bs!1213616 () Bool)

(assert (= bs!1213616 (and d!1685186 b!5227027)))

(assert (=> bs!1213616 (not (= lambda!262472 lambda!262465))))

(assert (=> d!1685186 true))

(assert (=> d!1685186 true))

(assert (=> d!1685186 true))

(assert (=> d!1685186 (= (isDefined!11630 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) Nil!60625 s!2326 s!2326)) (Exists!1997 lambda!262472))))

(assert (=> d!1685186 true))

(declare-fun _$89!1409 () Unit!152546)

(assert (=> d!1685186 (= (choose!38871 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326) _$89!1409)))

(declare-fun bs!1213617 () Bool)

(assert (= bs!1213617 d!1685186))

(assert (=> bs!1213617 m!6272700))

(assert (=> bs!1213617 m!6272700))

(assert (=> bs!1213617 m!6272702))

(declare-fun m!6273624 () Bool)

(assert (=> bs!1213617 m!6273624))

(assert (=> d!1684922 d!1685186))

(assert (=> d!1684922 d!1684916))

(declare-fun d!1685188 () Bool)

(assert (=> d!1685188 (= (Exists!1997 lambda!262418) (choose!38870 lambda!262418))))

(declare-fun bs!1213618 () Bool)

(assert (= bs!1213618 d!1685188))

(declare-fun m!6273626 () Bool)

(assert (=> bs!1213618 m!6273626))

(assert (=> d!1684922 d!1685188))

(assert (=> d!1684866 d!1684870))

(assert (=> d!1684866 d!1684868))

(declare-fun e!3253179 () Bool)

(declare-fun d!1685190 () Bool)

(assert (=> d!1685190 (= (matchZipper!1060 (set.union lt!2144310 lt!2144287) (t!373924 s!2326)) e!3253179)))

(declare-fun res!2219070 () Bool)

(assert (=> d!1685190 (=> res!2219070 e!3253179)))

(assert (=> d!1685190 (= res!2219070 (matchZipper!1060 lt!2144310 (t!373924 s!2326)))))

(assert (=> d!1685190 true))

(declare-fun _$48!853 () Unit!152546)

(assert (=> d!1685190 (= (choose!38865 lt!2144310 lt!2144287 (t!373924 s!2326)) _$48!853)))

(declare-fun b!5227112 () Bool)

(assert (=> b!5227112 (= e!3253179 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(assert (= (and d!1685190 (not res!2219070)) b!5227112))

(assert (=> d!1685190 m!6272718))

(assert (=> d!1685190 m!6272660))

(assert (=> b!5227112 m!6272654))

(assert (=> d!1684866 d!1685190))

(declare-fun b!5227122 () Bool)

(declare-fun e!3253184 () List!60749)

(assert (=> b!5227122 (= e!3253184 (Cons!60625 (h!67073 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))) (++!13220 (t!373924 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))) (t!373924 s!2326))))))

(declare-fun b!5227121 () Bool)

(assert (=> b!5227121 (= e!3253184 (t!373924 s!2326))))

(declare-fun b!5227124 () Bool)

(declare-fun e!3253185 () Bool)

(declare-fun lt!2144491 () List!60749)

(assert (=> b!5227124 (= e!3253185 (or (not (= (t!373924 s!2326) Nil!60625)) (= lt!2144491 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)))))))

(declare-fun d!1685192 () Bool)

(assert (=> d!1685192 e!3253185))

(declare-fun res!2219075 () Bool)

(assert (=> d!1685192 (=> (not res!2219075) (not e!3253185))))

(declare-fun content!10758 (List!60749) (Set C!29902))

(assert (=> d!1685192 (= res!2219075 (= (content!10758 lt!2144491) (set.union (content!10758 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))) (content!10758 (t!373924 s!2326)))))))

(assert (=> d!1685192 (= lt!2144491 e!3253184)))

(declare-fun c!902510 () Bool)

(assert (=> d!1685192 (= c!902510 (is-Nil!60625 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))))))

(assert (=> d!1685192 (= (++!13220 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326)) lt!2144491)))

(declare-fun b!5227123 () Bool)

(declare-fun res!2219076 () Bool)

(assert (=> b!5227123 (=> (not res!2219076) (not e!3253185))))

(declare-fun size!39730 (List!60749) Int)

(assert (=> b!5227123 (= res!2219076 (= (size!39730 lt!2144491) (+ (size!39730 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))) (size!39730 (t!373924 s!2326)))))))

(assert (= (and d!1685192 c!902510) b!5227121))

(assert (= (and d!1685192 (not c!902510)) b!5227122))

(assert (= (and d!1685192 res!2219075) b!5227123))

(assert (= (and b!5227123 res!2219076) b!5227124))

(declare-fun m!6273628 () Bool)

(assert (=> b!5227122 m!6273628))

(declare-fun m!6273630 () Bool)

(assert (=> d!1685192 m!6273630))

(assert (=> d!1685192 m!6273030))

(declare-fun m!6273632 () Bool)

(assert (=> d!1685192 m!6273632))

(declare-fun m!6273634 () Bool)

(assert (=> d!1685192 m!6273634))

(declare-fun m!6273636 () Bool)

(assert (=> b!5227123 m!6273636))

(assert (=> b!5227123 m!6273030))

(declare-fun m!6273638 () Bool)

(assert (=> b!5227123 m!6273638))

(declare-fun m!6273640 () Bool)

(assert (=> b!5227123 m!6273640))

(assert (=> b!5226356 d!1685192))

(declare-fun b!5227126 () Bool)

(declare-fun e!3253186 () List!60749)

(assert (=> b!5227126 (= e!3253186 (Cons!60625 (h!67073 Nil!60625) (++!13220 (t!373924 Nil!60625) (Cons!60625 (h!67073 s!2326) Nil!60625))))))

(declare-fun b!5227125 () Bool)

(assert (=> b!5227125 (= e!3253186 (Cons!60625 (h!67073 s!2326) Nil!60625))))

(declare-fun b!5227128 () Bool)

(declare-fun e!3253187 () Bool)

(declare-fun lt!2144492 () List!60749)

(assert (=> b!5227128 (= e!3253187 (or (not (= (Cons!60625 (h!67073 s!2326) Nil!60625) Nil!60625)) (= lt!2144492 Nil!60625)))))

(declare-fun d!1685194 () Bool)

(assert (=> d!1685194 e!3253187))

(declare-fun res!2219077 () Bool)

(assert (=> d!1685194 (=> (not res!2219077) (not e!3253187))))

(assert (=> d!1685194 (= res!2219077 (= (content!10758 lt!2144492) (set.union (content!10758 Nil!60625) (content!10758 (Cons!60625 (h!67073 s!2326) Nil!60625)))))))

(assert (=> d!1685194 (= lt!2144492 e!3253186)))

(declare-fun c!902511 () Bool)

(assert (=> d!1685194 (= c!902511 (is-Nil!60625 Nil!60625))))

(assert (=> d!1685194 (= (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) lt!2144492)))

(declare-fun b!5227127 () Bool)

(declare-fun res!2219078 () Bool)

(assert (=> b!5227127 (=> (not res!2219078) (not e!3253187))))

(assert (=> b!5227127 (= res!2219078 (= (size!39730 lt!2144492) (+ (size!39730 Nil!60625) (size!39730 (Cons!60625 (h!67073 s!2326) Nil!60625)))))))

(assert (= (and d!1685194 c!902511) b!5227125))

(assert (= (and d!1685194 (not c!902511)) b!5227126))

(assert (= (and d!1685194 res!2219077) b!5227127))

(assert (= (and b!5227127 res!2219078) b!5227128))

(declare-fun m!6273642 () Bool)

(assert (=> b!5227126 m!6273642))

(declare-fun m!6273644 () Bool)

(assert (=> d!1685194 m!6273644))

(declare-fun m!6273646 () Bool)

(assert (=> d!1685194 m!6273646))

(declare-fun m!6273648 () Bool)

(assert (=> d!1685194 m!6273648))

(declare-fun m!6273650 () Bool)

(assert (=> b!5227127 m!6273650))

(declare-fun m!6273652 () Bool)

(assert (=> b!5227127 m!6273652))

(declare-fun m!6273654 () Bool)

(assert (=> b!5227127 m!6273654))

(assert (=> b!5226356 d!1685194))

(declare-fun d!1685196 () Bool)

(assert (=> d!1685196 (= (++!13220 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326)) s!2326)))

(declare-fun lt!2144495 () Unit!152546)

(declare-fun choose!38881 (List!60749 C!29902 List!60749 List!60749) Unit!152546)

(assert (=> d!1685196 (= lt!2144495 (choose!38881 Nil!60625 (h!67073 s!2326) (t!373924 s!2326) s!2326))))

(assert (=> d!1685196 (= (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) (t!373924 s!2326))) s!2326)))

(assert (=> d!1685196 (= (lemmaMoveElementToOtherListKeepsConcatEq!1635 Nil!60625 (h!67073 s!2326) (t!373924 s!2326) s!2326) lt!2144495)))

(declare-fun bs!1213619 () Bool)

(assert (= bs!1213619 d!1685196))

(assert (=> bs!1213619 m!6273030))

(assert (=> bs!1213619 m!6273030))

(assert (=> bs!1213619 m!6273032))

(declare-fun m!6273656 () Bool)

(assert (=> bs!1213619 m!6273656))

(declare-fun m!6273658 () Bool)

(assert (=> bs!1213619 m!6273658))

(assert (=> b!5226356 d!1685196))

(declare-fun b!5227129 () Bool)

(declare-fun e!3253188 () Option!14927)

(declare-fun e!3253189 () Option!14927)

(assert (=> b!5227129 (= e!3253188 e!3253189)))

(declare-fun c!902513 () Bool)

(assert (=> b!5227129 (= c!902513 (is-Nil!60625 (t!373924 s!2326)))))

(declare-fun b!5227130 () Bool)

(assert (=> b!5227130 (= e!3253188 (Some!14926 (tuple2!64031 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326))))))

(declare-fun b!5227131 () Bool)

(declare-fun res!2219083 () Bool)

(declare-fun e!3253191 () Bool)

(assert (=> b!5227131 (=> (not res!2219083) (not e!3253191))))

(declare-fun lt!2144498 () Option!14927)

(assert (=> b!5227131 (= res!2219083 (matchR!7001 (regOne!30144 r!7292) (_1!35318 (get!20834 lt!2144498))))))

(declare-fun b!5227132 () Bool)

(declare-fun e!3253190 () Bool)

(assert (=> b!5227132 (= e!3253190 (matchR!7001 (regTwo!30144 r!7292) (t!373924 s!2326)))))

(declare-fun b!5227133 () Bool)

(declare-fun res!2219082 () Bool)

(assert (=> b!5227133 (=> (not res!2219082) (not e!3253191))))

(assert (=> b!5227133 (= res!2219082 (matchR!7001 (regTwo!30144 r!7292) (_2!35318 (get!20834 lt!2144498))))))

(declare-fun b!5227135 () Bool)

(declare-fun e!3253192 () Bool)

(assert (=> b!5227135 (= e!3253192 (not (isDefined!11630 lt!2144498)))))

(declare-fun d!1685198 () Bool)

(assert (=> d!1685198 e!3253192))

(declare-fun res!2219080 () Bool)

(assert (=> d!1685198 (=> res!2219080 e!3253192)))

(assert (=> d!1685198 (= res!2219080 e!3253191)))

(declare-fun res!2219079 () Bool)

(assert (=> d!1685198 (=> (not res!2219079) (not e!3253191))))

(assert (=> d!1685198 (= res!2219079 (isDefined!11630 lt!2144498))))

(assert (=> d!1685198 (= lt!2144498 e!3253188)))

(declare-fun c!902512 () Bool)

(assert (=> d!1685198 (= c!902512 e!3253190)))

(declare-fun res!2219081 () Bool)

(assert (=> d!1685198 (=> (not res!2219081) (not e!3253190))))

(assert (=> d!1685198 (= res!2219081 (matchR!7001 (regOne!30144 r!7292) (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625))))))

(assert (=> d!1685198 (validRegex!6552 (regOne!30144 r!7292))))

(assert (=> d!1685198 (= (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (t!373924 s!2326) s!2326) lt!2144498)))

(declare-fun b!5227134 () Bool)

(declare-fun lt!2144497 () Unit!152546)

(declare-fun lt!2144496 () Unit!152546)

(assert (=> b!5227134 (= lt!2144497 lt!2144496)))

(assert (=> b!5227134 (= (++!13220 (++!13220 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (Cons!60625 (h!67073 (t!373924 s!2326)) Nil!60625)) (t!373924 (t!373924 s!2326))) s!2326)))

(assert (=> b!5227134 (= lt!2144496 (lemmaMoveElementToOtherListKeepsConcatEq!1635 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (h!67073 (t!373924 s!2326)) (t!373924 (t!373924 s!2326)) s!2326))))

(assert (=> b!5227134 (= e!3253189 (findConcatSeparation!1341 (regOne!30144 r!7292) (regTwo!30144 r!7292) (++!13220 (++!13220 Nil!60625 (Cons!60625 (h!67073 s!2326) Nil!60625)) (Cons!60625 (h!67073 (t!373924 s!2326)) Nil!60625)) (t!373924 (t!373924 s!2326)) s!2326))))

(declare-fun b!5227136 () Bool)

(assert (=> b!5227136 (= e!3253189 None!14926)))

(declare-fun b!5227137 () Bool)

(assert (=> b!5227137 (= e!3253191 (= (++!13220 (_1!35318 (get!20834 lt!2144498)) (_2!35318 (get!20834 lt!2144498))) s!2326))))

(assert (= (and d!1685198 res!2219081) b!5227132))

(assert (= (and d!1685198 c!902512) b!5227130))

(assert (= (and d!1685198 (not c!902512)) b!5227129))

(assert (= (and b!5227129 c!902513) b!5227136))

(assert (= (and b!5227129 (not c!902513)) b!5227134))

(assert (= (and d!1685198 res!2219079) b!5227131))

(assert (= (and b!5227131 res!2219083) b!5227133))

(assert (= (and b!5227133 res!2219082) b!5227137))

(assert (= (and d!1685198 (not res!2219080)) b!5227135))

(declare-fun m!6273660 () Bool)

(assert (=> b!5227135 m!6273660))

(declare-fun m!6273662 () Bool)

(assert (=> b!5227137 m!6273662))

(declare-fun m!6273664 () Bool)

(assert (=> b!5227137 m!6273664))

(declare-fun m!6273666 () Bool)

(assert (=> b!5227132 m!6273666))

(assert (=> b!5227133 m!6273662))

(declare-fun m!6273668 () Bool)

(assert (=> b!5227133 m!6273668))

(assert (=> d!1685198 m!6273660))

(assert (=> d!1685198 m!6273030))

(declare-fun m!6273670 () Bool)

(assert (=> d!1685198 m!6273670))

(assert (=> d!1685198 m!6273028))

(assert (=> b!5227134 m!6273030))

(declare-fun m!6273672 () Bool)

(assert (=> b!5227134 m!6273672))

(assert (=> b!5227134 m!6273672))

(declare-fun m!6273674 () Bool)

(assert (=> b!5227134 m!6273674))

(assert (=> b!5227134 m!6273030))

(declare-fun m!6273676 () Bool)

(assert (=> b!5227134 m!6273676))

(assert (=> b!5227134 m!6273672))

(declare-fun m!6273678 () Bool)

(assert (=> b!5227134 m!6273678))

(assert (=> b!5227131 m!6273662))

(declare-fun m!6273680 () Bool)

(assert (=> b!5227131 m!6273680))

(assert (=> b!5226356 d!1685198))

(declare-fun bs!1213620 () Bool)

(declare-fun d!1685200 () Bool)

(assert (= bs!1213620 (and d!1685200 d!1685068)))

(declare-fun lambda!262473 () Int)

(assert (=> bs!1213620 (= lambda!262473 lambda!262456)))

(declare-fun bs!1213621 () Bool)

(assert (= bs!1213621 (and d!1685200 d!1685084)))

(assert (=> bs!1213621 (= lambda!262473 lambda!262457)))

(declare-fun bs!1213622 () Bool)

(assert (= bs!1213622 (and d!1685200 d!1685104)))

(assert (=> bs!1213622 (= lambda!262473 lambda!262459)))

(assert (=> d!1685200 (= (nullableZipper!1240 lt!2144307) (exists!1975 lt!2144307 lambda!262473))))

(declare-fun bs!1213623 () Bool)

(assert (= bs!1213623 d!1685200))

(declare-fun m!6273682 () Bool)

(assert (=> bs!1213623 m!6273682))

(assert (=> b!5226295 d!1685200))

(assert (=> d!1684868 d!1685140))

(assert (=> bm!369274 d!1685072))

(assert (=> d!1684886 d!1684888))

(assert (=> d!1684886 d!1684934))

(declare-fun d!1685202 () Bool)

(declare-fun e!3253193 () Bool)

(assert (=> d!1685202 (= (matchZipper!1060 (set.union lt!2144285 lt!2144287) (t!373924 s!2326)) e!3253193)))

(declare-fun res!2219084 () Bool)

(assert (=> d!1685202 (=> res!2219084 e!3253193)))

(assert (=> d!1685202 (= res!2219084 (matchZipper!1060 lt!2144285 (t!373924 s!2326)))))

(assert (=> d!1685202 true))

(declare-fun _$48!854 () Unit!152546)

(assert (=> d!1685202 (= (choose!38865 lt!2144285 lt!2144287 (t!373924 s!2326)) _$48!854)))

(declare-fun b!5227138 () Bool)

(assert (=> b!5227138 (= e!3253193 (matchZipper!1060 lt!2144287 (t!373924 s!2326)))))

(assert (= (and d!1685202 (not res!2219084)) b!5227138))

(assert (=> d!1685202 m!6272670))

(assert (=> d!1685202 m!6272664))

(assert (=> b!5227138 m!6272654))

(assert (=> d!1684886 d!1685202))

(declare-fun b!5227139 () Bool)

(declare-fun e!3253199 () Bool)

(declare-fun call!369418 () Bool)

(assert (=> b!5227139 (= e!3253199 call!369418)))

(declare-fun b!5227140 () Bool)

(declare-fun e!3253197 () Bool)

(assert (=> b!5227140 (= e!3253197 call!369418)))

(declare-fun c!902515 () Bool)

(declare-fun call!369420 () Bool)

(declare-fun c!902514 () Bool)

(declare-fun bm!369413 () Bool)

(assert (=> bm!369413 (= call!369420 (validRegex!6552 (ite c!902514 (reg!15145 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (ite c!902515 (regTwo!30145 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (regTwo!30144 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))))

(declare-fun bm!369414 () Bool)

(assert (=> bm!369414 (= call!369418 call!369420)))

(declare-fun b!5227141 () Bool)

(declare-fun e!3253195 () Bool)

(assert (=> b!5227141 (= e!3253195 call!369420)))

(declare-fun b!5227143 () Bool)

(declare-fun res!2219088 () Bool)

(declare-fun e!3253198 () Bool)

(assert (=> b!5227143 (=> res!2219088 e!3253198)))

(assert (=> b!5227143 (= res!2219088 (not (is-Concat!23661 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun e!3253194 () Bool)

(assert (=> b!5227143 (= e!3253194 e!3253198)))

(declare-fun b!5227144 () Bool)

(assert (=> b!5227144 (= e!3253198 e!3253199)))

(declare-fun res!2219085 () Bool)

(assert (=> b!5227144 (=> (not res!2219085) (not e!3253199))))

(declare-fun call!369419 () Bool)

(assert (=> b!5227144 (= res!2219085 call!369419)))

(declare-fun b!5227145 () Bool)

(declare-fun res!2219087 () Bool)

(assert (=> b!5227145 (=> (not res!2219087) (not e!3253197))))

(assert (=> b!5227145 (= res!2219087 call!369419)))

(assert (=> b!5227145 (= e!3253194 e!3253197)))

(declare-fun bm!369415 () Bool)

(assert (=> bm!369415 (= call!369419 (validRegex!6552 (ite c!902515 (regOne!30145 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (regOne!30144 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))))

(declare-fun d!1685204 () Bool)

(declare-fun res!2219089 () Bool)

(declare-fun e!3253200 () Bool)

(assert (=> d!1685204 (=> res!2219089 e!3253200)))

(assert (=> d!1685204 (= res!2219089 (is-ElementMatch!14816 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(assert (=> d!1685204 (= (validRegex!6552 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) e!3253200)))

(declare-fun b!5227142 () Bool)

(declare-fun e!3253196 () Bool)

(assert (=> b!5227142 (= e!3253196 e!3253194)))

(assert (=> b!5227142 (= c!902515 (is-Union!14816 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227146 () Bool)

(assert (=> b!5227146 (= e!3253200 e!3253196)))

(assert (=> b!5227146 (= c!902514 (is-Star!14816 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227147 () Bool)

(assert (=> b!5227147 (= e!3253196 e!3253195)))

(declare-fun res!2219086 () Bool)

(assert (=> b!5227147 (= res!2219086 (not (nullable!4985 (reg!15145 (ite c!902321 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))))

(assert (=> b!5227147 (=> (not res!2219086) (not e!3253195))))

(assert (= (and d!1685204 (not res!2219089)) b!5227146))

(assert (= (and b!5227146 c!902514) b!5227147))

(assert (= (and b!5227146 (not c!902514)) b!5227142))

(assert (= (and b!5227147 res!2219086) b!5227141))

(assert (= (and b!5227142 c!902515) b!5227145))

(assert (= (and b!5227142 (not c!902515)) b!5227143))

(assert (= (and b!5227145 res!2219087) b!5227140))

(assert (= (and b!5227143 (not res!2219088)) b!5227144))

(assert (= (and b!5227144 res!2219085) b!5227139))

(assert (= (or b!5227140 b!5227139) bm!369414))

(assert (= (or b!5227145 b!5227144) bm!369415))

(assert (= (or b!5227141 bm!369414) bm!369413))

(declare-fun m!6273684 () Bool)

(assert (=> bm!369413 m!6273684))

(declare-fun m!6273686 () Bool)

(assert (=> bm!369415 m!6273686))

(declare-fun m!6273688 () Bool)

(assert (=> b!5227147 m!6273688))

(assert (=> bm!369298 d!1685204))

(declare-fun b!5227148 () Bool)

(declare-fun e!3253206 () Bool)

(declare-fun call!369421 () Bool)

(assert (=> b!5227148 (= e!3253206 call!369421)))

(declare-fun b!5227149 () Bool)

(declare-fun e!3253204 () Bool)

(assert (=> b!5227149 (= e!3253204 call!369421)))

(declare-fun c!902516 () Bool)

(declare-fun bm!369416 () Bool)

(declare-fun call!369423 () Bool)

(declare-fun c!902517 () Bool)

(assert (=> bm!369416 (= call!369423 (validRegex!6552 (ite c!902516 (reg!15145 lt!2144406) (ite c!902517 (regTwo!30145 lt!2144406) (regTwo!30144 lt!2144406)))))))

(declare-fun bm!369417 () Bool)

(assert (=> bm!369417 (= call!369421 call!369423)))

(declare-fun b!5227150 () Bool)

(declare-fun e!3253202 () Bool)

(assert (=> b!5227150 (= e!3253202 call!369423)))

(declare-fun b!5227152 () Bool)

(declare-fun res!2219093 () Bool)

(declare-fun e!3253205 () Bool)

(assert (=> b!5227152 (=> res!2219093 e!3253205)))

(assert (=> b!5227152 (= res!2219093 (not (is-Concat!23661 lt!2144406)))))

(declare-fun e!3253201 () Bool)

(assert (=> b!5227152 (= e!3253201 e!3253205)))

(declare-fun b!5227153 () Bool)

(assert (=> b!5227153 (= e!3253205 e!3253206)))

(declare-fun res!2219090 () Bool)

(assert (=> b!5227153 (=> (not res!2219090) (not e!3253206))))

(declare-fun call!369422 () Bool)

(assert (=> b!5227153 (= res!2219090 call!369422)))

(declare-fun b!5227154 () Bool)

(declare-fun res!2219092 () Bool)

(assert (=> b!5227154 (=> (not res!2219092) (not e!3253204))))

(assert (=> b!5227154 (= res!2219092 call!369422)))

(assert (=> b!5227154 (= e!3253201 e!3253204)))

(declare-fun bm!369418 () Bool)

(assert (=> bm!369418 (= call!369422 (validRegex!6552 (ite c!902517 (regOne!30145 lt!2144406) (regOne!30144 lt!2144406))))))

(declare-fun d!1685206 () Bool)

(declare-fun res!2219094 () Bool)

(declare-fun e!3253207 () Bool)

(assert (=> d!1685206 (=> res!2219094 e!3253207)))

(assert (=> d!1685206 (= res!2219094 (is-ElementMatch!14816 lt!2144406))))

(assert (=> d!1685206 (= (validRegex!6552 lt!2144406) e!3253207)))

(declare-fun b!5227151 () Bool)

(declare-fun e!3253203 () Bool)

(assert (=> b!5227151 (= e!3253203 e!3253201)))

(assert (=> b!5227151 (= c!902517 (is-Union!14816 lt!2144406))))

(declare-fun b!5227155 () Bool)

(assert (=> b!5227155 (= e!3253207 e!3253203)))

(assert (=> b!5227155 (= c!902516 (is-Star!14816 lt!2144406))))

(declare-fun b!5227156 () Bool)

(assert (=> b!5227156 (= e!3253203 e!3253202)))

(declare-fun res!2219091 () Bool)

(assert (=> b!5227156 (= res!2219091 (not (nullable!4985 (reg!15145 lt!2144406))))))

(assert (=> b!5227156 (=> (not res!2219091) (not e!3253202))))

(assert (= (and d!1685206 (not res!2219094)) b!5227155))

(assert (= (and b!5227155 c!902516) b!5227156))

(assert (= (and b!5227155 (not c!902516)) b!5227151))

(assert (= (and b!5227156 res!2219091) b!5227150))

(assert (= (and b!5227151 c!902517) b!5227154))

(assert (= (and b!5227151 (not c!902517)) b!5227152))

(assert (= (and b!5227154 res!2219092) b!5227149))

(assert (= (and b!5227152 (not res!2219093)) b!5227153))

(assert (= (and b!5227153 res!2219090) b!5227148))

(assert (= (or b!5227149 b!5227148) bm!369417))

(assert (= (or b!5227154 b!5227153) bm!369418))

(assert (= (or b!5227150 bm!369417) bm!369416))

(declare-fun m!6273690 () Bool)

(assert (=> bm!369416 m!6273690))

(declare-fun m!6273692 () Bool)

(assert (=> bm!369418 m!6273692))

(declare-fun m!6273694 () Bool)

(assert (=> b!5227156 m!6273694))

(assert (=> d!1684882 d!1685206))

(declare-fun d!1685208 () Bool)

(declare-fun res!2219095 () Bool)

(declare-fun e!3253208 () Bool)

(assert (=> d!1685208 (=> res!2219095 e!3253208)))

(assert (=> d!1685208 (= res!2219095 (is-Nil!60623 (unfocusZipperList!258 zl!343)))))

(assert (=> d!1685208 (= (forall!14248 (unfocusZipperList!258 zl!343) lambda!262403) e!3253208)))

(declare-fun b!5227157 () Bool)

(declare-fun e!3253209 () Bool)

(assert (=> b!5227157 (= e!3253208 e!3253209)))

(declare-fun res!2219096 () Bool)

(assert (=> b!5227157 (=> (not res!2219096) (not e!3253209))))

(assert (=> b!5227157 (= res!2219096 (dynLambda!23958 lambda!262403 (h!67071 (unfocusZipperList!258 zl!343))))))

(declare-fun b!5227158 () Bool)

(assert (=> b!5227158 (= e!3253209 (forall!14248 (t!373922 (unfocusZipperList!258 zl!343)) lambda!262403))))

(assert (= (and d!1685208 (not res!2219095)) b!5227157))

(assert (= (and b!5227157 res!2219096) b!5227158))

(declare-fun b_lambda!202107 () Bool)

(assert (=> (not b_lambda!202107) (not b!5227157)))

(declare-fun m!6273696 () Bool)

(assert (=> b!5227157 m!6273696))

(declare-fun m!6273698 () Bool)

(assert (=> b!5227158 m!6273698))

(assert (=> d!1684882 d!1685208))

(declare-fun d!1685210 () Bool)

(assert (=> d!1685210 (= (nullable!4985 (reg!15145 r!7292)) (nullableFct!1392 (reg!15145 r!7292)))))

(declare-fun bs!1213624 () Bool)

(assert (= bs!1213624 d!1685210))

(declare-fun m!6273700 () Bool)

(assert (=> bs!1213624 m!6273700))

(assert (=> b!5226412 d!1685210))

(assert (=> bs!1213497 d!1684910))

(declare-fun d!1685212 () Bool)

(assert (=> d!1685212 true))

(assert (=> d!1685212 true))

(declare-fun res!2219099 () Bool)

(assert (=> d!1685212 (= (choose!38870 lambda!262380) res!2219099)))

(assert (=> d!1684920 d!1685212))

(assert (=> d!1684932 d!1685140))

(declare-fun d!1685214 () Bool)

(declare-fun c!902518 () Bool)

(assert (=> d!1685214 (= c!902518 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253210 () Bool)

(assert (=> d!1685214 (= (matchZipper!1060 (derivationStepZipper!1084 (set.union lt!2144310 lt!2144287) (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253210)))

(declare-fun b!5227159 () Bool)

(assert (=> b!5227159 (= e!3253210 (nullableZipper!1240 (derivationStepZipper!1084 (set.union lt!2144310 lt!2144287) (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227160 () Bool)

(assert (=> b!5227160 (= e!3253210 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 (set.union lt!2144310 lt!2144287) (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685214 c!902518) b!5227159))

(assert (= (and d!1685214 (not c!902518)) b!5227160))

(assert (=> d!1685214 m!6272876))

(assert (=> d!1685214 m!6273502))

(assert (=> b!5227159 m!6272890))

(declare-fun m!6273702 () Bool)

(assert (=> b!5227159 m!6273702))

(assert (=> b!5227160 m!6272876))

(assert (=> b!5227160 m!6273506))

(assert (=> b!5227160 m!6272890))

(assert (=> b!5227160 m!6273506))

(declare-fun m!6273704 () Bool)

(assert (=> b!5227160 m!6273704))

(assert (=> b!5227160 m!6272876))

(assert (=> b!5227160 m!6273510))

(assert (=> b!5227160 m!6273704))

(assert (=> b!5227160 m!6273510))

(declare-fun m!6273706 () Bool)

(assert (=> b!5227160 m!6273706))

(assert (=> b!5226123 d!1685214))

(declare-fun bs!1213625 () Bool)

(declare-fun d!1685216 () Bool)

(assert (= bs!1213625 (and d!1685216 b!5225936)))

(declare-fun lambda!262474 () Int)

(assert (=> bs!1213625 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262474 lambda!262382))))

(declare-fun bs!1213626 () Bool)

(assert (= bs!1213626 (and d!1685216 d!1685120)))

(assert (=> bs!1213626 (= lambda!262474 lambda!262463)))

(declare-fun bs!1213627 () Bool)

(assert (= bs!1213627 (and d!1685216 d!1685180)))

(assert (=> bs!1213627 (= lambda!262474 lambda!262467)))

(assert (=> d!1685216 true))

(assert (=> d!1685216 (= (derivationStepZipper!1084 (set.union lt!2144310 lt!2144287) (head!11200 (t!373924 s!2326))) (flatMap!543 (set.union lt!2144310 lt!2144287) lambda!262474))))

(declare-fun bs!1213628 () Bool)

(assert (= bs!1213628 d!1685216))

(declare-fun m!6273708 () Bool)

(assert (=> bs!1213628 m!6273708))

(assert (=> b!5226123 d!1685216))

(assert (=> b!5226123 d!1685122))

(assert (=> b!5226123 d!1685124))

(assert (=> bm!369278 d!1685072))

(declare-fun d!1685218 () Bool)

(assert (=> d!1685218 (= (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))) (nullableFct!1392 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun bs!1213629 () Bool)

(assert (= bs!1213629 d!1685218))

(declare-fun m!6273710 () Bool)

(assert (=> bs!1213629 m!6273710))

(assert (=> b!5226331 d!1685218))

(assert (=> b!5226110 d!1684890))

(declare-fun e!3253215 () (Set Context!8400))

(declare-fun b!5227161 () Bool)

(assert (=> b!5227161 (= e!3253215 (set.insert (ite c!902252 lt!2144293 (Context!8401 call!369270)) (as set.empty (Set Context!8400))))))

(declare-fun call!369424 () (Set Context!8400))

(declare-fun call!369425 () List!60747)

(declare-fun c!902519 () Bool)

(declare-fun bm!369419 () Bool)

(assert (=> bm!369419 (= call!369424 (derivationStepZipperDown!264 (ite c!902519 (regOne!30145 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (regOne!30144 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))) (ite c!902519 (ite c!902252 lt!2144293 (Context!8401 call!369270)) (Context!8401 call!369425)) (h!67073 s!2326)))))

(declare-fun bm!369421 () Bool)

(declare-fun c!902523 () Bool)

(declare-fun c!902521 () Bool)

(assert (=> bm!369421 (= call!369425 ($colon$colon!1290 (exprs!4700 (ite c!902252 lt!2144293 (Context!8401 call!369270))) (ite (or c!902523 c!902521) (regTwo!30144 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5227162 () Bool)

(declare-fun c!902522 () Bool)

(assert (=> b!5227162 (= c!902522 (is-Star!14816 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun e!3253216 () (Set Context!8400))

(declare-fun e!3253213 () (Set Context!8400))

(assert (=> b!5227162 (= e!3253216 e!3253213)))

(declare-fun bm!369422 () Bool)

(declare-fun call!369429 () List!60747)

(assert (=> bm!369422 (= call!369429 call!369425)))

(declare-fun b!5227163 () Bool)

(declare-fun e!3253214 () (Set Context!8400))

(assert (=> b!5227163 (= e!3253215 e!3253214)))

(assert (=> b!5227163 (= c!902519 (is-Union!14816 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227164 () Bool)

(declare-fun call!369426 () (Set Context!8400))

(assert (=> b!5227164 (= e!3253214 (set.union call!369424 call!369426))))

(declare-fun b!5227165 () Bool)

(declare-fun e!3253211 () (Set Context!8400))

(assert (=> b!5227165 (= e!3253211 e!3253216)))

(assert (=> b!5227165 (= c!902521 (is-Concat!23661 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227166 () Bool)

(declare-fun call!369427 () (Set Context!8400))

(assert (=> b!5227166 (= e!3253216 call!369427)))

(declare-fun b!5227167 () Bool)

(declare-fun call!369428 () (Set Context!8400))

(assert (=> b!5227167 (= e!3253211 (set.union call!369424 call!369428))))

(declare-fun b!5227168 () Bool)

(assert (=> b!5227168 (= e!3253213 (as set.empty (Set Context!8400)))))

(declare-fun b!5227169 () Bool)

(assert (=> b!5227169 (= e!3253213 call!369427)))

(declare-fun b!5227170 () Bool)

(declare-fun e!3253212 () Bool)

(assert (=> b!5227170 (= e!3253212 (nullable!4985 (regOne!30144 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5227171 () Bool)

(assert (=> b!5227171 (= c!902523 e!3253212)))

(declare-fun res!2219100 () Bool)

(assert (=> b!5227171 (=> (not res!2219100) (not e!3253212))))

(assert (=> b!5227171 (= res!2219100 (is-Concat!23661 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))))))

(assert (=> b!5227171 (= e!3253214 e!3253211)))

(declare-fun c!902520 () Bool)

(declare-fun d!1685220 () Bool)

(assert (=> d!1685220 (= c!902520 (and (is-ElementMatch!14816 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (= (c!902205 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (h!67073 s!2326))))))

(assert (=> d!1685220 (= (derivationStepZipperDown!264 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))) (ite c!902252 lt!2144293 (Context!8401 call!369270)) (h!67073 s!2326)) e!3253215)))

(declare-fun bm!369420 () Bool)

(assert (=> bm!369420 (= call!369428 call!369426)))

(declare-fun bm!369423 () Bool)

(assert (=> bm!369423 (= call!369427 call!369428)))

(declare-fun bm!369424 () Bool)

(assert (=> bm!369424 (= call!369426 (derivationStepZipperDown!264 (ite c!902519 (regTwo!30145 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (ite c!902523 (regTwo!30144 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (ite c!902521 (regOne!30144 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292))))) (reg!15145 (ite c!902252 (regOne!30145 (regOne!30145 (regOne!30144 r!7292))) (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))))) (ite (or c!902519 c!902523) (ite c!902252 lt!2144293 (Context!8401 call!369270)) (Context!8401 call!369429)) (h!67073 s!2326)))))

(assert (= (and d!1685220 c!902520) b!5227161))

(assert (= (and d!1685220 (not c!902520)) b!5227163))

(assert (= (and b!5227163 c!902519) b!5227164))

(assert (= (and b!5227163 (not c!902519)) b!5227171))

(assert (= (and b!5227171 res!2219100) b!5227170))

(assert (= (and b!5227171 c!902523) b!5227167))

(assert (= (and b!5227171 (not c!902523)) b!5227165))

(assert (= (and b!5227165 c!902521) b!5227166))

(assert (= (and b!5227165 (not c!902521)) b!5227162))

(assert (= (and b!5227162 c!902522) b!5227169))

(assert (= (and b!5227162 (not c!902522)) b!5227168))

(assert (= (or b!5227166 b!5227169) bm!369422))

(assert (= (or b!5227166 b!5227169) bm!369423))

(assert (= (or b!5227167 bm!369422) bm!369421))

(assert (= (or b!5227167 bm!369423) bm!369420))

(assert (= (or b!5227164 bm!369420) bm!369424))

(assert (= (or b!5227164 b!5227167) bm!369419))

(declare-fun m!6273712 () Bool)

(assert (=> b!5227161 m!6273712))

(declare-fun m!6273714 () Bool)

(assert (=> bm!369421 m!6273714))

(declare-fun m!6273716 () Bool)

(assert (=> bm!369419 m!6273716))

(declare-fun m!6273718 () Bool)

(assert (=> b!5227170 m!6273718))

(declare-fun m!6273720 () Bool)

(assert (=> bm!369424 m!6273720))

(assert (=> bm!369264 d!1685220))

(assert (=> d!1684864 d!1685140))

(declare-fun b!5227172 () Bool)

(declare-fun e!3253217 () Bool)

(assert (=> b!5227172 (= e!3253217 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289)))))))))

(declare-fun b!5227173 () Bool)

(declare-fun e!3253219 () (Set Context!8400))

(assert (=> b!5227173 (= e!3253219 (as set.empty (Set Context!8400)))))

(declare-fun bm!369425 () Bool)

(declare-fun call!369430 () (Set Context!8400))

(assert (=> bm!369425 (= call!369430 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289)))))) (h!67073 s!2326)))))

(declare-fun b!5227174 () Bool)

(declare-fun e!3253218 () (Set Context!8400))

(assert (=> b!5227174 (= e!3253218 (set.union call!369430 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289)))))) (h!67073 s!2326))))))

(declare-fun d!1685222 () Bool)

(declare-fun c!902524 () Bool)

(assert (=> d!1685222 (= c!902524 e!3253217)))

(declare-fun res!2219101 () Bool)

(assert (=> d!1685222 (=> (not res!2219101) (not e!3253217))))

(assert (=> d!1685222 (= res!2219101 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289))))))))

(assert (=> d!1685222 (= (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (h!67073 s!2326)) e!3253218)))

(declare-fun b!5227175 () Bool)

(assert (=> b!5227175 (= e!3253218 e!3253219)))

(declare-fun c!902525 () Bool)

(assert (=> b!5227175 (= c!902525 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289))))))))

(declare-fun b!5227176 () Bool)

(assert (=> b!5227176 (= e!3253219 call!369430)))

(assert (= (and d!1685222 res!2219101) b!5227172))

(assert (= (and d!1685222 c!902524) b!5227174))

(assert (= (and d!1685222 (not c!902524)) b!5227175))

(assert (= (and b!5227175 c!902525) b!5227176))

(assert (= (and b!5227175 (not c!902525)) b!5227173))

(assert (= (or b!5227174 b!5227176) bm!369425))

(declare-fun m!6273722 () Bool)

(assert (=> b!5227172 m!6273722))

(declare-fun m!6273724 () Bool)

(assert (=> bm!369425 m!6273724))

(declare-fun m!6273726 () Bool)

(assert (=> b!5227174 m!6273726))

(assert (=> b!5226420 d!1685222))

(declare-fun b!5227177 () Bool)

(declare-fun e!3253220 () Bool)

(assert (=> b!5227177 (= e!3253220 (nullable!4985 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297)))))))))

(declare-fun b!5227178 () Bool)

(declare-fun e!3253222 () (Set Context!8400))

(assert (=> b!5227178 (= e!3253222 (as set.empty (Set Context!8400)))))

(declare-fun bm!369426 () Bool)

(declare-fun call!369431 () (Set Context!8400))

(assert (=> bm!369426 (= call!369431 (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297)))))) (h!67073 s!2326)))))

(declare-fun e!3253221 () (Set Context!8400))

(declare-fun b!5227179 () Bool)

(assert (=> b!5227179 (= e!3253221 (set.union call!369431 (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297)))))) (h!67073 s!2326))))))

(declare-fun d!1685224 () Bool)

(declare-fun c!902526 () Bool)

(assert (=> d!1685224 (= c!902526 e!3253220)))

(declare-fun res!2219102 () Bool)

(assert (=> d!1685224 (=> (not res!2219102) (not e!3253220))))

(assert (=> d!1685224 (= res!2219102 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297))))))))

(assert (=> d!1685224 (= (derivationStepZipperUp!188 (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (h!67073 s!2326)) e!3253221)))

(declare-fun b!5227180 () Bool)

(assert (=> b!5227180 (= e!3253221 e!3253222)))

(declare-fun c!902527 () Bool)

(assert (=> b!5227180 (= c!902527 (is-Cons!60623 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297))))))))

(declare-fun b!5227181 () Bool)

(assert (=> b!5227181 (= e!3253222 call!369431)))

(assert (= (and d!1685224 res!2219102) b!5227177))

(assert (= (and d!1685224 c!902526) b!5227179))

(assert (= (and d!1685224 (not c!902526)) b!5227180))

(assert (= (and b!5227180 c!902527) b!5227181))

(assert (= (and b!5227180 (not c!902527)) b!5227178))

(assert (= (or b!5227179 b!5227181) bm!369426))

(declare-fun m!6273728 () Bool)

(assert (=> b!5227177 m!6273728))

(declare-fun m!6273730 () Bool)

(assert (=> bm!369426 m!6273730))

(declare-fun m!6273732 () Bool)

(assert (=> b!5227179 m!6273732))

(assert (=> b!5226415 d!1685224))

(assert (=> d!1684870 d!1685140))

(declare-fun d!1685226 () Bool)

(assert (=> d!1685226 true))

(declare-fun setRes!33275 () Bool)

(assert (=> d!1685226 setRes!33275))

(declare-fun condSetEmpty!33275 () Bool)

(declare-fun res!2219103 () (Set Context!8400))

(assert (=> d!1685226 (= condSetEmpty!33275 (= res!2219103 (as set.empty (Set Context!8400))))))

(assert (=> d!1685226 (= (choose!38869 lt!2144296 lambda!262382) res!2219103)))

(declare-fun setIsEmpty!33275 () Bool)

(assert (=> setIsEmpty!33275 setRes!33275))

(declare-fun e!3253223 () Bool)

(declare-fun tp!1464941 () Bool)

(declare-fun setNonEmpty!33275 () Bool)

(declare-fun setElem!33275 () Context!8400)

(assert (=> setNonEmpty!33275 (= setRes!33275 (and tp!1464941 (inv!80288 setElem!33275) e!3253223))))

(declare-fun setRest!33275 () (Set Context!8400))

(assert (=> setNonEmpty!33275 (= res!2219103 (set.union (set.insert setElem!33275 (as set.empty (Set Context!8400))) setRest!33275))))

(declare-fun b!5227182 () Bool)

(declare-fun tp!1464940 () Bool)

(assert (=> b!5227182 (= e!3253223 tp!1464940)))

(assert (= (and d!1685226 condSetEmpty!33275) setIsEmpty!33275))

(assert (= (and d!1685226 (not condSetEmpty!33275)) setNonEmpty!33275))

(assert (= setNonEmpty!33275 b!5227182))

(declare-fun m!6273734 () Bool)

(assert (=> setNonEmpty!33275 m!6273734))

(assert (=> d!1684948 d!1685226))

(declare-fun d!1685228 () Bool)

(declare-fun c!902528 () Bool)

(assert (=> d!1685228 (= c!902528 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253224 () Bool)

(assert (=> d!1685228 (= (matchZipper!1060 (derivationStepZipper!1084 (set.union lt!2144285 lt!2144287) (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253224)))

(declare-fun b!5227183 () Bool)

(assert (=> b!5227183 (= e!3253224 (nullableZipper!1240 (derivationStepZipper!1084 (set.union lt!2144285 lt!2144287) (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227184 () Bool)

(assert (=> b!5227184 (= e!3253224 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 (set.union lt!2144285 lt!2144287) (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685228 c!902528) b!5227183))

(assert (= (and d!1685228 (not c!902528)) b!5227184))

(assert (=> d!1685228 m!6272876))

(assert (=> d!1685228 m!6273502))

(assert (=> b!5227183 m!6272948))

(declare-fun m!6273736 () Bool)

(assert (=> b!5227183 m!6273736))

(assert (=> b!5227184 m!6272876))

(assert (=> b!5227184 m!6273506))

(assert (=> b!5227184 m!6272948))

(assert (=> b!5227184 m!6273506))

(declare-fun m!6273738 () Bool)

(assert (=> b!5227184 m!6273738))

(assert (=> b!5227184 m!6272876))

(assert (=> b!5227184 m!6273510))

(assert (=> b!5227184 m!6273738))

(assert (=> b!5227184 m!6273510))

(declare-fun m!6273740 () Bool)

(assert (=> b!5227184 m!6273740))

(assert (=> b!5226209 d!1685228))

(declare-fun bs!1213630 () Bool)

(declare-fun d!1685230 () Bool)

(assert (= bs!1213630 (and d!1685230 b!5225936)))

(declare-fun lambda!262475 () Int)

(assert (=> bs!1213630 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262475 lambda!262382))))

(declare-fun bs!1213631 () Bool)

(assert (= bs!1213631 (and d!1685230 d!1685120)))

(assert (=> bs!1213631 (= lambda!262475 lambda!262463)))

(declare-fun bs!1213632 () Bool)

(assert (= bs!1213632 (and d!1685230 d!1685180)))

(assert (=> bs!1213632 (= lambda!262475 lambda!262467)))

(declare-fun bs!1213633 () Bool)

(assert (= bs!1213633 (and d!1685230 d!1685216)))

(assert (=> bs!1213633 (= lambda!262475 lambda!262474)))

(assert (=> d!1685230 true))

(assert (=> d!1685230 (= (derivationStepZipper!1084 (set.union lt!2144285 lt!2144287) (head!11200 (t!373924 s!2326))) (flatMap!543 (set.union lt!2144285 lt!2144287) lambda!262475))))

(declare-fun bs!1213634 () Bool)

(assert (= bs!1213634 d!1685230))

(declare-fun m!6273742 () Bool)

(assert (=> bs!1213634 m!6273742))

(assert (=> b!5226209 d!1685230))

(assert (=> b!5226209 d!1685122))

(assert (=> b!5226209 d!1685124))

(declare-fun d!1685232 () Bool)

(assert (=> d!1685232 true))

(assert (=> d!1685232 true))

(declare-fun res!2219104 () Bool)

(assert (=> d!1685232 (= (choose!38870 lambda!262381) res!2219104)))

(assert (=> d!1684918 d!1685232))

(declare-fun bs!1213635 () Bool)

(declare-fun d!1685234 () Bool)

(assert (= bs!1213635 (and d!1685234 d!1685130)))

(declare-fun lambda!262476 () Int)

(assert (=> bs!1213635 (= lambda!262476 lambda!262464)))

(declare-fun bs!1213636 () Bool)

(assert (= bs!1213636 (and d!1685234 d!1684884)))

(assert (=> bs!1213636 (= lambda!262476 lambda!262406)))

(declare-fun bs!1213637 () Bool)

(assert (= bs!1213637 (and d!1685234 d!1684900)))

(assert (=> bs!1213637 (= lambda!262476 lambda!262415)))

(declare-fun bs!1213638 () Bool)

(assert (= bs!1213638 (and d!1685234 d!1684882)))

(assert (=> bs!1213638 (= lambda!262476 lambda!262403)))

(declare-fun bs!1213639 () Bool)

(assert (= bs!1213639 (and d!1685234 d!1685114)))

(assert (=> bs!1213639 (= lambda!262476 lambda!262460)))

(declare-fun bs!1213640 () Bool)

(assert (= bs!1213640 (and d!1685234 d!1684930)))

(assert (=> bs!1213640 (= lambda!262476 lambda!262425)))

(declare-fun bs!1213641 () Bool)

(assert (= bs!1213641 (and d!1685234 d!1685102)))

(assert (=> bs!1213641 (= lambda!262476 lambda!262458)))

(declare-fun bs!1213642 () Bool)

(assert (= bs!1213642 (and d!1685234 d!1684862)))

(assert (=> bs!1213642 (= lambda!262476 lambda!262400)))

(assert (=> d!1685234 (= (inv!80288 setElem!33268) (forall!14248 (exprs!4700 setElem!33268) lambda!262476))))

(declare-fun bs!1213643 () Bool)

(assert (= bs!1213643 d!1685234))

(declare-fun m!6273744 () Bool)

(assert (=> bs!1213643 m!6273744))

(assert (=> setNonEmpty!33268 d!1685234))

(declare-fun d!1685236 () Bool)

(assert (=> d!1685236 (= (isEmpty!32547 (t!373922 (unfocusZipperList!258 zl!343))) (is-Nil!60623 (t!373922 (unfocusZipperList!258 zl!343))))))

(assert (=> b!5226200 d!1685236))

(declare-fun d!1685238 () Bool)

(declare-fun c!902531 () Bool)

(assert (=> d!1685238 (= c!902531 (is-Nil!60624 lt!2144403))))

(declare-fun e!3253227 () (Set Context!8400))

(assert (=> d!1685238 (= (content!10756 lt!2144403) e!3253227)))

(declare-fun b!5227189 () Bool)

(assert (=> b!5227189 (= e!3253227 (as set.empty (Set Context!8400)))))

(declare-fun b!5227190 () Bool)

(assert (=> b!5227190 (= e!3253227 (set.union (set.insert (h!67072 lt!2144403) (as set.empty (Set Context!8400))) (content!10756 (t!373923 lt!2144403))))))

(assert (= (and d!1685238 c!902531) b!5227189))

(assert (= (and d!1685238 (not c!902531)) b!5227190))

(declare-fun m!6273746 () Bool)

(assert (=> b!5227190 m!6273746))

(declare-fun m!6273748 () Bool)

(assert (=> b!5227190 m!6273748))

(assert (=> b!5226126 d!1685238))

(declare-fun b!5227191 () Bool)

(declare-fun e!3253232 () (Set Context!8400))

(assert (=> b!5227191 (= e!3253232 (set.insert (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (as set.empty (Set Context!8400))))))

(declare-fun call!369433 () List!60747)

(declare-fun call!369432 () (Set Context!8400))

(declare-fun bm!369427 () Bool)

(declare-fun c!902532 () Bool)

(assert (=> bm!369427 (= call!369432 (derivationStepZipperDown!264 (ite c!902532 (regOne!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))) (ite c!902532 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (Context!8401 call!369433)) (h!67073 s!2326)))))

(declare-fun c!902534 () Bool)

(declare-fun c!902536 () Bool)

(declare-fun bm!369429 () Bool)

(assert (=> bm!369429 (= call!369433 ($colon$colon!1290 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343))))) (ite (or c!902536 c!902534) (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67071 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5227192 () Bool)

(declare-fun c!902535 () Bool)

(assert (=> b!5227192 (= c!902535 (is-Star!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun e!3253233 () (Set Context!8400))

(declare-fun e!3253230 () (Set Context!8400))

(assert (=> b!5227192 (= e!3253233 e!3253230)))

(declare-fun bm!369430 () Bool)

(declare-fun call!369437 () List!60747)

(assert (=> bm!369430 (= call!369437 call!369433)))

(declare-fun b!5227193 () Bool)

(declare-fun e!3253231 () (Set Context!8400))

(assert (=> b!5227193 (= e!3253232 e!3253231)))

(assert (=> b!5227193 (= c!902532 (is-Union!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5227194 () Bool)

(declare-fun call!369434 () (Set Context!8400))

(assert (=> b!5227194 (= e!3253231 (set.union call!369432 call!369434))))

(declare-fun b!5227195 () Bool)

(declare-fun e!3253228 () (Set Context!8400))

(assert (=> b!5227195 (= e!3253228 e!3253233)))

(assert (=> b!5227195 (= c!902534 (is-Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5227196 () Bool)

(declare-fun call!369435 () (Set Context!8400))

(assert (=> b!5227196 (= e!3253233 call!369435)))

(declare-fun b!5227197 () Bool)

(declare-fun call!369436 () (Set Context!8400))

(assert (=> b!5227197 (= e!3253228 (set.union call!369432 call!369436))))

(declare-fun b!5227198 () Bool)

(assert (=> b!5227198 (= e!3253230 (as set.empty (Set Context!8400)))))

(declare-fun b!5227199 () Bool)

(assert (=> b!5227199 (= e!3253230 call!369435)))

(declare-fun b!5227200 () Bool)

(declare-fun e!3253229 () Bool)

(assert (=> b!5227200 (= e!3253229 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343))))))))

(declare-fun b!5227201 () Bool)

(assert (=> b!5227201 (= c!902536 e!3253229)))

(declare-fun res!2219105 () Bool)

(assert (=> b!5227201 (=> (not res!2219105) (not e!3253229))))

(assert (=> b!5227201 (= res!2219105 (is-Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> b!5227201 (= e!3253231 e!3253228)))

(declare-fun d!1685240 () Bool)

(declare-fun c!902533 () Bool)

(assert (=> d!1685240 (= c!902533 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 (h!67072 zl!343)))) (= (c!902205 (h!67071 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326))))))

(assert (=> d!1685240 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 (h!67072 zl!343))) (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (h!67073 s!2326)) e!3253232)))

(declare-fun bm!369428 () Bool)

(assert (=> bm!369428 (= call!369436 call!369434)))

(declare-fun bm!369431 () Bool)

(assert (=> bm!369431 (= call!369435 call!369436)))

(declare-fun bm!369432 () Bool)

(assert (=> bm!369432 (= call!369434 (derivationStepZipperDown!264 (ite c!902532 (regTwo!30145 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902536 (regTwo!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (ite c!902534 (regOne!30144 (h!67071 (exprs!4700 (h!67072 zl!343)))) (reg!15145 (h!67071 (exprs!4700 (h!67072 zl!343))))))) (ite (or c!902532 c!902536) (Context!8401 (t!373922 (exprs!4700 (h!67072 zl!343)))) (Context!8401 call!369437)) (h!67073 s!2326)))))

(assert (= (and d!1685240 c!902533) b!5227191))

(assert (= (and d!1685240 (not c!902533)) b!5227193))

(assert (= (and b!5227193 c!902532) b!5227194))

(assert (= (and b!5227193 (not c!902532)) b!5227201))

(assert (= (and b!5227201 res!2219105) b!5227200))

(assert (= (and b!5227201 c!902536) b!5227197))

(assert (= (and b!5227201 (not c!902536)) b!5227195))

(assert (= (and b!5227195 c!902534) b!5227196))

(assert (= (and b!5227195 (not c!902534)) b!5227192))

(assert (= (and b!5227192 c!902535) b!5227199))

(assert (= (and b!5227192 (not c!902535)) b!5227198))

(assert (= (or b!5227196 b!5227199) bm!369430))

(assert (= (or b!5227196 b!5227199) bm!369431))

(assert (= (or b!5227197 bm!369430) bm!369429))

(assert (= (or b!5227197 bm!369431) bm!369428))

(assert (= (or b!5227194 bm!369428) bm!369432))

(assert (= (or b!5227194 b!5227197) bm!369427))

(declare-fun m!6273750 () Bool)

(assert (=> b!5227191 m!6273750))

(declare-fun m!6273752 () Bool)

(assert (=> bm!369429 m!6273752))

(declare-fun m!6273754 () Bool)

(assert (=> bm!369427 m!6273754))

(assert (=> b!5227200 m!6273012))

(declare-fun m!6273756 () Bool)

(assert (=> bm!369432 m!6273756))

(assert (=> bm!369283 d!1685240))

(declare-fun b!5227202 () Bool)

(declare-fun e!3253238 () (Set Context!8400))

(assert (=> b!5227202 (= e!3253238 (set.insert (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (as set.empty (Set Context!8400))))))

(declare-fun call!369438 () (Set Context!8400))

(declare-fun call!369439 () List!60747)

(declare-fun c!902537 () Bool)

(declare-fun bm!369433 () Bool)

(assert (=> bm!369433 (= call!369438 (derivationStepZipperDown!264 (ite c!902537 (regOne!30145 (h!67071 (exprs!4700 lt!2144293))) (regOne!30144 (h!67071 (exprs!4700 lt!2144293)))) (ite c!902537 (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (Context!8401 call!369439)) (h!67073 s!2326)))))

(declare-fun bm!369435 () Bool)

(declare-fun c!902541 () Bool)

(declare-fun c!902539 () Bool)

(assert (=> bm!369435 (= call!369439 ($colon$colon!1290 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144293)))) (ite (or c!902541 c!902539) (regTwo!30144 (h!67071 (exprs!4700 lt!2144293))) (h!67071 (exprs!4700 lt!2144293)))))))

(declare-fun b!5227203 () Bool)

(declare-fun c!902540 () Bool)

(assert (=> b!5227203 (= c!902540 (is-Star!14816 (h!67071 (exprs!4700 lt!2144293))))))

(declare-fun e!3253239 () (Set Context!8400))

(declare-fun e!3253236 () (Set Context!8400))

(assert (=> b!5227203 (= e!3253239 e!3253236)))

(declare-fun bm!369436 () Bool)

(declare-fun call!369443 () List!60747)

(assert (=> bm!369436 (= call!369443 call!369439)))

(declare-fun b!5227204 () Bool)

(declare-fun e!3253237 () (Set Context!8400))

(assert (=> b!5227204 (= e!3253238 e!3253237)))

(assert (=> b!5227204 (= c!902537 (is-Union!14816 (h!67071 (exprs!4700 lt!2144293))))))

(declare-fun b!5227205 () Bool)

(declare-fun call!369440 () (Set Context!8400))

(assert (=> b!5227205 (= e!3253237 (set.union call!369438 call!369440))))

(declare-fun b!5227206 () Bool)

(declare-fun e!3253234 () (Set Context!8400))

(assert (=> b!5227206 (= e!3253234 e!3253239)))

(assert (=> b!5227206 (= c!902539 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144293))))))

(declare-fun b!5227207 () Bool)

(declare-fun call!369441 () (Set Context!8400))

(assert (=> b!5227207 (= e!3253239 call!369441)))

(declare-fun b!5227208 () Bool)

(declare-fun call!369442 () (Set Context!8400))

(assert (=> b!5227208 (= e!3253234 (set.union call!369438 call!369442))))

(declare-fun b!5227209 () Bool)

(assert (=> b!5227209 (= e!3253236 (as set.empty (Set Context!8400)))))

(declare-fun b!5227210 () Bool)

(assert (=> b!5227210 (= e!3253236 call!369441)))

(declare-fun b!5227211 () Bool)

(declare-fun e!3253235 () Bool)

(assert (=> b!5227211 (= e!3253235 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 lt!2144293)))))))

(declare-fun b!5227212 () Bool)

(assert (=> b!5227212 (= c!902541 e!3253235)))

(declare-fun res!2219106 () Bool)

(assert (=> b!5227212 (=> (not res!2219106) (not e!3253235))))

(assert (=> b!5227212 (= res!2219106 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144293))))))

(assert (=> b!5227212 (= e!3253237 e!3253234)))

(declare-fun d!1685242 () Bool)

(declare-fun c!902538 () Bool)

(assert (=> d!1685242 (= c!902538 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 lt!2144293))) (= (c!902205 (h!67071 (exprs!4700 lt!2144293))) (h!67073 s!2326))))))

(assert (=> d!1685242 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144293)) (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (h!67073 s!2326)) e!3253238)))

(declare-fun bm!369434 () Bool)

(assert (=> bm!369434 (= call!369442 call!369440)))

(declare-fun bm!369437 () Bool)

(assert (=> bm!369437 (= call!369441 call!369442)))

(declare-fun bm!369438 () Bool)

(assert (=> bm!369438 (= call!369440 (derivationStepZipperDown!264 (ite c!902537 (regTwo!30145 (h!67071 (exprs!4700 lt!2144293))) (ite c!902541 (regTwo!30144 (h!67071 (exprs!4700 lt!2144293))) (ite c!902539 (regOne!30144 (h!67071 (exprs!4700 lt!2144293))) (reg!15145 (h!67071 (exprs!4700 lt!2144293)))))) (ite (or c!902537 c!902541) (Context!8401 (t!373922 (exprs!4700 lt!2144293))) (Context!8401 call!369443)) (h!67073 s!2326)))))

(assert (= (and d!1685242 c!902538) b!5227202))

(assert (= (and d!1685242 (not c!902538)) b!5227204))

(assert (= (and b!5227204 c!902537) b!5227205))

(assert (= (and b!5227204 (not c!902537)) b!5227212))

(assert (= (and b!5227212 res!2219106) b!5227211))

(assert (= (and b!5227212 c!902541) b!5227208))

(assert (= (and b!5227212 (not c!902541)) b!5227206))

(assert (= (and b!5227206 c!902539) b!5227207))

(assert (= (and b!5227206 (not c!902539)) b!5227203))

(assert (= (and b!5227203 c!902540) b!5227210))

(assert (= (and b!5227203 (not c!902540)) b!5227209))

(assert (= (or b!5227207 b!5227210) bm!369436))

(assert (= (or b!5227207 b!5227210) bm!369437))

(assert (= (or b!5227208 bm!369436) bm!369435))

(assert (= (or b!5227208 bm!369437) bm!369434))

(assert (= (or b!5227205 bm!369434) bm!369438))

(assert (= (or b!5227205 b!5227208) bm!369433))

(declare-fun m!6273758 () Bool)

(assert (=> b!5227202 m!6273758))

(declare-fun m!6273760 () Bool)

(assert (=> bm!369435 m!6273760))

(declare-fun m!6273762 () Bool)

(assert (=> bm!369433 m!6273762))

(declare-fun m!6273764 () Bool)

(assert (=> b!5227211 m!6273764))

(declare-fun m!6273766 () Bool)

(assert (=> bm!369438 m!6273766))

(assert (=> bm!369282 d!1685242))

(declare-fun b!5227213 () Bool)

(declare-fun e!3253244 () (Set Context!8400))

(assert (=> b!5227213 (= e!3253244 (set.insert (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (as set.empty (Set Context!8400))))))

(declare-fun call!369445 () List!60747)

(declare-fun bm!369439 () Bool)

(declare-fun c!902542 () Bool)

(declare-fun call!369444 () (Set Context!8400))

(assert (=> bm!369439 (= call!369444 (derivationStepZipperDown!264 (ite c!902542 (regOne!30145 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (regOne!30144 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))) (ite c!902542 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (Context!8401 call!369445)) (h!67073 s!2326)))))

(declare-fun bm!369441 () Bool)

(declare-fun c!902544 () Bool)

(declare-fun c!902546 () Bool)

(assert (=> bm!369441 (= call!369445 ($colon$colon!1290 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))) (ite (or c!902546 c!902544) (regTwo!30144 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))))

(declare-fun b!5227214 () Bool)

(declare-fun c!902545 () Bool)

(assert (=> b!5227214 (= c!902545 (is-Star!14816 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun e!3253245 () (Set Context!8400))

(declare-fun e!3253242 () (Set Context!8400))

(assert (=> b!5227214 (= e!3253245 e!3253242)))

(declare-fun bm!369442 () Bool)

(declare-fun call!369449 () List!60747)

(assert (=> bm!369442 (= call!369449 call!369445)))

(declare-fun b!5227215 () Bool)

(declare-fun e!3253243 () (Set Context!8400))

(assert (=> b!5227215 (= e!3253244 e!3253243)))

(assert (=> b!5227215 (= c!902542 (is-Union!14816 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun b!5227216 () Bool)

(declare-fun call!369446 () (Set Context!8400))

(assert (=> b!5227216 (= e!3253243 (set.union call!369444 call!369446))))

(declare-fun b!5227217 () Bool)

(declare-fun e!3253240 () (Set Context!8400))

(assert (=> b!5227217 (= e!3253240 e!3253245)))

(assert (=> b!5227217 (= c!902544 (is-Concat!23661 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(declare-fun b!5227218 () Bool)

(declare-fun call!369447 () (Set Context!8400))

(assert (=> b!5227218 (= e!3253245 call!369447)))

(declare-fun b!5227219 () Bool)

(declare-fun call!369448 () (Set Context!8400))

(assert (=> b!5227219 (= e!3253240 (set.union call!369444 call!369448))))

(declare-fun b!5227220 () Bool)

(assert (=> b!5227220 (= e!3253242 (as set.empty (Set Context!8400)))))

(declare-fun b!5227221 () Bool)

(assert (=> b!5227221 (= e!3253242 call!369447)))

(declare-fun b!5227222 () Bool)

(declare-fun e!3253241 () Bool)

(assert (=> b!5227222 (= e!3253241 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))))

(declare-fun b!5227223 () Bool)

(assert (=> b!5227223 (= c!902546 e!3253241)))

(declare-fun res!2219107 () Bool)

(assert (=> b!5227223 (=> (not res!2219107) (not e!3253241))))

(assert (=> b!5227223 (= res!2219107 (is-Concat!23661 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))))))

(assert (=> b!5227223 (= e!3253243 e!3253240)))

(declare-fun d!1685244 () Bool)

(declare-fun c!902543 () Bool)

(assert (=> d!1685244 (= c!902543 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (= (c!902205 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326))))))

(assert (=> d!1685244 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (h!67073 s!2326)) e!3253244)))

(declare-fun bm!369440 () Bool)

(assert (=> bm!369440 (= call!369448 call!369446)))

(declare-fun bm!369443 () Bool)

(assert (=> bm!369443 (= call!369447 call!369448)))

(declare-fun bm!369444 () Bool)

(assert (=> bm!369444 (= call!369446 (derivationStepZipperDown!264 (ite c!902542 (regTwo!30145 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (ite c!902546 (regTwo!30144 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (ite c!902544 (regOne!30144 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (reg!15145 (h!67071 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))))))) (ite (or c!902542 c!902546) (Context!8401 (t!373922 (exprs!4700 (Context!8401 (Cons!60623 (h!67071 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343)))))))) (Context!8401 call!369449)) (h!67073 s!2326)))))

(assert (= (and d!1685244 c!902543) b!5227213))

(assert (= (and d!1685244 (not c!902543)) b!5227215))

(assert (= (and b!5227215 c!902542) b!5227216))

(assert (= (and b!5227215 (not c!902542)) b!5227223))

(assert (= (and b!5227223 res!2219107) b!5227222))

(assert (= (and b!5227223 c!902546) b!5227219))

(assert (= (and b!5227223 (not c!902546)) b!5227217))

(assert (= (and b!5227217 c!902544) b!5227218))

(assert (= (and b!5227217 (not c!902544)) b!5227214))

(assert (= (and b!5227214 c!902545) b!5227221))

(assert (= (and b!5227214 (not c!902545)) b!5227220))

(assert (= (or b!5227218 b!5227221) bm!369442))

(assert (= (or b!5227218 b!5227221) bm!369443))

(assert (= (or b!5227219 bm!369442) bm!369441))

(assert (= (or b!5227219 bm!369443) bm!369440))

(assert (= (or b!5227216 bm!369440) bm!369444))

(assert (= (or b!5227216 b!5227219) bm!369439))

(declare-fun m!6273768 () Bool)

(assert (=> b!5227213 m!6273768))

(declare-fun m!6273770 () Bool)

(assert (=> bm!369441 m!6273770))

(declare-fun m!6273772 () Bool)

(assert (=> bm!369439 m!6273772))

(declare-fun m!6273774 () Bool)

(assert (=> b!5227222 m!6273774))

(declare-fun m!6273776 () Bool)

(assert (=> bm!369444 m!6273776))

(assert (=> bm!369281 d!1685244))

(declare-fun d!1685246 () Bool)

(assert (=> d!1685246 (= (Exists!1997 (ite c!902283 lambda!262411 lambda!262412)) (choose!38870 (ite c!902283 lambda!262411 lambda!262412)))))

(declare-fun bs!1213644 () Bool)

(assert (= bs!1213644 d!1685246))

(declare-fun m!6273778 () Bool)

(assert (=> bs!1213644 m!6273778))

(assert (=> bm!369275 d!1685246))

(declare-fun d!1685248 () Bool)

(assert (=> d!1685248 true))

(declare-fun setRes!33276 () Bool)

(assert (=> d!1685248 setRes!33276))

(declare-fun condSetEmpty!33276 () Bool)

(declare-fun res!2219108 () (Set Context!8400))

(assert (=> d!1685248 (= condSetEmpty!33276 (= res!2219108 (as set.empty (Set Context!8400))))))

(assert (=> d!1685248 (= (choose!38869 lt!2144301 lambda!262382) res!2219108)))

(declare-fun setIsEmpty!33276 () Bool)

(assert (=> setIsEmpty!33276 setRes!33276))

(declare-fun setNonEmpty!33276 () Bool)

(declare-fun e!3253246 () Bool)

(declare-fun tp!1464943 () Bool)

(declare-fun setElem!33276 () Context!8400)

(assert (=> setNonEmpty!33276 (= setRes!33276 (and tp!1464943 (inv!80288 setElem!33276) e!3253246))))

(declare-fun setRest!33276 () (Set Context!8400))

(assert (=> setNonEmpty!33276 (= res!2219108 (set.union (set.insert setElem!33276 (as set.empty (Set Context!8400))) setRest!33276))))

(declare-fun b!5227224 () Bool)

(declare-fun tp!1464942 () Bool)

(assert (=> b!5227224 (= e!3253246 tp!1464942)))

(assert (= (and d!1685248 condSetEmpty!33276) setIsEmpty!33276))

(assert (= (and d!1685248 (not condSetEmpty!33276)) setNonEmpty!33276))

(assert (= setNonEmpty!33276 b!5227224))

(declare-fun m!6273780 () Bool)

(assert (=> setNonEmpty!33276 m!6273780))

(assert (=> d!1684942 d!1685248))

(declare-fun d!1685250 () Bool)

(assert (=> d!1685250 (= (isEmptyLang!785 lt!2144406) (is-EmptyLang!14816 lt!2144406))))

(assert (=> b!5226199 d!1685250))

(declare-fun d!1685252 () Bool)

(assert (=> d!1685252 (= (isEmpty!32547 (exprs!4700 (h!67072 zl!343))) (is-Nil!60623 (exprs!4700 (h!67072 zl!343))))))

(assert (=> b!5226101 d!1685252))

(declare-fun d!1685254 () Bool)

(assert (=> d!1685254 (= (head!11200 s!2326) (h!67073 s!2326))))

(assert (=> b!5226293 d!1685254))

(declare-fun b!5227225 () Bool)

(declare-fun e!3253247 () Bool)

(declare-fun e!3253249 () Bool)

(assert (=> b!5227225 (= e!3253247 e!3253249)))

(declare-fun res!2219113 () Bool)

(assert (=> b!5227225 (=> (not res!2219113) (not e!3253249))))

(assert (=> b!5227225 (= res!2219113 (and (not (is-EmptyLang!14816 (regTwo!30145 (regOne!30144 r!7292)))) (not (is-ElementMatch!14816 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227226 () Bool)

(declare-fun e!3253250 () Bool)

(declare-fun call!369451 () Bool)

(assert (=> b!5227226 (= e!3253250 call!369451)))

(declare-fun b!5227227 () Bool)

(declare-fun e!3253248 () Bool)

(assert (=> b!5227227 (= e!3253249 e!3253248)))

(declare-fun res!2219111 () Bool)

(assert (=> b!5227227 (=> res!2219111 e!3253248)))

(assert (=> b!5227227 (= res!2219111 (is-Star!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(declare-fun bm!369445 () Bool)

(declare-fun call!369450 () Bool)

(declare-fun c!902547 () Bool)

(assert (=> bm!369445 (= call!369450 (nullable!4985 (ite c!902547 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227228 () Bool)

(declare-fun e!3253251 () Bool)

(assert (=> b!5227228 (= e!3253251 call!369451)))

(declare-fun b!5227229 () Bool)

(declare-fun e!3253252 () Bool)

(assert (=> b!5227229 (= e!3253252 e!3253250)))

(declare-fun res!2219110 () Bool)

(assert (=> b!5227229 (= res!2219110 call!369450)))

(assert (=> b!5227229 (=> (not res!2219110) (not e!3253250))))

(declare-fun d!1685256 () Bool)

(declare-fun res!2219109 () Bool)

(assert (=> d!1685256 (=> res!2219109 e!3253247)))

(assert (=> d!1685256 (= res!2219109 (is-EmptyExpr!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(assert (=> d!1685256 (= (nullableFct!1392 (regTwo!30145 (regOne!30144 r!7292))) e!3253247)))

(declare-fun b!5227230 () Bool)

(assert (=> b!5227230 (= e!3253252 e!3253251)))

(declare-fun res!2219112 () Bool)

(assert (=> b!5227230 (= res!2219112 call!369450)))

(assert (=> b!5227230 (=> res!2219112 e!3253251)))

(declare-fun bm!369446 () Bool)

(assert (=> bm!369446 (= call!369451 (nullable!4985 (ite c!902547 (regTwo!30145 (regTwo!30145 (regOne!30144 r!7292))) (regTwo!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227231 () Bool)

(assert (=> b!5227231 (= e!3253248 e!3253252)))

(assert (=> b!5227231 (= c!902547 (is-Union!14816 (regTwo!30145 (regOne!30144 r!7292))))))

(assert (= (and d!1685256 (not res!2219109)) b!5227225))

(assert (= (and b!5227225 res!2219113) b!5227227))

(assert (= (and b!5227227 (not res!2219111)) b!5227231))

(assert (= (and b!5227231 c!902547) b!5227230))

(assert (= (and b!5227231 (not c!902547)) b!5227229))

(assert (= (and b!5227230 (not res!2219112)) b!5227228))

(assert (= (and b!5227229 res!2219110) b!5227226))

(assert (= (or b!5227228 b!5227226) bm!369446))

(assert (= (or b!5227230 b!5227229) bm!369445))

(declare-fun m!6273782 () Bool)

(assert (=> bm!369445 m!6273782))

(declare-fun m!6273784 () Bool)

(assert (=> bm!369446 m!6273784))

(assert (=> d!1684940 d!1685256))

(declare-fun bs!1213645 () Bool)

(declare-fun d!1685258 () Bool)

(assert (= bs!1213645 (and d!1685258 d!1685068)))

(declare-fun lambda!262477 () Int)

(assert (=> bs!1213645 (= lambda!262477 lambda!262456)))

(declare-fun bs!1213646 () Bool)

(assert (= bs!1213646 (and d!1685258 d!1685084)))

(assert (=> bs!1213646 (= lambda!262477 lambda!262457)))

(declare-fun bs!1213647 () Bool)

(assert (= bs!1213647 (and d!1685258 d!1685104)))

(assert (=> bs!1213647 (= lambda!262477 lambda!262459)))

(declare-fun bs!1213648 () Bool)

(assert (= bs!1213648 (and d!1685258 d!1685200)))

(assert (=> bs!1213648 (= lambda!262477 lambda!262473)))

(assert (=> d!1685258 (= (nullableZipper!1240 lt!2144310) (exists!1975 lt!2144310 lambda!262477))))

(declare-fun bs!1213649 () Bool)

(assert (= bs!1213649 d!1685258))

(declare-fun m!6273786 () Bool)

(assert (=> bs!1213649 m!6273786))

(assert (=> b!5226120 d!1685258))

(declare-fun d!1685260 () Bool)

(assert (=> d!1685260 (= (nullable!4985 (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))) (nullableFct!1392 (regOne!30144 (regOne!30145 (regOne!30144 r!7292)))))))

(declare-fun bs!1213650 () Bool)

(assert (= bs!1213650 d!1685260))

(declare-fun m!6273788 () Bool)

(assert (=> bs!1213650 m!6273788))

(assert (=> b!5226169 d!1685260))

(declare-fun b!5227233 () Bool)

(declare-fun e!3253253 () List!60749)

(assert (=> b!5227233 (= e!3253253 (Cons!60625 (h!67073 (_1!35318 (get!20834 lt!2144428))) (++!13220 (t!373924 (_1!35318 (get!20834 lt!2144428))) (_2!35318 (get!20834 lt!2144428)))))))

(declare-fun b!5227232 () Bool)

(assert (=> b!5227232 (= e!3253253 (_2!35318 (get!20834 lt!2144428)))))

(declare-fun b!5227235 () Bool)

(declare-fun e!3253254 () Bool)

(declare-fun lt!2144499 () List!60749)

(assert (=> b!5227235 (= e!3253254 (or (not (= (_2!35318 (get!20834 lt!2144428)) Nil!60625)) (= lt!2144499 (_1!35318 (get!20834 lt!2144428)))))))

(declare-fun d!1685262 () Bool)

(assert (=> d!1685262 e!3253254))

(declare-fun res!2219114 () Bool)

(assert (=> d!1685262 (=> (not res!2219114) (not e!3253254))))

(assert (=> d!1685262 (= res!2219114 (= (content!10758 lt!2144499) (set.union (content!10758 (_1!35318 (get!20834 lt!2144428))) (content!10758 (_2!35318 (get!20834 lt!2144428))))))))

(assert (=> d!1685262 (= lt!2144499 e!3253253)))

(declare-fun c!902548 () Bool)

(assert (=> d!1685262 (= c!902548 (is-Nil!60625 (_1!35318 (get!20834 lt!2144428))))))

(assert (=> d!1685262 (= (++!13220 (_1!35318 (get!20834 lt!2144428)) (_2!35318 (get!20834 lt!2144428))) lt!2144499)))

(declare-fun b!5227234 () Bool)

(declare-fun res!2219115 () Bool)

(assert (=> b!5227234 (=> (not res!2219115) (not e!3253254))))

(assert (=> b!5227234 (= res!2219115 (= (size!39730 lt!2144499) (+ (size!39730 (_1!35318 (get!20834 lt!2144428))) (size!39730 (_2!35318 (get!20834 lt!2144428))))))))

(assert (= (and d!1685262 c!902548) b!5227232))

(assert (= (and d!1685262 (not c!902548)) b!5227233))

(assert (= (and d!1685262 res!2219114) b!5227234))

(assert (= (and b!5227234 res!2219115) b!5227235))

(declare-fun m!6273790 () Bool)

(assert (=> b!5227233 m!6273790))

(declare-fun m!6273792 () Bool)

(assert (=> d!1685262 m!6273792))

(declare-fun m!6273794 () Bool)

(assert (=> d!1685262 m!6273794))

(declare-fun m!6273796 () Bool)

(assert (=> d!1685262 m!6273796))

(declare-fun m!6273798 () Bool)

(assert (=> b!5227234 m!6273798))

(declare-fun m!6273800 () Bool)

(assert (=> b!5227234 m!6273800))

(declare-fun m!6273802 () Bool)

(assert (=> b!5227234 m!6273802))

(assert (=> b!5226359 d!1685262))

(assert (=> b!5226359 d!1685138))

(declare-fun b!5227236 () Bool)

(declare-fun e!3253260 () Bool)

(declare-fun call!369452 () Bool)

(assert (=> b!5227236 (= e!3253260 call!369452)))

(declare-fun b!5227237 () Bool)

(declare-fun e!3253258 () Bool)

(assert (=> b!5227237 (= e!3253258 call!369452)))

(declare-fun c!902550 () Bool)

(declare-fun call!369454 () Bool)

(declare-fun bm!369447 () Bool)

(declare-fun c!902549 () Bool)

(assert (=> bm!369447 (= call!369454 (validRegex!6552 (ite c!902549 (reg!15145 lt!2144400) (ite c!902550 (regTwo!30145 lt!2144400) (regTwo!30144 lt!2144400)))))))

(declare-fun bm!369448 () Bool)

(assert (=> bm!369448 (= call!369452 call!369454)))

(declare-fun b!5227238 () Bool)

(declare-fun e!3253256 () Bool)

(assert (=> b!5227238 (= e!3253256 call!369454)))

(declare-fun b!5227240 () Bool)

(declare-fun res!2219119 () Bool)

(declare-fun e!3253259 () Bool)

(assert (=> b!5227240 (=> res!2219119 e!3253259)))

(assert (=> b!5227240 (= res!2219119 (not (is-Concat!23661 lt!2144400)))))

(declare-fun e!3253255 () Bool)

(assert (=> b!5227240 (= e!3253255 e!3253259)))

(declare-fun b!5227241 () Bool)

(assert (=> b!5227241 (= e!3253259 e!3253260)))

(declare-fun res!2219116 () Bool)

(assert (=> b!5227241 (=> (not res!2219116) (not e!3253260))))

(declare-fun call!369453 () Bool)

(assert (=> b!5227241 (= res!2219116 call!369453)))

(declare-fun b!5227242 () Bool)

(declare-fun res!2219118 () Bool)

(assert (=> b!5227242 (=> (not res!2219118) (not e!3253258))))

(assert (=> b!5227242 (= res!2219118 call!369453)))

(assert (=> b!5227242 (= e!3253255 e!3253258)))

(declare-fun bm!369449 () Bool)

(assert (=> bm!369449 (= call!369453 (validRegex!6552 (ite c!902550 (regOne!30145 lt!2144400) (regOne!30144 lt!2144400))))))

(declare-fun d!1685264 () Bool)

(declare-fun res!2219120 () Bool)

(declare-fun e!3253261 () Bool)

(assert (=> d!1685264 (=> res!2219120 e!3253261)))

(assert (=> d!1685264 (= res!2219120 (is-ElementMatch!14816 lt!2144400))))

(assert (=> d!1685264 (= (validRegex!6552 lt!2144400) e!3253261)))

(declare-fun b!5227239 () Bool)

(declare-fun e!3253257 () Bool)

(assert (=> b!5227239 (= e!3253257 e!3253255)))

(assert (=> b!5227239 (= c!902550 (is-Union!14816 lt!2144400))))

(declare-fun b!5227243 () Bool)

(assert (=> b!5227243 (= e!3253261 e!3253257)))

(assert (=> b!5227243 (= c!902549 (is-Star!14816 lt!2144400))))

(declare-fun b!5227244 () Bool)

(assert (=> b!5227244 (= e!3253257 e!3253256)))

(declare-fun res!2219117 () Bool)

(assert (=> b!5227244 (= res!2219117 (not (nullable!4985 (reg!15145 lt!2144400))))))

(assert (=> b!5227244 (=> (not res!2219117) (not e!3253256))))

(assert (= (and d!1685264 (not res!2219120)) b!5227243))

(assert (= (and b!5227243 c!902549) b!5227244))

(assert (= (and b!5227243 (not c!902549)) b!5227239))

(assert (= (and b!5227244 res!2219117) b!5227238))

(assert (= (and b!5227239 c!902550) b!5227242))

(assert (= (and b!5227239 (not c!902550)) b!5227240))

(assert (= (and b!5227242 res!2219118) b!5227237))

(assert (= (and b!5227240 (not res!2219119)) b!5227241))

(assert (= (and b!5227241 res!2219116) b!5227236))

(assert (= (or b!5227237 b!5227236) bm!369448))

(assert (= (or b!5227242 b!5227241) bm!369449))

(assert (= (or b!5227238 bm!369448) bm!369447))

(declare-fun m!6273804 () Bool)

(assert (=> bm!369447 m!6273804))

(declare-fun m!6273806 () Bool)

(assert (=> bm!369449 m!6273806))

(declare-fun m!6273808 () Bool)

(assert (=> b!5227244 m!6273808))

(assert (=> d!1684872 d!1685264))

(assert (=> d!1684872 d!1684882))

(assert (=> d!1684872 d!1684884))

(declare-fun d!1685266 () Bool)

(assert (=> d!1685266 (= (isEmpty!32551 (tail!10297 s!2326)) (is-Nil!60625 (tail!10297 s!2326)))))

(assert (=> b!5226289 d!1685266))

(declare-fun d!1685268 () Bool)

(assert (=> d!1685268 (= (tail!10297 s!2326) (t!373924 s!2326))))

(assert (=> b!5226289 d!1685268))

(declare-fun b!5227245 () Bool)

(declare-fun res!2219124 () Bool)

(declare-fun e!3253268 () Bool)

(assert (=> b!5227245 (=> res!2219124 e!3253268)))

(assert (=> b!5227245 (= res!2219124 (not (isEmpty!32551 (tail!10297 (_2!35318 (get!20834 lt!2144428))))))))

(declare-fun bm!369450 () Bool)

(declare-fun call!369455 () Bool)

(assert (=> bm!369450 (= call!369455 (isEmpty!32551 (_2!35318 (get!20834 lt!2144428))))))

(declare-fun b!5227246 () Bool)

(declare-fun e!3253265 () Bool)

(declare-fun e!3253264 () Bool)

(assert (=> b!5227246 (= e!3253265 e!3253264)))

(declare-fun c!902552 () Bool)

(assert (=> b!5227246 (= c!902552 (is-EmptyLang!14816 (regTwo!30144 r!7292)))))

(declare-fun b!5227247 () Bool)

(declare-fun lt!2144500 () Bool)

(assert (=> b!5227247 (= e!3253264 (not lt!2144500))))

(declare-fun b!5227248 () Bool)

(declare-fun e!3253263 () Bool)

(assert (=> b!5227248 (= e!3253263 (= (head!11200 (_2!35318 (get!20834 lt!2144428))) (c!902205 (regTwo!30144 r!7292))))))

(declare-fun b!5227249 () Bool)

(declare-fun e!3253266 () Bool)

(assert (=> b!5227249 (= e!3253266 (matchR!7001 (derivativeStep!4062 (regTwo!30144 r!7292) (head!11200 (_2!35318 (get!20834 lt!2144428)))) (tail!10297 (_2!35318 (get!20834 lt!2144428)))))))

(declare-fun d!1685270 () Bool)

(assert (=> d!1685270 e!3253265))

(declare-fun c!902551 () Bool)

(assert (=> d!1685270 (= c!902551 (is-EmptyExpr!14816 (regTwo!30144 r!7292)))))

(assert (=> d!1685270 (= lt!2144500 e!3253266)))

(declare-fun c!902553 () Bool)

(assert (=> d!1685270 (= c!902553 (isEmpty!32551 (_2!35318 (get!20834 lt!2144428))))))

(assert (=> d!1685270 (validRegex!6552 (regTwo!30144 r!7292))))

(assert (=> d!1685270 (= (matchR!7001 (regTwo!30144 r!7292) (_2!35318 (get!20834 lt!2144428))) lt!2144500)))

(declare-fun b!5227250 () Bool)

(declare-fun res!2219125 () Bool)

(declare-fun e!3253267 () Bool)

(assert (=> b!5227250 (=> res!2219125 e!3253267)))

(assert (=> b!5227250 (= res!2219125 e!3253263)))

(declare-fun res!2219122 () Bool)

(assert (=> b!5227250 (=> (not res!2219122) (not e!3253263))))

(assert (=> b!5227250 (= res!2219122 lt!2144500)))

(declare-fun b!5227251 () Bool)

(declare-fun res!2219126 () Bool)

(assert (=> b!5227251 (=> (not res!2219126) (not e!3253263))))

(assert (=> b!5227251 (= res!2219126 (not call!369455))))

(declare-fun b!5227252 () Bool)

(declare-fun e!3253262 () Bool)

(assert (=> b!5227252 (= e!3253262 e!3253268)))

(declare-fun res!2219128 () Bool)

(assert (=> b!5227252 (=> res!2219128 e!3253268)))

(assert (=> b!5227252 (= res!2219128 call!369455)))

(declare-fun b!5227253 () Bool)

(declare-fun res!2219127 () Bool)

(assert (=> b!5227253 (=> (not res!2219127) (not e!3253263))))

(assert (=> b!5227253 (= res!2219127 (isEmpty!32551 (tail!10297 (_2!35318 (get!20834 lt!2144428)))))))

(declare-fun b!5227254 () Bool)

(assert (=> b!5227254 (= e!3253265 (= lt!2144500 call!369455))))

(declare-fun b!5227255 () Bool)

(declare-fun res!2219123 () Bool)

(assert (=> b!5227255 (=> res!2219123 e!3253267)))

(assert (=> b!5227255 (= res!2219123 (not (is-ElementMatch!14816 (regTwo!30144 r!7292))))))

(assert (=> b!5227255 (= e!3253264 e!3253267)))

(declare-fun b!5227256 () Bool)

(assert (=> b!5227256 (= e!3253267 e!3253262)))

(declare-fun res!2219121 () Bool)

(assert (=> b!5227256 (=> (not res!2219121) (not e!3253262))))

(assert (=> b!5227256 (= res!2219121 (not lt!2144500))))

(declare-fun b!5227257 () Bool)

(assert (=> b!5227257 (= e!3253268 (not (= (head!11200 (_2!35318 (get!20834 lt!2144428))) (c!902205 (regTwo!30144 r!7292)))))))

(declare-fun b!5227258 () Bool)

(assert (=> b!5227258 (= e!3253266 (nullable!4985 (regTwo!30144 r!7292)))))

(assert (= (and d!1685270 c!902553) b!5227258))

(assert (= (and d!1685270 (not c!902553)) b!5227249))

(assert (= (and d!1685270 c!902551) b!5227254))

(assert (= (and d!1685270 (not c!902551)) b!5227246))

(assert (= (and b!5227246 c!902552) b!5227247))

(assert (= (and b!5227246 (not c!902552)) b!5227255))

(assert (= (and b!5227255 (not res!2219123)) b!5227250))

(assert (= (and b!5227250 res!2219122) b!5227251))

(assert (= (and b!5227251 res!2219126) b!5227253))

(assert (= (and b!5227253 res!2219127) b!5227248))

(assert (= (and b!5227250 (not res!2219125)) b!5227256))

(assert (= (and b!5227256 res!2219121) b!5227252))

(assert (= (and b!5227252 (not res!2219128)) b!5227245))

(assert (= (and b!5227245 (not res!2219124)) b!5227257))

(assert (= (or b!5227254 b!5227251 b!5227252) bm!369450))

(assert (=> b!5227258 m!6273408))

(declare-fun m!6273810 () Bool)

(assert (=> bm!369450 m!6273810))

(declare-fun m!6273812 () Bool)

(assert (=> b!5227253 m!6273812))

(assert (=> b!5227253 m!6273812))

(declare-fun m!6273814 () Bool)

(assert (=> b!5227253 m!6273814))

(declare-fun m!6273816 () Bool)

(assert (=> b!5227257 m!6273816))

(assert (=> b!5227248 m!6273816))

(assert (=> b!5227245 m!6273812))

(assert (=> b!5227245 m!6273812))

(assert (=> b!5227245 m!6273814))

(assert (=> d!1685270 m!6273810))

(assert (=> d!1685270 m!6273410))

(assert (=> b!5227249 m!6273816))

(assert (=> b!5227249 m!6273816))

(declare-fun m!6273818 () Bool)

(assert (=> b!5227249 m!6273818))

(assert (=> b!5227249 m!6273812))

(assert (=> b!5227249 m!6273818))

(assert (=> b!5227249 m!6273812))

(declare-fun m!6273820 () Bool)

(assert (=> b!5227249 m!6273820))

(assert (=> b!5226355 d!1685270))

(assert (=> b!5226355 d!1685138))

(declare-fun d!1685272 () Bool)

(declare-fun c!902554 () Bool)

(assert (=> d!1685272 (= c!902554 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253269 () Bool)

(assert (=> d!1685272 (= (matchZipper!1060 (derivationStepZipper!1084 lt!2144292 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253269)))

(declare-fun b!5227259 () Bool)

(assert (=> b!5227259 (= e!3253269 (nullableZipper!1240 (derivationStepZipper!1084 lt!2144292 (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227260 () Bool)

(assert (=> b!5227260 (= e!3253269 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 lt!2144292 (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685272 c!902554) b!5227259))

(assert (= (and d!1685272 (not c!902554)) b!5227260))

(assert (=> d!1685272 m!6272876))

(assert (=> d!1685272 m!6273502))

(assert (=> b!5227259 m!6273066))

(declare-fun m!6273822 () Bool)

(assert (=> b!5227259 m!6273822))

(assert (=> b!5227260 m!6272876))

(assert (=> b!5227260 m!6273506))

(assert (=> b!5227260 m!6273066))

(assert (=> b!5227260 m!6273506))

(declare-fun m!6273824 () Bool)

(assert (=> b!5227260 m!6273824))

(assert (=> b!5227260 m!6272876))

(assert (=> b!5227260 m!6273510))

(assert (=> b!5227260 m!6273824))

(assert (=> b!5227260 m!6273510))

(declare-fun m!6273826 () Bool)

(assert (=> b!5227260 m!6273826))

(assert (=> b!5226400 d!1685272))

(declare-fun bs!1213651 () Bool)

(declare-fun d!1685274 () Bool)

(assert (= bs!1213651 (and d!1685274 d!1685180)))

(declare-fun lambda!262478 () Int)

(assert (=> bs!1213651 (= lambda!262478 lambda!262467)))

(declare-fun bs!1213652 () Bool)

(assert (= bs!1213652 (and d!1685274 b!5225936)))

(assert (=> bs!1213652 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262478 lambda!262382))))

(declare-fun bs!1213653 () Bool)

(assert (= bs!1213653 (and d!1685274 d!1685230)))

(assert (=> bs!1213653 (= lambda!262478 lambda!262475)))

(declare-fun bs!1213654 () Bool)

(assert (= bs!1213654 (and d!1685274 d!1685120)))

(assert (=> bs!1213654 (= lambda!262478 lambda!262463)))

(declare-fun bs!1213655 () Bool)

(assert (= bs!1213655 (and d!1685274 d!1685216)))

(assert (=> bs!1213655 (= lambda!262478 lambda!262474)))

(assert (=> d!1685274 true))

(assert (=> d!1685274 (= (derivationStepZipper!1084 lt!2144292 (head!11200 (t!373924 s!2326))) (flatMap!543 lt!2144292 lambda!262478))))

(declare-fun bs!1213656 () Bool)

(assert (= bs!1213656 d!1685274))

(declare-fun m!6273828 () Bool)

(assert (=> bs!1213656 m!6273828))

(assert (=> b!5226400 d!1685274))

(assert (=> b!5226400 d!1685122))

(assert (=> b!5226400 d!1685124))

(declare-fun d!1685276 () Bool)

(assert (=> d!1685276 (= (isUnion!217 lt!2144406) (is-Union!14816 lt!2144406))))

(assert (=> b!5226191 d!1685276))

(declare-fun b!5227261 () Bool)

(declare-fun e!3253275 () Bool)

(declare-fun call!369456 () Bool)

(assert (=> b!5227261 (= e!3253275 call!369456)))

(declare-fun b!5227262 () Bool)

(declare-fun e!3253273 () Bool)

(assert (=> b!5227262 (= e!3253273 call!369456)))

(declare-fun call!369458 () Bool)

(declare-fun bm!369451 () Bool)

(declare-fun c!902555 () Bool)

(declare-fun c!902556 () Bool)

(assert (=> bm!369451 (= call!369458 (validRegex!6552 (ite c!902555 (reg!15145 lt!2144394) (ite c!902556 (regTwo!30145 lt!2144394) (regTwo!30144 lt!2144394)))))))

(declare-fun bm!369452 () Bool)

(assert (=> bm!369452 (= call!369456 call!369458)))

(declare-fun b!5227263 () Bool)

(declare-fun e!3253271 () Bool)

(assert (=> b!5227263 (= e!3253271 call!369458)))

(declare-fun b!5227265 () Bool)

(declare-fun res!2219132 () Bool)

(declare-fun e!3253274 () Bool)

(assert (=> b!5227265 (=> res!2219132 e!3253274)))

(assert (=> b!5227265 (= res!2219132 (not (is-Concat!23661 lt!2144394)))))

(declare-fun e!3253270 () Bool)

(assert (=> b!5227265 (= e!3253270 e!3253274)))

(declare-fun b!5227266 () Bool)

(assert (=> b!5227266 (= e!3253274 e!3253275)))

(declare-fun res!2219129 () Bool)

(assert (=> b!5227266 (=> (not res!2219129) (not e!3253275))))

(declare-fun call!369457 () Bool)

(assert (=> b!5227266 (= res!2219129 call!369457)))

(declare-fun b!5227267 () Bool)

(declare-fun res!2219131 () Bool)

(assert (=> b!5227267 (=> (not res!2219131) (not e!3253273))))

(assert (=> b!5227267 (= res!2219131 call!369457)))

(assert (=> b!5227267 (= e!3253270 e!3253273)))

(declare-fun bm!369453 () Bool)

(assert (=> bm!369453 (= call!369457 (validRegex!6552 (ite c!902556 (regOne!30145 lt!2144394) (regOne!30144 lt!2144394))))))

(declare-fun d!1685278 () Bool)

(declare-fun res!2219133 () Bool)

(declare-fun e!3253276 () Bool)

(assert (=> d!1685278 (=> res!2219133 e!3253276)))

(assert (=> d!1685278 (= res!2219133 (is-ElementMatch!14816 lt!2144394))))

(assert (=> d!1685278 (= (validRegex!6552 lt!2144394) e!3253276)))

(declare-fun b!5227264 () Bool)

(declare-fun e!3253272 () Bool)

(assert (=> b!5227264 (= e!3253272 e!3253270)))

(assert (=> b!5227264 (= c!902556 (is-Union!14816 lt!2144394))))

(declare-fun b!5227268 () Bool)

(assert (=> b!5227268 (= e!3253276 e!3253272)))

(assert (=> b!5227268 (= c!902555 (is-Star!14816 lt!2144394))))

(declare-fun b!5227269 () Bool)

(assert (=> b!5227269 (= e!3253272 e!3253271)))

(declare-fun res!2219130 () Bool)

(assert (=> b!5227269 (= res!2219130 (not (nullable!4985 (reg!15145 lt!2144394))))))

(assert (=> b!5227269 (=> (not res!2219130) (not e!3253271))))

(assert (= (and d!1685278 (not res!2219133)) b!5227268))

(assert (= (and b!5227268 c!902555) b!5227269))

(assert (= (and b!5227268 (not c!902555)) b!5227264))

(assert (= (and b!5227269 res!2219130) b!5227263))

(assert (= (and b!5227264 c!902556) b!5227267))

(assert (= (and b!5227264 (not c!902556)) b!5227265))

(assert (= (and b!5227267 res!2219131) b!5227262))

(assert (= (and b!5227265 (not res!2219132)) b!5227266))

(assert (= (and b!5227266 res!2219129) b!5227261))

(assert (= (or b!5227262 b!5227261) bm!369452))

(assert (= (or b!5227267 b!5227266) bm!369453))

(assert (= (or b!5227263 bm!369452) bm!369451))

(declare-fun m!6273830 () Bool)

(assert (=> bm!369451 m!6273830))

(declare-fun m!6273832 () Bool)

(assert (=> bm!369453 m!6273832))

(declare-fun m!6273834 () Bool)

(assert (=> b!5227269 m!6273834))

(assert (=> d!1684862 d!1685278))

(declare-fun d!1685280 () Bool)

(declare-fun res!2219134 () Bool)

(declare-fun e!3253277 () Bool)

(assert (=> d!1685280 (=> res!2219134 e!3253277)))

(assert (=> d!1685280 (= res!2219134 (is-Nil!60623 (exprs!4700 (h!67072 zl!343))))))

(assert (=> d!1685280 (= (forall!14248 (exprs!4700 (h!67072 zl!343)) lambda!262400) e!3253277)))

(declare-fun b!5227270 () Bool)

(declare-fun e!3253278 () Bool)

(assert (=> b!5227270 (= e!3253277 e!3253278)))

(declare-fun res!2219135 () Bool)

(assert (=> b!5227270 (=> (not res!2219135) (not e!3253278))))

(assert (=> b!5227270 (= res!2219135 (dynLambda!23958 lambda!262400 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun b!5227271 () Bool)

(assert (=> b!5227271 (= e!3253278 (forall!14248 (t!373922 (exprs!4700 (h!67072 zl!343))) lambda!262400))))

(assert (= (and d!1685280 (not res!2219134)) b!5227270))

(assert (= (and b!5227270 res!2219135) b!5227271))

(declare-fun b_lambda!202109 () Bool)

(assert (=> (not b_lambda!202109) (not b!5227270)))

(declare-fun m!6273836 () Bool)

(assert (=> b!5227270 m!6273836))

(declare-fun m!6273838 () Bool)

(assert (=> b!5227271 m!6273838))

(assert (=> d!1684862 d!1685280))

(declare-fun b!5227272 () Bool)

(declare-fun res!2219139 () Bool)

(declare-fun e!3253285 () Bool)

(assert (=> b!5227272 (=> res!2219139 e!3253285)))

(assert (=> b!5227272 (= res!2219139 (not (isEmpty!32551 (tail!10297 (tail!10297 s!2326)))))))

(declare-fun bm!369454 () Bool)

(declare-fun call!369459 () Bool)

(assert (=> bm!369454 (= call!369459 (isEmpty!32551 (tail!10297 s!2326)))))

(declare-fun b!5227273 () Bool)

(declare-fun e!3253282 () Bool)

(declare-fun e!3253281 () Bool)

(assert (=> b!5227273 (= e!3253282 e!3253281)))

(declare-fun c!902558 () Bool)

(assert (=> b!5227273 (= c!902558 (is-EmptyLang!14816 (derivativeStep!4062 r!7292 (head!11200 s!2326))))))

(declare-fun b!5227274 () Bool)

(declare-fun lt!2144501 () Bool)

(assert (=> b!5227274 (= e!3253281 (not lt!2144501))))

(declare-fun b!5227275 () Bool)

(declare-fun e!3253280 () Bool)

(assert (=> b!5227275 (= e!3253280 (= (head!11200 (tail!10297 s!2326)) (c!902205 (derivativeStep!4062 r!7292 (head!11200 s!2326)))))))

(declare-fun b!5227276 () Bool)

(declare-fun e!3253283 () Bool)

(assert (=> b!5227276 (= e!3253283 (matchR!7001 (derivativeStep!4062 (derivativeStep!4062 r!7292 (head!11200 s!2326)) (head!11200 (tail!10297 s!2326))) (tail!10297 (tail!10297 s!2326))))))

(declare-fun d!1685282 () Bool)

(assert (=> d!1685282 e!3253282))

(declare-fun c!902557 () Bool)

(assert (=> d!1685282 (= c!902557 (is-EmptyExpr!14816 (derivativeStep!4062 r!7292 (head!11200 s!2326))))))

(assert (=> d!1685282 (= lt!2144501 e!3253283)))

(declare-fun c!902559 () Bool)

(assert (=> d!1685282 (= c!902559 (isEmpty!32551 (tail!10297 s!2326)))))

(assert (=> d!1685282 (validRegex!6552 (derivativeStep!4062 r!7292 (head!11200 s!2326)))))

(assert (=> d!1685282 (= (matchR!7001 (derivativeStep!4062 r!7292 (head!11200 s!2326)) (tail!10297 s!2326)) lt!2144501)))

(declare-fun b!5227277 () Bool)

(declare-fun res!2219140 () Bool)

(declare-fun e!3253284 () Bool)

(assert (=> b!5227277 (=> res!2219140 e!3253284)))

(assert (=> b!5227277 (= res!2219140 e!3253280)))

(declare-fun res!2219137 () Bool)

(assert (=> b!5227277 (=> (not res!2219137) (not e!3253280))))

(assert (=> b!5227277 (= res!2219137 lt!2144501)))

(declare-fun b!5227278 () Bool)

(declare-fun res!2219141 () Bool)

(assert (=> b!5227278 (=> (not res!2219141) (not e!3253280))))

(assert (=> b!5227278 (= res!2219141 (not call!369459))))

(declare-fun b!5227279 () Bool)

(declare-fun e!3253279 () Bool)

(assert (=> b!5227279 (= e!3253279 e!3253285)))

(declare-fun res!2219143 () Bool)

(assert (=> b!5227279 (=> res!2219143 e!3253285)))

(assert (=> b!5227279 (= res!2219143 call!369459)))

(declare-fun b!5227280 () Bool)

(declare-fun res!2219142 () Bool)

(assert (=> b!5227280 (=> (not res!2219142) (not e!3253280))))

(assert (=> b!5227280 (= res!2219142 (isEmpty!32551 (tail!10297 (tail!10297 s!2326))))))

(declare-fun b!5227281 () Bool)

(assert (=> b!5227281 (= e!3253282 (= lt!2144501 call!369459))))

(declare-fun b!5227282 () Bool)

(declare-fun res!2219138 () Bool)

(assert (=> b!5227282 (=> res!2219138 e!3253284)))

(assert (=> b!5227282 (= res!2219138 (not (is-ElementMatch!14816 (derivativeStep!4062 r!7292 (head!11200 s!2326)))))))

(assert (=> b!5227282 (= e!3253281 e!3253284)))

(declare-fun b!5227283 () Bool)

(assert (=> b!5227283 (= e!3253284 e!3253279)))

(declare-fun res!2219136 () Bool)

(assert (=> b!5227283 (=> (not res!2219136) (not e!3253279))))

(assert (=> b!5227283 (= res!2219136 (not lt!2144501))))

(declare-fun b!5227284 () Bool)

(assert (=> b!5227284 (= e!3253285 (not (= (head!11200 (tail!10297 s!2326)) (c!902205 (derivativeStep!4062 r!7292 (head!11200 s!2326))))))))

(declare-fun b!5227285 () Bool)

(assert (=> b!5227285 (= e!3253283 (nullable!4985 (derivativeStep!4062 r!7292 (head!11200 s!2326))))))

(assert (= (and d!1685282 c!902559) b!5227285))

(assert (= (and d!1685282 (not c!902559)) b!5227276))

(assert (= (and d!1685282 c!902557) b!5227281))

(assert (= (and d!1685282 (not c!902557)) b!5227273))

(assert (= (and b!5227273 c!902558) b!5227274))

(assert (= (and b!5227273 (not c!902558)) b!5227282))

(assert (= (and b!5227282 (not res!2219138)) b!5227277))

(assert (= (and b!5227277 res!2219137) b!5227278))

(assert (= (and b!5227278 res!2219141) b!5227280))

(assert (= (and b!5227280 res!2219142) b!5227275))

(assert (= (and b!5227277 (not res!2219140)) b!5227283))

(assert (= (and b!5227283 res!2219136) b!5227279))

(assert (= (and b!5227279 (not res!2219143)) b!5227272))

(assert (= (and b!5227272 (not res!2219139)) b!5227284))

(assert (= (or b!5227281 b!5227278 b!5227279) bm!369454))

(assert (=> b!5227285 m!6272968))

(declare-fun m!6273840 () Bool)

(assert (=> b!5227285 m!6273840))

(assert (=> bm!369454 m!6272962))

(assert (=> bm!369454 m!6272964))

(assert (=> b!5227280 m!6272962))

(declare-fun m!6273842 () Bool)

(assert (=> b!5227280 m!6273842))

(assert (=> b!5227280 m!6273842))

(declare-fun m!6273844 () Bool)

(assert (=> b!5227280 m!6273844))

(assert (=> b!5227284 m!6272962))

(declare-fun m!6273846 () Bool)

(assert (=> b!5227284 m!6273846))

(assert (=> b!5227275 m!6272962))

(assert (=> b!5227275 m!6273846))

(assert (=> b!5227272 m!6272962))

(assert (=> b!5227272 m!6273842))

(assert (=> b!5227272 m!6273842))

(assert (=> b!5227272 m!6273844))

(assert (=> d!1685282 m!6272962))

(assert (=> d!1685282 m!6272964))

(assert (=> d!1685282 m!6272968))

(declare-fun m!6273848 () Bool)

(assert (=> d!1685282 m!6273848))

(assert (=> b!5227276 m!6272962))

(assert (=> b!5227276 m!6273846))

(assert (=> b!5227276 m!6272968))

(assert (=> b!5227276 m!6273846))

(declare-fun m!6273850 () Bool)

(assert (=> b!5227276 m!6273850))

(assert (=> b!5227276 m!6272962))

(assert (=> b!5227276 m!6273842))

(assert (=> b!5227276 m!6273850))

(assert (=> b!5227276 m!6273842))

(declare-fun m!6273852 () Bool)

(assert (=> b!5227276 m!6273852))

(assert (=> b!5226285 d!1685282))

(declare-fun bm!369463 () Bool)

(declare-fun call!369470 () Regex!14816)

(declare-fun call!369468 () Regex!14816)

(assert (=> bm!369463 (= call!369470 call!369468)))

(declare-fun b!5227306 () Bool)

(declare-fun e!3253300 () Regex!14816)

(declare-fun e!3253299 () Regex!14816)

(assert (=> b!5227306 (= e!3253300 e!3253299)))

(declare-fun c!902574 () Bool)

(assert (=> b!5227306 (= c!902574 (is-ElementMatch!14816 r!7292))))

(declare-fun b!5227307 () Bool)

(assert (=> b!5227307 (= e!3253300 EmptyLang!14816)))

(declare-fun bm!369464 () Bool)

(declare-fun c!902570 () Bool)

(declare-fun c!902571 () Bool)

(assert (=> bm!369464 (= call!369468 (derivativeStep!4062 (ite c!902570 (regOne!30145 r!7292) (ite c!902571 (regTwo!30144 r!7292) (regOne!30144 r!7292))) (head!11200 s!2326)))))

(declare-fun e!3253298 () Regex!14816)

(declare-fun call!369469 () Regex!14816)

(declare-fun b!5227308 () Bool)

(assert (=> b!5227308 (= e!3253298 (Union!14816 (Concat!23661 call!369469 (regTwo!30144 r!7292)) call!369470))))

(declare-fun b!5227309 () Bool)

(assert (=> b!5227309 (= e!3253298 (Union!14816 (Concat!23661 call!369470 (regTwo!30144 r!7292)) EmptyLang!14816))))

(declare-fun b!5227310 () Bool)

(assert (=> b!5227310 (= c!902570 (is-Union!14816 r!7292))))

(declare-fun e!3253296 () Regex!14816)

(assert (=> b!5227310 (= e!3253299 e!3253296)))

(declare-fun bm!369465 () Bool)

(declare-fun call!369471 () Regex!14816)

(assert (=> bm!369465 (= call!369469 call!369471)))

(declare-fun b!5227311 () Bool)

(assert (=> b!5227311 (= c!902571 (nullable!4985 (regOne!30144 r!7292)))))

(declare-fun e!3253297 () Regex!14816)

(assert (=> b!5227311 (= e!3253297 e!3253298)))

(declare-fun b!5227312 () Bool)

(assert (=> b!5227312 (= e!3253296 (Union!14816 call!369468 call!369471))))

(declare-fun d!1685284 () Bool)

(declare-fun lt!2144504 () Regex!14816)

(assert (=> d!1685284 (validRegex!6552 lt!2144504)))

(assert (=> d!1685284 (= lt!2144504 e!3253300)))

(declare-fun c!902573 () Bool)

(assert (=> d!1685284 (= c!902573 (or (is-EmptyExpr!14816 r!7292) (is-EmptyLang!14816 r!7292)))))

(assert (=> d!1685284 (validRegex!6552 r!7292)))

(assert (=> d!1685284 (= (derivativeStep!4062 r!7292 (head!11200 s!2326)) lt!2144504)))

(declare-fun b!5227313 () Bool)

(assert (=> b!5227313 (= e!3253296 e!3253297)))

(declare-fun c!902572 () Bool)

(assert (=> b!5227313 (= c!902572 (is-Star!14816 r!7292))))

(declare-fun b!5227314 () Bool)

(assert (=> b!5227314 (= e!3253297 (Concat!23661 call!369469 r!7292))))

(declare-fun b!5227315 () Bool)

(assert (=> b!5227315 (= e!3253299 (ite (= (head!11200 s!2326) (c!902205 r!7292)) EmptyExpr!14816 EmptyLang!14816))))

(declare-fun bm!369466 () Bool)

(assert (=> bm!369466 (= call!369471 (derivativeStep!4062 (ite c!902570 (regTwo!30145 r!7292) (ite c!902572 (reg!15145 r!7292) (regOne!30144 r!7292))) (head!11200 s!2326)))))

(assert (= (and d!1685284 c!902573) b!5227307))

(assert (= (and d!1685284 (not c!902573)) b!5227306))

(assert (= (and b!5227306 c!902574) b!5227315))

(assert (= (and b!5227306 (not c!902574)) b!5227310))

(assert (= (and b!5227310 c!902570) b!5227312))

(assert (= (and b!5227310 (not c!902570)) b!5227313))

(assert (= (and b!5227313 c!902572) b!5227314))

(assert (= (and b!5227313 (not c!902572)) b!5227311))

(assert (= (and b!5227311 c!902571) b!5227308))

(assert (= (and b!5227311 (not c!902571)) b!5227309))

(assert (= (or b!5227308 b!5227309) bm!369463))

(assert (= (or b!5227314 b!5227308) bm!369465))

(assert (= (or b!5227312 bm!369465) bm!369466))

(assert (= (or b!5227312 bm!369463) bm!369464))

(assert (=> bm!369464 m!6272966))

(declare-fun m!6273854 () Bool)

(assert (=> bm!369464 m!6273854))

(assert (=> b!5227311 m!6273528))

(declare-fun m!6273856 () Bool)

(assert (=> d!1685284 m!6273856))

(assert (=> d!1685284 m!6272720))

(assert (=> bm!369466 m!6272966))

(declare-fun m!6273858 () Bool)

(assert (=> bm!369466 m!6273858))

(assert (=> b!5226285 d!1685284))

(assert (=> b!5226285 d!1685254))

(assert (=> b!5226285 d!1685268))

(assert (=> b!5226284 d!1685254))

(declare-fun d!1685286 () Bool)

(assert (=> d!1685286 (= (Exists!1997 lambda!262423) (choose!38870 lambda!262423))))

(declare-fun bs!1213657 () Bool)

(assert (= bs!1213657 d!1685286))

(declare-fun m!6273860 () Bool)

(assert (=> bs!1213657 m!6273860))

(assert (=> d!1684924 d!1685286))

(declare-fun d!1685288 () Bool)

(assert (=> d!1685288 (= (Exists!1997 lambda!262424) (choose!38870 lambda!262424))))

(declare-fun bs!1213658 () Bool)

(assert (= bs!1213658 d!1685288))

(declare-fun m!6273862 () Bool)

(assert (=> bs!1213658 m!6273862))

(assert (=> d!1684924 d!1685288))

(declare-fun bs!1213659 () Bool)

(declare-fun d!1685290 () Bool)

(assert (= bs!1213659 (and d!1685290 b!5225955)))

(declare-fun lambda!262483 () Int)

(assert (=> bs!1213659 (not (= lambda!262483 lambda!262381))))

(declare-fun bs!1213660 () Bool)

(assert (= bs!1213660 (and d!1685290 d!1684922)))

(assert (=> bs!1213660 (= lambda!262483 lambda!262418)))

(assert (=> bs!1213659 (= lambda!262483 lambda!262380)))

(declare-fun bs!1213661 () Bool)

(assert (= bs!1213661 (and d!1685290 b!5226242)))

(assert (=> bs!1213661 (not (= lambda!262483 lambda!262412))))

(declare-fun bs!1213662 () Bool)

(assert (= bs!1213662 (and d!1685290 b!5227023)))

(assert (=> bs!1213662 (not (= lambda!262483 lambda!262466))))

(declare-fun bs!1213663 () Bool)

(assert (= bs!1213663 (and d!1685290 b!5227090)))

(assert (=> bs!1213663 (not (= lambda!262483 lambda!262468))))

(declare-fun bs!1213664 () Bool)

(assert (= bs!1213664 (and d!1685290 d!1684924)))

(assert (=> bs!1213664 (not (= lambda!262483 lambda!262424))))

(declare-fun bs!1213665 () Bool)

(assert (= bs!1213665 (and d!1685290 b!5227086)))

(assert (=> bs!1213665 (not (= lambda!262483 lambda!262469))))

(assert (=> bs!1213664 (= lambda!262483 lambda!262423)))

(declare-fun bs!1213666 () Bool)

(assert (= bs!1213666 (and d!1685290 b!5227027)))

(assert (=> bs!1213666 (not (= lambda!262483 lambda!262465))))

(declare-fun bs!1213667 () Bool)

(assert (= bs!1213667 (and d!1685290 b!5226246)))

(assert (=> bs!1213667 (not (= lambda!262483 lambda!262411))))

(declare-fun bs!1213668 () Bool)

(assert (= bs!1213668 (and d!1685290 d!1685186)))

(assert (=> bs!1213668 (= lambda!262483 lambda!262472)))

(assert (=> d!1685290 true))

(assert (=> d!1685290 true))

(assert (=> d!1685290 true))

(declare-fun lambda!262484 () Int)

(assert (=> bs!1213659 (= lambda!262484 lambda!262381)))

(assert (=> bs!1213660 (not (= lambda!262484 lambda!262418))))

(assert (=> bs!1213659 (not (= lambda!262484 lambda!262380))))

(assert (=> bs!1213661 (= lambda!262484 lambda!262412)))

(assert (=> bs!1213662 (= (and (= (regOne!30144 r!7292) (regOne!30144 (regTwo!30145 r!7292))) (= (regTwo!30144 r!7292) (regTwo!30144 (regTwo!30145 r!7292)))) (= lambda!262484 lambda!262466))))

(assert (=> bs!1213663 (not (= lambda!262484 lambda!262468))))

(assert (=> bs!1213664 (= lambda!262484 lambda!262424)))

(declare-fun bs!1213669 () Bool)

(assert (= bs!1213669 d!1685290))

(assert (=> bs!1213669 (not (= lambda!262484 lambda!262483))))

(assert (=> bs!1213665 (= (and (= (regOne!30144 r!7292) (regOne!30144 (regOne!30145 r!7292))) (= (regTwo!30144 r!7292) (regTwo!30144 (regOne!30145 r!7292)))) (= lambda!262484 lambda!262469))))

(assert (=> bs!1213664 (not (= lambda!262484 lambda!262423))))

(assert (=> bs!1213666 (not (= lambda!262484 lambda!262465))))

(assert (=> bs!1213667 (not (= lambda!262484 lambda!262411))))

(assert (=> bs!1213668 (not (= lambda!262484 lambda!262472))))

(assert (=> d!1685290 true))

(assert (=> d!1685290 true))

(assert (=> d!1685290 true))

(assert (=> d!1685290 (= (Exists!1997 lambda!262483) (Exists!1997 lambda!262484))))

(assert (=> d!1685290 true))

(declare-fun _$90!1033 () Unit!152546)

(assert (=> d!1685290 (= (choose!38872 (regOne!30144 r!7292) (regTwo!30144 r!7292) s!2326) _$90!1033)))

(declare-fun m!6273864 () Bool)

(assert (=> bs!1213669 m!6273864))

(declare-fun m!6273866 () Bool)

(assert (=> bs!1213669 m!6273866))

(assert (=> d!1684924 d!1685290))

(assert (=> d!1684924 d!1685172))

(declare-fun bs!1213670 () Bool)

(declare-fun d!1685292 () Bool)

(assert (= bs!1213670 (and d!1685292 d!1685258)))

(declare-fun lambda!262485 () Int)

(assert (=> bs!1213670 (= lambda!262485 lambda!262477)))

(declare-fun bs!1213671 () Bool)

(assert (= bs!1213671 (and d!1685292 d!1685200)))

(assert (=> bs!1213671 (= lambda!262485 lambda!262473)))

(declare-fun bs!1213672 () Bool)

(assert (= bs!1213672 (and d!1685292 d!1685104)))

(assert (=> bs!1213672 (= lambda!262485 lambda!262459)))

(declare-fun bs!1213673 () Bool)

(assert (= bs!1213673 (and d!1685292 d!1685068)))

(assert (=> bs!1213673 (= lambda!262485 lambda!262456)))

(declare-fun bs!1213674 () Bool)

(assert (= bs!1213674 (and d!1685292 d!1685084)))

(assert (=> bs!1213674 (= lambda!262485 lambda!262457)))

(assert (=> d!1685292 (= (nullableZipper!1240 (set.union lt!2144310 lt!2144287)) (exists!1975 (set.union lt!2144310 lt!2144287) lambda!262485))))

(declare-fun bs!1213675 () Bool)

(assert (= bs!1213675 d!1685292))

(declare-fun m!6273868 () Bool)

(assert (=> bs!1213675 m!6273868))

(assert (=> b!5226122 d!1685292))

(declare-fun d!1685294 () Bool)

(assert (=> d!1685294 (= (isEmpty!32547 (tail!10296 (exprs!4700 (h!67072 zl!343)))) (is-Nil!60623 (tail!10296 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> b!5226109 d!1685294))

(declare-fun d!1685296 () Bool)

(assert (=> d!1685296 (= (tail!10296 (exprs!4700 (h!67072 zl!343))) (t!373922 (exprs!4700 (h!67072 zl!343))))))

(assert (=> b!5226109 d!1685296))

(assert (=> b!5226281 d!1685266))

(assert (=> b!5226281 d!1685268))

(declare-fun d!1685298 () Bool)

(declare-fun c!902575 () Bool)

(assert (=> d!1685298 (= c!902575 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253305 () Bool)

(assert (=> d!1685298 (= (matchZipper!1060 (derivationStepZipper!1084 lt!2144285 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253305)))

(declare-fun b!5227324 () Bool)

(assert (=> b!5227324 (= e!3253305 (nullableZipper!1240 (derivationStepZipper!1084 lt!2144285 (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227325 () Bool)

(assert (=> b!5227325 (= e!3253305 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 lt!2144285 (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685298 c!902575) b!5227324))

(assert (= (and d!1685298 (not c!902575)) b!5227325))

(assert (=> d!1685298 m!6272876))

(assert (=> d!1685298 m!6273502))

(assert (=> b!5227324 m!6273072))

(declare-fun m!6273870 () Bool)

(assert (=> b!5227324 m!6273870))

(assert (=> b!5227325 m!6272876))

(assert (=> b!5227325 m!6273506))

(assert (=> b!5227325 m!6273072))

(assert (=> b!5227325 m!6273506))

(declare-fun m!6273872 () Bool)

(assert (=> b!5227325 m!6273872))

(assert (=> b!5227325 m!6272876))

(assert (=> b!5227325 m!6273510))

(assert (=> b!5227325 m!6273872))

(assert (=> b!5227325 m!6273510))

(declare-fun m!6273874 () Bool)

(assert (=> b!5227325 m!6273874))

(assert (=> b!5226402 d!1685298))

(declare-fun bs!1213676 () Bool)

(declare-fun d!1685300 () Bool)

(assert (= bs!1213676 (and d!1685300 d!1685180)))

(declare-fun lambda!262486 () Int)

(assert (=> bs!1213676 (= lambda!262486 lambda!262467)))

(declare-fun bs!1213677 () Bool)

(assert (= bs!1213677 (and d!1685300 b!5225936)))

(assert (=> bs!1213677 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262486 lambda!262382))))

(declare-fun bs!1213678 () Bool)

(assert (= bs!1213678 (and d!1685300 d!1685230)))

(assert (=> bs!1213678 (= lambda!262486 lambda!262475)))

(declare-fun bs!1213679 () Bool)

(assert (= bs!1213679 (and d!1685300 d!1685120)))

(assert (=> bs!1213679 (= lambda!262486 lambda!262463)))

(declare-fun bs!1213680 () Bool)

(assert (= bs!1213680 (and d!1685300 d!1685216)))

(assert (=> bs!1213680 (= lambda!262486 lambda!262474)))

(declare-fun bs!1213681 () Bool)

(assert (= bs!1213681 (and d!1685300 d!1685274)))

(assert (=> bs!1213681 (= lambda!262486 lambda!262478)))

(assert (=> d!1685300 true))

(assert (=> d!1685300 (= (derivationStepZipper!1084 lt!2144285 (head!11200 (t!373924 s!2326))) (flatMap!543 lt!2144285 lambda!262486))))

(declare-fun bs!1213682 () Bool)

(assert (= bs!1213682 d!1685300))

(declare-fun m!6273876 () Bool)

(assert (=> bs!1213682 m!6273876))

(assert (=> b!5226402 d!1685300))

(assert (=> b!5226402 d!1685122))

(assert (=> b!5226402 d!1685124))

(declare-fun d!1685302 () Bool)

(declare-fun res!2219152 () Bool)

(declare-fun e!3253306 () Bool)

(assert (=> d!1685302 (=> res!2219152 e!3253306)))

(assert (=> d!1685302 (= res!2219152 (is-Nil!60623 lt!2144409))))

(assert (=> d!1685302 (= (forall!14248 lt!2144409 lambda!262406) e!3253306)))

(declare-fun b!5227326 () Bool)

(declare-fun e!3253307 () Bool)

(assert (=> b!5227326 (= e!3253306 e!3253307)))

(declare-fun res!2219153 () Bool)

(assert (=> b!5227326 (=> (not res!2219153) (not e!3253307))))

(assert (=> b!5227326 (= res!2219153 (dynLambda!23958 lambda!262406 (h!67071 lt!2144409)))))

(declare-fun b!5227327 () Bool)

(assert (=> b!5227327 (= e!3253307 (forall!14248 (t!373922 lt!2144409) lambda!262406))))

(assert (= (and d!1685302 (not res!2219152)) b!5227326))

(assert (= (and b!5227326 res!2219153) b!5227327))

(declare-fun b_lambda!202111 () Bool)

(assert (=> (not b_lambda!202111) (not b!5227326)))

(declare-fun m!6273878 () Bool)

(assert (=> b!5227326 m!6273878))

(declare-fun m!6273880 () Bool)

(assert (=> b!5227327 m!6273880))

(assert (=> d!1684884 d!1685302))

(assert (=> b!5226205 d!1684862))

(declare-fun bs!1213683 () Bool)

(declare-fun d!1685304 () Bool)

(assert (= bs!1213683 (and d!1685304 d!1685130)))

(declare-fun lambda!262487 () Int)

(assert (=> bs!1213683 (= lambda!262487 lambda!262464)))

(declare-fun bs!1213684 () Bool)

(assert (= bs!1213684 (and d!1685304 d!1684884)))

(assert (=> bs!1213684 (= lambda!262487 lambda!262406)))

(declare-fun bs!1213685 () Bool)

(assert (= bs!1213685 (and d!1685304 d!1684900)))

(assert (=> bs!1213685 (= lambda!262487 lambda!262415)))

(declare-fun bs!1213686 () Bool)

(assert (= bs!1213686 (and d!1685304 d!1684882)))

(assert (=> bs!1213686 (= lambda!262487 lambda!262403)))

(declare-fun bs!1213687 () Bool)

(assert (= bs!1213687 (and d!1685304 d!1685114)))

(assert (=> bs!1213687 (= lambda!262487 lambda!262460)))

(declare-fun bs!1213688 () Bool)

(assert (= bs!1213688 (and d!1685304 d!1684930)))

(assert (=> bs!1213688 (= lambda!262487 lambda!262425)))

(declare-fun bs!1213689 () Bool)

(assert (= bs!1213689 (and d!1685304 d!1685102)))

(assert (=> bs!1213689 (= lambda!262487 lambda!262458)))

(declare-fun bs!1213690 () Bool)

(assert (= bs!1213690 (and d!1685304 d!1685234)))

(assert (=> bs!1213690 (= lambda!262487 lambda!262476)))

(declare-fun bs!1213691 () Bool)

(assert (= bs!1213691 (and d!1685304 d!1684862)))

(assert (=> bs!1213691 (= lambda!262487 lambda!262400)))

(declare-fun lt!2144505 () List!60747)

(assert (=> d!1685304 (forall!14248 lt!2144505 lambda!262487)))

(declare-fun e!3253308 () List!60747)

(assert (=> d!1685304 (= lt!2144505 e!3253308)))

(declare-fun c!902576 () Bool)

(assert (=> d!1685304 (= c!902576 (is-Cons!60624 (t!373923 zl!343)))))

(assert (=> d!1685304 (= (unfocusZipperList!258 (t!373923 zl!343)) lt!2144505)))

(declare-fun b!5227328 () Bool)

(assert (=> b!5227328 (= e!3253308 (Cons!60623 (generalisedConcat!485 (exprs!4700 (h!67072 (t!373923 zl!343)))) (unfocusZipperList!258 (t!373923 (t!373923 zl!343)))))))

(declare-fun b!5227329 () Bool)

(assert (=> b!5227329 (= e!3253308 Nil!60623)))

(assert (= (and d!1685304 c!902576) b!5227328))

(assert (= (and d!1685304 (not c!902576)) b!5227329))

(declare-fun m!6273882 () Bool)

(assert (=> d!1685304 m!6273882))

(declare-fun m!6273884 () Bool)

(assert (=> b!5227328 m!6273884))

(declare-fun m!6273886 () Bool)

(assert (=> b!5227328 m!6273886))

(assert (=> b!5226205 d!1685304))

(declare-fun b!5227330 () Bool)

(declare-fun e!3253313 () (Set Context!8400))

(assert (=> b!5227330 (= e!3253313 (set.insert (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (as set.empty (Set Context!8400))))))

(declare-fun call!369472 () (Set Context!8400))

(declare-fun c!902577 () Bool)

(declare-fun call!369473 () List!60747)

(declare-fun bm!369467 () Bool)

(assert (=> bm!369467 (= call!369472 (derivationStepZipperDown!264 (ite c!902577 (regOne!30145 (h!67071 (exprs!4700 lt!2144289))) (regOne!30144 (h!67071 (exprs!4700 lt!2144289)))) (ite c!902577 (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (Context!8401 call!369473)) (h!67073 s!2326)))))

(declare-fun c!902581 () Bool)

(declare-fun c!902579 () Bool)

(declare-fun bm!369469 () Bool)

(assert (=> bm!369469 (= call!369473 ($colon$colon!1290 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144289)))) (ite (or c!902581 c!902579) (regTwo!30144 (h!67071 (exprs!4700 lt!2144289))) (h!67071 (exprs!4700 lt!2144289)))))))

(declare-fun b!5227331 () Bool)

(declare-fun c!902580 () Bool)

(assert (=> b!5227331 (= c!902580 (is-Star!14816 (h!67071 (exprs!4700 lt!2144289))))))

(declare-fun e!3253314 () (Set Context!8400))

(declare-fun e!3253311 () (Set Context!8400))

(assert (=> b!5227331 (= e!3253314 e!3253311)))

(declare-fun bm!369470 () Bool)

(declare-fun call!369477 () List!60747)

(assert (=> bm!369470 (= call!369477 call!369473)))

(declare-fun b!5227332 () Bool)

(declare-fun e!3253312 () (Set Context!8400))

(assert (=> b!5227332 (= e!3253313 e!3253312)))

(assert (=> b!5227332 (= c!902577 (is-Union!14816 (h!67071 (exprs!4700 lt!2144289))))))

(declare-fun b!5227333 () Bool)

(declare-fun call!369474 () (Set Context!8400))

(assert (=> b!5227333 (= e!3253312 (set.union call!369472 call!369474))))

(declare-fun b!5227334 () Bool)

(declare-fun e!3253309 () (Set Context!8400))

(assert (=> b!5227334 (= e!3253309 e!3253314)))

(assert (=> b!5227334 (= c!902579 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144289))))))

(declare-fun b!5227335 () Bool)

(declare-fun call!369475 () (Set Context!8400))

(assert (=> b!5227335 (= e!3253314 call!369475)))

(declare-fun b!5227336 () Bool)

(declare-fun call!369476 () (Set Context!8400))

(assert (=> b!5227336 (= e!3253309 (set.union call!369472 call!369476))))

(declare-fun b!5227337 () Bool)

(assert (=> b!5227337 (= e!3253311 (as set.empty (Set Context!8400)))))

(declare-fun b!5227338 () Bool)

(assert (=> b!5227338 (= e!3253311 call!369475)))

(declare-fun b!5227339 () Bool)

(declare-fun e!3253310 () Bool)

(assert (=> b!5227339 (= e!3253310 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 lt!2144289)))))))

(declare-fun b!5227340 () Bool)

(assert (=> b!5227340 (= c!902581 e!3253310)))

(declare-fun res!2219154 () Bool)

(assert (=> b!5227340 (=> (not res!2219154) (not e!3253310))))

(assert (=> b!5227340 (= res!2219154 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144289))))))

(assert (=> b!5227340 (= e!3253312 e!3253309)))

(declare-fun d!1685306 () Bool)

(declare-fun c!902578 () Bool)

(assert (=> d!1685306 (= c!902578 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 lt!2144289))) (= (c!902205 (h!67071 (exprs!4700 lt!2144289))) (h!67073 s!2326))))))

(assert (=> d!1685306 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144289)) (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (h!67073 s!2326)) e!3253313)))

(declare-fun bm!369468 () Bool)

(assert (=> bm!369468 (= call!369476 call!369474)))

(declare-fun bm!369471 () Bool)

(assert (=> bm!369471 (= call!369475 call!369476)))

(declare-fun bm!369472 () Bool)

(assert (=> bm!369472 (= call!369474 (derivationStepZipperDown!264 (ite c!902577 (regTwo!30145 (h!67071 (exprs!4700 lt!2144289))) (ite c!902581 (regTwo!30144 (h!67071 (exprs!4700 lt!2144289))) (ite c!902579 (regOne!30144 (h!67071 (exprs!4700 lt!2144289))) (reg!15145 (h!67071 (exprs!4700 lt!2144289)))))) (ite (or c!902577 c!902581) (Context!8401 (t!373922 (exprs!4700 lt!2144289))) (Context!8401 call!369477)) (h!67073 s!2326)))))

(assert (= (and d!1685306 c!902578) b!5227330))

(assert (= (and d!1685306 (not c!902578)) b!5227332))

(assert (= (and b!5227332 c!902577) b!5227333))

(assert (= (and b!5227332 (not c!902577)) b!5227340))

(assert (= (and b!5227340 res!2219154) b!5227339))

(assert (= (and b!5227340 c!902581) b!5227336))

(assert (= (and b!5227340 (not c!902581)) b!5227334))

(assert (= (and b!5227334 c!902579) b!5227335))

(assert (= (and b!5227334 (not c!902579)) b!5227331))

(assert (= (and b!5227331 c!902580) b!5227338))

(assert (= (and b!5227331 (not c!902580)) b!5227337))

(assert (= (or b!5227335 b!5227338) bm!369470))

(assert (= (or b!5227335 b!5227338) bm!369471))

(assert (= (or b!5227336 bm!369470) bm!369469))

(assert (= (or b!5227336 bm!369471) bm!369468))

(assert (= (or b!5227333 bm!369468) bm!369472))

(assert (= (or b!5227333 b!5227336) bm!369467))

(declare-fun m!6273888 () Bool)

(assert (=> b!5227330 m!6273888))

(declare-fun m!6273890 () Bool)

(assert (=> bm!369469 m!6273890))

(declare-fun m!6273892 () Bool)

(assert (=> bm!369467 m!6273892))

(declare-fun m!6273894 () Bool)

(assert (=> b!5227339 m!6273894))

(declare-fun m!6273896 () Bool)

(assert (=> bm!369472 m!6273896))

(assert (=> bm!369303 d!1685306))

(declare-fun b!5227341 () Bool)

(declare-fun e!3253319 () (Set Context!8400))

(assert (=> b!5227341 (= e!3253319 (set.insert (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (as set.empty (Set Context!8400))))))

(declare-fun call!369479 () List!60747)

(declare-fun bm!369473 () Bool)

(declare-fun c!902582 () Bool)

(declare-fun call!369478 () (Set Context!8400))

(assert (=> bm!369473 (= call!369478 (derivationStepZipperDown!264 (ite c!902582 (regOne!30145 (h!67071 (exprs!4700 lt!2144297))) (regOne!30144 (h!67071 (exprs!4700 lt!2144297)))) (ite c!902582 (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (Context!8401 call!369479)) (h!67073 s!2326)))))

(declare-fun c!902586 () Bool)

(declare-fun c!902584 () Bool)

(declare-fun bm!369475 () Bool)

(assert (=> bm!369475 (= call!369479 ($colon$colon!1290 (exprs!4700 (Context!8401 (t!373922 (exprs!4700 lt!2144297)))) (ite (or c!902586 c!902584) (regTwo!30144 (h!67071 (exprs!4700 lt!2144297))) (h!67071 (exprs!4700 lt!2144297)))))))

(declare-fun b!5227342 () Bool)

(declare-fun c!902585 () Bool)

(assert (=> b!5227342 (= c!902585 (is-Star!14816 (h!67071 (exprs!4700 lt!2144297))))))

(declare-fun e!3253320 () (Set Context!8400))

(declare-fun e!3253317 () (Set Context!8400))

(assert (=> b!5227342 (= e!3253320 e!3253317)))

(declare-fun bm!369476 () Bool)

(declare-fun call!369483 () List!60747)

(assert (=> bm!369476 (= call!369483 call!369479)))

(declare-fun b!5227343 () Bool)

(declare-fun e!3253318 () (Set Context!8400))

(assert (=> b!5227343 (= e!3253319 e!3253318)))

(assert (=> b!5227343 (= c!902582 (is-Union!14816 (h!67071 (exprs!4700 lt!2144297))))))

(declare-fun b!5227344 () Bool)

(declare-fun call!369480 () (Set Context!8400))

(assert (=> b!5227344 (= e!3253318 (set.union call!369478 call!369480))))

(declare-fun b!5227345 () Bool)

(declare-fun e!3253315 () (Set Context!8400))

(assert (=> b!5227345 (= e!3253315 e!3253320)))

(assert (=> b!5227345 (= c!902584 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144297))))))

(declare-fun b!5227346 () Bool)

(declare-fun call!369481 () (Set Context!8400))

(assert (=> b!5227346 (= e!3253320 call!369481)))

(declare-fun b!5227347 () Bool)

(declare-fun call!369482 () (Set Context!8400))

(assert (=> b!5227347 (= e!3253315 (set.union call!369478 call!369482))))

(declare-fun b!5227348 () Bool)

(assert (=> b!5227348 (= e!3253317 (as set.empty (Set Context!8400)))))

(declare-fun b!5227349 () Bool)

(assert (=> b!5227349 (= e!3253317 call!369481)))

(declare-fun b!5227350 () Bool)

(declare-fun e!3253316 () Bool)

(assert (=> b!5227350 (= e!3253316 (nullable!4985 (regOne!30144 (h!67071 (exprs!4700 lt!2144297)))))))

(declare-fun b!5227351 () Bool)

(assert (=> b!5227351 (= c!902586 e!3253316)))

(declare-fun res!2219155 () Bool)

(assert (=> b!5227351 (=> (not res!2219155) (not e!3253316))))

(assert (=> b!5227351 (= res!2219155 (is-Concat!23661 (h!67071 (exprs!4700 lt!2144297))))))

(assert (=> b!5227351 (= e!3253318 e!3253315)))

(declare-fun d!1685308 () Bool)

(declare-fun c!902583 () Bool)

(assert (=> d!1685308 (= c!902583 (and (is-ElementMatch!14816 (h!67071 (exprs!4700 lt!2144297))) (= (c!902205 (h!67071 (exprs!4700 lt!2144297))) (h!67073 s!2326))))))

(assert (=> d!1685308 (= (derivationStepZipperDown!264 (h!67071 (exprs!4700 lt!2144297)) (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (h!67073 s!2326)) e!3253319)))

(declare-fun bm!369474 () Bool)

(assert (=> bm!369474 (= call!369482 call!369480)))

(declare-fun bm!369477 () Bool)

(assert (=> bm!369477 (= call!369481 call!369482)))

(declare-fun bm!369478 () Bool)

(assert (=> bm!369478 (= call!369480 (derivationStepZipperDown!264 (ite c!902582 (regTwo!30145 (h!67071 (exprs!4700 lt!2144297))) (ite c!902586 (regTwo!30144 (h!67071 (exprs!4700 lt!2144297))) (ite c!902584 (regOne!30144 (h!67071 (exprs!4700 lt!2144297))) (reg!15145 (h!67071 (exprs!4700 lt!2144297)))))) (ite (or c!902582 c!902586) (Context!8401 (t!373922 (exprs!4700 lt!2144297))) (Context!8401 call!369483)) (h!67073 s!2326)))))

(assert (= (and d!1685308 c!902583) b!5227341))

(assert (= (and d!1685308 (not c!902583)) b!5227343))

(assert (= (and b!5227343 c!902582) b!5227344))

(assert (= (and b!5227343 (not c!902582)) b!5227351))

(assert (= (and b!5227351 res!2219155) b!5227350))

(assert (= (and b!5227351 c!902586) b!5227347))

(assert (= (and b!5227351 (not c!902586)) b!5227345))

(assert (= (and b!5227345 c!902584) b!5227346))

(assert (= (and b!5227345 (not c!902584)) b!5227342))

(assert (= (and b!5227342 c!902585) b!5227349))

(assert (= (and b!5227342 (not c!902585)) b!5227348))

(assert (= (or b!5227346 b!5227349) bm!369476))

(assert (= (or b!5227346 b!5227349) bm!369477))

(assert (= (or b!5227347 bm!369476) bm!369475))

(assert (= (or b!5227347 bm!369477) bm!369474))

(assert (= (or b!5227344 bm!369474) bm!369478))

(assert (= (or b!5227344 b!5227347) bm!369473))

(declare-fun m!6273898 () Bool)

(assert (=> b!5227341 m!6273898))

(declare-fun m!6273900 () Bool)

(assert (=> bm!369475 m!6273900))

(declare-fun m!6273902 () Bool)

(assert (=> bm!369473 m!6273902))

(declare-fun m!6273904 () Bool)

(assert (=> b!5227350 m!6273904))

(declare-fun m!6273906 () Bool)

(assert (=> bm!369478 m!6273906))

(assert (=> bm!369302 d!1685308))

(declare-fun e!3253325 () (Set Context!8400))

(declare-fun b!5227352 () Bool)

(assert (=> b!5227352 (= e!3253325 (set.insert (ite c!902247 lt!2144293 (Context!8401 call!369264)) (as set.empty (Set Context!8400))))))

(declare-fun call!369484 () (Set Context!8400))

(declare-fun call!369485 () List!60747)

(declare-fun bm!369479 () Bool)

(declare-fun c!902587 () Bool)

(assert (=> bm!369479 (= call!369484 (derivationStepZipperDown!264 (ite c!902587 (regOne!30145 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (regOne!30144 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))) (ite c!902587 (ite c!902247 lt!2144293 (Context!8401 call!369264)) (Context!8401 call!369485)) (h!67073 s!2326)))))

(declare-fun c!902589 () Bool)

(declare-fun bm!369481 () Bool)

(declare-fun c!902591 () Bool)

(assert (=> bm!369481 (= call!369485 ($colon$colon!1290 (exprs!4700 (ite c!902247 lt!2144293 (Context!8401 call!369264))) (ite (or c!902591 c!902589) (regTwo!30144 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5227353 () Bool)

(declare-fun c!902590 () Bool)

(assert (=> b!5227353 (= c!902590 (is-Star!14816 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun e!3253326 () (Set Context!8400))

(declare-fun e!3253323 () (Set Context!8400))

(assert (=> b!5227353 (= e!3253326 e!3253323)))

(declare-fun bm!369482 () Bool)

(declare-fun call!369489 () List!60747)

(assert (=> bm!369482 (= call!369489 call!369485)))

(declare-fun b!5227354 () Bool)

(declare-fun e!3253324 () (Set Context!8400))

(assert (=> b!5227354 (= e!3253325 e!3253324)))

(assert (=> b!5227354 (= c!902587 (is-Union!14816 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227355 () Bool)

(declare-fun call!369486 () (Set Context!8400))

(assert (=> b!5227355 (= e!3253324 (set.union call!369484 call!369486))))

(declare-fun b!5227356 () Bool)

(declare-fun e!3253321 () (Set Context!8400))

(assert (=> b!5227356 (= e!3253321 e!3253326)))

(assert (=> b!5227356 (= c!902589 (is-Concat!23661 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(declare-fun b!5227357 () Bool)

(declare-fun call!369487 () (Set Context!8400))

(assert (=> b!5227357 (= e!3253326 call!369487)))

(declare-fun b!5227358 () Bool)

(declare-fun call!369488 () (Set Context!8400))

(assert (=> b!5227358 (= e!3253321 (set.union call!369484 call!369488))))

(declare-fun b!5227359 () Bool)

(assert (=> b!5227359 (= e!3253323 (as set.empty (Set Context!8400)))))

(declare-fun b!5227360 () Bool)

(assert (=> b!5227360 (= e!3253323 call!369487)))

(declare-fun b!5227361 () Bool)

(declare-fun e!3253322 () Bool)

(assert (=> b!5227361 (= e!3253322 (nullable!4985 (regOne!30144 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))))

(declare-fun b!5227362 () Bool)

(assert (=> b!5227362 (= c!902591 e!3253322)))

(declare-fun res!2219156 () Bool)

(assert (=> b!5227362 (=> (not res!2219156) (not e!3253322))))

(assert (=> b!5227362 (= res!2219156 (is-Concat!23661 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))))))

(assert (=> b!5227362 (= e!3253324 e!3253321)))

(declare-fun d!1685310 () Bool)

(declare-fun c!902588 () Bool)

(assert (=> d!1685310 (= c!902588 (and (is-ElementMatch!14816 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (= (c!902205 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (h!67073 s!2326))))))

(assert (=> d!1685310 (= (derivationStepZipperDown!264 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))) (ite c!902247 lt!2144293 (Context!8401 call!369264)) (h!67073 s!2326)) e!3253325)))

(declare-fun bm!369480 () Bool)

(assert (=> bm!369480 (= call!369488 call!369486)))

(declare-fun bm!369483 () Bool)

(assert (=> bm!369483 (= call!369487 call!369488)))

(declare-fun bm!369484 () Bool)

(assert (=> bm!369484 (= call!369486 (derivationStepZipperDown!264 (ite c!902587 (regTwo!30145 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (ite c!902591 (regTwo!30144 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (ite c!902589 (regOne!30144 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292))))) (reg!15145 (ite c!902247 (regOne!30145 (regTwo!30145 (regOne!30144 r!7292))) (regOne!30144 (regTwo!30145 (regOne!30144 r!7292)))))))) (ite (or c!902587 c!902591) (ite c!902247 lt!2144293 (Context!8401 call!369264)) (Context!8401 call!369489)) (h!67073 s!2326)))))

(assert (= (and d!1685310 c!902588) b!5227352))

(assert (= (and d!1685310 (not c!902588)) b!5227354))

(assert (= (and b!5227354 c!902587) b!5227355))

(assert (= (and b!5227354 (not c!902587)) b!5227362))

(assert (= (and b!5227362 res!2219156) b!5227361))

(assert (= (and b!5227362 c!902591) b!5227358))

(assert (= (and b!5227362 (not c!902591)) b!5227356))

(assert (= (and b!5227356 c!902589) b!5227357))

(assert (= (and b!5227356 (not c!902589)) b!5227353))

(assert (= (and b!5227353 c!902590) b!5227360))

(assert (= (and b!5227353 (not c!902590)) b!5227359))

(assert (= (or b!5227357 b!5227360) bm!369482))

(assert (= (or b!5227357 b!5227360) bm!369483))

(assert (= (or b!5227358 bm!369482) bm!369481))

(assert (= (or b!5227358 bm!369483) bm!369480))

(assert (= (or b!5227355 bm!369480) bm!369484))

(assert (= (or b!5227355 b!5227358) bm!369479))

(declare-fun m!6273908 () Bool)

(assert (=> b!5227352 m!6273908))

(declare-fun m!6273910 () Bool)

(assert (=> bm!369481 m!6273910))

(declare-fun m!6273912 () Bool)

(assert (=> bm!369479 m!6273912))

(declare-fun m!6273914 () Bool)

(assert (=> b!5227361 m!6273914))

(declare-fun m!6273916 () Bool)

(assert (=> bm!369484 m!6273916))

(assert (=> bm!369258 d!1685310))

(declare-fun bs!1213692 () Bool)

(declare-fun d!1685312 () Bool)

(assert (= bs!1213692 (and d!1685312 d!1685258)))

(declare-fun lambda!262488 () Int)

(assert (=> bs!1213692 (= lambda!262488 lambda!262477)))

(declare-fun bs!1213693 () Bool)

(assert (= bs!1213693 (and d!1685312 d!1685200)))

(assert (=> bs!1213693 (= lambda!262488 lambda!262473)))

(declare-fun bs!1213694 () Bool)

(assert (= bs!1213694 (and d!1685312 d!1685104)))

(assert (=> bs!1213694 (= lambda!262488 lambda!262459)))

(declare-fun bs!1213695 () Bool)

(assert (= bs!1213695 (and d!1685312 d!1685292)))

(assert (=> bs!1213695 (= lambda!262488 lambda!262485)))

(declare-fun bs!1213696 () Bool)

(assert (= bs!1213696 (and d!1685312 d!1685068)))

(assert (=> bs!1213696 (= lambda!262488 lambda!262456)))

(declare-fun bs!1213697 () Bool)

(assert (= bs!1213697 (and d!1685312 d!1685084)))

(assert (=> bs!1213697 (= lambda!262488 lambda!262457)))

(assert (=> d!1685312 (= (nullableZipper!1240 (set.union lt!2144285 lt!2144287)) (exists!1975 (set.union lt!2144285 lt!2144287) lambda!262488))))

(declare-fun bs!1213698 () Bool)

(assert (= bs!1213698 d!1685312))

(declare-fun m!6273918 () Bool)

(assert (=> bs!1213698 m!6273918))

(assert (=> b!5226208 d!1685312))

(declare-fun b!5227363 () Bool)

(declare-fun e!3253332 () Bool)

(declare-fun call!369490 () Bool)

(assert (=> b!5227363 (= e!3253332 call!369490)))

(declare-fun b!5227364 () Bool)

(declare-fun e!3253330 () Bool)

(assert (=> b!5227364 (= e!3253330 call!369490)))

(declare-fun c!902593 () Bool)

(declare-fun bm!369485 () Bool)

(declare-fun c!902592 () Bool)

(declare-fun call!369492 () Bool)

(assert (=> bm!369485 (= call!369492 (validRegex!6552 (ite c!902592 (reg!15145 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))) (ite c!902593 (regTwo!30145 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))) (regTwo!30144 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292))))))))))

(declare-fun bm!369486 () Bool)

(assert (=> bm!369486 (= call!369490 call!369492)))

(declare-fun b!5227365 () Bool)

(declare-fun e!3253328 () Bool)

(assert (=> b!5227365 (= e!3253328 call!369492)))

(declare-fun b!5227367 () Bool)

(declare-fun res!2219160 () Bool)

(declare-fun e!3253331 () Bool)

(assert (=> b!5227367 (=> res!2219160 e!3253331)))

(assert (=> b!5227367 (= res!2219160 (not (is-Concat!23661 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292))))))))

(declare-fun e!3253327 () Bool)

(assert (=> b!5227367 (= e!3253327 e!3253331)))

(declare-fun b!5227368 () Bool)

(assert (=> b!5227368 (= e!3253331 e!3253332)))

(declare-fun res!2219157 () Bool)

(assert (=> b!5227368 (=> (not res!2219157) (not e!3253332))))

(declare-fun call!369491 () Bool)

(assert (=> b!5227368 (= res!2219157 call!369491)))

(declare-fun b!5227369 () Bool)

(declare-fun res!2219159 () Bool)

(assert (=> b!5227369 (=> (not res!2219159) (not e!3253330))))

(assert (=> b!5227369 (= res!2219159 call!369491)))

(assert (=> b!5227369 (= e!3253327 e!3253330)))

(declare-fun bm!369487 () Bool)

(assert (=> bm!369487 (= call!369491 (validRegex!6552 (ite c!902593 (regOne!30145 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))) (regOne!30144 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))))

(declare-fun d!1685314 () Bool)

(declare-fun res!2219161 () Bool)

(declare-fun e!3253333 () Bool)

(assert (=> d!1685314 (=> res!2219161 e!3253333)))

(assert (=> d!1685314 (= res!2219161 (is-ElementMatch!14816 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))

(assert (=> d!1685314 (= (validRegex!6552 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))) e!3253333)))

(declare-fun b!5227366 () Bool)

(declare-fun e!3253329 () Bool)

(assert (=> b!5227366 (= e!3253329 e!3253327)))

(assert (=> b!5227366 (= c!902593 (is-Union!14816 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))

(declare-fun b!5227370 () Bool)

(assert (=> b!5227370 (= e!3253333 e!3253329)))

(assert (=> b!5227370 (= c!902592 (is-Star!14816 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))

(declare-fun b!5227371 () Bool)

(assert (=> b!5227371 (= e!3253329 e!3253328)))

(declare-fun res!2219158 () Bool)

(assert (=> b!5227371 (= res!2219158 (not (nullable!4985 (reg!15145 (ite c!902324 (reg!15145 r!7292) (ite c!902325 (regTwo!30145 r!7292) (regTwo!30144 r!7292)))))))))

(assert (=> b!5227371 (=> (not res!2219158) (not e!3253328))))

(assert (= (and d!1685314 (not res!2219161)) b!5227370))

(assert (= (and b!5227370 c!902592) b!5227371))

(assert (= (and b!5227370 (not c!902592)) b!5227366))

(assert (= (and b!5227371 res!2219158) b!5227365))

(assert (= (and b!5227366 c!902593) b!5227369))

(assert (= (and b!5227366 (not c!902593)) b!5227367))

(assert (= (and b!5227369 res!2219159) b!5227364))

(assert (= (and b!5227367 (not res!2219160)) b!5227368))

(assert (= (and b!5227368 res!2219157) b!5227363))

(assert (= (or b!5227364 b!5227363) bm!369486))

(assert (= (or b!5227369 b!5227368) bm!369487))

(assert (= (or b!5227365 bm!369486) bm!369485))

(declare-fun m!6273920 () Bool)

(assert (=> bm!369485 m!6273920))

(declare-fun m!6273922 () Bool)

(assert (=> bm!369487 m!6273922))

(declare-fun m!6273924 () Bool)

(assert (=> b!5227371 m!6273924))

(assert (=> bm!369299 d!1685314))

(declare-fun d!1685316 () Bool)

(declare-fun c!902594 () Bool)

(assert (=> d!1685316 (= c!902594 (isEmpty!32551 (tail!10297 (t!373924 s!2326))))))

(declare-fun e!3253334 () Bool)

(assert (=> d!1685316 (= (matchZipper!1060 (derivationStepZipper!1084 lt!2144287 (head!11200 (t!373924 s!2326))) (tail!10297 (t!373924 s!2326))) e!3253334)))

(declare-fun b!5227372 () Bool)

(assert (=> b!5227372 (= e!3253334 (nullableZipper!1240 (derivationStepZipper!1084 lt!2144287 (head!11200 (t!373924 s!2326)))))))

(declare-fun b!5227373 () Bool)

(assert (=> b!5227373 (= e!3253334 (matchZipper!1060 (derivationStepZipper!1084 (derivationStepZipper!1084 lt!2144287 (head!11200 (t!373924 s!2326))) (head!11200 (tail!10297 (t!373924 s!2326)))) (tail!10297 (tail!10297 (t!373924 s!2326)))))))

(assert (= (and d!1685316 c!902594) b!5227372))

(assert (= (and d!1685316 (not c!902594)) b!5227373))

(assert (=> d!1685316 m!6272876))

(assert (=> d!1685316 m!6273502))

(assert (=> b!5227372 m!6272874))

(declare-fun m!6273926 () Bool)

(assert (=> b!5227372 m!6273926))

(assert (=> b!5227373 m!6272876))

(assert (=> b!5227373 m!6273506))

(assert (=> b!5227373 m!6272874))

(assert (=> b!5227373 m!6273506))

(declare-fun m!6273928 () Bool)

(assert (=> b!5227373 m!6273928))

(assert (=> b!5227373 m!6272876))

(assert (=> b!5227373 m!6273510))

(assert (=> b!5227373 m!6273928))

(assert (=> b!5227373 m!6273510))

(declare-fun m!6273930 () Bool)

(assert (=> b!5227373 m!6273930))

(assert (=> b!5226116 d!1685316))

(declare-fun bs!1213699 () Bool)

(declare-fun d!1685318 () Bool)

(assert (= bs!1213699 (and d!1685318 d!1685180)))

(declare-fun lambda!262489 () Int)

(assert (=> bs!1213699 (= lambda!262489 lambda!262467)))

(declare-fun bs!1213700 () Bool)

(assert (= bs!1213700 (and d!1685318 b!5225936)))

(assert (=> bs!1213700 (= (= (head!11200 (t!373924 s!2326)) (h!67073 s!2326)) (= lambda!262489 lambda!262382))))

(declare-fun bs!1213701 () Bool)

(assert (= bs!1213701 (and d!1685318 d!1685230)))

(assert (=> bs!1213701 (= lambda!262489 lambda!262475)))

(declare-fun bs!1213702 () Bool)

(assert (= bs!1213702 (and d!1685318 d!1685300)))

(assert (=> bs!1213702 (= lambda!262489 lambda!262486)))

(declare-fun bs!1213703 () Bool)

(assert (= bs!1213703 (and d!1685318 d!1685120)))

(assert (=> bs!1213703 (= lambda!262489 lambda!262463)))

(declare-fun bs!1213704 () Bool)

(assert (= bs!1213704 (and d!1685318 d!1685216)))

(assert (=> bs!1213704 (= lambda!262489 lambda!262474)))

(declare-fun bs!1213705 () Bool)

(assert (= bs!1213705 (and d!1685318 d!1685274)))

(assert (=> bs!1213705 (= lambda!262489 lambda!262478)))

(assert (=> d!1685318 true))

(assert (=> d!1685318 (= (derivationStepZipper!1084 lt!2144287 (head!11200 (t!373924 s!2326))) (flatMap!543 lt!2144287 lambda!262489))))

(declare-fun bs!1213706 () Bool)

(assert (= bs!1213706 d!1685318))

(declare-fun m!6273932 () Bool)

(assert (=> bs!1213706 m!6273932))

(assert (=> b!5226116 d!1685318))

(assert (=> b!5226116 d!1685122))

(assert (=> b!5226116 d!1685124))

(assert (=> d!1684934 d!1685140))

(declare-fun b!5227374 () Bool)

(declare-fun e!3253335 () Bool)

(declare-fun tp!1464944 () Bool)

(assert (=> b!5227374 (= e!3253335 (and tp_is_empty!38885 tp!1464944))))

(assert (=> b!5226468 (= tp!1464859 e!3253335)))

(assert (= (and b!5226468 (is-Cons!60625 (t!373924 (t!373924 s!2326)))) b!5227374))

(declare-fun b!5227375 () Bool)

(declare-fun e!3253336 () Bool)

(declare-fun tp!1464945 () Bool)

(declare-fun tp!1464946 () Bool)

(assert (=> b!5227375 (= e!3253336 (and tp!1464945 tp!1464946))))

(assert (=> b!5226448 (= tp!1464836 e!3253336)))

(assert (= (and b!5226448 (is-Cons!60623 (exprs!4700 (h!67072 (t!373923 zl!343))))) b!5227375))

(declare-fun e!3253337 () Bool)

(assert (=> b!5226474 (= tp!1464869 e!3253337)))

(declare-fun b!5227377 () Bool)

(declare-fun tp!1464951 () Bool)

(declare-fun tp!1464949 () Bool)

(assert (=> b!5227377 (= e!3253337 (and tp!1464951 tp!1464949))))

(declare-fun b!5227378 () Bool)

(declare-fun tp!1464948 () Bool)

(assert (=> b!5227378 (= e!3253337 tp!1464948)))

(declare-fun b!5227376 () Bool)

(assert (=> b!5227376 (= e!3253337 tp_is_empty!38885)))

(declare-fun b!5227379 () Bool)

(declare-fun tp!1464950 () Bool)

(declare-fun tp!1464947 () Bool)

(assert (=> b!5227379 (= e!3253337 (and tp!1464950 tp!1464947))))

(assert (= (and b!5226474 (is-ElementMatch!14816 (regOne!30144 (regTwo!30144 r!7292)))) b!5227376))

(assert (= (and b!5226474 (is-Concat!23661 (regOne!30144 (regTwo!30144 r!7292)))) b!5227377))

(assert (= (and b!5226474 (is-Star!14816 (regOne!30144 (regTwo!30144 r!7292)))) b!5227378))

(assert (= (and b!5226474 (is-Union!14816 (regOne!30144 (regTwo!30144 r!7292)))) b!5227379))

(declare-fun e!3253338 () Bool)

(assert (=> b!5226474 (= tp!1464867 e!3253338)))

(declare-fun b!5227381 () Bool)

(declare-fun tp!1464956 () Bool)

(declare-fun tp!1464954 () Bool)

(assert (=> b!5227381 (= e!3253338 (and tp!1464956 tp!1464954))))

(declare-fun b!5227382 () Bool)

(declare-fun tp!1464953 () Bool)

(assert (=> b!5227382 (= e!3253338 tp!1464953)))

(declare-fun b!5227380 () Bool)

(assert (=> b!5227380 (= e!3253338 tp_is_empty!38885)))

(declare-fun b!5227383 () Bool)

(declare-fun tp!1464955 () Bool)

(declare-fun tp!1464952 () Bool)

(assert (=> b!5227383 (= e!3253338 (and tp!1464955 tp!1464952))))

(assert (= (and b!5226474 (is-ElementMatch!14816 (regTwo!30144 (regTwo!30144 r!7292)))) b!5227380))

(assert (= (and b!5226474 (is-Concat!23661 (regTwo!30144 (regTwo!30144 r!7292)))) b!5227381))

(assert (= (and b!5226474 (is-Star!14816 (regTwo!30144 (regTwo!30144 r!7292)))) b!5227382))

(assert (= (and b!5226474 (is-Union!14816 (regTwo!30144 (regTwo!30144 r!7292)))) b!5227383))

(declare-fun e!3253339 () Bool)

(assert (=> b!5226476 (= tp!1464868 e!3253339)))

(declare-fun b!5227385 () Bool)

(declare-fun tp!1464961 () Bool)

(declare-fun tp!1464959 () Bool)

(assert (=> b!5227385 (= e!3253339 (and tp!1464961 tp!1464959))))

(declare-fun b!5227386 () Bool)

(declare-fun tp!1464958 () Bool)

(assert (=> b!5227386 (= e!3253339 tp!1464958)))

(declare-fun b!5227384 () Bool)

(assert (=> b!5227384 (= e!3253339 tp_is_empty!38885)))

(declare-fun b!5227387 () Bool)

(declare-fun tp!1464960 () Bool)

(declare-fun tp!1464957 () Bool)

(assert (=> b!5227387 (= e!3253339 (and tp!1464960 tp!1464957))))

(assert (= (and b!5226476 (is-ElementMatch!14816 (regOne!30145 (regTwo!30144 r!7292)))) b!5227384))

(assert (= (and b!5226476 (is-Concat!23661 (regOne!30145 (regTwo!30144 r!7292)))) b!5227385))

(assert (= (and b!5226476 (is-Star!14816 (regOne!30145 (regTwo!30144 r!7292)))) b!5227386))

(assert (= (and b!5226476 (is-Union!14816 (regOne!30145 (regTwo!30144 r!7292)))) b!5227387))

(declare-fun e!3253340 () Bool)

(assert (=> b!5226476 (= tp!1464865 e!3253340)))

(declare-fun b!5227389 () Bool)

(declare-fun tp!1464966 () Bool)

(declare-fun tp!1464964 () Bool)

(assert (=> b!5227389 (= e!3253340 (and tp!1464966 tp!1464964))))

(declare-fun b!5227390 () Bool)

(declare-fun tp!1464963 () Bool)

(assert (=> b!5227390 (= e!3253340 tp!1464963)))

(declare-fun b!5227388 () Bool)

(assert (=> b!5227388 (= e!3253340 tp_is_empty!38885)))

(declare-fun b!5227391 () Bool)

(declare-fun tp!1464965 () Bool)

(declare-fun tp!1464962 () Bool)

(assert (=> b!5227391 (= e!3253340 (and tp!1464965 tp!1464962))))

(assert (= (and b!5226476 (is-ElementMatch!14816 (regTwo!30145 (regTwo!30144 r!7292)))) b!5227388))

(assert (= (and b!5226476 (is-Concat!23661 (regTwo!30145 (regTwo!30144 r!7292)))) b!5227389))

(assert (= (and b!5226476 (is-Star!14816 (regTwo!30145 (regTwo!30144 r!7292)))) b!5227390))

(assert (= (and b!5226476 (is-Union!14816 (regTwo!30145 (regTwo!30144 r!7292)))) b!5227391))

(declare-fun b!5227393 () Bool)

(declare-fun e!3253342 () Bool)

(declare-fun tp!1464967 () Bool)

(assert (=> b!5227393 (= e!3253342 tp!1464967)))

(declare-fun e!3253341 () Bool)

(declare-fun b!5227392 () Bool)

(declare-fun tp!1464968 () Bool)

(assert (=> b!5227392 (= e!3253341 (and (inv!80288 (h!67072 (t!373923 (t!373923 zl!343)))) e!3253342 tp!1464968))))

(assert (=> b!5226447 (= tp!1464837 e!3253341)))

(assert (= b!5227392 b!5227393))

(assert (= (and b!5226447 (is-Cons!60624 (t!373923 (t!373923 zl!343)))) b!5227392))

(declare-fun m!6273934 () Bool)

(assert (=> b!5227392 m!6273934))

(declare-fun e!3253343 () Bool)

(assert (=> b!5226475 (= tp!1464866 e!3253343)))

(declare-fun b!5227395 () Bool)

(declare-fun tp!1464973 () Bool)

(declare-fun tp!1464971 () Bool)

(assert (=> b!5227395 (= e!3253343 (and tp!1464973 tp!1464971))))

(declare-fun b!5227396 () Bool)

(declare-fun tp!1464970 () Bool)

(assert (=> b!5227396 (= e!3253343 tp!1464970)))

(declare-fun b!5227394 () Bool)

(assert (=> b!5227394 (= e!3253343 tp_is_empty!38885)))

(declare-fun b!5227397 () Bool)

(declare-fun tp!1464972 () Bool)

(declare-fun tp!1464969 () Bool)

(assert (=> b!5227397 (= e!3253343 (and tp!1464972 tp!1464969))))

(assert (= (and b!5226475 (is-ElementMatch!14816 (reg!15145 (regTwo!30144 r!7292)))) b!5227394))

(assert (= (and b!5226475 (is-Concat!23661 (reg!15145 (regTwo!30144 r!7292)))) b!5227395))

(assert (= (and b!5226475 (is-Star!14816 (reg!15145 (regTwo!30144 r!7292)))) b!5227396))

(assert (= (and b!5226475 (is-Union!14816 (reg!15145 (regTwo!30144 r!7292)))) b!5227397))

(declare-fun e!3253344 () Bool)

(assert (=> b!5226440 (= tp!1464830 e!3253344)))

(declare-fun b!5227399 () Bool)

(declare-fun tp!1464978 () Bool)

(declare-fun tp!1464976 () Bool)

(assert (=> b!5227399 (= e!3253344 (and tp!1464978 tp!1464976))))

(declare-fun b!5227400 () Bool)

(declare-fun tp!1464975 () Bool)

(assert (=> b!5227400 (= e!3253344 tp!1464975)))

(declare-fun b!5227398 () Bool)

(assert (=> b!5227398 (= e!3253344 tp_is_empty!38885)))

(declare-fun b!5227401 () Bool)

(declare-fun tp!1464977 () Bool)

(declare-fun tp!1464974 () Bool)

(assert (=> b!5227401 (= e!3253344 (and tp!1464977 tp!1464974))))

(assert (= (and b!5226440 (is-ElementMatch!14816 (regOne!30145 (regTwo!30145 r!7292)))) b!5227398))

(assert (= (and b!5226440 (is-Concat!23661 (regOne!30145 (regTwo!30145 r!7292)))) b!5227399))

(assert (= (and b!5226440 (is-Star!14816 (regOne!30145 (regTwo!30145 r!7292)))) b!5227400))

(assert (= (and b!5226440 (is-Union!14816 (regOne!30145 (regTwo!30145 r!7292)))) b!5227401))

(declare-fun e!3253345 () Bool)

(assert (=> b!5226440 (= tp!1464827 e!3253345)))

(declare-fun b!5227403 () Bool)

(declare-fun tp!1464983 () Bool)

(declare-fun tp!1464981 () Bool)

(assert (=> b!5227403 (= e!3253345 (and tp!1464983 tp!1464981))))

(declare-fun b!5227404 () Bool)

(declare-fun tp!1464980 () Bool)

(assert (=> b!5227404 (= e!3253345 tp!1464980)))

(declare-fun b!5227402 () Bool)

(assert (=> b!5227402 (= e!3253345 tp_is_empty!38885)))

(declare-fun b!5227405 () Bool)

(declare-fun tp!1464982 () Bool)

(declare-fun tp!1464979 () Bool)

(assert (=> b!5227405 (= e!3253345 (and tp!1464982 tp!1464979))))

(assert (= (and b!5226440 (is-ElementMatch!14816 (regTwo!30145 (regTwo!30145 r!7292)))) b!5227402))

(assert (= (and b!5226440 (is-Concat!23661 (regTwo!30145 (regTwo!30145 r!7292)))) b!5227403))

(assert (= (and b!5226440 (is-Star!14816 (regTwo!30145 (regTwo!30145 r!7292)))) b!5227404))

(assert (= (and b!5226440 (is-Union!14816 (regTwo!30145 (regTwo!30145 r!7292)))) b!5227405))

(declare-fun e!3253346 () Bool)

(assert (=> b!5226438 (= tp!1464831 e!3253346)))

(declare-fun b!5227407 () Bool)

(declare-fun tp!1464988 () Bool)

(declare-fun tp!1464986 () Bool)

(assert (=> b!5227407 (= e!3253346 (and tp!1464988 tp!1464986))))

(declare-fun b!5227408 () Bool)

(declare-fun tp!1464985 () Bool)

(assert (=> b!5227408 (= e!3253346 tp!1464985)))

(declare-fun b!5227406 () Bool)

(assert (=> b!5227406 (= e!3253346 tp_is_empty!38885)))

(declare-fun b!5227409 () Bool)

(declare-fun tp!1464987 () Bool)

(declare-fun tp!1464984 () Bool)

(assert (=> b!5227409 (= e!3253346 (and tp!1464987 tp!1464984))))

(assert (= (and b!5226438 (is-ElementMatch!14816 (regOne!30144 (regTwo!30145 r!7292)))) b!5227406))

(assert (= (and b!5226438 (is-Concat!23661 (regOne!30144 (regTwo!30145 r!7292)))) b!5227407))

(assert (= (and b!5226438 (is-Star!14816 (regOne!30144 (regTwo!30145 r!7292)))) b!5227408))

(assert (= (and b!5226438 (is-Union!14816 (regOne!30144 (regTwo!30145 r!7292)))) b!5227409))

(declare-fun e!3253347 () Bool)

(assert (=> b!5226438 (= tp!1464829 e!3253347)))

(declare-fun b!5227411 () Bool)

(declare-fun tp!1464993 () Bool)

(declare-fun tp!1464991 () Bool)

(assert (=> b!5227411 (= e!3253347 (and tp!1464993 tp!1464991))))

(declare-fun b!5227412 () Bool)

(declare-fun tp!1464990 () Bool)

(assert (=> b!5227412 (= e!3253347 tp!1464990)))

(declare-fun b!5227410 () Bool)

(assert (=> b!5227410 (= e!3253347 tp_is_empty!38885)))

(declare-fun b!5227413 () Bool)

(declare-fun tp!1464992 () Bool)

(declare-fun tp!1464989 () Bool)

(assert (=> b!5227413 (= e!3253347 (and tp!1464992 tp!1464989))))

(assert (= (and b!5226438 (is-ElementMatch!14816 (regTwo!30144 (regTwo!30145 r!7292)))) b!5227410))

(assert (= (and b!5226438 (is-Concat!23661 (regTwo!30144 (regTwo!30145 r!7292)))) b!5227411))

(assert (= (and b!5226438 (is-Star!14816 (regTwo!30144 (regTwo!30145 r!7292)))) b!5227412))

(assert (= (and b!5226438 (is-Union!14816 (regTwo!30144 (regTwo!30145 r!7292)))) b!5227413))

(declare-fun e!3253348 () Bool)

(assert (=> b!5226439 (= tp!1464828 e!3253348)))

(declare-fun b!5227415 () Bool)

(declare-fun tp!1464998 () Bool)

(declare-fun tp!1464996 () Bool)

(assert (=> b!5227415 (= e!3253348 (and tp!1464998 tp!1464996))))

(declare-fun b!5227416 () Bool)

(declare-fun tp!1464995 () Bool)

(assert (=> b!5227416 (= e!3253348 tp!1464995)))

(declare-fun b!5227414 () Bool)

(assert (=> b!5227414 (= e!3253348 tp_is_empty!38885)))

(declare-fun b!5227417 () Bool)

(declare-fun tp!1464997 () Bool)

(declare-fun tp!1464994 () Bool)

(assert (=> b!5227417 (= e!3253348 (and tp!1464997 tp!1464994))))

(assert (= (and b!5226439 (is-ElementMatch!14816 (reg!15145 (regTwo!30145 r!7292)))) b!5227414))

(assert (= (and b!5226439 (is-Concat!23661 (reg!15145 (regTwo!30145 r!7292)))) b!5227415))

(assert (= (and b!5226439 (is-Star!14816 (reg!15145 (regTwo!30145 r!7292)))) b!5227416))

(assert (= (and b!5226439 (is-Union!14816 (reg!15145 (regTwo!30145 r!7292)))) b!5227417))

(declare-fun e!3253349 () Bool)

(assert (=> b!5226458 (= tp!1464849 e!3253349)))

(declare-fun b!5227419 () Bool)

(declare-fun tp!1465003 () Bool)

(declare-fun tp!1465001 () Bool)

(assert (=> b!5227419 (= e!3253349 (and tp!1465003 tp!1465001))))

(declare-fun b!5227420 () Bool)

(declare-fun tp!1465000 () Bool)

(assert (=> b!5227420 (= e!3253349 tp!1465000)))

(declare-fun b!5227418 () Bool)

(assert (=> b!5227418 (= e!3253349 tp_is_empty!38885)))

(declare-fun b!5227421 () Bool)

(declare-fun tp!1465002 () Bool)

(declare-fun tp!1464999 () Bool)

(assert (=> b!5227421 (= e!3253349 (and tp!1465002 tp!1464999))))

(assert (= (and b!5226458 (is-ElementMatch!14816 (h!67071 (exprs!4700 setElem!33262)))) b!5227418))

(assert (= (and b!5226458 (is-Concat!23661 (h!67071 (exprs!4700 setElem!33262)))) b!5227419))

(assert (= (and b!5226458 (is-Star!14816 (h!67071 (exprs!4700 setElem!33262)))) b!5227420))

(assert (= (and b!5226458 (is-Union!14816 (h!67071 (exprs!4700 setElem!33262)))) b!5227421))

(declare-fun b!5227422 () Bool)

(declare-fun e!3253350 () Bool)

(declare-fun tp!1465004 () Bool)

(declare-fun tp!1465005 () Bool)

(assert (=> b!5227422 (= e!3253350 (and tp!1465004 tp!1465005))))

(assert (=> b!5226458 (= tp!1464850 e!3253350)))

(assert (= (and b!5226458 (is-Cons!60623 (t!373922 (exprs!4700 setElem!33262)))) b!5227422))

(declare-fun e!3253351 () Bool)

(assert (=> b!5226472 (= tp!1464863 e!3253351)))

(declare-fun b!5227424 () Bool)

(declare-fun tp!1465010 () Bool)

(declare-fun tp!1465008 () Bool)

(assert (=> b!5227424 (= e!3253351 (and tp!1465010 tp!1465008))))

(declare-fun b!5227425 () Bool)

(declare-fun tp!1465007 () Bool)

(assert (=> b!5227425 (= e!3253351 tp!1465007)))

(declare-fun b!5227423 () Bool)

(assert (=> b!5227423 (= e!3253351 tp_is_empty!38885)))

(declare-fun b!5227426 () Bool)

(declare-fun tp!1465009 () Bool)

(declare-fun tp!1465006 () Bool)

(assert (=> b!5227426 (= e!3253351 (and tp!1465009 tp!1465006))))

(assert (= (and b!5226472 (is-ElementMatch!14816 (regOne!30145 (regOne!30144 r!7292)))) b!5227423))

(assert (= (and b!5226472 (is-Concat!23661 (regOne!30145 (regOne!30144 r!7292)))) b!5227424))

(assert (= (and b!5226472 (is-Star!14816 (regOne!30145 (regOne!30144 r!7292)))) b!5227425))

(assert (= (and b!5226472 (is-Union!14816 (regOne!30145 (regOne!30144 r!7292)))) b!5227426))

(declare-fun e!3253352 () Bool)

(assert (=> b!5226472 (= tp!1464860 e!3253352)))

(declare-fun b!5227428 () Bool)

(declare-fun tp!1465015 () Bool)

(declare-fun tp!1465013 () Bool)

(assert (=> b!5227428 (= e!3253352 (and tp!1465015 tp!1465013))))

(declare-fun b!5227429 () Bool)

(declare-fun tp!1465012 () Bool)

(assert (=> b!5227429 (= e!3253352 tp!1465012)))

(declare-fun b!5227427 () Bool)

(assert (=> b!5227427 (= e!3253352 tp_is_empty!38885)))

(declare-fun b!5227430 () Bool)

(declare-fun tp!1465014 () Bool)

(declare-fun tp!1465011 () Bool)

(assert (=> b!5227430 (= e!3253352 (and tp!1465014 tp!1465011))))

(assert (= (and b!5226472 (is-ElementMatch!14816 (regTwo!30145 (regOne!30144 r!7292)))) b!5227427))

(assert (= (and b!5226472 (is-Concat!23661 (regTwo!30145 (regOne!30144 r!7292)))) b!5227428))

(assert (= (and b!5226472 (is-Star!14816 (regTwo!30145 (regOne!30144 r!7292)))) b!5227429))

(assert (= (and b!5226472 (is-Union!14816 (regTwo!30145 (regOne!30144 r!7292)))) b!5227430))

(declare-fun e!3253353 () Bool)

(assert (=> b!5226452 (= tp!1464841 e!3253353)))

(declare-fun b!5227432 () Bool)

(declare-fun tp!1465020 () Bool)

(declare-fun tp!1465018 () Bool)

(assert (=> b!5227432 (= e!3253353 (and tp!1465020 tp!1465018))))

(declare-fun b!5227433 () Bool)

(declare-fun tp!1465017 () Bool)

(assert (=> b!5227433 (= e!3253353 tp!1465017)))

(declare-fun b!5227431 () Bool)

(assert (=> b!5227431 (= e!3253353 tp_is_empty!38885)))

(declare-fun b!5227434 () Bool)

(declare-fun tp!1465019 () Bool)

(declare-fun tp!1465016 () Bool)

(assert (=> b!5227434 (= e!3253353 (and tp!1465019 tp!1465016))))

(assert (= (and b!5226452 (is-ElementMatch!14816 (regOne!30145 (reg!15145 r!7292)))) b!5227431))

(assert (= (and b!5226452 (is-Concat!23661 (regOne!30145 (reg!15145 r!7292)))) b!5227432))

(assert (= (and b!5226452 (is-Star!14816 (regOne!30145 (reg!15145 r!7292)))) b!5227433))

(assert (= (and b!5226452 (is-Union!14816 (regOne!30145 (reg!15145 r!7292)))) b!5227434))

(declare-fun e!3253354 () Bool)

(assert (=> b!5226452 (= tp!1464838 e!3253354)))

(declare-fun b!5227436 () Bool)

(declare-fun tp!1465025 () Bool)

(declare-fun tp!1465023 () Bool)

(assert (=> b!5227436 (= e!3253354 (and tp!1465025 tp!1465023))))

(declare-fun b!5227437 () Bool)

(declare-fun tp!1465022 () Bool)

(assert (=> b!5227437 (= e!3253354 tp!1465022)))

(declare-fun b!5227435 () Bool)

(assert (=> b!5227435 (= e!3253354 tp_is_empty!38885)))

(declare-fun b!5227438 () Bool)

(declare-fun tp!1465024 () Bool)

(declare-fun tp!1465021 () Bool)

(assert (=> b!5227438 (= e!3253354 (and tp!1465024 tp!1465021))))

(assert (= (and b!5226452 (is-ElementMatch!14816 (regTwo!30145 (reg!15145 r!7292)))) b!5227435))

(assert (= (and b!5226452 (is-Concat!23661 (regTwo!30145 (reg!15145 r!7292)))) b!5227436))

(assert (= (and b!5226452 (is-Star!14816 (regTwo!30145 (reg!15145 r!7292)))) b!5227437))

(assert (= (and b!5226452 (is-Union!14816 (regTwo!30145 (reg!15145 r!7292)))) b!5227438))

(declare-fun e!3253355 () Bool)

(assert (=> b!5226450 (= tp!1464842 e!3253355)))

(declare-fun b!5227440 () Bool)

(declare-fun tp!1465030 () Bool)

(declare-fun tp!1465028 () Bool)

(assert (=> b!5227440 (= e!3253355 (and tp!1465030 tp!1465028))))

(declare-fun b!5227441 () Bool)

(declare-fun tp!1465027 () Bool)

(assert (=> b!5227441 (= e!3253355 tp!1465027)))

(declare-fun b!5227439 () Bool)

(assert (=> b!5227439 (= e!3253355 tp_is_empty!38885)))

(declare-fun b!5227442 () Bool)

(declare-fun tp!1465029 () Bool)

(declare-fun tp!1465026 () Bool)

(assert (=> b!5227442 (= e!3253355 (and tp!1465029 tp!1465026))))

(assert (= (and b!5226450 (is-ElementMatch!14816 (regOne!30144 (reg!15145 r!7292)))) b!5227439))

(assert (= (and b!5226450 (is-Concat!23661 (regOne!30144 (reg!15145 r!7292)))) b!5227440))

(assert (= (and b!5226450 (is-Star!14816 (regOne!30144 (reg!15145 r!7292)))) b!5227441))

(assert (= (and b!5226450 (is-Union!14816 (regOne!30144 (reg!15145 r!7292)))) b!5227442))

(declare-fun e!3253356 () Bool)

(assert (=> b!5226450 (= tp!1464840 e!3253356)))

(declare-fun b!5227444 () Bool)

(declare-fun tp!1465035 () Bool)

(declare-fun tp!1465033 () Bool)

(assert (=> b!5227444 (= e!3253356 (and tp!1465035 tp!1465033))))

(declare-fun b!5227445 () Bool)

(declare-fun tp!1465032 () Bool)

(assert (=> b!5227445 (= e!3253356 tp!1465032)))

(declare-fun b!5227443 () Bool)

(assert (=> b!5227443 (= e!3253356 tp_is_empty!38885)))

(declare-fun b!5227446 () Bool)

(declare-fun tp!1465034 () Bool)

(declare-fun tp!1465031 () Bool)

(assert (=> b!5227446 (= e!3253356 (and tp!1465034 tp!1465031))))

(assert (= (and b!5226450 (is-ElementMatch!14816 (regTwo!30144 (reg!15145 r!7292)))) b!5227443))

(assert (= (and b!5226450 (is-Concat!23661 (regTwo!30144 (reg!15145 r!7292)))) b!5227444))

(assert (= (and b!5226450 (is-Star!14816 (regTwo!30144 (reg!15145 r!7292)))) b!5227445))

(assert (= (and b!5226450 (is-Union!14816 (regTwo!30144 (reg!15145 r!7292)))) b!5227446))

(declare-fun e!3253357 () Bool)

(assert (=> b!5226471 (= tp!1464861 e!3253357)))

(declare-fun b!5227448 () Bool)

(declare-fun tp!1465040 () Bool)

(declare-fun tp!1465038 () Bool)

(assert (=> b!5227448 (= e!3253357 (and tp!1465040 tp!1465038))))

(declare-fun b!5227449 () Bool)

(declare-fun tp!1465037 () Bool)

(assert (=> b!5227449 (= e!3253357 tp!1465037)))

(declare-fun b!5227447 () Bool)

(assert (=> b!5227447 (= e!3253357 tp_is_empty!38885)))

(declare-fun b!5227450 () Bool)

(declare-fun tp!1465039 () Bool)

(declare-fun tp!1465036 () Bool)

(assert (=> b!5227450 (= e!3253357 (and tp!1465039 tp!1465036))))

(assert (= (and b!5226471 (is-ElementMatch!14816 (reg!15145 (regOne!30144 r!7292)))) b!5227447))

(assert (= (and b!5226471 (is-Concat!23661 (reg!15145 (regOne!30144 r!7292)))) b!5227448))

(assert (= (and b!5226471 (is-Star!14816 (reg!15145 (regOne!30144 r!7292)))) b!5227449))

(assert (= (and b!5226471 (is-Union!14816 (reg!15145 (regOne!30144 r!7292)))) b!5227450))

(declare-fun e!3253358 () Bool)

(assert (=> b!5226451 (= tp!1464839 e!3253358)))

(declare-fun b!5227452 () Bool)

(declare-fun tp!1465045 () Bool)

(declare-fun tp!1465043 () Bool)

(assert (=> b!5227452 (= e!3253358 (and tp!1465045 tp!1465043))))

(declare-fun b!5227453 () Bool)

(declare-fun tp!1465042 () Bool)

(assert (=> b!5227453 (= e!3253358 tp!1465042)))

(declare-fun b!5227451 () Bool)

(assert (=> b!5227451 (= e!3253358 tp_is_empty!38885)))

(declare-fun b!5227454 () Bool)

(declare-fun tp!1465044 () Bool)

(declare-fun tp!1465041 () Bool)

(assert (=> b!5227454 (= e!3253358 (and tp!1465044 tp!1465041))))

(assert (= (and b!5226451 (is-ElementMatch!14816 (reg!15145 (reg!15145 r!7292)))) b!5227451))

(assert (= (and b!5226451 (is-Concat!23661 (reg!15145 (reg!15145 r!7292)))) b!5227452))

(assert (= (and b!5226451 (is-Star!14816 (reg!15145 (reg!15145 r!7292)))) b!5227453))

(assert (= (and b!5226451 (is-Union!14816 (reg!15145 (reg!15145 r!7292)))) b!5227454))

(declare-fun e!3253359 () Bool)

(assert (=> b!5226436 (= tp!1464825 e!3253359)))

(declare-fun b!5227456 () Bool)

(declare-fun tp!1465050 () Bool)

(declare-fun tp!1465048 () Bool)

(assert (=> b!5227456 (= e!3253359 (and tp!1465050 tp!1465048))))

(declare-fun b!5227457 () Bool)

(declare-fun tp!1465047 () Bool)

(assert (=> b!5227457 (= e!3253359 tp!1465047)))

(declare-fun b!5227455 () Bool)

(assert (=> b!5227455 (= e!3253359 tp_is_empty!38885)))

(declare-fun b!5227458 () Bool)

(declare-fun tp!1465049 () Bool)

(declare-fun tp!1465046 () Bool)

(assert (=> b!5227458 (= e!3253359 (and tp!1465049 tp!1465046))))

(assert (= (and b!5226436 (is-ElementMatch!14816 (regOne!30145 (regOne!30145 r!7292)))) b!5227455))

(assert (= (and b!5226436 (is-Concat!23661 (regOne!30145 (regOne!30145 r!7292)))) b!5227456))

(assert (= (and b!5226436 (is-Star!14816 (regOne!30145 (regOne!30145 r!7292)))) b!5227457))

(assert (= (and b!5226436 (is-Union!14816 (regOne!30145 (regOne!30145 r!7292)))) b!5227458))

(declare-fun e!3253360 () Bool)

(assert (=> b!5226436 (= tp!1464822 e!3253360)))

(declare-fun b!5227460 () Bool)

(declare-fun tp!1465055 () Bool)

(declare-fun tp!1465053 () Bool)

(assert (=> b!5227460 (= e!3253360 (and tp!1465055 tp!1465053))))

(declare-fun b!5227461 () Bool)

(declare-fun tp!1465052 () Bool)

(assert (=> b!5227461 (= e!3253360 tp!1465052)))

(declare-fun b!5227459 () Bool)

(assert (=> b!5227459 (= e!3253360 tp_is_empty!38885)))

(declare-fun b!5227462 () Bool)

(declare-fun tp!1465054 () Bool)

(declare-fun tp!1465051 () Bool)

(assert (=> b!5227462 (= e!3253360 (and tp!1465054 tp!1465051))))

(assert (= (and b!5226436 (is-ElementMatch!14816 (regTwo!30145 (regOne!30145 r!7292)))) b!5227459))

(assert (= (and b!5226436 (is-Concat!23661 (regTwo!30145 (regOne!30145 r!7292)))) b!5227460))

(assert (= (and b!5226436 (is-Star!14816 (regTwo!30145 (regOne!30145 r!7292)))) b!5227461))

(assert (= (and b!5226436 (is-Union!14816 (regTwo!30145 (regOne!30145 r!7292)))) b!5227462))

(declare-fun e!3253361 () Bool)

(assert (=> b!5226457 (= tp!1464847 e!3253361)))

(declare-fun b!5227464 () Bool)

(declare-fun tp!1465060 () Bool)

(declare-fun tp!1465058 () Bool)

(assert (=> b!5227464 (= e!3253361 (and tp!1465060 tp!1465058))))

(declare-fun b!5227465 () Bool)

(declare-fun tp!1465057 () Bool)

(assert (=> b!5227465 (= e!3253361 tp!1465057)))

(declare-fun b!5227463 () Bool)

(assert (=> b!5227463 (= e!3253361 tp_is_empty!38885)))

(declare-fun b!5227466 () Bool)

(declare-fun tp!1465059 () Bool)

(declare-fun tp!1465056 () Bool)

(assert (=> b!5227466 (= e!3253361 (and tp!1465059 tp!1465056))))

(assert (= (and b!5226457 (is-ElementMatch!14816 (h!67071 (exprs!4700 (h!67072 zl!343))))) b!5227463))

(assert (= (and b!5226457 (is-Concat!23661 (h!67071 (exprs!4700 (h!67072 zl!343))))) b!5227464))

(assert (= (and b!5226457 (is-Star!14816 (h!67071 (exprs!4700 (h!67072 zl!343))))) b!5227465))

(assert (= (and b!5226457 (is-Union!14816 (h!67071 (exprs!4700 (h!67072 zl!343))))) b!5227466))

(declare-fun b!5227467 () Bool)

(declare-fun e!3253362 () Bool)

(declare-fun tp!1465061 () Bool)

(declare-fun tp!1465062 () Bool)

(assert (=> b!5227467 (= e!3253362 (and tp!1465061 tp!1465062))))

(assert (=> b!5226457 (= tp!1464848 e!3253362)))

(assert (= (and b!5226457 (is-Cons!60623 (t!373922 (exprs!4700 (h!67072 zl!343))))) b!5227467))

(declare-fun e!3253363 () Bool)

(assert (=> b!5226470 (= tp!1464864 e!3253363)))

(declare-fun b!5227469 () Bool)

(declare-fun tp!1465067 () Bool)

(declare-fun tp!1465065 () Bool)

(assert (=> b!5227469 (= e!3253363 (and tp!1465067 tp!1465065))))

(declare-fun b!5227470 () Bool)

(declare-fun tp!1465064 () Bool)

(assert (=> b!5227470 (= e!3253363 tp!1465064)))

(declare-fun b!5227468 () Bool)

(assert (=> b!5227468 (= e!3253363 tp_is_empty!38885)))

(declare-fun b!5227471 () Bool)

(declare-fun tp!1465066 () Bool)

(declare-fun tp!1465063 () Bool)

(assert (=> b!5227471 (= e!3253363 (and tp!1465066 tp!1465063))))

(assert (= (and b!5226470 (is-ElementMatch!14816 (regOne!30144 (regOne!30144 r!7292)))) b!5227468))

(assert (= (and b!5226470 (is-Concat!23661 (regOne!30144 (regOne!30144 r!7292)))) b!5227469))

(assert (= (and b!5226470 (is-Star!14816 (regOne!30144 (regOne!30144 r!7292)))) b!5227470))

(assert (= (and b!5226470 (is-Union!14816 (regOne!30144 (regOne!30144 r!7292)))) b!5227471))

(declare-fun e!3253364 () Bool)

(assert (=> b!5226470 (= tp!1464862 e!3253364)))

(declare-fun b!5227473 () Bool)

(declare-fun tp!1465072 () Bool)

(declare-fun tp!1465070 () Bool)

(assert (=> b!5227473 (= e!3253364 (and tp!1465072 tp!1465070))))

(declare-fun b!5227474 () Bool)

(declare-fun tp!1465069 () Bool)

(assert (=> b!5227474 (= e!3253364 tp!1465069)))

(declare-fun b!5227472 () Bool)

(assert (=> b!5227472 (= e!3253364 tp_is_empty!38885)))

(declare-fun b!5227475 () Bool)

(declare-fun tp!1465071 () Bool)

(declare-fun tp!1465068 () Bool)

(assert (=> b!5227475 (= e!3253364 (and tp!1465071 tp!1465068))))

(assert (= (and b!5226470 (is-ElementMatch!14816 (regTwo!30144 (regOne!30144 r!7292)))) b!5227472))

(assert (= (and b!5226470 (is-Concat!23661 (regTwo!30144 (regOne!30144 r!7292)))) b!5227473))

(assert (= (and b!5226470 (is-Star!14816 (regTwo!30144 (regOne!30144 r!7292)))) b!5227474))

(assert (= (and b!5226470 (is-Union!14816 (regTwo!30144 (regOne!30144 r!7292)))) b!5227475))

(declare-fun e!3253365 () Bool)

(assert (=> b!5226435 (= tp!1464823 e!3253365)))

(declare-fun b!5227477 () Bool)

(declare-fun tp!1465077 () Bool)

(declare-fun tp!1465075 () Bool)

(assert (=> b!5227477 (= e!3253365 (and tp!1465077 tp!1465075))))

(declare-fun b!5227478 () Bool)

(declare-fun tp!1465074 () Bool)

(assert (=> b!5227478 (= e!3253365 tp!1465074)))

(declare-fun b!5227476 () Bool)

(assert (=> b!5227476 (= e!3253365 tp_is_empty!38885)))

(declare-fun b!5227479 () Bool)

(declare-fun tp!1465076 () Bool)

(declare-fun tp!1465073 () Bool)

(assert (=> b!5227479 (= e!3253365 (and tp!1465076 tp!1465073))))

(assert (= (and b!5226435 (is-ElementMatch!14816 (reg!15145 (regOne!30145 r!7292)))) b!5227476))

(assert (= (and b!5226435 (is-Concat!23661 (reg!15145 (regOne!30145 r!7292)))) b!5227477))

(assert (= (and b!5226435 (is-Star!14816 (reg!15145 (regOne!30145 r!7292)))) b!5227478))

(assert (= (and b!5226435 (is-Union!14816 (reg!15145 (regOne!30145 r!7292)))) b!5227479))

(declare-fun b!5227480 () Bool)

(declare-fun e!3253366 () Bool)

(declare-fun tp!1465078 () Bool)

(declare-fun tp!1465079 () Bool)

(assert (=> b!5227480 (= e!3253366 (and tp!1465078 tp!1465079))))

(assert (=> b!5226463 (= tp!1464856 e!3253366)))

(assert (= (and b!5226463 (is-Cons!60623 (exprs!4700 setElem!33268))) b!5227480))

(declare-fun e!3253367 () Bool)

(assert (=> b!5226434 (= tp!1464826 e!3253367)))

(declare-fun b!5227482 () Bool)

(declare-fun tp!1465084 () Bool)

(declare-fun tp!1465082 () Bool)

(assert (=> b!5227482 (= e!3253367 (and tp!1465084 tp!1465082))))

(declare-fun b!5227483 () Bool)

(declare-fun tp!1465081 () Bool)

(assert (=> b!5227483 (= e!3253367 tp!1465081)))

(declare-fun b!5227481 () Bool)

(assert (=> b!5227481 (= e!3253367 tp_is_empty!38885)))

(declare-fun b!5227484 () Bool)

(declare-fun tp!1465083 () Bool)

(declare-fun tp!1465080 () Bool)

(assert (=> b!5227484 (= e!3253367 (and tp!1465083 tp!1465080))))

(assert (= (and b!5226434 (is-ElementMatch!14816 (regOne!30144 (regOne!30145 r!7292)))) b!5227481))

(assert (= (and b!5226434 (is-Concat!23661 (regOne!30144 (regOne!30145 r!7292)))) b!5227482))

(assert (= (and b!5226434 (is-Star!14816 (regOne!30144 (regOne!30145 r!7292)))) b!5227483))

(assert (= (and b!5226434 (is-Union!14816 (regOne!30144 (regOne!30145 r!7292)))) b!5227484))

(declare-fun e!3253368 () Bool)

(assert (=> b!5226434 (= tp!1464824 e!3253368)))

(declare-fun b!5227486 () Bool)

(declare-fun tp!1465089 () Bool)

(declare-fun tp!1465087 () Bool)

(assert (=> b!5227486 (= e!3253368 (and tp!1465089 tp!1465087))))

(declare-fun b!5227487 () Bool)

(declare-fun tp!1465086 () Bool)

(assert (=> b!5227487 (= e!3253368 tp!1465086)))

(declare-fun b!5227485 () Bool)

(assert (=> b!5227485 (= e!3253368 tp_is_empty!38885)))

(declare-fun b!5227488 () Bool)

(declare-fun tp!1465088 () Bool)

(declare-fun tp!1465085 () Bool)

(assert (=> b!5227488 (= e!3253368 (and tp!1465088 tp!1465085))))

(assert (= (and b!5226434 (is-ElementMatch!14816 (regTwo!30144 (regOne!30145 r!7292)))) b!5227485))

(assert (= (and b!5226434 (is-Concat!23661 (regTwo!30144 (regOne!30145 r!7292)))) b!5227486))

(assert (= (and b!5226434 (is-Star!14816 (regTwo!30144 (regOne!30145 r!7292)))) b!5227487))

(assert (= (and b!5226434 (is-Union!14816 (regTwo!30144 (regOne!30145 r!7292)))) b!5227488))

(declare-fun condSetEmpty!33277 () Bool)

(assert (=> setNonEmpty!33268 (= condSetEmpty!33277 (= setRest!33268 (as set.empty (Set Context!8400))))))

(declare-fun setRes!33277 () Bool)

(assert (=> setNonEmpty!33268 (= tp!1464855 setRes!33277)))

(declare-fun setIsEmpty!33277 () Bool)

(assert (=> setIsEmpty!33277 setRes!33277))

(declare-fun setNonEmpty!33277 () Bool)

(declare-fun setElem!33277 () Context!8400)

(declare-fun tp!1465090 () Bool)

(declare-fun e!3253369 () Bool)

(assert (=> setNonEmpty!33277 (= setRes!33277 (and tp!1465090 (inv!80288 setElem!33277) e!3253369))))

(declare-fun setRest!33277 () (Set Context!8400))

(assert (=> setNonEmpty!33277 (= setRest!33268 (set.union (set.insert setElem!33277 (as set.empty (Set Context!8400))) setRest!33277))))

(declare-fun b!5227489 () Bool)

(declare-fun tp!1465091 () Bool)

(assert (=> b!5227489 (= e!3253369 tp!1465091)))

(assert (= (and setNonEmpty!33268 condSetEmpty!33277) setIsEmpty!33277))

(assert (= (and setNonEmpty!33268 (not condSetEmpty!33277)) setNonEmpty!33277))

(assert (= setNonEmpty!33277 b!5227489))

(declare-fun m!6273936 () Bool)

(assert (=> setNonEmpty!33277 m!6273936))

(declare-fun b_lambda!202113 () Bool)

(assert (= b_lambda!202099 (or d!1684930 b_lambda!202113)))

(declare-fun bs!1213707 () Bool)

(declare-fun d!1685320 () Bool)

(assert (= bs!1213707 (and d!1685320 d!1684930)))

(assert (=> bs!1213707 (= (dynLambda!23958 lambda!262425 (h!67071 (exprs!4700 setElem!33262))) (validRegex!6552 (h!67071 (exprs!4700 setElem!33262))))))

(declare-fun m!6273938 () Bool)

(assert (=> bs!1213707 m!6273938))

(assert (=> b!5226982 d!1685320))

(declare-fun b_lambda!202115 () Bool)

(assert (= b_lambda!202097 (or b!5225936 b_lambda!202115)))

(assert (=> d!1685074 d!1684960))

(declare-fun b_lambda!202117 () Bool)

(assert (= b_lambda!202111 (or d!1684884 b_lambda!202117)))

(declare-fun bs!1213708 () Bool)

(declare-fun d!1685322 () Bool)

(assert (= bs!1213708 (and d!1685322 d!1684884)))

(assert (=> bs!1213708 (= (dynLambda!23958 lambda!262406 (h!67071 lt!2144409)) (validRegex!6552 (h!67071 lt!2144409)))))

(declare-fun m!6273940 () Bool)

(assert (=> bs!1213708 m!6273940))

(assert (=> b!5227326 d!1685322))

(declare-fun b_lambda!202119 () Bool)

(assert (= b_lambda!202107 (or d!1684882 b_lambda!202119)))

(declare-fun bs!1213709 () Bool)

(declare-fun d!1685324 () Bool)

(assert (= bs!1213709 (and d!1685324 d!1684882)))

(assert (=> bs!1213709 (= (dynLambda!23958 lambda!262403 (h!67071 (unfocusZipperList!258 zl!343))) (validRegex!6552 (h!67071 (unfocusZipperList!258 zl!343))))))

(declare-fun m!6273942 () Bool)

(assert (=> bs!1213709 m!6273942))

(assert (=> b!5227157 d!1685324))

(declare-fun b_lambda!202121 () Bool)

(assert (= b_lambda!202101 (or b!5225936 b_lambda!202121)))

(assert (=> d!1685148 d!1684956))

(declare-fun b_lambda!202123 () Bool)

(assert (= b_lambda!202105 (or b!5225936 b_lambda!202123)))

(assert (=> d!1685174 d!1684958))

(declare-fun b_lambda!202125 () Bool)

(assert (= b_lambda!202103 (or d!1684900 b_lambda!202125)))

(declare-fun bs!1213710 () Bool)

(declare-fun d!1685326 () Bool)

(assert (= bs!1213710 (and d!1685326 d!1684900)))

(assert (=> bs!1213710 (= (dynLambda!23958 lambda!262415 (h!67071 (exprs!4700 (h!67072 zl!343)))) (validRegex!6552 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(declare-fun m!6273944 () Bool)

(assert (=> bs!1213710 m!6273944))

(assert (=> b!5227044 d!1685326))

(declare-fun b_lambda!202127 () Bool)

(assert (= b_lambda!202109 (or d!1684862 b_lambda!202127)))

(declare-fun bs!1213711 () Bool)

(declare-fun d!1685328 () Bool)

(assert (= bs!1213711 (and d!1685328 d!1684862)))

(assert (=> bs!1213711 (= (dynLambda!23958 lambda!262400 (h!67071 (exprs!4700 (h!67072 zl!343)))) (validRegex!6552 (h!67071 (exprs!4700 (h!67072 zl!343)))))))

(assert (=> bs!1213711 m!6273944))

(assert (=> b!5227270 d!1685328))

(push 1)

(assert (not b!5227361))

(assert (not b!5226965))

(assert (not b!5227429))

(assert (not d!1685086))

(assert (not b!5227325))

(assert (not bm!369393))

(assert (not b!5227386))

(assert (not b!5227132))

(assert (not b!5227471))

(assert (not bs!1213709))

(assert (not b!5226949))

(assert (not setNonEmpty!33276))

(assert (not b!5227403))

(assert (not bm!369473))

(assert (not b!5227434))

(assert (not b!5227133))

(assert (not b!5227430))

(assert (not bm!369419))

(assert (not d!1685272))

(assert (not b!5227280))

(assert (not b!5227073))

(assert (not b!5227269))

(assert (not bm!369394))

(assert (not d!1685316))

(assert (not b!5227065))

(assert (not b!5226989))

(assert (not bm!369415))

(assert (not bm!369487))

(assert (not b!5227378))

(assert (not b!5227156))

(assert (not bm!369441))

(assert (not d!1685246))

(assert (not bm!369386))

(assert (not d!1685312))

(assert (not b!5227470))

(assert (not d!1685170))

(assert (not b!5226992))

(assert (not bm!369374))

(assert (not d!1685190))

(assert (not b_lambda!202083))

(assert (not b!5227184))

(assert (not bm!369425))

(assert (not bm!369364))

(assert (not b!5226986))

(assert (not bm!369446))

(assert (not b!5227385))

(assert (not b!5227377))

(assert (not d!1685074))

(assert (not d!1685274))

(assert (not b!5227445))

(assert (not b!5227390))

(assert (not b!5227131))

(assert (not b!5226984))

(assert (not b!5227245))

(assert (not d!1685116))

(assert (not b!5227350))

(assert (not b!5226962))

(assert (not d!1685292))

(assert (not b!5227244))

(assert (not b!5227460))

(assert (not b!5226919))

(assert (not setNonEmpty!33277))

(assert (not bm!369409))

(assert (not b!5227271))

(assert (not b!5227233))

(assert (not d!1685178))

(assert (not b!5226966))

(assert (not b!5226958))

(assert (not b!5227389))

(assert (not bm!369402))

(assert (not b!5227327))

(assert (not b!5227432))

(assert (not bm!369401))

(assert (not b!5227135))

(assert (not b!5227122))

(assert (not b!5227465))

(assert (not b!5227467))

(assert (not d!1685298))

(assert (not d!1685068))

(assert (not b!5227222))

(assert (not b!5227030))

(assert (not b!5227087))

(assert (not bm!369372))

(assert (not d!1685174))

(assert (not bm!369398))

(assert (not bm!369445))

(assert (not d!1685284))

(assert (not b!5227234))

(assert (not b!5227272))

(assert (not b!5227381))

(assert (not b!5227127))

(assert (not b!5227488))

(assert (not b!5226983))

(assert (not b!5226995))

(assert (not b!5227401))

(assert (not b!5226987))

(assert (not d!1685080))

(assert (not d!1685228))

(assert (not d!1685098))

(assert (not b!5227160))

(assert (not b!5227483))

(assert (not b!5227056))

(assert (not b!5226977))

(assert (not bm!369433))

(assert (not bm!369485))

(assert (not bm!369439))

(assert (not b_lambda!202119))

(assert (not d!1685288))

(assert (not bm!369375))

(assert (not b!5227387))

(assert (not b!5227183))

(assert (not b!5227413))

(assert (not bs!1213707))

(assert (not b!5226948))

(assert (not d!1685230))

(assert tp_is_empty!38885)

(assert (not b!5227420))

(assert (not d!1685118))

(assert (not b!5227339))

(assert (not b_lambda!202123))

(assert (not bm!369451))

(assert (not bm!369469))

(assert (not d!1685260))

(assert (not bm!369392))

(assert (not b!5227393))

(assert (not b!5227074))

(assert (not d!1685318))

(assert (not b!5227085))

(assert (not d!1685216))

(assert (not bm!369424))

(assert (not b!5226968))

(assert (not b!5227036))

(assert (not b!5226917))

(assert (not b!5227009))

(assert (not bm!369454))

(assert (not b!5227284))

(assert (not b!5227412))

(assert (not b!5227021))

(assert (not d!1685084))

(assert (not b!5227469))

(assert (not b!5227373))

(assert (not bm!369387))

(assert (not b!5227177))

(assert (not b!5227248))

(assert (not bm!369404))

(assert (not b!5227249))

(assert (not d!1685104))

(assert (not bm!369444))

(assert (not b!5227379))

(assert (not b!5227392))

(assert (not b!5227046))

(assert (not b_lambda!202121))

(assert (not bm!369478))

(assert (not b!5226993))

(assert (not b!5227473))

(assert (not d!1685304))

(assert (not b!5226918))

(assert (not bm!369484))

(assert (not bm!369438))

(assert (not bm!369367))

(assert (not b!5227126))

(assert (not b!5227400))

(assert (not b!5227478))

(assert (not b!5227172))

(assert (not d!1685128))

(assert (not bm!369395))

(assert (not b!5227456))

(assert (not b!5226994))

(assert (not d!1685102))

(assert (not b!5227466))

(assert (not b!5227253))

(assert (not d!1685258))

(assert (not d!1685210))

(assert (not b!5227486))

(assert (not b!5227436))

(assert (not b!5227449))

(assert (not b!5226940))

(assert (not b!5227022))

(assert (not b!5227421))

(assert (not d!1685064))

(assert (not b!5227391))

(assert (not d!1685188))

(assert (not b!5227375))

(assert (not b!5227464))

(assert (not bm!369416))

(assert (not b!5227417))

(assert (not d!1685158))

(assert (not b!5227311))

(assert (not b!5227484))

(assert (not bm!369396))

(assert (not bm!369384))

(assert (not b!5227438))

(assert (not b!5226920))

(assert (not b!5227170))

(assert (not d!1685196))

(assert (not b!5227383))

(assert (not b!5227437))

(assert (not b!5227134))

(assert (not b_lambda!202127))

(assert (not d!1685194))

(assert (not b!5227200))

(assert (not bm!369381))

(assert (not b!5227093))

(assert (not bm!369481))

(assert (not b!5227409))

(assert (not d!1685198))

(assert (not d!1685168))

(assert (not b!5227426))

(assert (not b!5227259))

(assert (not b!5226905))

(assert (not b!5227257))

(assert (not b!5227013))

(assert (not b!5227138))

(assert (not d!1685282))

(assert (not b!5227382))

(assert (not bs!1213710))

(assert (not b_lambda!202125))

(assert (not d!1685062))

(assert (not bm!369426))

(assert (not bm!369450))

(assert (not bm!369377))

(assert (not b!5227461))

(assert (not b!5227182))

(assert (not bs!1213711))

(assert (not b!5226908))

(assert (not b!5227328))

(assert (not b!5227450))

(assert (not bm!369362))

(assert (not bm!369449))

(assert (not bm!369380))

(assert (not b!5227428))

(assert (not b!5227424))

(assert (not b!5227260))

(assert (not b!5227112))

(assert (not bm!369373))

(assert (not b!5227017))

(assert (not b!5227106))

(assert (not b!5227479))

(assert (not bm!369475))

(assert (not d!1685218))

(assert (not bm!369407))

(assert (not b!5227137))

(assert (not bm!369427))

(assert (not bm!369432))

(assert (not d!1685180))

(assert (not b_lambda!202115))

(assert (not b!5227446))

(assert (not b!5227419))

(assert (not b!5226959))

(assert (not b!5227422))

(assert (not b!5227475))

(assert (not bm!369405))

(assert (not bm!369464))

(assert (not bm!369435))

(assert (not b!5227407))

(assert (not b!5227425))

(assert (not b!5227408))

(assert (not b!5227048))

(assert (not b!5227416))

(assert (not bm!369421))

(assert (not b!5227474))

(assert (not b!5227083))

(assert (not bm!369413))

(assert (not b!5227458))

(assert (not b!5227489))

(assert (not d!1685186))

(assert (not b!5227482))

(assert (not b!5227457))

(assert (not b!5227224))

(assert (not b!5227374))

(assert (not setNonEmpty!33275))

(assert (not bm!369406))

(assert (not b!5227487))

(assert (not d!1685192))

(assert (not d!1685234))

(assert (not b!5227453))

(assert (not b!5227276))

(assert (not b!5226923))

(assert (not b!5227404))

(assert (not b!5227395))

(assert (not d!1685164))

(assert (not b!5227069))

(assert (not b_lambda!202079))

(assert (not d!1685300))

(assert (not b!5227190))

(assert (not bm!369479))

(assert (not b!5227477))

(assert (not d!1685200))

(assert (not bm!369399))

(assert (not b!5227441))

(assert (not d!1685148))

(assert (not b!5227397))

(assert (not d!1685270))

(assert (not b!5227444))

(assert (not b!5227285))

(assert (not b!5227012))

(assert (not b!5226990))

(assert (not b!5227411))

(assert (not d!1685082))

(assert (not bm!369383))

(assert (not bm!369400))

(assert (not b!5226913))

(assert (not b!5227045))

(assert (not bm!369472))

(assert (not b!5227258))

(assert (not b!5227275))

(assert (not b!5227053))

(assert (not bm!369418))

(assert (not b!5227159))

(assert (not b!5227179))

(assert (not b!5227064))

(assert (not b!5227462))

(assert (not b!5227415))

(assert (not b!5227147))

(assert (not b!5226961))

(assert (not b!5227084))

(assert (not b!5227007))

(assert (not b!5226933))

(assert (not bm!369412))

(assert (not b!5227405))

(assert (not d!1685130))

(assert (not b_lambda!202081))

(assert (not d!1685286))

(assert (not b!5227123))

(assert (not b!5227454))

(assert (not b!5227158))

(assert (not bm!369467))

(assert (not d!1685090))

(assert (not d!1685120))

(assert (not b!5226967))

(assert (not bs!1213708))

(assert (not b_lambda!202117))

(assert (not b!5227452))

(assert (not b!5227371))

(assert (not b!5226939))

(assert (not b!5227448))

(assert (not b!5226909))

(assert (not b!5227024))

(assert (not b!5227058))

(assert (not bm!369397))

(assert (not bm!369453))

(assert (not d!1685202))

(assert (not b!5226882))

(assert (not b_lambda!202113))

(assert (not bm!369389))

(assert (not d!1685114))

(assert (not d!1685136))

(assert (not d!1685088))

(assert (not b!5227442))

(assert (not b!5227051))

(assert (not b!5226947))

(assert (not d!1685214))

(assert (not b!5227396))

(assert (not b!5227324))

(assert (not b!5227440))

(assert (not b!5227433))

(assert (not setNonEmpty!33274))

(assert (not d!1685290))

(assert (not bm!369466))

(assert (not b!5227372))

(assert (not b!5227174))

(assert (not b!5227480))

(assert (not b!5227399))

(assert (not b!5227061))

(assert (not b!5227211))

(assert (not bm!369447))

(assert (not d!1685262))

(assert (not bm!369429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

