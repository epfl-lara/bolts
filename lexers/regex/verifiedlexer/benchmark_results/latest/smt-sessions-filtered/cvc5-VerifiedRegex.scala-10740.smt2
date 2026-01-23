; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549392 () Bool)

(assert start!549392)

(declare-fun b!5190229 () Bool)

(assert (=> b!5190229 true))

(declare-fun b!5190226 () Bool)

(declare-fun e!3232993 () Bool)

(declare-fun tp_is_empty!38705 () Bool)

(declare-fun tp!1456084 () Bool)

(assert (=> b!5190226 (= e!3232993 (and tp_is_empty!38705 tp!1456084))))

(declare-fun setIsEmpty!32761 () Bool)

(declare-fun setRes!32761 () Bool)

(assert (=> setIsEmpty!32761 setRes!32761))

(declare-fun b!5190227 () Bool)

(declare-fun res!2204556 () Bool)

(declare-fun e!3233000 () Bool)

(assert (=> b!5190227 (=> res!2204556 e!3233000)))

(declare-datatypes ((C!29722 0))(
  ( (C!29723 (val!24563 Int)) )
))
(declare-datatypes ((Regex!14726 0))(
  ( (ElementMatch!14726 (c!894582 C!29722)) (Concat!23571 (regOne!29964 Regex!14726) (regTwo!29964 Regex!14726)) (EmptyExpr!14726) (Star!14726 (reg!15055 Regex!14726)) (EmptyLang!14726) (Union!14726 (regOne!29965 Regex!14726) (regTwo!29965 Regex!14726)) )
))
(declare-fun r!7292 () Regex!14726)

(declare-datatypes ((List!60477 0))(
  ( (Nil!60353) (Cons!60353 (h!66801 Regex!14726) (t!373630 List!60477)) )
))
(declare-datatypes ((Context!8220 0))(
  ( (Context!8221 (exprs!4610 List!60477)) )
))
(declare-datatypes ((List!60478 0))(
  ( (Nil!60354) (Cons!60354 (h!66802 Context!8220) (t!373631 List!60478)) )
))
(declare-fun zl!343 () List!60478)

(declare-fun generalisedConcat!395 (List!60477) Regex!14726)

(assert (=> b!5190227 (= res!2204556 (not (= r!7292 (generalisedConcat!395 (exprs!4610 (h!66802 zl!343))))))))

(declare-fun tp!1456088 () Bool)

(declare-fun setNonEmpty!32761 () Bool)

(declare-fun setElem!32761 () Context!8220)

(declare-fun e!3233001 () Bool)

(declare-fun inv!80063 (Context!8220) Bool)

(assert (=> setNonEmpty!32761 (= setRes!32761 (and tp!1456088 (inv!80063 setElem!32761) e!3233001))))

(declare-fun z!1189 () (Set Context!8220))

(declare-fun setRest!32761 () (Set Context!8220))

(assert (=> setNonEmpty!32761 (= z!1189 (set.union (set.insert setElem!32761 (as set.empty (Set Context!8220))) setRest!32761))))

(declare-fun b!5190228 () Bool)

(declare-fun e!3232991 () Bool)

(declare-fun e!3232988 () Bool)

(assert (=> b!5190228 (= e!3232991 e!3232988)))

(declare-fun res!2204551 () Bool)

(assert (=> b!5190228 (=> res!2204551 e!3232988)))

(declare-fun lt!2137394 () (Set Context!8220))

(declare-fun lt!2137392 () (Set Context!8220))

(assert (=> b!5190228 (= res!2204551 (not (= lt!2137394 lt!2137392)))))

(declare-fun lt!2137387 () (Set Context!8220))

(declare-fun lt!2137389 () (Set Context!8220))

(assert (=> b!5190228 (= lt!2137392 (set.union lt!2137387 lt!2137389))))

(declare-fun lt!2137378 () Context!8220)

(declare-datatypes ((List!60479 0))(
  ( (Nil!60355) (Cons!60355 (h!66803 C!29722) (t!373632 List!60479)) )
))
(declare-fun s!2326 () List!60479)

(declare-fun derivationStepZipperDown!195 (Regex!14726 Context!8220 C!29722) (Set Context!8220))

(assert (=> b!5190228 (= lt!2137389 (derivationStepZipperDown!195 (regTwo!29965 r!7292) lt!2137378 (h!66803 s!2326)))))

(assert (=> b!5190228 (= lt!2137387 (derivationStepZipperDown!195 (regOne!29965 r!7292) lt!2137378 (h!66803 s!2326)))))

(declare-fun e!3232992 () Bool)

(assert (=> b!5190229 (= e!3232988 e!3232992)))

(declare-fun res!2204550 () Bool)

(assert (=> b!5190229 (=> res!2204550 e!3232992)))

(declare-fun derivationStepZipper!1028 ((Set Context!8220) C!29722) (Set Context!8220))

(assert (=> b!5190229 (= res!2204550 (not (= (derivationStepZipper!1028 z!1189 (h!66803 s!2326)) lt!2137392)))))

(declare-fun lambda!259494 () Int)

(declare-fun flatMap!479 ((Set Context!8220) Int) (Set Context!8220))

(declare-fun derivationStepZipperUp!116 (Context!8220 C!29722) (Set Context!8220))

(assert (=> b!5190229 (= (flatMap!479 z!1189 lambda!259494) (derivationStepZipperUp!116 (h!66802 zl!343) (h!66803 s!2326)))))

(declare-datatypes ((Unit!152286 0))(
  ( (Unit!152287) )
))
(declare-fun lt!2137391 () Unit!152286)

(declare-fun lemmaFlatMapOnSingletonSet!11 ((Set Context!8220) Context!8220 Int) Unit!152286)

(assert (=> b!5190229 (= lt!2137391 (lemmaFlatMapOnSingletonSet!11 z!1189 (h!66802 zl!343) lambda!259494))))

(declare-fun b!5190230 () Bool)

(declare-fun e!3232995 () Bool)

(declare-fun e!3232997 () Bool)

(assert (=> b!5190230 (= e!3232995 e!3232997)))

(declare-fun res!2204553 () Bool)

(assert (=> b!5190230 (=> res!2204553 e!3232997)))

(declare-fun lt!2137399 () Bool)

(declare-fun lt!2137400 () Bool)

(declare-fun lt!2137384 () Bool)

(assert (=> b!5190230 (= res!2204553 (or (not (= lt!2137399 lt!2137400)) (not (= lt!2137399 lt!2137384))))))

(assert (=> b!5190230 (= lt!2137400 lt!2137399)))

(declare-fun e!3232998 () Bool)

(assert (=> b!5190230 (= lt!2137399 e!3232998)))

(declare-fun res!2204545 () Bool)

(assert (=> b!5190230 (=> res!2204545 e!3232998)))

(declare-fun matchZipper!1006 ((Set Context!8220) List!60479) Bool)

(assert (=> b!5190230 (= res!2204545 (matchZipper!1006 lt!2137387 (t!373632 s!2326)))))

(declare-fun lt!2137402 () Unit!152286)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!5 ((Set Context!8220) (Set Context!8220) List!60479) Unit!152286)

(assert (=> b!5190230 (= lt!2137402 (lemmaZipperConcatMatchesSameAsBothZippers!5 lt!2137387 lt!2137389 (t!373632 s!2326)))))

(declare-fun b!5190231 () Bool)

(declare-fun e!3232994 () Bool)

(declare-fun tp!1456085 () Bool)

(assert (=> b!5190231 (= e!3232994 tp!1456085)))

(declare-fun b!5190232 () Bool)

(declare-fun res!2204557 () Bool)

(assert (=> b!5190232 (=> res!2204557 e!3233000)))

(assert (=> b!5190232 (= res!2204557 (not (is-Cons!60353 (exprs!4610 (h!66802 zl!343)))))))

(declare-fun res!2204555 () Bool)

(declare-fun e!3232990 () Bool)

(assert (=> start!549392 (=> (not res!2204555) (not e!3232990))))

(declare-fun validRegex!6462 (Regex!14726) Bool)

(assert (=> start!549392 (= res!2204555 (validRegex!6462 r!7292))))

(assert (=> start!549392 e!3232990))

(assert (=> start!549392 e!3232994))

(declare-fun condSetEmpty!32761 () Bool)

(assert (=> start!549392 (= condSetEmpty!32761 (= z!1189 (as set.empty (Set Context!8220))))))

(assert (=> start!549392 setRes!32761))

(declare-fun e!3232999 () Bool)

(assert (=> start!549392 e!3232999))

(assert (=> start!549392 e!3232993))

(declare-fun b!5190233 () Bool)

(declare-fun res!2204554 () Bool)

(assert (=> b!5190233 (=> res!2204554 e!3233000)))

(assert (=> b!5190233 (= res!2204554 (or (is-EmptyExpr!14726 r!7292) (is-EmptyLang!14726 r!7292) (is-ElementMatch!14726 r!7292) (not (is-Union!14726 r!7292))))))

(declare-fun b!5190234 () Bool)

(assert (=> b!5190234 (= e!3232997 (validRegex!6462 (regOne!29965 r!7292)))))

(declare-fun lt!2137381 () Context!8220)

(declare-fun lt!2137397 () (Set Context!8220))

(assert (=> b!5190234 (= (flatMap!479 lt!2137397 lambda!259494) (derivationStepZipperUp!116 lt!2137381 (h!66803 s!2326)))))

(declare-fun lt!2137390 () Unit!152286)

(assert (=> b!5190234 (= lt!2137390 (lemmaFlatMapOnSingletonSet!11 lt!2137397 lt!2137381 lambda!259494))))

(declare-fun lt!2137386 () (Set Context!8220))

(declare-fun lt!2137388 () Context!8220)

(assert (=> b!5190234 (= (flatMap!479 lt!2137386 lambda!259494) (derivationStepZipperUp!116 lt!2137388 (h!66803 s!2326)))))

(declare-fun lt!2137398 () Unit!152286)

(assert (=> b!5190234 (= lt!2137398 (lemmaFlatMapOnSingletonSet!11 lt!2137386 lt!2137388 lambda!259494))))

(declare-fun lt!2137379 () (Set Context!8220))

(assert (=> b!5190234 (= lt!2137379 (derivationStepZipperUp!116 lt!2137381 (h!66803 s!2326)))))

(declare-fun lt!2137395 () (Set Context!8220))

(assert (=> b!5190234 (= lt!2137395 (derivationStepZipperUp!116 lt!2137388 (h!66803 s!2326)))))

(assert (=> b!5190234 (= lt!2137397 (set.insert lt!2137381 (as set.empty (Set Context!8220))))))

(assert (=> b!5190234 (= lt!2137381 (Context!8221 (Cons!60353 (regTwo!29965 r!7292) Nil!60353)))))

(assert (=> b!5190234 (= lt!2137386 (set.insert lt!2137388 (as set.empty (Set Context!8220))))))

(assert (=> b!5190234 (= lt!2137388 (Context!8221 (Cons!60353 (regOne!29965 r!7292) Nil!60353)))))

(declare-fun b!5190235 () Bool)

(assert (=> b!5190235 (= e!3232992 e!3232995)))

(declare-fun res!2204547 () Bool)

(assert (=> b!5190235 (=> res!2204547 e!3232995)))

(assert (=> b!5190235 (= res!2204547 (not (= lt!2137400 lt!2137384)))))

(assert (=> b!5190235 (= lt!2137384 (matchZipper!1006 z!1189 s!2326))))

(assert (=> b!5190235 (= lt!2137400 (matchZipper!1006 lt!2137392 (t!373632 s!2326)))))

(declare-fun b!5190236 () Bool)

(declare-fun e!3232996 () Bool)

(declare-fun tp!1456083 () Bool)

(assert (=> b!5190236 (= e!3232996 tp!1456083)))

(declare-fun b!5190237 () Bool)

(declare-fun res!2204558 () Bool)

(assert (=> b!5190237 (=> res!2204558 e!3233000)))

(declare-fun generalisedUnion!655 (List!60477) Regex!14726)

(declare-fun unfocusZipperList!168 (List!60478) List!60477)

(assert (=> b!5190237 (= res!2204558 (not (= r!7292 (generalisedUnion!655 (unfocusZipperList!168 zl!343)))))))

(declare-fun b!5190238 () Bool)

(declare-fun tp!1456086 () Bool)

(declare-fun tp!1456082 () Bool)

(assert (=> b!5190238 (= e!3232994 (and tp!1456086 tp!1456082))))

(declare-fun b!5190239 () Bool)

(declare-fun e!3232989 () Bool)

(assert (=> b!5190239 (= e!3232989 e!3232991)))

(declare-fun res!2204543 () Bool)

(assert (=> b!5190239 (=> res!2204543 e!3232991)))

(declare-fun lt!2137382 () (Set Context!8220))

(assert (=> b!5190239 (= res!2204543 (not (= lt!2137382 lt!2137394)))))

(assert (=> b!5190239 (= lt!2137394 (derivationStepZipperDown!195 r!7292 lt!2137378 (h!66803 s!2326)))))

(assert (=> b!5190239 (= lt!2137378 (Context!8221 Nil!60353))))

(assert (=> b!5190239 (= lt!2137382 (derivationStepZipperUp!116 (Context!8221 (Cons!60353 r!7292 Nil!60353)) (h!66803 s!2326)))))

(declare-fun b!5190240 () Bool)

(assert (=> b!5190240 (= e!3232998 (matchZipper!1006 lt!2137389 (t!373632 s!2326)))))

(declare-fun b!5190241 () Bool)

(declare-fun tp!1456087 () Bool)

(declare-fun tp!1456089 () Bool)

(assert (=> b!5190241 (= e!3232994 (and tp!1456087 tp!1456089))))

(declare-fun b!5190242 () Bool)

(assert (=> b!5190242 (= e!3232990 (not e!3233000))))

(declare-fun res!2204546 () Bool)

(assert (=> b!5190242 (=> res!2204546 e!3233000)))

(assert (=> b!5190242 (= res!2204546 (not (is-Cons!60354 zl!343)))))

(declare-fun lt!2137385 () Bool)

(declare-fun matchRSpec!1829 (Regex!14726 List!60479) Bool)

(assert (=> b!5190242 (= lt!2137385 (matchRSpec!1829 r!7292 s!2326))))

(declare-fun matchR!6911 (Regex!14726 List!60479) Bool)

(assert (=> b!5190242 (= lt!2137385 (matchR!6911 r!7292 s!2326))))

(declare-fun lt!2137383 () Unit!152286)

(declare-fun mainMatchTheorem!1829 (Regex!14726 List!60479) Unit!152286)

(assert (=> b!5190242 (= lt!2137383 (mainMatchTheorem!1829 r!7292 s!2326))))

(declare-fun b!5190243 () Bool)

(declare-fun res!2204552 () Bool)

(assert (=> b!5190243 (=> res!2204552 e!3233000)))

(declare-fun isEmpty!32307 (List!60478) Bool)

(assert (=> b!5190243 (= res!2204552 (not (isEmpty!32307 (t!373631 zl!343))))))

(declare-fun b!5190244 () Bool)

(declare-fun res!2204549 () Bool)

(assert (=> b!5190244 (=> (not res!2204549) (not e!3232990))))

(declare-fun toList!8510 ((Set Context!8220)) List!60478)

(assert (=> b!5190244 (= res!2204549 (= (toList!8510 z!1189) zl!343))))

(declare-fun b!5190245 () Bool)

(assert (=> b!5190245 (= e!3233000 e!3232989)))

(declare-fun res!2204548 () Bool)

(assert (=> b!5190245 (=> res!2204548 e!3232989)))

(declare-fun lt!2137396 () Bool)

(declare-fun lt!2137393 () Bool)

(assert (=> b!5190245 (= res!2204548 (or (not (= lt!2137385 (or lt!2137393 lt!2137396))) (is-Nil!60355 s!2326)))))

(assert (=> b!5190245 (= lt!2137396 (matchRSpec!1829 (regTwo!29965 r!7292) s!2326))))

(assert (=> b!5190245 (= lt!2137396 (matchR!6911 (regTwo!29965 r!7292) s!2326))))

(declare-fun lt!2137401 () Unit!152286)

(assert (=> b!5190245 (= lt!2137401 (mainMatchTheorem!1829 (regTwo!29965 r!7292) s!2326))))

(assert (=> b!5190245 (= lt!2137393 (matchRSpec!1829 (regOne!29965 r!7292) s!2326))))

(assert (=> b!5190245 (= lt!2137393 (matchR!6911 (regOne!29965 r!7292) s!2326))))

(declare-fun lt!2137380 () Unit!152286)

(assert (=> b!5190245 (= lt!2137380 (mainMatchTheorem!1829 (regOne!29965 r!7292) s!2326))))

(declare-fun b!5190246 () Bool)

(assert (=> b!5190246 (= e!3232994 tp_is_empty!38705)))

(declare-fun b!5190247 () Bool)

(declare-fun tp!1456090 () Bool)

(assert (=> b!5190247 (= e!3233001 tp!1456090)))

(declare-fun b!5190248 () Bool)

(declare-fun res!2204544 () Bool)

(assert (=> b!5190248 (=> (not res!2204544) (not e!3232990))))

(declare-fun unfocusZipper!468 (List!60478) Regex!14726)

(assert (=> b!5190248 (= res!2204544 (= r!7292 (unfocusZipper!468 zl!343)))))

(declare-fun tp!1456091 () Bool)

(declare-fun b!5190249 () Bool)

(assert (=> b!5190249 (= e!3232999 (and (inv!80063 (h!66802 zl!343)) e!3232996 tp!1456091))))

(assert (= (and start!549392 res!2204555) b!5190244))

(assert (= (and b!5190244 res!2204549) b!5190248))

(assert (= (and b!5190248 res!2204544) b!5190242))

(assert (= (and b!5190242 (not res!2204546)) b!5190243))

(assert (= (and b!5190243 (not res!2204552)) b!5190227))

(assert (= (and b!5190227 (not res!2204556)) b!5190232))

(assert (= (and b!5190232 (not res!2204557)) b!5190237))

(assert (= (and b!5190237 (not res!2204558)) b!5190233))

(assert (= (and b!5190233 (not res!2204554)) b!5190245))

(assert (= (and b!5190245 (not res!2204548)) b!5190239))

(assert (= (and b!5190239 (not res!2204543)) b!5190228))

(assert (= (and b!5190228 (not res!2204551)) b!5190229))

(assert (= (and b!5190229 (not res!2204550)) b!5190235))

(assert (= (and b!5190235 (not res!2204547)) b!5190230))

(assert (= (and b!5190230 (not res!2204545)) b!5190240))

(assert (= (and b!5190230 (not res!2204553)) b!5190234))

(assert (= (and start!549392 (is-ElementMatch!14726 r!7292)) b!5190246))

(assert (= (and start!549392 (is-Concat!23571 r!7292)) b!5190238))

(assert (= (and start!549392 (is-Star!14726 r!7292)) b!5190231))

(assert (= (and start!549392 (is-Union!14726 r!7292)) b!5190241))

