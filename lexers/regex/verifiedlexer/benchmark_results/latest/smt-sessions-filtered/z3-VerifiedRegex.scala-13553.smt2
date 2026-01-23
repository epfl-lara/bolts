; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729188 () Bool)

(assert start!729188)

(declare-fun b!7539501 () Bool)

(declare-fun e!4492272 () Bool)

(declare-fun e!4492276 () Bool)

(assert (=> b!7539501 (= e!4492272 e!4492276)))

(declare-fun res!3021475 () Bool)

(assert (=> b!7539501 (=> res!3021475 e!4492276)))

(declare-datatypes ((C!40128 0))(
  ( (C!40129 (val!30504 Int)) )
))
(declare-datatypes ((List!72784 0))(
  ( (Nil!72660) (Cons!72660 (h!79108 C!40128) (t!387491 List!72784)) )
))
(declare-fun input!7874 () List!72784)

(declare-fun lt!2642846 () List!72784)

(declare-fun knownP!30 () List!72784)

(declare-fun ++!17418 (List!72784 List!72784) List!72784)

(assert (=> b!7539501 (= res!3021475 (not (= (++!17418 knownP!30 lt!2642846) input!7874)))))

(declare-fun getSuffix!3587 (List!72784 List!72784) List!72784)

(assert (=> b!7539501 (= lt!2642846 (getSuffix!3587 input!7874 knownP!30))))

(declare-fun lt!2642857 () List!72784)

(declare-fun lt!2642849 () List!72784)

(assert (=> b!7539501 (= lt!2642857 (getSuffix!3587 knownP!30 lt!2642849))))

(declare-fun isPrefix!6107 (List!72784 List!72784) Bool)

(assert (=> b!7539501 (isPrefix!6107 lt!2642849 knownP!30)))

(declare-datatypes ((Unit!166740 0))(
  ( (Unit!166741) )
))
(declare-fun lt!2642862 () Unit!166740)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!857 (List!72784 List!72784 List!72784) Unit!166740)

(assert (=> b!7539501 (= lt!2642862 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!857 knownP!30 lt!2642849 input!7874))))

(declare-datatypes ((Regex!19901 0))(
  ( (ElementMatch!19901 (c!1392028 C!40128)) (Concat!28746 (regOne!40314 Regex!19901) (regTwo!40314 Regex!19901)) (EmptyExpr!19901) (Star!19901 (reg!20230 Regex!19901)) (EmptyLang!19901) (Union!19901 (regOne!40315 Regex!19901) (regTwo!40315 Regex!19901)) )
))
(declare-fun baseR!101 () Regex!19901)

(declare-fun lt!2642850 () C!40128)

(declare-fun r!24333 () Regex!19901)

(declare-fun derivative!433 (Regex!19901 List!72784) Regex!19901)

(declare-fun derivativeStep!5691 (Regex!19901 C!40128) Regex!19901)

(assert (=> b!7539501 (= (derivative!433 baseR!101 lt!2642849) (derivativeStep!5691 r!24333 lt!2642850))))

(declare-fun testedP!423 () List!72784)

(declare-fun lt!2642855 () Unit!166740)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!139 (Regex!19901 Regex!19901 List!72784 C!40128) Unit!166740)

(assert (=> b!7539501 (= lt!2642855 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!139 baseR!101 r!24333 testedP!423 lt!2642850))))

(assert (=> b!7539501 (isPrefix!6107 lt!2642849 input!7874)))

(declare-fun lt!2642851 () Unit!166740)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1172 (List!72784 List!72784) Unit!166740)

(assert (=> b!7539501 (= lt!2642851 (lemmaAddHeadSuffixToPrefixStillPrefix!1172 testedP!423 input!7874))))

(assert (=> b!7539501 (= lt!2642849 (++!17418 testedP!423 (Cons!72660 lt!2642850 Nil!72660)))))

(declare-fun lt!2642859 () List!72784)

(declare-fun head!15491 (List!72784) C!40128)

(assert (=> b!7539501 (= lt!2642850 (head!15491 lt!2642859))))

(assert (=> b!7539501 (= lt!2642859 (getSuffix!3587 input!7874 testedP!423))))

(declare-fun b!7539502 () Bool)

(declare-fun e!4492275 () Bool)

(declare-fun tp_is_empty!50157 () Bool)

(declare-fun tp!2193019 () Bool)

(assert (=> b!7539502 (= e!4492275 (and tp_is_empty!50157 tp!2193019))))

(declare-fun b!7539503 () Bool)

(declare-fun res!3021473 () Bool)

(assert (=> b!7539503 (=> res!3021473 e!4492272)))

(declare-fun lt!2642853 () Int)

(declare-fun lt!2642861 () Int)

(assert (=> b!7539503 (= res!3021473 (= lt!2642853 lt!2642861))))

(declare-fun b!7539504 () Bool)

(declare-fun e!4492266 () Bool)

(declare-fun tp!2193022 () Bool)

(assert (=> b!7539504 (= e!4492266 tp!2193022)))

(declare-fun b!7539505 () Bool)

(declare-fun res!3021486 () Bool)

(declare-fun e!4492269 () Bool)

(assert (=> b!7539505 (=> (not res!3021486) (not e!4492269))))

(assert (=> b!7539505 (= res!3021486 (isPrefix!6107 knownP!30 input!7874))))

(declare-fun b!7539506 () Bool)

(declare-fun res!3021484 () Bool)

(declare-fun e!4492274 () Bool)

(assert (=> b!7539506 (=> (not res!3021484) (not e!4492274))))

(declare-fun matchR!9503 (Regex!19901 List!72784) Bool)

(assert (=> b!7539506 (= res!3021484 (matchR!9503 baseR!101 knownP!30))))

(declare-fun b!7539507 () Bool)

(declare-fun tp!2193012 () Bool)

(declare-fun tp!2193021 () Bool)

(assert (=> b!7539507 (= e!4492266 (and tp!2193012 tp!2193021))))

(declare-fun b!7539508 () Bool)

(assert (=> b!7539508 (= e!4492266 tp_is_empty!50157)))

(declare-fun b!7539510 () Bool)

(declare-fun e!4492277 () Bool)

(declare-fun tp!2193018 () Bool)

(assert (=> b!7539510 (= e!4492277 (and tp_is_empty!50157 tp!2193018))))

(declare-fun b!7539511 () Bool)

(declare-fun e!4492271 () Bool)

(declare-fun e!4492270 () Bool)

(assert (=> b!7539511 (= e!4492271 e!4492270)))

(declare-fun res!3021483 () Bool)

(assert (=> b!7539511 (=> res!3021483 e!4492270)))

(declare-fun lt!2642856 () List!72784)

(assert (=> b!7539511 (= res!3021483 (not (= (head!15491 lt!2642856) lt!2642850)))))

(declare-fun lt!2642860 () List!72784)

(assert (=> b!7539511 (= lt!2642860 lt!2642859)))

(declare-fun lt!2642848 () Unit!166740)

(declare-fun lemmaSamePrefixThenSameSuffix!2835 (List!72784 List!72784 List!72784 List!72784 List!72784) Unit!166740)

(assert (=> b!7539511 (= lt!2642848 (lemmaSamePrefixThenSameSuffix!2835 testedP!423 lt!2642860 testedP!423 lt!2642859 input!7874))))

(declare-fun b!7539512 () Bool)

(declare-fun res!3021474 () Bool)

(assert (=> b!7539512 (=> res!3021474 e!4492272)))

(declare-fun lostCause!1693 (Regex!19901) Bool)

(assert (=> b!7539512 (= res!3021474 (lostCause!1693 r!24333))))

(declare-fun b!7539513 () Bool)

(declare-fun res!3021480 () Bool)

(assert (=> b!7539513 (=> (not res!3021480) (not e!4492269))))

(assert (=> b!7539513 (= res!3021480 (isPrefix!6107 testedP!423 input!7874))))

(declare-fun b!7539514 () Bool)

(declare-fun e!4492268 () Bool)

(declare-fun tp!2193023 () Bool)

(assert (=> b!7539514 (= e!4492268 tp!2193023)))

(declare-fun b!7539515 () Bool)

(declare-fun res!3021485 () Bool)

(declare-fun e!4492267 () Bool)

(assert (=> b!7539515 (=> res!3021485 e!4492267)))

(assert (=> b!7539515 (= res!3021485 (not (= (++!17418 testedP!423 lt!2642859) input!7874)))))

(declare-fun b!7539516 () Bool)

(assert (=> b!7539516 (= e!4492268 tp_is_empty!50157)))

(declare-fun b!7539517 () Bool)

(declare-fun res!3021478 () Bool)

(assert (=> b!7539517 (=> (not res!3021478) (not e!4492269))))

(declare-fun validRegex!10329 (Regex!19901) Bool)

(assert (=> b!7539517 (= res!3021478 (validRegex!10329 r!24333))))

(declare-fun b!7539518 () Bool)

(declare-fun res!3021488 () Bool)

(assert (=> b!7539518 (=> res!3021488 e!4492272)))

(declare-fun size!42397 (List!72784) Int)

(assert (=> b!7539518 (= res!3021488 (>= lt!2642853 (size!42397 input!7874)))))

(declare-fun b!7539519 () Bool)

(assert (=> b!7539519 (= e!4492267 e!4492271)))

(declare-fun res!3021479 () Bool)

(assert (=> b!7539519 (=> res!3021479 e!4492271)))

(declare-fun lt!2642847 () List!72784)

(assert (=> b!7539519 (= res!3021479 (not (= lt!2642847 input!7874)))))

(declare-fun lt!2642852 () List!72784)

(assert (=> b!7539519 (= lt!2642852 lt!2642847)))

(assert (=> b!7539519 (= lt!2642847 (++!17418 testedP!423 lt!2642860))))

(assert (=> b!7539519 (= lt!2642860 (++!17418 lt!2642856 lt!2642846))))

(declare-fun lt!2642854 () Unit!166740)

(declare-fun lemmaConcatAssociativity!3066 (List!72784 List!72784 List!72784) Unit!166740)

(assert (=> b!7539519 (= lt!2642854 (lemmaConcatAssociativity!3066 testedP!423 lt!2642856 lt!2642846))))

(declare-fun b!7539520 () Bool)

(assert (=> b!7539520 (= e!4492274 (not e!4492272))))

(declare-fun res!3021482 () Bool)

(assert (=> b!7539520 (=> res!3021482 e!4492272)))

(assert (=> b!7539520 (= res!3021482 (not (matchR!9503 r!24333 lt!2642856)))))

(assert (=> b!7539520 (= lt!2642856 (getSuffix!3587 knownP!30 testedP!423))))

(assert (=> b!7539520 (isPrefix!6107 testedP!423 knownP!30)))

(declare-fun lt!2642858 () Unit!166740)

(assert (=> b!7539520 (= lt!2642858 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!857 knownP!30 testedP!423 input!7874))))

(declare-fun b!7539521 () Bool)

(declare-fun tp!2193011 () Bool)

(declare-fun tp!2193013 () Bool)

(assert (=> b!7539521 (= e!4492266 (and tp!2193011 tp!2193013))))

(declare-fun b!7539522 () Bool)

(declare-fun tp!2193015 () Bool)

(declare-fun tp!2193016 () Bool)

(assert (=> b!7539522 (= e!4492268 (and tp!2193015 tp!2193016))))

(declare-fun b!7539523 () Bool)

(assert (=> b!7539523 (= e!4492269 e!4492274)))

(declare-fun res!3021476 () Bool)

(assert (=> b!7539523 (=> (not res!3021476) (not e!4492274))))

(assert (=> b!7539523 (= res!3021476 (>= lt!2642861 lt!2642853))))

(assert (=> b!7539523 (= lt!2642853 (size!42397 testedP!423))))

(assert (=> b!7539523 (= lt!2642861 (size!42397 knownP!30))))

(declare-fun b!7539524 () Bool)

(declare-fun tp!2193014 () Bool)

(declare-fun tp!2193020 () Bool)

(assert (=> b!7539524 (= e!4492268 (and tp!2193014 tp!2193020))))

(declare-fun b!7539525 () Bool)

(declare-fun e!4492273 () Bool)

(declare-fun tp!2193017 () Bool)

(assert (=> b!7539525 (= e!4492273 (and tp_is_empty!50157 tp!2193017))))

(declare-fun res!3021481 () Bool)

(assert (=> start!729188 (=> (not res!3021481) (not e!4492269))))

(assert (=> start!729188 (= res!3021481 (validRegex!10329 baseR!101))))

(assert (=> start!729188 e!4492269))

(assert (=> start!729188 e!4492268))

(assert (=> start!729188 e!4492275))

(assert (=> start!729188 e!4492273))

(assert (=> start!729188 e!4492277))

(assert (=> start!729188 e!4492266))

(declare-fun b!7539509 () Bool)

(declare-fun res!3021477 () Bool)

(assert (=> b!7539509 (=> res!3021477 e!4492272)))

