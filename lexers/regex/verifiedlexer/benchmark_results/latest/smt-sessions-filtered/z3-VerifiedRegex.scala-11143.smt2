; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577870 () Bool)

(assert start!577870)

(declare-fun b!5551366 () Bool)

(assert (=> b!5551366 true))

(assert (=> b!5551366 true))

(declare-fun lambda!297728 () Int)

(declare-fun lambda!297727 () Int)

(assert (=> b!5551366 (not (= lambda!297728 lambda!297727))))

(assert (=> b!5551366 true))

(assert (=> b!5551366 true))

(declare-fun b!5551361 () Bool)

(assert (=> b!5551361 true))

(declare-fun b!5551356 () Bool)

(declare-fun e!3428826 () Bool)

(declare-fun tp!1531758 () Bool)

(assert (=> b!5551356 (= e!3428826 tp!1531758)))

(declare-fun b!5551357 () Bool)

(declare-fun e!3428830 () Bool)

(declare-fun tp!1531763 () Bool)

(declare-fun tp!1531759 () Bool)

(assert (=> b!5551357 (= e!3428830 (and tp!1531763 tp!1531759))))

(declare-fun b!5551359 () Bool)

(declare-fun res!2359900 () Bool)

(declare-fun e!3428834 () Bool)

(assert (=> b!5551359 (=> res!2359900 e!3428834)))

(declare-datatypes ((C!31336 0))(
  ( (C!31337 (val!25370 Int)) )
))
(declare-datatypes ((Regex!15533 0))(
  ( (ElementMatch!15533 (c!971659 C!31336)) (Concat!24378 (regOne!31578 Regex!15533) (regTwo!31578 Regex!15533)) (EmptyExpr!15533) (Star!15533 (reg!15862 Regex!15533)) (EmptyLang!15533) (Union!15533 (regOne!31579 Regex!15533) (regTwo!31579 Regex!15533)) )
))
(declare-datatypes ((List!62898 0))(
  ( (Nil!62774) (Cons!62774 (h!69222 Regex!15533) (t!376161 List!62898)) )
))
(declare-datatypes ((Context!9834 0))(
  ( (Context!9835 (exprs!5417 List!62898)) )
))
(declare-datatypes ((List!62899 0))(
  ( (Nil!62775) (Cons!62775 (h!69223 Context!9834) (t!376162 List!62899)) )
))
(declare-fun zl!343 () List!62899)

(declare-fun isEmpty!34564 (List!62898) Bool)

(assert (=> b!5551359 (= res!2359900 (isEmpty!34564 (t!376161 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun e!3428833 () Bool)

(declare-fun tp!1531766 () Bool)

(declare-fun setRes!36919 () Bool)

(declare-fun setNonEmpty!36919 () Bool)

(declare-fun setElem!36919 () Context!9834)

(declare-fun inv!82079 (Context!9834) Bool)

(assert (=> setNonEmpty!36919 (= setRes!36919 (and tp!1531766 (inv!82079 setElem!36919) e!3428833))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9834))

(declare-fun setRest!36919 () (InoxSet Context!9834))

(assert (=> setNonEmpty!36919 (= z!1189 ((_ map or) (store ((as const (Array Context!9834 Bool)) false) setElem!36919 true) setRest!36919))))

(declare-fun b!5551360 () Bool)

(declare-fun res!2359896 () Bool)

(declare-fun e!3428828 () Bool)

(assert (=> b!5551360 (=> (not res!2359896) (not e!3428828))))

(declare-fun toList!9317 ((InoxSet Context!9834)) List!62899)

(assert (=> b!5551360 (= res!2359896 (= (toList!9317 z!1189) zl!343))))

(declare-fun setIsEmpty!36919 () Bool)

(assert (=> setIsEmpty!36919 setRes!36919))

(declare-fun e!3428829 () Bool)

(assert (=> b!5551361 (= e!3428834 e!3428829)))

(declare-fun res!2359898 () Bool)

(assert (=> b!5551361 (=> res!2359898 e!3428829)))

(declare-fun nullable!5565 (Regex!15533) Bool)

(assert (=> b!5551361 (= res!2359898 (not (nullable!5565 (h!69222 (exprs!5417 (h!69223 zl!343))))))))

(declare-datatypes ((List!62900 0))(
  ( (Nil!62776) (Cons!62776 (h!69224 C!31336) (t!376163 List!62900)) )
))
(declare-fun s!2326 () List!62900)

(declare-fun lambda!297729 () Int)

(declare-fun flatMap!1146 ((InoxSet Context!9834) Int) (InoxSet Context!9834))

(declare-fun derivationStepZipperUp!801 (Context!9834 C!31336) (InoxSet Context!9834))

(assert (=> b!5551361 (= (flatMap!1146 z!1189 lambda!297729) (derivationStepZipperUp!801 (h!69223 zl!343) (h!69224 s!2326)))))

(declare-datatypes ((Unit!155526 0))(
  ( (Unit!155527) )
))
(declare-fun lt!2250359 () Unit!155526)

(declare-fun lemmaFlatMapOnSingletonSet!678 ((InoxSet Context!9834) Context!9834 Int) Unit!155526)

(assert (=> b!5551361 (= lt!2250359 (lemmaFlatMapOnSingletonSet!678 z!1189 (h!69223 zl!343) lambda!297729))))

(declare-fun lt!2250356 () (InoxSet Context!9834))

(declare-fun lt!2250360 () Context!9834)

(assert (=> b!5551361 (= lt!2250356 (derivationStepZipperUp!801 lt!2250360 (h!69224 s!2326)))))

(declare-fun lt!2250362 () (InoxSet Context!9834))

(declare-fun derivationStepZipperDown!875 (Regex!15533 Context!9834 C!31336) (InoxSet Context!9834))

(assert (=> b!5551361 (= lt!2250362 (derivationStepZipperDown!875 (h!69222 (exprs!5417 (h!69223 zl!343))) lt!2250360 (h!69224 s!2326)))))

(assert (=> b!5551361 (= lt!2250360 (Context!9835 (t!376161 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun lt!2250364 () (InoxSet Context!9834))

(assert (=> b!5551361 (= lt!2250364 (derivationStepZipperUp!801 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343))))) (h!69224 s!2326)))))

(declare-fun tp!1531764 () Bool)

(declare-fun b!5551362 () Bool)

(declare-fun e!3428832 () Bool)

(assert (=> b!5551362 (= e!3428832 (and (inv!82079 (h!69223 zl!343)) e!3428826 tp!1531764))))

(declare-fun b!5551363 () Bool)

(declare-fun tp!1531761 () Bool)

(assert (=> b!5551363 (= e!3428833 tp!1531761)))

(declare-fun b!5551364 () Bool)

(declare-fun res!2359895 () Bool)

(declare-fun e!3428831 () Bool)

(assert (=> b!5551364 (=> res!2359895 e!3428831)))

(declare-fun isEmpty!34565 (List!62899) Bool)

(assert (=> b!5551364 (= res!2359895 (not (isEmpty!34565 (t!376162 zl!343))))))

(declare-fun b!5551365 () Bool)

(declare-fun res!2359889 () Bool)

(assert (=> b!5551365 (=> res!2359889 e!3428831)))

(declare-fun r!7292 () Regex!15533)

(get-info :version)

(assert (=> b!5551365 (= res!2359889 (or ((_ is EmptyExpr!15533) r!7292) ((_ is EmptyLang!15533) r!7292) ((_ is ElementMatch!15533) r!7292) ((_ is Union!15533) r!7292) (not ((_ is Concat!24378) r!7292))))))

(assert (=> b!5551366 (= e!3428831 e!3428834)))

(declare-fun res!2359888 () Bool)

(assert (=> b!5551366 (=> res!2359888 e!3428834)))

(declare-fun lt!2250358 () Bool)

(declare-fun lt!2250365 () Bool)

(assert (=> b!5551366 (= res!2359888 (or (not (= lt!2250358 lt!2250365)) ((_ is Nil!62776) s!2326)))))

(declare-fun Exists!2633 (Int) Bool)

(assert (=> b!5551366 (= (Exists!2633 lambda!297727) (Exists!2633 lambda!297728))))

(declare-fun lt!2250363 () Unit!155526)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1262 (Regex!15533 Regex!15533 List!62900) Unit!155526)

(assert (=> b!5551366 (= lt!2250363 (lemmaExistCutMatchRandMatchRSpecEquivalent!1262 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326))))

(assert (=> b!5551366 (= lt!2250365 (Exists!2633 lambda!297727))))

(declare-datatypes ((tuple2!65260 0))(
  ( (tuple2!65261 (_1!35933 List!62900) (_2!35933 List!62900)) )
))
(declare-datatypes ((Option!15542 0))(
  ( (None!15541) (Some!15541 (v!51580 tuple2!65260)) )
))
(declare-fun isDefined!12245 (Option!15542) Bool)

(declare-fun findConcatSeparation!1956 (Regex!15533 Regex!15533 List!62900 List!62900 List!62900) Option!15542)

(assert (=> b!5551366 (= lt!2250365 (isDefined!12245 (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) Nil!62776 s!2326 s!2326)))))

(declare-fun lt!2250361 () Unit!155526)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1720 (Regex!15533 Regex!15533 List!62900) Unit!155526)

(assert (=> b!5551366 (= lt!2250361 (lemmaFindConcatSeparationEquivalentToExists!1720 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326))))

(declare-fun b!5551367 () Bool)

(declare-fun res!2359892 () Bool)

(assert (=> b!5551367 (=> res!2359892 e!3428831)))

(assert (=> b!5551367 (= res!2359892 (not ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343)))))))

(declare-fun b!5551368 () Bool)

(declare-fun res!2359893 () Bool)

(assert (=> b!5551368 (=> (not res!2359893) (not e!3428828))))

(declare-fun unfocusZipper!1275 (List!62899) Regex!15533)

(assert (=> b!5551368 (= res!2359893 (= r!7292 (unfocusZipper!1275 zl!343)))))

(declare-fun res!2359891 () Bool)

(assert (=> start!577870 (=> (not res!2359891) (not e!3428828))))

(declare-fun validRegex!7269 (Regex!15533) Bool)

(assert (=> start!577870 (= res!2359891 (validRegex!7269 r!7292))))

(assert (=> start!577870 e!3428828))

(assert (=> start!577870 e!3428830))

(declare-fun condSetEmpty!36919 () Bool)

(assert (=> start!577870 (= condSetEmpty!36919 (= z!1189 ((as const (Array Context!9834 Bool)) false)))))

(assert (=> start!577870 setRes!36919))

(assert (=> start!577870 e!3428832))

(declare-fun e!3428827 () Bool)

(assert (=> start!577870 e!3428827))

(declare-fun b!5551358 () Bool)

(declare-fun tp!1531765 () Bool)

(assert (=> b!5551358 (= e!3428830 tp!1531765)))

(declare-fun b!5551369 () Bool)

(assert (=> b!5551369 (= e!3428828 (not e!3428831))))

(declare-fun res!2359890 () Bool)

(assert (=> b!5551369 (=> res!2359890 e!3428831)))

(assert (=> b!5551369 (= res!2359890 (not ((_ is Cons!62775) zl!343)))))

(declare-fun matchRSpec!2636 (Regex!15533 List!62900) Bool)

(assert (=> b!5551369 (= lt!2250358 (matchRSpec!2636 r!7292 s!2326))))

(declare-fun matchR!7718 (Regex!15533 List!62900) Bool)

(assert (=> b!5551369 (= lt!2250358 (matchR!7718 r!7292 s!2326))))

(declare-fun lt!2250357 () Unit!155526)

(declare-fun mainMatchTheorem!2636 (Regex!15533 List!62900) Unit!155526)

(assert (=> b!5551369 (= lt!2250357 (mainMatchTheorem!2636 r!7292 s!2326))))

(declare-fun b!5551370 () Bool)

(declare-fun res!2359894 () Bool)

(assert (=> b!5551370 (=> res!2359894 e!3428831)))

(declare-fun generalisedConcat!1148 (List!62898) Regex!15533)

(assert (=> b!5551370 (= res!2359894 (not (= r!7292 (generalisedConcat!1148 (exprs!5417 (h!69223 zl!343))))))))

