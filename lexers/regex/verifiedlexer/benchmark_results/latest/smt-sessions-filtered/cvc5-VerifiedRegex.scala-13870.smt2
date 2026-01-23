; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737246 () Bool)

(assert start!737246)

(declare-fun b!7716193 () Bool)

(assert (=> b!7716193 true))

(assert (=> b!7716193 true))

(declare-fun bs!1962729 () Bool)

(declare-fun b!7716196 () Bool)

(assert (= bs!1962729 (and b!7716196 b!7716193)))

(declare-fun lambda!470883 () Int)

(declare-fun lambda!470882 () Int)

(assert (=> bs!1962729 (not (= lambda!470883 lambda!470882))))

(assert (=> b!7716196 true))

(assert (=> b!7716196 true))

(declare-fun b!7716182 () Bool)

(declare-fun e!4577308 () Bool)

(declare-fun tp!2264055 () Bool)

(declare-fun tp!2264054 () Bool)

(assert (=> b!7716182 (= e!4577308 (and tp!2264055 tp!2264054))))

(declare-fun b!7716183 () Bool)

(declare-fun tp!2264051 () Bool)

(declare-fun tp!2264052 () Bool)

(assert (=> b!7716183 (= e!4577308 (and tp!2264051 tp!2264052))))

(declare-fun b!7716184 () Bool)

(declare-fun e!4577310 () Bool)

(declare-fun e!4577306 () Bool)

(assert (=> b!7716184 (= e!4577310 e!4577306)))

(declare-fun res!3078619 () Bool)

(assert (=> b!7716184 (=> res!3078619 e!4577306)))

(declare-datatypes ((C!41394 0))(
  ( (C!41395 (val!31137 Int)) )
))
(declare-datatypes ((Regex!20534 0))(
  ( (ElementMatch!20534 (c!1422372 C!41394)) (Concat!29379 (regOne!41580 Regex!20534) (regTwo!41580 Regex!20534)) (EmptyExpr!20534) (Star!20534 (reg!20863 Regex!20534)) (EmptyLang!20534) (Union!20534 (regOne!41581 Regex!20534) (regTwo!41581 Regex!20534)) )
))
(declare-fun r!14126 () Regex!20534)

(declare-fun validRegex!10952 (Regex!20534) Bool)

(assert (=> b!7716184 (= res!3078619 (not (validRegex!10952 (reg!20863 r!14126))))))

(declare-datatypes ((List!73385 0))(
  ( (Nil!73261) (Cons!73261 (h!79709 C!41394) (t!388120 List!73385)) )
))
(declare-datatypes ((tuple2!69530 0))(
  ( (tuple2!69531 (_1!38068 List!73385) (_2!38068 List!73385)) )
))
(declare-fun lt!2665625 () tuple2!69530)

(declare-fun matchR!10030 (Regex!20534 List!73385) Bool)

(declare-fun matchRSpec!4624 (Regex!20534 List!73385) Bool)

(assert (=> b!7716184 (= (matchR!10030 r!14126 (_2!38068 lt!2665625)) (matchRSpec!4624 r!14126 (_2!38068 lt!2665625)))))

(declare-datatypes ((Unit!168128 0))(
  ( (Unit!168129) )
))
(declare-fun lt!2665631 () Unit!168128)

(declare-fun mainMatchTheorem!4599 (Regex!20534 List!73385) Unit!168128)

(assert (=> b!7716184 (= lt!2665631 (mainMatchTheorem!4599 r!14126 (_2!38068 lt!2665625)))))

(assert (=> b!7716184 (= (matchR!10030 (reg!20863 r!14126) (_1!38068 lt!2665625)) (matchRSpec!4624 (reg!20863 r!14126) (_1!38068 lt!2665625)))))

(declare-fun lt!2665632 () Unit!168128)

(assert (=> b!7716184 (= lt!2665632 (mainMatchTheorem!4599 (reg!20863 r!14126) (_1!38068 lt!2665625)))))

(declare-fun pickWitness!513 (Int) tuple2!69530)

(assert (=> b!7716184 (= lt!2665625 (pickWitness!513 lambda!470883))))

(declare-fun b!7716185 () Bool)

(declare-fun e!4577309 () Unit!168128)

(declare-fun Unit!168130 () Unit!168128)

(assert (=> b!7716185 (= e!4577309 Unit!168130)))

(declare-fun lt!2665630 () Unit!168128)

(declare-fun s!9605 () List!73385)

(declare-fun lemmaStarAppConcat!49 (Regex!20534 List!73385) Unit!168128)

(assert (=> b!7716185 (= lt!2665630 (lemmaStarAppConcat!49 (reg!20863 r!14126) s!9605))))

(assert (=> b!7716185 (matchR!10030 (Concat!29379 (reg!20863 r!14126) r!14126) s!9605)))

(declare-fun lt!2665628 () Unit!168128)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!307 (Regex!20534 Regex!20534 List!73385) Unit!168128)

(assert (=> b!7716185 (= lt!2665628 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!307 (reg!20863 r!14126) r!14126 s!9605))))

(assert (=> b!7716185 false))

(declare-fun b!7716186 () Bool)

(declare-fun tp_is_empty!51423 () Bool)

(assert (=> b!7716186 (= e!4577308 tp_is_empty!51423)))

(declare-fun b!7716187 () Bool)

(declare-fun isPrefix!6224 (List!73385 List!73385) Bool)

(assert (=> b!7716187 (= e!4577306 (isPrefix!6224 Nil!73261 (_1!38068 lt!2665625)))))

(declare-fun b!7716188 () Bool)

(declare-fun e!4577311 () Bool)

(assert (=> b!7716188 (= e!4577311 e!4577310)))

(declare-fun res!3078620 () Bool)

(assert (=> b!7716188 (=> res!3078620 e!4577310)))

(declare-fun Exists!4659 (Int) Bool)

(assert (=> b!7716188 (= res!3078620 (Exists!4659 lambda!470882))))

(declare-fun lt!2665629 () Unit!168128)

(assert (=> b!7716188 (= lt!2665629 e!4577309)))

(declare-fun c!1422371 () Bool)

(assert (=> b!7716188 (= c!1422371 (matchR!10030 r!14126 s!9605))))

(declare-fun b!7716189 () Bool)

(declare-fun Unit!168131 () Unit!168128)

(assert (=> b!7716189 (= e!4577309 Unit!168131)))

(declare-fun b!7716190 () Bool)

(declare-fun e!4577312 () Bool)

(declare-fun tp!2264053 () Bool)

(assert (=> b!7716190 (= e!4577312 (and tp_is_empty!51423 tp!2264053))))

(declare-fun b!7716192 () Bool)

(declare-fun res!3078617 () Bool)

(declare-fun e!4577307 () Bool)

(assert (=> b!7716192 (=> (not res!3078617) (not e!4577307))))

(assert (=> b!7716192 (= res!3078617 (and (not (is-EmptyExpr!20534 r!14126)) (not (is-EmptyLang!20534 r!14126)) (not (is-ElementMatch!20534 r!14126)) (not (is-Union!20534 r!14126)) (is-Star!20534 r!14126)))))

(assert (=> b!7716193 (= e!4577307 (not e!4577311))))

(declare-fun res!3078618 () Bool)

(assert (=> b!7716193 (=> res!3078618 e!4577311)))

(declare-fun lt!2665627 () Bool)

(assert (=> b!7716193 (= res!3078618 lt!2665627)))

(assert (=> b!7716193 (= lt!2665627 (Exists!4659 lambda!470882))))

(declare-datatypes ((Option!17559 0))(
  ( (None!17558) (Some!17558 (v!54693 tuple2!69530)) )
))
(declare-fun isDefined!14175 (Option!17559) Bool)

(declare-fun findConcatSeparation!3589 (Regex!20534 Regex!20534 List!73385 List!73385 List!73385) Option!17559)

(assert (=> b!7716193 (= lt!2665627 (isDefined!14175 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605)))))

(declare-fun lt!2665626 () Unit!168128)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3347 (Regex!20534 Regex!20534 List!73385) Unit!168128)

(assert (=> b!7716193 (= lt!2665626 (lemmaFindConcatSeparationEquivalentToExists!3347 (reg!20863 r!14126) r!14126 s!9605))))

(declare-fun b!7716194 () Bool)

(declare-fun tp!2264050 () Bool)

(assert (=> b!7716194 (= e!4577308 tp!2264050)))

(declare-fun b!7716195 () Bool)

(declare-fun res!3078621 () Bool)

(assert (=> b!7716195 (=> res!3078621 e!4577306)))

(declare-fun ++!17742 (List!73385 List!73385) List!73385)

(assert (=> b!7716195 (= res!3078621 (not (= (++!17742 (_1!38068 lt!2665625) (_2!38068 lt!2665625)) s!9605)))))

(declare-fun b!7716191 () Bool)

(declare-fun res!3078615 () Bool)

(assert (=> b!7716191 (=> (not res!3078615) (not e!4577307))))

(declare-fun isEmpty!41916 (List!73385) Bool)

(assert (=> b!7716191 (= res!3078615 (not (isEmpty!41916 s!9605)))))

(declare-fun res!3078616 () Bool)

(assert (=> start!737246 (=> (not res!3078616) (not e!4577307))))

(assert (=> start!737246 (= res!3078616 (validRegex!10952 r!14126))))

(assert (=> start!737246 e!4577307))

(assert (=> start!737246 e!4577308))

(assert (=> start!737246 e!4577312))

(declare-fun res!3078614 () Bool)

(assert (=> b!7716196 (=> res!3078614 e!4577310)))

(assert (=> b!7716196 (= res!3078614 (not (Exists!4659 lambda!470883)))))

(declare-fun b!7716197 () Bool)

(declare-fun res!3078613 () Bool)

(assert (=> b!7716197 (=> res!3078613 e!4577306)))

(assert (=> b!7716197 (= res!3078613 (not (validRegex!10952 r!14126)))))

(assert (= (and start!737246 res!3078616) b!7716192))

(assert (= (and b!7716192 res!3078617) b!7716191))

(assert (= (and b!7716191 res!3078615) b!7716193))

(assert (= (and b!7716193 (not res!3078618)) b!7716188))

(assert (= (and b!7716188 c!1422371) b!7716185))

(assert (= (and b!7716188 (not c!1422371)) b!7716189))

(assert (= (and b!7716188 (not res!3078620)) b!7716196))

(assert (= (and b!7716196 (not res!3078614)) b!7716184))

(assert (= (and b!7716184 (not res!3078619)) b!7716197))

(assert (= (and b!7716197 (not res!3078613)) b!7716195))

(assert (= (and b!7716195 (not res!3078621)) b!7716187))

(assert (= (and start!737246 (is-ElementMatch!20534 r!14126)) b!7716186))

(assert (= (and start!737246 (is-Concat!29379 r!14126)) b!7716183))

(assert (= (and start!737246 (is-Star!20534 r!14126)) b!7716194))

(assert (= (and start!737246 (is-Union!20534 r!14126)) b!7716182))

(assert (= (and start!737246 (is-Cons!73261 s!9605)) b!7716190))

(declare-fun m!8197726 () Bool)

(assert (=> b!7716191 m!8197726))

(declare-fun m!8197728 () Bool)

(assert (=> b!7716184 m!8197728))

(declare-fun m!8197730 () Bool)

(assert (=> b!7716184 m!8197730))

(declare-fun m!8197732 () Bool)

(assert (=> b!7716184 m!8197732))

(declare-fun m!8197734 () Bool)

(assert (=> b!7716184 m!8197734))

(declare-fun m!8197736 () Bool)

(assert (=> b!7716184 m!8197736))

(declare-fun m!8197738 () Bool)

(assert (=> b!7716184 m!8197738))

(declare-fun m!8197740 () Bool)

(assert (=> b!7716184 m!8197740))

(declare-fun m!8197742 () Bool)

(assert (=> b!7716184 m!8197742))

(declare-fun m!8197744 () Bool)

(assert (=> b!7716196 m!8197744))

(declare-fun m!8197746 () Bool)

(assert (=> b!7716195 m!8197746))

(declare-fun m!8197748 () Bool)

(assert (=> b!7716185 m!8197748))

(declare-fun m!8197750 () Bool)

(assert (=> b!7716185 m!8197750))

(declare-fun m!8197752 () Bool)