(assert (= (and start!549392 condSetEmpty!32761) setIsEmpty!32761))

(assert (= (and start!549392 (not condSetEmpty!32761)) setNonEmpty!32761))

(assert (= setNonEmpty!32761 b!5190247))

(assert (= b!5190249 b!5190236))

(assert (= (and start!549392 (is-Cons!60354 zl!343)) b!5190249))

(assert (= (and start!549392 (is-Cons!60355 s!2326)) b!5190226))

(declare-fun m!6246590 () Bool)

(assert (=> start!549392 m!6246590))

(declare-fun m!6246592 () Bool)

(assert (=> b!5190237 m!6246592))

(assert (=> b!5190237 m!6246592))

(declare-fun m!6246594 () Bool)

(assert (=> b!5190237 m!6246594))

(declare-fun m!6246596 () Bool)

(assert (=> setNonEmpty!32761 m!6246596))

(declare-fun m!6246598 () Bool)

(assert (=> b!5190234 m!6246598))

(declare-fun m!6246600 () Bool)

(assert (=> b!5190234 m!6246600))

(declare-fun m!6246602 () Bool)

(assert (=> b!5190234 m!6246602))

(declare-fun m!6246604 () Bool)

(assert (=> b!5190234 m!6246604))

(declare-fun m!6246606 () Bool)

(assert (=> b!5190234 m!6246606))

(declare-fun m!6246608 () Bool)

(assert (=> b!5190234 m!6246608))

(declare-fun m!6246610 () Bool)

(assert (=> b!5190234 m!6246610))

(declare-fun m!6246612 () Bool)

(assert (=> b!5190234 m!6246612))

(declare-fun m!6246614 () Bool)

(assert (=> b!5190234 m!6246614))

(declare-fun m!6246616 () Bool)

(assert (=> b!5190243 m!6246616))

(declare-fun m!6246618 () Bool)

(assert (=> b!5190245 m!6246618))

(declare-fun m!6246620 () Bool)

(assert (=> b!5190245 m!6246620))

(declare-fun m!6246622 () Bool)

(assert (=> b!5190245 m!6246622))

(declare-fun m!6246624 () Bool)

(assert (=> b!5190245 m!6246624))

(declare-fun m!6246626 () Bool)

(assert (=> b!5190245 m!6246626))

(declare-fun m!6246628 () Bool)

(assert (=> b!5190245 m!6246628))

(declare-fun m!6246630 () Bool)

(assert (=> b!5190229 m!6246630))

(declare-fun m!6246632 () Bool)

(assert (=> b!5190229 m!6246632))

(declare-fun m!6246634 () Bool)

(assert (=> b!5190229 m!6246634))

(declare-fun m!6246636 () Bool)

(assert (=> b!5190229 m!6246636))

(declare-fun m!6246638 () Bool)

(assert (=> b!5190235 m!6246638))

(declare-fun m!6246640 () Bool)

(assert (=> b!5190235 m!6246640))

(declare-fun m!6246642 () Bool)

(assert (=> b!5190248 m!6246642))

(declare-fun m!6246644 () Bool)

(assert (=> b!5190227 m!6246644))

(declare-fun m!6246646 () Bool)

(assert (=> b!5190230 m!6246646))

(declare-fun m!6246648 () Bool)

(assert (=> b!5190230 m!6246648))

(declare-fun m!6246650 () Bool)

(assert (=> b!5190249 m!6246650))

(declare-fun m!6246652 () Bool)

(assert (=> b!5190240 m!6246652))

(declare-fun m!6246654 () Bool)

(assert (=> b!5190244 m!6246654))

(declare-fun m!6246656 () Bool)

(assert (=> b!5190228 m!6246656))

(declare-fun m!6246658 () Bool)

(assert (=> b!5190228 m!6246658))

(declare-fun m!6246660 () Bool)

(assert (=> b!5190239 m!6246660))

(declare-fun m!6246662 () Bool)

(assert (=> b!5190239 m!6246662))

(declare-fun m!6246664 () Bool)

(assert (=> b!5190242 m!6246664))

(declare-fun m!6246666 () Bool)

(assert (=> b!5190242 m!6246666))

(declare-fun m!6246668 () Bool)

(assert (=> b!5190242 m!6246668))

(push 1)

(assert (not b!5190235))

(assert (not b!5190241))

(assert (not b!5190239))

(assert tp_is_empty!38705)

(assert (not b!5190245))

(assert (not b!5190242))

(assert (not b!5190243))

(assert (not b!5190226))

(assert (not b!5190244))

(assert (not b!5190229))

(assert (not b!5190238))

(assert (not b!5190227))

(assert (not b!5190234))

(assert (not b!5190231))

(assert (not b!5190240))

(assert (not b!5190249))

(assert (not b!5190228))

(assert (not b!5190230))

(assert (not setNonEmpty!32761))

(assert (not b!5190236))

(assert (not b!5190237))

(assert (not b!5190247))

(assert (not b!5190248))

