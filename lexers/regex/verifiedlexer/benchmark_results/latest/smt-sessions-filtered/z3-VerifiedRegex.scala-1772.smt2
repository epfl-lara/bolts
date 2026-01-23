; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88606 () Bool)

(assert start!88606)

(declare-fun b!1017571 () Bool)

(declare-fun e!650206 () Bool)

(declare-fun e!650207 () Bool)

(assert (=> b!1017571 (= e!650206 (not e!650207))))

(declare-fun res!457330 () Bool)

(assert (=> b!1017571 (=> res!457330 e!650207)))

(declare-fun lt!353820 () Bool)

(declare-datatypes ((C!6176 0))(
  ( (C!6177 (val!3336 Int)) )
))
(declare-datatypes ((Regex!2803 0))(
  ( (ElementMatch!2803 (c!168592 C!6176)) (Concat!4636 (regOne!6118 Regex!2803) (regTwo!6118 Regex!2803)) (EmptyExpr!2803) (Star!2803 (reg!3132 Regex!2803)) (EmptyLang!2803) (Union!2803 (regOne!6119 Regex!2803) (regTwo!6119 Regex!2803)) )
))
(declare-fun r!15766 () Regex!2803)

(get-info :version)

(assert (=> b!1017571 (= res!457330 (or (not lt!353820) (and ((_ is Concat!4636) r!15766) ((_ is EmptyExpr!2803) (regOne!6118 r!15766))) (and ((_ is Concat!4636) r!15766) ((_ is EmptyExpr!2803) (regTwo!6118 r!15766))) ((_ is Concat!4636) r!15766) ((_ is Union!2803) r!15766) ((_ is Star!2803) r!15766)))))

(declare-datatypes ((List!10033 0))(
  ( (Nil!10017) (Cons!10017 (h!15418 C!6176) (t!101079 List!10033)) )
))
(declare-fun s!10566 () List!10033)

(declare-fun matchRSpec!602 (Regex!2803 List!10033) Bool)

(assert (=> b!1017571 (= lt!353820 (matchRSpec!602 r!15766 s!10566))))

(declare-fun matchR!1339 (Regex!2803 List!10033) Bool)

(assert (=> b!1017571 (= lt!353820 (matchR!1339 r!15766 s!10566))))

(declare-datatypes ((Unit!15281 0))(
  ( (Unit!15282) )
))
(declare-fun lt!353821 () Unit!15281)

(declare-fun mainMatchTheorem!602 (Regex!2803 List!10033) Unit!15281)

(assert (=> b!1017571 (= lt!353821 (mainMatchTheorem!602 r!15766 s!10566))))

(declare-fun b!1017572 () Bool)

(declare-fun e!650208 () Bool)

(declare-fun tp!309384 () Bool)

(assert (=> b!1017572 (= e!650208 tp!309384)))

(declare-fun res!457329 () Bool)

(assert (=> start!88606 (=> (not res!457329) (not e!650206))))

(declare-fun validRegex!1272 (Regex!2803) Bool)

(assert (=> start!88606 (= res!457329 (validRegex!1272 r!15766))))

(assert (=> start!88606 e!650206))

(assert (=> start!88606 e!650208))

(declare-fun e!650209 () Bool)

(assert (=> start!88606 e!650209))

(declare-fun b!1017573 () Bool)

(declare-fun tp!309387 () Bool)

(declare-fun tp!309385 () Bool)

(assert (=> b!1017573 (= e!650208 (and tp!309387 tp!309385))))

(declare-fun b!1017574 () Bool)

(declare-fun tp_is_empty!5249 () Bool)

(declare-fun tp!309386 () Bool)

(assert (=> b!1017574 (= e!650209 (and tp_is_empty!5249 tp!309386))))

(declare-fun b!1017575 () Bool)

(declare-fun removeUselessConcat!384 (Regex!2803) Regex!2803)

(assert (=> b!1017575 (= e!650207 (matchR!1339 (removeUselessConcat!384 r!15766) s!10566))))

(declare-fun b!1017576 () Bool)

(assert (=> b!1017576 (= e!650208 tp_is_empty!5249)))

(declare-fun b!1017577 () Bool)

(declare-fun tp!309383 () Bool)

(declare-fun tp!309388 () Bool)

(assert (=> b!1017577 (= e!650208 (and tp!309383 tp!309388))))

(assert (= (and start!88606 res!457329) b!1017571))

(assert (= (and b!1017571 (not res!457330)) b!1017575))

(assert (= (and start!88606 ((_ is ElementMatch!2803) r!15766)) b!1017576))

(assert (= (and start!88606 ((_ is Concat!4636) r!15766)) b!1017577))

(assert (= (and start!88606 ((_ is Star!2803) r!15766)) b!1017572))

(assert (= (and start!88606 ((_ is Union!2803) r!15766)) b!1017573))

(assert (= (and start!88606 ((_ is Cons!10017) s!10566)) b!1017574))

(declare-fun m!1198705 () Bool)

(assert (=> b!1017571 m!1198705))

(declare-fun m!1198707 () Bool)

(assert (=> b!1017571 m!1198707))

(declare-fun m!1198709 () Bool)

(assert (=> b!1017571 m!1198709))

(declare-fun m!1198711 () Bool)

(assert (=> start!88606 m!1198711))

(declare-fun m!1198713 () Bool)

(assert (=> b!1017575 m!1198713))

(assert (=> b!1017575 m!1198713))

(declare-fun m!1198715 () Bool)