(assert (=> b!7716185 m!8197752))

(declare-fun m!8197754 () Bool)

(assert (=> b!7716187 m!8197754))

(declare-fun m!8197756 () Bool)

(assert (=> b!7716188 m!8197756))

(declare-fun m!8197758 () Bool)

(assert (=> b!7716188 m!8197758))

(assert (=> b!7716193 m!8197756))

(declare-fun m!8197760 () Bool)

(assert (=> b!7716193 m!8197760))

(assert (=> b!7716193 m!8197760))

(declare-fun m!8197762 () Bool)

(assert (=> b!7716193 m!8197762))

(declare-fun m!8197764 () Bool)

(assert (=> b!7716193 m!8197764))

(declare-fun m!8197766 () Bool)

(assert (=> b!7716197 m!8197766))

(assert (=> start!737246 m!8197766))

(push 1)

(assert (not b!7716184))

(assert (not b!7716188))

(assert (not b!7716182))

(assert (not b!7716194))

(assert (not b!7716191))

(assert (not b!7716193))

(assert (not b!7716190))

(assert (not b!7716185))

(assert (not b!7716195))

(assert (not b!7716187))

(assert (not start!737246))

(assert (not b!7716183))

(assert (not b!7716197))

(assert (not b!7716196))

(assert tp_is_empty!51423)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7716283 () Bool)

(declare-fun res!3078677 () Bool)

(declare-fun e!4577348 () Bool)

(assert (=> b!7716283 (=> (not res!3078677) (not e!4577348))))

(declare-fun head!15776 (List!73385) C!41394)

(assert (=> b!7716283 (= res!3078677 (= (head!15776 Nil!73261) (head!15776 (_1!38068 lt!2665625))))))

(declare-fun d!2337073 () Bool)

(declare-fun e!4577350 () Bool)

(assert (=> d!2337073 e!4577350))

(declare-fun res!3078680 () Bool)

(assert (=> d!2337073 (=> res!3078680 e!4577350)))

(declare-fun lt!2665659 () Bool)

(assert (=> d!2337073 (= res!3078680 (not lt!2665659))))

(declare-fun e!4577349 () Bool)

(assert (=> d!2337073 (= lt!2665659 e!4577349)))

(declare-fun res!3078679 () Bool)

(assert (=> d!2337073 (=> res!3078679 e!4577349)))

(assert (=> d!2337073 (= res!3078679 (is-Nil!73261 Nil!73261))))

(assert (=> d!2337073 (= (isPrefix!6224 Nil!73261 (_1!38068 lt!2665625)) lt!2665659)))

(declare-fun b!7716284 () Bool)

(declare-fun tail!15316 (List!73385) List!73385)

(assert (=> b!7716284 (= e!4577348 (isPrefix!6224 (tail!15316 Nil!73261) (tail!15316 (_1!38068 lt!2665625))))))

(declare-fun b!7716282 () Bool)

(assert (=> b!7716282 (= e!4577349 e!4577348)))

(declare-fun res!3078678 () Bool)

(assert (=> b!7716282 (=> (not res!3078678) (not e!4577348))))

(assert (=> b!7716282 (= res!3078678 (not (is-Nil!73261 (_1!38068 lt!2665625))))))

(declare-fun b!7716285 () Bool)

(declare-fun size!42618 (List!73385) Int)

(assert (=> b!7716285 (= e!4577350 (>= (size!42618 (_1!38068 lt!2665625)) (size!42618 Nil!73261)))))

(assert (= (and d!2337073 (not res!3078679)) b!7716282))

(assert (= (and b!7716282 res!3078678) b!7716283))

(assert (= (and b!7716283 res!3078677) b!7716284))

(assert (= (and d!2337073 (not res!3078680)) b!7716285))

(declare-fun m!8197816 () Bool)

(assert (=> b!7716283 m!8197816))

(declare-fun m!8197818 () Bool)

(assert (=> b!7716283 m!8197818))

(declare-fun m!8197820 () Bool)

(assert (=> b!7716284 m!8197820))

(declare-fun m!8197822 () Bool)

(assert (=> b!7716284 m!8197822))

(assert (=> b!7716284 m!8197820))

(assert (=> b!7716284 m!8197822))

(declare-fun m!8197824 () Bool)

(assert (=> b!7716284 m!8197824))

(declare-fun m!8197826 () Bool)

(assert (=> b!7716285 m!8197826))

(declare-fun m!8197828 () Bool)

(assert (=> b!7716285 m!8197828))

(assert (=> b!7716187 d!2337073))

(declare-fun b!7716304 () Bool)

(declare-fun e!4577370 () Bool)

(declare-fun e!4577365 () Bool)

(assert (=> b!7716304 (= e!4577370 e!4577365)))

(declare-fun c!1422381 () Bool)

(assert (=> b!7716304 (= c!1422381 (is-Union!20534 r!14126))))

(declare-fun b!7716305 () Bool)

(declare-fun e!4577371 () Bool)

(declare-fun call!713200 () Bool)

(assert (=> b!7716305 (= e!4577371 call!713200)))

(declare-fun c!1422382 () Bool)

(declare-fun bm!713194 () Bool)

(declare-fun call!713199 () Bool)

(assert (=> bm!713194 (= call!713199 (validRegex!10952 (ite c!1422382 (reg!20863 r!14126) (ite c!1422381 (regTwo!41581 r!14126) (regTwo!41580 r!14126)))))))

(declare-fun b!7716306 () Bool)

(declare-fun e!4577366 () Bool)

(assert (=> b!7716306 (= e!4577366 e!4577370)))

(assert (=> b!7716306 (= c!1422382 (is-Star!20534 r!14126))))

(declare-fun b!7716307 () Bool)

(declare-fun e!4577368 () Bool)

(declare-fun e!4577367 () Bool)

(assert (=> b!7716307 (= e!4577368 e!4577367)))

(declare-fun res!3078693 () Bool)

(assert (=> b!7716307 (=> (not res!3078693) (not e!4577367))))

(declare-fun call!713201 () Bool)

(assert (=> b!7716307 (= res!3078693 call!713201)))

(declare-fun bm!713195 () Bool)

(assert (=> bm!713195 (= call!713200 call!713199)))

(declare-fun b!7716308 () Bool)

(assert (=> b!7716308 (= e!4577367 call!713200)))

(declare-fun b!7716309 () Bool)

(declare-fun res!3078691 () Bool)

(assert (=> b!7716309 (=> res!3078691 e!4577368)))

(assert (=> b!7716309 (= res!3078691 (not (is-Concat!29379 r!14126)))))

(assert (=> b!7716309 (= e!4577365 e!4577368)))

(declare-fun b!7716310 () Bool)

(declare-fun e!4577369 () Bool)

(assert (=> b!7716310 (= e!4577370 e!4577369)))

(declare-fun res!3078692 () Bool)

(declare-fun nullable!9011 (Regex!20534) Bool)

(assert (=> b!7716310 (= res!3078692 (not (nullable!9011 (reg!20863 r!14126))))))

(assert (=> b!7716310 (=> (not res!3078692) (not e!4577369))))

(declare-fun b!7716311 () Bool)

(assert (=> b!7716311 (= e!4577369 call!713199)))

(declare-fun d!2337083 () Bool)

(declare-fun res!3078695 () Bool)

(assert (=> d!2337083 (=> res!3078695 e!4577366)))

(assert (=> d!2337083 (= res!3078695 (is-ElementMatch!20534 r!14126))))

(assert (=> d!2337083 (= (validRegex!10952 r!14126) e!4577366)))

(declare-fun b!7716312 () Bool)

(declare-fun res!3078694 () Bool)

(assert (=> b!7716312 (=> (not res!3078694) (not e!4577371))))

(assert (=> b!7716312 (= res!3078694 call!713201)))

(assert (=> b!7716312 (= e!4577365 e!4577371)))

(declare-fun bm!713196 () Bool)

(assert (=> bm!713196 (= call!713201 (validRegex!10952 (ite c!1422381 (regOne!41581 r!14126) (regOne!41580 r!14126))))))

(assert (= (and d!2337083 (not res!3078695)) b!7716306))

(assert (= (and b!7716306 c!1422382) b!7716310))

(assert (= (and b!7716306 (not c!1422382)) b!7716304))

(assert (= (and b!7716310 res!3078692) b!7716311))

(assert (= (and b!7716304 c!1422381) b!7716312))

(assert (= (and b!7716304 (not c!1422381)) b!7716309))

(assert (= (and b!7716312 res!3078694) b!7716305))

(assert (= (and b!7716309 (not res!3078691)) b!7716307))

(assert (= (and b!7716307 res!3078693) b!7716308))

(assert (= (or b!7716312 b!7716307) bm!713196))

(assert (= (or b!7716305 b!7716308) bm!713195))

(assert (= (or b!7716311 bm!713195) bm!713194))

(declare-fun m!8197830 () Bool)

(assert (=> bm!713194 m!8197830))

(declare-fun m!8197832 () Bool)

(assert (=> b!7716310 m!8197832))

(declare-fun m!8197834 () Bool)

(assert (=> bm!713196 m!8197834))

(assert (=> start!737246 d!2337083))

(declare-fun d!2337085 () Bool)

(declare-fun choose!59204 (Int) Bool)

(assert (=> d!2337085 (= (Exists!4659 lambda!470882) (choose!59204 lambda!470882))))

(declare-fun bs!1962734 () Bool)

(assert (= bs!1962734 d!2337085))

(declare-fun m!8197836 () Bool)

(assert (=> bs!1962734 m!8197836))

(assert (=> b!7716193 d!2337085))

(declare-fun d!2337087 () Bool)

(declare-fun isEmpty!41918 (Option!17559) Bool)

(assert (=> d!2337087 (= (isDefined!14175 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605)) (not (isEmpty!41918 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605))))))

(declare-fun bs!1962735 () Bool)

(assert (= bs!1962735 d!2337087))

(assert (=> bs!1962735 m!8197760))

(declare-fun m!8197838 () Bool)

(assert (=> bs!1962735 m!8197838))

(assert (=> b!7716193 d!2337087))

(declare-fun d!2337089 () Bool)

(declare-fun e!4577394 () Bool)

(assert (=> d!2337089 e!4577394))

(declare-fun res!3078716 () Bool)

(assert (=> d!2337089 (=> res!3078716 e!4577394)))

(declare-fun e!4577396 () Bool)

(assert (=> d!2337089 (= res!3078716 e!4577396)))

(declare-fun res!3078717 () Bool)

(assert (=> d!2337089 (=> (not res!3078717) (not e!4577396))))

(declare-fun lt!2665672 () Option!17559)

(assert (=> d!2337089 (= res!3078717 (isDefined!14175 lt!2665672))))

(declare-fun e!4577392 () Option!17559)

(assert (=> d!2337089 (= lt!2665672 e!4577392)))

(declare-fun c!1422392 () Bool)

(declare-fun e!4577395 () Bool)

(assert (=> d!2337089 (= c!1422392 e!4577395)))

(declare-fun res!3078718 () Bool)

(assert (=> d!2337089 (=> (not res!3078718) (not e!4577395))))

(assert (=> d!2337089 (= res!3078718 (matchR!10030 (reg!20863 r!14126) Nil!73261))))

(assert (=> d!2337089 (validRegex!10952 (reg!20863 r!14126))))

(assert (=> d!2337089 (= (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605) lt!2665672)))

(declare-fun b!7716349 () Bool)

(assert (=> b!7716349 (= e!4577395 (matchR!10030 r!14126 s!9605))))

(declare-fun b!7716350 () Bool)

(declare-fun res!3078720 () Bool)

(assert (=> b!7716350 (=> (not res!3078720) (not e!4577396))))

(declare-fun get!25999 (Option!17559) tuple2!69530)

(assert (=> b!7716350 (= res!3078720 (matchR!10030 (reg!20863 r!14126) (_1!38068 (get!25999 lt!2665672))))))

(declare-fun b!7716351 () Bool)

(assert (=> b!7716351 (= e!4577394 (not (isDefined!14175 lt!2665672)))))

(declare-fun b!7716352 () Bool)

(declare-fun res!3078719 () Bool)

(assert (=> b!7716352 (=> (not res!3078719) (not e!4577396))))

(assert (=> b!7716352 (= res!3078719 (matchR!10030 r!14126 (_2!38068 (get!25999 lt!2665672))))))

