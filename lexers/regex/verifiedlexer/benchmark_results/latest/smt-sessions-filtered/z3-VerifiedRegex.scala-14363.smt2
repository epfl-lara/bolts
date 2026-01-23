; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749568 () Bool)

(assert start!749568)

(declare-fun b!7941507 () Bool)

(declare-fun e!4685789 () Bool)

(declare-fun tp_is_empty!53357 () Bool)

(declare-fun tp!2361297 () Bool)

(assert (=> b!7941507 (= e!4685789 (and tp_is_empty!53357 tp!2361297))))

(declare-fun b!7941508 () Bool)

(declare-fun e!4685787 () Bool)

(declare-datatypes ((C!43152 0))(
  ( (C!43153 (val!32124 Int)) )
))
(declare-datatypes ((List!74636 0))(
  ( (Nil!74512) (Cons!74512 (h!80960 C!43152) (t!390379 List!74636)) )
))
(declare-fun input!6711 () List!74636)

(declare-fun isPrefix!6507 (List!74636 List!74636) Bool)

(assert (=> b!7941508 (= e!4685787 (not (isPrefix!6507 Nil!74512 input!6711)))))

(declare-fun b!7941509 () Bool)

(declare-fun e!4685788 () Bool)

(declare-fun tp!2361294 () Bool)

(declare-fun tp!2361293 () Bool)

(assert (=> b!7941509 (= e!4685788 (and tp!2361294 tp!2361293))))

(declare-fun res!3150350 () Bool)

(assert (=> start!749568 (=> (not res!3150350) (not e!4685787))))

(declare-datatypes ((Regex!21407 0))(
  ( (ElementMatch!21407 (c!1459038 C!43152)) (Concat!30406 (regOne!43326 Regex!21407) (regTwo!43326 Regex!21407)) (EmptyExpr!21407) (Star!21407 (reg!21736 Regex!21407)) (EmptyLang!21407) (Union!21407 (regOne!43327 Regex!21407) (regTwo!43327 Regex!21407)) )
))
(declare-fun r!15654 () Regex!21407)

(declare-fun validRegex!11711 (Regex!21407) Bool)

(assert (=> start!749568 (= res!3150350 (validRegex!11711 r!15654))))

(assert (=> start!749568 e!4685787))

(assert (=> start!749568 e!4685788))

(assert (=> start!749568 e!4685789))

(declare-fun b!7941510 () Bool)

(declare-fun tp!2361298 () Bool)

(declare-fun tp!2361296 () Bool)

(assert (=> b!7941510 (= e!4685788 (and tp!2361298 tp!2361296))))

(declare-fun b!7941511 () Bool)

(assert (=> b!7941511 (= e!4685788 tp_is_empty!53357)))

(declare-fun b!7941512 () Bool)

(declare-fun tp!2361295 () Bool)

(assert (=> b!7941512 (= e!4685788 tp!2361295)))

(assert (= (and start!749568 res!3150350) b!7941508))

(get-info :version)

(assert (= (and start!749568 ((_ is ElementMatch!21407) r!15654)) b!7941511))

(assert (= (and start!749568 ((_ is Concat!30406) r!15654)) b!7941510))

(assert (= (and start!749568 ((_ is Star!21407) r!15654)) b!7941512))

(assert (= (and start!749568 ((_ is Union!21407) r!15654)) b!7941509))

(assert (= (and start!749568 ((_ is Cons!74512) input!6711)) b!7941507))

(declare-fun m!8330326 () Bool)

(assert (=> b!7941508 m!8330326))

(declare-fun m!8330328 () Bool)

(assert (=> start!749568 m!8330328))

(check-sat (not b!7941512) (not b!7941509) (not b!7941507) (not b!7941508) tp_is_empty!53357 (not b!7941510) (not start!749568))
(check-sat)
(get-model)

(declare-fun b!7941539 () Bool)

(declare-fun res!3150370 () Bool)