(declare-fun b!5551371 () Bool)

(declare-fun tp_is_empty!40319 () Bool)

(assert (=> b!5551371 (= e!3428830 tp_is_empty!40319)))

(declare-fun b!5551372 () Bool)

(declare-fun res!2359897 () Bool)

(assert (=> b!5551372 (=> res!2359897 e!3428831)))

(declare-fun generalisedUnion!1396 (List!62898) Regex!15533)

(declare-fun unfocusZipperList!961 (List!62899) List!62898)

(assert (=> b!5551372 (= res!2359897 (not (= r!7292 (generalisedUnion!1396 (unfocusZipperList!961 zl!343)))))))

(declare-fun b!5551373 () Bool)

(declare-fun derivationStepZipper!1636 ((InoxSet Context!9834) C!31336) (InoxSet Context!9834))

(assert (=> b!5551373 (= e!3428829 (= (derivationStepZipper!1636 z!1189 (h!69224 s!2326)) lt!2250364))))

(declare-fun b!5551374 () Bool)

(declare-fun tp!1531762 () Bool)

(assert (=> b!5551374 (= e!3428827 (and tp_is_empty!40319 tp!1531762))))

(declare-fun b!5551375 () Bool)

(declare-fun tp!1531760 () Bool)

(declare-fun tp!1531767 () Bool)

(assert (=> b!5551375 (= e!3428830 (and tp!1531760 tp!1531767))))

(declare-fun b!5551376 () Bool)

(declare-fun res!2359899 () Bool)

(assert (=> b!5551376 (=> res!2359899 e!3428829)))

(assert (=> b!5551376 (= res!2359899 (not (= lt!2250364 ((_ map or) lt!2250362 lt!2250356))))))

(assert (= (and start!577870 res!2359891) b!5551360))

(assert (= (and b!5551360 res!2359896) b!5551368))

(assert (= (and b!5551368 res!2359893) b!5551369))

(assert (= (and b!5551369 (not res!2359890)) b!5551364))

(assert (= (and b!5551364 (not res!2359895)) b!5551370))

(assert (= (and b!5551370 (not res!2359894)) b!5551367))

(assert (= (and b!5551367 (not res!2359892)) b!5551372))

(assert (= (and b!5551372 (not res!2359897)) b!5551365))

(assert (= (and b!5551365 (not res!2359889)) b!5551366))

(assert (= (and b!5551366 (not res!2359888)) b!5551359))

(assert (= (and b!5551359 (not res!2359900)) b!5551361))

(assert (= (and b!5551361 (not res!2359898)) b!5551376))

(assert (= (and b!5551376 (not res!2359899)) b!5551373))

(assert (= (and start!577870 ((_ is ElementMatch!15533) r!7292)) b!5551371))

(assert (= (and start!577870 ((_ is Concat!24378) r!7292)) b!5551375))

(assert (= (and start!577870 ((_ is Star!15533) r!7292)) b!5551358))

(assert (= (and start!577870 ((_ is Union!15533) r!7292)) b!5551357))

(assert (= (and start!577870 condSetEmpty!36919) setIsEmpty!36919))

(assert (= (and start!577870 (not condSetEmpty!36919)) setNonEmpty!36919))

(assert (= setNonEmpty!36919 b!5551363))

(assert (= b!5551362 b!5551356))

(assert (= (and start!577870 ((_ is Cons!62775) zl!343)) b!5551362))

(assert (= (and start!577870 ((_ is Cons!62776) s!2326)) b!5551374))

(declare-fun m!6545066 () Bool)

(assert (=> start!577870 m!6545066))

(declare-fun m!6545068 () Bool)

(assert (=> b!5551359 m!6545068))

(declare-fun m!6545070 () Bool)

(assert (=> b!5551370 m!6545070))

(declare-fun m!6545072 () Bool)

(assert (=> b!5551362 m!6545072))

(declare-fun m!6545074 () Bool)

(assert (=> b!5551364 m!6545074))

(declare-fun m!6545076 () Bool)

(assert (=> b!5551373 m!6545076))

(declare-fun m!6545078 () Bool)

(assert (=> b!5551372 m!6545078))

(assert (=> b!5551372 m!6545078))

(declare-fun m!6545080 () Bool)

(assert (=> b!5551372 m!6545080))

(declare-fun m!6545082 () Bool)

(assert (=> b!5551368 m!6545082))

(declare-fun m!6545084 () Bool)

(assert (=> setNonEmpty!36919 m!6545084))

(declare-fun m!6545086 () Bool)

(assert (=> b!5551360 m!6545086))

(declare-fun m!6545088 () Bool)

(assert (=> b!5551366 m!6545088))

(declare-fun m!6545090 () Bool)

(assert (=> b!5551366 m!6545090))

(declare-fun m!6545092 () Bool)

(assert (=> b!5551366 m!6545092))

(declare-fun m!6545094 () Bool)

(assert (=> b!5551366 m!6545094))

(assert (=> b!5551366 m!6545094))

(declare-fun m!6545096 () Bool)

(assert (=> b!5551366 m!6545096))

(assert (=> b!5551366 m!6545090))

(declare-fun m!6545098 () Bool)

(assert (=> b!5551366 m!6545098))

(declare-fun m!6545100 () Bool)

(assert (=> b!5551361 m!6545100))

(declare-fun m!6545102 () Bool)

(assert (=> b!5551361 m!6545102))

(declare-fun m!6545104 () Bool)

(assert (=> b!5551361 m!6545104))

(declare-fun m!6545106 () Bool)

(assert (=> b!5551361 m!6545106))

(declare-fun m!6545108 () Bool)

(assert (=> b!5551361 m!6545108))

(declare-fun m!6545110 () Bool)

(assert (=> b!5551361 m!6545110))

(declare-fun m!6545112 () Bool)

(assert (=> b!5551361 m!6545112))

(declare-fun m!6545114 () Bool)

(assert (=> b!5551369 m!6545114))

(declare-fun m!6545116 () Bool)

(assert (=> b!5551369 m!6545116))

(declare-fun m!6545118 () Bool)

(assert (=> b!5551369 m!6545118))

(check-sat (not b!5551358) (not b!5551359) (not b!5551370) (not b!5551373) (not b!5551368) (not b!5551362) (not b!5551364) (not b!5551369) (not b!5551372) tp_is_empty!40319 (not b!5551360) (not b!5551374) (not b!5551357) (not b!5551375) (not b!5551361) (not b!5551356) (not b!5551366) (not setNonEmpty!36919) (not b!5551363) (not start!577870))
(check-sat)
(get-model)

(declare-fun d!1757634 () Bool)

(assert (=> d!1757634 (= (isEmpty!34564 (t!376161 (exprs!5417 (h!69223 zl!343)))) ((_ is Nil!62774) (t!376161 (exprs!5417 (h!69223 zl!343)))))))

(assert (=> b!5551359 d!1757634))

(declare-fun d!1757636 () Bool)

(declare-fun lt!2250368 () Regex!15533)

(assert (=> d!1757636 (validRegex!7269 lt!2250368)))

(assert (=> d!1757636 (= lt!2250368 (generalisedUnion!1396 (unfocusZipperList!961 zl!343)))))

(assert (=> d!1757636 (= (unfocusZipper!1275 zl!343) lt!2250368)))

(declare-fun bs!1286137 () Bool)

(assert (= bs!1286137 d!1757636))

(declare-fun m!6545120 () Bool)

(assert (=> bs!1286137 m!6545120))

(assert (=> bs!1286137 m!6545078))

(assert (=> bs!1286137 m!6545078))

(assert (=> bs!1286137 m!6545080))

(assert (=> b!5551368 d!1757636))

(declare-fun bs!1286138 () Bool)

(declare-fun b!5551416 () Bool)

(assert (= bs!1286138 (and b!5551416 b!5551366)))

(declare-fun lambda!297734 () Int)

(assert (=> bs!1286138 (not (= lambda!297734 lambda!297727))))

(assert (=> bs!1286138 (not (= lambda!297734 lambda!297728))))

(assert (=> b!5551416 true))

(assert (=> b!5551416 true))

(declare-fun bs!1286139 () Bool)

(declare-fun b!5551417 () Bool)

(assert (= bs!1286139 (and b!5551417 b!5551366)))

(declare-fun lambda!297735 () Int)

(assert (=> bs!1286139 (not (= lambda!297735 lambda!297727))))

(assert (=> bs!1286139 (= lambda!297735 lambda!297728)))

(declare-fun bs!1286140 () Bool)

(assert (= bs!1286140 (and b!5551417 b!5551416)))

(assert (=> bs!1286140 (not (= lambda!297735 lambda!297734))))

(assert (=> b!5551417 true))

(assert (=> b!5551417 true))

(declare-fun b!5551415 () Bool)

(declare-fun c!971669 () Bool)

(assert (=> b!5551415 (= c!971669 ((_ is ElementMatch!15533) r!7292))))

(declare-fun e!3428859 () Bool)

(declare-fun e!3428857 () Bool)

(assert (=> b!5551415 (= e!3428859 e!3428857)))

(declare-fun e!3428853 () Bool)

(declare-fun call!413733 () Bool)

(assert (=> b!5551416 (= e!3428853 call!413733)))

(declare-fun e!3428858 () Bool)

(assert (=> b!5551417 (= e!3428858 call!413733)))

(declare-fun bm!413727 () Bool)

(declare-fun call!413732 () Bool)

(declare-fun isEmpty!34566 (List!62900) Bool)

(assert (=> bm!413727 (= call!413732 (isEmpty!34566 s!2326))))

(declare-fun b!5551419 () Bool)

(declare-fun e!3428856 () Bool)

(assert (=> b!5551419 (= e!3428856 (matchRSpec!2636 (regTwo!31579 r!7292) s!2326))))

(declare-fun b!5551420 () Bool)

(declare-fun e!3428855 () Bool)

(assert (=> b!5551420 (= e!3428855 e!3428856)))

(declare-fun res!2359917 () Bool)

(assert (=> b!5551420 (= res!2359917 (matchRSpec!2636 (regOne!31579 r!7292) s!2326))))

(assert (=> b!5551420 (=> res!2359917 e!3428856)))

(declare-fun b!5551421 () Bool)

(declare-fun e!3428854 () Bool)

(assert (=> b!5551421 (= e!3428854 call!413732)))

(declare-fun b!5551422 () Bool)

(assert (=> b!5551422 (= e!3428855 e!3428858)))

(declare-fun c!971670 () Bool)

(assert (=> b!5551422 (= c!971670 ((_ is Star!15533) r!7292))))

(declare-fun b!5551423 () Bool)

(assert (=> b!5551423 (= e!3428854 e!3428859)))

(declare-fun res!2359919 () Bool)

(assert (=> b!5551423 (= res!2359919 (not ((_ is EmptyLang!15533) r!7292)))))

(assert (=> b!5551423 (=> (not res!2359919) (not e!3428859))))

(declare-fun d!1757638 () Bool)

(declare-fun c!971671 () Bool)

(assert (=> d!1757638 (= c!971671 ((_ is EmptyExpr!15533) r!7292))))

(assert (=> d!1757638 (= (matchRSpec!2636 r!7292 s!2326) e!3428854)))

(declare-fun b!5551418 () Bool)

(declare-fun c!971668 () Bool)

(assert (=> b!5551418 (= c!971668 ((_ is Union!15533) r!7292))))

(assert (=> b!5551418 (= e!3428857 e!3428855)))

(declare-fun b!5551424 () Bool)

(declare-fun res!2359918 () Bool)

(assert (=> b!5551424 (=> res!2359918 e!3428853)))

(assert (=> b!5551424 (= res!2359918 call!413732)))

(assert (=> b!5551424 (= e!3428858 e!3428853)))

(declare-fun b!5551425 () Bool)

(assert (=> b!5551425 (= e!3428857 (= s!2326 (Cons!62776 (c!971659 r!7292) Nil!62776)))))

(declare-fun bm!413728 () Bool)

(assert (=> bm!413728 (= call!413733 (Exists!2633 (ite c!971670 lambda!297734 lambda!297735)))))

(assert (= (and d!1757638 c!971671) b!5551421))

(assert (= (and d!1757638 (not c!971671)) b!5551423))