(assert (=> b!1017575 m!1198715))

(check-sat (not start!88606) tp_is_empty!5249 (not b!1017574) (not b!1017572) (not b!1017575) (not b!1017577) (not b!1017573) (not b!1017571))
(check-sat)
(get-model)

(declare-fun b!1017713 () Bool)

(assert (=> b!1017713 true))

(assert (=> b!1017713 true))

(declare-fun bs!246514 () Bool)

(declare-fun b!1017710 () Bool)

(assert (= bs!246514 (and b!1017710 b!1017713)))

(declare-fun lambda!36054 () Int)

(declare-fun lambda!36053 () Int)

(assert (=> bs!246514 (not (= lambda!36054 lambda!36053))))

(assert (=> b!1017710 true))

(assert (=> b!1017710 true))

(declare-fun bm!69499 () Bool)

(declare-fun call!69504 () Bool)

(declare-fun c!168633 () Bool)

(declare-fun Exists!535 (Int) Bool)

(assert (=> bm!69499 (= call!69504 (Exists!535 (ite c!168633 lambda!36053 lambda!36054)))))

(declare-fun b!1017707 () Bool)

(declare-fun e!650287 () Bool)

(declare-fun e!650286 () Bool)

(assert (=> b!1017707 (= e!650287 e!650286)))

(declare-fun res!457380 () Bool)

(assert (=> b!1017707 (= res!457380 (not ((_ is EmptyLang!2803) r!15766)))))

(assert (=> b!1017707 (=> (not res!457380) (not e!650286))))

(declare-fun b!1017708 () Bool)

(declare-fun e!650281 () Bool)

(assert (=> b!1017708 (= e!650281 (matchRSpec!602 (regTwo!6119 r!15766) s!10566))))

(declare-fun bm!69500 () Bool)

(declare-fun call!69505 () Bool)

(declare-fun isEmpty!6367 (List!10033) Bool)

(assert (=> bm!69500 (= call!69505 (isEmpty!6367 s!10566))))

(declare-fun b!1017709 () Bool)

(declare-fun e!650282 () Bool)

(declare-fun e!650285 () Bool)

(assert (=> b!1017709 (= e!650282 e!650285)))

(assert (=> b!1017709 (= c!168633 ((_ is Star!2803) r!15766))))

(assert (=> b!1017710 (= e!650285 call!69504)))

(declare-fun d!294093 () Bool)

(declare-fun c!168636 () Bool)

(assert (=> d!294093 (= c!168636 ((_ is EmptyExpr!2803) r!15766))))

(assert (=> d!294093 (= (matchRSpec!602 r!15766 s!10566) e!650287)))

(declare-fun b!1017711 () Bool)

(assert (=> b!1017711 (= e!650287 call!69505)))

(declare-fun b!1017712 () Bool)

(declare-fun e!650283 () Bool)

(assert (=> b!1017712 (= e!650283 (= s!10566 (Cons!10017 (c!168592 r!15766) Nil!10017)))))

(declare-fun e!650284 () Bool)

(assert (=> b!1017713 (= e!650284 call!69504)))

(declare-fun b!1017714 () Bool)

(declare-fun c!168635 () Bool)

(assert (=> b!1017714 (= c!168635 ((_ is ElementMatch!2803) r!15766))))

(assert (=> b!1017714 (= e!650286 e!650283)))

(declare-fun b!1017715 () Bool)

(assert (=> b!1017715 (= e!650282 e!650281)))

(declare-fun res!457381 () Bool)

(assert (=> b!1017715 (= res!457381 (matchRSpec!602 (regOne!6119 r!15766) s!10566))))

(assert (=> b!1017715 (=> res!457381 e!650281)))

(declare-fun b!1017716 () Bool)

(declare-fun res!457382 () Bool)

(assert (=> b!1017716 (=> res!457382 e!650284)))

(assert (=> b!1017716 (= res!457382 call!69505)))

(assert (=> b!1017716 (= e!650285 e!650284)))

(declare-fun b!1017717 () Bool)

(declare-fun c!168634 () Bool)

(assert (=> b!1017717 (= c!168634 ((_ is Union!2803) r!15766))))

(assert (=> b!1017717 (= e!650283 e!650282)))

(assert (= (and d!294093 c!168636) b!1017711))

(assert (= (and d!294093 (not c!168636)) b!1017707))

(assert (= (and b!1017707 res!457380) b!1017714))

(assert (= (and b!1017714 c!168635) b!1017712))

(assert (= (and b!1017714 (not c!168635)) b!1017717))

(assert (= (and b!1017717 c!168634) b!1017715))

(assert (= (and b!1017717 (not c!168634)) b!1017709))

(assert (= (and b!1017715 (not res!457381)) b!1017708))

(assert (= (and b!1017709 c!168633) b!1017716))

(assert (= (and b!1017709 (not c!168633)) b!1017710))

(assert (= (and b!1017716 (not res!457382)) b!1017713))

(assert (= (or b!1017713 b!1017710) bm!69499))

(assert (= (or b!1017711 b!1017716) bm!69500))

(declare-fun m!1198743 () Bool)

(assert (=> bm!69499 m!1198743))

(declare-fun m!1198745 () Bool)

(assert (=> b!1017708 m!1198745))

(declare-fun m!1198747 () Bool)

(assert (=> bm!69500 m!1198747))

(declare-fun m!1198749 () Bool)

(assert (=> b!1017715 m!1198749))

(assert (=> b!1017571 d!294093))

(declare-fun b!1017750 () Bool)