(assert (not start!549392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5190360 () Bool)

(assert (=> b!5190360 true))

(assert (=> b!5190360 true))

(declare-fun bs!1208546 () Bool)

(declare-fun b!5190362 () Bool)

(assert (= bs!1208546 (and b!5190362 b!5190360)))

(declare-fun lambda!259507 () Int)

(declare-fun lambda!259506 () Int)

(assert (=> bs!1208546 (not (= lambda!259507 lambda!259506))))

(assert (=> b!5190362 true))

(assert (=> b!5190362 true))

(declare-fun b!5190358 () Bool)

(declare-fun e!3233066 () Bool)

(declare-fun call!364853 () Bool)

(assert (=> b!5190358 (= e!3233066 call!364853)))

(declare-fun bm!364848 () Bool)

(declare-fun isEmpty!32309 (List!60479) Bool)

(assert (=> bm!364848 (= call!364853 (isEmpty!32309 s!2326))))

(declare-fun b!5190359 () Bool)

(declare-fun e!3233068 () Bool)

(assert (=> b!5190359 (= e!3233066 e!3233068)))

(declare-fun res!2204623 () Bool)

(assert (=> b!5190359 (= res!2204623 (not (is-EmptyLang!14726 r!7292)))))

(assert (=> b!5190359 (=> (not res!2204623) (not e!3233068))))

(declare-fun e!3233064 () Bool)

(declare-fun call!364852 () Bool)

(assert (=> b!5190360 (= e!3233064 call!364852)))

(declare-fun b!5190361 () Bool)

(declare-fun c!894601 () Bool)

(assert (=> b!5190361 (= c!894601 (is-ElementMatch!14726 r!7292))))

(declare-fun e!3233067 () Bool)

(assert (=> b!5190361 (= e!3233068 e!3233067)))

(declare-fun e!3233063 () Bool)

(assert (=> b!5190362 (= e!3233063 call!364852)))

(declare-fun b!5190363 () Bool)

(declare-fun e!3233065 () Bool)

(declare-fun e!3233062 () Bool)

(assert (=> b!5190363 (= e!3233065 e!3233062)))

(declare-fun res!2204624 () Bool)

(assert (=> b!5190363 (= res!2204624 (matchRSpec!1829 (regOne!29965 r!7292) s!2326))))

(assert (=> b!5190363 (=> res!2204624 e!3233062)))

(declare-fun bm!364847 () Bool)

(declare-fun c!894602 () Bool)

(declare-fun Exists!1915 (Int) Bool)

(assert (=> bm!364847 (= call!364852 (Exists!1915 (ite c!894602 lambda!259506 lambda!259507)))))

(declare-fun d!1676591 () Bool)

(declare-fun c!894599 () Bool)

(assert (=> d!1676591 (= c!894599 (is-EmptyExpr!14726 r!7292))))

(assert (=> d!1676591 (= (matchRSpec!1829 r!7292 s!2326) e!3233066)))

(declare-fun b!5190364 () Bool)

(declare-fun res!2204625 () Bool)

(assert (=> b!5190364 (=> res!2204625 e!3233064)))

(assert (=> b!5190364 (= res!2204625 call!364853)))

(assert (=> b!5190364 (= e!3233063 e!3233064)))

(declare-fun b!5190365 () Bool)

(assert (=> b!5190365 (= e!3233065 e!3233063)))

(assert (=> b!5190365 (= c!894602 (is-Star!14726 r!7292))))

(declare-fun b!5190366 () Bool)

(declare-fun c!894600 () Bool)

(assert (=> b!5190366 (= c!894600 (is-Union!14726 r!7292))))

(assert (=> b!5190366 (= e!3233067 e!3233065)))

(declare-fun b!5190367 () Bool)

(assert (=> b!5190367 (= e!3233062 (matchRSpec!1829 (regTwo!29965 r!7292) s!2326))))

(declare-fun b!5190368 () Bool)

(assert (=> b!5190368 (= e!3233067 (= s!2326 (Cons!60355 (c!894582 r!7292) Nil!60355)))))

(assert (= (and d!1676591 c!894599) b!5190358))

(assert (= (and d!1676591 (not c!894599)) b!5190359))

(assert (= (and b!5190359 res!2204623) b!5190361))

(assert (= (and b!5190361 c!894601) b!5190368))

(assert (= (and b!5190361 (not c!894601)) b!5190366))

(assert (= (and b!5190366 c!894600) b!5190363))

(assert (= (and b!5190366 (not c!894600)) b!5190365))

(assert (= (and b!5190363 (not res!2204624)) b!5190367))

(assert (= (and b!5190365 c!894602) b!5190364))

(assert (= (and b!5190365 (not c!894602)) b!5190362))

(assert (= (and b!5190364 (not res!2204625)) b!5190360))

(assert (= (or b!5190360 b!5190362) bm!364847))

(assert (= (or b!5190358 b!5190364) bm!364848))

(declare-fun m!6246750 () Bool)

(assert (=> bm!364848 m!6246750))

(assert (=> b!5190363 m!6246624))

(declare-fun m!6246752 () Bool)

(assert (=> bm!364847 m!6246752))

(assert (=> b!5190367 m!6246618))

(assert (=> b!5190242 d!1676591))

(declare-fun b!5190401 () Bool)

(declare-fun res!2204643 () Bool)

(declare-fun e!3233085 () Bool)

(assert (=> b!5190401 (=> (not res!2204643) (not e!3233085))))

(declare-fun tail!10214 (List!60479) List!60479)

(assert (=> b!5190401 (= res!2204643 (isEmpty!32309 (tail!10214 s!2326)))))

(declare-fun b!5190402 () Bool)

(declare-fun head!11117 (List!60479) C!29722)

(assert (=> b!5190402 (= e!3233085 (= (head!11117 s!2326) (c!894582 r!7292)))))

(declare-fun b!5190403 () Bool)

(declare-fun e!3233088 () Bool)

(declare-fun lt!2137480 () Bool)

(declare-fun call!364856 () Bool)

(assert (=> b!5190403 (= e!3233088 (= lt!2137480 call!364856))))

(declare-fun bm!364851 () Bool)

(assert (=> bm!364851 (= call!364856 (isEmpty!32309 s!2326))))

(declare-fun b!5190404 () Bool)

(declare-fun e!3233086 () Bool)

(declare-fun e!3233087 () Bool)

(assert (=> b!5190404 (= e!3233086 e!3233087)))

(declare-fun res!2204645 () Bool)

(assert (=> b!5190404 (=> (not res!2204645) (not e!3233087))))

(assert (=> b!5190404 (= res!2204645 (not lt!2137480))))

(declare-fun b!5190405 () Bool)

(declare-fun e!3233084 () Bool)

(declare-fun nullable!4919 (Regex!14726) Bool)

(assert (=> b!5190405 (= e!3233084 (nullable!4919 r!7292))))

(declare-fun b!5190406 () Bool)

(declare-fun e!3233089 () Bool)

(assert (=> b!5190406 (= e!3233087 e!3233089)))

(declare-fun res!2204648 () Bool)

(assert (=> b!5190406 (=> res!2204648 e!3233089)))

(assert (=> b!5190406 (= res!2204648 call!364856)))

(declare-fun b!5190407 () Bool)

(declare-fun e!3233083 () Bool)

(assert (=> b!5190407 (= e!3233088 e!3233083)))

(declare-fun c!894610 () Bool)

(assert (=> b!5190407 (= c!894610 (is-EmptyLang!14726 r!7292))))

(declare-fun b!5190408 () Bool)

(assert (=> b!5190408 (= e!3233083 (not lt!2137480))))

(declare-fun d!1676593 () Bool)

(assert (=> d!1676593 e!3233088))

(declare-fun c!894611 () Bool)

(assert (=> d!1676593 (= c!894611 (is-EmptyExpr!14726 r!7292))))

(assert (=> d!1676593 (= lt!2137480 e!3233084)))

(declare-fun c!894609 () Bool)

(assert (=> d!1676593 (= c!894609 (isEmpty!32309 s!2326))))

(assert (=> d!1676593 (validRegex!6462 r!7292)))

(assert (=> d!1676593 (= (matchR!6911 r!7292 s!2326) lt!2137480)))

(declare-fun b!5190409 () Bool)

(declare-fun res!2204644 () Bool)

(assert (=> b!5190409 (=> res!2204644 e!3233086)))

(assert (=> b!5190409 (= res!2204644 e!3233085)))

(declare-fun res!2204646 () Bool)

(assert (=> b!5190409 (=> (not res!2204646) (not e!3233085))))

(assert (=> b!5190409 (= res!2204646 lt!2137480)))

(declare-fun b!5190410 () Bool)

(declare-fun res!2204642 () Bool)

(assert (=> b!5190410 (=> res!2204642 e!3233086)))

(assert (=> b!5190410 (= res!2204642 (not (is-ElementMatch!14726 r!7292)))))

(assert (=> b!5190410 (= e!3233083 e!3233086)))

(declare-fun b!5190411 () Bool)

(declare-fun res!2204649 () Bool)

(assert (=> b!5190411 (=> res!2204649 e!3233089)))

(assert (=> b!5190411 (= res!2204649 (not (isEmpty!32309 (tail!10214 s!2326))))))

(declare-fun b!5190412 () Bool)

(declare-fun derivativeStep!4021 (Regex!14726 C!29722) Regex!14726)

(assert (=> b!5190412 (= e!3233084 (matchR!6911 (derivativeStep!4021 r!7292 (head!11117 s!2326)) (tail!10214 s!2326)))))

(declare-fun b!5190413 () Bool)

(declare-fun res!2204647 () Bool)

(assert (=> b!5190413 (=> (not res!2204647) (not e!3233085))))

(assert (=> b!5190413 (= res!2204647 (not call!364856))))

(declare-fun b!5190414 () Bool)

(assert (=> b!5190414 (= e!3233089 (not (= (head!11117 s!2326) (c!894582 r!7292))))))

(assert (= (and d!1676593 c!894609) b!5190405))

(assert (= (and d!1676593 (not c!894609)) b!5190412))

(assert (= (and d!1676593 c!894611) b!5190403))

(assert (= (and d!1676593 (not c!894611)) b!5190407))

(assert (= (and b!5190407 c!894610) b!5190408))

(assert (= (and b!5190407 (not c!894610)) b!5190410))

(assert (= (and b!5190410 (not res!2204642)) b!5190409))

(assert (= (and b!5190409 res!2204646) b!5190413))

(assert (= (and b!5190413 res!2204647) b!5190401))

(assert (= (and b!5190401 res!2204643) b!5190402))

(assert (= (and b!5190409 (not res!2204644)) b!5190404))

(assert (= (and b!5190404 res!2204645) b!5190406))

(assert (= (and b!5190406 (not res!2204648)) b!5190411))

(assert (= (and b!5190411 (not res!2204649)) b!5190414))

(assert (= (or b!5190403 b!5190406 b!5190413) bm!364851))

(declare-fun m!6246754 () Bool)

(assert (=> b!5190402 m!6246754))

(declare-fun m!6246756 () Bool)

(assert (=> b!5190401 m!6246756))

(assert (=> b!5190401 m!6246756))

(declare-fun m!6246758 () Bool)

(assert (=> b!5190401 m!6246758))

(assert (=> b!5190412 m!6246754))

(assert (=> b!5190412 m!6246754))

(declare-fun m!6246760 () Bool)

(assert (=> b!5190412 m!6246760))

(assert (=> b!5190412 m!6246756))

(assert (=> b!5190412 m!6246760))

(assert (=> b!5190412 m!6246756))

(declare-fun m!6246762 () Bool)

(assert (=> b!5190412 m!6246762))

(declare-fun m!6246764 () Bool)

(assert (=> b!5190405 m!6246764))

(assert (=> d!1676593 m!6246750))

(assert (=> d!1676593 m!6246590))

(assert (=> b!5190411 m!6246756))

(assert (=> b!5190411 m!6246756))

(assert (=> b!5190411 m!6246758))

(assert (=> bm!364851 m!6246750))

(assert (=> b!5190414 m!6246754))

(assert (=> b!5190242 d!1676593))

(declare-fun d!1676595 () Bool)

(assert (=> d!1676595 (= (matchR!6911 r!7292 s!2326) (matchRSpec!1829 r!7292 s!2326))))

(declare-fun lt!2137483 () Unit!152286)

(declare-fun choose!38552 (Regex!14726 List!60479) Unit!152286)

(assert (=> d!1676595 (= lt!2137483 (choose!38552 r!7292 s!2326))))

(assert (=> d!1676595 (validRegex!6462 r!7292)))

(assert (=> d!1676595 (= (mainMatchTheorem!1829 r!7292 s!2326) lt!2137483)))

(declare-fun bs!1208547 () Bool)

(assert (= bs!1208547 d!1676595))

(assert (=> bs!1208547 m!6246666))

(assert (=> bs!1208547 m!6246664))

(declare-fun m!6246766 () Bool)

(assert (=> bs!1208547 m!6246766))

(assert (=> bs!1208547 m!6246590))

(assert (=> b!5190242 d!1676595))

(declare-fun d!1676597 () Bool)

(declare-fun c!894614 () Bool)

(assert (=> d!1676597 (= c!894614 (isEmpty!32309 (t!373632 s!2326)))))

(declare-fun e!3233092 () Bool)

(assert (=> d!1676597 (= (matchZipper!1006 lt!2137387 (t!373632 s!2326)) e!3233092)))

(declare-fun b!5190419 () Bool)

(declare-fun nullableZipper!1208 ((Set Context!8220)) Bool)

(assert (=> b!5190419 (= e!3233092 (nullableZipper!1208 lt!2137387))))

(declare-fun b!5190420 () Bool)

(assert (=> b!5190420 (= e!3233092 (matchZipper!1006 (derivationStepZipper!1028 lt!2137387 (head!11117 (t!373632 s!2326))) (tail!10214 (t!373632 s!2326))))))

(assert (= (and d!1676597 c!894614) b!5190419))

(assert (= (and d!1676597 (not c!894614)) b!5190420))

(declare-fun m!6246768 () Bool)

(assert (=> d!1676597 m!6246768))

(declare-fun m!6246770 () Bool)

(assert (=> b!5190419 m!6246770))

(declare-fun m!6246772 () Bool)

(assert (=> b!5190420 m!6246772))

(assert (=> b!5190420 m!6246772))

(declare-fun m!6246774 () Bool)

(assert (=> b!5190420 m!6246774))

(declare-fun m!6246776 () Bool)

(assert (=> b!5190420 m!6246776))

(assert (=> b!5190420 m!6246774))

(assert (=> b!5190420 m!6246776))

(declare-fun m!6246778 () Bool)

(assert (=> b!5190420 m!6246778))

(assert (=> b!5190230 d!1676597))

(declare-fun e!3233095 () Bool)

(declare-fun d!1676599 () Bool)

(assert (=> d!1676599 (= (matchZipper!1006 (set.union lt!2137387 lt!2137389) (t!373632 s!2326)) e!3233095)))

(declare-fun res!2204652 () Bool)

(assert (=> d!1676599 (=> res!2204652 e!3233095)))

(assert (=> d!1676599 (= res!2204652 (matchZipper!1006 lt!2137387 (t!373632 s!2326)))))

(declare-fun lt!2137486 () Unit!152286)

(declare-fun choose!38553 ((Set Context!8220) (Set Context!8220) List!60479) Unit!152286)

(assert (=> d!1676599 (= lt!2137486 (choose!38553 lt!2137387 lt!2137389 (t!373632 s!2326)))))

(assert (=> d!1676599 (= (lemmaZipperConcatMatchesSameAsBothZippers!5 lt!2137387 lt!2137389 (t!373632 s!2326)) lt!2137486)))

(declare-fun b!5190423 () Bool)

(assert (=> b!5190423 (= e!3233095 (matchZipper!1006 lt!2137389 (t!373632 s!2326)))))

(assert (= (and d!1676599 (not res!2204652)) b!5190423))

(declare-fun m!6246780 () Bool)

(assert (=> d!1676599 m!6246780))

(assert (=> d!1676599 m!6246646))

(declare-fun m!6246782 () Bool)

(assert (=> d!1676599 m!6246782))

(assert (=> b!5190423 m!6246652))

(assert (=> b!5190230 d!1676599))

(declare-fun d!1676601 () Bool)

(declare-fun c!894615 () Bool)

(assert (=> d!1676601 (= c!894615 (isEmpty!32309 (t!373632 s!2326)))))

(declare-fun e!3233096 () Bool)

(assert (=> d!1676601 (= (matchZipper!1006 lt!2137389 (t!373632 s!2326)) e!3233096)))

(declare-fun b!5190424 () Bool)

(assert (=> b!5190424 (= e!3233096 (nullableZipper!1208 lt!2137389))))

(declare-fun b!5190425 () Bool)

(assert (=> b!5190425 (= e!3233096 (matchZipper!1006 (derivationStepZipper!1028 lt!2137389 (head!11117 (t!373632 s!2326))) (tail!10214 (t!373632 s!2326))))))

(assert (= (and d!1676601 c!894615) b!5190424))

(assert (= (and d!1676601 (not c!894615)) b!5190425))

(assert (=> d!1676601 m!6246768))

(declare-fun m!6246784 () Bool)

(assert (=> b!5190424 m!6246784))

(assert (=> b!5190425 m!6246772))

(assert (=> b!5190425 m!6246772))

(declare-fun m!6246786 () Bool)

(assert (=> b!5190425 m!6246786))

(assert (=> b!5190425 m!6246776))

(assert (=> b!5190425 m!6246786))

(assert (=> b!5190425 m!6246776))

(declare-fun m!6246788 () Bool)

(assert (=> b!5190425 m!6246788))

(assert (=> b!5190240 d!1676601))

(declare-fun bs!1208548 () Bool)

(declare-fun d!1676603 () Bool)

(assert (= bs!1208548 (and d!1676603 b!5190229)))

(declare-fun lambda!259510 () Int)

(assert (=> bs!1208548 (= lambda!259510 lambda!259494)))

(assert (=> d!1676603 true))

(assert (=> d!1676603 (= (derivationStepZipper!1028 z!1189 (h!66803 s!2326)) (flatMap!479 z!1189 lambda!259510))))

(declare-fun bs!1208549 () Bool)

(assert (= bs!1208549 d!1676603))

(declare-fun m!6246790 () Bool)

(assert (=> bs!1208549 m!6246790))

(assert (=> b!5190229 d!1676603))

(declare-fun d!1676605 () Bool)

(declare-fun choose!38554 ((Set Context!8220) Int) (Set Context!8220))

(assert (=> d!1676605 (= (flatMap!479 z!1189 lambda!259494) (choose!38554 z!1189 lambda!259494))))

(declare-fun bs!1208550 () Bool)

(assert (= bs!1208550 d!1676605))

(declare-fun m!6246792 () Bool)

(assert (=> bs!1208550 m!6246792))

(assert (=> b!5190229 d!1676605))

(declare-fun d!1676607 () Bool)

(declare-fun c!894622 () Bool)

(declare-fun e!3233103 () Bool)

(assert (=> d!1676607 (= c!894622 e!3233103)))

(declare-fun res!2204655 () Bool)

(assert (=> d!1676607 (=> (not res!2204655) (not e!3233103))))

(assert (=> d!1676607 (= res!2204655 (is-Cons!60353 (exprs!4610 (h!66802 zl!343))))))

(declare-fun e!3233105 () (Set Context!8220))

(assert (=> d!1676607 (= (derivationStepZipperUp!116 (h!66802 zl!343) (h!66803 s!2326)) e!3233105)))

(declare-fun call!364859 () (Set Context!8220))

(declare-fun b!5190438 () Bool)

(assert (=> b!5190438 (= e!3233105 (set.union call!364859 (derivationStepZipperUp!116 (Context!8221 (t!373630 (exprs!4610 (h!66802 zl!343)))) (h!66803 s!2326))))))

(declare-fun b!5190439 () Bool)

(assert (=> b!5190439 (= e!3233103 (nullable!4919 (h!66801 (exprs!4610 (h!66802 zl!343)))))))

(declare-fun b!5190440 () Bool)

(declare-fun e!3233104 () (Set Context!8220))

(assert (=> b!5190440 (= e!3233105 e!3233104)))

(declare-fun c!894623 () Bool)

(assert (=> b!5190440 (= c!894623 (is-Cons!60353 (exprs!4610 (h!66802 zl!343))))))

(declare-fun b!5190441 () Bool)

(assert (=> b!5190441 (= e!3233104 (as set.empty (Set Context!8220)))))

(declare-fun b!5190442 () Bool)

(assert (=> b!5190442 (= e!3233104 call!364859)))

(declare-fun bm!364854 () Bool)

(assert (=> bm!364854 (= call!364859 (derivationStepZipperDown!195 (h!66801 (exprs!4610 (h!66802 zl!343))) (Context!8221 (t!373630 (exprs!4610 (h!66802 zl!343)))) (h!66803 s!2326)))))

(assert (= (and d!1676607 res!2204655) b!5190439))

(assert (= (and d!1676607 c!894622) b!5190438))

(assert (= (and d!1676607 (not c!894622)) b!5190440))

(assert (= (and b!5190440 c!894623) b!5190442))

(assert (= (and b!5190440 (not c!894623)) b!5190441))

(assert (= (or b!5190438 b!5190442) bm!364854))

(declare-fun m!6246794 () Bool)

(assert (=> b!5190438 m!6246794))

(declare-fun m!6246796 () Bool)

(assert (=> b!5190439 m!6246796))

(declare-fun m!6246798 () Bool)

(assert (=> bm!364854 m!6246798))

(assert (=> b!5190229 d!1676607))

(declare-fun d!1676609 () Bool)

(declare-fun dynLambda!23898 (Int Context!8220) (Set Context!8220))

(assert (=> d!1676609 (= (flatMap!479 z!1189 lambda!259494) (dynLambda!23898 lambda!259494 (h!66802 zl!343)))))

(declare-fun lt!2137489 () Unit!152286)

(declare-fun choose!38555 ((Set Context!8220) Context!8220 Int) Unit!152286)

(assert (=> d!1676609 (= lt!2137489 (choose!38555 z!1189 (h!66802 zl!343) lambda!259494))))

(assert (=> d!1676609 (= z!1189 (set.insert (h!66802 zl!343) (as set.empty (Set Context!8220))))))

(assert (=> d!1676609 (= (lemmaFlatMapOnSingletonSet!11 z!1189 (h!66802 zl!343) lambda!259494) lt!2137489)))

(declare-fun b_lambda!201157 () Bool)

(assert (=> (not b_lambda!201157) (not d!1676609)))

(declare-fun bs!1208551 () Bool)

(assert (= bs!1208551 d!1676609))

(assert (=> bs!1208551 m!6246632))

(declare-fun m!6246800 () Bool)

(assert (=> bs!1208551 m!6246800))

(declare-fun m!6246802 () Bool)

(assert (=> bs!1208551 m!6246802))

(declare-fun m!6246804 () Bool)

(assert (=> bs!1208551 m!6246804))

(assert (=> b!5190229 d!1676609))

(declare-fun bm!364867 () Bool)

(declare-fun c!894638 () Bool)

(declare-fun c!894637 () Bool)

(declare-fun call!364875 () (Set Context!8220))

(declare-fun call!364873 () List!60477)

(declare-fun c!894636 () Bool)

(assert (=> bm!364867 (= call!364875 (derivationStepZipperDown!195 (ite c!894637 (regTwo!29965 r!7292) (ite c!894636 (regTwo!29964 r!7292) (ite c!894638 (regOne!29964 r!7292) (reg!15055 r!7292)))) (ite (or c!894637 c!894636) lt!2137378 (Context!8221 call!364873)) (h!66803 s!2326)))))

(declare-fun d!1676611 () Bool)

(declare-fun c!894635 () Bool)

(assert (=> d!1676611 (= c!894635 (and (is-ElementMatch!14726 r!7292) (= (c!894582 r!7292) (h!66803 s!2326))))))

(declare-fun e!3233123 () (Set Context!8220))

(assert (=> d!1676611 (= (derivationStepZipperDown!195 r!7292 lt!2137378 (h!66803 s!2326)) e!3233123)))

(declare-fun bm!364868 () Bool)

(declare-fun call!364874 () (Set Context!8220))

(declare-fun call!364876 () List!60477)

(assert (=> bm!364868 (= call!364874 (derivationStepZipperDown!195 (ite c!894637 (regOne!29965 r!7292) (regOne!29964 r!7292)) (ite c!894637 lt!2137378 (Context!8221 call!364876)) (h!66803 s!2326)))))

(declare-fun b!5190465 () Bool)

(declare-fun e!3233118 () (Set Context!8220))

(assert (=> b!5190465 (= e!3233123 e!3233118)))

(assert (=> b!5190465 (= c!894637 (is-Union!14726 r!7292))))

(declare-fun b!5190466 () Bool)

(declare-fun e!3233120 () (Set Context!8220))

(assert (=> b!5190466 (= e!3233120 (as set.empty (Set Context!8220)))))

(declare-fun bm!364869 () Bool)

(assert (=> bm!364869 (= call!364873 call!364876)))

(declare-fun b!5190467 () Bool)

(assert (=> b!5190467 (= e!3233118 (set.union call!364874 call!364875))))

(declare-fun b!5190468 () Bool)

(declare-fun call!364872 () (Set Context!8220))

(assert (=> b!5190468 (= e!3233120 call!364872)))

(declare-fun bm!364870 () Bool)

(declare-fun $colon$colon!1256 (List!60477 Regex!14726) List!60477)

(assert (=> bm!364870 (= call!364876 ($colon$colon!1256 (exprs!4610 lt!2137378) (ite (or c!894636 c!894638) (regTwo!29964 r!7292) r!7292)))))

(declare-fun b!5190469 () Bool)

(declare-fun e!3233122 () (Set Context!8220))

(declare-fun e!3233119 () (Set Context!8220))

(assert (=> b!5190469 (= e!3233122 e!3233119)))

(assert (=> b!5190469 (= c!894638 (is-Concat!23571 r!7292))))

(declare-fun bm!364871 () Bool)

(declare-fun call!364877 () (Set Context!8220))

(assert (=> bm!364871 (= call!364872 call!364877)))

(declare-fun bm!364872 () Bool)

(assert (=> bm!364872 (= call!364877 call!364875)))

(declare-fun b!5190470 () Bool)

(declare-fun c!894634 () Bool)

(assert (=> b!5190470 (= c!894634 (is-Star!14726 r!7292))))

(assert (=> b!5190470 (= e!3233119 e!3233120)))

(declare-fun b!5190471 () Bool)

(assert (=> b!5190471 (= e!3233119 call!364872)))

(declare-fun b!5190472 () Bool)

(declare-fun e!3233121 () Bool)

(assert (=> b!5190472 (= e!3233121 (nullable!4919 (regOne!29964 r!7292)))))

(declare-fun b!5190473 () Bool)

(assert (=> b!5190473 (= c!894636 e!3233121)))

(declare-fun res!2204658 () Bool)

(assert (=> b!5190473 (=> (not res!2204658) (not e!3233121))))

(assert (=> b!5190473 (= res!2204658 (is-Concat!23571 r!7292))))

(assert (=> b!5190473 (= e!3233118 e!3233122)))

(declare-fun b!5190474 () Bool)

(assert (=> b!5190474 (= e!3233122 (set.union call!364874 call!364877))))

(declare-fun b!5190475 () Bool)

(assert (=> b!5190475 (= e!3233123 (set.insert lt!2137378 (as set.empty (Set Context!8220))))))

(assert (= (and d!1676611 c!894635) b!5190475))

(assert (= (and d!1676611 (not c!894635)) b!5190465))

(assert (= (and b!5190465 c!894637) b!5190467))

(assert (= (and b!5190465 (not c!894637)) b!5190473))

(assert (= (and b!5190473 res!2204658) b!5190472))

(assert (= (and b!5190473 c!894636) b!5190474))

(assert (= (and b!5190473 (not c!894636)) b!5190469))

(assert (= (and b!5190469 c!894638) b!5190471))

(assert (= (and b!5190469 (not c!894638)) b!5190470))

(assert (= (and b!5190470 c!894634) b!5190468))

(assert (= (and b!5190470 (not c!894634)) b!5190466))

(assert (= (or b!5190471 b!5190468) bm!364869))

(assert (= (or b!5190471 b!5190468) bm!364871))

(assert (= (or b!5190474 bm!364869) bm!364870))

(assert (= (or b!5190474 bm!364871) bm!364872))

(assert (= (or b!5190467 bm!364872) bm!364867))

(assert (= (or b!5190467 b!5190474) bm!364868))

(declare-fun m!6246806 () Bool)

(assert (=> bm!364868 m!6246806))

(declare-fun m!6246808 () Bool)

(assert (=> bm!364867 m!6246808))

(declare-fun m!6246810 () Bool)

(assert (=> bm!364870 m!6246810))

(declare-fun m!6246812 () Bool)

(assert (=> b!5190472 m!6246812))

(declare-fun m!6246814 () Bool)

(assert (=> b!5190475 m!6246814))

(assert (=> b!5190239 d!1676611))

(declare-fun d!1676613 () Bool)

(declare-fun c!894639 () Bool)

(declare-fun e!3233124 () Bool)

(assert (=> d!1676613 (= c!894639 e!3233124)))

(declare-fun res!2204659 () Bool)

(assert (=> d!1676613 (=> (not res!2204659) (not e!3233124))))

(assert (=> d!1676613 (= res!2204659 (is-Cons!60353 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353)))))))

(declare-fun e!3233126 () (Set Context!8220))

(assert (=> d!1676613 (= (derivationStepZipperUp!116 (Context!8221 (Cons!60353 r!7292 Nil!60353)) (h!66803 s!2326)) e!3233126)))

(declare-fun call!364878 () (Set Context!8220))

(declare-fun b!5190476 () Bool)

(assert (=> b!5190476 (= e!3233126 (set.union call!364878 (derivationStepZipperUp!116 (Context!8221 (t!373630 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353))))) (h!66803 s!2326))))))

(declare-fun b!5190477 () Bool)

(assert (=> b!5190477 (= e!3233124 (nullable!4919 (h!66801 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353))))))))

(declare-fun b!5190478 () Bool)

(declare-fun e!3233125 () (Set Context!8220))

(assert (=> b!5190478 (= e!3233126 e!3233125)))

(declare-fun c!894640 () Bool)

(assert (=> b!5190478 (= c!894640 (is-Cons!60353 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353)))))))

(declare-fun b!5190479 () Bool)

(assert (=> b!5190479 (= e!3233125 (as set.empty (Set Context!8220)))))

(declare-fun b!5190480 () Bool)

(assert (=> b!5190480 (= e!3233125 call!364878)))

(declare-fun bm!364873 () Bool)

(assert (=> bm!364873 (= call!364878 (derivationStepZipperDown!195 (h!66801 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353)))) (Context!8221 (t!373630 (exprs!4610 (Context!8221 (Cons!60353 r!7292 Nil!60353))))) (h!66803 s!2326)))))

(assert (= (and d!1676613 res!2204659) b!5190477))

(assert (= (and d!1676613 c!894639) b!5190476))

(assert (= (and d!1676613 (not c!894639)) b!5190478))

(assert (= (and b!5190478 c!894640) b!5190480))

(assert (= (and b!5190478 (not c!894640)) b!5190479))

(assert (= (or b!5190476 b!5190480) bm!364873))

(declare-fun m!6246816 () Bool)

(assert (=> b!5190476 m!6246816))

(declare-fun m!6246818 () Bool)

(assert (=> b!5190477 m!6246818))

(declare-fun m!6246820 () Bool)

(assert (=> bm!364873 m!6246820))

(assert (=> b!5190239 d!1676613))

(declare-fun call!364880 () List!60477)

(declare-fun c!894644 () Bool)

(declare-fun call!364882 () (Set Context!8220))

(declare-fun c!894645 () Bool)

(declare-fun bm!364874 () Bool)

(declare-fun c!894643 () Bool)

(assert (=> bm!364874 (= call!364882 (derivationStepZipperDown!195 (ite c!894644 (regTwo!29965 (regTwo!29965 r!7292)) (ite c!894643 (regTwo!29964 (regTwo!29965 r!7292)) (ite c!894645 (regOne!29964 (regTwo!29965 r!7292)) (reg!15055 (regTwo!29965 r!7292))))) (ite (or c!894644 c!894643) lt!2137378 (Context!8221 call!364880)) (h!66803 s!2326)))))

(declare-fun d!1676615 () Bool)

(declare-fun c!894642 () Bool)

(assert (=> d!1676615 (= c!894642 (and (is-ElementMatch!14726 (regTwo!29965 r!7292)) (= (c!894582 (regTwo!29965 r!7292)) (h!66803 s!2326))))))

(declare-fun e!3233132 () (Set Context!8220))

(assert (=> d!1676615 (= (derivationStepZipperDown!195 (regTwo!29965 r!7292) lt!2137378 (h!66803 s!2326)) e!3233132)))

