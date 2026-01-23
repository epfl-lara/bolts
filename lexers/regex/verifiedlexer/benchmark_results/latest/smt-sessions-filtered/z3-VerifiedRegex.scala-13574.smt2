; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729960 () Bool)

(assert start!729960)

(declare-fun b!7549282 () Bool)

(declare-fun e!4497077 () Bool)

(declare-fun e!4497083 () Bool)

(assert (=> b!7549282 (= e!4497077 e!4497083)))

(declare-fun res!3025866 () Bool)

(assert (=> b!7549282 (=> (not res!3025866) (not e!4497083))))

(declare-fun lt!2646368 () Int)

(declare-fun lt!2646375 () Int)

(assert (=> b!7549282 (= res!3025866 (>= lt!2646368 lt!2646375))))

(declare-datatypes ((C!40212 0))(
  ( (C!40213 (val!30546 Int)) )
))
(declare-datatypes ((List!72826 0))(
  ( (Nil!72702) (Cons!72702 (h!79150 C!40212) (t!387543 List!72826)) )
))
(declare-fun testedP!423 () List!72826)

(declare-fun size!42439 (List!72826) Int)

(assert (=> b!7549282 (= lt!2646375 (size!42439 testedP!423))))

(declare-fun knownP!30 () List!72826)

(assert (=> b!7549282 (= lt!2646368 (size!42439 knownP!30))))

(declare-fun b!7549283 () Bool)

(declare-fun res!3025874 () Bool)

(declare-fun e!4497087 () Bool)

(assert (=> b!7549283 (=> res!3025874 e!4497087)))

(assert (=> b!7549283 (= res!3025874 (= lt!2646375 lt!2646368))))

(declare-fun b!7549284 () Bool)

(declare-fun e!4497079 () Bool)

(declare-fun tp!2196221 () Bool)

(assert (=> b!7549284 (= e!4497079 tp!2196221)))

(declare-fun res!3025863 () Bool)

(assert (=> start!729960 (=> (not res!3025863) (not e!4497077))))

(declare-datatypes ((Regex!19943 0))(
  ( (ElementMatch!19943 (c!1393410 C!40212)) (Concat!28788 (regOne!40398 Regex!19943) (regTwo!40398 Regex!19943)) (EmptyExpr!19943) (Star!19943 (reg!20272 Regex!19943)) (EmptyLang!19943) (Union!19943 (regOne!40399 Regex!19943) (regTwo!40399 Regex!19943)) )
))
(declare-fun baseR!101 () Regex!19943)

(declare-fun validRegex!10371 (Regex!19943) Bool)

(assert (=> start!729960 (= res!3025863 (validRegex!10371 baseR!101))))

(assert (=> start!729960 e!4497077))

(assert (=> start!729960 e!4497079))

(declare-fun e!4497078 () Bool)

(assert (=> start!729960 e!4497078))

(declare-fun e!4497080 () Bool)

(assert (=> start!729960 e!4497080))

(declare-fun e!4497086 () Bool)

(assert (=> start!729960 e!4497086))

(declare-fun e!4497081 () Bool)

(assert (=> start!729960 e!4497081))

(declare-fun b!7549285 () Bool)

(declare-fun e!4497085 () Bool)

(assert (=> b!7549285 (= e!4497087 e!4497085)))

(declare-fun res!3025860 () Bool)

(assert (=> b!7549285 (=> res!3025860 e!4497085)))

(declare-fun input!7874 () List!72826)

(declare-fun lt!2646367 () List!72826)

(declare-fun ++!17459 (List!72826 List!72826) List!72826)

(assert (=> b!7549285 (= res!3025860 (not (= (++!17459 knownP!30 lt!2646367) input!7874)))))

(declare-fun getSuffix!3629 (List!72826 List!72826) List!72826)

(assert (=> b!7549285 (= lt!2646367 (getSuffix!3629 input!7874 knownP!30))))

(declare-fun lt!2646380 () List!72826)

(declare-fun lt!2646379 () List!72826)

(assert (=> b!7549285 (= lt!2646380 (getSuffix!3629 knownP!30 lt!2646379))))

(declare-fun isPrefix!6149 (List!72826 List!72826) Bool)

(assert (=> b!7549285 (isPrefix!6149 lt!2646379 knownP!30)))

(declare-datatypes ((Unit!166824 0))(
  ( (Unit!166825) )
))
(declare-fun lt!2646374 () Unit!166824)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!899 (List!72826 List!72826 List!72826) Unit!166824)

(assert (=> b!7549285 (= lt!2646374 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!899 knownP!30 lt!2646379 input!7874))))

(declare-fun lt!2646376 () C!40212)

(declare-fun r!24333 () Regex!19943)

(declare-fun derivative!475 (Regex!19943 List!72826) Regex!19943)

(declare-fun derivativeStep!5733 (Regex!19943 C!40212) Regex!19943)

(assert (=> b!7549285 (= (derivative!475 baseR!101 lt!2646379) (derivativeStep!5733 r!24333 lt!2646376))))

(declare-fun lt!2646377 () Unit!166824)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!177 (Regex!19943 Regex!19943 List!72826 C!40212) Unit!166824)

(assert (=> b!7549285 (= lt!2646377 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!177 baseR!101 r!24333 testedP!423 lt!2646376))))

(assert (=> b!7549285 (isPrefix!6149 lt!2646379 input!7874)))

(declare-fun lt!2646365 () Unit!166824)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1210 (List!72826 List!72826) Unit!166824)

(assert (=> b!7549285 (= lt!2646365 (lemmaAddHeadSuffixToPrefixStillPrefix!1210 testedP!423 input!7874))))

(assert (=> b!7549285 (= lt!2646379 (++!17459 testedP!423 (Cons!72702 lt!2646376 Nil!72702)))))

(declare-fun lt!2646366 () List!72826)

(declare-fun head!15533 (List!72826) C!40212)

(assert (=> b!7549285 (= lt!2646376 (head!15533 lt!2646366))))

(assert (=> b!7549285 (= lt!2646366 (getSuffix!3629 input!7874 testedP!423))))

(declare-fun b!7549286 () Bool)

(declare-fun tp!2196215 () Bool)

(declare-fun tp!2196219 () Bool)

(assert (=> b!7549286 (= e!4497079 (and tp!2196215 tp!2196219))))

(declare-fun b!7549287 () Bool)

(declare-fun res!3025873 () Bool)

(assert (=> b!7549287 (=> res!3025873 e!4497087)))