(assert (= (and b!5551423 res!2359919) b!5551415))

(assert (= (and b!5551415 c!971669) b!5551425))

(assert (= (and b!5551415 (not c!971669)) b!5551418))

(assert (= (and b!5551418 c!971668) b!5551420))

(assert (= (and b!5551418 (not c!971668)) b!5551422))

(assert (= (and b!5551420 (not res!2359917)) b!5551419))

(assert (= (and b!5551422 c!971670) b!5551424))

(assert (= (and b!5551422 (not c!971670)) b!5551417))

(assert (= (and b!5551424 (not res!2359918)) b!5551416))

(assert (= (or b!5551416 b!5551417) bm!413728))

(assert (= (or b!5551421 b!5551424) bm!413727))

(declare-fun m!6545122 () Bool)

(assert (=> bm!413727 m!6545122))

(declare-fun m!6545124 () Bool)

(assert (=> b!5551419 m!6545124))

(declare-fun m!6545126 () Bool)

(assert (=> b!5551420 m!6545126))

(declare-fun m!6545128 () Bool)

(assert (=> bm!413728 m!6545128))

(assert (=> b!5551369 d!1757638))

(declare-fun b!5551474 () Bool)

(declare-fun res!2359945 () Bool)

(declare-fun e!3428892 () Bool)

(assert (=> b!5551474 (=> (not res!2359945) (not e!3428892))))

(declare-fun tail!10946 (List!62900) List!62900)

(assert (=> b!5551474 (= res!2359945 (isEmpty!34566 (tail!10946 s!2326)))))

(declare-fun b!5551475 () Bool)

(declare-fun e!3428888 () Bool)

(declare-fun lt!2250373 () Bool)

(declare-fun call!413736 () Bool)

(assert (=> b!5551475 (= e!3428888 (= lt!2250373 call!413736))))

(declare-fun bm!413731 () Bool)

(assert (=> bm!413731 (= call!413736 (isEmpty!34566 s!2326))))

(declare-fun b!5551476 () Bool)

(declare-fun res!2359944 () Bool)

(assert (=> b!5551476 (=> (not res!2359944) (not e!3428892))))

(assert (=> b!5551476 (= res!2359944 (not call!413736))))

(declare-fun b!5551477 () Bool)

(declare-fun head!11851 (List!62900) C!31336)

(assert (=> b!5551477 (= e!3428892 (= (head!11851 s!2326) (c!971659 r!7292)))))

(declare-fun b!5551478 () Bool)

(declare-fun e!3428890 () Bool)

(assert (=> b!5551478 (= e!3428890 (nullable!5565 r!7292))))

(declare-fun b!5551479 () Bool)

(declare-fun res!2359946 () Bool)

(declare-fun e!3428886 () Bool)

(assert (=> b!5551479 (=> res!2359946 e!3428886)))

(assert (=> b!5551479 (= res!2359946 (not ((_ is ElementMatch!15533) r!7292)))))

(declare-fun e!3428891 () Bool)

(assert (=> b!5551479 (= e!3428891 e!3428886)))

(declare-fun b!5551480 () Bool)

(assert (=> b!5551480 (= e!3428888 e!3428891)))

(declare-fun c!971687 () Bool)

(assert (=> b!5551480 (= c!971687 ((_ is EmptyLang!15533) r!7292))))

(declare-fun b!5551481 () Bool)

(declare-fun e!3428887 () Bool)

(assert (=> b!5551481 (= e!3428887 (not (= (head!11851 s!2326) (c!971659 r!7292))))))

(declare-fun b!5551482 () Bool)

(assert (=> b!5551482 (= e!3428891 (not lt!2250373))))

(declare-fun b!5551483 () Bool)

(declare-fun e!3428889 () Bool)

(assert (=> b!5551483 (= e!3428889 e!3428887)))

(declare-fun res!2359940 () Bool)

(assert (=> b!5551483 (=> res!2359940 e!3428887)))

(assert (=> b!5551483 (= res!2359940 call!413736)))

(declare-fun b!5551485 () Bool)

(declare-fun derivativeStep!4389 (Regex!15533 C!31336) Regex!15533)

(assert (=> b!5551485 (= e!3428890 (matchR!7718 (derivativeStep!4389 r!7292 (head!11851 s!2326)) (tail!10946 s!2326)))))

(declare-fun b!5551486 () Bool)

(declare-fun res!2359941 () Bool)

(assert (=> b!5551486 (=> res!2359941 e!3428886)))

(assert (=> b!5551486 (= res!2359941 e!3428892)))

(declare-fun res!2359943 () Bool)

(assert (=> b!5551486 (=> (not res!2359943) (not e!3428892))))

(assert (=> b!5551486 (= res!2359943 lt!2250373)))

(declare-fun b!5551487 () Bool)

(declare-fun res!2359942 () Bool)

(assert (=> b!5551487 (=> res!2359942 e!3428887)))

(assert (=> b!5551487 (= res!2359942 (not (isEmpty!34566 (tail!10946 s!2326))))))

(declare-fun b!5551484 () Bool)

(assert (=> b!5551484 (= e!3428886 e!3428889)))

(declare-fun res!2359947 () Bool)

(assert (=> b!5551484 (=> (not res!2359947) (not e!3428889))))

(assert (=> b!5551484 (= res!2359947 (not lt!2250373))))

(declare-fun d!1757640 () Bool)

(assert (=> d!1757640 e!3428888))

(declare-fun c!971688 () Bool)

(assert (=> d!1757640 (= c!971688 ((_ is EmptyExpr!15533) r!7292))))

(assert (=> d!1757640 (= lt!2250373 e!3428890)))

(declare-fun c!971686 () Bool)

(assert (=> d!1757640 (= c!971686 (isEmpty!34566 s!2326))))

(assert (=> d!1757640 (validRegex!7269 r!7292)))

(assert (=> d!1757640 (= (matchR!7718 r!7292 s!2326) lt!2250373)))

(assert (= (and d!1757640 c!971686) b!5551478))

(assert (= (and d!1757640 (not c!971686)) b!5551485))

(assert (= (and d!1757640 c!971688) b!5551475))

(assert (= (and d!1757640 (not c!971688)) b!5551480))

(assert (= (and b!5551480 c!971687) b!5551482))

(assert (= (and b!5551480 (not c!971687)) b!5551479))

(assert (= (and b!5551479 (not res!2359946)) b!5551486))

(assert (= (and b!5551486 res!2359943) b!5551476))

(assert (= (and b!5551476 res!2359944) b!5551474))

(assert (= (and b!5551474 res!2359945) b!5551477))

(assert (= (and b!5551486 (not res!2359941)) b!5551484))

(assert (= (and b!5551484 res!2359947) b!5551483))

(assert (= (and b!5551483 (not res!2359940)) b!5551487))

(assert (= (and b!5551487 (not res!2359942)) b!5551481))

(assert (= (or b!5551475 b!5551476 b!5551483) bm!413731))

(assert (=> bm!413731 m!6545122))

(declare-fun m!6545132 () Bool)

(assert (=> b!5551477 m!6545132))

(assert (=> b!5551485 m!6545132))

(assert (=> b!5551485 m!6545132))

(declare-fun m!6545134 () Bool)

(assert (=> b!5551485 m!6545134))

(declare-fun m!6545136 () Bool)

(assert (=> b!5551485 m!6545136))

(assert (=> b!5551485 m!6545134))

(assert (=> b!5551485 m!6545136))

(declare-fun m!6545138 () Bool)

(assert (=> b!5551485 m!6545138))

(assert (=> b!5551474 m!6545136))

(assert (=> b!5551474 m!6545136))

(declare-fun m!6545140 () Bool)

(assert (=> b!5551474 m!6545140))

(assert (=> b!5551481 m!6545132))

(assert (=> b!5551487 m!6545136))

(assert (=> b!5551487 m!6545136))

(assert (=> b!5551487 m!6545140))

(assert (=> d!1757640 m!6545122))

(assert (=> d!1757640 m!6545066))

(declare-fun m!6545142 () Bool)

(assert (=> b!5551478 m!6545142))

(assert (=> b!5551369 d!1757640))

(declare-fun d!1757646 () Bool)

(assert (=> d!1757646 (= (matchR!7718 r!7292 s!2326) (matchRSpec!2636 r!7292 s!2326))))

(declare-fun lt!2250377 () Unit!155526)

(declare-fun choose!42088 (Regex!15533 List!62900) Unit!155526)

(assert (=> d!1757646 (= lt!2250377 (choose!42088 r!7292 s!2326))))

(assert (=> d!1757646 (validRegex!7269 r!7292)))

(assert (=> d!1757646 (= (mainMatchTheorem!2636 r!7292 s!2326) lt!2250377)))

(declare-fun bs!1286143 () Bool)

(assert (= bs!1286143 d!1757646))

(assert (=> bs!1286143 m!6545116))

(assert (=> bs!1286143 m!6545114))

(declare-fun m!6545164 () Bool)

(assert (=> bs!1286143 m!6545164))

(assert (=> bs!1286143 m!6545066))

(assert (=> b!5551369 d!1757646))

(declare-fun b!5551532 () Bool)

(declare-fun e!3428926 () Bool)

(declare-fun call!413747 () Bool)

(assert (=> b!5551532 (= e!3428926 call!413747)))

(declare-fun b!5551533 () Bool)

(declare-fun res!2359964 () Bool)

(declare-fun e!3428924 () Bool)

(assert (=> b!5551533 (=> res!2359964 e!3428924)))

(assert (=> b!5551533 (= res!2359964 (not ((_ is Concat!24378) r!7292)))))

(declare-fun e!3428928 () Bool)

(assert (=> b!5551533 (= e!3428928 e!3428924)))

(declare-fun call!413746 () Bool)

(declare-fun c!971705 () Bool)

(declare-fun bm!413740 () Bool)

(declare-fun c!971704 () Bool)

(assert (=> bm!413740 (= call!413746 (validRegex!7269 (ite c!971705 (reg!15862 r!7292) (ite c!971704 (regTwo!31579 r!7292) (regTwo!31578 r!7292)))))))

(declare-fun b!5551534 () Bool)

(declare-fun e!3428927 () Bool)

(assert (=> b!5551534 (= e!3428927 e!3428928)))

(assert (=> b!5551534 (= c!971704 ((_ is Union!15533) r!7292))))

(declare-fun b!5551535 () Bool)

(declare-fun e!3428923 () Bool)

(assert (=> b!5551535 (= e!3428923 call!413747)))

(declare-fun bm!413741 () Bool)

(assert (=> bm!413741 (= call!413747 call!413746)))

(declare-fun b!5551536 () Bool)

(declare-fun e!3428922 () Bool)

(assert (=> b!5551536 (= e!3428922 call!413746)))

(declare-fun d!1757650 () Bool)

(declare-fun res!2359966 () Bool)

(declare-fun e!3428925 () Bool)

(assert (=> d!1757650 (=> res!2359966 e!3428925)))

(assert (=> d!1757650 (= res!2359966 ((_ is ElementMatch!15533) r!7292))))

(assert (=> d!1757650 (= (validRegex!7269 r!7292) e!3428925)))

(declare-fun b!5551537 () Bool)

(assert (=> b!5551537 (= e!3428927 e!3428922)))

(declare-fun res!2359962 () Bool)

(assert (=> b!5551537 (= res!2359962 (not (nullable!5565 (reg!15862 r!7292))))))

(assert (=> b!5551537 (=> (not res!2359962) (not e!3428922))))

(declare-fun b!5551538 () Bool)

(assert (=> b!5551538 (= e!3428925 e!3428927)))

(assert (=> b!5551538 (= c!971705 ((_ is Star!15533) r!7292))))

(declare-fun b!5551539 () Bool)

(assert (=> b!5551539 (= e!3428924 e!3428926)))

(declare-fun res!2359965 () Bool)

(assert (=> b!5551539 (=> (not res!2359965) (not e!3428926))))

(declare-fun call!413745 () Bool)

(assert (=> b!5551539 (= res!2359965 call!413745)))

(declare-fun bm!413742 () Bool)

(assert (=> bm!413742 (= call!413745 (validRegex!7269 (ite c!971704 (regOne!31579 r!7292) (regOne!31578 r!7292))))))

(declare-fun b!5551540 () Bool)