(declare-fun e!4685811 () Bool)

(assert (=> b!7941539 (=> (not res!3150370) (not e!4685811))))

(declare-fun call!735957 () Bool)

(assert (=> b!7941539 (= res!3150370 call!735957)))

(declare-fun e!4685814 () Bool)

(assert (=> b!7941539 (= e!4685814 e!4685811)))

(declare-fun bm!735952 () Bool)

(declare-fun c!1459044 () Bool)

(assert (=> bm!735952 (= call!735957 (validRegex!11711 (ite c!1459044 (regOne!43327 r!15654) (regTwo!43326 r!15654))))))

(declare-fun b!7941540 () Bool)

(declare-fun e!4685815 () Bool)

(assert (=> b!7941540 (= e!4685815 call!735957)))

(declare-fun b!7941541 () Bool)

(declare-fun e!4685813 () Bool)

(assert (=> b!7941541 (= e!4685813 e!4685814)))

(assert (=> b!7941541 (= c!1459044 ((_ is Union!21407) r!15654))))

(declare-fun bm!735953 () Bool)

(declare-fun call!735959 () Bool)

(declare-fun call!735958 () Bool)

(assert (=> bm!735953 (= call!735959 call!735958)))

(declare-fun b!7941542 () Bool)

(declare-fun e!4685812 () Bool)

(assert (=> b!7941542 (= e!4685813 e!4685812)))

(declare-fun res!3150371 () Bool)

(declare-fun nullable!9528 (Regex!21407) Bool)

(assert (=> b!7941542 (= res!3150371 (not (nullable!9528 (reg!21736 r!15654))))))

(assert (=> b!7941542 (=> (not res!3150371) (not e!4685812))))

(declare-fun d!2375108 () Bool)

(declare-fun res!3150372 () Bool)

(declare-fun e!4685816 () Bool)

(assert (=> d!2375108 (=> res!3150372 e!4685816)))

(assert (=> d!2375108 (= res!3150372 ((_ is ElementMatch!21407) r!15654))))

(assert (=> d!2375108 (= (validRegex!11711 r!15654) e!4685816)))

(declare-fun b!7941543 () Bool)

(assert (=> b!7941543 (= e!4685816 e!4685813)))

(declare-fun c!1459043 () Bool)

(assert (=> b!7941543 (= c!1459043 ((_ is Star!21407) r!15654))))

(declare-fun bm!735954 () Bool)

(assert (=> bm!735954 (= call!735958 (validRegex!11711 (ite c!1459043 (reg!21736 r!15654) (ite c!1459044 (regTwo!43327 r!15654) (regOne!43326 r!15654)))))))

(declare-fun b!7941544 () Bool)

(declare-fun e!4685810 () Bool)

(assert (=> b!7941544 (= e!4685810 e!4685815)))

(declare-fun res!3150369 () Bool)

(assert (=> b!7941544 (=> (not res!3150369) (not e!4685815))))

(assert (=> b!7941544 (= res!3150369 call!735959)))

(declare-fun b!7941545 () Bool)

(assert (=> b!7941545 (= e!4685811 call!735959)))

(declare-fun b!7941546 () Bool)

(declare-fun res!3150373 () Bool)

(assert (=> b!7941546 (=> res!3150373 e!4685810)))

(assert (=> b!7941546 (= res!3150373 (not ((_ is Concat!30406) r!15654)))))

(assert (=> b!7941546 (= e!4685814 e!4685810)))

(declare-fun b!7941547 () Bool)

(assert (=> b!7941547 (= e!4685812 call!735958)))

(assert (= (and d!2375108 (not res!3150372)) b!7941543))

(assert (= (and b!7941543 c!1459043) b!7941542))

(assert (= (and b!7941543 (not c!1459043)) b!7941541))

(assert (= (and b!7941542 res!3150371) b!7941547))

(assert (= (and b!7941541 c!1459044) b!7941539))