(declare-fun res!457405 () Bool)

(declare-fun e!650307 () Bool)

(assert (=> b!1017750 (=> (not res!457405) (not e!650307))))

(declare-fun tail!1432 (List!10033) List!10033)

(assert (=> b!1017750 (= res!457405 (isEmpty!6367 (tail!1432 s!10566)))))

(declare-fun b!1017751 () Bool)

(declare-fun e!650305 () Bool)

(declare-fun derivativeStep!716 (Regex!2803 C!6176) Regex!2803)

(declare-fun head!1870 (List!10033) C!6176)

(assert (=> b!1017751 (= e!650305 (matchR!1339 (derivativeStep!716 r!15766 (head!1870 s!10566)) (tail!1432 s!10566)))))

(declare-fun b!1017752 () Bool)

(declare-fun res!457406 () Bool)

(declare-fun e!650306 () Bool)

(assert (=> b!1017752 (=> res!457406 e!650306)))

(assert (=> b!1017752 (= res!457406 (not (isEmpty!6367 (tail!1432 s!10566))))))

(declare-fun d!294101 () Bool)

(declare-fun e!650302 () Bool)

(assert (=> d!294101 e!650302))

(declare-fun c!168644 () Bool)

(assert (=> d!294101 (= c!168644 ((_ is EmptyExpr!2803) r!15766))))

(declare-fun lt!353830 () Bool)

(assert (=> d!294101 (= lt!353830 e!650305)))

(declare-fun c!168645 () Bool)

(assert (=> d!294101 (= c!168645 (isEmpty!6367 s!10566))))

(assert (=> d!294101 (validRegex!1272 r!15766)))

(assert (=> d!294101 (= (matchR!1339 r!15766 s!10566) lt!353830)))

(declare-fun b!1017753 () Bool)

(declare-fun call!69508 () Bool)

(assert (=> b!1017753 (= e!650302 (= lt!353830 call!69508))))

(declare-fun b!1017754 () Bool)

(declare-fun res!457403 () Bool)

(assert (=> b!1017754 (=> (not res!457403) (not e!650307))))

(assert (=> b!1017754 (= res!457403 (not call!69508))))

(declare-fun b!1017755 () Bool)

(declare-fun nullable!912 (Regex!2803) Bool)

(assert (=> b!1017755 (= e!650305 (nullable!912 r!15766))))

(declare-fun b!1017756 () Bool)

(declare-fun e!650304 () Bool)

(assert (=> b!1017756 (= e!650302 e!650304)))

(declare-fun c!168643 () Bool)

(assert (=> b!1017756 (= c!168643 ((_ is EmptyLang!2803) r!15766))))

(declare-fun b!1017757 () Bool)

(assert (=> b!1017757 (= e!650307 (= (head!1870 s!10566) (c!168592 r!15766)))))

(declare-fun b!1017758 () Bool)

(assert (=> b!1017758 (= e!650304 (not lt!353830))))

(declare-fun bm!69503 () Bool)

(assert (=> bm!69503 (= call!69508 (isEmpty!6367 s!10566))))

(declare-fun b!1017759 () Bool)

(declare-fun res!457401 () Bool)

(declare-fun e!650308 () Bool)

(assert (=> b!1017759 (=> res!457401 e!650308)))

(assert (=> b!1017759 (= res!457401 (not ((_ is ElementMatch!2803) r!15766)))))

(assert (=> b!1017759 (= e!650304 e!650308)))

(declare-fun b!1017760 () Bool)

(declare-fun e!650303 () Bool)

(assert (=> b!1017760 (= e!650303 e!650306)))

(declare-fun res!457400 () Bool)

(assert (=> b!1017760 (=> res!457400 e!650306)))

(assert (=> b!1017760 (= res!457400 call!69508)))

(declare-fun b!1017761 () Bool)

(assert (=> b!1017761 (= e!650306 (not (= (head!1870 s!10566) (c!168592 r!15766))))))

(declare-fun b!1017762 () Bool)

(assert (=> b!1017762 (= e!650308 e!650303)))

(declare-fun res!457404 () Bool)

(assert (=> b!1017762 (=> (not res!457404) (not e!650303))))

(assert (=> b!1017762 (= res!457404 (not lt!353830))))

(declare-fun b!1017763 () Bool)

(declare-fun res!457399 () Bool)

(assert (=> b!1017763 (=> res!457399 e!650308)))

(assert (=> b!1017763 (= res!457399 e!650307)))

(declare-fun res!457402 () Bool)

(assert (=> b!1017763 (=> (not res!457402) (not e!650307))))

(assert (=> b!1017763 (= res!457402 lt!353830)))

(assert (= (and d!294101 c!168645) b!1017755))

(assert (= (and d!294101 (not c!168645)) b!1017751))

(assert (= (and d!294101 c!168644) b!1017753))

(assert (= (and d!294101 (not c!168644)) b!1017756))

(assert (= (and b!1017756 c!168643) b!1017758))

(assert (= (and b!1017756 (not c!168643)) b!1017759))

(assert (= (and b!1017759 (not res!457401)) b!1017763))

(assert (= (and b!1017763 res!457402) b!1017754))

(assert (= (and b!1017754 res!457403) b!1017750))

(assert (= (and b!1017750 res!457405) b!1017757))

(assert (= (and b!1017763 (not res!457399)) b!1017762))

(assert (= (and b!1017762 res!457404) b!1017760))

(assert (= (and b!1017760 (not res!457400)) b!1017752))