(declare-fun res!2359963 () Bool)

(assert (=> b!5551540 (=> (not res!2359963) (not e!3428923))))

(assert (=> b!5551540 (= res!2359963 call!413745)))

(assert (=> b!5551540 (= e!3428928 e!3428923)))

(assert (= (and d!1757650 (not res!2359966)) b!5551538))

(assert (= (and b!5551538 c!971705) b!5551537))

(assert (= (and b!5551538 (not c!971705)) b!5551534))

(assert (= (and b!5551537 res!2359962) b!5551536))

(assert (= (and b!5551534 c!971704) b!5551540))

(assert (= (and b!5551534 (not c!971704)) b!5551533))

(assert (= (and b!5551540 res!2359963) b!5551535))

(assert (= (and b!5551533 (not res!2359964)) b!5551539))

(assert (= (and b!5551539 res!2359965) b!5551532))

(assert (= (or b!5551535 b!5551532) bm!413741))

(assert (= (or b!5551540 b!5551539) bm!413742))

(assert (= (or b!5551536 bm!413741) bm!413740))

(declare-fun m!6545170 () Bool)

(assert (=> bm!413740 m!6545170))

(declare-fun m!6545172 () Bool)

(assert (=> b!5551537 m!6545172))

(declare-fun m!6545174 () Bool)

(assert (=> bm!413742 m!6545174))

(assert (=> start!577870 d!1757650))

(declare-fun d!1757654 () Bool)

(declare-fun lambda!297747 () Int)

(declare-fun forall!14707 (List!62898 Int) Bool)

(assert (=> d!1757654 (= (inv!82079 setElem!36919) (forall!14707 (exprs!5417 setElem!36919) lambda!297747))))

(declare-fun bs!1286146 () Bool)

(assert (= bs!1286146 d!1757654))

(declare-fun m!6545182 () Bool)

(assert (=> bs!1286146 m!6545182))

(assert (=> setNonEmpty!36919 d!1757654))

(declare-fun d!1757658 () Bool)

(declare-fun e!3428934 () Bool)

(assert (=> d!1757658 e!3428934))

(declare-fun res!2359970 () Bool)

(assert (=> d!1757658 (=> (not res!2359970) (not e!3428934))))

(declare-fun lt!2250383 () List!62899)

(declare-fun noDuplicate!1517 (List!62899) Bool)

(assert (=> d!1757658 (= res!2359970 (noDuplicate!1517 lt!2250383))))

(declare-fun choose!42089 ((InoxSet Context!9834)) List!62899)

(assert (=> d!1757658 (= lt!2250383 (choose!42089 z!1189))))

(assert (=> d!1757658 (= (toList!9317 z!1189) lt!2250383)))

(declare-fun b!5551548 () Bool)

(declare-fun content!11299 (List!62899) (InoxSet Context!9834))

(assert (=> b!5551548 (= e!3428934 (= (content!11299 lt!2250383) z!1189))))

(assert (= (and d!1757658 res!2359970) b!5551548))

(declare-fun m!6545184 () Bool)

(assert (=> d!1757658 m!6545184))

(declare-fun m!6545186 () Bool)

(assert (=> d!1757658 m!6545186))

(declare-fun m!6545188 () Bool)

(assert (=> b!5551548 m!6545188))

(assert (=> b!5551360 d!1757658))

(declare-fun bs!1286147 () Bool)

(declare-fun d!1757660 () Bool)

(assert (= bs!1286147 (and d!1757660 d!1757654)))

(declare-fun lambda!297750 () Int)

(assert (=> bs!1286147 (= lambda!297750 lambda!297747)))

(declare-fun b!5551591 () Bool)

(declare-fun e!3428961 () Bool)

(assert (=> b!5551591 (= e!3428961 (isEmpty!34564 (t!376161 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun e!3428960 () Bool)

(assert (=> d!1757660 e!3428960))

(declare-fun res!2359977 () Bool)

(assert (=> d!1757660 (=> (not res!2359977) (not e!3428960))))

(declare-fun lt!2250386 () Regex!15533)

(assert (=> d!1757660 (= res!2359977 (validRegex!7269 lt!2250386))))

(declare-fun e!3428962 () Regex!15533)

(assert (=> d!1757660 (= lt!2250386 e!3428962)))

(declare-fun c!971726 () Bool)

(assert (=> d!1757660 (= c!971726 e!3428961)))

(declare-fun res!2359978 () Bool)

(assert (=> d!1757660 (=> (not res!2359978) (not e!3428961))))

(assert (=> d!1757660 (= res!2359978 ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343))))))

(assert (=> d!1757660 (forall!14707 (exprs!5417 (h!69223 zl!343)) lambda!297750)))

(assert (=> d!1757660 (= (generalisedConcat!1148 (exprs!5417 (h!69223 zl!343))) lt!2250386)))

(declare-fun b!5551592 () Bool)

(declare-fun e!3428959 () Bool)

(declare-fun isConcat!619 (Regex!15533) Bool)

(assert (=> b!5551592 (= e!3428959 (isConcat!619 lt!2250386))))

(declare-fun b!5551593 () Bool)

(declare-fun e!3428964 () Bool)

(assert (=> b!5551593 (= e!3428960 e!3428964)))

(declare-fun c!971727 () Bool)

(assert (=> b!5551593 (= c!971727 (isEmpty!34564 (exprs!5417 (h!69223 zl!343))))))

(declare-fun b!5551594 () Bool)

(declare-fun e!3428963 () Regex!15533)

(assert (=> b!5551594 (= e!3428962 e!3428963)))

(declare-fun c!971728 () Bool)

(assert (=> b!5551594 (= c!971728 ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343))))))

(declare-fun b!5551595 () Bool)

(assert (=> b!5551595 (= e!3428964 e!3428959)))

(declare-fun c!971729 () Bool)

(declare-fun tail!10948 (List!62898) List!62898)