(assert (= (and b!7941541 (not c!1459044)) b!7941546))

(assert (= (and b!7941539 res!3150370) b!7941545))

(assert (= (and b!7941546 (not res!3150373)) b!7941544))

(assert (= (and b!7941544 res!3150369) b!7941540))

(assert (= (or b!7941539 b!7941540) bm!735952))

(assert (= (or b!7941545 b!7941544) bm!735953))

(assert (= (or b!7941547 bm!735953) bm!735954))

(declare-fun m!8330330 () Bool)

(assert (=> bm!735952 m!8330330))

(declare-fun m!8330332 () Bool)

(assert (=> b!7941542 m!8330332))

(declare-fun m!8330334 () Bool)

(assert (=> bm!735954 m!8330334))

(assert (=> start!749568 d!2375108))

(declare-fun b!7941580 () Bool)

(declare-fun e!4685841 () Bool)

(declare-fun tail!15731 (List!74636) List!74636)

(assert (=> b!7941580 (= e!4685841 (isPrefix!6507 (tail!15731 Nil!74512) (tail!15731 input!6711)))))

(declare-fun d!2375112 () Bool)

(declare-fun e!4685840 () Bool)

(assert (=> d!2375112 e!4685840))

(declare-fun res!3150399 () Bool)

(assert (=> d!2375112 (=> res!3150399 e!4685840)))

(declare-fun lt!2696723 () Bool)

(assert (=> d!2375112 (= res!3150399 (not lt!2696723))))

(declare-fun e!4685842 () Bool)

(assert (=> d!2375112 (= lt!2696723 e!4685842)))

(declare-fun res!3150396 () Bool)

(assert (=> d!2375112 (=> res!3150396 e!4685842)))

(assert (=> d!2375112 (= res!3150396 ((_ is Nil!74512) Nil!74512))))

(assert (=> d!2375112 (= (isPrefix!6507 Nil!74512 input!6711) lt!2696723)))

(declare-fun b!7941581 () Bool)

(declare-fun size!43344 (List!74636) Int)

(assert (=> b!7941581 (= e!4685840 (>= (size!43344 input!6711) (size!43344 Nil!74512)))))

(declare-fun b!7941578 () Bool)

(assert (=> b!7941578 (= e!4685842 e!4685841)))

(declare-fun res!3150398 () Bool)

(assert (=> b!7941578 (=> (not res!3150398) (not e!4685841))))

(assert (=> b!7941578 (= res!3150398 (not ((_ is Nil!74512) input!6711)))))

(declare-fun b!7941579 () Bool)

(declare-fun res!3150397 () Bool)

(assert (=> b!7941579 (=> (not res!3150397) (not e!4685841))))

(declare-fun head!16188 (List!74636) C!43152)

(assert (=> b!7941579 (= res!3150397 (= (head!16188 Nil!74512) (head!16188 input!6711)))))

(assert (= (and d!2375112 (not res!3150396)) b!7941578))

(assert (= (and b!7941578 res!3150398) b!7941579))

(assert (= (and b!7941579 res!3150397) b!7941580))

(assert (= (and d!2375112 (not res!3150399)) b!7941581))

(declare-fun m!8330350 () Bool)

(assert (=> b!7941580 m!8330350))

(declare-fun m!8330352 () Bool)

(assert (=> b!7941580 m!8330352))

(assert (=> b!7941580 m!8330350))

(assert (=> b!7941580 m!8330352))

(declare-fun m!8330354 () Bool)

(assert (=> b!7941580 m!8330354))

(declare-fun m!8330356 () Bool)

(assert (=> b!7941581 m!8330356))

(declare-fun m!8330358 () Bool)

(assert (=> b!7941581 m!8330358))

(declare-fun m!8330360 () Bool)

(assert (=> b!7941579 m!8330360))

(declare-fun m!8330362 () Bool)