(assert (= (and b!1017752 (not res!457406)) b!1017761))

(assert (= (or b!1017753 b!1017754 b!1017760) bm!69503))

(assert (=> bm!69503 m!1198747))

(declare-fun m!1198751 () Bool)

(assert (=> b!1017751 m!1198751))

(assert (=> b!1017751 m!1198751))

(declare-fun m!1198753 () Bool)

(assert (=> b!1017751 m!1198753))

(declare-fun m!1198755 () Bool)

(assert (=> b!1017751 m!1198755))

(assert (=> b!1017751 m!1198753))

(assert (=> b!1017751 m!1198755))

(declare-fun m!1198757 () Bool)

(assert (=> b!1017751 m!1198757))

(assert (=> d!294101 m!1198747))

(assert (=> d!294101 m!1198711))

(assert (=> b!1017757 m!1198751))

(assert (=> b!1017750 m!1198755))

(assert (=> b!1017750 m!1198755))

(declare-fun m!1198759 () Bool)

(assert (=> b!1017750 m!1198759))

(assert (=> b!1017761 m!1198751))

(declare-fun m!1198761 () Bool)

(assert (=> b!1017755 m!1198761))

(assert (=> b!1017752 m!1198755))

(assert (=> b!1017752 m!1198755))

(assert (=> b!1017752 m!1198759))

(assert (=> b!1017571 d!294101))

(declare-fun d!294103 () Bool)

(assert (=> d!294103 (= (matchR!1339 r!15766 s!10566) (matchRSpec!602 r!15766 s!10566))))

(declare-fun lt!353833 () Unit!15281)

(declare-fun choose!6429 (Regex!2803 List!10033) Unit!15281)

(assert (=> d!294103 (= lt!353833 (choose!6429 r!15766 s!10566))))

(assert (=> d!294103 (validRegex!1272 r!15766)))

(assert (=> d!294103 (= (mainMatchTheorem!602 r!15766 s!10566) lt!353833)))

(declare-fun bs!246515 () Bool)

(assert (= bs!246515 d!294103))

(assert (=> bs!246515 m!1198707))

(assert (=> bs!246515 m!1198705))

(declare-fun m!1198763 () Bool)

(assert (=> bs!246515 m!1198763))

(assert (=> bs!246515 m!1198711))

(assert (=> b!1017571 d!294103))

(declare-fun bm!69510 () Bool)

(declare-fun call!69516 () Bool)

(declare-fun c!168651 () Bool)

(declare-fun c!168650 () Bool)

(assert (=> bm!69510 (= call!69516 (validRegex!1272 (ite c!168650 (reg!3132 r!15766) (ite c!168651 (regOne!6119 r!15766) (regOne!6118 r!15766)))))))

(declare-fun b!1017782 () Bool)

(declare-fun e!650329 () Bool)

(declare-fun e!650323 () Bool)

(assert (=> b!1017782 (= e!650329 e!650323)))

(assert (=> b!1017782 (= c!168650 ((_ is Star!2803) r!15766))))

(declare-fun b!1017783 () Bool)

(declare-fun e!650325 () Bool)

(assert (=> b!1017783 (= e!650323 e!650325)))

(assert (=> b!1017783 (= c!168651 ((_ is Union!2803) r!15766))))

(declare-fun b!1017784 () Bool)

(declare-fun res!457419 () Bool)

(declare-fun e!650324 () Bool)

(assert (=> b!1017784 (=> res!457419 e!650324)))

(assert (=> b!1017784 (= res!457419 (not ((_ is Concat!4636) r!15766)))))

(assert (=> b!1017784 (= e!650325 e!650324)))

(declare-fun d!294105 () Bool)

(declare-fun res!457420 () Bool)

(assert (=> d!294105 (=> res!457420 e!650329)))

(assert (=> d!294105 (= res!457420 ((_ is ElementMatch!2803) r!15766))))

(assert (=> d!294105 (= (validRegex!1272 r!15766) e!650329)))

(declare-fun bm!69511 () Bool)

(declare-fun call!69517 () Bool)

(assert (=> bm!69511 (= call!69517 call!69516)))

(declare-fun b!1017785 () Bool)

(declare-fun e!650327 () Bool)

(assert (=> b!1017785 (= e!650324 e!650327)))

(declare-fun res!457421 () Bool)

(assert (=> b!1017785 (=> (not res!457421) (not e!650327))))

(assert (=> b!1017785 (= res!457421 call!69517)))

(declare-fun b!1017786 () Bool)

(declare-fun call!69515 () Bool)

(assert (=> b!1017786 (= e!650327 call!69515)))

(declare-fun b!1017787 () Bool)

(declare-fun e!650326 () Bool)

(assert (=> b!1017787 (= e!650326 call!69516)))

(declare-fun b!1017788 () Bool)

(declare-fun res!457417 () Bool)

(declare-fun e!650328 () Bool)

(assert (=> b!1017788 (=> (not res!457417) (not e!650328))))

(assert (=> b!1017788 (= res!457417 call!69517)))

(assert (=> b!1017788 (= e!650325 e!650328)))

(declare-fun b!1017789 () Bool)

(assert (=> b!1017789 (= e!650328 call!69515)))

(declare-fun b!1017790 () Bool)

(assert (=> b!1017790 (= e!650323 e!650326)))

(declare-fun res!457418 () Bool)

(assert (=> b!1017790 (= res!457418 (not (nullable!912 (reg!3132 r!15766))))))

(assert (=> b!1017790 (=> (not res!457418) (not e!650326))))