(declare-fun b!7716353 () Bool)

(declare-fun e!4577393 () Option!17559)

(assert (=> b!7716353 (= e!4577392 e!4577393)))

(declare-fun c!1422391 () Bool)

(assert (=> b!7716353 (= c!1422391 (is-Nil!73261 s!9605))))

(declare-fun b!7716354 () Bool)

(declare-fun lt!2665674 () Unit!168128)

(declare-fun lt!2665673 () Unit!168128)

(assert (=> b!7716354 (= lt!2665674 lt!2665673)))

(assert (=> b!7716354 (= (++!17742 (++!17742 Nil!73261 (Cons!73261 (h!79709 s!9605) Nil!73261)) (t!388120 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3293 (List!73385 C!41394 List!73385 List!73385) Unit!168128)

(assert (=> b!7716354 (= lt!2665673 (lemmaMoveElementToOtherListKeepsConcatEq!3293 Nil!73261 (h!79709 s!9605) (t!388120 s!9605) s!9605))))

(assert (=> b!7716354 (= e!4577393 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 (++!17742 Nil!73261 (Cons!73261 (h!79709 s!9605) Nil!73261)) (t!388120 s!9605) s!9605))))

(declare-fun b!7716355 () Bool)

(assert (=> b!7716355 (= e!4577392 (Some!17558 (tuple2!69531 Nil!73261 s!9605)))))

(declare-fun b!7716356 () Bool)

(assert (=> b!7716356 (= e!4577393 None!17558)))

(declare-fun b!7716357 () Bool)

(assert (=> b!7716357 (= e!4577396 (= (++!17742 (_1!38068 (get!25999 lt!2665672)) (_2!38068 (get!25999 lt!2665672))) s!9605))))

(assert (= (and d!2337089 res!3078718) b!7716349))

(assert (= (and d!2337089 c!1422392) b!7716355))

(assert (= (and d!2337089 (not c!1422392)) b!7716353))

(assert (= (and b!7716353 c!1422391) b!7716356))

(assert (= (and b!7716353 (not c!1422391)) b!7716354))

(assert (= (and d!2337089 res!3078717) b!7716350))

(assert (= (and b!7716350 res!3078720) b!7716352))

(assert (= (and b!7716352 res!3078719) b!7716357))

(assert (= (and d!2337089 (not res!3078716)) b!7716351))

(declare-fun m!8197840 () Bool)

(assert (=> d!2337089 m!8197840))

(declare-fun m!8197842 () Bool)

(assert (=> d!2337089 m!8197842))

(assert (=> d!2337089 m!8197738))

(assert (=> b!7716349 m!8197758))

(declare-fun m!8197844 () Bool)

(assert (=> b!7716350 m!8197844))

(declare-fun m!8197846 () Bool)

(assert (=> b!7716350 m!8197846))

(assert (=> b!7716351 m!8197840))

(assert (=> b!7716352 m!8197844))

(declare-fun m!8197848 () Bool)

(assert (=> b!7716352 m!8197848))

(declare-fun m!8197850 () Bool)

(assert (=> b!7716354 m!8197850))

(assert (=> b!7716354 m!8197850))

(declare-fun m!8197852 () Bool)

(assert (=> b!7716354 m!8197852))

(declare-fun m!8197854 () Bool)

(assert (=> b!7716354 m!8197854))

(assert (=> b!7716354 m!8197850))

(declare-fun m!8197856 () Bool)

(assert (=> b!7716354 m!8197856))

(assert (=> b!7716357 m!8197844))

(declare-fun m!8197858 () Bool)

(assert (=> b!7716357 m!8197858))

(assert (=> b!7716193 d!2337089))

(declare-fun bs!1962736 () Bool)

(declare-fun d!2337091 () Bool)

(assert (= bs!1962736 (and d!2337091 b!7716193)))

(declare-fun lambda!470896 () Int)

(assert (=> bs!1962736 (= lambda!470896 lambda!470882)))

(declare-fun bs!1962737 () Bool)

(assert (= bs!1962737 (and d!2337091 b!7716196)))

(assert (=> bs!1962737 (not (= lambda!470896 lambda!470883))))

(assert (=> d!2337091 true))

(assert (=> d!2337091 true))

(assert (=> d!2337091 true))

(assert (=> d!2337091 (= (isDefined!14175 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605)) (Exists!4659 lambda!470896))))

(declare-fun lt!2665680 () Unit!168128)

(declare-fun choose!59205 (Regex!20534 Regex!20534 List!73385) Unit!168128)

(assert (=> d!2337091 (= lt!2665680 (choose!59205 (reg!20863 r!14126) r!14126 s!9605))))

(assert (=> d!2337091 (validRegex!10952 (reg!20863 r!14126))))

(assert (=> d!2337091 (= (lemmaFindConcatSeparationEquivalentToExists!3347 (reg!20863 r!14126) r!14126 s!9605) lt!2665680)))

(declare-fun bs!1962738 () Bool)

(assert (= bs!1962738 d!2337091))

(declare-fun m!8197880 () Bool)

(assert (=> bs!1962738 m!8197880))

(assert (=> bs!1962738 m!8197738))

(assert (=> bs!1962738 m!8197760))

(declare-fun m!8197882 () Bool)

(assert (=> bs!1962738 m!8197882))

(assert (=> bs!1962738 m!8197760))

(assert (=> bs!1962738 m!8197762))

(assert (=> b!7716193 d!2337091))

(assert (=> b!7716188 d!2337085))

(declare-fun b!7716399 () Bool)

(declare-fun e!4577419 () Bool)

(declare-fun lt!2665685 () Bool)

(declare-fun call!713204 () Bool)

(assert (=> b!7716399 (= e!4577419 (= lt!2665685 call!713204))))

(declare-fun b!7716400 () Bool)

(declare-fun e!4577418 () Bool)

(assert (=> b!7716400 (= e!4577419 e!4577418)))

(declare-fun c!1422402 () Bool)

(assert (=> b!7716400 (= c!1422402 (is-EmptyLang!20534 r!14126))))

(declare-fun d!2337095 () Bool)

(assert (=> d!2337095 e!4577419))

(declare-fun c!1422401 () Bool)

(assert (=> d!2337095 (= c!1422401 (is-EmptyExpr!20534 r!14126))))

(declare-fun e!4577421 () Bool)

(assert (=> d!2337095 (= lt!2665685 e!4577421)))

(declare-fun c!1422403 () Bool)

(assert (=> d!2337095 (= c!1422403 (isEmpty!41916 s!9605))))

(assert (=> d!2337095 (validRegex!10952 r!14126)))

(assert (=> d!2337095 (= (matchR!10030 r!14126 s!9605) lt!2665685)))

(declare-fun b!7716401 () Bool)

(declare-fun e!4577420 () Bool)

(assert (=> b!7716401 (= e!4577420 (= (head!15776 s!9605) (c!1422372 r!14126)))))

(declare-fun b!7716402 () Bool)

(declare-fun res!3078750 () Bool)

(assert (=> b!7716402 (=> (not res!3078750) (not e!4577420))))

(assert (=> b!7716402 (= res!3078750 (isEmpty!41916 (tail!15316 s!9605)))))

(declare-fun b!7716403 () Bool)

(assert (=> b!7716403 (= e!4577418 (not lt!2665685))))

(declare-fun b!7716404 () Bool)

(declare-fun res!3078748 () Bool)

(assert (=> b!7716404 (=> (not res!3078748) (not e!4577420))))

(assert (=> b!7716404 (= res!3078748 (not call!713204))))

(declare-fun bm!713199 () Bool)

(assert (=> bm!713199 (= call!713204 (isEmpty!41916 s!9605))))

(declare-fun b!7716405 () Bool)

(declare-fun res!3078753 () Bool)

(declare-fun e!4577424 () Bool)

(assert (=> b!7716405 (=> res!3078753 e!4577424)))

(assert (=> b!7716405 (= res!3078753 e!4577420)))

(declare-fun res!3078749 () Bool)

(assert (=> b!7716405 (=> (not res!3078749) (not e!4577420))))

(assert (=> b!7716405 (= res!3078749 lt!2665685)))

(declare-fun b!7716406 () Bool)

(assert (=> b!7716406 (= e!4577421 (nullable!9011 r!14126))))

(declare-fun b!7716407 () Bool)

(declare-fun res!3078747 () Bool)

(declare-fun e!4577422 () Bool)

(assert (=> b!7716407 (=> res!3078747 e!4577422)))

(assert (=> b!7716407 (= res!3078747 (not (isEmpty!41916 (tail!15316 s!9605))))))

(declare-fun b!7716408 () Bool)

(declare-fun derivativeStep!5976 (Regex!20534 C!41394) Regex!20534)

(assert (=> b!7716408 (= e!4577421 (matchR!10030 (derivativeStep!5976 r!14126 (head!15776 s!9605)) (tail!15316 s!9605)))))

(declare-fun b!7716409 () Bool)

(assert (=> b!7716409 (= e!4577422 (not (= (head!15776 s!9605) (c!1422372 r!14126))))))

(declare-fun b!7716410 () Bool)

(declare-fun res!3078746 () Bool)

(assert (=> b!7716410 (=> res!3078746 e!4577424)))

(assert (=> b!7716410 (= res!3078746 (not (is-ElementMatch!20534 r!14126)))))

(assert (=> b!7716410 (= e!4577418 e!4577424)))

(declare-fun b!7716411 () Bool)

(declare-fun e!4577423 () Bool)

(assert (=> b!7716411 (= e!4577424 e!4577423)))

(declare-fun res!3078752 () Bool)

(assert (=> b!7716411 (=> (not res!3078752) (not e!4577423))))

(assert (=> b!7716411 (= res!3078752 (not lt!2665685))))

(declare-fun b!7716412 () Bool)

(assert (=> b!7716412 (= e!4577423 e!4577422)))

(declare-fun res!3078751 () Bool)

(assert (=> b!7716412 (=> res!3078751 e!4577422)))

(assert (=> b!7716412 (= res!3078751 call!713204)))

(assert (= (and d!2337095 c!1422403) b!7716406))

(assert (= (and d!2337095 (not c!1422403)) b!7716408))

(assert (= (and d!2337095 c!1422401) b!7716399))

(assert (= (and d!2337095 (not c!1422401)) b!7716400))

(assert (= (and b!7716400 c!1422402) b!7716403))

(assert (= (and b!7716400 (not c!1422402)) b!7716410))

(assert (= (and b!7716410 (not res!3078746)) b!7716405))

(assert (= (and b!7716405 res!3078749) b!7716404))

(assert (= (and b!7716404 res!3078748) b!7716402))

(assert (= (and b!7716402 res!3078750) b!7716401))

(assert (= (and b!7716405 (not res!3078753)) b!7716411))

(assert (= (and b!7716411 res!3078752) b!7716412))

(assert (= (and b!7716412 (not res!3078751)) b!7716407))

(assert (= (and b!7716407 (not res!3078747)) b!7716409))

(assert (= (or b!7716399 b!7716404 b!7716412) bm!713199))

(declare-fun m!8197884 () Bool)

(assert (=> b!7716407 m!8197884))

(assert (=> b!7716407 m!8197884))

(declare-fun m!8197886 () Bool)

(assert (=> b!7716407 m!8197886))

(declare-fun m!8197888 () Bool)

(assert (=> b!7716401 m!8197888))

(assert (=> bm!713199 m!8197726))

(assert (=> d!2337095 m!8197726))

(assert (=> d!2337095 m!8197766))

(declare-fun m!8197890 () Bool)

(assert (=> b!7716406 m!8197890))

(assert (=> b!7716408 m!8197888))

(assert (=> b!7716408 m!8197888))

(declare-fun m!8197892 () Bool)

(assert (=> b!7716408 m!8197892))

(assert (=> b!7716408 m!8197884))

(assert (=> b!7716408 m!8197892))

(assert (=> b!7716408 m!8197884))

(declare-fun m!8197894 () Bool)

(assert (=> b!7716408 m!8197894))

(assert (=> b!7716402 m!8197884))

(assert (=> b!7716402 m!8197884))

(assert (=> b!7716402 m!8197886))

(assert (=> b!7716409 m!8197888))

(assert (=> b!7716188 d!2337095))

(declare-fun b!7716417 () Bool)

(declare-fun e!4577432 () Bool)

(declare-fun e!4577427 () Bool)

(assert (=> b!7716417 (= e!4577432 e!4577427)))

(declare-fun c!1422404 () Bool)

(assert (=> b!7716417 (= c!1422404 (is-Union!20534 (reg!20863 r!14126)))))

(declare-fun b!7716418 () Bool)

(declare-fun e!4577433 () Bool)

(declare-fun call!713206 () Bool)

(assert (=> b!7716418 (= e!4577433 call!713206)))

(declare-fun c!1422405 () Bool)

(declare-fun bm!713200 () Bool)

(declare-fun call!713205 () Bool)

(assert (=> bm!713200 (= call!713205 (validRegex!10952 (ite c!1422405 (reg!20863 (reg!20863 r!14126)) (ite c!1422404 (regTwo!41581 (reg!20863 r!14126)) (regTwo!41580 (reg!20863 r!14126))))))))

(declare-fun b!7716419 () Bool)

(declare-fun e!4577428 () Bool)

(assert (=> b!7716419 (= e!4577428 e!4577432)))

(assert (=> b!7716419 (= c!1422405 (is-Star!20534 (reg!20863 r!14126)))))

(declare-fun b!7716420 () Bool)

(declare-fun e!4577430 () Bool)

(declare-fun e!4577429 () Bool)

(assert (=> b!7716420 (= e!4577430 e!4577429)))

(declare-fun res!3078760 () Bool)

(assert (=> b!7716420 (=> (not res!3078760) (not e!4577429))))

(declare-fun call!713207 () Bool)

(assert (=> b!7716420 (= res!3078760 call!713207)))

(declare-fun bm!713201 () Bool)

(assert (=> bm!713201 (= call!713206 call!713205)))

(declare-fun b!7716421 () Bool)

(assert (=> b!7716421 (= e!4577429 call!713206)))

(declare-fun b!7716422 () Bool)

(declare-fun res!3078758 () Bool)

(assert (=> b!7716422 (=> res!3078758 e!4577430)))

(assert (=> b!7716422 (= res!3078758 (not (is-Concat!29379 (reg!20863 r!14126))))))

(assert (=> b!7716422 (= e!4577427 e!4577430)))

(declare-fun b!7716423 () Bool)

(declare-fun e!4577431 () Bool)

(assert (=> b!7716423 (= e!4577432 e!4577431)))

(declare-fun res!3078759 () Bool)

(assert (=> b!7716423 (= res!3078759 (not (nullable!9011 (reg!20863 (reg!20863 r!14126)))))))

(assert (=> b!7716423 (=> (not res!3078759) (not e!4577431))))

(declare-fun b!7716424 () Bool)

(assert (=> b!7716424 (= e!4577431 call!713205)))

(declare-fun d!2337097 () Bool)

(declare-fun res!3078762 () Bool)

(assert (=> d!2337097 (=> res!3078762 e!4577428)))

(assert (=> d!2337097 (= res!3078762 (is-ElementMatch!20534 (reg!20863 r!14126)))))

(assert (=> d!2337097 (= (validRegex!10952 (reg!20863 r!14126)) e!4577428)))

(declare-fun b!7716425 () Bool)

(declare-fun res!3078761 () Bool)

(assert (=> b!7716425 (=> (not res!3078761) (not e!4577433))))

(assert (=> b!7716425 (= res!3078761 call!713207)))

(assert (=> b!7716425 (= e!4577427 e!4577433)))

(declare-fun bm!713202 () Bool)

(assert (=> bm!713202 (= call!713207 (validRegex!10952 (ite c!1422404 (regOne!41581 (reg!20863 r!14126)) (regOne!41580 (reg!20863 r!14126)))))))

(assert (= (and d!2337097 (not res!3078762)) b!7716419))

(assert (= (and b!7716419 c!1422405) b!7716423))

(assert (= (and b!7716419 (not c!1422405)) b!7716417))

(assert (= (and b!7716423 res!3078759) b!7716424))

(assert (= (and b!7716417 c!1422404) b!7716425))

(assert (= (and b!7716417 (not c!1422404)) b!7716422))

(assert (= (and b!7716425 res!3078761) b!7716418))

(assert (= (and b!7716422 (not res!3078758)) b!7716420))

(assert (= (and b!7716420 res!3078760) b!7716421))

(assert (= (or b!7716425 b!7716420) bm!713202))

(assert (= (or b!7716418 b!7716421) bm!713201))

(assert (= (or b!7716424 bm!713201) bm!713200))

(declare-fun m!8197896 () Bool)

(assert (=> bm!713200 m!8197896))

(declare-fun m!8197898 () Bool)

(assert (=> b!7716423 m!8197898))

(declare-fun m!8197900 () Bool)

(assert (=> bm!713202 m!8197900))

(assert (=> b!7716184 d!2337097))

(declare-fun d!2337099 () Bool)

(declare-fun lt!2665688 () tuple2!69530)

(declare-fun dynLambda!29952 (Int tuple2!69530) Bool)

(assert (=> d!2337099 (dynLambda!29952 lambda!470883 lt!2665688)))

(declare-fun choose!59206 (Int) tuple2!69530)

(assert (=> d!2337099 (= lt!2665688 (choose!59206 lambda!470883))))

(assert (=> d!2337099 (Exists!4659 lambda!470883)))

(assert (=> d!2337099 (= (pickWitness!513 lambda!470883) lt!2665688)))

(declare-fun b_lambda!289235 () Bool)

(assert (=> (not b_lambda!289235) (not d!2337099)))

(declare-fun bs!1962739 () Bool)

(assert (= bs!1962739 d!2337099))

(declare-fun m!8197902 () Bool)

(assert (=> bs!1962739 m!8197902))

(declare-fun m!8197904 () Bool)

(assert (=> bs!1962739 m!8197904))

(assert (=> bs!1962739 m!8197744))

(assert (=> b!7716184 d!2337099))

(declare-fun b!7716426 () Bool)

(declare-fun e!4577435 () Bool)

(declare-fun lt!2665689 () Bool)

(declare-fun call!713208 () Bool)

(assert (=> b!7716426 (= e!4577435 (= lt!2665689 call!713208))))

(declare-fun b!7716427 () Bool)

(declare-fun e!4577434 () Bool)

(assert (=> b!7716427 (= e!4577435 e!4577434)))

(declare-fun c!1422407 () Bool)

(assert (=> b!7716427 (= c!1422407 (is-EmptyLang!20534 r!14126))))

(declare-fun d!2337101 () Bool)

(assert (=> d!2337101 e!4577435))

(declare-fun c!1422406 () Bool)

(assert (=> d!2337101 (= c!1422406 (is-EmptyExpr!20534 r!14126))))

(declare-fun e!4577437 () Bool)

(assert (=> d!2337101 (= lt!2665689 e!4577437)))

(declare-fun c!1422408 () Bool)

(assert (=> d!2337101 (= c!1422408 (isEmpty!41916 (_2!38068 lt!2665625)))))

(assert (=> d!2337101 (validRegex!10952 r!14126)))

(assert (=> d!2337101 (= (matchR!10030 r!14126 (_2!38068 lt!2665625)) lt!2665689)))

(declare-fun b!7716428 () Bool)

(declare-fun e!4577436 () Bool)

(assert (=> b!7716428 (= e!4577436 (= (head!15776 (_2!38068 lt!2665625)) (c!1422372 r!14126)))))

(declare-fun b!7716429 () Bool)

(declare-fun res!3078767 () Bool)

(assert (=> b!7716429 (=> (not res!3078767) (not e!4577436))))

(assert (=> b!7716429 (= res!3078767 (isEmpty!41916 (tail!15316 (_2!38068 lt!2665625))))))

(declare-fun b!7716430 () Bool)

(assert (=> b!7716430 (= e!4577434 (not lt!2665689))))

(declare-fun b!7716431 () Bool)

(declare-fun res!3078765 () Bool)

(assert (=> b!7716431 (=> (not res!3078765) (not e!4577436))))

(assert (=> b!7716431 (= res!3078765 (not call!713208))))

(declare-fun bm!713203 () Bool)

(assert (=> bm!713203 (= call!713208 (isEmpty!41916 (_2!38068 lt!2665625)))))

(declare-fun b!7716432 () Bool)

(declare-fun res!3078770 () Bool)

(declare-fun e!4577440 () Bool)

(assert (=> b!7716432 (=> res!3078770 e!4577440)))

(assert (=> b!7716432 (= res!3078770 e!4577436)))

(declare-fun res!3078766 () Bool)

(assert (=> b!7716432 (=> (not res!3078766) (not e!4577436))))

(assert (=> b!7716432 (= res!3078766 lt!2665689)))

(declare-fun b!7716433 () Bool)

(assert (=> b!7716433 (= e!4577437 (nullable!9011 r!14126))))

(declare-fun b!7716434 () Bool)

(declare-fun res!3078764 () Bool)

(declare-fun e!4577438 () Bool)

(assert (=> b!7716434 (=> res!3078764 e!4577438)))

(assert (=> b!7716434 (= res!3078764 (not (isEmpty!41916 (tail!15316 (_2!38068 lt!2665625)))))))

(declare-fun b!7716435 () Bool)

(assert (=> b!7716435 (= e!4577437 (matchR!10030 (derivativeStep!5976 r!14126 (head!15776 (_2!38068 lt!2665625))) (tail!15316 (_2!38068 lt!2665625))))))

(declare-fun b!7716436 () Bool)

(assert (=> b!7716436 (= e!4577438 (not (= (head!15776 (_2!38068 lt!2665625)) (c!1422372 r!14126))))))

(declare-fun b!7716437 () Bool)

(declare-fun res!3078763 () Bool)

(assert (=> b!7716437 (=> res!3078763 e!4577440)))

(assert (=> b!7716437 (= res!3078763 (not (is-ElementMatch!20534 r!14126)))))

(assert (=> b!7716437 (= e!4577434 e!4577440)))

(declare-fun b!7716438 () Bool)

(declare-fun e!4577439 () Bool)

(assert (=> b!7716438 (= e!4577440 e!4577439)))

(declare-fun res!3078769 () Bool)

(assert (=> b!7716438 (=> (not res!3078769) (not e!4577439))))

(assert (=> b!7716438 (= res!3078769 (not lt!2665689))))

(declare-fun b!7716439 () Bool)

(assert (=> b!7716439 (= e!4577439 e!4577438)))

(declare-fun res!3078768 () Bool)

(assert (=> b!7716439 (=> res!3078768 e!4577438)))

(assert (=> b!7716439 (= res!3078768 call!713208)))

(assert (= (and d!2337101 c!1422408) b!7716433))

(assert (= (and d!2337101 (not c!1422408)) b!7716435))

(assert (= (and d!2337101 c!1422406) b!7716426))

(assert (= (and d!2337101 (not c!1422406)) b!7716427))

(assert (= (and b!7716427 c!1422407) b!7716430))

(assert (= (and b!7716427 (not c!1422407)) b!7716437))

(assert (= (and b!7716437 (not res!3078763)) b!7716432))

(assert (= (and b!7716432 res!3078766) b!7716431))

(assert (= (and b!7716431 res!3078765) b!7716429))

(assert (= (and b!7716429 res!3078767) b!7716428))

(assert (= (and b!7716432 (not res!3078770)) b!7716438))

(assert (= (and b!7716438 res!3078769) b!7716439))

(assert (= (and b!7716439 (not res!3078768)) b!7716434))

(assert (= (and b!7716434 (not res!3078764)) b!7716436))

(assert (= (or b!7716426 b!7716431 b!7716439) bm!713203))

(declare-fun m!8197906 () Bool)

(assert (=> b!7716434 m!8197906))

(assert (=> b!7716434 m!8197906))

(declare-fun m!8197908 () Bool)

(assert (=> b!7716434 m!8197908))

(declare-fun m!8197910 () Bool)

(assert (=> b!7716428 m!8197910))

(declare-fun m!8197912 () Bool)

(assert (=> bm!713203 m!8197912))

(assert (=> d!2337101 m!8197912))

(assert (=> d!2337101 m!8197766))

(assert (=> b!7716433 m!8197890))

(assert (=> b!7716435 m!8197910))

(assert (=> b!7716435 m!8197910))

(declare-fun m!8197914 () Bool)

(assert (=> b!7716435 m!8197914))

(assert (=> b!7716435 m!8197906))

(assert (=> b!7716435 m!8197914))

(assert (=> b!7716435 m!8197906))

(declare-fun m!8197916 () Bool)

(assert (=> b!7716435 m!8197916))

(assert (=> b!7716429 m!8197906))

(assert (=> b!7716429 m!8197906))

(assert (=> b!7716429 m!8197908))

(assert (=> b!7716436 m!8197910))

(assert (=> b!7716184 d!2337101))

(declare-fun bs!1962743 () Bool)

(declare-fun b!7716477 () Bool)

(assert (= bs!1962743 (and b!7716477 b!7716193)))

(declare-fun lambda!470904 () Int)

(assert (=> bs!1962743 (not (= lambda!470904 lambda!470882))))

(declare-fun bs!1962744 () Bool)

(assert (= bs!1962744 (and b!7716477 b!7716196)))

(assert (=> bs!1962744 (= (and (= (_1!38068 lt!2665625) s!9605) (= (reg!20863 (reg!20863 r!14126)) (reg!20863 r!14126)) (= (reg!20863 r!14126) r!14126)) (= lambda!470904 lambda!470883))))

(declare-fun bs!1962745 () Bool)

(assert (= bs!1962745 (and b!7716477 d!2337091)))

(assert (=> bs!1962745 (not (= lambda!470904 lambda!470896))))

(assert (=> b!7716477 true))

(assert (=> b!7716477 true))

(declare-fun bs!1962746 () Bool)

(declare-fun b!7716476 () Bool)

(assert (= bs!1962746 (and b!7716476 b!7716193)))

(declare-fun lambda!470905 () Int)

(assert (=> bs!1962746 (not (= lambda!470905 lambda!470882))))

(declare-fun bs!1962747 () Bool)

(assert (= bs!1962747 (and b!7716476 b!7716196)))

(assert (=> bs!1962747 (not (= lambda!470905 lambda!470883))))

(declare-fun bs!1962748 () Bool)

(assert (= bs!1962748 (and b!7716476 d!2337091)))

(assert (=> bs!1962748 (not (= lambda!470905 lambda!470896))))

(declare-fun bs!1962749 () Bool)

(assert (= bs!1962749 (and b!7716476 b!7716477)))

(assert (=> bs!1962749 (not (= lambda!470905 lambda!470904))))

(assert (=> b!7716476 true))

(assert (=> b!7716476 true))

(declare-fun b!7716475 () Bool)

(declare-fun e!4577465 () Bool)

(assert (=> b!7716475 (= e!4577465 (matchRSpec!4624 (regTwo!41581 (reg!20863 r!14126)) (_1!38068 lt!2665625)))))

(declare-fun e!4577463 () Bool)

(declare-fun call!713214 () Bool)

(assert (=> b!7716476 (= e!4577463 call!713214)))

(declare-fun c!1422418 () Bool)

(declare-fun bm!713208 () Bool)

(assert (=> bm!713208 (= call!713214 (Exists!4659 (ite c!1422418 lambda!470904 lambda!470905)))))

(declare-fun e!4577468 () Bool)

(assert (=> b!7716477 (= e!4577468 call!713214)))

(declare-fun b!7716478 () Bool)

(declare-fun e!4577464 () Bool)

(declare-fun call!713213 () Bool)

(assert (=> b!7716478 (= e!4577464 call!713213)))

(declare-fun b!7716479 () Bool)

(declare-fun e!4577462 () Bool)

(assert (=> b!7716479 (= e!4577462 (= (_1!38068 lt!2665625) (Cons!73261 (c!1422372 (reg!20863 r!14126)) Nil!73261)))))

(declare-fun b!7716480 () Bool)

(declare-fun c!1422420 () Bool)

(assert (=> b!7716480 (= c!1422420 (is-ElementMatch!20534 (reg!20863 r!14126)))))

(declare-fun e!4577467 () Bool)

(assert (=> b!7716480 (= e!4577467 e!4577462)))

(declare-fun b!7716481 () Bool)

(declare-fun res!3078791 () Bool)

(assert (=> b!7716481 (=> res!3078791 e!4577468)))

(assert (=> b!7716481 (= res!3078791 call!713213)))

(assert (=> b!7716481 (= e!4577463 e!4577468)))

(declare-fun d!2337103 () Bool)

(declare-fun c!1422417 () Bool)

(assert (=> d!2337103 (= c!1422417 (is-EmptyExpr!20534 (reg!20863 r!14126)))))

(assert (=> d!2337103 (= (matchRSpec!4624 (reg!20863 r!14126) (_1!38068 lt!2665625)) e!4577464)))

(declare-fun b!7716482 () Bool)

(declare-fun c!1422419 () Bool)

(assert (=> b!7716482 (= c!1422419 (is-Union!20534 (reg!20863 r!14126)))))

(declare-fun e!4577466 () Bool)

(assert (=> b!7716482 (= e!4577462 e!4577466)))

(declare-fun b!7716483 () Bool)

(assert (=> b!7716483 (= e!4577466 e!4577463)))

(assert (=> b!7716483 (= c!1422418 (is-Star!20534 (reg!20863 r!14126)))))

(declare-fun bm!713209 () Bool)

(assert (=> bm!713209 (= call!713213 (isEmpty!41916 (_1!38068 lt!2665625)))))

(declare-fun b!7716484 () Bool)

(assert (=> b!7716484 (= e!4577464 e!4577467)))

(declare-fun res!3078790 () Bool)

(assert (=> b!7716484 (= res!3078790 (not (is-EmptyLang!20534 (reg!20863 r!14126))))))

(assert (=> b!7716484 (=> (not res!3078790) (not e!4577467))))

(declare-fun b!7716485 () Bool)

(assert (=> b!7716485 (= e!4577466 e!4577465)))

(declare-fun res!3078792 () Bool)

(assert (=> b!7716485 (= res!3078792 (matchRSpec!4624 (regOne!41581 (reg!20863 r!14126)) (_1!38068 lt!2665625)))))

(assert (=> b!7716485 (=> res!3078792 e!4577465)))

(assert (= (and d!2337103 c!1422417) b!7716478))

(assert (= (and d!2337103 (not c!1422417)) b!7716484))

(assert (= (and b!7716484 res!3078790) b!7716480))

(assert (= (and b!7716480 c!1422420) b!7716479))

(assert (= (and b!7716480 (not c!1422420)) b!7716482))

(assert (= (and b!7716482 c!1422419) b!7716485))

(assert (= (and b!7716482 (not c!1422419)) b!7716483))

(assert (= (and b!7716485 (not res!3078792)) b!7716475))

(assert (= (and b!7716483 c!1422418) b!7716481))

(assert (= (and b!7716483 (not c!1422418)) b!7716476))

(assert (= (and b!7716481 (not res!3078791)) b!7716477))

(assert (= (or b!7716477 b!7716476) bm!713208))

(assert (= (or b!7716478 b!7716481) bm!713209))

(declare-fun m!8197928 () Bool)

(assert (=> b!7716475 m!8197928))

(declare-fun m!8197930 () Bool)

(assert (=> bm!713208 m!8197930))

(declare-fun m!8197932 () Bool)

(assert (=> bm!713209 m!8197932))

(declare-fun m!8197934 () Bool)

(assert (=> b!7716485 m!8197934))

(assert (=> b!7716184 d!2337103))

(declare-fun b!7716486 () Bool)

(declare-fun e!4577470 () Bool)

(declare-fun lt!2665694 () Bool)

(declare-fun call!713215 () Bool)

(assert (=> b!7716486 (= e!4577470 (= lt!2665694 call!713215))))

(declare-fun b!7716487 () Bool)

(declare-fun e!4577469 () Bool)

(assert (=> b!7716487 (= e!4577470 e!4577469)))

(declare-fun c!1422422 () Bool)

(assert (=> b!7716487 (= c!1422422 (is-EmptyLang!20534 (reg!20863 r!14126)))))

(declare-fun d!2337109 () Bool)

(assert (=> d!2337109 e!4577470))

(declare-fun c!1422421 () Bool)

(assert (=> d!2337109 (= c!1422421 (is-EmptyExpr!20534 (reg!20863 r!14126)))))

(declare-fun e!4577472 () Bool)

(assert (=> d!2337109 (= lt!2665694 e!4577472)))

(declare-fun c!1422423 () Bool)

(assert (=> d!2337109 (= c!1422423 (isEmpty!41916 (_1!38068 lt!2665625)))))

(assert (=> d!2337109 (validRegex!10952 (reg!20863 r!14126))))

(assert (=> d!2337109 (= (matchR!10030 (reg!20863 r!14126) (_1!38068 lt!2665625)) lt!2665694)))

(declare-fun b!7716488 () Bool)

(declare-fun e!4577471 () Bool)

(assert (=> b!7716488 (= e!4577471 (= (head!15776 (_1!38068 lt!2665625)) (c!1422372 (reg!20863 r!14126))))))

(declare-fun b!7716489 () Bool)

(declare-fun res!3078797 () Bool)

(assert (=> b!7716489 (=> (not res!3078797) (not e!4577471))))

(assert (=> b!7716489 (= res!3078797 (isEmpty!41916 (tail!15316 (_1!38068 lt!2665625))))))

(declare-fun b!7716490 () Bool)

(assert (=> b!7716490 (= e!4577469 (not lt!2665694))))

(declare-fun b!7716491 () Bool)

(declare-fun res!3078795 () Bool)

(assert (=> b!7716491 (=> (not res!3078795) (not e!4577471))))

(assert (=> b!7716491 (= res!3078795 (not call!713215))))

(declare-fun bm!713210 () Bool)

(assert (=> bm!713210 (= call!713215 (isEmpty!41916 (_1!38068 lt!2665625)))))

(declare-fun b!7716492 () Bool)

(declare-fun res!3078800 () Bool)

(declare-fun e!4577475 () Bool)

(assert (=> b!7716492 (=> res!3078800 e!4577475)))

(assert (=> b!7716492 (= res!3078800 e!4577471)))

(declare-fun res!3078796 () Bool)

(assert (=> b!7716492 (=> (not res!3078796) (not e!4577471))))

(assert (=> b!7716492 (= res!3078796 lt!2665694)))

(declare-fun b!7716493 () Bool)

(assert (=> b!7716493 (= e!4577472 (nullable!9011 (reg!20863 r!14126)))))

(declare-fun b!7716494 () Bool)

(declare-fun res!3078794 () Bool)

(declare-fun e!4577473 () Bool)

(assert (=> b!7716494 (=> res!3078794 e!4577473)))

(assert (=> b!7716494 (= res!3078794 (not (isEmpty!41916 (tail!15316 (_1!38068 lt!2665625)))))))

(declare-fun b!7716495 () Bool)

(assert (=> b!7716495 (= e!4577472 (matchR!10030 (derivativeStep!5976 (reg!20863 r!14126) (head!15776 (_1!38068 lt!2665625))) (tail!15316 (_1!38068 lt!2665625))))))

(declare-fun b!7716496 () Bool)

(assert (=> b!7716496 (= e!4577473 (not (= (head!15776 (_1!38068 lt!2665625)) (c!1422372 (reg!20863 r!14126)))))))

(declare-fun b!7716497 () Bool)

(declare-fun res!3078793 () Bool)

(assert (=> b!7716497 (=> res!3078793 e!4577475)))

(assert (=> b!7716497 (= res!3078793 (not (is-ElementMatch!20534 (reg!20863 r!14126))))))

(assert (=> b!7716497 (= e!4577469 e!4577475)))

(declare-fun b!7716498 () Bool)

(declare-fun e!4577474 () Bool)

(assert (=> b!7716498 (= e!4577475 e!4577474)))

(declare-fun res!3078799 () Bool)

(assert (=> b!7716498 (=> (not res!3078799) (not e!4577474))))

(assert (=> b!7716498 (= res!3078799 (not lt!2665694))))

(declare-fun b!7716499 () Bool)

(assert (=> b!7716499 (= e!4577474 e!4577473)))

(declare-fun res!3078798 () Bool)

(assert (=> b!7716499 (=> res!3078798 e!4577473)))

(assert (=> b!7716499 (= res!3078798 call!713215)))

(assert (= (and d!2337109 c!1422423) b!7716493))

(assert (= (and d!2337109 (not c!1422423)) b!7716495))

(assert (= (and d!2337109 c!1422421) b!7716486))

(assert (= (and d!2337109 (not c!1422421)) b!7716487))

(assert (= (and b!7716487 c!1422422) b!7716490))

(assert (= (and b!7716487 (not c!1422422)) b!7716497))

(assert (= (and b!7716497 (not res!3078793)) b!7716492))

(assert (= (and b!7716492 res!3078796) b!7716491))

(assert (= (and b!7716491 res!3078795) b!7716489))

(assert (= (and b!7716489 res!3078797) b!7716488))

(assert (= (and b!7716492 (not res!3078800)) b!7716498))

(assert (= (and b!7716498 res!3078799) b!7716499))

(assert (= (and b!7716499 (not res!3078798)) b!7716494))

(assert (= (and b!7716494 (not res!3078794)) b!7716496))

(assert (= (or b!7716486 b!7716491 b!7716499) bm!713210))

(assert (=> b!7716494 m!8197822))

(assert (=> b!7716494 m!8197822))

(declare-fun m!8197936 () Bool)

(assert (=> b!7716494 m!8197936))

(assert (=> b!7716488 m!8197818))

(assert (=> bm!713210 m!8197932))

(assert (=> d!2337109 m!8197932))

(assert (=> d!2337109 m!8197738))

(assert (=> b!7716493 m!8197832))

(assert (=> b!7716495 m!8197818))

(assert (=> b!7716495 m!8197818))

(declare-fun m!8197938 () Bool)

(assert (=> b!7716495 m!8197938))

(assert (=> b!7716495 m!8197822))

(assert (=> b!7716495 m!8197938))

(assert (=> b!7716495 m!8197822))

(declare-fun m!8197940 () Bool)

(assert (=> b!7716495 m!8197940))

(assert (=> b!7716489 m!8197822))

(assert (=> b!7716489 m!8197822))

(assert (=> b!7716489 m!8197936))

(assert (=> b!7716496 m!8197818))

(assert (=> b!7716184 d!2337109))

(declare-fun d!2337111 () Bool)

(assert (=> d!2337111 (= (matchR!10030 r!14126 (_2!38068 lt!2665625)) (matchRSpec!4624 r!14126 (_2!38068 lt!2665625)))))

(declare-fun lt!2665699 () Unit!168128)

(declare-fun choose!59209 (Regex!20534 List!73385) Unit!168128)

(assert (=> d!2337111 (= lt!2665699 (choose!59209 r!14126 (_2!38068 lt!2665625)))))

(assert (=> d!2337111 (validRegex!10952 r!14126)))

(assert (=> d!2337111 (= (mainMatchTheorem!4599 r!14126 (_2!38068 lt!2665625)) lt!2665699)))

(declare-fun bs!1962750 () Bool)

(assert (= bs!1962750 d!2337111))

(assert (=> bs!1962750 m!8197734))

(assert (=> bs!1962750 m!8197736))

(declare-fun m!8197942 () Bool)

(assert (=> bs!1962750 m!8197942))

(assert (=> bs!1962750 m!8197766))

(assert (=> b!7716184 d!2337111))

(declare-fun d!2337113 () Bool)

(assert (=> d!2337113 (= (matchR!10030 (reg!20863 r!14126) (_1!38068 lt!2665625)) (matchRSpec!4624 (reg!20863 r!14126) (_1!38068 lt!2665625)))))

(declare-fun lt!2665700 () Unit!168128)

(assert (=> d!2337113 (= lt!2665700 (choose!59209 (reg!20863 r!14126) (_1!38068 lt!2665625)))))

(assert (=> d!2337113 (validRegex!10952 (reg!20863 r!14126))))

(assert (=> d!2337113 (= (mainMatchTheorem!4599 (reg!20863 r!14126) (_1!38068 lt!2665625)) lt!2665700)))

(declare-fun bs!1962751 () Bool)

(assert (= bs!1962751 d!2337113))

(assert (=> bs!1962751 m!8197728))

(assert (=> bs!1962751 m!8197740))

(declare-fun m!8197944 () Bool)

(assert (=> bs!1962751 m!8197944))

(assert (=> bs!1962751 m!8197738))

(assert (=> b!7716184 d!2337113))

(declare-fun bs!1962752 () Bool)

(declare-fun b!7716516 () Bool)

(assert (= bs!1962752 (and b!7716516 b!7716476)))

(declare-fun lambda!470906 () Int)

(assert (=> bs!1962752 (not (= lambda!470906 lambda!470905))))

(declare-fun bs!1962753 () Bool)

(assert (= bs!1962753 (and b!7716516 b!7716193)))

(assert (=> bs!1962753 (not (= lambda!470906 lambda!470882))))

(declare-fun bs!1962754 () Bool)

(assert (= bs!1962754 (and b!7716516 b!7716477)))

(assert (=> bs!1962754 (= (and (= (_2!38068 lt!2665625) (_1!38068 lt!2665625)) (= (reg!20863 r!14126) (reg!20863 (reg!20863 r!14126))) (= r!14126 (reg!20863 r!14126))) (= lambda!470906 lambda!470904))))

(declare-fun bs!1962755 () Bool)

(assert (= bs!1962755 (and b!7716516 b!7716196)))

(assert (=> bs!1962755 (= (= (_2!38068 lt!2665625) s!9605) (= lambda!470906 lambda!470883))))

(declare-fun bs!1962756 () Bool)

(assert (= bs!1962756 (and b!7716516 d!2337091)))

(assert (=> bs!1962756 (not (= lambda!470906 lambda!470896))))

(assert (=> b!7716516 true))

(assert (=> b!7716516 true))

(declare-fun bs!1962757 () Bool)

(declare-fun b!7716515 () Bool)

(assert (= bs!1962757 (and b!7716515 b!7716516)))

(declare-fun lambda!470907 () Int)

(assert (=> bs!1962757 (not (= lambda!470907 lambda!470906))))

(declare-fun bs!1962758 () Bool)

(assert (= bs!1962758 (and b!7716515 b!7716476)))

(assert (=> bs!1962758 (= (and (= (_2!38068 lt!2665625) (_1!38068 lt!2665625)) (= (regOne!41580 r!14126) (regOne!41580 (reg!20863 r!14126))) (= (regTwo!41580 r!14126) (regTwo!41580 (reg!20863 r!14126)))) (= lambda!470907 lambda!470905))))

(declare-fun bs!1962759 () Bool)

(assert (= bs!1962759 (and b!7716515 b!7716193)))

(assert (=> bs!1962759 (not (= lambda!470907 lambda!470882))))

(declare-fun bs!1962760 () Bool)

(assert (= bs!1962760 (and b!7716515 b!7716477)))

(assert (=> bs!1962760 (not (= lambda!470907 lambda!470904))))

(declare-fun bs!1962761 () Bool)

(assert (= bs!1962761 (and b!7716515 b!7716196)))

(assert (=> bs!1962761 (not (= lambda!470907 lambda!470883))))

(declare-fun bs!1962762 () Bool)

(assert (= bs!1962762 (and b!7716515 d!2337091)))

(assert (=> bs!1962762 (not (= lambda!470907 lambda!470896))))

(assert (=> b!7716515 true))

(assert (=> b!7716515 true))

(declare-fun b!7716514 () Bool)

(declare-fun e!4577487 () Bool)

(assert (=> b!7716514 (= e!4577487 (matchRSpec!4624 (regTwo!41581 r!14126) (_2!38068 lt!2665625)))))

(declare-fun e!4577485 () Bool)

(declare-fun call!713217 () Bool)

(assert (=> b!7716515 (= e!4577485 call!713217)))

(declare-fun bm!713211 () Bool)

(declare-fun c!1422431 () Bool)

(assert (=> bm!713211 (= call!713217 (Exists!4659 (ite c!1422431 lambda!470906 lambda!470907)))))

(declare-fun e!4577490 () Bool)

(assert (=> b!7716516 (= e!4577490 call!713217)))

(declare-fun b!7716517 () Bool)

(declare-fun e!4577486 () Bool)

(declare-fun call!713216 () Bool)

(assert (=> b!7716517 (= e!4577486 call!713216)))

(declare-fun b!7716518 () Bool)

(declare-fun e!4577484 () Bool)

(assert (=> b!7716518 (= e!4577484 (= (_2!38068 lt!2665625) (Cons!73261 (c!1422372 r!14126) Nil!73261)))))

(declare-fun b!7716519 () Bool)

(declare-fun c!1422433 () Bool)

(assert (=> b!7716519 (= c!1422433 (is-ElementMatch!20534 r!14126))))

(declare-fun e!4577489 () Bool)

(assert (=> b!7716519 (= e!4577489 e!4577484)))

(declare-fun b!7716520 () Bool)

(declare-fun res!3078806 () Bool)

(assert (=> b!7716520 (=> res!3078806 e!4577490)))

(assert (=> b!7716520 (= res!3078806 call!713216)))

(assert (=> b!7716520 (= e!4577485 e!4577490)))

(declare-fun d!2337115 () Bool)

(declare-fun c!1422430 () Bool)

(assert (=> d!2337115 (= c!1422430 (is-EmptyExpr!20534 r!14126))))

(assert (=> d!2337115 (= (matchRSpec!4624 r!14126 (_2!38068 lt!2665625)) e!4577486)))

(declare-fun b!7716521 () Bool)

(declare-fun c!1422432 () Bool)

(assert (=> b!7716521 (= c!1422432 (is-Union!20534 r!14126))))

(declare-fun e!4577488 () Bool)

(assert (=> b!7716521 (= e!4577484 e!4577488)))

(declare-fun b!7716522 () Bool)

(assert (=> b!7716522 (= e!4577488 e!4577485)))

(assert (=> b!7716522 (= c!1422431 (is-Star!20534 r!14126))))

(declare-fun bm!713212 () Bool)

(assert (=> bm!713212 (= call!713216 (isEmpty!41916 (_2!38068 lt!2665625)))))

(declare-fun b!7716523 () Bool)

(assert (=> b!7716523 (= e!4577486 e!4577489)))

(declare-fun res!3078805 () Bool)

(assert (=> b!7716523 (= res!3078805 (not (is-EmptyLang!20534 r!14126)))))

(assert (=> b!7716523 (=> (not res!3078805) (not e!4577489))))

(declare-fun b!7716524 () Bool)

(assert (=> b!7716524 (= e!4577488 e!4577487)))

(declare-fun res!3078807 () Bool)

(assert (=> b!7716524 (= res!3078807 (matchRSpec!4624 (regOne!41581 r!14126) (_2!38068 lt!2665625)))))

(assert (=> b!7716524 (=> res!3078807 e!4577487)))

(assert (= (and d!2337115 c!1422430) b!7716517))

(assert (= (and d!2337115 (not c!1422430)) b!7716523))

(assert (= (and b!7716523 res!3078805) b!7716519))

(assert (= (and b!7716519 c!1422433) b!7716518))

(assert (= (and b!7716519 (not c!1422433)) b!7716521))

(assert (= (and b!7716521 c!1422432) b!7716524))

(assert (= (and b!7716521 (not c!1422432)) b!7716522))

(assert (= (and b!7716524 (not res!3078807)) b!7716514))

(assert (= (and b!7716522 c!1422431) b!7716520))

(assert (= (and b!7716522 (not c!1422431)) b!7716515))

(assert (= (and b!7716520 (not res!3078806)) b!7716516))

(assert (= (or b!7716516 b!7716515) bm!713211))

(assert (= (or b!7716517 b!7716520) bm!713212))

(declare-fun m!8197946 () Bool)

(assert (=> b!7716514 m!8197946))

(declare-fun m!8197948 () Bool)

(assert (=> bm!713211 m!8197948))

(assert (=> bm!713212 m!8197912))

(declare-fun m!8197950 () Bool)

(assert (=> b!7716524 m!8197950))

(assert (=> b!7716184 d!2337115))

(declare-fun b!7716548 () Bool)

(declare-fun e!4577502 () List!73385)

(assert (=> b!7716548 (= e!4577502 (Cons!73261 (h!79709 (_1!38068 lt!2665625)) (++!17742 (t!388120 (_1!38068 lt!2665625)) (_2!38068 lt!2665625))))))

(declare-fun b!7716550 () Bool)

(declare-fun e!4577501 () Bool)

(declare-fun lt!2665703 () List!73385)

(assert (=> b!7716550 (= e!4577501 (or (not (= (_2!38068 lt!2665625) Nil!73261)) (= lt!2665703 (_1!38068 lt!2665625))))))

(declare-fun b!7716547 () Bool)

(assert (=> b!7716547 (= e!4577502 (_2!38068 lt!2665625))))

(declare-fun d!2337117 () Bool)

(assert (=> d!2337117 e!4577501))

(declare-fun res!3078825 () Bool)

(assert (=> d!2337117 (=> (not res!3078825) (not e!4577501))))

(declare-fun content!15515 (List!73385) (Set C!41394))

(assert (=> d!2337117 (= res!3078825 (= (content!15515 lt!2665703) (set.union (content!15515 (_1!38068 lt!2665625)) (content!15515 (_2!38068 lt!2665625)))))))

(assert (=> d!2337117 (= lt!2665703 e!4577502)))

(declare-fun c!1422436 () Bool)

(assert (=> d!2337117 (= c!1422436 (is-Nil!73261 (_1!38068 lt!2665625)))))

(assert (=> d!2337117 (= (++!17742 (_1!38068 lt!2665625) (_2!38068 lt!2665625)) lt!2665703)))

(declare-fun b!7716549 () Bool)

(declare-fun res!3078824 () Bool)

(assert (=> b!7716549 (=> (not res!3078824) (not e!4577501))))

(assert (=> b!7716549 (= res!3078824 (= (size!42618 lt!2665703) (+ (size!42618 (_1!38068 lt!2665625)) (size!42618 (_2!38068 lt!2665625)))))))

(assert (= (and d!2337117 c!1422436) b!7716547))

(assert (= (and d!2337117 (not c!1422436)) b!7716548))

(assert (= (and d!2337117 res!3078825) b!7716549))

(assert (= (and b!7716549 res!3078824) b!7716550))

(declare-fun m!8197952 () Bool)

(assert (=> b!7716548 m!8197952))

(declare-fun m!8197954 () Bool)

(assert (=> d!2337117 m!8197954))

(declare-fun m!8197956 () Bool)

(assert (=> d!2337117 m!8197956))

(declare-fun m!8197958 () Bool)

(assert (=> d!2337117 m!8197958))

(declare-fun m!8197960 () Bool)

(assert (=> b!7716549 m!8197960))

(assert (=> b!7716549 m!8197826))

(declare-fun m!8197962 () Bool)

(assert (=> b!7716549 m!8197962))

(assert (=> b!7716195 d!2337117))

(declare-fun d!2337119 () Bool)

(declare-fun e!4577512 () Bool)

(assert (=> d!2337119 e!4577512))

(declare-fun res!3078836 () Bool)

(assert (=> d!2337119 (=> res!3078836 e!4577512)))

(assert (=> d!2337119 (= res!3078836 (isEmpty!41916 s!9605))))

(declare-fun lt!2665707 () Unit!168128)

(declare-fun choose!59212 (Regex!20534 List!73385) Unit!168128)

(assert (=> d!2337119 (= lt!2665707 (choose!59212 (reg!20863 r!14126) s!9605))))

(assert (=> d!2337119 (validRegex!10952 (Star!20534 (reg!20863 r!14126)))))

(assert (=> d!2337119 (= (lemmaStarAppConcat!49 (reg!20863 r!14126) s!9605) lt!2665707)))

(declare-fun b!7716567 () Bool)

(assert (=> b!7716567 (= e!4577512 (matchR!10030 (Concat!29379 (reg!20863 r!14126) (Star!20534 (reg!20863 r!14126))) s!9605))))

(assert (= (and d!2337119 (not res!3078836)) b!7716567))

(assert (=> d!2337119 m!8197726))

(declare-fun m!8197978 () Bool)

(assert (=> d!2337119 m!8197978))

(declare-fun m!8197980 () Bool)

(assert (=> d!2337119 m!8197980))

(declare-fun m!8197982 () Bool)

(assert (=> b!7716567 m!8197982))

(assert (=> b!7716185 d!2337119))

(declare-fun b!7716568 () Bool)

(declare-fun e!4577514 () Bool)

(declare-fun lt!2665708 () Bool)

(declare-fun call!713221 () Bool)

(assert (=> b!7716568 (= e!4577514 (= lt!2665708 call!713221))))

(declare-fun b!7716569 () Bool)

(declare-fun e!4577513 () Bool)

(assert (=> b!7716569 (= e!4577514 e!4577513)))

(declare-fun c!1422441 () Bool)

(assert (=> b!7716569 (= c!1422441 (is-EmptyLang!20534 (Concat!29379 (reg!20863 r!14126) r!14126)))))

(declare-fun d!2337123 () Bool)

(assert (=> d!2337123 e!4577514))

(declare-fun c!1422440 () Bool)

(assert (=> d!2337123 (= c!1422440 (is-EmptyExpr!20534 (Concat!29379 (reg!20863 r!14126) r!14126)))))

(declare-fun e!4577516 () Bool)

(assert (=> d!2337123 (= lt!2665708 e!4577516)))

(declare-fun c!1422442 () Bool)

(assert (=> d!2337123 (= c!1422442 (isEmpty!41916 s!9605))))

(assert (=> d!2337123 (validRegex!10952 (Concat!29379 (reg!20863 r!14126) r!14126))))

(assert (=> d!2337123 (= (matchR!10030 (Concat!29379 (reg!20863 r!14126) r!14126) s!9605) lt!2665708)))

(declare-fun b!7716570 () Bool)

(declare-fun e!4577515 () Bool)

(assert (=> b!7716570 (= e!4577515 (= (head!15776 s!9605) (c!1422372 (Concat!29379 (reg!20863 r!14126) r!14126))))))

(declare-fun b!7716571 () Bool)

(declare-fun res!3078841 () Bool)

(assert (=> b!7716571 (=> (not res!3078841) (not e!4577515))))

(assert (=> b!7716571 (= res!3078841 (isEmpty!41916 (tail!15316 s!9605)))))

(declare-fun b!7716572 () Bool)

(assert (=> b!7716572 (= e!4577513 (not lt!2665708))))

(declare-fun b!7716573 () Bool)

(declare-fun res!3078839 () Bool)

(assert (=> b!7716573 (=> (not res!3078839) (not e!4577515))))

(assert (=> b!7716573 (= res!3078839 (not call!713221))))

(declare-fun bm!713216 () Bool)

(assert (=> bm!713216 (= call!713221 (isEmpty!41916 s!9605))))

(declare-fun b!7716574 () Bool)

(declare-fun res!3078844 () Bool)

(declare-fun e!4577519 () Bool)

(assert (=> b!7716574 (=> res!3078844 e!4577519)))

(assert (=> b!7716574 (= res!3078844 e!4577515)))

(declare-fun res!3078840 () Bool)

(assert (=> b!7716574 (=> (not res!3078840) (not e!4577515))))

(assert (=> b!7716574 (= res!3078840 lt!2665708)))

(declare-fun b!7716575 () Bool)

(assert (=> b!7716575 (= e!4577516 (nullable!9011 (Concat!29379 (reg!20863 r!14126) r!14126)))))

(declare-fun b!7716576 () Bool)

(declare-fun res!3078838 () Bool)

(declare-fun e!4577517 () Bool)

(assert (=> b!7716576 (=> res!3078838 e!4577517)))

(assert (=> b!7716576 (= res!3078838 (not (isEmpty!41916 (tail!15316 s!9605))))))

(declare-fun b!7716577 () Bool)

(assert (=> b!7716577 (= e!4577516 (matchR!10030 (derivativeStep!5976 (Concat!29379 (reg!20863 r!14126) r!14126) (head!15776 s!9605)) (tail!15316 s!9605)))))

(declare-fun b!7716578 () Bool)

(assert (=> b!7716578 (= e!4577517 (not (= (head!15776 s!9605) (c!1422372 (Concat!29379 (reg!20863 r!14126) r!14126)))))))

(declare-fun b!7716579 () Bool)

(declare-fun res!3078837 () Bool)

(assert (=> b!7716579 (=> res!3078837 e!4577519)))

(assert (=> b!7716579 (= res!3078837 (not (is-ElementMatch!20534 (Concat!29379 (reg!20863 r!14126) r!14126))))))

(assert (=> b!7716579 (= e!4577513 e!4577519)))

(declare-fun b!7716580 () Bool)

(declare-fun e!4577518 () Bool)

(assert (=> b!7716580 (= e!4577519 e!4577518)))

(declare-fun res!3078843 () Bool)

(assert (=> b!7716580 (=> (not res!3078843) (not e!4577518))))

(assert (=> b!7716580 (= res!3078843 (not lt!2665708))))

(declare-fun b!7716581 () Bool)

(assert (=> b!7716581 (= e!4577518 e!4577517)))

(declare-fun res!3078842 () Bool)

(assert (=> b!7716581 (=> res!3078842 e!4577517)))

(assert (=> b!7716581 (= res!3078842 call!713221)))

(assert (= (and d!2337123 c!1422442) b!7716575))

(assert (= (and d!2337123 (not c!1422442)) b!7716577))

(assert (= (and d!2337123 c!1422440) b!7716568))

(assert (= (and d!2337123 (not c!1422440)) b!7716569))

(assert (= (and b!7716569 c!1422441) b!7716572))

(assert (= (and b!7716569 (not c!1422441)) b!7716579))

(assert (= (and b!7716579 (not res!3078837)) b!7716574))

(assert (= (and b!7716574 res!3078840) b!7716573))

(assert (= (and b!7716573 res!3078839) b!7716571))

(assert (= (and b!7716571 res!3078841) b!7716570))

(assert (= (and b!7716574 (not res!3078844)) b!7716580))

(assert (= (and b!7716580 res!3078843) b!7716581))

(assert (= (and b!7716581 (not res!3078842)) b!7716576))

(assert (= (and b!7716576 (not res!3078838)) b!7716578))

(assert (= (or b!7716568 b!7716573 b!7716581) bm!713216))

(assert (=> b!7716576 m!8197884))

(assert (=> b!7716576 m!8197884))

(assert (=> b!7716576 m!8197886))

(assert (=> b!7716570 m!8197888))

(assert (=> bm!713216 m!8197726))

(assert (=> d!2337123 m!8197726))

(declare-fun m!8197984 () Bool)

(assert (=> d!2337123 m!8197984))

(declare-fun m!8197986 () Bool)

(assert (=> b!7716575 m!8197986))

(assert (=> b!7716577 m!8197888))

(assert (=> b!7716577 m!8197888))

(declare-fun m!8197988 () Bool)

(assert (=> b!7716577 m!8197988))

(assert (=> b!7716577 m!8197884))

(assert (=> b!7716577 m!8197988))

(assert (=> b!7716577 m!8197884))

(declare-fun m!8197990 () Bool)

(assert (=> b!7716577 m!8197990))

(assert (=> b!7716571 m!8197884))

(assert (=> b!7716571 m!8197884))

(assert (=> b!7716571 m!8197886))

(assert (=> b!7716578 m!8197888))

(assert (=> b!7716185 d!2337123))

(declare-fun d!2337125 () Bool)

(assert (=> d!2337125 (isDefined!14175 (findConcatSeparation!3589 (reg!20863 r!14126) r!14126 Nil!73261 s!9605 s!9605))))

(declare-fun lt!2665711 () Unit!168128)

(declare-fun choose!59213 (Regex!20534 Regex!20534 List!73385) Unit!168128)

(assert (=> d!2337125 (= lt!2665711 (choose!59213 (reg!20863 r!14126) r!14126 s!9605))))

(assert (=> d!2337125 (validRegex!10952 (reg!20863 r!14126))))

(assert (=> d!2337125 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!307 (reg!20863 r!14126) r!14126 s!9605) lt!2665711)))