(assert (=> b!7539509 (= res!3021477 (not (= (derivative!433 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7539526 () Bool)

(assert (=> b!7539526 (= e!4492276 e!4492267)))

(declare-fun res!3021487 () Bool)

(assert (=> b!7539526 (=> res!3021487 e!4492267)))

(assert (=> b!7539526 (= res!3021487 (not (= lt!2642852 input!7874)))))

(assert (=> b!7539526 (= lt!2642852 (++!17418 (++!17418 testedP!423 lt!2642856) lt!2642846))))

(declare-fun b!7539527 () Bool)

(assert (=> b!7539527 (= e!4492270 (not (= lt!2642859 Nil!72660)))))

(assert (= (and start!729188 res!3021481) b!7539517))

(assert (= (and b!7539517 res!3021478) b!7539513))

(assert (= (and b!7539513 res!3021480) b!7539505))

(assert (= (and b!7539505 res!3021486) b!7539523))

(assert (= (and b!7539523 res!3021476) b!7539506))

(assert (= (and b!7539506 res!3021484) b!7539520))

(assert (= (and b!7539520 (not res!3021482)) b!7539509))

(assert (= (and b!7539509 (not res!3021477)) b!7539512))

(assert (= (and b!7539512 (not res!3021474)) b!7539503))

(assert (= (and b!7539503 (not res!3021473)) b!7539518))

(assert (= (and b!7539518 (not res!3021488)) b!7539501))

(assert (= (and b!7539501 (not res!3021475)) b!7539526))

(assert (= (and b!7539526 (not res!3021487)) b!7539515))

(assert (= (and b!7539515 (not res!3021485)) b!7539519))

(assert (= (and b!7539519 (not res!3021479)) b!7539511))

(assert (= (and b!7539511 (not res!3021483)) b!7539527))

(get-info :version)

(assert (= (and start!729188 ((_ is ElementMatch!19901) baseR!101)) b!7539516))

(assert (= (and start!729188 ((_ is Concat!28746) baseR!101)) b!7539522))

(assert (= (and start!729188 ((_ is Star!19901) baseR!101)) b!7539514))

(assert (= (and start!729188 ((_ is Union!19901) baseR!101)) b!7539524))

(assert (= (and start!729188 ((_ is Cons!72660) input!7874)) b!7539502))

(assert (= (and start!729188 ((_ is Cons!72660) knownP!30)) b!7539525))

(assert (= (and start!729188 ((_ is Cons!72660) testedP!423)) b!7539510))

(assert (= (and start!729188 ((_ is ElementMatch!19901) r!24333)) b!7539508))

(assert (= (and start!729188 ((_ is Concat!28746) r!24333)) b!7539507))

(assert (= (and start!729188 ((_ is Star!19901) r!24333)) b!7539504))

(assert (= (and start!729188 ((_ is Union!19901) r!24333)) b!7539521))

(declare-fun m!8109164 () Bool)

(assert (=> b!7539526 m!8109164))

(assert (=> b!7539526 m!8109164))

(declare-fun m!8109166 () Bool)

(assert (=> b!7539526 m!8109166))

(declare-fun m!8109168 () Bool)

(assert (=> b!7539517 m!8109168))

(declare-fun m!8109170 () Bool)

(assert (=> b!7539519 m!8109170))

(declare-fun m!8109172 () Bool)

(assert (=> b!7539519 m!8109172))

(declare-fun m!8109174 () Bool)

(assert (=> b!7539519 m!8109174))

(declare-fun m!8109176 () Bool)

(assert (=> b!7539509 m!8109176))

(declare-fun m!8109178 () Bool)

(assert (=> b!7539513 m!8109178))

(declare-fun m!8109180 () Bool)

(assert (=> b!7539506 m!8109180))

(declare-fun m!8109182 () Bool)

(assert (=> b!7539512 m!8109182))

(declare-fun m!8109184 () Bool)

(assert (=> b!7539505 m!8109184))

(declare-fun m!8109186 () Bool)

(assert (=> b!7539523 m!8109186))

(declare-fun m!8109188 () Bool)

(assert (=> b!7539523 m!8109188))

(declare-fun m!8109190 () Bool)

(assert (=> b!7539518 m!8109190))

(declare-fun m!8109192 () Bool)

(assert (=> b!7539501 m!8109192))

(declare-fun m!8109194 () Bool)

(assert (=> b!7539501 m!8109194))

(declare-fun m!8109196 () Bool)

(assert (=> b!7539501 m!8109196))

(declare-fun m!8109198 () Bool)

(assert (=> b!7539501 m!8109198))

(declare-fun m!8109200 () Bool)

(assert (=> b!7539501 m!8109200))

(declare-fun m!8109202 () Bool)

(assert (=> b!7539501 m!8109202))

(declare-fun m!8109204 () Bool)

(assert (=> b!7539501 m!8109204))

(declare-fun m!8109206 () Bool)

(assert (=> b!7539501 m!8109206))

(declare-fun m!8109208 () Bool)

(assert (=> b!7539501 m!8109208))

(declare-fun m!8109210 () Bool)

(assert (=> b!7539501 m!8109210))

(declare-fun m!8109212 () Bool)

(assert (=> b!7539501 m!8109212))

(declare-fun m!8109214 () Bool)

(assert (=> b!7539501 m!8109214))

(declare-fun m!8109216 () Bool)

(assert (=> b!7539501 m!8109216))

(declare-fun m!8109218 () Bool)

(assert (=> b!7539520 m!8109218))

(declare-fun m!8109220 () Bool)

(assert (=> b!7539520 m!8109220))

(declare-fun m!8109222 () Bool)

(assert (=> b!7539520 m!8109222))

(declare-fun m!8109224 () Bool)

(assert (=> b!7539520 m!8109224))

(declare-fun m!8109226 () Bool)

(assert (=> start!729188 m!8109226))

(declare-fun m!8109228 () Bool)

(assert (=> b!7539511 m!8109228))

(declare-fun m!8109230 () Bool)

(assert (=> b!7539511 m!8109230))

(declare-fun m!8109232 () Bool)

(assert (=> b!7539515 m!8109232))

(check-sat (not b!7539518) (not b!7539505) (not b!7539517) (not b!7539519) (not b!7539511) (not b!7539512) (not b!7539522) (not b!7539525) (not b!7539524) (not b!7539515) (not b!7539521) (not b!7539501) (not b!7539514) (not b!7539526) (not b!7539520) (not b!7539506) tp_is_empty!50157 (not b!7539510) (not b!7539509) (not b!7539502) (not b!7539513) (not start!729188) (not b!7539523) (not b!7539507) (not b!7539504))
(check-sat)
(get-model)

(declare-fun d!2311002 () Bool)

(assert (=> d!2311002 (= (head!15491 lt!2642856) (h!79108 lt!2642856))))

(assert (=> b!7539511 d!2311002))

(declare-fun d!2311004 () Bool)

(assert (=> d!2311004 (= lt!2642860 lt!2642859)))

(declare-fun lt!2642865 () Unit!166740)

(declare-fun choose!58325 (List!72784 List!72784 List!72784 List!72784 List!72784) Unit!166740)

(assert (=> d!2311004 (= lt!2642865 (choose!58325 testedP!423 lt!2642860 testedP!423 lt!2642859 input!7874))))

(assert (=> d!2311004 (isPrefix!6107 testedP!423 input!7874)))

(assert (=> d!2311004 (= (lemmaSamePrefixThenSameSuffix!2835 testedP!423 lt!2642860 testedP!423 lt!2642859 input!7874) lt!2642865)))

(declare-fun bs!1939969 () Bool)

(assert (= bs!1939969 d!2311004))

(declare-fun m!8109234 () Bool)

(assert (=> bs!1939969 m!8109234))

(assert (=> bs!1939969 m!8109178))

(assert (=> b!7539511 d!2311004))

(declare-fun b!7539538 () Bool)

(declare-fun e!4492286 () Bool)

(declare-fun tail!15037 (List!72784) List!72784)

(assert (=> b!7539538 (= e!4492286 (isPrefix!6107 (tail!15037 lt!2642849) (tail!15037 knownP!30)))))

(declare-fun d!2311006 () Bool)

(declare-fun e!4492284 () Bool)

(assert (=> d!2311006 e!4492284))

(declare-fun res!3021498 () Bool)

(assert (=> d!2311006 (=> res!3021498 e!4492284)))

(declare-fun lt!2642868 () Bool)

(assert (=> d!2311006 (= res!3021498 (not lt!2642868))))

(declare-fun e!4492285 () Bool)

(assert (=> d!2311006 (= lt!2642868 e!4492285)))

(declare-fun res!3021500 () Bool)

(assert (=> d!2311006 (=> res!3021500 e!4492285)))

(assert (=> d!2311006 (= res!3021500 ((_ is Nil!72660) lt!2642849))))

(assert (=> d!2311006 (= (isPrefix!6107 lt!2642849 knownP!30) lt!2642868)))

(declare-fun b!7539539 () Bool)

(assert (=> b!7539539 (= e!4492284 (>= (size!42397 knownP!30) (size!42397 lt!2642849)))))

(declare-fun b!7539536 () Bool)

(assert (=> b!7539536 (= e!4492285 e!4492286)))

(declare-fun res!3021497 () Bool)

(assert (=> b!7539536 (=> (not res!3021497) (not e!4492286))))

(assert (=> b!7539536 (= res!3021497 (not ((_ is Nil!72660) knownP!30)))))

(declare-fun b!7539537 () Bool)

(declare-fun res!3021499 () Bool)

(assert (=> b!7539537 (=> (not res!3021499) (not e!4492286))))

(assert (=> b!7539537 (= res!3021499 (= (head!15491 lt!2642849) (head!15491 knownP!30)))))

(assert (= (and d!2311006 (not res!3021500)) b!7539536))

(assert (= (and b!7539536 res!3021497) b!7539537))

(assert (= (and b!7539537 res!3021499) b!7539538))

(assert (= (and d!2311006 (not res!3021498)) b!7539539))

(declare-fun m!8109236 () Bool)

(assert (=> b!7539538 m!8109236))

(declare-fun m!8109238 () Bool)

(assert (=> b!7539538 m!8109238))

(assert (=> b!7539538 m!8109236))

(assert (=> b!7539538 m!8109238))

(declare-fun m!8109240 () Bool)

(assert (=> b!7539538 m!8109240))

(assert (=> b!7539539 m!8109188))

(declare-fun m!8109242 () Bool)

(assert (=> b!7539539 m!8109242))

(declare-fun m!8109244 () Bool)

(assert (=> b!7539537 m!8109244))

(declare-fun m!8109246 () Bool)

(assert (=> b!7539537 m!8109246))

(assert (=> b!7539501 d!2311006))

(declare-fun d!2311008 () Bool)

(assert (=> d!2311008 (= (derivative!433 baseR!101 (++!17418 testedP!423 (Cons!72660 lt!2642850 Nil!72660))) (derivativeStep!5691 r!24333 lt!2642850))))

(declare-fun lt!2642875 () Unit!166740)

(declare-fun choose!58326 (Regex!19901 Regex!19901 List!72784 C!40128) Unit!166740)

(assert (=> d!2311008 (= lt!2642875 (choose!58326 baseR!101 r!24333 testedP!423 lt!2642850))))

(assert (=> d!2311008 (validRegex!10329 baseR!101)))

(assert (=> d!2311008 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!139 baseR!101 r!24333 testedP!423 lt!2642850) lt!2642875)))

(declare-fun bs!1939970 () Bool)

(assert (= bs!1939970 d!2311008))

(declare-fun m!8109252 () Bool)

(assert (=> bs!1939970 m!8109252))

(assert (=> bs!1939970 m!8109204))

(declare-fun m!8109254 () Bool)

(assert (=> bs!1939970 m!8109254))

(assert (=> bs!1939970 m!8109204))

(assert (=> bs!1939970 m!8109226))

(assert (=> bs!1939970 m!8109212))

(assert (=> b!7539501 d!2311008))

(declare-fun call!691622 () Regex!19901)

(declare-fun c!1392056 () Bool)

(declare-fun bm!691616 () Bool)

(assert (=> bm!691616 (= call!691622 (derivativeStep!5691 (ite c!1392056 (regOne!40315 r!24333) (regTwo!40314 r!24333)) lt!2642850))))

(declare-fun bm!691617 () Bool)

(declare-fun call!691621 () Regex!19901)

(declare-fun call!691623 () Regex!19901)

(assert (=> bm!691617 (= call!691621 call!691623)))

(declare-fun b!7539612 () Bool)

(declare-fun e!4492336 () Regex!19901)

(declare-fun call!691624 () Regex!19901)

(assert (=> b!7539612 (= e!4492336 (Union!19901 call!691622 call!691624))))

(declare-fun b!7539613 () Bool)

(declare-fun e!4492337 () Regex!19901)

(declare-fun e!4492333 () Regex!19901)

(assert (=> b!7539613 (= e!4492337 e!4492333)))

(declare-fun c!1392060 () Bool)

(assert (=> b!7539613 (= c!1392060 ((_ is ElementMatch!19901) r!24333))))

(declare-fun b!7539614 () Bool)

(assert (=> b!7539614 (= c!1392056 ((_ is Union!19901) r!24333))))

(assert (=> b!7539614 (= e!4492333 e!4492336)))

(declare-fun b!7539615 () Bool)

(assert (=> b!7539615 (= e!4492333 (ite (= lt!2642850 (c!1392028 r!24333)) EmptyExpr!19901 EmptyLang!19901))))

(declare-fun b!7539616 () Bool)

(declare-fun e!4492334 () Regex!19901)

(assert (=> b!7539616 (= e!4492336 e!4492334)))

(declare-fun c!1392059 () Bool)

(assert (=> b!7539616 (= c!1392059 ((_ is Star!19901) r!24333))))

(declare-fun b!7539617 () Bool)

(declare-fun c!1392058 () Bool)

(declare-fun nullable!8675 (Regex!19901) Bool)

(assert (=> b!7539617 (= c!1392058 (nullable!8675 (regOne!40314 r!24333)))))

(declare-fun e!4492335 () Regex!19901)

(assert (=> b!7539617 (= e!4492334 e!4492335)))

(declare-fun b!7539618 () Bool)

(assert (=> b!7539618 (= e!4492337 EmptyLang!19901)))

(declare-fun b!7539619 () Bool)

(assert (=> b!7539619 (= e!4492335 (Union!19901 (Concat!28746 call!691621 (regTwo!40314 r!24333)) call!691622))))

(declare-fun bm!691619 () Bool)

(assert (=> bm!691619 (= call!691624 (derivativeStep!5691 (ite c!1392056 (regTwo!40315 r!24333) (ite c!1392059 (reg!20230 r!24333) (regOne!40314 r!24333))) lt!2642850))))

(declare-fun bm!691618 () Bool)

(assert (=> bm!691618 (= call!691623 call!691624)))

(declare-fun d!2311016 () Bool)

(declare-fun lt!2642882 () Regex!19901)

(assert (=> d!2311016 (validRegex!10329 lt!2642882)))

(assert (=> d!2311016 (= lt!2642882 e!4492337)))

(declare-fun c!1392057 () Bool)

(assert (=> d!2311016 (= c!1392057 (or ((_ is EmptyExpr!19901) r!24333) ((_ is EmptyLang!19901) r!24333)))))

(assert (=> d!2311016 (validRegex!10329 r!24333)))

(assert (=> d!2311016 (= (derivativeStep!5691 r!24333 lt!2642850) lt!2642882)))

(declare-fun b!7539620 () Bool)

(assert (=> b!7539620 (= e!4492334 (Concat!28746 call!691623 r!24333))))

(declare-fun b!7539621 () Bool)

(assert (=> b!7539621 (= e!4492335 (Union!19901 (Concat!28746 call!691621 (regTwo!40314 r!24333)) EmptyLang!19901))))

(assert (= (and d!2311016 c!1392057) b!7539618))

(assert (= (and d!2311016 (not c!1392057)) b!7539613))

(assert (= (and b!7539613 c!1392060) b!7539615))

(assert (= (and b!7539613 (not c!1392060)) b!7539614))

(assert (= (and b!7539614 c!1392056) b!7539612))

(assert (= (and b!7539614 (not c!1392056)) b!7539616))

(assert (= (and b!7539616 c!1392059) b!7539620))

(assert (= (and b!7539616 (not c!1392059)) b!7539617))

(assert (= (and b!7539617 c!1392058) b!7539619))

(assert (= (and b!7539617 (not c!1392058)) b!7539621))

(assert (= (or b!7539619 b!7539621) bm!691617))

(assert (= (or b!7539620 bm!691617) bm!691618))

(assert (= (or b!7539612 bm!691618) bm!691619))

(assert (= (or b!7539612 b!7539619) bm!691616))

(declare-fun m!8109276 () Bool)

(assert (=> bm!691616 m!8109276))

(declare-fun m!8109278 () Bool)

(assert (=> b!7539617 m!8109278))

(declare-fun m!8109280 () Bool)

(assert (=> bm!691619 m!8109280))

(declare-fun m!8109282 () Bool)

(assert (=> d!2311016 m!8109282))

(assert (=> d!2311016 m!8109168))

(assert (=> b!7539501 d!2311016))

(declare-fun d!2311026 () Bool)

(declare-fun lt!2642887 () List!72784)

(assert (=> d!2311026 (= (++!17418 testedP!423 lt!2642887) input!7874)))

(declare-fun e!4492354 () List!72784)

(assert (=> d!2311026 (= lt!2642887 e!4492354)))

(declare-fun c!1392069 () Bool)

(assert (=> d!2311026 (= c!1392069 ((_ is Cons!72660) testedP!423))))

(assert (=> d!2311026 (>= (size!42397 input!7874) (size!42397 testedP!423))))

(assert (=> d!2311026 (= (getSuffix!3587 input!7874 testedP!423) lt!2642887)))

(declare-fun b!7539654 () Bool)

(assert (=> b!7539654 (= e!4492354 (getSuffix!3587 (tail!15037 input!7874) (t!387491 testedP!423)))))

(declare-fun b!7539655 () Bool)

(assert (=> b!7539655 (= e!4492354 input!7874)))

(assert (= (and d!2311026 c!1392069) b!7539654))

(assert (= (and d!2311026 (not c!1392069)) b!7539655))

(declare-fun m!8109284 () Bool)

(assert (=> d!2311026 m!8109284))

(assert (=> d!2311026 m!8109190))

(assert (=> d!2311026 m!8109186))

(declare-fun m!8109286 () Bool)

(assert (=> b!7539654 m!8109286))

(assert (=> b!7539654 m!8109286))

(declare-fun m!8109288 () Bool)

(assert (=> b!7539654 m!8109288))

(assert (=> b!7539501 d!2311026))

(declare-fun d!2311028 () Bool)

(assert (=> d!2311028 (isPrefix!6107 lt!2642849 knownP!30)))

(declare-fun lt!2642890 () Unit!166740)

(declare-fun choose!58328 (List!72784 List!72784 List!72784) Unit!166740)

(assert (=> d!2311028 (= lt!2642890 (choose!58328 knownP!30 lt!2642849 input!7874))))

(assert (=> d!2311028 (isPrefix!6107 knownP!30 input!7874)))

(assert (=> d!2311028 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!857 knownP!30 lt!2642849 input!7874) lt!2642890)))

(declare-fun bs!1939971 () Bool)

(assert (= bs!1939971 d!2311028))

(assert (=> bs!1939971 m!8109210))

(declare-fun m!8109290 () Bool)

(assert (=> bs!1939971 m!8109290))

(assert (=> bs!1939971 m!8109184))

(assert (=> b!7539501 d!2311028))

(declare-fun d!2311030 () Bool)

(declare-fun lt!2642892 () List!72784)

(assert (=> d!2311030 (= (++!17418 knownP!30 lt!2642892) input!7874)))

(declare-fun e!4492362 () List!72784)

(assert (=> d!2311030 (= lt!2642892 e!4492362)))

(declare-fun c!1392073 () Bool)

(assert (=> d!2311030 (= c!1392073 ((_ is Cons!72660) knownP!30))))

(assert (=> d!2311030 (>= (size!42397 input!7874) (size!42397 knownP!30))))

(assert (=> d!2311030 (= (getSuffix!3587 input!7874 knownP!30) lt!2642892)))

(declare-fun b!7539670 () Bool)

(assert (=> b!7539670 (= e!4492362 (getSuffix!3587 (tail!15037 input!7874) (t!387491 knownP!30)))))

(declare-fun b!7539671 () Bool)

(assert (=> b!7539671 (= e!4492362 input!7874)))

(assert (= (and d!2311030 c!1392073) b!7539670))

(assert (= (and d!2311030 (not c!1392073)) b!7539671))

(declare-fun m!8109292 () Bool)

(assert (=> d!2311030 m!8109292))

(assert (=> d!2311030 m!8109190))

(assert (=> d!2311030 m!8109188))

(assert (=> b!7539670 m!8109286))

(assert (=> b!7539670 m!8109286))

(declare-fun m!8109294 () Bool)

(assert (=> b!7539670 m!8109294))

(assert (=> b!7539501 d!2311030))

(declare-fun b!7539674 () Bool)

(declare-fun e!4492365 () Bool)

(assert (=> b!7539674 (= e!4492365 (isPrefix!6107 (tail!15037 lt!2642849) (tail!15037 input!7874)))))

(declare-fun d!2311032 () Bool)

(declare-fun e!4492363 () Bool)

(assert (=> d!2311032 e!4492363))

(declare-fun res!3021546 () Bool)

(assert (=> d!2311032 (=> res!3021546 e!4492363)))

(declare-fun lt!2642893 () Bool)

(assert (=> d!2311032 (= res!3021546 (not lt!2642893))))

(declare-fun e!4492364 () Bool)

(assert (=> d!2311032 (= lt!2642893 e!4492364)))

(declare-fun res!3021548 () Bool)

(assert (=> d!2311032 (=> res!3021548 e!4492364)))

(assert (=> d!2311032 (= res!3021548 ((_ is Nil!72660) lt!2642849))))

(assert (=> d!2311032 (= (isPrefix!6107 lt!2642849 input!7874) lt!2642893)))

(declare-fun b!7539675 () Bool)

(assert (=> b!7539675 (= e!4492363 (>= (size!42397 input!7874) (size!42397 lt!2642849)))))

(declare-fun b!7539672 () Bool)

(assert (=> b!7539672 (= e!4492364 e!4492365)))

(declare-fun res!3021545 () Bool)

(assert (=> b!7539672 (=> (not res!3021545) (not e!4492365))))

(assert (=> b!7539672 (= res!3021545 (not ((_ is Nil!72660) input!7874)))))

(declare-fun b!7539673 () Bool)

(declare-fun res!3021547 () Bool)

(assert (=> b!7539673 (=> (not res!3021547) (not e!4492365))))

(assert (=> b!7539673 (= res!3021547 (= (head!15491 lt!2642849) (head!15491 input!7874)))))

(assert (= (and d!2311032 (not res!3021548)) b!7539672))

(assert (= (and b!7539672 res!3021545) b!7539673))

(assert (= (and b!7539673 res!3021547) b!7539674))

(assert (= (and d!2311032 (not res!3021546)) b!7539675))

(assert (=> b!7539674 m!8109236))

(assert (=> b!7539674 m!8109286))

(assert (=> b!7539674 m!8109236))

(assert (=> b!7539674 m!8109286))

(declare-fun m!8109308 () Bool)

(assert (=> b!7539674 m!8109308))

(assert (=> b!7539675 m!8109190))

(assert (=> b!7539675 m!8109242))

(assert (=> b!7539673 m!8109244))

(declare-fun m!8109310 () Bool)

(assert (=> b!7539673 m!8109310))

(assert (=> b!7539501 d!2311032))

(declare-fun b!7539692 () Bool)

(declare-fun res!3021554 () Bool)

(declare-fun e!4492374 () Bool)

(assert (=> b!7539692 (=> (not res!3021554) (not e!4492374))))

(declare-fun lt!2642899 () List!72784)

(assert (=> b!7539692 (= res!3021554 (= (size!42397 lt!2642899) (+ (size!42397 knownP!30) (size!42397 lt!2642846))))))

(declare-fun d!2311036 () Bool)

(assert (=> d!2311036 e!4492374))

(declare-fun res!3021553 () Bool)

(assert (=> d!2311036 (=> (not res!3021553) (not e!4492374))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15363 (List!72784) (InoxSet C!40128))

(assert (=> d!2311036 (= res!3021553 (= (content!15363 lt!2642899) ((_ map or) (content!15363 knownP!30) (content!15363 lt!2642846))))))

(declare-fun e!4492373 () List!72784)

(assert (=> d!2311036 (= lt!2642899 e!4492373)))

(declare-fun c!1392079 () Bool)

(assert (=> d!2311036 (= c!1392079 ((_ is Nil!72660) knownP!30))))

(assert (=> d!2311036 (= (++!17418 knownP!30 lt!2642846) lt!2642899)))

(declare-fun b!7539690 () Bool)

(assert (=> b!7539690 (= e!4492373 lt!2642846)))

(declare-fun b!7539691 () Bool)

(assert (=> b!7539691 (= e!4492373 (Cons!72660 (h!79108 knownP!30) (++!17418 (t!387491 knownP!30) lt!2642846)))))

(declare-fun b!7539693 () Bool)

(assert (=> b!7539693 (= e!4492374 (or (not (= lt!2642846 Nil!72660)) (= lt!2642899 knownP!30)))))

(assert (= (and d!2311036 c!1392079) b!7539690))

(assert (= (and d!2311036 (not c!1392079)) b!7539691))

(assert (= (and d!2311036 res!3021553) b!7539692))

(assert (= (and b!7539692 res!3021554) b!7539693))

(declare-fun m!8109318 () Bool)

(assert (=> b!7539692 m!8109318))

(assert (=> b!7539692 m!8109188))

(declare-fun m!8109320 () Bool)

(assert (=> b!7539692 m!8109320))

(declare-fun m!8109322 () Bool)

(assert (=> d!2311036 m!8109322))

(declare-fun m!8109324 () Bool)

(assert (=> d!2311036 m!8109324))

(declare-fun m!8109326 () Bool)

(assert (=> d!2311036 m!8109326))

(declare-fun m!8109328 () Bool)

(assert (=> b!7539691 m!8109328))

(assert (=> b!7539501 d!2311036))

(declare-fun d!2311040 () Bool)

(declare-fun lt!2642907 () Regex!19901)

(assert (=> d!2311040 (validRegex!10329 lt!2642907)))

(declare-fun e!4492386 () Regex!19901)

(assert (=> d!2311040 (= lt!2642907 e!4492386)))

(declare-fun c!1392082 () Bool)

(assert (=> d!2311040 (= c!1392082 ((_ is Cons!72660) lt!2642849))))

(assert (=> d!2311040 (validRegex!10329 baseR!101)))

(assert (=> d!2311040 (= (derivative!433 baseR!101 lt!2642849) lt!2642907)))

(declare-fun b!7539710 () Bool)

(assert (=> b!7539710 (= e!4492386 (derivative!433 (derivativeStep!5691 baseR!101 (h!79108 lt!2642849)) (t!387491 lt!2642849)))))

(declare-fun b!7539711 () Bool)

(assert (=> b!7539711 (= e!4492386 baseR!101)))

(assert (= (and d!2311040 c!1392082) b!7539710))

(assert (= (and d!2311040 (not c!1392082)) b!7539711))

(declare-fun m!8109340 () Bool)

(assert (=> d!2311040 m!8109340))

(assert (=> d!2311040 m!8109226))

(declare-fun m!8109342 () Bool)

(assert (=> b!7539710 m!8109342))

(assert (=> b!7539710 m!8109342))

(declare-fun m!8109344 () Bool)

(assert (=> b!7539710 m!8109344))

(assert (=> b!7539501 d!2311040))

(declare-fun d!2311046 () Bool)

(declare-fun lt!2642909 () List!72784)

(assert (=> d!2311046 (= (++!17418 lt!2642849 lt!2642909) knownP!30)))

(declare-fun e!4492387 () List!72784)

(assert (=> d!2311046 (= lt!2642909 e!4492387)))

(declare-fun c!1392083 () Bool)

(assert (=> d!2311046 (= c!1392083 ((_ is Cons!72660) lt!2642849))))

(assert (=> d!2311046 (>= (size!42397 knownP!30) (size!42397 lt!2642849))))

(assert (=> d!2311046 (= (getSuffix!3587 knownP!30 lt!2642849) lt!2642909)))

(declare-fun b!7539712 () Bool)

(assert (=> b!7539712 (= e!4492387 (getSuffix!3587 (tail!15037 knownP!30) (t!387491 lt!2642849)))))

(declare-fun b!7539713 () Bool)

(assert (=> b!7539713 (= e!4492387 knownP!30)))

(assert (= (and d!2311046 c!1392083) b!7539712))

(assert (= (and d!2311046 (not c!1392083)) b!7539713))

(declare-fun m!8109346 () Bool)

(assert (=> d!2311046 m!8109346))

(assert (=> d!2311046 m!8109188))

(assert (=> d!2311046 m!8109242))

(assert (=> b!7539712 m!8109238))

(assert (=> b!7539712 m!8109238))

(declare-fun m!8109348 () Bool)

(assert (=> b!7539712 m!8109348))

(assert (=> b!7539501 d!2311046))

(declare-fun d!2311048 () Bool)

(assert (=> d!2311048 (= (head!15491 lt!2642859) (h!79108 lt!2642859))))

(assert (=> b!7539501 d!2311048))

(declare-fun d!2311050 () Bool)

(assert (=> d!2311050 (isPrefix!6107 (++!17418 testedP!423 (Cons!72660 (head!15491 (getSuffix!3587 input!7874 testedP!423)) Nil!72660)) input!7874)))

(declare-fun lt!2642914 () Unit!166740)

(declare-fun choose!58330 (List!72784 List!72784) Unit!166740)

(assert (=> d!2311050 (= lt!2642914 (choose!58330 testedP!423 input!7874))))

(assert (=> d!2311050 (isPrefix!6107 testedP!423 input!7874)))

(assert (=> d!2311050 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1172 testedP!423 input!7874) lt!2642914)))