(declare-fun bm!69512 () Bool)

(assert (=> bm!69512 (= call!69515 (validRegex!1272 (ite c!168651 (regTwo!6119 r!15766) (regTwo!6118 r!15766))))))

(assert (= (and d!294105 (not res!457420)) b!1017782))

(assert (= (and b!1017782 c!168650) b!1017790))

(assert (= (and b!1017782 (not c!168650)) b!1017783))

(assert (= (and b!1017790 res!457418) b!1017787))

(assert (= (and b!1017783 c!168651) b!1017788))

(assert (= (and b!1017783 (not c!168651)) b!1017784))

(assert (= (and b!1017788 res!457417) b!1017789))

(assert (= (and b!1017784 (not res!457419)) b!1017785))

(assert (= (and b!1017785 res!457421) b!1017786))

(assert (= (or b!1017789 b!1017786) bm!69512))

(assert (= (or b!1017788 b!1017785) bm!69511))

(assert (= (or b!1017787 bm!69511) bm!69510))

(declare-fun m!1198765 () Bool)

(assert (=> bm!69510 m!1198765))

(declare-fun m!1198767 () Bool)

(assert (=> b!1017790 m!1198767))

(declare-fun m!1198769 () Bool)

(assert (=> bm!69512 m!1198769))

(assert (=> start!88606 d!294105))

(declare-fun b!1017791 () Bool)

(declare-fun res!457428 () Bool)

(declare-fun e!650335 () Bool)

(assert (=> b!1017791 (=> (not res!457428) (not e!650335))))

(assert (=> b!1017791 (= res!457428 (isEmpty!6367 (tail!1432 s!10566)))))

(declare-fun b!1017792 () Bool)

(declare-fun e!650333 () Bool)

(assert (=> b!1017792 (= e!650333 (matchR!1339 (derivativeStep!716 (removeUselessConcat!384 r!15766) (head!1870 s!10566)) (tail!1432 s!10566)))))

(declare-fun b!1017793 () Bool)

(declare-fun res!457429 () Bool)

(declare-fun e!650334 () Bool)

(assert (=> b!1017793 (=> res!457429 e!650334)))

(assert (=> b!1017793 (= res!457429 (not (isEmpty!6367 (tail!1432 s!10566))))))

(declare-fun d!294107 () Bool)

(declare-fun e!650330 () Bool)

(assert (=> d!294107 e!650330))

(declare-fun c!168653 () Bool)

(assert (=> d!294107 (= c!168653 ((_ is EmptyExpr!2803) (removeUselessConcat!384 r!15766)))))

(declare-fun lt!353834 () Bool)

(assert (=> d!294107 (= lt!353834 e!650333)))

(declare-fun c!168654 () Bool)

(assert (=> d!294107 (= c!168654 (isEmpty!6367 s!10566))))

(assert (=> d!294107 (validRegex!1272 (removeUselessConcat!384 r!15766))))

(assert (=> d!294107 (= (matchR!1339 (removeUselessConcat!384 r!15766) s!10566) lt!353834)))

(declare-fun b!1017794 () Bool)

(declare-fun call!69518 () Bool)

(assert (=> b!1017794 (= e!650330 (= lt!353834 call!69518))))

(declare-fun b!1017795 () Bool)

(declare-fun res!457426 () Bool)

(assert (=> b!1017795 (=> (not res!457426) (not e!650335))))

(assert (=> b!1017795 (= res!457426 (not call!69518))))

(declare-fun b!1017796 () Bool)

(assert (=> b!1017796 (= e!650333 (nullable!912 (removeUselessConcat!384 r!15766)))))

(declare-fun b!1017797 () Bool)

(declare-fun e!650332 () Bool)

(assert (=> b!1017797 (= e!650330 e!650332)))

(declare-fun c!168652 () Bool)

(assert (=> b!1017797 (= c!168652 ((_ is EmptyLang!2803) (removeUselessConcat!384 r!15766)))))

(declare-fun b!1017798 () Bool)

(assert (=> b!1017798 (= e!650335 (= (head!1870 s!10566) (c!168592 (removeUselessConcat!384 r!15766))))))

(declare-fun b!1017799 () Bool)

(assert (=> b!1017799 (= e!650332 (not lt!353834))))

(declare-fun bm!69513 () Bool)

(assert (=> bm!69513 (= call!69518 (isEmpty!6367 s!10566))))

(declare-fun b!1017800 () Bool)

(declare-fun res!457424 () Bool)

(declare-fun e!650336 () Bool)

(assert (=> b!1017800 (=> res!457424 e!650336)))

(assert (=> b!1017800 (= res!457424 (not ((_ is ElementMatch!2803) (removeUselessConcat!384 r!15766))))))

(assert (=> b!1017800 (= e!650332 e!650336)))

(declare-fun b!1017801 () Bool)

(declare-fun e!650331 () Bool)

(assert (=> b!1017801 (= e!650331 e!650334)))

(declare-fun res!457423 () Bool)

(assert (=> b!1017801 (=> res!457423 e!650334)))

(assert (=> b!1017801 (= res!457423 call!69518)))

(declare-fun b!1017802 () Bool)

(assert (=> b!1017802 (= e!650334 (not (= (head!1870 s!10566) (c!168592 (removeUselessConcat!384 r!15766)))))))

(declare-fun b!1017803 () Bool)

(assert (=> b!1017803 (= e!650336 e!650331)))

(declare-fun res!457427 () Bool)