(declare-fun call!364881 () (Set Context!8220))

(declare-fun bm!364875 () Bool)

(declare-fun call!364883 () List!60477)

(assert (=> bm!364875 (= call!364881 (derivationStepZipperDown!195 (ite c!894644 (regOne!29965 (regTwo!29965 r!7292)) (regOne!29964 (regTwo!29965 r!7292))) (ite c!894644 lt!2137378 (Context!8221 call!364883)) (h!66803 s!2326)))))

(declare-fun b!5190481 () Bool)

(declare-fun e!3233127 () (Set Context!8220))

(assert (=> b!5190481 (= e!3233132 e!3233127)))

(assert (=> b!5190481 (= c!894644 (is-Union!14726 (regTwo!29965 r!7292)))))

(declare-fun b!5190482 () Bool)

(declare-fun e!3233129 () (Set Context!8220))

(assert (=> b!5190482 (= e!3233129 (as set.empty (Set Context!8220)))))

(declare-fun bm!364876 () Bool)

(assert (=> bm!364876 (= call!364880 call!364883)))

(declare-fun b!5190483 () Bool)

(assert (=> b!5190483 (= e!3233127 (set.union call!364881 call!364882))))

(declare-fun b!5190484 () Bool)

(declare-fun call!364879 () (Set Context!8220))

(assert (=> b!5190484 (= e!3233129 call!364879)))

(declare-fun bm!364877 () Bool)

(assert (=> bm!364877 (= call!364883 ($colon$colon!1256 (exprs!4610 lt!2137378) (ite (or c!894643 c!894645) (regTwo!29964 (regTwo!29965 r!7292)) (regTwo!29965 r!7292))))))

(declare-fun b!5190485 () Bool)

(declare-fun e!3233131 () (Set Context!8220))

(declare-fun e!3233128 () (Set Context!8220))

(assert (=> b!5190485 (= e!3233131 e!3233128)))

(assert (=> b!5190485 (= c!894645 (is-Concat!23571 (regTwo!29965 r!7292)))))

(declare-fun bm!364878 () Bool)

(declare-fun call!364884 () (Set Context!8220))

(assert (=> bm!364878 (= call!364879 call!364884)))

(declare-fun bm!364879 () Bool)

(assert (=> bm!364879 (= call!364884 call!364882)))

(declare-fun b!5190486 () Bool)

(declare-fun c!894641 () Bool)

(assert (=> b!5190486 (= c!894641 (is-Star!14726 (regTwo!29965 r!7292)))))

(assert (=> b!5190486 (= e!3233128 e!3233129)))

(declare-fun b!5190487 () Bool)

(assert (=> b!5190487 (= e!3233128 call!364879)))

(declare-fun b!5190488 () Bool)

(declare-fun e!3233130 () Bool)

(assert (=> b!5190488 (= e!3233130 (nullable!4919 (regOne!29964 (regTwo!29965 r!7292))))))

(declare-fun b!5190489 () Bool)

(assert (=> b!5190489 (= c!894643 e!3233130)))

(declare-fun res!2204660 () Bool)

(assert (=> b!5190489 (=> (not res!2204660) (not e!3233130))))

(assert (=> b!5190489 (= res!2204660 (is-Concat!23571 (regTwo!29965 r!7292)))))

(assert (=> b!5190489 (= e!3233127 e!3233131)))

(declare-fun b!5190490 () Bool)

(assert (=> b!5190490 (= e!3233131 (set.union call!364881 call!364884))))

(declare-fun b!5190491 () Bool)

(assert (=> b!5190491 (= e!3233132 (set.insert lt!2137378 (as set.empty (Set Context!8220))))))

(assert (= (and d!1676615 c!894642) b!5190491))

(assert (= (and d!1676615 (not c!894642)) b!5190481))

(assert (= (and b!5190481 c!894644) b!5190483))

(assert (= (and b!5190481 (not c!894644)) b!5190489))

(assert (= (and b!5190489 res!2204660) b!5190488))

(assert (= (and b!5190489 c!894643) b!5190490))

(assert (= (and b!5190489 (not c!894643)) b!5190485))

(assert (= (and b!5190485 c!894645) b!5190487))

(assert (= (and b!5190485 (not c!894645)) b!5190486))

(assert (= (and b!5190486 c!894641) b!5190484))

(assert (= (and b!5190486 (not c!894641)) b!5190482))

(assert (= (or b!5190487 b!5190484) bm!364876))

(assert (= (or b!5190487 b!5190484) bm!364878))

(assert (= (or b!5190490 bm!364876) bm!364877))

(assert (= (or b!5190490 bm!364878) bm!364879))

(assert (= (or b!5190483 bm!364879) bm!364874))

(assert (= (or b!5190483 b!5190490) bm!364875))

(declare-fun m!6246822 () Bool)

(assert (=> bm!364875 m!6246822))

(declare-fun m!6246824 () Bool)

(assert (=> bm!364874 m!6246824))

(declare-fun m!6246826 () Bool)

(assert (=> bm!364877 m!6246826))

(declare-fun m!6246828 () Bool)

(assert (=> b!5190488 m!6246828))

(assert (=> b!5190491 m!6246814))

(assert (=> b!5190228 d!1676615))

(declare-fun c!894648 () Bool)

(declare-fun call!364888 () (Set Context!8220))

(declare-fun c!894649 () Bool)

(declare-fun call!364886 () List!60477)

(declare-fun bm!364880 () Bool)

(declare-fun c!894650 () Bool)

(assert (=> bm!364880 (= call!364888 (derivationStepZipperDown!195 (ite c!894649 (regTwo!29965 (regOne!29965 r!7292)) (ite c!894648 (regTwo!29964 (regOne!29965 r!7292)) (ite c!894650 (regOne!29964 (regOne!29965 r!7292)) (reg!15055 (regOne!29965 r!7292))))) (ite (or c!894649 c!894648) lt!2137378 (Context!8221 call!364886)) (h!66803 s!2326)))))

(declare-fun d!1676617 () Bool)

(declare-fun c!894647 () Bool)

(assert (=> d!1676617 (= c!894647 (and (is-ElementMatch!14726 (regOne!29965 r!7292)) (= (c!894582 (regOne!29965 r!7292)) (h!66803 s!2326))))))

(declare-fun e!3233138 () (Set Context!8220))

(assert (=> d!1676617 (= (derivationStepZipperDown!195 (regOne!29965 r!7292) lt!2137378 (h!66803 s!2326)) e!3233138)))

(declare-fun bm!364881 () Bool)

(declare-fun call!364887 () (Set Context!8220))

(declare-fun call!364889 () List!60477)

(assert (=> bm!364881 (= call!364887 (derivationStepZipperDown!195 (ite c!894649 (regOne!29965 (regOne!29965 r!7292)) (regOne!29964 (regOne!29965 r!7292))) (ite c!894649 lt!2137378 (Context!8221 call!364889)) (h!66803 s!2326)))))

(declare-fun b!5190492 () Bool)

(declare-fun e!3233133 () (Set Context!8220))

(assert (=> b!5190492 (= e!3233138 e!3233133)))

(assert (=> b!5190492 (= c!894649 (is-Union!14726 (regOne!29965 r!7292)))))

(declare-fun b!5190493 () Bool)

(declare-fun e!3233135 () (Set Context!8220))

(assert (=> b!5190493 (= e!3233135 (as set.empty (Set Context!8220)))))

(declare-fun bm!364882 () Bool)

(assert (=> bm!364882 (= call!364886 call!364889)))

(declare-fun b!5190494 () Bool)

(assert (=> b!5190494 (= e!3233133 (set.union call!364887 call!364888))))

(declare-fun b!5190495 () Bool)

(declare-fun call!364885 () (Set Context!8220))

(assert (=> b!5190495 (= e!3233135 call!364885)))

(declare-fun bm!364883 () Bool)

(assert (=> bm!364883 (= call!364889 ($colon$colon!1256 (exprs!4610 lt!2137378) (ite (or c!894648 c!894650) (regTwo!29964 (regOne!29965 r!7292)) (regOne!29965 r!7292))))))

(declare-fun b!5190496 () Bool)

(declare-fun e!3233137 () (Set Context!8220))

(declare-fun e!3233134 () (Set Context!8220))

(assert (=> b!5190496 (= e!3233137 e!3233134)))

(assert (=> b!5190496 (= c!894650 (is-Concat!23571 (regOne!29965 r!7292)))))

(declare-fun bm!364884 () Bool)

(declare-fun call!364890 () (Set Context!8220))

(assert (=> bm!364884 (= call!364885 call!364890)))

(declare-fun bm!364885 () Bool)

(assert (=> bm!364885 (= call!364890 call!364888)))

(declare-fun b!5190497 () Bool)

(declare-fun c!894646 () Bool)

(assert (=> b!5190497 (= c!894646 (is-Star!14726 (regOne!29965 r!7292)))))

(assert (=> b!5190497 (= e!3233134 e!3233135)))

(declare-fun b!5190498 () Bool)

(assert (=> b!5190498 (= e!3233134 call!364885)))

(declare-fun b!5190499 () Bool)

(declare-fun e!3233136 () Bool)

(assert (=> b!5190499 (= e!3233136 (nullable!4919 (regOne!29964 (regOne!29965 r!7292))))))

(declare-fun b!5190500 () Bool)

(assert (=> b!5190500 (= c!894648 e!3233136)))

(declare-fun res!2204661 () Bool)

(assert (=> b!5190500 (=> (not res!2204661) (not e!3233136))))

(assert (=> b!5190500 (= res!2204661 (is-Concat!23571 (regOne!29965 r!7292)))))

(assert (=> b!5190500 (= e!3233133 e!3233137)))

(declare-fun b!5190501 () Bool)

(assert (=> b!5190501 (= e!3233137 (set.union call!364887 call!364890))))

(declare-fun b!5190502 () Bool)

(assert (=> b!5190502 (= e!3233138 (set.insert lt!2137378 (as set.empty (Set Context!8220))))))

(assert (= (and d!1676617 c!894647) b!5190502))

(assert (= (and d!1676617 (not c!894647)) b!5190492))

(assert (= (and b!5190492 c!894649) b!5190494))

(assert (= (and b!5190492 (not c!894649)) b!5190500))

(assert (= (and b!5190500 res!2204661) b!5190499))

(assert (= (and b!5190500 c!894648) b!5190501))

(assert (= (and b!5190500 (not c!894648)) b!5190496))

(assert (= (and b!5190496 c!894650) b!5190498))

(assert (= (and b!5190496 (not c!894650)) b!5190497))

(assert (= (and b!5190497 c!894646) b!5190495))

(assert (= (and b!5190497 (not c!894646)) b!5190493))

(assert (= (or b!5190498 b!5190495) bm!364882))

(assert (= (or b!5190498 b!5190495) bm!364884))

(assert (= (or b!5190501 bm!364882) bm!364883))

(assert (= (or b!5190501 bm!364884) bm!364885))

(assert (= (or b!5190494 bm!364885) bm!364880))

(assert (= (or b!5190494 b!5190501) bm!364881))

(declare-fun m!6246830 () Bool)

(assert (=> bm!364881 m!6246830))

(declare-fun m!6246832 () Bool)

(assert (=> bm!364880 m!6246832))

(declare-fun m!6246834 () Bool)

(assert (=> bm!364883 m!6246834))

(declare-fun m!6246836 () Bool)

(assert (=> b!5190499 m!6246836))

(assert (=> b!5190502 m!6246814))

(assert (=> b!5190228 d!1676617))

(declare-fun d!1676619 () Bool)

(declare-fun lambda!259513 () Int)

(declare-fun forall!14207 (List!60477 Int) Bool)

(assert (=> d!1676619 (= (inv!80063 (h!66802 zl!343)) (forall!14207 (exprs!4610 (h!66802 zl!343)) lambda!259513))))

(declare-fun bs!1208552 () Bool)

(assert (= bs!1208552 d!1676619))

(declare-fun m!6246838 () Bool)

(assert (=> bs!1208552 m!6246838))

(assert (=> b!5190249 d!1676619))

(declare-fun bs!1208553 () Bool)

(declare-fun d!1676621 () Bool)

(assert (= bs!1208553 (and d!1676621 d!1676619)))

(declare-fun lambda!259514 () Int)

(assert (=> bs!1208553 (= lambda!259514 lambda!259513)))

(assert (=> d!1676621 (= (inv!80063 setElem!32761) (forall!14207 (exprs!4610 setElem!32761) lambda!259514))))

(declare-fun bs!1208554 () Bool)

(assert (= bs!1208554 d!1676621))

(declare-fun m!6246840 () Bool)

(assert (=> bs!1208554 m!6246840))

(assert (=> setNonEmpty!32761 d!1676621))

(declare-fun d!1676623 () Bool)

(declare-fun lt!2137492 () Regex!14726)

(assert (=> d!1676623 (validRegex!6462 lt!2137492)))

(assert (=> d!1676623 (= lt!2137492 (generalisedUnion!655 (unfocusZipperList!168 zl!343)))))

(assert (=> d!1676623 (= (unfocusZipper!468 zl!343) lt!2137492)))

(declare-fun bs!1208555 () Bool)

(assert (= bs!1208555 d!1676623))

(declare-fun m!6246842 () Bool)

(assert (=> bs!1208555 m!6246842))

(assert (=> bs!1208555 m!6246592))

(assert (=> bs!1208555 m!6246592))

(assert (=> bs!1208555 m!6246594))

(assert (=> b!5190248 d!1676623))

(declare-fun bs!1208556 () Bool)

(declare-fun d!1676625 () Bool)

(assert (= bs!1208556 (and d!1676625 d!1676619)))

(declare-fun lambda!259517 () Int)

(assert (=> bs!1208556 (= lambda!259517 lambda!259513)))

(declare-fun bs!1208557 () Bool)

(assert (= bs!1208557 (and d!1676625 d!1676621)))

(assert (=> bs!1208557 (= lambda!259517 lambda!259514)))

(declare-fun b!5190523 () Bool)

(declare-fun e!3233155 () Regex!14726)

(assert (=> b!5190523 (= e!3233155 (h!66801 (unfocusZipperList!168 zl!343)))))

(declare-fun b!5190524 () Bool)

(declare-fun e!3233154 () Bool)

(declare-fun lt!2137495 () Regex!14726)

(declare-fun isUnion!177 (Regex!14726) Bool)

(assert (=> b!5190524 (= e!3233154 (isUnion!177 lt!2137495))))

(declare-fun b!5190525 () Bool)

(declare-fun head!11118 (List!60477) Regex!14726)

(assert (=> b!5190525 (= e!3233154 (= lt!2137495 (head!11118 (unfocusZipperList!168 zl!343))))))

(declare-fun b!5190526 () Bool)

(declare-fun e!3233151 () Bool)

(declare-fun isEmpty!32310 (List!60477) Bool)

(assert (=> b!5190526 (= e!3233151 (isEmpty!32310 (t!373630 (unfocusZipperList!168 zl!343))))))

(declare-fun b!5190527 () Bool)

(declare-fun e!3233156 () Bool)

(declare-fun e!3233153 () Bool)

(assert (=> b!5190527 (= e!3233156 e!3233153)))

(declare-fun c!894660 () Bool)

(assert (=> b!5190527 (= c!894660 (isEmpty!32310 (unfocusZipperList!168 zl!343)))))

(assert (=> d!1676625 e!3233156))

(declare-fun res!2204667 () Bool)

(assert (=> d!1676625 (=> (not res!2204667) (not e!3233156))))

(assert (=> d!1676625 (= res!2204667 (validRegex!6462 lt!2137495))))

(assert (=> d!1676625 (= lt!2137495 e!3233155)))

(declare-fun c!894661 () Bool)

(assert (=> d!1676625 (= c!894661 e!3233151)))

(declare-fun res!2204666 () Bool)

(assert (=> d!1676625 (=> (not res!2204666) (not e!3233151))))

(assert (=> d!1676625 (= res!2204666 (is-Cons!60353 (unfocusZipperList!168 zl!343)))))

(assert (=> d!1676625 (forall!14207 (unfocusZipperList!168 zl!343) lambda!259517)))

(assert (=> d!1676625 (= (generalisedUnion!655 (unfocusZipperList!168 zl!343)) lt!2137495)))

(declare-fun b!5190528 () Bool)

(declare-fun isEmptyLang!745 (Regex!14726) Bool)

(assert (=> b!5190528 (= e!3233153 (isEmptyLang!745 lt!2137495))))

(declare-fun b!5190529 () Bool)

(declare-fun e!3233152 () Regex!14726)

(assert (=> b!5190529 (= e!3233152 (Union!14726 (h!66801 (unfocusZipperList!168 zl!343)) (generalisedUnion!655 (t!373630 (unfocusZipperList!168 zl!343)))))))

(declare-fun b!5190530 () Bool)

(assert (=> b!5190530 (= e!3233152 EmptyLang!14726)))

(declare-fun b!5190531 () Bool)

(assert (=> b!5190531 (= e!3233155 e!3233152)))

(declare-fun c!894662 () Bool)

(assert (=> b!5190531 (= c!894662 (is-Cons!60353 (unfocusZipperList!168 zl!343)))))

(declare-fun b!5190532 () Bool)

(assert (=> b!5190532 (= e!3233153 e!3233154)))

(declare-fun c!894659 () Bool)

(declare-fun tail!10215 (List!60477) List!60477)

(assert (=> b!5190532 (= c!894659 (isEmpty!32310 (tail!10215 (unfocusZipperList!168 zl!343))))))

(assert (= (and d!1676625 res!2204666) b!5190526))

(assert (= (and d!1676625 c!894661) b!5190523))

(assert (= (and d!1676625 (not c!894661)) b!5190531))

(assert (= (and b!5190531 c!894662) b!5190529))

(assert (= (and b!5190531 (not c!894662)) b!5190530))

(assert (= (and d!1676625 res!2204667) b!5190527))

(assert (= (and b!5190527 c!894660) b!5190528))

(assert (= (and b!5190527 (not c!894660)) b!5190532))

(assert (= (and b!5190532 c!894659) b!5190525))

(assert (= (and b!5190532 (not c!894659)) b!5190524))

(declare-fun m!6246844 () Bool)

(assert (=> b!5190526 m!6246844))

(declare-fun m!6246846 () Bool)

(assert (=> b!5190528 m!6246846))

(declare-fun m!6246848 () Bool)

(assert (=> d!1676625 m!6246848))

(assert (=> d!1676625 m!6246592))

(declare-fun m!6246850 () Bool)

(assert (=> d!1676625 m!6246850))

(declare-fun m!6246852 () Bool)

(assert (=> b!5190529 m!6246852))

(declare-fun m!6246854 () Bool)

(assert (=> b!5190524 m!6246854))

(assert (=> b!5190532 m!6246592))

(declare-fun m!6246856 () Bool)

(assert (=> b!5190532 m!6246856))

(assert (=> b!5190532 m!6246856))

(declare-fun m!6246858 () Bool)

(assert (=> b!5190532 m!6246858))

(assert (=> b!5190525 m!6246592))