(assert (=> b!7941579 m!8330362))

(assert (=> b!7941508 d!2375112))

(declare-fun b!7941595 () Bool)

(declare-fun e!4685845 () Bool)

(declare-fun tp!2361312 () Bool)

(declare-fun tp!2361311 () Bool)

(assert (=> b!7941595 (= e!4685845 (and tp!2361312 tp!2361311))))

(declare-fun b!7941592 () Bool)

(assert (=> b!7941592 (= e!4685845 tp_is_empty!53357)))

(declare-fun b!7941594 () Bool)

(declare-fun tp!2361313 () Bool)

(assert (=> b!7941594 (= e!4685845 tp!2361313)))

(assert (=> b!7941509 (= tp!2361294 e!4685845)))

(declare-fun b!7941593 () Bool)

(declare-fun tp!2361309 () Bool)

(declare-fun tp!2361310 () Bool)

(assert (=> b!7941593 (= e!4685845 (and tp!2361309 tp!2361310))))

(assert (= (and b!7941509 ((_ is ElementMatch!21407) (regOne!43327 r!15654))) b!7941592))

(assert (= (and b!7941509 ((_ is Concat!30406) (regOne!43327 r!15654))) b!7941593))

(assert (= (and b!7941509 ((_ is Star!21407) (regOne!43327 r!15654))) b!7941594))

(assert (= (and b!7941509 ((_ is Union!21407) (regOne!43327 r!15654))) b!7941595))

(declare-fun b!7941599 () Bool)

(declare-fun e!4685846 () Bool)

(declare-fun tp!2361317 () Bool)

(declare-fun tp!2361316 () Bool)

(assert (=> b!7941599 (= e!4685846 (and tp!2361317 tp!2361316))))

(declare-fun b!7941596 () Bool)

(assert (=> b!7941596 (= e!4685846 tp_is_empty!53357)))

(declare-fun b!7941598 () Bool)

(declare-fun tp!2361318 () Bool)

(assert (=> b!7941598 (= e!4685846 tp!2361318)))

(assert (=> b!7941509 (= tp!2361293 e!4685846)))

(declare-fun b!7941597 () Bool)

(declare-fun tp!2361314 () Bool)

(declare-fun tp!2361315 () Bool)

(assert (=> b!7941597 (= e!4685846 (and tp!2361314 tp!2361315))))

(assert (= (and b!7941509 ((_ is ElementMatch!21407) (regTwo!43327 r!15654))) b!7941596))

(assert (= (and b!7941509 ((_ is Concat!30406) (regTwo!43327 r!15654))) b!7941597))

(assert (= (and b!7941509 ((_ is Star!21407) (regTwo!43327 r!15654))) b!7941598))

(assert (= (and b!7941509 ((_ is Union!21407) (regTwo!43327 r!15654))) b!7941599))

(declare-fun b!7941603 () Bool)

(declare-fun e!4685847 () Bool)

(declare-fun tp!2361322 () Bool)

(declare-fun tp!2361321 () Bool)

(assert (=> b!7941603 (= e!4685847 (and tp!2361322 tp!2361321))))

(declare-fun b!7941600 () Bool)

(assert (=> b!7941600 (= e!4685847 tp_is_empty!53357)))

(declare-fun b!7941602 () Bool)

(declare-fun tp!2361323 () Bool)

(assert (=> b!7941602 (= e!4685847 tp!2361323)))

(assert (=> b!7941510 (= tp!2361298 e!4685847)))

(declare-fun b!7941601 () Bool)

(declare-fun tp!2361319 () Bool)

(declare-fun tp!2361320 () Bool)

(assert (=> b!7941601 (= e!4685847 (and tp!2361319 tp!2361320))))

(assert (= (and b!7941510 ((_ is ElementMatch!21407) (regOne!43326 r!15654))) b!7941600))

(assert (= (and b!7941510 ((_ is Concat!30406) (regOne!43326 r!15654))) b!7941601))