(assert (=> b!1017803 (=> (not res!457427) (not e!650331))))

(assert (=> b!1017803 (= res!457427 (not lt!353834))))

(declare-fun b!1017804 () Bool)

(declare-fun res!457422 () Bool)

(assert (=> b!1017804 (=> res!457422 e!650336)))

(assert (=> b!1017804 (= res!457422 e!650335)))

(declare-fun res!457425 () Bool)

(assert (=> b!1017804 (=> (not res!457425) (not e!650335))))

(assert (=> b!1017804 (= res!457425 lt!353834)))

(assert (= (and d!294107 c!168654) b!1017796))

(assert (= (and d!294107 (not c!168654)) b!1017792))

(assert (= (and d!294107 c!168653) b!1017794))

(assert (= (and d!294107 (not c!168653)) b!1017797))

(assert (= (and b!1017797 c!168652) b!1017799))

(assert (= (and b!1017797 (not c!168652)) b!1017800))

(assert (= (and b!1017800 (not res!457424)) b!1017804))

(assert (= (and b!1017804 res!457425) b!1017795))

(assert (= (and b!1017795 res!457426) b!1017791))

(assert (= (and b!1017791 res!457428) b!1017798))

(assert (= (and b!1017804 (not res!457422)) b!1017803))

(assert (= (and b!1017803 res!457427) b!1017801))

(assert (= (and b!1017801 (not res!457423)) b!1017793))

(assert (= (and b!1017793 (not res!457429)) b!1017802))

(assert (= (or b!1017794 b!1017795 b!1017801) bm!69513))

(assert (=> bm!69513 m!1198747))

(assert (=> b!1017792 m!1198751))

(assert (=> b!1017792 m!1198713))

(assert (=> b!1017792 m!1198751))

(declare-fun m!1198771 () Bool)

(assert (=> b!1017792 m!1198771))

(assert (=> b!1017792 m!1198755))

(assert (=> b!1017792 m!1198771))

(assert (=> b!1017792 m!1198755))

(declare-fun m!1198773 () Bool)

(assert (=> b!1017792 m!1198773))

(assert (=> d!294107 m!1198747))

(assert (=> d!294107 m!1198713))

(declare-fun m!1198775 () Bool)

(assert (=> d!294107 m!1198775))

(assert (=> b!1017798 m!1198751))

(assert (=> b!1017791 m!1198755))

(assert (=> b!1017791 m!1198755))

(assert (=> b!1017791 m!1198759))

(assert (=> b!1017802 m!1198751))

(assert (=> b!1017796 m!1198713))

(declare-fun m!1198777 () Bool)

(assert (=> b!1017796 m!1198777))

(assert (=> b!1017793 m!1198755))

(assert (=> b!1017793 m!1198755))

(assert (=> b!1017793 m!1198759))

(assert (=> b!1017575 d!294107))

(declare-fun b!1017827 () Bool)

(declare-fun c!168668 () Bool)

(assert (=> b!1017827 (= c!168668 ((_ is Star!2803) r!15766))))

(declare-fun e!650353 () Regex!2803)

(declare-fun e!650352 () Regex!2803)

(assert (=> b!1017827 (= e!650353 e!650352)))

(declare-fun b!1017828 () Bool)

(declare-fun e!650351 () Regex!2803)

(declare-fun call!69533 () Regex!2803)

(declare-fun call!69531 () Regex!2803)

(assert (=> b!1017828 (= e!650351 (Concat!4636 call!69533 call!69531))))

(declare-fun c!168665 () Bool)

(declare-fun c!168666 () Bool)

(declare-fun c!168667 () Bool)

(declare-fun call!69532 () Regex!2803)

(declare-fun bm!69524 () Bool)

(assert (=> bm!69524 (= call!69532 (removeUselessConcat!384 (ite c!168665 (regTwo!6118 r!15766) (ite c!168667 (regOne!6118 r!15766) (ite c!168666 (regTwo!6118 r!15766) (regOne!6119 r!15766))))))))

(declare-fun bm!69525 () Bool)

(declare-fun call!69530 () Regex!2803)

(assert (=> bm!69525 (= call!69531 call!69530)))

(declare-fun d!294109 () Bool)

(declare-fun e!650349 () Bool)

(assert (=> d!294109 e!650349))

(declare-fun res!457432 () Bool)

(assert (=> d!294109 (=> (not res!457432) (not e!650349))))

(declare-fun lt!353837 () Regex!2803)

(assert (=> d!294109 (= res!457432 (validRegex!1272 lt!353837))))

(declare-fun e!650350 () Regex!2803)

(assert (=> d!294109 (= lt!353837 e!650350)))

(assert (=> d!294109 (= c!168665 (and ((_ is Concat!4636) r!15766) ((_ is EmptyExpr!2803) (regOne!6118 r!15766))))))

(assert (=> d!294109 (validRegex!1272 r!15766)))

(assert (=> d!294109 (= (removeUselessConcat!384 r!15766) lt!353837)))

(declare-fun b!1017829 () Bool)

(declare-fun call!69529 () Regex!2803)

(assert (=> b!1017829 (= e!650352 (Star!2803 call!69529))))

(declare-fun bm!69526 () Bool)

(declare-fun c!168669 () Bool)

(assert (=> bm!69526 (= call!69533 (removeUselessConcat!384 (ite c!168666 (regOne!6118 r!15766) (ite c!168669 (regTwo!6119 r!15766) (reg!3132 r!15766)))))))

(declare-fun b!1017830 () Bool)