(declare-fun m!6246860 () Bool)

(assert (=> b!5190525 m!6246860))

(assert (=> b!5190527 m!6246592))

(declare-fun m!6246862 () Bool)

(assert (=> b!5190527 m!6246862))

(assert (=> b!5190237 d!1676625))

(declare-fun bs!1208558 () Bool)

(declare-fun d!1676627 () Bool)

(assert (= bs!1208558 (and d!1676627 d!1676619)))

(declare-fun lambda!259520 () Int)

(assert (=> bs!1208558 (= lambda!259520 lambda!259513)))

(declare-fun bs!1208559 () Bool)

(assert (= bs!1208559 (and d!1676627 d!1676621)))

(assert (=> bs!1208559 (= lambda!259520 lambda!259514)))

(declare-fun bs!1208560 () Bool)

(assert (= bs!1208560 (and d!1676627 d!1676625)))

(assert (=> bs!1208560 (= lambda!259520 lambda!259517)))

(declare-fun lt!2137498 () List!60477)

(assert (=> d!1676627 (forall!14207 lt!2137498 lambda!259520)))

(declare-fun e!3233159 () List!60477)

(assert (=> d!1676627 (= lt!2137498 e!3233159)))

(declare-fun c!894665 () Bool)

(assert (=> d!1676627 (= c!894665 (is-Cons!60354 zl!343))))

(assert (=> d!1676627 (= (unfocusZipperList!168 zl!343) lt!2137498)))

(declare-fun b!5190537 () Bool)

(assert (=> b!5190537 (= e!3233159 (Cons!60353 (generalisedConcat!395 (exprs!4610 (h!66802 zl!343))) (unfocusZipperList!168 (t!373631 zl!343))))))

(declare-fun b!5190538 () Bool)

(assert (=> b!5190538 (= e!3233159 Nil!60353)))

(assert (= (and d!1676627 c!894665) b!5190537))

(assert (= (and d!1676627 (not c!894665)) b!5190538))

(declare-fun m!6246864 () Bool)

(assert (=> d!1676627 m!6246864))

(assert (=> b!5190537 m!6246644))

(declare-fun m!6246866 () Bool)

(assert (=> b!5190537 m!6246866))

(assert (=> b!5190237 d!1676627))

(declare-fun bs!1208561 () Bool)

(declare-fun d!1676629 () Bool)

(assert (= bs!1208561 (and d!1676629 d!1676619)))

(declare-fun lambda!259523 () Int)

(assert (=> bs!1208561 (= lambda!259523 lambda!259513)))

(declare-fun bs!1208562 () Bool)

(assert (= bs!1208562 (and d!1676629 d!1676621)))

(assert (=> bs!1208562 (= lambda!259523 lambda!259514)))

(declare-fun bs!1208563 () Bool)

(assert (= bs!1208563 (and d!1676629 d!1676625)))

(assert (=> bs!1208563 (= lambda!259523 lambda!259517)))

(declare-fun bs!1208564 () Bool)

(assert (= bs!1208564 (and d!1676629 d!1676627)))

(assert (=> bs!1208564 (= lambda!259523 lambda!259520)))

(declare-fun b!5190559 () Bool)

(declare-fun e!3233173 () Bool)

(declare-fun lt!2137501 () Regex!14726)

(assert (=> b!5190559 (= e!3233173 (= lt!2137501 (head!11118 (exprs!4610 (h!66802 zl!343)))))))

(declare-fun b!5190560 () Bool)

(declare-fun isConcat!258 (Regex!14726) Bool)

(assert (=> b!5190560 (= e!3233173 (isConcat!258 lt!2137501))))

(declare-fun b!5190561 () Bool)

(declare-fun e!3233175 () Regex!14726)

(assert (=> b!5190561 (= e!3233175 (h!66801 (exprs!4610 (h!66802 zl!343))))))

(declare-fun b!5190562 () Bool)

(declare-fun e!3233172 () Bool)

(declare-fun e!3233174 () Bool)

(assert (=> b!5190562 (= e!3233172 e!3233174)))

(declare-fun c!894674 () Bool)

(assert (=> b!5190562 (= c!894674 (isEmpty!32310 (exprs!4610 (h!66802 zl!343))))))

(declare-fun b!5190563 () Bool)

(declare-fun isEmptyExpr!735 (Regex!14726) Bool)

(assert (=> b!5190563 (= e!3233174 (isEmptyExpr!735 lt!2137501))))

(declare-fun b!5190564 () Bool)

(assert (=> b!5190564 (= e!3233174 e!3233173)))

(declare-fun c!894675 () Bool)

(assert (=> b!5190564 (= c!894675 (isEmpty!32310 (tail!10215 (exprs!4610 (h!66802 zl!343)))))))

(assert (=> d!1676629 e!3233172))

(declare-fun res!2204672 () Bool)

(assert (=> d!1676629 (=> (not res!2204672) (not e!3233172))))

(assert (=> d!1676629 (= res!2204672 (validRegex!6462 lt!2137501))))

(assert (=> d!1676629 (= lt!2137501 e!3233175)))

(declare-fun c!894677 () Bool)

(declare-fun e!3233177 () Bool)

(assert (=> d!1676629 (= c!894677 e!3233177)))

(declare-fun res!2204673 () Bool)

(assert (=> d!1676629 (=> (not res!2204673) (not e!3233177))))

(assert (=> d!1676629 (= res!2204673 (is-Cons!60353 (exprs!4610 (h!66802 zl!343))))))

(assert (=> d!1676629 (forall!14207 (exprs!4610 (h!66802 zl!343)) lambda!259523)))

(assert (=> d!1676629 (= (generalisedConcat!395 (exprs!4610 (h!66802 zl!343))) lt!2137501)))

(declare-fun b!5190565 () Bool)

(declare-fun e!3233176 () Regex!14726)

(assert (=> b!5190565 (= e!3233176 EmptyExpr!14726)))

(declare-fun b!5190566 () Bool)

(assert (=> b!5190566 (= e!3233175 e!3233176)))

(declare-fun c!894676 () Bool)

(assert (=> b!5190566 (= c!894676 (is-Cons!60353 (exprs!4610 (h!66802 zl!343))))))

(declare-fun b!5190567 () Bool)

(assert (=> b!5190567 (= e!3233177 (isEmpty!32310 (t!373630 (exprs!4610 (h!66802 zl!343)))))))

(declare-fun b!5190568 () Bool)

(assert (=> b!5190568 (= e!3233176 (Concat!23571 (h!66801 (exprs!4610 (h!66802 zl!343))) (generalisedConcat!395 (t!373630 (exprs!4610 (h!66802 zl!343))))))))

(assert (= (and d!1676629 res!2204673) b!5190567))

(assert (= (and d!1676629 c!894677) b!5190561))

(assert (= (and d!1676629 (not c!894677)) b!5190566))

(assert (= (and b!5190566 c!894676) b!5190568))

(assert (= (and b!5190566 (not c!894676)) b!5190565))

(assert (= (and d!1676629 res!2204672) b!5190562))

(assert (= (and b!5190562 c!894674) b!5190563))

(assert (= (and b!5190562 (not c!894674)) b!5190564))

(assert (= (and b!5190564 c!894675) b!5190559))

(assert (= (and b!5190564 (not c!894675)) b!5190560))

(declare-fun m!6246868 () Bool)

(assert (=> b!5190568 m!6246868))

(declare-fun m!6246870 () Bool)

(assert (=> b!5190564 m!6246870))

(assert (=> b!5190564 m!6246870))

(declare-fun m!6246872 () Bool)

(assert (=> b!5190564 m!6246872))

(declare-fun m!6246874 () Bool)

(assert (=> b!5190563 m!6246874))

(declare-fun m!6246876 () Bool)

(assert (=> b!5190560 m!6246876))

(declare-fun m!6246878 () Bool)

(assert (=> d!1676629 m!6246878))

(declare-fun m!6246880 () Bool)

(assert (=> d!1676629 m!6246880))

(declare-fun m!6246882 () Bool)

(assert (=> b!5190567 m!6246882))

(declare-fun m!6246884 () Bool)

(assert (=> b!5190562 m!6246884))

(declare-fun m!6246886 () Bool)

(assert (=> b!5190559 m!6246886))

(assert (=> b!5190227 d!1676629))

(declare-fun d!1676631 () Bool)

(declare-fun c!894678 () Bool)

(assert (=> d!1676631 (= c!894678 (isEmpty!32309 s!2326))))

(declare-fun e!3233178 () Bool)

(assert (=> d!1676631 (= (matchZipper!1006 z!1189 s!2326) e!3233178)))

(declare-fun b!5190569 () Bool)

(assert (=> b!5190569 (= e!3233178 (nullableZipper!1208 z!1189))))

(declare-fun b!5190570 () Bool)

(assert (=> b!5190570 (= e!3233178 (matchZipper!1006 (derivationStepZipper!1028 z!1189 (head!11117 s!2326)) (tail!10214 s!2326)))))

(assert (= (and d!1676631 c!894678) b!5190569))

(assert (= (and d!1676631 (not c!894678)) b!5190570))

(assert (=> d!1676631 m!6246750))

(declare-fun m!6246888 () Bool)

(assert (=> b!5190569 m!6246888))

(assert (=> b!5190570 m!6246754))

(assert (=> b!5190570 m!6246754))

(declare-fun m!6246890 () Bool)

(assert (=> b!5190570 m!6246890))

(assert (=> b!5190570 m!6246756))

(assert (=> b!5190570 m!6246890))

(assert (=> b!5190570 m!6246756))

(declare-fun m!6246892 () Bool)

(assert (=> b!5190570 m!6246892))

(assert (=> b!5190235 d!1676631))

(declare-fun d!1676633 () Bool)

(declare-fun c!894679 () Bool)

(assert (=> d!1676633 (= c!894679 (isEmpty!32309 (t!373632 s!2326)))))

(declare-fun e!3233179 () Bool)

(assert (=> d!1676633 (= (matchZipper!1006 lt!2137392 (t!373632 s!2326)) e!3233179)))

(declare-fun b!5190571 () Bool)

(assert (=> b!5190571 (= e!3233179 (nullableZipper!1208 lt!2137392))))

(declare-fun b!5190572 () Bool)

(assert (=> b!5190572 (= e!3233179 (matchZipper!1006 (derivationStepZipper!1028 lt!2137392 (head!11117 (t!373632 s!2326))) (tail!10214 (t!373632 s!2326))))))

(assert (= (and d!1676633 c!894679) b!5190571))

(assert (= (and d!1676633 (not c!894679)) b!5190572))

(assert (=> d!1676633 m!6246768))

(declare-fun m!6246894 () Bool)

(assert (=> b!5190571 m!6246894))

(assert (=> b!5190572 m!6246772))

(assert (=> b!5190572 m!6246772))

(declare-fun m!6246896 () Bool)

(assert (=> b!5190572 m!6246896))

(assert (=> b!5190572 m!6246776))

(assert (=> b!5190572 m!6246896))

(assert (=> b!5190572 m!6246776))

(declare-fun m!6246898 () Bool)

(assert (=> b!5190572 m!6246898))

(assert (=> b!5190235 d!1676633))

(declare-fun b!5190591 () Bool)

(declare-fun e!3233198 () Bool)

(declare-fun call!364897 () Bool)

(assert (=> b!5190591 (= e!3233198 call!364897)))

(declare-fun b!5190592 () Bool)

(declare-fun res!2204688 () Bool)

(declare-fun e!3233196 () Bool)

(assert (=> b!5190592 (=> res!2204688 e!3233196)))

(assert (=> b!5190592 (= res!2204688 (not (is-Concat!23571 r!7292)))))

(declare-fun e!3233200 () Bool)

(assert (=> b!5190592 (= e!3233200 e!3233196)))

(declare-fun b!5190593 () Bool)

(declare-fun e!3233195 () Bool)

(assert (=> b!5190593 (= e!3233195 call!364897)))

(declare-fun bm!364892 () Bool)

(declare-fun call!364899 () Bool)

(assert (=> bm!364892 (= call!364897 call!364899)))

(declare-fun b!5190594 () Bool)

(declare-fun e!3233194 () Bool)

(assert (=> b!5190594 (= e!3233194 call!364899)))

(declare-fun d!1676635 () Bool)

(declare-fun res!2204684 () Bool)

(declare-fun e!3233199 () Bool)

(assert (=> d!1676635 (=> res!2204684 e!3233199)))

(assert (=> d!1676635 (= res!2204684 (is-ElementMatch!14726 r!7292))))

(assert (=> d!1676635 (= (validRegex!6462 r!7292) e!3233199)))

(declare-fun b!5190595 () Bool)

(assert (=> b!5190595 (= e!3233196 e!3233198)))

(declare-fun res!2204686 () Bool)

(assert (=> b!5190595 (=> (not res!2204686) (not e!3233198))))

(declare-fun call!364898 () Bool)

(assert (=> b!5190595 (= res!2204686 call!364898)))

(declare-fun b!5190596 () Bool)

(declare-fun e!3233197 () Bool)

(assert (=> b!5190596 (= e!3233197 e!3233194)))

(declare-fun res!2204687 () Bool)

(assert (=> b!5190596 (= res!2204687 (not (nullable!4919 (reg!15055 r!7292))))))

(assert (=> b!5190596 (=> (not res!2204687) (not e!3233194))))

(declare-fun b!5190597 () Bool)

(assert (=> b!5190597 (= e!3233199 e!3233197)))

(declare-fun c!894685 () Bool)

(assert (=> b!5190597 (= c!894685 (is-Star!14726 r!7292))))

(declare-fun bm!364893 () Bool)

(declare-fun c!894684 () Bool)

(assert (=> bm!364893 (= call!364899 (validRegex!6462 (ite c!894685 (reg!15055 r!7292) (ite c!894684 (regTwo!29965 r!7292) (regTwo!29964 r!7292)))))))

(declare-fun b!5190598 () Bool)

(declare-fun res!2204685 () Bool)

(assert (=> b!5190598 (=> (not res!2204685) (not e!3233195))))

(assert (=> b!5190598 (= res!2204685 call!364898)))

(assert (=> b!5190598 (= e!3233200 e!3233195)))

(declare-fun bm!364894 () Bool)

(assert (=> bm!364894 (= call!364898 (validRegex!6462 (ite c!894684 (regOne!29965 r!7292) (regOne!29964 r!7292))))))

(declare-fun b!5190599 () Bool)

(assert (=> b!5190599 (= e!3233197 e!3233200)))

(assert (=> b!5190599 (= c!894684 (is-Union!14726 r!7292))))

(assert (= (and d!1676635 (not res!2204684)) b!5190597))

(assert (= (and b!5190597 c!894685) b!5190596))

(assert (= (and b!5190597 (not c!894685)) b!5190599))

(assert (= (and b!5190596 res!2204687) b!5190594))

(assert (= (and b!5190599 c!894684) b!5190598))

(assert (= (and b!5190599 (not c!894684)) b!5190592))

(assert (= (and b!5190598 res!2204685) b!5190593))

(assert (= (and b!5190592 (not res!2204688)) b!5190595))

(assert (= (and b!5190595 res!2204686) b!5190591))

(assert (= (or b!5190593 b!5190591) bm!364892))

(assert (= (or b!5190598 b!5190595) bm!364894))

(assert (= (or b!5190594 bm!364892) bm!364893))

(declare-fun m!6246900 () Bool)

(assert (=> b!5190596 m!6246900))

(declare-fun m!6246902 () Bool)

(assert (=> bm!364893 m!6246902))

(declare-fun m!6246904 () Bool)

(assert (=> bm!364894 m!6246904))

(assert (=> start!549392 d!1676635))

(declare-fun bs!1208565 () Bool)

(declare-fun b!5190602 () Bool)

(assert (= bs!1208565 (and b!5190602 b!5190360)))

(declare-fun lambda!259524 () Int)

(assert (=> bs!1208565 (= (and (= (reg!15055 (regTwo!29965 r!7292)) (reg!15055 r!7292)) (= (regTwo!29965 r!7292) r!7292)) (= lambda!259524 lambda!259506))))

(declare-fun bs!1208566 () Bool)

(assert (= bs!1208566 (and b!5190602 b!5190362)))

(assert (=> bs!1208566 (not (= lambda!259524 lambda!259507))))

(assert (=> b!5190602 true))

(assert (=> b!5190602 true))

(declare-fun bs!1208567 () Bool)

(declare-fun b!5190604 () Bool)

(assert (= bs!1208567 (and b!5190604 b!5190360)))

(declare-fun lambda!259525 () Int)

(assert (=> bs!1208567 (not (= lambda!259525 lambda!259506))))

(declare-fun bs!1208568 () Bool)

(assert (= bs!1208568 (and b!5190604 b!5190362)))

(assert (=> bs!1208568 (= (and (= (regOne!29964 (regTwo!29965 r!7292)) (regOne!29964 r!7292)) (= (regTwo!29964 (regTwo!29965 r!7292)) (regTwo!29964 r!7292))) (= lambda!259525 lambda!259507))))

(declare-fun bs!1208569 () Bool)

(assert (= bs!1208569 (and b!5190604 b!5190602)))

(assert (=> bs!1208569 (not (= lambda!259525 lambda!259524))))

(assert (=> b!5190604 true))

(assert (=> b!5190604 true))

(declare-fun b!5190600 () Bool)

(declare-fun e!3233205 () Bool)

(declare-fun call!364901 () Bool)

(assert (=> b!5190600 (= e!3233205 call!364901)))

(declare-fun bm!364896 () Bool)

(assert (=> bm!364896 (= call!364901 (isEmpty!32309 s!2326))))

(declare-fun b!5190601 () Bool)

(declare-fun e!3233207 () Bool)

(assert (=> b!5190601 (= e!3233205 e!3233207)))

(declare-fun res!2204689 () Bool)

(assert (=> b!5190601 (= res!2204689 (not (is-EmptyLang!14726 (regTwo!29965 r!7292))))))

(assert (=> b!5190601 (=> (not res!2204689) (not e!3233207))))

(declare-fun e!3233203 () Bool)

(declare-fun call!364900 () Bool)

(assert (=> b!5190602 (= e!3233203 call!364900)))

(declare-fun b!5190603 () Bool)

(declare-fun c!894688 () Bool)

(assert (=> b!5190603 (= c!894688 (is-ElementMatch!14726 (regTwo!29965 r!7292)))))

(declare-fun e!3233206 () Bool)

(assert (=> b!5190603 (= e!3233207 e!3233206)))

(declare-fun e!3233202 () Bool)

(assert (=> b!5190604 (= e!3233202 call!364900)))

(declare-fun b!5190605 () Bool)

(declare-fun e!3233204 () Bool)

(declare-fun e!3233201 () Bool)

(assert (=> b!5190605 (= e!3233204 e!3233201)))

(declare-fun res!2204690 () Bool)

(assert (=> b!5190605 (= res!2204690 (matchRSpec!1829 (regOne!29965 (regTwo!29965 r!7292)) s!2326))))

(assert (=> b!5190605 (=> res!2204690 e!3233201)))