(assert (=> b!7549287 (= res!3025873 (not (= (derivative!475 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7549288 () Bool)

(declare-fun tp!2196218 () Bool)

(assert (=> b!7549288 (= e!4497081 tp!2196218)))

(declare-fun b!7549289 () Bool)

(declare-fun tp_is_empty!50241 () Bool)

(assert (=> b!7549289 (= e!4497079 tp_is_empty!50241)))

(declare-fun b!7549290 () Bool)

(declare-fun e!4497082 () Bool)

(declare-fun lt!2646370 () List!72826)

(assert (=> b!7549290 (= e!4497082 (= (head!15533 lt!2646370) lt!2646376))))

(declare-fun lt!2646378 () List!72826)

(assert (=> b!7549290 (= lt!2646378 lt!2646366)))

(declare-fun lt!2646364 () Unit!166824)

(declare-fun lemmaSamePrefixThenSameSuffix!2865 (List!72826 List!72826 List!72826 List!72826 List!72826) Unit!166824)

(assert (=> b!7549290 (= lt!2646364 (lemmaSamePrefixThenSameSuffix!2865 testedP!423 lt!2646378 testedP!423 lt!2646366 input!7874))))

(declare-fun b!7549291 () Bool)

(declare-fun tp!2196216 () Bool)

(assert (=> b!7549291 (= e!4497086 (and tp_is_empty!50241 tp!2196216))))

(declare-fun b!7549292 () Bool)

(assert (=> b!7549292 (= e!4497083 (not e!4497087))))

(declare-fun res!3025861 () Bool)

(assert (=> b!7549292 (=> res!3025861 e!4497087)))

(declare-fun matchR!9545 (Regex!19943 List!72826) Bool)

(assert (=> b!7549292 (= res!3025861 (not (matchR!9545 r!24333 lt!2646370)))))

(assert (=> b!7549292 (= lt!2646370 (getSuffix!3629 knownP!30 testedP!423))))

(assert (=> b!7549292 (isPrefix!6149 testedP!423 knownP!30)))

(declare-fun lt!2646372 () Unit!166824)

(assert (=> b!7549292 (= lt!2646372 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!899 knownP!30 testedP!423 input!7874))))

(declare-fun b!7549293 () Bool)

(declare-fun tp!2196220 () Bool)

(declare-fun tp!2196213 () Bool)

(assert (=> b!7549293 (= e!4497081 (and tp!2196220 tp!2196213))))

(declare-fun b!7549294 () Bool)

(declare-fun res!3025864 () Bool)

(assert (=> b!7549294 (=> res!3025864 e!4497087)))

(assert (=> b!7549294 (= res!3025864 (>= lt!2646375 (size!42439 input!7874)))))

(declare-fun b!7549295 () Bool)

(declare-fun tp!2196217 () Bool)

(declare-fun tp!2196210 () Bool)

(assert (=> b!7549295 (= e!4497079 (and tp!2196217 tp!2196210))))

(declare-fun b!7549296 () Bool)

(declare-fun e!4497084 () Bool)

(assert (=> b!7549296 (= e!4497084 e!4497082)))

(declare-fun res!3025868 () Bool)

(assert (=> b!7549296 (=> res!3025868 e!4497082)))

(declare-fun lt!2646369 () List!72826)

(assert (=> b!7549296 (= res!3025868 (not (= lt!2646369 input!7874)))))

(declare-fun lt!2646373 () List!72826)

(assert (=> b!7549296 (= lt!2646373 lt!2646369)))

(assert (=> b!7549296 (= lt!2646369 (++!17459 testedP!423 lt!2646378))))

(assert (=> b!7549296 (= lt!2646378 (++!17459 lt!2646370 lt!2646367))))

(declare-fun lt!2646371 () Unit!166824)

(declare-fun lemmaConcatAssociativity!3098 (List!72826 List!72826 List!72826) Unit!166824)

(assert (=> b!7549296 (= lt!2646371 (lemmaConcatAssociativity!3098 testedP!423 lt!2646370 lt!2646367))))

(declare-fun b!7549297 () Bool)

(declare-fun tp!2196209 () Bool)

(assert (=> b!7549297 (= e!4497078 (and tp_is_empty!50241 tp!2196209))))

(declare-fun b!7549298 () Bool)

(declare-fun tp!2196212 () Bool)

(assert (=> b!7549298 (= e!4497080 (and tp_is_empty!50241 tp!2196212))))

(declare-fun b!7549299 () Bool)

(declare-fun res!3025870 () Bool)

(assert (=> b!7549299 (=> (not res!3025870) (not e!4497077))))

(assert (=> b!7549299 (= res!3025870 (isPrefix!6149 testedP!423 input!7874))))

(declare-fun b!7549300 () Bool)

(declare-fun tp!2196214 () Bool)

(declare-fun tp!2196211 () Bool)

(assert (=> b!7549300 (= e!4497081 (and tp!2196214 tp!2196211))))

(declare-fun b!7549301 () Bool)

(declare-fun res!3025862 () Bool)

(assert (=> b!7549301 (=> res!3025862 e!4497084)))

(assert (=> b!7549301 (= res!3025862 (not (= (++!17459 testedP!423 lt!2646366) input!7874)))))

(declare-fun b!7549302 () Bool)

(assert (=> b!7549302 (= e!4497081 tp_is_empty!50241)))

(declare-fun b!7549303 () Bool)

(declare-fun res!3025865 () Bool)

(assert (=> b!7549303 (=> (not res!3025865) (not e!4497077))))

(assert (=> b!7549303 (= res!3025865 (isPrefix!6149 knownP!30 input!7874))))

(declare-fun b!7549304 () Bool)

(declare-fun res!3025871 () Bool)

(assert (=> b!7549304 (=> (not res!3025871) (not e!4497083))))

(assert (=> b!7549304 (= res!3025871 (matchR!9545 baseR!101 knownP!30))))

(declare-fun b!7549305 () Bool)

(declare-fun res!3025869 () Bool)

(assert (=> b!7549305 (=> (not res!3025869) (not e!4497077))))

(assert (=> b!7549305 (= res!3025869 (validRegex!10371 r!24333))))

(declare-fun b!7549306 () Bool)

(assert (=> b!7549306 (= e!4497085 e!4497084)))

(declare-fun res!3025867 () Bool)

(assert (=> b!7549306 (=> res!3025867 e!4497084)))

(assert (=> b!7549306 (= res!3025867 (not (= lt!2646373 input!7874)))))

(assert (=> b!7549306 (= lt!2646373 (++!17459 (++!17459 testedP!423 lt!2646370) lt!2646367))))

(declare-fun b!7549307 () Bool)

(declare-fun res!3025872 () Bool)

(assert (=> b!7549307 (=> res!3025872 e!4497087)))

(declare-fun lostCause!1735 (Regex!19943) Bool)

(assert (=> b!7549307 (= res!3025872 (lostCause!1735 r!24333))))

(assert (= (and start!729960 res!3025863) b!7549305))

(assert (= (and b!7549305 res!3025869) b!7549299))

(assert (= (and b!7549299 res!3025870) b!7549303))

(assert (= (and b!7549303 res!3025865) b!7549282))

(assert (= (and b!7549282 res!3025866) b!7549304))

(assert (= (and b!7549304 res!3025871) b!7549292))

(assert (= (and b!7549292 (not res!3025861)) b!7549287))

(assert (= (and b!7549287 (not res!3025873)) b!7549307))

(assert (= (and b!7549307 (not res!3025872)) b!7549283))

(assert (= (and b!7549283 (not res!3025874)) b!7549294))

(assert (= (and b!7549294 (not res!3025864)) b!7549285))

(assert (= (and b!7549285 (not res!3025860)) b!7549306))

(assert (= (and b!7549306 (not res!3025867)) b!7549301))

(assert (= (and b!7549301 (not res!3025862)) b!7549296))

(assert (= (and b!7549296 (not res!3025868)) b!7549290))

(get-info :version)

(assert (= (and start!729960 ((_ is ElementMatch!19943) baseR!101)) b!7549289))

(assert (= (and start!729960 ((_ is Concat!28788) baseR!101)) b!7549286))

(assert (= (and start!729960 ((_ is Star!19943) baseR!101)) b!7549284))

(assert (= (and start!729960 ((_ is Union!19943) baseR!101)) b!7549295))

(assert (= (and start!729960 ((_ is Cons!72702) input!7874)) b!7549297))

(assert (= (and start!729960 ((_ is Cons!72702) knownP!30)) b!7549298))

(assert (= (and start!729960 ((_ is Cons!72702) testedP!423)) b!7549291))

(assert (= (and start!729960 ((_ is ElementMatch!19943) r!24333)) b!7549302))

(assert (= (and start!729960 ((_ is Concat!28788) r!24333)) b!7549293))

(assert (= (and start!729960 ((_ is Star!19943) r!24333)) b!7549288))

(assert (= (and start!729960 ((_ is Union!19943) r!24333)) b!7549300))

(declare-fun m!8116632 () Bool)

(assert (=> b!7549303 m!8116632))

(declare-fun m!8116634 () Bool)

(assert (=> b!7549292 m!8116634))

(declare-fun m!8116636 () Bool)

(assert (=> b!7549292 m!8116636))

(declare-fun m!8116638 () Bool)

(assert (=> b!7549292 m!8116638))

(declare-fun m!8116640 () Bool)

(assert (=> b!7549292 m!8116640))

(declare-fun m!8116642 () Bool)

(assert (=> b!7549307 m!8116642))

(declare-fun m!8116644 () Bool)

(assert (=> b!7549304 m!8116644))

(declare-fun m!8116646 () Bool)

(assert (=> b!7549290 m!8116646))

(declare-fun m!8116648 () Bool)

(assert (=> b!7549290 m!8116648))

(declare-fun m!8116650 () Bool)

(assert (=> b!7549285 m!8116650))

(declare-fun m!8116652 () Bool)

(assert (=> b!7549285 m!8116652))

(declare-fun m!8116654 () Bool)

(assert (=> b!7549285 m!8116654))

(declare-fun m!8116656 () Bool)

(assert (=> b!7549285 m!8116656))

(declare-fun m!8116658 () Bool)

(assert (=> b!7549285 m!8116658))

(declare-fun m!8116660 () Bool)

(assert (=> b!7549285 m!8116660))

(declare-fun m!8116662 () Bool)

(assert (=> b!7549285 m!8116662))

(declare-fun m!8116664 () Bool)

(assert (=> b!7549285 m!8116664))

(declare-fun m!8116666 () Bool)

(assert (=> b!7549285 m!8116666))

(declare-fun m!8116668 () Bool)

(assert (=> b!7549285 m!8116668))

(declare-fun m!8116670 () Bool)

(assert (=> b!7549285 m!8116670))

(declare-fun m!8116672 () Bool)

(assert (=> b!7549285 m!8116672))

(declare-fun m!8116674 () Bool)

(assert (=> b!7549285 m!8116674))

(declare-fun m!8116676 () Bool)

(assert (=> b!7549282 m!8116676))

(declare-fun m!8116678 () Bool)

(assert (=> b!7549282 m!8116678))

(declare-fun m!8116680 () Bool)

(assert (=> b!7549306 m!8116680))

(assert (=> b!7549306 m!8116680))

(declare-fun m!8116682 () Bool)

(assert (=> b!7549306 m!8116682))

(declare-fun m!8116684 () Bool)

(assert (=> b!7549296 m!8116684))

(declare-fun m!8116686 () Bool)

(assert (=> b!7549296 m!8116686))

(declare-fun m!8116688 () Bool)

(assert (=> b!7549296 m!8116688))

(declare-fun m!8116690 () Bool)

(assert (=> start!729960 m!8116690))

(declare-fun m!8116692 () Bool)

(assert (=> b!7549287 m!8116692))

(declare-fun m!8116694 () Bool)

(assert (=> b!7549299 m!8116694))

(declare-fun m!8116696 () Bool)

(assert (=> b!7549305 m!8116696))

(declare-fun m!8116698 () Bool)

(assert (=> b!7549301 m!8116698))

(declare-fun m!8116700 () Bool)

(assert (=> b!7549294 m!8116700))

(check-sat (not b!7549296) (not b!7549286) (not b!7549305) (not b!7549300) (not b!7549282) (not b!7549297) (not b!7549288) (not b!7549299) (not start!729960) (not b!7549303) (not b!7549295) (not b!7549307) tp_is_empty!50241 (not b!7549291) (not b!7549290) (not b!7549292) (not b!7549284) (not b!7549301) (not b!7549304) (not b!7549306) (not b!7549298) (not b!7549293) (not b!7549285) (not b!7549294) (not b!7549287))
(check-sat)
(get-model)

(declare-fun d!2312571 () Bool)

(declare-fun lt!2646383 () List!72826)

(assert (=> d!2312571 (= (++!17459 testedP!423 lt!2646383) input!7874)))

(declare-fun e!4497090 () List!72826)

(assert (=> d!2312571 (= lt!2646383 e!4497090)))

(declare-fun c!1393413 () Bool)

(assert (=> d!2312571 (= c!1393413 ((_ is Cons!72702) testedP!423))))

(assert (=> d!2312571 (>= (size!42439 input!7874) (size!42439 testedP!423))))

(assert (=> d!2312571 (= (getSuffix!3629 input!7874 testedP!423) lt!2646383)))

(declare-fun b!7549312 () Bool)

(declare-fun tail!15075 (List!72826) List!72826)

(assert (=> b!7549312 (= e!4497090 (getSuffix!3629 (tail!15075 input!7874) (t!387543 testedP!423)))))

(declare-fun b!7549313 () Bool)

(assert (=> b!7549313 (= e!4497090 input!7874)))

(assert (= (and d!2312571 c!1393413) b!7549312))

(assert (= (and d!2312571 (not c!1393413)) b!7549313))

(declare-fun m!8116702 () Bool)

(assert (=> d!2312571 m!8116702))

(assert (=> d!2312571 m!8116700))

(assert (=> d!2312571 m!8116676))

(declare-fun m!8116704 () Bool)

(assert (=> b!7549312 m!8116704))

(assert (=> b!7549312 m!8116704))

(declare-fun m!8116706 () Bool)

(assert (=> b!7549312 m!8116706))

(assert (=> b!7549285 d!2312571))

(declare-fun d!2312573 () Bool)

(declare-fun e!4497096 () Bool)

(assert (=> d!2312573 e!4497096))

(declare-fun res!3025880 () Bool)

(assert (=> d!2312573 (=> (not res!3025880) (not e!4497096))))

(declare-fun lt!2646386 () List!72826)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15386 (List!72826) (InoxSet C!40212))

(assert (=> d!2312573 (= res!3025880 (= (content!15386 lt!2646386) ((_ map or) (content!15386 knownP!30) (content!15386 lt!2646367))))))

(declare-fun e!4497095 () List!72826)

(assert (=> d!2312573 (= lt!2646386 e!4497095)))

(declare-fun c!1393416 () Bool)

(assert (=> d!2312573 (= c!1393416 ((_ is Nil!72702) knownP!30))))

(assert (=> d!2312573 (= (++!17459 knownP!30 lt!2646367) lt!2646386)))

(declare-fun b!7549324 () Bool)

(declare-fun res!3025879 () Bool)

(assert (=> b!7549324 (=> (not res!3025879) (not e!4497096))))

(assert (=> b!7549324 (= res!3025879 (= (size!42439 lt!2646386) (+ (size!42439 knownP!30) (size!42439 lt!2646367))))))

(declare-fun b!7549323 () Bool)

(assert (=> b!7549323 (= e!4497095 (Cons!72702 (h!79150 knownP!30) (++!17459 (t!387543 knownP!30) lt!2646367)))))

(declare-fun b!7549325 () Bool)

(assert (=> b!7549325 (= e!4497096 (or (not (= lt!2646367 Nil!72702)) (= lt!2646386 knownP!30)))))

(declare-fun b!7549322 () Bool)

(assert (=> b!7549322 (= e!4497095 lt!2646367)))

(assert (= (and d!2312573 c!1393416) b!7549322))

(assert (= (and d!2312573 (not c!1393416)) b!7549323))

(assert (= (and d!2312573 res!3025880) b!7549324))

(assert (= (and b!7549324 res!3025879) b!7549325))

(declare-fun m!8116708 () Bool)

(assert (=> d!2312573 m!8116708))

(declare-fun m!8116710 () Bool)

(assert (=> d!2312573 m!8116710))

(declare-fun m!8116712 () Bool)

(assert (=> d!2312573 m!8116712))

(declare-fun m!8116714 () Bool)

(assert (=> b!7549324 m!8116714))

(assert (=> b!7549324 m!8116678))

(declare-fun m!8116716 () Bool)

(assert (=> b!7549324 m!8116716))

(declare-fun m!8116718 () Bool)

(assert (=> b!7549323 m!8116718))

(assert (=> b!7549285 d!2312573))

(declare-fun b!7549352 () Bool)

(declare-fun e!4497116 () Bool)

(assert (=> b!7549352 (= e!4497116 (isPrefix!6149 (tail!15075 lt!2646379) (tail!15075 input!7874)))))

(declare-fun d!2312577 () Bool)

(declare-fun e!4497115 () Bool)

(assert (=> d!2312577 e!4497115))

(declare-fun res!3025903 () Bool)

(assert (=> d!2312577 (=> res!3025903 e!4497115)))

(declare-fun lt!2646394 () Bool)

(assert (=> d!2312577 (= res!3025903 (not lt!2646394))))

(declare-fun e!4497114 () Bool)

(assert (=> d!2312577 (= lt!2646394 e!4497114)))

(declare-fun res!3025904 () Bool)

(assert (=> d!2312577 (=> res!3025904 e!4497114)))

(assert (=> d!2312577 (= res!3025904 ((_ is Nil!72702) lt!2646379))))

(assert (=> d!2312577 (= (isPrefix!6149 lt!2646379 input!7874) lt!2646394)))

(declare-fun b!7549351 () Bool)

(declare-fun res!3025901 () Bool)

(assert (=> b!7549351 (=> (not res!3025901) (not e!4497116))))

(assert (=> b!7549351 (= res!3025901 (= (head!15533 lt!2646379) (head!15533 input!7874)))))

(declare-fun b!7549350 () Bool)

(assert (=> b!7549350 (= e!4497114 e!4497116)))

(declare-fun res!3025902 () Bool)

(assert (=> b!7549350 (=> (not res!3025902) (not e!4497116))))

(assert (=> b!7549350 (= res!3025902 (not ((_ is Nil!72702) input!7874)))))

(declare-fun b!7549353 () Bool)

(assert (=> b!7549353 (= e!4497115 (>= (size!42439 input!7874) (size!42439 lt!2646379)))))

(assert (= (and d!2312577 (not res!3025904)) b!7549350))

(assert (= (and b!7549350 res!3025902) b!7549351))

(assert (= (and b!7549351 res!3025901) b!7549352))

(assert (= (and d!2312577 (not res!3025903)) b!7549353))

(declare-fun m!8116730 () Bool)

(assert (=> b!7549352 m!8116730))

(assert (=> b!7549352 m!8116704))

(assert (=> b!7549352 m!8116730))

(assert (=> b!7549352 m!8116704))

(declare-fun m!8116732 () Bool)

(assert (=> b!7549352 m!8116732))

(declare-fun m!8116734 () Bool)

(assert (=> b!7549351 m!8116734))

(declare-fun m!8116736 () Bool)

(assert (=> b!7549351 m!8116736))

(assert (=> b!7549353 m!8116700))

(declare-fun m!8116738 () Bool)

(assert (=> b!7549353 m!8116738))

(assert (=> b!7549285 d!2312577))

(declare-fun d!2312581 () Bool)

(declare-fun lt!2646401 () Regex!19943)

(assert (=> d!2312581 (validRegex!10371 lt!2646401)))

(declare-fun e!4497156 () Regex!19943)

(assert (=> d!2312581 (= lt!2646401 e!4497156)))

(declare-fun c!1393440 () Bool)

(assert (=> d!2312581 (= c!1393440 (or ((_ is EmptyExpr!19943) r!24333) ((_ is EmptyLang!19943) r!24333)))))

(assert (=> d!2312581 (validRegex!10371 r!24333)))

(assert (=> d!2312581 (= (derivativeStep!5733 r!24333 lt!2646376) lt!2646401)))

(declare-fun b!7549424 () Bool)

(declare-fun e!4497153 () Regex!19943)

(declare-fun call!692241 () Regex!19943)

(assert (=> b!7549424 (= e!4497153 (Union!19943 (Concat!28788 call!692241 (regTwo!40398 r!24333)) EmptyLang!19943))))

(declare-fun b!7549425 () Bool)

(declare-fun c!1393441 () Bool)

(assert (=> b!7549425 (= c!1393441 ((_ is Union!19943) r!24333))))

(declare-fun e!4497154 () Regex!19943)

(declare-fun e!4497152 () Regex!19943)

(assert (=> b!7549425 (= e!4497154 e!4497152)))

(declare-fun b!7549426 () Bool)

(declare-fun e!4497155 () Regex!19943)

(declare-fun call!692240 () Regex!19943)

(assert (=> b!7549426 (= e!4497155 (Concat!28788 call!692240 r!24333))))

(declare-fun b!7549427 () Bool)

(assert (=> b!7549427 (= e!4497156 e!4497154)))

(declare-fun c!1393443 () Bool)

(assert (=> b!7549427 (= c!1393443 ((_ is ElementMatch!19943) r!24333))))

(declare-fun bm!692235 () Bool)

(declare-fun call!692243 () Regex!19943)

(assert (=> bm!692235 (= call!692240 call!692243)))

(declare-fun b!7549428 () Bool)

(declare-fun call!692242 () Regex!19943)

(assert (=> b!7549428 (= e!4497153 (Union!19943 (Concat!28788 call!692241 (regTwo!40398 r!24333)) call!692242))))

(declare-fun bm!692236 () Bool)

(assert (=> bm!692236 (= call!692241 call!692240)))

(declare-fun b!7549429 () Bool)

(declare-fun c!1393442 () Bool)

(declare-fun nullable!8699 (Regex!19943) Bool)

(assert (=> b!7549429 (= c!1393442 (nullable!8699 (regOne!40398 r!24333)))))

(assert (=> b!7549429 (= e!4497155 e!4497153)))

(declare-fun b!7549430 () Bool)

(assert (=> b!7549430 (= e!4497152 (Union!19943 call!692242 call!692243))))

(declare-fun b!7549431 () Bool)

(assert (=> b!7549431 (= e!4497156 EmptyLang!19943)))

(declare-fun b!7549432 () Bool)

(assert (=> b!7549432 (= e!4497152 e!4497155)))

(declare-fun c!1393439 () Bool)

(assert (=> b!7549432 (= c!1393439 ((_ is Star!19943) r!24333))))

(declare-fun bm!692237 () Bool)

(assert (=> bm!692237 (= call!692243 (derivativeStep!5733 (ite c!1393441 (regTwo!40399 r!24333) (ite c!1393439 (reg!20272 r!24333) (regOne!40398 r!24333))) lt!2646376))))

(declare-fun b!7549433 () Bool)

(assert (=> b!7549433 (= e!4497154 (ite (= lt!2646376 (c!1393410 r!24333)) EmptyExpr!19943 EmptyLang!19943))))

(declare-fun bm!692238 () Bool)

(assert (=> bm!692238 (= call!692242 (derivativeStep!5733 (ite c!1393441 (regOne!40399 r!24333) (regTwo!40398 r!24333)) lt!2646376))))

(assert (= (and d!2312581 c!1393440) b!7549431))

(assert (= (and d!2312581 (not c!1393440)) b!7549427))

(assert (= (and b!7549427 c!1393443) b!7549433))

(assert (= (and b!7549427 (not c!1393443)) b!7549425))

(assert (= (and b!7549425 c!1393441) b!7549430))

(assert (= (and b!7549425 (not c!1393441)) b!7549432))

(assert (= (and b!7549432 c!1393439) b!7549426))

(assert (= (and b!7549432 (not c!1393439)) b!7549429))

(assert (= (and b!7549429 c!1393442) b!7549428))

(assert (= (and b!7549429 (not c!1393442)) b!7549424))

(assert (= (or b!7549428 b!7549424) bm!692236))

(assert (= (or b!7549426 bm!692236) bm!692235))

(assert (= (or b!7549430 bm!692235) bm!692237))

(assert (= (or b!7549430 b!7549428) bm!692238))

(declare-fun m!8116764 () Bool)

(assert (=> d!2312581 m!8116764))

(assert (=> d!2312581 m!8116696))

(declare-fun m!8116766 () Bool)

(assert (=> b!7549429 m!8116766))

(declare-fun m!8116768 () Bool)

(assert (=> bm!692237 m!8116768))

(declare-fun m!8116770 () Bool)

(assert (=> bm!692238 m!8116770))

(assert (=> b!7549285 d!2312581))

(declare-fun d!2312587 () Bool)

(declare-fun lt!2646411 () Regex!19943)

(assert (=> d!2312587 (validRegex!10371 lt!2646411)))

(declare-fun e!4497165 () Regex!19943)

(assert (=> d!2312587 (= lt!2646411 e!4497165)))

(declare-fun c!1393449 () Bool)

(assert (=> d!2312587 (= c!1393449 ((_ is Cons!72702) lt!2646379))))

(assert (=> d!2312587 (validRegex!10371 baseR!101)))

(assert (=> d!2312587 (= (derivative!475 baseR!101 lt!2646379) lt!2646411)))

(declare-fun b!7549448 () Bool)

(assert (=> b!7549448 (= e!4497165 (derivative!475 (derivativeStep!5733 baseR!101 (h!79150 lt!2646379)) (t!387543 lt!2646379)))))

(declare-fun b!7549449 () Bool)

(assert (=> b!7549449 (= e!4497165 baseR!101)))

(assert (= (and d!2312587 c!1393449) b!7549448))

(assert (= (and d!2312587 (not c!1393449)) b!7549449))

(declare-fun m!8116784 () Bool)

(assert (=> d!2312587 m!8116784))

(assert (=> d!2312587 m!8116690))

(declare-fun m!8116786 () Bool)

(assert (=> b!7549448 m!8116786))

(assert (=> b!7549448 m!8116786))

(declare-fun m!8116788 () Bool)

(assert (=> b!7549448 m!8116788))

(assert (=> b!7549285 d!2312587))

(declare-fun d!2312595 () Bool)

(declare-fun lt!2646412 () List!72826)

(assert (=> d!2312595 (= (++!17459 knownP!30 lt!2646412) input!7874)))

(declare-fun e!4497166 () List!72826)

(assert (=> d!2312595 (= lt!2646412 e!4497166)))

(declare-fun c!1393450 () Bool)

(assert (=> d!2312595 (= c!1393450 ((_ is Cons!72702) knownP!30))))

(assert (=> d!2312595 (>= (size!42439 input!7874) (size!42439 knownP!30))))

(assert (=> d!2312595 (= (getSuffix!3629 input!7874 knownP!30) lt!2646412)))

(declare-fun b!7549450 () Bool)

(assert (=> b!7549450 (= e!4497166 (getSuffix!3629 (tail!15075 input!7874) (t!387543 knownP!30)))))

(declare-fun b!7549451 () Bool)

(assert (=> b!7549451 (= e!4497166 input!7874)))

(assert (= (and d!2312595 c!1393450) b!7549450))

(assert (= (and d!2312595 (not c!1393450)) b!7549451))

(declare-fun m!8116790 () Bool)

(assert (=> d!2312595 m!8116790))

(assert (=> d!2312595 m!8116700))

(assert (=> d!2312595 m!8116678))

(assert (=> b!7549450 m!8116704))

(assert (=> b!7549450 m!8116704))

(declare-fun m!8116792 () Bool)

(assert (=> b!7549450 m!8116792))

(assert (=> b!7549285 d!2312595))

(declare-fun d!2312597 () Bool)

(declare-fun e!4497168 () Bool)

(assert (=> d!2312597 e!4497168))

(declare-fun res!3025940 () Bool)

(assert (=> d!2312597 (=> (not res!3025940) (not e!4497168))))

(declare-fun lt!2646413 () List!72826)

(assert (=> d!2312597 (= res!3025940 (= (content!15386 lt!2646413) ((_ map or) (content!15386 testedP!423) (content!15386 (Cons!72702 lt!2646376 Nil!72702)))))))

(declare-fun e!4497167 () List!72826)

(assert (=> d!2312597 (= lt!2646413 e!4497167)))

(declare-fun c!1393451 () Bool)

(assert (=> d!2312597 (= c!1393451 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312597 (= (++!17459 testedP!423 (Cons!72702 lt!2646376 Nil!72702)) lt!2646413)))

(declare-fun b!7549454 () Bool)

(declare-fun res!3025939 () Bool)

(assert (=> b!7549454 (=> (not res!3025939) (not e!4497168))))

(assert (=> b!7549454 (= res!3025939 (= (size!42439 lt!2646413) (+ (size!42439 testedP!423) (size!42439 (Cons!72702 lt!2646376 Nil!72702)))))))

(declare-fun b!7549453 () Bool)

(assert (=> b!7549453 (= e!4497167 (Cons!72702 (h!79150 testedP!423) (++!17459 (t!387543 testedP!423) (Cons!72702 lt!2646376 Nil!72702))))))

(declare-fun b!7549455 () Bool)

(assert (=> b!7549455 (= e!4497168 (or (not (= (Cons!72702 lt!2646376 Nil!72702) Nil!72702)) (= lt!2646413 testedP!423)))))

(declare-fun b!7549452 () Bool)

(assert (=> b!7549452 (= e!4497167 (Cons!72702 lt!2646376 Nil!72702))))

(assert (= (and d!2312597 c!1393451) b!7549452))

(assert (= (and d!2312597 (not c!1393451)) b!7549453))

(assert (= (and d!2312597 res!3025940) b!7549454))

(assert (= (and b!7549454 res!3025939) b!7549455))

(declare-fun m!8116794 () Bool)

(assert (=> d!2312597 m!8116794))

(declare-fun m!8116796 () Bool)

(assert (=> d!2312597 m!8116796))

(declare-fun m!8116798 () Bool)

(assert (=> d!2312597 m!8116798))

(declare-fun m!8116800 () Bool)

(assert (=> b!7549454 m!8116800))

(assert (=> b!7549454 m!8116676))

(declare-fun m!8116802 () Bool)

(assert (=> b!7549454 m!8116802))

(declare-fun m!8116804 () Bool)

(assert (=> b!7549453 m!8116804))

(assert (=> b!7549285 d!2312597))

(declare-fun d!2312599 () Bool)

(assert (=> d!2312599 (= (head!15533 lt!2646366) (h!79150 lt!2646366))))

(assert (=> b!7549285 d!2312599))

(declare-fun d!2312601 () Bool)

(assert (=> d!2312601 (= (derivative!475 baseR!101 (++!17459 testedP!423 (Cons!72702 lt!2646376 Nil!72702))) (derivativeStep!5733 r!24333 lt!2646376))))

(declare-fun lt!2646417 () Unit!166824)

(declare-fun choose!58418 (Regex!19943 Regex!19943 List!72826 C!40212) Unit!166824)

(assert (=> d!2312601 (= lt!2646417 (choose!58418 baseR!101 r!24333 testedP!423 lt!2646376))))

(assert (=> d!2312601 (validRegex!10371 baseR!101)))

(assert (=> d!2312601 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!177 baseR!101 r!24333 testedP!423 lt!2646376) lt!2646417)))

(declare-fun bs!1940160 () Bool)

(assert (= bs!1940160 d!2312601))

(assert (=> bs!1940160 m!8116672))

(assert (=> bs!1940160 m!8116672))

(declare-fun m!8116822 () Bool)

(assert (=> bs!1940160 m!8116822))

(assert (=> bs!1940160 m!8116670))

(declare-fun m!8116824 () Bool)

(assert (=> bs!1940160 m!8116824))

(assert (=> bs!1940160 m!8116690))

(assert (=> b!7549285 d!2312601))

(declare-fun d!2312607 () Bool)

(assert (=> d!2312607 (isPrefix!6149 (++!17459 testedP!423 (Cons!72702 (head!15533 (getSuffix!3629 input!7874 testedP!423)) Nil!72702)) input!7874)))

(declare-fun lt!2646428 () Unit!166824)

(declare-fun choose!58419 (List!72826 List!72826) Unit!166824)

(assert (=> d!2312607 (= lt!2646428 (choose!58419 testedP!423 input!7874))))

(assert (=> d!2312607 (isPrefix!6149 testedP!423 input!7874)))

(assert (=> d!2312607 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1210 testedP!423 input!7874) lt!2646428)))

