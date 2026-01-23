; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84034 () Bool)

(assert start!84034)

(declare-fun b!941383 () Bool)

(assert (=> b!941383 true))

(assert (=> b!941383 true))

(assert (=> b!941383 true))

(declare-fun lambda!31720 () Int)

(declare-fun lambda!31719 () Int)

(assert (=> b!941383 (not (= lambda!31720 lambda!31719))))

(assert (=> b!941383 true))

(assert (=> b!941383 true))

(assert (=> b!941383 true))

(declare-fun bs!238837 () Bool)

(declare-fun b!941380 () Bool)

(assert (= bs!238837 (and b!941380 b!941383)))

(declare-datatypes ((C!5736 0))(
  ( (C!5737 (val!3116 Int)) )
))
(declare-datatypes ((Regex!2583 0))(
  ( (ElementMatch!2583 (c!153190 C!5736)) (Concat!4416 (regOne!5678 Regex!2583) (regTwo!5678 Regex!2583)) (EmptyExpr!2583) (Star!2583 (reg!2912 Regex!2583)) (EmptyLang!2583) (Union!2583 (regOne!5679 Regex!2583) (regTwo!5679 Regex!2583)) )
))
(declare-fun r!15766 () Regex!2583)

(declare-fun lambda!31721 () Int)

(declare-fun lt!342402 () Regex!2583)

(declare-fun lt!342396 () Regex!2583)

(declare-fun lt!342401 () Regex!2583)

(assert (=> bs!238837 (= (and (= lt!342401 (reg!2912 r!15766)) (= lt!342396 lt!342402)) (= lambda!31721 lambda!31719))))

(assert (=> bs!238837 (not (= lambda!31721 lambda!31720))))

(assert (=> b!941380 true))

(assert (=> b!941380 true))

(assert (=> b!941380 true))

(declare-fun lambda!31722 () Int)

(assert (=> bs!238837 (not (= lambda!31722 lambda!31719))))

(assert (=> bs!238837 (= (and (= lt!342401 (reg!2912 r!15766)) (= lt!342396 lt!342402)) (= lambda!31722 lambda!31720))))

(assert (=> b!941380 (not (= lambda!31722 lambda!31721))))

(assert (=> b!941380 true))

(assert (=> b!941380 true))

(assert (=> b!941380 true))

(declare-fun b!941379 () Bool)

(declare-fun res!427589 () Bool)

(declare-fun e!610649 () Bool)

(assert (=> b!941379 (=> res!427589 e!610649)))

(declare-fun validRegex!1052 (Regex!2583) Bool)

(assert (=> b!941379 (= res!427589 (not (validRegex!1052 lt!342401)))))

(declare-fun e!610647 () Bool)

(assert (=> b!941380 (= e!610647 e!610649)))

(declare-fun res!427587 () Bool)

(assert (=> b!941380 (=> res!427587 e!610649)))

(declare-datatypes ((List!9813 0))(
  ( (Nil!9797) (Cons!9797 (h!15198 C!5736) (t!100859 List!9813)) )
))
(declare-fun s!10566 () List!9813)

(declare-fun isEmpty!6046 (List!9813) Bool)

(assert (=> b!941380 (= res!427587 (isEmpty!6046 s!10566))))

(declare-fun Exists!334 (Int) Bool)

(assert (=> b!941380 (= (Exists!334 lambda!31721) (Exists!334 lambda!31722))))

(declare-datatypes ((Unit!14785 0))(
  ( (Unit!14786) )
))
(declare-fun lt!342404 () Unit!14785)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!78 (Regex!2583 List!9813) Unit!14785)

(assert (=> b!941380 (= lt!342404 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!78 lt!342401 s!10566))))

(declare-fun lt!342399 () Bool)

(assert (=> b!941380 (= lt!342399 (Exists!334 lambda!31721))))

(declare-datatypes ((tuple2!11064 0))(
  ( (tuple2!11065 (_1!6358 List!9813) (_2!6358 List!9813)) )
))
(declare-datatypes ((Option!2174 0))(
  ( (None!2173) (Some!2173 (v!19590 tuple2!11064)) )
))
(declare-fun isDefined!1816 (Option!2174) Bool)

(declare-fun findConcatSeparation!280 (Regex!2583 Regex!2583 List!9813 List!9813 List!9813) Option!2174)

(assert (=> b!941380 (= lt!342399 (isDefined!1816 (findConcatSeparation!280 lt!342401 lt!342396 Nil!9797 s!10566 s!10566)))))

(declare-fun lt!342405 () Unit!14785)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!280 (Regex!2583 Regex!2583 List!9813) Unit!14785)

(assert (=> b!941380 (= lt!342405 (lemmaFindConcatSeparationEquivalentToExists!280 lt!342401 lt!342396 s!10566))))

(declare-fun matchRSpec!384 (Regex!2583 List!9813) Bool)

(assert (=> b!941380 (matchRSpec!384 lt!342396 s!10566)))

(declare-fun lt!342398 () Unit!14785)

(declare-fun mainMatchTheorem!384 (Regex!2583 List!9813) Unit!14785)

(assert (=> b!941380 (= lt!342398 (mainMatchTheorem!384 lt!342396 s!10566))))

(declare-fun b!941381 () Bool)

(declare-fun e!610644 () Bool)

(declare-fun tp_is_empty!4809 () Bool)

(assert (=> b!941381 (= e!610644 tp_is_empty!4809)))

(declare-fun b!941382 () Bool)

(declare-fun tp!291236 () Bool)

(assert (=> b!941382 (= e!610644 tp!291236)))

(declare-fun e!610648 () Bool)

(assert (=> b!941383 (= e!610648 e!610647)))

(declare-fun res!427591 () Bool)

(assert (=> b!941383 (=> res!427591 e!610647)))

(declare-fun matchR!1121 (Regex!2583 List!9813) Bool)

(assert (=> b!941383 (= res!427591 (not (matchR!1121 lt!342396 s!10566)))))

(assert (=> b!941383 (= lt!342396 (Star!2583 lt!342401))))

(declare-fun removeUselessConcat!252 (Regex!2583) Regex!2583)

(assert (=> b!941383 (= lt!342401 (removeUselessConcat!252 (reg!2912 r!15766)))))

(assert (=> b!941383 (= (Exists!334 lambda!31719) (Exists!334 lambda!31720))))

(declare-fun lt!342397 () Unit!14785)

(assert (=> b!941383 (= lt!342397 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!78 (reg!2912 r!15766) s!10566))))

(assert (=> b!941383 (= (isDefined!1816 (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 Nil!9797 s!10566 s!10566)) (Exists!334 lambda!31719))))

(declare-fun lt!342400 () Unit!14785)

(assert (=> b!941383 (= lt!342400 (lemmaFindConcatSeparationEquivalentToExists!280 (reg!2912 r!15766) lt!342402 s!10566))))

(assert (=> b!941383 (= lt!342402 (Star!2583 (reg!2912 r!15766)))))

(declare-fun b!941384 () Bool)

(declare-fun tp!291238 () Bool)

(declare-fun tp!291239 () Bool)

(assert (=> b!941384 (= e!610644 (and tp!291238 tp!291239))))

(declare-fun res!427590 () Bool)

(declare-fun e!610646 () Bool)

(assert (=> start!84034 (=> (not res!427590) (not e!610646))))

(assert (=> start!84034 (= res!427590 (validRegex!1052 r!15766))))

(assert (=> start!84034 e!610646))

(assert (=> start!84034 e!610644))

(declare-fun e!610645 () Bool)

(assert (=> start!84034 e!610645))

(declare-fun b!941385 () Bool)

(assert (=> b!941385 (= e!610646 (not e!610648))))

(declare-fun res!427592 () Bool)

(assert (=> b!941385 (=> res!427592 e!610648)))

(declare-fun lt!342403 () Bool)

(get-info :version)

(assert (=> b!941385 (= res!427592 (or lt!342403 (and ((_ is Concat!4416) r!15766) ((_ is EmptyExpr!2583) (regOne!5678 r!15766))) (and ((_ is Concat!4416) r!15766) ((_ is EmptyExpr!2583) (regTwo!5678 r!15766))) ((_ is Concat!4416) r!15766) ((_ is Union!2583) r!15766) (not ((_ is Star!2583) r!15766))))))

(assert (=> b!941385 (= lt!342403 (matchRSpec!384 r!15766 s!10566))))

(assert (=> b!941385 (= lt!342403 (matchR!1121 r!15766 s!10566))))

(declare-fun lt!342395 () Unit!14785)

(assert (=> b!941385 (= lt!342395 (mainMatchTheorem!384 r!15766 s!10566))))

(declare-fun b!941386 () Bool)

(declare-fun tp!291237 () Bool)

(assert (=> b!941386 (= e!610645 (and tp_is_empty!4809 tp!291237))))

(declare-fun b!941387 () Bool)

(declare-fun res!427588 () Bool)

(assert (=> b!941387 (=> res!427588 e!610649)))

(assert (=> b!941387 (= res!427588 (not lt!342399))))

(declare-fun b!941388 () Bool)

(declare-fun tp!291240 () Bool)

(declare-fun tp!291235 () Bool)

(assert (=> b!941388 (= e!610644 (and tp!291240 tp!291235))))

(declare-fun b!941389 () Bool)

(assert (=> b!941389 (= e!610649 (validRegex!1052 lt!342396))))

(assert (= (and start!84034 res!427590) b!941385))

(assert (= (and b!941385 (not res!427592)) b!941383))

(assert (= (and b!941383 (not res!427591)) b!941380))

(assert (= (and b!941380 (not res!427587)) b!941387))

(assert (= (and b!941387 (not res!427588)) b!941379))

(assert (= (and b!941379 (not res!427589)) b!941389))

(assert (= (and start!84034 ((_ is ElementMatch!2583) r!15766)) b!941381))

(assert (= (and start!84034 ((_ is Concat!4416) r!15766)) b!941388))

(assert (= (and start!84034 ((_ is Star!2583) r!15766)) b!941382))

(assert (= (and start!84034 ((_ is Union!2583) r!15766)) b!941384))

(assert (= (and start!84034 ((_ is Cons!9797) s!10566)) b!941386))

(declare-fun m!1158347 () Bool)

(assert (=> b!941380 m!1158347))

(declare-fun m!1158349 () Bool)

(assert (=> b!941380 m!1158349))

(declare-fun m!1158351 () Bool)

(assert (=> b!941380 m!1158351))

(declare-fun m!1158353 () Bool)

(assert (=> b!941380 m!1158353))

(assert (=> b!941380 m!1158347))

(declare-fun m!1158355 () Bool)

(assert (=> b!941380 m!1158355))

(declare-fun m!1158357 () Bool)

(assert (=> b!941380 m!1158357))

(declare-fun m!1158359 () Bool)

(assert (=> b!941380 m!1158359))

(declare-fun m!1158361 () Bool)

(assert (=> b!941380 m!1158361))

(assert (=> b!941380 m!1158351))

(declare-fun m!1158363 () Bool)

(assert (=> b!941380 m!1158363))

(declare-fun m!1158365 () Bool)

(assert (=> start!84034 m!1158365))

(declare-fun m!1158367 () Bool)

(assert (=> b!941385 m!1158367))

(declare-fun m!1158369 () Bool)

(assert (=> b!941385 m!1158369))

(declare-fun m!1158371 () Bool)

(assert (=> b!941385 m!1158371))

(declare-fun m!1158373 () Bool)

(assert (=> b!941383 m!1158373))

(declare-fun m!1158375 () Bool)

(assert (=> b!941383 m!1158375))

(declare-fun m!1158377 () Bool)

(assert (=> b!941383 m!1158377))

(declare-fun m!1158379 () Bool)

(assert (=> b!941383 m!1158379))

(declare-fun m!1158381 () Bool)

(assert (=> b!941383 m!1158381))

(assert (=> b!941383 m!1158381))

(declare-fun m!1158383 () Bool)

(assert (=> b!941383 m!1158383))

(declare-fun m!1158385 () Bool)

(assert (=> b!941383 m!1158385))