(declare-fun bs!1962763 () Bool)

(assert (= bs!1962763 d!2337125))

(assert (=> bs!1962763 m!8197760))

(assert (=> bs!1962763 m!8197760))

(assert (=> bs!1962763 m!8197762))

(declare-fun m!8197992 () Bool)

(assert (=> bs!1962763 m!8197992))

(assert (=> bs!1962763 m!8197738))

(assert (=> b!7716185 d!2337125))

(declare-fun d!2337127 () Bool)

(assert (=> d!2337127 (= (Exists!4659 lambda!470883) (choose!59204 lambda!470883))))

(declare-fun bs!1962764 () Bool)

(assert (= bs!1962764 d!2337127))

(declare-fun m!8197994 () Bool)

(assert (=> bs!1962764 m!8197994))

(assert (=> b!7716196 d!2337127))

(declare-fun d!2337129 () Bool)

(assert (=> d!2337129 (= (isEmpty!41916 s!9605) (is-Nil!73261 s!9605))))

(assert (=> b!7716191 d!2337129))

(assert (=> b!7716197 d!2337083))

(declare-fun b!7716594 () Bool)

(declare-fun e!4577522 () Bool)

(declare-fun tp!2264084 () Bool)

(assert (=> b!7716594 (= e!4577522 tp!2264084)))