(assert (= (and b!7941510 ((_ is Star!21407) (regOne!43326 r!15654))) b!7941602))

(assert (= (and b!7941510 ((_ is Union!21407) (regOne!43326 r!15654))) b!7941603))

(declare-fun b!7941607 () Bool)

(declare-fun e!4685848 () Bool)

(declare-fun tp!2361327 () Bool)

(declare-fun tp!2361326 () Bool)

(assert (=> b!7941607 (= e!4685848 (and tp!2361327 tp!2361326))))

(declare-fun b!7941604 () Bool)

(assert (=> b!7941604 (= e!4685848 tp_is_empty!53357)))

(declare-fun b!7941606 () Bool)

(declare-fun tp!2361328 () Bool)

(assert (=> b!7941606 (= e!4685848 tp!2361328)))

(assert (=> b!7941510 (= tp!2361296 e!4685848)))

(declare-fun b!7941605 () Bool)

(declare-fun tp!2361324 () Bool)

(declare-fun tp!2361325 () Bool)

(assert (=> b!7941605 (= e!4685848 (and tp!2361324 tp!2361325))))

(assert (= (and b!7941510 ((_ is ElementMatch!21407) (regTwo!43326 r!15654))) b!7941604))

(assert (= (and b!7941510 ((_ is Concat!30406) (regTwo!43326 r!15654))) b!7941605))

(assert (= (and b!7941510 ((_ is Star!21407) (regTwo!43326 r!15654))) b!7941606))

(assert (= (and b!7941510 ((_ is Union!21407) (regTwo!43326 r!15654))) b!7941607))

(declare-fun b!7941611 () Bool)

(declare-fun e!4685849 () Bool)

(declare-fun tp!2361332 () Bool)

(declare-fun tp!2361331 () Bool)

(assert (=> b!7941611 (= e!4685849 (and tp!2361332 tp!2361331))))

(declare-fun b!7941608 () Bool)

(assert (=> b!7941608 (= e!4685849 tp_is_empty!53357)))

(declare-fun b!7941610 () Bool)

(declare-fun tp!2361333 () Bool)

(assert (=> b!7941610 (= e!4685849 tp!2361333)))

(assert (=> b!7941512 (= tp!2361295 e!4685849)))

(declare-fun b!7941609 () Bool)

(declare-fun tp!2361329 () Bool)

(declare-fun tp!2361330 () Bool)

(assert (=> b!7941609 (= e!4685849 (and tp!2361329 tp!2361330))))

(assert (= (and b!7941512 ((_ is ElementMatch!21407) (reg!21736 r!15654))) b!7941608))

(assert (= (and b!7941512 ((_ is Concat!30406) (reg!21736 r!15654))) b!7941609))

(assert (= (and b!7941512 ((_ is Star!21407) (reg!21736 r!15654))) b!7941610))

(assert (= (and b!7941512 ((_ is Union!21407) (reg!21736 r!15654))) b!7941611))

(declare-fun b!7941616 () Bool)

(declare-fun e!4685852 () Bool)

(declare-fun tp!2361336 () Bool)

(assert (=> b!7941616 (= e!4685852 (and tp_is_empty!53357 tp!2361336))))

(assert (=> b!7941507 (= tp!2361297 e!4685852)))

(assert (= (and b!7941507 ((_ is Cons!74512) (t!390379 input!6711))) b!7941616))

(check-sat (not b!7941601) (not b!7941602) (not b!7941599) (not b!7941580) (not b!7941595) (not b!7941598) (not b!7941579) (not b!7941597) (not b!7941610) (not b!7941607) (not bm!735954) tp_is_empty!53357 (not b!7941593) (not b!7941609) (not b!7941581) (not bm!735952) (not b!7941611) (not b!7941542) (not b!7941594) (not b!7941603) (not b!7941606) (not b!7941616) (not b!7941605))
(check-sat)