(declare-fun c!894689 () Bool)

(declare-fun bm!364895 () Bool)

(assert (=> bm!364895 (= call!364900 (Exists!1915 (ite c!894689 lambda!259524 lambda!259525)))))

(declare-fun d!1676637 () Bool)

(declare-fun c!894686 () Bool)

(assert (=> d!1676637 (= c!894686 (is-EmptyExpr!14726 (regTwo!29965 r!7292)))))

(assert (=> d!1676637 (= (matchRSpec!1829 (regTwo!29965 r!7292) s!2326) e!3233205)))

(declare-fun b!5190606 () Bool)

(declare-fun res!2204691 () Bool)

(assert (=> b!5190606 (=> res!2204691 e!3233203)))

(assert (=> b!5190606 (= res!2204691 call!364901)))

(assert (=> b!5190606 (= e!3233202 e!3233203)))

(declare-fun b!5190607 () Bool)

(assert (=> b!5190607 (= e!3233204 e!3233202)))

(assert (=> b!5190607 (= c!894689 (is-Star!14726 (regTwo!29965 r!7292)))))

(declare-fun b!5190608 () Bool)

(declare-fun c!894687 () Bool)

(assert (=> b!5190608 (= c!894687 (is-Union!14726 (regTwo!29965 r!7292)))))

(assert (=> b!5190608 (= e!3233206 e!3233204)))

(declare-fun b!5190609 () Bool)

(assert (=> b!5190609 (= e!3233201 (matchRSpec!1829 (regTwo!29965 (regTwo!29965 r!7292)) s!2326))))

(declare-fun b!5190610 () Bool)

(assert (=> b!5190610 (= e!3233206 (= s!2326 (Cons!60355 (c!894582 (regTwo!29965 r!7292)) Nil!60355)))))

(assert (= (and d!1676637 c!894686) b!5190600))

(assert (= (and d!1676637 (not c!894686)) b!5190601))

(assert (= (and b!5190601 res!2204689) b!5190603))

(assert (= (and b!5190603 c!894688) b!5190610))

(assert (= (and b!5190603 (not c!894688)) b!5190608))

(assert (= (and b!5190608 c!894687) b!5190605))

(assert (= (and b!5190608 (not c!894687)) b!5190607))

(assert (= (and b!5190605 (not res!2204690)) b!5190609))

(assert (= (and b!5190607 c!894689) b!5190606))

(assert (= (and b!5190607 (not c!894689)) b!5190604))

(assert (= (and b!5190606 (not res!2204691)) b!5190602))

(assert (= (or b!5190602 b!5190604) bm!364895))

(assert (= (or b!5190600 b!5190606) bm!364896))

(assert (=> bm!364896 m!6246750))

(declare-fun m!6246906 () Bool)

(assert (=> b!5190605 m!6246906))

(declare-fun m!6246908 () Bool)

(assert (=> bm!364895 m!6246908))

(declare-fun m!6246910 () Bool)

(assert (=> b!5190609 m!6246910))

(assert (=> b!5190245 d!1676637))

(declare-fun d!1676639 () Bool)

(assert (=> d!1676639 (= (matchR!6911 (regOne!29965 r!7292) s!2326) (matchRSpec!1829 (regOne!29965 r!7292) s!2326))))

(declare-fun lt!2137502 () Unit!152286)

(assert (=> d!1676639 (= lt!2137502 (choose!38552 (regOne!29965 r!7292) s!2326))))

(assert (=> d!1676639 (validRegex!6462 (regOne!29965 r!7292))))

(assert (=> d!1676639 (= (mainMatchTheorem!1829 (regOne!29965 r!7292) s!2326) lt!2137502)))

(declare-fun bs!1208570 () Bool)

(assert (= bs!1208570 d!1676639))

(assert (=> bs!1208570 m!6246628))

(assert (=> bs!1208570 m!6246624))

(declare-fun m!6246912 () Bool)

(assert (=> bs!1208570 m!6246912))

(assert (=> bs!1208570 m!6246614))

(assert (=> b!5190245 d!1676639))

(declare-fun b!5190611 () Bool)

(declare-fun res!2204693 () Bool)

(declare-fun e!3233210 () Bool)

(assert (=> b!5190611 (=> (not res!2204693) (not e!3233210))))

(assert (=> b!5190611 (= res!2204693 (isEmpty!32309 (tail!10214 s!2326)))))

(declare-fun b!5190612 () Bool)

(assert (=> b!5190612 (= e!3233210 (= (head!11117 s!2326) (c!894582 (regTwo!29965 r!7292))))))

(declare-fun b!5190613 () Bool)

(declare-fun e!3233213 () Bool)

(declare-fun lt!2137503 () Bool)

(declare-fun call!364902 () Bool)

(assert (=> b!5190613 (= e!3233213 (= lt!2137503 call!364902))))

(declare-fun bm!364897 () Bool)

(assert (=> bm!364897 (= call!364902 (isEmpty!32309 s!2326))))

(declare-fun b!5190614 () Bool)

(declare-fun e!3233211 () Bool)

(declare-fun e!3233212 () Bool)

(assert (=> b!5190614 (= e!3233211 e!3233212)))

(declare-fun res!2204695 () Bool)

(assert (=> b!5190614 (=> (not res!2204695) (not e!3233212))))

(assert (=> b!5190614 (= res!2204695 (not lt!2137503))))

(declare-fun b!5190615 () Bool)

(declare-fun e!3233209 () Bool)

(assert (=> b!5190615 (= e!3233209 (nullable!4919 (regTwo!29965 r!7292)))))

(declare-fun b!5190616 () Bool)

(declare-fun e!3233214 () Bool)

(assert (=> b!5190616 (= e!3233212 e!3233214)))

(declare-fun res!2204698 () Bool)

(assert (=> b!5190616 (=> res!2204698 e!3233214)))

(assert (=> b!5190616 (= res!2204698 call!364902)))

(declare-fun b!5190617 () Bool)

(declare-fun e!3233208 () Bool)

(assert (=> b!5190617 (= e!3233213 e!3233208)))

(declare-fun c!894691 () Bool)

(assert (=> b!5190617 (= c!894691 (is-EmptyLang!14726 (regTwo!29965 r!7292)))))

(declare-fun b!5190618 () Bool)

(assert (=> b!5190618 (= e!3233208 (not lt!2137503))))

(declare-fun d!1676641 () Bool)

(assert (=> d!1676641 e!3233213))

(declare-fun c!894692 () Bool)

(assert (=> d!1676641 (= c!894692 (is-EmptyExpr!14726 (regTwo!29965 r!7292)))))

(assert (=> d!1676641 (= lt!2137503 e!3233209)))

(declare-fun c!894690 () Bool)

(assert (=> d!1676641 (= c!894690 (isEmpty!32309 s!2326))))

(assert (=> d!1676641 (validRegex!6462 (regTwo!29965 r!7292))))

(assert (=> d!1676641 (= (matchR!6911 (regTwo!29965 r!7292) s!2326) lt!2137503)))

(declare-fun b!5190619 () Bool)

(declare-fun res!2204694 () Bool)

(assert (=> b!5190619 (=> res!2204694 e!3233211)))

(assert (=> b!5190619 (= res!2204694 e!3233210)))

(declare-fun res!2204696 () Bool)

(assert (=> b!5190619 (=> (not res!2204696) (not e!3233210))))

(assert (=> b!5190619 (= res!2204696 lt!2137503)))

(declare-fun b!5190620 () Bool)

(declare-fun res!2204692 () Bool)

(assert (=> b!5190620 (=> res!2204692 e!3233211)))

(assert (=> b!5190620 (= res!2204692 (not (is-ElementMatch!14726 (regTwo!29965 r!7292))))))

(assert (=> b!5190620 (= e!3233208 e!3233211)))

(declare-fun b!5190621 () Bool)

(declare-fun res!2204699 () Bool)

(assert (=> b!5190621 (=> res!2204699 e!3233214)))

(assert (=> b!5190621 (= res!2204699 (not (isEmpty!32309 (tail!10214 s!2326))))))

(declare-fun b!5190622 () Bool)

(assert (=> b!5190622 (= e!3233209 (matchR!6911 (derivativeStep!4021 (regTwo!29965 r!7292) (head!11117 s!2326)) (tail!10214 s!2326)))))

(declare-fun b!5190623 () Bool)

(declare-fun res!2204697 () Bool)

(assert (=> b!5190623 (=> (not res!2204697) (not e!3233210))))

(assert (=> b!5190623 (= res!2204697 (not call!364902))))

(declare-fun b!5190624 () Bool)

(assert (=> b!5190624 (= e!3233214 (not (= (head!11117 s!2326) (c!894582 (regTwo!29965 r!7292)))))))

(assert (= (and d!1676641 c!894690) b!5190615))

(assert (= (and d!1676641 (not c!894690)) b!5190622))

(assert (= (and d!1676641 c!894692) b!5190613))

(assert (= (and d!1676641 (not c!894692)) b!5190617))

(assert (= (and b!5190617 c!894691) b!5190618))

(assert (= (and b!5190617 (not c!894691)) b!5190620))

(assert (= (and b!5190620 (not res!2204692)) b!5190619))

(assert (= (and b!5190619 res!2204696) b!5190623))

(assert (= (and b!5190623 res!2204697) b!5190611))

(assert (= (and b!5190611 res!2204693) b!5190612))

(assert (= (and b!5190619 (not res!2204694)) b!5190614))

(assert (= (and b!5190614 res!2204695) b!5190616))

(assert (= (and b!5190616 (not res!2204698)) b!5190621))

(assert (= (and b!5190621 (not res!2204699)) b!5190624))

(assert (= (or b!5190613 b!5190616 b!5190623) bm!364897))

(assert (=> b!5190612 m!6246754))

(assert (=> b!5190611 m!6246756))

(assert (=> b!5190611 m!6246756))

(assert (=> b!5190611 m!6246758))

(assert (=> b!5190622 m!6246754))

(assert (=> b!5190622 m!6246754))

(declare-fun m!6246914 () Bool)

(assert (=> b!5190622 m!6246914))

(assert (=> b!5190622 m!6246756))

(assert (=> b!5190622 m!6246914))

(assert (=> b!5190622 m!6246756))

(declare-fun m!6246916 () Bool)

(assert (=> b!5190622 m!6246916))

(declare-fun m!6246918 () Bool)

(assert (=> b!5190615 m!6246918))

(assert (=> d!1676641 m!6246750))

(declare-fun m!6246920 () Bool)

(assert (=> d!1676641 m!6246920))

(assert (=> b!5190621 m!6246756))

(assert (=> b!5190621 m!6246756))

(assert (=> b!5190621 m!6246758))

(assert (=> bm!364897 m!6246750))

(assert (=> b!5190624 m!6246754))

(assert (=> b!5190245 d!1676641))

(declare-fun d!1676643 () Bool)

(assert (=> d!1676643 (= (matchR!6911 (regTwo!29965 r!7292) s!2326) (matchRSpec!1829 (regTwo!29965 r!7292) s!2326))))

(declare-fun lt!2137504 () Unit!152286)

(assert (=> d!1676643 (= lt!2137504 (choose!38552 (regTwo!29965 r!7292) s!2326))))

(assert (=> d!1676643 (validRegex!6462 (regTwo!29965 r!7292))))

(assert (=> d!1676643 (= (mainMatchTheorem!1829 (regTwo!29965 r!7292) s!2326) lt!2137504)))

(declare-fun bs!1208571 () Bool)

(assert (= bs!1208571 d!1676643))

(assert (=> bs!1208571 m!6246622))

(assert (=> bs!1208571 m!6246618))

(declare-fun m!6246922 () Bool)

(assert (=> bs!1208571 m!6246922))

(assert (=> bs!1208571 m!6246920))

(assert (=> b!5190245 d!1676643))

(declare-fun bs!1208572 () Bool)

(declare-fun b!5190627 () Bool)

(assert (= bs!1208572 (and b!5190627 b!5190360)))

(declare-fun lambda!259526 () Int)

(assert (=> bs!1208572 (= (and (= (reg!15055 (regOne!29965 r!7292)) (reg!15055 r!7292)) (= (regOne!29965 r!7292) r!7292)) (= lambda!259526 lambda!259506))))

(declare-fun bs!1208573 () Bool)

(assert (= bs!1208573 (and b!5190627 b!5190362)))

(assert (=> bs!1208573 (not (= lambda!259526 lambda!259507))))

(declare-fun bs!1208574 () Bool)

(assert (= bs!1208574 (and b!5190627 b!5190602)))

(assert (=> bs!1208574 (= (and (= (reg!15055 (regOne!29965 r!7292)) (reg!15055 (regTwo!29965 r!7292))) (= (regOne!29965 r!7292) (regTwo!29965 r!7292))) (= lambda!259526 lambda!259524))))

(declare-fun bs!1208575 () Bool)

(assert (= bs!1208575 (and b!5190627 b!5190604)))

(assert (=> bs!1208575 (not (= lambda!259526 lambda!259525))))

(assert (=> b!5190627 true))

(assert (=> b!5190627 true))

(declare-fun bs!1208576 () Bool)

(declare-fun b!5190629 () Bool)

(assert (= bs!1208576 (and b!5190629 b!5190604)))

(declare-fun lambda!259527 () Int)

(assert (=> bs!1208576 (= (and (= (regOne!29964 (regOne!29965 r!7292)) (regOne!29964 (regTwo!29965 r!7292))) (= (regTwo!29964 (regOne!29965 r!7292)) (regTwo!29964 (regTwo!29965 r!7292)))) (= lambda!259527 lambda!259525))))

(declare-fun bs!1208577 () Bool)

(assert (= bs!1208577 (and b!5190629 b!5190602)))

(assert (=> bs!1208577 (not (= lambda!259527 lambda!259524))))

(declare-fun bs!1208578 () Bool)

(assert (= bs!1208578 (and b!5190629 b!5190360)))

(assert (=> bs!1208578 (not (= lambda!259527 lambda!259506))))

(declare-fun bs!1208579 () Bool)

(assert (= bs!1208579 (and b!5190629 b!5190362)))

(assert (=> bs!1208579 (= (and (= (regOne!29964 (regOne!29965 r!7292)) (regOne!29964 r!7292)) (= (regTwo!29964 (regOne!29965 r!7292)) (regTwo!29964 r!7292))) (= lambda!259527 lambda!259507))))

(declare-fun bs!1208580 () Bool)

(assert (= bs!1208580 (and b!5190629 b!5190627)))

(assert (=> bs!1208580 (not (= lambda!259527 lambda!259526))))

(assert (=> b!5190629 true))

(assert (=> b!5190629 true))

(declare-fun b!5190625 () Bool)

(declare-fun e!3233219 () Bool)

(declare-fun call!364904 () Bool)

(assert (=> b!5190625 (= e!3233219 call!364904)))

(declare-fun bm!364899 () Bool)

(assert (=> bm!364899 (= call!364904 (isEmpty!32309 s!2326))))

(declare-fun b!5190626 () Bool)

(declare-fun e!3233221 () Bool)

(assert (=> b!5190626 (= e!3233219 e!3233221)))

(declare-fun res!2204700 () Bool)

(assert (=> b!5190626 (= res!2204700 (not (is-EmptyLang!14726 (regOne!29965 r!7292))))))

(assert (=> b!5190626 (=> (not res!2204700) (not e!3233221))))

(declare-fun e!3233217 () Bool)

(declare-fun call!364903 () Bool)

(assert (=> b!5190627 (= e!3233217 call!364903)))

(declare-fun b!5190628 () Bool)

(declare-fun c!894695 () Bool)

(assert (=> b!5190628 (= c!894695 (is-ElementMatch!14726 (regOne!29965 r!7292)))))

(declare-fun e!3233220 () Bool)

(assert (=> b!5190628 (= e!3233221 e!3233220)))

(declare-fun e!3233216 () Bool)

(assert (=> b!5190629 (= e!3233216 call!364903)))

(declare-fun b!5190630 () Bool)

(declare-fun e!3233218 () Bool)

(declare-fun e!3233215 () Bool)

(assert (=> b!5190630 (= e!3233218 e!3233215)))

(declare-fun res!2204701 () Bool)

(assert (=> b!5190630 (= res!2204701 (matchRSpec!1829 (regOne!29965 (regOne!29965 r!7292)) s!2326))))

(assert (=> b!5190630 (=> res!2204701 e!3233215)))

(declare-fun bm!364898 () Bool)

(declare-fun c!894696 () Bool)

(assert (=> bm!364898 (= call!364903 (Exists!1915 (ite c!894696 lambda!259526 lambda!259527)))))

(declare-fun d!1676645 () Bool)

(declare-fun c!894693 () Bool)

(assert (=> d!1676645 (= c!894693 (is-EmptyExpr!14726 (regOne!29965 r!7292)))))

(assert (=> d!1676645 (= (matchRSpec!1829 (regOne!29965 r!7292) s!2326) e!3233219)))

(declare-fun b!5190631 () Bool)

(declare-fun res!2204702 () Bool)

(assert (=> b!5190631 (=> res!2204702 e!3233217)))

(assert (=> b!5190631 (= res!2204702 call!364904)))

(assert (=> b!5190631 (= e!3233216 e!3233217)))

(declare-fun b!5190632 () Bool)

(assert (=> b!5190632 (= e!3233218 e!3233216)))

(assert (=> b!5190632 (= c!894696 (is-Star!14726 (regOne!29965 r!7292)))))

(declare-fun b!5190633 () Bool)

(declare-fun c!894694 () Bool)

(assert (=> b!5190633 (= c!894694 (is-Union!14726 (regOne!29965 r!7292)))))

(assert (=> b!5190633 (= e!3233220 e!3233218)))

(declare-fun b!5190634 () Bool)

(assert (=> b!5190634 (= e!3233215 (matchRSpec!1829 (regTwo!29965 (regOne!29965 r!7292)) s!2326))))

(declare-fun b!5190635 () Bool)

(assert (=> b!5190635 (= e!3233220 (= s!2326 (Cons!60355 (c!894582 (regOne!29965 r!7292)) Nil!60355)))))

(assert (= (and d!1676645 c!894693) b!5190625))

(assert (= (and d!1676645 (not c!894693)) b!5190626))

(assert (= (and b!5190626 res!2204700) b!5190628))

(assert (= (and b!5190628 c!894695) b!5190635))

(assert (= (and b!5190628 (not c!894695)) b!5190633))

(assert (= (and b!5190633 c!894694) b!5190630))

(assert (= (and b!5190633 (not c!894694)) b!5190632))

(assert (= (and b!5190630 (not res!2204701)) b!5190634))

(assert (= (and b!5190632 c!894696) b!5190631))

(assert (= (and b!5190632 (not c!894696)) b!5190629))

(assert (= (and b!5190631 (not res!2204702)) b!5190627))

(assert (= (or b!5190627 b!5190629) bm!364898))

(assert (= (or b!5190625 b!5190631) bm!364899))

(assert (=> bm!364899 m!6246750))