(declare-fun b!7716595 () Bool)

(declare-fun tp!2264086 () Bool)

(declare-fun tp!2264087 () Bool)

(assert (=> b!7716595 (= e!4577522 (and tp!2264086 tp!2264087))))

(assert (=> b!7716182 (= tp!2264055 e!4577522)))

(declare-fun b!7716592 () Bool)

(assert (=> b!7716592 (= e!4577522 tp_is_empty!51423)))

(declare-fun b!7716593 () Bool)

(declare-fun tp!2264085 () Bool)

(declare-fun tp!2264088 () Bool)

(assert (=> b!7716593 (= e!4577522 (and tp!2264085 tp!2264088))))

(assert (= (and b!7716182 (is-ElementMatch!20534 (regOne!41581 r!14126))) b!7716592))

(assert (= (and b!7716182 (is-Concat!29379 (regOne!41581 r!14126))) b!7716593))

(assert (= (and b!7716182 (is-Star!20534 (regOne!41581 r!14126))) b!7716594))

(assert (= (and b!7716182 (is-Union!20534 (regOne!41581 r!14126))) b!7716595))

(declare-fun b!7716598 () Bool)

(declare-fun e!4577523 () Bool)

(declare-fun tp!2264089 () Bool)

(assert (=> b!7716598 (= e!4577523 tp!2264089)))