(declare-fun bs!1940161 () Bool)

(assert (= bs!1940161 d!2312607))

(declare-fun m!8116848 () Bool)

(assert (=> bs!1940161 m!8116848))

(declare-fun m!8116850 () Bool)

(assert (=> bs!1940161 m!8116850))

(assert (=> bs!1940161 m!8116662))

(declare-fun m!8116852 () Bool)

(assert (=> bs!1940161 m!8116852))

(assert (=> bs!1940161 m!8116662))

(assert (=> bs!1940161 m!8116694))

(assert (=> bs!1940161 m!8116850))

(declare-fun m!8116854 () Bool)

(assert (=> bs!1940161 m!8116854))

(assert (=> b!7549285 d!2312607))

(declare-fun d!2312621 () Bool)

(assert (=> d!2312621 (isPrefix!6149 lt!2646379 knownP!30)))

(declare-fun lt!2646431 () Unit!166824)

(declare-fun choose!58421 (List!72826 List!72826 List!72826) Unit!166824)

(assert (=> d!2312621 (= lt!2646431 (choose!58421 knownP!30 lt!2646379 input!7874))))

(assert (=> d!2312621 (isPrefix!6149 knownP!30 input!7874)))

(assert (=> d!2312621 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!899 knownP!30 lt!2646379 input!7874) lt!2646431)))

(declare-fun bs!1940162 () Bool)

(assert (= bs!1940162 d!2312621))

(assert (=> bs!1940162 m!8116668))

(declare-fun m!8116856 () Bool)

(assert (=> bs!1940162 m!8116856))

(assert (=> bs!1940162 m!8116632))

(assert (=> b!7549285 d!2312621))

(declare-fun b!7549519 () Bool)

(declare-fun e!4497211 () Bool)

(assert (=> b!7549519 (= e!4497211 (isPrefix!6149 (tail!15075 lt!2646379) (tail!15075 knownP!30)))))

(declare-fun d!2312623 () Bool)

(declare-fun e!4497210 () Bool)

(assert (=> d!2312623 e!4497210))

(declare-fun res!3025974 () Bool)

(assert (=> d!2312623 (=> res!3025974 e!4497210)))

(declare-fun lt!2646432 () Bool)

(assert (=> d!2312623 (= res!3025974 (not lt!2646432))))

(declare-fun e!4497209 () Bool)

(assert (=> d!2312623 (= lt!2646432 e!4497209)))

(declare-fun res!3025975 () Bool)

(assert (=> d!2312623 (=> res!3025975 e!4497209)))

(assert (=> d!2312623 (= res!3025975 ((_ is Nil!72702) lt!2646379))))

(assert (=> d!2312623 (= (isPrefix!6149 lt!2646379 knownP!30) lt!2646432)))

(declare-fun b!7549518 () Bool)

(declare-fun res!3025972 () Bool)

(assert (=> b!7549518 (=> (not res!3025972) (not e!4497211))))

(assert (=> b!7549518 (= res!3025972 (= (head!15533 lt!2646379) (head!15533 knownP!30)))))

(declare-fun b!7549517 () Bool)

(assert (=> b!7549517 (= e!4497209 e!4497211)))

(declare-fun res!3025973 () Bool)

(assert (=> b!7549517 (=> (not res!3025973) (not e!4497211))))

(assert (=> b!7549517 (= res!3025973 (not ((_ is Nil!72702) knownP!30)))))

(declare-fun b!7549520 () Bool)

(assert (=> b!7549520 (= e!4497210 (>= (size!42439 knownP!30) (size!42439 lt!2646379)))))

(assert (= (and d!2312623 (not res!3025975)) b!7549517))

(assert (= (and b!7549517 res!3025973) b!7549518))

(assert (= (and b!7549518 res!3025972) b!7549519))

(assert (= (and d!2312623 (not res!3025974)) b!7549520))

(assert (=> b!7549519 m!8116730))

(declare-fun m!8116858 () Bool)

(assert (=> b!7549519 m!8116858))