(declare-fun bs!1939974 () Bool)

(assert (= bs!1939974 d!2311050))

(declare-fun m!8109368 () Bool)

(assert (=> bs!1939974 m!8109368))

(assert (=> bs!1939974 m!8109178))

(assert (=> bs!1939974 m!8109202))

(declare-fun m!8109370 () Bool)

(assert (=> bs!1939974 m!8109370))

(declare-fun m!8109372 () Bool)

(assert (=> bs!1939974 m!8109372))

(assert (=> bs!1939974 m!8109202))

(assert (=> bs!1939974 m!8109372))

(declare-fun m!8109374 () Bool)

(assert (=> bs!1939974 m!8109374))

(assert (=> b!7539501 d!2311050))

(declare-fun b!7539738 () Bool)

(declare-fun res!3021580 () Bool)

(declare-fun e!4492401 () Bool)

(assert (=> b!7539738 (=> (not res!3021580) (not e!4492401))))

(declare-fun lt!2642917 () List!72784)

(assert (=> b!7539738 (= res!3021580 (= (size!42397 lt!2642917) (+ (size!42397 testedP!423) (size!42397 (Cons!72660 lt!2642850 Nil!72660)))))))

(declare-fun d!2311058 () Bool)

(assert (=> d!2311058 e!4492401))