(declare-fun b!7716599 () Bool)

(declare-fun tp!2264091 () Bool)

(declare-fun tp!2264092 () Bool)

(assert (=> b!7716599 (= e!4577523 (and tp!2264091 tp!2264092))))

(assert (=> b!7716182 (= tp!2264054 e!4577523)))

(declare-fun b!7716596 () Bool)

(assert (=> b!7716596 (= e!4577523 tp_is_empty!51423)))

(declare-fun b!7716597 () Bool)

(declare-fun tp!2264090 () Bool)

(declare-fun tp!2264093 () Bool)

(assert (=> b!7716597 (= e!4577523 (and tp!2264090 tp!2264093))))

(assert (= (and b!7716182 (is-ElementMatch!20534 (regTwo!41581 r!14126))) b!7716596))

(assert (= (and b!7716182 (is-Concat!29379 (regTwo!41581 r!14126))) b!7716597))

(assert (= (and b!7716182 (is-Star!20534 (regTwo!41581 r!14126))) b!7716598))

(assert (= (and b!7716182 (is-Union!20534 (regTwo!41581 r!14126))) b!7716599))

(declare-fun b!7716602 () Bool)

(declare-fun e!4577524 () Bool)

(declare-fun tp!2264094 () Bool)

(assert (=> b!7716602 (= e!4577524 tp!2264094)))