(assert (=> b!5551595 (= c!971729 (isEmpty!34564 (tail!10948 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun b!5551596 () Bool)

(assert (=> b!5551596 (= e!3428963 EmptyExpr!15533)))

(declare-fun b!5551597 () Bool)

(declare-fun head!11853 (List!62898) Regex!15533)

(assert (=> b!5551597 (= e!3428959 (= lt!2250386 (head!11853 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun b!5551598 () Bool)

(assert (=> b!5551598 (= e!3428963 (Concat!24378 (h!69222 (exprs!5417 (h!69223 zl!343))) (generalisedConcat!1148 (t!376161 (exprs!5417 (h!69223 zl!343))))))))

(declare-fun b!5551599 () Bool)

(assert (=> b!5551599 (= e!3428962 (h!69222 (exprs!5417 (h!69223 zl!343))))))

(declare-fun b!5551600 () Bool)

(declare-fun isEmptyExpr!1096 (Regex!15533) Bool)

(assert (=> b!5551600 (= e!3428964 (isEmptyExpr!1096 lt!2250386))))

(assert (= (and d!1757660 res!2359978) b!5551591))

(assert (= (and d!1757660 c!971726) b!5551599))

(assert (= (and d!1757660 (not c!971726)) b!5551594))

(assert (= (and b!5551594 c!971728) b!5551598))

(assert (= (and b!5551594 (not c!971728)) b!5551596))

(assert (= (and d!1757660 res!2359977) b!5551593))

(assert (= (and b!5551593 c!971727) b!5551600))

(assert (= (and b!5551593 (not c!971727)) b!5551595))

(assert (= (and b!5551595 c!971729) b!5551597))

(assert (= (and b!5551595 (not c!971729)) b!5551592))

(declare-fun m!6545190 () Bool)

(assert (=> b!5551593 m!6545190))

(declare-fun m!6545192 () Bool)

(assert (=> b!5551592 m!6545192))

(assert (=> b!5551591 m!6545068))

(declare-fun m!6545194 () Bool)

(assert (=> b!5551597 m!6545194))

(declare-fun m!6545196 () Bool)

(assert (=> b!5551600 m!6545196))

(declare-fun m!6545198 () Bool)

(assert (=> d!1757660 m!6545198))

(declare-fun m!6545200 () Bool)

(assert (=> d!1757660 m!6545200))

(declare-fun m!6545202 () Bool)

(assert (=> b!5551595 m!6545202))

(assert (=> b!5551595 m!6545202))

(declare-fun m!6545204 () Bool)

(assert (=> b!5551595 m!6545204))

(declare-fun m!6545206 () Bool)

(assert (=> b!5551598 m!6545206))

(assert (=> b!5551370 d!1757660))

(declare-fun call!413770 () (InoxSet Context!9834))

(declare-fun b!5551627 () Bool)

(declare-fun e!3428981 () (InoxSet Context!9834))

(assert (=> b!5551627 (= e!3428981 ((_ map or) call!413770 (derivationStepZipperUp!801 (Context!9835 (t!376161 (exprs!5417 lt!2250360))) (h!69224 s!2326))))))

(declare-fun bm!413765 () Bool)

(assert (=> bm!413765 (= call!413770 (derivationStepZipperDown!875 (h!69222 (exprs!5417 lt!2250360)) (Context!9835 (t!376161 (exprs!5417 lt!2250360))) (h!69224 s!2326)))))

(declare-fun b!5551629 () Bool)

(declare-fun e!3428982 () (InoxSet Context!9834))

(assert (=> b!5551629 (= e!3428982 ((as const (Array Context!9834 Bool)) false))))

(declare-fun b!5551630 () Bool)

(assert (=> b!5551630 (= e!3428982 call!413770)))

(declare-fun b!5551631 () Bool)

(declare-fun e!3428980 () Bool)

(assert (=> b!5551631 (= e!3428980 (nullable!5565 (h!69222 (exprs!5417 lt!2250360))))))

(declare-fun b!5551628 () Bool)

(assert (=> b!5551628 (= e!3428981 e!3428982)))

(declare-fun c!971741 () Bool)

(assert (=> b!5551628 (= c!971741 ((_ is Cons!62774) (exprs!5417 lt!2250360)))))

(declare-fun d!1757662 () Bool)

(declare-fun c!971742 () Bool)

(assert (=> d!1757662 (= c!971742 e!3428980)))

(declare-fun res!2359983 () Bool)

(assert (=> d!1757662 (=> (not res!2359983) (not e!3428980))))

(assert (=> d!1757662 (= res!2359983 ((_ is Cons!62774) (exprs!5417 lt!2250360)))))

(assert (=> d!1757662 (= (derivationStepZipperUp!801 lt!2250360 (h!69224 s!2326)) e!3428981)))

(assert (= (and d!1757662 res!2359983) b!5551631))

(assert (= (and d!1757662 c!971742) b!5551627))

(assert (= (and d!1757662 (not c!971742)) b!5551628))

(assert (= (and b!5551628 c!971741) b!5551630))

(assert (= (and b!5551628 (not c!971741)) b!5551629))

(assert (= (or b!5551627 b!5551630) bm!413765))

(declare-fun m!6545232 () Bool)

(assert (=> b!5551627 m!6545232))

(declare-fun m!6545234 () Bool)

(assert (=> bm!413765 m!6545234))

(declare-fun m!6545236 () Bool)

(assert (=> b!5551631 m!6545236))

(assert (=> b!5551361 d!1757662))

(declare-fun b!5551689 () Bool)

(declare-fun e!3429020 () (InoxSet Context!9834))

(assert (=> b!5551689 (= e!3429020 (store ((as const (Array Context!9834 Bool)) false) lt!2250360 true))))

(declare-fun c!971771 () Bool)

(declare-fun bm!413779 () Bool)

(declare-fun call!413786 () List!62898)

(declare-fun c!971770 () Bool)

(declare-fun $colon$colon!1604 (List!62898 Regex!15533) List!62898)

(assert (=> bm!413779 (= call!413786 ($colon$colon!1604 (exprs!5417 lt!2250360) (ite (or c!971770 c!971771) (regTwo!31578 (h!69222 (exprs!5417 (h!69223 zl!343)))) (h!69222 (exprs!5417 (h!69223 zl!343))))))))

(declare-fun b!5551691 () Bool)

(declare-fun e!3429021 () (InoxSet Context!9834))

(declare-fun call!413785 () (InoxSet Context!9834))

(assert (=> b!5551691 (= e!3429021 call!413785)))

(declare-fun b!5551692 () Bool)

(declare-fun c!971769 () Bool)

(assert (=> b!5551692 (= c!971769 ((_ is Star!15533) (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun e!3429018 () (InoxSet Context!9834))

(assert (=> b!5551692 (= e!3429021 e!3429018)))

(declare-fun b!5551693 () Bool)

(assert (=> b!5551693 (= e!3429018 ((as const (Array Context!9834 Bool)) false))))

(declare-fun b!5551694 () Bool)

(declare-fun e!3429019 () (InoxSet Context!9834))

(declare-fun call!413787 () (InoxSet Context!9834))

(declare-fun call!413789 () (InoxSet Context!9834))

(assert (=> b!5551694 (= e!3429019 ((_ map or) call!413787 call!413789))))

(declare-fun bm!413780 () Bool)

(declare-fun call!413784 () (InoxSet Context!9834))

(assert (=> bm!413780 (= call!413785 call!413784)))

(declare-fun call!413788 () List!62898)

(declare-fun bm!413781 () Bool)

(declare-fun c!971767 () Bool)

(assert (=> bm!413781 (= call!413787 (derivationStepZipperDown!875 (ite c!971767 (regOne!31579 (h!69222 (exprs!5417 (h!69223 zl!343)))) (ite c!971770 (regTwo!31578 (h!69222 (exprs!5417 (h!69223 zl!343)))) (ite c!971771 (regOne!31578 (h!69222 (exprs!5417 (h!69223 zl!343)))) (reg!15862 (h!69222 (exprs!5417 (h!69223 zl!343))))))) (ite (or c!971767 c!971770) lt!2250360 (Context!9835 call!413788)) (h!69224 s!2326)))))

(declare-fun b!5551695 () Bool)

(assert (=> b!5551695 (= e!3429018 call!413785)))

(declare-fun b!5551696 () Bool)

(declare-fun e!3429017 () Bool)

(assert (=> b!5551696 (= c!971770 e!3429017)))

(declare-fun res!2359993 () Bool)

(assert (=> b!5551696 (=> (not res!2359993) (not e!3429017))))

(assert (=> b!5551696 (= res!2359993 ((_ is Concat!24378) (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun e!3429016 () (InoxSet Context!9834))

(assert (=> b!5551696 (= e!3429019 e!3429016)))

(declare-fun bm!413782 () Bool)

(assert (=> bm!413782 (= call!413789 (derivationStepZipperDown!875 (ite c!971767 (regTwo!31579 (h!69222 (exprs!5417 (h!69223 zl!343)))) (regOne!31578 (h!69222 (exprs!5417 (h!69223 zl!343))))) (ite c!971767 lt!2250360 (Context!9835 call!413786)) (h!69224 s!2326)))))

(declare-fun b!5551697 () Bool)

(assert (=> b!5551697 (= e!3429016 ((_ map or) call!413789 call!413784))))

(declare-fun b!5551690 () Bool)

(assert (=> b!5551690 (= e!3429017 (nullable!5565 (regOne!31578 (h!69222 (exprs!5417 (h!69223 zl!343))))))))

(declare-fun d!1757672 () Bool)

(declare-fun c!971768 () Bool)

(assert (=> d!1757672 (= c!971768 (and ((_ is ElementMatch!15533) (h!69222 (exprs!5417 (h!69223 zl!343)))) (= (c!971659 (h!69222 (exprs!5417 (h!69223 zl!343)))) (h!69224 s!2326))))))

(assert (=> d!1757672 (= (derivationStepZipperDown!875 (h!69222 (exprs!5417 (h!69223 zl!343))) lt!2250360 (h!69224 s!2326)) e!3429020)))

(declare-fun bm!413783 () Bool)

(assert (=> bm!413783 (= call!413788 call!413786)))

(declare-fun b!5551698 () Bool)

(assert (=> b!5551698 (= e!3429016 e!3429021)))

(assert (=> b!5551698 (= c!971771 ((_ is Concat!24378) (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun b!5551699 () Bool)

(assert (=> b!5551699 (= e!3429020 e!3429019)))

(assert (=> b!5551699 (= c!971767 ((_ is Union!15533) (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun bm!413784 () Bool)

(assert (=> bm!413784 (= call!413784 call!413787)))

(assert (= (and d!1757672 c!971768) b!5551689))

(assert (= (and d!1757672 (not c!971768)) b!5551699))

(assert (= (and b!5551699 c!971767) b!5551694))

(assert (= (and b!5551699 (not c!971767)) b!5551696))

(assert (= (and b!5551696 res!2359993) b!5551690))

(assert (= (and b!5551696 c!971770) b!5551697))

(assert (= (and b!5551696 (not c!971770)) b!5551698))

(assert (= (and b!5551698 c!971771) b!5551691))

(assert (= (and b!5551698 (not c!971771)) b!5551692))

(assert (= (and b!5551692 c!971769) b!5551695))

(assert (= (and b!5551692 (not c!971769)) b!5551693))

(assert (= (or b!5551691 b!5551695) bm!413783))

(assert (= (or b!5551691 b!5551695) bm!413780))

(assert (= (or b!5551697 bm!413783) bm!413779))

(assert (= (or b!5551697 bm!413780) bm!413784))

(assert (= (or b!5551694 b!5551697) bm!413782))

(assert (= (or b!5551694 bm!413784) bm!413781))

(declare-fun m!6545264 () Bool)

(assert (=> bm!413779 m!6545264))

(declare-fun m!6545266 () Bool)

(assert (=> bm!413782 m!6545266))

(declare-fun m!6545268 () Bool)

(assert (=> b!5551689 m!6545268))

(declare-fun m!6545270 () Bool)

(assert (=> b!5551690 m!6545270))

(declare-fun m!6545272 () Bool)

(assert (=> bm!413781 m!6545272))

(assert (=> b!5551361 d!1757672))

(declare-fun d!1757682 () Bool)

(declare-fun nullableFct!1683 (Regex!15533) Bool)

(assert (=> d!1757682 (= (nullable!5565 (h!69222 (exprs!5417 (h!69223 zl!343)))) (nullableFct!1683 (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun bs!1286159 () Bool)

(assert (= bs!1286159 d!1757682))

(declare-fun m!6545274 () Bool)

(assert (=> bs!1286159 m!6545274))

(assert (=> b!5551361 d!1757682))

(declare-fun call!413790 () (InoxSet Context!9834))

(declare-fun b!5551700 () Bool)

(declare-fun e!3429023 () (InoxSet Context!9834))

(assert (=> b!5551700 (= e!3429023 ((_ map or) call!413790 (derivationStepZipperUp!801 (Context!9835 (t!376161 (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343)))))))) (h!69224 s!2326))))))

(declare-fun bm!413785 () Bool)

(assert (=> bm!413785 (= call!413790 (derivationStepZipperDown!875 (h!69222 (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343))))))) (Context!9835 (t!376161 (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343)))))))) (h!69224 s!2326)))))

(declare-fun b!5551702 () Bool)

(declare-fun e!3429024 () (InoxSet Context!9834))

(assert (=> b!5551702 (= e!3429024 ((as const (Array Context!9834 Bool)) false))))

(declare-fun b!5551703 () Bool)

(assert (=> b!5551703 (= e!3429024 call!413790)))

(declare-fun b!5551704 () Bool)

(declare-fun e!3429022 () Bool)

(assert (=> b!5551704 (= e!3429022 (nullable!5565 (h!69222 (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343)))))))))))

(declare-fun b!5551701 () Bool)

(assert (=> b!5551701 (= e!3429023 e!3429024)))

(declare-fun c!971772 () Bool)

(assert (=> b!5551701 (= c!971772 ((_ is Cons!62774) (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343))))))))))

(declare-fun d!1757684 () Bool)

(declare-fun c!971773 () Bool)

(assert (=> d!1757684 (= c!971773 e!3429022)))

(declare-fun res!2359994 () Bool)

(assert (=> d!1757684 (=> (not res!2359994) (not e!3429022))))

(assert (=> d!1757684 (= res!2359994 ((_ is Cons!62774) (exprs!5417 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343))))))))))

(assert (=> d!1757684 (= (derivationStepZipperUp!801 (Context!9835 (Cons!62774 (h!69222 (exprs!5417 (h!69223 zl!343))) (t!376161 (exprs!5417 (h!69223 zl!343))))) (h!69224 s!2326)) e!3429023)))

(assert (= (and d!1757684 res!2359994) b!5551704))

(assert (= (and d!1757684 c!971773) b!5551700))

(assert (= (and d!1757684 (not c!971773)) b!5551701))

(assert (= (and b!5551701 c!971772) b!5551703))

(assert (= (and b!5551701 (not c!971772)) b!5551702))

(assert (= (or b!5551700 b!5551703) bm!413785))

(declare-fun m!6545276 () Bool)

(assert (=> b!5551700 m!6545276))

(declare-fun m!6545278 () Bool)

(assert (=> bm!413785 m!6545278))

(declare-fun m!6545280 () Bool)

(assert (=> b!5551704 m!6545280))

(assert (=> b!5551361 d!1757684))

(declare-fun d!1757686 () Bool)

(declare-fun dynLambda!24552 (Int Context!9834) (InoxSet Context!9834))

(assert (=> d!1757686 (= (flatMap!1146 z!1189 lambda!297729) (dynLambda!24552 lambda!297729 (h!69223 zl!343)))))

(declare-fun lt!2250395 () Unit!155526)

(declare-fun choose!42092 ((InoxSet Context!9834) Context!9834 Int) Unit!155526)

(assert (=> d!1757686 (= lt!2250395 (choose!42092 z!1189 (h!69223 zl!343) lambda!297729))))

(assert (=> d!1757686 (= z!1189 (store ((as const (Array Context!9834 Bool)) false) (h!69223 zl!343) true))))

(assert (=> d!1757686 (= (lemmaFlatMapOnSingletonSet!678 z!1189 (h!69223 zl!343) lambda!297729) lt!2250395)))

(declare-fun b_lambda!210901 () Bool)

(assert (=> (not b_lambda!210901) (not d!1757686)))

(declare-fun bs!1286160 () Bool)

(assert (= bs!1286160 d!1757686))

(assert (=> bs!1286160 m!6545110))

(declare-fun m!6545282 () Bool)

(assert (=> bs!1286160 m!6545282))

(declare-fun m!6545284 () Bool)

(assert (=> bs!1286160 m!6545284))

(declare-fun m!6545286 () Bool)

(assert (=> bs!1286160 m!6545286))

(assert (=> b!5551361 d!1757686))

(declare-fun call!413791 () (InoxSet Context!9834))

(declare-fun b!5551727 () Bool)

(declare-fun e!3429040 () (InoxSet Context!9834))

(assert (=> b!5551727 (= e!3429040 ((_ map or) call!413791 (derivationStepZipperUp!801 (Context!9835 (t!376161 (exprs!5417 (h!69223 zl!343)))) (h!69224 s!2326))))))

(declare-fun bm!413786 () Bool)

(assert (=> bm!413786 (= call!413791 (derivationStepZipperDown!875 (h!69222 (exprs!5417 (h!69223 zl!343))) (Context!9835 (t!376161 (exprs!5417 (h!69223 zl!343)))) (h!69224 s!2326)))))

(declare-fun b!5551729 () Bool)

(declare-fun e!3429041 () (InoxSet Context!9834))

(assert (=> b!5551729 (= e!3429041 ((as const (Array Context!9834 Bool)) false))))

(declare-fun b!5551730 () Bool)

(assert (=> b!5551730 (= e!3429041 call!413791)))

(declare-fun b!5551731 () Bool)

(declare-fun e!3429039 () Bool)

(assert (=> b!5551731 (= e!3429039 (nullable!5565 (h!69222 (exprs!5417 (h!69223 zl!343)))))))

(declare-fun b!5551728 () Bool)

(assert (=> b!5551728 (= e!3429040 e!3429041)))

(declare-fun c!971782 () Bool)

(assert (=> b!5551728 (= c!971782 ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343))))))

(declare-fun d!1757688 () Bool)

(declare-fun c!971783 () Bool)

(assert (=> d!1757688 (= c!971783 e!3429039)))

(declare-fun res!2360001 () Bool)