(assert (=> b!941383 m!1158377))

(declare-fun m!1158387 () Bool)

(assert (=> b!941383 m!1158387))

(declare-fun m!1158389 () Bool)

(assert (=> b!941379 m!1158389))

(declare-fun m!1158391 () Bool)

(assert (=> b!941389 m!1158391))

(check-sat (not b!941385) (not b!941379) (not b!941380) (not b!941384) (not b!941383) (not b!941382) (not b!941388) tp_is_empty!4809 (not b!941386) (not b!941389) (not start!84034))
(check-sat)
(get-model)

(declare-fun d!282567 () Bool)

(declare-fun choose!5833 (Int) Bool)

(assert (=> d!282567 (= (Exists!334 lambda!31721) (choose!5833 lambda!31721))))

(declare-fun bs!238843 () Bool)

(assert (= bs!238843 d!282567))

(declare-fun m!1158399 () Bool)

(assert (=> bs!238843 m!1158399))

(assert (=> b!941380 d!282567))

(declare-fun d!282569 () Bool)

(assert (=> d!282569 (= (isEmpty!6046 s!10566) ((_ is Nil!9797) s!10566))))

(assert (=> b!941380 d!282569))

(declare-fun bs!238864 () Bool)

(declare-fun d!282571 () Bool)

(assert (= bs!238864 (and d!282571 b!941383)))

(declare-fun lambda!31738 () Int)

(assert (=> bs!238864 (= (and (= lt!342401 (reg!2912 r!15766)) (= (Star!2583 lt!342401) lt!342402)) (= lambda!31738 lambda!31719))))

(assert (=> bs!238864 (not (= lambda!31738 lambda!31720))))

(declare-fun bs!238865 () Bool)

(assert (= bs!238865 (and d!282571 b!941380)))

(assert (=> bs!238865 (= (= (Star!2583 lt!342401) lt!342396) (= lambda!31738 lambda!31721))))

(assert (=> bs!238865 (not (= lambda!31738 lambda!31722))))

(assert (=> d!282571 true))

(assert (=> d!282571 true))

(declare-fun lambda!31739 () Int)

(assert (=> bs!238864 (not (= lambda!31739 lambda!31719))))

(assert (=> bs!238865 (not (= lambda!31739 lambda!31721))))

(assert (=> bs!238865 (= (= (Star!2583 lt!342401) lt!342396) (= lambda!31739 lambda!31722))))

(declare-fun bs!238866 () Bool)

(assert (= bs!238866 d!282571))

(assert (=> bs!238866 (not (= lambda!31739 lambda!31738))))

(assert (=> bs!238864 (= (and (= lt!342401 (reg!2912 r!15766)) (= (Star!2583 lt!342401) lt!342402)) (= lambda!31739 lambda!31720))))

(assert (=> d!282571 true))

(assert (=> d!282571 true))

(assert (=> d!282571 (= (Exists!334 lambda!31738) (Exists!334 lambda!31739))))

(declare-fun lt!342418 () Unit!14785)

(declare-fun choose!5834 (Regex!2583 List!9813) Unit!14785)

(assert (=> d!282571 (= lt!342418 (choose!5834 lt!342401 s!10566))))

(assert (=> d!282571 (validRegex!1052 lt!342401)))

(assert (=> d!282571 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!78 lt!342401 s!10566) lt!342418)))

(declare-fun m!1158437 () Bool)

(assert (=> bs!238866 m!1158437))

(declare-fun m!1158439 () Bool)

(assert (=> bs!238866 m!1158439))

(declare-fun m!1158441 () Bool)

(assert (=> bs!238866 m!1158441))

(assert (=> bs!238866 m!1158389))

(assert (=> b!941380 d!282571))

(declare-fun bs!238867 () Bool)

(declare-fun d!282589 () Bool)

(assert (= bs!238867 (and d!282589 b!941383)))

(declare-fun lambda!31742 () Int)

(assert (=> bs!238867 (= (and (= lt!342401 (reg!2912 r!15766)) (= lt!342396 lt!342402)) (= lambda!31742 lambda!31719))))

(declare-fun bs!238868 () Bool)

(assert (= bs!238868 (and d!282589 b!941380)))

(assert (=> bs!238868 (= lambda!31742 lambda!31721)))

(assert (=> bs!238868 (not (= lambda!31742 lambda!31722))))

(declare-fun bs!238869 () Bool)

(assert (= bs!238869 (and d!282589 d!282571)))

(assert (=> bs!238869 (not (= lambda!31742 lambda!31739))))

(assert (=> bs!238869 (= (= lt!342396 (Star!2583 lt!342401)) (= lambda!31742 lambda!31738))))

(assert (=> bs!238867 (not (= lambda!31742 lambda!31720))))

(assert (=> d!282589 true))

(assert (=> d!282589 true))

(assert (=> d!282589 true))

(assert (=> d!282589 (= (isDefined!1816 (findConcatSeparation!280 lt!342401 lt!342396 Nil!9797 s!10566 s!10566)) (Exists!334 lambda!31742))))

(declare-fun lt!342430 () Unit!14785)

(declare-fun choose!5835 (Regex!2583 Regex!2583 List!9813) Unit!14785)

(assert (=> d!282589 (= lt!342430 (choose!5835 lt!342401 lt!342396 s!10566))))

(assert (=> d!282589 (validRegex!1052 lt!342401)))

(assert (=> d!282589 (= (lemmaFindConcatSeparationEquivalentToExists!280 lt!342401 lt!342396 s!10566) lt!342430)))

(declare-fun bs!238870 () Bool)

(assert (= bs!238870 d!282589))

(assert (=> bs!238870 m!1158389))

(assert (=> bs!238870 m!1158351))

(declare-fun m!1158463 () Bool)

(assert (=> bs!238870 m!1158463))

(declare-fun m!1158465 () Bool)

(assert (=> bs!238870 m!1158465))

(assert (=> bs!238870 m!1158351))

(assert (=> bs!238870 m!1158353))

(assert (=> b!941380 d!282589))

(declare-fun bs!238902 () Bool)

(declare-fun b!941720 () Bool)

(assert (= bs!238902 (and b!941720 b!941383)))

(declare-fun lambda!31756 () Int)

(assert (=> bs!238902 (not (= lambda!31756 lambda!31719))))

(declare-fun bs!238903 () Bool)

(assert (= bs!238903 (and b!941720 b!941380)))

(assert (=> bs!238903 (not (= lambda!31756 lambda!31721))))

(assert (=> bs!238903 (= (= (reg!2912 lt!342396) lt!342401) (= lambda!31756 lambda!31722))))

(declare-fun bs!238904 () Bool)

(assert (= bs!238904 (and b!941720 d!282589)))

(assert (=> bs!238904 (not (= lambda!31756 lambda!31742))))

(declare-fun bs!238905 () Bool)

(assert (= bs!238905 (and b!941720 d!282571)))

(assert (=> bs!238905 (= (and (= (reg!2912 lt!342396) lt!342401) (= lt!342396 (Star!2583 lt!342401))) (= lambda!31756 lambda!31739))))

(assert (=> bs!238905 (not (= lambda!31756 lambda!31738))))

(assert (=> bs!238902 (= (and (= (reg!2912 lt!342396) (reg!2912 r!15766)) (= lt!342396 lt!342402)) (= lambda!31756 lambda!31720))))

(assert (=> b!941720 true))

(assert (=> b!941720 true))

(declare-fun bs!238906 () Bool)

(declare-fun b!941719 () Bool)

(assert (= bs!238906 (and b!941719 b!941383)))

(declare-fun lambda!31757 () Int)

(assert (=> bs!238906 (not (= lambda!31757 lambda!31719))))

(declare-fun bs!238907 () Bool)

(assert (= bs!238907 (and b!941719 b!941380)))

(assert (=> bs!238907 (not (= lambda!31757 lambda!31721))))

(assert (=> bs!238907 (not (= lambda!31757 lambda!31722))))

(declare-fun bs!238908 () Bool)

(assert (= bs!238908 (and b!941719 d!282589)))

(assert (=> bs!238908 (not (= lambda!31757 lambda!31742))))

(declare-fun bs!238909 () Bool)

(assert (= bs!238909 (and b!941719 d!282571)))

(assert (=> bs!238909 (not (= lambda!31757 lambda!31739))))

(assert (=> bs!238909 (not (= lambda!31757 lambda!31738))))

(assert (=> bs!238906 (not (= lambda!31757 lambda!31720))))

(declare-fun bs!238910 () Bool)

(assert (= bs!238910 (and b!941719 b!941720)))

(assert (=> bs!238910 (not (= lambda!31757 lambda!31756))))

(assert (=> b!941719 true))

(assert (=> b!941719 true))

(declare-fun b!941713 () Bool)

(declare-fun res!427740 () Bool)

(declare-fun e!610828 () Bool)

(assert (=> b!941713 (=> res!427740 e!610828)))

(declare-fun call!58700 () Bool)

(assert (=> b!941713 (= res!427740 call!58700)))

(declare-fun e!610829 () Bool)

(assert (=> b!941713 (= e!610829 e!610828)))

(declare-fun b!941714 () Bool)

(declare-fun e!610825 () Bool)

(assert (=> b!941714 (= e!610825 e!610829)))

(declare-fun c!153261 () Bool)

(assert (=> b!941714 (= c!153261 ((_ is Star!2583) lt!342396))))

(declare-fun d!282593 () Bool)

(declare-fun c!153262 () Bool)

(assert (=> d!282593 (= c!153262 ((_ is EmptyExpr!2583) lt!342396))))

(declare-fun e!610827 () Bool)

(assert (=> d!282593 (= (matchRSpec!384 lt!342396 s!10566) e!610827)))

(declare-fun b!941715 () Bool)

(declare-fun c!153263 () Bool)

(assert (=> b!941715 (= c!153263 ((_ is Union!2583) lt!342396))))

(declare-fun e!610826 () Bool)

(assert (=> b!941715 (= e!610826 e!610825)))

(declare-fun b!941716 () Bool)

(declare-fun c!153260 () Bool)

(assert (=> b!941716 (= c!153260 ((_ is ElementMatch!2583) lt!342396))))

(declare-fun e!610823 () Bool)

(assert (=> b!941716 (= e!610823 e!610826)))

(declare-fun call!58701 () Bool)

(declare-fun bm!58695 () Bool)

(assert (=> bm!58695 (= call!58701 (Exists!334 (ite c!153261 lambda!31756 lambda!31757)))))

(declare-fun b!941717 () Bool)

(declare-fun e!610824 () Bool)

(assert (=> b!941717 (= e!610824 (matchRSpec!384 (regTwo!5679 lt!342396) s!10566))))

(declare-fun b!941718 () Bool)

(assert (=> b!941718 (= e!610827 call!58700)))

(assert (=> b!941719 (= e!610829 call!58701)))

(assert (=> b!941720 (= e!610828 call!58701)))

(declare-fun b!941721 () Bool)

(assert (=> b!941721 (= e!610827 e!610823)))

(declare-fun res!427741 () Bool)

(assert (=> b!941721 (= res!427741 (not ((_ is EmptyLang!2583) lt!342396)))))

(assert (=> b!941721 (=> (not res!427741) (not e!610823))))

(declare-fun b!941722 () Bool)

(assert (=> b!941722 (= e!610826 (= s!10566 (Cons!9797 (c!153190 lt!342396) Nil!9797)))))

(declare-fun b!941723 () Bool)

(assert (=> b!941723 (= e!610825 e!610824)))

(declare-fun res!427739 () Bool)

(assert (=> b!941723 (= res!427739 (matchRSpec!384 (regOne!5679 lt!342396) s!10566))))

(assert (=> b!941723 (=> res!427739 e!610824)))

(declare-fun bm!58696 () Bool)

(assert (=> bm!58696 (= call!58700 (isEmpty!6046 s!10566))))

(assert (= (and d!282593 c!153262) b!941718))

(assert (= (and d!282593 (not c!153262)) b!941721))

(assert (= (and b!941721 res!427741) b!941716))

(assert (= (and b!941716 c!153260) b!941722))