(declare-fun b!7716603 () Bool)

(declare-fun tp!2264096 () Bool)

(declare-fun tp!2264097 () Bool)

(assert (=> b!7716603 (= e!4577524 (and tp!2264096 tp!2264097))))

(assert (=> b!7716183 (= tp!2264051 e!4577524)))

(declare-fun b!7716600 () Bool)

(assert (=> b!7716600 (= e!4577524 tp_is_empty!51423)))

(declare-fun b!7716601 () Bool)

(declare-fun tp!2264095 () Bool)

(declare-fun tp!2264098 () Bool)

(assert (=> b!7716601 (= e!4577524 (and tp!2264095 tp!2264098))))

(assert (= (and b!7716183 (is-ElementMatch!20534 (regOne!41580 r!14126))) b!7716600))

(assert (= (and b!7716183 (is-Concat!29379 (regOne!41580 r!14126))) b!7716601))

(assert (= (and b!7716183 (is-Star!20534 (regOne!41580 r!14126))) b!7716602))

(assert (= (and b!7716183 (is-Union!20534 (regOne!41580 r!14126))) b!7716603))

(declare-fun b!7716606 () Bool)

(declare-fun e!4577525 () Bool)

(declare-fun tp!2264099 () Bool)

(assert (=> b!7716606 (= e!4577525 tp!2264099)))