(assert (=> d!1757688 (=> (not res!2360001) (not e!3429039))))

(assert (=> d!1757688 (= res!2360001 ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343))))))

(assert (=> d!1757688 (= (derivationStepZipperUp!801 (h!69223 zl!343) (h!69224 s!2326)) e!3429040)))

(assert (= (and d!1757688 res!2360001) b!5551731))

(assert (= (and d!1757688 c!971783) b!5551727))

(assert (= (and d!1757688 (not c!971783)) b!5551728))

(assert (= (and b!5551728 c!971782) b!5551730))

(assert (= (and b!5551728 (not c!971782)) b!5551729))

(assert (= (or b!5551727 b!5551730) bm!413786))

(declare-fun m!6545288 () Bool)

(assert (=> b!5551727 m!6545288))

(declare-fun m!6545290 () Bool)

(assert (=> bm!413786 m!6545290))

(assert (=> b!5551731 m!6545108))

(assert (=> b!5551361 d!1757688))

(declare-fun d!1757690 () Bool)

(declare-fun choose!42093 ((InoxSet Context!9834) Int) (InoxSet Context!9834))

(assert (=> d!1757690 (= (flatMap!1146 z!1189 lambda!297729) (choose!42093 z!1189 lambda!297729))))

(declare-fun bs!1286161 () Bool)

(assert (= bs!1286161 d!1757690))

(declare-fun m!6545292 () Bool)

(assert (=> bs!1286161 m!6545292))

(assert (=> b!5551361 d!1757690))

(declare-fun bs!1286163 () Bool)

(declare-fun d!1757692 () Bool)

(assert (= bs!1286163 (and d!1757692 d!1757654)))

(declare-fun lambda!297762 () Int)

(assert (=> bs!1286163 (= lambda!297762 lambda!297747)))

(declare-fun bs!1286164 () Bool)

(assert (= bs!1286164 (and d!1757692 d!1757660)))

(assert (=> bs!1286164 (= lambda!297762 lambda!297750)))

(declare-fun b!5551773 () Bool)

(declare-fun e!3429065 () Bool)

(assert (=> b!5551773 (= e!3429065 (isEmpty!34564 (t!376161 (unfocusZipperList!961 zl!343))))))

(declare-fun b!5551774 () Bool)

(declare-fun e!3429067 () Bool)

(declare-fun lt!2250398 () Regex!15533)

(declare-fun isUnion!538 (Regex!15533) Bool)

(assert (=> b!5551774 (= e!3429067 (isUnion!538 lt!2250398))))

(declare-fun b!5551775 () Bool)

(declare-fun e!3429069 () Bool)

(declare-fun isEmptyLang!1108 (Regex!15533) Bool)

(assert (=> b!5551775 (= e!3429069 (isEmptyLang!1108 lt!2250398))))

(declare-fun b!5551776 () Bool)

(assert (=> b!5551776 (= e!3429069 e!3429067)))

(declare-fun c!971797 () Bool)

(assert (=> b!5551776 (= c!971797 (isEmpty!34564 (tail!10948 (unfocusZipperList!961 zl!343))))))

(declare-fun b!5551777 () Bool)

(declare-fun e!3429068 () Regex!15533)

(declare-fun e!3429066 () Regex!15533)

(assert (=> b!5551777 (= e!3429068 e!3429066)))

(declare-fun c!971799 () Bool)

(assert (=> b!5551777 (= c!971799 ((_ is Cons!62774) (unfocusZipperList!961 zl!343)))))

(declare-fun b!5551778 () Bool)

(declare-fun e!3429070 () Bool)

(assert (=> b!5551778 (= e!3429070 e!3429069)))

(declare-fun c!971796 () Bool)

(assert (=> b!5551778 (= c!971796 (isEmpty!34564 (unfocusZipperList!961 zl!343)))))

(assert (=> d!1757692 e!3429070))

(declare-fun res!2360020 () Bool)

(assert (=> d!1757692 (=> (not res!2360020) (not e!3429070))))

(assert (=> d!1757692 (= res!2360020 (validRegex!7269 lt!2250398))))

(assert (=> d!1757692 (= lt!2250398 e!3429068)))

(declare-fun c!971798 () Bool)

(assert (=> d!1757692 (= c!971798 e!3429065)))

(declare-fun res!2360019 () Bool)

(assert (=> d!1757692 (=> (not res!2360019) (not e!3429065))))

(assert (=> d!1757692 (= res!2360019 ((_ is Cons!62774) (unfocusZipperList!961 zl!343)))))

(assert (=> d!1757692 (forall!14707 (unfocusZipperList!961 zl!343) lambda!297762)))

(assert (=> d!1757692 (= (generalisedUnion!1396 (unfocusZipperList!961 zl!343)) lt!2250398)))

(declare-fun b!5551779 () Bool)

(assert (=> b!5551779 (= e!3429068 (h!69222 (unfocusZipperList!961 zl!343)))))

(declare-fun b!5551780 () Bool)

(assert (=> b!5551780 (= e!3429066 (Union!15533 (h!69222 (unfocusZipperList!961 zl!343)) (generalisedUnion!1396 (t!376161 (unfocusZipperList!961 zl!343)))))))

(declare-fun b!5551781 () Bool)

(assert (=> b!5551781 (= e!3429066 EmptyLang!15533)))

(declare-fun b!5551782 () Bool)

(assert (=> b!5551782 (= e!3429067 (= lt!2250398 (head!11853 (unfocusZipperList!961 zl!343))))))

(assert (= (and d!1757692 res!2360019) b!5551773))

(assert (= (and d!1757692 c!971798) b!5551779))

(assert (= (and d!1757692 (not c!971798)) b!5551777))

(assert (= (and b!5551777 c!971799) b!5551780))

(assert (= (and b!5551777 (not c!971799)) b!5551781))

(assert (= (and d!1757692 res!2360020) b!5551778))

(assert (= (and b!5551778 c!971796) b!5551775))

(assert (= (and b!5551778 (not c!971796)) b!5551776))

(assert (= (and b!5551776 c!971797) b!5551782))

(assert (= (and b!5551776 (not c!971797)) b!5551774))

(declare-fun m!6545294 () Bool)

(assert (=> b!5551780 m!6545294))

(declare-fun m!6545296 () Bool)

(assert (=> b!5551775 m!6545296))

(declare-fun m!6545298 () Bool)

(assert (=> b!5551773 m!6545298))

(declare-fun m!6545300 () Bool)

(assert (=> d!1757692 m!6545300))

(assert (=> d!1757692 m!6545078))

(declare-fun m!6545302 () Bool)

(assert (=> d!1757692 m!6545302))

(assert (=> b!5551778 m!6545078))

(declare-fun m!6545304 () Bool)

(assert (=> b!5551778 m!6545304))

(assert (=> b!5551776 m!6545078))

(declare-fun m!6545306 () Bool)

(assert (=> b!5551776 m!6545306))

(assert (=> b!5551776 m!6545306))

(declare-fun m!6545308 () Bool)

(assert (=> b!5551776 m!6545308))

(assert (=> b!5551782 m!6545078))

(declare-fun m!6545310 () Bool)

(assert (=> b!5551782 m!6545310))

(declare-fun m!6545312 () Bool)

(assert (=> b!5551774 m!6545312))

(assert (=> b!5551372 d!1757692))

(declare-fun bs!1286167 () Bool)

(declare-fun d!1757694 () Bool)

(assert (= bs!1286167 (and d!1757694 d!1757654)))

(declare-fun lambda!297766 () Int)

(assert (=> bs!1286167 (= lambda!297766 lambda!297747)))

(declare-fun bs!1286168 () Bool)

(assert (= bs!1286168 (and d!1757694 d!1757660)))

(assert (=> bs!1286168 (= lambda!297766 lambda!297750)))

(declare-fun bs!1286169 () Bool)

(assert (= bs!1286169 (and d!1757694 d!1757692)))

(assert (=> bs!1286169 (= lambda!297766 lambda!297762)))

(declare-fun lt!2250401 () List!62898)

(assert (=> d!1757694 (forall!14707 lt!2250401 lambda!297766)))

(declare-fun e!3429073 () List!62898)

(assert (=> d!1757694 (= lt!2250401 e!3429073)))

(declare-fun c!971802 () Bool)

(assert (=> d!1757694 (= c!971802 ((_ is Cons!62775) zl!343))))

(assert (=> d!1757694 (= (unfocusZipperList!961 zl!343) lt!2250401)))

(declare-fun b!5551787 () Bool)

(assert (=> b!5551787 (= e!3429073 (Cons!62774 (generalisedConcat!1148 (exprs!5417 (h!69223 zl!343))) (unfocusZipperList!961 (t!376162 zl!343))))))

(declare-fun b!5551788 () Bool)

(assert (=> b!5551788 (= e!3429073 Nil!62774)))

(assert (= (and d!1757694 c!971802) b!5551787))

(assert (= (and d!1757694 (not c!971802)) b!5551788))

(declare-fun m!6545322 () Bool)

(assert (=> d!1757694 m!6545322))

(assert (=> b!5551787 m!6545070))

(declare-fun m!6545324 () Bool)

(assert (=> b!5551787 m!6545324))

(assert (=> b!5551372 d!1757694))

(declare-fun bs!1286170 () Bool)

(declare-fun d!1757698 () Bool)

(assert (= bs!1286170 (and d!1757698 b!5551361)))

(declare-fun lambda!297769 () Int)

(assert (=> bs!1286170 (= lambda!297769 lambda!297729)))

(assert (=> d!1757698 true))

(assert (=> d!1757698 (= (derivationStepZipper!1636 z!1189 (h!69224 s!2326)) (flatMap!1146 z!1189 lambda!297769))))

(declare-fun bs!1286171 () Bool)

(assert (= bs!1286171 d!1757698))

(declare-fun m!6545326 () Bool)

(assert (=> bs!1286171 m!6545326))

(assert (=> b!5551373 d!1757698))

(declare-fun bs!1286172 () Bool)

(declare-fun d!1757700 () Bool)

(assert (= bs!1286172 (and d!1757700 d!1757654)))

(declare-fun lambda!297770 () Int)

(assert (=> bs!1286172 (= lambda!297770 lambda!297747)))

(declare-fun bs!1286173 () Bool)

(assert (= bs!1286173 (and d!1757700 d!1757660)))

(assert (=> bs!1286173 (= lambda!297770 lambda!297750)))

(declare-fun bs!1286174 () Bool)

(assert (= bs!1286174 (and d!1757700 d!1757692)))

(assert (=> bs!1286174 (= lambda!297770 lambda!297762)))

(declare-fun bs!1286175 () Bool)

(assert (= bs!1286175 (and d!1757700 d!1757694)))

(assert (=> bs!1286175 (= lambda!297770 lambda!297766)))

(assert (=> d!1757700 (= (inv!82079 (h!69223 zl!343)) (forall!14707 (exprs!5417 (h!69223 zl!343)) lambda!297770))))

(declare-fun bs!1286176 () Bool)

(assert (= bs!1286176 d!1757700))

(declare-fun m!6545328 () Bool)

(assert (=> bs!1286176 m!6545328))

(assert (=> b!5551362 d!1757700))

(declare-fun d!1757702 () Bool)

(assert (=> d!1757702 (= (isEmpty!34565 (t!376162 zl!343)) ((_ is Nil!62775) (t!376162 zl!343)))))

(assert (=> b!5551364 d!1757702))

(declare-fun d!1757704 () Bool)

(declare-fun choose!42094 (Int) Bool)

(assert (=> d!1757704 (= (Exists!2633 lambda!297727) (choose!42094 lambda!297727))))

(declare-fun bs!1286177 () Bool)

(assert (= bs!1286177 d!1757704))

(declare-fun m!6545330 () Bool)

(assert (=> bs!1286177 m!6545330))

(assert (=> b!5551366 d!1757704))

(declare-fun b!5551851 () Bool)

(declare-fun res!2360056 () Bool)

(declare-fun e!3429107 () Bool)

(assert (=> b!5551851 (=> (not res!2360056) (not e!3429107))))

(declare-fun lt!2250414 () Option!15542)

(declare-fun get!21605 (Option!15542) tuple2!65260)