(declare-fun m!6246924 () Bool)

(assert (=> b!5190630 m!6246924))

(declare-fun m!6246926 () Bool)

(assert (=> bm!364898 m!6246926))

(declare-fun m!6246928 () Bool)

(assert (=> b!5190634 m!6246928))

(assert (=> b!5190245 d!1676645))

(declare-fun b!5190636 () Bool)

(declare-fun res!2204704 () Bool)

(declare-fun e!3233224 () Bool)

(assert (=> b!5190636 (=> (not res!2204704) (not e!3233224))))

(assert (=> b!5190636 (= res!2204704 (isEmpty!32309 (tail!10214 s!2326)))))

(declare-fun b!5190637 () Bool)

(assert (=> b!5190637 (= e!3233224 (= (head!11117 s!2326) (c!894582 (regOne!29965 r!7292))))))

(declare-fun b!5190638 () Bool)

(declare-fun e!3233227 () Bool)

(declare-fun lt!2137505 () Bool)

(declare-fun call!364905 () Bool)

(assert (=> b!5190638 (= e!3233227 (= lt!2137505 call!364905))))

(declare-fun bm!364900 () Bool)

(assert (=> bm!364900 (= call!364905 (isEmpty!32309 s!2326))))

(declare-fun b!5190639 () Bool)

(declare-fun e!3233225 () Bool)

(declare-fun e!3233226 () Bool)

(assert (=> b!5190639 (= e!3233225 e!3233226)))

(declare-fun res!2204706 () Bool)

(assert (=> b!5190639 (=> (not res!2204706) (not e!3233226))))

(assert (=> b!5190639 (= res!2204706 (not lt!2137505))))

(declare-fun b!5190640 () Bool)

(declare-fun e!3233223 () Bool)

(assert (=> b!5190640 (= e!3233223 (nullable!4919 (regOne!29965 r!7292)))))

(declare-fun b!5190641 () Bool)

(declare-fun e!3233228 () Bool)

(assert (=> b!5190641 (= e!3233226 e!3233228)))

(declare-fun res!2204709 () Bool)

(assert (=> b!5190641 (=> res!2204709 e!3233228)))

(assert (=> b!5190641 (= res!2204709 call!364905)))

(declare-fun b!5190642 () Bool)

(declare-fun e!3233222 () Bool)

(assert (=> b!5190642 (= e!3233227 e!3233222)))

(declare-fun c!894698 () Bool)

(assert (=> b!5190642 (= c!894698 (is-EmptyLang!14726 (regOne!29965 r!7292)))))

(declare-fun b!5190643 () Bool)

(assert (=> b!5190643 (= e!3233222 (not lt!2137505))))

(declare-fun d!1676647 () Bool)

(assert (=> d!1676647 e!3233227))

(declare-fun c!894699 () Bool)

(assert (=> d!1676647 (= c!894699 (is-EmptyExpr!14726 (regOne!29965 r!7292)))))

(assert (=> d!1676647 (= lt!2137505 e!3233223)))

(declare-fun c!894697 () Bool)

(assert (=> d!1676647 (= c!894697 (isEmpty!32309 s!2326))))

(assert (=> d!1676647 (validRegex!6462 (regOne!29965 r!7292))))

(assert (=> d!1676647 (= (matchR!6911 (regOne!29965 r!7292) s!2326) lt!2137505)))

(declare-fun b!5190644 () Bool)

(declare-fun res!2204705 () Bool)

(assert (=> b!5190644 (=> res!2204705 e!3233225)))

(assert (=> b!5190644 (= res!2204705 e!3233224)))

(declare-fun res!2204707 () Bool)

(assert (=> b!5190644 (=> (not res!2204707) (not e!3233224))))

(assert (=> b!5190644 (= res!2204707 lt!2137505)))

(declare-fun b!5190645 () Bool)

(declare-fun res!2204703 () Bool)

(assert (=> b!5190645 (=> res!2204703 e!3233225)))

(assert (=> b!5190645 (= res!2204703 (not (is-ElementMatch!14726 (regOne!29965 r!7292))))))

(assert (=> b!5190645 (= e!3233222 e!3233225)))

(declare-fun b!5190646 () Bool)

(declare-fun res!2204710 () Bool)

(assert (=> b!5190646 (=> res!2204710 e!3233228)))

(assert (=> b!5190646 (= res!2204710 (not (isEmpty!32309 (tail!10214 s!2326))))))

(declare-fun b!5190647 () Bool)

(assert (=> b!5190647 (= e!3233223 (matchR!6911 (derivativeStep!4021 (regOne!29965 r!7292) (head!11117 s!2326)) (tail!10214 s!2326)))))

(declare-fun b!5190648 () Bool)

(declare-fun res!2204708 () Bool)

(assert (=> b!5190648 (=> (not res!2204708) (not e!3233224))))

(assert (=> b!5190648 (= res!2204708 (not call!364905))))

(declare-fun b!5190649 () Bool)

(assert (=> b!5190649 (= e!3233228 (not (= (head!11117 s!2326) (c!894582 (regOne!29965 r!7292)))))))

(assert (= (and d!1676647 c!894697) b!5190640))

(assert (= (and d!1676647 (not c!894697)) b!5190647))

(assert (= (and d!1676647 c!894699) b!5190638))

(assert (= (and d!1676647 (not c!894699)) b!5190642))

(assert (= (and b!5190642 c!894698) b!5190643))

(assert (= (and b!5190642 (not c!894698)) b!5190645))

(assert (= (and b!5190645 (not res!2204703)) b!5190644))

(assert (= (and b!5190644 res!2204707) b!5190648))

(assert (= (and b!5190648 res!2204708) b!5190636))

(assert (= (and b!5190636 res!2204704) b!5190637))

(assert (= (and b!5190644 (not res!2204705)) b!5190639))

(assert (= (and b!5190639 res!2204706) b!5190641))

(assert (= (and b!5190641 (not res!2204709)) b!5190646))

(assert (= (and b!5190646 (not res!2204710)) b!5190649))

(assert (= (or b!5190638 b!5190641 b!5190648) bm!364900))

(assert (=> b!5190637 m!6246754))

(assert (=> b!5190636 m!6246756))

(assert (=> b!5190636 m!6246756))

(assert (=> b!5190636 m!6246758))

(assert (=> b!5190647 m!6246754))

(assert (=> b!5190647 m!6246754))

(declare-fun m!6246930 () Bool)

(assert (=> b!5190647 m!6246930))

(assert (=> b!5190647 m!6246756))

(assert (=> b!5190647 m!6246930))

(assert (=> b!5190647 m!6246756))

(declare-fun m!6246932 () Bool)

(assert (=> b!5190647 m!6246932))

(declare-fun m!6246934 () Bool)

(assert (=> b!5190640 m!6246934))

(assert (=> d!1676647 m!6246750))

(assert (=> d!1676647 m!6246614))

(assert (=> b!5190646 m!6246756))

(assert (=> b!5190646 m!6246756))

(assert (=> b!5190646 m!6246758))

(assert (=> bm!364900 m!6246750))

(assert (=> b!5190649 m!6246754))

(assert (=> b!5190245 d!1676647))

(declare-fun d!1676649 () Bool)

(declare-fun c!894700 () Bool)

(declare-fun e!3233229 () Bool)

(assert (=> d!1676649 (= c!894700 e!3233229)))

(declare-fun res!2204711 () Bool)

(assert (=> d!1676649 (=> (not res!2204711) (not e!3233229))))

(assert (=> d!1676649 (= res!2204711 (is-Cons!60353 (exprs!4610 lt!2137388)))))

(declare-fun e!3233231 () (Set Context!8220))

(assert (=> d!1676649 (= (derivationStepZipperUp!116 lt!2137388 (h!66803 s!2326)) e!3233231)))

(declare-fun call!364906 () (Set Context!8220))

(declare-fun b!5190650 () Bool)

(assert (=> b!5190650 (= e!3233231 (set.union call!364906 (derivationStepZipperUp!116 (Context!8221 (t!373630 (exprs!4610 lt!2137388))) (h!66803 s!2326))))))

(declare-fun b!5190651 () Bool)

(assert (=> b!5190651 (= e!3233229 (nullable!4919 (h!66801 (exprs!4610 lt!2137388))))))

(declare-fun b!5190652 () Bool)

(declare-fun e!3233230 () (Set Context!8220))

(assert (=> b!5190652 (= e!3233231 e!3233230)))

(declare-fun c!894701 () Bool)

(assert (=> b!5190652 (= c!894701 (is-Cons!60353 (exprs!4610 lt!2137388)))))

(declare-fun b!5190653 () Bool)

(assert (=> b!5190653 (= e!3233230 (as set.empty (Set Context!8220)))))

(declare-fun b!5190654 () Bool)

(assert (=> b!5190654 (= e!3233230 call!364906)))

(declare-fun bm!364901 () Bool)

(assert (=> bm!364901 (= call!364906 (derivationStepZipperDown!195 (h!66801 (exprs!4610 lt!2137388)) (Context!8221 (t!373630 (exprs!4610 lt!2137388))) (h!66803 s!2326)))))

(assert (= (and d!1676649 res!2204711) b!5190651))

(assert (= (and d!1676649 c!894700) b!5190650))

(assert (= (and d!1676649 (not c!894700)) b!5190652))

(assert (= (and b!5190652 c!894701) b!5190654))

(assert (= (and b!5190652 (not c!894701)) b!5190653))

(assert (= (or b!5190650 b!5190654) bm!364901))

(declare-fun m!6246936 () Bool)

(assert (=> b!5190650 m!6246936))

(declare-fun m!6246938 () Bool)

(assert (=> b!5190651 m!6246938))

(declare-fun m!6246940 () Bool)

(assert (=> bm!364901 m!6246940))

(assert (=> b!5190234 d!1676649))

(declare-fun d!1676651 () Bool)

(assert (=> d!1676651 (= (flatMap!479 lt!2137386 lambda!259494) (dynLambda!23898 lambda!259494 lt!2137388))))

(declare-fun lt!2137506 () Unit!152286)

(assert (=> d!1676651 (= lt!2137506 (choose!38555 lt!2137386 lt!2137388 lambda!259494))))

(assert (=> d!1676651 (= lt!2137386 (set.insert lt!2137388 (as set.empty (Set Context!8220))))))

(assert (=> d!1676651 (= (lemmaFlatMapOnSingletonSet!11 lt!2137386 lt!2137388 lambda!259494) lt!2137506)))

(declare-fun b_lambda!201159 () Bool)

(assert (=> (not b_lambda!201159) (not d!1676651)))

(declare-fun bs!1208581 () Bool)

(assert (= bs!1208581 d!1676651))

(assert (=> bs!1208581 m!6246612))

(declare-fun m!6246942 () Bool)

(assert (=> bs!1208581 m!6246942))

(declare-fun m!6246944 () Bool)

(assert (=> bs!1208581 m!6246944))

(assert (=> bs!1208581 m!6246606))

(assert (=> b!5190234 d!1676651))

(declare-fun b!5190655 () Bool)

(declare-fun e!3233236 () Bool)

(declare-fun call!364907 () Bool)

(assert (=> b!5190655 (= e!3233236 call!364907)))

(declare-fun b!5190656 () Bool)

(declare-fun res!2204716 () Bool)

(declare-fun e!3233234 () Bool)

(assert (=> b!5190656 (=> res!2204716 e!3233234)))

(assert (=> b!5190656 (= res!2204716 (not (is-Concat!23571 (regOne!29965 r!7292))))))

(declare-fun e!3233238 () Bool)

(assert (=> b!5190656 (= e!3233238 e!3233234)))

(declare-fun b!5190657 () Bool)

(declare-fun e!3233233 () Bool)

(assert (=> b!5190657 (= e!3233233 call!364907)))

(declare-fun bm!364902 () Bool)

(declare-fun call!364909 () Bool)

(assert (=> bm!364902 (= call!364907 call!364909)))

(declare-fun b!5190658 () Bool)

(declare-fun e!3233232 () Bool)

(assert (=> b!5190658 (= e!3233232 call!364909)))

(declare-fun d!1676653 () Bool)

(declare-fun res!2204712 () Bool)

(declare-fun e!3233237 () Bool)

(assert (=> d!1676653 (=> res!2204712 e!3233237)))

(assert (=> d!1676653 (= res!2204712 (is-ElementMatch!14726 (regOne!29965 r!7292)))))

(assert (=> d!1676653 (= (validRegex!6462 (regOne!29965 r!7292)) e!3233237)))

(declare-fun b!5190659 () Bool)

(assert (=> b!5190659 (= e!3233234 e!3233236)))

(declare-fun res!2204714 () Bool)

(assert (=> b!5190659 (=> (not res!2204714) (not e!3233236))))

(declare-fun call!364908 () Bool)

(assert (=> b!5190659 (= res!2204714 call!364908)))

(declare-fun b!5190660 () Bool)

(declare-fun e!3233235 () Bool)

(assert (=> b!5190660 (= e!3233235 e!3233232)))

(declare-fun res!2204715 () Bool)

(assert (=> b!5190660 (= res!2204715 (not (nullable!4919 (reg!15055 (regOne!29965 r!7292)))))))

(assert (=> b!5190660 (=> (not res!2204715) (not e!3233232))))

(declare-fun b!5190661 () Bool)

(assert (=> b!5190661 (= e!3233237 e!3233235)))

(declare-fun c!894703 () Bool)

(assert (=> b!5190661 (= c!894703 (is-Star!14726 (regOne!29965 r!7292)))))

(declare-fun c!894702 () Bool)

(declare-fun bm!364903 () Bool)

(assert (=> bm!364903 (= call!364909 (validRegex!6462 (ite c!894703 (reg!15055 (regOne!29965 r!7292)) (ite c!894702 (regTwo!29965 (regOne!29965 r!7292)) (regTwo!29964 (regOne!29965 r!7292))))))))

(declare-fun b!5190662 () Bool)

(declare-fun res!2204713 () Bool)

(assert (=> b!5190662 (=> (not res!2204713) (not e!3233233))))

(assert (=> b!5190662 (= res!2204713 call!364908)))

(assert (=> b!5190662 (= e!3233238 e!3233233)))

(declare-fun bm!364904 () Bool)

(assert (=> bm!364904 (= call!364908 (validRegex!6462 (ite c!894702 (regOne!29965 (regOne!29965 r!7292)) (regOne!29964 (regOne!29965 r!7292)))))))

(declare-fun b!5190663 () Bool)

(assert (=> b!5190663 (= e!3233235 e!3233238)))

(assert (=> b!5190663 (= c!894702 (is-Union!14726 (regOne!29965 r!7292)))))

(assert (= (and d!1676653 (not res!2204712)) b!5190661))

(assert (= (and b!5190661 c!894703) b!5190660))

(assert (= (and b!5190661 (not c!894703)) b!5190663))

(assert (= (and b!5190660 res!2204715) b!5190658))

(assert (= (and b!5190663 c!894702) b!5190662))

(assert (= (and b!5190663 (not c!894702)) b!5190656))

(assert (= (and b!5190662 res!2204713) b!5190657))

(assert (= (and b!5190656 (not res!2204716)) b!5190659))

(assert (= (and b!5190659 res!2204714) b!5190655))

(assert (= (or b!5190657 b!5190655) bm!364902))

(assert (= (or b!5190662 b!5190659) bm!364904))

(assert (= (or b!5190658 bm!364902) bm!364903))

(declare-fun m!6246946 () Bool)

(assert (=> b!5190660 m!6246946))

(declare-fun m!6246948 () Bool)

(assert (=> bm!364903 m!6246948))

(declare-fun m!6246950 () Bool)

(assert (=> bm!364904 m!6246950))

(assert (=> b!5190234 d!1676653))

(declare-fun d!1676655 () Bool)

(assert (=> d!1676655 (= (flatMap!479 lt!2137397 lambda!259494) (dynLambda!23898 lambda!259494 lt!2137381))))

(declare-fun lt!2137507 () Unit!152286)

(assert (=> d!1676655 (= lt!2137507 (choose!38555 lt!2137397 lt!2137381 lambda!259494))))

(assert (=> d!1676655 (= lt!2137397 (set.insert lt!2137381 (as set.empty (Set Context!8220))))))

(assert (=> d!1676655 (= (lemmaFlatMapOnSingletonSet!11 lt!2137397 lt!2137381 lambda!259494) lt!2137507)))

(declare-fun b_lambda!201161 () Bool)

(assert (=> (not b_lambda!201161) (not d!1676655)))

(declare-fun bs!1208582 () Bool)

(assert (= bs!1208582 d!1676655))

(assert (=> bs!1208582 m!6246608))

(declare-fun m!6246952 () Bool)

(assert (=> bs!1208582 m!6246952))

(declare-fun m!6246954 () Bool)

(assert (=> bs!1208582 m!6246954))

(assert (=> bs!1208582 m!6246602))

(assert (=> b!5190234 d!1676655))

(declare-fun d!1676657 () Bool)

(assert (=> d!1676657 (= (flatMap!479 lt!2137397 lambda!259494) (choose!38554 lt!2137397 lambda!259494))))

(declare-fun bs!1208583 () Bool)

(assert (= bs!1208583 d!1676657))

(declare-fun m!6246956 () Bool)

(assert (=> bs!1208583 m!6246956))

(assert (=> b!5190234 d!1676657))

(declare-fun d!1676659 () Bool)

(declare-fun c!894704 () Bool)

(declare-fun e!3233239 () Bool)

(assert (=> d!1676659 (= c!894704 e!3233239)))

(declare-fun res!2204717 () Bool)

(assert (=> d!1676659 (=> (not res!2204717) (not e!3233239))))

(assert (=> d!1676659 (= res!2204717 (is-Cons!60353 (exprs!4610 lt!2137381)))))

(declare-fun e!3233241 () (Set Context!8220))

(assert (=> d!1676659 (= (derivationStepZipperUp!116 lt!2137381 (h!66803 s!2326)) e!3233241)))

(declare-fun b!5190664 () Bool)

(declare-fun call!364910 () (Set Context!8220))

(assert (=> b!5190664 (= e!3233241 (set.union call!364910 (derivationStepZipperUp!116 (Context!8221 (t!373630 (exprs!4610 lt!2137381))) (h!66803 s!2326))))))

(declare-fun b!5190665 () Bool)

(assert (=> b!5190665 (= e!3233239 (nullable!4919 (h!66801 (exprs!4610 lt!2137381))))))

(declare-fun b!5190666 () Bool)

(declare-fun e!3233240 () (Set Context!8220))

(assert (=> b!5190666 (= e!3233241 e!3233240)))

(declare-fun c!894705 () Bool)

(assert (=> b!5190666 (= c!894705 (is-Cons!60353 (exprs!4610 lt!2137381)))))

(declare-fun b!5190667 () Bool)

(assert (=> b!5190667 (= e!3233240 (as set.empty (Set Context!8220)))))

(declare-fun b!5190668 () Bool)

(assert (=> b!5190668 (= e!3233240 call!364910)))

(declare-fun bm!364905 () Bool)