(assert (=> b!7549519 m!8116730))

(assert (=> b!7549519 m!8116858))

(declare-fun m!8116860 () Bool)

(assert (=> b!7549519 m!8116860))

(assert (=> b!7549518 m!8116734))

(declare-fun m!8116862 () Bool)

(assert (=> b!7549518 m!8116862))

(assert (=> b!7549520 m!8116678))

(assert (=> b!7549520 m!8116738))

(assert (=> b!7549285 d!2312623))

(declare-fun d!2312625 () Bool)

(declare-fun lt!2646433 () List!72826)

(assert (=> d!2312625 (= (++!17459 lt!2646379 lt!2646433) knownP!30)))

(declare-fun e!4497212 () List!72826)

(assert (=> d!2312625 (= lt!2646433 e!4497212)))

(declare-fun c!1393468 () Bool)

(assert (=> d!2312625 (= c!1393468 ((_ is Cons!72702) lt!2646379))))

(assert (=> d!2312625 (>= (size!42439 knownP!30) (size!42439 lt!2646379))))

(assert (=> d!2312625 (= (getSuffix!3629 knownP!30 lt!2646379) lt!2646433)))

(declare-fun b!7549521 () Bool)

(assert (=> b!7549521 (= e!4497212 (getSuffix!3629 (tail!15075 knownP!30) (t!387543 lt!2646379)))))

(declare-fun b!7549522 () Bool)

(assert (=> b!7549522 (= e!4497212 knownP!30)))

(assert (= (and d!2312625 c!1393468) b!7549521))

(assert (= (and d!2312625 (not c!1393468)) b!7549522))

(declare-fun m!8116864 () Bool)

(assert (=> d!2312625 m!8116864))

(assert (=> d!2312625 m!8116678))

(assert (=> d!2312625 m!8116738))

(assert (=> b!7549521 m!8116858))

(assert (=> b!7549521 m!8116858))

(declare-fun m!8116866 () Bool)

(assert (=> b!7549521 m!8116866))

(assert (=> b!7549285 d!2312625))

(declare-fun d!2312627 () Bool)

(declare-fun e!4497220 () Bool)

(assert (=> d!2312627 e!4497220))

(declare-fun res!3025977 () Bool)

(assert (=> d!2312627 (=> (not res!3025977) (not e!4497220))))

(declare-fun lt!2646436 () List!72826)

(assert (=> d!2312627 (= res!3025977 (= (content!15386 lt!2646436) ((_ map or) (content!15386 (++!17459 testedP!423 lt!2646370)) (content!15386 lt!2646367))))))

(declare-fun e!4497219 () List!72826)

(assert (=> d!2312627 (= lt!2646436 e!4497219)))

(declare-fun c!1393475 () Bool)

(assert (=> d!2312627 (= c!1393475 ((_ is Nil!72702) (++!17459 testedP!423 lt!2646370)))))

(assert (=> d!2312627 (= (++!17459 (++!17459 testedP!423 lt!2646370) lt!2646367) lt!2646436)))

(declare-fun b!7549541 () Bool)

(declare-fun res!3025976 () Bool)

(assert (=> b!7549541 (=> (not res!3025976) (not e!4497220))))

(assert (=> b!7549541 (= res!3025976 (= (size!42439 lt!2646436) (+ (size!42439 (++!17459 testedP!423 lt!2646370)) (size!42439 lt!2646367))))))

(declare-fun b!7549539 () Bool)

(assert (=> b!7549539 (= e!4497219 (Cons!72702 (h!79150 (++!17459 testedP!423 lt!2646370)) (++!17459 (t!387543 (++!17459 testedP!423 lt!2646370)) lt!2646367)))))

(declare-fun b!7549542 () Bool)

(assert (=> b!7549542 (= e!4497220 (or (not (= lt!2646367 Nil!72702)) (= lt!2646436 (++!17459 testedP!423 lt!2646370))))))

(declare-fun b!7549535 () Bool)

(assert (=> b!7549535 (= e!4497219 lt!2646367)))

(assert (= (and d!2312627 c!1393475) b!7549535))

(assert (= (and d!2312627 (not c!1393475)) b!7549539))

(assert (= (and d!2312627 res!3025977) b!7549541))

(assert (= (and b!7549541 res!3025976) b!7549542))

(declare-fun m!8116868 () Bool)

(assert (=> d!2312627 m!8116868))

(assert (=> d!2312627 m!8116680))

(declare-fun m!8116870 () Bool)

(assert (=> d!2312627 m!8116870))

(assert (=> d!2312627 m!8116712))

(declare-fun m!8116872 () Bool)

(assert (=> b!7549541 m!8116872))

(assert (=> b!7549541 m!8116680))

(declare-fun m!8116874 () Bool)

(assert (=> b!7549541 m!8116874))

(assert (=> b!7549541 m!8116716))

(declare-fun m!8116876 () Bool)

(assert (=> b!7549539 m!8116876))

(assert (=> b!7549306 d!2312627))

(declare-fun d!2312629 () Bool)

(declare-fun e!4497226 () Bool)

(assert (=> d!2312629 e!4497226))

(declare-fun res!3025979 () Bool)

(assert (=> d!2312629 (=> (not res!3025979) (not e!4497226))))

(declare-fun lt!2646437 () List!72826)

(assert (=> d!2312629 (= res!3025979 (= (content!15386 lt!2646437) ((_ map or) (content!15386 testedP!423) (content!15386 lt!2646370))))))

(declare-fun e!4497225 () List!72826)

(assert (=> d!2312629 (= lt!2646437 e!4497225)))

(declare-fun c!1393480 () Bool)