(assert (=> b!5551851 (= res!2360056 (matchR!7718 (regOne!31578 r!7292) (_1!35933 (get!21605 lt!2250414))))))

(declare-fun b!5551852 () Bool)

(declare-fun e!3429109 () Option!15542)

(assert (=> b!5551852 (= e!3429109 (Some!15541 (tuple2!65261 Nil!62776 s!2326)))))

(declare-fun b!5551853 () Bool)

(declare-fun res!2360057 () Bool)

(assert (=> b!5551853 (=> (not res!2360057) (not e!3429107))))

(assert (=> b!5551853 (= res!2360057 (matchR!7718 (regTwo!31578 r!7292) (_2!35933 (get!21605 lt!2250414))))))

(declare-fun b!5551854 () Bool)

(declare-fun e!3429106 () Option!15542)

(assert (=> b!5551854 (= e!3429109 e!3429106)))

(declare-fun c!971819 () Bool)

(assert (=> b!5551854 (= c!971819 ((_ is Nil!62776) s!2326))))

(declare-fun d!1757706 () Bool)

(declare-fun e!3429108 () Bool)

(assert (=> d!1757706 e!3429108))

(declare-fun res!2360055 () Bool)

(assert (=> d!1757706 (=> res!2360055 e!3429108)))

(assert (=> d!1757706 (= res!2360055 e!3429107)))

(declare-fun res!2360058 () Bool)

(assert (=> d!1757706 (=> (not res!2360058) (not e!3429107))))

(assert (=> d!1757706 (= res!2360058 (isDefined!12245 lt!2250414))))

(assert (=> d!1757706 (= lt!2250414 e!3429109)))

(declare-fun c!971818 () Bool)

(declare-fun e!3429105 () Bool)

(assert (=> d!1757706 (= c!971818 e!3429105)))

(declare-fun res!2360059 () Bool)

(assert (=> d!1757706 (=> (not res!2360059) (not e!3429105))))

(assert (=> d!1757706 (= res!2360059 (matchR!7718 (regOne!31578 r!7292) Nil!62776))))

(assert (=> d!1757706 (validRegex!7269 (regOne!31578 r!7292))))

(assert (=> d!1757706 (= (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) Nil!62776 s!2326 s!2326) lt!2250414)))

(declare-fun b!5551855 () Bool)

(assert (=> b!5551855 (= e!3429106 None!15541)))

(declare-fun b!5551856 () Bool)

(assert (=> b!5551856 (= e!3429108 (not (isDefined!12245 lt!2250414)))))

(declare-fun b!5551857 () Bool)

(declare-fun ++!13771 (List!62900 List!62900) List!62900)

(assert (=> b!5551857 (= e!3429107 (= (++!13771 (_1!35933 (get!21605 lt!2250414)) (_2!35933 (get!21605 lt!2250414))) s!2326))))

(declare-fun b!5551858 () Bool)

(assert (=> b!5551858 (= e!3429105 (matchR!7718 (regTwo!31578 r!7292) s!2326))))

(declare-fun b!5551859 () Bool)

(declare-fun lt!2250415 () Unit!155526)

(declare-fun lt!2250416 () Unit!155526)

(assert (=> b!5551859 (= lt!2250415 lt!2250416)))

(assert (=> b!5551859 (= (++!13771 (++!13771 Nil!62776 (Cons!62776 (h!69224 s!2326) Nil!62776)) (t!376163 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1940 (List!62900 C!31336 List!62900 List!62900) Unit!155526)

(assert (=> b!5551859 (= lt!2250416 (lemmaMoveElementToOtherListKeepsConcatEq!1940 Nil!62776 (h!69224 s!2326) (t!376163 s!2326) s!2326))))

(assert (=> b!5551859 (= e!3429106 (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) (++!13771 Nil!62776 (Cons!62776 (h!69224 s!2326) Nil!62776)) (t!376163 s!2326) s!2326))))

(assert (= (and d!1757706 res!2360059) b!5551858))

(assert (= (and d!1757706 c!971818) b!5551852))

(assert (= (and d!1757706 (not c!971818)) b!5551854))

(assert (= (and b!5551854 c!971819) b!5551855))

(assert (= (and b!5551854 (not c!971819)) b!5551859))

(assert (= (and d!1757706 res!2360058) b!5551851))

(assert (= (and b!5551851 res!2360056) b!5551853))

(assert (= (and b!5551853 res!2360057) b!5551857))

(assert (= (and d!1757706 (not res!2360055)) b!5551856))

(declare-fun m!6545346 () Bool)

(assert (=> b!5551858 m!6545346))

(declare-fun m!6545348 () Bool)

(assert (=> b!5551853 m!6545348))

(declare-fun m!6545350 () Bool)

(assert (=> b!5551853 m!6545350))

(declare-fun m!6545352 () Bool)

(assert (=> b!5551856 m!6545352))

(assert (=> d!1757706 m!6545352))

(declare-fun m!6545354 () Bool)

(assert (=> d!1757706 m!6545354))

(declare-fun m!6545356 () Bool)

(assert (=> d!1757706 m!6545356))

(declare-fun m!6545358 () Bool)

(assert (=> b!5551859 m!6545358))

(assert (=> b!5551859 m!6545358))

(declare-fun m!6545360 () Bool)

(assert (=> b!5551859 m!6545360))

(declare-fun m!6545362 () Bool)

(assert (=> b!5551859 m!6545362))

(assert (=> b!5551859 m!6545358))

(declare-fun m!6545364 () Bool)

(assert (=> b!5551859 m!6545364))

(assert (=> b!5551857 m!6545348))

(declare-fun m!6545366 () Bool)

(assert (=> b!5551857 m!6545366))

(assert (=> b!5551851 m!6545348))

(declare-fun m!6545368 () Bool)

(assert (=> b!5551851 m!6545368))

(assert (=> b!5551366 d!1757706))

(declare-fun d!1757714 () Bool)

(assert (=> d!1757714 (= (Exists!2633 lambda!297728) (choose!42094 lambda!297728))))

(declare-fun bs!1286179 () Bool)

(assert (= bs!1286179 d!1757714))

(declare-fun m!6545370 () Bool)

(assert (=> bs!1286179 m!6545370))

(assert (=> b!5551366 d!1757714))

(declare-fun bs!1286180 () Bool)

(declare-fun d!1757716 () Bool)

(assert (= bs!1286180 (and d!1757716 b!5551366)))

(declare-fun lambda!297773 () Int)

(assert (=> bs!1286180 (= lambda!297773 lambda!297727)))

(assert (=> bs!1286180 (not (= lambda!297773 lambda!297728))))

(declare-fun bs!1286182 () Bool)

(assert (= bs!1286182 (and d!1757716 b!5551416)))

(assert (=> bs!1286182 (not (= lambda!297773 lambda!297734))))

(declare-fun bs!1286184 () Bool)

(assert (= bs!1286184 (and d!1757716 b!5551417)))

(assert (=> bs!1286184 (not (= lambda!297773 lambda!297735))))

(assert (=> d!1757716 true))

(assert (=> d!1757716 true))

(assert (=> d!1757716 true))

(assert (=> d!1757716 (= (isDefined!12245 (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) Nil!62776 s!2326 s!2326)) (Exists!2633 lambda!297773))))

(declare-fun lt!2250428 () Unit!155526)

(declare-fun choose!42097 (Regex!15533 Regex!15533 List!62900) Unit!155526)

(assert (=> d!1757716 (= lt!2250428 (choose!42097 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326))))

(assert (=> d!1757716 (validRegex!7269 (regOne!31578 r!7292))))

(assert (=> d!1757716 (= (lemmaFindConcatSeparationEquivalentToExists!1720 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326) lt!2250428)))

(declare-fun bs!1286185 () Bool)

(assert (= bs!1286185 d!1757716))

(assert (=> bs!1286185 m!6545090))

(assert (=> bs!1286185 m!6545092))

(declare-fun m!6545400 () Bool)

(assert (=> bs!1286185 m!6545400))

(declare-fun m!6545402 () Bool)

(assert (=> bs!1286185 m!6545402))

(assert (=> bs!1286185 m!6545356))

(assert (=> bs!1286185 m!6545090))

(assert (=> b!5551366 d!1757716))

(declare-fun bs!1286190 () Bool)

(declare-fun d!1757724 () Bool)

(assert (= bs!1286190 (and d!1757724 b!5551366)))

(declare-fun lambda!297781 () Int)

(assert (=> bs!1286190 (= lambda!297781 lambda!297727)))

(declare-fun bs!1286191 () Bool)

(assert (= bs!1286191 (and d!1757724 d!1757716)))

(assert (=> bs!1286191 (= lambda!297781 lambda!297773)))

(declare-fun bs!1286192 () Bool)

(assert (= bs!1286192 (and d!1757724 b!5551417)))

(assert (=> bs!1286192 (not (= lambda!297781 lambda!297735))))

(declare-fun bs!1286193 () Bool)

(assert (= bs!1286193 (and d!1757724 b!5551416)))

(assert (=> bs!1286193 (not (= lambda!297781 lambda!297734))))

(assert (=> bs!1286190 (not (= lambda!297781 lambda!297728))))

(assert (=> d!1757724 true))

(assert (=> d!1757724 true))

(assert (=> d!1757724 true))

(declare-fun bs!1286194 () Bool)

(assert (= bs!1286194 d!1757724))

(declare-fun lambda!297782 () Int)

(assert (=> bs!1286194 (not (= lambda!297782 lambda!297781))))

(assert (=> bs!1286190 (not (= lambda!297782 lambda!297727))))

(assert (=> bs!1286191 (not (= lambda!297782 lambda!297773))))

(assert (=> bs!1286192 (= lambda!297782 lambda!297735)))

(assert (=> bs!1286193 (not (= lambda!297782 lambda!297734))))

(assert (=> bs!1286190 (= lambda!297782 lambda!297728)))

(assert (=> d!1757724 true))

(assert (=> d!1757724 true))

(assert (=> d!1757724 true))

(assert (=> d!1757724 (= (Exists!2633 lambda!297781) (Exists!2633 lambda!297782))))

(declare-fun lt!2250434 () Unit!155526)

(declare-fun choose!42099 (Regex!15533 Regex!15533 List!62900) Unit!155526)

(assert (=> d!1757724 (= lt!2250434 (choose!42099 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326))))

(assert (=> d!1757724 (validRegex!7269 (regOne!31578 r!7292))))

(assert (=> d!1757724 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1262 (regOne!31578 r!7292) (regTwo!31578 r!7292) s!2326) lt!2250434)))

(declare-fun m!6545408 () Bool)

(assert (=> bs!1286194 m!6545408))

(declare-fun m!6545410 () Bool)

(assert (=> bs!1286194 m!6545410))

(declare-fun m!6545412 () Bool)

(assert (=> bs!1286194 m!6545412))

(assert (=> bs!1286194 m!6545356))

(assert (=> b!5551366 d!1757724))

(declare-fun d!1757728 () Bool)

(declare-fun isEmpty!34568 (Option!15542) Bool)

(assert (=> d!1757728 (= (isDefined!12245 (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) Nil!62776 s!2326 s!2326)) (not (isEmpty!34568 (findConcatSeparation!1956 (regOne!31578 r!7292) (regTwo!31578 r!7292) Nil!62776 s!2326 s!2326))))))

(declare-fun bs!1286195 () Bool)

(assert (= bs!1286195 d!1757728))

(assert (=> bs!1286195 m!6545090))

(declare-fun m!6545414 () Bool)

(assert (=> bs!1286195 m!6545414))

(assert (=> b!5551366 d!1757728))

(declare-fun e!3429137 () Bool)

(assert (=> b!5551358 (= tp!1531765 e!3429137)))

(declare-fun b!5551920 () Bool)

(declare-fun tp!1531780 () Bool)

(declare-fun tp!1531782 () Bool)

(assert (=> b!5551920 (= e!3429137 (and tp!1531780 tp!1531782))))

(declare-fun b!5551919 () Bool)

(declare-fun tp!1531779 () Bool)

(assert (=> b!5551919 (= e!3429137 tp!1531779)))

(declare-fun b!5551917 () Bool)

(assert (=> b!5551917 (= e!3429137 tp_is_empty!40319)))