(assert (=> b!1017830 (= e!650352 r!15766)))

(declare-fun b!1017831 () Bool)

(assert (=> b!1017831 (= e!650353 (Union!2803 call!69531 call!69529))))

(declare-fun bm!69527 () Bool)

(assert (=> bm!69527 (= call!69530 call!69532)))

(declare-fun b!1017832 () Bool)

(declare-fun e!650354 () Regex!2803)

(assert (=> b!1017832 (= e!650354 call!69530)))

(declare-fun b!1017833 () Bool)

(assert (=> b!1017833 (= c!168666 ((_ is Concat!4636) r!15766))))

(assert (=> b!1017833 (= e!650354 e!650351)))

(declare-fun b!1017834 () Bool)

(assert (=> b!1017834 (= e!650351 e!650353)))

(assert (=> b!1017834 (= c!168669 ((_ is Union!2803) r!15766))))

(declare-fun b!1017835 () Bool)

(assert (=> b!1017835 (= e!650350 e!650354)))

(assert (=> b!1017835 (= c!168667 (and ((_ is Concat!4636) r!15766) ((_ is EmptyExpr!2803) (regTwo!6118 r!15766))))))

(declare-fun bm!69528 () Bool)

(assert (=> bm!69528 (= call!69529 call!69533)))

(declare-fun b!1017836 () Bool)

(assert (=> b!1017836 (= e!650350 call!69532)))

(declare-fun b!1017837 () Bool)

(assert (=> b!1017837 (= e!650349 (= (nullable!912 lt!353837) (nullable!912 r!15766)))))

(assert (= (and d!294109 c!168665) b!1017836))

(assert (= (and d!294109 (not c!168665)) b!1017835))

(assert (= (and b!1017835 c!168667) b!1017832))

(assert (= (and b!1017835 (not c!168667)) b!1017833))

(assert (= (and b!1017833 c!168666) b!1017828))

(assert (= (and b!1017833 (not c!168666)) b!1017834))

(assert (= (and b!1017834 c!168669) b!1017831))

(assert (= (and b!1017834 (not c!168669)) b!1017827))

(assert (= (and b!1017827 c!168668) b!1017829))

(assert (= (and b!1017827 (not c!168668)) b!1017830))

(assert (= (or b!1017831 b!1017829) bm!69528))

(assert (= (or b!1017828 b!1017831) bm!69525))

(assert (= (or b!1017828 bm!69528) bm!69526))

(assert (= (or b!1017832 bm!69525) bm!69527))

(assert (= (or b!1017836 bm!69527) bm!69524))

(assert (= (and d!294109 res!457432) b!1017837))

(declare-fun m!1198779 () Bool)

(assert (=> bm!69524 m!1198779))

(declare-fun m!1198781 () Bool)

(assert (=> d!294109 m!1198781))

(assert (=> d!294109 m!1198711))

(declare-fun m!1198783 () Bool)

(assert (=> bm!69526 m!1198783))

(declare-fun m!1198785 () Bool)

(assert (=> b!1017837 m!1198785))

(assert (=> b!1017837 m!1198761))

(assert (=> b!1017575 d!294109))

(declare-fun b!1017851 () Bool)

(declare-fun e!650357 () Bool)

(declare-fun tp!309402 () Bool)

(declare-fun tp!309400 () Bool)

(assert (=> b!1017851 (= e!650357 (and tp!309402 tp!309400))))

(declare-fun b!1017850 () Bool)

(declare-fun tp!309401 () Bool)

(assert (=> b!1017850 (= e!650357 tp!309401)))

(declare-fun b!1017848 () Bool)

(assert (=> b!1017848 (= e!650357 tp_is_empty!5249)))

(assert (=> b!1017577 (= tp!309383 e!650357)))

(declare-fun b!1017849 () Bool)

(declare-fun tp!309399 () Bool)

(declare-fun tp!309403 () Bool)

(assert (=> b!1017849 (= e!650357 (and tp!309399 tp!309403))))

(assert (= (and b!1017577 ((_ is ElementMatch!2803) (regOne!6118 r!15766))) b!1017848))

(assert (= (and b!1017577 ((_ is Concat!4636) (regOne!6118 r!15766))) b!1017849))

(assert (= (and b!1017577 ((_ is Star!2803) (regOne!6118 r!15766))) b!1017850))

(assert (= (and b!1017577 ((_ is Union!2803) (regOne!6118 r!15766))) b!1017851))

(declare-fun b!1017855 () Bool)

(declare-fun e!650358 () Bool)

(declare-fun tp!309407 () Bool)

(declare-fun tp!309405 () Bool)

(assert (=> b!1017855 (= e!650358 (and tp!309407 tp!309405))))

(declare-fun b!1017854 () Bool)

(declare-fun tp!309406 () Bool)

(assert (=> b!1017854 (= e!650358 tp!309406)))

(declare-fun b!1017852 () Bool)

(assert (=> b!1017852 (= e!650358 tp_is_empty!5249)))

(assert (=> b!1017577 (= tp!309388 e!650358)))

(declare-fun b!1017853 () Bool)

(declare-fun tp!309404 () Bool)

(declare-fun tp!309408 () Bool)

(assert (=> b!1017853 (= e!650358 (and tp!309404 tp!309408))))

(assert (= (and b!1017577 ((_ is ElementMatch!2803) (regTwo!6118 r!15766))) b!1017852))

(assert (= (and b!1017577 ((_ is Concat!4636) (regTwo!6118 r!15766))) b!1017853))