(assert (=> bm!364905 (= call!364910 (derivationStepZipperDown!195 (h!66801 (exprs!4610 lt!2137381)) (Context!8221 (t!373630 (exprs!4610 lt!2137381))) (h!66803 s!2326)))))

(assert (= (and d!1676659 res!2204717) b!5190665))

(assert (= (and d!1676659 c!894704) b!5190664))

(assert (= (and d!1676659 (not c!894704)) b!5190666))

(assert (= (and b!5190666 c!894705) b!5190668))

(assert (= (and b!5190666 (not c!894705)) b!5190667))

(assert (= (or b!5190664 b!5190668) bm!364905))

(declare-fun m!6246958 () Bool)

(assert (=> b!5190664 m!6246958))

(declare-fun m!6246960 () Bool)

(assert (=> b!5190665 m!6246960))

(declare-fun m!6246962 () Bool)

(assert (=> bm!364905 m!6246962))

(assert (=> b!5190234 d!1676659))

(declare-fun d!1676661 () Bool)

(assert (=> d!1676661 (= (flatMap!479 lt!2137386 lambda!259494) (choose!38554 lt!2137386 lambda!259494))))

(declare-fun bs!1208584 () Bool)

(assert (= bs!1208584 d!1676661))

(declare-fun m!6246964 () Bool)

(assert (=> bs!1208584 m!6246964))

(assert (=> b!5190234 d!1676661))

(declare-fun d!1676663 () Bool)

(declare-fun e!3233244 () Bool)

(assert (=> d!1676663 e!3233244))

(declare-fun res!2204720 () Bool)

(assert (=> d!1676663 (=> (not res!2204720) (not e!3233244))))

(declare-fun lt!2137510 () List!60478)

(declare-fun noDuplicate!1156 (List!60478) Bool)

(assert (=> d!1676663 (= res!2204720 (noDuplicate!1156 lt!2137510))))

(declare-fun choose!38556 ((Set Context!8220)) List!60478)

(assert (=> d!1676663 (= lt!2137510 (choose!38556 z!1189))))

(assert (=> d!1676663 (= (toList!8510 z!1189) lt!2137510)))

(declare-fun b!5190671 () Bool)

(declare-fun content!10692 (List!60478) (Set Context!8220))

(assert (=> b!5190671 (= e!3233244 (= (content!10692 lt!2137510) z!1189))))

(assert (= (and d!1676663 res!2204720) b!5190671))

(declare-fun m!6246966 () Bool)

(assert (=> d!1676663 m!6246966))

(declare-fun m!6246968 () Bool)

(assert (=> d!1676663 m!6246968))

(declare-fun m!6246970 () Bool)

(assert (=> b!5190671 m!6246970))

(assert (=> b!5190244 d!1676663))

(declare-fun d!1676665 () Bool)

(assert (=> d!1676665 (= (isEmpty!32307 (t!373631 zl!343)) (is-Nil!60354 (t!373631 zl!343)))))

(assert (=> b!5190243 d!1676665))

(declare-fun b!5190676 () Bool)

(declare-fun e!3233247 () Bool)

(declare-fun tp!1456126 () Bool)

(declare-fun tp!1456127 () Bool)

(assert (=> b!5190676 (= e!3233247 (and tp!1456126 tp!1456127))))

(assert (=> b!5190247 (= tp!1456090 e!3233247)))

(assert (= (and b!5190247 (is-Cons!60353 (exprs!4610 setElem!32761))) b!5190676))

(declare-fun b!5190689 () Bool)

(declare-fun e!3233250 () Bool)

(declare-fun tp!1456141 () Bool)

(assert (=> b!5190689 (= e!3233250 tp!1456141)))

(declare-fun b!5190690 () Bool)

(declare-fun tp!1456142 () Bool)

(declare-fun tp!1456140 () Bool)

(assert (=> b!5190690 (= e!3233250 (and tp!1456142 tp!1456140))))

(declare-fun b!5190687 () Bool)

(assert (=> b!5190687 (= e!3233250 tp_is_empty!38705)))

(assert (=> b!5190231 (= tp!1456085 e!3233250)))

(declare-fun b!5190688 () Bool)

(declare-fun tp!1456138 () Bool)

(declare-fun tp!1456139 () Bool)

(assert (=> b!5190688 (= e!3233250 (and tp!1456138 tp!1456139))))

(assert (= (and b!5190231 (is-ElementMatch!14726 (reg!15055 r!7292))) b!5190687))

(assert (= (and b!5190231 (is-Concat!23571 (reg!15055 r!7292))) b!5190688))

(assert (= (and b!5190231 (is-Star!14726 (reg!15055 r!7292))) b!5190689))

(assert (= (and b!5190231 (is-Union!14726 (reg!15055 r!7292))) b!5190690))

(declare-fun b!5190691 () Bool)

(declare-fun e!3233251 () Bool)

(declare-fun tp!1456143 () Bool)

(declare-fun tp!1456144 () Bool)

(assert (=> b!5190691 (= e!3233251 (and tp!1456143 tp!1456144))))

(assert (=> b!5190236 (= tp!1456083 e!3233251)))

(assert (= (and b!5190236 (is-Cons!60353 (exprs!4610 (h!66802 zl!343)))) b!5190691))

(declare-fun b!5190694 () Bool)

(declare-fun e!3233252 () Bool)

(declare-fun tp!1456148 () Bool)

(assert (=> b!5190694 (= e!3233252 tp!1456148)))

(declare-fun b!5190695 () Bool)

(declare-fun tp!1456149 () Bool)

(declare-fun tp!1456147 () Bool)

(assert (=> b!5190695 (= e!3233252 (and tp!1456149 tp!1456147))))

(declare-fun b!5190692 () Bool)

(assert (=> b!5190692 (= e!3233252 tp_is_empty!38705)))

(assert (=> b!5190241 (= tp!1456087 e!3233252)))

(declare-fun b!5190693 () Bool)

(declare-fun tp!1456145 () Bool)

(declare-fun tp!1456146 () Bool)

(assert (=> b!5190693 (= e!3233252 (and tp!1456145 tp!1456146))))

(assert (= (and b!5190241 (is-ElementMatch!14726 (regOne!29965 r!7292))) b!5190692))

(assert (= (and b!5190241 (is-Concat!23571 (regOne!29965 r!7292))) b!5190693))

(assert (= (and b!5190241 (is-Star!14726 (regOne!29965 r!7292))) b!5190694))

(assert (= (and b!5190241 (is-Union!14726 (regOne!29965 r!7292))) b!5190695))

(declare-fun b!5190698 () Bool)

(declare-fun e!3233253 () Bool)

(declare-fun tp!1456153 () Bool)

(assert (=> b!5190698 (= e!3233253 tp!1456153)))

(declare-fun b!5190699 () Bool)

(declare-fun tp!1456154 () Bool)

(declare-fun tp!1456152 () Bool)

(assert (=> b!5190699 (= e!3233253 (and tp!1456154 tp!1456152))))

(declare-fun b!5190696 () Bool)

(assert (=> b!5190696 (= e!3233253 tp_is_empty!38705)))

(assert (=> b!5190241 (= tp!1456089 e!3233253)))

(declare-fun b!5190697 () Bool)

(declare-fun tp!1456150 () Bool)

(declare-fun tp!1456151 () Bool)

(assert (=> b!5190697 (= e!3233253 (and tp!1456150 tp!1456151))))

(assert (= (and b!5190241 (is-ElementMatch!14726 (regTwo!29965 r!7292))) b!5190696))

(assert (= (and b!5190241 (is-Concat!23571 (regTwo!29965 r!7292))) b!5190697))

(assert (= (and b!5190241 (is-Star!14726 (regTwo!29965 r!7292))) b!5190698))

(assert (= (and b!5190241 (is-Union!14726 (regTwo!29965 r!7292))) b!5190699))

(declare-fun b!5190704 () Bool)

(declare-fun e!3233256 () Bool)

(declare-fun tp!1456157 () Bool)

(assert (=> b!5190704 (= e!3233256 (and tp_is_empty!38705 tp!1456157))))

(assert (=> b!5190226 (= tp!1456084 e!3233256)))

(assert (= (and b!5190226 (is-Cons!60355 (t!373632 s!2326))) b!5190704))

(declare-fun b!5190712 () Bool)

(declare-fun e!3233262 () Bool)

(declare-fun tp!1456162 () Bool)

(assert (=> b!5190712 (= e!3233262 tp!1456162)))

(declare-fun b!5190711 () Bool)

(declare-fun e!3233261 () Bool)

(declare-fun tp!1456163 () Bool)

(assert (=> b!5190711 (= e!3233261 (and (inv!80063 (h!66802 (t!373631 zl!343))) e!3233262 tp!1456163))))

(assert (=> b!5190249 (= tp!1456091 e!3233261)))

(assert (= b!5190711 b!5190712))

(assert (= (and b!5190249 (is-Cons!60354 (t!373631 zl!343))) b!5190711))

(declare-fun m!6246972 () Bool)

(assert (=> b!5190711 m!6246972))

(declare-fun b!5190715 () Bool)

(declare-fun e!3233263 () Bool)

(declare-fun tp!1456167 () Bool)

(assert (=> b!5190715 (= e!3233263 tp!1456167)))

(declare-fun b!5190716 () Bool)

(declare-fun tp!1456168 () Bool)

(declare-fun tp!1456166 () Bool)

(assert (=> b!5190716 (= e!3233263 (and tp!1456168 tp!1456166))))

(declare-fun b!5190713 () Bool)

(assert (=> b!5190713 (= e!3233263 tp_is_empty!38705)))

(assert (=> b!5190238 (= tp!1456086 e!3233263)))

(declare-fun b!5190714 () Bool)

(declare-fun tp!1456164 () Bool)

(declare-fun tp!1456165 () Bool)

(assert (=> b!5190714 (= e!3233263 (and tp!1456164 tp!1456165))))

(assert (= (and b!5190238 (is-ElementMatch!14726 (regOne!29964 r!7292))) b!5190713))

(assert (= (and b!5190238 (is-Concat!23571 (regOne!29964 r!7292))) b!5190714))

(assert (= (and b!5190238 (is-Star!14726 (regOne!29964 r!7292))) b!5190715))

(assert (= (and b!5190238 (is-Union!14726 (regOne!29964 r!7292))) b!5190716))

(declare-fun b!5190719 () Bool)

(declare-fun e!3233264 () Bool)

(declare-fun tp!1456172 () Bool)

(assert (=> b!5190719 (= e!3233264 tp!1456172)))

(declare-fun b!5190720 () Bool)

(declare-fun tp!1456173 () Bool)

(declare-fun tp!1456171 () Bool)

(assert (=> b!5190720 (= e!3233264 (and tp!1456173 tp!1456171))))

(declare-fun b!5190717 () Bool)

(assert (=> b!5190717 (= e!3233264 tp_is_empty!38705)))

(assert (=> b!5190238 (= tp!1456082 e!3233264)))

(declare-fun b!5190718 () Bool)

(declare-fun tp!1456169 () Bool)

(declare-fun tp!1456170 () Bool)

(assert (=> b!5190718 (= e!3233264 (and tp!1456169 tp!1456170))))

(assert (= (and b!5190238 (is-ElementMatch!14726 (regTwo!29964 r!7292))) b!5190717))

(assert (= (and b!5190238 (is-Concat!23571 (regTwo!29964 r!7292))) b!5190718))

(assert (= (and b!5190238 (is-Star!14726 (regTwo!29964 r!7292))) b!5190719))

(assert (= (and b!5190238 (is-Union!14726 (regTwo!29964 r!7292))) b!5190720))

(declare-fun condSetEmpty!32767 () Bool)

(assert (=> setNonEmpty!32761 (= condSetEmpty!32767 (= setRest!32761 (as set.empty (Set Context!8220))))))

(declare-fun setRes!32767 () Bool)

(assert (=> setNonEmpty!32761 (= tp!1456088 setRes!32767)))

(declare-fun setIsEmpty!32767 () Bool)

(assert (=> setIsEmpty!32767 setRes!32767))

(declare-fun tp!1456178 () Bool)

(declare-fun setElem!32767 () Context!8220)

(declare-fun e!3233267 () Bool)

(declare-fun setNonEmpty!32767 () Bool)

(assert (=> setNonEmpty!32767 (= setRes!32767 (and tp!1456178 (inv!80063 setElem!32767) e!3233267))))

(declare-fun setRest!32767 () (Set Context!8220))

(assert (=> setNonEmpty!32767 (= setRest!32761 (set.union (set.insert setElem!32767 (as set.empty (Set Context!8220))) setRest!32767))))

(declare-fun b!5190725 () Bool)

(declare-fun tp!1456179 () Bool)

(assert (=> b!5190725 (= e!3233267 tp!1456179)))

(assert (= (and setNonEmpty!32761 condSetEmpty!32767) setIsEmpty!32767))

(assert (= (and setNonEmpty!32761 (not condSetEmpty!32767)) setNonEmpty!32767))

(assert (= setNonEmpty!32767 b!5190725))

(declare-fun m!6246974 () Bool)

(assert (=> setNonEmpty!32767 m!6246974))

(declare-fun b_lambda!201163 () Bool)

(assert (= b_lambda!201157 (or b!5190229 b_lambda!201163)))

(declare-fun bs!1208585 () Bool)

(declare-fun d!1676667 () Bool)

(assert (= bs!1208585 (and d!1676667 b!5190229)))

(assert (=> bs!1208585 (= (dynLambda!23898 lambda!259494 (h!66802 zl!343)) (derivationStepZipperUp!116 (h!66802 zl!343) (h!66803 s!2326)))))

(assert (=> bs!1208585 m!6246634))

(assert (=> d!1676609 d!1676667))

(declare-fun b_lambda!201165 () Bool)

(assert (= b_lambda!201159 (or b!5190229 b_lambda!201165)))

(declare-fun bs!1208586 () Bool)

(declare-fun d!1676669 () Bool)

(assert (= bs!1208586 (and d!1676669 b!5190229)))

(assert (=> bs!1208586 (= (dynLambda!23898 lambda!259494 lt!2137388) (derivationStepZipperUp!116 lt!2137388 (h!66803 s!2326)))))

(assert (=> bs!1208586 m!6246600))

(assert (=> d!1676651 d!1676669))

(declare-fun b_lambda!201167 () Bool)

(assert (= b_lambda!201161 (or b!5190229 b_lambda!201167)))

(declare-fun bs!1208587 () Bool)

(declare-fun d!1676671 () Bool)

(assert (= bs!1208587 (and d!1676671 b!5190229)))

(assert (=> bs!1208587 (= (dynLambda!23898 lambda!259494 lt!2137381) (derivationStepZipperUp!116 lt!2137381 (h!66803 s!2326)))))

(assert (=> bs!1208587 m!6246598))

(assert (=> d!1676655 d!1676671))

(push 1)

(assert (not b!5190420))

(assert (not b!5190697))

(assert (not b!5190699))

(assert (not b!5190419))

(assert (not b!5190472))

(assert (not d!1676639))

(assert (not b!5190612))

(assert (not bm!364868))

(assert (not b!5190572))

(assert (not d!1676651))

(assert (not b!5190570))

(assert (not b_lambda!201163))

(assert (not bm!364899))

(assert (not b!5190605))

(assert (not b!5190646))

(assert (not bm!364867))

(assert (not b!5190640))

(assert (not b!5190477))

(assert (not bm!364901))

(assert (not b!5190596))

(assert (not b!5190476))

(assert (not b_lambda!201165))

(assert (not b!5190712))

(assert (not b!5190630))

(assert (not b!5190621))

(assert (not b!5190563))

(assert (not b!5190559))

(assert (not bm!364893))

(assert (not bm!364883))

(assert (not d!1676655))

(assert (not b!5190569))

(assert (not b!5190660))

(assert (not bm!364851))

(assert (not b!5190367))

(assert (not b!5190411))

(assert (not b!5190564))

(assert (not b!5190691))

(assert (not d!1676663))

(assert (not b!5190363))

(assert (not b!5190611))

(assert (not b!5190532))

(assert (not d!1676629))

(assert (not d!1676597))

(assert (not b!5190651))

(assert (not b!5190529))

(assert (not bm!364903))

(assert (not b!5190649))

(assert (not b!5190664))

(assert (not d!1676627))

(assert (not b!5190624))

(assert (not b!5190526))

(assert (not b!5190499))

(assert (not d!1676647))

(assert (not d!1676625))

(assert (not b!5190714))

(assert (not b!5190423))

(assert (not d!1676643))

(assert (not bm!364870))

(assert (not b!5190694))

(assert (not b!5190609))

(assert (not bm!364881))

(assert (not b!5190698))

(assert (not d!1676623))

(assert (not b!5190571))

(assert (not bm!364847))

(assert (not b!5190719))

(assert (not bm!364895))

(assert (not d!1676657))

(assert (not b!5190695))

(assert tp_is_empty!38705)

(assert (not b!5190704))

(assert (not b!5190402))

(assert (not d!1676601))

(assert (not d!1676603))

(assert (not b!5190405))

(assert (not b!5190711))

(assert (not b!5190720))

(assert (not b!5190562))

(assert (not bm!364904))

(assert (not b!5190527))

(assert (not bm!364905))

(assert (not bs!1208586))

(assert (not bm!364897))

(assert (not b!5190560))

(assert (not b!5190528))

(assert (not b!5190665))

(assert (not d!1676641))

(assert (not bm!364854))

(assert (not d!1676621))

(assert (not b!5190693))

(assert (not b!5190634))

(assert (not bm!364898))

(assert (not b!5190671))

(assert (not bm!364880))

(assert (not bs!1208587))

(assert (not b!5190488))

(assert (not b!5190715))

(assert (not d!1676661))

(assert (not bm!364873))

(assert (not b!5190412))

(assert (not bs!1208585))

(assert (not b!5190716))

(assert (not b!5190537))

(assert (not bm!364874))

(assert (not b_lambda!201167))

(assert (not d!1676631))

(assert (not bm!364848))

(assert (not b!5190725))

(assert (not setNonEmpty!32767))

(assert (not b!5190401))

(assert (not d!1676609))

(assert (not b!5190622))

(assert (not b!5190439))

(assert (not bm!364896))

(assert (not b!5190688))

(assert (not d!1676595))

(assert (not b!5190424))

(assert (not b!5190689))

(assert (not d!1676593))

(assert (not b!5190718))

(assert (not bm!364894))

(assert (not b!5190676))

(assert (not b!5190650))

(assert (not b!5190525))

(assert (not bm!364900))

(assert (not d!1676599))

(assert (not d!1676619))

(assert (not b!5190615))

(assert (not b!5190636))

(assert (not b!5190438))

(assert (not b!5190637))

(assert (not b!5190568))

(assert (not b!5190567))

(assert (not b!5190524))

(assert (not d!1676633))

(assert (not b!5190414))

(assert (not b!5190690))

(assert (not b!5190425))

(assert (not bm!364875))

(assert (not d!1676605))

(assert (not b!5190647))

(assert (not bm!364877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