(assert (=> d!2312629 (= c!1393480 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312629 (= (++!17459 testedP!423 lt!2646370) lt!2646437)))

(declare-fun b!7549549 () Bool)

(declare-fun res!3025978 () Bool)

(assert (=> b!7549549 (=> (not res!3025978) (not e!4497226))))

(assert (=> b!7549549 (= res!3025978 (= (size!42439 lt!2646437) (+ (size!42439 testedP!423) (size!42439 lt!2646370))))))

(declare-fun b!7549548 () Bool)

(assert (=> b!7549548 (= e!4497225 (Cons!72702 (h!79150 testedP!423) (++!17459 (t!387543 testedP!423) lt!2646370)))))

(declare-fun b!7549550 () Bool)

(assert (=> b!7549550 (= e!4497226 (or (not (= lt!2646370 Nil!72702)) (= lt!2646437 testedP!423)))))

(declare-fun b!7549547 () Bool)

(assert (=> b!7549547 (= e!4497225 lt!2646370)))

(assert (= (and d!2312629 c!1393480) b!7549547))

(assert (= (and d!2312629 (not c!1393480)) b!7549548))

(assert (= (and d!2312629 res!3025979) b!7549549))

(assert (= (and b!7549549 res!3025978) b!7549550))

(declare-fun m!8116878 () Bool)

(assert (=> d!2312629 m!8116878))

(assert (=> d!2312629 m!8116796))

(declare-fun m!8116880 () Bool)

(assert (=> d!2312629 m!8116880))

(declare-fun m!8116882 () Bool)

(assert (=> b!7549549 m!8116882))

(assert (=> b!7549549 m!8116676))

(declare-fun m!8116884 () Bool)

(assert (=> b!7549549 m!8116884))

(declare-fun m!8116886 () Bool)

(assert (=> b!7549548 m!8116886))

(assert (=> b!7549306 d!2312629))

(declare-fun b!7549591 () Bool)

(declare-fun e!4497252 () Bool)

(declare-fun e!4497253 () Bool)

(assert (=> b!7549591 (= e!4497252 e!4497253)))

(declare-fun res!3025992 () Bool)

(assert (=> b!7549591 (=> (not res!3025992) (not e!4497253))))

(declare-fun call!692272 () Bool)

(assert (=> b!7549591 (= res!3025992 call!692272)))

(declare-fun b!7549592 () Bool)

(declare-fun e!4497256 () Bool)

(declare-fun e!4497258 () Bool)

(assert (=> b!7549592 (= e!4497256 e!4497258)))

(declare-fun res!3025990 () Bool)

(assert (=> b!7549592 (= res!3025990 (not (nullable!8699 (reg!20272 r!24333))))))

(assert (=> b!7549592 (=> (not res!3025990) (not e!4497258))))

(declare-fun b!7549593 () Bool)

(declare-fun e!4497254 () Bool)

(declare-fun call!692273 () Bool)

(assert (=> b!7549593 (= e!4497254 call!692273)))

(declare-fun bm!692267 () Bool)

(declare-fun c!1393497 () Bool)

(assert (=> bm!692267 (= call!692272 (validRegex!10371 (ite c!1393497 (regOne!40399 r!24333) (regOne!40398 r!24333))))))

(declare-fun b!7549594 () Bool)

(declare-fun call!692274 () Bool)

(assert (=> b!7549594 (= e!4497258 call!692274)))

(declare-fun b!7549595 () Bool)

(declare-fun e!4497255 () Bool)

(assert (=> b!7549595 (= e!4497255 e!4497256)))

(declare-fun c!1393495 () Bool)

(assert (=> b!7549595 (= c!1393495 ((_ is Star!19943) r!24333))))

(declare-fun b!7549596 () Bool)

(declare-fun res!3025993 () Bool)

(assert (=> b!7549596 (=> res!3025993 e!4497252)))

(assert (=> b!7549596 (= res!3025993 (not ((_ is Concat!28788) r!24333)))))

(declare-fun e!4497257 () Bool)

(assert (=> b!7549596 (= e!4497257 e!4497252)))

(declare-fun b!7549597 () Bool)

(assert (=> b!7549597 (= e!4497256 e!4497257)))

(assert (=> b!7549597 (= c!1393497 ((_ is Union!19943) r!24333))))

(declare-fun d!2312631 () Bool)

(declare-fun res!3025996 () Bool)

(assert (=> d!2312631 (=> res!3025996 e!4497255)))

(assert (=> d!2312631 (= res!3025996 ((_ is ElementMatch!19943) r!24333))))

(assert (=> d!2312631 (= (validRegex!10371 r!24333) e!4497255)))

(declare-fun bm!692268 () Bool)

(assert (=> bm!692268 (= call!692274 (validRegex!10371 (ite c!1393495 (reg!20272 r!24333) (ite c!1393497 (regTwo!40399 r!24333) (regTwo!40398 r!24333)))))))

(declare-fun b!7549598 () Bool)

(assert (=> b!7549598 (= e!4497253 call!692273)))

(declare-fun bm!692269 () Bool)

(assert (=> bm!692269 (= call!692273 call!692274)))

(declare-fun b!7549599 () Bool)

(declare-fun res!3025995 () Bool)

(assert (=> b!7549599 (=> (not res!3025995) (not e!4497254))))

(assert (=> b!7549599 (= res!3025995 call!692272)))

(assert (=> b!7549599 (= e!4497257 e!4497254)))

(assert (= (and d!2312631 (not res!3025996)) b!7549595))

(assert (= (and b!7549595 c!1393495) b!7549592))

(assert (= (and b!7549595 (not c!1393495)) b!7549597))

(assert (= (and b!7549592 res!3025990) b!7549594))

(assert (= (and b!7549597 c!1393497) b!7549599))

(assert (= (and b!7549597 (not c!1393497)) b!7549596))

(assert (= (and b!7549599 res!3025995) b!7549593))

(assert (= (and b!7549596 (not res!3025993)) b!7549591))

(assert (= (and b!7549591 res!3025992) b!7549598))

(assert (= (or b!7549599 b!7549591) bm!692267))

(assert (= (or b!7549593 b!7549598) bm!692269))

(assert (= (or b!7549594 bm!692269) bm!692268))

(declare-fun m!8116942 () Bool)

(assert (=> b!7549592 m!8116942))

(declare-fun m!8116944 () Bool)

(assert (=> bm!692267 m!8116944))

(declare-fun m!8116948 () Bool)

(assert (=> bm!692268 m!8116948))

(assert (=> b!7549305 d!2312631))

(declare-fun d!2312655 () Bool)

(declare-fun lt!2646462 () Int)

(assert (=> d!2312655 (>= lt!2646462 0)))

(declare-fun e!4497274 () Int)

(assert (=> d!2312655 (= lt!2646462 e!4497274)))

(declare-fun c!1393505 () Bool)

(assert (=> d!2312655 (= c!1393505 ((_ is Nil!72702) input!7874))))

(assert (=> d!2312655 (= (size!42439 input!7874) lt!2646462)))

(declare-fun b!7549628 () Bool)

(assert (=> b!7549628 (= e!4497274 0)))

(declare-fun b!7549629 () Bool)

(assert (=> b!7549629 (= e!4497274 (+ 1 (size!42439 (t!387543 input!7874))))))

(assert (= (and d!2312655 c!1393505) b!7549628))

(assert (= (and d!2312655 (not c!1393505)) b!7549629))

(declare-fun m!8116988 () Bool)

(assert (=> b!7549629 m!8116988))

(assert (=> b!7549294 d!2312655))

(declare-fun b!7549728 () Bool)

(declare-fun e!4497315 () Bool)

(declare-fun e!4497319 () Bool)

(assert (=> b!7549728 (= e!4497315 e!4497319)))

(declare-fun res!3026035 () Bool)

(assert (=> b!7549728 (=> (not res!3026035) (not e!4497319))))

(declare-fun lt!2646470 () Bool)

(assert (=> b!7549728 (= res!3026035 (not lt!2646470))))

(declare-fun b!7549729 () Bool)

(declare-fun e!4497321 () Bool)

(assert (=> b!7549729 (= e!4497319 e!4497321)))

(declare-fun res!3026034 () Bool)

(assert (=> b!7549729 (=> res!3026034 e!4497321)))

(declare-fun call!692280 () Bool)

(assert (=> b!7549729 (= res!3026034 call!692280)))

(declare-fun b!7549730 () Bool)

(declare-fun e!4497317 () Bool)

(assert (=> b!7549730 (= e!4497317 (matchR!9545 (derivativeStep!5733 baseR!101 (head!15533 knownP!30)) (tail!15075 knownP!30)))))

(declare-fun b!7549731 () Bool)

(assert (=> b!7549731 (= e!4497321 (not (= (head!15533 knownP!30) (c!1393410 baseR!101))))))

(declare-fun b!7549732 () Bool)

(assert (=> b!7549732 (= e!4497317 (nullable!8699 baseR!101))))

(declare-fun b!7549733 () Bool)

(declare-fun res!3026037 () Bool)

(assert (=> b!7549733 (=> res!3026037 e!4497315)))

(assert (=> b!7549733 (= res!3026037 (not ((_ is ElementMatch!19943) baseR!101)))))

(declare-fun e!4497316 () Bool)

(assert (=> b!7549733 (= e!4497316 e!4497315)))

(declare-fun d!2312667 () Bool)

(declare-fun e!4497320 () Bool)

(assert (=> d!2312667 e!4497320))

(declare-fun c!1393516 () Bool)

(assert (=> d!2312667 (= c!1393516 ((_ is EmptyExpr!19943) baseR!101))))

(assert (=> d!2312667 (= lt!2646470 e!4497317)))

(declare-fun c!1393518 () Bool)

(declare-fun isEmpty!41395 (List!72826) Bool)

(assert (=> d!2312667 (= c!1393518 (isEmpty!41395 knownP!30))))

(assert (=> d!2312667 (validRegex!10371 baseR!101)))

(assert (=> d!2312667 (= (matchR!9545 baseR!101 knownP!30) lt!2646470)))

(declare-fun b!7549734 () Bool)

(assert (=> b!7549734 (= e!4497320 e!4497316)))

(declare-fun c!1393517 () Bool)

(assert (=> b!7549734 (= c!1393517 ((_ is EmptyLang!19943) baseR!101))))

(declare-fun bm!692275 () Bool)

(assert (=> bm!692275 (= call!692280 (isEmpty!41395 knownP!30))))

(declare-fun b!7549735 () Bool)

(declare-fun res!3026032 () Bool)

(assert (=> b!7549735 (=> res!3026032 e!4497315)))

(declare-fun e!4497318 () Bool)

(assert (=> b!7549735 (= res!3026032 e!4497318)))

(declare-fun res!3026033 () Bool)

(assert (=> b!7549735 (=> (not res!3026033) (not e!4497318))))

(assert (=> b!7549735 (= res!3026033 lt!2646470)))

(declare-fun b!7549736 () Bool)

(assert (=> b!7549736 (= e!4497318 (= (head!15533 knownP!30) (c!1393410 baseR!101)))))

(declare-fun b!7549737 () Bool)

(declare-fun res!3026036 () Bool)

(assert (=> b!7549737 (=> (not res!3026036) (not e!4497318))))

(assert (=> b!7549737 (= res!3026036 (isEmpty!41395 (tail!15075 knownP!30)))))

(declare-fun b!7549738 () Bool)

(assert (=> b!7549738 (= e!4497320 (= lt!2646470 call!692280))))

(declare-fun b!7549739 () Bool)

(declare-fun res!3026038 () Bool)

(assert (=> b!7549739 (=> res!3026038 e!4497321)))

(assert (=> b!7549739 (= res!3026038 (not (isEmpty!41395 (tail!15075 knownP!30))))))

(declare-fun b!7549740 () Bool)

(declare-fun res!3026039 () Bool)

(assert (=> b!7549740 (=> (not res!3026039) (not e!4497318))))

(assert (=> b!7549740 (= res!3026039 (not call!692280))))

(declare-fun b!7549741 () Bool)

(assert (=> b!7549741 (= e!4497316 (not lt!2646470))))

(assert (= (and d!2312667 c!1393518) b!7549732))

(assert (= (and d!2312667 (not c!1393518)) b!7549730))

(assert (= (and d!2312667 c!1393516) b!7549738))

(assert (= (and d!2312667 (not c!1393516)) b!7549734))

(assert (= (and b!7549734 c!1393517) b!7549741))

(assert (= (and b!7549734 (not c!1393517)) b!7549733))

(assert (= (and b!7549733 (not res!3026037)) b!7549735))

(assert (= (and b!7549735 res!3026033) b!7549740))

(assert (= (and b!7549740 res!3026039) b!7549737))

(assert (= (and b!7549737 res!3026036) b!7549736))

(assert (= (and b!7549735 (not res!3026032)) b!7549728))

(assert (= (and b!7549728 res!3026035) b!7549729))

(assert (= (and b!7549729 (not res!3026034)) b!7549739))

(assert (= (and b!7549739 (not res!3026038)) b!7549731))

(assert (= (or b!7549738 b!7549729 b!7549740) bm!692275))

(assert (=> b!7549737 m!8116858))

(assert (=> b!7549737 m!8116858))

(declare-fun m!8117010 () Bool)

(assert (=> b!7549737 m!8117010))

(assert (=> b!7549739 m!8116858))

(assert (=> b!7549739 m!8116858))

(assert (=> b!7549739 m!8117010))

(declare-fun m!8117012 () Bool)

(assert (=> b!7549732 m!8117012))

(assert (=> b!7549731 m!8116862))

(declare-fun m!8117014 () Bool)

(assert (=> d!2312667 m!8117014))

(assert (=> d!2312667 m!8116690))

(assert (=> b!7549736 m!8116862))

(assert (=> b!7549730 m!8116862))

(assert (=> b!7549730 m!8116862))

(declare-fun m!8117016 () Bool)

(assert (=> b!7549730 m!8117016))

(assert (=> b!7549730 m!8116858))

(assert (=> b!7549730 m!8117016))

(assert (=> b!7549730 m!8116858))

(declare-fun m!8117018 () Bool)

(assert (=> b!7549730 m!8117018))

(assert (=> bm!692275 m!8117014))

(assert (=> b!7549304 d!2312667))

(declare-fun d!2312677 () Bool)

(declare-fun lt!2646471 () Int)

(assert (=> d!2312677 (>= lt!2646471 0)))

(declare-fun e!4497322 () Int)

(assert (=> d!2312677 (= lt!2646471 e!4497322)))

(declare-fun c!1393519 () Bool)

(assert (=> d!2312677 (= c!1393519 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312677 (= (size!42439 testedP!423) lt!2646471)))

(declare-fun b!7549742 () Bool)

(assert (=> b!7549742 (= e!4497322 0)))

(declare-fun b!7549743 () Bool)

(assert (=> b!7549743 (= e!4497322 (+ 1 (size!42439 (t!387543 testedP!423))))))

(assert (= (and d!2312677 c!1393519) b!7549742))

(assert (= (and d!2312677 (not c!1393519)) b!7549743))

(declare-fun m!8117020 () Bool)

(assert (=> b!7549743 m!8117020))

(assert (=> b!7549282 d!2312677))

(declare-fun d!2312679 () Bool)

(declare-fun lt!2646472 () Int)

(assert (=> d!2312679 (>= lt!2646472 0)))

(declare-fun e!4497323 () Int)

(assert (=> d!2312679 (= lt!2646472 e!4497323)))

(declare-fun c!1393520 () Bool)

(assert (=> d!2312679 (= c!1393520 ((_ is Nil!72702) knownP!30))))

(assert (=> d!2312679 (= (size!42439 knownP!30) lt!2646472)))

(declare-fun b!7549744 () Bool)

(assert (=> b!7549744 (= e!4497323 0)))

(declare-fun b!7549745 () Bool)

(assert (=> b!7549745 (= e!4497323 (+ 1 (size!42439 (t!387543 knownP!30))))))

(assert (= (and d!2312679 c!1393520) b!7549744))

(assert (= (and d!2312679 (not c!1393520)) b!7549745))

(declare-fun m!8117022 () Bool)

(assert (=> b!7549745 m!8117022))

(assert (=> b!7549282 d!2312679))

(declare-fun b!7549748 () Bool)

(declare-fun e!4497326 () Bool)

(assert (=> b!7549748 (= e!4497326 (isPrefix!6149 (tail!15075 knownP!30) (tail!15075 input!7874)))))

(declare-fun d!2312681 () Bool)

(declare-fun e!4497325 () Bool)

(assert (=> d!2312681 e!4497325))

(declare-fun res!3026042 () Bool)

(assert (=> d!2312681 (=> res!3026042 e!4497325)))

(declare-fun lt!2646473 () Bool)

(assert (=> d!2312681 (= res!3026042 (not lt!2646473))))

(declare-fun e!4497324 () Bool)

(assert (=> d!2312681 (= lt!2646473 e!4497324)))

(declare-fun res!3026043 () Bool)

(assert (=> d!2312681 (=> res!3026043 e!4497324)))

(assert (=> d!2312681 (= res!3026043 ((_ is Nil!72702) knownP!30))))

(assert (=> d!2312681 (= (isPrefix!6149 knownP!30 input!7874) lt!2646473)))

(declare-fun b!7549747 () Bool)

(declare-fun res!3026040 () Bool)

(assert (=> b!7549747 (=> (not res!3026040) (not e!4497326))))

(assert (=> b!7549747 (= res!3026040 (= (head!15533 knownP!30) (head!15533 input!7874)))))

(declare-fun b!7549746 () Bool)

(assert (=> b!7549746 (= e!4497324 e!4497326)))

(declare-fun res!3026041 () Bool)

(assert (=> b!7549746 (=> (not res!3026041) (not e!4497326))))

(assert (=> b!7549746 (= res!3026041 (not ((_ is Nil!72702) input!7874)))))

(declare-fun b!7549749 () Bool)

(assert (=> b!7549749 (= e!4497325 (>= (size!42439 input!7874) (size!42439 knownP!30)))))

(assert (= (and d!2312681 (not res!3026043)) b!7549746))

(assert (= (and b!7549746 res!3026041) b!7549747))

(assert (= (and b!7549747 res!3026040) b!7549748))

(assert (= (and d!2312681 (not res!3026042)) b!7549749))

(assert (=> b!7549748 m!8116858))

(assert (=> b!7549748 m!8116704))

(assert (=> b!7549748 m!8116858))

(assert (=> b!7549748 m!8116704))

(declare-fun m!8117024 () Bool)

(assert (=> b!7549748 m!8117024))

(assert (=> b!7549747 m!8116862))

(assert (=> b!7549747 m!8116736))

(assert (=> b!7549749 m!8116700))

(assert (=> b!7549749 m!8116678))

(assert (=> b!7549303 d!2312681))

(declare-fun b!7549750 () Bool)

(declare-fun e!4497327 () Bool)

(declare-fun e!4497331 () Bool)

(assert (=> b!7549750 (= e!4497327 e!4497331)))

(declare-fun res!3026047 () Bool)

(assert (=> b!7549750 (=> (not res!3026047) (not e!4497331))))

(declare-fun lt!2646474 () Bool)

(assert (=> b!7549750 (= res!3026047 (not lt!2646474))))

(declare-fun b!7549751 () Bool)

(declare-fun e!4497333 () Bool)

(assert (=> b!7549751 (= e!4497331 e!4497333)))

(declare-fun res!3026046 () Bool)

(assert (=> b!7549751 (=> res!3026046 e!4497333)))

(declare-fun call!692281 () Bool)

(assert (=> b!7549751 (= res!3026046 call!692281)))

(declare-fun b!7549752 () Bool)

(declare-fun e!4497329 () Bool)

(assert (=> b!7549752 (= e!4497329 (matchR!9545 (derivativeStep!5733 r!24333 (head!15533 lt!2646370)) (tail!15075 lt!2646370)))))

(declare-fun b!7549753 () Bool)

(assert (=> b!7549753 (= e!4497333 (not (= (head!15533 lt!2646370) (c!1393410 r!24333))))))

(declare-fun b!7549754 () Bool)

(assert (=> b!7549754 (= e!4497329 (nullable!8699 r!24333))))

(declare-fun b!7549755 () Bool)

(declare-fun res!3026049 () Bool)

(assert (=> b!7549755 (=> res!3026049 e!4497327)))

(assert (=> b!7549755 (= res!3026049 (not ((_ is ElementMatch!19943) r!24333)))))

(declare-fun e!4497328 () Bool)

(assert (=> b!7549755 (= e!4497328 e!4497327)))

(declare-fun d!2312683 () Bool)

(declare-fun e!4497332 () Bool)

(assert (=> d!2312683 e!4497332))

(declare-fun c!1393521 () Bool)

(assert (=> d!2312683 (= c!1393521 ((_ is EmptyExpr!19943) r!24333))))

(assert (=> d!2312683 (= lt!2646474 e!4497329)))

(declare-fun c!1393523 () Bool)

(assert (=> d!2312683 (= c!1393523 (isEmpty!41395 lt!2646370))))

(assert (=> d!2312683 (validRegex!10371 r!24333)))

(assert (=> d!2312683 (= (matchR!9545 r!24333 lt!2646370) lt!2646474)))

(declare-fun b!7549756 () Bool)

(assert (=> b!7549756 (= e!4497332 e!4497328)))

(declare-fun c!1393522 () Bool)

(assert (=> b!7549756 (= c!1393522 ((_ is EmptyLang!19943) r!24333))))

(declare-fun bm!692276 () Bool)

(assert (=> bm!692276 (= call!692281 (isEmpty!41395 lt!2646370))))

(declare-fun b!7549757 () Bool)

(declare-fun res!3026044 () Bool)

(assert (=> b!7549757 (=> res!3026044 e!4497327)))

(declare-fun e!4497330 () Bool)

(assert (=> b!7549757 (= res!3026044 e!4497330)))

(declare-fun res!3026045 () Bool)

(assert (=> b!7549757 (=> (not res!3026045) (not e!4497330))))

(assert (=> b!7549757 (= res!3026045 lt!2646474)))

(declare-fun b!7549758 () Bool)

(assert (=> b!7549758 (= e!4497330 (= (head!15533 lt!2646370) (c!1393410 r!24333)))))

(declare-fun b!7549759 () Bool)

(declare-fun res!3026048 () Bool)

(assert (=> b!7549759 (=> (not res!3026048) (not e!4497330))))

(assert (=> b!7549759 (= res!3026048 (isEmpty!41395 (tail!15075 lt!2646370)))))

(declare-fun b!7549760 () Bool)

(assert (=> b!7549760 (= e!4497332 (= lt!2646474 call!692281))))

(declare-fun b!7549761 () Bool)

(declare-fun res!3026050 () Bool)

(assert (=> b!7549761 (=> res!3026050 e!4497333)))

(assert (=> b!7549761 (= res!3026050 (not (isEmpty!41395 (tail!15075 lt!2646370))))))

(declare-fun b!7549762 () Bool)

(declare-fun res!3026051 () Bool)

(assert (=> b!7549762 (=> (not res!3026051) (not e!4497330))))

(assert (=> b!7549762 (= res!3026051 (not call!692281))))

(declare-fun b!7549763 () Bool)

(assert (=> b!7549763 (= e!4497328 (not lt!2646474))))

(assert (= (and d!2312683 c!1393523) b!7549754))

(assert (= (and d!2312683 (not c!1393523)) b!7549752))

(assert (= (and d!2312683 c!1393521) b!7549760))

(assert (= (and d!2312683 (not c!1393521)) b!7549756))

(assert (= (and b!7549756 c!1393522) b!7549763))

(assert (= (and b!7549756 (not c!1393522)) b!7549755))

(assert (= (and b!7549755 (not res!3026049)) b!7549757))

(assert (= (and b!7549757 res!3026045) b!7549762))

(assert (= (and b!7549762 res!3026051) b!7549759))

(assert (= (and b!7549759 res!3026048) b!7549758))

(assert (= (and b!7549757 (not res!3026044)) b!7549750))

(assert (= (and b!7549750 res!3026047) b!7549751))

(assert (= (and b!7549751 (not res!3026046)) b!7549761))

(assert (= (and b!7549761 (not res!3026050)) b!7549753))

(assert (= (or b!7549760 b!7549751 b!7549762) bm!692276))

(declare-fun m!8117026 () Bool)

(assert (=> b!7549759 m!8117026))

(assert (=> b!7549759 m!8117026))

(declare-fun m!8117028 () Bool)

(assert (=> b!7549759 m!8117028))

(assert (=> b!7549761 m!8117026))

(assert (=> b!7549761 m!8117026))

(assert (=> b!7549761 m!8117028))

(declare-fun m!8117030 () Bool)

(assert (=> b!7549754 m!8117030))

(assert (=> b!7549753 m!8116646))

(declare-fun m!8117032 () Bool)

(assert (=> d!2312683 m!8117032))

(assert (=> d!2312683 m!8116696))

(assert (=> b!7549758 m!8116646))

(assert (=> b!7549752 m!8116646))

(assert (=> b!7549752 m!8116646))

(declare-fun m!8117034 () Bool)

(assert (=> b!7549752 m!8117034))

(assert (=> b!7549752 m!8117026))

(assert (=> b!7549752 m!8117034))

(assert (=> b!7549752 m!8117026))

(declare-fun m!8117036 () Bool)

(assert (=> b!7549752 m!8117036))

(assert (=> bm!692276 m!8117032))

(assert (=> b!7549292 d!2312683))

(declare-fun d!2312685 () Bool)

(declare-fun lt!2646475 () List!72826)

(assert (=> d!2312685 (= (++!17459 testedP!423 lt!2646475) knownP!30)))

(declare-fun e!4497334 () List!72826)

(assert (=> d!2312685 (= lt!2646475 e!4497334)))

(declare-fun c!1393524 () Bool)

(assert (=> d!2312685 (= c!1393524 ((_ is Cons!72702) testedP!423))))

(assert (=> d!2312685 (>= (size!42439 knownP!30) (size!42439 testedP!423))))

(assert (=> d!2312685 (= (getSuffix!3629 knownP!30 testedP!423) lt!2646475)))

(declare-fun b!7549764 () Bool)

(assert (=> b!7549764 (= e!4497334 (getSuffix!3629 (tail!15075 knownP!30) (t!387543 testedP!423)))))

(declare-fun b!7549765 () Bool)

(assert (=> b!7549765 (= e!4497334 knownP!30)))

(assert (= (and d!2312685 c!1393524) b!7549764))

(assert (= (and d!2312685 (not c!1393524)) b!7549765))

(declare-fun m!8117038 () Bool)

(assert (=> d!2312685 m!8117038))

(assert (=> d!2312685 m!8116678))

(assert (=> d!2312685 m!8116676))

(assert (=> b!7549764 m!8116858))

(assert (=> b!7549764 m!8116858))

(declare-fun m!8117040 () Bool)

(assert (=> b!7549764 m!8117040))

(assert (=> b!7549292 d!2312685))

(declare-fun b!7549768 () Bool)

(declare-fun e!4497337 () Bool)

(assert (=> b!7549768 (= e!4497337 (isPrefix!6149 (tail!15075 testedP!423) (tail!15075 knownP!30)))))

(declare-fun d!2312687 () Bool)

(declare-fun e!4497336 () Bool)

(assert (=> d!2312687 e!4497336))

(declare-fun res!3026054 () Bool)

(assert (=> d!2312687 (=> res!3026054 e!4497336)))

(declare-fun lt!2646476 () Bool)

(assert (=> d!2312687 (= res!3026054 (not lt!2646476))))

(declare-fun e!4497335 () Bool)

(assert (=> d!2312687 (= lt!2646476 e!4497335)))

(declare-fun res!3026055 () Bool)

(assert (=> d!2312687 (=> res!3026055 e!4497335)))

(assert (=> d!2312687 (= res!3026055 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312687 (= (isPrefix!6149 testedP!423 knownP!30) lt!2646476)))

(declare-fun b!7549767 () Bool)

(declare-fun res!3026052 () Bool)

(assert (=> b!7549767 (=> (not res!3026052) (not e!4497337))))

(assert (=> b!7549767 (= res!3026052 (= (head!15533 testedP!423) (head!15533 knownP!30)))))

(declare-fun b!7549766 () Bool)

(assert (=> b!7549766 (= e!4497335 e!4497337)))

(declare-fun res!3026053 () Bool)

(assert (=> b!7549766 (=> (not res!3026053) (not e!4497337))))

(assert (=> b!7549766 (= res!3026053 (not ((_ is Nil!72702) knownP!30)))))

(declare-fun b!7549769 () Bool)

(assert (=> b!7549769 (= e!4497336 (>= (size!42439 knownP!30) (size!42439 testedP!423)))))

(assert (= (and d!2312687 (not res!3026055)) b!7549766))

(assert (= (and b!7549766 res!3026053) b!7549767))

(assert (= (and b!7549767 res!3026052) b!7549768))

(assert (= (and d!2312687 (not res!3026054)) b!7549769))

(declare-fun m!8117042 () Bool)

(assert (=> b!7549768 m!8117042))

(assert (=> b!7549768 m!8116858))

(assert (=> b!7549768 m!8117042))

(assert (=> b!7549768 m!8116858))

(declare-fun m!8117044 () Bool)

(assert (=> b!7549768 m!8117044))

(declare-fun m!8117046 () Bool)

(assert (=> b!7549767 m!8117046))

(assert (=> b!7549767 m!8116862))

(assert (=> b!7549769 m!8116678))

(assert (=> b!7549769 m!8116676))

(assert (=> b!7549292 d!2312687))

(declare-fun d!2312689 () Bool)

(assert (=> d!2312689 (isPrefix!6149 testedP!423 knownP!30)))

(declare-fun lt!2646477 () Unit!166824)

(assert (=> d!2312689 (= lt!2646477 (choose!58421 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312689 (isPrefix!6149 knownP!30 input!7874)))

(assert (=> d!2312689 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!899 knownP!30 testedP!423 input!7874) lt!2646477)))

(declare-fun bs!1940169 () Bool)

(assert (= bs!1940169 d!2312689))

(assert (=> bs!1940169 m!8116638))

(declare-fun m!8117048 () Bool)

(assert (=> bs!1940169 m!8117048))

(assert (=> bs!1940169 m!8116632))

(assert (=> b!7549292 d!2312689))

(declare-fun d!2312691 () Bool)

(declare-fun e!4497339 () Bool)

(assert (=> d!2312691 e!4497339))

(declare-fun res!3026057 () Bool)

(assert (=> d!2312691 (=> (not res!3026057) (not e!4497339))))

(declare-fun lt!2646478 () List!72826)

(assert (=> d!2312691 (= res!3026057 (= (content!15386 lt!2646478) ((_ map or) (content!15386 testedP!423) (content!15386 lt!2646366))))))

(declare-fun e!4497338 () List!72826)

(assert (=> d!2312691 (= lt!2646478 e!4497338)))

(declare-fun c!1393525 () Bool)

(assert (=> d!2312691 (= c!1393525 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312691 (= (++!17459 testedP!423 lt!2646366) lt!2646478)))

(declare-fun b!7549772 () Bool)

(declare-fun res!3026056 () Bool)

(assert (=> b!7549772 (=> (not res!3026056) (not e!4497339))))

(assert (=> b!7549772 (= res!3026056 (= (size!42439 lt!2646478) (+ (size!42439 testedP!423) (size!42439 lt!2646366))))))

(declare-fun b!7549771 () Bool)

(assert (=> b!7549771 (= e!4497338 (Cons!72702 (h!79150 testedP!423) (++!17459 (t!387543 testedP!423) lt!2646366)))))

(declare-fun b!7549773 () Bool)

(assert (=> b!7549773 (= e!4497339 (or (not (= lt!2646366 Nil!72702)) (= lt!2646478 testedP!423)))))

(declare-fun b!7549770 () Bool)

(assert (=> b!7549770 (= e!4497338 lt!2646366)))

(assert (= (and d!2312691 c!1393525) b!7549770))

(assert (= (and d!2312691 (not c!1393525)) b!7549771))

(assert (= (and d!2312691 res!3026057) b!7549772))

(assert (= (and b!7549772 res!3026056) b!7549773))

(declare-fun m!8117050 () Bool)

(assert (=> d!2312691 m!8117050))

(assert (=> d!2312691 m!8116796))

(declare-fun m!8117052 () Bool)

(assert (=> d!2312691 m!8117052))

(declare-fun m!8117054 () Bool)

(assert (=> b!7549772 m!8117054))

(assert (=> b!7549772 m!8116676))

(declare-fun m!8117056 () Bool)

(assert (=> b!7549772 m!8117056))

(declare-fun m!8117058 () Bool)

(assert (=> b!7549771 m!8117058))

(assert (=> b!7549301 d!2312691))

(declare-fun d!2312693 () Bool)

(assert (=> d!2312693 (= (head!15533 lt!2646370) (h!79150 lt!2646370))))

(assert (=> b!7549290 d!2312693))

(declare-fun d!2312695 () Bool)

(assert (=> d!2312695 (= lt!2646378 lt!2646366)))

(declare-fun lt!2646481 () Unit!166824)

(declare-fun choose!58424 (List!72826 List!72826 List!72826 List!72826 List!72826) Unit!166824)

(assert (=> d!2312695 (= lt!2646481 (choose!58424 testedP!423 lt!2646378 testedP!423 lt!2646366 input!7874))))

(assert (=> d!2312695 (isPrefix!6149 testedP!423 input!7874)))

(assert (=> d!2312695 (= (lemmaSamePrefixThenSameSuffix!2865 testedP!423 lt!2646378 testedP!423 lt!2646366 input!7874) lt!2646481)))

(declare-fun bs!1940170 () Bool)

(assert (= bs!1940170 d!2312695))

(declare-fun m!8117060 () Bool)

(assert (=> bs!1940170 m!8117060))

(assert (=> bs!1940170 m!8116694))

(assert (=> b!7549290 d!2312695))

(declare-fun b!7549776 () Bool)

(declare-fun e!4497342 () Bool)

(assert (=> b!7549776 (= e!4497342 (isPrefix!6149 (tail!15075 testedP!423) (tail!15075 input!7874)))))

(declare-fun d!2312697 () Bool)

(declare-fun e!4497341 () Bool)

(assert (=> d!2312697 e!4497341))

(declare-fun res!3026060 () Bool)

(assert (=> d!2312697 (=> res!3026060 e!4497341)))

(declare-fun lt!2646482 () Bool)

(assert (=> d!2312697 (= res!3026060 (not lt!2646482))))

(declare-fun e!4497340 () Bool)

(assert (=> d!2312697 (= lt!2646482 e!4497340)))

(declare-fun res!3026061 () Bool)

(assert (=> d!2312697 (=> res!3026061 e!4497340)))

(assert (=> d!2312697 (= res!3026061 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312697 (= (isPrefix!6149 testedP!423 input!7874) lt!2646482)))

(declare-fun b!7549775 () Bool)

(declare-fun res!3026058 () Bool)

(assert (=> b!7549775 (=> (not res!3026058) (not e!4497342))))

(assert (=> b!7549775 (= res!3026058 (= (head!15533 testedP!423) (head!15533 input!7874)))))

(declare-fun b!7549774 () Bool)

(assert (=> b!7549774 (= e!4497340 e!4497342)))

(declare-fun res!3026059 () Bool)

(assert (=> b!7549774 (=> (not res!3026059) (not e!4497342))))

(assert (=> b!7549774 (= res!3026059 (not ((_ is Nil!72702) input!7874)))))

(declare-fun b!7549777 () Bool)

(assert (=> b!7549777 (= e!4497341 (>= (size!42439 input!7874) (size!42439 testedP!423)))))

(assert (= (and d!2312697 (not res!3026061)) b!7549774))

(assert (= (and b!7549774 res!3026059) b!7549775))

(assert (= (and b!7549775 res!3026058) b!7549776))

(assert (= (and d!2312697 (not res!3026060)) b!7549777))

(assert (=> b!7549776 m!8117042))

(assert (=> b!7549776 m!8116704))

(assert (=> b!7549776 m!8117042))

(assert (=> b!7549776 m!8116704))

(declare-fun m!8117062 () Bool)

(assert (=> b!7549776 m!8117062))

(assert (=> b!7549775 m!8117046))

(assert (=> b!7549775 m!8116736))

(assert (=> b!7549777 m!8116700))

(assert (=> b!7549777 m!8116676))

(assert (=> b!7549299 d!2312697))

(declare-fun b!7549778 () Bool)

(declare-fun e!4497343 () Bool)

(declare-fun e!4497344 () Bool)

(assert (=> b!7549778 (= e!4497343 e!4497344)))

(declare-fun res!3026063 () Bool)

(assert (=> b!7549778 (=> (not res!3026063) (not e!4497344))))

(declare-fun call!692282 () Bool)

(assert (=> b!7549778 (= res!3026063 call!692282)))

(declare-fun b!7549779 () Bool)

(declare-fun e!4497347 () Bool)

(declare-fun e!4497349 () Bool)

(assert (=> b!7549779 (= e!4497347 e!4497349)))

(declare-fun res!3026062 () Bool)

(assert (=> b!7549779 (= res!3026062 (not (nullable!8699 (reg!20272 baseR!101))))))

(assert (=> b!7549779 (=> (not res!3026062) (not e!4497349))))

(declare-fun b!7549780 () Bool)

(declare-fun e!4497345 () Bool)

(declare-fun call!692283 () Bool)

(assert (=> b!7549780 (= e!4497345 call!692283)))

(declare-fun bm!692277 () Bool)

(declare-fun c!1393527 () Bool)

(assert (=> bm!692277 (= call!692282 (validRegex!10371 (ite c!1393527 (regOne!40399 baseR!101) (regOne!40398 baseR!101))))))

(declare-fun b!7549781 () Bool)

(declare-fun call!692284 () Bool)

(assert (=> b!7549781 (= e!4497349 call!692284)))

(declare-fun b!7549782 () Bool)

(declare-fun e!4497346 () Bool)

(assert (=> b!7549782 (= e!4497346 e!4497347)))

(declare-fun c!1393526 () Bool)

(assert (=> b!7549782 (= c!1393526 ((_ is Star!19943) baseR!101))))

(declare-fun b!7549783 () Bool)

(declare-fun res!3026064 () Bool)

(assert (=> b!7549783 (=> res!3026064 e!4497343)))

(assert (=> b!7549783 (= res!3026064 (not ((_ is Concat!28788) baseR!101)))))

(declare-fun e!4497348 () Bool)

(assert (=> b!7549783 (= e!4497348 e!4497343)))

(declare-fun b!7549784 () Bool)

(assert (=> b!7549784 (= e!4497347 e!4497348)))

(assert (=> b!7549784 (= c!1393527 ((_ is Union!19943) baseR!101))))

(declare-fun d!2312699 () Bool)

(declare-fun res!3026066 () Bool)

(assert (=> d!2312699 (=> res!3026066 e!4497346)))

(assert (=> d!2312699 (= res!3026066 ((_ is ElementMatch!19943) baseR!101))))

(assert (=> d!2312699 (= (validRegex!10371 baseR!101) e!4497346)))

(declare-fun bm!692278 () Bool)

(assert (=> bm!692278 (= call!692284 (validRegex!10371 (ite c!1393526 (reg!20272 baseR!101) (ite c!1393527 (regTwo!40399 baseR!101) (regTwo!40398 baseR!101)))))))

(declare-fun b!7549785 () Bool)

(assert (=> b!7549785 (= e!4497344 call!692283)))

(declare-fun bm!692279 () Bool)

(assert (=> bm!692279 (= call!692283 call!692284)))

(declare-fun b!7549786 () Bool)

(declare-fun res!3026065 () Bool)

(assert (=> b!7549786 (=> (not res!3026065) (not e!4497345))))

(assert (=> b!7549786 (= res!3026065 call!692282)))

(assert (=> b!7549786 (= e!4497348 e!4497345)))

(assert (= (and d!2312699 (not res!3026066)) b!7549782))

(assert (= (and b!7549782 c!1393526) b!7549779))

(assert (= (and b!7549782 (not c!1393526)) b!7549784))

(assert (= (and b!7549779 res!3026062) b!7549781))

(assert (= (and b!7549784 c!1393527) b!7549786))

(assert (= (and b!7549784 (not c!1393527)) b!7549783))

(assert (= (and b!7549786 res!3026065) b!7549780))

(assert (= (and b!7549783 (not res!3026064)) b!7549778))

(assert (= (and b!7549778 res!3026063) b!7549785))

(assert (= (or b!7549786 b!7549778) bm!692277))

(assert (= (or b!7549780 b!7549785) bm!692279))

(assert (= (or b!7549781 bm!692279) bm!692278))

(declare-fun m!8117064 () Bool)

(assert (=> b!7549779 m!8117064))

(declare-fun m!8117066 () Bool)

(assert (=> bm!692277 m!8117066))

(declare-fun m!8117068 () Bool)

(assert (=> bm!692278 m!8117068))

(assert (=> start!729960 d!2312699))

(declare-fun d!2312701 () Bool)

(declare-fun lt!2646483 () Regex!19943)

(assert (=> d!2312701 (validRegex!10371 lt!2646483)))

(declare-fun e!4497350 () Regex!19943)

(assert (=> d!2312701 (= lt!2646483 e!4497350)))

(declare-fun c!1393528 () Bool)

(assert (=> d!2312701 (= c!1393528 ((_ is Cons!72702) testedP!423))))

(assert (=> d!2312701 (validRegex!10371 baseR!101)))

(assert (=> d!2312701 (= (derivative!475 baseR!101 testedP!423) lt!2646483)))

(declare-fun b!7549787 () Bool)

(assert (=> b!7549787 (= e!4497350 (derivative!475 (derivativeStep!5733 baseR!101 (h!79150 testedP!423)) (t!387543 testedP!423)))))

(declare-fun b!7549788 () Bool)

(assert (=> b!7549788 (= e!4497350 baseR!101)))

(assert (= (and d!2312701 c!1393528) b!7549787))

(assert (= (and d!2312701 (not c!1393528)) b!7549788))

(declare-fun m!8117070 () Bool)

(assert (=> d!2312701 m!8117070))

(assert (=> d!2312701 m!8116690))

(declare-fun m!8117072 () Bool)

(assert (=> b!7549787 m!8117072))

(assert (=> b!7549787 m!8117072))

(declare-fun m!8117074 () Bool)

(assert (=> b!7549787 m!8117074))

(assert (=> b!7549287 d!2312701))

(declare-fun d!2312703 () Bool)

(declare-fun lostCauseFct!453 (Regex!19943) Bool)

(assert (=> d!2312703 (= (lostCause!1735 r!24333) (lostCauseFct!453 r!24333))))

(declare-fun bs!1940171 () Bool)

(assert (= bs!1940171 d!2312703))

(declare-fun m!8117076 () Bool)

(assert (=> bs!1940171 m!8117076))

(assert (=> b!7549307 d!2312703))

(declare-fun d!2312705 () Bool)

(declare-fun e!4497352 () Bool)

(assert (=> d!2312705 e!4497352))

(declare-fun res!3026068 () Bool)

(assert (=> d!2312705 (=> (not res!3026068) (not e!4497352))))

(declare-fun lt!2646484 () List!72826)

(assert (=> d!2312705 (= res!3026068 (= (content!15386 lt!2646484) ((_ map or) (content!15386 testedP!423) (content!15386 lt!2646378))))))

(declare-fun e!4497351 () List!72826)

(assert (=> d!2312705 (= lt!2646484 e!4497351)))

(declare-fun c!1393529 () Bool)

(assert (=> d!2312705 (= c!1393529 ((_ is Nil!72702) testedP!423))))

(assert (=> d!2312705 (= (++!17459 testedP!423 lt!2646378) lt!2646484)))

(declare-fun b!7549791 () Bool)

(declare-fun res!3026067 () Bool)

(assert (=> b!7549791 (=> (not res!3026067) (not e!4497352))))

(assert (=> b!7549791 (= res!3026067 (= (size!42439 lt!2646484) (+ (size!42439 testedP!423) (size!42439 lt!2646378))))))

(declare-fun b!7549790 () Bool)

(assert (=> b!7549790 (= e!4497351 (Cons!72702 (h!79150 testedP!423) (++!17459 (t!387543 testedP!423) lt!2646378)))))

(declare-fun b!7549792 () Bool)

(assert (=> b!7549792 (= e!4497352 (or (not (= lt!2646378 Nil!72702)) (= lt!2646484 testedP!423)))))

(declare-fun b!7549789 () Bool)

(assert (=> b!7549789 (= e!4497351 lt!2646378)))

(assert (= (and d!2312705 c!1393529) b!7549789))

(assert (= (and d!2312705 (not c!1393529)) b!7549790))

(assert (= (and d!2312705 res!3026068) b!7549791))

(assert (= (and b!7549791 res!3026067) b!7549792))

(declare-fun m!8117078 () Bool)

(assert (=> d!2312705 m!8117078))

(assert (=> d!2312705 m!8116796))

(declare-fun m!8117080 () Bool)

(assert (=> d!2312705 m!8117080))

(declare-fun m!8117082 () Bool)

(assert (=> b!7549791 m!8117082))

(assert (=> b!7549791 m!8116676))

(declare-fun m!8117084 () Bool)

(assert (=> b!7549791 m!8117084))

(declare-fun m!8117086 () Bool)

(assert (=> b!7549790 m!8117086))

(assert (=> b!7549296 d!2312705))

(declare-fun d!2312707 () Bool)

(declare-fun e!4497354 () Bool)

(assert (=> d!2312707 e!4497354))

(declare-fun res!3026070 () Bool)

(assert (=> d!2312707 (=> (not res!3026070) (not e!4497354))))

(declare-fun lt!2646485 () List!72826)

(assert (=> d!2312707 (= res!3026070 (= (content!15386 lt!2646485) ((_ map or) (content!15386 lt!2646370) (content!15386 lt!2646367))))))

(declare-fun e!4497353 () List!72826)

(assert (=> d!2312707 (= lt!2646485 e!4497353)))

(declare-fun c!1393530 () Bool)

(assert (=> d!2312707 (= c!1393530 ((_ is Nil!72702) lt!2646370))))

(assert (=> d!2312707 (= (++!17459 lt!2646370 lt!2646367) lt!2646485)))

(declare-fun b!7549795 () Bool)

(declare-fun res!3026069 () Bool)

(assert (=> b!7549795 (=> (not res!3026069) (not e!4497354))))

(assert (=> b!7549795 (= res!3026069 (= (size!42439 lt!2646485) (+ (size!42439 lt!2646370) (size!42439 lt!2646367))))))

(declare-fun b!7549794 () Bool)

(assert (=> b!7549794 (= e!4497353 (Cons!72702 (h!79150 lt!2646370) (++!17459 (t!387543 lt!2646370) lt!2646367)))))

(declare-fun b!7549796 () Bool)

(assert (=> b!7549796 (= e!4497354 (or (not (= lt!2646367 Nil!72702)) (= lt!2646485 lt!2646370)))))

(declare-fun b!7549793 () Bool)

(assert (=> b!7549793 (= e!4497353 lt!2646367)))

(assert (= (and d!2312707 c!1393530) b!7549793))

(assert (= (and d!2312707 (not c!1393530)) b!7549794))

(assert (= (and d!2312707 res!3026070) b!7549795))

(assert (= (and b!7549795 res!3026069) b!7549796))

(declare-fun m!8117088 () Bool)

(assert (=> d!2312707 m!8117088))

(assert (=> d!2312707 m!8116880))

(assert (=> d!2312707 m!8116712))

(declare-fun m!8117090 () Bool)

(assert (=> b!7549795 m!8117090))

(assert (=> b!7549795 m!8116884))

(assert (=> b!7549795 m!8116716))

(declare-fun m!8117092 () Bool)

(assert (=> b!7549794 m!8117092))

(assert (=> b!7549296 d!2312707))

(declare-fun d!2312709 () Bool)

(assert (=> d!2312709 (= (++!17459 (++!17459 testedP!423 lt!2646370) lt!2646367) (++!17459 testedP!423 (++!17459 lt!2646370 lt!2646367)))))

(declare-fun lt!2646488 () Unit!166824)

(declare-fun choose!58425 (List!72826 List!72826 List!72826) Unit!166824)

(assert (=> d!2312709 (= lt!2646488 (choose!58425 testedP!423 lt!2646370 lt!2646367))))

(assert (=> d!2312709 (= (lemmaConcatAssociativity!3098 testedP!423 lt!2646370 lt!2646367) lt!2646488)))

(declare-fun bs!1940172 () Bool)

(assert (= bs!1940172 d!2312709))

(assert (=> bs!1940172 m!8116686))

(declare-fun m!8117094 () Bool)

(assert (=> bs!1940172 m!8117094))

(declare-fun m!8117096 () Bool)

(assert (=> bs!1940172 m!8117096))

(assert (=> bs!1940172 m!8116680))

(assert (=> bs!1940172 m!8116682))

(assert (=> bs!1940172 m!8116680))

(assert (=> bs!1940172 m!8116686))

(assert (=> b!7549296 d!2312709))

(declare-fun b!7549807 () Bool)

(declare-fun e!4497357 () Bool)

(assert (=> b!7549807 (= e!4497357 tp_is_empty!50241)))

(assert (=> b!7549295 (= tp!2196217 e!4497357)))

(declare-fun b!7549809 () Bool)

(declare-fun tp!2196297 () Bool)

(assert (=> b!7549809 (= e!4497357 tp!2196297)))

(declare-fun b!7549808 () Bool)

(declare-fun tp!2196301 () Bool)

(declare-fun tp!2196299 () Bool)

(assert (=> b!7549808 (= e!4497357 (and tp!2196301 tp!2196299))))

(declare-fun b!7549810 () Bool)

(declare-fun tp!2196298 () Bool)

(declare-fun tp!2196300 () Bool)

(assert (=> b!7549810 (= e!4497357 (and tp!2196298 tp!2196300))))

(assert (= (and b!7549295 ((_ is ElementMatch!19943) (regOne!40399 baseR!101))) b!7549807))

(assert (= (and b!7549295 ((_ is Concat!28788) (regOne!40399 baseR!101))) b!7549808))

(assert (= (and b!7549295 ((_ is Star!19943) (regOne!40399 baseR!101))) b!7549809))

(assert (= (and b!7549295 ((_ is Union!19943) (regOne!40399 baseR!101))) b!7549810))

(declare-fun b!7549811 () Bool)

(declare-fun e!4497358 () Bool)

(assert (=> b!7549811 (= e!4497358 tp_is_empty!50241)))

(assert (=> b!7549295 (= tp!2196210 e!4497358)))

(declare-fun b!7549813 () Bool)

(declare-fun tp!2196302 () Bool)

(assert (=> b!7549813 (= e!4497358 tp!2196302)))

(declare-fun b!7549812 () Bool)

(declare-fun tp!2196306 () Bool)

(declare-fun tp!2196304 () Bool)

(assert (=> b!7549812 (= e!4497358 (and tp!2196306 tp!2196304))))

(declare-fun b!7549814 () Bool)

(declare-fun tp!2196303 () Bool)

(declare-fun tp!2196305 () Bool)

(assert (=> b!7549814 (= e!4497358 (and tp!2196303 tp!2196305))))

(assert (= (and b!7549295 ((_ is ElementMatch!19943) (regTwo!40399 baseR!101))) b!7549811))

(assert (= (and b!7549295 ((_ is Concat!28788) (regTwo!40399 baseR!101))) b!7549812))

(assert (= (and b!7549295 ((_ is Star!19943) (regTwo!40399 baseR!101))) b!7549813))

(assert (= (and b!7549295 ((_ is Union!19943) (regTwo!40399 baseR!101))) b!7549814))

(declare-fun b!7549815 () Bool)

(declare-fun e!4497359 () Bool)

(assert (=> b!7549815 (= e!4497359 tp_is_empty!50241)))

(assert (=> b!7549300 (= tp!2196214 e!4497359)))

(declare-fun b!7549817 () Bool)

(declare-fun tp!2196307 () Bool)

(assert (=> b!7549817 (= e!4497359 tp!2196307)))

(declare-fun b!7549816 () Bool)

(declare-fun tp!2196311 () Bool)

(declare-fun tp!2196309 () Bool)

(assert (=> b!7549816 (= e!4497359 (and tp!2196311 tp!2196309))))

(declare-fun b!7549818 () Bool)

(declare-fun tp!2196308 () Bool)

(declare-fun tp!2196310 () Bool)

(assert (=> b!7549818 (= e!4497359 (and tp!2196308 tp!2196310))))

(assert (= (and b!7549300 ((_ is ElementMatch!19943) (regOne!40399 r!24333))) b!7549815))

(assert (= (and b!7549300 ((_ is Concat!28788) (regOne!40399 r!24333))) b!7549816))

(assert (= (and b!7549300 ((_ is Star!19943) (regOne!40399 r!24333))) b!7549817))

(assert (= (and b!7549300 ((_ is Union!19943) (regOne!40399 r!24333))) b!7549818))

(declare-fun b!7549819 () Bool)

(declare-fun e!4497360 () Bool)

(assert (=> b!7549819 (= e!4497360 tp_is_empty!50241)))

(assert (=> b!7549300 (= tp!2196211 e!4497360)))

(declare-fun b!7549821 () Bool)

(declare-fun tp!2196312 () Bool)

(assert (=> b!7549821 (= e!4497360 tp!2196312)))

(declare-fun b!7549820 () Bool)

(declare-fun tp!2196316 () Bool)

(declare-fun tp!2196314 () Bool)

(assert (=> b!7549820 (= e!4497360 (and tp!2196316 tp!2196314))))

(declare-fun b!7549822 () Bool)

(declare-fun tp!2196313 () Bool)

(declare-fun tp!2196315 () Bool)

(assert (=> b!7549822 (= e!4497360 (and tp!2196313 tp!2196315))))

(assert (= (and b!7549300 ((_ is ElementMatch!19943) (regTwo!40399 r!24333))) b!7549819))

(assert (= (and b!7549300 ((_ is Concat!28788) (regTwo!40399 r!24333))) b!7549820))

(assert (= (and b!7549300 ((_ is Star!19943) (regTwo!40399 r!24333))) b!7549821))

(assert (= (and b!7549300 ((_ is Union!19943) (regTwo!40399 r!24333))) b!7549822))

(declare-fun b!7549823 () Bool)

(declare-fun e!4497361 () Bool)

(assert (=> b!7549823 (= e!4497361 tp_is_empty!50241)))

(assert (=> b!7549284 (= tp!2196221 e!4497361)))

(declare-fun b!7549825 () Bool)

(declare-fun tp!2196317 () Bool)

(assert (=> b!7549825 (= e!4497361 tp!2196317)))

(declare-fun b!7549824 () Bool)

(declare-fun tp!2196321 () Bool)

(declare-fun tp!2196319 () Bool)

(assert (=> b!7549824 (= e!4497361 (and tp!2196321 tp!2196319))))

(declare-fun b!7549826 () Bool)

(declare-fun tp!2196318 () Bool)

(declare-fun tp!2196320 () Bool)

(assert (=> b!7549826 (= e!4497361 (and tp!2196318 tp!2196320))))

(assert (= (and b!7549284 ((_ is ElementMatch!19943) (reg!20272 baseR!101))) b!7549823))

(assert (= (and b!7549284 ((_ is Concat!28788) (reg!20272 baseR!101))) b!7549824))

(assert (= (and b!7549284 ((_ is Star!19943) (reg!20272 baseR!101))) b!7549825))

(assert (= (and b!7549284 ((_ is Union!19943) (reg!20272 baseR!101))) b!7549826))

(declare-fun b!7549827 () Bool)

(declare-fun e!4497362 () Bool)

(assert (=> b!7549827 (= e!4497362 tp_is_empty!50241)))

(assert (=> b!7549288 (= tp!2196218 e!4497362)))

(declare-fun b!7549829 () Bool)

(declare-fun tp!2196322 () Bool)

(assert (=> b!7549829 (= e!4497362 tp!2196322)))

(declare-fun b!7549828 () Bool)

(declare-fun tp!2196326 () Bool)

(declare-fun tp!2196324 () Bool)

(assert (=> b!7549828 (= e!4497362 (and tp!2196326 tp!2196324))))

(declare-fun b!7549830 () Bool)

(declare-fun tp!2196323 () Bool)

(declare-fun tp!2196325 () Bool)

(assert (=> b!7549830 (= e!4497362 (and tp!2196323 tp!2196325))))

(assert (= (and b!7549288 ((_ is ElementMatch!19943) (reg!20272 r!24333))) b!7549827))

(assert (= (and b!7549288 ((_ is Concat!28788) (reg!20272 r!24333))) b!7549828))

(assert (= (and b!7549288 ((_ is Star!19943) (reg!20272 r!24333))) b!7549829))

(assert (= (and b!7549288 ((_ is Union!19943) (reg!20272 r!24333))) b!7549830))

(declare-fun b!7549831 () Bool)

(declare-fun e!4497363 () Bool)

(assert (=> b!7549831 (= e!4497363 tp_is_empty!50241)))

(assert (=> b!7549293 (= tp!2196220 e!4497363)))

(declare-fun b!7549833 () Bool)

(declare-fun tp!2196327 () Bool)

(assert (=> b!7549833 (= e!4497363 tp!2196327)))

(declare-fun b!7549832 () Bool)

(declare-fun tp!2196331 () Bool)

(declare-fun tp!2196329 () Bool)

(assert (=> b!7549832 (= e!4497363 (and tp!2196331 tp!2196329))))

(declare-fun b!7549834 () Bool)

(declare-fun tp!2196328 () Bool)

(declare-fun tp!2196330 () Bool)

(assert (=> b!7549834 (= e!4497363 (and tp!2196328 tp!2196330))))

(assert (= (and b!7549293 ((_ is ElementMatch!19943) (regOne!40398 r!24333))) b!7549831))

(assert (= (and b!7549293 ((_ is Concat!28788) (regOne!40398 r!24333))) b!7549832))

(assert (= (and b!7549293 ((_ is Star!19943) (regOne!40398 r!24333))) b!7549833))

(assert (= (and b!7549293 ((_ is Union!19943) (regOne!40398 r!24333))) b!7549834))

(declare-fun b!7549835 () Bool)

(declare-fun e!4497364 () Bool)

(assert (=> b!7549835 (= e!4497364 tp_is_empty!50241)))

(assert (=> b!7549293 (= tp!2196213 e!4497364)))

(declare-fun b!7549837 () Bool)

(declare-fun tp!2196332 () Bool)

(assert (=> b!7549837 (= e!4497364 tp!2196332)))

(declare-fun b!7549836 () Bool)

(declare-fun tp!2196336 () Bool)

(declare-fun tp!2196334 () Bool)

(assert (=> b!7549836 (= e!4497364 (and tp!2196336 tp!2196334))))

(declare-fun b!7549838 () Bool)

(declare-fun tp!2196333 () Bool)

(declare-fun tp!2196335 () Bool)

(assert (=> b!7549838 (= e!4497364 (and tp!2196333 tp!2196335))))

(assert (= (and b!7549293 ((_ is ElementMatch!19943) (regTwo!40398 r!24333))) b!7549835))

(assert (= (and b!7549293 ((_ is Concat!28788) (regTwo!40398 r!24333))) b!7549836))

(assert (= (and b!7549293 ((_ is Star!19943) (regTwo!40398 r!24333))) b!7549837))

(assert (= (and b!7549293 ((_ is Union!19943) (regTwo!40398 r!24333))) b!7549838))

(declare-fun b!7549843 () Bool)

(declare-fun e!4497367 () Bool)

(declare-fun tp!2196339 () Bool)

(assert (=> b!7549843 (= e!4497367 (and tp_is_empty!50241 tp!2196339))))

(assert (=> b!7549298 (= tp!2196212 e!4497367)))

(assert (= (and b!7549298 ((_ is Cons!72702) (t!387543 knownP!30))) b!7549843))

(declare-fun b!7549844 () Bool)

(declare-fun e!4497368 () Bool)

(declare-fun tp!2196340 () Bool)

(assert (=> b!7549844 (= e!4497368 (and tp_is_empty!50241 tp!2196340))))

(assert (=> b!7549297 (= tp!2196209 e!4497368)))

(assert (= (and b!7549297 ((_ is Cons!72702) (t!387543 input!7874))) b!7549844))

(declare-fun b!7549845 () Bool)

(declare-fun e!4497369 () Bool)

(assert (=> b!7549845 (= e!4497369 tp_is_empty!50241)))

(assert (=> b!7549286 (= tp!2196215 e!4497369)))

(declare-fun b!7549847 () Bool)

(declare-fun tp!2196341 () Bool)

(assert (=> b!7549847 (= e!4497369 tp!2196341)))

(declare-fun b!7549846 () Bool)

(declare-fun tp!2196345 () Bool)

(declare-fun tp!2196343 () Bool)

(assert (=> b!7549846 (= e!4497369 (and tp!2196345 tp!2196343))))

(declare-fun b!7549848 () Bool)

(declare-fun tp!2196342 () Bool)

(declare-fun tp!2196344 () Bool)

(assert (=> b!7549848 (= e!4497369 (and tp!2196342 tp!2196344))))

(assert (= (and b!7549286 ((_ is ElementMatch!19943) (regOne!40398 baseR!101))) b!7549845))

(assert (= (and b!7549286 ((_ is Concat!28788) (regOne!40398 baseR!101))) b!7549846))

(assert (= (and b!7549286 ((_ is Star!19943) (regOne!40398 baseR!101))) b!7549847))

(assert (= (and b!7549286 ((_ is Union!19943) (regOne!40398 baseR!101))) b!7549848))

(declare-fun b!7549849 () Bool)

(declare-fun e!4497370 () Bool)

(assert (=> b!7549849 (= e!4497370 tp_is_empty!50241)))

(assert (=> b!7549286 (= tp!2196219 e!4497370)))

(declare-fun b!7549851 () Bool)

(declare-fun tp!2196346 () Bool)

(assert (=> b!7549851 (= e!4497370 tp!2196346)))

(declare-fun b!7549850 () Bool)

(declare-fun tp!2196350 () Bool)

(declare-fun tp!2196348 () Bool)

(assert (=> b!7549850 (= e!4497370 (and tp!2196350 tp!2196348))))

(declare-fun b!7549852 () Bool)

(declare-fun tp!2196347 () Bool)

(declare-fun tp!2196349 () Bool)

(assert (=> b!7549852 (= e!4497370 (and tp!2196347 tp!2196349))))

(assert (= (and b!7549286 ((_ is ElementMatch!19943) (regTwo!40398 baseR!101))) b!7549849))

(assert (= (and b!7549286 ((_ is Concat!28788) (regTwo!40398 baseR!101))) b!7549850))

(assert (= (and b!7549286 ((_ is Star!19943) (regTwo!40398 baseR!101))) b!7549851))

(assert (= (and b!7549286 ((_ is Union!19943) (regTwo!40398 baseR!101))) b!7549852))

(declare-fun b!7549853 () Bool)

(declare-fun e!4497371 () Bool)

(declare-fun tp!2196351 () Bool)

(assert (=> b!7549853 (= e!4497371 (and tp_is_empty!50241 tp!2196351))))

(assert (=> b!7549291 (= tp!2196216 e!4497371)))

(assert (= (and b!7549291 ((_ is Cons!72702) (t!387543 testedP!423))) b!7549853))

(check-sat (not d!2312601) (not b!7549519) (not b!7549731) (not b!7549754) (not b!7549777) (not d!2312709) (not d!2312571) (not d!2312581) (not d!2312683) (not b!7549629) (not b!7549808) (not d!2312625) (not d!2312629) (not b!7549323) (not b!7549829) (not b!7549850) (not b!7549453) (not b!7549752) (not b!7549739) (not b!7549824) tp_is_empty!50241 (not b!7549809) (not b!7549753) (not b!7549791) (not b!7549324) (not d!2312691) (not b!7549825) (not b!7549730) (not b!7549817) (not b!7549846) (not b!7549853) (not d!2312705) (not b!7549767) (not bm!692275) (not b!7549520) (not b!7549351) (not b!7549779) (not b!7549814) (not b!7549821) (not b!7549448) (not b!7549836) (not b!7549749) (not b!7549759) (not bm!692278) (not b!7549541) (not d!2312597) (not b!7549454) (not d!2312607) (not b!7549775) (not b!7549758) (not d!2312573) (not b!7549764) (not b!7549539) (not b!7549769) (not bm!692267) (not d!2312695) (not b!7549521) (not b!7549548) (not b!7549768) (not d!2312595) (not b!7549353) (not b!7549843) (not b!7549795) (not b!7549747) (not b!7549818) (not b!7549745) (not b!7549790) (not d!2312701) (not b!7549549) (not b!7549518) (not b!7549736) (not b!7549732) (not d!2312689) (not d!2312703) (not b!7549852) (not b!7549813) (not b!7549450) (not d!2312621) (not b!7549737) (not b!7549776) (not b!7549848) (not b!7549826) (not b!7549794) (not b!7549834) (not b!7549592) (not d!2312587) (not d!2312667) (not b!7549837) (not b!7549847) (not bm!692237) (not b!7549820) (not b!7549851) (not b!7549832) (not b!7549833) (not b!7549761) (not b!7549816) (not d!2312707) (not b!7549743) (not bm!692276) (not b!7549828) (not b!7549771) (not b!7549838) (not b!7549352) (not b!7549772) (not b!7549822) (not bm!692277) (not d!2312685) (not bm!692268) (not b!7549748) (not b!7549312) (not b!7549429) (not d!2312627) (not bm!692238) (not b!7549844) (not b!7549810) (not b!7549787) (not b!7549830) (not b!7549812))
(check-sat)