(declare-fun b!5551918 () Bool)

(declare-fun tp!1531778 () Bool)

(declare-fun tp!1531781 () Bool)

(assert (=> b!5551918 (= e!3429137 (and tp!1531778 tp!1531781))))

(assert (= (and b!5551358 ((_ is ElementMatch!15533) (reg!15862 r!7292))) b!5551917))

(assert (= (and b!5551358 ((_ is Concat!24378) (reg!15862 r!7292))) b!5551918))

(assert (= (and b!5551358 ((_ is Star!15533) (reg!15862 r!7292))) b!5551919))

(assert (= (and b!5551358 ((_ is Union!15533) (reg!15862 r!7292))) b!5551920))

(declare-fun b!5551928 () Bool)

(declare-fun e!3429143 () Bool)

(declare-fun tp!1531787 () Bool)

(assert (=> b!5551928 (= e!3429143 tp!1531787)))

(declare-fun e!3429142 () Bool)

(declare-fun tp!1531788 () Bool)

(declare-fun b!5551927 () Bool)

(assert (=> b!5551927 (= e!3429142 (and (inv!82079 (h!69223 (t!376162 zl!343))) e!3429143 tp!1531788))))

(assert (=> b!5551362 (= tp!1531764 e!3429142)))

(assert (= b!5551927 b!5551928))

(assert (= (and b!5551362 ((_ is Cons!62775) (t!376162 zl!343))) b!5551927))

(declare-fun m!6545416 () Bool)

(assert (=> b!5551927 m!6545416))

(declare-fun b!5551933 () Bool)

(declare-fun e!3429146 () Bool)

(declare-fun tp!1531793 () Bool)

(declare-fun tp!1531794 () Bool)

(assert (=> b!5551933 (= e!3429146 (and tp!1531793 tp!1531794))))

(assert (=> b!5551363 (= tp!1531761 e!3429146)))

(assert (= (and b!5551363 ((_ is Cons!62774) (exprs!5417 setElem!36919))) b!5551933))

(declare-fun b!5551939 () Bool)

(declare-fun e!3429151 () Bool)

(declare-fun tp!1531797 () Bool)

(assert (=> b!5551939 (= e!3429151 (and tp_is_empty!40319 tp!1531797))))

(assert (=> b!5551374 (= tp!1531762 e!3429151)))

(assert (= (and b!5551374 ((_ is Cons!62776) (t!376163 s!2326))) b!5551939))

(declare-fun condSetEmpty!36922 () Bool)

(assert (=> setNonEmpty!36919 (= condSetEmpty!36922 (= setRest!36919 ((as const (Array Context!9834 Bool)) false)))))

(declare-fun setRes!36922 () Bool)

(assert (=> setNonEmpty!36919 (= tp!1531766 setRes!36922)))

(declare-fun setIsEmpty!36922 () Bool)

(assert (=> setIsEmpty!36922 setRes!36922))

(declare-fun e!3429154 () Bool)

(declare-fun setNonEmpty!36922 () Bool)

(declare-fun setElem!36922 () Context!9834)

(declare-fun tp!1531802 () Bool)

(assert (=> setNonEmpty!36922 (= setRes!36922 (and tp!1531802 (inv!82079 setElem!36922) e!3429154))))

(declare-fun setRest!36922 () (InoxSet Context!9834))

(assert (=> setNonEmpty!36922 (= setRest!36919 ((_ map or) (store ((as const (Array Context!9834 Bool)) false) setElem!36922 true) setRest!36922))))

(declare-fun b!5551947 () Bool)

(declare-fun tp!1531803 () Bool)

(assert (=> b!5551947 (= e!3429154 tp!1531803)))

(assert (= (and setNonEmpty!36919 condSetEmpty!36922) setIsEmpty!36922))

(assert (= (and setNonEmpty!36919 (not condSetEmpty!36922)) setNonEmpty!36922))

(assert (= setNonEmpty!36922 b!5551947))

(declare-fun m!6545418 () Bool)

(assert (=> setNonEmpty!36922 m!6545418))

(declare-fun e!3429155 () Bool)

(assert (=> b!5551375 (= tp!1531760 e!3429155)))

(declare-fun b!5551951 () Bool)

(declare-fun tp!1531806 () Bool)

(declare-fun tp!1531808 () Bool)

(assert (=> b!5551951 (= e!3429155 (and tp!1531806 tp!1531808))))

(declare-fun b!5551950 () Bool)

(declare-fun tp!1531805 () Bool)

(assert (=> b!5551950 (= e!3429155 tp!1531805)))

(declare-fun b!5551948 () Bool)

(assert (=> b!5551948 (= e!3429155 tp_is_empty!40319)))

(declare-fun b!5551949 () Bool)

(declare-fun tp!1531804 () Bool)

(declare-fun tp!1531807 () Bool)

(assert (=> b!5551949 (= e!3429155 (and tp!1531804 tp!1531807))))

(assert (= (and b!5551375 ((_ is ElementMatch!15533) (regOne!31578 r!7292))) b!5551948))

(assert (= (and b!5551375 ((_ is Concat!24378) (regOne!31578 r!7292))) b!5551949))

(assert (= (and b!5551375 ((_ is Star!15533) (regOne!31578 r!7292))) b!5551950))

(assert (= (and b!5551375 ((_ is Union!15533) (regOne!31578 r!7292))) b!5551951))

(declare-fun e!3429156 () Bool)

(assert (=> b!5551375 (= tp!1531767 e!3429156)))

(declare-fun b!5551955 () Bool)

(declare-fun tp!1531811 () Bool)

(declare-fun tp!1531813 () Bool)

(assert (=> b!5551955 (= e!3429156 (and tp!1531811 tp!1531813))))

(declare-fun b!5551954 () Bool)

(declare-fun tp!1531810 () Bool)

(assert (=> b!5551954 (= e!3429156 tp!1531810)))

(declare-fun b!5551952 () Bool)

(assert (=> b!5551952 (= e!3429156 tp_is_empty!40319)))

(declare-fun b!5551953 () Bool)

(declare-fun tp!1531809 () Bool)

(declare-fun tp!1531812 () Bool)

(assert (=> b!5551953 (= e!3429156 (and tp!1531809 tp!1531812))))

(assert (= (and b!5551375 ((_ is ElementMatch!15533) (regTwo!31578 r!7292))) b!5551952))

(assert (= (and b!5551375 ((_ is Concat!24378) (regTwo!31578 r!7292))) b!5551953))

(assert (= (and b!5551375 ((_ is Star!15533) (regTwo!31578 r!7292))) b!5551954))

(assert (= (and b!5551375 ((_ is Union!15533) (regTwo!31578 r!7292))) b!5551955))

(declare-fun b!5551956 () Bool)

(declare-fun e!3429157 () Bool)

(declare-fun tp!1531814 () Bool)

(declare-fun tp!1531815 () Bool)

(assert (=> b!5551956 (= e!3429157 (and tp!1531814 tp!1531815))))

(assert (=> b!5551356 (= tp!1531758 e!3429157)))

(assert (= (and b!5551356 ((_ is Cons!62774) (exprs!5417 (h!69223 zl!343)))) b!5551956))

(declare-fun e!3429158 () Bool)

(assert (=> b!5551357 (= tp!1531763 e!3429158)))

(declare-fun b!5551960 () Bool)

(declare-fun tp!1531818 () Bool)

(declare-fun tp!1531820 () Bool)

(assert (=> b!5551960 (= e!3429158 (and tp!1531818 tp!1531820))))

(declare-fun b!5551959 () Bool)

(declare-fun tp!1531817 () Bool)

(assert (=> b!5551959 (= e!3429158 tp!1531817)))

(declare-fun b!5551957 () Bool)

(assert (=> b!5551957 (= e!3429158 tp_is_empty!40319)))

(declare-fun b!5551958 () Bool)

(declare-fun tp!1531816 () Bool)

(declare-fun tp!1531819 () Bool)

(assert (=> b!5551958 (= e!3429158 (and tp!1531816 tp!1531819))))

(assert (= (and b!5551357 ((_ is ElementMatch!15533) (regOne!31579 r!7292))) b!5551957))

(assert (= (and b!5551357 ((_ is Concat!24378) (regOne!31579 r!7292))) b!5551958))

(assert (= (and b!5551357 ((_ is Star!15533) (regOne!31579 r!7292))) b!5551959))

(assert (= (and b!5551357 ((_ is Union!15533) (regOne!31579 r!7292))) b!5551960))

(declare-fun e!3429159 () Bool)

(assert (=> b!5551357 (= tp!1531759 e!3429159)))

(declare-fun b!5551964 () Bool)

(declare-fun tp!1531823 () Bool)

(declare-fun tp!1531825 () Bool)

(assert (=> b!5551964 (= e!3429159 (and tp!1531823 tp!1531825))))

(declare-fun b!5551963 () Bool)

(declare-fun tp!1531822 () Bool)

(assert (=> b!5551963 (= e!3429159 tp!1531822)))

(declare-fun b!5551961 () Bool)

(assert (=> b!5551961 (= e!3429159 tp_is_empty!40319)))

(declare-fun b!5551962 () Bool)

(declare-fun tp!1531821 () Bool)

(declare-fun tp!1531824 () Bool)

(assert (=> b!5551962 (= e!3429159 (and tp!1531821 tp!1531824))))

(assert (= (and b!5551357 ((_ is ElementMatch!15533) (regTwo!31579 r!7292))) b!5551961))

(assert (= (and b!5551357 ((_ is Concat!24378) (regTwo!31579 r!7292))) b!5551962))

(assert (= (and b!5551357 ((_ is Star!15533) (regTwo!31579 r!7292))) b!5551963))

(assert (= (and b!5551357 ((_ is Union!15533) (regTwo!31579 r!7292))) b!5551964))

(declare-fun b_lambda!210903 () Bool)

(assert (= b_lambda!210901 (or b!5551361 b_lambda!210903)))

(declare-fun bs!1286197 () Bool)

(declare-fun d!1757730 () Bool)

(assert (= bs!1286197 (and d!1757730 b!5551361)))

(assert (=> bs!1286197 (= (dynLambda!24552 lambda!297729 (h!69223 zl!343)) (derivationStepZipperUp!801 (h!69223 zl!343) (h!69224 s!2326)))))

(assert (=> bs!1286197 m!6545104))

(assert (=> d!1757686 d!1757730))

(check-sat (not b!5551537) (not d!1757658) (not b!5551478) (not b!5551773) (not bm!413786) (not bm!413785) (not d!1757704) (not b!5551597) (not b!5551960) (not b!5551955) (not d!1757654) (not b!5551690) (not b!5551487) (not b!5551962) (not b!5551939) (not b!5551851) (not b!5551775) (not b!5551700) (not b!5551548) (not b!5551474) (not b!5551947) (not bm!413779) (not b!5551951) (not d!1757698) (not b!5551954) (not b!5551600) (not b!5551774) (not b!5551928) (not b_lambda!210903) (not b!5551950) (not setNonEmpty!36922) (not bm!413731) (not b!5551856) (not d!1757700) (not b!5551857) (not b!5551920) (not b!5551964) (not b!5551933) (not b!5551858) (not b!5551592) (not d!1757714) (not b!5551593) (not b!5551419) (not b!5551956) (not d!1757660) (not b!5551963) (not bm!413728) (not b!5551949) (not bm!413742) (not d!1757706) (not b!5551958) (not d!1757682) (not b!5551727) (not b!5551919) (not b!5551780) (not bs!1286197) (not d!1757686) (not b!5551953) (not bm!413765) (not b!5551959) (not b!5551927) (not d!1757692) (not b!5551485) (not b!5551591) (not b!5551853) (not b!5551787) (not d!1757636) (not bm!413781) (not bm!413782) (not bm!413727) (not b!5551627) (not b!5551598) (not b!5551782) (not d!1757694) (not b!5551420) tp_is_empty!40319 (not b!5551631) (not bm!413740) (not b!5551918) (not b!5551477) (not d!1757640) (not b!5551778) (not b!5551481) (not d!1757724) (not b!5551595) (not d!1757728) (not d!1757716) (not d!1757690) (not d!1757646) (not b!5551776) (not b!5551859) (not b!5551704) (not b!5551731))
(check-sat)