(assert (= (and b!1017577 ((_ is Star!2803) (regTwo!6118 r!15766))) b!1017854))

(assert (= (and b!1017577 ((_ is Union!2803) (regTwo!6118 r!15766))) b!1017855))

(declare-fun b!1017859 () Bool)

(declare-fun e!650359 () Bool)

(declare-fun tp!309412 () Bool)

(declare-fun tp!309410 () Bool)

(assert (=> b!1017859 (= e!650359 (and tp!309412 tp!309410))))

(declare-fun b!1017858 () Bool)

(declare-fun tp!309411 () Bool)

(assert (=> b!1017858 (= e!650359 tp!309411)))

(declare-fun b!1017856 () Bool)

(assert (=> b!1017856 (= e!650359 tp_is_empty!5249)))

(assert (=> b!1017572 (= tp!309384 e!650359)))

(declare-fun b!1017857 () Bool)

(declare-fun tp!309409 () Bool)

(declare-fun tp!309413 () Bool)

(assert (=> b!1017857 (= e!650359 (and tp!309409 tp!309413))))

(assert (= (and b!1017572 ((_ is ElementMatch!2803) (reg!3132 r!15766))) b!1017856))

(assert (= (and b!1017572 ((_ is Concat!4636) (reg!3132 r!15766))) b!1017857))

(assert (= (and b!1017572 ((_ is Star!2803) (reg!3132 r!15766))) b!1017858))

(assert (= (and b!1017572 ((_ is Union!2803) (reg!3132 r!15766))) b!1017859))

(declare-fun b!1017863 () Bool)

(declare-fun e!650360 () Bool)

(declare-fun tp!309417 () Bool)

(declare-fun tp!309415 () Bool)

(assert (=> b!1017863 (= e!650360 (and tp!309417 tp!309415))))

(declare-fun b!1017862 () Bool)

(declare-fun tp!309416 () Bool)

(assert (=> b!1017862 (= e!650360 tp!309416)))

(declare-fun b!1017860 () Bool)

(assert (=> b!1017860 (= e!650360 tp_is_empty!5249)))

(assert (=> b!1017573 (= tp!309387 e!650360)))

(declare-fun b!1017861 () Bool)

(declare-fun tp!309414 () Bool)

(declare-fun tp!309418 () Bool)

(assert (=> b!1017861 (= e!650360 (and tp!309414 tp!309418))))

(assert (= (and b!1017573 ((_ is ElementMatch!2803) (regOne!6119 r!15766))) b!1017860))

(assert (= (and b!1017573 ((_ is Concat!4636) (regOne!6119 r!15766))) b!1017861))

(assert (= (and b!1017573 ((_ is Star!2803) (regOne!6119 r!15766))) b!1017862))

(assert (= (and b!1017573 ((_ is Union!2803) (regOne!6119 r!15766))) b!1017863))

(declare-fun b!1017867 () Bool)

(declare-fun e!650361 () Bool)

(declare-fun tp!309422 () Bool)

(declare-fun tp!309420 () Bool)

(assert (=> b!1017867 (= e!650361 (and tp!309422 tp!309420))))

(declare-fun b!1017866 () Bool)

(declare-fun tp!309421 () Bool)

(assert (=> b!1017866 (= e!650361 tp!309421)))

(declare-fun b!1017864 () Bool)

(assert (=> b!1017864 (= e!650361 tp_is_empty!5249)))

(assert (=> b!1017573 (= tp!309385 e!650361)))

(declare-fun b!1017865 () Bool)

(declare-fun tp!309419 () Bool)

(declare-fun tp!309423 () Bool)

(assert (=> b!1017865 (= e!650361 (and tp!309419 tp!309423))))

(assert (= (and b!1017573 ((_ is ElementMatch!2803) (regTwo!6119 r!15766))) b!1017864))

(assert (= (and b!1017573 ((_ is Concat!4636) (regTwo!6119 r!15766))) b!1017865))

(assert (= (and b!1017573 ((_ is Star!2803) (regTwo!6119 r!15766))) b!1017866))

(assert (= (and b!1017573 ((_ is Union!2803) (regTwo!6119 r!15766))) b!1017867))

(declare-fun b!1017872 () Bool)

(declare-fun e!650364 () Bool)

(declare-fun tp!309426 () Bool)

(assert (=> b!1017872 (= e!650364 (and tp_is_empty!5249 tp!309426))))

(assert (=> b!1017574 (= tp!309386 e!650364)))

(assert (= (and b!1017574 ((_ is Cons!10017) (t!101079 s!10566))) b!1017872))

(check-sat (not b!1017792) (not b!1017865) (not b!1017862) (not b!1017858) (not b!1017855) (not b!1017802) (not b!1017755) (not b!1017853) (not d!294109) (not b!1017859) (not bm!69500) (not bm!69503) (not b!1017750) (not b!1017854) (not d!294103) (not b!1017751) (not b!1017863) (not b!1017851) (not b!1017872) (not bm!69526) (not b!1017837) (not b!1017798) (not bm!69512) tp_is_empty!5249 (not bm!69510) (not b!1017867) (not b!1017861) (not b!1017796) (not b!1017866) (not bm!69513) (not b!1017793) (not b!1017761) (not b!1017849) (not d!294107) (not b!1017857) (not bm!69499) (not d!294101) (not b!1017715) (not b!1017752) (not bm!69524) (not b!1017790) (not b!1017850) (not b!1017708) (not b!1017757) (not b!1017791))
(check-sat)