(assert (= (and b!941716 (not c!153260)) b!941715))

(assert (= (and b!941715 c!153263) b!941723))

(assert (= (and b!941715 (not c!153263)) b!941714))

(assert (= (and b!941723 (not res!427739)) b!941717))

(assert (= (and b!941714 c!153261) b!941713))

(assert (= (and b!941714 (not c!153261)) b!941719))

(assert (= (and b!941713 (not res!427740)) b!941720))

(assert (= (or b!941720 b!941719) bm!58695))

(assert (= (or b!941718 b!941713) bm!58696))

(declare-fun m!1158535 () Bool)

(assert (=> bm!58695 m!1158535))

(declare-fun m!1158537 () Bool)

(assert (=> b!941717 m!1158537))

(declare-fun m!1158539 () Bool)

(assert (=> b!941723 m!1158539))

(assert (=> bm!58696 m!1158355))

(assert (=> b!941380 d!282593))

(declare-fun b!941743 () Bool)

(declare-fun e!610842 () Option!2174)

(assert (=> b!941743 (= e!610842 None!2173)))

(declare-fun b!941744 () Bool)

(declare-fun e!610844 () Bool)

(declare-fun lt!342450 () Option!2174)

(assert (=> b!941744 (= e!610844 (not (isDefined!1816 lt!342450)))))

(declare-fun b!941745 () Bool)

(declare-fun res!427752 () Bool)

(declare-fun e!610840 () Bool)

(assert (=> b!941745 (=> (not res!427752) (not e!610840))))

(declare-fun get!3256 (Option!2174) tuple2!11064)

(assert (=> b!941745 (= res!427752 (matchR!1121 lt!342401 (_1!6358 (get!3256 lt!342450))))))

(declare-fun b!941746 () Bool)

(declare-fun lt!342449 () Unit!14785)

(declare-fun lt!342451 () Unit!14785)

(assert (=> b!941746 (= lt!342449 lt!342451)))

(declare-fun ++!2605 (List!9813 List!9813) List!9813)