(declare-fun b!7716607 () Bool)

(declare-fun tp!2264101 () Bool)

(declare-fun tp!2264102 () Bool)

(assert (=> b!7716607 (= e!4577525 (and tp!2264101 tp!2264102))))

(assert (=> b!7716183 (= tp!2264052 e!4577525)))

(declare-fun b!7716604 () Bool)

(assert (=> b!7716604 (= e!4577525 tp_is_empty!51423)))

(declare-fun b!7716605 () Bool)

(declare-fun tp!2264100 () Bool)

(declare-fun tp!2264103 () Bool)

(assert (=> b!7716605 (= e!4577525 (and tp!2264100 tp!2264103))))

(assert (= (and b!7716183 (is-ElementMatch!20534 (regTwo!41580 r!14126))) b!7716604))

(assert (= (and b!7716183 (is-Concat!29379 (regTwo!41580 r!14126))) b!7716605))

(assert (= (and b!7716183 (is-Star!20534 (regTwo!41580 r!14126))) b!7716606))

(assert (= (and b!7716183 (is-Union!20534 (regTwo!41580 r!14126))) b!7716607))

(declare-fun b!7716610 () Bool)

(declare-fun e!4577526 () Bool)

(declare-fun tp!2264104 () Bool)

(assert (=> b!7716610 (= e!4577526 tp!2264104)))

(declare-fun b!7716611 () Bool)

(declare-fun tp!2264106 () Bool)

(declare-fun tp!2264107 () Bool)

(assert (=> b!7716611 (= e!4577526 (and tp!2264106 tp!2264107))))

(assert (=> b!7716194 (= tp!2264050 e!4577526)))

(declare-fun b!7716608 () Bool)

(assert (=> b!7716608 (= e!4577526 tp_is_empty!51423)))

(declare-fun b!7716609 () Bool)

(declare-fun tp!2264105 () Bool)

(declare-fun tp!2264108 () Bool)

(assert (=> b!7716609 (= e!4577526 (and tp!2264105 tp!2264108))))

(assert (= (and b!7716194 (is-ElementMatch!20534 (reg!20863 r!14126))) b!7716608))

(assert (= (and b!7716194 (is-Concat!29379 (reg!20863 r!14126))) b!7716609))

(assert (= (and b!7716194 (is-Star!20534 (reg!20863 r!14126))) b!7716610))

(assert (= (and b!7716194 (is-Union!20534 (reg!20863 r!14126))) b!7716611))

(declare-fun b!7716616 () Bool)

(declare-fun e!4577529 () Bool)

(declare-fun tp!2264111 () Bool)

(assert (=> b!7716616 (= e!4577529 (and tp_is_empty!51423 tp!2264111))))

(assert (=> b!7716190 (= tp!2264053 e!4577529)))

(assert (= (and b!7716190 (is-Cons!73261 (t!388120 s!9605))) b!7716616))

(declare-fun b_lambda!289237 () Bool)

(assert (= b_lambda!289235 (or b!7716196 b_lambda!289237)))

(declare-fun bs!1962766 () Bool)

(declare-fun d!2337133 () Bool)

(assert (= bs!1962766 (and d!2337133 b!7716196)))

(declare-fun res!3078845 () Bool)

(declare-fun e!4577530 () Bool)

(assert (=> bs!1962766 (=> (not res!3078845) (not e!4577530))))

(assert (=> bs!1962766 (= res!3078845 (= (++!17742 (_1!38068 lt!2665688) (_2!38068 lt!2665688)) s!9605))))

(assert (=> bs!1962766 (= (dynLambda!29952 lambda!470883 lt!2665688) e!4577530)))

(declare-fun b!7716617 () Bool)

(declare-fun res!3078846 () Bool)

(assert (=> b!7716617 (=> (not res!3078846) (not e!4577530))))

(assert (=> b!7716617 (= res!3078846 (not (isEmpty!41916 (_1!38068 lt!2665688))))))

(declare-fun b!7716618 () Bool)

(declare-fun res!3078847 () Bool)

(assert (=> b!7716618 (=> (not res!3078847) (not e!4577530))))

(assert (=> b!7716618 (= res!3078847 (matchRSpec!4624 (reg!20863 r!14126) (_1!38068 lt!2665688)))))

(declare-fun b!7716619 () Bool)

(assert (=> b!7716619 (= e!4577530 (matchRSpec!4624 r!14126 (_2!38068 lt!2665688)))))

(assert (= (and bs!1962766 res!3078845) b!7716617))

(assert (= (and b!7716617 res!3078846) b!7716618))

(assert (= (and b!7716618 res!3078847) b!7716619))

(declare-fun m!8197998 () Bool)

(assert (=> bs!1962766 m!8197998))

(declare-fun m!8198000 () Bool)

(assert (=> b!7716617 m!8198000))

(declare-fun m!8198002 () Bool)

(assert (=> b!7716618 m!8198002))

(declare-fun m!8198004 () Bool)

(assert (=> b!7716619 m!8198004))

(assert (=> d!2337099 d!2337133))

(push 1)

(assert (not b!7716576))

(assert (not b!7716407))

(assert (not b!7716619))

(assert (not b!7716595))

(assert (not bm!713211))

(assert (not bm!713210))

(assert (not b!7716496))

(assert (not b!7716571))

(assert (not b!7716429))

(assert (not b!7716577))

(assert (not bm!713208))

(assert (not b!7716618))

(assert (not b!7716594))

(assert (not b!7716603))

(assert (not b!7716578))

(assert (not b!7716310))

(assert (not b!7716610))

(assert (not b!7716548))

(assert (not d!2337095))

(assert (not d!2337119))

(assert (not b!7716351))

(assert (not b!7716575))

(assert (not b!7716493))

(assert (not b!7716514))

(assert (not b!7716616))

(assert (not bm!713194))

(assert (not b!7716617))

(assert (not b!7716406))

(assert (not b!7716408))

(assert (not d!2337125))

(assert (not b!7716611))

(assert (not b!7716349))

(assert (not d!2337127))

(assert (not b!7716284))

(assert (not d!2337087))

(assert (not b!7716357))

(assert (not b!7716435))

(assert (not b!7716402))

(assert (not b!7716597))

(assert (not b!7716489))

(assert (not bs!1962766))

(assert (not b!7716488))

(assert (not b!7716283))

(assert (not b!7716598))

(assert (not b!7716354))

(assert (not b!7716285))

(assert (not b!7716524))

(assert (not b!7716433))

(assert (not b!7716606))

(assert (not d!2337111))

(assert (not b!7716609))

(assert (not b!7716350))

(assert (not d!2337101))

(assert (not b!7716409))

(assert (not b!7716495))

(assert (not b!7716436))

(assert (not d!2337109))

(assert (not d!2337091))

(assert (not b_lambda!289237))

(assert (not b!7716423))

(assert (not d!2337113))

(assert (not d!2337123))

(assert (not bm!713216))

(assert (not b!7716549))

(assert (not d!2337085))

(assert (not b!7716602))

(assert (not d!2337089))

(assert (not b!7716593))

(assert (not b!7716475))

(assert (not d!2337117))

(assert (not bm!713212))

(assert (not bm!713200))

(assert (not b!7716434))

(assert (not b!7716352))

(assert (not b!7716567))

(assert (not b!7716607))

(assert (not b!7716599))

(assert (not bm!713209))

(assert (not b!7716428))

(assert (not b!7716494))

(assert (not bm!713199))

(assert (not d!2337099))

(assert (not b!7716570))

(assert (not bm!713202))

(assert (not b!7716485))

(assert (not b!7716601))

(assert tp_is_empty!51423)

(assert (not b!7716401))

(assert (not bm!713196))

(assert (not b!7716605))

(assert (not bm!713203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