(declare-fun res!3021579 () Bool)

(assert (=> d!2311058 (=> (not res!3021579) (not e!4492401))))

(assert (=> d!2311058 (= res!3021579 (= (content!15363 lt!2642917) ((_ map or) (content!15363 testedP!423) (content!15363 (Cons!72660 lt!2642850 Nil!72660)))))))

(declare-fun e!4492399 () List!72784)

(assert (=> d!2311058 (= lt!2642917 e!4492399)))

(declare-fun c!1392089 () Bool)

(assert (=> d!2311058 (= c!1392089 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311058 (= (++!17418 testedP!423 (Cons!72660 lt!2642850 Nil!72660)) lt!2642917)))

(declare-fun b!7539736 () Bool)

(assert (=> b!7539736 (= e!4492399 (Cons!72660 lt!2642850 Nil!72660))))

(declare-fun b!7539737 () Bool)

(assert (=> b!7539737 (= e!4492399 (Cons!72660 (h!79108 testedP!423) (++!17418 (t!387491 testedP!423) (Cons!72660 lt!2642850 Nil!72660))))))

(declare-fun b!7539739 () Bool)

(assert (=> b!7539739 (= e!4492401 (or (not (= (Cons!72660 lt!2642850 Nil!72660) Nil!72660)) (= lt!2642917 testedP!423)))))

(assert (= (and d!2311058 c!1392089) b!7539736))

(assert (= (and d!2311058 (not c!1392089)) b!7539737))

(assert (= (and d!2311058 res!3021579) b!7539738))

(assert (= (and b!7539738 res!3021580) b!7539739))

(declare-fun m!8109376 () Bool)

(assert (=> b!7539738 m!8109376))

(assert (=> b!7539738 m!8109186))

(declare-fun m!8109378 () Bool)

(assert (=> b!7539738 m!8109378))

(declare-fun m!8109380 () Bool)

(assert (=> d!2311058 m!8109380))

(declare-fun m!8109382 () Bool)

(assert (=> d!2311058 m!8109382))

(declare-fun m!8109384 () Bool)

(assert (=> d!2311058 m!8109384))

(declare-fun m!8109386 () Bool)

(assert (=> b!7539737 m!8109386))

(assert (=> b!7539501 d!2311058))

(declare-fun d!2311060 () Bool)

(declare-fun lostCauseFct!431 (Regex!19901) Bool)

(assert (=> d!2311060 (= (lostCause!1693 r!24333) (lostCauseFct!431 r!24333))))

(declare-fun bs!1939975 () Bool)

(assert (= bs!1939975 d!2311060))

(declare-fun m!8109414 () Bool)

(assert (=> bs!1939975 m!8109414))

(assert (=> b!7539512 d!2311060))

(declare-fun d!2311066 () Bool)

(declare-fun lt!2642930 () Int)

(assert (=> d!2311066 (>= lt!2642930 0)))

(declare-fun e!4492417 () Int)

(assert (=> d!2311066 (= lt!2642930 e!4492417)))

(declare-fun c!1392097 () Bool)

(assert (=> d!2311066 (= c!1392097 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311066 (= (size!42397 testedP!423) lt!2642930)))

(declare-fun b!7539768 () Bool)

(assert (=> b!7539768 (= e!4492417 0)))

(declare-fun b!7539769 () Bool)

(assert (=> b!7539769 (= e!4492417 (+ 1 (size!42397 (t!387491 testedP!423))))))

(assert (= (and d!2311066 c!1392097) b!7539768))

(assert (= (and d!2311066 (not c!1392097)) b!7539769))

(declare-fun m!8109448 () Bool)

(assert (=> b!7539769 m!8109448))

(assert (=> b!7539523 d!2311066))

(declare-fun d!2311082 () Bool)

(declare-fun lt!2642931 () Int)

(assert (=> d!2311082 (>= lt!2642931 0)))

(declare-fun e!4492418 () Int)

(assert (=> d!2311082 (= lt!2642931 e!4492418)))

(declare-fun c!1392098 () Bool)

(assert (=> d!2311082 (= c!1392098 ((_ is Nil!72660) knownP!30))))

(assert (=> d!2311082 (= (size!42397 knownP!30) lt!2642931)))

(declare-fun b!7539770 () Bool)

(assert (=> b!7539770 (= e!4492418 0)))

(declare-fun b!7539771 () Bool)

(assert (=> b!7539771 (= e!4492418 (+ 1 (size!42397 (t!387491 knownP!30))))))

(assert (= (and d!2311082 c!1392098) b!7539770))

(assert (= (and d!2311082 (not c!1392098)) b!7539771))

(declare-fun m!8109450 () Bool)

(assert (=> b!7539771 m!8109450))

(assert (=> b!7539523 d!2311082))

(declare-fun b!7539774 () Bool)

(declare-fun e!4492421 () Bool)

(assert (=> b!7539774 (= e!4492421 (isPrefix!6107 (tail!15037 testedP!423) (tail!15037 input!7874)))))

(declare-fun d!2311084 () Bool)

(declare-fun e!4492419 () Bool)

(assert (=> d!2311084 e!4492419))

(declare-fun res!3021596 () Bool)

(assert (=> d!2311084 (=> res!3021596 e!4492419)))

(declare-fun lt!2642932 () Bool)

(assert (=> d!2311084 (= res!3021596 (not lt!2642932))))

(declare-fun e!4492420 () Bool)

(assert (=> d!2311084 (= lt!2642932 e!4492420)))

(declare-fun res!3021598 () Bool)

(assert (=> d!2311084 (=> res!3021598 e!4492420)))

(assert (=> d!2311084 (= res!3021598 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311084 (= (isPrefix!6107 testedP!423 input!7874) lt!2642932)))

(declare-fun b!7539775 () Bool)

(assert (=> b!7539775 (= e!4492419 (>= (size!42397 input!7874) (size!42397 testedP!423)))))

(declare-fun b!7539772 () Bool)

(assert (=> b!7539772 (= e!4492420 e!4492421)))

(declare-fun res!3021595 () Bool)

(assert (=> b!7539772 (=> (not res!3021595) (not e!4492421))))

(assert (=> b!7539772 (= res!3021595 (not ((_ is Nil!72660) input!7874)))))

(declare-fun b!7539773 () Bool)

(declare-fun res!3021597 () Bool)

(assert (=> b!7539773 (=> (not res!3021597) (not e!4492421))))

(assert (=> b!7539773 (= res!3021597 (= (head!15491 testedP!423) (head!15491 input!7874)))))

(assert (= (and d!2311084 (not res!3021598)) b!7539772))

(assert (= (and b!7539772 res!3021595) b!7539773))

(assert (= (and b!7539773 res!3021597) b!7539774))

(assert (= (and d!2311084 (not res!3021596)) b!7539775))

(declare-fun m!8109452 () Bool)

(assert (=> b!7539774 m!8109452))

(assert (=> b!7539774 m!8109286))

(assert (=> b!7539774 m!8109452))

(assert (=> b!7539774 m!8109286))

(declare-fun m!8109454 () Bool)

(assert (=> b!7539774 m!8109454))

(assert (=> b!7539775 m!8109190))

(assert (=> b!7539775 m!8109186))

(declare-fun m!8109456 () Bool)

(assert (=> b!7539773 m!8109456))

(assert (=> b!7539773 m!8109310))

(assert (=> b!7539513 d!2311084))

(declare-fun b!7539778 () Bool)

(declare-fun res!3021600 () Bool)

(declare-fun e!4492423 () Bool)

(assert (=> b!7539778 (=> (not res!3021600) (not e!4492423))))

(declare-fun lt!2642933 () List!72784)

(assert (=> b!7539778 (= res!3021600 (= (size!42397 lt!2642933) (+ (size!42397 testedP!423) (size!42397 lt!2642860))))))

(declare-fun d!2311086 () Bool)

(assert (=> d!2311086 e!4492423))

(declare-fun res!3021599 () Bool)

(assert (=> d!2311086 (=> (not res!3021599) (not e!4492423))))

(assert (=> d!2311086 (= res!3021599 (= (content!15363 lt!2642933) ((_ map or) (content!15363 testedP!423) (content!15363 lt!2642860))))))

(declare-fun e!4492422 () List!72784)

(assert (=> d!2311086 (= lt!2642933 e!4492422)))

(declare-fun c!1392099 () Bool)

(assert (=> d!2311086 (= c!1392099 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311086 (= (++!17418 testedP!423 lt!2642860) lt!2642933)))

(declare-fun b!7539776 () Bool)

(assert (=> b!7539776 (= e!4492422 lt!2642860)))

(declare-fun b!7539777 () Bool)

(assert (=> b!7539777 (= e!4492422 (Cons!72660 (h!79108 testedP!423) (++!17418 (t!387491 testedP!423) lt!2642860)))))

(declare-fun b!7539779 () Bool)

(assert (=> b!7539779 (= e!4492423 (or (not (= lt!2642860 Nil!72660)) (= lt!2642933 testedP!423)))))

(assert (= (and d!2311086 c!1392099) b!7539776))

(assert (= (and d!2311086 (not c!1392099)) b!7539777))

(assert (= (and d!2311086 res!3021599) b!7539778))

(assert (= (and b!7539778 res!3021600) b!7539779))

(declare-fun m!8109458 () Bool)

(assert (=> b!7539778 m!8109458))

(assert (=> b!7539778 m!8109186))

(declare-fun m!8109460 () Bool)

(assert (=> b!7539778 m!8109460))

(declare-fun m!8109462 () Bool)

(assert (=> d!2311086 m!8109462))

(assert (=> d!2311086 m!8109382))

(declare-fun m!8109464 () Bool)

(assert (=> d!2311086 m!8109464))

(declare-fun m!8109466 () Bool)

(assert (=> b!7539777 m!8109466))

(assert (=> b!7539519 d!2311086))

(declare-fun b!7539782 () Bool)

(declare-fun res!3021602 () Bool)

(declare-fun e!4492425 () Bool)

(assert (=> b!7539782 (=> (not res!3021602) (not e!4492425))))

(declare-fun lt!2642936 () List!72784)

(assert (=> b!7539782 (= res!3021602 (= (size!42397 lt!2642936) (+ (size!42397 lt!2642856) (size!42397 lt!2642846))))))

(declare-fun d!2311088 () Bool)

(assert (=> d!2311088 e!4492425))

(declare-fun res!3021601 () Bool)

(assert (=> d!2311088 (=> (not res!3021601) (not e!4492425))))

(assert (=> d!2311088 (= res!3021601 (= (content!15363 lt!2642936) ((_ map or) (content!15363 lt!2642856) (content!15363 lt!2642846))))))

(declare-fun e!4492424 () List!72784)

(assert (=> d!2311088 (= lt!2642936 e!4492424)))

(declare-fun c!1392101 () Bool)

(assert (=> d!2311088 (= c!1392101 ((_ is Nil!72660) lt!2642856))))

(assert (=> d!2311088 (= (++!17418 lt!2642856 lt!2642846) lt!2642936)))

(declare-fun b!7539780 () Bool)

(assert (=> b!7539780 (= e!4492424 lt!2642846)))

(declare-fun b!7539781 () Bool)

(assert (=> b!7539781 (= e!4492424 (Cons!72660 (h!79108 lt!2642856) (++!17418 (t!387491 lt!2642856) lt!2642846)))))

(declare-fun b!7539783 () Bool)

(assert (=> b!7539783 (= e!4492425 (or (not (= lt!2642846 Nil!72660)) (= lt!2642936 lt!2642856)))))

(assert (= (and d!2311088 c!1392101) b!7539780))

(assert (= (and d!2311088 (not c!1392101)) b!7539781))

(assert (= (and d!2311088 res!3021601) b!7539782))

(assert (= (and b!7539782 res!3021602) b!7539783))

(declare-fun m!8109472 () Bool)

(assert (=> b!7539782 m!8109472))

(declare-fun m!8109474 () Bool)

(assert (=> b!7539782 m!8109474))

(assert (=> b!7539782 m!8109320))

(declare-fun m!8109478 () Bool)

(assert (=> d!2311088 m!8109478))

(declare-fun m!8109480 () Bool)

(assert (=> d!2311088 m!8109480))

(assert (=> d!2311088 m!8109326))

(declare-fun m!8109484 () Bool)

(assert (=> b!7539781 m!8109484))

(assert (=> b!7539519 d!2311088))

(declare-fun d!2311094 () Bool)

(assert (=> d!2311094 (= (++!17418 (++!17418 testedP!423 lt!2642856) lt!2642846) (++!17418 testedP!423 (++!17418 lt!2642856 lt!2642846)))))

(declare-fun lt!2642943 () Unit!166740)

(declare-fun choose!58332 (List!72784 List!72784 List!72784) Unit!166740)

(assert (=> d!2311094 (= lt!2642943 (choose!58332 testedP!423 lt!2642856 lt!2642846))))

(assert (=> d!2311094 (= (lemmaConcatAssociativity!3066 testedP!423 lt!2642856 lt!2642846) lt!2642943)))

(declare-fun bs!1939979 () Bool)

(assert (= bs!1939979 d!2311094))

(assert (=> bs!1939979 m!8109164))

(assert (=> bs!1939979 m!8109166))

(assert (=> bs!1939979 m!8109172))

(declare-fun m!8109500 () Bool)

(assert (=> bs!1939979 m!8109500))

(assert (=> bs!1939979 m!8109164))

(declare-fun m!8109502 () Bool)

(assert (=> bs!1939979 m!8109502))

(assert (=> bs!1939979 m!8109172))

(assert (=> b!7539519 d!2311094))

(declare-fun d!2311100 () Bool)

(declare-fun lt!2642944 () Regex!19901)

(assert (=> d!2311100 (validRegex!10329 lt!2642944)))

(declare-fun e!4492430 () Regex!19901)

(assert (=> d!2311100 (= lt!2642944 e!4492430)))

(declare-fun c!1392105 () Bool)

(assert (=> d!2311100 (= c!1392105 ((_ is Cons!72660) testedP!423))))

(assert (=> d!2311100 (validRegex!10329 baseR!101)))

(assert (=> d!2311100 (= (derivative!433 baseR!101 testedP!423) lt!2642944)))

(declare-fun b!7539792 () Bool)

(assert (=> b!7539792 (= e!4492430 (derivative!433 (derivativeStep!5691 baseR!101 (h!79108 testedP!423)) (t!387491 testedP!423)))))

(declare-fun b!7539793 () Bool)

(assert (=> b!7539793 (= e!4492430 baseR!101)))

(assert (= (and d!2311100 c!1392105) b!7539792))

(assert (= (and d!2311100 (not c!1392105)) b!7539793))

(declare-fun m!8109504 () Bool)

(assert (=> d!2311100 m!8109504))

(assert (=> d!2311100 m!8109226))

(declare-fun m!8109506 () Bool)

(assert (=> b!7539792 m!8109506))

(assert (=> b!7539792 m!8109506))

(declare-fun m!8109508 () Bool)

(assert (=> b!7539792 m!8109508))

(assert (=> b!7539509 d!2311100))

(declare-fun b!7539929 () Bool)

(declare-fun e!4492494 () Bool)

(assert (=> b!7539929 (= e!4492494 (nullable!8675 r!24333))))

(declare-fun b!7539930 () Bool)

(declare-fun res!3021639 () Bool)

(declare-fun e!4492495 () Bool)

(assert (=> b!7539930 (=> res!3021639 e!4492495)))

(declare-fun isEmpty!41371 (List!72784) Bool)

(assert (=> b!7539930 (= res!3021639 (not (isEmpty!41371 (tail!15037 lt!2642856))))))

(declare-fun b!7539931 () Bool)

(declare-fun res!3021636 () Bool)

(declare-fun e!4492490 () Bool)

(assert (=> b!7539931 (=> res!3021636 e!4492490)))

(assert (=> b!7539931 (= res!3021636 (not ((_ is ElementMatch!19901) r!24333)))))

(declare-fun e!4492491 () Bool)

(assert (=> b!7539931 (= e!4492491 e!4492490)))

(declare-fun b!7539932 () Bool)

(assert (=> b!7539932 (= e!4492494 (matchR!9503 (derivativeStep!5691 r!24333 (head!15491 lt!2642856)) (tail!15037 lt!2642856)))))

(declare-fun d!2311102 () Bool)

(declare-fun e!4492492 () Bool)

(assert (=> d!2311102 e!4492492))

(declare-fun c!1392132 () Bool)

(assert (=> d!2311102 (= c!1392132 ((_ is EmptyExpr!19901) r!24333))))

(declare-fun lt!2642961 () Bool)

(assert (=> d!2311102 (= lt!2642961 e!4492494)))

(declare-fun c!1392130 () Bool)

(assert (=> d!2311102 (= c!1392130 (isEmpty!41371 lt!2642856))))

(assert (=> d!2311102 (validRegex!10329 r!24333)))

(assert (=> d!2311102 (= (matchR!9503 r!24333 lt!2642856) lt!2642961)))

(declare-fun b!7539933 () Bool)

(declare-fun res!3021635 () Bool)

(declare-fun e!4492489 () Bool)

(assert (=> b!7539933 (=> (not res!3021635) (not e!4492489))))

(assert (=> b!7539933 (= res!3021635 (isEmpty!41371 (tail!15037 lt!2642856)))))

(declare-fun b!7539934 () Bool)

(assert (=> b!7539934 (= e!4492492 e!4492491)))

(declare-fun c!1392131 () Bool)

(assert (=> b!7539934 (= c!1392131 ((_ is EmptyLang!19901) r!24333))))

(declare-fun b!7539935 () Bool)

(declare-fun e!4492493 () Bool)

(assert (=> b!7539935 (= e!4492490 e!4492493)))

(declare-fun res!3021642 () Bool)

(assert (=> b!7539935 (=> (not res!3021642) (not e!4492493))))

(assert (=> b!7539935 (= res!3021642 (not lt!2642961))))

(declare-fun b!7539936 () Bool)

(assert (=> b!7539936 (= e!4492493 e!4492495)))

(declare-fun res!3021637 () Bool)

(assert (=> b!7539936 (=> res!3021637 e!4492495)))

(declare-fun call!691643 () Bool)

(assert (=> b!7539936 (= res!3021637 call!691643)))

(declare-fun b!7539937 () Bool)

(assert (=> b!7539937 (= e!4492489 (= (head!15491 lt!2642856) (c!1392028 r!24333)))))

(declare-fun bm!691638 () Bool)

(assert (=> bm!691638 (= call!691643 (isEmpty!41371 lt!2642856))))

(declare-fun b!7539938 () Bool)

(assert (=> b!7539938 (= e!4492492 (= lt!2642961 call!691643))))

(declare-fun b!7539939 () Bool)

(declare-fun res!3021638 () Bool)

(assert (=> b!7539939 (=> res!3021638 e!4492490)))

(assert (=> b!7539939 (= res!3021638 e!4492489)))

(declare-fun res!3021640 () Bool)

(assert (=> b!7539939 (=> (not res!3021640) (not e!4492489))))

(assert (=> b!7539939 (= res!3021640 lt!2642961)))

(declare-fun b!7539940 () Bool)

(assert (=> b!7539940 (= e!4492491 (not lt!2642961))))

(declare-fun b!7539941 () Bool)

(declare-fun res!3021641 () Bool)

(assert (=> b!7539941 (=> (not res!3021641) (not e!4492489))))

(assert (=> b!7539941 (= res!3021641 (not call!691643))))

(declare-fun b!7539942 () Bool)

(assert (=> b!7539942 (= e!4492495 (not (= (head!15491 lt!2642856) (c!1392028 r!24333))))))

(assert (= (and d!2311102 c!1392130) b!7539929))

(assert (= (and d!2311102 (not c!1392130)) b!7539932))

(assert (= (and d!2311102 c!1392132) b!7539938))

(assert (= (and d!2311102 (not c!1392132)) b!7539934))

(assert (= (and b!7539934 c!1392131) b!7539940))

(assert (= (and b!7539934 (not c!1392131)) b!7539931))

(assert (= (and b!7539931 (not res!3021636)) b!7539939))

(assert (= (and b!7539939 res!3021640) b!7539941))

(assert (= (and b!7539941 res!3021641) b!7539933))

(assert (= (and b!7539933 res!3021635) b!7539937))

(assert (= (and b!7539939 (not res!3021638)) b!7539935))

(assert (= (and b!7539935 res!3021642) b!7539936))

(assert (= (and b!7539936 (not res!3021637)) b!7539930))

(assert (= (and b!7539930 (not res!3021639)) b!7539942))

(assert (= (or b!7539938 b!7539936 b!7539941) bm!691638))

(assert (=> b!7539937 m!8109228))

(declare-fun m!8109558 () Bool)

(assert (=> d!2311102 m!8109558))

(assert (=> d!2311102 m!8109168))

(assert (=> b!7539932 m!8109228))

(assert (=> b!7539932 m!8109228))

(declare-fun m!8109560 () Bool)

(assert (=> b!7539932 m!8109560))

(declare-fun m!8109562 () Bool)

(assert (=> b!7539932 m!8109562))

(assert (=> b!7539932 m!8109560))

(assert (=> b!7539932 m!8109562))

(declare-fun m!8109564 () Bool)

(assert (=> b!7539932 m!8109564))

(assert (=> b!7539930 m!8109562))

(assert (=> b!7539930 m!8109562))

(declare-fun m!8109566 () Bool)

(assert (=> b!7539930 m!8109566))

(declare-fun m!8109568 () Bool)

(assert (=> b!7539929 m!8109568))

(assert (=> bm!691638 m!8109558))

(assert (=> b!7539933 m!8109562))

(assert (=> b!7539933 m!8109562))

(assert (=> b!7539933 m!8109566))

(assert (=> b!7539942 m!8109228))

(assert (=> b!7539520 d!2311102))

(declare-fun d!2311120 () Bool)

(declare-fun lt!2642962 () List!72784)

(assert (=> d!2311120 (= (++!17418 testedP!423 lt!2642962) knownP!30)))

(declare-fun e!4492496 () List!72784)

(assert (=> d!2311120 (= lt!2642962 e!4492496)))

(declare-fun c!1392133 () Bool)

(assert (=> d!2311120 (= c!1392133 ((_ is Cons!72660) testedP!423))))

(assert (=> d!2311120 (>= (size!42397 knownP!30) (size!42397 testedP!423))))

(assert (=> d!2311120 (= (getSuffix!3587 knownP!30 testedP!423) lt!2642962)))

(declare-fun b!7539943 () Bool)

(assert (=> b!7539943 (= e!4492496 (getSuffix!3587 (tail!15037 knownP!30) (t!387491 testedP!423)))))

(declare-fun b!7539944 () Bool)

(assert (=> b!7539944 (= e!4492496 knownP!30)))

(assert (= (and d!2311120 c!1392133) b!7539943))

(assert (= (and d!2311120 (not c!1392133)) b!7539944))

(declare-fun m!8109570 () Bool)

(assert (=> d!2311120 m!8109570))

(assert (=> d!2311120 m!8109188))

(assert (=> d!2311120 m!8109186))

(assert (=> b!7539943 m!8109238))

(assert (=> b!7539943 m!8109238))

(declare-fun m!8109572 () Bool)

(assert (=> b!7539943 m!8109572))

(assert (=> b!7539520 d!2311120))

(declare-fun b!7539947 () Bool)

(declare-fun e!4492499 () Bool)

(assert (=> b!7539947 (= e!4492499 (isPrefix!6107 (tail!15037 testedP!423) (tail!15037 knownP!30)))))

(declare-fun d!2311122 () Bool)

(declare-fun e!4492497 () Bool)

(assert (=> d!2311122 e!4492497))

(declare-fun res!3021644 () Bool)

(assert (=> d!2311122 (=> res!3021644 e!4492497)))

(declare-fun lt!2642963 () Bool)

(assert (=> d!2311122 (= res!3021644 (not lt!2642963))))

(declare-fun e!4492498 () Bool)

(assert (=> d!2311122 (= lt!2642963 e!4492498)))

(declare-fun res!3021646 () Bool)

(assert (=> d!2311122 (=> res!3021646 e!4492498)))

(assert (=> d!2311122 (= res!3021646 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311122 (= (isPrefix!6107 testedP!423 knownP!30) lt!2642963)))

(declare-fun b!7539948 () Bool)

(assert (=> b!7539948 (= e!4492497 (>= (size!42397 knownP!30) (size!42397 testedP!423)))))

(declare-fun b!7539945 () Bool)

(assert (=> b!7539945 (= e!4492498 e!4492499)))

(declare-fun res!3021643 () Bool)

(assert (=> b!7539945 (=> (not res!3021643) (not e!4492499))))

(assert (=> b!7539945 (= res!3021643 (not ((_ is Nil!72660) knownP!30)))))

(declare-fun b!7539946 () Bool)

(declare-fun res!3021645 () Bool)

(assert (=> b!7539946 (=> (not res!3021645) (not e!4492499))))

(assert (=> b!7539946 (= res!3021645 (= (head!15491 testedP!423) (head!15491 knownP!30)))))

(assert (= (and d!2311122 (not res!3021646)) b!7539945))

(assert (= (and b!7539945 res!3021643) b!7539946))

(assert (= (and b!7539946 res!3021645) b!7539947))

(assert (= (and d!2311122 (not res!3021644)) b!7539948))

(assert (=> b!7539947 m!8109452))

(assert (=> b!7539947 m!8109238))

(assert (=> b!7539947 m!8109452))

(assert (=> b!7539947 m!8109238))

(declare-fun m!8109574 () Bool)

(assert (=> b!7539947 m!8109574))

(assert (=> b!7539948 m!8109188))

(assert (=> b!7539948 m!8109186))

(assert (=> b!7539946 m!8109456))

(assert (=> b!7539946 m!8109246))

(assert (=> b!7539520 d!2311122))

(declare-fun d!2311124 () Bool)

(assert (=> d!2311124 (isPrefix!6107 testedP!423 knownP!30)))

(declare-fun lt!2642964 () Unit!166740)

(assert (=> d!2311124 (= lt!2642964 (choose!58328 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311124 (isPrefix!6107 knownP!30 input!7874)))

(assert (=> d!2311124 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!857 knownP!30 testedP!423 input!7874) lt!2642964)))

(declare-fun bs!1939982 () Bool)

(assert (= bs!1939982 d!2311124))

(assert (=> bs!1939982 m!8109222))

(declare-fun m!8109576 () Bool)

(assert (=> bs!1939982 m!8109576))

(assert (=> bs!1939982 m!8109184))

(assert (=> b!7539520 d!2311124))

(declare-fun b!7539949 () Bool)

(declare-fun e!4492505 () Bool)

(assert (=> b!7539949 (= e!4492505 (nullable!8675 baseR!101))))

(declare-fun b!7539950 () Bool)

(declare-fun res!3021651 () Bool)

(declare-fun e!4492506 () Bool)

(assert (=> b!7539950 (=> res!3021651 e!4492506)))

(assert (=> b!7539950 (= res!3021651 (not (isEmpty!41371 (tail!15037 knownP!30))))))

(declare-fun b!7539951 () Bool)

(declare-fun res!3021648 () Bool)

(declare-fun e!4492501 () Bool)

(assert (=> b!7539951 (=> res!3021648 e!4492501)))

(assert (=> b!7539951 (= res!3021648 (not ((_ is ElementMatch!19901) baseR!101)))))

(declare-fun e!4492502 () Bool)

(assert (=> b!7539951 (= e!4492502 e!4492501)))

(declare-fun b!7539952 () Bool)

(assert (=> b!7539952 (= e!4492505 (matchR!9503 (derivativeStep!5691 baseR!101 (head!15491 knownP!30)) (tail!15037 knownP!30)))))

(declare-fun d!2311126 () Bool)

(declare-fun e!4492503 () Bool)

(assert (=> d!2311126 e!4492503))

(declare-fun c!1392136 () Bool)

(assert (=> d!2311126 (= c!1392136 ((_ is EmptyExpr!19901) baseR!101))))

(declare-fun lt!2642965 () Bool)

(assert (=> d!2311126 (= lt!2642965 e!4492505)))

(declare-fun c!1392134 () Bool)

(assert (=> d!2311126 (= c!1392134 (isEmpty!41371 knownP!30))))

(assert (=> d!2311126 (validRegex!10329 baseR!101)))

(assert (=> d!2311126 (= (matchR!9503 baseR!101 knownP!30) lt!2642965)))

(declare-fun b!7539953 () Bool)

(declare-fun res!3021647 () Bool)

(declare-fun e!4492500 () Bool)

(assert (=> b!7539953 (=> (not res!3021647) (not e!4492500))))

(assert (=> b!7539953 (= res!3021647 (isEmpty!41371 (tail!15037 knownP!30)))))

(declare-fun b!7539954 () Bool)

(assert (=> b!7539954 (= e!4492503 e!4492502)))

(declare-fun c!1392135 () Bool)

(assert (=> b!7539954 (= c!1392135 ((_ is EmptyLang!19901) baseR!101))))

(declare-fun b!7539955 () Bool)

(declare-fun e!4492504 () Bool)

(assert (=> b!7539955 (= e!4492501 e!4492504)))

(declare-fun res!3021654 () Bool)

(assert (=> b!7539955 (=> (not res!3021654) (not e!4492504))))

(assert (=> b!7539955 (= res!3021654 (not lt!2642965))))

(declare-fun b!7539956 () Bool)

(assert (=> b!7539956 (= e!4492504 e!4492506)))

(declare-fun res!3021649 () Bool)

(assert (=> b!7539956 (=> res!3021649 e!4492506)))

(declare-fun call!691644 () Bool)

(assert (=> b!7539956 (= res!3021649 call!691644)))

(declare-fun b!7539957 () Bool)

(assert (=> b!7539957 (= e!4492500 (= (head!15491 knownP!30) (c!1392028 baseR!101)))))

(declare-fun bm!691639 () Bool)

(assert (=> bm!691639 (= call!691644 (isEmpty!41371 knownP!30))))

(declare-fun b!7539958 () Bool)

(assert (=> b!7539958 (= e!4492503 (= lt!2642965 call!691644))))

(declare-fun b!7539959 () Bool)

(declare-fun res!3021650 () Bool)

(assert (=> b!7539959 (=> res!3021650 e!4492501)))

(assert (=> b!7539959 (= res!3021650 e!4492500)))

(declare-fun res!3021652 () Bool)

(assert (=> b!7539959 (=> (not res!3021652) (not e!4492500))))

(assert (=> b!7539959 (= res!3021652 lt!2642965)))

(declare-fun b!7539960 () Bool)

(assert (=> b!7539960 (= e!4492502 (not lt!2642965))))

(declare-fun b!7539961 () Bool)

(declare-fun res!3021653 () Bool)

(assert (=> b!7539961 (=> (not res!3021653) (not e!4492500))))

(assert (=> b!7539961 (= res!3021653 (not call!691644))))

(declare-fun b!7539962 () Bool)

(assert (=> b!7539962 (= e!4492506 (not (= (head!15491 knownP!30) (c!1392028 baseR!101))))))

(assert (= (and d!2311126 c!1392134) b!7539949))

(assert (= (and d!2311126 (not c!1392134)) b!7539952))

(assert (= (and d!2311126 c!1392136) b!7539958))

(assert (= (and d!2311126 (not c!1392136)) b!7539954))

(assert (= (and b!7539954 c!1392135) b!7539960))

(assert (= (and b!7539954 (not c!1392135)) b!7539951))

(assert (= (and b!7539951 (not res!3021648)) b!7539959))

(assert (= (and b!7539959 res!3021652) b!7539961))

(assert (= (and b!7539961 res!3021653) b!7539953))

(assert (= (and b!7539953 res!3021647) b!7539957))

(assert (= (and b!7539959 (not res!3021650)) b!7539955))

(assert (= (and b!7539955 res!3021654) b!7539956))

(assert (= (and b!7539956 (not res!3021649)) b!7539950))

(assert (= (and b!7539950 (not res!3021651)) b!7539962))

(assert (= (or b!7539958 b!7539956 b!7539961) bm!691639))

(assert (=> b!7539957 m!8109246))

(declare-fun m!8109578 () Bool)

(assert (=> d!2311126 m!8109578))

(assert (=> d!2311126 m!8109226))

(assert (=> b!7539952 m!8109246))

(assert (=> b!7539952 m!8109246))

(declare-fun m!8109580 () Bool)

(assert (=> b!7539952 m!8109580))

(assert (=> b!7539952 m!8109238))

(assert (=> b!7539952 m!8109580))

(assert (=> b!7539952 m!8109238))

(declare-fun m!8109582 () Bool)

(assert (=> b!7539952 m!8109582))

(assert (=> b!7539950 m!8109238))

(assert (=> b!7539950 m!8109238))

(declare-fun m!8109584 () Bool)

(assert (=> b!7539950 m!8109584))

(declare-fun m!8109586 () Bool)

(assert (=> b!7539949 m!8109586))

(assert (=> bm!691639 m!8109578))

(assert (=> b!7539953 m!8109238))

(assert (=> b!7539953 m!8109238))

(assert (=> b!7539953 m!8109584))

(assert (=> b!7539962 m!8109246))

(assert (=> b!7539506 d!2311126))

(declare-fun b!7539981 () Bool)

(declare-fun e!4492523 () Bool)

(declare-fun e!4492526 () Bool)

(assert (=> b!7539981 (= e!4492523 e!4492526)))

(declare-fun res!3021666 () Bool)

(assert (=> b!7539981 (= res!3021666 (not (nullable!8675 (reg!20230 r!24333))))))

(assert (=> b!7539981 (=> (not res!3021666) (not e!4492526))))

(declare-fun b!7539982 () Bool)

(declare-fun call!691652 () Bool)

(assert (=> b!7539982 (= e!4492526 call!691652)))

(declare-fun b!7539983 () Bool)

(declare-fun e!4492522 () Bool)

(assert (=> b!7539983 (= e!4492523 e!4492522)))

(declare-fun c!1392141 () Bool)

(assert (=> b!7539983 (= c!1392141 ((_ is Union!19901) r!24333))))

(declare-fun b!7539984 () Bool)

(declare-fun e!4492521 () Bool)

(declare-fun call!691653 () Bool)

(assert (=> b!7539984 (= e!4492521 call!691653)))

(declare-fun bm!691646 () Bool)

(declare-fun c!1392142 () Bool)

(assert (=> bm!691646 (= call!691652 (validRegex!10329 (ite c!1392142 (reg!20230 r!24333) (ite c!1392141 (regTwo!40315 r!24333) (regTwo!40314 r!24333)))))))

(declare-fun b!7539985 () Bool)

(declare-fun e!4492527 () Bool)

(assert (=> b!7539985 (= e!4492527 call!691653)))

(declare-fun b!7539986 () Bool)

(declare-fun e!4492525 () Bool)

(assert (=> b!7539986 (= e!4492525 e!4492521)))

(declare-fun res!3021665 () Bool)

(assert (=> b!7539986 (=> (not res!3021665) (not e!4492521))))

(declare-fun call!691651 () Bool)

(assert (=> b!7539986 (= res!3021665 call!691651)))

(declare-fun d!2311128 () Bool)

(declare-fun res!3021668 () Bool)

(declare-fun e!4492524 () Bool)

(assert (=> d!2311128 (=> res!3021668 e!4492524)))

(assert (=> d!2311128 (= res!3021668 ((_ is ElementMatch!19901) r!24333))))

(assert (=> d!2311128 (= (validRegex!10329 r!24333) e!4492524)))

(declare-fun b!7539987 () Bool)

(declare-fun res!3021669 () Bool)

(assert (=> b!7539987 (=> (not res!3021669) (not e!4492527))))

(assert (=> b!7539987 (= res!3021669 call!691651)))

(assert (=> b!7539987 (= e!4492522 e!4492527)))

(declare-fun bm!691647 () Bool)

(assert (=> bm!691647 (= call!691653 call!691652)))

(declare-fun b!7539988 () Bool)

(declare-fun res!3021667 () Bool)

(assert (=> b!7539988 (=> res!3021667 e!4492525)))

(assert (=> b!7539988 (= res!3021667 (not ((_ is Concat!28746) r!24333)))))

(assert (=> b!7539988 (= e!4492522 e!4492525)))

(declare-fun b!7539989 () Bool)

(assert (=> b!7539989 (= e!4492524 e!4492523)))

(assert (=> b!7539989 (= c!1392142 ((_ is Star!19901) r!24333))))

(declare-fun bm!691648 () Bool)

(assert (=> bm!691648 (= call!691651 (validRegex!10329 (ite c!1392141 (regOne!40315 r!24333) (regOne!40314 r!24333))))))

(assert (= (and d!2311128 (not res!3021668)) b!7539989))

(assert (= (and b!7539989 c!1392142) b!7539981))

(assert (= (and b!7539989 (not c!1392142)) b!7539983))

(assert (= (and b!7539981 res!3021666) b!7539982))

(assert (= (and b!7539983 c!1392141) b!7539987))

(assert (= (and b!7539983 (not c!1392141)) b!7539988))

(assert (= (and b!7539987 res!3021669) b!7539985))

(assert (= (and b!7539988 (not res!3021667)) b!7539986))

(assert (= (and b!7539986 res!3021665) b!7539984))

(assert (= (or b!7539987 b!7539986) bm!691648))

(assert (= (or b!7539985 b!7539984) bm!691647))

(assert (= (or b!7539982 bm!691647) bm!691646))

(declare-fun m!8109588 () Bool)

(assert (=> b!7539981 m!8109588))

(declare-fun m!8109590 () Bool)

(assert (=> bm!691646 m!8109590))

(declare-fun m!8109592 () Bool)

(assert (=> bm!691648 m!8109592))

(assert (=> b!7539517 d!2311128))

(declare-fun d!2311130 () Bool)

(declare-fun lt!2642966 () Int)

(assert (=> d!2311130 (>= lt!2642966 0)))

(declare-fun e!4492528 () Int)

(assert (=> d!2311130 (= lt!2642966 e!4492528)))

(declare-fun c!1392143 () Bool)

(assert (=> d!2311130 (= c!1392143 ((_ is Nil!72660) input!7874))))

(assert (=> d!2311130 (= (size!42397 input!7874) lt!2642966)))

(declare-fun b!7539990 () Bool)

(assert (=> b!7539990 (= e!4492528 0)))

(declare-fun b!7539991 () Bool)

(assert (=> b!7539991 (= e!4492528 (+ 1 (size!42397 (t!387491 input!7874))))))

(assert (= (and d!2311130 c!1392143) b!7539990))

(assert (= (and d!2311130 (not c!1392143)) b!7539991))

(declare-fun m!8109594 () Bool)

(assert (=> b!7539991 m!8109594))

(assert (=> b!7539518 d!2311130))

(declare-fun b!7539994 () Bool)

(declare-fun res!3021671 () Bool)

(declare-fun e!4492530 () Bool)

(assert (=> b!7539994 (=> (not res!3021671) (not e!4492530))))

(declare-fun lt!2642967 () List!72784)

(assert (=> b!7539994 (= res!3021671 (= (size!42397 lt!2642967) (+ (size!42397 testedP!423) (size!42397 lt!2642859))))))

(declare-fun d!2311132 () Bool)

(assert (=> d!2311132 e!4492530))

(declare-fun res!3021670 () Bool)

(assert (=> d!2311132 (=> (not res!3021670) (not e!4492530))))

(assert (=> d!2311132 (= res!3021670 (= (content!15363 lt!2642967) ((_ map or) (content!15363 testedP!423) (content!15363 lt!2642859))))))

(declare-fun e!4492529 () List!72784)

(assert (=> d!2311132 (= lt!2642967 e!4492529)))

(declare-fun c!1392144 () Bool)

(assert (=> d!2311132 (= c!1392144 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311132 (= (++!17418 testedP!423 lt!2642859) lt!2642967)))

(declare-fun b!7539992 () Bool)

(assert (=> b!7539992 (= e!4492529 lt!2642859)))

(declare-fun b!7539993 () Bool)

(assert (=> b!7539993 (= e!4492529 (Cons!72660 (h!79108 testedP!423) (++!17418 (t!387491 testedP!423) lt!2642859)))))

(declare-fun b!7539995 () Bool)

(assert (=> b!7539995 (= e!4492530 (or (not (= lt!2642859 Nil!72660)) (= lt!2642967 testedP!423)))))

(assert (= (and d!2311132 c!1392144) b!7539992))

(assert (= (and d!2311132 (not c!1392144)) b!7539993))

(assert (= (and d!2311132 res!3021670) b!7539994))

(assert (= (and b!7539994 res!3021671) b!7539995))

(declare-fun m!8109596 () Bool)

(assert (=> b!7539994 m!8109596))

(assert (=> b!7539994 m!8109186))

(declare-fun m!8109598 () Bool)

(assert (=> b!7539994 m!8109598))

(declare-fun m!8109600 () Bool)

(assert (=> d!2311132 m!8109600))

(assert (=> d!2311132 m!8109382))

(declare-fun m!8109602 () Bool)

(assert (=> d!2311132 m!8109602))

(declare-fun m!8109604 () Bool)

(assert (=> b!7539993 m!8109604))

(assert (=> b!7539515 d!2311132))

(declare-fun b!7539998 () Bool)

(declare-fun res!3021673 () Bool)

(declare-fun e!4492532 () Bool)

(assert (=> b!7539998 (=> (not res!3021673) (not e!4492532))))

(declare-fun lt!2642968 () List!72784)

(assert (=> b!7539998 (= res!3021673 (= (size!42397 lt!2642968) (+ (size!42397 (++!17418 testedP!423 lt!2642856)) (size!42397 lt!2642846))))))

(declare-fun d!2311134 () Bool)

(assert (=> d!2311134 e!4492532))

(declare-fun res!3021672 () Bool)

(assert (=> d!2311134 (=> (not res!3021672) (not e!4492532))))

(assert (=> d!2311134 (= res!3021672 (= (content!15363 lt!2642968) ((_ map or) (content!15363 (++!17418 testedP!423 lt!2642856)) (content!15363 lt!2642846))))))

(declare-fun e!4492531 () List!72784)

(assert (=> d!2311134 (= lt!2642968 e!4492531)))

(declare-fun c!1392145 () Bool)

(assert (=> d!2311134 (= c!1392145 ((_ is Nil!72660) (++!17418 testedP!423 lt!2642856)))))

(assert (=> d!2311134 (= (++!17418 (++!17418 testedP!423 lt!2642856) lt!2642846) lt!2642968)))

(declare-fun b!7539996 () Bool)

(assert (=> b!7539996 (= e!4492531 lt!2642846)))

(declare-fun b!7539997 () Bool)

(assert (=> b!7539997 (= e!4492531 (Cons!72660 (h!79108 (++!17418 testedP!423 lt!2642856)) (++!17418 (t!387491 (++!17418 testedP!423 lt!2642856)) lt!2642846)))))

(declare-fun b!7539999 () Bool)

(assert (=> b!7539999 (= e!4492532 (or (not (= lt!2642846 Nil!72660)) (= lt!2642968 (++!17418 testedP!423 lt!2642856))))))

(assert (= (and d!2311134 c!1392145) b!7539996))

(assert (= (and d!2311134 (not c!1392145)) b!7539997))

(assert (= (and d!2311134 res!3021672) b!7539998))

(assert (= (and b!7539998 res!3021673) b!7539999))

(declare-fun m!8109606 () Bool)

(assert (=> b!7539998 m!8109606))

(assert (=> b!7539998 m!8109164))

(declare-fun m!8109608 () Bool)

(assert (=> b!7539998 m!8109608))

(assert (=> b!7539998 m!8109320))

(declare-fun m!8109610 () Bool)

(assert (=> d!2311134 m!8109610))

(assert (=> d!2311134 m!8109164))

(declare-fun m!8109612 () Bool)

(assert (=> d!2311134 m!8109612))

(assert (=> d!2311134 m!8109326))

(declare-fun m!8109614 () Bool)

(assert (=> b!7539997 m!8109614))

(assert (=> b!7539526 d!2311134))

(declare-fun b!7540002 () Bool)

(declare-fun res!3021675 () Bool)

(declare-fun e!4492534 () Bool)

(assert (=> b!7540002 (=> (not res!3021675) (not e!4492534))))

(declare-fun lt!2642969 () List!72784)

(assert (=> b!7540002 (= res!3021675 (= (size!42397 lt!2642969) (+ (size!42397 testedP!423) (size!42397 lt!2642856))))))

(declare-fun d!2311136 () Bool)

(assert (=> d!2311136 e!4492534))

(declare-fun res!3021674 () Bool)

(assert (=> d!2311136 (=> (not res!3021674) (not e!4492534))))

(assert (=> d!2311136 (= res!3021674 (= (content!15363 lt!2642969) ((_ map or) (content!15363 testedP!423) (content!15363 lt!2642856))))))

(declare-fun e!4492533 () List!72784)

(assert (=> d!2311136 (= lt!2642969 e!4492533)))

(declare-fun c!1392146 () Bool)

(assert (=> d!2311136 (= c!1392146 ((_ is Nil!72660) testedP!423))))

(assert (=> d!2311136 (= (++!17418 testedP!423 lt!2642856) lt!2642969)))

(declare-fun b!7540000 () Bool)

(assert (=> b!7540000 (= e!4492533 lt!2642856)))

(declare-fun b!7540001 () Bool)

(assert (=> b!7540001 (= e!4492533 (Cons!72660 (h!79108 testedP!423) (++!17418 (t!387491 testedP!423) lt!2642856)))))

(declare-fun b!7540003 () Bool)

(assert (=> b!7540003 (= e!4492534 (or (not (= lt!2642856 Nil!72660)) (= lt!2642969 testedP!423)))))

(assert (= (and d!2311136 c!1392146) b!7540000))

(assert (= (and d!2311136 (not c!1392146)) b!7540001))

(assert (= (and d!2311136 res!3021674) b!7540002))

(assert (= (and b!7540002 res!3021675) b!7540003))

(declare-fun m!8109616 () Bool)

(assert (=> b!7540002 m!8109616))

(assert (=> b!7540002 m!8109186))

(assert (=> b!7540002 m!8109474))

(declare-fun m!8109618 () Bool)

(assert (=> d!2311136 m!8109618))

(assert (=> d!2311136 m!8109382))

(assert (=> d!2311136 m!8109480))

(declare-fun m!8109620 () Bool)

(assert (=> b!7540001 m!8109620))

(assert (=> b!7539526 d!2311136))

(declare-fun b!7540004 () Bool)

(declare-fun e!4492537 () Bool)

(declare-fun e!4492540 () Bool)

(assert (=> b!7540004 (= e!4492537 e!4492540)))

(declare-fun res!3021677 () Bool)

(assert (=> b!7540004 (= res!3021677 (not (nullable!8675 (reg!20230 baseR!101))))))

(assert (=> b!7540004 (=> (not res!3021677) (not e!4492540))))

(declare-fun b!7540005 () Bool)

(declare-fun call!691655 () Bool)

(assert (=> b!7540005 (= e!4492540 call!691655)))

(declare-fun b!7540006 () Bool)

(declare-fun e!4492536 () Bool)

(assert (=> b!7540006 (= e!4492537 e!4492536)))

(declare-fun c!1392147 () Bool)

(assert (=> b!7540006 (= c!1392147 ((_ is Union!19901) baseR!101))))

(declare-fun b!7540007 () Bool)

(declare-fun e!4492535 () Bool)

(declare-fun call!691656 () Bool)

(assert (=> b!7540007 (= e!4492535 call!691656)))

(declare-fun bm!691649 () Bool)

(declare-fun c!1392148 () Bool)

(assert (=> bm!691649 (= call!691655 (validRegex!10329 (ite c!1392148 (reg!20230 baseR!101) (ite c!1392147 (regTwo!40315 baseR!101) (regTwo!40314 baseR!101)))))))

(declare-fun b!7540008 () Bool)

(declare-fun e!4492541 () Bool)

(assert (=> b!7540008 (= e!4492541 call!691656)))

(declare-fun b!7540009 () Bool)

(declare-fun e!4492539 () Bool)

(assert (=> b!7540009 (= e!4492539 e!4492535)))

(declare-fun res!3021676 () Bool)

(assert (=> b!7540009 (=> (not res!3021676) (not e!4492535))))

(declare-fun call!691654 () Bool)

(assert (=> b!7540009 (= res!3021676 call!691654)))

(declare-fun d!2311138 () Bool)

(declare-fun res!3021679 () Bool)

(declare-fun e!4492538 () Bool)

(assert (=> d!2311138 (=> res!3021679 e!4492538)))

(assert (=> d!2311138 (= res!3021679 ((_ is ElementMatch!19901) baseR!101))))

(assert (=> d!2311138 (= (validRegex!10329 baseR!101) e!4492538)))

(declare-fun b!7540010 () Bool)

(declare-fun res!3021680 () Bool)

(assert (=> b!7540010 (=> (not res!3021680) (not e!4492541))))

(assert (=> b!7540010 (= res!3021680 call!691654)))

(assert (=> b!7540010 (= e!4492536 e!4492541)))

(declare-fun bm!691650 () Bool)

(assert (=> bm!691650 (= call!691656 call!691655)))

(declare-fun b!7540011 () Bool)

(declare-fun res!3021678 () Bool)

(assert (=> b!7540011 (=> res!3021678 e!4492539)))

(assert (=> b!7540011 (= res!3021678 (not ((_ is Concat!28746) baseR!101)))))

(assert (=> b!7540011 (= e!4492536 e!4492539)))

(declare-fun b!7540012 () Bool)

(assert (=> b!7540012 (= e!4492538 e!4492537)))

(assert (=> b!7540012 (= c!1392148 ((_ is Star!19901) baseR!101))))

(declare-fun bm!691651 () Bool)

(assert (=> bm!691651 (= call!691654 (validRegex!10329 (ite c!1392147 (regOne!40315 baseR!101) (regOne!40314 baseR!101))))))

(assert (= (and d!2311138 (not res!3021679)) b!7540012))

(assert (= (and b!7540012 c!1392148) b!7540004))

(assert (= (and b!7540012 (not c!1392148)) b!7540006))

(assert (= (and b!7540004 res!3021677) b!7540005))

(assert (= (and b!7540006 c!1392147) b!7540010))

(assert (= (and b!7540006 (not c!1392147)) b!7540011))

(assert (= (and b!7540010 res!3021680) b!7540008))

(assert (= (and b!7540011 (not res!3021678)) b!7540009))

(assert (= (and b!7540009 res!3021676) b!7540007))

(assert (= (or b!7540010 b!7540009) bm!691651))

(assert (= (or b!7540008 b!7540007) bm!691650))

(assert (= (or b!7540005 bm!691650) bm!691649))

(declare-fun m!8109622 () Bool)

(assert (=> b!7540004 m!8109622))

(declare-fun m!8109624 () Bool)

(assert (=> bm!691649 m!8109624))

(declare-fun m!8109626 () Bool)

(assert (=> bm!691651 m!8109626))

(assert (=> start!729188 d!2311138))

(declare-fun b!7540015 () Bool)

(declare-fun e!4492544 () Bool)

(assert (=> b!7540015 (= e!4492544 (isPrefix!6107 (tail!15037 knownP!30) (tail!15037 input!7874)))))

(declare-fun d!2311140 () Bool)

(declare-fun e!4492542 () Bool)

(assert (=> d!2311140 e!4492542))

(declare-fun res!3021682 () Bool)

(assert (=> d!2311140 (=> res!3021682 e!4492542)))

(declare-fun lt!2642970 () Bool)

(assert (=> d!2311140 (= res!3021682 (not lt!2642970))))

(declare-fun e!4492543 () Bool)

(assert (=> d!2311140 (= lt!2642970 e!4492543)))

(declare-fun res!3021684 () Bool)

(assert (=> d!2311140 (=> res!3021684 e!4492543)))

(assert (=> d!2311140 (= res!3021684 ((_ is Nil!72660) knownP!30))))

(assert (=> d!2311140 (= (isPrefix!6107 knownP!30 input!7874) lt!2642970)))

(declare-fun b!7540016 () Bool)

(assert (=> b!7540016 (= e!4492542 (>= (size!42397 input!7874) (size!42397 knownP!30)))))

(declare-fun b!7540013 () Bool)

(assert (=> b!7540013 (= e!4492543 e!4492544)))

(declare-fun res!3021681 () Bool)

(assert (=> b!7540013 (=> (not res!3021681) (not e!4492544))))

(assert (=> b!7540013 (= res!3021681 (not ((_ is Nil!72660) input!7874)))))

(declare-fun b!7540014 () Bool)

(declare-fun res!3021683 () Bool)

(assert (=> b!7540014 (=> (not res!3021683) (not e!4492544))))

(assert (=> b!7540014 (= res!3021683 (= (head!15491 knownP!30) (head!15491 input!7874)))))

(assert (= (and d!2311140 (not res!3021684)) b!7540013))

(assert (= (and b!7540013 res!3021681) b!7540014))

(assert (= (and b!7540014 res!3021683) b!7540015))

(assert (= (and d!2311140 (not res!3021682)) b!7540016))

(assert (=> b!7540015 m!8109238))

(assert (=> b!7540015 m!8109286))

(assert (=> b!7540015 m!8109238))

(assert (=> b!7540015 m!8109286))

(declare-fun m!8109628 () Bool)

(assert (=> b!7540015 m!8109628))

(assert (=> b!7540016 m!8109190))

(assert (=> b!7540016 m!8109188))

(assert (=> b!7540014 m!8109246))

(assert (=> b!7540014 m!8109310))

(assert (=> b!7539505 d!2311140))

(declare-fun e!4492547 () Bool)

(assert (=> b!7539522 (= tp!2193015 e!4492547)))

(declare-fun b!7540028 () Bool)

(declare-fun tp!2193101 () Bool)

(declare-fun tp!2193100 () Bool)

(assert (=> b!7540028 (= e!4492547 (and tp!2193101 tp!2193100))))

(declare-fun b!7540030 () Bool)

(declare-fun tp!2193103 () Bool)

(declare-fun tp!2193102 () Bool)

(assert (=> b!7540030 (= e!4492547 (and tp!2193103 tp!2193102))))

(declare-fun b!7540027 () Bool)

(assert (=> b!7540027 (= e!4492547 tp_is_empty!50157)))

(declare-fun b!7540029 () Bool)

(declare-fun tp!2193099 () Bool)

(assert (=> b!7540029 (= e!4492547 tp!2193099)))

(assert (= (and b!7539522 ((_ is ElementMatch!19901) (regOne!40314 baseR!101))) b!7540027))

(assert (= (and b!7539522 ((_ is Concat!28746) (regOne!40314 baseR!101))) b!7540028))

(assert (= (and b!7539522 ((_ is Star!19901) (regOne!40314 baseR!101))) b!7540029))

(assert (= (and b!7539522 ((_ is Union!19901) (regOne!40314 baseR!101))) b!7540030))

(declare-fun e!4492548 () Bool)

(assert (=> b!7539522 (= tp!2193016 e!4492548)))

(declare-fun b!7540032 () Bool)

(declare-fun tp!2193106 () Bool)

(declare-fun tp!2193105 () Bool)

(assert (=> b!7540032 (= e!4492548 (and tp!2193106 tp!2193105))))

(declare-fun b!7540034 () Bool)

(declare-fun tp!2193108 () Bool)

(declare-fun tp!2193107 () Bool)

(assert (=> b!7540034 (= e!4492548 (and tp!2193108 tp!2193107))))

(declare-fun b!7540031 () Bool)

(assert (=> b!7540031 (= e!4492548 tp_is_empty!50157)))

(declare-fun b!7540033 () Bool)

(declare-fun tp!2193104 () Bool)

(assert (=> b!7540033 (= e!4492548 tp!2193104)))

(assert (= (and b!7539522 ((_ is ElementMatch!19901) (regTwo!40314 baseR!101))) b!7540031))

(assert (= (and b!7539522 ((_ is Concat!28746) (regTwo!40314 baseR!101))) b!7540032))

(assert (= (and b!7539522 ((_ is Star!19901) (regTwo!40314 baseR!101))) b!7540033))

(assert (= (and b!7539522 ((_ is Union!19901) (regTwo!40314 baseR!101))) b!7540034))

(declare-fun e!4492549 () Bool)

(assert (=> b!7539507 (= tp!2193012 e!4492549)))

(declare-fun b!7540036 () Bool)

(declare-fun tp!2193111 () Bool)

(declare-fun tp!2193110 () Bool)

(assert (=> b!7540036 (= e!4492549 (and tp!2193111 tp!2193110))))

(declare-fun b!7540038 () Bool)

(declare-fun tp!2193113 () Bool)

(declare-fun tp!2193112 () Bool)

(assert (=> b!7540038 (= e!4492549 (and tp!2193113 tp!2193112))))

(declare-fun b!7540035 () Bool)

(assert (=> b!7540035 (= e!4492549 tp_is_empty!50157)))

(declare-fun b!7540037 () Bool)

(declare-fun tp!2193109 () Bool)

(assert (=> b!7540037 (= e!4492549 tp!2193109)))

(assert (= (and b!7539507 ((_ is ElementMatch!19901) (regOne!40314 r!24333))) b!7540035))

(assert (= (and b!7539507 ((_ is Concat!28746) (regOne!40314 r!24333))) b!7540036))

(assert (= (and b!7539507 ((_ is Star!19901) (regOne!40314 r!24333))) b!7540037))

(assert (= (and b!7539507 ((_ is Union!19901) (regOne!40314 r!24333))) b!7540038))

(declare-fun e!4492550 () Bool)

(assert (=> b!7539507 (= tp!2193021 e!4492550)))

(declare-fun b!7540040 () Bool)

(declare-fun tp!2193116 () Bool)

(declare-fun tp!2193115 () Bool)

(assert (=> b!7540040 (= e!4492550 (and tp!2193116 tp!2193115))))

(declare-fun b!7540042 () Bool)

(declare-fun tp!2193118 () Bool)

(declare-fun tp!2193117 () Bool)

(assert (=> b!7540042 (= e!4492550 (and tp!2193118 tp!2193117))))

(declare-fun b!7540039 () Bool)

(assert (=> b!7540039 (= e!4492550 tp_is_empty!50157)))

(declare-fun b!7540041 () Bool)

(declare-fun tp!2193114 () Bool)

(assert (=> b!7540041 (= e!4492550 tp!2193114)))

(assert (= (and b!7539507 ((_ is ElementMatch!19901) (regTwo!40314 r!24333))) b!7540039))

(assert (= (and b!7539507 ((_ is Concat!28746) (regTwo!40314 r!24333))) b!7540040))

(assert (= (and b!7539507 ((_ is Star!19901) (regTwo!40314 r!24333))) b!7540041))

(assert (= (and b!7539507 ((_ is Union!19901) (regTwo!40314 r!24333))) b!7540042))

(declare-fun b!7540047 () Bool)

(declare-fun e!4492553 () Bool)

(declare-fun tp!2193121 () Bool)

(assert (=> b!7540047 (= e!4492553 (and tp_is_empty!50157 tp!2193121))))

(assert (=> b!7539502 (= tp!2193019 e!4492553)))

(assert (= (and b!7539502 ((_ is Cons!72660) (t!387491 input!7874))) b!7540047))

(declare-fun e!4492554 () Bool)

(assert (=> b!7539524 (= tp!2193014 e!4492554)))

(declare-fun b!7540049 () Bool)

(declare-fun tp!2193124 () Bool)

(declare-fun tp!2193123 () Bool)

(assert (=> b!7540049 (= e!4492554 (and tp!2193124 tp!2193123))))

(declare-fun b!7540051 () Bool)

(declare-fun tp!2193126 () Bool)

(declare-fun tp!2193125 () Bool)

(assert (=> b!7540051 (= e!4492554 (and tp!2193126 tp!2193125))))

(declare-fun b!7540048 () Bool)

(assert (=> b!7540048 (= e!4492554 tp_is_empty!50157)))

(declare-fun b!7540050 () Bool)

(declare-fun tp!2193122 () Bool)

(assert (=> b!7540050 (= e!4492554 tp!2193122)))

(assert (= (and b!7539524 ((_ is ElementMatch!19901) (regOne!40315 baseR!101))) b!7540048))

(assert (= (and b!7539524 ((_ is Concat!28746) (regOne!40315 baseR!101))) b!7540049))

(assert (= (and b!7539524 ((_ is Star!19901) (regOne!40315 baseR!101))) b!7540050))

(assert (= (and b!7539524 ((_ is Union!19901) (regOne!40315 baseR!101))) b!7540051))

(declare-fun e!4492555 () Bool)

(assert (=> b!7539524 (= tp!2193020 e!4492555)))

(declare-fun b!7540053 () Bool)

(declare-fun tp!2193129 () Bool)

(declare-fun tp!2193128 () Bool)

(assert (=> b!7540053 (= e!4492555 (and tp!2193129 tp!2193128))))

(declare-fun b!7540055 () Bool)

(declare-fun tp!2193131 () Bool)

(declare-fun tp!2193130 () Bool)

(assert (=> b!7540055 (= e!4492555 (and tp!2193131 tp!2193130))))

(declare-fun b!7540052 () Bool)

(assert (=> b!7540052 (= e!4492555 tp_is_empty!50157)))

(declare-fun b!7540054 () Bool)

(declare-fun tp!2193127 () Bool)

(assert (=> b!7540054 (= e!4492555 tp!2193127)))

(assert (= (and b!7539524 ((_ is ElementMatch!19901) (regTwo!40315 baseR!101))) b!7540052))

(assert (= (and b!7539524 ((_ is Concat!28746) (regTwo!40315 baseR!101))) b!7540053))

(assert (= (and b!7539524 ((_ is Star!19901) (regTwo!40315 baseR!101))) b!7540054))

(assert (= (and b!7539524 ((_ is Union!19901) (regTwo!40315 baseR!101))) b!7540055))

(declare-fun e!4492556 () Bool)

(assert (=> b!7539514 (= tp!2193023 e!4492556)))

(declare-fun b!7540057 () Bool)

(declare-fun tp!2193134 () Bool)

(declare-fun tp!2193133 () Bool)

(assert (=> b!7540057 (= e!4492556 (and tp!2193134 tp!2193133))))

(declare-fun b!7540059 () Bool)

(declare-fun tp!2193136 () Bool)

(declare-fun tp!2193135 () Bool)

(assert (=> b!7540059 (= e!4492556 (and tp!2193136 tp!2193135))))

(declare-fun b!7540056 () Bool)

(assert (=> b!7540056 (= e!4492556 tp_is_empty!50157)))

(declare-fun b!7540058 () Bool)

(declare-fun tp!2193132 () Bool)

(assert (=> b!7540058 (= e!4492556 tp!2193132)))

(assert (= (and b!7539514 ((_ is ElementMatch!19901) (reg!20230 baseR!101))) b!7540056))

(assert (= (and b!7539514 ((_ is Concat!28746) (reg!20230 baseR!101))) b!7540057))

(assert (= (and b!7539514 ((_ is Star!19901) (reg!20230 baseR!101))) b!7540058))

(assert (= (and b!7539514 ((_ is Union!19901) (reg!20230 baseR!101))) b!7540059))

(declare-fun b!7540060 () Bool)

(declare-fun e!4492557 () Bool)

(declare-fun tp!2193137 () Bool)

(assert (=> b!7540060 (= e!4492557 (and tp_is_empty!50157 tp!2193137))))

(assert (=> b!7539525 (= tp!2193017 e!4492557)))

(assert (= (and b!7539525 ((_ is Cons!72660) (t!387491 knownP!30))) b!7540060))

(declare-fun e!4492558 () Bool)

(assert (=> b!7539504 (= tp!2193022 e!4492558)))

(declare-fun b!7540062 () Bool)

(declare-fun tp!2193140 () Bool)

(declare-fun tp!2193139 () Bool)

(assert (=> b!7540062 (= e!4492558 (and tp!2193140 tp!2193139))))

(declare-fun b!7540064 () Bool)

(declare-fun tp!2193142 () Bool)

(declare-fun tp!2193141 () Bool)

(assert (=> b!7540064 (= e!4492558 (and tp!2193142 tp!2193141))))

(declare-fun b!7540061 () Bool)

(assert (=> b!7540061 (= e!4492558 tp_is_empty!50157)))

(declare-fun b!7540063 () Bool)

(declare-fun tp!2193138 () Bool)

(assert (=> b!7540063 (= e!4492558 tp!2193138)))

(assert (= (and b!7539504 ((_ is ElementMatch!19901) (reg!20230 r!24333))) b!7540061))

(assert (= (and b!7539504 ((_ is Concat!28746) (reg!20230 r!24333))) b!7540062))

(assert (= (and b!7539504 ((_ is Star!19901) (reg!20230 r!24333))) b!7540063))

(assert (= (and b!7539504 ((_ is Union!19901) (reg!20230 r!24333))) b!7540064))

(declare-fun b!7540065 () Bool)

(declare-fun e!4492559 () Bool)

(declare-fun tp!2193143 () Bool)

(assert (=> b!7540065 (= e!4492559 (and tp_is_empty!50157 tp!2193143))))

(assert (=> b!7539510 (= tp!2193018 e!4492559)))

(assert (= (and b!7539510 ((_ is Cons!72660) (t!387491 testedP!423))) b!7540065))

(declare-fun e!4492560 () Bool)

(assert (=> b!7539521 (= tp!2193011 e!4492560)))

(declare-fun b!7540067 () Bool)

(declare-fun tp!2193146 () Bool)

(declare-fun tp!2193145 () Bool)

(assert (=> b!7540067 (= e!4492560 (and tp!2193146 tp!2193145))))

(declare-fun b!7540069 () Bool)

(declare-fun tp!2193148 () Bool)

(declare-fun tp!2193147 () Bool)

(assert (=> b!7540069 (= e!4492560 (and tp!2193148 tp!2193147))))

(declare-fun b!7540066 () Bool)

(assert (=> b!7540066 (= e!4492560 tp_is_empty!50157)))

(declare-fun b!7540068 () Bool)

(declare-fun tp!2193144 () Bool)

(assert (=> b!7540068 (= e!4492560 tp!2193144)))

(assert (= (and b!7539521 ((_ is ElementMatch!19901) (regOne!40315 r!24333))) b!7540066))

(assert (= (and b!7539521 ((_ is Concat!28746) (regOne!40315 r!24333))) b!7540067))

(assert (= (and b!7539521 ((_ is Star!19901) (regOne!40315 r!24333))) b!7540068))

(assert (= (and b!7539521 ((_ is Union!19901) (regOne!40315 r!24333))) b!7540069))

(declare-fun e!4492561 () Bool)

(assert (=> b!7539521 (= tp!2193013 e!4492561)))

(declare-fun b!7540071 () Bool)

(declare-fun tp!2193151 () Bool)

(declare-fun tp!2193150 () Bool)

(assert (=> b!7540071 (= e!4492561 (and tp!2193151 tp!2193150))))

(declare-fun b!7540073 () Bool)

(declare-fun tp!2193153 () Bool)

(declare-fun tp!2193152 () Bool)

(assert (=> b!7540073 (= e!4492561 (and tp!2193153 tp!2193152))))

(declare-fun b!7540070 () Bool)

(assert (=> b!7540070 (= e!4492561 tp_is_empty!50157)))

(declare-fun b!7540072 () Bool)

(declare-fun tp!2193149 () Bool)

(assert (=> b!7540072 (= e!4492561 tp!2193149)))

(assert (= (and b!7539521 ((_ is ElementMatch!19901) (regTwo!40315 r!24333))) b!7540070))

(assert (= (and b!7539521 ((_ is Concat!28746) (regTwo!40315 r!24333))) b!7540071))

(assert (= (and b!7539521 ((_ is Star!19901) (regTwo!40315 r!24333))) b!7540072))

(assert (= (and b!7539521 ((_ is Union!19901) (regTwo!40315 r!24333))) b!7540073))

(check-sat (not d!2311088) (not bm!691616) (not d!2311046) (not b!7539670) (not b!7540014) (not b!7539710) (not b!7540034) (not b!7540016) (not b!7540055) (not b!7540072) (not d!2311132) (not b!7539929) (not d!2311126) (not d!2311134) (not b!7540036) (not b!7539948) (not b!7540073) (not b!7540060) (not b!7539994) (not b!7540030) (not b!7540062) (not b!7539737) (not b!7539774) (not b!7539617) (not b!7540001) (not b!7540049) (not b!7539773) (not b!7539981) (not b!7540068) (not b!7539997) (not b!7539775) (not b!7540032) (not b!7540047) (not b!7539957) (not b!7540051) (not b!7539692) (not b!7540037) (not d!2311036) (not bm!691619) (not b!7539947) (not b!7540028) (not b!7539675) (not b!7540054) (not b!7539539) (not d!2311008) (not b!7540002) (not b!7539933) (not b!7540042) (not b!7539538) (not b!7540040) (not b!7540053) (not bm!691648) (not b!7539782) (not b!7539932) (not b!7539952) (not b!7540067) (not d!2311050) (not b!7540050) (not b!7539771) (not b!7539946) (not b!7539792) (not b!7539778) (not bm!691649) (not b!7540064) (not b!7539949) (not d!2311016) (not d!2311004) (not b!7539654) (not b!7539943) (not b!7540065) (not b!7539991) (not b!7540033) (not d!2311086) (not b!7539953) (not b!7540071) (not b!7539537) (not b!7540038) (not b!7539769) (not bm!691646) (not b!7540015) (not b!7540041) (not b!7540058) (not d!2311124) (not b!7540063) tp_is_empty!50157 (not b!7539712) (not d!2311026) (not b!7539962) (not b!7540069) (not bm!691651) (not b!7539942) (not d!2311136) (not b!7539781) (not b!7539691) (not d!2311030) (not b!7539673) (not b!7540059) (not d!2311094) (not d!2311102) (not b!7539998) (not d!2311040) (not bm!691639) (not d!2311120) (not b!7539738) (not d!2311058) (not b!7539993) (not b!7539937) (not b!7539950) (not b!7540004) (not d!2311060) (not b!7539777) (not d!2311028) (not b!7539930) (not b!7539674) (not b!7540057) (not b!7540029) (not d!2311100) (not bm!691638))
(check-sat)