(assert (=> b!941746 (= (++!2605 (++!2605 Nil!9797 (Cons!9797 (h!15198 s!10566) Nil!9797)) (t!100859 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!218 (List!9813 C!5736 List!9813 List!9813) Unit!14785)

(assert (=> b!941746 (= lt!342451 (lemmaMoveElementToOtherListKeepsConcatEq!218 Nil!9797 (h!15198 s!10566) (t!100859 s!10566) s!10566))))

(assert (=> b!941746 (= e!610842 (findConcatSeparation!280 lt!342401 lt!342396 (++!2605 Nil!9797 (Cons!9797 (h!15198 s!10566) Nil!9797)) (t!100859 s!10566) s!10566))))

(declare-fun b!941747 () Bool)

(declare-fun res!427756 () Bool)

(assert (=> b!941747 (=> (not res!427756) (not e!610840))))

(assert (=> b!941747 (= res!427756 (matchR!1121 lt!342396 (_2!6358 (get!3256 lt!342450))))))

(declare-fun b!941748 () Bool)

(declare-fun e!610841 () Bool)

(assert (=> b!941748 (= e!610841 (matchR!1121 lt!342396 s!10566))))

(declare-fun b!941742 () Bool)

(declare-fun e!610843 () Option!2174)

(assert (=> b!941742 (= e!610843 e!610842)))

(declare-fun c!153268 () Bool)

(assert (=> b!941742 (= c!153268 ((_ is Nil!9797) s!10566))))

(declare-fun d!282619 () Bool)

(assert (=> d!282619 e!610844))

(declare-fun res!427755 () Bool)

(assert (=> d!282619 (=> res!427755 e!610844)))

(assert (=> d!282619 (= res!427755 e!610840)))

(declare-fun res!427753 () Bool)

(assert (=> d!282619 (=> (not res!427753) (not e!610840))))

(assert (=> d!282619 (= res!427753 (isDefined!1816 lt!342450))))

(assert (=> d!282619 (= lt!342450 e!610843)))

(declare-fun c!153269 () Bool)

(assert (=> d!282619 (= c!153269 e!610841)))

(declare-fun res!427754 () Bool)

(assert (=> d!282619 (=> (not res!427754) (not e!610841))))

(assert (=> d!282619 (= res!427754 (matchR!1121 lt!342401 Nil!9797))))

(assert (=> d!282619 (validRegex!1052 lt!342401)))

(assert (=> d!282619 (= (findConcatSeparation!280 lt!342401 lt!342396 Nil!9797 s!10566 s!10566) lt!342450)))

(declare-fun b!941749 () Bool)

(assert (=> b!941749 (= e!610840 (= (++!2605 (_1!6358 (get!3256 lt!342450)) (_2!6358 (get!3256 lt!342450))) s!10566))))

(declare-fun b!941750 () Bool)

(assert (=> b!941750 (= e!610843 (Some!2173 (tuple2!11065 Nil!9797 s!10566)))))

(assert (= (and d!282619 res!427754) b!941748))

(assert (= (and d!282619 c!153269) b!941750))

(assert (= (and d!282619 (not c!153269)) b!941742))

(assert (= (and b!941742 c!153268) b!941743))

(assert (= (and b!941742 (not c!153268)) b!941746))

(assert (= (and d!282619 res!427753) b!941745))

(assert (= (and b!941745 res!427752) b!941747))

(assert (= (and b!941747 res!427756) b!941749))

(assert (= (and d!282619 (not res!427755)) b!941744))

(declare-fun m!1158541 () Bool)

(assert (=> b!941747 m!1158541))

(declare-fun m!1158543 () Bool)

(assert (=> b!941747 m!1158543))

(declare-fun m!1158545 () Bool)

(assert (=> b!941744 m!1158545))

(assert (=> b!941749 m!1158541))

(declare-fun m!1158547 () Bool)

(assert (=> b!941749 m!1158547))

(declare-fun m!1158549 () Bool)

(assert (=> b!941746 m!1158549))

(assert (=> b!941746 m!1158549))

(declare-fun m!1158551 () Bool)

(assert (=> b!941746 m!1158551))

(declare-fun m!1158553 () Bool)

(assert (=> b!941746 m!1158553))

(assert (=> b!941746 m!1158549))

(declare-fun m!1158555 () Bool)

(assert (=> b!941746 m!1158555))

(assert (=> b!941745 m!1158541))

(declare-fun m!1158557 () Bool)

(assert (=> b!941745 m!1158557))

(assert (=> b!941748 m!1158387))

(assert (=> d!282619 m!1158545))

(declare-fun m!1158559 () Bool)

(assert (=> d!282619 m!1158559))

(assert (=> d!282619 m!1158389))

(assert (=> b!941380 d!282619))

(declare-fun d!282621 () Bool)

(assert (=> d!282621 (= (Exists!334 lambda!31722) (choose!5833 lambda!31722))))

(declare-fun bs!238911 () Bool)

(assert (= bs!238911 d!282621))

(declare-fun m!1158561 () Bool)

(assert (=> bs!238911 m!1158561))

(assert (=> b!941380 d!282621))

(declare-fun d!282623 () Bool)

(declare-fun isEmpty!6048 (Option!2174) Bool)

(assert (=> d!282623 (= (isDefined!1816 (findConcatSeparation!280 lt!342401 lt!342396 Nil!9797 s!10566 s!10566)) (not (isEmpty!6048 (findConcatSeparation!280 lt!342401 lt!342396 Nil!9797 s!10566 s!10566))))))

(declare-fun bs!238912 () Bool)

(assert (= bs!238912 d!282623))

(assert (=> bs!238912 m!1158351))

(declare-fun m!1158563 () Bool)

(assert (=> bs!238912 m!1158563))

(assert (=> b!941380 d!282623))

(declare-fun d!282625 () Bool)

(assert (=> d!282625 (= (matchR!1121 lt!342396 s!10566) (matchRSpec!384 lt!342396 s!10566))))

(declare-fun lt!342454 () Unit!14785)

(declare-fun choose!5836 (Regex!2583 List!9813) Unit!14785)

(assert (=> d!282625 (= lt!342454 (choose!5836 lt!342396 s!10566))))

(assert (=> d!282625 (validRegex!1052 lt!342396)))

(assert (=> d!282625 (= (mainMatchTheorem!384 lt!342396 s!10566) lt!342454)))

(declare-fun bs!238913 () Bool)

(assert (= bs!238913 d!282625))

(assert (=> bs!238913 m!1158387))

(assert (=> bs!238913 m!1158349))

(declare-fun m!1158565 () Bool)

(assert (=> bs!238913 m!1158565))

(assert (=> bs!238913 m!1158391))

(assert (=> b!941380 d!282625))

(declare-fun b!941769 () Bool)

(declare-fun e!610860 () Bool)

(declare-fun e!610864 () Bool)

(assert (=> b!941769 (= e!610860 e!610864)))

(declare-fun c!153274 () Bool)

(assert (=> b!941769 (= c!153274 ((_ is Union!2583) r!15766))))

(declare-fun bm!58703 () Bool)

(declare-fun call!58709 () Bool)

(declare-fun call!58708 () Bool)

(assert (=> bm!58703 (= call!58709 call!58708)))

(declare-fun b!941770 () Bool)

(declare-fun e!610862 () Bool)

(declare-fun e!610865 () Bool)

(assert (=> b!941770 (= e!610862 e!610865)))

(declare-fun res!427770 () Bool)

(assert (=> b!941770 (=> (not res!427770) (not e!610865))))

(assert (=> b!941770 (= res!427770 call!58709)))

(declare-fun b!941771 () Bool)

(declare-fun e!610859 () Bool)

(assert (=> b!941771 (= e!610859 e!610860)))

(declare-fun c!153275 () Bool)

(assert (=> b!941771 (= c!153275 ((_ is Star!2583) r!15766))))

(declare-fun b!941773 () Bool)

(declare-fun e!610863 () Bool)

(assert (=> b!941773 (= e!610863 call!58708)))

(declare-fun bm!58704 () Bool)

(declare-fun call!58710 () Bool)

(assert (=> bm!58704 (= call!58710 (validRegex!1052 (ite c!153274 (regTwo!5679 r!15766) (regTwo!5678 r!15766))))))

(declare-fun b!941774 () Bool)

(assert (=> b!941774 (= e!610860 e!610863)))

(declare-fun res!427767 () Bool)

(declare-fun nullable!753 (Regex!2583) Bool)

(assert (=> b!941774 (= res!427767 (not (nullable!753 (reg!2912 r!15766))))))

(assert (=> b!941774 (=> (not res!427767) (not e!610863))))

(declare-fun b!941775 () Bool)

(declare-fun e!610861 () Bool)

(assert (=> b!941775 (= e!610861 call!58710)))

(declare-fun b!941776 () Bool)

(declare-fun res!427771 () Bool)

(assert (=> b!941776 (=> res!427771 e!610862)))

(assert (=> b!941776 (= res!427771 (not ((_ is Concat!4416) r!15766)))))

(assert (=> b!941776 (= e!610864 e!610862)))

(declare-fun b!941777 () Bool)

(assert (=> b!941777 (= e!610865 call!58710)))

(declare-fun bm!58705 () Bool)

(assert (=> bm!58705 (= call!58708 (validRegex!1052 (ite c!153275 (reg!2912 r!15766) (ite c!153274 (regOne!5679 r!15766) (regOne!5678 r!15766)))))))

(declare-fun d!282627 () Bool)

(declare-fun res!427769 () Bool)

(assert (=> d!282627 (=> res!427769 e!610859)))

(assert (=> d!282627 (= res!427769 ((_ is ElementMatch!2583) r!15766))))

(assert (=> d!282627 (= (validRegex!1052 r!15766) e!610859)))

(declare-fun b!941772 () Bool)

(declare-fun res!427768 () Bool)

(assert (=> b!941772 (=> (not res!427768) (not e!610861))))

(assert (=> b!941772 (= res!427768 call!58709)))

(assert (=> b!941772 (= e!610864 e!610861)))

(assert (= (and d!282627 (not res!427769)) b!941771))

(assert (= (and b!941771 c!153275) b!941774))

(assert (= (and b!941771 (not c!153275)) b!941769))

(assert (= (and b!941774 res!427767) b!941773))

(assert (= (and b!941769 c!153274) b!941772))

(assert (= (and b!941769 (not c!153274)) b!941776))

(assert (= (and b!941772 res!427768) b!941775))

(assert (= (and b!941776 (not res!427771)) b!941770))

(assert (= (and b!941770 res!427770) b!941777))

(assert (= (or b!941775 b!941777) bm!58704))

(assert (= (or b!941772 b!941770) bm!58703))

(assert (= (or b!941773 bm!58703) bm!58705))

(declare-fun m!1158567 () Bool)

(assert (=> bm!58704 m!1158567))

(declare-fun m!1158569 () Bool)

(assert (=> b!941774 m!1158569))

(declare-fun m!1158571 () Bool)

(assert (=> bm!58705 m!1158571))

(assert (=> start!84034 d!282627))

(declare-fun b!941778 () Bool)

(declare-fun e!610867 () Bool)

(declare-fun e!610871 () Bool)

(assert (=> b!941778 (= e!610867 e!610871)))

(declare-fun c!153276 () Bool)

(assert (=> b!941778 (= c!153276 ((_ is Union!2583) lt!342396))))

(declare-fun bm!58706 () Bool)

(declare-fun call!58712 () Bool)

(declare-fun call!58711 () Bool)

(assert (=> bm!58706 (= call!58712 call!58711)))

(declare-fun b!941779 () Bool)

(declare-fun e!610869 () Bool)

(declare-fun e!610872 () Bool)

(assert (=> b!941779 (= e!610869 e!610872)))

(declare-fun res!427775 () Bool)

(assert (=> b!941779 (=> (not res!427775) (not e!610872))))

(assert (=> b!941779 (= res!427775 call!58712)))

(declare-fun b!941780 () Bool)

(declare-fun e!610866 () Bool)

(assert (=> b!941780 (= e!610866 e!610867)))

(declare-fun c!153277 () Bool)

(assert (=> b!941780 (= c!153277 ((_ is Star!2583) lt!342396))))

(declare-fun b!941782 () Bool)

(declare-fun e!610870 () Bool)

(assert (=> b!941782 (= e!610870 call!58711)))

(declare-fun bm!58707 () Bool)

(declare-fun call!58713 () Bool)

(assert (=> bm!58707 (= call!58713 (validRegex!1052 (ite c!153276 (regTwo!5679 lt!342396) (regTwo!5678 lt!342396))))))

(declare-fun b!941783 () Bool)

(assert (=> b!941783 (= e!610867 e!610870)))

(declare-fun res!427772 () Bool)

(assert (=> b!941783 (= res!427772 (not (nullable!753 (reg!2912 lt!342396))))))

(assert (=> b!941783 (=> (not res!427772) (not e!610870))))

(declare-fun b!941784 () Bool)

(declare-fun e!610868 () Bool)

(assert (=> b!941784 (= e!610868 call!58713)))

(declare-fun b!941785 () Bool)

(declare-fun res!427776 () Bool)

(assert (=> b!941785 (=> res!427776 e!610869)))

(assert (=> b!941785 (= res!427776 (not ((_ is Concat!4416) lt!342396)))))

(assert (=> b!941785 (= e!610871 e!610869)))

(declare-fun b!941786 () Bool)

(assert (=> b!941786 (= e!610872 call!58713)))

(declare-fun bm!58708 () Bool)

(assert (=> bm!58708 (= call!58711 (validRegex!1052 (ite c!153277 (reg!2912 lt!342396) (ite c!153276 (regOne!5679 lt!342396) (regOne!5678 lt!342396)))))))

(declare-fun d!282629 () Bool)

(declare-fun res!427774 () Bool)

(assert (=> d!282629 (=> res!427774 e!610866)))

(assert (=> d!282629 (= res!427774 ((_ is ElementMatch!2583) lt!342396))))

(assert (=> d!282629 (= (validRegex!1052 lt!342396) e!610866)))

(declare-fun b!941781 () Bool)

(declare-fun res!427773 () Bool)

(assert (=> b!941781 (=> (not res!427773) (not e!610868))))

(assert (=> b!941781 (= res!427773 call!58712)))

(assert (=> b!941781 (= e!610871 e!610868)))

(assert (= (and d!282629 (not res!427774)) b!941780))

(assert (= (and b!941780 c!153277) b!941783))

(assert (= (and b!941780 (not c!153277)) b!941778))

(assert (= (and b!941783 res!427772) b!941782))

(assert (= (and b!941778 c!153276) b!941781))

(assert (= (and b!941778 (not c!153276)) b!941785))

(assert (= (and b!941781 res!427773) b!941784))

(assert (= (and b!941785 (not res!427776)) b!941779))

(assert (= (and b!941779 res!427775) b!941786))

(assert (= (or b!941784 b!941786) bm!58707))

(assert (= (or b!941781 b!941779) bm!58706))

(assert (= (or b!941782 bm!58706) bm!58708))

(declare-fun m!1158573 () Bool)

(assert (=> bm!58707 m!1158573))

(declare-fun m!1158575 () Bool)

(assert (=> b!941783 m!1158575))

(declare-fun m!1158577 () Bool)

(assert (=> bm!58708 m!1158577))

(assert (=> b!941389 d!282629))

(declare-fun bs!238914 () Bool)

(declare-fun d!282631 () Bool)

(assert (= bs!238914 (and d!282631 b!941383)))

(declare-fun lambda!31758 () Int)

(assert (=> bs!238914 (= lambda!31758 lambda!31719)))

(declare-fun bs!238915 () Bool)

(assert (= bs!238915 (and d!282631 b!941380)))

(assert (=> bs!238915 (= (and (= (reg!2912 r!15766) lt!342401) (= lt!342402 lt!342396)) (= lambda!31758 lambda!31721))))

(assert (=> bs!238915 (not (= lambda!31758 lambda!31722))))

(declare-fun bs!238916 () Bool)

(assert (= bs!238916 (and d!282631 b!941719)))

(assert (=> bs!238916 (not (= lambda!31758 lambda!31757))))

(declare-fun bs!238917 () Bool)

(assert (= bs!238917 (and d!282631 d!282589)))

(assert (=> bs!238917 (= (and (= (reg!2912 r!15766) lt!342401) (= lt!342402 lt!342396)) (= lambda!31758 lambda!31742))))

(declare-fun bs!238918 () Bool)

(assert (= bs!238918 (and d!282631 d!282571)))

(assert (=> bs!238918 (not (= lambda!31758 lambda!31739))))

(assert (=> bs!238918 (= (and (= (reg!2912 r!15766) lt!342401) (= lt!342402 (Star!2583 lt!342401))) (= lambda!31758 lambda!31738))))

(assert (=> bs!238914 (not (= lambda!31758 lambda!31720))))

(declare-fun bs!238919 () Bool)

(assert (= bs!238919 (and d!282631 b!941720)))

(assert (=> bs!238919 (not (= lambda!31758 lambda!31756))))

(assert (=> d!282631 true))

(assert (=> d!282631 true))

(assert (=> d!282631 true))

(assert (=> d!282631 (= (isDefined!1816 (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 Nil!9797 s!10566 s!10566)) (Exists!334 lambda!31758))))

(declare-fun lt!342455 () Unit!14785)

(assert (=> d!282631 (= lt!342455 (choose!5835 (reg!2912 r!15766) lt!342402 s!10566))))

(assert (=> d!282631 (validRegex!1052 (reg!2912 r!15766))))

(assert (=> d!282631 (= (lemmaFindConcatSeparationEquivalentToExists!280 (reg!2912 r!15766) lt!342402 s!10566) lt!342455)))

(declare-fun bs!238920 () Bool)

(assert (= bs!238920 d!282631))

(declare-fun m!1158579 () Bool)

(assert (=> bs!238920 m!1158579))

(assert (=> bs!238920 m!1158377))

(declare-fun m!1158581 () Bool)

(assert (=> bs!238920 m!1158581))

(declare-fun m!1158583 () Bool)

(assert (=> bs!238920 m!1158583))

(assert (=> bs!238920 m!1158377))

(assert (=> bs!238920 m!1158379))

(assert (=> b!941383 d!282631))

(declare-fun d!282633 () Bool)

(assert (=> d!282633 (= (isDefined!1816 (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 Nil!9797 s!10566 s!10566)) (not (isEmpty!6048 (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 Nil!9797 s!10566 s!10566))))))

(declare-fun bs!238921 () Bool)

(assert (= bs!238921 d!282633))

(assert (=> bs!238921 m!1158377))

(declare-fun m!1158585 () Bool)

(assert (=> bs!238921 m!1158585))

(assert (=> b!941383 d!282633))

(declare-fun b!941788 () Bool)

(declare-fun e!610875 () Option!2174)

(assert (=> b!941788 (= e!610875 None!2173)))

(declare-fun b!941789 () Bool)

(declare-fun e!610877 () Bool)

(declare-fun lt!342457 () Option!2174)

(assert (=> b!941789 (= e!610877 (not (isDefined!1816 lt!342457)))))

(declare-fun b!941790 () Bool)

(declare-fun res!427777 () Bool)

(declare-fun e!610873 () Bool)

(assert (=> b!941790 (=> (not res!427777) (not e!610873))))

(assert (=> b!941790 (= res!427777 (matchR!1121 (reg!2912 r!15766) (_1!6358 (get!3256 lt!342457))))))

(declare-fun b!941791 () Bool)

(declare-fun lt!342456 () Unit!14785)

(declare-fun lt!342458 () Unit!14785)

(assert (=> b!941791 (= lt!342456 lt!342458)))

(assert (=> b!941791 (= (++!2605 (++!2605 Nil!9797 (Cons!9797 (h!15198 s!10566) Nil!9797)) (t!100859 s!10566)) s!10566)))

(assert (=> b!941791 (= lt!342458 (lemmaMoveElementToOtherListKeepsConcatEq!218 Nil!9797 (h!15198 s!10566) (t!100859 s!10566) s!10566))))

(assert (=> b!941791 (= e!610875 (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 (++!2605 Nil!9797 (Cons!9797 (h!15198 s!10566) Nil!9797)) (t!100859 s!10566) s!10566))))

(declare-fun b!941792 () Bool)

(declare-fun res!427781 () Bool)

(assert (=> b!941792 (=> (not res!427781) (not e!610873))))

(assert (=> b!941792 (= res!427781 (matchR!1121 lt!342402 (_2!6358 (get!3256 lt!342457))))))

(declare-fun b!941793 () Bool)

(declare-fun e!610874 () Bool)

(assert (=> b!941793 (= e!610874 (matchR!1121 lt!342402 s!10566))))

(declare-fun b!941787 () Bool)

(declare-fun e!610876 () Option!2174)

(assert (=> b!941787 (= e!610876 e!610875)))

(declare-fun c!153278 () Bool)

(assert (=> b!941787 (= c!153278 ((_ is Nil!9797) s!10566))))

(declare-fun d!282635 () Bool)

(assert (=> d!282635 e!610877))

(declare-fun res!427780 () Bool)

(assert (=> d!282635 (=> res!427780 e!610877)))

(assert (=> d!282635 (= res!427780 e!610873)))

(declare-fun res!427778 () Bool)

(assert (=> d!282635 (=> (not res!427778) (not e!610873))))

(assert (=> d!282635 (= res!427778 (isDefined!1816 lt!342457))))

(assert (=> d!282635 (= lt!342457 e!610876)))

(declare-fun c!153279 () Bool)

(assert (=> d!282635 (= c!153279 e!610874)))

(declare-fun res!427779 () Bool)

(assert (=> d!282635 (=> (not res!427779) (not e!610874))))

(assert (=> d!282635 (= res!427779 (matchR!1121 (reg!2912 r!15766) Nil!9797))))

(assert (=> d!282635 (validRegex!1052 (reg!2912 r!15766))))

(assert (=> d!282635 (= (findConcatSeparation!280 (reg!2912 r!15766) lt!342402 Nil!9797 s!10566 s!10566) lt!342457)))

(declare-fun b!941794 () Bool)

(assert (=> b!941794 (= e!610873 (= (++!2605 (_1!6358 (get!3256 lt!342457)) (_2!6358 (get!3256 lt!342457))) s!10566))))

(declare-fun b!941795 () Bool)

(assert (=> b!941795 (= e!610876 (Some!2173 (tuple2!11065 Nil!9797 s!10566)))))

(assert (= (and d!282635 res!427779) b!941793))

(assert (= (and d!282635 c!153279) b!941795))

(assert (= (and d!282635 (not c!153279)) b!941787))

(assert (= (and b!941787 c!153278) b!941788))

(assert (= (and b!941787 (not c!153278)) b!941791))

(assert (= (and d!282635 res!427778) b!941790))

(assert (= (and b!941790 res!427777) b!941792))

(assert (= (and b!941792 res!427781) b!941794))

(assert (= (and d!282635 (not res!427780)) b!941789))

(declare-fun m!1158587 () Bool)

(assert (=> b!941792 m!1158587))

(declare-fun m!1158589 () Bool)

(assert (=> b!941792 m!1158589))

(declare-fun m!1158591 () Bool)

(assert (=> b!941789 m!1158591))

(assert (=> b!941794 m!1158587))

(declare-fun m!1158593 () Bool)

(assert (=> b!941794 m!1158593))

(assert (=> b!941791 m!1158549))

(assert (=> b!941791 m!1158549))

(assert (=> b!941791 m!1158551))

(assert (=> b!941791 m!1158553))

(assert (=> b!941791 m!1158549))

(declare-fun m!1158595 () Bool)

(assert (=> b!941791 m!1158595))

(assert (=> b!941790 m!1158587))

(declare-fun m!1158597 () Bool)

(assert (=> b!941790 m!1158597))

(declare-fun m!1158599 () Bool)

(assert (=> b!941793 m!1158599))

(assert (=> d!282635 m!1158591))

(declare-fun m!1158601 () Bool)

(assert (=> d!282635 m!1158601))

(assert (=> d!282635 m!1158579))

(assert (=> b!941383 d!282635))

(declare-fun bm!58719 () Bool)

(declare-fun call!58728 () Regex!2583)

(declare-fun call!58724 () Regex!2583)

(assert (=> bm!58719 (= call!58728 call!58724)))

(declare-fun b!941818 () Bool)

(declare-fun e!610890 () Regex!2583)

(declare-fun e!610894 () Regex!2583)

(assert (=> b!941818 (= e!610890 e!610894)))

(declare-fun c!153292 () Bool)

(assert (=> b!941818 (= c!153292 ((_ is Union!2583) (reg!2912 r!15766)))))

(declare-fun b!941819 () Bool)

(declare-fun e!610895 () Bool)

(declare-fun lt!342461 () Regex!2583)

(assert (=> b!941819 (= e!610895 (= (nullable!753 lt!342461) (nullable!753 (reg!2912 r!15766))))))

(declare-fun bm!58720 () Bool)

(declare-fun call!58725 () Regex!2583)

(declare-fun c!153294 () Bool)

(assert (=> bm!58720 (= call!58725 (removeUselessConcat!252 (ite c!153294 (regTwo!5678 (reg!2912 r!15766)) (regOne!5679 (reg!2912 r!15766)))))))

(declare-fun b!941820 () Bool)

(declare-fun e!610893 () Regex!2583)

(declare-fun e!610891 () Regex!2583)

(assert (=> b!941820 (= e!610893 e!610891)))

(declare-fun c!153290 () Bool)

(assert (=> b!941820 (= c!153290 (and ((_ is Concat!4416) (reg!2912 r!15766)) ((_ is EmptyExpr!2583) (regTwo!5678 (reg!2912 r!15766)))))))

(declare-fun bm!58721 () Bool)

(declare-fun call!58726 () Regex!2583)

(assert (=> bm!58721 (= call!58724 call!58726)))

(declare-fun b!941822 () Bool)

(assert (=> b!941822 (= e!610893 call!58726)))

(declare-fun b!941823 () Bool)

(declare-fun call!58727 () Regex!2583)

(assert (=> b!941823 (= e!610894 (Union!2583 call!58725 call!58727))))

(declare-fun b!941824 () Bool)

(declare-fun e!610892 () Regex!2583)

(assert (=> b!941824 (= e!610892 (Star!2583 call!58727))))

(declare-fun c!153293 () Bool)

(declare-fun bm!58722 () Bool)

(assert (=> bm!58722 (= call!58726 (removeUselessConcat!252 (ite c!153293 (regTwo!5678 (reg!2912 r!15766)) (ite (or c!153290 c!153294) (regOne!5678 (reg!2912 r!15766)) (ite c!153292 (regTwo!5679 (reg!2912 r!15766)) (reg!2912 (reg!2912 r!15766)))))))))

(declare-fun b!941825 () Bool)

(assert (=> b!941825 (= e!610892 (reg!2912 r!15766))))

(declare-fun b!941826 () Bool)

(assert (=> b!941826 (= e!610890 (Concat!4416 call!58728 call!58725))))

(declare-fun b!941827 () Bool)

(declare-fun c!153291 () Bool)

(assert (=> b!941827 (= c!153291 ((_ is Star!2583) (reg!2912 r!15766)))))

(assert (=> b!941827 (= e!610894 e!610892)))

(declare-fun bm!58723 () Bool)

(assert (=> bm!58723 (= call!58727 call!58728)))

(declare-fun b!941828 () Bool)

(assert (=> b!941828 (= c!153294 ((_ is Concat!4416) (reg!2912 r!15766)))))

(assert (=> b!941828 (= e!610891 e!610890)))

(declare-fun d!282637 () Bool)

(assert (=> d!282637 e!610895))

(declare-fun res!427784 () Bool)

(assert (=> d!282637 (=> (not res!427784) (not e!610895))))

(assert (=> d!282637 (= res!427784 (validRegex!1052 lt!342461))))

(assert (=> d!282637 (= lt!342461 e!610893)))

(assert (=> d!282637 (= c!153293 (and ((_ is Concat!4416) (reg!2912 r!15766)) ((_ is EmptyExpr!2583) (regOne!5678 (reg!2912 r!15766)))))))

(assert (=> d!282637 (validRegex!1052 (reg!2912 r!15766))))

(assert (=> d!282637 (= (removeUselessConcat!252 (reg!2912 r!15766)) lt!342461)))

(declare-fun b!941821 () Bool)

(assert (=> b!941821 (= e!610891 call!58724)))

(assert (= (and d!282637 c!153293) b!941822))

(assert (= (and d!282637 (not c!153293)) b!941820))

(assert (= (and b!941820 c!153290) b!941821))

(assert (= (and b!941820 (not c!153290)) b!941828))

(assert (= (and b!941828 c!153294) b!941826))

(assert (= (and b!941828 (not c!153294)) b!941818))

(assert (= (and b!941818 c!153292) b!941823))

(assert (= (and b!941818 (not c!153292)) b!941827))

(assert (= (and b!941827 c!153291) b!941824))

(assert (= (and b!941827 (not c!153291)) b!941825))

(assert (= (or b!941823 b!941824) bm!58723))

(assert (= (or b!941826 b!941823) bm!58720))

(assert (= (or b!941826 bm!58723) bm!58719))

(assert (= (or b!941821 bm!58719) bm!58721))

(assert (= (or b!941822 bm!58721) bm!58722))

(assert (= (and d!282637 res!427784) b!941819))

(declare-fun m!1158603 () Bool)

(assert (=> b!941819 m!1158603))

(assert (=> b!941819 m!1158569))

(declare-fun m!1158605 () Bool)

(assert (=> bm!58720 m!1158605))

(declare-fun m!1158607 () Bool)

(assert (=> bm!58722 m!1158607))

(declare-fun m!1158609 () Bool)

(assert (=> d!282637 m!1158609))

(assert (=> d!282637 m!1158579))

(assert (=> b!941383 d!282637))

(declare-fun d!282639 () Bool)

(assert (=> d!282639 (= (Exists!334 lambda!31719) (choose!5833 lambda!31719))))

(declare-fun bs!238922 () Bool)

(assert (= bs!238922 d!282639))

(declare-fun m!1158611 () Bool)

(assert (=> bs!238922 m!1158611))

(assert (=> b!941383 d!282639))

(declare-fun b!941858 () Bool)

(declare-fun res!427807 () Bool)

(declare-fun e!610911 () Bool)

(assert (=> b!941858 (=> res!427807 e!610911)))

(declare-fun e!610914 () Bool)

(assert (=> b!941858 (= res!427807 e!610914)))

(declare-fun res!427804 () Bool)

(assert (=> b!941858 (=> (not res!427804) (not e!610914))))

(declare-fun lt!342464 () Bool)

(assert (=> b!941858 (= res!427804 lt!342464)))

(declare-fun b!941859 () Bool)

(declare-fun e!610910 () Bool)

(declare-fun e!610912 () Bool)

(assert (=> b!941859 (= e!610910 e!610912)))

(declare-fun c!153301 () Bool)

(assert (=> b!941859 (= c!153301 ((_ is EmptyLang!2583) lt!342396))))

(declare-fun b!941860 () Bool)

(declare-fun e!610915 () Bool)

(declare-fun e!610913 () Bool)

(assert (=> b!941860 (= e!610915 e!610913)))

(declare-fun res!427802 () Bool)

(assert (=> b!941860 (=> res!427802 e!610913)))

(declare-fun call!58731 () Bool)

(assert (=> b!941860 (= res!427802 call!58731)))

(declare-fun b!941861 () Bool)

(declare-fun res!427808 () Bool)

(assert (=> b!941861 (=> res!427808 e!610913)))

(declare-fun tail!1277 (List!9813) List!9813)

(assert (=> b!941861 (= res!427808 (not (isEmpty!6046 (tail!1277 s!10566))))))

(declare-fun b!941862 () Bool)

(assert (=> b!941862 (= e!610910 (= lt!342464 call!58731))))

(declare-fun b!941863 () Bool)

(declare-fun head!1715 (List!9813) C!5736)

(assert (=> b!941863 (= e!610913 (not (= (head!1715 s!10566) (c!153190 lt!342396))))))

(declare-fun b!941864 () Bool)

(declare-fun e!610916 () Bool)

(declare-fun derivativeStep!562 (Regex!2583 C!5736) Regex!2583)

(assert (=> b!941864 (= e!610916 (matchR!1121 (derivativeStep!562 lt!342396 (head!1715 s!10566)) (tail!1277 s!10566)))))

(declare-fun b!941865 () Bool)

(declare-fun res!427805 () Bool)

(assert (=> b!941865 (=> res!427805 e!610911)))

(assert (=> b!941865 (= res!427805 (not ((_ is ElementMatch!2583) lt!342396)))))

(assert (=> b!941865 (= e!610912 e!610911)))

(declare-fun b!941866 () Bool)

(assert (=> b!941866 (= e!610916 (nullable!753 lt!342396))))

(declare-fun b!941867 () Bool)

(assert (=> b!941867 (= e!610911 e!610915)))

(declare-fun res!427806 () Bool)

(assert (=> b!941867 (=> (not res!427806) (not e!610915))))

(assert (=> b!941867 (= res!427806 (not lt!342464))))

(declare-fun b!941857 () Bool)

(assert (=> b!941857 (= e!610912 (not lt!342464))))

(declare-fun d!282641 () Bool)

(assert (=> d!282641 e!610910))

(declare-fun c!153303 () Bool)

(assert (=> d!282641 (= c!153303 ((_ is EmptyExpr!2583) lt!342396))))

(assert (=> d!282641 (= lt!342464 e!610916)))

(declare-fun c!153302 () Bool)

(assert (=> d!282641 (= c!153302 (isEmpty!6046 s!10566))))

(assert (=> d!282641 (validRegex!1052 lt!342396)))

(assert (=> d!282641 (= (matchR!1121 lt!342396 s!10566) lt!342464)))

(declare-fun b!941868 () Bool)

(assert (=> b!941868 (= e!610914 (= (head!1715 s!10566) (c!153190 lt!342396)))))

(declare-fun bm!58726 () Bool)

(assert (=> bm!58726 (= call!58731 (isEmpty!6046 s!10566))))

(declare-fun b!941869 () Bool)

(declare-fun res!427801 () Bool)

(assert (=> b!941869 (=> (not res!427801) (not e!610914))))

(assert (=> b!941869 (= res!427801 (not call!58731))))

(declare-fun b!941870 () Bool)

(declare-fun res!427803 () Bool)

(assert (=> b!941870 (=> (not res!427803) (not e!610914))))

(assert (=> b!941870 (= res!427803 (isEmpty!6046 (tail!1277 s!10566)))))

(assert (= (and d!282641 c!153302) b!941866))

(assert (= (and d!282641 (not c!153302)) b!941864))

(assert (= (and d!282641 c!153303) b!941862))

(assert (= (and d!282641 (not c!153303)) b!941859))

(assert (= (and b!941859 c!153301) b!941857))

(assert (= (and b!941859 (not c!153301)) b!941865))

(assert (= (and b!941865 (not res!427805)) b!941858))

(assert (= (and b!941858 res!427804) b!941869))

(assert (= (and b!941869 res!427801) b!941870))

(assert (= (and b!941870 res!427803) b!941868))

(assert (= (and b!941858 (not res!427807)) b!941867))

(assert (= (and b!941867 res!427806) b!941860))

(assert (= (and b!941860 (not res!427802)) b!941861))

(assert (= (and b!941861 (not res!427808)) b!941863))

(assert (= (or b!941862 b!941860 b!941869) bm!58726))

(declare-fun m!1158613 () Bool)

(assert (=> b!941861 m!1158613))

(assert (=> b!941861 m!1158613))

(declare-fun m!1158615 () Bool)

(assert (=> b!941861 m!1158615))

(declare-fun m!1158617 () Bool)

(assert (=> b!941868 m!1158617))

(assert (=> d!282641 m!1158355))

(assert (=> d!282641 m!1158391))

(assert (=> b!941863 m!1158617))

(assert (=> b!941864 m!1158617))

(assert (=> b!941864 m!1158617))

(declare-fun m!1158619 () Bool)

(assert (=> b!941864 m!1158619))

(assert (=> b!941864 m!1158613))

(assert (=> b!941864 m!1158619))

(assert (=> b!941864 m!1158613))

(declare-fun m!1158621 () Bool)

(assert (=> b!941864 m!1158621))

(assert (=> b!941870 m!1158613))

(assert (=> b!941870 m!1158613))

(assert (=> b!941870 m!1158615))

(assert (=> bm!58726 m!1158355))

(declare-fun m!1158623 () Bool)

(assert (=> b!941866 m!1158623))

(assert (=> b!941383 d!282641))

(declare-fun bs!238923 () Bool)

(declare-fun d!282643 () Bool)

(assert (= bs!238923 (and d!282643 b!941383)))

(declare-fun lambda!31759 () Int)

(assert (=> bs!238923 (= (= (Star!2583 (reg!2912 r!15766)) lt!342402) (= lambda!31759 lambda!31719))))

(declare-fun bs!238924 () Bool)

(assert (= bs!238924 (and d!282643 b!941380)))

(assert (=> bs!238924 (= (and (= (reg!2912 r!15766) lt!342401) (= (Star!2583 (reg!2912 r!15766)) lt!342396)) (= lambda!31759 lambda!31721))))

(assert (=> bs!238924 (not (= lambda!31759 lambda!31722))))

(declare-fun bs!238925 () Bool)

(assert (= bs!238925 (and d!282643 b!941719)))

(assert (=> bs!238925 (not (= lambda!31759 lambda!31757))))

(declare-fun bs!238926 () Bool)

(assert (= bs!238926 (and d!282643 d!282589)))

(assert (=> bs!238926 (= (and (= (reg!2912 r!15766) lt!342401) (= (Star!2583 (reg!2912 r!15766)) lt!342396)) (= lambda!31759 lambda!31742))))

(declare-fun bs!238927 () Bool)

(assert (= bs!238927 (and d!282643 d!282631)))

(assert (=> bs!238927 (= (= (Star!2583 (reg!2912 r!15766)) lt!342402) (= lambda!31759 lambda!31758))))

(declare-fun bs!238928 () Bool)

(assert (= bs!238928 (and d!282643 d!282571)))

(assert (=> bs!238928 (not (= lambda!31759 lambda!31739))))

(assert (=> bs!238928 (= (and (= (reg!2912 r!15766) lt!342401) (= (Star!2583 (reg!2912 r!15766)) (Star!2583 lt!342401))) (= lambda!31759 lambda!31738))))

(assert (=> bs!238923 (not (= lambda!31759 lambda!31720))))

(declare-fun bs!238929 () Bool)

(assert (= bs!238929 (and d!282643 b!941720)))

(assert (=> bs!238929 (not (= lambda!31759 lambda!31756))))

(assert (=> d!282643 true))

(assert (=> d!282643 true))

(declare-fun lambda!31760 () Int)

(assert (=> bs!238923 (not (= lambda!31760 lambda!31719))))

(assert (=> bs!238924 (not (= lambda!31760 lambda!31721))))

(assert (=> bs!238924 (= (and (= (reg!2912 r!15766) lt!342401) (= (Star!2583 (reg!2912 r!15766)) lt!342396)) (= lambda!31760 lambda!31722))))

(assert (=> bs!238925 (not (= lambda!31760 lambda!31757))))

(assert (=> bs!238926 (not (= lambda!31760 lambda!31742))))

(assert (=> bs!238927 (not (= lambda!31760 lambda!31758))))

(assert (=> bs!238928 (= (and (= (reg!2912 r!15766) lt!342401) (= (Star!2583 (reg!2912 r!15766)) (Star!2583 lt!342401))) (= lambda!31760 lambda!31739))))

(declare-fun bs!238930 () Bool)

(assert (= bs!238930 d!282643))

(assert (=> bs!238930 (not (= lambda!31760 lambda!31759))))

(assert (=> bs!238928 (not (= lambda!31760 lambda!31738))))

(assert (=> bs!238923 (= (= (Star!2583 (reg!2912 r!15766)) lt!342402) (= lambda!31760 lambda!31720))))

(assert (=> bs!238929 (= (and (= (reg!2912 r!15766) (reg!2912 lt!342396)) (= (Star!2583 (reg!2912 r!15766)) lt!342396)) (= lambda!31760 lambda!31756))))

(assert (=> d!282643 true))

(assert (=> d!282643 true))

(assert (=> d!282643 (= (Exists!334 lambda!31759) (Exists!334 lambda!31760))))

(declare-fun lt!342465 () Unit!14785)

(assert (=> d!282643 (= lt!342465 (choose!5834 (reg!2912 r!15766) s!10566))))

(assert (=> d!282643 (validRegex!1052 (reg!2912 r!15766))))

(assert (=> d!282643 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!78 (reg!2912 r!15766) s!10566) lt!342465)))

(declare-fun m!1158625 () Bool)

(assert (=> bs!238930 m!1158625))

(declare-fun m!1158627 () Bool)

(assert (=> bs!238930 m!1158627))

(declare-fun m!1158629 () Bool)

(assert (=> bs!238930 m!1158629))

(assert (=> bs!238930 m!1158579))

(assert (=> b!941383 d!282643))

(declare-fun d!282645 () Bool)

(assert (=> d!282645 (= (Exists!334 lambda!31720) (choose!5833 lambda!31720))))

(declare-fun bs!238931 () Bool)

(assert (= bs!238931 d!282645))

(declare-fun m!1158631 () Bool)

(assert (=> bs!238931 m!1158631))

(assert (=> b!941383 d!282645))

(declare-fun bs!238932 () Bool)

(declare-fun b!941878 () Bool)

(assert (= bs!238932 (and b!941878 b!941383)))

(declare-fun lambda!31761 () Int)

(assert (=> bs!238932 (not (= lambda!31761 lambda!31719))))

(declare-fun bs!238933 () Bool)

(assert (= bs!238933 (and b!941878 b!941380)))

(assert (=> bs!238933 (not (= lambda!31761 lambda!31721))))

(assert (=> bs!238933 (= (and (= (reg!2912 r!15766) lt!342401) (= r!15766 lt!342396)) (= lambda!31761 lambda!31722))))

(declare-fun bs!238934 () Bool)

(assert (= bs!238934 (and b!941878 b!941719)))

(assert (=> bs!238934 (not (= lambda!31761 lambda!31757))))

(declare-fun bs!238935 () Bool)

(assert (= bs!238935 (and b!941878 d!282589)))

(assert (=> bs!238935 (not (= lambda!31761 lambda!31742))))

(declare-fun bs!238936 () Bool)

(assert (= bs!238936 (and b!941878 d!282631)))

(assert (=> bs!238936 (not (= lambda!31761 lambda!31758))))

(declare-fun bs!238937 () Bool)

(assert (= bs!238937 (and b!941878 d!282571)))

(assert (=> bs!238937 (= (and (= (reg!2912 r!15766) lt!342401) (= r!15766 (Star!2583 lt!342401))) (= lambda!31761 lambda!31739))))

(declare-fun bs!238938 () Bool)

(assert (= bs!238938 (and b!941878 d!282643)))

(assert (=> bs!238938 (not (= lambda!31761 lambda!31759))))

(assert (=> bs!238937 (not (= lambda!31761 lambda!31738))))

(assert (=> bs!238938 (= (= r!15766 (Star!2583 (reg!2912 r!15766))) (= lambda!31761 lambda!31760))))

(assert (=> bs!238932 (= (= r!15766 lt!342402) (= lambda!31761 lambda!31720))))

(declare-fun bs!238939 () Bool)

(assert (= bs!238939 (and b!941878 b!941720)))

(assert (=> bs!238939 (= (and (= (reg!2912 r!15766) (reg!2912 lt!342396)) (= r!15766 lt!342396)) (= lambda!31761 lambda!31756))))

(assert (=> b!941878 true))

(assert (=> b!941878 true))

(declare-fun bs!238940 () Bool)

(declare-fun b!941877 () Bool)

(assert (= bs!238940 (and b!941877 b!941383)))

(declare-fun lambda!31762 () Int)

(assert (=> bs!238940 (not (= lambda!31762 lambda!31719))))

(declare-fun bs!238941 () Bool)

(assert (= bs!238941 (and b!941877 b!941380)))

(assert (=> bs!238941 (not (= lambda!31762 lambda!31721))))

(assert (=> bs!238941 (not (= lambda!31762 lambda!31722))))

(declare-fun bs!238942 () Bool)

(assert (= bs!238942 (and b!941877 b!941719)))

(assert (=> bs!238942 (= (and (= (regOne!5678 r!15766) (regOne!5678 lt!342396)) (= (regTwo!5678 r!15766) (regTwo!5678 lt!342396))) (= lambda!31762 lambda!31757))))

(declare-fun bs!238943 () Bool)

(assert (= bs!238943 (and b!941877 d!282589)))

(assert (=> bs!238943 (not (= lambda!31762 lambda!31742))))

(declare-fun bs!238944 () Bool)

(assert (= bs!238944 (and b!941877 d!282631)))

(assert (=> bs!238944 (not (= lambda!31762 lambda!31758))))

(declare-fun bs!238945 () Bool)

(assert (= bs!238945 (and b!941877 b!941878)))

(assert (=> bs!238945 (not (= lambda!31762 lambda!31761))))

(declare-fun bs!238946 () Bool)

(assert (= bs!238946 (and b!941877 d!282571)))

(assert (=> bs!238946 (not (= lambda!31762 lambda!31739))))

(declare-fun bs!238947 () Bool)

(assert (= bs!238947 (and b!941877 d!282643)))

(assert (=> bs!238947 (not (= lambda!31762 lambda!31759))))

(assert (=> bs!238946 (not (= lambda!31762 lambda!31738))))

(assert (=> bs!238947 (not (= lambda!31762 lambda!31760))))

(assert (=> bs!238940 (not (= lambda!31762 lambda!31720))))

(declare-fun bs!238948 () Bool)

(assert (= bs!238948 (and b!941877 b!941720)))

(assert (=> bs!238948 (not (= lambda!31762 lambda!31756))))

(assert (=> b!941877 true))

(assert (=> b!941877 true))

(declare-fun b!941871 () Bool)

(declare-fun res!427810 () Bool)

(declare-fun e!610922 () Bool)

(assert (=> b!941871 (=> res!427810 e!610922)))

(declare-fun call!58732 () Bool)

(assert (=> b!941871 (= res!427810 call!58732)))

(declare-fun e!610923 () Bool)

(assert (=> b!941871 (= e!610923 e!610922)))

(declare-fun b!941872 () Bool)

(declare-fun e!610919 () Bool)

(assert (=> b!941872 (= e!610919 e!610923)))

(declare-fun c!153305 () Bool)

(assert (=> b!941872 (= c!153305 ((_ is Star!2583) r!15766))))

(declare-fun d!282647 () Bool)

(declare-fun c!153306 () Bool)

(assert (=> d!282647 (= c!153306 ((_ is EmptyExpr!2583) r!15766))))

(declare-fun e!610921 () Bool)

(assert (=> d!282647 (= (matchRSpec!384 r!15766 s!10566) e!610921)))

(declare-fun b!941873 () Bool)

(declare-fun c!153307 () Bool)

(assert (=> b!941873 (= c!153307 ((_ is Union!2583) r!15766))))

(declare-fun e!610920 () Bool)

(assert (=> b!941873 (= e!610920 e!610919)))

(declare-fun b!941874 () Bool)

(declare-fun c!153304 () Bool)

(assert (=> b!941874 (= c!153304 ((_ is ElementMatch!2583) r!15766))))

(declare-fun e!610917 () Bool)

(assert (=> b!941874 (= e!610917 e!610920)))

(declare-fun bm!58727 () Bool)

(declare-fun call!58733 () Bool)

(assert (=> bm!58727 (= call!58733 (Exists!334 (ite c!153305 lambda!31761 lambda!31762)))))

(declare-fun b!941875 () Bool)

(declare-fun e!610918 () Bool)

(assert (=> b!941875 (= e!610918 (matchRSpec!384 (regTwo!5679 r!15766) s!10566))))

(declare-fun b!941876 () Bool)

(assert (=> b!941876 (= e!610921 call!58732)))

(assert (=> b!941877 (= e!610923 call!58733)))

(assert (=> b!941878 (= e!610922 call!58733)))

(declare-fun b!941879 () Bool)

(assert (=> b!941879 (= e!610921 e!610917)))

(declare-fun res!427811 () Bool)

(assert (=> b!941879 (= res!427811 (not ((_ is EmptyLang!2583) r!15766)))))

(assert (=> b!941879 (=> (not res!427811) (not e!610917))))

(declare-fun b!941880 () Bool)

(assert (=> b!941880 (= e!610920 (= s!10566 (Cons!9797 (c!153190 r!15766) Nil!9797)))))

(declare-fun b!941881 () Bool)

(assert (=> b!941881 (= e!610919 e!610918)))

(declare-fun res!427809 () Bool)

(assert (=> b!941881 (= res!427809 (matchRSpec!384 (regOne!5679 r!15766) s!10566))))

(assert (=> b!941881 (=> res!427809 e!610918)))

(declare-fun bm!58728 () Bool)

(assert (=> bm!58728 (= call!58732 (isEmpty!6046 s!10566))))

(assert (= (and d!282647 c!153306) b!941876))

(assert (= (and d!282647 (not c!153306)) b!941879))

(assert (= (and b!941879 res!427811) b!941874))

(assert (= (and b!941874 c!153304) b!941880))

(assert (= (and b!941874 (not c!153304)) b!941873))

(assert (= (and b!941873 c!153307) b!941881))

(assert (= (and b!941873 (not c!153307)) b!941872))

(assert (= (and b!941881 (not res!427809)) b!941875))

(assert (= (and b!941872 c!153305) b!941871))

(assert (= (and b!941872 (not c!153305)) b!941877))

(assert (= (and b!941871 (not res!427810)) b!941878))

(assert (= (or b!941878 b!941877) bm!58727))

(assert (= (or b!941876 b!941871) bm!58728))

(declare-fun m!1158633 () Bool)

(assert (=> bm!58727 m!1158633))

(declare-fun m!1158635 () Bool)

(assert (=> b!941875 m!1158635))

(declare-fun m!1158637 () Bool)

(assert (=> b!941881 m!1158637))

(assert (=> bm!58728 m!1158355))

(assert (=> b!941385 d!282647))

(declare-fun b!941883 () Bool)

(declare-fun res!427818 () Bool)

(declare-fun e!610925 () Bool)

(assert (=> b!941883 (=> res!427818 e!610925)))

(declare-fun e!610928 () Bool)

(assert (=> b!941883 (= res!427818 e!610928)))

(declare-fun res!427815 () Bool)

(assert (=> b!941883 (=> (not res!427815) (not e!610928))))

(declare-fun lt!342466 () Bool)

(assert (=> b!941883 (= res!427815 lt!342466)))

(declare-fun b!941884 () Bool)

(declare-fun e!610924 () Bool)

(declare-fun e!610926 () Bool)

(assert (=> b!941884 (= e!610924 e!610926)))

(declare-fun c!153308 () Bool)

(assert (=> b!941884 (= c!153308 ((_ is EmptyLang!2583) r!15766))))

(declare-fun b!941885 () Bool)

(declare-fun e!610929 () Bool)

(declare-fun e!610927 () Bool)

(assert (=> b!941885 (= e!610929 e!610927)))

(declare-fun res!427813 () Bool)

(assert (=> b!941885 (=> res!427813 e!610927)))

(declare-fun call!58734 () Bool)

(assert (=> b!941885 (= res!427813 call!58734)))

(declare-fun b!941886 () Bool)

(declare-fun res!427819 () Bool)

(assert (=> b!941886 (=> res!427819 e!610927)))

(assert (=> b!941886 (= res!427819 (not (isEmpty!6046 (tail!1277 s!10566))))))

(declare-fun b!941887 () Bool)

(assert (=> b!941887 (= e!610924 (= lt!342466 call!58734))))

(declare-fun b!941888 () Bool)

(assert (=> b!941888 (= e!610927 (not (= (head!1715 s!10566) (c!153190 r!15766))))))

(declare-fun b!941889 () Bool)

(declare-fun e!610930 () Bool)

(assert (=> b!941889 (= e!610930 (matchR!1121 (derivativeStep!562 r!15766 (head!1715 s!10566)) (tail!1277 s!10566)))))

(declare-fun b!941890 () Bool)

(declare-fun res!427816 () Bool)

(assert (=> b!941890 (=> res!427816 e!610925)))

(assert (=> b!941890 (= res!427816 (not ((_ is ElementMatch!2583) r!15766)))))

(assert (=> b!941890 (= e!610926 e!610925)))

(declare-fun b!941891 () Bool)

(assert (=> b!941891 (= e!610930 (nullable!753 r!15766))))

(declare-fun b!941892 () Bool)

(assert (=> b!941892 (= e!610925 e!610929)))

(declare-fun res!427817 () Bool)

(assert (=> b!941892 (=> (not res!427817) (not e!610929))))

(assert (=> b!941892 (= res!427817 (not lt!342466))))

(declare-fun b!941882 () Bool)

(assert (=> b!941882 (= e!610926 (not lt!342466))))

(declare-fun d!282649 () Bool)

(assert (=> d!282649 e!610924))

(declare-fun c!153310 () Bool)

(assert (=> d!282649 (= c!153310 ((_ is EmptyExpr!2583) r!15766))))

(assert (=> d!282649 (= lt!342466 e!610930)))

(declare-fun c!153309 () Bool)

(assert (=> d!282649 (= c!153309 (isEmpty!6046 s!10566))))

(assert (=> d!282649 (validRegex!1052 r!15766)))

(assert (=> d!282649 (= (matchR!1121 r!15766 s!10566) lt!342466)))

(declare-fun b!941893 () Bool)

(assert (=> b!941893 (= e!610928 (= (head!1715 s!10566) (c!153190 r!15766)))))

(declare-fun bm!58729 () Bool)

(assert (=> bm!58729 (= call!58734 (isEmpty!6046 s!10566))))

(declare-fun b!941894 () Bool)

(declare-fun res!427812 () Bool)

(assert (=> b!941894 (=> (not res!427812) (not e!610928))))

(assert (=> b!941894 (= res!427812 (not call!58734))))

(declare-fun b!941895 () Bool)

(declare-fun res!427814 () Bool)

(assert (=> b!941895 (=> (not res!427814) (not e!610928))))

(assert (=> b!941895 (= res!427814 (isEmpty!6046 (tail!1277 s!10566)))))

(assert (= (and d!282649 c!153309) b!941891))

(assert (= (and d!282649 (not c!153309)) b!941889))

(assert (= (and d!282649 c!153310) b!941887))

(assert (= (and d!282649 (not c!153310)) b!941884))

(assert (= (and b!941884 c!153308) b!941882))

(assert (= (and b!941884 (not c!153308)) b!941890))

(assert (= (and b!941890 (not res!427816)) b!941883))

(assert (= (and b!941883 res!427815) b!941894))

(assert (= (and b!941894 res!427812) b!941895))

(assert (= (and b!941895 res!427814) b!941893))

(assert (= (and b!941883 (not res!427818)) b!941892))

(assert (= (and b!941892 res!427817) b!941885))

(assert (= (and b!941885 (not res!427813)) b!941886))

(assert (= (and b!941886 (not res!427819)) b!941888))

(assert (= (or b!941887 b!941885 b!941894) bm!58729))

(assert (=> b!941886 m!1158613))

(assert (=> b!941886 m!1158613))

(assert (=> b!941886 m!1158615))

(assert (=> b!941893 m!1158617))

(assert (=> d!282649 m!1158355))

(assert (=> d!282649 m!1158365))

(assert (=> b!941888 m!1158617))

(assert (=> b!941889 m!1158617))

(assert (=> b!941889 m!1158617))

(declare-fun m!1158639 () Bool)

(assert (=> b!941889 m!1158639))

(assert (=> b!941889 m!1158613))

(assert (=> b!941889 m!1158639))

(assert (=> b!941889 m!1158613))

(declare-fun m!1158641 () Bool)

(assert (=> b!941889 m!1158641))

(assert (=> b!941895 m!1158613))

(assert (=> b!941895 m!1158613))

(assert (=> b!941895 m!1158615))

(assert (=> bm!58729 m!1158355))

(declare-fun m!1158643 () Bool)

(assert (=> b!941891 m!1158643))

(assert (=> b!941385 d!282649))

(declare-fun d!282651 () Bool)

(assert (=> d!282651 (= (matchR!1121 r!15766 s!10566) (matchRSpec!384 r!15766 s!10566))))

(declare-fun lt!342467 () Unit!14785)

(assert (=> d!282651 (= lt!342467 (choose!5836 r!15766 s!10566))))

(assert (=> d!282651 (validRegex!1052 r!15766)))

(assert (=> d!282651 (= (mainMatchTheorem!384 r!15766 s!10566) lt!342467)))

(declare-fun bs!238949 () Bool)

(assert (= bs!238949 d!282651))

(assert (=> bs!238949 m!1158369))

(assert (=> bs!238949 m!1158367))

(declare-fun m!1158645 () Bool)

(assert (=> bs!238949 m!1158645))

(assert (=> bs!238949 m!1158365))

(assert (=> b!941385 d!282651))

(declare-fun b!941896 () Bool)

(declare-fun e!610932 () Bool)

(declare-fun e!610936 () Bool)

(assert (=> b!941896 (= e!610932 e!610936)))

(declare-fun c!153311 () Bool)

(assert (=> b!941896 (= c!153311 ((_ is Union!2583) lt!342401))))

(declare-fun bm!58730 () Bool)

(declare-fun call!58736 () Bool)

(declare-fun call!58735 () Bool)

(assert (=> bm!58730 (= call!58736 call!58735)))

(declare-fun b!941897 () Bool)

(declare-fun e!610934 () Bool)

(declare-fun e!610937 () Bool)

(assert (=> b!941897 (= e!610934 e!610937)))

(declare-fun res!427823 () Bool)

(assert (=> b!941897 (=> (not res!427823) (not e!610937))))

(assert (=> b!941897 (= res!427823 call!58736)))

(declare-fun b!941898 () Bool)

(declare-fun e!610931 () Bool)

(assert (=> b!941898 (= e!610931 e!610932)))

(declare-fun c!153312 () Bool)

(assert (=> b!941898 (= c!153312 ((_ is Star!2583) lt!342401))))

(declare-fun b!941900 () Bool)

(declare-fun e!610935 () Bool)

(assert (=> b!941900 (= e!610935 call!58735)))

(declare-fun bm!58731 () Bool)

(declare-fun call!58737 () Bool)

(assert (=> bm!58731 (= call!58737 (validRegex!1052 (ite c!153311 (regTwo!5679 lt!342401) (regTwo!5678 lt!342401))))))

(declare-fun b!941901 () Bool)

(assert (=> b!941901 (= e!610932 e!610935)))

(declare-fun res!427820 () Bool)

(assert (=> b!941901 (= res!427820 (not (nullable!753 (reg!2912 lt!342401))))))

(assert (=> b!941901 (=> (not res!427820) (not e!610935))))

(declare-fun b!941902 () Bool)

(declare-fun e!610933 () Bool)

(assert (=> b!941902 (= e!610933 call!58737)))

(declare-fun b!941903 () Bool)

(declare-fun res!427824 () Bool)

(assert (=> b!941903 (=> res!427824 e!610934)))

(assert (=> b!941903 (= res!427824 (not ((_ is Concat!4416) lt!342401)))))

(assert (=> b!941903 (= e!610936 e!610934)))

(declare-fun b!941904 () Bool)

(assert (=> b!941904 (= e!610937 call!58737)))

(declare-fun bm!58732 () Bool)

(assert (=> bm!58732 (= call!58735 (validRegex!1052 (ite c!153312 (reg!2912 lt!342401) (ite c!153311 (regOne!5679 lt!342401) (regOne!5678 lt!342401)))))))

(declare-fun d!282653 () Bool)

(declare-fun res!427822 () Bool)

(assert (=> d!282653 (=> res!427822 e!610931)))

(assert (=> d!282653 (= res!427822 ((_ is ElementMatch!2583) lt!342401))))

(assert (=> d!282653 (= (validRegex!1052 lt!342401) e!610931)))

(declare-fun b!941899 () Bool)

(declare-fun res!427821 () Bool)

(assert (=> b!941899 (=> (not res!427821) (not e!610933))))

(assert (=> b!941899 (= res!427821 call!58736)))

(assert (=> b!941899 (= e!610936 e!610933)))

(assert (= (and d!282653 (not res!427822)) b!941898))

(assert (= (and b!941898 c!153312) b!941901))

(assert (= (and b!941898 (not c!153312)) b!941896))

(assert (= (and b!941901 res!427820) b!941900))

(assert (= (and b!941896 c!153311) b!941899))

(assert (= (and b!941896 (not c!153311)) b!941903))

(assert (= (and b!941899 res!427821) b!941902))

(assert (= (and b!941903 (not res!427824)) b!941897))

(assert (= (and b!941897 res!427823) b!941904))

(assert (= (or b!941902 b!941904) bm!58731))

(assert (= (or b!941899 b!941897) bm!58730))

(assert (= (or b!941900 bm!58730) bm!58732))

(declare-fun m!1158647 () Bool)

(assert (=> bm!58731 m!1158647))

(declare-fun m!1158649 () Bool)

(assert (=> b!941901 m!1158649))

(declare-fun m!1158651 () Bool)

(assert (=> bm!58732 m!1158651))

(assert (=> b!941379 d!282653))

(declare-fun b!941909 () Bool)

(declare-fun e!610940 () Bool)

(declare-fun tp!291281 () Bool)

(assert (=> b!941909 (= e!610940 (and tp_is_empty!4809 tp!291281))))

(assert (=> b!941386 (= tp!291237 e!610940)))

(assert (= (and b!941386 ((_ is Cons!9797) (t!100859 s!10566))) b!941909))

(declare-fun b!941920 () Bool)

(declare-fun e!610943 () Bool)

(assert (=> b!941920 (= e!610943 tp_is_empty!4809)))

(assert (=> b!941382 (= tp!291236 e!610943)))

(declare-fun b!941921 () Bool)

(declare-fun tp!291296 () Bool)

(declare-fun tp!291295 () Bool)

(assert (=> b!941921 (= e!610943 (and tp!291296 tp!291295))))

(declare-fun b!941922 () Bool)

(declare-fun tp!291294 () Bool)

(assert (=> b!941922 (= e!610943 tp!291294)))

(declare-fun b!941923 () Bool)

(declare-fun tp!291292 () Bool)

(declare-fun tp!291293 () Bool)

(assert (=> b!941923 (= e!610943 (and tp!291292 tp!291293))))

(assert (= (and b!941382 ((_ is ElementMatch!2583) (reg!2912 r!15766))) b!941920))

(assert (= (and b!941382 ((_ is Concat!4416) (reg!2912 r!15766))) b!941921))

(assert (= (and b!941382 ((_ is Star!2583) (reg!2912 r!15766))) b!941922))

(assert (= (and b!941382 ((_ is Union!2583) (reg!2912 r!15766))) b!941923))

(declare-fun b!941924 () Bool)

(declare-fun e!610944 () Bool)

(assert (=> b!941924 (= e!610944 tp_is_empty!4809)))

(assert (=> b!941388 (= tp!291240 e!610944)))

(declare-fun b!941925 () Bool)

(declare-fun tp!291301 () Bool)

(declare-fun tp!291300 () Bool)

(assert (=> b!941925 (= e!610944 (and tp!291301 tp!291300))))

(declare-fun b!941926 () Bool)

(declare-fun tp!291299 () Bool)

(assert (=> b!941926 (= e!610944 tp!291299)))

(declare-fun b!941927 () Bool)

(declare-fun tp!291297 () Bool)

(declare-fun tp!291298 () Bool)

(assert (=> b!941927 (= e!610944 (and tp!291297 tp!291298))))

(assert (= (and b!941388 ((_ is ElementMatch!2583) (regOne!5678 r!15766))) b!941924))

(assert (= (and b!941388 ((_ is Concat!4416) (regOne!5678 r!15766))) b!941925))

(assert (= (and b!941388 ((_ is Star!2583) (regOne!5678 r!15766))) b!941926))

(assert (= (and b!941388 ((_ is Union!2583) (regOne!5678 r!15766))) b!941927))

(declare-fun b!941928 () Bool)

(declare-fun e!610945 () Bool)

(assert (=> b!941928 (= e!610945 tp_is_empty!4809)))

(assert (=> b!941388 (= tp!291235 e!610945)))

(declare-fun b!941929 () Bool)

(declare-fun tp!291306 () Bool)

(declare-fun tp!291305 () Bool)

(assert (=> b!941929 (= e!610945 (and tp!291306 tp!291305))))

(declare-fun b!941930 () Bool)

(declare-fun tp!291304 () Bool)

(assert (=> b!941930 (= e!610945 tp!291304)))

(declare-fun b!941931 () Bool)

(declare-fun tp!291302 () Bool)

(declare-fun tp!291303 () Bool)

(assert (=> b!941931 (= e!610945 (and tp!291302 tp!291303))))

(assert (= (and b!941388 ((_ is ElementMatch!2583) (regTwo!5678 r!15766))) b!941928))

(assert (= (and b!941388 ((_ is Concat!4416) (regTwo!5678 r!15766))) b!941929))

(assert (= (and b!941388 ((_ is Star!2583) (regTwo!5678 r!15766))) b!941930))

(assert (= (and b!941388 ((_ is Union!2583) (regTwo!5678 r!15766))) b!941931))

(declare-fun b!941932 () Bool)

(declare-fun e!610946 () Bool)

(assert (=> b!941932 (= e!610946 tp_is_empty!4809)))

(assert (=> b!941384 (= tp!291238 e!610946)))

(declare-fun b!941933 () Bool)

(declare-fun tp!291311 () Bool)

(declare-fun tp!291310 () Bool)

(assert (=> b!941933 (= e!610946 (and tp!291311 tp!291310))))

(declare-fun b!941934 () Bool)

(declare-fun tp!291309 () Bool)

(assert (=> b!941934 (= e!610946 tp!291309)))

(declare-fun b!941935 () Bool)

(declare-fun tp!291307 () Bool)

(declare-fun tp!291308 () Bool)

(assert (=> b!941935 (= e!610946 (and tp!291307 tp!291308))))

(assert (= (and b!941384 ((_ is ElementMatch!2583) (regOne!5679 r!15766))) b!941932))

(assert (= (and b!941384 ((_ is Concat!4416) (regOne!5679 r!15766))) b!941933))

(assert (= (and b!941384 ((_ is Star!2583) (regOne!5679 r!15766))) b!941934))

(assert (= (and b!941384 ((_ is Union!2583) (regOne!5679 r!15766))) b!941935))

(declare-fun b!941936 () Bool)

(declare-fun e!610947 () Bool)

(assert (=> b!941936 (= e!610947 tp_is_empty!4809)))

(assert (=> b!941384 (= tp!291239 e!610947)))

(declare-fun b!941937 () Bool)

(declare-fun tp!291316 () Bool)

(declare-fun tp!291315 () Bool)

(assert (=> b!941937 (= e!610947 (and tp!291316 tp!291315))))

(declare-fun b!941938 () Bool)

(declare-fun tp!291314 () Bool)

(assert (=> b!941938 (= e!610947 tp!291314)))

(declare-fun b!941939 () Bool)

(declare-fun tp!291312 () Bool)

(declare-fun tp!291313 () Bool)

(assert (=> b!941939 (= e!610947 (and tp!291312 tp!291313))))

(assert (= (and b!941384 ((_ is ElementMatch!2583) (regTwo!5679 r!15766))) b!941936))

(assert (= (and b!941384 ((_ is Concat!4416) (regTwo!5679 r!15766))) b!941937))

(assert (= (and b!941384 ((_ is Star!2583) (regTwo!5679 r!15766))) b!941938))

(assert (= (and b!941384 ((_ is Union!2583) (regTwo!5679 r!15766))) b!941939))

(check-sat (not b!941870) (not b!941925) (not b!941891) (not bm!58708) (not b!941793) (not bm!58727) (not bm!58726) (not b!941744) (not b!941863) (not b!941895) (not d!282571) (not b!941939) (not b!941791) (not d!282621) (not b!941749) (not bm!58722) (not b!941923) (not bm!58720) (not bm!58728) (not d!282625) (not b!941935) (not b!941866) (not b!941792) (not bm!58705) (not b!941937) (not b!941747) (not b!941921) (not bm!58732) (not b!941886) (not bm!58707) (not d!282641) (not b!941931) (not b!941864) (not b!941783) (not d!282639) (not d!282643) (not b!941819) (not b!941934) (not b!941875) (not b!941926) (not d!282637) (not d!282623) (not bm!58695) (not b!941745) (not b!941861) (not d!282651) (not b!941723) (not b!941893) (not b!941774) (not b!941889) (not bm!58731) (not b!941933) (not d!282633) (not d!282619) (not b!941929) (not b!941888) (not b!941789) (not b!941790) (not bm!58696) (not d!282631) (not b!941938) (not b!941927) (not d!282635) (not b!941748) (not bm!58729) (not b!941909) (not bm!58704) (not d!282645) (not b!941922) tp_is_empty!4809 (not d!282649) (not b!941746) (not b!941717) (not d!282567) (not b!941881) (not b!941901) (not b!941794) (not b!941930) (not d!282589) (not b!941868))
(check-sat)
